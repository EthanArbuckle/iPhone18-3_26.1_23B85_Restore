@interface COSTinkerFamilyInfoViewController
- (COSTinkerFamilyInfoViewController)init;
- (id)detailString;
- (id)okayButtonTitle;
- (id)titleString;
- (void)okayButtonPressed:(id)pressed;
@end

@implementation COSTinkerFamilyInfoViewController

- (COSTinkerFamilyInfoViewController)init
{
  v5.receiver = self;
  v5.super_class = COSTinkerFamilyInfoViewController;
  v2 = [(COSOptinViewController *)&v5 init];
  v3 = v2;
  if (v2)
  {
    [(COSTinkerFamilyInfoViewController *)v2 setStyle:32];
  }

  return v3;
}

- (id)titleString
{
  v2 = +[NSBundle mainBundle];
  v3 = [v2 localizedStringForKey:@"TINKER_FAMILY_SETUP_TITLE" value:&stru_10026E598 table:@"SetupFlowLocalizable-tinker"];

  return v3;
}

- (id)detailString
{
  v2 = +[NSBundle mainBundle];
  v3 = [v2 localizedStringForKey:@"TINKER_FAMILY_SETUP_DETAIL" value:&stru_10026E598 table:@"SetupFlowLocalizable-tinker"];

  return v3;
}

- (id)okayButtonTitle
{
  v2 = +[NSBundle mainBundle];
  v3 = [v2 localizedStringForKey:@"TINKER_FAMILY_OKAY" value:&stru_10026E598 table:@"SetupFlowLocalizable-tinker"];

  return v3;
}

- (void)okayButtonPressed:(id)pressed
{
  delegate = [(COSTinkerFamilyInfoViewController *)self delegate];
  [delegate buddyControllerDone:self];
}

@end