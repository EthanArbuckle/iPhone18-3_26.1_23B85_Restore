@interface MTCollectionView
- (CGPoint)appliedContentOffset;
- (MTCollectionView)initWithFrame:(CGRect)a3 collectionViewLayout:(id)a4;
- (UIEdgeInsets)appliedInsets;
- (id)cellForItemAtIndexPath:(id)a3;
- (void)_sendDidEndEditingForIndexPath:(id)a3;
- (void)_sendWillBeginEditingForIndexPath:(id)a3;
- (void)disablePullToRefresh;
- (void)enablePullToRefresh;
- (void)layoutSubviews;
- (void)setAllowsMultipleSelection:(BOOL)a3;
- (void)setContentInset:(UIEdgeInsets)a3;
- (void)setContentOffset:(CGPoint)a3;
- (void)setContentOffset:(CGPoint)a3 animated:(BOOL)a4;
- (void)setEditing:(BOOL)a3 animated:(BOOL)a4;
- (void)setRefreshControl:(id)a3;
- (void)setSwipeGesture:(id)a3;
- (void)setSwipedCellIndexPath:(id)a3;
- (void)swipeBegan:(id)a3;
- (void)updateRefreshEnabledState;
@end

@implementation MTCollectionView

- (MTCollectionView)initWithFrame:(CGRect)a3 collectionViewLayout:(id)a4
{
  v7.receiver = self;
  v7.super_class = MTCollectionView;
  v4 = [(MTCollectionView *)&v7 initWithFrame:a4 collectionViewLayout:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v5 = v4;
  if (v4)
  {
    [(MTCollectionView *)v4 setScrollsToTop:1];
  }

  return v5;
}

- (void)setEditing:(BOOL)a3 animated:(BOOL)a4
{
  if (self->_editing != a3)
  {
    v4 = a4;
    v5 = a3;
    self->_editing = a3;
    if (!a3 || ([(MTCollectionView *)self swipedCellIndexPath], v7 = objc_claimAutoreleasedReturnValue(), v7, !v7))
    {
      v15 = 0u;
      v16 = 0u;
      v13 = 0u;
      v14 = 0u;
      v8 = [(MTCollectionView *)self visibleCells];
      v9 = [v8 countByEnumeratingWithState:&v13 objects:v17 count:16];
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
              objc_enumerationMutation(v8);
            }

            [*(*(&v13 + 1) + 8 * i) setEditing:v5 animated:v4];
          }

          v10 = [v8 countByEnumeratingWithState:&v13 objects:v17 count:16];
        }

        while (v10);
      }
    }

    [(MTCollectionView *)self updateRefreshEnabledState];
  }
}

- (void)setAllowsMultipleSelection:(BOOL)a3
{
  v3 = a3;
  if (([(MTCollectionView *)self allowsMultipleSelection]& 1) == 0 && v3)
  {
    [(MTCollectionView *)self selectItemAtIndexPath:0 animated:0 scrollPosition:0];
  }

  v5.receiver = self;
  v5.super_class = MTCollectionView;
  [(MTCollectionView *)&v5 setAllowsMultipleSelection:v3];
}

- (void)setRefreshControl:(id)a3
{
  v5 = a3;
  objc_storeStrong(&self->_refreshControl, a3);
  if (![(MTCollectionView *)self isEditing]|| !self->_disableRefreshControlWhileEditing)
  {
    v6.receiver = self;
    v6.super_class = MTCollectionView;
    [(MTCollectionView *)&v6 setRefreshControl:v5];
  }
}

- (UIEdgeInsets)appliedInsets
{
  [(MTCollectionView *)self contentInset];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v11 = [(MTCollectionView *)self refreshControl];

  if (v11)
  {
    v12 = [(MTCollectionView *)self refreshControl];
    [v12 _appliedInsets];
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
        v4 = [(UIRefreshControl *)refreshControl superview];

        if (!v4)
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
      v4 = [(UIRefreshControl *)refreshControl superview];

      if (!v4)
      {
        v5 = self->_refreshControl;

        [(MTCollectionView *)self setRefreshControl:v5];
      }
    }
  }
}

- (void)setSwipedCellIndexPath:(id)a3
{
  v5 = a3;
  swipedCellIndexPath = self->_swipedCellIndexPath;
  if (swipedCellIndexPath != v5)
  {
    v9 = v5;
    v7 = [(NSIndexPath *)swipedCellIndexPath isEqual:v5];
    v5 = v9;
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

      objc_storeStrong(&self->_swipedCellIndexPath, a3);
      v5 = v9;
      if (v9)
      {
        [(MTCollectionView *)self _sendWillBeginEditingForIndexPath:v9];
        [(MTCollectionView *)self setEditing:1];
        v5 = v9;
      }
    }
  }
}

- (void)setSwipeGesture:(id)a3
{
  v5 = a3;
  swipeGesture = self->_swipeGesture;
  if (swipeGesture != v5)
  {
    v7 = v5;
    if (swipeGesture)
    {
      [(MTCollectionView *)self removeGestureRecognizer:?];
      v5 = v7;
    }

    if (v5)
    {
      [(MTCollectionView *)self addGestureRecognizer:v7];
    }

    objc_storeStrong(&self->_swipeGesture, a3);
    v5 = v7;
  }
}

- (void)_sendWillBeginEditingForIndexPath:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v8 = v4;
    v5 = [(MTCollectionView *)self delegate];
    v6 = objc_opt_respondsToSelector();

    v4 = v8;
    if (v6)
    {
      v7 = [(MTCollectionView *)self delegate];
      [v7 collectionView:self willBeginEditingItemAtIndexPath:v8];

      v4 = v8;
    }
  }
}

- (void)_sendDidEndEditingForIndexPath:(id)a3
{
  v7 = a3;
  v4 = [(MTCollectionView *)self delegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    v6 = [(MTCollectionView *)self delegate];
    [v6 collectionView:self didEndEditingItemAtIndexPath:v7];
  }
}

- (void)swipeBegan:(id)a3
{
  v4 = [(MTCollectionView *)self indexPathForCell:a3];
  if (v4)
  {
    v5 = v4;
    [(MTCollectionView *)self setSwipedCellIndexPath:v4];
    v4 = v5;
  }
}

- (void)setContentOffset:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  if (![(MTCollectionView *)self lockContentOffset])
  {
    v6.receiver = self;
    v6.super_class = MTCollectionView;
    [(MTCollectionView *)&v6 setContentOffset:x, y];
  }
}

- (void)setContentOffset:(CGPoint)a3 animated:(BOOL)a4
{
  v4 = a4;
  y = a3.y;
  x = a3.x;
  if (![(MTCollectionView *)self lockContentOffset])
  {
    v8.receiver = self;
    v8.super_class = MTCollectionView;
    [(MTCollectionView *)&v8 setContentOffset:v4 animated:x, y];
  }
}

- (void)setContentInset:(UIEdgeInsets)a3
{
  right = a3.right;
  bottom = a3.bottom;
  left = a3.left;
  top = a3.top;
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
  v3 = [(MTCollectionView *)self refreshControl];
  [(MTCollectionView *)self sendSubviewToBack:v3];
}

- (id)cellForItemAtIndexPath:(id)a3
{
  v4 = a3;
  v7.receiver = self;
  v7.super_class = MTCollectionView;
  v5 = [(MTCollectionView *)&v7 cellForItemAtIndexPath:v4];

  return v5;
}

@end