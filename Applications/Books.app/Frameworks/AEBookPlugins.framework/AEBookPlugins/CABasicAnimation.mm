@interface CABasicAnimation
- (void)ae_reverseValues;
@end

@implementation CABasicAnimation

- (void)ae_reverseValues
{
  selfCopy = self;
  CABasicAnimation.reverseValues()();
}

@end