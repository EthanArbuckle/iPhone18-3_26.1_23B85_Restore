@interface CarContentSizedTableView
- (CGSize)intrinsicContentSize;
- (CarContentSizedTableView)initWithFrame:(CGRect)frame style:(int64_t)style;
- (void)setAlwaysBounceHorizontal:(BOOL)horizontal;
- (void)setAlwaysBounceVertical:(BOOL)vertical;
- (void)setContentSize:(CGSize)size;
@end

@implementation CarContentSizedTableView

- (void)setAlwaysBounceVertical:(BOOL)vertical
{
  v3.receiver = self;
  v3.super_class = CarContentSizedTableView;
  [(CarContentSizedTableView *)&v3 setAlwaysBounceVertical:0];
}

- (void)setAlwaysBounceHorizontal:(BOOL)horizontal
{
  v3.receiver = self;
  v3.super_class = CarContentSizedTableView;
  [(CarContentSizedTableView *)&v3 setAlwaysBounceHorizontal:0];
}

- (CGSize)intrinsicContentSize
{
  [(CarContentSizedTableView *)self layoutIfNeeded];
  [(CarContentSizedTableView *)self contentSize];
  v4 = UIViewNoIntrinsicMetric;
  result.height = v3;
  result.width = v4;
  return result;
}

- (void)setContentSize:(CGSize)size
{
  v4.receiver = self;
  v4.super_class = CarContentSizedTableView;
  [(CarContentSizedTableView *)&v4 setContentSize:size.width, size.height];
  [(CarContentSizedTableView *)self invalidateIntrinsicContentSize];
}

- (CarContentSizedTableView)initWithFrame:(CGRect)frame style:(int64_t)style
{
  v7.receiver = self;
  v7.super_class = CarContentSizedTableView;
  v4 = [(CarContentSizedTableView *)&v7 initWithFrame:style style:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v5 = v4;
  if (v4)
  {
    [(CarContentSizedTableView *)v4 setAlwaysBounceHorizontal:0];
    [(CarContentSizedTableView *)v5 setAlwaysBounceVertical:0];
    [(CarContentSizedTableView *)v5 setShowsHorizontalScrollIndicator:0];
    [(CarContentSizedTableView *)v5 setShowsVerticalScrollIndicator:0];
  }

  return v5;
}

@end