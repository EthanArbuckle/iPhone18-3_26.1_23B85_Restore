@interface MTTableView
- (BOOL)allowsFooterViewsToFloat;
- (UIEdgeInsets)insetsFromRefreshControl;
- (id)preferredFocusEnvironments;
- (void)decodeRestorableStateWithCoder:(id)a3;
- (void)disablePullToRefresh;
- (void)enablePullToRefresh;
- (void)encodeRestorableStateWithCoder:(id)a3;
- (void)layoutSubviews;
- (void)setBottomFillColor:(id)a3;
- (void)setContentInset:(UIEdgeInsets)a3;
- (void)setContentOffset:(CGPoint)a3;
- (void)setContentSize:(CGSize)a3;
- (void)setDisableRefreshControlWhileEditing:(BOOL)a3;
- (void)setEditing:(BOOL)a3 animated:(BOOL)a4;
- (void)setOverlayView:(id)a3;
- (void)setRefreshControl:(id)a3;
- (void)setTableFooterView:(id)a3;
- (void)updateRefreshControlEnabledState;
@end

@implementation MTTableView

- (void)layoutSubviews
{
  v37.receiver = self;
  v37.super_class = MTTableView;
  [(MTTableView *)&v37 layoutSubviews];
  if (self->_bottomFillView)
  {
    v3 = +[UIView areAnimationsEnabled];
    [UIView setAnimationsEnabled:0];
    [(MTTableView *)self bounds];
    x = v38.origin.x;
    y = v38.origin.y;
    width = v38.size.width;
    height = v38.size.height;
    MaxY = CGRectGetMaxY(v38);
    v9 = [(MTTableView *)self tableHeaderView];
    [v9 frame];
    v10 = CGRectGetMaxY(v39);

    v40.origin.x = x;
    v40.origin.y = y;
    v40.size.width = width;
    v40.size.height = height;
    MinY = CGRectGetMinY(v40);
    if (v10 >= MinY)
    {
      v12 = v10;
    }

    else
    {
      v12 = MinY;
    }

    v41.origin.x = x;
    v41.origin.y = v12;
    v41.size.width = width;
    v41.size.height = height;
    [(UIView *)self->_bottomFillView setFrame:x, v12, width, (MaxY - CGRectGetMinY(v41)) * 1.5];
    v13 = [(MTTableView *)self backgroundView];

    bottomFillView = self->_bottomFillView;
    if (v13)
    {
      v15 = [(MTTableView *)self backgroundView];
      [(MTTableView *)self insertSubview:bottomFillView aboveSubview:v15];
    }

    else
    {
      [(MTTableView *)self sendSubviewToBack:self->_bottomFillView];
    }

    [UIView setAnimationsEnabled:v3];
  }

  if (self->_overlayView)
  {
    [(MTTableView *)self bringSubviewToFront:?];
    [(MTTableView *)self bounds];
    v17 = v16;
    v19 = v18;
    v21 = v20;
    v23 = v22;
    [(MTTableView *)self contentInset];
    overlayView = self->_overlayView;
    v26 = -v25;
    v42.origin.x = v17;
    v42.origin.y = v19;
    v42.size.width = v21;
    v42.size.height = v23;
    v27 = CGRectGetWidth(v42);
    v43.origin.x = v17;
    v43.origin.y = v19;
    v43.size.width = v21;
    v43.size.height = v23;
    [(UIView *)overlayView setFrame:0.0, v26, v27, CGRectGetHeight(v43)];
  }

  v28 = [(MTTableView *)self refreshControl];
  if ([v28 isRefreshing])
  {
    v29 = [(MTTableView *)self adjustContentOffsetForRefreshControlAsNeeded];

    if (v29)
    {
      [(MTTableView *)self contentOffset];
      v31 = v30;
      v32 = [(MTTableView *)self refreshControl];
      [v32 frame];
      v33 = v31 - CGRectGetHeight(v44);
      [(MTTableView *)self contentInset];
      v35 = -v34;

      if (v33 == v35)
      {
        [(MTTableView *)self contentInset];
        [(MTTableView *)self setContentOffset:0.0, -v36];
      }
    }
  }

  else
  {
  }
}

- (void)setTableFooterView:(id)a3
{
  v4 = a3;
  v5 = [(MTTableView *)self tableFooterView];

  if (v5 != v4)
  {
    v6.receiver = self;
    v6.super_class = MTTableView;
    [(MTTableView *)&v6 setTableFooterView:v4];
  }
}

- (void)setOverlayView:(id)a3
{
  v4 = a3;
  [(UIView *)self->_overlayView removeFromSuperview];
  overlayView = self->_overlayView;
  self->_overlayView = v4;
  v6 = v4;

  [(MTTableView *)self addSubview:v6];
}

- (void)setBottomFillColor:(id)a3
{
  v9 = a3;
  objc_storeStrong(&self->_bottomFillColor, a3);
  [(UIView *)self->_bottomFillView removeFromSuperview];
  bottomFillView = self->_bottomFillView;
  if (!bottomFillView)
  {
    v6 = [UIView alloc];
    [(MTTableView *)self bounds];
    v7 = [v6 initWithFrame:?];
    v8 = self->_bottomFillView;
    self->_bottomFillView = v7;

    bottomFillView = self->_bottomFillView;
  }

  [(UIView *)bottomFillView setBackgroundColor:v9];
  [(MTTableView *)self addSubview:self->_bottomFillView];
}

- (void)setEditing:(BOOL)a3 animated:(BOOL)a4
{
  v5.receiver = self;
  v5.super_class = MTTableView;
  [(MTTableView *)&v5 setEditing:a3 animated:a4];
  [(MTTableView *)self updateRefreshControlEnabledState];
}

- (void)setDisableRefreshControlWhileEditing:(BOOL)a3
{
  if (self->_disableRefreshControlWhileEditing != a3)
  {
    self->_disableRefreshControlWhileEditing = a3;
    [(MTTableView *)self updateRefreshControlEnabledState];
  }
}

- (void)updateRefreshControlEnabledState
{
  if ([(MTTableView *)self disableRefreshControlWhileEditing]&& [(MTTableView *)self isEditing])
  {

    [(MTTableView *)self disablePullToRefresh];
  }

  else
  {
    refreshControl = self->_refreshControl;
    if (refreshControl)
    {
      v4 = [(UIRefreshControl *)refreshControl superview];

      if (!v4)
      {

        [(MTTableView *)self enablePullToRefresh];
      }
    }
  }
}

- (void)disablePullToRefresh
{
  v2.receiver = self;
  v2.super_class = MTTableView;
  [(MTTableView *)&v2 setRefreshControl:0];
}

- (void)enablePullToRefresh
{
  if (![(MTTableView *)self disableRefreshControlWhileEditing]|| ([(MTTableView *)self isEditing]& 1) == 0)
  {
    refreshControl = self->_refreshControl;
    if (refreshControl)
    {
      v4 = [(UIRefreshControl *)refreshControl superview];

      if (v4)
      {
        v5 = self->_refreshControl;
        v6.receiver = self;
        v6.super_class = MTTableView;
        [(MTTableView *)&v6 setRefreshControl:v5];
      }
    }
  }
}

- (void)setRefreshControl:(id)a3
{
  objc_storeStrong(&self->_refreshControl, a3);
  v5 = a3;
  v6.receiver = self;
  v6.super_class = MTTableView;
  [(MTTableView *)&v6 setRefreshControl:v5];

  [(MTTableView *)self updateRefreshControlEnabledState];
}

- (UIEdgeInsets)insetsFromRefreshControl
{
  v3 = [(MTTableView *)self refreshControl];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    v5 = [(MTTableView *)self refreshControl];
    [v5 _appliedInsets];
    top = v6;
    left = v8;
    bottom = v10;
    right = v12;
  }

  else
  {
    top = UIEdgeInsetsZero.top;
    left = UIEdgeInsetsZero.left;
    bottom = UIEdgeInsetsZero.bottom;
    right = UIEdgeInsetsZero.right;
  }

  v14 = top;
  v15 = left;
  v16 = bottom;
  v17 = right;
  result.right = v17;
  result.bottom = v16;
  result.left = v15;
  result.top = v14;
  return result;
}

- (void)setContentOffset:(CGPoint)a3
{
  v3.receiver = self;
  v3.super_class = MTTableView;
  [(MTTableView *)&v3 setContentOffset:a3.x, a3.y];
}

- (void)setContentInset:(UIEdgeInsets)a3
{
  v3.receiver = self;
  v3.super_class = MTTableView;
  [(MTTableView *)&v3 setContentInset:a3.top, a3.left, a3.bottom, a3.right];
}

- (void)setContentSize:(CGSize)a3
{
  v3.receiver = self;
  v3.super_class = MTTableView;
  [(MTTableView *)&v3 setContentSize:a3.width, a3.height];
}

- (void)encodeRestorableStateWithCoder:(id)a3
{
  v3.receiver = self;
  v3.super_class = MTTableView;
  [(MTTableView *)&v3 encodeRestorableStateWithCoder:a3];
}

- (void)decodeRestorableStateWithCoder:(id)a3
{
  v3.receiver = self;
  v3.super_class = MTTableView;
  [(MTTableView *)&v3 decodeRestorableStateWithCoder:a3];
}

- (id)preferredFocusEnvironments
{
  v12.receiver = self;
  v12.super_class = MTTableView;
  v3 = [(MTTableView *)&v12 preferredFocusEnvironments];
  v4 = v3;
  v5 = &__NSArray0__struct;
  if (v3)
  {
    v5 = v3;
  }

  v6 = v5;

  v7 = [(MTTableView *)self tableHeaderView];
  v8 = [v7 canBecomeFocused];

  if (v8)
  {
    v9 = [v6 mutableCopy];
    v10 = [(MTTableView *)self tableHeaderView];
    [v9 insertObject:v10 atIndex:0];

    v6 = v9;
  }

  return v6;
}

- (BOOL)allowsFooterViewsToFloat
{
  if ([(MTTableView *)self sectionFooterFloatingDisabled])
  {
    return 0;
  }

  return [(MTTableView *)self _headerAndFooterViewsFloat];
}

@end