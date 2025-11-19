uint64_t IPC::StreamClientConnectionBuffer::tryAcquire@<X0>(uint64_t result@<X0>, _BYTE *a2@<X8>, double a3@<D0>)
{
  explicit = *(result + 8);
  v5 = *(explicit + 8);
  if (v5 <= 0xFF)
  {
    goto LABEL_19;
  }

  explicit = atomic_load_explicit(*(explicit + 16), memory_order_acquire);
LABEL_3:
  if (explicit != 0x80000000)
  {
    v6 = *(result + 16);
    v5 = (v6 + 1) & 0xFFFFFFFFFFFFFFFELL;
    v3 = *result;
    if (v5 + 16 >= *result)
    {
      v5 = 0;
    }

    if (v6 >= explicit)
    {
      if (v5 < v6)
      {
        if (v5 >= explicit)
        {
          v3 = 0;
          goto LABEL_11;
        }
      }

      else if (!explicit)
      {
        goto LABEL_20;
      }

      if (v5 < explicit)
      {
        v3 = explicit + ~v5;
      }

      else
      {
        v3 -= v5;
      }

      goto LABEL_11;
    }

    v13 = v5 < v6 || v5 >= explicit;
    v3 = explicit + ~v5;
    if (v13)
    {
      v3 = 0;
    }

    goto LABEL_11;
  }

  while (1)
  {
    v17 = explicit;
    v18 = a2;
    v19 = result;
    v14 = a3;
    result = WTF::ApproximateTime::now(result);
    if (a3 >= v14)
    {
      break;
    }

    a2 = *(v19 + 8);
    explicit = *(a2 + 1);
    if (explicit > 0xFF)
    {
      v15 = v17;
      v16 = v17;
      atomic_compare_exchange_strong(*(a2 + 2), &v16, 0x80000000uLL);
      explicit = v16;
      a2 = v18;
      result = v19;
      a3 = v14;
      if (v15 != v16)
      {
        goto LABEL_3;
      }

      if (*(v19 + 40) != 1)
      {
        break;
      }

      result = IPC::Semaphore::waitFor((v19 + 32), v14);
      if ((result & 1) == 0)
      {
        break;
      }

      a2 = *(v19 + 8);
      explicit = *(a2 + 1);
      if (explicit > 0xFF)
      {
        explicit = atomic_load_explicit(*(a2 + 2), memory_order_acquire);
        a2 = v18;
        result = v19;
        a3 = v14;
        goto LABEL_3;
      }
    }

    while (1)
    {
LABEL_19:
      __break(1u);
LABEL_20:
      v3 += ~v5;
LABEL_11:
      v7 = *(result + 8);
      v8 = *(v7 + 8);
      if (v8 > 0xFF)
      {
        v9 = v8 - 256;
        v13 = v9 >= v5;
        v10 = v9 - v5;
        if (v13)
        {
          v11 = *(v7 + 16);
          if (v3 == -1)
          {
            break;
          }

          v13 = v10 >= v3;
          v10 = v3;
          if (v13)
          {
            break;
          }
        }
      }
    }

    if (v10 >= 0x10)
    {
      *a2 = v11 + v5 + 256;
      *(a2 + 1) = v10;
      v12 = 1;
      goto LABEL_17;
    }
  }

  v12 = 0;
  a2 = v18;
  *v18 = 0;
LABEL_17:
  a2[16] = v12;
  return result;
}

unint64_t *IPC::StreamClientConnection::trySendStream<Messages::LogStream::RECEIVED_LAUNCH_SERVICES_DATABASE>(uint64_t a1, _WORD *a2, unint64_t a3)
{
  if (a3 <= 1)
  {
    __break(0xC471u);
    JUMPOUT(0x19D8AB0D4);
  }

  *a2 = 255;
  result = IPC::StreamClientConnectionBuffer::release((a1 + 72), 2uLL);
  if ((result & 1) != 0 || *(a1 + 124))
  {
    if (*(a1 + 112) == 1)
    {
      result = MEMORY[0x19EB16320](*(a1 + 100));
    }

    *(a1 + 124) = 0;
  }

  return result;
}

uint64_t IPC::StreamClientConnection::sendProcessOutOfStreamMessage(uint64_t result, _WORD *a2, unint64_t a3)
{
  if (a3 <= 1)
  {
    result = 1067;
    __break(0xC471u);
  }

  else
  {
    *a2 = 3197;
    v3 = (*(result + 88) + 1) & 0xFFFFFFFFFFFFFFFELL;
    v5 = *(result + 72);
    v4 = *(result + 80);
    if (v3 + 16 >= v5)
    {
      v3 = 0;
    }

    v6 = v3 + 16;
    if (v5 <= v6)
    {
      v6 = 0;
    }

    *(result + 88) = v6;
    if (*(v4 + 8) > 0xFFuLL)
    {
      atomic_exchange((*(v4 + 16) + 128), v6);
      *(result + 124) = 0;
      return result;
    }
  }

  __break(1u);
  return result;
}

unint64_t *IPC::StreamClientConnectionBuffer::release(unint64_t *this, unint64_t a2)
{
  if (a2 <= 0x10)
  {
    v2 = 16;
  }

  else
  {
    v2 = a2;
  }

  v3 = (this[2] + 1) & 0xFFFFFFFFFFFFFFFELL;
  v4 = this[1];
  if (v3 + 16 >= *this)
  {
    v3 = 0;
  }

  v5 = v3 + v2;
  if (*this <= v5)
  {
    v5 = 0;
  }

  this[2] = v5;
  if (*(v4 + 8) > 0xFFuLL)
  {
    return (atomic_exchange((*(v4 + 16) + 128), v5) == 0x80000000);
  }

  __break(1u);
  return this;
}

void std::__call_once_proxy[abi:sn200100]<std::tuple<WebKit::LaunchServicesDatabaseManager::singleton(void)::$_0 &&>>()
{
  qword_1ED641B38 = 0;
  unk_1ED641B40 = 0;
  qword_1ED641B28 = &unk_1F10E9F40;
  unk_1ED641B30 = 0;
}

void WebKit::LaunchServicesDatabaseObserver::startObserving(uint64_t a1, void **a2)
{
  v4 = 0;
  v5 = (a1 + 40);
  atomic_compare_exchange_strong_explicit((a1 + 40), &v4, 1u, memory_order_acquire, memory_order_acquire);
  if (v4)
  {
    MEMORY[0x19EB01E30](a1 + 40);
  }

  v6 = *(a1 + 60);
  if (v6 == *(a1 + 56))
  {
    WTF::Vector<WTF::OSObjectPtr<NSObject  {objcproto13OS_xpc_object}*>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::appendSlowCase<(WTF::FailureAction)0,WTF::OSObjectPtr<NSObject  {objcproto13OS_xpc_object}*>&>(a1 + 48, a2);
  }

  else
  {
    v7 = *a2;
    *(*(a1 + 48) + 8 * v6) = *a2;
    if (v7)
    {
      v8 = v7;
      v6 = *(a1 + 60);
    }

    *(a1 + 60) = v6 + 1;
  }

  v9 = 1;
  atomic_compare_exchange_strong_explicit(v5, &v9, 0, memory_order_release, memory_order_relaxed);
  if (v9 != 1)
  {
    WTF::Lock::unlockSlow(v5);
  }

  v10 = [MEMORY[0x1E6963648] sharedDatabaseContext];
  v11 = *a2;
  v15 = v11;
  if (v11)
  {
    v12 = v11;
  }

  WTF::makeBlockPtr<WebKit::LaunchServicesDatabaseObserver::startObserving(WTF::OSObjectPtr<NSObject  {objcproto13OS_xpc_object}*>)::$_0,WebKit::LaunchServicesDatabaseObserver::startObserving(WTF::OSObjectPtr<NSObject  {objcproto13OS_xpc_object}*>)::$_0,void,NSObject  {objcproto13OS_xpc_object}*,NSError *>(&v16, &v15);
  v13 = v16;
  [v10 getSystemContentDatabaseObject4WebKit:v16];
  _Block_release(v13);
  v14 = v15;
  if (v15)
  {
  }
}

void sub_19D8AB30C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9)
{
  v11 = 1;
  atomic_compare_exchange_strong_explicit(v9, &v11, 0, memory_order_release, memory_order_relaxed);
  if (v11 != 1)
  {
    WTF::Lock::unlockSlow(v9);
  }

  _Unwind_Resume(exception_object);
}

void WebKit::LaunchServicesDatabaseObserver::~LaunchServicesDatabaseObserver(WebKit::LaunchServicesDatabaseObserver *this, void *a2)
{
  *this = &unk_1F10E9FA0;
  *(this + 3) = &unk_1F10E9FE8;
  v3 = *(this + 15);
  v4 = *(this + 6);
  if (v3)
  {
    v5 = 8 * v3;
    do
    {
      if (*v4)
      {
      }

      ++v4;
      v5 -= 8;
    }

    while (v5);
    v4 = *(this + 6);
  }

  if (v4)
  {
    *(this + 6) = 0;
    *(this + 14) = 0;
    WTF::fastFree(v4, a2);
  }

  v6 = *(this + 4);
  *(this + 4) = 0;
  if (v6)
  {
  }

  *this = &unk_1F10EA038;
  v7 = *(this + 2);
  if (v7)
  {
  }

  v8 = *(this + 1);
  if (v8)
  {
  }
}

{
  WebKit::LaunchServicesDatabaseObserver::~LaunchServicesDatabaseObserver(this, a2);

  bmalloc::api::tzoneFree(v2, v3);
}

void non-virtual thunk toWebKit::LaunchServicesDatabaseObserver::~LaunchServicesDatabaseObserver(WebKit::LaunchServicesDatabaseObserver *this, void *a2)
{
  WebKit::LaunchServicesDatabaseObserver::~LaunchServicesDatabaseObserver((this - 24), a2);
}

{
  WebKit::LaunchServicesDatabaseObserver::~LaunchServicesDatabaseObserver((this - 24), a2);

  bmalloc::api::tzoneFree(v2, v3);
}

void WebKit::LaunchServicesDatabaseObserver::handleEvent(uint64_t a1, void *a2, id a3)
{
  if (object_getClass(a3) == MEMORY[0x1E69E9E98])
  {
    if (a3 == MEMORY[0x1E69E9E20] || a3 == MEMORY[0x1E69E9E38])
    {
      v10 = 0;
      atomic_compare_exchange_strong_explicit((a1 + 40), &v10, 1u, memory_order_acquire, memory_order_acquire);
      if (v10)
      {
        MEMORY[0x19EB01E30](a1 + 40);
      }

      v11 = *(a1 + 60);
      if (v11)
      {
        v12 = 0;
        while (*(*(a1 + 48) + 8 * v12) != a2)
        {
          if (v11 == ++v12)
          {
            goto LABEL_24;
          }
        }

        WTF::Vector<WTF::OSObjectPtr<NSObject  {objcproto13OS_xpc_object}*>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::removeAt((a1 + 48), v12);
      }

LABEL_24:
      v13 = 1;
      atomic_compare_exchange_strong_explicit((a1 + 40), &v13, 0, memory_order_release, memory_order_relaxed);
      if (v13 != 1)
      {

        WTF::Lock::unlockSlow((a1 + 40));
      }
    }
  }

  else if (object_getClass(a3) == MEMORY[0x1E69E9E80])
  {
    WTF::xpcDictionaryGetString(a3, "message-name", &v15);
    if (MEMORY[0x19EB01EF0](v15, "request-launch-services-database-update-message", 47))
    {
      v14 = a2;
      if (a2)
      {
        v7 = a2;
      }

      WebKit::LaunchServicesDatabaseObserver::startObserving(a1, &v14);
      if (v14)
      {
      }
    }

    v8 = v15;
    v15 = 0;
    if (v8)
    {
      if (atomic_fetch_add_explicit(v8, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v8, v6);
      }
    }
  }
}

void sub_19D8AB630(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, WTF::StringImpl *a10)
{
  if (a9)
  {
  }

  if (a10)
  {
    if (atomic_fetch_add_explicit(a10, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(a10, a2);
    }
  }

  _Unwind_Resume(exception_object);
}

void WTF::makeBlockPtr<WebKit::LaunchServicesDatabaseObserver::startObserving(WTF::OSObjectPtr<NSObject  {objcproto13OS_xpc_object}*>)::$_0,WebKit::LaunchServicesDatabaseObserver::startObserving(WTF::OSObjectPtr<NSObject  {objcproto13OS_xpc_object}*>)::$_0,void,NSObject  {objcproto13OS_xpc_object}*,NSError *>(void *a1, id *a2)
{
  v3 = *a2;
  *a2 = 0;
  WTF::BlockPtr<void ()(NSObject  {objcproto13OS_xpc_object}*,NSError *)>::fromCallable<WebKit::LaunchServicesDatabaseObserver::startObserving(WTF::OSObjectPtr<NSObject  {objcproto13OS_xpc_object}*>)::$_0>(a1, &v3);
  v2 = v3;
  if (v3)
  {
  }
}

void sub_19D8AB6E8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10)
{
  if (a10)
  {
  }

  _Unwind_Resume(exception_object);
}

void WebKit::LaunchServicesDatabaseObserver::startObserving(WTF::OSObjectPtr<NSObject  {objcproto13OS_xpc_object}*>)::$_0::operator()(xpc_connection_t *a1, void *a2)
{
  if (a2)
  {
    xdict = xpc_dictionary_create(0, 0, 0);
    xpc_dictionary_set_string(xdict, "message-name", "update-launch-services-database-message");
    xpc_dictionary_set_value(xdict, "launch-services-database", a2);
    xpc_connection_send_message(*a1, xdict);
    if (xdict)
    {
    }
  }
}

void sub_19D8AB7A4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  if (a10)
  {
  }

  _Unwind_Resume(exception_object);
}

double WTF::BlockPtr<void ()(NSObject  {objcproto13OS_xpc_object}*,NSError *)>::fromCallable<WebKit::LaunchServicesDatabaseObserver::startObserving(WTF::OSObjectPtr<NSObject  {objcproto13OS_xpc_object}*>)::$_0>(void *a1, void *a2)
{
  v4 = malloc_type_malloc(0x28uLL, 0x10E0040799C3B1DuLL);
  *v4 = MEMORY[0x1E69E9818];
  *&result = 50331650;
  v4[1] = 50331650;
  v4[2] = WTF::BlockPtr<void ()(NSObject  {objcproto13OS_xpc_object}*,NSError *)>::fromCallable<WebKit::LaunchServicesDatabaseObserver::startObserving(WTF::OSObjectPtr<NSObject  {objcproto13OS_xpc_object}*>)::$_0>(WebKit::LaunchServicesDatabaseObserver::startObserving(WTF::OSObjectPtr<NSObject  {objcproto13OS_xpc_object}*>)::$_0)::{lambda(void *,NSObject  {objcproto13OS_xpc_object}*,NSError *)#1}::__invoke;
  v4[3] = &WTF::BlockPtr<void ()(NSObject  {objcproto13OS_xpc_object}*,NSError *)>::fromCallable<WebKit::LaunchServicesDatabaseObserver::startObserving(WTF::OSObjectPtr<NSObject  {objcproto13OS_xpc_object}*>)::$_0>(WebKit::LaunchServicesDatabaseObserver::startObserving(WTF::OSObjectPtr<NSObject  {objcproto13OS_xpc_object}*>)::$_0)::descriptor;
  v4[4] = *a2;
  *a2 = 0;
  *a1 = v4;
  return result;
}

void WTF::BlockPtr<void ()(NSObject  {objcproto13OS_xpc_object}*,NSError *)>::fromCallable<WebKit::LaunchServicesDatabaseObserver::startObserving(WTF::OSObjectPtr<NSObject  {objcproto13OS_xpc_object}*>)::$_0>(WebKit::LaunchServicesDatabaseObserver::startObserving(WTF::OSObjectPtr<NSObject  {objcproto13OS_xpc_object}*>)::$_0)::{lambda(void const*)#1}::__invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
  }
}

void **WTF::Vector<WTF::OSObjectPtr<NSObject  {objcproto13OS_xpc_object}*>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::appendSlowCase<(WTF::FailureAction)0,WTF::OSObjectPtr<NSObject  {objcproto13OS_xpc_object}*>&>(uint64_t a1, unint64_t a2)
{
  result = WTF::Vector<WTF::OSObjectPtr<NSObject  {objcproto13OS_xpc_object}*>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(a1, *(a1 + 12) + 1, a2);
  v4 = *(a1 + 12);
  v5 = *result;
  *(*a1 + 8 * v4) = *result;
  if (v5)
  {
    result = v5;
    LODWORD(v4) = *(a1 + 12);
  }

  *(a1 + 12) = v4 + 1;
  return result;
}

unint64_t WTF::Vector<WTF::OSObjectPtr<NSObject  {objcproto13OS_xpc_object}*>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(uint64_t a1, unint64_t a2, unint64_t a3)
{
  v3 = a3;
  v5 = *a1;
  if (*a1 <= a3 && v5 + 8 * *(a1 + 12) > a3)
  {
    v10 = a3 - v5;
    v11 = *(a1 + 8);
    if (v11 + (v11 >> 1) <= v11 + 1)
    {
      v12 = v11 + 1;
    }

    else
    {
      v12 = v11 + (v11 >> 1);
    }

    if (v12 <= a2)
    {
      v12 = a2;
    }

    if (v12 <= 0x10)
    {
      v13 = 16;
    }

    else
    {
      v13 = v12;
    }

    WTF::Vector<WTF::OSObjectPtr<NSObject  {objcproto13OS_xpc_object}*>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::reserveCapacity<(WTF::FailureAction)0>(a1, v13);
    return *a1 + v10;
  }

  else
  {
    v6 = *(a1 + 8);
    if (v6 + (v6 >> 1) <= v6 + 1)
    {
      v7 = v6 + 1;
    }

    else
    {
      v7 = v6 + (v6 >> 1);
    }

    if (v7 <= a2)
    {
      v7 = a2;
    }

    if (v7 <= 0x10)
    {
      v8 = 16;
    }

    else
    {
      v8 = v7;
    }

    WTF::Vector<WTF::OSObjectPtr<NSObject  {objcproto13OS_xpc_object}*>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::reserveCapacity<(WTF::FailureAction)0>(a1, v8);
  }

  return v3;
}

uint64_t WTF::Vector<WTF::OSObjectPtr<NSObject  {objcproto13OS_xpc_object}*>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::reserveCapacity<(WTF::FailureAction)0>(uint64_t result, unint64_t a2)
{
  if (*(result + 8) < a2)
  {
    v2 = a2;
    if (a2 >> 29)
    {
      __break(0xC471u);
    }

    else
    {
      v3 = result;
      v4 = *result;
      v5 = *(result + 12);
      result = WTF::fastMalloc((8 * a2));
      *(v3 + 8) = v2;
      *v3 = result;
      if (v5)
      {
        v7 = 8 * v5;
        v8 = result;
        v9 = v4;
        do
        {
          *v8++ = *v9;
          *v9 = 0;
          v9 = (v9 + 8);
          v7 -= 8;
        }

        while (v7);
      }

      if (v4)
      {
        if (result == v4)
        {
          *v3 = 0;
          *(v3 + 8) = 0;
        }

        return WTF::fastFree(v4, v6);
      }
    }
  }

  return result;
}

void WTF::Vector<WTF::OSObjectPtr<NSObject  {objcproto13OS_xpc_object}*>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::removeAt(uint64_t *a1, unint64_t a2)
{
  v2 = *(a1 + 3);
  if (v2 <= a2)
  {
    __break(1u);
  }

  else
  {
    v4 = *a1;
    v5 = (*a1 + 8 * a2);
    if (*v5)
    {

      v4 = *a1;
      v2 = *(a1 + 3);
    }

    v6 = v5 + 1;
    v7 = (v4 + 8 * v2);
    while (v6 != v7)
    {
      *(v6 - 1) = *v6;
      *v6++ = 0;
    }

    *(a1 + 3) = v2 - 1;
  }
}

void WebKit::LibWebRTCCodecsProxy::create(uint64_t a1@<X0>, void *a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = WebKit::LibWebRTCCodecsProxy::operator new(0x68, a2);
  WebKit::LibWebRTCCodecsProxy::LibWebRTCCodecsProxy(v6, a1, a2);
  *a3 = v6;
  IPC::Connection::addWorkQueueMessageReceiver(*(v6 + 16), 0x15, *(v6 + 24), v6, 0);
}

void sub_19D8ABB18(_Unwind_Exception *a1, void *a2)
{
  *v3 = 0;
  WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::WorkQueueMessageReceiver<(WTF::DestructionThread)0>,(WTF::DestructionThread)0>::deref((v2 + 8), a2);
  _Unwind_Resume(a1);
}

uint64_t WebKit::LibWebRTCCodecsProxy::operator new(WebKit::LibWebRTCCodecsProxy *this, void *a2)
{
  if (WebKit::LibWebRTCCodecsProxy::s_heapRef)
  {
    return bmalloc::api::tzoneAllocateNonCompact(WebKit::LibWebRTCCodecsProxy::s_heapRef, a2);
  }

  else
  {
    return WebKit::LibWebRTCCodecsProxy::operatorNewSlow(0x68);
  }
}

uint64_t WebKit::LibWebRTCCodecsProxy::LibWebRTCCodecsProxy(uint64_t a1, uint64_t a2, __int128 *a3)
{
  *(a1 + 8) = 3;
  v6 = (a1 + 8);
  *a1 = &unk_1F10EA078;
  v7 = *(a2 + 56);
  while (1)
  {
    v8 = *v7;
    if ((*v7 & 1) == 0)
    {
      break;
    }

    v22 = *v7;
    atomic_compare_exchange_strong_explicit(v7, &v22, v8 + 2, memory_order_relaxed, memory_order_relaxed);
    if (v22 == v8)
    {
      goto LABEL_4;
    }
  }

  WTF::ThreadSafeWeakPtrControlBlock::strongRef(*v7);
LABEL_4:
  *(a1 + 16) = v7;
  v9 = WebKit::GPUProcess::libWebRTCCodecsQueue(*(a2 + 80));
  (*(*v9 + 32))(v9);
  *(a1 + 24) = v9;
  v10 = WebKit::GPUConnectionToWebProcess::videoFrameObjectHeap(a2);
  v11 = v10;
  while (1)
  {
    v12 = *(v10 + 8);
    if ((v12 & 1) == 0)
    {
      break;
    }

    v20 = *(v10 + 8);
    atomic_compare_exchange_strong_explicit((v10 + 8), &v20, v12 + 2, memory_order_relaxed, memory_order_relaxed);
    if (v20 == v12)
    {
      goto LABEL_7;
    }
  }

  WTF::ThreadSafeWeakPtrControlBlock::strongRef(*(v10 + 8));
LABEL_7:
  *(a1 + 32) = v11;
  WTF::MachSendRight::MachSendRight((a1 + 40), (a2 + 96));
  v13 = *a3;
  v14 = *(a3 + 2);
  *(a1 + 72) = 0;
  *(a1 + 64) = v14;
  *(a1 + 48) = v13;
  *(a1 + 96) = 0;
  *(a1 + 80) = 0;
  *(a1 + 88) = 0;
  v15 = *(a1 + 24);
  while (1)
  {
    v16 = *v6;
    if ((*v6 & 1) == 0)
    {
      break;
    }

    v21 = *v6;
    atomic_compare_exchange_strong_explicit(v6, &v21, v16 + 2, memory_order_relaxed, memory_order_relaxed);
    if (v21 == v16)
    {
      goto LABEL_10;
    }
  }

  WTF::ThreadSafeWeakPtrControlBlock::strongRef(*v6);
LABEL_10:
  *v23 = *a3;
  *&v23[15] = *(a3 + 15);
  v17 = WTF::fastMalloc(0x30);
  *v17 = &unk_1F10EA1E0;
  *(v17 + 8) = a1;
  *(v17 + 16) = a1;
  *(v17 + 24) = *v23;
  *(v17 + 40) = *&v23[16];
  v24 = v17;
  (*(*v15 + 48))(v15, &v24);
  v18 = v24;
  v24 = 0;
  if (v18)
  {
    (*(*v18 + 8))(v18);
  }

  return a1;
}

void sub_19D8ABD70(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  if (a12)
  {
    (*(*a12 + 8))(a12);
  }

  v16 = *v13;
  *v13 = 0;
  if (v16)
  {
    std::default_delete<WebCore::PixelBufferConformerCV>::operator()[abi:sn200100](v13, v16);
  }

  v17 = v12[10];
  if (v17)
  {
    WTF::HashTable<WTF::ObjectIdentifierGeneric<WebKit::VideoEncoderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::VideoEncoderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WebKit::LibWebRTCCodecsProxy::Encoder>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::VideoEncoderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WebKit::LibWebRTCCodecsProxy::Encoder>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::VideoEncoderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::VideoEncoderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WebKit::LibWebRTCCodecsProxy::Encoder,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::VideoEncoderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::VideoEncoderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WebKit::LibWebRTCCodecsProxy::Encoder>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::VideoEncoderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::deallocateTable(v17, v16);
  }

  if (*v14)
  {
    WTF::HashTable<WTF::ObjectIdentifierGeneric<WebKit::VideoDecoderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::VideoDecoderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WebKit::LibWebRTCCodecsProxy::Decoder>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::VideoDecoderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WebKit::LibWebRTCCodecsProxy::Decoder>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::VideoDecoderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::VideoDecoderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WebKit::LibWebRTCCodecsProxy::Decoder,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::VideoDecoderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::VideoDecoderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WebKit::LibWebRTCCodecsProxy::Decoder>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::VideoDecoderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::deallocateTable(*v14, v16);
  }

  WTF::MachSendRight::~MachSendRight((v12 + 5));
  v19 = v12[4];
  v12[4] = 0;
  if (v19)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::WorkQueueMessageReceiver<(WTF::DestructionThread)0>,(WTF::DestructionThread)0>::deref((v19 + 8), v18);
  }

  v20 = v12[3];
  v12[3] = 0;
  if (v20)
  {
    (*(*v20 + 40))(v20);
  }

  v21 = v12[2];
  v12[2] = 0;
  if (v21)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v21);
  }

  _Unwind_Resume(a1);
}

void WebKit::LibWebRTCCodecsProxy::~LibWebRTCCodecsProxy(WebKit::LibWebRTCCodecsProxy *this)
{
  v4 = *(this + 12);
  v2 = (this + 96);
  v3 = v4;
  *v2 = 0;
  if (v4)
  {
    std::default_delete<WebCore::PixelBufferConformerCV>::operator()[abi:sn200100](v2, v3);
  }

  v5 = *(this + 10);
  if (v5)
  {
    WTF::HashTable<WTF::ObjectIdentifierGeneric<WebKit::VideoEncoderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::VideoEncoderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WebKit::LibWebRTCCodecsProxy::Encoder>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::VideoEncoderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WebKit::LibWebRTCCodecsProxy::Encoder>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::VideoEncoderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::VideoEncoderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WebKit::LibWebRTCCodecsProxy::Encoder,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::VideoEncoderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::VideoEncoderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WebKit::LibWebRTCCodecsProxy::Encoder>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::VideoEncoderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::deallocateTable(v5, v3);
  }

  v6 = *(this + 9);
  if (v6)
  {
    WTF::HashTable<WTF::ObjectIdentifierGeneric<WebKit::VideoDecoderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::VideoDecoderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WebKit::LibWebRTCCodecsProxy::Decoder>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::VideoDecoderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WebKit::LibWebRTCCodecsProxy::Decoder>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::VideoDecoderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::VideoDecoderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WebKit::LibWebRTCCodecsProxy::Decoder,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::VideoDecoderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::VideoDecoderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WebKit::LibWebRTCCodecsProxy::Decoder>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::VideoDecoderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::deallocateTable(v6, v3);
  }

  WTF::MachSendRight::~MachSendRight((this + 40));
  v8 = *(this + 4);
  *(this + 4) = 0;
  if (v8)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::WorkQueueMessageReceiver<(WTF::DestructionThread)0>,(WTF::DestructionThread)0>::deref((v8 + 8), v7);
  }

  v9 = *(this + 3);
  *(this + 3) = 0;
  if (v9)
  {
    (*(*v9 + 40))(v9);
  }

  v10 = *(this + 2);
  *(this + 2) = 0;
  if (v10)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v10);
  }
}

{
  WebKit::LibWebRTCCodecsProxy::~LibWebRTCCodecsProxy(this);

  bmalloc::api::tzoneFree(v1, v2);
}

uint64_t WebKit::LibWebRTCCodecsProxy::stopListeningForIPC(atomic_ullong *a1, uint64_t *a2)
{
  IPC::Connection::removeWorkQueueMessageReceiver(a1[2], 0x15u, 0);
  v4 = a1[3];
  v5 = WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::WorkQueueMessageReceiver<(WTF::DestructionThread)0>,(WTF::DestructionThread)0>::controlBlock(a1 + 1);
  v6 = WTF::ThreadSafeWeakPtrControlBlock::weakRef(v5);
  v7 = *a2;
  *a2 = 0;
  v8 = WTF::fastMalloc(0x20);
  *v8 = &unk_1F10EA208;
  v8[1] = a1;
  v8[2] = v6;
  v8[3] = v7;
  v10 = v8;
  (*(*v4 + 48))(v4, &v10);
  result = v10;
  v10 = 0;
  if (result)
  {
    return (*(*result + 8))(result);
  }

  return result;
}

void sub_19D8AC030(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (a10)
  {
    (*(*a10 + 8))(a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *WebKit::LibWebRTCCodecsProxy::createDecoder(uint64_t a1, void *a2, int a3, uint64_t *a4, int a5, int a6, WTF::RefCountedBase *a7)
{
  v12 = *a4;
  if (!*a4)
  {
    goto LABEL_22;
  }

  if (a3 != 3)
  {
    if (a3 == 1)
    {
      WebCore::parseHEVCCodecParameters();
      if ((BYTE8(v81) & 1) == 0)
      {
        return WTF::CompletionHandler<void ()(BOOL)>::operator()(a7, 0);
      }

      v13 = WebCore::validateHEVCParameters();
      v12 = *&v79[8];
      if (&v80 != *&v79[8] && *&v79[8])
      {
        *&v79[8] = 0;
        *&v79[16] = 0;
        v12 = WTF::fastFree(v12, a2);
      }

      if ((v13 & 0x1000000) == 0)
      {
        return WTF::CompletionHandler<void ()(BOOL)>::operator()(a7, 0);
      }
    }

    else if (!a3)
    {
      v12 = WebCore::parseAVCCodecParameters();
      if ((v12 & 0x1000000) == 0 || v12 > 0x64u || BYTE2(v12) >= 0x35u)
      {
        return WTF::CompletionHandler<void ()(BOOL)>::operator()(a7, 0);
      }
    }

LABEL_22:
    if (a5)
    {
      v18 = *(a1 + 32);
      if (v18)
      {
        while (1)
        {
          v19 = *(v18 + 8);
          if ((v19 & 1) == 0)
          {
            break;
          }

          v20 = *(v18 + 8);
          atomic_compare_exchange_strong_explicit((v18 + 8), &v20, v19 + 2, memory_order_relaxed, memory_order_relaxed);
          if (v20 == v19)
          {
            goto LABEL_29;
          }
        }

        v12 = WTF::ThreadSafeWeakPtrControlBlock::strongRef(*(v18 + 8));
      }
    }

    else
    {
      v18 = 0;
    }

LABEL_29:
    v78 = 0;
    if (a6)
    {
      v21 = WebCore::FrameRateMonitor::operator new(v12, a2);
      v22 = WTF::fastMalloc(0x10);
      *v22 = &unk_1F10EA0C0;
      v22[1] = a2;
      *v21 = v22;
      *(v21 + 8) = 0u;
      *(v21 + 24) = v21 + 40;
      *(v21 + 32) = 120;
      *(v21 + 1000) = 0u;
      v82 = 0;
      std::unique_ptr<WebCore::FrameRateMonitor>::reset[abi:sn200100](&v78, v21);
      std::unique_ptr<WebCore::FrameRateMonitor>::reset[abi:sn200100](&v82, 0);
    }

    v23 = WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::WorkQueueMessageReceiver<(WTF::DestructionThread)0>,(WTF::DestructionThread)0>::controlBlock((a1 + 8));
    v76[1] = WTF::ThreadSafeWeakPtrControlBlock::weakRef(v23);
    v76[2] = a2;
    v24 = *(a1 + 16);
    while (1)
    {
      v25 = *v24;
      if ((*v24 & 1) == 0)
      {
        break;
      }

      v26 = *v24;
      atomic_compare_exchange_strong_explicit(v24, &v26, v25 + 2, memory_order_relaxed, memory_order_relaxed);
      if (v26 == v25)
      {
        goto LABEL_36;
      }
    }

    WTF::ThreadSafeWeakPtrControlBlock::strongRef(*v24);
LABEL_36:
    WTF::MachSendRight::MachSendRight(v77, (a1 + 40));
    v27 = v78;
    v78 = 0;
    *&v77[8] = v18;
    *&v77[16] = v27;
    std::unique_ptr<WebCore::FrameRateMonitor>::reset[abi:sn200100](&v78, 0);
    v28 = *&v76[1];
    v76[1] = 0;
    v78 = a1;
    *v79 = v28;
    v76[3] = 0;
    *&v79[16] = v24;
    WTF::MachSendRight::MachSendRight(&v80, v77);
    v29 = *&v77[8];
    *&v77[8] = 0uLL;
    v81 = v29;
    v30 = malloc_type_malloc(0x58uLL, 0x10E00409278BD79uLL);
    *v30 = MEMORY[0x1E69E9818];
    *(v30 + 1) = 50331650;
    *(v30 + 2) = WTF::BlockPtr<void ()(__CVBuffer *,long long,long long,BOOL)>::fromCallable<WebKit::LibWebRTCCodecsProxy::createDecoderCallback(WTF::ObjectIdentifierGeneric<WebKit::VideoDecoderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,BOOL,BOOL)::$_1>(WebKit::LibWebRTCCodecsProxy::createDecoderCallback(WTF::ObjectIdentifierGeneric<WebKit::VideoDecoderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,BOOL,BOOL)::$_1)::{lambda(void *,__CVBuffer *,long long,long long,BOOL)#1}::__invoke;
    *(v30 + 3) = &WTF::BlockPtr<void ()(__CVBuffer *,long long,long long,BOOL)>::fromCallable<WebKit::LibWebRTCCodecsProxy::createDecoderCallback(WTF::ObjectIdentifierGeneric<WebKit::VideoDecoderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,BOOL,BOOL)::$_1>(WebKit::LibWebRTCCodecsProxy::createDecoderCallback(WTF::ObjectIdentifierGeneric<WebKit::VideoDecoderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,BOOL,BOOL)::$_1)::descriptor;
    v31 = v78;
    v32 = *v79;
    v78 = 0;
    *v79 = 0;
    *(v30 + 4) = v31;
    *(v30 + 40) = v32;
    v33 = *&v79[16];
    *&v79[16] = 0;
    *(v30 + 7) = v33;
    WTF::MachSendRight::MachSendRight((v30 + 64), &v80);
    v34 = v81;
    v81 = 0uLL;
    *(v30 + 72) = v34;
    std::unique_ptr<WebCore::FrameRateMonitor>::reset[abi:sn200100](&v81 + 1, 0);
    v36 = v81;
    *&v81 = 0;
    if (v36)
    {
      WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::WorkQueueMessageReceiver<(WTF::DestructionThread)0>,(WTF::DestructionThread)0>::deref((v36 + 8), v35);
    }

    WTF::MachSendRight::~MachSendRight(&v80);
    v38 = *&v79[16];
    *&v79[16] = 0;
    if (v38)
    {
      WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v38);
    }

    v39 = *v79;
    *v79 = 0;
    if (v39)
    {
      WTF::ThreadSafeWeakPtrControlBlock::weakDeref(v39, v37);
    }

    WebCore::WebRTCVideoDecoder::create();
    _Block_release(v30);
    std::unique_ptr<WebCore::FrameRateMonitor>::reset[abi:sn200100](&v77[16], 0);
    v41 = *&v77[8];
    *&v77[8] = 0;
    if (v41)
    {
      WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::WorkQueueMessageReceiver<(WTF::DestructionThread)0>,(WTF::DestructionThread)0>::deref((v41 + 8), v40);
    }

    WTF::MachSendRight::~MachSendRight(v77);
    v43 = v76[3];
    v76[3] = 0;
    if (v43)
    {
      WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v43);
    }

    v44 = v76[1];
    v76[1] = 0;
    if (v44)
    {
      v44 = WTF::ThreadSafeWeakPtrControlBlock::weakDeref(v44, v42);
    }

    v45 = v75;
    if (!v75)
    {
      WTF::CompletionHandler<void ()(BOOL)>::operator()(a7, 0);
      return 0;
    }

    v82 = 0;
    if (a6)
    {
      v46 = WebCore::FrameRateMonitor::operator new(v44, v42);
      v47 = WTF::fastMalloc(0x10);
      *v47 = &unk_1F10EA130;
      v47[1] = a2;
      *v46 = v47;
      *(v46 + 8) = 0u;
      *(v46 + 24) = v46 + 40;
      *(v46 + 32) = 120;
      *(v46 + 1000) = 0u;
      v78 = 0;
      std::unique_ptr<WebCore::FrameRateMonitor>::reset[abi:sn200100](&v82, v46);
      std::unique_ptr<WebCore::FrameRateMonitor>::reset[abi:sn200100](&v78, 0);
      v45 = v75;
      v48 = v82;
    }

    else
    {
      v48 = 0;
    }

    v76[0] = v45;
    v82 = 0;
    v76[1] = v48;
    *&v76[2] = 0u;
    *v77 = 0u;
    if (a2 == -1 || !a2)
    {
      __break(0xC471u);
      JUMPOUT(0x19D8AC830);
    }

    v49 = *(a1 + 72);
    if (!v49)
    {
      WTF::HashTable<WTF::ObjectIdentifierGeneric<WebKit::VideoDecoderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::VideoDecoderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WebKit::LibWebRTCCodecsProxy::Decoder>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::VideoDecoderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WebKit::LibWebRTCCodecsProxy::Decoder>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::VideoDecoderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::VideoDecoderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WebKit::LibWebRTCCodecsProxy::Decoder,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::VideoDecoderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::VideoDecoderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WebKit::LibWebRTCCodecsProxy::Decoder>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::VideoDecoderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::expand((a1 + 72));
      v49 = *(a1 + 72);
    }

    v50 = *(v49 - 8);
    v51 = (a2 + ~(a2 << 32)) ^ ((a2 + ~(a2 << 32)) >> 22);
    v52 = 9 * ((v51 + ~(v51 << 13)) ^ ((v51 + ~(v51 << 13)) >> 8));
    v53 = (v52 ^ (v52 >> 15)) + ~((v52 ^ (v52 >> 15)) << 27);
    v54 = v50 & ((v53 >> 31) ^ v53);
    v55 = v49 + 56 * v54;
    v56 = *v55;
    if (*v55)
    {
      v57 = 0;
      v58 = 1;
      while (v56 != a2)
      {
        if (v56 == -1)
        {
          v57 = v55;
        }

        v54 = (v54 + v58) & v50;
        v55 = v49 + 56 * v54;
        v56 = *v55;
        ++v58;
        if (!*v55)
        {
          if (v57)
          {
            *(v57 + 48) = 0;
            *(v57 + 16) = 0u;
            *(v57 + 32) = 0u;
            *v57 = 0u;
            --*(*(a1 + 72) - 16);
            v55 = v57;
          }

          goto LABEL_65;
        }
      }

      goto LABEL_75;
    }

LABEL_65:
    *v55 = a2;
    v59 = v76[0];
    v60 = v76[1];
    v61 = v76[2];
    v62 = v76[3];
    memset(v76, 0, sizeof(v76));
    v63 = *v77;
    *v77 = 0;
    v64 = *&v77[8];
    *&v77[8] = 0;
    *&v81 = 0;
    v78 = 0;
    v65 = *(v55 + 8);
    *(v55 + 8) = v59;
    if (v65)
    {
      (*(*v65 + 8))(v65);
    }

    *v79 = 0;
    std::unique_ptr<WebCore::FrameRateMonitor>::reset[abi:sn200100]((v55 + 16), v60);
    v66 = *(v55 + 24);
    *(v55 + 24) = v61;
    *(v55 + 32) = v62;
    *&v79[8] = v66;
    v67 = *(v55 + 40);
    *(v55 + 40) = v63;
    v80 = v67;
    LODWORD(v67) = *(v55 + 48);
    *(v55 + 48) = v64;
    LODWORD(v81) = v67;
    WTF::Deque<WTF::CompletionHandler<void ()(BOOL)>,0ul>::~Deque(&v79[8], v68);
    std::unique_ptr<WebCore::FrameRateMonitor>::reset[abi:sn200100](v79, 0);
    v69 = v78;
    v78 = 0;
    if (v69)
    {
      (*(*v69 + 8))(v69);
    }

    v70 = *(a1 + 72);
    if (v70)
    {
      v71 = *(v70 - 12) + 1;
    }

    else
    {
      v71 = 1;
    }

    *(v70 - 12) = v71;
    v72 = (*(v70 - 16) + v71);
    v73 = *(v70 - 4);
    if (v73 > 0x400)
    {
      if (v73 > 2 * v72)
      {
        goto LABEL_75;
      }
    }

    else if (3 * v73 > 4 * v72)
    {
LABEL_75:
      WTF::Deque<WTF::CompletionHandler<void ()(BOOL)>,0ul>::~Deque(&v76[2], v42);
      std::unique_ptr<WebCore::FrameRateMonitor>::reset[abi:sn200100](&v76[1], 0);
      if (v76[0])
      {
        (*(*v76[0] + 8))(v76[0]);
      }

      atomic_store(1u, (a1 + 88));
      WTF::CompletionHandler<void ()(BOOL)>::operator()(a7, 1);
      std::unique_ptr<WebCore::FrameRateMonitor>::reset[abi:sn200100](&v82, 0);
      return 0;
    }

    WTF::HashTable<WTF::ObjectIdentifierGeneric<WebKit::VideoDecoderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::VideoDecoderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WebKit::LibWebRTCCodecsProxy::Decoder>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::VideoDecoderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WebKit::LibWebRTCCodecsProxy::Decoder>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::VideoDecoderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::VideoDecoderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WebKit::LibWebRTCCodecsProxy::Decoder,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::VideoDecoderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::VideoDecoderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WebKit::LibWebRTCCodecsProxy::Decoder>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::VideoDecoderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::expand((a1 + 72));
    goto LABEL_75;
  }

  v12 = WTF::StringImpl::startsWith();
  if (!v12)
  {
    return WTF::CompletionHandler<void ()(BOOL)>::operator()(a7, 0);
  }

  v15 = *a4;
  if (!*a4 || *(v15 + 4) < 7u)
  {
    return WTF::CompletionHandler<void ()(BOOL)>::operator()(a7, 0);
  }

  v16 = *(v15 + 8);
  if ((*(v15 + 16) & 4) != 0)
  {
    if (*(v16 + 5) - 48 > 2)
    {
      return WTF::CompletionHandler<void ()(BOOL)>::operator()(a7, 0);
    }

    v17 = *(v16 + 6);
  }

  else
  {
    if (*(v16 + 10) - 48 >= 3)
    {
      return WTF::CompletionHandler<void ()(BOOL)>::operator()(a7, 0);
    }

    v17 = *(v16 + 12);
  }

  if (v17 == 46)
  {
    goto LABEL_22;
  }

  return WTF::CompletionHandler<void ()(BOOL)>::operator()(a7, 0);
}

void sub_19D8AC854(_Unwind_Exception *exception_object, void *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, WTF::ThreadSafeWeakPtrControlBlock *a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19, WTF::ThreadSafeWeakPtrControlBlock *a20, WTF *a21, uint64_t a22, uint64_t a23, uint64_t a24, char a25)
{
  if (a25 == 1 && &a23 != a21)
  {
    if (a21)
    {
      WTF::fastFree(a21, a2);
    }
  }

  _Unwind_Resume(exception_object);
}

void WebKit::LibWebRTCCodecsProxy::releaseDecoder(uint64_t a1, uint64_t a2)
{
  v3 = (a1 + 72);
  v4 = WTF::HashTable<WTF::ObjectIdentifierGeneric<WebKit::VideoDecoderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::VideoDecoderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WebKit::LibWebRTCCodecsProxy::Decoder>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::VideoDecoderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WebKit::LibWebRTCCodecsProxy::Decoder>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::VideoDecoderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::VideoDecoderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WebKit::LibWebRTCCodecsProxy::Decoder,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::VideoDecoderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::VideoDecoderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WebKit::LibWebRTCCodecsProxy::Decoder>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::VideoDecoderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::find<WTF::IdentityHashTranslator<WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::VideoDecoderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WebKit::LibWebRTCCodecsProxy::Decoder,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::VideoDecoderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::VideoDecoderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WebKit::LibWebRTCCodecsProxy::Decoder>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::VideoDecoderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,(WTF::ShouldValidateKey)1,WTF::ObjectIdentifierGeneric<WebKit::VideoDecoderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>(*(a1 + 72), a2);
  v5 = v4;
  v6 = *v3;
  if (*v3)
  {
    v6 += 56 * *(v6 - 4);
  }

  if (v6 != v4)
  {
    v7 = *(a1 + 24);
    v26 = 0;
    v24 = *(v4 + 3);
    v23 = v24;
    v4[3] = 0;
    v4[4] = 0;
    v25 = v4[5];
    v8 = v25;
    v4[5] = 0;
    v9 = *(v4 + 12);
    *(v4 + 12) = 0;
    v10 = WTF::fastMalloc(0x28);
    *v10 = &unk_1F10EA230;
    v10[3] = v8;
    v10[4] = 0;
    v10[1] = v23;
    v11 = *(&v24 + 1);
    v24 = 0uLL;
    v10[2] = v11;
    v25 = 0;
    *(v10 + 8) = v9;
    LODWORD(v26) = 0;
    v27 = v10;
    (*(*v7 + 48))(v7, &v27);
    v13 = v27;
    v27 = 0;
    if (v13)
    {
      (*(*v13 + 8))(v13);
    }

    WTF::Deque<WTF::CompletionHandler<void ()(BOOL)>,0ul>::~Deque(&v24, v12);
    if (*v3)
    {
      v15 = *v3 + 56 * *(*v3 - 4);
      if (v15 == v5)
      {
LABEL_20:
        v21 = *(a1 + 80);
        if (v21 && *(v21 - 12))
        {
          LOBYTE(v22) = 1;
        }

        else
        {
          v22 = *v3;
          if (*v3)
          {
            LOBYTE(v22) = *(v22 - 12) != 0;
          }
        }

        atomic_store(v22, (a1 + 88));
        return;
      }
    }

    else
    {
      if (!v5)
      {
        goto LABEL_20;
      }

      v15 = 0;
    }

    if (v15 != v5)
    {
      *v5 = -1;
      WTF::Deque<WTF::CompletionHandler<void ()(BOOL)>,0ul>::~Deque((v5 + 3), v14);
      std::unique_ptr<WebCore::FrameRateMonitor>::reset[abi:sn200100](v5 + 2, 0);
      v16 = v5[1];
      v5[1] = 0;
      if (v16)
      {
        (*(*v16 + 8))(v16);
      }

      v17 = *v3;
      v18 = vadd_s32(*(*v3 - 16), 0xFFFFFFFF00000001);
      *(v17 - 16) = v18;
      v19 = *(v17 - 4);
      if (6 * v18.i32[1] < v19 && v19 >= 9)
      {
        WTF::HashTable<WTF::ObjectIdentifierGeneric<WebKit::VideoDecoderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::VideoDecoderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WebKit::LibWebRTCCodecsProxy::Decoder>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::VideoDecoderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WebKit::LibWebRTCCodecsProxy::Decoder>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::VideoDecoderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::VideoDecoderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WebKit::LibWebRTCCodecsProxy::Decoder,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::VideoDecoderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::VideoDecoderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WebKit::LibWebRTCCodecsProxy::Decoder>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::VideoDecoderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::rehash(v3, v19 >> 1);
      }
    }

    goto LABEL_20;
  }
}

void sub_19D8ACCBC(_Unwind_Exception *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  v17 = a16;
  a16 = 0;
  if (v17)
  {
    (*(*v17 + 8))(v17);
  }

  WTF::Deque<WTF::CompletionHandler<void ()(BOOL)>,0ul>::~Deque(&a11, a2);
  _Unwind_Resume(a1);
}

uint64_t WebKit::LibWebRTCCodecsProxy::flushDecoder(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a1 + 24);
  (*(*v6 + 32))(v6);
  v7 = WTF::fastMalloc(0x18);
  *v7 = &unk_1F10EA258;
  v7[1] = v6;
  v7[2] = a3;
  v10 = v7;
  WebKit::LibWebRTCCodecsProxy::doDecoderTask(a1, a2, &v10);
  v8 = *(*v7 + 8);

  return v8(v7);
}

uint64_t *WebKit::LibWebRTCCodecsProxy::doDecoderTask(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  result = WTF::HashTable<WTF::ObjectIdentifierGeneric<WebKit::VideoDecoderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::VideoDecoderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WebKit::LibWebRTCCodecsProxy::Decoder>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::VideoDecoderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WebKit::LibWebRTCCodecsProxy::Decoder>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::VideoDecoderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::VideoDecoderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WebKit::LibWebRTCCodecsProxy::Decoder,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::VideoDecoderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::VideoDecoderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WebKit::LibWebRTCCodecsProxy::Decoder>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::VideoDecoderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::find<WTF::IdentityHashTranslator<WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::VideoDecoderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WebKit::LibWebRTCCodecsProxy::Decoder,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::VideoDecoderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::VideoDecoderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WebKit::LibWebRTCCodecsProxy::Decoder>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::VideoDecoderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,(WTF::ShouldValidateKey)1,WTF::ObjectIdentifierGeneric<WebKit::VideoDecoderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>(*(a1 + 72), a2);
  v6 = *(a1 + 72);
  if (v6)
  {
    v6 += 7 * *(v6 - 1);
  }

  if (v6 != result)
  {
    v7 = *(**a3 + 16);
    v8 = result + 1;
    v9 = *a3;

    return v7(v9, v8);
  }

  return result;
}

uint64_t WebKit::LibWebRTCCodecsProxy::setDecoderFormatDescription(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, __int16 a5, __int16 a6)
{
  v13[0] = a3;
  v13[1] = a4;
  v12 = a5;
  v11 = a6;
  v8 = WTF::fastMalloc(0x20);
  *v8 = &unk_1F10EA280;
  v8[1] = v13;
  v8[2] = &v12;
  v8[3] = &v11;
  v10 = v8;
  WebKit::LibWebRTCCodecsProxy::doDecoderTask(a1, a2, &v10);
  return (*(*v8 + 8))(v8);
}

uint64_t WebKit::LibWebRTCCodecsProxy::decodeFrame(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t *a6)
{
  v12 = *(a1 + 16);
  while (1)
  {
    v13 = *v12;
    if ((*v12 & 1) == 0)
    {
      break;
    }

    v14 = *v12;
    atomic_compare_exchange_strong_explicit(v12, &v14, v13 + 2, memory_order_relaxed, memory_order_relaxed);
    if (v14 == v13)
    {
      goto LABEL_6;
    }
  }

  WTF::ThreadSafeWeakPtrControlBlock::strongRef(*v12);
LABEL_6:
  v15 = *a6;
  *a6 = 0;
  v16 = WTF::fastMalloc(0x38);
  *v16 = &unk_1F10EA2A8;
  v16[1] = a2;
  v16[2] = v12;
  v16[3] = a3;
  v16[4] = a4;
  v16[5] = a5;
  v16[6] = v15;
  v19 = v16;
  WebKit::LibWebRTCCodecsProxy::doDecoderTask(a1, a2, &v19);
  v17 = *(*v16 + 8);

  return v17(v16);
}

uint64_t WebKit::LibWebRTCCodecsProxy::setFrameSize(uint64_t a1, uint64_t a2, __int16 a3, __int16 a4)
{
  v10 = a3;
  v9 = a4;
  v6 = WTF::fastMalloc(0x18);
  *v6 = &unk_1F10EA2D0;
  v6[1] = &v10;
  v6[2] = &v9;
  v8 = v6;
  WebKit::LibWebRTCCodecsProxy::doDecoderTask(a1, a2, &v8);
  return (*(*v6 + 8))(v6);
}

void WebKit::LibWebRTCCodecsProxy::createEncoder(atomic_ullong *a1, uint64_t a2, unsigned int a3, void *a4, uint64_t a5, unsigned int a6, uint64_t a7, unsigned int a8, WTF::RefCountedBase *a9)
{
  v86 = *MEMORY[0x1E69E9840];
  v78[0] = 0;
  v78[1] = 0;
  v77 = v78;
  if (*(a5 + 12))
  {
    WTF::String::utf8();
    WTF::String::utf8();
    operator new();
  }

  if (a3 <= 1)
  {
    if (a3)
    {
      if (!a8)
      {
        if (!*a4)
        {
          goto LABEL_24;
        }

        WebCore::parseHEVCCodecParameters();
        if (v84)
        {
          v13 = WebCore::validateHEVCParameters();
          if (v84)
          {
            v14 = v81[0];
            if (&v82 != v81[0])
            {
              if (v81[0])
              {
                v81[0] = 0;
                LODWORD(v81[1]) = 0;
                WTF::fastFree(v14, v12);
              }
            }
          }

          if ((v13 & 0x1000000) != 0)
          {
LABEL_24:
            v15 = WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::WorkQueueMessageReceiver<(WTF::DestructionThread)0>,(WTF::DestructionThread)0>::controlBlock(a1 + 1);
            v16 = WTF::ThreadSafeWeakPtrControlBlock::weakRef(v15);
            v17 = a1[3];
            (*(*v17 + 32))(v17);
            v18 = malloc_type_malloc(0x40uLL, 0x10E00403FCEB92AuLL);
            *v18 = MEMORY[0x1E69E9818];
            v18[1] = 50331650;
            v18[2] = WTF::BlockPtr<void ()(BOOL)>::fromCallable<WebKit::LibWebRTCCodecsProxy::createEncoder(WTF::ObjectIdentifierGeneric<WebKit::VideoEncoderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WebCore::VideoCodecType,WTF::String const&,WTF::Vector<std::pair<WTF::String,WTF::String>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> const&,BOOL,BOOL,WebCore::VideoEncoderScalabilityMode,WTF::CompletionHandler<void ()(BOOL)> &&)::$_0>(WebKit::LibWebRTCCodecsProxy::createEncoder(WTF::ObjectIdentifierGeneric<WebKit::VideoEncoderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WebCore::VideoCodecType,WTF::String const&,WTF::Vector<std::pair<WTF::String,WTF::String>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> const&,BOOL,BOOL,WebCore::VideoEncoderScalabilityMode,WTF::CompletionHandler<void ()(BOOL)> &&)::$_0)::{lambda(void *,BOOL)#1}::__invoke;
            v18[3] = &WTF::BlockPtr<void ()(BOOL)>::fromCallable<WebKit::LibWebRTCCodecsProxy::createEncoder(WTF::ObjectIdentifierGeneric<WebKit::VideoEncoderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WebCore::VideoCodecType,WTF::String const&,WTF::Vector<std::pair<WTF::String,WTF::String>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> const&,BOOL,BOOL,WebCore::VideoEncoderScalabilityMode,WTF::CompletionHandler<void ()(BOOL)> &&)::$_0>(WebKit::LibWebRTCCodecsProxy::createEncoder(WTF::ObjectIdentifierGeneric<WebKit::VideoEncoderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WebCore::VideoCodecType,WTF::String const&,WTF::Vector<std::pair<WTF::String,WTF::String>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> const&,BOOL,BOOL,WebCore::VideoEncoderScalabilityMode,WTF::CompletionHandler<void ()(BOOL)> &&)::$_0)::descriptor;
            v18[4] = a1;
            v18[5] = v16;
            v18[6] = v17;
            v18[7] = a2;
            v19 = WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::WorkQueueMessageReceiver<(WTF::DestructionThread)0>,(WTF::DestructionThread)0>::controlBlock(a1 + 1);
            v20 = WTF::ThreadSafeWeakPtrControlBlock::weakRef(v19);
            v21 = a1[3];
            (*(*v21 + 32))(v21);
            v22 = a1[2];
            while (1)
            {
              v23 = *v22;
              if ((*v22 & 1) == 0)
              {
                break;
              }

              v24 = *v22;
              atomic_compare_exchange_strong_explicit(v22, &v24, v23 + 2, memory_order_relaxed, memory_order_relaxed);
              if (v24 == v23)
              {
                goto LABEL_29;
              }
            }

            WTF::ThreadSafeWeakPtrControlBlock::strongRef(*v22);
LABEL_29:
            v25 = malloc_type_malloc(0x48uLL, 0x10E00401981FA58uLL);
            *v25 = MEMORY[0x1E69E9818];
            v25[1] = 50331650;
            v25[2] = WTF::BlockPtr<void ()(unsigned char const*,unsigned long,webrtc::WebKitEncodedFrameInfo const&)>::fromCallable<WebKit::LibWebRTCCodecsProxy::createEncoder(WTF::ObjectIdentifierGeneric<WebKit::VideoEncoderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WebCore::VideoCodecType,WTF::String const&,WTF::Vector<std::pair<WTF::String,WTF::String>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> const&,BOOL,BOOL,WebCore::VideoEncoderScalabilityMode,WTF::CompletionHandler<void ()(BOOL)> &&)::$_1>(WebKit::LibWebRTCCodecsProxy::createEncoder(WTF::ObjectIdentifierGeneric<WebKit::VideoEncoderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WebCore::VideoCodecType,WTF::String const&,WTF::Vector<std::pair<WTF::String,WTF::String>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> const&,BOOL,BOOL,WebCore::VideoEncoderScalabilityMode,WTF::CompletionHandler<void ()(BOOL)> &&)::$_1)::{lambda(void *,unsigned char const*,unsigned long,webrtc::WebKitEncodedFrameInfo const&)#1}::__invoke;
            v25[3] = &WTF::BlockPtr<void ()(unsigned char const*,unsigned long,webrtc::WebKitEncodedFrameInfo const&)>::fromCallable<WebKit::LibWebRTCCodecsProxy::createEncoder(WTF::ObjectIdentifierGeneric<WebKit::VideoEncoderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WebCore::VideoCodecType,WTF::String const&,WTF::Vector<std::pair<WTF::String,WTF::String>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> const&,BOOL,BOOL,WebCore::VideoEncoderScalabilityMode,WTF::CompletionHandler<void ()(BOOL)> &&)::$_1>(WebKit::LibWebRTCCodecsProxy::createEncoder(WTF::ObjectIdentifierGeneric<WebKit::VideoEncoderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WebCore::VideoCodecType,WTF::String const&,WTF::Vector<std::pair<WTF::String,WTF::String>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> const&,BOOL,BOOL,WebCore::VideoEncoderScalabilityMode,WTF::CompletionHandler<void ()(BOOL)> &&)::$_1)::descriptor;
            v25[4] = a1;
            v25[5] = v20;
            v25[6] = v21;
            v25[7] = v22;
            v25[8] = a2;
            v26 = a1[2];
            while (1)
            {
              v27 = *v26;
              if ((*v26 & 1) == 0)
              {
                break;
              }

              v28 = *v26;
              atomic_compare_exchange_strong_explicit(v26, &v28, v27 + 2, memory_order_relaxed, memory_order_relaxed);
              if (v28 == v27)
              {
                goto LABEL_34;
              }
            }

            WTF::ThreadSafeWeakPtrControlBlock::strongRef(*v26);
LABEL_34:
            v29 = malloc_type_malloc(0x30uLL, 0x10E0040AA5B57ACuLL);
            *v29 = MEMORY[0x1E69E9818];
            v29[1] = 50331650;
            v29[2] = WTF::BlockPtr<void ()(unsigned char const*,unsigned long)>::fromCallable<WebKit::LibWebRTCCodecsProxy::createEncoder(WTF::ObjectIdentifierGeneric<WebKit::VideoEncoderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WebCore::VideoCodecType,WTF::String const&,WTF::Vector<std::pair<WTF::String,WTF::String>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> const&,BOOL,BOOL,WebCore::VideoEncoderScalabilityMode,WTF::CompletionHandler<void ()(BOOL)> &&)::$_2>(WebKit::LibWebRTCCodecsProxy::createEncoder(WTF::ObjectIdentifierGeneric<WebKit::VideoEncoderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WebCore::VideoCodecType,WTF::String const&,WTF::Vector<std::pair<WTF::String,WTF::String>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> const&,BOOL,BOOL,WebCore::VideoEncoderScalabilityMode,WTF::CompletionHandler<void ()(BOOL)> &&)::$_2)::{lambda(void *,unsigned char const*,unsigned long)#1}::__invoke;
            v29[3] = &WTF::BlockPtr<void ()(unsigned char const*,unsigned long)>::fromCallable<WebKit::LibWebRTCCodecsProxy::createEncoder(WTF::ObjectIdentifierGeneric<WebKit::VideoEncoderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WebCore::VideoCodecType,WTF::String const&,WTF::Vector<std::pair<WTF::String,WTF::String>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> const&,BOOL,BOOL,WebCore::VideoEncoderScalabilityMode,WTF::CompletionHandler<void ()(BOOL)> &&)::$_2>(WebKit::LibWebRTCCodecsProxy::createEncoder(WTF::ObjectIdentifierGeneric<WebKit::VideoEncoderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WebCore::VideoCodecType,WTF::String const&,WTF::Vector<std::pair<WTF::String,WTF::String>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> const&,BOOL,BOOL,WebCore::VideoEncoderScalabilityMode,WTF::CompletionHandler<void ()(BOOL)> &&)::$_2)::descriptor;
            v29[4] = v26;
            v29[5] = a2;
            if (a3)
            {
              v30 = "H265";
            }

            else
            {
              v30 = "H264";
            }

            std::string::basic_string[abi:sn200100]<0>(&__p, v30);
            webrtc::SdpVideoFormat::SdpVideoFormat();
            LocalEncoder = webrtc::createLocalEncoder();
            webrtc::SdpVideoFormat::~SdpVideoFormat(&v79);
            if (SBYTE7(v73) < 0)
            {
              operator delete(__p);
            }

            if (!LocalEncoder)
            {
              WTF::CompletionHandler<void ()(BOOL)>::operator()(a9, 0);
LABEL_69:
              _Block_release(v29);
              _Block_release(v25);
              _Block_release(v18);
              goto LABEL_7;
            }

            webrtc::setLocalEncoderLowLatency(LocalEncoder, a6);
            __p = LocalEncoder;
            v33 = a1[4];
            v34 = (v33 + 8);
            while (1)
            {
              v35 = *v34;
              if ((*v34 & 1) == 0)
              {
                break;
              }

              v36 = *v34;
              atomic_compare_exchange_strong_explicit(v34, &v36, v35 + 2, memory_order_relaxed, memory_order_relaxed);
              if (v36 == v35)
              {
                goto LABEL_45;
              }
            }

            WTF::ThreadSafeWeakPtrControlBlock::strongRef(*v34);
LABEL_45:
            v37 = WebKit::SharedVideoFrameReader::operator new(0x50, v32);
            *v37 = v33;
            v38 = a1;
            WTF::MachSendRight::MachSendRight((v37 + 8), (a1 + 5));
            *(v37 + 12) = 1;
            *(v37 + 16) = 0;
            *(v37 + 24) = 0;
            *(v37 + 72) = 0;
            *(v37 + 32) = 0u;
            *(v37 + 48) = 0u;
            *(v37 + 64) = 0;
            v72 = v37;
            v73 = 0u;
            v74 = 0u;
            LOBYTE(v75) = a3;
            HIBYTE(v75) = a6;
            v76 = 0;
            if (a2 == -1 || !a2)
            {
              __break(0xC471u);
              JUMPOUT(0x19D8ADAA8);
            }

            v40 = a1[10];
            if (!v40)
            {
              WTF::HashTable<WTF::ObjectIdentifierGeneric<WebKit::VideoEncoderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::VideoEncoderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WebKit::LibWebRTCCodecsProxy::Encoder>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::VideoEncoderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WebKit::LibWebRTCCodecsProxy::Encoder>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::VideoEncoderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::VideoEncoderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WebKit::LibWebRTCCodecsProxy::Encoder,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::VideoEncoderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::VideoEncoderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WebKit::LibWebRTCCodecsProxy::Encoder>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::VideoEncoderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::expand(a1 + 10);
              v40 = a1[10];
            }

            v41 = *(v40 - 8);
            v42 = (~(a2 << 32) + a2) ^ ((~(a2 << 32) + a2) >> 22);
            v43 = 9 * ((v42 + ~(v42 << 13)) ^ ((v42 + ~(v42 << 13)) >> 8));
            v44 = (v43 ^ (v43 >> 15)) + ~((v43 ^ (v43 >> 15)) << 27);
            v45 = v41 & ((v44 >> 31) ^ v44);
            v46 = (v40 + (v45 << 6));
            v47 = *v46;
            if (*v46)
            {
              v48 = 0;
              v49 = 1;
              while (v47 != a2)
              {
                if (v47 == -1)
                {
                  v48 = v46;
                }

                v45 = (v45 + v49) & v41;
                v46 = (v40 + (v45 << 6));
                v47 = *v46;
                ++v49;
                if (!*v46)
                {
                  if (v48)
                  {
                    v48[2] = 0u;
                    v48[3] = 0u;
                    *v48 = 0u;
                    v48[1] = 0u;
                    --*(a1[10] - 16);
                    v46 = v48;
                  }

                  goto LABEL_57;
                }
              }

              goto LABEL_66;
            }

LABEL_57:
            *v46 = a2;
            v51 = __p;
            v50 = v72;
            v83 = 0;
            v69 = v73;
            v72 = 0;
            v73 = 0uLL;
            v52 = v74;
            *&v74 = 0;
            v53 = DWORD2(v74);
            DWORD2(v74) = 0;
            v84 = v75;
            v85 = v76;
            *(v46 + 1) = __p;
            v79 = v51;
            v80 = 0;
            std::unique_ptr<WebKit::SharedVideoFrameReader>::reset[abi:sn200100](v46 + 2, v50);
            v54 = *(v46 + 24);
            *(v46 + 24) = v69;
            *v81 = v54;
            v55 = *(v46 + 5);
            *(v46 + 5) = v52;
            v82 = v55;
            LODWORD(v55) = *(v46 + 12);
            *(v46 + 12) = v53;
            LODWORD(v83) = v55;
            *(v46 + 28) = v84;
            *(v46 + 58) = v85;
            WTF::Deque<WTF::CompletionHandler<void ()(BOOL)>,0ul>::~Deque(v81, v56);
            v57 = v80;
            v80 = 0;
            if (v57)
            {
              WebKit::SharedVideoFrameReader::~SharedVideoFrameReader(v57);
              bmalloc::api::tzoneFree(v65, v66);
            }

            v38 = a1;
            v58 = a1[10];
            if (v58)
            {
              v59 = *(v58 - 12) + 1;
            }

            else
            {
              v59 = 1;
            }

            *(v58 - 12) = v59;
            v60 = (*(v58 - 16) + v59);
            v61 = *(v58 - 4);
            if (v61 > 0x400)
            {
              if (v61 > 2 * v60)
              {
                goto LABEL_66;
              }
            }

            else if (3 * v61 > 4 * v60)
            {
LABEL_66:
              WTF::Deque<WTF::CompletionHandler<void ()(BOOL)>,0ul>::~Deque(&v73, v39);
              v62 = v72;
              v72 = 0;
              if (v62)
              {
                WebKit::SharedVideoFrameReader::~SharedVideoFrameReader(v62);
                bmalloc::api::tzoneFree(v63, v64);
              }

              atomic_store(1u, v38 + 88);
              WTF::CompletionHandler<void ()(BOOL)>::operator()(a9, 1);
              goto LABEL_69;
            }

            WTF::HashTable<WTF::ObjectIdentifierGeneric<WebKit::VideoEncoderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::VideoEncoderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WebKit::LibWebRTCCodecsProxy::Encoder>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::VideoEncoderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WebKit::LibWebRTCCodecsProxy::Encoder>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::VideoEncoderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::VideoEncoderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WebKit::LibWebRTCCodecsProxy::Encoder,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::VideoEncoderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::VideoEncoderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WebKit::LibWebRTCCodecsProxy::Encoder>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::VideoEncoderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::expand(a1 + 10);
            goto LABEL_66;
          }
        }
      }
    }

    else
    {
      v10 = a6;
      if (a8 != 1)
      {
        v10 = 1;
      }

      if (a8 <= 1)
      {
        if (v10)
        {
          if (!*a4)
          {
            goto LABEL_24;
          }

          v11 = WebCore::parseAVCCodecParameters();
          if ((v11 & 0x1000000) != 0 && v11 <= 0x64u && BYTE2(v11) < 0x35u)
          {
            goto LABEL_24;
          }
        }
      }
    }
  }

  WTF::CompletionHandler<void ()(BOOL)>::operator()(a9, 0);
LABEL_7:
  std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(&v77, v78[0]);
}

void sub_19D8ADACC(_Unwind_Exception *a1, void *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, WebKit::SharedVideoFrameReader *a16, int a17, __int16 a18, char a19, char a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, char a25, void *a26, uint64_t a27, uint64_t a28, uint64_t a29, WTF *a30, int a31, uint64_t a32, uint64_t a33, char a34)
{
  if (a34 == 1)
  {
    v35 = a30;
    if (&a32 != a30)
    {
      if (a30)
      {
        a30 = 0;
        a31 = 0;
        WTF::fastFree(v35, a2);
      }
    }
  }

  std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(&a25, a26);
  _Unwind_Resume(a1);
}

WebKit::SharedVideoFrameReader *WebKit::LibWebRTCCodecsProxy::releaseEncoder(uint64_t a1, uint64_t a2)
{
  v3 = (a1 + 80);
  v4 = WTF::HashTable<WTF::ObjectIdentifierGeneric<WebKit::VideoEncoderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::VideoEncoderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WebKit::LibWebRTCCodecsProxy::Encoder>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::VideoEncoderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WebKit::LibWebRTCCodecsProxy::Encoder>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::VideoEncoderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::VideoEncoderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WebKit::LibWebRTCCodecsProxy::Encoder,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::VideoEncoderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::VideoEncoderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WebKit::LibWebRTCCodecsProxy::Encoder>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::VideoEncoderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::find<WTF::IdentityHashTranslator<WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::VideoEncoderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WebKit::LibWebRTCCodecsProxy::Encoder,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::VideoEncoderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::VideoEncoderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WebKit::LibWebRTCCodecsProxy::Encoder>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::VideoEncoderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,(WTF::ShouldValidateKey)1,WTF::ObjectIdentifierGeneric<WebKit::VideoEncoderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>(*(a1 + 80), a2);
  v6 = *v3;
  if (*v3)
  {
    v6 += *(v6 - 4) << 6;
  }

  if (v6 == v4)
  {
    v33 = 0;
    memset(v32, 0, sizeof(v32));
    v31[0] = 0;
    *v26 = 0u;
    v27 = 0u;
    v28 = 0u;
    v29 = 0;
    v30 = 0;
    WTF::Deque<WTF::CompletionHandler<void ()(BOOL)>,0ul>::~Deque(v32, v5);
    v31[1] = 0;
    goto LABEL_17;
  }

  v7 = *(v4 + 8);
  *(v4 + 16) = 0;
  v8 = (v4 + 16);
  v9 = *(v4 + 24);
  *(&v28 + 1) = 0;
  *v26 = v7;
  v27 = v9;
  *(v4 + 24) = 0;
  v10 = *(v4 + 40);
  *(v4 + 32) = 0;
  *(v4 + 40) = 0;
  *&v28 = v10;
  DWORD2(v28) = *(v4 + 48);
  *(v4 + 48) = 0;
  v30 = *(v4 + 58);
  v29 = *(v4 + 56);
  if (*v3)
  {
    v11 = *v3 + (*(*v3 - 4) << 6);
    if (v11 == v4)
    {
      goto LABEL_17;
    }
  }

  else
  {
    if (!v4)
    {
      goto LABEL_17;
    }

    v11 = 0;
  }

  if (v11 != v4)
  {
    *v4 = -1;
    WTF::Deque<WTF::CompletionHandler<void ()(BOOL)>,0ul>::~Deque(v4 + 24, v5);
    std::unique_ptr<WebKit::SharedVideoFrameReader>::reset[abi:sn200100](v8, 0);
    v12 = *v3;
    v13 = vadd_s32(*(*v3 - 16), 0xFFFFFFFF00000001);
    *(v12 - 16) = v13;
    v14 = *(v12 - 4);
    if (6 * v13.i32[1] < v14 && v14 >= 9)
    {
      WTF::HashTable<WTF::ObjectIdentifierGeneric<WebKit::VideoEncoderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::VideoEncoderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WebKit::LibWebRTCCodecsProxy::Encoder>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::VideoEncoderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WebKit::LibWebRTCCodecsProxy::Encoder>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::VideoEncoderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::VideoEncoderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WebKit::LibWebRTCCodecsProxy::Encoder,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::VideoEncoderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::VideoEncoderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WebKit::LibWebRTCCodecsProxy::Encoder>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::VideoEncoderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::rehash(v3, v14 >> 1);
    }
  }

LABEL_17:
  if (v26[0])
  {
    webrtc::releaseLocalEncoder(v26[0], v5);
    v16 = *(a1 + 24);
    v31[1] = *(&v27 + 1);
    v24 = v27;
    v27 = 0uLL;
    *&v32[0] = v28;
    *&v28 = 0;
    *(&v32[0] + 1) = DWORD2(v28);
    DWORD2(v28) = 0;
    v17 = WTF::fastMalloc(0x28);
    *v17 = &unk_1F10EA2F8;
    *(v17 + 8) = v24;
    *(v17 + 16) = v31[1];
    *(v17 + 24) = 0;
    v31[0] = 0;
    v31[1] = 0;
    *(v17 + 24) = *&v32[0];
    *(v17 + 32) = 0;
    *&v32[0] = 0;
    *(v17 + 32) = DWORD2(v32[0]);
    DWORD2(v32[0]) = 0;
    v25 = v17;
    (*(*v16 + 48))(v16, &v25);
    v19 = v25;
    v25 = 0;
    if (v19)
    {
      (*(*v19 + 8))(v19);
    }

    WTF::Deque<WTF::CompletionHandler<void ()(BOOL)>,0ul>::~Deque(v31, v18);
    if (*v3 && *(*v3 - 12))
    {
      LOBYTE(v20) = 1;
    }

    else
    {
      v20 = *(a1 + 72);
      if (v20)
      {
        LOBYTE(v20) = *(v20 - 12) != 0;
      }
    }

    atomic_store(v20, (a1 + 88));
  }

  WTF::Deque<WTF::CompletionHandler<void ()(BOOL)>,0ul>::~Deque(&v27, v5);
  result = v26[1];
  v26[1] = 0;
  if (result)
  {
    WebKit::SharedVideoFrameReader::~SharedVideoFrameReader(result);
    return bmalloc::api::tzoneFree(v22, v23);
  }

  return result;
}

void sub_19D8ADFA8(_Unwind_Exception *a1, void *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13, WebKit::SharedVideoFrameReader *a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21)
{
  WTF::Deque<WTF::CompletionHandler<void ()(BOOL)>,0ul>::~Deque(v21 + 16, a2);
  if (a14)
  {
    WebKit::SharedVideoFrameReader::~SharedVideoFrameReader(a14);
    bmalloc::api::tzoneFree(v23, v24);
  }

  _Unwind_Resume(a1);
}

uint64_t WebKit::LibWebRTCCodecsProxy::initializeEncoder(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  result = WTF::HashTable<WTF::ObjectIdentifierGeneric<WebKit::VideoEncoderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::VideoEncoderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WebKit::LibWebRTCCodecsProxy::Encoder>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::VideoEncoderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WebKit::LibWebRTCCodecsProxy::Encoder>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::VideoEncoderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::VideoEncoderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WebKit::LibWebRTCCodecsProxy::Encoder,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::VideoEncoderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::VideoEncoderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WebKit::LibWebRTCCodecsProxy::Encoder>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::VideoEncoderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::find<WTF::IdentityHashTranslator<WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::VideoEncoderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WebKit::LibWebRTCCodecsProxy::Encoder,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::VideoEncoderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::VideoEncoderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WebKit::LibWebRTCCodecsProxy::Encoder>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::VideoEncoderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,(WTF::ShouldValidateKey)1,WTF::ObjectIdentifierGeneric<WebKit::VideoEncoderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>(*(a1 + 80), a2);
  v16 = *(a1 + 80);
  if (v16)
  {
    v16 += *(v16 - 4) << 6;
  }

  if (v16 != result)
  {
    if (!*(result + 56) && (*(result + 57) & 1) != 0 && (a3 > 0x1E00 || a4 >= 0x10E1))
    {
      *(result + 58) = 1;
    }

    else
    {
      v17 = *(result + 8);

      return MEMORY[0x1EEE533D0](v17, a3, a4, a5, a6, a7, a8);
    }
  }

  return result;
}

void WebKit::LibWebRTCCodecsProxy::encodeFrame(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, WTF::RefCountedBase *a8)
{
  v36[1] = *MEMORY[0x1E69E9840];
  v11 = WTF::HashTable<WTF::ObjectIdentifierGeneric<WebKit::VideoEncoderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::VideoEncoderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WebKit::LibWebRTCCodecsProxy::Encoder>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::VideoEncoderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WebKit::LibWebRTCCodecsProxy::Encoder>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::VideoEncoderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::VideoEncoderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WebKit::LibWebRTCCodecsProxy::Encoder,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::VideoEncoderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::VideoEncoderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WebKit::LibWebRTCCodecsProxy::Encoder>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::VideoEncoderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::find<WTF::IdentityHashTranslator<WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::VideoEncoderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WebKit::LibWebRTCCodecsProxy::Encoder,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::VideoEncoderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::VideoEncoderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WebKit::LibWebRTCCodecsProxy::Encoder>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::VideoEncoderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,(WTF::ShouldValidateKey)1,WTF::ObjectIdentifierGeneric<WebKit::VideoEncoderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>(a1[10], a2);
  v12 = v11;
  v13 = a1[10];
  if (v13)
  {
    v13 += *(v13 - 4) << 6;
  }

  if (v13 == v11 || *(v11 + 58) == 1)
  {
    if (*(a3 + 40) == 1)
    {
      v14 = a1[4];
      v15 = (v14 + 8);
      while (1)
      {
        v16 = *v15;
        if ((*v15 & 1) == 0)
        {
          break;
        }

        v17 = *v15;
        atomic_compare_exchange_strong_explicit(v15, &v17, v16 + 2, memory_order_relaxed, memory_order_relaxed);
        if (v17 == v16)
        {
          goto LABEL_11;
        }
      }

      v11 = WTF::ThreadSafeWeakPtrControlBlock::strongRef(*v15);
LABEL_11:
      if (*(a3 + 40) != 1)
      {
        mpark::throw_bad_variant_access(v11);
      }

      WTF::ApproximateTime::now(v11);
      IPC::ThreadSafeObjectHeap<WTF::ObjectIdentifierGeneric<WebKit::RemoteVideoFrameIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::RefPtr<WebCore::VideoFrame,WTF::RawPtrTraits<WebCore::VideoFrame>,WTF::DefaultRefDerefTraits<WebCore::VideoFrame>>>::read(v14 + 24, (a3 + 24), &v34, v18 + 0.0);
      v20 = v34;
      v34 = 0;
      if (v20)
      {
        if (atomic_fetch_add(v20 + 2, 0xFFFFFFFF) == 1)
        {
          atomic_store(1u, v20 + 2);
          (*(*v20 + 8))(v20);
        }
      }

      WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::WorkQueueMessageReceiver<(WTF::DestructionThread)0>,(WTF::DestructionThread)0>::deref((v14 + 8), v19);
    }

    WTF::CompletionHandler<void ()(BOOL)>::operator()(a8, 0);
  }

  else
  {
    WebKit::SharedVideoFrameReader::readBuffer(*(v11 + 16), a3 + 24, &v33);
    if (!v33)
    {
      goto LABEL_28;
    }

    v21 = (*MEMORY[0x1E69E2750])();
    if (v21 != 1111970369)
    {
      goto LABEL_27;
    }

    v24 = a1[12];
    v22 = (a1 + 12);
    v23 = v24;
    if (!v24)
    {
      CoreVideo_kCVPixelBufferPixelFormatTypeKey = WebCore::get_CoreVideo_kCVPixelBufferPixelFormatTypeKey(v21);
      v36[0] = &unk_1F1184860;
      v25 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v36 forKeys:&CoreVideo_kCVPixelBufferPixelFormatTypeKey count:1];
      v23 = WebCore::PixelBufferConformerCV::operator new(8, v26);
      WebCore::PixelBufferConformerCV::PixelBufferConformerCV(v23, v25);
      v27 = *v22;
      *v22 = v23;
      if (v27)
      {
        std::default_delete<WebCore::PixelBufferConformerCV>::operator()[abi:sn200100](v22, v27);
        v23 = *v22;
      }
    }

    WebCore::PixelBufferConformerCV::convert(&cf, v23, v33);
    v29 = cf;
    v28 = v33;
    cf = 0;
    v33 = v29;
    if (v28)
    {
      CFRelease(v28);
      v30 = cf;
      cf = 0;
      if (v30)
      {
        CFRelease(v30);
      }

      v29 = v33;
    }

    if (v29)
    {
LABEL_27:
      WTF::Deque<WTF::CompletionHandler<void ()(BOOL)>,0ul>::append(v12 + 24, a8);
      WTF::MediaTime::toDouble(a3);
      webrtc::encodeLocalEncoderFrame();
    }

    else
    {
LABEL_28:
      WTF::CompletionHandler<void ()(BOOL)>::operator()(a8, 0);
    }

    v31 = v33;
    v33 = 0;
    if (v31)
    {
      CFRelease(v31);
    }
  }
}

void sub_19D8AE410(_Unwind_Exception *a1, void *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, CFTypeRef cf)
{
  bmalloc::api::tzoneFree(v10, a2);
  if (cf)
  {
    CFRelease(cf);
  }

  _Unwind_Resume(a1);
}

uint64_t WTF::Deque<WTF::CompletionHandler<void ()(BOOL)>,0ul>::append(uint64_t result, uint64_t *a2)
{
  v3 = result;
  v4 = *(result + 8);
  if (*result)
  {
    if (v4 + 1 != *result)
    {
      goto LABEL_28;
    }

    LODWORD(v5) = *(result + 24);
    goto LABEL_9;
  }

  v5 = *(result + 24);
  if (!v4)
  {
    if (v5)
    {
      v4 = 0;
      goto LABEL_28;
    }

LABEL_9:
    v6 = v5;
    v7 = (v5 >> 2) + v5;
    if (v7 >= 0x1FFFFFFF)
    {
LABEL_34:
      __break(0xC471u);
      return result;
    }

    v8 = *(result + 16);
    if (v7 <= 0xF)
    {
      v7 = 15;
    }

    v9 = v7 + 1;
    result = WTF::fastMalloc((8 * (v7 + 1)));
    *(v3 + 24) = v9;
    *(v3 + 16) = result;
    v10 = *v3;
    v11 = *(v3 + 8);
    v12 = v11 - *v3;
    if (v11 >= *v3)
    {
      if (v6 < v10)
      {
LABEL_33:
        __break(1u);
        goto LABEL_34;
      }

      if (v12 == -1)
      {
        v12 = v6 - v10;
      }

      else if (v6 - v10 < v12)
      {
        goto LABEL_33;
      }

      result = WTF::VectorMover<false,WTF::CompletionHandler<void ()(BOOL)>>::move(v8 + 8 * v10, v8 + v10 + v12, (result + 8 * v10));
      if (!v8)
      {
        goto LABEL_27;
      }
    }

    else
    {
      if (v11 > v6)
      {
        goto LABEL_33;
      }

      result = WTF::VectorMover<false,WTF::CompletionHandler<void ()(BOOL)>>::move(v8, v8 + v11, result);
      if (v6 < *v3)
      {
        goto LABEL_33;
      }

      v13 = *(v3 + 24);
      if (v13 < v6 - *v3)
      {
        goto LABEL_33;
      }

      v14 = v13 - (v6 - *v3);
      result = WTF::VectorMover<false,WTF::CompletionHandler<void ()(BOOL)>>::move(v8 + 8 * *v3, v8 + v6, (*(v3 + 16) + 8 * v14));
      *v3 = v14;
      if (!v8)
      {
        goto LABEL_27;
      }
    }

    if (*(v3 + 16) == v8)
    {
      *(v3 + 16) = 0;
      *(v3 + 24) = 0;
    }

    result = WTF::fastFree(v8, v15);
LABEL_27:
    v4 = *(v3 + 8);
    goto LABEL_28;
  }

  if (v4 == v5 - 1)
  {
    goto LABEL_9;
  }

LABEL_28:
  v16 = *(v3 + 24);
  if (v4 >= v16)
  {
    goto LABEL_33;
  }

  v17 = *(v3 + 16);
  v18 = *a2;
  *a2 = 0;
  *(v17 + 8 * v4) = v18;
  if (v4 == v16 - 1)
  {
    v19 = 0;
  }

  else
  {
    v19 = v4 + 1;
  }

  *(v3 + 8) = v19;
  return result;
}

uint64_t WebKit::LibWebRTCCodecsProxy::notifyEncoderResult(uint64_t a1, uint64_t a2, char a3)
{
  v6 = *(a1 + 24);
  v7 = WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::WorkQueueMessageReceiver<(WTF::DestructionThread)0>,(WTF::DestructionThread)0>::controlBlock((a1 + 8));
  v8 = WTF::ThreadSafeWeakPtrControlBlock::weakRef(v7);
  v9 = WTF::fastMalloc(0x28);
  *v9 = &unk_1F10EA320;
  *(v9 + 8) = a1;
  *(v9 + 16) = v8;
  *(v9 + 24) = a2;
  *(v9 + 32) = a3;
  v11 = v9;
  (*(*v6 + 48))(v6, &v11);
  result = v11;
  v11 = 0;
  if (result)
  {
    return (*(*result + 8))(result);
  }

  return result;
}

void sub_19D8AE6D4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (a10)
  {
    (*(*a10 + 8))(a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t WebKit::LibWebRTCCodecsProxy::flushEncoder(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = WTF::HashTable<WTF::ObjectIdentifierGeneric<WebKit::VideoEncoderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::VideoEncoderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WebKit::LibWebRTCCodecsProxy::Encoder>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::VideoEncoderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WebKit::LibWebRTCCodecsProxy::Encoder>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::VideoEncoderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::VideoEncoderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WebKit::LibWebRTCCodecsProxy::Encoder,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::VideoEncoderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::VideoEncoderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WebKit::LibWebRTCCodecsProxy::Encoder>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::VideoEncoderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::find<WTF::IdentityHashTranslator<WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::VideoEncoderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WebKit::LibWebRTCCodecsProxy::Encoder,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::VideoEncoderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::VideoEncoderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WebKit::LibWebRTCCodecsProxy::Encoder>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::VideoEncoderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,(WTF::ShouldValidateKey)1,WTF::ObjectIdentifierGeneric<WebKit::VideoEncoderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>(*(a1 + 80), a2);
  v6 = *(a1 + 80);
  if (v6)
  {
    v6 += *(v6 - 4) << 6;
  }

  if (v6 != v5)
  {
    MEMORY[0x19EB02900](*(v5 + 8));
  }

  v7 = *(a1 + 24);
  std::make_unique[abi:sn200100]<WTF::Detail::CallableWrapper<WTF::CompletionHandler<void ()(void)>,void>,WTF::CompletionHandler<void ()(void)>,0>(a3, &v9);
  (*(*v7 + 48))(v7, &v9);
  result = v9;
  v9 = 0;
  if (result)
  {
    return (*(*result + 8))(result);
  }

  return result;
}

void sub_19D8AE7E8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (a10)
  {
    (*(*a10 + 8))(a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t WebKit::LibWebRTCCodecsProxy::setEncodeRates(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t *a5)
{
  v8 = WTF::HashTable<WTF::ObjectIdentifierGeneric<WebKit::VideoEncoderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::VideoEncoderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WebKit::LibWebRTCCodecsProxy::Encoder>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::VideoEncoderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WebKit::LibWebRTCCodecsProxy::Encoder>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::VideoEncoderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::VideoEncoderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WebKit::LibWebRTCCodecsProxy::Encoder,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::VideoEncoderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::VideoEncoderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WebKit::LibWebRTCCodecsProxy::Encoder>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::VideoEncoderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::find<WTF::IdentityHashTranslator<WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::VideoEncoderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WebKit::LibWebRTCCodecsProxy::Encoder,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::VideoEncoderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::VideoEncoderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WebKit::LibWebRTCCodecsProxy::Encoder>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::VideoEncoderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,(WTF::ShouldValidateKey)1,WTF::ObjectIdentifierGeneric<WebKit::VideoEncoderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>(*(a1 + 80), a2);
  v9 = *(a1 + 80);
  if (v9)
  {
    v9 += *(v9 - 4) << 6;
  }

  if (v9 != v8)
  {
    webrtc::setLocalEncoderRates(*(v8 + 8), a3);
  }

  return WTF::CompletionHandler<void ()(void)>::operator()(a5);
}

IPC::Semaphore *WebKit::LibWebRTCCodecsProxy::setSharedVideoFrameSemaphore(uint64_t a1, uint64_t a2, IPC::Semaphore *a3)
{
  result = WTF::HashTable<WTF::ObjectIdentifierGeneric<WebKit::VideoEncoderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::VideoEncoderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WebKit::LibWebRTCCodecsProxy::Encoder>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::VideoEncoderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WebKit::LibWebRTCCodecsProxy::Encoder>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::VideoEncoderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::VideoEncoderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WebKit::LibWebRTCCodecsProxy::Encoder,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::VideoEncoderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::VideoEncoderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WebKit::LibWebRTCCodecsProxy::Encoder>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::VideoEncoderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::find<WTF::IdentityHashTranslator<WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::VideoEncoderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WebKit::LibWebRTCCodecsProxy::Encoder,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::VideoEncoderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::VideoEncoderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WebKit::LibWebRTCCodecsProxy::Encoder>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::VideoEncoderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,(WTF::ShouldValidateKey)1,WTF::ObjectIdentifierGeneric<WebKit::VideoEncoderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>(*(a1 + 80), a2);
  v6 = *(a1 + 80);
  if (v6)
  {
    v6 = (v6 + 64 * *(v6 - 1));
  }

  if (v6 != result)
  {
    v7 = (*(result + 2) + 16);

    return std::optional<IPC::Semaphore>::operator=[abi:sn200100]<IPC::Semaphore,void>(v7, a3);
  }

  return result;
}

uint64_t WebKit::LibWebRTCCodecsProxy::setSharedVideoFrameMemory(uint64_t a1, uint64_t a2)
{
  result = WTF::HashTable<WTF::ObjectIdentifierGeneric<WebKit::VideoEncoderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::VideoEncoderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WebKit::LibWebRTCCodecsProxy::Encoder>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::VideoEncoderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WebKit::LibWebRTCCodecsProxy::Encoder>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::VideoEncoderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::VideoEncoderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WebKit::LibWebRTCCodecsProxy::Encoder,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::VideoEncoderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::VideoEncoderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WebKit::LibWebRTCCodecsProxy::Encoder>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::VideoEncoderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::find<WTF::IdentityHashTranslator<WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::VideoEncoderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WebKit::LibWebRTCCodecsProxy::Encoder,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::VideoEncoderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::VideoEncoderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WebKit::LibWebRTCCodecsProxy::Encoder>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::VideoEncoderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,(WTF::ShouldValidateKey)1,WTF::ObjectIdentifierGeneric<WebKit::VideoEncoderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>(*(a1 + 80), a2);
  v4 = *(a1 + 80);
  if (v4)
  {
    v4 += *(v4 - 4) << 6;
  }

  if (v4 != result)
  {
    v5 = *(result + 16);

    return WebKit::SharedVideoFrameReader::setSharedMemory(v5);
  }

  return result;
}

uint64_t WebKit::LibWebRTCCodecsProxy::updateSharedPreferencesForWebProcess(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 24);
  v5 = (a1 + 8);
  while (1)
  {
    v6 = *v5;
    if ((*v5 & 1) == 0)
    {
      break;
    }

    v7 = *v5;
    atomic_compare_exchange_strong_explicit(v5, &v7, v6 + 2, memory_order_relaxed, memory_order_relaxed);
    if (v7 == v6)
    {
      goto LABEL_6;
    }
  }

  WTF::ThreadSafeWeakPtrControlBlock::strongRef(*v5);
LABEL_6:
  *v10 = *a2;
  *&v10[15] = *(a2 + 15);
  v8 = WTF::fastMalloc(0x30);
  *v8 = &unk_1F10EA398;
  *(v8 + 8) = a1;
  *(v8 + 16) = a1;
  *(v8 + 24) = *v10;
  *(v8 + 40) = *&v10[16];
  v11 = v8;
  (*(*v4 + 48))(v4, &v11);
  result = v11;
  v11 = 0;
  if (result)
  {
    return (*(*result + 8))(result);
  }

  return result;
}

void sub_19D8AEA98(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  if (a12)
  {
    (*(*a12 + 8))(a12);
  }

  _Unwind_Resume(exception_object);
}

void WebKit::LibWebRTCCodecsProxy::ref(WebKit::LibWebRTCCodecsProxy *this)
{
  while (1)
  {
    v1 = *(this + 1);
    if ((v1 & 1) == 0)
    {
      break;
    }

    v2 = *(this + 1);
    atomic_compare_exchange_strong_explicit(this + 1, &v2, v1 + 2, memory_order_relaxed, memory_order_relaxed);
    if (v2 == v1)
    {
      return;
    }
  }

  WTF::ThreadSafeWeakPtrControlBlock::strongRef(*(this + 1));
}

atomic_uchar **WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::WorkQueueMessageReceiver<(WTF::DestructionThread)0>,(WTF::DestructionThread)0>::deref(atomic_uchar **result, void *a2)
{
  do
  {
    v2 = *result;
    if ((*result & 1) == 0)
    {
      return WTF::ThreadSafeWeakPtrControlBlock::strongDeref<IPC::WorkQueueMessageReceiver<(WTF::DestructionThread)0>,(WTF::DestructionThread)0>(*result, a2);
    }

    v3 = *result;
    atomic_compare_exchange_strong_explicit(result, &v3, (v2 - 2), memory_order_relaxed, memory_order_relaxed);
  }

  while (v3 != v2);
  if (v2 == 3)
  {
    return (*(*(result - 1) + 3))();
  }

  return result;
}

uint64_t WTF::ThreadSafeWeakPtrControlBlock::strongDeref<IPC::WorkQueueMessageReceiver<(WTF::DestructionThread)0>,(WTF::DestructionThread)0>(atomic_uchar *this, void *a2)
{
  v3 = 0;
  atomic_compare_exchange_strong_explicit(this, &v3, 1u, memory_order_acquire, memory_order_acquire);
  if (v3)
  {
    MEMORY[0x19EB01E30](this);
  }

  v4 = *(this + 1) - 1;
  *(this + 1) = v4;
  if (v4)
  {
    result = 0;
  }

  else
  {
    result = *(this + 3);
    ++*(this + 2);
    *(this + 3) = 0;
  }

  v6 = 1;
  atomic_compare_exchange_strong_explicit(this, &v6, 0, memory_order_release, memory_order_relaxed);
  if (v6 != 1)
  {
    v10 = v4;
    v11 = result;
    WTF::Lock::unlockSlow(this);
    v4 = v10;
    result = v11;
  }

  if (!v4)
  {
    if (result)
    {
      result = (*(*result + 24))(result);
    }

    v7 = 0;
    v8 = 1;
    atomic_compare_exchange_strong_explicit(this, &v7, 1u, memory_order_acquire, memory_order_acquire);
    if (v7)
    {
      result = MEMORY[0x19EB01E30](this);
      v8 = 1;
    }

    v9 = *(this + 2) - 1;
    *(this + 2) = v9;
    atomic_compare_exchange_strong_explicit(this, &v8, 0, memory_order_release, memory_order_relaxed);
    if (v8 != 1)
    {
      v12 = v9;
      result = WTF::Lock::unlockSlow(this);
      v9 = v12;
    }

    if (!v9)
    {

      return WTF::fastFree(this, a2);
    }
  }

  return result;
}

void std::default_delete<WebCore::PixelBufferConformerCV>::operator()[abi:sn200100](int a1, bmalloc::api *this)
{
  if (this)
  {
    v3 = *this;
    *this = 0;
    if (v3)
    {
      CFRelease(v3);
    }

    bmalloc::api::tzoneFree(this, this);
  }
}

uint64_t WTF::HashTable<WTF::ObjectIdentifierGeneric<WebKit::VideoEncoderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::VideoEncoderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WebKit::LibWebRTCCodecsProxy::Encoder>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::VideoEncoderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WebKit::LibWebRTCCodecsProxy::Encoder>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::VideoEncoderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::VideoEncoderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WebKit::LibWebRTCCodecsProxy::Encoder,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::VideoEncoderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::VideoEncoderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WebKit::LibWebRTCCodecsProxy::Encoder>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::VideoEncoderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::deallocateTable(uint64_t a1, void *a2)
{
  v3 = *(a1 - 4);
  if (v3)
  {
    v4 = (a1 + 16);
    do
    {
      if (*(v4 - 2) != -1)
      {
        WTF::Deque<WTF::CompletionHandler<void ()(BOOL)>,0ul>::~Deque((v4 + 1), a2);
        std::unique_ptr<WebKit::SharedVideoFrameReader>::reset[abi:sn200100](v4, 0);
      }

      v4 += 8;
      --v3;
    }

    while (v3);
  }

  return WTF::fastFree((a1 - 16), a2);
}

uint64_t WTF::HashTable<WTF::ObjectIdentifierGeneric<WebKit::VideoDecoderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::VideoDecoderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WebKit::LibWebRTCCodecsProxy::Decoder>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::VideoDecoderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WebKit::LibWebRTCCodecsProxy::Decoder>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::VideoDecoderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::VideoDecoderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WebKit::LibWebRTCCodecsProxy::Decoder,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::VideoDecoderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::VideoDecoderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WebKit::LibWebRTCCodecsProxy::Decoder>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::VideoDecoderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::deallocateTable(uint64_t a1, void *a2)
{
  v3 = *(a1 - 4);
  if (v3)
  {
    v4 = (a1 + 16);
    do
    {
      if (*(v4 - 2) != -1)
      {
        WTF::Deque<WTF::CompletionHandler<void ()(BOOL)>,0ul>::~Deque((v4 + 1), a2);
        std::unique_ptr<WebCore::FrameRateMonitor>::reset[abi:sn200100](v4, 0);
        v5 = *(v4 - 1);
        *(v4 - 1) = 0;
        if (v5)
        {
          (*(*v5 + 8))(v5);
        }
      }

      v4 += 7;
      --v3;
    }

    while (v3);
  }

  return WTF::fastFree((a1 - 16), a2);
}

uint64_t WebCore::FrameRateMonitor::operator new(WebCore::FrameRateMonitor *this, void *a2)
{
  if (*MEMORY[0x1E69E25A8])
  {
    return bmalloc::api::tzoneAllocateNonCompact(*MEMORY[0x1E69E25A8], a2);
  }

  else
  {
    return MEMORY[0x1EEE563B8](1016);
  }
}

uint64_t WTF::Detail::CallableWrapper<WebKit::LibWebRTCCodecsProxy::createDecoderCallback(WTF::ObjectIdentifierGeneric<WebKit::VideoDecoderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,BOOL,BOOL)::$_0,void,WebCore::FrameRateMonitor::LateFrameInfo>::call(uint64_t a1, __int128 *a2)
{
  v5 = *a2;
  v6 = a2[1];
  v2 = *(a1 + 8);
  v3 = WTF::fastMalloc(0x30);
  *v3 = &unk_1F10EA0E8;
  *(v3 + 8) = v2;
  *(v3 + 16) = v5;
  *(v3 + 32) = v6;
  v7 = v3;
  WTF::callOnMainRunLoop();
  result = v7;
  if (v7)
  {
    return (*(*v7 + 8))(v7);
  }

  return result;
}

void sub_19D8AEED0(_Unwind_Exception *exception_object)
{
  v3 = *(v1 - 24);
  *(v1 - 24) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  _Unwind_Resume(exception_object);
}

double _ZN3WTF6Detail15CallableWrapperIZZN6WebKit20LibWebRTCCodecsProxy21createDecoderCallbackENS_23ObjectIdentifierGenericINS2_26VideoDecoderIdentifierTypeENS_38ObjectIdentifierThreadSafeAccessTraitsIyEEyEEbbENK3__0clIN7WebCore16FrameRateMonitor13LateFrameInfoEEEDaT_EUlvE_vJEE4callEv(uint64_t a1)
{
  v21 = *MEMORY[0x1E69E9840];
  v2 = qword_1ED641580;
  if (os_log_type_enabled(qword_1ED641580, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 16);
    v4 = *(a1 + 24);
    v6 = *(a1 + 8);
    v7 = *(a1 + 32);
    v8 = *(a1 + 40);
    v9 = 134219264;
    v10 = v6;
    v11 = 2048;
    v12 = v5;
    v13 = 2048;
    v14 = v4;
    v15 = 2048;
    v16 = v7;
    v17 = 2048;
    v18 = (v5 - v4) * 1000.0;
    v19 = 2048;
    v20 = v8;
    _os_log_impl(&dword_19D52D000, v2, OS_LOG_TYPE_DEFAULT, "LibWebRTCCodecsProxy decoder %llu generated a video frame at %f, previous frame was at %f, observed frame rate is %f, delay since last frame is %f ms, frame count is %lu", &v9, 0x3Eu);
  }

  return result;
}

uint64_t **std::unique_ptr<WebCore::FrameRateMonitor>::reset[abi:sn200100](uint64_t **result, uint64_t *a2)
{
  v2 = *result;
  *result = a2;
  if (v2)
  {
    v3 = *(v2 + 8);
    v4 = v2[1];
    v5 = v2[2];
    v6 = v5 - v4;
    if (v5 >= v4)
    {
      v8 = v3 >= v4;
      v7 = v3 - v4;
      if (!v8)
      {
        goto LABEL_24;
      }

      v8 = v6 == -1 || v7 >= v6;
      if (!v8)
      {
        goto LABEL_24;
      }
    }

    else if (v5 > v3 || v3 < v4)
    {
LABEL_24:
      __break(1u);
      return result;
    }

    v9 = v2[3];
    if (v2 + 5 != v9 && v9 != 0)
    {
      v2[3] = 0;
      *(v2 + 8) = 0;
      WTF::fastFree(v9, a2);
    }

    v11 = *v2;
    *v2 = 0;
    if (v11)
    {
      (*(*v11 + 8))(v11);
    }

    return bmalloc::api::tzoneFree(v2, a2);
  }

  return result;
}

atomic_uchar *WTF::BlockPtr<void ()(__CVBuffer *,long long,long long,BOOL)>::fromCallable<WebKit::LibWebRTCCodecsProxy::createDecoderCallback(WTF::ObjectIdentifierGeneric<WebKit::VideoDecoderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,BOOL,BOOL)::$_1>(WebKit::LibWebRTCCodecsProxy::createDecoderCallback(WTF::ObjectIdentifierGeneric<WebKit::VideoDecoderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,BOOL,BOOL)::$_1)::{lambda(void const*)#1}::__invoke(uint64_t a1)
{
  std::unique_ptr<WebCore::FrameRateMonitor>::reset[abi:sn200100]((a1 + 80), 0);
  v3 = *(a1 + 72);
  *(a1 + 72) = 0;
  if (v3)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::WorkQueueMessageReceiver<(WTF::DestructionThread)0>,(WTF::DestructionThread)0>::deref((v3 + 8), v2);
  }

  WTF::MachSendRight::~MachSendRight((a1 + 64));
  v5 = *(a1 + 56);
  *(a1 + 56) = 0;
  if (v5)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v5);
  }

  result = *(a1 + 40);
  *(a1 + 40) = 0;
  if (result)
  {

    return WTF::ThreadSafeWeakPtrControlBlock::weakDeref(result, v4);
  }

  return result;
}

atomic_uchar **WTF::BlockPtr<void ()(__CVBuffer *,long long,long long,BOOL)>::fromCallable<WebKit::LibWebRTCCodecsProxy::createDecoderCallback(WTF::ObjectIdentifierGeneric<WebKit::VideoDecoderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,BOOL,BOOL)::$_1>(WebKit::LibWebRTCCodecsProxy::createDecoderCallback(WTF::ObjectIdentifierGeneric<WebKit::VideoDecoderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,BOOL,BOOL)::$_1)::{lambda(void *,__CVBuffer *,long long,long long,BOOL)#1}::__invoke(uint64_t *a1, IPC::Encoder *a2, uint64_t a3, uint64_t a4, char a5)
{
  v44 = a5;
  v9 = a1[5];
  if (v9)
  {
    WTF::ThreadSafeWeakPtrControlBlock::makeStrongReferenceIfPossible<WebKit::LibWebRTCCodecsProxy>(&v43, v9, a1[4]);
    if (a2)
    {
LABEL_3:
      CFRetain(a2);
      v10 = a1 + 6;
      v38 = a2;
      v39 = &v43;
      v40 = &v44;
      v41 = a1 + 6;
      v42 = 1;
      v11 = a1[10];
      if (v11)
      {
        WebCore::FrameRateMonitor::update(v11);
      }

      v45 = a2;
      CFRetain(a2);
      LOBYTE(v35) = 0;
      v36 = 0;
      WebCore::VideoFrameCV::create();
      v12 = v45;
      v45 = 0;
      if (v12)
      {
        CFRelease(v12);
      }

      if (WebCore::ProcessIdentity::operator BOOL())
      {
        WebCore::VideoFrameCV::setOwnershipIdentity();
      }

      v13 = a1[9];
      if (v13)
      {
        v14 = v37;
        v37 = 0;
        v45 = v14;
        WebKit::RemoteVideoFrameObjectHeap::add(v13, &v45, &v35);
        v16 = v45;
        v45 = 0;
        if (v16 && atomic_fetch_add(v16 + 2, 0xFFFFFFFF) == 1)
        {
          atomic_store(1u, v16 + 2);
          (*(*v16 + 8))(v16);
        }

        v17 = a1[7];
        v18 = IPC::Encoder::operator new(0x238, v15);
        *v18 = 138;
        *(v18 + 68) = 0;
        *(v18 + 70) = 0;
        *(v18 + 69) = 0;
        *(v18 + 2) = 0;
        *(v18 + 3) = 0;
        *(v18 + 1) = 0;
        IPC::Encoder::encodeHeader(v18);
        v45 = v18;
        IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(v18, *v10);
        IPC::ArgumentCoder<API::Int64,void>::encode(v18, a3);
        IPC::ArgumentCoder<API::Int64,void>::encode(v18, a4);
        IPC::ArgumentCoder<WebKit::RemoteVideoFrameProxyProperties,void>::encode(v18, &v35);
        IPC::Connection::sendMessageImpl(v17, &v45, 0, 0);
        v20 = v45;
        v45 = 0;
        if (v20)
        {
          IPC::Encoder::~Encoder(v20, v19);
          bmalloc::api::tzoneFree(v21, v22);
        }
      }

      else
      {
        v24 = a1[7];
        CFRetain(a2);
        v26 = IPC::Encoder::operator new(0x238, v25);
        *v26 = 139;
        *(v26 + 68) = 0;
        *(v26 + 70) = 0;
        *(v26 + 69) = 0;
        *(v26 + 2) = 0;
        *(v26 + 3) = 0;
        *(v26 + 1) = 0;
        IPC::Encoder::encodeHeader(v26);
        v35 = v26;
        IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(v26, *v10);
        IPC::ArgumentCoder<API::Int64,void>::encode(v26, a3);
        IPC::ArgumentCoder<API::Int64,void>::encode(v26, a4);
        IPC::ArgumentCoder<__CVBuffer *,void>::encode(v26, a2);
        IPC::Connection::sendMessageImpl(v24, &v35, 0, 0);
        v28 = v35;
        v35 = 0;
        if (v28)
        {
          IPC::Encoder::~Encoder(v28, v27);
          bmalloc::api::tzoneFree(v33, v34);
        }

        CFRelease(a2);
      }

      v29 = v37;
      v37 = 0;
      if (v29 && atomic_fetch_add(v29 + 2, 0xFFFFFFFF) == 1)
      {
        atomic_store(1u, v29 + 2);
        (*(*v29 + 8))(v29);
      }

      goto LABEL_24;
    }
  }

  else
  {
    v43 = 0;
    if (a2)
    {
      goto LABEL_3;
    }
  }

  v38 = 0;
  v39 = &v43;
  v40 = &v44;
  v41 = a1 + 6;
  v42 = 1;
  if ((v44 & 1) == 0)
  {
    v23 = a1[7];
    v35 = (a1 + 6);
    IPC::Connection::send<Messages::LibWebRTCCodecs::FailedDecoding>(v23, &v35);
  }

LABEL_24:
  result = WTF::ScopeExit<WebKit::LibWebRTCCodecsProxy::createDecoderCallback(WTF::ObjectIdentifierGeneric<WebKit::VideoDecoderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,BOOL,BOOL)::$_1::operator()(__CVBuffer *,long long,long long,BOOL)::{lambda(void)#1}>::~ScopeExit(&v38);
  v32 = v43;
  v43 = 0;
  if (v32)
  {
    return WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::WorkQueueMessageReceiver<(WTF::DestructionThread)0>,(WTF::DestructionThread)0>::deref((v32 + 8), v31);
  }

  return result;
}

void sub_19D8AF484(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  WTF::ScopeExit<WebKit::LibWebRTCCodecsProxy::createDecoderCallback(WTF::ObjectIdentifierGeneric<WebKit::VideoDecoderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,BOOL,BOOL)::$_1::operator()(__CVBuffer *,long long,long long,BOOL)::{lambda(void)#1}>::~ScopeExit(va);
  v12 = *(v9 - 72);
  *(v9 - 72) = 0;
  if (v12)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::WorkQueueMessageReceiver<(WTF::DestructionThread)0>,(WTF::DestructionThread)0>::deref((v12 + 8), v11);
  }

  _Unwind_Resume(a1);
}

IPC::Encoder *IPC::Connection::send<Messages::LibWebRTCCodecs::FailedDecoding>(uint64_t *a1, void **a2)
{
  v4 = IPC::Encoder::operator new(0x238, a2);
  *v4 = 141;
  *(v4 + 68) = 0;
  *(v4 + 70) = 0;
  *(v4 + 69) = 0;
  *(v4 + 2) = 0;
  *(v4 + 3) = 0;
  *(v4 + 1) = 0;
  IPC::Encoder::encodeHeader(v4);
  v9 = v4;
  IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(v4, **a2);
  IPC::Connection::sendMessageImpl(a1, &v9, 0, 0);
  result = v9;
  v9 = 0;
  if (result)
  {
    IPC::Encoder::~Encoder(result, v5);
    return bmalloc::api::tzoneFree(v7, v8);
  }

  return result;
}

void sub_19D8AF608(_Unwind_Exception *a1, void *a2)
{
  IPC::Encoder::~Encoder(v2, a2);
  bmalloc::api::tzoneFree(v4, v5);
  _Unwind_Resume(a1);
}

uint64_t WTF::ScopeExit<WebKit::LibWebRTCCodecsProxy::createDecoderCallback(WTF::ObjectIdentifierGeneric<WebKit::VideoDecoderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,BOOL,BOOL)::$_1::operator()(__CVBuffer *,long long,long long,BOOL)::{lambda(void)#1}>::~ScopeExit(uint64_t a1)
{
  if (*(a1 + 32) == 1)
  {
    v2 = **(a1 + 8);
    if (v2)
    {
      v3 = **(a1 + 16);
      if (!*a1 || (**(a1 + 16) & 1) == 0)
      {
        v4 = *a1 != 0;
        v5 = **(a1 + 24);
        v6 = *(v2 + 24);
        v7 = WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::WorkQueueMessageReceiver<(WTF::DestructionThread)0>,(WTF::DestructionThread)0>::controlBlock((v2 + 8));
        v8 = WTF::ThreadSafeWeakPtrControlBlock::weakRef(v7);
        v9 = WTF::fastMalloc(0x28);
        *v9 = &unk_1F10EA348;
        *(v9 + 8) = v2;
        *(v9 + 16) = v8;
        *(v9 + 24) = v5;
        *(v9 + 32) = (v4 | v3) & 1;
        v13 = v9;
        (*(*v6 + 48))(v6, &v13);
        v10 = v13;
        v13 = 0;
        if (v10)
        {
          (*(*v10 + 8))(v10);
        }
      }
    }
  }

  v11 = *a1;
  *a1 = 0;
  if (v11)
  {
    CFRelease(v11);
  }

  return a1;
}

void sub_19D8AF75C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (a10)
  {
    (*(*a10 + 8))(a10);
  }

  v12 = *v10;
  *v10 = 0;
  if (v12)
  {
    CFRelease(v12);
  }

  _Unwind_Resume(exception_object);
}

uint64_t WTF::Detail::CallableWrapper<WebKit::LibWebRTCCodecsProxy::createDecoder(WTF::ObjectIdentifierGeneric<WebKit::VideoDecoderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WebCore::VideoCodecType,WTF::String const&,BOOL,BOOL,WTF::CompletionHandler<void ()(BOOL)> &&)::$_0,void,WebCore::FrameRateMonitor::LateFrameInfo>::call(uint64_t a1, __int128 *a2)
{
  v5 = *a2;
  v6 = a2[1];
  v2 = *(a1 + 8);
  v3 = WTF::fastMalloc(0x30);
  *v3 = &unk_1F10EA158;
  *(v3 + 8) = v2;
  *(v3 + 16) = v5;
  *(v3 + 32) = v6;
  v7 = v3;
  WTF::callOnMainRunLoop();
  result = v7;
  if (v7)
  {
    return (*(*v7 + 8))(v7);
  }

  return result;
}

void sub_19D8AF868(_Unwind_Exception *exception_object)
{
  v3 = *(v1 - 24);
  *(v1 - 24) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  _Unwind_Resume(exception_object);
}

double _ZN3WTF6Detail15CallableWrapperIZZN6WebKit20LibWebRTCCodecsProxy13createDecoderENS_23ObjectIdentifierGenericINS2_26VideoDecoderIdentifierTypeENS_38ObjectIdentifierThreadSafeAccessTraitsIyEEyEEN7WebCore14VideoCodecTypeERKNS_6StringEbbONS_17CompletionHandlerIFvbEEEENK3__0clINS9_16FrameRateMonitor13LateFrameInfoEEEDaT_EUlvE_vJEE4callEv(uint64_t a1)
{
  v21 = *MEMORY[0x1E69E9840];
  v2 = qword_1ED641580;
  if (os_log_type_enabled(qword_1ED641580, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 16);
    v4 = *(a1 + 24);
    v6 = *(a1 + 8);
    v7 = *(a1 + 32);
    v8 = *(a1 + 40);
    v9 = 134219264;
    v10 = v6;
    v11 = 2048;
    v12 = v5;
    v13 = 2048;
    v14 = v4;
    v15 = 2048;
    v16 = v7;
    v17 = 2048;
    v18 = (v5 - v4) * 1000.0;
    v19 = 2048;
    v20 = v8;
    _os_log_impl(&dword_19D52D000, v2, OS_LOG_TYPE_DEFAULT, "LibWebRTCCodecsProxy decoder %llu received a compressed frame at %f, previous frame was at %f, observed frame rate is %f, delay since last frame is %f ms, frame count is %lu", &v9, 0x3Eu);
  }

  return result;
}

uint64_t WTF::Deque<WTF::CompletionHandler<void ()(BOOL)>,0ul>::~Deque(uint64_t result, void *a2)
{
  v2 = result;
  v3 = *(result + 8);
  v4 = *(result + 16);
  v5 = *(result + 24);
  v6 = *result;
  v7 = v3 - *result;
  if (v3 < *result)
  {
    if (v3 <= v5)
    {
      if (v3)
      {
        v8 = 8 * v3;
        v9 = *(result + 16);
        do
        {
          result = *v9;
          *v9 = 0;
          if (result)
          {
            result = (*(*result + 8))(result);
          }

          ++v9;
          v8 -= 8;
        }

        while (v8);
        v6 = *v2;
      }

      if (v6 <= v5)
      {
        if (v6 != v5)
        {
          v10 = (v4 + 8 * v6);
          v11 = 8 * v5 - 8 * v6;
          do
          {
            v12 = *v10;
            *v10 = 0;
            if (v12)
            {
              (*(*v12 + 8))(v12);
            }

            ++v10;
            v11 -= 8;
          }

          while (v11);
        }

        goto LABEL_26;
      }
    }

LABEL_29:
    __break(1u);
    return result;
  }

  v13 = v5 - v6;
  if (v5 < v6)
  {
    goto LABEL_29;
  }

  if (v7 == -1)
  {
    v7 = v5 - v6;
    if (!v13)
    {
      goto LABEL_26;
    }

LABEL_22:
    v14 = 8 * v7;
    v15 = (v4 + 8 * v6);
    do
    {
      v16 = *v15;
      *v15 = 0;
      if (v16)
      {
        (*(*v16 + 8))(v16);
      }

      ++v15;
      v14 -= 8;
    }

    while (v14);
    goto LABEL_26;
  }

  if (v13 < v7)
  {
    goto LABEL_29;
  }

  if (v7)
  {
    goto LABEL_22;
  }

LABEL_26:
  v17 = *(v2 + 16);
  if (v17)
  {
    *(v2 + 16) = 0;
    *(v2 + 24) = 0;
    WTF::fastFree(v17, a2);
  }

  return v2;
}

atomic_uchar *WTF::BlockPtr<void ()(BOOL)>::fromCallable<WebKit::LibWebRTCCodecsProxy::createEncoder(WTF::ObjectIdentifierGeneric<WebKit::VideoEncoderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WebCore::VideoCodecType,WTF::String const&,WTF::Vector<std::pair<WTF::String,WTF::String>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> const&,BOOL,BOOL,WebCore::VideoEncoderScalabilityMode,WTF::CompletionHandler<void ()(BOOL)> &&)::$_0>(WebKit::LibWebRTCCodecsProxy::createEncoder(WTF::ObjectIdentifierGeneric<WebKit::VideoEncoderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WebCore::VideoCodecType,WTF::String const&,WTF::Vector<std::pair<WTF::String,WTF::String>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> const&,BOOL,BOOL,WebCore::VideoEncoderScalabilityMode,WTF::CompletionHandler<void ()(BOOL)> &&)::$_0)::{lambda(void const*)#1}::__invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 48);
  *(a1 + 48) = 0;
  if (v3)
  {
    (*(*v3 + 40))(v3);
  }

  result = *(a1 + 40);
  *(a1 + 40) = 0;
  if (result)
  {

    return WTF::ThreadSafeWeakPtrControlBlock::weakDeref(result, a2);
  }

  return result;
}

atomic_uchar **WTF::BlockPtr<void ()(BOOL)>::fromCallable<WebKit::LibWebRTCCodecsProxy::createEncoder(WTF::ObjectIdentifierGeneric<WebKit::VideoEncoderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WebCore::VideoCodecType,WTF::String const&,WTF::Vector<std::pair<WTF::String,WTF::String>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> const&,BOOL,BOOL,WebCore::VideoEncoderScalabilityMode,WTF::CompletionHandler<void ()(BOOL)> &&)::$_0>(WebKit::LibWebRTCCodecsProxy::createEncoder(WTF::ObjectIdentifierGeneric<WebKit::VideoEncoderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WebCore::VideoCodecType,WTF::String const&,WTF::Vector<std::pair<WTF::String,WTF::String>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> const&,BOOL,BOOL,WebCore::VideoEncoderScalabilityMode,WTF::CompletionHandler<void ()(BOOL)> &&)::$_0)::{lambda(void *,BOOL)#1}::__invoke(atomic_uchar **result, char a2)
{
  v3 = result[5];
  if (v3)
  {
    v4 = result;
    result = WTF::ThreadSafeWeakPtrControlBlock::makeStrongReferenceIfPossible<WebKit::LibWebRTCCodecsProxy>(&v7, v3, result[4]);
    v5 = v7;
    if (v7)
    {
      WebKit::LibWebRTCCodecsProxy::notifyEncoderResult(v7, v4[7], a2);

      return WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::WorkQueueMessageReceiver<(WTF::DestructionThread)0>,(WTF::DestructionThread)0>::deref((v5 + 8), v6);
    }
  }

  return result;
}

atomic_uchar *WTF::BlockPtr<void ()(unsigned char const*,unsigned long,webrtc::WebKitEncodedFrameInfo const&)>::fromCallable<WebKit::LibWebRTCCodecsProxy::createEncoder(WTF::ObjectIdentifierGeneric<WebKit::VideoEncoderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WebCore::VideoCodecType,WTF::String const&,WTF::Vector<std::pair<WTF::String,WTF::String>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> const&,BOOL,BOOL,WebCore::VideoEncoderScalabilityMode,WTF::CompletionHandler<void ()(BOOL)> &&)::$_1>(WebKit::LibWebRTCCodecsProxy::createEncoder(WTF::ObjectIdentifierGeneric<WebKit::VideoEncoderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WebCore::VideoCodecType,WTF::String const&,WTF::Vector<std::pair<WTF::String,WTF::String>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> const&,BOOL,BOOL,WebCore::VideoEncoderScalabilityMode,WTF::CompletionHandler<void ()(BOOL)> &&)::$_1)::{lambda(void const*)#1}::__invoke(void *a1, void *a2)
{
  v3 = a1[7];
  a1[7] = 0;
  if (v3)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v3);
  }

  v4 = a1[6];
  a1[6] = 0;
  if (v4)
  {
    (*(*v4 + 40))(v4);
  }

  result = a1[5];
  a1[5] = 0;
  if (result)
  {

    return WTF::ThreadSafeWeakPtrControlBlock::weakDeref(result, a2);
  }

  return result;
}

atomic_uchar **WTF::BlockPtr<void ()(unsigned char const*,unsigned long,webrtc::WebKitEncodedFrameInfo const&)>::fromCallable<WebKit::LibWebRTCCodecsProxy::createEncoder(WTF::ObjectIdentifierGeneric<WebKit::VideoEncoderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WebCore::VideoCodecType,WTF::String const&,WTF::Vector<std::pair<WTF::String,WTF::String>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> const&,BOOL,BOOL,WebCore::VideoEncoderScalabilityMode,WTF::CompletionHandler<void ()(BOOL)> &&)::$_1>(WebKit::LibWebRTCCodecsProxy::createEncoder(WTF::ObjectIdentifierGeneric<WebKit::VideoEncoderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WebCore::VideoCodecType,WTF::String const&,WTF::Vector<std::pair<WTF::String,WTF::String>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> const&,BOOL,BOOL,WebCore::VideoEncoderScalabilityMode,WTF::CompletionHandler<void ()(BOOL)> &&)::$_1)::{lambda(void *,unsigned char const*,unsigned long,webrtc::WebKitEncodedFrameInfo const&)#1}::__invoke(uint64_t *a1, void *a2, size_t a3, uint64_t a4)
{
  v8 = a1[7];
  v9 = IPC::Encoder::operator new(0x238, a2);
  *v9 = 140;
  *(v9 + 68) = 0;
  *(v9 + 70) = 0;
  *(v9 + 69) = 0;
  *(v9 + 2) = 0;
  *(v9 + 3) = 0;
  *(v9 + 1) = 0;
  IPC::Encoder::encodeHeader(v9);
  v17 = v9;
  IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(v9, a1[8]);
  IPC::ArgumentCoder<std::span<unsigned char const,18446744073709551615ul>,void>::encode<IPC::Encoder>(v9, a2, a3);
  IPC::ArgumentCoder<webrtc::WebKitEncodedFrameInfo,void>::encode(v9, a4);
  IPC::Connection::sendMessageImpl(v8, &v17, 0, 0);
  result = v17;
  v17 = 0;
  if (result)
  {
    IPC::Encoder::~Encoder(result, v10);
    result = bmalloc::api::tzoneFree(v15, v16);
  }

  v12 = a1[5];
  if (v12)
  {
    result = WTF::ThreadSafeWeakPtrControlBlock::makeStrongReferenceIfPossible<WebKit::LibWebRTCCodecsProxy>(&v17, v12, a1[4]);
    v13 = v17;
    if (v17)
    {
      WebKit::LibWebRTCCodecsProxy::notifyEncoderResult(v17, a1[8], 1);
      return WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::WorkQueueMessageReceiver<(WTF::DestructionThread)0>,(WTF::DestructionThread)0>::deref(v13 + 1, v14);
    }
  }

  return result;
}

atomic_ullong *WTF::BlockPtr<void ()(unsigned char const*,unsigned long)>::fromCallable<WebKit::LibWebRTCCodecsProxy::createEncoder(WTF::ObjectIdentifierGeneric<WebKit::VideoEncoderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WebCore::VideoCodecType,WTF::String const&,WTF::Vector<std::pair<WTF::String,WTF::String>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> const&,BOOL,BOOL,WebCore::VideoEncoderScalabilityMode,WTF::CompletionHandler<void ()(BOOL)> &&)::$_2>(WebKit::LibWebRTCCodecsProxy::createEncoder(WTF::ObjectIdentifierGeneric<WebKit::VideoEncoderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WebCore::VideoCodecType,WTF::String const&,WTF::Vector<std::pair<WTF::String,WTF::String>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> const&,BOOL,BOOL,WebCore::VideoEncoderScalabilityMode,WTF::CompletionHandler<void ()(BOOL)> &&)::$_2)::{lambda(void const*)#1}::__invoke(uint64_t a1)
{
  result = *(a1 + 32);
  *(a1 + 32) = 0;
  if (result)
  {
    return WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(result);
  }

  return result;
}

IPC::Encoder *WTF::BlockPtr<void ()(unsigned char const*,unsigned long)>::fromCallable<WebKit::LibWebRTCCodecsProxy::createEncoder(WTF::ObjectIdentifierGeneric<WebKit::VideoEncoderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WebCore::VideoCodecType,WTF::String const&,WTF::Vector<std::pair<WTF::String,WTF::String>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> const&,BOOL,BOOL,WebCore::VideoEncoderScalabilityMode,WTF::CompletionHandler<void ()(BOOL)> &&)::$_2>(WebKit::LibWebRTCCodecsProxy::createEncoder(WTF::ObjectIdentifierGeneric<WebKit::VideoEncoderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WebCore::VideoCodecType,WTF::String const&,WTF::Vector<std::pair<WTF::String,WTF::String>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> const&,BOOL,BOOL,WebCore::VideoEncoderScalabilityMode,WTF::CompletionHandler<void ()(BOOL)> &&)::$_2)::{lambda(void *,unsigned char const*,unsigned long)#1}::__invoke(uint64_t a1, void *a2, size_t a3)
{
  v6 = *(a1 + 32);
  v12 = 0x101010101020100;
  v13 = 1;
  v7 = IPC::Encoder::operator new(0x238, a2);
  *v7 = 142;
  *(v7 + 68) = 0;
  *(v7 + 70) = 0;
  *(v7 + 69) = 0;
  *(v7 + 2) = 0;
  *(v7 + 3) = 0;
  *(v7 + 1) = 0;
  IPC::Encoder::encodeHeader(v7);
  v14 = v7;
  IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(v7, *(a1 + 40));
  IPC::ArgumentCoder<std::span<unsigned char const,18446744073709551615ul>,void>::encode<IPC::Encoder>(v7, a2, a3);
  v15 = 1;
  IPC::Encoder::operator<<<BOOL>(v7, &v15);
  IPC::ArgumentCoder<WebCore::PlatformVideoColorSpace,void>::encode(v7, &v12);
  IPC::Connection::sendMessageImpl(v6, &v14, 0, 0);
  result = v14;
  v14 = 0;
  if (result)
  {
    IPC::Encoder::~Encoder(result, v8);
    return bmalloc::api::tzoneFree(v10, v11);
  }

  return result;
}

void sub_19D8AFEE4(_Unwind_Exception *a1, void *a2)
{
  IPC::Encoder::~Encoder(v2, a2);
  bmalloc::api::tzoneFree(v4, v5);
  _Unwind_Resume(a1);
}

char *std::string::basic_string[abi:sn200100]<0>(char *a1, char *__s)
{
  if (!__s)
  {
    goto LABEL_13;
  }

  v4 = strlen(__s);
  if (v4 >= 0x7FFFFFFFFFFFFFF8)
  {
    goto LABEL_14;
  }

  if (v4 > 0x16)
  {
    operator new();
  }

  a1[23] = v4;
  v5 = &a1[v4];
  if (a1 <= __s && v5 > __s)
  {
LABEL_13:
    __break(1u);
LABEL_14:
    std::string::__throw_length_error[abi:sn200100]();
  }

  if (v4)
  {
    memmove(a1, __s, v4);
  }

  *v5 = 0;
  return a1;
}

uint64_t WebKit::SharedVideoFrameReader::operator new(WebKit::SharedVideoFrameReader *this, void *a2)
{
  if (this == 80 && WebKit::SharedVideoFrameReader::s_heapRef)
  {
    return bmalloc::api::tzoneAllocateNonCompact(WebKit::SharedVideoFrameReader::s_heapRef, a2);
  }

  else
  {
    return WebKit::SharedVideoFrameReader::operatorNewSlow(this);
  }
}

WebKit::SharedVideoFrameReader *std::unique_ptr<WebKit::SharedVideoFrameReader>::reset[abi:sn200100](WebKit::SharedVideoFrameReader **a1, WebKit::SharedVideoFrameReader *a2)
{
  result = *a1;
  *a1 = a2;
  if (result)
  {
    WebKit::SharedVideoFrameReader::~SharedVideoFrameReader(result);

    return bmalloc::api::tzoneFree(v5, v6);
  }

  return result;
}

uint64_t WebCore::PixelBufferConformerCV::operator new(WebCore::PixelBufferConformerCV *this, void *a2)
{
  if (this == 8 && *MEMORY[0x1E69E2680])
  {
    return bmalloc::api::tzoneAllocateNonCompact(*MEMORY[0x1E69E2680], a2);
  }

  else
  {
    return MEMORY[0x1EEE58CA0]();
  }
}

IPC::Semaphore *std::optional<IPC::Semaphore>::operator=[abi:sn200100]<IPC::Semaphore,void>(IPC::Semaphore *a1, IPC::Semaphore *a2)
{
  if (*(a1 + 8) == 1)
  {
    return IPC::Semaphore::operator=(a1, a2);
  }

  result = WTF::MachSendRight::MachSendRight();
  v4 = *(a2 + 1);
  *(a2 + 1) = 0;
  *(result + 1) = v4;
  *(result + 8) = 1;
  return result;
}

IPC::Connection *WTF::Detail::CallableWrapper<WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(void)::{lambda(void)#1},void>::call(uint64_t a1)
{
  result = *(a1 + 8);
  if (result)
  {
    IPC::Connection::~Connection(result);

    return WTF::fastFree(v2, v3);
  }

  return result;
}

IPC::Connection *WTF::ThreadSafeWeakPtrControlBlock::strongDeref<IPC::Connection,(WTF::DestructionThread)2>(void)const::{lambda(void)#1}::operator()(uint64_t *a1, void *a2)
{
  v3 = *a1;
  result = a1[1];
  if (result)
  {
    IPC::Connection::~Connection(result);
    result = WTF::fastFree(v4, v5);
  }

  v6 = 0;
  v7 = 1;
  atomic_compare_exchange_strong_explicit(v3, &v6, 1u, memory_order_acquire, memory_order_acquire);
  if (v6)
  {
    result = MEMORY[0x19EB01E30](v3);
  }

  v8 = *(v3 + 16) - 1;
  *(v3 + 16) = v8;
  atomic_compare_exchange_strong_explicit(v3, &v7, 0, memory_order_release, memory_order_relaxed);
  if (v7 != 1)
  {
    v9 = v8;
    result = WTF::Lock::unlockSlow(v3);
    v8 = v9;
  }

  if (!v8)
  {

    return WTF::fastFree(v3, a2);
  }

  return result;
}

void *WTF::Detail::CallableWrapper<WebKit::LibWebRTCCodecsProxy::LibWebRTCCodecsProxy(WebKit::GPUConnectionToWebProcess &,WebKit::SharedPreferencesForWebProcess &)::$_0,void>::~CallableWrapper(void *a1, void *a2)
{
  *a1 = &unk_1F10EA1E0;
  v3 = a1[2];
  a1[2] = 0;
  if (v3)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::WorkQueueMessageReceiver<(WTF::DestructionThread)0>,(WTF::DestructionThread)0>::deref((v3 + 8), a2);
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WebKit::LibWebRTCCodecsProxy::LibWebRTCCodecsProxy(WebKit::GPUConnectionToWebProcess &,WebKit::SharedPreferencesForWebProcess &)::$_0,void>::~CallableWrapper(WTF *this, void *a2)
{
  *this = &unk_1F10EA1E0;
  v3 = *(this + 2);
  *(this + 2) = 0;
  if (v3)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::WorkQueueMessageReceiver<(WTF::DestructionThread)0>,(WTF::DestructionThread)0>::deref((v3 + 8), a2);
  }

  return WTF::fastFree(this, a2);
}

__n128 WTF::Detail::CallableWrapper<WebKit::LibWebRTCCodecsProxy::LibWebRTCCodecsProxy(WebKit::GPUConnectionToWebProcess &,WebKit::SharedPreferencesForWebProcess &)::$_0,void>::call(uint64_t a1)
{
  v1 = *(a1 + 8);
  result = *(a1 + 24);
  *(v1 + 63) = *(a1 + 39);
  *(v1 + 48) = result;
  return result;
}

void *WTF::Detail::CallableWrapper<WebKit::LibWebRTCCodecsProxy::stopListeningForIPC(WTF::Ref<WebKit::LibWebRTCCodecsProxy,WTF::RawPtrTraits<WebKit::LibWebRTCCodecsProxy>,WTF::DefaultRefDerefTraits<WebKit::LibWebRTCCodecsProxy>> &&)::$_0,void>::~CallableWrapper(void *a1, void *a2)
{
  *a1 = &unk_1F10EA208;
  v3 = a1[3];
  a1[3] = 0;
  if (v3)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::WorkQueueMessageReceiver<(WTF::DestructionThread)0>,(WTF::DestructionThread)0>::deref((v3 + 8), a2);
  }

  v4 = a1[2];
  a1[2] = 0;
  if (v4)
  {
    WTF::ThreadSafeWeakPtrControlBlock::weakDeref(v4, a2);
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WebKit::LibWebRTCCodecsProxy::stopListeningForIPC(WTF::Ref<WebKit::LibWebRTCCodecsProxy,WTF::RawPtrTraits<WebKit::LibWebRTCCodecsProxy>,WTF::DefaultRefDerefTraits<WebKit::LibWebRTCCodecsProxy>> &&)::$_0,void>::~CallableWrapper(WTF *this, void *a2)
{
  *this = &unk_1F10EA208;
  v3 = *(this + 3);
  *(this + 3) = 0;
  if (v3)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::WorkQueueMessageReceiver<(WTF::DestructionThread)0>,(WTF::DestructionThread)0>::deref((v3 + 8), a2);
  }

  v4 = *(this + 2);
  *(this + 2) = 0;
  if (v4)
  {
    WTF::ThreadSafeWeakPtrControlBlock::weakDeref(v4, a2);
  }

  return WTF::fastFree(this, a2);
}

uint64_t *WTF::Detail::CallableWrapper<WebKit::LibWebRTCCodecsProxy::stopListeningForIPC(WTF::Ref<WebKit::LibWebRTCCodecsProxy,WTF::RawPtrTraits<WebKit::LibWebRTCCodecsProxy>,WTF::DefaultRefDerefTraits<WebKit::LibWebRTCCodecsProxy>> &&)::$_0,void>::call(uint64_t *result)
{
  v1 = result[2];
  if (!v1)
  {
    return result;
  }

  result = WTF::ThreadSafeWeakPtrControlBlock::makeStrongReferenceIfPossible<WebKit::LibWebRTCCodecsProxy>(&v28, v1, result[1]);
  v3 = v28;
  if (!v28)
  {
    return result;
  }

  v4 = *(v28 + 72);
  *(v28 + 72) = 0;
  if (v4)
  {
    v5 = *(v4 - 4);
    v6 = v4 + 56 * v5;
    if (*(v4 - 12))
    {
      if (v5)
      {
        v7 = 56 * v5;
        v8 = v4;
        while ((*v8 + 1) <= 1)
        {
          v8 += 56;
          v7 -= 56;
          if (!v7)
          {
            v8 = v6;
            goto LABEL_15;
          }
        }
      }

      else
      {
        v8 = v4;
      }

      goto LABEL_15;
    }
  }

  else
  {
    v6 = 0;
    LODWORD(v5) = 0;
  }

  v8 = v6;
  v6 = v4 + 56 * v5;
  if (!v4)
  {
    v9 = 0;
    goto LABEL_16;
  }

LABEL_15:
  v9 = v4 + 56 * *(v4 - 4);
LABEL_16:
  if (v9 == v8)
  {
LABEL_27:
    if (v4)
    {
      WTF::HashTable<WTF::ObjectIdentifierGeneric<WebKit::VideoDecoderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::VideoDecoderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WebKit::LibWebRTCCodecsProxy::Decoder>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::VideoDecoderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WebKit::LibWebRTCCodecsProxy::Decoder>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::VideoDecoderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::VideoDecoderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WebKit::LibWebRTCCodecsProxy::Decoder,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::VideoDecoderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::VideoDecoderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WebKit::LibWebRTCCodecsProxy::Decoder>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::VideoDecoderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::deallocateTable(v4, v2);
    }

    v15 = *(v3 + 80);
    *(v3 + 80) = 0;
    if (v15)
    {
      v16 = *(v15 - 4);
      v17 = v15 + (v16 << 6);
      if (*(v15 - 12))
      {
        if (!v16)
        {
          v20 = 0;
          v19 = v15;
          goto LABEL_41;
        }

        v18 = v16 << 6;
        v19 = v15;
        while ((*v19 + 1) <= 1)
        {
          v19 += 64;
          v18 -= 64;
          if (!v18)
          {
            v19 = v17;
            break;
          }
        }

LABEL_36:
        v20 = *(v15 - 4);
LABEL_41:
        v21 = v15 + (v20 << 6);
        goto LABEL_52;
      }
    }

    else
    {
      v17 = 0;
      v16 = 0;
    }

    v19 = v17;
    v17 = v15 + (v16 << 6);
    if (!v15)
    {
      v21 = 0;
LABEL_52:
      while (v19 != v21)
      {
        result = webrtc::releaseLocalEncoder(*(v19 + 8), v2);
        while (1)
        {
          v22 = *(v19 + 24);
          if (v22 == *(v19 + 32))
          {
            break;
          }

          v23 = *(v19 + 48);
          if (v22 >= v23)
          {
            goto LABEL_57;
          }

          v24 = *(v19 + 40);
          v25 = *(v24 + 8 * v22);
          *(v24 + 8 * v22) = 0;
          v27 = v25;
          if (v22 == v23 - 1)
          {
            v26 = 0;
          }

          else
          {
            v26 = v22 + 1;
          }

          *(v19 + 24) = v26;
          WTF::CompletionHandler<void ()(BOOL)>::operator()(&v27, 0);
          result = v27;
          v27 = 0;
          if (result)
          {
            result = (*(*result + 8))(result);
          }
        }

        do
        {
          v19 += 64;
        }

        while (v19 != v17 && (*v19 + 1) <= 1);
      }

      if (v15)
      {
        WTF::HashTable<WTF::ObjectIdentifierGeneric<WebKit::VideoEncoderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::VideoEncoderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WebKit::LibWebRTCCodecsProxy::Encoder>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::VideoEncoderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WebKit::LibWebRTCCodecsProxy::Encoder>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::VideoEncoderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::VideoEncoderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WebKit::LibWebRTCCodecsProxy::Encoder,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::VideoEncoderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::VideoEncoderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WebKit::LibWebRTCCodecsProxy::Encoder>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::VideoEncoderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::deallocateTable(v15, v2);
      }

      return WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::WorkQueueMessageReceiver<(WTF::DestructionThread)0>,(WTF::DestructionThread)0>::deref((v3 + 8), v2);
    }

    goto LABEL_36;
  }

  while (1)
  {
    while (1)
    {
      v10 = *(v8 + 24);
      if (v10 != *(v8 + 32))
      {
        break;
      }

      do
      {
        v8 += 56;
      }

      while (v8 != v6 && (*v8 + 1) <= 1);
      if (v8 == v9)
      {
        goto LABEL_27;
      }
    }

    v11 = *(v8 + 48);
    if (v10 >= v11)
    {
      break;
    }

    v12 = *(v8 + 40);
    v13 = *(v12 + 8 * v10);
    *(v12 + 8 * v10) = 0;
    v27 = v13;
    if (v10 == v11 - 1)
    {
      v14 = 0;
    }

    else
    {
      v14 = v10 + 1;
    }

    *(v8 + 24) = v14;
    WTF::CompletionHandler<void ()(BOOL)>::operator()(&v27, 0);
    result = v27;
    v27 = 0;
    if (result)
    {
      result = (*(*result + 8))(result);
    }
  }

LABEL_57:
  __break(1u);
  return result;
}

void WTF::HashTable<WTF::ObjectIdentifierGeneric<WebKit::VideoDecoderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::VideoDecoderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WebKit::LibWebRTCCodecsProxy::Decoder>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::VideoDecoderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WebKit::LibWebRTCCodecsProxy::Decoder>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::VideoDecoderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::VideoDecoderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WebKit::LibWebRTCCodecsProxy::Decoder,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::VideoDecoderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::VideoDecoderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WebKit::LibWebRTCCodecsProxy::Decoder>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::VideoDecoderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::expand(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 && (v2 = *(v1 - 4)) != 0)
  {
    v3 = v2 << (6 * *(v1 - 12) >= (2 * v2));
  }

  else
  {
    v3 = 8;
  }

  WTF::HashTable<WTF::ObjectIdentifierGeneric<WebKit::VideoDecoderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::VideoDecoderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WebKit::LibWebRTCCodecsProxy::Decoder>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::VideoDecoderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WebKit::LibWebRTCCodecsProxy::Decoder>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::VideoDecoderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::VideoDecoderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WebKit::LibWebRTCCodecsProxy::Decoder,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::VideoDecoderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::VideoDecoderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WebKit::LibWebRTCCodecsProxy::Decoder>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::VideoDecoderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::rehash(a1, v3);
}

void WTF::HashTable<WTF::ObjectIdentifierGeneric<WebKit::VideoDecoderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::VideoDecoderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WebKit::LibWebRTCCodecsProxy::Decoder>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::VideoDecoderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WebKit::LibWebRTCCodecsProxy::Decoder>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::VideoDecoderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::VideoDecoderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WebKit::LibWebRTCCodecsProxy::Decoder,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::VideoDecoderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::VideoDecoderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WebKit::LibWebRTCCodecsProxy::Decoder>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::VideoDecoderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::rehash(uint64_t *a1, unsigned int a2)
{
  v4 = *a1;
  if (*a1)
  {
    v5 = *(v4 - 4);
    v6 = *(v4 - 12);
  }

  else
  {
    v5 = 0;
    v6 = 0;
  }

  v7 = WTF::fastMalloc((56 * a2 + 16));
  v9 = v7;
  v10 = v7 + 16;
  if (a2)
  {
    bzero((v7 + 16), 56 * a2);
  }

  *a1 = v10;
  v9[2] = a2 - 1;
  v9[3] = a2;
  *v9 = 0;
  v9[1] = v6;
  if (v5)
  {
    v11 = 0;
    v12 = v5;
    while (1)
    {
      v13 = (v4 + 56 * v11);
      v14 = *v13;
      if (*v13 != -1)
      {
        if (v14)
        {
          v16 = *a1;
          if (*a1)
          {
            v17 = *(v16 - 8);
          }

          else
          {
            v17 = 0;
          }

          v18 = (v14 + ~(v14 << 32)) ^ ((v14 + ~(v14 << 32)) >> 22);
          v19 = 9 * ((v18 + ~(v18 << 13)) ^ ((v18 + ~(v18 << 13)) >> 8));
          v20 = (v19 ^ (v19 >> 15)) + ~((v19 ^ (v19 >> 15)) << 27);
          v21 = v17 & ((v20 >> 31) ^ v20);
          v22 = 1;
          do
          {
            v23 = v16 + 56 * v21;
            v21 = (v21 + v22++) & v17;
          }

          while (*v23);
          WTF::Deque<WTF::CompletionHandler<void ()(BOOL)>,0ul>::~Deque(v23 + 24, v8);
          std::unique_ptr<WebCore::FrameRateMonitor>::reset[abi:sn200100]((v23 + 16), 0);
          v25 = *(v23 + 8);
          *(v23 + 8) = 0;
          if (v25)
          {
            (*(*v25 + 8))(v25);
          }

          *v23 = *v13;
          v26 = *(v13 + 1);
          v13[1] = 0;
          v13[2] = 0;
          *(v23 + 8) = v26;
          *(v23 + 40) = 0u;
          *(v23 + 24) = 0u;
          *(v23 + 24) = v13[3];
          v13[3] = 0;
          v27 = *(v23 + 32);
          v28 = v13[5];
          *(v23 + 32) = v13[4];
          *(v23 + 40) = v28;
          v13[4] = v27;
          v13[5] = 0;
          *(v23 + 48) = *(v13 + 12);
          *(v13 + 12) = 0;
          WTF::Deque<WTF::CompletionHandler<void ()(BOOL)>,0ul>::~Deque((v13 + 3), v24);
          std::unique_ptr<WebCore::FrameRateMonitor>::reset[abi:sn200100](v13 + 2, 0);
          v15 = v13[1];
          v13[1] = 0;
          if (!v15)
          {
            goto LABEL_21;
          }

LABEL_20:
          (*(*v15 + 8))(v15);
          goto LABEL_21;
        }

        WTF::Deque<WTF::CompletionHandler<void ()(BOOL)>,0ul>::~Deque((v13 + 3), v8);
        std::unique_ptr<WebCore::FrameRateMonitor>::reset[abi:sn200100](v13 + 2, 0);
        v15 = v13[1];
        v13[1] = 0;
        if (v15)
        {
          goto LABEL_20;
        }
      }

LABEL_21:
      if (++v11 == v12)
      {
        goto LABEL_24;
      }
    }
  }

  if (v4)
  {
LABEL_24:

    WTF::fastFree((v4 - 16), v8);
  }
}

uint64_t *WTF::HashTable<WTF::ObjectIdentifierGeneric<WebKit::VideoDecoderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::VideoDecoderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WebKit::LibWebRTCCodecsProxy::Decoder>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::VideoDecoderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WebKit::LibWebRTCCodecsProxy::Decoder>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::VideoDecoderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::VideoDecoderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WebKit::LibWebRTCCodecsProxy::Decoder,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::VideoDecoderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::VideoDecoderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WebKit::LibWebRTCCodecsProxy::Decoder>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::VideoDecoderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::find<WTF::IdentityHashTranslator<WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::VideoDecoderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WebKit::LibWebRTCCodecsProxy::Decoder,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::VideoDecoderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::VideoDecoderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WebKit::LibWebRTCCodecsProxy::Decoder>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::VideoDecoderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,(WTF::ShouldValidateKey)1,WTF::ObjectIdentifierGeneric<WebKit::VideoDecoderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    return 0;
  }

  if (a2 == -1 || !a2)
  {
    __break(0xC471u);
    JUMPOUT(0x19D8B0A38);
  }

  v2 = *(a1 - 8);
  v3 = (~(a2 << 32) + a2) ^ ((~(a2 << 32) + a2) >> 22);
  v4 = 9 * ((v3 + ~(v3 << 13)) ^ ((v3 + ~(v3 << 13)) >> 8));
  v5 = (v4 ^ (v4 >> 15)) + ~((v4 ^ (v4 >> 15)) << 27);
  v6 = v2 & ((v5 >> 31) ^ v5);
  v7 = (a1 + 56 * v6);
  v8 = *v7;
  if (*v7 != a2)
  {
    v9 = 1;
    while (v8)
    {
      v6 = (v6 + v9) & v2;
      v7 = (a1 + 56 * v6);
      v8 = *v7;
      ++v9;
      if (*v7 == a2)
      {
        return v7;
      }
    }

    return (a1 + 56 * *(a1 - 4));
  }

  return v7;
}

void *WTF::Detail::CallableWrapper<WebKit::LibWebRTCCodecsProxy::releaseDecoder(WTF::ObjectIdentifierGeneric<WebKit::VideoDecoderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>)::$_0,void>::~CallableWrapper(void *a1, void *a2)
{
  *a1 = &unk_1F10EA230;
  WTF::Deque<WTF::CompletionHandler<void ()(BOOL)>,0ul>::~Deque((a1 + 1), a2);
  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WebKit::LibWebRTCCodecsProxy::releaseDecoder(WTF::ObjectIdentifierGeneric<WebKit::VideoDecoderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>)::$_0,void>::~CallableWrapper(WTF *a1, void *a2)
{
  *a1 = &unk_1F10EA230;
  WTF::Deque<WTF::CompletionHandler<void ()(BOOL)>,0ul>::~Deque(a1 + 8, a2);

  return WTF::fastFree(a1, v3);
}

void *WTF::Detail::CallableWrapper<WebKit::LibWebRTCCodecsProxy::releaseDecoder(WTF::ObjectIdentifierGeneric<WebKit::VideoDecoderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>)::$_0,void>::call(void *result)
{
  v1 = result[1];
  if (v1 != result[2])
  {
    v2 = result;
    while (1)
    {
      v3 = *(v2 + 8);
      if (v1 >= v3)
      {
        break;
      }

      v4 = v2[3];
      v5 = *(v4 + 8 * v1);
      *(v4 + 8 * v1) = 0;
      v7 = v5;
      if (v1 == v3 - 1)
      {
        v6 = 0;
      }

      else
      {
        v6 = v1 + 1;
      }

      v2[1] = v6;
      WTF::CompletionHandler<void ()(BOOL)>::operator()(&v7, 1);
      result = v7;
      v7 = 0;
      if (result)
      {
        result = (*(*result + 8))(result);
      }

      v1 = v2[1];
      if (v1 == v2[2])
      {
        return result;
      }
    }

    __break(1u);
  }

  return result;
}

void sub_19D8B0BA0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (a10)
  {
    (*(*a10 + 8))(a10);
  }

  _Unwind_Resume(exception_object);
}

void *WTF::Detail::CallableWrapper<WebKit::LibWebRTCCodecsProxy::flushDecoder(WTF::ObjectIdentifierGeneric<WebKit::VideoDecoderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::CompletionHandler<void ()(void)> &&)::$_0,void,WebKit::LibWebRTCCodecsProxy::Decoder &>::~CallableWrapper(void *a1)
{
  v2 = a1[1];
  *a1 = &unk_1F10EA258;
  a1[1] = 0;
  if (v2)
  {
    (*(*v2 + 40))(v2);
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WebKit::LibWebRTCCodecsProxy::flushDecoder(WTF::ObjectIdentifierGeneric<WebKit::VideoDecoderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::CompletionHandler<void ()(void)> &&)::$_0,void,WebKit::LibWebRTCCodecsProxy::Decoder &>::~CallableWrapper(WTF *this, void *a2)
{
  v3 = *(this + 1);
  *this = &unk_1F10EA258;
  *(this + 1) = 0;
  if (v3)
  {
    (*(*v3 + 40))(v3);
  }

  return WTF::fastFree(this, a2);
}

uint64_t WTF::Detail::CallableWrapper<WebKit::LibWebRTCCodecsProxy::flushDecoder(WTF::ObjectIdentifierGeneric<WebKit::VideoDecoderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::CompletionHandler<void ()(void)> &&)::$_0,void,WebKit::LibWebRTCCodecsProxy::Decoder &>::call(uint64_t a1, uint64_t a2)
{
  (*(**a2 + 16))();
  v3 = *(a1 + 8);
  std::make_unique[abi:sn200100]<WTF::Detail::CallableWrapper<WTF::CompletionHandler<void ()(void)>,void>,WTF::CompletionHandler<void ()(void)>,0>(*(a1 + 16), &v5);
  (*(*v3 + 48))(v3, &v5);
  result = v5;
  v5 = 0;
  if (result)
  {
    return (*(*result + 8))(result);
  }

  return result;
}

void sub_19D8B0D80(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (a10)
  {
    (*(*a10 + 8))(a10);
  }

  _Unwind_Resume(exception_object);
}

void *WTF::Detail::CallableWrapper<WebKit::LibWebRTCCodecsProxy::decodeFrame(WTF::ObjectIdentifierGeneric<WebKit::VideoDecoderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,long long,std::span<unsigned char const,18446744073709551615ul>,WTF::CompletionHandler<void ()(BOOL)> &&)::$_0,void,WebKit::LibWebRTCCodecsProxy::Decoder &>::~CallableWrapper(void *a1)
{
  *a1 = &unk_1F10EA2A8;
  v2 = a1[6];
  a1[6] = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  v3 = a1[2];
  a1[2] = 0;
  if (v3)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v3);
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WebKit::LibWebRTCCodecsProxy::decodeFrame(WTF::ObjectIdentifierGeneric<WebKit::VideoDecoderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,long long,std::span<unsigned char const,18446744073709551615ul>,WTF::CompletionHandler<void ()(BOOL)> &&)::$_0,void,WebKit::LibWebRTCCodecsProxy::Decoder &>::~CallableWrapper(WTF *this, void *a2)
{
  *this = &unk_1F10EA2A8;
  v3 = *(this + 6);
  *(this + 6) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  v4 = *(this + 2);
  *(this + 2) = 0;
  if (v4)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v4);
  }

  return WTF::fastFree(this, a2);
}

uint64_t *WTF::Detail::CallableWrapper<WebKit::LibWebRTCCodecsProxy::decodeFrame(WTF::ObjectIdentifierGeneric<WebKit::VideoDecoderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,long long,std::span<unsigned char const,18446744073709551615ul>,WTF::CompletionHandler<void ()(BOOL)> &&)::$_0,void,WebKit::LibWebRTCCodecsProxy::Decoder &>::call(void *a1, void *a2)
{
  v4 = a2[1];
  if (v4)
  {
    WebCore::FrameRateMonitor::update(v4);
  }

  if ((*(**a2 + 32))(*a2, a1[3], a1[4], a1[5]))
  {
    v5 = a1[2];
    v7 = a1 + 1;
    IPC::Connection::send<Messages::LibWebRTCCodecs::FailedDecoding>(v5, &v7);

    return WTF::CompletionHandler<void ()(BOOL)>::operator()((a1 + 6), 0);
  }

  else
  {

    return WTF::Deque<WTF::CompletionHandler<void ()(BOOL)>,0ul>::append((a2 + 2), a1 + 6);
  }
}

void std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(uint64_t a1, void *a2)
{
  if (a2)
  {
    std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(a1, *a2);
    std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(a1, a2[1]);
    std::allocator_traits<std::allocator<std::__tree_node<std::__value_type<std::string,std::string>,void *>>>::destroy[abi:sn200100]<std::pair<std::string const,std::string>,void,0>(a1, (a2 + 4));

    operator delete(a2);
  }
}

void std::allocator_traits<std::allocator<std::__tree_node<std::__value_type<std::string,std::string>,void *>>>::destroy[abi:sn200100]<std::pair<std::string const,std::string>,void,0>(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    if (*(a2 + 47) < 0)
    {
      operator delete(*(a2 + 24));
    }

    if (*(a2 + 23) < 0)
    {
      v3 = *a2;

      operator delete(v3);
    }
  }

  else
  {
    __break(1u);
  }
}

uint64_t std::operator<=>[abi:sn200100]<char,std::char_traits<char>,std::allocator<char>>(void *a1, void **a2)
{
  v2 = *(a1 + 23);
  v3 = a1[1];
  if ((v2 & 0x80u) != 0)
  {
    a1 = *a1;
    v2 = v3;
  }

  v4 = *(a2 + 23);
  if (v4 >= 0)
  {
    v5 = a2;
  }

  else
  {
    v5 = *a2;
  }

  if (v4 >= 0)
  {
    v6 = *(a2 + 23);
  }

  else
  {
    v6 = a2[1];
  }

  return std::operator<=>[abi:sn200100]<char,std::char_traits<char>>(a1, v2, v5, v6);
}

uint64_t std::operator<=>[abi:sn200100]<char,std::char_traits<char>>(const void *a1, size_t a2, void *__s2, size_t a4)
{
  if (a4 >= a2)
  {
    v7 = a2;
  }

  else
  {
    v7 = a4;
  }

  v8 = memcmp(a1, __s2, v7);
  if (v8)
  {
    if ((v8 & 0x80000000) == 0)
    {
      return 1;
    }
  }

  else
  {
    if (a2 == a4)
    {
      return 0;
    }

    if (a2 >= a4)
    {
      return 1;
    }
  }

  return 255;
}

uint64_t *std::__tree_balance_after_insert[abi:sn200100]<std::__tree_node_base<void *> *>(uint64_t *result, uint64_t *a2)
{
  *(a2 + 24) = a2 == result;
  if (a2 != result)
  {
    do
    {
      v2 = a2[2];
      if (v2[3])
      {
        break;
      }

      v3 = v2[2];
      v4 = *v3;
      if (*v3 == v2)
      {
        v8 = v3[1];
        if (!v8 || (v9 = *(v8 + 24), v7 = (v8 + 24), v9 == 1))
        {
          if (*v2 == a2)
          {
            v11 = a2[2];
          }

          else
          {
            v11 = v2[1];
            v12 = *v11;
            v2[1] = *v11;
            v13 = v2;
            if (v12)
            {
              v12[2] = v2;
              v3 = v2[2];
              v13 = *v3;
            }

            v11[2] = v3;
            v3[v13 != v2] = v11;
            *v11 = v2;
            v2[2] = v11;
            v3 = v11[2];
            v4 = *v3;
          }

          *(v11 + 24) = 1;
          *(v3 + 24) = 0;
          v18 = *(v4 + 8);
          *v3 = v18;
          if (v18)
          {
            *(v18 + 16) = v3;
          }

          v19 = v3[2];
          *(v4 + 16) = v19;
          v19[*v19 != v3] = v4;
          *(v4 + 8) = v3;
          v3[2] = v4;
          return result;
        }
      }

      else
      {
        if (!v4 || (v6 = *(v4 + 24), v5 = (v4 + 24), v6 == 1))
        {
          v10 = *v2;
          if (*v2 == a2)
          {
            v14 = v10[1];
            *v2 = v14;
            if (v14)
            {
              *(v14 + 16) = v2;
              v3 = v2[2];
            }

            v10[2] = v3;
            v3[*v3 != v2] = v10;
            v10[1] = v2;
            v2[2] = v10;
            v3 = v10[2];
          }

          else
          {
            v10 = a2[2];
          }

          *(v10 + 24) = 1;
          *(v3 + 24) = 0;
          v15 = v3[1];
          v16 = *v15;
          v3[1] = *v15;
          if (v16)
          {
            *(v16 + 16) = v3;
          }

          v17 = v3[2];
          v15[2] = v17;
          v17[*v17 != v3] = v15;
          *v15 = v3;
          v3[2] = v15;
          return result;
        }

        v7 = v5;
      }

      *(v2 + 24) = 1;
      a2 = v3;
      *(v3 + 24) = v3 == result;
      *v7 = 1;
    }

    while (v3 != result);
  }

  return result;
}

void WTF::HashTable<WTF::ObjectIdentifierGeneric<WebKit::VideoEncoderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::VideoEncoderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WebKit::LibWebRTCCodecsProxy::Encoder>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::VideoEncoderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WebKit::LibWebRTCCodecsProxy::Encoder>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::VideoEncoderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::VideoEncoderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WebKit::LibWebRTCCodecsProxy::Encoder,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::VideoEncoderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::VideoEncoderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WebKit::LibWebRTCCodecsProxy::Encoder>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::VideoEncoderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::expand(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 && (v2 = *(v1 - 4)) != 0)
  {
    v3 = v2 << (6 * *(v1 - 12) >= (2 * v2));
  }

  else
  {
    v3 = 8;
  }

  WTF::HashTable<WTF::ObjectIdentifierGeneric<WebKit::VideoEncoderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::VideoEncoderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WebKit::LibWebRTCCodecsProxy::Encoder>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::VideoEncoderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WebKit::LibWebRTCCodecsProxy::Encoder>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::VideoEncoderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::VideoEncoderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WebKit::LibWebRTCCodecsProxy::Encoder,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::VideoEncoderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::VideoEncoderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WebKit::LibWebRTCCodecsProxy::Encoder>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::VideoEncoderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::rehash(a1, v3);
}

void WTF::HashTable<WTF::ObjectIdentifierGeneric<WebKit::VideoEncoderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::VideoEncoderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WebKit::LibWebRTCCodecsProxy::Encoder>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::VideoEncoderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WebKit::LibWebRTCCodecsProxy::Encoder>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::VideoEncoderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::VideoEncoderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WebKit::LibWebRTCCodecsProxy::Encoder,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::VideoEncoderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::VideoEncoderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WebKit::LibWebRTCCodecsProxy::Encoder>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::VideoEncoderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::rehash(uint64_t *a1, unsigned int a2)
{
  v4 = *a1;
  if (*a1)
  {
    v5 = *(v4 - 4);
    v6 = *(v4 - 12);
  }

  else
  {
    v5 = 0;
    v6 = 0;
  }

  v7 = WTF::fastMalloc(((a2 << 6) | 0x10));
  v9 = v7;
  v10 = v7 + 16;
  if (a2)
  {
    bzero((v7 + 16), a2 << 6);
  }

  *a1 = v10;
  v9[2] = a2 - 1;
  v9[3] = a2;
  *v9 = 0;
  v9[1] = v6;
  if (v5)
  {
    for (i = 0; i != v5; ++i)
    {
      v12 = (v4 + (i << 6));
      v13 = *v12;
      if (*v12 != -1)
      {
        if (v13)
        {
          v14 = *a1;
          if (*a1)
          {
            v15 = *(v14 - 8);
          }

          else
          {
            v15 = 0;
          }

          v16 = (v13 + ~(v13 << 32)) ^ ((v13 + ~(v13 << 32)) >> 22);
          v17 = 9 * ((v16 + ~(v16 << 13)) ^ ((v16 + ~(v16 << 13)) >> 8));
          v18 = (v17 ^ (v17 >> 15)) + ~((v17 ^ (v17 >> 15)) << 27);
          v19 = v15 & ((v18 >> 31) ^ v18);
          v20 = 1;
          do
          {
            v21 = v19;
            v22 = *(v14 + (v19 << 6));
            v19 = (v19 + v20++) & v15;
          }

          while (v22);
          v23 = v14 + (v21 << 6);
          WTF::Deque<WTF::CompletionHandler<void ()(BOOL)>,0ul>::~Deque(v23 + 24, v8);
          std::unique_ptr<WebKit::SharedVideoFrameReader>::reset[abi:sn200100]((v23 + 16), 0);
          *v23 = *v12;
          v24 = *(v12 + 1);
          v12[2] = 0;
          *(v23 + 8) = v24;
          *(v23 + 24) = 0u;
          *(v23 + 40) = 0u;
          *(v23 + 24) = v12[3];
          v12[3] = 0;
          v25 = *(v23 + 32);
          v26 = v12[5];
          *(v23 + 32) = v12[4];
          *(v23 + 40) = v26;
          v12[4] = v25;
          v12[5] = 0;
          *(v23 + 48) = *(v12 + 12);
          *(v12 + 12) = 0;
          LOWORD(v25) = *(v12 + 28);
          *(v23 + 58) = *(v12 + 58);
          *(v23 + 56) = v25;
          WTF::Deque<WTF::CompletionHandler<void ()(BOOL)>,0ul>::~Deque((v12 + 3), v27);
          std::unique_ptr<WebKit::SharedVideoFrameReader>::reset[abi:sn200100](v12 + 2, 0);
        }

        else
        {
          WTF::Deque<WTF::CompletionHandler<void ()(BOOL)>,0ul>::~Deque((v12 + 3), v8);
          std::unique_ptr<WebKit::SharedVideoFrameReader>::reset[abi:sn200100](v12 + 2, 0);
        }
      }
    }
  }

  else if (!v4)
  {
    return;
  }

  WTF::fastFree((v4 - 16), v8);
}

void *WTF::Detail::CallableWrapper<WebKit::LibWebRTCCodecsProxy::releaseEncoder(WTF::ObjectIdentifierGeneric<WebKit::VideoEncoderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>)::$_0,void>::~CallableWrapper(void *a1, void *a2)
{
  *a1 = &unk_1F10EA2F8;
  WTF::Deque<WTF::CompletionHandler<void ()(BOOL)>,0ul>::~Deque((a1 + 1), a2);
  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WebKit::LibWebRTCCodecsProxy::releaseEncoder(WTF::ObjectIdentifierGeneric<WebKit::VideoEncoderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>)::$_0,void>::~CallableWrapper(WTF *a1, void *a2)
{
  *a1 = &unk_1F10EA2F8;
  WTF::Deque<WTF::CompletionHandler<void ()(BOOL)>,0ul>::~Deque(a1 + 8, a2);

  return WTF::fastFree(a1, v3);
}

void *WTF::Detail::CallableWrapper<WebKit::LibWebRTCCodecsProxy::releaseEncoder(WTF::ObjectIdentifierGeneric<WebKit::VideoEncoderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>)::$_0,void>::call(void *result)
{
  v1 = result[1];
  if (v1 != result[2])
  {
    v2 = result;
    while (1)
    {
      v3 = *(v2 + 8);
      if (v1 >= v3)
      {
        break;
      }

      v4 = v2[3];
      v5 = *(v4 + 8 * v1);
      *(v4 + 8 * v1) = 0;
      v7 = v5;
      if (v1 == v3 - 1)
      {
        v6 = 0;
      }

      else
      {
        v6 = v1 + 1;
      }

      v2[1] = v6;
      WTF::CompletionHandler<void ()(BOOL)>::operator()(&v7, 1);
      result = v7;
      v7 = 0;
      if (result)
      {
        result = (*(*result + 8))(result);
      }

      v1 = v2[1];
      if (v1 == v2[2])
      {
        return result;
      }
    }

    __break(1u);
  }

  return result;
}

void sub_19D8B16A4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (a10)
  {
    (*(*a10 + 8))(a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t WTF::HashTable<WTF::ObjectIdentifierGeneric<WebKit::VideoEncoderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::VideoEncoderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WebKit::LibWebRTCCodecsProxy::Encoder>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::VideoEncoderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WebKit::LibWebRTCCodecsProxy::Encoder>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::VideoEncoderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::VideoEncoderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WebKit::LibWebRTCCodecsProxy::Encoder,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::VideoEncoderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::VideoEncoderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WebKit::LibWebRTCCodecsProxy::Encoder>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::VideoEncoderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::find<WTF::IdentityHashTranslator<WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::VideoEncoderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WebKit::LibWebRTCCodecsProxy::Encoder,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::VideoEncoderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::VideoEncoderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WebKit::LibWebRTCCodecsProxy::Encoder>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::VideoEncoderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,(WTF::ShouldValidateKey)1,WTF::ObjectIdentifierGeneric<WebKit::VideoEncoderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>(uint64_t result, uint64_t a2)
{
  if (result)
  {
    if (a2 == -1)
    {
      __break(0xC471u);
      JUMPOUT(0x19D8B1790);
    }

    if (!a2)
    {
      __break(0xC471u);
      JUMPOUT(0x19D8B17B0);
    }

    v2 = *(result - 8);
    v3 = (~(a2 << 32) + a2) ^ ((~(a2 << 32) + a2) >> 22);
    v4 = 9 * ((v3 + ~(v3 << 13)) ^ ((v3 + ~(v3 << 13)) >> 8));
    v5 = (v4 ^ (v4 >> 15)) + ~((v4 ^ (v4 >> 15)) << 27);
    v6 = v2 & ((v5 >> 31) ^ v5);
    v7 = *(result + (v6 << 6));
    if (v7 == a2)
    {
LABEL_8:
      result += v6 << 6;
    }

    else
    {
      v8 = 1;
      while (v7)
      {
        v6 = (v6 + v8) & v2;
        v7 = *(result + (v6 << 6));
        ++v8;
        if (v7 == a2)
        {
          goto LABEL_8;
        }
      }

      result += *(result - 4) << 6;
    }
  }

  return result;
}

uint64_t WTF::VectorMover<false,WTF::CompletionHandler<void ()(BOOL)>>::move(uint64_t result, uint64_t *a2, uint64_t *a3)
{
  if (result != a2)
  {
    v5 = result;
    do
    {
      v6 = *v5;
      *v5 = 0;
      *a3 = v6;
      result = *v5;
      *v5 = 0;
      if (result)
      {
        result = (*(*result + 8))(result);
      }

      ++a3;
      ++v5;
    }

    while (v5 != a2);
  }

  return result;
}

void *WTF::Detail::CallableWrapper<WebKit::LibWebRTCCodecsProxy::notifyEncoderResult(WTF::ObjectIdentifierGeneric<WebKit::VideoEncoderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,BOOL)::$_0,void>::~CallableWrapper(void *a1, void *a2)
{
  *a1 = &unk_1F10EA320;
  v3 = a1[2];
  a1[2] = 0;
  if (v3)
  {
    WTF::ThreadSafeWeakPtrControlBlock::weakDeref(v3, a2);
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WebKit::LibWebRTCCodecsProxy::notifyEncoderResult(WTF::ObjectIdentifierGeneric<WebKit::VideoEncoderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,BOOL)::$_0,void>::~CallableWrapper(WTF *this, void *a2)
{
  *this = &unk_1F10EA320;
  v3 = *(this + 2);
  *(this + 2) = 0;
  if (v3)
  {
    WTF::ThreadSafeWeakPtrControlBlock::weakDeref(v3, a2);
  }

  return WTF::fastFree(this, a2);
}

atomic_uchar **WTF::Detail::CallableWrapper<WebKit::LibWebRTCCodecsProxy::notifyEncoderResult(WTF::ObjectIdentifierGeneric<WebKit::VideoEncoderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,BOOL)::$_0,void>::call(atomic_uchar **result)
{
  v1 = result[2];
  if (v1)
  {
    v2 = result;
    result = WTF::ThreadSafeWeakPtrControlBlock::makeStrongReferenceIfPossible<WebKit::LibWebRTCCodecsProxy>(&v15, v1, result[1]);
    v3 = v15;
    if (v15)
    {
      v4 = WTF::HashTable<WTF::ObjectIdentifierGeneric<WebKit::VideoEncoderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::VideoEncoderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WebKit::LibWebRTCCodecsProxy::Encoder>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::VideoEncoderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WebKit::LibWebRTCCodecsProxy::Encoder>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::VideoEncoderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::VideoEncoderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WebKit::LibWebRTCCodecsProxy::Encoder,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::VideoEncoderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::VideoEncoderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WebKit::LibWebRTCCodecsProxy::Encoder>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::VideoEncoderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::find<WTF::IdentityHashTranslator<WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::VideoEncoderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WebKit::LibWebRTCCodecsProxy::Encoder,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::VideoEncoderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::VideoEncoderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WebKit::LibWebRTCCodecsProxy::Encoder>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::VideoEncoderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,(WTF::ShouldValidateKey)1,WTF::ObjectIdentifierGeneric<WebKit::VideoEncoderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>(*(v15 + 80), v2[3]);
      v6 = *(v3 + 80);
      if (v6)
      {
        v6 += *(v6 - 4) << 6;
      }

      if (v6 == v4)
      {
        return WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::WorkQueueMessageReceiver<(WTF::DestructionThread)0>,(WTF::DestructionThread)0>::deref((v3 + 8), v5);
      }

      v7 = *(v4 + 48);
      v8 = *(v4 + 24);
      if (v8 >= v7)
      {
        __break(1u);
      }

      else
      {
        v10 = *(v4 + 32);
        v9 = *(v4 + 40);
        v11 = *(v9 + 8 * v8);
        *(v9 + 8 * v8) = 0;
        v14 = v11;
        if (v8 != v10)
        {
          if (v8 == v7 - 1)
          {
            v12 = 0;
          }

          else
          {
            v12 = v8 + 1;
          }

          *(v4 + 24) = v12;
          WTF::CompletionHandler<void ()(BOOL)>::operator()(&v14, *(v2 + 32));
          v13 = v14;
          v14 = 0;
          if (v13)
          {
            (*(*v13 + 8))(v13);
          }

          return WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::WorkQueueMessageReceiver<(WTF::DestructionThread)0>,(WTF::DestructionThread)0>::deref((v3 + 8), v5);
        }
      }

      result = 513;
      __break(0xC471u);
    }
  }

  return result;
}

void sub_19D8B1A00(_Unwind_Exception *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  if (a9)
  {
    (*(*a9 + 8))(a9);
  }

  WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::WorkQueueMessageReceiver<(WTF::DestructionThread)0>,(WTF::DestructionThread)0>::deref((v9 + 8), a2);
  _Unwind_Resume(a1);
}

void *WTF::Detail::CallableWrapper<WebKit::LibWebRTCCodecsProxy::notifyDecoderResult(WTF::ObjectIdentifierGeneric<WebKit::VideoDecoderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,BOOL)::$_0,void>::~CallableWrapper(void *a1, void *a2)
{
  *a1 = &unk_1F10EA348;
  v3 = a1[2];
  a1[2] = 0;
  if (v3)
  {
    WTF::ThreadSafeWeakPtrControlBlock::weakDeref(v3, a2);
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WebKit::LibWebRTCCodecsProxy::notifyDecoderResult(WTF::ObjectIdentifierGeneric<WebKit::VideoDecoderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,BOOL)::$_0,void>::~CallableWrapper(WTF *this, void *a2)
{
  *this = &unk_1F10EA348;
  v3 = *(this + 2);
  *(this + 2) = 0;
  if (v3)
  {
    WTF::ThreadSafeWeakPtrControlBlock::weakDeref(v3, a2);
  }

  return WTF::fastFree(this, a2);
}

atomic_uchar **WTF::Detail::CallableWrapper<WebKit::LibWebRTCCodecsProxy::notifyDecoderResult(WTF::ObjectIdentifierGeneric<WebKit::VideoDecoderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,BOOL)::$_0,void>::call(atomic_uchar **result)
{
  v1 = result[2];
  if (v1)
  {
    v2 = result;
    result = WTF::ThreadSafeWeakPtrControlBlock::makeStrongReferenceIfPossible<WebKit::LibWebRTCCodecsProxy>(&v15, v1, result[1]);
    v3 = v15;
    if (v15)
    {
      v4 = WTF::HashTable<WTF::ObjectIdentifierGeneric<WebKit::VideoDecoderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::VideoDecoderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WebKit::LibWebRTCCodecsProxy::Decoder>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::VideoDecoderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WebKit::LibWebRTCCodecsProxy::Decoder>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::VideoDecoderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::VideoDecoderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WebKit::LibWebRTCCodecsProxy::Decoder,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::VideoDecoderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::VideoDecoderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WebKit::LibWebRTCCodecsProxy::Decoder>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::VideoDecoderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::find<WTF::IdentityHashTranslator<WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::VideoDecoderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WebKit::LibWebRTCCodecsProxy::Decoder,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::VideoDecoderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::VideoDecoderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WebKit::LibWebRTCCodecsProxy::Decoder>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::VideoDecoderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,(WTF::ShouldValidateKey)1,WTF::ObjectIdentifierGeneric<WebKit::VideoDecoderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>(*(v15 + 72), v2[3]);
      v6 = *(v3 + 72);
      if (v6)
      {
        v6 += 7 * *(v6 - 1);
      }

      if (v6 == v4)
      {
        return WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::WorkQueueMessageReceiver<(WTF::DestructionThread)0>,(WTF::DestructionThread)0>::deref((v3 + 8), v5);
      }

      v7 = *(v4 + 12);
      v8 = v4[3];
      if (v8 >= v7)
      {
        __break(1u);
      }

      else
      {
        v10 = v4[4];
        v9 = v4[5];
        v11 = *(v9 + 8 * v8);
        *(v9 + 8 * v8) = 0;
        v14 = v11;
        if (v8 != v10)
        {
          if (v8 == v7 - 1)
          {
            v12 = 0;
          }

          else
          {
            v12 = v8 + 1;
          }

          v4[3] = v12;
          WTF::CompletionHandler<void ()(BOOL)>::operator()(&v14, *(v2 + 32));
          v13 = v14;
          v14 = 0;
          if (v13)
          {
            (*(*v13 + 8))(v13);
          }

          return WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::WorkQueueMessageReceiver<(WTF::DestructionThread)0>,(WTF::DestructionThread)0>::deref((v3 + 8), v5);
        }
      }

      result = 513;
      __break(0xC471u);
    }
  }

  return result;
}

void sub_19D8B1C08(_Unwind_Exception *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  if (a9)
  {
    (*(*a9 + 8))(a9);
  }

  WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::WorkQueueMessageReceiver<(WTF::DestructionThread)0>,(WTF::DestructionThread)0>::deref((v9 + 8), a2);
  _Unwind_Resume(a1);
}

uint64_t std::make_unique[abi:sn200100]<WTF::Detail::CallableWrapper<WTF::CompletionHandler<void ()(void)>,void>,WTF::CompletionHandler<void ()(void)>,0>@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = WTF::fastMalloc(0x10);
  v5 = *a1;
  *a1 = 0;
  *result = &unk_1F10EA370;
  *(result + 8) = v5;
  if (v5)
  {
    *a2 = result;
  }

  else
  {
    result = 141;
    __break(0xC471u);
  }

  return result;
}

void *WTF::Detail::CallableWrapper<WTF::CompletionHandler<void ()(void)>,void>::~CallableWrapper(void *a1)
{
  v2 = a1[1];
  *a1 = &unk_1F10EA370;
  a1[1] = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  return a1;
}

void *WTF::Detail::CallableWrapper<WebKit::LibWebRTCCodecsProxy::updateSharedPreferencesForWebProcess(WebKit::SharedPreferencesForWebProcess)::$_0,void>::~CallableWrapper(void *a1, void *a2)
{
  *a1 = &unk_1F10EA398;
  v3 = a1[2];
  a1[2] = 0;
  if (v3)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::WorkQueueMessageReceiver<(WTF::DestructionThread)0>,(WTF::DestructionThread)0>::deref((v3 + 8), a2);
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WebKit::LibWebRTCCodecsProxy::updateSharedPreferencesForWebProcess(WebKit::SharedPreferencesForWebProcess)::$_0,void>::~CallableWrapper(WTF *this, void *a2)
{
  *this = &unk_1F10EA398;
  v3 = *(this + 2);
  *(this + 2) = 0;
  if (v3)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::WorkQueueMessageReceiver<(WTF::DestructionThread)0>,(WTF::DestructionThread)0>::deref((v3 + 8), a2);
  }

  return WTF::fastFree(this, a2);
}

__n128 WTF::Detail::CallableWrapper<WebKit::LibWebRTCCodecsProxy::updateSharedPreferencesForWebProcess(WebKit::SharedPreferencesForWebProcess)::$_0,void>::call(uint64_t a1)
{
  v1 = *(a1 + 8);
  result = *(a1 + 24);
  *(v1 + 63) = *(a1 + 39);
  *(v1 + 48) = result;
  return result;
}

uint64_t ___ZN6WebKit26LocalAuthenticationLibraryEb_block_invoke(uint64_t a1)
{
  result = dlopen("/System/Library/Frameworks/LocalAuthentication.framework/LocalAuthentication", 2);
  WebKit::LocalAuthenticationLibrary(BOOL)::frameworkLibrary = result;
  if ((*(a1 + 32) & 1) == 0 && !result)
  {
    result = 30;
    __break(0xC471u);
  }

  return result;
}

uint64_t WebKit::initLAContext(WebKit *this)
{
  if (qword_1ED641B50 != -1)
  {
    dispatch_once(&qword_1ED641B50, &__block_literal_global_4);
  }

  return qword_1ED641B58;
}

uint64_t ___ZN6WebKitL13initLAContextEv_block_invoke()
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = ___ZN6WebKit26LocalAuthenticationLibraryEb_block_invoke;
  block[3] = &__block_descriptor_33_e5_v8__0l;
  v2 = 0;
  if (_MergedGlobals_51 != -1)
  {
    dispatch_once(&_MergedGlobals_51, block);
  }

  result = objc_getClass("LAContext");
  qword_1ED641B58 = result;
  if (result)
  {
    WebKit::getLAContextClass = WebKit::LAContextFunction;
  }

  else
  {
    result = 32;
    __break(0xC471u);
  }

  return result;
}

void WebKit::LogStream::~LogStream(WebKit::LogStream *this)
{
  v2 = *(this + 2);
  *(this + 2) = 0;
  if (v2)
  {
    if (atomic_fetch_add(v2 + 2, 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, v2 + 2);
      (*(*v2 + 8))(v2);
    }
  }
}

atomic_ullong *WebKit::LogStream::logOnBehalfOfWebContent(uint64_t a1, char *subsystem, unint64_t a3, char *category, unint64_t a5, uint64_t a6, unint64_t a7, unsigned int a8)
{
  v8 = a8;
  *&v32[5] = *MEMORY[0x1E69E9840];
  v16 = (a8 > 0x11) | (0xFFF8u >> a8);
  v17 = *(*(a1 + 16) + 40);
  while (1)
  {
    v18 = *v17;
    if ((*v17 & 1) == 0)
    {
      break;
    }

    v19 = *v17;
    atomic_compare_exchange_strong_explicit(v17, &v19, v18 + 2, memory_order_relaxed, memory_order_relaxed);
    if (v19 == v18)
    {
      goto LABEL_6;
    }
  }

  WTF::ThreadSafeWeakPtrControlBlock::strongRef(*v17);
LABEL_6:
  if (!a6 || !a7 || ((*(a6 + a7 - 1) == 0) & ~v16) == 0)
  {
    v26 = qword_1ED6416C8;
    if (os_log_type_enabled(qword_1ED6416C8, OS_LOG_TYPE_FAULT))
    {
      v31 = 136446210;
      *v32 = "void WebKit::LogStream::logOnBehalfOfWebContent(std::span<const uint8_t>, std::span<const uint8_t>, std::span<const uint8_t>, uint8_t)";
      _os_log_fault_impl(&dword_19D52D000, v26, OS_LOG_TYPE_FAULT, "/Library/Caches/com.apple.xbs/Sources/WebKit/Source/WebKit/Shared/LogStream.cpp 83: Invalid message dispatched %{public}s", &v31, 0xCu);
    }

    *(v17 + 94) = 1;
    if (IPC::s_shouldCrashOnMessageCheckFailure != 1)
    {
      return WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v17);
    }

LABEL_45:
    __break(0xC471u);
    JUMPOUT(0x19D8B22CCLL);
  }

  if (a3 >= 0x21)
  {
    v28 = qword_1ED6416C8;
    if (os_log_type_enabled(qword_1ED6416C8, OS_LOG_TYPE_FAULT))
    {
      v31 = 136446210;
      *v32 = "void WebKit::LogStream::logOnBehalfOfWebContent(std::span<const uint8_t>, std::span<const uint8_t>, std::span<const uint8_t>, uint8_t)";
      _os_log_fault_impl(&dword_19D52D000, v28, OS_LOG_TYPE_FAULT, "/Library/Caches/com.apple.xbs/Sources/WebKit/Source/WebKit/Shared/LogStream.cpp 84: Invalid message dispatched %{public}s", &v31, 0xCu);
    }

    *(v17 + 94) = 1;
    if (IPC::s_shouldCrashOnMessageCheckFailure != 1)
    {
      return WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v17);
    }

    goto LABEL_45;
  }

  if (a5 >= 0x21)
  {
    v29 = qword_1ED6416C8;
    if (os_log_type_enabled(qword_1ED6416C8, OS_LOG_TYPE_FAULT))
    {
      v31 = 136446210;
      *v32 = "void WebKit::LogStream::logOnBehalfOfWebContent(std::span<const uint8_t>, std::span<const uint8_t>, std::span<const uint8_t>, uint8_t)";
      _os_log_fault_impl(&dword_19D52D000, v29, OS_LOG_TYPE_FAULT, "/Library/Caches/com.apple.xbs/Sources/WebKit/Source/WebKit/Shared/LogStream.cpp 85: Invalid message dispatched %{public}s", &v31, 0xCu);
    }

    *(v17 + 94) = 1;
    if (IPC::s_shouldCrashOnMessageCheckFailure == 1)
    {
      __break(0xC471u);
      JUMPOUT(0x19D8B2304);
    }
  }

  else
  {
    if (a7 < 0x101)
    {
      v20 = category;
      v21 = 0;
      v22 = MEMORY[0x1E69E9C10];
      v23 = 1;
      if (!subsystem || !a3)
      {
        goto LABEL_16;
      }

      if (!subsystem[a3 - 1])
      {
        v21 = 0;
        if (!v20 || !a5)
        {
          goto LABEL_16;
        }

        if (!v20[a5 - 1])
        {
          if (a5 == 8 && *v20 == 0x676E6974736554)
          {
            atomic_fetch_add(WebKit::globalLogCountForTesting, 1u);
          }

          v21 = os_log_create(subsystem, v20);
          if (v21)
          {
            v23 = 0;
            v22 = v21;
          }

          goto LABEL_16;
        }
      }

      v21 = 0;
LABEL_16:
      v24 = v21;
      if ((WTFSignpostHandleIndirectLog() & 1) == 0 && os_log_type_enabled(v22, v8))
      {
        v25 = *(a1 + 32);
        v31 = 67109378;
        v32[0] = v25;
        LOWORD(v32[1]) = 2082;
        *(&v32[1] + 2) = a6;
        _os_log_impl(&dword_19D52D000, v22, v8, "WebContent[%d] %{public}s", &v31, 0x12u);
      }

      if ((v23 & 1) == 0)
      {
        os_release(v24);
      }

      return WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v17);
    }

    v30 = qword_1ED6416C8;
    if (os_log_type_enabled(qword_1ED6416C8, OS_LOG_TYPE_FAULT))
    {
      v31 = 136446210;
      *v32 = "void WebKit::LogStream::logOnBehalfOfWebContent(std::span<const uint8_t>, std::span<const uint8_t>, std::span<const uint8_t>, uint8_t)";
      _os_log_fault_impl(&dword_19D52D000, v30, OS_LOG_TYPE_FAULT, "/Library/Caches/com.apple.xbs/Sources/WebKit/Source/WebKit/Shared/LogStream.cpp 86: Invalid message dispatched %{public}s", &v31, 0xCu);
    }

    *(v17 + 94) = 1;
    if (IPC::s_shouldCrashOnMessageCheckFailure == 1)
    {
      __break(0xC471u);
      JUMPOUT(0x19D8B233CLL);
    }
  }

  return WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v17);
}

unsigned int *WebKit::LogStream::setup(uint64_t a1, WTF::MachSendRight *a2, uint64_t *a3)
{
  IPC::StreamServerConnection::tryCreate(a2, &v12);
  v5 = v12;
  v12 = 0;
  result = *(a1 + 16);
  *(a1 + 16) = v5;
  if (result)
  {
    if (atomic_fetch_add(result + 2, 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, result + 2);
      (*(*result + 8))(result);
    }

    result = v12;
    v12 = 0;
    if (result && atomic_fetch_add(result + 2, 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, result + 2);
      result = (*(*result + 8))(result);
    }
  }

  if ((_MergedGlobals_52 & 1) == 0)
  {
    v11 = WTF::fastMalloc(0x70);
    result = IPC::StreamConnectionWorkQueue::StreamConnectionWorkQueue(v11, "Log work queue", 15);
    qword_1ED641B68 = result;
    _MergedGlobals_52 = 1;
  }

  v7 = *(a1 + 16);
  if (v7)
  {
    atomic_fetch_add(v7 + 2, 1u);
    IPC::StreamServerConnection::open(v7, qword_1ED641B68);
    IPC::StreamServerConnection::startReceivingMessages(v7, a1, 0x17u, *(a1 + 24));
    v8 = qword_1ED641B68;
    v9 = *a3;
    *a3 = 0;
    (*(*v9 + 16))(v9, v8 + 32, v7 + 40);
    result = (*(*v9 + 8))(v9);
    if (atomic_fetch_add(v7 + 2, 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, v7 + 2);
      v10 = *(*v7 + 8);

      return v10(v7);
    }
  }

  return result;
}

void WebKit::LogStream::rECEIVED_LAUNCH_SERVICES_DATABASE(WebKit::LogStream *this)
{
  v5 = *MEMORY[0x1E69E9840];
  v2 = os_log_create("com.apple.WebKit", "Loading");
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    v3 = *(this + 8);
    v4[0] = 67109120;
    v4[1] = v3;
    _os_log_impl(&dword_19D52D000, v2, OS_LOG_TYPE_INFO, "WebContent[%d]: Received Launch Services database", v4, 8u);
  }

  if (v2)
  {
    os_release(v2);
  }
}

void WebKit::LogStream::wAITING_FOR_LAUNCH_SERVICES_DATABASE_UPDATE_TOOK_F_SECONDS(WebKit::LogStream *this, double a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v4 = os_log_create("com.apple.WebKit", "Loading");
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v5 = *(this + 8);
    v6[0] = 67109376;
    v6[1] = v5;
    v7 = 2048;
    v8 = a2;
    _os_log_impl(&dword_19D52D000, v4, OS_LOG_TYPE_ERROR, "WebContent[%d]: Waiting for Launch Services database update took %f seconds", v6, 0x12u);
  }

  if (v4)
  {
    os_release(v4);
  }
}

void WebKit::LogStream::tIMED_OUT_WAITING_FOR_LAUNCH_SERVICES_DATABASE_UPDATE(WebKit::LogStream *this)
{
  v5 = *MEMORY[0x1E69E9840];
  v2 = os_log_create("com.apple.WebKit", "Loading");
  if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
  {
    v3 = *(this + 8);
    v4[0] = 67109120;
    v4[1] = v3;
    _os_log_impl(&dword_19D52D000, v2, OS_LOG_TYPE_FAULT, "WebContent[%d]: Timed out waiting for Launch Services database update", v4, 8u);
  }

  if (v2)
  {
    os_release(v2);
  }
}

void WebKit::LogStream::pLATFORM_INITIALIZE_WEBPROCESS(WebKit::LogStream *this)
{
  v5 = *MEMORY[0x1E69E9840];
  v2 = os_log_create("com.apple.WebKit", "Process");
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(this + 8);
    v4[0] = 67109120;
    v4[1] = v3;
    _os_log_impl(&dword_19D52D000, v2, OS_LOG_TYPE_DEFAULT, "WebContent[%d]: WebProcess::platformInitializeWebProcess", v4, 8u);
  }

  if (v2)
  {
    os_release(v2);
  }
}

void WebKit::LogStream::wEBRESOURCELOADER_CONSTRUCTOR(WebKit::LogStream *this, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v17 = *MEMORY[0x1E69E9840];
  v8 = os_log_create("com.apple.WebKit", "Network");
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = *(this + 8);
    v10[0] = 67109888;
    v10[1] = v9;
    v11 = 2048;
    v12 = a2;
    v13 = 2048;
    v14 = a3;
    v15 = 2048;
    v16 = a4;
    _os_log_impl(&dword_19D52D000, v8, OS_LOG_TYPE_DEFAULT, "WebContent[%d]: [webPageID=%llu, frameID=%llu, resourceID=%llu] WebResourceLoader::WebResourceLoader", v10, 0x26u);
  }

  if (v8)
  {
    os_release(v8);
  }
}

void WebKit::LogStream::wEBRESOURCELOADER_WILLSENDREQUEST(WebKit::LogStream *this, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v17 = *MEMORY[0x1E69E9840];
  v8 = os_log_create("com.apple.WebKit", "Network");
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = *(this + 8);
    v10[0] = 67109888;
    v10[1] = v9;
    v11 = 2048;
    v12 = a2;
    v13 = 2048;
    v14 = a3;
    v15 = 2048;
    v16 = a4;
    _os_log_impl(&dword_19D52D000, v8, OS_LOG_TYPE_DEFAULT, "WebContent[%d]: [webPageID=%llu, frameID=%llu, resourceID=%llu] WebResourceLoader::willSendRequest", v10, 0x26u);
  }

  if (v8)
  {
    os_release(v8);
  }
}

void WebKit::LogStream::wEBRESOURCELOADER_WILLSENDREQUEST_NO_CORELOADER(WebKit::LogStream *this, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v17 = *MEMORY[0x1E69E9840];
  v8 = os_log_create("com.apple.WebKit", "Network");
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = *(this + 8);
    v10[0] = 67109888;
    v10[1] = v9;
    v11 = 2048;
    v12 = a2;
    v13 = 2048;
    v14 = a3;
    v15 = 2048;
    v16 = a4;
    _os_log_impl(&dword_19D52D000, v8, OS_LOG_TYPE_DEFAULT, "WebContent[%d]: [webPageID=%llu, frameID=%llu, resourceID=%llu] WebResourceLoader::willSendRequest: exiting early because no coreloader or identifier", v10, 0x26u);
  }

  if (v8)
  {
    os_release(v8);
  }
}

void WebKit::LogStream::wEBRESOURCELOADER_WILLSENDREQUEST_CONTINUE(WebKit::LogStream *this, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v17 = *MEMORY[0x1E69E9840];
  v8 = os_log_create("com.apple.WebKit", "Network");
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = *(this + 8);
    v10[0] = 67109888;
    v10[1] = v9;
    v11 = 2048;
    v12 = a2;
    v13 = 2048;
    v14 = a3;
    v15 = 2048;
    v16 = a4;
    _os_log_impl(&dword_19D52D000, v8, OS_LOG_TYPE_DEFAULT, "WebContent[%d]: [webPageID=%llu, frameID=%llu, resourceID=%llu] WebResourceLoader::willSendRequest: returning ContinueWillSendRequest", v10, 0x26u);
  }

  if (v8)
  {
    os_release(v8);
  }
}

void WebKit::LogStream::wEBRESOURCELOADER_DIDRECEIVERESPONSE(WebKit::LogStream *this, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  v21 = *MEMORY[0x1E69E9840];
  v10 = os_log_create("com.apple.WebKit", "Network");
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = *(this + 8);
    v12[0] = 67110144;
    v12[1] = v11;
    v13 = 2048;
    v14 = a2;
    v15 = 2048;
    v16 = a3;
    v17 = 2048;
    v18 = a4;
    v19 = 1024;
    v20 = a5;
    _os_log_impl(&dword_19D52D000, v10, OS_LOG_TYPE_DEFAULT, "WebContent[%d]: [webPageID=%llu, frameID=%llu, resourceID=%llu] WebResourceLoader::didReceiveResponse: (httpStatusCode=%d)", v12, 0x2Cu);
  }

  if (v10)
  {
    os_release(v10);
  }
}

void WebKit::LogStream::wEBRESOURCELOADER_DIDRECEIVERESPONSE_NOT_CONTINUING_LOAD(WebKit::LogStream *this, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v17 = *MEMORY[0x1E69E9840];
  v8 = os_log_create("com.apple.WebKit", "Network");
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = *(this + 8);
    v10[0] = 67109888;
    v10[1] = v9;
    v11 = 2048;
    v12 = a2;
    v13 = 2048;
    v14 = a3;
    v15 = 2048;
    v16 = a4;
    _os_log_impl(&dword_19D52D000, v8, OS_LOG_TYPE_DEFAULT, "WebContent[%d]: [webPageID=%llu, frameID=%llu, resourceID=%llu] WebResourceLoader::didReceiveResponse: not continuing load because no coreLoader or no ID", v10, 0x26u);
  }

  if (v8)
  {
    os_release(v8);
  }
}

void WebKit::LogStream::wEBRESOURCELOADER_DIDRECEIVERESPONSE_NOT_CONTINUING_INTERCEPT_LOAD(WebKit::LogStream *this, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v17 = *MEMORY[0x1E69E9840];
  v8 = os_log_create("com.apple.WebKit", "Network");
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = *(this + 8);
    v10[0] = 67109888;
    v10[1] = v9;
    v11 = 2048;
    v12 = a2;
    v13 = 2048;
    v14 = a3;
    v15 = 2048;
    v16 = a4;
    _os_log_impl(&dword_19D52D000, v8, OS_LOG_TYPE_DEFAULT, "WebContent[%d]: [webPageID=%llu, frameID=%llu, resourceID=%llu] WebResourceLoader::didReceiveResponse: not continuing intercept load because no coreLoader or no ID", v10, 0x26u);
  }

  if (v8)
  {
    os_release(v8);
  }
}

void WebKit::LogStream::wEBRESOURCELOADER_DIDRECEIVEDATA(WebKit::LogStream *this, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v17 = *MEMORY[0x1E69E9840];
  v8 = os_log_create("com.apple.WebKit", "Network");
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = *(this + 8);
    v10[0] = 67109888;
    v10[1] = v9;
    v11 = 2048;
    v12 = a2;
    v13 = 2048;
    v14 = a3;
    v15 = 2048;
    v16 = a4;
    _os_log_impl(&dword_19D52D000, v8, OS_LOG_TYPE_DEFAULT, "WebContent[%d]: [webPageID=%llu, frameID=%llu, resourceID=%llu] WebResourceLoader::didReceiveData: Started receiving data", v10, 0x26u);
  }

  if (v8)
  {
    os_release(v8);
  }
}

void WebKit::LogStream::wEBRESOURCELOADER_DIDFINISHRESOURCELOAD(WebKit::LogStream *this, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v21 = *MEMORY[0x1E69E9840];
  v10 = os_log_create("com.apple.WebKit", "Network");
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = *(this + 8);
    v12[0] = 67110144;
    v12[1] = v11;
    v13 = 2048;
    v14 = a2;
    v15 = 2048;
    v16 = a3;
    v17 = 2048;
    v18 = a4;
    v19 = 2048;
    v20 = a5;
    _os_log_impl(&dword_19D52D000, v10, OS_LOG_TYPE_DEFAULT, "WebContent[%d]: [webPageID=%llu, frameID=%llu, resourceID=%llu] WebResourceLoader::didFinishResourceLoad: (length=%llu)", v12, 0x30u);
  }

  if (v10)
  {
    os_release(v10);
  }
}

void WebKit::LogStream::wEBRESOURCELOADER_SERVICEWORKERDIDNOTHANDLE(WebKit::LogStream *this, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v17 = *MEMORY[0x1E69E9840];
  v8 = os_log_create("com.apple.WebKit", "Network");
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = *(this + 8);
    v10[0] = 67109888;
    v10[1] = v9;
    v11 = 2048;
    v12 = a2;
    v13 = 2048;
    v14 = a3;
    v15 = 2048;
    v16 = a4;
    _os_log_impl(&dword_19D52D000, v8, OS_LOG_TYPE_DEFAULT, "WebContent[%d]: [webPageID=%llu, frameID=%llu, resourceID=%llu] WebResourceLoader::serviceWorkerDidNotHandle", v10, 0x26u);
  }

  if (v8)
  {
    os_release(v8);
  }
}

void WebKit::LogStream::wEBRESOURCELOADER_DIDFAILRESOURCELOAD(WebKit::LogStream *this, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v17 = *MEMORY[0x1E69E9840];
  v8 = os_log_create("com.apple.WebKit", "Network");
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = *(this + 8);
    v10[0] = 67109888;
    v10[1] = v9;
    v11 = 2048;
    v12 = a2;
    v13 = 2048;
    v14 = a3;
    v15 = 2048;
    v16 = a4;
    _os_log_impl(&dword_19D52D000, v8, OS_LOG_TYPE_DEFAULT, "WebContent[%d]: [webPageID=%llu, frameID=%llu, resourceID=%llu] WebResourceLoader::didFailResourceLoad", v10, 0x26u);
  }

  if (v8)
  {
    os_release(v8);
  }
}

void WebKit::LogStream::wEBRESOURCELOADER_DIDBLOCKAUTHENTICATIONCHALLENGE(WebKit::LogStream *this, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v17 = *MEMORY[0x1E69E9840];
  v8 = os_log_create("com.apple.WebKit", "Network");
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = *(this + 8);
    v10[0] = 67109888;
    v10[1] = v9;
    v11 = 2048;
    v12 = a2;
    v13 = 2048;
    v14 = a3;
    v15 = 2048;
    v16 = a4;
    _os_log_impl(&dword_19D52D000, v8, OS_LOG_TYPE_DEFAULT, "WebContent[%d]: [webPageID=%llu, frameID=%llu, resourceID=%llu] WebResourceLoader::didBlockAuthenticationChallenge", v10, 0x26u);
  }

  if (v8)
  {
    os_release(v8);
  }
}

void WebKit::LogStream::wEBRESOURCELOADER_STOPLOADINGAFTERSECURITYPOLICYDENIED(WebKit::LogStream *this, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v17 = *MEMORY[0x1E69E9840];
  v8 = os_log_create("com.apple.WebKit", "Network");
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = *(this + 8);
    v10[0] = 67109888;
    v10[1] = v9;
    v11 = 2048;
    v12 = a2;
    v13 = 2048;
    v14 = a3;
    v15 = 2048;
    v16 = a4;
    _os_log_impl(&dword_19D52D000, v8, OS_LOG_TYPE_DEFAULT, "WebContent[%d]: [webPageID=%llu, frameID=%llu, resourceID=%llu] WebResourceLoader::stopLoadingAfterXFrameOptionsOrContentSecurityPolicyDenied", v10, 0x26u);
  }

  if (v8)
  {
    os_release(v8);
  }
}

void WebKit::LogStream::wEBRESOURCELOADER_DIDRECEIVERESOURCE(WebKit::LogStream *this, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v17 = *MEMORY[0x1E69E9840];
  v8 = os_log_create("com.apple.WebKit", "Network");
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = *(this + 8);
    v10[0] = 67109888;
    v10[1] = v9;
    v11 = 2048;
    v12 = a2;
    v13 = 2048;
    v14 = a3;
    v15 = 2048;
    v16 = a4;
    _os_log_impl(&dword_19D52D000, v8, OS_LOG_TYPE_DEFAULT, "WebContent[%d]: [webPageID=%llu, frameID=%llu, resourceID=%llu] WebResourceLoader::didReceiveResource", v10, 0x26u);
  }

  if (v8)
  {
    os_release(v8);
  }
}

void WebKit::LogStream::wEBRESOURCELOADER_DIDRECEIVERESOURCE_UNABLE_TO_CREATE_FRAGMENTEDSHAREDBUFFER(WebKit::LogStream *this, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v17 = *MEMORY[0x1E69E9840];
  v8 = os_log_create("com.apple.WebKit", "Network");
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = *(this + 8);
    v10[0] = 67109888;
    v10[1] = v9;
    v11 = 2048;
    v12 = a2;
    v13 = 2048;
    v14 = a3;
    v15 = 2048;
    v16 = a4;
    _os_log_impl(&dword_19D52D000, v8, OS_LOG_TYPE_DEFAULT, "WebContent[%d]: [webPageID=%llu, frameID=%llu, resourceID=%llu] WebResourceLoader::didReceiveResource: Unable to create FragmentedSharedBuffer", v10, 0x26u);
  }

  if (v8)
  {
    os_release(v8);
  }
}

void WebKit::LogStream::wEBLOADERSTRATEGY_SCHEDULELOAD(WebKit::LogStream *this, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v17 = *MEMORY[0x1E69E9840];
  v8 = os_log_create("com.apple.WebKit", "Network");
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = *(this + 8);
    v10[0] = 67109888;
    v10[1] = v9;
    v11 = 2048;
    v12 = a2;
    v13 = 2048;
    v14 = a3;
    v15 = 2048;
    v16 = a4;
    _os_log_impl(&dword_19D52D000, v8, OS_LOG_TYPE_DEFAULT, "WebContent[%d]: [webPageID=%llu, frameID=%llu, resourceID=%llu] WebLoaderStrategy::scheduleLoad: URL will be scheduled with the NetworkProcess", v10, 0x26u);
  }

  if (v8)
  {
    os_release(v8);
  }
}

void WebKit::LogStream::wEBLOADERSTRATEGY_SCHEDULELOAD_URL_LOADED_AS_DATA(WebKit::LogStream *this, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v17 = *MEMORY[0x1E69E9840];
  v8 = os_log_create("com.apple.WebKit", "Network");
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = *(this + 8);
    v10[0] = 67109888;
    v10[1] = v9;
    v11 = 2048;
    v12 = a2;
    v13 = 2048;
    v14 = a3;
    v15 = 2048;
    v16 = a4;
    _os_log_impl(&dword_19D52D000, v8, OS_LOG_TYPE_DEFAULT, "WebContent[%d]: [webPageID=%llu, frameID=%llu, resourceID=%llu] WebLoaderStrategy::scheduleLoad: URL will be loaded as data", v10, 0x26u);
  }

  if (v8)
  {
    os_release(v8);
  }
}

void WebKit::LogStream::wEBLOADERSTRATEGY_SCHEDULELOAD_RESOURCE_SCHEDULED_WITH_NETWORKPROCESS(WebKit::LogStream *this, uint64_t a2, uint64_t a3, uint64_t a4, int a5, uint64_t a6)
{
  v25 = *MEMORY[0x1E69E9840];
  v12 = os_log_create("com.apple.WebKit", "Network");
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v13 = *(this + 8);
    v14[0] = 67110400;
    v14[1] = v13;
    v15 = 2048;
    v16 = a2;
    v17 = 2048;
    v18 = a3;
    v19 = 2048;
    v20 = a4;
    v21 = 1024;
    v22 = a5;
    v23 = 2048;
    v24 = a6;
    _os_log_impl(&dword_19D52D000, v12, OS_LOG_TYPE_DEFAULT, "WebContent[%d]: [webPageID=%llu, frameID=%llu, resourceID=%llu] WebLoaderStrategy::scheduleLoad: Resource is being scheduled with the NetworkProcess (priority=%d, existingNetworkResourceLoadIdentifierToResume=%llu)", v14, 0x36u);
  }

  if (v12)
  {
    os_release(v12);
  }
}

void WebKit::LogStream::wEBFRAMELOADERCLIENT_NAVIGATIONACTIONDATA_NO_WEBPAGE(WebKit::LogStream *this, uint64_t a2, uint64_t a3)
{
  v13 = *MEMORY[0x1E69E9840];
  v6 = os_log_create("com.apple.WebKit", "Network");
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = *(this + 8);
    v8[0] = 67109632;
    v8[1] = v7;
    v9 = 2048;
    v10 = a2;
    v11 = 2048;
    v12 = a3;
    _os_log_impl(&dword_19D52D000, v6, OS_LOG_TYPE_DEFAULT, "WebContent[%d]: [webFrameID=%llu, webPageID=%llu] WebFrameLoaderClient::navigationActionData: returning std::nullopt because there's no web page", v8, 0x1Cu);
  }

  if (v6)
  {
    os_release(v6);
  }
}

void WebKit::LogStream::wEBFRAMELOADERCLIENT_NAVIGATIONACTIONDATA_EMPTY_REQUEST(WebKit::LogStream *this, uint64_t a2, uint64_t a3)
{
  v13 = *MEMORY[0x1E69E9840];
  v6 = os_log_create("com.apple.WebKit", "Network");
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = *(this + 8);
    v8[0] = 67109632;
    v8[1] = v7;
    v9 = 2048;
    v10 = a2;
    v11 = 2048;
    v12 = a3;
    _os_log_impl(&dword_19D52D000, v6, OS_LOG_TYPE_DEFAULT, "WebContent[%d]: [webFrameID=%llu, webPageID=%llu] WebFrameLoaderClient::dispatchDecidePolicyForNavigationAction: returning std::nullopt because request is empty", v8, 0x1Cu);
  }

  if (v6)
  {
    os_release(v6);
  }
}

void WebKit::LogStream::wEBFRAMELOADERCLIENT_NAVIGATIONACTIONDATA_NO_FRAME(WebKit::LogStream *this, uint64_t a2, uint64_t a3)
{
  v13 = *MEMORY[0x1E69E9840];
  v6 = os_log_create("com.apple.WebKit", "Network");
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = *(this + 8);
    v8[0] = 67109632;
    v8[1] = v7;
    v9 = 2048;
    v10 = a2;
    v11 = 2048;
    v12 = a3;
    _os_log_impl(&dword_19D52D000, v6, OS_LOG_TYPE_DEFAULT, "WebContent[%d]: [webFrameID=%llu, webPageID=%llu] WebFrameLoaderClient::dispatchDecidePolicyForNavigationAction: returning std::nullopt because frame does not exist", v8, 0x1Cu);
  }

  if (v6)
  {
    os_release(v6);
  }
}

void WebKit::LogStream::wEBFRAMELOADERCLIENT_DISPATCHDECIDEPOLICYFORNAVIGATIONACTION_SYNC_IPC_FAILED(WebKit::LogStream *this, uint64_t a2, uint64_t a3, int a4)
{
  v17 = *MEMORY[0x1E69E9840];
  v8 = os_log_create("com.apple.WebKit", "Network");
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = *(this + 8);
    v10[0] = 67109888;
    v10[1] = v9;
    v11 = 2048;
    v12 = a2;
    v13 = 2048;
    v14 = a3;
    v15 = 1024;
    v16 = a4;
    _os_log_impl(&dword_19D52D000, v8, OS_LOG_TYPE_DEFAULT, "WebContent[%d]: [webFrameID=%llu, webPageID=%llu] WebFrameLoaderClient::dispatchDecidePolicyForNavigationAction: ignoring because of failing to send sync IPC, error = %hhu", v10, 0x22u);
  }

  if (v8)
  {
    os_release(v8);
  }
}

void WebKit::LogStream::wEBFRAMELOADERCLIENT_DISPATCHDECIDEPOLICYFORNAVIGATIONACTION_GOT_POLICYACTION_FROM_SYNC_IPC(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v18 = *MEMORY[0x1E69E9840];
  v8 = os_log_create("com.apple.WebKit", "Network");
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = *(a1 + 32);
    if (*a4)
    {
      v10 = *a4 + 16;
    }

    else
    {
      v10 = 0;
    }

    v11[0] = 67109890;
    v11[1] = v9;
    v12 = 2048;
    v13 = a2;
    v14 = 2048;
    v15 = a3;
    v16 = 2082;
    v17 = v10;
    _os_log_impl(&dword_19D52D000, v8, OS_LOG_TYPE_DEFAULT, "WebContent[%d]: [webFrameID=%llu, webPageID=%llu] WebFrameLoaderClient::dispatchDecidePolicyForNavigationAction: Got policyAction %{public}s from sync IPC", v11, 0x26u);
  }

  if (v8)
  {
    os_release(v8);
  }
}

void WebKit::LogStream::wEBFRAMELOADERCLIENT_DISPATCHDECIDEPOLICYFORNAVIGATIONACTION_GOT_POLICYACTION_FROM_ASYNC_IPC(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v18 = *MEMORY[0x1E69E9840];
  v8 = os_log_create("com.apple.WebKit", "Network");
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = *(a1 + 32);
    if (*a4)
    {
      v10 = *a4 + 16;
    }

    else
    {
      v10 = 0;
    }

    v11[0] = 67109890;
    v11[1] = v9;
    v12 = 2048;
    v13 = a2;
    v14 = 2048;
    v15 = a3;
    v16 = 2082;
    v17 = v10;
    _os_log_impl(&dword_19D52D000, v8, OS_LOG_TYPE_DEFAULT, "WebContent[%d]: [webFrameID=%llu, webPageID=%llu] WebFrameLoaderClient::dispatchDecidePolicyForNavigationAction: Got policyAction %{public}s from async IPC", v11, 0x26u);
  }

  if (v8)
  {
    os_release(v8);
  }
}

void WebKit::LogStream::wEBPAGE_MARK_LAYERS_VOLATILE(WebKit::LogStream *this, uint64_t a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v4 = os_log_create("com.apple.WebKit", "Layers");
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(this + 8);
    v6[0] = 67109376;
    v6[1] = v5;
    v7 = 2048;
    v8 = a2;
    _os_log_impl(&dword_19D52D000, v4, OS_LOG_TYPE_DEFAULT, "WebContent[%d]: [webPageID=%llu] WebPage::markLayersVolatile", v6, 0x12u);
  }

  if (v4)
  {
    os_release(v4);
  }
}

void WebKit::LogStream::wEBPAGE_FREEZE_LAYER_TREE(WebKit::LogStream *this, uint64_t a2, int a3, int a4, int a5)
{
  v21 = *MEMORY[0x1E69E9840];
  v10 = os_log_create("com.apple.WebKit", "ProcessSuspension");
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = *(this + 8);
    v12[0] = 67110144;
    v12[1] = v11;
    v13 = 2048;
    v14 = a2;
    v15 = 1024;
    v16 = a3;
    v17 = 1024;
    v18 = a4;
    v19 = 1024;
    v20 = a5;
    _os_log_impl(&dword_19D52D000, v10, OS_LOG_TYPE_DEFAULT, "WebContent[%d]: [webPageID=%llu] WebPage::freezeLayerTree: Adding a reason to freeze layer tree (reason=%d, new=%d, old=%d)", v12, 0x24u);
  }

  if (v10)
  {
    os_release(v10);
  }
}

void WebKit::LogStream::wEBPAGE_UNFREEZE_LAYER_TREE(WebKit::LogStream *this, uint64_t a2, int a3, int a4, int a5)
{
  v21 = *MEMORY[0x1E69E9840];
  v10 = os_log_create("com.apple.WebKit", "ProcessSuspension");
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = *(this + 8);
    v12[0] = 67110144;
    v12[1] = v11;
    v13 = 2048;
    v14 = a2;
    v15 = 1024;
    v16 = a3;
    v17 = 1024;
    v18 = a4;
    v19 = 1024;
    v20 = a5;
    _os_log_impl(&dword_19D52D000, v10, OS_LOG_TYPE_DEFAULT, "WebContent[%d]: [webPageID=%llu] WebPage::unfreezeLayerTree: Removing a reason to freeze layer tree (reason=%d, new=%d, old=%d)", v12, 0x24u);
  }

  if (v10)
  {
    os_release(v10);
  }
}

void WebKit::LogStream::wEBPAGE_FAILED_TO_MARK_ALL_LAYERS_VOLATILE(WebKit::LogStream *this, uint64_t a2, double a3)
{
  v13 = *MEMORY[0x1E69E9840];
  v6 = os_log_create("com.apple.WebKit", "ProcessSuspension");
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = *(this + 8);
    v8[0] = 67109632;
    v8[1] = v7;
    v9 = 2048;
    v10 = a2;
    v11 = 2048;
    v12 = a3;
    _os_log_impl(&dword_19D52D000, v6, OS_LOG_TYPE_DEFAULT, "WebContent[%d]: [webPageID=%llu] WebPage::markLayersVolatile: Failed to mark all layers as volatile, will retry in %g ms", v8, 0x1Cu);
  }

  if (v6)
  {
    os_release(v6);
  }
}

void WebKit::LogStream::wEBPAGE_LOADREQUEST(WebKit::LogStream *this, uint64_t a2, uint64_t a3, int a4, int a5, uint64_t a6)
{
  v25 = *MEMORY[0x1E69E9840];
  v12 = os_log_create("com.apple.WebKit", "Loading");
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v13 = *(this + 8);
    v14[0] = 67110400;
    v14[1] = v13;
    v15 = 2048;
    v16 = a2;
    v17 = 2048;
    v18 = a3;
    v19 = 1024;
    v20 = a4;
    v21 = 1024;
    v22 = a5;
    v23 = 2048;
    v24 = a6;
    _os_log_impl(&dword_19D52D000, v12, OS_LOG_TYPE_DEFAULT, "WebContent[%d]: [webPageID=%llu] WebPage::loadRequest: navigationID=%llu, shouldTreatAsContinuingLoad=%u, lastNavigationWasAppInitiated=%d, existingNetworkResourceLoadIdentifierToResume=%llu", v14, 0x32u);
  }

  if (v12)
  {
    os_release(v12);
  }
}

void WebKit::LogStream::wEBPAGE_CLOSE(WebKit::LogStream *this, uint64_t a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v4 = os_log_create("com.apple.WebKit", "Loading");
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(this + 8);
    v6[0] = 67109376;
    v6[1] = v5;
    v7 = 2048;
    v8 = a2;
    _os_log_impl(&dword_19D52D000, v4, OS_LOG_TYPE_DEFAULT, "WebContent[%d]: [webPageID=%llu] WebPage::close", v6, 0x12u);
  }

  if (v4)
  {
    os_release(v4);
  }
}

void WebKit::LogStream::wEBPROCESS_PREPARE_TO_SUSPEND(WebKit::LogStream *this, uint64_t a2, int a3, double a4)
{
  v17 = *MEMORY[0x1E69E9840];
  v8 = os_log_create("com.apple.WebKit", "ProcessSuspension");
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = *(this + 8);
    v10[0] = 67109888;
    v10[1] = v9;
    v11 = 2048;
    v12 = a2;
    v13 = 1024;
    v14 = a3;
    v15 = 2048;
    v16 = a4;
    _os_log_impl(&dword_19D52D000, v8, OS_LOG_TYPE_DEFAULT, "WebContent[%d]: [sessionID=%llu] WebProcess::prepareToSuspend: isSuspensionImminent=%d, remainingRunTime=%fs", v10, 0x22u);
  }

  if (v8)
  {
    os_release(v8);
  }
}

void WebKit::LogStream::wEBPROCESS_FREEZE_ALL_LAYER_TREES(WebKit::LogStream *this, uint64_t a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v4 = os_log_create("com.apple.WebKit", "ProcessSuspension");
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(this + 8);
    v6[0] = 67109376;
    v6[1] = v5;
    v7 = 2048;
    v8 = a2;
    _os_log_impl(&dword_19D52D000, v4, OS_LOG_TYPE_DEFAULT, "WebContent[%d]: [sessionID=%llu] WebProcess::freezeAllLayerTrees: WebProcess is freezing all layer trees", v6, 0x12u);
  }

  if (v4)
  {
    os_release(v4);
  }
}

void WebKit::LogStream::wEBPROCESS_DESTROY_RENDERING_RESOURCES(WebKit::LogStream *this, uint64_t a2, double a3)
{
  v13 = *MEMORY[0x1E69E9840];
  v6 = os_log_create("com.apple.WebKit", "ProcessSuspension");
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = *(this + 8);
    v8[0] = 67109632;
    v8[1] = v7;
    v9 = 2048;
    v10 = a2;
    v11 = 2048;
    v12 = a3;
    _os_log_impl(&dword_19D52D000, v6, OS_LOG_TYPE_DEFAULT, "WebContent[%d]: [sessionID=%llu] WebProcess::destroyRenderingResources: took %.2fms", v8, 0x1Cu);
  }

  if (v6)
  {
    os_release(v6);
  }
}

void WebKit::LogStream::wEBPROCESS_MARK_ALL_LAYERS_VOLATILE(WebKit::LogStream *this, uint64_t a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v4 = os_log_create("com.apple.WebKit", "ProcessSuspension");
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(this + 8);
    v6[0] = 67109376;
    v6[1] = v5;
    v7 = 2048;
    v8 = a2;
    _os_log_impl(&dword_19D52D000, v4, OS_LOG_TYPE_DEFAULT, "WebContent[%d]: [sessionID=%llu] WebProcess::markAllLayersVolatile:", v6, 0x12u);
  }

  if (v4)
  {
    os_release(v4);
  }
}

void WebKit::LogStream::wEBPROCESS_READY_TO_SUSPEND(WebKit::LogStream *this, uint64_t a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v4 = os_log_create("com.apple.WebKit", "ProcessSuspension");
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(this + 8);
    v6[0] = 67109376;
    v6[1] = v5;
    v7 = 2048;
    v8 = a2;
    _os_log_impl(&dword_19D52D000, v4, OS_LOG_TYPE_DEFAULT, "WebContent[%d]: [sessionID=%llu] WebProcess::prepareToSuspend: Process is ready to suspend", v6, 0x12u);
  }

  if (v4)
  {
    os_release(v4);
  }
}

void WebKit::LogStream::wEBLOCALFRAMELOADERCLIENT_COMPLETE_PAGE_TRANSITION_IF_NEEDED(WebKit::LogStream *this, uint64_t a2, uint64_t a3)
{
  v13 = *MEMORY[0x1E69E9840];
  v6 = os_log_create("com.apple.WebKit", "Layout");
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = *(this + 8);
    v8[0] = 67109632;
    v8[1] = v7;
    v9 = 2048;
    v10 = a2;
    v11 = 2048;
    v12 = a3;
    _os_log_impl(&dword_19D52D000, v6, OS_LOG_TYPE_DEFAULT, "WebContent[%d]: [webFrameID=%llu, webPageID=%llu] WebLocalFrameLoaderClient::completePageTransitionIfNeeded: dispatching didCompletePageTransition", v8, 0x1Cu);
  }

  if (v6)
  {
    os_release(v6);
  }
}

void WebKit::LogStream::wEBLOCALFRAMELOADERCLIENT_DISPATCH_DID_FIRST_LAYOUT_FOR_FRAME(WebKit::LogStream *this, uint64_t a2, uint64_t a3)
{
  v13 = *MEMORY[0x1E69E9840];
  v6 = os_log_create("com.apple.WebKit", "Layout");
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = *(this + 8);
    v8[0] = 67109632;
    v8[1] = v7;
    v9 = 2048;
    v10 = a2;
    v11 = 2048;
    v12 = a3;
    _os_log_impl(&dword_19D52D000, v6, OS_LOG_TYPE_DEFAULT, "WebContent[%d]: [webFrameID=%llu, webPageID=%llu] WebLocalFrameLoaderClient::dispatchDidReachLayoutMilestone: dispatching DidFirstLayoutForFrame", v8, 0x1Cu);
  }

  if (v6)
  {
    os_release(v6);
  }
}

void WebKit::LogStream::wEBLOCALFRAMELOADERCLIENT_DISPATCH_DID_REACH_LAYOUT_MILESTONE(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v18 = *MEMORY[0x1E69E9840];
  v8 = os_log_create("com.apple.WebKit", "Layout");
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = *(a1 + 32);
    if (*a4)
    {
      v10 = *a4 + 16;
    }

    else
    {
      v10 = 0;
    }

    v11[0] = 67109890;
    v11[1] = v9;
    v12 = 2048;
    v13 = a2;
    v14 = 2048;
    v15 = a3;
    v16 = 2082;
    v17 = v10;
    _os_log_impl(&dword_19D52D000, v8, OS_LOG_TYPE_DEFAULT, "WebContent[%d]: [webFrameID=%llu, webPageID=%llu] WebLocalFrameLoaderClient::dispatchDidReachLayoutMilestone: dispatching DidReachLayoutMilestone (milestones=%{public}s)", v11, 0x26u);
  }

  if (v8)
  {
    os_release(v8);
  }
}

void WebKit::LogStream::wEBLOCALFRAMELOADERCLIENT_DISPATCH_DID_FIRST_VISUALLY_NONEMPTY_LAYOUT(WebKit::LogStream *this, uint64_t a2, uint64_t a3)
{
  v13 = *MEMORY[0x1E69E9840];
  v6 = os_log_create("com.apple.WebKit", "Layout");
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = *(this + 8);
    v8[0] = 67109632;
    v8[1] = v7;
    v9 = 2048;
    v10 = a2;
    v11 = 2048;
    v12 = a3;
    _os_log_impl(&dword_19D52D000, v6, OS_LOG_TYPE_DEFAULT, "WebContent[%d]: [webFrameID=%llu, webPageID=%llu] WebLocalFrameLoaderClient::dispatchDidReachLayoutMilestone: dispatching DidFirstVisuallyNonEmptyLayoutForFrame", v8, 0x1Cu);
  }

  if (v6)
  {
    os_release(v6);
  }
}

void WebKit::LogStream::rEMOTE_RENDERING_BACKEND_PROXY_CREATED_RENDERING_BACKEND(WebKit::LogStream *this, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v17 = *MEMORY[0x1E69E9840];
  v8 = os_log_create("com.apple.WebKit", "RemoteLayerBuffers");
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = *(this + 8);
    v10[0] = 67109888;
    v10[1] = v9;
    v11 = 2048;
    v12 = a2;
    v13 = 2048;
    v14 = a3;
    v15 = 2048;
    v16 = a4;
    _os_log_impl(&dword_19D52D000, v8, OS_LOG_TYPE_DEFAULT, "WebContent[%d]: [renderingBackend=%llu] Created rendering backend for pageProxyID=%llu, webPageID=%llu", v10, 0x26u);
  }

  if (v8)
  {
    os_release(v8);
  }
}

void WebKit::LogStream::vIDEOPRESENTATIONMANAGER_SETVIDEOLAYERFRAMEFENCED(WebKit::LogStream *this, uint64_t a2, int a3, uint64_t a4)
{
  v17 = *MEMORY[0x1E69E9840];
  v8 = os_log_create("com.apple.WebKit", "Media");
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v9 = *(this + 8);
    v10[0] = 67109888;
    v10[1] = v9;
    v11 = 2048;
    v12 = a2;
    v13 = 1024;
    v14 = a3;
    v15 = 2048;
    v16 = a4;
    _os_log_impl(&dword_19D52D000, v8, OS_LOG_TYPE_INFO, "WebContent[%d]: VideoPresentationManager::setVideoLayerFrameFenced(%llu): send right %d, fence data size %llu", v10, 0x22u);
  }

  if (v8)
  {
    os_release(v8);
  }
}

void WebKit::LogStream::mEDIAPLAYERPRIVATEREMOTE_LAYERHOSTINGCONTEXTCHANGED(WebKit::LogStream *this)
{
  v5 = *MEMORY[0x1E69E9840];
  v2 = os_log_create("com.apple.WebKit", "Media");
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(this + 8);
    v4[0] = 67109120;
    v4[1] = v3;
    _os_log_impl(&dword_19D52D000, v2, OS_LOG_TYPE_DEFAULT, "WebContent[%d]: MediaPlayerPrivateRemote::layerHostingContextChanged", v4, 8u);
  }

  if (v2)
  {
    os_release(v2);
  }
}

void WebKit::LogStream::sUBRESOURCELOADER_DIDFINISHLOADING(WebKit::LogStream *this, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v17 = *MEMORY[0x1E69E9840];
  v8 = os_log_create("com.apple.WebKit", "ResourceLoading");
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = *(this + 8);
    v10[0] = 67109888;
    v10[1] = v9;
    v11 = 2048;
    v12 = a2;
    v13 = 2048;
    v14 = a3;
    v15 = 2048;
    v16 = a4;
    _os_log_impl(&dword_19D52D000, v8, OS_LOG_TYPE_DEFAULT, "WebContent[%d]: [pageID=%llu, frameID=%llu, resourceID=%llu SubResourceLoader::didFinishLoading", v10, 0x26u);
  }

  if (v8)
  {
    os_release(v8);
  }
}

void WebKit::LogStream::sUBRESOURCELOADER_WILLSENDREQUESTINTERNAL(WebKit::LogStream *this, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v17 = *MEMORY[0x1E69E9840];
  v8 = os_log_create("com.apple.WebKit", "ResourceLoading");
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = *(this + 8);
    v10[0] = 67109888;
    v10[1] = v9;
    v11 = 2048;
    v12 = a2;
    v13 = 2048;
    v14 = a3;
    v15 = 2048;
    v16 = a4;
    _os_log_impl(&dword_19D52D000, v8, OS_LOG_TYPE_DEFAULT, "WebContent[%d]: [pageID=%llu, frameID=%llu, resourceID=%llu SubResourceLoader::willSendRequestInternal: resource load canceled because new request is invalid", v10, 0x26u);
  }

  if (v8)
  {
    os_release(v8);
  }
}

void WebKit::LogStream::sUBRESOURCELOADER_WILLSENDREQUESTINTERNAL_CANCELLED_INVALID_NEW_REQUEST(WebKit::LogStream *this, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v17 = *MEMORY[0x1E69E9840];
  v8 = os_log_create("com.apple.WebKit", "ResourceLoading");
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = *(this + 8);
    v10[0] = 67109888;
    v10[1] = v9;
    v11 = 2048;
    v12 = a2;
    v13 = 2048;
    v14 = a3;
    v15 = 2048;
    v16 = a4;
    _os_log_impl(&dword_19D52D000, v8, OS_LOG_TYPE_DEFAULT, "WebContent[%d]: [pageID=%llu, frameID=%llu, resourceID=%llu SubResourceLoader::willSendRequestInternal: resource load canceled because new request is NULL (1)", v10, 0x26u);
  }

  if (v8)
  {
    os_release(v8);
  }
}

void WebKit::LogStream::sUBRESOURCELOADER_WILLSENDREQUESTINTERNAL_CANCELLED_TERMINAL_STATE(WebKit::LogStream *this, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v17 = *MEMORY[0x1E69E9840];
  v8 = os_log_create("com.apple.WebKit", "ResourceLoading");
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = *(this + 8);
    v10[0] = 67109888;
    v10[1] = v9;
    v11 = 2048;
    v12 = a2;
    v13 = 2048;
    v14 = a3;
    v15 = 2048;
    v16 = a4;
    _os_log_impl(&dword_19D52D000, v8, OS_LOG_TYPE_DEFAULT, "WebContent[%d]: [pageID=%llu, frameID=%llu, resourceID=%llu SubResourceLoader::willSendRequestInternal: resource load canceled because reached terminal state", v10, 0x26u);
  }

  if (v8)
  {
    os_release(v8);
  }
}

void WebKit::LogStream::sUBRESOURCELOADER_WILLSENDREQUESTINTERNAL_TERMINAL_STATE_CALLING_COMPLETION_HANDLER(WebKit::LogStream *this, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v17 = *MEMORY[0x1E69E9840];
  v8 = os_log_create("com.apple.WebKit", "ResourceLoading");
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = *(this + 8);
    v10[0] = 67109888;
    v10[1] = v9;
    v11 = 2048;
    v12 = a2;
    v13 = 2048;
    v14 = a3;
    v15 = 2048;
    v16 = a4;
    _os_log_impl(&dword_19D52D000, v8, OS_LOG_TYPE_DEFAULT, "WebContent[%d]: [pageID=%llu, frameID=%llu, resourceID=%llu SubResourceLoader::willSendRequestInternal: reached terminal state; calling completion handler", v10, 0x26u);
  }

  if (v8)
  {
    os_release(v8);
  }
}

void WebKit::LogStream::sUBRESOURCELOADER_WILLSENDREQUESTINTERNAL_CANCELLED_INVALID_REQUEST(WebKit::LogStream *this, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v17 = *MEMORY[0x1E69E9840];
  v8 = os_log_create("com.apple.WebKit", "ResourceLoading");
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = *(this + 8);
    v10[0] = 67109888;
    v10[1] = v9;
    v11 = 2048;
    v12 = a2;
    v13 = 2048;
    v14 = a3;
    v15 = 2048;
    v16 = a4;
    _os_log_impl(&dword_19D52D000, v8, OS_LOG_TYPE_DEFAULT, "WebContent[%d]: [pageID=%llu, frameID=%llu, resourceID=%llu SubResourceLoader::willSendRequestInternal: resource load canceled because request is NULL (2)", v10, 0x26u);
  }

  if (v8)
  {
    os_release(v8);
  }
}

void WebKit::LogStream::sUBRESOURCELOADER_WILLSENDREQUESTINTERNAL_RESOURCELOAD_FINISHED(WebKit::LogStream *this, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v17 = *MEMORY[0x1E69E9840];
  v8 = os_log_create("com.apple.WebKit", "ResourceLoading");
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = *(this + 8);
    v10[0] = 67109888;
    v10[1] = v9;
    v11 = 2048;
    v12 = a2;
    v13 = 2048;
    v14 = a3;
    v15 = 2048;
    v16 = a4;
    _os_log_impl(&dword_19D52D000, v8, OS_LOG_TYPE_DEFAULT, "WebContent[%d]: [pageID=%llu, frameID=%llu, resourceID=%llu SubResourceLoader::willSendRequestInternal: resource load finished; calling completion handler", v10, 0x26u);
  }

  if (v8)
  {
    os_release(v8);
  }
}

void WebKit::LogStream::sUBRESOURCELOADER_WILLSENDREQUESTINTERNAL_RESOURCELOAD_CANCELLED_REDIRECT_NOT_ALLOWED(WebKit::LogStream *this, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v17 = *MEMORY[0x1E69E9840];
  v8 = os_log_create("com.apple.WebKit", "ResourceLoading");
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = *(this + 8);
    v10[0] = 67109888;
    v10[1] = v9;
    v11 = 2048;
    v12 = a2;
    v13 = 2048;
    v14 = a3;
    v15 = 2048;
    v16 = a4;
    _os_log_impl(&dword_19D52D000, v8, OS_LOG_TYPE_DEFAULT, "WebContent[%d]: [pageID=%llu, frameID=%llu, resourceID=%llu SubResourceLoader::willSendRequestInternal: resource load canceled because not allowed to follow a redirect", v10, 0x26u);
  }

  if (v8)
  {
    os_release(v8);
  }
}

void WebKit::LogStream::sUBRESOURCELOADER_WILLSENDREQUESTINTERNAL_REACHED_TERMINAL_STATE(WebKit::LogStream *this, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v17 = *MEMORY[0x1E69E9840];
  v8 = os_log_create("com.apple.WebKit", "ResourceLoading");
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = *(this + 8);
    v10[0] = 67109888;
    v10[1] = v9;
    v11 = 2048;
    v12 = a2;
    v13 = 2048;
    v14 = a3;
    v15 = 2048;
    v16 = a4;
    _os_log_impl(&dword_19D52D000, v8, OS_LOG_TYPE_DEFAULT, "WebContent[%d]: [pageID=%llu, frameID=%llu, resourceID=%llu SubResourceLoader::willSendRequestInternal: reached terminal state", v10, 0x26u);
  }

  if (v8)
  {
    os_release(v8);
  }
}

void WebKit::LogStream::sUBRESOURCELOADER_WILLSENDREQUESTINTERNAL_RESOURCE_LOAD_COMPLETED(WebKit::LogStream *this, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v17 = *MEMORY[0x1E69E9840];
  v8 = os_log_create("com.apple.WebKit", "ResourceLoading");
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = *(this + 8);
    v10[0] = 67109888;
    v10[1] = v9;
    v11 = 2048;
    v12 = a2;
    v13 = 2048;
    v14 = a3;
    v15 = 2048;
    v16 = a4;
    _os_log_impl(&dword_19D52D000, v8, OS_LOG_TYPE_DEFAULT, "WebContent[%d]: [pageID=%llu, frameID=%llu, resourceID=%llu SubResourceLoader::willSendRequestInternal: resource load completed", v10, 0x26u);
  }

  if (v8)
  {
    os_release(v8);
  }
}

void WebKit::LogStream::sUBRESOURCELOADER_WILLSENDREQUESTINTERNAL_RESOURCE_LOAD_CANCELLED_TOO_MANY_REDIRECTS(WebKit::LogStream *this, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v17 = *MEMORY[0x1E69E9840];
  v8 = os_log_create("com.apple.WebKit", "ResourceLoading");
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = *(this + 8);
    v10[0] = 67109888;
    v10[1] = v9;
    v11 = 2048;
    v12 = a2;
    v13 = 2048;
    v14 = a3;
    v15 = 2048;
    v16 = a4;
    _os_log_impl(&dword_19D52D000, v8, OS_LOG_TYPE_DEFAULT, "WebContent[%d]: [pageID=%llu, frameID=%llu, resourceID=%llu SubResourceLoader::willSendRequestInternal: resource load canceled because too many redirects", v10, 0x26u);
  }

  if (v8)
  {
    os_release(v8);
  }
}

void WebKit::LogStream::sUBRESOURCELOADER_WILLSENDREQUESTINTERNAL_RESOURCE_LOAD_CANCELLED_CANNOT_REQUEST_AFTER_REDIRECTION(WebKit::LogStream *this, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v17 = *MEMORY[0x1E69E9840];
  v8 = os_log_create("com.apple.WebKit", "ResourceLoading");
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = *(this + 8);
    v10[0] = 67109888;
    v10[1] = v9;
    v11 = 2048;
    v12 = a2;
    v13 = 2048;
    v14 = a3;
    v15 = 2048;
    v16 = a4;
    _os_log_impl(&dword_19D52D000, v8, OS_LOG_TYPE_DEFAULT, "WebContent[%d]: [pageID=%llu, frameID=%llu, resourceID=%llu SubResourceLoader::willSendRequestInternal: resource load canceled because CachedResourceLoader::updateRequestAfterRedirection (really CachedResourceLoader::canRequestAfterRedirection) said no", v10, 0x26u);
  }

  if (v8)
  {
    os_release(v8);
  }
}

void WebKit::LogStream::sUBRESOURCELOADER_WILLSENDREQUESTINTERNAL_RESOURCE_LOAD_CANCELLED_AFTER_USING_BLOCKED_PORT(WebKit::LogStream *this, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v17 = *MEMORY[0x1E69E9840];
  v8 = os_log_create("com.apple.WebKit", "ResourceLoading");
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = *(this + 8);
    v10[0] = 67109888;
    v10[1] = v9;
    v11 = 2048;
    v12 = a2;
    v13 = 2048;
    v14 = a3;
    v15 = 2048;
    v16 = a4;
    _os_log_impl(&dword_19D52D000, v8, OS_LOG_TYPE_DEFAULT, "WebContent[%d]: [pageID=%llu, frameID=%llu, resourceID=%llu SubResourceLoader::willSendRequestInternal: resource load (redirect) canceled because it attempted to use a blocked port", v10, 0x26u);
  }

  if (v8)
  {
    os_release(v8);
  }
}

void WebKit::LogStream::sUBRESOURCELOADER_WILLSENDREQUESTINTERNAL_RESOURCE_LOAD_CANCELLED_AFTER_REDIRECT_DENIED_BY_CORS_POLICY(WebKit::LogStream *this, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v17 = *MEMORY[0x1E69E9840];
  v8 = os_log_create("com.apple.WebKit", "ResourceLoading");
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = *(this + 8);
    v10[0] = 67109888;
    v10[1] = v9;
    v11 = 2048;
    v12 = a2;
    v13 = 2048;
    v14 = a3;
    v15 = 2048;
    v16 = a4;
    _os_log_impl(&dword_19D52D000, v8, OS_LOG_TYPE_DEFAULT, "WebContent[%d]: [pageID=%llu, frameID=%llu, resourceID=%llu SubResourceLoader::willSendRequestInternal: resource load canceled because cross-origin redirection denied by CORS policy", v10, 0x26u);
  }

  if (v8)
  {
    os_release(v8);
  }
}

void WebKit::LogStream::sUBRESOURCELOADER_WILLSENDREQUESTINTERNAL_RESOURCE_LOAD_CANCELLED_AFTER_IMAGE_BEING_DEFERRED(WebKit::LogStream *this, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v17 = *MEMORY[0x1E69E9840];
  v8 = os_log_create("com.apple.WebKit", "ResourceLoading");
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = *(this + 8);
    v10[0] = 67109888;
    v10[1] = v9;
    v11 = 2048;
    v12 = a2;
    v13 = 2048;
    v14 = a3;
    v15 = 2048;
    v16 = a4;
    _os_log_impl(&dword_19D52D000, v8, OS_LOG_TYPE_DEFAULT, "WebContent[%d]: [pageID=%llu, frameID=%llu, resourceID=%llu SubResourceLoader::willSendRequestInternal: resource load canceled because it's an image that should be deferred", v10, 0x26u);
  }

  if (v8)
  {
    os_release(v8);
  }
}

void WebKit::LogStream::sUBRESOURCELOADER_WILLSENDREQUESTINTERNAL_RESOURCE_DONE_NOTIFYING_CLIENTS(WebKit::LogStream *this, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v17 = *MEMORY[0x1E69E9840];
  v8 = os_log_create("com.apple.WebKit", "ResourceLoading");
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = *(this + 8);
    v10[0] = 67109888;
    v10[1] = v9;
    v11 = 2048;
    v12 = a2;
    v13 = 2048;
    v14 = a3;
    v15 = 2048;
    v16 = a4;
    _os_log_impl(&dword_19D52D000, v8, OS_LOG_TYPE_DEFAULT, "WebContent[%d]: [pageID=%llu, frameID=%llu, resourceID=%llu SubResourceLoader::willSendRequestInternal: resource done notifying clients", v10, 0x26u);
  }

  if (v8)
  {
    os_release(v8);
  }
}

void WebKit::LogStream::sUBRESOURCELOADER_DIDRECEIVERESPONSE_CANCELING_LOAD_BLOCKED_BY_CONTENT_POLICY(WebKit::LogStream *this, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v17 = *MEMORY[0x1E69E9840];
  v8 = os_log_create("com.apple.WebKit", "ResourceLoading");
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = *(this + 8);
    v10[0] = 67109888;
    v10[1] = v9;
    v11 = 2048;
    v12 = a2;
    v13 = 2048;
    v14 = a3;
    v15 = 2048;
    v16 = a4;
    _os_log_impl(&dword_19D52D000, v8, OS_LOG_TYPE_DEFAULT, "WebContent[%d]: [pageID=%llu, frameID=%llu, resourceID=%llu SubResourceLoader::didReceiveResponse: canceling load because not allowed by content policy", v10, 0x26u);
  }

  if (v8)
  {
    os_release(v8);
  }
}

void WebKit::LogStream::sUBRESOURCELOADER_DIDRECEIVERESPONSE_CANCELING_LOAD_RECEIVED_UNEXPECTED_RANGE_RESPONSE(WebKit::LogStream *this, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v17 = *MEMORY[0x1E69E9840];
  v8 = os_log_create("com.apple.WebKit", "ResourceLoading");
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = *(this + 8);
    v10[0] = 67109888;
    v10[1] = v9;
    v11 = 2048;
    v12 = a2;
    v13 = 2048;
    v14 = a3;
    v15 = 2048;
    v16 = a4;
    _os_log_impl(&dword_19D52D000, v8, OS_LOG_TYPE_DEFAULT, "WebContent[%d]: [pageID=%llu, frameID=%llu, resourceID=%llu SubResourceLoader::didReceiveResponse: canceling load because receiving a range requested response for a non-range request", v10, 0x26u);
  }

  if (v8)
  {
    os_release(v8);
  }
}

void WebKit::LogStream::sUBRESOURCELOADER_DIDRECEIVERESPONSE_CANCELING_LOAD_BECAUSE_OF_CROSS_ORIGIN_ACCESS_CONTROL(WebKit::LogStream *this, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v17 = *MEMORY[0x1E69E9840];
  v8 = os_log_create("com.apple.WebKit", "ResourceLoading");
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = *(this + 8);
    v10[0] = 67109888;
    v10[1] = v9;
    v11 = 2048;
    v12 = a2;
    v13 = 2048;
    v14 = a3;
    v15 = 2048;
    v16 = a4;
    _os_log_impl(&dword_19D52D000, v8, OS_LOG_TYPE_DEFAULT, "WebContent[%d]: [pageID=%llu, frameID=%llu, resourceID=%llu SubResourceLoader::didReceiveResponse: canceling load because of cross origin access control", v10, 0x26u);
  }

  if (v8)
  {
    os_release(v8);
  }
}

void WebKit::LogStream::sUBRESOURCELOADER_DIDRECEIVERESPONSE_CANCELING_LOAD_BECAUSE_OF_MULTIPART_NON_IMAGE(WebKit::LogStream *this, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v17 = *MEMORY[0x1E69E9840];
  v8 = os_log_create("com.apple.WebKit", "ResourceLoading");
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = *(this + 8);
    v10[0] = 67109888;
    v10[1] = v9;
    v11 = 2048;
    v12 = a2;
    v13 = 2048;
    v14 = a3;
    v15 = 2048;
    v16 = a4;
    _os_log_impl(&dword_19D52D000, v8, OS_LOG_TYPE_DEFAULT, "WebContent[%d]: [pageID=%llu, frameID=%llu, resourceID=%llu SubResourceLoader::didReceiveResponse: canceling load because something about a multi-part non-image", v10, 0x26u);
  }

  if (v8)
  {
    os_release(v8);
  }
}

void WebKit::LogStream::sUBRESOURCELOADER_DIDFINISHLOADING_CANCELED(WebKit::LogStream *this, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v17 = *MEMORY[0x1E69E9840];
  v8 = os_log_create("com.apple.WebKit", "ResourceLoading");
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = *(this + 8);
    v10[0] = 67109888;
    v10[1] = v9;
    v11 = 2048;
    v12 = a2;
    v13 = 2048;
    v14 = a3;
    v15 = 2048;
    v16 = a4;
    _os_log_impl(&dword_19D52D000, v8, OS_LOG_TYPE_DEFAULT, "WebContent[%d]: [pageID=%llu, frameID=%llu, resourceID=%llu SubResourceLoader::didFinishLoading: was canceled", v10, 0x26u);
  }

  if (v8)
  {
    os_release(v8);
  }
}

void WebKit::LogStream::sUBRESOURCELOADER_DIDFINISHLOADING_REACHED_TERMINAL_STATE(WebKit::LogStream *this, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v17 = *MEMORY[0x1E69E9840];
  v8 = os_log_create("com.apple.WebKit", "ResourceLoading");
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = *(this + 8);
    v10[0] = 67109888;
    v10[1] = v9;
    v11 = 2048;
    v12 = a2;
    v13 = 2048;
    v14 = a3;
    v15 = 2048;
    v16 = a4;
    _os_log_impl(&dword_19D52D000, v8, OS_LOG_TYPE_DEFAULT, "WebContent[%d]: [pageID=%llu, frameID=%llu, resourceID=%llu SubResourceLoader::didFinishLoading: reached terminal state", v10, 0x26u);
  }

  if (v8)
  {
    os_release(v8);
  }
}

void WebKit::LogStream::sUBRESOURCELOADER_DIDFINISHLOADING_DID_NOT_REACH_TERMINAL_STATE(WebKit::LogStream *this, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v17 = *MEMORY[0x1E69E9840];
  v8 = os_log_create("com.apple.WebKit", "ResourceLoading");
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = *(this + 8);
    v10[0] = 67109888;
    v10[1] = v9;
    v11 = 2048;
    v12 = a2;
    v13 = 2048;
    v14 = a3;
    v15 = 2048;
    v16 = a4;
    _os_log_impl(&dword_19D52D000, v8, OS_LOG_TYPE_DEFAULT, "WebContent[%d]: [pageID=%llu, frameID=%llu, resourceID=%llu SubResourceLoader::didFinishLoading: Did not reach terminal state", v10, 0x26u);
  }

  if (v8)
  {
    os_release(v8);
  }
}

void WebKit::LogStream::sUBRESOURCELOADER_DIDFAIL(WebKit::LogStream *this, uint64_t a2, uint64_t a3, uint64_t a4, int a5, int a6)
{
  v25 = *MEMORY[0x1E69E9840];
  v12 = os_log_create("com.apple.WebKit", "ResourceLoading");
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v13 = *(this + 8);
    v14[0] = 67110400;
    v14[1] = v13;
    v15 = 2048;
    v16 = a2;
    v17 = 2048;
    v18 = a3;
    v19 = 2048;
    v20 = a4;
    v21 = 1024;
    v22 = a5;
    v23 = 1024;
    v24 = a6;
    _os_log_impl(&dword_19D52D000, v12, OS_LOG_TYPE_DEFAULT, "WebContent[%d]: [pageID=%llu, frameID=%llu, resourceID=%llu SubResourceLoader::didFail: (type=%d, code=%d)", v14, 0x32u);
  }

  if (v12)
  {
    os_release(v12);
  }
}

void WebKit::LogStream::sUBRESOURCELOADER_WILLCANCEL(WebKit::LogStream *this, uint64_t a2, uint64_t a3, uint64_t a4, int a5, int a6)
{
  v25 = *MEMORY[0x1E69E9840];
  v12 = os_log_create("com.apple.WebKit", "ResourceLoading");
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v13 = *(this + 8);
    v14[0] = 67110400;
    v14[1] = v13;
    v15 = 2048;
    v16 = a2;
    v17 = 2048;
    v18 = a3;
    v19 = 2048;
    v20 = a4;
    v21 = 1024;
    v22 = a5;
    v23 = 1024;
    v24 = a6;
    _os_log_impl(&dword_19D52D000, v12, OS_LOG_TYPE_DEFAULT, "WebContent[%d]: [pageID=%llu, frameID=%llu, resourceID=%llu SubResourceLoader::willCancel: (type=%d, code=%d)", v14, 0x32u);
  }

  if (v12)
  {
    os_release(v12);
  }
}

void WebKit::LogStream::pROGRESSTRACKER_PROGRESSSTARTED(WebKit::LogStream *this, uint64_t a2, double a3, int a4, uint64_t a5, int a6)
{
  v25 = *MEMORY[0x1E69E9840];
  v12 = os_log_create("com.apple.WebKit", "Network");
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v13 = *(this + 8);
    v14[0] = 67110400;
    v14[1] = v13;
    v15 = 2048;
    v16 = a2;
    v17 = 2048;
    v18 = a3;
    v19 = 1024;
    v20 = a4;
    v21 = 2048;
    v22 = a5;
    v23 = 1024;
    v24 = a6;
    _os_log_impl(&dword_19D52D000, v12, OS_LOG_TYPE_DEFAULT, "WebContent[%d]: ProgressTracker::progressStarted: frameID %llu, value %f, tracked frames %d, originating frameID %llu, isMainLoad %d", v14, 0x32u);
  }

  if (v12)
  {
    os_release(v12);
  }
}

void WebKit::LogStream::pROGRESSTRACKER_PROGRESSCOMPLETED(WebKit::LogStream *this, uint64_t a2, double a3, int a4, uint64_t a5, int a6)
{
  v25 = *MEMORY[0x1E69E9840];
  v12 = os_log_create("com.apple.WebKit", "Network");
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v13 = *(this + 8);
    v14[0] = 67110400;
    v14[1] = v13;
    v15 = 2048;
    v16 = a2;
    v17 = 2048;
    v18 = a3;
    v19 = 1024;
    v20 = a4;
    v21 = 2048;
    v22 = a5;
    v23 = 1024;
    v24 = a6;
    _os_log_impl(&dword_19D52D000, v12, OS_LOG_TYPE_DEFAULT, "WebContent[%d]: ProgressTracker::progressCompleted: frameID %llu, value %f, tracked frames %d, originating frameID %llu, isMainLoad %d", v14, 0x32u);
  }

  if (v12)
  {
    os_release(v12);
  }
}

void WebKit::LogStream::pROGRESSTRACKER_FINALPROGRESSCOMPLETE(WebKit::LogStream *this, double a2, int a3, uint64_t a4, int a5, int a6)
{
  v25 = *MEMORY[0x1E69E9840];
  v12 = os_log_create("com.apple.WebKit", "Network");
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v13 = *(this + 8);
    v14[0] = 67110400;
    v14[1] = v13;
    v15 = 2048;
    v16 = a2;
    v17 = 1024;
    v18 = a3;
    v19 = 2048;
    v20 = a4;
    v21 = 1024;
    v22 = a5;
    v23 = 1024;
    v24 = a6;
    _os_log_impl(&dword_19D52D000, v12, OS_LOG_TYPE_DEFAULT, "WebContent[%d]: ProgressTracker::finalProgressComplete: value %f, tracked frames %d, originating frameID %llu, isMainLoad %d, isMainLoadProgressing %d", v14, 0x2Eu);
  }

  if (v12)
  {
    os_release(v12);
  }
}

void WebKit::LogStream::fRAMELOADER_SETPROVISIONALDOCUMENTLOADER(WebKit::LogStream *this, uint64_t a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6)
{
  v25 = *MEMORY[0x1E69E9840];
  v12 = os_log_create("com.apple.WebKit", "ResourceLoading");
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v13 = *(this + 8);
    v14[0] = 67110400;
    v14[1] = v13;
    v15 = 2048;
    v16 = a2;
    v17 = 2048;
    v18 = a3;
    v19 = 1024;
    v20 = a4;
    v21 = 2048;
    v22 = a5;
    v23 = 2048;
    v24 = a6;
    _os_log_impl(&dword_19D52D000, v12, OS_LOG_TYPE_DEFAULT, "WebContent[%d]: [pageID=%llu frameID=%llu isMainFrame=%d] FrameLoader::setProvisionalDocumentLoader: Setting provisional document loader to %llu (was %llu)", v14, 0x36u);
  }

  if (v12)
  {
    os_release(v12);
  }
}

void WebKit::LogStream::fRAMELOADER_SETSTATE_MAIN_FRAME_LOAD_COMPLETED(WebKit::LogStream *this, uint64_t a2, uint64_t a3, int a4)
{
  v17 = *MEMORY[0x1E69E9840];
  v8 = os_log_create("com.apple.WebKit", "ResourceLoading");
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = *(this + 8);
    v10[0] = 67109888;
    v10[1] = v9;
    v11 = 2048;
    v12 = a2;
    v13 = 2048;
    v14 = a3;
    v15 = 1024;
    v16 = a4;
    _os_log_impl(&dword_19D52D000, v8, OS_LOG_TYPE_DEFAULT, "WebContent[%d]: [pageID=%llu frameID=%llu isMainFrame=%d] FrameLoader::setState: main frame load completed", v10, 0x22u);
  }

  if (v8)
  {
    os_release(v8);
  }
}

void WebKit::LogStream::fRAMELOADER_SETPOLICYDOCUMENTLOADER(WebKit::LogStream *this, uint64_t a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6)
{
  v25 = *MEMORY[0x1E69E9840];
  v12 = os_log_create("com.apple.WebKit", "ResourceLoading");
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v13 = *(this + 8);
    v14[0] = 67110400;
    v14[1] = v13;
    v15 = 2048;
    v16 = a2;
    v17 = 2048;
    v18 = a3;
    v19 = 1024;
    v20 = a4;
    v21 = 2048;
    v22 = a5;
    v23 = 2048;
    v24 = a6;
    _os_log_impl(&dword_19D52D000, v12, OS_LOG_TYPE_DEFAULT, "WebContent[%d]: [pageID=%llu frameID=%llu isMainFrame=%d] FrameLoader::setPolicyDocumentLoader: Setting policy document loader to %llu (was %llu)", v14, 0x36u);
  }

  if (v12)
  {
    os_release(v12);
  }
}

void WebKit::LogStream::fRAMELOADER_TRANSITIONTOCOMMITTED(WebKit::LogStream *this, uint64_t a2, uint64_t a3, int a4, uint64_t a5)
{
  v21 = *MEMORY[0x1E69E9840];
  v10 = os_log_create("com.apple.WebKit", "ResourceLoading");
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = *(this + 8);
    v12[0] = 67110144;
    v12[1] = v11;
    v13 = 2048;
    v14 = a2;
    v15 = 2048;
    v16 = a3;
    v17 = 1024;
    v18 = a4;
    v19 = 2048;
    v20 = a5;
    _os_log_impl(&dword_19D52D000, v10, OS_LOG_TYPE_DEFAULT, "WebContent[%d]: [pageID=%llu frameID=%llu isMainFrame=%d] FrameLoader::transitionToCommitted: Clearing provisional document loader (m_provisionalDocumentLoader=%llu)", v12, 0x2Cu);
  }

  if (v10)
  {
    os_release(v10);
  }
}

void WebKit::LogStream::fRAMELOADER_SETDOCUMENTLOADER(WebKit::LogStream *this, uint64_t a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6)
{
  v25 = *MEMORY[0x1E69E9840];
  v12 = os_log_create("com.apple.WebKit", "ResourceLoading");
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v13 = *(this + 8);
    v14[0] = 67110400;
    v14[1] = v13;
    v15 = 2048;
    v16 = a2;
    v17 = 2048;
    v18 = a3;
    v19 = 1024;
    v20 = a4;
    v21 = 2048;
    v22 = a5;
    v23 = 2048;
    v24 = a6;
    _os_log_impl(&dword_19D52D000, v12, OS_LOG_TYPE_DEFAULT, "WebContent[%d]: [pageID=%llu frameID=%llu isMainFrame=%d] FrameLoader::setDocumentLoader: Setting document loader to %llu (was %llu)", v14, 0x36u);
  }

  if (v12)
  {
    os_release(v12);
  }
}

void WebKit::LogStream::fRAMELOADER_STOPALLLOADERS_CLEARING_PROVISIONAL_DOCUMENT_LOADER(WebKit::LogStream *this, uint64_t a2, uint64_t a3, int a4, uint64_t a5)
{
  v21 = *MEMORY[0x1E69E9840];
  v10 = os_log_create("com.apple.WebKit", "ResourceLoading");
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = *(this + 8);
    v12[0] = 67110144;
    v12[1] = v11;
    v13 = 2048;
    v14 = a2;
    v15 = 2048;
    v16 = a3;
    v17 = 1024;
    v18 = a4;
    v19 = 2048;
    v20 = a5;
    _os_log_impl(&dword_19D52D000, v10, OS_LOG_TYPE_DEFAULT, "WebContent[%d]: [pageID=%llu frameID=%llu isMainFrame=%d] FrameLoader::stopAllLoaders: Clearing provisional document loader (m_provisionalDocumentLoader=%llu)", v12, 0x2Cu);
  }

  if (v10)
  {
    os_release(v10);
  }
}

void WebKit::LogStream::fRAMELOADER_LOADWITHDOCUMENTLOADER_FRAME_LOAD_STARTED(WebKit::LogStream *this, uint64_t a2, uint64_t a3, int a4)
{
  v17 = *MEMORY[0x1E69E9840];
  v8 = os_log_create("com.apple.WebKit", "ResourceLoading");
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = *(this + 8);
    v10[0] = 67109888;
    v10[1] = v9;
    v11 = 2048;
    v12 = a2;
    v13 = 2048;
    v14 = a3;
    v15 = 1024;
    v16 = a4;
    _os_log_impl(&dword_19D52D000, v8, OS_LOG_TYPE_DEFAULT, "WebContent[%d]: [pageID=%llu frameID=%llu isMainFrame=%d] FrameLoader::loadWithDocumentLoader: frame load started", v10, 0x22u);
  }

  if (v8)
  {
    os_release(v8);
  }
}

void WebKit::LogStream::fRAMELOADER_LOADWITHDOCUMENTLOADER_MAIN_FRAME_LOAD_STARTED(WebKit::LogStream *this, uint64_t a2, uint64_t a3, int a4)
{
  v17 = *MEMORY[0x1E69E9840];
  v8 = os_log_create("com.apple.WebKit", "ResourceLoading");
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = *(this + 8);
    v10[0] = 67109888;
    v10[1] = v9;
    v11 = 2048;
    v12 = a2;
    v13 = 2048;
    v14 = a3;
    v15 = 1024;
    v16 = a4;
    _os_log_impl(&dword_19D52D000, v8, OS_LOG_TYPE_DEFAULT, "WebContent[%d]: [pageID=%llu frameID=%llu isMainFrame=%d] FrameLoader::loadWithDocumentLoader: main frame load started", v10, 0x22u);
  }

  if (v8)
  {
    os_release(v8);
  }
}

void WebKit::LogStream::fRAMELOADER_STOPALLLOADERS(WebKit::LogStream *this, uint64_t a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6)
{
  v25 = *MEMORY[0x1E69E9840];
  v12 = os_log_create("com.apple.WebKit", "ResourceLoading");
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v13 = *(this + 8);
    v14[0] = 67110400;
    v14[1] = v13;
    v15 = 2048;
    v16 = a2;
    v17 = 2048;
    v18 = a3;
    v19 = 1024;
    v20 = a4;
    v21 = 2048;
    v22 = a5;
    v23 = 2048;
    v24 = a6;
    _os_log_impl(&dword_19D52D000, v12, OS_LOG_TYPE_DEFAULT, "WebContent[%d]: [pageID=%llu frameID=%llu isMainFrame=%d] FrameLoader::stopAllLoaders: m_provisionalDocumentLoader=%llu, m_documentLoader=%llu", v14, 0x36u);
  }

  if (v12)
  {
    os_release(v12);
  }
}

void WebKit::LogStream::fRAMELOADER_CONTINUELOADAFTERNAVIGATIONPOLICY(WebKit::LogStream *this, uint64_t a2, uint64_t a3, int a4, uint64_t a5)
{
  v21 = *MEMORY[0x1E69E9840];
  v10 = os_log_create("com.apple.WebKit", "ResourceLoading");
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = *(this + 8);
    v12[0] = 67110144;
    v12[1] = v11;
    v13 = 2048;
    v14 = a2;
    v15 = 2048;
    v16 = a3;
    v17 = 1024;
    v18 = a4;
    v19 = 2048;
    v20 = a5;
    _os_log_impl(&dword_19D52D000, v10, OS_LOG_TYPE_DEFAULT, "WebContent[%d]: [pageID=%llu frameID=%llu isMainFrame=%d] FrameLoader::continueLoadAfterNavigationPolicy: Setting provisional document loader (m_provisionalDocumentLoader=%llu)", v12, 0x2Cu);
  }

  if (v10)
  {
    os_release(v10);
  }
}

void WebKit::LogStream::fRAMELOADER_PREPAREFORLOADSTART(WebKit::LogStream *this, uint64_t a2, uint64_t a3, int a4)
{
  v17 = *MEMORY[0x1E69E9840];
  v8 = os_log_create("com.apple.WebKit", "ResourceLoading");
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = *(this + 8);
    v10[0] = 67109888;
    v10[1] = v9;
    v11 = 2048;
    v12 = a2;
    v13 = 2048;
    v14 = a3;
    v15 = 1024;
    v16 = a4;
    _os_log_impl(&dword_19D52D000, v8, OS_LOG_TYPE_DEFAULT, "WebContent[%d]: [pageID=%llu frameID=%llu isMainFrame=%d] FrameLoader::prepareForLoadStart: Starting frame load", v10, 0x22u);
  }

  if (v8)
  {
    os_release(v8);
  }
}

void WebKit::LogStream::fRAMELOADER_CHANGELOCATION(WebKit::LogStream *this, uint64_t a2, uint64_t a3, int a4)
{
  v17 = *MEMORY[0x1E69E9840];
  v8 = os_log_create("com.apple.WebKit", "ResourceLoading");
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = *(this + 8);
    v10[0] = 67109888;
    v10[1] = v9;
    v11 = 2048;
    v12 = a2;
    v13 = 2048;
    v14 = a3;
    v15 = 1024;
    v16 = a4;
    _os_log_impl(&dword_19D52D000, v8, OS_LOG_TYPE_DEFAULT, "WebContent[%d]: [pageID=%llu frameID=%llu isMainFrame=%d] FrameLoader::changeLocation: frame load started", v10, 0x22u);
  }

  if (v8)
  {
    os_release(v8);
  }
}

void WebKit::LogStream::fRAMELOADER_LOADFRAMEREQUEST_FRAME_LOAD_STARTED(WebKit::LogStream *this, uint64_t a2, uint64_t a3, int a4)
{
  v17 = *MEMORY[0x1E69E9840];
  v8 = os_log_create("com.apple.WebKit", "ResourceLoading");
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = *(this + 8);
    v10[0] = 67109888;
    v10[1] = v9;
    v11 = 2048;
    v12 = a2;
    v13 = 2048;
    v14 = a3;
    v15 = 1024;
    v16 = a4;
    _os_log_impl(&dword_19D52D000, v8, OS_LOG_TYPE_DEFAULT, "WebContent[%d]: [pageID=%llu frameID=%llu isMainFrame=%d] FrameLoader::loadFrameRequest: frame load started", v10, 0x22u);
  }

  if (v8)
  {
    os_release(v8);
  }
}

void WebKit::LogStream::fRAMELOADER_CHECKLOADCOMPLETEFORTHISFRAME(WebKit::LogStream *this, uint64_t a2, uint64_t a3, int a4)
{
  v17 = *MEMORY[0x1E69E9840];
  v8 = os_log_create("com.apple.WebKit", "ResourceLoading");
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = *(this + 8);
    v10[0] = 67109888;
    v10[1] = v9;
    v11 = 2048;
    v12 = a2;
    v13 = 2048;
    v14 = a3;
    v15 = 1024;
    v16 = a4;
    _os_log_impl(&dword_19D52D000, v8, OS_LOG_TYPE_DEFAULT, "WebContent[%d]: [pageID=%llu frameID=%llu isMainFrame=%d] FrameLoader::checkLoadCompleteForThisFrame: Finished frame load", v10, 0x22u);
  }

  if (v8)
  {
    os_release(v8);
  }
}

void WebKit::LogStream::fRAMELOADER_LOAD_URL(WebKit::LogStream *this, uint64_t a2, uint64_t a3, int a4)
{
  v17 = *MEMORY[0x1E69E9840];
  v8 = os_log_create("com.apple.WebKit", "ResourceLoading");
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = *(this + 8);
    v10[0] = 67109888;
    v10[1] = v9;
    v11 = 2048;
    v12 = a2;
    v13 = 2048;
    v14 = a3;
    v15 = 1024;
    v16 = a4;
    _os_log_impl(&dword_19D52D000, v8, OS_LOG_TYPE_DEFAULT, "WebContent[%d]: [pageID=%llu frameID=%llu isMainFrame=%d] FrameLoader::loadURL: frame load started", v10, 0x22u);
  }

  if (v8)
  {
    os_release(v8);
  }
}

void WebKit::LogStream::fRAMELOADER_LOADWITHNAVIGATIONACTION(WebKit::LogStream *this, uint64_t a2, uint64_t a3, int a4)
{
  v17 = *MEMORY[0x1E69E9840];
  v8 = os_log_create("com.apple.WebKit", "ResourceLoading");
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = *(this + 8);
    v10[0] = 67109888;
    v10[1] = v9;
    v11 = 2048;
    v12 = a2;
    v13 = 2048;
    v14 = a3;
    v15 = 1024;
    v16 = a4;
    _os_log_impl(&dword_19D52D000, v8, OS_LOG_TYPE_DEFAULT, "WebContent[%d]: [pageID=%llu frameID=%llu isMainFrame=%d] FrameLoader::loadWithNavigationAction: frame load started", v10, 0x22u);
  }

  if (v8)
  {
    os_release(v8);
  }
}

void WebKit::LogStream::fRAMELOADER_LOADURLINTOCHILDFRAME(WebKit::LogStream *this, uint64_t a2, uint64_t a3, int a4)
{
  v17 = *MEMORY[0x1E69E9840];
  v8 = os_log_create("com.apple.WebKit", "ResourceLoading");
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = *(this + 8);
    v10[0] = 67109888;
    v10[1] = v9;
    v11 = 2048;
    v12 = a2;
    v13 = 2048;
    v14 = a3;
    v15 = 1024;
    v16 = a4;
    _os_log_impl(&dword_19D52D000, v8, OS_LOG_TYPE_DEFAULT, "WebContent[%d]: [pageID=%llu frameID=%llu isMainFrame=%d] FrameLoader::loadURLIntoChildFrame: frame load started", v10, 0x22u);
  }

  if (v8)
  {
    os_release(v8);
  }
}

void WebKit::LogStream::fRAMELOADER_CONTINUELOADAFTERNAVIGATIONPOLICY_CANNOT_CONTINUE(WebKit::LogStream *this, uint64_t a2, uint64_t a3, int a4, int a5, int a6, int a7)
{
  v29 = *MEMORY[0x1E69E9840];
  v14 = os_log_create("com.apple.WebKit", "ResourceLoading");
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    v15 = *(this + 8);
    v16[0] = 67110656;
    v16[1] = v15;
    v17 = 2048;
    v18 = a2;
    v19 = 2048;
    v20 = a3;
    v21 = 1024;
    v22 = a4;
    v23 = 1024;
    v24 = a5;
    v25 = 1024;
    v26 = a6;
    v27 = 1024;
    v28 = a7;
    _os_log_impl(&dword_19D52D000, v14, OS_LOG_TYPE_DEFAULT, "WebContent[%d]: [pageID=%llu frameID=%llu isMainFrame=%d] FrameLoader::continueLoadAfterNavigationPolicy: can't continue loading frame due to the following reasons (allowNavigationToInvalidURL = %d, requestURLIsValid = %d, navigationPolicyDecision = %d)", v16, 0x34u);
  }

  if (v14)
  {
    os_release(v14);
  }
}

void WebKit::LogStream::fRAMELOADER_LOAD_FRAMELOADREQUEST(WebKit::LogStream *this, uint64_t a2, uint64_t a3, int a4)
{
  v17 = *MEMORY[0x1E69E9840];
  v8 = os_log_create("com.apple.WebKit", "ResourceLoading");
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = *(this + 8);
    v10[0] = 67109888;
    v10[1] = v9;
    v11 = 2048;
    v12 = a2;
    v13 = 2048;
    v14 = a3;
    v15 = 1024;
    v16 = a4;
    _os_log_impl(&dword_19D52D000, v8, OS_LOG_TYPE_DEFAULT, "WebContent[%d]: [pageID=%llu frameID=%llu isMainFrame=%d] FrameLoader::load (FrameLoadRequest): frame load started", v10, 0x22u);
  }

  if (v8)
  {
    os_release(v8);
  }
}

void WebKit::LogStream::fRAMELOADER_LOAD_DOCUMENTLOADER(WebKit::LogStream *this, uint64_t a2, uint64_t a3, int a4)
{
  v17 = *MEMORY[0x1E69E9840];
  v8 = os_log_create("com.apple.WebKit", "ResourceLoading");
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = *(this + 8);
    v10[0] = 67109888;
    v10[1] = v9;
    v11 = 2048;
    v12 = a2;
    v13 = 2048;
    v14 = a3;
    v15 = 1024;
    v16 = a4;
    _os_log_impl(&dword_19D52D000, v8, OS_LOG_TYPE_DEFAULT, "WebContent[%d]: [pageID=%llu frameID=%llu isMainFrame=%d] FrameLoader::load (DocumentLoader): frame load started", v10, 0x22u);
  }

  if (v8)
  {
    os_release(v8);
  }
}

void WebKit::LogStream::fRAMELOADER_RELOAD(WebKit::LogStream *this, uint64_t a2, uint64_t a3, int a4)
{
  v17 = *MEMORY[0x1E69E9840];
  v8 = os_log_create("com.apple.WebKit", "ResourceLoading");
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = *(this + 8);
    v10[0] = 67109888;
    v10[1] = v9;
    v11 = 2048;
    v12 = a2;
    v13 = 2048;
    v14 = a3;
    v15 = 1024;
    v16 = a4;
    _os_log_impl(&dword_19D52D000, v8, OS_LOG_TYPE_DEFAULT, "WebContent[%d]: [pageID=%llu frameID=%llu isMainFrame=%d] FrameLoader::reload: frame load started", v10, 0x22u);
  }

  if (v8)
  {
    os_release(v8);
  }
}

void WebKit::LogStream::rESOURCELOADER_WILLSENDREQUESTINTERNAL(WebKit::LogStream *this, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v17 = *MEMORY[0x1E69E9840];
  v8 = os_log_create("com.apple.WebKit", "Network");
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = *(this + 8);
    v10[0] = 67109888;
    v10[1] = v9;
    v11 = 2048;
    v12 = a2;
    v13 = 2048;
    v14 = a3;
    v15 = 2048;
    v16 = a4;
    _os_log_impl(&dword_19D52D000, v8, OS_LOG_TYPE_DEFAULT, "WebContent[%d]: [pageID=%llu, frameID=%llu, resourceID=%llu] ResourceLoader::willSendRequestInternal: calling completion handler", v10, 0x26u);
  }

  if (v8)
  {
    os_release(v8);
  }
}

void WebKit::LogStream::dOCUMENTLOADER_STARTLOADINGMAINRESOURCE_EMTPY_DOCUMENT(WebKit::LogStream *this, uint64_t a2, uint64_t a3, int a4)
{
  v17 = *MEMORY[0x1E69E9840];
  v8 = os_log_create("com.apple.WebKit", "Network");
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = *(this + 8);
    v10[0] = 67109888;
    v10[1] = v9;
    v11 = 2048;
    v12 = a2;
    v13 = 2048;
    v14 = a3;
    v15 = 1024;
    v16 = a4;
    _os_log_impl(&dword_19D52D000, v8, OS_LOG_TYPE_DEFAULT, "WebContent[%d]: [pageID=%llu, frameID=%llu, isMainFrame=%d] DocumentLoader::startLoadingMainResource: Returning empty document", v10, 0x22u);
  }

  if (v8)
  {
    os_release(v8);
  }
}

void WebKit::LogStream::dOCUMENTLOADER_STARTLOADINGMAINRESOURCE_STARTING_LOAD(WebKit::LogStream *this, uint64_t a2, uint64_t a3, int a4)
{
  v17 = *MEMORY[0x1E69E9840];
  v8 = os_log_create("com.apple.WebKit", "Network");
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = *(this + 8);
    v10[0] = 67109888;
    v10[1] = v9;
    v11 = 2048;
    v12 = a2;
    v13 = 2048;
    v14 = a3;
    v15 = 1024;
    v16 = a4;
    _os_log_impl(&dword_19D52D000, v8, OS_LOG_TYPE_DEFAULT, "WebContent[%d]: [pageID=%llu, frameID=%llu, isMainFrame=%d] DocumentLoader::startLoadingMainResource: Starting load", v10, 0x22u);
  }

  if (v8)
  {
    os_release(v8);
  }
}

void WebKit::LogStream::dOCUMENTLOADER_ATTACHTOFRAME(WebKit::LogStream *this, uint64_t a2, uint64_t a3, int a4)
{
  v17 = *MEMORY[0x1E69E9840];
  v8 = os_log_create("com.apple.WebKit", "Network");
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = *(this + 8);
    v10[0] = 67109888;
    v10[1] = v9;
    v11 = 2048;
    v12 = a2;
    v13 = 2048;
    v14 = a3;
    v15 = 1024;
    v16 = a4;
    _os_log_impl(&dword_19D52D000, v8, OS_LOG_TYPE_DEFAULT, "WebContent[%d]: [pageID=%llu, frameID=%llu, isMainFrame=%d] DocumentLoader::attachToFrame", v10, 0x22u);
  }

  if (v8)
  {
    os_release(v8);
  }
}

void WebKit::LogStream::dOCUMENTLOADER_DETACHFROMFRAME(WebKit::LogStream *this, uint64_t a2, uint64_t a3, int a4)
{
  v17 = *MEMORY[0x1E69E9840];
  v8 = os_log_create("com.apple.WebKit", "Network");
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = *(this + 8);
    v10[0] = 67109888;
    v10[1] = v9;
    v11 = 2048;
    v12 = a2;
    v13 = 2048;
    v14 = a3;
    v15 = 1024;
    v16 = a4;
    _os_log_impl(&dword_19D52D000, v8, OS_LOG_TYPE_DEFAULT, "WebContent[%d]: [pageID=%llu, frameID=%llu, isMainFrame=%d] DocumentLoader::detachFromFrame", v10, 0x22u);
  }

  if (v8)
  {
    os_release(v8);
  }
}

void WebKit::LogStream::dOCUMENTLOADER_STOPLOADING(WebKit::LogStream *this, uint64_t a2, uint64_t a3, int a4)
{
  v17 = *MEMORY[0x1E69E9840];
  v8 = os_log_create("com.apple.WebKit", "Network");
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = *(this + 8);
    v10[0] = 67109888;
    v10[1] = v9;
    v11 = 2048;
    v12 = a2;
    v13 = 2048;
    v14 = a3;
    v15 = 1024;
    v16 = a4;
    _os_log_impl(&dword_19D52D000, v8, OS_LOG_TYPE_DEFAULT, "WebContent[%d]: [pageID=%llu, frameID=%llu, isMainFrame=%d] DocumentLoader::stopLoading", v10, 0x22u);
  }

  if (v8)
  {
    os_release(v8);
  }
}

void WebKit::LogStream::mEDIASESSIONMANAGERCOCOA_SESSIONCANPRODUCEAUDIOCHANGED(WebKit::LogStream *this)
{
  v5 = *MEMORY[0x1E69E9840];
  v2 = os_log_create("com.apple.WebKit", "Media");
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(this + 8);
    v4[0] = 67109120;
    v4[1] = v3;
    _os_log_impl(&dword_19D52D000, v2, OS_LOG_TYPE_DEFAULT, "WebContent[%d]: MediaSessionManagerCocoa::sessionCanProduceAudioChanged", v4, 8u);
  }

  if (v2)
  {
    os_release(v2);
  }
}

void WebKit::LogStream::mEDIASESSIONMANAGERCOCOA_CLIENTCHARACTERISTICSCHANGED(WebKit::LogStream *this, uint64_t a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v4 = os_log_create("com.apple.WebKit", "Media");
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(this + 8);
    v6[0] = 67109376;
    v6[1] = v5;
    v7 = 2048;
    v8 = a2;
    _os_log_impl(&dword_19D52D000, v4, OS_LOG_TYPE_DEFAULT, "WebContent[%d]: MediaSessionManagerCocoa::clientCharacteristicsChanged, session ID = %llu", v6, 0x12u);
  }

  if (v4)
  {
    os_release(v4);
  }
}

void WebKit::LogStream::mEDIASESSIONMANAGERCOCOA_UPDATESESSIONSTATE(WebKit::LogStream *this, int a2, int a3, int a4, int a5, int a6, int a7)
{
  v29 = *MEMORY[0x1E69E9840];
  v14 = os_log_create("com.apple.WebKit", "Media");
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    v15 = *(this + 8);
    v16[0] = 67110656;
    v16[1] = v15;
    v17 = 1024;
    v18 = a2;
    v19 = 1024;
    v20 = a3;
    v21 = 1024;
    v22 = a4;
    v23 = 1024;
    v24 = a5;
    v25 = 1024;
    v26 = a6;
    v27 = 1024;
    v28 = a7;
    _os_log_impl(&dword_19D52D000, v14, OS_LOG_TYPE_DEFAULT, "WebContent[%d]: MediaSessionManagerCocoa::updateSessionState: AudioCapture(%d), AudioTrack(%d), Video(%d), Audio(%d), VideoAudio(%d), WebAudio(%d)", v16, 0x2Cu);
  }

  if (v14)
  {
    os_release(v14);
  }
}

void WebKit::LogStream::pLATFORMMEDIASESSIONMANAGER_REMOVESESSION(WebKit::LogStream *this, uint64_t a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v4 = os_log_create("com.apple.WebKit", "Media");
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(this + 8);
    v6[0] = 67109376;
    v6[1] = v5;
    v7 = 2048;
    v8 = a2;
    _os_log_impl(&dword_19D52D000, v4, OS_LOG_TYPE_DEFAULT, "WebContent[%d]: PlatformMediaSessionManager::removeSession, session ID = %llu", v6, 0x12u);
  }

  if (v4)
  {
    os_release(v4);
  }
}

void WebKit::LogStream::pLATFORMMEDIASESSIONMANAGER_SESSIONWILLENDPLAYBACK(WebKit::LogStream *this, uint64_t a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v4 = os_log_create("com.apple.WebKit", "Media");
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(this + 8);
    v6[0] = 67109376;
    v6[1] = v5;
    v7 = 2048;
    v8 = a2;
    _os_log_impl(&dword_19D52D000, v4, OS_LOG_TYPE_DEFAULT, "WebContent[%d]: PlatformMediaSessionManager::sessionWillEndPlayback, session ID = %llu", v6, 0x12u);
  }

  if (v4)
  {
    os_release(v4);
  }
}

void WebKit::LogStream::pLATFORMMEDIASESSIONMANAGER_SESSIONCANPRODUCEAUDIOCHANGED(WebKit::LogStream *this)
{
  v5 = *MEMORY[0x1E69E9840];
  v2 = os_log_create("com.apple.WebKit", "Media");
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(this + 8);
    v4[0] = 67109120;
    v4[1] = v3;
    _os_log_impl(&dword_19D52D000, v2, OS_LOG_TYPE_DEFAULT, "WebContent[%d]: PlatformMediaSessionManager::sessionCanProduceAudioChanged", v4, 8u);
  }

  if (v2)
  {
    os_release(v2);
  }
}

void WebKit::LogStream::pLATFORMMEDIASESSIONMANAGER_ADDSESSION(WebKit::LogStream *this, uint64_t a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v4 = os_log_create("com.apple.WebKit", "Media");
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(this + 8);
    v6[0] = 67109376;
    v6[1] = v5;
    v7 = 2048;
    v8 = a2;
    _os_log_impl(&dword_19D52D000, v4, OS_LOG_TYPE_DEFAULT, "WebContent[%d]: PlatformMediaSessionManager::addSession, session ID = %llu", v6, 0x12u);
  }

  if (v4)
  {
    os_release(v4);
  }
}

void WebKit::LogStream::pLATFORMMEDIASESSIONMANAGER_MAYBEACTIVATEAUDIOSESSION_ACTIVE_SESSION_NOT_REQUIRED(WebKit::LogStream *this)
{
  v5 = *MEMORY[0x1E69E9840];
  v2 = os_log_create("com.apple.WebKit", "Media");
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(this + 8);
    v4[0] = 67109120;
    v4[1] = v3;
    _os_log_impl(&dword_19D52D000, v2, OS_LOG_TYPE_DEFAULT, "WebContent[%d]: PlatformMediaSessionManager::maybeActivateAudioSession:  active audio session not required", v4, 8u);
  }

  if (v2)
  {
    os_release(v2);
  }
}

void WebKit::LogStream::hTMLMEDIAELEMENT_CONSTRUCTOR(WebKit::LogStream *this, uint64_t a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v4 = os_log_create("com.apple.WebKit", "Media");
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(this + 8);
    v6[0] = 67109376;
    v6[1] = v5;
    v7 = 2048;
    v8 = a2;
    _os_log_impl(&dword_19D52D000, v4, OS_LOG_TYPE_DEFAULT, "WebContent[%d]: HTMLMediaElement::HTMLMediaElement(%llX)", v6, 0x12u);
  }

  if (v4)
  {
    os_release(v4);
  }
}

void WebKit::LogStream::hTMLMEDIAELEMENT_DESTRUCTOR(WebKit::LogStream *this, uint64_t a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v4 = os_log_create("com.apple.WebKit", "Media");
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(this + 8);
    v6[0] = 67109376;
    v6[1] = v5;
    v7 = 2048;
    v8 = a2;
    _os_log_impl(&dword_19D52D000, v4, OS_LOG_TYPE_DEFAULT, "WebContent[%d]: HTMLMediaElement::~HTMLMediaElement(%llX)", v6, 0x12u);
  }

  if (v4)
  {
    os_release(v4);
  }
}

void WebKit::LogStream::hTMLMEDIAELEMENT_SETBUFFERINGPOLICY(WebKit::LogStream *this, uint64_t a2, int a3)
{
  v13 = *MEMORY[0x1E69E9840];
  v6 = os_log_create("com.apple.WebKit", "Media");
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = *(this + 8);
    v8[0] = 67109632;
    v8[1] = v7;
    v9 = 2048;
    v10 = a2;
    v11 = 1024;
    v12 = a3;
    _os_log_impl(&dword_19D52D000, v6, OS_LOG_TYPE_DEFAULT, "WebContent[%d]: HTMLMediaElement::setBufferingPolicy(%llX): %hhu", v8, 0x18u);
  }

  if (v6)
  {
    os_release(v6);
  }
}

void WebKit::LogStream::hTMLMEDIAELEMENT_INSERTEDINTOANCESTOR(WebKit::LogStream *this, uint64_t a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v4 = os_log_create("com.apple.WebKit", "Media");
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(this + 8);
    v6[0] = 67109376;
    v6[1] = v5;
    v7 = 2048;
    v8 = a2;
    _os_log_impl(&dword_19D52D000, v4, OS_LOG_TYPE_DEFAULT, "WebContent[%d]: HTMLMediaElement::insertedIntoAncestor(%llX)", v6, 0x12u);
  }

  if (v4)
  {
    os_release(v4);
  }
}

void WebKit::LogStream::hTMLMEDIAELEMENT_REMOVEDFROMANCESTOR(WebKit::LogStream *this, uint64_t a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v4 = os_log_create("com.apple.WebKit", "Media");
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(this + 8);
    v6[0] = 67109376;
    v6[1] = v5;
    v7 = 2048;
    v8 = a2;
    _os_log_impl(&dword_19D52D000, v4, OS_LOG_TYPE_DEFAULT, "WebContent[%d]: HTMLMediaElement::removedFromAncestor(%llX)", v6, 0x12u);
  }

  if (v4)
  {
    os_release(v4);
  }
}

void WebKit::LogStream::hTMLMEDIAELEMENT_DIDFINISHINSERTINGNODE(WebKit::LogStream *this, uint64_t a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v4 = os_log_create("com.apple.WebKit", "Media");
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(this + 8);
    v6[0] = 67109376;
    v6[1] = v5;
    v7 = 2048;
    v8 = a2;
    _os_log_impl(&dword_19D52D000, v4, OS_LOG_TYPE_DEFAULT, "WebContent[%d]: HTMLMediaElement::didFinishInsertingNode(%llX)", v6, 0x12u);
  }

  if (v4)
  {
    os_release(v4);
  }
}

void WebKit::LogStream::hTMLMEDIAELEMENT_MEDIAPLAYERRATECHANGED(WebKit::LogStream *this, uint64_t a2, double a3)
{
  v13 = *MEMORY[0x1E69E9840];
  v6 = os_log_create("com.apple.WebKit", "Media");
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = *(this + 8);
    v8[0] = 67109632;
    v8[1] = v7;
    v9 = 2048;
    v10 = a2;
    v11 = 2048;
    v12 = a3;
    _os_log_impl(&dword_19D52D000, v6, OS_LOG_TYPE_DEFAULT, "WebContent[%d]: HTMLMediaElement::mediaPlayerRateChanged(%llX) rate: %f", v8, 0x1Cu);
  }

  if (v6)
  {
    os_release(v6);
  }
}

void WebKit::LogStream::hTMLMEDIAELEMENT_MEDIAPLAYERTIMECHANGED(WebKit::LogStream *this, uint64_t a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v4 = os_log_create("com.apple.WebKit", "Media");
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(this + 8);
    v6[0] = 67109376;
    v6[1] = v5;
    v7 = 2048;
    v8 = a2;
    _os_log_impl(&dword_19D52D000, v4, OS_LOG_TYPE_DEFAULT, "WebContent[%d]: HTMLMediaElement::mediaPlayerTimeChanged(%llX)", v6, 0x12u);
  }

  if (v4)
  {
    os_release(v4);
  }
}

void WebKit::LogStream::hTMLMEDIAELEMENT_SETSHOULDDELAYLOADEVENT(WebKit::LogStream *this, uint64_t a2, int a3)
{
  v13 = *MEMORY[0x1E69E9840];
  v6 = os_log_create("com.apple.WebKit", "Media");
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = *(this + 8);
    v8[0] = 67109632;
    v8[1] = v7;
    v9 = 2048;
    v10 = a2;
    v11 = 1024;
    v12 = a3;
    _os_log_impl(&dword_19D52D000, v6, OS_LOG_TYPE_DEFAULT, "WebContent[%d]: HTMLMediaElement::setShouldDelayLoadEvent(%llX) %hhu", v8, 0x18u);
  }

  if (v6)
  {
    os_release(v6);
  }
}

void WebKit::LogStream::hTMLMEDIAELEMENT_MEDIAPLAYERENGINEUPDATED(uint64_t a1, uint64_t a2, void *a3)
{
  v14 = *MEMORY[0x1E69E9840];
  v6 = os_log_create("com.apple.WebKit", "Media");
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = *(a1 + 32);
    if (*a3)
    {
      v8 = *a3 + 16;
    }

    else
    {
      v8 = 0;
    }

    v9[0] = 67109634;
    v9[1] = v7;
    v10 = 2048;
    v11 = a2;
    v12 = 2080;
    v13 = v8;
    _os_log_impl(&dword_19D52D000, v6, OS_LOG_TYPE_DEFAULT, "WebContent[%d]: HTMLMediaElement::mediaPlayerEngineUpdated(%llX) %s", v9, 0x1Cu);
  }

  if (v6)
  {
    os_release(v6);
  }
}

void WebKit::LogStream::hTMLMEDIAELEMENT_CURRENTMEDIATIME_SEEKING(WebKit::LogStream *this, uint64_t a2, float a3)
{
  v13 = *MEMORY[0x1E69E9840];
  v6 = os_log_create("com.apple.WebKit", "Media");
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = *(this + 8);
    v8[0] = 67109632;
    v8[1] = v7;
    v9 = 2048;
    v10 = a2;
    v11 = 2048;
    v12 = a3;
    _os_log_impl(&dword_19D52D000, v6, OS_LOG_TYPE_DEFAULT, "WebContent[%d]: HTMLMediaElement::currentMediaTime(%llX) seeking, returning %f", v8, 0x1Cu);
  }

  if (v6)
  {
    os_release(v6);
  }
}

void WebKit::LogStream::hTMLMEDIAELEMENT_UPDATEPLAYSTATE(WebKit::LogStream *this, uint64_t a2, int a3, int a4)
{
  v17 = *MEMORY[0x1E69E9840];
  v8 = os_log_create("com.apple.WebKit", "Media");
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = *(this + 8);
    v10[0] = 67109888;
    v10[1] = v9;
    v11 = 2048;
    v12 = a2;
    v13 = 1024;
    v14 = a3;
    v15 = 1024;
    v16 = a4;
    _os_log_impl(&dword_19D52D000, v8, OS_LOG_TYPE_DEFAULT, "WebContent[%d]: HTMLMediaElement::updatePlayState(%llX) shouldBePlaying = %d, playerPaused = %d", v10, 0x1Eu);
  }

  if (v8)
  {
    os_release(v8);
  }
}

void WebKit::LogStream::hTMLMEDIAELEMENT_VISIBILITYSTATECHANGED(WebKit::LogStream *this, uint64_t a2, int a3)
{
  v13 = *MEMORY[0x1E69E9840];
  v6 = os_log_create("com.apple.WebKit", "Media");
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = *(this + 8);
    v8[0] = 67109632;
    v8[1] = v7;
    v9 = 2048;
    v10 = a2;
    v11 = 1024;
    v12 = a3;
    _os_log_impl(&dword_19D52D000, v6, OS_LOG_TYPE_DEFAULT, "WebContent[%d]: HTMLMediaElement::visibilityStateChanged(%llX) visible = %d", v8, 0x18u);
  }

  if (v6)
  {
    os_release(v6);
  }
}

void WebKit::LogStream::hTMLMEDIAELEMENT_CREATEMEDIAPLAYER(WebKit::LogStream *this, uint64_t a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v4 = os_log_create("com.apple.WebKit", "Media");
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(this + 8);
    v6[0] = 67109376;
    v6[1] = v5;
    v7 = 2048;
    v8 = a2;
    _os_log_impl(&dword_19D52D000, v4, OS_LOG_TYPE_DEFAULT, "WebContent[%d]: HTMLMediaElement::createMediaPlayer(%llX)", v6, 0x12u);
  }

  if (v4)
  {
    os_release(v4);
  }
}

void WebKit::LogStream::hTMLMEDIAELEMENT_PLAY(WebKit::LogStream *this, uint64_t a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v4 = os_log_create("com.apple.WebKit", "Media");
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(this + 8);
    v6[0] = 67109376;
    v6[1] = v5;
    v7 = 2048;
    v8 = a2;
    _os_log_impl(&dword_19D52D000, v4, OS_LOG_TYPE_DEFAULT, "WebContent[%d]: HTMLMediaElement::play(%llX)", v6, 0x12u);
  }

  if (v4)
  {
    os_release(v4);
  }
}

void WebKit::LogStream::hTMLMEDIAELEMENT_PLAYINTERNAL(WebKit::LogStream *this, uint64_t a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v4 = os_log_create("com.apple.WebKit", "Media");
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(this + 8);
    v6[0] = 67109376;
    v6[1] = v5;
    v7 = 2048;
    v8 = a2;
    _os_log_impl(&dword_19D52D000, v4, OS_LOG_TYPE_DEFAULT, "WebContent[%d]: HTMLMediaElement::playInternal(%llX)", v6, 0x12u);
  }

  if (v4)
  {
    os_release(v4);
  }
}

void WebKit::LogStream::hTMLMEDIAELEMENT_ADDAUDIOTRACK(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v19 = *MEMORY[0x1E69E9840];
  v8 = os_log_create("com.apple.WebKit", "Media");
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = *(a1 + 32);
    if (*a3)
    {
      v10 = *a3 + 16;
    }

    else
    {
      v10 = 0;
    }

    if (*a4)
    {
      v11 = *a4 + 16;
    }

    else
    {
      v11 = 0;
    }

    v12[0] = 67109890;
    v12[1] = v9;
    v13 = 2048;
    v14 = a2;
    v15 = 2080;
    v16 = v10;
    v17 = 2080;
    v18 = v11;
    _os_log_impl(&dword_19D52D000, v8, OS_LOG_TYPE_DEFAULT, "WebContent[%d]: HTMLMediaElement::addAudioTrack(%llX) id: %s, %s", v12, 0x26u);
  }

  if (v8)
  {
    os_release(v8);
  }
}

void WebKit::LogStream::hTMLMEDIAELEMENT_ADDVIDEOTRACK(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v19 = *MEMORY[0x1E69E9840];
  v8 = os_log_create("com.apple.WebKit", "Media");
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = *(a1 + 32);
    if (*a3)
    {
      v10 = *a3 + 16;
    }

    else
    {
      v10 = 0;
    }

    if (*a4)
    {
      v11 = *a4 + 16;
    }

    else
    {
      v11 = 0;
    }

    v12[0] = 67109890;
    v12[1] = v9;
    v13 = 2048;
    v14 = a2;
    v15 = 2080;
    v16 = v10;
    v17 = 2080;
    v18 = v11;
    _os_log_impl(&dword_19D52D000, v8, OS_LOG_TYPE_DEFAULT, "WebContent[%d]: HTMLMediaElement::addVideoTrack(%llX) id: %s, %s", v12, 0x26u);
  }

  if (v8)
  {
    os_release(v8);
  }
}

void WebKit::LogStream::hTMLMEDIAELEMENT_CANPLAYTYPE(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v19 = *MEMORY[0x1E69E9840];
  v8 = os_log_create("com.apple.WebKit", "Media");
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = *(a1 + 32);
    if (*a3)
    {
      v10 = *a3 + 16;
    }

    else
    {
      v10 = 0;
    }

    if (*a4)
    {
      v11 = *a4 + 16;
    }

    else
    {
      v11 = 0;
    }

    v12[0] = 67109890;
    v12[1] = v9;
    v13 = 2048;
    v14 = a2;
    v15 = 2080;
    v16 = v10;
    v17 = 2080;
    v18 = v11;
    _os_log_impl(&dword_19D52D000, v8, OS_LOG_TYPE_DEFAULT, "WebContent[%d]: HTMLMediaElement::canPlayType(%llX) %s: %s", v12, 0x26u);
  }

  if (v8)
  {
    os_release(v8);
  }
}

void WebKit::LogStream::hTMLMEDIAELEMENT_CANTRANSITIONFROMAUTOPLAYTOPLAY(uint64_t a1, uint64_t a2, void *a3)
{
  v14 = *MEMORY[0x1E69E9840];
  v6 = os_log_create("com.apple.WebKit", "Media");
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = *(a1 + 32);
    if (*a3)
    {
      v8 = *a3 + 16;
    }

    else
    {
      v8 = 0;
    }

    v9[0] = 67109634;
    v9[1] = v7;
    v10 = 2048;
    v11 = a2;
    v12 = 2080;
    v13 = v8;
    _os_log_impl(&dword_19D52D000, v6, OS_LOG_TYPE_DEFAULT, "WebContent[%d]: HTMLMediaElement::canTransitionFromAutoplayToPlay(%llX) %s", v9, 0x1Cu);
  }

  if (v6)
  {
    os_release(v6);
  }
}

void WebKit::LogStream::hTMLMEDIAELEMENT_CONFIGURETEXTTRACKDISPLAY(uint64_t a1, uint64_t a2, void *a3)
{
  v14 = *MEMORY[0x1E69E9840];
  v6 = os_log_create("com.apple.WebKit", "Media");
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = *(a1 + 32);
    if (*a3)
    {
      v8 = *a3 + 16;
    }

    else
    {
      v8 = 0;
    }

    v9[0] = 67109634;
    v9[1] = v7;
    v10 = 2048;
    v11 = a2;
    v12 = 2080;
    v13 = v8;
    _os_log_impl(&dword_19D52D000, v6, OS_LOG_TYPE_DEFAULT, "WebContent[%d]: HTMLMediaElement::configureTextTrackDisplay(%llX) %s", v9, 0x1Cu);
  }

  if (v6)
  {
    os_release(v6);
  }
}

void WebKit::LogStream::hTMLMEDIAELEMENT_CONFIGURETEXTTRACKGROUP(uint64_t a1, uint64_t a2, void *a3, void *a4, void *a5, int a6)
{
  v28 = *MEMORY[0x1E69E9840];
  v12 = os_log_create("com.apple.WebKit", "Media");
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v13 = *(a1 + 32);
    if (*a3)
    {
      v14 = *a3 + 16;
    }

    else
    {
      v14 = 0;
    }

    if (*a4)
    {
      v15 = *a4 + 16;
    }

    else
    {
      v15 = 0;
    }

    if (*a5)
    {
      v16 = *a5 + 16;
    }

    else
    {
      v16 = 0;
    }

    v17[0] = 67110402;
    v17[1] = v13;
    v18 = 2048;
    v19 = a2;
    v20 = 2080;
    v21 = v14;
    v22 = 2080;
    v23 = v15;
    v24 = 2080;
    v25 = v16;
    v26 = 1024;
    v27 = a6;
    _os_log_impl(&dword_19D52D000, v12, OS_LOG_TYPE_DEFAULT, "WebContent[%d]: HTMLMediaElement::configureTextTrackGroup(%llX) %s track with language %s and BCP 47 language %s has score %d", v17, 0x36u);
  }

  if (v12)
  {
    os_release(v12);
  }
}

void WebKit::LogStream::hTMLMEDIAELEMENT_MEDIAENGINEWASUPDATED(WebKit::LogStream *this, uint64_t a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v4 = os_log_create("com.apple.WebKit", "Media");
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(this + 8);
    v6[0] = 67109376;
    v6[1] = v5;
    v7 = 2048;
    v8 = a2;
    _os_log_impl(&dword_19D52D000, v4, OS_LOG_TYPE_DEFAULT, "WebContent[%d]: HTMLMediaElement::mediaEngineWasUpdated(%llX)", v6, 0x12u);
  }

  if (v4)
  {
    os_release(v4);
  }
}

void WebKit::LogStream::hTMLMEDIAELEMENT_MEDIAPLAYERCHARACTERISTICSCHANGED(uint64_t a1, uint64_t a2, void *a3)
{
  v14 = *MEMORY[0x1E69E9840];
  v6 = os_log_create("com.apple.WebKit", "Media");
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = *(a1 + 32);
    if (*a3)
    {
      v8 = *a3 + 16;
    }

    else
    {
      v8 = 0;
    }

    v9[0] = 67109634;
    v9[1] = v7;
    v10 = 2048;
    v11 = a2;
    v12 = 2080;
    v13 = v8;
    _os_log_impl(&dword_19D52D000, v6, OS_LOG_TYPE_DEFAULT, "WebContent[%d]: HTMLMediaElement::mediaPlayerCharacteristicChanged(%llX) %s", v9, 0x1Cu);
  }

  if (v6)
  {
    os_release(v6);
  }
}

void WebKit::LogStream::hTMLMEDIAELEMENT_MEDIAPLAYERDURATIONCHANGED(WebKit::LogStream *this, uint64_t a2, float a3, float a4)
{
  v17 = *MEMORY[0x1E69E9840];
  v8 = os_log_create("com.apple.WebKit", "Media");
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = *(this + 8);
    v10[0] = 67109888;
    v10[1] = v9;
    v11 = 2048;
    v12 = a2;
    v13 = 2048;
    v14 = a3;
    v15 = 2048;
    v16 = a4;
    _os_log_impl(&dword_19D52D000, v8, OS_LOG_TYPE_DEFAULT, "WebContent[%d]: HTMLMediaElement::mediaPlayerDurationChanged(%llX) duration = %f, current time = %f", v10, 0x26u);
  }

  if (v8)
  {
    os_release(v8);
  }
}

void WebKit::LogStream::hTMLMEDIAELEMENT_MEDIAPLAYERSIZECHANGED(WebKit::LogStream *this, uint64_t a2, float a3, float a4)
{
  v17 = *MEMORY[0x1E69E9840];
  v8 = os_log_create("com.apple.WebKit", "Media");
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = *(this + 8);
    v10[0] = 67109888;
    v10[1] = v9;
    v11 = 2048;
    v12 = a2;
    v13 = 2048;
    v14 = a3;
    v15 = 2048;
    v16 = a4;
    _os_log_impl(&dword_19D52D000, v8, OS_LOG_TYPE_DEFAULT, "WebContent[%d]: HTMLMediaElement::mediaPlayerSizeChanged(%llX) w = %f, h = %f", v10, 0x26u);
  }

  if (v8)
  {
    os_release(v8);
  }
}

void WebKit::LogStream::hTMLMEDIAELEMENT_PAUSE(WebKit::LogStream *this, uint64_t a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v4 = os_log_create("com.apple.WebKit", "Media");
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(this + 8);
    v6[0] = 67109376;
    v6[1] = v5;
    v7 = 2048;
    v8 = a2;
    _os_log_impl(&dword_19D52D000, v4, OS_LOG_TYPE_DEFAULT, "WebContent[%d]: HTMLMediaElement::pause(%llX)", v6, 0x12u);
  }

  if (v4)
  {
    os_release(v4);
  }
}

void WebKit::LogStream::hTMLMEDIAELEMENT_PAUSEINTERNAL(WebKit::LogStream *this, uint64_t a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v4 = os_log_create("com.apple.WebKit", "Media");
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(this + 8);
    v6[0] = 67109376;
    v6[1] = v5;
    v7 = 2048;
    v8 = a2;
    _os_log_impl(&dword_19D52D000, v4, OS_LOG_TYPE_DEFAULT, "WebContent[%d]: HTMLMediaElement::pauseInternal(%llX)", v6, 0x12u);
  }

  if (v4)
  {
    os_release(v4);
  }
}

void WebKit::LogStream::hTMLMEDIAELEMENT_PREPAREFORLOAD(WebKit::LogStream *this, uint64_t a2, int a3)
{
  v13 = *MEMORY[0x1E69E9840];
  v6 = os_log_create("com.apple.WebKit", "Media");
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = *(this + 8);
    v8[0] = 67109632;
    v8[1] = v7;
    v9 = 2048;
    v10 = a2;
    v11 = 1024;
    v12 = a3;
    _os_log_impl(&dword_19D52D000, v6, OS_LOG_TYPE_DEFAULT, "WebContent[%d]: HTMLMediaElement::prepareForLoad(%llX) gesture = %d", v8, 0x18u);
  }

  if (v6)
  {
    os_release(v6);
  }
}

void WebKit::LogStream::hTMLMEDIAELEMENT_REMOVEAUDIOTRACK(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v19 = *MEMORY[0x1E69E9840];
  v8 = os_log_create("com.apple.WebKit", "Media");
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = *(a1 + 32);
    if (*a3)
    {
      v10 = *a3 + 16;
    }

    else
    {
      v10 = 0;
    }

    if (*a4)
    {
      v11 = *a4 + 16;
    }

    else
    {
      v11 = 0;
    }

    v12[0] = 67109890;
    v12[1] = v9;
    v13 = 2048;
    v14 = a2;
    v15 = 2080;
    v16 = v10;
    v17 = 2080;
    v18 = v11;
    _os_log_impl(&dword_19D52D000, v8, OS_LOG_TYPE_DEFAULT, "WebContent[%d]: HTMLMediaElement::removeAudioTrack(%llX) id: %s, %s", v12, 0x26u);
  }

  if (v8)
  {
    os_release(v8);
  }
}

void WebKit::LogStream::hTMLMEDIAELEMENT_SCENEIDENTIFIERDIDCHANGE(uint64_t a1, uint64_t a2, void *a3)
{
  v14 = *MEMORY[0x1E69E9840];
  v6 = os_log_create("com.apple.WebKit", "Media");
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = *(a1 + 32);
    if (*a3)
    {
      v8 = *a3 + 16;
    }

    else
    {
      v8 = 0;
    }

    v9[0] = 67109634;
    v9[1] = v7;
    v10 = 2048;
    v11 = a2;
    v12 = 2080;
    v13 = v8;
    _os_log_impl(&dword_19D52D000, v6, OS_LOG_TYPE_DEFAULT, "WebContent[%d]: HTMLMediaElement::sceneIdentifierDidChange(%llX) %s", v9, 0x1Cu);
  }

  if (v6)
  {
    os_release(v6);
  }
}

void WebKit::LogStream::hTMLMEDIAELEMENT_SCHEDULECONFIGURETEXTTRACKS_TASK_SCHEDULED(WebKit::LogStream *this, uint64_t a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v4 = os_log_create("com.apple.WebKit", "Media");
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(this + 8);
    v6[0] = 67109376;
    v6[1] = v5;
    v7 = 2048;
    v8 = a2;
    _os_log_impl(&dword_19D52D000, v4, OS_LOG_TYPE_DEFAULT, "WebContent[%d]: HTMLMediaElement::scheduleConfigureTextTracks(%llX) task scheduled", v6, 0x12u);
  }

  if (v4)
  {
    os_release(v4);
  }
}

void WebKit::LogStream::hTMLMEDIAELEMENT_SCHEDULECONFIGURETEXTTRACKS_LAMBDA_TASK_FIRED(WebKit::LogStream *this, uint64_t a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v4 = os_log_create("com.apple.WebKit", "Media");
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(this + 8);
    v6[0] = 67109376;
    v6[1] = v5;
    v7 = 2048;
    v8 = a2;
    _os_log_impl(&dword_19D52D000, v4, OS_LOG_TYPE_DEFAULT, "WebContent[%d]: HTMLMediaElement::scheduleConfigureTextTracks(%llX) lambda(), task fired", v6, 0x12u);
  }

  if (v4)
  {
    os_release(v4);
  }
}

void WebKit::LogStream::hTMLMEDIAELEMENT_SCHEDULEMEDIAENGINEWASUPDATED_TASK_SCHEDULED(WebKit::LogStream *this, uint64_t a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v4 = os_log_create("com.apple.WebKit", "Media");
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(this + 8);
    v6[0] = 67109376;
    v6[1] = v5;
    v7 = 2048;
    v8 = a2;
    _os_log_impl(&dword_19D52D000, v4, OS_LOG_TYPE_DEFAULT, "WebContent[%d]: HTMLMediaElement::scheduleMediaEngineWasUpdated(%llX) task scheduled", v6, 0x12u);
  }

  if (v4)
  {
    os_release(v4);
  }
}

void WebKit::LogStream::hTMLMEDIAELEMENT_SCHEDULEMEDIAENGINEWASUPDATED_LAMBDA_TASK_FIRED(WebKit::LogStream *this, uint64_t a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v4 = os_log_create("com.apple.WebKit", "Media");
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(this + 8);
    v6[0] = 67109376;
    v6[1] = v5;
    v7 = 2048;
    v8 = a2;
    _os_log_impl(&dword_19D52D000, v4, OS_LOG_TYPE_DEFAULT, "WebContent[%d]: HTMLMediaElement::scheduleMediaEngineWasUpdated(%llX) lambda(), task fired", v6, 0x12u);
  }

  if (v4)
  {
    os_release(v4);
  }
}

void WebKit::LogStream::hTMLMEDIAELEMENT_SELECTMEDIARESOURCE_LAMBDA_TASK_FIRED(WebKit::LogStream *this, uint64_t a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v4 = os_log_create("com.apple.WebKit", "Media");
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(this + 8);
    v6[0] = 67109376;
    v6[1] = v5;
    v7 = 2048;
    v8 = a2;
    _os_log_impl(&dword_19D52D000, v4, OS_LOG_TYPE_DEFAULT, "WebContent[%d]: HTMLMediaElement::selectMediaResource(%llX) lambda(), task fired", v6, 0x12u);
  }

  if (v4)
  {
    os_release(v4);
  }
}

void WebKit::LogStream::hTMLMEDIAELEMENT_SELECTMEDIARESOURCE_NOTHING_TO_LOAD(WebKit::LogStream *this, uint64_t a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v4 = os_log_create("com.apple.WebKit", "Media");
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(this + 8);
    v6[0] = 67109376;
    v6[1] = v5;
    v7 = 2048;
    v8 = a2;
    _os_log_impl(&dword_19D52D000, v4, OS_LOG_TYPE_DEFAULT, "WebContent[%d]: HTMLMediaElement::selectMediaResource(%llX) nothing to load", v6, 0x12u);
  }

  if (v4)
  {
    os_release(v4);
  }
}

void WebKit::LogStream::hTMLMEDIAELEMENT_SELECTMEDIARESOURCE_HAS_SRCATTR_PLAYER_NOT_CREATED(WebKit::LogStream *this, uint64_t a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v4 = os_log_create("com.apple.WebKit", "Media");
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(this + 8);
    v6[0] = 67109376;
    v6[1] = v5;
    v7 = 2048;
    v8 = a2;
    _os_log_impl(&dword_19D52D000, v4, OS_LOG_TYPE_DEFAULT, "WebContent[%d]: HTMLMediaElement::selectMediaResource(%llX) has srcAttr but m_player is not created", v6, 0x12u);
  }

  if (v4)
  {
    os_release(v4);
  }
}

void WebKit::LogStream::hTMLMEDIAELEMENT_SELECTMEDIARESOURCE_ATTEMPTING_USE_OF_UNATTACHED_MEDIASOURCEHANDLE(WebKit::LogStream *this, uint64_t a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v4 = os_log_create("com.apple.WebKit", "Media");
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(this + 8);
    v6[0] = 67109376;
    v6[1] = v5;
    v7 = 2048;
    v8 = a2;
    _os_log_impl(&dword_19D52D000, v4, OS_LOG_TYPE_DEFAULT, "WebContent[%d]: HTMLMediaElement::selectMediaResource(%llX) Attempting to use a detached or a previously attached MediaSourceHandle", v6, 0x12u);
  }

  if (v4)
  {
    os_release(v4);
  }
}

void WebKit::LogStream::hTMLMEDIAELEMENT_SELECTMEDIARESOURCE_USING_SRCOBJECT_PROPERTY(WebKit::LogStream *this, uint64_t a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v4 = os_log_create("com.apple.WebKit", "Media");
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(this + 8);
    v6[0] = 67109376;
    v6[1] = v5;
    v7 = 2048;
    v8 = a2;
    _os_log_impl(&dword_19D52D000, v4, OS_LOG_TYPE_DEFAULT, "WebContent[%d]: HTMLMediaElement::selectMediaResource(%llX) using 'srcObject' property", v6, 0x12u);
  }

  if (v4)
  {
    os_release(v4);
  }
}

void WebKit::LogStream::hTMLMEDIAELEMENT_SELECTMEDIARESOURCE_USING_SRC_ATTRIBUTE_URL(WebKit::LogStream *this, uint64_t a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v4 = os_log_create("com.apple.WebKit", "Media");
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(this + 8);
    v6[0] = 67109376;
    v6[1] = v5;
    v7 = 2048;
    v8 = a2;
    _os_log_impl(&dword_19D52D000, v4, OS_LOG_TYPE_DEFAULT, "WebContent[%d]: HTMLMediaElement::selectMediaResource(%llX) using 'src' attribute url", v6, 0x12u);
  }

  if (v4)
  {
    os_release(v4);
  }
}

void WebKit::LogStream::hTMLMEDIAELEMENT_SELECTMEDIARESOURCE_EMPTY_SRC(WebKit::LogStream *this, uint64_t a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v4 = os_log_create("com.apple.WebKit", "Media");
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(this + 8);
    v6[0] = 67109376;
    v6[1] = v5;
    v7 = 2048;
    v8 = a2;
    _os_log_impl(&dword_19D52D000, v4, OS_LOG_TYPE_DEFAULT, "WebContent[%d]: HTMLMediaElement::selectMediaResource(%llX) empty 'src'", v6, 0x12u);
  }

  if (v4)
  {
    os_release(v4);
  }
}

void WebKit::LogStream::hTMLMEDIAELEMENT_SETAUTOPLAYEVENTPLAYBACKSTATE(uint64_t a1, uint64_t a2, void *a3)
{
  v14 = *MEMORY[0x1E69E9840];
  v6 = os_log_create("com.apple.WebKit", "Media");
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = *(a1 + 32);
    if (*a3)
    {
      v8 = *a3 + 16;
    }

    else
    {
      v8 = 0;
    }

    v9[0] = 67109634;
    v9[1] = v7;
    v10 = 2048;
    v11 = a2;
    v12 = 2080;
    v13 = v8;
    _os_log_impl(&dword_19D52D000, v6, OS_LOG_TYPE_DEFAULT, "WebContent[%d]: HTMLMediaElement::setAutoplayEventPlaybackState(%llX) %s", v9, 0x1Cu);
  }

  if (v6)
  {
    os_release(v6);
  }
}

void WebKit::LogStream::hTMLMEDIAELEMENT_SETMUTEDINTERNAL(WebKit::LogStream *this, uint64_t a2, int a3)
{
  v13 = *MEMORY[0x1E69E9840];
  v6 = os_log_create("com.apple.WebKit", "Media");
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = *(this + 8);
    v8[0] = 67109632;
    v8[1] = v7;
    v9 = 2048;
    v10 = a2;
    v11 = 1024;
    v12 = a3;
    _os_log_impl(&dword_19D52D000, v6, OS_LOG_TYPE_DEFAULT, "WebContent[%d]: HTMLMediaElement::setMutedInternal(%llX) %d", v8, 0x18u);
  }

  if (v6)
  {
    os_release(v6);
  }
}

void WebKit::LogStream::hTMLMEDIAELEMENT_SETNETWORKSTATE(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v19 = *MEMORY[0x1E69E9840];
  v8 = os_log_create("com.apple.WebKit", "Media");
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = *(a1 + 32);
    if (*a3)
    {
      v10 = *a3 + 16;
    }

    else
    {
      v10 = 0;
    }

    if (*a4)
    {
      v11 = *a4 + 16;
    }

    else
    {
      v11 = 0;
    }

    v12[0] = 67109890;
    v12[1] = v9;
    v13 = 2048;
    v14 = a2;
    v15 = 2080;
    v16 = v10;
    v17 = 2080;
    v18 = v11;
    _os_log_impl(&dword_19D52D000, v8, OS_LOG_TYPE_DEFAULT, "WebContent[%d]: HTMLMediaElement::setNetworkState(%llX) new state = %s, current state = %s", v12, 0x26u);
  }

  if (v8)
  {
    os_release(v8);
  }
}

void WebKit::LogStream::hTMLMEDIAELEMENT_SETPLAYBACKRATE(WebKit::LogStream *this, uint64_t a2, double a3)
{
  v13 = *MEMORY[0x1E69E9840];
  v6 = os_log_create("com.apple.WebKit", "Media");
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = *(this + 8);
    v8[0] = 67109632;
    v8[1] = v7;
    v9 = 2048;
    v10 = a2;
    v11 = 2048;
    v12 = a3;
    _os_log_impl(&dword_19D52D000, v6, OS_LOG_TYPE_DEFAULT, "WebContent[%d]: HTMLMediaElement::setPlaybackRate(%llX) %f", v8, 0x1Cu);
  }

  if (v6)
  {
    os_release(v6);
  }
}

void WebKit::LogStream::hTMLMEDIAELEMENT_SETREADYSTATE(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v19 = *MEMORY[0x1E69E9840];
  v8 = os_log_create("com.apple.WebKit", "Media");
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = *(a1 + 32);
    if (*a3)
    {
      v10 = *a3 + 16;
    }

    else
    {
      v10 = 0;
    }

    if (*a4)
    {
      v11 = *a4 + 16;
    }

    else
    {
      v11 = 0;
    }

    v12[0] = 67109890;
    v12[1] = v9;
    v13 = 2048;
    v14 = a2;
    v15 = 2080;
    v16 = v10;
    v17 = 2080;
    v18 = v11;
    _os_log_impl(&dword_19D52D000, v8, OS_LOG_TYPE_DEFAULT, "WebContent[%d]: HTMLMediaElement::setReadyState(%llX) new state = %s, current state = %s", v12, 0x26u);
  }

  if (v8)
  {
    os_release(v8);
  }
}

void WebKit::LogStream::hTMLMEDIAELEMENT_SETSHOWPOSTERFLAG(WebKit::LogStream *this, uint64_t a2, int a3)
{
  v13 = *MEMORY[0x1E69E9840];
  v6 = os_log_create("com.apple.WebKit", "Media");
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = *(this + 8);
    v8[0] = 67109632;
    v8[1] = v7;
    v9 = 2048;
    v10 = a2;
    v11 = 1024;
    v12 = a3;
    _os_log_impl(&dword_19D52D000, v6, OS_LOG_TYPE_DEFAULT, "WebContent[%d]: HTMLMediaElement::setShowPosterFlag(%llX) %d", v8, 0x18u);
  }

  if (v6)
  {
    os_release(v6);
  }
}

void WebKit::LogStream::hTMLMEDIAELEMENT_SETVOLUME(WebKit::LogStream *this, uint64_t a2, double a3)
{
  v13 = *MEMORY[0x1E69E9840];
  v6 = os_log_create("com.apple.WebKit", "Media");
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = *(this + 8);
    v8[0] = 67109632;
    v8[1] = v7;
    v9 = 2048;
    v10 = a2;
    v11 = 2048;
    v12 = a3;
    _os_log_impl(&dword_19D52D000, v6, OS_LOG_TYPE_DEFAULT, "WebContent[%d]: HTMLMediaElement::setVolume(%llX) %f", v8, 0x1Cu);
  }

  if (v6)
  {
    os_release(v6);
  }
}

void WebKit::LogStream::hTMLVIDEOELEMENT_MEDIAPLAYERRENDERINGMODECHANGED(WebKit::LogStream *this, uint64_t a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v4 = os_log_create("com.apple.WebKit", "Media");
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(this + 8);
    v6[0] = 67109376;
    v6[1] = v5;
    v7 = 2048;
    v8 = a2;
    _os_log_impl(&dword_19D52D000, v4, OS_LOG_TYPE_DEFAULT, "WebContent[%d]: HTMLVideoElement::mediaPlayerRenderingModeChanged(%llX)", v6, 0x12u);
  }

  if (v4)
  {
    os_release(v4);
  }
}

void WebKit::LogStream::hTMLVIDEOELEMENT_MEDIAPLAYERFIRSTVIDEOFRAMEAVAILABLE(WebKit::LogStream *this, uint64_t a2, int a3)
{
  v13 = *MEMORY[0x1E69E9840];
  v6 = os_log_create("com.apple.WebKit", "Media");
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = *(this + 8);
    v8[0] = 67109632;
    v8[1] = v7;
    v9 = 2048;
    v10 = a2;
    v11 = 1024;
    v12 = a3;
    _os_log_impl(&dword_19D52D000, v6, OS_LOG_TYPE_DEFAULT, "WebContent[%d]: HTMLVideoElement::mediaPlayerFirstVideoFrameAvailable(%llX) m_showPoster = %d", v8, 0x18u);
  }

  if (v6)
  {
    os_release(v6);
  }
}

void WebKit::LogStream::hTMLVIDEOELEMENT_SCHEDULERESIZEEVENT(WebKit::LogStream *this, uint64_t a2, float a3, float a4)
{
  v17 = *MEMORY[0x1E69E9840];
  v8 = os_log_create("com.apple.WebKit", "Media");
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = *(this + 8);
    v10[0] = 67109888;
    v10[1] = v9;
    v11 = 2048;
    v12 = a2;
    v13 = 2048;
    v14 = a3;
    v15 = 2048;
    v16 = a4;
    _os_log_impl(&dword_19D52D000, v8, OS_LOG_TYPE_DEFAULT, "WebContent[%d]: HTMLMediaElement::scheduleResizeEvent(%llX) width: %f height: %f", v10, 0x26u);
  }

  if (v8)
  {
    os_release(v8);
  }
}

void WebKit::LogStream::pERFORMANCELOGGING_MEMORY_USAGE_INFO(uint64_t a1, void *a2)
{
  v10 = *MEMORY[0x1E69E9840];
  v4 = os_log_create("com.apple.WebKit", "PerformanceLogging");
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 32);
    if (*a2)
    {
      v6 = *a2 + 16;
    }

    else
    {
      v6 = 0;
    }

    v7[0] = 67109378;
    v7[1] = v5;
    v8 = 2080;
    v9 = v6;
    _os_log_impl(&dword_19D52D000, v4, OS_LOG_TYPE_DEFAULT, "WebContent[%d]: Memory usage info dump at %s:", v7, 0x12u);
  }

  if (v4)
  {
    os_release(v4);
  }
}

void WebKit::LogStream::pERFORMANCELOGGING_MEMORY_USAGE_FOR_KEY(uint64_t a1, void *a2, uint64_t a3)
{
  v14 = *MEMORY[0x1E69E9840];
  v6 = os_log_create("com.apple.WebKit", "PerformanceLogging");
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = *(a1 + 32);
    if (*a2)
    {
      v8 = *a2 + 16;
    }

    else
    {
      v8 = 0;
    }

    v9[0] = 67109634;
    v9[1] = v7;
    v10 = 2080;
    v11 = v8;
    v12 = 2048;
    v13 = a3;
    _os_log_impl(&dword_19D52D000, v6, OS_LOG_TYPE_DEFAULT, "WebContent[%d]:   %s: %llu", v9, 0x1Cu);
  }

  if (v6)
  {
    os_release(v6);
  }
}

void WebKit::LogStream::pERFORMANCEMONITOR_MEASURE_POSTLOAD_CPUUSAGE(WebKit::LogStream *this, double a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v4 = os_log_create("com.apple.WebKit", "PerformanceLogging");
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(this + 8);
    v6[0] = 67109376;
    v6[1] = v5;
    v7 = 2048;
    v8 = a2;
    _os_log_impl(&dword_19D52D000, v4, OS_LOG_TYPE_DEFAULT, "WebContent[%d]: PerformanceMonitor::measurePostLoadCPUUsage: Process was using %.1f%% CPU after the page load.", v6, 0x12u);
  }

  if (v4)
  {
    os_release(v4);
  }
}

void WebKit::LogStream::pERFORMANCEMONITOR_MEASURE_POSTLOAD_MEMORYUSAGE(WebKit::LogStream *this, uint64_t a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v4 = os_log_create("com.apple.WebKit", "PerformanceLogging");
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(this + 8);
    v6[0] = 67109376;
    v6[1] = v5;
    v7 = 2048;
    v8 = a2;
    _os_log_impl(&dword_19D52D000, v4, OS_LOG_TYPE_DEFAULT, "WebContent[%d]: PerformanceMonitor::measurePostLoadMemoryUsage: Process was using %llu bytes of memory after the page load.", v6, 0x12u);
  }

  if (v4)
  {
    os_release(v4);
  }
}

void WebKit::LogStream::pERFORMANCEMONITOR_MEASURE_POSTBACKGROUND_MEMORYUSAGE(WebKit::LogStream *this, uint64_t a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v4 = os_log_create("com.apple.WebKit", "PerformanceLogging");
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(this + 8);
    v6[0] = 67109376;
    v6[1] = v5;
    v7 = 2048;
    v8 = a2;
    _os_log_impl(&dword_19D52D000, v4, OS_LOG_TYPE_DEFAULT, "WebContent[%d]: PerformanceMonitor:measurePostBackgroundingMemoryUsage: Process was using %llu bytes of memory after becoming non visible.", v6, 0x12u);
  }

  if (v4)
  {
    os_release(v4);
  }
}

void WebKit::LogStream::pERFORMANCEMONITOR_MEASURE_POSTBACKGROUND_CPUUSAGE(WebKit::LogStream *this, double a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v4 = os_log_create("com.apple.WebKit", "PerformanceLogging");
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(this + 8);
    v6[0] = 67109376;
    v6[1] = v5;
    v7 = 2048;
    v8 = a2;
    _os_log_impl(&dword_19D52D000, v4, OS_LOG_TYPE_DEFAULT, "WebContent[%d]: PerformanceMonitor::measurePostBackgroundingCPUUsage: Process was using %.1f%% CPU after becoming non visible.", v6, 0x12u);
  }

  if (v4)
  {
    os_release(v4);
  }
}

void WebKit::LogStream::pERFORMANCEMONITOR_MEASURE_CPUUSAGE_IN_ACTIVITYSTATE(uint64_t a1, void *a2, double a3)
{
  v14 = *MEMORY[0x1E69E9840];
  v6 = os_log_create("com.apple.WebKit", "PerformanceLogging");
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = *(a1 + 32);
    if (*a2)
    {
      v8 = *a2 + 16;
    }

    else
    {
      v8 = 0;
    }

    v9[0] = 67109634;
    v9[1] = v7;
    v10 = 2048;
    v11 = a3;
    v12 = 2080;
    v13 = v8;
    _os_log_impl(&dword_19D52D000, v6, OS_LOG_TYPE_DEFAULT, "WebContent[%d]: PerformanceMonitor::measureCPUUsageInActivityState: Process is using %.1f%% CPU in state: %s", v9, 0x1Cu);
  }

  if (v6)
  {
    os_release(v6);
  }
}

void WebKit::LogStream::pOLICYCHECKIER_CHECKNAVIGATIONPOLICY_CONTINUE_LOAD_IN_ANOTHER_PROCESS(WebKit::LogStream *this, uint64_t a2, uint64_t a3)
{
  v13 = *MEMORY[0x1E69E9840];
  v6 = os_log_create("com.apple.WebKit", "Loading");
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = *(this + 8);
    v8[0] = 67109632;
    v8[1] = v7;
    v9 = 2048;
    v10 = a2;
    v11 = 2048;
    v12 = a3;
    _os_log_impl(&dword_19D52D000, v6, OS_LOG_TYPE_DEFAULT, "WebContent[%d]: [pageID=%llu, frameID=%llu] PolicyChecker::checkNavigationPolicy: stopping because policyAction from dispatchDecidePolicyForNavigationAction is LoadWillContinueInAnotherProcess", v8, 0x1Cu);
  }

  if (v6)
  {
    os_release(v6);
  }
}

void WebKit::LogStream::pOLICYCHECKIER_CHECKNAVIGATIONPOLICY_CONTINUE_INITIAL_EMPTY_DOCUMENT(WebKit::LogStream *this, uint64_t a2, uint64_t a3)
{
  v13 = *MEMORY[0x1E69E9840];
  v6 = os_log_create("com.apple.WebKit", "Loading");
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = *(this + 8);
    v8[0] = 67109632;
    v8[1] = v7;
    v9 = 2048;
    v10 = a2;
    v11 = 2048;
    v12 = a3;
    _os_log_impl(&dword_19D52D000, v6, OS_LOG_TYPE_DEFAULT, "WebContent[%d]: [pageID=%llu, frameID=%llu] PolicyChecker::checkNavigationPolicy: continuing because this is an initial empty document", v8, 0x1Cu);
  }

  if (v6)
  {
    os_release(v6);
  }
}

void WebKit::LogStream::lOCALFRAMEVIEW_FIRING_FIRST_VISUALLY_NON_EMPTY_LAYOUT_MILESTONE(WebKit::LogStream *this, uint64_t a2, uint64_t a3, int a4)
{
  v17 = *MEMORY[0x1E69E9840];
  v8 = os_log_create("com.apple.WebKit", "Layout");
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = *(this + 8);
    v10[0] = 67109888;
    v10[1] = v9;
    v11 = 2048;
    v12 = a2;
    v13 = 2048;
    v14 = a3;
    v15 = 1024;
    v16 = a4;
    _os_log_impl(&dword_19D52D000, v8, OS_LOG_TYPE_DEFAULT, "WebContent[%d]: [pageID=%llu, frameID=%llu, isMainFrame=%d] LocalFrameView::fireLayoutRelatedMilestonesIfNeeded: Firing first visually non-empty layout milestone on the main frame", v10, 0x22u);
  }

  if (v8)
  {
    os_release(v8);
  }
}

void WebKit::LogStream::lOCALFRAMEVIEW_FIRING_RESIZE_EVENTS_DISABLED_FOR_PAGE(WebKit::LogStream *this, uint64_t a2, uint64_t a3, int a4)
{
  v17 = *MEMORY[0x1E69E9840];
  v8 = os_log_create("com.apple.WebKit", "Events");
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = *(this + 8);
    v10[0] = 67109888;
    v10[1] = v9;
    v11 = 2048;
    v12 = a2;
    v13 = 2048;
    v14 = a3;
    v15 = 1024;
    v16 = a4;
    _os_log_impl(&dword_19D52D000, v8, OS_LOG_TYPE_DEFAULT, "WebContent[%d]: [pageID=%llu, frameID=%llu, isMainFrame=%d] LocalFrameView::scheduleResizeEventIfNeeded: Not firing resize events because they are temporarily disabled for this page", v10, 0x22u);
  }

  if (v8)
  {
    os_release(v8);
  }
}