@interface PBAProtectedOptionsViewController
- (id)lockScreenIconSystemName;
- (id)lockScreenMessage;
- (id)lockScreenTitle;
- (id)passcodeEntryScreenSubtitle;
- (id)passcodeEntryScreenTitle;
- (id)visualStyleForAlertControllerStyle:(int64_t)a3 traitCollection:(id)a4 descriptor:(id)a5;
- (void)_finish;
- (void)confirmTransitionToPasscodeWithCompletion:(id)a3;
- (void)successfulAuthHandler:(id)a3;
@end

@implementation PBAProtectedOptionsViewController

- (void)successfulAuthHandler:(id)a3
{
  v4 = a3;
  objc_initWeak(&location, self);
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_10000A23C;
  v6[3] = &unk_10001CAC0;
  v5 = v4;
  v7 = v5;
  objc_copyWeak(&v8, &location);
  [(PBADevicePasscodeViewController *)self handlePasscodeEntrySuccessful:v6];
  objc_destroyWeak(&v8);

  objc_destroyWeak(&location);
}

- (id)passcodeEntryScreenTitle
{
  v2 = +[LAPreboard sharedInstance];
  v3 = [v2 passcodeTitle];

  return v3;
}

- (id)passcodeEntryScreenSubtitle
{
  v2 = +[LAPreboard sharedInstance];
  v3 = [v2 passcodeSubtitle];

  return v3;
}

- (id)lockScreenIconSystemName
{
  v2 = +[LAPreboard sharedInstance];
  v3 = [v2 iconSystemName];

  return v3;
}

- (id)lockScreenTitle
{
  v2 = +[LAPreboard sharedInstance];
  v3 = [v2 title];

  return v3;
}

- (id)lockScreenMessage
{
  v2 = +[LAPreboard sharedInstance];
  v3 = [v2 message];

  return v3;
}

- (void)confirmTransitionToPasscodeWithCompletion:(id)a3
{
  v4 = a3;
  v5 = +[LAPreboard sharedInstance];
  v6 = [v5 confirmationTitle];
  v7 = +[LAPreboard sharedInstance];
  v8 = [v7 confirmationMessage];
  v9 = [UIAlertController alertControllerWithTitle:v6 message:v8 preferredStyle:1];

  [v9 _setShouldInvokeCancelActionOnDimmingViewTap:0];
  [UIAlertController registerPlatformStyleProvider:self forIdiom:0];
  v10 = +[LAPreboard sharedInstance];
  v11 = [v10 confirmationActionTitle];

  if (v11)
  {
    v12 = +[LAPreboard sharedInstance];
    v13 = [v12 confirmationActionTitle];
    v30[0] = _NSConcreteStackBlock;
    v30[1] = 3221225472;
    v30[2] = sub_10000A904;
    v30[3] = &unk_10001CAE8;
    v31 = v4;
    v14 = [UIAlertAction actionWithTitle:v13 style:2 handler:v30];
    [v9 addAction:v14];
  }

  v15 = +[LAPreboard sharedInstance];
  v16 = [v15 confirmationCancelTitle];

  if (v16)
  {
    v17 = +[UIDevice currentDevice];
    if ([v17 userInterfaceIdiom])
    {

      v18 = 0;
    }

    else
    {
      v19 = _UISolariumEnabled();

      v18 = v19 ^ 1u;
    }

    objc_initWeak(&location, self);
    v20 = +[LAPreboard sharedInstance];
    v21 = [v20 confirmationCancelTitle];
    v23 = _NSConcreteStackBlock;
    v24 = 3221225472;
    v25 = sub_10000A91C;
    v26 = &unk_10001CB10;
    v27 = v4;
    objc_copyWeak(&v28, &location);
    v22 = [UIAlertAction actionWithTitle:v21 style:v18 handler:&v23];
    [v9 addAction:{v22, v23, v24, v25, v26}];

    objc_destroyWeak(&v28);
    objc_destroyWeak(&location);
  }

  [(PBAProtectedOptionsViewController *)self presentViewController:v9 animated:1 completion:0];
}

- (id)visualStyleForAlertControllerStyle:(int64_t)a3 traitCollection:(id)a4 descriptor:(id)a5
{
  if (a3)
  {
    v6 = 0;
  }

  else
  {
    v6 = objc_alloc_init(PBAAlertControllerVisualStyleActionSheet);
  }

  return v6;
}

- (void)_finish
{
  v2 = +[LAPreboard sharedInstance];
  [v2 terminateWithCompletion:&stru_10001CB50];
}

@end