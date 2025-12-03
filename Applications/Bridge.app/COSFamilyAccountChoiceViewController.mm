@interface COSFamilyAccountChoiceViewController
- (COSFamilyAccountChoiceViewController)init;
- (id)detailString;
- (id)okayButtonTitle;
- (id)privacyBundles;
- (id)suggestedButtonTitle;
- (id)titleString;
- (void)okayButtonPressed:(id)pressed;
- (void)suggestedButtonPressed:(id)pressed;
- (void)viewWillAppear:(BOOL)appear;
- (void)viewWillDisappear:(BOOL)disappear;
@end

@implementation COSFamilyAccountChoiceViewController

- (void)viewWillAppear:(BOOL)appear
{
  v11.receiver = self;
  v11.super_class = COSFamilyAccountChoiceViewController;
  [(COSFamilyAccountChoiceViewController *)&v11 viewWillAppear:appear];
  v4 = pbb_accountsignin_log();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v10 = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "view did appear(COSFamilyAccountChoiceViewController)", v10, 2u);
  }

  navigationController = [(COSFamilyAccountChoiceViewController *)self navigationController];
  topViewController = [navigationController topViewController];
  view = [topViewController view];
  [view setUserInteractionEnabled:1];

  navigationController2 = [(COSFamilyAccountChoiceViewController *)self navigationController];
  navigationBar = [navigationController2 navigationBar];
  [navigationBar setUserInteractionEnabled:1];
}

- (void)viewWillDisappear:(BOOL)disappear
{
  v7.receiver = self;
  v7.super_class = COSFamilyAccountChoiceViewController;
  [(COSFamilyAccountChoiceViewController *)&v7 viewWillDisappear:disappear];
  navigationController = [(COSFamilyAccountChoiceViewController *)self navigationController];
  navigationBar = [navigationController navigationBar];
  topItem = [navigationBar topItem];

  [topItem setRightBarButtonItem:0 animated:0];
}

- (COSFamilyAccountChoiceViewController)init
{
  v5.receiver = self;
  v5.super_class = COSFamilyAccountChoiceViewController;
  v2 = [(COSOptinViewController *)&v5 init];
  v3 = v2;
  if (v2)
  {
    [(COSFamilyAccountChoiceViewController *)v2 setStyle:34];
  }

  return v3;
}

- (id)privacyBundles
{
  v4 = OBPrivacyAppleIDIdentifier;
  v2 = [NSArray arrayWithObjects:&v4 count:1];

  return v2;
}

- (id)titleString
{
  v2 = +[NSBundle mainBundle];
  v3 = [v2 localizedStringForKey:@"FAMILY_MEMBER_CHOICE_TITLE" value:&stru_10026E598 table:@"AccountLocalizable-tinker"];

  return v3;
}

- (id)detailString
{
  v2 = +[NSBundle mainBundle];
  v3 = [v2 localizedStringForKey:@"FAMILY_MEMBER_CHOICE_DETAIL" value:&stru_10026E598 table:@"AccountLocalizable-tinker"];

  return v3;
}

- (void)suggestedButtonPressed:(id)pressed
{
  delegate = [(COSFamilyAccountChoiceViewController *)self delegate];
  [delegate buddyControllerDone:self nextControllerClass:objc_opt_class()];
}

- (void)okayButtonPressed:(id)pressed
{
  delegate = [(COSFamilyAccountChoiceViewController *)self delegate];
  [delegate buddyControllerDone:self nextControllerClass:objc_opt_class()];
}

- (id)suggestedButtonTitle
{
  v2 = +[NSBundle mainBundle];
  v3 = [v2 localizedStringForKey:@"FAMILY_MEMBER_CHOICE_EXISTING" value:&stru_10026E598 table:@"AccountLocalizable-tinker"];

  return v3;
}

- (id)okayButtonTitle
{
  v2 = +[NSBundle mainBundle];
  v3 = [v2 localizedStringForKey:@"FAMILY_MEMBER_CHOICE_CREATE" value:&stru_10026E598 table:@"AccountLocalizable-tinker"];

  return v3;
}

@end