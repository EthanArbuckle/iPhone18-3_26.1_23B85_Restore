@interface UserProfileAnalyticsManager
+ (void)captureAccountDidAppearWithAvailableActions:(id)actions signedIntoICloud:(BOOL)cloud;
+ (void)captureDisableTransitPreferenceForMode:(unint64_t)mode;
+ (void)captureEnableTransitPreferenceForMode:(unint64_t)mode;
+ (void)captureEnterAccountTapAction;
+ (void)capturePreferredDirectionsForTransportType:(int64_t)type;
+ (void)captureTapActionWithUserProfileLinkType:(int64_t)type availableActions:(id)actions signedIntoICloud:(BOOL)cloud;
@end

@implementation UserProfileAnalyticsManager

+ (void)captureEnableTransitPreferenceForMode:(unint64_t)mode
{
  v3 = mode - 1;
  if (mode - 1 <= 7 && ((0x8Bu >> v3) & 1) != 0)
  {
    [self captureTravelPreferencesUserAction:dword_101215B60[v3]];
  }
}

+ (void)captureDisableTransitPreferenceForMode:(unint64_t)mode
{
  v3 = mode - 1;
  if (mode - 1 <= 7 && ((0x8Bu >> v3) & 1) != 0)
  {
    [self captureTravelPreferencesUserAction:dword_101215B40[v3]];
  }
}

+ (void)capturePreferredDirectionsForTransportType:(int64_t)type
{
  if (type <= 4 && ((0x17u >> type) & 1) != 0)
  {
    [GEOAPPortal captureUserAction:dword_101215B2C[type] target:20 value:0];
  }
}

+ (void)captureTapActionWithUserProfileLinkType:(int64_t)type availableActions:(id)actions signedIntoICloud:(BOOL)cloud
{
  cloudCopy = cloud;
  actionsCopy = actions;
  v8 = [NSNumber numberWithBool:cloudCopy];
  if (type <= 2)
  {
    if (type == 1)
    {
      [GEOAPPortal captureUserAction:164 target:29 value:0];
      v9 = 178;
    }

    else if (type == 2)
    {
      v9 = 179;
    }

    else
    {
      v9 = 0;
    }
  }

  else
  {
    switch(type)
    {
      case 3:
        [GEOAPPortal captureUserAction:2109 target:29 value:0];
        v9 = 166;
        break;
      case 4:
        v9 = 203;
        break;
      case 5:
        v9 = 380;
        [GEOAPPortal captureUserAction:380 target:29 value:0];
        break;
      default:
        v9 = 0;
        break;
    }
  }

  v14[0] = 0;
  v14[1] = v14;
  v14[2] = 0x2020000000;
  v14[3] = 0;
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_100CF7E18;
  v11[3] = &unk_101650E80;
  v13 = v14;
  v10 = actionsCopy;
  v12 = v10;
  [GEOAPPortal captureUserAccountUserAction:v9 target:29 value:0 signedIntoIcloud:v8 possibleActionsReadBlock:v11];

  _Block_object_dispose(v14, 8);
}

+ (void)captureAccountDidAppearWithAvailableActions:(id)actions signedIntoICloud:(BOOL)cloud
{
  cloudCopy = cloud;
  actionsCopy = actions;
  v14[0] = 0;
  v14[1] = v14;
  v14[2] = 0x2020000000;
  v14[3] = 0;
  v6 = [NSNumber numberWithBool:cloudCopy];
  v8 = _NSConcreteStackBlock;
  v9 = 3221225472;
  v10 = sub_100CF7FD8;
  v11 = &unk_101650E80;
  v13 = v14;
  v7 = actionsCopy;
  v12 = v7;
  [GEOAPPortal captureUserAccountUserAction:160 target:29 value:0 signedIntoIcloud:v6 possibleActionsReadBlock:&v8];

  [GEOAPPortal captureUserAction:21 target:29 value:0, v8, v9, v10, v11];
  _Block_object_dispose(v14, 8);
}

+ (void)captureEnterAccountTapAction
{
  [GEOAPPortal captureUserAccountUserAction:201 target:8 value:0 signedIntoIcloud:0 possibleActionsReadBlock:0];

  [GEOAPPortal captureUserAction:172 target:8 value:0];
}

@end