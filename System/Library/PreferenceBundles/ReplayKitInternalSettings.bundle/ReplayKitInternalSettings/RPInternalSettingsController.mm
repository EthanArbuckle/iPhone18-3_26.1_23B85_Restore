@interface RPInternalSettingsController
- (id)getSwitchState:(__CFString *)state;
- (id)specifiers;
- (void)killReplayd;
- (void)setRPEnableLockedRecording:(id)recording specifier:(id)specifier;
- (void)setSwitchState:(__CFString *)state value:(id)value;
@end

@implementation RPInternalSettingsController

- (id)specifiers
{
  v10.receiver = self;
  v10.super_class = RPInternalSettingsController;
  specifiers = [(RPInternalSettingsController *)&v10 specifiers];
  v4 = [specifiers count];

  if (!v4)
  {
    v5 = [(RPInternalSettingsController *)self loadSpecifiersFromPlistName:@"Settings" target:self];
    v9.receiver = self;
    v9.super_class = RPInternalSettingsController;
    [(RPInternalSettingsController *)&v9 setSpecifiers:v5];
  }

  v8.receiver = self;
  v8.super_class = RPInternalSettingsController;
  specifiers2 = [(RPInternalSettingsController *)&v8 specifiers];

  return specifiers2;
}

- (id)getSwitchState:(__CFString *)state
{
  v3 = CFPreferencesCopyAppValue(state, @"com.apple.replayd");
  v4 = v3;
  if (v3)
  {
    CFRelease(v3);
  }

  v5 = &kCFBooleanTrue;
  if (!v4)
  {
    v5 = &kCFBooleanFalse;
  }

  v6 = *v5;

  return v6;
}

- (void)setSwitchState:(__CFString *)state value:(id)value
{
  if ([value BOOLValue])
  {
    v5 = kCFBooleanTrue;
  }

  else
  {
    v5 = 0;
  }

  CFPreferencesSetAppValue(state, v5, @"com.apple.replayd");

  CFPreferencesAppSynchronize(@"com.apple.replayd");
}

- (void)setRPEnableLockedRecording:(id)recording specifier:(id)specifier
{
  [(RPInternalSettingsController *)self setSwitchState:@"RPEnableLockedRecording" value:recording];

  [(RPInternalSettingsController *)self killReplayd];
}

- (void)killReplayd
{
  v2[0] = *off_4078;
  v2[1] = *&off_4088;
  posix_spawnp(0, "killall", 0, 0, v2, 0);
}

@end