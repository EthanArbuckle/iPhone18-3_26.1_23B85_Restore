@interface ReadLaterMailboxController
- (id)mailboxTitle;
@end

@implementation ReadLaterMailboxController

- (id)mailboxTitle
{
  v2 = [NSBundle bundleForClass:objc_opt_class()];
  v3 = [v2 localizedStringForKey:@"READ_LATER_MAILBOX" value:&stru_100662A88 table:@"Main"];

  return v3;
}

@end