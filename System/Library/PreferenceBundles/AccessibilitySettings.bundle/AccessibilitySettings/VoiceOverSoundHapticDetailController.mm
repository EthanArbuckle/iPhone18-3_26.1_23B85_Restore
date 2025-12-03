@interface VoiceOverSoundHapticDetailController
- (id)_hapticEnabled:(id)enabled;
- (id)_soundEnabled:(id)enabled;
- (id)specifiers;
- (void)_previewSpecifierTapped:(id)tapped;
- (void)_setHapticEnabled:(id)enabled specifier:(id)specifier;
- (void)_setSoundEnabled:(id)enabled specifier:(id)specifier;
- (void)tableView:(id)view willDisplayCell:(id)cell forRowAtIndexPath:(id)path;
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
    outputEvent = [(VoiceOverSoundHapticDetailController *)self outputEvent];
    supportsSoundEffect = [outputEvent supportsSoundEffect];

    if (supportsSoundEffect)
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
      outputEvent2 = [(VoiceOverSoundHapticDetailController *)self outputEvent];
      supportsHaptic = [outputEvent2 supportsHaptic];

      if (supportsHaptic)
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

- (void)tableView:(id)view willDisplayCell:(id)cell forRowAtIndexPath:(id)path
{
  cellCopy = cell;
  v11 = [(VoiceOverSoundHapticDetailController *)self specifierAtIndexPath:path];
  identifier = [v11 identifier];
  LODWORD(self) = [identifier isEqualToString:@"PreviewSoundAndHapticButton"];

  if (self)
  {
    v9 = &__block_literal_global_23;
    v10 = cellCopy;
  }

  else
  {
    v10 = cellCopy;
    v9 = 0;
  }

  [v10 _setAccessibilityTraitsBlock:v9];
}

- (id)_soundEnabled:(id)enabled
{
  outputEvent = [(VoiceOverSoundHapticDetailController *)self outputEvent];
  v4 = +[AXSettings sharedInstance];
  rawValue = [outputEvent rawValue];
  v6 = [v4 voiceOverSoundEnabledForEvent:rawValue];

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

- (void)_setSoundEnabled:(id)enabled specifier:(id)specifier
{
  enabledCopy = enabled;
  outputEvent = [(VoiceOverSoundHapticDetailController *)self outputEvent];
  v6 = +[AXSettings sharedInstance];
  bOOLValue = [enabledCopy BOOLValue];

  rawValue = [outputEvent rawValue];
  [v6 voiceOverSetSoundEnabled:bOOLValue forEvent:rawValue];
}

- (id)_hapticEnabled:(id)enabled
{
  outputEvent = [(VoiceOverSoundHapticDetailController *)self outputEvent];
  v4 = +[AXSettings sharedInstance];
  rawValue = [outputEvent rawValue];
  v6 = [v4 voiceOverHapticEnabledForEvent:rawValue];

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

- (void)_setHapticEnabled:(id)enabled specifier:(id)specifier
{
  enabledCopy = enabled;
  outputEvent = [(VoiceOverSoundHapticDetailController *)self outputEvent];
  v6 = +[AXSettings sharedInstance];
  bOOLValue = [enabledCopy BOOLValue];

  rawValue = [outputEvent rawValue];
  [v6 voiceOverSetHapticEnabled:bOOLValue forEvent:rawValue];
}

- (void)_previewSpecifierTapped:(id)tapped
{
  outputEvent = [(VoiceOverSoundHapticDetailController *)self outputEvent];
  if (outputEvent)
  {
    v5 = outputEvent;
    v4 = +[VOSOutputEventDispatcher sharedInstance];
    [v4 sendEvent:v5];

    outputEvent = v5;
  }
}

@end