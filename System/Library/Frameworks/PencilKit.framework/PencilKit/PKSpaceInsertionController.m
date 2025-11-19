@interface PKSpaceInsertionController
- (PKSelectionController)selectionController;
- (PKSpaceInsertionController)initWithSelectionController:(id)a3;
- (double)offsetInStrokeSpaceFromViewOffset:(double)a3 inDrawing:(id)a4;
- (id)_visibleStrokesOnPage:(id)a3;
- (void)_addSpacingViewsWithFrame:(CGRect)a3;
- (void)_blitStrokesToViewForSpaceInsertionType:(unint64_t)a3 withCompletion:(id)a4;
- (void)_didEndCreatingSpace;
- (void)_didGrabInsertSpaceAffordance:(id)a3;
- (void)_dismissHandlesAndReselectExistingSelectionInDrawing:(id)a3;
- (void)_dismissSpacingResizeHandles;
- (void)_dragLollipop:(id)a3;
- (void)_layoutViewsIfNecessary;
- (void)_makeSpaceWithOffset:(double)a3 spaceInsertionType:(unint64_t)a4;
- (void)_panGestureDidBegin:(id)a3;
- (void)_panGestureDidChange:(id)a3;
- (void)_panGestureDidEnd:(id)a3;
- (void)_sortStrokesAboveOrBelowWithStrokesAbove:(id)a3 strokesBelow:(id)a4;
- (void)_temporarilyShiftStrokesWithOffset:(double)a3 spaceInsertionType:(unint64_t)a4;
- (void)commitSpacingResize;
- (void)didBeginCreatingSpaceWithLassoStroke:(id)a3 drawing:(id)a4 addDefaultSpace:(BOOL)a5 strokesAbove:(id)a6 strokesBelow:(id)a7 externalElements:(id)a8;
- (void)didScroll:(CGPoint)a3;
- (void)fetchStrokesAmbiguouslyBelowAndAboveInsertSpaceHandleWithStrokes:(id)a3 inDrawing:(id)a4 completion:(id)a5;
- (void)initTopAndBottomSelectionIfNecessary;
- (void)insertDefaultSpace:(double)a3;
- (void)invalidateCachedStrokes;
- (void)projectPath:(CGPath *)a3 toEndOfFrame:(CGRect)a4;
- (void)shiftStrokesWithOffset:(double)a3;
@end

@implementation PKSpaceInsertionController

- (PKSpaceInsertionController)initWithSelectionController:(id)a3
{
  objc_initWeak(&location, a3);
  v7.receiver = self;
  v7.super_class = PKSpaceInsertionController;
  v4 = [(PKSpaceInsertionController *)&v7 init];
  if (v4)
  {
    v5 = objc_loadWeakRetained(&location);
    objc_storeWeak(&v4->_selectionController, v5);

    v4->_topHandleRemovesWhitespace = 1;
  }

  objc_destroyWeak(&location);
  return v4;
}

- (void)didScroll:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  [(PKSpaceInsertionView *)self->_topInsertionView origin];
  v7 = x + v6;
  v9 = y + v8;
  [(PKSpaceInsertionView *)self->_topInsertionView bounds];
  [(PKSpaceInsertionView *)self->_topInsertionView setFrame:v7, v9];
  [(PKSpaceInsertionView *)self->_bottomInsertionView origin];
  v11 = x + v10;
  v13 = y + v12;
  [(PKSpaceInsertionView *)self->_bottomInsertionView bounds];
  bottomInsertionView = self->_bottomInsertionView;

  [(PKSpaceInsertionView *)bottomInsertionView setFrame:v11, v13];
}

- (void)invalidateCachedStrokes
{
  cachedStrokeSelection = self->_cachedStrokeSelection;
  self->_cachedStrokeSelection = 0;

  cachedStrokesBelow = self->_cachedStrokesBelow;
  self->_cachedStrokesBelow = 0;

  cachedStrokesAbove = self->_cachedStrokesAbove;
  self->_cachedStrokesAbove = 0;

  self->_shouldUseCachedStrokes = 0;
}

- (void)_dragLollipop:(id)a3
{
  v4 = a3;
  if ([v4 state] == 1)
  {
    [(PKSpaceInsertionController *)self _panGestureDidBegin:v4];
  }

  else if ([v4 state] == 2)
  {
    [(PKSpaceInsertionController *)self _panGestureDidChange:v4];
  }

  else if ([v4 state] == 3)
  {
    [(PKSpaceInsertionController *)self _panGestureDidEnd:v4];
  }

  else if ([v4 state] == 4 || objc_msgSend(v4, "state") == 5)
  {
    [(PKSpaceInsertionController *)self _panGestureDidCancelOrFail:v4];
  }
}

- (void)_didGrabInsertSpaceAffordance:(id)a3
{
  v4 = a3;
  v5 = [(PKSpaceInsertionController *)self selectionController];
  v6 = [(PKSelectionController *)v5 topView];
  [v4 locationInView:v6];
  v8 = v7;
  v10 = v9;

  v11 = [(PKSpaceInsertionController *)self selectionController];
  v12 = [(PKSelectionController *)v11 _drawingForSelectionRect:v10 + -60.0, 120.0, 120.0];

  if ([v4 state] == 1)
  {
    v13 = +[PKStatisticsManager sharedStatisticsManager];
    [(PKStatisticsManager *)v13 recordInsertSpaceWithType:?];

    v14 = [(PKSpaceInsertionController *)self selectionController];
    v15 = v14;
    if (v14)
    {
      v16 = *(v14 + 152);
    }

    else
    {
      v16 = 0;
    }

    v17 = v16;
    [v17 frame];
    MinY = CGRectGetMinY(v39);

    v19 = [(PKSpaceInsertionController *)self selectionController];
    v20 = v19;
    if (v19)
    {
      v21 = *(v19 + 128);
    }

    else
    {
      v21 = 0;
    }

    objc_storeStrong(&self->_strokeSelectionBeforeInsertingSpace, v21);

    v22 = [(PKSpaceInsertionController *)self selectionController];
    v23 = v22;
    if (v22)
    {
      v24 = *(v22 + 152);
    }

    else
    {
      v24 = 0;
    }

    v25 = v24;
    self->_selectionTypeBeforeInsertingSpace = [v25 selectionType];

    v26 = [(PKStrokeSelection *)self->_cachedStrokeSelection strokeIdentifiers];
    v27 = [(PKStrokeSelection *)self->_strokeSelectionBeforeInsertingSpace strokeIdentifiers];
    if ([v26 isEqual:v27] && self->_cachedStrokesBelow)
    {
      cachedStrokesAbove = self->_cachedStrokesAbove;

      if (cachedStrokesAbove)
      {
        v29 = 1;
LABEL_16:
        self->_shouldUseCachedStrokes = v29;
        self->_insertSpaceAffordancePanDidEnd = 0;
        v32 = [(PKSpaceInsertionController *)self selectionController];
        [(PKSelectionController *)v32 clearSelectionIfNecessaryAnimated:0 withCompletion:?];

        objc_initWeak(&location, self);
        v33 = [(PKStrokeSelection *)self->_strokeSelectionBeforeInsertingSpace strokes];
        v34 = [v33 array];
        v35[0] = MEMORY[0x1E69E9820];
        v35[1] = 3221225472;
        v35[2] = __60__PKSpaceInsertionController__didGrabInsertSpaceAffordance___block_invoke;
        v35[3] = &unk_1E82DC430;
        objc_copyWeak(v37, &location);
        v35[4] = self;
        v37[1] = 0;
        v37[2] = *&MinY;
        v36 = v4;
        [(PKSpaceInsertionController *)self fetchStrokesAmbiguouslyBelowAndAboveInsertSpaceHandleWithStrokes:v34 inDrawing:v12 completion:v35];

        objc_destroyWeak(v37);
        objc_destroyWeak(&location);
        goto LABEL_22;
      }
    }

    else
    {
    }

    objc_storeStrong(&self->_cachedStrokeSelection, self->_strokeSelectionBeforeInsertingSpace);
    v30 = self->_cachedStrokesAbove;
    self->_cachedStrokesAbove = 0;

    cachedStrokesBelow = self->_cachedStrokesBelow;
    self->_cachedStrokesBelow = 0;

    v29 = 0;
    goto LABEL_16;
  }

  if ([v4 state] == 2)
  {
    [(PKSpaceInsertionController *)self _panGestureDidChange:v4];
  }

  else if ([v4 state] == 3)
  {
    objc_storeStrong(&self->_cachedStrokesAbove, self->_strokesAbove);
    objc_storeStrong(&self->_cachedStrokesBelow, self->_strokesBelow);
    [(PKSpaceInsertionController *)self _panGestureDidEnd:v4];
    [(PKSpaceInsertionController *)self _dismissHandlesAndReselectExistingSelectionInDrawing:v12];
    self->_insertSpaceAffordancePanDidEnd = 1;
  }

  else if ([v4 state] == 5 || objc_msgSend(v4, "state") == 4)
  {
    [(PKSpaceInsertionController *)self _panGestureDidCancelOrFail:v4];
    [(PKSpaceInsertionController *)self _dismissHandlesAndReselectExistingSelectionInDrawing:v12];
  }

LABEL_22:
}

void __60__PKSpaceInsertionController__didGrabInsertSpaceAffordance___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v8 = a2;
  v5 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if ((WeakRetained[177] & 1) == 0)
  {
    v7 = [*(a1 + 32) selectionController];
    [(PKSelectionController *)v7 insertSpaceAtPoint:v5 addDefaultSpace:v8 strokesAbove:*(a1 + 56) strokesBelow:*(a1 + 64)];

    [*(a1 + 32) _panGestureDidBegin:*(a1 + 40)];
  }
}

- (void)_dismissHandlesAndReselectExistingSelectionInDrawing:(id)a3
{
  v14 = a3;
  v4 = [(PKSpaceInsertionController *)self selectionController];
  v5 = v4;
  if (v4)
  {
    [*(v4 + 144) commitSpacingResize];
  }

  v6 = [(PKStrokeSelection *)self->_strokeSelectionBeforeInsertingSpace strokes];
  v7 = [v6 array];
  v8 = [PKDrawing visibleStrokesFromStrokes:v7 inDrawing:v14];

  v9 = [(PKSpaceInsertionController *)self selectionController];
  [(PKSelectionController *)v9 _refreshExternalElementsInStrokeSelection:?];

  v10 = [(PKStrokeSelection *)self->_strokeSelectionBeforeInsertingSpace externalElements];
  v11 = [(PKSpaceInsertionController *)self selectionController];
  v12 = [MEMORY[0x1E695DFB8] orderedSetWithArray:v8];
  [(PKSelectionController *)v11 selectStrokes:v12 externalElements:v10 forSelectionType:self->_selectionTypeBeforeInsertingSpace inDrawing:v14];

  strokeSelectionBeforeInsertingSpace = self->_strokeSelectionBeforeInsertingSpace;
  self->_strokeSelectionBeforeInsertingSpace = 0;

  self->_shouldUseCachedStrokes = 0;
}

- (void)_panGestureDidBegin:(id)a3
{
  v14 = a3;
  v4 = 32;
  if (self->_dragBottomLollipopGR == v14)
  {
    v4 = 40;
  }

  v5 = *(&self->super.isa + v4);
  [v5 frame];
  self->_beginDragLocation.x = v6;
  self->_beginDragLocation.y = v7;
  [v5 setIsDragging:1];
  WeakRetained = objc_loadWeakRetained(&self->_selectionController);
  v9 = WeakRetained;
  if (WeakRetained)
  {
    v10 = objc_loadWeakRetained(WeakRetained + 15);
  }

  else
  {
    v10 = 0;
  }

  v11 = [(PKDrawing *)self->_drawing uuid];
  v12 = [v10 attachmentForUUID:v11];

  if (v12)
  {
    v13 = [(PKSpaceInsertionController *)self selectionController];
    [(PKSelectionController *)v13 _willBeginInsertSpaceInAttachment:v12];
  }

  -[PKSpaceInsertionController _blitStrokesToViewForSpaceInsertionType:withCompletion:](self, "_blitStrokesToViewForSpaceInsertionType:withCompletion:", [v5 insertionType], 0);
}

- (void)_panGestureDidChange:(id)a3
{
  v4 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_selectionController);
  v6 = [(PKSelectionController *)WeakRetained topView];

  [(PKSpaceInsertionController *)self _initalBufferBetweenLollipops];
  v8 = v7;
  dragBottomLollipopGR = self->_dragBottomLollipopGR;
  if (dragBottomLollipopGR == v4)
  {
    v10 = self->_bottomInsertionView;
    p_topInsertionView = &self->_topInsertionView;
    [(PKSpaceInsertionView *)self->_topInsertionView frame];
    v13 = v8 + v14;
  }

  else
  {
    v10 = self->_topInsertionView;
    p_topInsertionView = &self->_bottomInsertionView;
    [(PKSpaceInsertionView *)self->_bottomInsertionView frame];
    v13 = v12 - v8;
  }

  v15 = *p_topInsertionView;
  [(UIPanGestureRecognizer *)v4 translationInView:v6];
  v17 = v16 + self->_beginDragLocation.y;
  v18 = fmin(v17, v13);
  v19 = fmax(v17, v13);
  if (dragBottomLollipopGR == v4)
  {
    v18 = v19;
  }

  if (self->_topHandleRemovesWhitespace)
  {
    v20 = v17;
  }

  else
  {
    v20 = v18;
  }

  [(PKSpaceInsertionView *)v10 origin];
  v22 = v21;
  [(PKSpaceInsertionView *)v10 frame];
  v24 = v23;
  [(PKSpaceInsertionView *)v10 frame];
  [(PKSpaceInsertionView *)v10 setFrame:v22, v20, v24];
  y = self->_beginDragLocation.y;
  [(PKSpaceInsertionView *)v15 origin];
  v27 = v26;
  [(PKSpaceInsertionController *)self _initalBufferBetweenLollipops];
  v29 = v28;
  [(PKSpaceInsertionView *)v15 frame];
  v31 = v30;
  [(PKSpaceInsertionView *)v15 frame];
  [(PKSpaceInsertionView *)v15 setFrame:v27, v20 + v29, v31];
  v32 = v20 - y;
  [(PKSpaceInsertionController *)self _temporarilyShiftStrokesWithOffset:[(PKSpaceInsertionView *)v10 insertionType] spaceInsertionType:v32];
  v33 = objc_loadWeakRetained(&self->_selectionController);
  v34 = v33;
  if (v33)
  {
    v35 = objc_loadWeakRetained(v33 + 15);
  }

  else
  {
    v35 = 0;
  }

  v36 = [(PKDrawing *)self->_drawing uuid];
  v37 = [v35 attachmentForUUID:v36];

  if (v37)
  {
    [v37 drawingTransform];
    v38 = v32 / sqrt(v44 * v44 + v43 * v43);
    v39 = objc_loadWeakRetained(&self->_selectionController);
    v40 = v39;
    if (v39)
    {
      v41 = objc_loadWeakRetained(v39 + 15);
    }

    else
    {
      v41 = 0;
    }

    [v41 _transientlyUpdateHeightOfAttachment:v37 delta:v38];

    v42 = objc_loadWeakRetained(&self->_selectionController);
    [(PKSelectionController *)v42 _didMoveInsertSpace:v37 inAttachment:v38];
  }
}

- (void)_panGestureDidEnd:(id)a3
{
  v32 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_selectionController);
  v5 = [(PKSelectionController *)WeakRetained topView];

  [(PKSpaceInsertionController *)self _initalBufferBetweenLollipops];
  v7 = v6;
  dragBottomLollipopGR = self->_dragBottomLollipopGR;
  if (dragBottomLollipopGR == v32)
  {
    v9 = self->_bottomInsertionView;
    p_topInsertionView = &self->_topInsertionView;
    [(PKSpaceInsertionView *)self->_topInsertionView frame];
    v12 = v7 + v13;
  }

  else
  {
    v9 = self->_topInsertionView;
    p_topInsertionView = &self->_bottomInsertionView;
    [(PKSpaceInsertionView *)self->_bottomInsertionView frame];
    v12 = v11 - v7;
  }

  v14 = *p_topInsertionView;
  [(UIPanGestureRecognizer *)v32 translationInView:v5];
  v16 = v15;
  [(PKSpaceInsertionView *)v9 setIsDragging:0];
  v17 = v16 + self->_beginDragLocation.y;
  v18 = fmin(v17, v12);
  v19 = fmax(v17, v12);
  if (dragBottomLollipopGR == v32)
  {
    v18 = v19;
  }

  if (self->_topHandleRemovesWhitespace)
  {
    v20 = v16 + self->_beginDragLocation.y;
  }

  else
  {
    v20 = v18;
  }

  [(PKSpaceInsertionView *)v9 origin];
  v22 = v21;
  [(PKSpaceInsertionView *)v9 frame];
  v24 = v23;
  [(PKSpaceInsertionView *)v9 frame];
  [(PKSpaceInsertionView *)v9 setFrame:v22, v20, v24];
  y = self->_beginDragLocation.y;
  [(PKSpaceInsertionView *)v14 origin];
  v27 = v26;
  [(PKSpaceInsertionView *)v14 frame];
  v29 = v28;
  [(PKSpaceInsertionView *)v14 frame];
  [(PKSpaceInsertionView *)v14 setFrame:v27, v20, v29];
  v30 = +[PKStatisticsManager sharedStatisticsManager];
  v31 = v20 - y;
  [(PKStatisticsManager *)v30 recordInsertSpaceAddWhitespace:?];

  [(PKSpaceInsertionController *)self _makeSpaceWithOffset:[(PKSpaceInsertionView *)v9 insertionType] spaceInsertionType:v31];
}

- (void)commitSpacingResize
{
  [(PKSpaceInsertionController *)self _didEndCreatingSpace];
  [(PKSpaceInsertionController *)self _dismissSpacingResizeHandles];
  v3 = [(PKSpaceInsertionController *)self selectionController];
  [v3 didEndModifyDrawing];
}

- (void)_dismissSpacingResizeHandles
{
  [(PKSpaceInsertionView *)self->_topInsertionView removeFromSuperview];
  [(PKSpaceInsertionView *)self->_bottomInsertionView removeFromSuperview];
  [(UIView *)self->_tapToDismissView removeFromSuperview];
  self->_isCurrentlyAddingSpace = 0;
}

- (void)_layoutViewsIfNecessary
{
  WeakRetained = objc_loadWeakRetained(&self->_selectionController);
  v4 = [(PKSelectionController *)WeakRetained topView];
  [v4 frame];
  v6 = v5;

  +[PKDrawingAdjustmentKnob leftMargin];
  v8 = v7;
  topInsertionView = self->_topInsertionView;
  [(PKSpaceInsertionView *)topInsertionView origin];
  v11 = v10;
  v13 = v12;
  v14 = v6 - v8 + -28.0;
  [(PKSpaceInsertionView *)self->_topInsertionView bounds];
  [(PKSpaceInsertionView *)topInsertionView setFrame:v11, v13, v14];
  bottomInsertionView = self->_bottomInsertionView;
  [(PKSpaceInsertionView *)bottomInsertionView origin];
  v17 = v16;
  v19 = v18;
  [(PKSpaceInsertionView *)self->_bottomInsertionView bounds];
  [(PKSpaceInsertionView *)bottomInsertionView setFrame:v17, v19, v14];
  [(PKSpaceInsertionView *)self->_topInsertionView setNeedsDisplay];
  v20 = self->_bottomInsertionView;

  [(PKSpaceInsertionView *)v20 setNeedsDisplay];
}

- (void)didBeginCreatingSpaceWithLassoStroke:(id)a3 drawing:(id)a4 addDefaultSpace:(BOOL)a5 strokesAbove:(id)a6 strokesBelow:(id)a7 externalElements:(id)a8
{
  v11 = a5;
  v48 = a3;
  v15 = a4;
  v49 = a6;
  v16 = a7;
  v47 = a8;
  objc_storeStrong(&self->_drawing, a4);
  objc_storeStrong(&self->_lassoStroke, a3);
  objc_storeStrong(&self->_externalElements, a8);
  WeakRetained = objc_loadWeakRetained(&self->_selectionController);
  v18 = WeakRetained;
  if (WeakRetained)
  {
    v19 = objc_loadWeakRetained(WeakRetained + 15);
  }

  else
  {
    v19 = 0;
  }

  v20 = [v15 uuid];
  v21 = [v19 attachmentForUUID:v20];

  v22 = [(PKSpaceInsertionController *)self selectionController];
  [v22 didBeginModifyDrawing];

  if (v21)
  {
    v23 = [(PKSpaceInsertionController *)self selectionController];
    [(PKSelectionController *)v23 _willBeginInsertSpaceInAttachment:v21];
  }

  if (self->_shouldUseCachedStrokes)
  {
    v24 = MEMORY[0x1E695DFA0];
    v25 = [(NSOrderedSet *)self->_cachedStrokesAbove array];
    v26 = [PKDrawing visibleStrokesFromStrokes:v25 inDrawing:v15];
    v27 = [v24 orderedSetWithArray:v26];
    strokesAbove = self->_strokesAbove;
    self->_strokesAbove = v27;

    v29 = MEMORY[0x1E695DFA0];
    v30 = [(NSOrderedSet *)self->_cachedStrokesBelow array];
    v31 = [PKDrawing visibleStrokesFromStrokes:v30 inDrawing:v15];
    v32 = [v29 orderedSetWithArray:v31];
    strokesBelow = self->_strokesBelow;
    self->_strokesBelow = v32;
  }

  else
  {
    [(PKSpaceInsertionController *)self _sortStrokesAboveOrBelowWithStrokesAbove:v49 strokesBelow:v16];
  }

  if ([(NSMutableOrderedSet *)self->_strokesBelow count]|| [(NSOrderedSet *)self->_externalElements count])
  {
    self->_isCurrentlyAddingSpace = 1;
    v34 = objc_loadWeakRetained(&self->_selectionController);
    v35 = [(PKSelectionController *)v34 topView];
    [v35 frame];
    v37 = v36;
    v39 = v38;
    v41 = v40;

    +[PKDrawingAdjustmentKnob leftMargin];
    v43 = v42;
    v44 = [(PKSpaceInsertionController *)self selectionController];
    v45 = [(PKSelectionController *)v44 topView];
    if ([v45 effectiveUserInterfaceLayoutDirection])
    {
      v46 = 28.0;
    }

    else
    {
      v46 = v43;
    }

    [(PKSpaceInsertionController *)self _addSpacingViewsWithFrame:v46, v37, v39 - v43 + -28.0, v41];
  }

  else
  {
    [(PKSpaceInsertionController *)self commitSpacingResize];
  }

  if (v11)
  {
    [(PKSpaceInsertionController *)self insertDefaultSpace:100.0];
  }
}

- (void)_addSpacingViewsWithFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  self->_didMoveStrokes = 0;
  [(PKSpaceInsertionController *)self _initalBufferBetweenLollipops];
  v9 = v8;
  v10 = [objc_alloc(MEMORY[0x1E69DD250]) initWithFrame:{x, y, width, height}];
  tapToDismissView = self->_tapToDismissView;
  self->_tapToDismissView = v10;

  v12 = [objc_alloc(MEMORY[0x1E69DD060]) initWithTarget:self action:sel_commitSpacingResize];
  [(UIView *)self->_tapToDismissView addGestureRecognizer:v12];
  v13 = [objc_alloc(MEMORY[0x1E69DCC48]) initWithTarget:self action:sel_commitSpacingResize];
  [v13 setMinimumPressDuration:0.0];
  [(UIView *)self->_tapToDismissView addGestureRecognizer:v13];
  WeakRetained = objc_loadWeakRetained(&self->_selectionController);
  v15 = [(PKSelectionController *)WeakRetained topView];
  [v15 addSubview:self->_tapToDismissView];

  v16 = [(PKStroke *)self->_lassoStroke _newPathRepresentation];
  v64 = height;
  v17 = objc_loadWeakRetained(&self->_selectionController);
  [(PKSelectionController *)v17 _selectionDrawingTransformForDrawing:&v71];
  a = v71.a;

  memset(&v71, 0, sizeof(v71));
  v66 = a;
  CGAffineTransformMakeScale(&v71, a, a);
  memset(&transform, 0, sizeof(transform));
  [(PKStroke *)self->_lassoStroke _bounds];
  v20 = v19;
  [(PKStroke *)self->_lassoStroke _bounds];
  CGAffineTransformMakeTranslation(&transform, -v20, -v21);
  t1 = transform;
  t2 = v71;
  CGAffineTransformConcat(&v69, &t1, &t2);
  transform = v69;
  v22 = CGPathCreateMutableCopyByTransformingPath(v16, &transform);
  v23 = [(PKStroke *)self->_lassoStroke path];
  v24 = [v23 count];

  v25 = [(PKStroke *)self->_lassoStroke path];
  v26 = [v25 pointAtIndex:0];
  v27 = v9;
  [v26 location];
  v29 = v28;
  v31 = v30;

  v32 = [(PKStroke *)self->_lassoStroke path];
  v33 = [v32 pointAtIndex:v24 - 1];
  [v33 location];
  v35 = v34;
  v37 = v36;

  v65 = v27;
  if (v29 >= v35)
  {
    v38 = [(PKSpaceInsertionController *)self selectionController];
    v39 = x;
    v40 = width;
    v41 = [(PKSelectionController *)v38 topView];
    if ([v41 effectiveUserInterfaceLayoutDirection])
    {
      v42 = v31;
    }

    else
    {
      v29 = v35;
      v42 = v37;
    }
  }

  else
  {
    [(PKSpaceInsertionController *)self projectPath:v22 toEndOfFrame:x, y, width, v64];
    v38 = [(PKSpaceInsertionController *)self selectionController];
    v39 = x;
    v40 = width;
    v41 = [(PKSelectionController *)v38 topView];
    if ([v41 effectiveUserInterfaceLayoutDirection])
    {
      v29 = v35;
      v42 = v37;
    }

    else
    {
      v42 = v31;
    }
  }

  v43 = objc_loadWeakRetained(&self->_selectionController);
  [(PKSelectionController *)v43 _selectionOffsetForDrawing:?];
  v45 = v44;

  [(PKStroke *)self->_lassoStroke _bounds];
  v47 = v46;
  v48 = *MEMORY[0x1E695EFF8];
  v49 = *(MEMORY[0x1E695EFF8] + 8);
  if ([(PKStroke *)self->_lassoStroke _pointsCount])
  {
    v48 = transform.tx + v42 * transform.c + transform.a * v29;
    v49 = transform.ty + v42 * transform.d + transform.b * v29;
  }

  BoundingBox = CGPathGetBoundingBox(v22);
  v50 = v45 + v66 * v47;
  v51 = BoundingBox.size.height + 30.0;
  v52 = [[PKSpaceInsertionView alloc] initWithFrame:0 insertionType:v22 path:v39 handleLocation:v50 - v65 * 0.5 + -15.0 scale:v40, BoundingBox.size.height + 30.0, v48, v49, v66];
  topInsertionView = self->_topInsertionView;
  self->_topInsertionView = v52;

  v54 = [objc_alloc(MEMORY[0x1E69DCD28]) initWithTarget:self action:sel__dragLollipop_];
  dragTopLollipopGR = self->_dragTopLollipopGR;
  self->_dragTopLollipopGR = v54;

  [(PKSpaceInsertionView *)self->_topInsertionView addGestureRecognizer:self->_dragTopLollipopGR];
  v56 = objc_loadWeakRetained(&self->_selectionController);
  v57 = [(PKSelectionController *)v56 topView];
  [v57 addSubview:self->_topInsertionView];

  v58 = [[PKSpaceInsertionView alloc] initWithFrame:1 insertionType:v22 path:v39 handleLocation:v65 * 0.5 + v50 + -15.0 scale:v40, v51, v48, v49, v66];
  bottomInsertionView = self->_bottomInsertionView;
  self->_bottomInsertionView = v58;

  v60 = [objc_alloc(MEMORY[0x1E69DCD28]) initWithTarget:self action:sel__dragLollipop_];
  dragBottomLollipopGR = self->_dragBottomLollipopGR;
  self->_dragBottomLollipopGR = v60;

  [(PKSpaceInsertionView *)self->_bottomInsertionView addGestureRecognizer:self->_dragBottomLollipopGR];
  v62 = objc_loadWeakRetained(&self->_selectionController);
  v63 = [(PKSelectionController *)v62 topView];
  [v63 addSubview:self->_bottomInsertionView];

  CGPathRelease(v16);
  CGPathRelease(v22);
}

- (void)projectPath:(CGPath *)a3 toEndOfFrame:(CGRect)a4
{
  width = a4.size.width;
  CurrentPoint = CGPathGetCurrentPoint(a3);
  __p = 0;
  v18 = 0;
  v19 = 0;
  PKPointsFromPath(a3, &__p, 1.79769313e308, 0.0);
  v7 = (v18 - __p) >> 4;
  if (v7 < 3)
  {
    goto LABEL_15;
  }

  if (v7 >= 0x64)
  {
    v8 = 100;
  }

  else
  {
    v8 = v7;
  }

  if (v7 <= 1)
  {
    v9 = 1;
  }

  else
  {
    v9 = (v18 - __p) >> 4;
  }

  if (v9 - 1 <= (v8 - 3))
  {
    std::vector<double>::__throw_out_of_range[abi:ne200100]();
  }

  v10 = 0;
  v11 = v8 - 2;
  v12 = (__p + 16 * v7 - 32);
  v13 = 0.0;
  y = CurrentPoint.y;
  x = CurrentPoint.x;
  do
  {
    v16 = x - *v12;
    if (v16 > 1.0)
    {
      v13 = v13 + (y - v12[1]) / v16;
      ++v10;
      y = v12[1];
      x = *v12;
    }

    v12 -= 2;
    --v11;
  }

  while (v11);
  if (v10 <= 0)
  {
LABEL_15:
    CGPathAddLineToPoint(a3, 0, width, CurrentPoint.y);
  }

  else
  {
    CGPathAddQuadCurveToPoint(a3, 0, width * 0.5 + CurrentPoint.x * 0.5, CurrentPoint.y + (width * 0.5 + CurrentPoint.x * 0.5 - CurrentPoint.x) * (v13 / v10), width, (CurrentPoint.y + CurrentPoint.y + (width * 0.5 + CurrentPoint.x * 0.5 - CurrentPoint.x) * (v13 / v10)) * 0.5);
  }

  if (__p)
  {
    v18 = __p;
    operator delete(__p);
  }
}

- (void)_didEndCreatingSpace
{
  WeakRetained = objc_loadWeakRetained(&self->_selectionController);
  [(PKSelectionController *)WeakRetained _resetSelectedStrokeStateForRenderer];

  [(NSMutableOrderedSet *)self->_strokesAbove removeAllObjects];
  [(NSMutableOrderedSet *)self->_strokesBelow removeAllObjects];
  strokesAbove = self->_strokesAbove;
  self->_strokesAbove = 0;

  strokesBelow = self->_strokesBelow;
  self->_strokesBelow = 0;
}

- (void)_sortStrokesAboveOrBelowWithStrokesAbove:(id)a3 strokesBelow:(id)a4
{
  v94 = *MEMORY[0x1E69E9840];
  v86 = a3;
  v88 = a4;
  v6 = [MEMORY[0x1E695DFA0] orderedSet];
  strokesAbove = self->_strokesAbove;
  self->_strokesAbove = v6;

  v8 = [MEMORY[0x1E695DFA0] orderedSet];
  strokesBelow = self->_strokesBelow;
  self->_strokesBelow = v8;

  if (v86)
  {
    v10 = self->_strokesAbove;
    v11 = [v86 array];
    v12 = [PKDrawing visibleStrokesFromStrokes:v11 inDrawing:self->_drawing];
    [(NSMutableOrderedSet *)v10 addObjectsFromArray:v12];
  }

  if (v88)
  {
    v13 = self->_strokesBelow;
    v14 = [v88 array];
    v15 = [PKDrawing visibleStrokesFromStrokes:v14 inDrawing:self->_drawing];
    [(NSMutableOrderedSet *)v13 addObjectsFromArray:v15];
  }

  WeakRetained = objc_loadWeakRetained(&self->_selectionController);
  v17 = [(PKSelectionController *)WeakRetained topView];
  [v17 frame];
  v83 = v19;
  v84 = v18;
  v81 = v21;
  v82 = v20;

  [(PKStroke *)self->_lassoStroke _bounds];
  v79 = v23;
  v80 = v22;
  v85 = v24;
  rect = v25;
  v91 = 0u;
  v92 = 0u;
  v89 = 0u;
  v90 = 0u;
  obj = [(PKDrawing *)self->_drawing strokes];
  v26 = [obj countByEnumeratingWithState:&v89 objects:v93 count:16];
  if (v26)
  {
    v27 = *v90;
    do
    {
      for (i = 0; i != v26; ++i)
      {
        if (*v90 != v27)
        {
          objc_enumerationMutation(obj);
        }

        v29 = *(*(&v89 + 1) + 8 * i);
        if (([v88 containsObject:v29] & 1) == 0 && (objc_msgSend(v86, "containsObject:", v29) & 1) == 0)
        {
          v30 = [v29 ink];
          v31 = [v30 identifier];
          if ([v31 isEqual:@"com.apple.ink.lasso"])
          {
          }

          else
          {
            v32 = [v29 ink];
            v33 = [v32 identifier];
            v34 = [v33 isEqual:@"com.apple.ink.generationtool"];

            if ((v34 & 1) == 0)
            {
              v35 = objc_loadWeakRetained(&self->_selectionController);
              v36 = [(PKSelectionController *)v35 topView];
              [v36 frame];
              v38 = v37;
              v40 = v39;
              v42 = v41;
              v44 = v43;

              v45 = objc_loadWeakRetained(&self->_selectionController);
              v95.origin.x = v38;
              v95.origin.y = v40;
              v95.size.width = v42;
              v95.size.height = v44;
              MaxX = CGRectGetMaxX(v95);
              v96.origin.x = v38;
              v96.origin.y = v40;
              v96.size.width = v42;
              v96.size.height = v44;
              MaxY = CGRectGetMaxY(v96);
              *&v48 = [(PKSelectionController *)v45 _pointInStrokeSpace:MaxX inDrawing:MaxY].n128_u64[0];
              v50 = v49;

              v51 = objc_loadWeakRetained(&self->_selectionController);
              v97.origin.y = v83;
              v97.origin.x = v84;
              v97.size.height = v81;
              v97.size.width = v82;
              v52 = CGRectGetMaxY(v97);
              [(PKSelectionController *)v51 _pointInStrokeSpace:0.0 inDrawing:v52];
              v54 = v53;

              [v29 _bounds];
              v56 = v55;
              v58 = v57;
              v60 = v59;
              v62 = v61;
              v98.size.width = v79;
              v98.origin.x = v80;
              v98.origin.y = v85;
              v98.size.height = rect;
              v63 = CGRectGetMaxY(v98);
              v99.origin.x = v56;
              v99.origin.y = v58;
              v99.size.width = v60;
              v99.size.height = v62;
              v64 = CGRectGetMaxY(v99);
              p_strokesBelow = &self->_strokesBelow;
              if (v58 <= v63 && (p_strokesBelow = &self->_strokesAbove, v64 >= v85))
              {
                v100.origin.x = v56;
                v100.origin.y = v58;
                v100.size.width = v60;
                v100.size.height = v62;
                v66 = 0;
                MinX = CGRectGetMinX(v100);
                v68 = 0.0;
                while (1)
                {
                  v101.origin.x = v56;
                  v101.origin.y = v58;
                  v101.size.width = v60;
                  v101.size.height = v62;
                  if (CGRectGetMaxX(v101) <= MinX)
                  {
                    break;
                  }

                  [(PKStroke *)self->_lassoStroke intersectionFromPoint:MinX toPoint:0.0, MinX, v54];
                  v68 = v68 + v69;
                  ++v66;
                  ++MinX;
                }

                if (v66)
                {
                  v70 = v68 / v66;
                }

                else
                {
                  [(PKStroke *)self->_lassoStroke _locationAtIndex:[(PKStroke *)self->_lassoStroke _pointsCount]- 1];
                  v70 = v71;
                }

                [v29 _bounds];
                DKDPercentRectInsideRect(v72, v73, v74, v75, 0.0, v70, v48, v50 - v70);
                p_strokesAbove = &self->_strokesAbove;
                if (v77 > 0.5)
                {
                  p_strokesAbove = &self->_strokesBelow;
                }

                [(NSMutableOrderedSet *)*p_strokesAbove addObject:v29];
              }

              else
              {
                [(NSMutableOrderedSet *)*p_strokesBelow addObject:v29, v64];
              }
            }
          }
        }
      }

      v26 = [obj countByEnumeratingWithState:&v89 objects:v93 count:16];
    }

    while (v26);
  }
}

- (void)_makeSpaceWithOffset:(double)a3 spaceInsertionType:(unint64_t)a4
{
  [(PKSpaceInsertionController *)self initTopAndBottomSelectionIfNecessary];
  v7 = self->_drawing;
  if (a4 == 1)
  {
    v8 = 96;
  }

  else
  {
    v8 = 104;
    if (self->_topHandleRemovesWhitespace)
    {
      v8 = 96;
    }
  }

  v9 = *(&self->super.isa + v8);
  [(PKSpaceInsertionController *)self offsetInStrokeSpaceFromViewOffset:v7 inDrawing:a3];
  v11 = v10;
  WeakRetained = objc_loadWeakRetained(&self->_selectionController);
  v27[0] = MEMORY[0x1E69E9820];
  v27[1] = 3221225472;
  v27[2] = __70__PKSpaceInsertionController__makeSpaceWithOffset_spaceInsertionType___block_invoke;
  v27[3] = &unk_1E82D6388;
  v27[4] = self;
  v13 = [(PKSelectionController *)WeakRetained applySpaceInsertionWithStrokeSelection:v9 inDrawing:v7 offset:v27 completion:v11];

  self->_didMoveStrokes = 1;
  if (a4 == 1 || self->_topHandleRemovesWhitespace)
  {
    v14 = [MEMORY[0x1E695DFA0] orderedSetWithOrderedSet:v13];
    v15 = 8;
  }

  else
  {
    v14 = [MEMORY[0x1E695DFA0] orderedSetWithOrderedSet:v13];
    v15 = 16;
  }

  v16 = *(&self->super.isa + v15);
  *(&self->super.isa + v15) = v14;

  bottomStrokeSelection = self->_bottomStrokeSelection;
  self->_bottomStrokeSelection = 0;

  topStrokeSelection = self->_topStrokeSelection;
  self->_topStrokeSelection = 0;

  v19 = objc_loadWeakRetained(&self->_selectionController);
  v20 = v19;
  if (v19)
  {
    v21 = objc_loadWeakRetained(v19 + 15);
  }

  else
  {
    v21 = 0;
  }

  v22 = [(PKDrawing *)self->_drawing uuid];
  v23 = [v21 attachmentForUUID:v22];

  if (v23)
  {
    v24 = [(PKSpaceInsertionController *)self selectionController];
    v25 = [(PKSpaceInsertionController *)self externalElements];
    [(PKSelectionController *)v24 _didEndDraggingExternalElements:v25 inAttachment:v23];

    v26 = [(PKSpaceInsertionController *)self selectionController];
    [(PKSelectionController *)v26 _didEndInsertSpaceInAttachment:v23];
  }
}

void __70__PKSpaceInsertionController__makeSpaceWithOffset_spaceInsertionType___block_invoke(uint64_t a1)
{
  [*(*(a1 + 32) + 120) removeFromSuperview];
  v2 = *(a1 + 32);
  v3 = *(v2 + 120);
  *(v2 + 120) = 0;

  [*(*(a1 + 32) + 112) removeFromSuperview];
  v4 = *(a1 + 32);
  v5 = *(v4 + 112);
  *(v4 + 112) = 0;
}

- (void)_temporarilyShiftStrokesWithOffset:(double)a3 spaceInsertionType:(unint64_t)a4
{
  if (a4 == 1)
  {
    v6 = 120;
  }

  else
  {
    v6 = 112;
    if (self->_topHandleRemovesWhitespace)
    {
      v6 = 120;
    }
  }

  v7 = *(&self->super.isa + v6);
  x = self->_initialViewLocation.x;
  y = self->_initialViewLocation.y;
  [v7 frame];
  [v7 setFrame:{x, y + a3}];
  WeakRetained = objc_loadWeakRetained(&self->_selectionController);
  v11 = WeakRetained;
  if (WeakRetained)
  {
    v12 = objc_loadWeakRetained(WeakRetained + 15);
  }

  else
  {
    v12 = 0;
  }

  v13 = [(PKDrawing *)self->_drawing uuid];
  v14 = [v12 attachmentForUUID:v13];

  if (v14)
  {
    [v14 drawingTransform];
    CGAffineTransformInvert(&v24, &v23);
    b = v24.b;
    d = v24.d;
    ty = v24.ty;
    v18 = [(PKSpaceInsertionController *)self selectionController];
    v19 = ty + d * a3 + b * 0.0;
    [(PKSelectionController *)v18 _didMoveInsertSpace:v14 inAttachment:v19];

    v20 = [(PKSpaceInsertionController *)self selectionController];
    v21 = [(PKSpaceInsertionController *)self externalElements];
    v22 = *(MEMORY[0x1E695EFD0] + 16);
    *&v23.a = *MEMORY[0x1E695EFD0];
    *&v23.c = v22;
    *&v23.tx = *(MEMORY[0x1E695EFD0] + 32);
    CGAffineTransformTranslate(&v24, &v23, 0.0, v19);
    [(PKSelectionController *)v20 _didDragExternalElements:v21 withTransform:&v24 inAttachment:v14];
  }
}

- (void)insertDefaultSpace:(double)a3
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __49__PKSpaceInsertionController_insertDefaultSpace___block_invoke;
  v3[3] = &unk_1E82D83D0;
  v3[4] = self;
  *&v3[5] = a3;
  [(PKSpaceInsertionController *)self _blitStrokesToViewForSpaceInsertionType:1 withCompletion:v3];
}

- (void)shiftStrokesWithOffset:(double)a3
{
  [(PKSpaceInsertionView *)self->_bottomInsertionView frame];
  v6 = v5;
  v27 = v8;
  v28 = v7;
  v10 = v9;
  [(PKSpaceInsertionView *)self->_topInsertionView frame];
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v18 = v17;
  WeakRetained = objc_loadWeakRetained(&self->_selectionController);
  v20 = WeakRetained;
  if (WeakRetained)
  {
    v21 = objc_loadWeakRetained(WeakRetained + 15);
  }

  else
  {
    v21 = 0;
  }

  v22 = [(PKDrawing *)self->_drawing uuid];
  v23 = [v21 attachmentForUUID:v22];

  v24 = MEMORY[0x1E69DD250];
  v30[0] = MEMORY[0x1E69E9820];
  v30[1] = 3221225472;
  v30[2] = __53__PKSpaceInsertionController_shiftStrokesWithOffset___block_invoke;
  v30[3] = &unk_1E82DC458;
  v30[4] = self;
  v33 = a3;
  v34 = v6;
  v35 = v28;
  v36 = v27;
  v37 = v10;
  v38 = v12;
  v39 = v14;
  v40 = v16;
  v41 = v18;
  v25 = v21;
  v31 = v25;
  v32 = v23;
  v29[0] = MEMORY[0x1E69E9820];
  v29[1] = 3221225472;
  v29[2] = __53__PKSpaceInsertionController_shiftStrokesWithOffset___block_invoke_2;
  v29[3] = &unk_1E82DC480;
  v29[4] = self;
  *&v29[5] = a3;
  v26 = v23;
  [v24 animateWithDuration:v30 animations:v29 completion:0.75];
}

uint64_t __53__PKSpaceInsertionController_shiftStrokesWithOffset___block_invoke(uint64_t a1)
{
  [*(a1 + 32) _temporarilyShiftStrokesWithOffset:1 spaceInsertionType:*(a1 + 56)];
  v2 = *(a1 + 72) + *(a1 + 56);
  [*(*(a1 + 32) + 40) setFrame:{*(a1 + 64), v2, *(a1 + 80), *(a1 + 88)}];
  v3 = *(a1 + 96);
  [*(a1 + 32) _initalBufferBetweenLollipops];
  [*(*(a1 + 32) + 32) setFrame:{v3, v2 + v4, *(a1 + 112), *(a1 + 120)}];
  v5 = *(a1 + 40);
  v6 = *(a1 + 48);
  v7 = *(a1 + 56);

  return [v5 _transientlyUpdateHeightOfAttachment:v6 delta:v7];
}

- (void)initTopAndBottomSelectionIfNecessary
{
  memset(&v13, 0, sizeof(v13));
  WeakRetained = objc_loadWeakRetained(&self->_selectionController);
  [(PKSelectionController *)WeakRetained _selectionDrawingTransformForDrawing:&v13];

  if (!self->_bottomStrokeSelection)
  {
    v4 = [[PKStrokeSelection alloc] initWithStrokes:self->_strokesBelow lassoStroke:self->_lassoStroke drawing:self->_drawing];
    bottomStrokeSelection = self->_bottomStrokeSelection;
    self->_bottomStrokeSelection = v4;
  }

  if (!self->_topStrokeSelection)
  {
    v6 = [[PKStrokeSelection alloc] initWithStrokes:self->_strokesAbove lassoStroke:self->_lassoStroke drawing:self->_drawing];
    topStrokeSelection = self->_topStrokeSelection;
    self->_topStrokeSelection = v6;
  }

  if (!self->_bottomImageView)
  {
    [(PKStrokeSelection *)self->_bottomStrokeSelection boundsWithoutLasso];
    v12 = v13;
    v15 = CGRectApplyAffineTransform(v14, &v12);
    v8 = [[PKImageView alloc] initWithFrame:v15.origin.x, v15.origin.y, v15.size.width, v15.size.height];
    bottomImageView = self->_bottomImageView;
    self->_bottomImageView = v8;
  }

  if (!self->_topImageView)
  {
    [(PKStrokeSelection *)self->_topStrokeSelection boundsWithoutLasso];
    v12 = v13;
    v17 = CGRectApplyAffineTransform(v16, &v12);
    v10 = [[PKImageView alloc] initWithFrame:v17.origin.x, v17.origin.y, v17.size.width, v17.size.height];
    topImageView = self->_topImageView;
    self->_topImageView = v10;
  }
}

- (void)_blitStrokesToViewForSpaceInsertionType:(unint64_t)a3 withCompletion:(id)a4
{
  v6 = a4;
  [(PKSpaceInsertionController *)self initTopAndBottomSelectionIfNecessary];
  if (a3 == 1)
  {
    v7 = 120;
    v8 = 96;
  }

  else
  {
    v8 = 104;
    if (self->_topHandleRemovesWhitespace)
    {
      v8 = 96;
      v7 = 120;
    }

    else
    {
      v7 = 112;
    }
  }

  v9 = *(&self->super.isa + v8);
  v10 = *(&self->super.isa + v7);
  [v10 setAlpha:1.0];
  v11 = [v9 strokes];
  v12 = [v11 count];

  if (!v12)
  {
    v16 = 1;
    if (!v6)
    {
      goto LABEL_20;
    }

    goto LABEL_18;
  }

  v13 = [v9 strokes];
  v14 = [(PKSpaceInsertionController *)self _visibleStrokesOnPage:v13];

  v50 = [[PKStrokeSelection alloc] initWithStrokes:v14 lassoStroke:self->_lassoStroke drawing:self->_drawing];
  v15 = [v14 count];
  v16 = v15 == 0;
  if (v15)
  {
    WeakRetained = objc_loadWeakRetained(&self->_selectionController);
    v18 = [(PKSelectionController *)WeakRetained _selectionOffsetForDrawing:?];
    v20 = v19;

    memset(&v52, 0, sizeof(v52));
    v21 = objc_loadWeakRetained(&self->_selectionController);
    [(PKSelectionController *)v21 _selectionDrawingTransformForDrawing:&v52];

    [(PKStrokeSelection *)v50 boundsWithoutLasso];
    v51 = v52;
    v54 = CGRectApplyAffineTransform(v53, &v51);
    self->_initialViewLocation.x = v18 + v54.origin.x;
    self->_initialViewLocation.y = v20 + v54.origin.y;
    [v10 setFrame:?];
    v22 = [(PKSpaceInsertionController *)self drawing];
    v23 = objc_alloc(objc_opt_class());
    v24 = [v14 array];
    v25 = [(PKSpaceInsertionController *)self drawing];
    v48 = [v23 initWithStrokes:v24 fromDrawing:v25];

    v26 = [MEMORY[0x1E69DCEB0] mainScreen];
    [v26 scale];
    v28 = v27;

    [(PKStrokeSelection *)v50 boundsWithoutLasso];
    v30 = v29;
    v32 = v31;
    v34 = v33;
    v36 = v35;
    v37 = [(PKSpaceInsertionController *)self selectionController];
    v38 = v37;
    if (v37)
    {
      v39 = objc_loadWeakRetained((v37 + 120));
    }

    else
    {
      v39 = 0;
    }

    v40 = [v39 _sixChannelBlendingIsActive];

    v41 = [(PKSpaceInsertionController *)self selectionController];
    v42 = v41;
    if (v41)
    {
      v43 = objc_loadWeakRetained((v41 + 120));
    }

    else
    {
      v43 = 0;
    }

    v44 = [v43 isExtendedDynamicRangeRenderingActive];

    [v10 setupWithDrawing:v49 imageSize:v40 scale:v44 strokeSpaceClipRect:v34 sixChannel:v36 extendedDynamicRange:{v28, v30, v32, v34, v36}];
    v45 = objc_loadWeakRetained(&self->_selectionController);
    v46 = [(PKSelectionController *)v45 topView];
    [v46 addSubview:v10];

    v47 = objc_loadWeakRetained(&self->_selectionController);
    [(PKSelectionController *)v47 hideStrokes:v9 inDrawing:self->_drawing];

    if (v6)
    {
      v6[2](v6);
    }
  }

  if (v6)
  {
LABEL_18:
    if (v16)
    {
      v6[2](v6);
    }
  }

LABEL_20:
}

- (id)_visibleStrokesOnPage:(id)a3
{
  v4 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_selectionController);
  v6 = [(PKSelectionController *)WeakRetained _visibleStrokesWithinExtendedBounds:v4 forDrawing:self->_drawing];

  return v6;
}

- (double)offsetInStrokeSpaceFromViewOffset:(double)a3 inDrawing:(id)a4
{
  v6 = a4;
  x = self->_beginDragLocation.x;
  y = self->_beginDragLocation.y;
  WeakRetained = objc_loadWeakRetained(&self->_selectionController);
  [(PKSelectionController *)WeakRetained _pointInStrokeSpace:v6 inDrawing:x, y];
  v11 = v10;

  v12 = objc_loadWeakRetained(&self->_selectionController);
  [(PKSelectionController *)v12 _pointInStrokeSpace:v6 inDrawing:x + 0.0, y + a3];
  v14 = v13;

  return v14 - v11;
}

- (void)fetchStrokesAmbiguouslyBelowAndAboveInsertSpaceHandleWithStrokes:(id)a3 inDrawing:(id)a4 completion:(id)a5
{
  v15 = a3;
  v8 = a4;
  v9 = a5;
  v10 = [(PKSpaceInsertionController *)self selectionController];
  v11 = v10;
  if (v10)
  {
    WeakRetained = objc_loadWeakRetained((v10 + 120));
  }

  else
  {
    WeakRetained = 0;
  }

  v13 = [v8 uuid];
  v14 = [WeakRetained attachmentForUUID:v13];

  if (v14)
  {
    [v14 fetchStrokesAmbiguouslyBelowAndAboveInsertSpaceHandleWithStrokes:v15 completion:v9];
  }
}

- (PKSelectionController)selectionController
{
  WeakRetained = objc_loadWeakRetained(&self->_selectionController);

  return WeakRetained;
}

@end