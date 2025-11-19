@interface EduModeNotifier
- (EduModeNotifier)initWithRegistry:(shared_ptr<const Registry>)a3 andQueue:(queue)a4 andLogger:(void *)a5;
- (id).cxx_construct;
- (void)dumpState;
- (void)handleiCloudAccountEventSync:(int)a3;
- (void)registerForNotifications;
- (void)setup;
- (void)updateEDUModeSync;
@end

@implementation EduModeNotifier

- (EduModeNotifier)initWithRegistry:(shared_ptr<const Registry>)a3 andQueue:(queue)a4 andLogger:(void *)a5
{
  cntrl = a3.__cntrl_;
  ptr = a3.__ptr_;
  v24.receiver = self;
  v24.super_class = EduModeNotifier;
  v8 = [(EduModeNotifier *)&v24 init:a3.__ptr_];
  v9 = v8;
  if (v8)
  {
    v11 = *ptr;
    v10 = *(ptr + 1);
    if (v10)
    {
      atomic_fetch_add_explicit((v10 + 8), 1uLL, memory_order_relaxed);
    }

    v12 = v8->fRegistry.__cntrl_;
    v9->fRegistry.__ptr_ = v11;
    v9->fRegistry.__cntrl_ = v10;
    if (v12)
    {
      sub_100004A34(v12);
    }

    v13 = *cntrl;
    if (v13)
    {
      dispatch_retain(v13);
    }

    fObj = v9->fQueue.fObj.fObj;
    v9->fQueue.fObj.fObj = v13;
    if (fObj)
    {
      dispatch_release(fObj);
    }

    v9->fLogger = a4.fObj.fObj;
    sub_10000501C(&__p, "EDUModeNotifier");
    v15 = v9->fQueue.fObj.fObj;
    v20 = v15;
    if (v15)
    {
      dispatch_retain(v15);
    }

    ctu::RestModule::RestModule();
    v16 = v23;
    v23 = 0;
    v17 = v9->fRestModule.fState.__cntrl_;
    v9->fRestModule = v16;
    if (v17)
    {
      sub_100004A34(v17);
      if (v23.fState.__cntrl_)
      {
        sub_100004A34(v23.fState.__cntrl_);
      }
    }

    if (v20)
    {
      dispatch_release(v20);
    }

    if (v22 < 0)
    {
      operator delete(__p);
    }

    v9->fEduModeResource.fValue = 0;
    f = v9->fEduModeResource.fSender.__f_.__f_;
    if (f)
    {
      (*(*f + 48))(f);
    }
  }

  return v9;
}

- (void)setup
{
  Registry::createRestModuleOneTimeUseConnection(&v4, self->fRegistry.__ptr_);
  ctu::RestModule::connect();
  if (v5)
  {
    sub_100004A34(v5);
  }

  v6[0] = off_101F5C070;
  v6[1] = &self->fRestModule;
  v6[3] = v6;
  sub_100300158(v6, self->fEduModeResource.fSender.__f_.__buf_.__data);
  sub_1002FED80(v6);
  f = self->fEduModeResource.fSender.__f_.__f_;
  if (f)
  {
    (*(*f + 48))(f, &self->fEduModeResource.fValue);
  }

  [(EduModeNotifier *)self registerForNotifications];
}

- (void)registerForNotifications
{
  objc_initWeak(&location, self);
  fObj = self->fQueue.fObj.fObj;
  v4[1] = fObj;
  if (fObj)
  {
    dispatch_retain(fObj);
  }

  objc_copyWeak(v4, &location);
  sub_100BE49DC();
}

- (void)handleiCloudAccountEventSync:(int)a3
{
  if (a3 == 2)
  {
    [(EduModeNotifier *)self updateEDUModeSync];
  }
}

- (void)updateEDUModeSync
{
  v3 = (*(*self->fICloudStateMonitor.__ptr_ + 8))(self->fICloudStateMonitor.__ptr_, a2);
  v4 = *self->fLogger;
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 136315138;
    v8 = CSIBOOLAsString(v3);
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#I Device is in edu mode: %s", &v7, 0xCu);
  }

  self->fEduModeResource.fValue = v3;
  p_fValue = &self->fEduModeResource.fValue;
  v6 = *(p_fValue - 1);
  if (v6)
  {
    (*(*v6 + 48))(v6, p_fValue);
  }
}

- (void)dumpState
{
  v3 = *self->fLogger;
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = CSIBOOLAsString(self->fEduModeResource.fValue);
    v5 = 136315138;
    v6 = v4;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "#I Device is in edu mode: %s", &v5, 0xCu);
  }
}

- (id).cxx_construct
{
  self->fICloudStateMonitor.__ptr_ = 0;
  self->fICloudStateMonitor.__cntrl_ = 0;
  self->fEduModeResource.fSender.__f_.__f_ = 0;
  self->fEduModeResource.fValue = 0;
  ctu::RestModule::RestModule(&self->fRestModule);
  self->fRegistry.__ptr_ = 0;
  self->fRegistry.__cntrl_ = 0;
  self->fQueue.fObj.fObj = 0;
  return self;
}

@end