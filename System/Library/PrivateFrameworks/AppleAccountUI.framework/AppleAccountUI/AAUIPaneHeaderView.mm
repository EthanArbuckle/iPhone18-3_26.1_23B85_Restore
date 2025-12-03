@interface AAUIPaneHeaderView
- (double)innerHeaderMaxY;
- (void)layoutSubviews;
- (void)setDetailText:(id)text;
- (void)setTitleText:(id)text;
@end

@implementation AAUIPaneHeaderView

- (void)setTitleText:(id)text
{
  v3.receiver = self;
  v3.super_class = AAUIPaneHeaderView;
  [(AAUIPaneHeaderView *)&v3 setTitle:text];
}

- (void)setDetailText:(id)text
{
  v3.receiver = self;
  v3.super_class = AAUIPaneHeaderView;
  [(AAUIPaneHeaderView *)&v3 setDetailText:text];
}

- (void)layoutSubviews
{
  v2.receiver = self;
  v2.super_class = AAUIPaneHeaderView;
  [(AAUIPaneHeaderView *)&v2 layoutSubviews];
}

- (double)innerHeaderMaxY
{
  detailLabel = [(AAUIPaneHeaderView *)self detailLabel];
  [detailLabel frame];
  MaxY = CGRectGetMaxY(v5);

  return MaxY;
}

@end