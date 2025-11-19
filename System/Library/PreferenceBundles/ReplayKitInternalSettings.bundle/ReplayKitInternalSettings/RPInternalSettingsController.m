@interface RPInternalSettingsController
- (id)getSwitchState:(__CFString *)a3;
- (id)specifiers;
- (void)killReplayd;
- (void)setRPEnableLockedRecording:(id)a3 specifier:(id)a4;
- (void)setSwitchState:(__CFString *)a3 value:(id)a4;
@end

@implementation RPInternalSettingsController

- (id)specifiers
{
  v10.receiver = self;
  v10.super_class = RPInternalSettingsController;
  v3 = [(RPInternalSettingsController *)&v10 specifiers];
  v4 = [v3 count];

  if (!v4)
  {
    v5 = [(RPInternalSettingsController *)self loadSpecifiersFromPlistName:@"Settings" target:self];
    v9.receiver = self;
    v9.super_class = RPInternalSettingsController;
    [(RPInternalSettingsController *)&v9 setSpecifiers:v5];
  }

  v8.receiver = self;
  v8.super_class = RPInternalSettingsController;
  v6 = [(RPInternalSettingsController *)&v8 specifiers];

  return v6;
}

- (id)getSwitchState:(__CFString *)a3
{
  v3 = CFPreferencesCopyAppValue(a3, @"com.apple.replayd");
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

- (void)setSwitchState:(__CFString *)a3 value:(id)a4
{
  if ([a4 BOOLValue])
  {
    v5 = kCFBooleanTrue;
  }

  else
  {
    v5 = 0;
  }

  CFPreferencesSetAppValue(a3, v5, @"com.apple.replayd");

  CFPreferencesAppSynchronize(@"com.apple.replayd");
}

- (void)setRPEnableLockedRecording:(id)a3 specifier:(id)a4
{
  [(RPInternalSettingsController *)self setSwitchState:@"RPEnableLockedRecording" value:a3];

  [(RPInternalSettingsController *)self killReplayd];
}

- (void)killReplayd
{
  v2[0] = *off_4078;
  v2[1] = *&off_4088;
  posix_spawnp(0, "killall", 0, 0, v2, 0);
}

@end