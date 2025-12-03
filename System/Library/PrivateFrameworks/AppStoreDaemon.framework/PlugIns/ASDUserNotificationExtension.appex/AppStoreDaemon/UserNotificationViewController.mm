@interface UserNotificationViewController
- (void)didReceiveNotification:(id)notification;
- (void)didReceiveNotificationResponse:(id)response completionHandler:(id)handler;
@end

@implementation UserNotificationViewController

- (void)didReceiveNotification:(id)notification
{
  notificationCopy = notification;
  v4 = [AMSUIUserNotificationViewController userNotificationFromNotification:?];
  if (!v4)
  {
    request = [notificationCopy request];
    if (self)
    {
      v6 = sub_100001598(Bulletin, request);
      v7 = [AMSUserNotification alloc];
      if (v6)
      {
        v8 = *(v6 + 64);
      }

      else
      {
        v8 = 0;
      }

      v9 = v8;
      v4 = [v7 initWithTitle:v9];

      if (v6)
      {
        v10 = *(v6 + 48);
        [v4 setInformativeText:v10];

        v11 = *(v6 + 24);
      }

      else
      {
        [v4 setInformativeText:0];
        v11 = 0;
      }

      v12 = v11;

      if (v12)
      {
        v13 = [[AMSUserNotificationAction alloc] initWithTitle:0];
        if (v6)
        {
          v14 = *(v6 + 24);
        }

        else
        {
          v14 = 0;
        }

        v15 = v14;
        [v13 setDefaultURL:v15];

        [v4 setDefaultAction:v13];
      }

      if (v6)
      {
        v16 = *(v6 + 8);
      }

      else
      {
        v16 = 0;
      }

      v17 = v16;

      if (v17)
      {
        v18 = [AMSUserNotificationAction alloc];
        if (v6)
        {
          v19 = *(v6 + 8);
        }

        else
        {
          v19 = 0;
        }

        v20 = v19;
        v21 = [v18 initWithTitle:v20];

        if (v6)
        {
          v22 = *(v6 + 16);
        }

        else
        {
          v22 = 0;
        }

        v23 = v22;
        [v21 setDefaultURL:v23];

        v26 = v21;
        v24 = [NSArray arrayWithObjects:&v26 count:1];
        [v4 setButtonActions:v24];
      }
    }

    else
    {
      v4 = 0;
    }
  }

  [(UserNotificationViewController *)self renderUserNotification:v4];
}

- (void)didReceiveNotificationResponse:(id)response completionHandler:(id)handler
{
  responseCopy = response;
  handlerCopy = handler;
  notification = [responseCopy notification];
  v9 = [AMSUIUserNotificationViewController userNotificationFromNotification:notification];

  if (v9 && (v14.receiver = self, v14.super_class = UserNotificationViewController, [(UserNotificationViewController *)&v14 respondsToSelector:"didReceiveNotificationResponse:completionHandler:"]))
  {
    v13.receiver = self;
    v13.super_class = UserNotificationViewController;
    [(UserNotificationViewController *)&v13 didReceiveNotificationResponse:responseCopy completionHandler:handlerCopy];
  }

  else
  {
    notification2 = [responseCopy notification];
    request = [notification2 request];
    v12 = sub_100001598(Bulletin, request);

    sub_100001890(v12, responseCopy);
    handlerCopy[2](handlerCopy, 1);
  }
}

@end