@interface FlaggedMailboxController
- (CGPoint)iconOffset;
- (id)mailboxTitle;
- (id)navigationTitle;
@end

@implementation FlaggedMailboxController

- (id)mailboxTitle
{
  v2 = [NSBundle bundleForClass:objc_opt_class()];
  v3 = [v2 localizedStringForKey:@"FLAGGED_MAILBOX" value:&stru_100662A88 table:@"Main"];

  return v3;
}

- (id)navigationTitle
{
  v2 = [NSBundle bundleForClass:objc_opt_class()];
  v3 = [v2 localizedStringForKey:@"FLAGGED_NAVIGATION_TITLE" value:&stru_100662A88 table:@"Main"];

  return v3;
}

- (CGPoint)iconOffset
{
  v2 = 3.0;
  v3 = 0.0;
  result.y = v3;
  result.x = v2;
  return result;
}

@end