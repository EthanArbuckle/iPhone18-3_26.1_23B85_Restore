@interface AXContentSizedTableView
- (void)layoutSubviews;
- (void)reloadData;
@end

@implementation AXContentSizedTableView

- (void)reloadData
{
  v3.receiver = self;
  v3.super_class = AXContentSizedTableView;
  [(AXContentSizedTableView *)&v3 reloadData];
  [(AXContentSizedTableView *)self invalidateIntrinsicContentSize];
  [(AXContentSizedTableView *)self layoutIfNeeded];
}

- (void)layoutSubviews
{
  [(AXContentSizedTableView *)self invalidateIntrinsicContentSize];
  v3.receiver = self;
  v3.super_class = AXContentSizedTableView;
  [(AXContentSizedTableView *)&v3 layoutSubviews];
}

@end