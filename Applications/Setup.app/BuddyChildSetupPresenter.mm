@interface BuddyChildSetupPresenter
- (BuddyChildSetupPresenter)init;
- (BuddyChildSetupPresenterDelegate)delegate;
- (void)_ensurePresenter;
- (void)childSetupPresenter:(id)presenter didCompleteWithResult:(id)result;
- (void)childSetupPresenter:(id)presenter didFail:(id)fail;
- (void)fetchCutOffAgeForChildAccountWithCompletionHandler:(id)handler;
- (void)setupLocationServicesWithCompletion:(id)completion;
- (void)setupLocationServicesWithNextTaskInfo:(id)info completion:(id)completion;
- (void)setupPasscodeForAccount:(id)account nextTaskInfo:(id)info completion:(id)completion;
- (void)setupPasscodeWithCompletion:(id)completion;
- (void)setupPerformAIDASignInWith:(id)with completion:(id)completion;
- (void)startFlowWithNavigationController:(id)controller;
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

- (void)startFlowWithNavigationController:(id)controller
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, controller);
  [(BuddyChildSetupPresenter *)selfCopy _ensurePresenter];
  presenter = [(BuddyChildSetupPresenter *)selfCopy presenter];
  [(AISChildSetupPresenter *)presenter startFlowWithViewControllerPresentationHandler:location[0]];

  objc_storeStrong(location, 0);
}

- (void)fetchCutOffAgeForChildAccountWithCompletionHandler:(id)handler
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, handler);
  [(BuddyChildSetupPresenter *)selfCopy _ensurePresenter];
  oslog = _BYLoggingFacility();
  v13 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
  {
    presenter = [(BuddyChildSetupPresenter *)selfCopy presenter];
    childSetupStore = [(AISChildSetupPresenter *)presenter childSetupStore];
    sub_10006AE18(buf, childSetupStore);
    _os_log_impl(&_mh_execute_header, oslog, v13, "Will fetch cut off age for child account with child setup store %@", buf, 0xCu);
  }

  objc_storeStrong(&oslog, 0);
  presenter2 = [(BuddyChildSetupPresenter *)selfCopy presenter];
  childSetupStore2 = [(AISChildSetupPresenter *)presenter2 childSetupStore];
  v7 = _NSConcreteStackBlock;
  v8 = -1073741824;
  v9 = 0;
  v10 = sub_1001DF198;
  v11 = &unk_10032EB40;
  v12 = location[0];
  [childSetupStore2 fetchMaxAgeForChildAccountWithCompletionHandler:&v7];

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

- (void)childSetupPresenter:(id)presenter didCompleteWithResult:(id)result
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, presenter);
  v6 = 0;
  objc_storeStrong(&v6, result);
  delegate = [(BuddyChildSetupPresenter *)selfCopy delegate];
  [(BuddyChildSetupPresenterDelegate *)delegate didSucceedWithChildSetupPresenter:selfCopy];

  objc_storeStrong(&v6, 0);
  objc_storeStrong(location, 0);
}

- (void)childSetupPresenter:(id)presenter didFail:(id)fail
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, presenter);
  v6 = 0;
  objc_storeStrong(&v6, fail);
  delegate = [(BuddyChildSetupPresenter *)selfCopy delegate];
  [(BuddyChildSetupPresenterDelegate *)delegate childSetupPresenter:selfCopy didFail:v6];

  objc_storeStrong(&v6, 0);
  objc_storeStrong(location, 0);
}

- (void)setupLocationServicesWithCompletion:(id)completion
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, completion);
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
  delegate = [(BuddyChildSetupPresenter *)selfCopy delegate];
  [(BuddyChildSetupPresenterDelegate *)delegate setupLocationServicesWithNextTaskInfo:v6 completion:location[0]];

  objc_storeStrong(&v6, 0);
  objc_storeStrong(location, 0);
}

- (void)setupPasscodeWithCompletion:(id)completion
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, completion);
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
  delegate = [(BuddyChildSetupPresenter *)selfCopy delegate];
  [(BuddyChildSetupPresenterDelegate *)delegate setupPasscodeWithNextTaskInfo:v6 completion:location[0]];

  objc_storeStrong(&v6, 0);
  objc_storeStrong(location, 0);
}

- (void)setupPasscodeForAccount:(id)account nextTaskInfo:(id)info completion:(id)completion
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, account);
  v13 = 0;
  objc_storeStrong(&v13, info);
  v12 = 0;
  objc_storeStrong(&v12, completion);
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
  delegate = [(BuddyChildSetupPresenter *)selfCopy delegate];
  [(BuddyChildSetupPresenterDelegate *)delegate setupPasscodeWithNextTaskInfo:v9 completion:v12];

  objc_storeStrong(&v9, 0);
  objc_storeStrong(&v12, 0);
  objc_storeStrong(&v13, 0);
  objc_storeStrong(location, 0);
}

- (void)setupLocationServicesWithNextTaskInfo:(id)info completion:(id)completion
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, info);
  v10 = 0;
  objc_storeStrong(&v10, completion);
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
  delegate = [(BuddyChildSetupPresenter *)selfCopy delegate];
  [(BuddyChildSetupPresenterDelegate *)delegate setupLocationServicesWithNextTaskInfo:v7 completion:v10];

  objc_storeStrong(&v7, 0);
  objc_storeStrong(&v10, 0);
  objc_storeStrong(location, 0);
}

- (void)setupPerformAIDASignInWith:(id)with completion:(id)completion
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, with);
  v6 = 0;
  objc_storeStrong(&v6, completion);
  delegate = [(BuddyChildSetupPresenter *)selfCopy delegate];
  [(BuddyChildSetupPresenterDelegate *)delegate setupPerformAIDASignInWith:location[0] completion:v6];

  objc_storeStrong(&v6, 0);
  objc_storeStrong(location, 0);
}

- (BuddyChildSetupPresenterDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end