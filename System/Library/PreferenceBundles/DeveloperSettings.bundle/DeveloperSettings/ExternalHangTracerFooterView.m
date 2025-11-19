@interface ExternalHangTracerFooterView
- (ExternalHangTracerFooterView)initWithSpecifier:(id)a3;
- (void)didTapLearnMore;
- (void)didTapLearnMoreLink;
- (void)didTapOpenSettings;
@end

@implementation ExternalHangTracerFooterView

- (ExternalHangTracerFooterView)initWithSpecifier:(id)a3
{
  v4 = a3;
  v21.receiver = self;
  v21.super_class = ExternalHangTracerFooterView;
  v5 = [(ExternalHangTracerFooterView *)&v21 initWithSpecifier:v4];
  if (v5)
  {
    v6 = HTUIActivationToggleFooterPart1();
    v7 = HTUIActivationToggleFooterPart2();
    v8 = HTUIActivationToggleFooterPartJoiner_Part1_Part2();
    v9 = [NSString localizedStringWithFormat:v8, v6, v7];

    v10 = [v9 length];
    v11 = v10 - [v7 length];
    v12 = [v7 length];
    v13 = objc_opt_new();
    v14 = [v13 isInternalBuild];

    if (v14)
    {
      v15 = HTUIInternalRedirect();
      v16 = [NSString localizedStringWithFormat:@"%@%@", v9, v15];

      v17 = HTUIAsteriskedRangeFromString();
      v19 = v18;
      v9 = [v16 stringByReplacingOccurrencesOfString:@"*" withString:&stru_3E0D8];
    }

    else
    {
      v19 = 0;
      v17 = 0x7FFFFFFFFFFFFFFFLL;
    }

    [v4 setProperty:v9 forKey:PSFooterTextGroupKey];
    [v4 addFooterHyperlinkWithRange:v11 target:v12 action:{v5, "didTapLearnMore"}];
    if (v17 != 0x7FFFFFFFFFFFFFFFLL)
    {
      [v4 addFooterHyperlinkWithRange:v17 target:v19 action:{v5, "didTapOpenSettings"}];
    }

    [(ExternalHangTracerFooterView *)v5 setSpecifier:v4];
    [(ExternalHangTracerFooterView *)v5 refreshContentsWithSpecifier:v4];
  }

  return v5;
}

- (void)didTapLearnMore
{
  v3 = [OBTextWelcomeController alloc];
  v4 = HTUILearnMoreTitle();
  v5 = [v3 initWithTitle:v4 detailText:0 symbolName:0 contentLayout:2];

  v6 = HTUILearnMoreWhatAreHangsTitle();
  v7 = HTUILearnMoreWhatAreHangsContent();
  [v5 addSectionWithHeader:v6 content:v7];

  v8 = HTUILearnMoreHUDTitle();
  v9 = HTUILearnMoreHUDContent();
  [v5 addSectionWithHeader:v8 content:v9];

  v10 = HTUILearnMoreLogLimitTitle();
  v11 = HTUILearnMoreLogLimitContent();
  [v5 addSectionWithHeader:v10 content:v11];

  v12 = HTUILearnMoreFileTypesTitle();
  [v5 addSectionWithHeader:0 content:v12];

  v13 = HTUILearnMoreFileTypesIPS();
  [v5 addBulletedListItemWithTitle:v13 description:0 accessoryButton:0];

  v14 = HTUILearnMoreFileTypesTailspin();
  [v5 addBulletedListItemWithTitle:v14 description:0 accessoryButton:0];

  v15 = HTUILearnMoreFileTypesShare();
  [v5 addSectionWithHeader:0 content:v15];

  v16 = +[OBTextSectionAccessoryButton accessoryButton];
  v17 = HTUILearnMoreURL();
  [v16 setTitle:v17 forState:0];

  [v16 addTarget:self action:"didTapLearnMoreLink" forControlEvents:64];
  v18 = HTUILearnMoreURLPrefix();
  [v5 addSectionWithHeader:0 content:v18 accessoryButton:v16];

  v19 = [UIBarButtonItem alloc];
  v27[0] = _NSConcreteStackBlock;
  v27[1] = 3221225472;
  v27[2] = sub_8570;
  v27[3] = &unk_3D310;
  v28 = v5;
  v20 = v5;
  v21 = [UIAction actionWithHandler:v27];
  v22 = [v19 initWithBarButtonSystemItem:0 primaryAction:v21];

  v23 = [v20 navigationItem];
  [v23 setRightBarButtonItem:v22];

  v24 = [[UINavigationController alloc] initWithRootViewController:v20];
  v25 = [(ExternalHangTracerFooterView *)self specifier];
  v26 = [v25 target];
  [v26 presentModalViewController:v24 withTransition:3];
}

- (void)didTapLearnMoreLink
{
  v4 = +[UIApplication sharedApplication];
  v2 = HTUILearnMoreURL();
  v3 = [NSURL URLWithString:v2];
  [v4 openURL:v3 options:&__NSDictionary0__struct completionHandler:0];
}

- (void)didTapOpenSettings
{
  v3 = +[LSApplicationWorkspace defaultWorkspace];
  v2 = [NSURL URLWithString:@"settings-navigation://com.apple.Settings.Internal.Classic/HANGTRACER/"];
  [v3 openSensitiveURL:v2 withOptions:0];
}

@end