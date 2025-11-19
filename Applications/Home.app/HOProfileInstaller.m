@interface HOProfileInstaller
- (BOOL)isInstallNavigationControllerPresented;
- (HOProfileInstaller)init;
- (void)dealloc;
- (void)deviceProfileCompletedNotification:(id)a3;
- (void)installProfileWithCompletionHandler:(id)a3;
- (void)openSenderURL;
- (void)showProfileInstallationAlertViewWithTitle:(id)a3 message:(id)a4 shouldGoBackToSenderURL:(BOOL)a5;
- (void)showProfileInstallationFlowFromViewController:(id)a3 withSenderURLString:(id)a4;
- (void)showRebootAlertAndReboot;
@end

@implementation HOProfileInstaller

- (HOProfileInstaller)init
{
  v5.receiver = self;
  v5.super_class = HOProfileInstaller;
  v2 = [(HOProfileInstaller *)&v5 init];
  if (v2)
  {
    v3 = +[NSDistributedNotificationCenter defaultCenter];
    [v3 addObserver:v2 selector:"deviceProfileCompletedNotification:" name:@"com.apple.sharing.DeviceProfile" object:0];
  }

  return v2;
}

- (void)dealloc
{
  v3 = +[NSDistributedNotificationCenter defaultCenter];
  [v3 removeObserver:self];

  v4.receiver = self;
  v4.super_class = HOProfileInstaller;
  [(HOProfileInstaller *)&v4 dealloc];
}

- (void)showProfileInstallationAlertViewWithTitle:(id)a3 message:(id)a4 shouldGoBackToSenderURL:(BOOL)a5
{
  v18 = a3;
  v19 = a4;
  v22 = [UIAlertController alertControllerWithTitle:"alertControllerWithTitle:message:preferredStyle:" message:v18 preferredStyle:?];
  objc_initWeak(&location, self);
  v6 = +[NSBundle mainBundle];
  v7 = @"HOProfileInstallAlertOKButton";
  v8 = [v6 localizedStringForKey:@"HOProfileInstallAlertOKButton" value:@"_" table:@"HOLocalizable"];

  if ([@"_" isEqualToString:v8])
  {
    v27 = 0u;
    v28 = 0u;
    v29 = 0u;
    v30 = 0u;
    v9 = sub_100043000();
    v10 = [v9 countByEnumeratingWithState:&v27 objects:v31 count:16];
    if (v10)
    {
      v11 = *v28;
LABEL_4:
      v12 = 0;
      while (1)
      {
        if (*v28 != v11)
        {
          objc_enumerationMutation(v9);
        }

        v13 = *(*(&v27 + 1) + 8 * v12);
        v14 = +[NSBundle mainBundle];
        v15 = [v14 localizedStringForKey:@"HOProfileInstallAlertOKButton" value:@"HOProfileInstallAlertOKButton" table:v13];

        if (![(__CFString *)v15 isEqualToString:@"HOProfileInstallAlertOKButton"])
        {
          break;
        }

        if (v10 == ++v12)
        {
          v10 = [v9 countByEnumeratingWithState:&v27 objects:v31 count:16];
          if (v10)
          {
            goto LABEL_4;
          }

          goto LABEL_10;
        }
      }
    }

    else
    {
LABEL_10:
      v15 = @"_";
    }
  }

  else
  {
    v15 = v8;
  }

  if ([@"_" isEqualToString:v15])
  {
    NSLog(@"Sensitive key '%@' not found!", @"HOProfileInstallAlertOKButton");
  }

  else
  {
    v7 = v15;
  }

  v23[0] = _NSConcreteStackBlock;
  v23[1] = 3221225472;
  v23[2] = sub_10004273C;
  v23[3] = &unk_1000C41B8;
  objc_copyWeak(&v24, &location);
  v25 = a5;
  v16 = [UIAlertAction actionWithTitle:v7 style:0 handler:v23];

  [v22 addAction:v16];
  v17 = [(HOProfileInstaller *)self baseViewController];
  [v17 presentViewController:v22 animated:1 completion:0];

  objc_destroyWeak(&v24);
  objc_destroyWeak(&location);
}

- (void)openSenderURL
{
  v3 = [(HOProfileInstaller *)self senderURLString];
  v4 = [v3 length];

  if (v4)
  {
    v5 = [(HOProfileInstaller *)self senderURLString];
    v6 = [(HOProfileInstaller *)self senderURLString];
    v7 = [v6 hasSuffix:@"://"];

    if ((v7 & 1) == 0)
    {
      v8 = [(HOProfileInstaller *)self senderURLString];
      v9 = [NSString stringWithFormat:@"%@://", v8];

      v5 = v9;
    }

    v10 = [NSURL URLWithString:v5];
    v11 = +[UIApplication sharedApplication];
    v12 = [v11 canOpenURL:v10];

    if (v12)
    {
      v13 = +[UIApplication sharedApplication];
      v25[0] = _NSConcreteStackBlock;
      v25[1] = 3221225472;
      v25[2] = sub_100042AC8;
      v25[3] = &unk_1000C2F80;
      v25[4] = self;
      [v13 openURL:v10 withCompletionHandler:v25];
LABEL_6:

LABEL_18:
      goto LABEL_19;
    }

    v14 = +[LSApplicationWorkspace defaultWorkspace];
    v24 = 0;
    v15 = [v14 openURL:v10 withOptions:0 error:&v24];
    v16 = v24;

    if ((v15 & 1) == 0)
    {
      v17 = HFLogForCategory();
      v18 = v17;
      if (v16)
      {
        if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
        {
          sub_100081454();
        }
      }

      else if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315394;
        v27 = "[HOProfileInstaller openSenderURL]";
        v28 = 2112;
        v29 = v10;
        _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "(%s) url %@ could not be opened, trying sensitive URL", buf, 0x16u);
      }

      v19 = +[LSApplicationWorkspace defaultWorkspace];
      v23 = v16;
      v20 = [v19 openSensitiveURL:v10 withOptions:0 error:&v23];
      v13 = v23;

      if ((v20 & 1) == 0)
      {
        v21 = HFLogForCategory();
        v22 = os_log_type_enabled(v21, OS_LOG_TYPE_ERROR);
        if (v13)
        {
          if (v22)
          {
            sub_1000814D0();
          }
        }

        else if (v22)
        {
          sub_10008154C();
        }

        goto LABEL_6;
      }

      v16 = v13;
    }

    goto LABEL_18;
  }

  v5 = HFLogForCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    sub_1000815CC(v5);
  }

LABEL_19:
}

- (void)showProfileInstallationFlowFromViewController:(id)a3 withSenderURLString:(id)a4
{
  v6 = [NSAssertionHandler currentHandler:a3];
  [v6 handleFailureInMethod:a2 object:self file:@"HOProfileInstaller.m" lineNumber:118 description:{@"%s is an abstract method that must be overriden by subclass %@", "-[HOProfileInstaller showProfileInstallationFlowFromViewController:withSenderURLString:]", objc_opt_class()}];
}

- (void)deviceProfileCompletedNotification:(id)a3
{
  v5 = +[NSAssertionHandler currentHandler];
  [v5 handleFailureInMethod:a2 object:self file:@"HOProfileInstaller.m" lineNumber:125 description:{@"%s is an abstract method that must be overriden by subclass %@", "-[HOProfileInstaller deviceProfileCompletedNotification:]", objc_opt_class()}];
}

- (void)showRebootAlertAndReboot
{
  v4 = +[NSAssertionHandler currentHandler];
  [v4 handleFailureInMethod:a2 object:self file:@"HOProfileInstaller.m" lineNumber:133 description:{@"%s is an abstract method that must be overriden by subclass %@", "-[HOProfileInstaller showRebootAlertAndReboot]", objc_opt_class()}];
}

- (void)installProfileWithCompletionHandler:(id)a3
{
  v5 = +[NSAssertionHandler currentHandler];
  [v5 handleFailureInMethod:a2 object:self file:@"HOProfileInstaller.m" lineNumber:139 description:{@"%s is an abstract method that must be overriden by subclass %@", "-[HOProfileInstaller installProfileWithCompletionHandler:]", objc_opt_class()}];
}

- (BOOL)isInstallNavigationControllerPresented
{
  v2 = [(HOProfileInstaller *)self installProfileViewController];
  v3 = [v2 navigationController];
  v4 = [v3 presentingViewController];
  v5 = v4 != 0;

  return v5;
}

@end