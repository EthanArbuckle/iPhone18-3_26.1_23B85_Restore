@interface VoiceOverNavigateImagesController
- (VoiceOverNavigateImagesController)init;
- (id)specifiers;
- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4;
- (void)tableView:(id)a3 willDisplayCell:(id)a4 forRowAtIndexPath:(id)a5;
@end

@implementation VoiceOverNavigateImagesController

- (VoiceOverNavigateImagesController)init
{
  v6.receiver = self;
  v6.super_class = VoiceOverNavigateImagesController;
  v2 = [(VoiceOverNavigateImagesController *)&v6 init];
  v3 = v2;
  if (v2)
  {
    [*&v2->AXUISettingsListController_opaque[OBJC_IVAR___PSListController__table] setDataSource:v2];
    v4 = v3;
  }

  return v3;
}

- (id)specifiers
{
  v3 = OBJC_IVAR___PSListController__specifiers;
  v4 = *&self->AXUISettingsListController_opaque[OBJC_IVAR___PSListController__specifiers];
  if (!v4)
  {
    v5 = +[NSMutableArray array];
    v6 = +[PSSpecifier emptyGroupSpecifier];
    [v5 addObject:v6];
    v7 = settingsLocString(@"NAV_IMG_ALWAYS", @"VoiceOverSettings");
    v8 = [PSSpecifier preferenceSpecifierNamed:v7 target:self set:0 get:0 detail:0 cell:3 edit:0];

    [v5 addObject:v8];
    v9 = settingsLocString(@"NAV_IMG_W_DESCRIPTIONS", @"VoiceOverSettings");
    v10 = [PSSpecifier preferenceSpecifierNamed:v9 target:self set:0 get:0 detail:0 cell:3 edit:0];

    [v5 addObject:v10];
    v11 = settingsLocString(@"NAV_IMG_NEVER", @"VoiceOverSettings");
    v12 = [PSSpecifier preferenceSpecifierNamed:v11 target:self set:0 get:0 detail:0 cell:3 edit:0];

    [v5 addObject:v12];
    v13 = *&self->AXUISettingsListController_opaque[v3];
    *&self->AXUISettingsListController_opaque[v3] = v5;

    v4 = *&self->AXUISettingsListController_opaque[v3];
  }

  return v4;
}

- (void)tableView:(id)a3 willDisplayCell:(id)a4 forRowAtIndexPath:(id)a5
{
  v12 = a4;
  v6 = a5;
  v7 = +[AXSettings sharedInstance];
  v8 = [v7 voiceOverNavigateImagesOption];

  v9 = [v6 row];
  v10 = 2;
  if (v9 != &dword_0 + 1)
  {
    v10 = 3;
  }

  if (!v9)
  {
    v10 = 1;
  }

  if (v8 == v10)
  {
    v11 = 3;
  }

  else
  {
    v11 = 0;
  }

  [v12 setAccessoryType:v11];
}

- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [v6 row];
  v9 = 2;
  if (v8 != &dword_0 + 1)
  {
    v9 = 3;
  }

  if (v8)
  {
    v10 = v9;
  }

  else
  {
    v10 = 1;
  }

  v11 = +[AXSettings sharedInstance];
  [v11 setVoiceOverNavigateImagesOption:v10];

  v12.receiver = self;
  v12.super_class = VoiceOverNavigateImagesController;
  [(VoiceOverNavigateImagesController *)&v12 tableView:v7 didSelectRowAtIndexPath:v6];

  [*&self->AXUISettingsListController_opaque[OBJC_IVAR___PSListController__table] reloadData];
}

@end