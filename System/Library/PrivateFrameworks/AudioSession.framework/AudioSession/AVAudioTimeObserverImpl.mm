@interface AVAudioTimeObserverImpl
- (AVAudioTimeObserverImpl)initWithDeviceTimeClient:(shared_ptr<avas::client::DeviceTimeClient>)client;
- (id).cxx_construct;
- (shared_ptr<avas::client::DeviceTimeClient>)deviceTimeClient;
@end

@implementation AVAudioTimeObserverImpl

- (id).cxx_construct
{
  *(self + 1) = 0;
  *(self + 2) = 0;
  return self;
}

- (AVAudioTimeObserverImpl)initWithDeviceTimeClient:(shared_ptr<avas::client::DeviceTimeClient>)client
{
  ptr = client.__ptr_;
  v10.receiver = self;
  v10.super_class = AVAudioTimeObserverImpl;
  v4 = [(AVAudioTimeObserverImpl *)&v10 init:client.__ptr_];
  v5 = v4;
  if (v4)
  {
    v7 = *ptr;
    v6 = *(ptr + 1);
    if (v6)
    {
      atomic_fetch_add_explicit((v6 + 8), 1uLL, memory_order_relaxed);
    }

    cntrl = v4->_deviceTimeClient.__cntrl_;
    v5->_deviceTimeClient.__ptr_ = v7;
    v5->_deviceTimeClient.__cntrl_ = v6;
    if (cntrl)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](cntrl);
    }
  }

  return v5;
}

- (shared_ptr<avas::client::DeviceTimeClient>)deviceTimeClient
{
  cntrl = self->_deviceTimeClient.__cntrl_;
  *v2 = self->_deviceTimeClient.__ptr_;
  v2[1] = cntrl;
  if (cntrl)
  {
    atomic_fetch_add_explicit(cntrl + 1, 1uLL, memory_order_relaxed);
  }

  result.__cntrl_ = a2;
  result.__ptr_ = self;
  return result;
}

@end