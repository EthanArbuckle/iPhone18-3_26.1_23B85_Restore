@interface UnreadMailboxController
- (CGPoint)iconOffset;
- (id)mailboxTitle;
- (id)navigationTitle;
- (id)serverCountMailboxScope;
@end

@implementation UnreadMailboxController

- (id)serverCountMailboxScope
{
  v2 = [(SharedMailboxController *)self mailbox];
  v3 = [v2 mailboxScope];

  return v3;
}

- (id)mailboxTitle
{
  v2 = [NSBundle bundleForClass:objc_opt_class()];
  v3 = [v2 localizedStringForKey:@"UNREAD_MAILBOX" value:&stru_100662A88 table:@"Main"];

  return v3;
}

- (id)navigationTitle
{
  v2 = [NSBundle bundleForClass:objc_opt_class()];
  v3 = [v2 localizedStringForKey:@"UNREAD_NAVIGATION_TITLE" value:&stru_100662A88 table:@"Main"];

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