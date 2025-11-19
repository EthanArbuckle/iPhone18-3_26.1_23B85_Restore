@interface FollowUpMailboxController
- (id)mailboxTitle;
@end

@implementation FollowUpMailboxController

- (id)mailboxTitle
{
  v2 = [NSBundle bundleForClass:objc_opt_class()];
  v3 = [v2 localizedStringForKey:@"FOLLOW_UP_MAILBOX" value:&stru_100662A88 table:@"Main"];

  return v3;
}

@end