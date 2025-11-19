@interface IMGridView
- (BKLibraryDragAndDropDelegate)dragAndDropDelegate;
- (BOOL)canDeleteCellAtIndex:(int64_t)a3;
- (BOOL)dropInteraction:(id)a3 canHandleSession:(id)a4;
- (CGPoint)originForCellAtX:(int64_t)a3 Y:(int64_t)a4;
- (CGRect)rectForCellAtIndex:(int64_t)a3;
- (CGSize)cellSize;
- (CGSize)cellSpacing;
- (CGSize)minimumGridSpacing;
- (IMGridView)init;
- (IMGridView)initWithCoder:(id)a3;
- (IMGridView)initWithFrame:(CGRect)a3;
- (IMGridViewCell)grabbedCell;
- (IMGridViewDataSource)dataSource;
- (IMGridViewDelegate)delegate;
- (UIEdgeInsets)gridInset;
- (UIEdgeInsets)visibleRegionInsets;
- (UIView)pendingCancelView;
- (UIView)pendingDropView;
- (_NSRange)rangeOfVisibleCells;
- (id)_arrayForUpdateAction:(int)a3;
- (id)_cellWithUniqueIdentifier:(id)a3;
- (id)_dragInteraction:(id)a3 itemsForSession:(id)a4 atPoint:(CGPoint)a5;
- (id)_dropOperationForInteraction:(id)a3 session:(id)a4;
- (id)_installNewCellAtIndex:(int64_t)a3;
- (id)_reuseArrayForCell:(id)a3;
- (id)_reuseArrayForIdentifier:(id)a3;
- (id)cellAtPoint:(CGPoint)a3 ensureSelectionRect:(BOOL)a4;
- (id)cellForIndex:(int64_t)a3;
- (id)dequeueReusableCellWithIdentifier:(id)a3;
- (id)dragInteraction:(id)a3 itemsForAddingToSession:(id)a4 withTouchAtPoint:(CGPoint)a5;
- (id)dragInteraction:(id)a3 itemsForBeginningSession:(id)a4;
- (id)dragInteraction:(id)a3 previewForCancellingItem:(id)a4 withDefault:(id)a5;
- (id)dragInteraction:(id)a3 previewForLiftingItem:(id)a4 session:(id)a5;
- (id)dragInteraction:(id)a3 sessionForAddingItems:(id)a4 withTouchAtPoint:(CGPoint)a5;
- (id)dropInteraction:(id)a3 previewForDroppingItem:(id)a4 withDefault:(id)a5;
- (id)dropInteraction:(id)a3 sessionDidUpdate:(id)a4;
- (id)rotationCellContainersForSize:(CGSize)a3;
- (id)visibleCellForIndex:(int64_t)a3;
- (id)visibleCells;
- (int64_t)_calculateNumberOfColumns;
- (int64_t)_dataSourceIndexFromReorderedIndex:(int64_t)a3;
- (int64_t)cellColumnsForSize:(CGSize)a3;
- (int64_t)indexForCell:(id)a3;
- (int64_t)indexForX:(int64_t)a3 Y:(int64_t)a4;
- (int64_t)numberOfColumnsForSize:(CGSize)a3;
- (int64_t)numberOfRowsForSize:(CGSize)a3;
- (int64_t)rowRangeStart;
- (unint64_t)numberOfColumns;
- (void)_autoscrollForCell:(id)a3;
- (void)_autoscrollTimerFired:(id)a3;
- (void)_cancelAutoscrollTimer;
- (void)_endCellAnimations;
- (void)_hideGrabbedCell;
- (void)_legalizeAutoscrollDistance;
- (void)_refreshCells;
- (void)_restoreGrabbedCell:(id)a3 toOriginalGrabIndex:(int64_t)a4;
- (void)_resumeReloads;
- (void)_setupGridViewCommon;
- (void)_showGrabbedCell;
- (void)_stopReordering:(BOOL)a3;
- (void)_swapGrabbedCell:(id)a3 withOtherCell:(id)a4;
- (void)_updateGrabbedCellLocation:(CGPoint)a3;
- (void)_updateItemAtIndex:(unint64_t)a3 updateAction:(int)a4;
- (void)animateDeletionOfCell:(id)a3;
- (void)arrangeVisibleCells:(_NSRange)a3;
- (void)beginUpdates;
- (void)cleanupAfterRotation;
- (void)cleanupGrabbedCell;
- (void)dealloc;
- (void)deleteCellDidAnimate;
- (void)dragInteraction:(id)a3 item:(id)a4 willAnimateCancelWithAnimator:(id)a5;
- (void)dragInteraction:(id)a3 session:(id)a4 didEndWithOperation:(unint64_t)a5;
- (void)dragInteraction:(id)a3 session:(id)a4 willAddItems:(id)a5 forInteraction:(id)a6;
- (void)dragInteraction:(id)a3 session:(id)a4 willEndWithOperation:(unint64_t)a5;
- (void)dragInteraction:(id)a3 willAnimateLiftWithAnimator:(id)a4 session:(id)a5;
- (void)dropInteraction:(id)a3 item:(id)a4 willAnimateDropWithAnimator:(id)a5;
- (void)dropInteraction:(id)a3 performDrop:(id)a4;
- (void)dropInteraction:(id)a3 sessionDidEnter:(id)a4;
- (void)dropInteraction:(id)a3 sessionDidExit:(id)a4;
- (void)endUpdates;
- (void)hideCells;
- (void)invalidateNumberOfColumns;
- (void)layoutSubviews;
- (void)performRotationWithDuration:(double)a3;
- (void)prepareToRotateWithDestinationSize:(CGSize)a3;
- (void)reloadAllCells;
- (void)reloadData;
- (void)reuseCell:(id)a3;
- (void)scrollMakingTopmostRowContainCellAtIndex:(int64_t)a3 animated:(BOOL)a4;
- (void)scrollToCellAtIndex:(int64_t)a3 animated:(BOOL)a4;
- (void)setBounds:(CGRect)a3;
- (void)setDataSource:(id)a3;
- (void)setDelegate:(id)a3;
- (void)setEditing:(BOOL)a3;
- (void)setFrame:(CGRect)a3;
- (void)setGrabbedCell:(id)a3;
- (void)setGridViewHeader:(id)a3;
- (void)setHideFooterView:(BOOL)a3;
- (void)setTapToSelectMode:(BOOL)a3;
- (void)showCells;
- (void)touchesBegan:(id)a3 withEvent:(id)a4;
- (void)touchesCancelled:(id)a3 withEvent:(id)a4;
- (void)touchesEnded:(id)a3 withEvent:(id)a4;
- (void)touchesMoved:(id)a3 withEvent:(id)a4;
- (void)updateContentSize;
@end

@implementation IMGridView

- (void)_setupGridViewCommon
{
  v3 = objc_alloc_init(NSMutableArray);
  visibleCells = self->_visibleCells;
  self->_visibleCells = v3;

  v5 = objc_alloc_init(NSMutableDictionary);
  reusableCells = self->_reusableCells;
  self->_reusableCells = v5;

  v7 = objc_alloc_init(NSMutableArray);
  cellsForReuse = self->_cellsForReuse;
  self->_cellsForReuse = v7;

  *&self->_gridFlags |= 0x1000u;
  __asm { FMOV            V0.2D, #4.0 }

  self->_minimumGridSpacing = _Q0;
  self->_cellSize = vdupq_n_s64(0x4052C00000000000uLL);
  v14 = +[UIApplication jsa_sharedApplicationIfNotExtension];
  -[IMGridView setLayoutDirection:](self, "setLayoutDirection:", [v14 userInterfaceLayoutDirection]);

  [(IMGridView *)self setAlwaysBounceVertical:1];
  v18 = [[UIDragInteraction alloc] initWithDelegate:self];
  [v18 setEnabled:1];
  [(IMGridView *)self addInteraction:v18];
  v15 = [[UIDropInteraction alloc] initWithDelegate:self];
  [(IMGridView *)self addInteraction:v15];
  v16 = objc_alloc_init(NSMutableSet);
  draggedCellIDs = self->_draggedCellIDs;
  self->_draggedCellIDs = v16;
}

- (IMGridView)init
{
  v5.receiver = self;
  v5.super_class = IMGridView;
  v2 = [(IMGridView *)&v5 init];
  v3 = v2;
  if (v2)
  {
    [(IMGridView *)v2 setGrabTimerDelayEditing:0.08];
    [(IMGridView *)v3 setGrabTimerDelayNotEditing:0.4];
  }

  return v3;
}

- (IMGridView)initWithFrame:(CGRect)a3
{
  v6.receiver = self;
  v6.super_class = IMGridView;
  v3 = [(IMGridView *)&v6 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v4 = v3;
  if (v3)
  {
    [(IMGridView *)v3 _setupGridViewCommon];
  }

  return v4;
}

- (IMGridView)initWithCoder:(id)a3
{
  v6.receiver = self;
  v6.super_class = IMGridView;
  v3 = [(IMGridView *)&v6 initWithCoder:a3];
  v4 = v3;
  if (v3)
  {
    [(IMGridView *)v3 _setupGridViewCommon];
  }

  return v4;
}

- (void)dealloc
{
  [(NSTimer *)self->_autoscrollTimer invalidate];
  autoscrollTimer = self->_autoscrollTimer;
  self->_autoscrollTimer = 0;

  [(IMGridView *)self _cancelCellHighlight];
  v4.receiver = self;
  v4.super_class = IMGridView;
  [(IMGridView *)&v4 dealloc];
}

- (void)setDataSource:(id)a3
{
  obj = a3;
  WeakRetained = objc_loadWeakRetained(&self->_dataSource);

  v5 = obj;
  if (WeakRetained != obj)
  {
    objc_storeWeak(&self->_dataSource, obj);
    v5 = obj;
    *&self->_gridFlags |= 0x1000u;
  }
}

- (IMGridViewDelegate)delegate
{
  v4.receiver = self;
  v4.super_class = IMGridView;
  v2 = [(IMGridView *)&v4 delegate];

  return v2;
}

- (void)setDelegate:(id)a3
{
  v4 = a3;
  v5 = [(IMGridView *)self delegate];

  if (v5 != v4)
  {
    v17.receiver = self;
    v17.super_class = IMGridView;
    [(IMGridView *)&v17 setDelegate:v4];
    self->_gridFlags = (*&self->_gridFlags & 0xFFFFFFFE | objc_opt_respondsToSelector() & 1);
    if (objc_opt_respondsToSelector())
    {
      v6 = 2;
    }

    else
    {
      v6 = 0;
    }

    self->_gridFlags = (*&self->_gridFlags & 0xFFFFFFFD | v6);
    if (objc_opt_respondsToSelector())
    {
      v7 = 4;
    }

    else
    {
      v7 = 0;
    }

    self->_gridFlags = (*&self->_gridFlags & 0xFFFFFFFB | v7);
    if (objc_opt_respondsToSelector())
    {
      v8 = 8;
    }

    else
    {
      v8 = 0;
    }

    self->_gridFlags = (*&self->_gridFlags & 0xFFFFFFF7 | v8);
    if (objc_opt_respondsToSelector())
    {
      v9 = 16;
    }

    else
    {
      v9 = 0;
    }

    self->_gridFlags = (*&self->_gridFlags & 0xFFFFFFEF | v9);
    if (objc_opt_respondsToSelector())
    {
      v10 = 32;
    }

    else
    {
      v10 = 0;
    }

    self->_gridFlags = (*&self->_gridFlags & 0xFFFFFFDF | v10);
    if (objc_opt_respondsToSelector())
    {
      v11 = 64;
    }

    else
    {
      v11 = 0;
    }

    self->_gridFlags = (*&self->_gridFlags & 0xFFFFFFBF | v11);
    if (objc_opt_respondsToSelector())
    {
      v12 = 128;
    }

    else
    {
      v12 = 0;
    }

    self->_gridFlags = (*&self->_gridFlags & 0xFFFFFF7F | v12);
    if (objc_opt_respondsToSelector())
    {
      v13 = 256;
    }

    else
    {
      v13 = 0;
    }

    self->_gridFlags = (*&self->_gridFlags & 0xFFFFFEFF | v13);
    if (objc_opt_respondsToSelector())
    {
      v14 = 512;
    }

    else
    {
      v14 = 0;
    }

    self->_gridFlags = (*&self->_gridFlags & 0xFFFFFDFF | v14);
    if (objc_opt_respondsToSelector())
    {
      v15 = 1024;
    }

    else
    {
      v15 = 0;
    }

    self->_gridFlags = (*&self->_gridFlags & 0xFFFFFBFF | v15);
    if (objc_opt_respondsToSelector())
    {
      v16 = 2048;
    }

    else
    {
      v16 = 0;
    }

    self->_gridFlags = (*&self->_gridFlags & 0xFFFFF7FF | v16);
  }
}

- (void)setGridViewHeader:(id)a3
{
  v5 = a3;
  gridViewHeader = self->_gridViewHeader;
  if (gridViewHeader != v5)
  {
    v7 = v5;
    [(UIView *)gridViewHeader removeFromSuperview];
    objc_storeStrong(&self->_gridViewHeader, a3);
    if (v7)
    {
      gridViewHeader = [(IMGridView *)self addSubview:v7];
    }
  }

  _objc_release_x1(gridViewHeader);
}

- (int64_t)numberOfColumnsForSize:(CGSize)a3
{
  width = a3.width;
  [(IMGridView *)self gridInset:a3.width];
  v6 = width - v5;
  [(IMGridView *)self gridInset];
  return ((v6 - v7 + self->_minimumGridSpacing.width) / (self->_minimumGridSpacing.width + self->_cellSize.width));
}

- (int64_t)numberOfRowsForSize:(CGSize)a3
{
  height = a3.height;
  [(IMGridView *)self contentOffset];
  v6 = v5 - self->_gridInset.top;
  [(IMGridView *)self cellSpacing];
  v8 = v7 + self->_cellSize.height;
  numberOfItems = self->_numberOfItems;
  if (numberOfItems >= ((height + v6) / v8))
  {
    numberOfItems = ((height + v6) / v8);
  }

  return numberOfItems - ((v6 / v8) & ~((v6 / v8) >> 31));
}

- (int64_t)_calculateNumberOfColumns
{
  [(IMGridView *)self bounds];

  return [(IMGridView *)self cellColumnsForSize:v3, v4];
}

- (unint64_t)numberOfColumns
{
  if (self->_numberOfColumnsValid)
  {
    return self->_numberOfColumns;
  }

  result = [(IMGridView *)self _calculateNumberOfColumns];
  self->_numberOfColumns = result;
  self->_numberOfColumnsValid = 1;
  return result;
}

- (void)invalidateNumberOfColumns
{
  if (self->_numberOfColumnsValid)
  {
    self->_numberOfColumnsValid = 0;
    [(IMGridView *)self setNeedsLayout];
  }
}

- (CGSize)cellSpacing
{
  v3 = [(IMGridView *)self numberOfColumns];
  [(IMGridView *)self bounds];
  v5 = v4;
  [(IMGridView *)self gridInset];
  v7 = v6;
  [(IMGridView *)self gridInset];
  v9 = 0.0;
  if (v3 >= 2)
  {
    v9 = (v5 - v7 - v8 - self->_cellSize.width * v3) / (v3 - 1);
  }

  height = self->_minimumGridSpacing.height;
  result.height = height;
  result.width = v9;
  return result;
}

- (_NSRange)rangeOfVisibleCells
{
  v2 = 0x7FFFFFFFFFFFFFFFLL;
  if (self->_numberOfItems)
  {
    [(IMGridView *)self bounds];
    v6 = v4 + -30.0 - self->_gridInset.top;
    v7 = v5 + 60.0 + v6;
    [(IMGridView *)self cellSpacing];
    v9 = v8 + self->_cellSize.height;
    v10 = (v6 / v9);
    v11 = v10 & ~(v10 >> 31);
    v12 = (v7 / v9);
    if (self->_numberOfItems >= v12)
    {
      numberOfItems = v12;
    }

    else
    {
      numberOfItems = self->_numberOfItems;
    }

    v14 = [(IMGridView *)self numberOfColumns];
    v15 = (-(v6 - (v11 + 1) * v9) / v9 * v14);
    if (v10 <= 0)
    {
      v15 = 0;
    }

    v16 = v14 * v11 - v15;
    v17 = self->_numberOfItems;
    if (v17 >= (numberOfItems + 2) * v14)
    {
      v17 = (numberOfItems + 2) * v14;
    }

    v18 = v17 <= v16;
    v19 = v17 - v16;
    if (!v18)
    {
      v2 = v16;
    }

    v20 = v19 & ~(v19 >> 63);
  }

  else
  {
    v20 = 0;
  }

  v21 = v2;
  result.length = v20;
  result.location = v21;
  return result;
}

- (id)visibleCells
{
  v2 = [(NSMutableArray *)self->_visibleCells copy];

  return v2;
}

- (CGRect)rectForCellAtIndex:(int64_t)a3
{
  v5 = [(IMGridView *)self numberOfColumns];
  if (v5 < 1)
  {
    x = CGRectNull.origin.x;
    y = CGRectNull.origin.y;
    width = CGRectNull.size.width;
    height = CGRectNull.size.height;
  }

  else
  {
    v6 = a3 / v5;
    v7 = a3 % v5;
    [(IMGridView *)self cellSpacing];
    v9 = v8;
    v11 = v10;
    if ([(IMGridView *)self layoutDirection])
    {
      [(IMGridView *)self bounds];
      v12 = CGRectGetWidth(v17);
      width = self->_cellSize.width;
      x = v12 - self->_gridInset.right - round((v9 + width) * v7) - width;
    }

    else
    {
      width = self->_cellSize.width;
      x = self->_gridInset.left + round((v9 + width) * v7);
    }

    height = self->_cellSize.height;
    y = self->_gridInset.top + round((v11 + height) * v6);
  }

  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (id)visibleCellForIndex:(int64_t)a3
{
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = self->_visibleCells;
  v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v14;
    while (2)
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v14 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v13 + 1) + 8 * i);
        if ([(IMGridView *)self indexForCell:v10, v13]== a3)
        {
          v11 = v10;
          goto LABEL_11;
        }
      }

      v7 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
      if (v7)
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

- (id)cellForIndex:(int64_t)a3
{
  if (a3 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v4 = 0;
  }

  else
  {
    [(IMGridView *)self layoutIfNeeded];
    v4 = [(IMGridView *)self visibleCellForIndex:a3];
  }

  return v4;
}

- (int64_t)indexForCell:(id)a3
{
  if (a3)
  {
    return [a3 tag] - 10000;
  }

  else
  {
    return 0x7FFFFFFFFFFFFFFFLL;
  }
}

- (void)setBounds:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v16.receiver = self;
  v16.super_class = IMGridView;
  [(IMGridView *)&v16 bounds];
  v18.origin.x = v8;
  v18.origin.y = v9;
  v18.size.width = v10;
  v18.size.height = v11;
  v17.origin.x = x;
  v17.origin.y = y;
  v17.size.width = width;
  v17.size.height = height;
  if (!CGRectEqualToRect(v17, v18))
  {
    [(IMGridView *)self bounds];
    if (width != v13 || height != v12)
    {
      [(IMGridView *)self invalidateNumberOfColumns];
    }

    v15.receiver = self;
    v15.super_class = IMGridView;
    [(IMGridView *)&v15 setBounds:x, y, width, height];
    *&self->_gridFlags |= 0x20000u;
    [(IMGridView *)self setNeedsLayout];
  }
}

- (void)setFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  *&self->_gridFlags &= ~0x20000u;
  [(IMGridView *)self frame];
  if (width != v9 || height != v8)
  {
    [(IMGridView *)self invalidateNumberOfColumns];
  }

  v11.receiver = self;
  v11.super_class = IMGridView;
  [(IMGridView *)&v11 setFrame:x, y, width, height];
}

- (void)arrangeVisibleCells:(_NSRange)a3
{
  length = a3.length;
  location = a3.location;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v6 = self->_visibleCells;
  v7 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v28 objects:v32 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v29;
    do
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v29 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v28 + 1) + 8 * i);
        v12 = [(IMGridView *)self indexForCell:v11, v28];
        if (v12 >= location && v12 - location < length)
        {
          v14 = v12;
          WeakRetained = objc_loadWeakRetained(&self->_grabbedCell);

          if (v11 != WeakRetained)
          {
            [(IMGridView *)self rectForCellAtIndex:v14];
            v17 = v16;
            v19 = v18;
            v21 = v20;
            v23 = v22;
            [v11 frame];
            v34.origin.x = v24;
            v34.origin.y = v25;
            v34.size.width = v26;
            v34.size.height = v27;
            v33.origin.x = v17;
            v33.origin.y = v19;
            v33.size.width = v21;
            v33.size.height = v23;
            if (!CGRectEqualToRect(v33, v34))
            {
              [v11 setFrame:{v17, v19, v21, v23}];
            }
          }
        }
      }

      v8 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v28 objects:v32 count:16];
    }

    while (v8);
  }
}

- (void)layoutSubviews
{
  v52.receiver = self;
  v52.super_class = IMGridView;
  [(IMGridView *)&v52 layoutSubviews];
  gridFlags = self->_gridFlags;
  if ((*&gridFlags & 0x2000) == 0)
  {
    if ((*&gridFlags & 0x1000) != 0)
    {
      [(IMGridView *)self reloadData];
    }

    v4 = [(NSMutableArray *)self->_cellsForReuse copy];
    [(NSMutableArray *)self->_cellsForReuse removeAllObjects];
    v50 = 0u;
    v51 = 0u;
    v48 = 0u;
    v49 = 0u;
    v5 = v4;
    v6 = [v5 countByEnumeratingWithState:&v48 objects:v54 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v49;
      do
      {
        for (i = 0; i != v7; i = i + 1)
        {
          if (*v49 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v10 = *(*(&v48 + 1) + 8 * i);
          [v10 setIgnoreChangesToHidden:0];
          [v10 prepareForReuse];
          v11 = [(IMGridView *)self _reuseArrayForCell:v10];
          [v11 addObject:v10];
        }

        v7 = [v5 countByEnumeratingWithState:&v48 objects:v54 count:16];
      }

      while (v7);
    }

    v12 = [(IMGridView *)self rangeOfVisibleCells];
    v14 = v13;
    v15 = [(NSMutableArray *)self->_visibleCells copy];
    v44 = 0u;
    v45 = 0u;
    v46 = 0u;
    v47 = 0u;
    v16 = v15;
    v17 = [v16 countByEnumeratingWithState:&v44 objects:v53 count:16];
    if (v17)
    {
      v18 = v17;
      v19 = *v45;
      do
      {
        for (j = 0; j != v18; j = j + 1)
        {
          if (*v45 != v19)
          {
            objc_enumerationMutation(v16);
          }

          v21 = *(*(&v44 + 1) + 8 * j);
          v22 = [(IMGridView *)self indexForCell:v21, v44];
          if (v22 < v12 || v22 - v12 >= v14)
          {
            [(IMGridView *)self reuseCell:v21];
          }
        }

        v18 = [v16 countByEnumeratingWithState:&v44 objects:v53 count:16];
      }

      while (v18);
    }

    if ((*(&self->_gridFlags + 2) & 2) == 0)
    {
      [(IMGridView *)self arrangeVisibleCells:v12, v14];
    }

    v24 = objc_autoreleasePoolPush();
    if (v12 < &v12[v14])
    {
      do
      {
        v25 = [(IMGridView *)self visibleCellForIndex:v12, v44];
        if (!v25)
        {
          v26 = [(IMGridView *)self _installNewCellAtIndex:v12];
        }

        ++v12;
        --v14;
      }

      while (v14);
    }

    objc_autoreleasePoolPop(v24);
    if ((*(&self->_gridFlags + 2) & 2) == 0)
    {
      v27 = [(IMGridView *)self footerView];

      if (v27)
      {
        v28 = [(IMGridView *)self numberOfRows];
        [(IMGridView *)self cellSpacing];
        v30 = v29;
        [(IMGridView *)self cellSize];
        v32 = v30 + v31;
        [(IMGridView *)self gridInset];
        v34 = v33 + v28 * v32;
        [(IMGridView *)self bounds];
        v36 = v35;
        v37 = [(IMGridView *)self footerView];
        [v37 bounds];
        v39 = v38;
        v40 = [(IMGridView *)self footerView];
        [v40 setFrame:{0.0, v34, v36, v39}];
      }
    }

    v41 = self->_gridFlags;
    if ((*&v41 & 0x20000) == 0)
    {
      [(IMGridView *)self updateContentSize];
      v41 = self->_gridFlags;
    }

    self->_gridFlags = (*&v41 & 0xFFFDFFFF);
    if (self->_grabbedCellUniqueID)
    {
      WeakRetained = objc_loadWeakRetained(&self->_grabbedCell);

      if (!WeakRetained)
      {
        v43 = [(IMGridView *)self _cellWithUniqueIdentifier:self->_grabbedCellUniqueID];
        objc_storeWeak(&self->_grabbedCell, v43);
      }
    }
  }
}

- (void)updateContentSize
{
  [(IMGridView *)self cellSpacing];
  v4 = v3;
  v5 = [(IMGridView *)self numberOfRows];
  [(IMGridView *)self bounds];
  x = v18.origin.x;
  y = v18.origin.y;
  width = v18.size.width;
  height = v18.size.height;
  v10 = CGRectGetWidth(v18);
  v11 = self->_gridInset.top + self->_gridInset.bottom - (v4 - v5 * (v4 + self->_cellSize.height));
  if (self->_gridViewHeader)
  {
    v19.origin.x = x;
    v19.origin.y = y;
    v19.size.width = width;
    v19.size.height = height;
    v12 = CGRectGetHeight(v19);
    [(UIView *)self->_gridViewHeader frame];
    v13 = v12 + CGRectGetHeight(v20);
    if (v11 < v13)
    {
      v11 = v13;
    }
  }

  footerView = self->_footerView;
  if (footerView)
  {
    [(UIView *)footerView frame];
    v15 = CGRectGetHeight(v21);
    [(IMGridView *)self cellSpacing];
    v11 = v11 + v15 + v16;
  }

  [(IMGridView *)self setContentSize:v10, v11];
}

- (BOOL)canDeleteCellAtIndex:(int64_t)a3
{
  if ((*(&self->_gridFlags + 1) & 1) == 0 || [(IMGridView *)self tapToSelectMode])
  {
    return 0;
  }

  v6 = [(IMGridView *)self delegate];
  v7 = [v6 gridView:self canDeleteCellAtIndex:a3];

  return v7;
}

- (id)_installNewCellAtIndex:(int64_t)a3
{
  WeakRetained = objc_loadWeakRetained(&self->_grabbedCell);
  v6 = a3;
  if (WeakRetained)
  {
    v7 = [(IMGridView *)self indexForCell:WeakRetained];
    grabIndex = self->_grabIndex;
    if (grabIndex <= v7)
    {
      if (grabIndex >= v7 || grabIndex > a3 || v7 <= a3)
      {
        v6 = a3;
      }

      else
      {
        v6 = a3 + 1;
      }
    }

    else
    {
      v10 = v7 < a3 && grabIndex >= a3;
      v6 = a3 - v10;
    }
  }

  v13 = [(IMGridView *)self dataSource];
  v14 = [v13 gridView:self cellForIndex:v6];

  if (v14)
  {
    if (v14 != WeakRetained)
    {
      [(IMGridView *)self rectForCellAtIndex:a3];
      [v14 setFrame:?];
    }

    [v14 setCanDelete:{-[IMGridView canDeleteCellAtIndex:](self, "canDeleteCellAtIndex:", a3)}];
    [v14 setTag:a3 + 10000];
    [v14 setEditing:{-[IMGridView isEditing](self, "isEditing")}];
    [(NSMutableArray *)self->_visibleCells addObject:v14];
    v15 = [v14 superview];

    if (v15 != self)
    {
      [(IMGridView *)self addSubview:v14];
    }
  }

  return v14;
}

- (id)_reuseArrayForCell:(id)a3
{
  v4 = [a3 reuseIdentifier];
  if (v4)
  {
    v5 = v4;
  }

  else
  {
    v5 = &stru_2D2930;
  }

  v6 = [(IMGridView *)self _reuseArrayForIdentifier:v5];

  return v6;
}

- (id)_reuseArrayForIdentifier:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v5 = [(NSMutableDictionary *)self->_reusableCells objectForKey:v4];
    if (!v5)
    {
      v5 = +[NSMutableArray array];
      [(NSMutableDictionary *)self->_reusableCells setObject:v5 forKey:v4];
    }
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)reuseCell:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v6 = v4;
    WeakRetained = objc_loadWeakRetained(&self->_grabbedCell);

    if (WeakRetained != v6)
    {
      [(NSMutableArray *)self->_visibleCells removeObject:v6];
      [(NSMutableArray *)self->_cellsForReuse addObject:v6];
      v4 = [(IMGridView *)self setNeedsLayout];
    }
  }

  _objc_release_x1(v4);
}

- (id)dequeueReusableCellWithIdentifier:(id)a3
{
  v4 = [(IMGridView *)self _reuseArrayForIdentifier:a3];
  if ([v4 count])
  {
    v5 = [v4 objectAtIndex:0];
    [v4 removeObject:v5];
  }

  else
  {
    v5 = 0;
  }

  [v5 setIgnoreChangesToHidden:0];
  [v5 setHidden:self->_hidingCells];
  [v5 setIgnoreChangesToHidden:self->_hidingCells];

  return v5;
}

- (void)hideCells
{
  self->_hidingCells = 1;
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v2 = self->_visibleCells;
  v3 = [(NSMutableArray *)v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v9;
    do
    {
      for (i = 0; i != v4; i = i + 1)
      {
        if (*v9 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v8 + 1) + 8 * i);
        [v7 setHidden:{1, v8}];
        [v7 setIgnoreChangesToHidden:1];
      }

      v4 = [(NSMutableArray *)v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v4);
  }
}

- (void)showCells
{
  self->_hidingCells = 0;
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v2 = self->_visibleCells;
  v3 = [(NSMutableArray *)v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v9;
    do
    {
      for (i = 0; i != v4; i = i + 1)
      {
        if (*v9 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v8 + 1) + 8 * i);
        [v7 setIgnoreChangesToHidden:{0, v8}];
        [v7 setHidden:0];
      }

      v4 = [(NSMutableArray *)v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v4);
  }
}

- (void)reloadData
{
  [(IMGridView *)self _cancelAutoscrollTimer];
  if (self->_tableReloadingSuspendedCount < 1)
  {
    v3 = [(IMGridView *)self footerView];
    [v3 removeFromSuperview];

    v4 = [(IMGridView *)self delegate];
    if (objc_opt_respondsToSelector())
    {
      v5 = [v4 footerViewForGridView:self];
    }

    else
    {
      v5 = 0;
    }

    [(IMGridView *)self setFooterView:v5];
    v6 = [(IMGridView *)self footerView];

    if (v6)
    {
      v7 = [(IMGridView *)self footerView];
      [(IMGridView *)self addSubview:v7];

      hideFooterView = self->_hideFooterView;
      v9 = [(IMGridView *)self footerView];
      [v9 setHidden:hideFooterView];
    }

    [(IMGridView *)self setGrabbedCell:0];
    v10 = [(NSMutableArray *)self->_visibleCells copy];
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    v11 = v10;
    v12 = [v11 countByEnumeratingWithState:&v17 objects:v21 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v18;
      do
      {
        v15 = 0;
        do
        {
          if (*v18 != v14)
          {
            objc_enumerationMutation(v11);
          }

          [(IMGridView *)self reuseCell:*(*(&v17 + 1) + 8 * v15), v17];
          v15 = v15 + 1;
        }

        while (v13 != v15);
        v13 = [v11 countByEnumeratingWithState:&v17 objects:v21 count:16];
      }

      while (v13);
    }

    *&self->_gridFlags &= ~0x1000u;
    v16 = [(IMGridView *)self dataSource];
    self->_numberOfItems = [v16 numberOfCellsInGridView:self];

    [(IMGridView *)self setNeedsLayout];
  }

  else
  {
    *&self->_gridFlags |= 0x8000u;
  }
}

- (void)_resumeReloads
{
  v2 = self->_tableReloadingSuspendedCount - 1;
  self->_tableReloadingSuspendedCount = v2;
  if (!v2)
  {
    gridFlags = self->_gridFlags;
    if ((*&gridFlags & 0x8000) != 0)
    {
      self->_gridFlags = (*&gridFlags & 0xFFFF7FFF);
      [(IMGridView *)self reloadData];
    }
  }
}

- (void)scrollToCellAtIndex:(int64_t)a3 animated:(BOOL)a4
{
  if (a3 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v5 = a4;
    [(IMGridView *)self rectForCellAtIndex:?];
    v8 = v7;
    v10 = v9;
    v12 = v11;
    v14 = v13;
    [(IMGridView *)self layoutIfNeeded];

    [(IMGridView *)self scrollRectToVisible:v5 animated:v8, v10, v12, v14];
  }
}

- (void)scrollMakingTopmostRowContainCellAtIndex:(int64_t)a3 animated:(BOOL)a4
{
  if (a3 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v5 = a4;
    v8 = [(IMGridView *)self numberOfColumns];
    [(IMGridView *)self bounds];
    v11 = [(IMGridView *)self numberOfRowsForSize:v9, v10];
    v12 = [(IMGridView *)self numberOfRows];
    v13 = a3 / v8;
    if (v12 - a3 / v8 < v11)
    {
      v13 = (v12 - v11) & ~((v12 - v11) >> 63);
    }

    [(IMGridView *)self rectForCellAtIndex:v13 * v8];
    v15 = v14;
    [(IMGridView *)self contentOffset];
    v17 = v16;
    [(IMGridView *)self layoutIfNeeded];

    [(IMGridView *)self setContentOffset:v5 animated:v17, v15];
  }
}

- (id)_arrayForUpdateAction:(int)a3
{
  if (a3 == 2)
  {
    v3 = 192;
  }

  else if (a3 == 1)
  {
    v3 = 184;
  }

  else
  {
    if (a3)
    {
      v8 = 0;
      goto LABEL_11;
    }

    v3 = 176;
  }

  v4 = (&self->super.super.super.super.isa + v3);
  v5 = *(&self->super.super.super.super.isa + v3);
  if (!v5)
  {
    v6 = objc_alloc_init(NSMutableArray);
    v7 = *v4;
    *v4 = v6;

    v5 = *v4;
  }

  v8 = v5;
LABEL_11:

  return v8;
}

- (void)_updateItemAtIndex:(unint64_t)a3 updateAction:(int)a4
{
  v4 = *&a4;
  [(IMGridView *)self beginUpdates];
  v8 = [(IMGridView *)self _arrayForUpdateAction:v4];
  v7 = [[IMGridViewUpdateItem alloc] initWithAction:v4 forIndex:a3];
  [v8 addObject:v7];
  [(IMGridView *)self endUpdates];
}

- (void)_refreshCells
{
  [(IMGridView *)self reloadAllCells];

  [(IMGridView *)self setNeedsLayout];
}

- (void)reloadAllCells
{
  [(IMGridView *)self beginUpdates];
  *&self->_gridFlags |= 0x1000u;

  [(IMGridView *)self endUpdates];
}

- (void)deleteCellDidAnimate
{
  v3 = self->_deleteAnimationCount - 1;
  self->_deleteAnimationCount = v3;
  if (v3)
  {

    [(IMGridView *)self _resumeReloads];
  }

  else
  {
    [(NSMutableArray *)self->_cellsToDelete sortedArrayUsingSelector:"inverseCompareIndexes:"];
    v27 = 0u;
    v28 = 0u;
    v29 = 0u;
    obj = v30 = 0u;
    v19 = [obj countByEnumeratingWithState:&v27 objects:v32 count:16];
    if (v19)
    {
      v18 = *v28;
      do
      {
        for (i = 0; i != v19; i = i + 1)
        {
          if (*v28 != v18)
          {
            objc_enumerationMutation(obj);
          }

          v5 = *(*(&v27 + 1) + 8 * i);
          v6 = [v5 index];
          [(IMGridView *)self rangeOfVisibleCells];
          v23 = 0u;
          v24 = 0u;
          v25 = 0u;
          v26 = 0u;
          v7 = self->_visibleCells;
          v8 = [(NSMutableArray *)v7 countByEnumeratingWithState:&v23 objects:v31 count:16];
          if (v8)
          {
            v9 = v8;
            v20 = i;
            v10 = 0;
            v11 = *v24;
            do
            {
              for (j = 0; j != v9; j = j + 1)
              {
                if (*v24 != v11)
                {
                  objc_enumerationMutation(v7);
                }

                v13 = *(*(&v23 + 1) + 8 * j);
                if ([(IMGridView *)self indexForCell:v13]<= v6)
                {
                  v14 = [(IMGridView *)self indexForCell:v13];
                  if (v14 >= [v5 index])
                  {
                    v15 = v13;

                    v10 = v15;
                  }
                }

                else
                {
                  [v13 setTag:{objc_msgSend(v13, "tag") - 1}];
                }
              }

              v9 = [(NSMutableArray *)v7 countByEnumeratingWithState:&v23 objects:v31 count:16];
            }

            while (v9);

            if (v10)
            {
              [(IMGridView *)self reuseCell:v10];
            }

            i = v20;
          }

          else
          {

            v10 = 0;
          }

          --self->_numberOfItems;
        }

        v19 = [obj countByEnumeratingWithState:&v27 objects:v32 count:16];
      }

      while (v19);
    }

    cellsToDelete = self->_cellsToDelete;
    self->_cellsToDelete = 0;

    v22[0] = _NSConcreteStackBlock;
    v22[1] = 3221225472;
    v22[2] = sub_6F24C;
    v22[3] = &unk_2C7D40;
    v22[4] = self;
    v21[0] = _NSConcreteStackBlock;
    v21[1] = 3221225472;
    v21[2] = sub_6F290;
    v21[3] = &unk_2C99D8;
    v21[4] = self;
    [UIView animateWithDuration:v22 animations:v21 completion:0.3];
    [(IMGridView *)self layoutIfNeeded];
    [(IMGridView *)self layoutSubviews];
  }
}

- (void)_endCellAnimations
{
  v2 = self;
  gridFlags = self->_gridFlags;
  if ((*&gridFlags & 0x1000) != 0)
  {
    deleteItems = self->_deleteItems;
    self->_deleteItems = 0;

    insertItems = v2->_insertItems;
    v2->_insertItems = 0;

    reloadItems = v2->_reloadItems;
    v2->_reloadItems = 0;
  }

  v7 = [(NSMutableArray *)v2->_deleteItems count];
  if (([(NSMutableArray *)v2->_deleteItems count]|| [(NSMutableArray *)v2->_insertItems count]) && v2->_selectedCell)
  {
    [(IMGridView *)v2 _cancelCellHighlight];
    [(IMGridViewCell *)v2->_selectedCell setHighlighted:0];
    selectedCell = v2->_selectedCell;
    v2->_selectedCell = 0;
  }

  if ([(NSMutableArray *)v2->_deleteItems count])
  {
    v52[0] = _NSConcreteStackBlock;
    v52[1] = 3221225472;
    v52[2] = sub_6F768;
    v52[3] = &unk_2C7D40;
    v52[4] = v2;
    v51[0] = _NSConcreteStackBlock;
    v51[1] = 3221225472;
    v51[2] = sub_6F934;
    v51[3] = &unk_2C99D8;
    v51[4] = v2;
    [UIView animateWithDuration:v52 animations:v51 completion:0.2];
    v9 = 1;
  }

  else
  {
    v9 = (*&gridFlags >> 12) & 1;
  }

  if ([(NSMutableArray *)v2->_insertItems count]&& !v2->_deleteAnimationCount)
  {
    v34 = v7;
    [(NSMutableArray *)v2->_insertItems sortedArrayUsingSelector:"compareIndexes:"];
    v47 = 0u;
    v48 = 0u;
    v49 = 0u;
    obj = v50 = 0u;
    v38 = [obj countByEnumeratingWithState:&v47 objects:v55 count:16];
    if (v38)
    {
      v36 = *v48;
      v37 = v2;
      do
      {
        for (i = 0; i != v38; i = i + 1)
        {
          if (*v48 != v36)
          {
            objc_enumerationMutation(obj);
          }

          v11 = *(*(&v47 + 1) + 8 * i);
          v43 = 0u;
          v44 = 0u;
          v45 = 0u;
          v46 = 0u;
          v12 = v2->_visibleCells;
          v13 = [(NSMutableArray *)v12 countByEnumeratingWithState:&v43 objects:v54 count:16];
          if (v13)
          {
            v14 = v13;
            v15 = *v44;
            do
            {
              for (j = 0; j != v14; j = j + 1)
              {
                if (*v44 != v15)
                {
                  objc_enumerationMutation(v12);
                }

                v17 = *(*(&v43 + 1) + 8 * j);
                v18 = [v17 tag] - 10000;
                v19 = [v11 index];
                v20 = [v17 tag];
                if (v18 < v19)
                {
                  v21 = v20;
                }

                else
                {
                  v21 = v20 + 1;
                }

                [v17 setTag:v21];
              }

              v14 = [(NSMutableArray *)v12 countByEnumeratingWithState:&v43 objects:v54 count:16];
            }

            while (v14);
          }

          v2 = v37;
          ++v37->_numberOfItems;
          v22 = [(IMGridView *)v37 rangeOfVisibleCells];
          [(IMGridView *)v37 arrangeVisibleCells:v22, v23];
        }

        v38 = [obj countByEnumeratingWithState:&v47 objects:v55 count:16];
      }

      while (v38);
    }

    v24 = v2->_insertItems;
    v2->_insertItems = 0;

    v9 = 1;
    v7 = v34;
  }

  if ([(NSMutableArray *)v2->_reloadItems count]&& !v2->_deleteAnimationCount)
  {
    v25 = [(NSMutableArray *)v2->_reloadItems sortedArrayUsingSelector:"compareIndexes:"];
    v39 = 0u;
    v40 = 0u;
    v41 = 0u;
    v42 = 0u;
    v26 = [v25 countByEnumeratingWithState:&v39 objects:v53 count:16];
    if (v26)
    {
      v27 = v26;
      v28 = *v40;
      do
      {
        for (k = 0; k != v27; k = k + 1)
        {
          if (*v40 != v28)
          {
            objc_enumerationMutation(v25);
          }

          v30 = -[IMGridView visibleCellForIndex:](v2, "visibleCellForIndex:", [*(*(&v39 + 1) + 8 * k) index]);
          [(IMGridView *)v2 reuseCell:v30];
        }

        v27 = [v25 countByEnumeratingWithState:&v39 objects:v53 count:16];
      }

      while (v27);
    }

    v31 = v2->_reloadItems;
    v2->_reloadItems = 0;

    v32 = [(IMGridView *)v2 rangeOfVisibleCells];
    [(IMGridView *)v2 arrangeVisibleCells:v32, v33];
  }

  else if (!v9)
  {
    if (v7)
    {
      return;
    }

LABEL_44:
    [(IMGridView *)v2 _resumeReloads];
    return;
  }

  [(IMGridView *)v2 setNeedsLayout];
  if (!v7)
  {
    goto LABEL_44;
  }
}

- (void)beginUpdates
{
  updateCount = self->_updateCount;
  if (!updateCount)
  {
    [(IMGridView *)self _setupCellAnimations];
    updateCount = self->_updateCount;
  }

  self->_updateCount = updateCount + 1;
}

- (void)endUpdates
{
  updateCount = self->_updateCount;
  if (updateCount > 0 || (BCReportAssertionFailureWithMessage("/Library/Caches/com.apple.xbs/Sources/Alder/frameworks/BookCore/BookCore/Views/IMGridView.m", 1126, "[IMGridView endUpdates]", "_updateCount > 0", @"Unbalanced endUpdates call. _updateCount: %ld", v2, v3, v4, updateCount), updateCount = self->_updateCount, updateCount >= 1))
  {
    self->_updateCount = --updateCount;
  }

  if (!updateCount)
  {

    [(IMGridView *)self _endCellAnimations];
  }
}

- (int64_t)cellColumnsForSize:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  if ((*(&self->_gridFlags + 1) & 8) != 0)
  {
    v6 = [(IMGridView *)self delegate];
    v7 = [v6 gridView:self numberOfColumnsForSize:{width, height}];

    return v7;
  }

  else
  {

    return [(IMGridView *)self numberOfColumnsForSize:?];
  }
}

- (id)rotationCellContainersForSize:(CGSize)a3
{
  cellContainerMatrix = self->_cellContainerMatrix;
  if (!cellContainerMatrix)
  {
    height = a3.height;
    width = a3.width;
    [(IMGridView *)self bounds];
    v9 = [(IMGridView *)self cellColumnsForSize:v7, v8];
    v10 = [(IMGridView *)self cellColumnsForSize:width, height];
    if (v9 <= v10)
    {
      v11 = v10;
    }

    else
    {
      v11 = v9;
    }

    v12 = [[NSMutableArray alloc] initWithCapacity:6];
    v13 = self->_cellContainerMatrix;
    self->_cellContainerMatrix = v12;

    [(IMGridView *)self rectForCellAtIndex:0];
    v15 = v14;
    v17 = v16;
    v19 = v18;
    v21 = v20;
    for (i = 0; i != 6; ++i)
    {
      v23 = [[NSMutableArray alloc] initWithCapacity:v11 + 1];
      if ((v11 & 0x8000000000000000) == 0)
      {
        v24 = -1;
        do
        {
          v25 = [[IMCellRotationContainer alloc] initWithFrame:v15, v17, v19, v21];
          [v23 addObject:v25];

          ++v24;
        }

        while (v11 > v24);
      }

      [(NSMutableArray *)self->_cellContainerMatrix addObject:v23];
    }

    cellContainerMatrix = self->_cellContainerMatrix;
  }

  return cellContainerMatrix;
}

- (int64_t)indexForX:(int64_t)a3 Y:(int64_t)a4
{
  [(IMGridView *)self bounds];
  v9 = [(IMGridView *)self cellColumnsForSize:v7, v8];
  if (v9 <= a3)
  {
    return 0x7FFFFFFFFFFFFFFFLL;
  }

  else
  {
    return a3 + v9 * a4;
  }
}

- (CGPoint)originForCellAtX:(int64_t)a3 Y:(int64_t)a4
{
  [(IMGridView *)self rectForCellAtIndex:0];
  v8 = v7;
  v10 = v9;
  [(IMGridView *)self cellSpacing];
  v12 = v11 + v8;
  [(IMGridView *)self cellSpacing];
  v14 = v13;
  if ([(IMGridView *)self layoutDirection])
  {
    [(IMGridView *)self bounds];
    v15 = CGRectGetWidth(v19) - (v8 + self->_gridInset.right + (a3 * v12));
  }

  else
  {
    v15 = self->_gridInset.left + (a3 * v12);
  }

  v16 = v10 + v14;
  v17 = self->_gridInset.top + (a4 * v16);
  result.y = v17;
  result.x = v15;
  return result;
}

- (int64_t)rowRangeStart
{
  [(IMGridView *)self contentOffset];
  v4 = v3 - self->_gridInset.top;
  [(IMGridView *)self cellSpacing];
  v6 = (v4 / (v5 + self->_cellSize.height));
  return v6 & ~(v6 >> 31);
}

- (void)prepareToRotateWithDestinationSize:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  if (([(IMGridView *)self isDecelerating]& 1) == 0)
  {
    [(IMGridView *)self setHideFooterView:1];
    [(IMGridView *)self contentOffset];
    self->_oldContentOffset.x = v6;
    self->_oldContentOffset.y = v7;
    *&self->_gridFlags |= 0x2000u;
    v19 = [(IMGridView *)self rotationCellContainersForSize:width, height];
    v18 = [v19 count];
    if (v18 >= 1)
    {
      for (i = 0; i != v18; ++i)
      {
        v9 = [v19 objectAtIndex:{i, v18}];
        v10 = [v9 count];
        if (v10 >= 1)
        {
          v11 = v10;
          for (j = 0; j != v11; ++j)
          {
            v13 = [v9 objectAtIndex:j];
            v14 = [(IMGridView *)self indexForX:j Y:&i[[(IMGridView *)self rowRangeStart]]];
            if (v14 != 0x7FFFFFFFFFFFFFFFLL)
            {
              v15 = v14;
              if (v14 < self->_numberOfItems)
              {
                v16 = [(IMGridView *)self cellForIndex:v14];
                if (v16)
                {
                  v17 = v16;
                  [v13 setStartCell:v16];
                  [(NSMutableArray *)self->_visibleCells removeObject:v17];
                }
              }
            }

            [(IMGridView *)self originForCellAtX:j Y:&i[[(IMGridView *)self rowRangeStart]]];
            [v13 setOrigin:?];
            [(IMGridView *)self addSubview:v13];
          }
        }
      }
    }
  }
}

- (void)performRotationWithDuration:(double)a3
{
  if ((*(&self->_gridFlags + 1) & 0x20) != 0 && ([(IMGridView *)self isDecelerating]& 1) == 0)
  {
    [(IMGridView *)self updateContentSize];
    y = self->_oldContentOffset.y;
    [(IMGridView *)self contentSize];
    v7 = v6;
    [(IMGridView *)self bounds];
    if (y <= v7 - v8)
    {
      v12 = self->_oldContentOffset.y;
    }

    else
    {
      [(IMGridView *)self contentSize];
      v10 = v9;
      [(IMGridView *)self bounds];
      v12 = v10 - v11;
      self->_oldContentOffset.y = v12;
    }

    [(IMGridView *)self contentInset];
    if (v12 < -v13)
    {
      [(IMGridView *)self contentInset];
      self->_oldContentOffset.y = -v14;
    }

    [(IMGridView *)self setContentOffset:self->_oldContentOffset.x];
    v39[0] = _NSConcreteStackBlock;
    v39[1] = 3221225472;
    v39[2] = sub_7043C;
    v39[3] = &unk_2C7D40;
    v39[4] = self;
    [UIView performWithoutAnimation:v39];
    v24 = [(NSMutableArray *)self->_cellContainerMatrix count];
    if (v24 >= 1)
    {
      for (i = 0; i != v24; ++i)
      {
        v26 = [(NSMutableArray *)self->_cellContainerMatrix objectAtIndex:i];
        v25 = [v26 count];
        if (v25 >= 1)
        {
          for (j = 0; j != v25; ++j)
          {
            v17 = [v26 objectAtIndex:j];
            v18 = [(IMGridView *)self indexForX:j Y:&i[[(IMGridView *)self rowRangeStart]]];
            v33 = 0;
            v34 = &v33;
            v35 = 0x3032000000;
            v36 = sub_70478;
            v37 = sub_70488;
            v38 = 0;
            if (v18 != 0x7FFFFFFFFFFFFFFFLL)
            {
              v19 = v18;
              if (v18 < self->_numberOfItems)
              {
                v20 = [(IMGridView *)self cellForIndex:v18];
                v21 = v34[5];
                v34[5] = v20;

                if (v34[5] || (v32[0] = _NSConcreteStackBlock, v32[1] = 3221225472, v32[2] = sub_70490, v32[3] = &unk_2CA6F0, v32[4] = self, v32[5] = &v33, v32[6] = v19, +[UIView performWithoutAnimation:](UIView, "performWithoutAnimation:", v32), [v17 setCellNotVisible:1], v34[5]))
                {
                  v29[0] = _NSConcreteStackBlock;
                  v29[1] = 3221225472;
                  v29[2] = sub_70504;
                  v29[3] = &unk_2CA7A8;
                  v22 = v17;
                  v30 = v22;
                  v31 = &v33;
                  [UIView performWithoutAnimation:v29];
                  [(NSMutableArray *)self->_visibleCells removeObject:v34[5]];
                  [(IMGridView *)self originForCellAtX:j Y:&i[[(IMGridView *)self rowRangeStart]]];
                  [v22 setOrigin:?];
                }
              }
            }

            v27[0] = _NSConcreteStackBlock;
            v27[1] = 3221225472;
            v27[2] = sub_70518;
            v27[3] = &unk_2C7D40;
            v23 = v17;
            v28 = v23;
            [UIView performWithoutAnimation:v27];
            [v23 crossfadeWithDuration:a3];

            _Block_object_dispose(&v33, 8);
          }
        }
      }
    }
  }
}

- (void)cleanupAfterRotation
{
  if ((*(&self->_gridFlags + 1) & 0x20) != 0 && ([(IMGridView *)self isDecelerating]& 1) == 0)
  {
    v3 = [(IMGridView *)self footerView];
    [v3 setAlpha:0.0];

    [(IMGridView *)self setHideFooterView:0];
    v26[0] = _NSConcreteStackBlock;
    v26[1] = 3221225472;
    v26[2] = sub_7078C;
    v26[3] = &unk_2C7D40;
    v26[4] = self;
    [UIView animateWithDuration:v26 animations:&stru_2CA7C8 completion:0.15];
    v24 = 0u;
    v25 = 0u;
    v22 = 0u;
    v23 = 0u;
    v17 = 96;
    v4 = self->_cellContainerMatrix;
    v5 = [(NSMutableArray *)v4 countByEnumeratingWithState:&v22 objects:v28 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v23;
      do
      {
        for (i = 0; i != v6; i = i + 1)
        {
          if (*v23 != v7)
          {
            objc_enumerationMutation(v4);
          }

          v9 = *(*(&v22 + 1) + 8 * i);
          v18 = 0u;
          v19 = 0u;
          v20 = 0u;
          v21 = 0u;
          v10 = v9;
          v11 = [v10 countByEnumeratingWithState:&v18 objects:v27 count:16];
          if (v11)
          {
            v12 = v11;
            v13 = *v19;
            do
            {
              for (j = 0; j != v12; j = j + 1)
              {
                if (*v19 != v13)
                {
                  objc_enumerationMutation(v10);
                }

                v15 = *(*(&v18 + 1) + 8 * j);
                [v15 didFinishRotation];
                [v15 removeFromSuperview];
              }

              v12 = [v10 countByEnumeratingWithState:&v18 objects:v27 count:16];
            }

            while (v12);
          }
        }

        v6 = [(NSMutableArray *)v4 countByEnumeratingWithState:&v22 objects:v28 count:16];
      }

      while (v6);
    }

    v16 = *(&self->super.super.super.super.isa + v17);
    *(&self->super.super.super.super.isa + v17) = 0;

    *&self->_gridFlags &= ~0x2000u;
  }
}

- (void)setHideFooterView:(BOOL)a3
{
  v3 = a3;
  self->_hideFooterView = a3;
  v4 = [(IMGridView *)self footerView];
  [v4 setHidden:v3];
}

- (id)cellAtPoint:(CGPoint)a3 ensureSelectionRect:(BOOL)a4
{
  v4 = a4;
  y = a3.y;
  x = a3.x;
  [(IMGridView *)self contentSize];
  v9 = v8;
  [(IMGridView *)self contentSize];
  v11 = v10;
  [(IMGridView *)self gridInset];
  v13 = v12 + 0.0;
  v16 = v9 - (v14 + v15);
  v36.size.height = v11 - (v12 + v17);
  v36.origin.x = v14 + 0.0;
  v36.origin.y = v13;
  v36.size.width = v16;
  v34.x = x;
  v34.y = y;
  if (CGRectContainsPoint(v36, v34))
  {
    v18 = [(IMGridView *)self numberOfColumns];
    [(IMGridView *)self cellSpacing];
    v20 = ((v19 * 0.5 + y - self->_gridInset.top) / (v19 + self->_cellSize.height));
    v22 = ((v21 * 0.5 + x - self->_gridInset.left) / (v21 + self->_cellSize.width));
    v23 = [(IMGridView *)self layoutDirection];
    v24 = v18 + ~v22;
    if (v23 != 1)
    {
      v24 = v22;
    }

    v25 = [(IMGridView *)self cellForIndex:v24 + v18 * v20];
    v26 = v25;
    if (v4)
    {
      [(IMGridView *)self convertPoint:v25 toView:x, y];
      v28 = v27;
      v30 = v29;
      [v25 selectionFrame];
      v35.x = v28;
      v35.y = v30;
      if (CGRectContainsPoint(v37, v35))
      {
        v26 = v25;
      }

      else
      {
        v26 = 0;
      }
    }

    v31 = v26;
  }

  else
  {
    v31 = 0;
  }

  return v31;
}

- (void)touchesBegan:(id)a3 withEvent:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (([(IMGridView *)self isDecelerating]& 1) == 0 && ([(IMGridView *)self isDragging]& 1) == 0)
  {
    WeakRetained = objc_loadWeakRetained(&self->_grabbedCell);

    if (!WeakRetained)
    {
      v17.receiver = self;
      v17.super_class = IMGridView;
      [(IMGridView *)&v17 touchesBegan:v6 withEvent:v7];
      v9 = [v6 anyObject];
      [v9 locationInView:self];
      self->_grabPoint.x = v10;
      self->_grabPoint.y = v11;
      v12 = [(IMGridView *)self cellAtPoint:?];
      if (v12)
      {
        if ((*&self->_gridFlags & 2) != 0)
        {
          v13 = [(IMGridView *)self indexForCell:v12];
          v14 = [(IMGridView *)self delegate];
          v15 = [v14 gridView:self willSelectItemAtIndex:v13];

          if (v13 != v15)
          {
            if (v15 == 0x7FFFFFFFFFFFFFFFLL)
            {
              v16 = 0;
            }

            else
            {
              v16 = [(IMGridView *)self cellForIndex:v15];
            }

            v12 = v16;
          }
        }
      }

      [(IMGridView *)self _cancelCellHighlight];
      objc_storeStrong(&self->_selectedCell, v12);
      if (v12 && (![(IMGridView *)self isEditing]|| ![(IMGridView *)self tapToSelectMode]))
      {
        [(IMGridView *)self performSelector:"_highlightSelectedCell" withObject:0 afterDelay:0.08];
      }
    }
  }
}

- (void)touchesMoved:(id)a3 withEvent:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v6 anyObject];
  [v8 locationInView:self];
  v10 = v9;
  v12 = v11;

  v13 = v10 - self->_grabPoint.x;
  v14 = -v13;
  if (v13 >= 0.0)
  {
    v14 = v10 - self->_grabPoint.x;
  }

  if (v14 <= 25.0)
  {
    v16 = v12 - self->_grabPoint.y;
    if (v16 < 0.0)
    {
      v16 = -v16;
    }

    v15 = v16 > 25.0;
  }

  else
  {
    v15 = 1;
  }

  WeakRetained = objc_loadWeakRetained(&self->_grabbedCell);
  if (WeakRetained)
  {
    [(IMGridView *)self _updateGrabbedCellLocation:v10, v12];
    [(IMGridView *)self _autoscrollForCell:WeakRetained];
  }

  else
  {
    v19.receiver = self;
    v19.super_class = IMGridView;
    [(IMGridView *)&v19 touchesMoved:v6 withEvent:v7];
    if (v15)
    {
      [(IMGridView *)self _cancelCellHighlight];
      [(IMGridViewCell *)self->_selectedCell setHighlighted:0];
      selectedCell = self->_selectedCell;
      self->_selectedCell = 0;
    }
  }
}

- (void)cleanupGrabbedCell
{
  grabbedCellUniqueID = self->_grabbedCellUniqueID;
  self->_grabbedCellUniqueID = 0;

  [(IMGridView *)self setGrabbedCell:0];
}

- (void)touchesEnded:(id)a3 withEvent:(id)a4
{
  v6 = a3;
  v7 = a4;
  [(IMGridView *)self _cancelAutoscrollTimer];
  [(IMGridView *)self _cancelCellHighlight];
  [(IMGridViewCell *)self->_selectedCell setHighlighted:0];
  WeakRetained = objc_loadWeakRetained(&self->_grabbedCell);
  v9 = [(IMGridView *)self delegate];
  if (WeakRetained)
  {
    v10 = [(IMGridView *)self indexForCell:WeakRetained];
    [(IMGridView *)self cleanupGrabbedCell];
    if (self->_grabIndex != v10 && (*&self->_gridFlags & 0x10) != 0)
    {
      [v9 gridView:self reorderCellAtIndex:? toIndex:?];
    }
  }

  else
  {
    v13.receiver = self;
    v13.super_class = IMGridView;
    [(IMGridView *)&v13 touchesEnded:v6 withEvent:v7];
    if (self->_selectedCell)
    {
      gridFlags = self->_gridFlags;
      if ((*&gridFlags & 4) != 0)
      {
        if ((*&gridFlags & 8) != 0)
        {
          [v9 gridView:self updateSelectedCell:?];
        }

        else if (![(IMGridView *)self isEditing]|| ![(IMGridView *)self tapToSelectMode])
        {
          [(IMGridViewCell *)self->_selectedCell setHighlighted:1];
        }

        [v9 gridView:self didSelectItemAtIndex:{-[IMGridView indexForCell:](self, "indexForCell:", self->_selectedCell)}];
      }
    }
  }

  [(IMGridView *)self _cancelCellHighlight];
  selectedCell = self->_selectedCell;
  self->_selectedCell = 0;
}

- (void)touchesCancelled:(id)a3 withEvent:(id)a4
{
  v6.receiver = self;
  v6.super_class = IMGridView;
  [(IMGridView *)&v6 touchesCancelled:a3 withEvent:a4];
  [(IMGridView *)self _cancelCellHighlight];
  [(IMGridViewCell *)self->_selectedCell setHighlighted:0];
  selectedCell = self->_selectedCell;
  self->_selectedCell = 0;
}

- (void)animateDeletionOfCell:(id)a3
{
  if ((*&self->_gridFlags & 0x80) != 0)
  {
    v5 = [(IMGridView *)self indexForCell:a3];
    v6 = [(IMGridView *)self delegate];
    [v6 gridView:self shouldDeleteItemAtIndex:v5];
  }
}

- (void)_autoscrollForCell:(id)a3
{
  self->_autoscrollDistance = 0.0;
  [a3 frame];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  [(IMGridView *)self bounds];
  v28.origin.x = v12;
  v28.origin.y = v13;
  v28.size.width = v14;
  v28.size.height = v15;
  v25.origin.x = v5;
  v25.origin.y = v7;
  v25.size.width = v9;
  v25.size.height = v11;
  if (!CGRectIntersectsRect(v25, v28))
  {
    return;
  }

  y = self->_grabPoint.y;
  [(IMGridView *)self bounds];
  v17 = y - CGRectGetMinY(v26);
  [(IMGridView *)self bounds];
  MaxY = CGRectGetMaxY(v27);
  if (v17 >= 84.0)
  {
    v21 = (MaxY - self->_grabPoint.y) * 0.5;
    if (v21 >= 84.0)
    {
      autoscrollDistance = self->_autoscrollDistance;
      goto LABEL_8;
    }

    [(IMGridView *)self _autoscrollDistanceForProximityToEdge:?];
  }

  else
  {
    *&MaxY = v17;
    [(IMGridView *)self _autoscrollDistanceForProximityToEdge:MaxY];
    autoscrollDistance = -v19;
  }

  self->_autoscrollDistance = autoscrollDistance;
LABEL_8:
  autoscrollTimer = self->_autoscrollTimer;
  if (autoscrollDistance == 0.0)
  {
    [(NSTimer *)autoscrollTimer invalidate];
    v23 = 0;
  }

  else
  {
    if (autoscrollTimer)
    {
      return;
    }

    v23 = [NSTimer scheduledTimerWithTimeInterval:self target:"_autoscrollTimerFired:" selector:0 userInfo:1 repeats:0.0166666667];
  }

  self->_autoscrollTimer = v23;

  _objc_release_x1(v23);
}

- (void)_legalizeAutoscrollDistance
{
  [(IMGridView *)self contentOffset];
  v4 = v3;
  v5 = -v4;
  [(IMGridView *)self contentSize];
  v7 = v6;
  [(IMGridView *)self bounds];
  v9 = v8;
  [(IMGridView *)self contentOffset];
  v11 = fmax(v7 - (v9 + v10), 0.0);
  autoscrollDistance_low = LODWORD(self->_autoscrollDistance);
  if (*&autoscrollDistance_low < v5)
  {
    *&autoscrollDistance_low = v5;
  }

  if (*&autoscrollDistance_low < v11)
  {
    v11 = *&autoscrollDistance_low;
  }

  self->_autoscrollDistance = v11;
}

- (void)_autoscrollTimerFired:(id)a3
{
  [(IMGridView *)self _legalizeAutoscrollDistance];
  [(IMGridView *)self contentOffset];
  [(IMGridView *)self setContentOffset:?];
  x = self->_grabPoint.x;
  v5 = self->_grabPoint.y + self->_autoscrollDistance;

  [(IMGridView *)self _updateGrabbedCellLocation:x, v5];
}

- (void)_cancelAutoscrollTimer
{
  [(NSTimer *)self->_autoscrollTimer invalidate];
  autoscrollTimer = self->_autoscrollTimer;
  self->_autoscrollTimer = 0;
}

- (void)setTapToSelectMode:(BOOL)a3
{
  v3 = a3;
  if ([(IMGridView *)self tapToSelectMode]!= a3)
  {
    if (v3)
    {
      v5 = 0x10000;
    }

    else
    {
      v5 = 0;
    }

    self->_gridFlags = (*&self->_gridFlags & 0xFFFEFFFF | v5);

    [(IMGridView *)self reloadData];
  }
}

- (void)setEditing:(BOOL)a3
{
  if (((((*&self->_gridFlags & 0x4000) == 0) ^ a3) & 1) == 0)
  {
    v3 = a3;
    if (a3)
    {
      v5 = 0x4000;
    }

    else
    {
      v5 = 0;
    }

    self->_gridFlags = (*&self->_gridFlags & 0xFFFFBFFF | v5);
    v11 = 0u;
    v12 = 0u;
    v13 = 0u;
    v14 = 0u;
    v6 = self->_visibleCells;
    v7 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v12;
      do
      {
        for (i = 0; i != v8; i = i + 1)
        {
          if (*v12 != v9)
          {
            objc_enumerationMutation(v6);
          }

          [*(*(&v11 + 1) + 8 * i) setEditing:{v3, v11}];
        }

        v8 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
      }

      while (v8);
    }

    [(IMGridView *)self reloadData];
  }
}

- (id)_cellWithUniqueIdentifier:(id)a3
{
  v4 = a3;
  v5 = [(IMGridView *)self rangeOfVisibleCells];
  if (v6 && (v7 = v5, v8 = v6, v5 < &v5[v6]))
  {
    v9 = 0;
    do
    {
      v10 = [(IMGridView *)self dragAndDropDelegate];
      v11 = [v10 uniqueIdentifierForCellIndex:v7];

      if ([v4 isEqualToString:v11])
      {
        v12 = [(IMGridView *)self cellForIndex:v7];

        v9 = v12;
      }

      ++v7;
      --v8;
    }

    while (v8);
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (int64_t)_dataSourceIndexFromReorderedIndex:(int64_t)a3
{
  WeakRetained = objc_loadWeakRetained(&self->_grabbedCell);
  if (WeakRetained)
  {
    v6 = [(IMGridView *)self indexForCell:WeakRetained];
    grabIndex = self->_grabIndex;
    if (v6 != a3)
    {
      v9 = v6 < a3 && grabIndex >= a3;
      v10 = a3 - v9;
      if (v6 > a3 && grabIndex <= a3)
      {
        v12 = a3 + 1;
      }

      else
      {
        v12 = a3;
      }

      if (v6 >= grabIndex)
      {
        grabIndex = v12;
      }

      else
      {
        grabIndex = v10;
      }
    }
  }

  else
  {
    grabIndex = a3;
  }

  return grabIndex;
}

- (id)_dragInteraction:(id)a3 itemsForSession:(id)a4 atPoint:(CGPoint)a5
{
  y = a5.y;
  x = a5.x;
  v9 = a3;
  v10 = a4;
  v11 = [(IMGridView *)self cellAtPoint:x, y];
  if (!v11)
  {
    v15 = 0;
    goto LABEL_41;
  }

  v12 = [(IMGridView *)self indexForCell:v11];
  WeakRetained = objc_loadWeakRetained(&self->_grabbedCell);
  v49 = WeakRetained;
  if (WeakRetained)
  {
    v14 = v12 == [(IMGridView *)self indexForCell:WeakRetained];
  }

  else
  {
    v14 = 0;
  }

  v48 = [(IMGridView *)self delegate];
  v16 = [(IMGridView *)self dragAndDropDelegate];
  v17 = [(IMGridView *)self _dataSourceIndexFromReorderedIndex:v12];
  v18 = [v16 uniqueIdentifierForCellIndex:v17];
  v15 = 0;
  if (!v18 || v14)
  {
    goto LABEL_40;
  }

  v19 = [(IMGridView *)self draggedCellIDs];
  v20 = [v19 containsObject:v18];

  if (v20)
  {
    v15 = 0;
    goto LABEL_40;
  }

  gridFlags = self->_gridFlags;
  if ((*&gridFlags & 0x200) != 0)
  {
    v22 = [v48 gridView:self canReorderCellAtIndex:v17];
    if ((*&self->_gridFlags & 0x400) == 0)
    {
      goto LABEL_15;
    }
  }

  else
  {
    v22 = 1;
    if ((*&gridFlags & 0x400) == 0)
    {
      goto LABEL_15;
    }
  }

  if (!isPhone())
  {
    v23 = [v48 gridView:self canDragCellAtIndex:v17];
    goto LABEL_17;
  }

LABEL_15:
  v23 = 0;
LABEL_17:
  v46 = v22;
  v47 = v10;
  if (((v22 | v23) & 1) == 0)
  {
    v15 = 0;
    goto LABEL_36;
  }

  v24 = [(IMGridView *)self draggedCellIDs];
  v44 = [v24 count];

  v45 = v9;
  [v16 dragItemsForDataSourceIndex:v17 cellIndex:v12 interaction:v9 session:v10];
  v50 = 0u;
  v51 = 0u;
  v52 = 0u;
  v15 = v53 = 0u;
  v25 = [v15 countByEnumeratingWithState:&v50 objects:v54 count:16];
  if (!v25)
  {
    goto LABEL_31;
  }

  v26 = v25;
  v27 = *v51;
  do
  {
    v28 = 0;
    do
    {
      if (*v51 != v27)
      {
        objc_enumerationMutation(v15);
      }

      v29 = [v16 uniqueIdentifierForDragItem:{*(*(&v50 + 1) + 8 * v28), v44}];
      if ([v29 length])
      {
        if (!v29)
        {
          goto LABEL_26;
        }

LABEL_25:
        v37 = [(IMGridView *)self draggedCellIDs];
        [v37 addObject:v29];

        goto LABEL_26;
      }

      sub_1E68A4(0, v30, v31, v32, v33, v34, v35, v36);
      if (v29)
      {
        goto LABEL_25;
      }

LABEL_26:

      v28 = v28 + 1;
    }

    while (v26 != v28);
    v38 = [v15 countByEnumeratingWithState:&v50 objects:v54 count:16];
    v26 = v38;
  }

  while (v38);
LABEL_31:

  v39 = [(IMGridView *)self draggedCellIDs];
  v40 = [v39 count];

  if (v44 == &dword_0 + 1 && v40 >= 2)
  {
    [(IMGridView *)self _stopReordering:1];
  }

  v9 = v45;
  [v16 dragInteraction:v45 session:v47 willAddItems:v15 forInteraction:{0, v44}];
LABEL_36:
  v41 = [(IMGridView *)self draggedCellIDs];
  v42 = [v41 count] == &dword_0 + 1;

  if (!v49 && (v42 & v46) != 0)
  {
    [(IMGridView *)self setGrabbedCell:v11];
  }

  v10 = v47;
LABEL_40:

LABEL_41:

  return v15;
}

- (id)dragInteraction:(id)a3 itemsForBeginningSession:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(IMGridView *)self pendingDropView];
  if (v8)
  {
    [(IMGridView *)self _showGrabbedCell];
    [v8 setHidden:1];
    [(IMGridView *)self setPendingDropView:0];
  }

  v9 = [(IMGridView *)self pendingCancelView];
  v10 = v9;
  if (v9)
  {
    [v9 setHidden:1];
    [(IMGridView *)self setPendingCancelView:0];
  }

  [v6 locationInView:self];
  v11 = [(IMGridView *)self _dragInteraction:v7 itemsForSession:v6 atPoint:?];

  return v11;
}

- (id)dragInteraction:(id)a3 itemsForAddingToSession:(id)a4 withTouchAtPoint:(CGPoint)a5
{
  y = a5.y;
  x = a5.x;
  v9 = a3;
  v10 = a4;
  if (isPhone())
  {
    v11 = 0;
  }

  else
  {
    v11 = [(IMGridView *)self _dragInteraction:v9 itemsForSession:v10 atPoint:x, y];
  }

  return v11;
}

- (void)dragInteraction:(id)a3 willAnimateLiftWithAnimator:(id)a4 session:(id)a5
{
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_71C84;
  v9[3] = &unk_2CA7F0;
  v9[4] = self;
  v10 = a3;
  v11 = a5;
  v7 = v11;
  v8 = v10;
  [a4 addCompletion:v9];
}

- (id)dragInteraction:(id)a3 previewForLiftingItem:(id)a4 session:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = [(IMGridView *)self dragAndDropDelegate];
  v12 = [v11 dragInteraction:v10 previewForLiftingItem:v9 session:v8];

  return v12;
}

- (void)dragInteraction:(id)a3 session:(id)a4 willEndWithOperation:(unint64_t)a5
{
  if (a5 < 2 || !self->_draggingInsideApp)
  {
    [(IMGridView *)self _stopReordering:1, a4];
  }
}

- (void)dragInteraction:(id)a3 session:(id)a4 didEndWithOperation:(unint64_t)a5
{
  v11 = a3;
  v8 = a4;
  if (a5 < 2 || !self->_draggingInsideApp)
  {
    [(IMGridView *)self _showGrabbedCell];
  }

  [(IMGridView *)self _stopReordering:0];
  v9 = [(IMGridView *)self draggedCellIDs];
  [v9 removeAllObjects];

  v10 = [(IMGridView *)self dragAndDropDelegate];
  [v10 dragInteraction:v11 session:v8 didEndWithOperation:a5];
}

- (void)dragInteraction:(id)a3 item:(id)a4 willAnimateCancelWithAnimator:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = [(IMGridView *)self dragAndDropDelegate];
  [v11 dragInteraction:v10 item:v9 willAnimateCancelWithAnimator:v8];

  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_71F48;
  v12[3] = &unk_2C8FD0;
  v12[4] = self;
  [v8 addCompletion:v12];
}

- (id)dragInteraction:(id)a3 sessionForAddingItems:(id)a4 withTouchAtPoint:(CGPoint)a5
{
  v5 = a4;
  v6 = BKMobileDragAndDropLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    sub_1E68E0(v5);
  }

  v7 = [v5 firstObject];

  return v7;
}

- (void)dragInteraction:(id)a3 session:(id)a4 willAddItems:(id)a5 forInteraction:(id)a6
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v12 = BKMobileDragAndDropLog();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
  {
    v13 = 138412802;
    v14 = v9;
    v15 = 2112;
    v16 = v10;
    v17 = 2112;
    v18 = v11;
    _os_log_debug_impl(&dword_0, v12, OS_LOG_TYPE_DEBUG, "interaction: %@ session: %@ willAddItems: %@", &v13, 0x20u);
  }

  [(IMGridView *)self _showGrabbedCell];
}

- (id)dragInteraction:(id)a3 previewForCancellingItem:(id)a4 withDefault:(id)a5
{
  v7 = a4;
  v8 = a3;
  v9 = [(IMGridView *)self dragAndDropDelegate];
  v10 = [v9 dragInteraction:v8 previewForLiftingItem:v7 session:0];

  v11 = [v10 view];
  [(IMGridView *)self setPendingCancelView:v11];

  return v10;
}

- (id)_dropOperationForInteraction:(id)a3 session:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(IMGridView *)self dragAndDropDelegate];
  v9 = [v8 dropProposalForInteraction:v7 session:v6];

  return v9;
}

- (BOOL)dropInteraction:(id)a3 canHandleSession:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(IMGridView *)self dragAndDropDelegate];
  v9 = [v8 dropInteraction:v7 canHandleSession:v6];

  return v9;
}

- (void)dropInteraction:(id)a3 sessionDidEnter:(id)a4
{
  v5 = a4;
  self->_draggingInsideApp = 1;
  [v5 locationInView:self];
  v7 = v6;
  v9 = v8;
  v10 = BKMobileDragAndDropLog();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    sub_1E6970(v7, v9);
  }
}

- (id)dropInteraction:(id)a3 sessionDidUpdate:(id)a4
{
  v6 = a3;
  v7 = a4;
  [v7 locationInView:self];
  v9 = v8;
  v11 = v10;
  WeakRetained = objc_loadWeakRetained(&self->_grabbedCell);
  if (WeakRetained)
  {
    [(IMGridView *)self _updateGrabbedCellLocation:v9, v11];
    [(IMGridView *)self _autoscrollForCell:WeakRetained];
  }

  v13 = [(IMGridView *)self _dropOperationForInteraction:v6 session:v7];
  [v13 setPrefersFullSizePreview:1];

  return v13;
}

- (void)dropInteraction:(id)a3 sessionDidExit:(id)a4
{
  v5 = a4;
  [v5 locationInView:self];
  v7 = v6;
  v9 = v8;
  v10 = BKMobileDragAndDropLog();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    sub_1E6A08(v7, v9);
  }

  [(IMGridView *)self _cancelAutoscrollTimer];
  self->_draggingInsideApp = 0;
}

- (void)dropInteraction:(id)a3 performDrop:(id)a4
{
  v11 = a3;
  v6 = a4;
  WeakRetained = objc_loadWeakRetained(&self->_grabbedCell);
  if (!WeakRetained)
  {
    v10 = [(IMGridView *)self dragAndDropDelegate];
    [v10 performDropForInteraction:v11 session:v6];
    goto LABEL_6;
  }

  v8 = [(IMGridView *)self indexForCell:WeakRetained];
  if (self->_grabIndex != v8 && (*&self->_gridFlags & 0x10) != 0)
  {
    v9 = v8;
    v10 = [(IMGridView *)self delegate];
    [v10 gridView:self reorderCellAtIndex:self->_grabIndex toIndex:v9];
LABEL_6:
  }
}

- (id)dropInteraction:(id)a3 previewForDroppingItem:(id)a4 withDefault:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = [(IMGridView *)self dragAndDropDelegate];
  v12 = [v11 dropInteraction:v10 previewForDroppingItem:v9 withDefault:v8];

  v13 = [v12 view];
  [(IMGridView *)self setPendingDropView:v13];

  return v12;
}

- (void)dropInteraction:(id)a3 item:(id)a4 willAnimateDropWithAnimator:(id)a5
{
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_7266C;
  v5[3] = &unk_2C8FD0;
  v5[4] = self;
  [a5 addCompletion:{v5, a4}];
}

- (void)_hideGrabbedCell
{
  WeakRetained = objc_loadWeakRetained(&self->_grabbedCell);
  if (WeakRetained && (*&self->_gridFlags & 0x20) != 0)
  {
    v5 = WeakRetained;
    v4 = [(IMGridView *)self delegate];
    [v4 gridView:self willGrabCell:v5];

    WeakRetained = v5;
  }
}

- (void)_showGrabbedCell
{
  if ((*&self->_gridFlags & 0x40) != 0)
  {
    v4 = [(IMGridView *)self delegate];
    [v4 gridViewDidReleaseGrabbedCell:self];
  }
}

- (void)_stopReordering:(BOOL)a3
{
  v3 = a3;
  [(IMGridView *)self _cancelAutoscrollTimer];
  WeakRetained = objc_loadWeakRetained(&self->_grabbedCell);
  grabIndex = self->_grabIndex;
  [(IMGridView *)self cleanupGrabbedCell];
  if (v3)
  {
    [(IMGridView *)self _restoreGrabbedCell:WeakRetained toOriginalGrabIndex:grabIndex];
  }

  [(IMGridView *)self _cancelCellHighlight];
  [(IMGridViewCell *)self->_selectedCell setHighlighted:0];
  selectedCell = self->_selectedCell;
  self->_selectedCell = 0;
}

- (void)setGrabbedCell:(id)a3
{
  obj = a3;
  WeakRetained = objc_loadWeakRetained(&self->_grabbedCell);
  if (WeakRetained != obj)
  {
    objc_storeWeak(&self->_grabbedCell, obj);
    if (obj)
    {
      [(IMGridView *)self setScrollEnabled:0];
      self->_grabIndex = [(IMGridView *)self indexForCell:obj];
      v5 = [(IMGridView *)self dragAndDropDelegate];
      v6 = [v5 uniqueIdentifierForCellIndex:self->_grabIndex];
      [(IMGridView *)self setGrabbedCellUniqueID:v6];

      [obj setGrabbed:1];
    }

    else
    {
      [(IMGridView *)self beginUpdates];
      [WeakRetained setGrabbed:0];
      [(IMGridView *)self setScrollEnabled:1];
      [(IMGridView *)self endUpdates];
    }
  }
}

- (void)_swapGrabbedCell:(id)a3 withOtherCell:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(IMGridView *)self indexForCell:v6];
  v9 = [(IMGridView *)self indexForCell:v7];
  if (v8 != v9)
  {
    v10 = v9;
    if (v9 > v8)
    {
      v11 = -1;
    }

    else
    {
      v11 = 1;
    }

    if (v9 > v8)
    {
      v12 = 1;
    }

    else
    {
      v12 = -1;
    }

    v13 = v8 + v12;
    if (v13 != v9)
    {
      do
      {
        v14 = [(IMGridView *)self visibleCellForIndex:v13];
        [v14 setTag:{objc_msgSend(v14, "tag") + v11}];

        v13 += v12;
      }

      while (v10 != v13);
    }

    [v6 setTag:v10 + 10000];
    [v7 setTag:{objc_msgSend(v7, "tag") - v12}];
    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_72AD8;
    v15[3] = &unk_2C7D40;
    v15[4] = self;
    [UIView animateWithDuration:v15 animations:0.3];
  }
}

- (void)_restoreGrabbedCell:(id)a3 toOriginalGrabIndex:(int64_t)a4
{
  v6 = a3;
  v7 = [(IMGridView *)self indexForCell:v6];
  v8 = v7 != a4 && v6 != 0;
  if (v7 > a4)
  {
    v9 = 1;
  }

  else
  {
    v9 = -1;
  }

  if (v7 > a4)
  {
    v10 = -1;
  }

  else
  {
    v10 = 1;
  }

  if (v8)
  {
    for (i = v7 + v10; a4 != i; i += v10)
    {
      v12 = [(IMGridView *)self visibleCellForIndex:i];
      [v12 setTag:{objc_msgSend(v12, "tag") + v9}];
    }

    v13 = [(IMGridView *)self visibleCellForIndex:a4];
    [v13 setTag:{objc_msgSend(v13, "tag") + v9}];
    [v6 setTag:a4 + 10000];
  }

  [(IMGridView *)self rectForCellAtIndex:a4];
  [v6 setFrame:?];
  [v6 setAlpha:0.0];
  [(IMGridView *)self _showGrabbedCell];
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_72C7C;
  v15[3] = &unk_2C81D8;
  v18 = v8;
  v16 = v6;
  v17 = self;
  v14 = v6;
  [UIView animateWithDuration:v15 animations:0.3];
}

- (void)_updateGrabbedCellLocation:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  WeakRetained = objc_loadWeakRetained(&self->_grabbedCell);
  [WeakRetained frame];
  v8 = v7 + y - self->_grabPoint.y;
  [WeakRetained setFrame:{v6 + x - self->_grabPoint.x, v8}];
  self->_grabPoint.x = x;
  self->_grabPoint.y = y;
  v9 = [(IMGridView *)self cellAtPoint:0 ensureSelectionRect:x, y];
  if (!v9 && v8 > 0.0)
  {
    v9 = [(IMGridView *)self visibleCellForIndex:self->_numberOfItems - 1];
  }

  if (v9 != WeakRetained && v9 != 0)
  {
    [(IMGridView *)self _swapGrabbedCell:WeakRetained withOtherCell:v9];
  }
}

- (IMGridViewDataSource)dataSource
{
  WeakRetained = objc_loadWeakRetained(&self->_dataSource);

  return WeakRetained;
}

- (CGSize)cellSize
{
  width = self->_cellSize.width;
  height = self->_cellSize.height;
  result.height = height;
  result.width = width;
  return result;
}

- (CGSize)minimumGridSpacing
{
  width = self->_minimumGridSpacing.width;
  height = self->_minimumGridSpacing.height;
  result.height = height;
  result.width = width;
  return result;
}

- (UIEdgeInsets)gridInset
{
  top = self->_gridInset.top;
  left = self->_gridInset.left;
  bottom = self->_gridInset.bottom;
  right = self->_gridInset.right;
  result.right = right;
  result.bottom = bottom;
  result.left = left;
  result.top = top;
  return result;
}

- (UIEdgeInsets)visibleRegionInsets
{
  top = self->_visibleRegionInsets.top;
  left = self->_visibleRegionInsets.left;
  bottom = self->_visibleRegionInsets.bottom;
  right = self->_visibleRegionInsets.right;
  result.right = right;
  result.bottom = bottom;
  result.left = left;
  result.top = top;
  return result;
}

- (IMGridViewCell)grabbedCell
{
  WeakRetained = objc_loadWeakRetained(&self->_grabbedCell);

  return WeakRetained;
}

- (BKLibraryDragAndDropDelegate)dragAndDropDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_dragAndDropDelegate);

  return WeakRetained;
}

- (UIView)pendingDropView
{
  WeakRetained = objc_loadWeakRetained(&self->_pendingDropView);

  return WeakRetained;
}

- (UIView)pendingCancelView
{
  WeakRetained = objc_loadWeakRetained(&self->_pendingCancelView);

  return WeakRetained;
}

@end