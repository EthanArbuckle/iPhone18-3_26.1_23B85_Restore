@interface CRLWPTextKnobTracker
+ (const)p_lineFragmentForCharIndex:(unint64_t)index knobTag:(unint64_t)tag selectionType:(unint64_t)type rep:(id)rep;
- (BOOL)p_isMagnifyingVerticalText;
- (BOOL)p_newHeadCharIndex:(unint64_t)index isPastTailCharIndex:(unint64_t)charIndex rep:(id)rep;
- (BOOL)p_newTailCharIndex:(unint64_t)index isPastHeadCharIndex:(unint64_t)charIndex rep:(id)rep;
- (CGPoint)magnificationPoint;
- (CRLWPTextKnobTracker)initWithRep:(id)rep knob:(id)knob;
- (_NSRange)adjustSelectionRange:(_NSRange)range forStorage:(id)storage;
- (id)p_rangedMagnifier;
- (unint64_t)p_charIndexForKnob:(unint64_t)knob selection:(id)selection;
- (void)dealloc;
- (void)endMovingKnob;
- (void)moveKnobToCanvasPosition:(CGPoint)position;
- (void)p_cleanupWhenDone;
- (void)p_fixUpWordSelection;
- (void)p_magnifyWithTarget:(id)target magnificationPoint:(CGPoint)point offset:(CGPoint)offset animated:(BOOL)animated delayed:(BOOL)delayed;
- (void)p_setSelectionFromPoint:(CGPoint)point;
- (void)p_startMagnifyingAt:(CGPoint)at;
- (void)p_stopMagnifyingWithAnimation:(BOOL)animation;
- (void)updateSelectionAfterAutoscroll:(id)autoscroll;
@end

@implementation CRLWPTextKnobTracker

- (CRLWPTextKnobTracker)initWithRep:(id)rep knob:(id)knob
{
  repCopy = rep;
  knobCopy = knob;
  v66.receiver = self;
  v66.super_class = CRLWPTextKnobTracker;
  v8 = [(CRLCanvasKnobTracker *)&v66 initWithRep:repCopy knob:knobCopy];
  if (v8)
  {
    v9 = objc_opt_class();
    v10 = [(CRLCanvasKnobTracker *)v8 rep];
    interactiveCanvasController = [v10 interactiveCanvasController];
    editorController = [interactiveCanvasController editorController];
    textInputEditor = [editorController textInputEditor];
    v14 = sub_100014370(v9, textInputEditor);
    [(CRLWPTextKnobTracker *)v8 setTextEditor:v14];

    textEditor = [(CRLWPTextKnobTracker *)v8 textEditor];
    [textEditor setKnobTracking:1];

    knob = [(CRLCanvasKnobTracker *)v8 knob];
    v17 = [knob tag];
    textEditor2 = [(CRLWPTextKnobTracker *)v8 textEditor];
    [textEditor2 setKnobTag:v17];

    v19 = [(CRLCanvasKnobTracker *)v8 rep];
    [knobCopy position];
    [v19 convertNaturalPointToUnscaledCanvas:?];
    v21 = v20;
    v23 = v22;
    textEditor3 = [(CRLWPTextKnobTracker *)v8 textEditor];
    [textEditor3 setKnobTrackingDragPoint:{v21, v23}];

    textEditor4 = [(CRLWPTextKnobTracker *)v8 textEditor];
    v8->_multiTap = [textEditor4 knobTrackingTapCount] > 1;

    textEditor5 = [(CRLWPTextKnobTracker *)v8 textEditor];
    selection = [textEditor5 selection];

    v8->_selectionType = [selection type];
    v8->_rangeAtStart.location = [selection range];
    v8->_rangeAtStart.length = v28;
    if (v8->_selectionType != 7)
    {
      textEditor6 = [(CRLWPTextKnobTracker *)v8 textEditor];
      editorHelper = [textEditor6 editorHelper];
      v31 = [editorHelper logicalToVisualSelection:selection];

      textEditor7 = [(CRLWPTextKnobTracker *)v8 textEditor];
      [textEditor7 setSelection:v31];

      selection = v31;
    }

    textEditor8 = [(CRLWPTextKnobTracker *)v8 textEditor];
    editorHelper2 = [textEditor8 editorHelper];
    v35 = [editorHelper2 calculateVisualRunsFromSelection:selection updateControllerSelection:1];

    start = [v35 start];
    v37 = [v35 end];
    if ([v35 isVisual])
    {
      start = [v35 headCharIndex];
      tailCharIndex = [v35 tailCharIndex];
      if (tailCharIndex < start)
      {
        start = tailCharIndex;
      }

      headCharIndex = [v35 headCharIndex];
      tailCharIndex2 = [v35 tailCharIndex];
      if (headCharIndex <= tailCharIndex2)
      {
        v41 = tailCharIndex2;
      }

      else
      {
        v41 = headCharIndex;
      }

      v8->_headCharAtStart = [v35 headCharIndex];
      v8->_tailCharAtStart = [v35 tailCharIndex];
      textEditor9 = [(CRLWPTextKnobTracker *)v8 textEditor];
      storage = [textEditor9 storage];
      v37 = sub_10027F35C(v41, storage);
    }

    else
    {
      v8->_headCharAtStart = start;
      v8->_tailCharAtStart = v37;
    }

    if (start <= v37)
    {
      v44 = v37;
    }

    else
    {
      v44 = start;
    }

    if (start >= v37)
    {
      v45 = v37;
    }

    else
    {
      v45 = start;
    }

    v8->_rangeAtStart.location = v45;
    v8->_rangeAtStart.length = v44 - v45;
    v46 = [(CRLCanvasKnobTracker *)v8 rep];
    [v46 refreshEditMenu];

    textEditor10 = [(CRLWPTextKnobTracker *)v8 textEditor];
    v48 = [textEditor10 wantsParagraphModeWithSelection:v35];

    if (v48)
    {
      v49 = [(CRLCanvasKnobTracker *)v8 rep];
      knob2 = [(CRLCanvasKnobTracker *)v8 knob];
      if ([knob2 tag] == 10)
      {
        start2 = [v35 start];
      }

      else
      {
        start2 = [v35 end];
      }

      v52 = start2;
      knob3 = [(CRLCanvasKnobTracker *)v8 knob];
      v54 = [v49 repForCharIndex:v52 isStart:{objc_msgSend(knob3, "tag") == 11}];

      v55 = [(CRLCanvasKnobTracker *)v8 rep];

      if (v55 != v54)
      {
        [v54 invalidateKnobs];
      }

      v56 = [(CRLCanvasKnobTracker *)v8 rep];
      [v56 invalidateKnobs];

      v57 = [(CRLCanvasKnobTracker *)v8 rep];
      knob4 = [(CRLCanvasKnobTracker *)v8 knob];
      v59 = [v57 knobForTag:{objc_msgSend(knob4, "tag")}];
      [(CRLCanvasKnobTracker *)v8 setKnob:v59];
    }

    textEditor11 = [(CRLWPTextKnobTracker *)v8 textEditor];
    interactiveCanvasController2 = [textEditor11 interactiveCanvasController];
    if (interactiveCanvasController2)
    {
      v62 = [(CRLCanvasKnobTracker *)v8 rep];
      if (knobCopy)
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

      textEditor11 = [(CRLCanvasKnobTracker *)v8 rep];
      [knobCopy position];
      [CRLWPTextKnobTracker p_magnifyWithTarget:v8 magnificationPoint:"p_magnifyWithTarget:magnificationPoint:offset:animated:delayed:" offset:textEditor11 animated:1 delayed:1];
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

- (void)moveKnobToCanvasPosition:(CGPoint)position
{
  if (self->_ignoreNextCall)
  {
    self->_ignoreNextCall = 0;
  }

  else
  {
    y = position.y;
    x = position.x;
    self->_knobMoved = 1;
    [(CRLWPTextKnobTracker *)self p_setSelectionFromPoint:?];
    textEditor = [(CRLWPTextKnobTracker *)self textEditor];
    [textEditor setKnobTrackingDragPoint:{x, y}];

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
    textEditor = [(CRLWPTextKnobTracker *)self textEditor];
    [textEditor setKnobTracking:0];

    v4 = [(CRLCanvasKnobTracker *)self rep];
    [v4 invalidateKnobs];
    [v4 invalidateKnobPositions];
    [v4 refreshEditMenu];
  }
}

- (BOOL)p_isMagnifyingVerticalText
{
  textEditor = [(CRLWPTextKnobTracker *)self textEditor];
  selection = [textEditor selection];

  knob = [(CRLCanvasKnobTracker *)self knob];
  v6 = [knob tag];

  v7 = [(CRLWPTextKnobTracker *)self p_charIndexForKnob:v6 selection:selection];
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

+ (const)p_lineFragmentForCharIndex:(unint64_t)index knobTag:(unint64_t)tag selectionType:(unint64_t)type rep:(id)rep
{
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  columns = [rep columns];
  v10 = [columns countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v10)
  {
    v11 = *v16;
LABEL_3:
    v12 = 0;
    while (1)
    {
      if (*v16 != v11)
      {
        objc_enumerationMutation(columns);
      }

      v13 = [*(*(&v15 + 1) + 8 * v12) lineFragmentForCharIndex:index knobTag:tag selectionType:type];
      if (v13)
      {
        break;
      }

      if (v10 == ++v12)
      {
        v10 = [columns countByEnumeratingWithState:&v15 objects:v19 count:16];
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

- (void)p_startMagnifyingAt:(CGPoint)at
{
  y = at.y;
  x = at.x;
  self->_didDragKnob = 1;
  if (+[_TtC8Freeform19CRLFeatureFlagGroup isRedesignedTextCursorEnabled])
  {
    textEditor = [(CRLWPTextKnobTracker *)self textEditor];
    textSelectionDelegate = [textEditor textSelectionDelegate];
    [textSelectionDelegate beginLoupeSessionAt:{x, y}];
  }
}

- (void)p_magnifyWithTarget:(id)target magnificationPoint:(CGPoint)point offset:(CGPoint)offset animated:(BOOL)animated delayed:(BOOL)delayed
{
  y = point.y;
  x = point.x;
  self->_didDragKnob = 1;
  if ([_TtC8Freeform19CRLFeatureFlagGroup isRedesignedTextCursorEnabled:target])
  {
    textEditor = [(CRLWPTextKnobTracker *)self textEditor];
    textSelectionDelegate = [textEditor textSelectionDelegate];
    [textSelectionDelegate moveLoupeTo:{x, y}];
  }
}

- (void)p_stopMagnifyingWithAnimation:(BOOL)animation
{
  if (+[_TtC8Freeform19CRLFeatureFlagGroup isRedesignedTextCursorEnabled])
  {
    textEditor = [(CRLWPTextKnobTracker *)self textEditor];
    textSelectionDelegate = [textEditor textSelectionDelegate];
    [textSelectionDelegate endLoupeSession];
  }
}

- (void)p_setSelectionFromPoint:(CGPoint)point
{
  y = point.y;
  x = point.x;
  textEditor = [(CRLWPTextKnobTracker *)self textEditor];
  storage = [textEditor storage];
  v7 = [textEditor closestRepToPoint:storage forStorage:{x, y}];
  v8 = v7;
  if (v7)
  {
    [v7 convertNaturalPointFromUnscaledCanvas:{x, y}];
    v10 = v9;
    v12 = v11;
    columns = [v8 columns];
    firstObject = [columns firstObject];
    textIsVertical = [firstObject textIsVertical];

    if (((self->_multiTap | [(CRLWPEditor *)self->_textEditor wantsParagraphMode]) & 1) == 0)
    {
      if (textIsVertical)
      {
        knob = [(CRLCanvasKnobTracker *)self knob];
        [v8 knobOffsetForKnob:knob paragraphMode:0];
        v18 = v17;

        knob2 = [(CRLCanvasKnobTracker *)self knob];
        v20 = [knob2 tag];
        v21 = 1.0;
        if (v20 == 11)
        {
          v21 = -1.0;
        }

        v10 = v10 + v18 + v21;
      }

      else
      {
        knob3 = [(CRLCanvasKnobTracker *)self knob];
        [v8 knobOffsetForKnob:knob3 paragraphMode:0];
        v24 = v23;

        knob2 = [(CRLCanvasKnobTracker *)self knob];
        v25 = [knob2 tag];
        v26 = -1.0;
        if (v25 == 11)
        {
          v26 = 1.0;
        }

        v12 = v12 - v24 + v26;
      }
    }

    selection = [textEditor selection];
    [selection range];
    knob4 = [(CRLCanvasKnobTracker *)self knob];
    v139 = textIsVertical;
    v28 = [knob4 tag];

    type = [selection type];
    layout = [v8 layout];
    tailCharAtStart = [CRLWPColumn charIndexForPointWithPinning:v28 == 10 isTail:type selectionType:layout inLayoutTarget:v10, v12];

    if (tailCharAtStart == 0x7FFFFFFFFFFFFFFFLL)
    {
      selection3 = selection;
LABEL_124:
      v97 = v8;
LABEL_142:

      goto LABEL_143;
    }

    v140 = storage;
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

        [textEditor setKnobTag:v33];
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

      storage2 = [textEditor storage];
      v39 = [storage2 previousCharacterIndex:self->_rangeAtStart.length + p_rangeAtStart->location];
    }

    else
    {
      if (v28 != 10 || tailCharAtStart > location)
      {
        goto LABEL_36;
      }

      storage2 = [textEditor storage];
      v39 = [storage2 nextCharacterIndex:p_rangeAtStart->location];
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
      type2 = [selection type];
      v45 = tailCharAtStart;
      if (type2 != 7)
      {
        v45 = [storage previousCharacterIndex:tailCharAtStart];
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
      v60 = [textEditor wantsParagraphModeWithSelection:v59];

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
        editorHelper = [textEditor editorHelper];
        v147.location = [editorHelper selectionRangeForCharIndex:{objc_msgSend(selection, "range")}];
        v147.length = v92;
        v145.location = v88;
        v145.length = v90;
        v93 = sub_1002BC8E0(v145, v147);
        v95 = v94;

        if ([selection range] == v93 && v96 == v95)
        {
          storage = v140;
          selection3 = selection;
          goto LABEL_124;
        }

        storage = v140;
        v98 = [objc_alloc(objc_msgSend(textEditor "wpSelectionClass"))];
        editorController = [textEditor editorController];
        [editorController setSelection:v98 forEditor:textEditor withFlags:14];

        editorHelper2 = [textEditor editorHelper];
        selection2 = [textEditor selection];
        v102 = [editorHelper2 calculateVisualRunsFromSelection:selection2 updateControllerSelection:1];

        selection3 = [textEditor selection];

        self->_selectionType = [selection3 type];
        if (v138)
        {
          start = [selection3 start];
        }

        else
        {
          start = [selection3 end];
        }

        v104 = [v8 repForCharIndex:start isStart:v138];
        v105 = v104;
        if (v104)
        {
          v97 = v104;

          v106 = [(CRLCanvasKnobTracker *)self rep];

          if (v106 != v97)
          {
            [textEditor setKnobTag:v137];
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
        knob5 = [(CRLCanvasKnobTracker *)self knob];
        [v110 knobCenterForSelection:selection3 knob:knob5];
        v113 = v112;
        v115 = v114;
        knob6 = [(CRLCanvasKnobTracker *)self knob];
        [knob6 setPosition:{v113, v115}];

        knob7 = [(CRLCanvasKnobTracker *)self knob];
        [knob7 position];
        v119 = v118;
        v121 = v120;
        v122 = CGRectNull.origin.y;

        wantsParagraphMode = [*(&self->super.super.isa + v136) wantsParagraphMode];
        v124 = v119 == CGRectNull.origin.x;
        if (v121 != v122)
        {
          v124 = 0;
        }

        if ((wantsParagraphMode | v124) == 1)
        {
          [(CRLWPTextKnobTracker *)self p_stopMagnifyingWithAnimation:1];
        }

        else
        {
          interactiveCanvasController = [textEditor interactiveCanvasController];
          if (interactiveCanvasController)
          {
            v126 = [(CRLCanvasKnobTracker *)self rep];
            if (v126)
            {
              knob8 = [(CRLCanvasKnobTracker *)self knob];

              if (!knob8)
              {
                goto LABEL_141;
              }

              interactiveCanvasController = [(CRLCanvasKnobTracker *)self rep];
              knob9 = [(CRLCanvasKnobTracker *)self knob];
              [knob9 position];
              [CRLWPTextKnobTracker p_magnifyWithTarget:"p_magnifyWithTarget:magnificationPoint:offset:animated:delayed:" magnificationPoint:interactiveCanvasController offset:self->_textMagnifierTimer == 0 animated:0 delayed:?];
            }
          }
        }

LABEL_141:

        goto LABEL_142;
      }

      columns2 = [v8 columns];
      v62 = [CRLWPColumn closestColumnInColumnsArray:columns2 forPoint:0 ignoreEmptyColumns:1 ignoreDrawableOnlyColumns:v10, v12];

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
        knob10 = [(CRLCanvasKnobTracker *)self knob];
        v130 = [knob10 tag];
        v131 = 1.0;
        if (v130 == 11)
        {
          v131 = -1.0;
        }

        v10 = v73 + v131;
      }

      else
      {
        knob10 = [(CRLCanvasKnobTracker *)self knob];
        v132 = [knob10 tag];
        v133 = -1.0;
        if (v132 == 11)
        {
          v133 = 1.0;
        }

        v12 = v75 + v133;
      }

      layout2 = [v8 layout];
      v135 = [CRLWPColumn charIndexForPointWithPinning:layout2 inLayoutTarget:v10, v12];

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

- (BOOL)p_newHeadCharIndex:(unint64_t)index isPastTailCharIndex:(unint64_t)charIndex rep:(id)rep
{
  repCopy = rep;
  v9 = index >= charIndex;
  if (self->_selectionType == 7 && ![(CRLWPEditor *)self->_textEditor wantsParagraphMode])
  {
    v10 = [CRLWPTextKnobTracker p_lineFragmentForCharIndex:index knobTag:11 selectionType:self->_selectionType rep:repCopy];
    range = [repCopy range];
    v13 = 0;
    v14 = charIndex >= range;
    v15 = charIndex - range;
    if (v14 && v15 < v11)
    {
      v13 = [CRLWPTextKnobTracker p_lineFragmentForCharIndex:charIndex knobTag:11 selectionType:self->_selectionType rep:repCopy];
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
      textEditor = [(CRLWPTextKnobTracker *)self textEditor];
      storage = [textEditor storage];
      v19 = [storage isWritingDirectionRightToLeftForParagraphAtCharIndex:index];

      v20 = sub_100212D9C(v10, index);
      v21 = sub_100212D9C(v10, charIndex);
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

- (BOOL)p_newTailCharIndex:(unint64_t)index isPastHeadCharIndex:(unint64_t)charIndex rep:(id)rep
{
  repCopy = rep;
  v9 = index <= charIndex;
  if (self->_selectionType == 7 && ![(CRLWPEditor *)self->_textEditor wantsParagraphMode])
  {
    v10 = [CRLWPTextKnobTracker p_lineFragmentForCharIndex:index knobTag:11 selectionType:self->_selectionType rep:repCopy];
    range = [repCopy range];
    v13 = 0;
    v14 = charIndex >= range;
    v15 = charIndex - range;
    if (v14 && v15 < v11)
    {
      v13 = [CRLWPTextKnobTracker p_lineFragmentForCharIndex:charIndex knobTag:11 selectionType:self->_selectionType rep:repCopy];
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
      textEditor = [(CRLWPTextKnobTracker *)self textEditor];
      storage = [textEditor storage];
      v19 = [storage isWritingDirectionRightToLeftForParagraphAtCharIndex:index];

      v20 = sub_100212D9C(v10, index);
      v21 = sub_100212D9C(v10, charIndex);
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
  knob = [(CRLCanvasKnobTracker *)self knob];
  v5 = [knob tag];

  textEditor = [(CRLWPTextKnobTracker *)self textEditor];
  selection = [textEditor selection];

  if (v4 >= 0.0)
  {
    if (v4 <= 0.0)
    {
      goto LABEL_38;
    }

    if (v5 != 11)
    {
      start2 = [selection end];
      v10 = [(CRLCanvasKnobTracker *)self rep];
      v11 = v10;
      if (v10)
      {
        textEditor4 = [(CRLWPSelection *)v10 columnForCharIndex:start2];
        if (textEditor4)
        {
          v13 = [textEditor4 lineFragmentForCharIndex:start2 knobTag:10 selectionType:{objc_msgSend(selection, "type")}];
          if (v13)
          {
            v14 = *(v13 + 3) < 0 ? &xmmword_101464828 : v13;
            if (*v14 < start2 && start2 == (*v14 + *(v14 + 1)))
            {
              textEditor2 = [(CRLWPTextKnobTracker *)self textEditor];
              storage = [textEditor2 storage];
              v17 = sub_10027E3D4([storage characterAtIndex:start2 - 1]);

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

    start = [selection start];
LABEL_11:
    start2 = start;
    v9 = 0;
    goto LABEL_23;
  }

  if (v5 != 11)
  {
    start = [selection end];
    goto LABEL_11;
  }

  start2 = [selection start];
LABEL_22:
  v9 = 1;
LABEL_23:
  if (start2 != 0x7FFFFFFFFFFFFFFFLL)
  {
    location = [selection range];
    length = v19;
    if (v9)
    {
      textEditor3 = [(CRLWPTextKnobTracker *)self textEditor];
      storage2 = [textEditor3 storage];
      v23 = [storage2 wordAtCharIndex:start2 includePreviousWord:1];
      v25 = v24;

      if (v23 == 0x7FFFFFFFFFFFFFFFLL)
      {
LABEL_36:
        v11 = -[CRLWPSelection initWithType:range:styleInsertionBehavior:caretAffinity:]([CRLWPSelection alloc], "initWithType:range:styleInsertionBehavior:caretAffinity:", [selection type], location, length, objc_msgSend(selection, "styleInsertionBehavior"), objc_msgSend(selection, "caretAffinity"));
        textEditor4 = [(CRLWPTextKnobTracker *)self textEditor];
        editorController = [textEditor4 editorController];
        textEditor5 = [(CRLWPTextKnobTracker *)self textEditor];
        [editorController setSelection:v11 forEditor:textEditor5 withFlags:9];

LABEL_37:
        goto LABEL_38;
      }
    }

    else if (v5 == 11)
    {
      textEditor6 = [(CRLWPTextKnobTracker *)self textEditor];
      v28 = [textEditor6 nextWordFromIndex:start2 forward:1];

      if (v28 < &location[length])
      {
        location += v28 - start2;
        length -= v28 - start2;
        goto LABEL_36;
      }

      textEditor7 = [(CRLWPTextKnobTracker *)self textEditor];
      storage3 = [textEditor7 storage];
      v23 = [storage3 wordAtCharIndex:start2 includePreviousWord:1];
      v25 = v38;

      if (v23 == 0x7FFFFFFFFFFFFFFFLL)
      {
        goto LABEL_36;
      }
    }

    else
    {
      textEditor8 = [(CRLWPTextKnobTracker *)self textEditor];
      v30 = [textEditor8 nextWordFromIndex:start2 forward:0];
      v32 = v31;

      if (v30 != 0x7FFFFFFFFFFFFFFFLL && &v30[v32] > location)
      {
        length = &v30[v32 + length - start2];
        goto LABEL_36;
      }

      textEditor9 = [(CRLWPTextKnobTracker *)self textEditor];
      storage4 = [textEditor9 storage];
      v23 = [storage4 wordAtCharIndex:start2 includePreviousWord:1];
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

- (unint64_t)p_charIndexForKnob:(unint64_t)knob selection:(id)selection
{
  selectionCopy = selection;
  if ([selectionCopy type] == 7)
  {
    if (knob == 11)
    {
      headCharIndex = [selectionCopy headCharIndex];
    }

    else
    {
      headCharIndex = [selectionCopy tailCharIndex];
    }
  }

  else if (knob == 11)
  {
    headCharIndex = [selectionCopy start];
  }

  else
  {
    headCharIndex = [selectionCopy end];
  }

  v7 = headCharIndex;

  return v7;
}

- (_NSRange)adjustSelectionRange:(_NSRange)range forStorage:(id)storage
{
  length = range.length;
  location = range.location;
  result.length = length;
  result.location = location;
  return result;
}

- (void)updateSelectionAfterAutoscroll:(id)autoscroll
{
  autoscrollCopy = autoscroll;
  [autoscrollCopy adjustedUnscaledAutoscrollPoint];
  v5 = v4;
  v7 = v6;
  -[CRLWPTextMagnifierRanged setAutoscrollDirections:](self->_magnifier, "setAutoscrollDirections:", [autoscrollCopy directions]);
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