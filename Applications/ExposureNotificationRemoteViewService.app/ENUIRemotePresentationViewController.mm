@interface ENUIRemotePresentationViewController
- (ENUIRemotePresentationViewController)init;
- (id)_viewControllerToShowForPresentationRequest:(id)a3;
- (void)_finishWithError:(id)a3;
- (void)_handleOnboardingResult:(int64_t)a3 completion:(id)a4;
- (void)dealloc;
- (void)setPresentationRequest:(id)a3;
- (void)show;
- (void)viewDidLoad;
@end

@implementation ENUIRemotePresentationViewController

- (ENUIRemotePresentationViewController)init
{
  v11.receiver = self;
  v11.super_class = ENUIRemotePresentationViewController;
  v2 = [(ENUIRemotePresentationViewController *)&v11 initWithNibName:0 bundle:0];
  if (v2)
  {
    v3 = objc_alloc_init(ENManager);
    v4 = *(v2 + 3);
    *(v2 + 3) = v3;

    [*(v2 + 3) setDispatchQueue:&_dispatch_main_q];
    v5 = dispatch_group_create();
    v6 = *(v2 + 4);
    *(v2 + 4) = v5;

    dispatch_group_enter(*(v2 + 4));
    v7 = *(v2 + 3);
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_100000E08;
    v9[3] = &unk_100004170;
    v10 = v2;
    [v7 activateWithCompletionHandler:v9];
  }

  return v2;
}

- (void)dealloc
{
  [(ENManager *)self->_manager invalidate];
  v3.receiver = self;
  v3.super_class = ENUIRemotePresentationViewController;
  [(ENUIRemotePresentationViewController *)&v3 dealloc];
}

- (void)viewDidLoad
{
  v3.receiver = self;
  v3.super_class = ENUIRemotePresentationViewController;
  [(ENUIRemotePresentationViewController *)&v3 viewDidLoad];
  if (self->_showAtViewLoad)
  {
    [(ENUIRemotePresentationViewController *)self show];
  }
}

- (void)setPresentationRequest:(id)a3
{
  objc_storeStrong(&self->_presentationRequest, a3);
  if (self->_presentationRequest)
  {

    [(ENUIRemotePresentationViewController *)self show];
  }
}

- (void)show
{
  if (([(ENUIRemotePresentationViewController *)self isViewLoaded]& 1) == 0)
  {
    v4 = 8;
LABEL_8:
    *(&self->super.super.super.isa + v4) = 1;
    return;
  }

  if (!self->_presentationRequest)
  {
    v4 = 9;
    goto LABEL_8;
  }

  self->_showAtViewLoad = 0;
  self->_showAfterPresentationRequest = 0;
  v3 = [(ENUIRemotePresentationViewController *)self _viewControllerToShowForPresentationRequest:self->_presentationRequest];
  if (v3)
  {
    v5[0] = _NSConcreteStackBlock;
    v5[1] = 3221225472;
    v5[2] = sub_10000104C;
    v5[3] = &unk_100004198;
    v5[4] = self;
    [(ENUIRemotePresentationViewController *)self presentViewController:v3 animated:1 completion:v5];
  }
}

- (void)_finishWithError:(id)a3
{
  v4 = a3;
  dispatch_assert_queue_V2(&_dispatch_main_q);
  v5 = [(ENUIRemotePresentationViewController *)self _hostViewController];
  [v5 didFinishWithError:v4];
}

- (id)_viewControllerToShowForPresentationRequest:(id)a3
{
  v4 = a3;
  v5 = [v4 requestType];
  if (v5 == 3)
  {
    objc_initWeak(&location, self);
    v12 = +[ENUIViewControllerFactory sharedInstance];
    v13 = [v4 appBundleIdentifier];
    v14 = [v4 agencyRegion];
    v15 = v19;
    v19[0] = _NSConcreteStackBlock;
    v19[1] = 3221225472;
    v19[2] = sub_100001768;
    v19[3] = &unk_1000041E8;
    objc_copyWeak(&v20, &location);
    v16 = [v12 createPreApprovalDialogueWithBundleIdentifier:v13 region:v14 completion:v19];
    goto LABEL_8;
  }

  if (v5 == 2)
  {
    objc_initWeak(&location, self);
    v12 = +[ENUIViewControllerFactory sharedInstance];
    v13 = [v4 appBundleIdentifier];
    v14 = [v4 agencyRegion];
    v15 = v21;
    v21[0] = _NSConcreteStackBlock;
    v21[1] = 3221225472;
    v21[2] = sub_100001634;
    v21[3] = &unk_1000041E8;
    objc_copyWeak(&v22, &location);
    v16 = [v12 createKeyReleaseDialogueWithBundleIdentifier:v13 region:v14 completion:v21];
LABEL_8:
    v11 = v16;

    objc_destroyWeak(v15 + 4);
    objc_destroyWeak(&location);
    goto LABEL_14;
  }

  if (v5 == 1)
  {
    v6 = [v4 agencyRegion];
    v7 = [v6 regionCode];
    v8 = [_TtC28HealthExposureNotificationUI27ENUIPublicHealthAgencyModel regionForRegionCode:v7];

    if (v8)
    {
      objc_initWeak(&location, self);
      v9 = +[ENUIViewControllerFactory sharedInstance];
      v10 = +[_TtC28HealthExposureNotificationUI16ENManagerAdapter defaultAdapter];
      v23[0] = _NSConcreteStackBlock;
      v23[1] = 3221225472;
      v23[2] = sub_100001500;
      v23[3] = &unk_1000041C0;
      objc_copyWeak(&v24, &location);
      v11 = [v9 createOnboardingStackForAgencyModel:v8 exposureManager:v10 fromAvailabilityAlert:0 fromDeepLink:0 subsequentFlow:0 completion:v23];

      [v11 setModalPresentationStyle:0];
      objc_destroyWeak(&v24);
      objc_destroyWeak(&location);
    }

    else
    {
      v17 = ENUILogForCategory();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        sub_100001E28(v17);
      }

      v11 = 0;
    }
  }

  else
  {
    v11 = 0;
  }

LABEL_14:

  return v11;
}

- (void)_handleOnboardingResult:(int64_t)a3 completion:(id)a4
{
  v6 = a4;
  v7 = [(ENUIRemotePresentationViewController *)self presentationRequest];
  [v7 onboardingRequestCompletedWithDecision:a3 != 0];

  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_100001978;
  v9[3] = &unk_100004238;
  v9[4] = self;
  v10 = v6;
  v8 = v6;
  [(ENUIRemotePresentationViewController *)self _performAfterActivation:v9];
}

@end