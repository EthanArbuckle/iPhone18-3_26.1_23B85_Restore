@interface CRLWPShapeRep
- (BOOL)allowDraggingShape;
- (BOOL)beginEditingAtPoint:(CGPoint)point;
- (BOOL)canBeginEditingChildRepOnDoubleTap:(id)tap ignoreSelectionState:(BOOL)state;
- (BOOL)canMakePathEditable;
- (BOOL)handleDragOperation:(unint64_t)operation withDragInfo:(id)info atUnscaledPoint:(CGPoint)point;
- (BOOL)hasTextOverflowGlyph;
- (BOOL)i_currentSelectionPathPreventsEditingChildRepOnDoubleTap:(id)tap;
- (BOOL)isEditingChildRep;
- (BOOL)isReadOnlyAndInstructional;
- (BOOL)scribbleElementIsFocused;
- (BOOL)shouldCreateLockedKnobs;
- (BOOL)shouldCreateSelectionKnobs;
- (BOOL)shouldDelayScribbleFocus;
- (BOOL)shouldHitTestWithFill;
- (BOOL)shouldShowSelectionHighlight;
- (BOOL)wantsToManuallyHandleEditMenuTapAtPoint:(CGPoint)point;
- (CGPoint)originalAutosizePositionOffset;
- (CGRect)scaledScribbleEditingFrame;
- (CRLContainerInfo)containerInfo;
- (CRLWPDragAndDropHelper)dragAndDropHelper;
- (CRLWPRep)textRep;
- (CRLWPShapeRep)initWithLayout:(id)layout canvas:(id)canvas;
- (NSArray)scribbleCapableElements;
- (UIEdgeInsets)hitToleranceInsetsWithDefaultInsets:(UIEdgeInsets)insets;
- (_TtC8Freeform12CRLWPStorage)storage;
- (_TtC8Freeform12CRLWPStorage)storageForDragDropOperation;
- (double)pParagraphAlignmentOffset;
- (id)additionalRenderablesOverRenderable;
- (id)dragItemsForBeginningDragAtPoint:(CGPoint)point;
- (id)dynamicResizeDidBegin;
- (id)newSelectionKnobForType:(unint64_t)type tag:(unint64_t)tag;
- (id)overlayRenderables;
- (id)p_hyperlinkAtUnscaledPoint:(CGPoint)point;
- (id)prepareForScribbleBlock;
- (id)resizedGeometryForTransform:(CGAffineTransform *)transform;
- (id)scribbleEditingBlock;
- (id)selectionForDragAndDropNaturalPoint:(CGPoint)point;
- (id)shapeItem;
- (id)textEditorForDropIntoStorage:(id)storage;
- (unint64_t)dragOperationForDragInfo:(id)info atUnscaledPoint:(CGPoint)point;
- (unint64_t)enabledKnobMask;
- (unint64_t)overflowKnobTag;
- (void)beginEditingAtBeginningOfText;
- (void)beginEditingAtRange:(id)range;
- (void)dynamicOperationDidEnd;
- (void)handleEditMenuTapAtPoint:(CGPoint)point inputType:(int64_t)type;
- (void)p_prepareForScribble;
- (void)p_resetOverflowGlyphRenderableIfNecessary;
- (void)processChangedProperty:(unint64_t)property;
- (void)updateChildrenFromLayout;
- (void)willBeginEditingContainedInfo:(id)info;
- (void)willEndEditingContainedInfo:(id)info;
@end

@implementation CRLWPShapeRep

- (CRLWPDragAndDropHelper)dragAndDropHelper
{
  if (self->_dragAndDropHelper)
  {
    goto LABEL_2;
  }

  containedRep = [(CRLWPShapeRep *)self containedRep];

  if (!containedRep)
  {
    v7 = [[CRLWPDragAndDropHelper alloc] initWithOwningRep:self];
    goto LABEL_9;
  }

  if (self->_dragAndDropHelper)
  {
LABEL_2:
    containedRep2 = [(CRLWPShapeRep *)self containedRep];
    if (containedRep2)
    {
      v4 = containedRep2;
      layout = [(CRLCanvasRep *)self layout];
      supportsInstructionalText = [layout supportsInstructionalText];

      if ((supportsInstructionalText & 1) == 0)
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

- (CRLWPShapeRep)initWithLayout:(id)layout canvas:(id)canvas
{
  layoutCopy = layout;
  canvasCopy = canvas;
  v8 = objc_opt_class();
  v9 = sub_100014370(v8, layoutCopy);

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
  v15 = [(CRLShapeRep *)&v19 initWithLayout:layoutCopy canvas:canvasCopy];
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
  childReps = [(CRLCanvasRep *)self childReps];
  v5 = [childReps crl_firstObjectPassingTest:&stru_10183ECB8];
  v6 = sub_100014370(v3, v5);

  return v6;
}

- (void)processChangedProperty:(unint64_t)property
{
  v6.receiver = self;
  v6.super_class = CRLWPShapeRep;
  [(CRLShapeRep *)&v6 processChangedProperty:?];
  textRep = [(CRLWPShapeRep *)self textRep];
  [textRep processChangedProperty:property];
}

- (BOOL)isEditingChildRep
{
  v10 = 0;
  v11 = &v10;
  v12 = 0x2020000000;
  v13 = 0;
  canvas = [(CRLCanvasRep *)self canvas];
  isCanvasInteractive = [canvas isCanvasInteractive];

  if (isCanvasInteractive)
  {
    interactiveCanvasController = [(CRLCanvasRep *)self interactiveCanvasController];
    editorController = [interactiveCanvasController editorController];

    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_10012C504;
    v9[3] = &unk_10183ECE0;
    v9[4] = self;
    v9[5] = &v10;
    [editorController enumerateEditorsOnStackUsingBlock:v9];
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
  layout = [(CRLCanvasRep *)self layout];
  autosizes = [layout autosizes];

  if (autosizes)
  {
    info = [(CRLCanvasRep *)self info];
    textIsVertical = [info textIsVertical];

    if (textIsVertical)
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

- (id)newSelectionKnobForType:(unint64_t)type tag:(unint64_t)tag
{
  layout = [(CRLCanvasRep *)self layout];
  if (![layout autosizes])
  {

    goto LABEL_7;
  }

  v8 = sub_10034601C(tag);

  if (!v8)
  {
LABEL_7:
    v12.receiver = self;
    v12.super_class = CRLWPShapeRep;
    return [(CRLCanvasRep *)&v12 newSelectionKnobForType:type tag:tag];
  }

  v9 = [CRLCanvasKnob alloc];
  y = CGPointZero.y;

  return [(CRLCanvasKnob *)v9 initWithType:3 position:tag radius:self tag:CGPointZero.x onRep:y, 15.0];
}

- (BOOL)canBeginEditingChildRepOnDoubleTap:(id)tap ignoreSelectionState:(BOOL)state
{
  tapCopy = tap;
  interactiveCanvasController = [(CRLCanvasRep *)self interactiveCanvasController];
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  editorController = [interactiveCanvasController editorController];
  currentEditors = [editorController currentEditors];

  v10 = [currentEditors countByEnumeratingWithState:&v27 objects:v31 count:16];
  if (v10)
  {
    v11 = v10;
    stateCopy = state;
    v12 = interactiveCanvasController;
    v13 = tapCopy;
    v14 = *v28;
    while (2)
    {
      for (i = 0; i != v11; i = i + 1)
      {
        if (*v28 != v14)
        {
          objc_enumerationMutation(currentEditors);
        }

        v16 = *(*(&v27 + 1) + 8 * i);
        if ((objc_opt_respondsToSelector() & 1) != 0 && ![v16 canBeginEditingRepOnDoubleTap:self])
        {
          v17 = 0;
          goto LABEL_12;
        }
      }

      v11 = [currentEditors countByEnumeratingWithState:&v27 objects:v31 count:16];
      if (v11)
      {
        continue;
      }

      break;
    }

    v17 = 1;
LABEL_12:
    tapCopy = v13;
    interactiveCanvasController = v12;
    state = stateCopy;
  }

  else
  {
    v17 = 1;
  }

  interactiveCanvasController2 = [(CRLCanvasRep *)self interactiveCanvasController];
  editingDisabled = [interactiveCanvasController2 editingDisabled];

  if (v17 && !state && [(CRLWPShapeRep *)self i_currentSelectionPathPreventsEditingChildRepOnDoubleTap:tapCopy])
  {
    v17 = editingDisabled;
  }

  if (editingDisabled & 1 | ((v17 & 1) == 0) || state)
  {
    if (!v17)
    {
      goto LABEL_21;
    }
  }

  else
  {
    layout = [(CRLCanvasRep *)self layout];
    isInTopLevelContainerForEditing = [layout isInTopLevelContainerForEditing];

    if ((isInTopLevelContainerForEditing & 1) == 0)
    {
LABEL_21:
      LOBYTE(v22) = 0;
      goto LABEL_30;
    }
  }

  containedRep = [(CRLWPShapeRep *)self containedRep];
  if (containedRep == tapCopy)
  {
    shapeLayout = [(CRLShapeRep *)self shapeLayout];
    if ([shapeLayout pathIsLineSegment])
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
  containedRep = [(CRLWPShapeRep *)self containedRep];
  layout = [containedRep layout];
  layout2 = [(CRLCanvasRep *)self layout];
  textLayout = [layout2 textLayout];

  if (layout != textLayout)
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

  containedRep2 = [(CRLWPShapeRep *)self containedRep];
  [containedRep2 updateChildrenFromLayout];
}

- (BOOL)beginEditingAtPoint:(CGPoint)point
{
  y = point.y;
  x = point.x;
  shapeItem = [(CRLWPShapeRep *)self shapeItem];
  interactiveCanvasController = [(CRLCanvasRep *)self interactiveCanvasController];
  v8 = [_TtC8Freeform11CRLWPEditor canEditTextIn:shapeItem using:interactiveCanvasController];

  if (v8)
  {
    interactiveCanvasController2 = [(CRLCanvasRep *)self interactiveCanvasController];
    v10 = [interactiveCanvasController2 hitRep:{x, y}];
    repForSelecting = [v10 repForSelecting];
    v12 = repForSelecting;
    if (!repForSelecting || repForSelecting == self)
    {
      info = [(CRLCanvasRep *)self info];
      text = [info text];
      v19 = [text length];

      if (v19)
      {
        v20 = objc_opt_class();
        layout = [(CRLCanvasRep *)self layout];
        v36 = sub_100014370(v20, layout);

        v22 = objc_opt_class();
        textLayout = [v36 textLayout];
        v24 = sub_100014370(v22, textLayout);

        [v24 convertNaturalPointFromUnscaledCanvas:{x, y}];
        v35 = [v24 closestPositionTo:?];
        storage = [(CRLWPShapeRep *)self storage];
        v26 = [storage findRangeOfWordBackwardFromCharIndex:objc_msgSend(v35 expandingRangeToEndOfWord:{"location"), 1}];
        v28 = v27;

        info2 = [(CRLCanvasRep *)self info];
        text2 = [info2 text];
        [(CRLWPShapeRep *)self willBeginEditingContainedInfo:text2];

        v31 = [[_TtC8Freeform12CRLTextRange alloc] initWithRange:v26, v28];
        [(CRLWPShapeRep *)self beginEditingAtRange:v31];
      }

      else
      {
        info3 = [(CRLCanvasRep *)self info];
        text3 = [info3 text];
        [(CRLWPShapeRep *)self willBeginEditingContainedInfo:text3];

        [(CRLWPShapeRep *)self beginEditingAtBeginningOfText];
      }
    }

    else
    {
      canvasEditor = [interactiveCanvasController2 canvasEditor];
      info4 = [(CRLCanvasRep *)v12 info];
      v15 = [canvasEditor selectionPathWithInfo:info4];
      editorController = [interactiveCanvasController2 editorController];
      [editorController setSelectionPath:v15];
    }
  }

  return v8;
}

- (void)beginEditingAtBeginningOfText
{
  info = [(CRLCanvasRep *)self info];
  text = [info text];
  v4 = [_TtC8Freeform12CRLTextRange textRangeForStartOf:text];
  [(CRLWPShapeRep *)self beginEditingAtRange:v4];
}

- (void)beginEditingAtRange:(id)range
{
  rangeCopy = range;
  shapeItem = [(CRLWPShapeRep *)self shapeItem];
  interactiveCanvasController = [(CRLCanvasRep *)self interactiveCanvasController];
  v6 = [_TtC8Freeform11CRLWPEditor canEditTextIn:shapeItem using:interactiveCanvasController];

  if (v6)
  {
    info = [(CRLCanvasRep *)self info];
    v8 = [NSSet setWithObject:info];

    interactiveCanvasController2 = [(CRLCanvasRep *)self interactiveCanvasController];
    selectionModelTranslator = [interactiveCanvasController2 selectionModelTranslator];
    v11 = [selectionModelTranslator selectionPathForInfos:v8];

    nsRange = [rangeCopy nsRange];
    v14 = v13;
    info2 = [(CRLCanvasRep *)self info];
    text = [info2 text];
    v17 = [CRLWPSelection selectionWithRange:nsRange type:v14 leadingEdge:7 storage:1, text];

    v18 = [v11 selectionPathByAppendingOrReplacingMostSpecificSelectionWithSelection:v17];
    interactiveCanvasController3 = [(CRLCanvasRep *)self interactiveCanvasController];
    editorController = [interactiveCanvasController3 editorController];
    [editorController setSelectionPath:v18 withFlags:8710];
  }
}

- (BOOL)shouldHitTestWithFill
{
  info = [(CRLCanvasRep *)self info];
  if (([info isAutogrowingTextBox] & 1) != 0 || (v8.receiver = self, v8.super_class = CRLWPShapeRep, -[CRLShapeRep shouldHitTestWithFill](&v8, "shouldHitTestWithFill")))
  {
    v4 = 1;
  }

  else
  {
    info2 = [(CRLCanvasRep *)self info];
    textStorage = [info2 textStorage];
    v4 = [textStorage length] != 0;
  }

  return v4;
}

- (BOOL)wantsToManuallyHandleEditMenuTapAtPoint:(CGPoint)point
{
  v3 = [(CRLWPShapeRep *)self p_hyperlinkAtUnscaledPoint:point.x, point.y];
  v4 = v3 != 0;

  return v4;
}

- (void)handleEditMenuTapAtPoint:(CGPoint)point inputType:(int64_t)type
{
  v5 = [(CRLWPShapeRep *)self p_hyperlinkAtUnscaledPoint:type, point.x, point.y];
  v4 = [v5 url];
  if (v4 && [_TtC8Freeform14CRLURLLauncher canOpenURL:v4])
  {
    [_TtC8Freeform14CRLURLLauncher openURL:v4];
  }
}

- (id)p_hyperlinkAtUnscaledPoint:(CGPoint)point
{
  [(CRLCanvasRep *)self convertNaturalPointFromUnscaledCanvas:point.x, point.y];
  v5 = v4;
  v7 = v6;
  v8 = objc_opt_class();
  textRep = [(CRLWPShapeRep *)self textRep];
  v10 = [textRep smartFieldAtPoint:{v5, v7}];
  v11 = sub_100014370(v8, v10);

  return v11;
}

- (void)willBeginEditingContainedInfo:(id)info
{
  infoCopy = info;
  info = [(CRLCanvasRep *)self info];
  text = [info text];

  if (text == infoCopy)
  {
    layout = [(CRLCanvasRep *)self layout];
    [layout createTextLayout];

    [(CRLWPShapeRep *)self updateChildrenFromLayout];
    [(CRLCanvasRep *)self invalidateKnobs];

    [(CRLShapeRep *)self setNeedsDisplay];
  }
}

- (void)willEndEditingContainedInfo:(id)info
{
  info = [(CRLCanvasRep *)self info];
  text = [info text];

  [text length];
  [(CRLCanvasRep *)self invalidateKnobs];
}

- (BOOL)i_currentSelectionPathPreventsEditingChildRepOnDoubleTap:(id)tap
{
  interactiveCanvasController = [(CRLCanvasRep *)self interactiveCanvasController];
  info = [(CRLCanvasRep *)self info];
  v6 = [interactiveCanvasController currentSelectionPathContainsInfo:info];

  return v6 ^ 1;
}

- (void)p_resetOverflowGlyphRenderableIfNecessary
{
  if (!self->_overflowGlyphRenderable)
  {
    goto LABEL_5;
  }

  canvas = [(CRLCanvasRep *)self canvas];
  [canvas contentsScale];
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
    p_overflowKnobImage = [(CRLWPShapeRep *)self p_overflowKnobImage];
    v9 = +[CRLCanvasRenderable renderable];
    v10 = self->_overflowGlyphRenderable;
    self->_overflowGlyphRenderable = v9;

    canvas2 = [(CRLCanvasRep *)self canvas];
    [canvas2 contentsScale];
    -[CRLCanvasRenderable setContents:](self->_overflowGlyphRenderable, "setContents:", [p_overflowKnobImage CGImageForContentsScale:?]);

    [p_overflowKnobImage size];
    [(CRLCanvasRenderable *)self->_overflowGlyphRenderable setBounds:sub_10011ECB4()];
    [(CRLCanvasRenderable *)self->_overflowGlyphRenderable setDelegate:self];
  }
}

- (unint64_t)overflowKnobTag
{
  info = [(CRLCanvasRep *)self info];
  if ([info textIsVertical])
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
  canvas = [(CRLCanvasRep *)self canvas];
  if ([canvas shouldShowTextOverflowGlyphs] && !-[CRLShapeRep isEditingPath](self, "isEditingPath"))
  {
    textRep = [(CRLWPShapeRep *)self textRep];
    if ([textRep isOverflowing])
    {
      v7.receiver = self;
      v7.super_class = CRLWPShapeRep;
      shouldShowKnobs = [(CRLShapeRep *)&v7 shouldShowKnobs];
    }

    else
    {
      shouldShowKnobs = 0;
    }
  }

  else
  {
    shouldShowKnobs = 0;
  }

  return shouldShowKnobs;
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
  overflowKnobTag = [(CRLWPShapeRep *)self overflowKnobTag];
  v4 = [(CRLCanvasRep *)self knobForTag:overflowKnobTag];
  hasTextOverflowGlyph = [(CRLWPShapeRep *)self hasTextOverflowGlyph];
  renderable = [v4 renderable];
  [renderable setHidden:hasTextOverflowGlyph];

  v34.receiver = self;
  v34.super_class = CRLWPShapeRep;
  overlayRenderables = [(CRLShapeRep *)&v34 overlayRenderables];
  if ([(CRLWPShapeRep *)self hasTextOverflowGlyph]&& [(CRLCanvasRep *)self isSelectedIgnoringLocking])
  {
    [(CRLWPShapeRep *)self p_resetOverflowGlyphRenderableIfNecessary];
    interactiveCanvasController = [(CRLCanvasRep *)self interactiveCanvasController];
    [(CRLCanvasRep *)self boundsForStandardKnobs];
    [(CRLCanvasRep *)self convertNaturalPointToUnscaledCanvas:sub_100345F44(overflowKnobTag, v9, v10, v11, v12)];
    [interactiveCanvasController convertUnscaledToBoundsPoint:?];
    v14 = v13;
    v16 = v15;
    [(CRLCanvasRenderable *)self->_overflowGlyphRenderable bounds];
    v21 = sub_100120414(v17, v18, v19, v20);
    v22 = sub_10011F31C(v14, v16, v21);
    v24 = v23;
    canvas = [interactiveCanvasController canvas];
    [canvas contentsScale];
    v27 = sub_10012218C(v22, v24, v26);
    v29 = sub_10011F334(v27, v28, v21);
    v31 = v30;

    [(CRLCanvasRenderable *)self->_overflowGlyphRenderable setPosition:v29, v31];
    v32 = [overlayRenderables arrayByAddingObject:self->_overflowGlyphRenderable];

    overlayRenderables = v32;
  }

  return overlayRenderables;
}

- (id)additionalRenderablesOverRenderable
{
  v35.receiver = self;
  v35.super_class = CRLWPShapeRep;
  additionalRenderablesOverRenderable = [(CRLShapeRep *)&v35 additionalRenderablesOverRenderable];
  if ([(CRLWPShapeRep *)self hasTextOverflowGlyph]&& ![(CRLCanvasRep *)self isSelectedIgnoringLocking])
  {
    [(CRLWPShapeRep *)self p_resetOverflowGlyphRenderableIfNecessary];
    interactiveCanvasController = [(CRLCanvasRep *)self interactiveCanvasController];
    overflowKnobTag = [(CRLWPShapeRep *)self overflowKnobTag];
    [(CRLCanvasRep *)self boundsForStandardKnobs];
    [(CRLCanvasRep *)self convertNaturalPointToUnscaledCanvas:sub_100345F44(overflowKnobTag, v6, v7, v8, v9)];
    [interactiveCanvasController convertUnscaledToBoundsPoint:?];
    v11 = v10;
    v13 = v12;
    [(CRLCanvasRenderable *)self->_overflowGlyphRenderable bounds];
    v18 = sub_100120414(v14, v15, v16, v17);
    v19 = sub_10011F31C(v11, v13, v18);
    v21 = v20;
    parentRep = [(CRLCanvasRep *)self parentRep];

    if (parentRep)
    {
      parentRep2 = [(CRLCanvasRep *)self parentRep];
      [parentRep2 layerFrameInScaledCanvas];
      v19 = sub_10011F31C(v19, v21, v24);
      v21 = v25;
    }

    canvas = [interactiveCanvasController canvas];
    [canvas contentsScale];
    v28 = sub_10012218C(v19, v21, v27);
    v30 = sub_10011F334(v28, v29, v18);
    v32 = v31;

    [(CRLCanvasRenderable *)self->_overflowGlyphRenderable setPosition:v30, v32];
    v33 = [additionalRenderablesOverRenderable arrayByAddingObject:self->_overflowGlyphRenderable];

    additionalRenderablesOverRenderable = v33;
  }

  return additionalRenderablesOverRenderable;
}

- (double)pParagraphAlignmentOffset
{
  shapeItem = [(CRLWPShapeRep *)self shapeItem];
  text = [shapeItem text];
  v5 = [text paragraphStyleAtParIndex:0 effectiveRange:0];

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
      shapeItem2 = [(CRLWPShapeRep *)self shapeItem];
      text2 = [shapeItem2 text];
      v10 = [text2 isWritingDirectionRightToLeftForParagraphAtParIndex:0];

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
  dynamicResizeDidBegin = [(CRLShapeRep *)&v11 dynamicResizeDidBegin];
  layout = [(CRLCanvasRep *)self layout];
  if ([layout autosizes])
  {
    info = [(CRLCanvasRep *)self info];
    geometry = [info geometry];
    widthValid = [geometry widthValid];

    if (widthValid)
    {
      goto LABEL_5;
    }

    layout = [(CRLCanvasRep *)self layout];
    [layout autosizePositionOffsetForFixedWidth:1 height:1];
    self->_originalAutosizePositionOffset.x = v8;
    self->_originalAutosizePositionOffset.y = v9;
  }

LABEL_5:

  return dynamicResizeDidBegin;
}

- (void)dynamicOperationDidEnd
{
  v3.receiver = self;
  v3.super_class = CRLWPShapeRep;
  [(CRLShapeRep *)&v3 dynamicOperationDidEnd];
  [(CRLCanvasRep *)self recursivelyPerformSelectorIfImplemented:"invalidateKnobs"];
}

- (id)resizedGeometryForTransform:(CGAffineTransform *)transform
{
  info = [(CRLCanvasRep *)self info];
  geometry = [info geometry];

  memset(&v38, 0, sizeof(v38));
  layout = [(CRLCanvasRep *)self layout];
  originalPureGeometry = [layout originalPureGeometry];
  v9 = originalPureGeometry;
  if (originalPureGeometry)
  {
    [originalPureGeometry fullTransform];
  }

  else
  {
    memset(&t1, 0, sizeof(t1));
  }

  v10 = *&transform->c;
  *&t2.a = *&transform->a;
  *&t2.c = v10;
  *&t2.tx = *&transform->tx;
  CGAffineTransformConcat(&v38, &t1, &t2);

  info2 = [(CRLCanvasRep *)self info];
  textIsVertical = [info2 textIsVertical];

  if (textIsVertical)
  {
    if ([geometry widthValid])
    {
      goto LABEL_26;
    }

    info3 = [(CRLCanvasRep *)self info];
    verticalAlignment = [info3 verticalAlignment];

    v15 = 0.5;
    v16 = 0.0;
    if (verticalAlignment == 2)
    {
      v15 = 0.0;
    }

    if (verticalAlignment)
    {
      v17 = v15;
    }

    else
    {
      v17 = 1.0;
    }

    if (-[CRLCanvasRep isBeingRotated](self, "isBeingRotated", v15) && ([geometry heightValid] & 1) == 0)
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
    if ([geometry heightValid])
    {
      goto LABEL_26;
    }

    info4 = [(CRLCanvasRep *)self info];
    verticalAlignment2 = [info4 verticalAlignment];

    v23 = 0.5;
    if (verticalAlignment2 == 2)
    {
      v23 = 1.0;
    }

    v24 = 0.0;
    if (verticalAlignment2)
    {
      v25 = v23;
    }

    else
    {
      v25 = 0.0;
    }

    if (-[CRLCanvasRep isBeingRotated](self, "isBeingRotated", v23) && ([geometry widthValid] & 1) == 0)
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
  widthValid = [geometry widthValid];
  heightValid = [geometry heightValid];
  isBeingRotated = [(CRLCanvasRep *)self isBeingRotated];
  v30 = textIsVertical ^ 1 | widthValid;
  v31 = textIsVertical | heightValid;
  if (isBeingRotated)
  {
    v30 = widthValid;
    v31 = heightValid;
  }

  t1 = v38;
  v32 = [CRLCanvasInfoGeometry geometryFromFullTransform:&t1 widthValid:v30 & 1 heightValid:v31 & 1];

  return v32;
}

- (BOOL)canMakePathEditable
{
  info = [(CRLCanvasRep *)self info];
  isAutogrowingTextBox = [info isAutogrowingTextBox];

  if (isAutogrowingTextBox)
  {
    info2 = [(CRLCanvasRep *)self info];
    text = [info2 text];

    v7 = [text length] != 0;
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
  info = [(CRLCanvasRep *)self info];
  v9 = sub_1003035DC(info, 1, v3, v4, v5, v6, v7, v8, &OBJC_PROTOCOL___CRLContainerInfo);

  return v9;
}

- (id)shapeItem
{
  v3 = objc_opt_class();
  info = [(CRLCanvasRep *)self info];
  v5 = sub_100014370(v3, info);

  return v5;
}

- (_TtC8Freeform12CRLWPStorage)storageForDragDropOperation
{
  info = [(CRLCanvasRep *)self info];
  if (sub_10012602C(info))
  {
    textStorage = 0;
  }

  else
  {
    textStorage = [info textStorage];
  }

  return textStorage;
}

- (unint64_t)dragOperationForDragInfo:(id)info atUnscaledPoint:(CGPoint)point
{
  y = point.y;
  x = point.x;
  infoCopy = info;
  v12.receiver = self;
  v12.super_class = CRLWPShapeRep;
  v8 = [(CRLShapeRep *)&v12 dragOperationForDragInfo:infoCopy atUnscaledPoint:x, y];
  if (!v8)
  {
    textRep = [(CRLWPShapeRep *)self textRep];

    if (textRep)
    {
      v8 = 0;
    }

    else
    {
      dragAndDropHelper = [(CRLWPShapeRep *)self dragAndDropHelper];
      v8 = [dragAndDropHelper dragOperationForDragInfo:infoCopy atUnscaledPoint:{x, y}];
    }
  }

  return v8;
}

- (BOOL)handleDragOperation:(unint64_t)operation withDragInfo:(id)info atUnscaledPoint:(CGPoint)point
{
  y = point.y;
  x = point.x;
  infoCopy = info;
  v18.receiver = self;
  v18.super_class = CRLWPShapeRep;
  if ([(CRLShapeRep *)&v18 dragOperationForDragInfo:infoCopy atUnscaledPoint:x, y])
  {
    v17.receiver = self;
    v17.super_class = CRLWPShapeRep;
    v10 = [(CRLShapeRep *)&v17 handleDragOperation:operation withDragInfo:infoCopy atUnscaledPoint:x, y];
  }

  else
  {
    textRep = [(CRLWPShapeRep *)self textRep];
    if (textRep && (v12 = textRep, -[CRLCanvasRep layout](self, "layout"), v13 = objc_claimAutoreleasedReturnValue(), v14 = [v13 supportsInstructionalText], v13, v12, !v14))
    {
      v10 = 0;
    }

    else
    {
      dragAndDropHelper = [(CRLWPShapeRep *)self dragAndDropHelper];
      v10 = [dragAndDropHelper handleDragOperation:operation withDragInfo:infoCopy atUnscaledPoint:{x, y}];
    }
  }

  return v10;
}

- (_TtC8Freeform12CRLWPStorage)storage
{
  info = [(CRLCanvasRep *)self info];
  textStorage = [info textStorage];

  return textStorage;
}

- (id)selectionForDragAndDropNaturalPoint:(CGPoint)point
{
  v4 = [(CRLCanvasRep *)self interactiveCanvasController:point.x];
  info = [(CRLCanvasRep *)self info];
  textStorage = [info textStorage];
  v7 = [v4 wpSelectionClassForStorage:textStorage];

  return [v7 selectionWithRange:{0, 0}];
}

- (id)textEditorForDropIntoStorage:(id)storage
{
  storageCopy = storage;
  v5 = objc_opt_class();
  v6 = objc_opt_class();
  parentInfo = [storageCopy parentInfo];

  v8 = sub_100014370(v6, parentInfo);

  v9 = [v5 alloc];
  interactiveCanvasController = [(CRLCanvasRep *)self interactiveCanvasController];
  editingCoordinator = [interactiveCanvasController editingCoordinator];
  interactiveCanvasController2 = [(CRLCanvasRep *)self interactiveCanvasController];
  v13 = [v9 initWithEditingCoordinator:editingCoordinator enclosingShape:v8 icc:interactiveCanvasController2];

  return v13;
}

- (NSArray)scribbleCapableElements
{
  containedRep = [(CRLWPShapeRep *)self containedRep];
  if (containedRep && (v4 = containedRep, [(CRLWPShapeRep *)self containedRep], v5 = objc_claimAutoreleasedReturnValue(), v6 = [(CRLWPShapeRep *)self canBeginEditingChildRepOnDoubleTap:v5 ignoreSelectionState:1], v5, v4, !v6))
  {
    v7 = &__NSArray0__struct;
  }

  else
  {
    selfCopy = self;
    v7 = [NSArray arrayWithObjects:&selfCopy count:1];
  }

  return v7;
}

- (void)p_prepareForScribble
{
  containedRep = [(CRLWPShapeRep *)self containedRep];

  if (!containedRep)
  {
    layout = [(CRLCanvasRep *)self layout];
    [layout createTextLayoutForScribble:1];

    [(CRLWPShapeRep *)self updateChildrenFromLayout];
    [(CRLCanvasRep *)self invalidateKnobs];

    [(CRLShapeRep *)self setNeedsDisplay];
  }
}

- (id)prepareForScribbleBlock
{
  [(CRLWPShapeRep *)self p_prepareForScribble];
  containedRep = [(CRLWPShapeRep *)self containedRep];
  prepareForScribbleBlock = [containedRep prepareForScribbleBlock];

  return prepareForScribbleBlock;
}

- (id)scribbleEditingBlock
{
  [(CRLWPShapeRep *)self p_prepareForScribble];
  containedRep = [(CRLWPShapeRep *)self containedRep];
  scribbleEditingBlock = [containedRep scribbleEditingBlock];

  return scribbleEditingBlock;
}

- (CGRect)scaledScribbleEditingFrame
{
  [(CRLWPShapeRep *)self p_prepareForScribble];
  containedRep = [(CRLWPShapeRep *)self containedRep];
  [containedRep scaledScribbleEditingFrame];
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
  containedRep = [(CRLWPShapeRep *)self containedRep];
  shouldDelayScribbleFocus = [containedRep shouldDelayScribbleFocus];

  return shouldDelayScribbleFocus;
}

- (BOOL)scribbleElementIsFocused
{
  [(CRLWPShapeRep *)self p_prepareForScribble];
  containedRep = [(CRLWPShapeRep *)self containedRep];
  scribbleElementIsFocused = [containedRep scribbleElementIsFocused];

  return scribbleElementIsFocused;
}

- (UIEdgeInsets)hitToleranceInsetsWithDefaultInsets:(UIEdgeInsets)insets
{
  right = insets.right;
  bottom = insets.bottom;
  left = insets.left;
  top = insets.top;
  [(CRLWPShapeRep *)self p_prepareForScribble];
  containedRep = [(CRLWPShapeRep *)self containedRep];
  [containedRep hitToleranceInsetsWithDefaultInsets:{top, left, bottom, right}];
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

- (id)dragItemsForBeginningDragAtPoint:(CGPoint)point
{
  y = point.y;
  x = point.x;
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
  containedRep = [(CRLWPShapeRep *)self containedRep];
  v4 = containedRep;
  if (containedRep)
  {
    if ([containedRep isBeingEdited])
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
  interactiveCanvasController = [(CRLCanvasRep *)self interactiveCanvasController];
  if ([interactiveCanvasController editingDisabled])
  {
    containedRep = [(CRLWPShapeRep *)self containedRep];
    layout = [containedRep layout];
    isInstructional = [layout isInstructional];
  }

  else
  {
    isInstructional = 0;
  }

  return isInstructional;
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