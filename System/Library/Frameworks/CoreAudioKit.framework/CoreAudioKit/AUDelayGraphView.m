@interface AUDelayGraphView
- (BOOL)accessibilityActivate;
- (void)accessibilityDecrement;
- (void)accessibilityIncrement;
- (void)tintColorDidChange;
@end

@implementation AUDelayGraphView

- (void)accessibilityIncrement
{
  v2 = self;
  sub_23711C838();
}

- (void)accessibilityDecrement
{
  v2 = self;
  sub_23711CA34();
}

- (BOOL)accessibilityActivate
{
  v2 = self;
  sub_23711CC30();

  return 1;
}

- (void)tintColorDidChange
{
  v2 = self;
  sub_23711FE5C();
}

@end