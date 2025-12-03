@interface AVAudioIOController_iOS
- (AVAudioIOController_iOS)initWithSession:(id)session xpcConnection:(shared_ptr<avas:(shared_ptr<avas:(unsigned int)connection :(BOOL)a7 client::DeviceTimeClient>)a5 :client::XPCConnection>)a4 deviceTimeClient:timingSlot:isDecoupledInput:;
- (AVAudioIOPeriod)IOPeriod;
- (BOOL)isRunning;
- (__n128)isRunning;
- (id).cxx_construct;
- (int64_t)createIOEventBlock:(id)block;
- (void)destroyIOEventBlock:(int64_t)block;
- (void)isRunning;
- (void)privateDispatchIOControllerEvent:(unint64_t)event;
@end

@implementation AVAudioIOController_iOS

- (AVAudioIOController_iOS)initWithSession:(id)session xpcConnection:(shared_ptr<avas:(shared_ptr<avas:(unsigned int)connection :(BOOL)a7 client::DeviceTimeClient>)a5 :client::XPCConnection>)a4 deviceTimeClient:timingSlot:isDecoupledInput:
{
  cntrl = a5.__cntrl_;
  ptr = a5.__ptr_;
  v9 = a4.__cntrl_;
  v10 = a4.__ptr_;
  sessionCopy = session;
  v23.receiver = self;
  v23.super_class = AVAudioIOController_iOS;
  v13 = [(AVAudioIOController_iOS *)&v23 init];
  v14 = v13;
  if (v13)
  {
    v15 = v13 + 8;
    if (v13[88] == 1)
    {
      v24 = (v13 + 64);
      std::vector<std::pair<long,void({block_pointer} {__strong})(AVAudioIOControllerEvent)>>::__destroy_vector::operator()[abi:ne200100](&v24);
      v16 = *(v14 + 4);
      if (v16)
      {
        std::__shared_weak_count::__release_weak(v16);
      }

      objc_destroyWeak(v14 + 1);
      v14[88] = 0;
    }

    v18 = *v10;
    v17 = *(v10 + 1);
    if (v17)
    {
      atomic_fetch_add_explicit(&v17->__shared_owners_, 1uLL, memory_order_relaxed);
      objc_initWeak(v14 + 1, sessionCopy);
      v14[16] = cntrl;
      *(v14 + 3) = v18;
      *(v14 + 4) = v17;
      atomic_fetch_add_explicit(&v17->__shared_weak_owners_, 1uLL, memory_order_relaxed);
      *(v14 + 10) = ptr;
      *(v14 + 12) = 0;
      *(v14 + 7) = v15;
      *(v14 + 8) = 0;
      *(v14 + 9) = 0;
      *(v14 + 10) = 0;
      std::__shared_weak_count::__release_shared[abi:ne200100](v17);
    }

    else
    {
      objc_initWeak(v14 + 1, sessionCopy);
      v14[16] = cntrl;
      *(v14 + 3) = v18;
      *(v14 + 4) = 0;
      *(v14 + 10) = ptr;
      *(v14 + 12) = 0;
      *(v14 + 7) = v15;
      *(v14 + 8) = 0;
      *(v14 + 9) = 0;
      *(v14 + 10) = 0;
    }

    v14[88] = 1;
    v20 = *v9;
    v19 = *(v9 + 1);
    if (v19)
    {
      atomic_fetch_add_explicit((v19 + 8), 1uLL, memory_order_relaxed);
    }

    v21 = *(v14 + 13);
    *(v14 + 12) = v20;
    *(v14 + 13) = v19;
    if (v21)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v21);
    }
  }

  return v14;
}

- (BOOL)isRunning
{
  v7[4] = *MEMORY[0x1E69E9840];
  selfCopy = self;
  v5 = 0;
  v2 = avas::client::DeviceTimeGlobalState::instance(self);
  v7[0] = &unk_1F215D3B8;
  v7[1] = &selfCopy;
  v7[2] = &v5;
  v7[3] = v7;
  (*(*v2 + 16))(v2, v7);
  std::__function::__value_func<void ()(avas::DTSharedBlock const&)>::~__value_func[abi:ne200100](v7);
  result = v5;
  v4 = *MEMORY[0x1E69E9840];
  return result;
}

- (AVAudioIOPeriod)IOPeriod
{
  v25 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained(self + 1);
  if (!WeakRetained)
  {
    goto LABEL_8;
  }

  v6 = *(self + 4);
  if (!v6)
  {
    goto LABEL_8;
  }

  v7 = std::__shared_weak_count::lock(v6);
  if (!v7)
  {
    goto LABEL_8;
  }

  v8 = v7;
  v9 = *(self + 3);
  if (!v9)
  {
LABEL_7:
    std::__shared_weak_count::__release_shared[abi:ne200100](v8);
LABEL_8:

    *&retstr->var0 = 0u;
    *&retstr->var2 = 0u;
    goto LABEL_9;
  }

  avas::client::XPCConnection::sync_message<double,unsigned long>(v9, &v20);
  v10 = objc_autoreleasePoolPush();
  v11 = caulk::xpc::message<objc_object  {objcproto25SessionManagerXPCProtocol}* {__strong},double,unsigned long>::sync_proxy(&v20);
  opaqueSessionID = [WeakRetained opaqueSessionID];
  v13 = *(self + 16);
  v14 = caulk::xpc::message<objc_object  {objcproto25SessionManagerXPCProtocol}* {__strong},double,unsigned long>::reply(&v20);
  [v11 getIOControllerPeriod:opaqueSessionID decoupledInput:v13 reply:v14];

  objc_autoreleasePoolPop(v10);
  if (v22)
  {

    std::__function::__value_func<void ()(NSError *,std::tuple<double,unsigned long> &&)>::~__value_func[abi:ne200100](v21);
    goto LABEL_7;
  }

  v17 = v23;
  v18 = v24;
  retstr->var0 = v23;
  v19 = 0.0;
  if (v17 > 0.0)
  {
    v19 = v18 / v17;
  }

  retstr->var1 = v19;
  retstr->var2 = v18;
  retstr->var3 = 1.0;

  std::__function::__value_func<void ()(NSError *,std::tuple<double,unsigned long> &&)>::~__value_func[abi:ne200100](v21);
  std::__shared_weak_count::__release_shared[abi:ne200100](v8);

LABEL_9:
  v16 = *MEMORY[0x1E69E9840];
  return result;
}

- (int64_t)createIOEventBlock:(id)block
{
  blockCopy = block;
  WeakRetained = objc_loadWeakRetained(self + 1);
  if (WeakRetained)
  {
    os_unfair_lock_lock(self + 12);
    v6 = blockCopy;
    v12 = add;
    v13 = v6;
    v8 = *(self + 9);
    if (v8 >= *(self + 10))
    {
      v9 = std::vector<std::pair<long,void({block_pointer} {__strong})(AVAudioIOControllerEvent)>>::__emplace_back_slow_path<long const&,void({block_pointer} {__strong}&)(AVAudioIOControllerEvent)>(self + 64, &v12, &v13);
    }

    else
    {
      *v8 = add;
      v8[1] = MEMORY[0x1B26ED920](v13);
      v9 = (v8 + 2);
    }

    *(self + 9) = v9;
    if (v9 - *(self + 8) == 16)
    {
    }

    v10 = v12;

    os_unfair_lock_unlock(self + 12);
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (void)destroyIOEventBlock:(int64_t)block
{
  os_unfair_lock_lock(self + 12);
  v6 = *(self + 8);
  v5 = *(self + 9);
  if (v6 != v5)
  {
    while (*v6 != block)
    {
      v6 += 2;
      if (v6 == v5)
      {
        v6 = *(self + 9);
        break;
      }
    }
  }

  if (v5 != v6)
  {
    std::__copy_move_unwrap_iters[abi:ne200100]<std::__move_impl<std::_ClassicAlgPolicy>,std::pair<long,void({block_pointer} {__strong})(AVAudioIOControllerEvent)> *,std::pair<long,void({block_pointer} {__strong})(AVAudioIOControllerEvent)> *,std::pair<long,void({block_pointer} {__strong})(AVAudioIOControllerEvent)> *,0>(v6 + 2, v5, v6);
    v8 = v7;
    v9 = *(self + 9);
    if (v9 != v7)
    {
      do
      {
        v10 = v9 - 16;

        v9 = v10;
      }

      while (v10 != v8);
    }

    *(self + 9) = v8;
    if (*(self + 8) == v8)
    {
    }
  }

  os_unfair_lock_unlock(self + 12);
}

- (void)privateDispatchIOControllerEvent:(unint64_t)event
{
  os_unfair_lock_lock(self + 12);
  v4 = *(self + 8);
  v5 = *(self + 9);
  while (v4 != v5)
  {
    (*(*(v4 + 8) + 16))();
    v4 += 16;
  }

  os_unfair_lock_unlock(self + 12);
}

- (id).cxx_construct
{
  *(self + 8) = 0;
  *(self + 88) = 0;
  *(self + 12) = 0;
  *(self + 13) = 0;
  return self;
}

- (__n128)isRunning
{
  *a2 = &unk_1F215D3B8;
  result = *(self + 8);
  *(a2 + 8) = result;
  return result;
}

- (void)isRunning
{
  v2 = atomic_load((**(self + 8) + 40));
  if (v2 >= 0x21F)
  {
    goto LABEL_14;
  }

  caulk::concurrent::atomic_value<avas::SessionSharedState,2,3>::load((a2 + 104 * v2 + 8), v8);
  if (*(**(self + 8) + 16) == 1)
  {
    if (v10 == 1 && v8[0] != 255)
    {
      if (v8[0] < 0x42u)
      {
        v5 = a2 + 136 * v8[0];
LABEL_12:
        caulk::concurrent::atomic_value<avas::MinimalTimeStamp,2,3>::load((v5 + 56480), v7);
        **(self + 16) = v7[0];
        return;
      }

      goto LABEL_14;
    }
  }

  else
  {
    v6 = v9;
    if (v9 != 255 || (v10 & 1) == 0 && (v6 = v8[0], v8[0] != 255))
    {
      if (v6 < 0x42)
      {
        v5 = a2 + 136 * v6;
        goto LABEL_12;
      }

LABEL_14:
      std::__throw_out_of_range[abi:ne200100]("array::at");
    }
  }
}

@end