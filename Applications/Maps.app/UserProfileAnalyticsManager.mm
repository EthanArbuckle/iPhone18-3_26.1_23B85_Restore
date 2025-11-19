@interface UserProfileAnalyticsManager
+ (void)captureAccountDidAppearWithAvailableActions:(id)a3 signedIntoICloud:(BOOL)a4;
+ (void)captureDisableTransitPreferenceForMode:(unint64_t)a3;
+ (void)captureEnableTransitPreferenceForMode:(unint64_t)a3;
+ (void)captureEnterAccountTapAction;
+ (void)capturePreferredDirectionsForTransportType:(int64_t)a3;
+ (void)captureTapActionWithUserProfileLinkType:(int64_t)a3 availableActions:(id)a4 signedIntoICloud:(BOOL)a5;
@end

@implementation UserProfileAnalyticsManager

+ (void)captureEnableTransitPreferenceForMode:(unint64_t)a3
{
  v3 = a3 - 1;
  if (a3 - 1 <= 7 && ((0x8Bu >> v3) & 1) != 0)
  {
    [a1 captureTravelPreferencesUserAction:dword_101215B60[v3]];
  }
}

+ (void)captureDisableTransitPreferenceForMode:(unint64_t)a3
{
  v3 = a3 - 1;
  if (a3 - 1 <= 7 && ((0x8Bu >> v3) & 1) != 0)
  {
    [a1 captureTravelPreferencesUserAction:dword_101215B40[v3]];
  }
}

+ (void)capturePreferredDirectionsForTransportType:(int64_t)a3
{
  if (a3 <= 4 && ((0x17u >> a3) & 1) != 0)
  {
    [GEOAPPortal captureUserAction:dword_101215B2C[a3] target:20 value:0];
  }
}

+ (void)captureTapActionWithUserProfileLinkType:(int64_t)a3 availableActions:(id)a4 signedIntoICloud:(BOOL)a5
{
  v5 = a5;
  v7 = a4;
  v8 = [NSNumber numberWithBool:v5];
  if (a3 <= 2)
  {
    if (a3 == 1)
    {
      [GEOAPPortal captureUserAction:164 target:29 value:0];
      v9 = 178;
    }

    else if (a3 == 2)
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
    switch(a3)
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
  v10 = v7;
  v12 = v10;
  [GEOAPPortal captureUserAccountUserAction:v9 target:29 value:0 signedIntoIcloud:v8 possibleActionsReadBlock:v11];

  _Block_object_dispose(v14, 8);
}

+ (void)captureAccountDidAppearWithAvailableActions:(id)a3 signedIntoICloud:(BOOL)a4
{
  v4 = a4;
  v5 = a3;
  v14[0] = 0;
  v14[1] = v14;
  v14[2] = 0x2020000000;
  v14[3] = 0;
  v6 = [NSNumber numberWithBool:v4];
  v8 = _NSConcreteStackBlock;
  v9 = 3221225472;
  v10 = sub_100CF7FD8;
  v11 = &unk_101650E80;
  v13 = v14;
  v7 = v5;
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