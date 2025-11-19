@interface NotifyThreadsMailboxController
- (id)iconTintColor;
- (id)mailboxTitle;
- (id)navigationTitle;
- (id)unreadCriterion;
- (id)unscopedCountPredicate;
@end

@implementation NotifyThreadsMailboxController

- (id)unreadCriterion
{
  v2 = [(NotifyThreadsMailboxController *)self criterion];
  v3 = +[NSUserDefaults em_userDefaults];
  v4 = [v3 BOOLForKey:DisableThreadingKey];

  if ((v4 & 1) == 0)
  {
    [v2 setIncludeRelatedMessages:1];
  }

  return v2;
}

- (id)unscopedCountPredicate
{
  v2 = +[EMMessageListItemPredicates predicateForNotifyMessages];
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
  v3 = [v2 localizedStringForKey:@"NOTIFY_ME_MAILBOX" value:&stru_100662A88 table:@"Main"];

  return v3;
}

- (id)navigationTitle
{
  v2 = [NSBundle bundleForClass:objc_opt_class()];
  v3 = [v2 localizedStringForKey:@"NOTIFY_ME_NAVIGATION_TITLE" value:&stru_100662A88 table:@"Main"];

  return v3;
}

- (id)iconTintColor
{
  if (MUISolariumFeatureEnabled())
  {
    v2 = 0;
  }

  else
  {
    v2 = +[UIColor mailInteractiveColor];
  }

  return v2;
}

@end