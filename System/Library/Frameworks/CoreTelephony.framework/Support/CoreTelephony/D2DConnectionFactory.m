@interface D2DConnectionFactory
+ (id)sharedInstance;
- (BOOL)getValue:(id)a3;
- (BOOL)useFakeConnection:(shared_ptr<const Registry>)a3;
- (id)createConnectionWithRegistry:(shared_ptr<const Registry>)a3 queue:(queue)a4;
@end

@implementation D2DConnectionFactory

+ (id)sharedInstance
{
  if ((atomic_load_explicit(&qword_101FBA810, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_101FBA810))
  {
    qword_101FBA808 = objc_opt_new();
    __cxa_guard_release(&qword_101FBA810);
  }

  v2 = qword_101FBA808;

  return v2;
}

- (BOOL)getValue:(id)a3
{
  v3 = a3;
  CCPreferences::create(cf, v3);
  v4 = cf[0];
  v5 = cf[1];
  cf[0] = 0;
  (*(*v4 + 40))(cf);
  v6 = cf[0];
  if (cf[0])
  {
    v11 = 1;
    v7 = CFGetTypeID(cf[0]);
    if (v7 == CFBooleanGetTypeID())
    {
      ctu::cf::assign(&v11, v6, v8);
      LOBYTE(v6) = v11;
    }

    else
    {
      LOBYTE(v6) = 1;
    }
  }

  sub_10000A1EC(cf);
  if (v5)
  {
    sub_100004A34(v5);
  }

  return v6 & 1;
}

- (BOOL)useFakeConnection:(shared_ptr<const Registry>)a3
{
  ServiceMap = Registry::getServiceMap(*a3.__ptr_);
  v5 = ServiceMap;
  if ((v6 & 0x8000000000000000) != 0)
  {
    v7 = (v6 & 0x7FFFFFFFFFFFFFFFLL);
    v8 = 5381;
    do
    {
      v6 = v8;
      v9 = *v7++;
      v8 = (33 * v8) ^ v9;
    }

    while (v9);
  }

  std::mutex::lock(ServiceMap);
  v16 = v6;
  v10 = sub_100009510(&v5[1].__m_.__sig, &v16);
  if (v10)
  {
    v12 = v10[3];
    v11 = v10[4];
    if (v11)
    {
      atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
      std::mutex::unlock(v5);
      atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
      sub_100004A34(v11);
      v13 = 0;
      goto LABEL_9;
    }
  }

  else
  {
    v12 = 0;
  }

  std::mutex::unlock(v5);
  v11 = 0;
  v13 = 1;
LABEL_9:
  v14 = (*(*v12 + 16))(v12);
  if ((v13 & 1) == 0)
  {
    sub_100004A34(v11);
  }

  if (v14)
  {
    return [(D2DConnectionFactory *)self getValue:@"useFakeD2DConnection"];
  }

  else
  {
    return 0;
  }
}

- (id)createConnectionWithRegistry:(shared_ptr<const Registry>)a3 queue:(queue)a4
{
  connection = self->_connection;
  if (connection)
  {
    v5 = connection;
    goto LABEL_16;
  }

  cntrl = a3.__cntrl_;
  ptr = a3.__ptr_;
  v8 = *(a3.__ptr_ + 1);
  v24 = *a3.__ptr_;
  v25 = v8;
  if (v8)
  {
    atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v9 = [(D2DConnectionFactory *)self useFakeConnection:&v24, a3.__cntrl_, a4.fObj.fObj];
  if (v25)
  {
    sub_100004A34(v25);
  }

  if (v9)
  {
    v10 = [FakeXPlatformD2DConnection alloc];
    v11 = *(ptr + 1);
    v22 = *ptr;
    v23 = v11;
    if (v11)
    {
      atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v12 = *cntrl;
    object = v12;
    if (v12)
    {
      dispatch_retain(v12);
    }

    v5 = [(FakeXPlatformD2DConnection *)v10 initWithRegistry:&v22 queue:&object];
    if (object)
    {
      dispatch_release(object);
    }

    v13 = v23;
    if (v23)
    {
LABEL_15:
      sub_100004A34(v13);
    }
  }

  else
  {
    v15 = [MKD2DConnection alloc];
    v16 = *(ptr + 1);
    v19 = *ptr;
    v20 = v16;
    if (v16)
    {
      atomic_fetch_add_explicit(&v16->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v17 = *cntrl;
    v18 = v17;
    if (v17)
    {
      dispatch_retain(v17);
    }

    v5 = [(MKD2DConnection *)v15 initWithRegistry:&v19 queue:&v18];
    if (v18)
    {
      dispatch_release(v18);
    }

    v13 = v20;
    if (v20)
    {
      goto LABEL_15;
    }
  }

LABEL_16:

  return v5;
}

@end