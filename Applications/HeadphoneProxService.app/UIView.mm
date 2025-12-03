@interface UIView
- (void)pinToOther:(void *)other;
@end

@implementation UIView

- (void)pinToOther:(void *)other
{
  otherCopy = other;
  selfCopy = self;
  UIView.pinToOther(layoutGuide:)(otherCopy);
}

@end