@interface UserNotificationViewController
- (void)didReceiveNotification:(id)a3;
- (void)didReceiveNotificationResponse:(id)a3 completionHandler:(id)a4;
@end

@implementation UserNotificationViewController

- (void)didReceiveNotification:(id)a3
{
  v25 = a3;
  v4 = [AMSUIUserNotificationViewController userNotificationFromNotification:?];
  if (!v4)
  {
    v5 = [v25 request];
    if (self)
    {
      v6 = sub_100001598(Bulletin, v5);
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

- (void)didReceiveNotificationResponse:(id)a3 completionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v6 notification];
  v9 = [AMSUIUserNotificationViewController userNotificationFromNotification:v8];

  if (v9 && (v14.receiver = self, v14.super_class = UserNotificationViewController, [(UserNotificationViewController *)&v14 respondsToSelector:"didReceiveNotificationResponse:completionHandler:"]))
  {
    v13.receiver = self;
    v13.super_class = UserNotificationViewController;
    [(UserNotificationViewController *)&v13 didReceiveNotificationResponse:v6 completionHandler:v7];
  }

  else
  {
    v10 = [v6 notification];
    v11 = [v10 request];
    v12 = sub_100001598(Bulletin, v11);

    sub_100001890(v12, v6);
    v7[2](v7, 1);
  }
}

@end