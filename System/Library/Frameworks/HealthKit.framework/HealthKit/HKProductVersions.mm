@interface HKProductVersions
+ (id)productBuildVersionForDeviceType:(int64_t)type;
@end

@implementation HKProductVersions

+ (id)productBuildVersionForDeviceType:(int64_t)type
{
  switch(type)
  {
    case 0:
      v7 = +[_HKBehavior sharedBehavior];
      isAppleWatch = [v7 isAppleWatch];

      if (!isAppleWatch)
      {
        goto LABEL_6;
      }

      goto LABEL_8;
    case 1:
      v4 = +[_HKBehavior sharedBehavior];
      isAppleWatch2 = [v4 isAppleWatch];

      if (isAppleWatch2)
      {
LABEL_6:
        activePairedDeviceSystemBuildVersion = +[_HKBehavior currentOSBuild];
        goto LABEL_10;
      }

LABEL_8:
      activePairedDeviceSystemBuildVersion = [self activePairedDeviceSystemBuildVersion];
      goto LABEL_10;
    case 2:
      goto LABEL_6;
  }

  activePairedDeviceSystemBuildVersion = 0;
LABEL_10:

  return activePairedDeviceSystemBuildVersion;
}

@end