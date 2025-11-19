@interface PedestrianARSessionTask
+ (BOOL)isPedestrianARModeSupported;
- (PedestrianARSessionTask)initWithPlatformController:(id)a3;
- (PlatformController)platformController;
- (void)dealloc;
- (void)stateManager:(id)a3 didChangeState:(BOOL)a4;
@end

@implementation PedestrianARSessionTask

+ (BOOL)isPedestrianARModeSupported
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100038600;
  block[3] = &unk_1016611D0;
  block[4] = a1;
  if (qword_10195D0C0 != -1)
  {
    dispatch_once(&qword_10195D0C0, block);
  }

  return byte_10195D0B8;
}

- (PlatformController)platformController
{
  WeakRetained = objc_loadWeakRetained(&self->_platformController);

  return WeakRetained;
}

- (void)stateManager:(id)a3 didChangeState:(BOOL)a4
{
  v4 = a4;
  v6 = [(PedestrianARSessionTask *)self platformController];
  v7 = [v6 chromeViewController];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = v7;
  }

  else
  {
    v8 = 0;
  }

  v9 = v8;

  if (v9)
  {
    v10 = [v9 userLocationView];
    [v10 setIsPedestrianARAvailable:v4];
  }

  else
  {
    v11 = sub_100038720();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      v12 = 134349056;
      v13 = self;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "[%{public}p] chromeVC was not an IOSBased one; ignoring", &v12, 0xCu);
    }
  }
}

- (void)dealloc
{
  v3 = sub_100038720();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    *buf = 134349056;
    v6 = self;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "[%{public}p] Deallocating", buf, 0xCu);
  }

  [(PedestrianARSessionStateManager *)self->_stateManager removeObserver:self];
  v4.receiver = self;
  v4.super_class = PedestrianARSessionTask;
  [(PedestrianARSessionTask *)&v4 dealloc];
}

- (PedestrianARSessionTask)initWithPlatformController:(id)a3
{
  v4 = a3;
  if (!v4)
  {
    v12 = sub_10006D178();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315906;
      v17 = "[PedestrianARSessionTask initWithPlatformController:]";
      v18 = 2080;
      v19 = "PedestrianARSessionTask.m";
      v20 = 1024;
      v21 = 37;
      v22 = 2080;
      v23 = "platformController != nil";
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "%s [%s:%d] Invalid parameter not satisfying: %s", buf, 0x26u);
    }

    if (sub_100E03634())
    {
      v13 = sub_10006D178();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        v14 = +[NSThread callStackSymbols];
        *buf = 138412290;
        v17 = v14;
        _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, "%@", buf, 0xCu);
      }
    }
  }

  v15.receiver = self;
  v15.super_class = PedestrianARSessionTask;
  v5 = [(PedestrianARSessionTask *)&v15 init];
  if (v5)
  {
    v6 = sub_100038720();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      *buf = 134349056;
      v17 = v5;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "[%{public}p] Initializing", buf, 0xCu);
    }

    objc_storeWeak(&v5->_platformController, v4);
    v7 = [PedestrianARSessionStateManager alloc];
    WeakRetained = objc_loadWeakRetained(&v5->_platformController);
    v9 = [(PedestrianARSessionStateManager *)v7 initWithPlatformController:WeakRetained];
    stateManager = v5->_stateManager;
    v5->_stateManager = v9;

    [(PedestrianARSessionStateManager *)v5->_stateManager addObserver:v5];
  }

  return v5;
}

@end