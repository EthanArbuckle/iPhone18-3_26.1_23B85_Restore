@interface MTASleepCoordinator
- (BOOL)didCompleteSleepOnboarding;
- (BOOL)isHealthAppNotInstalled;
- (MTASleepCoordinator)init;
- (MTASleepCoordinatorDelegate)delegate;
- (id)sleepEditController;
- (id)sleepMetadata;
- (void)dealloc;
- (void)localSetup;
- (void)observedApplicationDidInstallForBundleIdentifier:(id)identifier;
- (void)observedApplicationDidUninstallForBundleIdentifier:(id)identifier;
- (void)presentationControllerDidDismiss:(id)dismiss;
- (void)quickScheduleManagementViewController:(id)controller didSave:(id)save;
- (void)quickScheduleManagementViewController:(id)controller shouldPresent:(id)present;
- (void)quickScheduleManagementViewControllerDidCancel:(id)cancel;
- (void)quickScheduleManagementViewControllerWillSave:(id)save;
- (void)sleepStore:(id)store sleepScheduleModelDidChange:(id)change;
@end

@implementation MTASleepCoordinator

- (MTASleepCoordinator)init
{
  v3 = MTLogForCategory();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    selfCopy = self;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%{public}@ initializing", buf, 0xCu);
  }

  v7.receiver = self;
  v7.super_class = MTASleepCoordinator;
  v4 = [(MTASleepCoordinator *)&v7 init];
  v5 = v4;
  if (v4)
  {
    [(MTASleepCoordinator *)v4 localSetup];
  }

  return v5;
}

- (void)localSetup
{
  v27 = 0;
  v28 = &v27;
  v29 = 0x2050000000;
  v3 = qword_1000D2900;
  v30 = qword_1000D2900;
  if (!qword_1000D2900)
  {
    v22 = _NSConcreteStackBlock;
    v23 = 3221225472;
    v24 = sub_1000031A4;
    v25 = &unk_1000ADDC8;
    v26 = &v27;
    sub_1000031A4(&v22);
    v3 = v28[3];
  }

  v4 = v3;
  _Block_object_dispose(&v27, 8);
  v5 = objc_opt_new();
  [(MTASleepCoordinator *)self setHealthStore:v5];

  v6 = [HKSPSleepStore alloc];
  healthStore = [(MTASleepCoordinator *)self healthStore];
  v8 = [v6 initWithHealthStore:healthStore];
  [(MTASleepCoordinator *)self setSleepStore:v8];

  sleepStore = [(MTASleepCoordinator *)self sleepStore];
  [sleepStore addObserver:self];

  v10 = dispatch_queue_create("com.apple.mobiletimer.health", 0);
  [(MTASleepCoordinator *)self setHealthQueue:v10];

  v11 = [HKSPFeatureAvailabilityStore alloc];
  v27 = 0;
  v28 = &v27;
  v29 = 0x2020000000;
  v12 = qword_1000D2910;
  v30 = qword_1000D2910;
  if (!qword_1000D2910)
  {
    v22 = _NSConcreteStackBlock;
    v23 = 3221225472;
    v24 = sub_100016240;
    v25 = &unk_1000ADDC8;
    v26 = &v27;
    v13 = sub_1000031FC();
    v14 = dlsym(v13, "HKFeatureIdentifierSleepCoaching");
    *(v26[1] + 24) = v14;
    qword_1000D2910 = *(v26[1] + 24);
    v12 = v28[3];
  }

  _Block_object_dispose(&v27, 8);
  if (!v12)
  {
    sub_100073334();
  }

  v15 = *v12;
  sleepStore2 = [(MTASleepCoordinator *)self sleepStore];
  v17 = [v11 initWithFeatureIdentifier:v15 sleepStore:sleepStore2];

  [(MTASleepCoordinator *)self setFeatureStore:v17];
  v18 = [[NSCalendar alloc] initWithCalendarIdentifier:NSCalendarIdentifierGregorian];
  [(MTASleepCoordinator *)self setCalendar:v18];

  calendar = [(MTASleepCoordinator *)self calendar];
  v20 = +[NSTimeZone localTimeZone];
  [calendar setTimeZone:v20];

  v21 = +[MTApplicationWorkspaceObserver sharedWorkspaceObserver];
  [v21 addObserver:self forBundleIdentifier:kHKHealthAppBundleIdentifier];
}

- (BOOL)didCompleteSleepOnboarding
{
  featureStore = [(MTASleepCoordinator *)self featureStore];
  v9 = 0;
  v4 = [featureStore isCurrentOnboardingVersionCompletedWithError:&v9];
  v5 = v9;

  v6 = MTLogForCategory();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543874;
    selfCopy = self;
    v12 = 2114;
    v13 = v4;
    v14 = 2114;
    v15 = v5;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "%{public}@ completed sleep onboarding check with result: %{public}@, error: %{public}@ ", buf, 0x20u);
  }

  if (v5)
  {
    bOOLValue = 0;
  }

  else
  {
    bOOLValue = [v4 BOOLValue];
  }

  return bOOLValue;
}

- (void)dealloc
{
  v3 = +[MTApplicationWorkspaceObserver sharedWorkspaceObserver];
  [v3 removeObserver:self];

  v4.receiver = self;
  v4.super_class = MTASleepCoordinator;
  [(MTASleepCoordinator *)&v4 dealloc];
}

- (id)sleepEditController
{
  v11 = 0;
  v12 = &v11;
  v13 = 0x2050000000;
  v3 = qword_1000D2918;
  v14 = qword_1000D2918;
  if (!qword_1000D2918)
  {
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_100016290;
    v10[3] = &unk_1000ADDC8;
    v10[4] = &v11;
    sub_100016290(v10);
    v3 = v12[3];
  }

  v4 = v3;
  _Block_object_dispose(&v11, 8);
  v5 = [v3 alloc];
  sleepStore = [(MTASleepCoordinator *)self sleepStore];
  v7 = [v5 initWithSleepStore:sleepStore];

  [v7 setSleepDelegate:self];
  presentationController = [v7 presentationController];
  [presentationController setDelegate:self];

  return v7;
}

- (BOOL)isHealthAppNotInstalled
{
  v2 = +[_HKBehavior sharedBehavior];
  healthAppNotInstalled = [v2 healthAppNotInstalled];

  return healthAppNotInstalled;
}

- (void)quickScheduleManagementViewControllerWillSave:(id)save
{
  saveCopy = save;
  v5 = MTLogForCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138543362;
    selfCopy = self;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%{public}@ sleep occurrence controller will save schedule", &v7, 0xCu);
  }

  presentingViewController = [saveCopy presentingViewController];

  [presentingViewController dismissViewControllerAnimated:1 completion:&stru_1000ADD80];
}

- (void)quickScheduleManagementViewController:(id)controller didSave:(id)save
{
  v5 = MTLogForCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138543362;
    selfCopy = self;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%{public}@ sleep occurrence controller did save schedule", &v7, 0xCu);
  }

  delegate = [(MTASleepCoordinator *)self delegate];
  [delegate didDismissViewController];
}

- (void)quickScheduleManagementViewControllerDidCancel:(id)cancel
{
  cancelCopy = cancel;
  v5 = MTLogForCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 138543362;
    selfCopy = self;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%{public}@ sleep occurrence controller did cancel", &v8, 0xCu);
  }

  presentingViewController = [cancelCopy presentingViewController];

  [presentingViewController dismissViewControllerAnimated:1 completion:&stru_1000ADDA0];
  delegate = [(MTASleepCoordinator *)self delegate];
  [delegate didDismissViewController];
}

- (void)quickScheduleManagementViewController:(id)controller shouldPresent:(id)present
{
  presentCopy = present;
  v6 = MTLogForCategory();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 138543618;
    selfCopy = self;
    v10 = 2114;
    v11 = presentCopy;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "%{public}@ sleep occurrence controller presenting alert: %{public}@", &v8, 0x16u);
  }

  delegate = [(MTASleepCoordinator *)self delegate];
  [delegate presentSleepAlert:presentCopy];
}

- (id)sleepMetadata
{
  sleepStore = [(MTASleepCoordinator *)self sleepStore];
  calendar = [(MTASleepCoordinator *)self calendar];
  v5 = [sleepStore mt_sleepMetaDataForUpcomingAlarmInCalendar:calendar error:0];

  return v5;
}

- (void)sleepStore:(id)store sleepScheduleModelDidChange:(id)change
{
  v5 = MTLogForCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138543362;
    selfCopy = self;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%{public}@ sleep schedule model did change", &v7, 0xCu);
  }

  delegate = [(MTASleepCoordinator *)self delegate];
  [delegate sleepScheduleModelDidChange];
}

- (void)observedApplicationDidInstallForBundleIdentifier:(id)identifier
{
  delegate = [(MTASleepCoordinator *)self delegate];
  [delegate healthAppInstallationDidChange];
}

- (void)observedApplicationDidUninstallForBundleIdentifier:(id)identifier
{
  delegate = [(MTASleepCoordinator *)self delegate];
  [delegate healthAppInstallationDidChange];
}

- (void)presentationControllerDidDismiss:(id)dismiss
{
  v4 = MTLogForCategory();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 138543362;
    selfCopy = self;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "%{public}@ did dismiss sleep presentation controller", &v6, 0xCu);
  }

  delegate = [(MTASleepCoordinator *)self delegate];
  [delegate didDismissViewController];
}

- (MTASleepCoordinatorDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end