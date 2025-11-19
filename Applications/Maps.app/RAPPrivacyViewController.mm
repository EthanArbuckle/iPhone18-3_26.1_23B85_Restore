@interface RAPPrivacyViewController
- (RAPPrivacyViewController)initWithUserEnteredEmailAddress:(id)a3;
- (void)_presentPrivacyController:(id)a3;
- (void)presentPrivacyScreen:(id)a3;
- (void)presentPrivacyScreenForShortcutType:(int64_t)a3 completion:(id)a4;
@end

@implementation RAPPrivacyViewController

- (void)_presentPrivacyController:(id)a3
{
  v13 = a3;
  v3 = +[UIApplication sharedApplication];
  v4 = [v3 keyWindow];
  v5 = [v4 rootViewController];

  v6 = [v5 presentedViewController];

  if (v6)
  {
    do
    {
      v7 = [v5 presentedViewController];

      v8 = [v7 presentedViewController];

      v5 = v7;
    }

    while (v8);
  }

  else
  {
    v7 = v5;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && sub_10000FA08(v7) == 5)
  {
    [v13 setModalPresentationStyle:2];
    [v13 setModalInPresentation:1];
    v9 = [v7 _maps_mapsSceneDelegate];
    v10 = [v9 rapPresenter];
    [v10 presentViewController:v13 animated:1];
  }

  else if ([v7 isViewLoaded])
  {
    v11 = [v7 view];
    v12 = [v11 window];

    if (v12)
    {
      [v13 setModalPresentationStyle:2];
      [v13 setModalInPresentation:1];
      [v7 presentViewController:v13 animated:1 completion:0];
    }
  }
}

- (void)presentPrivacyScreen:(id)a3
{
  v4 = a3;
  userEnteredEmailAddress = self->_userEnteredEmailAddress;
  if (userEnteredEmailAddress)
  {
    v6 = userEnteredEmailAddress;
  }

  else
  {
    v6 = sub_1007412FC();
  }

  v7 = v6;
  v8 = objc_alloc_init(RAPReportComposerNavigationController);
  v9 = [[_RAPPrivacyInformationController alloc] initWithCompletion:v4 emailAddress:v7 isUserEnteredEmailAddress:userEnteredEmailAddress != 0];
  v11 = v9;
  v10 = [NSArray arrayWithObjects:&v11 count:1];
  [(RAPReportComposerNavigationController *)v8 setViewControllers:v10];

  [(RAPPrivacyViewController *)self _presentPrivacyController:v8];
}

- (void)presentPrivacyScreenForShortcutType:(int64_t)a3 completion:(id)a4
{
  v6 = a4;
  v7 = [[_RAPPrivacyInformationController alloc] initWithShortcutType:a3 completion:v6];
  objc_initWeak(&location, v7);
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_100F53AA8;
  v9[3] = &unk_10165E0F8;
  objc_copyWeak(&v11, &location);
  v8 = v6;
  v10 = v8;
  [(_RAPPrivacyInformationController *)v7 setCompletion:v9];
  [(RAPPrivacyViewController *)self _presentPrivacyController:v7];

  objc_destroyWeak(&v11);
  objc_destroyWeak(&location);
}

- (RAPPrivacyViewController)initWithUserEnteredEmailAddress:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = RAPPrivacyViewController;
  v6 = [(RAPPrivacyViewController *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_userEnteredEmailAddress, a3);
  }

  return v7;
}

@end