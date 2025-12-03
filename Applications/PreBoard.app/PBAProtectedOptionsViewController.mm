@interface PBAProtectedOptionsViewController
- (id)lockScreenIconSystemName;
- (id)lockScreenMessage;
- (id)lockScreenTitle;
- (id)passcodeEntryScreenSubtitle;
- (id)passcodeEntryScreenTitle;
- (id)visualStyleForAlertControllerStyle:(int64_t)style traitCollection:(id)collection descriptor:(id)descriptor;
- (void)_finish;
- (void)confirmTransitionToPasscodeWithCompletion:(id)completion;
- (void)successfulAuthHandler:(id)handler;
@end

@implementation PBAProtectedOptionsViewController

- (void)successfulAuthHandler:(id)handler
{
  handlerCopy = handler;
  objc_initWeak(&location, self);
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_10000A23C;
  v6[3] = &unk_10001CAC0;
  v5 = handlerCopy;
  v7 = v5;
  objc_copyWeak(&v8, &location);
  [(PBADevicePasscodeViewController *)self handlePasscodeEntrySuccessful:v6];
  objc_destroyWeak(&v8);

  objc_destroyWeak(&location);
}

- (id)passcodeEntryScreenTitle
{
  v2 = +[LAPreboard sharedInstance];
  passcodeTitle = [v2 passcodeTitle];

  return passcodeTitle;
}

- (id)passcodeEntryScreenSubtitle
{
  v2 = +[LAPreboard sharedInstance];
  passcodeSubtitle = [v2 passcodeSubtitle];

  return passcodeSubtitle;
}

- (id)lockScreenIconSystemName
{
  v2 = +[LAPreboard sharedInstance];
  iconSystemName = [v2 iconSystemName];

  return iconSystemName;
}

- (id)lockScreenTitle
{
  v2 = +[LAPreboard sharedInstance];
  title = [v2 title];

  return title;
}

- (id)lockScreenMessage
{
  v2 = +[LAPreboard sharedInstance];
  message = [v2 message];

  return message;
}

- (void)confirmTransitionToPasscodeWithCompletion:(id)completion
{
  completionCopy = completion;
  v5 = +[LAPreboard sharedInstance];
  confirmationTitle = [v5 confirmationTitle];
  v7 = +[LAPreboard sharedInstance];
  confirmationMessage = [v7 confirmationMessage];
  v9 = [UIAlertController alertControllerWithTitle:confirmationTitle message:confirmationMessage preferredStyle:1];

  [v9 _setShouldInvokeCancelActionOnDimmingViewTap:0];
  [UIAlertController registerPlatformStyleProvider:self forIdiom:0];
  v10 = +[LAPreboard sharedInstance];
  confirmationActionTitle = [v10 confirmationActionTitle];

  if (confirmationActionTitle)
  {
    v12 = +[LAPreboard sharedInstance];
    confirmationActionTitle2 = [v12 confirmationActionTitle];
    v30[0] = _NSConcreteStackBlock;
    v30[1] = 3221225472;
    v30[2] = sub_10000A904;
    v30[3] = &unk_10001CAE8;
    v31 = completionCopy;
    v14 = [UIAlertAction actionWithTitle:confirmationActionTitle2 style:2 handler:v30];
    [v9 addAction:v14];
  }

  v15 = +[LAPreboard sharedInstance];
  confirmationCancelTitle = [v15 confirmationCancelTitle];

  if (confirmationCancelTitle)
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
    confirmationCancelTitle2 = [v20 confirmationCancelTitle];
    v23 = _NSConcreteStackBlock;
    v24 = 3221225472;
    v25 = sub_10000A91C;
    v26 = &unk_10001CB10;
    v27 = completionCopy;
    objc_copyWeak(&v28, &location);
    v22 = [UIAlertAction actionWithTitle:confirmationCancelTitle2 style:v18 handler:&v23];
    [v9 addAction:{v22, v23, v24, v25, v26}];

    objc_destroyWeak(&v28);
    objc_destroyWeak(&location);
  }

  [(PBAProtectedOptionsViewController *)self presentViewController:v9 animated:1 completion:0];
}

- (id)visualStyleForAlertControllerStyle:(int64_t)style traitCollection:(id)collection descriptor:(id)descriptor
{
  if (style)
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