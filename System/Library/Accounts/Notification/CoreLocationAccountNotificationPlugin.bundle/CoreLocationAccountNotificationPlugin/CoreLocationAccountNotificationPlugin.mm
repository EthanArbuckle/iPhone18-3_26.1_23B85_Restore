@interface CoreLocationAccountNotificationPlugin
- (BOOL)accountIsManagedAppleID:(id)d;
@end

@implementation CoreLocationAccountNotificationPlugin

- (BOOL)accountIsManagedAppleID:(id)d
{
  v4 = [objc_msgSend(d "accountType")];
  if (![v4 isEqualToString:*MEMORY[0x29EDB81C8]] || !objc_msgSend(d, "aa_isPrimaryAccount"))
  {
    return 0;
  }

  return MEMORY[0x2A1C70FE8](d, sel_aa_isManagedAppleID);
}

@end