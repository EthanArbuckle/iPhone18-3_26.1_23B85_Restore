@interface HasAttachmentsMailboxController
- (CGPoint)iconOffset;
- (id)mailboxTitle;
- (id)navigationTitle;
- (id)unscopedCountPredicate;
@end

@implementation HasAttachmentsMailboxController

- (id)unscopedCountPredicate
{
  v2 = +[EMMessageListItemPredicates predicateForMessagesWithAttachments];
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
  v3 = [v2 localizedStringForKey:@"HAS_ATTACHMENTS_MAILBOX" value:&stru_100662A88 table:@"Main"];

  return v3;
}

- (id)navigationTitle
{
  v2 = [NSBundle bundleForClass:objc_opt_class()];
  v3 = [v2 localizedStringForKey:@"HAS_ATTACHMENTS_NAVIGATION_TITLE" value:&stru_100662A88 table:@"Main"];

  return v3;
}

- (CGPoint)iconOffset
{
  v2 = 0.0;
  v3 = 0.0;
  result.y = v3;
  result.x = v2;
  return result;
}

@end