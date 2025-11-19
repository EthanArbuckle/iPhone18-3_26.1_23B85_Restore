@interface HKHealthPrivacyServiceAuthorizationViewController
- (BOOL)_isPresentingLastRequest;
- (HKHealthPrivacyServiceAuthorizationViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (id)_promptControllerForClinicalHealthRecordsPresentationRequest:(id)a3 source:(id)a4;
- (id)_promptControllerForHealthDataPresentationRequest:(id)a3 source:(id)a4;
- (id)_promptControllerForPresentationRequest:(id)a3 source:(id)a4;
- (unsigned)_appStateTerminationUpperBound;
- (void)_beginAuthorizationSessionWithIdentifier:(id)a3;
- (void)_configureApplicationStateMonitor;
- (void)_didFinishPresentingRequestWithError:(id)a3;
- (void)_finishWithError:(id)a3;
- (void)_hostApplicationStateDidChange:(unsigned int)a3;
- (void)_hostDidTerminate;
- (void)_presentNextRequest;
- (void)_presentRequestIfNeeded:(id)a3;
- (void)promptControllerDidFinish:(id)a3 error:(id)a4;
- (void)setRequestRecord:(id)a3 presentationRequests:(id)a4;
- (void)show;
- (void)viewDidLoad;
@end

@implementation HKHealthPrivacyServiceAuthorizationViewController

- (HKHealthPrivacyServiceAuthorizationViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  v8.receiver = self;
  v8.super_class = HKHealthPrivacyServiceAuthorizationViewController;
  v4 = [(HKHealthPrivacyServiceAuthorizationViewController *)&v8 initWithNibName:a3 bundle:a4];
  if (v4)
  {
    v5 = objc_alloc_init(HKHealthStore);
    healthStore = v4->_healthStore;
    v4->_healthStore = v5;
  }

  return v4;
}

- (void)viewDidLoad
{
  v3.receiver = self;
  v3.super_class = HKHealthPrivacyServiceAuthorizationViewController;
  [(HKHealthPrivacyServiceAuthorizationViewController *)&v3 viewDidLoad];
  if (self->_showAtViewLoad)
  {
    [(HKHealthPrivacyServiceAuthorizationViewController *)self show];
  }
}

- (void)setRequestRecord:(id)a3 presentationRequests:(id)a4
{
  v8 = a4;
  v6 = a3;
  if (([v8 hk_allElementsUnique] & 1) == 0)
  {
    sub_10000635C();
  }

  if (![v8 count])
  {
    sub_1000063D0();
  }

  [(HKHealthPrivacyServiceAuthorizationViewController *)self setRequestRecord:v6];
  [(HKHealthPrivacyServiceAuthorizationViewController *)self setPresentationRequests:v8];
  v7 = [v6 sessionIdentifier];

  [(HKHealthPrivacyServiceAuthorizationViewController *)self _beginAuthorizationSessionWithIdentifier:v7];
}

- (void)show
{
  if (([(HKHealthPrivacyServiceAuthorizationViewController *)self isViewLoaded]& 1) == 0)
  {
    self->_showAtViewLoad = 1;
    return;
  }

  v3 = [(HKHealthPrivacyServiceAuthorizationViewController *)self currentTransactionSource];
  if (!v3)
  {
    self->_showAtNextSourceFetch = 1;
    goto LABEL_8;
  }

  v8 = v3;
  self->_showAtViewLoad = 0;
  self->_showAtNextSourceFetch = 0;
  v4 = [(HKHealthPrivacyServiceAuthorizationViewController *)self requestRecord];
  v5 = [(HKHealthPrivacyServiceAuthorizationViewController *)self presentationRequests];
  v6 = v5;
  if (!v4)
  {
    sub_100006444();
    if (v6)
    {
      goto LABEL_5;
    }

LABEL_12:
    sub_1000064B8();
    goto LABEL_5;
  }

  if (!v5)
  {
    goto LABEL_12;
  }

LABEL_5:
  v7 = [v6 firstObject];
  [(HKHealthPrivacyServiceAuthorizationViewController *)self _presentRequestIfNeeded:v7];

  v3 = v8;
LABEL_8:
}

- (void)_presentRequestIfNeeded:(id)a3
{
  v10 = a3;
  v4 = [(HKHealthPrivacyServiceAuthorizationViewController *)self currentTransactionSessionIdentifier];

  if (!v4)
  {
    sub_10000652C();
  }

  v5 = [(HKHealthPrivacyServiceAuthorizationViewController *)self currentTransactionSource];
  if (!v5)
  {
    sub_1000065A0();
  }

  [(HKHealthPrivacyServiceAuthorizationViewController *)self setPresentedRequest:v10];
  v6 = [(HKHealthPrivacyServiceAuthorizationViewController *)self _promptControllerForPresentationRequest:v10 source:v5];
  if (v6 && ((objc_opt_respondsToSelector() & 1) == 0 || ([v6 shouldPresent] & 1) != 0))
  {
    v7 = [(HKHealthPrivacyServiceAuthorizationViewController *)self presentationRequests];
    v8 = [v7 indexOfObject:v10] != 0;

    v9 = [[HKNavigationController alloc] initWithRootViewController:v6];
    [v9 setModalInPresentation:1];
    [v9 setModalPresentationStyle:5];
    [(HKHealthPrivacyServiceAuthorizationViewController *)self presentViewController:v9 animated:v8 completion:0];
  }

  else
  {
    [(HKHealthPrivacyServiceAuthorizationViewController *)self _didFinishPresentingRequestWithError:0];
  }
}

- (BOOL)_isPresentingLastRequest
{
  v3 = [(HKHealthPrivacyServiceAuthorizationViewController *)self presentedRequest];
  if (v3)
  {
    v4 = [(HKHealthPrivacyServiceAuthorizationViewController *)self presentationRequests];
    v5 = [v4 lastObject];
    v6 = [v3 isEqual:v5];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)_presentNextRequest
{
  v6 = [(HKHealthPrivacyServiceAuthorizationViewController *)self presentedRequest];
  v3 = [(HKHealthPrivacyServiceAuthorizationViewController *)self currentTransactionSessionIdentifier];

  if (!v3)
  {
    sub_100006614();
  }

  if (!v6)
  {
    sub_100006688();
  }

  if ([(HKHealthPrivacyServiceAuthorizationViewController *)self _isPresentingLastRequest])
  {
    sub_1000066FC();
  }

  v4 = [(HKHealthPrivacyServiceAuthorizationViewController *)self presentationRequests];
  v5 = [v4 objectAtIndexedSubscript:{objc_msgSend(v4, "indexOfObject:", v6) + 1}];
  [(HKHealthPrivacyServiceAuthorizationViewController *)self _presentRequestIfNeeded:v5];
}

- (void)_didFinishPresentingRequestWithError:(id)a3
{
  v5 = a3;
  if ([(HKHealthPrivacyServiceAuthorizationViewController *)self _isPresentingLastRequest]|| ([(HKHealthPrivacyServiceAuthorizationViewController *)self currentTransactionSessionIdentifier], v4 = objc_claimAutoreleasedReturnValue(), v4, !v4))
  {
    [(HKHealthPrivacyServiceAuthorizationViewController *)self _finishWithError:v5];
  }

  else
  {
    [(HKHealthPrivacyServiceAuthorizationViewController *)self _presentNextRequest];
  }
}

- (id)_promptControllerForPresentationRequest:(id)a3 source:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v6 type];
  if (v8 == 1)
  {
    v9 = [(HKHealthPrivacyServiceAuthorizationViewController *)self _promptControllerForHealthDataPresentationRequest:v6 source:v7];
    goto LABEL_5;
  }

  if (!v8)
  {
    v9 = [(HKHealthPrivacyServiceAuthorizationViewController *)self _promptControllerForClinicalHealthRecordsPresentationRequest:v6 source:v7];
LABEL_5:
    v10 = v9;
    goto LABEL_7;
  }

  v10 = 0;
LABEL_7:

  return v10;
}

- (id)_promptControllerForClinicalHealthRecordsPresentationRequest:(id)a3 source:(id)a4
{
  v6 = a4;
  v7 = a3;
  if ([v7 type])
  {
    sub_100006770();
  }

  v8 = [(HKHealthPrivacyServiceAuthorizationViewController *)self healthStore];
  v9 = [HKClinicalAuthorizationSequenceContext contextWithHealthStore:v8 request:v7 source:v6];

  v10 = [v9 createInitialViewControllerWithDelegate:self];

  return v10;
}

- (id)_promptControllerForHealthDataPresentationRequest:(id)a3 source:(id)a4
{
  v6 = a4;
  v7 = a3;
  if ([v7 type] != 1)
  {
    sub_1000067E4();
  }

  v8 = [HKAuthorizationSettingsViewController alloc];
  v9 = [(HKHealthPrivacyServiceAuthorizationViewController *)self healthStore];
  v10 = [v7 typesRequiringShareAuthorization];
  v11 = [v7 typesRequiringReadAuthorization];
  v12 = [v7 readUsageDescription];
  v13 = [v7 shareUsageDescription];
  v14 = [v7 researchStudyUsageDescription];

  v15 = [v8 initWithHealthStore:v9 style:1 source:v6 typesToShare:v10 typesToRead:v11 shareDescription:v12 updateDescription:v13 researchStudyUsageDescription:v14];
  [v15 sourceConfigure];
  [v15 setDelegate:self];

  return v15;
}

- (unsigned)_appStateTerminationUpperBound
{
  v2 = [(HKHealthPrivacyServiceAuthorizationViewController *)self presentedRequest];
  if ([v2 shouldDismissWhenBackgrounded])
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  return v3;
}

- (void)_hostApplicationStateDidChange:(unsigned int)a3
{
  if ([(HKHealthPrivacyServiceAuthorizationViewController *)self _appStateTerminationUpperBound]> a3)
  {
    _HKInitializeLogging();
    v5 = HKLogAuthorization();
    v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG);

    if (v6)
    {
      v7 = HKLogAuthorization();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
      {
        sub_100005F74(a3, v7);
      }
    }

    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100005270;
    block[3] = &unk_10000C370;
    block[4] = self;
    dispatch_async(&_dispatch_main_q, block);
  }
}

- (void)_configureApplicationStateMonitor
{
  objc_initWeak(&location, self);
  v3 = [BKSApplicationStateMonitor alloc];
  v4 = [(HKHealthPrivacyServiceAuthorizationViewController *)self _hostApplicationBundleIdentifier];
  v13 = v4;
  v5 = [NSArray arrayWithObjects:&v13 count:1];
  v6 = [v3 initWithBundleIDs:v5 states:BKSApplicationStateAll];

  v7 = _NSConcreteStackBlock;
  v8 = 3221225472;
  v9 = sub_1000053FC;
  v10 = &unk_10000C398;
  objc_copyWeak(&v11, &location);
  [v6 setHandler:&v7];
  [(HKHealthPrivacyServiceAuthorizationViewController *)self setApplicationStateMonitor:v6, v7, v8, v9, v10];
  objc_destroyWeak(&v11);

  objc_destroyWeak(&location);
}

- (void)_hostDidTerminate
{
  [(HKHealthPrivacyServiceAuthorizationViewController *)self setApplicationStateMonitor:0];
  v3 = [(HKHealthPrivacyServiceAuthorizationViewController *)self currentTransactionSessionIdentifier];

  if (v3)
  {
    v4 = [NSError errorWithDomain:HKErrorDomain code:5 userInfo:0];
    [(HKHealthPrivacyServiceAuthorizationViewController *)self _finishWithError:v4];
  }
}

- (void)_beginAuthorizationSessionWithIdentifier:(id)a3
{
  v4 = a3;
  if (!v4)
  {
    sub_100006858();
  }

  v5 = [(HKHealthPrivacyServiceAuthorizationViewController *)self currentTransactionSessionIdentifier];

  if (v5)
  {
    sub_1000068CC();
  }

  _HKInitializeLogging();
  v6 = HKLogAuthorization();
  v7 = os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG);

  if (v7)
  {
    v8 = HKLogAuthorization();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      sub_100006940(self, v4, v8);
    }
  }

  [(HKHealthPrivacyServiceAuthorizationViewController *)self setCurrentTransactionSessionIdentifier:v4];
  [(HKHealthPrivacyServiceAuthorizationViewController *)self _configureApplicationStateMonitor];
  v20[0] = _NSConcreteStackBlock;
  v20[1] = 3221225472;
  v20[2] = sub_100005700;
  v20[3] = &unk_10000C548;
  v20[4] = self;
  v9 = v4;
  v21 = v9;
  v10 = objc_retainBlock(v20);
  v14 = _NSConcreteStackBlock;
  v15 = 3221225472;
  v16 = sub_10000588C;
  v17 = &unk_10000C660;
  v18 = self;
  v19 = v9;
  v11 = v9;
  v12 = objc_retainBlock(&v14);
  v13 = [(HKHealthPrivacyServiceAuthorizationViewController *)self healthStore:v14];
  [v13 beginAuthorizationDelegateTransactionWithSessionIdentifier:v11 sourceHandler:v12 errorHandler:v10];
}

- (void)promptControllerDidFinish:(id)a3 error:(id)a4
{
  v5 = a4;
  v6 = [(HKHealthPrivacyServiceAuthorizationViewController *)self presentedViewController];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100005AF0;
  v8[3] = &unk_10000C688;
  v10 = v5 == 0;
  v8[4] = self;
  v9 = v5;
  v7 = v5;
  [v6 dismissViewControllerAnimated:1 completion:v8];
}

- (void)_finishWithError:(id)a3
{
  v7 = a3;
  dispatch_assert_queue_V2(&_dispatch_main_q);
  v4 = [(HKHealthPrivacyServiceAuthorizationViewController *)self currentTransactionSessionIdentifier];
  if (v4)
  {
    v5 = [(HKHealthPrivacyServiceAuthorizationViewController *)self healthStore];
    [v5 endAuthorizationDelegateTransactionWithSessionIdentifier:v4 error:v7];
  }

  [(HKHealthPrivacyServiceAuthorizationViewController *)self setCurrentTransactionSessionIdentifier:0];
  [(HKHealthPrivacyServiceAuthorizationViewController *)self setCurrentTransactionSource:0];
  [(HKHealthPrivacyServiceAuthorizationViewController *)self setPresentedRequest:0];
  v6 = [(HKHealthPrivacyServiceAuthorizationViewController *)self _healthPrivacyHostViewController];
  [v6 didFinishWithError:v7];
}

@end