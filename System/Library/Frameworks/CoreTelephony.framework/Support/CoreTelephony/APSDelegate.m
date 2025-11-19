@interface APSDelegate
- (APSDelegate)initWithPushController:(weak_ptr<WebPushControllerImpl>)a3;
- (id).cxx_construct;
- (void)connection:(id)a3 didChangeConnectedStatus:(BOOL)a4;
- (void)connection:(id)a3 didReceiveIncomingMessage:(id)a4;
- (void)connection:(id)a3 didReceivePublicToken:(id)a4;
- (void)connection:(id)a3 didReceiveURLToken:(id)a4 forInfo:(id)a5;
- (void)connection:(id)a3 didReceiveURLTokenError:(id)a4 forInfo:(id)a5;
@end

@implementation APSDelegate

- (APSDelegate)initWithPushController:(weak_ptr<WebPushControllerImpl>)a3
{
  ptr = a3.__ptr_;
  v10.receiver = self;
  v10.super_class = APSDelegate;
  v4 = [(APSDelegate *)&v10 init:a3.__ptr_];
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

- (void)connection:(id)a3 didReceiveIncomingMessage:(id)a4
{
  v6 = a3;
  v7 = a4;
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
        v12 = [v7 topic];
        sub_10000501C(__p, [v12 UTF8String]);

        v13 = [v7 userInfo];
        v14 = v13;
        if (v13)
        {
          v17 = v13;
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

- (void)connection:(id)a3 didChangeConnectedStatus:(BOOL)a4
{
  v9 = a3;
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

- (void)connection:(id)a3 didReceiveURLToken:(id)a4 forInfo:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
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
        v14 = [v10 topic];
        sub_10000501C(v17, [v14 UTF8String]);

        v15 = [v9 tokenURL];
        sub_10000501C(&__p, [v15 UTF8String]);

        WebPushControllerImpl::handleURLTokenUpdate(ptr, v17, &__p);
      }

      sub_100004A34(v12);
    }
  }
}

- (void)connection:(id)a3 didReceiveURLTokenError:(id)a4 forInfo:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
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
        v14 = [v10 topic];
        sub_10000501C(v17, [v14 UTF8String]);

        v15 = [v9 localizedDescription];
        sub_10000501C(&__p, [v15 UTF8String]);

        WebPushControllerImpl::handleURLTokenError(ptr, v17, &__p, [v9 code]);
      }

      sub_100004A34(v12);
    }
  }
}

- (void)connection:(id)a3 didReceivePublicToken:(id)a4
{
  v6 = a3;
  v7 = a4;
  cntrl = self->fController.__cntrl_;
  if (cntrl)
  {
    v9 = std::__shared_weak_count::lock(cntrl);
    if (v9)
    {
      ptr = self->fController.__ptr_;
      if (ptr)
      {
        v11 = [v7 bytes];
        v12 = [v7 bytes];
        v13 = [v7 length];
        memset(__p, 0, sizeof(__p));
        sub_1000DCF88(__p, v11, &v13[v12], &v13[v12] - v11);
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