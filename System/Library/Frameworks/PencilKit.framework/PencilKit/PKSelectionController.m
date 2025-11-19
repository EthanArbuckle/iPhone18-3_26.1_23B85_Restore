@interface PKSelectionController
+ (id)_orderedStrokes:(void *)a3 relativeToStrokeOrderInDrawing:;
+ (id)_selectStrandedBitmapStrokesForIntersectedStrokesIfNecessary:(void *)a3 visibleOnscreenStrokes:;
- (BOOL)_hasExternalElementsInAttachment:(id *)a1;
- (BOOL)_hasExternalElementsSelectedInAttachment:(_BOOL8)a1;
- (BOOL)dropInteraction:(id)a3 canHandleSession:(id)a4;
- (BOOL)isRTL;
- (CGAffineTransform)transformFromStrokeSpaceToViewInDrawing:(SEL)a3;
- (CGColor)selectionColor;
- (CGRect)attachmentBoundsForDrawing:(id)a3;
- (PKStrokeSelectionImageConfig)cachedImageConfigForSelection:(uint64_t)a3 scaleStrategy:(uint64_t)a4 highlighted:;
- (__n128)_pointInStrokeSpace:(double)a3 inDrawing:(double)a4;
- (double)_scrollContent:(double)a3;
- (double)_scrollViewDrawingFrame;
- (double)_selectionOffsetForDrawing:(uint64_t)a1;
- (double)autoscrollForPointIfNecessary:(double)a3;
- (double)calculateFrameForSelectionView:(void *)a3 inDrawing:;
- (double)closestPointForPastedSelectionRect:(double)a3 withDrawing:(double)a4;
- (double)editMenuTargetRect;
- (double)scaleForDrawing:(id)a3;
- (id)_IDsFromExternalElements:(void *)a1;
- (id)_attachmentForSelectionRect:(double)a3;
- (id)_attachmentForStrokeSelection:(id *)a1;
- (id)_commitStrokeSelection:(void *)a3 toDrawing:(uint64_t)a4 selectionAction:(uint64_t)a5 selectionType:;
- (id)_commitStrokeSelection:(void *)a3 toDrawing:(uint64_t)a4 selectionAction:(void *)a5 inkChanges:(uint64_t)a6 selectionType:(void *)a7 withCompletion:;
- (id)_contextMenuInteraction:(void *)a3 configurationForExternalElement:(void *)a4 inAttachment:;
- (id)_contextMenuInteraction:(void *)a3 previewForHighlightingMenuWithConfiguration:(void *)a4 forExternalElement:(void *)a5 inAttachment:;
- (id)_currentAttachment;
- (id)_didDuplicateExternalElements:(void *)a3 inAttachment:;
- (id)_didLongPressElement:(void *)a3 withGesture:(void *)a4 inAttachment:;
- (id)_drawingForSelectionRect:(double)a3;
- (id)_elementsForSpaceInsertedAtPoint:(double)a3 inAttachment:(double)a4;
- (id)_externalElementsAtLocation:(double)a3 inAttachment:(double)a4;
- (id)_externalElementsForIDs:(void *)a3 inAttachment:;
- (id)_externalElementsInAttachment:(id *)a1;
- (id)_externalElementsInRect:(double)a3 inAttachment:(double)a4;
- (id)_findInteractiveStrokesFromStrokes:(void *)a3 inDrawing:;
- (id)_firstStrokesInStrokes:(id)a3;
- (id)_itemProviderForExternalElements:(void *)a3 inAttachment:;
- (id)_lastStrokesInStrokes:(id)a3;
- (id)_pasteboardRepresentationsForExternalElements:(void *)a3 inAttachment:;
- (id)_selectedExternalElementsContainsPoint:(double)a3 inAttachment:(double)a4;
- (id)_selectedExternalElementsInAttachment:(uint64_t)a1;
- (id)_strokeForLassoPath:(void *)a3 inDrawing:;
- (id)_strokeSelectionForDropSession:(uint64_t)a1;
- (id)_visibleOnscreenStrokesForDrawing:(uint64_t)a1;
- (id)_visibleOnscreenStrokesIncludingCurrentSelection:(void *)a3 forDrawing:;
- (id)_visibleStrokesWithinExtendedBounds:(void *)a3 forDrawing:;
- (id)applySpaceInsertionWithStrokeSelection:(void *)a3 inDrawing:(void *)a4 offset:(CGFloat)a5 completion:;
- (id)drawingForUUID:(uint64_t)a1;
- (id)dropInteraction:(id)a3 previewForDroppingItem:(id)a4 withDefault:(id)a5;
- (id)dropInteraction:(id)a3 sessionDidUpdate:(id)a4;
- (id)editMenuActionsForConfiguration:(uint64_t)a1;
- (id)initWithTiledView:(id *)a1;
- (id)selectionInteraction;
- (id)topView;
- (int64_t)_dropInteraction:(id)a3 dataOwnerForSession:(id)a4;
- (uint64_t)_externalElements:(void *)a3 locationOutOfBounds:(double)a4 inAttachment:(double)a5;
- (uint64_t)_hasStrokesOrExternalElementsSelectedInAttachment:(uint64_t)a1;
- (uint64_t)_isValidDropPointForStrokes:(double)a3;
- (uint64_t)_isValidDropPointForStrokes:(double)a3 didInsertNewAttachment:(double)a4;
- (uint64_t)_liveDrawingIsAtEndOfDocument;
- (uint64_t)_selectionInteractionCanPerformAction:(void *)a3 withSender:(void *)a4 inAttachment:;
- (uint64_t)contentTypeForIntersectedStrokes:(void *)a3 inDrawing:;
- (uint64_t)hasStrokesOrElementsSelection;
- (uint64_t)refinementEnabled;
- (uint64_t)shouldClampInputPoints;
- (uint64_t)supportsCopyAsText;
- (void)_addItemsToPasteboard:(id)a3;
- (void)_clearExternalSelectionInAttachment:(id *)a1;
- (void)_contextMenuInteraction:(void *)a3 willDisplayMenuForConfiguration:(void *)a4 animator:(void *)a5 forExternalElement:(void *)a6 inAttachment:;
- (void)_contextMenuInteraction:(void *)a3 willEndForConfiguration:(void *)a4 animator:(void *)a5 forExternalElement:(void *)a6 inAttachment:;
- (void)_createSelectionViewForDropSession:(char)a3 removeFromSource:(void *)a4 withStrokeSelection:;
- (void)_didAddDrawingAttachmentView;
- (void)_didDeleteExternalElements:(void *)a3 inAttachment:;
- (void)_didDragExternalElements:(void *)a3 withTransform:(void *)a4 inAttachment:;
- (void)_didDropExternalElementsItemProvider:(void *)a3 inAttachment:(void *)a4 withCompletion:;
- (void)_didEndDraggingExternalElements:(void *)a3 inAttachment:;
- (void)_didEndInsertSpaceInAttachment:(id *)a1;
- (void)_didMoveInsertSpace:(double)a3 inAttachment:;
- (void)_didResizeExternalElements;
- (void)_didTapElement:(void *)a3 withGesture:(void *)a4 inAttachment:;
- (void)_dragInteractionWillBeginForExternalElements:(void *)a3 inAttachment:;
- (void)_dragInteractionWillEndForExternalElements:(uint64_t)a3 withOperation:(void *)a4 inAttachment:;
- (void)_imageViewForStrokes:(void *)a3 drawing:(__int128 *)a4 drawingTransform:(void *)a5 coordinateSpace:(void *)a6 completion:;
- (void)_imageViewForStrokes:(void *)a3 drawing:(void *)a4 completion:;
- (void)_installSelectionViewForCurrentSelectionFromExternalAttachments;
- (void)_layoutViewsIfNecessary;
- (void)_maskImageForStrokes:(uint64_t)a3 drawing:(void *)a4 imageView:(void *)a5 completion:;
- (void)_pasteStrokeSelection:(void *)a3 atPoint:(uint64_t)a4 inDrawing:(double)a5 withSelectionType:(double)a6;
- (void)_refreshExternalElementsInStrokeSelection:(void *)a1;
- (void)_refreshTiledViewWithSelectionForDrawing:(void *)a3 completion:;
- (void)_removeSelectionViewAnimated:(void *)a3 withCompletion:;
- (void)_resetExternalElements:(void *)a3 inAttachment:;
- (void)_resetSelectedStrokeStateForRenderer;
- (void)_selectStrokesWithoutDidSelectStrokesUpdate:(void *)a3 inDrawing:;
- (void)_selectionBeganInDrawing:(void *)a3 withPath:;
- (void)_selectionDrawingTransformForDrawing:(uint64_t)a3@<X8>;
- (void)_selectionRefreshWithChangeToDrawings:(void *)a3 completion:;
- (void)_selectionTransformForStrokes:(void *)a3 atLocation:(int)a4 dragOffsetInDragView:(void *)a5 constrainSelection:(double)a6 inDrawing:(double)a7;
- (void)_setAdditionalStrokes:(void *)a3 inDrawing:(void *)a4 completion:;
- (void)_share:(uint64_t)a1;
- (void)_tearDownSelectionView;
- (void)_willBeginInsertSpaceInAttachment:(id *)a1;
- (void)addTranscriptionToPasteboard:(void *)a1;
- (void)changeColorOfSelection:(uint64_t)a1;
- (void)changeColorOfSelection:(void *)a3 withCompletion:;
- (void)clearExternalSelectionIfNecessary;
- (void)clearSelectionIfNecessaryAnimated:(char)a3 toBeginSelectionGesture:(void *)a4 withCompletion:;
- (void)clearSelectionIfNecessaryAnimated:(void *)a3 withCompletion:;
- (void)clearSelectionIfNecessaryWithCompletion:(uint64_t)a1;
- (void)commitStrokesWithCompletion:(uint64_t)a1;
- (void)copy:(void *)a1;
- (void)copyAll:(uint64_t)a1;
- (void)copyTranscription:(uint64_t)a1;
- (void)createSticker:(uint64_t)a1;
- (void)currentPasteboard;
- (void)cut:(void *)a1;
- (void)dealloc;
- (void)delete:(uint64_t)a1;
- (void)didBeginDraggingSelection;
- (void)didBeginModifyDrawing;
- (void)didBeginSpaceInsertionWithLassoPath:(double)a3 atLocation:(double)a4;
- (void)didBeginSpaceInsertionWithLassoStroke:(id)a3 drawing:(id)a4 addDefaultSpace:(BOOL)a5 strokesAbove:(id)a6 strokesBelow:(id)a7 externalElements:(id)a8;
- (void)didEndDraggingSelection;
- (void)didEndModifyDrawing;
- (void)didEndScroll;
- (void)didMoveStrokeSelectionToLocation:(double)a3;
- (void)didScroll:(double)a3;
- (void)didSelect:(id)a3 lassoStroke:(id)a4 transform:(CGAffineTransform *)a5 drawing:(id)a6;
- (void)didSelect:(id)a3 lassoStroke:(id)a4 transform:(CGAffineTransform *)a5 drawing:(id)a6 selectionType:(int64_t)a7 completion:(id)a8;
- (void)didSelectStrokesNotification:(id)a3;
- (void)dropInteraction:(id)a3 performDrop:(id)a4;
- (void)dropInteraction:(id)a3 sessionDidEnter:(id)a4;
- (void)duplicate:(id *)a1;
- (void)eraseSelection;
- (void)fetchStrokesToSelectAtPoint:(uint64_t)a3 inDrawing:(uint64_t)a4 withSelectionType:(void *)a5 inputType:(void *)a6 existingSelection:(double)a7 completion:(double)a8;
- (void)fetchStrokesToSelectBetweenTopPoint:(void *)a3 bottomPoint:(void *)a4 inDrawing:(double)a5 liveScrollOffset:(double)a6 existingSelection:(double)a7 completion:(double)a8;
- (void)findCompleteTranscriptionForNote:(uint64_t)a1;
- (void)findTranscriptionForType:(void *)a3 withCompletion:;
- (void)findTranscriptionWithCompletion:(uint64_t)a1;
- (void)generateImageForStrokeSelection:(uint64_t)a3 scaleStrategy:(char)a4 highlighted:(void *)a5 withCompletion:;
- (void)getAllHandwritingTranscription:(uint64_t)a1;
- (void)hideStrokes:(void *)a3 inDrawing:;
- (void)insertSpace:(id *)a1;
- (void)insertSpaceAtPoint:(void *)a3 addDefaultSpace:(void *)a4 strokesAbove:(double)a5 strokesBelow:(double)a6;
- (void)lassoSelectStrokesInDrawing:(void *)a3 withPath:;
- (void)moveSelectionViewBasedOnStrokeTransform:(void *)a3 drawing:;
- (void)paste:(uint64_t)a1;
- (void)refine:(uint64_t)a1;
- (void)registerCommandWithUndoManager:(uint64_t)a1;
- (void)selectAll:(id *)a1;
- (void)selectStrokes:(uint64_t)a3 forSelectionType:(void *)a4 inDrawing:;
- (void)selectStrokes:(void *)a3 externalElements:(uint64_t)a4 forSelectionType:(void *)a5 inDrawing:;
- (void)selectStrokes:(void *)a3 externalElements:(uint64_t)a4 forSelectionType:(void *)a5 inDrawing:(void *)a6 completion:;
- (void)setCurrentStrokeSelection:(uint64_t)a1;
- (void)setImageOnSelectionViewForStrokeSelection:(void *)a3 withCompletion:;
- (void)setInsertSpaceEnabled:(uint64_t)a1;
- (void)setupSpaceInsertionControllerIfNecessary;
- (void)straighten:(uint64_t)a1;
- (void)supportsRefinement:(id *)a1;
- (void)translate:(uint64_t)a1;
- (void)updateCurrentSelectionWithNewDrawingIfNecessary:(uint64_t)a1;
- (void)updateCurrentStrokeSelectionTransformForLocation:(double)a3 atLocation:(double)a4 offsetInTouchView:(double)a5;
- (void)updateLiveSelectionForStrokesInLayer:(id)a3 inDrawing:(id)a4;
@end

@implementation PKSelectionController

- (CGColor)selectionColor
{
  if (self)
  {
    WeakRetained = objc_loadWeakRetained(&self->_tiledView);
  }

  else
  {
    WeakRetained = 0;
  }

  v3 = [WeakRetained interactionTintColor];
  v4 = [v3 CGColor];

  return v4;
}

- (BOOL)isRTL
{
  if (self)
  {
    WeakRetained = objc_loadWeakRetained(&self->_tiledView);
  }

  else
  {
    WeakRetained = 0;
  }

  v3 = [WeakRetained effectiveUserInterfaceLayoutDirection] == 1;

  return v3;
}

- (id)selectionInteraction
{
  if (a1)
  {
    a1 = [a1[20] selectionInteraction];
    v1 = vars8;
  }

  return a1;
}

- (void)setupSpaceInsertionControllerIfNecessary
{
  if (a1)
  {
    v2 = a1;
    v3 = a1[18];
    if (!v3)
    {
      v4 = [[PKSpaceInsertionController alloc] initWithSelectionController:a1];
      v5 = v2[18];
      v2[18] = v4;

      v3 = v2[18];
    }

    a1 = v3;
    v1 = vars8;
  }

  return a1;
}

- (void)_layoutViewsIfNecessary
{
  if (a1)
  {
    if ([a1[18] isCurrentlyAddingSpace])
    {
      [a1[18] _layoutViewsIfNecessary];
    }

    WeakRetained = objc_loadWeakRetained(a1 + 15);
    [WeakRetained bounds];
    [a1[20] setFrame:?];
  }
}

- (id)initWithTiledView:(id *)a1
{
  v3 = a2;
  if (a1)
  {
    v25.receiver = a1;
    v25.super_class = PKSelectionController;
    v4 = objc_msgSendSuper2(&v25, sel_init);
    a1 = v4;
    if (v4)
    {
      objc_storeWeak(v4 + 15, v3);
      v5 = objc_alloc_init(PKImageGenerationController);
      v6 = a1[13];
      a1[13] = v5;

      v7 = [MEMORY[0x1E696AD88] defaultCenter];
      [v7 addObserver:a1 selector:sel_didSelectStrokesNotification_ name:@"PKDidSelectStrokesNotification" object:0];

      v8 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
      v9 = dispatch_queue_attr_make_with_qos_class(v8, QOS_CLASS_UTILITY, 0);

      v10 = dispatch_queue_create("com.apple.pencilkit.selection-hull", v9);
      v11 = a1[8];
      a1[8] = v10;

      v12 = [PKSelectionGestureView alloc];
      WeakRetained = objc_loadWeakRetained(a1 + 15);
      [WeakRetained bounds];
      v14 = [(PKSelectionGestureView *)v12 initWithFrame:a1 selectionController:?];
      v15 = a1[20];
      a1[20] = v14;

      v16 = objc_loadWeakRetained(a1 + 15);
      [v16 addSubview:a1[20]];

      v17 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
      v18 = dispatch_queue_attr_make_with_qos_class(v17, QOS_CLASS_USER_INTERACTIVE, 0);

      v19 = dispatch_queue_create("com.apple.PencilKit.SelectionIntersection", v18);
      v20 = a1[7];
      a1[7] = v19;

      v21 = [objc_alloc(MEMORY[0x1E69DC9B8]) initWithDelegate:a1];
      v22 = a1[10];
      a1[10] = v21;

      v23 = objc_loadWeakRetained(a1 + 15);
      [v23 addInteraction:a1[10]];
    }
  }

  return a1;
}

- (id)topView
{
  if (WeakRetained)
  {
    WeakRetained = objc_loadWeakRetained(WeakRetained + 15);
    v1 = vars8;
  }

  return WeakRetained;
}

- (void)dealloc
{
  v3 = +[PKSelectionStatisticsManager sharedStatisticsManager];
  [v3 logEndSelectionSessionIfNecessary];

  v4 = [(UIDropInteraction *)self->_dropInteraction view];

  if (v4)
  {
    v5 = [(UIDropInteraction *)self->_dropInteraction view];
    [v5 removeInteraction:self->_dropInteraction];
  }

  v6.receiver = self;
  v6.super_class = PKSelectionController;
  [(PKSelectionController *)&v6 dealloc];
}

- (uint64_t)shouldClampInputPoints
{
  if (!a1)
  {
    return 0;
  }

  WeakRetained = objc_loadWeakRetained((a1 + 120));
  v2 = [WeakRetained _shouldUpdateHeightOfAttachments];

  return v2;
}

- (void)setInsertSpaceEnabled:(uint64_t)a1
{
  if (a1)
  {
    if (a2)
    {
      v4 = [(PKSelectionController *)a1 setupSpaceInsertionControllerIfNecessary];
    }

    *(a1 + 114) = a2;
    v5 = [(PKSelectionController *)a1 selectionInteraction];
    [v5 setInsertSpaceEnabled:a2];
  }
}

- (uint64_t)hasStrokesOrElementsSelection
{
  if (!a1)
  {
    return 0;
  }

  v1 = [(PKSelectionController *)a1 selectionInteraction];
  v2 = [v1 hasStrokesOrElementsSelection];

  return v2;
}

- (void)setCurrentStrokeSelection:(uint64_t)a1
{
  v3 = a2;
  v4 = v3;
  if (a1)
  {
    if (v3)
    {
      v5 = [v3 strokes];
      v6 = [v5 count];

      if (!v6)
      {
        v7 = os_log_create("com.apple.pencilkit", "Selection");
        if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
        {
          *v15 = 0;
          _os_log_debug_impl(&dword_1C7CCA000, v7, OS_LOG_TYPE_DEBUG, "Selection set to an empty set of strokes. Setting to nil instead", v15, 2u);
        }

        v4 = 0;
      }
    }

    v8 = *(a1 + 128);
    objc_storeStrong((a1 + 128), v4);
    if (v8 != v4)
    {
      if (!v4 || !v8 || ([v8 strokeIdentifiers], v9 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v4, "strokeIdentifiers"), v10 = objc_claimAutoreleasedReturnValue(), v11 = objc_msgSend(v9, "isEqual:", v10), v10, v9, (v11 & 1) == 0))
      {
        v12 = MEMORY[0x1E69E58C0];
        WeakRetained = objc_loadWeakRetained((a1 + 120));
        [v12 cancelPreviousPerformRequestsWithTarget:WeakRetained selector:sel_selectionDidChange object:0];

        v14 = objc_loadWeakRetained((a1 + 120));
        [v14 performSelector:sel_selectionDidChange withObject:0 afterDelay:0.2];
      }
    }
  }
}

- (id)_visibleOnscreenStrokesForDrawing:(uint64_t)a1
{
  v3 = a2;
  if (a1)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 120));
    v5 = [v3 uuid];
    v6 = [WeakRetained _attachmentForUUID:v5];

    v7 = [v6 strokeSpatialCache];
    v8 = v7;
    if (v7 && *(v7 + 8) == 1)
    {
      v9 = [v6 strokeSpatialCache];
      v10 = v9;
      if (v9)
      {
        v11 = *(v9 + 24);
      }

      else
      {
        v11 = 0;
      }

      v12 = v11;
    }

    else
    {
      v12 = 0;
    }
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (id)_visibleOnscreenStrokesIncludingCurrentSelection:(void *)a3 forDrawing:
{
  v39 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if (a1)
  {
    v7 = [MEMORY[0x1E695DFA0] orderedSet];
    v8 = [(PKSelectionController *)a1 _visibleOnscreenStrokesForDrawing:v6];
    WeakRetained = objc_loadWeakRetained((a1 + 120));
    [WeakRetained visibleOnscreenBoundsForDrawing:v6 slack:{*MEMORY[0x1E695F060], *(MEMORY[0x1E695F060] + 8)}];
    v11 = v10;
    v13 = v12;
    v15 = v14;
    v17 = v16;

    v36 = 0u;
    v37 = 0u;
    v34 = 0u;
    v35 = 0u;
    v18 = v8;
    v19 = [v18 countByEnumeratingWithState:&v34 objects:v38 count:16];
    if (v19)
    {
      v20 = *v35;
      do
      {
        for (i = 0; i != v19; ++i)
        {
          if (*v35 != v20)
          {
            objc_enumerationMutation(v18);
          }

          v22 = *(*(&v34 + 1) + 8 * i);
          [v22 _bounds];
          v43.origin.x = v23;
          v43.origin.y = v24;
          v43.size.width = v25;
          v43.size.height = v26;
          v41.origin.x = v11;
          v41.origin.y = v13;
          v41.size.width = v15;
          v41.size.height = v17;
          if (!CGRectContainsRect(v41, v43))
          {
            [v22 _bounds];
            v44.origin.x = v11;
            v44.origin.y = v13;
            v44.size.width = v15;
            v44.size.height = v17;
            if (!CGRectIntersectsRect(v42, v44))
            {
              continue;
            }

            [v22 _bounds];
            DKDPercentRectInsideRect(v27, v28, v29, v30, v11, v13, v15, v17);
            if (v31 <= 0.5)
            {
              continue;
            }
          }

          [v7 addObject:v22];
        }

        v19 = [v18 countByEnumeratingWithState:&v34 objects:v38 count:16];
      }

      while (v19);
    }

    if (v5)
    {
      [v7 addObjectsFromArray:v5];
    }

    v32 = [v7 array];
  }

  else
  {
    v32 = 0;
  }

  return v32;
}

- (void)fetchStrokesToSelectAtPoint:(uint64_t)a3 inDrawing:(uint64_t)a4 withSelectionType:(void *)a5 inputType:(void *)a6 existingSelection:(double)a7 completion:(double)a8
{
  v15 = a2;
  v16 = a5;
  v17 = a6;
  if (a1)
  {
    v18 = [(PKSelectionController *)a1 _visibleOnscreenStrokesIncludingCurrentSelection:v16 forDrawing:v15];
    WeakRetained = objc_loadWeakRetained((a1 + 120));
    v20 = [v15 uuid];
    v21 = [WeakRetained _attachmentForUUID:v20];

    v22[0] = MEMORY[0x1E69E9820];
    v22[1] = 3221225472;
    v22[2] = __120__PKSelectionController_fetchStrokesToSelectAtPoint_inDrawing_withSelectionType_inputType_existingSelection_completion___block_invoke;
    v22[3] = &unk_1E82D9260;
    v22[4] = a1;
    v23 = v15;
    v25 = a3;
    v24 = v17;
    [v21 fetchIntersectedStrokesAtPoint:a3 selectionType:a4 inputType:v18 visibleOnscreenStrokes:v22 completion:{a7, a8}];
  }
}

void __120__PKSelectionController_fetchStrokesToSelectAtPoint_inDrawing_withSelectionType_inputType_existingSelection_completion___block_invoke(uint64_t a1, void *a2)
{
  v10 = a2;
  v3 = [v10 intersectedStrokes];
  *(*(a1 + 32) + 40) = [v10 intersectionAlgorithmType];
  if ([v3 count])
  {
    v4 = [(PKSelectionController *)*(a1 + 32) _findInteractiveStrokesFromStrokes:v3 inDrawing:*(a1 + 40)];

    v5 = *(a1 + 56);
    if (v5 > 6 || ((1 << v5) & 0x43) == 0)
    {
      v6 = [(PKSelectionController *)*(a1 + 32) _visibleOnscreenStrokesForDrawing:?];
      v7 = [PKSelectionController _selectStrandedBitmapStrokesForIntersectedStrokesIfNecessary:v4 visibleOnscreenStrokes:v6];

      v4 = v7;
    }

    v3 = [PKSelectionController _orderedStrokes:v4 relativeToStrokeOrderInDrawing:*(a1 + 40)];
  }

  v8 = v3;
  v9 = objc_alloc_init(PKIntersectionResult);
  [(PKIntersectionResult *)v9 setIntersectedStrokes:v8];
  -[PKIntersectionResult setIntersectionAlgorithmType:](v9, "setIntersectionAlgorithmType:", [v10 intersectionAlgorithmType]);
  -[PKIntersectionResult setContentType:](v9, "setContentType:", [v10 contentType]);
  (*(*(a1 + 48) + 16))();
}

- (id)_findInteractiveStrokesFromStrokes:(void *)a3 inDrawing:
{
  v30 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v24 = a3;
  v22 = v5;
  if (a1)
  {
    v23 = [v5 copy];
    WeakRetained = objc_loadWeakRetained((a1 + 120));
    v7 = [v24 uuid];
    v8 = [WeakRetained _attachmentForUUID:v7];

    if ([v8 isExternalAttachment] && (objc_opt_respondsToSelector() & 1) != 0)
    {
      v9 = [MEMORY[0x1E695DF70] array];
      v10 = [v8 strokeDataUUIDsNonInteractiveFromAttachment];
      if ([v10 count])
      {
        v27 = 0u;
        v28 = 0u;
        v25 = 0u;
        v26 = 0u;
        v11 = v5;
        v12 = [v11 countByEnumeratingWithState:&v25 objects:v29 count:16];
        if (v12)
        {
          v13 = *v26;
          do
          {
            for (i = 0; i != v12; ++i)
            {
              if (*v26 != v13)
              {
                objc_enumerationMutation(v11);
              }

              v15 = *(*(&v25 + 1) + 8 * i);
              v16 = [v15 _strokeDataUUID];
              v17 = [v10 containsObject:v16];

              if ((v17 & 1) == 0)
              {
                [v9 addObject:v15];
              }
            }

            v12 = [v11 countByEnumeratingWithState:&v25 objects:v29 count:16];
          }

          while (v12);
        }

        v18 = MEMORY[0x1E695DFB8];
        v19 = [v9 copy];
        v20 = [v18 orderedSetWithArray:v19];

        v23 = v20;
      }
    }
  }

  else
  {
    v23 = 0;
  }

  return v23;
}

+ (id)_selectStrandedBitmapStrokesForIntersectedStrokesIfNecessary:(void *)a3 visibleOnscreenStrokes:
{
  v45 = *MEMORY[0x1E69E9840];
  v34 = a2;
  v32 = a3;
  objc_opt_self();
  v33 = [MEMORY[0x1E695DFA0] orderedSet];
  v41 = 0u;
  v42 = 0u;
  v39 = 0u;
  v40 = 0u;
  v4 = v32;
  v5 = [v4 countByEnumeratingWithState:&v39 objects:v44 count:16];
  if (v5)
  {
    v6 = *v40;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v40 != v6)
        {
          objc_enumerationMutation(v4);
        }

        v8 = *(*(&v39 + 1) + 8 * i);
        v9 = [v8 _strokeMask];
        v10 = v9 == 0;

        if (!v10)
        {
          v11 = [v8 _strokeMask];
          v12 = [v11 centerlineSlices];
          v13 = v12[1] == *v12;

          if (v13)
          {
            v37 = 0u;
            v38 = 0u;
            v35 = 0u;
            v36 = 0u;
            v14 = v34;
            v15 = [v14 countByEnumeratingWithState:&v35 objects:v43 count:16];
            if (v15)
            {
              v16 = *v36;
              while (2)
              {
                for (j = 0; j != v15; ++j)
                {
                  if (*v36 != v16)
                  {
                    objc_enumerationMutation(v14);
                  }

                  v18 = *(*(&v35 + 1) + 8 * j);
                  [v8 _bounds];
                  v20 = v19;
                  v22 = v21;
                  v24 = v23;
                  v26 = v25;
                  [v18 _bounds];
                  if (DKDDistanceToRectFromRect(v20, v22, v24, v26, v27, v28, v29, v30) < 20.0)
                  {
                    [v33 addObject:v8];
                    goto LABEL_18;
                  }
                }

                v15 = [v14 countByEnumeratingWithState:&v35 objects:v43 count:16];
                if (v15)
                {
                  continue;
                }

                break;
              }
            }

LABEL_18:
          }
        }
      }

      v5 = [v4 countByEnumeratingWithState:&v39 objects:v44 count:16];
    }

    while (v5);
  }

  [v33 unionOrderedSet:v34];

  return v33;
}

+ (id)_orderedStrokes:(void *)a3 relativeToStrokeOrderInDrawing:
{
  v18 = *MEMORY[0x1E69E9840];
  v4 = a2;
  v5 = a3;
  objc_opt_self();
  v6 = [MEMORY[0x1E695DFA0] orderedSetWithCapacity:{objc_msgSend(v4, "count")}];
  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v7 = [v5 strokes];
  v8 = [v7 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v8)
  {
    v9 = *v14;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v14 != v9)
        {
          objc_enumerationMutation(v7);
        }

        v11 = *(*(&v13 + 1) + 8 * i);
        if ([v4 containsObject:v11])
        {
          [v6 addObject:v11];
        }
      }

      v8 = [v7 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v8);
  }

  return v6;
}

- (void)fetchStrokesToSelectBetweenTopPoint:(void *)a3 bottomPoint:(void *)a4 inDrawing:(double)a5 liveScrollOffset:(double)a6 existingSelection:(double)a7 completion:(double)a8
{
  v19 = a2;
  v20 = a3;
  v21 = a4;
  if (a1)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 120));
    v23 = [v19 uuid];
    v24 = [WeakRetained _attachmentForUUID:v23];

    v25[0] = MEMORY[0x1E69E9820];
    v25[1] = 3221225472;
    v25[2] = __129__PKSelectionController_fetchStrokesToSelectBetweenTopPoint_bottomPoint_inDrawing_liveScrollOffset_existingSelection_completion___block_invoke;
    v25[3] = &unk_1E82D92B0;
    v25[4] = a1;
    v26 = v20;
    v27 = v19;
    v29 = a9;
    v30 = a10;
    v31 = a5;
    v32 = a6;
    v33 = a7;
    v34 = a8;
    v28 = v21;
    [v24 fetchIntersectedStrokesBetweenTopPoint:v25 bottomPoint:a5 liveScrollOffset:a6 completion:{a7, a8, a9, a10}];
  }
}

void __129__PKSelectionController_fetchStrokesToSelectBetweenTopPoint_bottomPoint_inDrawing_liveScrollOffset_existingSelection_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 intersectedStrokes];
  *(*(a1 + 32) + 40) = [v3 intersectionAlgorithmType];
  if (v3 && v4)
  {
    v5 = [(PKSelectionController *)*(a1 + 32) _findInteractiveStrokesFromStrokes:v4 inDrawing:*(a1 + 48)];

    v6 = [(PKSelectionController *)*(a1 + 32) _visibleOnscreenStrokesForDrawing:?];
    v7 = [PKSelectionController _selectStrandedBitmapStrokesForIntersectedStrokesIfNecessary:v5 visibleOnscreenStrokes:v6];

    v8 = [PKSelectionController _orderedStrokes:v7 relativeToStrokeOrderInDrawing:*(a1 + 48)];

    v9 = objc_alloc_init(PKIntersectionResult);
    [(PKIntersectionResult *)v9 setIntersectedStrokes:v8];
    -[PKIntersectionResult setIntersectionAlgorithmType:](v9, "setIntersectionAlgorithmType:", [v3 intersectionAlgorithmType]);
    -[PKIntersectionResult setContentType:](v9, "setContentType:", [v3 contentType]);
    v10 = *(a1 + 56);
    if (v10)
    {
      (*(v10 + 16))(v10, v9);
    }

    v4 = v8;
  }

  else
  {
    v11 = os_log_create("com.apple.pencilkit", "Recognition");
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1C7CCA000, v11, OS_LOG_TYPE_DEFAULT, "Had to fall back to a naive geometry method", buf, 2u);
    }

    *(*(a1 + 32) + 40) = 0;
    v12 = [(PKSelectionController *)*(a1 + 32) _visibleOnscreenStrokesIncludingCurrentSelection:*(a1 + 48) forDrawing:?];
    v13 = v12;
    if (*(a1 + 64) == 0.0 && *(a1 + 72) == 0.0)
    {
      v14 = v12;
    }

    else
    {
      v14 = 0;
    }

    v15 = *(a1 + 32);
    v24 = *(a1 + 96);
    v25 = *(a1 + 80);
    v26[0] = MEMORY[0x1E69E9820];
    v26[1] = 3221225472;
    v26[2] = __129__PKSelectionController_fetchStrokesToSelectBetweenTopPoint_bottomPoint_inDrawing_liveScrollOffset_existingSelection_completion___block_invoke_20;
    v26[3] = &unk_1E82D9288;
    v16 = *(a1 + 48);
    v27 = *(a1 + 56);
    v17 = v16;
    v18 = v14;
    v19 = v26;
    if (v15)
    {
      v20 = *(v15 + 72);
      if (v20)
      {
        dispatch_block_cancel(v20);
      }

      objc_initWeak(&location, v15);
      *buf = MEMORY[0x1E69E9820];
      v29 = 3221225472;
      v30 = __146__PKSelectionController__findIntersectedStrokesWithoutRecognitionToSelectBetweenTopPoint_bottomPoint_inDrawing_visibleOnscreenStrokes_completion___block_invoke;
      v31 = &unk_1E82D9328;
      v32 = v17;
      v36 = v25;
      v37 = v24;
      v33 = v18;
      v34 = v19;
      objc_copyWeak(&v35, &location);
      v21 = dispatch_block_create(0, buf);
      v22 = *(v15 + 72);
      *(v15 + 72) = v21;

      v23 = dispatch_time(0, 0);
      dispatch_after(v23, *(v15 + 56), *(v15 + 72));
      objc_destroyWeak(&v35);

      objc_destroyWeak(&location);
    }
  }
}

void __129__PKSelectionController_fetchStrokesToSelectBetweenTopPoint_bottomPoint_inDrawing_liveScrollOffset_existingSelection_completion___block_invoke_20(uint64_t a1, void *a2)
{
  v5 = a2;
  v3 = objc_alloc_init(PKIntersectionResult);
  [(PKIntersectionResult *)v3 setIntersectedStrokes:v5];
  [(PKIntersectionResult *)v3 setIntersectionAlgorithmType:0];
  [(PKIntersectionResult *)v3 setContentType:0];
  v4 = *(a1 + 32);
  if (v4)
  {
    (*(v4 + 16))(v4, v3);
  }
}

void __146__PKSelectionController__findIntersectedStrokesWithoutRecognitionToSelectBetweenTopPoint_bottomPoint_inDrawing_visibleOnscreenStrokes_completion___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 64);
  v3 = *(a1 + 72);
  v4 = *(a1 + 80);
  v5 = *(a1 + 88);
  v6 = *(a1 + 32);
  v7 = *(a1 + 40);
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __146__PKSelectionController__findIntersectedStrokesWithoutRecognitionToSelectBetweenTopPoint_bottomPoint_inDrawing_visibleOnscreenStrokes_completion___block_invoke_2;
  v8[3] = &unk_1E82D9300;
  v9 = v6;
  v10 = *(a1 + 48);
  objc_copyWeak(&v11, (a1 + 56));
  [v9 fetchIntersectedStrokesBetweenPoint:v7 otherPoint:v8 visibleOnscreenStrokes:v2 completion:{v3, v4, v5}];
  objc_destroyWeak(&v11);
}

void __146__PKSelectionController__findIntersectedStrokesWithoutRecognitionToSelectBetweenTopPoint_bottomPoint_inDrawing_visibleOnscreenStrokes_completion___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = [PKSelectionController _orderedStrokes:a2 relativeToStrokeOrderInDrawing:*(a1 + 32)];
  v4 = *(a1 + 40);
  if (v4)
  {
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __146__PKSelectionController__findIntersectedStrokesWithoutRecognitionToSelectBetweenTopPoint_bottomPoint_inDrawing_visibleOnscreenStrokes_completion___block_invoke_3;
    block[3] = &unk_1E82D92D8;
    v7 = v4;
    v6 = v3;
    objc_copyWeak(&v8, (a1 + 48));
    dispatch_async(MEMORY[0x1E69E96A0], block);
    objc_destroyWeak(&v8);
  }
}

void __146__PKSelectionController__findIntersectedStrokesWithoutRecognitionToSelectBetweenTopPoint_bottomPoint_inDrawing_visibleOnscreenStrokes_completion___block_invoke_3(uint64_t a1)
{
  (*(*(a1 + 40) + 16))();
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (WeakRetained)
  {
    v3 = WeakRetained[9];
    WeakRetained[9] = 0;
    v4 = WeakRetained;

    WeakRetained = v4;
  }
}

- (uint64_t)contentTypeForIntersectedStrokes:(void *)a3 inDrawing:
{
  v5 = a2;
  v6 = a3;
  if (a1)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 120));
    v8 = [v6 uuid];
    v9 = [WeakRetained _attachmentForUUID:v8];

    a1 = [v9 contentTypeForIntersectedStrokes:v5];
  }

  return a1;
}

- (void)selectStrokes:(uint64_t)a3 forSelectionType:(void *)a4 inDrawing:
{
  v8 = a2;
  v7 = a4;
  if (a1)
  {
    [(PKSelectionController *)a1 selectStrokes:v8 externalElements:0 forSelectionType:a3 inDrawing:v7 completion:0];
  }
}

- (void)selectStrokes:(void *)a3 externalElements:(uint64_t)a4 forSelectionType:(void *)a5 inDrawing:(void *)a6 completion:
{
  v11 = a2;
  v27 = a3;
  v12 = a5;
  v13 = a6;
  if (a1)
  {
    v14 = +[PKSelectionStatisticsManager sharedStatisticsManager];
    [v14 recordDidMakeSelectionWithType:a4];

    if (([v11 count] || objc_msgSend(v27, "count")) && (v15 = a1[16], objc_msgSend(v15, "strokes"), v16 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v16, "set"), v17 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v11, "set"), v18 = objc_claimAutoreleasedReturnValue(), v19 = objc_msgSend(v17, "isEqualToSet:", v18), v18, v17, v16, v15, (v19 & 1) == 0))
    {
      if (a4 && a4 != 6)
      {
        v24 = +[PKCanvasSessionStatisticsManager sharedStatisticsManager];
        v25 = v24;
        if (v24)
        {
          [(PKCanvasSessionStatisticsManager *)v24 logFeatureUsed:?];
        }
      }

      v26 = [PKSelectionController _orderedStrokes:v11 relativeToStrokeOrderInDrawing:v12];

      v28[0] = MEMORY[0x1E69E9820];
      v28[1] = 3221225472;
      v28[2] = __94__PKSelectionController_selectStrokes_externalElements_forSelectionType_inDrawing_completion___block_invoke;
      v28[3] = &unk_1E82D9350;
      v11 = v26;
      v29 = v11;
      v30 = v27;
      v31 = v12;
      v32 = a1;
      v34 = a4;
      v33 = v13;
      [(PKSelectionController *)a1 clearSelectionIfNecessaryAnimated:v28 withCompletion:?];
    }

    else
    {
      WeakRetained = objc_loadWeakRetained(a1 + 15);
      v21 = [v12 uuid];
      v22 = [WeakRetained _attachmentForUUID:v21];

      if ([v22 isExternalAttachment])
      {
        if ([v11 count] && (objc_opt_respondsToSelector() & 1) != 0)
        {
          v23 = [v11 array];
          [v22 didSelectPreviouslySelectedStrokes:v23];
        }

        else if (![v11 count] && (objc_opt_respondsToSelector() & 1) != 0)
        {
          [v22 didDeselectAllStrokes];
        }
      }

      [a1[19] setSelectionType:a4];
      if (v13)
      {
        v13[2](v13);
      }
    }
  }
}

- (void)selectStrokes:(void *)a3 externalElements:(uint64_t)a4 forSelectionType:(void *)a5 inDrawing:
{
  v11 = a2;
  v9 = a3;
  v10 = a5;
  if (a1)
  {
    [(PKSelectionController *)a1 selectStrokes:v11 externalElements:v9 forSelectionType:a4 inDrawing:v10 completion:0];
  }
}

void __94__PKSelectionController_selectStrokes_externalElements_forSelectionType_inDrawing_completion___block_invoke(uint64_t a1)
{
  v7 = *MEMORY[0x1E69E9840];
  v2 = os_log_create("com.apple.pencilkit", "Selection");
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    v5 = [*(a1 + 32) count];
    LODWORD(v6[0]) = 134217984;
    *(v6 + 4) = v5;
    _os_log_debug_impl(&dword_1C7CCA000, v2, OS_LOG_TYPE_DEBUG, "Selected %lu strokes", v6, 0xCu);
  }

  v3 = [[PKStrokeSelection alloc] initWithStrokes:*(a1 + 32) externalElements:*(a1 + 40) lassoStroke:0 drawing:*(a1 + 48)];
  v4 = *(MEMORY[0x1E695EFD0] + 16);
  v6[0] = *MEMORY[0x1E695EFD0];
  v6[1] = v4;
  v6[2] = *(MEMORY[0x1E695EFD0] + 32);
  [*(a1 + 56) didSelect:v3 lassoStroke:0 transform:v6 drawing:*(a1 + 48) selectionType:*(a1 + 72) completion:*(a1 + 64)];
}

- (void)clearSelectionIfNecessaryAnimated:(void *)a3 withCompletion:
{
  v5 = a3;
  if (a1)
  {
    [(PKSelectionController *)a1 clearSelectionIfNecessaryAnimated:a2 toBeginSelectionGesture:0 withCompletion:v5];
  }
}

- (void)_selectStrokesWithoutDidSelectStrokesUpdate:(void *)a3 inDrawing:
{
  v5 = a2;
  v6 = a3;
  if (a1)
  {
    v7 = [PKSelectionController _orderedStrokes:v5 relativeToStrokeOrderInDrawing:v6];

    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __79__PKSelectionController__selectStrokesWithoutDidSelectStrokesUpdate_inDrawing___block_invoke;
    v8[3] = &unk_1E82D6400;
    v8[4] = a1;
    v5 = v7;
    v9 = v5;
    v10 = v6;
    [(PKSelectionController *)a1 clearSelectionIfNecessaryAnimated:v8 withCompletion:?];
  }
}

void __79__PKSelectionController__selectStrokesWithoutDidSelectStrokesUpdate_inDrawing___block_invoke(uint64_t a1)
{
  [(PKSelectionController *)*(a1 + 32) _resetSelectedStrokeStateForRenderer];
  v2 = *(a1 + 32);
  if (v2)
  {
    v3 = MEMORY[0x1E695EFD0];
    v4 = *(MEMORY[0x1E695EFD0] + 16);
    *(v2 + 168) = *MEMORY[0x1E695EFD0];
    *(v2 + 184) = v4;
    *(v2 + 200) = *(v3 + 32);
  }

  if ([*(a1 + 40) count])
  {
    v5 = [[PKStrokeSelection alloc] initWithStrokes:*(a1 + 40) lassoStroke:0 drawing:*(a1 + 48)];
    [(PKSelectionController *)*(a1 + 32) setCurrentStrokeSelection:v5];
  }
}

- (void)_resetSelectedStrokeStateForRenderer
{
  if (a1)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 120));
    [WeakRetained _resetSelectedStrokeStateForRenderer];
  }
}

- (void)lassoSelectStrokesInDrawing:(void *)a3 withPath:
{
  v5 = a2;
  v6 = a3;
  if (a1)
  {
    v7 = +[PKSelectionStatisticsManager sharedStatisticsManager];
    [v7 recordDidMakeSelectionWithType:0];

    if (*(a1 + 128))
    {
      v8[0] = MEMORY[0x1E69E9820];
      v8[1] = 3221225472;
      v8[2] = __62__PKSelectionController_lassoSelectStrokesInDrawing_withPath___block_invoke;
      v8[3] = &unk_1E82D6400;
      v8[4] = a1;
      v9 = v5;
      v10 = v6;
      [(PKSelectionController *)a1 clearSelectionIfNecessaryWithCompletion:v8];
    }

    else
    {
      [(PKSelectionController *)a1 _selectionBeganInDrawing:v5 withPath:v6];
    }
  }
}

- (void)_selectionBeganInDrawing:(void *)a3 withPath:
{
  v57 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v53 = a3;
  if (a1)
  {
    kdebug_trace();
    v54 = [(PKSelectionController *)a1 _strokeForLassoPath:v53 inDrawing:v5];
    WeakRetained = objc_loadWeakRetained(a1 + 15);
    v7 = [v5 uuid];
    v8 = [WeakRetained _attachmentForUUID:v7];

    v50 = [(PKSelectionController *)a1 _visibleOnscreenStrokesForDrawing:v5];
    v52 = [v5 intersectedStrokesFromStroke:v54 visibleOnscreenStrokes:v8];
    v9 = v53;
    v10 = v8;
    v11 = [(PKSelectionController *)a1 selectionInteraction];
    v12 = [v11 delegate];
    LOBYTE(v8) = objc_opt_respondsToSelector();

    if (v8)
    {
      v13 = [(PKSelectionController *)a1 selectionInteraction];
      v14 = [v13 delegate];
      v15 = [(PKSelectionController *)a1 selectionInteraction];
      v16 = [v10 attachmentView];
      v17 = [v14 selectionInteraction:v15 requestElementsInPath:v9 inAttachment:v16];

      v51 = [(PKSelectionController *)a1 _externalElementsForIDs:v17 inAttachment:v10];
    }

    else
    {
      v51 = 0;
    }

    kdebug_trace();
    v18 = os_log_create("com.apple.pencilkit", "Selection");
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
    {
      v42 = [v52 count];
      v43 = [v10 strokeSpatialCache];
      v44 = v43;
      if (v43)
      {
        v45 = *(v43 + 8);
      }

      else
      {
        v45 = 0;
      }

      v46 = [v50 count];
      v47 = @"NO";
      *buf = 134218498;
      *&buf[4] = v42;
      if (v45)
      {
        v47 = @"YES";
      }

      *&buf[12] = 2112;
      *&buf[14] = v47;
      *&buf[22] = 2048;
      *&buf[24] = v46;
      _os_log_debug_impl(&dword_1C7CCA000, v18, OS_LOG_TYPE_DEBUG, "Found selected %lu strokes; used cached strokes: %@  visibleOnscreenStrokes:%lu", buf, 0x20u);
    }

    v19 = [(PKSelectionController *)a1 selectionInteraction];
    v20 = [v19 delegate];
    v21 = objc_opt_respondsToSelector();

    if ((v21 & 1) == 0 || (v22 = -[PKStrokeSelection initWithStrokes:externalElements:lassoStroke:drawing:]([PKStrokeSelection alloc], "initWithStrokes:externalElements:lassoStroke:drawing:", v52, v51, v54, v5), -[PKSelectionController selectionInteraction](a1), v23 = objc_claimAutoreleasedReturnValue(), [v23 delegate], v24 = objc_claimAutoreleasedReturnValue(), -[PKSelectionController selectionInteraction](a1), v25 = objc_claimAutoreleasedReturnValue(), -[PKStrokeSelection strokeIdentifiers](v22, "strokeIdentifiers"), v26 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v10, "attachmentView"), v27 = objc_claimAutoreleasedReturnValue(), v28 = objc_msgSend(v24, "selectionInteraction:handleLassoSelection:strokes:inAttachment:", v25, v9, v26, v27), v27, v26, v25, v24, v23, v22, (v28 & 1) == 0))
    {
      if ([v52 count] || objc_msgSend(v51, "count"))
      {
        v29 = os_log_create("com.apple.pencilkit", "Selection");
        if (os_log_type_enabled(v29, OS_LOG_TYPE_DEBUG))
        {
          v48 = [v52 count];
          v49 = [v51 count];
          *buf = 134218240;
          *&buf[4] = v48;
          *&buf[12] = 2048;
          *&buf[14] = v49;
          _os_log_debug_impl(&dword_1C7CCA000, v29, OS_LOG_TYPE_DEBUG, "Selected %lu strokes, %lu external elements", buf, 0x16u);
        }

        v30 = [[PKStrokeSelection alloc] initWithStrokes:v52 externalElements:v51 lassoStroke:v54 drawing:v5];
        v31 = +[PKSelectionStatisticsManager sharedStatisticsManager];
        v32 = v30;
        v33 = [(PKStrokeSelection *)v32 strokes];
        v34 = [v33 count];

        v35 = [(PKStrokeSelection *)v32 externalElements];
        v36 = [v35 count];

        v37 = 5;
        if (v36)
        {
          v38 = v34 == 0;
        }

        else
        {
          v37 = 0;
          v38 = 1;
        }

        v39 = 4;
        if (!v38)
        {
          v39 = 6;
        }

        if (v34)
        {
          v40 = v39;
        }

        else
        {
          v40 = v37;
        }

        [v31 recordLassoSelectionEventWithContentType:v40];
        v41 = *(MEMORY[0x1E695EFD0] + 16);
        *buf = *MEMORY[0x1E695EFD0];
        *&buf[16] = v41;
        v56 = *(MEMORY[0x1E695EFD0] + 32);
        [a1 didSelect:v32 lassoStroke:v54 transform:buf drawing:v5];
      }

      else
      {
        [(PKSelectionController *)a1 clearSelectionIfNecessaryAnimated:0 withCompletion:?];
      }
    }
  }
}

- (void)clearSelectionIfNecessaryWithCompletion:(uint64_t)a1
{
  v3 = a2;
  if (a1)
  {
    [(PKSelectionController *)a1 clearSelectionIfNecessaryAnimated:v3 withCompletion:?];
  }
}

- (id)_strokeForLassoPath:(void *)a3 inDrawing:
{
  v5 = a2;
  v6 = a3;
  v15 = 0u;
  v16 = 0u;
  v14 = 0u;
  WeakRetained = objc_loadWeakRetained((a1 + 120));
  v8 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained transformFromViewToStrokeSpaceInDrawing:v6];
  }

  else
  {
    v15 = 0u;
    v16 = 0u;
    v14 = 0u;
  }

  v13[0] = v14;
  v13[1] = v15;
  v13[2] = v16;
  [v5 applyTransform:v13];
  v9 = [MEMORY[0x1E69DC888] blackColor];
  v10 = [PKInk inkWithIdentifier:@"com.apple.ink.lasso" color:v9 weight:-1.0];

  v11 = [objc_alloc(objc_msgSend(v6 "strokeClass"))];

  return v11;
}

- (void)didSelectStrokesNotification:(id)a3
{
  v13 = a3;
  v4 = objc_opt_class();
  v5 = [v13 object];
  v6 = PKCheckedDynamicCast(v4, v5);

  if (v6 != self)
  {
    v7 = v6 ? objc_loadWeakRetained(&v6->_tiledView) : 0;
    v8 = [v7 window];
    v9 = [v8 windowScene];
    v10 = self ? objc_loadWeakRetained(&self->_tiledView) : 0;
    v11 = [v10 window];
    v12 = [v11 windowScene];

    if (self)
    {
      if (v9 == v12)
      {
        [(PKSelectionController *)self clearSelectionIfNecessaryAnimated:0 withCompletion:?];
      }
    }
  }
}

- (void)didSelect:(id)a3 lassoStroke:(id)a4 transform:(CGAffineTransform *)a5 drawing:(id)a6
{
  v6 = *&a5->c;
  v7[0] = *&a5->a;
  v7[1] = v6;
  v7[2] = *&a5->tx;
  [(PKSelectionController *)self didSelect:a3 lassoStroke:a4 transform:v7 drawing:a6 selectionType:0 completion:0];
}

- (void)didSelect:(id)a3 lassoStroke:(id)a4 transform:(CGAffineTransform *)a5 drawing:(id)a6 selectionType:(int64_t)a7 completion:(id)a8
{
  v12 = a3;
  v13 = a6;
  v14 = a8;
  v15 = [MEMORY[0x1E696AD88] defaultCenter];
  [v15 postNotificationName:@"PKDidSelectStrokesNotification" object:self];

  [(PKSelectionController *)self _resetSelectedStrokeStateForRenderer];
  if (self)
  {
    v16 = *&a5->a;
    v17 = *&a5->c;
    *&self->_selectionTransform.tx = *&a5->tx;
    *&self->_selectionTransform.c = v17;
    *&self->_selectionTransform.a = v16;
  }

  objc_initWeak(&location, self);
  v69[0] = MEMORY[0x1E69E9820];
  v69[1] = 3221225472;
  v70 = __90__PKSelectionController_didSelect_lassoStroke_transform_drawing_selectionType_completion___block_invoke;
  v71 = &unk_1E82D9378;
  objc_copyWeak(&v74, &location);
  v18 = *&a5->c;
  v75 = *&a5->a;
  v76 = v18;
  v77 = *&a5->tx;
  v19 = v13;
  v72 = v19;
  v67 = v14;
  v73 = v67;
  v20 = v12;
  v21 = v19;
  v68 = v69;
  if (self && v20)
  {
    [(PKSelectionController *)self clearSelectionIfNecessaryAnimated:0 withCompletion:?];
    if (self->_selectionView)
    {
      v22 = os_log_create("com.apple.pencilkit", "Selection");
      if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
      {
        *buf = 0;
        _os_log_debug_impl(&dword_1C7CCA000, v22, OS_LOG_TYPE_DEBUG, "Tried to add a selection view while another one was up", buf, 2u);
      }
    }

    [(PKSelectionController *)self setCurrentStrokeSelection:v20];
    dispatch_assert_queue_V2(MEMORY[0x1E69E96A0]);
    v23 = [(PKSelectionController *)self calculateFrameForSelectionView:v20 inDrawing:v21];
    v25 = v24;
    v27 = v26;
    v29 = v28;
    selectionView = self->_selectionView;
    if (selectionView)
    {
      v31 = [(PKSelectionView *)selectionView layer];
      [v31 removeAllAnimations];

      [(PKSelectionController *)self _removeSelectionViewAnimated:0 withCompletion:?];
    }

    v65 = [(PKSelectionController *)&self->super.isa _attachmentForStrokeSelection:v20];
    v32 = [v20 externalElements];
    v33 = v65;
    v34 = [(PKSelectionController *)&self->super.isa selectionInteraction];
    v35 = [v34 delegate];
    v36 = objc_opt_respondsToSelector();

    if (v36)
    {
      v37 = [(PKSelectionController *)self _IDsFromExternalElements:v32];
      v38 = [(PKSelectionController *)&self->super.isa selectionInteraction];
      v39 = [v38 delegate];
      v40 = [(PKSelectionController *)&self->super.isa selectionInteraction];
      v41 = [v33 attachmentView];
      [v39 selectionInteraction:v40 didSelectElements:v37 inAttachment:v41];
    }

    v42 = [v20 strokes];
    v43 = [v42 count];

    if (v43)
    {
      v44 = [[PKSelectionView alloc] initWithFrame:v20 strokeSelection:self selectionController:a7 selectionType:v23, v25, v27, v29];
      v45 = self->_selectionView;
      self->_selectionView = v44;

      if ([v33 isExternalAttachment])
      {
        if (objc_opt_respondsToSelector())
        {
          [v33 installSelectionView:self->_selectionView];
        }
      }

      else
      {
        v46 = [(PKSelectionController *)&self->super.isa selectionInteraction];
        [v46 _didAddSelectionView:self->_selectionView];
      }

      selectionViewCount = self->_selectionViewCount;
      self->_selectionViewCount = selectionViewCount + 1;
      if (selectionViewCount < 0)
      {
        [(PKSelectionController *)self _removeSelectionViewAnimated:0 withCompletion:?];
      }

      else
      {
        [(PKSelectionController *)self setCurrentStrokeSelection:v20];
      }

      [(PKSelectionView *)self->_selectionView center];
      v49 = v48;
      v51 = v50;
      [(PKSelectionView *)self->_selectionView setCenter:?];
      [(PKSelectionView *)self->_selectionView setAlpha:0.5];
      v52 = self->_selectionView;
      *buf = MEMORY[0x1E69E9820];
      v80 = 3221225472;
      v81 = __102__PKSelectionController__addViewForStrokeSelection_isDragSource_drawing_selectionType_withCompletion___block_invoke;
      v82 = &unk_1E82D6610;
      v83 = self;
      v84 = v49;
      v85 = v51;
      [MEMORY[0x1E69DD250] transitionWithView:v52 duration:5242880 options:buf animations:0 completion:0.1];
    }

    else
    {
      [(PKSelectionController *)self setCurrentStrokeSelection:?];
    }

    (v70)(v68, self->_selectionView);
  }

  v53 = [(PKSelectionController *)&self->super.isa selectionInteraction];
  v54 = [v53 delegate];
  v55 = objc_opt_respondsToSelector();

  if (v55)
  {
    if (self)
    {
      WeakRetained = objc_loadWeakRetained(&self->_tiledView);
    }

    else
    {
      WeakRetained = 0;
    }

    v57 = [v21 uuid];
    v58 = [WeakRetained _attachmentForUUID:v57];

    v59 = [(PKSelectionController *)&self->super.isa selectionInteraction];
    v60 = [v59 delegate];
    v61 = [(PKSelectionController *)&self->super.isa selectionInteraction];
    v62 = [v20 strokes];
    v63 = [v62 array];
    v64 = [v58 attachmentView];
    [v60 selectionInteraction:v61 didSelectStrokes:v63 selectionType:a7 inAttachment:v64];
  }

  objc_destroyWeak(&v74);
  objc_destroyWeak(&location);
}

uint64_t __90__PKSelectionController_didSelect_lassoStroke_transform_drawing_selectionType_completion___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (WeakRetained)
  {
    v3 = WeakRetained[19];

    if (!v3)
    {
      goto LABEL_5;
    }

    v4 = objc_loadWeakRetained((a1 + 48));
    v5 = *(a1 + 72);
    v8[0] = *(a1 + 56);
    v8[1] = v5;
    v8[2] = *(a1 + 88);
    [(PKSelectionController *)v4 moveSelectionViewBasedOnStrokeTransform:v8 drawing:*(a1 + 32)];
  }

  else
  {
    v4 = 0;
  }

LABEL_5:
  result = *(a1 + 40);
  if (result)
  {
    v7 = *(result + 16);

    return v7();
  }

  return result;
}

- (void)moveSelectionViewBasedOnStrokeTransform:(void *)a3 drawing:
{
  v5 = a3;
  if (a1)
  {
    [a1[16] bounds];
    v7 = v6;
    v9 = v8;
    v11 = *a2;
    v10 = a2[1];
    v13 = a2[2];
    v12 = a2[3];
    v15 = a2[4];
    v14 = a2[5];
    WeakRetained = objc_loadWeakRetained(a1 + 15);
    v17 = WeakRetained;
    v44 = v12;
    v45 = v10;
    v42 = v15;
    v43 = v14;
    if (WeakRetained)
    {
      [WeakRetained transformFromStrokeSpaceToViewInDrawing:v5];
      b = v46.b;
      a = v46.a;
      c = v46.c;
      d = v46.d;
      ty = v46.ty;
      tx = v46.tx;
    }

    else
    {
      ty = 0.0;
      tx = 0.0;
      d = 0.0;
      b = 0.0;
      a = 0.0;
      c = 0.0;
    }

    [a1[19] frame];
    v36 = v21;
    v37 = v20;
    v23 = v22;
    v25 = v24;
    [a1[19] setFrame:{tx + (v43 + v9 * v44 + v45 * v7) * c + a * (v42 + v9 * v13 + v11 * v7), ty + (v43 + v9 * v44 + v45 * v7) * d + b * (v42 + v9 * v13 + v11 * v7), v22, v24}];
    v26 = objc_loadWeakRetained(a1 + 15);
    v27 = [v5 uuid];
    v28 = [v26 _attachmentForUUID:v27];

    if (v28 && [v28 isExternalAttachment] && (objc_opt_respondsToSelector() & 1) != 0 && (objc_opt_respondsToSelector() & 1) != 0)
    {
      v29 = [v28 contentWindowCoordinateSpace];
      v30 = [v28 contentScaledCoordinateSpace];
      PK_transformToConvertFromCoordinateSpaceToCoordinateSpace(v29, v30, &v46.a);
      v31 = *&v46.c;
      *a2 = *&v46.a;
      *(a2 + 1) = v31;
      *(a2 + 2) = *&v46.tx;

      v32 = *(a2 + 1);
      *&v46.a = *a2;
      *&v46.c = v32;
      *&v46.tx = *(a2 + 2);
      *&v32 = v36;
      v33 = v37;
      v34 = v23;
      v35 = v25;
      v47 = CGRectApplyAffineTransform(*(&v32 - 8), &v46);
      [a1[19] setFrame:{v47.origin.x, v47.origin.y, v47.size.width, v47.size.height}];
    }
  }
}

- (void)_selectionDrawingTransformForDrawing:(uint64_t)a3@<X8>
{
  v5 = a2;
  if (a1)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 120));
    v7 = [v5 uuid];
    v8 = [WeakRetained _attachmentForUUID:v7];

    memset(&v15, 0, sizeof(v15));
    if (v8)
    {
      [v8 drawingTransform];
    }

    else
    {
      v9 = *(MEMORY[0x1E695EFD0] + 16);
      *&v15.a = *MEMORY[0x1E695EFD0];
      *&v15.c = v9;
      *&v15.tx = *(MEMORY[0x1E695EFD0] + 32);
    }

    v10 = objc_loadWeakRetained((a1 + 120));
    [v10 canvasZoomScale];
    v12 = v11;

    CGAffineTransformMakeScale(&t1, v12, v12);
    v13 = v15;
    CGAffineTransformConcat(a3, &t1, &v13);
  }

  else
  {
    *(a3 + 16) = 0u;
    *(a3 + 32) = 0u;
    *a3 = 0u;
  }
}

- (double)calculateFrameForSelectionView:(void *)a3 inDrawing:
{
  v5 = a2;
  v6 = a3;
  if (a1)
  {
    [v5 bounds];
    v8 = v7;
    v10 = v9;
    v12 = v11;
    v14 = v13;
    WeakRetained = objc_loadWeakRetained((a1 + 120));
    v16 = WeakRetained;
    if (WeakRetained)
    {
      [WeakRetained transformFromStrokeSpaceToViewInDrawing:v6];
    }

    else
    {
      memset(&v19, 0, sizeof(v19));
    }

    v20.origin.x = v8;
    v20.origin.y = v10;
    v20.size.width = v12;
    v20.size.height = v14;
    *&v17 = CGRectApplyAffineTransform(v20, &v19);
  }

  else
  {
    v17 = 0.0;
  }

  return v17;
}

- (void)_installSelectionViewForCurrentSelectionFromExternalAttachments
{
  if (a1)
  {
    v2 = a1[16];
    if (v2)
    {
      dispatch_assert_queue_V2(MEMORY[0x1E69E96A0]);
      v3 = [(PKSelectionController *)a1 _attachmentForStrokeSelection:v2];
      if ([v3 isExternalAttachment])
      {
        v4 = [v3 drawing];
        v5 = [(PKSelectionController *)a1 calculateFrameForSelectionView:v2 inDrawing:v4];
        v7 = v6;
        v9 = v8;
        v11 = v10;

        v12 = [v2 strokes];
        v13 = [v12 count];

        if (v13)
        {
          v14 = [[PKSelectionView alloc] initWithFrame:v2 strokeSelection:a1 selectionController:2 selectionType:v5, v7, v9, v11];
          v15 = a1[19];
          a1[19] = v14;

          if (objc_opt_respondsToSelector())
          {
            [v3 installSelectionView:a1[19]];
          }

          [a1[19] center];
          v17 = v16;
          v19 = v18;
          [a1[19] setCenter:?];
          [a1[19] setAlpha:0.5];
          v20 = a1[19];
          v23[0] = MEMORY[0x1E69E9820];
          v23[1] = 3221225472;
          v23[2] = __88__PKSelectionController__installSelectionViewForCurrentSelectionFromExternalAttachments__block_invoke;
          v23[3] = &unk_1E82D6610;
          v23[4] = a1;
          v23[5] = v17;
          v23[6] = v19;
          [MEMORY[0x1E69DD250] transitionWithView:v20 duration:5242880 options:v23 animations:0 completion:0.1];
          if (a1[19])
          {
            v21 = [v3 drawing];
            [(PKSelectionController *)a1 moveSelectionViewBasedOnStrokeTransform:v21 drawing:?];
          }
        }
      }
    }
  }
}

- (id)_attachmentForStrokeSelection:(id *)a1
{
  v3 = a2;
  v4 = v3;
  if (a1)
  {
    v5 = [v3 drawing];
    v6 = [v5 uuid];

    if (v6)
    {
      WeakRetained = objc_loadWeakRetained(a1 + 15);
      a1 = [WeakRetained _attachmentForUUID:v6];
    }

    else
    {
      a1 = 0;
    }
  }

  return a1;
}

uint64_t __88__PKSelectionController__installSelectionViewForCurrentSelectionFromExternalAttachments__block_invoke(uint64_t a1)
{
  [*(*(a1 + 32) + 152) setCenter:{*(a1 + 40), *(a1 + 48)}];
  v2 = *(*(a1 + 32) + 152);

  return [v2 setAlpha:1.0];
}

- (void)_removeSelectionViewAnimated:(void *)a3 withCompletion:
{
  v5 = a3;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __69__PKSelectionController__removeSelectionViewAnimated_withCompletion___block_invoke;
  aBlock[3] = &unk_1E82D94E0;
  aBlock[4] = a1;
  v12 = a2;
  v6 = v5;
  v11 = v6;
  v7 = _Block_copy(aBlock);
  if ([MEMORY[0x1E696AF00] isMainThread])
  {
    v7[2](v7);
  }

  else
  {
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __69__PKSelectionController__removeSelectionViewAnimated_withCompletion___block_invoke_4;
    v8[3] = &unk_1E82D63B0;
    v9 = v7;
    dispatch_async(MEMORY[0x1E69E96A0], v8);
  }
}

uint64_t __102__PKSelectionController__addViewForStrokeSelection_isDragSource_drawing_selectionType_withCompletion___block_invoke(uint64_t a1)
{
  [*(*(a1 + 32) + 152) setCenter:{*(a1 + 40), *(a1 + 48)}];
  v2 = *(*(a1 + 32) + 152);

  return [v2 setAlpha:1.0];
}

- (void)_imageViewForStrokes:(void *)a3 drawing:(__int128 *)a4 drawingTransform:(void *)a5 coordinateSpace:(void *)a6 completion:
{
  v11 = a2;
  v12 = a3;
  v13 = a5;
  v14 = a6;
  if (a1)
  {
    v15 = [MEMORY[0x1E695DFB8] orderedSetWithArray:v11];
    v16 = [[PKStrokeSelection alloc] initWithStrokes:v15 lassoStroke:0 drawing:v12];
    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 3221225472;
    v19[2] = __98__PKSelectionController__imageViewForStrokes_drawing_drawingTransform_coordinateSpace_completion___block_invoke;
    v19[3] = &unk_1E82D93C8;
    v20 = v13;
    v21 = a1;
    v17 = a4[1];
    v24 = *a4;
    v25 = v17;
    v26 = a4[2];
    v22 = v16;
    v23 = v14;
    v18 = v16;
    [(PKSelectionController *)a1 generateImageForStrokeSelection:v18 scaleStrategy:1 highlighted:0 withCompletion:v19];
  }
}

void __98__PKSelectionController__imageViewForStrokes_drawing_drawingTransform_coordinateSpace_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __98__PKSelectionController__imageViewForStrokes_drawing_drawingTransform_coordinateSpace_completion___block_invoke_2;
  block[3] = &unk_1E82D93A0;
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v6 = *(a1 + 48);
  v10 = v4;
  v11 = v5;
  v7 = *(a1 + 80);
  v15 = *(a1 + 64);
  v16 = v7;
  v17 = *(a1 + 96);
  v12 = v6;
  v13 = v3;
  v14 = *(a1 + 56);
  v8 = v3;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

void __98__PKSelectionController__imageViewForStrokes_drawing_drawingTransform_coordinateSpace_completion___block_invoke_2(uint64_t a1)
{
  v3 = *(a1 + 32);
  v2 = *(a1 + 40);
  if (v2)
  {
    WeakRetained = objc_loadWeakRetained((v2 + 120));
  }

  else
  {
    WeakRetained = 0;
  }

  memset(&v13, 0, sizeof(v13));
  v5 = [WeakRetained canvasView];
  PK_transformToConvertFromCoordinateSpaceToCoordinateSpace(v3, v5, &v13.a);

  v6 = *(a1 + 88);
  *&t1.a = *(a1 + 72);
  *&t1.c = v6;
  *&t1.tx = *(a1 + 104);
  v11 = v13;
  CGAffineTransformConcat(&v13, &t1, &v11);
  [*(a1 + 48) bounds];
  t1 = v13;
  v15 = CGRectApplyAffineTransform(v14, &t1);
  v7 = [[PKImageView alloc] initWithFrame:v15.origin.x, v15.origin.y, v15.size.width, v15.size.height];
  v8 = [*(a1 + 56) image];
  [(PKImageView *)v7 setImage:v8];

  v9 = [*(a1 + 56) addImage];
  [(PKImageView *)v7 setAddImage:v9];

  v10 = [*(a1 + 56) mulImage];
  [(PKImageView *)v7 setMulImage:v10];

  (*(*(a1 + 64) + 16))();
}

- (void)generateImageForStrokeSelection:(uint64_t)a3 scaleStrategy:(char)a4 highlighted:(void *)a5 withCompletion:
{
  v9 = a2;
  v10 = a5;
  if (a1)
  {
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __98__PKSelectionController_generateImageForStrokeSelection_scaleStrategy_highlighted_withCompletion___block_invoke;
    block[3] = &unk_1E82D9468;
    block[4] = a1;
    v12 = v9;
    v14 = a3;
    v15 = a4;
    v13 = v10;
    dispatch_async(MEMORY[0x1E69E96A0], block);
  }
}

- (void)_imageViewForStrokes:(void *)a3 drawing:(void *)a4 completion:
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  if (a1)
  {
    v10 = [MEMORY[0x1E695DFB8] orderedSetWithArray:v7];
    v11 = [[PKStrokeSelection alloc] initWithStrokes:v10 lassoStroke:0 drawing:v8];
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __65__PKSelectionController__imageViewForStrokes_drawing_completion___block_invoke;
    v13[3] = &unk_1E82D9418;
    v13[4] = a1;
    v14 = v11;
    v15 = v8;
    v16 = v9;
    v12 = v11;
    [(PKSelectionController *)a1 generateImageForStrokeSelection:v12 scaleStrategy:1 highlighted:0 withCompletion:v13];
  }
}

void __65__PKSelectionController__imageViewForStrokes_drawing_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __65__PKSelectionController__imageViewForStrokes_drawing_completion___block_invoke_2;
  block[3] = &unk_1E82D93F0;
  v4 = *(a1 + 40);
  block[4] = *(a1 + 32);
  v7 = v4;
  v8 = *(a1 + 48);
  v9 = v3;
  v10 = *(a1 + 56);
  v5 = v3;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

void __65__PKSelectionController__imageViewForStrokes_drawing_completion___block_invoke_2(uint64_t a1)
{
  v2 = [(PKSelectionController *)*(a1 + 32) calculateFrameForSelectionView:*(a1 + 48) inDrawing:?];
  v9 = [[PKImageView alloc] initWithFrame:v2, v3, v4, v5];
  v6 = [*(a1 + 56) image];
  [(PKImageView *)v9 setImage:v6];

  v7 = [*(a1 + 56) addImage];
  [(PKImageView *)v9 setAddImage:v7];

  v8 = [*(a1 + 56) mulImage];
  [(PKImageView *)v9 setMulImage:v8];

  (*(*(a1 + 64) + 16))();
}

- (void)_maskImageForStrokes:(uint64_t)a3 drawing:(void *)a4 imageView:(void *)a5 completion:
{
  v7 = a4;
  v8 = a5;
  if (a1)
  {
    v9 = [v7 addImage];
    v10 = v9;
    if (v9)
    {
      v11 = v9;
    }

    else
    {
      v11 = [v7 image];
    }

    v12 = v11;

    v13 = [MEMORY[0x1E695F648] colorMatrixFilter];
    v14 = [MEMORY[0x1E695F688] vectorWithX:0.0 Y:0.0 Z:0.0 W:0.0];
    [v13 setRVector:v14];

    v15 = [MEMORY[0x1E695F688] vectorWithX:0.0 Y:0.0 Z:0.0 W:0.0];
    [v13 setGVector:v15];

    v16 = [MEMORY[0x1E695F688] vectorWithX:0.0 Y:0.0 Z:0.0 W:0.0];
    [v13 setBVector:v16];

    v17 = [MEMORY[0x1E695F688] vectorWithX:0.0 Y:0.0 Z:0.0 W:1.0];
    [v13 setAVector:v17];

    v18 = [MEMORY[0x1E695F658] imageWithCGImage:{objc_msgSend(v12, "CGImage")}];
    [v13 setInputImage:v18];

    v19 = [v13 outputImage];
    v20 = [MEMORY[0x1E695F648] morphologyMaximumFilter];
    LODWORD(v21) = 2.0;
    [v20 setRadius:v21];
    [v20 setInputImage:v19];
    v22 = [v20 outputImage];

    [v12 scale];
    v24 = v23;
    [v7 frame];
    v45 = CGRectInset(v44, -1.0, -1.0);
    x = v45.origin.x;
    y = v45.origin.y;
    width = v45.size.width;
    height = v45.size.height;
    [v7 bounds];
    v47 = CGRectInset(v46, -1.0, -1.0);
    v28 = v47.origin.x;
    v29 = v47.origin.y;
    v30 = v47.size.width;
    v31 = v47.size.height;
    v32 = objc_alloc_init(MEMORY[0x1E695F620]);
    v33 = [v32 createCGImage:v22 fromRect:{v24 * v28, v24 * v29, v24 * v30, v24 * v31}];
    v34 = [objc_alloc(MEMORY[0x1E69DCAB8]) initWithCGImage:v33 scale:0 orientation:v24];
    CGImageRelease(v33);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __75__PKSelectionController__maskImageForStrokes_drawing_imageView_completion___block_invoke;
    block[3] = &unk_1E82D9440;
    v38 = v34;
    v39 = v8;
    v40 = x;
    v41 = y;
    v42 = width;
    v43 = height;
    v35 = v34;
    dispatch_async(MEMORY[0x1E69E96A0], block);
  }
}

- (PKStrokeSelectionImageConfig)cachedImageConfigForSelection:(uint64_t)a3 scaleStrategy:(uint64_t)a4 highlighted:
{
  v79[7] = *MEMORY[0x1E69E9840];
  v7 = a2;
  v8 = v7;
  if (a1)
  {
    [v7 bounds];
    v10 = v9;
    v12 = v11;
    v14 = v13;
    v16 = v15;
    v17 = [v8 drawing];
    [(PKSelectionController *)a1 _selectionDrawingTransformForDrawing:v17, &v79[1]];
    v18 = sqrt(v79[2] * v79[2] + v79[1] * v79[1]);
    CGAffineTransformMakeScale(&v79[1], v18, v18);
    v79[0] = v10;
    v81.origin.x = v10;
    v81.origin.y = v12;
    v81.size.width = v14;
    v81.size.height = v16;
    v82 = CGRectApplyAffineTransform(v81, &v79[1]);
    width = v82.size.width;
    height = v82.size.height;
    [v8 boundsWithoutLasso];
    v23 = fmax(v18 * v21, width);
    rect = v12;
    v78 = fmax(v18 * v22, height);
    if (a3)
    {
      if (a3 == 1)
      {
        [PKMetalUtility clampedPixelSize:v23, v78];
        v26 = 0;
        v27 = v24 != v23;
        if (v25 != v78)
        {
          v27 = 1;
        }

        v28 = v23 <= 0.0 || !v27;
        if (v28 || v78 <= 0.0)
        {
          v29 = 0;
        }

        else
        {
          v26 = 0;
          v29 = 0;
          v18 = v18 * (v24 / v23);
          v78 = v25;
          v23 = v24;
        }
      }

      else
      {
        v26 = 0;
        v29 = 0;
      }
    }

    else
    {
      if (v23 > 4000.0 || (MaxY = v78, v78 > 4000.0))
      {
        v74 = v16;
        v33 = os_log_create("com.apple.pencilkit", "");
        if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
        {
          LODWORD(v79[1]) = 134218240;
          *(&v79[1] + 4) = v23;
          WORD2(v79[2]) = 2048;
          *(&v79[2] + 6) = v78;
          _os_log_error_impl(&dword_1C7CCA000, v33, OS_LOG_TYPE_ERROR, "SELECTION: image renderer bounds are too big %f %f, sizing it down", &v79[1], 0x16u);
        }

        WeakRetained = objc_loadWeakRetained((a1 + 120));
        v35 = [v8 drawing];
        [WeakRetained visibleOnscreenBoundsForDrawing:v35 slack:{*MEMORY[0x1E695F060], *(MEMORY[0x1E695F060] + 8)}];
        v37 = v36;
        v39 = v38;
        v41 = v40;
        v43 = v42;

        v75 = fmin(v23, 4000.0);
        v44 = v14 * (v75 / v23);
        v83.origin.x = v37;
        v83.origin.y = v39;
        v83.size.width = v41;
        v83.size.height = v43;
        MidX = CGRectGetMidX(v83);
        v84.origin.x = v37;
        v84.origin.y = v39;
        v84.size.width = v41;
        v84.size.height = v43;
        MidY = CGRectGetMidY(v84);
        v76 = v44;
        if (v14 <= v44)
        {
          v49 = v79[0];
          v31 = v79[0];
          v46 = v74;
        }

        else
        {
          v85.origin.x = v79[0];
          v85.origin.y = rect;
          v85.size.width = v14;
          v46 = v74;
          v85.size.height = v74;
          MaxX = CGRectGetMaxX(v85);
          v48 = MidX + v44 * -0.5;
          v31 = v79[0];
          v49 = v79[0];
          if (v48 >= v79[0])
          {
            v50 = MaxX - v44;
            v31 = MidX + v44 * -0.5;
            if (v48 > v50)
            {
              v31 = v50;
            }
          }
        }

        v32 = fmin(v78, 4000.0);
        MaxY = v32 / v78;
        v51 = v46;
        v16 = v46 * (v32 / v78);
        if (v51 > v16)
        {
          v52 = v49;
          v53 = rect;
          v54 = v14;
          MaxY = CGRectGetMaxY(*(&v51 - 3));
          v55 = MidY + v16 * -0.5;
          if (v55 >= rect)
          {
            MaxY = MaxY - v16;
            rect = MaxY;
            if (v55 <= MaxY)
            {
              rect = MidY + v16 * -0.5;
            }
          }
        }
      }

      else
      {
        v32 = v78;
        v31 = v79[0];
        v75 = v23;
        v76 = v14;
      }

      v56 = [v8 drawing];
      [(PKSelectionController *)a1 _selectionDrawingTransformForDrawing:v56, &v79[1]];
      v57 = v79[3] * v79[2] - v79[1] * v79[4] > 0.0;

      if (v57)
      {
        v26 = 0;
        v29 = 1;
      }

      else
      {
        v58 = objc_loadWeakRetained((a1 + 120));
        v26 = [v58 _sixChannelBlendingIsActive];

        v29 = 0;
      }

      v78 = v32;
      v79[0] = v31;
      v23 = v75;
      v14 = v76;
    }

    v59 = objc_loadWeakRetained((a1 + 120));
    v60 = [v59 sixChannelBlendingRendersTransparent];

    v61 = objc_loadWeakRetained((a1 + 120));
    v62 = v61;
    if (v61)
    {
      [v61 transformFromStrokeSpaceToViewInDrawing:v17];
    }

    else
    {
      memset(&v79[1], 0, 48);
    }

    v86.origin.y = rect;
    v86.size.height = v16;
    v86.size.width = v14;
    v86.origin.x = v79[0];
    v87 = CGRectApplyAffineTransform(v86, &v79[1]);
    x = v87.origin.x;
    y = v87.origin.y;
    v65 = v87.size.width;
    v66 = v87.size.height;

    v67 = [PKStrokeSelectionImageConfig alloc];
    v68 = objc_loadWeakRetained((a1 + 120));
    v69 = [v68 invertColors];
    v70 = objc_loadWeakRetained((a1 + 120));
    v71 = -[PKStrokeSelectionImageConfig initWithStrokeBounds:imageViewBounds:scale:imageSize:invertedColors:rotated:sixChannel:transparentBlending:highlighted:extendedDynamicRange:](v67, "initWithStrokeBounds:imageViewBounds:scale:imageSize:invertedColors:rotated:sixChannel:transparentBlending:highlighted:extendedDynamicRange:", v69, v29, v26, v60, a4, [v70 isExtendedDynamicRangeRenderingActive], v79[0], rect, v14, v16, x, y, v65, v66, *&v18, *&v23, *&v78);
  }

  else
  {
    v71 = 0;
  }

  return v71;
}

void __98__PKSelectionController_generateImageForStrokeSelection_scaleStrategy_highlighted_withCompletion___block_invoke(uint64_t a1)
{
  v5 = [(PKSelectionController *)*(a1 + 32) cachedImageConfigForSelection:*(a1 + 56) scaleStrategy:*(a1 + 64) highlighted:?];
  v2 = [(PKSelectionController *)*(a1 + 32) cachedImageConfigForSelection:1 scaleStrategy:*(a1 + 64) highlighted:?];
  v3 = *(a1 + 40);
  v4 = [(PKSelectionController *)*(a1 + 32) selectionInteraction];
  [v3 generateImageWithConfig:v5 fullSizeConfig:v2 selectionInteraction:v4 withCompletion:*(a1 + 48)];
}

- (void)setImageOnSelectionViewForStrokeSelection:(void *)a3 withCompletion:
{
  v5 = a2;
  v6 = a3;
  if (a1)
  {
    v7 = [(PKSelectionController *)a1 cachedImageConfigForSelection:v5 scaleStrategy:0 highlighted:1];
    v8 = [a1[19] strokeSelectionImage];
    if (v8 && ([a1[19] strokeSelectionImage], v9 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v9, "config"), v10 = objc_claimAutoreleasedReturnValue(), v11 = objc_msgSend(v10, "isEqual:", v7), v10, v9, v8, (v11 & 1) != 0))
    {
      if (v6)
      {
        v6[2](v6);
      }

      v12 = v7;
    }

    else
    {
      v13 = [(PKSelectionController *)a1 cachedImageConfigForSelection:v5 scaleStrategy:1 highlighted:1];
      v14 = [(PKSelectionController *)a1 selectionInteraction];
      v19[0] = MEMORY[0x1E69E9820];
      v19[1] = 3221225472;
      v19[2] = __82__PKSelectionController_setImageOnSelectionViewForStrokeSelection_withCompletion___block_invoke;
      v19[3] = &unk_1E82D9490;
      v19[4] = a1;
      v20 = v6;
      [v5 generateImageWithConfig:v7 fullSizeConfig:v13 selectionInteraction:v14 withCompletion:v19];

      v12 = [(PKSelectionController *)a1 cachedImageConfigForSelection:v5 scaleStrategy:0 highlighted:0];

      v15 = [(PKSelectionController *)a1 cachedImageConfigForSelection:v5 scaleStrategy:1 highlighted:0];

      v16 = [(PKSelectionController *)a1 selectionInteraction];
      v17[0] = MEMORY[0x1E69E9820];
      v17[1] = 3221225472;
      v17[2] = __82__PKSelectionController_setImageOnSelectionViewForStrokeSelection_withCompletion___block_invoke_3;
      v17[3] = &unk_1E82D6638;
      v18 = v5;
      [v18 generateImageWithConfig:v12 fullSizeConfig:v15 selectionInteraction:v16 withCompletion:v17];
    }
  }
}

void __82__PKSelectionController_setImageOnSelectionViewForStrokeSelection_withCompletion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __82__PKSelectionController_setImageOnSelectionViewForStrokeSelection_withCompletion___block_invoke_2;
  block[3] = &unk_1E82D6840;
  v4 = *(a1 + 40);
  block[4] = *(a1 + 32);
  v7 = v3;
  v8 = v4;
  v5 = v3;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

uint64_t __82__PKSelectionController_setImageOnSelectionViewForStrokeSelection_withCompletion___block_invoke_2(void *a1)
{
  [*(a1[4] + 152) setStrokeSelectionImage:a1[5]];
  result = a1[6];
  if (result)
  {
    v3 = *(result + 16);

    return v3();
  }

  return result;
}

void __69__PKSelectionController__removeSelectionViewAnimated_withCompletion___block_invoke(uint64_t a1)
{
  *(*(a1 + 32) + 32) = fmax((*(*(a1 + 32) + 32) - 1), 0.0);
  v2 = *(a1 + 48);
  v3 = *(a1 + 32);
  if (v2 == 1 && *(v3 + 152) && (v4 = [*(v3 + 152) selectionType], v3 = *(a1 + 32), v4 != 6))
  {
    v7 = MEMORY[0x1E69DD250];
    v8 = *(v3 + 152);
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __69__PKSelectionController__removeSelectionViewAnimated_withCompletion___block_invoke_2;
    v11[3] = &unk_1E82D6388;
    v11[4] = v3;
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __69__PKSelectionController__removeSelectionViewAnimated_withCompletion___block_invoke_3;
    v9[3] = &unk_1E82D94B8;
    v9[4] = v3;
    v10 = *(a1 + 40);
    [v7 transitionWithView:v8 duration:5242880 options:v11 animations:v9 completion:0.2];
  }

  else
  {
    [(PKSelectionController *)v3 _tearDownSelectionView];
    v5 = *(a1 + 40);
    if (v5)
    {
      v6 = *(v5 + 16);

      v6();
    }
  }
}

uint64_t __69__PKSelectionController__removeSelectionViewAnimated_withCompletion___block_invoke_3(uint64_t a1)
{
  [(PKSelectionController *)*(a1 + 32) _tearDownSelectionView];
  result = *(a1 + 40);
  if (result)
  {
    v3 = *(result + 16);

    return v3();
  }

  return result;
}

- (void)_tearDownSelectionView
{
  if (a1)
  {
    v2 = [*(a1 + 152) window];
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 3221225472;
    v3[2] = __47__PKSelectionController__tearDownSelectionView__block_invoke;
    v3[3] = &unk_1E82D6388;
    v3[4] = a1;
    [PKToolPicker _performWithVisibilityUpdatesEnabled:0 window:v2 block:v3];
  }
}

void __47__PKSelectionController__tearDownSelectionView__block_invoke(uint64_t a1)
{
  [*(*(a1 + 32) + 152) removeFromSuperview];
  v2 = *(a1 + 32);
  v3 = *(v2 + 152);
  *(v2 + 152) = 0;
}

- (id)_commitStrokeSelection:(void *)a3 toDrawing:(uint64_t)a4 selectionAction:(uint64_t)a5 selectionType:
{
  v9 = a2;
  v10 = a3;
  if (a1)
  {
    v11 = [(PKSelectionController *)a1 _commitStrokeSelection:v9 toDrawing:v10 selectionAction:a4 inkChanges:0 selectionType:a5 withCompletion:0];
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (id)_commitStrokeSelection:(void *)a3 toDrawing:(uint64_t)a4 selectionAction:(void *)a5 inkChanges:(uint64_t)a6 selectionType:(void *)a7 withCompletion:
{
  v127 = *MEMORY[0x1E69E9840];
  v107 = a2;
  v108 = a3;
  v110 = a5;
  block = a7;
  v105 = [MEMORY[0x1E695DF70] array];
  v112 = a1;
  v11 = *(a1 + 128);
  if (!v11)
  {
    v11 = v107;
  }

  v12 = MEMORY[0x1E695DEC8];
  v104 = v11;
  v13 = [v11 strokes];
  v14 = [v13 array];
  v101 = [v12 arrayWithArray:v14];

  v102 = [v104 drawing];
  WeakRetained = objc_loadWeakRetained((a1 + 120));
  v16 = [WeakRetained undoManager];
  [v16 beginUndoGrouping];

  switch(a4)
  {
    case 3:
      v23 = [v107 strokes];
      v24 = [v23 array];

      v109 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v24, "count")}];
      for (i = 0; [v24 count] > i; ++i)
      {
        v26 = [v24 objectAtIndexedSubscript:i];
        v27 = [v26 ink];
        v28 = v110;
        v29 = [v27 color];
        v30 = [v27 identifier];
        v31 = [v28 objectForKey:@"PKInkColorProperty"];

        if (v31)
        {
          v32 = [v28 objectForKey:@"PKInkColorProperty"];

          v29 = v32;
        }

        v33 = [PKInk alloc];
        v34 = [v27 version];
        v35 = [v27 variant];
        [v27 weight];
        v36 = [(PKInk *)v33 initWithIdentifier:v30 color:v29 version:v34 variant:v35 weight:?];

        v37 = objc_loadWeakRetained((v112 + 120));
        LODWORD(v35) = [v37 sixChannelBlending];

        if (v35)
        {
          v38 = [(PKInk *)v36 _sixChannelVersion];

          v36 = v38;
        }

        [v109 addObject:v36];
      }

      v63 = [v108 undoableSetStrokes:v24 inks:v109];
      if (v63)
      {
        [(PKSelectionController *)v112 registerCommandWithUndoManager:v63];
      }

      v22 = 0;
      break;
    case 0:
      v17 = [v107 strokes];
      v18 = [v17 array];
      v19 = *(a1 + 184);
      *&v126.a = *(a1 + 168);
      *&v126.c = v19;
      *&v126.tx = *(a1 + 200);
      v20 = [v108 undoableTransformStrokes:v18 withTransform:&v126 concat:1];

      if (v20)
      {
        [(PKSelectionController *)a1 registerCommandWithUndoManager:v20];
      }

      v21 = 0;
      v22 = 0;
LABEL_45:

      v67 = dispatch_group_create();
      goto LABEL_46;
    case 1:
      v64 = [v102 uuid];
      v20 = [(PKSelectionController *)v112 drawingForUUID:v64];

      [v105 addObject:v20];
      v65 = [v20 undoableDeleteStrokes:v101];
      if (v65)
      {
        [(PKSelectionController *)v112 registerCommandWithUndoManager:v65];
      }

      v66 = objc_loadWeakRetained((v112 + 120));
      [v66 didChangeDrawing:v20];

      v21 = 1;
      goto LABEL_45;
    default:
      v39 = v107;
      v40 = MEMORY[0x1E695DF70];
      v111 = v39;
      v41 = [v39 strokes];
      v42 = [v40 arrayWithCapacity:{objc_msgSend(v41, "count")}];

      v123 = 0u;
      v124 = 0u;
      v121 = 0u;
      v122 = 0u;
      v43 = [v111 strokes];
      v44 = [v43 array];

      v45 = [v44 countByEnumeratingWithState:&v121 objects:&v126 count:16];
      if (v45)
      {
        v46 = *v122;
        do
        {
          for (j = 0; j != v45; ++j)
          {
            if (*v122 != v46)
            {
              objc_enumerationMutation(v44);
            }

            v48 = [*(*(&v121 + 1) + 8 * j) copyForMutation];
            v49 = [MEMORY[0x1E696AFB0] UUID];
            [v48 _setStrokeUUID:v49];

            [v42 addObject:v48];
          }

          v45 = [v44 countByEnumeratingWithState:&v121 objects:&v126 count:16];
        }

        while (v45);
      }

      v50 = [MEMORY[0x1E695DF90] dictionary];
      v119 = 0u;
      v120 = 0u;
      v117 = 0u;
      v118 = 0u;
      v51 = v42;
      v52 = [v51 countByEnumeratingWithState:&v117 objects:v125 count:16];
      if (v52)
      {
        v53 = *v118;
        do
        {
          for (k = 0; k != v52; ++k)
          {
            if (*v118 != v53)
            {
              objc_enumerationMutation(v51);
            }

            v55 = *(*(&v117 + 1) + 8 * k);
            v56 = [v55 _groupID];
            if (v56)
            {
              v57 = [v50 objectForKeyedSubscript:v56];
              if (!v57)
              {
                v57 = [MEMORY[0x1E696AFB0] UUID];
                [v50 setObject:v57 forKeyedSubscript:v56];
              }

              [v55 _setGroupID:v57];
            }
          }

          v52 = [v51 countByEnumeratingWithState:&v117 objects:v125 count:16];
        }

        while (v52);
      }

      v58 = [v108 undoableAddNewStrokes:v51];
      v59 = *(v112 + 184);
      *&v126.a = *(v112 + 168);
      *&v126.c = v59;
      *&v126.tx = *(v112 + 200);
      if (!CGAffineTransformIsIdentity(&v126))
      {
        v60 = *(v112 + 184);
        *&v126.a = *(v112 + 168);
        *&v126.c = v60;
        *&v126.tx = *(v112 + 200);
        [v108 transformStrokes:v51 withTransform:&v126 concat:1];
      }

      v61 = MEMORY[0x1E695DFB8];
      v62 = [PKDrawing visibleStrokesFromStrokes:v51 inDrawing:v108];
      v22 = [v61 orderedSetWithArray:v62];

      if (v58)
      {
        [(PKSelectionController *)v112 registerCommandWithUndoManager:v58];
      }

      break;
  }

  v67 = dispatch_group_create();
  if (a4 == 2)
  {
    v92 = [v107 lassoStroke];
    v93 = [v92 mutableCopy];

    v94 = *(v112 + 184);
    *&v126.a = *(v112 + 168);
    *&v126.c = v94;
    *&v126.tx = *(v112 + 200);
    [v93 _applyTransform:&v126];
    v95 = [PKStrokeSelection alloc];
    v96 = [v107 externalElements];
    v97 = [(PKStrokeSelection *)v95 initWithStrokes:v22 externalElements:v96 lassoStroke:v93 drawing:v108];

    dispatch_group_enter(v67);
    v98 = *(MEMORY[0x1E695EFD0] + 16);
    *&v126.a = *MEMORY[0x1E695EFD0];
    *&v126.c = v98;
    *&v126.tx = *(MEMORY[0x1E695EFD0] + 32);
    v115[0] = MEMORY[0x1E69E9820];
    v115[1] = 3221225472;
    v115[2] = __114__PKSelectionController__commitStrokeSelection_toDrawing_selectionAction_inkChanges_selectionType_withCompletion___block_invoke;
    v115[3] = &unk_1E82D6388;
    v99 = v67;
    v116 = v99;
    [v112 didSelect:v97 lassoStroke:v93 transform:&v126 drawing:v108 selectionType:a6 completion:v115];

    v21 = 0;
    v67 = v99;
  }

  else
  {
    v21 = 0;
  }

LABEL_46:
  v68 = objc_loadWeakRetained((v112 + 120));
  v69 = [v68 undoManager];
  [v69 endUndoGrouping];

  v70 = objc_loadWeakRetained((v112 + 120));
  [v70 didChangeDrawing:v108];

  [v105 addObject:v108];
  dispatch_group_enter(v67);
  v113[0] = MEMORY[0x1E69E9820];
  v113[1] = 3221225472;
  v113[2] = __114__PKSelectionController__commitStrokeSelection_toDrawing_selectionAction_inkChanges_selectionType_withCompletion___block_invoke_2;
  v113[3] = &unk_1E82D6388;
  v71 = v67;
  v114 = v71;
  [(PKSelectionController *)v112 _selectionRefreshWithChangeToDrawings:v105 completion:v113];
  if (v21)
  {
    v72 = [v107 lassoStroke];
    v73 = [v72 mutableCopy];

    v74 = *(v112 + 184);
    *&v126.a = *(v112 + 168);
    *&v126.c = v74;
    *&v126.tx = *(v112 + 200);
    [v73 _applyTransform:&v126];
    v75 = [PKStrokeSelection alloc];
    v76 = [v107 externalElements];
    v77 = [(PKStrokeSelection *)v75 initWithStrokes:v22 externalElements:v76 lassoStroke:v73 drawing:v108];

    v78 = v112;
    [(PKSelectionController *)v112 setCurrentStrokeSelection:v77];
    [v78[19] setStrokeSelection:v78[16]];
    [(PKSelectionController *)v78 _refreshExternalElementsInStrokeSelection:?];
  }

  if (a4 == 3 || !a4)
  {
    v79 = [v107 lassoStroke];
    v80 = [v79 mutableCopy];

    v81 = *(v112 + 184);
    *&v126.a = *(v112 + 168);
    *&v126.c = v81;
    *&v126.tx = *(v112 + 200);
    [v80 _applyTransform:&v126];
    v82 = [v107 strokes];
    v83 = [v82 array];
    v84 = [PKDrawing visibleStrokesFromStrokes:v83 inDrawing:v108];

    v85 = [PKStrokeSelection alloc];
    v86 = [MEMORY[0x1E695DFB8] orderedSetWithArray:v84];
    v87 = [v107 externalElements];
    v88 = [(PKStrokeSelection *)v85 initWithStrokes:v86 externalElements:v87 lassoStroke:v80 drawing:v108];

    [(PKSelectionController *)v112 setCurrentStrokeSelection:v88];
    [*(v112 + 152) setStrokeSelection:*(v112 + 128)];
    [(PKSelectionController *)v112 _refreshExternalElementsInStrokeSelection:?];
    if (a4 == 3)
    {
      [*(v112 + 152) setStrokeSelectionImage:0];
    }
  }

  v89 = MEMORY[0x1E695EFD0];
  v90 = *(MEMORY[0x1E695EFD0] + 16);
  *(v112 + 168) = *MEMORY[0x1E695EFD0];
  *(v112 + 184) = v90;
  *(v112 + 200) = *(v89 + 32);
  if (block)
  {
    dispatch_group_notify(v71, MEMORY[0x1E69E96A0], block);
  }

  return v22;
}

- (void)registerCommandWithUndoManager:(uint64_t)a1
{
  v4 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 120));
  [WeakRetained registerUndoCommand:v4];
}

- (id)drawingForUUID:(uint64_t)a1
{
  v3 = a2;
  if (a1)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 120));
    v5 = [WeakRetained attachmentForUUID:v3];
    v6 = [v5 drawing];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)_selectionRefreshWithChangeToDrawings:(void *)a3 completion:
{
  v7 = a2;
  v5 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 120));
  [WeakRetained _selectionRefreshWithChangeToDrawings:v7 completion:v5];
}

- (void)_refreshExternalElementsInStrokeSelection:(void *)a1
{
  v3 = a2;
  if (a1)
  {
    v8 = v3;
    v4 = [v3 externalElements];
    v5 = [(PKSelectionController *)a1 _IDsFromExternalElements:v4];

    v6 = [(PKSelectionController *)a1 _attachmentForStrokeSelection:v8];
    v7 = [(PKSelectionController *)a1 _externalElementsForIDs:v5 inAttachment:v6];
    [v8 setExternalElements:v7];

    v3 = v8;
  }
}

- (void)didScroll:(double)a3
{
  if (a1)
  {
    if ([a1[18] isCurrentlyAddingSpace])
    {
      [a1[18] didScroll:{a2, a3}];
    }

    if (a1[16])
    {
      v6 = a1[19];
      if (v6)
      {
        v7 = [v6 dragGR];
        v8 = [v7 state];

        if (v8 != 2)
        {
          v9 = a1[16];
          v10 = a1[16];
          v11 = [v10 drawing];
          v12 = [(PKSelectionController *)a1 calculateFrameForSelectionView:v9 inDrawing:v11];
          v14 = v13;
          v16 = v15;
          v18 = v17;

          [a1[19] setFrame:{v12, v14, v16, v18}];
          memset(&v29, 0, sizeof(v29));
          v19 = [a1[16] drawing];
          [(PKSelectionController *)a1 _selectionDrawingTransformForDrawing:v19, &v29];

          t1 = v29;
          v20 = a1[19];
          v21 = v20;
          if (v20)
          {
            [v20 selectionDrawingTransform];
          }

          else
          {
            memset(&t2, 0, sizeof(t2));
          }

          v22 = CGAffineTransformEqualToTransform(&t1, &t2);

          if (!v22)
          {
            t2 = v29;
            memset(&t1, 0, sizeof(t1));
            v23 = a1[19];
            v24 = v23;
            if (v23)
            {
              [v23 selectionDrawingTransform];
            }

            else
            {
              memset(&v25, 0, sizeof(v25));
            }

            CGAffineTransformInvert(&v26, &v25);
            CGAffineTransformConcat(&t1, &t2, &v26);

            t2 = t1;
            [a1[19] setTransform:&t2];
            [(PKSelectionController *)a1 clearSelectionIfNecessaryAnimated:0 withCompletion:?];
          }
        }
      }
    }
  }
}

- (void)didEndScroll
{
  if (self && self->_currentStrokeSelection && ![(PKSelectionView *)self->_selectionView isDragging])
  {
    currentStrokeSelection = self->_currentStrokeSelection;

    [(PKSelectionController *)&self->super.isa setImageOnSelectionViewForStrokeSelection:0 withCompletion:?];
  }
}

- (void)eraseSelection
{
  v25[1] = *MEMORY[0x1E69E9840];
  v2 = [(PKSelectionController *)a1 _currentAttachment];
  v3 = [v2 recognitionController];
  v4 = [v3 shouldCancelForAutoRefineCompletion];

  if ((v4 & 1) == 0)
  {
    v5 = a1[19];
    if ([v5 selectionType])
    {
      v6 = [a1[19] selectionType];

      if (v6 != 6)
      {
        v7 = [(PKSelectionController *)a1 selectionInteraction];
        v8 = [v7 delegate];
        v9 = objc_opt_respondsToSelector();

        if (v9)
        {
          v10 = [(PKSelectionController *)a1 selectionInteraction];
          v11 = [v10 delegate];
          v12 = [(PKSelectionController *)a1 selectionInteraction];
          v13 = [a1[16] strokes];
          v14 = [v13 array];
          [v11 selectionInteraction:v12 handleDeleteForTextStrokes:v14 inAttachment:v2];

          goto LABEL_12;
        }
      }
    }

    else
    {
    }

    v15 = [a1[16] drawing];

    if (v15)
    {
      [(PKSelectionController *)a1 _resetSelectedStrokeStateForRenderer];
      v16 = [a1[16] drawing];
      v17 = MEMORY[0x1E695DEC8];
      v18 = [a1[16] strokes];
      v19 = [v18 array];
      v20 = [v17 arrayWithArray:v19];

      v21 = [v16 undoableDeleteStrokes:v20];
      if (v21)
      {
        [(PKSelectionController *)a1 registerCommandWithUndoManager:v21];
      }

      [(PKSelectionController *)a1 setCurrentStrokeSelection:?];
      WeakRetained = objc_loadWeakRetained(a1 + 15);
      [WeakRetained didChangeDrawing:v16];

      v25[0] = v16;
      v23 = [MEMORY[0x1E695DEC8] arrayWithObjects:v25 count:1];
      [(PKSelectionController *)a1 _selectionRefreshWithChangeToDrawings:v23 completion:0];
    }

    v24 = [(PKSelectionController *)a1 _selectedExternalElementsInAttachment:v2];
    [(PKSelectionController *)a1 _didDeleteExternalElements:v24 inAttachment:v2];

    [(PKSelectionController *)a1 _removeSelectionViewAnimated:0 withCompletion:?];
  }

LABEL_12:
}

- (id)_currentAttachment
{
  if (a1)
  {
    a1 = [(PKSelectionController *)a1 _attachmentForStrokeSelection:?];
    v1 = vars8;
  }

  return a1;
}

- (id)_selectedExternalElementsInAttachment:(uint64_t)a1
{
  v3 = a2;
  if (a1)
  {
    v4 = *(a1 + 128);
    if (v4)
    {
      a1 = [v4 externalElements];
    }

    else
    {
      v5 = [(PKSelectionController *)a1 selectionInteraction];
      v6 = [v5 delegate];
      v7 = objc_opt_respondsToSelector();

      if (v7)
      {
        v8 = [(PKSelectionController *)a1 selectionInteraction];
        v9 = [v8 delegate];
        v10 = [(PKSelectionController *)a1 selectionInteraction];
        v11 = [v3 attachmentView];
        v12 = [v9 selectionInteraction:v10 selectedElementsInAttachment:v11];

        a1 = [(PKSelectionController *)a1 _externalElementsForIDs:v12 inAttachment:v3];
      }

      else
      {
        a1 = 0;
      }
    }
  }

  return a1;
}

- (void)_didDeleteExternalElements:(void *)a3 inAttachment:
{
  v14 = a2;
  v5 = a3;
  if (a1)
  {
    v6 = [(PKSelectionController *)a1 selectionInteraction];
    v7 = [v6 delegate];
    v8 = objc_opt_respondsToSelector();

    if (v8)
    {
      v9 = [(PKSelectionController *)a1 _IDsFromExternalElements:v14];
      v10 = [(PKSelectionController *)a1 selectionInteraction];
      v11 = [v10 delegate];
      v12 = [(PKSelectionController *)a1 selectionInteraction];
      v13 = [v5 attachmentView];
      [v11 selectionInteraction:v12 didDeleteElements:v9 inAttachment:v13];
    }
  }
}

- (void)currentPasteboard
{
  if (a1)
  {
    v2 = a1[17];
    if (v2)
    {
      a1 = v2;
    }

    else
    {
      a1 = [MEMORY[0x1E69DCD50] generalPasteboard];
    }

    v1 = vars8;
  }

  return a1;
}

- (void)_addItemsToPasteboard:(id)a3
{
  v4 = a3;
  v5 = [(PKSelectionController *)self currentPasteboard];
  v6 = [(PKSelectionController *)&self->super.isa _currentAttachment];
  v7 = [(PKSelectionController *)self _selectedExternalElementsInAttachment:v6];
  v8 = [(PKSelectionController *)&self->super.isa _pasteboardRepresentationsForExternalElements:v7 inAttachment:v6];

  v9 = [v4 strokes];
  v10 = [v9 count];

  if (v10)
  {
    v11 = [v4 legacyStrokeDataForSelection];
    v12 = [v4 strokeDataForSelection];
    v13 = [v4 containsBitmapData];
    v14 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:3];
    v15 = v14;
    if (v11)
    {
      [v14 setObject:v12 forKeyedSubscript:@"com.apple.drawing"];
      if (!v13)
      {
        [v15 setObject:v11 forKeyedSubscript:@"com.apple.pencilkit.strokes"];
      }
    }

    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __47__PKSelectionController__addItemsToPasteboard___block_invoke;
    v17[3] = &unk_1E82D9508;
    v18 = v8;
    v19 = v15;
    v20 = v5;
    v16 = v15;
    [(PKSelectionController *)self generateImageForStrokeSelection:v4 scaleStrategy:1 highlighted:0 withCompletion:v17];
  }

  else
  {
    [v5 setItems:v8];
  }
}

- (id)_pasteboardRepresentationsForExternalElements:(void *)a3 inAttachment:
{
  v5 = a2;
  v6 = a3;
  if (a1)
  {
    v7 = [(PKSelectionController *)a1 selectionInteraction];
    v8 = [v7 delegate];
    v9 = objc_opt_respondsToSelector();

    if (v9)
    {
      v10 = [(PKSelectionController *)a1 _IDsFromExternalElements:v5];
      v11 = [(PKSelectionController *)a1 selectionInteraction];
      v12 = [v11 delegate];
      v13 = [(PKSelectionController *)a1 selectionInteraction];
      v14 = [a1[16] strokeIdentifiers];
      v15 = [v6 attachmentView];
      a1 = [v12 selectionInteraction:v13 pasteboardRepresentationsForElements:v10 strokes:v14 inAttachment:v15];
    }

    else
    {
      a1 = 0;
    }
  }

  return a1;
}

void __47__PKSelectionController__addItemsToPasteboard___block_invoke(uint64_t a1, void *a2)
{
  v14[1] = *MEMORY[0x1E69E9840];
  v3 = [a2 combinedImage];
  v4 = UIImagePNGRepresentation(v3);

  v5 = [*(a1 + 32) count];
  v6 = *(a1 + 40);
  if (v5 == 1)
  {
    v7 = [*(a1 + 32) objectAtIndexedSubscript:0];
    [v6 addEntriesFromDictionary:v7];

    v8 = *(a1 + 40);
    v9 = [*MEMORY[0x1E6982F28] identifier];
    [v8 setObject:v4 forKeyedSubscript:v9];

    v14[0] = *(a1 + 40);
    v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v14 count:1];
    [*(a1 + 48) setItems:v10];
  }

  else
  {
    v11 = [*MEMORY[0x1E6982F28] identifier];
    [v6 setObject:v4 forKeyedSubscript:v11];

    v13 = *(a1 + 40);
    v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v13 count:1];
    v12 = [v10 arrayByAddingObjectsFromArray:*(a1 + 32)];
    [*(a1 + 48) setItems:v12];
  }
}

void __43__PKSelectionController__addToStickerMenu___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __43__PKSelectionController__addToStickerMenu___block_invoke_2;
  block[3] = &unk_1E82D6400;
  v4 = *(a1 + 40);
  block[4] = *(a1 + 32);
  v7 = v3;
  v8 = v4;
  v5 = v3;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

void __43__PKSelectionController__addToStickerMenu___block_invoke_2(uint64_t a1)
{
  [(PKSelectionController *)*(a1 + 32) _resetSelectedStrokeStateForRenderer];
  v2 = [*(a1 + 40) combinedImage];
  v3 = [v2 CGImage];
  v23 = 0;
  v24 = &v23;
  v25 = 0x2050000000;
  v4 = _MergedGlobals_141;
  v26 = _MergedGlobals_141;
  if (!_MergedGlobals_141)
  {
    v22[0] = MEMORY[0x1E69E9820];
    v22[1] = 3221225472;
    v22[2] = ___ZL31getVKCStickerFromPKDrawingClassv_block_invoke;
    v22[3] = &unk_1E82D97A8;
    v22[4] = &v23;
    ___ZL31getVKCStickerFromPKDrawingClassv_block_invoke(v22);
    v4 = v24[3];
  }

  v5 = v4;
  _Block_object_dispose(&v23, 8);
  v6 = [v4 alloc];
  v7 = *(a1 + 32);
  if (v7)
  {
    v7 = v7[19];
  }

  v8 = v7;
  [v8 frame];
  v9 = *(a1 + 32);
  if (v9)
  {
    v10 = *(v9 + 152);
  }

  else
  {
    v10 = 0;
  }

  v11 = [v6 initWithFrameVar:v10 currentView:v3 inputtedImage:?];

  v12 = *(a1 + 32);
  v13 = *(a1 + 48);
  v14 = [v13 drawing];
  v15 = [(PKSelectionController *)v12 calculateFrameForSelectionView:v13 inDrawing:v14];
  v17 = v16;
  v19 = v18;
  v21 = v20;

  [v11 presentStickerPickerViewController:{v15, v17, v19, v21}];
}

- (void)clearExternalSelectionIfNecessary
{
  v13 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v10 = 0u;
    v11 = 0u;
    v8 = 0u;
    v9 = 0u;
    WeakRetained = objc_loadWeakRetained(a1 + 15);
    v3 = [WeakRetained attachmentViews];

    v4 = [v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
    if (v4)
    {
      v5 = *v9;
      do
      {
        for (i = 0; i != v4; ++i)
        {
          if (*v9 != v5)
          {
            objc_enumerationMutation(v3);
          }

          v7 = *(*(&v8 + 1) + 8 * i);
          if ([(PKSelectionController *)a1 _hasExternalElementsSelectedInAttachment:v7])
          {
            [(PKSelectionController *)a1 _clearExternalSelectionInAttachment:v7];
          }
        }

        v4 = [v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
      }

      while (v4);
    }
  }
}

- (BOOL)_hasExternalElementsSelectedInAttachment:(_BOOL8)a1
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = v3;
  if (a1)
  {
    if (v3)
    {
      v5 = [(PKSelectionController *)a1 _selectedExternalElementsInAttachment:v3];
      a1 = [v5 count] != 0;
    }

    else
    {
      v14 = 0u;
      v15 = 0u;
      v12 = 0u;
      v13 = 0u;
      WeakRetained = objc_loadWeakRetained((a1 + 120));
      v7 = [WeakRetained attachmentViews];

      v8 = [v7 countByEnumeratingWithState:&v12 objects:v16 count:16];
      if (v8)
      {
        v9 = *v13;
        while (2)
        {
          for (i = 0; i != v8; ++i)
          {
            if (*v13 != v9)
            {
              objc_enumerationMutation(v7);
            }

            if ([(PKSelectionController *)a1 _hasExternalElementsSelectedInAttachment:?])
            {

              a1 = 1;
              goto LABEL_14;
            }
          }

          v8 = [v7 countByEnumeratingWithState:&v12 objects:v16 count:16];
          if (v8)
          {
            continue;
          }

          break;
        }
      }

      a1 = 0;
    }
  }

LABEL_14:

  return a1;
}

- (void)_clearExternalSelectionInAttachment:(id *)a1
{
  v10 = a2;
  if (a1)
  {
    v3 = [(PKSelectionController *)a1 selectionInteraction];
    v4 = [v3 delegate];
    v5 = objc_opt_respondsToSelector();

    if (v5)
    {
      v6 = [(PKSelectionController *)a1 selectionInteraction];
      v7 = [v6 delegate];
      v8 = [(PKSelectionController *)a1 selectionInteraction];
      v9 = [v10 attachmentView];
      [v7 selectionInteraction:v8 clearSelectionInAttachment:v9];
    }
  }
}

- (void)clearSelectionIfNecessaryAnimated:(char)a3 toBeginSelectionGesture:(void *)a4 withCompletion:
{
  v7 = a4;
  if (a1)
  {
    if ([*(a1 + 152) isDragging])
    {
      if (v7)
      {
        v7[2](v7);
      }
    }

    else
    {
      *(a1 + 112) = 1;
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 3221225472;
      aBlock[2] = __98__PKSelectionController_clearSelectionIfNecessaryAnimated_toBeginSelectionGesture_withCompletion___block_invoke;
      aBlock[3] = &unk_1E82D63D8;
      aBlock[4] = a1;
      v23 = v7;
      v8 = _Block_copy(aBlock);
      if ([*(a1 + 144) isCurrentlyAddingSpace])
      {
        [*(a1 + 144) commitSpacingResize];
      }

      v9 = *(a1 + 128);
      if (*(a1 + 128))
      {
        v10 = os_log_create("com.apple.pencilkit", "Selection");
        if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
        {
          *v21 = 0;
          _os_log_debug_impl(&dword_1C7CCA000, v10, OS_LOG_TYPE_DEBUG, "Clearing the selection", v21, 2u);
        }

        v11 = +[PKSelectionStatisticsManager sharedStatisticsManager];
        [v11 logSelectionAction:0];

        WeakRetained = objc_loadWeakRetained((a1 + 120));
        v13 = [WeakRetained editMenuVisible];

        if (v13)
        {
          v14 = objc_loadWeakRetained((a1 + 120));
          v15 = [v14 editMenuInteraction];
          [v15 dismissMenu];
        }

        [(PKSelectionController *)a1 _removeSelectionViewAnimated:a2 withCompletion:v8];
        [(PKSelectionController *)a1 _resetSelectedStrokeStateForRenderer];
      }

      else if (v8)
      {
        v8[2](v8);
      }

      v16 = *(a1 + 128);
      if (v9 == v16)
      {
        v17 = [v16 drawing];
        [(PKSelectionController *)a1 setCurrentStrokeSelection:?];
        if ((a3 & 1) == 0 && v17)
        {
          v18 = objc_loadWeakRetained((a1 + 120));
          v19 = [v17 uuid];
          v20 = [v18 _attachmentForUUID:v19];

          if (objc_opt_respondsToSelector())
          {
            [v20 didDeselectAllStrokes];
          }
        }
      }
    }
  }
}

uint64_t __98__PKSelectionController_clearSelectionIfNecessaryAnimated_toBeginSelectionGesture_withCompletion___block_invoke(uint64_t a1)
{
  result = *(a1 + 40);
  if (result)
  {
    result = (*(result + 16))();
  }

  *(*(a1 + 32) + 112) = 0;
  return result;
}

- (void)commitStrokesWithCompletion:(uint64_t)a1
{
  v39 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (a1)
  {
    [(PKSelectionController *)a1 _resetSelectedStrokeStateForRenderer];
    [*(a1 + 152) frame];
    v5 = v4;
    v7 = v6;
    v9 = v8;
    v11 = v10;
    v12 = [(PKSelectionController *)a1 _drawingForSelectionRect:v4, v6, v8, v10];
    if (!*(a1 + 128))
    {
      [(PKSelectionController *)a1 _refreshTiledViewWithSelectionForDrawing:v12 completion:v3];
LABEL_23:

      goto LABEL_24;
    }

    v13 = [*(a1 + 152) strokeSelection];
    v14 = MEMORY[0x1E695EFD0];
    if (!v12)
    {
      v15 = os_log_create("com.apple.pencilkit", "Selection");
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
      {
        v40.origin.x = v5;
        v40.origin.y = v7;
        v40.size.width = v9;
        v40.size.height = v11;
        v32 = NSStringFromCGRect(v40);
        LODWORD(t1.a) = 138412290;
        *(&t1.a + 4) = v32;
        _os_log_debug_impl(&dword_1C7CCA000, v15, OS_LOG_TYPE_DEBUG, "Current stroke selection doesn't have a drawing for rect %@", &t1, 0xCu);
      }

      [*(a1 + 152) animateViewToOriginalPosition];
      v16 = [*(a1 + 128) drawing];
      v17 = v14[1];
      *(a1 + 168) = *v14;
      *(a1 + 184) = v17;
      *(a1 + 200) = v14[2];
      v12 = v16;
    }

    v18 = *(a1 + 184);
    *&t1.a = *(a1 + 168);
    *&t1.c = v18;
    *&t1.tx = *(a1 + 200);
    v19 = v14[1];
    *&v37.a = *v14;
    *&v37.c = v19;
    *&v37.tx = v14[2];
    if (CGAffineTransformEqualToTransform(&t1, &v37))
    {
      v20 = os_log_create("com.apple.pencilkit", "Selection");
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
      {
        LOWORD(t1.a) = 0;
        _os_log_debug_impl(&dword_1C7CCA000, v20, OS_LOG_TYPE_DEBUG, "Stroke selection was not moved, cancelled drag, or dragged out of the app.  Returning selection back to its original spot", &t1, 2u);
      }

      [(PKSelectionController *)a1 _refreshTiledViewWithSelectionForDrawing:v12 completion:v3];
      goto LABEL_22;
    }

    v21 = [*(a1 + 128) drawing];
    v22 = [v21 uuid];
    v23 = [(PKSelectionController *)a1 drawingForUUID:v22];

    v24 = [v12 uuid];
    v25 = [v23 uuid];
    v26 = [v24 isEqual:v25];

    if (v26)
    {
      v27 = os_log_create("com.apple.pencilkit", "Selection");
      if (os_log_type_enabled(v27, OS_LOG_TYPE_DEBUG))
      {
        v33 = [*(a1 + 128) strokes];
        v34 = [v33 count];
        LODWORD(t1.a) = 134217984;
        *(&t1.a + 4) = v34;
        _os_log_debug_impl(&dword_1C7CCA000, v27, OS_LOG_TYPE_DEBUG, "Moving stroke selection of %lu strokes inside same drawing", &t1, 0xCu);
      }

      v28 = [*(a1 + 152) selectionType];
      v29 = 0;
    }

    else
    {
      if (!v23)
      {
LABEL_21:

LABEL_22:
        goto LABEL_23;
      }

      v30 = os_log_create("com.apple.pencilkit", "Selection");
      if (os_log_type_enabled(v30, OS_LOG_TYPE_DEBUG))
      {
        v35 = [*(a1 + 128) strokes];
        v36 = [v35 count];
        LODWORD(t1.a) = 134217984;
        *(&t1.a + 4) = v36;
        _os_log_debug_impl(&dword_1C7CCA000, v30, OS_LOG_TYPE_DEBUG, "Committing stroke selection of %lu strokes from one drawing to another", &t1, 0xCu);
      }

      v28 = [*(a1 + 152) selectionType];
      v29 = 1;
    }

    v31 = [(PKSelectionController *)a1 _commitStrokeSelection:v13 toDrawing:v12 selectionAction:v29 inkChanges:0 selectionType:v28 withCompletion:v3];
    goto LABEL_21;
  }

LABEL_24:
}

- (id)_drawingForSelectionRect:(double)a3
{
  if (a1)
  {
    v5 = [(PKSelectionController *)a1 _attachmentForSelectionRect:a2, a3, a4, a5];
    v6 = [v5 drawing];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)_refreshTiledViewWithSelectionForDrawing:(void *)a3 completion:
{
  v10[1] = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  [(PKSelectionController *)a1 _resetSelectedStrokeStateForRenderer];
  if (v5)
  {
    v10[0] = v5;
    v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v10 count:1];
    [(PKSelectionController *)a1 _selectionRefreshWithChangeToDrawings:v7 completion:v6];
  }

  else
  {
    v8 = os_log_create("com.apple.pencilkit", "Selection");
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      *v9 = 0;
      _os_log_error_impl(&dword_1C7CCA000, v8, OS_LOG_TYPE_ERROR, "Current stroke selection doesn't have a drawing", v9, 2u);
    }

    if (v6)
    {
      v6[2](v6);
    }
  }
}

- (void)delete:(uint64_t)a1
{
  v3 = a2;
  if (a1)
  {
    v4 = +[PKSelectionStatisticsManager sharedStatisticsManager];
    [v4 logSelectionAction:6];

    if (*(a1 + 128) || ([(PKSelectionController *)a1 _currentAttachment], v5 = objc_claimAutoreleasedReturnValue(), v6 = [(PKSelectionController *)a1 _hasExternalElementsInAttachment:v5], v5, v6))
    {
      [(PKSelectionController *)a1 eraseSelection];
    }

    else
    {
      v7 = os_log_create("com.apple.pencilkit", "");
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        *v8 = 0;
        _os_log_error_impl(&dword_1C7CCA000, v7, OS_LOG_TYPE_ERROR, "SELECTION: No current selection in delete:", v8, 2u);
      }
    }
  }
}

- (BOOL)_hasExternalElementsInAttachment:(id *)a1
{
  v3 = a2;
  v4 = [(PKSelectionController *)a1 _externalElementsInAttachment:v3];
  v5 = [v4 count];

  return v5 != 0;
}

- (void)copy:(void *)a1
{
  v3 = a2;
  if (a1)
  {
    v4 = +[PKSelectionStatisticsManager sharedStatisticsManager];
    [v4 logSelectionAction:4];

    v5 = a1[16];
    if (v5)
    {
LABEL_5:
      [a1 _addItemsToPasteboard:v5];
      goto LABEL_6;
    }

    v6 = [(PKSelectionController *)a1 _currentAttachment];
    v7 = [(PKSelectionController *)a1 _hasExternalElementsInAttachment:v6];

    if (v7)
    {
      v5 = a1[16];
      goto LABEL_5;
    }

    v8 = os_log_create("com.apple.pencilkit", "");
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      *v9 = 0;
      _os_log_error_impl(&dword_1C7CCA000, v8, OS_LOG_TYPE_ERROR, "SELECTION: No current selection in copy:", v9, 2u);
    }
  }

LABEL_6:
}

- (void)cut:(void *)a1
{
  v3 = a2;
  if (a1)
  {
    v4 = +[PKSelectionStatisticsManager sharedStatisticsManager];
    [v4 logSelectionAction:3];

    v5 = a1[16];
    if (v5)
    {
LABEL_5:
      [a1 _addItemsToPasteboard:v5];
      [(PKSelectionController *)a1 eraseSelection];
      goto LABEL_6;
    }

    v6 = [(PKSelectionController *)a1 _currentAttachment];
    v7 = [(PKSelectionController *)a1 _hasExternalElementsInAttachment:v6];

    if (v7)
    {
      v5 = a1[16];
      goto LABEL_5;
    }

    v8 = os_log_create("com.apple.pencilkit", "");
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      *v9 = 0;
      _os_log_error_impl(&dword_1C7CCA000, v8, OS_LOG_TYPE_ERROR, "SELECTION: No current selection in cut:", v9, 2u);
    }
  }

LABEL_6:
}

- (void)duplicate:(id *)a1
{
  if (a1)
  {
    v2 = +[PKSelectionStatisticsManager sharedStatisticsManager];
    [v2 logSelectionAction:5];

    v3 = [(PKSelectionController *)a1 _currentAttachment];
    if (a1[16] || [(PKSelectionController *)a1 _hasExternalElementsInAttachment:v3])
    {
      v4 = [(PKSelectionController *)a1 _selectedExternalElementsInAttachment:v3];
      if (a1[16])
      {
        v5 = [a1[19] selectionType];
        [a1[19] frame];
        v7 = v6;
        v9 = v8;
        v11 = v10;
        v13 = v12;
        [a1[19] frame];
        v15 = v14;
        v17 = v16;
        v37.origin.x = v7;
        v37.origin.y = v9;
        v37.size.width = v11;
        v37.size.height = v13;
        MidX = CGRectGetMidX(v37);
        v38.origin.x = v7;
        v38.origin.y = v9;
        v38.size.width = v11;
        v38.size.height = v13;
        MidY = CGRectGetMidY(v38);
        WeakRetained = objc_loadWeakRetained(a1 + 15);
        v21 = [WeakRetained _maxFileFormatVersion];

        v22 = a1[16];
        if (v21 == 1)
        {
          [v22 legacyStrokeDataForSelection];
        }

        else
        {
          [v22 strokeDataForSelection];
        }
        v24 = ;
        v25 = [a1[16] drawing];
        v26 = [PKStrokeSelection strokeSelectionFromData:v24 forDrawingClass:objc_opt_class()];
        v27 = [(PKSelectionController *)a1 _didDuplicateExternalElements:v4 inAttachment:v3];
        [v26 setExternalElements:v27];

        v30[0] = MEMORY[0x1E69E9820];
        v30[1] = 3221225472;
        v30[2] = __35__PKSelectionController_duplicate___block_invoke;
        v30[3] = &unk_1E82D9558;
        v30[4] = a1;
        v28 = v26;
        v31 = v28;
        v33 = v15 * 0.1 + MidX;
        v34 = v17 * 0.1 + MidY;
        v29 = v25;
        v32 = v29;
        v35 = v5;
        [(PKSelectionController *)a1 clearSelectionIfNecessaryWithCompletion:v30];
      }

      else
      {
        v23 = [(PKSelectionController *)a1 _didDuplicateExternalElements:v4 inAttachment:v3];
      }
    }

    else
    {
      v4 = os_log_create("com.apple.pencilkit", "");
      if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_error_impl(&dword_1C7CCA000, v4, OS_LOG_TYPE_ERROR, "SELECTION: No current selection in duplicate:", buf, 2u);
      }
    }
  }
}

- (id)_didDuplicateExternalElements:(void *)a3 inAttachment:
{
  v5 = a2;
  v6 = a3;
  v7 = [(PKSelectionController *)a1 selectionInteraction];
  v8 = [v7 delegate];
  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    v16 = 0;
    goto LABEL_5;
  }

  v9 = [(PKSelectionController *)a1 selectionInteraction];
  v10 = [v9 delegate];
  v11 = objc_opt_respondsToSelector();

  if (v11)
  {
    v7 = [(PKSelectionController *)a1 _IDsFromExternalElements:v5];
    v12 = [(PKSelectionController *)a1 selectionInteraction];
    v13 = [v12 delegate];
    v14 = [(PKSelectionController *)a1 selectionInteraction];
    v15 = [v6 attachmentView];
    v8 = [v13 selectionInteraction:v14 didDuplicateElements:v7 inAttachment:v15];

    v16 = [(PKSelectionController *)a1 _externalElementsForIDs:v8 inAttachment:v6];
LABEL_5:

    goto LABEL_7;
  }

  v16 = 0;
LABEL_7:

  return v16;
}

- (void)_pasteStrokeSelection:(void *)a3 atPoint:(uint64_t)a4 inDrawing:(double)a5 withSelectionType:(double)a6
{
  v11 = a2;
  v12 = a3;
  if (a1)
  {
    [(PKSelectionController *)a1 setCurrentStrokeSelection:v11];
    v13 = *(MEMORY[0x1E695EFD0] + 16);
    *&v24.a = *MEMORY[0x1E695EFD0];
    *&v24.c = v13;
    *&v24.tx = *(MEMORY[0x1E695EFD0] + 32);
    memset(&v23, 0, sizeof(v23));
    [(PKSelectionController *)&v23 _selectionTransformForStrokes:a1 atLocation:v11 dragOffsetInDragView:1 constrainSelection:v12 inDrawing:a5, a6, *MEMORY[0x1E695EFF8], *(MEMORY[0x1E695EFF8] + 8)];
    t1 = v24;
    v20 = v23;
    CGAffineTransformConcat(&v22, &t1, &v20);
    v14 = *&v22.c;
    *(a1 + 168) = *&v22.a;
    *(a1 + 184) = v14;
    *(a1 + 200) = *&v22.tx;
    v15 = [(PKSelectionController *)a1 _attachmentForStrokeSelection:v11];
    v16 = [v11 externalElements];
    v17 = *(a1 + 184);
    *&t1.a = *(a1 + 168);
    *&t1.c = v17;
    *&t1.tx = *(a1 + 200);
    [(PKSelectionController *)a1 _didDragExternalElements:v16 withTransform:&t1 inAttachment:v15];

    v18 = [v11 externalElements];
    [(PKSelectionController *)a1 _didEndDraggingExternalElements:v18 inAttachment:v15];

    [(PKSelectionController *)a1 _refreshExternalElementsInStrokeSelection:v11];
    v19 = [(PKSelectionController *)a1 _commitStrokeSelection:v11 toDrawing:v12 selectionAction:2 selectionType:a4];
  }
}

- (void)copyAll:(uint64_t)a1
{
  v3 = a2;
  if (a1)
  {
    [(PKSelectionController *)a1 selectAll:v3];
    [a1 _addItemsToPasteboard:*(a1 + 128)];
    [(PKSelectionController *)a1 clearSelectionIfNecessaryAnimated:0 withCompletion:?];
  }
}

- (void)selectAll:(id *)a1
{
  v22 = a2;
  if (a1)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v3 = v22;
      [v3 sourcePoint];
      v6 = [(PKSelectionController *)a1 _drawingForSelectionRect:v5 + -60.0, 120.0, 120.0];
    }

    else
    {
      WeakRetained = objc_loadWeakRetained(a1 + 15);
      [WeakRetained bounds];
      x = v24.origin.x;
      y = v24.origin.y;
      width = v24.size.width;
      height = v24.size.height;
      MidX = CGRectGetMidX(v24);
      v25.origin.x = x;
      v25.origin.y = y;
      v25.size.width = width;
      v25.size.height = height;
      MidY = CGRectGetMidY(v25);

      v6 = [(PKSelectionController *)a1 _drawingForSelectionRect:MidY + -60.0, 120.0, 120.0];
    }

    v14 = objc_loadWeakRetained(a1 + 15);
    v15 = [v6 uuid];
    v16 = [v14 _attachmentForUUID:v15];

    v17 = MEMORY[0x1E695DFB8];
    v18 = [v6 strokes];
    v19 = [v17 orderedSetWithArray:v18];

    v20 = [(PKSelectionController *)a1 _externalElementsInAttachment:v16];
    [(PKSelectionController *)a1 selectStrokes:v19 externalElements:v20 forSelectionType:1 inDrawing:v6];
    v21 = +[PKStatisticsManager sharedStatisticsManager];
    [v19 count];
    [v20 count];
    [PKStatisticsManager recordSelectAllWithStrokeCount:v21 externalElementsCount:?];
  }
}

- (void)createSticker:(uint64_t)a1
{
  v3 = a2;
  if (!a1)
  {
    goto LABEL_8;
  }

  v4 = +[PKSelectionStatisticsManager sharedStatisticsManager];
  [v4 logSelectionAction:10];

  v5 = *(a1 + 128);
  if (v5)
  {
    goto LABEL_5;
  }

  v6 = [(PKSelectionController *)a1 _currentAttachment];
  v7 = [(PKSelectionController *)a1 _hasExternalElementsInAttachment:v6];

  if (v7)
  {
    v5 = *(a1 + 128);
LABEL_5:
    v8 = v5;
    v9 = [v8 strokes];
    v10 = [v9 count];

    if (v10)
    {
      v12[0] = MEMORY[0x1E69E9820];
      v12[1] = 3221225472;
      v12[2] = __43__PKSelectionController__addToStickerMenu___block_invoke;
      v12[3] = &unk_1E82D9530;
      v12[4] = a1;
      v13 = v8;
      [(PKSelectionController *)a1 generateImageForStrokeSelection:v13 scaleStrategy:1 highlighted:0 withCompletion:v12];
    }

    goto LABEL_8;
  }

  v11 = os_log_create("com.apple.pencilkit", "");
  if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
  {
    LOWORD(v12[0]) = 0;
    _os_log_error_impl(&dword_1C7CCA000, v11, OS_LOG_TYPE_ERROR, "SELECTION: No current selection in copy:", v12, 2u);
  }

LABEL_8:
}

- (void)paste:(uint64_t)a1
{
  v130 = *MEMORY[0x1E69E9840];
  v103 = a2;
  if (a1)
  {
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
    if (isKindOfClass)
    {
      [v103 sourcePoint];
      v5 = v4;
      v7 = v6;
      v8 = [(PKSelectionController *)a1 _drawingForSelectionRect:v4, v6, 40.0, 40.0];
    }

    else
    {
      if (*(a1 + 128))
      {
        [*(a1 + 152) frame];
        v10 = v9;
        v12 = v11;
        v14 = v13;
        v16 = v15;
        [*(a1 + 152) frame];
        v18 = v17;
        v20 = v19;
        v131.origin.x = v10;
        v131.origin.y = v12;
        v131.size.width = v14;
        v131.size.height = v16;
        MidX = CGRectGetMidX(v131);
        v132.origin.x = v10;
        v132.origin.y = v12;
        v132.size.width = v14;
        v132.size.height = v16;
        v22 = v18 * 0.1 + MidX;
        MidY = v20 * 0.1 + CGRectGetMidY(v132);
      }

      else
      {
        WeakRetained = objc_loadWeakRetained((a1 + 120));
        [WeakRetained bounds];
        x = v133.origin.x;
        y = v133.origin.y;
        width = v133.size.width;
        height = v133.size.height;
        v22 = CGRectGetMidX(v133);
        v134.origin.x = x;
        v134.origin.y = y;
        v134.size.width = width;
        v134.size.height = height;
        MidY = CGRectGetMidY(v134);
      }

      v124 = 0;
      v5 = [(PKSelectionController *)a1 closestPointForPastedSelectionRect:v22 + -60.0 withDrawing:MidY + -60.0, 120.0, 120.0];
      v7 = v29;
      v8 = v124;
    }

    v30 = v8;
    v31 = objc_loadWeakRetained((a1 + 120));
    v107 = [v31 effectiveMaximumSupportedContentVersion];

    v32 = objc_loadWeakRetained((a1 + 120));
    v33 = [v30 uuid];
    v102 = [v32 _attachmentForUUID:v33];

    v111 = v30;
    *&v34 = [(PKSelectionController *)a1 _pointInStrokeSpace:v30 inDrawing:v5, v7].n128_u64[0];
    v36 = v35;
    v104 = v102;
    v37 = [(PKSelectionController *)a1 selectionInteraction];
    v108 = isKindOfClass;
    v38 = [v37 delegate];
    v39 = objc_opt_respondsToSelector();

    if (v39)
    {
      v40 = [(PKSelectionController *)a1 selectionInteraction];
      v41 = [v40 delegate];
      v42 = [(PKSelectionController *)a1 selectionInteraction];
      v43 = [v104 attachmentView];
      [v41 selectionInteractionDidPaste:v42 atPoint:v43 inAttachment:{v34, v36}];
    }

    v105 = [(PKSelectionController *)a1 _selectedExternalElementsInAttachment:v104];
    v44 = [(PKSelectionController *)a1 currentPasteboard];
    v128[0] = @"com.apple.pencilkit.strokes";
    v128[1] = @"com.apple.drawing";
    v45 = [MEMORY[0x1E695DEC8] arrayWithObjects:v128 count:2];
    v46 = [v44 containsPasteboardTypes:v45];

    if (v46)
    {
      v101 = [(PKSelectionController *)a1 currentPasteboard];
      [v101 items];
      v122 = 0u;
      v123 = 0u;
      v121 = 0u;
      obj = v120 = 0u;
      v47 = [obj countByEnumeratingWithState:&v120 objects:v127 count:16];
      if (!v47)
      {
        goto LABEL_46;
      }

      v109 = *v121;
      while (1)
      {
        v110 = v47;
        for (i = 0; i != v110; ++i)
        {
          if (*v121 != v109)
          {
            objc_enumerationMutation(obj);
          }

          v49 = *(*(&v120 + 1) + 8 * i);
          v50 = [v49 objectForKeyedSubscript:@"com.apple.pencilkit.strokes"];
          v51 = [v49 objectForKeyedSubscript:@"com.apple.drawing"];
          if (v51)
          {
            v52 = objc_loadWeakRetained((a1 + 120));
            v53 = [v52 visibleAttachments];
            v54 = [v53 count] == 0;

            if (v54)
            {
              v59 = objc_opt_class();
            }

            else
            {
              v55 = objc_loadWeakRetained((a1 + 120));
              v56 = [v55 visibleAttachments];
              v57 = [v56 firstObject];
              v58 = [v57 drawing];
              v59 = objc_opt_class();
            }

            v60 = v59;
            v61 = [PKStrokeSelection strokeSelectionFromData:v51 forDrawingClass:v59];
            v62 = v61;
            if (v108)
            {
              v63 = v111;
            }

            else
            {
              v64 = v61;
              [v64 bounds];
              v66 = v65;
              v68 = v67;
              v70 = v69;
              v72 = v71;
              v73 = [v64 drawing];
              [(PKSelectionController *)a1 _selectionDrawingTransformForDrawing:v73, &v129];
              v135.origin.x = v66;
              v135.origin.y = v68;
              v135.size.width = v70;
              v135.size.height = v72;
              v136 = CGRectApplyAffineTransform(v135, &v129);
              v74 = v136.size.width;
              v75 = v136.size.height;

              v119 = 0;
              v5 = [(PKSelectionController *)a1 closestPointForPastedSelectionRect:v5 - v74 * 0.5 withDrawing:v7 - v75 * 0.5, v74, v75];
              v7 = v76;
              v63 = v119;
            }

            v111 = v63;
            if (!v63)
            {
              goto LABEL_43;
            }

            v77 = objc_loadWeakRetained((a1 + 120));
            v78 = [v77 _maxFileFormatVersion];

            if (v50 && v78 == 1)
            {
              v79 = [PKStrokeSelection strokeSelectionFromData:v50 forDrawingClass:objc_opt_class()];
              goto LABEL_29;
            }

            if (v78 < 2)
            {
              v80 = 0;
            }

            else
            {
              v79 = v62;
LABEL_29:
              v80 = v79;
            }

            [v80 setExternalElements:v105];
            if (v107 <= 3 && v80)
            {
              if ([v80 requiredContentVersion] > v107)
              {
                v81 = os_log_create("com.apple.pencilkit", "Selection");
                if (os_log_type_enabled(v81, OS_LOG_TYPE_ERROR))
                {
                  v84 = [v80 requiredContentVersion];
                  LODWORD(v129.a) = 134218240;
                  *(&v129.a + 4) = v84;
                  WORD2(v129.b) = 2048;
                  *(&v129.b + 6) = v107;
                  _os_log_error_impl(&dword_1C7CCA000, v81, OS_LOG_TYPE_ERROR, "Trying to paste a stroke selection with required version: %ld, into max version: %ld", &v129, 0x16u);
                }

LABEL_42:
LABEL_43:

                goto LABEL_44;
              }
            }

            else if (!v80)
            {
              goto LABEL_43;
            }

            aBlock[0] = MEMORY[0x1E69E9820];
            aBlock[1] = 3221225472;
            aBlock[2] = __31__PKSelectionController_paste___block_invoke;
            aBlock[3] = &unk_1E82D9580;
            aBlock[4] = a1;
            v115 = v80;
            v117 = v5;
            v118 = v7;
            v116 = v111;
            v82 = _Block_copy(aBlock);
            v83 = v82;
            if (*(a1 + 128))
            {
              v112[0] = MEMORY[0x1E69E9820];
              v112[1] = 3221225472;
              v112[2] = __31__PKSelectionController_paste___block_invoke_2;
              v112[3] = &unk_1E82D63B0;
              v113 = v82;
              [(PKSelectionController *)a1 clearSelectionIfNecessaryWithCompletion:v112];
            }

            else
            {
              v82[2](v82);
            }

            goto LABEL_42;
          }

LABEL_44:
        }

        v47 = [obj countByEnumeratingWithState:&v120 objects:v127 count:16];
        if (!v47)
        {
LABEL_46:

          goto LABEL_56;
        }
      }
    }

    if (v108)
    {
      v85 = v105;
      v87 = *MEMORY[0x1E695F050];
      v86 = *(MEMORY[0x1E695F050] + 8);
      v89 = *(MEMORY[0x1E695F050] + 16);
      v88 = *(MEMORY[0x1E695F050] + 24);
      memset(&v125, 0, sizeof(v125));
      v126 = 0u;
      v90 = v85;
      v91 = [v90 countByEnumeratingWithState:&v125 objects:&v129 count:16];
      if (v91)
      {
        v92 = **&v125.c;
        do
        {
          for (j = 0; j != v91; ++j)
          {
            if (**&v125.c != v92)
            {
              objc_enumerationMutation(v90);
            }

            [*(*&v125.b + 8 * j) boundingBox];
            v141.origin.x = v94;
            v141.origin.y = v95;
            v141.size.width = v96;
            v141.size.height = v97;
            v137.origin.x = v87;
            v137.origin.y = v86;
            v137.size.width = v89;
            v137.size.height = v88;
            v138 = CGRectUnion(v137, v141);
            v87 = v138.origin.x;
            v86 = v138.origin.y;
            v89 = v138.size.width;
            v88 = v138.size.height;
          }

          v91 = [v90 countByEnumeratingWithState:&v125 objects:&v129 count:16];
        }

        while (v91);
      }

      v139.origin.x = v87;
      v139.origin.y = v86;
      v139.size.width = v89;
      v139.size.height = v88;
      v98 = CGRectGetMidX(v139);
      v140.origin.x = v87;
      v140.origin.y = v86;
      v140.size.width = v89;
      v140.size.height = v88;
      v99 = CGRectGetMidY(v140);
      memset(&v129, 0, sizeof(v129));
      v100 = *(MEMORY[0x1E695EFD0] + 16);
      *&v125.a = *MEMORY[0x1E695EFD0];
      *&v125.c = v100;
      *&v125.tx = *(MEMORY[0x1E695EFD0] + 32);
      CGAffineTransformTranslate(&v129, &v125, v34 - v98, v36 - v99);
      v125 = v129;
      [(PKSelectionController *)a1 _didDragExternalElements:v90 withTransform:&v125 inAttachment:v104];
      [(PKSelectionController *)a1 _didEndDraggingExternalElements:v90 inAttachment:v104];
    }

LABEL_56:
  }
}

- (double)closestPointForPastedSelectionRect:(double)a3 withDrawing:(double)a4
{
  *&v57[16] = a5;
  *&v57[24] = a6;
  *v57 = a3;
  *&v57[8] = a4;
  v67 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    return 0.0;
  }

  MidX = *MEMORY[0x1E695EFF8];
  v60 = 0u;
  v61 = 0u;
  v62 = 0u;
  v63 = 0u;
  WeakRetained = objc_loadWeakRetained((a1 + 120));
  v8 = [WeakRetained visibleAttachments];

  v9 = 0;
  v10 = [v8 countByEnumeratingWithState:&v60 objects:v66 count:16];
  if (!v10)
  {
    goto LABEL_27;
  }

  v11 = *v61;
  v59 = 1.79769313e308;
  while (2)
  {
    for (i = 0; i != v10; ++i)
    {
      if (*v61 != v11)
      {
        objc_enumerationMutation(v8);
      }

      v13 = *(*(&v60 + 1) + 8 * i);
      v14 = objc_loadWeakRetained((a1 + 120));
      [v14 convertRect:v14 fromView:{*v57, *&v57[8], *&v57[16], *&v57[24]}];
      v16 = v15;
      v18 = v17;
      v20 = v19;
      v22 = v21;

      v23 = [v13 superview];
      v24 = [v13 tileMaskView];
      [v24 frame];
      [v23 convertRect:v13 fromView:?];
      v26 = v25;
      v28 = v27;
      v30 = v29;
      v32 = v31;

      v33 = objc_loadWeakRetained((a1 + 120));
      v34 = [v33 scrollView];
      [v33 convertRect:v34 fromView:{v26, v28, v30, v32}];
      v36 = v35;
      v38 = v37;
      v40 = v39;
      v42 = v41;

      v43 = [v13 isAtEndOfDocument];
      if (v18 > v38)
      {
        v44 = v43;
      }

      else
      {
        v44 = 0;
      }

      if (v44 == 1)
      {
        v50 = v13;

        MidX = CGRectGetMidX(*v57);
        CGRectGetMidY(*v57);
LABEL_26:
        v9 = v50;
        goto LABEL_27;
      }

      v71.origin.x = v36;
      v71.origin.y = v38;
      v71.size.width = v40;
      v71.size.height = v42;
      v76.origin.x = v16;
      v76.origin.y = v18;
      v76.size.width = v20;
      v76.size.height = v22;
      if (CGRectContainsRect(v71, v76))
      {
        v50 = v13;

        MidX = CGRectGetMidX(*v57);
        MidY = CGRectGetMidY(*v57);
        v51 = os_log_create("com.apple.pencilkit", "Paste");
        if (os_log_type_enabled(v51, OS_LOG_TYPE_DEBUG))
        {
          v70.y = MidY;
          v70.x = MidX;
          v53 = NSStringFromCGPoint(v70);
          *buf = 138412290;
          v65 = v53;
          _os_log_debug_impl(&dword_1C7CCA000, v51, OS_LOG_TYPE_DEBUG, "Pasting stroke inside of existing drawing at point %@", buf, 0xCu);
        }

        goto LABEL_26;
      }

      v58 = DKDDistanceToRectFromRect(v36, v38, v40, v42, v16, v18, v20, v22);
      if (v58 < v59)
      {
        v45 = v13;

        v72.origin.x = v16;
        v72.origin.y = v18;
        v72.size.width = v20;
        v72.size.height = v22;
        MidX = CGRectGetMidX(v72);
        v73.origin.x = v16;
        v73.origin.y = v18;
        v73.size.width = v20;
        v73.size.height = v22;
        v46 = CGRectGetMidY(v73);
        v74.origin.x = v36;
        v74.origin.y = v38;
        v74.size.width = v40;
        v74.size.height = v42;
        CGRectGetMidX(v74);
        v75.origin.x = v36;
        v75.origin.y = v38;
        v75.size.width = v40;
        v75.size.height = v42;
        if (v46 <= CGRectGetMidY(v75))
        {
          v47 = os_log_create("com.apple.pencilkit", "Paste");
          if (os_log_type_enabled(v47, OS_LOG_TYPE_DEBUG))
          {
            v69.y = v22 * 0.5 + v38;
            v69.x = MidX;
            v49 = NSStringFromCGPoint(v69);
            *buf = 138412290;
            v65 = v49;
            _os_log_debug_impl(&dword_1C7CCA000, v47, OS_LOG_TYPE_DEBUG, "Pasting stroke, clamped to the top of a drawing at %@", buf, 0xCu);
          }
        }

        else
        {
          v47 = os_log_create("com.apple.pencilkit", "Paste");
          if (os_log_type_enabled(v47, OS_LOG_TYPE_DEBUG))
          {
            v68.y = v38 + v42 + v22 * -0.5;
            v68.x = MidX;
            v48 = NSStringFromCGPoint(v68);
            *buf = 138412290;
            v65 = v48;
            _os_log_debug_impl(&dword_1C7CCA000, v47, OS_LOG_TYPE_DEBUG, "Pasting stroke, clamped to the bottom of a drawing at %@", buf, 0xCu);
          }
        }

        v9 = v45;
        v59 = v58;
      }
    }

    v10 = [v8 countByEnumeratingWithState:&v60 objects:v66 count:16];
    if (v10)
    {
      continue;
    }

    break;
  }

LABEL_27:

  *a2 = [v9 drawing];

  return MidX;
}

- (__n128)_pointInStrokeSpace:(double)a3 inDrawing:(double)a4
{
  v7 = a2;
  if (a1)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 120));
    v9 = [v7 uuid];
    v10 = [WeakRetained _attachmentForUUID:v9];

    v11 = [v10 tileContainerView];
    v12 = objc_loadWeakRetained((a1 + 120));
    [v11 convertPoint:v12 fromView:{a3, a4}];
    v16 = v14;
    v17 = v13;

    if (v10)
    {
      [v10 drawingTransform];
    }

    else
    {
      memset(&v19, 0, sizeof(v19));
    }

    CGAffineTransformInvert(&v20, &v19);
    v18 = vaddq_f64(*&v20.tx, vmlaq_n_f64(vmulq_n_f64(*&v20.c, *&v16), *&v20.a, *&v17));
  }

  else
  {
    v18 = 0u;
  }

  return v18;
}

- (void)_didDragExternalElements:(void *)a3 withTransform:(void *)a4 inAttachment:
{
  v7 = a2;
  v8 = a4;
  if (a1)
  {
    v9 = [(PKSelectionController *)a1 selectionInteraction];
    v10 = [v9 delegate];
    v11 = objc_opt_respondsToSelector();

    if (v11)
    {
      v12 = [(PKSelectionController *)a1 _IDsFromExternalElements:v7];
      v13 = [(PKSelectionController *)a1 selectionInteraction];
      v14 = [v13 delegate];
      v15 = [(PKSelectionController *)a1 selectionInteraction];
      v16 = [v8 attachmentView];
      [v14 selectionInteraction:v15 didDragElements:v12 withTransform:&v17 inAttachment:v16];
    }
  }
}

- (void)_didEndDraggingExternalElements:(void *)a3 inAttachment:
{
  v14 = a2;
  v5 = a3;
  if (a1)
  {
    v6 = [(PKSelectionController *)a1 selectionInteraction];
    v7 = [v6 delegate];
    v8 = objc_opt_respondsToSelector();

    if (v8)
    {
      v9 = [(PKSelectionController *)a1 _IDsFromExternalElements:v14];
      v10 = [(PKSelectionController *)a1 selectionInteraction];
      v11 = [v10 delegate];
      v12 = [(PKSelectionController *)a1 selectionInteraction];
      v13 = [v5 attachmentView];
      [v11 selectionInteraction:v12 didEndDraggingElements:v9 inAttachment:v13];
    }
  }
}

- (void)changeColorOfSelection:(uint64_t)a1
{
  v3 = a2;
  if (a1)
  {
    [(PKSelectionController *)a1 changeColorOfSelection:v3 withCompletion:0];
  }
}

- (void)changeColorOfSelection:(void *)a3 withCompletion:
{
  v26[1] = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if (a1)
  {
    v7 = +[PKSelectionStatisticsManager sharedStatisticsManager];
    [v7 logSelectionAction:2];

    if (v6)
    {
LABEL_3:
      [(PKSelectionController *)a1 _resetSelectedStrokeStateForRenderer];
      v25 = @"PKInkColorProperty";
      v26[0] = v5;
      v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v26 forKeys:&v25 count:1];
      *(a1 + 88) = 1;
      objc_initWeak(&location, a1);
      v9 = *(a1 + 128);
      v10 = [v9 drawing];
      v11 = [*(a1 + 152) selectionType];
      v18[0] = MEMORY[0x1E69E9820];
      v18[1] = 3221225472;
      v18[2] = __63__PKSelectionController_changeColorOfSelection_withCompletion___block_invoke_2;
      v18[3] = &unk_1E82D95A8;
      v19 = v6;
      objc_copyWeak(&v20, &location);
      v12 = [(PKSelectionController *)a1 _commitStrokeSelection:v9 toDrawing:v10 selectionAction:3 inkChanges:v8 selectionType:v11 withCompletion:v18];

      objc_destroyWeak(&v20);
      objc_destroyWeak(&location);

      goto LABEL_10;
    }

    v13 = *(a1 + 96);
    if (*(a1 + 88))
    {
      if (!v13)
      {
        goto LABEL_9;
      }
    }

    else if (!v13)
    {
      goto LABEL_3;
    }

    dispatch_block_cancel(v13);
LABEL_9:
    objc_initWeak(&location, a1);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __63__PKSelectionController_changeColorOfSelection_withCompletion___block_invoke;
    block[3] = &unk_1E82D6DA8;
    objc_copyWeak(&v23, &location);
    v22 = v5;
    v14 = dispatch_block_create(0, block);
    v16 = *(a1 + 96);
    v15 = (a1 + 96);
    *v15 = v14;

    v17 = dispatch_time(0, 100000000);
    dispatch_after(v17, MEMORY[0x1E69E96A0], *v15);

    objc_destroyWeak(&v23);
    objc_destroyWeak(&location);
  }

LABEL_10:
}

void __63__PKSelectionController_changeColorOfSelection_withCompletion___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v2 = WeakRetained[12];
    WeakRetained[12] = 0;

    if (WeakRetained[16])
    {
      [(PKSelectionController *)WeakRetained changeColorOfSelection:?];
    }
  }
}

void __63__PKSelectionController_changeColorOfSelection_withCompletion___block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    (*(v2 + 16))();
  }

  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    WeakRetained[88] = 0;
  }
}

- (void)_selectionTransformForStrokes:(void *)a3 atLocation:(int)a4 dragOffsetInDragView:(void *)a5 constrainSelection:(double)a6 inDrawing:(double)a7
{
  v17 = a3;
  v18 = a5;
  if (a2)
  {
    v19 = *(a2 + 152);
    v55 = a9;
    if (v19 && ([v19 strokeSelection], v20 = objc_claimAutoreleasedReturnValue(), v20, v19 = *(a2 + 152), v20 == v17))
    {
      [v19 frame];
      v25 = v27;
      v26 = v28;
      v22 = v29;
      v24 = v30;
    }

    else
    {
      [v19 frame];
      v22 = v21;
      v24 = v23;
      v25 = a6 - a8 - v21 * 0.5;
      v26 = a7 - a9 - v23 * 0.5;
    }

    v60.origin.x = v25;
    v60.origin.y = v26;
    v60.size.width = v22;
    v60.size.height = v24;
    MidX = CGRectGetMidX(v60);
    v61.origin.x = v25;
    v61.origin.y = v26;
    v61.size.width = v22;
    v61.size.height = v24;
    MidY = CGRectGetMidY(v61);
    v33 = [(PKSelectionController *)a2 _pointInStrokeSpace:v18 inDrawing:MidX, MidY].n128_u64[0];
    v35 = v34;
    v36 = a7;
    [v17 bounds];
    x = v62.origin.x;
    y = v62.origin.y;
    width = v62.size.width;
    height = v62.size.height;
    v41 = CGRectGetMidX(v62);
    v63.origin.x = x;
    v63.origin.y = y;
    v63.size.width = width;
    v63.size.height = height;
    v42 = CGRectGetMidY(v63);
    *a1 = 0u;
    *(a1 + 16) = 0u;
    *(a1 + 32) = 0u;
    CGAffineTransformMakeTranslation(a1, -v41, -v42);
    if (a4)
    {
      WeakRetained = objc_loadWeakRetained((a2 + 120));
      [WeakRetained frame];
      v45 = v44;
      [(PKSelectionController *)a2 _selectionDrawingTransformForDrawing:v18, &v59];
      v46 = DKDScaleForTransform(&v59);

      [v17 boundsWithoutLasso];
      v48 = v45 / v46;
      if (v47 > v48)
      {
        memset(&v59, 0, sizeof(v59));
        v49 = v48 / v47;
        CGAffineTransformMakeScale(&v59, v48 / v47, v48 / v47);
        v50 = *(a1 + 16);
        *&t1.a = *a1;
        *&t1.c = v50;
        *&t1.tx = *(a1 + 32);
        t2 = v59;
        CGAffineTransformConcat(&v58, &t1, &t2);
        v51 = *&v58.c;
        *a1 = *&v58.a;
        *(a1 + 16) = v51;
        *(a1 + 32) = *&v58.tx;
        v33 = [(PKSelectionController *)a2 _pointInStrokeSpace:v18 inDrawing:v48 * 0.5, v36 - v55 * v49].n128_u64[0];
        v35 = v52;
      }
    }

    v53 = *(a1 + 16);
    *&v58.a = *a1;
    *&v58.c = v53;
    *&v58.tx = *(a1 + 32);
    CGAffineTransformMakeTranslation(&t1, *&v33, v35);
    CGAffineTransformConcat(&v59, &v58, &t1);
    v54 = *&v59.c;
    *a1 = *&v59.a;
    *(a1 + 16) = v54;
    *(a1 + 32) = *&v59.tx;
  }

  else
  {
    *(a1 + 16) = 0u;
    *(a1 + 32) = 0u;
    *a1 = 0u;
  }
}

- (id)_strokeSelectionForDropSession:(uint64_t)a1
{
  v3 = a2;
  v4 = v3;
  if (a1)
  {
    v5 = [v3 localDragSession];
    v6 = [v5 localContext];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [v4 localDragSession];
      v8 = [v7 localContext];
    }

    else
    {
      v8 = 0;
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

void __77__PKSelectionController__createSelectionViewForDropSession_removeFromSource___block_invoke(uint64_t a1, void *a2)
{
  v14 = *MEMORY[0x1E69E9840];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v3 = a2;
  v4 = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v4)
  {
    v5 = *v10;
    do
    {
      v6 = 0;
      do
      {
        if (*v10 != v5)
        {
          objc_enumerationMutation(v3);
        }

        v7 = *(*(&v9 + 1) + 8 * v6);
        v8 = [*(a1 + 32) externalElementsItemProvider];
        [v7 setExternalElementsItemProvider:v8];

        [(PKSelectionController *)*(a1 + 40) _createSelectionViewForDropSession:*(a1 + 56) removeFromSource:v7 withStrokeSelection:?];
        ++v6;
      }

      while (v4 != v6);
      v4 = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v4);
  }
}

- (void)_createSelectionViewForDropSession:(char)a3 removeFromSource:(void *)a4 withStrokeSelection:
{
  v7 = a2;
  v8 = a4;
  if (a1)
  {
    WeakRetained = objc_loadWeakRetained(a1 + 15);
    [v7 locationInView:WeakRetained];
    v11 = v10;
    v13 = v12;

    v14 = [(PKSelectionController *)a1 _drawingForSelectionRect:v11, v13, 120.0, 120.0];
    v15 = objc_loadWeakRetained(a1 + 15);
    v16 = [v14 uuid];
    v17 = [v15 _attachmentForUUID:v16];

    v18 = [v8 externalElementsItemProvider];
    v21[0] = MEMORY[0x1E69E9820];
    v21[1] = 3221225472;
    v21[2] = __97__PKSelectionController__createSelectionViewForDropSession_removeFromSource_withStrokeSelection___block_invoke;
    v21[3] = &unk_1E82D95F8;
    v22 = v8;
    v23 = a1;
    v19 = v17;
    v24 = v19;
    v25 = v7;
    v20 = v14;
    v26 = v20;
    v27 = a3;
    [(PKSelectionController *)a1 _didDropExternalElementsItemProvider:v18 inAttachment:v19 withCompletion:v21];
  }
}

id __97__PKSelectionController__createSelectionViewForDropSession_removeFromSource_withStrokeSelection___block_invoke(uint64_t a1, void *a2)
{
  v3 = [(PKSelectionController *)*(a1 + 40) _externalElementsForIDs:a2 inAttachment:*(a1 + 48)];
  [*(a1 + 32) setExternalElements:v3];

  v4 = *(MEMORY[0x1E695EFD0] + 16);
  *&v25.a = *MEMORY[0x1E695EFD0];
  *&v25.c = v4;
  *&v25.tx = *(MEMORY[0x1E695EFD0] + 32);
  memset(&v24, 0, sizeof(v24));
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);
  v7 = *(a1 + 56);
  v8 = [(PKSelectionController *)v5 topView];
  [v7 locationInView:v8];
  [(PKSelectionController *)&v24 _selectionTransformForStrokes:v5 atLocation:v6 dragOffsetInDragView:1 constrainSelection:*(a1 + 64) inDrawing:v9, v10, *MEMORY[0x1E695EFF8], *(MEMORY[0x1E695EFF8] + 8)];

  t1 = v25;
  v21 = v24;
  CGAffineTransformConcat(&v23, &t1, &v21);
  v11 = *(a1 + 40);
  if (v11)
  {
    v12 = *&v23.c;
    *(v11 + 168) = *&v23.a;
    *(v11 + 184) = v12;
    *(v11 + 200) = *&v23.tx;
    v13 = *(a1 + 40);
  }

  else
  {
    v13 = 0;
  }

  v14 = [*(a1 + 32) externalElements];
  v15 = *(a1 + 40);
  if (v15)
  {
    v16 = *(v15 + 184);
    *&t1.a = *(v15 + 168);
    *&t1.c = v16;
    *&t1.tx = *(v15 + 200);
  }

  else
  {
    memset(&t1, 0, sizeof(t1));
  }

  [(PKSelectionController *)v13 _didDragExternalElements:v14 withTransform:&t1 inAttachment:*(a1 + 48)];

  v17 = *(a1 + 40);
  v18 = [*(a1 + 32) externalElements];
  [(PKSelectionController *)v17 _didEndDraggingExternalElements:v18 inAttachment:*(a1 + 48)];

  [(PKSelectionController *)*(a1 + 40) _refreshExternalElementsInStrokeSelection:?];
  if (*(a1 + 72))
  {
    v19 = 0;
  }

  else
  {
    v19 = 2;
  }

  return [(PKSelectionController *)*(a1 + 40) _commitStrokeSelection:*(a1 + 64) toDrawing:v19 selectionAction:0 selectionType:?];
}

- (id)_externalElementsForIDs:(void *)a3 inAttachment:
{
  v28 = *MEMORY[0x1E69E9840];
  v19 = a2;
  v22 = a3;
  if (a1 && (-[PKSelectionController selectionInteraction](a1), v5 = objc_claimAutoreleasedReturnValue(), [v5 delegate], v6 = objc_claimAutoreleasedReturnValue(), v7 = objc_opt_respondsToSelector(), v6, v5, (v7 & 1) != 0))
  {
    v21 = [MEMORY[0x1E695DFA0] orderedSet];
    v25 = 0u;
    v26 = 0u;
    v23 = 0u;
    v24 = 0u;
    obj = v19;
    v8 = [obj countByEnumeratingWithState:&v23 objects:v27 count:16];
    if (v8)
    {
      v9 = *v24;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v24 != v9)
          {
            objc_enumerationMutation(obj);
          }

          v11 = *(*(&v23 + 1) + 8 * i);
          v12 = [(PKSelectionController *)a1 selectionInteraction];
          v13 = [v12 delegate];
          v14 = [(PKSelectionController *)a1 selectionInteraction];
          v15 = [v22 attachmentView];
          v16 = [v13 selectionInteraction:v14 pathForElement:v11 inAttachment:v15];

          v17 = [[PKExternalElement alloc] initWithIdentifier:v11 path:v16];
          [v21 addObject:v17];
        }

        v8 = [obj countByEnumeratingWithState:&v23 objects:v27 count:16];
      }

      while (v8);
    }
  }

  else
  {
    v21 = 0;
  }

  return v21;
}

- (void)_didDropExternalElementsItemProvider:(void *)a3 inAttachment:(void *)a4 withCompletion:
{
  v16 = a2;
  v7 = a3;
  v8 = a4;
  if (a1)
  {
    v9 = [(PKSelectionController *)a1 selectionInteraction];
    v10 = [v9 delegate];
    v11 = objc_opt_respondsToSelector();

    if (v11)
    {
      v12 = [(PKSelectionController *)a1 selectionInteraction];
      v13 = [v12 delegate];
      v14 = [(PKSelectionController *)a1 selectionInteraction];
      v15 = [v7 attachmentView];
      [v13 selectionInteraction:v14 didDropItemProvider:v16 inAttachment:v15 withCompletion:v8];
    }

    else
    {
      v8[2](v8, 0);
    }
  }
}

- (void)updateCurrentStrokeSelectionTransformForLocation:(double)a3 atLocation:(double)a4 offsetInTouchView:(double)a5
{
  v11 = a2;
  if (a1)
  {
    [*(a1 + 152) frame];
    v13 = v12;
    v15 = v14;
    v16 = [(PKSelectionController *)a1 _drawingForSelectionRect:a4 - a6, v12, v14];
    if (!v16)
    {
      v24 = 0;
      [(PKSelectionController *)a1 closestPointForPastedSelectionRect:a3 - a5 withDrawing:a4 - a6, v13, v15];
      v16 = v24;
    }

    [(PKSelectionController *)v23 _selectionTransformForStrokes:a1 atLocation:v11 dragOffsetInDragView:0 constrainSelection:v16 inDrawing:a3, a4, a5, a6];
    v17 = v23[1];
    *(a1 + 168) = v23[0];
    *(a1 + 184) = v17;
    *(a1 + 200) = v23[2];
    if (!*(a1 + 24))
    {
      v18 = [v11 drawing];
      v19 = [v18 uuid];
      v20 = *(a1 + 24);
      *(a1 + 24) = v19;
    }

    v21 = [v16 uuid];
    v22 = *(a1 + 24);
    *(a1 + 24) = v21;
  }
}

- (id)_externalElementsInAttachment:(id *)a1
{
  v3 = a2;
  v4 = [(PKSelectionController *)a1 selectionInteraction];
  v5 = [v4 delegate];
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    v7 = [(PKSelectionController *)a1 selectionInteraction];
    v8 = [v7 delegate];
    v9 = [(PKSelectionController *)a1 selectionInteraction];
    v10 = [v3 attachmentView];
    v11 = [v8 selectionInteraction:v9 elementsInAttachment:v10];

    v12 = [(PKSelectionController *)a1 _externalElementsForIDs:v11 inAttachment:v3];
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (void)didBeginSpaceInsertionWithLassoPath:(double)a3 atLocation:(double)a4
{
  v7 = a2;
  if (a1)
  {
    v8 = [(PKSelectionController *)a1 _drawingForSelectionRect:a4 + -60.0, 120.0, 120.0];
    v9 = [(PKSelectionController *)a1 _strokeForLassoPath:v7 inDrawing:v8];
    WeakRetained = objc_loadWeakRetained(a1 + 15);
    v11 = WeakRetained;
    if (WeakRetained)
    {
      [WeakRetained transformFromViewToStrokeSpaceInDrawing:v8];
      v12 = v22;
      v13 = v23;
      v15 = v24;
      v14 = v25;
      v17 = v26;
      v16 = v27;
    }

    else
    {
      v16 = 0.0;
      v14 = 0.0;
      v13 = 0.0;
      v17 = 0.0;
      v15 = 0.0;
      v12 = 0.0;
    }

    v18 = objc_loadWeakRetained(a1 + 15);
    v19 = [v8 uuid];
    v20 = [v18 _attachmentForUUID:v19];

    v21 = [(PKSelectionController *)a1 _elementsForSpaceInsertedAtPoint:v20 inAttachment:v17 + a4 * v15 + v12 * a3, v16 + a4 * v14 + v13 * a3];
    [a1 didBeginSpaceInsertionWithLassoStroke:v9 drawing:v8 addDefaultSpace:0 strokesAbove:0 strokesBelow:0 externalElements:v21];
  }
}

- (id)_elementsForSpaceInsertedAtPoint:(double)a3 inAttachment:(double)a4
{
  v7 = a2;
  v8 = [(PKSelectionController *)a1 selectionInteraction];
  v9 = [v8 delegate];
  v10 = objc_opt_respondsToSelector();

  if (v10)
  {
    v11 = [(PKSelectionController *)a1 selectionInteraction];
    v12 = [v11 delegate];
    v13 = [(PKSelectionController *)a1 selectionInteraction];
    v14 = [v7 attachmentView];
    v15 = [v12 selectionInteraction:v13 elementsForSpaceInsertedAtPoint:v14 inAttachment:{a3, a4}];

    v16 = [v7 attachmentView];
    v17 = [(PKSelectionController *)a1 _externalElementsForIDs:v15 inAttachment:v16];
  }

  else
  {
    v17 = 0;
  }

  return v17;
}

- (void)didBeginSpaceInsertionWithLassoStroke:(id)a3 drawing:(id)a4 addDefaultSpace:(BOOL)a5 strokesAbove:(id)a6 strokesBelow:(id)a7 externalElements:(id)a8
{
  v14 = a3;
  v15 = a4;
  v16 = a6;
  v17 = a7;
  v18 = a8;
  v24[0] = MEMORY[0x1E69E9820];
  v24[1] = 3221225472;
  v24[2] = __130__PKSelectionController_didBeginSpaceInsertionWithLassoStroke_drawing_addDefaultSpace_strokesAbove_strokesBelow_externalElements___block_invoke;
  v24[3] = &unk_1E82D9620;
  v24[4] = self;
  v25 = v14;
  v30 = a5;
  v26 = v15;
  v27 = v16;
  v28 = v17;
  v29 = v18;
  v19 = v18;
  v20 = v17;
  v21 = v16;
  v22 = v15;
  v23 = v14;
  [(PKSelectionController *)self clearSelectionIfNecessaryWithCompletion:v24];
}

- (id)applySpaceInsertionWithStrokeSelection:(void *)a3 inDrawing:(void *)a4 offset:(CGFloat)a5 completion:
{
  v27 = *MEMORY[0x1E69E9840];
  v9 = a2;
  v10 = a3;
  v11 = a4;
  if (a1)
  {
    if (v10)
    {
      CGAffineTransformMakeTranslation(&v22, 0.0, a5);
      v12 = *&v22.c;
      *(a1 + 168) = *&v22.a;
      *(a1 + 184) = v12;
      *(a1 + 200) = *&v22.tx;
      v13 = [v9 strokes];
      v14 = [v13 array];

      v15 = *(a1 + 184);
      *buf = *(a1 + 168);
      v25 = v15;
      v26 = *(a1 + 200);
      v16 = [v10 undoableTransformStrokes:v14 withTransform:buf concat:1];
      WeakRetained = objc_loadWeakRetained((a1 + 120));
      [WeakRetained didChangeDrawing:v10];

      if (v16)
      {
        [(PKSelectionController *)a1 registerCommandWithUndoManager:v16];
      }

      [(PKSelectionController *)a1 _resetSelectedStrokeStateForRenderer];
      v23 = v10;
      v18 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v23 count:1];
      [(PKSelectionController *)a1 _selectionRefreshWithChangeToDrawings:v18 completion:v11];

      v19 = [PKDrawing visibleStrokesFromStrokes:v14 inDrawing:v10];

      a1 = [MEMORY[0x1E695DFB8] orderedSetWithArray:v19];
    }

    else
    {
      v20 = os_log_create("com.apple.pencilkit", "");
      if (os_log_type_enabled(v20, OS_LOG_TYPE_FAULT))
      {
        *buf = 138412290;
        *&buf[4] = v9;
        _os_log_fault_impl(&dword_1C7CCA000, v20, OS_LOG_TYPE_FAULT, "Trying to fetch strokes for insert space with a nil drawing with stroke selection %@", buf, 0xCu);
      }

      if (v11)
      {
        v11[2](v11);
      }

      a1 = [MEMORY[0x1E695DFB8] orderedSet];
    }
  }

  return a1;
}

- (void)hideStrokes:(void *)a3 inDrawing:
{
  v9 = a2;
  v5 = a3;
  if (a1)
  {
    [(PKSelectionController *)a1 _resetSelectedStrokeStateForRenderer];
    v6 = [v9 strokes];
    v7 = [v6 array];
    v8 = [PKStroke copyStrokes:v7 hidden:1];
    [(PKSelectionController *)a1 _setAdditionalStrokes:v8 inDrawing:v5 completion:0];
  }
}

- (void)_setAdditionalStrokes:(void *)a3 inDrawing:(void *)a4 completion:
{
  v11 = a2;
  v7 = a3;
  v8 = a4;
  if (a1)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 120));
    if (v11)
    {
      v10 = v11;
    }

    else
    {
      v10 = MEMORY[0x1E695E0F0];
    }

    [WeakRetained _setAdditionalStrokes:v10 inDrawing:v7 completion:v8];
  }
}

- (void)insertSpaceAtPoint:(void *)a3 addDefaultSpace:(void *)a4 strokesAbove:(double)a5 strokesBelow:(double)a6
{
  v11 = a3;
  v12 = a4;
  if (a1)
  {
    v13 = [(PKSelectionController *)a1 _drawingForSelectionRect:a6 + -60.0, 120.0, 120.0];
    v14 = v13;
    if (v13)
    {
      v15 = v13;
      v16 = [MEMORY[0x1E69DC728] bezierPath];
      WeakRetained = objc_loadWeakRetained(a1 + 15);
      [WeakRetained origin];
      [v16 moveToPoint:?];

      v18 = objc_loadWeakRetained(a1 + 15);
      [v18 bounds];
      [v16 addLineToPoint:{CGRectGetMaxX(v38), a6}];

      v19 = [(PKSelectionController *)a1 _strokeForLassoPath:v16 inDrawing:v15];

      v20 = objc_loadWeakRetained(a1 + 15);
      v21 = v20;
      if (v20)
      {
        [v20 transformFromViewToStrokeSpaceInDrawing:v15];
        v22 = v32;
        v23 = v33;
        v25 = v34;
        v24 = v35;
        v27 = v36;
        v26 = v37;
      }

      else
      {
        v26 = 0.0;
        v24 = 0.0;
        v23 = 0.0;
        v27 = 0.0;
        v25 = 0.0;
        v22 = 0.0;
      }

      v28 = objc_loadWeakRetained(a1 + 15);
      v29 = [v15 uuid];
      v30 = [v28 _attachmentForUUID:v29];

      v31 = [(PKSelectionController *)a1 _elementsForSpaceInsertedAtPoint:v30 inAttachment:v27 + a6 * v25 + v22 * a5, v26 + a6 * v24 + v23 * a5];
      [a1 didBeginSpaceInsertionWithLassoStroke:v19 drawing:v15 addDefaultSpace:a2 strokesAbove:v11 strokesBelow:v12 externalElements:v31];
    }
  }
}

- (void)insertSpace:(id *)a1
{
  v6 = a2;
  if (a1)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v3 = v6;
      [v3 sourcePoint];
    }

    else
    {
      v3 = a1[19];
      [v3 frame];
    }

    [(PKSelectionController *)a1 insertSpaceAtPoint:0 addDefaultSpace:0 strokesAbove:v4 strokesBelow:v5];
  }
}

- (BOOL)dropInteraction:(id)a3 canHandleSession:(id)a4
{
  v17[1] = *MEMORY[0x1E69E9840];
  v5 = a4;
  v6 = [(PKSelectionController *)&self->super.isa topView];
  [v5 locationInView:v6];
  v8 = v7;
  v10 = v9;

  if (self)
  {
    WeakRetained = objc_loadWeakRetained(&self->_tiledView);
  }

  else
  {
    WeakRetained = 0;
  }

  v12 = [WeakRetained _maxFileFormatVersion];

  if (v12 == 1)
  {
    v17[0] = @"com.apple.pencilkit.strokes";
    v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v17 count:1];
  }

  else
  {
    v13 = +[PKStrokeSelection readableTypeIdentifiersForItemProvider];
  }

  v14 = v13;
  if ([v5 hasItemsConformingToTypeIdentifiers:v13])
  {
    v15 = [(PKSelectionController *)self _isValidDropPointForStrokes:v8, v10];
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

- (uint64_t)_isValidDropPointForStrokes:(double)a3
{
  if (!a1)
  {
    return 0;
  }

  WeakRetained = objc_loadWeakRetained((a1 + 120));
  v6 = [WeakRetained _isValidDropPointForStrokes:{a2, a3}];

  return v6;
}

- (void)dropInteraction:(id)a3 sessionDidEnter:(id)a4
{
  v5 = a4;
  if (!self->_selectionView)
  {
    v14 = v5;
    v6 = [(PKSelectionController *)self _strokeSelectionForDropSession:v5];
    v7 = [v6 drawing];
    v8 = [v7 uuid];
    v9 = [(PKSelectionController *)self drawingForUUID:v8];

    if (v9)
    {
      v10 = [v6 strokes];
      v11 = [v10 array];
      v12 = [PKStroke copyStrokes:v11 hidden:1];
      v13 = [v6 drawing];
      [(PKSelectionController *)self _setAdditionalStrokes:v12 inDrawing:v13 completion:0];
    }

    v5 = v14;
  }
}

- (id)dropInteraction:(id)a3 sessionDidUpdate:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(PKSelectionController *)&self->super.isa topView];
  [v7 locationInView:v8];
  v10 = v9;
  v12 = v11;

  v13 = [(PKSelectionController *)self _strokeSelectionForDropSession:v7];
  v14 = [(PKSelectionController *)self _drawingForSelectionRect:v10, v12, 40.0, 40.0];
  if (self && self->_currentStrokeSelection)
  {
    v15 = [v13 drawing];
    if (v15 == v14)
    {
      v17 = [v13 externalElementsItemProvider];
      v16 = v17 != 0;
    }

    else
    {
      v16 = 0;
    }
  }

  else
  {
    v16 = 0;
  }

  if ((v16 | [(PKSelectionController *)self _isValidDropPointForStrokes:v10, v12]^ 1))
  {
    v18 = objc_alloc(MEMORY[0x1E69DC9C0]);
    v19 = 0;
  }

  else
  {
    v20 = [v13 drawing];
    v21 = [v20 uuid];
    v22 = [(PKSelectionController *)self drawingForUUID:v21];

    v18 = objc_alloc(MEMORY[0x1E69DC9C0]);
    if (v22)
    {
      v19 = 3;
    }

    else
    {
      v19 = 2;
    }
  }

  v23 = [v18 initWithDropOperation:v19];

  return v23;
}

- (void)dropInteraction:(id)a3 performDrop:(id)a4
{
  v56 = *MEMORY[0x1E69E9840];
  v5 = a4;
  v6 = [(PKSelectionController *)&self->super.isa topView];
  [v5 locationInView:v6];
  self->_dropPosition.x = v7;
  self->_dropPosition.y = v8;

  WeakRetained = objc_loadWeakRetained(&self->_tiledView);
  v10 = [WeakRetained effectiveMaximumSupportedContentVersion];

  v11 = [(PKSelectionController *)self _strokeSelectionForDropSession:v5];
  v12 = v11;
  if (v10 > 3 || [v11 requiredContentVersion] <= v10)
  {
    v15 = objc_loadWeakRetained(&self->_tiledView);
    [v5 locationInView:v15];
    v17 = v16;
    v19 = v18;

    v14 = [(PKSelectionController *)self _drawingForSelectionRect:v17, v19, 120.0, 120.0];
    v13 = [(PKSelectionController *)&self->super.isa _attachmentForStrokeSelection:v12];
    v20 = objc_loadWeakRetained(&self->_tiledView);
    v21 = [v14 uuid];
    v22 = [v20 _attachmentForUUID:v21];

    if (self->_currentStrokeSelection && [(PKSelectionView *)self->_selectionView isDragging])
    {
      v23 = [v12 externalElements];
      [(PKSelectionController *)&self->super.isa _didDeleteExternalElements:v23 inAttachment:v13];

      v24 = [v12 externalElementsItemProvider];
      v45[0] = MEMORY[0x1E69E9820];
      v45[1] = 3221225472;
      v45[2] = __53__PKSelectionController_dropInteraction_performDrop___block_invoke;
      v45[3] = &unk_1E82D9648;
      v46 = v12;
      v47 = self;
      v48 = v22;
      v49 = v5;
      [(PKSelectionController *)&self->super.isa _didDropExternalElementsItemProvider:v24 inAttachment:v48 withCompletion:v45];
    }

    else
    {
      v25 = [v12 drawing];
      v26 = [v25 uuid];
      v27 = [(PKSelectionController *)self drawingForUUID:v26];

      if (v27)
      {
        v28 = [v12 externalElements];
        [(PKSelectionController *)&self->super.isa _didDeleteExternalElements:v28 inAttachment:v13];

        v29 = os_log_create("com.apple.pencilkit", "Selection");
        if (os_log_type_enabled(v29, OS_LOG_TYPE_DEBUG))
        {
          *buf = 0;
          _os_log_debug_impl(&dword_1C7CCA000, v29, OS_LOG_TYPE_DEBUG, "Selection is from drawing originally, but drawing got torn down mid-drag", buf, 2u);
        }

        [(PKSelectionController *)&self->super.isa _createSelectionViewForDropSession:v5 removeFromSource:1 withStrokeSelection:v12];
      }

      else
      {
        [(PKSelectionController *)self clearSelectionIfNecessaryAnimated:0 withCompletion:?];
        v44 = v5;
        v30 = objc_loadWeakRetained(&self->_tiledView);
        v31 = [v30 visibleAttachments];
        v32 = [v31 count];

        if (v32)
        {
          v43 = v22;
          v33 = objc_loadWeakRetained(&self->_tiledView);
          v34 = [v33 visibleAttachments];
          v35 = [v34 firstObject];
          v36 = [v35 drawing];
          v37 = [v36 strokeSelectionClass];

          v22 = v43;
        }

        else
        {
          v37 = objc_opt_class();
        }

        v38 = v37;
        v39 = [(PKSelectionController *)self _strokeSelectionForDropSession:v44];
        *buf = MEMORY[0x1E69E9820];
        *&buf[8] = 3221225472;
        *&buf[16] = __77__PKSelectionController__createSelectionViewForDropSession_removeFromSource___block_invoke;
        v51 = &unk_1E82D95D0;
        v52 = v39;
        v53 = self;
        v40 = v44;
        v54 = v40;
        v55 = 0;
        v41 = v39;
        v42 = [v40 loadObjectsOfClass:v37 completion:buf];
      }
    }
  }

  else
  {
    v13 = os_log_create("com.apple.pencilkit", "Selection");
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      *buf = 134218240;
      *&buf[4] = [v12 requiredContentVersion];
      *&buf[12] = 2048;
      *&buf[14] = v10;
      _os_log_error_impl(&dword_1C7CCA000, v13, OS_LOG_TYPE_ERROR, "Trying to drop a stroke selection with required version: %ld, into max version: %ld", buf, 0x16u);
    }

    v14 = v13;
  }
}

uint64_t __53__PKSelectionController_dropInteraction_performDrop___block_invoke(uint64_t a1, void *a2)
{
  v3 = [(PKSelectionController *)*(a1 + 40) _externalElementsForIDs:a2 inAttachment:*(a1 + 48)];
  [*(a1 + 32) setExternalElements:v3];

  v4 = *(a1 + 56);
  v5 = [(PKSelectionController *)*(a1 + 40) topView];
  [v4 locationInView:v5];
  v7 = v6;
  v9 = v8;

  v10 = *(a1 + 40);
  if (v10)
  {
    v11 = *(v10 + 152);
  }

  else
  {
    v11 = 0;
  }

  [v11 updateLocationForDrop:{v7, v9}];
  [(PKSelectionController *)*(a1 + 40) didMoveStrokeSelectionToLocation:v7, v9];
  v12 = *(a1 + 40);
  if (v12)
  {
    v13 = *(v12 + 152);
  }

  else
  {
    v13 = 0;
  }

  return [v13 _putStrokesBackIntoTiledViewAnimated:1];
}

- (void)didMoveStrokeSelectionToLocation:(double)a3
{
  if (a1)
  {
    [*(a1 + 152) offsetInTouchView];
    v8 = *(a1 + 128);

    [(PKSelectionController *)a1 updateCurrentStrokeSelectionTransformForLocation:v8 atLocation:a2 offsetInTouchView:a3, v6, v7];
  }
}

- (int64_t)_dropInteraction:(id)a3 dataOwnerForSession:(id)a4
{
  if (self)
  {
    self = self->_selectionView;
  }

  return [(PKSelectionController *)self _dropDataOwner:a3];
}

- (id)dropInteraction:(id)a3 previewForDroppingItem:(id)a4 withDefault:(id)a5
{
  v6 = a5;
  [(PKSelectionView *)self->_selectionView offsetInTouchView];
  v8 = v7;
  v10 = v9;
  [(PKSelectionView *)self->_selectionView bounds];
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v19 = objc_alloc(MEMORY[0x1E69DC9A8]);
  v31.origin.x = v12;
  v31.origin.y = v14;
  v31.size.width = v16;
  v31.size.height = v18;
  MidX = CGRectGetMidX(v31);
  v32.origin.x = v12;
  v32.origin.y = v14;
  v32.size.width = v16;
  v32.size.height = v18;
  MidY = CGRectGetMidY(v32);
  WeakRetained = objc_loadWeakRetained(&self->_tiledView);
  v23 = MidX + self->_dropPosition.x - v8;
  v24 = MidY + self->_dropPosition.y - v10;
  v25 = *(MEMORY[0x1E695EFD0] + 16);
  v29[0] = *MEMORY[0x1E695EFD0];
  v29[1] = v25;
  v29[2] = *(MEMORY[0x1E695EFD0] + 32);
  v26 = [v19 initWithContainer:WeakRetained center:v29 transform:{v23, v24}];

  v27 = [v6 retargetedPreviewWithTarget:v26];

  return v27;
}

- (void)didBeginDraggingSelection
{
  if (a1)
  {
    [a1 didBeginModifyDrawing];
    v2 = [(PKSelectionController *)a1 selectionInteraction];
    [v2 _didBeginDraggingSelection:a1[19]];
  }
}

- (void)didEndDraggingSelection
{
  if (a1)
  {
    [a1 didEndModifyDrawing];
    v2 = [(PKSelectionController *)a1 selectionInteraction];
    [v2 _didEndDraggingSelection:a1[19]];
  }
}

- (void)didBeginModifyDrawing
{
  v12 = *MEMORY[0x1E69E9840];
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  if (self)
  {
    WeakRetained = objc_loadWeakRetained(&self->_tiledView);
  }

  else
  {
    WeakRetained = 0;
  }

  v3 = [WeakRetained attachmentViews];

  v4 = [v3 countByEnumeratingWithState:&v7 objects:v11 count:16];
  if (v4)
  {
    v5 = *v8;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v8 != v5)
        {
          objc_enumerationMutation(v3);
        }

        [*(*(&v7 + 1) + 8 * i) didBeginModifyDrawing];
      }

      v4 = [v3 countByEnumeratingWithState:&v7 objects:v11 count:16];
    }

    while (v4);
  }
}

- (void)didEndModifyDrawing
{
  v12 = *MEMORY[0x1E69E9840];
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  if (self)
  {
    WeakRetained = objc_loadWeakRetained(&self->_tiledView);
  }

  else
  {
    WeakRetained = 0;
  }

  v3 = [WeakRetained attachmentViews];

  v4 = [v3 countByEnumeratingWithState:&v7 objects:v11 count:16];
  if (v4)
  {
    v5 = *v8;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v8 != v5)
        {
          objc_enumerationMutation(v3);
        }

        [*(*(&v7 + 1) + 8 * i) didEndModifyDrawing];
      }

      v4 = [v3 countByEnumeratingWithState:&v7 objects:v11 count:16];
    }

    while (v4);
  }
}

- (CGAffineTransform)transformFromStrokeSpaceToViewInDrawing:(SEL)a3
{
  v9 = a4;
  if (self && (WeakRetained = objc_loadWeakRetained(&self->_tiledView)) != 0)
  {
    v7 = WeakRetained;
    [WeakRetained transformFromStrokeSpaceToViewInDrawing:v9];
  }

  else
  {
    v7 = 0;
    *&retstr->c = 0u;
    *&retstr->tx = 0u;
    *&retstr->a = 0u;
  }

  return result;
}

- (double)scaleForDrawing:(id)a3
{
  v4 = a3;
  [(PKSelectionController *)self _selectionDrawingTransformForDrawing:v4, v7];
  v5 = DKDScaleForTransform(v7);

  return v5;
}

- (CGRect)attachmentBoundsForDrawing:(id)a3
{
  v4 = a3;
  if (self)
  {
    self = objc_loadWeakRetained(&self->_tiledView);
  }

  [(PKSelectionController *)self attachmentBoundsForDrawing:v4];
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

- (id)_firstStrokesInStrokes:(id)a3
{
  v4 = a3;
  v5 = [(PKSelectionController *)&self->super.isa selectionInteraction];
  v6 = [v5 _firstStrokesInStrokes:v4];

  return v6;
}

- (id)_lastStrokesInStrokes:(id)a3
{
  v4 = a3;
  v5 = [(PKSelectionController *)&self->super.isa selectionInteraction];
  v6 = [v5 _lastStrokesInStrokes:v4];

  return v6;
}

- (void)updateLiveSelectionForStrokesInLayer:(id)a3 inDrawing:(id)a4
{
  v10 = a3;
  v6 = a4;
  if (self)
  {
    WeakRetained = objc_loadWeakRetained(&self->_tiledView);
  }

  else
  {
    WeakRetained = 0;
  }

  v8 = [v6 uuid];
  v9 = [WeakRetained _attachmentForUUID:v8];

  if (objc_opt_respondsToSelector())
  {
    [v9 updateLiveSelectionForStrokesInLayer:v10 inDrawing:v6];
  }
}

- (double)_scrollViewDrawingFrame
{
  WeakRetained = objc_loadWeakRetained((a1 + 120));
  v2 = [WeakRetained scrollView];
  [v2 frame];

  return *MEMORY[0x1E695EFF8];
}

- (id)_visibleStrokesWithinExtendedBounds:(void *)a3 forDrawing:
{
  v76 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if (a1)
  {
    v7 = [MEMORY[0x1E695DFA0] orderedSet];
    v8 = [(PKSelectionController *)a1 _scrollViewDrawingFrame];
    v69 = v9;
    v70 = v8;
    v11 = v10;
    v13 = v12;
    v14 = v6;
    WeakRetained = objc_loadWeakRetained((a1 + 120));
    v16 = [v14 uuid];
    v17 = [WeakRetained _attachmentForUUID:v16];

    v18 = [v17 viewRep];
    v19 = [v18 superview];
    v20 = [v17 tileContainerView];
    [v20 bounds];
    v22 = v21;
    v24 = v23;
    v26 = v25;
    v28 = v27;
    v29 = [v17 tileContainerView];
    [v19 convertRect:v29 fromView:{v22, v24, v26, v28}];
    v31 = v30;
    v33 = v32;

    v34 = objc_loadWeakRetained((a1 + 120));
    v35 = [v34 scrollView];
    [v35 contentOffset];
    v37 = v36;
    v39 = v38;

    [v14 bounds];
    v41 = v40;
    v43 = v42;

    v78.origin.y = v69;
    v78.origin.x = v70;
    v78.size.width = v11;
    v78.size.height = v13;
    v82.origin.x = v31 - v37;
    v82.origin.y = v33 - v39;
    v82.size.width = v41;
    v82.size.height = v43;
    if (CGRectIntersectsRect(v78, v82))
    {
      v44 = v14;
      v79.origin.x = [(PKSelectionController *)a1 _scrollViewDrawingFrame];
      x = v79.origin.x;
      y = v79.origin.y;
      width = v79.size.width;
      height = v79.size.height;
      MaxX = CGRectGetMaxX(v79);
      v80.origin.x = x;
      v80.origin.y = y;
      v80.size.width = width;
      v80.size.height = height;
      MaxY = CGRectGetMaxY(v80);
      *&v51 = [(PKSelectionController *)a1 _pointInStrokeSpace:v44 inDrawing:x, y - MaxY].n128_u64[0];
      v53 = v52;
      *&v54 = [(PKSelectionController *)a1 _pointInStrokeSpace:v44 inDrawing:MaxX + 0.0, MaxY + MaxY].n128_u64[0];
      v56 = v55;

      v73 = 0u;
      v74 = 0u;
      v71 = 0u;
      v72 = 0u;
      v57 = v5;
      v58 = [v57 countByEnumeratingWithState:&v71 objects:v75 count:16];
      if (v58)
      {
        v59 = v54 - v51;
        v60 = v56 - v53;
        v61 = *v72;
        do
        {
          for (i = 0; i != v58; ++i)
          {
            if (*v72 != v61)
            {
              objc_enumerationMutation(v57);
            }

            v63 = *(*(&v71 + 1) + 8 * i);
            [v63 _bounds];
            v83.origin.x = v64;
            v83.origin.y = v65;
            v83.size.width = v66;
            v83.size.height = v67;
            v81.origin.x = v51;
            v81.origin.y = v53;
            v81.size.width = v59;
            v81.size.height = v60;
            if (CGRectIntersectsRect(v81, v83))
            {
              [v7 addObject:v63];
            }
          }

          v58 = [v57 countByEnumeratingWithState:&v71 objects:v75 count:16];
        }

        while (v58);
      }
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)updateCurrentSelectionWithNewDrawingIfNecessary:(uint64_t)a1
{
  v51 = *MEMORY[0x1E69E9840];
  v4 = a2;
  if (a1)
  {
    +[PKSelectionGlowRenderer invalidateSharedStrokePathCache];
    if (*(a1 + 128))
    {
      v41 = a1;
      v40 = [*(a1 + 152) isHidden];
      v5 = MEMORY[0x1E695DFD8];
      v6 = [v4 strokes];
      v7 = [v5 setWithArray:v6];

      v8 = v41[16];
      v9 = [v8 strokes];
      v42 = [v9 mutableCopy];

      v10 = [v41[16] externalElements];
      v11 = [v10 count];

      v48 = 0u;
      v49 = 0u;
      v46 = 0u;
      v47 = 0u;
      v12 = [v41[16] strokes];
      v13 = [v12 countByEnumeratingWithState:&v46 objects:v50 count:16];
      v39 = v11;
      if (v13)
      {
        v14 = 0;
        v15 = *v47;
        do
        {
          for (i = 0; i != v13; i = i + 1)
          {
            if (*v47 != v15)
            {
              objc_enumerationMutation(v12);
            }

            v17 = *(*(&v46 + 1) + 8 * i);
            if (([v7 containsObject:{v17, v39}] & 1) == 0)
            {
              v18 = [v17 _strokeUUID];
              v2 = [v4 _strokeForIdentifier:v18];

              if (v2 && [v2 _visibleSubstrokeCountInDrawing:v4] >= 1)
              {
                v44[0] = MEMORY[0x1E69E9820];
                v44[1] = 3221225472;
                v44[2] = __73__PKSelectionController_updateCurrentSelectionWithNewDrawingIfNecessary___block_invoke;
                v44[3] = &unk_1E82D9670;
                v45 = v42;
                [v2 _visitVisibleSubstrokes:v44 inDrawing:v4];
              }

              [v42 removeObject:v17];

              v14 = 1;
            }
          }

          v13 = [v12 countByEnumeratingWithState:&v46 objects:v50 count:16];
        }

        while (v13);

        if (v14)
        {
          v19 = 0;
          goto LABEL_21;
        }
      }

      else
      {
      }

      v12 = [v4 uuid];
      v13 = v41[16];
      v2 = [v13 drawing];
      v17 = [v2 uuid];
      if ([v12 isEqual:v17])
      {

LABEL_23:
        if (v39)
        {
          [(PKSelectionController *)v41 _refreshExternalElementsInStrokeSelection:?];
          v22 = v41[16];
          v23 = v41[16];
          v24 = [v23 drawing];
          v25 = [(PKSelectionController *)v41 calculateFrameForSelectionView:v22 inDrawing:v24];
          v27 = v26;
          v29 = v28;
          v31 = v30;

          [v41[19] setFrame:{v25, v27, v29, v31}];
LABEL_34:
          [v41[19] setHidden:v40];

          goto LABEL_35;
        }

        v34 = [v4 uuid];
        v35 = v41[16];
        v36 = [v35 drawing];
        v37 = [v36 uuid];
        if ([v34 isEqual:v37])
        {
          v38 = [v42 count] == 0;

          if (v38)
          {
            [(PKSelectionController *)v41 clearSelectionIfNecessaryAnimated:0 withCompletion:?];
          }

          goto LABEL_34;
        }

LABEL_33:
        goto LABEL_34;
      }

      v19 = 1;
LABEL_21:
      v20 = [v42 count];
      if (v19)
      {
        v21 = v20 == 0;

        if (v21)
        {
          goto LABEL_23;
        }
      }

      else if (!v20)
      {
        goto LABEL_23;
      }

      v32 = os_log_create("com.apple.pencilkit", "Selection");
      if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_1C7CCA000, v32, OS_LOG_TYPE_DEFAULT, "Updated selection based on a drawing change", buf, 2u);
      }

      v33 = [v41[19] selectionType];
      v34 = v41[16];
      v35 = [v34 externalElements];
      [(PKSelectionController *)v41 selectStrokes:v42 externalElements:v35 forSelectionType:v33 inDrawing:v4];
      goto LABEL_33;
    }
  }

LABEL_35:
}

uint64_t __73__PKSelectionController_updateCurrentSelectionWithNewDrawingIfNecessary___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (([v3 hasSubstrokes] & 1) == 0)
  {
    [*(a1 + 32) addObject:v3];
  }

  return 1;
}

- (double)autoscrollForPointIfNecessary:(double)a3
{
  if (!a1)
  {
    return 0.0;
  }

  WeakRetained = objc_loadWeakRetained((a1 + 120));
  v7 = [WeakRetained scrollView];
  v8 = [v7 isScrollEnabled];

  v9 = MEMORY[0x1E695EFF8];
  v11 = *MEMORY[0x1E695EFF8];
  v10 = *(MEMORY[0x1E695EFF8] + 8);
  if (v8)
  {
    v12 = objc_loadWeakRetained((a1 + 120));
    [v12 bounds];
    v14 = v13;
    v16 = v15;
    v18 = v17;
    v20 = v19;

    v21 = 10.0;
    v22 = 0.0;
    v23 = 10.0;
    if (a3 <= v16 + v20 + -100.0)
    {
      v22 = v11;
      v23 = v10;
      if (a3 < v16 + 100.0)
      {
        v23 = -10.0;
        v22 = 0.0;
      }
    }

    if (a2 > v14 + v18 + -100.0 || (v21 = -10.0, a2 < v14 + 100.0))
    {
      v22 = v22 + v21;
      v23 = v23 + 0.0;
    }

    v11 = *v9;
    if (*v9 != v22 || v9[1] != v23)
    {
      return [(PKSelectionController *)a1 _scrollContent:v22, v23];
    }
  }

  return v11;
}

- (double)_scrollContent:(double)a3
{
  if (!a1)
  {
    return 0.0;
  }

  WeakRetained = objc_loadWeakRetained((a1 + 120));
  v6 = [WeakRetained scrollView];

  if (objc_opt_respondsToSelector() & 1) != 0 && (objc_opt_respondsToSelector())
  {
    [v6 contentOffset];
    v8 = v7;
    v10 = v9;
    [v6 _minimumContentOffset];
    v12 = v11;
    v14 = v13;
    [v6 _maximumContentOffset];
    v17 = v16;
    v18 = a2 + v8;
    v19 = a3 + v10;
    if (a2 + v8 >= v12)
    {
      if (v18 > v17)
      {
        v18 = v17;
      }
    }

    else
    {
      v18 = v12;
    }

    if (v19 >= v14)
    {
      v14 = a3 + v10;
      if (v19 > v15)
      {
        v14 = v15;
      }
    }

    v20 = v8 - v18;
    if (v8 - v18 != *MEMORY[0x1E695EFF8] || v10 - v14 != *(MEMORY[0x1E695EFF8] + 8))
    {
      [v6 setContentOffset:0 animated:?];
    }
  }

  else
  {
    if (v6 && [PKSelectionController _scrollContent:]::onceToken != -1)
    {
      dispatch_once(&[PKSelectionController _scrollContent:]::onceToken, &__block_literal_global_43);
    }

    v20 = *MEMORY[0x1E695EFF8];
  }

  return v20;
}

void __40__PKSelectionController__scrollContent___block_invoke()
{
  v0 = os_log_create("com.apple.pencilkit", "");
  if (os_log_type_enabled(v0, OS_LOG_TYPE_FAULT))
  {
    *v1 = 0;
    _os_log_fault_impl(&dword_1C7CCA000, v0, OS_LOG_TYPE_FAULT, "UIScrollView IPI must have changed.", v1, 2u);
  }
}

- (void)_willBeginInsertSpaceInAttachment:(id *)a1
{
  v10 = a2;
  if (a1)
  {
    v3 = [(PKSelectionController *)a1 selectionInteraction];
    v4 = [v3 delegate];
    v5 = objc_opt_respondsToSelector();

    if (v5)
    {
      v6 = [(PKSelectionController *)a1 selectionInteraction];
      v7 = [v6 delegate];
      v8 = [(PKSelectionController *)a1 selectionInteraction];
      v9 = [v10 attachmentView];
      [v7 selectionInteraction:v8 willBeginInsertSpaceInAttachment:v9];
    }
  }
}

- (void)_didMoveInsertSpace:(double)a3 inAttachment:
{
  v12 = a2;
  if (a1)
  {
    v5 = [(PKSelectionController *)a1 selectionInteraction];
    v6 = [v5 delegate];
    v7 = objc_opt_respondsToSelector();

    if (v7)
    {
      v8 = [(PKSelectionController *)a1 selectionInteraction];
      v9 = [v8 delegate];
      v10 = [(PKSelectionController *)a1 selectionInteraction];
      v11 = [v12 attachmentView];
      [v9 selectionInteraction:v10 insertSpaceDidMove:v11 inAttachment:a3];
    }
  }
}

- (void)_didEndInsertSpaceInAttachment:(id *)a1
{
  v10 = a2;
  if (a1)
  {
    v3 = [(PKSelectionController *)a1 selectionInteraction];
    v4 = [v3 delegate];
    v5 = objc_opt_respondsToSelector();

    if (v5)
    {
      v6 = [(PKSelectionController *)a1 selectionInteraction];
      v7 = [v6 delegate];
      v8 = [(PKSelectionController *)a1 selectionInteraction];
      v9 = [v10 attachmentView];
      [v7 selectionInteraction:v8 didEndInsertSpaceInAttachment:v9];
    }
  }
}

- (uint64_t)_hasStrokesOrExternalElementsSelectedInAttachment:(uint64_t)a1
{
  v3 = a2;
  if (a1)
  {
    v4 = *(a1 + 128);
    if (v4)
    {
      a1 = 1;
    }

    else
    {
      a1 = [(PKSelectionController *)a1 _hasExternalElementsSelectedInAttachment:v3];
    }
  }

  return a1;
}

- (id)_externalElementsAtLocation:(double)a3 inAttachment:(double)a4
{
  v7 = a2;
  v8 = v7;
  if (a1)
  {
    v9 = [v7 attachmentView];
    a1 = [(PKSelectionController *)a1 _externalElementsInRect:v9 inAttachment:a3, a4, 1.0, 1.0];
  }

  return a1;
}

- (id)_externalElementsInRect:(double)a3 inAttachment:(double)a4
{
  v11 = a2;
  if (a1)
  {
    v12 = [(PKSelectionController *)a1 selectionInteraction];
    v13 = [v12 delegate];
    v14 = objc_opt_respondsToSelector();

    if (v14)
    {
      v15 = [(PKSelectionController *)a1 selectionInteraction];
      v16 = [v15 delegate];
      v17 = [(PKSelectionController *)a1 selectionInteraction];
      v18 = [v11 attachmentView];
      v19 = [v16 selectionInteraction:v17 requestElementsInRect:v18 inAttachment:{a3, a4, a5, a6}];

      a1 = [(PKSelectionController *)a1 _externalElementsForIDs:v19 inAttachment:v11];
    }

    else
    {
      a1 = 0;
    }
  }

  return a1;
}

- (id)_IDsFromExternalElements:(void *)a1
{
  v15 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (a1)
  {
    a1 = [MEMORY[0x1E695DF70] array];
    v12 = 0u;
    v13 = 0u;
    v10 = 0u;
    v11 = 0u;
    v4 = v3;
    v5 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
    if (v5)
    {
      v6 = *v11;
      do
      {
        for (i = 0; i != v5; ++i)
        {
          if (*v11 != v6)
          {
            objc_enumerationMutation(v4);
          }

          v8 = [*(*(&v10 + 1) + 8 * i) identifier];
          [a1 addObject:v8];
        }

        v5 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
      }

      while (v5);
    }
  }

  return a1;
}

- (void)_didTapElement:(void *)a3 withGesture:(void *)a4 inAttachment:
{
  v17 = a2;
  v7 = a3;
  v8 = a4;
  if (a1)
  {
    v9 = [(PKSelectionController *)a1 selectionInteraction];
    v10 = [v9 delegate];
    v11 = objc_opt_respondsToSelector();

    if (v11)
    {
      v12 = [(PKSelectionController *)a1 selectionInteraction];
      v13 = [v12 delegate];
      v14 = [(PKSelectionController *)a1 selectionInteraction];
      v15 = [v17 identifier];
      v16 = [v8 attachmentView];
      [v13 selectionInteraction:v14 didTapElement:v15 withGesture:v7 inAttachment:v16];
    }
  }
}

- (id)_didLongPressElement:(void *)a3 withGesture:(void *)a4 inAttachment:
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  if (a1)
  {
    v10 = [(PKSelectionController *)a1 selectionInteraction];
    v11 = [v10 delegate];
    v12 = objc_opt_respondsToSelector();

    if (v12)
    {
      v13 = [(PKSelectionController *)a1 selectionInteraction];
      v14 = [v13 delegate];
      v15 = [(PKSelectionController *)a1 selectionInteraction];
      v16 = [v7 identifier];
      v17 = [v9 attachmentView];
      a1 = [v14 selectionInteraction:v15 didLongPressElement:v16 withGesture:v8 inAttachment:v17];
    }

    else
    {
      a1 = 0;
    }
  }

  return a1;
}

- (id)_selectedExternalElementsContainsPoint:(double)a3 inAttachment:(double)a4
{
  v7 = a2;
  if (a1)
  {
    v8 = [(PKSelectionController *)a1 selectionInteraction];
    v9 = [v8 delegate];
    v10 = objc_opt_respondsToSelector();

    if (v10)
    {
      v11 = [(PKSelectionController *)a1 selectionInteraction];
      v12 = [v11 delegate];
      v13 = [(PKSelectionController *)a1 selectionInteraction];
      v14 = [v7 attachmentView];
      a1 = [v12 selectionInteraction:v13 selectionContainsPoint:v14 inAttachment:{a3, a4}];
    }

    else
    {
      a1 = 0;
    }
  }

  return a1;
}

- (uint64_t)_selectionInteractionCanPerformAction:(void *)a3 withSender:(void *)a4 inAttachment:
{
  v7 = a3;
  v8 = a4;
  if (a1 && (-[PKSelectionController selectionInteraction](a1), v9 = objc_claimAutoreleasedReturnValue(), [v9 delegate], v10 = objc_claimAutoreleasedReturnValue(), v11 = objc_opt_respondsToSelector(), v10, v9, (v11 & 1) != 0))
  {
    v12 = [(PKSelectionController *)a1 selectionInteraction];
    v13 = [v12 delegate];
    v14 = [(PKSelectionController *)a1 selectionInteraction];
    v15 = [v8 attachmentView];
    v16 = [v13 selectionInteraction:v14 canPerformAction:a2 withSender:v7 inAttachment:v15];
  }

  else
  {
    v16 = 0;
  }

  return v16;
}

- (id)_itemProviderForExternalElements:(void *)a3 inAttachment:
{
  v27 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (a1)
  {
    v8 = [v6 attachmentView];
    v9 = [(PKSelectionController *)a1 _pasteboardRepresentationsForExternalElements:v5 inAttachment:v8];

    v24 = 0u;
    v25 = 0u;
    v22 = 0u;
    v23 = 0u;
    v10 = v9;
    v11 = [v10 countByEnumeratingWithState:&v22 objects:v26 count:16];
    if (v11)
    {
      v12 = *v23;
      while (2)
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v23 != v12)
          {
            objc_enumerationMutation(v10);
          }

          v14 = *(*(&v22 + 1) + 8 * i);
          v15 = [v14 valueForKey:{@"com.apple.paper", v22}];
          v16 = v15 == 0;

          if (!v16)
          {
            v18 = MEMORY[0x1E695DFF8];
            v19 = [v14 valueForKey:@"com.apple.paper"];
            v20 = [v18 URLWithDataRepresentation:v19 relativeToURL:0];

            v17 = [objc_alloc(MEMORY[0x1E696ACA0]) initWithObject:v20];
            goto LABEL_12;
          }
        }

        v11 = [v10 countByEnumeratingWithState:&v22 objects:v26 count:16];
        if (v11)
        {
          continue;
        }

        break;
      }
    }

    v17 = 0;
LABEL_12:
  }

  else
  {
    v17 = 0;
  }

  return v17;
}

- (void)_dragInteractionWillBeginForExternalElements:(void *)a3 inAttachment:
{
  v14 = a2;
  v5 = a3;
  if (a1)
  {
    v6 = [(PKSelectionController *)a1 selectionInteraction];
    v7 = [v6 delegate];
    v8 = objc_opt_respondsToSelector();

    if (v8)
    {
      v9 = [(PKSelectionController *)a1 _IDsFromExternalElements:v14];
      v10 = [(PKSelectionController *)a1 selectionInteraction];
      v11 = [v10 delegate];
      v12 = [(PKSelectionController *)a1 selectionInteraction];
      v13 = [v5 attachmentView];
      [v11 selectionInteraction:v12 dragInteractionWillBeginForElements:v9 inAttachment:v13];
    }
  }
}

- (void)_dragInteractionWillEndForExternalElements:(uint64_t)a3 withOperation:(void *)a4 inAttachment:
{
  v16 = a2;
  v7 = a4;
  if (a1)
  {
    v8 = [(PKSelectionController *)a1 selectionInteraction];
    v9 = [v8 delegate];
    v10 = objc_opt_respondsToSelector();

    if (v10)
    {
      v11 = [(PKSelectionController *)a1 _IDsFromExternalElements:v16];
      v12 = [(PKSelectionController *)a1 selectionInteraction];
      v13 = [v12 delegate];
      v14 = [(PKSelectionController *)a1 selectionInteraction];
      v15 = [v7 attachmentView];
      [v13 selectionInteraction:v14 dragInteractionWillEndForElements:v11 withOperation:a3 inAttachment:v15];
    }
  }
}

- (uint64_t)_externalElements:(void *)a3 locationOutOfBounds:(double)a4 inAttachment:(double)a5
{
  v9 = a2;
  v10 = a3;
  if (a1)
  {
    if ([v9 count])
    {
      v11 = *(a1 + 152);
      if (v11)
      {
        [*(a1 + 152) bounds];
        v13 = v12;
        v15 = v14;
      }

      else
      {
        v13 = 120.0;
        v15 = 120.0;
      }

      v16 = [(PKSelectionController *)a1 _drawingForSelectionRect:a4, a5, v13, v15];
      if (!v16)
      {
        v19 = 0;
        [(PKSelectionController *)a1 closestPointForPastedSelectionRect:a4 withDrawing:a5, v13, v15];
        v16 = v19;
      }

      v17 = [v10 drawing];
      a1 = v16 != v17;
    }

    else
    {
      a1 = 0;
    }
  }

  return a1;
}

- (void)_resetExternalElements:(void *)a3 inAttachment:
{
  v5 = a2;
  v6 = a3;
  if (a1)
  {
    v7 = *(MEMORY[0x1E695EFD0] + 16);
    *&v8.a = *MEMORY[0x1E695EFD0];
    *&v8.c = v7;
    *&v8.tx = *(MEMORY[0x1E695EFD0] + 32);
    CGAffineTransformTranslate(&v9, &v8, 0.0, 0.0);
    [(PKSelectionController *)a1 _didDragExternalElements:v5 withTransform:&v9 inAttachment:v6];
    [(PKSelectionController *)a1 _didEndDraggingExternalElements:v5 inAttachment:v6];
  }
}

- (void)_didResizeExternalElements
{
  if (a1)
  {
    v2 = [a1[16] externalElements];
    v3 = [v2 count];

    if (v3)
    {
      [(PKSelectionController *)a1 _refreshExternalElementsInStrokeSelection:?];
      v4 = a1[16];
      v5 = a1[16];
      v6 = [v5 drawing];
      [a1[19] setFrame:{-[PKSelectionController calculateFrameForSelectionView:inDrawing:](a1, v4, v6)}];

      v7 = a1[16];

      [(PKSelectionController *)a1 setImageOnSelectionViewForStrokeSelection:v7 withCompletion:0];
    }
  }
}

- (id)_contextMenuInteraction:(void *)a3 configurationForExternalElement:(void *)a4 inAttachment:
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  if (a1)
  {
    v10 = [(PKSelectionController *)a1 selectionInteraction];
    v11 = [v10 delegate];
    v12 = objc_opt_respondsToSelector();

    if (v12)
    {
      v13 = [(PKSelectionController *)a1 selectionInteraction];
      v14 = [v13 delegate];
      v15 = [(PKSelectionController *)a1 selectionInteraction];
      v16 = [v9 attachmentView];
      a1 = [v14 selectionInteraction:v15 contextMenuInteraction:v7 configurationForElement:v8 inAttachment:v16];
    }

    else
    {
      a1 = 0;
    }
  }

  return a1;
}

- (id)_contextMenuInteraction:(void *)a3 previewForHighlightingMenuWithConfiguration:(void *)a4 forExternalElement:(void *)a5 inAttachment:
{
  v9 = a2;
  v10 = a3;
  v11 = a4;
  v12 = a5;
  if (a1)
  {
    v13 = [(PKSelectionController *)a1 selectionInteraction];
    v14 = [v13 delegate];
    v15 = objc_opt_respondsToSelector();

    if (v15)
    {
      v16 = [(PKSelectionController *)a1 selectionInteraction];
      v17 = [v16 delegate];
      v18 = [(PKSelectionController *)a1 selectionInteraction];
      v19 = [v12 attachmentView];
      a1 = [v17 selectionInteraction:v18 contextMenuInteraction:v9 previewForHighlightingMenuWithConfiguration:v10 forElement:v11 inAttachment:v19];
    }

    else
    {
      a1 = 0;
    }
  }

  return a1;
}

- (void)_contextMenuInteraction:(void *)a3 willDisplayMenuForConfiguration:(void *)a4 animator:(void *)a5 forExternalElement:(void *)a6 inAttachment:
{
  v22 = a2;
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  if (a1)
  {
    v15 = [(PKSelectionController *)a1 selectionInteraction];
    v16 = [v15 delegate];
    v17 = objc_opt_respondsToSelector();

    if (v17)
    {
      v18 = [(PKSelectionController *)a1 selectionInteraction];
      v19 = [v18 delegate];
      v20 = [(PKSelectionController *)a1 selectionInteraction];
      v21 = [v14 attachmentView];
      [v19 selectionInteraction:v20 contextMenuInteraction:v22 willDisplayMenuForConfiguration:v11 animator:v12 forElement:v13 inAttachment:v21];
    }
  }
}

- (void)_contextMenuInteraction:(void *)a3 willEndForConfiguration:(void *)a4 animator:(void *)a5 forExternalElement:(void *)a6 inAttachment:
{
  v22 = a2;
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  if (a1)
  {
    v15 = [(PKSelectionController *)a1 selectionInteraction];
    v16 = [v15 delegate];
    v17 = objc_opt_respondsToSelector();

    if (v17)
    {
      v18 = [(PKSelectionController *)a1 selectionInteraction];
      v19 = [v18 delegate];
      v20 = [(PKSelectionController *)a1 selectionInteraction];
      v21 = [v14 attachmentView];
      [v19 selectionInteraction:v20 contextMenuInteraction:v22 willEndForConfiguration:v11 animator:v12 forElement:v13 inAttachment:v21];
    }
  }
}

- (uint64_t)_isValidDropPointForStrokes:(double)a3 didInsertNewAttachment:(double)a4
{
  if (!a1)
  {
    return 0;
  }

  WeakRetained = objc_loadWeakRetained((a1 + 120));
  v8 = [WeakRetained _isValidDropPointForStrokes:a2 didInsertNewAttachment:{a3, a4}];

  return v8;
}

- (uint64_t)_liveDrawingIsAtEndOfDocument
{
  if (!a1)
  {
    return 0;
  }

  WeakRetained = objc_loadWeakRetained((a1 + 120));
  v2 = [WeakRetained liveAttachment];
  v3 = [v2 isAtEndOfDocument];

  return v3;
}

- (id)_attachmentForSelectionRect:(double)a3
{
  v62 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 120));
    v7 = [WeakRetained attachments];
    v8 = [v7 count];

    if (v8)
    {
      v57 = 0u;
      v58 = 0u;
      v55 = 0u;
      v56 = 0u;
      v9 = objc_loadWeakRetained((a1 + 120));
      v10 = [v9 _visibleAttachments];

      v11 = [v10 countByEnumeratingWithState:&v55 objects:v61 count:16];
      if (v11)
      {
        v12 = *v56;
        while (2)
        {
          for (i = 0; i != v11; ++i)
          {
            if (*v56 != v12)
            {
              objc_enumerationMutation(v10);
            }

            if ([*(*(&v55 + 1) + 8 * i) isExternalAttachment])
            {
              v14 = 1;
              goto LABEL_13;
            }
          }

          v11 = [v10 countByEnumeratingWithState:&v55 objects:v61 count:16];
          if (v11)
          {
            continue;
          }

          break;
        }
      }

      v14 = 0;
LABEL_13:

      v53 = 0u;
      v54 = 0u;
      memset(&rect[1], 0, 32);
      v15 = objc_loadWeakRetained((a1 + 120));
      v16 = [v15 _visibleAttachments];

      v17 = [v16 countByEnumeratingWithState:&rect[1] objects:v60 count:16];
      if (v17)
      {
        v18 = 0;
        v19 = *rect[3];
        v47 = 0.0;
        while (2)
        {
          for (j = 0; j != v17; ++j)
          {
            if (*rect[3] != v19)
            {
              objc_enumerationMutation(v16);
            }

            v21 = *(rect[2] + 8 * j);
            v22 = [v21 viewRep];
            [v22 bounds];
            rect[0] = v23;
            v25 = v24;
            v27 = v26;
            v29 = v28;

            v30 = [v21 viewRep];
            v31 = objc_loadWeakRetained((a1 + 120));
            [v30 convertRect:v31 fromView:{a2, a3, a4, a5}];
            v33 = v32;
            v35 = v34;
            v37 = v36;
            v39 = v38;

            v40 = [v21 isAtEndOfDocument];
            if (v35 > v25)
            {
              v41 = v40;
            }

            else
            {
              v41 = 0;
            }

            if (v41)
            {
LABEL_30:
              v45 = v21;

              v18 = v45;
              goto LABEL_34;
            }

            if (v14)
            {
              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                continue;
              }
            }

            v65.origin.x = v33;
            v65.origin.y = v35;
            v65.size.width = v37;
            v65.size.height = v39;
            MidX = CGRectGetMidX(v65);
            v66.origin.x = v33;
            v66.origin.y = v35;
            v66.size.width = v37;
            v66.size.height = v39;
            v64.y = CGRectGetMidY(v66);
            *&v67.origin.x = rect[0];
            v67.origin.y = v25;
            v67.size.width = v27;
            v67.size.height = v29;
            v64.x = MidX;
            if (CGRectContainsPoint(v67, v64))
            {
              goto LABEL_30;
            }

            *&v68.origin.x = rect[0];
            v68.origin.y = v25;
            v68.size.width = v27;
            v68.size.height = v29;
            v70.origin.x = v33;
            v70.origin.y = v35;
            v70.size.width = v37;
            v70.size.height = v39;
            v69 = CGRectIntersection(v68, v70);
            v43 = v69.size.width * v69.size.height;
            if (v69.size.width * v69.size.height > v47)
            {
              v44 = v21;

              v47 = v43;
              v18 = v44;
            }
          }

          v17 = [v16 countByEnumeratingWithState:&rect[1] objects:v60 count:16];
          if (v17)
          {
            continue;
          }

          goto LABEL_34;
        }
      }
    }

    else
    {
      v16 = os_log_create("com.apple.pencilkit", "Selection");
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
      {
        *buf = 0;
        _os_log_debug_impl(&dword_1C7CCA000, v16, OS_LOG_TYPE_DEBUG, "Tiled view has no attachments", buf, 2u);
      }
    }

    v18 = 0;
LABEL_34:

    goto LABEL_35;
  }

  v18 = 0;
LABEL_35:

  return v18;
}

- (double)_selectionOffsetForDrawing:(uint64_t)a1
{
  v3 = a2;
  if (a1)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 120));
    v5 = [v3 uuid];
    v6 = [WeakRetained _attachmentForUUID:v5];

    v7 = [v6 attachmentContainerView];
    v8 = [v7 superview];
    v9 = [v6 tileContainerView];
    [v9 bounds];
    v11 = v10;
    v13 = v12;
    v15 = v14;
    v17 = v16;
    v18 = [v6 tileContainerView];
    [v8 convertRect:v18 fromView:{v11, v13, v15, v17}];
    v20 = v19;

    v21 = objc_loadWeakRetained((a1 + 120));
    [v21 canvasZoomScale];
    v23 = v22;

    v24 = objc_loadWeakRetained((a1 + 120));
    v25 = [v24 scrollView];
    [v25 contentOffset];
    v27 = v20 * v23 - v26;
  }

  else
  {
    v27 = 0.0;
  }

  return v27;
}

- (void)_didAddDrawingAttachmentView
{
  if (result)
  {
    result = result[19];
    if (result)
    {
      return [result _didAddNewAttachment];
    }
  }

  return result;
}

- (void)copyTranscription:(uint64_t)a1
{
  if (a1)
  {
    v2 = +[PKSelectionStatisticsManager sharedStatisticsManager];
    [v2 logSelectionAction:7];

    v3 = *(a1 + 152);
    if ([v3 selectionType])
    {
      v4 = [*(a1 + 152) selectionType] != 6;
    }

    else
    {
      v4 = 0;
    }

    v5 = [MEMORY[0x1E695DF00] date];
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __43__PKSelectionController_copyTranscription___block_invoke;
    v7[3] = &unk_1E82D9698;
    v7[4] = a1;
    v8 = v5;
    v9 = v4;
    v6 = v5;
    [(PKSelectionController *)a1 findTranscriptionWithCompletion:v7];
  }
}

void __43__PKSelectionController_copyTranscription___block_invoke(uint64_t a1, void *a2)
{
  v7 = a2;
  v3 = [v7 transcription];
  v4 = [v3 dataUsingEncoding:4];

  [(PKSelectionController *)*(a1 + 32) addTranscriptionToPasteboard:v4];
  [*(a1 + 40) timeIntervalSinceNow];
  v5 = +[PKStatisticsManager sharedStatisticsManager];
  v6 = [v7 transcription];
  -[PKStatisticsManager recordCopyAsTextWithLength:time:didShowHUD:invokedFromSmartSelection:](v5, [v6 length], objc_msgSend(v7, "didShowHUD"), *(a1 + 48));
}

- (void)addTranscriptionToPasteboard:(void *)a1
{
  v8[1] = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (a1)
  {
    v4 = [(PKSelectionController *)a1 currentPasteboard];
    v5 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:1];
    if (v3)
    {
      v6 = [*MEMORY[0x1E6983060] identifier];
      [v5 setObject:v3 forKeyedSubscript:v6];
    }

    if ([v5 count])
    {
      v8[0] = v5;
      v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v8 count:1];
      [v4 setItems:v7];
    }
  }
}

- (void)findTranscriptionWithCompletion:(uint64_t)a1
{
  v3 = a2;
  if (a1)
  {
    [(PKSelectionController *)a1 findTranscriptionForType:v3 withCompletion:?];
  }
}

- (void)findTranscriptionForType:(void *)a3 withCompletion:
{
  v17 = a3;
  if (a1)
  {
    v5 = [(PKSelectionController *)a1 _currentAttachment];
    v6 = *(a1 + 48);
    if (v6)
    {
      v7 = [v6 attachment];
      v8 = v7;
      if (v7 == v5)
      {
        v9 = [*(a1 + 48) strokeSelection];
        v10 = *(a1 + 128);

        if (v9 == v10)
        {
LABEL_9:
          [*(a1 + 48) findTranscriptionForType:a2 withCompletion:v17];

          goto LABEL_10;
        }
      }

      else
      {
      }
    }

    v11 = [v5 recognitionController];
    v12 = v11;
    if (v11)
    {
      v13 = *(v11 + 48);
    }

    else
    {
      v13 = 0;
    }

    v14 = v13;

    v15 = [[PKTranscriptionController alloc] initWithRecognitionManager:v14 strokeSelection:*(a1 + 128) attachment:v5];
    v16 = *(a1 + 48);
    *(a1 + 48) = v15;

    goto LABEL_9;
  }

LABEL_10:
}

- (uint64_t)supportsCopyAsText
{
  v1 = a1;
  if (a1)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 120));
    v3 = [WeakRetained supportsCopyAsText];

    if (v3)
    {
      v4 = [*(v1 + 128) strokes];
      v5 = [v4 array];
      v1 = [PKRecognitionController supportsCopyAsTextForStrokes:v5];
    }

    else
    {
      return 0;
    }
  }

  return v1;
}

- (void)supportsRefinement:(id *)a1
{
  v3 = a2;
  if (a1)
  {
    v4 = [a1[16] strokes];
    v5 = [v4 array];
    v6 = [PKRecognitionController canSupportRefinementForStrokes:v5];

    if (v6)
    {
      v14[0] = 0;
      v14[1] = v14;
      v14[2] = 0x3032000000;
      v14[3] = __Block_byref_object_copy__15;
      v14[4] = __Block_byref_object_dispose__15;
      v7 = [(PKSelectionController *)a1 _currentAttachment];
      v8 = [v7 recognitionController];
      v9 = v8;
      if (v8)
      {
        v10 = *(v8 + 48);
      }

      else
      {
        v10 = 0;
      }

      v15 = v10;

      v11[0] = MEMORY[0x1E69E9820];
      v11[1] = 3221225472;
      v11[2] = __44__PKSelectionController_supportsRefinement___block_invoke;
      v11[3] = &unk_1E82D96C0;
      v13 = v14;
      v12 = v3;
      [(PKSelectionController *)a1 findTranscriptionForType:v11 withCompletion:?];

      _Block_object_dispose(v14, 8);
    }

    else if (v3)
    {
      (*(v3 + 2))(v3, 0);
    }
  }
}

void __44__PKSelectionController_supportsRefinement___block_invoke(uint64_t a1, void *a2)
{
  v5 = [a2 transcription];
  v3 = [(PKRecognitionSessionManager *)*(*(*(a1 + 40) + 8) + 40) canSynthesizeDrawingForText:v5];
  v4 = *(a1 + 32);
  if (v4)
  {
    (*(v4 + 16))(v4, v3);
  }
}

- (uint64_t)refinementEnabled
{
  if (!a1 || !_os_feature_enabled_impl() || CHGetPersonalizedSynthesisSupportState() < 3)
  {
    return 0;
  }

  return PKCurrentAppSupportsRefinement();
}

- (void)getAllHandwritingTranscription:(uint64_t)a1
{
  if (a1)
  {
    v1[0] = MEMORY[0x1E69E9820];
    v1[1] = 3221225472;
    v1[2] = __56__PKSelectionController_getAllHandwritingTranscription___block_invoke;
    v1[3] = &unk_1E82D96E8;
    v1[4] = a1;
    [(PKSelectionController *)a1 findCompleteTranscriptionForNote:v1];
  }
}

void __56__PKSelectionController_getAllHandwritingTranscription___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 transcription];
  v4 = [v3 dataUsingEncoding:4];

  [(PKSelectionController *)*(a1 + 32) addTranscriptionToPasteboard:v4];
}

- (void)findCompleteTranscriptionForNote:(uint64_t)a1
{
  v14 = a2;
  if (a1)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 120));
    v4 = [WeakRetained visibleAttachments];
    v5 = [v4 firstObject];

    v6 = *(a1 + 48);
    if (v6)
    {
      v7 = [v6 attachment];
      v8 = v7;
      if (v7 == v5)
      {
        v9 = [*(a1 + 48) strokeSelection];

        if (!v9)
        {
LABEL_7:
          [*(a1 + 48) findCompleteTranscriptionForNote:v14];

          goto LABEL_8;
        }
      }

      else
      {
      }
    }

    v10 = [PKTranscriptionController alloc];
    v11 = [v5 recognitionManager];
    v12 = [(PKTranscriptionController *)v10 initWithRecognitionManager:v11 strokeSelection:0 attachment:v5];
    v13 = *(a1 + 48);
    *(a1 + 48) = v12;

    goto LABEL_7;
  }

LABEL_8:
}

- (void)translate:(uint64_t)a1
{
  if (a1)
  {
    v2 = *(a1 + 128);
    v3 = [v2 drawing];

    WeakRetained = objc_loadWeakRetained((a1 + 120));
    v5 = [v3 uuid];
    v6 = [WeakRetained _attachmentForUUID:v5];

    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __35__PKSelectionController_translate___block_invoke;
    v8[3] = &unk_1E82D9710;
    v9 = v6;
    v10 = a1;
    v7 = v6;
    [(PKSelectionController *)a1 findTranscriptionForType:v8 withCompletion:?];
  }
}

void __35__PKSelectionController_translate___block_invoke(uint64_t a1, void *a2)
{
  v12 = [a2 transcription];
  v3 = [objc_alloc(getLTUITranslationViewControllerClass()) initWithNibName:0 bundle:0];
  v4 = [objc_alloc(MEMORY[0x1E696AAB0]) initWithString:v12];
  [v3 setText:v4];

  [v3 setModalPresentationStyle:7];
  if ([*(a1 + 32) isExternalAttachment])
  {
    if (objc_opt_respondsToSelector())
    {
      [*(a1 + 32) translationDidFinishedInViewController:v3];
    }
  }

  else
  {
    v5 = *(a1 + 40);
    if (v5)
    {
      v5 = v5[19];
    }

    v6 = v5;
    v7 = [v3 popoverPresentationController];
    [v7 setSourceView:v6];

    v8 = *(a1 + 40);
    if (v8)
    {
      v9 = *(v8 + 152);
    }

    else
    {
      v9 = 0;
    }

    v10 = [v9 window];
    v11 = [v10 rootViewController];
    [v11 presentViewController:v3 animated:1 completion:0];
  }
}

- (void)straighten:(uint64_t)a1
{
  v7 = a2;
  if (a1)
  {
    v3 = [*(a1 + 128) drawing];
    WeakRetained = objc_loadWeakRetained((a1 + 120));
    v5 = [*(a1 + 128) strokes];
    v6 = [v5 array];
    [WeakRetained straighten:v7 strokes:v6 drawing:v3];
  }
}

- (void)refine:(uint64_t)a1
{
  v7 = a2;
  if (a1)
  {
    v3 = [*(a1 + 128) drawing];
    WeakRetained = objc_loadWeakRetained((a1 + 120));
    v5 = [*(a1 + 128) strokes];
    v6 = [v5 array];
    [WeakRetained refine:v7 strokes:v6 drawing:v3];
  }
}

- (void)_share:(uint64_t)a1
{
  v3 = a2;
  if (a1 && *(a1 + 152))
  {
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __32__PKSelectionController__share___block_invoke;
    aBlock[3] = &unk_1E82D6388;
    aBlock[4] = a1;
    v4 = _Block_copy(aBlock);
    if ([MEMORY[0x1E696AF00] isMainThread])
    {
      v4[2](v4);
    }

    else
    {
      dispatch_sync(MEMORY[0x1E69E96A0], v4);
    }
  }
}

void __32__PKSelectionController__share___block_invoke(uint64_t a1)
{
  v16[1] = *MEMORY[0x1E69E9840];
  v2 = objc_alloc(MEMORY[0x1E69CD9F8]);
  v3 = *(a1 + 32);
  if (v3)
  {
    v3 = v3[16];
  }

  v4 = v3;
  v5 = [v4 strokeImage];
  v6 = [v5 combinedImage];
  v16[0] = v6;
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v16 count:1];
  v8 = [v2 initWithActivityItems:v7 applicationActivities:0];

  v9 = *(a1 + 32);
  if (v9)
  {
    v9 = v9[19];
  }

  v10 = v9;
  v11 = [v8 popoverPresentationController];
  [v11 setSourceView:v10];

  [v8 setModalTransitionStyle:0];
  v12 = *(a1 + 32);
  if (v12)
  {
    v13 = *(v12 + 152);
  }

  else
  {
    v13 = 0;
  }

  v14 = [v13 window];
  v15 = [v14 rootViewController];
  [v15 presentViewController:v8 animated:1 completion:0];
}

- (id)editMenuActionsForConfiguration:(uint64_t)a1
{
  v80[4] = *MEMORY[0x1E69E9840];
  v3 = a2;
  v48 = v3;
  if (a1)
  {
    v4 = v3;
    v5 = _PencilKitBundle();
    v6 = [v5 localizedStringForKey:@"Cut" value:@"Cut" table:{@"Localizable", v48}];
    v78[0] = MEMORY[0x1E69E9820];
    v78[1] = 3221225472;
    v78[2] = __57__PKSelectionController_editMenuActionsForConfiguration___block_invoke_2;
    v78[3] = &unk_1E82D6D30;
    v78[4] = a1;
    v7 = v4;
    v79 = v7;
    v56 = __57__PKSelectionController_editMenuActionsForConfiguration___block_invoke(v7, v6, @"scissors", v78);

    v8 = _PencilKitBundle();
    v9 = [v8 localizedStringForKey:@"Copy" value:@"Copy" table:@"Localizable"];
    v76[0] = MEMORY[0x1E69E9820];
    v76[1] = 3221225472;
    v76[2] = __57__PKSelectionController_editMenuActionsForConfiguration___block_invoke_3;
    v76[3] = &unk_1E82D6D30;
    v76[4] = a1;
    v10 = v7;
    v77 = v10;
    v55 = __57__PKSelectionController_editMenuActionsForConfiguration___block_invoke(v10, v9, @"doc.on.doc", v76);

    v11 = _PencilKitBundle();
    v12 = [v11 localizedStringForKey:@"Delete" value:@"Delete" table:@"Localizable"];
    v74[0] = MEMORY[0x1E69E9820];
    v74[1] = 3221225472;
    v74[2] = __57__PKSelectionController_editMenuActionsForConfiguration___block_invoke_4;
    v74[3] = &unk_1E82D6D30;
    v74[4] = a1;
    v13 = v10;
    v75 = v13;
    v54 = __57__PKSelectionController_editMenuActionsForConfiguration___block_invoke(v13, v12, @"trash", v74);

    v14 = _PencilKitBundle();
    v15 = [v14 localizedStringForKey:@"Add to Playground" value:@"Add to Playground" table:@"Localizable"];
    v72[0] = MEMORY[0x1E69E9820];
    v72[1] = 3221225472;
    v72[2] = __57__PKSelectionController_editMenuActionsForConfiguration___block_invoke_5;
    v72[3] = &unk_1E82D6D30;
    v72[4] = a1;
    v16 = v13;
    v73 = v16;
    v52 = __57__PKSelectionController_editMenuActionsForConfiguration___block_invoke(v16, v15, @"apple.image.playground", v72);

    v17 = _PencilKitBundle();
    v18 = [v17 localizedStringForKey:@"Duplicate" value:@"Duplicate" table:@"Localizable"];
    v70[0] = MEMORY[0x1E69E9820];
    v70[1] = 3221225472;
    v70[2] = __57__PKSelectionController_editMenuActionsForConfiguration___block_invoke_6;
    v70[3] = &unk_1E82D6D30;
    v70[4] = a1;
    v19 = v16;
    v71 = v19;
    v53 = __57__PKSelectionController_editMenuActionsForConfiguration___block_invoke(v19, v18, @"doc.on.doc", v70);

    v20 = _PencilKitBundle();
    v21 = [v20 localizedStringForKey:@"Copy as Text" value:@"Copy as Text" table:@"Localizable"];
    v68[0] = MEMORY[0x1E69E9820];
    v68[1] = 3221225472;
    v68[2] = __57__PKSelectionController_editMenuActionsForConfiguration___block_invoke_7;
    v68[3] = &unk_1E82D6D30;
    v68[4] = a1;
    v22 = v19;
    v69 = v22;
    v51 = __57__PKSelectionController_editMenuActionsForConfiguration___block_invoke(v22, v21, @"textformat", v68);

    v23 = _PencilKitBundle();
    v24 = [v23 localizedStringForKey:@"Insert Space Above" value:@"Insert Space Above" table:@"Localizable"];
    v66[0] = MEMORY[0x1E69E9820];
    v66[1] = 3221225472;
    v66[2] = __57__PKSelectionController_editMenuActionsForConfiguration___block_invoke_8;
    v66[3] = &unk_1E82D6D30;
    v66[4] = a1;
    v25 = v22;
    v67 = v25;
    v50 = __57__PKSelectionController_editMenuActionsForConfiguration___block_invoke(v25, v24, @"rectangle.expand.vertical", v66);

    v26 = _PencilKitBundle();
    v27 = [v26 localizedStringForKey:@"Translate" value:@"Translate" table:@"Localizable"];
    v64[0] = MEMORY[0x1E69E9820];
    v64[1] = 3221225472;
    v64[2] = __57__PKSelectionController_editMenuActionsForConfiguration___block_invoke_9;
    v64[3] = &unk_1E82D6D30;
    v64[4] = a1;
    v28 = v25;
    v65 = v28;
    v49 = __57__PKSelectionController_editMenuActionsForConfiguration___block_invoke(v28, v27, @"character.bubble", v64);

    v29 = _PencilKitBundle();
    v30 = [v29 localizedStringForKey:@"Straighten" value:@"Straighten" table:@"Localizable"];
    v62[0] = MEMORY[0x1E69E9820];
    v62[1] = 3221225472;
    v62[2] = __57__PKSelectionController_editMenuActionsForConfiguration___block_invoke_10;
    v62[3] = &unk_1E82D6D30;
    v62[4] = a1;
    v31 = v28;
    v63 = v31;
    v32 = __57__PKSelectionController_editMenuActionsForConfiguration___block_invoke(v31, v30, @"wrench", v62);

    objc_initWeak(&location, a1);
    v33 = MEMORY[0x1E69DC928];
    v57[0] = MEMORY[0x1E69E9820];
    v57[1] = 3221225472;
    v57[2] = __57__PKSelectionController_editMenuActionsForConfiguration___block_invoke_11;
    v57[3] = &unk_1E82D9780;
    objc_copyWeak(&v60, &location);
    v59 = &__block_literal_global_165;
    v57[4] = a1;
    v58 = v31;
    v34 = [v33 elementWithUncachedProvider:v57];
    v35 = [(PKSelectionController *)a1 supportsCopyAsText];
    v36 = [getLTUITranslationViewControllerClass() isAvailable];
    v37 = [*(a1 + 128) externalElements];
    v38 = [v37 count];

    v39 = [*(a1 + 128) strokes];
    v40 = [v39 count];

    v41 = MEMORY[0x1E695DF70];
    v80[0] = v56;
    v80[1] = v55;
    v80[2] = v54;
    v80[3] = v53;
    v42 = [MEMORY[0x1E695DEC8] arrayWithObjects:v80 count:4];
    v43 = [v41 arrayWithArray:v42];

    v44 = [*(a1 + 104) shouldShowImageGenerationUI];
    if (v40)
    {
      v45 = v44;
    }

    else
    {
      v45 = 0;
    }

    if (v45 == 1)
    {
      [v43 addObject:v52];
    }

    v46 = [*(a1 + 152) shapeMenuActions];
    [v43 addObjectsFromArray:v46];

    if ([(PKSelectionController *)a1 refinementEnabled])
    {
      [v43 addObject:v34];
    }

    if (v35 && !v38)
    {
      [v43 addObject:v51];
    }

    if (*(a1 + 114) == 1)
    {
      [v43 addObject:v50];
    }

    if ((v35 & v36) == 1 && !v38)
    {
      [v43 addObject:v49];
    }

    if (v35)
    {
      [v43 addObject:v32];
    }

    objc_destroyWeak(&v60);
    objc_destroyWeak(&location);
  }

  else
  {
    v43 = 0;
  }

  return v43;
}

id __57__PKSelectionController_editMenuActionsForConfiguration___block_invoke(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v6 = a2;
  v7 = a4;
  v8 = MEMORY[0x1E69DC628];
  v9 = [MEMORY[0x1E69DCAB8] systemImageNamed:a3];
  v10 = [v8 actionWithTitle:v6 image:v9 identifier:0 handler:v7];

  return v10;
}

void __57__PKSelectionController_editMenuActionsForConfiguration___block_invoke_5(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);
  if (v1)
  {
    v3 = +[PKGenerationModelAvailabilityController sharedInstance];
    v4 = [v1[19] window];
    v5 = [v3 presentGreymatterAvailabilityAlertControllerInWindow:v4];

    if ((v5 & 1) == 0)
    {
      v6 = objc_initWeak(&location, v1);
      v7 = [(PKSelectionController *)v1 selectionInteraction];
      v8 = [v7 delegate];
      v9 = objc_opt_respondsToSelector();

      if (v9)
      {
        WeakRetained = objc_loadWeakRetained(v1 + 15);
        v39 = v2;
        v11 = [v1[16] drawing];
        v12 = [v11 uuid];
        v13 = [WeakRetained _attachmentForUUID:v12];

        v38 = objc_loadWeakRetained(&location);
        v37 = [(PKSelectionController *)v38 selectionInteraction];
        v14 = [v37 delegate];
        v36 = objc_loadWeakRetained(&location);
        v15 = [(PKSelectionController *)v36 selectionInteraction];
        v16 = objc_loadWeakRetained(&location);
        v17 = v16;
        if (v16)
        {
          v18 = *(v16 + 16);
        }

        else
        {
          v18 = 0;
        }

        v19 = v18;
        v20 = [v19 strokes];
        v21 = [v20 array];
        v22 = objc_loadWeakRetained(&location);
        v23 = v22;
        v24 = v14;
        if (v22)
        {
          v25 = *(v22 + 19);
        }

        else
        {
          v25 = 0;
        }

        v26 = v25;
        [v26 frame];
        v28 = v27;
        v30 = v29;
        v32 = v31;
        v34 = v33;
        v35 = [v13 attachmentView];
        [v24 selectionInteraction:v15 handleGenerationToolForSelectedStrokes:v21 inBounds:v35 inAttachment:{v28, v30, v32, v34}];

        v2 = v39;
      }

      objc_destroyWeak(&location);
    }
  }
}

void __57__PKSelectionController_editMenuActionsForConfiguration___block_invoke_11(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __57__PKSelectionController_editMenuActionsForConfiguration___block_invoke_12;
  v9[3] = &unk_1E82D9758;
  v5 = *(a1 + 48);
  v6 = *(a1 + 32);
  v7 = *(a1 + 40);
  v11 = v5;
  v9[4] = v6;
  v10 = v7;
  v12 = v3;
  v8 = v3;
  [(PKSelectionController *)WeakRetained supportsRefinement:v9];
}

void __57__PKSelectionController_editMenuActionsForConfiguration___block_invoke_12(void *a1, int a2)
{
  v4 = objc_opt_new();
  if (a2)
  {
    v5 = a1[6];
    v6 = _PencilKitBundle();
    v7 = [v6 localizedStringForKey:@"Refine" value:@"Refine" table:@"Localizable"];
    v12 = MEMORY[0x1E69E9820];
    v13 = 3221225472;
    v14 = __57__PKSelectionController_editMenuActionsForConfiguration___block_invoke_13;
    v15 = &unk_1E82D6D30;
    v8 = a1[5];
    v16 = a1[4];
    v17 = v8;
    v9 = (*(v5 + 16))(v5, v7, @"wrench", &v12);
    [v4 addObject:{v9, v12, v13, v14, v15, v16}];
  }

  v10 = a1[7];
  v11 = [MEMORY[0x1E695DEC8] arrayWithArray:v4];
  (*(v10 + 16))(v10, v11);
}

- (double)editMenuTargetRect
{
  if (!a1)
  {
    return 0.0;
  }

  [*(a1 + 152) editMenuTargetRect];
  return result;
}

@end