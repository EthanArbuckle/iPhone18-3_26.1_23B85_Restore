@interface DMDAccountNotificationPlugin
- (void)account:(id)a3 didChangeWithType:(int)a4 inStore:(id)a5 oldAccount:(id)a6;
@end

@implementation DMDAccountNotificationPlugin

- (void)account:(id)a3 didChangeWithType:(int)a4 inStore:(id)a5 oldAccount:(id)a6
{
  v7 = a6;
  v10 = [a3 aa_personID];
  v8 = [v7 aa_personID];

  if (!v10 || !v8)
  {
    if (!(v10 | v8))
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  if (([v10 isEqualToString:v8] & 1) == 0)
  {
LABEL_6:
    DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterPostNotification(DarwinNotifyCenter, *MEMORY[0x29EDC0FF0], 0, 0, 1u);
  }

LABEL_7:
}

@end