@interface APSDelegate
- (APSDelegate)initWithPushController:(weak_ptr<WebPushControllerImpl>)controller;
- (id).cxx_construct;
- (void)connection:(id)connection didChangeConnectedStatus:(BOOL)status;
- (void)connection:(id)connection didReceiveIncomingMessage:(id)message;
- (void)connection:(id)connection didReceivePublicToken:(id)token;
- (void)connection:(id)connection didReceiveURLToken:(id)token forInfo:(id)info;
- (void)connection:(id)connection didReceiveURLTokenError:(id)error forInfo:(id)info;
@end

@implementation APSDelegate

- (APSDelegate)initWithPushController:(weak_ptr<WebPushControllerImpl>)controller
{
  ptr = controller.__ptr_;
  v10.receiver = self;
  v10.super_class = APSDelegate;
  v4 = [(APSDelegate *)&v10 init:controller.__ptr_];
  v5 = v4;
  if (v4)
  {
    v7 = *ptr;
    v6 = *(ptr + 1);
    if (v6)
    {
      atomic_fetch_add_explicit((v6 + 16), 1uLL, memory_order_relaxed);
    }

    cntrl = v4->fController.__cntrl_;
    v5->fController.__ptr_ = v7;
    v5->fController.__cntrl_ = v6;
    if (cntrl)
    {
      std::__shared_weak_count::__release_weak(cntrl);
    }
  }

  return v5;
}

- (void)connection:(id)connection didReceiveIncomingMessage:(id)message
{
  connectionCopy = connection;
  messageCopy = message;
  cntrl = self->fController.__cntrl_;
  if (cntrl)
  {
    v9 = std::__shared_weak_count::lock(cntrl);
    if (v9)
    {
      v10 = v9;
      ptr = self->fController.__ptr_;
      if (ptr)
      {
        __p[0] = 0;
        __p[1] = 0;
        v20 = 0;
        topic = [messageCopy topic];
        sub_10000501C(__p, [topic UTF8String]);

        userInfo = [messageCopy userInfo];
        v14 = userInfo;
        if (userInfo)
        {
          v17 = userInfo;
          sub_100138C38(&v18, &v17);
          (*(*ptr + 48))(ptr, __p, &v18);
          v15 = &v18;
        }

        else
        {
          v16 = 0;
          (*(*ptr + 48))(ptr, __p, &v16);
          v15 = &v16;
        }

        sub_10001021C(v15);

        if (SHIBYTE(v20) < 0)
        {
          operator delete(__p[0]);
        }
      }

      sub_100004A34(v10);
    }
  }
}

- (void)connection:(id)connection didChangeConnectedStatus:(BOOL)status
{
  connectionCopy = connection;
  cntrl = self->fController.__cntrl_;
  if (cntrl)
  {
    v6 = std::__shared_weak_count::lock(cntrl);
    if (v6)
    {
      v7 = v6;
      ptr = self->fController.__ptr_;
      if (ptr)
      {
        WebPushControllerImpl::handleWebPushConnected(ptr);
      }

      sub_100004A34(v7);
    }
  }
}

- (void)connection:(id)connection didReceiveURLToken:(id)token forInfo:(id)info
{
  connectionCopy = connection;
  tokenCopy = token;
  infoCopy = info;
  cntrl = self->fController.__cntrl_;
  if (cntrl)
  {
    v12 = std::__shared_weak_count::lock(cntrl);
    if (v12)
    {
      ptr = self->fController.__ptr_;
      if (ptr)
      {
        memset(v17, 0, sizeof(v17));
        topic = [infoCopy topic];
        sub_10000501C(v17, [topic UTF8String]);

        tokenURL = [tokenCopy tokenURL];
        sub_10000501C(&__p, [tokenURL UTF8String]);

        WebPushControllerImpl::handleURLTokenUpdate(ptr, v17, &__p);
      }

      sub_100004A34(v12);
    }
  }
}

- (void)connection:(id)connection didReceiveURLTokenError:(id)error forInfo:(id)info
{
  connectionCopy = connection;
  errorCopy = error;
  infoCopy = info;
  cntrl = self->fController.__cntrl_;
  if (cntrl)
  {
    v12 = std::__shared_weak_count::lock(cntrl);
    if (v12)
    {
      ptr = self->fController.__ptr_;
      if (ptr)
      {
        memset(v17, 0, sizeof(v17));
        topic = [infoCopy topic];
        sub_10000501C(v17, [topic UTF8String]);

        localizedDescription = [errorCopy localizedDescription];
        sub_10000501C(&__p, [localizedDescription UTF8String]);

        WebPushControllerImpl::handleURLTokenError(ptr, v17, &__p, [errorCopy code]);
      }

      sub_100004A34(v12);
    }
  }
}

- (void)connection:(id)connection didReceivePublicToken:(id)token
{
  connectionCopy = connection;
  tokenCopy = token;
  cntrl = self->fController.__cntrl_;
  if (cntrl)
  {
    v9 = std::__shared_weak_count::lock(cntrl);
    if (v9)
    {
      ptr = self->fController.__ptr_;
      if (ptr)
      {
        bytes = [tokenCopy bytes];
        bytes2 = [tokenCopy bytes];
        v13 = [tokenCopy length];
        memset(__p, 0, sizeof(__p));
        sub_1000DCF88(__p, bytes, &v13[bytes2], &v13[bytes2] - bytes);
        WebPushControllerImpl::handlePublicTokenUpdate(ptr);
      }

      sub_100004A34(v9);
    }
  }
}

- (id).cxx_construct
{
  *(self + 1) = 0;
  *(self + 2) = 0;
  return self;
}

@end