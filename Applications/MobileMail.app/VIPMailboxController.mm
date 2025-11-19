@interface VIPMailboxController
- (BOOL)wantsDisclosureButton;
- (id)mailboxTitle;
- (id)navigationTitle;
- (id)unreadCriterion;
- (id)unscopedCountPredicate;
- (void)_showVIPSettingsFromSelectionTarget:(id)a3 item:(id)a4 animated:(BOOL)a5;
- (void)presentFromSelectionTarget:(id)a3 item:(id)a4 accessoryTapped:(BOOL)a5 animated:(BOOL)a6;
@end

@implementation VIPMailboxController

- (id)unreadCriterion
{
  v2 = [(VIPMailboxController *)self criterion];
  v3 = +[NSUserDefaults standardUserDefaults];
  v4 = [v3 BOOLForKey:DisableThreadingKey];

  if ((v4 & 1) == 0)
  {
    [v2 setIncludeRelatedMessages:1];
  }

  return v2;
}

- (id)unscopedCountPredicate
{
  v2 = [EMMessageListItemPredicates predicateForIsVIP:1];
  v3 = +[EMMessageListItemPredicates predicateForUnreadMessages];
  v7[0] = v2;
  v7[1] = v3;
  v4 = [NSArray arrayWithObjects:v7 count:2];
  v5 = [NSCompoundPredicate andPredicateWithSubpredicates:v4];

  return v5;
}

- (id)mailboxTitle
{
  v2 = [NSBundle bundleForClass:objc_opt_class()];
  v3 = [v2 localizedStringForKey:@"VIP_MAILBOX" value:&stru_100662A88 table:@"Main"];

  return v3;
}

- (id)navigationTitle
{
  v2 = [NSBundle bundleForClass:objc_opt_class()];
  v3 = [v2 localizedStringForKey:@"VIP_NAVIGATION_TITLE" value:&stru_100662A88 table:@"Main"];

  return v3;
}

- (void)presentFromSelectionTarget:(id)a3 item:(id)a4 accessoryTapped:(BOOL)a5 animated:(BOOL)a6
{
  v10 = a3;
  v11 = a4;
  v12 = +[VIPManager defaultInstance];
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_10025BFD8;
  v15[3] = &unk_100656B68;
  v18 = a5;
  v15[4] = self;
  v13 = v10;
  v16 = v13;
  v14 = v11;
  v17 = v14;
  v19 = a6;
  [v12 getAllVIPsWithCompletion:v15];
}

- (void)_showVIPSettingsFromSelectionTarget:(id)a3 item:(id)a4 animated:(BOOL)a5
{
  v5 = a5;
  v9 = a3;
  v7 = a4;
  v8 = [[MFVIPSendersListTableViewController alloc] initWithStyle:2];
  [v9 selectCustomViewController:v8 item:v7 animated:v5];
}

- (BOOL)wantsDisclosureButton
{
  v2 = +[VIPManager defaultInstance];
  v3 = [v2 hasVIPs];

  return v3;
}

@end