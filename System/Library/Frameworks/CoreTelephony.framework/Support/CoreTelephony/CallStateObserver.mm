@interface CallStateObserver
- (BOOL)getCallIsActiveState;
- (CallStateObserver)initWithQueue:(queue)a3;
- (void)dealloc;
- (void)dumpState;
- (void)handleCallStatusChangedNotification:(id)a3;
- (void)registerForCallIsActiveNotification;
@end

@implementation CallStateObserver

- (BOOL)getCallIsActiveState
{
  [(CallStateObserver *)self getLogContext];
  v3 = v9;
  ctu::OsLogContext::~OsLogContext(v8);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    fPhoneCallIsActive = self->fPhoneCallIsActive;
    fVideoCallIsActive = self->fVideoCallIsActive;
    v8[0] = 67109376;
    v8[1] = fPhoneCallIsActive;
    LOWORD(v9) = 1024;
    *(&v9 + 2) = fVideoCallIsActive;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Phone call is active: %d\nVideo call is active: %d", v8, 0xEu);
  }

  return self->fPhoneCallIsActive || self->fVideoCallIsActive;
}

- (CallStateObserver)initWithQueue:(queue)a3
{
  v7.receiver = self;
  v7.super_class = CallStateObserver;
  v4 = [(CallStateObserver *)&v7 init];
  v5 = v4;
  if (v4)
  {
    objc_storeStrong(&v4->fQueue.fObj.fObj, *a3.fObj.fObj);
    v5->fPhoneCallIsActive = 0;
    v5->fVideoCallIsActive = 0;
    v5->fHasRegisteredForCallStatusChangedNotification = 0;
  }

  return v5;
}

- (void)registerForCallIsActiveNotification
{
  if (!self->fHasRegisteredForCallStatusChangedNotification)
  {
    self->fHasRegisteredForCallStatusChangedNotification = 1;
    v3 = [TUCallCenter alloc];
    v4 = sub_100032AC8(&self->fQueue.fObj.fObj);
    v5 = [v3 initWithQueue:v4];
    fCallCenter = self->fCallCenter;
    self->fCallCenter = v5;

    [(TUCallCenter *)self->fCallCenter registerWithCompletionHandler:0];
    v7 = +[NSNotificationCenter defaultCenter];
    [v7 addObserver:self selector:"handleCallStatusChangedNotification:" name:TUCallCenterCallStatusChangedNotification object:0];

    v8 = +[NSNotificationCenter defaultCenter];
    [v8 addObserver:self selector:"handleCallStatusChangedNotification:" name:TUCallCenterVideoCallStatusChangedNotification object:0];

    [(CallStateObserver *)self getLogContext];
    v9 = v11;
    ctu::OsLogContext::~OsLogContext(v10);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *v10 = 0;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Registered for TUCallCenterCallStatusChangedNotification", v10, 2u);
    }
  }
}

- (void)handleCallStatusChangedNotification:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    v6 = [v4 name];
    if ([v6 isEqualToString:TUCallCenterCallStatusChangedNotification])
    {
      v7 = [v5 object];
      v8 = v7;
      if (v7)
      {
        v9 = [v7 isActive];
      }

      else
      {
        v9 = 0;
      }

      self->fPhoneCallIsActive = v9;
      [(CallStateObserver *)self getLogContext];
      v12 = v19;
      ctu::OsLogContext::~OsLogContext(&v17);
      if (!os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_20;
      }

      fPhoneCallIsActive = self->fPhoneCallIsActive;
      v17 = 67109120;
      v18 = fPhoneCallIsActive;
      v15 = "Phone call status changed to %d.";
    }

    else
    {
      if (![v6 isEqualToString:TUCallCenterVideoCallStatusChangedNotification])
      {
        [(CallStateObserver *)self getLogContext];
        v12 = v19;
        ctu::OsLogContext::~OsLogContext(&v17);
        if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
        {
          LOWORD(v17) = 0;
          _os_log_error_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "Unexpected notification received; expected call status changed notification.", &v17, 2u);
        }

        v13 = 0;
        goto LABEL_21;
      }

      v10 = [v5 object];
      v8 = v10;
      if (v10)
      {
        v11 = [v10 isActive];
      }

      else
      {
        v11 = 0;
      }

      self->fVideoCallIsActive = v11;
      [(CallStateObserver *)self getLogContext];
      v12 = v19;
      ctu::OsLogContext::~OsLogContext(&v17);
      if (!os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
LABEL_20:
        v13 = v8;
LABEL_21:

        [(CallStateObserver *)self getCallIsActiveState];
        goto LABEL_22;
      }

      fVideoCallIsActive = self->fVideoCallIsActive;
      v17 = 67109120;
      v18 = fVideoCallIsActive;
      v15 = "Video call status changed to %d.";
    }

    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, v15, &v17, 8u);
    goto LABEL_20;
  }

  [(CallStateObserver *)self getLogContext];
  v6 = v19;
  ctu::OsLogContext::~OsLogContext(&v17);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    LOWORD(v17) = 0;
    _os_log_error_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, "handleCallIsActiveStateNotification: has received Nil notification", &v17, 2u);
  }

LABEL_22:
}

- (void)dealloc
{
  v3 = +[NSNotificationCenter defaultCenter];
  [v3 removeObserver:self];

  v4.receiver = self;
  v4.super_class = CallStateObserver;
  [(CallStateObserver *)&v4 dealloc];
}

- (void)dumpState
{
  [(CallStateObserver *)self getLogContext];
  v3 = v9;
  ctu::OsLogContext::~OsLogContext(&v7);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    fPhoneCallIsActive = self->fPhoneCallIsActive;
    v7 = 67109120;
    v8 = fPhoneCallIsActive;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Audio call state: %d", &v7, 8u);
  }

  [(CallStateObserver *)self getLogContext];
  v5 = v9;
  ctu::OsLogContext::~OsLogContext(&v7);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    fVideoCallIsActive = self->fVideoCallIsActive;
    v7 = 67109120;
    v8 = fVideoCallIsActive;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Video call state: %d", &v7, 8u);
  }
}

@end