@interface ContentSizedTableView
- (CGSize)intrinsicContentSize;
- (ContentSizedTableView)initWithFrame:(CGRect)frame style:(int64_t)style;
- (void)setAlwaysBounceVertical:(BOOL)vertical;
- (void)setContentSize:(CGSize)size;
@end

@implementation ContentSizedTableView

- (void)setAlwaysBounceVertical:(BOOL)vertical
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

- (void)setContentSize:(CGSize)size
{
  v4.receiver = self;
  v4.super_class = ContentSizedTableView;
  [(ContentSizedTableView *)&v4 setContentSize:size.width, size.height];
  [(ContentSizedTableView *)self invalidateIntrinsicContentSize];
}

- (ContentSizedTableView)initWithFrame:(CGRect)frame style:(int64_t)style
{
  v7.receiver = self;
  v7.super_class = ContentSizedTableView;
  v4 = [(ContentSizedTableView *)&v7 initWithFrame:style style:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v5 = v4;
  if (v4)
  {
    [(ContentSizedTableView *)v4 setAlwaysBounceVertical:0];
  }

  return v5;
}

@end