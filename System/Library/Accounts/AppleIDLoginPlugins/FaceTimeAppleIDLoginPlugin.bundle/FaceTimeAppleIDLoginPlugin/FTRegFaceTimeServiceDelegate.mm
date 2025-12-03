@interface FTRegFaceTimeServiceDelegate
- (BOOL)serviceIsAvailable;
@end

@implementation FTRegFaceTimeServiceDelegate

- (BOOL)serviceIsAvailable
{
  v2 = +[FTDeviceSupport sharedInstance];
  faceTimeAvailable = [v2 faceTimeAvailable];

  return faceTimeAvailable;
}

@end