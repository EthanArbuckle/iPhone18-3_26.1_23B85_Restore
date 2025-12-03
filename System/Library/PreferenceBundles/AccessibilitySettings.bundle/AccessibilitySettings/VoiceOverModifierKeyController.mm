@interface VoiceOverModifierKeyController
+ (id)modifierShortStringDescription:(int64_t)description;
- (id)specifiers;
- (int64_t)_selectedChoice;
- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path;
- (void)tableView:(id)view willDisplayCell:(id)cell forRowAtIndexPath:(id)path;
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

+ (id)modifierShortStringDescription:(int64_t)description
{
  if ((description - 1) > 2)
  {
    v4 = 0;
  }

  else
  {
    v4 = settingsLocString(off_258B98[description - 1], @"VoiceOverSettings");
  }

  return v4;
}

- (int64_t)_selectedChoice
{
  specifier = [(VoiceOverModifierKeyController *)self specifier];
  v3 = [specifier propertyForKey:@"AXVOModifierKeyGetterBlock"];

  if (v3 && (v3[2](v3), (v4 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v5 = v4;
    integerValue = [v4 integerValue];
  }

  else
  {
    v5 = +[AXSettings sharedInstance];
    integerValue = [v5 voiceOverKeyboardModifierChoice];
  }

  v7 = integerValue;

  return v7;
}

- (void)tableView:(id)view willDisplayCell:(id)cell forRowAtIndexPath:(id)path
{
  viewCopy = view;
  cellCopy = cell;
  pathCopy = path;
  _selectedChoice = [(VoiceOverModifierKeyController *)self _selectedChoice];
  v12 = __UIAccessibilitySafeClass();
  specifier = [v12 specifier];

  v14 = [specifier propertyForKey:@"AXSVoiceOverKeyboardModifierChoice"];
  integerValue = [v14 integerValue];

  if (((integerValue & _selectedChoice & 0x8000000000000000) != 0) ^ v16 | ((integerValue & _selectedChoice) == 0))
  {
    v17 = 0;
  }

  else
  {
    v17 = 1;
  }

  [cellCopy setChecked:v17];
}

- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path
{
  viewCopy = view;
  pathCopy = path;
  v20.receiver = self;
  v20.super_class = VoiceOverModifierKeyController;
  [(VoiceOverModifierKeyController *)&v20 tableView:viewCopy didSelectRowAtIndexPath:pathCopy];
  v8 = [(VoiceOverModifierKeyController *)self specifierForIndexPath:pathCopy];
  v9 = [v8 propertyForKey:@"AXSVoiceOverKeyboardModifierChoice"];
  integerValue = [v9 integerValue];

  _selectedChoice = [(VoiceOverModifierKeyController *)self _selectedChoice];
  if (_selectedChoice != integerValue)
  {
    v12 = _selectedChoice ^ integerValue;
    v13 = [viewCopy cellForRowAtIndexPath:pathCopy];
    v14 = v13;
    if (((v12 & integerValue & 0x8000000000000000) != 0) ^ v15 | ((v12 & integerValue) == 0))
    {
      v16 = 0;
    }

    else
    {
      v16 = 1;
    }

    [v13 setChecked:v16];

    specifier = [(VoiceOverModifierKeyController *)self specifier];
    v18 = [specifier propertyForKey:@"AXVOModifierKeySelectionBlock"];

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