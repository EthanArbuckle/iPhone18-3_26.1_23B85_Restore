@interface CRLWPTextKnobTracker
+ (const)p_lineFragmentForCharIndex:(unint64_t)a3 knobTag:(unint64_t)a4 selectionType:(unint64_t)a5 rep:(id)a6;
- (BOOL)p_isMagnifyingVerticalText;
- (BOOL)p_newHeadCharIndex:(unint64_t)a3 isPastTailCharIndex:(unint64_t)a4 rep:(id)a5;
- (BOOL)p_newTailCharIndex:(unint64_t)a3 isPastHeadCharIndex:(unint64_t)a4 rep:(id)a5;
- (CGPoint)magnificationPoint;
- (CRLWPTextKnobTracker)initWithRep:(id)a3 knob:(id)a4;
- (_NSRange)adjustSelectionRange:(_NSRange)a3 forStorage:(id)a4;
- (id)p_rangedMagnifier;
- (unint64_t)p_charIndexForKnob:(unint64_t)a3 selection:(id)a4;
- (void)dealloc;
- (void)endMovingKnob;
- (void)moveKnobToCanvasPosition:(CGPoint)a3;
- (void)p_cleanupWhenDone;
- (void)p_fixUpWordSelection;
- (void)p_magnifyWithTarget:(id)a3 magnificationPoint:(CGPoint)a4 offset:(CGPoint)a5 animated:(BOOL)a6 delayed:(BOOL)a7;
- (void)p_setSelectionFromPoint:(CGPoint)a3;
- (void)p_startMagnifyingAt:(CGPoint)a3;
- (void)p_stopMagnifyingWithAnimation:(BOOL)a3;
- (void)updateSelectionAfterAutoscroll:(id)a3;
@end

@implementation CRLWPTextKnobTracker

- (CRLWPTextKnobTracker)initWithRep:(id)a3 knob:(id)a4
{
  v6 = a3;
  v7 = a4;
  v66.receiver = self;
  v66.super_class = CRLWPTextKnobTracker;
  v8 = [(CRLCanvasKnobTracker *)&v66 initWithRep:v6 knob:v7];
  if (v8)
  {
    v9 = objc_opt_class();
    v10 = [(CRLCanvasKnobTracker *)v8 rep];
    v11 = [v10 interactiveCanvasController];
    v12 = [v11 editorController];
    v13 = [v12 textInputEditor];
    v14 = sub_100014370(v9, v13);
    [(CRLWPTextKnobTracker *)v8 setTextEditor:v14];

    v15 = [(CRLWPTextKnobTracker *)v8 textEditor];
    [v15 setKnobTracking:1];

    v16 = [(CRLCanvasKnobTracker *)v8 knob];
    v17 = [v16 tag];
    v18 = [(CRLWPTextKnobTracker *)v8 textEditor];
    [v18 setKnobTag:v17];

    v19 = [(CRLCanvasKnobTracker *)v8 rep];
    [v7 position];
    [v19 convertNaturalPointToUnscaledCanvas:?];
    v21 = v20;
    v23 = v22;
    v24 = [(CRLWPTextKnobTracker *)v8 textEditor];
    [v24 setKnobTrackingDragPoint:{v21, v23}];

    v25 = [(CRLWPTextKnobTracker *)v8 textEditor];
    v8->_multiTap = [v25 knobTrackingTapCount] > 1;

    v26 = [(CRLWPTextKnobTracker *)v8 textEditor];
    v27 = [v26 selection];

    v8->_selectionType = [v27 type];
    v8->_rangeAtStart.location = [v27 range];
    v8->_rangeAtStart.length = v28;
    if (v8->_selectionType != 7)
    {
      v29 = [(CRLWPTextKnobTracker *)v8 textEditor];
      v30 = [v29 editorHelper];
      v31 = [v30 logicalToVisualSelection:v27];

      v32 = [(CRLWPTextKnobTracker *)v8 textEditor];
      [v32 setSelection:v31];

      v27 = v31;
    }

    v33 = [(CRLWPTextKnobTracker *)v8 textEditor];
    v34 = [v33 editorHelper];
    v35 = [v34 calculateVisualRunsFromSelection:v27 updateControllerSelection:1];

    v36 = [v35 start];
    v37 = [v35 end];
    if ([v35 isVisual])
    {
      v36 = [v35 headCharIndex];
      v38 = [v35 tailCharIndex];
      if (v38 < v36)
      {
        v36 = v38;
      }

      v39 = [v35 headCharIndex];
      v40 = [v35 tailCharIndex];
      if (v39 <= v40)
      {
        v41 = v40;
      }

      else
      {
        v41 = v39;
      }

      v8->_headCharAtStart = [v35 headCharIndex];
      v8->_tailCharAtStart = [v35 tailCharIndex];
      v42 = [(CRLWPTextKnobTracker *)v8 textEditor];
      v43 = [v42 storage];
      v37 = sub_10027F35C(v41, v43);
    }

    else
    {
      v8->_headCharAtStart = v36;
      v8->_tailCharAtStart = v37;
    }

    if (v36 <= v37)
    {
      v44 = v37;
    }

    else
    {
      v44 = v36;
    }

    if (v36 >= v37)
    {
      v45 = v37;
    }

    else
    {
      v45 = v36;
    }

    v8->_rangeAtStart.location = v45;
    v8->_rangeAtStart.length = v44 - v45;
    v46 = [(CRLCanvasKnobTracker *)v8 rep];
    [v46 refreshEditMenu];

    v47 = [(CRLWPTextKnobTracker *)v8 textEditor];
    v48 = [v47 wantsParagraphModeWithSelection:v35];

    if (v48)
    {
      v49 = [(CRLCanvasKnobTracker *)v8 rep];
      v50 = [(CRLCanvasKnobTracker *)v8 knob];
      if ([v50 tag] == 10)
      {
        v51 = [v35 start];
      }

      else
      {
        v51 = [v35 end];
      }

      v52 = v51;
      v53 = [(CRLCanvasKnobTracker *)v8 knob];
      v54 = [v49 repForCharIndex:v52 isStart:{objc_msgSend(v53, "tag") == 11}];

      v55 = [(CRLCanvasKnobTracker *)v8 rep];

      if (v55 != v54)
      {
        [v54 invalidateKnobs];
      }

      v56 = [(CRLCanvasKnobTracker *)v8 rep];
      [v56 invalidateKnobs];

      v57 = [(CRLCanvasKnobTracker *)v8 rep];
      v58 = [(CRLCanvasKnobTracker *)v8 knob];
      v59 = [v57 knobForTag:{objc_msgSend(v58, "tag")}];
      [(CRLCanvasKnobTracker *)v8 setKnob:v59];
    }

    v60 = [(CRLWPTextKnobTracker *)v8 textEditor];
    v61 = [v60 interactiveCanvasController];
    if (v61)
    {
      v62 = [(CRLCanvasKnobTracker *)v8 rep];
      if (v7)
      {
        v63 = v62 == 0;
      }

      else
      {
        v63 = 1;
      }

      v64 = v63;

      if ((v64 | v48))
      {
        goto LABEL_35;
      }

      v60 = [(CRLCanvasKnobTracker *)v8 rep];
      [v7 position];
      [CRLWPTextKnobTracker p_magnifyWithTarget:v8 magnificationPoint:"p_magnifyWithTarget:magnificationPoint:offset:animated:delayed:" offset:v60 animated:1 delayed:1];
    }

LABEL_35:
  }

  return v8;
}

- (void)dealloc
{
  if (self->_textMagnifierTimer)
  {
    v3 = +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_1013969F4();
    }

    v4 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_101396A08(v3, v4);
    }

    if (qword_101AD5A10 != -1)
    {
      sub_101396AB4();
    }

    v5 = off_1019EDA68;
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v6 = +[CRLAssertionHandler packedBacktraceString];
      sub_101318C3C(v6, buf, v3, v5);
    }

    v7 = [NSString stringWithUTF8String:"[CRLWPTextKnobTracker dealloc]"];
    v8 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLWP/Gestures/CRLWPTextKnobTracker.mm"];
    [CRLAssertionHandler handleFailureInFunction:v7 file:v8 lineNumber:156 isFatal:0 description:"_textMagnifierTimer retains us, so it should be gone by our -dealloc"];
  }

  [(CRLWPTextKnobTracker *)self p_cleanupWhenDone];
  [(CRLWPTextKnobTracker *)self p_stopMagnifyingWithAnimation:0];
  textEditor = self->_textEditor;
  self->_textEditor = 0;

  v10.receiver = self;
  v10.super_class = CRLWPTextKnobTracker;
  [(CRLCanvasKnobTracker *)&v10 dealloc];
}

- (void)moveKnobToCanvasPosition:(CGPoint)a3
{
  if (self->_ignoreNextCall)
  {
    self->_ignoreNextCall = 0;
  }

  else
  {
    y = a3.y;
    x = a3.x;
    self->_knobMoved = 1;
    [(CRLWPTextKnobTracker *)self p_setSelectionFromPoint:?];
    v6 = [(CRLWPTextKnobTracker *)self textEditor];
    [v6 setKnobTrackingDragPoint:{x, y}];

    v7 = [(CRLCanvasKnobTracker *)self rep];
    [v7 invalidateKnobPositions];
  }
}

- (void)endMovingKnob
{
  if (self->_knobMoved)
  {
    [(CRLWPTextKnobTracker *)self p_fixUpWordSelection];
  }

  [(CRLWPTextKnobTracker *)self p_stopMagnifyingWithAnimation:1];
  [(CRLWPTextKnobTracker *)self p_cleanupWhenDone];
  v3.receiver = self;
  v3.super_class = CRLWPTextKnobTracker;
  [(CRLCanvasKnobTracker *)&v3 endMovingKnob];
}

- (void)p_cleanupWhenDone
{
  if (!self->_doneTracking)
  {
    self->_doneTracking = 1;
    v3 = [(CRLWPTextKnobTracker *)self textEditor];
    [v3 setKnobTracking:0];

    v4 = [(CRLCanvasKnobTracker *)self rep];
    [v4 invalidateKnobs];
    [v4 invalidateKnobPositions];
    [v4 refreshEditMenu];
  }
}

- (BOOL)p_isMagnifyingVerticalText
{
  v3 = [(CRLWPTextKnobTracker *)self textEditor];
  v4 = [v3 selection];

  v5 = [(CRLCanvasKnobTracker *)self knob];
  v6 = [v5 tag];

  v7 = [(CRLWPTextKnobTracker *)self p_charIndexForKnob:v6 selection:v4];
  selectionType = self->_selectionType;
  v9 = [(CRLCanvasKnobTracker *)self rep];
  v10 = [CRLWPTextKnobTracker p_lineFragmentForCharIndex:v7 knobTag:v6 selectionType:selectionType rep:v9];

  if (v10)
  {
    v11 = (v10[25] >> 5) & 1;
  }

  else
  {
    LOBYTE(v11) = 0;
  }

  return v11;
}

+ (const)p_lineFragmentForCharIndex:(unint64_t)a3 knobTag:(unint64_t)a4 selectionType:(unint64_t)a5 rep:(id)a6
{
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v9 = [a6 columns];
  v10 = [v9 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v10)
  {
    v11 = *v16;
LABEL_3:
    v12 = 0;
    while (1)
    {
      if (*v16 != v11)
      {
        objc_enumerationMutation(v9);
      }

      v13 = [*(*(&v15 + 1) + 8 * v12) lineFragmentForCharIndex:a3 knobTag:a4 selectionType:a5];
      if (v13)
      {
        break;
      }

      if (v10 == ++v12)
      {
        v10 = [v9 countByEnumeratingWithState:&v15 objects:v19 count:16];
        if (v10)
        {
          goto LABEL_3;
        }

        goto LABEL_9;
      }
    }
  }

  else
  {
LABEL_9:
    v13 = 0;
  }

  return v13;
}

- (id)p_rangedMagnifier
{
  if (!self->_magnifier)
  {
    [(CRLWPTextKnobTracker *)self p_isMagnifyingVerticalText];
    v3 = objc_opt_new();
    magnifier = self->_magnifier;
    self->_magnifier = v3;
  }

  v5 = self->_magnifier;

  return v5;
}

- (void)p_startMagnifyingAt:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  self->_didDragKnob = 1;
  if (+[_TtC8Freeform19CRLFeatureFlagGroup isRedesignedTextCursorEnabled])
  {
    v7 = [(CRLWPTextKnobTracker *)self textEditor];
    v6 = [v7 textSelectionDelegate];
    [v6 beginLoupeSessionAt:{x, y}];
  }
}

- (void)p_magnifyWithTarget:(id)a3 magnificationPoint:(CGPoint)a4 offset:(CGPoint)a5 animated:(BOOL)a6 delayed:(BOOL)a7
{
  y = a4.y;
  x = a4.x;
  self->_didDragKnob = 1;
  if ([_TtC8Freeform19CRLFeatureFlagGroup isRedesignedTextCursorEnabled:a3])
  {
    v11 = [(CRLWPTextKnobTracker *)self textEditor];
    v10 = [v11 textSelectionDelegate];
    [v10 moveLoupeTo:{x, y}];
  }
}

- (void)p_stopMagnifyingWithAnimation:(BOOL)a3
{
  if (+[_TtC8Freeform19CRLFeatureFlagGroup isRedesignedTextCursorEnabled])
  {
    v5 = [(CRLWPTextKnobTracker *)self textEditor];
    v4 = [v5 textSelectionDelegate];
    [v4 endLoupeSession];
  }
}

- (void)p_setSelectionFromPoint:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  v142 = [(CRLWPTextKnobTracker *)self textEditor];
  v6 = [v142 storage];
  v7 = [v142 closestRepToPoint:v6 forStorage:{x, y}];
  v8 = v7;
  if (v7)
  {
    [v7 convertNaturalPointFromUnscaledCanvas:{x, y}];
    v10 = v9;
    v12 = v11;
    v13 = [v8 columns];
    v14 = [v13 firstObject];
    v15 = [v14 textIsVertical];

    if (((self->_multiTap | [(CRLWPEditor *)self->_textEditor wantsParagraphMode]) & 1) == 0)
    {
      if (v15)
      {
        v16 = [(CRLCanvasKnobTracker *)self knob];
        [v8 knobOffsetForKnob:v16 paragraphMode:0];
        v18 = v17;

        v19 = [(CRLCanvasKnobTracker *)self knob];
        v20 = [v19 tag];
        v21 = 1.0;
        if (v20 == 11)
        {
          v21 = -1.0;
        }

        v10 = v10 + v18 + v21;
      }

      else
      {
        v22 = [(CRLCanvasKnobTracker *)self knob];
        [v8 knobOffsetForKnob:v22 paragraphMode:0];
        v24 = v23;

        v19 = [(CRLCanvasKnobTracker *)self knob];
        v25 = [v19 tag];
        v26 = -1.0;
        if (v25 == 11)
        {
          v26 = 1.0;
        }

        v12 = v12 - v24 + v26;
      }
    }

    v141 = [v142 selection];
    [v141 range];
    v27 = [(CRLCanvasKnobTracker *)self knob];
    v139 = v15;
    v28 = [v27 tag];

    v29 = [v141 type];
    v30 = [v8 layout];
    tailCharAtStart = [CRLWPColumn charIndexForPointWithPinning:v28 == 10 isTail:v29 selectionType:v30 inLayoutTarget:v10, v12];

    if (tailCharAtStart == 0x7FFFFFFFFFFFFFFFLL)
    {
      v32 = v141;
LABEL_124:
      v97 = v8;
LABEL_142:

      goto LABEL_143;
    }

    v140 = v6;
    if (self->_multiTap)
    {
      if (v28 == 11)
      {
        if ([(CRLWPTextKnobTracker *)self p_newHeadCharIndex:tailCharAtStart isPastTailCharIndex:self->_tailCharAtStart rep:v8])
        {
          v33 = 10;
        }

        else
        {
          v33 = 11;
        }

LABEL_26:
        if (v28 == v33)
        {
          goto LABEL_31;
        }

        [v142 setKnobTag:v33];
        v40 = [(CRLCanvasKnobTracker *)self rep];
        [v40 invalidateKnobs];

        [v8 invalidateKnobs];
        v41 = [v8 knobForTag:v33];
        if (v41)
        {
          [(CRLCanvasKnobTracker *)self setKnob:v41];
        }

        v28 = v33;
        goto LABEL_30;
      }

      if (v28 == 10)
      {
        if ([(CRLWPTextKnobTracker *)self p_newTailCharIndex:tailCharAtStart isPastHeadCharIndex:self->_headCharAtStart rep:v8])
        {
          v33 = 11;
        }

        else
        {
          v33 = 10;
        }

        goto LABEL_26;
      }

      p_rangeAtStart = &self->_rangeAtStart;
      location = self->_rangeAtStart.location;
LABEL_36:
      p_length = &p_rangeAtStart->length;
      v37 = p_rangeAtStart->length + location;
      goto LABEL_37;
    }

    if (self->_selectionType)
    {
      goto LABEL_31;
    }

    p_rangeAtStart = &self->_rangeAtStart;
    location = self->_rangeAtStart.location;
    if (v28 == 11)
    {
      p_length = &self->_rangeAtStart.length;
      v37 = self->_rangeAtStart.length + location;
      if (tailCharAtStart < v37)
      {
LABEL_32:
        v42 = [(CRLWPTextKnobTracker *)self p_newHeadCharIndex:tailCharAtStart isPastTailCharIndex:self->_tailCharAtStart rep:v8, 80];
        v43 = v42;
        if (v42)
        {
          if (self->_selectionType == 7)
          {
            tailCharAtStart = self->_tailCharAtStart;
          }

          else
          {
            tailCharAtStart = [v140 previousCharacterIndex:v37];
          }
        }

        if (self->_selectionType == 7)
        {
          v54 = self->_tailCharAtStart;
          if (tailCharAtStart <= v54)
          {
            v55 = self->_tailCharAtStart;
          }

          else
          {
            v55 = tailCharAtStart;
          }

          v56 = [v140 nextCharacterIndex:v55];
          if (tailCharAtStart >= v54)
          {
            v57 = v54;
          }

          else
          {
            v57 = tailCharAtStart;
          }

          if (v57 <= v56)
          {
            v58 = v56;
          }

          else
          {
            v58 = v57;
          }

          if (v57 >= v56)
          {
            tailCharAtStart = v56;
          }

          else
          {
            tailCharAtStart = v57;
          }

          length = v58 - tailCharAtStart;
        }

        else
        {
          length = v37 - tailCharAtStart;
        }

        v138 = 1;
        v137 = 11;
        goto LABEL_75;
      }

      v38 = [v142 storage];
      v39 = [v38 previousCharacterIndex:self->_rangeAtStart.length + p_rangeAtStart->location];
    }

    else
    {
      if (v28 != 10 || tailCharAtStart > location)
      {
        goto LABEL_36;
      }

      v38 = [v142 storage];
      v39 = [v38 nextCharacterIndex:p_rangeAtStart->location];
    }

    v70 = v39;

    if (v70 == 0x7FFFFFFFFFFFFFFFLL)
    {
LABEL_31:
      p_rangeAtStart = &self->_rangeAtStart;
      p_length = &self->_rangeAtStart.length;
      v37 = self->_rangeAtStart.length + self->_rangeAtStart.location;
      if (v28 == 11)
      {
        goto LABEL_32;
      }

LABEL_37:
      v137 = v28;
      v44 = [v141 type];
      v45 = tailCharAtStart;
      if (v44 != 7)
      {
        v45 = [v6 previousCharacterIndex:tailCharAtStart];
      }

      v46 = [(CRLWPTextKnobTracker *)self p_newTailCharIndex:v45 isPastHeadCharIndex:self->_headCharAtStart rep:v8];
      v43 = v46;
      if (v46)
      {
        if (self->_selectionType == 7)
        {
          tailCharAtStart = self->_headCharAtStart;
        }

        else
        {
          tailCharAtStart = [v140 nextCharacterIndex:p_rangeAtStart->location];
        }
      }

      if (self->_selectionType == 7)
      {
        headCharAtStart = self->_headCharAtStart;
        if (headCharAtStart <= tailCharAtStart)
        {
          v48 = tailCharAtStart;
        }

        else
        {
          v48 = self->_headCharAtStart;
        }

        v49 = [v140 nextCharacterIndex:v48];
        v138 = 0;
        if (headCharAtStart >= tailCharAtStart)
        {
          v50 = tailCharAtStart;
        }

        else
        {
          v50 = headCharAtStart;
        }

        if (v50 <= v49)
        {
          v51 = v49;
        }

        else
        {
          v51 = v50;
        }

        if (v50 >= v49)
        {
          tailCharAtStart = v49;
        }

        else
        {
          tailCharAtStart = v50;
        }

        length = v51 - tailCharAtStart;
      }

      else
      {
        v138 = 0;
        v53 = &tailCharAtStart[-v37];
        tailCharAtStart = p_rangeAtStart->location;
        length = &v53[*p_length];
      }

LABEL_75:
      v59 = [CRLWPSelection selectionWithRange:tailCharAtStart, length];
      v60 = [v142 wantsParagraphModeWithSelection:v59];

      if (!v60)
      {
        v69 = v140;
        goto LABEL_119;
      }

      if (v43)
      {
LABEL_118:
        v69 = v140;
        tailCharAtStart = [v140 textRangeForParagraphsInCharRange:{tailCharAtStart, length}];
        length = v86;
LABEL_119:
        if (self->_multiTap)
        {
          v146.location = p_rangeAtStart->location;
          v146.length = *p_length;
          v144.location = tailCharAtStart;
          v144.length = length;
          v87 = NSUnionRange(v144, v146);
          tailCharAtStart = v87.location;
          length = v87.length;
        }

        v88 = [(CRLWPTextKnobTracker *)self adjustSelectionRange:tailCharAtStart forStorage:length, v69];
        v90 = v89;
        v91 = [v142 editorHelper];
        v147.location = [v91 selectionRangeForCharIndex:{objc_msgSend(v141, "range")}];
        v147.length = v92;
        v145.location = v88;
        v145.length = v90;
        v93 = sub_1002BC8E0(v145, v147);
        v95 = v94;

        if ([v141 range] == v93 && v96 == v95)
        {
          v6 = v140;
          v32 = v141;
          goto LABEL_124;
        }

        v6 = v140;
        v98 = [objc_alloc(objc_msgSend(v142 "wpSelectionClass"))];
        v99 = [v142 editorController];
        [v99 setSelection:v98 forEditor:v142 withFlags:14];

        v100 = [v142 editorHelper];
        v101 = [v142 selection];
        v102 = [v100 calculateVisualRunsFromSelection:v101 updateControllerSelection:1];

        v32 = [v142 selection];

        self->_selectionType = [v32 type];
        if (v138)
        {
          v103 = [v32 start];
        }

        else
        {
          v103 = [v32 end];
        }

        v104 = [v8 repForCharIndex:v103 isStart:v138];
        v105 = v104;
        if (v104)
        {
          v97 = v104;

          v106 = [(CRLCanvasKnobTracker *)self rep];

          if (v106 != v97)
          {
            [v142 setKnobTag:v137];
            v107 = [(CRLCanvasKnobTracker *)self rep];
            [v107 invalidateKnobs];

            [v97 invalidateKnobs];
            [(CRLCanvasKnobTracker *)self setRep:v97];
            v108 = [(CRLCanvasKnobTracker *)self rep];
            v109 = [v108 knobForTag:v137];
            [(CRLCanvasKnobTracker *)self setKnob:v109];
          }
        }

        else
        {
          v97 = v8;
        }

        v110 = [(CRLCanvasKnobTracker *)self rep];
        v111 = [(CRLCanvasKnobTracker *)self knob];
        [v110 knobCenterForSelection:v32 knob:v111];
        v113 = v112;
        v115 = v114;
        v116 = [(CRLCanvasKnobTracker *)self knob];
        [v116 setPosition:{v113, v115}];

        v117 = [(CRLCanvasKnobTracker *)self knob];
        [v117 position];
        v119 = v118;
        v121 = v120;
        v122 = CGRectNull.origin.y;

        v123 = [*(&self->super.super.isa + v136) wantsParagraphMode];
        v124 = v119 == CGRectNull.origin.x;
        if (v121 != v122)
        {
          v124 = 0;
        }

        if ((v123 | v124) == 1)
        {
          [(CRLWPTextKnobTracker *)self p_stopMagnifyingWithAnimation:1];
        }

        else
        {
          v125 = [v142 interactiveCanvasController];
          if (v125)
          {
            v126 = [(CRLCanvasKnobTracker *)self rep];
            if (v126)
            {
              v127 = [(CRLCanvasKnobTracker *)self knob];

              if (!v127)
              {
                goto LABEL_141;
              }

              v125 = [(CRLCanvasKnobTracker *)self rep];
              v128 = [(CRLCanvasKnobTracker *)self knob];
              [v128 position];
              [CRLWPTextKnobTracker p_magnifyWithTarget:"p_magnifyWithTarget:magnificationPoint:offset:animated:delayed:" magnificationPoint:v125 offset:self->_textMagnifierTimer == 0 animated:0 delayed:?];
            }
          }
        }

LABEL_141:

        goto LABEL_142;
      }

      v61 = [v8 columns];
      v62 = [CRLWPColumn closestColumnInColumnsArray:v61 forPoint:0 ignoreEmptyColumns:1 ignoreDrawableOnlyColumns:v10, v12];

      v63 = [v62 lineFragmentClosestToPoint:5 knobTag:{v10, v12}];
      v64 = v63;
      if (!v63)
      {
        goto LABEL_117;
      }

      v66 = *(v63 + 5);
      v65 = *(v63 + 6);
      v68 = *(v63 + 7);
      v67 = *(v63 + 8);
      if (v138)
      {
        if (v139)
        {
          if (v10 <= CGRectGetMinX(*(v63 + 40)))
          {
            if (v137 != 10)
            {
              goto LABEL_117;
            }

            goto LABEL_93;
          }

LABEL_96:
          if (*(v64 + 3) < 0)
          {
            v80 = &xmmword_101464828;
          }

          else
          {
            v80 = v64;
          }

          v81 = *v80;
          if (v81 <= &tailCharAtStart[length])
          {
            v82 = &tailCharAtStart[length];
          }

          else
          {
            v82 = v81;
          }

          if (v81 >= &tailCharAtStart[length])
          {
            tailCharAtStart += length;
          }

          else
          {
            tailCharAtStart = v81;
          }

          length = v82 - tailCharAtStart;
          goto LABEL_117;
        }

        if (v12 < CGRectGetMaxY(*(v63 + 40)))
        {
          goto LABEL_96;
        }

        if (v137 != 10)
        {
LABEL_117:

          goto LABEL_118;
        }
      }

      else
      {
        if (v137 != 10)
        {
          goto LABEL_117;
        }

        if (v139)
        {
LABEL_93:
          v149.origin.x = v66;
          v149.origin.y = v65;
          v149.size.width = v68;
          v149.size.height = v67;
          if (v10 >= CGRectGetMaxX(v149))
          {
            goto LABEL_117;
          }

LABEL_108:
          if (*(v64 + 3) < 0)
          {
            v83 = &xmmword_101464828;
          }

          else
          {
            v83 = v64;
          }

          v84 = (*v83 + *(v83 + 1));
          if (tailCharAtStart <= v84)
          {
            v85 = v84;
          }

          else
          {
            v85 = tailCharAtStart;
          }

          if (tailCharAtStart >= v84)
          {
            tailCharAtStart = v84;
          }

          length = v85 - tailCharAtStart;
          goto LABEL_117;
        }
      }

      v150.origin.x = v66;
      v150.origin.y = v65;
      v150.size.width = v68;
      v150.size.height = v67;
      if (v12 > CGRectGetMinY(v150))
      {
        goto LABEL_108;
      }

      goto LABEL_117;
    }

    v41 = [[CRLWPSelection alloc] initWithRange:v70, 0];
    v71 = [(CRLCanvasKnobTracker *)self rep];
    [v71 caretRectForSelection:v41];
    v73 = v72;
    v75 = v74;
    v77 = v76;
    v79 = v78;

    v151.origin.x = CGRectNull.origin.x;
    v151.origin.y = CGRectNull.origin.y;
    v151.size.width = CGRectNull.size.width;
    v151.size.height = CGRectNull.size.height;
    v148.origin.x = v73;
    v148.origin.y = v75;
    v148.size.width = v77;
    v148.size.height = v79;
    if (!CGRectEqualToRect(v148, v151))
    {
      if (((v28 == 11) & v139) == 1)
      {
        v73 = v73 + v77;
      }

      else if (v28 == 10 && !v139)
      {
        v75 = v75 + v79;
      }

      if (v139)
      {
        v129 = [(CRLCanvasKnobTracker *)self knob];
        v130 = [v129 tag];
        v131 = 1.0;
        if (v130 == 11)
        {
          v131 = -1.0;
        }

        v10 = v73 + v131;
      }

      else
      {
        v129 = [(CRLCanvasKnobTracker *)self knob];
        v132 = [v129 tag];
        v133 = -1.0;
        if (v132 == 11)
        {
          v133 = 1.0;
        }

        v12 = v75 + v133;
      }

      v134 = [v8 layout];
      v135 = [CRLWPColumn charIndexForPointWithPinning:v134 inLayoutTarget:v10, v12];

      if (v135 != 0x7FFFFFFFFFFFFFFFLL)
      {
        tailCharAtStart = v135;
      }
    }

LABEL_30:

    goto LABEL_31;
  }

LABEL_143:
}

- (BOOL)p_newHeadCharIndex:(unint64_t)a3 isPastTailCharIndex:(unint64_t)a4 rep:(id)a5
{
  v8 = a5;
  v9 = a3 >= a4;
  if (self->_selectionType == 7 && ![(CRLWPEditor *)self->_textEditor wantsParagraphMode])
  {
    v10 = [CRLWPTextKnobTracker p_lineFragmentForCharIndex:a3 knobTag:11 selectionType:self->_selectionType rep:v8];
    v12 = [v8 range];
    v13 = 0;
    v14 = a4 >= v12;
    v15 = a4 - v12;
    if (v14 && v15 < v11)
    {
      v13 = [CRLWPTextKnobTracker p_lineFragmentForCharIndex:a4 knobTag:11 selectionType:self->_selectionType rep:v8];
    }

    if (v10)
    {
      v16 = v10 == v13;
    }

    else
    {
      v16 = 0;
    }

    if (v16)
    {
      v17 = [(CRLWPTextKnobTracker *)self textEditor];
      v18 = [v17 storage];
      v19 = [v18 isWritingDirectionRightToLeftForParagraphAtCharIndex:a3];

      v20 = sub_100212D9C(v10, a3);
      v21 = sub_100212D9C(v10, a4);
      if (v19)
      {
        v9 = v20 < v21;
      }

      else
      {
        v9 = v20 > v21;
      }
    }
  }

  return v9;
}

- (BOOL)p_newTailCharIndex:(unint64_t)a3 isPastHeadCharIndex:(unint64_t)a4 rep:(id)a5
{
  v8 = a5;
  v9 = a3 <= a4;
  if (self->_selectionType == 7 && ![(CRLWPEditor *)self->_textEditor wantsParagraphMode])
  {
    v10 = [CRLWPTextKnobTracker p_lineFragmentForCharIndex:a3 knobTag:11 selectionType:self->_selectionType rep:v8];
    v12 = [v8 range];
    v13 = 0;
    v14 = a4 >= v12;
    v15 = a4 - v12;
    if (v14 && v15 < v11)
    {
      v13 = [CRLWPTextKnobTracker p_lineFragmentForCharIndex:a4 knobTag:11 selectionType:self->_selectionType rep:v8];
    }

    if (v10)
    {
      v16 = v10 == v13;
    }

    else
    {
      v16 = 0;
    }

    if (v16)
    {
      v17 = [(CRLWPTextKnobTracker *)self textEditor];
      v18 = [v17 storage];
      v19 = [v18 isWritingDirectionRightToLeftForParagraphAtCharIndex:a3];

      v20 = sub_100212D9C(v10, a3);
      v21 = sub_100212D9C(v10, a4);
      if (v19)
      {
        v9 = v20 > v21;
      }

      else
      {
        v9 = v20 < v21;
      }
    }
  }

  return v9;
}

- (void)p_fixUpWordSelection
{
  if (![(CRLWPTextKnobTracker *)self fixupWordSelection]|| [(CRLWPTextMagnifierRanged *)self->_magnifier terminalPointPlacedCarefully])
  {
    return;
  }

  [(CRLWPTextMagnifierRanged *)self->_magnifier horizontalMovement];
  v4 = v3;
  v41 = [(CRLCanvasKnobTracker *)self knob];
  v5 = [v41 tag];

  v6 = [(CRLWPTextKnobTracker *)self textEditor];
  v42 = [v6 selection];

  if (v4 >= 0.0)
  {
    if (v4 <= 0.0)
    {
      goto LABEL_38;
    }

    if (v5 != 11)
    {
      v7 = [v42 end];
      v10 = [(CRLCanvasKnobTracker *)self rep];
      v11 = v10;
      if (v10)
      {
        v12 = [(CRLWPSelection *)v10 columnForCharIndex:v7];
        if (v12)
        {
          v13 = [v12 lineFragmentForCharIndex:v7 knobTag:10 selectionType:{objc_msgSend(v42, "type")}];
          if (v13)
          {
            v14 = *(v13 + 3) < 0 ? &xmmword_101464828 : v13;
            if (*v14 < v7 && v7 == (*v14 + *(v14 + 1)))
            {
              v15 = [(CRLWPTextKnobTracker *)self textEditor];
              v16 = [v15 storage];
              v17 = sub_10027E3D4([v16 characterAtIndex:v7 - 1]);

              if (v17)
              {
                goto LABEL_37;
              }
            }
          }
        }
      }

      goto LABEL_22;
    }

    v8 = [v42 start];
LABEL_11:
    v7 = v8;
    v9 = 0;
    goto LABEL_23;
  }

  if (v5 != 11)
  {
    v8 = [v42 end];
    goto LABEL_11;
  }

  v7 = [v42 start];
LABEL_22:
  v9 = 1;
LABEL_23:
  if (v7 != 0x7FFFFFFFFFFFFFFFLL)
  {
    location = [v42 range];
    length = v19;
    if (v9)
    {
      v21 = [(CRLWPTextKnobTracker *)self textEditor];
      v22 = [v21 storage];
      v23 = [v22 wordAtCharIndex:v7 includePreviousWord:1];
      v25 = v24;

      if (v23 == 0x7FFFFFFFFFFFFFFFLL)
      {
LABEL_36:
        v11 = -[CRLWPSelection initWithType:range:styleInsertionBehavior:caretAffinity:]([CRLWPSelection alloc], "initWithType:range:styleInsertionBehavior:caretAffinity:", [v42 type], location, length, objc_msgSend(v42, "styleInsertionBehavior"), objc_msgSend(v42, "caretAffinity"));
        v12 = [(CRLWPTextKnobTracker *)self textEditor];
        v39 = [v12 editorController];
        v40 = [(CRLWPTextKnobTracker *)self textEditor];
        [v39 setSelection:v11 forEditor:v40 withFlags:9];

LABEL_37:
        goto LABEL_38;
      }
    }

    else if (v5 == 11)
    {
      v27 = [(CRLWPTextKnobTracker *)self textEditor];
      v28 = [v27 nextWordFromIndex:v7 forward:1];

      if (v28 < &location[length])
      {
        location += v28 - v7;
        length -= v28 - v7;
        goto LABEL_36;
      }

      v36 = [(CRLWPTextKnobTracker *)self textEditor];
      v37 = [v36 storage];
      v23 = [v37 wordAtCharIndex:v7 includePreviousWord:1];
      v25 = v38;

      if (v23 == 0x7FFFFFFFFFFFFFFFLL)
      {
        goto LABEL_36;
      }
    }

    else
    {
      v29 = [(CRLWPTextKnobTracker *)self textEditor];
      v30 = [v29 nextWordFromIndex:v7 forward:0];
      v32 = v31;

      if (v30 != 0x7FFFFFFFFFFFFFFFLL && &v30[v32] > location)
      {
        length = &v30[v32 + length - v7];
        goto LABEL_36;
      }

      v33 = [(CRLWPTextKnobTracker *)self textEditor];
      v34 = [v33 storage];
      v23 = [v34 wordAtCharIndex:v7 includePreviousWord:1];
      v25 = v35;

      if (v23 == 0x7FFFFFFFFFFFFFFFLL)
      {
        goto LABEL_36;
      }
    }

    v44.location = location;
    v44.length = length;
    v45.location = v23;
    v45.length = v25;
    v26 = NSUnionRange(v44, v45);
    location = v26.location;
    length = v26.length;
    goto LABEL_36;
  }

LABEL_38:
}

- (unint64_t)p_charIndexForKnob:(unint64_t)a3 selection:(id)a4
{
  v5 = a4;
  if ([v5 type] == 7)
  {
    if (a3 == 11)
    {
      v6 = [v5 headCharIndex];
    }

    else
    {
      v6 = [v5 tailCharIndex];
    }
  }

  else if (a3 == 11)
  {
    v6 = [v5 start];
  }

  else
  {
    v6 = [v5 end];
  }

  v7 = v6;

  return v7;
}

- (_NSRange)adjustSelectionRange:(_NSRange)a3 forStorage:(id)a4
{
  length = a3.length;
  location = a3.location;
  result.length = length;
  result.location = location;
  return result;
}

- (void)updateSelectionAfterAutoscroll:(id)a3
{
  v8 = a3;
  [v8 adjustedUnscaledAutoscrollPoint];
  v5 = v4;
  v7 = v6;
  -[CRLWPTextMagnifierRanged setAutoscrollDirections:](self->_magnifier, "setAutoscrollDirections:", [v8 directions]);
  [(CRLWPTextKnobTracker *)self p_setSelectionFromPoint:v5, v7];
  [(CRLWPTextMagnifierRanged *)self->_magnifier postAutoscrollPoint:v5, v7];
}

- (CGPoint)magnificationPoint
{
  x = self->_magnificationPoint.x;
  y = self->_magnificationPoint.y;
  result.y = y;
  result.x = x;
  return result;
}

@end