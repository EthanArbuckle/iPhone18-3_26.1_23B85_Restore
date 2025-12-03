@interface WFNotificationActionAlert
- (WFNotificationActionAlert)initWithTitle:(id)title body:(id)body;
@end

@implementation WFNotificationActionAlert

- (WFNotificationActionAlert)initWithTitle:(id)title body:(id)body
{
  titleCopy = title;
  bodyCopy = body;
  v16.receiver = self;
  v16.super_class = WFNotificationActionAlert;
  v8 = [(WFNotificationActionAlert *)&v16 init];
  if (v8)
  {
    if ([titleCopy length] || objc_msgSend(bodyCopy, "length"))
    {
      v9 = [bodyCopy length];
      if (v9)
      {
        v9 = [titleCopy copy];
      }

      title = v8->_title;
      v8->_title = v9;

      if ([bodyCopy length])
      {
        v11 = bodyCopy;
      }

      else
      {
        v11 = titleCopy;
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