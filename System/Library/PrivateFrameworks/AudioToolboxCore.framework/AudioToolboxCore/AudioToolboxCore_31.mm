void MP4BoxParser_TrackFragmentRun::~MP4BoxParser_TrackFragmentRun(MP4BoxParser_TrackFragmentRun *this)
{
  MP4BoxParser_TrackFragmentRun::~MP4BoxParser_TrackFragmentRun(this);

  JUMPOUT(0x193ADF220);
}

{
  *this = &unk_1F03306B8;
  v2 = *(this + 8);
  if (v2)
  {
    *(this + 9) = v2;
    operator delete(v2);
  }

  v3 = *(this + 1);
  *this = &unk_1F0330650;
  *(this + 1) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }
}

uint64_t MP4BoxParser_ChunkOffset::Init(MP4BoxParser **this)
{
  result = MP4BoxParser_Full::Initialize(this);
  if (!result)
  {
    v3 = *(this + 5);
    if (v3 == 1937007471 || v3 == 1668232756)
    {
      v5 = (*(*this + 3))(this);
      result = MP4BoxParser::ReadDataSourceBytes(this[1], v5, 4uLL, this + 60);
      if (!result)
      {
        *(this + 15) = bswap32(*(this + 15));
      }
    }

    else
    {
      return 4294967294;
    }
  }

  return result;
}

void MP4BoxParser_ChunkOffset::~MP4BoxParser_ChunkOffset(MP4BoxParser_ChunkOffset *this)
{
  v2 = *(this + 1);
  *this = &unk_1F0330650;
  *(this + 1) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  JUMPOUT(0x193ADF220);
}

{
  v2 = *(this + 1);
  *this = &unk_1F0330650;
  *(this + 1) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }
}

void MP4BoxParser_ChunkOffset::MP4BoxParser_ChunkOffset(MP4BoxParser_ChunkOffset *this, DataSource *a2, uint64_t a3)
{
  *this = &unk_1F0330650;
  (*(*a2 + 88))(a2, a3);
  *(this + 16) = 0;
  *(this + 5) = 0;
  *(this + 3) = 0;
  *(this + 32) = 0;
  *(this + 9) = 8;
  *this = &unk_1F03306E8;
  *(this + 15) = 0;
}

uint64_t MP4BoxParser_ChunkOffset::GetChunkOffset(MP4BoxParser_ChunkOffset *this, int a2, uint64_t *a3)
{
  result = (*(*this + 24))(this);
  v7 = result + 4;
  v8 = *(this + 5);
  if (v8 == 1668232756)
  {
    v10 = 0;
    result = MP4BoxParser::ReadDataSourceBytes(*(this + 1), (v7 + 8 * a2), 8uLL, &v10);
    v9 = bswap64(v10);
    if (result)
    {
      return result;
    }
  }

  else if (v8 == 1937007471)
  {
    v11 = 0;
    result = MP4BoxParser::ReadDataSourceBytes(*(this + 1), (v7 + 4 * a2), 4uLL, &v11);
    v9 = bswap32(v11);
    if (result)
    {
      return result;
    }
  }

  else
  {
    v9 = 0;
  }

  *a3 = v9;
  return result;
}

void std::allocator<std::unique_ptr<void,int (*)(void *)>>::allocate_at_least[abi:ne200100](unint64_t a1)
{
  if (!(a1 >> 60))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t std::__split_buffer<std::unique_ptr<void,int (*)(void *)>>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  while (v2 != v3)
  {
    v4 = *(v2 - 16);
    *(a1 + 16) = v2 - 16;
    *(v2 - 16) = 0;
    if (v4)
    {
      (*(v2 - 8))();
      v2 = *(a1 + 16);
    }

    else
    {
      v2 -= 16;
    }
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

double DSPGraph::TimeFreqBox::desc@<D0>(uint64_t a1@<X8>)
{
  result = 6.73591209e252;
  *a1 = xmmword_18F9019B0;
  *(a1 + 16) = 0;
  return result;
}

void DSPGraph::TimeFreqBox::TimeFreqBox(DSPGraph::TimeFreqBox *this)
{
  DSPGraph::Box::Box(this, 1u, 1u);
}

{
  DSPGraph::Box::Box(this, 1u, 1u);
}

OSStatus AUListenerCreate(AUParameterListenerProc inProc, void *inUserData, CFRunLoopRef inRunLoop, CFStringRef inRunLoopMode, Float32 inNotificationInterval, AUParameterListenerRef *outListener)
{
  v10 = *MEMORY[0x1E69E9840];
  result = -50;
  if (inProc && outListener)
  {
    if (inNotificationInterval > 0.0)
    {
      if (!inRunLoop)
      {
        CFRunLoopGetCurrent();
      }

      v8 = *MEMORY[0x1E695E8E0];
      std::allocate_shared[abi:ne200100]<CAEventReceiver::Impl,std::allocator<CAEventReceiver::Impl>,__CFRunLoop *&,__CFString const*&,0>();
    }

    operator new();
  }

  v9 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_18F7FAEB4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  CAEventReceiver::~CAEventReceiver(va);
  _Unwind_Resume(a1);
}

void sub_18F7FB040(_Unwind_Exception *a1)
{
  __cxa_free_exception(v2);
  applesauce::CF::ObjectRef<__CFString const*>::~ObjectRef((v1 + 48));
  applesauce::CF::ObjectRef<__CFRunLoop *>::~ObjectRef((v1 + 40));
  v4 = *(v1 + 32);
  if (v4)
  {
    std::__shared_weak_count::__release_weak(v4);
  }

  std::__shared_weak_count::~__shared_weak_count(v1);
  operator delete(v5);
  _Unwind_Resume(a1);
}

__n128 std::__function::__func<AUListenerCreate::$_0,std::allocator<AUListenerCreate::$_0>,void ()(void *,AudioUnitParameter const*,float)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F0330BB8;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

const void **applesauce::CF::ObjectRef<__CFRunLoop *>::~ObjectRef(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
}

OSStatus AUListenerCreateWithDispatchQueue(AUParameterListenerRef *outListener, Float32 inNotificationInterval, dispatch_queue_t inDispatchQueue, AUParameterListenerBlock inBlock)
{
  v7 = *MEMORY[0x1E69E9840];
  result = -50;
  if (outListener && inBlock)
  {
    std::allocate_shared[abi:ne200100]<CAEventReceiver::Impl,std::allocator<CAEventReceiver::Impl>,dispatch_queue_s *&,0>();
  }

  v6 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_18F7FB2B4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, char a14)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__function::__func<applesauce::dispatch::v1::block<void ()(void *,AudioUnitParameter const*,float)>,std::allocator<applesauce::dispatch::v1::block<void ()(void *,AudioUnitParameter const*,float)>>,void ()(void *,AudioUnitParameter const*,float)>::operator()(uint64_t a1, uint64_t *a2, uint64_t *a3, float *a4)
{
  v4 = *a2;
  v5 = *a3;
  return (*(*(a1 + 8) + 16))(*a4);
}

void std::__function::__func<applesauce::dispatch::v1::block<void ()(void *,AudioUnitParameter const*,float)>,std::allocator<applesauce::dispatch::v1::block<void ()(void *,AudioUnitParameter const*,float)>>,void ()(void *,AudioUnitParameter const*,float)>::destroy_deallocate(const void **a1)
{
  std::__function::__alloc_func<applesauce::dispatch::v1::block<void ()(void *,AudioUnitParameter const*,float)>,std::allocator<applesauce::dispatch::v1::block<void ()(void *,AudioUnitParameter const*,float)>>,void ()(void *,AudioUnitParameter const*,float)>::destroy[abi:ne200100](a1[1]);

  operator delete(a1);
}

void std::__function::__alloc_func<applesauce::dispatch::v1::block<void ()(void *,AudioUnitParameter const*,float)>,std::allocator<applesauce::dispatch::v1::block<void ()(void *,AudioUnitParameter const*,float)>>,void ()(void *,AudioUnitParameter const*,float)>::destroy[abi:ne200100](const void *a1)
{
  if (a1)
  {
    _Block_release(a1);
  }
}

void *std::__function::__func<applesauce::dispatch::v1::block<void ()(void *,AudioUnitParameter const*,float)>,std::allocator<applesauce::dispatch::v1::block<void ()(void *,AudioUnitParameter const*,float)>>,void ()(void *,AudioUnitParameter const*,float)>::__clone(uint64_t a1, void *a2)
{
  *a2 = &unk_1F0330C00;
  result = *(a1 + 8);
  if (result)
  {
    result = _Block_copy(result);
  }

  a2[1] = result;
  return result;
}

void std::__function::__func<applesauce::dispatch::v1::block<void ()(void *,AudioUnitParameter const*,float)>,std::allocator<applesauce::dispatch::v1::block<void ()(void *,AudioUnitParameter const*,float)>>,void ()(void *,AudioUnitParameter const*,float)>::~__func(void *a1)
{
  *a1 = &unk_1F0330C00;
  v1 = a1[1];
  if (v1)
  {
    _Block_release(v1);
  }

  JUMPOUT(0x193ADF220);
}

void *std::__function::__func<applesauce::dispatch::v1::block<void ()(void *,AudioUnitParameter const*,float)>,std::allocator<applesauce::dispatch::v1::block<void ()(void *,AudioUnitParameter const*,float)>>,void ()(void *,AudioUnitParameter const*,float)>::~__func(void *a1)
{
  *a1 = &unk_1F0330C00;
  v2 = a1[1];
  if (v2)
  {
    _Block_release(v2);
  }

  return a1;
}

OSStatus AUListenerDispose(AUParameterListenerRef inListener)
{
  v1 = BaseOpaqueObject::ResolveOpaqueRef();
  if (!v1)
  {
    return -50;
  }

  v2 = v1;
  if (gListenerMapOnce[0] != -1)
  {
    dispatch_once(gListenerMapOnce, &__block_literal_global_2231);
  }

  v3 = ListenerMap::global;
  v11 = v2;
  v9 = ListenerMap::global;
  v10 = ListenerMap::global + 320;
  caulk::concurrent::details::node_allocator<ListenerMap::MapKey,ListenerMap::MapNode,10ul,(caulk::concurrent::skiplist_options)0>::begin_traversal();
  v4 = atomic_load((v3 + 72));
  v7[0] = &v11;
  v7[1] = v3;
  v8[0] = caulk::function_ref<BOOL ()(ListenerMap::MapKey const&,ListenerMap::MapNode &)>::functor_invoker<ListenerMap::RemoveListener(AUListener *)::$_0>;
  v8[1] = v7;
  ListenerMap::forEachBinding(&v9, v4 & 0xFFFFFFFFFFFFFFFCLL, v8);
  caulk::concurrent::details::node_allocator<ListenerMap::MapKey,ListenerMap::MapNode,10ul,(caulk::concurrent::skiplist_options)0>::end_traversal(v10, v5);
  CAEventReceiver::invalidate((v2 + 16));
  (*(*v2 + 8))(v2);
  return 0;
}

OSStatus AUListenerAddParameter(AUParameterListenerRef inListener, void *inObject, const AudioUnitParameter *inParameter)
{
  if (!inParameter)
  {
    return -50;
  }

  v5 = BaseOpaqueObject::ResolveOpaqueRef();
  if (!v5)
  {
    return -50;
  }

  v6 = v5;
  v8 = 0;
  v9 = *&inParameter->mAudioUnit;
  v10 = *&inParameter->mElement;
  if (gListenerMapOnce[0] != -1)
  {
    dispatch_once(gListenerMapOnce, &__block_literal_global_2231);
  }

  return ListenerMap::AddParameter(ListenerMap::global, v6, inObject, &v8);
}

OSStatus AUListenerRemoveParameter(AUParameterListenerRef inListener, void *inObject, const AudioUnitParameter *inParameter)
{
  v5 = BaseOpaqueObject::ResolveOpaqueRef();
  result = -50;
  if (inParameter && v5)
  {
    v7 = 0;
    v8 = *&inParameter->mAudioUnit;
    v9 = *&inParameter->mElement;
    if (gListenerMapOnce[0] != -1)
    {
      dispatch_once(gListenerMapOnce, &__block_literal_global_2231);
    }

    v12 = inObject;
    v13 = v5;
    v10[0] = &v13;
    v10[1] = &v12;
    v10[2] = ListenerMap::global;
    v11[0] = caulk::function_ref<BOOL ()(ListenerMap::MapKey const&,ListenerMap::MapNode &)>::functor_invoker<ListenerMap::RemoveEvent(AUListener *,void *,XAudioUnitEvent const&)::$_0>;
    v11[1] = v10;
    if (ListenerMap::forEachBindingForEvent(ListenerMap::global, &v7, v11))
    {
      return 0;
    }

    else
    {
      return -50;
    }
  }

  return result;
}

OSStatus AUParameterSet(AUParameterListenerRef inSendingListener, void *inSendingObject, const AudioUnitParameter *inParameter, AudioUnitParameterValue inValue, UInt32 inBufferOffsetInFrames)
{
  v11 = inValue;
  if (!inParameter)
  {
    return -50;
  }

  v9 = BaseOpaqueObject::ResolveOpaqueRef();
  result = AudioUnitSetParameter(inParameter->mAudioUnit, inParameter->mParameterID, inParameter->mScope, inParameter->mElement, inValue, inBufferOffsetInFrames);
  if (!result)
  {
    result = ListenerMap::global;
    if (ListenerMap::global)
    {
      return ListenerMap::NotifyParameterChange(ListenerMap::global, v9, inSendingObject, inParameter, &v11);
    }
  }

  return result;
}

OSStatus AUParameterListenerNotify(AUParameterListenerRef inSendingListener, void *inSendingObject, const AudioUnitParameter *inParameter)
{
  if (inParameter)
  {
    v5 = BaseOpaqueObject::ResolveOpaqueRef();
    v6 = ListenerMap::global;
    if (ListenerMap::global)
    {

      LODWORD(v6) = ListenerMap::NotifyParameterChange(v6, v5, inSendingObject, inParameter, 0);
    }
  }

  else
  {
    LODWORD(v6) = -50;
  }

  return v6;
}

OSStatus AUEventListenerCreate(AUEventListenerProc inProc, void *inUserData, CFRunLoopRef inRunLoop, CFStringRef inRunLoopMode, Float32 inNotificationInterval, Float32 inValueChangeGranularity, AUEventListenerRef *outListener)
{
  v10 = *MEMORY[0x1E69E9840];
  result = -50;
  if (inRunLoopMode && inRunLoop && inProc && outListener)
  {
    std::allocate_shared[abi:ne200100]<CAEventReceiver::Impl,std::allocator<CAEventReceiver::Impl>,__CFRunLoop *&,__CFString const*&,0>();
  }

  v9 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_18F7FBAC8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, char a16)
{
  CAEventReceiver::~CAEventReceiver(&a9);
  std::__function::__value_func<void ()(void *,AudioUnitEvent const*,unsigned long long,float)>::~__value_func[abi:ne200100](&a16);
  MEMORY[0x193ADF220](v16, 0x10A1C403884EDB4);
  CAEventReceiver::~CAEventReceiver(&a11);
  _Unwind_Resume(a1);
}

uint64_t AUEventListener::AUEventListener(uint64_t a1, uint64_t a2, __int128 *a3, double a4, double a5)
{
  v17[4] = *MEMORY[0x1E69E9840];
  v9 = *a3;
  *a3 = 0;
  *(a3 + 1) = 0;
  v14 = v9;
  v15[0] = 0;
  v15[1] = 0;
  BaseOpaqueObject::BaseOpaqueObject(a1);
  *a1 = &unk_1F0327658;
  *(a1 + 16) = v14;
  v16 = 0uLL;
  *(a1 + 32) = a4;
  *(a1 + 40) = a5;
  *(a1 + 48) = 0;
  *(a1 + 56) = 0;
  CAEventReceiver::~CAEventReceiver(&v16);
  *a1 = &unk_1F03275A0;
  *(a1 + 64) = (a5 * 24000000.0);
  *(a1 + 72) = 0;
  *(a1 + 80) = a1;
  *(a1 + 88) = 0u;
  *(a1 + 104) = 0u;
  *(a1 + 120) = 0u;
  v17[0] = &unk_1F0327850;
  v17[1] = a1;
  v17[3] = v17;
  CAEventReceiver::createTimer(*(a1 + 16), v17);
  std::__function::__value_func<void ()(void)>::~__value_func[abi:ne200100](v17);
  CAEventReceiver::~CAEventReceiver(v15);
  *a1 = &unk_1F03309F8;
  v10 = a2 + 24;
  v11 = *(a2 + 24);
  if (v11)
  {
    if (v11 == a2)
    {
      *(a1 + 160) = a1 + 136;
      (*(**v10 + 24))();
      goto LABEL_7;
    }

    *(a1 + 160) = v11;
  }

  else
  {
    v10 = a1 + 160;
  }

  *v10 = 0;
LABEL_7:
  v12 = *MEMORY[0x1E69E9840];
  return a1;
}

void sub_18F7FBCC8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, char a13)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

__n128 std::__function::__func<AUEventListenerCreate::$_0,std::allocator<AUEventListenerCreate::$_0>,void ()(void *,AudioUnitEvent const*,unsigned long long,float)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F0330C48;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

OSStatus AUEventListenerCreateWithDispatchQueue(AUEventListenerRef *outListener, Float32 inNotificationInterval, Float32 inValueChangeGranularity, dispatch_queue_t inDispatchQueue, AUEventListenerBlock inBlock)
{
  v8 = *MEMORY[0x1E69E9840];
  result = -50;
  if (inDispatchQueue && outListener && inBlock)
  {
    _Block_copy(inBlock);
    std::allocate_shared[abi:ne200100]<CAEventReceiver::Impl,std::allocator<CAEventReceiver::Impl>,dispatch_queue_s *&,0>();
  }

  v7 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_18F7FBEF4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, char a14)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  __clang_call_terminate(exception_object);
}

uint64_t std::__function::__func<applesauce::dispatch::v1::block<void ()(void *,AudioUnitEvent const*,unsigned long long,float)>,std::allocator<applesauce::dispatch::v1::block<void ()(void *,AudioUnitEvent const*,unsigned long long,float)>>,void ()(void *,AudioUnitEvent const*,unsigned long long,float)>::operator()(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t *a4, float *a5)
{
  v5 = *a2;
  v6 = *a3;
  v7 = *a4;
  return (*(*(a1 + 8) + 16))(*a5);
}

void std::__function::__func<applesauce::dispatch::v1::block<void ()(void *,AudioUnitEvent const*,unsigned long long,float)>,std::allocator<applesauce::dispatch::v1::block<void ()(void *,AudioUnitEvent const*,unsigned long long,float)>>,void ()(void *,AudioUnitEvent const*,unsigned long long,float)>::destroy_deallocate(const void **a1)
{
  std::__function::__alloc_func<applesauce::dispatch::v1::block<void ()(void *,AudioUnitEvent const*,unsigned long long,float)>,std::allocator<applesauce::dispatch::v1::block<void ()(void *,AudioUnitEvent const*,unsigned long long,float)>>,void ()(void *,AudioUnitEvent const*,unsigned long long,float)>::destroy[abi:ne200100](a1[1]);

  operator delete(a1);
}

void std::__function::__alloc_func<applesauce::dispatch::v1::block<void ()(void *,AudioUnitEvent const*,unsigned long long,float)>,std::allocator<applesauce::dispatch::v1::block<void ()(void *,AudioUnitEvent const*,unsigned long long,float)>>,void ()(void *,AudioUnitEvent const*,unsigned long long,float)>::destroy[abi:ne200100](const void *a1)
{
  if (a1)
  {
    _Block_release(a1);
  }
}

void *std::__function::__func<applesauce::dispatch::v1::block<void ()(void *,AudioUnitEvent const*,unsigned long long,float)>,std::allocator<applesauce::dispatch::v1::block<void ()(void *,AudioUnitEvent const*,unsigned long long,float)>>,void ()(void *,AudioUnitEvent const*,unsigned long long,float)>::__clone(uint64_t a1, void *a2)
{
  *a2 = &unk_1F0330C90;
  result = *(a1 + 8);
  if (result)
  {
    result = _Block_copy(result);
  }

  a2[1] = result;
  return result;
}

void std::__function::__func<applesauce::dispatch::v1::block<void ()(void *,AudioUnitEvent const*,unsigned long long,float)>,std::allocator<applesauce::dispatch::v1::block<void ()(void *,AudioUnitEvent const*,unsigned long long,float)>>,void ()(void *,AudioUnitEvent const*,unsigned long long,float)>::~__func(void *a1)
{
  *a1 = &unk_1F0330C90;
  v1 = a1[1];
  if (v1)
  {
    _Block_release(v1);
  }

  JUMPOUT(0x193ADF220);
}

void *std::__function::__func<applesauce::dispatch::v1::block<void ()(void *,AudioUnitEvent const*,unsigned long long,float)>,std::allocator<applesauce::dispatch::v1::block<void ()(void *,AudioUnitEvent const*,unsigned long long,float)>>,void ()(void *,AudioUnitEvent const*,unsigned long long,float)>::~__func(void *a1)
{
  *a1 = &unk_1F0330C90;
  v2 = a1[1];
  if (v2)
  {
    _Block_release(v2);
  }

  return a1;
}

OSStatus AUEventListenerAddEventType(AUEventListenerRef inListener, void *inObject, const AudioUnitEvent *inEvent)
{
  v25 = *MEMORY[0x1E69E9840];
  v5 = BaseOpaqueObject::ResolveOpaqueRef();
  if (!v5)
  {
    goto LABEL_17;
  }

  v6 = v5;
  if (gListenerMapOnce[0] != -1)
  {
    dispatch_once(gListenerMapOnce, &__block_literal_global_2231);
  }

  v7 = ListenerMap::global;
  mEventType = inEvent->mEventType;
  if (inEvent->mEventType - 1 < 2)
  {
    v22 = v6;
    *&v23 = &v22;
    *(&v23 + 1) = &v18;
    v18 = inObject;
    *&v19 = caulk::function_ref<BOOL ()(ListenerMap::MapKey const&,ListenerMap::MapNode &)>::functor_invoker<ListenerMap::CanInsertEvent(AUListener *,void *,XAudioUnitEvent const&)::$_0>;
    *(&v19 + 1) = &v23;
    if (ListenerMap::forEachBindingForEvent(ListenerMap::global, inEvent, &v19))
    {
      goto LABEL_17;
    }

    v12 = (*(*v6 + 40))(v6, inObject, inEvent);
    if (!v12)
    {
      goto LABEL_17;
    }

    *&v23 = v12;
    v13 = *&inEvent->mArgument.mProperty.mPropertyID;
    v19 = *&inEvent->mEventType;
    v20 = v13;
    add = atomic_fetch_add((v7 + 400), 1u);
    v14 = &v23;
    goto LABEL_16;
  }

  if (mEventType == kAudioUnitEvent_PropertyChange)
  {
    v22 = v6;
    *&v23 = &v22;
    *(&v23 + 1) = &v18;
    v18 = inObject;
    *&v19 = caulk::function_ref<BOOL ()(ListenerMap::MapKey const&,ListenerMap::MapNode &)>::functor_invoker<ListenerMap::CanInsertEvent(AUListener *,void *,XAudioUnitEvent const&)::$_0>;
    *(&v19 + 1) = &v23;
    if (ListenerMap::forEachBindingForEvent(ListenerMap::global, inEvent, &v19))
    {
      goto LABEL_17;
    }

    v23 = *&inEvent->mEventType;
    mParameterID = inEvent->mArgument.mParameter.mParameterID;
    v15 = *(&inEvent->mArgument.mProperty.mElement + 1);
    v16 = (*(*v6 + 48))(v6, inObject, inEvent);
    if (!v16)
    {
      goto LABEL_17;
    }

    v22 = v16;
    v19 = v23;
    *&v20 = mParameterID;
    DWORD2(v20) = 0;
    HIDWORD(v20) = v15;
    add = atomic_fetch_add((v7 + 400), 1u);
    v14 = &v22;
LABEL_16:
    caulk::concurrent::skiplist<ListenerMap::MapKey,ListenerMap::MapNode,10,(caulk::concurrent::skiplist_options)0>::emplace<ListenerBinding *&>(v7, &v19, v14);
    result = 0;
LABEL_18:
    v17 = *MEMORY[0x1E69E9840];
    return result;
  }

  if (mEventType)
  {
LABEL_17:
    result = -50;
    goto LABEL_18;
  }

  v9 = *MEMORY[0x1E69E9840];
  v10 = ListenerMap::global;

  return ListenerMap::AddParameter(v10, v6, inObject, inEvent);
}

OSStatus AUEventListenerRemoveEventType(AUEventListenerRef inListener, void *inObject, const AudioUnitEvent *inEvent)
{
  v5 = BaseOpaqueObject::ResolveOpaqueRef();
  if (!v5)
  {
    return -50;
  }

  v6 = v5;
  if (gListenerMapOnce[0] != -1)
  {
    dispatch_once(gListenerMapOnce, &__block_literal_global_2231);
  }

  v7 = -50;
  if (inEvent->mEventType >= kAudioUnitEvent_PropertyChange)
  {
    if (inEvent->mEventType == kAudioUnitEvent_PropertyChange)
    {
      v8 = *&inEvent->mArgument.mProperty.mPropertyID;
      v10 = *&inEvent->mEventType;
      v11 = v8;
      *(&v11 + 4) = 0;
      v16 = inObject;
      v17 = v6;
      v12[0] = &v17;
      v12[1] = &v16;
      v12[2] = ListenerMap::global;
      v13 = caulk::function_ref<BOOL ()(ListenerMap::MapKey const&,ListenerMap::MapNode &)>::functor_invoker<ListenerMap::RemoveEvent(AUListener *,void *,XAudioUnitEvent const&)::$_0>;
      v14 = v12;
      if (ListenerMap::forEachBindingForEvent(ListenerMap::global, &v10, &v13))
      {
        return 0;
      }

      else
      {
        return -50;
      }
    }
  }

  else
  {
    v12[0] = v6;
    v17 = inObject;
    v13 = v12;
    v14 = &v17;
    v15 = ListenerMap::global;
    *&v10 = caulk::function_ref<BOOL ()(ListenerMap::MapKey const&,ListenerMap::MapNode &)>::functor_invoker<ListenerMap::RemoveEvent(AUListener *,void *,XAudioUnitEvent const&)::$_0>;
    *(&v10 + 1) = &v13;
    if (ListenerMap::forEachBindingForEvent(ListenerMap::global, inEvent, &v10))
    {
      return 0;
    }

    else
    {
      return -50;
    }
  }

  return v7;
}

OSStatus AUEventListenerNotify(AUEventListenerRef inSendingListener, void *inSendingObject, const AudioUnitEvent *inEvent)
{
  v5 = BaseOpaqueObject::ResolveOpaqueRef();
  if (inEvent && inEvent->mEventType != kAudioUnitEvent_PropertyChange)
  {
    v7 = v5;
    v6 = ListenerMap::global;
    if (ListenerMap::global)
    {
      if (inEvent->mEventType)
      {
        v11 = inSendingObject;
        v12 = v7;
        v9[0] = &v12;
        v9[1] = &v11;
        v10[0] = caulk::rt_function_ref<BOOL ()(ListenerMap::MapKey const&,ListenerMap::MapNode &)>::functor_invoker<ListenerMap::NotifyEvent(AUListener *,void *,XAudioUnitEvent const&)::$_0>;
        v10[1] = v9;
        v13[0] = caulk::function_ref<BOOL ()(ListenerMap::MapKey const&,ListenerMap::MapNode &)>::functor_invoker<caulk::rt_function_ref<BOOL ()(ListenerMap::MapKey const&,ListenerMap::MapNode &)>>;
        v13[1] = v10;
        ListenerMap::forEachBindingForEvent(ListenerMap::global, inEvent, v13);
        LODWORD(v6) = 0;
      }

      else
      {

        LODWORD(v6) = ListenerMap::NotifyParameterChange(v6, v7, inSendingObject, &inEvent->mArgument, 0);
      }
    }
  }

  else
  {
    LODWORD(v6) = -50;
  }

  return v6;
}

intptr_t AUEventListenerFlush(AUListenerBase *a1)
{
  result = BaseOpaqueObject::ResolveOpaqueRef();
  if (result)
  {
    v2 = *(result + 16);
    atomic_fetch_add((v2 + 112), 1u);
    result = CAEventReceiver::Impl::timerShouldFireWithin(v2, 0.0);
    if (result)
    {
      v3 = *(v2 + 104);

      return dispatch_semaphore_wait(v3, 0xFFFFFFFFFFFFFFFFLL);
    }

    else
    {
      atomic_fetch_add((v2 + 112), 0xFFFFFFFF);
    }
  }

  return result;
}

AudioUnitParameterValue AUParameterValueFromLinear(Float32 inLinearValue, const AudioUnitParameter *inParameter)
{
  if (!inParameter)
  {
    return -50.0;
  }

  XAUParameter::GetParamProxy(v7, inParameter);
  v3 = 0.0;
  if (v10 == 1)
  {
    v4 = v8;
    Transformer = GetTransformer(*(v8 + 40));
    v3 = (*(*Transformer + 8))(Transformer, inLinearValue, *(v4 + 28), *(v4 + 32));
    if (v9)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v9);
    }
  }

  return v3;
}

void sub_18F7FC724(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, __int128 a13)
{
  if (*(&a13 + 4))
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](*(&a13 + 4));
  }

  _Unwind_Resume(exception_object);
}

uint64_t GetTransformer(int a1)
{
  v2 = gTransformers;
  if (!gTransformers)
  {
    pthread_once(&sOnce, InitAllTransformers);
    v2 = gTransformers;
  }

  v3 = a1 & 0x470000;
  v4 = v2 + 48;
  v5 = v2 + 16;
  v6 = v2 + 8;
  if ((a1 & 0x470000) != 0x400000)
  {
    v6 = v2;
  }

  if (v3 != 327680)
  {
    v5 = v6;
  }

  if (v3 != 0x40000)
  {
    v4 = v5;
  }

  v7 = v2 + 24;
  v8 = v2 + 32;
  if (v3 == 196608)
  {
    v2 += 40;
  }

  if (v3 == 0x20000)
  {
    v2 = v8;
  }

  if (v3 == 0x10000)
  {
    v2 = v7;
  }

  if ((a1 & 0x470000u) < 0x40000)
  {
    return v2;
  }

  else
  {
    return v4;
  }
}

long double ExpTransformer::fromlinear(ExpTransformer *this, double a2, long double a3, long double a4)
{
  v6 = exp(a3);
  v7 = v6 + (exp(a4) - v6) * a2;

  return log(v7);
}

long double ExpTransformer::tolinear(ExpTransformer *this, long double a2, long double a3, long double a4)
{
  v6 = exp(a2);
  v7 = exp(a3);
  return (v6 - v7) / (exp(a4) - v7);
}

long double LogTransformer::tolinear(LogTransformer *this, long double a2, long double a3, long double a4)
{
  v6 = log(a2);
  v7 = log(a3);
  return (v6 - v7) / (log(a4) - v7);
}

Float32 AUParameterValueToLinear(AudioUnitParameterValue inParameterValue, const AudioUnitParameter *inParameter)
{
  if (!inParameter)
  {
    return -50.0;
  }

  XAUParameter::GetParamProxy(v7, inParameter);
  v3 = 0.0;
  if (v10 == 1)
  {
    v4 = v8;
    Transformer = GetTransformer(*(v8 + 40));
    v3 = (**Transformer)(Transformer, inParameterValue, *(v4 + 28), *(v4 + 32));
    if (v9)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v9);
    }
  }

  return v3;
}

void sub_18F7FCC58(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, __int128 a13)
{
  if (*(&a13 + 4))
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](*(&a13 + 4));
  }

  _Unwind_Resume(exception_object);
}

char *__cdecl AUParameterFormatValue(Float64 inParameterValue, const AudioUnitParameter *inParameter, char *inTextBuffer, UInt32 inDigits)
{
  *inTextBuffer = 0;
  if (inParameter)
  {
    XAUParameter::GetParamProxy(v9, inParameter);
    if (v12 == 1)
    {
      v7 = inParameterValue;
      if (*(v10 + 24) != 8)
      {
        v7 = (*(v10 + 32) - *(v10 + 28));
      }

      if (v7 < 0.000001)
      {
        v7 = 0.000001;
      }

      if ((~log10(v7) + inDigits) < 1)
      {
        snprintf(inTextBuffer, 0x20uLL, "%.0f");
      }

      else
      {
        snprintf(inTextBuffer, 0x20uLL, "%.*f");
      }

      if (v11)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v11);
      }
    }
  }

  return inTextBuffer;
}

void sub_18F7FCDE8(_Unwind_Exception *a1)
{
  objc_sync_exit(v2);

  _Unwind_Resume(a1);
}

void sub_18F7FCEA0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v12 = v11;

  objc_sync_exit(v10);
  _Unwind_Resume(a1);
}

void sub_18F7FCFB8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  objc_sync_exit(v11);

  _Unwind_Resume(a1);
}

uint64_t CA::ADMBuilder::Impl::parse_model(CA::ADMBuilder::Impl *this, char *__s1, const char **a3)
{
  v83 = *MEMORY[0x1E69E9840];
  if (!strcmp(__s1, "audioProgramme"))
  {
    LOBYTE(__p[0]) = 0;
    LOBYTE(v66) = 0;
    LOBYTE(v67) = 0;
    v68 = 0;
    v69[0] = 0;
    v69[24] = 0;
    v70[0] = 0;
    v70[24] = 0;
    v71[0] = 0;
    v71[24] = 0;
    LOBYTE(v72) = 0;
    v73 = 0;
    v77[68] = 0;
    v77[72] = 0;
    v77[120] = 0;
    v79 = 0;
    v80 = 0;
    v78 = 0;
    v74 = 0u;
    v75 = 0u;
    v76 = 0u;
    memset(v77, 0, 25);
    if (a3)
    {
      v5 = *a3;
      if (*a3)
      {
        v6 = (a3 + 2);
        do
        {
          v7 = *(v6 - 1);
          if (!strcmp(v5, "audioProgrammeID"))
          {
            v9 = __p;
          }

          else
          {
            v8 = strcmp(v5, "audioProgrammeName");
            v9 = &v67;
            if (v8)
            {
              v10 = strcmp(v5, "audioProgrammeLanguage");
              v9 = v69;
              if (v10)
              {
                if (!strcmp(v5, "start"))
                {
                  CA::ADMTime::parse(v7, buf);
                  if ((buf[24] & 1) == 0)
                  {
                    *(this + 158) = -66604;
                  }

                  *v70 = *buf;
                  *&v70[9] = *&buf[9];
                }

                else if (!strcmp(v5, "end"))
                {
                  CA::ADMTime::parse(v7, buf);
                  if ((buf[24] & 1) == 0)
                  {
                    *(this + 158) = -66604;
                  }

                  *v71 = *buf;
                  *&v71[9] = *&buf[9];
                }

                else if (!strcmp(v5, "maxDuckingDepth"))
                {
                  std::string::basic_string[abi:ne200100]<0>(buf, v7);
                  v11 = CA::ADMBuilder::Impl::parse_float(this, buf);
                  v72 = v11;
                  v73 = BYTE4(v11);
                  if ((buf[23] & 0x80000000) != 0)
                  {
                    operator delete(*buf);
                  }
                }

                goto LABEL_23;
              }
            }
          }

          std::optional<std::string>::operator=[abi:ne200100]<char const* const&,void>(v9, v7);
LABEL_23:
          v12 = *v6;
          v6 += 2;
          v5 = v12;
        }

        while (v12);
      }
    }

    v13 = this;
    if (*(this + 158))
    {
      goto LABEL_32;
    }

    if (v66 == 1)
    {
      v15 = std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::__emplace_unique_key_args<std::string,std::string const&>(this + 90, __p);
      if (v15)
      {
        if (!*(this + 158))
        {
          goto LABEL_38;
        }
      }

      else
      {
        v24 = CA::ADMBuilder::Impl::log(v15);
        if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
        {
          std::optional<std::string>::value_or[abi:ne200100]<char const(&)[1]>(&v64, __p, "");
          v25 = (v64.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &v64 : v64.__r_.__value_.__r.__words[0];
          *buf = 136315650;
          *&buf[4] = "ADMBuilderParseModel.cpp";
          *&buf[12] = 1024;
          *&buf[14] = 40;
          *&buf[18] = 2080;
          *&buf[20] = v25;
          _os_log_impl(&dword_18F5DF000, v24, OS_LOG_TYPE_ERROR, "%25s:%-5d Multiple dialogues with ID '%s'", buf, 0x1Cu);
          if (SHIBYTE(v64.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v64.__r_.__value_.__l.__data_);
          }
        }

        *(this + 158) = -66591;
      }

LABEL_32:
      v14 = 1;
LABEL_90:
      CA::ADMProgramme::~ADMProgramme(__p);
      goto LABEL_92;
    }

LABEL_38:
    v16 = *this;
    v18 = *(*this + 8);
    v17 = *(*this + 16);
    if (v18 >= v17)
    {
      v20 = 0xD37A6F4DE9BD37A7 * ((v18 - *v16) >> 4);
      if (v20 + 1 > 0xB21642C8590B21)
      {
        std::vector<APAC::UI18>::__throw_length_error[abi:ne200100]();
      }

      v21 = 0xD37A6F4DE9BD37A7 * ((v17 - *v16) >> 4);
      v22 = 2 * v21;
      if (2 * v21 <= v20 + 1)
      {
        v22 = v20 + 1;
      }

      if (v21 >= 0x590B21642C8590)
      {
        v23 = 0xB21642C8590B21;
      }

      else
      {
        v23 = v22;
      }

      if (v23)
      {
        if (v23 <= 0xB21642C8590B21)
        {
          operator new();
        }

        std::__throw_bad_array_new_length[abi:ne200100]();
      }

      v26 = 368 * v20;
      std::allocator_traits<std::allocator<CA::ADMProgramme>>::construct[abi:ne200100]<CA::ADMProgramme,CA::ADMProgramme,void,0>(368 * v20, __p);
      v19 = 368 * v20 + 368;
      v27 = *v16;
      v28 = v16[1];
      v29 = v26 + *v16 - v28;
      if (v28 != *v16)
      {
        v30 = *v16;
        v31 = v29;
        do
        {
          std::allocator_traits<std::allocator<CA::ADMProgramme>>::construct[abi:ne200100]<CA::ADMProgramme,CA::ADMProgramme,void,0>(v31, v30);
          v30 += 23;
          v31 += 368;
        }

        while (v30 != v28);
        do
        {
          CA::ADMProgramme::~ADMProgramme(v27);
          v27 = (v27 + 368);
        }

        while (v27 != v28);
      }

      v32 = *v16;
      *v16 = v29;
      *(v16 + 1) = v19;
      if (v32)
      {
        operator delete(v32);
      }

      v13 = this;
    }

    else
    {
      std::allocator_traits<std::allocator<CA::ADMProgramme>>::construct[abi:ne200100]<CA::ADMProgramme,CA::ADMProgramme,void,0>(*(*this + 8), __p);
      v19 = v18 + 368;
      v16[1] = v18 + 368;
    }

    v16[1] = v19;
    memset(&v64, 0, sizeof(v64));
    v34 = *(v13 + 41);
    v33 = *(v13 + 42);
    if (v34 >= v33)
    {
      v36 = *(v13 + 40);
      v37 = 0xAAAAAAAAAAAAAAABLL * ((v34 - v36) >> 3);
      v38 = v37 + 1;
      if (v37 + 1 > 0xAAAAAAAAAAAAAAALL)
      {
        std::vector<APAC::UI18>::__throw_length_error[abi:ne200100]();
      }

      v39 = 0xAAAAAAAAAAAAAAABLL * ((v33 - v36) >> 3);
      if (2 * v39 > v38)
      {
        v38 = 2 * v39;
      }

      if (v39 >= 0x555555555555555)
      {
        v40 = 0xAAAAAAAAAAAAAAALL;
      }

      else
      {
        v40 = v38;
      }

      v82 = v13 + 320;
      if (v40)
      {
        std::allocator<std::vector<std::string>>::allocate_at_least[abi:ne200100](v40);
      }

      v41 = 24 * v37;
      *v41 = 0;
      *(v41 + 8) = 0;
      *(v41 + 16) = 0;
      *v41 = v64;
      memset(&v64, 0, sizeof(v64));
      v35 = 24 * v37 + 24;
      v42 = *(v13 + 40);
      v43 = *(v13 + 41) - v42;
      v44 = v41 - v43;
      memcpy((v41 - v43), v42, v43);
      v45 = *(v13 + 40);
      *(v13 + 40) = v44;
      *(v13 + 41) = v35;
      v46 = *(v13 + 42);
      *(v13 + 42) = 0;
      *&buf[16] = v45;
      *&buf[24] = v46;
      *buf = v45;
      *&buf[8] = v45;
      std::__split_buffer<std::vector<std::string>>::~__split_buffer(buf);
    }

    else
    {
      *v34 = 0;
      v34[1] = 0;
      v35 = (v34 + 3);
      v34[2] = 0;
    }

    *(v13 + 41) = v35;
    *buf = &v64;
    std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](buf);
    memset(&v64, 0, sizeof(v64));
    v48 = *(v13 + 44);
    v47 = *(v13 + 45);
    if (v48 >= v47)
    {
      v50 = *(v13 + 43);
      v51 = 0xAAAAAAAAAAAAAAABLL * ((v48 - v50) >> 3);
      v52 = v51 + 1;
      if (v51 + 1 > 0xAAAAAAAAAAAAAAALL)
      {
        std::vector<APAC::UI18>::__throw_length_error[abi:ne200100]();
      }

      v53 = 0xAAAAAAAAAAAAAAABLL * ((v47 - v50) >> 3);
      if (2 * v53 > v52)
      {
        v52 = 2 * v53;
      }

      if (v53 >= 0x555555555555555)
      {
        v54 = 0xAAAAAAAAAAAAAAALL;
      }

      else
      {
        v54 = v52;
      }

      v82 = v13 + 344;
      if (v54)
      {
        std::allocator<std::vector<std::string>>::allocate_at_least[abi:ne200100](v54);
      }

      v55 = 24 * v51;
      *v55 = 0;
      *(v55 + 8) = 0;
      *(v55 + 16) = 0;
      *v55 = v64;
      memset(&v64, 0, sizeof(v64));
      v49 = 24 * v51 + 24;
      v56 = *(v13 + 43);
      v57 = *(v13 + 44) - v56;
      v58 = v55 - v57;
      memcpy((v55 - v57), v56, v57);
      v59 = *(v13 + 43);
      *(v13 + 43) = v58;
      *(v13 + 44) = v49;
      v60 = *(v13 + 45);
      *(v13 + 45) = 0;
      *&buf[16] = v59;
      *&buf[24] = v60;
      *buf = v59;
      *&buf[8] = v59;
      std::__split_buffer<std::vector<std::string>>::~__split_buffer(buf);
    }

    else
    {
      *v48 = 0;
      v48[1] = 0;
      v49 = (v48 + 3);
      v48[2] = 0;
    }

    *(v13 + 44) = v49;
    *buf = &v64;
    std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](buf);
    memset(buf, 0, 24);
    std::vector<std::vector<std::vector<std::string>>>::push_back[abi:ne200100](v13 + 368, buf);
    v64.__r_.__value_.__r.__words[0] = buf;
    std::vector<std::vector<std::string>>::__destroy_vector::operator()[abi:ne200100](&v64);
    v14 = 3;
    goto LABEL_90;
  }

  if (!strcmp(__s1, "audioContent"))
  {
    operator new();
  }

  if (!strcmp(__s1, "audioObject"))
  {
    operator new();
  }

  if (!strcmp(__s1, "audioPackFormat"))
  {
    operator new();
  }

  if (!strcmp(__s1, "audioChannelFormat"))
  {
    operator new();
  }

  if (!strcmp(__s1, "audioTrackFormat"))
  {
    operator new();
  }

  if (!strcmp(__s1, "audioStreamFormat"))
  {
    operator new();
  }

  if (!strcmp(__s1, "audioTrackUID"))
  {
    operator new();
  }

  v14 = 1;
LABEL_92:
  v61 = *MEMORY[0x1E69E9840];
  return v14;
}

void sub_18F7FF658(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, std::__shared_weak_count *a16, uint64_t a17, uint64_t a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24, char a25)
{
  if (a16)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a16);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::__emplace_unique_key_args<std::string,std::string const&>(void *a1, void *a2)
{
  v4 = std::__string_hash<char>::operator()[abi:ne200100](a2);
  v5 = v4;
  v6 = a1[1];
  if (!*&v6)
  {
    goto LABEL_18;
  }

  v7 = vcnt_s8(v6);
  v7.i16[0] = vaddlv_u8(v7);
  v8 = v7.u32[0];
  if (v7.u32[0] > 1uLL)
  {
    v9 = v4;
    if (v4 >= *&v6)
    {
      v9 = v4 % *&v6;
    }
  }

  else
  {
    v9 = (*&v6 - 1) & v4;
  }

  v10 = *(*a1 + 8 * v9);
  if (!v10 || (v11 = *v10) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v12 = v11[1];
    if (v12 == v5)
    {
      break;
    }

    if (v8 > 1)
    {
      if (v12 >= *&v6)
      {
        v12 %= *&v6;
      }
    }

    else
    {
      v12 &= *&v6 - 1;
    }

    if (v12 != v9)
    {
      goto LABEL_18;
    }

LABEL_17:
    v11 = *v11;
    if (!v11)
    {
      goto LABEL_18;
    }
  }

  if (!std::equal_to<std::string>::operator()[abi:ne200100](v11 + 2, a2))
  {
    goto LABEL_17;
  }

  return 0;
}

__n128 std::allocator_traits<std::allocator<CA::ADMProgramme>>::construct[abi:ne200100]<CA::ADMProgramme,CA::ADMProgramme,void,0>(uint64_t a1, __int128 *a2)
{
  *a1 = 0;
  *(a1 + 24) = 0;
  if (*(a2 + 24) == 1)
  {
    v2 = *a2;
    *(a1 + 16) = *(a2 + 2);
    *a1 = v2;
    *(a2 + 1) = 0;
    *(a2 + 2) = 0;
    *a2 = 0;
    *(a1 + 24) = 1;
  }

  *(a1 + 32) = 0;
  *(a1 + 56) = 0;
  if (*(a2 + 56) == 1)
  {
    v3 = a2[2];
    *(a1 + 48) = *(a2 + 6);
    *(a1 + 32) = v3;
    *(a2 + 5) = 0;
    *(a2 + 6) = 0;
    *(a2 + 4) = 0;
    *(a1 + 56) = 1;
  }

  *(a1 + 64) = 0;
  *(a1 + 88) = 0;
  if (*(a2 + 88) == 1)
  {
    v4 = a2[4];
    *(a1 + 80) = *(a2 + 10);
    *(a1 + 64) = v4;
    *(a2 + 9) = 0;
    *(a2 + 10) = 0;
    *(a2 + 8) = 0;
    *(a1 + 88) = 1;
  }

  *(a1 + 96) = a2[6];
  v5 = a2[7];
  v6 = a2[8];
  v7 = a2[9];
  *(a1 + 157) = *(a2 + 157);
  *(a1 + 128) = v6;
  *(a1 + 144) = v7;
  *(a1 + 112) = v5;
  *(a1 + 176) = 0;
  *(a1 + 184) = 0;
  *(a1 + 168) = 0;
  *(a1 + 168) = *(a2 + 168);
  *(a1 + 184) = *(a2 + 23);
  *(a2 + 21) = 0;
  *(a2 + 22) = 0;
  *(a2 + 23) = 0;
  *(a1 + 192) = 0;
  *(a1 + 200) = 0;
  *(a1 + 208) = 0;
  *(a1 + 192) = a2[12];
  *(a1 + 208) = *(a2 + 26);
  *(a2 + 24) = 0;
  *(a2 + 25) = 0;
  *(a2 + 26) = 0;
  *(a1 + 216) = 0;
  *(a1 + 224) = 0;
  *(a1 + 232) = 0;
  *(a1 + 216) = *(a2 + 216);
  *(a1 + 232) = *(a2 + 29);
  *(a2 + 27) = 0;
  *(a2 + 28) = 0;
  *(a2 + 29) = 0;
  v8 = a2[15];
  v9 = a2[17];
  *(a1 + 256) = a2[16];
  *(a1 + 272) = v9;
  *(a1 + 240) = v8;
  *(a1 + 288) = 0;
  *(a1 + 336) = 0;
  if (*(a2 + 336) == 1)
  {
    *(a1 + 288) = 0;
    *(a1 + 296) = 0;
    *(a1 + 304) = 0;
    *(a1 + 288) = a2[18];
    *(a1 + 304) = *(a2 + 38);
    *(a2 + 36) = 0;
    *(a2 + 37) = 0;
    *(a2 + 38) = 0;
    *(a1 + 312) = 0;
    *(a1 + 320) = 0;
    *(a1 + 328) = 0;
    *(a1 + 312) = *(a2 + 312);
    *(a1 + 328) = *(a2 + 41);
    *(a2 + 39) = 0;
    *(a2 + 40) = 0;
    *(a2 + 41) = 0;
    *(a1 + 336) = 1;
  }

  *(a1 + 344) = 0;
  *(a1 + 352) = 0;
  *(a1 + 360) = 0;
  *(a1 + 344) = *(a2 + 43);
  result = a2[22];
  *(a1 + 352) = result;
  *(a2 + 43) = 0;
  *(a2 + 44) = 0;
  *(a2 + 45) = 0;
  return result;
}

void std::vector<std::vector<std::vector<std::string>>>::push_back[abi:ne200100](uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (v3 >= v4)
  {
    v6 = 0xAAAAAAAAAAAAAAABLL * ((v3 - *a1) >> 3);
    v7 = v6 + 1;
    if (v6 + 1 > 0xAAAAAAAAAAAAAAALL)
    {
      std::vector<APAC::UI18>::__throw_length_error[abi:ne200100]();
    }

    v8 = 0xAAAAAAAAAAAAAAABLL * ((v4 - *a1) >> 3);
    if (2 * v8 > v7)
    {
      v7 = 2 * v8;
    }

    if (v8 >= 0x555555555555555)
    {
      v9 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      if (v9 <= 0xAAAAAAAAAAAAAAALL)
      {
        operator new();
      }

      std::__throw_bad_array_new_length[abi:ne200100]();
    }

    v10 = 24 * v6;
    *v10 = *a2;
    *(v10 + 16) = *(a2 + 16);
    *(a2 + 8) = 0;
    *(a2 + 16) = 0;
    *a2 = 0;
    v5 = 24 * v6 + 24;
    v11 = *a1;
    v12 = *(a1 + 8) - *a1;
    v13 = 24 * v6 - v12;
    memcpy((v10 - v12), *a1, v12);
    *a1 = v13;
    *(a1 + 8) = v5;
    *(a1 + 16) = 0;
    if (v11)
    {
      operator delete(v11);
    }
  }

  else
  {
    *v3 = 0;
    v3[1] = 0;
    v3[2] = 0;
    *v3 = *a2;
    v3[2] = *(a2 + 16);
    *a2 = 0;
    *(a2 + 8) = 0;
    *(a2 + 16) = 0;
    v5 = (v3 + 3);
  }

  *(a1 + 8) = v5;
}

std::string *std::pair<std::string const,std::shared_ptr<CA::ADMPackFormat>>::pair[abi:ne200100]<std::string&,std::shared_ptr<CA::ADMPackFormat>&,0>(std::string *this, __int128 *a2, std::string::size_type *a3)
{
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(this, *a2, *(a2 + 1));
  }

  else
  {
    v5 = *a2;
    this->__r_.__value_.__r.__words[2] = *(a2 + 2);
    *&this->__r_.__value_.__l.__data_ = v5;
  }

  v6 = a3[1];
  this[1].__r_.__value_.__r.__words[0] = *a3;
  this[1].__r_.__value_.__l.__size_ = v6;
  if (v6)
  {
    atomic_fetch_add_explicit((v6 + 8), 1uLL, memory_order_relaxed);
  }

  return this;
}

uint64_t std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<CA::ADMPackFormat>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<CA::ADMPackFormat>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<CA::ADMPackFormat>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<CA::ADMPackFormat>>>>::__emplace_unique_key_args<std::string,std::pair<std::string const,std::shared_ptr<CA::ADMPackFormat>>>(void *a1, void *a2)
{
  v4 = std::__string_hash<char>::operator()[abi:ne200100](a2);
  v5 = v4;
  v6 = a1[1];
  if (!*&v6)
  {
    goto LABEL_18;
  }

  v7 = vcnt_s8(v6);
  v7.i16[0] = vaddlv_u8(v7);
  v8 = v7.u32[0];
  if (v7.u32[0] > 1uLL)
  {
    v9 = v4;
    if (v4 >= *&v6)
    {
      v9 = v4 % *&v6;
    }
  }

  else
  {
    v9 = (*&v6 - 1) & v4;
  }

  v10 = *(*a1 + 8 * v9);
  if (!v10 || (v11 = *v10) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v12 = v11[1];
    if (v12 == v5)
    {
      break;
    }

    if (v8 > 1)
    {
      if (v12 >= *&v6)
      {
        v12 %= *&v6;
      }
    }

    else
    {
      v12 &= *&v6 - 1;
    }

    if (v12 != v9)
    {
      goto LABEL_18;
    }

LABEL_17:
    v11 = *v11;
    if (!v11)
    {
      goto LABEL_18;
    }
  }

  if (!std::equal_to<std::string>::operator()[abi:ne200100](v11 + 2, a2))
  {
    goto LABEL_17;
  }

  return 0;
}

void sub_18F800120(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::unique_ptr<std::__hash_node<std::__hash_value_type<std::string,std::shared_ptr<CA::ADMChannelFormat>>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::string,std::shared_ptr<CA::ADMChannelFormat>>,void *>>>>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t std::pair<std::string const,std::shared_ptr<CA::ADMPackFormat>>::~pair(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t std::vector<std::vector<std::string>>::__emplace_back_slow_path<std::vector<std::string>>(uint64_t a1, uint64_t a2)
{
  v2 = 0xAAAAAAAAAAAAAAABLL * ((*(a1 + 8) - *a1) >> 3);
  v3 = v2 + 1;
  if (v2 + 1 > 0xAAAAAAAAAAAAAAALL)
  {
    std::vector<APAC::UI18>::__throw_length_error[abi:ne200100]();
  }

  if (0x5555555555555556 * ((*(a1 + 16) - *a1) >> 3) > v3)
  {
    v3 = 0x5555555555555556 * ((*(a1 + 16) - *a1) >> 3);
  }

  if (0xAAAAAAAAAAAAAAABLL * ((*(a1 + 16) - *a1) >> 3) >= 0x555555555555555)
  {
    v5 = 0xAAAAAAAAAAAAAAALL;
  }

  else
  {
    v5 = v3;
  }

  v13[4] = a1;
  if (v5)
  {
    std::allocator<std::vector<std::string>>::allocate_at_least[abi:ne200100](v5);
  }

  v6 = 24 * v2;
  *v6 = 0;
  *(v6 + 8) = 0;
  *(v6 + 16) = 0;
  *v6 = *a2;
  *(v6 + 16) = *(a2 + 16);
  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  v7 = 24 * v2 + 24;
  v8 = *(a1 + 8) - *a1;
  v9 = 24 * v2 - v8;
  memcpy((v6 - v8), *a1, v8);
  v10 = *a1;
  *a1 = v9;
  *(a1 + 8) = v7;
  v11 = *(a1 + 16);
  *(a1 + 16) = 0;
  v13[2] = v10;
  v13[3] = v11;
  v13[0] = v10;
  v13[1] = v10;
  std::__split_buffer<std::vector<std::string>>::~__split_buffer(v13);
  return v7;
}

uint64_t std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<CA::ADMTrackFormat>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<CA::ADMTrackFormat>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<CA::ADMTrackFormat>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<CA::ADMTrackFormat>>>>::__emplace_unique_key_args<std::string,std::pair<std::string const,std::shared_ptr<CA::ADMTrackFormat>>>(void *a1, void *a2)
{
  v4 = std::__string_hash<char>::operator()[abi:ne200100](a2);
  v5 = v4;
  v6 = a1[1];
  if (!*&v6)
  {
    goto LABEL_18;
  }

  v7 = vcnt_s8(v6);
  v7.i16[0] = vaddlv_u8(v7);
  v8 = v7.u32[0];
  if (v7.u32[0] > 1uLL)
  {
    v9 = v4;
    if (v4 >= *&v6)
    {
      v9 = v4 % *&v6;
    }
  }

  else
  {
    v9 = (*&v6 - 1) & v4;
  }

  v10 = *(*a1 + 8 * v9);
  if (!v10 || (v11 = *v10) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v12 = v11[1];
    if (v12 == v5)
    {
      break;
    }

    if (v8 > 1)
    {
      if (v12 >= *&v6)
      {
        v12 %= *&v6;
      }
    }

    else
    {
      v12 &= *&v6 - 1;
    }

    if (v12 != v9)
    {
      goto LABEL_18;
    }

LABEL_17:
    v11 = *v11;
    if (!v11)
    {
      goto LABEL_18;
    }
  }

  if (!std::equal_to<std::string>::operator()[abi:ne200100](v11 + 2, a2))
  {
    goto LABEL_17;
  }

  return 0;
}

void sub_18F800514(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::unique_ptr<std::__hash_node<std::__hash_value_type<std::string,std::shared_ptr<CA::ADMChannelFormat>>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::string,std::shared_ptr<CA::ADMChannelFormat>>,void *>>>>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<CA::ADMStreamFormat>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<CA::ADMStreamFormat>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<CA::ADMStreamFormat>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<CA::ADMStreamFormat>>>>::__emplace_unique_key_args<std::string,std::pair<std::string const,std::shared_ptr<CA::ADMStreamFormat>>>(void *a1, void *a2)
{
  v4 = std::__string_hash<char>::operator()[abi:ne200100](a2);
  v5 = v4;
  v6 = a1[1];
  if (!*&v6)
  {
    goto LABEL_18;
  }

  v7 = vcnt_s8(v6);
  v7.i16[0] = vaddlv_u8(v7);
  v8 = v7.u32[0];
  if (v7.u32[0] > 1uLL)
  {
    v9 = v4;
    if (v4 >= *&v6)
    {
      v9 = v4 % *&v6;
    }
  }

  else
  {
    v9 = (*&v6 - 1) & v4;
  }

  v10 = *(*a1 + 8 * v9);
  if (!v10 || (v11 = *v10) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v12 = v11[1];
    if (v12 == v5)
    {
      break;
    }

    if (v8 > 1)
    {
      if (v12 >= *&v6)
      {
        v12 %= *&v6;
      }
    }

    else
    {
      v12 &= *&v6 - 1;
    }

    if (v12 != v9)
    {
      goto LABEL_18;
    }

LABEL_17:
    v11 = *v11;
    if (!v11)
    {
      goto LABEL_18;
    }
  }

  if (!std::equal_to<std::string>::operator()[abi:ne200100](v11 + 2, a2))
  {
    goto LABEL_17;
  }

  return 0;
}

void sub_18F8007BC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::unique_ptr<std::__hash_node<std::__hash_value_type<std::string,std::shared_ptr<CA::ADMChannelFormat>>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::string,std::shared_ptr<CA::ADMChannelFormat>>,void *>>>>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void std::__shared_ptr_emplace<CA::ADMObject>::__on_zero_shared(uint64_t a1)
{
  v2 = *(a1 + 448);
  if (v2)
  {
    v3 = *(a1 + 456);
    v4 = *(a1 + 448);
    if (v3 != v2)
    {
      do
      {
        v3 -= 192;
        std::__destroy_at[abi:ne200100]<CA::ADMAlternativeValueSet,0>(v3);
      }

      while (v3 != v2);
      v4 = *(a1 + 448);
    }

    *(a1 + 456) = v2;
    operator delete(v4);
  }

  v10 = (a1 + 288);
  std::vector<std::shared_ptr<AudioMetadataTimeline::Node<AudioMetadataStreamFormat,AudioMetadataTimeline::Node<AudioMetadataTrackFormat,AudioMetadataTimeline::Node<AudioMetadataTrackUID,AudioMetadataTimeline::Node<AudioMetadataObject,AudioMetadataTimeline::Node<AudioMetadataContent,AudioMetadataTimeline::Node<AudioMetadataProgramme,AudioMetadataTimeline::Node<AudioMetadataFormatExtended,decltype(nullptr)>>>>>>>>>::__destroy_vector::operator()[abi:ne200100](&v10);
  v5 = *(a1 + 264);
  if (v5)
  {
    v6 = *(a1 + 272);
    v7 = *(a1 + 264);
    if (v6 != v5)
    {
      do
      {
        v8 = *(v6 - 8);
        if (v8)
        {
          std::__shared_weak_count::__release_weak(v8);
        }

        v6 -= 16;
      }

      while (v6 != v5);
      v7 = *(a1 + 264);
    }

    *(a1 + 272) = v5;
    operator delete(v7);
  }

  v10 = (a1 + 240);
  std::vector<CA::ADMLabel>::__destroy_vector::operator()[abi:ne200100](&v10);
  v10 = (a1 + 216);
  std::vector<CA::ADMLabel>::__destroy_vector::operator()[abi:ne200100](&v10);
  v10 = (a1 + 192);
  std::vector<std::shared_ptr<AudioMetadataTimeline::Node<AudioMetadataStreamFormat,AudioMetadataTimeline::Node<AudioMetadataTrackFormat,AudioMetadataTimeline::Node<AudioMetadataTrackUID,AudioMetadataTimeline::Node<AudioMetadataObject,AudioMetadataTimeline::Node<AudioMetadataContent,AudioMetadataTimeline::Node<AudioMetadataProgramme,AudioMetadataTimeline::Node<AudioMetadataFormatExtended,decltype(nullptr)>>>>>>>>>::__destroy_vector::operator()[abi:ne200100](&v10);
  v10 = (a1 + 168);
  std::vector<std::shared_ptr<CA::ADMPackFormat>>::__destroy_vector::operator()[abi:ne200100](&v10);
  if (*(a1 + 80) == 1 && *(a1 + 79) < 0)
  {
    operator delete(*(a1 + 56));
  }

  if (*(a1 + 48) == 1 && *(a1 + 47) < 0)
  {
    v9 = *(a1 + 24);

    operator delete(v9);
  }
}

void std::__shared_ptr_emplace<CA::ADMObject>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F0330D30;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x193ADF220);
}

void std::__shared_ptr_emplace<CA::ADMContent>::__on_zero_shared(uint64_t a1)
{
  v3 = (a1 + 200);
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v3);
  v3 = (a1 + 168);
  std::vector<CA::ADMLoudnessMetadata>::__destroy_vector::operator()[abi:ne200100](&v3);
  v3 = (a1 + 144);
  std::vector<std::shared_ptr<AudioMetadataTimeline::Node<AudioMetadataStreamFormat,AudioMetadataTimeline::Node<AudioMetadataTrackFormat,AudioMetadataTimeline::Node<AudioMetadataTrackUID,AudioMetadataTimeline::Node<AudioMetadataObject,AudioMetadataTimeline::Node<AudioMetadataContent,AudioMetadataTimeline::Node<AudioMetadataProgramme,AudioMetadataTimeline::Node<AudioMetadataFormatExtended,decltype(nullptr)>>>>>>>>>::__destroy_vector::operator()[abi:ne200100](&v3);
  v3 = (a1 + 120);
  std::vector<CA::ADMLabel>::__destroy_vector::operator()[abi:ne200100](&v3);
  if (*(a1 + 112) == 1 && *(a1 + 111) < 0)
  {
    operator delete(*(a1 + 88));
  }

  if (*(a1 + 80) == 1 && *(a1 + 79) < 0)
  {
    operator delete(*(a1 + 56));
  }

  if (*(a1 + 48) == 1 && *(a1 + 47) < 0)
  {
    v2 = *(a1 + 24);

    operator delete(v2);
  }
}

void std::__shared_ptr_emplace<CA::ADMContent>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F0330CF8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x193ADF220);
}

uint64_t MP4BoxParser_MovieFragment::Init(MP4BoxParser_MovieFragment *this)
{
  result = MP4BoxParser::Initialize(this);
  if (!result)
  {
    if (*(this + 5) == 1836019558)
    {
      if (*(this + 56) == 1)
      {
        operator new();
      }

      return 0;
    }

    else
    {
      return 4294967294;
    }
  }

  return result;
}

void MP4BoxParser_MovieFragment::~MP4BoxParser_MovieFragment(MP4BoxParser_MovieFragment *this)
{
  MP4BoxParser_MovieFragment::~MP4BoxParser_MovieFragment(this);

  JUMPOUT(0x193ADF220);
}

{
  *this = off_1F0330E80;
  if (*(this + 56) == 1)
  {
    v2 = *(this + 8);
    if (v2)
    {
      std::__list_imp<MP4BoxInfo>::clear(*(this + 8));
      MEMORY[0x193ADF220](v2, 0x1020C4062D53EE8);
    }
  }

  v3 = *(this + 1);
  *this = &unk_1F0330650;
  *(this + 1) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }
}

uint64_t MP4BoxParser_MovieFragment::GetSequence(MP4BoxParser_MovieFragment *this, uint64_t a2)
{
  v17 = *MEMORY[0x1E69E9840];
  v2 = *(a2 + 8);
  if (v2 == a2)
  {
LABEL_8:
    v5 = 0;
    goto LABEL_9;
  }

  while (*(v2 + 16) != 1835427940)
  {
    v2 = *(v2 + 8);
    if (v2 == a2)
    {
      goto LABEL_8;
    }
  }

  v3 = *(v2 + 32);
  v9 = &unk_1F0330650;
  (*(*this + 88))(&v10);
  v11 = 0;
  v12 = 0;
  v13 = 0;
  v14 = 0;
  v15 = 8;
  v9 = off_1F032FB88;
  if (MP4BoxParser_MovieFragmentHeader::Init(&v9))
  {
    v4 = v10;
    v9 = &unk_1F0330650;
    v10 = 0;
    if (v4)
    {
      (*(*v4 + 8))(v4);
    }

    goto LABEL_8;
  }

  v5 = v16;
  v8 = v10;
  v9 = &unk_1F0330650;
  v10 = 0;
  if (v8)
  {
    (*(*v8 + 8))(v8);
  }

LABEL_9:
  v6 = *MEMORY[0x1E69E9840];
  return v5;
}

void sub_18F800E6C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  if (a11)
  {
    (*(*a11 + 8))(a11);
  }

  _Unwind_Resume(exception_object);
}

uint64_t AudioConverterAPI::PrintObject(AudioConverterAPI *this, __sFILE *a2)
{
  fprintf(a2, "<%s 0x%x [%p]>", "AudioConverterRef", *(this + 2), this);

  return fputc(10, a2);
}

uint64_t MediaToolboxLibraryCore(char **a1)
{
  v3 = *MEMORY[0x1E69E9840];
  if (!MediaToolboxLibraryCore(char **)::frameworkLibrary)
  {
    MediaToolboxLibraryCore(char **)::frameworkLibrary = _sl_dlopen();
  }

  result = MediaToolboxLibraryCore(char **)::frameworkLibrary;
  v2 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t getFigCPECryptorCreateCryptorFromSerializedRecipeSymbolLoc(void)
{
  v3 = 0;
  v4 = &v3;
  v5 = 0x2000000000;
  v0 = getFigCPECryptorCreateCryptorFromSerializedRecipeSymbolLoc(void)::ptr;
  v6 = getFigCPECryptorCreateCryptorFromSerializedRecipeSymbolLoc(void)::ptr;
  if (!getFigCPECryptorCreateCryptorFromSerializedRecipeSymbolLoc(void)::ptr)
  {
    v2[0] = MEMORY[0x1E69E9820];
    v2[1] = 0x40000000;
    v2[2] = ___ZL58getFigCPECryptorCreateCryptorFromSerializedRecipeSymbolLocv_block_invoke;
    v2[3] = &unk_1E72C1650;
    v2[4] = &v3;
    ___ZL58getFigCPECryptorCreateCryptorFromSerializedRecipeSymbolLocv_block_invoke(v2);
    v0 = v4[3];
  }

  _Block_object_dispose(&v3, 8);
  return v0;
}

void sub_18F80109C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *___ZL58getFigCPECryptorCreateCryptorFromSerializedRecipeSymbolLocv_block_invoke(uint64_t a1)
{
  v5 = 0;
  v2 = MediaToolboxLibraryCore(&v5);
  v3 = v5;
  if (!v2)
  {
    v3 = abort_report_np();
    goto LABEL_5;
  }

  if (v5)
  {
LABEL_5:
    free(v3);
  }

  result = dlsym(v2, "FigCPECryptorCreateCryptorFromSerializedRecipe");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getFigCPECryptorCreateCryptorFromSerializedRecipeSymbolLoc(void)::ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t ___ZL23MediaToolboxLibraryCorePPc_block_invoke(uint64_t a1)
{
  v4 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  MediaToolboxLibraryCore(char **)::frameworkLibrary = result;
  v3 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t acv2::PCMConverter_Scaled::ConvertBufferList(uint64_t result, int a2, void *a3, void *a4)
{
  v6 = result;
  if ((*(result + 28) & 0x20) != 0)
  {
    v7 = 1;
  }

  else
  {
    v7 = *(result + 44);
  }

  v8 = **a3;
  if (v8)
  {
    v9 = (v7 * a2);
    v10 = 16;
    do
    {
      result = (*(v6 + 168))(*(*a3 + v10), *(*a4 + v10), v9, *(v6 + 176));
      v10 += 16;
      --v8;
    }

    while (v8);
  }

  return result;
}

void acv2::PCMConverter_Scaled::~PCMConverter_Scaled(acv2::PCMConverter_Scaled *this)
{
  acv2::AudioConverterBase::~AudioConverterBase(this);

  JUMPOUT(0x193ADF220);
}

uint64_t acv2::PCMConverterI1::ConvertBufferList(uint64_t result, int a2, void *a3, void *a4)
{
  v6 = result;
  if ((*(result + 28) & 0x20) != 0)
  {
    v7 = 1;
  }

  else
  {
    v7 = *(result + 44);
  }

  v8 = **a3;
  if (v8)
  {
    v9 = (v7 * a2);
    v10 = 16;
    do
    {
      result = (*(v6 + 168))(*(*a3 + v10), *(*a4 + v10), v9, *(v6 + 176));
      v10 += 16;
      --v8;
    }

    while (v8);
  }

  return result;
}

void acv2::PCMConverterI1::~PCMConverterI1(acv2::PCMConverterI1 *this)
{
  acv2::AudioConverterBase::~AudioConverterBase(this);

  JUMPOUT(0x193ADF220);
}

void acv2::PCMDeinterleaver::~PCMDeinterleaver(acv2::PCMDeinterleaver *this)
{
  acv2::AudioConverterBase::~AudioConverterBase(this);

  JUMPOUT(0x193ADF220);
}

uint64_t acv2::ChannelMixerConverter::ChannelMixerConverter(uint64_t a1, __int128 *a2, uint8_t **a3)
{
  v39 = *MEMORY[0x1E69E9840];
  v5 = a2[3];
  v9 = a2[4];
  v7 = a2[1];
  v6 = a2[2];
  v8 = *a2;
  *(a1 + 8) = 0;
  *(a1 + 48) = v6;
  *(a1 + 64) = v5;
  *(a1 + 80) = v9;
  *(a1 + 16) = v8;
  *(a1 + 32) = v7;
  *(a1 + 96) = 0;
  *(a1 + 104) = 0;
  *(a1 + 112) = 0;
  *(a1 + 120) = -1;
  *(&v9 + 1) = 0;
  *(a1 + 128) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 160) = *(a2 + 6);
  *(a1 + 164) = *(a2 + 16);
  *a1 = &unk_1F0331248;
  *(a1 + 168) = *(a2 + 7);
  v10 = *(a2 + 17);
  *(a1 + 172) = v10;
  *(a1 + 176) = 0u;
  v11 = (a1 + 176);
  *(a1 + 192) = 0u;
  *(a1 + 208) = 0u;
  *(a1 + 224) = 0;
  if (v10)
  {
    if (((v10 + 63) & 0x1FFFFFFC0) != 0)
    {
      std::allocator<SyncSampleEntry>::allocate_at_least[abi:ne200100](((((v10 + 63) & 0x1FFFFFFC0) - 1) >> 6) + 1);
    }

    *&v9 = v10;
    v33 = v9;
    v13 = *(a1 + 208);
    v14 = (*(a1 + 200) + 8 * (v13 >> 6));
    v15 = v13 & 0x3F;
    *buf = 8 * (v10 >> 6);
    *&buf[8] = v10 & 0x3F;
    if (*&buf[8] == v15)
    {
      std::__copy_backward_aligned[abi:ne200100]<std::vector<BOOL>,true>(v37, v14, v15, buf);
    }

    else
    {
      std::__copy_backward_unaligned[abi:ne200100]<std::vector<BOOL>,true>(v37, v14, v15, buf);
    }

    v16 = *(a1 + 200);
    *(a1 + 200) = 0;
    *(a1 + 208) = v33;
    if (v16)
    {
      operator delete(v16);
    }

    *buf = 0;
    *&buf[8] = 0;
    std::__fill_n_BOOL[abi:ne200100]<false,std::vector<BOOL>>(buf, v10);
  }

  else
  {
    *(a1 + 208) = v10;
    *buf = 0;
    *&buf[8] = 0;
    std::__copy_backward_aligned[abi:ne200100]<std::vector<BOOL>,true>(v37, 0, 0, buf);
  }

  v17 = *(a1 + 176);
  v18 = (*(a1 + 172) * *(a1 + 168));
  *buf = 0;
  std::vector<float>::insert(v11, v17, v18, buf, v12);
  memset(buf, 0, 32);
  memset(v37, 0, sizeof(v37));
  v19 = *a3;
  v20 = **a3;
  if (v20 == 0x10000)
  {
    v21 = vcnt_s8(*(v19 + 1));
    v21.i16[0] = vaddlv_u8(v21);
    if (v21.i32[0])
    {
      goto LABEL_23;
    }
  }

  else if (v20)
  {
    if (**a3)
    {
      goto LABEL_23;
    }
  }

  else if (*(v19 + 2))
  {
    goto LABEL_23;
  }

  v22 = *(a1 + 168);
  if (v22 > 2)
  {
    goto LABEL_42;
  }

  if (v22 == 2)
  {
    v23 = 6619138;
  }

  else
  {
    v23 = 6553601;
  }

  *buf = v23;
  v19 = buf;
LABEL_23:
  inSpecifier[0] = v19;
  v24 = a3[3];
  if (*v24 == 0x10000)
  {
    v25 = vcnt_s8(*(v24 + 1));
    v25.i16[0] = vaddlv_u8(v25);
    if (!v25.i32[0])
    {
      goto LABEL_30;
    }
  }

  else if (*v24)
  {
    if (!*v24)
    {
LABEL_30:
      v26 = *(a1 + 172);
      if (v26 > 2)
      {
        goto LABEL_42;
      }

      if (v26 == 2)
      {
        v27 = 6619138;
      }

      else
      {
        v27 = 6553601;
      }

      LODWORD(v37[0]) = v27;
      v24 = v37;
    }
  }

  else if (!*(v24 + 2))
  {
    goto LABEL_30;
  }

  inSpecifier[1] = v24;
  if ((*(a1 + 224) & 1) == 0)
  {
    ioPropertyDataSize = 4 * *(a1 + 168) * *(a1 + 172);
    Property = AudioFormatGetProperty(0x6D6D6170u, 0x10u, inSpecifier, &ioPropertyDataSize, *(a1 + 176));
    outPropertyData = 1;
    if (Property || (ioPropertyDataSize = 4, Property = AudioFormatGetProperty(0x6E726D6Du, 0x10u, inSpecifier, &ioPropertyDataSize, &outPropertyData), outPropertyData))
    {
      acv2::normalizeMixMap(*(a1 + 168), *(a1 + 172), *(a1 + 176), v28);
    }

    if (Property)
    {
      v30 = CADefaultLog();
      if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
      {
        CAX4CCString::CAX4CCString(v37, Property);
        *buf = 136315650;
        *&buf[4] = "ChannelMixerConverter.h";
        *&buf[12] = 1024;
        *&buf[14] = 30;
        *&buf[18] = 2080;
        *&buf[20] = v37;
        _os_log_impl(&dword_18F5DF000, v30, OS_LOG_TYPE_ERROR, "%25s:%-5d SetLayouts failed, err %s being dropped!", buf, 0x1Cu);
      }
    }
  }

LABEL_42:
  v31 = *MEMORY[0x1E69E9840];
  return a1;
}

void sub_18F801878(_Unwind_Exception *a1)
{
  v4 = *(v1 + 25);
  if (v4)
  {
    operator delete(v4);
  }

  v5 = *v2;
  if (*v2)
  {
    *(v1 + 23) = v5;
    operator delete(v5);
  }

  acv2::AudioConverterBase::~AudioConverterBase(v1);
  _Unwind_Resume(a1);
}

void *std::__copy_backward_aligned[abi:ne200100]<std::vector<BOOL>,true>(uint64_t a1, void *a2, unsigned int a3, uint64_t a4)
{
  v6 = 8 * a2 + a3;
  result = *a4;
  if (v6 >= 1)
  {
    if (a3)
    {
      if (v6 >= a3)
      {
        v8 = a3;
      }

      else
      {
        v8 = 8 * a2 + a3;
      }

      v6 -= v8;
      v9 = (-1 << (a3 - v8)) & (0xFFFFFFFFFFFFFFFFLL >> -a3);
      *result = *result & ~v9 | *a2 & v9;
      *(a4 + 8) = (*(a4 + 8) - v8) & 0x3F;
    }

    if (v6 >= 0)
    {
      v10 = v6;
    }

    else
    {
      v10 = v6 + 63;
    }

    v11 = v10 >> 6;
    result -= v10 >> 6;
    *a4 = result;
    v12 = &a2[-(v10 >> 6)];
    if ((v6 + 63) >= 0x7F)
    {
      memmove(result, &a2[-(v10 >> 6)], 8 * v11);
      result = *a4;
    }

    if (v6 - (v11 << 6) >= 1)
    {
      v13 = -1 << ((v11 << 6) - v6);
      v14 = *(v12 - 1) & v13;
      v15 = *--result;
      *a4 = result;
      *result = v15 & ~v13 | v14;
      *(a4 + 8) = -v6 & 0x3F;
    }
  }

  *a1 = result;
  *(a1 + 8) = *(a4 + 8);
  return result;
}

uint64_t std::__copy_backward_unaligned[abi:ne200100]<std::vector<BOOL>,true>(uint64_t result, void *a2, unsigned int a3, uint64_t a4)
{
  v4 = 8 * a2 + a3;
  if (v4 <= 0)
  {
    v9 = *a4;
    LODWORD(v7) = *(a4 + 8);
  }

  else
  {
    if (a3)
    {
      if (v4 >= a3)
      {
        v5 = a3;
      }

      else
      {
        v5 = 8 * a2 + a3;
      }

      v4 -= v5;
      v6 = (-1 << (a3 - v5)) & (0xFFFFFFFFFFFFFFFFLL >> -a3) & *a2;
      v7 = *(a4 + 8);
      if (v5 >= v7)
      {
        v8 = *(a4 + 8);
      }

      else
      {
        v8 = v5;
      }

      v9 = *a4;
      if (v8)
      {
        v10 = v6 >> (a3 - v7);
        if (v7 > a3)
        {
          v10 = v6 << (v7 - a3);
        }

        *v9 = *v9 & ~((-1 << (v7 - v8)) & (0xFFFFFFFFFFFFFFFFLL >> -v7)) | v10;
        LODWORD(v7) = (v7 - v8) & 0x3F;
        *(a4 + 8) = v7;
        v5 -= v8;
      }

      if (v5 >= 1)
      {
        v11 = *--v9;
        *a4 = v9;
        LODWORD(v7) = -v5 & 0x3F;
        *(a4 + 8) = v7;
        *v9 = v11 & ~(-1 << -v5) | (v6 << (v5 + v8 - a3 + (-v5 & 0x3F)));
      }
    }

    else
    {
      LODWORD(v7) = *(a4 + 8);
      v9 = *a4;
    }

    v12 = 64 - v7;
    v13 = 0xFFFFFFFFFFFFFFFFLL >> -v7;
    if (v4 >= 64)
    {
      v14 = *v9;
      do
      {
        v15 = v4;
        v17 = *--a2;
        v16 = v17;
        *v9 = v14 & ~v13 | (v17 >> v12);
        v18 = *--v9;
        v14 = v18 & v13 | (v16 << v7);
        *v9 = v14;
        v4 = v15 - 64;
      }

      while (v15 > 0x7F);
      *a4 = v9;
    }

    if (v4 >= 1)
    {
      v19 = *(a2 - 1) & (-1 << -v4);
      if (v4 >= v7)
      {
        v20 = v7;
      }

      else
      {
        v20 = v4;
      }

      *v9 = *v9 & ~((-1 << (v7 - v20)) & v13) | (v19 >> v12);
      LODWORD(v7) = (v7 - v20) & 0x3F;
      *(a4 + 8) = v7;
      if (v4 - v20 >= 1)
      {
        v21 = *--v9;
        *a4 = v9;
        *(a4 + 8) = (v20 - v4) & 0x3F;
        *v9 = v21 & ~(-1 << (v20 - v4)) | (v19 << (v4 + ((v20 - v4) & 0x3F)));
        LODWORD(v7) = (v20 - v4) & 0x3F;
      }
    }
  }

  *result = v9;
  *(result + 8) = v7;
  return result;
}

void sub_18F802350(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va1, a9);
  va_start(va, a9);
  v10 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  _Block_object_dispose(va1, 8);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_18F8026A8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va1, a9);
  va_start(va, a9);
  v10 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  _Block_object_dispose(va1, 8);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_18F802A04(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va1, a9);
  va_start(va, a9);
  v10 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  _Block_object_dispose(va1, 8);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_18F802D44(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va1, a9);
  va_start(va, a9);
  v10 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  _Block_object_dispose(va1, 8);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_18F80313C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27)
{
  _Block_object_dispose(&a17, 8);
  PropertyMarshaller::~PropertyMarshaller(&a27);
  _Block_object_dispose(&a23, 8);
  _Unwind_Resume(a1);
}

void sub_18F8034A0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va1, a11);
  va_start(va, a11);
  v12 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  _Block_object_dispose(va1, 8);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_18F803884(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va1, a11);
  va_start(va, a11);
  v12 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  _Block_object_dispose(va1, 8);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_18F803C74(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va1, a9);
  va_start(va, a9);
  v10 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  _Block_object_dispose(va1, 8);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_18F803F9C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va1, a11);
  va_start(va, a11);
  v12 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  _Block_object_dispose(va1, 8);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_18F804380(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    operator delete(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_18F805218(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, void *__p, uint64_t a31)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void __destroy_helper_block_e8_40c39_ZTSNSt3__16vectorIhNS_9allocatorIhEEEE(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2)
  {
    *(a1 + 48) = v2;
    operator delete(v2);
  }
}

uint64_t __copy_helper_block_e8_40c39_ZTSNSt3__16vectorIhNS_9allocatorIhEEEE(uint64_t a1, uint64_t a2)
{
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  v2 = a1 + 40;
  *(v2 + 16) = 0;
  return std::vector<unsigned char>::__init_with_size[abi:ne200100]<unsigned char *,unsigned char *>(v2, *(a2 + 40), *(a2 + 48), *(a2 + 48) - *(a2 + 40));
}

void sub_18F805920(_Unwind_Exception *a1)
{
  objc_destroyWeak((v2 + 40));
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v3 - 136));
  objc_destroyWeak((v3 - 128));
  _Unwind_Resume(a1);
}

void sub_18F806140(_Unwind_Exception *a1)
{
  _Block_object_dispose((v2 - 96), 8);
  objc_destroyWeak((v1 + 40));
  _Unwind_Resume(a1);
}

uint64_t MP3AudioStream::HandleDiscontinuity(MP3AudioStream *this)
{
  *(this + 59) = 0;
  *(this + 356) = 0;
  *(this + 364) = 0;
  *(this + 380) = 0;
  MP3AudioStream::Resync(this);
  return 0;
}

uint64_t MP3AudioStream::Resync(MP3AudioStream *this)
{
  v2 = 0;
  v3 = *(this + 1);
  v4 = *(v3 + 88);
  v5 = *(v3 + 96);
  v6 = v4 + *(v3 + 80);
  v8 = v5 < v4 || v6 <= v5;
  v9 = v6 - v5;
  if (v8)
  {
    v10 = 0;
  }

  else
  {
    v10 = v9;
  }

  if (!v8 && v9)
  {
    v2 = *(v3 + 72) + (v5 - v4);
  }

  v71 = 0u;
  v72 = 0u;
  v69 = 0u;
  v70 = 0u;
  *(this + 108) = 0;
  v11 = v10 - 4;
  v12 = 4;
  v13 = -3;
  v67 = v10;
  while (2)
  {
    v66 = v12;
    i = 0;
    v15 = 0;
    v79 = 0;
    while (MP3AudioStream::ScanForSyncWord(this, v10, v2, &v79, &v75, 0))
    {
      v69 = v75;
      *(&v70 + 1) = *(&v76 + 1);
      v71 = v77;
      v72 = v78;
      v16 = v79;
      v17 = DWORD2(v75);
      if (v15)
      {
        goto LABEL_39;
      }

      if (v10 - v79 < DWORD2(v75))
      {
        i = 0;
        *(this + 108) = DWORD2(v75) + v79;
        goto LABEL_85;
      }

      v73[0] = v2 + v79;
      v73[1] = v73[0];
      v73[2] = v73[0] + v11 - v79;
      v74 = 0;
      if ((v73[0] & 3) != 0)
      {
        v18 = 0;
        v19 = v2 + 1 + v79;
        v20 = -8;
        v21 = (v2 + v79);
        do
        {
          v22 = v20;
          if (v21 >= v2 + v79 + (v11 - v79))
          {
            v23 = 255;
          }

          else
          {
            v23 = *v21;
          }

          v18 = v23 | (v18 << 8);
          ++v21;
          v20 = v22 + 8;
        }

        while ((v19++ & 3) != 0);
        v73[0] = v21;
        LODWORD(v74) = v18 << (16 - v22);
        HIDWORD(v74) = v22 + 16;
      }

      v25 = *(this + 1);
      v26 = VBRIHeader::Deserialize(v25 + 192, v73, 1);
      v68 = v26 != 0;
      if (v26)
      {
        if (!GetMetaHeader(v25 + 240, (v2 + v16), v11 - v16))
        {
          v10 = v67;
LABEL_39:
          v36 = v17 + v16;
          for (i = 1; v36 <= v11; ++i)
          {
            v37 = (v2 + v36);
            if (*v37 != 255)
            {
              break;
            }

            v38 = v37[1];
            if (v38 < 0xE0)
            {
              break;
            }

            v39 = (v37[2] << 8) | (v38 << 16) | v37[3];
            v75 = 0u;
            v76 = 0u;
            v77 = 0u;
            v78 = 0u;
            if (!ParseMPEGSyncWord(v39 | 0xFF000000, &v75))
            {
              break;
            }

            if (v13 + i == 1)
            {
              i = v66;
              goto LABEL_85;
            }

            v36 += DWORD2(v75);
          }

          if (v36 >= v11)
          {
            break;
          }

          v40 = v16 + 1;
          v79 = v16 + 1;
          goto LABEL_77;
        }

        v28 = *(v25 + 248);
        if (v28)
        {
          *(this + 52) = *(v25 + 252);
        }

        if ((v28 & 2) == 0)
        {
          if ((v28 & 1) == 0)
          {
            if ((v28 & 0x10) != 0)
            {
              goto LABEL_67;
            }

            goto LABEL_76;
          }

          v29 = 0;
          v68 = 1;
          goto LABEL_52;
        }

        v48 = *(v25 + 256);
        v32 = v48 >= v17;
        v33 = v48 - v17;
        if (!v32)
        {
          v33 = 0;
        }

        *(this + 106) = v33;
        if ((v28 & 1) == 0)
        {
          if ((v28 & 0x10) != 0)
          {
LABEL_67:
            for (j = v17 + v16; j <= v11; ++j)
            {
              v50 = (v2 + j);
              if (*v50 == 255)
              {
                v51 = v50[1];
                if (v51 >= 0xE0)
                {
                  v52 = (v50[2] << 8) | (v51 << 16) | v50[3];
                  v75 = 0u;
                  v76 = 0u;
                  v77 = 0u;
                  v78 = 0u;
                  if (ParseMPEGSyncWord(v52 | 0xFF000000, &v75))
                  {
                    if ((v28 & 2) == 0)
                    {
                      v42 = 1651663220;
                      *(this + 107) = v76;
                      goto LABEL_75;
                    }

                    v33 = *(this + 106);
                    v35 = v76;
                    LODWORD(v53) = HIDWORD(v71);
                    *(this + 52) = vcvtpd_u64_f64(v33 / vcvtd_n_f64_u32(v76, 3uLL) * (*(&v70 + 1) / v53));
                    v68 = 1;
                    goto LABEL_49;
                  }
                }
              }
            }

            *(this + 108) = j + 4;
            v54 = *(this + 1);
            if (j == -4)
            {
              goto LABEL_107;
            }

            v16 = 0;
LABEL_106:
            result = 0;
            v65 = *(v54 + 96) + v16;
LABEL_108:
            *(v54 + 96) = v65;
            return result;
          }

          v41 = 0;
          v68 = 1;
          goto LABEL_50;
        }

        v30 = *(this + 52);
      }

      else
      {
        v30 = *(v25 + 200);
        *(this + 52) = v30;
        v31 = *(v25 + 196);
        v32 = v31 >= v17;
        v33 = v31 - v17;
        if (!v32)
        {
          v33 = 0;
        }

        *(this + 106) = v33;
      }

      LODWORD(v27) = HIDWORD(v71);
      v34 = v30 * v27 / *(&v70 + 1);
      if (v34 <= 0.0)
      {
        v35 = 0;
      }

      else
      {
        v35 = (v33 * 8.0 / v34);
      }

LABEL_49:
      *(this + 107) = v35;
      v41 = 1;
LABEL_50:
      (*(*this + 96))(this, v33);
      v42 = 1650683508;
      if ((v41 & 1) == 0)
      {
        goto LABEL_75;
      }

      v29 = 1;
LABEL_52:
      (*(*this + 80))(this, *(this + 52));
      v43 = *&v68 & ((*(v25 + 248) & 0x20u) >> 5);
      *(this + 448) = v68 & ((*(v25 + 248) & 0x20u) >> 5);
      if (v43 == 1)
      {
        *(this + 42) = *(v25 + 380);
        *(this + 43) = *(v25 + 382);
        v42 = 1885564532;
        if (v29)
        {
          goto LABEL_56;
        }
      }

      else
      {
        v42 = 1885564532;
        if (v29)
        {
LABEL_56:
          v44 = *(this + 1);
          v80[0] = 1;
          v45 = *(v44 + 24);
          if (v45)
          {
            v45(*(v44 + 40), *(v44 + 8), 1651663220, v80);
            v46 = *(this + 1);
            v47 = *(v46 + 24);
            v80[0] = 1;
            if (v47)
            {
              v47(*(v46 + 40), *(v46 + 8), 1650683508, v80);
            }
          }

          else
          {
            v80[0] = 1;
          }

          v42 = 1885564532;
        }
      }

LABEL_75:
      AudioFileStreamWrapper::CallPropertyListener(*(this + 1), v42, 1);
LABEL_76:
      v40 = v17 + v16;
      v79 = v17 + v16;
      v10 = v67;
LABEL_77:
      v15 = 1;
      if (v40 > v11)
      {
        break;
      }
    }

    ++v13;
    v12 = v66 - 1;
    if (v66 != 1)
    {
      continue;
    }

    break;
  }

  v16 = 0;
LABEL_85:
  v54 = *(this + 1);
  if (*(this + 108))
  {
    goto LABEL_106;
  }

  if (!i)
  {
LABEL_107:
    result = 0;
    v65 = *(v54 + 88) + *(v54 + 80);
    goto LABEL_108;
  }

  v55 = *(v54 + 96) + v16;
  *(v54 + 96) = v55;
  if (!*(v54 + 112))
  {
    *(this + 86) = BYTE4(v69);
    *(this + 87) = BYTE5(v69);
    *(this + 29) = HIDWORD(v69) + 8;
    (*(*this + 56))(this, &v70 + 8);
    *(this + 13) = v55;
    if (*(this + 448) == 1)
    {
      v56 = (*(*this + 72))(this);
      *(this + 20) = v56 * HIDWORD(v71) - (*(this + 42) + *(this + 43));
      v57 = *(this + 1);
      LODWORD(v75) = 1;
      if ((*(v57 + 106) & 1) == 0)
      {
        *(v57 + 106) = 1;
        v58 = *(v57 + 24);
        if (v58)
        {
          v58(*(v57 + 40), *(v57 + 8), 1886283375, &v75);
        }
      }
    }

    v59 = *(this + 1);
    LODWORD(v75) = 1;
    if ((*(v59 + 104) & 1) == 0)
    {
      *(v59 + 104) = 1;
      v60 = *(v59 + 24);
      if (v60)
      {
        v60(*(v59 + 40), *(v59 + 8), 1717988724, &v75);
        v59 = *(this + 1);
      }
    }

    LODWORD(v75) = 1;
    if ((*(v59 + 105) & 1) == 0)
    {
      *(v59 + 105) = 1;
      v61 = *(v59 + 24);
      if (v61)
      {
        v61(*(v59 + 40), *(v59 + 8), 1684434292, &v75);
        v59 = *(this + 1);
      }
    }

    LODWORD(v75) = 1;
    v62 = *(v59 + 24);
    if (v62)
    {
      v62(*(v59 + 40), *(v59 + 8), 1685022310, &v75);
      v59 = *(this + 1);
    }

    LODWORD(v75) = 1;
    if (!*(v59 + 112))
    {
      *(v59 + 112) = 1;
      v63 = *(v59 + 24);
      if (v63)
      {
        v63(*(v59 + 40), *(v59 + 8), 1919247481, &v75);
      }
    }
  }

  return 1;
}

BOOL MP3AudioStream::ScanForSyncWord(uint64_t a1, int a2, uint64_t a3, int *a4, uint64_t a5, int a6)
{
  v9 = *a4;
  v45 = a2;
  if (*a4 <= a2 - 4)
  {
    v12 = v9;
    v13 = a2 - 4;
    v9 = a2 - 3;
    v10 = 1;
    while (1)
    {
      v14 = a3 + v12;
      if (*(a3 + v12) == 255)
      {
        v15 = *(v14 + 1);
        if (v15 >= 0xE0)
        {
          v16 = (*(v14 + 2) << 8) | (v15 << 16) | *(v14 + 3);
          *(a5 + 32) = 0u;
          *(a5 + 48) = 0u;
          *a5 = 0u;
          *(a5 + 16) = 0u;
          if (ParseMPEGSyncWord(v16 | 0xFF000000, a5))
          {
            if ((*(a1 + 409) & 1) != 0 || *(*(a1 + 8) + 105) != 1 || (*(a5 + 24) == *(a1 + 24) ? (v17 = *(a5 + 44) == *(a1 + 44)) : (v17 = 0), v17))
            {
              a2 = v12;
              goto LABEL_65;
            }
          }

          goto LABEL_38;
        }
      }

      v18 = *v14 == 17481 && *(v14 + 2) == 51;
      if (v18 || (*v14 == 16724 ? (v19 = *(v14 + 2) == 71) : (v19 = 0), v19))
      {
        v20 = *(a1 + 8);
        v21 = v14 - *(v20 + 72);
        *(a1 + 396) = v21;
        *(a1 + 400) = *(v20 + 88) + v21;
        if (a6)
        {
          if (*(a1 + 408) < 0)
          {
            v22 = *(v20 + 48);
            v23 = *(v20 + 56) - v22;
            if (v23)
            {
              v24 = 0;
              v25 = v23 >> 2;
              v26 = 1;
              do
              {
                v17 = *(v22 + 4 * v24) == 1768174437;
                LODWORD(v23) = v17;
                v24 = v26++;
              }

              while (!v17 && v25 > v24);
            }

            *(a1 + 408) = v23;
            if (!v23)
            {
              goto LABEL_38;
            }

LABEL_36:
            v46 = 0;
            v28 = *(v20 + 24);
            if (v28)
            {
              v28(*(v20 + 40), *(v20 + 8), 1768174437, &v46);
            }

            goto LABEL_38;
          }

          if (*(a1 + 408))
          {
            goto LABEL_36;
          }
        }
      }

LABEL_38:
      v10 = v12++ < v13;
      if (v9 == v12)
      {
        a2 = v45;
        goto LABEL_40;
      }
    }
  }

  v10 = 0;
  if (v9 > a2 - 3)
  {
    goto LABEL_65;
  }

LABEL_40:
  v29 = v9;
  v30 = a2 - 2;
  do
  {
    v31 = a3 + v29;
    v32 = *(a3 + v29) == 17481 && *(a3 + v29 + 2) == 51;
    if (v32 || (*v31 == 16724 ? (v33 = *(v31 + 2) == 71) : (v33 = 0), v33))
    {
      v34 = *(a1 + 8);
      v35 = v31 - *(v34 + 72);
      *(a1 + 396) = v35;
      *(a1 + 400) = *(v34 + 88) + v35;
      if (a6)
      {
        if ((*(a1 + 408) & 0x80000000) == 0)
        {
          if (!*(a1 + 408))
          {
            goto LABEL_63;
          }

LABEL_61:
          v47 = 0;
          v42 = *(v34 + 24);
          if (v42)
          {
            v42(*(v34 + 40), *(v34 + 8), 1768174437, &v47);
          }

          goto LABEL_63;
        }

        v36 = *(v34 + 48);
        v37 = *(v34 + 56) - v36;
        if (v37)
        {
          v38 = 0;
          v39 = v37 >> 2;
          v40 = 1;
          do
          {
            v17 = *(v36 + 4 * v38) == 1768174437;
            LODWORD(v37) = v17;
            v38 = v40++;
          }

          while (!v17 && v39 > v38);
        }

        *(a1 + 408) = v37;
        if (v37)
        {
          goto LABEL_61;
        }
      }
    }

LABEL_63:
    ++v29;
  }

  while (v30 != v29);
  a2 = v45;
LABEL_65:
  *a4 = a2;
  return v10;
}

uint64_t VBRIHeader::Deserialize(uint64_t a1, uint64_t a2, int a3)
{
  if (a3)
  {
    v3 = 496;
  }

  else
  {
    v3 = 432;
  }

  v4 = *(a2 + 16);
  v5 = *a2;
  v6 = v4 - *a2;
  v7 = *(a2 + 28);
  if (v7 + 8 * v6 < v3)
  {
    return 4294967285;
  }

  if (v7 >= 288)
  {
    v12 = (a2 + 24);
    v23 = *(a2 + 24);
    v13 = v7 - 32;
    *(a2 + 28) = v13;
    goto LABEL_23;
  }

  v11 = 288 - v7;
  *(a2 + 24) = 0;
  *(a2 + 28) = 0;
  v12 = (a2 + 24);
  if ((288 - v7) < 0x20)
  {
LABEL_10:
    v13 = -v11;
    *(a2 + 28) = -v11;
    v14 = *(a2 + 8);
    if ((v6 & ~(v6 >> 63) & 0xFFFFFFFC) != 0 && v14 <= v5)
    {
      v22 = *v5++;
      v23 = bswap32(v22) << v11;
      *(a2 + 24) = v23;
      *(a2 + 28) = v13;
      v13 = 32 - v11;
      *a2 = v5;
      goto LABEL_25;
    }

    v16 = 0;
    v17 = 4;
    v18 = v5;
    do
    {
      v19 = v16 << 8;
      *v12 = v19;
      v20 = 255;
      if (v18 < v4 && v18 >= v14)
      {
        v20 = *v18;
      }

      v16 = v20 | v19;
      *v12 = v16;
      v18 = (v18 + 1);
      --v17;
    }

    while (v17);
    *a2 = ++v5;
    v23 = v16 << v11;
    *(a2 + 24) = v16 << v11;
    *(a2 + 28) = v13;
    if (v11)
    {
      v13 = 32 - v11;
      goto LABEL_25;
    }

LABEL_23:
    v21 = v23;
    goto LABEL_35;
  }

  v5 = (v5 + ((v11 >> 3) & 0x1FFFFFFC));
  *a2 = v5;
  v11 &= 0x1Fu;
  if (v11)
  {
    v6 = v4 - v5;
    goto LABEL_10;
  }

  v13 = 0;
  v23 = 0;
  *(a2 + 28) = -32;
  v14 = *(a2 + 8);
LABEL_25:
  if (((v4 - v5) & ~((v4 - v5) >> 63) & 0xFFFFFFFC) != 0 && v14 <= v5)
  {
    v24 = bswap32(*v5);
    *v12 = v24;
  }

  else
  {
    v25 = 4;
    v26 = v5;
    v24 = v23;
    do
    {
      v27 = v24 << 8;
      *v12 = v27;
      v28 = 255;
      if (v26 < v4 && v26 >= v14)
      {
        v28 = *v26;
      }

      v24 = v28 | v27;
      *v12 = v24;
      v26 = (v26 + 1);
      --v25;
    }

    while (v25);
  }

  *(a2 + 28) = v13;
  *a2 = ++v5;
  v21 = (v24 >> v13) | v23;
  if (!v13)
  {
    *v12 = 0;
    if (v21 == 1447187017)
    {
      goto LABEL_39;
    }

    return 0xFFFFFFFFLL;
  }

  v23 = v24 << -v13;
  *v12 = v23;
LABEL_35:
  if (v21 != 1447187017)
  {
    return 0xFFFFFFFFLL;
  }

  if (v13 > 31)
  {
    v29 = 32;
    goto LABEL_42;
  }

LABEL_39:
  v29 = 32 - v13;
  *v12 = 0;
  if ((32 - v13) >= 0x20)
  {
    *a2 = ++v5;
    v29 &= 0x1Fu;
    if (!v29)
    {
      goto LABEL_58;
    }
  }

  v23 = 0;
  v13 = 0;
LABEL_42:
  v30 = v13 - v29;
  *(a2 + 28) = v13 - v29;
  if (v13 - v29 >= 0)
  {
    v31 = v23 << v29;
    goto LABEL_55;
  }

  v32 = *(a2 + 8);
  if (((v4 - v5) & ~((v4 - v5) >> 63) & 0xFFFFFFFC) != 0 && v32 <= v5)
  {
    v23 = bswap32(*v5);
  }

  else
  {
    v33 = 4;
    v34 = v5;
    do
    {
      v35 = v23 << 8;
      *v12 = v35;
      v36 = 255;
      if (v34 < v4 && v34 >= v32)
      {
        v36 = *v34;
      }

      v23 = v36 | v35;
      *v12 = v23;
      v34 = (v34 + 1);
      --v33;
    }

    while (v33);
  }

  *a2 = ++v5;
  if (v30 == -32)
  {
    *v12 = 0;
LABEL_58:
    v37 = 0;
    v31 = 0;
    v30 = 0;
    *(a2 + 28) = -16;
    goto LABEL_59;
  }

  v31 = v23 << -v30;
  v30 += 32;
LABEL_55:
  v37 = HIWORD(v31);
  v38 = v30 - 16;
  *(a2 + 24) = v31;
  *(a2 + 28) = v30 - 16;
  if (v30 >= 16)
  {
    v39 = v31 << 16;
    goto LABEL_70;
  }

LABEL_59:
  v40 = *(a2 + 8);
  if (((v4 - v5) & ~((v4 - v5) >> 63) & 0xFFFFFFFC) != 0 && v40 <= v5)
  {
    v31 = bswap32(*v5);
    *v12 = v31;
  }

  else
  {
    v41 = 4;
    v42 = v5;
    do
    {
      v43 = v31 << 8;
      *v12 = v43;
      v44 = 255;
      if (v42 < v4 && v42 >= v40)
      {
        v44 = *v42;
      }

      v31 = v44 | v43;
      *v12 = v31;
      v42 = (v42 + 1);
      --v41;
    }

    while (v41);
  }

  v38 = v30 + 16;
  v90 = v30 == -16;
  *a2 = ++v5;
  v37 |= v31 >> (v30 + 16);
  v45 = v31 << (16 - v30);
  if (v90)
  {
    v39 = 0;
  }

  else
  {
    v39 = v45;
  }

LABEL_70:
  *(a1 + 2) = v37;
  *(a2 + 24) = v39;
  *(a2 + 28) = v38 - 32;
  if (v38 - 32 < 0)
  {
    v48 = *(a2 + 8);
    if (((v4 - v5) & ~((v4 - v5) >> 63) & 0xFFFFFFFC) != 0 && v48 <= v5)
    {
      v49 = bswap32(*v5);
    }

    else
    {
      v50 = 4;
      v51 = v5;
      v49 = v39;
      do
      {
        v52 = v49 << 8;
        *v12 = v52;
        v53 = 255;
        if (v51 < v4 && v51 >= v48)
        {
          v53 = *v51;
        }

        v49 = v53 | v52;
        *v12 = v49;
        v51 = (v51 + 1);
        --v50;
      }

      while (v50);
    }

    *a2 = ++v5;
    v47 = (v49 >> v38) | v39;
    if (v38)
    {
      v39 = v49 << -v38;
    }

    else
    {
      v39 = 0;
    }

    *(a2 + 24) = v39;
    v46 = v38 - 32;
  }

  else
  {
    v46 = v38 - 64;
    v38 -= 32;
    v47 = v39;
  }

  *(a1 + 4) = v47;
  *(a2 + 28) = v46;
  if (v46 < 0)
  {
    v55 = *(a2 + 8);
    if (((v4 - v5) & ~((v4 - v5) >> 63) & 0xFFFFFFFC) != 0 && v55 <= v5)
    {
      v56 = bswap32(*v5);
    }

    else
    {
      v57 = 4;
      v58 = v5;
      v56 = v39;
      do
      {
        v59 = v56 << 8;
        *v12 = v59;
        v60 = 255;
        if (v58 < v4 && v58 >= v55)
        {
          v60 = *v58;
        }

        v56 = v60 | v59;
        *v12 = v56;
        v58 = (v58 + 1);
        --v57;
      }

      while (v57);
    }

    *a2 = ++v5;
    v54 = (v56 >> v38) | v39;
    if (v38)
    {
      v39 = v56 << -v38;
    }

    else
    {
      v39 = 0;
    }

    *(a2 + 24) = v39;
    *(a2 + 28) = v38;
  }

  else
  {
    v38 = v46;
    v54 = v39;
  }

  result = 0;
  *(a1 + 8) = v54;
  *a1 = 0;
  if (a3)
  {
    v61 = HIWORD(v39);
    v62 = v38 - 16;
    *(a2 + 28) = v38 - 16;
    if (v38 - 16 < 0)
    {
      v64 = *(a2 + 8);
      if (((v4 - v5) & ~((v4 - v5) >> 63) & 0xFFFFFFFC) != 0 && v64 <= v5)
      {
        v39 = bswap32(*v5);
      }

      else
      {
        v65 = 4;
        v66 = v5;
        do
        {
          v67 = v39 << 8;
          *v12 = v67;
          v68 = 255;
          if (v66 < v4 && v66 >= v64)
          {
            v68 = *v66;
          }

          v39 = v68 | v67;
          *v12 = v39;
          v66 = (v66 + 1);
          --v65;
        }

        while (v65);
      }

      *a2 = ++v5;
      v62 = v38 + 16;
      v61 |= v39 >> (v38 + 16);
      if (v38 == -16)
      {
        v69 = 0;
        v63 = 0;
        *(a2 + 24) = 0xFFFFFFF000000000;
        goto LABEL_115;
      }

      v63 = v39 << (16 - v38);
    }

    else
    {
      v63 = v39 << 16;
    }

    v69 = HIWORD(v63);
    v70 = v62 - 16;
    *(a2 + 24) = v63;
    *(a2 + 28) = v62 - 16;
    if (v62 - 16 >= 0)
    {
      v71 = v63 << 16;
      goto LABEL_125;
    }

    v64 = *(a2 + 8);
LABEL_115:
    if (((v4 - v5) & ~((v4 - v5) >> 63) & 0xFFFFFFFC) != 0 && v64 <= v5)
    {
      v63 = bswap32(*v5);
    }

    else
    {
      v72 = 4;
      v73 = v5;
      do
      {
        v74 = v63 << 8;
        *v12 = v74;
        v75 = 255;
        if (v73 < v4 && v73 >= v64)
        {
          v75 = *v73;
        }

        v63 = v75 | v74;
        *v12 = v63;
        v73 = (v73 + 1);
        --v72;
      }

      while (v72);
    }

    *a2 = ++v5;
    v70 = v62 + 16;
    v69 |= v63 >> (v62 + 16);
    if (v62 == -16)
    {
      v76 = 0;
      v71 = 0;
      *(a2 + 24) = 0xFFFFFFF000000000;
      *(a1 + 12) = v69;
      goto LABEL_129;
    }

    v71 = v63 << (16 - v62);
LABEL_125:
    *(a1 + 12) = v69;
    v76 = HIWORD(v71);
    v77 = v70 - 16;
    *(a2 + 24) = v71;
    *(a2 + 28) = v70 - 16;
    if (v70 - 16 >= 0)
    {
      v78 = v71 << 16;
      goto LABEL_139;
    }

    v64 = *(a2 + 8);
LABEL_129:
    if (((v4 - v5) & ~((v4 - v5) >> 63) & 0xFFFFFFFC) != 0 && v64 <= v5)
    {
      v71 = bswap32(*v5);
    }

    else
    {
      v79 = 4;
      v80 = v5;
      do
      {
        v81 = v71 << 8;
        *v12 = v81;
        v82 = 255;
        if (v80 < v4 && v80 >= v64)
        {
          v82 = *v80;
        }

        v71 = v82 | v81;
        *v12 = v71;
        v80 = (v80 + 1);
        --v79;
      }

      while (v79);
    }

    *a2 = ++v5;
    v77 = v70 + 16;
    v76 |= v71 >> (v70 + 16);
    if (v70 == -16)
    {
      v83 = 0;
      v78 = 0;
      *(a2 + 24) = 0xFFFFFFF000000000;
      *(a1 + 14) = v76;
      goto LABEL_143;
    }

    v78 = v71 << (16 - v70);
LABEL_139:
    *(a1 + 14) = v76;
    v83 = HIWORD(v78);
    v84 = v77 - 16;
    *(a2 + 24) = v78;
    *(a2 + 28) = v77 - 16;
    if (v77 - 16 >= 0)
    {
      v85 = v78 << 16;
LABEL_157:
      *v12 = v85;
      *(a1 + 16) = v83;
      v92 = v61;
      if (v84 + 8 * (v4 - v5) < 8 * v61 * v76)
      {
        return 4294967285;
      }

      std::vector<int>::resize((a1 + 24), v61);
      if (v92)
      {
        v93 = 0;
        v94 = 8 * *(a1 + 14);
        v96 = *(a2 + 8);
        v95 = *(a2 + 16);
        v97 = *a2;
        v98 = *(a1 + 24);
        do
        {
          if ((v94 - 33) >= 0xFFFFFFE0)
          {
            v100 = *(a2 + 24);
            v99 = v100 >> (32 - v94);
            v101 = *(a2 + 28) - v94;
            *(a2 + 28) = v101;
            if (v101 < 0)
            {
              if (((v95 - v97) & ~((v95 - v97) >> 63) & 0xFFFFFFFC) == 0 || v96 > v97)
              {
                v104 = 4;
                v105 = v97;
                do
                {
                  v106 = v100 << 8;
                  *v12 = v106;
                  v107 = 255;
                  if (v105 < v95 && v105 >= v96)
                  {
                    v107 = *v105;
                  }

                  v100 = v107 | v106;
                  *v12 = v100;
                  v105 = (v105 + 1);
                  --v104;
                }

                while (v104);
              }

              else
              {
                v100 = bswap32(*v97);
              }

              *(a2 + 28) = v101 + 32;
              *a2 = ++v97;
              v99 |= v100 >> v101;
              if (v101 == -32)
              {
                v102 = 0;
              }

              else
              {
                v102 = v100 << -v101;
              }
            }

            else
            {
              v102 = v100 << v94;
            }

            *v12 = v102;
          }

          else
          {
            v99 = 0;
          }

          *(v98 + 4 * v93++) = v99;
        }

        while (v93 != v92);
      }

      result = 0;
      *a1 = 1;
      return result;
    }

    v64 = *(a2 + 8);
LABEL_143:
    if (((v4 - v5) & ~((v4 - v5) >> 63) & 0xFFFFFFFC) != 0 && v64 <= v5)
    {
      v78 = bswap32(*v5);
    }

    else
    {
      v86 = 4;
      v87 = v5;
      do
      {
        v88 = v78 << 8;
        *v12 = v88;
        v89 = 255;
        if (v87 < v4 && v87 >= v64)
        {
          v89 = *v87;
        }

        v78 = v89 | v88;
        *v12 = v78;
        v87 = (v87 + 1);
        --v86;
      }

      while (v86);
    }

    v91 = v77 + 16;
    v90 = v77 == -16;
    *(a2 + 28) = v77 + 16;
    *a2 = ++v5;
    v83 |= v78 >> (v77 + 16);
    if (v77 == -16)
    {
      v85 = 0;
    }

    else
    {
      v85 = v78 << (16 - v77);
    }

    if (v90)
    {
      v84 = 0;
    }

    else
    {
      v84 = v91;
    }

    goto LABEL_157;
  }

  return result;
}

uint64_t MP3AudioStream::GeneratePackets(uint64_t a1)
{
  v2 = *(a1 + 236);
  v3 = -1;
  if (v2 > 238)
  {
    if (v2 == 375)
    {
      LODWORD(v4) = *(a1 + 256);
      v5 = *(a1 + 264);
      goto LABEL_122;
    }

    if (v2 == 260)
    {
      v6 = *(a1 + 256);
      v7 = *(a1 + 8);
      v8 = *(a1 + 264);
      goto LABEL_34;
    }

    if (v2 != 239)
    {
LABEL_11:
      *(a1 + 236) = v3;
      return 0;
    }

    while (1)
    {
LABEL_13:
      v10 = *(a1 + 8);
      v11 = *(v10 + 88);
      v12 = *(v10 + 96);
      v13 = v11 + *(v10 + 80);
      v3 = 239;
      if (v12 < v11 || v13 <= v12)
      {
        goto LABEL_11;
      }

      v15 = v13 - v12;
      if (!v15)
      {
        goto LABEL_11;
      }

      if (*(a1 + 364) == 1)
      {
        v16 = *(a1 + 368);
        v17 = 4 - v16 >= v15 ? v15 : (4 - v16);
        *(a1 + 372) = v17;
        memcpy((a1 + 376 + v16), (*(v10 + 72) + (v12 - v11)), v17);
        v18 = *(a1 + 368) + *(a1 + 372);
        *(a1 + 368) = v18;
        if (v18 >= 4)
        {
          if (*(a1 + 376) == 255)
          {
            v19 = *(a1 + 377);
            if (v19 >= 0xE0)
            {
              v20 = (*(a1 + 378) << 8) | (v19 << 16) | *(a1 + 379);
              *size = 0u;
              memset(v114, 0, sizeof(v114));
              v21 = ParseMPEGSyncWord(v20 | 0xFF000000, size);
              *(a1 + 364) = v21;
              v22 = size[1];
              *(a1 + 352) = size[1];
              if (v21)
              {
                if (*(v114 + 1) != *(a1 + 24) || HIDWORD(v114[1]) != *(a1 + 44))
                {
                  v23 = *(&v114[1] + 8);
                  *(a1 + 24) = *(v114 + 8);
                  *(a1 + 40) = v23;
                  *(a1 + 56) = *(&v114[2] + 1);
                  v24 = *(a1 + 8);
                  v107 = 1;
                  if ((*(v24 + 105) & 1) == 0)
                  {
                    *(v24 + 105) = 1;
                    v25 = *(v24 + 24);
                    if (v25)
                    {
                      v25(*(v24 + 40), *(v24 + 8), 1684434292, &v107);
                      v22 = *(a1 + 352);
                    }
                  }
                }

                if (*(a1 + 284) < v22)
                {
                  *(a1 + 284) = v22;
                  CADeprecated::CAAutoFree<unsigned char>::allocBytes((a1 + 288), v22, 0);
                }

                **(a1 + 288) = *(a1 + 376);
                v7 = *(a1 + 8);
                *(v7 + 96) += *(a1 + 372);
                v6 = *(a1 + 352) - 4;
                *(a1 + 256) = v6;
                v8 = (*(a1 + 288) + 4);
                *(a1 + 264) = v8;
LABEL_34:
                v107 = v6;
                StreamBuffer::Copy((v7 + 72), &v107, v8);
                v26 = v107;
                v27 = *(a1 + 256);
                *(a1 + 264) += v107;
                v28 = v27 - v26;
                *(a1 + 256) = v28;
                if (v28)
                {
                  v3 = 260;
                  goto LABEL_11;
                }

                v29 = *(a1 + 192);
                v29->mStartOffset = 0;
                v30 = *(a1 + 352);
                v29->mVariableFramesInPacket = 0;
                v29->mDataByteSize = v30;
                *(a1 + 320) += LODWORD(v114[0]);
                AudioFileStreamWrapper::CallPacketsProc(*(a1 + 8), v30, 1u, *(a1 + 288), v29, 1);
                ++*(a1 + 184);
              }
            }
          }

          *(a1 + 364) = 0;
        }
      }

      if (*(a1 + 380) != 1)
      {
        goto LABEL_77;
      }

      v31 = 0;
      v32 = *(a1 + 384);
      v33 = 4 - v32;
      v34 = *(a1 + 8);
      v35 = *(v34 + 88);
      v36 = *(v34 + 96);
      v37 = v35 + *(v34 + 80);
      v39 = v36 < v35 || v37 <= v36;
      v40 = v37 - v36;
      if (v39)
      {
        v41 = 0;
      }

      else
      {
        v41 = v40;
      }

      if (v41 >= v33)
      {
        v42 = v33;
      }

      else
      {
        v42 = v41;
      }

      *(a1 + 388) = v42;
      v43 = (a1 + 392);
      if (!v39 && v40)
      {
        v31 = (*(v34 + 72) + (v36 - v35));
      }

      memcpy(v43 + v32, v31, v42);
      v44 = *(a1 + 384) + *(a1 + 388);
      *(a1 + 384) = v44;
      if (v44 < 4)
      {
        goto LABEL_77;
      }

      v45 = *v43 == 17481 && *(a1 + 394) == 51;
      if (v45 || (*v43 == 16724 ? (v46 = *(a1 + 394) == 71) : (v46 = 0), v46))
      {
        v47 = -v44;
        *(a1 + 396) = -v44;
        v48 = *(a1 + 8);
        *(a1 + 400) = *(v48 + 88) + v47;
        if (*(a1 + 408) < 0)
        {
          v49 = 0;
          v50 = *(v48 + 48);
          v51 = *(v48 + 56) - v50;
          if (v51)
          {
            v52 = 0;
            v53 = v51 >> 2;
            v54 = 1;
            do
            {
              v45 = *(v50 + 4 * v52) == 1768174437;
              v49 = v45;
              v52 = v54++;
            }

            while (!v45 && v53 > v52);
          }

          *(a1 + 408) = v49;
          if (!v49)
          {
            goto LABEL_76;
          }

LABEL_73:
          v107 = 0;
          v56 = *(v48 + 24);
          if (v56)
          {
            v56(*(v48 + 40), *(v48 + 8), 1768174437, &v107);
          }

          *(a1 + 384) = 0;
          goto LABEL_76;
        }

        if (*(a1 + 408))
        {
          goto LABEL_73;
        }
      }

LABEL_76:
      *(a1 + 380) = 0;
LABEL_77:
      v57 = 0;
      v58 = *(a1 + 8);
      v59 = *(v58 + 88);
      v60 = *(v58 + 96);
      v61 = v59 + *(v58 + 80);
      v62 = v60 < v59 || v61 <= v60;
      v63 = v62;
      v64 = v61 - v60;
      if (!v62 && v64)
      {
        v57 = (*(v58 + 72) + (v60 - v59));
      }

      if (!v64)
      {
        v63 = 1;
      }

      if ((v63 & 1) == 0)
      {
        v106 = 0;
        *(a1 + 356) = 0;
        if (v64 >= 4)
        {
          v65 = 0;
          v66 = 0;
          while (MP3AudioStream::ScanForSyncWord(a1, v64, v57, &v106, &v107, 1))
          {
            v67 = *&v110;
            v68 = *(a1 + 24);
            v69 = DWORD1(v111);
            v70 = *(a1 + 44);
            if (*&v110 != v68 || DWORD1(v111) != v70)
            {
              if (v65)
              {
                AudioFileStreamWrapper::CallPacketsProc(*(a1 + 8), v66, v65, v57, *(a1 + 192), 1);
                v72 = *(a1 + 8);
                v73 = *(v72 + 96) + v66;
                v66 = 0;
                *(v72 + 96) = v73;
                *(a1 + 184) += v65;
                v68 = *(a1 + 24);
                v70 = *(a1 + 44);
              }

              *(a1 + 24) = v110;
              *(a1 + 40) = v111;
              *(a1 + 56) = v112;
              if (v67 != v68 || v69 != v70)
              {
                v75 = *(a1 + 8);
                v115[0] = 1;
                if ((*(v75 + 105) & 1) == 0)
                {
                  *(v75 + 105) = 1;
                  v76 = *(v75 + 24);
                  if (v76)
                  {
                    v76(*(v75 + 40), *(v75 + 8), 1684434292, v115);
                  }
                }
              }

              v65 = 0;
            }

            v77 = v106;
            v78 = v108;
            if (v64 - v106 < v108)
            {
              v82 = *(a1 + 8);
              if (v65)
              {
                AudioFileStreamWrapper::CallPacketsProc(v82, v66, v65, v57, *(a1 + 192), 1);
                v82 = *(a1 + 8);
                v83 = *(v82 + 12) + v66;
                *(v82 + 12) = v83;
                LODWORD(v77) = v77 - v66;
                *(a1 + 184) += v65;
              }

              else
              {
                v83 = *(v82 + 12);
              }

              *(a1 + 356) = 1;
              *(a1 + 360) = v109;
              *(v82 + 12) = v83 + v77;
              *(a1 + 352) = v78;
              goto LABEL_118;
            }

            *(a1 + 320) += v109;
            v79 = v65 + 1;
            if (*(a1 + 200) < v65 + 1)
            {
              v80 = (1 << -__clz(v65));
              *(a1 + 200) = v80;
              CADeprecated::CAAutoFree<AudioStreamPacketDescription>::reallocItems((a1 + 192), v80);
            }

            v81 = *(a1 + 192) + 16 * v65;
            *v81 = v77;
            *(v81 + 8) = 0;
            *(v81 + 12) = v78;
            v66 = v78 + v77;
            v106 = v78 + v77;
            ++v65;
            if ((v64 - (v78 + v77)) <= 3)
            {
              goto LABEL_112;
            }
          }

          v79 = v65;
LABEL_112:
          if (v79)
          {
            AudioFileStreamWrapper::CallPacketsProc(*(a1 + 8), v66, v79, v57, *(a1 + 192), 1);
            *(*(a1 + 8) + 96) += v66;
            *(a1 + 184) += v79;
          }
        }
      }

LABEL_118:
      if (*(a1 + 356) == 1)
      {
        v4 = *(a1 + 352);
        if (*(a1 + 284) < v4)
        {
          *(a1 + 284) = v4;
          CADeprecated::CAAutoFree<unsigned char>::allocBytes((a1 + 288), v4, 0);
          LODWORD(v4) = *(a1 + 352);
        }

        *(a1 + 256) = v4;
        v5 = *(a1 + 288);
        *(a1 + 264) = v5;
LABEL_122:
        v107 = v4;
        StreamBuffer::Copy((*(a1 + 8) + 72), &v107, v5);
        v84 = v107;
        v85 = *(a1 + 256);
        *(a1 + 264) += v107;
        v86 = v85 - v84;
        *(a1 + 256) = v86;
        if (v86)
        {
          v3 = 375;
          goto LABEL_11;
        }

        if (!*(a1 + 200))
        {
          *(a1 + 200) = 1;
          CADeprecated::CAAutoFree<AudioStreamPacketDescription>::reallocItems((a1 + 192), 1);
        }

        v87 = *(a1 + 192);
        v87->mStartOffset = 0;
        v88 = *(a1 + 352);
        v87->mVariableFramesInPacket = 0;
        v87->mDataByteSize = v88;
        *(a1 + 320) += *(a1 + 360);
        AudioFileStreamWrapper::CallPacketsProc(*(a1 + 8), v88, 1u, *(a1 + 288), v87, 1);
        ++*(a1 + 184);
      }

      else
      {
        v89 = 0;
        v90 = *(a1 + 8);
        v91 = *(v90 + 88);
        v92 = *(v90 + 96);
        v93 = v91 + *(v90 + 80);
        v95 = v92 < v91 || v93 <= v92;
        v96 = v93 - v92;
        if (v95)
        {
          v97 = 0;
        }

        else
        {
          v97 = v96;
        }

        if (!v95 && v96)
        {
          v89 = (*(v90 + 72) + (v92 - v91));
        }

        if (v97 != 1)
        {
          if ((v97 & 0xFFFFFFFE) != 2)
          {
            *(a1 + 364) = 0;
LABEL_153:
            *(a1 + 380) = 0;
            goto LABEL_164;
          }

          if (*v89 == 255)
          {
            v103 = v89[1];
            v102 = v103 > 0xDF;
            *(a1 + 364) = v103 > 0xDF;
            if (v97 != 2)
            {
              *(a1 + 380) = 0;
              if (v103 <= 0xDF)
              {
                goto LABEL_164;
              }

LABEL_162:
              *(a1 + 368) = v97;
              *(a1 + 376) = 0;
              memcpy((a1 + 376), v89, v97);
              if ((*(a1 + 380) & 1) == 0)
              {
                goto LABEL_164;
              }

LABEL_163:
              *(a1 + 384) = v97;
              *(a1 + 392) = 0;
              memcpy((a1 + 392), v89, v97);
              goto LABEL_164;
            }
          }

          else
          {
            v102 = 0;
            *(a1 + 364) = 0;
            if (v97 != 2)
            {
              goto LABEL_153;
            }
          }

          v104 = *v89;
          v105 = 68;
          if (v104 == 73)
          {
LABEL_158:
            v101 = v89[1] == v105;
          }

          else
          {
            v101 = 0;
            if (v104 == 84)
            {
              v105 = 65;
              goto LABEL_158;
            }
          }

          *(a1 + 380) = v101;
          if (v102)
          {
            goto LABEL_162;
          }

          goto LABEL_146;
        }

        v98 = *v89;
        *(a1 + 364) = v98 == 255;
        v99 = *v89;
        v101 = v99 == 73 || v99 == 84;
        *(a1 + 380) = v101;
        if (v98 == 255)
        {
          goto LABEL_162;
        }

LABEL_146:
        if (v101)
        {
          goto LABEL_163;
        }

LABEL_164:
        *(v90 + 96) = *(v90 + 88) + *(v90 + 80);
      }
    }
  }

  if (v2 != -1)
  {
    if (!v2)
    {
      goto LABEL_13;
    }

    goto LABEL_11;
  }

  return 0;
}

uint64_t MP3AudioStream::ParseHeader(MP3AudioStream *this, uint64_t a2)
{
  v4 = *(this + 59);
  if (v4 <= 163)
  {
    if (v4 == -1)
    {
      return 0;
    }

    if (!v4)
    {
      goto LABEL_10;
    }

    goto LABEL_7;
  }

  if (v4 == 172)
  {
    v6 = *(this + 1);
    LODWORD(v7) = *(v6 + 120);
    goto LABEL_57;
  }

  if (v4 != 164)
  {
LABEL_7:
    v5 = -1;
LABEL_9:
    *(this + 59) = v5;
    return 0;
  }

  while (1)
  {
LABEL_10:
    v8 = *(this + 1);
    v9 = *(v8 + 80);
    v11 = *(v8 + 88);
    v10 = *(v8 + 96);
    v12 = v11 + v9;
    if (v10 < v11 || v12 <= v10 || v12 - v10 == 0)
    {
      v5 = 164;
      goto LABEL_9;
    }

    if (MP3AudioStream::Resync(this))
    {
      break;
    }

    v15 = *(this + 108);
    if (v15)
    {
      *(this + 64) = v15;
      v6 = *(this + 1);
      v16 = *(v6 + 88);
      v17 = *(v6 + 96);
      v18 = v16 + *(v6 + 80);
      v19 = v17 < v16 || v18 <= v17;
      v20 = v19;
      v21 = v18 - v17;
      v7 = v20 ? 0 : v21;
      if (v7 < v15)
      {
        *(this + 34) = v17;
        v22 = *(v6 + 128);
        v23 = *(v6 + 72);
        if (v23 == v22)
        {
          if (v21)
          {
            v34 = v20;
          }

          else
          {
            v34 = 1;
          }

          if (v34)
          {
            v35 = 0;
          }

          else
          {
            v35 = &v23[(v17 - v16)];
          }

          memmove(v22, v35, v7);
          v36 = *(this + 108);
          v6 = *(this + 1);
          if (*(v6 + 124) < v36)
          {
            *(v6 + 124) = v36;
            CADeprecated::CAAutoFree<unsigned char>::reallocBytes((v6 + 128), v36);
            v6 = *(this + 1);
          }

          *(v6 + 120) = v7;
          *(v6 + 96) = *(v6 + 88) + *(v6 + 80);
        }

        else
        {
          if (*(v6 + 124) < v15)
          {
            *(v6 + 124) = v15;
            CADeprecated::CAAutoFree<unsigned char>::reallocBytes((v6 + 128), v15);
            v6 = *(this + 1);
          }

          LODWORD(v7) = 0;
          *(v6 + 120) = 0;
        }

LABEL_57:
        v37 = *(this + 64) - v7;
        v38 = *(v6 + 88);
        v39 = *(v6 + 96);
        v40 = v38 + *(v6 + 80);
        if (v40 <= v39 || v39 < v38)
        {
          v42 = 0;
        }

        else
        {
          v42 = v40 - v39;
        }

        if (v37 <= v42)
        {
          v37 = v42;
        }

        v48 = v37;
        v43 = v37 + v7;
        if (*(v6 + 124) < v43)
        {
          *(v6 + 124) = v43;
          CADeprecated::CAAutoFree<unsigned char>::reallocBytes((v6 + 128), v43);
          v6 = *(this + 1);
        }

        StreamBuffer::Copy((v6 + 72), &v48, (*(v6 + 128) + *(v6 + 120)));
        v44 = *(this + 1);
        v45 = *(v44 + 120) + v48;
        *(v44 + 120) = v45;
        if (v45 < *(this + 64))
        {
          v5 = 172;
          goto LABEL_9;
        }

        v46 = *(this + 34);
        v47 = *(v44 + 128);
        *(v44 + 88) = v46;
        *(v44 + 96) = v46;
        *(v44 + 72) = v47;
        *(v44 + 80) = v45;
      }
    }
  }

  v24 = 0;
  *a2 = this;
  *(a2 + 8) = AudioFileStreamObject::GeneratePackets;
  *(a2 + 16) = 0;
  v25 = *(this + 1);
  v26 = *(v25 + 88);
  v27 = *(v25 + 96);
  v28 = v26 + *(v25 + 80);
  v29 = v27 < v26 || v28 <= v27;
  v30 = v29;
  v31 = v28 - v27;
  if (!v29 && v31)
  {
    v24 = *(v25 + 72) + (v27 - v26);
  }

  *(a2 + 32) = v24;
  if (v30)
  {
    v32 = 0;
  }

  else
  {
    v32 = v31;
  }

  *(a2 + 24) = v32;
  return 0;
}

uint64_t MP3AudioStream::GetBitRate(MP3AudioStream *this, unsigned int *a2)
{
  LODWORD(v2) = *(this + 107);
  if (v2)
  {
    goto LABEL_4;
  }

  v3 = *(this + 40);
  if (v3)
  {
    v2 = v3 / *(this + 26);
LABEL_4:
    result = 0;
    *a2 = v2;
    return result;
  }

  return 1836020325;
}

uint64_t MP3AudioStream::SetProperty(MP3AudioStream *this, int a2, unsigned int a3, _DWORD *a4)
{
  if (a2 != 1634494051)
  {
    return 1886681407;
  }

  result = 0;
  *(this + 409) = *a4 != 0;
  return result;
}

uint64_t MP3AudioStream::GetProperty(MP3AudioStream *this, int a2, unsigned int *a3, _DWORD *__dst)
{
  if (a2 > 1768174436)
  {
    if (a2 == 1819243876)
    {
      if (*a3 != 8)
      {
        return 561211770;
      }

      v9 = *(this + 55);
      if (!v9)
      {
        return 1836020325;
      }

      if (*v9)
      {
        CFRetain(*v9);
        v7 = *v9;
      }

      else
      {
        v7 = 0;
      }

      result = 0;
      goto LABEL_27;
    }

    if (a2 != 1768174437)
    {
      goto LABEL_12;
    }

    result = 561211770;
    if (!a3 || *a3 != 4)
    {
      return result;
    }

    result = 0;
    v8 = *(this + 99);
LABEL_18:
    *__dst = v8;
    return result;
  }

  if (a2 == 1634494051)
  {
    result = 561211770;
    if (!a3 || *a3 != 4)
    {
      return result;
    }

    result = 0;
    v8 = *(this + 409);
    goto LABEL_18;
  }

  if (a2 != 1768174433)
  {
LABEL_12:

    return AudioFileStreamObject::GetProperty(this, a2, a3, __dst);
  }

  result = 561211770;
  if (a3 && *a3 == 8)
  {
    result = 0;
    v7 = *(this + 50);
LABEL_27:
    *__dst = v7;
  }

  return result;
}

uint64_t MP3AudioStream::GetPropertyInfo(MP3AudioStream *this, int a2, unsigned int *a3, unsigned __int8 *a4)
{
  if (a2 > 1768174436)
  {
    if (a2 != 1819243876)
    {
      if (a2 != 1768174437)
      {
        return AudioFileStreamObject::GetPropertyInfo(this, a2, a3, a4);
      }

      if (!a3)
      {
        goto LABEL_12;
      }

      v4 = 4;
      goto LABEL_11;
    }
  }

  else
  {
    if (a2 == 1634494051)
    {
      if (a3)
      {
        *a3 = 4;
      }

      if (a4)
      {
        *a4 = 1;
      }

      return 0;
    }

    if (a2 != 1768174433)
    {
      return AudioFileStreamObject::GetPropertyInfo(this, a2, a3, a4);
    }
  }

  if (!a3)
  {
    goto LABEL_12;
  }

  v4 = 8;
LABEL_11:
  *a3 = v4;
LABEL_12:
  if (a4)
  {
    *a4 = 0;
  }

  return 0;
}

void MP3AudioStream::~MP3AudioStream(MP3AudioStream *this)
{
  MP3AudioStream::~MP3AudioStream(this);

  JUMPOUT(0x193ADF220);
}

{
  *this = &unk_1F0331390;
  v2 = *(this + 55);
  if (v2)
  {
    CACFDictionary::~CACFDictionary(v2);
    MEMORY[0x193ADF220]();
  }

  v3 = *(this + 42);
  if (v3)
  {
    free(v3);
    *(this + 42) = 0;
  }

  AudioFileStreamObject::~AudioFileStreamObject(this);
}

uint64_t CA::ADMTime::ADMTime(uint64_t this)
{
  *this = 0;
  *(this + 16) = 0;
  *(this + 8) = 0;
  return this;
}

{
  *this = 0;
  *(this + 16) = 0;
  *(this + 8) = 0;
  return this;
}

double CA::ADMTime::ADMTime(CA::ADMTime *this, double a2)
{
  v2 = vcvtmd_u64_f64(a2);
  *this = v2;
  *(this + 16) = 0;
  result = a2 - v2;
  *(this + 1) = result;
  return result;
}

{
  v2 = vcvtmd_u64_f64(a2);
  *this = v2;
  *(this + 16) = 0;
  result = a2 - v2;
  *(this + 1) = result;
  return result;
}

double CA::ADMTime::operator double(uint64_t a1, double a2, double a3)
{
  if (*(a1 + 16) == 1)
  {
    LODWORD(a2) = *(a1 + 8);
    LODWORD(a3) = *(a1 + 12);
    v3 = *&a2 / *&a3;
  }

  else
  {
    v3 = *(a1 + 8);
  }

  return v3 + *a1;
}

uint64_t CA::ADMTime::parse@<X0>(CA::ADMTime *this@<X0>, uint64_t a2@<X8>)
{
  if (strchr(this, 83))
  {
    *v13 = 0;
    v14 = 0;
    v12 = 0;
    result = sscanf(this, "%u:%u:%u.%uS%u", &v13[4], &v14 + 4, &v14, v13, &v12);
    if (result == 5 && (v6 = v12) != 0 && (v7 = *v13, v12 > *v13))
    {
      *a2 = 3600 * *&v13[4] + 60 * HIDWORD(v14) + v14;
      *(a2 + 8) = v7 | (v6 << 32);
      v8 = 1;
      *(a2 + 16) = 1;
    }

    else
    {
      v8 = 0;
      *a2 = 0;
    }
  }

  else
  {
    *&v13[4] = 0;
    v14 = 0;
    result = sscanf(this, "%u:%u:%lf", &v14 + 4, &v14, &v13[4]);
    v8 = 0;
    v9 = a2;
    if (result == 3)
    {
      v10 = vcvtmd_u64_f64(*&v13[4]);
      v11 = *&v13[4] - v10;
      *a2 = v10 + 3600 * HIDWORD(v14) + 60 * v14;
      *(a2 + 8) = v11;
      v9 = (a2 + 16);
      v8 = 1;
    }

    *v9 = 0;
  }

  *(a2 + 24) = v8;
  return result;
}

void AC3PacketParser::GetMagicCookie(AC3PacketParser *this, void *__dst, unsigned int *a3)
{
  if (*a3 < 0xB)
  {
    return;
  }

  v6 = *(this + 9);
  if (!v6)
  {
    *(this + 20) = 11;
    v8 = (this + 80);
    v9 = malloc_type_malloc(0xBuLL, 0x3782F0A8uLL);
    if (v9)
    {
      *(this + 9) = v9;
      v10 = ConvertAC3HeaderToAC3MP4Cookie(*(this + 1), *(this + 4), v9, this + 20);
      v6 = *(this + 9);
      if (!v10)
      {
        goto LABEL_3;
      }

      if (v6)
      {
        free(*(this + 9));
      }
    }

    else
    {
      if (*v8)
      {
        exception = __cxa_allocate_exception(8uLL);
        v12 = std::bad_alloc::bad_alloc(exception);
      }

      *(this + 9) = 0;
    }

    *(this + 9) = 0;
    *(this + 20) = 0;
    return;
  }

LABEL_3:
  v7 = *(this + 20);
  *a3 = v7;

  memcpy(__dst, v6, v7);
}

uint64_t MP4AudioStream::DetermineBytesAndPacketsWithinByteRangeFromStartingPacket(MP4AudioStream *this, unsigned int a2, unsigned int *a3, unsigned int *a4)
{
  v4 = *(this + 28);
  if (!v4)
  {
    return 2003334207;
  }

  if (v4 <= *a3)
  {
    v10 = *a3 / v4;
  }

  else
  {
    v12 = 0;
    result = MP4Parser_PacketProvider::GetPacketInfo(*(this + 59), a2, &v12, &v13);
    v10 = v12 <= *a3;
    if (result)
    {
      return result;
    }
  }

  v11 = *(this + 59);

  return MP4Parser_PacketProvider::GetContiguousPacketCountAndSize(v11, a2, v10, a4, a3);
}

uint64_t MP4AudioStream::PacketToDependencyInfo(unsigned __int8 **this, AudioPacketDependencyInfoTranslation *a2)
{
  v4 = (*(*this + 20))(this);
  v5 = this[59];
  MP4BoxParser_Track::GetInfoFromTrackSubBoxes(v5);
  if (v4)
  {
    v6 = this[59];
    MP4BoxParser_Track::GetInfoFromTrackSubBoxes(v6);

    return PacketToDependencyInfoForRestrictedRandomAccess(a2, (v5 + 240), (v6 + 296));
  }

  else
  {
    v9 = v5[152];
    v8 = (v5 + 152);
    if (v9 == 1)
    {
      a2->mIsIndependentlyDecodable = 1;
      v10.mPacket = a2->mPacket;
      v10.mRollDistance = 0;
      PacketToRollDistanceForRollRecovery(&v10, v8);
      a2->mNumberPrerollPackets = v10.mRollDistance;
    }

    else
    {
      AudioFileStreamObject::PacketToDependencyInfo(this, a2);
    }

    return 0;
  }
}

uint64_t MP4AudioStream::ScanForIndependentPacket(void *a1, int a2, AudioIndependentPacketTranslation *a3)
{
  if ((*(*a1 + 160))(a1))
  {
    v6 = a1[59];
    MP4BoxParser_Track::GetInfoFromTrackSubBoxes(v6);
    v7 = a1[59];
    MP4BoxParser_Track::GetInfoFromTrackSubBoxes(v7);

    return ScanForIndependentPacketWithRestrictedRandomAccess(a2 == 1, a3, v6 + 30, v7 + 37);
  }

  else
  {

    return AudioFileStreamObject::ScanForIndependentPacket(a1, a2, a3);
  }
}

uint64_t MP4AudioStream::PacketToRollDistance(unsigned __int8 **this, AudioPacketRollDistanceTranslation *a2)
{
  a2->mRollDistance = 0;
  v4 = (*(*this + 20))(this);
  v5 = this[59];
  MP4BoxParser_Track::GetInfoFromTrackSubBoxes(v5);
  if (v4)
  {
    v6 = this[59];
    MP4BoxParser_Track::GetInfoFromTrackSubBoxes(v6);
    v8 = v5[240];
    v7 = (v5 + 240);
    if ((v8 & 1) != 0 || v6[296] == 1)
    {

      return PacketToRollDistanceForRestrictedRandomAccess(a2, v7, (v6 + 296));
    }

    return 0;
  }

  v11 = v5[152];
  v10 = (v5 + 152);
  if (v11 != 1)
  {
    v12 = *(this + 8);
    ioPropertyDataSize = 4;
    inSpecifier = v12;
    outPropertyData = 0;
    AudioFormatGetProperty(0x64726C6Cu, 4u, &inSpecifier, &ioPropertyDataSize, &outPropertyData);
    mPacket = outPropertyData;
    if (a2->mPacket < outPropertyData)
    {
      mPacket = a2->mPacket;
    }

    a2->mRollDistance = mPacket;
    return 0;
  }

  return PacketToRollDistanceForRollRecovery(a2, v10);
}

uint64_t MP4AudioStream::RestrictsRandomAccess(MP4AudioStream *this)
{
  v1 = *(this + 59);
  MP4BoxParser_Track::GetInfoFromTrackSubBoxes(v1);
  if (v1[296])
  {
    return 1;
  }

  MP4BoxParser_Track::GetInfoFromTrackSubBoxes(v1);
  return v1[240];
}

uint64_t MP4AudioStream::GeneratePackets(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 236);
  if (v2 == -1)
  {
    return 0;
  }

  if (!v2)
  {
    v15 = *(a1 + 472);
    v16 = *(*(a1 + 8) + 96);
    v17 = *(a1 + 184);
    if (v17 < (*(*v15 + 32))(v15))
    {
      v60.mStartOffset = 0;
      while (1)
      {
        if (MP4Parser_PacketProvider::GetPacketOffset(v15, v17, &v60))
        {
          goto LABEL_19;
        }

        if (v60.mStartOffset >= v16)
        {
          break;
        }

        if (++v17 >= (*(*v15 + 32))(v15))
        {
          goto LABEL_19;
        }
      }

      *(a1 + 184) = v17;
    }

LABEL_19:
    v20 = *(a1 + 184);
    goto LABEL_20;
  }

  if (v2 != 710)
  {
    result = 0;
LABEL_53:
    v47 = -1;
    goto LABEL_54;
  }

  LODWORD(v5) = *(a1 + 256);
  v6 = *(a1 + 264);
LABEL_5:
  LODWORD(v60.mStartOffset) = v5;
  StreamBuffer::Copy((*(a1 + 8) + 72), &v60, v6);
  mStartOffset = v60.mStartOffset;
  v8 = *(a1 + 256);
  *(a1 + 264) += LODWORD(v60.mStartOffset);
  v9 = v8 - mStartOffset;
  *(a1 + 256) = v9;
  if (v9)
  {
    result = 0;
    v47 = 710;
LABEL_54:
    *(a1 + 236) = v47;
    return result;
  }

  if (*(a1 + 416))
  {
    v10 = *(a1 + 304);
    v11 = *(a1 + 288);
    v12 = *(a1 + 8);
    v13 = *(v12 + 16);
    v13[14].i64[0] += v13[2].u32[3];
    v14.i64[0] = vdupq_n_s64(1uLL).u64[0];
    v14.i64[1] = v10;
    v13[13] = vaddq_s64(v13[13], v14);
    (*(v12 + 32))(*(v12 + 40));
  }

  else
  {
    v60.mStartOffset = 0;
    v19 = *(a1 + 304);
    v60.mVariableFramesInPacket = 0;
    v60.mDataByteSize = v19;
    AudioFileStreamWrapper::CallPacketsProc(*(a1 + 8), v19, 1u, *(a1 + 288), &v60, 1);
  }

  v20 = *(a1 + 184) + 1;
  *(a1 + 184) = v20;
LABEL_20:
  while (1)
  {
    MP4BoxParser_Track::UpdateOffsetTableToIndex(*(a1 + 472), v20);
    if (MP4Parser_PacketProvider::GetPacketInfo(*(a1 + 472), *(a1 + 184), (a1 + 304), (a1 + 312)))
    {
      break;
    }

    v21 = *(a1 + 8);
    v22 = *(a1 + 312);
    *(v21 + 96) = v22;
    v23 = *(v21 + 88);
    v24 = v23 + *(v21 + 80);
    if (v24 <= v22 || v22 < v23)
    {
      v26 = 0;
    }

    else
    {
      v26 = v24 - v22;
    }

    v5 = *(a1 + 304);
    if (v26 < v5)
    {
      if (*(a1 + 284) < v5)
      {
        *(a1 + 284) = v5;
        CADeprecated::CAAutoFree<unsigned char>::allocBytes((a1 + 288), v5, 0);
        LODWORD(v5) = *(a1 + 304);
      }

      *(a1 + 256) = v5;
      v6 = *(a1 + 288);
      *(a1 + 264) = v6;
      goto LABEL_5;
    }

    v27 = *(a1 + 184);
    v58 = v26;
    v59 = 0;
    result = (*(*a1 + 208))(a1, v27, &v58, &v59);
    if (result)
    {
      goto LABEL_51;
    }

    v28 = v59;
    if (!v59)
    {
      *(a1 + 236) = -1;
      return 2003334207;
    }

    v29 = *(a1 + 8);
    v30 = *(v29 + 88);
    v31 = *(v29 + 96);
    v32 = v30 + *(v29 + 80);
    if (v31 < v30 || v32 <= v31 || v32 - v31 == 0)
    {
      v35 = 0;
    }

    else
    {
      v35 = (*(v29 + 72) + (v31 - v30));
    }

    if (*(a1 + 416))
    {
      v36 = v58;
      v37 = *(v29 + 16);
      *(v37 + 224) += *(v37 + 44) * v59;
      v38 = *(v37 + 216) + v36;
      *(v37 + 208) += v28;
      *(v37 + 216) = v38;
      (*(v29 + 32))(*(v29 + 40));
    }

    else
    {
      if (*(a1 + 200) < v59)
      {
        v39 = (1 << -__clz(v59 - 1));
        *(a1 + 200) = v39;
        CADeprecated::CAAutoFree<AudioStreamPacketDescription>::reallocItems((a1 + 192), v39);
        LODWORD(v28) = v59;
      }

      MP4BoxParser_Track::UpdateOffsetTableToIndex(*(a1 + 472), v28 + *(a1 + 184));
      v57 = 0;
      if (v59)
      {
        v40 = 0;
        v41 = 0;
        v42 = 0;
        while (1)
        {
          result = MP4Parser_PacketProvider::GetPacketInfo(*(a1 + 472), v41 + *(a1 + 184), &v57, &v60);
          if (result)
          {
            break;
          }

          v43 = *(a1 + 192);
          v44 = &v43[v40];
          v44->mStartOffset = v42;
          v45 = v57;
          v44->mVariableFramesInPacket = 0;
          v44->mDataByteSize = v45;
          v42 += v45;
          ++v41;
          v46 = v59;
          ++v40;
          if (v41 >= v59)
          {
            goto LABEL_49;
          }
        }

LABEL_51:
        if (result == 1685348671)
        {
          result = 1685348671;
          *(a1 + 177) = 1;
        }

        goto LABEL_53;
      }

      v46 = 0;
      v43 = *(a1 + 192);
LABEL_49:
      AudioFileStreamWrapper::CallPacketsProc(*(a1 + 8), v58, v46, v35, v43, 1);
    }

    *(*(a1 + 8) + 96) += v58;
    v20 = *(a1 + 184) + v59;
    *(a1 + 184) = v20;
  }

  v48 = 0;
  *(a1 + 562) = 1;
  v49 = *(a1 + 8);
  v50 = *(a1 + 344);
  *(v49 + 96) = v50;
  *a2 = a1;
  *(a2 + 8) = AudioFileStreamObject::ParseHeader;
  *(a2 + 16) = 0;
  v51 = *(v49 + 88);
  v52 = v51 + *(v49 + 80);
  v53 = v50 < v51 || v52 <= v50;
  v54 = v53;
  v55 = v52 - v50;
  if (!v53 && v55)
  {
    v48 = *(v49 + 72) + (v50 - v51);
  }

  result = 0;
  *(a2 + 32) = v48;
  if (v54)
  {
    v56 = 0;
  }

  else
  {
    v56 = v55;
  }

  *(a2 + 24) = v56;
  return result;
}

uint64_t MP4AudioStream::ParseHeader(uint64_t a1, uint64_t a2)
{
  v147 = *MEMORY[0x1E69E9840];
  v138 = (a1 + 516);
  v4 = *(a1 + 236);
  if (v4 > 210)
  {
    if (v4 > 264)
    {
      switch(v4)
      {
        case 265:
          v22 = *(a1 + 256);
          v23 = *(a1 + 264);
LABEL_157:
          LODWORD(buf.mASBD.mSampleRate) = v22;
          StreamBuffer::Copy((*(a1 + 8) + 72), &buf, v23);
          mSampleRate_low = LODWORD(buf.mASBD.mSampleRate);
          v107 = *(a1 + 256);
          *(a1 + 264) += LODWORD(buf.mASBD.mSampleRate);
          v108 = v107 - mSampleRate_low;
          *(a1 + 256) = v108;
          if (!v108)
          {
            *(a1 + 296) = *(a1 + 548) + *(a1 + 296) - 8;
            operator new();
          }

          v13 = 0;
          v31 = 265;
          goto LABEL_184;
        case 379:
          v29 = *(a1 + 256);
          v30 = *(a1 + 264);
LABEL_162:
          LODWORD(buf.mASBD.mSampleRate) = v29;
          StreamBuffer::Copy((*(a1 + 8) + 72), &buf, v30);
          v110 = LODWORD(buf.mASBD.mSampleRate);
          v111 = *(a1 + 256);
          *(a1 + 264) += LODWORD(buf.mASBD.mSampleRate);
          v112 = v111 - v110;
          *(a1 + 256) = v112;
          if (!v112)
          {
            *(a1 + 296) = *(a1 + 548) + *(a1 + 296) - 8;
            if (*(a1 + 558) == 1)
            {
              operator new();
            }

            if (*(a1 + 560) == 1)
            {
              operator new();
            }

            v113 = *(a1 + 548);
            MP4BoxParser::MP4BoxParser(&buf, *(a1 + 368));
          }

          v13 = 0;
          v31 = 379;
          goto LABEL_184;
        case 652:
          v11 = *(a1 + 256);
          v12 = *(a1 + 264);
          goto LABEL_75;
      }
    }

    else
    {
      switch(v4)
      {
        case 211:
          v14 = *(a1 + 256);
          v15 = *(a1 + 264);
          goto LABEL_137;
        case 231:
          v25 = *(a1 + 256);
          v26 = *(a1 + 264);
          goto LABEL_143;
        case 250:
          v7 = *(a1 + 256);
          v8 = *(a1 + 264);
LABEL_150:
          LODWORD(buf.mASBD.mSampleRate) = v7;
          StreamBuffer::Copy((*(a1 + 8) + 72), &buf, v8);
          v101 = LODWORD(buf.mASBD.mSampleRate);
          v102 = *(a1 + 256);
          *(a1 + 264) += LODWORD(buf.mASBD.mSampleRate);
          v103 = v102 - v101;
          *(a1 + 256) = v103;
          if (!v103)
          {
            *(a1 + 296) = *(a1 + 548) + *(a1 + 296) - 8;
            v104 = *(a1 + 392);
            operator new();
          }

          v13 = 0;
          v31 = 250;
          goto LABEL_184;
      }
    }

LABEL_32:
    v13 = 0;
LABEL_183:
    v31 = -1;
    goto LABEL_184;
  }

  if (v4 > 125)
  {
    switch(v4)
    {
      case 126:
        v16 = *(a1 + 256);
        v17 = *(a1 + 264);
        goto LABEL_23;
      case 156:
        v27 = *(a1 + 256);
        v28 = *(a1 + 264);
        goto LABEL_197;
      case 165:
        LODWORD(v9) = *(a1 + 256);
        v10 = *(a1 + 264);
        goto LABEL_43;
    }

    goto LABEL_32;
  }

  if (v4 == -1)
  {
    v13 = 0;
    goto LABEL_185;
  }

  if (v4)
  {
    if (v4 == 109)
    {
      v5 = *(a1 + 256);
      v6 = *(a1 + 264);
LABEL_35:
      LODWORD(buf.mASBD.mSampleRate) = v5;
      StreamBuffer::Copy((*(a1 + 8) + 72), &buf, v6);
      v32 = LODWORD(buf.mASBD.mSampleRate);
      v33 = *(a1 + 256);
      *(a1 + 264) += LODWORD(buf.mASBD.mSampleRate);
      v34 = v33 - v32;
      *(a1 + 256) = v34;
      if (v34)
      {
        v13 = 0;
        v31 = 109;
        goto LABEL_184;
      }

      *(a1 + 296) += 8;
      v35 = *(v138 + 47);
      *v138 = v35;
      if (HIDWORD(v35) != 1887007846)
      {
        goto LABEL_182;
      }

      v36 = *(a1 + 8);
      LODWORD(buf.mASBD.mSampleRate) = 1;
      if ((*(v36 + 104) & 1) == 0)
      {
        *(v36 + 104) = 1;
        v37 = *(v36 + 24);
        if (v37)
        {
          v37(*(v36 + 40), *(v36 + 8), 1717988724, &buf);
          LODWORD(v35) = *v138;
        }
      }

      v38 = bswap32(v35);
      *(a1 + 528) = v38;
      if ((v38 - 257) <= 0xFFFFFF06)
      {
        goto LABEL_182;
      }

      v16 = v38 - 8;
      *(a1 + 256) = v16;
      v17 = (a1 + 571);
      *(a1 + 264) = a1 + 571;
LABEL_23:
      LODWORD(buf.mASBD.mSampleRate) = v16;
      StreamBuffer::Copy((*(a1 + 8) + 72), &buf, v17);
      v18 = LODWORD(buf.mASBD.mSampleRate);
      v19 = *(a1 + 256);
      *(a1 + 264) += LODWORD(buf.mASBD.mSampleRate);
      v20 = v19 - v18;
      *(a1 + 256) = v20;
      if (v20)
      {
        v13 = 0;
        v31 = 126;
        goto LABEL_184;
      }

      *(v138 + 47) = *v138;
      v21 = *(a1 + 528);
      *(a1 + 296) = v21 + *(a1 + 296) - 8;
      if (v21)
      {
        operator new();
      }

LABEL_182:
      v13 = 1685348671;
      *(a1 + 177) = 1;
      goto LABEL_183;
    }

    goto LABEL_32;
  }

  if ((*(a1 + 332) & 1) == 0)
  {
    v5 = 8;
    *(a1 + 256) = 8;
    v6 = (a1 + 563);
    *(a1 + 264) = a1 + 563;
    goto LABEL_35;
  }

  v24 = *(a1 + 344);
  *(a1 + 296) = v24;
  *(a1 + 344) = v24;
  while (1)
  {
    *(a1 + 336) = v24;
    v27 = 8;
    *(a1 + 256) = 8;
    v28 = (a1 + 516);
    *(a1 + 264) = a1 + 516;
LABEL_197:
    LODWORD(buf.mASBD.mSampleRate) = v27;
    StreamBuffer::Copy((*(a1 + 8) + 72), &buf, v28);
    v122 = LODWORD(buf.mASBD.mSampleRate);
    v123 = *(a1 + 256);
    *(a1 + 264) += LODWORD(buf.mASBD.mSampleRate);
    v124 = v123 - v122;
    *(a1 + 256) = v124;
    if (v124)
    {
      v13 = 0;
      v31 = 156;
      goto LABEL_184;
    }

    v42 = *(a1 + 296) + 8;
    *(a1 + 296) = v42;
    v9 = 8;
    *(a1 + 536) = 8;
    v125 = *(a1 + 516);
    v43 = bswap32(v125);
    *(a1 + 528) = v43;
    if (v125 == 0x1000000)
    {
      v10 = (a1 + 528);
      *(a1 + 256) = 8;
      *(a1 + 264) = a1 + 528;
LABEL_43:
      LODWORD(buf.mASBD.mSampleRate) = v9;
      StreamBuffer::Copy((*(a1 + 8) + 72), &buf, v10);
      v39 = LODWORD(buf.mASBD.mSampleRate);
      v40 = *(a1 + 256);
      *(a1 + 264) += LODWORD(buf.mASBD.mSampleRate);
      v41 = v40 - v39;
      *(a1 + 256) = v41;
      if (v41)
      {
        v13 = 0;
        v31 = 165;
        goto LABEL_184;
      }

      v42 = *(a1 + 296) + 8;
      *(a1 + 296) = v42;
      v43 = bswap64(*(a1 + 528));
      *(a1 + 528) = v43;
      v9 = 16;
      *(a1 + 536) = 16;
    }

    if (v43 < v9)
    {
      goto LABEL_182;
    }

    v44 = *(a1 + 344);
    if ((v43 ^ 0x7FFFFFFFFFFFFFFFLL) < v44)
    {
      goto LABEL_182;
    }

    v45 = v44 + v43;
    *(a1 + 344) = v45;
    v46 = *(a1 + 520);
    if (v46 == 1718579053)
    {
      if (!*(a1 + 472))
      {
LABEL_77:
        *(*(a1 + 8) + 96) = v45;
        *(a1 + 296) = v45;
        goto LABEL_191;
      }

      *(a1 + 384) = 0;
      v54 = malloc_type_malloc(v43, 0x13EF1C16uLL);
      if (!v54 && *(a1 + 528))
      {
        exception = __cxa_allocate_exception(8uLL);
        v90 = std::bad_alloc::bad_alloc(exception);
      }

      *(a1 + 384) = v54;
      *v54 = *v138;
      v55 = *(a1 + 536);
      if (v55 == 16)
      {
        *(*(a1 + 384) + 8) = bswap64(*(a1 + 528));
        v55 = *(a1 + 536);
      }

      v11 = *(a1 + 528) - v55;
      *(a1 + 256) = v11;
      v12 = (*(a1 + 384) + v55);
      *(a1 + 264) = v12;
LABEL_75:
      LODWORD(buf.mASBD.mSampleRate) = v11;
      StreamBuffer::Copy((*(a1 + 8) + 72), &buf, v12);
      v56 = LODWORD(buf.mASBD.mSampleRate);
      v57 = *(a1 + 256);
      *(a1 + 264) += LODWORD(buf.mASBD.mSampleRate);
      v58 = v57 - v56;
      *(a1 + 256) = v58;
      if (!v58)
      {
        *(a1 + 296) += *(a1 + 528) - *(a1 + 536);
        v59 = *(a1 + 384);
        v139 = *(a1 + 336);
        ioPropertyDataSize = 0;
        operator new();
      }

      v13 = 0;
      v31 = 652;
      goto LABEL_184;
    }

    if (v46 != 1952539757)
    {
      break;
    }

    *(a1 + 558) = 0;
    *(a1 + 560) = 0;
    if (!*(a1 + 376) || !*(a1 + 512))
    {
LABEL_80:
      v13 = 1869640813;
      goto LABEL_183;
    }

    if (*(a1 + 562) == 1)
    {
      if ((*(a1 + 561) & 1) == 0)
      {
        goto LABEL_80;
      }

      *(a1 + 561) = 0;
    }

    v49 = *(a1 + 472);
    if (v49)
    {
      v50 = (*(*v49 + 32))(v49);
      if (v50)
      {
        v51 = *(a1 + 8);
        if (*(v51 + 112))
        {
          goto LABEL_123;
        }

        v52 = v50;
        if (*(a1 + 553) == 1)
        {
          v53 = *(a1 + 555);
          if (!MP4BoxParser_Track::GetPacketTableInfo(*(a1 + 472), v144, v50, *(a1 + 512), v53))
          {
            if ((v53 & 1) == 0)
            {
              goto LABEL_83;
            }

LABEL_114:
            buf.mASBD.mSampleRate = 0.0;
            MP4Parser_PacketProvider::GetPacketOffset(*(a1 + 472), 0, &buf);
            *(a1 + 104) = buf.mASBD.mSampleRate;
            v51 = *(a1 + 8);
            LODWORD(v145[0]) = 1;
            v78 = *(v51 + 24);
            if (v78)
            {
              v78(*(v51 + 40), *(v51 + 8), 1685022310, v145);
              v51 = *(a1 + 8);
            }

            if (*(a1 + 160) != -1)
            {
              LODWORD(v145[0]) = 1;
              if ((*(v51 + 106) & 1) == 0)
              {
                *(v51 + 106) = 1;
                v79 = *(v51 + 24);
                if (v79)
                {
                  v79(*(v51 + 40), *(v51 + 8), 1886283375, v145);
                  v51 = *(a1 + 8);
                }
              }
            }

            LODWORD(v145[0]) = 1;
            if (!*(v51 + 112))
            {
              *(v51 + 112) = 1;
              v80 = *(v51 + 24);
              if (v80)
              {
                v80(*(v51 + 40), *(v51 + 8), 1919247481, v145);
                v51 = *(a1 + 8);
              }
            }

LABEL_123:
            v81 = 0;
            *a2 = a1;
            *(a2 + 8) = AudioFileStreamObject::GeneratePackets;
            *(a2 + 16) = 0;
            v82 = *(v51 + 88);
            v83 = *(v51 + 96);
            v84 = v82 + *(v51 + 80);
            v85 = v83 < v82 || v84 <= v83;
            v86 = v85;
            v87 = v84 - v83;
            if (!v85 && v87)
            {
              v81 = *(v51 + 72) + (v83 - v82);
            }

            v13 = 0;
            *(a2 + 32) = v81;
            if (v86)
            {
              v88 = 0;
            }

            else
            {
              v88 = v87;
            }

            *(a2 + 24) = v88;
            goto LABEL_185;
          }

LABEL_82:
          *(a1 + 160) = *v144;
          goto LABEL_114;
        }

        if (MP4BoxParser_Track::GetPacketTableInfo(*(a1 + 472), v144, v50, *(a1 + 512), 0))
        {
          goto LABEL_82;
        }

LABEL_83:
        if ((*(a1 + 559) & 1) != 0 || *(a1 + 160) == -1)
        {
          goto LABEL_114;
        }

        v62 = *(a1 + 408);
        if (v62 == 1633889587)
        {
          v63 = 0;
          v64 = *(a1 + 420);
          goto LABEL_109;
        }

        if (v62 >> 8 == 6381923)
        {
          v64 = *(a1 + 420);
          LODWORD(outPropertyData) = 0;
          if (*(a1 + 128))
          {
            DecoderConfigDescr::DecoderConfigDescr(v143);
            v65 = *(a1 + 120);
            v66 = *(a1 + 128);
            v67 = (v65 + v66);
            v145[0] = v65;
            v145[1] = (v65 + v66);
            v146 = 0;
            if ((v65 & 3) != 0 && v66)
            {
              v68 = 0;
              v69 = (v65 + 1);
              v70 = -8;
              v71 = v69;
              do
              {
                HIDWORD(v146) = v70 + 16;
                v145[0] = v71;
                v68 = *(v71 - 1) | (v68 << 8);
                LODWORD(v146) = v68;
                v70 += 8;
                if ((v69 & 3) == 0)
                {
                  break;
                }

                LOBYTE(v69) = v69 + 1;
                v72 = v71 >= v67;
                v71 = (v71 + 1);
              }

              while (!v72);
              LODWORD(v146) = v68 << (24 - v70);
            }

            if (MP4AudioESDS::Deserialize(&buf, v145, 0, 0))
            {
              v63 = 0;
            }

            else if (DecoderConfigDescr::GetDefaultPriming(v143, &outPropertyData))
            {
              v63 = 0;
            }

            else
            {
              v63 = outPropertyData;
            }

            MP4AudioESDS::~MP4AudioESDS(&buf);
          }

          else
          {
            v63 = 2112;
          }

LABEL_109:
          v75 = v52 * v64;
          v77 = v75 - v63;
          if (v75 < v63)
          {
            v77 = 0;
          }

          *(a1 + 160) = v77;
          if (v75 > v63)
          {
            LODWORD(v75) = v63;
          }
        }

        else
        {
          v73 = *(a1 + 416);
          *&buf.mASBD.mSampleRate = *(a1 + 400);
          *&buf.mASBD.mBytesPerPacket = v73;
          v74 = *(a1 + 120);
          *&buf.mASBD.mBitsPerChannel = *(a1 + 432);
          buf.mMagicCookie = v74;
          *&buf.mMagicCookieSize = 0;
          buf.mMagicCookieSize = *(a1 + 128);
          LODWORD(v145[0]) = 0;
          LODWORD(outPropertyData) = 4;
          if (GetCodecPropertyFromFormatInfo(&buf, &outPropertyData, v145, 0x64657066u))
          {
            goto LABEL_114;
          }

          v75 = *(a1 + 420) * v52;
          v76 = v75 - LODWORD(v145[0]);
          if (v75 < LODWORD(v145[0]))
          {
            v76 = 0;
          }

          if (v75 > LODWORD(v145[0]))
          {
            LODWORD(v75) = v145[0];
          }

          *(a1 + 160) = v76;
        }

        *(a1 + 168) = v75;
        *(a1 + 172) = 0;
        goto LABEL_114;
      }
    }

LABEL_191:
    if (*(a1 + 848))
    {
      v120 = *(a1 + 8);
      LODWORD(buf.mASBD.mSampleRate) = 0;
      if ((*(v120 + 110) & 1) == 0)
      {
        *(v120 + 110) = 1;
        v121 = *(v120 + 24);
        if (v121)
        {
          v121(*(v120 + 40), *(v120 + 8), 1819243876, &buf);
        }
      }
    }

    v24 = *(a1 + 296);
  }

  if (v46 != 1987014509)
  {
    goto LABEL_77;
  }

  v47 = *(a1 + 16);
  if (v47 == 1832149606 || v47 == 1832149350)
  {
    *(a1 + 552) = 1;
    *(a1 + 558) = 1;
    *(a1 + 560) = 1;
  }

  else
  {
    *(a1 + 553) = 257;
  }

  v60 = 1;
  *(a1 + 557) = 1;
  for (i = 352; ; i = 296)
  {
    *(a1 + i) = v42;
    if ((v60 & 1) == 0 && (*(a1 + 554) & 1) == 0 && (*(a1 + 558) & 1) == 0 && *(a1 + 560) != 1 || v42 >= v45)
    {
      v114 = *(a1 + 8);
      *(v114 + 96) = v45;
      *(a1 + 296) = v45;
      if (*(a1 + 553) != 1)
      {
        goto LABEL_191;
      }

      if ((*(a1 + 555) & 1) == 0)
      {
        MP4AudioStream::SetStreamLengthAndPacketCountPerPacketProvider(a1);
        goto LABEL_191;
      }

      v115 = *(a1 + 408);
      v116 = 480;
      if (v115 == 1935764850)
      {
        goto LABEL_189;
      }

      if (v115 == 1935767394)
      {
        v116 = 915;
        goto LABEL_189;
      }

      if (v115 >> 8 == 6381923)
      {
        v116 = 768 * *(a1 + 428);
LABEL_189:
        *(a1 + 112) = v116;
        LODWORD(buf.mASBD.mSampleRate) = 1;
        v119 = *(v114 + 24);
        if (v119)
        {
          v119(*(v114 + 40), *(v114 + 8), 1886616165, &buf);
        }

        goto LABEL_191;
      }

      v145[0] = 0;
      v126 = *(a1 + 428);
      buf.mASBD.mSampleRate = *(a1 + 400);
      *&buf.mASBD.mFormatID = xmmword_18F9017F0;
      buf.mASBD.mBytesPerFrame = 4;
      buf.mASBD.mChannelsPerFrame = v126;
      *&buf.mASBD.mBitsPerChannel = 32;
      v127 = AudioConverterNewWithOptions((a1 + 400), &buf.mASBD, 0, v145);
      v128 = v145[0];
      if (v145[0])
      {
        v129 = *(a1 + 128);
        if (v129)
        {
          v127 = AudioConverterSetProperty(v145[0], 0x646D6763u, v129, *(a1 + 120));
        }

        if (!v127)
        {
          LODWORD(outPropertyData) = 0;
          ioPropertyDataSize = 4;
          if (!AudioConverterGetProperty(v128, 0x78697073u, &ioPropertyDataSize, &outPropertyData))
          {
            if (outPropertyData)
            {
              *(a1 + 112) = outPropertyData;
              v130 = *(a1 + 8);
              *v144 = 1;
              v131 = *(v130 + 24);
              if (v131)
              {
                v131(*(v130 + 40), *(v130 + 8), 1886616165, v144);
              }
            }
          }
        }

        AudioConverterDispose(v128);
      }

      goto LABEL_191;
    }

    v14 = 8;
    *(a1 + 256) = 8;
    v15 = (a1 + 540);
    *(a1 + 264) = a1 + 540;
LABEL_137:
    LODWORD(buf.mASBD.mSampleRate) = v14;
    StreamBuffer::Copy((*(a1 + 8) + 72), &buf, v15);
    v91 = LODWORD(buf.mASBD.mSampleRate);
    v92 = *(a1 + 256);
    *(a1 + 264) += LODWORD(buf.mASBD.mSampleRate);
    v93 = v92 - v91;
    *(a1 + 256) = v93;
    if (v93)
    {
      v13 = 0;
      v31 = 211;
      goto LABEL_184;
    }

    v94 = bswap32(*(a1 + 540));
    *(a1 + 548) = v94;
    if (v94 <= 7)
    {
      goto LABEL_182;
    }

    v95 = *(a1 + 296);
    if (*(a1 + 344) - v95 < v94)
    {
      goto LABEL_182;
    }

    *(a1 + 296) = v95 + 8;
    *(a1 + 352) += v94;
    v96 = *(a1 + 544);
    if (v96 == 1684567661)
    {
      break;
    }

    if (v96 == 2019915373 && (*(a1 + 554) & 1) != 0)
    {
      *(a1 + 392) = 0;
      v100 = malloc_type_malloc(v94, 0x40E56AE2uLL);
      if (!v100 && *(a1 + 548))
      {
        v132 = __cxa_allocate_exception(8uLL);
        v133 = std::bad_alloc::bad_alloc(v132);
      }

      *(a1 + 392) = v100;
      *v100 = v138[3];
      v7 = *(a1 + 548) - 8;
      *(a1 + 256) = v7;
      v8 = (*(a1 + 392) + 8);
      *(a1 + 264) = v8;
      goto LABEL_150;
    }

    if (v96 == 1801548404 && (*(a1 + 557) & 1) != 0)
    {
      *(a1 + 376) = 0;
      v105 = malloc_type_malloc(v94, 0xA0B47AD0uLL);
      if (!v105 && *(a1 + 548))
      {
        v134 = __cxa_allocate_exception(8uLL);
        v135 = std::bad_alloc::bad_alloc(v134);
      }

      *(a1 + 376) = v105;
      *v105 = v138[3];
      v22 = *(a1 + 548) - 8;
      *(a1 + 256) = v22;
      v23 = (*(a1 + 376) + 8);
      *(a1 + 264) = v23;
      goto LABEL_157;
    }

    if (v96 == 1635017845)
    {
      *(a1 + 368) = 0;
      v109 = malloc_type_malloc(v94, 0x3115469DuLL);
      v30 = v109;
      if (v109)
      {
        *(a1 + 368) = v109;
        v29 = *(a1 + 548) - 8;
        *(a1 + 256) = v29;
        *(a1 + 264) = v109;
        goto LABEL_162;
      }

      if (*(a1 + 548))
      {
        v136 = __cxa_allocate_exception(8uLL);
        v137 = std::bad_alloc::bad_alloc(v136);
      }

      *(a1 + 368) = 0;
      free(0);
      *(a1 + 368) = 0;
    }

    v45 = *(a1 + 344);
    v42 = *(a1 + 352);
    v60 = *(a1 + 557);
    if (v42 >= v45 && (*(a1 + 557) & 1) != 0)
    {
      goto LABEL_182;
    }

    *(*(a1 + 8) + 96) = v42;
  }

  if (v94 >= 0x79)
  {
    goto LABEL_182;
  }

  *(v138 + 47) = v138[3];
  v25 = v94 - 8;
  *(a1 + 256) = v94 - 8;
  v26 = (a1 + 571);
  *(a1 + 264) = a1 + 571;
LABEL_143:
  LODWORD(buf.mASBD.mSampleRate) = v25;
  StreamBuffer::Copy((*(a1 + 8) + 72), &buf, v26);
  v97 = LODWORD(buf.mASBD.mSampleRate);
  v98 = *(a1 + 256);
  *(a1 + 264) += LODWORD(buf.mASBD.mSampleRate);
  v99 = v98 - v97;
  *(a1 + 256) = v99;
  if (!v99)
  {
    *(a1 + 296) = *(a1 + 548) + *(a1 + 296) - 8;
    MP4BoxParser::MP4BoxParser(&buf, (a1 + 563));
  }

  v13 = 0;
  v31 = 231;
LABEL_184:
  *(a1 + 236) = v31;
LABEL_185:
  v117 = *MEMORY[0x1E69E9840];
  return v13;
}

void sub_18F80B1AC(_Unwind_Exception *a1)
{
  v3 = *(v1 - 176);
  if (v3)
  {
    *(v1 - 168) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(a1);
}

void sub_18F80B1C4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  CACFDictionary::~CACFDictionary((v9 - 176));
  CACFDictionary::~CACFDictionary(va);
  _Unwind_Resume(a1);
}

void *std::vector<AudioFormatListItem>::vector[abi:ne200100](void *result, unint64_t a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    std::vector<AudioFormatListItem>::__vallocate[abi:ne200100](result, a2);
  }

  return result;
}

void sub_18F80B324(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t MP4AudioStream::SetStreamLengthAndPacketCountPerPacketProvider(uint64_t this)
{
  v1 = *(this + 472);
  if (v1)
  {
    v2 = this;
    if (MP4BoxParser_Track::GetInfoFromTrackSubBoxes(*(this + 472)))
    {
      v3 = 0;
    }

    else
    {
      v3 = *(v1 + 104);
    }

    ((*v2)[12])(v2, *(v1 + 448) + v3);
    v4 = (*(*v2[59] + 32))(v2[59]);
    ((*v2)[10])(v2, v4);
    this = MP4Parser_PacketProvider::GetMaximumPacketSize(v2[59]);
    *(v2 + 28) = this;
    v5 = v2[1];
    v11 = 1;
    v6 = v5[3];
    if (v6)
    {
      this = v6(v5[5], *(v5 + 2), 1650683508, &v11);
      v7 = v2[1];
      v8 = v7[3];
      v12 = 1;
      if (v8)
      {
        this = v8(v7[5], *(v7 + 2), 1885564532, &v12);
        v9 = v2[1];
        v10 = v9[3];
        v13 = 1;
        if (v10)
        {
          return v10(v9[5], *(v9 + 2), 1886616165, &v13);
        }
      }
    }
  }

  return this;
}

uint64_t MP4AudioStream::Seek(MP4AudioStream *this, uint64_t a2, uint64_t *a3, unsigned int *a4)
{
  if ((*(**(this + 59) + 32))(*(this + 59)) < a2)
  {
    return 1836020325;
  }

  v11 = 0;
  result = MP4Parser_PacketProvider::GetPacketOffset(*(this + 59), a2, &v11);
  v9 = v11;
  *a3 = v11 - *(this + 13);
  if (!result)
  {
    *a4 = 0;
    *(this + 59) = 0;
    *(this + 30) = AudioFileStreamObject::GeneratePackets;
    *(this + 31) = 0;
    *(this + 23) = a2;
    v10 = *(this + 1);
    *(v10 + 88) = v9;
    *(v10 + 96) = v9;
    *(v10 + 80) = 0;
    *(v10 + 72) = 0;
  }

  return result;
}

uint64_t MP4AudioStream::GetProperty(MP4AudioStream *this, int a2, unsigned int *a3, void *__dst)
{
  if (a2 == 1819243876)
  {
    if (*a3 == 8)
    {
      v5 = *(this + 106);
      if (v5)
      {
        v7 = *(this + 106);
        v8 = 256;
        CFRetain(v5);
        goto LABEL_9;
      }

      return 1836020325;
    }

    return 561211770;
  }

  if (a2 == 1935893603)
  {
    if (*a3 == 8)
    {
      v5 = *(this + 104);
      if (v5)
      {
        v7 = *(this + 104);
        v8 = 0;
        CFRetain(v5);
LABEL_9:
        *__dst = v5;
        CACFDictionary::~CACFDictionary(&v7);
        return 0;
      }

      return 1836020325;
    }

    return 561211770;
  }

  return AudioFileStreamObject::GetProperty(this, a2, a3, __dst);
}

uint64_t MP4AudioStream::GetPropertyInfo(MP4AudioStream *this, int a2, unsigned int *a3, unsigned __int8 *a4)
{
  if (a2 != 1819243876 && a2 != 1935893603)
  {
    return AudioFileStreamObject::GetPropertyInfo(this, a2, a3, a4);
  }

  if (a3)
  {
    *a3 = 8;
  }

  if (a4)
  {
    *a4 = 0;
  }

  return 0;
}

void MP4AudioStream::~MP4AudioStream(MP4AudioStream *this)
{
  MP4AudioStream::~MP4AudioStream(this);

  JUMPOUT(0x193ADF220);
}

{
  *this = &unk_1F0331480;
  v2 = *(this + 60);
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  v3 = *(this + 61);
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  v4 = *(this + 59);
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }

  v5 = *(this + 47);
  if (v5)
  {
    free(v5);
  }

  v6 = *(this + 48);
  if (v6)
  {
    free(v6);
  }

  v7 = *(this + 46);
  if (v7)
  {
    free(v7);
  }

  v8 = *(this + 49);
  if (v8)
  {
    free(v8);
  }

  v9 = *(this + 104);
  if (v9)
  {
    CFRelease(v9);
  }

  v10 = *(this + 106);
  if (v10)
  {
    CFRelease(v10);
  }

  v11 = *(this + 107);
  if (v11)
  {
    free(v11);
    *(this + 107) = 0;
  }

  AudioFileStreamObject::~AudioFileStreamObject(this);
}

void MP4AudioStream::MP4AudioStream(MP4AudioStream *this, int a2)
{
  *(this + 4) = 0u;
  *(this + 10) = 0;
  *(this + 11) = -1;
  *(this + 12) = -1;
  *(this + 13) = -1;
  *(this + 17) = 0;
  *(this + 36) = 0;
  *(this + 19) = 0;
  *(this + 88) = 0;
  *(this + 59) = 0;
  *(this + 7) = 0u;
  *(this + 32) = 0;
  *(this + 184) = 0u;
  *(this + 50) = 0;
  *(this + 28) = 0;
  *(this + 232) = 0;
  *(this + 13) = 0u;
  *(this + 30) = AudioFileStreamObject::ParseHeader;
  *(this + 31) = 0;
  *(this + 64) = 0;
  *(this + 33) = 0;
  *(this + 300) = 0;
  *(this + 284) = 0u;
  *(this + 82) = 0;
  *(this + 312) = 0u;
  *this = &unk_1F0331480;
  *(this + 332) = 0;
  *(this + 110) = 0;
  *(this + 456) = 0u;
  *(this + 44) = 0;
  *(this + 90) = 0;
  *(this + 21) = 0u;
  *(this + 23) = 0u;
  *(this + 24) = 0u;
  *(this + 56) = this + 456;
  *(this + 61) = 0;
  *(this + 472) = 0u;
  *(this + 124) = 1;
  *(this + 63) = 0;
  *(this + 128) = 0;
  *(this + 138) = 0;
  *(this + 278) = 256;
  *(this + 820) = 0;
  *(this + 104) = 0;
  *(this + 210) = 0;
  *(this + 562) = 0;
  *(this + 558) = 0;
  *(this + 53) = 0u;
  *(this + 20) = -1;
  *(this + 21) = 0;
  bzero(this + 400, 0x28uLL);
  *(this + 4) = a2;
}

void DSPGraph::NewBoxRegistry::~NewBoxRegistry(DSPGraph::NewBoxRegistry *this)
{
  *this = &unk_1F03315A0;
  v2 = this + 8;
  v3 = (this + 88);
  std::vector<std::pair<std::string,AudioComponentDescription>>::__destroy_vector::operator()[abi:ne200100](&v3);
  std::__hash_table<std::__hash_value_type<AudioComponentDescription,std::function<DSPGraph::Box * ()(unsigned int,unsigned int)>>,std::__unordered_map_hasher<AudioComponentDescription,std::__hash_value_type<AudioComponentDescription,std::function<DSPGraph::Box * ()(unsigned int,unsigned int)>>,std::hash<AudioComponentDescription>,DSPGraph::NewBoxRegistry::AudioComponentDescriptionEquality,true>,std::__unordered_map_equal<AudioComponentDescription,std::__hash_value_type<AudioComponentDescription,std::function<DSPGraph::Box * ()(unsigned int,unsigned int)>>,DSPGraph::NewBoxRegistry::AudioComponentDescriptionEquality,std::hash<AudioComponentDescription>,true>,std::allocator<std::__hash_value_type<AudioComponentDescription,std::function<DSPGraph::Box * ()(unsigned int,unsigned int)>>>>::~__hash_table(this + 48);
  std::__hash_table<std::__hash_value_type<std::string,std::function<DSPGraph::Box * ()(unsigned int,unsigned int)>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::function<DSPGraph::Box * ()(unsigned int,unsigned int)>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::function<DSPGraph::Box * ()(unsigned int,unsigned int)>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::function<DSPGraph::Box * ()(unsigned int,unsigned int)>>>>::~__hash_table(v2);

  JUMPOUT(0x193ADF220);
}

{
  *this = &unk_1F03315A0;
  v2 = this + 8;
  v3 = (this + 88);
  std::vector<std::pair<std::string,AudioComponentDescription>>::__destroy_vector::operator()[abi:ne200100](&v3);
  std::__hash_table<std::__hash_value_type<AudioComponentDescription,std::function<DSPGraph::Box * ()(unsigned int,unsigned int)>>,std::__unordered_map_hasher<AudioComponentDescription,std::__hash_value_type<AudioComponentDescription,std::function<DSPGraph::Box * ()(unsigned int,unsigned int)>>,std::hash<AudioComponentDescription>,DSPGraph::NewBoxRegistry::AudioComponentDescriptionEquality,true>,std::__unordered_map_equal<AudioComponentDescription,std::__hash_value_type<AudioComponentDescription,std::function<DSPGraph::Box * ()(unsigned int,unsigned int)>>,DSPGraph::NewBoxRegistry::AudioComponentDescriptionEquality,std::hash<AudioComponentDescription>,true>,std::allocator<std::__hash_value_type<AudioComponentDescription,std::function<DSPGraph::Box * ()(unsigned int,unsigned int)>>>>::~__hash_table(this + 48);
  std::__hash_table<std::__hash_value_type<std::string,std::function<DSPGraph::Box * ()(unsigned int,unsigned int)>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::function<DSPGraph::Box * ()(unsigned int,unsigned int)>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::function<DSPGraph::Box * ()(unsigned int,unsigned int)>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::function<DSPGraph::Box * ()(unsigned int,unsigned int)>>>>::~__hash_table(v2);
}

DSPGraph::Interpreter *DSPGraph::Interpreter::Interpreter(DSPGraph::Interpreter *this, const DSPGraph::NewBoxRegistry *a2)
{
  *this = &unk_1F0331570;
  *(this + 1) = 0;
  *(this + 2) = &unk_1F03315A0;
  *(this + 24) = 0u;
  v4 = (this + 24);
  *(this + 40) = 0u;
  *(this + 14) = *(a2 + 10);
  std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::__rehash<true>(this + 24, *(a2 + 2));
  v28 = a2;
  v5 = *(a2 + 3);
  if (!v5)
  {
    goto LABEL_20;
  }

  do
  {
    v6 = std::__string_hash<char>::operator()[abi:ne200100]((v5 + 2));
    v7 = v6;
    v8 = *(this + 32);
    if (!*&v8)
    {
      goto LABEL_18;
    }

    v9 = vcnt_s8(v8);
    v9.i16[0] = vaddlv_u8(v9);
    v10 = v9.u32[0];
    if (v9.u32[0] > 1uLL)
    {
      v11 = v6;
      if (v6 >= *&v8)
      {
        v11 = v6 % *&v8;
      }
    }

    else
    {
      v11 = (*&v8 - 1) & v6;
    }

    v12 = *(*v4 + 8 * v11);
    if (!v12 || (v13 = *v12) == 0)
    {
LABEL_18:
      operator new();
    }

    while (1)
    {
      v14 = v13[1];
      if (v14 == v7)
      {
        break;
      }

      if (v10 > 1)
      {
        if (v14 >= *&v8)
        {
          v14 %= *&v8;
        }
      }

      else
      {
        v14 &= *&v8 - 1;
      }

      if (v14 != v11)
      {
        goto LABEL_18;
      }

LABEL_17:
      v13 = *v13;
      if (!v13)
      {
        goto LABEL_18;
      }
    }

    if (!std::equal_to<std::string>::operator()[abi:ne200100](v13 + 2, v5 + 2))
    {
      goto LABEL_17;
    }

    v5 = *v5;
  }

  while (v5);
LABEL_20:
  *(this + 4) = 0u;
  *(this + 5) = 0u;
  *(this + 24) = *(v28 + 20);
  std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::__rehash<true>(this + 64, *(v28 + 7));
  v15 = *(v28 + 8);
  if (!v15)
  {
    goto LABEL_43;
  }

  while (2)
  {
    v16 = *(v15 + 5) + *(v15 + 4) + *(v15 + 6);
    v17 = *(this + 72);
    if (!*&v17)
    {
      goto LABEL_41;
    }

    v18 = vcnt_s8(v17);
    v18.i16[0] = vaddlv_u8(v18);
    if (v18.u32[0] > 1uLL)
    {
      v19 = *(v15 + 5) + *(v15 + 4) + *(v15 + 6);
      if (v16 >= *&v17)
      {
        v19 = v16 % *&v17;
      }
    }

    else
    {
      v19 = (*&v17 - 1) & v16;
    }

    v20 = *(*(this + 8) + 8 * v19);
    if (!v20 || (v21 = *v20) == 0)
    {
LABEL_41:
      operator new();
    }

    while (2)
    {
      v22 = v21[1];
      if (v22 != v16)
      {
        if (v18.u32[0] > 1uLL)
        {
          if (v22 >= *&v17)
          {
            v22 %= *&v17;
          }
        }

        else
        {
          v22 &= *&v17 - 1;
        }

        if (v22 != v19)
        {
          goto LABEL_41;
        }

        goto LABEL_40;
      }

      if (v21[2] != v15[2] || *(v21 + 6) != *(v15 + 6))
      {
LABEL_40:
        v21 = *v21;
        if (!v21)
        {
          goto LABEL_41;
        }

        continue;
      }

      break;
    }

    v15 = *v15;
    if (v15)
    {
      continue;
    }

    break;
  }

LABEL_43:
  *(this + 13) = 0;
  *(this + 14) = 0;
  *(this + 15) = 0;
  v24 = *(v28 + 11);
  v25 = *(v28 + 12);
  if (v25 != v24)
  {
    v26 = 0xAAAAAAAAAAAAAAABLL * ((v25 - v24) >> 4);
    if (v26 < 0x555555555555556)
    {
      std::allocator<std::pair<std::string,AudioComponentDescription>>::allocate_at_least[abi:ne200100](v26);
    }

    std::vector<APAC::UI18>::__throw_length_error[abi:ne200100]();
  }

  *(this + 20) = 0;
  *(this + 8) = 0u;
  *(this + 9) = 0u;
  *(this + 42) = 1;
  *(this + 22) = 0;
  *(this + 184) = 0;
  *(this + 25) = 0;
  *(this + 26) = 0;
  *(this + 24) = 0;
  return this;
}

void sub_18F80C180(_Unwind_Exception *a1)
{
  std::__hash_table<std::__hash_value_type<AudioComponentDescription,std::function<DSPGraph::Box * ()(unsigned int,unsigned int)>>,std::__unordered_map_hasher<AudioComponentDescription,std::__hash_value_type<AudioComponentDescription,std::function<DSPGraph::Box * ()(unsigned int,unsigned int)>>,std::hash<AudioComponentDescription>,DSPGraph::NewBoxRegistry::AudioComponentDescriptionEquality,true>,std::__unordered_map_equal<AudioComponentDescription,std::__hash_value_type<AudioComponentDescription,std::function<DSPGraph::Box * ()(unsigned int,unsigned int)>>,DSPGraph::NewBoxRegistry::AudioComponentDescriptionEquality,std::hash<AudioComponentDescription>,true>,std::allocator<std::__hash_value_type<AudioComponentDescription,std::function<DSPGraph::Box * ()(unsigned int,unsigned int)>>>>::~__hash_table(v3);
  std::__hash_table<std::__hash_value_type<std::string,std::function<DSPGraph::Box * ()(unsigned int,unsigned int)>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::function<DSPGraph::Box * ()(unsigned int,unsigned int)>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::function<DSPGraph::Box * ()(unsigned int,unsigned int)>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::function<DSPGraph::Box * ()(unsigned int,unsigned int)>>>>::~__hash_table(v2);
  v5 = *(v1 + 8);
  *(v1 + 8) = 0;
  if (v5)
  {
    (*(*v5 + 8))(v5);
  }

  _Unwind_Resume(a1);
}

uint64_t std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<std::pair<std::string,AudioComponentDescription>>,std::pair<std::string,AudioComponentDescription>*>>::~__exception_guard_exceptions[abi:ne200100](uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    v3 = **(a1 + 16);
    v4 = **(a1 + 8);
    while (v3 != v4)
    {
      v5 = *(v3 - 25);
      v3 -= 6;
      if (v5 < 0)
      {
        operator delete(*v3);
      }
    }
  }

  return a1;
}

uint64_t std::ifstream::~ifstream(void *a1)
{
  v1 = MEMORY[0x1E69E54C8];
  v2 = *MEMORY[0x1E69E54C8];
  *a1 = *MEMORY[0x1E69E54C8];
  *(a1 + *(v2 - 24)) = *(v1 + 24);
  MEMORY[0x193ADEDD0](a1 + 2);

  return std::istream::~istream();
}

os_log_t ___ZN8DSPGraph6getLogEv_block_invoke_8896()
{
  result = os_log_create("com.apple.coreaudio", "DSPGraph");
  DSPGraph::getLog(void)::gLog = result;
  return result;
}

uint64_t DSPGraph::Preprocessor::def(void *a1, const void **a2)
{
  v2 = a1[1];
  if (a1[2] == v2)
  {
    goto LABEL_21;
  }

  v3 = a1[4];
  v4 = (v2 + 8 * (v3 >> 9));
  v5 = *v4;
  v6 = *v4 + 8 * (v3 & 0x1FF);
  v7 = *(v2 + (((a1[5] + v3) >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * ((a1[5] + v3) & 0x1FF);
  if (v6 != v7)
  {
    v8 = *(a2 + 23);
    if (v8 >= 0)
    {
      v9 = *(a2 + 23);
    }

    else
    {
      v9 = a2[1];
    }

    if (v8 >= 0)
    {
      v10 = a2;
    }

    else
    {
      v10 = *a2;
    }

    while (1)
    {
      v11 = *v6;
      v12 = *(*v6 + 31);
      v13 = v12;
      if ((v12 & 0x80u) != 0)
      {
        v12 = *(*v6 + 16);
      }

      if (v12 == v9)
      {
        v16 = *(v11 + 8);
        v14 = v11 + 8;
        v15 = v16;
        v17 = (v13 >= 0 ? v14 : v15);
        if (!memcmp(v17, v10, v9))
        {
          break;
        }
      }

      v6 += 8;
      if (v6 - v5 == 4096)
      {
        v18 = v4[1];
        ++v4;
        v5 = v18;
        v6 = v18;
      }

      if (v6 == v7)
      {
        goto LABEL_21;
      }
    }
  }

  if (v6 == v7)
  {
LABEL_21:
    operator new();
  }

  return *v6;
}

void DSPGraph::Preprocessor::~Preprocessor(DSPGraph::Preprocessor *this)
{
  v2 = (this + 48);
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v2);

  std::deque<std::unique_ptr<DSPGraph::Macro>>::~deque[abi:ne200100](this);
}

void DSPGraph::Interpreter::parseOrderCommand(DSPGraph::Interpreter *this, const char **a2)
{
  v14[0] = 0;
  v14[1] = 0;
  v15 = 0;
  v12[0] = 0;
  v12[1] = 0;
  v13 = 0;
  if ((DSPGraph::Interpreter::parseString(a2, v14) & 1) == 0)
  {
    std::string::basic_string[abi:ne200100]<0>(&v11, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Interpreter.cpp");
    std::string::basic_string[abi:ne200100]<0>(&v10, "parseOrderCommand");
    std::string::basic_string[abi:ne200100]<0>(&v9, "expected 'before' argument in 'order' command");
    DSPGraph::ThrowException(1886548769, &v11, 1088, &v10, &v9);
  }

  if ((DSPGraph::Interpreter::parseString(a2, v12) & 1) == 0)
  {
    std::string::basic_string[abi:ne200100]<0>(&v11, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Interpreter.cpp");
    std::string::basic_string[abi:ne200100]<0>(&v10, "parseOrderCommand");
    std::string::basic_string[abi:ne200100]<0>(&v9, "expected 'after' argument in 'order' command");
    DSPGraph::ThrowException(1886548769, &v11, 1091, &v10, &v9);
  }

  v4 = *(this + 1);
  v5 = std::__hash_table<std::__hash_value_type<std::string,DSPGraph::Box *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,DSPGraph::Box *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,DSPGraph::Box *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,DSPGraph::Box *>>>::find<std::string>(v4 + 98, v14);
  if (!v5 || (v6 = v5[5]) == 0)
  {
    std::string::basic_string[abi:ne200100]<0>(&v11, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Interpreter.cpp");
    std::string::basic_string[abi:ne200100]<0>(&v10, "parseOrderCommand");
    std::string::basic_string[abi:ne200100]<0>(&v9, "order : before box not found");
    DSPGraph::ThrowException(1852204065, &v11, 1096, &v10, &v9);
  }

  v7 = std::__hash_table<std::__hash_value_type<std::string,DSPGraph::Box *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,DSPGraph::Box *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,DSPGraph::Box *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,DSPGraph::Box *>>>::find<std::string>(v4 + 98, v12);
  if (!v7 || (v8 = v7[5]) == 0)
  {
    std::string::basic_string[abi:ne200100]<0>(&v11, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Interpreter.cpp");
    std::string::basic_string[abi:ne200100]<0>(&v10, "parseOrderCommand");
    std::string::basic_string[abi:ne200100]<0>(&v9, "order : after box not found");
    DSPGraph::ThrowException(1852204065, &v11, 1101, &v10, &v9);
  }

  DSPGraph::Graph::addOrderingConstraint(v4, v6, v8);
  if (SHIBYTE(v13) < 0)
  {
    operator delete(v12[0]);
  }

  if (SHIBYTE(v15) < 0)
  {
    operator delete(v14[0]);
  }
}

void sub_18F80C7D8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  if (a27 < 0)
  {
    operator delete(a22);
  }

  if (*(v27 - 41) < 0)
  {
    operator delete(*(v27 - 64));
  }

  if (*(v27 - 17) < 0)
  {
    operator delete(*(v27 - 40));
  }

  _Unwind_Resume(exception_object);
}

void DSPGraph::Interpreter::parseSetCommand(DSPGraph::Interpreter *this, const char **a2)
{
  v23 = 0uLL;
  v24 = 0;
  if ((DSPGraph::Interpreter::parseString(a2, &v23) & 1) == 0)
  {
    std::string::basic_string[abi:ne200100]<0>(&v27, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Interpreter.cpp");
    std::string::basic_string[abi:ne200100]<0>(&v26, "parseSetCommand");
    std::string::basic_string[abi:ne200100]<0>(&v25, "expected name argument in 'set' command");
    DSPGraph::ThrowException(1886548769, &v27, 1111, &v26, &v25);
  }

  if (SHIBYTE(v24) < 0)
  {
    switch(*(&v23 + 1))
    {
      case 0xDLL:
        if (*v23 == 0x7275446563696C73 && *(v23 + 5) == 0x6E6F697461727544)
        {
          goto LABEL_52;
        }

        break;
      case 0xELL:
        if (*v23 == 0x416D726F66726570 && *(v23 + 6) == 0x6E7552797244416DLL)
        {
          goto LABEL_45;
        }

        if (*v23 == 0x694664726F636572 && *(v23 + 6) == 0x65707954656C6946)
        {
LABEL_43:
          HIDWORD(v21[0]) = 0;
          if ((DSPGraph::Interpreter::parse4cc(a2, (v21 + 4), 1) & 1) == 0)
          {
            std::string::basic_string[abi:ne200100]<0>(&v27, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Interpreter.cpp");
            std::string::basic_string[abi:ne200100]<0>(&v26, "parseSetCommand");
            std::string::basic_string[abi:ne200100]<0>(&v25, "expected 4 char code in 'set recordFileType' command");
            DSPGraph::ThrowException(1886548769, &v27, 1122, &v26, &v25);
          }

          *(*(this + 1) + 940) = HIDWORD(v21[0]);
          goto LABEL_56;
        }

        break;
      case 0x15:
        v5 = v23;
        goto LABEL_11;
      default:
        break;
    }

LABEL_59:
    std::string::basic_string[abi:ne200100]<0>(&v27, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Interpreter.cpp");
    std::string::basic_string[abi:ne200100]<0>(&v26, "operator()");
    v20 = &v23;
    if (v24 < 0)
    {
      v20 = v23;
    }

    DSPGraph::strprintf("unknown value name '%s' in 'set' command", v19, v20);
  }

  if (HIBYTE(v24) == 13)
  {
    if (v23 != 0x7275446563696C73 || *(&v23 + 5) != 0x6E6F697461727544)
    {
      goto LABEL_59;
    }

LABEL_52:
    v11 = 0;
LABEL_53:
    v22 = 0;
    if ((DSPGraph::Interpreter::parseUInt32(a2, &v22, v4) & 1) == 0)
    {
      std::string::basic_string[abi:ne200100]<0>(&v27, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Interpreter.cpp");
      std::string::basic_string[abi:ne200100]<0>(&v26, "parseSetCommand");
      std::operator+<char>();
      std::operator+[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(&v25, (v21 + 4), "' command");
      DSPGraph::ThrowException(1886548769, &v27, 1138, &v26, &v25);
    }

    LODWORD(v21[0]) = 0;
    if ((DSPGraph::Interpreter::parseUInt32(a2, v21, v18) & 1) == 0)
    {
      std::string::basic_string[abi:ne200100]<0>(&v27, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Interpreter.cpp");
      std::string::basic_string[abi:ne200100]<0>(&v26, "parseSetCommand");
      std::operator+<char>();
      std::operator+[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(&v25, (v21 + 4), "' command");
      DSPGraph::ThrowException(1886548769, &v27, 1142, &v26, &v25);
    }

    DSPGraph::Graph::setSliceDuration(*(this + 1), v22, v21[0], v11);
    goto LABEL_56;
  }

  if (HIBYTE(v24) != 14)
  {
    if (HIBYTE(v24) != 21)
    {
      goto LABEL_59;
    }

    v5 = &v23;
LABEL_11:
    v6 = *v5;
    v7 = v5[1];
    v8 = *(v5 + 13);
    if (v6 != 0x656C626169726176 || v7 != 0x7275446563696C53 || v8 != 0x6E6F697461727544)
    {
      goto LABEL_59;
    }

    v11 = 1;
    goto LABEL_53;
  }

  if (v23 != 0x416D726F66726570 || *(&v23 + 6) != 0x6E7552797244416DLL)
  {
    if (v23 != 0x694664726F636572 || *(&v23 + 6) != 0x65707954656C6946)
    {
      goto LABEL_59;
    }

    goto LABEL_43;
  }

LABEL_45:
  BYTE4(v21[0]) = 0;
  if ((DSPGraph::Interpreter::parseBool(a2, (v21 + 4), v4) & 1) == 0)
  {
    std::string::basic_string[abi:ne200100]<0>(&v27, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Interpreter.cpp");
    std::string::basic_string[abi:ne200100]<0>(&v26, "parseSetCommand");
    std::string::basic_string[abi:ne200100]<0>(&v25, "expected integer in 'set performADryRun' command");
    DSPGraph::ThrowException(1886548769, &v27, 1116, &v26, &v25);
  }

  *(*(this + 1) + 765) = BYTE4(v21[0]);
LABEL_56:
  if (SHIBYTE(v24) < 0)
  {
    operator delete(v23);
  }
}

void sub_18F80CD7C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, void *__p, uint64_t a25, int a26, __int16 a27, char a28, char a29)
{
  if (a29 < 0)
  {
    operator delete(__p);
  }

  if (*(v29 - 57) < 0)
  {
    operator delete(*(v29 - 80));
  }

  if (*(v29 - 33) < 0)
  {
    operator delete(*(v29 - 56));
  }

  if (a23 < 0)
  {
    operator delete(a18);
  }

  _Unwind_Resume(exception_object);
}

void DSPGraph::Interpreter::parseBeginSubsetCommand(DSPGraph::Interpreter *this, const char **a2)
{
  __p[0] = 0;
  __p[1] = 0;
  v20 = 0;
  if ((DSPGraph::Interpreter::parseString(a2, __p) & 1) == 0)
  {
    std::string::basic_string[abi:ne200100]<0>(&v18, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Interpreter.cpp");
    std::string::basic_string[abi:ne200100]<0>(&v17, "parseBeginSubsetCommand");
    std::string::basic_string[abi:ne200100]<0>(&v16, "expected name argument in 'beginSubset' command");
    DSPGraph::ThrowException(1886548769, &v18, 1152, &v17, &v16);
  }

  v3 = DSPGraph::Graph::addSubset(*(this + 1), __p);
  v5 = *(this + 25);
  v4 = *(this + 26);
  if (v5 >= v4)
  {
    v7 = *(this + 24);
    v8 = v5 - v7;
    v9 = (v5 - v7) >> 3;
    v10 = v9 + 1;
    if ((v9 + 1) >> 61)
    {
      std::vector<APAC::UI18>::__throw_length_error[abi:ne200100]();
    }

    v11 = v4 - v7;
    if (v11 >> 2 > v10)
    {
      v10 = v11 >> 2;
    }

    if (v11 >= 0x7FFFFFFFFFFFFFF8)
    {
      v12 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v12 = v10;
    }

    if (v12)
    {
      if (!(v12 >> 61))
      {
        operator new();
      }

      std::__throw_bad_array_new_length[abi:ne200100]();
    }

    v13 = (v5 - v7) >> 3;
    v14 = (8 * v9);
    v15 = (8 * v9 - 8 * v13);
    *v14 = v3;
    v6 = v14 + 1;
    memcpy(v15, v7, v8);
    *(this + 24) = v15;
    *(this + 25) = v6;
    *(this + 26) = 0;
    if (v7)
    {
      operator delete(v7);
    }
  }

  else
  {
    *v5 = v3;
    v6 = v5 + 1;
  }

  *(this + 25) = v6;
  if (SHIBYTE(v20) < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_18F80D000(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, void *a27, uint64_t a28, int a29, __int16 a30, char a31, char a32)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a20 < 0)
  {
    operator delete(a15);
  }

  if (a26 < 0)
  {
    operator delete(a21);
  }

  if (a32 < 0)
  {
    operator delete(a27);
  }

  _Unwind_Resume(exception_object);
}

uint64_t DSPGraph::Interpreter::parseEndSubsetCommand(uint64_t this, const char **a2)
{
  v2 = *(this + 200);
  if (*(this + 192) == v2)
  {
    std::string::basic_string[abi:ne200100]<0>(&v5, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Interpreter.cpp");
    std::string::basic_string[abi:ne200100]<0>(&v4, "parseEndSubsetCommand");
    std::string::basic_string[abi:ne200100]<0>(&v3, "unexpected 'endSubset' command");
    DSPGraph::ThrowException(1886548769, &v5, 1162, &v4, &v3);
  }

  *(this + 200) = v2 - 8;
  return this;
}

void sub_18F80D0F4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  if (*(v21 - 17) < 0)
  {
    operator delete(*(v21 - 40));
  }

  _Unwind_Resume(exception_object);
}

void DSPGraph::Interpreter::parseComponentNameCommand(DSPGraph::Interpreter *this, const char **a2)
{
  v8[0] = 0;
  v8[1] = 0;
  v9 = 0;
  if ((DSPGraph::Interpreter::parseString(this, v8) & 1) == 0)
  {
    std::string::basic_string[abi:ne200100]<0>(&v6, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Interpreter.cpp");
    std::string::basic_string[abi:ne200100]<0>(&v5, "parseComponentNameCommand");
    std::string::basic_string[abi:ne200100]<0>(&v4, "expected a string in 'componentName' command");
    DSPGraph::ThrowException(1886548769, &v6, 1181, &v5, &v4);
  }

  v6 = 0uLL;
  v7 = 0;
  if ((DSPGraph::Interpreter::parseString(this, &v6) & 1) == 0)
  {
    std::string::basic_string[abi:ne200100]<0>(&v5, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Interpreter.cpp");
    std::string::basic_string[abi:ne200100]<0>(&v4, "parseComponentNameCommand");
    std::string::basic_string[abi:ne200100]<0>(&v3, "expected a string in 'componentName' command");
    DSPGraph::ThrowException(1886548769, &v5, 1186, &v4, &v3);
  }

  if (SHIBYTE(v7) < 0)
  {
    operator delete(v6);
  }

  if (SHIBYTE(v9) < 0)
  {
    operator delete(v8[0]);
  }
}

void sub_18F80D254(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  if (a27 < 0)
  {
    operator delete(a22);
  }

  if (*(v27 - 41) < 0)
  {
    operator delete(*(v27 - 64));
  }

  if (*(v27 - 17) < 0)
  {
    operator delete(*(v27 - 40));
  }

  _Unwind_Resume(exception_object);
}

void DSPGraph::Interpreter::parseJackCommand(DSPGraph::Interpreter *this, const char **a2)
{
  v6[0] = 0;
  v6[1] = 0;
  v7 = 0;
  if ((DSPGraph::Interpreter::parseString(a2, v6) & 1) == 0)
  {
    std::string::basic_string[abi:ne200100]<0>(&v5, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Interpreter.cpp");
    std::string::basic_string[abi:ne200100]<0>(&v4, "parseJackCommand");
    std::string::basic_string[abi:ne200100]<0>(&v3, "jack : expected name.");
    DSPGraph::ThrowException(1886548769, &v5, 1213, &v4, &v3);
  }

  DSPGraph::Graph::addJack(*(this + 1), v6);
  if (SHIBYTE(v7) < 0)
  {
    operator delete(v6[0]);
  }
}

void sub_18F80D394(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a20 < 0)
  {
    operator delete(a15);
  }

  if (a26 < 0)
  {
    operator delete(a21);
  }

  if (*(v26 - 17) < 0)
  {
    operator delete(*(v26 - 40));
  }

  _Unwind_Resume(exception_object);
}

void DSPGraph::Interpreter::parseRecordCommand(DSPGraph::Interpreter *this, const char **a2)
{
  v47 = *MEMORY[0x1E69E9840];
  memset(&__str, 0, sizeof(__str));
  if ((DSPGraph::Interpreter::parseString(a2, &__str) & 1) == 0)
  {
    std::string::basic_string[abi:ne200100]<0>(__s, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Interpreter.cpp");
    std::string::basic_string[abi:ne200100]<0>(&v40, "parseRecordCommand");
    std::string::basic_string[abi:ne200100]<0>(&v39, "record : expected a file path.");
    DSPGraph::ThrowException(1886548769, __s, 1225, &v40, &v39);
  }

  if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    p_str = &__str;
  }

  else
  {
    p_str = __str.__r_.__value_.__r.__words[0];
  }

  if (strchr(p_str, 37))
  {
    bzero(__s, 0x400uLL);
    v36.__r_.__value_.__r.__words[0] = 0;
    time(&v36);
    v5 = localtime(&v36);
    if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v6 = &__str;
    }

    else
    {
      v6 = __str.__r_.__value_.__r.__words[0];
    }

    if (!strftime(__s, 0x400uLL, v6, v5))
    {
      std::string::basic_string[abi:ne200100]<0>(&v40, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Interpreter.cpp");
      std::string::basic_string[abi:ne200100]<0>(&v39, "parseRecordCommand");
      std::string::basic_string[abi:ne200100]<0>(__p, "record file path from date failed to format");
      DSPGraph::ThrowException(1886548769, &v40, 1234, &v39, __p);
    }

    v46 = 0;
    std::string::__assign_external(&__str, __s);
  }

  v7 = __s;
  std::string::basic_string[abi:ne200100]<0>(__s, "$TMPDIR/");
  size = HIBYTE(__str.__r_.__value_.__r.__words[2]);
  if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v9 = &__str;
  }

  else
  {
    v9 = __str.__r_.__value_.__r.__words[0];
  }

  if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    size = __str.__r_.__value_.__l.__size_;
  }

  if ((v45 & 0x80u) == 0)
  {
    v10 = v45;
  }

  else
  {
    v7 = *__s;
    v10 = *&__s[8];
  }

  if (v10)
  {
    if (size >= v10)
    {
      v11 = (v9 + size);
      v12 = *v7;
      v13 = v9;
      do
      {
        v14 = size - v10;
        if (v14 == -1)
        {
          break;
        }

        v15 = memchr(v13, v12, v14 + 1);
        if (!v15)
        {
          break;
        }

        v16 = v15;
        if (!memcmp(v15, v7, v10))
        {
          if (v16 == v11 || v16 != v9)
          {
            break;
          }

          goto LABEL_29;
        }

        v13 = (&v16->__r_.__value_.__l.__data_ + 1);
        size = v11 - (&v16->__r_.__value_.__l.__data_ + 1);
      }

      while (size >= v10);
    }
  }

  else
  {
LABEL_29:
    v17 = getenv("TMPDIR");
    if (v17)
    {
      v18 = v17;
    }

    else
    {
      v18 = "/tmp/";
    }

    v19 = strlen(v18);
    v20 = "/";
    if (v19 && v18[v19 - 1] == 47)
    {
      v20 = "";
    }

    std::string::basic_string[abi:ne200100]<0>(&v39, v18);
    std::string::basic_string[abi:ne200100]<0>(__p, v20);
    if ((v38 & 0x80u) == 0)
    {
      v21 = __p;
    }

    else
    {
      v21 = __p[0];
    }

    if ((v38 & 0x80u) == 0)
    {
      v22 = v38;
    }

    else
    {
      v22 = __p[1];
    }

    v23 = std::string::append(&v39, v21, v22);
    v24 = *&v23->__r_.__value_.__l.__data_;
    v40.__r_.__value_.__r.__words[2] = v23->__r_.__value_.__r.__words[2];
    *&v40.__r_.__value_.__l.__data_ = v24;
    v23->__r_.__value_.__l.__size_ = 0;
    v23->__r_.__value_.__r.__words[2] = 0;
    v23->__r_.__value_.__r.__words[0] = 0;
    if ((v45 & 0x80u) == 0)
    {
      v25 = v45;
    }

    else
    {
      v25 = *&__s[8];
    }

    std::string::basic_string(&v36, &__str, v25, 0xFFFFFFFFFFFFFFFFLL, &v42);
    if ((v36.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v26 = &v36;
    }

    else
    {
      v26 = v36.__r_.__value_.__r.__words[0];
    }

    if ((v36.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v27 = HIBYTE(v36.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v27 = v36.__r_.__value_.__l.__size_;
    }

    v28 = std::string::append(&v40, v26, v27);
    v29 = v28->__r_.__value_.__r.__words[0];
    *v43 = v28->__r_.__value_.__l.__size_;
    *&v43[7] = *(&v28->__r_.__value_.__r.__words[1] + 7);
    v30 = HIBYTE(v28->__r_.__value_.__r.__words[2]);
    v28->__r_.__value_.__l.__size_ = 0;
    v28->__r_.__value_.__r.__words[2] = 0;
    v28->__r_.__value_.__r.__words[0] = 0;
    if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__str.__r_.__value_.__l.__data_);
    }

    __str.__r_.__value_.__r.__words[0] = v29;
    __str.__r_.__value_.__l.__size_ = *v43;
    *(&__str.__r_.__value_.__r.__words[1] + 7) = *&v43[7];
    *(&__str.__r_.__value_.__s + 23) = v30;
    if (SHIBYTE(v36.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v36.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v40.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v40.__r_.__value_.__l.__data_);
    }

    if (v38 < 0)
    {
      operator delete(__p[0]);
    }

    if (SHIBYTE(v39.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v39.__r_.__value_.__l.__data_);
    }
  }

  memset(&v40, 0, sizeof(v40));
  *v43 = 0;
  if ((DSPGraph::Interpreter::parsePortDesc(a2, &v40.__r_.__value_.__l.__data_, v43) & 1) == 0)
  {
    std::string::basic_string[abi:ne200100]<0>(&v39, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Interpreter.cpp");
    std::string::basic_string[abi:ne200100]<0>(__p, "parseRecordCommand");
    std::string::basic_string[abi:ne200100]<0>(&v36, "record port description parse failed.");
    DSPGraph::ThrowException(1886548769, &v39, 1257, __p, &v36);
  }

  v42 = 0;
  DSPGraph::Interpreter::parseBool(a2, &v42, v31);
  v32 = std::__hash_table<std::__hash_value_type<std::string,DSPGraph::Box *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,DSPGraph::Box *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,DSPGraph::Box *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,DSPGraph::Box *>>>::find<std::string>((*(this + 1) + 784), &v40);
  if (!v32 || (v33 = v32[5]) == 0)
  {
    std::string::basic_string[abi:ne200100]<0>(&v39, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Interpreter.cpp");
    std::string::basic_string[abi:ne200100]<0>(__p, "parseRecordCommand");
    std::string::basic_string[abi:ne200100]<0>(&v36, "record box not found");
    DSPGraph::ThrowException(1852204065, &v39, 1265, __p, &v36);
  }

  if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v34 = &__str;
  }

  else
  {
    v34 = __str.__r_.__value_.__r.__words[0];
  }

  (*(*v33 + 152))(v33, v34, *v43, 1, v42, 4096);
  if (SHIBYTE(v40.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v40.__r_.__value_.__l.__data_);
  }

  if (v45 < 0)
  {
    operator delete(*__s);
  }

  if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__str.__r_.__value_.__l.__data_);
  }

  v35 = *MEMORY[0x1E69E9840];
}

void sub_18F80D928(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33, void *a34, uint64_t a35, int a36, __int16 a37, char a38, char a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, int a45, __int16 a46, char a47, char a48)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  if (a27 < 0)
  {
    operator delete(a22);
  }

  if (a33 < 0)
  {
    operator delete(a28);
  }

  if (a39 < 0)
  {
    operator delete(a34);
  }

  _Unwind_Resume(exception_object);
}

void DSPGraph::Interpreter::parseInjectCommand(DSPGraph::Interpreter *this, const char **a2)
{
  v13[0] = 0;
  v13[1] = 0;
  v14 = 0;
  if ((DSPGraph::Interpreter::parseString(a2, v13) & 1) == 0)
  {
    std::string::basic_string[abi:ne200100]<0>(&v11, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Interpreter.cpp");
    std::string::basic_string[abi:ne200100]<0>(&v10, "parseInjectCommand");
    std::string::basic_string[abi:ne200100]<0>(v9 + 4, "inject : expected a file path.");
    DSPGraph::ThrowException(1886548769, &v11, 1276, &v10, (v9 + 4));
  }

  v11 = 0uLL;
  v12 = 0;
  LODWORD(v9[0]) = 0;
  if ((DSPGraph::Interpreter::parsePortDesc(a2, &v11, v9) & 1) == 0)
  {
    std::string::basic_string[abi:ne200100]<0>(&v10, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Interpreter.cpp");
    std::string::basic_string[abi:ne200100]<0>(v9 + 4, "parseInjectCommand");
    std::string::basic_string[abi:ne200100]<0>(v8 + 1, "inject port description parse failed.");
    DSPGraph::ThrowException(1886548769, &v10, 1283, (v9 + 4), (v8 + 1));
  }

  LOBYTE(v8[0]) = 0;
  DSPGraph::Interpreter::parseBool(a2, v8, v4);
  v5 = std::__hash_table<std::__hash_value_type<std::string,DSPGraph::Box *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,DSPGraph::Box *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,DSPGraph::Box *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,DSPGraph::Box *>>>::find<std::string>((*(this + 1) + 784), &v11);
  if (!v5 || (v6 = v5[5]) == 0)
  {
    std::string::basic_string[abi:ne200100]<0>(&v10, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Interpreter.cpp");
    std::string::basic_string[abi:ne200100]<0>(v9 + 4, "parseInjectCommand");
    std::string::basic_string[abi:ne200100]<0>(v8 + 1, "inject box not found");
    DSPGraph::ThrowException(1852204065, &v10, 1291, (v9 + 4), (v8 + 1));
  }

  if (v14 >= 0)
  {
    v7 = v13;
  }

  else
  {
    v7 = v13[0];
  }

  (*(*v6 + 136))(v6, v7, LODWORD(v9[0]), LOBYTE(v8[0]));
  if (SHIBYTE(v12) < 0)
  {
    operator delete(v11);
  }

  if (SHIBYTE(v14) < 0)
  {
    operator delete(v13[0]);
  }
}

void sub_18F80DC78(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, void *a24, uint64_t a25, int a26, __int16 a27, char a28, char a29)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  if (a23 < 0)
  {
    operator delete(a18);
  }

  if (a29 < 0)
  {
    operator delete(a24);
  }

  if (*(v29 - 41) < 0)
  {
    operator delete(*(v29 - 64));
  }

  if (*(v29 - 17) < 0)
  {
    operator delete(*(v29 - 40));
  }

  _Unwind_Resume(exception_object);
}

void DSPGraph::Interpreter::parseAnalysisCommand(DSPGraph::Interpreter *this, const char **a2)
{
  LODWORD(v12) = 0;
  if ((DSPGraph::Interpreter::parse4cc(a2, &v12, 1) & 1) == 0)
  {
    std::string::basic_string[abi:ne200100]<0>(&v10, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Interpreter.cpp");
    std::string::basic_string[abi:ne200100]<0>(&v9, "parseAnalysisCommand");
    std::string::basic_string[abi:ne200100]<0>(&v8[1], "expected 4cc ID in 'analysis' command");
    DSPGraph::ThrowException(1886548769, &v10, 1345, &v9, &v8[1]);
  }

  v4 = v12;
  if (!std::__hash_table<std::__hash_value_type<unsigned int,DSPGraph::AnalyzerBuilder::Info>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,DSPGraph::AnalyzerBuilder::Info>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,DSPGraph::AnalyzerBuilder::Info>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,DSPGraph::AnalyzerBuilder::Info>>>::find<unsigned int>((*(this + 1) + 952), v12))
  {
    std::string::basic_string[abi:ne200100]<0>(&v10, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Interpreter.cpp");
    std::string::basic_string[abi:ne200100]<0>(&v9, "parseAnalysisCommand");
    std::string::basic_string[abi:ne200100]<0>(&v8[1], "expected valid AnalysisID in 'analysis' command");
    DSPGraph::ThrowException(1886548769, &v10, 1349, &v9, &v8[1]);
  }

  v10 = 0uLL;
  v11 = 0;
  v8[0] = 0;
  if ((DSPGraph::Interpreter::parsePortDesc(a2, &v10, v8) & 1) == 0)
  {
    std::string::basic_string[abi:ne200100]<0>(&v9, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Interpreter.cpp");
    std::string::basic_string[abi:ne200100]<0>(&v8[1], "parseAnalysisCommand");
    std::string::basic_string[abi:ne200100]<0>(&v7, "analysis port description parse failed.");
    DSPGraph::ThrowException(1886548769, &v9, 1356, &v8[1], &v7);
  }

  v5 = std::__hash_table<std::__hash_value_type<std::string,DSPGraph::Box *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,DSPGraph::Box *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,DSPGraph::Box *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,DSPGraph::Box *>>>::find<std::string>((*(this + 1) + 784), &v10);
  if (!v5 || (v6 = v5[5]) == 0)
  {
    std::string::basic_string[abi:ne200100]<0>(&v9, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Interpreter.cpp");
    std::string::basic_string[abi:ne200100]<0>(&v8[1], "parseAnalysisCommand");
    std::string::basic_string[abi:ne200100]<0>(&v7, "analysis box not found");
    DSPGraph::ThrowException(1852204065, &v9, 1360, &v8[1], &v7);
  }

  DSPGraph::Box::addAnalysis(v6, v4, v8[0]);
  if (SHIBYTE(v11) < 0)
  {
    operator delete(v10);
  }
}

void sub_18F80DF1C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  if (a27 < 0)
  {
    operator delete(a22);
  }

  if (*(v27 - 41) < 0)
  {
    operator delete(*(v27 - 64));
  }

  _Unwind_Resume(exception_object);
}

void DSPGraph::Interpreter::parseAnalysisDefineCommand(DSPGraph::Interpreter *this, const char **a2)
{
  v26[5] = *MEMORY[0x1E69E9840];
  LODWORD(v20) = 0;
  if ((DSPGraph::Interpreter::parse4cc(a2, &v20, 1) & 1) == 0)
  {
    std::string::basic_string[abi:ne200100]<0>(&v23, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Interpreter.cpp");
    std::string::basic_string[abi:ne200100]<0>(&v21, "parseAnalysisDefineCommand");
    std::string::basic_string[abi:ne200100]<0>(&__p, "expected 4cc ID in 'analysisDefine' command");
    DSPGraph::ThrowException(1886548769, &v23, 1304, &v21, &__p);
  }

  memset(&__p, 0, sizeof(__p));
  if ((DSPGraph::Interpreter::parseString(a2, &__p) & 1) == 0)
  {
    std::string::basic_string[abi:ne200100]<0>(&v23, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Interpreter.cpp");
    std::string::basic_string[abi:ne200100]<0>(&v21, "parseAnalysisDefineCommand");
    DSPGraph::strprintf("expected name in 'analysisDefine' command: %s", v11, *a2);
  }

  v16[0] = 0;
  v16[1] = 0;
  v17 = 0;
  if (!DSPGraph::Interpreter::parseCompDesc(a2, v16, v4))
  {
    std::string::basic_string[abi:ne200100]<0>(&v23, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Interpreter.cpp");
    std::string::basic_string[abi:ne200100]<0>(&v21, "parseAnalysisDefineCommand");
    DSPGraph::strprintf("expected class name or component description in 'analysisDefine' command: %s", v12, *a2);
  }

  if (LODWORD(v16[0]) >> 15 == 49898)
  {
    v5 = *(this + 1);
    v14[0] = v20;
    *&v14[1] = *v16;
    v14[5] = v17;
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      std::string::__init_copy_ctor_external(&v15, __p.__r_.__value_.__l.__data_, __p.__r_.__value_.__l.__size_);
    }

    else
    {
      v15 = __p;
    }

    v22 = 0;
    operator new();
  }

  v6 = *(this + 1);
  v7 = v20;
  if (v16[0] == 0x74657374616E6C7ALL)
  {
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      std::string::__init_copy_ctor_external(&v13, __p.__r_.__value_.__l.__data_, __p.__r_.__value_.__l.__size_);
    }

    else
    {
      v13 = __p;
    }

    v22 = 0;
    operator new();
  }

  *&v21 = &unk_1F03316E8;
  v22 = &v21;
  HIDWORD(v20) = v20;
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v23, __p.__r_.__value_.__l.__data_, __p.__r_.__value_.__l.__size_);
  }

  else
  {
    v23 = __p;
  }

  v24 = *v16;
  v25 = v17;
  std::__function::__value_func<std::unique_ptr<DSPGraph::Analyzer> ()(void)>::__value_func[abi:ne200100](v26, &v21);
  v18 = &v20 + 4;
  v8 = std::__hash_table<std::__hash_value_type<unsigned int,DSPGraph::AnalyzerBuilder::Info>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,DSPGraph::AnalyzerBuilder::Info>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,DSPGraph::AnalyzerBuilder::Info>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,DSPGraph::AnalyzerBuilder::Info>>>::__emplace_unique_key_args<unsigned int,std::piecewise_construct_t const&,std::tuple<unsigned int const&>,std::tuple<>>((v6 + 952), v7);
  v9 = v8;
  if (*(v8 + 47) < 0)
  {
    operator delete(v8[3]);
  }

  *(v9 + 1) = v23;
  *(&v23.__r_.__value_.__s + 23) = 0;
  v23.__r_.__value_.__s.__data_[0] = 0;
  *(v9 + 3) = v24;
  *(v9 + 16) = v25;
  std::__function::__value_func<std::unique_ptr<DSPGraph::Analyzer> ()(void)>::operator=[abi:ne200100]((v9 + 9), v26);
  std::__function::__value_func<std::unique_ptr<DSPGraph::Analyzer> ()(void)>::~__value_func[abi:ne200100](v26);
  if (SHIBYTE(v23.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v23.__r_.__value_.__l.__data_);
  }

  std::__function::__value_func<std::unique_ptr<DSPGraph::Analyzer> ()(void)>::~__value_func[abi:ne200100](&v21);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  v10 = *MEMORY[0x1E69E9840];
}

void sub_18F80E538(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, int a14, __int16 a15, char a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, uint64_t a27, uint64_t a28, uint64_t a29, void *a30, uint64_t a31, int a32, __int16 a33, char a34, char a35, void *__p, uint64_t a37, int a38, __int16 a39, char a40, char a41, uint64_t a42, void *a43, uint64_t a44, int a45, __int16 a46, char a47, char a48)
{
  std::__function::__value_func<std::unique_ptr<DSPGraph::Analyzer> ()(void)>::~__value_func[abi:ne200100](&a43);
  if (a41 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t std::__function::__value_func<std::unique_ptr<DSPGraph::Analyzer> ()(void)>::__value_func[abi:ne200100](uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 24);
  if (v3)
  {
    if (v3 == a2)
    {
      *(a1 + 24) = a1;
      (*(**(a2 + 24) + 24))(*(a2 + 24), a1);
    }

    else
    {
      *(a1 + 24) = (*(*v3 + 16))(v3);
    }
  }

  else
  {
    *(a1 + 24) = 0;
  }

  return a1;
}

uint64_t *std::__hash_table<std::__hash_value_type<unsigned int,DSPGraph::AnalyzerBuilder::Info>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,DSPGraph::AnalyzerBuilder::Info>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,DSPGraph::AnalyzerBuilder::Info>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,DSPGraph::AnalyzerBuilder::Info>>>::__emplace_unique_key_args<unsigned int,std::piecewise_construct_t const&,std::tuple<unsigned int const&>,std::tuple<>>(void *a1, unsigned int a2)
{
  v2 = a1[1];
  if (!v2)
  {
    goto LABEL_18;
  }

  v3 = vcnt_s8(v2);
  v3.i16[0] = vaddlv_u8(v3);
  if (v3.u32[0] > 1uLL)
  {
    v4 = a2;
    if (v2 <= a2)
    {
      v4 = a2 % v2;
    }
  }

  else
  {
    v4 = (v2 - 1) & a2;
  }

  v5 = *(*a1 + 8 * v4);
  if (!v5 || (v6 = *v5) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v7 = v6[1];
    if (v7 == a2)
    {
      break;
    }

    if (v3.u32[0] > 1uLL)
    {
      if (v7 >= v2)
      {
        v7 %= v2;
      }
    }

    else
    {
      v7 &= v2 - 1;
    }

    if (v7 != v4)
    {
      goto LABEL_18;
    }

LABEL_17:
    v6 = *v6;
    if (!v6)
    {
      goto LABEL_18;
    }
  }

  if (*(v6 + 4) != a2)
  {
    goto LABEL_17;
  }

  return v6;
}

void sub_18F80EB6C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::unique_ptr<std::__hash_node<std::__hash_value_type<unsigned int,DSPGraph::AnalyzerBuilder::Info>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<unsigned int,DSPGraph::AnalyzerBuilder::Info>,void *>>>>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void DSPGraph::AnalyzerBuilder::Info::~Info(void **this)
{
  std::__function::__value_func<std::unique_ptr<DSPGraph::Analyzer> ()(void)>::~__value_func[abi:ne200100]((this + 6));
  if (*(this + 23) < 0)
  {
    operator delete(*this);
  }
}

uint64_t std::__function::__value_func<std::unique_ptr<DSPGraph::Analyzer> ()(void)>::operator=[abi:ne200100](uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 24);
  *(a1 + 24) = 0;
  if (v4 == a1)
  {
    (*(*v4 + 32))(v4);
  }

  else if (v4)
  {
    (*(*v4 + 40))(v4);
  }

  v5 = *(a2 + 24);
  if (v5)
  {
    if (v5 == a2)
    {
      *(a1 + 24) = a1;
      (*(**(a2 + 24) + 24))(*(a2 + 24), a1);
    }

    else
    {
      *(a1 + 24) = v5;
      *(a2 + 24) = 0;
    }
  }

  else
  {
    *(a1 + 24) = 0;
  }

  return a1;
}

uint64_t std::__function::__value_func<std::unique_ptr<DSPGraph::Analyzer> ()(void)>::~__value_func[abi:ne200100](uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 == a1)
  {
    (*(*v2 + 32))(v2);
  }

  else if (v2)
  {
    (*(*v2 + 40))(v2);
  }

  return a1;
}

void std::__function::__func<DSPGraph::Interpreter::parseAnalysisDefineCommand(char const*&)::$_1,std::allocator<DSPGraph::Interpreter::parseAnalysisDefineCommand(char const*&)::$_1>,std::unique_ptr<DSPGraph::Analyzer> ()(void)>::destroy_deallocate(void **__p)
{
  if (*(__p + 39) < 0)
  {
    operator delete(__p[2]);
  }

  operator delete(__p);
}

void std::__function::__func<DSPGraph::Interpreter::parseAnalysisDefineCommand(char const*&)::$_1,std::allocator<DSPGraph::Interpreter::parseAnalysisDefineCommand(char const*&)::$_1>,std::unique_ptr<DSPGraph::Analyzer> ()(void)>::destroy(uint64_t a1)
{
  if (*(a1 + 39) < 0)
  {
    operator delete(*(a1 + 16));
  }
}

void std::__function::__func<DSPGraph::Interpreter::parseAnalysisDefineCommand(char const*&)::$_1,std::allocator<DSPGraph::Interpreter::parseAnalysisDefineCommand(char const*&)::$_1>,std::unique_ptr<DSPGraph::Analyzer> ()(void)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F03316A0;
  *(a2 + 8) = *(a1 + 8);
  if (*(a1 + 39) < 0)
  {
    std::string::__init_copy_ctor_external((a2 + 16), *(a1 + 16), *(a1 + 24));
  }

  else
  {
    v2 = *(a1 + 16);
    *(a2 + 32) = *(a1 + 32);
    *(a2 + 16) = v2;
  }
}

void std::__function::__func<DSPGraph::Interpreter::parseAnalysisDefineCommand(char const*&)::$_1,std::allocator<DSPGraph::Interpreter::parseAnalysisDefineCommand(char const*&)::$_1>,std::unique_ptr<DSPGraph::Analyzer> ()(void)>::~__func(uint64_t a1)
{
  *a1 = &unk_1F03316A0;
  if (*(a1 + 39) < 0)
  {
    operator delete(*(a1 + 16));
  }

  JUMPOUT(0x193ADF220);
}

uint64_t std::__function::__func<DSPGraph::Interpreter::parseAnalysisDefineCommand(char const*&)::$_1,std::allocator<DSPGraph::Interpreter::parseAnalysisDefineCommand(char const*&)::$_1>,std::unique_ptr<DSPGraph::Analyzer> ()(void)>::~__func(uint64_t a1)
{
  *a1 = &unk_1F03316A0;
  if (*(a1 + 39) < 0)
  {
    operator delete(*(a1 + 16));
  }

  return a1;
}

uint64_t std::unique_ptr<std::__hash_node<std::__hash_value_type<unsigned int,DSPGraph::AnalyzerBuilder::Info>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<unsigned int,DSPGraph::AnalyzerBuilder::Info>,void *>>>>::~unique_ptr[abi:ne200100](uint64_t a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      std::__destroy_at[abi:ne200100]<std::pair<unsigned int const,DSPGraph::AnalyzerBuilder::Info>,0>(v2 + 16);
    }

    operator delete(v2);
  }

  return a1;
}

void std::__destroy_at[abi:ne200100]<std::pair<unsigned int const,DSPGraph::AnalyzerBuilder::Info>,0>(uint64_t a1)
{
  std::__function::__value_func<std::unique_ptr<DSPGraph::Analyzer> ()(void)>::~__value_func[abi:ne200100](a1 + 56);
  if (*(a1 + 31) < 0)
  {
    v2 = *(a1 + 8);

    operator delete(v2);
  }
}

void std::__function::__func<DSPGraph::Interpreter::parseAnalysisDefineCommand(char const*&)::$_0,std::allocator<DSPGraph::Interpreter::parseAnalysisDefineCommand(char const*&)::$_0>,std::unique_ptr<DSPGraph::Analyzer> ()(void)>::destroy_deallocate(void **__p)
{
  if (*(__p + 55) < 0)
  {
    operator delete(__p[4]);
  }

  operator delete(__p);
}

void std::__function::__func<DSPGraph::Interpreter::parseAnalysisDefineCommand(char const*&)::$_0,std::allocator<DSPGraph::Interpreter::parseAnalysisDefineCommand(char const*&)::$_0>,std::unique_ptr<DSPGraph::Analyzer> ()(void)>::destroy(uint64_t a1)
{
  if (*(a1 + 55) < 0)
  {
    operator delete(*(a1 + 32));
  }
}

void std::__function::__func<DSPGraph::Interpreter::parseAnalysisDefineCommand(char const*&)::$_0,std::allocator<DSPGraph::Interpreter::parseAnalysisDefineCommand(char const*&)::$_0>,std::unique_ptr<DSPGraph::Analyzer> ()(void)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F0331658;
  v2 = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = v2;
  if (*(a1 + 55) < 0)
  {
    std::string::__init_copy_ctor_external((a2 + 32), *(a1 + 32), *(a1 + 40));
  }

  else
  {
    v3 = *(a1 + 32);
    *(a2 + 48) = *(a1 + 48);
    *(a2 + 32) = v3;
  }
}

void std::__function::__func<DSPGraph::Interpreter::parseAnalysisDefineCommand(char const*&)::$_0,std::allocator<DSPGraph::Interpreter::parseAnalysisDefineCommand(char const*&)::$_0>,std::unique_ptr<DSPGraph::Analyzer> ()(void)>::~__func(uint64_t a1)
{
  *a1 = &unk_1F0331658;
  if (*(a1 + 55) < 0)
  {
    operator delete(*(a1 + 32));
  }

  JUMPOUT(0x193ADF220);
}

uint64_t std::__function::__func<DSPGraph::Interpreter::parseAnalysisDefineCommand(char const*&)::$_0,std::allocator<DSPGraph::Interpreter::parseAnalysisDefineCommand(char const*&)::$_0>,std::unique_ptr<DSPGraph::Analyzer> ()(void)>::~__func(uint64_t a1)
{
  *a1 = &unk_1F0331658;
  if (*(a1 + 55) < 0)
  {
    operator delete(*(a1 + 32));
  }

  return a1;
}

uint64_t DSPGraph::Interpreter::parseBool(DSPGraph::Interpreter *this, const char **a2, BOOL *a3)
{
  DSPGraph::skipspace(this, a2);
  v15 = *this;
  memset(&__p, 0, sizeof(__p));
  v17 = v15;
  *__val = 0;
  if (DSPGraph::Interpreter::parseUInt64(&v17, __val, v5) && !__val[1])
  {
    v15 = v17;
    std::to_string(&__p, __val[0]);
LABEL_5:
    v6 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      v9 = __p.__r_.__value_.__r.__words[0];
      if (__p.__r_.__value_.__l.__size_ != 1)
      {
        if (__p.__r_.__value_.__l.__size_ == 4)
        {
          if (*__p.__r_.__value_.__l.__data_ == 1702195828)
          {
            goto LABEL_33;
          }
        }

        else if (__p.__r_.__value_.__l.__size_ == 5 && *__p.__r_.__value_.__l.__data_ == 1936482662 && *(__p.__r_.__value_.__r.__words[0] + 4) == 101)
        {
          goto LABEL_36;
        }

        v8 = 0;
LABEL_39:
        operator delete(v9);
        return v8;
      }

      if (*__p.__r_.__value_.__l.__data_ == 49)
      {
        goto LABEL_33;
      }

      v11 = *__p.__r_.__value_.__l.__data_;
    }

    else
    {
      if (HIBYTE(__p.__r_.__value_.__r.__words[2]) != 1)
      {
        if (HIBYTE(__p.__r_.__value_.__r.__words[2]) != 4)
        {
          if (HIBYTE(__p.__r_.__value_.__r.__words[2]) != 5)
          {
            return 0;
          }

          if (LODWORD(__p.__r_.__value_.__l.__data_) != 1936482662 || __p.__r_.__value_.__s.__data_[4] != 101)
          {
            return 0;
          }

          goto LABEL_36;
        }

        if (LODWORD(__p.__r_.__value_.__l.__data_) != 1702195828)
        {
          return 0;
        }

LABEL_33:
        v12 = 1;
        goto LABEL_37;
      }

      v11 = __p.__r_.__value_.__s.__data_[0];
      if (__p.__r_.__value_.__s.__data_[0] == 49)
      {
        goto LABEL_33;
      }
    }

    if (v11 == 48)
    {
LABEL_36:
      v12 = 0;
LABEL_37:
      *a2 = v12;
      *this = v15;
      v8 = 1;
      if ((v6 & 0x80) == 0)
      {
        return v8;
      }

      goto LABEL_38;
    }

    v8 = 0;
    if ((*(&__p.__r_.__value_.__s + 23) & 0x80) == 0)
    {
      return v8;
    }

LABEL_38:
    v9 = __p.__r_.__value_.__r.__words[0];
    goto LABEL_39;
  }

  if (DSPGraph::Interpreter::parseName(&v15, &__p))
  {
    goto LABEL_5;
  }

  v8 = 0;
  if ((*(&__p.__r_.__value_.__s + 23) & 0x80) != 0)
  {
    goto LABEL_38;
  }

  return v8;
}

void sub_18F80F560(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t DSPGraph::StringSubMacro::StringSubMacro(uint64_t a1, __int128 *a2, __int128 *a3)
{
  *a1 = &unk_1F0334C40;
  v5 = (a1 + 8);
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(v5, *a2, *(a2 + 1));
  }

  else
  {
    v6 = *a2;
    v5->__r_.__value_.__r.__words[2] = *(a2 + 2);
    *&v5->__r_.__value_.__l.__data_ = v6;
  }

  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  *a1 = &unk_1F0334C70;
  if (*(a3 + 23) < 0)
  {
    std::string::__init_copy_ctor_external((a1 + 56), *a3, *(a3 + 1));
  }

  else
  {
    v7 = *a3;
    *(a1 + 72) = *(a3 + 2);
    *(a1 + 56) = v7;
  }

  *(a1 + 80) = 0;
  return a1;
}

const void **std::deque<std::unique_ptr<DSPGraph::Macro>>::__add_front_capacity(uint64_t a1)
{
  v2 = *(a1 + 8);
  v1 = *(a1 + 16);
  v3 = v1 - v2;
  if (v1 == v2)
  {
    v4 = 0;
  }

  else
  {
    v4 = ((v1 - v2) << 6) - 1;
  }

  v5 = *(a1 + 32);
  if ((v4 - (*(a1 + 40) + v5)) < 0x200)
  {
    v7 = *(a1 + 24);
    v8 = v7 - *a1;
    if (v3 < v8)
    {
      operator new();
    }

    if (v7 == *a1)
    {
      v9 = 1;
    }

    else
    {
      v9 = v8 >> 2;
    }

    std::allocator<std::shared_ptr<AudioMetadataTimeline::Node<AudioMetadataProgramme,AudioMetadataTimeline::Node<AudioMetadataFormatExtended,decltype(nullptr)>>> *>::allocate_at_least[abi:ne200100](v9);
  }

  *(a1 + 32) = v5 + 512;
  v10 = *(v1 - 8);
  *(a1 + 16) = v1 - 8;
  return std::__split_buffer<std::shared_ptr<AudioMetadataTimeline::Node<AudioMetadataProgramme,AudioMetadataTimeline::Node<AudioMetadataFormatExtended,decltype(nullptr)>>> *,std::allocator<std::shared_ptr<AudioMetadataTimeline::Node<AudioMetadataProgramme,AudioMetadataTimeline::Node<AudioMetadataFormatExtended,decltype(nullptr)>>> *>>::emplace_front<std::shared_ptr<AudioMetadataTimeline::Node<AudioMetadataProgramme,AudioMetadataTimeline::Node<AudioMetadataFormatExtended,decltype(nullptr)>>> *&>(a1, &v10);
}

void sub_18F80FAF4(_Unwind_Exception *a1)
{
  operator delete(v2);
  if (v1)
  {
    operator delete(v1);
  }

  _Unwind_Resume(a1);
}

std::string *std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<std::string>,std::string*,std::string*,std::string*>(uint64_t a1, __int128 *a2, __int128 *a3, std::string *this)
{
  v4 = this;
  v11 = this;
  v12 = this;
  v9[0] = a1;
  v9[1] = &v11;
  v9[2] = &v12;
  v10 = 0;
  if (a2 != a3)
  {
    v6 = a2;
    do
    {
      if (*(v6 + 23) < 0)
      {
        std::string::__init_copy_ctor_external(v4, *v6, *(v6 + 1));
        v4 = v12;
      }

      else
      {
        v7 = *v6;
        v4->__r_.__value_.__r.__words[2] = *(v6 + 2);
        *&v4->__r_.__value_.__l.__data_ = v7;
      }

      v6 = (v6 + 24);
      v12 = ++v4;
    }

    while (v6 != a3);
  }

  v10 = 1;
  std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<std::string>,std::string*>>::~__exception_guard_exceptions[abi:ne200100](v9);
  return v4;
}

uint64_t std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<std::string>,std::string*>>::~__exception_guard_exceptions[abi:ne200100](uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    v3 = **(a1 + 16);
    v4 = **(a1 + 8);
    while (v3 != v4)
    {
      v5 = *(v3 - 1);
      v3 -= 3;
      if (v5 < 0)
      {
        operator delete(*v3);
      }
    }
  }

  return a1;
}

void *DSPGraph::NewBoxRegistry::newBox(uint64_t a1, void *a2, int a3, int a4)
{
  result = std::__hash_table<std::__hash_value_type<std::string,std::function<DSPGraph::Box * ()(unsigned int,unsigned int)>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::function<DSPGraph::Box * ()(unsigned int,unsigned int)>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::function<DSPGraph::Box * ()(unsigned int,unsigned int)>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::function<DSPGraph::Box * ()(unsigned int,unsigned int)>>>>::find<std::string>((a1 + 8), a2);
  if (result)
  {
    v7 = result[8];

    return std::function<DSPGraph::Box * ()(unsigned int,unsigned int)>::operator()(v7, a3, a4);
  }

  return result;
}

uint64_t *DSPGraph::NewBoxRegistry::newBox(DSPGraph::NewBoxRegistry *this, const AudioComponentDescription *a2, int a3, int a4)
{
  result = std::__hash_table<std::__hash_value_type<AudioComponentDescription,std::function<DSPGraph::Box * ()(unsigned int,unsigned int)>>,std::__unordered_map_hasher<AudioComponentDescription,std::__hash_value_type<AudioComponentDescription,std::function<DSPGraph::Box * ()(unsigned int,unsigned int)>>,std::hash<AudioComponentDescription>,DSPGraph::NewBoxRegistry::AudioComponentDescriptionEquality,true>,std::__unordered_map_equal<AudioComponentDescription,std::__hash_value_type<AudioComponentDescription,std::function<DSPGraph::Box * ()(unsigned int,unsigned int)>>,DSPGraph::NewBoxRegistry::AudioComponentDescriptionEquality,std::hash<AudioComponentDescription>,true>,std::allocator<std::__hash_value_type<AudioComponentDescription,std::function<DSPGraph::Box * ()(unsigned int,unsigned int)>>>>::find<AudioComponentDescription>(this + 6, &a2->componentType);
  if (result)
  {
    v7 = result[8];

    return std::function<DSPGraph::Box * ()(unsigned int,unsigned int)>::operator()(v7, a3, a4);
  }

  return result;
}

void _ZNSt3__110__function6__funcIZZN8DSPGraph14NewBoxRegistryC1EvENK4__31clIPKciNS2_14CalculationBox14OperatorDomainENS8_16OperatorCodomainENS8_8OperatorEEEDaT_T0_T1_T2_T3_EUljjE_NS_9allocatorISI_EEFPNS2_3BoxEjjEEclEOjSP_(uint64_t a1, _DWORD *a2, _DWORD *a3)
{
  if (!*a2)
  {
    if (!*a3)
    {
      operator new();
    }

    std::string::basic_string[abi:ne200100]<0>(&v6, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Interpreter.cpp");
    std::string::basic_string[abi:ne200100]<0>(&v5, "operator()");
    caulk::make_string("wrong number of output for '%s' box (must be 0)", &v4, *(a1 + 8));
    DSPGraph::ThrowException(1701602593, &v6, 1702, &v5, &v4);
  }

  std::string::basic_string[abi:ne200100]<0>(&v6, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Interpreter.cpp");
  std::string::basic_string[abi:ne200100]<0>(&v5, "operator()");
  caulk::make_string("wrong number of inputs for '%s' box (must be 0)", &v4, *(a1 + 8));
  DSPGraph::ThrowException(1701602593, &v6, 1698, &v5, &v4);
}

void sub_18F80FEE8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19, void *a20, uint64_t a21, int a22, __int16 a23, char a24, char a25)
{
  if (a19 < 0)
  {
    operator delete(__p);
  }

  if (a25 < 0)
  {
    operator delete(a20);
  }

  if (*(v25 - 33) < 0)
  {
    operator delete(*(v25 - 56));
  }

  _Unwind_Resume(exception_object);
}

__n128 _ZNKSt3__110__function6__funcIZZN8DSPGraph14NewBoxRegistryC1EvENK4__31clIPKciNS2_14CalculationBox14OperatorDomainENS8_16OperatorCodomainENS8_8OperatorEEEDaT_T0_T1_T2_T3_EUljjE_NS_9allocatorISI_EEFPNS2_3BoxEjjEE7__cloneEPNS0_6__baseISN_EE(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F0331610;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

void std::__function::__func<DSPGraph::NewBoxRegistry::NewBoxRegistry(void)::$_30,std::allocator<DSPGraph::NewBoxRegistry::NewBoxRegistry(void)::$_30>,DSPGraph::Box * ()(unsigned int,unsigned int)>::operator()(uint64_t a1, _DWORD *a2, _DWORD *a3)
{
  if (*a2 == 1)
  {
    if (*a3 == 1)
    {
      operator new();
    }

    std::string::basic_string[abi:ne200100]<0>(&v5, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Interpreter.cpp");
    std::string::basic_string[abi:ne200100]<0>(&v4, "operator()");
    std::string::basic_string[abi:ne200100]<0>(&v3, "wrong number of outputs for SingleRateLPCMConverterBox. must be 1.");
    DSPGraph::ThrowException(1701602593, &v5, 1688, &v4, &v3);
  }

  std::string::basic_string[abi:ne200100]<0>(&v5, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Interpreter.cpp");
  std::string::basic_string[abi:ne200100]<0>(&v4, "operator()");
  std::string::basic_string[abi:ne200100]<0>(&v3, "wrong number of inputs for SingleRateLPCMConverterBox. must be 1.");
  DSPGraph::ThrowException(1701602593, &v5, 1686, &v4, &v3);
}

void sub_18F8100D0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  if (*(v21 - 17) < 0)
  {
    operator delete(*(v21 - 40));
  }

  _Unwind_Resume(exception_object);
}

void std::__function::__func<DSPGraph::NewBoxRegistry::NewBoxRegistry(void)::$_27,std::allocator<DSPGraph::NewBoxRegistry::NewBoxRegistry(void)::$_27>,DSPGraph::Box * ()(unsigned int,unsigned int)>::operator()(uint64_t a1, _DWORD *a2, _DWORD *a3)
{
  if (*a2 == 1)
  {
    if (*a3 == 1)
    {
      operator new();
    }

    std::string::basic_string[abi:ne200100]<0>(&v5, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Interpreter.cpp");
    std::string::basic_string[abi:ne200100]<0>(&v4, "operator()");
    std::string::basic_string[abi:ne200100]<0>(&v3, "wrong number of outputs for MantissaRandomizerBox (must be 1)");
    DSPGraph::ThrowException(1701602593, &v5, 1662, &v4, &v3);
  }

  std::string::basic_string[abi:ne200100]<0>(&v5, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Interpreter.cpp");
  std::string::basic_string[abi:ne200100]<0>(&v4, "operator()");
  std::string::basic_string[abi:ne200100]<0>(&v3, "wrong number of inputs for MantissaRandomizerBox (must be 1)");
  DSPGraph::ThrowException(1701602593, &v5, 1659, &v4, &v3);
}

void sub_18F810488(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  if (*(v21 - 17) < 0)
  {
    operator delete(*(v21 - 40));
  }

  _Unwind_Resume(exception_object);
}

void std::__function::__func<DSPGraph::NewBoxRegistry::NewBoxRegistry(void)::$_26,std::allocator<DSPGraph::NewBoxRegistry::NewBoxRegistry(void)::$_26>,DSPGraph::Box * ()(unsigned int,unsigned int)>::operator()(uint64_t a1, _DWORD *a2, _DWORD *a3)
{
  if (*a2 == 1)
  {
    if (*a3 == 1)
    {
      operator new();
    }

    std::string::basic_string[abi:ne200100]<0>(&v5, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Interpreter.cpp");
    std::string::basic_string[abi:ne200100]<0>(&v4, "operator()");
    std::string::basic_string[abi:ne200100]<0>(&v3, "wrong number of outputs for DenormalEliminatorBox (must be 1)");
    DSPGraph::ThrowException(1701602593, &v5, 1651, &v4, &v3);
  }

  std::string::basic_string[abi:ne200100]<0>(&v5, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Interpreter.cpp");
  std::string::basic_string[abi:ne200100]<0>(&v4, "operator()");
  std::string::basic_string[abi:ne200100]<0>(&v3, "wrong number of inputs for DenormalEliminatorBox (must be 1)");
  DSPGraph::ThrowException(1701602593, &v5, 1648, &v4, &v3);
}

void sub_18F810688(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  if (*(v21 - 17) < 0)
  {
    operator delete(*(v21 - 40));
  }

  _Unwind_Resume(exception_object);
}

void std::__function::__func<DSPGraph::NewBoxRegistry::NewBoxRegistry(void)::$_18,std::allocator<DSPGraph::NewBoxRegistry::NewBoxRegistry(void)::$_18>,DSPGraph::Box * ()(unsigned int,unsigned int)>::operator()(uint64_t a1, _DWORD *a2, _DWORD *a3)
{
  if (*a2 != 1 || *a3 != 1)
  {
    std::string::basic_string[abi:ne200100]<0>(&v6, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Interpreter.cpp");
    std::string::basic_string[abi:ne200100]<0>(&v5, "operator()");
    std::string::basic_string[abi:ne200100]<0>(&v4, "TimeFreqBox number of inputs and outputs must be one.");
    DSPGraph::ThrowException(1701602593, &v6, 1598, &v5, &v4);
  }

  operator new();
}

void sub_18F810DDC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  if (*(v21 - 17) < 0)
  {
    operator delete(*(v21 - 40));
  }

  _Unwind_Resume(exception_object);
}

void std::__function::__func<DSPGraph::NewBoxRegistry::NewBoxRegistry(void)::$_17,std::allocator<DSPGraph::NewBoxRegistry::NewBoxRegistry(void)::$_17>,DSPGraph::Box * ()(unsigned int,unsigned int)>::operator()(uint64_t a1, _DWORD *a2, _DWORD *a3)
{
  if (*a2 != 1 || *a3 != 1)
  {
    std::string::basic_string[abi:ne200100]<0>(&v6, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Interpreter.cpp");
    std::string::basic_string[abi:ne200100]<0>(&v5, "operator()");
    std::string::basic_string[abi:ne200100]<0>(&v4, "FreqSRCBox number of inputs and outputs must be one.");
    DSPGraph::ThrowException(1701602593, &v6, 1590, &v5, &v4);
  }

  operator new();
}

void sub_18F810FB4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  if (*(v21 - 17) < 0)
  {
    operator delete(*(v21 - 40));
  }

  _Unwind_Resume(exception_object);
}

void std::__function::__func<DSPGraph::NewBoxRegistry::NewBoxRegistry(void)::$_16,std::allocator<DSPGraph::NewBoxRegistry::NewBoxRegistry(void)::$_16>,DSPGraph::Box * ()(unsigned int,unsigned int)>::operator()(uint64_t a1, _DWORD *a2, _DWORD *a3)
{
  if (*a2 != 1 || *a3 != 1)
  {
    std::string::basic_string[abi:ne200100]<0>(&v6, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Interpreter.cpp");
    std::string::basic_string[abi:ne200100]<0>(&v5, "operator()");
    std::string::basic_string[abi:ne200100]<0>(&v4, "ReblockerBox number of inputs and outputs must be one.");
    DSPGraph::ThrowException(1701602593, &v6, 1582, &v5, &v4);
  }

  operator new();
}

void sub_18F811184(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  if (*(v21 - 17) < 0)
  {
    operator delete(*(v21 - 40));
  }

  _Unwind_Resume(exception_object);
}

void std::__function::__func<DSPGraph::NewBoxRegistry::NewBoxRegistry(void)::$_15,std::allocator<DSPGraph::NewBoxRegistry::NewBoxRegistry(void)::$_15>,DSPGraph::Box * ()(unsigned int,unsigned int)>::operator()(uint64_t a1, _DWORD *a2, _DWORD *a3)
{
  if (*a2 != 1 || *a3 != 1)
  {
    std::string::basic_string[abi:ne200100]<0>(&v6, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Interpreter.cpp");
    std::string::basic_string[abi:ne200100]<0>(&v5, "operator()");
    std::string::basic_string[abi:ne200100]<0>(&v4, "SRCBox number of inputs and outputs must be one.");
    DSPGraph::ThrowException(1701602593, &v6, 1574, &v5, &v4);
  }

  operator new();
}

void sub_18F811374(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  if (*(v21 - 17) < 0)
  {
    operator delete(*(v21 - 40));
  }

  _Unwind_Resume(exception_object);
}

void std::__function::__func<DSPGraph::NewBoxRegistry::NewBoxRegistry(void)::$_14,std::allocator<DSPGraph::NewBoxRegistry::NewBoxRegistry(void)::$_14>,DSPGraph::Box * ()(unsigned int,unsigned int)>::operator()(uint64_t a1, unsigned int *a2, unsigned int *a3)
{
  v3 = *a2;
  v4 = *a3;
  operator new();
}

void std::__function::__func<DSPGraph::NewBoxRegistry::NewBoxRegistry(void)::$_13,std::allocator<DSPGraph::NewBoxRegistry::NewBoxRegistry(void)::$_13>,DSPGraph::Box * ()(unsigned int,unsigned int)>::operator()(uint64_t a1, _DWORD *a2, _DWORD *a3)
{
  if (*a3 == 1)
  {
    if (*a2)
    {
      operator new();
    }

    std::string::basic_string[abi:ne200100]<0>(&v5, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Interpreter.cpp");
    std::string::basic_string[abi:ne200100]<0>(&v4, "operator()");
    std::string::basic_string[abi:ne200100]<0>(&v3, "AverageBox number of inputs cannot be 0.");
    DSPGraph::ThrowException(1701602593, &v5, 1561, &v4, &v3);
  }

  std::string::basic_string[abi:ne200100]<0>(&v5, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Interpreter.cpp");
  std::string::basic_string[abi:ne200100]<0>(&v4, "operator()");
  std::string::basic_string[abi:ne200100]<0>(&v3, "AverageBox number of outputs must be 1");
  DSPGraph::ThrowException(1701602593, &v5, 1558, &v4, &v3);
}

void sub_18F811664(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  if (a27 < 0)
  {
    operator delete(a22);
  }

  _Unwind_Resume(exception_object);
}

void std::__function::__func<DSPGraph::NewBoxRegistry::NewBoxRegistry(void)::$_12,std::allocator<DSPGraph::NewBoxRegistry::NewBoxRegistry(void)::$_12>,DSPGraph::Box * ()(unsigned int,unsigned int)>::operator()(uint64_t a1, _DWORD *a2, _DWORD *a3)
{
  if (*a3 == 1)
  {
    if (*a2)
    {
      operator new();
    }

    std::string::basic_string[abi:ne200100]<0>(&v5, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Interpreter.cpp");
    std::string::basic_string[abi:ne200100]<0>(&v4, "operator()");
    std::string::basic_string[abi:ne200100]<0>(&v3, "MixBox number of inputs cannot be zero.");
    DSPGraph::ThrowException(1701602593, &v5, 1550, &v4, &v3);
  }

  std::string::basic_string[abi:ne200100]<0>(&v5, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Interpreter.cpp");
  std::string::basic_string[abi:ne200100]<0>(&v4, "operator()");
  std::string::basic_string[abi:ne200100]<0>(&v3, "wrong number of outputs for MixBox. must be 1.");
  DSPGraph::ThrowException(1701602593, &v5, 1547, &v4, &v3);
}

void sub_18F811898(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  if (a27 < 0)
  {
    operator delete(a22);
  }

  _Unwind_Resume(exception_object);
}

void std::__function::__func<DSPGraph::NewBoxRegistry::NewBoxRegistry(void)::$_11,std::allocator<DSPGraph::NewBoxRegistry::NewBoxRegistry(void)::$_11>,DSPGraph::Box * ()(unsigned int,unsigned int)>::operator()(uint64_t a1, _DWORD *a2, _DWORD *a3)
{
  if (*a3 == 1)
  {
    if (*a2)
    {
      operator new();
    }

    std::string::basic_string[abi:ne200100]<0>(&v5, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Interpreter.cpp");
    std::string::basic_string[abi:ne200100]<0>(&v4, "operator()");
    std::string::basic_string[abi:ne200100]<0>(&v3, "SumBox number of inputs cannot be zero.");
    DSPGraph::ThrowException(1701602593, &v5, 1539, &v4, &v3);
  }

  std::string::basic_string[abi:ne200100]<0>(&v5, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Interpreter.cpp");
  std::string::basic_string[abi:ne200100]<0>(&v4, "operator()");
  std::string::basic_string[abi:ne200100]<0>(&v3, "wrong number of outputs for SumBox. must be 1.");
  DSPGraph::ThrowException(1701602593, &v5, 1536, &v4, &v3);
}

void sub_18F811ABC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  if (a27 < 0)
  {
    operator delete(a22);
  }

  _Unwind_Resume(exception_object);
}

void std::__function::__func<DSPGraph::NewBoxRegistry::NewBoxRegistry(void)::$_10,std::allocator<DSPGraph::NewBoxRegistry::NewBoxRegistry(void)::$_10>,DSPGraph::Box * ()(unsigned int,unsigned int)>::operator()(uint64_t a1, _DWORD *a2, _DWORD *a3)
{
  if (*a2 == 1)
  {
    if (*a3 == 1)
    {
      operator new();
    }

    std::string::basic_string[abi:ne200100]<0>(&v5, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Interpreter.cpp");
    std::string::basic_string[abi:ne200100]<0>(&v4, "operator()");
    std::string::basic_string[abi:ne200100]<0>(&v3, "wrong number of outputs for CopyBox. must be 1.");
    DSPGraph::ThrowException(1701602593, &v5, 1529, &v4, &v3);
  }

  std::string::basic_string[abi:ne200100]<0>(&v5, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Interpreter.cpp");
  std::string::basic_string[abi:ne200100]<0>(&v4, "operator()");
  std::string::basic_string[abi:ne200100]<0>(&v3, "wrong number of inputs for CopyBox. must be 1.");
  DSPGraph::ThrowException(1701602593, &v5, 1527, &v4, &v3);
}

void sub_18F811CB4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  if (*(v21 - 17) < 0)
  {
    operator delete(*(v21 - 40));
  }

  _Unwind_Resume(exception_object);
}

void std::__function::__func<DSPGraph::NewBoxRegistry::NewBoxRegistry(void)::$_9,std::allocator<DSPGraph::NewBoxRegistry::NewBoxRegistry(void)::$_9>,DSPGraph::Box * ()(unsigned int,unsigned int)>::operator()(uint64_t a1, _DWORD *a2, _DWORD *a3)
{
  if (*a2 == 1)
  {
    if (*a3 == 1)
    {
      operator new();
    }

    std::string::basic_string[abi:ne200100]<0>(&v5, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Interpreter.cpp");
    std::string::basic_string[abi:ne200100]<0>(&v4, "operator()");
    std::string::basic_string[abi:ne200100]<0>(&v3, "wrong number of outputs for DBGainBox. must be 1.");
    DSPGraph::ThrowException(1701602593, &v5, 1520, &v4, &v3);
  }

  std::string::basic_string[abi:ne200100]<0>(&v5, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Interpreter.cpp");
  std::string::basic_string[abi:ne200100]<0>(&v4, "operator()");
  std::string::basic_string[abi:ne200100]<0>(&v3, "wrong number of inputs for DBGainBox. must be 1.");
  DSPGraph::ThrowException(1701602593, &v5, 1518, &v4, &v3);
}

void sub_18F811EDC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  if (*(v21 - 17) < 0)
  {
    operator delete(*(v21 - 40));
  }

  _Unwind_Resume(exception_object);
}

void std::__function::__func<DSPGraph::NewBoxRegistry::NewBoxRegistry(void)::$_8,std::allocator<DSPGraph::NewBoxRegistry::NewBoxRegistry(void)::$_8>,DSPGraph::Box * ()(unsigned int,unsigned int)>::operator()(uint64_t a1, _DWORD *a2, _DWORD *a3)
{
  if (*a2 == 1)
  {
    if (*a3 == 1)
    {
      operator new();
    }

    std::string::basic_string[abi:ne200100]<0>(&v5, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Interpreter.cpp");
    std::string::basic_string[abi:ne200100]<0>(&v4, "operator()");
    std::string::basic_string[abi:ne200100]<0>(&v3, "wrong number of outputs for VectorGainBox. must be 1.");
    DSPGraph::ThrowException(1701602593, &v5, 1511, &v4, &v3);
  }

  std::string::basic_string[abi:ne200100]<0>(&v5, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Interpreter.cpp");
  std::string::basic_string[abi:ne200100]<0>(&v4, "operator()");
  std::string::basic_string[abi:ne200100]<0>(&v3, "wrong number of inputs for VectorGainBox. must be 1.");
  DSPGraph::ThrowException(1701602593, &v5, 1509, &v4, &v3);
}

void sub_18F8120F0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  if (*(v21 - 17) < 0)
  {
    operator delete(*(v21 - 40));
  }

  _Unwind_Resume(exception_object);
}

void std::__function::__func<DSPGraph::NewBoxRegistry::NewBoxRegistry(void)::$_7,std::allocator<DSPGraph::NewBoxRegistry::NewBoxRegistry(void)::$_7>,DSPGraph::Box * ()(unsigned int,unsigned int)>::operator()(uint64_t a1, _DWORD *a2, _DWORD *a3)
{
  if (*a2 == 1)
  {
    if (*a3 == 1)
    {
      operator new();
    }

    std::string::basic_string[abi:ne200100]<0>(&v5, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Interpreter.cpp");
    std::string::basic_string[abi:ne200100]<0>(&v4, "operator()");
    std::string::basic_string[abi:ne200100]<0>(&v3, "wrong number of outputs for arithmetic abs box. must be 1.");
    DSPGraph::ThrowException(1701602593, &v5, 1502, &v4, &v3);
  }

  std::string::basic_string[abi:ne200100]<0>(&v5, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Interpreter.cpp");
  std::string::basic_string[abi:ne200100]<0>(&v4, "operator()");
  std::string::basic_string[abi:ne200100]<0>(&v3, "wrong number of inputs for arithmetic abs box. must be 1.");
  DSPGraph::ThrowException(1701602593, &v5, 1500, &v4, &v3);
}

void sub_18F8122EC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  if (*(v21 - 17) < 0)
  {
    operator delete(*(v21 - 40));
  }

  _Unwind_Resume(exception_object);
}