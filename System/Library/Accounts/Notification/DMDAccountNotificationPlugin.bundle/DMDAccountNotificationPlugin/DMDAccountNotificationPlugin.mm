@interface DMDAccountNotificationPlugin
- (void)account:(id)account didChangeWithType:(int)type inStore:(id)store oldAccount:(id)oldAccount;
@end

@implementation DMDAccountNotificationPlugin

- (void)account:(id)account didChangeWithType:(int)type inStore:(id)store oldAccount:(id)oldAccount
{
  oldAccountCopy = oldAccount;
  aa_personID = [account aa_personID];
  aa_personID2 = [oldAccountCopy aa_personID];

  if (!aa_personID || !aa_personID2)
  {
    if (!(aa_personID | aa_personID2))
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  if (([aa_personID isEqualToString:aa_personID2] & 1) == 0)
  {
LABEL_6:
    DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterPostNotification(DarwinNotifyCenter, *MEMORY[0x29EDC0FF0], 0, 0, 1u);
  }

LABEL_7:
}

@end