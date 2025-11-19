@interface ComponentCameraRearTelephoto
- (BOOL)isPresent;
@end

@implementation ComponentCameraRearTelephoto

- (BOOL)isPresent
{
  v2 = [(ComponentCameraBase *)self IORegClassName];
  v3 = v2 != 0;

  return v3 & MGGetBoolAnswer();
}

@end