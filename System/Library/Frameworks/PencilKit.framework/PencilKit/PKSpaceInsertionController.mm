@interface PKSpaceInsertionController
- (PKSelectionController)selectionController;
- (PKSpaceInsertionController)initWithSelectionController:(id)controller;
- (double)offsetInStrokeSpaceFromViewOffset:(double)offset inDrawing:(id)drawing;
- (id)_visibleStrokesOnPage:(id)page;
- (void)_addSpacingViewsWithFrame:(CGRect)frame;
- (void)_blitStrokesToViewForSpaceInsertionType:(unint64_t)type withCompletion:(id)completion;
- (void)_didEndCreatingSpace;
- (void)_didGrabInsertSpaceAffordance:(id)affordance;
- (void)_dismissHandlesAndReselectExistingSelectionInDrawing:(id)drawing;
- (void)_dismissSpacingResizeHandles;
- (void)_dragLollipop:(id)lollipop;
- (void)_layoutViewsIfNecessary;
- (void)_makeSpaceWithOffset:(double)offset spaceInsertionType:(unint64_t)type;
- (void)_panGestureDidBegin:(id)begin;
- (void)_panGestureDidChange:(id)change;
- (void)_panGestureDidEnd:(id)end;
- (void)_sortStrokesAboveOrBelowWithStrokesAbove:(id)above strokesBelow:(id)below;
- (void)_temporarilyShiftStrokesWithOffset:(double)offset spaceInsertionType:(unint64_t)type;
- (void)commitSpacingResize;
- (void)didBeginCreatingSpaceWithLassoStroke:(id)stroke drawing:(id)drawing addDefaultSpace:(BOOL)space strokesAbove:(id)above strokesBelow:(id)below externalElements:(id)elements;
- (void)didScroll:(CGPoint)scroll;
- (void)fetchStrokesAmbiguouslyBelowAndAboveInsertSpaceHandleWithStrokes:(id)strokes inDrawing:(id)drawing completion:(id)completion;
- (void)initTopAndBottomSelectionIfNecessary;
- (void)insertDefaultSpace:(double)space;
- (void)invalidateCachedStrokes;
- (void)projectPath:(CGPath *)path toEndOfFrame:(CGRect)frame;
- (void)shiftStrokesWithOffset:(double)offset;
@end

@implementation PKSpaceInsertionController

- (PKSpaceInsertionController)initWithSelectionController:(id)controller
{
  objc_initWeak(&location, controller);
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

- (void)didScroll:(CGPoint)scroll
{
  y = scroll.y;
  x = scroll.x;
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

- (void)_dragLollipop:(id)lollipop
{
  lollipopCopy = lollipop;
  if ([lollipopCopy state] == 1)
  {
    [(PKSpaceInsertionController *)self _panGestureDidBegin:lollipopCopy];
  }

  else if ([lollipopCopy state] == 2)
  {
    [(PKSpaceInsertionController *)self _panGestureDidChange:lollipopCopy];
  }

  else if ([lollipopCopy state] == 3)
  {
    [(PKSpaceInsertionController *)self _panGestureDidEnd:lollipopCopy];
  }

  else if ([lollipopCopy state] == 4 || objc_msgSend(lollipopCopy, "state") == 5)
  {
    [(PKSpaceInsertionController *)self _panGestureDidCancelOrFail:lollipopCopy];
  }
}

- (void)_didGrabInsertSpaceAffordance:(id)affordance
{
  affordanceCopy = affordance;
  selectionController = [(PKSpaceInsertionController *)self selectionController];
  topView = [(PKSelectionController *)selectionController topView];
  [affordanceCopy locationInView:topView];
  v8 = v7;
  v10 = v9;

  selectionController2 = [(PKSpaceInsertionController *)self selectionController];
  v12 = [(PKSelectionController *)selectionController2 _drawingForSelectionRect:v10 + -60.0, 120.0, 120.0];

  if ([affordanceCopy state] == 1)
  {
    v13 = +[PKStatisticsManager sharedStatisticsManager];
    [(PKStatisticsManager *)v13 recordInsertSpaceWithType:?];

    selectionController3 = [(PKSpaceInsertionController *)self selectionController];
    v15 = selectionController3;
    if (selectionController3)
    {
      v16 = *(selectionController3 + 152);
    }

    else
    {
      v16 = 0;
    }

    v17 = v16;
    [v17 frame];
    MinY = CGRectGetMinY(v39);

    selectionController4 = [(PKSpaceInsertionController *)self selectionController];
    v20 = selectionController4;
    if (selectionController4)
    {
      v21 = *(selectionController4 + 128);
    }

    else
    {
      v21 = 0;
    }

    objc_storeStrong(&self->_strokeSelectionBeforeInsertingSpace, v21);

    selectionController5 = [(PKSpaceInsertionController *)self selectionController];
    v23 = selectionController5;
    if (selectionController5)
    {
      v24 = *(selectionController5 + 152);
    }

    else
    {
      v24 = 0;
    }

    v25 = v24;
    self->_selectionTypeBeforeInsertingSpace = [v25 selectionType];

    strokeIdentifiers = [(PKStrokeSelection *)self->_cachedStrokeSelection strokeIdentifiers];
    strokeIdentifiers2 = [(PKStrokeSelection *)self->_strokeSelectionBeforeInsertingSpace strokeIdentifiers];
    if ([strokeIdentifiers isEqual:strokeIdentifiers2] && self->_cachedStrokesBelow)
    {
      cachedStrokesAbove = self->_cachedStrokesAbove;

      if (cachedStrokesAbove)
      {
        v29 = 1;
LABEL_16:
        self->_shouldUseCachedStrokes = v29;
        self->_insertSpaceAffordancePanDidEnd = 0;
        selectionController6 = [(PKSpaceInsertionController *)self selectionController];
        [(PKSelectionController *)selectionController6 clearSelectionIfNecessaryAnimated:0 withCompletion:?];

        objc_initWeak(&location, self);
        strokes = [(PKStrokeSelection *)self->_strokeSelectionBeforeInsertingSpace strokes];
        array = [strokes array];
        v35[0] = MEMORY[0x1E69E9820];
        v35[1] = 3221225472;
        v35[2] = __60__PKSpaceInsertionController__didGrabInsertSpaceAffordance___block_invoke;
        v35[3] = &unk_1E82DC430;
        objc_copyWeak(v37, &location);
        v35[4] = self;
        v37[1] = 0;
        v37[2] = *&MinY;
        v36 = affordanceCopy;
        [(PKSpaceInsertionController *)self fetchStrokesAmbiguouslyBelowAndAboveInsertSpaceHandleWithStrokes:array inDrawing:v12 completion:v35];

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

  if ([affordanceCopy state] == 2)
  {
    [(PKSpaceInsertionController *)self _panGestureDidChange:affordanceCopy];
  }

  else if ([affordanceCopy state] == 3)
  {
    objc_storeStrong(&self->_cachedStrokesAbove, self->_strokesAbove);
    objc_storeStrong(&self->_cachedStrokesBelow, self->_strokesBelow);
    [(PKSpaceInsertionController *)self _panGestureDidEnd:affordanceCopy];
    [(PKSpaceInsertionController *)self _dismissHandlesAndReselectExistingSelectionInDrawing:v12];
    self->_insertSpaceAffordancePanDidEnd = 1;
  }

  else if ([affordanceCopy state] == 5 || objc_msgSend(affordanceCopy, "state") == 4)
  {
    [(PKSpaceInsertionController *)self _panGestureDidCancelOrFail:affordanceCopy];
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

- (void)_dismissHandlesAndReselectExistingSelectionInDrawing:(id)drawing
{
  drawingCopy = drawing;
  selectionController = [(PKSpaceInsertionController *)self selectionController];
  v5 = selectionController;
  if (selectionController)
  {
    [*(selectionController + 144) commitSpacingResize];
  }

  strokes = [(PKStrokeSelection *)self->_strokeSelectionBeforeInsertingSpace strokes];
  array = [strokes array];
  v8 = [PKDrawing visibleStrokesFromStrokes:array inDrawing:drawingCopy];

  selectionController2 = [(PKSpaceInsertionController *)self selectionController];
  [(PKSelectionController *)selectionController2 _refreshExternalElementsInStrokeSelection:?];

  externalElements = [(PKStrokeSelection *)self->_strokeSelectionBeforeInsertingSpace externalElements];
  selectionController3 = [(PKSpaceInsertionController *)self selectionController];
  v12 = [MEMORY[0x1E695DFB8] orderedSetWithArray:v8];
  [(PKSelectionController *)selectionController3 selectStrokes:v12 externalElements:externalElements forSelectionType:self->_selectionTypeBeforeInsertingSpace inDrawing:drawingCopy];

  strokeSelectionBeforeInsertingSpace = self->_strokeSelectionBeforeInsertingSpace;
  self->_strokeSelectionBeforeInsertingSpace = 0;

  self->_shouldUseCachedStrokes = 0;
}

- (void)_panGestureDidBegin:(id)begin
{
  beginCopy = begin;
  v4 = 32;
  if (self->_dragBottomLollipopGR == beginCopy)
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

  uuid = [(PKDrawing *)self->_drawing uuid];
  v12 = [v10 attachmentForUUID:uuid];

  if (v12)
  {
    selectionController = [(PKSpaceInsertionController *)self selectionController];
    [(PKSelectionController *)selectionController _willBeginInsertSpaceInAttachment:v12];
  }

  -[PKSpaceInsertionController _blitStrokesToViewForSpaceInsertionType:withCompletion:](self, "_blitStrokesToViewForSpaceInsertionType:withCompletion:", [v5 insertionType], 0);
}

- (void)_panGestureDidChange:(id)change
{
  changeCopy = change;
  WeakRetained = objc_loadWeakRetained(&self->_selectionController);
  topView = [(PKSelectionController *)WeakRetained topView];

  [(PKSpaceInsertionController *)self _initalBufferBetweenLollipops];
  v8 = v7;
  dragBottomLollipopGR = self->_dragBottomLollipopGR;
  if (dragBottomLollipopGR == changeCopy)
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
  [(UIPanGestureRecognizer *)changeCopy translationInView:topView];
  v17 = v16 + self->_beginDragLocation.y;
  v18 = fmin(v17, v13);
  v19 = fmax(v17, v13);
  if (dragBottomLollipopGR == changeCopy)
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

  uuid = [(PKDrawing *)self->_drawing uuid];
  v37 = [v35 attachmentForUUID:uuid];

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

- (void)_panGestureDidEnd:(id)end
{
  endCopy = end;
  WeakRetained = objc_loadWeakRetained(&self->_selectionController);
  topView = [(PKSelectionController *)WeakRetained topView];

  [(PKSpaceInsertionController *)self _initalBufferBetweenLollipops];
  v7 = v6;
  dragBottomLollipopGR = self->_dragBottomLollipopGR;
  if (dragBottomLollipopGR == endCopy)
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
  [(UIPanGestureRecognizer *)endCopy translationInView:topView];
  v16 = v15;
  [(PKSpaceInsertionView *)v9 setIsDragging:0];
  v17 = v16 + self->_beginDragLocation.y;
  v18 = fmin(v17, v12);
  v19 = fmax(v17, v12);
  if (dragBottomLollipopGR == endCopy)
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
  selectionController = [(PKSpaceInsertionController *)self selectionController];
  [selectionController didEndModifyDrawing];
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
  topView = [(PKSelectionController *)WeakRetained topView];
  [topView frame];
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

- (void)didBeginCreatingSpaceWithLassoStroke:(id)stroke drawing:(id)drawing addDefaultSpace:(BOOL)space strokesAbove:(id)above strokesBelow:(id)below externalElements:(id)elements
{
  spaceCopy = space;
  strokeCopy = stroke;
  drawingCopy = drawing;
  aboveCopy = above;
  belowCopy = below;
  elementsCopy = elements;
  objc_storeStrong(&self->_drawing, drawing);
  objc_storeStrong(&self->_lassoStroke, stroke);
  objc_storeStrong(&self->_externalElements, elements);
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

  uuid = [drawingCopy uuid];
  v21 = [v19 attachmentForUUID:uuid];

  selectionController = [(PKSpaceInsertionController *)self selectionController];
  [selectionController didBeginModifyDrawing];

  if (v21)
  {
    selectionController2 = [(PKSpaceInsertionController *)self selectionController];
    [(PKSelectionController *)selectionController2 _willBeginInsertSpaceInAttachment:v21];
  }

  if (self->_shouldUseCachedStrokes)
  {
    v24 = MEMORY[0x1E695DFA0];
    array = [(NSOrderedSet *)self->_cachedStrokesAbove array];
    v26 = [PKDrawing visibleStrokesFromStrokes:array inDrawing:drawingCopy];
    v27 = [v24 orderedSetWithArray:v26];
    strokesAbove = self->_strokesAbove;
    self->_strokesAbove = v27;

    v29 = MEMORY[0x1E695DFA0];
    array2 = [(NSOrderedSet *)self->_cachedStrokesBelow array];
    v31 = [PKDrawing visibleStrokesFromStrokes:array2 inDrawing:drawingCopy];
    v32 = [v29 orderedSetWithArray:v31];
    strokesBelow = self->_strokesBelow;
    self->_strokesBelow = v32;
  }

  else
  {
    [(PKSpaceInsertionController *)self _sortStrokesAboveOrBelowWithStrokesAbove:aboveCopy strokesBelow:belowCopy];
  }

  if ([(NSMutableOrderedSet *)self->_strokesBelow count]|| [(NSOrderedSet *)self->_externalElements count])
  {
    self->_isCurrentlyAddingSpace = 1;
    v34 = objc_loadWeakRetained(&self->_selectionController);
    topView = [(PKSelectionController *)v34 topView];
    [topView frame];
    v37 = v36;
    v39 = v38;
    v41 = v40;

    +[PKDrawingAdjustmentKnob leftMargin];
    v43 = v42;
    selectionController3 = [(PKSpaceInsertionController *)self selectionController];
    topView2 = [(PKSelectionController *)selectionController3 topView];
    if ([topView2 effectiveUserInterfaceLayoutDirection])
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

  if (spaceCopy)
  {
    [(PKSpaceInsertionController *)self insertDefaultSpace:100.0];
  }
}

- (void)_addSpacingViewsWithFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
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
  topView = [(PKSelectionController *)WeakRetained topView];
  [topView addSubview:self->_tapToDismissView];

  _newPathRepresentation = [(PKStroke *)self->_lassoStroke _newPathRepresentation];
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
  v22 = CGPathCreateMutableCopyByTransformingPath(_newPathRepresentation, &transform);
  path = [(PKStroke *)self->_lassoStroke path];
  v24 = [path count];

  path2 = [(PKStroke *)self->_lassoStroke path];
  v26 = [path2 pointAtIndex:0];
  v27 = v9;
  [v26 location];
  v29 = v28;
  v31 = v30;

  path3 = [(PKStroke *)self->_lassoStroke path];
  v33 = [path3 pointAtIndex:v24 - 1];
  [v33 location];
  v35 = v34;
  v37 = v36;

  v65 = v27;
  if (v29 >= v35)
  {
    selectionController = [(PKSpaceInsertionController *)self selectionController];
    v39 = x;
    v40 = width;
    topView2 = [(PKSelectionController *)selectionController topView];
    if ([topView2 effectiveUserInterfaceLayoutDirection])
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
    selectionController = [(PKSpaceInsertionController *)self selectionController];
    v39 = x;
    v40 = width;
    topView2 = [(PKSelectionController *)selectionController topView];
    if ([topView2 effectiveUserInterfaceLayoutDirection])
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
  topView3 = [(PKSelectionController *)v56 topView];
  [topView3 addSubview:self->_topInsertionView];

  v58 = [[PKSpaceInsertionView alloc] initWithFrame:1 insertionType:v22 path:v39 handleLocation:v65 * 0.5 + v50 + -15.0 scale:v40, v51, v48, v49, v66];
  bottomInsertionView = self->_bottomInsertionView;
  self->_bottomInsertionView = v58;

  v60 = [objc_alloc(MEMORY[0x1E69DCD28]) initWithTarget:self action:sel__dragLollipop_];
  dragBottomLollipopGR = self->_dragBottomLollipopGR;
  self->_dragBottomLollipopGR = v60;

  [(PKSpaceInsertionView *)self->_bottomInsertionView addGestureRecognizer:self->_dragBottomLollipopGR];
  v62 = objc_loadWeakRetained(&self->_selectionController);
  topView4 = [(PKSelectionController *)v62 topView];
  [topView4 addSubview:self->_bottomInsertionView];

  CGPathRelease(_newPathRepresentation);
  CGPathRelease(v22);
}

- (void)projectPath:(CGPath *)path toEndOfFrame:(CGRect)frame
{
  width = frame.size.width;
  CurrentPoint = CGPathGetCurrentPoint(path);
  __p = 0;
  v18 = 0;
  v19 = 0;
  PKPointsFromPath(path, &__p, 1.79769313e308, 0.0);
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
    CGPathAddLineToPoint(path, 0, width, CurrentPoint.y);
  }

  else
  {
    CGPathAddQuadCurveToPoint(path, 0, width * 0.5 + CurrentPoint.x * 0.5, CurrentPoint.y + (width * 0.5 + CurrentPoint.x * 0.5 - CurrentPoint.x) * (v13 / v10), width, (CurrentPoint.y + CurrentPoint.y + (width * 0.5 + CurrentPoint.x * 0.5 - CurrentPoint.x) * (v13 / v10)) * 0.5);
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

- (void)_sortStrokesAboveOrBelowWithStrokesAbove:(id)above strokesBelow:(id)below
{
  v94 = *MEMORY[0x1E69E9840];
  aboveCopy = above;
  belowCopy = below;
  orderedSet = [MEMORY[0x1E695DFA0] orderedSet];
  strokesAbove = self->_strokesAbove;
  self->_strokesAbove = orderedSet;

  orderedSet2 = [MEMORY[0x1E695DFA0] orderedSet];
  strokesBelow = self->_strokesBelow;
  self->_strokesBelow = orderedSet2;

  if (aboveCopy)
  {
    v10 = self->_strokesAbove;
    array = [aboveCopy array];
    v12 = [PKDrawing visibleStrokesFromStrokes:array inDrawing:self->_drawing];
    [(NSMutableOrderedSet *)v10 addObjectsFromArray:v12];
  }

  if (belowCopy)
  {
    v13 = self->_strokesBelow;
    array2 = [belowCopy array];
    v15 = [PKDrawing visibleStrokesFromStrokes:array2 inDrawing:self->_drawing];
    [(NSMutableOrderedSet *)v13 addObjectsFromArray:v15];
  }

  WeakRetained = objc_loadWeakRetained(&self->_selectionController);
  topView = [(PKSelectionController *)WeakRetained topView];
  [topView frame];
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
        if (([belowCopy containsObject:v29] & 1) == 0 && (objc_msgSend(aboveCopy, "containsObject:", v29) & 1) == 0)
        {
          v30 = [v29 ink];
          identifier = [v30 identifier];
          if ([identifier isEqual:@"com.apple.ink.lasso"])
          {
          }

          else
          {
            v32 = [v29 ink];
            identifier2 = [v32 identifier];
            v34 = [identifier2 isEqual:@"com.apple.ink.generationtool"];

            if ((v34 & 1) == 0)
            {
              v35 = objc_loadWeakRetained(&self->_selectionController);
              topView2 = [(PKSelectionController *)v35 topView];
              [topView2 frame];
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

- (void)_makeSpaceWithOffset:(double)offset spaceInsertionType:(unint64_t)type
{
  [(PKSpaceInsertionController *)self initTopAndBottomSelectionIfNecessary];
  v7 = self->_drawing;
  if (type == 1)
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
  [(PKSpaceInsertionController *)self offsetInStrokeSpaceFromViewOffset:v7 inDrawing:offset];
  v11 = v10;
  WeakRetained = objc_loadWeakRetained(&self->_selectionController);
  v27[0] = MEMORY[0x1E69E9820];
  v27[1] = 3221225472;
  v27[2] = __70__PKSpaceInsertionController__makeSpaceWithOffset_spaceInsertionType___block_invoke;
  v27[3] = &unk_1E82D6388;
  v27[4] = self;
  v13 = [(PKSelectionController *)WeakRetained applySpaceInsertionWithStrokeSelection:v9 inDrawing:v7 offset:v27 completion:v11];

  self->_didMoveStrokes = 1;
  if (type == 1 || self->_topHandleRemovesWhitespace)
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

  uuid = [(PKDrawing *)self->_drawing uuid];
  v23 = [v21 attachmentForUUID:uuid];

  if (v23)
  {
    selectionController = [(PKSpaceInsertionController *)self selectionController];
    externalElements = [(PKSpaceInsertionController *)self externalElements];
    [(PKSelectionController *)selectionController _didEndDraggingExternalElements:externalElements inAttachment:v23];

    selectionController2 = [(PKSpaceInsertionController *)self selectionController];
    [(PKSelectionController *)selectionController2 _didEndInsertSpaceInAttachment:v23];
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

- (void)_temporarilyShiftStrokesWithOffset:(double)offset spaceInsertionType:(unint64_t)type
{
  if (type == 1)
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
  [v7 setFrame:{x, y + offset}];
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

  uuid = [(PKDrawing *)self->_drawing uuid];
  v14 = [v12 attachmentForUUID:uuid];

  if (v14)
  {
    [v14 drawingTransform];
    CGAffineTransformInvert(&v24, &v23);
    b = v24.b;
    d = v24.d;
    ty = v24.ty;
    selectionController = [(PKSpaceInsertionController *)self selectionController];
    v19 = ty + d * offset + b * 0.0;
    [(PKSelectionController *)selectionController _didMoveInsertSpace:v14 inAttachment:v19];

    selectionController2 = [(PKSpaceInsertionController *)self selectionController];
    externalElements = [(PKSpaceInsertionController *)self externalElements];
    v22 = *(MEMORY[0x1E695EFD0] + 16);
    *&v23.a = *MEMORY[0x1E695EFD0];
    *&v23.c = v22;
    *&v23.tx = *(MEMORY[0x1E695EFD0] + 32);
    CGAffineTransformTranslate(&v24, &v23, 0.0, v19);
    [(PKSelectionController *)selectionController2 _didDragExternalElements:externalElements withTransform:&v24 inAttachment:v14];
  }
}

- (void)insertDefaultSpace:(double)space
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __49__PKSpaceInsertionController_insertDefaultSpace___block_invoke;
  v3[3] = &unk_1E82D83D0;
  v3[4] = self;
  *&v3[5] = space;
  [(PKSpaceInsertionController *)self _blitStrokesToViewForSpaceInsertionType:1 withCompletion:v3];
}

- (void)shiftStrokesWithOffset:(double)offset
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

  uuid = [(PKDrawing *)self->_drawing uuid];
  v23 = [v21 attachmentForUUID:uuid];

  v24 = MEMORY[0x1E69DD250];
  v30[0] = MEMORY[0x1E69E9820];
  v30[1] = 3221225472;
  v30[2] = __53__PKSpaceInsertionController_shiftStrokesWithOffset___block_invoke;
  v30[3] = &unk_1E82DC458;
  v30[4] = self;
  offsetCopy = offset;
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
  *&v29[5] = offset;
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

- (void)_blitStrokesToViewForSpaceInsertionType:(unint64_t)type withCompletion:(id)completion
{
  completionCopy = completion;
  [(PKSpaceInsertionController *)self initTopAndBottomSelectionIfNecessary];
  if (type == 1)
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
  strokes = [v9 strokes];
  v12 = [strokes count];

  if (!v12)
  {
    v16 = 1;
    if (!completionCopy)
    {
      goto LABEL_20;
    }

    goto LABEL_18;
  }

  strokes2 = [v9 strokes];
  v14 = [(PKSpaceInsertionController *)self _visibleStrokesOnPage:strokes2];

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
    drawing = [(PKSpaceInsertionController *)self drawing];
    v23 = objc_alloc(objc_opt_class());
    array = [v14 array];
    drawing2 = [(PKSpaceInsertionController *)self drawing];
    v48 = [v23 initWithStrokes:array fromDrawing:drawing2];

    mainScreen = [MEMORY[0x1E69DCEB0] mainScreen];
    [mainScreen scale];
    v28 = v27;

    [(PKStrokeSelection *)v50 boundsWithoutLasso];
    v30 = v29;
    v32 = v31;
    v34 = v33;
    v36 = v35;
    selectionController = [(PKSpaceInsertionController *)self selectionController];
    v38 = selectionController;
    if (selectionController)
    {
      v39 = objc_loadWeakRetained((selectionController + 120));
    }

    else
    {
      v39 = 0;
    }

    _sixChannelBlendingIsActive = [v39 _sixChannelBlendingIsActive];

    selectionController2 = [(PKSpaceInsertionController *)self selectionController];
    v42 = selectionController2;
    if (selectionController2)
    {
      v43 = objc_loadWeakRetained((selectionController2 + 120));
    }

    else
    {
      v43 = 0;
    }

    isExtendedDynamicRangeRenderingActive = [v43 isExtendedDynamicRangeRenderingActive];

    [v10 setupWithDrawing:v49 imageSize:_sixChannelBlendingIsActive scale:isExtendedDynamicRangeRenderingActive strokeSpaceClipRect:v34 sixChannel:v36 extendedDynamicRange:{v28, v30, v32, v34, v36}];
    v45 = objc_loadWeakRetained(&self->_selectionController);
    topView = [(PKSelectionController *)v45 topView];
    [topView addSubview:v10];

    v47 = objc_loadWeakRetained(&self->_selectionController);
    [(PKSelectionController *)v47 hideStrokes:v9 inDrawing:self->_drawing];

    if (completionCopy)
    {
      completionCopy[2](completionCopy);
    }
  }

  if (completionCopy)
  {
LABEL_18:
    if (v16)
    {
      completionCopy[2](completionCopy);
    }
  }

LABEL_20:
}

- (id)_visibleStrokesOnPage:(id)page
{
  pageCopy = page;
  WeakRetained = objc_loadWeakRetained(&self->_selectionController);
  v6 = [(PKSelectionController *)WeakRetained _visibleStrokesWithinExtendedBounds:pageCopy forDrawing:self->_drawing];

  return v6;
}

- (double)offsetInStrokeSpaceFromViewOffset:(double)offset inDrawing:(id)drawing
{
  drawingCopy = drawing;
  x = self->_beginDragLocation.x;
  y = self->_beginDragLocation.y;
  WeakRetained = objc_loadWeakRetained(&self->_selectionController);
  [(PKSelectionController *)WeakRetained _pointInStrokeSpace:drawingCopy inDrawing:x, y];
  v11 = v10;

  v12 = objc_loadWeakRetained(&self->_selectionController);
  [(PKSelectionController *)v12 _pointInStrokeSpace:drawingCopy inDrawing:x + 0.0, y + offset];
  v14 = v13;

  return v14 - v11;
}

- (void)fetchStrokesAmbiguouslyBelowAndAboveInsertSpaceHandleWithStrokes:(id)strokes inDrawing:(id)drawing completion:(id)completion
{
  strokesCopy = strokes;
  drawingCopy = drawing;
  completionCopy = completion;
  selectionController = [(PKSpaceInsertionController *)self selectionController];
  v11 = selectionController;
  if (selectionController)
  {
    WeakRetained = objc_loadWeakRetained((selectionController + 120));
  }

  else
  {
    WeakRetained = 0;
  }

  uuid = [drawingCopy uuid];
  v14 = [WeakRetained attachmentForUUID:uuid];

  if (v14)
  {
    [v14 fetchStrokesAmbiguouslyBelowAndAboveInsertSpaceHandleWithStrokes:strokesCopy completion:completionCopy];
  }
}

- (PKSelectionController)selectionController
{
  WeakRetained = objc_loadWeakRetained(&self->_selectionController);

  return WeakRetained;
}

@end