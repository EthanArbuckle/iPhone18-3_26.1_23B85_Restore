@interface RAPPrivacyViewController
- (RAPPrivacyViewController)initWithUserEnteredEmailAddress:(id)address;
- (void)_presentPrivacyController:(id)controller;
- (void)presentPrivacyScreen:(id)screen;
- (void)presentPrivacyScreenForShortcutType:(int64_t)type completion:(id)completion;
@end

@implementation RAPPrivacyViewController

- (void)_presentPrivacyController:(id)controller
{
  controllerCopy = controller;
  v3 = +[UIApplication sharedApplication];
  keyWindow = [v3 keyWindow];
  rootViewController = [keyWindow rootViewController];

  presentedViewController = [rootViewController presentedViewController];

  if (presentedViewController)
  {
    do
    {
      presentedViewController2 = [rootViewController presentedViewController];

      v7PresentedViewController = [presentedViewController2 presentedViewController];

      rootViewController = presentedViewController2;
    }

    while (v7PresentedViewController);
  }

  else
  {
    presentedViewController2 = rootViewController;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && sub_10000FA08(presentedViewController2) == 5)
  {
    [controllerCopy setModalPresentationStyle:2];
    [controllerCopy setModalInPresentation:1];
    _maps_mapsSceneDelegate = [presentedViewController2 _maps_mapsSceneDelegate];
    rapPresenter = [_maps_mapsSceneDelegate rapPresenter];
    [rapPresenter presentViewController:controllerCopy animated:1];
  }

  else if ([presentedViewController2 isViewLoaded])
  {
    view = [presentedViewController2 view];
    window = [view window];

    if (window)
    {
      [controllerCopy setModalPresentationStyle:2];
      [controllerCopy setModalInPresentation:1];
      [presentedViewController2 presentViewController:controllerCopy animated:1 completion:0];
    }
  }
}

- (void)presentPrivacyScreen:(id)screen
{
  screenCopy = screen;
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
  v9 = [[_RAPPrivacyInformationController alloc] initWithCompletion:screenCopy emailAddress:v7 isUserEnteredEmailAddress:userEnteredEmailAddress != 0];
  v11 = v9;
  v10 = [NSArray arrayWithObjects:&v11 count:1];
  [(RAPReportComposerNavigationController *)v8 setViewControllers:v10];

  [(RAPPrivacyViewController *)self _presentPrivacyController:v8];
}

- (void)presentPrivacyScreenForShortcutType:(int64_t)type completion:(id)completion
{
  completionCopy = completion;
  v7 = [[_RAPPrivacyInformationController alloc] initWithShortcutType:type completion:completionCopy];
  objc_initWeak(&location, v7);
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_100F53AA8;
  v9[3] = &unk_10165E0F8;
  objc_copyWeak(&v11, &location);
  v8 = completionCopy;
  v10 = v8;
  [(_RAPPrivacyInformationController *)v7 setCompletion:v9];
  [(RAPPrivacyViewController *)self _presentPrivacyController:v7];

  objc_destroyWeak(&v11);
  objc_destroyWeak(&location);
}

- (RAPPrivacyViewController)initWithUserEnteredEmailAddress:(id)address
{
  addressCopy = address;
  v9.receiver = self;
  v9.super_class = RAPPrivacyViewController;
  v6 = [(RAPPrivacyViewController *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_userEnteredEmailAddress, address);
  }

  return v7;
}

@end