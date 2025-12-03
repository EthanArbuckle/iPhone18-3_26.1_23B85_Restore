@interface VoiceOverMagicTapController
- (id)magicTapDefaultToMediaPlayback:(id)playback;
- (id)specifiers;
- (void)setMagicTapDefaultToMediaPlayback:(id)playback specifier:(id)specifier;
@end

@implementation VoiceOverMagicTapController

- (id)specifiers
{
  v3 = +[NSMutableArray array];
  v4 = OBJC_IVAR___PSListController__specifiers;
  v5 = *&self->AXUISettingsBaseListController_opaque[OBJC_IVAR___PSListController__specifiers];
  if (!v5)
  {
    v6 = +[PSSpecifier emptyGroupSpecifier];
    v7 = settingsLocString(@"VO_MAGIC_TAP_DEFAULT_TO_MEDIA_PLAYBACK_FOOTER", @"VoiceOverSettings");
    [v6 setProperty:v7 forKey:PSFooterTextGroupKey];

    [v3 addObject:v6];
    v8 = settingsLocString(@"VO_MAGIC_TAP_DEFAULT_TO_MEDIA_PLAYBACK", @"VoiceOverSettings");
    v9 = [PSSpecifier preferenceSpecifierNamed:v8 target:self set:"setMagicTapDefaultToMediaPlayback:specifier:" get:"magicTapDefaultToMediaPlayback:" detail:0 cell:6 edit:0];

    [v9 setProperty:@"VO_MAGIC_TAP_DEFAULT_TO_MEDIA_PLAYBACK" forKey:PSIDKey];
    [v3 addObject:v9];
    v10 = [v3 copy];
    v11 = *&self->AXUISettingsBaseListController_opaque[v4];
    *&self->AXUISettingsBaseListController_opaque[v4] = v10;

    v5 = *&self->AXUISettingsBaseListController_opaque[v4];
  }

  v12 = v5;

  return v5;
}

- (void)setMagicTapDefaultToMediaPlayback:(id)playback specifier:(id)specifier
{
  bOOLValue = [playback BOOLValue];
  v5 = +[AXSettings sharedInstance];
  [v5 setVoiceOverMagicTapDefaultToMediaPlayback:bOOLValue];
}

- (id)magicTapDefaultToMediaPlayback:(id)playback
{
  v3 = +[AXSettings sharedInstance];
  v4 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v3 voiceOverMagicTapDefaultToMediaPlayback]);

  return v4;
}

@end