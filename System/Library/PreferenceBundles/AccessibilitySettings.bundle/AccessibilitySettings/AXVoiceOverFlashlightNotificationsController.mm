@interface AXVoiceOverFlashlightNotificationsController
- (id)_getValue:(id)value;
- (id)getValueSelectedBlock;
- (id)setValueSelectedBlock;
- (id)specifiers;
- (void)_setValue:(id)value specifier:(id)specifier;
@end

@implementation AXVoiceOverFlashlightNotificationsController

- (id)getValueSelectedBlock
{
  specifier = [(AXVoiceOverFlashlightNotificationsController *)self specifier];
  v3 = [specifier propertyForKey:@"getValueSelectedBlock"];

  return v3;
}

- (id)setValueSelectedBlock
{
  specifier = [(AXVoiceOverFlashlightNotificationsController *)self specifier];
  v3 = [specifier propertyForKey:@"setValueSelectedBlock"];

  return v3;
}

- (id)specifiers
{
  v3 = OBJC_IVAR___PSListController__specifiers;
  v4 = *&self->AXUISettingsBaseListController_opaque[OBJC_IVAR___PSListController__specifiers];
  if (!v4)
  {
    v5 = +[NSMutableArray array];
    v6 = *&self->AXUISettingsBaseListController_opaque[v3];
    *&self->AXUISettingsBaseListController_opaque[v3] = v5;

    v7 = +[NSMutableArray array];
    v8 = +[PSSpecifier emptyGroupSpecifier];
    v9 = settingsLocString(@"FLASHLIGHT_NOTIFICATIONS_FOOTER", @"VoiceOverSettings");
    [v8 setProperty:v9 forKey:PSFooterTextGroupKey];

    [v7 addObject:v8];
    v10 = settingsLocString(@"FLASHLIGHT_NOTIFICATIONS", @"VoiceOverSettings");
    v11 = [PSSpecifier preferenceSpecifierNamed:v10 target:self set:"_setValue:specifier:" get:"_getValue:" detail:0 cell:6 edit:0];

    [v7 addObject:v11];
    v12 = [v7 copy];
    v13 = *&self->AXUISettingsBaseListController_opaque[v3];
    *&self->AXUISettingsBaseListController_opaque[v3] = v12;

    v4 = *&self->AXUISettingsBaseListController_opaque[v3];
  }

  return v4;
}

- (void)_setValue:(id)value specifier:(id)specifier
{
  valueCopy = value;
  setValueSelectedBlock = [(AXVoiceOverFlashlightNotificationsController *)self setValueSelectedBlock];
  setValueSelectedBlock[2](setValueSelectedBlock, valueCopy);
}

- (id)_getValue:(id)value
{
  getValueSelectedBlock = [(AXVoiceOverFlashlightNotificationsController *)self getValueSelectedBlock];
  v4 = getValueSelectedBlock[2]();

  return v4;
}

@end