@interface TSSIMUnlockListContainerView
- (void)layoutSubviews;
- (void)setFooterView:(id)view;
- (void)setHeaderView:(id)view;
- (void)setTableView:(id)view;
@end

@implementation TSSIMUnlockListContainerView

- (void)layoutSubviews
{
  v15.receiver = self;
  v15.super_class = TSSIMUnlockListContainerView;
  [(TSSIMUnlockListContainerView *)&v15 layoutSubviews];
  [(TSSIMUnlockListContainerView *)self bounds];
  v4 = v3;
  v6 = v5;
  [(UIView *)self->_headerView sizeThatFits:v3, v5];
  v8 = v7;
  v10 = v9;
  v16.origin.x = 0.0;
  v16.origin.y = 0.0;
  v16.size.width = v8;
  v16.size.height = v10;
  MaxY = CGRectGetMaxY(v16);
  [(TSSIMUnlockListContainerView *)self safeAreaInsets];
  v13 = v6 - v10 + -110.0 - v12;
  v17.origin.x = 0.0;
  v17.origin.y = MaxY;
  v17.size.width = v4;
  v17.size.height = v13;
  v14 = CGRectGetMaxY(v17);
  [(UIView *)self->_headerView setFrame:0.0, 0.0, v8, v10];
  [(UITableView *)self->_tableView setFrame:0.0, MaxY, v4, v13];
  [(UIView *)self->_footerView setFrame:0.0, v14, v4, 110.0];
}

- (void)setHeaderView:(id)view
{
  viewCopy = view;
  headerView = self->_headerView;
  if (headerView != viewCopy)
  {
    v7 = viewCopy;
    [(UIView *)headerView removeFromSuperview];
    objc_storeStrong(&self->_headerView, view);
    [(TSSIMUnlockListContainerView *)self addSubview:self->_headerView];
    headerView = [(TSSIMUnlockListContainerView *)self setNeedsLayout];
    viewCopy = v7;
  }

  _objc_release_x1(headerView, viewCopy);
}

- (void)setTableView:(id)view
{
  viewCopy = view;
  tableView = self->_tableView;
  if (tableView != viewCopy)
  {
    v7 = viewCopy;
    [(UITableView *)tableView removeFromSuperview];
    objc_storeStrong(&self->_tableView, view);
    [(TSSIMUnlockListContainerView *)self addSubview:self->_tableView];
    tableView = [(TSSIMUnlockListContainerView *)self setNeedsLayout];
    viewCopy = v7;
  }

  _objc_release_x1(tableView, viewCopy);
}

- (void)setFooterView:(id)view
{
  viewCopy = view;
  footerView = self->_footerView;
  if (footerView != viewCopy)
  {
    v7 = viewCopy;
    [(UIView *)footerView removeFromSuperview];
    objc_storeStrong(&self->_footerView, view);
    [(TSSIMUnlockListContainerView *)self addSubview:self->_footerView];
    footerView = [(TSSIMUnlockListContainerView *)self setNeedsLayout];
    viewCopy = v7;
  }

  _objc_release_x1(footerView, viewCopy);
}

@end