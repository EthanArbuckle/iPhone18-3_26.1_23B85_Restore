@interface ContentSizedTableView
- (CGSize)intrinsicContentSize;
- (ContentSizedTableView)initWithFrame:(CGRect)a3 style:(int64_t)a4;
- (void)setAlwaysBounceVertical:(BOOL)a3;
- (void)setContentSize:(CGSize)a3;
@end

@implementation ContentSizedTableView

- (void)setAlwaysBounceVertical:(BOOL)a3
{
  v3.receiver = self;
  v3.super_class = ContentSizedTableView;
  [(ContentSizedTableView *)&v3 setAlwaysBounceVertical:0];
}

- (CGSize)intrinsicContentSize
{
  [(ContentSizedTableView *)self layoutIfNeeded];
  [(ContentSizedTableView *)self contentSize];
  v4 = UIViewNoIntrinsicMetric;
  result.height = v3;
  result.width = v4;
  return result;
}

- (void)setContentSize:(CGSize)a3
{
  v4.receiver = self;
  v4.super_class = ContentSizedTableView;
  [(ContentSizedTableView *)&v4 setContentSize:a3.width, a3.height];
  [(ContentSizedTableView *)self invalidateIntrinsicContentSize];
}

- (ContentSizedTableView)initWithFrame:(CGRect)a3 style:(int64_t)a4
{
  v7.receiver = self;
  v7.super_class = ContentSizedTableView;
  v4 = [(ContentSizedTableView *)&v7 initWithFrame:a4 style:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v5 = v4;
  if (v4)
  {
    [(ContentSizedTableView *)v4 setAlwaysBounceVertical:0];
  }

  return v5;
}

@end