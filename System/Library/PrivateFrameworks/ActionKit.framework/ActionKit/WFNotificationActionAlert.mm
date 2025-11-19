@interface WFNotificationActionAlert
- (WFNotificationActionAlert)initWithTitle:(id)a3 body:(id)a4;
@end

@implementation WFNotificationActionAlert

- (WFNotificationActionAlert)initWithTitle:(id)a3 body:(id)a4
{
  v6 = a3;
  v7 = a4;
  v16.receiver = self;
  v16.super_class = WFNotificationActionAlert;
  v8 = [(WFNotificationActionAlert *)&v16 init];
  if (v8)
  {
    if ([v6 length] || objc_msgSend(v7, "length"))
    {
      v9 = [v7 length];
      if (v9)
      {
        v9 = [v6 copy];
      }

      title = v8->_title;
      v8->_title = v9;

      if ([v7 length])
      {
        v11 = v7;
      }

      else
      {
        v11 = v6;
      }

      v12 = [v11 copy];
    }

    else
    {
      v12 = WFLocalizedString(@"Notification");
    }

    body = v8->_body;
    v8->_body = v12;

    v14 = v8;
  }

  return v8;
}

@end