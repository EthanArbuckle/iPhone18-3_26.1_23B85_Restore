@interface MTTableView
- (BOOL)allowsFooterViewsToFloat;
- (UIEdgeInsets)insetsFromRefreshControl;
- (id)preferredFocusEnvironments;
- (void)decodeRestorableStateWithCoder:(id)coder;
- (void)disablePullToRefresh;
- (void)enablePullToRefresh;
- (void)encodeRestorableStateWithCoder:(id)coder;
- (void)layoutSubviews;
- (void)setBottomFillColor:(id)color;
- (void)setContentInset:(UIEdgeInsets)inset;
- (void)setContentOffset:(CGPoint)offset;
- (void)setContentSize:(CGSize)size;
- (void)setDisableRefreshControlWhileEditing:(BOOL)editing;
- (void)setEditing:(BOOL)editing animated:(BOOL)animated;
- (void)setOverlayView:(id)view;
- (void)setRefreshControl:(id)control;
- (void)setTableFooterView:(id)view;
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
    tableHeaderView = [(MTTableView *)self tableHeaderView];
    [tableHeaderView frame];
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
    backgroundView = [(MTTableView *)self backgroundView];

    bottomFillView = self->_bottomFillView;
    if (backgroundView)
    {
      backgroundView2 = [(MTTableView *)self backgroundView];
      [(MTTableView *)self insertSubview:bottomFillView aboveSubview:backgroundView2];
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

  refreshControl = [(MTTableView *)self refreshControl];
  if ([refreshControl isRefreshing])
  {
    adjustContentOffsetForRefreshControlAsNeeded = [(MTTableView *)self adjustContentOffsetForRefreshControlAsNeeded];

    if (adjustContentOffsetForRefreshControlAsNeeded)
    {
      [(MTTableView *)self contentOffset];
      v31 = v30;
      refreshControl2 = [(MTTableView *)self refreshControl];
      [refreshControl2 frame];
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

- (void)setTableFooterView:(id)view
{
  viewCopy = view;
  tableFooterView = [(MTTableView *)self tableFooterView];

  if (tableFooterView != viewCopy)
  {
    v6.receiver = self;
    v6.super_class = MTTableView;
    [(MTTableView *)&v6 setTableFooterView:viewCopy];
  }
}

- (void)setOverlayView:(id)view
{
  viewCopy = view;
  [(UIView *)self->_overlayView removeFromSuperview];
  overlayView = self->_overlayView;
  self->_overlayView = viewCopy;
  v6 = viewCopy;

  [(MTTableView *)self addSubview:v6];
}

- (void)setBottomFillColor:(id)color
{
  colorCopy = color;
  objc_storeStrong(&self->_bottomFillColor, color);
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

  [(UIView *)bottomFillView setBackgroundColor:colorCopy];
  [(MTTableView *)self addSubview:self->_bottomFillView];
}

- (void)setEditing:(BOOL)editing animated:(BOOL)animated
{
  v5.receiver = self;
  v5.super_class = MTTableView;
  [(MTTableView *)&v5 setEditing:editing animated:animated];
  [(MTTableView *)self updateRefreshControlEnabledState];
}

- (void)setDisableRefreshControlWhileEditing:(BOOL)editing
{
  if (self->_disableRefreshControlWhileEditing != editing)
  {
    self->_disableRefreshControlWhileEditing = editing;
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
      superview = [(UIRefreshControl *)refreshControl superview];

      if (!superview)
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
      superview = [(UIRefreshControl *)refreshControl superview];

      if (superview)
      {
        v5 = self->_refreshControl;
        v6.receiver = self;
        v6.super_class = MTTableView;
        [(MTTableView *)&v6 setRefreshControl:v5];
      }
    }
  }
}

- (void)setRefreshControl:(id)control
{
  objc_storeStrong(&self->_refreshControl, control);
  controlCopy = control;
  v6.receiver = self;
  v6.super_class = MTTableView;
  [(MTTableView *)&v6 setRefreshControl:controlCopy];

  [(MTTableView *)self updateRefreshControlEnabledState];
}

- (UIEdgeInsets)insetsFromRefreshControl
{
  refreshControl = [(MTTableView *)self refreshControl];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    refreshControl2 = [(MTTableView *)self refreshControl];
    [refreshControl2 _appliedInsets];
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

- (void)setContentOffset:(CGPoint)offset
{
  v3.receiver = self;
  v3.super_class = MTTableView;
  [(MTTableView *)&v3 setContentOffset:offset.x, offset.y];
}

- (void)setContentInset:(UIEdgeInsets)inset
{
  v3.receiver = self;
  v3.super_class = MTTableView;
  [(MTTableView *)&v3 setContentInset:inset.top, inset.left, inset.bottom, inset.right];
}

- (void)setContentSize:(CGSize)size
{
  v3.receiver = self;
  v3.super_class = MTTableView;
  [(MTTableView *)&v3 setContentSize:size.width, size.height];
}

- (void)encodeRestorableStateWithCoder:(id)coder
{
  v3.receiver = self;
  v3.super_class = MTTableView;
  [(MTTableView *)&v3 encodeRestorableStateWithCoder:coder];
}

- (void)decodeRestorableStateWithCoder:(id)coder
{
  v3.receiver = self;
  v3.super_class = MTTableView;
  [(MTTableView *)&v3 decodeRestorableStateWithCoder:coder];
}

- (id)preferredFocusEnvironments
{
  v12.receiver = self;
  v12.super_class = MTTableView;
  preferredFocusEnvironments = [(MTTableView *)&v12 preferredFocusEnvironments];
  v4 = preferredFocusEnvironments;
  v5 = &__NSArray0__struct;
  if (preferredFocusEnvironments)
  {
    v5 = preferredFocusEnvironments;
  }

  v6 = v5;

  tableHeaderView = [(MTTableView *)self tableHeaderView];
  canBecomeFocused = [tableHeaderView canBecomeFocused];

  if (canBecomeFocused)
  {
    v9 = [v6 mutableCopy];
    tableHeaderView2 = [(MTTableView *)self tableHeaderView];
    [v9 insertObject:tableHeaderView2 atIndex:0];

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