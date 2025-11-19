@interface ComponentCameraRearSuperWide
- (BOOL)isPresent;
@end

@implementation ComponentCameraRearSuperWide

- (BOOL)isPresent
{
  v2 = [(ComponentCameraBase *)self IORegClassName];
  v3 = v2 != 0;

  return v3 & MGGetBoolAnswer();
}

@end