@interface MTCollectionView
- (CGPoint)appliedContentOffset;
- (MTCollectionView)initWithFrame:(CGRect)frame collectionViewLayout:(id)layout;
- (UIEdgeInsets)appliedInsets;
- (id)cellForItemAtIndexPath:(id)path;
- (void)_sendDidEndEditingForIndexPath:(id)path;
- (void)_sendWillBeginEditingForIndexPath:(id)path;
- (void)disablePullToRefresh;
- (void)enablePullToRefresh;
- (void)layoutSubviews;
- (void)setAllowsMultipleSelection:(BOOL)selection;
- (void)setContentInset:(UIEdgeInsets)inset;
- (void)setContentOffset:(CGPoint)offset;
- (void)setContentOffset:(CGPoint)offset animated:(BOOL)animated;
- (void)setEditing:(BOOL)editing animated:(BOOL)animated;
- (void)setRefreshControl:(id)control;
- (void)setSwipeGesture:(id)gesture;
- (void)setSwipedCellIndexPath:(id)path;
- (void)swipeBegan:(id)began;
- (void)updateRefreshEnabledState;
@end

@implementation MTCollectionView

- (MTCollectionView)initWithFrame:(CGRect)frame collectionViewLayout:(id)layout
{
  v7.receiver = self;
  v7.super_class = MTCollectionView;
  v4 = [(MTCollectionView *)&v7 initWithFrame:layout collectionViewLayout:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v5 = v4;
  if (v4)
  {
    [(MTCollectionView *)v4 setScrollsToTop:1];
  }

  return v5;
}

- (void)setEditing:(BOOL)editing animated:(BOOL)animated
{
  if (self->_editing != editing)
  {
    animatedCopy = animated;
    editingCopy = editing;
    self->_editing = editing;
    if (!editing || ([(MTCollectionView *)self swipedCellIndexPath], v7 = objc_claimAutoreleasedReturnValue(), v7, !v7))
    {
      v15 = 0u;
      v16 = 0u;
      v13 = 0u;
      v14 = 0u;
      visibleCells = [(MTCollectionView *)self visibleCells];
      v9 = [visibleCells countByEnumeratingWithState:&v13 objects:v17 count:16];
      if (v9)
      {
        v10 = v9;
        v11 = *v14;
        do
        {
          for (i = 0; i != v10; i = i + 1)
          {
            if (*v14 != v11)
            {
              objc_enumerationMutation(visibleCells);
            }

            [*(*(&v13 + 1) + 8 * i) setEditing:editingCopy animated:animatedCopy];
          }

          v10 = [visibleCells countByEnumeratingWithState:&v13 objects:v17 count:16];
        }

        while (v10);
      }
    }

    [(MTCollectionView *)self updateRefreshEnabledState];
  }
}

- (void)setAllowsMultipleSelection:(BOOL)selection
{
  selectionCopy = selection;
  if (([(MTCollectionView *)self allowsMultipleSelection]& 1) == 0 && selectionCopy)
  {
    [(MTCollectionView *)self selectItemAtIndexPath:0 animated:0 scrollPosition:0];
  }

  v5.receiver = self;
  v5.super_class = MTCollectionView;
  [(MTCollectionView *)&v5 setAllowsMultipleSelection:selectionCopy];
}

- (void)setRefreshControl:(id)control
{
  controlCopy = control;
  objc_storeStrong(&self->_refreshControl, control);
  if (![(MTCollectionView *)self isEditing]|| !self->_disableRefreshControlWhileEditing)
  {
    v6.receiver = self;
    v6.super_class = MTCollectionView;
    [(MTCollectionView *)&v6 setRefreshControl:controlCopy];
  }
}

- (UIEdgeInsets)appliedInsets
{
  [(MTCollectionView *)self contentInset];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  refreshControl = [(MTCollectionView *)self refreshControl];

  if (refreshControl)
  {
    refreshControl2 = [(MTCollectionView *)self refreshControl];
    [refreshControl2 _appliedInsets];
    v14 = v13;

    v4 = v4 - v14;
  }

  v15 = v4;
  v16 = v6;
  v17 = v8;
  v18 = v10;
  result.right = v18;
  result.bottom = v17;
  result.left = v16;
  result.top = v15;
  return result;
}

- (CGPoint)appliedContentOffset
{
  [(MTCollectionView *)self appliedInsets];
  v4 = v3;
  [(MTCollectionView *)self contentOffset];
  v7 = v4 + v6;
  result.y = v7;
  result.x = v5;
  return result;
}

- (void)updateRefreshEnabledState
{
  if (self->_disableRefreshControlWhileEditing)
  {
    if ([(MTCollectionView *)self isEditing])
    {

      [(MTCollectionView *)self disablePullToRefresh];
    }

    else
    {
      refreshControl = self->_refreshControl;
      if (refreshControl)
      {
        superview = [(UIRefreshControl *)refreshControl superview];

        if (!superview)
        {

          [(MTCollectionView *)self enablePullToRefresh];
        }
      }
    }
  }
}

- (void)disablePullToRefresh
{
  v2.receiver = self;
  v2.super_class = MTCollectionView;
  [(MTCollectionView *)&v2 setRefreshControl:0];
}

- (void)enablePullToRefresh
{
  if (![(MTCollectionView *)self disableRefreshControlWhileEditing]|| ![(MTCollectionView *)self isEditing])
  {
    refreshControl = self->_refreshControl;
    if (refreshControl)
    {
      superview = [(UIRefreshControl *)refreshControl superview];

      if (!superview)
      {
        v5 = self->_refreshControl;

        [(MTCollectionView *)self setRefreshControl:v5];
      }
    }
  }
}

- (void)setSwipedCellIndexPath:(id)path
{
  pathCopy = path;
  swipedCellIndexPath = self->_swipedCellIndexPath;
  if (swipedCellIndexPath != pathCopy)
  {
    v9 = pathCopy;
    v7 = [(NSIndexPath *)swipedCellIndexPath isEqual:pathCopy];
    pathCopy = v9;
    if ((v7 & 1) == 0)
    {
      if (self->_swipedCellIndexPath)
      {
        v8 = [(MTCollectionView *)self cellForItemAtIndexPath:?];
        [v8 setEditing:0];
        if (!v9)
        {
          [(MTCollectionView *)self setEditing:0];
          [(MTCollectionView *)self _sendDidEndEditingForIndexPath:self->_swipedCellIndexPath];
        }
      }

      objc_storeStrong(&self->_swipedCellIndexPath, path);
      pathCopy = v9;
      if (v9)
      {
        [(MTCollectionView *)self _sendWillBeginEditingForIndexPath:v9];
        [(MTCollectionView *)self setEditing:1];
        pathCopy = v9;
      }
    }
  }
}

- (void)setSwipeGesture:(id)gesture
{
  gestureCopy = gesture;
  swipeGesture = self->_swipeGesture;
  if (swipeGesture != gestureCopy)
  {
    v7 = gestureCopy;
    if (swipeGesture)
    {
      [(MTCollectionView *)self removeGestureRecognizer:?];
      gestureCopy = v7;
    }

    if (gestureCopy)
    {
      [(MTCollectionView *)self addGestureRecognizer:v7];
    }

    objc_storeStrong(&self->_swipeGesture, gesture);
    gestureCopy = v7;
  }
}

- (void)_sendWillBeginEditingForIndexPath:(id)path
{
  pathCopy = path;
  if (pathCopy)
  {
    v8 = pathCopy;
    delegate = [(MTCollectionView *)self delegate];
    v6 = objc_opt_respondsToSelector();

    pathCopy = v8;
    if (v6)
    {
      delegate2 = [(MTCollectionView *)self delegate];
      [delegate2 collectionView:self willBeginEditingItemAtIndexPath:v8];

      pathCopy = v8;
    }
  }
}

- (void)_sendDidEndEditingForIndexPath:(id)path
{
  pathCopy = path;
  delegate = [(MTCollectionView *)self delegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    delegate2 = [(MTCollectionView *)self delegate];
    [delegate2 collectionView:self didEndEditingItemAtIndexPath:pathCopy];
  }
}

- (void)swipeBegan:(id)began
{
  v4 = [(MTCollectionView *)self indexPathForCell:began];
  if (v4)
  {
    v5 = v4;
    [(MTCollectionView *)self setSwipedCellIndexPath:v4];
    v4 = v5;
  }
}

- (void)setContentOffset:(CGPoint)offset
{
  y = offset.y;
  x = offset.x;
  if (![(MTCollectionView *)self lockContentOffset])
  {
    v6.receiver = self;
    v6.super_class = MTCollectionView;
    [(MTCollectionView *)&v6 setContentOffset:x, y];
  }
}

- (void)setContentOffset:(CGPoint)offset animated:(BOOL)animated
{
  animatedCopy = animated;
  y = offset.y;
  x = offset.x;
  if (![(MTCollectionView *)self lockContentOffset])
  {
    v8.receiver = self;
    v8.super_class = MTCollectionView;
    [(MTCollectionView *)&v8 setContentOffset:animatedCopy animated:x, y];
  }
}

- (void)setContentInset:(UIEdgeInsets)inset
{
  right = inset.right;
  bottom = inset.bottom;
  left = inset.left;
  top = inset.top;
  v16.receiver = self;
  v16.super_class = MTCollectionView;
  [(MTCollectionView *)&v16 contentInset];
  if (left != v11 || top != v8 || right != v10 || bottom != v9)
  {
    v15.receiver = self;
    v15.super_class = MTCollectionView;
    [(MTCollectionView *)&v15 setContentInset:top, left, bottom, right];
  }
}

- (void)layoutSubviews
{
  v4.receiver = self;
  v4.super_class = MTCollectionView;
  [(MTCollectionView *)&v4 layoutSubviews];
  refreshControl = [(MTCollectionView *)self refreshControl];
  [(MTCollectionView *)self sendSubviewToBack:refreshControl];
}

- (id)cellForItemAtIndexPath:(id)path
{
  pathCopy = path;
  v7.receiver = self;
  v7.super_class = MTCollectionView;
  v5 = [(MTCollectionView *)&v7 cellForItemAtIndexPath:pathCopy];

  return v5;
}

@end