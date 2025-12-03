@interface PHThumperSetupController
+ (BOOL)_userHasAlreadyBeenPrompted;
+ (void)_removeHasShownPromptDefaultIfNecessary;
+ (void)showThumperAvailableDialogIfNecessary;
@end

@implementation PHThumperSetupController

+ (void)showThumperAvailableDialogIfNecessary
{
  if ((+[TUCallCapabilities supportsPrimaryCalling]& 1) == 0)
  {
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1000175AC;
    block[3] = &unk_10010AF00;
    block[4] = self;
    if (qword_100126940 != -1)
    {
      dispatch_once(&qword_100126940, block);
    }

    if (!+[TUCallCapabilities supportsThumperCalling](TUCallCapabilities, "supportsThumperCalling") || (+[TUCallCapabilities isThumperCallingEnabled](TUCallCapabilities, "isThumperCallingEnabled") & 1) != 0 || ([self _userHasAlreadyBeenPrompted] & 1) != 0)
    {
      [self _removeHasShownPromptDefaultIfNecessary];
    }

    else
    {
      v3 = sub_100003B9C();
      if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Showing upgrade-to-Thumper prompt because Thumper can be enabled but is not enabled already, and we haven't shown a prompt to the user already.", buf, 2u);
      }

      v4 = +[NSBundle mainBundle];
      v5 = TUStringKeyForNetworkAndProduct();
      v6 = [v4 localizedStringForKey:v5 value:&stru_10010E930 table:@"General"];
      v7 = [v4 localizedStringForKey:@"THUMPER_UPGRADE_MESSAGE" value:&stru_10010E930 table:@"General"];
      v8 = [v4 localizedStringForKey:@"NOT_NOW" value:&stru_10010E930 table:@"General"];
      v9 = [v4 localizedStringForKey:@"TURN_ON" value:&stru_10010E930 table:@"General"];
      v10 = [IMUserNotification userNotificationWithIdentifier:@"ThumperServiceAvailableNotification" title:v6 message:v7 defaultButton:v9 alternateButton:v8 otherButton:0];
      v11 = v10;
      if (v10)
      {
        [v10 setUsesNotificationCenter:0];
        bundleIdentifier = [v4 bundleIdentifier];
        [v11 setRepresentedApplicationBundle:bundleIdentifier];

        v13 = +[IMUserNotificationCenter sharedInstance];
        [v13 addUserNotification:v11 listener:0 completionHandler:&stru_10010AF40];
      }

      v14 = sub_100003B9C();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v17 = @"HasOfferedTHMPUpgrade";
        _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Setting %@ default because we are prompting the user", buf, 0xCu);
      }

      PHPreferencesSetValue();
    }
  }
}

+ (BOOL)_userHasAlreadyBeenPrompted
{
  v2 = PHPreferencesGetValue();
  bOOLValue = [v2 BOOLValue];

  return bOOLValue;
}

+ (void)_removeHasShownPromptDefaultIfNecessary
{
  if (+[TUCallCapabilities isThumperCallingEnabled](TUCallCapabilities, "isThumperCallingEnabled") && [self _userHasAlreadyBeenPrompted])
  {
    v3 = sub_100003B9C();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v4 = 138412290;
      v5 = @"HasOfferedTHMPUpgrade";
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Removing %@ default because Thumper is now enabled", &v4, 0xCu);
    }

    PHPreferencesSetValue();
  }
}

@end