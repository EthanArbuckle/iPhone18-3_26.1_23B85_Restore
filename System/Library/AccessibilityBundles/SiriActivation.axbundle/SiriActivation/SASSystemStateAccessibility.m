@interface SASSystemStateAccessibility
- (BOOL)isConnectedToEyesFreeDevice;
@end

@implementation SASSystemStateAccessibility

- (BOOL)isConnectedToEyesFreeDevice
{
  v3 = objc_opt_new();
  v4 = [v3 isClarityBoardEnabled];

  if (v4)
  {
    return 0;
  }

  v6.receiver = self;
  v6.super_class = SASSystemStateAccessibility;
  return [(SASSystemStateAccessibility *)&v6 isConnectedToEyesFreeDevice];
}

@end