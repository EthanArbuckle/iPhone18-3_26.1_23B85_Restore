@interface HKHealthPrivacyServiceAuthorizationViewController
- (BOOL)_isPresentingLastRequest;
- (HKHealthPrivacyServiceAuthorizationViewController)initWithNibName:(id)name bundle:(id)bundle;
- (id)_promptControllerForClinicalHealthRecordsPresentationRequest:(id)request source:(id)source;
- (id)_promptControllerForHealthDataPresentationRequest:(id)request source:(id)source;
- (id)_promptControllerForPresentationRequest:(id)request source:(id)source;
- (unsigned)_appStateTerminationUpperBound;
- (void)_beginAuthorizationSessionWithIdentifier:(id)identifier;
- (void)_configureApplicationStateMonitor;
- (void)_didFinishPresentingRequestWithError:(id)error;
- (void)_finishWithError:(id)error;
- (void)_hostApplicationStateDidChange:(unsigned int)change;
- (void)_hostDidTerminate;
- (void)_presentNextRequest;
- (void)_presentRequestIfNeeded:(id)needed;
- (void)promptControllerDidFinish:(id)finish error:(id)error;
- (void)setRequestRecord:(id)record presentationRequests:(id)requests;
- (void)show;
- (void)viewDidLoad;
@end

@implementation HKHealthPrivacyServiceAuthorizationViewController

- (HKHealthPrivacyServiceAuthorizationViewController)initWithNibName:(id)name bundle:(id)bundle
{
  v8.receiver = self;
  v8.super_class = HKHealthPrivacyServiceAuthorizationViewController;
  v4 = [(HKHealthPrivacyServiceAuthorizationViewController *)&v8 initWithNibName:name bundle:bundle];
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

- (void)setRequestRecord:(id)record presentationRequests:(id)requests
{
  requestsCopy = requests;
  recordCopy = record;
  if (([requestsCopy hk_allElementsUnique] & 1) == 0)
  {
    sub_10000635C();
  }

  if (![requestsCopy count])
  {
    sub_1000063D0();
  }

  [(HKHealthPrivacyServiceAuthorizationViewController *)self setRequestRecord:recordCopy];
  [(HKHealthPrivacyServiceAuthorizationViewController *)self setPresentationRequests:requestsCopy];
  sessionIdentifier = [recordCopy sessionIdentifier];

  [(HKHealthPrivacyServiceAuthorizationViewController *)self _beginAuthorizationSessionWithIdentifier:sessionIdentifier];
}

- (void)show
{
  if (([(HKHealthPrivacyServiceAuthorizationViewController *)self isViewLoaded]& 1) == 0)
  {
    self->_showAtViewLoad = 1;
    return;
  }

  currentTransactionSource = [(HKHealthPrivacyServiceAuthorizationViewController *)self currentTransactionSource];
  if (!currentTransactionSource)
  {
    self->_showAtNextSourceFetch = 1;
    goto LABEL_8;
  }

  v8 = currentTransactionSource;
  self->_showAtViewLoad = 0;
  self->_showAtNextSourceFetch = 0;
  requestRecord = [(HKHealthPrivacyServiceAuthorizationViewController *)self requestRecord];
  presentationRequests = [(HKHealthPrivacyServiceAuthorizationViewController *)self presentationRequests];
  v6 = presentationRequests;
  if (!requestRecord)
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

  if (!presentationRequests)
  {
    goto LABEL_12;
  }

LABEL_5:
  firstObject = [v6 firstObject];
  [(HKHealthPrivacyServiceAuthorizationViewController *)self _presentRequestIfNeeded:firstObject];

  currentTransactionSource = v8;
LABEL_8:
}

- (void)_presentRequestIfNeeded:(id)needed
{
  neededCopy = needed;
  currentTransactionSessionIdentifier = [(HKHealthPrivacyServiceAuthorizationViewController *)self currentTransactionSessionIdentifier];

  if (!currentTransactionSessionIdentifier)
  {
    sub_10000652C();
  }

  currentTransactionSource = [(HKHealthPrivacyServiceAuthorizationViewController *)self currentTransactionSource];
  if (!currentTransactionSource)
  {
    sub_1000065A0();
  }

  [(HKHealthPrivacyServiceAuthorizationViewController *)self setPresentedRequest:neededCopy];
  v6 = [(HKHealthPrivacyServiceAuthorizationViewController *)self _promptControllerForPresentationRequest:neededCopy source:currentTransactionSource];
  if (v6 && ((objc_opt_respondsToSelector() & 1) == 0 || ([v6 shouldPresent] & 1) != 0))
  {
    presentationRequests = [(HKHealthPrivacyServiceAuthorizationViewController *)self presentationRequests];
    v8 = [presentationRequests indexOfObject:neededCopy] != 0;

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
  presentedRequest = [(HKHealthPrivacyServiceAuthorizationViewController *)self presentedRequest];
  if (presentedRequest)
  {
    presentationRequests = [(HKHealthPrivacyServiceAuthorizationViewController *)self presentationRequests];
    lastObject = [presentationRequests lastObject];
    v6 = [presentedRequest isEqual:lastObject];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)_presentNextRequest
{
  presentedRequest = [(HKHealthPrivacyServiceAuthorizationViewController *)self presentedRequest];
  currentTransactionSessionIdentifier = [(HKHealthPrivacyServiceAuthorizationViewController *)self currentTransactionSessionIdentifier];

  if (!currentTransactionSessionIdentifier)
  {
    sub_100006614();
  }

  if (!presentedRequest)
  {
    sub_100006688();
  }

  if ([(HKHealthPrivacyServiceAuthorizationViewController *)self _isPresentingLastRequest])
  {
    sub_1000066FC();
  }

  presentationRequests = [(HKHealthPrivacyServiceAuthorizationViewController *)self presentationRequests];
  v5 = [presentationRequests objectAtIndexedSubscript:{objc_msgSend(presentationRequests, "indexOfObject:", presentedRequest) + 1}];
  [(HKHealthPrivacyServiceAuthorizationViewController *)self _presentRequestIfNeeded:v5];
}

- (void)_didFinishPresentingRequestWithError:(id)error
{
  errorCopy = error;
  if ([(HKHealthPrivacyServiceAuthorizationViewController *)self _isPresentingLastRequest]|| ([(HKHealthPrivacyServiceAuthorizationViewController *)self currentTransactionSessionIdentifier], v4 = objc_claimAutoreleasedReturnValue(), v4, !v4))
  {
    [(HKHealthPrivacyServiceAuthorizationViewController *)self _finishWithError:errorCopy];
  }

  else
  {
    [(HKHealthPrivacyServiceAuthorizationViewController *)self _presentNextRequest];
  }
}

- (id)_promptControllerForPresentationRequest:(id)request source:(id)source
{
  requestCopy = request;
  sourceCopy = source;
  type = [requestCopy type];
  if (type == 1)
  {
    v9 = [(HKHealthPrivacyServiceAuthorizationViewController *)self _promptControllerForHealthDataPresentationRequest:requestCopy source:sourceCopy];
    goto LABEL_5;
  }

  if (!type)
  {
    v9 = [(HKHealthPrivacyServiceAuthorizationViewController *)self _promptControllerForClinicalHealthRecordsPresentationRequest:requestCopy source:sourceCopy];
LABEL_5:
    v10 = v9;
    goto LABEL_7;
  }

  v10 = 0;
LABEL_7:

  return v10;
}

- (id)_promptControllerForClinicalHealthRecordsPresentationRequest:(id)request source:(id)source
{
  sourceCopy = source;
  requestCopy = request;
  if ([requestCopy type])
  {
    sub_100006770();
  }

  healthStore = [(HKHealthPrivacyServiceAuthorizationViewController *)self healthStore];
  v9 = [HKClinicalAuthorizationSequenceContext contextWithHealthStore:healthStore request:requestCopy source:sourceCopy];

  v10 = [v9 createInitialViewControllerWithDelegate:self];

  return v10;
}

- (id)_promptControllerForHealthDataPresentationRequest:(id)request source:(id)source
{
  sourceCopy = source;
  requestCopy = request;
  if ([requestCopy type] != 1)
  {
    sub_1000067E4();
  }

  v8 = [HKAuthorizationSettingsViewController alloc];
  healthStore = [(HKHealthPrivacyServiceAuthorizationViewController *)self healthStore];
  typesRequiringShareAuthorization = [requestCopy typesRequiringShareAuthorization];
  typesRequiringReadAuthorization = [requestCopy typesRequiringReadAuthorization];
  readUsageDescription = [requestCopy readUsageDescription];
  shareUsageDescription = [requestCopy shareUsageDescription];
  researchStudyUsageDescription = [requestCopy researchStudyUsageDescription];

  v15 = [v8 initWithHealthStore:healthStore style:1 source:sourceCopy typesToShare:typesRequiringShareAuthorization typesToRead:typesRequiringReadAuthorization shareDescription:readUsageDescription updateDescription:shareUsageDescription researchStudyUsageDescription:researchStudyUsageDescription];
  [v15 sourceConfigure];
  [v15 setDelegate:self];

  return v15;
}

- (unsigned)_appStateTerminationUpperBound
{
  presentedRequest = [(HKHealthPrivacyServiceAuthorizationViewController *)self presentedRequest];
  if ([presentedRequest shouldDismissWhenBackgrounded])
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  return v3;
}

- (void)_hostApplicationStateDidChange:(unsigned int)change
{
  if ([(HKHealthPrivacyServiceAuthorizationViewController *)self _appStateTerminationUpperBound]> change)
  {
    _HKInitializeLogging();
    v5 = HKLogAuthorization();
    v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG);

    if (v6)
    {
      v7 = HKLogAuthorization();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
      {
        sub_100005F74(change, v7);
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
  _hostApplicationBundleIdentifier = [(HKHealthPrivacyServiceAuthorizationViewController *)self _hostApplicationBundleIdentifier];
  v13 = _hostApplicationBundleIdentifier;
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
  currentTransactionSessionIdentifier = [(HKHealthPrivacyServiceAuthorizationViewController *)self currentTransactionSessionIdentifier];

  if (currentTransactionSessionIdentifier)
  {
    v4 = [NSError errorWithDomain:HKErrorDomain code:5 userInfo:0];
    [(HKHealthPrivacyServiceAuthorizationViewController *)self _finishWithError:v4];
  }
}

- (void)_beginAuthorizationSessionWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  if (!identifierCopy)
  {
    sub_100006858();
  }

  currentTransactionSessionIdentifier = [(HKHealthPrivacyServiceAuthorizationViewController *)self currentTransactionSessionIdentifier];

  if (currentTransactionSessionIdentifier)
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
      sub_100006940(self, identifierCopy, v8);
    }
  }

  [(HKHealthPrivacyServiceAuthorizationViewController *)self setCurrentTransactionSessionIdentifier:identifierCopy];
  [(HKHealthPrivacyServiceAuthorizationViewController *)self _configureApplicationStateMonitor];
  v20[0] = _NSConcreteStackBlock;
  v20[1] = 3221225472;
  v20[2] = sub_100005700;
  v20[3] = &unk_10000C548;
  v20[4] = self;
  v9 = identifierCopy;
  v21 = v9;
  v10 = objc_retainBlock(v20);
  v14 = _NSConcreteStackBlock;
  v15 = 3221225472;
  v16 = sub_10000588C;
  v17 = &unk_10000C660;
  selfCopy = self;
  v19 = v9;
  v11 = v9;
  v12 = objc_retainBlock(&v14);
  v13 = [(HKHealthPrivacyServiceAuthorizationViewController *)self healthStore:v14];
  [v13 beginAuthorizationDelegateTransactionWithSessionIdentifier:v11 sourceHandler:v12 errorHandler:v10];
}

- (void)promptControllerDidFinish:(id)finish error:(id)error
{
  errorCopy = error;
  presentedViewController = [(HKHealthPrivacyServiceAuthorizationViewController *)self presentedViewController];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100005AF0;
  v8[3] = &unk_10000C688;
  v10 = errorCopy == 0;
  v8[4] = self;
  v9 = errorCopy;
  v7 = errorCopy;
  [presentedViewController dismissViewControllerAnimated:1 completion:v8];
}

- (void)_finishWithError:(id)error
{
  errorCopy = error;
  dispatch_assert_queue_V2(&_dispatch_main_q);
  currentTransactionSessionIdentifier = [(HKHealthPrivacyServiceAuthorizationViewController *)self currentTransactionSessionIdentifier];
  if (currentTransactionSessionIdentifier)
  {
    healthStore = [(HKHealthPrivacyServiceAuthorizationViewController *)self healthStore];
    [healthStore endAuthorizationDelegateTransactionWithSessionIdentifier:currentTransactionSessionIdentifier error:errorCopy];
  }

  [(HKHealthPrivacyServiceAuthorizationViewController *)self setCurrentTransactionSessionIdentifier:0];
  [(HKHealthPrivacyServiceAuthorizationViewController *)self setCurrentTransactionSource:0];
  [(HKHealthPrivacyServiceAuthorizationViewController *)self setPresentedRequest:0];
  _healthPrivacyHostViewController = [(HKHealthPrivacyServiceAuthorizationViewController *)self _healthPrivacyHostViewController];
  [_healthPrivacyHostViewController didFinishWithError:errorCopy];
}

@end