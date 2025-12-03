@interface ICWindowDeletionAlertPresenter
- (ICWindowDeletionAlertPresenter)initWithWindow:(id)window sender:(id)sender;
- (void)presentAlert:(id)alert withCompletion:(id)completion;
@end

@implementation ICWindowDeletionAlertPresenter

- (ICWindowDeletionAlertPresenter)initWithWindow:(id)window sender:(id)sender
{
  windowCopy = window;
  senderCopy = sender;
  v12.receiver = self;
  v12.super_class = ICWindowDeletionAlertPresenter;
  v9 = [(ICWindowDeletionAlertPresenter *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_window, window);
    objc_storeStrong(&v10->_sender, sender);
  }

  return v10;
}

- (void)presentAlert:(id)alert withCompletion:(id)completion
{
  alertCopy = alert;
  completionCopy = completion;
  if (+[ICDeleteAlert suppressesAlerts])
  {
    if (completionCopy)
    {
      completionCopy[2](completionCopy, 1);
    }
  }

  else
  {
    v8 = +[NSBundle mainBundle];
    v9 = [v8 localizedStringForKey:@"Cancel" value:&stru_100661CF0 table:0];

    title = [alertCopy title];
    message = [alertCopy message];
    v30 = [alertCopy confirmationStringForSender:self->_sender];
    canCancel = [alertCopy canCancel];
    sender = [(ICWindowDeletionAlertPresenter *)self sender];
    v14 = [alertCopy shouldShowAsAlertForSender:sender];

    v31 = title;
    if (v14)
    {
      v15 = [ICAlertController alertControllerWithTitle:title message:message preferredStyle:1];
    }

    else
    {
      v15 = [ICAlertController alertControllerWithTitle:message message:0 preferredStyle:0];
      objc_opt_class();
      sender2 = [(ICWindowDeletionAlertPresenter *)self sender];
      v17 = ICDynamicCast();

      objc_opt_class();
      sender3 = [(ICWindowDeletionAlertPresenter *)self sender];
      v19 = ICDynamicCast();

      popoverPresentationController = [v15 popoverPresentationController];
      [popoverPresentationController setSourceView:v17];

      popoverPresentationController2 = [v15 popoverPresentationController];
      [popoverPresentationController2 setBarButtonItem:v19];
    }

    v38[0] = _NSConcreteStackBlock;
    v38[1] = 3221225472;
    v38[2] = sub_1000840AC;
    v38[3] = &unk_100645CC8;
    v22 = completionCopy;
    v39 = v22;
    [v15 setDismissWithoutActionBlock:v38];
    if (canCancel)
    {
      v35[0] = _NSConcreteStackBlock;
      v35[1] = 3221225472;
      v35[2] = sub_1000840C0;
      v35[3] = &unk_100646960;
      v23 = v15;
      v36 = v23;
      v37 = v22;
      v24 = [UIAlertAction actionWithTitle:v9 style:1 handler:v35];
      [v23 addAction:v24];

      v25 = 2;
    }

    else
    {
      v25 = 0;
    }

    v32[0] = _NSConcreteStackBlock;
    v32[1] = 3221225472;
    v32[2] = sub_10008410C;
    v32[3] = &unk_100646960;
    v33 = v15;
    v34 = v22;
    v26 = v15;
    v27 = [UIAlertAction actionWithTitle:v30 style:v25 handler:v32];
    [v26 addAction:v27];
    window = [(ICWindowDeletionAlertPresenter *)self window];
    rootViewController = [window rootViewController];
    [rootViewController presentViewController:v26 animated:1 completion:0];
  }
}

@end