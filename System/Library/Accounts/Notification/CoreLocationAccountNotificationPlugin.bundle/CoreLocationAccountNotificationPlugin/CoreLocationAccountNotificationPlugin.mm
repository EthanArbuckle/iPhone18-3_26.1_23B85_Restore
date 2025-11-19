@interface CoreLocationAccountNotificationPlugin
- (BOOL)accountIsManagedAppleID:(id)a3;
@end

@implementation CoreLocationAccountNotificationPlugin

- (BOOL)accountIsManagedAppleID:(id)a3
{
  v4 = [objc_msgSend(a3 "accountType")];
  if (![v4 isEqualToString:*MEMORY[0x29EDB81C8]] || !objc_msgSend(a3, "aa_isPrimaryAccount"))
  {
    return 0;
  }

  return MEMORY[0x2A1C70FE8](a3, sel_aa_isManagedAppleID);
}

@end