@interface MTASleepCoordinator
- (BOOL)didCompleteSleepOnboarding;
- (BOOL)isHealthAppNotInstalled;
- (MTASleepCoordinator)init;
- (MTASleepCoordinatorDelegate)delegate;
- (id)sleepEditController;
- (id)sleepMetadata;
- (void)dealloc;
- (void)localSetup;
- (void)observedApplicationDidInstallForBundleIdentifier:(id)a3;
- (void)observedApplicationDidUninstallForBundleIdentifier:(id)a3;
- (void)presentationControllerDidDismiss:(id)a3;
- (void)quickScheduleManagementViewController:(id)a3 didSave:(id)a4;
- (void)quickScheduleManagementViewController:(id)a3 shouldPresent:(id)a4;
- (void)quickScheduleManagementViewControllerDidCancel:(id)a3;
- (void)quickScheduleManagementViewControllerWillSave:(id)a3;
- (void)sleepStore:(id)a3 sleepScheduleModelDidChange:(id)a4;
@end

@implementation MTASleepCoordinator

- (MTASleepCoordinator)init
{
  v3 = MTLogForCategory();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v9 = self;
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
  v7 = [(MTASleepCoordinator *)self healthStore];
  v8 = [v6 initWithHealthStore:v7];
  [(MTASleepCoordinator *)self setSleepStore:v8];

  v9 = [(MTASleepCoordinator *)self sleepStore];
  [v9 addObserver:self];

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
  v16 = [(MTASleepCoordinator *)self sleepStore];
  v17 = [v11 initWithFeatureIdentifier:v15 sleepStore:v16];

  [(MTASleepCoordinator *)self setFeatureStore:v17];
  v18 = [[NSCalendar alloc] initWithCalendarIdentifier:NSCalendarIdentifierGregorian];
  [(MTASleepCoordinator *)self setCalendar:v18];

  v19 = [(MTASleepCoordinator *)self calendar];
  v20 = +[NSTimeZone localTimeZone];
  [v19 setTimeZone:v20];

  v21 = +[MTApplicationWorkspaceObserver sharedWorkspaceObserver];
  [v21 addObserver:self forBundleIdentifier:kHKHealthAppBundleIdentifier];
}

- (BOOL)didCompleteSleepOnboarding
{
  v3 = [(MTASleepCoordinator *)self featureStore];
  v9 = 0;
  v4 = [v3 isCurrentOnboardingVersionCompletedWithError:&v9];
  v5 = v9;

  v6 = MTLogForCategory();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543874;
    v11 = self;
    v12 = 2114;
    v13 = v4;
    v14 = 2114;
    v15 = v5;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "%{public}@ completed sleep onboarding check with result: %{public}@, error: %{public}@ ", buf, 0x20u);
  }

  if (v5)
  {
    v7 = 0;
  }

  else
  {
    v7 = [v4 BOOLValue];
  }

  return v7;
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
  v6 = [(MTASleepCoordinator *)self sleepStore];
  v7 = [v5 initWithSleepStore:v6];

  [v7 setSleepDelegate:self];
  v8 = [v7 presentationController];
  [v8 setDelegate:self];

  return v7;
}

- (BOOL)isHealthAppNotInstalled
{
  v2 = +[_HKBehavior sharedBehavior];
  v3 = [v2 healthAppNotInstalled];

  return v3;
}

- (void)quickScheduleManagementViewControllerWillSave:(id)a3
{
  v4 = a3;
  v5 = MTLogForCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138543362;
    v8 = self;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%{public}@ sleep occurrence controller will save schedule", &v7, 0xCu);
  }

  v6 = [v4 presentingViewController];

  [v6 dismissViewControllerAnimated:1 completion:&stru_1000ADD80];
}

- (void)quickScheduleManagementViewController:(id)a3 didSave:(id)a4
{
  v5 = MTLogForCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138543362;
    v8 = self;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%{public}@ sleep occurrence controller did save schedule", &v7, 0xCu);
  }

  v6 = [(MTASleepCoordinator *)self delegate];
  [v6 didDismissViewController];
}

- (void)quickScheduleManagementViewControllerDidCancel:(id)a3
{
  v4 = a3;
  v5 = MTLogForCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 138543362;
    v9 = self;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%{public}@ sleep occurrence controller did cancel", &v8, 0xCu);
  }

  v6 = [v4 presentingViewController];

  [v6 dismissViewControllerAnimated:1 completion:&stru_1000ADDA0];
  v7 = [(MTASleepCoordinator *)self delegate];
  [v7 didDismissViewController];
}

- (void)quickScheduleManagementViewController:(id)a3 shouldPresent:(id)a4
{
  v5 = a4;
  v6 = MTLogForCategory();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 138543618;
    v9 = self;
    v10 = 2114;
    v11 = v5;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "%{public}@ sleep occurrence controller presenting alert: %{public}@", &v8, 0x16u);
  }

  v7 = [(MTASleepCoordinator *)self delegate];
  [v7 presentSleepAlert:v5];
}

- (id)sleepMetadata
{
  v3 = [(MTASleepCoordinator *)self sleepStore];
  v4 = [(MTASleepCoordinator *)self calendar];
  v5 = [v3 mt_sleepMetaDataForUpcomingAlarmInCalendar:v4 error:0];

  return v5;
}

- (void)sleepStore:(id)a3 sleepScheduleModelDidChange:(id)a4
{
  v5 = MTLogForCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138543362;
    v8 = self;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%{public}@ sleep schedule model did change", &v7, 0xCu);
  }

  v6 = [(MTASleepCoordinator *)self delegate];
  [v6 sleepScheduleModelDidChange];
}

- (void)observedApplicationDidInstallForBundleIdentifier:(id)a3
{
  v3 = [(MTASleepCoordinator *)self delegate];
  [v3 healthAppInstallationDidChange];
}

- (void)observedApplicationDidUninstallForBundleIdentifier:(id)a3
{
  v3 = [(MTASleepCoordinator *)self delegate];
  [v3 healthAppInstallationDidChange];
}

- (void)presentationControllerDidDismiss:(id)a3
{
  v4 = MTLogForCategory();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 138543362;
    v7 = self;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "%{public}@ did dismiss sleep presentation controller", &v6, 0xCu);
  }

  v5 = [(MTASleepCoordinator *)self delegate];
  [v5 didDismissViewController];
}

- (MTASleepCoordinatorDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end