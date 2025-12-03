@interface CHASActivitySetupContentSizedTableView
- (CGSize)intrinsicContentSize;
- (void)setContentSize:(CGSize)size;
@end

@implementation CHASActivitySetupContentSizedTableView

- (void)setContentSize:(CGSize)size
{
  v4.receiver = self;
  v4.super_class = CHASActivitySetupContentSizedTableView;
  [(CHASActivitySetupContentSizedTableView *)&v4 setContentSize:size.width, size.height];
  [(CHASActivitySetupContentSizedTableView *)self invalidateIntrinsicContentSize];
}

- (CGSize)intrinsicContentSize
{
  [(CHASActivitySetupContentSizedTableView *)self layoutIfNeeded];
  [(CHASActivitySetupContentSizedTableView *)self contentSize];
  v4 = UIViewNoIntrinsicMetric;
  result.height = v3;
  result.width = v4;
  return result;
}

@end