@interface DTNetQualSettingsFooter
- (DTNetQualSettingsFooter)initWithSpecifier:(id)specifier;
- (void)_networkQualityOpenURL;
- (void)_openNetworkQualityDetails:(id)details;
- (void)donePressed;
@end

@implementation DTNetQualSettingsFooter

- (DTNetQualSettingsFooter)initWithSpecifier:(id)specifier
{
  specifierCopy = specifier;
  v13.receiver = self;
  v13.super_class = DTNetQualSettingsFooter;
  v6 = [(DTNetQualSettingsFooter *)&v13 initWithSpecifier:specifierCopy];
  if (v6)
  {
    v7 = [NSBundle bundleForClass:objc_opt_class()];
    v8 = [v7 localizedStringForKey:@"FOOTER_TEXT" value:&stru_3E0D8 table:@"DTNetQualSettings"];

    v9 = [NSBundle bundleForClass:objc_opt_class()];
    v10 = [v9 localizedStringForKey:@"FOOTER_LEARN" value:&stru_3E0D8 table:@"DTNetQualSettings"];

    v11 = [NSString stringWithFormat:@"%@ %@", v8, v10];
    objc_storeStrong(&v6->specifier, specifier);
    -[DTNetQualSettingsFooter setLinkRange:](v6, "setLinkRange:", [v11 length] - objc_msgSend(v10, "length"), objc_msgSend(v10, "length"));
    [(DTNetQualSettingsFooter *)v6 setText:v11];
    [(DTNetQualSettingsFooter *)v6 setTarget:v6];
    [(DTNetQualSettingsFooter *)v6 setAction:"_openNetworkQualityDetails:"];
  }

  return v6;
}

- (void)_networkQualityOpenURL
{
  v3 = +[UIApplication sharedApplication];
  v2 = [NSURL URLWithString:@"https://support.apple.com/kb/HT212313"];
  [v3 openURL:v2 options:&__NSDictionary0__struct completionHandler:0];
}

- (void)_openNetworkQualityDetails:(id)details
{
  v4 = [OBTextWelcomeController alloc];
  v5 = [NSBundle bundleForClass:objc_opt_class()];
  v6 = [v5 localizedStringForKey:@"LEARN_TITLE" value:&stru_3E0D8 table:@"DTNetQualSettings"];
  v27 = [v4 initWithTitle:v6 detailText:0 symbolName:0 contentLayout:2];

  v7 = [NSBundle bundleForClass:objc_opt_class()];
  v8 = [v7 localizedStringForKey:@"LEARN_SECTION1_TITLE" value:&stru_3E0D8 table:@"DTNetQualSettings"];
  v9 = [NSBundle bundleForClass:objc_opt_class()];
  v10 = SFLocalizableWAPIStringKeyForKey();
  v11 = [v9 localizedStringForKey:v10 value:&stru_3E0D8 table:@"DTNetQualSettings"];
  [v27 addSectionWithHeader:v8 content:v11];

  v12 = [NSBundle bundleForClass:objc_opt_class()];
  v13 = [v12 localizedStringForKey:@"LEARN_SECTION2_TITLE" value:&stru_3E0D8 table:@"DTNetQualSettings"];
  v14 = [NSBundle bundleForClass:objc_opt_class()];
  v15 = [v14 localizedStringForKey:@"LEARN_SECTION2_TEXT" value:&stru_3E0D8 table:@"DTNetQualSettings"];
  [v27 addSectionWithHeader:v13 content:v15];

  v16 = [NSBundle bundleForClass:objc_opt_class()];
  v17 = [v16 localizedStringForKey:@"LEARN_SECTION3_TITLE" value:&stru_3E0D8 table:@"DTNetQualSettings"];
  v18 = [NSBundle bundleForClass:objc_opt_class()];
  v19 = [v18 localizedStringForKey:@"LEARN_SECTION3_TEXT" value:&stru_3E0D8 table:@"DTNetQualSettings"];
  [v27 addSectionWithHeader:v17 content:v19];

  v20 = +[OBTextSectionAccessoryButton accessoryButton];
  [v20 setTitle:@"https://support.apple.com/kb/HT212313" forState:0];
  [v20 addTarget:self action:"_networkQualityOpenURL" forControlEvents:64];
  v21 = [NSBundle bundleForClass:objc_opt_class()];
  v22 = [v21 localizedStringForKey:@"LEARN_KB_TITLE" value:&stru_3E0D8 table:@"DTNetQualSettings"];
  [v27 addSectionWithHeader:0 content:v22 accessoryButton:v20];

  v23 = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:0 target:self action:"donePressed"];
  navigationItem = [v27 navigationItem];
  [navigationItem setRightBarButtonItem:v23];

  v25 = [[UINavigationController alloc] initWithRootViewController:v27];
  target = [(PSSpecifier *)self->specifier target];
  [target presentViewController:v25 animated:1 completion:0];
}

- (void)donePressed
{
  target = [(PSSpecifier *)self->specifier target];
  [target dismissViewControllerAnimated:1 completion:0];
}

@end