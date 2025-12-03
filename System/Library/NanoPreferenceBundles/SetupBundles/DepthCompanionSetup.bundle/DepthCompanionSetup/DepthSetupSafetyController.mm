@interface DepthSetupSafetyController
- (BPSSetupMiniFlowControllerDelegate)miniFlowDelegate;
- (DepthSetupSafetyController)init;
- (id)_learnMoreLink;
- (id)detailText;
- (id)okayButtonTitle;
- (id)titleString;
- (void)_addContinueButton;
- (void)learnMoreLinkPressed;
- (void)okayButtonPressed:(id)pressed;
- (void)viewDidLoad;
@end

@implementation DepthSetupSafetyController

- (DepthSetupSafetyController)init
{
  v3.receiver = self;
  v3.super_class = DepthSetupSafetyController;
  return [(DepthSetupSafetyController *)&v3 initWithTitle:&stru_8308];
}

- (void)viewDidLoad
{
  v16.receiver = self;
  v16.super_class = DepthSetupSafetyController;
  [(DepthSetupSafetyController *)&v16 viewDidLoad];
  v3 = [UIImage systemImageNamed:@"water.waves.and.arrow.down.trianglebadge.exclamationmark"];
  headerView = [(DepthSetupSafetyController *)self headerView];
  [headerView setIcon:v3 accessibilityLabel:0];

  v5 = +[UIColor systemBlackColor];
  contentView = [(DepthSetupSafetyController *)self contentView];
  [contentView setBackgroundColor:v5];

  headerView2 = [(DepthSetupSafetyController *)self headerView];
  titleString = [(DepthSetupSafetyController *)self titleString];
  [headerView2 setTitle:titleString];

  headerView3 = [(DepthSetupSafetyController *)self headerView];
  detailText = [(DepthSetupSafetyController *)self detailText];
  [headerView3 setDetailText:detailText];

  [(DepthSetupSafetyController *)self _addContinueButton];
  v11 = [NSBundle bundleForClass:objc_opt_class()];
  v12 = [v11 localizedStringForKey:@"CHARON_SAFETY_DETAIL_BULLET1" value:&stru_8308 table:@"Localizable"];
  [(DepthSetupSafetyController *)self addBulletedListItemWithTitle:v12 description:0];

  v13 = [NSBundle bundleForClass:objc_opt_class()];
  v14 = [v13 localizedStringForKey:@"CHARON_SAFETY_DETAIL_BULLET2" value:&stru_8308 table:@"Localizable"];
  _learnMoreLink = [(DepthSetupSafetyController *)self _learnMoreLink];
  [(DepthSetupSafetyController *)self addBulletedListItemWithTitle:v14 description:0 accessoryButton:_learnMoreLink];
}

- (id)_learnMoreLink
{
  v3 = objc_alloc_init(OBTextBulletedListAccessoryButton);
  [v3 addTarget:self action:"learnMoreLinkPressed" forControlEvents:64];
  v4 = BPSTextColor();
  [v3 setTitleColor:v4 forState:0];

  v5 = [NSBundle bundleForClass:objc_opt_class()];
  v6 = [v5 localizedStringForKey:@"LEARN_MORE_IN_CHARON_LINK" value:&stru_8308 table:@"Localizable"];
  [v3 setTitle:v6 forState:0];

  v7 = [UIFont preferredFontForTextStyle:UIFontTextStyleSubheadline];
  titleLabel = [v3 titleLabel];
  [titleLabel setFont:v7];

  return v3;
}

- (void)_addContinueButton
{
  v9 = +[OBBoldTrayButton boldButton];
  [v9 addTarget:self action:"okayButtonPressed:" forControlEvents:64];
  v3 = BPSPillSelectedColor();
  [v9 setTintColor:v3];

  v4 = BPSPillDeselectedColor();
  v5 = BPSPillButtonBackground();
  [v9 setBackgroundImage:v5 forState:2];

  v6 = [UIColor colorWithWhite:0.7 alpha:1.0];
  [v9 setTitleColor:v6 forState:2];

  okayButtonTitle = [(DepthSetupSafetyController *)self okayButtonTitle];
  [v9 setTitle:okayButtonTitle forState:0];

  buttonTray = [(DepthSetupSafetyController *)self buttonTray];
  [buttonTray addButton:v9];
}

- (void)learnMoreLinkPressed
{
  v3 = HLPHelpViewControllerVersionLatest;
  v4 = [NSBundle bundleForClass:objc_opt_class()];
  v5 = [v4 localizedStringForKey:@"USER_GUIDE_TITLE" value:&stru_8308 table:@"Localizable"];
  v7 = [HLPHelpViewController helpViewControllerWithTitle:v5 identifier:@"watch" version:v3];

  [v7 setShowTopicViewOnLoad:1];
  [v7 setSelectedHelpTopicID:@"apd9073c83d6"];
  v6 = [[UINavigationController alloc] initWithRootViewController:v7];
  [(DepthSetupSafetyController *)self presentViewController:v6 animated:1 completion:0];
}

- (id)titleString
{
  v2 = [NSBundle bundleForClass:objc_opt_class()];
  v3 = [v2 localizedStringForKey:@"CHARON_SAFETY_TITLE" value:&stru_8308 table:@"Localizable"];

  return v3;
}

- (id)okayButtonTitle
{
  v2 = [NSBundle bundleForClass:objc_opt_class()];
  v3 = [v2 localizedStringForKey:@"CHARON_SAFETY_CONTINUE" value:&stru_8308 table:@"Localizable"];

  return v3;
}

- (id)detailText
{
  v2 = [NSBundle bundleForClass:objc_opt_class()];
  v3 = [v2 localizedStringForKey:@"CHARON_SAFETY_DETAIL" value:&stru_8308 table:@"Localizable"];

  return v3;
}

- (void)okayButtonPressed:(id)pressed
{
  miniFlowDelegate = [(DepthSetupSafetyController *)self miniFlowDelegate];
  [miniFlowDelegate miniFlowStepComplete:self];
}

- (BPSSetupMiniFlowControllerDelegate)miniFlowDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->miniFlowDelegate);

  return WeakRetained;
}

@end