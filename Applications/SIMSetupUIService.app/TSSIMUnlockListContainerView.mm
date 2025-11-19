@interface TSSIMUnlockListContainerView
- (void)layoutSubviews;
- (void)setFooterView:(id)a3;
- (void)setHeaderView:(id)a3;
- (void)setTableView:(id)a3;
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

- (void)setHeaderView:(id)a3
{
  v5 = a3;
  headerView = self->_headerView;
  if (headerView != v5)
  {
    v7 = v5;
    [(UIView *)headerView removeFromSuperview];
    objc_storeStrong(&self->_headerView, a3);
    [(TSSIMUnlockListContainerView *)self addSubview:self->_headerView];
    headerView = [(TSSIMUnlockListContainerView *)self setNeedsLayout];
    v5 = v7;
  }

  _objc_release_x1(headerView, v5);
}

- (void)setTableView:(id)a3
{
  v5 = a3;
  tableView = self->_tableView;
  if (tableView != v5)
  {
    v7 = v5;
    [(UITableView *)tableView removeFromSuperview];
    objc_storeStrong(&self->_tableView, a3);
    [(TSSIMUnlockListContainerView *)self addSubview:self->_tableView];
    tableView = [(TSSIMUnlockListContainerView *)self setNeedsLayout];
    v5 = v7;
  }

  _objc_release_x1(tableView, v5);
}

- (void)setFooterView:(id)a3
{
  v5 = a3;
  footerView = self->_footerView;
  if (footerView != v5)
  {
    v7 = v5;
    [(UIView *)footerView removeFromSuperview];
    objc_storeStrong(&self->_footerView, a3);
    [(TSSIMUnlockListContainerView *)self addSubview:self->_footerView];
    footerView = [(TSSIMUnlockListContainerView *)self setNeedsLayout];
    v5 = v7;
  }

  _objc_release_x1(footerView, v5);
}

@end