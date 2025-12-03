@interface NetworkReachability
- (NetworkReachability)initWithRegistry:(shared_ptr<const Registry>)registry andQueue:(queue)queue andLogger:(void *)logger;
- (id).cxx_construct;
- (void)bootstrap;
- (void)dealloc;
- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context;
@end

@implementation NetworkReachability

- (NetworkReachability)initWithRegistry:(shared_ptr<const Registry>)registry andQueue:(queue)queue andLogger:(void *)logger
{
  cntrl = registry.__cntrl_;
  ptr = registry.__ptr_;
  v27.receiver = self;
  v27.super_class = NetworkReachability;
  v8 = [(NetworkReachability *)&v27 init:registry.__ptr_];
  if (v8)
  {
    v9 = *cntrl;
    if (v9)
    {
      dispatch_retain(v9);
    }

    v10 = *(v8 + 23);
    *(v8 + 23) = v9;
    if (v10)
    {
      dispatch_release(v10);
    }

    v12 = *ptr;
    v11 = *(ptr + 1);
    if (v11)
    {
      atomic_fetch_add_explicit((v11 + 8), 1uLL, memory_order_relaxed);
    }

    v13 = *(v8 + 26);
    *(v8 + 25) = v12;
    *(v8 + 26) = v11;
    if (v13)
    {
      sub_100004A34(v13);
    }

    v14 = +[NWPathEvaluator sharedDefaultEvaluator];
    v15 = *(v8 + 24);
    *(v8 + 24) = v14;

    sub_10000501C(&__p, "NetworkReachability");
    v16 = *(v8 + 23);
    v23 = v16;
    if (v16)
    {
      dispatch_retain(v16);
    }

    ctu::RestModule::RestModule();
    v17 = v26;
    v26 = 0uLL;
    v18 = *(v8 + 22);
    *(v8 + 168) = v17;
    if (v18)
    {
      sub_100004A34(v18);
      if (*(&v26 + 1))
      {
        sub_100004A34(*(&v26 + 1));
      }
    }

    if (v23)
    {
      dispatch_release(v23);
    }

    if (v25 < 0)
    {
      operator delete(__p);
    }

    v8[80] = 0;
    v19 = *(v8 + 9);
    if (v19)
    {
      (*(*v19 + 48))(v19);
    }

    v8[40] = 0;
    v20 = *(v8 + 4);
    if (v20)
    {
      (*(*v20 + 48))(v20);
    }

    v8[160] = 0;
    v21 = *(v8 + 19);
    if (v21)
    {
      (*(*v21 + 48))(v21);
    }

    *(v8 + 27) = queue;
  }

  return v8;
}

- (void)bootstrap
{
  Registry::createRestModuleOneTimeUseConnection(&v16, self->fRegistry.__ptr_);
  p_fRestModule = &self->fRestModule;
  ctu::RestModule::connect();
  if (v17)
  {
    sub_100004A34(v17);
  }

  p_fInternetReachabilityInterface = &self->fInternetReachabilityInterface;
  v18 = off_101F11988;
  v19 = &self->fRestModule;
  v20 = &v18;
  if (&v18 != &self->fInternetReachabilityInterface)
  {
    f = self->fInternetReachabilityInterface.fSender.__f_.__f_;
    if (f == p_fInternetReachabilityInterface)
    {
      v22 = &self->fRestModule;
      v23 = 0;
      v20 = 0;
      v21 = off_101F11988;
      ((*f)[3])(f, &v18);
      (*(*self->fInternetReachabilityInterface.fSender.__f_.__f_ + 32))(self->fInternetReachabilityInterface.fSender.__f_.__f_);
      self->fInternetReachabilityInterface.fSender.__f_.__f_ = 0;
      v20 = &v18;
      (v21[3])(&v21, &self->fInternetReachabilityInterface);
      (v21[4])(&v21);
    }

    else
    {
      *self->fInternetReachabilityInterface.fSender.__f_.__buf_.__data = off_101F11988;
      *&self->fInternetReachabilityInterface.fSender.__f_.__buf_.__data[8] = p_fRestModule;
      v20 = f;
    }

    self->fInternetReachabilityInterface.fSender.__f_.__f_ = p_fInternetReachabilityInterface;
  }

  sub_101150804(&v18);
  v6 = self->fInternetReachabilityInterface.fSender.__f_.__f_;
  if (v6)
  {
    (*(*v6 + 48))(v6, &self->fInternetReachabilityInterface.fValue);
  }

  p_fInternetStatus = &self->fInternetStatus;
  v18 = off_101F11A18;
  v19 = &self->fRestModule;
  v20 = &v18;
  if (&v18 != &self->fInternetStatus)
  {
    v8 = self->fInternetStatus.fSender.__f_.__f_;
    if (v8 == p_fInternetStatus)
    {
      v22 = &self->fRestModule;
      v23 = 0;
      v20 = 0;
      v21 = off_101F11A18;
      ((*v8)[3])(v8, &v18);
      (*(*self->fInternetStatus.fSender.__f_.__f_ + 32))(self->fInternetStatus.fSender.__f_.__f_);
      self->fInternetStatus.fSender.__f_.__f_ = 0;
      v20 = &v18;
      (v21[3])(&v21, &self->fInternetStatus);
      (v21[4])(&v21);
    }

    else
    {
      *self->fInternetStatus.fSender.__f_.__buf_.__data = off_101F11A18;
      *&self->fInternetStatus.fSender.__f_.__buf_.__data[8] = p_fRestModule;
      v20 = v8;
    }

    self->fInternetStatus.fSender.__f_.__f_ = p_fInternetStatus;
  }

  sub_101150784(&v18);
  v9 = self->fInternetStatus.fSender.__f_.__f_;
  if (v9)
  {
    (*(*v9 + 48))(v9, &self->fInternetStatus.fValue);
  }

  p_fWifiStatus = &self->fWifiStatus;
  v18 = off_101F11AA8;
  v19 = &self->fRestModule;
  v20 = &v18;
  if (&v18 != &self->fWifiStatus)
  {
    v11 = self->fWifiStatus.fSender.__f_.__f_;
    if (v11 == p_fWifiStatus)
    {
      v22 = &self->fRestModule;
      v23 = 0;
      v20 = 0;
      v21 = off_101F11AA8;
      ((*v11)[3])(v11, &v18);
      (*(*self->fWifiStatus.fSender.__f_.__f_ + 32))(self->fWifiStatus.fSender.__f_.__f_);
      self->fWifiStatus.fSender.__f_.__f_ = 0;
      v20 = &v18;
      (v21[3])(&v21, &self->fWifiStatus);
      (v21[4])(&v21);
    }

    else
    {
      *self->fWifiStatus.fSender.__f_.__buf_.__data = off_101F11AA8;
      *&self->fWifiStatus.fSender.__f_.__buf_.__data[8] = p_fRestModule;
      v20 = v11;
    }

    self->fWifiStatus.fSender.__f_.__f_ = p_fWifiStatus;
  }

  sub_101150704(&v18);
  v12 = self->fWifiStatus.fSender.__f_.__f_;
  if (v12)
  {
    (*(*v12 + 48))(v12, &self->fWifiStatus.fValue);
  }

  p_fEthernetStatus = &self->fEthernetStatus;
  v18 = off_101F11B38;
  v19 = &self->fRestModule;
  v20 = &v18;
  if (&v18 != &self->fEthernetStatus)
  {
    v14 = self->fEthernetStatus.fSender.__f_.__f_;
    if (v14 == p_fEthernetStatus)
    {
      v22 = &self->fRestModule;
      v23 = 0;
      v20 = 0;
      v21 = off_101F11B38;
      ((*v14)[3])(v14, &v18);
      (*(*self->fEthernetStatus.fSender.__f_.__f_ + 32))(self->fEthernetStatus.fSender.__f_.__f_);
      self->fEthernetStatus.fSender.__f_.__f_ = 0;
      v20 = &v18;
      (v21[3])(&v21, &self->fEthernetStatus);
      (v21[4])(&v21);
    }

    else
    {
      *self->fEthernetStatus.fSender.__f_.__buf_.__data = off_101F11B38;
      *&self->fEthernetStatus.fSender.__f_.__buf_.__data[8] = p_fRestModule;
      v20 = v14;
    }

    self->fEthernetStatus.fSender.__f_.__f_ = p_fEthernetStatus;
  }

  sub_101150684(&v18);
  v15 = self->fEthernetStatus.fSender.__f_.__f_;
  if (v15)
  {
    (*(*v15 + 48))(v15, &self->fEthernetStatus.fValue);
  }

  [self->fNWPathEvaluator addObserver:self forKeyPath:@"path" options:5 context:0];
}

- (void)dealloc
{
  fNWPathEvaluator = self->fNWPathEvaluator;
  if (fNWPathEvaluator)
  {
    [fNWPathEvaluator removeObserver:self forKeyPath:@"path"];
  }

  v4.receiver = self;
  v4.super_class = NetworkReachability;
  [(NetworkReachability *)&v4 dealloc];
}

- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context
{
  objc_initWeak(&location, self);
  fObj = self->fQueue.fObj.fObj;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_1011501A0;
  v8[3] = &unk_101F11958;
  objc_copyWeak(&v9, &location);
  dispatch_async(fObj, v8);
  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
}

- (id).cxx_construct
{
  self->fInternetReachabilityInterface.fSender.__f_.__f_ = 0;
  self->fInternetReachabilityInterface.fValue = 0;
  self->fInternetStatus.fSender.__f_.__f_ = 0;
  self->fInternetStatus.fValue = 0;
  self->fWifiStatus.fSender.__f_.__f_ = 0;
  self->fWifiStatus.fValue = 0;
  self->fEthernetStatus.fSender.__f_.__f_ = 0;
  self->fEthernetStatus.fValue = 0;
  ctu::RestModule::RestModule(&self->fRestModule);
  self->fQueue.fObj.fObj = 0;
  self->fRegistry.__ptr_ = 0;
  self->fRegistry.__cntrl_ = 0;
  return self;
}

@end