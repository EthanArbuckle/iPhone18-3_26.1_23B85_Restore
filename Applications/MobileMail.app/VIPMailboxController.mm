@interface VIPMailboxController
- (BOOL)wantsDisclosureButton;
- (id)mailboxTitle;
- (id)navigationTitle;
- (id)unreadCriterion;
- (id)unscopedCountPredicate;
- (void)_showVIPSettingsFromSelectionTarget:(id)target item:(id)item animated:(BOOL)animated;
- (void)presentFromSelectionTarget:(id)target item:(id)item accessoryTapped:(BOOL)tapped animated:(BOOL)animated;
@end

@implementation VIPMailboxController

- (id)unreadCriterion
{
  criterion = [(VIPMailboxController *)self criterion];
  v3 = +[NSUserDefaults standardUserDefaults];
  v4 = [v3 BOOLForKey:DisableThreadingKey];

  if ((v4 & 1) == 0)
  {
    [criterion setIncludeRelatedMessages:1];
  }

  return criterion;
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

- (void)presentFromSelectionTarget:(id)target item:(id)item accessoryTapped:(BOOL)tapped animated:(BOOL)animated
{
  targetCopy = target;
  itemCopy = item;
  v12 = +[VIPManager defaultInstance];
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_10025BFD8;
  v15[3] = &unk_100656B68;
  tappedCopy = tapped;
  v15[4] = self;
  v13 = targetCopy;
  v16 = v13;
  v14 = itemCopy;
  v17 = v14;
  animatedCopy = animated;
  [v12 getAllVIPsWithCompletion:v15];
}

- (void)_showVIPSettingsFromSelectionTarget:(id)target item:(id)item animated:(BOOL)animated
{
  animatedCopy = animated;
  targetCopy = target;
  itemCopy = item;
  v8 = [[MFVIPSendersListTableViewController alloc] initWithStyle:2];
  [targetCopy selectCustomViewController:v8 item:itemCopy animated:animatedCopy];
}

- (BOOL)wantsDisclosureButton
{
  v2 = +[VIPManager defaultInstance];
  hasVIPs = [v2 hasVIPs];

  return hasVIPs;
}

@end