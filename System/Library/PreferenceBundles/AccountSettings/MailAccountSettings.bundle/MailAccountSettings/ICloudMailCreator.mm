@interface ICloudMailCreator
+ (id)log;
- (ICloudMailCreationDelegate)delegate;
- (ICloudMailCreator)initWithViewController:(id)a3 appleAccount:(id)a4 accountStore:(id)a5;
- (id)sessionConfigurationForLoader:(id)a3;
- (void)_cleanupLoader;
- (void)loader:(id)a3 didReceiveHTTPResponse:(id)a4 forRequest:(id)a5;
- (void)loader:(id)a3 receivedObjectModel:(id)a4 topActionSignal:(id)a5;
- (void)objectModel:(id)a3 pressedButton:(id)a4 attributes:(id)a5;
- (void)objectModel:(id)a3 pressedLink:(id)a4 httpMethod:(id)a5;
- (void)showAlertForMailSetup;
@end

@implementation ICloudMailCreator

+ (id)log
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_6F884;
  block[3] = &unk_B8D78;
  block[4] = a1;
  if (qword_D6620 != -1)
  {
    dispatch_once(&qword_D6620, block);
  }

  v2 = qword_D6618;

  return v2;
}

- (ICloudMailCreator)initWithViewController:(id)a3 appleAccount:(id)a4 accountStore:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v15.receiver = self;
  v15.super_class = ICloudMailCreator;
  v12 = [(ICloudMailCreator *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_presenter, a3);
    objc_storeStrong(&v13->_appleAccount, a4);
    objc_storeStrong(&v13->_accountStore, a5);
  }

  return v13;
}

- (void)showAlertForMailSetup
{
  v3 = [NSBundle bundleForClass:objc_opt_class()];
  v4 = [v3 localizedStringForKey:@"TURN_ON_MAIL_TITLE" value:&stru_B9FC8 table:@"AccountPreferences"];
  v5 = [NSBundle bundleForClass:objc_opt_class()];
  v6 = [v5 localizedStringForKey:@"TURN_ON_MAIL_MESSAGE" value:&stru_B9FC8 table:@"AccountPreferences"];
  v7 = [UIAlertController alertControllerWithTitle:v4 message:v6 preferredStyle:1];

  objc_initWeak(location, self);
  v21[0] = _NSConcreteStackBlock;
  v21[1] = 3221225472;
  v21[2] = sub_6FE08;
  v21[3] = &unk_B9BB8;
  objc_copyWeak(&v22, location);
  v15 = objc_retainBlock(v21);
  v8 = [NSBundle bundleForClass:objc_opt_class()];
  v9 = [v8 localizedStringForKey:@"CANCEL_TEXT" value:&stru_B9FC8 table:@"AccountPreferences"];
  v19[0] = _NSConcreteStackBlock;
  v19[1] = 3221225472;
  v19[2] = sub_70080;
  v19[3] = &unk_B9038;
  objc_copyWeak(&v20, location);
  v10 = [UIAlertAction actionWithTitle:v9 style:1 handler:v19];

  v11 = [NSBundle bundleForClass:objc_opt_class()];
  v12 = [v11 localizedStringForKey:@"CREATE_EMAIL_BUTTON" value:&stru_B9FC8 table:@"AccountPreferences"];
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_70140;
  v16[3] = &unk_B9C30;
  objc_copyWeak(&v18, location);
  v13 = v15;
  v17 = v13;
  v14 = [UIAlertAction actionWithTitle:v12 style:0 handler:v16];

  [v7 addAction:v10];
  [v7 addAction:v14];
  [(UIViewController *)self->_presenter presentViewController:v7 animated:1 completion:0];

  objc_destroyWeak(&v18);
  objc_destroyWeak(&v20);

  objc_destroyWeak(&v22);
  objc_destroyWeak(location);
}

- (void)loader:(id)a3 didReceiveHTTPResponse:(id)a4 forRequest:(id)a5
{
  v7 = a4;
  v8 = a5;
  if ([v7 statusCode] == &stru_158.reloff + 1)
  {
    objc_initWeak(&location, self);
    v9 = +[ICloudMailCreator log];
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = [v8 URL];
      *buf = 138412290;
      v22 = v10;
      _os_log_impl(&dword_0, v9, OS_LOG_TYPE_DEFAULT, "received 401 for URL %@", buf, 0xCu);
    }

    v19[0] = kACRenewCredentialsShouldAvoidUIKey;
    v19[1] = kACRenewCredentialsShouldForceKey;
    v20[0] = &__kCFBooleanTrue;
    v20[1] = &__kCFBooleanFalse;
    v11 = [NSDictionary dictionaryWithObjects:v20 forKeys:v19 count:2];
    v12 = [(ACAccount *)self->_appleAccount accountStore];
    appleAccount = self->_appleAccount;
    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = sub_70700;
    v14[3] = &unk_B9C58;
    objc_copyWeak(&v17, &location);
    v15 = v7;
    v16 = v8;
    [v12 renewCredentialsForAccount:appleAccount options:v11 completion:v14];

    objc_destroyWeak(&v17);
    objc_destroyWeak(&location);
  }
}

- (id)sessionConfigurationForLoader:(id)a3
{
  v3 = +[NSURLSessionConfiguration defaultSessionConfiguration];
  v4 = objc_alloc_init(AKAppleIDSession);
  [v3 set_appleIDContext:v4];

  return v3;
}

- (void)loader:(id)a3 receivedObjectModel:(id)a4 topActionSignal:(id)a5
{
  v7 = a4;
  v8 = a5;
  objc_initWeak(&location, self);
  if ([v8 topSignal] == &dword_0 + 1)
  {
    v9 = +[ICloudMailCreator log];
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_0, v9, OS_LOG_TYPE_DEFAULT, "dismissing icloud mail create flow", buf, 2u);
    }

    [(ACAccount *)self->_appleAccount setEnabled:1 forDataclass:ACAccountDataclassMail];
    v10 = self->_appleAccount;
    v11 = dispatch_get_global_queue(0, 0);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_70DD0;
    block[3] = &unk_B9CD0;
    block[4] = self;
    v29 = v10;
    v12 = v10;
    objc_copyWeak(&v31, &location);
    v30 = v7;
    dispatch_async(v11, block);

    objc_destroyWeak(&v31);
  }

  else if ([v8 topSignal] == &dword_0 + 2)
  {
    addEmailObjectModels = self->_addEmailObjectModels;
    if (addEmailObjectModels)
    {
      v26 = 0u;
      v27 = 0u;
      v24 = 0u;
      v25 = 0u;
      v14 = addEmailObjectModels;
      v15 = [(NSMutableArray *)v14 countByEnumeratingWithState:&v24 objects:v34 count:16];
      if (v15)
      {
        v16 = *v25;
        do
        {
          v17 = 0;
          do
          {
            if (*v25 != v16)
            {
              objc_enumerationMutation(v14);
            }

            [*(*(&v24 + 1) + 8 * v17) stopActivityIndicator];
            v17 = v17 + 1;
          }

          while (v15 != v17);
          v15 = [(NSMutableArray *)v14 countByEnumeratingWithState:&v24 objects:v34 count:16];
        }

        while (v15);
      }
    }

    [v7 presentInParentViewController:self->_addEmailNavController animated:{1, v24}];
    [v7 setDelegate:self];
    v18 = [(UIViewController *)self->_presenter presentedViewController];
    v19 = v18 == self->_addEmailNavController;

    if (!v19)
    {
      [(UIViewController *)self->_presenter presentViewController:self->_addEmailNavController animated:1 completion:0];
    }

    v20 = self->_addEmailObjectModels;
    if (!v20)
    {
      v21 = objc_alloc_init(NSMutableArray);
      v23 = self->_addEmailObjectModels;
      p_addEmailObjectModels = &self->_addEmailObjectModels;
      *p_addEmailObjectModels = v21;

      v20 = *p_addEmailObjectModels;
    }

    [(NSMutableArray *)v20 addObject:v7];
  }

  objc_destroyWeak(&location);
}

- (void)_cleanupLoader
{
  [(RUILoader *)self->_addEmailLoader cancel];
  [(RUILoader *)self->_addEmailLoader setDelegate:0];
  addEmailLoader = self->_addEmailLoader;
  self->_addEmailLoader = 0;
}

- (void)objectModel:(id)a3 pressedLink:(id)a4 httpMethod:(id)a5
{
  v14 = a3;
  v8 = a5;
  v9 = [a4 absoluteString];
  v10 = [[AAAddEmailUIRequest alloc] initWithURLString:v9 account:self->_appleAccount];
  v11 = [v10 urlRequest];
  v12 = [v11 mutableCopy];

  [v12 setHTTPMethod:v8];
  if ([v8 isEqualToString:@"POST"])
  {
    v13 = [v14 postbackData];
    [v12 setHTTPBody:v13];
  }

  [(RUILoader *)self->_addEmailLoader loadXMLUIWithRequest:v12];
  [v14 startActivityIndicator];
}

- (void)objectModel:(id)a3 pressedButton:(id)a4 attributes:(id)a5
{
  if ([a4 isEqualToString:@"cancel"])
  {
    v8 = [(ICloudMailCreator *)self delegate];
    if (v8 && (objc_opt_respondsToSelector() & 1) != 0)
    {
      [v8 icloudMailCreationNeedsViewUpdate:self withAccount:self->_appleAccount];
    }

    [(UIViewController *)self->_presenter dismissViewControllerAnimated:1 completion:0];
    addEmailObjectModels = self->_addEmailObjectModels;
    self->_addEmailObjectModels = 0;

    addEmailNavController = self->_addEmailNavController;
    self->_addEmailNavController = 0;

    [(ICloudMailCreator *)self _cleanupLoader];
  }
}

- (ICloudMailCreationDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end