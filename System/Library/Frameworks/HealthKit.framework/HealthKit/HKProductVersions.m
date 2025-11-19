@interface HKProductVersions
+ (id)productBuildVersionForDeviceType:(int64_t)a3;
@end

@implementation HKProductVersions

+ (id)productBuildVersionForDeviceType:(int64_t)a3
{
  switch(a3)
  {
    case 0:
      v7 = +[_HKBehavior sharedBehavior];
      v8 = [v7 isAppleWatch];

      if (!v8)
      {
        goto LABEL_6;
      }

      goto LABEL_8;
    case 1:
      v4 = +[_HKBehavior sharedBehavior];
      v5 = [v4 isAppleWatch];

      if (v5)
      {
LABEL_6:
        v6 = +[_HKBehavior currentOSBuild];
        goto LABEL_10;
      }

LABEL_8:
      v6 = [a1 activePairedDeviceSystemBuildVersion];
      goto LABEL_10;
    case 2:
      goto LABEL_6;
  }

  v6 = 0;
LABEL_10:

  return v6;
}

@end