@interface CRLWPRep
+ (id)focusedHighlightColorForDarkMode:(BOOL)mode;
+ (id)unfocusedHighlightColorForDarkMode:(BOOL)mode;
+ (void)initialize;
- ($8162D66D923C6F9903B35BCF259B21FE)wordMetricsAtCharIndex:(SEL)index;
- ($D12B6492C59FD4124ECBBA05678185BF)lineMetricsAtCharIndex:(SEL)index;
- ($D12B6492C59FD4124ECBBA05678185BF)p_lineMetricsAtPoint:(SEL)point allowNotFound:(CGPoint)found;
- (BOOL)canEditWithEditor:(id)editor;
- (BOOL)containsPoint:(CGPoint)point withPrecision:(BOOL)precision;
- (BOOL)containsStartOfSelection:(id)selection;
- (BOOL)didPointHitSelectionEnd:(CGPoint)end;
- (BOOL)ghostCaretAppearance;
- (BOOL)handleDragOperation:(unint64_t)operation withDragInfo:(id)info atUnscaledPoint:(CGPoint)point;
- (BOOL)isBeingEdited;
- (BOOL)isDragPoint:(CGPoint)point inSelection:(id)selection includeEndpoints:(BOOL)endpoints;
- (BOOL)isDropTarget;
- (BOOL)isOverflowing;
- (BOOL)isPointInSelectedArea:(CGPoint)area;
- (BOOL)p_allowCaretForSelection:(id)selection;
- (BOOL)p_automaticTextSubstitutionEnabled;
- (BOOL)p_canShowSelectionAndCaretLayers;
- (BOOL)p_doesRep:(id)rep containCharIndex:(unint64_t)index isStart:(BOOL)start;
- (BOOL)p_doesRepIntersectSearchReference:(id)reference;
- (BOOL)p_needsSpellChecker;
- (BOOL)p_positionCaretLayer:(id)layer forSelection:(id)selection layerRelative:(BOOL)relative;
- (BOOL)p_spellCheckingEnabled;
- (BOOL)p_storageMatchesSelectionPath:(id)path;
- (BOOL)scribbleElementIsFocused;
- (BOOL)scribbleExceedsVerticalDistanceForNearestCharIndex:(unint64_t)index boundsPoint:(CGPoint)point isAtEndOfLine:(BOOL)line;
- (BOOL)shouldAddCollaboratorLayerToOverlays;
- (BOOL)shouldCreateTextKnobs;
- (BOOL)shouldLayoutTilingLayer:(id)layer;
- (BOOL)shouldPreventMarqueeInitiationAtPoint:(CGPoint)point withTouchType:(int64_t)type;
- (BOOL)shouldShowCollaboratorCursorHighlight;
- (BOOL)shouldShowEditMenu;
- (BOOL)shouldShowKnobs;
- (BOOL)textIsVertical;
- (BOOL)wantsContextMenuWhenEditingDisabledAtPoint:(CGPoint)point;
- (CGAffineTransform)transformToConvertNaturalToScaledRoot;
- (CGColor)p_caretLayerColor;
- (CGColor)p_highlightLineColor;
- (CGPath)newPathForSearchReference:(id)reference;
- (CGPath)newPathForSelection:(id)selection;
- (CGPath)p_newPathForSelection:(id)selection withTransform:(CGAffineTransform *)transform withInset:(double)inset;
- (CGPath)p_newSelectionPathForSelection:(id)selection transform:(CGAffineTransform *)transform headPinRect:(CGRect *)rect tailPinRect:(CGRect *)pinRect markedText:(BOOL)text;
- (CGPoint)knobCenterForSelection:(id)selection knob:(id)knob;
- (CGPoint)p_applyLineSnappingToFloatingCaret:(id)caret atPoint:(CGPoint)point withRect:(CGRect)rect;
- (CGPoint)p_pinPoint:(CGPoint)point toRect:(CGRect)rect;
- (CGPoint)pinToClosestColumn:(CGPoint)column;
- (CGPoint)pinToNaturalBounds:(CGPoint)bounds andLastLineFragment:(BOOL)fragment;
- (CGRect)boundsForCollaboratorCursorRenderable;
- (CGRect)caretRect;
- (CGRect)caretRectForCharIndex:(unint64_t)index caretAffinity:(unint64_t)affinity;
- (CGRect)caretRectForCharIndex:(unint64_t)index leadingEdge:(BOOL)edge caretAffinity:(unint64_t)affinity;
- (CGRect)caretRectForSelection:(id)selection;
- (CGRect)clipRect;
- (CGRect)columnRectForRange:(_NSRange)range;
- (CGRect)getCurrentTextFieldBounds;
- (CGRect)glyphRectForRange:(_NSRange)range includingLabel:(BOOL)label;
- (CGRect)glyphRectForRubyFieldAtCharIndex:(unint64_t)index glyphRange:(_NSRange)range;
- (CGRect)labelRectForCharIndex:(unint64_t)index;
- (CGRect)newTextLayerUnscaledBounds:(CGRect)bounds forNewTextBounds:(CGRect)textBounds;
- (CGRect)p_caretRectForSelection:(id)selection;
- (CGRect)p_clipRect:(CGRect)rect;
- (CGRect)p_closestCaretRectForCharacterAtPoint:(CGPoint)point;
- (CGRect)p_closestCaretRectForPoint:(CGPoint)point inSelection:(BOOL)selection allowPastBreak:(BOOL)break;
- (CGRect)p_convertNaturalRectToRotated:(CGRect)rotated repAngle:(double)angle;
- (CGRect)p_convertRectIntoZoomCoordinates:(CGRect)coordinates;
- (CGRect)p_topicDragRectForSelection:(id)selection;
- (CGRect)rectForSelection:(id)selection includeRuby:(BOOL)ruby includePaginatedAttachments:(BOOL)attachments;
- (CGRect)rectToClipChildRepRenderables;
- (CGRect)scaledScribbleEditingFrame;
- (CGRect)selectionRect;
- (CGSize)hitTestingSlop;
- (CRLContainerInfo)containerInfo;
- (CRLWPDragAndDropHelper)dragAndDropHelper;
- (CRLWPLayoutTarget)layout;
- (CRLWPRep)initWithLayout:(id)layout canvas:(id)canvas;
- (CRLWPSelection)dropSelection;
- (CRLWPSelection)selection;
- (NSArray)columns;
- (NSArray)hyperlinkRegions;
- (NSArray)scribbleCapableElements;
- (_NSRange)dragRange;
- (_NSRange)range;
- (_NSRange)rangeOfMisspelledWordAtCharIndex:(unint64_t)index;
- (_TtC8Freeform11CRLWPEditor)textEditor;
- (_TtC8Freeform12CRLWPStorage)storage;
- (_TtC8Freeform12CRLWPStorage)storageForDragDropOperation;
- (double)collaborativeCursorOpacityForCaret:(BOOL)caret;
- (double)knobOffsetForKnob:(id)knob paragraphMode:(BOOL)mode;
- (id)actionForLayer:(id)layer forKey:(id)key;
- (id)backgroundColorForDragPreviewOfSelection:(id)selection;
- (id)closestColumnForPoint:(CGPoint)point;
- (id)collaboratorCursorRenderable;
- (id)colorBehindLayer:(id)layer;
- (id)columnForCharIndex:(unint64_t)index;
- (id)contextMenuConfigurationAtPoint:(CGPoint)point;
- (id)contextMenuPreviewForHighlightingMenuAtPoint:(CGPoint)point withConfiguration:(id)configuration;
- (id)cursorAtPoint:(CGPoint)point forKnob:(id)knob withCursorPlatformObject:(id)object;
- (id)cursorForPoint:(CGPoint)point withCursorPlatformObject:(id)object;
- (id)dragItemsForBeginningDragAtPoint:(CGPoint)point;
- (id)hyperlinkContainerRep;
- (id)imageForSearchReference:(id)reference forPath:(CGPath *)path shouldPulsate:(BOOL)pulsate;
- (id)knobClassWithTag:(unint64_t)tag;
- (id)knobPositioner;
- (id)lineSearchReferencesForSearchReference:(id)reference;
- (id)newTrackerForKnob:(id)knob;
- (id)overlayRenderables;
- (id)p_caretLayerWithZPosition:(double)position;
- (id)p_dragItemsForBeginningDragWithSelection:(id)selection inlineRepBeingDragged:(id)dragged;
- (id)p_hyperlinkAtPoint:(CGPoint)point;
- (id)p_imageForRect:(CGRect)rect usingGlyphRect:(BOOL)glyphRect prepareBackground:(BOOL)background drawBackground:(BOOL)drawBackground shouldPulsate:(BOOL)pulsate forCaret:(BOOL)caret drawSelection:(id)selection suppressInvisibles:(BOOL)self0 suppressChildReps:(BOOL)self1;
- (id)p_imageForZeroLengthPath:(CGPath *)path;
- (id)p_lineSelectionsForSelection:(id)selection;
- (id)p_styleProvider;
- (id)p_textEditorForStorage:(id)storage;
- (id)p_textEditorForTextStorage:(id)storage;
- (id)prepareForScribbleBlock;
- (id)repForCharIndex:(unint64_t)index isStart:(BOOL)start;
- (id)repForDragging;
- (id)scribbleEditingBlock;
- (id)selectionForDragAndDropNaturalPoint:(CGPoint)point;
- (id)siblings;
- (id)smartFieldAtPoint:(CGPoint)point;
- (id)textEditorForDropIntoStorage:(id)storage;
- (id)textImageForSelection:(id)selection frame:(CGRect *)frame usingGlyphRect:(BOOL)rect shouldPulsate:(BOOL)pulsate suppressInvisibles:(BOOL)invisibles suppressChildReps:(BOOL)reps drawBackground:(BOOL)background inset:(double)self0;
- (int64_t)tilingMode;
- (unint64_t)dragOperationForDragInfo:(id)info atUnscaledPoint:(CGPoint)point;
- (unint64_t)glyphCountForRubyFieldAtCharIndex:(unint64_t)index;
- (unint64_t)pulseAnimationStyle:(id)style;
- (unsigned)fontTraitsForRange:(_NSRange)range includingLabel:(BOOL)label;
- (void)addAdditionalChildLayersToArray:(id)array;
- (void)addKnobsToArray:(id)array;
- (void)animationDidStop:(id)stop finished:(BOOL)finished;
- (void)beginEditing;
- (void)beginFloatingCursorAtPoint:(CGPoint)point animate:(BOOL)animate;
- (void)collaboratorCursorChangedToSelectionPath:(id)path;
- (void)dealloc;
- (void)didBeginEditingWithTextEditor:(id)editor;
- (void)didDrawInLayer:(id)layer context:(CGContext *)context;
- (void)didUpdateRenderable:(id)renderable;
- (void)drawInLayerContext:(CGContext *)context;
- (void)drawLayer:(id)layer inContext:(CGContext *)context;
- (void)drawRubyInContext:(CGContext *)context rubyFieldStart:(unint64_t)start rubyGlyphRange:(_NSRange)range;
- (void)editingDidEndWithTextEditor:(id)editor;
- (void)endFloatingCursorWithRepForAnimation:(id)animation;
- (void)gesturesDidEnd:(id)end;
- (void)handleFadeInForZoom;
- (void)handleFadeOutForZoom;
- (void)hideCollaboratorCursors;
- (void)hideDragAndDropUI;
- (void)i_primaryFindResultChanged:(id)changed;
- (void)i_setNeedsDisplayForSelectionChange;
- (void)i_setNeedsErasableDisplayInRange:(_NSRange)range;
- (void)i_setSearchReferencesToHighlight:(id)highlight;
- (void)i_spellCheckerWordsDidChange;
- (void)i_textInputResponderDidBecomeFirstResponder;
- (void)i_textInputResponderDidResignFirstResponder;
- (void)invalidateCollaboratorCursorRenderable;
- (void)p_addDropAnimationToFloatingCursorWithEndingRep:(id)rep;
- (void)p_clearICCPrimaryFindResultSearchReference;
- (void)p_createLayer:(int64_t)layer;
- (void)p_createMarkHighlightLayer;
- (void)p_createSelectionHighlightLayer;
- (void)p_createSelectionLineLayers;
- (void)p_createSelectionParagraphBorderLayer;
- (void)p_createSpellChecker;
- (void)p_destroyLayer:(int64_t)layer;
- (void)p_destroySpellChecker;
- (void)p_drawInContext:(CGContext *)context limitSelection:(id)selection suppressInvisibles:(BOOL)invisibles;
- (void)p_drawTextBackgroundLayerInContext:(CGContext *)context;
- (void)p_drawTextInLayer:(id)layer context:(CGContext *)context limitSelection:(id)selection rubyGlyphRange:(_NSRange)range renderMode:(unint64_t)mode suppressInvisibles:(BOOL)invisibles;
- (void)p_drawTextLayerInContext:(CGContext *)context;
- (void)p_hideCollaboratorCursorLayer;
- (void)p_hideSelectionLayers;
- (void)p_hideSelectionParagraphBorderLayer;
- (void)p_invalidateSuppressedMisspellingRange;
- (void)p_positionAndSizeFloatingCaret:(id)caret atPoint:(CGPoint)point;
- (void)p_registerNotifications;
- (void)p_selectionChangedNotification:(id)notification;
- (void)p_setPrimaryFindResultSearchReference:(id)reference;
- (void)p_setPulseControllerActive:(BOOL)active autohide:(BOOL)autohide;
- (void)p_setSelectionHighlightColor;
- (void)p_setSelectionLineLayersHidden:(BOOL)hidden;
- (void)p_setSuppressedMisspellingRange:(_NSRange)range;
- (void)p_showCollaboratorCursorLayer;
- (void)p_showSelectionParagraphBorderLayerWithPath:(CGPath *)path;
- (void)p_spellcheckFinished:(id)finished;
- (void)p_teardown;
- (void)p_unregisterNotifications;
- (void)p_updateAnimationWithAnimatingPulse:(BOOL)pulse;
- (void)p_updateCaretLayerColor;
- (void)p_updateForCurrentSelectionWithFlags:(unint64_t)flags;
- (void)p_updateHighlights;
- (void)p_updateLayersForInsertionPointSelection:(id)selection;
- (void)p_updateLayersForRangeSelection:(id)selection selectionFlags:(unint64_t)flags;
- (void)p_updateMarkHighlightLayer;
- (void)p_updateSecondaryHighlightLayer;
- (void)p_updateSuppressedSpellingRange;
- (void)p_validateWithLayoutController;
- (void)p_withCollaboratorCursorPerformBlock:(id)block;
- (void)performBlockOnTextLayers:(id)layers;
- (void)prepareLayoutForImagingSearchReferencesAsActive:(BOOL)active usingBlock:(id)block;
- (void)processChangedProperty:(unint64_t)property;
- (void)pulseAnimationDidStop:(id)stop;
- (void)pulseAnimationDidStopForPulse:(id)pulse;
- (void)pulseCaret;
- (void)refreshEditMenu;
- (void)screenScaleDidChange;
- (void)scribbleSetSelectionForBeginEditingWithBoundsPoint:(CGPoint)point tappedInRep:(id)rep;
- (void)setDragRange:(_NSRange)range;
- (void)setDropSelection:(id)selection;
- (void)setGhostCaretAppearance:(BOOL)appearance;
- (void)setHighlightedHyperlinkField:(id)field;
- (void)setNeedsDisplay;
- (void)setNeedsDisplayInRange:(_NSRange)range;
- (void)setNeedsDisplayInRect:(CGRect)rect;
- (void)setParentRep:(id)rep;
- (void)setSecondaryHighlightRange:(_NSRange)range color:(CGColor *)color pathStyle:(int)style;
- (void)setSuppressSelectionHighlight:(BOOL)highlight;
- (void)spellCheckingStateChanged;
- (void)textInteractionCaretBeganFloating;
- (void)textInteractionCaretDragStopped;
- (void)textInteractionCaretEndedFloating;
- (void)updateDragAndDropUIForPoint:(CGPoint)point dragInfo:(id)info;
- (void)updateFloatingCursorAtPoint:(CGPoint)point;
- (void)updateFromLayout;
- (void)updatePositionsOfKnobs:(id)knobs;
- (void)updateUniversalAccessZoomWindow;
- (void)updateVisualSelection:(id)selection;
- (void)verticalTextPropertyChanged;
- (void)willBeRemoved;
@end

@implementation CRLWPRep

- (unint64_t)dragOperationForDragInfo:(id)info atUnscaledPoint:(CGPoint)point
{
  y = point.y;
  x = point.x;
  infoCopy = info;
  dragAndDropHelper = [(CRLWPRep *)self dragAndDropHelper];
  v9 = [dragAndDropHelper dragOperationForDragInfo:infoCopy atUnscaledPoint:{x, y}];

  return v9;
}

- (BOOL)handleDragOperation:(unint64_t)operation withDragInfo:(id)info atUnscaledPoint:(CGPoint)point
{
  y = point.y;
  x = point.x;
  infoCopy = info;
  dragAndDropHelper = [(CRLWPRep *)self dragAndDropHelper];
  LOBYTE(operation) = [dragAndDropHelper handleDragOperation:operation withDragInfo:infoCopy atUnscaledPoint:{x, y}];

  return operation;
}

- (void)updateDragAndDropUIForPoint:(CGPoint)point dragInfo:(id)info
{
  y = point.y;
  x = point.x;
  infoCopy = info;
  dragAndDropHelper = [(CRLWPRep *)self dragAndDropHelper];
  [dragAndDropHelper adjustedUnscaledPoint:{x, y}];
  v10 = v9;
  v12 = v11;

  v62.receiver = self;
  v62.super_class = CRLWPRep;
  [(CRLCanvasRep *)&v62 updateDragAndDropUIForPoint:infoCopy dragInfo:v10, v12];
  [(CRLCanvasRep *)self convertNaturalPointFromUnscaledCanvas:v10, v12];
  v14 = v13;
  v16 = v15;
  [(CRLWPRep *)self hideCaretLayer];
  dragAndDropHelper2 = [(CRLWPRep *)self dragAndDropHelper];
  v18 = [dragAndDropHelper2 sourceSelectionPathForDragInfo:infoCopy];

  interactiveCanvasController = [(CRLCanvasRep *)self interactiveCanvasController];
  v20 = [interactiveCanvasController modelsForSelectionPath:v18];

  v21 = [v20 objectsPassingTest:&stru_101856388];
  v22 = objc_opt_class();
  crl_onlyObject = [v21 crl_onlyObject];
  v24 = sub_100014370(v22, crl_onlyObject);

  textStorage = [v24 textStorage];
  if (textStorage)
  {
    if (![v20 count])
    {
      v60 = v18;
      +[CRLAssertionHandler _atomicIncrementAssertCount];
      if (qword_101AD5A10 != -1)
      {
        sub_1013540F8();
      }

      if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
      {
        sub_101354120();
      }

      if (qword_101AD5A10 != -1)
      {
        sub_1013541CC();
      }

      v26 = off_1019EDA68;
      if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
      {
        sub_10130EFC0(v26);
      }

      v27 = [NSString stringWithUTF8String:"[CRLWPRep(DragAdditions) updateDragAndDropUIForPoint:dragInfo:]"];
      v28 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLWP/CRLWPRep+DragAdditions.m"];
      [CRLAssertionHandler handleFailureInFunction:v27 file:v28 lineNumber:243 isFatal:0 description:"If %s found model objects, one should be a storage.", "[CRLWPRep(DragAdditions) updateDragAndDropUIForPoint:dragInfo:]"];

      v18 = v60;
    }

    changeCount = [textStorage changeCount];
    dragAndDropHelper3 = [(CRLWPRep *)self dragAndDropHelper];
    v31 = [dragAndDropHelper3 sourceChangeCountForDragInfo:infoCopy];

    if (changeCount != v31)
    {

      textStorage = 0;
    }
  }

  storage = [(CRLWPRep *)self storage];
  dragAndDropHelper4 = [(CRLWPRep *)self dragAndDropHelper];
  [dragAndDropHelper4 setDragIsStorageLocal:textStorage == storage];

  dragAndDropHelper5 = [(CRLWPRep *)self dragAndDropHelper];
  dragIsStorageLocal = [dragAndDropHelper5 dragIsStorageLocal];

  if (dragIsStorageLocal)
  {
    dragAndDropHelper6 = [(CRLWPRep *)self dragAndDropHelper];
    v37 = [dragAndDropHelper6 sourceSelectionForDragInfo:infoCopy];

    if (v37 && [(CRLWPRep *)self isDragPoint:v37 inSelection:0 includeEndpoints:v14, v16])
    {
      dragAndDropHelper7 = [(CRLWPRep *)self dragAndDropHelper];
      dragIsStorageLocal2 = [dragAndDropHelper7 dragIsStorageLocal];
    }

    else
    {
      dragIsStorageLocal2 = 0;
    }
  }

  else
  {
    dragIsStorageLocal2 = 0;
    v37 = 0;
  }

  dragAndDropCaretLayer = [(CRLWPRep *)self dragAndDropCaretLayer];
  [dragAndDropCaretLayer setHidden:dragIsStorageLocal2];

  if (dragIsStorageLocal2)
  {
    [(CRLWPRep *)self hideDragAndDropUI];
  }

  else
  {
    [(CRLWPRep *)self setDragOperationInProgress:1];
    dragAndDropHelper8 = [(CRLWPRep *)self dragAndDropHelper];
    [dragAndDropHelper8 dragAndDropNaturalPoint];
    v43 = v42;
    v45 = v44;

    if (v43 != v14 || v45 != v16)
    {
      dragAndDropHelper9 = [(CRLWPRep *)self dragAndDropHelper];
      [dragAndDropHelper9 setDragAndDropNaturalPoint:{v14, v16}];

      interactiveCanvasController2 = [(CRLCanvasRep *)self interactiveCanvasController];
      [interactiveCanvasController2 invalidateOverlayLayersForRep:self];
    }
  }

  dragAndDropHelper10 = [(CRLWPRep *)self dragAndDropHelper];
  dragIsStorageLocal3 = [dragAndDropHelper10 dragIsStorageLocal];

  if (dragIsStorageLocal3)
  {
    range = [v37 range];
    v51 = v50;
    [objc_opt_class() unfocusedHighlightColorForDarkMode:0];
    v52 = v37;
    v53 = textStorage;
    v54 = infoCopy;
    v55 = v20;
    v56 = v24;
    v57 = v21;
    v59 = v58 = v18;
    -[CRLWPRep setSecondaryHighlightRange:color:pathStyle:](self, "setSecondaryHighlightRange:color:pathStyle:", range, v51, [v59 CGColor], 0);

    v18 = v58;
    v21 = v57;
    v24 = v56;
    v20 = v55;
    infoCopy = v54;
    textStorage = v53;
    v37 = v52;
  }
}

- (void)hideDragAndDropUI
{
  [(CRLWPRep *)self setDragOperationInProgress:0];
  [(CRLWPRep *)self clearSecondaryHighlight];
  dragAndDropHelper = [(CRLWPRep *)self dragAndDropHelper];
  [dragAndDropHelper setDragAndDropNaturalPoint:{NAN, NAN}];

  dragAndDropCaretLayer = [(CRLWPRep *)self dragAndDropCaretLayer];
  [dragAndDropCaretLayer setDelegate:0];

  [(CRLWPRep *)self setDragAndDropCaretLayer:0];
  dragAndDropTopicLayer = [(CRLWPRep *)self dragAndDropTopicLayer];
  [dragAndDropTopicLayer setDelegate:0];

  [(CRLWPRep *)self setDragAndDropTopicLayer:0];
  [(CRLWPRep *)self setDragAndDropTopicIndentLayer:0];
  v6.receiver = self;
  v6.super_class = CRLWPRep;
  [(CRLCanvasRep *)&v6 hideDragAndDropUI];
}

- (id)dragItemsForBeginningDragAtPoint:(CGPoint)point
{
  y = point.y;
  x = point.x;
  textEditor = [(CRLWPRep *)self textEditor];

  if (textEditor)
  {
    selection = [(CRLWPRep *)self selection];
    if ([selection isRange])
    {
      v8 = [(CRLWPRep *)self isPointInSelectedArea:x, y];

      if (v8)
      {
        v9 = [_TtC8Freeform23CRLWPEditMenuController alloc];
        interactiveCanvasController = [(CRLCanvasRep *)self interactiveCanvasController];
        v11 = [(CRLWPEditMenuController *)v9 initWithICC:interactiveCanvasController];
        [(CRLWPEditMenuController *)v11 hide];

        selection2 = [(CRLWPRep *)self selection];
        v13 = [(CRLWPRep *)self p_dragItemsForBeginningDragWithSelection:selection2 inlineRepBeingDragged:0];

        goto LABEL_8;
      }
    }

    else
    {
    }

    v13 = 0;
  }

  else
  {
    v15.receiver = self;
    v15.super_class = CRLWPRep;
    v13 = [(CRLCanvasRep *)&v15 dragItemsForBeginningDragAtPoint:x, y];
  }

LABEL_8:

  return v13;
}

- (id)p_dragItemsForBeginningDragWithSelection:(id)selection inlineRepBeingDragged:(id)dragged
{
  selectionCopy = selection;
  interactiveCanvasController = [(CRLCanvasRep *)self interactiveCanvasController];
  v7 = objc_alloc_init(CRLItemProviderItemWriter);
  v14 = sub_1003035DC(v7, 1, v8, v9, v10, v11, v12, v13, &OBJC_PROTOCOL___CRLWPIngestibleItemWriting);

  storage = [(CRLWPRep *)self storage];
  v16 = [(CRLWPRep *)self p_textEditorForStorage:storage];

  v68 = v16;
  editorHelper = [v16 editorHelper];
  v18 = [editorHelper hasWhitespaceBoundedWordAtSelection:selectionCopy];

  storage2 = [(CRLWPRep *)self storage];
  canvasEditor = [interactiveCanvasController canvasEditor];
  pasteboardController = [canvasEditor pasteboardController];
  v69 = v14;
  v22 = [v14 itemProviderWithStorage:storage2 selection:selectionCopy boardItems:&__NSArray0__struct styleProvider:0 inIsSmart:v18 pasteboardController:pasteboardController];

  if (v22)
  {
    selectionModelTranslator = [interactiveCanvasController selectionModelTranslator];
    storage3 = [(CRLWPRep *)self storage];
    v25 = [selectionModelTranslator selectionPathForSelection:selectionCopy onStorage:storage3];

    editorController = [interactiveCanvasController editorController];
    selectionPath = [editorController selectionPath];
    v28 = [CRLWPiOSTextDraggingContext alloc];
    storage4 = [(CRLWPRep *)self storage];
    v65 = editorController;
    v66 = selectionPath;
    v67 = v25;
    v30 = -[CRLWPiOSTextDraggingContext initWithEditorController:sourceSelectionPath:changeCount:reverseSelectionPath:](v28, "initWithEditorController:sourceSelectionPath:changeCount:reverseSelectionPath:", editorController, v25, [storage4 changeCount], selectionPath);

    size = CGRectNull.size;
    origin = CGRectNull.origin;
    v77 = size;
    canvas = [(CRLCanvasRep *)self canvas];
    [canvas viewScale];
    v34 = -12.0 / v33;

    LOBYTE(v63) = 1;
    v35 = [(CRLWPRep *)self textImageForSelection:selectionCopy frame:&origin usingGlyphRect:1 shouldPulsate:0 suppressInvisibles:1 suppressChildReps:0 drawBackground:v34 inset:v63];
    [(CRLCanvasRep *)self convertNaturalRectToUnscaledCanvas:origin, v77];
    v37 = v36;
    v39 = v38;
    v41 = v40;
    v43 = v42;
    v44 = [(CRLWPRep *)self backgroundColorForDragPreviewOfSelection:selectionCopy];
    v45 = objc_alloc_init(UIView);
    v81.origin.x = CGRectNull.origin.x;
    v81.origin.y = CGRectNull.origin.y;
    v81.size.width = CGRectNull.size.width;
    v81.size.height = CGRectNull.size.height;
    v80.origin.x = v37;
    v80.origin.y = v39;
    v80.size.width = v41;
    v80.size.height = v43;
    if (CGRectEqualToRect(v80, v81))
    {
      v46 = 0;
    }

    else
    {
      [interactiveCanvasController convertUnscaledToBoundsRect:{v37, v39, v41, v43}];
      [v45 setFrame:?];
      canvas2 = [(CRLCanvasRep *)self canvas];
      [canvas2 viewScale];

      v46 = [UIBezierPath bezierPathWithRoundedRect:sub_10011ECB4() cornerRadius:?];
    }

    cGImage = [v35 CGImage];
    [v45 layer];
    v55 = v64 = v35;
    [v55 setContents:cGImage];

    layer = [v45 layer];
    LODWORD(v57) = 1062836634;
    [layer setOpacity:v57];

    v58 = [CRLiOSCanvasDragItem alloc];
    v70[0] = _NSConcreteStackBlock;
    v70[1] = 3221225472;
    v70[2] = sub_1003277A0;
    v70[3] = &unk_101856430;
    v71 = v46;
    v72 = v44;
    v73 = interactiveCanvasController;
    v74 = v45;
    v75 = v30;
    v59 = v45;
    v60 = v46;
    v61 = [(CRLiOSCanvasDragItem *)v58 initWithItemProvider:v22 previewGeneratingBlock:v70];
    [(CRLiOSCanvasDragItem *)v61 setAllowsMoveOperation:1];
    v52 = v22;
    v51 = v68;
    [(CRLiOSCanvasDragItem *)v61 setSourceObject:v68];
    v78 = v61;
    v50 = [NSArray arrayWithObjects:&v78 count:1];

    v48 = v67;
    v49 = v65;
  }

  else
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_1013541F4();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_101354208();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_1013542B8();
    }

    v47 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10130EFC0(v47);
    }

    v48 = [NSString stringWithUTF8String:"[CRLWPRep(DragAdditions) p_dragItemsForBeginningDragWithSelection:inlineRepBeingDragged:]"];
    v49 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLWP/CRLWPRep+DragAdditions.m"];
    [CRLAssertionHandler handleFailureInFunction:v48 file:v49 lineNumber:395 isFatal:0 description:"invalid nil value for '%{public}s'", "itemProvider"];
    v50 = 0;
    v51 = v68;
    v52 = 0;
  }

  return v50;
}

- (id)p_styleProvider
{
  storage = [(CRLWPRep *)self storage];
  v3 = [CRLWPStorageStyleProvider styleProviderForStorage:storage];

  return v3;
}

- (id)p_textEditorForStorage:(id)storage
{
  storageCopy = storage;
  v13 = 0;
  v14 = &v13;
  v15 = 0x3032000000;
  v16 = sub_100327A54;
  v17 = sub_100327A64;
  v18 = 0;
  interactiveCanvasController = [(CRLCanvasRep *)self interactiveCanvasController];
  editorController = [interactiveCanvasController editorController];
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_100327A6C;
  v10[3] = &unk_10183ECE0;
  v7 = storageCopy;
  v11 = v7;
  v12 = &v13;
  [editorController enumerateEditorsOnStackUsingBlock:v10];

  v8 = v14[5];
  _Block_object_dispose(&v13, 8);

  return v8;
}

+ (id)focusedHighlightColorForDarkMode:(BOOL)mode
{
  modeCopy = mode;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v5 = &unk_101A34FE8;
  if (!modeCopy)
  {
    v5 = &qword_101A34FE0;
  }

  v6 = *v5;
  objc_sync_exit(selfCopy);

  return v6;
}

+ (id)unfocusedHighlightColorForDarkMode:(BOOL)mode
{
  modeCopy = mode;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v5 = &qword_101A34FF8;
  if (!modeCopy)
  {
    v5 = &unk_101A34FF0;
  }

  v6 = *v5;
  objc_sync_exit(selfCopy);

  return v6;
}

- (void)setSuppressSelectionHighlight:(BOOL)highlight
{
  if (self->_suppressSelectionHighlight != highlight)
  {
    self->_suppressSelectionHighlight = highlight;
    if (highlight)
    {
      [(CRLWPRep *)self p_hideSelectionLayers];
    }
  }
}

- (BOOL)shouldShowKnobs
{
  v5.receiver = self;
  v5.super_class = CRLWPRep;
  shouldShowKnobs = [(CRLCanvasRep *)&v5 shouldShowKnobs];
  if (shouldShowKnobs)
  {
    LOBYTE(shouldShowKnobs) = [(CRLWPRep *)self p_shouldDisplaySelectionControls];
  }

  return shouldShowKnobs;
}

- (CRLContainerInfo)containerInfo
{
  info = [(CRLCanvasRep *)self info];
  v3 = objc_opt_class();
  v9 = sub_1003038E0(info, v3, 1, v4, v5, v6, v7, v8, &OBJC_PROTOCOL___CRLContainerInfo);

  return v9;
}

- (void)setDragRange:(_NSRange)range
{
  location = range.location;
  length = range.length;
  if (!range.length)
  {
    location = self->_dragRange.location;
    length = self->_dragRange.length;
  }

  self->_dragRange = range;
  [(CRLWPRep *)self i_setNeedsErasableDisplayInRange:location, length];
}

- (void)setDropSelection:(id)selection
{
  obj = selection;
  WeakRetained = objc_loadWeakRetained(&self->_dropSelection);

  if (WeakRetained != obj)
  {
    objc_storeWeak(&self->_dropSelection, obj);
    interactiveCanvasController = [(CRLCanvasRep *)self interactiveCanvasController];
    [interactiveCanvasController invalidateOverlayLayersForRep:self];

    v6 = objc_loadWeakRetained(&self->_dropSelection);
    if (v6)
    {
      interactiveCanvasController2 = [(CRLCanvasRep *)self interactiveCanvasController];
      [interactiveCanvasController2 layoutIfNeeded];

      [(CAShapeLayer *)self->_dragAndDropCaretLayer setHidden:0];
    }

    else
    {
      [(CAShapeLayer *)self->_dragAndDropCaretLayer setDelegate:0];
      dragAndDropCaretLayer = self->_dragAndDropCaretLayer;
      self->_dragAndDropCaretLayer = 0;

      self->_dragAndDropCaretLayerIsForCaret = 0;
    }
  }
}

- (CRLWPDragAndDropHelper)dragAndDropHelper
{
  dragAndDropHelper = self->_dragAndDropHelper;
  if (!dragAndDropHelper)
  {
    v4 = [[CRLWPDragAndDropHelper alloc] initWithOwningRep:self];
    v5 = self->_dragAndDropHelper;
    self->_dragAndDropHelper = v4;

    dragAndDropHelper = self->_dragAndDropHelper;
  }

  return dragAndDropHelper;
}

+ (void)initialize
{
  if (objc_opt_class() == self)
  {
    v2 = [CRLColor colorWithRed:0.0 green:0.33 blue:0.65 alpha:0.25];
    v3 = qword_101A34FE0;
    qword_101A34FE0 = v2;

    objc_storeStrong(&qword_101A34FE8, qword_101A34FE0);
    v4 = [CRLColor colorWithWhite:0.1786 alpha:0.25];
    v5 = qword_101A34FF8;
    qword_101A34FF8 = v4;

    objc_storeStrong(&qword_101A34FF0, qword_101A34FF8);
    v6 = [CRLColor colorWithRed:0.22 green:0.22 blue:0.22 alpha:0.11];
    v7 = qword_101A35000;
    qword_101A35000 = v6;
  }
}

- (CRLWPRep)initWithLayout:(id)layout canvas:(id)canvas
{
  layoutCopy = layout;
  canvasCopy = canvas;
  v24.receiver = self;
  v24.super_class = CRLWPRep;
  v8 = [(CRLCanvasRep *)&v24 initWithLayout:layoutCopy canvas:canvasCopy];
  if (v8)
  {
    v9 = objc_opt_class();
    sub_100303920(layoutCopy, v9, 1, v10, v11, v12, v13, v14, &OBJC_PROTOCOL___CRLWPLayoutTarget);

    storage = [v8 storage];

    if (storage)
    {
      [v8 p_registerNotifications];
      v8[573] = 1;
      *(v8 + 23) = xmmword_101464828;
      *(v8 + 392) = xmmword_101464828;
      v8[434] = 1;
      v16 = [[CRLWPRepCaretController alloc] initWithDelegate:v8];
      v17 = *(v8 + 68);
      *(v8 + 68) = v16;

      v18 = [_TtC8Freeform14CRLWPRepHelper forCurrentPlatform:v8];
      v19 = *(v8 + 69);
      *(v8 + 69) = v18;

      p_isRedesignedTextCursorEnabled = [v8 p_isRedesignedTextCursorEnabled];
      v8[337] = p_isRedesignedTextCursorEnabled;
      v8[385] = p_isRedesignedTextCursorEnabled;
      [v8 setIbeamLength:20.0];
      v21 = +[NSUUID UUID];
      v22 = *(v8 + 72);
      *(v8 + 72) = v21;
    }
  }

  return v8;
}

- (void)dealloc
{
  [(CRLWPRep *)self p_teardown];
  v3.receiver = self;
  v3.super_class = CRLWPRep;
  [(CRLCanvasRep *)&v3 dealloc];
}

- (void)setParentRep:(id)rep
{
  repCopy = rep;
  v15.receiver = self;
  v15.super_class = CRLWPRep;
  [(CRLCanvasRep *)&v15 setParentRep:repCopy];
  storage = [(CRLWPRep *)self storage];
  if (storage)
  {
    canvas = [(CRLCanvasRep *)self canvas];
    isCanvasInteractive = [canvas isCanvasInteractive];

    if (isCanvasInteractive)
    {
      v8 = objc_opt_class();
      interactiveCanvasController = [(CRLCanvasRep *)self interactiveCanvasController];
      primaryFindResultSearchReference = [interactiveCanvasController primaryFindResultSearchReference];
      v11 = sub_100014370(v8, primaryFindResultSearchReference);
      v12 = [v11 copy];

      if ([(CRLWPRep *)self p_doesRepIntersectSearchReference:v12])
      {
        [(CRLWPRep *)self p_setPrimaryFindResultSearchReference:v12];
      }

      interactiveCanvasController2 = [(CRLCanvasRep *)self interactiveCanvasController];
      searchReferencesToHighlight = [interactiveCanvasController2 searchReferencesToHighlight];
      [(CRLWPRep *)self i_setSearchReferencesToHighlight:searchReferencesToHighlight];
    }
  }
}

- (void)willBeRemoved
{
  [(CRLWPRep *)self p_teardown];
  v3.receiver = self;
  v3.super_class = CRLWPRep;
  [(CRLCanvasRep *)&v3 willBeRemoved];
}

- (_NSRange)range
{
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  columns = [(CRLWPRep *)self columns];
  v3 = [columns countByEnumeratingWithState:&v15 objects:v19 count:16];
  v4 = 0;
  if (v3)
  {
    v5 = *v16;
    v6 = 0x7FFFFFFFFFFFFFFFLL;
    do
    {
      for (i = 0; i != v3; i = i + 1)
      {
        if (*v16 != v5)
        {
          objc_enumerationMutation(columns);
        }

        v8 = *(*(&v15 + 1) + 8 * i);
        if (v6 == 0x7FFFFFFFFFFFFFFFLL)
        {
          location = [v8 range];
        }

        else
        {
          v22.location = [v8 range];
          v22.length = v11;
          v20.location = v6;
          v20.length = v4;
          v12 = NSUnionRange(v20, v22);
          length = v12.length;
          location = v12.location;
        }

        v6 = location;
        v4 = length;
      }

      v3 = [columns countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v3);
  }

  else
  {
    v6 = 0x7FFFFFFFFFFFFFFFLL;
  }

  v13 = v6;
  v14 = v4;
  result.length = v14;
  result.location = v13;
  return result;
}

- (CGPoint)pinToNaturalBounds:(CGPoint)bounds andLastLineFragment:(BOOL)fragment
{
  fragmentCopy = fragment;
  y = bounds.y;
  x = bounds.x;
  [(CRLCanvasRep *)self naturalBounds];
  [(CRLWPRep *)self p_pinPoint:x toRect:y, v8, v9, v10, v11];
  v41 = v13;
  v42 = v12.f64[0];
  v12.f64[1] = v13;
  v40 = v12;
  if (fragmentCopy)
  {
    v48 = 0u;
    v49 = 0u;
    v46 = 0u;
    v47 = 0u;
    columns = [(CRLWPRep *)self columns];
    v15 = [columns countByEnumeratingWithState:&v46 objects:v50 count:16];
    if (v15)
    {
      v16 = *v47;
      while (2)
      {
        for (i = 0; i != v15; i = i + 1)
        {
          if (*v47 != v16)
          {
            objc_enumerationMutation(columns);
          }

          v18 = *(*(&v46 + 1) + 8 * i);
          [v18 frameBounds];
          v52.y = v41;
          v52.x = v42;
          if (CGRectContainsPoint(v53, v52))
          {
            lineCount = [v18 lineCount];
            if (lineCount)
            {
              [v18 boundsOfLineFragmentAtIndex:lineCount - 1];
              v21 = v20;
              v23 = v22;
              v25 = v24;
              v27 = v26;
              if (v18)
              {
                [v18 transformToWP];
                v28 = v43.f64[1];
                v29 = v44.f64[1];
                v30 = v44.f64[0];
                v31 = v45.f64[1];
                v38 = v45.f64[0];
                v39 = v43.f64[0];
              }

              else
              {
                v31 = 0.0;
                v29 = 0.0;
                v28 = 0.0;
                v38 = 0.0;
                v39 = 0.0;
                v30 = 0.0;
              }

              v54.origin.x = v21;
              v54.origin.y = v23;
              v54.size.width = v25;
              v54.size.height = v27;
              MaxY = CGRectGetMaxY(v54);
              if (v31 + v41 * v29 + v28 * v42 > MaxY)
              {
                if (v18)
                {
                  [v18 transformFromWP];
                  v32 = v43;
                  v33 = v44;
                  v34 = v45;
                }

                else
                {
                  v34 = 0uLL;
                  v32 = 0uLL;
                  v33 = 0uLL;
                }

                v40 = vaddq_f64(v34, vmlaq_n_f64(vmulq_n_f64(v33, MaxY), v32, v38 + v41 * v30 + v39 * v42));
              }
            }

            goto LABEL_20;
          }
        }

        v15 = [columns countByEnumeratingWithState:&v46 objects:v50 count:16];
        if (v15)
        {
          continue;
        }

        break;
      }
    }

LABEL_20:
  }

  v36 = v40.f64[1];
  v35 = v40.f64[0];
  result.y = v36;
  result.x = v35;
  return result;
}

- (CGPoint)pinToClosestColumn:(CGPoint)column
{
  y = column.y;
  x = column.x;
  v6 = [(CRLWPRep *)self closestColumnForPoint:?];
  v7 = v6;
  if (v6)
  {
    [v6 frameBounds];
    [(CRLWPRep *)self p_pinPoint:x toRect:y, v8, v9, v10, v11];
    x = v12;
    y = v13;
  }

  v14 = x;
  v15 = y;
  result.y = v15;
  result.x = v14;
  return result;
}

- (CGRect)caretRect
{
  selection = [(CRLWPRep *)self selection];
  [(CRLWPRep *)self caretRectForSelection:selection];
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

- (CGRect)selectionRect
{
  selection = [(CRLWPRep *)self selection];
  [(CRLWPRep *)self rectForSelection:selection includeRuby:0 includePaginatedAttachments:0];
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

- (BOOL)containsPoint:(CGPoint)point withPrecision:(BOOL)precision
{
  precisionCopy = precision;
  y = point.y;
  x = point.x;
  v12.receiver = self;
  v12.super_class = CRLWPRep;
  if (![CRLCanvasRep containsPoint:"containsPoint:withPrecision:" withPrecision:?])
  {
    return 0;
  }

  parentRep = [(CRLCanvasRep *)self parentRep];

  if (!parentRep)
  {
    return 1;
  }

  parentRep2 = [(CRLCanvasRep *)self parentRep];
  v10 = [parentRep2 containsPoint:precisionCopy withPrecision:{x, y}];

  return v10;
}

- (BOOL)didPointHitSelectionEnd:(CGPoint)end
{
  y = end.y;
  x = end.x;
  selection = [(CRLWPRep *)self selection];
  if (selection)
  {
    v7 = selection;
    selection2 = [(CRLWPRep *)self selection];
    isInsertionPoint = [selection2 isInsertionPoint];

    if (isInsertionPoint)
    {
      LOBYTE(selection) = 0;
    }

    else
    {
      size = CGRectNull.size;
      origin = CGRectNull.origin;
      v20 = size;
      v18.origin = origin;
      v18.size = size;
      canvas = [(CRLCanvasRep *)self canvas];
      [canvas viewScale];
      v13 = v12;

      LODWORD(canvas) = [(CRLWPRep *)self textIsVertical];
      selection3 = [(CRLWPRep *)self selection];
      v15 = [(CRLWPRep *)self p_newSelectionPathForSelection:selection3 transform:0 headPinRect:&origin tailPinRect:&v18];

      CGPathRelease(v15);
      v16 = 1.0 / v13;
      if (canvas)
      {
        origin.y = origin.y - v16;
        v18.origin.y = CGRectGetMaxY(v18) - v16;
      }

      else
      {
        origin.x = origin.x - v16;
        v18.origin.x = CGRectGetMaxX(v18) - v16;
      }

      if (sub_10011FF8C(x, y, origin.x + -2.5, origin.y + -3.5, v20.width + 5.0, v20.height + 7.0) || (LODWORD(selection) = sub_10011FF8C(x, y, v18.origin.x + -2.5, v18.origin.y + -3.5, v18.size.width + 5.0, v18.size.height + 7.0), selection))
      {
        LOBYTE(selection) = 1;
      }
    }
  }

  return selection;
}

- (BOOL)isPointInSelectedArea:(CGPoint)area
{
  y = area.y;
  x = area.x;
  selection = [(CRLWPRep *)self selection];

  if (!selection)
  {
    return 0;
  }

  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  columns = [(CRLWPRep *)self columns];
  v8 = [columns countByEnumeratingWithState:&v28 objects:v33 count:16];
  if (v8)
  {
    v9 = *v29;
    do
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v29 != v9)
        {
          objc_enumerationMutation(columns);
        }

        v11 = *(*(&v28 + 1) + 8 * i);
        selection2 = [(CRLWPRep *)self selection];
        range = [selection2 range];
        v15 = v14;
        selection3 = [(CRLWPRep *)self selection];
        v17 = [v11 rectsForSelectionRange:range selectionType:v15 forParagraphMode:objc_msgSend(selection3 includeRuby:"type") includePaginatedAttachments:{0, 0, 0}];

        v26 = 0u;
        v27 = 0u;
        v24 = 0u;
        v25 = 0u;
        v18 = v17;
        v19 = [v18 countByEnumeratingWithState:&v24 objects:v32 count:16];
        if (v19)
        {
          v20 = *v25;
          while (2)
          {
            for (j = 0; j != v19; j = j + 1)
            {
              if (*v25 != v20)
              {
                objc_enumerationMutation(v18);
              }

              [*(*(&v24 + 1) + 8 * j) CGRectValue];
              v34.x = x;
              v34.y = y;
              if (CGRectContainsPoint(v35, v34))
              {

                v22 = 1;
                goto LABEL_21;
              }
            }

            v19 = [v18 countByEnumeratingWithState:&v24 objects:v32 count:16];
            if (v19)
            {
              continue;
            }

            break;
          }
        }
      }

      v8 = [columns countByEnumeratingWithState:&v28 objects:v33 count:16];
      v22 = 0;
    }

    while (v8);
  }

  else
  {
    v22 = 0;
  }

LABEL_21:

  return v22;
}

- (CGRect)rectForSelection:(id)selection includeRuby:(BOOL)ruby includePaginatedAttachments:(BOOL)attachments
{
  attachmentsCopy = attachments;
  rubyCopy = ruby;
  selectionCopy = selection;
  columns = [(CRLWPRep *)self columns];
  [CRLWPColumn boundsRectForSelection:selectionCopy columnArray:columns includeRuby:rubyCopy includePaginatedAttachments:attachmentsCopy];
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v17 = v16;

  v18 = v11;
  v19 = v13;
  v20 = v15;
  v21 = v17;
  result.size.height = v21;
  result.size.width = v20;
  result.origin.y = v19;
  result.origin.x = v18;
  return result;
}

- (CGPath)newPathForSelection:(id)selection
{
  selectionCopy = selection;
  x = CGRectZero.origin.x;
  y = CGRectZero.origin.y;
  width = CGRectZero.size.width;
  height = CGRectZero.size.height;
  if ([selectionCopy isRange])
  {
    v36 = 0u;
    v37 = 0u;
    v34 = 0u;
    v35 = 0u;
    columns = [(CRLWPRep *)self columns];
    v10 = [columns countByEnumeratingWithState:&v34 objects:v39 count:16];
    if (v10)
    {
      v11 = *v35;
      do
      {
        v12 = 0;
        do
        {
          if (*v35 != v11)
          {
            objc_enumerationMutation(columns);
          }

          v13 = *(*(&v34 + 1) + 8 * v12);
          v30 = 0u;
          v31 = 0u;
          v32 = 0u;
          v33 = 0u;
          range = [selectionCopy range];
          v16 = [v13 rectsForSelectionRange:range selectionType:v15 forParagraphMode:objc_msgSend(selectionCopy includeRuby:"type") includePaginatedAttachments:{0, 0, 1}];
          v17 = [v16 countByEnumeratingWithState:&v30 objects:v38 count:16];
          if (v17)
          {
            v18 = *v31;
            do
            {
              v19 = 0;
              do
              {
                if (*v31 != v18)
                {
                  objc_enumerationMutation(v16);
                }

                [*(*(&v30 + 1) + 8 * v19) CGRectValue];
                v21 = v20;
                v23 = v22;
                v25 = v24;
                v27 = v26;
                v40.origin.x = x;
                v40.origin.y = y;
                v40.size.width = width;
                v40.size.height = height;
                if (CGRectIsEmpty(v40))
                {
                  x = v21;
                  y = v23;
                  width = v25;
                  height = v27;
                }

                else
                {
                  v41.origin.x = x;
                  v41.origin.y = y;
                  v41.size.width = width;
                  v41.size.height = height;
                  v46.origin.x = v21;
                  v46.origin.y = v23;
                  v46.size.width = v25;
                  v46.size.height = v27;
                  v42 = CGRectUnion(v41, v46);
                  x = v42.origin.x;
                  y = v42.origin.y;
                  width = v42.size.width;
                  height = v42.size.height;
                }

                v19 = v19 + 1;
              }

              while (v17 != v19);
              v17 = [v16 countByEnumeratingWithState:&v30 objects:v38 count:16];
            }

            while (v17);
          }

          v12 = v12 + 1;
        }

        while (v12 != v10);
        v10 = [columns countByEnumeratingWithState:&v34 objects:v39 count:16];
      }

      while (v10);
    }
  }

  v43.origin.x = x;
  v43.origin.y = y;
  v43.size.width = width;
  v43.size.height = height;
  if (CGRectIsEmpty(v43))
  {
    Mutable = 0;
  }

  else
  {
    Mutable = CGPathCreateMutable();
    v44.origin.x = x;
    v44.origin.y = y;
    v44.size.width = width;
    v44.size.height = height;
    v45 = CGRectIntegral(v44);
    CGPathAddRect(Mutable, 0, v45);
  }

  return Mutable;
}

- (CGPath)p_newPathForSelection:(id)selection withTransform:(CGAffineTransform *)transform withInset:(double)inset
{
  selectionCopy = selection;
  if ([selectionCopy isRange])
  {
    v36 = 0u;
    v37 = 0u;
    v34 = 0u;
    v35 = 0u;
    obj = [(CRLWPRep *)self columns];
    Mutable = 0;
    v10 = [obj countByEnumeratingWithState:&v34 objects:v39 count:16];
    if (v10)
    {
      v11 = *v35;
      do
      {
        v12 = 0;
        do
        {
          if (*v35 != v11)
          {
            objc_enumerationMutation(obj);
          }

          v13 = *(*(&v34 + 1) + 8 * v12);
          v30 = 0u;
          v31 = 0u;
          v32 = 0u;
          v33 = 0u;
          range = [selectionCopy range];
          v16 = [v13 rectsForSelectionRange:range selectionType:v15 forParagraphMode:objc_msgSend(selectionCopy includeRuby:"type") includePaginatedAttachments:{0, 0, 1}];
          v17 = [v16 countByEnumeratingWithState:&v30 objects:v38 count:16];
          if (v17)
          {
            v18 = *v31;
            do
            {
              v19 = 0;
              do
              {
                if (*v31 != v18)
                {
                  objc_enumerationMutation(v16);
                }

                [*(*(&v30 + 1) + 8 * v19) CGRectValue];
                x = v40.origin.x;
                y = v40.origin.y;
                width = v40.size.width;
                height = v40.size.height;
                if (!CGRectIsNull(v40))
                {
                  v41.origin.x = x;
                  v41.origin.y = y;
                  v41.size.width = width;
                  v41.size.height = height;
                  v42 = CGRectInset(v41, inset, inset);
                  v24 = v42.origin.x;
                  v25 = v42.origin.y;
                  v26 = v42.size.width;
                  v27 = v42.size.height;
                  if (!Mutable)
                  {
                    Mutable = CGPathCreateMutable();
                  }

                  v43.origin.x = v24;
                  v43.origin.y = v25;
                  v43.size.width = v26;
                  v43.size.height = v27;
                  v44 = CGRectIntegral(v43);
                  CGPathAddRect(Mutable, transform, v44);
                }

                v19 = v19 + 1;
              }

              while (v17 != v19);
              v17 = [v16 countByEnumeratingWithState:&v30 objects:v38 count:16];
            }

            while (v17);
          }

          v12 = v12 + 1;
        }

        while (v12 != v10);
        v10 = [obj countByEnumeratingWithState:&v34 objects:v39 count:16];
      }

      while (v10);
    }
  }

  else
  {
    Mutable = 0;
  }

  return Mutable;
}

- (CGRect)caretRectForCharIndex:(unint64_t)index caretAffinity:(unint64_t)affinity
{
  affinity = [[CRLWPSelection alloc] initWithType:0 range:index styleInsertionBehavior:0 caretAffinity:0, affinity];
  [(CRLWPRep *)self p_caretRectForSelection:affinity];
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;

  v14 = v7;
  v15 = v9;
  v16 = v11;
  v17 = v13;
  result.size.height = v17;
  result.size.width = v16;
  result.origin.y = v15;
  result.origin.x = v14;
  return result;
}

- (CGRect)caretRectForCharIndex:(unint64_t)index leadingEdge:(BOOL)edge caretAffinity:(unint64_t)affinity
{
  v9 = [CRLWPSelection alloc];
  storage = [(CRLWPRep *)self storage];
  copyWithMarkedText = [storage copyWithMarkedText];
  LOBYTE(v25) = edge;
  v12 = [(CRLWPSelection *)v9 initWithType:7 range:index styleInsertionBehavior:0 caretAffinity:0 smartFieldRange:affinity leadingEdge:0x7FFFFFFFFFFFFFFFLL storage:0, v25, copyWithMarkedText];

  [(CRLWPRep *)self p_caretRectForSelection:v12];
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v20 = v19;

  v21 = v14;
  v22 = v16;
  v23 = v18;
  v24 = v20;
  result.size.height = v24;
  result.size.width = v23;
  result.origin.y = v22;
  result.origin.x = v21;
  return result;
}

- ($D12B6492C59FD4124ECBBA05678185BF)p_lineMetricsAtPoint:(SEL)point allowNotFound:(CGPoint)found
{
  v5 = a5;
  y = found.y;
  x = found.x;
  memcpy(retstr, &unk_101465F68, sizeof($D12B6492C59FD4124ECBBA05678185BF));
  v10 = [(CRLWPRep *)self closestColumnForPoint:x, y];
  v14 = 0;
  v11 = [v10 charIndexFromPoint:0 allowPastBreak:1 pastCenterGoesToNextChar:v5 allowNotFound:&v14 + 1 isAtEndOfLine:&v14 leadingEdge:{x, y}];
  if (v11 != 0x7FFFFFFFFFFFFFFFLL)
  {
    if (v10)
    {
      [v10 lineMetricsAtCharIndex:v11 allowEndOfLine:HIBYTE(v14)];
    }

    else
    {
      memset(v13, 0, sizeof(v13));
    }

    memcpy(retstr, v13, sizeof($D12B6492C59FD4124ECBBA05678185BF));
  }

  return result;
}

- ($D12B6492C59FD4124ECBBA05678185BF)lineMetricsAtCharIndex:(SEL)index
{
  v6 = [(CRLWPRep *)self columnForCharIndex:?];
  v8 = v6;
  if (v6)
  {
    [v6 lineMetricsAtCharIndex:a4 allowEndOfLine:0];
  }

  else
  {
    retstr->var7.ty = 0.0;
    *&retstr->var7.b = 0u;
    *&retstr->var7.d = 0u;
    *&retstr->var6.xHeight = 0u;
    *&retstr->var6.underlineThickness = 0u;
    *&retstr->var6.leadingAbove = 0u;
    *&retstr->var6.spaceAfter = 0u;
    *&retstr->var6.attachmentHeight = 0u;
    *&retstr->var6.capHeight = 0u;
    retstr->var4.size = 0u;
    *&retstr->var5 = 0u;
    *&retstr->var2.underlineThickness = 0u;
    retstr->var4.origin = 0u;
    *&retstr->var2.spaceAfter = 0u;
    *&retstr->var2.xHeight = 0u;
    *&retstr->var2.capHeight = 0u;
    *&retstr->var2.leadingAbove = 0u;
    *&retstr->var1 = 0u;
    *&retstr->var2.attachmentHeight = 0u;
    retstr->var0.origin = 0u;
    retstr->var0.size = 0u;
  }

  return result;
}

- ($8162D66D923C6F9903B35BCF259B21FE)wordMetricsAtCharIndex:(SEL)index
{
  *&retstr->var5 = xmmword_1014660F0;
  *&retstr->var6.b = unk_101466100;
  *&retstr->var6.d = xmmword_101466110;
  retstr->var6.ty = 0.0;
  retstr->var0.origin = xmmword_1014660B0;
  retstr->var0.size = unk_1014660C0;
  *&retstr->var1 = xmmword_1014660D0;
  *&retstr->var3 = unk_1014660E0;
  storage = [(CRLWPRep *)self storage];
  v8 = [storage wordAtCharIndex:a4 includePreviousWord:0];
  v10 = v9;

  v11 = [CRLWPSelection selectionWithRange:v8, v10];
  [(CRLWPRep *)self rectForSelection:v11 includeRuby:0 includePaginatedAttachments:0];
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v19 = v18;

  retstr->var0.origin.x = v13;
  retstr->var0.origin.y = v15;
  retstr->var0.size.width = v17;
  retstr->var0.size.height = v19;
  memset(v21, 0, sizeof(v21));
  result = [(CRLWPRep *)self lineMetricsAtCharIndex:a4, 0, 0, 0, 0];
  retstr->var1 = 0.0;
  retstr->var2 = 0.0;
  retstr->var3 = 0.0;
  retstr->var4 = 0.0;
  retstr->var6 = *&v21[1];
  return result;
}

- (CGRect)caretRectForSelection:(id)selection
{
  selectionCopy = selection;
  if (selectionCopy)
  {
    [(CRLWPRep *)self p_caretRectForSelection:selectionCopy];
    x = v5;
    y = v7;
    width = v9;
    height = v11;
  }

  else
  {
    x = CGRectNull.origin.x;
    y = CGRectNull.origin.y;
    width = CGRectNull.size.width;
    height = CGRectNull.size.height;
  }

  v13 = x;
  v14 = y;
  v15 = width;
  v16 = height;
  result.size.height = v16;
  result.size.width = v15;
  result.origin.y = v14;
  result.origin.x = v13;
  return result;
}

- (CGRect)p_caretRectForSelection:(id)selection
{
  selectionCopy = selection;
  x = CGRectNull.origin.x;
  y = CGRectNull.origin.y;
  width = CGRectNull.size.width;
  height = CGRectNull.size.height;
  if ([selectionCopy type] != 3 && objc_msgSend(selectionCopy, "type") != 5)
  {
    v26.origin.x = CGRectNull.origin.x;
    v26.origin.y = y;
    v26.size.width = width;
    v26.size.height = height;
    if (CGRectIsNull(v26))
    {
      v23 = 0u;
      v24 = 0u;
      v21 = 0u;
      v22 = 0u;
      columns = [(CRLWPRep *)self columns];
      v10 = [columns countByEnumeratingWithState:&v21 objects:v25 count:16];
      if (v10)
      {
        v11 = *v22;
        while (2)
        {
          for (i = 0; i != v10; i = i + 1)
          {
            if (*v22 != v11)
            {
              objc_enumerationMutation(columns);
            }

            [*(*(&v21 + 1) + 8 * i) caretRectForSelection:selectionCopy];
            if (v16 > 0.0 || v15 > 0.0)
            {
              x = v13;
              y = v14;
              width = v15;
              height = v16;
              goto LABEL_15;
            }
          }

          v10 = [columns countByEnumeratingWithState:&v21 objects:v25 count:16];
          if (v10)
          {
            continue;
          }

          break;
        }
      }

LABEL_15:
    }
  }

  v17 = x;
  v18 = y;
  v19 = width;
  v20 = height;
  result.size.height = v20;
  result.size.width = v19;
  result.origin.y = v18;
  result.origin.x = v17;
  return result;
}

- (CGRect)p_topicDragRectForSelection:(id)selection
{
  selectionCopy = selection;
  x = CGRectNull.origin.x;
  y = CGRectNull.origin.y;
  width = CGRectNull.size.width;
  height = CGRectNull.size.height;
  if (!selectionCopy)
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_1013798D8();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_1013798EC();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_101379988();
    }

    v9 = off_1019EDA68;
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      +[CRLAssertionHandler packedBacktraceString];
      objc_claimAutoreleasedReturnValue();
      sub_10130E89C();
    }

    v10 = [NSString stringWithUTF8String:"[CRLWPRep p_topicDragRectForSelection:]"];
    v11 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLWP/CRLWPRep.mm"];
    [CRLAssertionHandler handleFailureInFunction:v10 file:v11 lineNumber:575 isFatal:0 description:"invalid nil value for '%{public}s'", "sel"];
  }

  v51 = 0u;
  v52 = 0u;
  v49 = 0u;
  v50 = 0u;
  columns = [(CRLWPRep *)self columns];
  v13 = [columns countByEnumeratingWithState:&v49 objects:v53 count:16];
  if (v13)
  {
    v14 = *v50;
    while (2)
    {
      for (i = 0; i != v13; i = i + 1)
      {
        if (*v50 != v14)
        {
          objc_enumerationMutation(columns);
        }

        v16 = *(*(&v49 + 1) + 8 * i);
        [v16 caretRectForSelection:selectionCopy];
        v19 = v18;
        v21 = v20;
        v22 = v17;
        v24 = v23;
        if (v23 > 0.0 || v17 > 0.0)
        {
          textIsVertical = [v16 textIsVertical];
          if (textIsVertical)
          {
            v54.origin.x = v19;
            v54.origin.y = v21;
            v54.size.width = v22;
            v54.size.height = v24;
            MaxX = CGRectGetMaxX(v54);
            [v16 frameBounds];
            MaxY = v27;
            [v16 frameBounds];
            v30 = v29;
            v31 = 1.0;
          }

          else
          {
            [v16 frameBounds];
            MaxX = v32;
            [v16 frameBounds];
            v31 = v33;
            v30 = 1.0;
            MaxY = v21;
          }

          range = [selectionCopy range];
          v48 = xmmword_101464828;
          storage = [(CRLWPRep *)self storage];
          v36 = [storage paragraphIndexAtCharIndex:range effectiveRange:&v48];

          storage2 = [(CRLWPRep *)self storage];
          if (v36 == [storage2 paragraphCount] && *(&v48 + 1))
          {
            v38 = range > v48;

            if (v38)
            {
              v39 = v19;
              v40 = v21;
              v41 = v22;
              v42 = v24;
              if (textIsVertical)
              {
                MaxX = CGRectGetMinX(*&v39);
              }

              else
              {
                MaxY = CGRectGetMaxY(*&v39);
              }
            }
          }

          else
          {
          }

          [(CRLWPRep *)self transformToConvertNaturalToScaledRoot];
          v55.origin.x = MaxX;
          v55.origin.y = MaxY;
          v55.size.width = v31;
          v55.size.height = v30;
          v56 = CGRectApplyAffineTransform(v55, &v47);
          x = v56.origin.x;
          y = v56.origin.y;
          if (textIsVertical)
          {
            height = v56.size.height;
            x = rint(v56.origin.x);
            width = 1.0;
          }

          else
          {
            width = v56.size.width;
            y = rint(v56.origin.y);
            height = 1.0;
          }

          goto LABEL_33;
        }
      }

      v13 = [columns countByEnumeratingWithState:&v49 objects:v53 count:16];
      if (v13)
      {
        continue;
      }

      break;
    }
  }

LABEL_33:

  v43 = x;
  v44 = y;
  v45 = width;
  v46 = height;
  result.size.height = v46;
  result.size.width = v45;
  result.origin.y = v44;
  result.origin.x = v43;
  return result;
}

- (CGRect)p_closestCaretRectForCharacterAtPoint:(CGPoint)point
{
  x = CGRectNull.origin.x;
  y = CGRectNull.origin.y;
  width = CGRectNull.size.width;
  height = CGRectNull.size.height;
  [(CRLWPRep *)self pinToNaturalBounds:1 andLastLineFragment:point.x, point.y];
  v9 = v8;
  v11 = v10;
  layout = [(CRLWPRep *)self layout];
  v13 = [CRLWPColumn charIndexFromPoint:1 allowPastBreak:1 allowNotFound:0 pastCenterGoesToNextChar:0 constrainToAscentAndDescent:0 isAtEndOfLine:0 leadingEdge:v9 inLayoutTarget:v11, layout];

  if (v13 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v35 = 0u;
    v36 = 0u;
    v33 = 0u;
    v34 = 0u;
    columns = [(CRLWPRep *)self columns];
    v15 = [columns countByEnumeratingWithState:&v33 objects:v37 count:16];
    v16 = v13 + 1;
    if (v15)
    {
      v17 = *v34;
      do
      {
        for (i = 0; i != v15; i = i + 1)
        {
          if (*v34 != v17)
          {
            objc_enumerationMutation(columns);
          }

          v19 = *(*(&v33 + 1) + 8 * i);
          range = [v19 range];
          if (v16 >= range && v16 - range < v21)
          {
            v15 = v19;
            goto LABEL_14;
          }
        }

        v15 = [columns countByEnumeratingWithState:&v33 objects:v37 count:16];
      }

      while (v15);
    }

LABEL_14:

    if (v15)
    {
      v23 = v13 + 1;
    }

    else
    {
      v23 = v13;
    }

    v24 = [CRLWPSelection selectionWithRange:v23, 0];
    [(CRLWPRep *)self caretRectForSelection:v24];
    x = v25;
    y = v26;
    width = v27;
    height = v28;
  }

  v29 = x;
  v30 = y;
  v31 = width;
  v32 = height;
  result.size.height = v32;
  result.size.width = v31;
  result.origin.y = v30;
  result.origin.x = v29;
  return result;
}

- (CGRect)p_closestCaretRectForPoint:(CGPoint)point inSelection:(BOOL)selection allowPastBreak:(BOOL)break
{
  breakCopy = break;
  selectionCopy = selection;
  [(CRLWPRep *)self pinToNaturalBounds:1 andLastLineFragment:point.x, point.y];
  v9 = v8;
  v11 = v10;
  v29 = 0;
  layout = [(CRLWPRep *)self layout];
  v13 = [CRLWPColumn charIndexFromPoint:breakCopy allowPastBreak:&v29 isAtEndOfLine:layout inLayoutTarget:v9, v11];

  if (selectionCopy)
  {
    selection = [(CRLWPRep *)self selection];
    isValid = [selection isValid];

    if ((isValid & 1) == 0)
    {
      +[CRLAssertionHandler _atomicIncrementAssertCount];
      if (qword_101AD5A10 != -1)
      {
        sub_1013799B0();
      }

      if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
      {
        sub_1013799D8();
      }

      if (qword_101AD5A10 != -1)
      {
        sub_101379A68();
      }

      v16 = off_1019EDA68;
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        +[CRLAssertionHandler packedBacktraceString];
        objc_claimAutoreleasedReturnValue();
        sub_10130E89C();
      }

      v17 = [NSString stringWithUTF8String:"[CRLWPRep p_closestCaretRectForPoint:inSelection:allowPastBreak:]"];
      v18 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLWP/CRLWPRep.mm"];
      [CRLAssertionHandler handleFailureInFunction:v17 file:v18 lineNumber:667 isFatal:0 description:"invalid text selection"];
    }

    selection2 = [(CRLWPRep *)self selection];
    v20 = v13 < [selection2 start];

    selection3 = [(CRLWPRep *)self selection];
    selection4 = selection3;
    if (v20)
    {
      start = [selection3 start];
LABEL_16:
      v13 = start;

      goto LABEL_17;
    }

    v24 = v13 > [selection3 end];

    if (v24)
    {
      selection4 = [(CRLWPRep *)self selection];
      start = [selection4 end];
      goto LABEL_16;
    }
  }

LABEL_17:
  [(CRLWPRep *)self caretRectForCharIndex:v13 caretAffinity:v29];
  result.size.height = v28;
  result.size.width = v27;
  result.origin.y = v26;
  result.origin.x = v25;
  return result;
}

- (id)cursorAtPoint:(CGPoint)point forKnob:(id)knob withCursorPlatformObject:(id)object
{
  y = point.y;
  x = point.x;
  knobCopy = knob;
  objectCopy = object;
  if (knobCopy)
  {
    v14.receiver = self;
    v14.super_class = CRLWPRep;
    v11 = [(CRLCanvasRep *)&v14 cursorAtPoint:knobCopy forKnob:objectCopy withCursorPlatformObject:x, y];
  }

  else
  {
    v11 = [(CRLWPRep *)self cursorForPoint:objectCopy withCursorPlatformObject:x, y];
  }

  v12 = v11;

  return v12;
}

- (id)cursorForPoint:(CGPoint)point withCursorPlatformObject:(id)object
{
  y = point.y;
  x = point.x;
  canvas = [(CRLCanvasRep *)self canvas];
  canvasController = [canvas canvasController];

  textIsVertical = [(CRLWPRep *)self textIsVertical];
  v9 = [(CRLWPRep *)self p_hyperlinkAtPoint:x, y];
  v10 = v9;
  if (textIsVertical)
  {
    v11 = 1;
  }

  else
  {
    v11 = 2;
  }

  if (v9)
  {
    v66 = CGRectZero.origin.y;
    v67 = CGRectZero.origin.x;
    width = CGRectZero.size.width;
    height = CGRectZero.size.height;
  }

  else
  {
    [(CRLCanvasRep *)self layerFrameInScaledCanvas];
    v66 = v15;
    v67 = v14;
    width = v16;
    height = v17;
  }

  [(CRLWPRep *)self p_closestCaretRectForCharacterAtPoint:x, y];
  v18 = v91.origin.x;
  v19 = v91.origin.y;
  v20 = v91.size.width;
  v21 = v91.size.height;
  if (CGRectIsNull(v91))
  {
    v22 = 0;
  }

  else
  {
    [(CRLCanvasRep *)self convertNaturalPointToUnscaledCanvas:sub_100120414(v18, v19, v20, v21)];
    [canvasController convertUnscaledToBoundsPoint:?];
    v64 = v24;
    v65 = v23;
    if (!v10)
    {
      [canvasController viewScale];
      v26 = sub_10011F340(v20, v21, v25);
      if (!textIsVertical)
      {
        v26 = v27;
      }

      if (v26 > 0.0)
      {
        [(CRLWPRep *)self setIbeamLength:?];
      }
    }

    layout = [(CRLWPRep *)self layout];
    v29 = layout;
    if (layout)
    {
      [layout transformInRoot];
    }

    else
    {
      v71 = 0u;
      memset(&v70, 0, sizeof(v70));
    }

    v30 = sub_100139980(&v70);

    v31 = sub_1004C3204(v30, 90.0);
    sub_1001208E0(v31);
    if (v32 != 0.0 && v32 != 180.0 && fabs(v32 + -180.0) >= 0.00018)
    {
      if (v32 == 90.0 || v32 == 270.0 || fabs(v32 + -90.0) < 0.0000899999998 || fabs(v32 + -270.0) < 0.000269999999)
      {
        if (textIsVertical)
        {
          v11 = 2;
        }

        else
        {
          v11 = 1;
        }
      }

      else
      {
        +[CRLAssertionHandler _atomicIncrementAssertCount];
        if (qword_101AD5A10 != -1)
        {
          sub_101379A90();
        }

        if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
        {
          sub_101379AB8();
        }

        if (qword_101AD5A10 != -1)
        {
          sub_101379B48();
        }

        v61 = off_1019EDA68;
        if (os_log_type_enabled(v61, OS_LOG_TYPE_ERROR))
        {
          +[CRLAssertionHandler packedBacktraceString];
          objc_claimAutoreleasedReturnValue();
          sub_10130E89C();
        }

        v62 = [NSString stringWithUTF8String:"[CRLWPRep cursorForPoint:withCursorPlatformObject:]"];
        v63 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLWP/CRLWPRep.mm"];
        [CRLAssertionHandler handleFailureInFunction:v62 file:v63 lineNumber:763 isFatal:0 description:"Something is wrong with our math"];
      }
    }

    v89 = 0;
    v87 = 0u;
    v88 = 0u;
    v85 = 0u;
    v86 = 0u;
    v83 = 0u;
    v84 = 0u;
    v81 = 0u;
    v82 = 0u;
    v79 = 0u;
    v80 = 0u;
    v77 = 0u;
    v78 = 0u;
    v75 = 0u;
    v76 = 0u;
    v73 = 0u;
    v74 = 0u;
    v71 = 0u;
    v72 = 0u;
    memset(&v70, 0, sizeof(v70));
    [(CRLWPRep *)self p_lineMetricsAtPoint:1 allowNotFound:x, y];
    layout2 = [(CRLWPRep *)self layout];
    v34 = layout2;
    if (layout2)
    {
      [layout2 transformInRoot];
    }

    else
    {
      memset(v69, 0, sizeof(v69));
    }

    v35 = sub_100139B08(v69, 0.01);

    IsEmpty = CGRectIsEmpty(v70);
    if (v10)
    {
      v37 = 1;
    }

    else
    {
      [(CRLWPRep *)self ibeamLength];
      v39 = v38;
      [(CRLWPRep *)self p_maximumBeamLength];
      v37 = v39 <= v40;
    }

    v22 = v35 && !IsEmpty && v37;
    if (v22 == 1)
    {
      if (v11 == 2)
      {
        v92.origin.x = v67;
        v92.origin.y = v66;
        v92.size.width = width;
        v92.size.height = height;
        CGRectGetMaxY(v92);
        v93.origin.x = v67;
        v93.origin.y = v66;
        v93.size.width = width;
        v93.size.height = height;
        CGRectGetMinY(v93);
        v41 = sub_100120604(v67, v66, width, height, v65);
        v43 = v42;
        width = v44;
        height = v45;
        v46 = [NSString stringWithFormat:@"%f", v64];
      }

      else
      {
        v94.origin.x = v67;
        v94.origin.y = v66;
        v94.size.width = width;
        v94.size.height = height;
        MaxX = CGRectGetMaxX(v94);
        v95.origin.x = v67;
        v95.origin.y = v66;
        v95.size.width = width;
        v95.size.height = height;
        MinX = CGRectGetMinX(v95);
        v52 = vabdd_f64(v65, MaxX);
        v53 = vabdd_f64(v65, MinX);
        if (v52 > v53)
        {
          v53 = -v52;
        }

        v41 = sub_100120604(v67, v66, width, height, v65 + v53);
        v43 = v54;
        width = v55;
        height = v56;
        v46 = [NSString stringWithFormat:@"%f", *&v65];
      }

      v47 = v46;
      v66 = v43;
      v67 = v41;
      if (v10)
      {
        goto LABEL_34;
      }

      goto LABEL_39;
    }
  }

  v47 = &stru_1018BCA28;
  if (v10)
  {
LABEL_34:
    v48 = 0;
    height = +[CRLCursor defaultCursor];
    goto LABEL_42;
  }

LABEL_39:
  [(CRLWPRep *)self ibeamLength];
  v57 = [UIPointerShape beamWithPreferredLength:v11 axis:?];
  height = [CRLCursor cursorWithShape:v57 activeScaledRect:v67, v66, width, height];
  [(CRLWPRep *)self ibeamLength];
  v59 = @"H";
  if (v11 == 2)
  {
    v59 = @"V";
  }

  v48 = [NSString stringWithFormat:@"%f%@%@", v58, v59, v47];
  [(CRLWPRep *)self setIbeamLength:20.0];
  [height setIdentifierSuffix:v48];

LABEL_42:
  if (v22)
  {
    [height setConstrainedAxes:v11];
  }

  return height;
}

- (void)p_registerNotifications
{
  canvas = [(CRLCanvasRep *)self canvas];
  isCanvasInteractive = [canvas isCanvasInteractive];

  if (isCanvasInteractive)
  {
    storage = [(CRLWPRep *)self storage];
    v4 = +[NSNotificationCenter defaultCenter];
    [v4 addObserver:self selector:"p_selectionChangedNotification:" name:@"CRLTPEditorSelectionChanged" object:storage];
    [v4 addObserver:self selector:"p_markChangedNotification:" name:@"CRLWPEditorMarkChanged" object:storage];
    [v4 addObserver:self selector:"p_editingDidEndNotification:" name:@"CRLWPEditorEditingDidEnd" object:storage];
  }
}

- (void)p_unregisterNotifications
{
  canvas = [(CRLCanvasRep *)self canvas];
  isCanvasInteractive = [canvas isCanvasInteractive];

  if (isCanvasInteractive)
  {
    storage = [(CRLWPRep *)self storage];
    v4 = +[NSNotificationCenter defaultCenter];
    [v4 removeObserver:self name:@"CRLTPEditorSelectionChanged" object:storage];
    [v4 removeObserver:self name:@"CRLWPEditorMarkChanged" object:storage];
    [v4 removeObserver:self name:@"CRLWPEditorEditingDidEnd" object:storage];
  }
}

- (id)newTrackerForKnob:(id)knob
{
  knobCopy = knob;
  if (!knobCopy)
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_101379B70();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_101379B84();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_101379C20();
    }

    v5 = off_1019EDA68;
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      +[CRLAssertionHandler packedBacktraceString];
      objc_claimAutoreleasedReturnValue();
      sub_10130E89C();
    }

    v6 = [NSString stringWithUTF8String:"[CRLWPRep newTrackerForKnob:]"];
    v7 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLWP/CRLWPRep.mm"];
    [CRLAssertionHandler handleFailureInFunction:v6 file:v7 lineNumber:850 isFatal:0 description:"invalid nil value for '%{public}s'", "knob"];
  }

  v8 = [[CRLWPTextKnobTracker alloc] initWithRep:self knob:knobCopy];

  return v8;
}

- (id)knobPositioner
{
  v3 = objc_opt_class();
  layout = [(CRLWPRep *)self layout];
  v5 = sub_100014370(v3, layout);

  if (v5)
  {
    v6 = [[_TtC8Freeform22CRLWPKnobPositioning_i alloc] initWithLayout:v5];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (CGPoint)knobCenterForSelection:(id)selection knob:(id)knob
{
  selectionCopy = selection;
  knobCopy = knob;
  knobPositioner = [(CRLWPRep *)self knobPositioner];
  v9 = knobPositioner;
  if (knobPositioner)
  {
    [knobPositioner knobCenterForSelection:selectionCopy knob:knobCopy];
    v11 = v10;
    v13 = v12;
  }

  else
  {
    v11 = 0x7FF0000000000000;
    v13 = 0x7FF0000000000000;
  }

  v14 = *&v11;
  v15 = *&v13;
  result.y = v15;
  result.x = v14;
  return result;
}

- (double)knobOffsetForKnob:(id)knob paragraphMode:(BOOL)mode
{
  knobCopy = knob;
  renderable = [knobCopy renderable];
  [renderable bounds];
  Height = CGRectGetHeight(v16);

  interactiveCanvasController = [(CRLCanvasRep *)self interactiveCanvasController];
  [interactiveCanvasController viewScale];
  v11 = v10;

  v12 = [knobCopy tag];
  v13 = Height * 0.5;
  v14 = 0.0;
  if (v12 == 11)
  {
    if (!mode)
    {
      v14 = 0.0 - (v13 / v11 + -1.0);
    }
  }

  else if (!mode)
  {
    v14 = v13 / v11 + -1.0;
  }

  return v14;
}

- (int64_t)tilingMode
{
  if ([(CRLWPRep *)self textIsVertical])
  {
    return 5;
  }

  else
  {
    return 4;
  }
}

- (void)verticalTextPropertyChanged
{
  [(CRLWPRep *)self p_destroyLayer:1];
  [(CRLWPRep *)self p_destroyLayer:0];
  [(CRLWPRep *)self p_createLayer:1];
  [(CRLWPRep *)self p_createLayer:0];
  dragAndDropTopicIndentLayer = self->_dragAndDropTopicIndentLayer;
  self->_dragAndDropTopicIndentLayer = 0;
}

- (void)processChangedProperty:(unint64_t)property
{
  v5.receiver = self;
  v5.super_class = CRLWPRep;
  [(CRLCanvasRep *)&v5 processChangedProperty:?];
  if (property != 7 && property != 29)
  {
    if (property != 30)
    {
      return;
    }

    [(CRLWPStorageSpellChecker *)self->_spellChecker i_resetSpellCheckingForNotification:0];
  }

  [(CRLWPRep *)self setNeedsDisplay];
}

- (void)spellCheckingStateChanged
{
  [(CRLWPRep *)self setNeedsDisplay];
  if ([(CRLWPRep *)self p_needsSpellChecker])
  {
    if (!self->_spellChecker)
    {

      [(CRLWPRep *)self p_createSpellChecker];
    }
  }

  else
  {

    [(CRLWPRep *)self p_destroySpellChecker];
  }
}

- (id)p_hyperlinkAtPoint:(CGPoint)point
{
  y = point.y;
  x = point.x;
  v6 = objc_opt_class();
  v7 = [(CRLWPRep *)self smartFieldAtPoint:x, y];
  v8 = sub_100014370(v6, v7);

  return v8;
}

- (void)performBlockOnTextLayers:(id)layers
{
  layersCopy = layers;
  v5 = 0;
  textLayers = self->_textLayers;
  v9 = layersCopy;
  v7 = 1;
  do
  {
    v8 = v7;
    if (textLayers[v5])
    {
      v9[2]();
    }

    v7 = 0;
    v5 = 1;
  }

  while ((v8 & 1) != 0);
}

- (void)setNeedsDisplay
{
  canvas = [(CRLCanvasRep *)self canvas];
  isCanvasInteractive = [canvas isCanvasInteractive];

  if (isCanvasInteractive)
  {
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_10046A9B0;
    v8[3] = &unk_101864FE8;
    v8[4] = self;
    [(CRLWPRep *)self performBlockOnTextLayers:v8];
    v5 = objc_opt_class();
    parentRep = [(CRLCanvasRep *)self parentRep];
    v7 = sub_100014370(v5, parentRep);

    [v7 invalidateEffectLayersForChildren];
  }
}

- (void)setNeedsDisplayInRange:(_NSRange)range
{
  v4 = [CRLWPSelection selectionWithRange:range.location, range.length];
  [CRLWPRep rectForSelection:"rectForSelection:includeRuby:includePaginatedAttachments:" includeRuby:? includePaginatedAttachments:?];
  [(CRLWPRep *)self setNeedsDisplayInRect:?];
}

- (void)setNeedsDisplayInRect:(CGRect)rect
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  if (!CGRectIsEmpty(rect))
  {
    canvas = [(CRLCanvasRep *)self canvas];
    isCanvasInteractive = [canvas isCanvasInteractive];

    if (isCanvasInteractive)
    {
      [(CRLCanvasRep *)self convertNaturalRectToLayerRelative:x, y, width, height];
      v17[0] = _NSConcreteStackBlock;
      v17[1] = 3221225472;
      v17[2] = sub_10046AC10;
      v17[3] = &unk_101865010;
      v17[4] = self;
      v17[5] = v10;
      v17[6] = v11;
      v17[7] = v12;
      v17[8] = v13;
      [(CRLWPRep *)self performBlockOnTextLayers:v17];
      v14 = objc_opt_class();
      parentRep = [(CRLCanvasRep *)self parentRep];
      v16 = sub_100014370(v14, parentRep);

      [v16 invalidateEffectLayersForChildren];
    }
  }
}

- (id)colorBehindLayer:(id)layer
{
  layerCopy = layer;
  backgroundColor = [(CRLWPRep *)self backgroundColor];
  if (!backgroundColor)
  {
    v6 = objc_opt_class();
    parentRep = [(CRLCanvasRep *)self parentRep];
    v8 = sub_100014370(v6, parentRep);

    backgroundColor = [v8 colorBehindLayer:layerCopy];
  }

  return backgroundColor;
}

- (void)drawInLayerContext:(CGContext *)context
{
  +[CRLAssertionHandler _atomicIncrementAssertCount];
  if (qword_101AD5A10 != -1)
  {
    sub_101379C48();
  }

  if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
  {
    sub_101379C5C();
  }

  if (qword_101AD5A10 != -1)
  {
    sub_101379CEC();
  }

  v3 = off_1019EDA68;
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    +[CRLAssertionHandler packedBacktraceString];
    objc_claimAutoreleasedReturnValue();
    sub_10130E89C();
  }

  v4 = [NSString stringWithUTF8String:"[CRLWPRep drawInLayerContext:]"];
  v5 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLWP/CRLWPRep.mm"];
  [CRLAssertionHandler handleFailureInFunction:v4 file:v5 lineNumber:1039 isFatal:0 description:"this method should never be called, and WP reps should never get a bitmap allocated"];
}

- (void)p_drawInContext:(CGContext *)context limitSelection:(id)selection suppressInvisibles:(BOOL)invisibles
{
  selectionCopy = selection;
  CGContextSaveGState(context);
  LOBYTE(v8) = invisibles;
  [(CRLWPRep *)self p_drawTextInLayer:0 context:context limitSelection:selectionCopy rubyGlyphRange:0x7FFFFFFFFFFFFFFFLL renderMode:0 suppressInvisibles:3, v8];
  CGContextRestoreGState(context);
}

- (void)drawRubyInContext:(CGContext *)context rubyFieldStart:(unint64_t)start rubyGlyphRange:(_NSRange)range
{
  length = range.length;
  location = range.location;
  storage = [(CRLWPRep *)self storage];
  v11 = [storage smartFieldAtCharIndex:start attributeKind:7 effectiveRange:&v15];

  if (v16)
  {
    CGContextSaveGState(context);
    v12 = [CRLWPSelection alloc];
    v13 = [(CRLWPSelection *)v12 initWithRange:v15, v16];
    LOBYTE(v14) = 0;
    [(CRLWPRep *)self p_drawTextInLayer:0 context:context limitSelection:v13 rubyGlyphRange:location renderMode:length suppressInvisibles:3, v14];
    CGContextRestoreGState(context);
  }
}

- (id)overlayRenderables
{
  v53.receiver = self;
  v53.super_class = CRLWPRep;
  overlayRenderables = [(CRLCanvasRep *)&v53 overlayRenderables];
  v4 = [overlayRenderables mutableCopy];

  if (!self->_selectionLineLayers[0])
  {
    [(CRLWPRep *)self p_createSelectionLineLayers];
  }

  v5 = 0;
  v6 = 1;
  do
  {
    v7 = v6;
    v8 = [CRLCanvasRenderable renderableFromLayer:self->_selectionLineLayers[v5]];
    [v4 addObject:v8];

    v6 = 0;
    v5 = 1;
  }

  while ((v7 & 1) != 0);
  if (self->_caretPulseController)
  {
    interactiveCanvasController = [(CRLCanvasRep *)self interactiveCanvasController];
    layer = [(CRLHighlightController *)self->_caretPulseController layer];
    [layer setDelegate:interactiveCanvasController];

    layer2 = [(CRLHighlightController *)self->_caretPulseController layer];
    v12 = [CRLCanvasRenderable renderableFromLayer:layer2];
    [v4 addObject:v12];
  }

  interactiveCanvasController2 = [(CRLCanvasRep *)self interactiveCanvasController];
  canvas = [interactiveCanvasController2 canvas];
  [canvas contentsScale];
  v16 = v15;

  if (![(CRLCanvasRep *)self shouldShowDragAndDropHighlight])
  {
    WeakRetained = objc_loadWeakRetained(&self->_dropSelection);
    if (!WeakRetained)
    {
      goto LABEL_28;
    }

    goto LABEL_16;
  }

  dragAndDropHelper = [(CRLWPRep *)self dragAndDropHelper];
  [dragAndDropHelper dragAndDropNaturalPoint];
  v18 = sub_1001228B4();

  if (v18)
  {
    WeakRetained = 0;
    goto LABEL_28;
  }

  storage = [(CRLWPRep *)self storage];
  storageForDragDropOperation = [(CRLWPRep *)self storageForDragDropOperation];

  if (storage == storageForDragDropOperation)
  {
    dragAndDropHelper2 = [(CRLWPRep *)self dragAndDropHelper];
    [dragAndDropHelper2 dragAndDropNaturalPoint];
    [(CRLWPRep *)self selectionForDragAndDropNaturalPoint:?];
  }

  else
  {
    dragAndDropHelper2 = [(CRLWPRep *)self storage];
    range = [dragAndDropHelper2 range];
    [CRLWPSelection selectionWithRange:range, v24];
  }
  WeakRetained = ;

  if (WeakRetained)
  {
LABEL_16:
    if ([WeakRetained isRange])
    {
      if (self->_dragAndDropCaretLayerIsForCaret)
      {
        [(CAShapeLayer *)self->_dragAndDropCaretLayer setDelegate:0];
        dragAndDropCaretLayer = self->_dragAndDropCaretLayer;
        self->_dragAndDropCaretLayer = 0;

        self->_dragAndDropCaretLayerIsForCaret = 0;
      }

      if (!self->_dragAndDropCaretLayer)
      {
        v26 = objc_alloc_init(CAShapeLayer);
        v27 = self->_dragAndDropCaretLayer;
        self->_dragAndDropCaretLayer = v26;

        v28 = self->_dragAndDropCaretLayer;
        [(CAShapeLayer *)v28 setContentsScale:v16];
        [(CAShapeLayer *)v28 setAnchorPoint:CGPointZero.x, CGPointZero.y];
        [(CAShapeLayer *)v28 setEdgeAntialiasingMask:0];
        [(CAShapeLayer *)v28 setDelegate:self];
        [(CAShapeLayer *)v28 setZPosition:1.0];
        [(CAShapeLayer *)v28 setFillColor:0];
        [(CAShapeLayer *)v28 setStrokeColor:[(CRLWPRep *)self p_highlightLineColor]];
      }

      range2 = [WeakRetained range];
      v31 = v30;
      columns = [(CRLWPRep *)self columns];
      v33 = [CRLWPColumn pathForHighlightWithRange:range2 columnArray:v31 pathStyle:columns, 0];

      pathByNormalizingClosedPathToRemoveSelfIntersections = [v33 pathByNormalizingClosedPathToRemoveSelfIntersections];

      [(CRLWPRep *)self transformToConvertNaturalToScaledRoot];
      [pathByNormalizingClosedPathToRemoveSelfIntersections transformUsingAffineTransform:&v52];
      -[CAShapeLayer setPath:](self->_dragAndDropCaretLayer, "setPath:", [pathByNormalizingClosedPathToRemoveSelfIntersections CGPath]);
      v35 = [CRLCanvasRenderable renderableFromLayer:self->_dragAndDropCaretLayer];
      [v4 addObject:v35];
    }

    else
    {
      if (!self->_dragAndDropCaretLayerIsForCaret)
      {
        [(CAShapeLayer *)self->_dragAndDropCaretLayer setDelegate:0];
        v36 = self->_dragAndDropCaretLayer;
        self->_dragAndDropCaretLayer = 0;
      }

      v37 = self->_dragAndDropCaretLayer;
      if (!v37)
      {
        v38 = [(CRLWPRep *)self p_caretLayerWithZPosition:1.0];
        v39 = self->_dragAndDropCaretLayer;
        self->_dragAndDropCaretLayer = v38;

        self->_dragAndDropCaretLayerIsForCaret = 1;
        [(CAShapeLayer *)self->_dragAndDropCaretLayer setHidden:1];
        v37 = self->_dragAndDropCaretLayer;
      }

      [(CRLWPRep *)self p_positionCaretLayer:v37 forSelection:WeakRetained layerRelative:0];
      pathByNormalizingClosedPathToRemoveSelfIntersections = [CRLCanvasRenderable renderableFromLayer:self->_dragAndDropCaretLayer];
      [v4 addObject:pathByNormalizingClosedPathToRemoveSelfIntersections];
    }
  }

LABEL_28:
  floatingCaretLayer = [(CRLWPRep *)self floatingCaretLayer];

  if (floatingCaretLayer)
  {
    floatingCaretLayer2 = [(CRLWPRep *)self floatingCaretLayer];
    v42 = [CRLCanvasRenderable renderableFromLayer:floatingCaretLayer2];
    [v4 addObject:v42];
  }

  pulseArrayController = self->_pulseArrayController;
  if (pulseArrayController)
  {
    layers = [(CRLWPHighlightArrayController *)pulseArrayController layers];
    if ([layers count])
    {
      interactiveCanvasController3 = [(CRLCanvasRep *)self interactiveCanvasController];
      [layers makeObjectsPerformSelector:"setDelegate:" withObject:interactiveCanvasController3];

      v46 = [CRLCanvasRenderable renderablesFromLayers:layers];
      [v4 addObjectsFromArray:v46];
    }
  }

  highlightArrayController = self->_highlightArrayController;
  if (highlightArrayController)
  {
    layers2 = [(CRLWPHighlightArrayController *)highlightArrayController layers];
    if ([layers2 count])
    {
      interactiveCanvasController4 = [(CRLCanvasRep *)self interactiveCanvasController];
      [layers2 makeObjectsPerformSelector:"setDelegate:" withObject:interactiveCanvasController4];

      v50 = [CRLCanvasRenderable renderablesFromLayers:layers2];
      [v4 addObjectsFromArray:v50];
    }
  }

  return v4;
}

- (void)addAdditionalChildLayersToArray:(id)array
{
  arrayCopy = array;
  caretLayer = self->_caretLayer;
  v5 = caretLayer == 0;
  if (!caretLayer)
  {
    v6 = [(CRLWPRep *)self p_caretLayerWithZPosition:0.5];
    v7 = self->_caretLayer;
    self->_caretLayer = v6;

    [(CRLWPRepCaretController *)self->_caretController setCaretLayer:self->_caretLayer];
    [(CRLWPRepHelper *)self->_repHelper configureCaretLayer:self->_caretLayer];
  }

  if (!self->_selectionHighlightLayer)
  {
    [(CRLWPRep *)self p_createSelectionHighlightLayer];
    v5 = 1;
  }

  if (!self->_selectionParagraphBorderLayer)
  {
    [(CRLWPRep *)self p_createSelectionParagraphBorderLayer];
  }

  if (!self->_markHighlightLayer)
  {
    [(CRLWPRep *)self p_createMarkHighlightLayer];
  }

  if (v5)
  {
    [(CRLWPRep *)self p_updateForCurrentSelectionWithFlags:0];
  }

  if (self->_markHighlightLayer)
  {
    [arrayCopy addObject:?];
  }

  if (self->_selectionHighlightLayer)
  {
    [arrayCopy addObject:?];
  }

  if (self->_smartFieldHighlightLayer)
  {
    [arrayCopy addObject:?];
  }

  if (self->_secondaryHighlightLayer)
  {
    [arrayCopy addObject:?];
  }

  textLayer = [(CRLWPRep *)self textLayer];

  if (!textLayer)
  {
    [(CRLWPRep *)self p_createLayer:1];
  }

  textLayer2 = [(CRLWPRep *)self textLayer];

  if (textLayer2)
  {
    textLayer3 = [(CRLWPRep *)self textLayer];
    [arrayCopy addObject:textLayer3];
  }

  if (self->_selectionParagraphBorderLayer)
  {
    [arrayCopy addObject:?];
  }

  [arrayCopy addObject:self->_caretLayer];
  if ([(CRLWPRep *)self shouldShowCollaboratorCursorHighlight]&& ![(CRLWPRep *)self shouldAddCollaboratorLayerToOverlays])
  {
    collaboratorCursorRenderable = [(CRLWPRep *)self collaboratorCursorRenderable];
    layer = [collaboratorCursorRenderable layer];

    if (layer)
    {
      [arrayCopy addObject:layer];
    }
  }
}

- (BOOL)shouldShowEditMenu
{
  canvas = [(CRLCanvasRep *)self canvas];
  if (![canvas isCanvasInteractive])
  {
    goto LABEL_12;
  }

  isBeingEdited = [(CRLWPRep *)self isBeingEdited];

  if (isBeingEdited)
  {
    canvas = [(CRLWPRep *)self textEditor];
    interactiveCanvasController = [(CRLCanvasRep *)self interactiveCanvasController];
    textInputResponder = [interactiveCanvasController textInputResponder];
    if ([textInputResponder scribbleInProgress])
    {
      LOBYTE(v7) = 0;
    }

    else
    {
      interactiveCanvasController2 = [(CRLCanvasRep *)self interactiveCanvasController];
      textInputResponder2 = [interactiveCanvasController2 textInputResponder];
      v7 = [textInputResponder2 sceneAnimationInProgress] ^ 1;
    }

    textSelectionDelegate = [canvas textSelectionDelegate];
    selectedTextRange = [textSelectionDelegate selectedTextRange];
    isInsertionPointRange = [selectedTextRange isInsertionPointRange];

    if (!isInsertionPointRange)
    {
      goto LABEL_13;
    }

    if ([canvas editMenuIsVisible])
    {
      [canvas hideEditMenu];
    }

    else if (![(CRLWPRep *)self shouldIgnoreFirstRequestToShowEditMenu])
    {
LABEL_13:

      return v7;
    }

    [(CRLWPRep *)self setShouldIgnoreFirstRequestToShowEditMenu:0];
LABEL_12:
    LOBYTE(v7) = 0;
    goto LABEL_13;
  }

  LOBYTE(v7) = 0;
  return v7;
}

- (void)refreshEditMenu
{
  if (![(CRLWPRep *)self isBeingEdited])
  {
    return;
  }

  self->_hudStateDirty = 1;
  if ([(CRLWPRep *)self p_isRedesignedTextCursorEnabled])
  {
    textEditor = [(CRLWPRep *)self textEditor];
    textSelectionManager = [textEditor textSelectionManager];
    displayingSelectionView = [textSelectionManager displayingSelectionView];

    if (!displayingSelectionView)
    {
      return;
    }
  }

  else if ([(CRLWPRepCaretController *)self->_caretController suppressCaret])
  {
    return;
  }

  range1 = [(CRLCanvasRep *)self interactiveCanvasController];
  if (![range1 textGesturesInFlight])
  {
    interactiveCanvasController = [(CRLCanvasRep *)self interactiveCanvasController];
    if ([interactiveCanvasController currentlyScrolling])
    {

      goto LABEL_10;
    }

    layout = [(CRLWPRep *)self layout];
    layoutIsValid = [layout layoutIsValid];

    if (!layoutIsValid)
    {
      return;
    }

    layout2 = [(CRLWPRep *)self layout];
    columns = [layout2 columns];

    firstObject = [columns firstObject];
    lastObject = [columns lastObject];
    v13 = lastObject;
    if (firstObject && lastObject)
    {
      range = [firstObject range];
      v16 = v15;
      v33.location = [v13 range];
      v33.length = v17;
      v31.location = range;
      v31.length = v16;
      v18 = NSUnionRange(v31, v33);
      selection = [(CRLWPRep *)self selection];
      range2 = [selection range];
      range1a = v21;
      v22 = range2;

      selection2 = [(CRLWPRep *)self selection];
      isInsertionPoint = [selection2 isInsertionPoint];

      if (isInsertionPoint)
      {
        v25 = v22 - v18.location < v18.length && v22 >= v18.location;
        if (v25 || v18.location + v18.length == v22)
        {
LABEL_24:
          if ([(CRLWPRep *)self shouldShowEditMenu])
          {
            interactiveCanvasController2 = [(CRLCanvasRep *)self interactiveCanvasController];
            v29[0] = _NSConcreteStackBlock;
            v29[1] = 3221225472;
            v29[2] = sub_10046BF10;
            v29[3] = &unk_10183F960;
            v29[4] = self;
            [interactiveCanvasController2 performBlockOnMainThreadAfterLayoutIfNecessary:v29];

            self->_hudStateDirty = 0;
          }
        }
      }

      else
      {
        v32.location = v22;
        v32.length = range1a;
        if (NSIntersectionRange(v32, v18).length)
        {
          goto LABEL_24;
        }
      }
    }

    return;
  }

LABEL_10:
}

- (void)updateFromLayout
{
  v26.receiver = self;
  v26.super_class = CRLWPRep;
  [(CRLCanvasRep *)&v26 updateFromLayout];
  if ([(CRLWPRep *)self p_needsSpellChecker])
  {
    if (!self->_spellChecker)
    {
      [(CRLWPRep *)self range];
      if (v3)
      {
        layout = [(CRLWPRep *)self layout];
        isInstructional = [layout isInstructional];

        if ((isInstructional & 1) == 0)
        {
          [(CRLWPRep *)self p_createSpellChecker];
        }
      }
    }
  }

  else
  {
    [(CRLWPRep *)self p_destroySpellChecker];
  }

  if (self->_selectionChanged)
  {
    [(CRLWPRep *)self p_updateForCurrentSelectionWithFlags:self->_newSelectionFlags];
    [(CRLWPRep *)self i_setNeedsDisplayForSelectionChange];
    self->_selectionChanged = 0;
  }

  selection = [(CRLWPRep *)self selection];
  isRange = [selection isRange];

  if (isRange)
  {
    [(CRLCanvasRep *)self invalidateKnobPositions];
  }

  if (self->_markChanged)
  {
    [(CRLWPRep *)self p_updateMarkHighlightLayer];
  }

  highlightArrayController = self->_highlightArrayController;
  if (!highlightArrayController)
  {
    if (!self->_searchHitsAreInvalid)
    {
      goto LABEL_18;
    }

    goto LABEL_17;
  }

  [(CRLWPHighlightArrayController *)highlightArrayController viewScale];
  v10 = v9;
  canvas = [(CRLCanvasRep *)self canvas];
  [canvas viewScale];
  if (v10 != v12)
  {

LABEL_17:
    [(CRLWPRep *)self p_updateHighlights];
    goto LABEL_18;
  }

  searchHitsAreInvalid = self->_searchHitsAreInvalid;

  if (searchHitsAreInvalid)
  {
    goto LABEL_17;
  }

LABEL_18:
  pulseArrayController = self->_pulseArrayController;
  if (!pulseArrayController)
  {
    if (!self->_searchHitsAreInvalid)
    {
      goto LABEL_23;
    }

    goto LABEL_22;
  }

  [(CRLWPHighlightArrayController *)pulseArrayController viewScale];
  v15 = v14;
  canvas2 = [(CRLCanvasRep *)self canvas];
  [canvas2 viewScale];
  if (v15 != v17)
  {

LABEL_22:
    [(CRLWPRep *)self p_updateAnimationWithAnimatingPulse:[(CRLWPHighlightArrayController *)self->_pulseArrayController shouldPulsate]];
    goto LABEL_23;
  }

  v25 = self->_searchHitsAreInvalid;

  if (v25)
  {
    goto LABEL_22;
  }

LABEL_23:
  if (self->_secondaryHighlightLayer)
  {
    [(CRLWPRep *)self p_updateSecondaryHighlightLayer];
  }

  self->_searchHitsAreInvalid = 0;
  v18 = objc_opt_class();
  layout2 = [(CRLWPRep *)self layout];
  v20 = sub_100014370(v18, layout2);

  LODWORD(layout2) = [(CRLWPRep *)self hasOverflowed];
  if (layout2 != [v20 isOverflowing])
  {
    -[CRLWPRep setHasOverflowed:](self, "setHasOverflowed:", [v20 isOverflowing]);
    canvas3 = [(CRLCanvasRep *)self canvas];
    canvasController = [canvas3 canvasController];
    parentRep = [(CRLCanvasRep *)self parentRep];
    [canvasController invalidateOverlayLayersForRep:parentRep];
  }
}

- (CGRect)p_clipRect:(CGRect)rect
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  columns = [(CRLWPRep *)self columns];
  v9 = [columns countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v9)
  {
    v10 = *v21;
    do
    {
      v11 = 0;
      do
      {
        if (*v21 != v10)
        {
          objc_enumerationMutation(columns);
        }

        [*(*(&v20 + 1) + 8 * v11) erasableBounds:0];
        v28.origin.x = v12;
        v28.origin.y = v13;
        v28.size.width = v14;
        v28.size.height = v15;
        v25.origin.x = x;
        v25.origin.y = y;
        v25.size.width = width;
        v25.size.height = height;
        v26 = CGRectUnion(v25, v28);
        x = v26.origin.x;
        y = v26.origin.y;
        width = v26.size.width;
        height = v26.size.height;
        v11 = v11 + 1;
      }

      while (v9 != v11);
      v9 = [columns countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v9);
  }

  [(CRLWPRep *)self newTextLayerUnscaledBounds:x forNewTextBounds:y, width, height, x, y, width, height];
  result.size.height = v19;
  result.size.width = v18;
  result.origin.y = v17;
  result.origin.x = v16;
  return result;
}

- (CGRect)clipRect
{
  v7.receiver = self;
  v7.super_class = CRLWPRep;
  [(CRLCanvasRep *)&v7 clipRect];
  [(CRLWPRep *)self p_clipRect:?];
  result.size.height = v6;
  result.size.width = v5;
  result.origin.y = v4;
  result.origin.x = v3;
  return result;
}

- (void)didUpdateRenderable:(id)renderable
{
  renderableCopy = renderable;
  v40.receiver = self;
  v40.super_class = CRLWPRep;
  [(CRLCanvasRep *)&v40 didUpdateRenderable:renderableCopy];
  layer = [renderableCopy layer];
  if (!-[CRLCanvasRep isBeingRotated](self, "isBeingRotated") || (-[CRLWPRep layout](self, "layout"), v6 = objc_claimAutoreleasedReturnValue(), v7 = [v6 wantsNormalLayoutDuringDynamicRotation], v6, v7))
  {
    [(CRLWPRep *)self p_clipRect:CGRectNull.origin.x, CGRectNull.origin.y, CGRectNull.size.width, CGRectNull.size.height];
    v9 = v8;
    v11 = v10;
    v13 = v12;
    v15 = v14;
    layout = [(CRLWPRep *)self layout];
    v17 = layout;
    if (layout)
    {
      [layout transformInRoot];
    }

    else
    {
      memset(&v39, 0, sizeof(v39));
    }

    v42.origin.x = v9;
    v42.origin.y = v11;
    v42.size.width = v13;
    v42.size.height = v15;
    CGRectApplyAffineTransform(v42, &v39);

    layout2 = [(CRLWPRep *)self layout];
    [layout2 frameInRoot];

    interactiveCanvasController = [(CRLCanvasRep *)self interactiveCanvasController];
    v41 = SyncEvent.FetchedRecordZoneChanges.Deletion.init(recordID:recordType:)(interactiveCanvasController, v20);
    [interactiveCanvasController convertUnscaledToBoundsRect:v41.recordType._object];
    v22 = v21;
    v24 = v23;
    v26 = v25;
    v28 = v27;

    v43.origin.x = v22;
    v43.origin.y = v24;
    v43.size.width = v26;
    v43.size.height = v28;
    v44 = CGRectIntegral(v43);
    x = v44.origin.x;
    y = v44.origin.y;
    width = v44.size.width;
    height = v44.size.height;
    if (!CGRectIsNull(v44) && (sub_100122890() & 1) == 0)
    {
      v33[0] = _NSConcreteStackBlock;
      v33[1] = 3221225472;
      v33[2] = sub_10046C80C;
      v33[3] = &unk_101865010;
      v35 = x;
      v36 = y;
      v37 = width;
      v38 = height;
      v34 = layer;
      [(CRLWPRep *)self performBlockOnTextLayers:v33];
    }
  }

  if ([layer edgeAntialiasingMask])
  {
    [layer setEdgeAntialiasingMask:0];
  }

  [(CRLWPRep *)self p_updateForCurrentSelectionWithFlags:0];
}

- (CGRect)rectToClipChildRepRenderables
{
  v18.receiver = self;
  v18.super_class = CRLWPRep;
  [(CRLCanvasRep *)&v18 rectToClipChildRepRenderables];
  x = v3;
  y = v5;
  width = v7;
  height = v9;
  v11 = objc_opt_class();
  layout = [(CRLWPRep *)self layout];
  v13 = sub_100014370(v11, layout);

  if (v13)
  {
    v19.origin.x = x;
    v19.origin.y = y;
    v19.size.width = width;
    v19.size.height = height;
    if (!CGRectIsNull(v19))
    {
      v20.origin.x = x;
      v20.origin.y = y;
      v20.size.width = width;
      v20.size.height = height;
      v21 = CGRectIntegral(v20);
      x = v21.origin.x;
      y = v21.origin.y;
      width = v21.size.width;
      height = v21.size.height;
    }
  }

  v14 = x;
  v15 = y;
  v16 = width;
  v17 = height;
  result.size.height = v17;
  result.size.width = v16;
  result.origin.y = v15;
  result.origin.x = v14;
  return result;
}

- (void)screenScaleDidChange
{
  v10.receiver = self;
  v10.super_class = CRLWPRep;
  [(CRLCanvasRep *)&v10 screenScaleDidChange];
  interactiveCanvasController = [(CRLCanvasRep *)self interactiveCanvasController];
  canvas = [interactiveCanvasController canvas];
  [canvas contentsScale];
  v6 = v5;

  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_10046CAEC;
  v9[3] = &unk_101865070;
  *&v9[4] = v6;
  [(CRLWPRep *)self performBlockOnTextLayers:v9];
  caretLayer = self->_caretLayer;
  if (caretLayer)
  {
    [(CAShapeLayer *)caretLayer setContentsScale:v6];
  }

  selectionParagraphBorderLayer = self->_selectionParagraphBorderLayer;
  if (selectionParagraphBorderLayer)
  {
    [(CAShapeLayer *)selectionParagraphBorderLayer setContentsScale:v6];
  }
}

- (CGRect)newTextLayerUnscaledBounds:(CGRect)bounds forNewTextBounds:(CGRect)textBounds
{
  height = textBounds.size.height;
  width = textBounds.size.width;
  y = textBounds.origin.y;
  x = textBounds.origin.x;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (void)beginEditing
{
  interactiveCanvasController = [(CRLCanvasRep *)self interactiveCanvasController];
  selectionModelTranslator = [interactiveCanvasController selectionModelTranslator];
  storage = [(CRLWPRep *)self storage];
  v6 = [_TtC8Freeform12CRLTextRange textRangeForEndOf:storage];
  nsRange = [v6 nsRange];
  v9 = v8;
  storage2 = [(CRLWPRep *)self storage];
  v12 = [selectionModelTranslator selectionPathForRange:nsRange onStorage:{v9, storage2}];

  interactiveCanvasController2 = [(CRLCanvasRep *)self interactiveCanvasController];
  [interactiveCanvasController2 setSelectionPath:v12 withSelectionFlags:4];

  [(CRLWPRep *)self p_updateCaretLayerColor];
}

- (void)didBeginEditingWithTextEditor:(id)editor
{
  v4 = objc_opt_class();
  parentRep = [(CRLCanvasRep *)self parentRep];
  v13 = sub_100014370(v4, parentRep);

  v6 = v13;
  if (v13)
  {
    shapeLayout = [v13 shapeLayout];
    fill = [shapeLayout fill];
    isOpaque = [fill isOpaque];

    v6 = v13;
    if ((isOpaque & 1) == 0)
    {
      shadow = [v13 shadow];
      v11 = shadow;
      if (shadow)
      {
        v12 = [shadow showForEditingText] ^ 1;
      }

      else
      {
        v12 = 0;
      }

      [v13 setShadowOnChildrenDisabled:v12];

      v6 = v13;
    }
  }
}

- (BOOL)canEditWithEditor:(id)editor
{
  editorCopy = editor;
  v5 = objc_opt_class();
  v6 = sub_100014370(v5, editorCopy);
  v7 = v6;
  if (v6)
  {
    storage = [v6 storage];
    storage2 = [(CRLWPRep *)self storage];
    if (storage == storage2)
    {
      layout = [(CRLWPRep *)self layout];
      if ([layout isInTopLevelContainerForEditing])
      {
        parentRep = [(CRLCanvasRep *)self parentRep];
        v10 = [parentRep isLocked] ^ 1;
      }

      else
      {
        LOBYTE(v10) = 0;
      }
    }

    else
    {
      LOBYTE(v10) = 0;
    }
  }

  else
  {
    LOBYTE(v10) = 0;
  }

  return v10;
}

- (id)smartFieldAtPoint:(CGPoint)point
{
  y = point.y;
  x = point.x;
  layout = [(CRLWPRep *)self layout];
  if (![layout layoutIsValid])
  {
    v10 = 0;
    goto LABEL_5;
  }

  storage = [(CRLWPRep *)self storage];
  hasSmartFields = [storage hasSmartFields];

  if (hasSmartFields)
  {
    layout = [(CRLWPRep *)self layout];
    columns = [layout columns];
    v10 = [CRLWPColumn smartFieldWithAttributeKind:6 inColumnArray:columns atPoint:x, y];

LABEL_5:
    goto LABEL_7;
  }

  v10 = 0;
LABEL_7:

  return v10;
}

- (void)p_updateSecondaryHighlightLayer
{
  if (self->_secondaryHighlightLayer)
  {
    location = self->_secondaryHighlightRange.location;
    length = self->_secondaryHighlightRange.length;
    columns = [(CRLWPRep *)self columns];
    v6 = [CRLWPColumn pathForHighlightWithRange:location columnArray:length pathStyle:columns, self->_secondaryHighlightPathStyle];

    [(CRLCanvasRep *)self transformToConvertNaturalToLayerRelative];
    [v6 transformUsingAffineTransform:&v7];
    -[CAShapeLayer setPath:](self->_secondaryHighlightLayer, "setPath:", [v6 CGPath]);
  }
}

- (void)setSecondaryHighlightRange:(_NSRange)range color:(CGColor *)color pathStyle:(int)style
{
  p_secondaryHighlightRange = &self->_secondaryHighlightRange;
  if (range.location != self->_secondaryHighlightRange.location || range.length != self->_secondaryHighlightRange.length)
  {
    length = range.length;
    if (range.length)
    {
      location = range.location;
      secondaryHighlightLayer = self->_secondaryHighlightLayer;
      if (!secondaryHighlightLayer)
      {
        v13 = objc_alloc_init(CAShapeLayer);
        v14 = self->_secondaryHighlightLayer;
        self->_secondaryHighlightLayer = v13;

        [(CAShapeLayer *)self->_secondaryHighlightLayer setEdgeAntialiasingMask:0];
        [(CAShapeLayer *)self->_secondaryHighlightLayer setDelegate:self];
        secondaryHighlightLayer = self->_secondaryHighlightLayer;
      }

      [(CAShapeLayer *)secondaryHighlightLayer setFillColor:color];
      p_secondaryHighlightRange->location = location;
      p_secondaryHighlightRange->length = length;
      self->_secondaryHighlightPathStyle = style;
    }

    else
    {
      p_secondaryHighlightRange->location = 0;
      self->_secondaryHighlightRange.length = 0;
      [(CAShapeLayer *)self->_secondaryHighlightLayer setDelegate:0, 0, color, *&style];
      [(CAShapeLayer *)self->_secondaryHighlightLayer removeFromSuperlayer];
      v15 = self->_secondaryHighlightLayer;
      self->_secondaryHighlightLayer = 0;
    }

    layout = [(CRLWPRep *)self layout];
    [layout invalidate];
  }
}

- (void)setHighlightedHyperlinkField:(id)field
{
  fieldCopy = field;
  v9 = fieldCopy;
  if (fieldCopy)
  {
    range = [fieldCopy range];
    v7 = v6;
  }

  else
  {
    range = 0;
    v7 = 0;
  }

  v8 = [CRLColor colorWithWhite:0.300000012 alpha:0.469999999];
  -[CRLWPRep setSecondaryHighlightRange:color:pathStyle:](self, "setSecondaryHighlightRange:color:pathStyle:", range, v7, [v8 CGColor], 2);
}

- (id)closestColumnForPoint:(CGPoint)point
{
  y = point.y;
  x = point.x;
  layout = [(CRLWPRep *)self layout];
  columns = [layout columns];
  v7 = [CRLWPColumn closestColumnInColumnsArray:columns forPoint:1 ignoreEmptyColumns:1 ignoreDrawableOnlyColumns:x, y];

  return v7;
}

- (id)columnForCharIndex:(unint64_t)index
{
  storage = [(CRLWPRep *)self storage];
  range = [storage range];
  v8 = v7;

  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  layout = [(CRLWPRep *)self layout];
  columns = [layout columns];

  v11 = [columns countByEnumeratingWithState:&v22 objects:v26 count:16];
  if (v11)
  {
    v12 = *v23;
    v13 = &range[v8];
    while (2)
    {
      for (i = 0; i != v11; i = i + 1)
      {
        if (*v23 != v12)
        {
          objc_enumerationMutation(columns);
        }

        v15 = *(*(&v22 + 1) + 8 * i);
        range2 = [v15 range];
        if ((index < range2 || index - range2 >= v17) && (&range2[v17] != index || v13 != index))
        {
          continue;
        }

        v20 = v15;
        goto LABEL_20;
      }

      v11 = [columns countByEnumeratingWithState:&v22 objects:v26 count:16];
      v20 = 0;
      if (v11)
      {
        continue;
      }

      break;
    }
  }

  else
  {
    v20 = 0;
  }

LABEL_20:

  return v20;
}

- (BOOL)isBeingEdited
{
  canvas = [(CRLCanvasRep *)self canvas];
  isCanvasInteractive = [canvas isCanvasInteractive];

  if (!isCanvasInteractive)
  {
    return 0;
  }

  v5 = objc_opt_class();
  interactiveCanvasController = [(CRLCanvasRep *)self interactiveCanvasController];
  editorController = [interactiveCanvasController editorController];
  textInputEditor = [editorController textInputEditor];
  v9 = sub_100014370(v5, textInputEditor);

  if (v9)
  {
    storage = [v9 storage];
    storage2 = [(CRLWPRep *)self storage];
    v12 = storage == storage2;
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (BOOL)isDropTarget
{
  if ([(CRLCanvasRep *)self shouldShowDragAndDropHighlight])
  {
    return 1;
  }

  dropSelection = [(CRLWPRep *)self dropSelection];
  isValid = [dropSelection isValid];

  return isValid;
}

- (CGSize)hitTestingSlop
{
  interactiveCanvasController = [(CRLCanvasRep *)self interactiveCanvasController];
  [interactiveCanvasController convertBoundsToUnscaledSize:{20.0, 2.0}];
  v4 = v3;
  v6 = v5;

  v7 = v4;
  v8 = v6;
  result.height = v8;
  result.width = v7;
  return result;
}

- (_TtC8Freeform11CRLWPEditor)textEditor
{
  if ([(CRLWPRep *)self isBeingEdited])
  {
    v3 = objc_opt_class();
    interactiveCanvasController = [(CRLCanvasRep *)self interactiveCanvasController];
    editorController = [interactiveCanvasController editorController];
    textInputEditor = [editorController textInputEditor];
    v7 = sub_100014370(v3, textInputEditor);
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)handleFadeOutForZoom
{
  [(CRLWPRepCaretController *)self->_caretController setSuppressCaret:1];
  [(CRLWPRep *)self hideCaretLayer];
  [(CRLWPRep *)self p_hideCollaboratorCursorLayer];

  [(CRLWPRep *)self setShouldIgnoreFirstRequestToShowEditMenu:1];
}

- (void)handleFadeInForZoom
{
  [(CRLWPRep *)self p_updateSecondaryHighlightLayer];
  [(CRLWPRepCaretController *)self->_caretController setSuppressCaret:0];
  if (!self->_caretAnimationDisabled)
  {
    self->_selectionChanged = 1;
  }

  [(CRLWPRep *)self p_updateForCurrentSelectionWithFlags:0];
  [(CRLWPRep *)self setShouldIgnoreFirstRequestToShowEditMenu:1];
  [(CRLWPRep *)self refreshEditMenu];

  [(CRLWPRep *)self p_showCollaboratorCursorLayer];
}

- (void)gesturesDidEnd:(id)end
{
  userInfo = [end userInfo];
  v5 = [userInfo objectForKeyedSubscript:@"CRLTextGesturesTerminated"];
  v12 = sub_1003035DC(v5, 1, v6, v7, v8, v9, v10, v11, &OBJC_PROTOCOL___CRLGesture);

  if ([v12 inputType])
  {
    [(CRLWPRep *)self refreshEditMenu];
  }
}

- (void)p_addDropAnimationToFloatingCursorWithEndingRep:(id)rep
{
  repCopy = rep;
  floatingCaretLayer = [(CRLWPRep *)self floatingCaretLayer];
  [floatingCaretLayer position];
  v7 = v6;
  v9 = v8;

  selection = [(CRLWPRep *)self selection];
  start = [selection start];
  selection2 = [(CRLWPRep *)self selection];
  [repCopy caretRectForCharIndex:start caretAffinity:{objc_msgSend(selection2, "caretAffinity")}];
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v20 = v19;

  v43.origin.x = v14;
  v43.origin.y = v16;
  v43.size.width = v18;
  v43.size.height = v20;
  if (!CGRectIsNull(v43))
  {
    [repCopy convertNaturalRectToUnscaledCanvas:{v14, v16, v18, v20}];
    [(CRLCanvasRep *)self convertNaturalRectFromUnscaledCanvas:?];
    v22 = v21;
    v24 = v23;
    v26 = v25;
    v28 = v27;
    [(CRLWPRep *)self transformToConvertNaturalToScaledRoot];
    v44.origin.x = v22;
    v44.origin.y = v24;
    v44.size.width = v26;
    v44.size.height = v28;
    v45 = CGRectApplyAffineTransform(v44, &v41);
    x = v45.origin.x;
    y = v45.origin.y;
    width = v45.size.width;
    height = v45.size.height;
    MidX = CGRectGetMidX(v45);
    v46.origin.x = x;
    v46.origin.y = y;
    v46.size.width = width;
    v46.size.height = height;
    MidY = CGRectGetMidY(v46);
    +[CATransaction begin];
    v35 = [CAKeyframeAnimation animationWithKeyPath:@"position"];
    [v35 setDelegate:self];
    v36 = [NSValue valueWithCGPoint:v7, v9];
    v42[0] = v36;
    midY = [NSValue valueWithCGPoint:MidX, MidY];
    v42[1] = midY;
    v38 = [NSArray arrayWithObjects:v42 count:2];
    [v35 setValues:v38];

    [v35 setRemovedOnCompletion:0];
    [v35 setDuration:0.25];
    floatingCaretLayer2 = [(CRLWPRep *)self floatingCaretLayer];
    [floatingCaretLayer2 addAnimation:v35 forKey:@"dropAnimation"];

    floatingCaretLayer3 = [(CRLWPRep *)self floatingCaretLayer];
    [floatingCaretLayer3 setPosition:{MidX, MidY}];

    +[CATransaction commit];
  }
}

- (BOOL)ghostCaretAppearance
{
  overrideCaretColor = [(CRLWPRep *)self overrideCaretColor];
  v3 = overrideCaretColor != 0;

  return v3;
}

- (void)setGhostCaretAppearance:(BOOL)appearance
{
  if (appearance)
  {
    colorForGhostCaret = [(CRLWPRepHelper *)self->_repHelper colorForGhostCaret];
    [(CRLWPRep *)self setOverrideCaretColor:colorForGhostCaret];
  }

  else
  {
    [(CRLWPRep *)self setOverrideCaretColor:0];
  }

  [(CRLWPRep *)self p_updateCaretLayerColor];
}

- (void)textInteractionCaretBeganFloating
{
  [(CRLWPRep *)self suppressCaret:0];
  [(CRLWPRepCaretController *)self->_caretController showCaretLayerStartingAnimation];

  [(CRLWPRep *)self updateCaretColorForFloatingCursorInFlight];
}

- (void)textInteractionCaretEndedFloating
{
  [(CRLWPRep *)self updateCaretColorForFinishedFloatingCursor];
  [(CRLWPRep *)self suppressCaret:1];
  caretController = self->_caretController;

  [(CRLWPRepCaretController *)caretController hideCaretLayer];
}

- (void)textInteractionCaretDragStopped
{
  [(CRLWPRep *)self suppressCaret:0];
  [(CRLWPRepCaretController *)self->_caretController showCaretLayerStartingAnimation];
  [(CRLWPRep *)self updateCaretColorForFinishedFloatingCursor];

  [(CRLWPRep *)self enableCaretAnimation];
}

- (void)beginFloatingCursorAtPoint:(CGPoint)point animate:(BOOL)animate
{
  animateCopy = animate;
  y = point.y;
  x = point.x;
  v8 = [CRLColor colorWithRed:0.26 green:0.42 blue:0.95 alpha:1.0];
  cGColor = [v8 CGColor];

  v10 = [(CRLWPRep *)self p_caretLayerWithZPosition:1.0];
  [(CRLWPRep *)self setFloatingCaretLayer:v10];

  floatingCaretLayer = [(CRLWPRep *)self floatingCaretLayer];
  [floatingCaretLayer setBackgroundColor:cGColor];

  floatingCaretLayer2 = [(CRLWPRep *)self floatingCaretLayer];
  [(CRLWPRep *)self p_positionAndSizeFloatingCaret:floatingCaretLayer2 atPoint:x, y];

  repHelper = self->_repHelper;
  floatingCaretLayer3 = [(CRLWPRep *)self floatingCaretLayer];
  [(CRLWPRepHelper *)repHelper cornerRadiusForFloatingCaret:floatingCaretLayer3];
  v16 = v15;
  floatingCaretLayer4 = [(CRLWPRep *)self floatingCaretLayer];
  [floatingCaretLayer4 setCornerRadius:v16];

  [(CRLWPRep *)self updateCaretColorForFloatingCursorInFlight];
  interactiveCanvasController = [(CRLCanvasRep *)self interactiveCanvasController];
  [interactiveCanvasController invalidateOverlayLayersForRep:self];

  if (animateCopy)
  {

    [(CRLWPRep *)self p_addLiftAnimationToFloatingCursor];
  }
}

- (void)updateFloatingCursorAtPoint:(CGPoint)point
{
  y = point.y;
  x = point.x;
  floatingCaretLayer = [(CRLWPRep *)self floatingCaretLayer];
  [(CRLWPRep *)self p_positionAndSizeFloatingCaret:x atPoint:y];
}

- (void)endFloatingCursorWithRepForAnimation:(id)animation
{
  animationCopy = animation;
  floatingCaretLayer = [(CRLWPRep *)self floatingCaretLayer];

  if (floatingCaretLayer)
  {
    [(CRLWPRep *)self updateCaretColorForFinishedFloatingCursor];
    if (animationCopy && (-[CRLWPRep selection](self, "selection"), v5 = objc_claimAutoreleasedReturnValue(), v6 = [v5 isInsertionPoint], v5, v6))
    {
      [(CRLWPRep *)self p_addDropAnimationToFloatingCursorWithEndingRep:animationCopy];
    }

    else
    {
      floatingCaretLayer2 = [(CRLWPRep *)self floatingCaretLayer];
      [floatingCaretLayer2 removeFromSuperlayer];

      [(CRLWPRep *)self setFloatingCaretLayer:0];
    }

    [(CRLWPRep *)self enableCaretAnimation];
  }
}

- (void)pulseCaret
{
  caretPulseController = self->_caretPulseController;
  if (caretPulseController)
  {
    self->_caretPulseController = 0;
  }

  Mutable = CGPathCreateMutable();
  [(CRLWPRep *)self caretRect];
  y = v25.origin.y;
  height = v25.size.height;
  v25.size.width = 2.0;
  v25.origin.x = v8 + -1.0;
  x = v25.origin.x;
  CGPathAddRect(Mutable, 0, v25);
  LOWORD(v20) = 0;
  v9 = [(CRLWPRep *)self p_imageForRect:0 usingGlyphRect:1 prepareBackground:1 drawBackground:1 shouldPulsate:1 forCaret:0 drawSelection:x suppressInvisibles:y suppressChildReps:2.0, height, v20];
  v10 = [[CRLPulseAnimationController alloc] initWithDelegate:self];
  v11 = self->_caretPulseController;
  self->_caretPulseController = v10;

  [(CRLPulseAnimationController *)self->_caretPulseController setAutohide:1];
  layout = [(CRLWPRep *)self layout];
  v13 = layout;
  if (layout)
  {
    [layout transformInRoot];
  }

  else
  {
    v23 = 0u;
    v24 = 0u;
    v22 = 0u;
  }

  v14 = self->_caretPulseController;
  v21[0] = v22;
  v21[1] = v23;
  v21[2] = v24;
  [(CRLHighlightController *)v14 setTransform:v21];

  canvas = [(CRLCanvasRep *)self canvas];
  [canvas viewScale];
  [(CRLHighlightController *)self->_caretPulseController setViewScale:?];

  [(CRLPulseAnimationController *)self->_caretPulseController setDuration:0.05];
  [(CRLPulseAnimationController *)self->_caretPulseController setPulseOffset:4.0];
  v16 = self->_caretPulseController;
  canvas2 = [(CRLCanvasRep *)self canvas];
  [canvas2 contentsScale];
  [(CRLHighlightController *)v16 createLayerWithZOrder:8.0 contentsScaleForLayers:v18];

  [(CRLHighlightController *)self->_caretPulseController buildLayersForPath:Mutable withImage:v9];
  [(CRLPulseAnimationController *)self->_caretPulseController startAnimating];
  CGPathRelease(Mutable);
  interactiveCanvasController = [(CRLCanvasRep *)self interactiveCanvasController];
  [interactiveCanvasController canvasInvalidatedForRep:self];
}

- (BOOL)containsStartOfSelection:(id)selection
{
  selectionCopy = selection;
  if ([selectionCopy isInsertionPoint])
  {
    start = [selectionCopy start];
    range = [(CRLWPRep *)self range];
    if (start == range)
    {
      isOverflowing = [selectionCopy caretAffinity] == 0;
      goto LABEL_20;
    }

    v13 = &range[v7];
    if (range < start && start < v13 || start == v13 && ([selectionCopy caretAffinity] == 1 || (-[CRLWPRep storage](self, "storage"), v14 = objc_claimAutoreleasedReturnValue(), v15 = objc_msgSend(v14, "length"), v14, start == v15)))
    {
      isOverflowing = 1;
      goto LABEL_20;
    }

    if (v13 < start)
    {
      isOverflowing = [(CRLWPRep *)self isOverflowing];
      goto LABEL_20;
    }

LABEL_19:
    isOverflowing = 0;
    goto LABEL_20;
  }

  if (![selectionCopy isRange])
  {
    goto LABEL_19;
  }

  start2 = [selectionCopy start];
  range2 = [(CRLWPRep *)self range];
  isOverflowing = start2 >= range2 && start2 - range2 < v11;
LABEL_20:

  return isOverflowing;
}

- (BOOL)p_doesRep:(id)rep containCharIndex:(unint64_t)index isStart:(BOOL)start
{
  startCopy = start;
  range = [rep range];
  if (startCopy && range <= index)
  {
    return range + v8 > index;
  }

  v10 = range + v8 >= index;
  if (range >= index)
  {
    v10 = 0;
  }

  return !startCopy && v10;
}

- (id)repForCharIndex:(unint64_t)index isStart:(BOOL)start
{
  startCopy = start;
  if ([(CRLWPRep *)self p_doesRep:self containCharIndex:index isStart:start])
  {
    selfCopy = self;
  }

  else
  {
    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    siblings = [(CRLWPRep *)self siblings];
    v9 = [siblings countByEnumeratingWithState:&v14 objects:v18 count:16];
    if (v9)
    {
      v10 = *v15;
      while (2)
      {
        for (i = 0; i != v9; i = i + 1)
        {
          if (*v15 != v10)
          {
            objc_enumerationMutation(siblings);
          }

          v12 = *(*(&v14 + 1) + 8 * i);
          if ([(CRLWPRep *)self p_doesRep:v12 containCharIndex:index isStart:startCopy])
          {
            selfCopy = v12;

            goto LABEL_13;
          }
        }

        v9 = [siblings countByEnumeratingWithState:&v14 objects:v18 count:16];
        if (v9)
        {
          continue;
        }

        break;
      }
    }

    selfCopy = 0;
  }

LABEL_13:

  return selfCopy;
}

- (id)siblings
{
  v3 = +[NSMutableSet set];
  storage = [(CRLWPRep *)self storage];
  wpKind = [storage wpKind];

  if (!wpKind)
  {
    v20 = 0u;
    v21 = 0u;
    v18 = 0u;
    v19 = 0u;
    parentRep = [(CRLCanvasRep *)self parentRep];
    childReps = [parentRep childReps];

    v8 = [childReps countByEnumeratingWithState:&v18 objects:v22 count:16];
    if (v8)
    {
      v9 = *v19;
      do
      {
        for (i = 0; i != v8; i = i + 1)
        {
          if (*v19 != v9)
          {
            objc_enumerationMutation(childReps);
          }

          v11 = *(*(&v18 + 1) + 8 * i);
          if (v11 != self)
          {
            v12 = objc_opt_class();
            v13 = sub_100014370(v12, v11);
            storage2 = [v13 storage];
            storage3 = [(CRLWPRep *)self storage];
            v16 = storage2 == storage3;

            if (v16)
            {
              [v3 addObject:v13];
            }
          }
        }

        v8 = [childReps countByEnumeratingWithState:&v18 objects:v22 count:16];
      }

      while (v8);
    }
  }

  return v3;
}

- (id)repForDragging
{
  if ([(CRLWPRep *)self isBeingEdited])
  {
    repForDragging = 0;
  }

  else
  {
    v5.receiver = self;
    v5.super_class = CRLWPRep;
    repForDragging = [(CRLCanvasRep *)&v5 repForDragging];
  }

  return repForDragging;
}

- (BOOL)shouldPreventMarqueeInitiationAtPoint:(CGPoint)point withTouchType:(int64_t)type
{
  y = point.y;
  x = point.x;
  interactiveCanvasController = [(CRLCanvasRep *)self interactiveCanvasController];
  layerHost = [interactiveCanvasController layerHost];
  asiOSCVC = [layerHost asiOSCVC];
  isCurrentlyInQuickSelectMode = [asiOSCVC isCurrentlyInQuickSelectMode];

  if (isCurrentlyInQuickSelectMode)
  {
    v15.receiver = self;
    v15.super_class = CRLWPRep;
    return [(CRLCanvasRep *)&v15 shouldPreventMarqueeInitiationAtPoint:type withTouchType:x, y];
  }

  else
  {
    storage = [(CRLWPRep *)self storage];
    if ([storage wpKind])
    {
      isBeingEdited = [(CRLWPRep *)self isBeingEdited];
    }

    else
    {
      isBeingEdited = 1;
    }
  }

  return isBeingEdited;
}

- (id)hyperlinkContainerRep
{
  parentRep = [(CRLCanvasRep *)self parentRep];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v7.receiver = self;
    v7.super_class = CRLWPRep;
    repForSelecting = [(CRLCanvasRep *)&v7 repForSelecting];
  }

  else
  {
    repForSelecting = 0;
  }

  return repForSelecting;
}

- (BOOL)wantsContextMenuWhenEditingDisabledAtPoint:(CGPoint)point
{
  y = point.y;
  x = point.x;
  v6 = objc_opt_class();
  parentRep = [(CRLCanvasRep *)self parentRep];
  v8 = sub_100014370(v6, parentRep);

  LOBYTE(parentRep) = [v8 wantsContextMenuWhenEditingDisabledAtPoint:{x, y}];
  return parentRep;
}

- (CRLWPLayoutTarget)layout
{
  v11.receiver = self;
  v11.super_class = CRLWPRep;
  layout = [(CRLCanvasRep *)&v11 layout];
  v3 = objc_opt_class();
  v9 = sub_100303920(layout, v3, 1, v4, v5, v6, v7, v8, &OBJC_PROTOCOL___CRLWPLayoutTarget);

  return v9;
}

- (_TtC8Freeform12CRLWPStorage)storage
{
  v3 = objc_opt_class();
  layout = [(CRLWPRep *)self layout];
  v5 = sub_100014370(v3, layout);

  v6 = objc_opt_class();
  if (v5)
  {
    [v5 storage];
  }

  else
  {
    [(CRLCanvasRep *)self info];
  }
  v7 = ;
  v8 = sub_100013F00(v6, v7);

  return v8;
}

- (NSArray)columns
{
  layout = [(CRLWPRep *)self layout];
  columns = [layout columns];

  return columns;
}

- (CRLWPSelection)selection
{
  textEditor = [(CRLWPRep *)self textEditor];
  v3 = textEditor;
  if (textEditor)
  {
    selection = [textEditor selection];
  }

  else
  {
    selection = 0;
  }

  return selection;
}

- (void)addKnobsToArray:(id)array
{
  arrayCopy = array;
  layout = [(CRLWPRep *)self layout];
  layoutIsValid = [layout layoutIsValid];

  if (layoutIsValid && [(CRLWPRep *)self shouldCreateTextKnobs])
  {
    textEditor = [(CRLWPRep *)self textEditor];
    wantsParagraphMode = [textEditor wantsParagraphMode];
    knobTracking = [textEditor knobTracking];
    selection = [(CRLWPRep *)self selection];
    if ([selection headCharIndex] == 0x7FFFFFFFFFFFFFFFLL)
    {
      start = [selection start];
    }

    else
    {
      start = [selection headCharIndex];
    }

    tailCharIndex = [selection tailCharIndex];
    if (tailCharIndex == 0x7FFFFFFFFFFFFFFFLL)
    {
      tailCharIndex = [selection end];
      if (tailCharIndex)
      {
        storage = [(CRLWPRep *)self storage];
        tailCharIndex = sub_10027EB4C(tailCharIndex, storage);
      }
    }

    v29 = 0u;
    v30 = 0u;
    v27 = 0u;
    v28 = 0u;
    columns = [(CRLWPRep *)self columns];
    v11 = [columns countByEnumeratingWithState:&v27 objects:v31 count:16];
    if (v11)
    {
      v12 = *v28;
      v13 = (textEditor != 0) & wantsParagraphMode & knobTracking;
      v14 = columns;
      do
      {
        for (i = 0; i != v11; i = i + 1)
        {
          if (*v28 != v12)
          {
            objc_enumerationMutation(columns);
          }

          v16 = *(*(&v27 + 1) + 8 * i);
          selection2 = [(CRLWPRep *)self selection];
          if (![v16 lineFragmentForCharIndex:start knobTag:11 selectionType:{objc_msgSend(selection2, "type")}])
          {
            goto LABEL_20;
          }

          if (!v13)
          {

LABEL_19:
            selection2 = [(CRLWPRep *)self knobClassWithTag:11];
            [arrayCopy addObject:selection2];
LABEL_20:

            goto LABEL_21;
          }

          v18 = [textEditor knobTag] == 11;

          if (v18)
          {
            goto LABEL_19;
          }

LABEL_21:
          columns = v14;
          range = [v16 range];
          v21 = tailCharIndex < range || tailCharIndex - range >= v20;
          if (!v21 && (!v13 || [textEditor knobTag] == 10))
          {
            v22 = [(CRLWPRep *)self knobClassWithTag:10];
            [arrayCopy addObject:v22];

            columns = v14;
          }
        }

        v11 = [columns countByEnumeratingWithState:&v27 objects:v31 count:16];
      }

      while (v11);
    }
  }
}

- (id)knobClassWithTag:(unint64_t)tag
{
  knobPositioner = [(CRLWPRep *)self knobPositioner];
  [knobPositioner knobRadius];
  v7 = v6;
  canvas = [(CRLCanvasRep *)self canvas];
  [canvas viewScale];
  v10 = v7 * v9;

  v11 = [[CRLWPTextKnob alloc] initWithType:2 position:tag radius:self tag:CGPointZero.x onRep:CGPointZero.y, v10];

  return v11;
}

- (void)updatePositionsOfKnobs:(id)knobs
{
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  knobsCopy = knobs;
  v5 = [knobsCopy countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v5)
  {
    v6 = *v11;
    do
    {
      v7 = 0;
      do
      {
        if (*v11 != v6)
        {
          objc_enumerationMutation(knobsCopy);
        }

        v8 = *(*(&v10 + 1) + 8 * v7);
        selection = [(CRLWPRep *)self selection];
        [(CRLWPRep *)self knobCenterForSelection:selection knob:v8];
        [v8 setPosition:?];

        v7 = v7 + 1;
      }

      while (v5 != v7);
      v5 = [knobsCopy countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v5);
  }
}

- (BOOL)shouldCreateTextKnobs
{
  if (![(CRLWPRep *)self isBeingEdited]|| ![(CRLWPRep *)self p_canShowSelectionAndCaretLayers])
  {
    return 0;
  }

  knobPositioner = [(CRLWPRep *)self knobPositioner];
  selection = [(CRLWPRep *)self selection];
  storage = [(CRLWPRep *)self storage];
  v6 = [knobPositioner shouldCreateKnobsForSelection:selection inStorage:storage];

  return v6;
}

- (CGRect)labelRectForCharIndex:(unint64_t)index
{
  columns = [(CRLWPRep *)self columns];
  [CRLWPColumn labelRectForCharIndex:index withColumns:columns];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;

  v13 = v6;
  v14 = v8;
  v15 = v10;
  v16 = v12;
  result.size.height = v16;
  result.size.width = v15;
  result.origin.y = v14;
  result.origin.x = v13;
  return result;
}

- (CGRect)columnRectForRange:(_NSRange)range
{
  length = range.length;
  location = range.location;
  columns = [(CRLWPRep *)self columns];
  [CRLWPColumn columnRectForRange:location withColumns:length, columns];
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;

  v14 = v7;
  v15 = v9;
  v16 = v11;
  v17 = v13;
  result.size.height = v17;
  result.size.width = v16;
  result.origin.y = v15;
  result.origin.x = v14;
  return result;
}

- (CGRect)glyphRectForRange:(_NSRange)range includingLabel:(BOOL)label
{
  labelCopy = label;
  length = range.length;
  location = range.location;
  x = CGRectNull.origin.x;
  y = CGRectNull.origin.y;
  width = CGRectNull.size.width;
  height = CGRectNull.size.height;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  columns = [(CRLWPRep *)self columns];
  v12 = [columns countByEnumeratingWithState:&v29 objects:v33 count:16];
  if (v12)
  {
    v13 = *v30;
    do
    {
      for (i = 0; i != v12; i = i + 1)
      {
        if (*v30 != v13)
        {
          objc_enumerationMutation(columns);
        }

        v15 = *(*(&v29 + 1) + 8 * i);
        v16.location = [v15 range];
        if (length)
        {
          v17 = v16.length == 0;
        }

        else
        {
          v17 = 1;
        }

        v18 = v17;
        v34.location = location;
        v34.length = length;
        v20 = sub_1002BC848(v16, v34, v18);
        if (v20 != 0x7FFFFFFFFFFFFFFFLL)
        {
          [v15 glyphRectForRange:v20 includingLabel:{v19, labelCopy}];
          v38.origin.x = v21;
          v38.origin.y = v22;
          v38.size.width = v23;
          v38.size.height = v24;
          v35.origin.x = x;
          v35.origin.y = y;
          v35.size.width = width;
          v35.size.height = height;
          v36 = CGRectUnion(v35, v38);
          x = v36.origin.x;
          y = v36.origin.y;
          width = v36.size.width;
          height = v36.size.height;
        }
      }

      v12 = [columns countByEnumeratingWithState:&v29 objects:v33 count:16];
    }

    while (v12);
  }

  v25 = x;
  v26 = y;
  v27 = width;
  v28 = height;
  result.size.height = v28;
  result.size.width = v27;
  result.origin.y = v26;
  result.origin.x = v25;
  return result;
}

- (unsigned)fontTraitsForRange:(_NSRange)range includingLabel:(BOOL)label
{
  labelCopy = label;
  length = range.length;
  location = range.location;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  columns = [(CRLWPRep *)self columns];
  v8 = 0;
  v9 = [columns countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v9)
  {
    v10 = *v21;
    do
    {
      for (i = 0; i != v9; i = i + 1)
      {
        if (*v21 != v10)
        {
          objc_enumerationMutation(columns);
        }

        v12 = *(*(&v20 + 1) + 8 * i);
        v13.location = [v12 range];
        if (length)
        {
          v14 = v13.length == 0;
        }

        else
        {
          v14 = 1;
        }

        v15 = v14;
        v25.location = location;
        v25.length = length;
        v17 = sub_1002BC848(v13, v25, v15);
        if (v17 != 0x7FFFFFFFFFFFFFFFLL)
        {
          v18 = [v12 fontTraitsForRange:v17 includingLabel:{v16, labelCopy}];
          if (v8)
          {
            if (v8 != v18)
            {
              v8 = (v18 | v8) & 0xFFFFFFF;
            }
          }

          else
          {
            v8 = v18;
          }
        }
      }

      v9 = [columns countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v9);
  }

  return v8;
}

- (unint64_t)glyphCountForRubyFieldAtCharIndex:(unint64_t)index
{
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  columns = [(CRLWPRep *)self columns];
  v5 = [columns countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v5)
  {
    v6 = *v15;
    do
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v15 != v6)
        {
          objc_enumerationMutation(columns);
        }

        v8 = *(*(&v14 + 1) + 8 * i);
        range = [v8 range];
        if (index >= range && index - range < v10)
        {
          v12 = [v8 glyphCountForRubyFieldAtCharIndex:index];
          goto LABEL_14;
        }
      }

      v5 = [columns countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v5);
  }

  v12 = 0x7FFFFFFFFFFFFFFFLL;
LABEL_14:

  return v12;
}

- (CGRect)glyphRectForRubyFieldAtCharIndex:(unint64_t)index glyphRange:(_NSRange)range
{
  length = range.length;
  location = range.location;
  x = CGRectNull.origin.x;
  y = CGRectNull.origin.y;
  width = CGRectNull.size.width;
  height = CGRectNull.size.height;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  columns = [(CRLWPRep *)self columns];
  v12 = [columns countByEnumeratingWithState:&v27 objects:v31 count:16];
  if (v12)
  {
    v13 = *v28;
    do
    {
      for (i = 0; i != v12; i = i + 1)
      {
        if (*v28 != v13)
        {
          objc_enumerationMutation(columns);
        }

        v15 = *(*(&v27 + 1) + 8 * i);
        range = [v15 range];
        if (index >= range && index - range < v17)
        {
          [v15 glyphRectForRubyFieldAtCharIndex:index glyphRange:{location, length}];
          x = v19;
          y = v20;
          width = v21;
          height = v22;
          goto LABEL_13;
        }
      }

      v12 = [columns countByEnumeratingWithState:&v27 objects:v31 count:16];
    }

    while (v12);
  }

LABEL_13:

  v23 = x;
  v24 = y;
  v25 = width;
  v26 = height;
  result.size.height = v26;
  result.size.width = v25;
  result.origin.y = v24;
  result.origin.x = v23;
  return result;
}

- (_NSRange)rangeOfMisspelledWordAtCharIndex:(unint64_t)index
{
  v3 = 0x7FFFFFFFFFFFFFFFLL;
  v4 = 0;
  if (self->_spellChecker)
  {
    if ([(CRLWPRep *)self p_spellCheckingEnabled])
    {
      v3 = [(CRLWPStorageSpellChecker *)self->_spellChecker rangeOfMisspelledWordAtCharIndex:index];
      v4 = v7;
      v12.location = v3;
      v12.length = v7;
      sub_1002BC8E0(self->_suppressedMisspellingRange, v12);
      if (v8)
      {
        v3 = 0x7FFFFFFFFFFFFFFFLL;
        v4 = 0;
      }
    }
  }

  v9 = v3;
  v10 = v4;
  result.length = v10;
  result.location = v9;
  return result;
}

- (CGRect)p_convertNaturalRectToRotated:(CGRect)rotated repAngle:(double)angle
{
  height = rotated.size.height;
  width = rotated.size.width;
  y = rotated.origin.y;
  x = rotated.origin.x;
  textIsVertical = [(CRLWPRep *)self textIsVertical];
  if (textIsVertical)
  {
    angle = fmod(angle + 270.0, 360.0);
  }

  if ((angle <= 45.0 || angle >= 135.0) && (angle <= 225.0 || angle >= 315.0))
  {
    v10 = width;
    v11 = height;
  }

  else
  {
    v10 = height;
    v11 = width;
  }

  v12 = hypot(v11, v10);
  if (textIsVertical)
  {
    v13 = v12;
  }

  else
  {
    v13 = v10;
  }

  if (textIsVertical)
  {
    v14 = v11;
  }

  else
  {
    v14 = v12;
  }

  v15 = x + width;
  if (angle <= 180.0)
  {
    v15 = x;
  }

  v16 = angle >= 270.0 || angle <= 90.0;
  v17 = y + height;
  if (v16)
  {
    v17 = y;
  }

  result.size.height = v14;
  result.size.width = v13;
  result.origin.y = v17;
  result.origin.x = v15;
  return result;
}

- (BOOL)p_allowCaretForSelection:(id)selection
{
  selectionCopy = selection;
  range = [selectionCopy range];
  storage = [(CRLWPRep *)self storage];
  hasMarkedText = [storage hasMarkedText];

  if ((hasMarkedText & 1) == 0)
  {
    if (![selectionCopy isInsertionPoint] || ((v9 = -[CRLWPRep range](self, "range"), range < v9) || range - v9 >= v10) && (v11 = -[CRLWPRep range](self, "range"), range != &v11[v12]) || range == -[CRLWPRep range](self, "range") && (objc_msgSend(selectionCopy, "isAtEndOfLine") & 1) != 0)
    {
      v8 = 0;
      goto LABEL_10;
    }

    range2 = [(CRLWPRep *)self range];
    if (range == &range2[v15] && ([selectionCopy isAtEndOfLine] & 1) == 0)
    {
      storage2 = [(CRLWPRep *)self storage];
      [storage2 length];
    }
  }

  v8 = 1;
LABEL_10:

  return v8;
}

- (void)p_updateLayersForInsertionPointSelection:(id)selection
{
  selectionCopy = selection;
  [(CRLWPRep *)self p_setSelectionLineLayersHidden:1];
  [(CRLWPRep *)self p_hideSelectionHighlightLayer];
  [(CRLWPRep *)self p_hideSelectionParagraphBorderLayer];
  textEditor = [(CRLWPRep *)self textEditor];
  if (![(CRLWPRep *)self p_isRedesignedTextCursorEnabled])
  {
    if ([textEditor wantsCaret])
    {
      interactiveCanvasController = [(CRLCanvasRep *)self interactiveCanvasController];
      layerHost = [interactiveCanvasController layerHost];
      [layerHost isInFocusedContainer];
    }

    if ([(CRLWPRep *)self p_allowCaretForSelection:selectionCopy])
    {
      editorHelper = [textEditor editorHelper];
      v9 = [editorHelper calculateVisualRunsFromSelection:selectionCopy updateControllerSelection:1];

      if ([CRLWPRep p_positionCaretLayer:"p_positionCaretLayer:forSelection:layerRelative:" forSelection:self->_caretLayer layerRelative:?]&& [(CRLWPRep *)self p_canShowSelectionAndCaretLayers])
      {
        [(CRLWPRepCaretController *)self->_caretController showCaretLayerStartingAnimation];
        goto LABEL_10;
      }

      selectionCopy = v9;
    }
  }

  [(CRLWPRepCaretController *)self->_caretController stopCaretLayerAnimationHidingCaret:1];
  v9 = selectionCopy;
LABEL_10:
}

- (id)p_imageForRect:(CGRect)rect usingGlyphRect:(BOOL)glyphRect prepareBackground:(BOOL)background drawBackground:(BOOL)drawBackground shouldPulsate:(BOOL)pulsate forCaret:(BOOL)caret drawSelection:(id)selection suppressInvisibles:(BOOL)self0 suppressChildReps:(BOOL)self1
{
  drawBackgroundCopy = drawBackground;
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  selectionCopy = selection;
  [(CRLCanvasRep *)self transformToConvertNaturalToLayerRelative];
  memset(&v40, 0, sizeof(v40));
  v42.origin.x = x;
  v42.origin.y = y;
  v42.size.width = width;
  v42.size.height = height;
  v43 = CGRectApplyAffineTransform(v42, &v40);
  v44 = CGRectIntegral(v43);
  v45 = CGRectInset(v44, -0.0, -0.0);
  v19 = v45.origin.x;
  v20 = v45.origin.y;
  v21 = v45.size.width;
  v22 = v45.size.height;
  +[UIScreen crl_screenScale];
  v24 = v23;
  v25 = sub_10011F340(v21, v22, v23);
  v27 = sub_10050DF80(11, v25, v26);
  v28 = v27;
  if (v27)
  {
    CGContextScaleCTM(v27, v24, v24);
    CGContextTranslateCTM(v28, -v19, -v20);
    [(CRLCanvasRep *)self setupForDrawingInLayer:0 context:v28];
    CGContextSetShouldAntialias(v28, 1);
    if (selectionCopy || !background)
    {
      CGContextSaveGState(v28);
      if (drawBackgroundCopy)
      {
        v29 = 3;
      }

      else
      {
        v29 = 33;
      }

      LOBYTE(v39) = invisibles;
      [(CRLWPRep *)self p_drawTextInLayer:0 context:v28 limitSelection:selectionCopy rubyGlyphRange:0x7FFFFFFFFFFFFFFFLL renderMode:0 suppressInvisibles:v29, v39];
      CGContextRestoreGState(v28);
    }

    [(CRLWPRep *)self didDrawInLayer:0 context:v28];
    Image = CGBitmapContextCreateImage(v28);
    if (Image)
    {
      v31 = [CRLImage imageWithCGImage:Image scale:0 orientation:v24];
      CGImageRelease(Image);
    }

    else
    {
      +[CRLAssertionHandler _atomicIncrementAssertCount];
      if (qword_101AD5A10 != -1)
      {
        sub_101379D14();
      }

      if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
      {
        sub_101379D3C();
      }

      if (qword_101AD5A10 != -1)
      {
        sub_101379DD8();
      }

      v35 = off_1019EDA68;
      if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
      {
        +[CRLAssertionHandler packedBacktraceString];
        objc_claimAutoreleasedReturnValue();
        sub_10130E89C();
      }

      v36 = [NSString stringWithUTF8String:"[CRLWPRep p_imageForRect:usingGlyphRect:prepareBackground:drawBackground:shouldPulsate:forCaret:drawSelection:suppressInvisibles:suppressChildReps:]"];
      v37 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLWP/CRLWPRep.mm"];
      [CRLAssertionHandler handleFailureInFunction:v36 file:v37 lineNumber:2482 isFatal:0 description:"invalid nil value for '%{public}s'", "ctxImage"];

      v31 = 0;
    }

    CGContextRelease(v28);
  }

  else
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_101379E00();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_101379E28();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_101379EC4();
    }

    v32 = off_1019EDA68;
    if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
    {
      +[CRLAssertionHandler packedBacktraceString];
      objc_claimAutoreleasedReturnValue();
      sub_10130E89C();
    }

    v33 = [NSString stringWithUTF8String:"[CRLWPRep p_imageForRect:usingGlyphRect:prepareBackground:drawBackground:shouldPulsate:forCaret:drawSelection:suppressInvisibles:suppressChildReps:]"];
    v34 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLWP/CRLWPRep.mm"];
    [CRLAssertionHandler handleFailureInFunction:v33 file:v34 lineNumber:2455 isFatal:0 description:"invalid nil value for '%{public}s'", "ctx"];

    v31 = 0;
  }

  return v31;
}

- (id)p_imageForZeroLengthPath:(CGPath *)path
{
  if (!path)
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_101379EEC();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_101379F00();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_101379F9C();
    }

    v5 = off_1019EDA68;
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      +[CRLAssertionHandler packedBacktraceString];
      objc_claimAutoreleasedReturnValue();
      sub_10130E89C();
    }

    v6 = [NSString stringWithUTF8String:"[CRLWPRep p_imageForZeroLengthPath:]"];
    v7 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLWP/CRLWPRep.mm"];
    [CRLAssertionHandler handleFailureInFunction:v6 file:v7 lineNumber:2495 isFatal:0 description:"invalid nil value for '%{public}s'", "path"];
  }

  PathBoundingBox = CGPathGetPathBoundingBox(path);
  x = PathBoundingBox.origin.x;
  y = PathBoundingBox.origin.y;
  width = PathBoundingBox.size.width;
  height = PathBoundingBox.size.height;
  [(CRLCanvasRep *)self transformToConvertNaturalToLayerRelative];
  memset(&v31, 0, sizeof(v31));
  v34.origin.x = x;
  v34.origin.y = y;
  v34.size.width = width;
  v34.size.height = height;
  v35 = CGRectApplyAffineTransform(v34, &v31);
  v36 = CGRectIntegral(v35);
  v12 = v36.origin.x;
  v13 = v36.origin.y;
  v14 = v36.size.width;
  v15 = v36.size.height;
  +[UIScreen crl_screenScale];
  v17 = v16;
  v18 = sub_10011F340(v14, v15, v16);
  v20 = sub_10050DF80(11, v18, v19);
  v21 = v20;
  if (v20)
  {
    CGContextScaleCTM(v20, v17, v17);
    CGContextTranslateCTM(v21, -v12, -v13);
    [(CRLCanvasRep *)self setupForDrawingInLayer:0 context:v21];
    CGContextSetShouldAntialias(v21, 1);
    CGContextBeginTransparencyLayer(v21, 0);
    CGContextEndTransparencyLayer(v21);
    [(CRLWPRep *)self didDrawInLayer:0 context:v21];
    Image = CGBitmapContextCreateImage(v21);
    if (Image)
    {
      v23 = [CRLImage imageWithCGImage:Image scale:0 orientation:v17];
      CGImageRelease(Image);
    }

    else
    {
      +[CRLAssertionHandler _atomicIncrementAssertCount];
      if (qword_101AD5A10 != -1)
      {
        sub_101379FC4();
      }

      if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
      {
        sub_101379FEC();
      }

      if (qword_101AD5A10 != -1)
      {
        sub_10137A088();
      }

      v27 = off_1019EDA68;
      if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
      {
        +[CRLAssertionHandler packedBacktraceString];
        objc_claimAutoreleasedReturnValue();
        sub_10130E89C();
      }

      v28 = [NSString stringWithUTF8String:"[CRLWPRep p_imageForZeroLengthPath:]"];
      v29 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLWP/CRLWPRep.mm"];
      [CRLAssertionHandler handleFailureInFunction:v28 file:v29 lineNumber:2529 isFatal:0 description:"invalid nil value for '%{public}s'", "ctxImage"];

      v23 = 0;
    }

    CGContextRelease(v21);
  }

  else
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_10137A0B0();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10137A0D8();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_10137A168();
    }

    v24 = off_1019EDA68;
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      +[CRLAssertionHandler packedBacktraceString];
      objc_claimAutoreleasedReturnValue();
      sub_10130E89C();
    }

    v25 = [NSString stringWithUTF8String:"[CRLWPRep p_imageForZeroLengthPath:]"];
    v26 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLWP/CRLWPRep.mm"];
    [CRLAssertionHandler handleFailureInFunction:v25 file:v26 lineNumber:2510 isFatal:0 description:"Nil context"];

    v23 = 0;
  }

  return v23;
}

- (id)textImageForSelection:(id)selection frame:(CGRect *)frame usingGlyphRect:(BOOL)rect shouldPulsate:(BOOL)pulsate suppressInvisibles:(BOOL)invisibles suppressChildReps:(BOOL)reps drawBackground:(BOOL)background inset:(double)self0
{
  pulsateCopy = pulsate;
  rectCopy = rect;
  selectionCopy = selection;
  v18 = selectionCopy;
  v51 = 0;
  v52 = &v51;
  v53 = 0x5012000000;
  v54 = sub_10047123C;
  v55 = nullsub_53;
  v56 = &unk_1016A8115;
  if (rectCopy && ([selectionCopy type] != 7 || objc_msgSend(v18, "visualRangeCount") < 2 ? ((v32 = objc_msgSend(v18, "superRange"), v34 = v33, objc_msgSend(v18, "type") != 2) ? (v35 = objc_msgSend(v18, "type") == 1) : (v35 = 1), -[CRLWPRep glyphRectForRange:includingLabel:](self, "glyphRectForRange:includingLabel:", v32, v34, v35), v36 = v52, v52[6] = v28, v36[7] = v29, v36[8] = v30, v36[9] = v31) : (objc_msgSend(v18, "visualRanges"), v19 = objc_claimAutoreleasedReturnValue(), v20 = objc_msgSend(v19, "rangeAtIndex:", 0), -[CRLWPRep glyphRectForRange:includingLabel:](self, "glyphRectForRange:includingLabel:", v20, v21, 0), v22 = v52, v52[6] = v23, v22[7] = v24, v22[8] = v25, v22[9] = v26, v19, objc_msgSend(v18, "visualRanges"), v27 = objc_claimAutoreleasedReturnValue(), v50[0] = _NSConcreteStackBlock, v50[1] = 3221225472, v50[2] = sub_10047124C, v50[3] = &unk_1018651D8, v50[4] = self, v50[5] = &v51, objc_msgSend(v27, "enumerateRanges:", v50), v27, v28 = v52[6], v29 = v52[7], v30 = v52[8], v31 = v52[9]), !CGRectIsEmpty(*&v28)))
  {
    v37 = v52[6];
    v38 = v52[7];
    v39 = v52[8];
    v40 = v52[9];
    v41 = 1;
  }

  else
  {
    [(CRLWPRep *)self rectForSelection:v18 includeRuby:0 includePaginatedAttachments:1];
    v41 = 0;
    v42 = v52;
    v52[6] = v37;
    v42[7] = v38;
    v42[8] = v39;
    v42[9] = v40;
  }

  v58 = CGRectInset(*&v37, inset, inset);
  v43 = v52;
  v44 = v52;
  *(v52 + 6) = v58;
  v45 = v44 + 6;
  if (frame)
  {
    v46 = *(v45 + 1);
    frame->origin = *v45;
    frame->size = v46;
    v58 = *(v43 + 6);
  }

  BYTE1(v49) = reps;
  LOBYTE(v49) = invisibles;
  v47 = [(CRLWPRep *)self p_imageForRect:v41 usingGlyphRect:0 prepareBackground:background drawBackground:pulsateCopy shouldPulsate:0 forCaret:v18 drawSelection:v58.origin.x suppressInvisibles:v58.origin.y suppressChildReps:v58.size.width, v58.size.height, v49];
  _Block_object_dispose(&v51, 8);

  return v47;
}

- (BOOL)isOverflowing
{
  v3 = objc_opt_class();
  layout = [(CRLWPRep *)self layout];
  v5 = sub_100014370(v3, layout);

  LOBYTE(layout) = [v5 isOverflowing];
  return layout;
}

- (void)editingDidEndWithTextEditor:(id)editor
{
  [(CRLWPRep *)self p_hideSelectionLayers];
  if ([(CRLWPRep *)self doesNeedDisplayOnEditingDidEnd])
  {
    [(CRLWPRep *)self setNeedsDisplay];
  }

  v4 = objc_opt_class();
  parentRep = [(CRLCanvasRep *)self parentRep];
  v6 = sub_100014370(v4, parentRep);

  if (v6)
  {
    [v6 setShadowOnChildrenDisabled:0];
  }
}

- (void)p_updateAnimationWithAnimatingPulse:(BOOL)pulse
{
  pulseCopy = pulse;
  if (![(CRLWPHighlightArrayController *)self->_pulseArrayController pulsating])
  {
    primaryFindResultSearchReference = [(CRLWPRep *)self primaryFindResultSearchReference];

    if (primaryFindResultSearchReference)
    {
      if (!self->_updatingHighlights)
      {
        self->_updatingHighlights = 1;
        canvas = [(CRLCanvasRep *)self canvas];
        [canvas viewScale];
        [(CRLWPHighlightArrayController *)self->_pulseArrayController setViewScale:?];

        [(CRLWPHighlightArrayController *)self->_pulseArrayController reset];
        v7 = sub_1002843F0();
        v8[0] = _NSConcreteStackBlock;
        v8[1] = 3221225472;
        v8[2] = sub_1004715A8;
        v8[3] = &unk_101865200;
        v8[4] = self;
        v8[5] = v7;
        [(CRLWPRep *)self prepareLayoutForImagingSearchReferencesAsActive:1 usingBlock:v8];
        CGColorRelease(v7);
        if (pulseCopy)
        {
          [(CRLWPHighlightArrayController *)self->_pulseArrayController startAnimating];
        }

        [(CRLWPRep *)self p_setSelectionLineLayersHidden:1];
        self->_updatingHighlights = 0;
      }
    }
  }
}

- (void)updateVisualSelection:(id)selection
{
  selectionCopy = selection;
  CGPathRelease([CRLWPRep p_newSelectionPathForSelection:"p_newSelectionPathForSelection:transform:headPinRect:tailPinRect:" transform:? headPinRect:? tailPinRect:?]);
}

- (CGPath)p_newSelectionPathForSelection:(id)selection transform:(CGAffineTransform *)transform headPinRect:(CGRect *)rect tailPinRect:(CGRect *)pinRect markedText:(BOOL)text
{
  textCopy = text;
  selectionCopy = selection;
  v14 = 0x7FFFFFFFFFFFFFFFLL;
  v13 = 0;
  type = [selectionCopy type];
  if ([selectionCopy headCharIndex] != 0x7FFFFFFFFFFFFFFFLL)
  {
    tailCharIndex = [selectionCopy tailCharIndex];
    if (type == 7 && tailCharIndex != 0x7FFFFFFFFFFFFFFFLL)
    {
      headCharIndex = [selectionCopy headCharIndex];
      tailCharIndex2 = [selectionCopy tailCharIndex];
      if (tailCharIndex2 >= headCharIndex)
      {
        v19 = headCharIndex;
      }

      else
      {
        v19 = tailCharIndex2;
      }

      headCharIndex2 = [selectionCopy headCharIndex];
      tailCharIndex3 = [selectionCopy tailCharIndex];
      if (headCharIndex2 <= tailCharIndex3)
      {
        v22 = tailCharIndex3;
      }

      else
      {
        v22 = headCharIndex2;
      }

      if (v19 <= v22 + 1)
      {
        v23 = v22 + 1;
      }

      else
      {
        v23 = v19;
      }

      if (v19 >= v22 + 1)
      {
        v14 = v22 + 1;
      }

      else
      {
        v14 = v19;
      }

      v13 = v23 - v14;
    }
  }

  if (v14 == 0x7FFFFFFFFFFFFFFFLL)
  {
    range = [selectionCopy range];
    v13 = v25;
    v26 = range != 0x7FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v26 = 1;
  }

  Mutable = 0;
  size = CGRectNull.size;
  origin = CGRectNull.origin;
  v81 = size;
  v78 = origin;
  v79 = size;
  if (v26 && v13)
  {
    memset(&m, 0, sizeof(m));
    if (transform)
    {
      v29 = *&transform->c;
      *&m.a = *&transform->a;
      *&m.c = v29;
      *&m.tx = *&transform->tx;
    }

    else
    {
      [(CRLCanvasRep *)self transformToConvertNaturalToLayerRelative];
    }

    canvas = [(CRLCanvasRep *)self canvas];
    [canvas contentsScale];
    v71 = v31;

    columns = [(CRLWPRep *)self columns];
    p_superclass = &OBJC_METACLASS___CRLCountedObserver.superclass;
    [CRLWPColumn populateHeadAndTailCharIndicesInSelection:selectionCopy forColumns:columns];
    v70 = [CRLWPColumn selectionRectsforColumns:columns forSelection:selectionCopy];
    if ([v70 count])
    {
      Mutable = CGPathCreateMutable();
      textIsVertical = [(CRLWPRep *)self textIsVertical];
      v75 = 0u;
      v76 = 0u;
      v73 = 0u;
      v74 = 0u;
      v35 = v70;
      v36 = [v35 countByEnumeratingWithState:&v73 objects:v82 count:16];
      if (v36)
      {
        v37 = *v74;
        if (textIsVertical)
        {
          v38 = 0.0;
        }

        else
        {
          v38 = 0.5;
        }

        if (textIsVertical)
        {
          v39 = 0.5;
        }

        else
        {
          v39 = 0.0;
        }

        do
        {
          for (i = 0; i != v36; i = i + 1)
          {
            if (*v74 != v37)
            {
              objc_enumerationMutation(v35);
            }

            [*(*(&v73 + 1) + 8 * i) CGRectValue];
            v45 = v41;
            v46 = v42;
            v47 = v43;
            v48 = v44;
            if (textCopy)
            {
              v83 = CGRectInset(*&v41, v38, v39);
              x = v83.origin.x;
              y = v83.origin.y;
              width = v83.size.width;
              height = v83.size.height;
              v72 = m;
              if (sub_100139B5C(&v72.a))
              {
                v72 = m;
                v84.origin.x = x;
                v84.origin.y = y;
                v84.size.width = width;
                v84.size.height = height;
                v85 = CGRectApplyAffineTransform(v84, &v72);
                v86.origin.x = sub_1001221E8(v85.origin.x, v85.origin.y, v85.size.width, v85.size.height, v71);
                v53 = v86.origin.x;
                v54 = v86.origin.y;
                v55 = v86.size.width;
                v56 = v86.size.height;
                v57 = CGRectGetHeight(v86);
                v87.origin.x = v53;
                v87.origin.y = v54;
                v87.size.width = v55;
                v87.size.height = v56;
                v58 = CGRectGetWidth(v87);
                if (v57 * 0.5 <= 2.0)
                {
                  v59 = v57 * 0.5;
                }

                else
                {
                  v59 = 2.0;
                }

                v60 = v58 * 0.5;
                if (v60 <= 2.0)
                {
                  v61 = v60;
                }

                else
                {
                  v61 = 2.0;
                }

                v88.origin.x = v53;
                v88.origin.y = v54;
                v88.size.width = v55;
                v88.size.height = v56;
                CGPathAddRoundedRect(Mutable, 0, v88, v61, v59);
              }

              else
              {
                v93.origin.x = x;
                v93.origin.y = y;
                v93.size.width = width;
                v93.size.height = height;
                v62 = CGRectGetHeight(v93);
                v94.origin.x = x;
                v94.origin.y = y;
                v94.size.width = width;
                v94.size.height = height;
                v63 = CGRectGetWidth(v94);
                if (v62 * 0.5 <= 2.0)
                {
                  v64 = v62 * 0.5;
                }

                else
                {
                  v64 = 2.0;
                }

                v65 = v63 * 0.5;
                if (v65 <= 2.0)
                {
                  v66 = v65;
                }

                else
                {
                  v66 = 2.0;
                }

                v95.origin.x = x;
                v95.origin.y = y;
                v95.size.width = width;
                v95.size.height = height;
                CGPathAddRoundedRect(Mutable, &m, v95, v66, v64);
              }
            }

            else
            {
              v72 = m;
              if (sub_100139B5C(&v72.a))
              {
                v72 = m;
                v89.origin.x = v45;
                v89.origin.y = v46;
                v89.size.width = v47;
                v89.size.height = v48;
                v90 = CGRectApplyAffineTransform(v89, &v72);
                v91.origin.x = sub_1001221E8(v90.origin.x, v90.origin.y, v90.size.width, v90.size.height, v71);
                CGPathAddRect(Mutable, 0, v91);
              }

              else
              {
                v92.origin.x = v45;
                v92.origin.y = v46;
                v92.size.width = v47;
                v92.size.height = v48;
                CGPathAddRect(Mutable, &m, v92);
              }
            }
          }

          v36 = [v35 countByEnumeratingWithState:&v73 objects:v82 count:16];
        }

        while (v36);
      }

      p_superclass = (&OBJC_METACLASS___CRLCountedObserver + 8);
    }

    else
    {
      Mutable = 0;
    }

    if (rect | pinRect)
    {
      [p_superclass + 214 calculateSelectionPinRectsForSelection:selectionCopy inColumns:columns outSelectionPinRect:&origin outSelectionTailPinRect:&v78];
    }
  }

  if (rect)
  {
    v67 = v81;
    rect->origin = origin;
    rect->size = v67;
  }

  if (pinRect)
  {
    v68 = v79;
    pinRect->origin = v78;
    pinRect->size = v68;
  }

  return Mutable;
}

- (id)p_lineSelectionsForSelection:(id)selection
{
  selectionCopy = selection;
  if ([selectionCopy isRange])
  {
    v14 = 0u;
    v15 = 0u;
    v12 = 0u;
    v13 = 0u;
    columns = [(CRLWPRep *)self columns];
    v6 = 0;
    v7 = [columns countByEnumeratingWithState:&v12 objects:v16 count:16];
    if (v7)
    {
      v8 = *v13;
      do
      {
        for (i = 0; i != v7; i = i + 1)
        {
          if (*v13 != v8)
          {
            objc_enumerationMutation(columns);
          }

          v10 = [*(*(&v12 + 1) + 8 * i) lineSelectionsForSelection:selectionCopy];
          if (v10)
          {
            if (!v6)
            {
              v6 = +[NSMutableArray array];
            }

            [v6 addObjectsFromArray:v10];
          }
        }

        v7 = [columns countByEnumeratingWithState:&v12 objects:v16 count:16];
      }

      while (v7);
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)lineSearchReferencesForSearchReference:(id)reference
{
  referenceCopy = reference;
  selection = [referenceCopy selection];
  [(CRLWPRep *)self p_lineSelectionsForSelection:selection];
  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v6 = v18 = 0u;
  v7 = 0;
  v8 = [v6 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v8)
  {
    v9 = *v18;
    do
    {
      v10 = 0;
      do
      {
        if (*v18 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v17 + 1) + 8 * v10);
        if (!v7)
        {
          v7 = +[NSMutableArray array];
        }

        v12 = [referenceCopy copy];
        range = [v11 range];
        [v12 setRange:{range, v14}];
        [v7 addObject:v12];

        v10 = v10 + 1;
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v8);
  }

  v15 = v7;
  return v7;
}

- (CGPoint)p_pinPoint:(CGPoint)point toRect:(CGRect)rect
{
  v4 = sub_1001203B8(point.x, point.y, rect.origin.x, rect.origin.y, rect.size.width + -1.0, rect.size.height + -1.0);
  result.y = v5;
  result.x = v4;
  return result;
}

- (void)p_updateLayersForRangeSelection:(id)selection selectionFlags:(unint64_t)flags
{
  flagsCopy = flags;
  selectionCopy = selection;
  p_canShowSelectionAndCaretLayers = [(CRLWPRep *)self p_canShowSelectionAndCaretLayers];
  [(CRLWPRep *)self hideCaretLayer];
  selectionLineLayers = self->_selectionLineLayers;
  if (!self->_selectionLineLayers[0])
  {
    [(CRLWPRep *)self p_createSelectionLineLayers];
  }

  if (flagsCopy)
  {
    v9 = [CABasicAnimation animationWithKeyPath:@"path"];
    [v9 setDuration:0.100000001];
    [(CAShapeLayer *)self->_selectionHighlightLayer addAnimation:v9 forKey:@"selectionHighlightPathAnimation"];
    if ([(CRLWPRep *)self p_shouldDisplaySelectionControls])
    {
      [*selectionLineLayers addAnimation:v9 forKey:@"leftSelectionLinePositionAnimation"];
      [(CAShapeLayer *)self->_selectionLineLayers[1] addAnimation:v9 forKey:@"rightSelectionLinePositionAnimation"];
    }
  }

  size = CGRectNull.size;
  v29.origin = CGRectNull.origin;
  v29.size = size;
  v28.origin = v29.origin;
  v28.size = size;
  if (p_canShowSelectionAndCaretLayers)
  {
    [selectionCopy isVisual];
    v11 = [(CRLWPRep *)self p_newSelectionPathForSelection:selectionCopy transform:0 headPinRect:&v29 tailPinRect:&v28];
    [(CRLWPRep *)self p_hideSelectionParagraphBorderLayer];
    selectionHighlightLayer = self->_selectionHighlightLayer;
    if (v11)
    {
      [(CAShapeLayer *)selectionHighlightLayer setPath:v11];
      [(CAShapeLayer *)self->_selectionHighlightLayer setHidden:0];
    }

    else
    {
      [(CAShapeLayer *)selectionHighlightLayer setHidden:1];
      [(CAShapeLayer *)self->_selectionHighlightLayer setPath:0];
    }

    CGPathRelease(0);
    CGPathRelease(v11);
    [(CRLWPRep *)self p_setSelectionHighlightColor];
  }

  else
  {
    [(CRLWPRep *)self p_hideSelectionParagraphBorderLayer];
    [(CAShapeLayer *)self->_selectionHighlightLayer setHidden:1];
    [(CAShapeLayer *)self->_selectionHighlightLayer setPath:0];
  }

  canvas = [(CRLCanvasRep *)self canvas];
  [canvas viewScale];
  v15 = v14;

  textIsVertical = [(CRLWPRep *)self textIsVertical];
  v17 = [selectionCopy type] == 3 || objc_msgSend(selectionCopy, "type") == 5;
  if (([(CRLWPRep *)self p_shouldDisplaySelectionControls]& p_canShowSelectionAndCaretLayers) == 1 && ((IsEmpty = CGRectIsEmpty(v29), v15 == 0.0) ? (v19 = 1) : (v19 = IsEmpty), ((v19 | v17) & 1) == 0))
  {
    v21 = 1.0 / v15;
    if (textIsVertical)
    {
      x = v29.origin.x;
      v29.size.height = 2.0 / v15;
      v29.origin.y = v29.origin.y - v21;
    }

    else
    {
      x = v29.origin.x - v21;
      v29.size.width = 2.0 / v15;
      v29.origin.x = v29.origin.x - v21;
    }

    v20 = [(CRLCanvasRep *)self newPathInScaledCanvasFromNaturalRect:x];
    [*selectionLineLayers setHidden:0];
    [*selectionLineLayers setPath:v20];
  }

  else
  {
    [*selectionLineLayers setHidden:1];
    [*selectionLineLayers setPath:0];
    v20 = 0;
  }

  if (([(CRLWPRep *)self p_shouldDisplaySelectionControls]& p_canShowSelectionAndCaretLayers) == 1 && ((v23 = CGRectIsEmpty(v28), v15 == 0.0) ? (v24 = 1) : (v24 = v23), ((v24 | v17) & 1) == 0))
  {
    v26 = v28;
    if (textIsVertical)
    {
      v28.origin.y = CGRectGetMaxY(v26) + -1.0 / v15;
      v28.size.height = 2.0 / v15;
      v27 = v28.origin.x;
    }

    else
    {
      v27 = CGRectGetMaxX(v26) + -1.0 / v15;
      v28.origin.x = v27;
      v28.size.width = 2.0 / v15;
    }

    v25 = [(CRLCanvasRep *)self newPathInScaledCanvasFromNaturalRect:v27, *&v28.origin, *&v28.size, *&v29.origin, *&v29.size];
    [selectionLineLayers[1] setHidden:0];
    [selectionLineLayers[1] setPath:v25];
  }

  else
  {
    [(CAShapeLayer *)self->_selectionLineLayers[1] setHidden:1];
    [(CAShapeLayer *)self->_selectionLineLayers[1] setPath:0];
    v25 = 0;
  }

  CGPathRelease(v20);
  CGPathRelease(v25);
}

- (BOOL)p_canShowSelectionAndCaretLayers
{
  selection = [(CRLWPRep *)self selection];
  isRange = [selection isRange];

  if (isRange)
  {
    selection2 = [(CRLWPRep *)self selection];
    range = [selection2 range];
    v8 = v7;

    v18.location = [(CRLWPRep *)self range];
    v19.location = range;
    v19.length = v8;
    v9 = NSIntersectionRange(v18, v19);
    if (self->_secondaryHighlightLayer)
    {
      v10 = 1;
    }

    else
    {
      v10 = v9.length == 0;
    }

    if (!v10)
    {
      goto LABEL_6;
    }

    return 0;
  }

  if (self->_secondaryHighlightLayer)
  {
    return 0;
  }

LABEL_6:
  selection3 = [(CRLWPRep *)self selection];
  interactiveCanvasController = [(CRLCanvasRep *)self interactiveCanvasController];
  editorController = [interactiveCanvasController editorController];
  selectionPath = [editorController selectionPath];
  v15 = [selectionPath mostSpecificSelectionOfClass:0];
  v16 = selection3 == v15;

  return v16;
}

- (void)p_hideSelectionLayers
{
  [(CRLWPRep *)self hideCaretLayer];
  [(CRLWPRep *)self p_setSelectionLineLayersHidden:1];
  [(CRLWPRep *)self p_hideSelectionHighlightLayer];
  [(CRLWPRep *)self p_hideSelectionParagraphBorderLayer];

  [(CRLCanvasRep *)self invalidateKnobs];
}

- (void)i_setNeedsErasableDisplayInRange:(_NSRange)range
{
  length = range.length;
  location = range.location;
  x = CGRectNull.origin.x;
  y = CGRectNull.origin.y;
  width = CGRectNull.size.width;
  height = CGRectNull.size.height;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  columns = [(CRLWPRep *)self columns];
  v11 = [columns countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v11)
  {
    v12 = *v19;
    do
    {
      v13 = 0;
      do
      {
        if (*v19 != v12)
        {
          objc_enumerationMutation(columns);
        }

        [*(*(&v18 + 1) + 8 * v13) erasableRectForSelectionRange:{location, length}];
        v26.origin.x = v14;
        v26.origin.y = v15;
        v26.size.width = v16;
        v26.size.height = v17;
        v23.origin.x = x;
        v23.origin.y = y;
        v23.size.width = width;
        v23.size.height = height;
        v24 = CGRectUnion(v23, v26);
        x = v24.origin.x;
        y = v24.origin.y;
        width = v24.size.width;
        height = v24.size.height;
        v13 = v13 + 1;
      }

      while (v11 != v13);
      v11 = [columns countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v11);
  }

  v25.origin.x = x;
  v25.origin.y = y;
  v25.size.width = width;
  v25.size.height = height;
  if (!CGRectIsEmpty(v25))
  {
    [(CRLWPRep *)self setNeedsDisplayInRect:x, y, width, height];
  }
}

- (void)i_spellCheckerWordsDidChange
{
  if (self->_spellChecker && [(CRLWPRep *)self p_spellCheckingEnabled])
  {

    [(CRLWPRep *)self setNeedsDisplay];
  }
}

- (void)p_invalidateSuppressedMisspellingRange
{
  if (self->_suppressedMisspellingRange.location != 0x7FFFFFFFFFFFFFFFLL)
  {
    if (self->_suppressedMisspellingRange.length)
    {
      [(CRLWPRep *)self i_setNeedsErasableDisplayInRange:?];
    }
  }
}

- (void)p_setSuppressedMisspellingRange:(_NSRange)range
{
  length = range.length;
  location = range.location;
  v13.location = [(CRLWPRep *)self range];
  v13.length = v6;
  v12.location = location;
  v12.length = length;
  v7 = NSIntersectionRange(v12, v13);
  if (v7.length)
  {
    v8 = v7.length;
  }

  else
  {
    v8 = 0;
  }

  if (v7.length)
  {
    v9 = v7.location;
  }

  else
  {
    v9 = 0x7FFFFFFFFFFFFFFFLL;
  }

  if (v9 != self->_suppressedMisspellingRange.location || v8 != self->_suppressedMisspellingRange.length)
  {
    [(CRLWPRep *)self p_invalidateSuppressedMisspellingRange];
    self->_suppressedMisspellingRange.location = v9;
    self->_suppressedMisspellingRange.length = v8;

    [(CRLWPRep *)self p_invalidateSuppressedMisspellingRange];
  }
}

- (void)p_updateSuppressedSpellingRange
{
  selection = [(CRLWPRep *)self selection];
  location = self->_suppressedMisspellingRange.location;
  length = self->_suppressedMisspellingRange.length;
  if (location != 0x7FFFFFFFFFFFFFFFLL || length != 0)
  {
    v12.location = [(CRLWPRep *)self range];
    v12.length = v7;
    v11.location = location;
    v11.length = length;
    self->_suppressedMisspellingRange = NSIntersectionRange(v11, v12);
  }

  if ([selection isValid])
  {
    interactiveCanvasController = [(CRLCanvasRep *)self interactiveCanvasController];
    canvas = [interactiveCanvasController canvas];
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_100472A70;
    v10[3] = &unk_10185D010;
    v10[4] = self;
    v10[5] = selection;
    [canvas performBlockAfterLayoutIfNecessary:v10];
  }

  else
  {
    [(CRLWPRep *)self p_setSuppressedMisspellingRange:0x7FFFFFFFFFFFFFFFLL, 0];
    interactiveCanvasController = [(CRLWPRep *)self storage];
    self->_changeCountForSpellingSuppression = [interactiveCanvasController changeCount];
  }
}

- (void)p_updateForCurrentSelectionWithFlags:(unint64_t)flags
{
  selection = [(CRLWPRep *)self selection];
  if (selection)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v6 = +[CRLAssertionHandler _atomicIncrementAssertCount];
      if (qword_101AD5A10 != -1)
      {
        sub_10137A1CC();
      }

      v7 = off_1019EDA68;
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        v33 = objc_opt_class();
        v36 = NSStringFromClass(v33);
        v34 = objc_opt_class();
        NSStringFromClass(v34);
        *buf = 67110658;
        v38 = v6;
        v39 = 2082;
        v40 = "[CRLWPRep p_updateForCurrentSelectionWithFlags:]";
        v41 = 2082;
        v42 = "/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLWP/CRLWPRep.mm";
        v43 = 1024;
        v44 = 3043;
        v45 = 2082;
        v46 = "[CRLWPRep p_updateForCurrentSelectionWithFlags:]";
        v47 = 2114;
        v48 = v36;
        v35 = v49 = 2114;
        v50 = v35;
        _os_log_error_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d %{public}s expected %{public}@, got %{public}@", buf, 0x40u);
      }

      if (qword_101AD5A10 != -1)
      {
        sub_10137A1E0();
      }

      v8 = off_1019EDA68;
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        +[CRLAssertionHandler packedBacktraceString];
        objc_claimAutoreleasedReturnValue();
        sub_10130E89C();
      }

      v9 = [NSString stringWithUTF8String:"[CRLWPRep p_updateForCurrentSelectionWithFlags:]"];
      v10 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLWP/CRLWPRep.mm"];
      v11 = objc_opt_class();
      v12 = NSStringFromClass(v11);
      v13 = objc_opt_class();
      v14 = NSStringFromClass(v13);
      [CRLAssertionHandler handleFailureInFunction:v9 file:v10 lineNumber:3043 isFatal:0 description:"%{public}s expected %{public}@, got %{public}@", "[CRLWPRep p_updateForCurrentSelectionWithFlags:]", v12, v14];
    }
  }

  if ([(CRLWPRep *)self p_isRedesignedTextCursorEnabled])
  {
    layout = [(CRLWPRep *)self layout];
    v16 = layout == 0;

    if (!v16)
    {
      [(CRLWPRep *)self p_validateWithLayoutController];
    }
  }

  if (self->_caretLayer && !self->_suppressSelectionHighlight)
  {
    layout2 = [(CRLWPRep *)self layout];
    v18 = layout2 == 0;

    if (!v18)
    {
      [(CRLWPRep *)self p_validateWithLayoutController];
    }

    [(CRLWPRep *)self p_updateSuppressedSpellingRange];
    textEditor = [(CRLWPRep *)self textEditor];
    markedRange = [textEditor markedRange];
    v22 = v21;

    v23 = selection;
    storage = [(CRLWPRep *)self storage];
    hasMarkedText = [storage hasMarkedText];

    if (hasMarkedText)
    {
      v51.location = [v23 range];
      v52.location = markedRange;
      v52.length = v22;
      v26 = [[_TtC8Freeform12CRLTextRange alloc] initWithRange:NSUnionRange(v51, v52).location, v51.length];
      makeTrailingInsertionPoint = [(CRLTextRange *)v26 makeTrailingInsertionPoint];
      nsRange = [makeTrailingInsertionPoint nsRange];
      v30 = [v23 copyWithNewRange:{nsRange, v29}];

      v23 = v30;
    }

    isInsertionPoint = [v23 isInsertionPoint];
    if (v22)
    {
      v32 = 1;
    }

    else
    {
      v32 = isInsertionPoint;
    }

    if (v32 == 1)
    {
      [(CRLWPRep *)self p_updateLayersForInsertionPointSelection:v23];
    }

    else if ([v23 isRange])
    {
      [(CRLWPRep *)self p_updateLayersForRangeSelection:v23 selectionFlags:flags];
    }

    else
    {
      [(CRLWPRep *)self p_hideSelectionLayers];
    }

    [(CRLWPRep *)self p_updateMarkHighlightLayer];
  }
}

- (void)i_setNeedsDisplayForSelectionChange
{
  if (!self->_lastSelection)
  {
    goto LABEL_4;
  }

  storage = [(CRLWPRep *)self storage];
  parentInfo = [storage parentInfo];
  if (objc_opt_respondsToSelector())
  {
    storage2 = [(CRLWPRep *)self storage];
    parentInfo2 = [storage2 parentInfo];
    shouldHideEmptyBullets = [parentInfo2 shouldHideEmptyBullets];

    if (shouldHideEmptyBullets)
    {
LABEL_4:
      [(CRLWPRep *)self setNeedsDisplay];
      goto LABEL_38;
    }
  }

  else
  {
  }

  selection = [(CRLWPRep *)self selection];
  if (!-[CRLWPSelection isEqual:](self->_lastSelection, "isEqual:", selection) && (([selection isRange] & 1) != 0 || -[CRLWPSelection isRange](self->_lastSelection, "isRange")))
  {
    if (selection)
    {
      range = [selection range];
      v11 = v10;
      storage3 = [(CRLWPRep *)self storage];
      v50.location = [storage3 range];
      v50.length = v13;
      v47.location = range;
      v47.length = v11;
      v14 = NSIntersectionRange(v47, v50);
      location = v14.location;
      length = v14.length;

      v17 = v14.length != 0;
    }

    else
    {
      v17 = 0;
      location = 0;
      length = 0;
    }

    range2 = [(CRLWPSelection *)self->_lastSelection range];
    v20 = v19;
    storage4 = [(CRLWPRep *)self storage];
    v51.location = [storage4 range];
    v51.length = v22;
    v48.location = range2;
    v48.length = v20;
    v23 = NSIntersectionRange(v48, v51);

    v24 = objc_alloc_init(NSMutableIndexSet);
    v25 = v24;
    if (v17)
    {
      [v24 addIndexesInRange:{location, length}];
    }

    if (v23.length)
    {
      [v25 addIndexesInRange:{v23.location, v23.length}];
      if (v17)
      {
        v49.location = location;
        v49.length = length;
        v26 = NSIntersectionRange(v49, v23);
        [v25 removeIndexesInRange:{v26.location, v26.length}];
      }
    }

    v43 = 0;
    v44 = &v43;
    v45 = 0x2020000000;
    v46 = 0x7FFFFFFFFFFFFFFFLL;
    v42[0] = _NSConcreteStackBlock;
    v42[1] = 3221225472;
    v42[2] = sub_100473AE4;
    v42[3] = &unk_1018652A8;
    v42[4] = self;
    v42[5] = &v43;
    [v25 enumerateIndexesUsingBlock:v42];
    v38 = 0;
    v39 = &v38;
    v40 = 0x2020000000;
    v41 = 0x7FFFFFFFFFFFFFFFLL;
    if (v44[3] != 0x7FFFFFFFFFFFFFFFLL)
    {
      v37[0] = _NSConcreteStackBlock;
      v37[1] = 3221225472;
      v37[2] = sub_100473B84;
      v37[3] = &unk_1018652A8;
      v37[4] = self;
      v37[5] = &v38;
      [v25 enumerateIndexesWithOptions:2 usingBlock:v37];
      v27 = v44[3];
      if (v27 != 0x7FFFFFFFFFFFFFFFLL)
      {
        v28 = v39[3];
        if (v28 == 0x7FFFFFFFFFFFFFFFLL)
        {
          +[CRLAssertionHandler _atomicIncrementAssertCount];
          if (qword_101AD5A10 != -1)
          {
            sub_10137A208();
          }

          if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
          {
            sub_10137A230();
          }

          if (qword_101AD5A10 != -1)
          {
            sub_10137A2C0();
          }

          v29 = off_1019EDA68;
          if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
          {
            +[CRLAssertionHandler packedBacktraceString];
            objc_claimAutoreleasedReturnValue();
            sub_10130E89C();
          }

          v30 = [NSString stringWithUTF8String:"[CRLWPRep i_setNeedsDisplayForSelectionChange]"];
          v31 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLWP/CRLWPRep.mm"];
          [CRLAssertionHandler handleFailureInFunction:v30 file:v31 lineNumber:3120 isFatal:0 description:"If there is a invisible char, we should have found it going backwards."];

          v27 = v44[3];
          v28 = v39[3];
        }

        if (v27 <= v28 + 1)
        {
          v32 = v28 + 1;
        }

        else
        {
          v32 = v27;
        }

        if (v27 >= v28 + 1)
        {
          v33 = v28 + 1;
        }

        else
        {
          v33 = v27;
        }

        [(CRLWPRep *)self i_setNeedsErasableDisplayInRange:v33, v32 - v33];
      }
    }

    _Block_object_dispose(&v38, 8);
    _Block_object_dispose(&v43, 8);
  }

LABEL_38:
  if (self->_lastSelection)
  {
    [(CRLWPRep *)self updateUniversalAccessZoomWindow];
  }

  selection2 = [(CRLWPRep *)self selection];
  v35 = [selection2 copy];
  lastSelection = self->_lastSelection;
  self->_lastSelection = v35;
}

- (void)p_validateWithLayoutController
{
  layout = [(CRLWPRep *)self layout];
  layoutController = [layout layoutController];
  [layoutController validateLayoutWithDependencies:layout];
}

- (void)p_drawTextLayerInContext:(CGContext *)context
{
  CGContextSaveGState(context);
  textLayer = [(CRLWPRep *)self textLayer];
  [(CRLCanvasRep *)self setupForDrawingInLayer:textLayer context:context];

  textLayer2 = [(CRLWPRep *)self textLayer];
  LOBYTE(v8) = 0;
  [(CRLWPRep *)self p_drawTextInLayer:textLayer2 context:context limitSelection:0 rubyGlyphRange:0x7FFFFFFFFFFFFFFFLL renderMode:0 suppressInvisibles:3, v8];

  textLayer3 = [(CRLWPRep *)self textLayer];
  [(CRLWPRep *)self didDrawInLayer:textLayer3 context:context];

  CGContextRestoreGState(context);
}

- (void)p_drawTextBackgroundLayerInContext:(CGContext *)context
{
  CGContextSaveGState(context);
  textBackgroundLayer = [(CRLWPRep *)self textBackgroundLayer];
  [(CRLCanvasRep *)self setupForDrawingInLayer:textBackgroundLayer context:context];

  textBackgroundLayer2 = [(CRLWPRep *)self textBackgroundLayer];
  LOBYTE(v8) = 0;
  [(CRLWPRep *)self p_drawTextInLayer:textBackgroundLayer2 context:context limitSelection:0 rubyGlyphRange:0x7FFFFFFFFFFFFFFFLL renderMode:0 suppressInvisibles:2, v8];

  textBackgroundLayer3 = [(CRLWPRep *)self textBackgroundLayer];
  [(CRLWPRep *)self didDrawInLayer:textBackgroundLayer3 context:context];

  CGContextRestoreGState(context);
}

- (void)drawLayer:(id)layer inContext:(CGContext *)context
{
  layerCopy = layer;
  interactiveCanvasController = [(CRLCanvasRep *)self interactiveCanvasController];
  shouldSuppressRendering = [interactiveCanvasController shouldSuppressRendering];

  if ((shouldSuppressRendering & 1) == 0)
  {
    textLayer = [(CRLWPRep *)self textLayer];

    if (textLayer == layerCopy)
    {
      [(CRLWPRep *)self p_drawTextLayerInContext:context];
    }

    else
    {
      textBackgroundLayer = [(CRLWPRep *)self textBackgroundLayer];

      if (textBackgroundLayer == layerCopy)
      {
        [(CRLWPRep *)self p_drawTextBackgroundLayerInContext:context];
      }
    }
  }
}

- (id)actionForLayer:(id)layer forKey:(id)key
{
  v4 = [NSNull null:layer];

  return v4;
}

- (BOOL)shouldLayoutTilingLayer:(id)layer
{
  layerCopy = layer;
  interactiveCanvasController = [(CRLCanvasRep *)self interactiveCanvasController];
  v6 = [interactiveCanvasController shouldLayoutTilingLayer:layerCopy];

  return v6;
}

- (BOOL)textIsVertical
{
  layout = [(CRLWPRep *)self layout];
  textIsVertical = [layout textIsVertical];

  return textIsVertical;
}

- (void)p_teardown
{
  if (!self->_tornDown)
  {
    [(CRLWPRep *)self p_unregisterNotifications];
    [(CRLWPRepCaretController *)self->_caretController stopCaretLayerAnimationHidingCaret:0];
    [(CRLWPRepCaretController *)self->_caretController tearDown];
    if ([(CRLWPHighlightArrayController *)self->_pulseArrayController autohide])
    {
      primaryFindResultSearchReference = [(CRLWPRep *)self primaryFindResultSearchReference];
      if (primaryFindResultSearchReference)
      {
        v4 = primaryFindResultSearchReference;
        interactiveCanvasController = [(CRLCanvasRep *)self interactiveCanvasController];
        primaryFindResultSearchReference2 = [interactiveCanvasController primaryFindResultSearchReference];
        if (primaryFindResultSearchReference2)
        {
          interactiveCanvasController2 = [(CRLCanvasRep *)self interactiveCanvasController];
          primaryFindResultSearchReference3 = [interactiveCanvasController2 primaryFindResultSearchReference];
          primaryFindResultSearchReference4 = [(CRLWPRep *)self primaryFindResultSearchReference];
          v7 = [primaryFindResultSearchReference3 isEqual:primaryFindResultSearchReference4];

          if (v7)
          {
            [(CRLWPRep *)self p_clearICCPrimaryFindResultSearchReference];
          }
        }

        else
        {
        }
      }
    }

    [(CAShapeLayer *)self->_floatingCaretLayer removeAllAnimations];
    [(CAShapeLayer *)self->_floatingCaretLayer removeFromSuperlayer];
    [(CRLPulseAnimationController *)self->_caretPulseController disconnect];
    [(CRLWPHighlightArrayController *)self->_pulseArrayController disconnect];
    [(CRLWPRep *)self p_destroySpellChecker];
    self->_tornDown = 1;
  }

  floatingCaretLayer = self->_floatingCaretLayer;
  self->_floatingCaretLayer = 0;

  searchReferences = self->_searchReferences;
  self->_searchReferences = 0;

  primaryFindResultSearchReference = self->_primaryFindResultSearchReference;
  self->_primaryFindResultSearchReference = 0;

  [(CAShapeLayer *)self->_selectionHighlightLayer setDelegate:0];
  selectionHighlightLayer = self->_selectionHighlightLayer;
  self->_selectionHighlightLayer = 0;

  selectionParagraphBorderLayer = self->_selectionParagraphBorderLayer;
  self->_selectionParagraphBorderLayer = 0;

  lastSelection = self->_lastSelection;
  self->_lastSelection = 0;

  [(CAShapeLayer *)self->_markHighlightLayer setDelegate:0];
  markHighlightLayer = self->_markHighlightLayer;
  self->_markHighlightLayer = 0;

  [(CAShapeLayer *)self->_smartFieldHighlightLayer setDelegate:0];
  smartFieldHighlightLayer = self->_smartFieldHighlightLayer;
  self->_smartFieldHighlightLayer = 0;

  caretPulseController = self->_caretPulseController;
  self->_caretPulseController = 0;

  pulseArrayController = self->_pulseArrayController;
  self->_pulseArrayController = 0;

  caretController = self->_caretController;
  self->_caretController = 0;

  [(CRLWPRep *)self p_destroyLayer:1];
  [(CRLWPRep *)self p_destroyLayer:0];
  [(CAShapeLayer *)self->_selectionLineLayers[0] setDelegate:0];
  v19 = self->_selectionLineLayers[0];
  self->_selectionLineLayers[0] = 0;

  [(CAShapeLayer *)self->_selectionLineLayers[1] setDelegate:0];
  v20 = self->_selectionLineLayers[1];
  self->_selectionLineLayers[1] = 0;

  [(CAShapeLayer *)self->_caretLayer setDelegate:0];
  caretLayer = self->_caretLayer;
  self->_caretLayer = 0;

  [(CAShapeLayer *)self->_secondaryHighlightLayer setDelegate:0];
  secondaryHighlightLayer = self->_secondaryHighlightLayer;
  self->_secondaryHighlightLayer = 0;

  [(CAShapeLayer *)self->_dragAndDropCaretLayer setDelegate:0];
  dragAndDropCaretLayer = self->_dragAndDropCaretLayer;
  self->_dragAndDropCaretLayer = 0;

  [(CALayer *)self->_dragAndDropTopicLayer setDelegate:0];
  dragAndDropTopicLayer = self->_dragAndDropTopicLayer;
  self->_dragAndDropTopicLayer = 0;

  dragAndDropTopicIndentLayer = self->_dragAndDropTopicIndentLayer;
  self->_dragAndDropTopicIndentLayer = 0;

  [NSObject cancelPreviousPerformRequestsWithTarget:self];
}

- (void)p_drawTextInLayer:(id)layer context:(CGContext *)context limitSelection:(id)selection rubyGlyphRange:(_NSRange)range renderMode:(unint64_t)mode suppressInvisibles:(BOOL)invisibles
{
  layerCopy = layer;
  selectionCopy = selection;
  v43 = sub_10050FEFC(context);
  [v43 beginTextStorageChunk:self limitSelection:selectionCopy];
  selfCopy = self;
  canvas = [(CRLCanvasRep *)self canvas];
  v62 = [canvas textRendererForLayer:layerCopy context:context];

  canvas2 = [(CRLCanvasRep *)self canvas];
  canvasController = [canvas2 canvasController];
  freehandDrawingToolkit = [canvasController freehandDrawingToolkit];
  isInDrawingMode = [freehandDrawingToolkit isInDrawingMode];

  canvas3 = [(CRLCanvasRep *)selfCopy canvas];
  if (![canvas3 isCanvasInteractive])
  {

    goto LABEL_5;
  }

  textEditor = [(CRLWPRep *)selfCopy textEditor];

  if (!textEditor)
  {
LABEL_5:
    v19 = 0;
    v46 = 0;
    v47 = 0x7FFFFFFFFFFFFFFFLL;
    goto LABEL_6;
  }

  markedRange = [textEditor markedRange];
  v46 = v18;
  v47 = markedRange;
  v19 = textEditor;
LABEL_6:
  v42 = v19;
  markedText = [v19 markedText];
  v53 = 0;
  if ([(CRLWPRep *)selfCopy p_spellCheckingEnabled]&& !invisibles)
  {
    v53 = selfCopy->_spellChecker;
    if (v53)
    {
      layout = [(CRLWPRep *)selfCopy layout];
      if (([layout isInstructional] & 1) == 0)
      {
        storage = [(CRLWPRep *)selfCopy storage];
        if ([storage length])
        {
          storage2 = [(CRLWPRep *)selfCopy storage];
          markedTextRange = [storage2 markedTextRange];

          if (markedTextRange)
          {
            goto LABEL_16;
          }

          layout = [(CRLWPRep *)selfCopy columns];
          v24 = [CRLWPColumn rangeOfColumns:layout];
          [(CRLWPStorageSpellChecker *)v53 checkRange:v24 synchronously:v25, 1];
        }

        else
        {
        }
      }
    }

    else
    {
      v53 = 0;
    }
  }

LABEL_16:
  v72 = 0u;
  v73 = 0u;
  v70 = 0u;
  v71 = 0u;
  obj = [(CRLWPRep *)selfCopy columns];
  v54 = [obj countByEnumeratingWithState:&v70 objects:v74 count:16];
  if (v54)
  {
    v45 = *v71;
    do
    {
      for (i = 0; i != v54; i = i + 1)
      {
        if (*v71 != v45)
        {
          objc_enumerationMutation(obj);
        }

        v26 = *(*(&v70 + 1) + 8 * i);
        layout2 = [(CRLWPRep *)selfCopy layout];
        interiorClippingPath = [layout2 interiorClippingPath];
        v67 = [interiorClippingPath copy];

        if (v26)
        {
          [v26 transformToWP];
        }

        else
        {
          memset(v69, 0, sizeof(v69));
        }

        [v67 transformUsingAffineTransform:v69];
        [v62 setInteriorClippingPath:v67];
        v64 = +[(CRLWPRangeArray *)CRLWPMutableRangeArray];
        v65 = +[(CRLWPRangeArray *)CRLWPMutableRangeArray];
        v61 = v26;
        if (layerCopy)
        {
          selection = [(CRLWPRep *)selfCopy selection];
          v60 = selection;
        }

        else
        {
          v60 = 0;
        }

        length = selfCopy->_dragRange.length;
        location = selfCopy->_dragRange.location;
        canvas4 = [(CRLCanvasRep *)selfCopy canvas];
        isCanvasInteractive = [canvas4 isCanvasInteractive];
        v31 = selfCopy->_suppressedMisspellingRange.location;
        v32 = selfCopy->_suppressedMisspellingRange.length;
        canvas5 = [(CRLCanvasRep *)selfCopy canvas];
        shouldSuppressBackgrounds = [canvas5 shouldSuppressBackgrounds];
        layout3 = [(CRLWPRep *)selfCopy layout];
        pageCount = [layout3 pageCount];
        canvas6 = [(CRLCanvasRep *)selfCopy canvas];
        canvasController2 = [canvas6 canvasController];
        canvasEditor = [canvasController2 canvasEditor];
        canvasSelection = [canvasEditor canvasSelection];
        LOBYTE(v41) = invisibles;
        LOBYTE(v40) = ((mode & 0x20) != 0) | shouldSuppressBackgrounds;
        BYTE1(v39) = isInDrawingMode;
        LOBYTE(v39) = isCanvasInteractive;
        [v61 renderWithRenderer:v62 currentSelection:v60 limitSelection:selectionCopy listRange:location rubyGlyphRange:length isCanvasInteractive:range.location isInDrawingMode:range.length spellChecker:v39 suppressedMisspellingRange:v53 blackAndWhite:v31 dictationInterpretations:v32 autocorrections:v40 markedRange:v64 markedText:v65 renderMode:v47 pageCount:v46 suppressInvisibles:markedText currentCanvasSelection:{mode, pageCount, v41, canvasSelection}];

        if (layerCopy)
        {
        }
      }

      v54 = [obj countByEnumeratingWithState:&v70 objects:v74 count:16];
    }

    while (v54);
  }

  [v43 endTextStorageChunk:selfCopy];
}

- (void)p_createLayer:(int64_t)layer
{
  textLayers = self->_textLayers;
  if (self->_textLayers[layer])
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_10137A2E8();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10137A2FC();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_10137A38C();
    }

    v6 = off_1019EDA68;
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      +[CRLAssertionHandler packedBacktraceString];
      objc_claimAutoreleasedReturnValue();
      sub_10130E89C();
    }

    v7 = [NSString stringWithUTF8String:"[CRLWPRep p_createLayer:]"];
    v8 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLWP/CRLWPRep.mm"];
    [CRLAssertionHandler handleFailureInFunction:v7 file:v8 lineNumber:3428 isFatal:0 description:"Shouldn't be creating _textLayer again"];
  }

  v9 = objc_alloc_init(CRLTilingLayer);
  v10 = textLayers[layer];
  textLayers[layer] = &v9->super.super;

  [(CALayer *)textLayers[layer] setAnchorPoint:CGPointZero.x, CGPointZero.y];
  [(CALayer *)textLayers[layer] setEdgeAntialiasingMask:0];
  [(CALayer *)textLayers[layer] setDelegate:self];
  [(CALayer *)textLayers[layer] setPosition:CGPointZero.x, CGPointZero.y];
  v11 = -3.0;
  if (layer == 1)
  {
    v11 = -2.0;
  }

  [(CALayer *)textLayers[layer] setZPosition:v11];
  canvas = [(CRLCanvasRep *)self canvas];
  [canvas contentsScale];
  [(CALayer *)textLayers[layer] setContentsScale:?];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [(CALayer *)textLayers[layer] setTilingMode:[(CRLWPRep *)self tilingMode]];
  }

  if (layer == 1)
  {
    [(CALayer *)textLayers[1] setDrawsAsynchronously:1];
  }

  interactiveCanvasController = [(CRLCanvasRep *)self interactiveCanvasController];
  [interactiveCanvasController setNeedsDisplayOnLayer:textLayers[layer]];
}

- (void)p_destroyLayer:(int64_t)layer
{
  textLayers = self->_textLayers;
  [(CALayer *)self->_textLayers[layer] setDelegate:0];
  v5 = textLayers[layer];
  textLayers[layer] = 0;
}

- (id)p_caretLayerWithZPosition:(double)position
{
  v5 = objc_alloc_init(CAShapeLayer);
  [v5 setAnchorPoint:{CGPointZero.x, CGPointZero.y}];
  [v5 setFillColor:{-[CRLWPRep p_caretLayerColor](self, "p_caretLayerColor")}];
  [v5 setEdgeAntialiasingMask:0];
  LODWORD(v6) = 1.0;
  [v5 setOpacity:v6];
  [v5 setDelegate:self];
  [v5 setZPosition:position];
  canvas = [(CRLCanvasRep *)self canvas];
  [canvas contentsScale];
  [v5 setContentsScale:?];

  [v5 setHidden:0];
  [v5 setName:@"Caret Layer"];

  return v5;
}

- (void)p_positionAndSizeFloatingCaret:(id)caret atPoint:(CGPoint)point
{
  y = point.y;
  x = point.x;
  caretCopy = caret;
  [(CRLCanvasRep *)self convertNaturalPointFromUnscaledCanvas:x, y];
  [(CRLWPRep *)self p_closestCaretRectForPoint:1 inSelection:1 allowPastBreak:?];
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v34 = 0u;
  v35 = 0u;
  v33 = 0u;
  [(CRLWPRep *)self transformToConvertNaturalToScaledRoot];
  if (v15 <= 0.0 && v13 <= 0.0)
  {
    [(CRLWPRep *)self p_closestCaretRectForPoint:0 inSelection:0 allowPastBreak:x, y];
    v9 = v16;
    v11 = v17;
    v13 = v18;
    v15 = v19;
  }

  if (v15 > 0.0 || v13 > 0.0)
  {
    [caretCopy setAnchorPoint:{0.5, 0.5}];
    [caretCopy setEdgeAntialiasingMask:0];
    canvas = [(CRLCanvasRep *)self canvas];
    [canvas viewScale];
    v22 = v21;

    [(CRLWPRepHelper *)self->_repHelper floatingCaretHeightMult];
    [caretCopy setBounds:{0.0, 0.0, 2.0 / v22, round(v15 * v23)}];
  }

  v35 = 0uLL;
  v32[0] = v33;
  v32[1] = v34;
  v32[2] = 0uLL;
  [caretCopy setAffineTransform:v32];
  interactiveCanvasController = [(CRLCanvasRep *)self interactiveCanvasController];
  [interactiveCanvasController convertUnscaledToBoundsPoint:{x, y}];
  v26 = v25;
  v28 = v27;

  [(CRLWPRepHelper *)self->_repHelper floatingCaretLineSnapAmount];
  if (v29 > 0.0)
  {
    [(CRLWPRep *)self p_applyLineSnappingToFloatingCaret:caretCopy atPoint:x withRect:y, v9, v11, v13, v15];
    v26 = v30;
    v28 = v31;
  }

  [caretCopy setPosition:{v26, v28}];
}

- (CGPoint)p_applyLineSnappingToFloatingCaret:(id)caret atPoint:(CGPoint)point withRect:(CGRect)rect
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  v9 = point.y;
  v10 = point.x;
  caretCopy = caret;
  [(CRLCanvasRep *)self convertNaturalPointFromUnscaledCanvas:v10, v9];
  v14 = v13;
  v16 = v15;
  v45.origin.x = x;
  v45.origin.y = y;
  v45.size.width = width;
  v45.size.height = height;
  MidY = CGRectGetMidY(v45);
  [(CRLWPRepHelper *)self->_repHelper floatingCaretLineSnapAmount];
  v19 = v18;
  [(CRLCanvasRep *)self naturalBounds];
  v21 = v20;
  [caretCopy bounds];
  if (v22 >= v21)
  {
    v23 = v21;
  }

  else
  {
    v23 = v22;
  }

  [(CRLCanvasRep *)self naturalBounds];
  v25 = v24;
  [caretCopy bounds];
  v27 = v26;
  [(CRLCanvasRep *)self naturalBounds];
  if (v27 >= v25)
  {
    v32 = v25;
  }

  else
  {
    v32 = v27;
  }

  v46 = CGRectInset(*&v28, v23 * 0.5, v32 * 0.5);
  [(CRLCanvasRep *)self convertNaturalPointToUnscaledCanvas:sub_1001203B8(v14, MidY + (v16 - MidY) / v19, v46.origin.x, v46.origin.y, v46.size.width, v46.size.height)];
  v34 = v33;
  v36 = v35;
  interactiveCanvasController = [(CRLCanvasRep *)self interactiveCanvasController];
  [interactiveCanvasController convertUnscaledToBoundsPoint:{v34, v36}];
  v39 = v38;
  v41 = v40;

  v42 = v39;
  v43 = v41;
  result.y = v43;
  result.x = v42;
  return result;
}

- (BOOL)p_positionCaretLayer:(id)layer forSelection:(id)selection layerRelative:(BOOL)relative
{
  relativeCopy = relative;
  layerCopy = layer;
  selectionCopy = selection;
  [(CRLWPRep *)self p_caretRectForSelection:selectionCopy];
  [(CRLWPRepHelper *)self->_repHelper rectForCaretLayer:?];
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v17 = fmax(v15, v13);
  v18 = v17 > 0.0;
  if (v17 > 0.0)
  {
    v19 = v10;
    memset(&v69, 0, sizeof(v69));
    if (relativeCopy)
    {
      [(CRLCanvasRep *)self transformToConvertNaturalToLayerRelative];
    }

    else
    {
      [(CRLWPRep *)self transformToConvertNaturalToScaledRoot];
    }

    transform = v69;
    v70.origin.x = v12;
    v70.origin.y = v19;
    v70.size.width = v14;
    v70.size.height = v16;
    v71 = CGRectApplyAffineTransform(v70, &transform);
    x = v71.origin.x;
    y = v71.origin.y;
    width = v71.size.width;
    height = v71.size.height;
    transform = v69;
    v24 = sub_100139980(&transform);
    sub_1001208E0(v24);
    v26 = fmod(360.0 - v25, 360.0);
    [(CRLWPRepHelper *)self->_repHelper anchorPointForCaretLayer:v14 > 0.0 rotated:v26 != 0.0];
    [layerCopy setAnchorPoint:?];
    if (v26 == 0.0)
    {
      [layerCopy setEdgeAntialiasingMask:0];
      v38 = x;
      v39 = y;
      v40 = width;
      v41 = height;
      if (v14 <= 0.0)
      {
        v73 = CGRectInset(*&v38, (width + -2.0) * 0.5, 0.0);
        v66 = round(v73.origin.y);
        v67 = round(v73.origin.x);
        v37 = round(v73.size.height);
        v36 = 2.0;
      }

      else
      {
        v72 = CGRectInset(*&v38, 0.0, (height + -2.0) * 0.5);
        v66 = round(v72.origin.y);
        v67 = round(v72.origin.x);
        v36 = round(v72.size.width);
        v37 = 2.0;
      }

      v42 = -[CRLWPRep columnForCharIndex:](self, "columnForCharIndex:", [selectionCopy range]);
      [(CRLCanvasRep *)self naturalBounds];
      v44 = v43;
      v46 = v45;
      v48 = v47;
      v50 = v49;
      [v42 boundsIncludingDropCapRectsForSelectionType:{objc_msgSend(selectionCopy, "type")}];
      v79.origin.x = v51;
      v79.origin.y = v52;
      v79.size.width = v53;
      v79.size.height = v54;
      v74.origin.x = v44;
      v74.origin.y = v46;
      v74.size.width = v48;
      v74.size.height = v50;
      v75 = CGRectUnion(v74, v79);
      v55 = v75.origin.x;
      v56 = v75.origin.y;
      v57 = v75.size.width;
      v58 = v75.size.height;
      if (relativeCopy)
      {
        [(CRLCanvasRep *)self transformToConvertNaturalToLayerRelative];
      }

      else
      {
        [(CRLWPRep *)self transformToConvertNaturalToScaledRoot];
      }

      v76.origin.x = v55;
      v76.origin.y = v56;
      v76.size.width = v57;
      v76.size.height = v58;
      v77 = CGRectApplyAffineTransform(v76, &transform);
      if (v67 >= v77.origin.x)
      {
        v33 = v67;
      }

      else
      {
        v33 = v77.origin.x;
      }

      if (v66 >= v77.origin.y)
      {
        v35 = v66;
      }

      else
      {
        v35 = v77.origin.y;
      }
    }

    else
    {
      if (v26 == 180.0 || v26 == 90.0 || v26 == 270.0)
      {
        v29 = 0;
      }

      else
      {
        v29 = 15;
      }

      [layerCopy setEdgeAntialiasingMask:v29];
      [(CRLWPRep *)self p_convertNaturalRectToRotated:x repAngle:y, width, height, v26];
      v33 = v32;
      v35 = v34;
      if (v14 <= 0.0)
      {
        v36 = 2.0;
      }

      else
      {
        v36 = v30;
      }

      if (v14 <= 0.0)
      {
        v37 = v31;
      }

      else
      {
        v37 = 2.0;
      }
    }

    [(CRLWPRepHelper *)self->_repHelper boundsForCaretLayer:v33, v35, v36, v37];
    [layerCopy setBounds:?];
    [(CRLWPRepHelper *)self->_repHelper positionForCaretLayer:v33, v35, v36, v37];
    [layerCopy setPosition:?];
    v59 = objc_opt_class();
    v60 = sub_100013F00(v59, layerCopy);
    CGAffineTransformMakeTranslation(&transform, 0.0, 0.0);
    if (v14 <= 0.0)
    {
      v61 = v36;
    }

    else
    {
      v61 = v37;
    }

    v62 = v61 * 0.5;
    v78.origin.x = 0.0;
    v78.origin.y = 0.0;
    v78.size.width = v36;
    v78.size.height = v37;
    v63 = CGPathCreateWithRoundedRect(v78, v62, v62, &transform);
    [v60 setPath:v63];
    CGPathRelease(v63);
    v64 = [NSNumber numberWithDouble:(360.0 - v26) * 3.14159265 / 180.0];
    [layerCopy setValue:v64 forKeyPath:@"transform.rotation.z"];
  }

  return v18;
}

- (void)i_textInputResponderDidResignFirstResponder
{
  [(CRLWPRepCaretController *)self->_caretController willEnterForeground];
  interactiveCanvasController = [(CRLCanvasRep *)self interactiveCanvasController];
  [interactiveCanvasController invalidateContentLayersForRep:self];
}

- (void)i_textInputResponderDidBecomeFirstResponder
{
  [(CRLWPRepCaretController *)self->_caretController didEnterBackground];
  interactiveCanvasController = [(CRLCanvasRep *)self interactiveCanvasController];
  [interactiveCanvasController invalidateContentLayersForRep:self];
}

- (void)p_createSelectionLineLayers
{
  p_highlightLineColor = [(CRLWPRep *)self p_highlightLineColor];
  v4 = 0;
  selectionLineLayers = self->_selectionLineLayers;
  v6 = 1;
  do
  {
    v7 = v6;
    if (selectionLineLayers[v4])
    {
      v8 = +[CRLAssertionHandler _atomicIncrementAssertCount];
      if (qword_101AD5A10 != -1)
      {
        sub_10137A3B4();
      }

      v9 = off_1019EDA68;
      if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
      {
        *buf = 67109890;
        v17 = v8;
        v18 = 2082;
        v19 = "[CRLWPRep p_createSelectionLineLayers]";
        v20 = 2082;
        v21 = "/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLWP/CRLWPRep.mm";
        v22 = 1024;
        v23 = 3665;
        _os_log_error_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d Shouldn't be creating _selectionLineLayers again", buf, 0x22u);
      }

      if (qword_101AD5A10 != -1)
      {
        sub_10137A3DC();
      }

      v10 = off_1019EDA68;
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        v15 = +[CRLAssertionHandler packedBacktraceString];
        *buf = 67109378;
        v17 = v8;
        v18 = 2114;
        v19 = v15;
        _os_log_error_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: Assertion backtrace: >>%{public}@<<", buf, 0x12u);
      }

      v11 = [NSString stringWithUTF8String:"[CRLWPRep p_createSelectionLineLayers]"];
      v12 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLWP/CRLWPRep.mm"];
      [CRLAssertionHandler handleFailureInFunction:v11 file:v12 lineNumber:3665 isFatal:0 description:"Shouldn't be creating _selectionLineLayers again"];
    }

    v13 = objc_alloc_init(CRLWPSelectionHighlightLayer);
    v14 = selectionLineLayers[v4];
    selectionLineLayers[v4] = &v13->super;

    [(CAShapeLayer *)selectionLineLayers[v4] setAnchorPoint:CGPointZero.x, CGPointZero.y];
    [(CAShapeLayer *)selectionLineLayers[v4] setEdgeAntialiasingMask:0];
    [(CAShapeLayer *)selectionLineLayers[v4] setDelegate:self];
    [(CAShapeLayer *)selectionLineLayers[v4] setZPosition:-1.0];
    [(CAShapeLayer *)selectionLineLayers[v4] setFillColor:p_highlightLineColor];
    v6 = 0;
    v4 = 1;
  }

  while ((v7 & 1) != 0);
}

- (void)p_setSelectionLineLayersHidden:(BOOL)hidden
{
  hiddenCopy = hidden;
  selectionLineLayers = self->_selectionLineLayers;
  [(CAShapeLayer *)self->_selectionLineLayers[0] setHidden:?];
  v5 = selectionLineLayers[1];

  [(CAShapeLayer *)v5 setHidden:hiddenCopy];
}

- (void)p_setSelectionHighlightColor
{
  selection = [(CRLWPRep *)self selection];
  type = [selection type];

  if (type == 3 && ![(CRLWPRep *)self usesStandardHighlightColorForReplaceSelections])
  {
    v12 = [CRLColor colorWithRed:0.949019611 green:0.75686276 blue:0.654901981 alpha:0.200000003];
  }

  else
  {
    interactiveCanvasController = [(CRLCanvasRep *)self interactiveCanvasController];
    layerHost = [interactiveCanvasController layerHost];
    asiOSCVC = [layerHost asiOSCVC];
    crl_windowWrapper = [asiOSCVC crl_windowWrapper];
    if ([crl_windowWrapper isInSplitViewMode])
    {
      interactiveCanvasController2 = [(CRLCanvasRep *)self interactiveCanvasController];
      layerHost2 = [interactiveCanvasController2 layerHost];
      isInFocusedContainer = [layerHost2 isInFocusedContainer];

      if ((isInFocusedContainer & 1) == 0)
      {
        v12 = [objc_opt_class() unfocusedHighlightColorForDarkMode:0];
        goto LABEL_9;
      }
    }

    else
    {
    }

    v12 = [objc_opt_class() focusedHighlightColorForDarkMode:0];
  }

LABEL_9:
  v13 = v12;
  if (!v12)
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_10137A404();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10137A418();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_10137A4B4();
    }

    v14 = off_1019EDA68;
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      +[CRLAssertionHandler packedBacktraceString];
      objc_claimAutoreleasedReturnValue();
      sub_10130E89C();
    }

    v15 = [NSString stringWithUTF8String:"[CRLWPRep p_setSelectionHighlightColor]"];
    v16 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLWP/CRLWPRep.mm"];
    [CRLAssertionHandler handleFailureInFunction:v15 file:v16 lineNumber:3761 isFatal:0 description:"invalid nil value for '%{public}s'", "highlightColor"];
  }

  -[CAShapeLayer setFillColor:](self->_selectionHighlightLayer, "setFillColor:", [v13 CGColor]);
}

- (void)p_createSelectionHighlightLayer
{
  if (self->_selectionHighlightLayer)
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_10137A4DC();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10137A4F0();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_10137A580();
    }

    v3 = off_1019EDA68;
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      +[CRLAssertionHandler packedBacktraceString];
      objc_claimAutoreleasedReturnValue();
      sub_10130E89C();
    }

    v4 = [NSString stringWithUTF8String:"[CRLWPRep p_createSelectionHighlightLayer]"];
    v5 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLWP/CRLWPRep.mm"];
    [CRLAssertionHandler handleFailureInFunction:v4 file:v5 lineNumber:3767 isFatal:0 description:"Shouldn't be creating _selectionHighlightLayer again"];
  }

  v6 = objc_alloc_init(CRLWPSelectionHighlightLayer);
  selectionHighlightLayer = self->_selectionHighlightLayer;
  self->_selectionHighlightLayer = &v6->super;

  [(CAShapeLayer *)self->_selectionHighlightLayer setAnchorPoint:CGPointZero.x, CGPointZero.y];
  [(CAShapeLayer *)self->_selectionHighlightLayer setEdgeAntialiasingMask:0];
  [(CAShapeLayer *)self->_selectionHighlightLayer setDelegate:self];
  [(CAShapeLayer *)self->_selectionHighlightLayer setZPosition:-1.79999995];
  [(CRLWPRep *)self p_setSelectionHighlightColor];
}

- (void)p_createSelectionParagraphBorderLayer
{
  if (self->_selectionParagraphBorderLayer)
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_10137A5A8();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10137A5BC();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_10137A64C();
    }

    v3 = off_1019EDA68;
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      +[CRLAssertionHandler packedBacktraceString];
      objc_claimAutoreleasedReturnValue();
      sub_10130E89C();
    }

    v4 = [NSString stringWithUTF8String:"[CRLWPRep p_createSelectionParagraphBorderLayer]"];
    v5 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLWP/CRLWPRep.mm"];
    [CRLAssertionHandler handleFailureInFunction:v4 file:v5 lineNumber:3781 isFatal:0 description:"Shouldn't be creating _selectionParagraphBorderLayer again"];
  }

  v6 = objc_alloc_init(CAShapeLayer);
  selectionParagraphBorderLayer = self->_selectionParagraphBorderLayer;
  self->_selectionParagraphBorderLayer = v6;

  canvas = [(CRLCanvasRep *)self canvas];
  [canvas contentsScale];
  [(CAShapeLayer *)self->_selectionParagraphBorderLayer setContentsScale:?];

  [(CAShapeLayer *)self->_selectionParagraphBorderLayer setHidden:0];
  [(CAShapeLayer *)self->_selectionParagraphBorderLayer setOpacity:0.0];
  [(CAShapeLayer *)self->_selectionParagraphBorderLayer setAnchorPoint:CGPointZero.x, CGPointZero.y];
  [(CAShapeLayer *)self->_selectionParagraphBorderLayer setEdgeAntialiasingMask:0];
  [(CAShapeLayer *)self->_selectionParagraphBorderLayer setZPosition:-1.85000002];
  v9 = [CRLColor colorWithRed:0.119999997 green:0.370000005 blue:0.949999988 alpha:0.550000012];
  -[CAShapeLayer setStrokeColor:](self->_selectionParagraphBorderLayer, "setStrokeColor:", [v9 CGColor]);

  [(CAShapeLayer *)self->_selectionParagraphBorderLayer setLineWidth:2.0];
  [(CAShapeLayer *)self->_selectionParagraphBorderLayer setFillColor:0];
}

- (void)p_hideSelectionParagraphBorderLayer
{
  [(CAShapeLayer *)self->_selectionParagraphBorderLayer opacity];
  if (v3 != 0.0)
  {
    [(CAShapeLayer *)self->_selectionParagraphBorderLayer removeAllAnimations];
    v5 = [CABasicAnimation animationWithKeyPath:@"opacity"];
    [v5 setDuration:0.15];
    [(CAShapeLayer *)self->_selectionParagraphBorderLayer opacity];
    v4 = [NSNumber numberWithFloat:?];
    [v5 setFromValue:v4];

    [v5 setToValue:&off_1018E3390];
    [(CAShapeLayer *)self->_selectionParagraphBorderLayer setOpacity:0.0];
    [(CAShapeLayer *)self->_selectionParagraphBorderLayer addAnimation:v5 forKey:@"kParagraphModeBorderFadeOutAnimation"];
  }
}

- (void)p_showSelectionParagraphBorderLayerWithPath:(CGPath *)path
{
  [(CAShapeLayer *)self->_selectionParagraphBorderLayer setPath:path];
  [(CAShapeLayer *)self->_selectionParagraphBorderLayer opacity];
  if (v4 != 1.0)
  {
    [(CAShapeLayer *)self->_selectionParagraphBorderLayer removeAllAnimations];
    v7 = [CABasicAnimation animationWithKeyPath:@"opacity"];
    [v7 setDuration:0.15];
    [(CAShapeLayer *)self->_selectionParagraphBorderLayer opacity];
    v5 = [NSNumber numberWithFloat:?];
    [v7 setFromValue:v5];

    [v7 setToValue:&off_1018E33A0];
    LODWORD(v6) = 1.0;
    [(CAShapeLayer *)self->_selectionParagraphBorderLayer setOpacity:v6];
    [(CAShapeLayer *)self->_selectionParagraphBorderLayer addAnimation:v7 forKey:@"kParagraphModeBorderFadeInAnimation"];
  }
}

- (void)p_createMarkHighlightLayer
{
  v3 = objc_alloc_init(CRLWPSelectionHighlightLayer);
  markHighlightLayer = self->_markHighlightLayer;
  self->_markHighlightLayer = &v3->super;

  [(CAShapeLayer *)self->_markHighlightLayer setAnchorPoint:CGPointZero.x, CGPointZero.y];
  [(CAShapeLayer *)self->_markHighlightLayer setEdgeAntialiasingMask:0];
  [(CAShapeLayer *)self->_markHighlightLayer setDelegate:self];
  v5 = [CRLColor colorWithRed:0.0 green:0.330000013 blue:0.649999976 alpha:0.100000001];
  -[CAShapeLayer setFillColor:](self->_markHighlightLayer, "setFillColor:", [v5 CGColor]);

  v6 = [CRLColor colorWithRed:0.0 green:0.330000013 blue:0.649999976 alpha:0.200000003];
  -[CAShapeLayer setStrokeColor:](self->_markHighlightLayer, "setStrokeColor:", [v6 CGColor]);

  v7 = self->_markHighlightLayer;

  [(CAShapeLayer *)v7 setZPosition:-1.9];
}

- (void)p_updateMarkHighlightLayer
{
  textEditor = [(CRLWPRep *)self textEditor];
  markedRange = [textEditor markedRange];
  v6 = v5;
  isBeingEdited = [(CRLWPRep *)self isBeingEdited];
  if (v6)
  {
    v8 = isBeingEdited;
  }

  else
  {
    v8 = 0;
  }

  if (v8 == 1)
  {
    v34 = textEditor;
    v35 = [CRLWPSelection selectionWithRange:markedRange, v6];
    [(CAShapeLayer *)self->_markHighlightLayer setSublayers:0];
    [(CAShapeLayer *)self->_markHighlightLayer setPath:0];
    markedText = [textEditor markedText];
    v10 = [markedText attribute:NSMarkedClauseSegmentAttributeName atIndex:0 effectiveRange:0];

    if (v10)
    {
      v36 = +[NSMutableArray array];
      markedRange2 = [textEditor markedRange];
      storage = [(CRLWPRep *)self storage];
      v13 = [storage length];

      v37 = xmmword_101464838;
      v14 = 0;
      while (v14 < [markedText length])
      {
        v15 = [markedText attribute:NSMarkedClauseSegmentAttributeName atIndex:v37 effectiveRange:&v37];
        v16 = [markedText attribute:NSBackgroundColorAttributeName atIndex:v37 effectiveRange:0];
        v17 = v16;
        if (!*(&v37 + 1) || (v18 = &markedRange2[v37], &markedRange2[v37] >= v13))
        {

          break;
        }

        if (v15)
        {
          v19 = &markedRange2[*(&v37 + 1) + v37];
          if (v13 < v19)
          {
            v19 = v13;
          }

          if (v18 <= v19)
          {
            v20 = v19;
          }

          else
          {
            v20 = &markedRange2[v37];
          }

          if (v18 >= v19)
          {
            v21 = v19;
          }

          else
          {
            v21 = &markedRange2[v37];
          }

          v22 = [CRLWPSelection selectionWithRange:v21, v20 - v21];
          v23 = [(CRLWPRep *)self p_newSelectionPathForSelection:v22 transform:0 headPinRect:0 tailPinRect:0 markedText:1];
          if (v23)
          {
            v24 = objc_alloc_init(CRLWPSelectionHighlightLayer);
            [(CRLWPSelectionHighlightLayer *)v24 setPath:v23];
            [(CRLWPSelectionHighlightLayer *)v24 setStrokeColor:0];
            if (v17)
            {
              -[CRLWPSelectionHighlightLayer setFillColor:](v24, "setFillColor:", [v17 CGColor]);
            }

            else
            {
              -[CRLWPSelectionHighlightLayer setFillColor:](v24, "setFillColor:", [qword_101A35000 CGColor]);
            }

            CFRelease(v23);
            [v36 addObject:v24];
          }
        }

        v14 = *(&v37 + 1) + v37;
        v37 = (*(&v37 + 1) + v37);
      }

      textEditor = v34;
      if ([v36 count])
      {
        [(CAShapeLayer *)self->_markHighlightLayer setSublayers:v36];
      }
    }

    sublayers = [(CAShapeLayer *)self->_markHighlightLayer sublayers];
    v26 = [sublayers count];

    if (v26)
    {
      v27 = 0;
    }

    else
    {
      v27 = [(CRLWPRep *)self p_newSelectionPathForSelection:v35 transform:0 headPinRect:0 tailPinRect:0 markedText:1];
    }

    textEditor2 = [(CRLWPRep *)self textEditor];
    markedText2 = [textEditor2 markedText];

    if (markedText2)
    {
      v30 = [markedText2 attributesAtIndex:0 effectiveRange:0];
      v31 = [v30 objectForKeyedSubscript:NSBackgroundColorAttributeName];
      if (v31)
      {
        v32 = [CRLColor colorWithUIColor:v31];
        cGColor = [v32 CGColor];

        textEditor = v34;
      }

      else
      {
        cGColor = 0;
      }

      if (!cGColor)
      {
        goto LABEL_42;
      }
    }

    else
    {
      cGColor = [qword_101A35000 CGColor];
      if (!cGColor)
      {
        goto LABEL_42;
      }
    }

    [(CAShapeLayer *)self->_markHighlightLayer setFillColor:cGColor];
    [(CAShapeLayer *)self->_markHighlightLayer setStrokeColor:0];
    [(CAShapeLayer *)self->_markHighlightLayer setPath:v27];
    [(CAShapeLayer *)self->_markHighlightLayer setHidden:0];
LABEL_42:
    CGPathRelease(v27);

    goto LABEL_43;
  }

  [(CAShapeLayer *)self->_markHighlightLayer setHidden:1];
LABEL_43:
  self->_markChanged = 0;
}

- (CGRect)boundsForCollaboratorCursorRenderable
{
  x = CGRectNull.origin.x;
  y = CGRectNull.origin.y;
  width = CGRectNull.size.width;
  height = CGRectNull.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (void)invalidateCollaboratorCursorRenderable
{
  self->_collaboratorCursorRenderableValid = 0;
  interactiveCanvasController = [(CRLCanvasRep *)self interactiveCanvasController];
  [interactiveCanvasController invalidateContentLayersForRep:self];
}

- (BOOL)shouldAddCollaboratorLayerToOverlays
{
  if ([(CRLWPRep *)self shouldShowCollaboratorCursorHighlight])
  {
    return 0;
  }

  v4.receiver = self;
  v4.super_class = CRLWPRep;
  return [(CRLCanvasRep *)&v4 shouldAddCollaboratorLayerToOverlays];
}

- (BOOL)shouldShowCollaboratorCursorHighlight
{
  interactiveCanvasController = [(CRLCanvasRep *)self interactiveCanvasController];
  collaboratorCursorDelegate = [interactiveCanvasController collaboratorCursorDelegate];
  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  currentCollaboratorPresences = [interactiveCanvasController currentCollaboratorPresences];
  v6 = [currentCollaboratorPresences countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = *v14;
    while (2)
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v14 != v7)
        {
          objc_enumerationMutation(currentCollaboratorPresences);
        }

        v9 = [collaboratorCursorDelegate collaboratorCursorSelectionPathForRenderer:interactiveCanvasController collaboratorPresence:*(*(&v13 + 1) + 8 * i)];
        v10 = [(CRLWPRep *)self p_storageMatchesSelectionPath:v9];

        if (v10)
        {
          v11 = 1;
          goto LABEL_11;
        }
      }

      v6 = [currentCollaboratorPresences countByEnumeratingWithState:&v13 objects:v17 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

  v11 = 0;
LABEL_11:

  return v11;
}

- (void)collaboratorCursorChangedToSelectionPath:(id)path
{
  pathCopy = path;
  if (qword_101AD5B90 != -1)
  {
    sub_10137A674();
  }

  v5 = off_1019EDBE8;
  if (os_log_type_enabled(off_1019EDBE8, OS_LOG_TYPE_INFO))
  {
    v6 = 138543362;
    selfCopy = self;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "Collaborator Cursor: Selection Path Changed called for rep: %{public}@", &v6, 0xCu);
  }

  if ([(CRLWPRep *)self p_storageMatchesSelectionPath:pathCopy])
  {
    [(CRLCanvasRep *)self invalidateKnobs];
    [(CRLWPRep *)self invalidateCollaboratorCursorRenderable];
  }
}

- (void)hideCollaboratorCursors
{
  self->_collaboratorCursorRenderableValid = 0;
  [(CRLCanvasRep *)self invalidateKnobs];
  interactiveCanvasController = [(CRLCanvasRep *)self interactiveCanvasController];
  [interactiveCanvasController invalidateContentLayersForRep:self];
}

- (BOOL)p_storageMatchesSelectionPath:(id)path
{
  pathCopy = path;
  [(CRLCanvasRep *)self interactiveCanvasController];
  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v18 = v20 = 0u;
  v4 = [v18 modelsForSelectionPath:pathCopy];
  v5 = [v4 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v5)
  {
    v6 = *v20;
    do
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v20 != v6)
        {
          objc_enumerationMutation(v4);
        }

        v8 = *(*(&v19 + 1) + 8 * i);
        v9 = objc_opt_class();
        v10 = sub_100014370(v9, v8);
        if (!v10)
        {
          if ((objc_opt_respondsToSelector() & 1) == 0)
          {
            continue;
          }

          v13 = objc_opt_class();
          storage = [v8 storage];
          v10 = sub_100014370(v13, storage);

          if (!v10)
          {
            continue;
          }
        }

        storage2 = [(CRLWPRep *)self storage];
        v12 = v10 == storage2;

        if (v12)
        {
          v15 = 1;
          goto LABEL_14;
        }
      }

      v5 = [v4 countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v5);
  }

  v15 = 0;
LABEL_14:

  return v15;
}

- (double)collaborativeCursorOpacityForCaret:(BOOL)caret
{
  caretCopy = caret;
  if (qword_101A35018 != -1)
  {
    sub_10137A688();
  }

  v4 = &qword_101A35008;
  if (!caretCopy)
  {
    v4 = &qword_101A35010;
  }

  return *v4;
}

- (void)p_withCollaboratorCursorPerformBlock:(id)block
{
  blockCopy = block;
  interactiveCanvasController = [(CRLCanvasRep *)self interactiveCanvasController];
  currentCollaboratorPresences = [interactiveCanvasController currentCollaboratorPresences];
  collaboratorCursorDelegate = [interactiveCanvasController collaboratorCursorDelegate];
  selfCopy = self;
  v61 = 0u;
  v62 = 0u;
  v59 = 0u;
  v60 = 0u;
  range_8 = currentCollaboratorPresences;
  v4 = [range_8 countByEnumeratingWithState:&v59 objects:v81 count:16];
  if (v4)
  {
    v49 = *v60;
    do
    {
      v52 = v4;
      for (i = 0; i != v52; i = i + 1)
      {
        if (*v60 != v49)
        {
          objc_enumerationMutation(range_8);
        }

        v6 = *(*(&v59 + 1) + 8 * i);
        v7 = [collaboratorCursorDelegate collaboratorCursorSelectionPathForRenderer:interactiveCanvasController collaboratorPresence:v6];
        if ([(CRLWPRep *)selfCopy p_storageMatchesSelectionPath:v7])
        {
          v8 = objc_opt_class();
          orderedSelections = [v7 orderedSelections];
          lastObject = [orderedSelections lastObject];
          v53 = sub_100014370(v8, lastObject);

          if ([v53 isValid])
          {
            range = [v53 range];
            v13 = v12;
            storage = [(CRLWPRep *)selfCopy storage];
            range = range;
            v15 = range + v13;
            v16 = v15 > [storage length];

            if (v16)
            {
              v17 = +[CRLAssertionHandler _atomicIncrementAssertCount];
              if (qword_101AD5A10 != -1)
              {
                sub_10137A69C();
              }

              v18 = off_1019EDA68;
              if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
              {
                v83.location = range;
                v83.length = v13;
                v41 = NSStringFromRange(v83);
                storage2 = [(CRLWPRep *)selfCopy storage];
                v43 = [storage2 length];
                *buf = 67110402;
                *&buf[4] = v17;
                *&buf[8] = 2082;
                *&buf[10] = "[CRLWPRep p_withCollaboratorCursorPerformBlock:]";
                *&buf[18] = 2082;
                *&buf[20] = "/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLWP/CRLWPRep.mm";
                *&buf[28] = 1024;
                *&buf[30] = 4046;
                *&buf[34] = 2114;
                *&buf[36] = v41;
                *&buf[44] = 2048;
                *&buf[46] = v43;
                _os_log_error_impl(&_mh_execute_header, v18, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d collaborator selection extends past end of storage (%{public}@ > %lu)", buf, 0x36u);
              }

              if (qword_101AD5A10 != -1)
              {
                sub_10137A6C4();
              }

              v19 = off_1019EDA68;
              if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
              {
                v44 = +[CRLAssertionHandler packedBacktraceString];
                *buf = 67109378;
                *&buf[4] = v17;
                *&buf[8] = 2114;
                *&buf[10] = v44;
                _os_log_error_impl(&_mh_execute_header, v19, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: Assertion backtrace: >>%{public}@<<", buf, 0x12u);
              }

              v20 = [NSString stringWithUTF8String:"[CRLWPRep p_withCollaboratorCursorPerformBlock:]"];
              v21 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLWP/CRLWPRep.mm"];
              v82.location = range;
              v82.length = v13;
              v22 = NSStringFromRange(v82);
              storage3 = [(CRLWPRep *)selfCopy storage];
              +[CRLAssertionHandler handleFailureInFunction:file:lineNumber:isFatal:description:](CRLAssertionHandler, "handleFailureInFunction:file:lineNumber:isFatal:description:", v20, v21, 4046, 0, "collaborator selection extends past end of storage (%{public}@ > %lu)", v22, [storage3 length]);
            }

            storage4 = [(CRLWPRep *)selfCopy storage];
            v25 = v15 > [storage4 length];

            if (!v25)
            {
              canvas = [(CRLCanvasRep *)selfCopy canvas];
              [canvas viewScale];
              v28 = v27;

              if (v13)
              {
                v29 = [(CRLWPRep *)selfCopy p_newSelectionPathForSelection:v53 transform:0 headPinRect:0 tailPinRect:0];
                if (v29)
                {
                  v30 = *&CGAffineTransformIdentity.tx;
                  *&buf[16] = *&CGAffineTransformIdentity.c;
                  *&buf[32] = v30;
                  *buf = *&CGAffineTransformIdentity.a;
                  blockCopy[2](blockCopy, v29, buf, v6, 0);
                  CFRelease(v29);
                }
              }

              else if ([(CRLWPRep *)selfCopy p_allowCaretForSelection:v53])
              {
                [(CRLWPRep *)selfCopy p_caretRectForSelection:v53];
                x = v84.origin.x;
                y = v84.origin.y;
                width = v84.size.width;
                height = v84.size.height;
                if (!CGRectIsNull(v84))
                {
                  v80 = 0;
                  v78 = 0u;
                  v79 = 0u;
                  v76 = 0u;
                  v77 = 0u;
                  v74 = 0u;
                  v75 = 0u;
                  v72 = 0u;
                  v73 = 0u;
                  v70 = 0u;
                  v71 = 0u;
                  v68 = 0u;
                  v69 = 0u;
                  v66 = 0u;
                  v67 = 0u;
                  v64 = 0u;
                  v65 = 0u;
                  memset(buf, 0, sizeof(buf));
                  [(CRLWPRep *)selfCopy lineMetricsAtCharIndex:range];
                  v35 = [(CRLWPRep *)selfCopy columnForCharIndex:range];
                  textIsVertical = [v35 textIsVertical];
                  if ((textIsVertical & 1) == 0)
                  {
                    x = sub_1001204D4(x, y, width, height);
                    y = 4.0 / v28 + *&buf[32];
                  }

                  Mutable = CGPathCreateMutable();
                  v38 = Mutable;
                  if (Mutable)
                  {
                    v39 = 7.0 / v28;
                    v40 = 14.0 / v28;
                    CGPathMoveToPoint(Mutable, 0, x, y);
                    if (textIsVertical)
                    {
                      CGPathAddLineToPoint(v38, 0, x - v39, y - v40 * 0.5);
                      CGPathAddLineToPoint(v38, 0, x - v39, v40 * 0.5 + y);
                    }

                    else
                    {
                      y = v39 + y;
                      CGPathAddLineToPoint(v38, 0, v40 * 0.5 + x, y);
                      x = x - v40 * 0.5;
                    }

                    CGPathAddLineToPoint(v38, 0, x, y);
                    v57 = 0u;
                    v58 = 0u;
                    v56 = 0u;
                    [(CRLCanvasRep *)selfCopy transformToConvertNaturalToLayerRelative];
                    v55[1] = v57;
                    v55[2] = v58;
                    v55[0] = v56;
                    blockCopy[2](blockCopy, v38, v55, v6, 1);
                    CFRelease(v38);
                  }
                }
              }
            }
          }
        }
      }

      v4 = [range_8 countByEnumeratingWithState:&v59 objects:v81 count:16];
    }

    while (v4);
  }
}

- (id)collaboratorCursorRenderable
{
  if (qword_101AD5B90 != -1)
  {
    sub_10137A6EC();
  }

  v3 = off_1019EDBE8;
  if (os_log_type_enabled(off_1019EDBE8, OS_LOG_TYPE_INFO))
  {
    *buf = 138543362;
    selfCopy3 = self;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "Collaborator Cursor: Requesting collaborator cursor renderable for WPRep: %{public}@", buf, 0xCu);
  }

  if (self->_collaboratorCursorRenderableValid || (-[CRLCanvasRep interactiveCanvasController](self, "interactiveCanvasController"), v4 = objc_claimAutoreleasedReturnValue(), [v4 currentCollaboratorPresences], v5 = objc_claimAutoreleasedReturnValue(), v6 = objc_msgSend(v5, "count") == 0, v5, v4, v6))
  {
    if (qword_101AD5B90 != -1)
    {
      sub_10137A728();
    }

    v10 = off_1019EDBE8;
    if (os_log_type_enabled(off_1019EDBE8, OS_LOG_TYPE_INFO))
    {
      *buf = 138543362;
      selfCopy3 = self;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "Collaborator Cursor: Not regenerating renderable, because it was considered already valid, for WPRep: %{public}@", buf, 0xCu);
    }

    v9 = 0;
  }

  else
  {
    if (qword_101AD5B90 != -1)
    {
      sub_10137A700();
    }

    v7 = off_1019EDBE8;
    if (os_log_type_enabled(off_1019EDBE8, OS_LOG_TYPE_INFO))
    {
      *buf = 138543362;
      selfCopy3 = self;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "Collaborator Cursor: Actually re-generating renderable for WPRep: %{public}@", buf, 0xCu);
    }

    v8 = +[CRLCanvasRenderable renderable];
    +[CATransaction begin];
    [CATransaction setDisableActions:1];
    v13 = _NSConcreteStackBlock;
    v14 = 3221225472;
    v15 = sub_1004784D8;
    v16 = &unk_101865510;
    selfCopy4 = self;
    v9 = v8;
    v18 = v9;
    [(CRLWPRep *)self p_withCollaboratorCursorPerformBlock:&v13];
    [CATransaction commit:v13];
    self->_collaboratorCursorRenderableValid = 1;
  }

  selfCopy5 = self;
  objc_sync_enter(selfCopy5);
  if (v9)
  {
    objc_storeStrong(&selfCopy5->_collaboratorCursorRenderable, v9);
  }

  else
  {
    v9 = selfCopy5->_collaboratorCursorRenderable;
  }

  objc_sync_exit(selfCopy5);

  return v9;
}

- (void)p_hideCollaboratorCursorLayer
{
  v3 = [CABasicAnimation animationWithKeyPath:@"opacity"];
  [v3 setDuration:0.15];
  [v3 setToValue:&off_1018E3050];
  [v3 setRemovedOnCompletion:0];
  [v3 setFillMode:kCAFillModeForwards];
  [(CRLCanvasRenderable *)self->_collaboratorCursorRenderable addAnimation:v3 forKey:@"opacity"];
}

- (void)p_showCollaboratorCursorLayer
{
  v3 = [CABasicAnimation animationWithKeyPath:@"opacity"];
  [v3 setDuration:0.15];
  [v3 setToValue:&off_1018E3060];
  [v3 setRemovedOnCompletion:1];
  [(CRLCanvasRenderable *)self->_collaboratorCursorRenderable addAnimation:v3 forKey:@"opacity"];
}

- (BOOL)p_spellCheckingEnabled
{
  canvas = [(CRLCanvasRep *)self canvas];
  if ([canvas spellCheckingSuppressed])
  {
    spellCheckingEnabled = 0;
  }

  else
  {
    canvas2 = [(CRLCanvasRep *)self canvas];
    if ([canvas2 isCanvasInteractive])
    {
      v6 = +[_TtC8Freeform21CRLWPObjcUserDefaults sharedUserDefaults];
      spellCheckingEnabled = [v6 spellCheckingEnabled];
    }

    else
    {
      spellCheckingEnabled = 0;
    }
  }

  return spellCheckingEnabled;
}

- (BOOL)p_automaticTextSubstitutionEnabled
{
  canvas = [(CRLCanvasRep *)self canvas];
  if ([canvas isCanvasInteractive])
  {
    canvas2 = [(CRLCanvasRep *)self canvas];
    v5 = [canvas2 spellCheckingSuppressed] ^ 1;
  }

  else
  {
    LOBYTE(v5) = 0;
  }

  return v5;
}

- (BOOL)p_needsSpellChecker
{
  p_automaticTextSubstitutionEnabled = [(CRLWPRep *)self p_spellCheckingEnabled]|| [(CRLWPRep *)self p_automaticTextSubstitutionEnabled];
  storage = [(CRLWPRep *)self storage];
  if ([storage wpKind] != 7)
  {
    layout = [(CRLWPRep *)self layout];
    if (![layout isInstructional])
    {
      storage2 = [(CRLWPRep *)self storage];
      v8 = [storage2 length];

      if (v8)
      {
        return p_automaticTextSubstitutionEnabled;
      }

      return 0;
    }
  }

  return 0;
}

- (void)p_createSpellChecker
{
  if (self->_spellChecker || ![(CRLWPRep *)self p_needsSpellChecker])
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_10137A750();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10137A764();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_10137A7F4();
    }

    v6 = off_1019EDA68;
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      +[CRLAssertionHandler packedBacktraceString];
      objc_claimAutoreleasedReturnValue();
      sub_10130E89C();
    }

    v7 = [NSString stringWithUTF8String:"[CRLWPRep p_createSpellChecker]"];
    v8 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLWP/CRLWPRep.mm"];
    [CRLAssertionHandler handleFailureInFunction:v7 file:v8 lineNumber:4215 isFatal:0 description:"Asked to create the spell checker when we don't need one."];
  }

  else
  {
    storage = [(CRLWPRep *)self storage];
    v4 = [CRLWPStorageSpellChecker newSpellCheckerForStorage:storage selectionPath:0 orSearchCanvasDelegate:0];
    spellChecker = self->_spellChecker;
    self->_spellChecker = v4;

    v9 = +[NSNotificationCenter defaultCenter];
    [v9 addObserver:self selector:"p_spellcheckFinished:" name:@"CRLWPBackgroundSpellCheckCompletedNotification" object:self->_spellChecker];
  }
}

- (void)p_spellcheckFinished:(id)finished
{
  objc_initWeak(&location, self);
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100478E20;
  v7[3] = &unk_101865598;
  objc_copyWeak(&v8, &location);
  v4 = objc_retainBlock(v7);
  if (finished)
  {
    v5 = 0;
  }

  else
  {
    v5 = 50000000;
  }

  v6 = dispatch_time(0, v5);
  dispatch_after(v6, &_dispatch_main_q, v4);

  objc_destroyWeak(&v8);
  objc_destroyWeak(&location);
}

- (void)p_destroySpellChecker
{
  spellChecker = self->_spellChecker;
  self->_spellChecker = 0;
}

- (void)didDrawInLayer:(id)layer context:(CGContext *)context
{
  v4.receiver = self;
  v4.super_class = CRLWPRep;
  [(CRLCanvasRep *)&v4 didDrawInLayer:layer context:context];
}

- (void)p_selectionChangedNotification:(id)notification
{
  userInfo = [notification userInfo];
  if (userInfo)
  {
    v16 = userInfo;
    v5 = [userInfo objectForKeyedSubscript:@"CRLWPEditorKey"];
    interactiveCanvasController = [(CRLCanvasRep *)self interactiveCanvasController];
    interactiveCanvasController2 = [v5 interactiveCanvasController];
    v8 = interactiveCanvasController2;
    if (interactiveCanvasController2 == interactiveCanvasController)
    {
      storage = [v5 storage];
      storage2 = [(CRLWPRep *)self storage];

      if (storage == storage2)
      {
        self->_selectionChanged = 1;
        v11 = [v16 objectForKeyedSubscript:@"CRLWPEditorSelectionFlagsKey"];
        self->_newSelectionFlags = [v11 unsignedIntegerValue];

        newSelectionFlags = self->_newSelectionFlags;
        if ((newSelectionFlags & 0x100) != 0)
        {
          canvas = [(CRLCanvasRep *)self canvas];
          [canvas invalidateReps];

          newSelectionFlags = self->_newSelectionFlags;
        }

        self->_hudStateDirty = (newSelectionFlags & 0x800) == 0;
        layout = [(CRLWPRep *)self layout];
        layoutIsValid = [layout layoutIsValid];

        if (layoutIsValid)
        {
          [(CRLWPRep *)self i_setNeedsDisplayForSelectionChange];
        }

        [(CRLCanvasRep *)self invalidateKnobs];
      }
    }

    else
    {
    }

    userInfo = v16;
  }
}

- (void)p_updateCaretLayerColor
{
  caretLayer = self->_caretLayer;
  if (caretLayer)
  {
    if ([(CAShapeLayer *)caretLayer fillColor])
    {
      p_caretLayerColor = [(CRLWPRep *)self p_caretLayerColor];
      if (p_caretLayerColor)
      {
        v5 = p_caretLayerColor;
        if (!CGColorEqualToColor([(CAShapeLayer *)self->_caretLayer fillColor], p_caretLayerColor))
        {
          v6 = self->_caretLayer;

          [(CAShapeLayer *)v6 setFillColor:v5];
        }
      }
    }
  }
}

- (CGColor)p_caretLayerColor
{
  overrideCaretColor = [(CRLWPRep *)self overrideCaretColor];

  if (overrideCaretColor)
  {
    overrideCaretColor2 = [(CRLWPRep *)self overrideCaretColor];
    cGColor = [overrideCaretColor2 CGColor];

    return cGColor;
  }

  else
  {

    return [(CRLWPRep *)self p_highlightLineColor];
  }
}

- (CGColor)p_highlightLineColor
{
  v2 = [CRLColor colorWithRed:0.0 green:0.435294118 blue:0.890196078 alpha:1.0];
  cGColor = [v2 CGColor];

  return cGColor;
}

- (CGAffineTransform)transformToConvertNaturalToScaledRoot
{
  memset(&v13, 0, sizeof(v13));
  layout = [(CRLWPRep *)self layout];
  v6 = layout;
  if (layout)
  {
    [layout transformInRoot];
  }

  else
  {
    memset(&v13, 0, sizeof(v13));
  }

  canvas = [(CRLCanvasRep *)self canvas];
  [canvas viewScale];
  v9 = v8;

  t1 = v13;
  CGAffineTransformMakeScale(&v11, v9, v9);
  return CGAffineTransformConcat(retstr, &t1, &v11);
}

- (id)selectionForDragAndDropNaturalPoint:(CGPoint)point
{
  y = point.y;
  x = point.x;
  storage = [(CRLWPRep *)self storage];
  v7 = [storage length];

  if (v7)
  {
    v16 = 0;
    layout = [(CRLWPRep *)self layout];
    v9 = [CRLWPColumn charIndexFromPoint:0 allowPastBreak:&v16 isAtEndOfLine:layout inLayoutTarget:x, y];

    v10 = v16;
    v11 = [CRLWPSelection alloc];
    v12 = v9;
    v13 = v10;
  }

  else
  {
    v11 = [CRLWPSelection alloc];
    v12 = 0;
    v13 = 0;
  }

  v14 = [(CRLWPSelection *)v11 initWithType:0 range:v12 styleInsertionBehavior:0 caretAffinity:0, v13];

  return v14;
}

- (id)textEditorForDropIntoStorage:(id)storage
{
  storageCopy = storage;
  textEditor = [(CRLWPRep *)self textEditor];
  if (textEditor)
  {
    storage = [(CRLWPRep *)self storage];

    if (storage != storageCopy)
    {
      v7 = +[CRLAssertionHandler _atomicIncrementAssertCount];
      if (qword_101AD5A10 != -1)
      {
        sub_10137A81C();
      }

      v8 = off_1019EDA68;
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        storage2 = [(CRLWPRep *)self storage];
        *buf = 67110402;
        v24 = v7;
        v25 = 2082;
        v26 = "[CRLWPRep textEditorForDropIntoStorage:]";
        v27 = 2082;
        v28 = "/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLWP/CRLWPRep.mm";
        v29 = 1024;
        v30 = 4393;
        v31 = 2112;
        v32 = storageCopy;
        v33 = 2112;
        v34 = storage2;
        _os_log_error_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d Specified storage (%@) is not the rep storage (%@).", buf, 0x36u);
      }

      if (qword_101AD5A10 != -1)
      {
        sub_10137A830();
      }

      v9 = off_1019EDA68;
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        +[CRLAssertionHandler packedBacktraceString];
        objc_claimAutoreleasedReturnValue();
        sub_10130E89C();
      }

      v10 = [NSString stringWithUTF8String:"[CRLWPRep textEditorForDropIntoStorage:]"];
      v11 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLWP/CRLWPRep.mm"];
      storage3 = [(CRLWPRep *)self storage];
      [CRLAssertionHandler handleFailureInFunction:v10 file:v11 lineNumber:4393 isFatal:0 description:"Specified storage (%@) is not the rep storage (%@).", storageCopy, storage3];
    }
  }

  else
  {
    v13 = objc_opt_class();
    parentInfo = [storageCopy parentInfo];
    v15 = sub_100014370(v13, parentInfo);

    v16 = objc_alloc([(CRLWPRep *)self wpEditorClass]);
    interactiveCanvasController = [(CRLCanvasRep *)self interactiveCanvasController];
    editingCoordinator = [interactiveCanvasController editingCoordinator];
    interactiveCanvasController2 = [(CRLCanvasRep *)self interactiveCanvasController];
    v20 = [v16 initWithEditingCoordinator:editingCoordinator enclosingShape:v15 icc:interactiveCanvasController2];

    textEditor = v20;
  }

  return textEditor;
}

- (BOOL)isDragPoint:(CGPoint)point inSelection:(id)selection includeEndpoints:(BOOL)endpoints
{
  endpointsCopy = endpoints;
  y = point.y;
  x = point.x;
  selectionCopy = selection;
  if ([selectionCopy isRange])
  {
    layout = [(CRLWPRep *)self layout];
    v11 = [CRLWPColumn charIndexFromPoint:0 allowPastBreak:0 allowNotFound:0 isAtEndOfLine:0 leadingEdge:layout inLayoutTarget:x, y];

    if (endpointsCopy)
    {
      v12 = 3;
    }

    else
    {
      v12 = 0;
    }

    v13 = [selectionCopy containsCharacterAtIndex:v11 withOptions:v12];
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

- (_TtC8Freeform12CRLWPStorage)storageForDragDropOperation
{
  storage = [(CRLWPRep *)self storage];
  parentRep = [(CRLCanvasRep *)self parentRep];
  v11 = sub_1003035DC(parentRep, 1, v5, v6, v7, v8, v9, v10, &OBJC_PROTOCOL___CRLWPRepParent);

  if (v11 && (objc_opt_respondsToSelector() & 1) != 0)
  {
    storageForDragDropOperation = [v11 storageForDragDropOperation];

    storage = storageForDragDropOperation;
  }

  return storage;
}

- (id)backgroundColorForDragPreviewOfSelection:(id)selection
{
  v3 = [(CRLWPRep *)self colorBehindLayer:self->_textLayers[1]];
  if (!v3)
  {
    v3 = +[CRLColor whiteColor];
  }

  return v3;
}

- (void)p_clearICCPrimaryFindResultSearchReference
{
  primaryFindResultSearchReference = [(CRLWPRep *)self primaryFindResultSearchReference];
  interactiveCanvasController = [(CRLCanvasRep *)self interactiveCanvasController];
  [interactiveCanvasController canvasInvalidatedForRep:self];

  interactiveCanvasController2 = [(CRLCanvasRep *)self interactiveCanvasController];
  canvas = [interactiveCanvasController2 canvas];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100479B94;
  v8[3] = &unk_10185D010;
  v8[4] = self;
  v7 = primaryFindResultSearchReference;
  v9 = v7;
  [canvas performBlockAfterLayoutIfNecessary:v8];
}

- (void)pulseAnimationDidStop:(id)stop
{
  pulseArrayController = self->_pulseArrayController;
  if (pulseArrayController == stop)
  {
    if ([(CRLWPHighlightArrayController *)pulseArrayController autohide])
    {
      [(CRLWPRep *)self p_setPulseControllerActive:0 autohide:0];
      if (self->_pulseArrayController)
      {
        +[CRLAssertionHandler _atomicIncrementAssertCount];
        if (qword_101AD5A10 != -1)
        {
          sub_10137A858();
        }

        if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
        {
          sub_10137A86C();
        }

        if (qword_101AD5A10 != -1)
        {
          sub_10137A908();
        }

        v5 = off_1019EDA68;
        if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
        {
          +[CRLAssertionHandler packedBacktraceString];
          objc_claimAutoreleasedReturnValue();
          sub_10130E89C();
        }

        v6 = [NSString stringWithUTF8String:"[CRLWPRep pulseAnimationDidStop:]"];
        v7 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLWP/CRLWPRep.mm"];
        [CRLAssertionHandler handleFailureInFunction:v6 file:v7 lineNumber:4474 isFatal:0 description:"expected nil value for '%{public}s'", "_pulseArrayController"];
      }

      interactiveCanvasController = [(CRLCanvasRep *)self interactiveCanvasController];
      primaryFindResultSearchReference = [interactiveCanvasController primaryFindResultSearchReference];
      v10 = primaryFindResultSearchReference == 0;

      if (!v10)
      {
        interactiveCanvasController2 = [(CRLCanvasRep *)self interactiveCanvasController];
        primaryFindResultSearchReference2 = [interactiveCanvasController2 primaryFindResultSearchReference];
        primaryFindResultSearchReference3 = [(CRLWPRep *)self primaryFindResultSearchReference];
        v14 = [primaryFindResultSearchReference2 isEqual:primaryFindResultSearchReference3];

        if (v14)
        {
          [(CRLWPRep *)self p_clearICCPrimaryFindResultSearchReference];
        }
      }

      [(CRLWPRep *)self p_setPrimaryFindResultSearchReference:0];
      [(CRLWPRep *)self p_updateForCurrentSelectionWithFlags:0];
      [(CRLCanvasRep *)self invalidateKnobs];
      interactiveCanvasController3 = [(CRLCanvasRep *)self interactiveCanvasController];
      [interactiveCanvasController3 canvasInvalidatedForRep:self];
    }

    primaryFindResultSearchReference4 = [(CRLWPRep *)self primaryFindResultSearchReference];
    [primaryFindResultSearchReference4 setPulseHighlight:0];
  }
}

- (void)pulseAnimationDidStopForPulse:(id)pulse
{
  caretPulseController = self->_caretPulseController;
  if (caretPulseController == pulse)
  {
    self->_caretPulseController = 0;

    interactiveCanvasController = [(CRLCanvasRep *)self interactiveCanvasController];
    [interactiveCanvasController canvasInvalidatedForRep:self];
  }
}

- (unint64_t)pulseAnimationStyle:(id)style
{
  primaryFindResultSearchReference = [(CRLWPRep *)self primaryFindResultSearchReference];

  if (primaryFindResultSearchReference)
  {
    primaryFindResultSearchReference2 = [(CRLWPRep *)self primaryFindResultSearchReference];
    primaryFindResultSearchReference = [primaryFindResultSearchReference2 pulseAnimationStyle];
  }

  return primaryFindResultSearchReference;
}

- (void)p_setPulseControllerActive:(BOOL)active autohide:(BOOL)autohide
{
  pulseArrayController = self->_pulseArrayController;
  if (active)
  {
    autohideCopy = autohide;
    if (!pulseArrayController)
    {
      v7 = [[CRLWPHighlightArrayController alloc] initWithZOrder:self delegate:8.0];
      v8 = self->_pulseArrayController;
      self->_pulseArrayController = v7;

      pulseArrayController = self->_pulseArrayController;
    }

    [(CRLWPHighlightArrayController *)pulseArrayController setShouldPulsate:1];
    [(CRLWPHighlightArrayController *)self->_pulseArrayController setAutohide:autohideCopy];
    layout = [(CRLWPRep *)self layout];
    v10 = layout;
    if (layout)
    {
      [layout transformInRoot];
    }

    else
    {
      v15 = 0u;
      v16 = 0u;
      v14 = 0u;
    }

    v11 = self->_pulseArrayController;
    v13[0] = v14;
    v13[1] = v15;
    v13[2] = v16;
    [(CRLWPHighlightArrayController *)v11 setTransform:v13];

    canvas = [(CRLCanvasRep *)self canvas];
    [canvas viewScale];
    [(CRLWPHighlightArrayController *)self->_pulseArrayController setViewScale:?];
  }

  else if (pulseArrayController)
  {
    self->_pulseArrayController = 0;
  }
}

- (BOOL)p_doesRepIntersectSearchReference:(id)reference
{
  referenceCopy = reference;
  v5 = objc_opt_class();
  v6 = sub_100014370(v5, referenceCopy);
  v7 = v6;
  if (v6 && ([v6 storage], v8 = objc_claimAutoreleasedReturnValue(), -[CRLWPRep storage](self, "storage"), v9 = objc_claimAutoreleasedReturnValue(), v9, v8, v8 == v9))
  {
    selection = [v7 selection];
    v11 = selection;
    if (selection)
    {
      [selection range];
      if (v12)
      {
        self = [(CRLWPRep *)self range];
        v14 = v13;
        v18.location = [v11 range];
        v18.length = v15;
        v17.location = self;
        v17.length = v14;
        LOBYTE(self) = NSIntersectionRange(v17, v18).length != 0;
      }

      else
      {
        [(CRLWPRep *)self caretRectForSelection:v11];
        LODWORD(self) = !CGRectIsNull(v19);
      }
    }

    else
    {
      LOBYTE(self) = 0;
    }
  }

  else
  {
    LOBYTE(self) = 0;
  }

  return self;
}

- (void)i_primaryFindResultChanged:(id)changed
{
  changedCopy = changed;
  if ([(CRLWPRep *)self p_doesRepIntersectSearchReference:?]|| ([(CRLWPRep *)self primaryFindResultSearchReference], v4 = objc_claimAutoreleasedReturnValue(), v4, v4))
  {
    [(CRLWPRep *)self p_setPrimaryFindResultSearchReference:changedCopy];
  }
}

- (void)p_setPrimaryFindResultSearchReference:(id)reference
{
  referenceCopy = reference;
  v4 = [(CRLWPRep *)self p_doesRepIntersectSearchReference:?];
  pulseArrayController = self->_pulseArrayController;
  if (v4)
  {
    [(CRLWPHighlightArrayController *)pulseArrayController stop];
    -[CRLWPRep p_setPulseControllerActive:autohide:](self, "p_setPulseControllerActive:autohide:", referenceCopy != 0, [referenceCopy autohideHighlight]);
    v6 = objc_opt_class();
    v7 = sub_100014370(v6, referenceCopy);
    [(CRLWPRep *)self setPrimaryFindResultSearchReference:v7];
  }

  else
  {
    [(CRLWPHighlightArrayController *)pulseArrayController stop];
    [(CRLWPRep *)self p_setPulseControllerActive:0 autohide:0];
    [(CRLWPRep *)self setPrimaryFindResultSearchReference:0];
    self->_selectionChanged = 1;
  }

  self->_searchHitsAreInvalid = 1;
  layout = [(CRLWPRep *)self layout];
  [layout invalidate];

  interactiveCanvasController = [(CRLCanvasRep *)self interactiveCanvasController];
  [interactiveCanvasController canvasInvalidatedForRep:self];
}

- (void)i_setSearchReferencesToHighlight:(id)highlight
{
  highlightCopy = highlight;
  storage = [(CRLWPRep *)self storage];
  v5 = [highlightCopy objectForKeyedSubscript:storage];

  searchReferences = [(CRLWPRep *)self searchReferences];

  if (searchReferences != v5)
  {
    [(CRLWPRep *)self setSearchReferences:v5];
    self->_searchHitsAreInvalid = 1;
    layout = [(CRLWPRep *)self layout];
    [layout invalidate];

    interactiveCanvasController = [(CRLCanvasRep *)self interactiveCanvasController];
    [interactiveCanvasController canvasInvalidatedForRep:self];

    [(CRLCanvasRep *)self invalidateKnobs];
  }
}

- (void)prepareLayoutForImagingSearchReferencesAsActive:(BOOL)active usingBlock:(id)block
{
  activeCopy = active;
  blockCopy = block;
  storage = [(CRLWPRep *)self storage];
  wpKind = [storage wpKind];

  if (wpKind >= 3)
  {
    v9 = objc_opt_class();
    layout = [(CRLWPRep *)self layout];
    v11 = sub_100014370(v9, layout);

    if (!v11)
    {
      +[CRLAssertionHandler _atomicIncrementAssertCount];
      if (qword_101AD5A10 != -1)
      {
        sub_10137A930();
      }

      if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
      {
        sub_10137A944();
      }

      if (qword_101AD5A10 != -1)
      {
        sub_10137A9E0();
      }

      v12 = off_1019EDA68;
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        +[CRLAssertionHandler packedBacktraceString];
        objc_claimAutoreleasedReturnValue();
        sub_10130E89C();
      }

      v13 = [NSString stringWithUTF8String:"[CRLWPRep prepareLayoutForImagingSearchReferencesAsActive:usingBlock:]"];
      v14 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLWP/CRLWPRep.mm"];
      [CRLAssertionHandler handleFailureInFunction:v13 file:v14 lineNumber:4591 isFatal:0 description:"invalid nil value for '%{public}s'", "layout"];
    }

    layoutController = [v11 layoutController];
    if (!layoutController)
    {
      +[CRLAssertionHandler _atomicIncrementAssertCount];
      if (qword_101AD5A10 != -1)
      {
        sub_10137AA08();
      }

      if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
      {
        sub_10137AA30();
      }

      if (qword_101AD5A10 != -1)
      {
        sub_10137AAC0();
      }

      v16 = off_1019EDA68;
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        +[CRLAssertionHandler packedBacktraceString];
        objc_claimAutoreleasedReturnValue();
        sub_10130E89C();
      }

      v17 = [NSString stringWithUTF8String:"[CRLWPRep prepareLayoutForImagingSearchReferencesAsActive:usingBlock:]"];
      v18 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLWP/CRLWPRep.mm"];
      [CRLAssertionHandler handleFailureInFunction:v17 file:v18 lineNumber:4593 isFatal:0 description:"Building a imageSearchReference for a layout that has no layout controller"];
    }

    if (activeCopy)
    {
      v19 = sub_1002843F0();
    }

    else
    {
      v19 = sub_100284410();
    }

    v20 = v19;
    v21 = [CRLColor colorWithCGColor:v19];
    [(CRLWPRep *)self setBackgroundColor:v21];

    [layoutController validateLayoutWithDependencies:v11];
    if ([v11 layoutIsValid])
    {
      blockCopy[2](blockCopy);
    }

    [(CRLWPRep *)self setBackgroundColor:0];
    CGColorRelease(v20);
    [layoutController validateLayoutWithDependencies:v11];
  }

  else
  {
    blockCopy[2](blockCopy);
  }
}

- (void)p_updateHighlights
{
  searchReferences = [(CRLWPRep *)self searchReferences];
  v4 = [searchReferences count];

  highlightArrayController = self->_highlightArrayController;
  if (v4)
  {
    if (!highlightArrayController)
    {
      v6 = [[CRLWPHighlightArrayController alloc] initWithZOrder:self delegate:3.0];
      v7 = self->_highlightArrayController;
      self->_highlightArrayController = v6;
    }

    layout = [(CRLWPRep *)self layout];
    v9 = layout;
    if (layout)
    {
      [layout transformInRoot];
    }

    else
    {
      v18 = 0u;
      v19 = 0u;
      v17 = 0u;
    }

    v10 = self->_highlightArrayController;
    v16[0] = v17;
    v16[1] = v18;
    v16[2] = v19;
    [(CRLWPHighlightArrayController *)v10 setTransform:v16];

    canvas = [(CRLCanvasRep *)self canvas];
    [canvas viewScale];
    [(CRLWPHighlightArrayController *)self->_highlightArrayController setViewScale:?];

    [(CRLWPHighlightArrayController *)self->_highlightArrayController reset];
    searchReferences2 = [(CRLWPRep *)self searchReferences];
    v13 = [searchReferences2 count];

    if (v13)
    {
      v14 = sub_100284410();
      v15[0] = _NSConcreteStackBlock;
      v15[1] = 3221225472;
      v15[2] = sub_10047AD88;
      v15[3] = &unk_101865200;
      v15[4] = self;
      v15[5] = v14;
      [(CRLWPRep *)self prepareLayoutForImagingSearchReferencesAsActive:0 usingBlock:v15];
      CGColorRelease(v14);
    }
  }

  else if (highlightArrayController)
  {
    self->_highlightArrayController = 0;
  }
}

- (CGPath)newPathForSearchReference:(id)reference
{
  selectionPath = [reference selectionPath];
  v5 = [selectionPath mostSpecificSelectionOfClass:objc_opt_class()];

  if (v5)
  {
    [v5 range];
    if (v6)
    {
      v7 = *&CGAffineTransformIdentity.c;
      *&v39.a = *&CGAffineTransformIdentity.a;
      *&v39.c = v7;
      *&v39.tx = *&CGAffineTransformIdentity.tx;
      Mutable = [(CRLWPRep *)self p_newPathForSelection:v5 withTransform:&v39 withInset:-1.0];
    }

    else
    {
      [(CRLWPRep *)self caretRectForSelection:v5];
      v10 = v9;
      v12 = v11;
      v14 = v13;
      v16 = v15;
      v42 = 0u;
      v43 = 0u;
      v40 = 0u;
      v41 = 0u;
      columns = [(CRLWPRep *)self columns];
      v18 = [columns countByEnumeratingWithState:&v40 objects:v44 count:16];
      if (v18)
      {
        v19 = *v41;
LABEL_7:
        v20 = 0;
        while (1)
        {
          if (*v41 != v19)
          {
            objc_enumerationMutation(columns);
          }

          v21 = *(*(&v40 + 1) + 8 * v20);
          [v21 frameBounds];
          if (sub_10011EF78(v22, v23, v24, v25, v10, v12))
          {
            break;
          }

          if (v18 == ++v20)
          {
            v18 = [columns countByEnumeratingWithState:&v40 objects:v44 count:16];
            if (v18)
            {
              goto LABEL_7;
            }

            goto LABEL_13;
          }
        }

        v26 = v21;

        if (!v26)
        {
          goto LABEL_16;
        }

        [v26 transformToWP];
        v27 = 0;
      }

      else
      {
LABEL_13:

LABEL_16:
        +[CRLAssertionHandler _atomicIncrementAssertCount];
        if (qword_101AD5A10 != -1)
        {
          sub_10137AAE8();
        }

        if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
        {
          sub_10137AB10();
        }

        if (qword_101AD5A10 != -1)
        {
          sub_10137ABAC();
        }

        v28 = off_1019EDA68;
        if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
        {
          +[CRLAssertionHandler packedBacktraceString];
          objc_claimAutoreleasedReturnValue();
          sub_10130E89C();
        }

        v29 = [NSString stringWithUTF8String:"[CRLWPRep newPathForSearchReference:]"];
        v30 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLWP/CRLWPRep.mm"];
        [CRLAssertionHandler handleFailureInFunction:v29 file:v30 lineNumber:4672 isFatal:0 description:"invalid nil value for '%{public}s'", "columnContainingRect"];

        v26 = 0;
        memset(&v39, 0, sizeof(v39));
        v27 = 1;
      }

      v45.origin.x = v10;
      v45.origin.y = v12;
      v45.size.width = v14;
      v45.size.height = v16;
      v46 = CGRectApplyAffineTransform(v45, &v39);
      x = v46.origin.x;
      y = v46.origin.y;
      height = v46.size.height;
      if (v27)
      {
        memset(&v39, 0, sizeof(v39));
      }

      else
      {
        [v26 transformFromWP];
      }

      v47.size.width = height * 0.444444444;
      v47.origin.x = x;
      v47.origin.y = y;
      v47.size.height = height;
      v48 = CGRectApplyAffineTransform(v47, &v39);
      v34 = v48.origin.x;
      v35 = v48.origin.y;
      width = v48.size.width;
      v37 = v48.size.height;
      if (CGRectIsEmpty(v48))
      {
        Mutable = 0;
      }

      else
      {
        Mutable = CGPathCreateMutable();
        v49.origin.x = v34;
        v49.origin.y = v35;
        v49.size.width = width;
        v49.size.height = v37;
        v50 = CGRectIntegral(v49);
        CGPathAddRect(Mutable, 0, v50);
      }
    }
  }

  else
  {
    Mutable = 0;
  }

  return Mutable;
}

- (id)imageForSearchReference:(id)reference forPath:(CGPath *)path shouldPulsate:(BOOL)pulsate
{
  pulsateCopy = pulsate;
  selectionPath = [reference selectionPath];
  v8 = [selectionPath mostSpecificSelectionOfClass:objc_opt_class()];

  [v8 range];
  if (v9)
  {
    LOBYTE(v12) = 0;
    v10 = [(CRLWPRep *)self textImageForSelection:v8 frame:0 usingGlyphRect:0 shouldPulsate:pulsateCopy suppressInvisibles:0 suppressChildReps:0 drawBackground:-1.0 inset:v12];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (void)animationDidStop:(id)stop finished:(BOOL)finished
{
  stopCopy = stop;
  [CRLWPRepHelper animationDidStop:"animationDidStop:caretLayer:floatingCaretLayer:" caretLayer:? floatingCaretLayer:?];
  floatingCaretLayer = [(CRLWPRep *)self floatingCaretLayer];
  v6 = [floatingCaretLayer animationForKey:@"dropAnimation"];

  v7 = stopCopy;
  if (v6 == stopCopy)
  {
    floatingCaretLayer2 = [(CRLWPRep *)self floatingCaretLayer];
    [floatingCaretLayer2 removeFromSuperlayer];

    [(CRLWPRep *)self setFloatingCaretLayer:0];
    interactiveCanvasController = [(CRLCanvasRep *)self interactiveCanvasController];
    [interactiveCanvasController invalidateOverlayLayersForRep:self];

    v7 = stopCopy;
  }
}

- (NSArray)scribbleCapableElements
{
  selfCopy = self;
  v2 = [NSArray arrayWithObjects:&selfCopy count:1];

  return v2;
}

- (id)prepareForScribbleBlock
{
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_10047B754;
  v5[3] = &unk_101865700;
  v5[4] = self;
  v2 = objc_retainBlock(v5);
  v3 = objc_retainBlock(v2);

  return v3;
}

- (id)scribbleEditingBlock
{
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_10047B824;
  v5[3] = &unk_101865728;
  v5[4] = self;
  v2 = objc_retainBlock(v5);
  v3 = objc_retainBlock(v2);

  return v3;
}

- (void)scribbleSetSelectionForBeginEditingWithBoundsPoint:(CGPoint)point tappedInRep:(id)rep
{
  y = point.y;
  x = point.x;
  repCopy = rep;
  canvas = [(CRLCanvasRep *)self canvas];
  canvasController = [canvas canvasController];

  editorController = [canvasController editorController];
  v11 = [editorController mostSpecificCurrentEditorOfClass:objc_opt_class()];

  storage = [v11 storage];
  storage2 = [repCopy storage];

  if (storage != storage2)
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_10137ABD4();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10137ABE8();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_10137AC78();
    }

    v14 = off_1019EDA68;
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      +[CRLAssertionHandler packedBacktraceString];
      objc_claimAutoreleasedReturnValue();
      sub_10130E89C();
    }

    v15 = [NSString stringWithUTF8String:"[CRLWPRep scribbleSetSelectionForBeginEditingWithBoundsPoint:tappedInRep:]"];
    v16 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLWP/CRLWPRep.mm"];
    [CRLAssertionHandler handleFailureInFunction:v15 file:v16 lineNumber:4764 isFatal:0 description:"Expected the tapped rep to match our storage."];
  }

  [canvasController convertBoundsToUnscaledPoint:{x, y}];
  [(CRLCanvasRep *)self convertNaturalPointFromUnscaledCanvas:?];
  v18 = v17;
  v20 = v19;
  v35 = 0;
  layout = [repCopy layout];
  LOBYTE(v32) = 0;
  v22 = [CRLWPColumn charIndexFromPoint:0 allowPastBreak:0 allowNotFound:1 pastCenterGoesToNextChar:1 constrainToAscentAndDescent:&v35 isAtEndOfLine:0 leadingEdge:v18 ignoreEmptyColumns:v20 inLayoutTarget:v32, layout];

  v23 = v35;
  if ([(CRLWPRep *)self scribbleExceedsVerticalDistanceForNearestCharIndex:v22 boundsPoint:v35 isAtEndOfLine:x, y])
  {
    layout2 = [repCopy layout];
    LOBYTE(v33) = 0;
    v22 = [CRLWPColumn charIndexFromPoint:0 allowPastBreak:0 allowNotFound:1 pastCenterGoesToNextChar:0 constrainToAscentAndDescent:&v35 isAtEndOfLine:0 leadingEdge:v18 ignoreEmptyColumns:v20 inLayoutTarget:v33, layout2];

    v23 = v35;
  }

  v25 = [CRLWPSelection alloc];
  storage3 = [repCopy storage];
  LOBYTE(v34) = 1;
  v27 = [(CRLWPSelection *)v25 initWithType:0 range:v22 styleInsertionBehavior:0 caretAffinity:0 smartFieldRange:v23 leadingEdge:0x7FFFFFFFFFFFFFFFLL storage:0, v34, storage3];

  selectionModelTranslator = [canvasController selectionModelTranslator];
  storage4 = [repCopy storage];
  v30 = [selectionModelTranslator selectionPathForSelection:v27 onStorage:storage4];

  editorController2 = [canvasController editorController];
  [editorController2 setSelectionPath:v30];
}

- (BOOL)scribbleExceedsVerticalDistanceForNearestCharIndex:(unint64_t)index boundsPoint:(CGPoint)point isAtEndOfLine:(BOOL)line
{
  if (index == 0x7FFFFFFFFFFFFFFFLL)
  {
    return 1;
  }

  y = point.y;
  [(CRLWPRep *)self caretRectForCharIndex:index caretAffinity:line, point.x];
  [(CRLCanvasRep *)self convertNaturalPointToUnscaledCanvas:sub_100120414(v8, v9, v10, v11)];
  v13 = v12;
  v15 = v14;
  canvas = [(CRLCanvasRep *)self canvas];
  canvasController = [canvas canvasController];

  [canvasController convertUnscaledToBoundsPoint:{v13, v15}];
  v5 = vabdd_f64(y, v18) > 100.0;

  return v5;
}

- (CGRect)scaledScribbleEditingFrame
{
  interactiveCanvasController = [(CRLCanvasRep *)self interactiveCanvasController];
  [(CRLCanvasRep *)self frameInUnscaledCanvas];
  [interactiveCanvasController convertUnscaledToBoundsRect:?];
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

- (BOOL)scribbleElementIsFocused
{
  textEditor = [(CRLWPRep *)self textEditor];
  v3 = textEditor != 0;

  return v3;
}

- (void)updateUniversalAccessZoomWindow
{
  if (_UIAccessibilityZoomTouchEnabled())
  {
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_10047C244;
    v10[3] = &unk_101865790;
    v10[4] = self;
    v3 = objc_retainBlock(v10);
    if ((v3[2])(v3, self->_lastSelection) != 0x7FFFFFFFFFFFFFFFLL)
    {
      v4 = self->_lastSelection;
      v6[0] = _NSConcreteStackBlock;
      v6[1] = 3221225472;
      v6[2] = sub_10047C3A0;
      v6[3] = &unk_1018657B8;
      selfCopy = self;
      v9 = v3;
      v7 = v4;
      v5 = v4;
      dispatch_async(&_dispatch_main_q, v6);
    }
  }
}

- (CGRect)p_convertRectIntoZoomCoordinates:(CGRect)coordinates
{
  height = coordinates.size.height;
  width = coordinates.size.width;
  y = coordinates.origin.y;
  x = coordinates.origin.x;
  interactiveCanvasController = [(CRLCanvasRep *)self interactiveCanvasController];
  [(CRLCanvasRep *)self convertNaturalRectToUnscaledCanvas:x, y, width, height];
  [interactiveCanvasController convertUnscaledToBoundsRect:?];
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v16 = v15;

  v17 = v10;
  v18 = v12;
  v19 = v14;
  v20 = v16;
  result.size.height = v20;
  result.size.width = v19;
  result.origin.y = v18;
  result.origin.x = v17;
  return result;
}

- (id)p_textEditorForTextStorage:(id)storage
{
  storageCopy = storage;
  v13 = 0;
  v14 = &v13;
  v15 = 0x3032000000;
  v16 = sub_10047C798;
  v17 = sub_10047C7A8;
  v18 = 0;
  interactiveCanvasController = [(CRLCanvasRep *)self interactiveCanvasController];
  editorController = [interactiveCanvasController editorController];
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_10047C7B0;
  v10[3] = &unk_1018657E0;
  v7 = storageCopy;
  v11 = v7;
  v12 = &v13;
  [editorController enumerateEditorsOnStackUsingBlock:v10];

  v8 = v14[5];
  _Block_object_dispose(&v13, 8);

  return v8;
}

- (CRLWPSelection)dropSelection
{
  WeakRetained = objc_loadWeakRetained(&self->_dropSelection);

  return WeakRetained;
}

- (_NSRange)dragRange
{
  p_dragRange = &self->_dragRange;
  location = self->_dragRange.location;
  length = p_dragRange->length;
  result.length = length;
  result.location = location;
  return result;
}

- (NSArray)hyperlinkRegions
{
  selfCopy = self;
  CRLWPRep.hyperlinkRegions.getter();

  sub_100006370(0, &qword_101A13808);
  v3.super.isa = Array._bridgeToObjectiveC()().super.isa;

  return v3.super.isa;
}

- (CGRect)getCurrentTextFieldBounds
{
  selfCopy = self;
  sub_100B8F430();
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;

  v11 = v4;
  v12 = v6;
  v13 = v8;
  v14 = v10;
  result.size.height = v14;
  result.size.width = v13;
  result.origin.y = v12;
  result.origin.x = v11;
  return result;
}

- (id)contextMenuConfigurationAtPoint:(CGPoint)point
{
  y = point.y;
  x = point.x;
  selfCopy = self;
  v6 = sub_100CD8490(selfCopy, x, y);

  return v6;
}

- (id)contextMenuPreviewForHighlightingMenuAtPoint:(CGPoint)point withConfiguration:(id)configuration
{
  y = point.y;
  x = point.x;
  configurationCopy = configuration;
  selfCopy = self;
  v9 = sub_100CD9C7C(configurationCopy, selfCopy, x, y);

  return v9;
}

@end