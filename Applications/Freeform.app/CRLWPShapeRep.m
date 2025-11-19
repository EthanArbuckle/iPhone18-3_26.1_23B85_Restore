@interface CRLWPShapeRep
- (BOOL)allowDraggingShape;
- (BOOL)beginEditingAtPoint:(CGPoint)a3;
- (BOOL)canBeginEditingChildRepOnDoubleTap:(id)a3 ignoreSelectionState:(BOOL)a4;
- (BOOL)canMakePathEditable;
- (BOOL)handleDragOperation:(unint64_t)a3 withDragInfo:(id)a4 atUnscaledPoint:(CGPoint)a5;
- (BOOL)hasTextOverflowGlyph;
- (BOOL)i_currentSelectionPathPreventsEditingChildRepOnDoubleTap:(id)a3;
- (BOOL)isEditingChildRep;
- (BOOL)isReadOnlyAndInstructional;
- (BOOL)scribbleElementIsFocused;
- (BOOL)shouldCreateLockedKnobs;
- (BOOL)shouldCreateSelectionKnobs;
- (BOOL)shouldDelayScribbleFocus;
- (BOOL)shouldHitTestWithFill;
- (BOOL)shouldShowSelectionHighlight;
- (BOOL)wantsToManuallyHandleEditMenuTapAtPoint:(CGPoint)a3;
- (CGPoint)originalAutosizePositionOffset;
- (CGRect)scaledScribbleEditingFrame;
- (CRLContainerInfo)containerInfo;
- (CRLWPDragAndDropHelper)dragAndDropHelper;
- (CRLWPRep)textRep;
- (CRLWPShapeRep)initWithLayout:(id)a3 canvas:(id)a4;
- (NSArray)scribbleCapableElements;
- (UIEdgeInsets)hitToleranceInsetsWithDefaultInsets:(UIEdgeInsets)a3;
- (_TtC8Freeform12CRLWPStorage)storage;
- (_TtC8Freeform12CRLWPStorage)storageForDragDropOperation;
- (double)pParagraphAlignmentOffset;
- (id)additionalRenderablesOverRenderable;
- (id)dragItemsForBeginningDragAtPoint:(CGPoint)a3;
- (id)dynamicResizeDidBegin;
- (id)newSelectionKnobForType:(unint64_t)a3 tag:(unint64_t)a4;
- (id)overlayRenderables;
- (id)p_hyperlinkAtUnscaledPoint:(CGPoint)a3;
- (id)prepareForScribbleBlock;
- (id)resizedGeometryForTransform:(CGAffineTransform *)a3;
- (id)scribbleEditingBlock;
- (id)selectionForDragAndDropNaturalPoint:(CGPoint)a3;
- (id)shapeItem;
- (id)textEditorForDropIntoStorage:(id)a3;
- (unint64_t)dragOperationForDragInfo:(id)a3 atUnscaledPoint:(CGPoint)a4;
- (unint64_t)enabledKnobMask;
- (unint64_t)overflowKnobTag;
- (void)beginEditingAtBeginningOfText;
- (void)beginEditingAtRange:(id)a3;
- (void)dynamicOperationDidEnd;
- (void)handleEditMenuTapAtPoint:(CGPoint)a3 inputType:(int64_t)a4;
- (void)p_prepareForScribble;
- (void)p_resetOverflowGlyphRenderableIfNecessary;
- (void)processChangedProperty:(unint64_t)a3;
- (void)updateChildrenFromLayout;
- (void)willBeginEditingContainedInfo:(id)a3;
- (void)willEndEditingContainedInfo:(id)a3;
@end

@implementation CRLWPShapeRep

- (CRLWPDragAndDropHelper)dragAndDropHelper
{
  if (self->_dragAndDropHelper)
  {
    goto LABEL_2;
  }

  v8 = [(CRLWPShapeRep *)self containedRep];

  if (!v8)
  {
    v7 = [[CRLWPDragAndDropHelper alloc] initWithOwningRep:self];
    goto LABEL_9;
  }

  if (self->_dragAndDropHelper)
  {
LABEL_2:
    v3 = [(CRLWPShapeRep *)self containedRep];
    if (v3)
    {
      v4 = v3;
      v5 = [(CRLCanvasRep *)self layout];
      v6 = [v5 supportsInstructionalText];

      if ((v6 & 1) == 0)
      {
        v7 = 0;
LABEL_9:
        dragAndDropHelper = self->_dragAndDropHelper;
        self->_dragAndDropHelper = v7;
      }
    }
  }

  v10 = self->_dragAndDropHelper;

  return v10;
}

- (CRLWPShapeRep)initWithLayout:(id)a3 canvas:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = objc_opt_class();
  v9 = sub_100014370(v8, v6);

  if (!v9)
  {
    v10 = +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_10131A308();
    }

    v11 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10131A31C(v10, v11);
    }

    if (qword_101AD5A10 != -1)
    {
      sub_10131A3C8();
    }

    v12 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10130EFC0(v12);
    }

    v13 = [NSString stringWithUTF8String:"[CRLWPShapeRep initWithLayout:canvas:]"];
    v14 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/BoardItems/CRLWPShapeRep.m"];
    [CRLAssertionHandler handleFailureInFunction:v13 file:v14 lineNumber:56 isFatal:0 description:"bad layout class"];
  }

  v19.receiver = self;
  v19.super_class = CRLWPShapeRep;
  v15 = [(CRLShapeRep *)&v19 initWithLayout:v6 canvas:v7];
  if (v15)
  {
    v16 = +[NSUUID UUID];
    scribbleIdentifier = v15->_scribbleIdentifier;
    v15->_scribbleIdentifier = v16;
  }

  return v15;
}

- (CRLWPRep)textRep
{
  v3 = objc_opt_class();
  v4 = [(CRLCanvasRep *)self childReps];
  v5 = [v4 crl_firstObjectPassingTest:&stru_10183ECB8];
  v6 = sub_100014370(v3, v5);

  return v6;
}

- (void)processChangedProperty:(unint64_t)a3
{
  v6.receiver = self;
  v6.super_class = CRLWPShapeRep;
  [(CRLShapeRep *)&v6 processChangedProperty:?];
  v5 = [(CRLWPShapeRep *)self textRep];
  [v5 processChangedProperty:a3];
}

- (BOOL)isEditingChildRep
{
  v10 = 0;
  v11 = &v10;
  v12 = 0x2020000000;
  v13 = 0;
  v3 = [(CRLCanvasRep *)self canvas];
  v4 = [v3 isCanvasInteractive];

  if (v4)
  {
    v5 = [(CRLCanvasRep *)self interactiveCanvasController];
    v6 = [v5 editorController];

    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_10012C504;
    v9[3] = &unk_10183ECE0;
    v9[4] = self;
    v9[5] = &v10;
    [v6 enumerateEditorsOnStackUsingBlock:v9];
  }

  v7 = *(v11 + 24);
  _Block_object_dispose(&v10, 8);
  return v7;
}

- (BOOL)shouldCreateSelectionKnobs
{
  if ([(CRLWPShapeRep *)self isEditingChildRep])
  {
    return 0;
  }

  v4.receiver = self;
  v4.super_class = CRLWPShapeRep;
  return [(CRLCanvasRep *)&v4 shouldCreateSelectionKnobs];
}

- (BOOL)shouldCreateLockedKnobs
{
  if ([(CRLWPShapeRep *)self isEditingChildRep])
  {
    return 0;
  }

  v4.receiver = self;
  v4.super_class = CRLWPShapeRep;
  return [(CRLCanvasRep *)&v4 shouldCreateLockedKnobs];
}

- (unint64_t)enabledKnobMask
{
  v3 = [(CRLCanvasRep *)self layout];
  v4 = [v3 autosizes];

  if (v4)
  {
    v5 = [(CRLCanvasRep *)self info];
    v6 = [v5 textIsVertical];

    if (v6)
    {
      return 772;
    }

    else
    {
      return 592;
    }
  }

  else
  {
    v8.receiver = self;
    v8.super_class = CRLWPShapeRep;
    return [(CRLShapeRep *)&v8 enabledKnobMask];
  }
}

- (id)newSelectionKnobForType:(unint64_t)a3 tag:(unint64_t)a4
{
  v7 = [(CRLCanvasRep *)self layout];
  if (![v7 autosizes])
  {

    goto LABEL_7;
  }

  v8 = sub_10034601C(a4);

  if (!v8)
  {
LABEL_7:
    v12.receiver = self;
    v12.super_class = CRLWPShapeRep;
    return [(CRLCanvasRep *)&v12 newSelectionKnobForType:a3 tag:a4];
  }

  v9 = [CRLCanvasKnob alloc];
  y = CGPointZero.y;

  return [(CRLCanvasKnob *)v9 initWithType:3 position:a4 radius:self tag:CGPointZero.x onRep:y, 15.0];
}

- (BOOL)canBeginEditingChildRepOnDoubleTap:(id)a3 ignoreSelectionState:(BOOL)a4
{
  v6 = a3;
  v7 = [(CRLCanvasRep *)self interactiveCanvasController];
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v8 = [v7 editorController];
  v9 = [v8 currentEditors];

  v10 = [v9 countByEnumeratingWithState:&v27 objects:v31 count:16];
  if (v10)
  {
    v11 = v10;
    v26 = a4;
    v12 = v7;
    v13 = v6;
    v14 = *v28;
    while (2)
    {
      for (i = 0; i != v11; i = i + 1)
      {
        if (*v28 != v14)
        {
          objc_enumerationMutation(v9);
        }

        v16 = *(*(&v27 + 1) + 8 * i);
        if ((objc_opt_respondsToSelector() & 1) != 0 && ![v16 canBeginEditingRepOnDoubleTap:self])
        {
          v17 = 0;
          goto LABEL_12;
        }
      }

      v11 = [v9 countByEnumeratingWithState:&v27 objects:v31 count:16];
      if (v11)
      {
        continue;
      }

      break;
    }

    v17 = 1;
LABEL_12:
    v6 = v13;
    v7 = v12;
    a4 = v26;
  }

  else
  {
    v17 = 1;
  }

  v18 = [(CRLCanvasRep *)self interactiveCanvasController];
  v19 = [v18 editingDisabled];

  if (v17 && !a4 && [(CRLWPShapeRep *)self i_currentSelectionPathPreventsEditingChildRepOnDoubleTap:v6])
  {
    v17 = v19;
  }

  if (v19 & 1 | ((v17 & 1) == 0) || a4)
  {
    if (!v17)
    {
      goto LABEL_21;
    }
  }

  else
  {
    v20 = [(CRLCanvasRep *)self layout];
    v21 = [v20 isInTopLevelContainerForEditing];

    if ((v21 & 1) == 0)
    {
LABEL_21:
      LOBYTE(v22) = 0;
      goto LABEL_30;
    }
  }

  v23 = [(CRLWPShapeRep *)self containedRep];
  if (v23 == v6)
  {
    v24 = [(CRLShapeRep *)self shapeLayout];
    if ([v24 pathIsLineSegment])
    {
      LOBYTE(v22) = 0;
    }

    else
    {
      v22 = ![(CRLCanvasRep *)self isLocked];
    }
  }

  else
  {
    LOBYTE(v22) = 0;
  }

LABEL_30:
  return v22;
}

- (void)updateChildrenFromLayout
{
  v13.receiver = self;
  v13.super_class = CRLWPShapeRep;
  [(CRLCanvasRep *)&v13 updateChildrenFromLayout];
  v3 = [(CRLWPShapeRep *)self containedRep];
  v4 = [v3 layout];
  v5 = [(CRLCanvasRep *)self layout];
  v6 = [v5 textLayout];

  if (v4 != v6)
  {
    v7 = +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_10131A3F0();
    }

    v8 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10131A418(v7, v8);
    }

    if (qword_101AD5A10 != -1)
    {
      sub_10131A4E4();
    }

    v9 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10130EFC0(v9);
    }

    v10 = [NSString stringWithUTF8String:"[CRLWPShapeRep updateChildrenFromLayout]"];
    v11 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/BoardItems/CRLWPShapeRep.m"];
    [CRLAssertionHandler handleFailureInFunction:v10 file:v11 lineNumber:180 isFatal:0 description:"expected equality between %{public}s and %{public}s", "self.containedRep.layout", "self.layout.textLayout"];
  }

  v12 = [(CRLWPShapeRep *)self containedRep];
  [v12 updateChildrenFromLayout];
}

- (BOOL)beginEditingAtPoint:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  v6 = [(CRLWPShapeRep *)self shapeItem];
  v7 = [(CRLCanvasRep *)self interactiveCanvasController];
  v8 = [_TtC8Freeform11CRLWPEditor canEditTextIn:v6 using:v7];

  if (v8)
  {
    v9 = [(CRLCanvasRep *)self interactiveCanvasController];
    v10 = [v9 hitRep:{x, y}];
    v11 = [v10 repForSelecting];
    v12 = v11;
    if (!v11 || v11 == self)
    {
      v17 = [(CRLCanvasRep *)self info];
      v18 = [v17 text];
      v19 = [v18 length];

      if (v19)
      {
        v20 = objc_opt_class();
        v21 = [(CRLCanvasRep *)self layout];
        v36 = sub_100014370(v20, v21);

        v22 = objc_opt_class();
        v23 = [v36 textLayout];
        v24 = sub_100014370(v22, v23);

        [v24 convertNaturalPointFromUnscaledCanvas:{x, y}];
        v35 = [v24 closestPositionTo:?];
        v25 = [(CRLWPShapeRep *)self storage];
        v26 = [v25 findRangeOfWordBackwardFromCharIndex:objc_msgSend(v35 expandingRangeToEndOfWord:{"location"), 1}];
        v28 = v27;

        v29 = [(CRLCanvasRep *)self info];
        v30 = [v29 text];
        [(CRLWPShapeRep *)self willBeginEditingContainedInfo:v30];

        v31 = [[_TtC8Freeform12CRLTextRange alloc] initWithRange:v26, v28];
        [(CRLWPShapeRep *)self beginEditingAtRange:v31];
      }

      else
      {
        v32 = [(CRLCanvasRep *)self info];
        v33 = [v32 text];
        [(CRLWPShapeRep *)self willBeginEditingContainedInfo:v33];

        [(CRLWPShapeRep *)self beginEditingAtBeginningOfText];
      }
    }

    else
    {
      v13 = [v9 canvasEditor];
      v14 = [(CRLCanvasRep *)v12 info];
      v15 = [v13 selectionPathWithInfo:v14];
      v16 = [v9 editorController];
      [v16 setSelectionPath:v15];
    }
  }

  return v8;
}

- (void)beginEditingAtBeginningOfText
{
  v5 = [(CRLCanvasRep *)self info];
  v3 = [v5 text];
  v4 = [_TtC8Freeform12CRLTextRange textRangeForStartOf:v3];
  [(CRLWPShapeRep *)self beginEditingAtRange:v4];
}

- (void)beginEditingAtRange:(id)a3
{
  v21 = a3;
  v4 = [(CRLWPShapeRep *)self shapeItem];
  v5 = [(CRLCanvasRep *)self interactiveCanvasController];
  v6 = [_TtC8Freeform11CRLWPEditor canEditTextIn:v4 using:v5];

  if (v6)
  {
    v7 = [(CRLCanvasRep *)self info];
    v8 = [NSSet setWithObject:v7];

    v9 = [(CRLCanvasRep *)self interactiveCanvasController];
    v10 = [v9 selectionModelTranslator];
    v11 = [v10 selectionPathForInfos:v8];

    v12 = [v21 nsRange];
    v14 = v13;
    v15 = [(CRLCanvasRep *)self info];
    v16 = [v15 text];
    v17 = [CRLWPSelection selectionWithRange:v12 type:v14 leadingEdge:7 storage:1, v16];

    v18 = [v11 selectionPathByAppendingOrReplacingMostSpecificSelectionWithSelection:v17];
    v19 = [(CRLCanvasRep *)self interactiveCanvasController];
    v20 = [v19 editorController];
    [v20 setSelectionPath:v18 withFlags:8710];
  }
}

- (BOOL)shouldHitTestWithFill
{
  v3 = [(CRLCanvasRep *)self info];
  if (([v3 isAutogrowingTextBox] & 1) != 0 || (v8.receiver = self, v8.super_class = CRLWPShapeRep, -[CRLShapeRep shouldHitTestWithFill](&v8, "shouldHitTestWithFill")))
  {
    v4 = 1;
  }

  else
  {
    v5 = [(CRLCanvasRep *)self info];
    v6 = [v5 textStorage];
    v4 = [v6 length] != 0;
  }

  return v4;
}

- (BOOL)wantsToManuallyHandleEditMenuTapAtPoint:(CGPoint)a3
{
  v3 = [(CRLWPShapeRep *)self p_hyperlinkAtUnscaledPoint:a3.x, a3.y];
  v4 = v3 != 0;

  return v4;
}

- (void)handleEditMenuTapAtPoint:(CGPoint)a3 inputType:(int64_t)a4
{
  v5 = [(CRLWPShapeRep *)self p_hyperlinkAtUnscaledPoint:a4, a3.x, a3.y];
  v4 = [v5 url];
  if (v4 && [_TtC8Freeform14CRLURLLauncher canOpenURL:v4])
  {
    [_TtC8Freeform14CRLURLLauncher openURL:v4];
  }
}

- (id)p_hyperlinkAtUnscaledPoint:(CGPoint)a3
{
  [(CRLCanvasRep *)self convertNaturalPointFromUnscaledCanvas:a3.x, a3.y];
  v5 = v4;
  v7 = v6;
  v8 = objc_opt_class();
  v9 = [(CRLWPShapeRep *)self textRep];
  v10 = [v9 smartFieldAtPoint:{v5, v7}];
  v11 = sub_100014370(v8, v10);

  return v11;
}

- (void)willBeginEditingContainedInfo:(id)a3
{
  v4 = a3;
  v5 = [(CRLCanvasRep *)self info];
  v6 = [v5 text];

  if (v6 == v4)
  {
    v7 = [(CRLCanvasRep *)self layout];
    [v7 createTextLayout];

    [(CRLWPShapeRep *)self updateChildrenFromLayout];
    [(CRLCanvasRep *)self invalidateKnobs];

    [(CRLShapeRep *)self setNeedsDisplay];
  }
}

- (void)willEndEditingContainedInfo:(id)a3
{
  v4 = [(CRLCanvasRep *)self info];
  v5 = [v4 text];

  [v5 length];
  [(CRLCanvasRep *)self invalidateKnobs];
}

- (BOOL)i_currentSelectionPathPreventsEditingChildRepOnDoubleTap:(id)a3
{
  v4 = [(CRLCanvasRep *)self interactiveCanvasController];
  v5 = [(CRLCanvasRep *)self info];
  v6 = [v4 currentSelectionPathContainsInfo:v5];

  return v6 ^ 1;
}

- (void)p_resetOverflowGlyphRenderableIfNecessary
{
  if (!self->_overflowGlyphRenderable)
  {
    goto LABEL_5;
  }

  v3 = [(CRLCanvasRep *)self canvas];
  [v3 contentsScale];
  v5 = v4;
  [(CRLCanvasRenderable *)self->_overflowGlyphRenderable contentsScale];
  v7 = v6;

  if (v5 != v7)
  {
    [(CRLCanvasRenderable *)self->_overflowGlyphRenderable setDelegate:0];
    overflowGlyphRenderable = self->_overflowGlyphRenderable;
    self->_overflowGlyphRenderable = 0;
  }

  if (!self->_overflowGlyphRenderable)
  {
LABEL_5:
    v12 = [(CRLWPShapeRep *)self p_overflowKnobImage];
    v9 = +[CRLCanvasRenderable renderable];
    v10 = self->_overflowGlyphRenderable;
    self->_overflowGlyphRenderable = v9;

    v11 = [(CRLCanvasRep *)self canvas];
    [v11 contentsScale];
    -[CRLCanvasRenderable setContents:](self->_overflowGlyphRenderable, "setContents:", [v12 CGImageForContentsScale:?]);

    [v12 size];
    [(CRLCanvasRenderable *)self->_overflowGlyphRenderable setBounds:sub_10011ECB4()];
    [(CRLCanvasRenderable *)self->_overflowGlyphRenderable setDelegate:self];
  }
}

- (unint64_t)overflowKnobTag
{
  v2 = [(CRLCanvasRep *)self info];
  if ([v2 textIsVertical])
  {
    v3 = 4;
  }

  else
  {
    v3 = 8;
  }

  return v3;
}

- (BOOL)hasTextOverflowGlyph
{
  v3 = [(CRLCanvasRep *)self canvas];
  if ([v3 shouldShowTextOverflowGlyphs] && !-[CRLShapeRep isEditingPath](self, "isEditingPath"))
  {
    v5 = [(CRLWPShapeRep *)self textRep];
    if ([v5 isOverflowing])
    {
      v7.receiver = self;
      v7.super_class = CRLWPShapeRep;
      v4 = [(CRLShapeRep *)&v7 shouldShowKnobs];
    }

    else
    {
      v4 = 0;
    }
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (BOOL)shouldShowSelectionHighlight
{
  if ([(CRLWPShapeRep *)self isEditingChildRep])
  {
    return 0;
  }

  v4.receiver = self;
  v4.super_class = CRLWPShapeRep;
  return [(CRLShapeRep *)&v4 shouldShowSelectionHighlight];
}

- (id)overlayRenderables
{
  v3 = [(CRLWPShapeRep *)self overflowKnobTag];
  v4 = [(CRLCanvasRep *)self knobForTag:v3];
  v5 = [(CRLWPShapeRep *)self hasTextOverflowGlyph];
  v6 = [v4 renderable];
  [v6 setHidden:v5];

  v34.receiver = self;
  v34.super_class = CRLWPShapeRep;
  v7 = [(CRLShapeRep *)&v34 overlayRenderables];
  if ([(CRLWPShapeRep *)self hasTextOverflowGlyph]&& [(CRLCanvasRep *)self isSelectedIgnoringLocking])
  {
    [(CRLWPShapeRep *)self p_resetOverflowGlyphRenderableIfNecessary];
    v8 = [(CRLCanvasRep *)self interactiveCanvasController];
    [(CRLCanvasRep *)self boundsForStandardKnobs];
    [(CRLCanvasRep *)self convertNaturalPointToUnscaledCanvas:sub_100345F44(v3, v9, v10, v11, v12)];
    [v8 convertUnscaledToBoundsPoint:?];
    v14 = v13;
    v16 = v15;
    [(CRLCanvasRenderable *)self->_overflowGlyphRenderable bounds];
    v21 = sub_100120414(v17, v18, v19, v20);
    v22 = sub_10011F31C(v14, v16, v21);
    v24 = v23;
    v25 = [v8 canvas];
    [v25 contentsScale];
    v27 = sub_10012218C(v22, v24, v26);
    v29 = sub_10011F334(v27, v28, v21);
    v31 = v30;

    [(CRLCanvasRenderable *)self->_overflowGlyphRenderable setPosition:v29, v31];
    v32 = [v7 arrayByAddingObject:self->_overflowGlyphRenderable];

    v7 = v32;
  }

  return v7;
}

- (id)additionalRenderablesOverRenderable
{
  v35.receiver = self;
  v35.super_class = CRLWPShapeRep;
  v3 = [(CRLShapeRep *)&v35 additionalRenderablesOverRenderable];
  if ([(CRLWPShapeRep *)self hasTextOverflowGlyph]&& ![(CRLCanvasRep *)self isSelectedIgnoringLocking])
  {
    [(CRLWPShapeRep *)self p_resetOverflowGlyphRenderableIfNecessary];
    v4 = [(CRLCanvasRep *)self interactiveCanvasController];
    v5 = [(CRLWPShapeRep *)self overflowKnobTag];
    [(CRLCanvasRep *)self boundsForStandardKnobs];
    [(CRLCanvasRep *)self convertNaturalPointToUnscaledCanvas:sub_100345F44(v5, v6, v7, v8, v9)];
    [v4 convertUnscaledToBoundsPoint:?];
    v11 = v10;
    v13 = v12;
    [(CRLCanvasRenderable *)self->_overflowGlyphRenderable bounds];
    v18 = sub_100120414(v14, v15, v16, v17);
    v19 = sub_10011F31C(v11, v13, v18);
    v21 = v20;
    v22 = [(CRLCanvasRep *)self parentRep];

    if (v22)
    {
      v23 = [(CRLCanvasRep *)self parentRep];
      [v23 layerFrameInScaledCanvas];
      v19 = sub_10011F31C(v19, v21, v24);
      v21 = v25;
    }

    v26 = [v4 canvas];
    [v26 contentsScale];
    v28 = sub_10012218C(v19, v21, v27);
    v30 = sub_10011F334(v28, v29, v18);
    v32 = v31;

    [(CRLCanvasRenderable *)self->_overflowGlyphRenderable setPosition:v30, v32];
    v33 = [v3 arrayByAddingObject:self->_overflowGlyphRenderable];

    v3 = v33;
  }

  return v3;
}

- (double)pParagraphAlignmentOffset
{
  v3 = [(CRLWPShapeRep *)self shapeItem];
  v4 = [v3 text];
  v5 = [v4 paragraphStyleAtParIndex:0 effectiveRange:0];

  v6 = [v5 intValueForProperty:29];
  if (v6 == 1)
  {
    v7 = 1.0;
  }

  else if (v6 == 2)
  {
    v7 = 0.5;
  }

  else
  {
    v7 = 0.0;
    if (v6 == 4)
    {
      v8 = [(CRLWPShapeRep *)self shapeItem];
      v9 = [v8 text];
      v10 = [v9 isWritingDirectionRightToLeftForParagraphAtParIndex:0];

      if (v10)
      {
        v7 = 1.0;
      }

      else
      {
        v7 = 0.0;
      }
    }
  }

  return v7;
}

- (id)dynamicResizeDidBegin
{
  v11.receiver = self;
  v11.super_class = CRLWPShapeRep;
  v3 = [(CRLShapeRep *)&v11 dynamicResizeDidBegin];
  v4 = [(CRLCanvasRep *)self layout];
  if ([v4 autosizes])
  {
    v5 = [(CRLCanvasRep *)self info];
    v6 = [v5 geometry];
    v7 = [v6 widthValid];

    if (v7)
    {
      goto LABEL_5;
    }

    v4 = [(CRLCanvasRep *)self layout];
    [v4 autosizePositionOffsetForFixedWidth:1 height:1];
    self->_originalAutosizePositionOffset.x = v8;
    self->_originalAutosizePositionOffset.y = v9;
  }

LABEL_5:

  return v3;
}

- (void)dynamicOperationDidEnd
{
  v3.receiver = self;
  v3.super_class = CRLWPShapeRep;
  [(CRLShapeRep *)&v3 dynamicOperationDidEnd];
  [(CRLCanvasRep *)self recursivelyPerformSelectorIfImplemented:"invalidateKnobs"];
}

- (id)resizedGeometryForTransform:(CGAffineTransform *)a3
{
  v5 = [(CRLCanvasRep *)self info];
  v6 = [v5 geometry];

  memset(&v38, 0, sizeof(v38));
  v7 = [(CRLCanvasRep *)self layout];
  v8 = [v7 originalPureGeometry];
  v9 = v8;
  if (v8)
  {
    [v8 fullTransform];
  }

  else
  {
    memset(&t1, 0, sizeof(t1));
  }

  v10 = *&a3->c;
  *&t2.a = *&a3->a;
  *&t2.c = v10;
  *&t2.tx = *&a3->tx;
  CGAffineTransformConcat(&v38, &t1, &t2);

  v11 = [(CRLCanvasRep *)self info];
  v12 = [v11 textIsVertical];

  if (v12)
  {
    if ([v6 widthValid])
    {
      goto LABEL_26;
    }

    v13 = [(CRLCanvasRep *)self info];
    v14 = [v13 verticalAlignment];

    v15 = 0.5;
    v16 = 0.0;
    if (v14 == 2)
    {
      v15 = 0.0;
    }

    if (v14)
    {
      v17 = v15;
    }

    else
    {
      v17 = 1.0;
    }

    if (-[CRLCanvasRep isBeingRotated](self, "isBeingRotated", v15) && ([v6 heightValid] & 1) == 0)
    {
      [(CRLWPShapeRep *)self pParagraphAlignmentOffset];
      v16 = v18;
    }

    memset(&t1, 0, sizeof(t1));
    v19 = v17;
    v20 = v16;
  }

  else
  {
    if ([v6 heightValid])
    {
      goto LABEL_26;
    }

    v21 = [(CRLCanvasRep *)self info];
    v22 = [v21 verticalAlignment];

    v23 = 0.5;
    if (v22 == 2)
    {
      v23 = 1.0;
    }

    v24 = 0.0;
    if (v22)
    {
      v25 = v23;
    }

    else
    {
      v25 = 0.0;
    }

    if (-[CRLCanvasRep isBeingRotated](self, "isBeingRotated", v23) && ([v6 widthValid] & 1) == 0)
    {
      [(CRLWPShapeRep *)self pParagraphAlignmentOffset];
      v24 = v26;
    }

    memset(&t1, 0, sizeof(t1));
    v19 = v24;
    v20 = v25;
  }

  CGAffineTransformMakeTranslation(&t1, v19, v20);
  v35 = t1;
  v34 = v38;
  CGAffineTransformConcat(&t2, &v35, &v34);
  v38 = t2;
LABEL_26:
  v27 = [v6 widthValid];
  v28 = [v6 heightValid];
  v29 = [(CRLCanvasRep *)self isBeingRotated];
  v30 = v12 ^ 1 | v27;
  v31 = v12 | v28;
  if (v29)
  {
    v30 = v27;
    v31 = v28;
  }

  t1 = v38;
  v32 = [CRLCanvasInfoGeometry geometryFromFullTransform:&t1 widthValid:v30 & 1 heightValid:v31 & 1];

  return v32;
}

- (BOOL)canMakePathEditable
{
  v3 = [(CRLCanvasRep *)self info];
  v4 = [v3 isAutogrowingTextBox];

  if (v4)
  {
    v5 = [(CRLCanvasRep *)self info];
    v6 = [v5 text];

    v7 = [v6 length] != 0;
  }

  else
  {
    v9.receiver = self;
    v9.super_class = CRLWPShapeRep;
    return [(CRLShapeRep *)&v9 canMakePathEditable];
  }

  return v7;
}

- (CRLContainerInfo)containerInfo
{
  v2 = [(CRLCanvasRep *)self info];
  v9 = sub_1003035DC(v2, 1, v3, v4, v5, v6, v7, v8, &OBJC_PROTOCOL___CRLContainerInfo);

  return v9;
}

- (id)shapeItem
{
  v3 = objc_opt_class();
  v4 = [(CRLCanvasRep *)self info];
  v5 = sub_100014370(v3, v4);

  return v5;
}

- (_TtC8Freeform12CRLWPStorage)storageForDragDropOperation
{
  v2 = [(CRLCanvasRep *)self info];
  if (sub_10012602C(v2))
  {
    v3 = 0;
  }

  else
  {
    v3 = [v2 textStorage];
  }

  return v3;
}

- (unint64_t)dragOperationForDragInfo:(id)a3 atUnscaledPoint:(CGPoint)a4
{
  y = a4.y;
  x = a4.x;
  v7 = a3;
  v12.receiver = self;
  v12.super_class = CRLWPShapeRep;
  v8 = [(CRLShapeRep *)&v12 dragOperationForDragInfo:v7 atUnscaledPoint:x, y];
  if (!v8)
  {
    v9 = [(CRLWPShapeRep *)self textRep];

    if (v9)
    {
      v8 = 0;
    }

    else
    {
      v10 = [(CRLWPShapeRep *)self dragAndDropHelper];
      v8 = [v10 dragOperationForDragInfo:v7 atUnscaledPoint:{x, y}];
    }
  }

  return v8;
}

- (BOOL)handleDragOperation:(unint64_t)a3 withDragInfo:(id)a4 atUnscaledPoint:(CGPoint)a5
{
  y = a5.y;
  x = a5.x;
  v9 = a4;
  v18.receiver = self;
  v18.super_class = CRLWPShapeRep;
  if ([(CRLShapeRep *)&v18 dragOperationForDragInfo:v9 atUnscaledPoint:x, y])
  {
    v17.receiver = self;
    v17.super_class = CRLWPShapeRep;
    v10 = [(CRLShapeRep *)&v17 handleDragOperation:a3 withDragInfo:v9 atUnscaledPoint:x, y];
  }

  else
  {
    v11 = [(CRLWPShapeRep *)self textRep];
    if (v11 && (v12 = v11, -[CRLCanvasRep layout](self, "layout"), v13 = objc_claimAutoreleasedReturnValue(), v14 = [v13 supportsInstructionalText], v13, v12, !v14))
    {
      v10 = 0;
    }

    else
    {
      v15 = [(CRLWPShapeRep *)self dragAndDropHelper];
      v10 = [v15 handleDragOperation:a3 withDragInfo:v9 atUnscaledPoint:{x, y}];
    }
  }

  return v10;
}

- (_TtC8Freeform12CRLWPStorage)storage
{
  v2 = [(CRLCanvasRep *)self info];
  v3 = [v2 textStorage];

  return v3;
}

- (id)selectionForDragAndDropNaturalPoint:(CGPoint)a3
{
  v4 = [(CRLCanvasRep *)self interactiveCanvasController:a3.x];
  v5 = [(CRLCanvasRep *)self info];
  v6 = [v5 textStorage];
  v7 = [v4 wpSelectionClassForStorage:v6];

  return [v7 selectionWithRange:{0, 0}];
}

- (id)textEditorForDropIntoStorage:(id)a3
{
  v4 = a3;
  v5 = objc_opt_class();
  v6 = objc_opt_class();
  v7 = [v4 parentInfo];

  v8 = sub_100014370(v6, v7);

  v9 = [v5 alloc];
  v10 = [(CRLCanvasRep *)self interactiveCanvasController];
  v11 = [v10 editingCoordinator];
  v12 = [(CRLCanvasRep *)self interactiveCanvasController];
  v13 = [v9 initWithEditingCoordinator:v11 enclosingShape:v8 icc:v12];

  return v13;
}

- (NSArray)scribbleCapableElements
{
  v3 = [(CRLWPShapeRep *)self containedRep];
  if (v3 && (v4 = v3, [(CRLWPShapeRep *)self containedRep], v5 = objc_claimAutoreleasedReturnValue(), v6 = [(CRLWPShapeRep *)self canBeginEditingChildRepOnDoubleTap:v5 ignoreSelectionState:1], v5, v4, !v6))
  {
    v7 = &__NSArray0__struct;
  }

  else
  {
    v9 = self;
    v7 = [NSArray arrayWithObjects:&v9 count:1];
  }

  return v7;
}

- (void)p_prepareForScribble
{
  v3 = [(CRLWPShapeRep *)self containedRep];

  if (!v3)
  {
    v4 = [(CRLCanvasRep *)self layout];
    [v4 createTextLayoutForScribble:1];

    [(CRLWPShapeRep *)self updateChildrenFromLayout];
    [(CRLCanvasRep *)self invalidateKnobs];

    [(CRLShapeRep *)self setNeedsDisplay];
  }
}

- (id)prepareForScribbleBlock
{
  [(CRLWPShapeRep *)self p_prepareForScribble];
  v3 = [(CRLWPShapeRep *)self containedRep];
  v4 = [v3 prepareForScribbleBlock];

  return v4;
}

- (id)scribbleEditingBlock
{
  [(CRLWPShapeRep *)self p_prepareForScribble];
  v3 = [(CRLWPShapeRep *)self containedRep];
  v4 = [v3 scribbleEditingBlock];

  return v4;
}

- (CGRect)scaledScribbleEditingFrame
{
  [(CRLWPShapeRep *)self p_prepareForScribble];
  v3 = [(CRLWPShapeRep *)self containedRep];
  [v3 scaledScribbleEditingFrame];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;

  v12 = v5;
  v13 = v7;
  v14 = v9;
  v15 = v11;
  result.size.height = v15;
  result.size.width = v14;
  result.origin.y = v13;
  result.origin.x = v12;
  return result;
}

- (BOOL)shouldDelayScribbleFocus
{
  [(CRLWPShapeRep *)self p_prepareForScribble];
  v3 = [(CRLWPShapeRep *)self containedRep];
  v4 = [v3 shouldDelayScribbleFocus];

  return v4;
}

- (BOOL)scribbleElementIsFocused
{
  [(CRLWPShapeRep *)self p_prepareForScribble];
  v3 = [(CRLWPShapeRep *)self containedRep];
  v4 = [v3 scribbleElementIsFocused];

  return v4;
}

- (UIEdgeInsets)hitToleranceInsetsWithDefaultInsets:(UIEdgeInsets)a3
{
  right = a3.right;
  bottom = a3.bottom;
  left = a3.left;
  top = a3.top;
  [(CRLWPShapeRep *)self p_prepareForScribble];
  v8 = [(CRLWPShapeRep *)self containedRep];
  [v8 hitToleranceInsetsWithDefaultInsets:{top, left, bottom, right}];
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v16 = v15;

  v17 = v10;
  v18 = v12;
  v19 = v14;
  v20 = v16;
  result.right = v20;
  result.bottom = v19;
  result.left = v18;
  result.top = v17;
  return result;
}

- (id)dragItemsForBeginningDragAtPoint:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  if ([(CRLWPShapeRep *)self allowDraggingShape])
  {
    v8.receiver = self;
    v8.super_class = CRLWPShapeRep;
    v6 = [(CRLCanvasRep *)&v8 dragItemsForBeginningDragAtPoint:x, y];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (BOOL)allowDraggingShape
{
  v3 = [(CRLWPShapeRep *)self containedRep];
  v4 = v3;
  if (v3)
  {
    if ([v3 isBeingEdited])
    {
      LOBYTE(v5) = 0;
    }

    else
    {
      v5 = ![(CRLWPShapeRep *)self isReadOnlyAndInstructional];
    }
  }

  else
  {
    LOBYTE(v5) = 1;
  }

  return v5;
}

- (BOOL)isReadOnlyAndInstructional
{
  v3 = [(CRLCanvasRep *)self interactiveCanvasController];
  if ([v3 editingDisabled])
  {
    v4 = [(CRLWPShapeRep *)self containedRep];
    v5 = [v4 layout];
    v6 = [v5 isInstructional];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (CGPoint)originalAutosizePositionOffset
{
  x = self->_originalAutosizePositionOffset.x;
  y = self->_originalAutosizePositionOffset.y;
  result.y = y;
  result.x = x;
  return result;
}

@end