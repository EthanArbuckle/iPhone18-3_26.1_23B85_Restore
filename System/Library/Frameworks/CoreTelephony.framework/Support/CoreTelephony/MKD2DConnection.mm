@interface MKD2DConnection
- (MKD2DConnection)initWithRegistry:(shared_ptr<const Registry>)registry queue:(queue)queue;
- (id).cxx_construct;
- (void)onCodeError;
- (void)onCodeReady;
- (void)onConnectFail:(int64_t)fail;
- (void)onConnected;
- (void)onDisconnected;
- (void)onReceived:(id)received;
- (void)onRequestTimeout;
- (void)setDelegate:(shared_ptr<D2DConnectionDelegate>)delegate forTarget:(BOOL)target completion:(id)completion;
- (weak_ptr<D2DConnectionDelegate>)weakDelegate;
@end

@implementation MKD2DConnection

- (MKD2DConnection)initWithRegistry:(shared_ptr<const Registry>)registry queue:(queue)queue
{
  v5 = *registry.__cntrl_;
  object = v5;
  if (v5)
  {
    dispatch_retain(v5);
  }

  ctu::OsLogContext::OsLogContext(v9, kCtLoggingSystemName, "x.conn");
  v8.receiver = self;
  v8.super_class = MKD2DConnection;
  v6 = [(MKD2DConnection *)&v8 initWithQueue:&object logContext:v9];
  ctu::OsLogContext::~OsLogContext(v9);
  if (object)
  {
    dispatch_release(object);
  }

  return v6;
}

- (void)setDelegate:(shared_ptr<D2DConnectionDelegate>)delegate forTarget:(BOOL)target completion:(id)completion
{
  var1 = delegate.var1;
  var0 = delegate.var0;
  targetCopy = target;
  v10 = *var0;
  v9 = *(var0 + 1);
  if (v9)
  {
    atomic_fetch_add_explicit((v9 + 16), 1uLL, memory_order_relaxed);
  }

  cntrl = self->_weakDelegate.__cntrl_;
  self->_weakDelegate.__ptr_ = v10;
  self->_weakDelegate.__cntrl_ = v9;
  if (cntrl)
  {
    std::__shared_weak_count::__release_weak(cntrl);
  }

  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_1002D07C4;
  v13[3] = &unk_101E3BA80;
  v13[4] = self;
  v14 = targetCopy;
  v12 = targetCopy;
  [ObjcMKD2DConnection create:var1 delegate:self completion:v13];
}

- (void)onConnected
{
  p_weakDelegate = &self->_weakDelegate;
  cntrl = self->_weakDelegate.__cntrl_;
  if (cntrl)
  {
    v5 = std::__shared_weak_count::lock(cntrl);
    if (v5)
    {
      v6 = v5;
      ptr = p_weakDelegate->__ptr_;
      if (p_weakDelegate->__ptr_)
      {
        v8[0] = _NSConcreteStackBlock;
        v8[1] = 3321888768;
        v8[2] = sub_1002D0944;
        v8[3] = &unk_101E3BAA0;
        v8[4] = ptr;
        v9 = v5;
        atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
        [(MKD2DConnection *)self executeBlock:v8];
        if (v9)
        {
          sub_100004A34(v9);
        }
      }

      sub_100004A34(v6);
    }
  }
}

- (void)onDisconnected
{
  p_weakDelegate = &self->_weakDelegate;
  cntrl = self->_weakDelegate.__cntrl_;
  if (cntrl)
  {
    v5 = std::__shared_weak_count::lock(cntrl);
    if (v5)
    {
      v6 = v5;
      ptr = p_weakDelegate->__ptr_;
      if (p_weakDelegate->__ptr_)
      {
        v8[0] = _NSConcreteStackBlock;
        v8[1] = 3321888768;
        v8[2] = sub_1002D0A88;
        v8[3] = &unk_101E3BAA0;
        v8[4] = ptr;
        v9 = v5;
        atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
        [(MKD2DConnection *)self executeBlock:v8];
        if (v9)
        {
          sub_100004A34(v9);
        }
      }

      sub_100004A34(v6);
    }
  }
}

- (void)onConnectFail:(int64_t)fail
{
  p_weakDelegate = &self->_weakDelegate;
  cntrl = self->_weakDelegate.__cntrl_;
  if (cntrl)
  {
    v7 = std::__shared_weak_count::lock(cntrl);
    if (v7)
    {
      v8 = v7;
      ptr = p_weakDelegate->__ptr_;
      if (p_weakDelegate->__ptr_)
      {
        v10[0] = _NSConcreteStackBlock;
        v10[1] = 3321888768;
        v10[2] = sub_1002D0BA8;
        v10[3] = &unk_101E3BAD0;
        v10[4] = ptr;
        v11 = v7;
        atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
        failCopy = fail;
        [(MKD2DConnection *)self executeBlock:v10];
        if (v11)
        {
          sub_100004A34(v11);
        }
      }

      sub_100004A34(v8);
    }
  }
}

- (void)onReceived:(id)received
{
  receivedCopy = received;
  p_weakDelegate = &self->_weakDelegate;
  cntrl = self->_weakDelegate.__cntrl_;
  if (cntrl)
  {
    v7 = std::__shared_weak_count::lock(cntrl);
    if (v7)
    {
      v8 = v7;
      ptr = p_weakDelegate->__ptr_;
      if (p_weakDelegate->__ptr_)
      {
        v10[0] = _NSConcreteStackBlock;
        v10[1] = 3321888768;
        v10[2] = sub_1002D0CF0;
        v10[3] = &unk_101E3BB08;
        v12 = ptr;
        v13 = v7;
        atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
        v11 = receivedCopy;
        [(MKD2DConnection *)self executeBlock:v10];

        if (v13)
        {
          sub_100004A34(v13);
        }
      }

      sub_100004A34(v8);
    }
  }
}

- (void)onCodeError
{
  p_weakDelegate = &self->_weakDelegate;
  cntrl = self->_weakDelegate.__cntrl_;
  if (cntrl)
  {
    v5 = std::__shared_weak_count::lock(cntrl);
    if (v5)
    {
      v6 = v5;
      ptr = p_weakDelegate->__ptr_;
      if (p_weakDelegate->__ptr_)
      {
        v8[0] = _NSConcreteStackBlock;
        v8[1] = 3321888768;
        v8[2] = sub_1002D0E34;
        v8[3] = &unk_101E3BAA0;
        v8[4] = ptr;
        v9 = v5;
        atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
        [(MKD2DConnection *)self executeBlock:v8];
        if (v9)
        {
          sub_100004A34(v9);
        }
      }

      sub_100004A34(v6);
    }
  }
}

- (void)onCodeReady
{
  p_weakDelegate = &self->_weakDelegate;
  cntrl = self->_weakDelegate.__cntrl_;
  if (cntrl)
  {
    v5 = std::__shared_weak_count::lock(cntrl);
    if (v5)
    {
      v6 = v5;
      ptr = p_weakDelegate->__ptr_;
      if (p_weakDelegate->__ptr_)
      {
        v8[0] = _NSConcreteStackBlock;
        v8[1] = 3321888768;
        v8[2] = sub_1002D0F48;
        v8[3] = &unk_101E3BAA0;
        v8[4] = ptr;
        v9 = v5;
        atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
        [(MKD2DConnection *)self executeBlock:v8];
        if (v9)
        {
          sub_100004A34(v9);
        }
      }

      sub_100004A34(v6);
    }
  }
}

- (void)onRequestTimeout
{
  p_weakDelegate = &self->_weakDelegate;
  cntrl = self->_weakDelegate.__cntrl_;
  if (cntrl)
  {
    v5 = std::__shared_weak_count::lock(cntrl);
    if (v5)
    {
      v6 = v5;
      ptr = p_weakDelegate->__ptr_;
      if (p_weakDelegate->__ptr_)
      {
        v8[0] = _NSConcreteStackBlock;
        v8[1] = 3321888768;
        v8[2] = sub_1002D105C;
        v8[3] = &unk_101E3BAA0;
        v8[4] = ptr;
        v9 = v5;
        atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
        [(MKD2DConnection *)self executeBlock:v8];
        if (v9)
        {
          sub_100004A34(v9);
        }
      }

      sub_100004A34(v6);
    }
  }
}

- (weak_ptr<D2DConnectionDelegate>)weakDelegate
{
  objc_copyCppObjectAtomic(v2, &self->_weakDelegate, sub_1002D10A8);
  result.__cntrl_ = v4;
  result.__ptr_ = v3;
  return result;
}

- (id).cxx_construct
{
  *(self + 3) = 0;
  *(self + 4) = 0;
  return self;
}

@end