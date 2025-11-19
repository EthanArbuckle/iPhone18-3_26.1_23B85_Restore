@interface NetworkUsageUpdater
- (NetworkUsageUpdater)initWithHandler:(shared_ptr<NetworkUsageUpdaterCollector::UsageHandler>)a3;
- (id).cxx_construct;
- (void)statsManager:(id)a3 didReceiveNWSnapshot:(id)a4;
- (void)statsManager:(id)a3 thresholdReachedOn:(unsigned int)a4;
@end

@implementation NetworkUsageUpdater

- (NetworkUsageUpdater)initWithHandler:(shared_ptr<NetworkUsageUpdaterCollector::UsageHandler>)a3
{
  ptr = a3.__ptr_;
  v10.receiver = self;
  v10.super_class = NetworkUsageUpdater;
  v4 = [(NetworkUsageUpdater *)&v10 init:a3.__ptr_];
  v5 = v4;
  if (v4)
  {
    v7 = *ptr;
    v6 = *(ptr + 1);
    if (v6)
    {
      atomic_fetch_add_explicit((v6 + 8), 1uLL, memory_order_relaxed);
    }

    cntrl = v4->fHandler.__cntrl_;
    v5->fHandler.__ptr_ = v7;
    v5->fHandler.__cntrl_ = v6;
    if (cntrl)
    {
      sub_100004A34(cntrl);
    }
  }

  return v5;
}

- (void)statsManager:(id)a3 didReceiveNWSnapshot:(id)a4
{
  v11 = a4;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    ptr = self->fHandler.__ptr_;
    v6 = v11;
    v7 = *(ptr + 1);
    if (v7)
    {
      v8 = std::__shared_weak_count::lock(v7);
      if (v8)
      {
        v9 = *ptr;
        if (*ptr)
        {
          atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
          v10 = v6;
          v12[0] = 0;
          v12[1] = 0;
          sub_100004AA0(v12, (v9 + 8));
          operator new();
        }

        sub_100004A34(v8);
      }
    }
  }
}

- (void)statsManager:(id)a3 thresholdReachedOn:(unsigned int)a4
{
  ptr = self->fHandler.__ptr_;
  v5 = *(ptr + 1);
  if (v5)
  {
    v6 = std::__shared_weak_count::lock(v5);
    if (v6)
    {
      v7 = *ptr;
      if (*ptr)
      {
        atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
        v8[0] = 0;
        v8[1] = 0;
        sub_100004AA0(v8, (v7 + 8));
        operator new();
      }

      sub_100004A34(v6);
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