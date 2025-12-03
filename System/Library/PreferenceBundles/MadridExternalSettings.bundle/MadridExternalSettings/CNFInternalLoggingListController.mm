@interface CNFInternalLoggingListController
- (id)specifiers;
- (id)technicalFailureUI:(id)i;
- (id)vcpLogging:(id)logging;
- (void)setTechnicalFailureUI:(id)i specifier:(id)specifier;
- (void)setVCPLogging:(id)logging specifier:(id)specifier;
@end

@implementation CNFInternalLoggingListController

- (id)specifiers
{
  v3 = OBJC_IVAR___PSListController__specifiers;
  v4 = *&self->PSListController_opaque[OBJC_IVAR___PSListController__specifiers];
  if (!v4)
  {
    v5 = [(CNFInternalLoggingListController *)self loadSpecifiersFromPlistName:@"ConferenceInternalLoggingSettings" target:self];
    v6 = *&self->PSListController_opaque[v3];
    *&self->PSListController_opaque[v3] = v5;

    v4 = *&self->PSListController_opaque[v3];
  }

  return v4;
}

- (id)technicalFailureUI:(id)i
{
  v3 = CNFGetAppBooleanValueForKey();

  return [NSNumber numberWithBool:v3];
}

- (void)setTechnicalFailureUI:(id)i specifier:(id)specifier
{
  [i BOOLValue];
  CNFSetAppBooleanValueForKey();
  if (CNFSyncPreferences())
  {
    DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();

    CFNotificationCenterPostNotification(DarwinNotifyCenter, @"kCNFTechnicalFailureUIPrefChangedNotification", 0, 0, 0);
  }
}

- (id)vcpLogging:(id)logging
{
  keyExistsAndHasValidFormat = 0;
  AppBooleanValue = CFPreferencesGetAppBooleanValue(@"EnableVCPLogging", @"com.apple.VideoProcessing", &keyExistsAndHasValidFormat);
  if (keyExistsAndHasValidFormat)
  {
    v4 = AppBooleanValue == 1;
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;
  v6 = [NSNumber numberWithBool:v5];

  return v6;
}

- (void)setVCPLogging:(id)logging specifier:(id)specifier
{
  if ([logging BOOLValue])
  {
    v4 = [NSNumber numberWithBool:1];
  }

  else
  {
    v4 = 0;
  }

  CFPreferencesSetAppValue(@"EnableVCPLogging", v4, @"com.apple.VideoProcessing");
  CFPreferencesAppSynchronize(@"com.apple.VideoProcessing");
  uTF8String = [@"killall -9 mediaserverd SpringBoard imagent MobilePhone" UTF8String];

  _IMPerformSystem(uTF8String);
}

@end