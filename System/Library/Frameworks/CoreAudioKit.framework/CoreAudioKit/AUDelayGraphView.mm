@interface AUDelayGraphView
- (BOOL)accessibilityActivate;
- (void)accessibilityDecrement;
- (void)accessibilityIncrement;
- (void)tintColorDidChange;
@end

@implementation AUDelayGraphView

- (void)accessibilityIncrement
{
  selfCopy = self;
  sub_23711C838();
}

- (void)accessibilityDecrement
{
  selfCopy = self;
  sub_23711CA34();
}

- (BOOL)accessibilityActivate
{
  selfCopy = self;
  sub_23711CC30();

  return 1;
}

- (void)tintColorDidChange
{
  selfCopy = self;
  sub_23711FE5C();
}

@end