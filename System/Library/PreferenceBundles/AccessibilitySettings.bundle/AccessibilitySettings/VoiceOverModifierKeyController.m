@interface VoiceOverModifierKeyController
+ (id)modifierShortStringDescription:(int64_t)a3;
- (id)specifiers;
- (int64_t)_selectedChoice;
- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4;
- (void)tableView:(id)a3 willDisplayCell:(id)a4 forRowAtIndexPath:(id)a5;
@end

@implementation VoiceOverModifierKeyController

- (id)specifiers
{
  v3 = OBJC_IVAR___PSListController__specifiers;
  v4 = *&self->AXUISettingsBaseListController_opaque[OBJC_IVAR___PSListController__specifiers];
  if (!v4)
  {
    v5 = +[NSMutableArray array];
    v6 = +[PSSpecifier emptyGroupSpecifier];
    v7 = settingsLocString(@"VO_MODIFIER_KEY_FOOTER", @"VoiceOverSettings");
    [v6 setProperty:v7 forKey:PSFooterTextGroupKey];

    [v5 addObject:v6];
    v8 = settingsLocString(@"VO_MODIFIER_KEY_CONTROL_OPTIONS", @"VoiceOverSettings");
    v9 = [PSSpecifier preferenceSpecifierNamed:v8 target:self set:0 get:0 detail:0 cell:3 edit:0];

    [v9 setProperty:&off_27B298 forKey:@"AXSVoiceOverKeyboardModifierChoice"];
    v10 = PSIDKey;
    [v9 setProperty:@"VO_MODIFIER_KEY_CONTROL_OPTIONS" forKey:PSIDKey];
    [v5 addObject:v9];
    v11 = settingsLocString(@"VO_MODIFIER_KEY_CAPS_LOCK", @"VoiceOverSettings");
    v12 = [PSSpecifier preferenceSpecifierNamed:v11 target:self set:0 get:0 detail:0 cell:3 edit:0];

    [v12 setProperty:&off_27B2B0 forKey:@"AXSVoiceOverKeyboardModifierChoice"];
    [v12 setProperty:@"VO_MODIFIER_KEY_CAPS_LOCK" forKey:v10];
    [v5 addObject:v12];
    v13 = [v5 copy];
    v14 = *&self->AXUISettingsBaseListController_opaque[v3];
    *&self->AXUISettingsBaseListController_opaque[v3] = v13;

    v4 = *&self->AXUISettingsBaseListController_opaque[v3];
  }

  return v4;
}

+ (id)modifierShortStringDescription:(int64_t)a3
{
  if ((a3 - 1) > 2)
  {
    v4 = 0;
  }

  else
  {
    v4 = settingsLocString(off_258B98[a3 - 1], @"VoiceOverSettings");
  }

  return v4;
}

- (int64_t)_selectedChoice
{
  v2 = [(VoiceOverModifierKeyController *)self specifier];
  v3 = [v2 propertyForKey:@"AXVOModifierKeyGetterBlock"];

  if (v3 && (v3[2](v3), (v4 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v5 = v4;
    v6 = [v4 integerValue];
  }

  else
  {
    v5 = +[AXSettings sharedInstance];
    v6 = [v5 voiceOverKeyboardModifierChoice];
  }

  v7 = v6;

  return v7;
}

- (void)tableView:(id)a3 willDisplayCell:(id)a4 forRowAtIndexPath:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(VoiceOverModifierKeyController *)self _selectedChoice];
  v12 = __UIAccessibilitySafeClass();
  v13 = [v12 specifier];

  v14 = [v13 propertyForKey:@"AXSVoiceOverKeyboardModifierChoice"];
  v15 = [v14 integerValue];

  if (((v15 & v11 & 0x8000000000000000) != 0) ^ v16 | ((v15 & v11) == 0))
  {
    v17 = 0;
  }

  else
  {
    v17 = 1;
  }

  [v9 setChecked:v17];
}

- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4
{
  v6 = a3;
  v7 = a4;
  v20.receiver = self;
  v20.super_class = VoiceOverModifierKeyController;
  [(VoiceOverModifierKeyController *)&v20 tableView:v6 didSelectRowAtIndexPath:v7];
  v8 = [(VoiceOverModifierKeyController *)self specifierForIndexPath:v7];
  v9 = [v8 propertyForKey:@"AXSVoiceOverKeyboardModifierChoice"];
  v10 = [v9 integerValue];

  v11 = [(VoiceOverModifierKeyController *)self _selectedChoice];
  if (v11 != v10)
  {
    v12 = v11 ^ v10;
    v13 = [v6 cellForRowAtIndexPath:v7];
    v14 = v13;
    if (((v12 & v10 & 0x8000000000000000) != 0) ^ v15 | ((v12 & v10) == 0))
    {
      v16 = 0;
    }

    else
    {
      v16 = 1;
    }

    [v13 setChecked:v16];

    v17 = [(VoiceOverModifierKeyController *)self specifier];
    v18 = [v17 propertyForKey:@"AXVOModifierKeySelectionBlock"];

    if (v18)
    {
      v19 = [NSNumber numberWithInteger:v12];
      (v18)[2](v18, v19);
    }

    else
    {
      v19 = +[AXSettings sharedInstance];
      [v19 setVoiceOverKeyboardModifierChoice:v12];
    }
  }
}

@end