@interface UIView
- (void)pinToOther:(void *)a3;
@end

@implementation UIView

- (void)pinToOther:(void *)a3
{
  v4 = a3;
  v5 = a1;
  UIView.pinToOther(layoutGuide:)(v4);
}

@end