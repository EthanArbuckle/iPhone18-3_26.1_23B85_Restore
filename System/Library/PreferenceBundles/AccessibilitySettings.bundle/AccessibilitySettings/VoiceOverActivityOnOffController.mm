@interface VoiceOverActivityOnOffController
- (id)specifiers;
@end

@implementation VoiceOverActivityOnOffController

- (id)specifiers
{
  v3 = OBJC_IVAR___PSListController__specifiers;
  v4 = *&self->super.AXUISettingsBaseListController_opaque[OBJC_IVAR___PSListController__specifiers];
  if (!v4)
  {
    v5 = +[NSMutableArray array];
    v6 = *&self->super.AXUISettingsBaseListController_opaque[v3];
    *&self->super.AXUISettingsBaseListController_opaque[v3] = v5;

    v7 = +[NSMutableArray array];
    v8 = settingsLocString(@"DEFAULT", @"Accessibility");
    v9 = [PSSpecifier preferenceSpecifierNamed:v8 target:self set:0 get:0 detail:0 cell:3 edit:0];

    [v7 addObject:v9];
    v10 = settingsLocString(@"ON", @"Accessibility");
    v11 = [PSSpecifier preferenceSpecifierNamed:v10 target:self set:0 get:0 detail:0 cell:3 edit:0];

    [v11 setProperty:&__kCFBooleanTrue forKey:@"value"];
    [v7 addObject:v11];
    v12 = settingsLocString(@"OFF", @"Accessibility");
    v13 = [PSSpecifier preferenceSpecifierNamed:v12 target:self set:0 get:0 detail:0 cell:3 edit:0];

    [v13 setProperty:&__kCFBooleanFalse forKey:@"value"];
    [v7 addObject:v13];
    v14 = *&self->super.AXUISettingsBaseListController_opaque[v3];
    *&self->super.AXUISettingsBaseListController_opaque[v3] = v7;

    v4 = *&self->super.AXUISettingsBaseListController_opaque[v3];
  }

  return v4;
}

@end