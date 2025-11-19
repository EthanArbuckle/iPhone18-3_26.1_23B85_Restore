@interface VoiceOverSoundHapticDetailController
- (id)_hapticEnabled:(id)a3;
- (id)_soundEnabled:(id)a3;
- (id)specifiers;
- (void)_previewSpecifierTapped:(id)a3;
- (void)_setHapticEnabled:(id)a3 specifier:(id)a4;
- (void)_setSoundEnabled:(id)a3 specifier:(id)a4;
- (void)tableView:(id)a3 willDisplayCell:(id)a4 forRowAtIndexPath:(id)a5;
@end

@implementation VoiceOverSoundHapticDetailController

- (id)specifiers
{
  v3 = OBJC_IVAR___PSListController__specifiers;
  v4 = *&self->AXUISettingsBaseListController_opaque[OBJC_IVAR___PSListController__specifiers];
  if (!v4)
  {
    v5 = objc_opt_new();
    v6 = +[PSSpecifier emptyGroupSpecifier];
    [v5 addObject:v6];
    v7 = [(VoiceOverSoundHapticDetailController *)self outputEvent];
    v8 = [v7 supportsSoundEffect];

    if (v8)
    {
      v9 = settingsLocString(@"vo.play.sound", @"VoiceOverSettings");
      v10 = [PSSpecifier preferenceSpecifierNamed:v9 target:self set:"_setSoundEnabled:specifier:" get:"_soundEnabled:" detail:0 cell:6 edit:0];

      v11 = +[AXSettings sharedInstance];
      v12 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v11 voiceOverSoundEffectsEnabled]);
      [v10 setProperty:v12 forKey:PSEnabledKey];

      [v5 addObject:v10];
    }

    else
    {
      v10 = 0;
    }

    if (+[AXMHapticComponent isSupported])
    {
      v13 = [(VoiceOverSoundHapticDetailController *)self outputEvent];
      v14 = [v13 supportsHaptic];

      if (v14)
      {
        v15 = settingsLocString(@"vo.play.haptic", @"VoiceOverSettings");
        v16 = [PSSpecifier preferenceSpecifierNamed:v15 target:self set:"_setHapticEnabled:specifier:" get:"_hapticEnabled:" detail:0 cell:6 edit:0];

        v17 = +[AXSettings sharedInstance];
        v18 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v17 voiceOverHapticsEnabled]);
        [v16 setProperty:v18 forKey:PSEnabledKey];

        [v5 addObject:v16];
        v10 = v16;
      }
    }

    v19 = +[PSSpecifier emptyGroupSpecifier];

    [v5 addObject:v19];
    v20 = settingsLocString(@"vo.preview.sound.and.haptic", @"VoiceOverSettings");
    v21 = [PSSpecifier preferenceSpecifierNamed:v20 target:self set:0 get:0 detail:0 cell:13 edit:0];

    [v21 setIdentifier:@"PreviewSoundAndHapticButton"];
    [v21 setButtonAction:"_previewSpecifierTapped:"];
    [v5 addObject:v21];
    v22 = *&self->AXUISettingsBaseListController_opaque[v3];
    *&self->AXUISettingsBaseListController_opaque[v3] = v5;

    v4 = *&self->AXUISettingsBaseListController_opaque[v3];
  }

  return v4;
}

- (void)tableView:(id)a3 willDisplayCell:(id)a4 forRowAtIndexPath:(id)a5
{
  v7 = a4;
  v11 = [(VoiceOverSoundHapticDetailController *)self specifierAtIndexPath:a5];
  v8 = [v11 identifier];
  LODWORD(self) = [v8 isEqualToString:@"PreviewSoundAndHapticButton"];

  if (self)
  {
    v9 = &__block_literal_global_23;
    v10 = v7;
  }

  else
  {
    v10 = v7;
    v9 = 0;
  }

  [v10 _setAccessibilityTraitsBlock:v9];
}

- (id)_soundEnabled:(id)a3
{
  v3 = [(VoiceOverSoundHapticDetailController *)self outputEvent];
  v4 = +[AXSettings sharedInstance];
  v5 = [v3 rawValue];
  v6 = [v4 voiceOverSoundEnabledForEvent:v5];

  if (v6)
  {
    v7 = v6;
  }

  else
  {
    v7 = &__kCFBooleanTrue;
  }

  return v7;
}

- (void)_setSoundEnabled:(id)a3 specifier:(id)a4
{
  v5 = a3;
  v9 = [(VoiceOverSoundHapticDetailController *)self outputEvent];
  v6 = +[AXSettings sharedInstance];
  v7 = [v5 BOOLValue];

  v8 = [v9 rawValue];
  [v6 voiceOverSetSoundEnabled:v7 forEvent:v8];
}

- (id)_hapticEnabled:(id)a3
{
  v3 = [(VoiceOverSoundHapticDetailController *)self outputEvent];
  v4 = +[AXSettings sharedInstance];
  v5 = [v3 rawValue];
  v6 = [v4 voiceOverHapticEnabledForEvent:v5];

  if (v6)
  {
    v7 = v6;
  }

  else
  {
    v7 = &__kCFBooleanTrue;
  }

  return v7;
}

- (void)_setHapticEnabled:(id)a3 specifier:(id)a4
{
  v5 = a3;
  v9 = [(VoiceOverSoundHapticDetailController *)self outputEvent];
  v6 = +[AXSettings sharedInstance];
  v7 = [v5 BOOLValue];

  v8 = [v9 rawValue];
  [v6 voiceOverSetHapticEnabled:v7 forEvent:v8];
}

- (void)_previewSpecifierTapped:(id)a3
{
  v3 = [(VoiceOverSoundHapticDetailController *)self outputEvent];
  if (v3)
  {
    v5 = v3;
    v4 = +[VOSOutputEventDispatcher sharedInstance];
    [v4 sendEvent:v5];

    v3 = v5;
  }
}

@end