@interface AXDescriptiveVideoController
- (id)preferenceValue:(id)a3;
- (id)specifiers;
@end

@implementation AXDescriptiveVideoController

- (id)specifiers
{
  v3 = OBJC_IVAR___PSListController__specifiers;
  v4 = *&self->AXUISettingsBaseListController_opaque[OBJC_IVAR___PSListController__specifiers];
  if (!v4)
  {
    v5 = objc_alloc_init(NSMutableArray);
    v6 = +[PSSpecifier emptyGroupSpecifier];
    v7 = settingsLocString(@"DescriptiveVideoFooterText", @"Accessibility");
    [v6 setProperty:v7 forKey:PSFooterTextGroupKey];

    [v5 addObject:v6];
    v8 = settingsLocString(@"DESCRIPTIVE_VIDEO_SETTING", @"Accessibility");
    v9 = [PSSpecifier preferenceSpecifierNamed:v8 target:self set:"setPreferenceValue:specifier:" get:"preferenceValue:" detail:0 cell:6 edit:0];

    [v9 setProperty:@"DESCRIPTIVE_VIDEO_SETTING" forKey:PSIDKey];
    [v5 addObject:v9];
    v10 = *&self->AXUISettingsBaseListController_opaque[v3];
    *&self->AXUISettingsBaseListController_opaque[v3] = v5;

    v4 = *&self->AXUISettingsBaseListController_opaque[v3];
  }

  return v4;
}

- (id)preferenceValue:(id)a3
{
  v3 = MAAudibleMediaPrefCopyPreferDescriptiveVideo();

  return v3;
}

@end