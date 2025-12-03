@interface COSScreenTimePasscodeSetViewController
- (COSScreenTimePasscodeSetViewController)init;
- (STSMiniFlowControllerDelegate)miniFlowDelegate;
- (id)detailString;
- (id)suggestedButtonTitle;
- (id)titleString;
- (void)suggestedButtonPressed:(id)pressed;
- (void)viewDidLoad;
@end

@implementation COSScreenTimePasscodeSetViewController

- (COSScreenTimePasscodeSetViewController)init
{
  v5.receiver = self;
  v5.super_class = COSScreenTimePasscodeSetViewController;
  v2 = [(COSScreenTimePasscodeSetViewController *)&v5 init];
  v3 = v2;
  if (v2)
  {
    [(COSScreenTimePasscodeSetViewController *)v2 setStyle:2];
  }

  return v3;
}

- (void)viewDidLoad
{
  v23.receiver = self;
  v23.super_class = COSScreenTimePasscodeSetViewController;
  [(COSScreenTimePasscodeSetViewController *)&v23 viewDidLoad];
  miniFlowDelegate = [(COSScreenTimePasscodeSetViewController *)self miniFlowDelegate];
  familyMemberFirstName = [miniFlowDelegate familyMemberFirstName];

  v5 = +[NSBundle mainBundle];
  v6 = [v5 localizedStringForKey:@"SCREEN_TIME_HIGHLIGHT_COMM_RESTRICTIONS" value:&stru_10026E598 table:@"ScreenTimeSetupLocalizable"];
  v7 = +[NSBundle mainBundle];
  v8 = [v7 localizedStringForKey:@"SCREEN_TIME_HIGHLIGHT_COMM_RESTRICTIONS_BODY_%@" value:&stru_10026E598 table:@"ScreenTimeSetupLocalizable"];
  v9 = [NSString stringWithFormat:v8, familyMemberFirstName];
  v10 = [UIImage imageNamed:@"CommRestrictions"];
  [(COSScreenTimePasscodeSetViewController *)self addBulletedListItemWithTitle:v6 description:v9 image:v10];

  v11 = +[NSBundle mainBundle];
  v12 = [v11 localizedStringForKey:@"SCREEN_TIME_HIGHLIGHT_DOWNTIME" value:&stru_10026E598 table:@"ScreenTimeSetupLocalizable"];
  v13 = +[NSBundle mainBundle];
  v14 = [v13 localizedStringForKey:@"SCREEN_TIME_HIGHLIGHT_DOWNTIME_BODY" value:&stru_10026E598 table:@"ScreenTimeSetupLocalizable"];
  v15 = [NSString stringWithFormat:v14, familyMemberFirstName];
  v16 = [UIImage imageNamed:@"Downtime"];
  [(COSScreenTimePasscodeSetViewController *)self addBulletedListItemWithTitle:v12 description:v15 image:v16];

  v17 = +[NSBundle mainBundle];
  v18 = [v17 localizedStringForKey:@"SCREEN_TIME_HIGHLIGHT_CONTENT_AND_RESTRICTIONS" value:&stru_10026E598 table:@"ScreenTimeSetupLocalizable"];
  v19 = +[NSBundle mainBundle];
  v20 = [v19 localizedStringForKey:@"SCREEN_TIME_HIGHLIGHT_CONTENT_AND_RESTRICTIONS_BODY" value:&stru_10026E598 table:@"ScreenTimeSetupLocalizable"];
  v21 = [NSString stringWithFormat:v20, familyMemberFirstName];
  v22 = [UIImage imageNamed:@"ContentAndRestrictions"];
  [(COSScreenTimePasscodeSetViewController *)self addBulletedListItemWithTitle:v18 description:v21 image:v22];
}

- (id)titleString
{
  v2 = +[NSBundle mainBundle];
  v3 = [v2 localizedStringForKey:@"SCREEN_TIME_PASSCODE_SET_TITLE" value:&stru_10026E598 table:@"ScreenTimeSetupLocalizable"];

  return v3;
}

- (id)detailString
{
  v2 = +[NSBundle mainBundle];
  v3 = [v2 localizedStringForKey:@"SCREEN_TIME_PASSCODE_SET_DETAIL" value:&stru_10026E598 table:@"ScreenTimeSetupLocalizable"];

  return v3;
}

- (id)suggestedButtonTitle
{
  v2 = +[NSBundle mainBundle];
  v3 = [v2 localizedStringForKey:@"SCREEN_TIME_CONTINUE" value:&stru_10026E598 table:@"ScreenTimeSetupLocalizable"];

  return v3;
}

- (void)suggestedButtonPressed:(id)pressed
{
  miniFlowDelegate = [(COSScreenTimePasscodeSetViewController *)self miniFlowDelegate];
  [miniFlowDelegate miniFlowStepComplete:self];
}

- (STSMiniFlowControllerDelegate)miniFlowDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->miniFlowDelegate);

  return WeakRetained;
}

@end