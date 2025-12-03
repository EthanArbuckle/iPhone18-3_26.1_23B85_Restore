@interface SafariSavedPasswordsController
- (void)emitNavigationEvent;
- (void)setSpecifier:(id)specifier;
- (void)viewDidLoad;
@end

@implementation SafariSavedPasswordsController

- (void)viewDidLoad
{
  v8.receiver = self;
  v8.super_class = SafariSavedPasswordsController;
  [(SafariSavedPasswordsController *)&v8 viewDidLoad];
  v3 = +[PMPasswordOptionsController makePasswordOptionsViewController];
  [(SafariSavedPasswordsController *)self addChildViewController:v3];
  title = [v3 title];
  [(SafariSavedPasswordsController *)self setTitle:title];

  view = [(SafariSavedPasswordsController *)self view];
  view2 = [v3 view];
  [view addSubview:view2];
  [view bounds];
  [view2 setFrame:?];
  backgroundColor = [view backgroundColor];
  [view2 setBackgroundColor:backgroundColor];

  [view2 setAutoresizingMask:18];
  [v3 didMoveToParentViewController:self];
}

- (void)emitNavigationEvent
{
  v3 = [NSURL URLWithString:@"settings-navigation://com.apple.Settings.General/AUTOFILL"];
  v4 = [_NSLocalizedStringResource alloc];
  v5 = +[NSLocale currentLocale];
  v6 = [NSBundle bundleForClass:objc_opt_class()];
  bundleURL = [v6 bundleURL];
  v8 = [v4 initWithKey:@"AutoFill & Passwords" table:0 locale:v5 bundleURL:bundleURL];

  v9 = [_NSLocalizedStringResource alloc];
  v10 = +[NSLocale currentLocale];
  v11 = [NSBundle bundleForClass:objc_opt_class()];
  bundleURL2 = [v11 bundleURL];
  v13 = [v9 initWithKey:@"General" table:0 locale:v10 bundleURL:bundleURL2];

  v15 = v13;
  v14 = [NSArray arrayWithObjects:&v15 count:1];
  [(SafariSavedPasswordsController *)self pe_emitNavigationEventForSystemSettingsWithGraphicIconIdentifier:@"com.apple.graphic-icon.autofill" title:v8 localizedNavigationComponents:v14 deepLink:v3];
}

- (void)setSpecifier:(id)specifier
{
  v4 = PSTitleKey;
  specifierCopy = specifier;
  [specifierCopy setObject:@"PASSWORDS" forKeyedSubscript:v4];
  v6.receiver = self;
  v6.super_class = SafariSavedPasswordsController;
  [(SafariSavedPasswordsController *)&v6 setSpecifier:specifierCopy];
}

@end