@interface BuddyChildSetupPresenter
- (BuddyChildSetupPresenter)init;
- (BuddyChildSetupPresenterDelegate)delegate;
- (void)_ensurePresenter;
- (void)childSetupPresenter:(id)a3 didCompleteWithResult:(id)a4;
- (void)childSetupPresenter:(id)a3 didFail:(id)a4;
- (void)fetchCutOffAgeForChildAccountWithCompletionHandler:(id)a3;
- (void)setupLocationServicesWithCompletion:(id)a3;
- (void)setupLocationServicesWithNextTaskInfo:(id)a3 completion:(id)a4;
- (void)setupPasscodeForAccount:(id)a3 nextTaskInfo:(id)a4 completion:(id)a5;
- (void)setupPasscodeWithCompletion:(id)a3;
- (void)setupPerformAIDASignInWith:(id)a3 completion:(id)a4;
- (void)startFlowWithNavigationController:(id)a3;
@end

@implementation BuddyChildSetupPresenter

- (BuddyChildSetupPresenter)init
{
  v5 = a2;
  location = 0;
  v4.receiver = self;
  v4.super_class = BuddyChildSetupPresenter;
  location = [(BuddyChildSetupPresenter *)&v4 init];
  objc_storeStrong(&location, location);
  if (location)
  {
    objc_storeStrong(location + 2, 0);
  }

  v2 = location;
  objc_storeStrong(&location, 0);
  return v2;
}

- (void)startFlowWithNavigationController:(id)a3
{
  v5 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  [(BuddyChildSetupPresenter *)v5 _ensurePresenter];
  v3 = [(BuddyChildSetupPresenter *)v5 presenter];
  [(AISChildSetupPresenter *)v3 startFlowWithViewControllerPresentationHandler:location[0]];

  objc_storeStrong(location, 0);
}

- (void)fetchCutOffAgeForChildAccountWithCompletionHandler:(id)a3
{
  v16 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  [(BuddyChildSetupPresenter *)v16 _ensurePresenter];
  oslog = _BYLoggingFacility();
  v13 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
  {
    v3 = [(BuddyChildSetupPresenter *)v16 presenter];
    v4 = [(AISChildSetupPresenter *)v3 childSetupStore];
    sub_10006AE18(buf, v4);
    _os_log_impl(&_mh_execute_header, oslog, v13, "Will fetch cut off age for child account with child setup store %@", buf, 0xCu);
  }

  objc_storeStrong(&oslog, 0);
  v5 = [(BuddyChildSetupPresenter *)v16 presenter];
  v6 = [(AISChildSetupPresenter *)v5 childSetupStore];
  v7 = _NSConcreteStackBlock;
  v8 = -1073741824;
  v9 = 0;
  v10 = sub_1001DF198;
  v11 = &unk_10032EB40;
  v12 = location[0];
  [v6 fetchMaxAgeForChildAccountWithCompletionHandler:&v7];

  objc_storeStrong(&v12, 0);
  objc_storeStrong(location, 0);
}

- (void)_ensurePresenter
{
  v2 = &_dispatch_main_q;
  dispatch_assert_queue_V2(v2);

  if (!self->_presenter)
  {
    v3 = objc_alloc_init(sub_1001DF4DC());
    presenter = self->_presenter;
    self->_presenter = v3;

    [(AISChildSetupPresenter *)self->_presenter setDelegate:self, a2];
  }
}

- (void)childSetupPresenter:(id)a3 didCompleteWithResult:(id)a4
{
  v8 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v6 = 0;
  objc_storeStrong(&v6, a4);
  v5 = [(BuddyChildSetupPresenter *)v8 delegate];
  [(BuddyChildSetupPresenterDelegate *)v5 didSucceedWithChildSetupPresenter:v8];

  objc_storeStrong(&v6, 0);
  objc_storeStrong(location, 0);
}

- (void)childSetupPresenter:(id)a3 didFail:(id)a4
{
  v8 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v6 = 0;
  objc_storeStrong(&v6, a4);
  v5 = [(BuddyChildSetupPresenter *)v8 delegate];
  [(BuddyChildSetupPresenterDelegate *)v5 childSetupPresenter:v8 didFail:v6];

  objc_storeStrong(&v6, 0);
  objc_storeStrong(location, 0);
}

- (void)setupLocationServicesWithCompletion:(id)a3
{
  v11 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  oslog = _BYLoggingFacility();
  v8 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
  {
    v3 = oslog;
    v4 = v8;
    sub_10006AA68(buf);
    _os_log_impl(&_mh_execute_header, v3, v4, "Child setup presenter requesting location services setup", buf, 2u);
  }

  objc_storeStrong(&oslog, 0);
  v6 = [[BuddyAISFlowTaskInfo alloc] initWithUnderlyingFlowTaskInfo:0];
  v5 = [(BuddyChildSetupPresenter *)v11 delegate];
  [(BuddyChildSetupPresenterDelegate *)v5 setupLocationServicesWithNextTaskInfo:v6 completion:location[0]];

  objc_storeStrong(&v6, 0);
  objc_storeStrong(location, 0);
}

- (void)setupPasscodeWithCompletion:(id)a3
{
  v11 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  oslog = _BYLoggingFacility();
  v8 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
  {
    v3 = oslog;
    v4 = v8;
    sub_10006AA68(buf);
    _os_log_impl(&_mh_execute_header, v3, v4, "Child setup presenter requesting passcode setup", buf, 2u);
  }

  objc_storeStrong(&oslog, 0);
  v6 = [[BuddyAISFlowTaskInfo alloc] initWithUnderlyingFlowTaskInfo:0];
  v5 = [(BuddyChildSetupPresenter *)v11 delegate];
  [(BuddyChildSetupPresenterDelegate *)v5 setupPasscodeWithNextTaskInfo:v6 completion:location[0]];

  objc_storeStrong(&v6, 0);
  objc_storeStrong(location, 0);
}

- (void)setupPasscodeForAccount:(id)a3 nextTaskInfo:(id)a4 completion:(id)a5
{
  v15 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v13 = 0;
  objc_storeStrong(&v13, a4);
  v12 = 0;
  objc_storeStrong(&v12, a5);
  oslog = _BYLoggingFacility();
  v10 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
  {
    sub_10006AE18(buf, v13);
    _os_log_impl(&_mh_execute_header, oslog, v10, "Child setup presenter requesting passcode setup with nextTaskInfo %@", buf, 0xCu);
  }

  objc_storeStrong(&oslog, 0);
  v7 = [BuddyAISFlowTaskInfo alloc];
  v9 = [(BuddyAISFlowTaskInfo *)v7 initWithUnderlyingFlowTaskInfo:v13];
  v8 = [(BuddyChildSetupPresenter *)v15 delegate];
  [(BuddyChildSetupPresenterDelegate *)v8 setupPasscodeWithNextTaskInfo:v9 completion:v12];

  objc_storeStrong(&v9, 0);
  objc_storeStrong(&v12, 0);
  objc_storeStrong(&v13, 0);
  objc_storeStrong(location, 0);
}

- (void)setupLocationServicesWithNextTaskInfo:(id)a3 completion:(id)a4
{
  v12 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v10 = 0;
  objc_storeStrong(&v10, a4);
  oslog = _BYLoggingFacility();
  v8 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
  {
    sub_10006AE18(buf, location[0]);
    _os_log_impl(&_mh_execute_header, oslog, v8, "Child setup presenter requesting location services setup with nextTaskInfo %@", buf, 0xCu);
  }

  objc_storeStrong(&oslog, 0);
  v5 = [BuddyAISFlowTaskInfo alloc];
  v7 = [(BuddyAISFlowTaskInfo *)v5 initWithUnderlyingFlowTaskInfo:location[0]];
  v6 = [(BuddyChildSetupPresenter *)v12 delegate];
  [(BuddyChildSetupPresenterDelegate *)v6 setupLocationServicesWithNextTaskInfo:v7 completion:v10];

  objc_storeStrong(&v7, 0);
  objc_storeStrong(&v10, 0);
  objc_storeStrong(location, 0);
}

- (void)setupPerformAIDASignInWith:(id)a3 completion:(id)a4
{
  v8 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v6 = 0;
  objc_storeStrong(&v6, a4);
  v5 = [(BuddyChildSetupPresenter *)v8 delegate];
  [(BuddyChildSetupPresenterDelegate *)v5 setupPerformAIDASignInWith:location[0] completion:v6];

  objc_storeStrong(&v6, 0);
  objc_storeStrong(location, 0);
}

- (BuddyChildSetupPresenterDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end