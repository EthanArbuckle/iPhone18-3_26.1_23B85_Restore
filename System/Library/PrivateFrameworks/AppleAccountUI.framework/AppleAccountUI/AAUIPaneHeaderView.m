@interface AAUIPaneHeaderView
- (double)innerHeaderMaxY;
- (void)layoutSubviews;
- (void)setDetailText:(id)a3;
- (void)setTitleText:(id)a3;
@end

@implementation AAUIPaneHeaderView

- (void)setTitleText:(id)a3
{
  v3.receiver = self;
  v3.super_class = AAUIPaneHeaderView;
  [(AAUIPaneHeaderView *)&v3 setTitle:a3];
}

- (void)setDetailText:(id)a3
{
  v3.receiver = self;
  v3.super_class = AAUIPaneHeaderView;
  [(AAUIPaneHeaderView *)&v3 setDetailText:a3];
}

- (void)layoutSubviews
{
  v2.receiver = self;
  v2.super_class = AAUIPaneHeaderView;
  [(AAUIPaneHeaderView *)&v2 layoutSubviews];
}

- (double)innerHeaderMaxY
{
  v2 = [(AAUIPaneHeaderView *)self detailLabel];
  [v2 frame];
  MaxY = CGRectGetMaxY(v5);

  return MaxY;
}

@end