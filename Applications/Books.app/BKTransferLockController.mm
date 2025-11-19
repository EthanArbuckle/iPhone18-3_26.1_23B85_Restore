@interface BKTransferLockController
- (UIViewController)presentingViewController;
- (void)_handleTransferLockError:(id)a3;
- (void)_showTransferLockBackOffAlert;
- (void)resolveTransferLockWithPresentingViewController:(id)a3 completion:(id)a4;
@end

@implementation BKTransferLockController

- (void)resolveTransferLockWithPresentingViewController:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  [(BKTransferLockController *)self setPresentingViewController:v6];
  [(BKTransferLockController *)self setCompletion:v7];
  objc_initWeak(&location, self);
  v8 = objc_alloc_init(BKAcquireSlotRequest);
  [(BKTransferLockController *)self setAcquireSlotRequest:v8];

  v9 = [(BKTransferLockController *)self acquireSlotRequest];
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_1000A1F9C;
  v10[3] = &unk_100A042A0;
  objc_copyWeak(&v11, &location);
  [v9 performRequestWithResponseHandler:v10];

  objc_destroyWeak(&v11);
  objc_destroyWeak(&location);
}

- (void)_handleTransferLockError:(id)a3
{
  v4 = a3;
  objc_opt_class();
  v5 = [v4 userInfo];
  v6 = BUDynamicCast();

  if ([v4 code] == 2 && +[BKAcquireSlotDialogResponse isDialogResponse:](BKAcquireSlotDialogResponse, "isDialogResponse:", v6))
  {
    objc_initWeak(&location, self);
    v7 = [[BKAcquireSlotDialogResponse alloc] initWithDialogDictionary:v6];
    v12 = _NSConcreteStackBlock;
    v13 = 3221225472;
    v14 = sub_1000A23D8;
    v15 = &unk_100A05C58;
    objc_copyWeak(&v16, &location);
    v8 = [(BKAcquireSlotDialogResponse *)v7 createTransferDialogWithCompletion:&v12];
    if (v8)
    {
      v9 = [(BKTransferLockController *)self presentingViewController:v12];
      [v9 presentViewController:v8 animated:1 completion:0];
    }

    else
    {
      v10 = sub_1000AC6E8();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v19 = v6;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "Failed to create transfer dialog from response: %@", buf, 0xCu);
      }

      v11 = [(BKTransferLockController *)self completion:v12];
      v9 = v11;
      if (v11)
      {
        (*(v11 + 16))(v11);
      }

      [(BKTransferLockController *)self setCompletion:0];
    }

    objc_destroyWeak(&v16);
    objc_destroyWeak(&location);
  }

  else if ([v4 code] == 3)
  {
    [(BKTransferLockController *)self _showTransferLockBackOffAlert];
  }
}

- (void)_showTransferLockBackOffAlert
{
  v3 = +[NSBundle mainBundle];
  v4 = [v3 localizedStringForKey:@"Couldn’t Play Audiobook" value:&stru_100A30A68 table:0];

  LODWORD(v3) = _os_feature_enabled_impl();
  v5 = +[NSBundle mainBundle];
  v6 = v5;
  if (v3)
  {
    v7 = @"You’re using an Apple Account different than the one associated with this device. Try again later.";
  }

  else
  {
    v7 = @"You’re using an Apple ID different than the one associated with this device. Try again later.";
  }

  v8 = [v5 localizedStringForKey:v7 value:&stru_100A30A68 table:0];

  v9 = +[NSBundle mainBundle];
  v10 = [v9 localizedStringForKey:@"OK" value:&stru_100A30A68 table:0];

  v11 = [UIAlertController alertControllerWithTitle:v4 message:v8 preferredStyle:1];
  objc_initWeak(&location, self);
  v14 = _NSConcreteStackBlock;
  v15 = 3221225472;
  v16 = sub_1000A289C;
  v17 = &unk_100A05C80;
  objc_copyWeak(&v18, &location);
  v12 = [UIAlertAction actionWithTitle:v10 style:1 handler:&v14];
  [v11 addAction:{v12, v14, v15, v16, v17}];

  v13 = [(BKTransferLockController *)self presentingViewController];
  [v13 presentViewController:v11 animated:1 completion:0];

  objc_destroyWeak(&v18);
  objc_destroyWeak(&location);
}

- (UIViewController)presentingViewController
{
  WeakRetained = objc_loadWeakRetained(&self->_presentingViewController);

  return WeakRetained;
}

@end