@interface COSContentSizedTableView
- (CGSize)intrinsicContentSize;
- (COSContentSizedTableView)initWithFrame:(CGRect)frame style:(int64_t)style;
- (void)setContentSize:(CGSize)size;
@end

@implementation COSContentSizedTableView

- (COSContentSizedTableView)initWithFrame:(CGRect)frame style:(int64_t)style
{
  v7.receiver = self;
  v7.super_class = COSContentSizedTableView;
  v4 = [(COSContentSizedTableView *)&v7 initWithFrame:style style:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v5 = v4;
  if (v4)
  {
    [(COSContentSizedTableView *)v4 setScrollEnabled:0];
  }

  return v5;
}

- (void)setContentSize:(CGSize)size
{
  v4.receiver = self;
  v4.super_class = COSContentSizedTableView;
  [(COSContentSizedTableView *)&v4 setContentSize:size.width, size.height];
  [(COSContentSizedTableView *)self invalidateIntrinsicContentSize];
}

- (CGSize)intrinsicContentSize
{
  [(COSContentSizedTableView *)self layoutIfNeeded];
  [(COSContentSizedTableView *)self contentSize];
  v4 = UIViewNoIntrinsicMetric;
  result.height = v3;
  result.width = v4;
  return result;
}

@end