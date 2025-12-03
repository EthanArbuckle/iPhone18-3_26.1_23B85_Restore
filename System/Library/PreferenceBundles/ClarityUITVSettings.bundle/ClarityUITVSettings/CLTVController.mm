@interface CLTVController
- (CLTVController)init;
- (id)_mediaSpecifiers;
- (id)specifiers;
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path;
- (void)_openTVApp:(id)app;
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

  navigationItem = [(CLTVController *)self navigationItem];
  [navigationItem setTitle:v4];
}

- (id)specifiers
{
  v3 = OBJC_IVAR___PSListController__specifiers;
  v4 = *&self->AXCLFBasePrivacyLinkController_opaque[OBJC_IVAR___PSListController__specifiers];
  if (!v4)
  {
    v5 = [(CLTVController *)self loadSpecifiersFromPlistName:@"CLTVController" target:self];
    _mediaSpecifiers = [(CLTVController *)self _mediaSpecifiers];
    v7 = [(CLTVController *)self specifiersWithPrivacyLinkSupport:_mediaSpecifiers];
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

  viewLibrarySpecifier = [(CLTVController *)self viewLibrarySpecifier];
  [viewLibrarySpecifier setButtonAction:"_openTVApp:"];

  viewLibrarySpecifier2 = [(CLTVController *)self viewLibrarySpecifier];
  [v3 addObject:viewLibrarySpecifier2];

  return v3;
}

- (void)_openTVApp:(id)app
{
  v4 = [[NSURL alloc] initWithString:@"https://tv.apple.com/library"];
  v3 = +[LSApplicationWorkspace defaultWorkspace];
  [v3 openURL:v4 withOptions:0];
}

- (id)tableView:(id)view cellForRowAtIndexPath:(id)path
{
  v6.receiver = self;
  v6.super_class = CLTVController;
  v4 = [(CLTVController *)&v6 tableView:view cellForRowAtIndexPath:path];

  return v4;
}

@end