@interface FTRegFaceTimeServiceDelegate
- (BOOL)serviceIsAvailable;
@end

@implementation FTRegFaceTimeServiceDelegate

- (BOOL)serviceIsAvailable
{
  v2 = +[FTDeviceSupport sharedInstance];
  v3 = [v2 faceTimeAvailable];

  return v3;
}

@end