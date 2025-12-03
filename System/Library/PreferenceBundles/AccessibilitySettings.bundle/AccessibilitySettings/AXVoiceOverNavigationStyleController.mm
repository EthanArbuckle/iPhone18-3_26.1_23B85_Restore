@interface AXVoiceOverNavigationStyleController
- (id)specifiers;
- (void)_updateFooterText;
- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path;
- (void)tableView:(id)view willDisplayCell:(id)cell forRowAtIndexPath:(id)path;
@end

@implementation AXVoiceOverNavigationStyleController

- (id)specifiers
{
  v3 = OBJC_IVAR___PSListController__specifiers;
  v4 = *&self->super.AXUISettingsListController_opaque[OBJC_IVAR___PSListController__specifiers];
  if (!v4)
  {
    v5 = +[NSMutableArray array];
    v6 = *&self->super.AXUISettingsListController_opaque[v3];
    *&self->super.AXUISettingsListController_opaque[v3] = v5;

    v7 = +[NSMutableArray array];
    v8 = +[PSSpecifier emptyGroupSpecifier];
    [v7 addObject:v8];
    groupSpecifier = self->_groupSpecifier;
    self->_groupSpecifier = v8;
    v10 = v8;

    [(AXVoiceOverNavigationStyleController *)self _updateFooterText];
    v11 = settingsLocString(@"NAVIGATION_STYLE_FLAT", @"VoiceOverSettings");
    v12 = [PSSpecifier preferenceSpecifierNamed:v11 target:self set:0 get:0 detail:0 cell:3 edit:0];

    [v12 setProperty:&off_27B3D0 forKey:@"AXSVoiceOverNavigationStyle"];
    [v7 addObject:v12];
    v13 = settingsLocString(@"NAVIGATION_STYLE_GROUPS", @"VoiceOverSettings");
    v14 = [PSSpecifier preferenceSpecifierNamed:v13 target:self set:0 get:0 detail:0 cell:3 edit:0];

    [v14 setProperty:&off_27B3E8 forKey:@"AXSVoiceOverNavigationStyle"];
    [v7 addObject:v14];
    v15 = [v7 copy];
    v16 = *&self->super.AXUISettingsListController_opaque[v3];
    *&self->super.AXUISettingsListController_opaque[v3] = v15;

    v4 = *&self->super.AXUISettingsListController_opaque[v3];
  }

  return v4;
}

- (void)tableView:(id)view willDisplayCell:(id)cell forRowAtIndexPath:(id)path
{
  cellCopy = cell;
  v5 = +[AXSettings sharedInstance];
  voiceOverNavigationStyle = [v5 voiceOverNavigationStyle];

  specifier = [cellCopy specifier];
  v8 = [specifier propertyForKey:@"AXSVoiceOverNavigationStyle"];
  integerValue = [v8 integerValue];

  [cellCopy setChecked:voiceOverNavigationStyle == integerValue];
}

- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path
{
  v11.receiver = self;
  v11.super_class = AXVoiceOverNavigationStyleController;
  pathCopy = path;
  [(AXVoiceOverNavigationStyleController *)&v11 tableView:view didSelectRowAtIndexPath:pathCopy];
  v7 = [(AXVoiceOverNavigationStyleController *)self specifierForIndexPath:pathCopy, v11.receiver, v11.super_class];

  v8 = [v7 propertyForKey:@"AXSVoiceOverNavigationStyle"];
  integerValue = [v8 integerValue];
  v10 = +[AXSettings sharedInstance];
  [v10 setVoiceOverNavigationStyle:integerValue];

  [(AXVoiceOverNavigationStyleController *)self beginUpdates];
  [(AXVoiceOverNavigationStyleController *)self reloadSpecifiers];
  [(AXVoiceOverNavigationStyleController *)self endUpdates];
}

- (void)_updateFooterText
{
  v24 = +[VOSCommandResolver resolverForCurrentHost];
  initPreferringUserProfile = [[VOSCommandManager alloc] initPreferringUserProfile];
  v4 = +[VOSCommand MoveIn];
  v5 = [initPreferringUserProfile gestureBindingsForCommand:v4 withResolver:v24];

  v6 = +[VOSCommand MoveOut];
  v7 = [initPreferringUserProfile gestureBindingsForCommand:v6 withResolver:v24];

  v8 = +[AXSettings sharedInstance];
  voiceOverNavigationStyle = [v8 voiceOverNavigationStyle];

  if ((voiceOverNavigationStyle + 1) >= 2)
  {
    if (voiceOverNavigationStyle != &dword_0 + 1)
    {
      goto LABEL_10;
    }

    v11 = settingsLocString(@"NAVIGATION_STYLE_FOOTER_GROUPS", @"VoiceOverSettings");
    if ([v5 count])
    {
      v14 = settingsLocString(@"NAVIGATION_STYLE_FOOTER_GROUPS_WITH_COMMANDS_ENTER", @"VoiceOverSettings");
      anyObject = [v5 anyObject];
      localizedName = [anyObject localizedName];
      v17 = [NSString stringWithFormat:v14, localizedName];
      v18 = [NSString stringWithFormat:@"%@ %@", v11, v17];

      v11 = v18;
    }

    if ([v7 count])
    {
      v19 = settingsLocString(@"NAVIGATION_STYLE_FOOTER_GROUPS_WITH_COMMANDS_EXIT", @"VoiceOverSettings");
      anyObject2 = [v7 anyObject];
      localizedName2 = [anyObject2 localizedName];
      v22 = [NSString stringWithFormat:v19, localizedName2];
      v23 = [NSString stringWithFormat:@"%@ %@", v11, v22];

      v11 = v23;
    }

    groupSpecifier = self->_groupSpecifier;
    v12 = PSFooterTextGroupKey;
  }

  else
  {
    v10 = self->_groupSpecifier;
    v11 = settingsLocString(@"NAVIGATION_STYLE_FOOTER_FLAT", @"VoiceOverSettings");
    v12 = PSFooterTextGroupKey;
    groupSpecifier = v10;
  }

  [(PSSpecifier *)groupSpecifier setProperty:v11 forKey:v12];

LABEL_10:
}

@end