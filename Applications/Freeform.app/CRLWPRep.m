@interface CRLWPRep
+ (id)focusedHighlightColorForDarkMode:(BOOL)a3;
+ (id)unfocusedHighlightColorForDarkMode:(BOOL)a3;
+ (void)initialize;
- ($8162D66D923C6F9903B35BCF259B21FE)wordMetricsAtCharIndex:(SEL)a3;
- ($D12B6492C59FD4124ECBBA05678185BF)lineMetricsAtCharIndex:(SEL)a3;
- ($D12B6492C59FD4124ECBBA05678185BF)p_lineMetricsAtPoint:(SEL)a3 allowNotFound:(CGPoint)a4;
- (BOOL)canEditWithEditor:(id)a3;
- (BOOL)containsPoint:(CGPoint)a3 withPrecision:(BOOL)a4;
- (BOOL)containsStartOfSelection:(id)a3;
- (BOOL)didPointHitSelectionEnd:(CGPoint)a3;
- (BOOL)ghostCaretAppearance;
- (BOOL)handleDragOperation:(unint64_t)a3 withDragInfo:(id)a4 atUnscaledPoint:(CGPoint)a5;
- (BOOL)isBeingEdited;
- (BOOL)isDragPoint:(CGPoint)a3 inSelection:(id)a4 includeEndpoints:(BOOL)a5;
- (BOOL)isDropTarget;
- (BOOL)isOverflowing;
- (BOOL)isPointInSelectedArea:(CGPoint)a3;
- (BOOL)p_allowCaretForSelection:(id)a3;
- (BOOL)p_automaticTextSubstitutionEnabled;
- (BOOL)p_canShowSelectionAndCaretLayers;
- (BOOL)p_doesRep:(id)a3 containCharIndex:(unint64_t)a4 isStart:(BOOL)a5;
- (BOOL)p_doesRepIntersectSearchReference:(id)a3;
- (BOOL)p_needsSpellChecker;
- (BOOL)p_positionCaretLayer:(id)a3 forSelection:(id)a4 layerRelative:(BOOL)a5;
- (BOOL)p_spellCheckingEnabled;
- (BOOL)p_storageMatchesSelectionPath:(id)a3;
- (BOOL)scribbleElementIsFocused;
- (BOOL)scribbleExceedsVerticalDistanceForNearestCharIndex:(unint64_t)a3 boundsPoint:(CGPoint)a4 isAtEndOfLine:(BOOL)a5;
- (BOOL)shouldAddCollaboratorLayerToOverlays;
- (BOOL)shouldCreateTextKnobs;
- (BOOL)shouldLayoutTilingLayer:(id)a3;
- (BOOL)shouldPreventMarqueeInitiationAtPoint:(CGPoint)a3 withTouchType:(int64_t)a4;
- (BOOL)shouldShowCollaboratorCursorHighlight;
- (BOOL)shouldShowEditMenu;
- (BOOL)shouldShowKnobs;
- (BOOL)textIsVertical;
- (BOOL)wantsContextMenuWhenEditingDisabledAtPoint:(CGPoint)a3;
- (CGAffineTransform)transformToConvertNaturalToScaledRoot;
- (CGColor)p_caretLayerColor;
- (CGColor)p_highlightLineColor;
- (CGPath)newPathForSearchReference:(id)a3;
- (CGPath)newPathForSelection:(id)a3;
- (CGPath)p_newPathForSelection:(id)a3 withTransform:(CGAffineTransform *)a4 withInset:(double)a5;
- (CGPath)p_newSelectionPathForSelection:(id)a3 transform:(CGAffineTransform *)a4 headPinRect:(CGRect *)a5 tailPinRect:(CGRect *)a6 markedText:(BOOL)a7;
- (CGPoint)knobCenterForSelection:(id)a3 knob:(id)a4;
- (CGPoint)p_applyLineSnappingToFloatingCaret:(id)a3 atPoint:(CGPoint)a4 withRect:(CGRect)a5;
- (CGPoint)p_pinPoint:(CGPoint)a3 toRect:(CGRect)a4;
- (CGPoint)pinToClosestColumn:(CGPoint)a3;
- (CGPoint)pinToNaturalBounds:(CGPoint)a3 andLastLineFragment:(BOOL)a4;
- (CGRect)boundsForCollaboratorCursorRenderable;
- (CGRect)caretRect;
- (CGRect)caretRectForCharIndex:(unint64_t)a3 caretAffinity:(unint64_t)a4;
- (CGRect)caretRectForCharIndex:(unint64_t)a3 leadingEdge:(BOOL)a4 caretAffinity:(unint64_t)a5;
- (CGRect)caretRectForSelection:(id)a3;
- (CGRect)clipRect;
- (CGRect)columnRectForRange:(_NSRange)a3;
- (CGRect)getCurrentTextFieldBounds;
- (CGRect)glyphRectForRange:(_NSRange)a3 includingLabel:(BOOL)a4;
- (CGRect)glyphRectForRubyFieldAtCharIndex:(unint64_t)a3 glyphRange:(_NSRange)a4;
- (CGRect)labelRectForCharIndex:(unint64_t)a3;
- (CGRect)newTextLayerUnscaledBounds:(CGRect)a3 forNewTextBounds:(CGRect)a4;
- (CGRect)p_caretRectForSelection:(id)a3;
- (CGRect)p_clipRect:(CGRect)a3;
- (CGRect)p_closestCaretRectForCharacterAtPoint:(CGPoint)a3;
- (CGRect)p_closestCaretRectForPoint:(CGPoint)a3 inSelection:(BOOL)a4 allowPastBreak:(BOOL)a5;
- (CGRect)p_convertNaturalRectToRotated:(CGRect)a3 repAngle:(double)a4;
- (CGRect)p_convertRectIntoZoomCoordinates:(CGRect)a3;
- (CGRect)p_topicDragRectForSelection:(id)a3;
- (CGRect)rectForSelection:(id)a3 includeRuby:(BOOL)a4 includePaginatedAttachments:(BOOL)a5;
- (CGRect)rectToClipChildRepRenderables;
- (CGRect)scaledScribbleEditingFrame;
- (CGRect)selectionRect;
- (CGSize)hitTestingSlop;
- (CRLContainerInfo)containerInfo;
- (CRLWPDragAndDropHelper)dragAndDropHelper;
- (CRLWPLayoutTarget)layout;
- (CRLWPRep)initWithLayout:(id)a3 canvas:(id)a4;
- (CRLWPSelection)dropSelection;
- (CRLWPSelection)selection;
- (NSArray)columns;
- (NSArray)hyperlinkRegions;
- (NSArray)scribbleCapableElements;
- (_NSRange)dragRange;
- (_NSRange)range;
- (_NSRange)rangeOfMisspelledWordAtCharIndex:(unint64_t)a3;
- (_TtC8Freeform11CRLWPEditor)textEditor;
- (_TtC8Freeform12CRLWPStorage)storage;
- (_TtC8Freeform12CRLWPStorage)storageForDragDropOperation;
- (double)collaborativeCursorOpacityForCaret:(BOOL)a3;
- (double)knobOffsetForKnob:(id)a3 paragraphMode:(BOOL)a4;
- (id)actionForLayer:(id)a3 forKey:(id)a4;
- (id)backgroundColorForDragPreviewOfSelection:(id)a3;
- (id)closestColumnForPoint:(CGPoint)a3;
- (id)collaboratorCursorRenderable;
- (id)colorBehindLayer:(id)a3;
- (id)columnForCharIndex:(unint64_t)a3;
- (id)contextMenuConfigurationAtPoint:(CGPoint)a3;
- (id)contextMenuPreviewForHighlightingMenuAtPoint:(CGPoint)a3 withConfiguration:(id)a4;
- (id)cursorAtPoint:(CGPoint)a3 forKnob:(id)a4 withCursorPlatformObject:(id)a5;
- (id)cursorForPoint:(CGPoint)a3 withCursorPlatformObject:(id)a4;
- (id)dragItemsForBeginningDragAtPoint:(CGPoint)a3;
- (id)hyperlinkContainerRep;
- (id)imageForSearchReference:(id)a3 forPath:(CGPath *)a4 shouldPulsate:(BOOL)a5;
- (id)knobClassWithTag:(unint64_t)a3;
- (id)knobPositioner;
- (id)lineSearchReferencesForSearchReference:(id)a3;
- (id)newTrackerForKnob:(id)a3;
- (id)overlayRenderables;
- (id)p_caretLayerWithZPosition:(double)a3;
- (id)p_dragItemsForBeginningDragWithSelection:(id)a3 inlineRepBeingDragged:(id)a4;
- (id)p_hyperlinkAtPoint:(CGPoint)a3;
- (id)p_imageForRect:(CGRect)a3 usingGlyphRect:(BOOL)a4 prepareBackground:(BOOL)a5 drawBackground:(BOOL)a6 shouldPulsate:(BOOL)a7 forCaret:(BOOL)a8 drawSelection:(id)a9 suppressInvisibles:(BOOL)a10 suppressChildReps:(BOOL)a11;
- (id)p_imageForZeroLengthPath:(CGPath *)a3;
- (id)p_lineSelectionsForSelection:(id)a3;
- (id)p_styleProvider;
- (id)p_textEditorForStorage:(id)a3;
- (id)p_textEditorForTextStorage:(id)a3;
- (id)prepareForScribbleBlock;
- (id)repForCharIndex:(unint64_t)a3 isStart:(BOOL)a4;
- (id)repForDragging;
- (id)scribbleEditingBlock;
- (id)selectionForDragAndDropNaturalPoint:(CGPoint)a3;
- (id)siblings;
- (id)smartFieldAtPoint:(CGPoint)a3;
- (id)textEditorForDropIntoStorage:(id)a3;
- (id)textImageForSelection:(id)a3 frame:(CGRect *)a4 usingGlyphRect:(BOOL)a5 shouldPulsate:(BOOL)a6 suppressInvisibles:(BOOL)a7 suppressChildReps:(BOOL)a8 drawBackground:(BOOL)a9 inset:(double)a10;
- (int64_t)tilingMode;
- (unint64_t)dragOperationForDragInfo:(id)a3 atUnscaledPoint:(CGPoint)a4;
- (unint64_t)glyphCountForRubyFieldAtCharIndex:(unint64_t)a3;
- (unint64_t)pulseAnimationStyle:(id)a3;
- (unsigned)fontTraitsForRange:(_NSRange)a3 includingLabel:(BOOL)a4;
- (void)addAdditionalChildLayersToArray:(id)a3;
- (void)addKnobsToArray:(id)a3;
- (void)animationDidStop:(id)a3 finished:(BOOL)a4;
- (void)beginEditing;
- (void)beginFloatingCursorAtPoint:(CGPoint)a3 animate:(BOOL)a4;
- (void)collaboratorCursorChangedToSelectionPath:(id)a3;
- (void)dealloc;
- (void)didBeginEditingWithTextEditor:(id)a3;
- (void)didDrawInLayer:(id)a3 context:(CGContext *)a4;
- (void)didUpdateRenderable:(id)a3;
- (void)drawInLayerContext:(CGContext *)a3;
- (void)drawLayer:(id)a3 inContext:(CGContext *)a4;
- (void)drawRubyInContext:(CGContext *)a3 rubyFieldStart:(unint64_t)a4 rubyGlyphRange:(_NSRange)a5;
- (void)editingDidEndWithTextEditor:(id)a3;
- (void)endFloatingCursorWithRepForAnimation:(id)a3;
- (void)gesturesDidEnd:(id)a3;
- (void)handleFadeInForZoom;
- (void)handleFadeOutForZoom;
- (void)hideCollaboratorCursors;
- (void)hideDragAndDropUI;
- (void)i_primaryFindResultChanged:(id)a3;
- (void)i_setNeedsDisplayForSelectionChange;
- (void)i_setNeedsErasableDisplayInRange:(_NSRange)a3;
- (void)i_setSearchReferencesToHighlight:(id)a3;
- (void)i_spellCheckerWordsDidChange;
- (void)i_textInputResponderDidBecomeFirstResponder;
- (void)i_textInputResponderDidResignFirstResponder;
- (void)invalidateCollaboratorCursorRenderable;
- (void)p_addDropAnimationToFloatingCursorWithEndingRep:(id)a3;
- (void)p_clearICCPrimaryFindResultSearchReference;
- (void)p_createLayer:(int64_t)a3;
- (void)p_createMarkHighlightLayer;
- (void)p_createSelectionHighlightLayer;
- (void)p_createSelectionLineLayers;
- (void)p_createSelectionParagraphBorderLayer;
- (void)p_createSpellChecker;
- (void)p_destroyLayer:(int64_t)a3;
- (void)p_destroySpellChecker;
- (void)p_drawInContext:(CGContext *)a3 limitSelection:(id)a4 suppressInvisibles:(BOOL)a5;
- (void)p_drawTextBackgroundLayerInContext:(CGContext *)a3;
- (void)p_drawTextInLayer:(id)a3 context:(CGContext *)a4 limitSelection:(id)a5 rubyGlyphRange:(_NSRange)a6 renderMode:(unint64_t)a7 suppressInvisibles:(BOOL)a8;
- (void)p_drawTextLayerInContext:(CGContext *)a3;
- (void)p_hideCollaboratorCursorLayer;
- (void)p_hideSelectionLayers;
- (void)p_hideSelectionParagraphBorderLayer;
- (void)p_invalidateSuppressedMisspellingRange;
- (void)p_positionAndSizeFloatingCaret:(id)a3 atPoint:(CGPoint)a4;
- (void)p_registerNotifications;
- (void)p_selectionChangedNotification:(id)a3;
- (void)p_setPrimaryFindResultSearchReference:(id)a3;
- (void)p_setPulseControllerActive:(BOOL)a3 autohide:(BOOL)a4;
- (void)p_setSelectionHighlightColor;
- (void)p_setSelectionLineLayersHidden:(BOOL)a3;
- (void)p_setSuppressedMisspellingRange:(_NSRange)a3;
- (void)p_showCollaboratorCursorLayer;
- (void)p_showSelectionParagraphBorderLayerWithPath:(CGPath *)a3;
- (void)p_spellcheckFinished:(id)a3;
- (void)p_teardown;
- (void)p_unregisterNotifications;
- (void)p_updateAnimationWithAnimatingPulse:(BOOL)a3;
- (void)p_updateCaretLayerColor;
- (void)p_updateForCurrentSelectionWithFlags:(unint64_t)a3;
- (void)p_updateHighlights;
- (void)p_updateLayersForInsertionPointSelection:(id)a3;
- (void)p_updateLayersForRangeSelection:(id)a3 selectionFlags:(unint64_t)a4;
- (void)p_updateMarkHighlightLayer;
- (void)p_updateSecondaryHighlightLayer;
- (void)p_updateSuppressedSpellingRange;
- (void)p_validateWithLayoutController;
- (void)p_withCollaboratorCursorPerformBlock:(id)a3;
- (void)performBlockOnTextLayers:(id)a3;
- (void)prepareLayoutForImagingSearchReferencesAsActive:(BOOL)a3 usingBlock:(id)a4;
- (void)processChangedProperty:(unint64_t)a3;
- (void)pulseAnimationDidStop:(id)a3;
- (void)pulseAnimationDidStopForPulse:(id)a3;
- (void)pulseCaret;
- (void)refreshEditMenu;
- (void)screenScaleDidChange;
- (void)scribbleSetSelectionForBeginEditingWithBoundsPoint:(CGPoint)a3 tappedInRep:(id)a4;
- (void)setDragRange:(_NSRange)a3;
- (void)setDropSelection:(id)a3;
- (void)setGhostCaretAppearance:(BOOL)a3;
- (void)setHighlightedHyperlinkField:(id)a3;
- (void)setNeedsDisplay;
- (void)setNeedsDisplayInRange:(_NSRange)a3;
- (void)setNeedsDisplayInRect:(CGRect)a3;
- (void)setParentRep:(id)a3;
- (void)setSecondaryHighlightRange:(_NSRange)a3 color:(CGColor *)a4 pathStyle:(int)a5;
- (void)setSuppressSelectionHighlight:(BOOL)a3;
- (void)spellCheckingStateChanged;
- (void)textInteractionCaretBeganFloating;
- (void)textInteractionCaretDragStopped;
- (void)textInteractionCaretEndedFloating;
- (void)updateDragAndDropUIForPoint:(CGPoint)a3 dragInfo:(id)a4;
- (void)updateFloatingCursorAtPoint:(CGPoint)a3;
- (void)updateFromLayout;
- (void)updatePositionsOfKnobs:(id)a3;
- (void)updateUniversalAccessZoomWindow;
- (void)updateVisualSelection:(id)a3;
- (void)verticalTextPropertyChanged;
- (void)willBeRemoved;
@end

@implementation CRLWPRep

- (unint64_t)dragOperationForDragInfo:(id)a3 atUnscaledPoint:(CGPoint)a4
{
  y = a4.y;
  x = a4.x;
  v7 = a3;
  v8 = [(CRLWPRep *)self dragAndDropHelper];
  v9 = [v8 dragOperationForDragInfo:v7 atUnscaledPoint:{x, y}];

  return v9;
}

- (BOOL)handleDragOperation:(unint64_t)a3 withDragInfo:(id)a4 atUnscaledPoint:(CGPoint)a5
{
  y = a5.y;
  x = a5.x;
  v9 = a4;
  v10 = [(CRLWPRep *)self dragAndDropHelper];
  LOBYTE(a3) = [v10 handleDragOperation:a3 withDragInfo:v9 atUnscaledPoint:{x, y}];

  return a3;
}

- (void)updateDragAndDropUIForPoint:(CGPoint)a3 dragInfo:(id)a4
{
  y = a3.y;
  x = a3.x;
  v7 = a4;
  v8 = [(CRLWPRep *)self dragAndDropHelper];
  [v8 adjustedUnscaledPoint:{x, y}];
  v10 = v9;
  v12 = v11;

  v62.receiver = self;
  v62.super_class = CRLWPRep;
  [(CRLCanvasRep *)&v62 updateDragAndDropUIForPoint:v7 dragInfo:v10, v12];
  [(CRLCanvasRep *)self convertNaturalPointFromUnscaledCanvas:v10, v12];
  v14 = v13;
  v16 = v15;
  [(CRLWPRep *)self hideCaretLayer];
  v17 = [(CRLWPRep *)self dragAndDropHelper];
  v18 = [v17 sourceSelectionPathForDragInfo:v7];

  v19 = [(CRLCanvasRep *)self interactiveCanvasController];
  v20 = [v19 modelsForSelectionPath:v18];

  v21 = [v20 objectsPassingTest:&stru_101856388];
  v22 = objc_opt_class();
  v23 = [v21 crl_onlyObject];
  v24 = sub_100014370(v22, v23);

  v25 = [v24 textStorage];
  if (v25)
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

    v29 = [v25 changeCount];
    v30 = [(CRLWPRep *)self dragAndDropHelper];
    v31 = [v30 sourceChangeCountForDragInfo:v7];

    if (v29 != v31)
    {

      v25 = 0;
    }
  }

  v32 = [(CRLWPRep *)self storage];
  v33 = [(CRLWPRep *)self dragAndDropHelper];
  [v33 setDragIsStorageLocal:v25 == v32];

  v34 = [(CRLWPRep *)self dragAndDropHelper];
  v35 = [v34 dragIsStorageLocal];

  if (v35)
  {
    v36 = [(CRLWPRep *)self dragAndDropHelper];
    v37 = [v36 sourceSelectionForDragInfo:v7];

    if (v37 && [(CRLWPRep *)self isDragPoint:v37 inSelection:0 includeEndpoints:v14, v16])
    {
      v38 = [(CRLWPRep *)self dragAndDropHelper];
      v39 = [v38 dragIsStorageLocal];
    }

    else
    {
      v39 = 0;
    }
  }

  else
  {
    v39 = 0;
    v37 = 0;
  }

  v40 = [(CRLWPRep *)self dragAndDropCaretLayer];
  [v40 setHidden:v39];

  if (v39)
  {
    [(CRLWPRep *)self hideDragAndDropUI];
  }

  else
  {
    [(CRLWPRep *)self setDragOperationInProgress:1];
    v41 = [(CRLWPRep *)self dragAndDropHelper];
    [v41 dragAndDropNaturalPoint];
    v43 = v42;
    v45 = v44;

    if (v43 != v14 || v45 != v16)
    {
      v46 = [(CRLWPRep *)self dragAndDropHelper];
      [v46 setDragAndDropNaturalPoint:{v14, v16}];

      v47 = [(CRLCanvasRep *)self interactiveCanvasController];
      [v47 invalidateOverlayLayersForRep:self];
    }
  }

  v48 = [(CRLWPRep *)self dragAndDropHelper];
  v49 = [v48 dragIsStorageLocal];

  if (v49)
  {
    v61 = [v37 range];
    v51 = v50;
    [objc_opt_class() unfocusedHighlightColorForDarkMode:0];
    v52 = v37;
    v53 = v25;
    v54 = v7;
    v55 = v20;
    v56 = v24;
    v57 = v21;
    v59 = v58 = v18;
    -[CRLWPRep setSecondaryHighlightRange:color:pathStyle:](self, "setSecondaryHighlightRange:color:pathStyle:", v61, v51, [v59 CGColor], 0);

    v18 = v58;
    v21 = v57;
    v24 = v56;
    v20 = v55;
    v7 = v54;
    v25 = v53;
    v37 = v52;
  }
}

- (void)hideDragAndDropUI
{
  [(CRLWPRep *)self setDragOperationInProgress:0];
  [(CRLWPRep *)self clearSecondaryHighlight];
  v3 = [(CRLWPRep *)self dragAndDropHelper];
  [v3 setDragAndDropNaturalPoint:{NAN, NAN}];

  v4 = [(CRLWPRep *)self dragAndDropCaretLayer];
  [v4 setDelegate:0];

  [(CRLWPRep *)self setDragAndDropCaretLayer:0];
  v5 = [(CRLWPRep *)self dragAndDropTopicLayer];
  [v5 setDelegate:0];

  [(CRLWPRep *)self setDragAndDropTopicLayer:0];
  [(CRLWPRep *)self setDragAndDropTopicIndentLayer:0];
  v6.receiver = self;
  v6.super_class = CRLWPRep;
  [(CRLCanvasRep *)&v6 hideDragAndDropUI];
}

- (id)dragItemsForBeginningDragAtPoint:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  v6 = [(CRLWPRep *)self textEditor];

  if (v6)
  {
    v7 = [(CRLWPRep *)self selection];
    if ([v7 isRange])
    {
      v8 = [(CRLWPRep *)self isPointInSelectedArea:x, y];

      if (v8)
      {
        v9 = [_TtC8Freeform23CRLWPEditMenuController alloc];
        v10 = [(CRLCanvasRep *)self interactiveCanvasController];
        v11 = [(CRLWPEditMenuController *)v9 initWithICC:v10];
        [(CRLWPEditMenuController *)v11 hide];

        v12 = [(CRLWPRep *)self selection];
        v13 = [(CRLWPRep *)self p_dragItemsForBeginningDragWithSelection:v12 inlineRepBeingDragged:0];

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

- (id)p_dragItemsForBeginningDragWithSelection:(id)a3 inlineRepBeingDragged:(id)a4
{
  v5 = a3;
  v6 = [(CRLCanvasRep *)self interactiveCanvasController];
  v7 = objc_alloc_init(CRLItemProviderItemWriter);
  v14 = sub_1003035DC(v7, 1, v8, v9, v10, v11, v12, v13, &OBJC_PROTOCOL___CRLWPIngestibleItemWriting);

  v15 = [(CRLWPRep *)self storage];
  v16 = [(CRLWPRep *)self p_textEditorForStorage:v15];

  v68 = v16;
  v17 = [v16 editorHelper];
  v18 = [v17 hasWhitespaceBoundedWordAtSelection:v5];

  v19 = [(CRLWPRep *)self storage];
  v20 = [v6 canvasEditor];
  v21 = [v20 pasteboardController];
  v69 = v14;
  v22 = [v14 itemProviderWithStorage:v19 selection:v5 boardItems:&__NSArray0__struct styleProvider:0 inIsSmart:v18 pasteboardController:v21];

  if (v22)
  {
    v23 = [v6 selectionModelTranslator];
    v24 = [(CRLWPRep *)self storage];
    v25 = [v23 selectionPathForSelection:v5 onStorage:v24];

    v26 = [v6 editorController];
    v27 = [v26 selectionPath];
    v28 = [CRLWPiOSTextDraggingContext alloc];
    v29 = [(CRLWPRep *)self storage];
    v65 = v26;
    v66 = v27;
    v67 = v25;
    v30 = -[CRLWPiOSTextDraggingContext initWithEditorController:sourceSelectionPath:changeCount:reverseSelectionPath:](v28, "initWithEditorController:sourceSelectionPath:changeCount:reverseSelectionPath:", v26, v25, [v29 changeCount], v27);

    size = CGRectNull.size;
    origin = CGRectNull.origin;
    v77 = size;
    v32 = [(CRLCanvasRep *)self canvas];
    [v32 viewScale];
    v34 = -12.0 / v33;

    LOBYTE(v63) = 1;
    v35 = [(CRLWPRep *)self textImageForSelection:v5 frame:&origin usingGlyphRect:1 shouldPulsate:0 suppressInvisibles:1 suppressChildReps:0 drawBackground:v34 inset:v63];
    [(CRLCanvasRep *)self convertNaturalRectToUnscaledCanvas:origin, v77];
    v37 = v36;
    v39 = v38;
    v41 = v40;
    v43 = v42;
    v44 = [(CRLWPRep *)self backgroundColorForDragPreviewOfSelection:v5];
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
      [v6 convertUnscaledToBoundsRect:{v37, v39, v41, v43}];
      [v45 setFrame:?];
      v53 = [(CRLCanvasRep *)self canvas];
      [v53 viewScale];

      v46 = [UIBezierPath bezierPathWithRoundedRect:sub_10011ECB4() cornerRadius:?];
    }

    v54 = [v35 CGImage];
    [v45 layer];
    v55 = v64 = v35;
    [v55 setContents:v54];

    v56 = [v45 layer];
    LODWORD(v57) = 1062836634;
    [v56 setOpacity:v57];

    v58 = [CRLiOSCanvasDragItem alloc];
    v70[0] = _NSConcreteStackBlock;
    v70[1] = 3221225472;
    v70[2] = sub_1003277A0;
    v70[3] = &unk_101856430;
    v71 = v46;
    v72 = v44;
    v73 = v6;
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
  v2 = [(CRLWPRep *)self storage];
  v3 = [CRLWPStorageStyleProvider styleProviderForStorage:v2];

  return v3;
}

- (id)p_textEditorForStorage:(id)a3
{
  v4 = a3;
  v13 = 0;
  v14 = &v13;
  v15 = 0x3032000000;
  v16 = sub_100327A54;
  v17 = sub_100327A64;
  v18 = 0;
  v5 = [(CRLCanvasRep *)self interactiveCanvasController];
  v6 = [v5 editorController];
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_100327A6C;
  v10[3] = &unk_10183ECE0;
  v7 = v4;
  v11 = v7;
  v12 = &v13;
  [v6 enumerateEditorsOnStackUsingBlock:v10];

  v8 = v14[5];
  _Block_object_dispose(&v13, 8);

  return v8;
}

+ (id)focusedHighlightColorForDarkMode:(BOOL)a3
{
  v3 = a3;
  v4 = a1;
  objc_sync_enter(v4);
  v5 = &unk_101A34FE8;
  if (!v3)
  {
    v5 = &qword_101A34FE0;
  }

  v6 = *v5;
  objc_sync_exit(v4);

  return v6;
}

+ (id)unfocusedHighlightColorForDarkMode:(BOOL)a3
{
  v3 = a3;
  v4 = a1;
  objc_sync_enter(v4);
  v5 = &qword_101A34FF8;
  if (!v3)
  {
    v5 = &unk_101A34FF0;
  }

  v6 = *v5;
  objc_sync_exit(v4);

  return v6;
}

- (void)setSuppressSelectionHighlight:(BOOL)a3
{
  if (self->_suppressSelectionHighlight != a3)
  {
    self->_suppressSelectionHighlight = a3;
    if (a3)
    {
      [(CRLWPRep *)self p_hideSelectionLayers];
    }
  }
}

- (BOOL)shouldShowKnobs
{
  v5.receiver = self;
  v5.super_class = CRLWPRep;
  v3 = [(CRLCanvasRep *)&v5 shouldShowKnobs];
  if (v3)
  {
    LOBYTE(v3) = [(CRLWPRep *)self p_shouldDisplaySelectionControls];
  }

  return v3;
}

- (CRLContainerInfo)containerInfo
{
  v2 = [(CRLCanvasRep *)self info];
  v3 = objc_opt_class();
  v9 = sub_1003038E0(v2, v3, 1, v4, v5, v6, v7, v8, &OBJC_PROTOCOL___CRLContainerInfo);

  return v9;
}

- (void)setDragRange:(_NSRange)a3
{
  location = a3.location;
  length = a3.length;
  if (!a3.length)
  {
    location = self->_dragRange.location;
    length = self->_dragRange.length;
  }

  self->_dragRange = a3;
  [(CRLWPRep *)self i_setNeedsErasableDisplayInRange:location, length];
}

- (void)setDropSelection:(id)a3
{
  obj = a3;
  WeakRetained = objc_loadWeakRetained(&self->_dropSelection);

  if (WeakRetained != obj)
  {
    objc_storeWeak(&self->_dropSelection, obj);
    v5 = [(CRLCanvasRep *)self interactiveCanvasController];
    [v5 invalidateOverlayLayersForRep:self];

    v6 = objc_loadWeakRetained(&self->_dropSelection);
    if (v6)
    {
      v7 = [(CRLCanvasRep *)self interactiveCanvasController];
      [v7 layoutIfNeeded];

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
  if (objc_opt_class() == a1)
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

- (CRLWPRep)initWithLayout:(id)a3 canvas:(id)a4
{
  v6 = a3;
  v7 = a4;
  v24.receiver = self;
  v24.super_class = CRLWPRep;
  v8 = [(CRLCanvasRep *)&v24 initWithLayout:v6 canvas:v7];
  if (v8)
  {
    v9 = objc_opt_class();
    sub_100303920(v6, v9, 1, v10, v11, v12, v13, v14, &OBJC_PROTOCOL___CRLWPLayoutTarget);

    v15 = [v8 storage];

    if (v15)
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

      v20 = [v8 p_isRedesignedTextCursorEnabled];
      v8[337] = v20;
      v8[385] = v20;
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

- (void)setParentRep:(id)a3
{
  v4 = a3;
  v15.receiver = self;
  v15.super_class = CRLWPRep;
  [(CRLCanvasRep *)&v15 setParentRep:v4];
  v5 = [(CRLWPRep *)self storage];
  if (v5)
  {
    v6 = [(CRLCanvasRep *)self canvas];
    v7 = [v6 isCanvasInteractive];

    if (v7)
    {
      v8 = objc_opt_class();
      v9 = [(CRLCanvasRep *)self interactiveCanvasController];
      v10 = [v9 primaryFindResultSearchReference];
      v11 = sub_100014370(v8, v10);
      v12 = [v11 copy];

      if ([(CRLWPRep *)self p_doesRepIntersectSearchReference:v12])
      {
        [(CRLWPRep *)self p_setPrimaryFindResultSearchReference:v12];
      }

      v13 = [(CRLCanvasRep *)self interactiveCanvasController];
      v14 = [v13 searchReferencesToHighlight];
      [(CRLWPRep *)self i_setSearchReferencesToHighlight:v14];
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
  v2 = [(CRLWPRep *)self columns];
  v3 = [v2 countByEnumeratingWithState:&v15 objects:v19 count:16];
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
          objc_enumerationMutation(v2);
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

      v3 = [v2 countByEnumeratingWithState:&v15 objects:v19 count:16];
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

- (CGPoint)pinToNaturalBounds:(CGPoint)a3 andLastLineFragment:(BOOL)a4
{
  v4 = a4;
  y = a3.y;
  x = a3.x;
  [(CRLCanvasRep *)self naturalBounds];
  [(CRLWPRep *)self p_pinPoint:x toRect:y, v8, v9, v10, v11];
  v41 = v13;
  v42 = v12.f64[0];
  v12.f64[1] = v13;
  v40 = v12;
  if (v4)
  {
    v48 = 0u;
    v49 = 0u;
    v46 = 0u;
    v47 = 0u;
    v14 = [(CRLWPRep *)self columns];
    v15 = [v14 countByEnumeratingWithState:&v46 objects:v50 count:16];
    if (v15)
    {
      v16 = *v47;
      while (2)
      {
        for (i = 0; i != v15; i = i + 1)
        {
          if (*v47 != v16)
          {
            objc_enumerationMutation(v14);
          }

          v18 = *(*(&v46 + 1) + 8 * i);
          [v18 frameBounds];
          v52.y = v41;
          v52.x = v42;
          if (CGRectContainsPoint(v53, v52))
          {
            v19 = [v18 lineCount];
            if (v19)
            {
              [v18 boundsOfLineFragmentAtIndex:v19 - 1];
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

        v15 = [v14 countByEnumeratingWithState:&v46 objects:v50 count:16];
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

- (CGPoint)pinToClosestColumn:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
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
  v3 = [(CRLWPRep *)self selection];
  [(CRLWPRep *)self caretRectForSelection:v3];
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
  v3 = [(CRLWPRep *)self selection];
  [(CRLWPRep *)self rectForSelection:v3 includeRuby:0 includePaginatedAttachments:0];
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

- (BOOL)containsPoint:(CGPoint)a3 withPrecision:(BOOL)a4
{
  v4 = a4;
  y = a3.y;
  x = a3.x;
  v12.receiver = self;
  v12.super_class = CRLWPRep;
  if (![CRLCanvasRep containsPoint:"containsPoint:withPrecision:" withPrecision:?])
  {
    return 0;
  }

  v8 = [(CRLCanvasRep *)self parentRep];

  if (!v8)
  {
    return 1;
  }

  v9 = [(CRLCanvasRep *)self parentRep];
  v10 = [v9 containsPoint:v4 withPrecision:{x, y}];

  return v10;
}

- (BOOL)didPointHitSelectionEnd:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  v6 = [(CRLWPRep *)self selection];
  if (v6)
  {
    v7 = v6;
    v8 = [(CRLWPRep *)self selection];
    v9 = [v8 isInsertionPoint];

    if (v9)
    {
      LOBYTE(v6) = 0;
    }

    else
    {
      size = CGRectNull.size;
      origin = CGRectNull.origin;
      v20 = size;
      v18.origin = origin;
      v18.size = size;
      v11 = [(CRLCanvasRep *)self canvas];
      [v11 viewScale];
      v13 = v12;

      LODWORD(v11) = [(CRLWPRep *)self textIsVertical];
      v14 = [(CRLWPRep *)self selection];
      v15 = [(CRLWPRep *)self p_newSelectionPathForSelection:v14 transform:0 headPinRect:&origin tailPinRect:&v18];

      CGPathRelease(v15);
      v16 = 1.0 / v13;
      if (v11)
      {
        origin.y = origin.y - v16;
        v18.origin.y = CGRectGetMaxY(v18) - v16;
      }

      else
      {
        origin.x = origin.x - v16;
        v18.origin.x = CGRectGetMaxX(v18) - v16;
      }

      if (sub_10011FF8C(x, y, origin.x + -2.5, origin.y + -3.5, v20.width + 5.0, v20.height + 7.0) || (LODWORD(v6) = sub_10011FF8C(x, y, v18.origin.x + -2.5, v18.origin.y + -3.5, v18.size.width + 5.0, v18.size.height + 7.0), v6))
      {
        LOBYTE(v6) = 1;
      }
    }
  }

  return v6;
}

- (BOOL)isPointInSelectedArea:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  v6 = [(CRLWPRep *)self selection];

  if (!v6)
  {
    return 0;
  }

  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  v7 = [(CRLWPRep *)self columns];
  v8 = [v7 countByEnumeratingWithState:&v28 objects:v33 count:16];
  if (v8)
  {
    v9 = *v29;
    do
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v29 != v9)
        {
          objc_enumerationMutation(v7);
        }

        v11 = *(*(&v28 + 1) + 8 * i);
        v12 = [(CRLWPRep *)self selection];
        v13 = [v12 range];
        v15 = v14;
        v16 = [(CRLWPRep *)self selection];
        v17 = [v11 rectsForSelectionRange:v13 selectionType:v15 forParagraphMode:objc_msgSend(v16 includeRuby:"type") includePaginatedAttachments:{0, 0, 0}];

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

      v8 = [v7 countByEnumeratingWithState:&v28 objects:v33 count:16];
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

- (CGRect)rectForSelection:(id)a3 includeRuby:(BOOL)a4 includePaginatedAttachments:(BOOL)a5
{
  v5 = a5;
  v6 = a4;
  v8 = a3;
  v9 = [(CRLWPRep *)self columns];
  [CRLWPColumn boundsRectForSelection:v8 columnArray:v9 includeRuby:v6 includePaginatedAttachments:v5];
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

- (CGPath)newPathForSelection:(id)a3
{
  v4 = a3;
  x = CGRectZero.origin.x;
  y = CGRectZero.origin.y;
  width = CGRectZero.size.width;
  height = CGRectZero.size.height;
  if ([v4 isRange])
  {
    v36 = 0u;
    v37 = 0u;
    v34 = 0u;
    v35 = 0u;
    v9 = [(CRLWPRep *)self columns];
    v10 = [v9 countByEnumeratingWithState:&v34 objects:v39 count:16];
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
            objc_enumerationMutation(v9);
          }

          v13 = *(*(&v34 + 1) + 8 * v12);
          v30 = 0u;
          v31 = 0u;
          v32 = 0u;
          v33 = 0u;
          v14 = [v4 range];
          v16 = [v13 rectsForSelectionRange:v14 selectionType:v15 forParagraphMode:objc_msgSend(v4 includeRuby:"type") includePaginatedAttachments:{0, 0, 1}];
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
        v10 = [v9 countByEnumeratingWithState:&v34 objects:v39 count:16];
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

- (CGPath)p_newPathForSelection:(id)a3 withTransform:(CGAffineTransform *)a4 withInset:(double)a5
{
  v8 = a3;
  if ([v8 isRange])
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
          v14 = [v8 range];
          v16 = [v13 rectsForSelectionRange:v14 selectionType:v15 forParagraphMode:objc_msgSend(v8 includeRuby:"type") includePaginatedAttachments:{0, 0, 1}];
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
                  v42 = CGRectInset(v41, a5, a5);
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
                  CGPathAddRect(Mutable, a4, v44);
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

- (CGRect)caretRectForCharIndex:(unint64_t)a3 caretAffinity:(unint64_t)a4
{
  v5 = [[CRLWPSelection alloc] initWithType:0 range:a3 styleInsertionBehavior:0 caretAffinity:0, a4];
  [(CRLWPRep *)self p_caretRectForSelection:v5];
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

- (CGRect)caretRectForCharIndex:(unint64_t)a3 leadingEdge:(BOOL)a4 caretAffinity:(unint64_t)a5
{
  v9 = [CRLWPSelection alloc];
  v10 = [(CRLWPRep *)self storage];
  v11 = [v10 copyWithMarkedText];
  LOBYTE(v25) = a4;
  v12 = [(CRLWPSelection *)v9 initWithType:7 range:a3 styleInsertionBehavior:0 caretAffinity:0 smartFieldRange:a5 leadingEdge:0x7FFFFFFFFFFFFFFFLL storage:0, v25, v11];

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

- ($D12B6492C59FD4124ECBBA05678185BF)p_lineMetricsAtPoint:(SEL)a3 allowNotFound:(CGPoint)a4
{
  v5 = a5;
  y = a4.y;
  x = a4.x;
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

- ($D12B6492C59FD4124ECBBA05678185BF)lineMetricsAtCharIndex:(SEL)a3
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

- ($8162D66D923C6F9903B35BCF259B21FE)wordMetricsAtCharIndex:(SEL)a3
{
  *&retstr->var5 = xmmword_1014660F0;
  *&retstr->var6.b = unk_101466100;
  *&retstr->var6.d = xmmword_101466110;
  retstr->var6.ty = 0.0;
  retstr->var0.origin = xmmword_1014660B0;
  retstr->var0.size = unk_1014660C0;
  *&retstr->var1 = xmmword_1014660D0;
  *&retstr->var3 = unk_1014660E0;
  v7 = [(CRLWPRep *)self storage];
  v8 = [v7 wordAtCharIndex:a4 includePreviousWord:0];
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

- (CGRect)caretRectForSelection:(id)a3
{
  v4 = a3;
  if (v4)
  {
    [(CRLWPRep *)self p_caretRectForSelection:v4];
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

- (CGRect)p_caretRectForSelection:(id)a3
{
  v4 = a3;
  x = CGRectNull.origin.x;
  y = CGRectNull.origin.y;
  width = CGRectNull.size.width;
  height = CGRectNull.size.height;
  if ([v4 type] != 3 && objc_msgSend(v4, "type") != 5)
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
      v9 = [(CRLWPRep *)self columns];
      v10 = [v9 countByEnumeratingWithState:&v21 objects:v25 count:16];
      if (v10)
      {
        v11 = *v22;
        while (2)
        {
          for (i = 0; i != v10; i = i + 1)
          {
            if (*v22 != v11)
            {
              objc_enumerationMutation(v9);
            }

            [*(*(&v21 + 1) + 8 * i) caretRectForSelection:v4];
            if (v16 > 0.0 || v15 > 0.0)
            {
              x = v13;
              y = v14;
              width = v15;
              height = v16;
              goto LABEL_15;
            }
          }

          v10 = [v9 countByEnumeratingWithState:&v21 objects:v25 count:16];
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

- (CGRect)p_topicDragRectForSelection:(id)a3
{
  v4 = a3;
  x = CGRectNull.origin.x;
  y = CGRectNull.origin.y;
  width = CGRectNull.size.width;
  height = CGRectNull.size.height;
  if (!v4)
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
  v12 = [(CRLWPRep *)self columns];
  v13 = [v12 countByEnumeratingWithState:&v49 objects:v53 count:16];
  if (v13)
  {
    v14 = *v50;
    while (2)
    {
      for (i = 0; i != v13; i = i + 1)
      {
        if (*v50 != v14)
        {
          objc_enumerationMutation(v12);
        }

        v16 = *(*(&v49 + 1) + 8 * i);
        [v16 caretRectForSelection:v4];
        v19 = v18;
        v21 = v20;
        v22 = v17;
        v24 = v23;
        if (v23 > 0.0 || v17 > 0.0)
        {
          v25 = [v16 textIsVertical];
          if (v25)
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

          v34 = [v4 range];
          v48 = xmmword_101464828;
          v35 = [(CRLWPRep *)self storage];
          v36 = [v35 paragraphIndexAtCharIndex:v34 effectiveRange:&v48];

          v37 = [(CRLWPRep *)self storage];
          if (v36 == [v37 paragraphCount] && *(&v48 + 1))
          {
            v38 = v34 > v48;

            if (v38)
            {
              v39 = v19;
              v40 = v21;
              v41 = v22;
              v42 = v24;
              if (v25)
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
          if (v25)
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

      v13 = [v12 countByEnumeratingWithState:&v49 objects:v53 count:16];
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

- (CGRect)p_closestCaretRectForCharacterAtPoint:(CGPoint)a3
{
  x = CGRectNull.origin.x;
  y = CGRectNull.origin.y;
  width = CGRectNull.size.width;
  height = CGRectNull.size.height;
  [(CRLWPRep *)self pinToNaturalBounds:1 andLastLineFragment:a3.x, a3.y];
  v9 = v8;
  v11 = v10;
  v12 = [(CRLWPRep *)self layout];
  v13 = [CRLWPColumn charIndexFromPoint:1 allowPastBreak:1 allowNotFound:0 pastCenterGoesToNextChar:0 constrainToAscentAndDescent:0 isAtEndOfLine:0 leadingEdge:v9 inLayoutTarget:v11, v12];

  if (v13 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v35 = 0u;
    v36 = 0u;
    v33 = 0u;
    v34 = 0u;
    v14 = [(CRLWPRep *)self columns];
    v15 = [v14 countByEnumeratingWithState:&v33 objects:v37 count:16];
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
            objc_enumerationMutation(v14);
          }

          v19 = *(*(&v33 + 1) + 8 * i);
          v20 = [v19 range];
          if (v16 >= v20 && v16 - v20 < v21)
          {
            v15 = v19;
            goto LABEL_14;
          }
        }

        v15 = [v14 countByEnumeratingWithState:&v33 objects:v37 count:16];
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

- (CGRect)p_closestCaretRectForPoint:(CGPoint)a3 inSelection:(BOOL)a4 allowPastBreak:(BOOL)a5
{
  v5 = a5;
  v6 = a4;
  [(CRLWPRep *)self pinToNaturalBounds:1 andLastLineFragment:a3.x, a3.y];
  v9 = v8;
  v11 = v10;
  v29 = 0;
  v12 = [(CRLWPRep *)self layout];
  v13 = [CRLWPColumn charIndexFromPoint:v5 allowPastBreak:&v29 isAtEndOfLine:v12 inLayoutTarget:v9, v11];

  if (v6)
  {
    v14 = [(CRLWPRep *)self selection];
    v15 = [v14 isValid];

    if ((v15 & 1) == 0)
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

    v19 = [(CRLWPRep *)self selection];
    v20 = v13 < [v19 start];

    v21 = [(CRLWPRep *)self selection];
    v22 = v21;
    if (v20)
    {
      v23 = [v21 start];
LABEL_16:
      v13 = v23;

      goto LABEL_17;
    }

    v24 = v13 > [v21 end];

    if (v24)
    {
      v22 = [(CRLWPRep *)self selection];
      v23 = [v22 end];
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

- (id)cursorAtPoint:(CGPoint)a3 forKnob:(id)a4 withCursorPlatformObject:(id)a5
{
  y = a3.y;
  x = a3.x;
  v9 = a4;
  v10 = a5;
  if (v9)
  {
    v14.receiver = self;
    v14.super_class = CRLWPRep;
    v11 = [(CRLCanvasRep *)&v14 cursorAtPoint:v9 forKnob:v10 withCursorPlatformObject:x, y];
  }

  else
  {
    v11 = [(CRLWPRep *)self cursorForPoint:v10 withCursorPlatformObject:x, y];
  }

  v12 = v11;

  return v12;
}

- (id)cursorForPoint:(CGPoint)a3 withCursorPlatformObject:(id)a4
{
  y = a3.y;
  x = a3.x;
  v7 = [(CRLCanvasRep *)self canvas];
  v68 = [v7 canvasController];

  v8 = [(CRLWPRep *)self textIsVertical];
  v9 = [(CRLWPRep *)self p_hyperlinkAtPoint:x, y];
  v10 = v9;
  if (v8)
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
    [v68 convertUnscaledToBoundsPoint:?];
    v64 = v24;
    v65 = v23;
    if (!v10)
    {
      [v68 viewScale];
      v26 = sub_10011F340(v20, v21, v25);
      if (!v8)
      {
        v26 = v27;
      }

      if (v26 > 0.0)
      {
        [(CRLWPRep *)self setIbeamLength:?];
      }
    }

    v28 = [(CRLWPRep *)self layout];
    v29 = v28;
    if (v28)
    {
      [v28 transformInRoot];
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
        if (v8)
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
    v33 = [(CRLWPRep *)self layout];
    v34 = v33;
    if (v33)
    {
      [v33 transformInRoot];
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
    v49 = +[CRLCursor defaultCursor];
    goto LABEL_42;
  }

LABEL_39:
  [(CRLWPRep *)self ibeamLength];
  v57 = [UIPointerShape beamWithPreferredLength:v11 axis:?];
  v49 = [CRLCursor cursorWithShape:v57 activeScaledRect:v67, v66, width, height];
  [(CRLWPRep *)self ibeamLength];
  v59 = @"H";
  if (v11 == 2)
  {
    v59 = @"V";
  }

  v48 = [NSString stringWithFormat:@"%f%@%@", v58, v59, v47];
  [(CRLWPRep *)self setIbeamLength:20.0];
  [v49 setIdentifierSuffix:v48];

LABEL_42:
  if (v22)
  {
    [v49 setConstrainedAxes:v11];
  }

  return v49;
}

- (void)p_registerNotifications
{
  v5 = [(CRLCanvasRep *)self canvas];
  v3 = [v5 isCanvasInteractive];

  if (v3)
  {
    v6 = [(CRLWPRep *)self storage];
    v4 = +[NSNotificationCenter defaultCenter];
    [v4 addObserver:self selector:"p_selectionChangedNotification:" name:@"CRLTPEditorSelectionChanged" object:v6];
    [v4 addObserver:self selector:"p_markChangedNotification:" name:@"CRLWPEditorMarkChanged" object:v6];
    [v4 addObserver:self selector:"p_editingDidEndNotification:" name:@"CRLWPEditorEditingDidEnd" object:v6];
  }
}

- (void)p_unregisterNotifications
{
  v5 = [(CRLCanvasRep *)self canvas];
  v3 = [v5 isCanvasInteractive];

  if (v3)
  {
    v6 = [(CRLWPRep *)self storage];
    v4 = +[NSNotificationCenter defaultCenter];
    [v4 removeObserver:self name:@"CRLTPEditorSelectionChanged" object:v6];
    [v4 removeObserver:self name:@"CRLWPEditorMarkChanged" object:v6];
    [v4 removeObserver:self name:@"CRLWPEditorEditingDidEnd" object:v6];
  }
}

- (id)newTrackerForKnob:(id)a3
{
  v4 = a3;
  if (!v4)
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

  v8 = [[CRLWPTextKnobTracker alloc] initWithRep:self knob:v4];

  return v8;
}

- (id)knobPositioner
{
  v3 = objc_opt_class();
  v4 = [(CRLWPRep *)self layout];
  v5 = sub_100014370(v3, v4);

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

- (CGPoint)knobCenterForSelection:(id)a3 knob:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(CRLWPRep *)self knobPositioner];
  v9 = v8;
  if (v8)
  {
    [v8 knobCenterForSelection:v6 knob:v7];
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

- (double)knobOffsetForKnob:(id)a3 paragraphMode:(BOOL)a4
{
  v6 = a3;
  v7 = [v6 renderable];
  [v7 bounds];
  Height = CGRectGetHeight(v16);

  v9 = [(CRLCanvasRep *)self interactiveCanvasController];
  [v9 viewScale];
  v11 = v10;

  v12 = [v6 tag];
  v13 = Height * 0.5;
  v14 = 0.0;
  if (v12 == 11)
  {
    if (!a4)
    {
      v14 = 0.0 - (v13 / v11 + -1.0);
    }
  }

  else if (!a4)
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

- (void)processChangedProperty:(unint64_t)a3
{
  v5.receiver = self;
  v5.super_class = CRLWPRep;
  [(CRLCanvasRep *)&v5 processChangedProperty:?];
  if (a3 != 7 && a3 != 29)
  {
    if (a3 != 30)
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

- (id)p_hyperlinkAtPoint:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  v6 = objc_opt_class();
  v7 = [(CRLWPRep *)self smartFieldAtPoint:x, y];
  v8 = sub_100014370(v6, v7);

  return v8;
}

- (void)performBlockOnTextLayers:(id)a3
{
  v4 = a3;
  v5 = 0;
  textLayers = self->_textLayers;
  v9 = v4;
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
  v3 = [(CRLCanvasRep *)self canvas];
  v4 = [v3 isCanvasInteractive];

  if (v4)
  {
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_10046A9B0;
    v8[3] = &unk_101864FE8;
    v8[4] = self;
    [(CRLWPRep *)self performBlockOnTextLayers:v8];
    v5 = objc_opt_class();
    v6 = [(CRLCanvasRep *)self parentRep];
    v7 = sub_100014370(v5, v6);

    [v7 invalidateEffectLayersForChildren];
  }
}

- (void)setNeedsDisplayInRange:(_NSRange)a3
{
  v4 = [CRLWPSelection selectionWithRange:a3.location, a3.length];
  [CRLWPRep rectForSelection:"rectForSelection:includeRuby:includePaginatedAttachments:" includeRuby:? includePaginatedAttachments:?];
  [(CRLWPRep *)self setNeedsDisplayInRect:?];
}

- (void)setNeedsDisplayInRect:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  if (!CGRectIsEmpty(a3))
  {
    v8 = [(CRLCanvasRep *)self canvas];
    v9 = [v8 isCanvasInteractive];

    if (v9)
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
      v15 = [(CRLCanvasRep *)self parentRep];
      v16 = sub_100014370(v14, v15);

      [v16 invalidateEffectLayersForChildren];
    }
  }
}

- (id)colorBehindLayer:(id)a3
{
  v4 = a3;
  v5 = [(CRLWPRep *)self backgroundColor];
  if (!v5)
  {
    v6 = objc_opt_class();
    v7 = [(CRLCanvasRep *)self parentRep];
    v8 = sub_100014370(v6, v7);

    v5 = [v8 colorBehindLayer:v4];
  }

  return v5;
}

- (void)drawInLayerContext:(CGContext *)a3
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

- (void)p_drawInContext:(CGContext *)a3 limitSelection:(id)a4 suppressInvisibles:(BOOL)a5
{
  v9 = a4;
  CGContextSaveGState(a3);
  LOBYTE(v8) = a5;
  [(CRLWPRep *)self p_drawTextInLayer:0 context:a3 limitSelection:v9 rubyGlyphRange:0x7FFFFFFFFFFFFFFFLL renderMode:0 suppressInvisibles:3, v8];
  CGContextRestoreGState(a3);
}

- (void)drawRubyInContext:(CGContext *)a3 rubyFieldStart:(unint64_t)a4 rubyGlyphRange:(_NSRange)a5
{
  length = a5.length;
  location = a5.location;
  v10 = [(CRLWPRep *)self storage];
  v11 = [v10 smartFieldAtCharIndex:a4 attributeKind:7 effectiveRange:&v15];

  if (v16)
  {
    CGContextSaveGState(a3);
    v12 = [CRLWPSelection alloc];
    v13 = [(CRLWPSelection *)v12 initWithRange:v15, v16];
    LOBYTE(v14) = 0;
    [(CRLWPRep *)self p_drawTextInLayer:0 context:a3 limitSelection:v13 rubyGlyphRange:location renderMode:length suppressInvisibles:3, v14];
    CGContextRestoreGState(a3);
  }
}

- (id)overlayRenderables
{
  v53.receiver = self;
  v53.super_class = CRLWPRep;
  v3 = [(CRLCanvasRep *)&v53 overlayRenderables];
  v4 = [v3 mutableCopy];

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
    v9 = [(CRLCanvasRep *)self interactiveCanvasController];
    v10 = [(CRLHighlightController *)self->_caretPulseController layer];
    [v10 setDelegate:v9];

    v11 = [(CRLHighlightController *)self->_caretPulseController layer];
    v12 = [CRLCanvasRenderable renderableFromLayer:v11];
    [v4 addObject:v12];
  }

  v13 = [(CRLCanvasRep *)self interactiveCanvasController];
  v14 = [v13 canvas];
  [v14 contentsScale];
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

  v17 = [(CRLWPRep *)self dragAndDropHelper];
  [v17 dragAndDropNaturalPoint];
  v18 = sub_1001228B4();

  if (v18)
  {
    WeakRetained = 0;
    goto LABEL_28;
  }

  v20 = [(CRLWPRep *)self storage];
  v21 = [(CRLWPRep *)self storageForDragDropOperation];

  if (v20 == v21)
  {
    v22 = [(CRLWPRep *)self dragAndDropHelper];
    [v22 dragAndDropNaturalPoint];
    [(CRLWPRep *)self selectionForDragAndDropNaturalPoint:?];
  }

  else
  {
    v22 = [(CRLWPRep *)self storage];
    v23 = [v22 range];
    [CRLWPSelection selectionWithRange:v23, v24];
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

      v29 = [WeakRetained range];
      v31 = v30;
      v32 = [(CRLWPRep *)self columns];
      v33 = [CRLWPColumn pathForHighlightWithRange:v29 columnArray:v31 pathStyle:v32, 0];

      v34 = [v33 pathByNormalizingClosedPathToRemoveSelfIntersections];

      [(CRLWPRep *)self transformToConvertNaturalToScaledRoot];
      [v34 transformUsingAffineTransform:&v52];
      -[CAShapeLayer setPath:](self->_dragAndDropCaretLayer, "setPath:", [v34 CGPath]);
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
      v34 = [CRLCanvasRenderable renderableFromLayer:self->_dragAndDropCaretLayer];
      [v4 addObject:v34];
    }
  }

LABEL_28:
  v40 = [(CRLWPRep *)self floatingCaretLayer];

  if (v40)
  {
    v41 = [(CRLWPRep *)self floatingCaretLayer];
    v42 = [CRLCanvasRenderable renderableFromLayer:v41];
    [v4 addObject:v42];
  }

  pulseArrayController = self->_pulseArrayController;
  if (pulseArrayController)
  {
    v44 = [(CRLWPHighlightArrayController *)pulseArrayController layers];
    if ([v44 count])
    {
      v45 = [(CRLCanvasRep *)self interactiveCanvasController];
      [v44 makeObjectsPerformSelector:"setDelegate:" withObject:v45];

      v46 = [CRLCanvasRenderable renderablesFromLayers:v44];
      [v4 addObjectsFromArray:v46];
    }
  }

  highlightArrayController = self->_highlightArrayController;
  if (highlightArrayController)
  {
    v48 = [(CRLWPHighlightArrayController *)highlightArrayController layers];
    if ([v48 count])
    {
      v49 = [(CRLCanvasRep *)self interactiveCanvasController];
      [v48 makeObjectsPerformSelector:"setDelegate:" withObject:v49];

      v50 = [CRLCanvasRenderable renderablesFromLayers:v48];
      [v4 addObjectsFromArray:v50];
    }
  }

  return v4;
}

- (void)addAdditionalChildLayersToArray:(id)a3
{
  v13 = a3;
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
    [v13 addObject:?];
  }

  if (self->_selectionHighlightLayer)
  {
    [v13 addObject:?];
  }

  if (self->_smartFieldHighlightLayer)
  {
    [v13 addObject:?];
  }

  if (self->_secondaryHighlightLayer)
  {
    [v13 addObject:?];
  }

  v8 = [(CRLWPRep *)self textLayer];

  if (!v8)
  {
    [(CRLWPRep *)self p_createLayer:1];
  }

  v9 = [(CRLWPRep *)self textLayer];

  if (v9)
  {
    v10 = [(CRLWPRep *)self textLayer];
    [v13 addObject:v10];
  }

  if (self->_selectionParagraphBorderLayer)
  {
    [v13 addObject:?];
  }

  [v13 addObject:self->_caretLayer];
  if ([(CRLWPRep *)self shouldShowCollaboratorCursorHighlight]&& ![(CRLWPRep *)self shouldAddCollaboratorLayerToOverlays])
  {
    v11 = [(CRLWPRep *)self collaboratorCursorRenderable];
    v12 = [v11 layer];

    if (v12)
    {
      [v13 addObject:v12];
    }
  }
}

- (BOOL)shouldShowEditMenu
{
  v3 = [(CRLCanvasRep *)self canvas];
  if (![v3 isCanvasInteractive])
  {
    goto LABEL_12;
  }

  v4 = [(CRLWPRep *)self isBeingEdited];

  if (v4)
  {
    v3 = [(CRLWPRep *)self textEditor];
    v5 = [(CRLCanvasRep *)self interactiveCanvasController];
    v6 = [v5 textInputResponder];
    if ([v6 scribbleInProgress])
    {
      LOBYTE(v7) = 0;
    }

    else
    {
      v8 = [(CRLCanvasRep *)self interactiveCanvasController];
      v9 = [v8 textInputResponder];
      v7 = [v9 sceneAnimationInProgress] ^ 1;
    }

    v10 = [v3 textSelectionDelegate];
    v11 = [v10 selectedTextRange];
    v12 = [v11 isInsertionPointRange];

    if (!v12)
    {
      goto LABEL_13;
    }

    if ([v3 editMenuIsVisible])
    {
      [v3 hideEditMenu];
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
    v3 = [(CRLWPRep *)self textEditor];
    v4 = [v3 textSelectionManager];
    v5 = [v4 displayingSelectionView];

    if (!v5)
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
    v6 = [(CRLCanvasRep *)self interactiveCanvasController];
    if ([v6 currentlyScrolling])
    {

      goto LABEL_10;
    }

    v7 = [(CRLWPRep *)self layout];
    v8 = [v7 layoutIsValid];

    if (!v8)
    {
      return;
    }

    v9 = [(CRLWPRep *)self layout];
    v10 = [v9 columns];

    v11 = [v10 firstObject];
    v12 = [v10 lastObject];
    v13 = v12;
    if (v11 && v12)
    {
      v14 = [v11 range];
      v16 = v15;
      v33.location = [v13 range];
      v33.length = v17;
      v31.location = v14;
      v31.length = v16;
      v18 = NSUnionRange(v31, v33);
      v19 = [(CRLWPRep *)self selection];
      v20 = [v19 range];
      range1a = v21;
      v22 = v20;

      v23 = [(CRLWPRep *)self selection];
      v24 = [v23 isInsertionPoint];

      if (v24)
      {
        v25 = v22 - v18.location < v18.length && v22 >= v18.location;
        if (v25 || v18.location + v18.length == v22)
        {
LABEL_24:
          if ([(CRLWPRep *)self shouldShowEditMenu])
          {
            v26 = [(CRLCanvasRep *)self interactiveCanvasController];
            v29[0] = _NSConcreteStackBlock;
            v29[1] = 3221225472;
            v29[2] = sub_10046BF10;
            v29[3] = &unk_10183F960;
            v29[4] = self;
            [v26 performBlockOnMainThreadAfterLayoutIfNecessary:v29];

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
        v4 = [(CRLWPRep *)self layout];
        v5 = [v4 isInstructional];

        if ((v5 & 1) == 0)
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

  v6 = [(CRLWPRep *)self selection];
  v7 = [v6 isRange];

  if (v7)
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
  v11 = [(CRLCanvasRep *)self canvas];
  [v11 viewScale];
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
  v16 = [(CRLCanvasRep *)self canvas];
  [v16 viewScale];
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
  v19 = [(CRLWPRep *)self layout];
  v20 = sub_100014370(v18, v19);

  LODWORD(v19) = [(CRLWPRep *)self hasOverflowed];
  if (v19 != [v20 isOverflowing])
  {
    -[CRLWPRep setHasOverflowed:](self, "setHasOverflowed:", [v20 isOverflowing]);
    v21 = [(CRLCanvasRep *)self canvas];
    v22 = [v21 canvasController];
    v23 = [(CRLCanvasRep *)self parentRep];
    [v22 invalidateOverlayLayersForRep:v23];
  }
}

- (CGRect)p_clipRect:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v8 = [(CRLWPRep *)self columns];
  v9 = [v8 countByEnumeratingWithState:&v20 objects:v24 count:16];
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
          objc_enumerationMutation(v8);
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
      v9 = [v8 countByEnumeratingWithState:&v20 objects:v24 count:16];
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

- (void)didUpdateRenderable:(id)a3
{
  v4 = a3;
  v40.receiver = self;
  v40.super_class = CRLWPRep;
  [(CRLCanvasRep *)&v40 didUpdateRenderable:v4];
  v5 = [v4 layer];
  if (!-[CRLCanvasRep isBeingRotated](self, "isBeingRotated") || (-[CRLWPRep layout](self, "layout"), v6 = objc_claimAutoreleasedReturnValue(), v7 = [v6 wantsNormalLayoutDuringDynamicRotation], v6, v7))
  {
    [(CRLWPRep *)self p_clipRect:CGRectNull.origin.x, CGRectNull.origin.y, CGRectNull.size.width, CGRectNull.size.height];
    v9 = v8;
    v11 = v10;
    v13 = v12;
    v15 = v14;
    v16 = [(CRLWPRep *)self layout];
    v17 = v16;
    if (v16)
    {
      [v16 transformInRoot];
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

    v18 = [(CRLWPRep *)self layout];
    [v18 frameInRoot];

    v19 = [(CRLCanvasRep *)self interactiveCanvasController];
    v41 = SyncEvent.FetchedRecordZoneChanges.Deletion.init(recordID:recordType:)(v19, v20);
    [v19 convertUnscaledToBoundsRect:v41.recordType._object];
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
      v34 = v5;
      [(CRLWPRep *)self performBlockOnTextLayers:v33];
    }
  }

  if ([v5 edgeAntialiasingMask])
  {
    [v5 setEdgeAntialiasingMask:0];
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
  v12 = [(CRLWPRep *)self layout];
  v13 = sub_100014370(v11, v12);

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
  v3 = [(CRLCanvasRep *)self interactiveCanvasController];
  v4 = [v3 canvas];
  [v4 contentsScale];
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

- (CGRect)newTextLayerUnscaledBounds:(CGRect)a3 forNewTextBounds:(CGRect)a4
{
  height = a4.size.height;
  width = a4.size.width;
  y = a4.origin.y;
  x = a4.origin.x;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (void)beginEditing
{
  v3 = [(CRLCanvasRep *)self interactiveCanvasController];
  v4 = [v3 selectionModelTranslator];
  v5 = [(CRLWPRep *)self storage];
  v6 = [_TtC8Freeform12CRLTextRange textRangeForEndOf:v5];
  v7 = [v6 nsRange];
  v9 = v8;
  v10 = [(CRLWPRep *)self storage];
  v12 = [v4 selectionPathForRange:v7 onStorage:{v9, v10}];

  v11 = [(CRLCanvasRep *)self interactiveCanvasController];
  [v11 setSelectionPath:v12 withSelectionFlags:4];

  [(CRLWPRep *)self p_updateCaretLayerColor];
}

- (void)didBeginEditingWithTextEditor:(id)a3
{
  v4 = objc_opt_class();
  v5 = [(CRLCanvasRep *)self parentRep];
  v13 = sub_100014370(v4, v5);

  v6 = v13;
  if (v13)
  {
    v7 = [v13 shapeLayout];
    v8 = [v7 fill];
    v9 = [v8 isOpaque];

    v6 = v13;
    if ((v9 & 1) == 0)
    {
      v10 = [v13 shadow];
      v11 = v10;
      if (v10)
      {
        v12 = [v10 showForEditingText] ^ 1;
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

- (BOOL)canEditWithEditor:(id)a3
{
  v4 = a3;
  v5 = objc_opt_class();
  v6 = sub_100014370(v5, v4);
  v7 = v6;
  if (v6)
  {
    v8 = [v6 storage];
    v9 = [(CRLWPRep *)self storage];
    if (v8 == v9)
    {
      v11 = [(CRLWPRep *)self layout];
      if ([v11 isInTopLevelContainerForEditing])
      {
        v12 = [(CRLCanvasRep *)self parentRep];
        v10 = [v12 isLocked] ^ 1;
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

- (id)smartFieldAtPoint:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  v6 = [(CRLWPRep *)self layout];
  if (![v6 layoutIsValid])
  {
    v10 = 0;
    goto LABEL_5;
  }

  v7 = [(CRLWPRep *)self storage];
  v8 = [v7 hasSmartFields];

  if (v8)
  {
    v6 = [(CRLWPRep *)self layout];
    v9 = [v6 columns];
    v10 = [CRLWPColumn smartFieldWithAttributeKind:6 inColumnArray:v9 atPoint:x, y];

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
    v5 = [(CRLWPRep *)self columns];
    v6 = [CRLWPColumn pathForHighlightWithRange:location columnArray:length pathStyle:v5, self->_secondaryHighlightPathStyle];

    [(CRLCanvasRep *)self transformToConvertNaturalToLayerRelative];
    [v6 transformUsingAffineTransform:&v7];
    -[CAShapeLayer setPath:](self->_secondaryHighlightLayer, "setPath:", [v6 CGPath]);
  }
}

- (void)setSecondaryHighlightRange:(_NSRange)a3 color:(CGColor *)a4 pathStyle:(int)a5
{
  p_secondaryHighlightRange = &self->_secondaryHighlightRange;
  if (a3.location != self->_secondaryHighlightRange.location || a3.length != self->_secondaryHighlightRange.length)
  {
    length = a3.length;
    if (a3.length)
    {
      location = a3.location;
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

      [(CAShapeLayer *)secondaryHighlightLayer setFillColor:a4];
      p_secondaryHighlightRange->location = location;
      p_secondaryHighlightRange->length = length;
      self->_secondaryHighlightPathStyle = a5;
    }

    else
    {
      p_secondaryHighlightRange->location = 0;
      self->_secondaryHighlightRange.length = 0;
      [(CAShapeLayer *)self->_secondaryHighlightLayer setDelegate:0, 0, a4, *&a5];
      [(CAShapeLayer *)self->_secondaryHighlightLayer removeFromSuperlayer];
      v15 = self->_secondaryHighlightLayer;
      self->_secondaryHighlightLayer = 0;
    }

    v16 = [(CRLWPRep *)self layout];
    [v16 invalidate];
  }
}

- (void)setHighlightedHyperlinkField:(id)a3
{
  v4 = a3;
  v9 = v4;
  if (v4)
  {
    v5 = [v4 range];
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  v8 = [CRLColor colorWithWhite:0.300000012 alpha:0.469999999];
  -[CRLWPRep setSecondaryHighlightRange:color:pathStyle:](self, "setSecondaryHighlightRange:color:pathStyle:", v5, v7, [v8 CGColor], 2);
}

- (id)closestColumnForPoint:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  v5 = [(CRLWPRep *)self layout];
  v6 = [v5 columns];
  v7 = [CRLWPColumn closestColumnInColumnsArray:v6 forPoint:1 ignoreEmptyColumns:1 ignoreDrawableOnlyColumns:x, y];

  return v7;
}

- (id)columnForCharIndex:(unint64_t)a3
{
  v5 = [(CRLWPRep *)self storage];
  v6 = [v5 range];
  v8 = v7;

  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  v9 = [(CRLWPRep *)self layout];
  v10 = [v9 columns];

  v11 = [v10 countByEnumeratingWithState:&v22 objects:v26 count:16];
  if (v11)
  {
    v12 = *v23;
    v13 = &v6[v8];
    while (2)
    {
      for (i = 0; i != v11; i = i + 1)
      {
        if (*v23 != v12)
        {
          objc_enumerationMutation(v10);
        }

        v15 = *(*(&v22 + 1) + 8 * i);
        v16 = [v15 range];
        if ((a3 < v16 || a3 - v16 >= v17) && (&v16[v17] != a3 || v13 != a3))
        {
          continue;
        }

        v20 = v15;
        goto LABEL_20;
      }

      v11 = [v10 countByEnumeratingWithState:&v22 objects:v26 count:16];
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
  v3 = [(CRLCanvasRep *)self canvas];
  v4 = [v3 isCanvasInteractive];

  if (!v4)
  {
    return 0;
  }

  v5 = objc_opt_class();
  v6 = [(CRLCanvasRep *)self interactiveCanvasController];
  v7 = [v6 editorController];
  v8 = [v7 textInputEditor];
  v9 = sub_100014370(v5, v8);

  if (v9)
  {
    v10 = [v9 storage];
    v11 = [(CRLWPRep *)self storage];
    v12 = v10 == v11;
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

  v4 = [(CRLWPRep *)self dropSelection];
  v3 = [v4 isValid];

  return v3;
}

- (CGSize)hitTestingSlop
{
  v2 = [(CRLCanvasRep *)self interactiveCanvasController];
  [v2 convertBoundsToUnscaledSize:{20.0, 2.0}];
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
    v4 = [(CRLCanvasRep *)self interactiveCanvasController];
    v5 = [v4 editorController];
    v6 = [v5 textInputEditor];
    v7 = sub_100014370(v3, v6);
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

- (void)gesturesDidEnd:(id)a3
{
  v4 = [a3 userInfo];
  v5 = [v4 objectForKeyedSubscript:@"CRLTextGesturesTerminated"];
  v12 = sub_1003035DC(v5, 1, v6, v7, v8, v9, v10, v11, &OBJC_PROTOCOL___CRLGesture);

  if ([v12 inputType])
  {
    [(CRLWPRep *)self refreshEditMenu];
  }
}

- (void)p_addDropAnimationToFloatingCursorWithEndingRep:(id)a3
{
  v4 = a3;
  v5 = [(CRLWPRep *)self floatingCaretLayer];
  [v5 position];
  v7 = v6;
  v9 = v8;

  v10 = [(CRLWPRep *)self selection];
  v11 = [v10 start];
  v12 = [(CRLWPRep *)self selection];
  [v4 caretRectForCharIndex:v11 caretAffinity:{objc_msgSend(v12, "caretAffinity")}];
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
    [v4 convertNaturalRectToUnscaledCanvas:{v14, v16, v18, v20}];
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
    v37 = [NSValue valueWithCGPoint:MidX, MidY];
    v42[1] = v37;
    v38 = [NSArray arrayWithObjects:v42 count:2];
    [v35 setValues:v38];

    [v35 setRemovedOnCompletion:0];
    [v35 setDuration:0.25];
    v39 = [(CRLWPRep *)self floatingCaretLayer];
    [v39 addAnimation:v35 forKey:@"dropAnimation"];

    v40 = [(CRLWPRep *)self floatingCaretLayer];
    [v40 setPosition:{MidX, MidY}];

    +[CATransaction commit];
  }
}

- (BOOL)ghostCaretAppearance
{
  v2 = [(CRLWPRep *)self overrideCaretColor];
  v3 = v2 != 0;

  return v3;
}

- (void)setGhostCaretAppearance:(BOOL)a3
{
  if (a3)
  {
    v4 = [(CRLWPRepHelper *)self->_repHelper colorForGhostCaret];
    [(CRLWPRep *)self setOverrideCaretColor:v4];
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

- (void)beginFloatingCursorAtPoint:(CGPoint)a3 animate:(BOOL)a4
{
  v4 = a4;
  y = a3.y;
  x = a3.x;
  v8 = [CRLColor colorWithRed:0.26 green:0.42 blue:0.95 alpha:1.0];
  v9 = [v8 CGColor];

  v10 = [(CRLWPRep *)self p_caretLayerWithZPosition:1.0];
  [(CRLWPRep *)self setFloatingCaretLayer:v10];

  v11 = [(CRLWPRep *)self floatingCaretLayer];
  [v11 setBackgroundColor:v9];

  v12 = [(CRLWPRep *)self floatingCaretLayer];
  [(CRLWPRep *)self p_positionAndSizeFloatingCaret:v12 atPoint:x, y];

  repHelper = self->_repHelper;
  v14 = [(CRLWPRep *)self floatingCaretLayer];
  [(CRLWPRepHelper *)repHelper cornerRadiusForFloatingCaret:v14];
  v16 = v15;
  v17 = [(CRLWPRep *)self floatingCaretLayer];
  [v17 setCornerRadius:v16];

  [(CRLWPRep *)self updateCaretColorForFloatingCursorInFlight];
  v18 = [(CRLCanvasRep *)self interactiveCanvasController];
  [v18 invalidateOverlayLayersForRep:self];

  if (v4)
  {

    [(CRLWPRep *)self p_addLiftAnimationToFloatingCursor];
  }
}

- (void)updateFloatingCursorAtPoint:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  v6 = [(CRLWPRep *)self floatingCaretLayer];
  [(CRLWPRep *)self p_positionAndSizeFloatingCaret:x atPoint:y];
}

- (void)endFloatingCursorWithRepForAnimation:(id)a3
{
  v8 = a3;
  v4 = [(CRLWPRep *)self floatingCaretLayer];

  if (v4)
  {
    [(CRLWPRep *)self updateCaretColorForFinishedFloatingCursor];
    if (v8 && (-[CRLWPRep selection](self, "selection"), v5 = objc_claimAutoreleasedReturnValue(), v6 = [v5 isInsertionPoint], v5, v6))
    {
      [(CRLWPRep *)self p_addDropAnimationToFloatingCursorWithEndingRep:v8];
    }

    else
    {
      v7 = [(CRLWPRep *)self floatingCaretLayer];
      [v7 removeFromSuperlayer];

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
  v12 = [(CRLWPRep *)self layout];
  v13 = v12;
  if (v12)
  {
    [v12 transformInRoot];
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

  v15 = [(CRLCanvasRep *)self canvas];
  [v15 viewScale];
  [(CRLHighlightController *)self->_caretPulseController setViewScale:?];

  [(CRLPulseAnimationController *)self->_caretPulseController setDuration:0.05];
  [(CRLPulseAnimationController *)self->_caretPulseController setPulseOffset:4.0];
  v16 = self->_caretPulseController;
  v17 = [(CRLCanvasRep *)self canvas];
  [v17 contentsScale];
  [(CRLHighlightController *)v16 createLayerWithZOrder:8.0 contentsScaleForLayers:v18];

  [(CRLHighlightController *)self->_caretPulseController buildLayersForPath:Mutable withImage:v9];
  [(CRLPulseAnimationController *)self->_caretPulseController startAnimating];
  CGPathRelease(Mutable);
  v19 = [(CRLCanvasRep *)self interactiveCanvasController];
  [v19 canvasInvalidatedForRep:self];
}

- (BOOL)containsStartOfSelection:(id)a3
{
  v4 = a3;
  if ([v4 isInsertionPoint])
  {
    v5 = [v4 start];
    v6 = [(CRLWPRep *)self range];
    if (v5 == v6)
    {
      v8 = [v4 caretAffinity] == 0;
      goto LABEL_20;
    }

    v13 = &v6[v7];
    if (v6 < v5 && v5 < v13 || v5 == v13 && ([v4 caretAffinity] == 1 || (-[CRLWPRep storage](self, "storage"), v14 = objc_claimAutoreleasedReturnValue(), v15 = objc_msgSend(v14, "length"), v14, v5 == v15)))
    {
      v8 = 1;
      goto LABEL_20;
    }

    if (v13 < v5)
    {
      v8 = [(CRLWPRep *)self isOverflowing];
      goto LABEL_20;
    }

LABEL_19:
    v8 = 0;
    goto LABEL_20;
  }

  if (![v4 isRange])
  {
    goto LABEL_19;
  }

  v9 = [v4 start];
  v10 = [(CRLWPRep *)self range];
  v8 = v9 >= v10 && v9 - v10 < v11;
LABEL_20:

  return v8;
}

- (BOOL)p_doesRep:(id)a3 containCharIndex:(unint64_t)a4 isStart:(BOOL)a5
{
  v5 = a5;
  v7 = [a3 range];
  if (v5 && v7 <= a4)
  {
    return v7 + v8 > a4;
  }

  v10 = v7 + v8 >= a4;
  if (v7 >= a4)
  {
    v10 = 0;
  }

  return !v5 && v10;
}

- (id)repForCharIndex:(unint64_t)a3 isStart:(BOOL)a4
{
  v4 = a4;
  if ([(CRLWPRep *)self p_doesRep:self containCharIndex:a3 isStart:a4])
  {
    v7 = self;
  }

  else
  {
    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    v8 = [(CRLWPRep *)self siblings];
    v9 = [v8 countByEnumeratingWithState:&v14 objects:v18 count:16];
    if (v9)
    {
      v10 = *v15;
      while (2)
      {
        for (i = 0; i != v9; i = i + 1)
        {
          if (*v15 != v10)
          {
            objc_enumerationMutation(v8);
          }

          v12 = *(*(&v14 + 1) + 8 * i);
          if ([(CRLWPRep *)self p_doesRep:v12 containCharIndex:a3 isStart:v4])
          {
            v7 = v12;

            goto LABEL_13;
          }
        }

        v9 = [v8 countByEnumeratingWithState:&v14 objects:v18 count:16];
        if (v9)
        {
          continue;
        }

        break;
      }
    }

    v7 = 0;
  }

LABEL_13:

  return v7;
}

- (id)siblings
{
  v3 = +[NSMutableSet set];
  v4 = [(CRLWPRep *)self storage];
  v5 = [v4 wpKind];

  if (!v5)
  {
    v20 = 0u;
    v21 = 0u;
    v18 = 0u;
    v19 = 0u;
    v6 = [(CRLCanvasRep *)self parentRep];
    v7 = [v6 childReps];

    v8 = [v7 countByEnumeratingWithState:&v18 objects:v22 count:16];
    if (v8)
    {
      v9 = *v19;
      do
      {
        for (i = 0; i != v8; i = i + 1)
        {
          if (*v19 != v9)
          {
            objc_enumerationMutation(v7);
          }

          v11 = *(*(&v18 + 1) + 8 * i);
          if (v11 != self)
          {
            v12 = objc_opt_class();
            v13 = sub_100014370(v12, v11);
            v14 = [v13 storage];
            v15 = [(CRLWPRep *)self storage];
            v16 = v14 == v15;

            if (v16)
            {
              [v3 addObject:v13];
            }
          }
        }

        v8 = [v7 countByEnumeratingWithState:&v18 objects:v22 count:16];
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
    v3 = 0;
  }

  else
  {
    v5.receiver = self;
    v5.super_class = CRLWPRep;
    v3 = [(CRLCanvasRep *)&v5 repForDragging];
  }

  return v3;
}

- (BOOL)shouldPreventMarqueeInitiationAtPoint:(CGPoint)a3 withTouchType:(int64_t)a4
{
  y = a3.y;
  x = a3.x;
  v8 = [(CRLCanvasRep *)self interactiveCanvasController];
  v9 = [v8 layerHost];
  v10 = [v9 asiOSCVC];
  v11 = [v10 isCurrentlyInQuickSelectMode];

  if (v11)
  {
    v15.receiver = self;
    v15.super_class = CRLWPRep;
    return [(CRLCanvasRep *)&v15 shouldPreventMarqueeInitiationAtPoint:a4 withTouchType:x, y];
  }

  else
  {
    v13 = [(CRLWPRep *)self storage];
    if ([v13 wpKind])
    {
      v12 = [(CRLWPRep *)self isBeingEdited];
    }

    else
    {
      v12 = 1;
    }
  }

  return v12;
}

- (id)hyperlinkContainerRep
{
  v3 = [(CRLCanvasRep *)self parentRep];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v7.receiver = self;
    v7.super_class = CRLWPRep;
    v5 = [(CRLCanvasRep *)&v7 repForSelecting];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (BOOL)wantsContextMenuWhenEditingDisabledAtPoint:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  v6 = objc_opt_class();
  v7 = [(CRLCanvasRep *)self parentRep];
  v8 = sub_100014370(v6, v7);

  LOBYTE(v7) = [v8 wantsContextMenuWhenEditingDisabledAtPoint:{x, y}];
  return v7;
}

- (CRLWPLayoutTarget)layout
{
  v11.receiver = self;
  v11.super_class = CRLWPRep;
  v2 = [(CRLCanvasRep *)&v11 layout];
  v3 = objc_opt_class();
  v9 = sub_100303920(v2, v3, 1, v4, v5, v6, v7, v8, &OBJC_PROTOCOL___CRLWPLayoutTarget);

  return v9;
}

- (_TtC8Freeform12CRLWPStorage)storage
{
  v3 = objc_opt_class();
  v4 = [(CRLWPRep *)self layout];
  v5 = sub_100014370(v3, v4);

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
  v2 = [(CRLWPRep *)self layout];
  v3 = [v2 columns];

  return v3;
}

- (CRLWPSelection)selection
{
  v2 = [(CRLWPRep *)self textEditor];
  v3 = v2;
  if (v2)
  {
    v4 = [v2 selection];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)addKnobsToArray:(id)a3
{
  v25 = a3;
  v4 = [(CRLWPRep *)self layout];
  v5 = [v4 layoutIsValid];

  if (v5 && [(CRLWPRep *)self shouldCreateTextKnobs])
  {
    v24 = [(CRLWPRep *)self textEditor];
    v6 = [v24 wantsParagraphMode];
    v7 = [v24 knobTracking];
    v23 = [(CRLWPRep *)self selection];
    if ([v23 headCharIndex] == 0x7FFFFFFFFFFFFFFFLL)
    {
      v26 = [v23 start];
    }

    else
    {
      v26 = [v23 headCharIndex];
    }

    v8 = [v23 tailCharIndex];
    if (v8 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v8 = [v23 end];
      if (v8)
      {
        v9 = [(CRLWPRep *)self storage];
        v8 = sub_10027EB4C(v8, v9);
      }
    }

    v29 = 0u;
    v30 = 0u;
    v27 = 0u;
    v28 = 0u;
    v10 = [(CRLWPRep *)self columns];
    v11 = [v10 countByEnumeratingWithState:&v27 objects:v31 count:16];
    if (v11)
    {
      v12 = *v28;
      v13 = (v24 != 0) & v6 & v7;
      v14 = v10;
      do
      {
        for (i = 0; i != v11; i = i + 1)
        {
          if (*v28 != v12)
          {
            objc_enumerationMutation(v10);
          }

          v16 = *(*(&v27 + 1) + 8 * i);
          v17 = [(CRLWPRep *)self selection];
          if (![v16 lineFragmentForCharIndex:v26 knobTag:11 selectionType:{objc_msgSend(v17, "type")}])
          {
            goto LABEL_20;
          }

          if (!v13)
          {

LABEL_19:
            v17 = [(CRLWPRep *)self knobClassWithTag:11];
            [v25 addObject:v17];
LABEL_20:

            goto LABEL_21;
          }

          v18 = [v24 knobTag] == 11;

          if (v18)
          {
            goto LABEL_19;
          }

LABEL_21:
          v10 = v14;
          v19 = [v16 range];
          v21 = v8 < v19 || v8 - v19 >= v20;
          if (!v21 && (!v13 || [v24 knobTag] == 10))
          {
            v22 = [(CRLWPRep *)self knobClassWithTag:10];
            [v25 addObject:v22];

            v10 = v14;
          }
        }

        v11 = [v10 countByEnumeratingWithState:&v27 objects:v31 count:16];
      }

      while (v11);
    }
  }
}

- (id)knobClassWithTag:(unint64_t)a3
{
  v5 = [(CRLWPRep *)self knobPositioner];
  [v5 knobRadius];
  v7 = v6;
  v8 = [(CRLCanvasRep *)self canvas];
  [v8 viewScale];
  v10 = v7 * v9;

  v11 = [[CRLWPTextKnob alloc] initWithType:2 position:a3 radius:self tag:CGPointZero.x onRep:CGPointZero.y, v10];

  return v11;
}

- (void)updatePositionsOfKnobs:(id)a3
{
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v4 = a3;
  v5 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
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
          objc_enumerationMutation(v4);
        }

        v8 = *(*(&v10 + 1) + 8 * v7);
        v9 = [(CRLWPRep *)self selection];
        [(CRLWPRep *)self knobCenterForSelection:v9 knob:v8];
        [v8 setPosition:?];

        v7 = v7 + 1;
      }

      while (v5 != v7);
      v5 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
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

  v3 = [(CRLWPRep *)self knobPositioner];
  v4 = [(CRLWPRep *)self selection];
  v5 = [(CRLWPRep *)self storage];
  v6 = [v3 shouldCreateKnobsForSelection:v4 inStorage:v5];

  return v6;
}

- (CGRect)labelRectForCharIndex:(unint64_t)a3
{
  v4 = [(CRLWPRep *)self columns];
  [CRLWPColumn labelRectForCharIndex:a3 withColumns:v4];
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

- (CGRect)columnRectForRange:(_NSRange)a3
{
  length = a3.length;
  location = a3.location;
  v5 = [(CRLWPRep *)self columns];
  [CRLWPColumn columnRectForRange:location withColumns:length, v5];
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

- (CGRect)glyphRectForRange:(_NSRange)a3 includingLabel:(BOOL)a4
{
  v4 = a4;
  length = a3.length;
  location = a3.location;
  x = CGRectNull.origin.x;
  y = CGRectNull.origin.y;
  width = CGRectNull.size.width;
  height = CGRectNull.size.height;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v11 = [(CRLWPRep *)self columns];
  v12 = [v11 countByEnumeratingWithState:&v29 objects:v33 count:16];
  if (v12)
  {
    v13 = *v30;
    do
    {
      for (i = 0; i != v12; i = i + 1)
      {
        if (*v30 != v13)
        {
          objc_enumerationMutation(v11);
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
          [v15 glyphRectForRange:v20 includingLabel:{v19, v4}];
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

      v12 = [v11 countByEnumeratingWithState:&v29 objects:v33 count:16];
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

- (unsigned)fontTraitsForRange:(_NSRange)a3 includingLabel:(BOOL)a4
{
  v4 = a4;
  length = a3.length;
  location = a3.location;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v7 = [(CRLWPRep *)self columns];
  v8 = 0;
  v9 = [v7 countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v9)
  {
    v10 = *v21;
    do
    {
      for (i = 0; i != v9; i = i + 1)
      {
        if (*v21 != v10)
        {
          objc_enumerationMutation(v7);
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
          v18 = [v12 fontTraitsForRange:v17 includingLabel:{v16, v4}];
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

      v9 = [v7 countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v9);
  }

  return v8;
}

- (unint64_t)glyphCountForRubyFieldAtCharIndex:(unint64_t)a3
{
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v4 = [(CRLWPRep *)self columns];
  v5 = [v4 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v5)
  {
    v6 = *v15;
    do
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v15 != v6)
        {
          objc_enumerationMutation(v4);
        }

        v8 = *(*(&v14 + 1) + 8 * i);
        v9 = [v8 range];
        if (a3 >= v9 && a3 - v9 < v10)
        {
          v12 = [v8 glyphCountForRubyFieldAtCharIndex:a3];
          goto LABEL_14;
        }
      }

      v5 = [v4 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v5);
  }

  v12 = 0x7FFFFFFFFFFFFFFFLL;
LABEL_14:

  return v12;
}

- (CGRect)glyphRectForRubyFieldAtCharIndex:(unint64_t)a3 glyphRange:(_NSRange)a4
{
  length = a4.length;
  location = a4.location;
  x = CGRectNull.origin.x;
  y = CGRectNull.origin.y;
  width = CGRectNull.size.width;
  height = CGRectNull.size.height;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v11 = [(CRLWPRep *)self columns];
  v12 = [v11 countByEnumeratingWithState:&v27 objects:v31 count:16];
  if (v12)
  {
    v13 = *v28;
    do
    {
      for (i = 0; i != v12; i = i + 1)
      {
        if (*v28 != v13)
        {
          objc_enumerationMutation(v11);
        }

        v15 = *(*(&v27 + 1) + 8 * i);
        v16 = [v15 range];
        if (a3 >= v16 && a3 - v16 < v17)
        {
          [v15 glyphRectForRubyFieldAtCharIndex:a3 glyphRange:{location, length}];
          x = v19;
          y = v20;
          width = v21;
          height = v22;
          goto LABEL_13;
        }
      }

      v12 = [v11 countByEnumeratingWithState:&v27 objects:v31 count:16];
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

- (_NSRange)rangeOfMisspelledWordAtCharIndex:(unint64_t)a3
{
  v3 = 0x7FFFFFFFFFFFFFFFLL;
  v4 = 0;
  if (self->_spellChecker)
  {
    if ([(CRLWPRep *)self p_spellCheckingEnabled])
    {
      v3 = [(CRLWPStorageSpellChecker *)self->_spellChecker rangeOfMisspelledWordAtCharIndex:a3];
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

- (CGRect)p_convertNaturalRectToRotated:(CGRect)a3 repAngle:(double)a4
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v9 = [(CRLWPRep *)self textIsVertical];
  if (v9)
  {
    a4 = fmod(a4 + 270.0, 360.0);
  }

  if ((a4 <= 45.0 || a4 >= 135.0) && (a4 <= 225.0 || a4 >= 315.0))
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
  if (v9)
  {
    v13 = v12;
  }

  else
  {
    v13 = v10;
  }

  if (v9)
  {
    v14 = v11;
  }

  else
  {
    v14 = v12;
  }

  v15 = x + width;
  if (a4 <= 180.0)
  {
    v15 = x;
  }

  v16 = a4 >= 270.0 || a4 <= 90.0;
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

- (BOOL)p_allowCaretForSelection:(id)a3
{
  v4 = a3;
  v5 = [v4 range];
  v6 = [(CRLWPRep *)self storage];
  v7 = [v6 hasMarkedText];

  if ((v7 & 1) == 0)
  {
    if (![v4 isInsertionPoint] || ((v9 = -[CRLWPRep range](self, "range"), v5 < v9) || v5 - v9 >= v10) && (v11 = -[CRLWPRep range](self, "range"), v5 != &v11[v12]) || v5 == -[CRLWPRep range](self, "range") && (objc_msgSend(v4, "isAtEndOfLine") & 1) != 0)
    {
      v8 = 0;
      goto LABEL_10;
    }

    v14 = [(CRLWPRep *)self range];
    if (v5 == &v14[v15] && ([v4 isAtEndOfLine] & 1) == 0)
    {
      v16 = [(CRLWPRep *)self storage];
      [v16 length];
    }
  }

  v8 = 1;
LABEL_10:

  return v8;
}

- (void)p_updateLayersForInsertionPointSelection:(id)a3
{
  v4 = a3;
  [(CRLWPRep *)self p_setSelectionLineLayersHidden:1];
  [(CRLWPRep *)self p_hideSelectionHighlightLayer];
  [(CRLWPRep *)self p_hideSelectionParagraphBorderLayer];
  v5 = [(CRLWPRep *)self textEditor];
  if (![(CRLWPRep *)self p_isRedesignedTextCursorEnabled])
  {
    if ([v5 wantsCaret])
    {
      v6 = [(CRLCanvasRep *)self interactiveCanvasController];
      v7 = [v6 layerHost];
      [v7 isInFocusedContainer];
    }

    if ([(CRLWPRep *)self p_allowCaretForSelection:v4])
    {
      v8 = [v5 editorHelper];
      v9 = [v8 calculateVisualRunsFromSelection:v4 updateControllerSelection:1];

      if ([CRLWPRep p_positionCaretLayer:"p_positionCaretLayer:forSelection:layerRelative:" forSelection:self->_caretLayer layerRelative:?]&& [(CRLWPRep *)self p_canShowSelectionAndCaretLayers])
      {
        [(CRLWPRepCaretController *)self->_caretController showCaretLayerStartingAnimation];
        goto LABEL_10;
      }

      v4 = v9;
    }
  }

  [(CRLWPRepCaretController *)self->_caretController stopCaretLayerAnimationHidingCaret:1];
  v9 = v4;
LABEL_10:
}

- (id)p_imageForRect:(CGRect)a3 usingGlyphRect:(BOOL)a4 prepareBackground:(BOOL)a5 drawBackground:(BOOL)a6 shouldPulsate:(BOOL)a7 forCaret:(BOOL)a8 drawSelection:(id)a9 suppressInvisibles:(BOOL)a10 suppressChildReps:(BOOL)a11
{
  v11 = a6;
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v18 = a9;
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
    if (v18 || !a5)
    {
      CGContextSaveGState(v28);
      if (v11)
      {
        v29 = 3;
      }

      else
      {
        v29 = 33;
      }

      LOBYTE(v39) = a10;
      [(CRLWPRep *)self p_drawTextInLayer:0 context:v28 limitSelection:v18 rubyGlyphRange:0x7FFFFFFFFFFFFFFFLL renderMode:0 suppressInvisibles:v29, v39];
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

- (id)p_imageForZeroLengthPath:(CGPath *)a3
{
  if (!a3)
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

  PathBoundingBox = CGPathGetPathBoundingBox(a3);
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

- (id)textImageForSelection:(id)a3 frame:(CGRect *)a4 usingGlyphRect:(BOOL)a5 shouldPulsate:(BOOL)a6 suppressInvisibles:(BOOL)a7 suppressChildReps:(BOOL)a8 drawBackground:(BOOL)a9 inset:(double)a10
{
  v13 = a6;
  v14 = a5;
  v17 = a3;
  v18 = v17;
  v51 = 0;
  v52 = &v51;
  v53 = 0x5012000000;
  v54 = sub_10047123C;
  v55 = nullsub_53;
  v56 = &unk_1016A8115;
  if (v14 && ([v17 type] != 7 || objc_msgSend(v18, "visualRangeCount") < 2 ? ((v32 = objc_msgSend(v18, "superRange"), v34 = v33, objc_msgSend(v18, "type") != 2) ? (v35 = objc_msgSend(v18, "type") == 1) : (v35 = 1), -[CRLWPRep glyphRectForRange:includingLabel:](self, "glyphRectForRange:includingLabel:", v32, v34, v35), v36 = v52, v52[6] = v28, v36[7] = v29, v36[8] = v30, v36[9] = v31) : (objc_msgSend(v18, "visualRanges"), v19 = objc_claimAutoreleasedReturnValue(), v20 = objc_msgSend(v19, "rangeAtIndex:", 0), -[CRLWPRep glyphRectForRange:includingLabel:](self, "glyphRectForRange:includingLabel:", v20, v21, 0), v22 = v52, v52[6] = v23, v22[7] = v24, v22[8] = v25, v22[9] = v26, v19, objc_msgSend(v18, "visualRanges"), v27 = objc_claimAutoreleasedReturnValue(), v50[0] = _NSConcreteStackBlock, v50[1] = 3221225472, v50[2] = sub_10047124C, v50[3] = &unk_1018651D8, v50[4] = self, v50[5] = &v51, objc_msgSend(v27, "enumerateRanges:", v50), v27, v28 = v52[6], v29 = v52[7], v30 = v52[8], v31 = v52[9]), !CGRectIsEmpty(*&v28)))
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

  v58 = CGRectInset(*&v37, a10, a10);
  v43 = v52;
  v44 = v52;
  *(v52 + 6) = v58;
  v45 = v44 + 6;
  if (a4)
  {
    v46 = *(v45 + 1);
    a4->origin = *v45;
    a4->size = v46;
    v58 = *(v43 + 6);
  }

  BYTE1(v49) = a8;
  LOBYTE(v49) = a7;
  v47 = [(CRLWPRep *)self p_imageForRect:v41 usingGlyphRect:0 prepareBackground:a9 drawBackground:v13 shouldPulsate:0 forCaret:v18 drawSelection:v58.origin.x suppressInvisibles:v58.origin.y suppressChildReps:v58.size.width, v58.size.height, v49];
  _Block_object_dispose(&v51, 8);

  return v47;
}

- (BOOL)isOverflowing
{
  v3 = objc_opt_class();
  v4 = [(CRLWPRep *)self layout];
  v5 = sub_100014370(v3, v4);

  LOBYTE(v4) = [v5 isOverflowing];
  return v4;
}

- (void)editingDidEndWithTextEditor:(id)a3
{
  [(CRLWPRep *)self p_hideSelectionLayers];
  if ([(CRLWPRep *)self doesNeedDisplayOnEditingDidEnd])
  {
    [(CRLWPRep *)self setNeedsDisplay];
  }

  v4 = objc_opt_class();
  v5 = [(CRLCanvasRep *)self parentRep];
  v6 = sub_100014370(v4, v5);

  if (v6)
  {
    [v6 setShadowOnChildrenDisabled:0];
  }
}

- (void)p_updateAnimationWithAnimatingPulse:(BOOL)a3
{
  v3 = a3;
  if (![(CRLWPHighlightArrayController *)self->_pulseArrayController pulsating])
  {
    v5 = [(CRLWPRep *)self primaryFindResultSearchReference];

    if (v5)
    {
      if (!self->_updatingHighlights)
      {
        self->_updatingHighlights = 1;
        v6 = [(CRLCanvasRep *)self canvas];
        [v6 viewScale];
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
        if (v3)
        {
          [(CRLWPHighlightArrayController *)self->_pulseArrayController startAnimating];
        }

        [(CRLWPRep *)self p_setSelectionLineLayersHidden:1];
        self->_updatingHighlights = 0;
      }
    }
  }
}

- (void)updateVisualSelection:(id)a3
{
  v4 = a3;
  CGPathRelease([CRLWPRep p_newSelectionPathForSelection:"p_newSelectionPathForSelection:transform:headPinRect:tailPinRect:" transform:? headPinRect:? tailPinRect:?]);
}

- (CGPath)p_newSelectionPathForSelection:(id)a3 transform:(CGAffineTransform *)a4 headPinRect:(CGRect *)a5 tailPinRect:(CGRect *)a6 markedText:(BOOL)a7
{
  v7 = a7;
  v12 = a3;
  v14 = 0x7FFFFFFFFFFFFFFFLL;
  v13 = 0;
  v15 = [v12 type];
  if ([v12 headCharIndex] != 0x7FFFFFFFFFFFFFFFLL)
  {
    v16 = [v12 tailCharIndex];
    if (v15 == 7 && v16 != 0x7FFFFFFFFFFFFFFFLL)
    {
      v17 = [v12 headCharIndex];
      v18 = [v12 tailCharIndex];
      if (v18 >= v17)
      {
        v19 = v17;
      }

      else
      {
        v19 = v18;
      }

      v20 = [v12 headCharIndex];
      v21 = [v12 tailCharIndex];
      if (v20 <= v21)
      {
        v22 = v21;
      }

      else
      {
        v22 = v20;
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
    v24 = [v12 range];
    v13 = v25;
    v26 = v24 != 0x7FFFFFFFFFFFFFFFLL;
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
    if (a4)
    {
      v29 = *&a4->c;
      *&m.a = *&a4->a;
      *&m.c = v29;
      *&m.tx = *&a4->tx;
    }

    else
    {
      [(CRLCanvasRep *)self transformToConvertNaturalToLayerRelative];
    }

    v30 = [(CRLCanvasRep *)self canvas];
    [v30 contentsScale];
    v71 = v31;

    v32 = [(CRLWPRep *)self columns];
    p_superclass = &OBJC_METACLASS___CRLCountedObserver.superclass;
    [CRLWPColumn populateHeadAndTailCharIndicesInSelection:v12 forColumns:v32];
    v70 = [CRLWPColumn selectionRectsforColumns:v32 forSelection:v12];
    if ([v70 count])
    {
      Mutable = CGPathCreateMutable();
      v34 = [(CRLWPRep *)self textIsVertical];
      v75 = 0u;
      v76 = 0u;
      v73 = 0u;
      v74 = 0u;
      v35 = v70;
      v36 = [v35 countByEnumeratingWithState:&v73 objects:v82 count:16];
      if (v36)
      {
        v37 = *v74;
        if (v34)
        {
          v38 = 0.0;
        }

        else
        {
          v38 = 0.5;
        }

        if (v34)
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
            if (v7)
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

    if (a5 | a6)
    {
      [p_superclass + 214 calculateSelectionPinRectsForSelection:v12 inColumns:v32 outSelectionPinRect:&origin outSelectionTailPinRect:&v78];
    }
  }

  if (a5)
  {
    v67 = v81;
    a5->origin = origin;
    a5->size = v67;
  }

  if (a6)
  {
    v68 = v79;
    a6->origin = v78;
    a6->size = v68;
  }

  return Mutable;
}

- (id)p_lineSelectionsForSelection:(id)a3
{
  v4 = a3;
  if ([v4 isRange])
  {
    v14 = 0u;
    v15 = 0u;
    v12 = 0u;
    v13 = 0u;
    v5 = [(CRLWPRep *)self columns];
    v6 = 0;
    v7 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
    if (v7)
    {
      v8 = *v13;
      do
      {
        for (i = 0; i != v7; i = i + 1)
        {
          if (*v13 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v10 = [*(*(&v12 + 1) + 8 * i) lineSelectionsForSelection:v4];
          if (v10)
          {
            if (!v6)
            {
              v6 = +[NSMutableArray array];
            }

            [v6 addObjectsFromArray:v10];
          }
        }

        v7 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
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

- (id)lineSearchReferencesForSearchReference:(id)a3
{
  v4 = a3;
  v5 = [v4 selection];
  [(CRLWPRep *)self p_lineSelectionsForSelection:v5];
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

        v12 = [v4 copy];
        v13 = [v11 range];
        [v12 setRange:{v13, v14}];
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

- (CGPoint)p_pinPoint:(CGPoint)a3 toRect:(CGRect)a4
{
  v4 = sub_1001203B8(a3.x, a3.y, a4.origin.x, a4.origin.y, a4.size.width + -1.0, a4.size.height + -1.0);
  result.y = v5;
  result.x = v4;
  return result;
}

- (void)p_updateLayersForRangeSelection:(id)a3 selectionFlags:(unint64_t)a4
{
  v4 = a4;
  v6 = a3;
  v7 = [(CRLWPRep *)self p_canShowSelectionAndCaretLayers];
  [(CRLWPRep *)self hideCaretLayer];
  selectionLineLayers = self->_selectionLineLayers;
  if (!self->_selectionLineLayers[0])
  {
    [(CRLWPRep *)self p_createSelectionLineLayers];
  }

  if (v4)
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
  if (v7)
  {
    [v6 isVisual];
    v11 = [(CRLWPRep *)self p_newSelectionPathForSelection:v6 transform:0 headPinRect:&v29 tailPinRect:&v28];
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

  v13 = [(CRLCanvasRep *)self canvas];
  [v13 viewScale];
  v15 = v14;

  v16 = [(CRLWPRep *)self textIsVertical];
  v17 = [v6 type] == 3 || objc_msgSend(v6, "type") == 5;
  if (([(CRLWPRep *)self p_shouldDisplaySelectionControls]& v7) == 1 && ((IsEmpty = CGRectIsEmpty(v29), v15 == 0.0) ? (v19 = 1) : (v19 = IsEmpty), ((v19 | v17) & 1) == 0))
  {
    v21 = 1.0 / v15;
    if (v16)
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

  if (([(CRLWPRep *)self p_shouldDisplaySelectionControls]& v7) == 1 && ((v23 = CGRectIsEmpty(v28), v15 == 0.0) ? (v24 = 1) : (v24 = v23), ((v24 | v17) & 1) == 0))
  {
    v26 = v28;
    if (v16)
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
  v3 = [(CRLWPRep *)self selection];
  v4 = [v3 isRange];

  if (v4)
  {
    v5 = [(CRLWPRep *)self selection];
    v6 = [v5 range];
    v8 = v7;

    v18.location = [(CRLWPRep *)self range];
    v19.location = v6;
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
  v11 = [(CRLWPRep *)self selection];
  v12 = [(CRLCanvasRep *)self interactiveCanvasController];
  v13 = [v12 editorController];
  v14 = [v13 selectionPath];
  v15 = [v14 mostSpecificSelectionOfClass:0];
  v16 = v11 == v15;

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

- (void)i_setNeedsErasableDisplayInRange:(_NSRange)a3
{
  length = a3.length;
  location = a3.location;
  x = CGRectNull.origin.x;
  y = CGRectNull.origin.y;
  width = CGRectNull.size.width;
  height = CGRectNull.size.height;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v10 = [(CRLWPRep *)self columns];
  v11 = [v10 countByEnumeratingWithState:&v18 objects:v22 count:16];
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
          objc_enumerationMutation(v10);
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
      v11 = [v10 countByEnumeratingWithState:&v18 objects:v22 count:16];
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

- (void)p_setSuppressedMisspellingRange:(_NSRange)a3
{
  length = a3.length;
  location = a3.location;
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
  v3 = [(CRLWPRep *)self selection];
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

  if ([v3 isValid])
  {
    v8 = [(CRLCanvasRep *)self interactiveCanvasController];
    v9 = [v8 canvas];
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_100472A70;
    v10[3] = &unk_10185D010;
    v10[4] = self;
    v10[5] = v3;
    [v9 performBlockAfterLayoutIfNecessary:v10];
  }

  else
  {
    [(CRLWPRep *)self p_setSuppressedMisspellingRange:0x7FFFFFFFFFFFFFFFLL, 0];
    v8 = [(CRLWPRep *)self storage];
    self->_changeCountForSpellingSuppression = [v8 changeCount];
  }
}

- (void)p_updateForCurrentSelectionWithFlags:(unint64_t)a3
{
  v5 = [(CRLWPRep *)self selection];
  if (v5)
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
    v15 = [(CRLWPRep *)self layout];
    v16 = v15 == 0;

    if (!v16)
    {
      [(CRLWPRep *)self p_validateWithLayoutController];
    }
  }

  if (self->_caretLayer && !self->_suppressSelectionHighlight)
  {
    v17 = [(CRLWPRep *)self layout];
    v18 = v17 == 0;

    if (!v18)
    {
      [(CRLWPRep *)self p_validateWithLayoutController];
    }

    [(CRLWPRep *)self p_updateSuppressedSpellingRange];
    v19 = [(CRLWPRep *)self textEditor];
    v20 = [v19 markedRange];
    v22 = v21;

    v23 = v5;
    v24 = [(CRLWPRep *)self storage];
    v25 = [v24 hasMarkedText];

    if (v25)
    {
      v51.location = [v23 range];
      v52.location = v20;
      v52.length = v22;
      v26 = [[_TtC8Freeform12CRLTextRange alloc] initWithRange:NSUnionRange(v51, v52).location, v51.length];
      v27 = [(CRLTextRange *)v26 makeTrailingInsertionPoint];
      v28 = [v27 nsRange];
      v30 = [v23 copyWithNewRange:{v28, v29}];

      v23 = v30;
    }

    v31 = [v23 isInsertionPoint];
    if (v22)
    {
      v32 = 1;
    }

    else
    {
      v32 = v31;
    }

    if (v32 == 1)
    {
      [(CRLWPRep *)self p_updateLayersForInsertionPointSelection:v23];
    }

    else if ([v23 isRange])
    {
      [(CRLWPRep *)self p_updateLayersForRangeSelection:v23 selectionFlags:a3];
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

  v3 = [(CRLWPRep *)self storage];
  v4 = [v3 parentInfo];
  if (objc_opt_respondsToSelector())
  {
    v5 = [(CRLWPRep *)self storage];
    v6 = [v5 parentInfo];
    v7 = [v6 shouldHideEmptyBullets];

    if (v7)
    {
LABEL_4:
      [(CRLWPRep *)self setNeedsDisplay];
      goto LABEL_38;
    }
  }

  else
  {
  }

  v8 = [(CRLWPRep *)self selection];
  if (!-[CRLWPSelection isEqual:](self->_lastSelection, "isEqual:", v8) && (([v8 isRange] & 1) != 0 || -[CRLWPSelection isRange](self->_lastSelection, "isRange")))
  {
    if (v8)
    {
      v9 = [v8 range];
      v11 = v10;
      v12 = [(CRLWPRep *)self storage];
      v50.location = [v12 range];
      v50.length = v13;
      v47.location = v9;
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

    v18 = [(CRLWPSelection *)self->_lastSelection range];
    v20 = v19;
    v21 = [(CRLWPRep *)self storage];
    v51.location = [v21 range];
    v51.length = v22;
    v48.location = v18;
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

  v34 = [(CRLWPRep *)self selection];
  v35 = [v34 copy];
  lastSelection = self->_lastSelection;
  self->_lastSelection = v35;
}

- (void)p_validateWithLayoutController
{
  v3 = [(CRLWPRep *)self layout];
  v2 = [v3 layoutController];
  [v2 validateLayoutWithDependencies:v3];
}

- (void)p_drawTextLayerInContext:(CGContext *)a3
{
  CGContextSaveGState(a3);
  v5 = [(CRLWPRep *)self textLayer];
  [(CRLCanvasRep *)self setupForDrawingInLayer:v5 context:a3];

  v6 = [(CRLWPRep *)self textLayer];
  LOBYTE(v8) = 0;
  [(CRLWPRep *)self p_drawTextInLayer:v6 context:a3 limitSelection:0 rubyGlyphRange:0x7FFFFFFFFFFFFFFFLL renderMode:0 suppressInvisibles:3, v8];

  v7 = [(CRLWPRep *)self textLayer];
  [(CRLWPRep *)self didDrawInLayer:v7 context:a3];

  CGContextRestoreGState(a3);
}

- (void)p_drawTextBackgroundLayerInContext:(CGContext *)a3
{
  CGContextSaveGState(a3);
  v5 = [(CRLWPRep *)self textBackgroundLayer];
  [(CRLCanvasRep *)self setupForDrawingInLayer:v5 context:a3];

  v6 = [(CRLWPRep *)self textBackgroundLayer];
  LOBYTE(v8) = 0;
  [(CRLWPRep *)self p_drawTextInLayer:v6 context:a3 limitSelection:0 rubyGlyphRange:0x7FFFFFFFFFFFFFFFLL renderMode:0 suppressInvisibles:2, v8];

  v7 = [(CRLWPRep *)self textBackgroundLayer];
  [(CRLWPRep *)self didDrawInLayer:v7 context:a3];

  CGContextRestoreGState(a3);
}

- (void)drawLayer:(id)a3 inContext:(CGContext *)a4
{
  v10 = a3;
  v6 = [(CRLCanvasRep *)self interactiveCanvasController];
  v7 = [v6 shouldSuppressRendering];

  if ((v7 & 1) == 0)
  {
    v8 = [(CRLWPRep *)self textLayer];

    if (v8 == v10)
    {
      [(CRLWPRep *)self p_drawTextLayerInContext:a4];
    }

    else
    {
      v9 = [(CRLWPRep *)self textBackgroundLayer];

      if (v9 == v10)
      {
        [(CRLWPRep *)self p_drawTextBackgroundLayerInContext:a4];
      }
    }
  }
}

- (id)actionForLayer:(id)a3 forKey:(id)a4
{
  v4 = [NSNull null:a3];

  return v4;
}

- (BOOL)shouldLayoutTilingLayer:(id)a3
{
  v4 = a3;
  v5 = [(CRLCanvasRep *)self interactiveCanvasController];
  v6 = [v5 shouldLayoutTilingLayer:v4];

  return v6;
}

- (BOOL)textIsVertical
{
  v2 = [(CRLWPRep *)self layout];
  v3 = [v2 textIsVertical];

  return v3;
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
      v3 = [(CRLWPRep *)self primaryFindResultSearchReference];
      if (v3)
      {
        v4 = v3;
        v28 = [(CRLCanvasRep *)self interactiveCanvasController];
        v27 = [v28 primaryFindResultSearchReference];
        if (v27)
        {
          v26 = [(CRLCanvasRep *)self interactiveCanvasController];
          v5 = [v26 primaryFindResultSearchReference];
          v6 = [(CRLWPRep *)self primaryFindResultSearchReference];
          v7 = [v5 isEqual:v6];

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

- (void)p_drawTextInLayer:(id)a3 context:(CGContext *)a4 limitSelection:(id)a5 rubyGlyphRange:(_NSRange)a6 renderMode:(unint64_t)a7 suppressInvisibles:(BOOL)a8
{
  v63 = a3;
  v51 = a5;
  v43 = sub_10050FEFC(a4);
  [v43 beginTextStorageChunk:self limitSelection:v51];
  v68 = self;
  v11 = [(CRLCanvasRep *)self canvas];
  v62 = [v11 textRendererForLayer:v63 context:a4];

  v12 = [(CRLCanvasRep *)self canvas];
  v13 = [v12 canvasController];
  v14 = [v13 freehandDrawingToolkit];
  v48 = [v14 isInDrawingMode];

  v15 = [(CRLCanvasRep *)v68 canvas];
  if (![v15 isCanvasInteractive])
  {

    goto LABEL_5;
  }

  v16 = [(CRLWPRep *)v68 textEditor];

  if (!v16)
  {
LABEL_5:
    v19 = 0;
    v46 = 0;
    v47 = 0x7FFFFFFFFFFFFFFFLL;
    goto LABEL_6;
  }

  v17 = [v16 markedRange];
  v46 = v18;
  v47 = v17;
  v19 = v16;
LABEL_6:
  v42 = v19;
  v52 = [v19 markedText];
  v53 = 0;
  if ([(CRLWPRep *)v68 p_spellCheckingEnabled]&& !a8)
  {
    v53 = v68->_spellChecker;
    if (v53)
    {
      v20 = [(CRLWPRep *)v68 layout];
      if (([v20 isInstructional] & 1) == 0)
      {
        v21 = [(CRLWPRep *)v68 storage];
        if ([v21 length])
        {
          v22 = [(CRLWPRep *)v68 storage];
          v23 = [v22 markedTextRange];

          if (v23)
          {
            goto LABEL_16;
          }

          v20 = [(CRLWPRep *)v68 columns];
          v24 = [CRLWPColumn rangeOfColumns:v20];
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
  obj = [(CRLWPRep *)v68 columns];
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
        v27 = [(CRLWPRep *)v68 layout];
        v28 = [v27 interiorClippingPath];
        v67 = [v28 copy];

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
        if (v63)
        {
          v55 = [(CRLWPRep *)v68 selection];
          v60 = v55;
        }

        else
        {
          v60 = 0;
        }

        length = v68->_dragRange.length;
        location = v68->_dragRange.location;
        v58 = [(CRLCanvasRep *)v68 canvas];
        v30 = [v58 isCanvasInteractive];
        v31 = v68->_suppressedMisspellingRange.location;
        v32 = v68->_suppressedMisspellingRange.length;
        v57 = [(CRLCanvasRep *)v68 canvas];
        v33 = [v57 shouldSuppressBackgrounds];
        v56 = [(CRLWPRep *)v68 layout];
        v34 = [v56 pageCount];
        v35 = [(CRLCanvasRep *)v68 canvas];
        v36 = [v35 canvasController];
        v37 = [v36 canvasEditor];
        v38 = [v37 canvasSelection];
        LOBYTE(v41) = a8;
        LOBYTE(v40) = ((a7 & 0x20) != 0) | v33;
        BYTE1(v39) = v48;
        LOBYTE(v39) = v30;
        [v61 renderWithRenderer:v62 currentSelection:v60 limitSelection:v51 listRange:location rubyGlyphRange:length isCanvasInteractive:a6.location isInDrawingMode:a6.length spellChecker:v39 suppressedMisspellingRange:v53 blackAndWhite:v31 dictationInterpretations:v32 autocorrections:v40 markedRange:v64 markedText:v65 renderMode:v47 pageCount:v46 suppressInvisibles:v52 currentCanvasSelection:{a7, v34, v41, v38}];

        if (v63)
        {
        }
      }

      v54 = [obj countByEnumeratingWithState:&v70 objects:v74 count:16];
    }

    while (v54);
  }

  [v43 endTextStorageChunk:v68];
}

- (void)p_createLayer:(int64_t)a3
{
  textLayers = self->_textLayers;
  if (self->_textLayers[a3])
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
  v10 = textLayers[a3];
  textLayers[a3] = &v9->super.super;

  [(CALayer *)textLayers[a3] setAnchorPoint:CGPointZero.x, CGPointZero.y];
  [(CALayer *)textLayers[a3] setEdgeAntialiasingMask:0];
  [(CALayer *)textLayers[a3] setDelegate:self];
  [(CALayer *)textLayers[a3] setPosition:CGPointZero.x, CGPointZero.y];
  v11 = -3.0;
  if (a3 == 1)
  {
    v11 = -2.0;
  }

  [(CALayer *)textLayers[a3] setZPosition:v11];
  v12 = [(CRLCanvasRep *)self canvas];
  [v12 contentsScale];
  [(CALayer *)textLayers[a3] setContentsScale:?];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [(CALayer *)textLayers[a3] setTilingMode:[(CRLWPRep *)self tilingMode]];
  }

  if (a3 == 1)
  {
    [(CALayer *)textLayers[1] setDrawsAsynchronously:1];
  }

  v13 = [(CRLCanvasRep *)self interactiveCanvasController];
  [v13 setNeedsDisplayOnLayer:textLayers[a3]];
}

- (void)p_destroyLayer:(int64_t)a3
{
  textLayers = self->_textLayers;
  [(CALayer *)self->_textLayers[a3] setDelegate:0];
  v5 = textLayers[a3];
  textLayers[a3] = 0;
}

- (id)p_caretLayerWithZPosition:(double)a3
{
  v5 = objc_alloc_init(CAShapeLayer);
  [v5 setAnchorPoint:{CGPointZero.x, CGPointZero.y}];
  [v5 setFillColor:{-[CRLWPRep p_caretLayerColor](self, "p_caretLayerColor")}];
  [v5 setEdgeAntialiasingMask:0];
  LODWORD(v6) = 1.0;
  [v5 setOpacity:v6];
  [v5 setDelegate:self];
  [v5 setZPosition:a3];
  v7 = [(CRLCanvasRep *)self canvas];
  [v7 contentsScale];
  [v5 setContentsScale:?];

  [v5 setHidden:0];
  [v5 setName:@"Caret Layer"];

  return v5;
}

- (void)p_positionAndSizeFloatingCaret:(id)a3 atPoint:(CGPoint)a4
{
  y = a4.y;
  x = a4.x;
  v7 = a3;
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
    [v7 setAnchorPoint:{0.5, 0.5}];
    [v7 setEdgeAntialiasingMask:0];
    v20 = [(CRLCanvasRep *)self canvas];
    [v20 viewScale];
    v22 = v21;

    [(CRLWPRepHelper *)self->_repHelper floatingCaretHeightMult];
    [v7 setBounds:{0.0, 0.0, 2.0 / v22, round(v15 * v23)}];
  }

  v35 = 0uLL;
  v32[0] = v33;
  v32[1] = v34;
  v32[2] = 0uLL;
  [v7 setAffineTransform:v32];
  v24 = [(CRLCanvasRep *)self interactiveCanvasController];
  [v24 convertUnscaledToBoundsPoint:{x, y}];
  v26 = v25;
  v28 = v27;

  [(CRLWPRepHelper *)self->_repHelper floatingCaretLineSnapAmount];
  if (v29 > 0.0)
  {
    [(CRLWPRep *)self p_applyLineSnappingToFloatingCaret:v7 atPoint:x withRect:y, v9, v11, v13, v15];
    v26 = v30;
    v28 = v31;
  }

  [v7 setPosition:{v26, v28}];
}

- (CGPoint)p_applyLineSnappingToFloatingCaret:(id)a3 atPoint:(CGPoint)a4 withRect:(CGRect)a5
{
  height = a5.size.height;
  width = a5.size.width;
  y = a5.origin.y;
  x = a5.origin.x;
  v9 = a4.y;
  v10 = a4.x;
  v12 = a3;
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
  [v12 bounds];
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
  [v12 bounds];
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
  v37 = [(CRLCanvasRep *)self interactiveCanvasController];
  [v37 convertUnscaledToBoundsPoint:{v34, v36}];
  v39 = v38;
  v41 = v40;

  v42 = v39;
  v43 = v41;
  result.y = v43;
  result.x = v42;
  return result;
}

- (BOOL)p_positionCaretLayer:(id)a3 forSelection:(id)a4 layerRelative:(BOOL)a5
{
  v5 = a5;
  v8 = a3;
  v9 = a4;
  [(CRLWPRep *)self p_caretRectForSelection:v9];
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
    if (v5)
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
    [v8 setAnchorPoint:?];
    if (v26 == 0.0)
    {
      [v8 setEdgeAntialiasingMask:0];
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

      v42 = -[CRLWPRep columnForCharIndex:](self, "columnForCharIndex:", [v9 range]);
      [(CRLCanvasRep *)self naturalBounds];
      v44 = v43;
      v46 = v45;
      v48 = v47;
      v50 = v49;
      [v42 boundsIncludingDropCapRectsForSelectionType:{objc_msgSend(v9, "type")}];
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
      if (v5)
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

      [v8 setEdgeAntialiasingMask:v29];
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
    [v8 setBounds:?];
    [(CRLWPRepHelper *)self->_repHelper positionForCaretLayer:v33, v35, v36, v37];
    [v8 setPosition:?];
    v59 = objc_opt_class();
    v60 = sub_100013F00(v59, v8);
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
    [v8 setValue:v64 forKeyPath:@"transform.rotation.z"];
  }

  return v18;
}

- (void)i_textInputResponderDidResignFirstResponder
{
  [(CRLWPRepCaretController *)self->_caretController willEnterForeground];
  v3 = [(CRLCanvasRep *)self interactiveCanvasController];
  [v3 invalidateContentLayersForRep:self];
}

- (void)i_textInputResponderDidBecomeFirstResponder
{
  [(CRLWPRepCaretController *)self->_caretController didEnterBackground];
  v3 = [(CRLCanvasRep *)self interactiveCanvasController];
  [v3 invalidateContentLayersForRep:self];
}

- (void)p_createSelectionLineLayers
{
  v3 = [(CRLWPRep *)self p_highlightLineColor];
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
    [(CAShapeLayer *)selectionLineLayers[v4] setFillColor:v3];
    v6 = 0;
    v4 = 1;
  }

  while ((v7 & 1) != 0);
}

- (void)p_setSelectionLineLayersHidden:(BOOL)a3
{
  v3 = a3;
  selectionLineLayers = self->_selectionLineLayers;
  [(CAShapeLayer *)self->_selectionLineLayers[0] setHidden:?];
  v5 = selectionLineLayers[1];

  [(CAShapeLayer *)v5 setHidden:v3];
}

- (void)p_setSelectionHighlightColor
{
  v3 = [(CRLWPRep *)self selection];
  v4 = [v3 type];

  if (v4 == 3 && ![(CRLWPRep *)self usesStandardHighlightColorForReplaceSelections])
  {
    v12 = [CRLColor colorWithRed:0.949019611 green:0.75686276 blue:0.654901981 alpha:0.200000003];
  }

  else
  {
    v5 = [(CRLCanvasRep *)self interactiveCanvasController];
    v6 = [v5 layerHost];
    v7 = [v6 asiOSCVC];
    v8 = [v7 crl_windowWrapper];
    if ([v8 isInSplitViewMode])
    {
      v9 = [(CRLCanvasRep *)self interactiveCanvasController];
      v10 = [v9 layerHost];
      v11 = [v10 isInFocusedContainer];

      if ((v11 & 1) == 0)
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

  v8 = [(CRLCanvasRep *)self canvas];
  [v8 contentsScale];
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

- (void)p_showSelectionParagraphBorderLayerWithPath:(CGPath *)a3
{
  [(CAShapeLayer *)self->_selectionParagraphBorderLayer setPath:a3];
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
  v3 = [(CRLWPRep *)self textEditor];
  v4 = [v3 markedRange];
  v6 = v5;
  v7 = [(CRLWPRep *)self isBeingEdited];
  if (v6)
  {
    v8 = v7;
  }

  else
  {
    v8 = 0;
  }

  if (v8 == 1)
  {
    v34 = v3;
    v35 = [CRLWPSelection selectionWithRange:v4, v6];
    [(CAShapeLayer *)self->_markHighlightLayer setSublayers:0];
    [(CAShapeLayer *)self->_markHighlightLayer setPath:0];
    v9 = [v3 markedText];
    v10 = [v9 attribute:NSMarkedClauseSegmentAttributeName atIndex:0 effectiveRange:0];

    if (v10)
    {
      v36 = +[NSMutableArray array];
      v11 = [v3 markedRange];
      v12 = [(CRLWPRep *)self storage];
      v13 = [v12 length];

      v37 = xmmword_101464838;
      v14 = 0;
      while (v14 < [v9 length])
      {
        v15 = [v9 attribute:NSMarkedClauseSegmentAttributeName atIndex:v37 effectiveRange:&v37];
        v16 = [v9 attribute:NSBackgroundColorAttributeName atIndex:v37 effectiveRange:0];
        v17 = v16;
        if (!*(&v37 + 1) || (v18 = &v11[v37], &v11[v37] >= v13))
        {

          break;
        }

        if (v15)
        {
          v19 = &v11[*(&v37 + 1) + v37];
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
            v20 = &v11[v37];
          }

          if (v18 >= v19)
          {
            v21 = v19;
          }

          else
          {
            v21 = &v11[v37];
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

      v3 = v34;
      if ([v36 count])
      {
        [(CAShapeLayer *)self->_markHighlightLayer setSublayers:v36];
      }
    }

    v25 = [(CAShapeLayer *)self->_markHighlightLayer sublayers];
    v26 = [v25 count];

    if (v26)
    {
      v27 = 0;
    }

    else
    {
      v27 = [(CRLWPRep *)self p_newSelectionPathForSelection:v35 transform:0 headPinRect:0 tailPinRect:0 markedText:1];
    }

    v28 = [(CRLWPRep *)self textEditor];
    v29 = [v28 markedText];

    if (v29)
    {
      v30 = [v29 attributesAtIndex:0 effectiveRange:0];
      v31 = [v30 objectForKeyedSubscript:NSBackgroundColorAttributeName];
      if (v31)
      {
        v32 = [CRLColor colorWithUIColor:v31];
        v33 = [v32 CGColor];

        v3 = v34;
      }

      else
      {
        v33 = 0;
      }

      if (!v33)
      {
        goto LABEL_42;
      }
    }

    else
    {
      v33 = [qword_101A35000 CGColor];
      if (!v33)
      {
        goto LABEL_42;
      }
    }

    [(CAShapeLayer *)self->_markHighlightLayer setFillColor:v33];
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
  v3 = [(CRLCanvasRep *)self interactiveCanvasController];
  [v3 invalidateContentLayersForRep:self];
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
  v3 = [(CRLCanvasRep *)self interactiveCanvasController];
  v4 = [v3 collaboratorCursorDelegate];
  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v5 = [v3 currentCollaboratorPresences];
  v6 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = *v14;
    while (2)
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v14 != v7)
        {
          objc_enumerationMutation(v5);
        }

        v9 = [v4 collaboratorCursorSelectionPathForRenderer:v3 collaboratorPresence:*(*(&v13 + 1) + 8 * i)];
        v10 = [(CRLWPRep *)self p_storageMatchesSelectionPath:v9];

        if (v10)
        {
          v11 = 1;
          goto LABEL_11;
        }
      }

      v6 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
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

- (void)collaboratorCursorChangedToSelectionPath:(id)a3
{
  v4 = a3;
  if (qword_101AD5B90 != -1)
  {
    sub_10137A674();
  }

  v5 = off_1019EDBE8;
  if (os_log_type_enabled(off_1019EDBE8, OS_LOG_TYPE_INFO))
  {
    v6 = 138543362;
    v7 = self;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "Collaborator Cursor: Selection Path Changed called for rep: %{public}@", &v6, 0xCu);
  }

  if ([(CRLWPRep *)self p_storageMatchesSelectionPath:v4])
  {
    [(CRLCanvasRep *)self invalidateKnobs];
    [(CRLWPRep *)self invalidateCollaboratorCursorRenderable];
  }
}

- (void)hideCollaboratorCursors
{
  self->_collaboratorCursorRenderableValid = 0;
  [(CRLCanvasRep *)self invalidateKnobs];
  v3 = [(CRLCanvasRep *)self interactiveCanvasController];
  [v3 invalidateContentLayersForRep:self];
}

- (BOOL)p_storageMatchesSelectionPath:(id)a3
{
  v17 = a3;
  [(CRLCanvasRep *)self interactiveCanvasController];
  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v18 = v20 = 0u;
  v4 = [v18 modelsForSelectionPath:v17];
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
          v14 = [v8 storage];
          v10 = sub_100014370(v13, v14);

          if (!v10)
          {
            continue;
          }
        }

        v11 = [(CRLWPRep *)self storage];
        v12 = v10 == v11;

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

- (double)collaborativeCursorOpacityForCaret:(BOOL)a3
{
  v3 = a3;
  if (qword_101A35018 != -1)
  {
    sub_10137A688();
  }

  v4 = &qword_101A35008;
  if (!v3)
  {
    v4 = &qword_101A35010;
  }

  return *v4;
}

- (void)p_withCollaboratorCursorPerformBlock:(id)a3
{
  v46 = a3;
  v50 = [(CRLCanvasRep *)self interactiveCanvasController];
  v45 = [v50 currentCollaboratorPresences];
  v51 = [v50 collaboratorCursorDelegate];
  v54 = self;
  v61 = 0u;
  v62 = 0u;
  v59 = 0u;
  v60 = 0u;
  range_8 = v45;
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
        v7 = [v51 collaboratorCursorSelectionPathForRenderer:v50 collaboratorPresence:v6];
        if ([(CRLWPRep *)v54 p_storageMatchesSelectionPath:v7])
        {
          v8 = objc_opt_class();
          v9 = [v7 orderedSelections];
          v10 = [v9 lastObject];
          v53 = sub_100014370(v8, v10);

          if ([v53 isValid])
          {
            v11 = [v53 range];
            v13 = v12;
            v14 = [(CRLWPRep *)v54 storage];
            range = v11;
            v15 = v11 + v13;
            v16 = v15 > [v14 length];

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
                v42 = [(CRLWPRep *)v54 storage];
                v43 = [v42 length];
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
              v23 = [(CRLWPRep *)v54 storage];
              +[CRLAssertionHandler handleFailureInFunction:file:lineNumber:isFatal:description:](CRLAssertionHandler, "handleFailureInFunction:file:lineNumber:isFatal:description:", v20, v21, 4046, 0, "collaborator selection extends past end of storage (%{public}@ > %lu)", v22, [v23 length]);
            }

            v24 = [(CRLWPRep *)v54 storage];
            v25 = v15 > [v24 length];

            if (!v25)
            {
              v26 = [(CRLCanvasRep *)v54 canvas];
              [v26 viewScale];
              v28 = v27;

              if (v13)
              {
                v29 = [(CRLWPRep *)v54 p_newSelectionPathForSelection:v53 transform:0 headPinRect:0 tailPinRect:0];
                if (v29)
                {
                  v30 = *&CGAffineTransformIdentity.tx;
                  *&buf[16] = *&CGAffineTransformIdentity.c;
                  *&buf[32] = v30;
                  *buf = *&CGAffineTransformIdentity.a;
                  v46[2](v46, v29, buf, v6, 0);
                  CFRelease(v29);
                }
              }

              else if ([(CRLWPRep *)v54 p_allowCaretForSelection:v53])
              {
                [(CRLWPRep *)v54 p_caretRectForSelection:v53];
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
                  [(CRLWPRep *)v54 lineMetricsAtCharIndex:range];
                  v35 = [(CRLWPRep *)v54 columnForCharIndex:range];
                  v36 = [v35 textIsVertical];
                  if ((v36 & 1) == 0)
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
                    if (v36)
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
                    [(CRLCanvasRep *)v54 transformToConvertNaturalToLayerRelative];
                    v55[1] = v57;
                    v55[2] = v58;
                    v55[0] = v56;
                    v46[2](v46, v38, v55, v6, 1);
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
    v20 = self;
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
      v20 = self;
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
      v20 = self;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "Collaborator Cursor: Actually re-generating renderable for WPRep: %{public}@", buf, 0xCu);
    }

    v8 = +[CRLCanvasRenderable renderable];
    +[CATransaction begin];
    [CATransaction setDisableActions:1];
    v13 = _NSConcreteStackBlock;
    v14 = 3221225472;
    v15 = sub_1004784D8;
    v16 = &unk_101865510;
    v17 = self;
    v9 = v8;
    v18 = v9;
    [(CRLWPRep *)self p_withCollaboratorCursorPerformBlock:&v13];
    [CATransaction commit:v13];
    self->_collaboratorCursorRenderableValid = 1;
  }

  v11 = self;
  objc_sync_enter(v11);
  if (v9)
  {
    objc_storeStrong(&v11->_collaboratorCursorRenderable, v9);
  }

  else
  {
    v9 = v11->_collaboratorCursorRenderable;
  }

  objc_sync_exit(v11);

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
  v3 = [(CRLCanvasRep *)self canvas];
  if ([v3 spellCheckingSuppressed])
  {
    v4 = 0;
  }

  else
  {
    v5 = [(CRLCanvasRep *)self canvas];
    if ([v5 isCanvasInteractive])
    {
      v6 = +[_TtC8Freeform21CRLWPObjcUserDefaults sharedUserDefaults];
      v4 = [v6 spellCheckingEnabled];
    }

    else
    {
      v4 = 0;
    }
  }

  return v4;
}

- (BOOL)p_automaticTextSubstitutionEnabled
{
  v3 = [(CRLCanvasRep *)self canvas];
  if ([v3 isCanvasInteractive])
  {
    v4 = [(CRLCanvasRep *)self canvas];
    v5 = [v4 spellCheckingSuppressed] ^ 1;
  }

  else
  {
    LOBYTE(v5) = 0;
  }

  return v5;
}

- (BOOL)p_needsSpellChecker
{
  v3 = [(CRLWPRep *)self p_spellCheckingEnabled]|| [(CRLWPRep *)self p_automaticTextSubstitutionEnabled];
  v4 = [(CRLWPRep *)self storage];
  if ([v4 wpKind] != 7)
  {
    v5 = [(CRLWPRep *)self layout];
    if (![v5 isInstructional])
    {
      v7 = [(CRLWPRep *)self storage];
      v8 = [v7 length];

      if (v8)
      {
        return v3;
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
    v3 = [(CRLWPRep *)self storage];
    v4 = [CRLWPStorageSpellChecker newSpellCheckerForStorage:v3 selectionPath:0 orSearchCanvasDelegate:0];
    spellChecker = self->_spellChecker;
    self->_spellChecker = v4;

    v9 = +[NSNotificationCenter defaultCenter];
    [v9 addObserver:self selector:"p_spellcheckFinished:" name:@"CRLWPBackgroundSpellCheckCompletedNotification" object:self->_spellChecker];
  }
}

- (void)p_spellcheckFinished:(id)a3
{
  objc_initWeak(&location, self);
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100478E20;
  v7[3] = &unk_101865598;
  objc_copyWeak(&v8, &location);
  v4 = objc_retainBlock(v7);
  if (a3)
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

- (void)didDrawInLayer:(id)a3 context:(CGContext *)a4
{
  v4.receiver = self;
  v4.super_class = CRLWPRep;
  [(CRLCanvasRep *)&v4 didDrawInLayer:a3 context:a4];
}

- (void)p_selectionChangedNotification:(id)a3
{
  v4 = [a3 userInfo];
  if (v4)
  {
    v16 = v4;
    v5 = [v4 objectForKeyedSubscript:@"CRLWPEditorKey"];
    v6 = [(CRLCanvasRep *)self interactiveCanvasController];
    v7 = [v5 interactiveCanvasController];
    v8 = v7;
    if (v7 == v6)
    {
      v9 = [v5 storage];
      v10 = [(CRLWPRep *)self storage];

      if (v9 == v10)
      {
        self->_selectionChanged = 1;
        v11 = [v16 objectForKeyedSubscript:@"CRLWPEditorSelectionFlagsKey"];
        self->_newSelectionFlags = [v11 unsignedIntegerValue];

        newSelectionFlags = self->_newSelectionFlags;
        if ((newSelectionFlags & 0x100) != 0)
        {
          v13 = [(CRLCanvasRep *)self canvas];
          [v13 invalidateReps];

          newSelectionFlags = self->_newSelectionFlags;
        }

        self->_hudStateDirty = (newSelectionFlags & 0x800) == 0;
        v14 = [(CRLWPRep *)self layout];
        v15 = [v14 layoutIsValid];

        if (v15)
        {
          [(CRLWPRep *)self i_setNeedsDisplayForSelectionChange];
        }

        [(CRLCanvasRep *)self invalidateKnobs];
      }
    }

    else
    {
    }

    v4 = v16;
  }
}

- (void)p_updateCaretLayerColor
{
  caretLayer = self->_caretLayer;
  if (caretLayer)
  {
    if ([(CAShapeLayer *)caretLayer fillColor])
    {
      v4 = [(CRLWPRep *)self p_caretLayerColor];
      if (v4)
      {
        v5 = v4;
        if (!CGColorEqualToColor([(CAShapeLayer *)self->_caretLayer fillColor], v4))
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
  v3 = [(CRLWPRep *)self overrideCaretColor];

  if (v3)
  {
    v4 = [(CRLWPRep *)self overrideCaretColor];
    v5 = [v4 CGColor];

    return v5;
  }

  else
  {

    return [(CRLWPRep *)self p_highlightLineColor];
  }
}

- (CGColor)p_highlightLineColor
{
  v2 = [CRLColor colorWithRed:0.0 green:0.435294118 blue:0.890196078 alpha:1.0];
  v3 = [v2 CGColor];

  return v3;
}

- (CGAffineTransform)transformToConvertNaturalToScaledRoot
{
  memset(&v13, 0, sizeof(v13));
  v5 = [(CRLWPRep *)self layout];
  v6 = v5;
  if (v5)
  {
    [v5 transformInRoot];
  }

  else
  {
    memset(&v13, 0, sizeof(v13));
  }

  v7 = [(CRLCanvasRep *)self canvas];
  [v7 viewScale];
  v9 = v8;

  t1 = v13;
  CGAffineTransformMakeScale(&v11, v9, v9);
  return CGAffineTransformConcat(retstr, &t1, &v11);
}

- (id)selectionForDragAndDropNaturalPoint:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  v6 = [(CRLWPRep *)self storage];
  v7 = [v6 length];

  if (v7)
  {
    v16 = 0;
    v8 = [(CRLWPRep *)self layout];
    v9 = [CRLWPColumn charIndexFromPoint:0 allowPastBreak:&v16 isAtEndOfLine:v8 inLayoutTarget:x, y];

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

- (id)textEditorForDropIntoStorage:(id)a3
{
  v4 = a3;
  v5 = [(CRLWPRep *)self textEditor];
  if (v5)
  {
    v6 = [(CRLWPRep *)self storage];

    if (v6 != v4)
    {
      v7 = +[CRLAssertionHandler _atomicIncrementAssertCount];
      if (qword_101AD5A10 != -1)
      {
        sub_10137A81C();
      }

      v8 = off_1019EDA68;
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        v22 = [(CRLWPRep *)self storage];
        *buf = 67110402;
        v24 = v7;
        v25 = 2082;
        v26 = "[CRLWPRep textEditorForDropIntoStorage:]";
        v27 = 2082;
        v28 = "/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLWP/CRLWPRep.mm";
        v29 = 1024;
        v30 = 4393;
        v31 = 2112;
        v32 = v4;
        v33 = 2112;
        v34 = v22;
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
      v12 = [(CRLWPRep *)self storage];
      [CRLAssertionHandler handleFailureInFunction:v10 file:v11 lineNumber:4393 isFatal:0 description:"Specified storage (%@) is not the rep storage (%@).", v4, v12];
    }
  }

  else
  {
    v13 = objc_opt_class();
    v14 = [v4 parentInfo];
    v15 = sub_100014370(v13, v14);

    v16 = objc_alloc([(CRLWPRep *)self wpEditorClass]);
    v17 = [(CRLCanvasRep *)self interactiveCanvasController];
    v18 = [v17 editingCoordinator];
    v19 = [(CRLCanvasRep *)self interactiveCanvasController];
    v20 = [v16 initWithEditingCoordinator:v18 enclosingShape:v15 icc:v19];

    v5 = v20;
  }

  return v5;
}

- (BOOL)isDragPoint:(CGPoint)a3 inSelection:(id)a4 includeEndpoints:(BOOL)a5
{
  v5 = a5;
  y = a3.y;
  x = a3.x;
  v9 = a4;
  if ([v9 isRange])
  {
    v10 = [(CRLWPRep *)self layout];
    v11 = [CRLWPColumn charIndexFromPoint:0 allowPastBreak:0 allowNotFound:0 isAtEndOfLine:0 leadingEdge:v10 inLayoutTarget:x, y];

    if (v5)
    {
      v12 = 3;
    }

    else
    {
      v12 = 0;
    }

    v13 = [v9 containsCharacterAtIndex:v11 withOptions:v12];
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

- (_TtC8Freeform12CRLWPStorage)storageForDragDropOperation
{
  v3 = [(CRLWPRep *)self storage];
  v4 = [(CRLCanvasRep *)self parentRep];
  v11 = sub_1003035DC(v4, 1, v5, v6, v7, v8, v9, v10, &OBJC_PROTOCOL___CRLWPRepParent);

  if (v11 && (objc_opt_respondsToSelector() & 1) != 0)
  {
    v12 = [v11 storageForDragDropOperation];

    v3 = v12;
  }

  return v3;
}

- (id)backgroundColorForDragPreviewOfSelection:(id)a3
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
  v3 = [(CRLWPRep *)self primaryFindResultSearchReference];
  v4 = [(CRLCanvasRep *)self interactiveCanvasController];
  [v4 canvasInvalidatedForRep:self];

  v5 = [(CRLCanvasRep *)self interactiveCanvasController];
  v6 = [v5 canvas];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100479B94;
  v8[3] = &unk_10185D010;
  v8[4] = self;
  v7 = v3;
  v9 = v7;
  [v6 performBlockAfterLayoutIfNecessary:v8];
}

- (void)pulseAnimationDidStop:(id)a3
{
  pulseArrayController = self->_pulseArrayController;
  if (pulseArrayController == a3)
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

      v8 = [(CRLCanvasRep *)self interactiveCanvasController];
      v9 = [v8 primaryFindResultSearchReference];
      v10 = v9 == 0;

      if (!v10)
      {
        v11 = [(CRLCanvasRep *)self interactiveCanvasController];
        v12 = [v11 primaryFindResultSearchReference];
        v13 = [(CRLWPRep *)self primaryFindResultSearchReference];
        v14 = [v12 isEqual:v13];

        if (v14)
        {
          [(CRLWPRep *)self p_clearICCPrimaryFindResultSearchReference];
        }
      }

      [(CRLWPRep *)self p_setPrimaryFindResultSearchReference:0];
      [(CRLWPRep *)self p_updateForCurrentSelectionWithFlags:0];
      [(CRLCanvasRep *)self invalidateKnobs];
      v15 = [(CRLCanvasRep *)self interactiveCanvasController];
      [v15 canvasInvalidatedForRep:self];
    }

    v16 = [(CRLWPRep *)self primaryFindResultSearchReference];
    [v16 setPulseHighlight:0];
  }
}

- (void)pulseAnimationDidStopForPulse:(id)a3
{
  caretPulseController = self->_caretPulseController;
  if (caretPulseController == a3)
  {
    self->_caretPulseController = 0;

    v5 = [(CRLCanvasRep *)self interactiveCanvasController];
    [v5 canvasInvalidatedForRep:self];
  }
}

- (unint64_t)pulseAnimationStyle:(id)a3
{
  v4 = [(CRLWPRep *)self primaryFindResultSearchReference];

  if (v4)
  {
    v5 = [(CRLWPRep *)self primaryFindResultSearchReference];
    v4 = [v5 pulseAnimationStyle];
  }

  return v4;
}

- (void)p_setPulseControllerActive:(BOOL)a3 autohide:(BOOL)a4
{
  pulseArrayController = self->_pulseArrayController;
  if (a3)
  {
    v6 = a4;
    if (!pulseArrayController)
    {
      v7 = [[CRLWPHighlightArrayController alloc] initWithZOrder:self delegate:8.0];
      v8 = self->_pulseArrayController;
      self->_pulseArrayController = v7;

      pulseArrayController = self->_pulseArrayController;
    }

    [(CRLWPHighlightArrayController *)pulseArrayController setShouldPulsate:1];
    [(CRLWPHighlightArrayController *)self->_pulseArrayController setAutohide:v6];
    v9 = [(CRLWPRep *)self layout];
    v10 = v9;
    if (v9)
    {
      [v9 transformInRoot];
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

    v12 = [(CRLCanvasRep *)self canvas];
    [v12 viewScale];
    [(CRLWPHighlightArrayController *)self->_pulseArrayController setViewScale:?];
  }

  else if (pulseArrayController)
  {
    self->_pulseArrayController = 0;
  }
}

- (BOOL)p_doesRepIntersectSearchReference:(id)a3
{
  v4 = a3;
  v5 = objc_opt_class();
  v6 = sub_100014370(v5, v4);
  v7 = v6;
  if (v6 && ([v6 storage], v8 = objc_claimAutoreleasedReturnValue(), -[CRLWPRep storage](self, "storage"), v9 = objc_claimAutoreleasedReturnValue(), v9, v8, v8 == v9))
  {
    v10 = [v7 selection];
    v11 = v10;
    if (v10)
    {
      [v10 range];
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

- (void)i_primaryFindResultChanged:(id)a3
{
  v5 = a3;
  if ([(CRLWPRep *)self p_doesRepIntersectSearchReference:?]|| ([(CRLWPRep *)self primaryFindResultSearchReference], v4 = objc_claimAutoreleasedReturnValue(), v4, v4))
  {
    [(CRLWPRep *)self p_setPrimaryFindResultSearchReference:v5];
  }
}

- (void)p_setPrimaryFindResultSearchReference:(id)a3
{
  v10 = a3;
  v4 = [(CRLWPRep *)self p_doesRepIntersectSearchReference:?];
  pulseArrayController = self->_pulseArrayController;
  if (v4)
  {
    [(CRLWPHighlightArrayController *)pulseArrayController stop];
    -[CRLWPRep p_setPulseControllerActive:autohide:](self, "p_setPulseControllerActive:autohide:", v10 != 0, [v10 autohideHighlight]);
    v6 = objc_opt_class();
    v7 = sub_100014370(v6, v10);
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
  v8 = [(CRLWPRep *)self layout];
  [v8 invalidate];

  v9 = [(CRLCanvasRep *)self interactiveCanvasController];
  [v9 canvasInvalidatedForRep:self];
}

- (void)i_setSearchReferencesToHighlight:(id)a3
{
  v9 = a3;
  v4 = [(CRLWPRep *)self storage];
  v5 = [v9 objectForKeyedSubscript:v4];

  v6 = [(CRLWPRep *)self searchReferences];

  if (v6 != v5)
  {
    [(CRLWPRep *)self setSearchReferences:v5];
    self->_searchHitsAreInvalid = 1;
    v7 = [(CRLWPRep *)self layout];
    [v7 invalidate];

    v8 = [(CRLCanvasRep *)self interactiveCanvasController];
    [v8 canvasInvalidatedForRep:self];

    [(CRLCanvasRep *)self invalidateKnobs];
  }
}

- (void)prepareLayoutForImagingSearchReferencesAsActive:(BOOL)a3 usingBlock:(id)a4
{
  v4 = a3;
  v6 = a4;
  v7 = [(CRLWPRep *)self storage];
  v8 = [v7 wpKind];

  if (v8 >= 3)
  {
    v9 = objc_opt_class();
    v10 = [(CRLWPRep *)self layout];
    v11 = sub_100014370(v9, v10);

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

    v15 = [v11 layoutController];
    if (!v15)
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

    if (v4)
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

    [v15 validateLayoutWithDependencies:v11];
    if ([v11 layoutIsValid])
    {
      v6[2](v6);
    }

    [(CRLWPRep *)self setBackgroundColor:0];
    CGColorRelease(v20);
    [v15 validateLayoutWithDependencies:v11];
  }

  else
  {
    v6[2](v6);
  }
}

- (void)p_updateHighlights
{
  v3 = [(CRLWPRep *)self searchReferences];
  v4 = [v3 count];

  highlightArrayController = self->_highlightArrayController;
  if (v4)
  {
    if (!highlightArrayController)
    {
      v6 = [[CRLWPHighlightArrayController alloc] initWithZOrder:self delegate:3.0];
      v7 = self->_highlightArrayController;
      self->_highlightArrayController = v6;
    }

    v8 = [(CRLWPRep *)self layout];
    v9 = v8;
    if (v8)
    {
      [v8 transformInRoot];
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

    v11 = [(CRLCanvasRep *)self canvas];
    [v11 viewScale];
    [(CRLWPHighlightArrayController *)self->_highlightArrayController setViewScale:?];

    [(CRLWPHighlightArrayController *)self->_highlightArrayController reset];
    v12 = [(CRLWPRep *)self searchReferences];
    v13 = [v12 count];

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

- (CGPath)newPathForSearchReference:(id)a3
{
  v4 = [a3 selectionPath];
  v5 = [v4 mostSpecificSelectionOfClass:objc_opt_class()];

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
      v17 = [(CRLWPRep *)self columns];
      v18 = [v17 countByEnumeratingWithState:&v40 objects:v44 count:16];
      if (v18)
      {
        v19 = *v41;
LABEL_7:
        v20 = 0;
        while (1)
        {
          if (*v41 != v19)
          {
            objc_enumerationMutation(v17);
          }

          v21 = *(*(&v40 + 1) + 8 * v20);
          [v21 frameBounds];
          if (sub_10011EF78(v22, v23, v24, v25, v10, v12))
          {
            break;
          }

          if (v18 == ++v20)
          {
            v18 = [v17 countByEnumeratingWithState:&v40 objects:v44 count:16];
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

- (id)imageForSearchReference:(id)a3 forPath:(CGPath *)a4 shouldPulsate:(BOOL)a5
{
  v5 = a5;
  v7 = [a3 selectionPath];
  v8 = [v7 mostSpecificSelectionOfClass:objc_opt_class()];

  [v8 range];
  if (v9)
  {
    LOBYTE(v12) = 0;
    v10 = [(CRLWPRep *)self textImageForSelection:v8 frame:0 usingGlyphRect:0 shouldPulsate:v5 suppressInvisibles:0 suppressChildReps:0 drawBackground:-1.0 inset:v12];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (void)animationDidStop:(id)a3 finished:(BOOL)a4
{
  v10 = a3;
  [CRLWPRepHelper animationDidStop:"animationDidStop:caretLayer:floatingCaretLayer:" caretLayer:? floatingCaretLayer:?];
  v5 = [(CRLWPRep *)self floatingCaretLayer];
  v6 = [v5 animationForKey:@"dropAnimation"];

  v7 = v10;
  if (v6 == v10)
  {
    v8 = [(CRLWPRep *)self floatingCaretLayer];
    [v8 removeFromSuperlayer];

    [(CRLWPRep *)self setFloatingCaretLayer:0];
    v9 = [(CRLCanvasRep *)self interactiveCanvasController];
    [v9 invalidateOverlayLayersForRep:self];

    v7 = v10;
  }
}

- (NSArray)scribbleCapableElements
{
  v4 = self;
  v2 = [NSArray arrayWithObjects:&v4 count:1];

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

- (void)scribbleSetSelectionForBeginEditingWithBoundsPoint:(CGPoint)a3 tappedInRep:(id)a4
{
  y = a3.y;
  x = a3.x;
  v7 = a4;
  v8 = [(CRLCanvasRep *)self canvas];
  v9 = [v8 canvasController];

  v10 = [v9 editorController];
  v11 = [v10 mostSpecificCurrentEditorOfClass:objc_opt_class()];

  v12 = [v11 storage];
  v13 = [v7 storage];

  if (v12 != v13)
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

  [v9 convertBoundsToUnscaledPoint:{x, y}];
  [(CRLCanvasRep *)self convertNaturalPointFromUnscaledCanvas:?];
  v18 = v17;
  v20 = v19;
  v35 = 0;
  v21 = [v7 layout];
  LOBYTE(v32) = 0;
  v22 = [CRLWPColumn charIndexFromPoint:0 allowPastBreak:0 allowNotFound:1 pastCenterGoesToNextChar:1 constrainToAscentAndDescent:&v35 isAtEndOfLine:0 leadingEdge:v18 ignoreEmptyColumns:v20 inLayoutTarget:v32, v21];

  v23 = v35;
  if ([(CRLWPRep *)self scribbleExceedsVerticalDistanceForNearestCharIndex:v22 boundsPoint:v35 isAtEndOfLine:x, y])
  {
    v24 = [v7 layout];
    LOBYTE(v33) = 0;
    v22 = [CRLWPColumn charIndexFromPoint:0 allowPastBreak:0 allowNotFound:1 pastCenterGoesToNextChar:0 constrainToAscentAndDescent:&v35 isAtEndOfLine:0 leadingEdge:v18 ignoreEmptyColumns:v20 inLayoutTarget:v33, v24];

    v23 = v35;
  }

  v25 = [CRLWPSelection alloc];
  v26 = [v7 storage];
  LOBYTE(v34) = 1;
  v27 = [(CRLWPSelection *)v25 initWithType:0 range:v22 styleInsertionBehavior:0 caretAffinity:0 smartFieldRange:v23 leadingEdge:0x7FFFFFFFFFFFFFFFLL storage:0, v34, v26];

  v28 = [v9 selectionModelTranslator];
  v29 = [v7 storage];
  v30 = [v28 selectionPathForSelection:v27 onStorage:v29];

  v31 = [v9 editorController];
  [v31 setSelectionPath:v30];
}

- (BOOL)scribbleExceedsVerticalDistanceForNearestCharIndex:(unint64_t)a3 boundsPoint:(CGPoint)a4 isAtEndOfLine:(BOOL)a5
{
  if (a3 == 0x7FFFFFFFFFFFFFFFLL)
  {
    return 1;
  }

  y = a4.y;
  [(CRLWPRep *)self caretRectForCharIndex:a3 caretAffinity:a5, a4.x];
  [(CRLCanvasRep *)self convertNaturalPointToUnscaledCanvas:sub_100120414(v8, v9, v10, v11)];
  v13 = v12;
  v15 = v14;
  v16 = [(CRLCanvasRep *)self canvas];
  v17 = [v16 canvasController];

  [v17 convertUnscaledToBoundsPoint:{v13, v15}];
  v5 = vabdd_f64(y, v18) > 100.0;

  return v5;
}

- (CGRect)scaledScribbleEditingFrame
{
  v3 = [(CRLCanvasRep *)self interactiveCanvasController];
  [(CRLCanvasRep *)self frameInUnscaledCanvas];
  [v3 convertUnscaledToBoundsRect:?];
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
  v2 = [(CRLWPRep *)self textEditor];
  v3 = v2 != 0;

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
      v8 = self;
      v9 = v3;
      v7 = v4;
      v5 = v4;
      dispatch_async(&_dispatch_main_q, v6);
    }
  }
}

- (CGRect)p_convertRectIntoZoomCoordinates:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v8 = [(CRLCanvasRep *)self interactiveCanvasController];
  [(CRLCanvasRep *)self convertNaturalRectToUnscaledCanvas:x, y, width, height];
  [v8 convertUnscaledToBoundsRect:?];
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

- (id)p_textEditorForTextStorage:(id)a3
{
  v4 = a3;
  v13 = 0;
  v14 = &v13;
  v15 = 0x3032000000;
  v16 = sub_10047C798;
  v17 = sub_10047C7A8;
  v18 = 0;
  v5 = [(CRLCanvasRep *)self interactiveCanvasController];
  v6 = [v5 editorController];
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_10047C7B0;
  v10[3] = &unk_1018657E0;
  v7 = v4;
  v11 = v7;
  v12 = &v13;
  [v6 enumerateEditorsOnStackUsingBlock:v10];

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
  v2 = self;
  CRLWPRep.hyperlinkRegions.getter();

  sub_100006370(0, &qword_101A13808);
  v3.super.isa = Array._bridgeToObjectiveC()().super.isa;

  return v3.super.isa;
}

- (CGRect)getCurrentTextFieldBounds
{
  v2 = self;
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

- (id)contextMenuConfigurationAtPoint:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  v5 = self;
  v6 = sub_100CD8490(v5, x, y);

  return v6;
}

- (id)contextMenuPreviewForHighlightingMenuAtPoint:(CGPoint)a3 withConfiguration:(id)a4
{
  y = a3.y;
  x = a3.x;
  v7 = a4;
  v8 = self;
  v9 = sub_100CD9C7C(v7, v8, x, y);

  return v9;
}

@end