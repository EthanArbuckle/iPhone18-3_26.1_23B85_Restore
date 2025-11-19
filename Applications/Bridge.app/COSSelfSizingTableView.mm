@interface COSSelfSizingTableView
- (void)layoutSubviews;
- (void)reloadData;
@end

@implementation COSSelfSizingTableView

- (void)reloadData
{
  v3.receiver = self;
  v3.super_class = COSSelfSizingTableView;
  [(COSSelfSizingTableView *)&v3 reloadData];
  [(COSSelfSizingTableView *)self invalidateIntrinsicContentSize];
  [(COSSelfSizingTableView *)self layoutIfNeeded];
}

- (void)layoutSubviews
{
  [(COSSelfSizingTableView *)self invalidateIntrinsicContentSize];
  v3.receiver = self;
  v3.super_class = COSSelfSizingTableView;
  [(COSSelfSizingTableView *)&v3 layoutSubviews];
}

@end