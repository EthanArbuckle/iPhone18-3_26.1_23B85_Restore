@interface CLTVController
- (CLTVController)init;
- (id)_mediaSpecifiers;
- (id)specifiers;
- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4;
- (void)_openTVApp:(id)a3;
- (void)viewDidLoad;
@end

@implementation CLTVController

- (CLTVController)init
{
  v3.receiver = self;
  v3.super_class = CLTVController;
  return [(CLTVController *)&v3 initWithNibName:0 bundle:0];
}

- (void)viewDidLoad
{
  v8.receiver = self;
  v8.super_class = CLTVController;
  [(CLTVController *)&v8 viewDidLoad];
  v3 = [NSBundle bundleForClass:objc_opt_class()];
  v4 = [v3 localizedStringForKey:@"APPLE_TV" value:&stru_40E0 table:@"CLTVSettings"];

  if (WLKIsRegulatedSKU())
  {
    v5 = [NSBundle bundleForClass:objc_opt_class()];
    v6 = [v5 localizedStringForKey:@"VIDEOS" value:&stru_40E0 table:@"CLTVSettings"];

    v4 = v6;
  }

  v7 = [(CLTVController *)self navigationItem];
  [v7 setTitle:v4];
}

- (id)specifiers
{
  v3 = OBJC_IVAR___PSListController__specifiers;
  v4 = *&self->AXCLFBasePrivacyLinkController_opaque[OBJC_IVAR___PSListController__specifiers];
  if (!v4)
  {
    v5 = [(CLTVController *)self loadSpecifiersFromPlistName:@"CLTVController" target:self];
    v6 = [(CLTVController *)self _mediaSpecifiers];
    v7 = [(CLTVController *)self specifiersWithPrivacyLinkSupport:v6];
    v8 = *&self->AXCLFBasePrivacyLinkController_opaque[v3];
    *&self->AXCLFBasePrivacyLinkController_opaque[v3] = v7;

    v4 = *&self->AXCLFBasePrivacyLinkController_opaque[v3];
  }

  return v4;
}

- (id)_mediaSpecifiers
{
  v3 = +[NSMutableArray array];
  v4 = [PSSpecifier groupSpecifierWithName:0];
  [v3 addObject:v4];
  v5 = [NSBundle bundleForClass:objc_opt_class()];
  v6 = [v5 localizedStringForKey:@"VIEW_TV_LIBRARY" value:&stru_40E0 table:@"CLTVSettings"];

  if (WLKIsRegulatedSKU())
  {
    v7 = [NSBundle bundleForClass:objc_opt_class()];
    v8 = [v7 localizedStringForKey:@"VIEW_VIDEOS_LIBRARY" value:&stru_40E0 table:@"CLTVSettings"];

    v6 = v8;
  }

  v9 = [PSSpecifier preferenceSpecifierNamed:v6 target:self set:0 get:0 detail:0 cell:13 edit:0];
  [(CLTVController *)self setViewLibrarySpecifier:v9];

  v10 = [(CLTVController *)self viewLibrarySpecifier];
  [v10 setButtonAction:"_openTVApp:"];

  v11 = [(CLTVController *)self viewLibrarySpecifier];
  [v3 addObject:v11];

  return v3;
}

- (void)_openTVApp:(id)a3
{
  v4 = [[NSURL alloc] initWithString:@"https://tv.apple.com/library"];
  v3 = +[LSApplicationWorkspace defaultWorkspace];
  [v3 openURL:v4 withOptions:0];
}

- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4
{
  v6.receiver = self;
  v6.super_class = CLTVController;
  v4 = [(CLTVController *)&v6 tableView:a3 cellForRowAtIndexPath:a4];

  return v4;
}

@end