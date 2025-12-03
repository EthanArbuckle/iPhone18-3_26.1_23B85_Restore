@interface ComponentCameraRearTelephoto
- (BOOL)isPresent;
@end

@implementation ComponentCameraRearTelephoto

- (BOOL)isPresent
{
  iORegClassName = [(ComponentCameraBase *)self IORegClassName];
  v3 = iORegClassName != 0;

  return v3 & MGGetBoolAnswer();
}

@end