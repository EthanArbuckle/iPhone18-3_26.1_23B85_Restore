@interface ICWindowDeletionAlertPresenter
- (ICWindowDeletionAlertPresenter)initWithWindow:(id)a3 sender:(id)a4;
- (void)presentAlert:(id)a3 withCompletion:(id)a4;
@end

@implementation ICWindowDeletionAlertPresenter

- (ICWindowDeletionAlertPresenter)initWithWindow:(id)a3 sender:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = ICWindowDeletionAlertPresenter;
  v9 = [(ICWindowDeletionAlertPresenter *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_window, a3);
    objc_storeStrong(&v10->_sender, a4);
  }

  return v10;
}

- (void)presentAlert:(id)a3 withCompletion:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (+[ICDeleteAlert suppressesAlerts])
  {
    if (v7)
    {
      v7[2](v7, 1);
    }
  }

  else
  {
    v8 = +[NSBundle mainBundle];
    v9 = [v8 localizedStringForKey:@"Cancel" value:&stru_100661CF0 table:0];

    v10 = [v6 title];
    v11 = [v6 message];
    v30 = [v6 confirmationStringForSender:self->_sender];
    v12 = [v6 canCancel];
    v13 = [(ICWindowDeletionAlertPresenter *)self sender];
    v14 = [v6 shouldShowAsAlertForSender:v13];

    v31 = v10;
    if (v14)
    {
      v15 = [ICAlertController alertControllerWithTitle:v10 message:v11 preferredStyle:1];
    }

    else
    {
      v15 = [ICAlertController alertControllerWithTitle:v11 message:0 preferredStyle:0];
      objc_opt_class();
      v16 = [(ICWindowDeletionAlertPresenter *)self sender];
      v17 = ICDynamicCast();

      objc_opt_class();
      v18 = [(ICWindowDeletionAlertPresenter *)self sender];
      v19 = ICDynamicCast();

      v20 = [v15 popoverPresentationController];
      [v20 setSourceView:v17];

      v21 = [v15 popoverPresentationController];
      [v21 setBarButtonItem:v19];
    }

    v38[0] = _NSConcreteStackBlock;
    v38[1] = 3221225472;
    v38[2] = sub_1000840AC;
    v38[3] = &unk_100645CC8;
    v22 = v7;
    v39 = v22;
    [v15 setDismissWithoutActionBlock:v38];
    if (v12)
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
    v28 = [(ICWindowDeletionAlertPresenter *)self window];
    v29 = [v28 rootViewController];
    [v29 presentViewController:v26 animated:1 completion:0];
  }
}

@end