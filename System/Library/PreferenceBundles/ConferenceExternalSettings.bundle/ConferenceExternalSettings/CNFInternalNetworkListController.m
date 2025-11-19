@interface CNFInternalNetworkListController
- (id)customNatType:(id)a3;
- (id)enableRelay:(id)a3;
- (id)forceIPv6:(id)a3;
- (id)forceP2P:(id)a3;
- (id)forceRelay:(id)a3;
- (id)specifiers;
- (void)setCustomNatType:(id)a3 specifier:(id)a4;
- (void)setEnableRelay:(id)a3 specifier:(id)a4;
- (void)setForceIPv6:(id)a3 specifier:(id)a4;
- (void)setForceP2P:(id)a3 specifier:(id)a4;
- (void)setForceRelay:(id)a3 specifier:(id)a4;
@end

@implementation CNFInternalNetworkListController

- (id)specifiers
{
  v3 = OBJC_IVAR___PSListController__specifiers;
  v4 = *&self->PSListController_opaque[OBJC_IVAR___PSListController__specifiers];
  if (!v4)
  {
    v5 = [(CNFInternalNetworkListController *)self loadSpecifiersFromPlistName:@"ConferenceInternalNetworkSettings" target:self];
    v6 = *&self->PSListController_opaque[v3];
    *&self->PSListController_opaque[v3] = v5;

    v4 = *&self->PSListController_opaque[v3];
  }

  return v4;
}

- (void)setEnableRelay:(id)a3 specifier:(id)a4
{
  if ([a3 BOOLValue])
  {
    v4 = 0;
  }

  else
  {
    v4 = [NSNumber numberWithInt:1];
  }

  CFPreferencesSetAppValue(@"disableRelay", v4, @"com.apple.conference");

  CFPreferencesAppSynchronize(@"com.apple.conference");
}

- (id)enableRelay:(id)a3
{
  keyExistsAndHasValidFormat = 0;
  AppIntegerValue = CFPreferencesGetAppIntegerValue(@"disableRelay", @"com.apple.conference", &keyExistsAndHasValidFormat);
  if (keyExistsAndHasValidFormat)
  {
    v4 = AppIntegerValue == 1;
  }

  else
  {
    v4 = 0;
  }

  v5 = !v4;
  v6 = [NSNumber numberWithBool:v5];

  return v6;
}

- (void)setForceRelay:(id)a3 specifier:(id)a4
{
  if ([a3 BOOLValue])
  {
    v4 = [NSNumber numberWithInt:1];
  }

  else
  {
    v4 = 0;
  }

  CFPreferencesSetAppValue(@"forceRelay", v4, @"com.apple.conference");

  CFPreferencesAppSynchronize(@"com.apple.conference");
}

- (id)forceRelay:(id)a3
{
  keyExistsAndHasValidFormat = 0;
  AppIntegerValue = CFPreferencesGetAppIntegerValue(@"forceRelay", @"com.apple.conference", &keyExistsAndHasValidFormat);
  if (keyExistsAndHasValidFormat)
  {
    v4 = AppIntegerValue == 1;
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;
  v6 = [NSNumber numberWithBool:v5];

  return v6;
}

- (void)setCustomNatType:(id)a3 specifier:(id)a4
{
  v6 = a3;
  NSLog(@"Setting custom nat type to %@", v6);
  if ([v6 integerValue] == -1)
  {
    v4 = 0;
    v5 = 0;
  }

  else
  {
    v4 = [NSNumber numberWithBool:1];
    v5 = v6;
  }

  CFPreferencesSetAppValue(@"UseCustomNatType", v4, @"com.apple.conference");
  CFPreferencesSetAppValue(@"CustomNatType", v5, @"com.apple.conference");
  CFPreferencesAppSynchronize(@"com.apple.conference");
}

- (id)customNatType:(id)a3
{
  keyExistsAndHasValidFormat = 0;
  AppBooleanValue = CFPreferencesGetAppBooleanValue(@"UseCustomNatType", @"com.apple.conference", &keyExistsAndHasValidFormat);
  v4 = AppBooleanValue;
  NSLog(@"Has value : %d  usesCustomNat : %d", keyExistsAndHasValidFormat, AppBooleanValue);
  v5 = -1;
  if (v4 && keyExistsAndHasValidFormat)
  {
    v10 = 0;
    AppIntegerValue = CFPreferencesGetAppIntegerValue(@"CustomNatType", @"com.apple.conference", &v10);
    if (AppIntegerValue < 0)
    {
      v7 = -1;
    }

    else
    {
      v7 = AppIntegerValue;
    }

    if (v10)
    {
      v5 = v7;
    }

    else
    {
      v5 = -1;
    }
  }

  v8 = [NSNumber numberWithInteger:v5];

  return v8;
}

- (void)setForceP2P:(id)a3 specifier:(id)a4
{
  if ([a3 BOOLValue])
  {
    v4 = [NSNumber numberWithInt:1];
  }

  else
  {
    v4 = 0;
  }

  CFPreferencesSetAppValue(@"forceP2P", v4, @"com.apple.VideoConference");

  CFPreferencesAppSynchronize(@"com.apple.VideoConference");
}

- (id)forceP2P:(id)a3
{
  keyExistsAndHasValidFormat = 0;
  AppIntegerValue = CFPreferencesGetAppIntegerValue(@"forceP2P", @"com.apple.VideoConference", &keyExistsAndHasValidFormat);
  if (keyExistsAndHasValidFormat)
  {
    v4 = AppIntegerValue == 1;
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;
  v6 = [NSNumber numberWithBool:v5];

  return v6;
}

- (void)setForceIPv6:(id)a3 specifier:(id)a4
{
  if ([a3 BOOLValue])
  {
    v4 = [NSNumber numberWithInt:1];
  }

  else
  {
    v4 = 0;
  }

  CFPreferencesSetAppValue(@"forceIPv6", v4, @"com.apple.VideoConference");

  CFPreferencesAppSynchronize(@"com.apple.VideoConference");
}

- (id)forceIPv6:(id)a3
{
  keyExistsAndHasValidFormat = 0;
  AppIntegerValue = CFPreferencesGetAppIntegerValue(@"forceIPv6", @"com.apple.VideoConference", &keyExistsAndHasValidFormat);
  if (keyExistsAndHasValidFormat)
  {
    v4 = AppIntegerValue == 1;
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;
  v6 = [NSNumber numberWithBool:v5];

  return v6;
}

@end