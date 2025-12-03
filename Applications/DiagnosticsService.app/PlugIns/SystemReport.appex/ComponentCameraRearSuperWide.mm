@interface ComponentCameraRearSuperWide
- (BOOL)isPresent;
@end

@implementation ComponentCameraRearSuperWide

- (BOOL)isPresent
{
  iORegClassName = [(ComponentCameraBase *)self IORegClassName];
  v3 = iORegClassName != 0;

  return v3 & MGGetBoolAnswer();
}

@end