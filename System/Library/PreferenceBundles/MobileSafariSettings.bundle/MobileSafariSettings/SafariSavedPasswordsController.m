@interface SafariSavedPasswordsController
- (void)emitNavigationEvent;
- (void)setSpecifier:(id)a3;
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
  v4 = [v3 title];
  [(SafariSavedPasswordsController *)self setTitle:v4];

  v5 = [(SafariSavedPasswordsController *)self view];
  v6 = [v3 view];
  [v5 addSubview:v6];
  [v5 bounds];
  [v6 setFrame:?];
  v7 = [v5 backgroundColor];
  [v6 setBackgroundColor:v7];

  [v6 setAutoresizingMask:18];
  [v3 didMoveToParentViewController:self];
}

- (void)emitNavigationEvent
{
  v3 = [NSURL URLWithString:@"settings-navigation://com.apple.Settings.General/AUTOFILL"];
  v4 = [_NSLocalizedStringResource alloc];
  v5 = +[NSLocale currentLocale];
  v6 = [NSBundle bundleForClass:objc_opt_class()];
  v7 = [v6 bundleURL];
  v8 = [v4 initWithKey:@"AutoFill & Passwords" table:0 locale:v5 bundleURL:v7];

  v9 = [_NSLocalizedStringResource alloc];
  v10 = +[NSLocale currentLocale];
  v11 = [NSBundle bundleForClass:objc_opt_class()];
  v12 = [v11 bundleURL];
  v13 = [v9 initWithKey:@"General" table:0 locale:v10 bundleURL:v12];

  v15 = v13;
  v14 = [NSArray arrayWithObjects:&v15 count:1];
  [(SafariSavedPasswordsController *)self pe_emitNavigationEventForSystemSettingsWithGraphicIconIdentifier:@"com.apple.graphic-icon.autofill" title:v8 localizedNavigationComponents:v14 deepLink:v3];
}

- (void)setSpecifier:(id)a3
{
  v4 = PSTitleKey;
  v5 = a3;
  [v5 setObject:@"PASSWORDS" forKeyedSubscript:v4];
  v6.receiver = self;
  v6.super_class = SafariSavedPasswordsController;
  [(SafariSavedPasswordsController *)&v6 setSpecifier:v5];
}

@end