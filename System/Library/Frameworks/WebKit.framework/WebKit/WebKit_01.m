void sub_19D559C08(_Unwind_Exception *exception_object, WTF::StringImpl *a2)
{
  if (atomic_fetch_add_explicit(v2, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v2, a2);
  }

  _Unwind_Resume(exception_object);
}

void WebKit::setDebugBoolValueIfInUserDefaults(atomic_uint **this, atomic_uint **a2, atomic_uint **a3, atomic_uint **a4, const WTF::String *a5, WebKit::WebPreferencesStore *a6)
{
  WebKit::debugUserDefaultsValue(&v9, this, a2, a3, a4);
  if (v9)
  {
    v8 = v9;
    if (objc_opt_respondsToSelector())
    {
      WebKit::WebPreferencesStore::setBoolValueForKey(a5, a4, [v8 BOOLValue]);
    }
  }
}

uint64_t WebKit::WebPreferences::platformGetStringUserValueForKey(WebKit::WebPreferences *this, atomic_uint **a2, WTF::StringImpl **a3)
{
  if (!*(this + 2))
  {
    return 0;
  }

  v6 = [MEMORY[0x1E695E000] standardUserDefaults];
  WebKit::makeKey(&v16, *(this + 2), this + 3, a2);
  v7 = [v6 stringForKey:v16];
  v8 = v7;
  if (v7)
  {
    v9 = v7;
  }

  v10 = v16;
  v16 = 0;
  if (v10)
  {
  }

  if (!v8)
  {
    return 0;
  }

  MEMORY[0x19EB02040](&v16, v8);
  v12 = v16;
  v16 = 0;
  v13 = *a3;
  *a3 = v12;
  if (v13)
  {
    if (atomic_fetch_add_explicit(v13, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v13, v11);
    }

    v14 = v16;
    v16 = 0;
    if (v14)
    {
      if (atomic_fetch_add_explicit(v14, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v14, v11);
      }
    }
  }

  return 1;
}

uint64_t WebKit::WebPreferences::platformGetBoolUserValueForKey(WebKit::WebPreferences *this, atomic_uint **a2, BOOL *a3)
{
  if (!*(this + 2))
  {
    goto LABEL_10;
  }

  v6 = [MEMORY[0x1E695E000] standardUserDefaults];
  WebKit::makeKey(&v13, *(this + 2), this + 3, a2);
  v7 = [v6 objectForKey:v13];
  v8 = v7;
  if (v7)
  {
    v9 = v7;
  }

  v10 = v13;
  v13 = 0;
  if (v10)
  {
  }

  if (v8)
  {
    v11 = objc_opt_respondsToSelector();
    if (v11)
    {
      *a3 = [v8 BOOLValue];
    }
  }

  else
  {
LABEL_10:
    v11 = 0;
  }

  return v11 & 1;
}

uint64_t WebKit::WebPreferences::platformGetUInt32UserValueForKey(WebKit::WebPreferences *this, atomic_uint **a2, unsigned int *a3)
{
  if (!*(this + 2))
  {
    goto LABEL_10;
  }

  v6 = [MEMORY[0x1E695E000] standardUserDefaults];
  WebKit::makeKey(&v13, *(this + 2), this + 3, a2);
  v7 = [v6 objectForKey:v13];
  v8 = v7;
  if (v7)
  {
    v9 = v7;
  }

  v10 = v13;
  v13 = 0;
  if (v10)
  {
  }

  if (v8)
  {
    v11 = objc_opt_respondsToSelector();
    if (v11)
    {
      *a3 = [v8 intValue];
    }
  }

  else
  {
LABEL_10:
    v11 = 0;
  }

  return v11 & 1;
}

uint64_t WebKit::WebPreferences::platformGetDoubleUserValueForKey(WebKit::WebPreferences *this, atomic_uint **a2, double *a3)
{
  if (!*(this + 2))
  {
    goto LABEL_10;
  }

  v6 = [MEMORY[0x1E695E000] standardUserDefaults];
  WebKit::makeKey(&v14, *(this + 2), this + 3, a2);
  v7 = [v6 objectForKey:v14];
  v8 = v7;
  if (v7)
  {
    v9 = v7;
  }

  v10 = v14;
  v14 = 0;
  if (v10)
  {
  }

  if (v8)
  {
    v11 = objc_opt_respondsToSelector();
    if (v11)
    {
      [v8 doubleValue];
      *a3 = v12;
    }
  }

  else
  {
LABEL_10:
    v11 = 0;
  }

  return v11 & 1;
}

uint64_t WebKit::WebPreferences::registerDefaultUInt32ValueForKey(WebKit::WebPreferences *this, WTF::StringImpl **a2, int a3)
{
  WebKit::WebPreferencesStore::setOverrideDefaultsUInt32ValueForKey((this + 40), a2, a3);
  v6 = 0;
  result = WebKit::WebPreferences::platformGetUInt32UserValueForKey(this, a2, &v6);
  if (result)
  {
    return WebKit::WebPreferencesStore::setUInt32ValueForKey((this + 40), a2, v6);
  }

  return result;
}

WTF::StringImpl *WebKit::WebPreferencesStore::setOverrideDefaultsUInt32ValueForKey(WebKit::WebPreferencesStore *this, WTF::StringImpl **a2, int a3)
{
  LODWORD(v6) = a3;
  v7 = 2;
  result = WTF::HashMap<WTF::String,mpark::variant<WTF::String,BOOL,unsigned int,double>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<mpark::variant<WTF::String,BOOL,unsigned int,double>>,WTF::MemoryCompactRobinHoodHashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::inlineSet<WTF::String const&,mpark::variant<WTF::String,BOOL,unsigned int,double>>(this + 24, a2, &v6, v5);
  if (!v7)
  {
    result = v6;
    v6 = 0;
    if (result)
    {
      if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        return WTF::StringImpl::destroy(result, v4);
      }
    }
  }

  return result;
}

uint64_t API::InjectedBundleClient::operator new(API::InjectedBundleClient *this, void *a2)
{
  if (this == 8 && API::InjectedBundleClient::operator new(unsigned long)::s_heapRef)
  {
    return bmalloc::api::tzoneAllocateNonCompact(API::InjectedBundleClient::operator new(unsigned long)::s_heapRef, a2);
  }

  else
  {
    return bmalloc::api::tzoneAllocateNonCompactSlow();
  }
}

uint64_t API::LegacyContextHistoryClient::operator new(API::LegacyContextHistoryClient *this, void *a2)
{
  if (this == 8 && API::LegacyContextHistoryClient::operator new(unsigned long)::s_heapRef)
  {
    return bmalloc::api::tzoneAllocateNonCompact(API::LegacyContextHistoryClient::operator new(unsigned long)::s_heapRef, a2);
  }

  else
  {
    return bmalloc::api::tzoneAllocateNonCompactSlow();
  }
}

uint64_t API::AutomationClient::operator new(API::AutomationClient *this, void *a2)
{
  if (this == 8 && API::AutomationClient::operator new(unsigned long)::s_heapRef)
  {
    return bmalloc::api::tzoneAllocateNonCompact(API::AutomationClient::operator new(unsigned long)::s_heapRef, a2);
  }

  else
  {
    return bmalloc::api::tzoneAllocateNonCompactSlow();
  }
}

WebKit::VisitedLinkStore *WebKit::VisitedLinkStore::VisitedLinkStore(WebKit::VisitedLinkStore *this)
{
  v2 = API::Object::Object(this);
  *v2 = &unk_1F1115D28;
  *(v2 + 2) = &unk_1F10EA5E0;
  *(v2 + 3) = 0;
  IdentifierInternal = WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>::generateIdentifierInternal();
  *this = &unk_1F1115C10;
  *(this + 2) = &unk_1F1115C60;
  *(this + 6) = 0;
  *(this + 7) = 0;
  *(this + 4) = IdentifierInternal;
  *(this + 5) = &unk_1F1115CA8;
  WebKit::SharedStringHashStore::SharedStringHashStore(this + 64, this + 40);
  return this;
}

uint64_t WebKit::SharedStringHashStore::SharedStringHashStore(uint64_t a1, uint64_t a2)
{
  *a1 = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 8) = a2;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  v3 = WTF::RunLoop::mainSingleton(a1);
  v4 = v3;
  while (1)
  {
    v5 = *(v3 + 8);
    if ((v5 & 1) == 0)
    {
      break;
    }

    v8 = *(v3 + 8);
    atomic_compare_exchange_strong_explicit((v3 + 8), &v8, v5 + 2, memory_order_relaxed, memory_order_relaxed);
    if (v8 == v5)
    {
      goto LABEL_4;
    }
  }

  WTF::ThreadSafeWeakPtrControlBlock::strongRef(*(v3 + 8));
LABEL_4:
  v9 = v4;
  WTF::RunLoop::Timer::Timer<WebKit::SharedStringHashStore>((a1 + 72), &v9, a1);
  v6 = v9;
  v9 = 0;
  if (v6)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WTF::SerialFunctionDispatcher,(WTF::DestructionThread)0>::deref((v6 + 8));
  }

  return a1;
}

void WebKit::WebProcessCache::updateCapacity(WebKit::WebProcessCache *this, WebKit::WebProcessPool *a2)
{
  v22 = *MEMORY[0x1E69E9840];
  v3 = 86;
  if (*(a2 + 85))
  {
    v3 = 84;
  }

  if (*(a2 + v3) != 1)
  {
    goto LABEL_13;
  }

  if (*(a2 + 91) != 1)
  {
    goto LABEL_9;
  }

  {
    if (WebKit::LegacyGlobalSettings::singleton(void)::properties != 2)
    {
      goto LABEL_9;
    }
  }

  else
  {
    WebKit::LegacyGlobalSettings::singleton(void)::properties = 2;
    unk_1ED643540 = 0u;
    unk_1ED643550 = 0u;
  }

  if (*(a2 + 96) == 1)
  {
    if (*(a2 + v3))
    {
LABEL_9:
      if (*(a2 + 91))
      {
        v4 = *(a2 + 96);
        v5 = qword_1ED641058;
        v6 = os_log_type_enabled(qword_1ED641058, OS_LOG_TYPE_DEFAULT);
        if (v4 == 1)
        {
          if (v6)
          {
            v16 = 134218240;
            v17 = this;
            v18 = 1024;
            v19 = 0;
            v7 = "%p - [PID=%d] WebProcessCache::updateCapacity: Cache is disabled because process-per-tab was disabled";
LABEL_19:
            _os_log_impl(&dword_19D52D000, v5, OS_LOG_TYPE_DEFAULT, v7, &v16, 0x12u);
            goto LABEL_20;
          }
        }

        else if (v6)
        {
          v16 = 134218240;
          v17 = this;
          v18 = 1024;
          v19 = 0;
          v7 = "%p - [PID=%d] WebProcessCache::updateCapacity: Cache is disabled because cache model is not PrimaryWebBrowser";
          goto LABEL_19;
        }
      }

      else
      {
        v5 = qword_1ED641058;
        if (os_log_type_enabled(qword_1ED641058, OS_LOG_TYPE_DEFAULT))
        {
          v16 = 134218240;
          v17 = this;
          v18 = 1024;
          v19 = 0;
          v7 = "%p - [PID=%d] WebProcessCache::updateCapacity: Cache is disabled by client";
          goto LABEL_19;
        }
      }

      goto LABEL_20;
    }

LABEL_13:
    v5 = qword_1ED641058;
    if (os_log_type_enabled(qword_1ED641058, OS_LOG_TYPE_DEFAULT))
    {
      v16 = 134218240;
      v17 = this;
      v18 = 1024;
      v19 = 0;
      v7 = "%p - [PID=%d] WebProcessCache::updateCapacity: Cache is disabled because process swap on navigation is disabled";
      goto LABEL_19;
    }

LABEL_20:
    *(this + 4) = 0;
    goto LABEL_21;
  }

  v8 = WTF::ramSizeDisregardingJetsamLimit(this);
  v9 = qword_1ED641058;
  if (os_log_type_enabled(qword_1ED641058, OS_LOG_TYPE_DEFAULT))
  {
    v16 = 134218496;
    v17 = this;
    v18 = 1024;
    v19 = 0;
    v20 = 2048;
    v21 = v8;
    _os_log_impl(&dword_19D52D000, v9, OS_LOG_TYPE_DEFAULT, "%p - [PID=%d] WebProcessCache::memory size %zu bytes", &v16, 0x1Cu);
  }

  if (!(v8 >> 31))
  {
    *(this + 4) = 0;
    v10 = qword_1ED641058;
    if (!os_log_type_enabled(qword_1ED641058, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_21;
    }

    v16 = 134218240;
    v17 = this;
    v18 = 1024;
    v19 = 0;
    v11 = "%p - [PID=%d] WebProcessCache::updateCapacity: Cache is disabled because device does not have enough RAM";
    v12 = v10;
    v13 = 18;
    goto LABEL_34;
  }

  if ((v8 >> 28) >= 0xA)
  {
    v14 = 10;
  }

  else
  {
    v14 = v8 >> 28;
  }

  *(this + 4) = v14;
  v15 = qword_1ED641058;
  if (os_log_type_enabled(qword_1ED641058, OS_LOG_TYPE_DEFAULT))
  {
    v16 = 134218496;
    v17 = this;
    v18 = 1024;
    v19 = 0;
    v20 = 1024;
    LODWORD(v21) = v14;
    v11 = "%p - [PID=%d] WebProcessCache::updateCapacity: Cache has a capacity of %u processes";
    v12 = v15;
    v13 = 24;
LABEL_34:
    _os_log_impl(&dword_19D52D000, v12, OS_LOG_TYPE_DEFAULT, v11, &v16, v13);
  }

LABEL_21:
  if (!*(this + 4))
  {
    WebKit::WebProcessCache::clear(this);
  }
}

uint64_t WebKit::WebProcessCache::platformInitialize(WebKit::WebProcessCache *this)
{
  [objc_msgSend(MEMORY[0x1E695E000] "standardUserDefaults")];
  if (v1 > 0.0 && v1 <= 86400.0)
  {
    WebKit::WebProcessCache::cachedProcessLifetime = *&v1;
    v4 = v1;
    WTFLogAlways();
  }

  result = [objc_msgSend(MEMORY[0x1E695E000] standardUserDefaults];
  if (v3 > 0.0 && v3 <= 3600.0)
  {
    WebKit::WebProcessCache::clearingDelayAfterApplicationResignsActive = *&v3;
    return WTFLogAlways();
  }

  return result;
}

uint64_t WebKit::WebProcessCache::clear(uint64_t this)
{
  v1 = this;
  v15 = *MEMORY[0x1E69E9840];
  v2 = *(this + 32);
  if (v2)
  {
    v3 = *(v2 - 12);
    if (v3)
    {
      v4 = qword_1ED641058;
      if (!os_log_type_enabled(qword_1ED641058, OS_LOG_TYPE_DEFAULT))
      {
LABEL_15:
        *(v1 + 32) = 0;
        WTF::HashTable<unsigned long long,WTF::KeyValuePair<unsigned long long,WTF::Ref<WebKit::WebProcessCache::CachedProcess,WTF::RawPtrTraits<WebKit::WebProcessCache::CachedProcess>,WTF::DefaultRefDerefTraits<WebKit::WebProcessCache::CachedProcess>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<unsigned long long,WTF::Ref<WebKit::WebProcessCache::CachedProcess,WTF::RawPtrTraits<WebKit::WebProcessCache::CachedProcess>,WTF::DefaultRefDerefTraits<WebKit::WebProcessCache::CachedProcess>>>>,WTF::DefaultHash<unsigned long long>,WTF::HashMap<unsigned long long,WTF::Ref<WebKit::WebProcessCache::CachedProcess,WTF::RawPtrTraits<WebKit::WebProcessCache::CachedProcess>,WTF::DefaultRefDerefTraits<WebKit::WebProcessCache::CachedProcess>>,WTF::DefaultHash<unsigned long long>,WTF::HashTraits<unsigned long long>,WTF::HashTraits<WTF::Ref<WebKit::WebProcessCache::CachedProcess,WTF::RawPtrTraits<WebKit::WebProcessCache::CachedProcess>,WTF::DefaultRefDerefTraits<WebKit::WebProcessCache::CachedProcess>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<unsigned long long>,WTF::FastMalloc>::deallocateTable(v2, v5);
LABEL_16:
        this = *(v1 + 40);
        if (this)
        {
          *(v1 + 40) = 0;
          return WTF::HashTable<WebCore::Site,WTF::KeyValuePair<WebCore::Site,WTF::Ref<WebKit::WebProcessCache::CachedProcess,WTF::RawPtrTraits<WebKit::WebProcessCache::CachedProcess>,WTF::DefaultRefDerefTraits<WebKit::WebProcessCache::CachedProcess>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebCore::Site,WTF::Ref<WebKit::WebProcessCache::CachedProcess,WTF::RawPtrTraits<WebKit::WebProcessCache::CachedProcess>,WTF::DefaultRefDerefTraits<WebKit::WebProcessCache::CachedProcess>>>>,WTF::DefaultHash<WebCore::Site>,WTF::HashMap<WebCore::Site,WTF::Ref<WebKit::WebProcessCache::CachedProcess,WTF::RawPtrTraits<WebKit::WebProcessCache::CachedProcess>,WTF::DefaultRefDerefTraits<WebKit::WebProcessCache::CachedProcess>>,WTF::DefaultHash<WebCore::Site>,WTF::HashTraits<WebCore::Site>,WTF::HashTraits<WTF::Ref<WebKit::WebProcessCache::CachedProcess,WTF::RawPtrTraits<WebKit::WebProcessCache::CachedProcess>,WTF::DefaultRefDerefTraits<WebKit::WebProcessCache::CachedProcess>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WebCore::Site>,WTF::FastMalloc>::deallocateTable(this, v5);
        }

        return this;
      }

      v6 = *(v1 + 40);
      if (v6)
      {
        v7 = *(v6 - 12);
      }

      else
      {
        v7 = 0;
      }

      goto LABEL_13;
    }
  }

  v8 = *(this + 40);
  if (v8)
  {
    v7 = *(v8 - 12);
    if (v7)
    {
      v4 = qword_1ED641058;
      if (!os_log_type_enabled(qword_1ED641058, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_14;
      }

      if (v2)
      {
        v3 = *(v2 - 12);
      }

      else
      {
        v3 = 0;
      }

LABEL_13:
      v9 = 134218496;
      v10 = v1;
      v11 = 1024;
      v12 = 0;
      v13 = 1024;
      v14 = v7 + v3;
      _os_log_impl(&dword_19D52D000, v4, OS_LOG_TYPE_DEFAULT, "%p - [PID=%d] WebProcessCache::clear: Evicting %u processes", &v9, 0x18u);
      v2 = *(v1 + 32);
LABEL_14:
      if (!v2)
      {
        goto LABEL_16;
      }

      goto LABEL_15;
    }
  }

  return this;
}

WTF *WebKit::WebProcessPool::platformInitialize(uint64_t a1, int a2)
{
  v152 = *MEMORY[0x1E69E9840];
  WTF::WeakPtrFactory<IPC::MessageReceiver,WTF::DefaultWeakPtrImpl>::initializeIfNeeded((a1 + 24), a1 + 16);
  v3 = *(a1 + 24);
  atomic_fetch_add(v3, 1u);
  v4 = malloc_type_malloc(0x28uLL, 0x10E004053C0834CuLL);
  *v4 = MEMORY[0x1E69E9818];
  v4[1] = 50331650;
  v4[2] = WTF::BlockPtr<void ()(void)>::fromCallable<WebKit::WebProcessPool::initializeHardwareKeyboardAvailability(void)::$_0>(WebKit::WebProcessPool::initializeHardwareKeyboardAvailability(void)::$_0)::{lambda(void *)#1}::__invoke;
  v4[3] = &WTF::BlockPtr<void ()(void)>::fromCallable<WebKit::WebProcessPool::initializeHardwareKeyboardAvailability(void)::$_0>(WebKit::WebProcessPool::initializeHardwareKeyboardAvailability(void)::$_0)::descriptor;
  v4[4] = v3;
  queue = dispatch_get_global_queue(0, 0);
  dispatch_async(queue, v4);
  _Block_release(v4);
  v5 = [WKProcessPoolWeakObserver alloc];
  WTF::WeakPtrFactory<IPC::MessageReceiver,WTF::DefaultWeakPtrImpl>::initializeIfNeeded((a1 + 24), a1 + 16);
  v6 = *(a1 + 24);
  atomic_fetch_add(v6, 1u);
  *&__dst[0] = v6;
  v7 = [(WKProcessPoolWeakObserver *)v5 initWithWeakPtr:__dst];
  v9 = *(a1 + 512);
  *(a1 + 512) = v7;
  if (v9)
  {
  }

  v10 = *&__dst[0];
  *&__dst[0] = 0;
  if (v10 && atomic_fetch_add(v10, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v10);
    WTF::fastFree(v10, v8);
  }

  memcpy(__dst, &off_1E7632818, sizeof(__dst));
  WTF::Vector<WTF::ASCIILiteral,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::Vector(&v146, __dst, 0x7EuLL);
  WTF::WeakPtrFactory<IPC::MessageReceiver,WTF::DefaultWeakPtrImpl>::initializeIfNeeded((a1 + 24), a1 + 16);
  v12 = *(a1 + 24);
  atomic_fetch_add(v12, 1u);
  v137 = 0;
  v138 = 0;
  v13 = v148;
  v14 = &unk_19E702000;
  if (!v148)
  {
LABEL_49:
    v35 = 0;
    goto LABEL_50;
  }

  if (v148 >> 30)
  {
    __break(0xC471u);
    JUMPOUT(0x19D55B7C4);
  }

  v15 = WTF::fastMalloc((4 * v148));
  LODWORD(v138) = v13;
  v137 = v15;
  if (!v148)
  {
    goto LABEL_48;
  }

  v16 = v146;
  v17 = MEMORY[0x1E69E9820];
  v18 = 16 * v148;
  do
  {
    out_token = 0;
    v19 = *v16;
    *&__dst[0] = v17;
    *(&__dst[0] + 1) = 3321888768;
    *&__dst[1] = ___ZZN6WebKit14WebProcessPool29registerNotificationObserversEvENK3__0clERKN3WTF12ASCIILiteralE_block_invoke;
    *(&__dst[1] + 1) = &__block_descriptor_56_e8_32c102_ZTSKZZN6WebKit14WebProcessPool29registerNotificationObserversEvENK3__0clERKN3WTF12ASCIILiteralEEUliE__e8_v12__0i8l;
    if (v12)
    {
      atomic_fetch_add(v12, 1u);
      *v142 = *v16;
      atomic_fetch_add(v12, 1u);
    }

    else
    {
      *v142 = *v16;
    }

    *&__dst[2] = v12;
    *(&__dst[2] + 8) = *v142;
    v20 = notify_register_dispatch(v19, &out_token, queue, __dst);
    v21 = v20;
    if (v12)
    {
      if (atomic_fetch_add(v12, 0xFFFFFFFF) == 1)
      {
        atomic_store(1u, v12);
        WTF::fastFree(v12, v11);
        if (!v21)
        {
LABEL_15:
          v22 = *(v12 + 8);
          if (v22)
          {
            CFRetain(*(v22 - 8));
            state64[0] = 0;
            state = notify_get_state(out_token, state64);
            v24 = *(v16 + 1);
            if (v24)
            {
              if (v24 == 1)
              {
                v34 = MEMORY[0x1E696EB88];
                atomic_fetch_add_explicit(MEMORY[0x1E696EB88], 2u, memory_order_relaxed);
                v25 = v34;
              }

              else
              {
                WTF::StringImpl::createWithoutCopyingNonEmpty();
                v25 = v142[0];
              }

              v150 = v25;
            }

            else
            {
              v150 = 0;
            }

            WebKit::WebProcessPool::setNotifyState(v22 - 16, &v150, state, state64[0]);
            v27 = v150;
            v150 = 0;
            if (v27 && atomic_fetch_add_explicit(v27, 0xFFFFFFFE, memory_order_relaxed) == 2)
            {
              WTF::StringImpl::destroy(v27, v26);
            }

            CFRelease(*(v22 - 8));
          }

LABEL_26:
          v30 = out_token & 0xFFFFFF00;
          v29 = out_token;
          v28 = 1;
          goto LABEL_27;
        }
      }

      else if (!v20)
      {
        goto LABEL_15;
      }
    }

    else if (!v20)
    {
      goto LABEL_26;
    }

    v28 = 0;
    v29 = 0;
    v30 = 0;
LABEL_27:
    v31 = *&__dst[2];
    *&__dst[2] = 0;
    if (v31 && atomic_fetch_add(v31, 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, v31);
      WTF::fastFree(v31, v11);
      if (!v28)
      {
        goto LABEL_34;
      }
    }

    else if (!v28)
    {
      goto LABEL_34;
    }

    LODWORD(__dst[0]) = v30 | v29;
    v32 = HIDWORD(v138);
    if (HIDWORD(v138) == v138)
    {
      v33 = WTF::Vector<WebKit::WebViewDataType,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(&v137, HIDWORD(v138) + 1, __dst);
      v32 = HIDWORD(v138);
      *(v137 + HIDWORD(v138)) = *v33;
    }

    else
    {
      *(v137 + HIDWORD(v138)) = v30 | v29;
    }

    HIDWORD(v138) = v32 + 1;
LABEL_34:
    v16 = (v16 + 16);
    v18 -= 16;
  }

  while (v18);
  v35 = v138;
  v13 = HIDWORD(v138);
  if (v138 <= HIDWORD(v138))
  {
    v14 = &unk_19E702000;
  }

  else
  {
    v15 = v137;
    v14 = &unk_19E702000;
    if (HIDWORD(v138))
    {
      LODWORD(v138) = HIDWORD(v138);
      v137 = WTF::fastRealloc(v137, (4 * HIDWORD(v138)));
      v35 = v13;
      goto LABEL_50;
    }

    if (v137)
    {
LABEL_48:
      v137 = 0;
      LODWORD(v138) = 0;
      WTF::fastFree(v15, v11);
      v13 = 0;
      goto LABEL_49;
    }

    v13 = 0;
  }

LABEL_50:
  v36 = *(a1 + 976);
  if (v36)
  {
    *(a1 + 976) = 0;
    *(a1 + 984) = 0;
    WTF::fastFree(v36, v11);
  }

  v37 = v137;
  v137 = 0;
  v138 = 0;
  *(a1 + 976) = v37;
  *(a1 + 984) = v35;
  *(a1 + 988) = v13;
  if (v12 && atomic_fetch_add(v12, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v12);
    WTF::fastFree(v12, v11);
  }

  v38 = WTF::fastMalloc(8);
  *v38 = *MEMORY[0x1E696A7D8];
  WTF::WeakPtrFactory<IPC::MessageReceiver,WTF::DefaultWeakPtrImpl>::initializeIfNeeded((a1 + 24), a1 + 16);
  v39 = *(a1 + 24);
  atomic_fetch_add(v39, 1u);
  v142[0] = 0;
  v142[1] = 0;
  v40 = WTF::fastMalloc(8);
  LODWORD(v142[1]) = 1;
  v142[0] = v40;
  v41 = *v38;
  v42 = [MEMORY[0x1E696AD88] defaultCenter];
  v43 = [MEMORY[0x1E696ADC8] currentQueue];
  *&__dst[0] = MEMORY[0x1E69E9820];
  *(&__dst[0] + 1) = v14[343];
  *&__dst[1] = ___ZZN6WebKit14WebProcessPool29registerNotificationObserversEvENK3__1clEP8NSString_block_invoke;
  *(&__dst[1] + 1) = &__block_descriptor_48_e8_32c106_ZTSKZZN6WebKit14WebProcessPool29registerNotificationObserversEvENK3__1clEP8NSStringEUlP14NSNotificationE__e24_v16__0__NSNotification_8l;
  if (v39)
  {
    atomic_fetch_add(v39, 1u);
    atomic_fetch_add(v39, 1u);
  }

  *&__dst[2] = v39;
  *(&__dst[2] + 1) = v41;
  v44 = [v42 addObserverForName:v41 object:0 queue:v43 usingBlock:__dst];
  v46 = v44;
  if (v44)
  {
    v47 = v44;
  }

  if (v39 && atomic_fetch_add(v39, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v39);
    WTF::fastFree(v39, v45);
  }

  v48 = *&__dst[2];
  *&__dst[2] = 0;
  if (v48 && atomic_fetch_add(v48, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v48);
    WTF::fastFree(v48, v45);
  }

  v49 = v142[1];
  v50 = HIDWORD(v142[1]);
  if (v46)
  {
    *&__dst[0] = v46;
    if (HIDWORD(v142[1]) == LODWORD(v142[1]))
    {
      v51 = WTF::Vector<WTF::RetainPtr<WKUserDefaults>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(v142, HIDWORD(v142[1]) + 1, __dst);
      v52 = HIDWORD(v142[1]);
      v53 = v142[0];
      v54 = *v51;
      *v51 = 0;
      *(v53 + v52) = v54;
      v50 = HIDWORD(v142[1]);
    }

    else
    {
      *&__dst[0] = 0;
      *(v142[0] + HIDWORD(v142[1])) = v46;
    }

    HIDWORD(v142[1]) = ++v50;
    v55 = *&__dst[0];
    *&__dst[0] = 0;
    if (v55)
    {

      v50 = HIDWORD(v142[1]);
    }

    v49 = v142[1];
  }

  if (v49 > v50)
  {
    v56 = v142[0];
    if (v50)
    {
      if (v50 >> 29)
      {
        __break(0xC471u);
        JUMPOUT(0x19D55B7CCLL);
      }

      v57 = (8 * v50);
      v58 = WTF::fastMalloc(v57);
      LODWORD(v142[1]) = v50;
      v142[0] = v58;
      if (v58 != v56)
      {
        v59 = v56;
        do
        {
          v60 = *v59;
          *v59 = 0;
          *v58 = v60;
          v61 = *v59;
          *v59 = 0;
          if (v61)
          {
          }

          v58 = (v58 + 8);
          v59 = (v59 + 8);
          v57 = (v57 - 8);
        }

        while (v57);
      }
    }

    if (v56)
    {
      if (v142[0] == v56)
      {
        v142[0] = 0;
        LODWORD(v142[1]) = 0;
      }

      WTF::fastFree(v56, v45);
    }
  }

  v62 = *(a1 + 1004);
  if (v62)
  {
    v63 = *(a1 + 992);
    v64 = 8 * v62;
    do
    {
      v65 = *v63;
      *v63 = 0;
      if (v65)
      {
      }

      ++v63;
      v64 -= 8;
    }

    while (v64);
  }

  v66 = *(a1 + 992);
  if (v66)
  {
    *(a1 + 992) = 0;
    *(a1 + 1000) = 0;
    WTF::fastFree(v66, v45);
  }

  *(a1 + 992) = v142[0];
  v67 = v142[1];
  v142[0] = 0;
  v142[1] = 0;
  *(a1 + 1000) = v67;
  WTF::Vector<WTF::RetainPtr<UIView>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v142, v45);
  if (v39 && atomic_fetch_add(v39, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v39);
    WTF::fastFree(v39, v68);
  }

  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterAddObserver(DarwinNotifyCenter, *(a1 + 512), WebKit::WebProcessPool::backlightLevelDidChangeCallback, *MEMORY[0x1E69DDBF0], 0, 1026);
  v70 = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterAddObserver(v70, *(a1 + 512), WebKit::WebProcessPool::remoteWebInspectorEnabledCallback, @"com.apple.webinspectord.enabled", 0, 1026);
  v71 = objc_alloc(MEMORY[0x1E696AEC0]);
  v72 = [v71 initWithCString:*MEMORY[0x1E69A28E0] encoding:4];
  v73 = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterAddObserver(v73, *(a1 + 512), WebKit::WebProcessPool::hardwareKeyboardAvailabilityChangedCallback, v72, 0, 1026);
  v74 = [MEMORY[0x1E696AD88] defaultCenter];
  v75 = *MEMORY[0x1E69E4C58];
  v76 = [MEMORY[0x1E696ADC8] currentQueue];
  *&__dst[0] = MEMORY[0x1E69E9820];
  *(&__dst[0] + 1) = 3221225472;
  *&__dst[1] = ___ZN6WebKit14WebProcessPool29registerNotificationObserversEv_block_invoke;
  *(&__dst[1] + 1) = &__block_descriptor_40_e24_v16__0__NSNotification_8l;
  *&__dst[2] = a1;
  v77 = [v74 addObserverForName:v75 object:0 queue:v76 usingBlock:__dst];
  v78 = v77;
  if (v77)
  {
    v79 = v77;
  }

  v80 = *(a1 + 488);
  *(a1 + 488) = v78;
  if (v80)
  {
  }

  v81 = [MEMORY[0x1E696AD88] defaultCenter];
  v82 = [MEMORY[0x1E696ADC8] currentQueue];
  v142[0] = MEMORY[0x1E69E9820];
  v142[1] = 3221225472;
  v143 = ___ZN6WebKit14WebProcessPool29registerNotificationObserversEv_block_invoke_2;
  v144 = &__block_descriptor_40_e24_v16__0__NSNotification_8l;
  v145 = a1;
  v83 = [v81 addObserverForName:@"UIApplicationDidBecomeActiveNotification" object:0 queue:v82 usingBlock:v142];
  v84 = v83;
  if (v83)
  {
    v85 = v83;
  }

  v86 = *(a1 + 480);
  *(a1 + 480) = v84;
  if (v86)
  {
  }

  if (![MEMORY[0x1E69DC668] sharedApplication])
  {
    v87 = [MEMORY[0x1E696AD88] defaultCenter];
    v88 = [MEMORY[0x1E696ADC8] currentQueue];
    v89 = *MEMORY[0x1E69DDAD0];
    v137 = MEMORY[0x1E69E9820];
    v138 = 3221225472;
    v139 = ___ZN6WebKit14WebProcessPool29registerNotificationObserversEv_block_invoke_3;
    v140 = &__block_descriptor_40_e24_v16__0__NSNotification_8l;
    v141 = a1;
    v90 = [v87 addObserverForName:v89 object:0 queue:v88 usingBlock:&v137];
    v91 = v90;
    if (v90)
    {
      v92 = v90;
    }

    v93 = *(a1 + 496);
    *(a1 + 496) = v91;
    if (v93)
    {
    }
  }

  v94 = [MEMORY[0x1E696AD88] defaultCenter];
  v95 = [MEMORY[0x1E696ADC8] currentQueue];
  state64[0] = MEMORY[0x1E69E9820];
  state64[1] = 3221225472;
  state64[2] = ___ZN6WebKit14WebProcessPool29registerNotificationObserversEv_block_invoke_4;
  state64[3] = &__block_descriptor_40_e24_v16__0__NSNotification_8l;
  state64[4] = a1;
  v96 = [v94 addObserverForName:@"FontActivateNotification" object:0 queue:v95 usingBlock:state64];
  v97 = v96;
  if (v96)
  {
    v98 = v96;
  }

  v99 = *(a1 + 504);
  *(a1 + 504) = v97;
  if (v99)
  {
  }

  WTF::WeakPtrFactory<IPC::MessageReceiver,WTF::DefaultWeakPtrImpl>::initializeIfNeeded((a1 + 24), a1 + 16);
  v101 = *(a1 + 24);
  if (v101)
  {
    atomic_fetch_add(v101, 1u);
  }

  if (*MEMORY[0x1E69E2620])
  {
    NonCompact = bmalloc::api::tzoneAllocateNonCompact(*MEMORY[0x1E69E2620], v100);
  }

  else
  {
    NonCompact = WebCore::PowerSourceNotifier::operatorNewSlow(0x18);
  }

  v103 = NonCompact;
  v104 = WTF::fastMalloc(0x10);
  *v104 = &unk_1F1105FC8;
  *(v104 + 1) = v101;
  v150 = v104;
  MEMORY[0x19EB08420](v103, &v150);
  v105 = v150;
  v150 = 0;
  if (v105)
  {
    (*(*v105 + 8))(v105);
  }

  std::unique_ptr<WebCore::PowerSourceNotifier>::reset[abi:sn200100]((a1 + 472), v103);
  v106 = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterAddObserver(v106, *(a1 + 512), WebKit::WebProcessPool::lockdownModeConfigurationUpdateCallback, @"WKCaptivePortalModeContainerConfigurationChanged", 0, 1026);
  v107 = *MEMORY[0x1E69E4EB8];
  v108 = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterAddObserver(v108, *(a1 + 512), WebKit::WebProcessPool::accessibilityPreferencesChangedCallback, v107, 0, 1026);
  v109 = *MEMORY[0x1E69E4DD0];
  v110 = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterAddObserver(v110, *(a1 + 512), WebKit::WebProcessPool::accessibilityPreferencesChangedCallback, v109, 0, 1026);
  v111 = *MEMORY[0x1E69E4D10];
  v112 = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterAddObserver(v112, *(a1 + 512), WebKit::WebProcessPool::accessibilityPreferencesChangedCallback, v111, 0, 1026);
  v113 = *MEMORY[0x1E69E4CE0];
  v114 = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterAddObserver(v114, *(a1 + 512), WebKit::WebProcessPool::accessibilityPreferencesChangedCallback, v113, 0, 1026);
  v115 = *MEMORY[0x1E69E4DD8];
  v116 = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterAddObserver(v116, *(a1 + 512), WebKit::WebProcessPool::accessibilityPreferencesChangedCallback, v115, 0, 1026);
  if (HIBYTE(word_1ED64260E) == 1)
  {
    if (word_1ED64260E == 1)
    {
      v117 = qword_1ED642650;
      goto LABEL_120;
    }
  }

  else
  {
    if (byte_1ED64260C == 1)
    {
      v132 = qword_1ED642640;
    }

    else
    {
      v132 = dlopen("/usr/lib/libAccessibility.dylib", 2);
      qword_1ED642640 = v132;
      byte_1ED64260C = 1;
    }

    v133 = dlsym(v132, "kAXSReduceMotionAutoplayAnimatedImagesChangedNotification");
    if (v133)
    {
      v117 = *v133;
      qword_1ED642650 = *v133;
      word_1ED64260E = 257;
LABEL_120:
      v118 = CFNotificationCenterGetDarwinNotifyCenter();
      CFNotificationCenterAddObserver(v118, *(a1 + 512), WebKit::WebProcessPool::accessibilityPreferencesChangedCallback, v117, 0, 1026);
    }

    else
    {
      word_1ED64260E = 256;
    }
  }

  v119 = *MEMORY[0x1E69E4E78];
  v120 = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterAddObserver(v120, *(a1 + 512), WebKit::WebProcessPool::accessibilityPreferencesChangedCallback, v119, 0, 1026);
  MediaAccessibility_kMAXCaptionAppearanceSettingsChangedNotification = WebCore::get_MediaAccessibility_kMAXCaptionAppearanceSettingsChangedNotification(v121);
  v123 = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterAddObserver(v123, *(a1 + 512), WebKit::WebProcessPool::mediaAccessibilityPreferencesChangedCallback, MediaAccessibility_kMAXCaptionAppearanceSettingsChangedNotification, 0, 1026);
  if (v72)
  {
  }

  WTF::fastFree(v38, v124);
  result = v146;
  if (v146)
  {
    v146 = 0;
    v147 = 0;
    result = WTF::fastFree(result, v125);
  }

  if (a2)
  {
    v127 = objc_alloc_init(MEMORY[0x1E695DF90]);
    [v127 setObject:MEMORY[0x1E695E118] forKey:@"WebKitJSCJITEnabledDefaultsKey"];
    [v127 setObject:MEMORY[0x1E695E118] forKey:@"WebKitJSCFTLJITEnabledDefaultsKey"];
    [objc_msgSend(MEMORY[0x1E695E000] "standardUserDefaults")];
    if (v127)
    {
    }

    v128 = [objc_msgSend(MEMORY[0x1E695E000] "standardUserDefaults")];
    if ((v128 & 1) == 0)
    {
      WebKit::installMemoryPressureHandler(v128);
    }

    if ((_MGCacheValid() & 1) == 0)
    {
      dispatch_async(queue, &__block_literal_global_40_0);
    }

    v129 = WTF::fastMalloc(0x10);
    *v129 = &unk_1F10FAA58;
    v129[1] = &__block_literal_global_44;
    *&__dst[0] = v129;
    PAL::registerNotifyCallback();
    v130 = *&__dst[0];
    *&__dst[0] = 0;
    if (v130)
    {
      (*(*v130 + 8))(v130);
    }

    v131 = WTF::fastMalloc(0x10);
    *v131 = &unk_1F10FAA58;
    v131[1] = &__block_literal_global_47;
    *&__dst[0] = v131;
    PAL::registerNotifyCallback();
    result = *&__dst[0];
    *&__dst[0] = 0;
    if (result)
    {
      return (*(*result + 8))(result);
    }
  }

  return result;
}

void sub_19D55B7F8(_Unwind_Exception *a1, void *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, WTF *a16, int a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, WTF *a27, int a28, uint64_t a29, WTF::StringImpl *a30, void *a31, uint64_t a32, uint64_t a33, uint64_t a34, WTF *a35)
{
  v38 = a31;
  a31 = 0;
  if (v38)
  {
  }

  WTF::Vector<WTF::RetainPtr<UIView>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&a21, a2);
  if (v36 && atomic_fetch_add(v36, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v36);
    WTF::fastFree(v36, v39);
  }

  WTF::fastFree(v35, v39);
  v41 = a27;
  if (a27)
  {
    a27 = 0;
    a28 = 0;
    WTF::fastFree(v41, v40);
  }

  _Unwind_Resume(a1);
}

uint64_t WTF::BlockPtr<void ()(void)>::fromCallable<WebKit::WebProcessPool::initializeHardwareKeyboardAvailability(void)::$_0>(WebKit::WebProcessPool::initializeHardwareKeyboardAvailability(void)::$_0)::{lambda(void *)#1}::__invoke(WebKit *a1)
{
  v2 = WebKit::currentHardwareKeyboardState(a1);
  v3 = *(a1 + 4);
  if (v3)
  {
    atomic_fetch_add(v3, 1u);
  }

  v4 = WTF::fastMalloc(0x18);
  *v4 = &unk_1F1105FA0;
  *(v4 + 8) = v3;
  *(v4 + 16) = v2;
  *(v4 + 18) = BYTE2(v2);
  v6 = v4;
  WTF::callOnMainRunLoop();
  result = v6;
  if (v6)
  {
    return (*(*v6 + 8))(v6);
  }

  return result;
}

void sub_19D55BBC8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (a10)
  {
    (*(*a10 + 8))(a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *WTF::Vector<WTF::ASCIILiteral,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::Vector(uint64_t *result, __int128 *a2, unint64_t a3)
{
  v3 = result;
  *result = 0;
  result[1] = 0;
  if (!a3)
  {
    return v3;
  }

  v4 = a3;
  if (!(a3 >> 28))
  {
    v6 = 16 * a3;
    v7 = WTF::fastMalloc((16 * a3));
    *(v3 + 2) = v4;
    *v3 = v7;
    v8 = *(v3 + 3);
    do
    {
      v9 = *a2++;
      *(*v3 + 16 * v8) = v9;
      v8 = *(v3 + 3) + 1;
      *(v3 + 3) = v8;
      v6 -= 16;
    }

    while (v6);
    return v3;
  }

  __break(0xC471u);
  return result;
}

void sub_19D55BCB4(_Unwind_Exception *exception_object, void *a2)
{
  v4 = *v2;
  if (*v2)
  {
    *v2 = 0;
    *(v2 + 8) = 0;
    WTF::fastFree(v4, a2);
  }

  _Unwind_Resume(exception_object);
}

uint64_t WebKit::currentHardwareKeyboardState(WebKit *this)
{
  IsHardwareKeyboardAttached = GSEventIsHardwareKeyboardAttached();
  HardwareKeyboardCountry = GSEventGetHardwareKeyboardCountry();
  v3 = (HardwareKeyboardCountry << 8) | (GSEventGetHardwareKeyboardType() << 16);
  if (IsHardwareKeyboardAttached)
  {
    return v3 + 1;
  }

  else
  {
    return v3;
  }
}

__n128 __copy_helper_block_e8_32c102_ZTSKZZN6WebKit14WebProcessPool29registerNotificationObserversEvENK3__0clERKN3WTF12ASCIILiteralEEUliE_(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 32);
  if (v2)
  {
    atomic_fetch_add(v2, 1u);
  }

  *(a1 + 32) = v2;
  result = *(a2 + 40);
  *(a1 + 40) = result;
  return result;
}

uint64_t WebKit::WebProcessPool::setNotifyState(uint64_t this, const WTF::StringImpl **a2, const WTF::StringImpl *a3, uint64_t a4)
{
  v5 = (this + 968);
  if (a3 || !a4)
  {
    v16 = *v5;
    if (!*v5)
    {
      return this;
    }

    v17 = *a2;
    if (*a2 == -1)
    {
      __break(0xC471u);
      JUMPOUT(0x19D55C054);
    }

    if (v17)
    {
      v18 = *(v16 - 8);
      v19 = *(v17 + 4);
      if (v19 < 0x100)
      {
        v20 = WTF::StringImpl::hashSlowCase(v17);
      }

      else
      {
        v20 = v19 >> 8;
      }

      for (i = 0; ; v20 = i + v22)
      {
        v22 = v20 & v18;
        this = *(v16 + 16 * v22);
        if (this != -1)
        {
          if (!this)
          {
            v25 = *v5;
            if (!*v5)
            {
              return this;
            }

            v26 = &v25[2 * *(v25 - 1)];
            goto LABEL_34;
          }

          this = WTF::equal(this, *a2, a3);
          if (this)
          {
            v26 = (v16 + 16 * v22);
            v25 = *v5;
            if (*v5)
            {
LABEL_34:
              v25 += 2 * *(v25 - 1);
              if (v25 == v26)
              {
                return this;
              }
            }

            if (v25 != v26)
            {
              this = *v26;
              *v26 = -1;
              if (this && atomic_fetch_add_explicit(this, 0xFFFFFFFE, memory_order_relaxed) == 2)
              {
                this = WTF::StringImpl::destroy(this, a2);
              }

              v27 = *v5;
              v28 = vadd_s32(*(*v5 - 16), 0xFFFFFFFF00000001);
              *(v27 - 16) = v28;
              v29 = *(v27 - 4);
              if (6 * v28.i32[1] < v29 && v29 >= 9)
              {

                return WTF::HashTable<WTF::String,WTF::KeyValuePair<WTF::String,unsigned long long>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,unsigned long long>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,unsigned long long,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<unsigned long long>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::rehash(v5, v29 >> 1);
              }
            }

            return this;
          }
        }

        ++i;
      }
    }

LABEL_61:
    __break(0xC471u);
    JUMPOUT(0x19D55C014);
  }

  if (*a2 == -1)
  {
    goto LABEL_61;
  }

  if (!*a2)
  {
    __break(0xC471u);
    JUMPOUT(0x19D55C034);
  }

  v7 = *v5;
  if (*v5 || (WTF::HashTable<WTF::String,WTF::KeyValuePair<WTF::String,unsigned long long>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,unsigned long long>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,unsigned long long,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<unsigned long long>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::expand((this + 968)), (v7 = *v5) != 0))
  {
    v8 = *(v7 - 8);
  }

  else
  {
    v8 = 0;
  }

  v9 = *(*a2 + 4);
  if (v9 < 0x100)
  {
    v10 = WTF::StringImpl::hashSlowCase(*a2);
  }

  else
  {
    v10 = v9 >> 8;
  }

  v11 = 0;
  for (j = 1; ; ++j)
  {
    v13 = v10 & v8;
    v14 = (v7 + 16 * (v10 & v8));
    v15 = *v14;
    if (*v14 == -1)
    {
      v11 = (v7 + 16 * v13);
      goto LABEL_16;
    }

    if (!v15)
    {
      break;
    }

    this = WTF::equal(v15, *a2, a3);
    if (this)
    {
      v14[1] = a4;
      return this;
    }

LABEL_16:
    v10 = j + v13;
  }

  if (v11)
  {
    *v11 = 0;
    v11[1] = 0;
    --*(*v5 - 16);
    v14 = v11;
  }

  this = WTF::String::operator=(v14, a2);
  v14[1] = a4;
  v23 = *v5;
  if (*v5)
  {
    v24 = *(v23 - 12) + 1;
  }

  else
  {
    v24 = 1;
  }

  *(v23 - 12) = v24;
  v31 = (*(v23 - 16) + v24);
  v32 = *(v23 - 4);
  if (v32 > 0x400)
  {
    if (v32 <= 2 * v31)
    {
      goto LABEL_55;
    }
  }

  else
  {
    if (3 * v32 > 4 * v31)
    {
      return this;
    }

LABEL_55:

    return WTF::HashTable<WTF::String,WTF::KeyValuePair<WTF::String,unsigned long long>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,unsigned long long>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,unsigned long long,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<unsigned long long>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::expand(v5);
  }

  return this;
}

unsigned int *WTF::BlockPtr<void ()(void)>::fromCallable<WebKit::WebProcessPool::initializeHardwareKeyboardAvailability(void)::$_0>(WebKit::WebProcessPool::initializeHardwareKeyboardAvailability(void)::$_0)::{lambda(void const*)#1}::__invoke(uint64_t a1, void *a2)
{
  result = *(a1 + 32);
  *(a1 + 32) = 0;
  if (result)
  {
    if (atomic_fetch_add(result, 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, result);
      return WTF::fastFree(result, a2);
    }
  }

  return result;
}

WTF::StringImpl *WTF::GenericHashTraits<WebCore::RegistrableDomain>::assignToEmpty<WebCore::RegistrableDomain,WebCore::RegistrableDomain const&>(WTF::StringImpl **a1, WTF::StringImpl *a2)
{
  v3 = *a2;
  if (*a2)
  {
    atomic_fetch_add_explicit(v3, 2u, memory_order_relaxed);
  }

  result = *a1;
  *a1 = v3;
  if (result)
  {
    if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      return WTF::StringImpl::destroy(result, a2);
    }
  }

  return result;
}

uint64_t __copy_helper_block_e8_32c106_ZTSKZZN6WebKit14WebProcessPool29registerNotificationObserversEvENK3__1clEP8NSStringEUlP14NSNotificationE_(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 32);
  if (v2)
  {
    atomic_fetch_add(v2, 1u);
  }

  v3 = *(a2 + 40);
  *(result + 32) = v2;
  *(result + 40) = v3;
  return result;
}

uint64_t WTF::Vector<WTF::RetainPtr<UIView>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(uint64_t a1, void *a2)
{
  v3 = *(a1 + 12);
  if (v3)
  {
    v4 = *a1;
    v5 = 8 * v3;
    do
    {
      v6 = *v4;
      *v4 = 0;
      if (v6)
      {
      }

      ++v4;
      v5 -= 8;
    }

    while (v5);
  }

  v7 = *a1;
  if (*a1)
  {
    *a1 = 0;
    *(a1 + 8) = 0;
    WTF::fastFree(v7, a2);
  }

  return a1;
}

uint64_t std::unique_ptr<WebCore::PowerSourceNotifier>::reset[abi:sn200100](uint64_t *a1, uint64_t a2)
{
  result = *a1;
  *a1 = a2;
  if (result)
  {
    v4 = MEMORY[0x19EB08430]();

    return bmalloc::api::tzoneFree(v4, v5);
  }

  return result;
}

uint64_t WebKit::installMemoryPressureHandler(WebKit *this)
{
  v1 = WTF::MemoryPressureHandler::singleton(this);
  v2 = WTF::fastMalloc(0x10);
  *v2 = &unk_1F111AFA8;
  v3 = *(v1 + 6);
  *(v1 + 6) = v2;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  return WTF::MemoryPressureHandler::install(v1);
}

WebKit::WebGeolocationManagerProxy *WebKit::WebGeolocationManagerProxy::WebGeolocationManagerProxy(WebKit::WebGeolocationManagerProxy *this, WebKit::WebProcessPool *a2)
{
  v4 = API::Object::Object(this);
  *v4 = &unk_1F11165E8;
  WebKit::WebContextSupplement::WebContextSupplement((v4 + 16), a2);
  *this = &unk_1F1116430;
  *(this + 2) = &unk_1F11164A0;
  *(this + 4) = &unk_1F11164D8;
  *(this + 5) = 0;
  *(this + 7) = 0;
  *(this + 8) = 0;
  *(this + 6) = &unk_1F1116520;
  v5 = *(this + 3);
  if (v5 && (v6 = *(v5 + 8)) != 0)
  {
    CFRetain(*(v6 - 8));
    v9 = -82;
    WTF::HashMap<IPC::ReceiverName,WTF::WeakPtr<IPC::MessageReceiver,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>,WTF::IntHash<IPC::ReceiverName>,WTF::StrongEnumHashTraits<IPC::ReceiverName>,WTF::HashTraits<WTF::WeakPtr<IPC::MessageReceiver,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::inlineSet<IPC::ReceiverName const&,IPC::MessageReceiver&>((v6 + 40), &v9, this + 32, v8);
    CFRelease(*(v6 - 8));
  }

  else
  {
    v9 = -82;
    WTF::HashMap<IPC::ReceiverName,WTF::WeakPtr<IPC::MessageReceiver,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>,WTF::IntHash<IPC::ReceiverName>,WTF::StrongEnumHashTraits<IPC::ReceiverName>,WTF::HashTraits<WTF::WeakPtr<IPC::MessageReceiver,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::inlineSet<IPC::ReceiverName const&,IPC::MessageReceiver&>(0x38, &v9, this + 32, v8);
  }

  return this;
}

WebKit::WebContextSupplement *WebKit::WebContextSupplement::WebContextSupplement(WebKit::WebContextSupplement *this, WebKit::WebProcessPool *a2)
{
  *this = &unk_1F11169C8;
  if (a2)
  {
    WTF::WeakPtrFactory<IPC::MessageReceiver,WTF::DefaultWeakPtrImpl>::initializeIfNeeded(a2 + 6, a2 + 16);
    v4 = *(a2 + 3);
    if (v4)
    {
      atomic_fetch_add(v4, 1u);
    }
  }

  else
  {
    v4 = 0;
  }

  *(this + 1) = v4;
  return this;
}

uint64_t WTF::SuperFastHash::addCharacters<char,WTF::StringHasher::DefaultConverter>(uint64_t result, unsigned __int8 *a2, unsigned int a3)
{
  if (a3)
  {
    if (*(result + 6) == 1)
    {
      *(result + 6) = 0;
      v3 = *a2++;
      v4 = *result + *(result + 4);
      *result = ((v3 << 11) ^ (v4 << 16) ^ v4) + (((v3 << 11) ^ (v4 << 16) ^ v4) >> 11);
      --a3;
    }

    return WTF::SuperFastHash::addCharactersAssumingAligned<char,WTF::StringHasher::DefaultConverter>(result, a2, a3);
  }

  return result;
}

uint64_t WTF::ASCIILiteralHash::hash(WTF::ASCIILiteralHash *this, const WTF::ASCIILiteral *a2)
{
  v2 = *(this + 1);
  if (!v2)
  {
    return 0;
  }

  v4 = -1640531527;
  v5 = 0;
  v6 = 0;
  WTF::SuperFastHash::addCharacters<char,WTF::StringHasher::DefaultConverter>(&v4, *this, v2 - 1);
  return WTF::SuperFastHash::hash(&v4);
}

uint64_t WTF::SuperFastHash::addCharactersAssumingAligned<char,WTF::StringHasher::DefaultConverter>(uint64_t result, unsigned __int8 *a2, unsigned int a3)
{
  if (a3 >= 2)
  {
    v3 = a3 >> 1;
    v4 = *result;
    do
    {
      v5 = v4 + *a2;
      v6 = (v5 << 16) ^ (a2[1] << 11);
      v4 = (v6 ^ v5) + ((v6 ^ v5) >> 11);
      *result = v4;
      a2 += 2;
      --v3;
    }

    while (v3);
  }

  if (a3)
  {
    v7 = *a2;
    if (*(result + 6) == 1)
    {
      v8 = 0;
      v9 = *result + *(result + 4);
      *result = ((v7 << 11) ^ (v9 << 16) ^ v9) + (((v7 << 11) ^ (v9 << 16) ^ v9) >> 11);
    }

    else
    {
      *(result + 4) = v7;
      v8 = 1;
    }

    *(result + 6) = v8;
  }

  return result;
}

uint64_t WTF::SuperFastHash::hash(WTF::SuperFastHash *this)
{
  v1 = *this;
  if (*(this + 6) == 1)
  {
    v1 = ((v1 + *(this + 2)) ^ ((v1 + *(this + 2)) << 11)) + (((v1 + *(this + 2)) ^ ((v1 + *(this + 2)) << 11)) >> 17);
  }

  v2 = (v1 ^ (8 * v1)) + ((v1 ^ (8 * v1)) >> 5);
  v3 = (v2 ^ (4 * v2)) + ((v2 ^ (4 * v2)) >> 15);
  if (v3 == v3 << 10)
  {
    return 0x800000;
  }

  else
  {
    return v3 ^ (v3 << 10);
  }
}

WebKit::WebNotificationManagerProxy *WebKit::WebNotificationManagerProxy::WebNotificationManagerProxy(WebKit::WebNotificationManagerProxy *this, WebKit::WebProcessPool *a2)
{
  v4 = API::Object::Object(this);
  *v4 = &unk_1F111F420;
  WebKit::WebContextSupplement::WebContextSupplement((v4 + 16), a2);
  *this = &unk_1F111F298;
  *(this + 2) = &unk_1F111F2D8;
  v6 = API::NotificationProvider::operator new(8, v5);
  *v6 = &unk_1F111F448;
  *(this + 4) = v6;
  *(this + 5) = 0;
  *(this + 6) = 0;
  return this;
}

uint64_t API::NotificationProvider::operator new(API::NotificationProvider *this, void *a2)
{
  if (this == 8 && API::NotificationProvider::operator new(unsigned long)::s_heapRef)
  {
    return bmalloc::api::tzoneAllocateNonCompact(API::NotificationProvider::operator new(unsigned long)::s_heapRef, a2);
  }

  else
  {
    return bmalloc::api::tzoneAllocateNonCompactSlow();
  }
}

uint64_t WebKit::resolvePathForSandboxExtension@<X0>(WTF::StringImpl **a1@<X8>)
{
  v12 = *MEMORY[0x1E69E9840];
  result = WebKit::stringByResolvingSymlinksInPath();
  if (v7)
  {
    *a1 = v7;
  }

  else
  {
    v3 = qword_1ED641198;
    result = os_log_type_enabled(qword_1ED641198, OS_LOG_TYPE_ERROR);
    if (result)
    {
      WTF::String::utf8();
      if (v6)
      {
        v4 = v6 + 16;
      }

      else
      {
        v4 = 0;
      }

      *buf = 136315394;
      v9 = v4;
      v10 = 1024;
      v11 = 0;
      _os_log_error_impl(&dword_19D52D000, v3, OS_LOG_TYPE_ERROR, "Could not create a valid file system representation for the string '%s' of length %u", buf, 0x12u);
      if (v6)
      {
        if (*v6 == 1)
        {
          WTF::fastFree(v6, v5);
        }

        else
        {
          --*v6;
        }
      }

      result = 0;
      *a1 = 0;
    }

    else
    {
      *a1 = 0;
    }
  }

  return result;
}

void sub_19D55C76C(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, WTF::StringImpl *a10)
{
  if (a10)
  {
    if (atomic_fetch_add_explicit(a10, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(a10, a2);
    }
  }

  _Unwind_Resume(exception_object);
}

unsigned int *WTF::VectorMover<false,WTF::WeakRef<WebKit::WebProcessPool,WTF::DefaultWeakPtrImpl>>::move(unsigned int *result, unsigned int *a2, unsigned int **a3)
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
        if (atomic_fetch_add(result, 0xFFFFFFFF) == 1)
        {
          atomic_store(1u, result);
          result = WTF::fastFree(result, a2);
        }
      }

      ++a3;
      v5 += 2;
    }

    while (v5 != a2);
  }

  return result;
}

uint64_t WebKit::stringByResolvingSymlinksInPath()
{
  v5 = *MEMORY[0x1E69E9840];
  bzero(__s, 0x400uLL);
  WTF::StringView::utf8();
  if (v3)
  {
    v0 = v3 + 16;
  }

  else
  {
    v0 = 0;
  }

  realpath_DARWIN_EXTSN(v0, __s);
  if (v3)
  {
    if (*v3 == 1)
    {
      WTF::fastFree(v3, v1);
    }

    else
    {
      --*v3;
    }
  }

  strlen(__s);
  return WTF::String::fromUTF8();
}

void sub_19D55C8F8(_Unwind_Exception *exception_object, void *a2, int a3, int a4, int a5, int a6, int a7, int a8, WTF *a9)
{
  if (a9)
  {
    if (*a9 == 1)
    {
      WTF::fastFree(a9, a2);
    }

    else
    {
      --*a9;
    }
  }

  _Unwind_Resume(exception_object);
}

WTF::StringImpl *WebKit::WebProcessPool::platformResolvePathsForSandboxExtensions(WebKit::WebProcessPool *this)
{
  MEMORY[0x19EB02040](&v7, [objc_msgSend(MEMORY[0x1E696AAE8] "mainBundle")]);
  WebKit::resolvePathForSandboxExtension(&v8);
  v3 = v8;
  v8 = 0;
  v4 = *(this + 93);
  *(this + 93) = v3;
  if (v4)
  {
    if (atomic_fetch_add_explicit(v4, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v4, v2);
    }

    v5 = v8;
    v8 = 0;
    if (v5 && atomic_fetch_add_explicit(v5, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v5, v2);
    }
  }

  result = v7;
  v7 = 0;
  if (result)
  {
    if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      return WTF::StringImpl::destroy(result, v2);
    }
  }

  return result;
}

void sub_19D55CA0C(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, WTF::StringImpl *a9)
{
  if (a9)
  {
    if (atomic_fetch_add_explicit(a9, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(a9, a2);
    }
  }

  _Unwind_Resume(exception_object);
}

void WebKit::UIProcess::initializeLoggingIfNecessary(WebKit::UIProcess *this)
{
  if (atomic_load_explicit(&WebKit::UIProcess::initializeLoggingIfNecessary(void)::onceFlag, memory_order_acquire) != -1)
  {
    v5[1] = v1;
    v5[2] = v2;
    v5[0] = &v3;
    v4 = v5;
    std::__call_once(&WebKit::UIProcess::initializeLoggingIfNecessary(void)::onceFlag, &v4, std::__call_once_proxy[abi:sn200100]<std::tuple<WebKit::UIProcess::initializeLoggingIfNecessary(void)::$_0 &&>>);
  }
}

WTF::StringImpl *std::__call_once_proxy[abi:sn200100]<std::tuple<WebKit::UIProcess::initializeLoggingIfNecessary(void)::$_0 &&>>(WTF *a1)
{
  WTF::logChannels(a1);
  WebKit::UIProcess::wtfLogLevelString(&v16);
  v1 = v16;
  v16 = 0;
  v18 = v1;
  v19 = 1;
  WTF::LogChannels::initializeLogChannelsIfNecessary();
  if (v19 == 1)
  {
    v3 = v18;
    v18 = 0;
    if (v3)
    {
      if (atomic_fetch_add_explicit(v3, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v3, v2);
      }
    }
  }

  v4 = v16;
  v16 = 0;
  if (v4 && atomic_fetch_add_explicit(v4, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    v4 = WTF::StringImpl::destroy(v4, v2);
  }

  WebCore::logChannels(v4);
  WebKit::UIProcess::webCoreLogLevelString(&v14);
  v5 = v14;
  v14 = 0;
  v16 = v5;
  v17 = 1;
  WTF::LogChannels::initializeLogChannelsIfNecessary();
  if (v17 == 1)
  {
    v7 = v16;
    v16 = 0;
    if (v7)
    {
      if (atomic_fetch_add_explicit(v7, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v7, v6);
      }
    }
  }

  v8 = v14;
  v14 = 0;
  if (v8 && atomic_fetch_add_explicit(v8, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v8, v6);
  }

  {
    WebKit::LogChannels::LogChannels(&WebKit::logChannels(void)::logChannels);
  }

  WebKit::UIProcess::webKitLogLevelString(&v13);
  v9 = v13;
  v13 = 0;
  v14 = v9;
  v15 = 1;
  WTF::LogChannels::initializeLogChannelsIfNecessary();
  if (v15 == 1)
  {
    v11 = v14;
    v14 = 0;
    if (v11)
    {
      if (atomic_fetch_add_explicit(v11, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v11, v10);
      }
    }
  }

  result = v13;
  v13 = 0;
  if (result)
  {
    if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      return WTF::StringImpl::destroy(result, v10);
    }
  }

  return result;
}

uint64_t WebKit::UIProcess::wtfLogLevelString@<X0>(uint64_t a1@<X8>)
{
  if ((_MergedGlobals_245 & 1) == 0)
  {
    qword_1EB01D450 = 0;
    _MergedGlobals_245 = 1;
  }

  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3321888768;
  block[2] = ___ZN6WebKit9UIProcess17wtfLogLevelStringEv_block_invoke;
  block[3] = &__block_descriptor_33_e8_32c50_ZTSKZN6WebKit9UIProcess17wtfLogLevelStringEvE3__0_e5_v8__0l;
  if (qword_1EB01D458 != -1)
  {
    dispatch_once(&qword_1EB01D458, block);
  }

  return MEMORY[0x19EB02040](a1, qword_1EB01D450);
}

void ___ZN6WebKit9UIProcess17wtfLogLevelStringEv_block_invoke()
{
  v0 = [objc_msgSend(MEMORY[0x1E695E000] "standardUserDefaults")];
  v1 = v0;
  if (v0)
  {
    v2 = v0;
  }

  v3 = qword_1EB01D450;
  qword_1EB01D450 = v1;
  if (v3)
  {
  }
}

uint64_t WebKit::UIProcess::webCoreLogLevelString@<X0>(uint64_t a1@<X8>)
{
  if ((byte_1EB01D449 & 1) == 0)
  {
    qword_1EB01D460 = 0;
    byte_1EB01D449 = 1;
  }

  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3321888768;
  block[2] = ___ZN6WebKit9UIProcess21webCoreLogLevelStringEv_block_invoke;
  block[3] = &__block_descriptor_33_e8_32c54_ZTSKZN6WebKit9UIProcess21webCoreLogLevelStringEvE3__0_e5_v8__0l;
  if (qword_1EB01D468 != -1)
  {
    dispatch_once(&qword_1EB01D468, block);
  }

  return MEMORY[0x19EB02040](a1, qword_1EB01D460);
}

void ___ZN6WebKit9UIProcess21webCoreLogLevelStringEv_block_invoke()
{
  v0 = [objc_msgSend(MEMORY[0x1E695E000] "standardUserDefaults")];
  v1 = v0;
  if (v0)
  {
    v2 = v0;
  }

  v3 = qword_1EB01D460;
  qword_1EB01D460 = v1;
  if (v3)
  {
  }
}

WebKit::LogChannels *WebKit::LogChannels::LogChannels(WebKit::LogChannels *this)
{
  __dst[98] = *MEMORY[0x1E69E9840];
  *(this + 1) = 0;
  *(this + 2) = 0;
  *(this + 24) = 1;
  *this = &unk_1F1147368;
  memcpy(__dst, &constinit_3, 0x310uLL);
  WTF::Vector<WTFLogChannel *,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::Vector(v5, __dst, 0x62uLL);
  v3 = *(this + 1);
  if (v3)
  {
    *(this + 1) = 0;
    *(this + 4) = 0;
    WTF::fastFree(v3, v2);
  }

  *(this + 1) = v5[0];
  *(this + 2) = v5[1];
  return this;
}

uint64_t *WTF::Vector<WTFLogChannel *,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::Vector(uint64_t *result, uint64_t *a2, unint64_t a3)
{
  v3 = result;
  *result = 0;
  result[1] = 0;
  if (!a3)
  {
    return v3;
  }

  v4 = a3;
  if (!(a3 >> 29))
  {
    v6 = 8 * a3;
    v7 = WTF::fastMalloc((8 * a3));
    *(v3 + 2) = v4;
    *v3 = v7;
    v8 = *(v3 + 3);
    do
    {
      v9 = *a2++;
      *(*v3 + 8 * v8++) = v9;
      v6 -= 8;
    }

    while (v6);
    *(v3 + 3) = v8;
    return v3;
  }

  __break(0xC471u);
  return result;
}

uint64_t WebKit::UIProcess::webKitLogLevelString@<X0>(uint64_t a1@<X8>)
{
  if ((byte_1EB01D44A & 1) == 0)
  {
    qword_1EB01D470 = 0;
    byte_1EB01D44A = 1;
  }

  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3321888768;
  block[2] = ___ZN6WebKit9UIProcess20webKitLogLevelStringEv_block_invoke;
  block[3] = &__block_descriptor_33_e8_32c53_ZTSKZN6WebKit9UIProcess20webKitLogLevelStringEvE3__0_e5_v8__0l;
  if (qword_1EB01D478 != -1)
  {
    dispatch_once(&qword_1EB01D478, block);
  }

  return MEMORY[0x19EB02040](a1, qword_1EB01D470);
}

void ___ZN6WebKit9UIProcess20webKitLogLevelStringEv_block_invoke()
{
  v0 = [objc_msgSend(MEMORY[0x1E695E000] "standardUserDefaults")];
  v1 = v0;
  if (v0)
  {
    v2 = v0;
  }

  v3 = qword_1EB01D470;
  qword_1EB01D470 = v1;
  if (v3)
  {
  }
}

uint64_t *WebKit::WebProcessPool::updateBackForwardCacheCapacity(uint64_t *this)
{
  if (*(this[6] + 92) == 1)
  {
    v8 = v1;
    v9 = v2;
    v3 = this;
    v7 = 0;
    v5 = 0;
    {
      v4 = WebKit::LegacyGlobalSettings::singleton(void)::properties;
    }

    else
    {
      v4 = 2;
      WebKit::LegacyGlobalSettings::singleton(void)::properties = 2;
      *&qword_1ED643540 = 0u;
      *&qword_1ED643550 = 0u;
    }

    WebKit::calculateMemoryCacheSizes(v4, &v7, &v7, &v7, &v6, &v5);
    return WebKit::WebBackForwardCache::setCapacity(v3[101], v3, v5);
  }

  return this;
}

unint64_t WebKit::calculateMemoryCacheSizes(WTF *a1, int *a2, int *a3, unsigned int *a4, void *a5, _DWORD *a6)
{
  v11 = a1;
  result = WTF::ramSize(a1);
  switch(v11)
  {
    case 2:
      v13 = result >> 29;
      if (result >> 29)
      {
        *a6 = 2;
        v14 = result >> 31;
        if (result >> 30)
        {
          v15 = 0x4000000;
        }

        else
        {
          v15 = 0x2000000;
        }

        if (result >> 30)
        {
          v16 = 0x1000000;
        }

        else
        {
          v16 = 0x800000;
        }

        v17 = v13 > 2;
        if (v13 <= 2)
        {
          v18 = v15;
        }

        else
        {
          v18 = 100663296;
        }

        if (v17)
        {
          v19 = 25165824;
        }

        else
        {
          v19 = v16;
        }

        if (v14)
        {
          v20 = 0x8000000;
        }

        else
        {
          v20 = v18;
        }

        if (v14)
        {
          v21 = 0x2000000;
        }

        else
        {
          v21 = v19;
        }
      }

      else
      {
        *a6 = (result & 0xFFFFFFFFF0000000) != 0;
        v21 = 0x400000;
        v20 = 0x1000000;
      }

      *a2 = v20;
      *a3 = v21;
      v22 = *a2 >> 1;
      if (v22 <= 0x18)
      {
        v22 = 24;
      }

      *a4 = v22;
      *a5 = 0x404E000000000000;
      break;
    case 1:
      v27 = result >> 29;
      if (result >> 29)
      {
        *a6 = 2;
        v28 = result >> 31;
        if (result >> 30)
        {
          v29 = 0x2000000;
        }

        else
        {
          v29 = 0x1000000;
        }

        if (result >> 30)
        {
          v30 = 0x400000;
        }

        else
        {
          v30 = 0x200000;
        }

        v31 = v27 > 2;
        if (v27 <= 2)
        {
          v32 = v29;
        }

        else
        {
          v32 = 0x4000000;
        }

        if (v31)
        {
          v33 = 0x800000;
        }

        else
        {
          v33 = v30;
        }

        if (v28)
        {
          v34 = 100663296;
        }

        else
        {
          v34 = v32;
        }

        if (v28)
        {
          v35 = 12582912;
        }

        else
        {
          v35 = v33;
        }
      }

      else
      {
        *a6 = (result & 0xFFFFFFFFF0000000) != 0;
        v35 = 0x100000;
        v34 = 0x800000;
      }

      *a2 = v34;
      *a3 = v35;
      *a4 = *a2 >> 2;
      break;
    case 0:
      *a6 = 0;
      if (result >> 29)
      {
        v23 = 0x1000000;
      }

      else
      {
        v23 = 0x800000;
      }

      if (result >> 30)
      {
        v24 = 0x2000000;
      }

      else
      {
        v24 = v23;
      }

      if (result >> 29 <= 2)
      {
        v25 = v24;
      }

      else
      {
        v25 = 0x4000000;
      }

      if (result >> 31)
      {
        v26 = 100663296;
      }

      else
      {
        v26 = v25;
      }

      *a2 = v26;
      *a3 = 0;
      *a4 = 0;
      break;
  }

  return result;
}

uint64_t WebKit::WebBackForwardCache::setCapacity(uint64_t this, WebKit::WebProcessPool *a2, unsigned int a3)
{
  v3 = (this + 16);
  if (*(this + 16) != a3)
  {
    v6 = this;
    *(this + 16) = a3;
    WTF::WeakListHashSet<WebKit::WebPageProxy,WTF::DefaultWeakPtrImpl,(WTF::EnableWeakPtrThreadingAssertions)1>::removeNullReferences(this + 24);
    for (i = *(v6 + 24); i; i = *(v6 + 24))
    {
      if (*(i - 12) <= a3)
      {
        break;
      }

      v8 = WTF::WeakListHashSet<WebKit::WebBackForwardListItem,WTF::DefaultWeakPtrImpl,(WTF::EnableWeakPtrThreadingAssertions)1>::tryTakeFirst(v6 + 24);
      if (v8)
      {
        v9 = v8;
        CFRetain(*(v8 + 8));
        v10 = *(v9 + 120);
        *(v9 + 120) = 0;
        if (v10)
        {
          WTF::RefCounted<WebKit::WebBackForwardCacheEntry>::deref(v10);
        }

        CFRelease(*(v9 + 8));
      }

      WTF::WeakListHashSet<WebKit::WebPageProxy,WTF::DefaultWeakPtrImpl,(WTF::EnableWeakPtrThreadingAssertions)1>::removeNullReferences(v6 + 24);
    }

    v11 = v3;
    return WebKit::WebProcessPool::sendToAllProcesses<Messages::WebProcess::SetBackForwardCacheCapacity>(a2, &v11);
  }

  return this;
}

uint64_t WebKit::WebBackForwardCache::ref(WebKit::WebBackForwardCache *this)
{
  v1 = *(*(this + 1) + 8);
  if (v1)
  {
    return CFRetain(*(v1 - 8));
  }

  result = 92;
  __break(0xC471u);
  return result;
}

uint64_t WTF::WeakListHashSet<WebKit::WebPageProxy,WTF::DefaultWeakPtrImpl,(WTF::EnableWeakPtrThreadingAssertions)1>::removeNullReferences(uint64_t a1)
{
  v2 = *(a1 + 8);
  if (v2)
  {
    v3 = 0;
    do
    {
      v4 = *(v2 + 2);
      if (!*(*v2 + 8))
      {
        v8 = v2;
        WTF::HashTable<WTF::ListHashSetNode<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>> *,WTF::ListHashSetNode<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>> *,WTF::IdentityExtractor,WTF::ListHashSetNodeHashFunctions<WTF::DefaultHash<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>>>,WTF::HashTraits<WTF::ListHashSetNode<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>> *>,WTF::HashTraits<WTF::ListHashSetNode<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>> *>,WTF::FastMalloc>::remove<(WTF::ShouldValidateKey)1>(a1, &v8);
        WTF::ListHashSet<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>,WTF::DefaultHash<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>>>::unlinkAndDelete(a1, v2);
        v3 = 1;
      }

      v2 = v4;
    }

    while (v4);
  }

  else
  {
    v3 = 0;
  }

  *(a1 + 24) = 0;
  v5 = *a1;
  if (*a1 && (LODWORD(v5) = *(v5 - 12), v5 > 0x7FFFFFFE))
  {
    v6 = -2;
  }

  else
  {
    v6 = 2 * v5;
  }

  *(a1 + 28) = v6;
  return v3 & 1;
}

void WebKit::WebBackForwardCache::deref(WebKit::WebBackForwardCache *this)
{
  v1 = *(*(this + 1) + 8);
  if (v1)
  {
    CFRelease(*(v1 - 8));
  }

  else
  {
    __break(0xC471u);
  }
}

uint64_t WebKit::WebProcessPool::sendToAllProcesses<Messages::WebProcess::SetBackForwardCacheCapacity>(uint64_t result, _DWORD **a2)
{
  v2 = *(result + 84);
  if (v2)
  {
    v4 = *(result + 72);
    v5 = 8 * v2;
    do
    {
      result = *v4;
      v6 = *(*v4 + 80);
      if (v6 && (*(v6 + 104) & 1) != 0 || *(result + 88))
      {
        v7 = *a2;
        result = WebKit::AuxiliaryProcessProxy::send<Messages::WebProcess::SetBackForwardCacheCapacity>(result, &v7, 0, 0);
      }

      ++v4;
      v5 -= 8;
    }

    while (v5);
  }

  return result;
}

unsigned int *WebKit::ListDataControllerBase::observeUpdates@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X8>)
{
  if (!*(a1 + 24))
  {
    v6 = [WKWebPrivacyNotificationListener alloc];
    v7 = (*(*a1 + 40))(a1);
    v28[0] = MEMORY[0x1E69E9820];
    v28[1] = 3221225472;
    v28[2] = ___ZN6WebKit22ListDataControllerBase14observeUpdatesEON3WTF8FunctionIFvvEEE_block_invoke;
    v28[3] = &__block_descriptor_40_e5_v8__0l;
    v28[4] = a1;
    v8 = [(WKWebPrivacyNotificationListener *)v6 initWithType:v7 callback:v28];
    v9 = *(a1 + 24);
    *(a1 + 24) = v8;
    if (v9)
    {
    }
  }

  v11 = WTF::fastMalloc(0x18);
  *v11 = 0;
  *(v11 + 8) = 1;
  v12 = *a2;
  *a2 = 0;
  *(v11 + 16) = v12;
  *a3 = v11;
  v13 = *(a1 + 44);
  LODWORD(v12) = *(a1 + 40) + 1;
  *(a1 + 40) = v12;
  if (v12 > v13)
  {
    v14 = *(a1 + 32);
    if (v14)
    {
      v15 = *(v14 - 4);
      if (!v15)
      {
LABEL_18:
        v21 = *(v14 - 4);
        if (6 * *(v14 - 12) < v21 && v21 > 8)
        {
          WTF::HashTable<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>,WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>,WTF::IdentityExtractor,WTF::DefaultHash<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>>,WTF::HashTraits<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>>,WTF::HashTraits<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>>,WTF::FastMalloc>::shrinkToBestSize((a1 + 32));
          v14 = *(a1 + 32);
          *(a1 + 40) = 0;
          if (!v14)
          {
            goto LABEL_25;
          }
        }

        else
        {
          *(a1 + 40) = 0;
        }

        LODWORD(v14) = *(v14 - 12);
        if (v14 > 0x7FFFFFFE)
        {
          v23 = -2;
          goto LABEL_27;
        }

LABEL_25:
        v23 = 2 * v14;
LABEL_27:
        *(a1 + 44) = v23;
        goto LABEL_28;
      }

      v16 = 0;
      v17 = 8 * v15;
      v18 = v14 - 8;
      do
      {
        v19 = *(v18 + v17);
        if ((v19 + 1) >= 2 && !*(v19 + 8))
        {
          *(v18 + v17) = 0;
          if (atomic_fetch_add(v19, 0xFFFFFFFF) == 1)
          {
            atomic_store(1u, v19);
            WTF::fastFree(v19, v10);
          }

          *(v18 + v17) = -1;
          ++v16;
        }

        v17 -= 8;
      }

      while (v17);
      v14 = *(a1 + 32);
      if (v16)
      {
        v20 = *(v14 - 12) - v16;
        *(v14 - 16) += v16;
        *(v14 - 12) = v20;
        goto LABEL_18;
      }

      if (v14)
      {
        goto LABEL_18;
      }
    }

    LODWORD(v14) = 0;
    *(a1 + 40) = 0;
    goto LABEL_25;
  }

LABEL_28:
  WTF::WeakPtrFactory<WebPushD::PushServiceConnection,WTF::DefaultWeakPtrImpl>::initializeIfNeeded(v11, v11);
  v24 = *v11;
  atomic_fetch_add(*v11, 1u);
  v29 = v24;
  WTF::HashTable<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>,WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>,WTF::IdentityExtractor,WTF::DefaultHash<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>>,WTF::HashTraits<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>>,WTF::HashTraits<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>>,WTF::FastMalloc>::add<(WTF::ShouldValidateKey)1>((a1 + 32), &v29, v27);
  result = v29;
  v29 = 0;
  if (result)
  {
    if (atomic_fetch_add(result, 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, result);
      return WTF::fastFree(result, v25);
    }
  }

  return result;
}

void sub_19D55D884(_Unwind_Exception *a1, void *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, WTF *a18)
{
  if (a18)
  {
    if (atomic_fetch_add(a18, 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, a18);
      WTF::fastFree(a18, a2);
    }
  }

  *v18 = 0;
  WTF::RefCounted<WebKit::ListDataObserver>::deref(v19, a2);
  _Unwind_Resume(a1);
}

uint64_t WebKit::ListDataControllerBase::initializeIfNeeded(WebKit::ListDataControllerBase *this)
{
  result = (*(*this + 16))(this);
  if ((result & 1) == 0)
  {
    v3 = *(this + 48);
    *(this + 48) = 1;
    if ((v3 & 1) == 0)
    {
      WTF::WeakPtrFactory<WebPushD::PushServiceConnection,WTF::DefaultWeakPtrImpl>::initializeIfNeeded(this + 2, this);
      v4 = *(this + 1);
      atomic_fetch_add(v4, 1u);
      v5 = WTF::fastMalloc(0x10);
      *v5 = &unk_1F10EE808;
      v5[1] = v4;
      v6 = v5;
      (*(*this + 32))(this, &v6);
      result = v6;
      v6 = 0;
      if (result)
      {
        return (*(*result + 8))(result);
      }
    }
  }

  return result;
}

void sub_19D55D9D4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (a10)
  {
    (*(*a10 + 8))(a10);
  }

  _Unwind_Resume(exception_object);
}

void WebKit::StorageAccessPromptQuirkController::updateList(uint64_t a1, uint64_t *a2)
{
  v4 = PAL::WebPrivacyLibrary(1);
  if (v4)
  {
    v5 = MEMORY[0x1E69E2268];
    v4 = [(*MEMORY[0x1E69E2268])() instancesRespondToSelector:sel_requestStorageAccessPromptQuirksData_completionHandler_];
    if (v4)
    {
      if (byte_1ED641C6B)
      {
        v6 = dword_1ED641D34;
        if (dword_1ED641D34 == dword_1ED641D30)
        {
          a2 = WTF::Vector<WTF::CompletionHandler<void ()(void)>,1ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(&qword_1ED641D28, dword_1ED641D34 + 1, a2);
          v7 = dword_1ED641D34;
          v8 = (qword_1ED641D28 + 8 * dword_1ED641D34);
          goto LABEL_11;
        }

        v10 = qword_1ED641D28;
        v7 = dword_1ED641D34;
      }

      else
      {
        v6 = 0;
        v7 = 0;
        v10 = &qword_1ED641D38;
        qword_1ED641D28 = &qword_1ED641D38;
        *&dword_1ED641D30 = 1;
        byte_1ED641C6B = 1;
      }

      v8 = &v10[v6];
LABEL_11:
      v11 = *a2;
      *a2 = 0;
      *v8 = v11;
      dword_1ED641D34 = v7 + 1;
      if ((v7 + 1) <= 1)
      {
        v12 = [objc_alloc((*MEMORY[0x1E69E23B8])()) init];
        v13 = [(*v5)(objc_msgSend(v12 setAfterUpdates:{0)), "sharedInstance"}];
        v14[0] = MEMORY[0x1E69E9820];
        v14[1] = 3221225472;
        v14[2] = ___ZN6WebKit34StorageAccessPromptQuirkController10updateListEON3WTF17CompletionHandlerIFvvEEE_block_invoke;
        v14[3] = &__block_descriptor_40_e53_v24__0__WPStorageAccessPromptQuirksData_8__NSError_16l;
        v14[4] = a1;
        [v13 requestStorageAccessPromptQuirksData:v12 completionHandler:v14];
        if (v12)
        {
        }
      }

      return;
    }
  }

  WTF::RunLoop::mainSingleton(v4);
  std::make_unique[abi:sn200100]<WTF::Detail::CallableWrapper<WTF::CompletionHandler<void ()(void)>,void>,WTF::CompletionHandler<void ()(void)>,0>(a2, &v15);
  WTF::RunLoop::dispatch();
  v9 = v15;
  v15 = 0;
  if (v9)
  {
    (*(*v9 + 8))(v9);
  }
}

void sub_19D55DC2C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  if (v14)
  {
  }

  _Unwind_Resume(exception_object);
}

void WebKit::StorageAccessUserAgentStringQuirkController::updateList(uint64_t a1, uint64_t *a2)
{
  v4 = PAL::WebPrivacyLibrary(1);
  if (v4)
  {
    v5 = MEMORY[0x1E69E2268];
    v4 = [(*MEMORY[0x1E69E2268])() instancesRespondToSelector:sel_requestStorageAccessUserAgentStringQuirksData_completionHandler_];
    if (v4)
    {
      if (byte_1ED641C6C)
      {
        v6 = dword_1ED641D4C;
        if (dword_1ED641D4C == dword_1ED641D48)
        {
          a2 = WTF::Vector<WTF::CompletionHandler<void ()(void)>,1ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(&qword_1ED641D40, dword_1ED641D4C + 1, a2);
          v7 = dword_1ED641D4C;
          v8 = (qword_1ED641D40 + 8 * dword_1ED641D4C);
          goto LABEL_11;
        }

        v10 = qword_1ED641D40;
        v7 = dword_1ED641D4C;
      }

      else
      {
        v6 = 0;
        v7 = 0;
        v10 = &qword_1ED641D50;
        qword_1ED641D40 = &qword_1ED641D50;
        *&dword_1ED641D48 = 1;
        byte_1ED641C6C = 1;
      }

      v8 = &v10[v6];
LABEL_11:
      v11 = *a2;
      *a2 = 0;
      *v8 = v11;
      dword_1ED641D4C = v7 + 1;
      if ((v7 + 1) <= 1)
      {
        v12 = [objc_alloc((*MEMORY[0x1E69E23B8])()) init];
        v13 = [(*v5)(objc_msgSend(v12 setAfterUpdates:{0)), "sharedInstance"}];
        v14[0] = MEMORY[0x1E69E9820];
        v14[1] = 3221225472;
        v14[2] = ___ZN6WebKit43StorageAccessUserAgentStringQuirkController10updateListEON3WTF17CompletionHandlerIFvvEEE_block_invoke;
        v14[3] = &__block_descriptor_40_e62_v24__0__WPStorageAccessUserAgentStringQuirksData_8__NSError_16l;
        v14[4] = a1;
        [v13 requestStorageAccessUserAgentStringQuirksData:v12 completionHandler:v14];
        if (v12)
        {
        }
      }

      return;
    }
  }

  WTF::RunLoop::mainSingleton(v4);
  std::make_unique[abi:sn200100]<WTF::Detail::CallableWrapper<WTF::CompletionHandler<void ()(void)>,void>,WTF::CompletionHandler<void ()(void)>,0>(a2, &v15);
  WTF::RunLoop::dispatch();
  v9 = v15;
  v15 = 0;
  if (v9)
  {
    (*(*v9 + 8))(v9);
  }
}

void sub_19D55DE9C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  if (v14)
  {
  }

  _Unwind_Resume(exception_object);
}

id WebKit::WebProcessPool::ensureBundleParameters(WebKit::WebProcessPool *this)
{
  result = *(this + 87);
  if (!result)
  {
    result = objc_alloc_init(MEMORY[0x1E695DF90]);
    v3 = *(this + 87);
    *(this + 87) = result;
    if (v3)
    {

      return *(this + 87);
    }
  }

  return result;
}

void API::ProcessPoolConfiguration::~ProcessPoolConfiguration(API::ProcessPoolConfiguration *this, void *a2)
{
  v3 = *(this + 19);
  if (v3)
  {
    *(this + 19) = 0;
    *(this + 40) = 0;
    WTF::fastFree(v3, a2);
  }

  v4 = *(this + 17);
  *(this + 17) = 0;
  if (v4 && atomic_fetch_add_explicit(v4, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v4, a2);
  }

  WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(this + 56, a2);
  WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(this + 40, v5);
  WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(this + 24, v6);
  v8 = *(this + 2);
  *(this + 2) = 0;
  if (v8)
  {
    if (atomic_fetch_add_explicit(v8, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v8, v7);
    }
  }
}

WTF::StringImpl *WTF::VectorDestructor<true,WTF::String>::destruct(WTF::StringImpl *result, WTF::StringImpl *a2)
{
  if (result != a2)
  {
    v3 = result;
    do
    {
      result = *v3;
      *v3 = 0;
      if (result)
      {
        if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          result = WTF::StringImpl::destroy(result, a2);
        }
      }

      ++v3;
    }

    while (v3 != a2);
  }

  return result;
}

void sub_19D55E14C(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    CFRelease(*(v1 + 8));
  }

  _Unwind_Resume(exception_object);
}

API::Object *WebKit::WebExtensionControllerConfiguration::WebExtensionControllerConfiguration(API::Object *a1, int a2)
{
  v8 = *MEMORY[0x1E69E9840];
  v4 = API::Object::Object(a1);
  *v4 = &unk_1F111DF10;
  *(v4 + 2) = 0;
  *(v4 + 3) = 0;
  *(v4 + 32) = 0;
  if (a2)
  {
    v7[0] = 0;
    v7[16] = 0;
    WebKit::WebExtensionControllerConfiguration::createStorageDirectoryPath(v7);
  }

  else
  {
    v5 = *MEMORY[0x1E696EBA0];
    if (*MEMORY[0x1E696EBA0])
    {
      atomic_fetch_add_explicit(v5, 2u, memory_order_relaxed);
    }

    *(a1 + 5) = v5;
  }

  *(a1 + 6) = 0;
  *(a1 + 7) = 0;
  return a1;
}

uint64_t WebKit::WebExtensionControllerConfiguration::createStorageDirectoryPath(WTF::UUID *a1)
{
  v38 = *MEMORY[0x1E69E9840];
  v2 = [MEMORY[0x1E696AC08] defaultManager];
  v3 = [v2 URLForDirectory:5 inDomain:1 appropriateForURL:0 create:0 error:0];
  v4 = [v3 path];
  MEMORY[0x19EB02040](&v25, v4);

  if (v25 && *(v25 + 1))
  {
    if (*(a1 + 16) == 1)
    {
      WTF::UUID::toString(&v26, a1);
      WTF::String::convertToASCIIUppercase(&v24, &v26);
      v6 = v26;
      v26 = 0;
      if (v6 && atomic_fetch_add_explicit(v6, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        v6 = WTF::StringImpl::destroy(v6, v5);
      }
    }

    else
    {
      v6 = WTF::StringImpl::createWithoutCopyingNonEmpty();
      v24 = v26;
    }

    if (WebKit::processHasContainer(v6))
    {
      v26 = "WebKit";
      v27 = 6;
      LOBYTE(v7) = 1;
      v28 = 1;
      v29 = "WebExtensions";
      v30 = 13;
      v31 = 1;
      v32 = 0;
      v8 = v24;
      if (v24)
      {
        v9 = *(v24 + 16);
        v8 = *(v24 + 1);
        v32 = *(v24 + 1);
        v7 = (v9 >> 2) & 1;
      }

      v33 = v8;
      v34 = v7;
      WTF::FileSystemImpl::pathByAppendingComponents();
    }

    else
    {
      v11 = [MEMORY[0x1E696AAE8] mainBundle];
      v12 = [v11 bundleIdentifier];
      v13 = v12;
      if (!v12)
      {
        v3 = [MEMORY[0x1E696AE30] processInfo];
        v13 = [v3 processName];
      }

      MEMORY[0x19EB02040](&v23, v13);
      if (!v12)
      {
      }

      v26 = "WebKit";
      v27 = 6;
      LOBYTE(v14) = 1;
      v28 = 1;
      v29 = 0;
      v15 = v23;
      if (v23)
      {
        v16 = *(v23 + 16);
        v15 = *(v23 + 1);
        v29 = *(v23 + 1);
        v17 = (v16 >> 2) & 1;
      }

      else
      {
        LOBYTE(v17) = 1;
      }

      v30 = v15;
      v31 = v17;
      v32 = "WebExtensions";
      v33 = 13;
      v34 = 1;
      v35 = 0;
      v18 = v24;
      if (v24)
      {
        v19 = *(v24 + 16);
        v18 = *(v24 + 1);
        v35 = *(v24 + 1);
        v14 = (v19 >> 2) & 1;
      }

      v36 = v18;
      v37 = v14;
      WTF::FileSystemImpl::pathByAppendingComponents();
      v20 = v23;
      v23 = 0;
      if (v20 && atomic_fetch_add_explicit(v20, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v20, v10);
      }
    }

    v21 = v24;
    v24 = 0;
    if (v21 && atomic_fetch_add_explicit(v21, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v21, v10);
    }

    result = v25;
    v25 = 0;
    if (result)
    {
      if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        return WTF::StringImpl::destroy(result, v10);
      }
    }
  }

  else
  {
    result = 44;
    __break(0xC471u);
  }

  return result;
}

void sub_19D55E5AC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, WTF::StringImpl *a9, WTF::StringImpl *a10, WTF::StringImpl *a11, uint64_t a12)
{
  if (a10 && atomic_fetch_add_explicit(a10, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(a10, v16);
  }

  if (a11)
  {
    if (atomic_fetch_add_explicit(a11, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(a11, v16);
    }
  }

  _Unwind_Resume(a1);
}

uint64_t WebKit::processHasContainer(WebKit *this)
{
  {
    v3 = WebKit::processHasContainer(void)::hasContainer;
  }

  else
  {
    v8[1] = v1;
    v8[2] = v2;
    WebKit::pathForProcessContainer(v8, this);
    v6 = v8[0];
    if (v8[0])
    {
      v7 = *(v8[0] + 1) != 0;
      v8[0] = 0;
      if (atomic_fetch_add_explicit(v6, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v6, v5);
      }
    }

    else
    {
      v7 = 0;
    }

    v3 = v7;
    WebKit::processHasContainer(void)::hasContainer = v7;
  }

  return v3 & 1;
}

uint64_t WebKit::pathForProcessContainer(WebKit *this)
{
  v3 = *MEMORY[0x1E69E9840];
  __s[0] = 0;
  getpid();
  sandbox_container_path_for_pid();
  strlen(__s);
  return WTF::String::fromUTF8();
}

API::PageConfiguration::Data *API::PageConfiguration::Data::Data(API::PageConfiguration::Data *this)
{
  v2 = (this + 285);
  *(this + 1) = 0u;
  *(this + 2) = 0u;
  *this = 0u;
  *(this + 6) = 0;
  WTF::URL::invalidate((this + 48));
  *(this + 104) = 0u;
  *(this + 88) = 0u;
  v3 = WTF::fastMalloc(0x28);
  *v3 = 1;
  *(v3 + 8) = 0;
  *(v3 + 32) = 0;
  *(this + 15) = v3;
  v4 = WTF::aboutBlankURL(v3);
  v5 = MEMORY[0x19EB0E640](this + 128, v4);
  *(this + 18) = 0;
  *(this + 152) = 0;
  *(this + 232) = 0;
  *(this + 120) = 0;
  *(this + 34) = 0;
  *(this + 31) = 0;
  *(this + 32) = 0;
  *(this + 132) = 0;
  IsSmallScreen = PAL::currentUserInterfaceIdiomIsSmallScreen(v5);
  *(this + 280) = IsSmallScreen ^ 1;
  *(this + 281) = IsSmallScreen;
  *(this + 282) = IsSmallScreen;
  *(this + 283) = IsSmallScreen ^ 1;
  *(this + 284) = API::PageConfiguration::Data::defaultDragLiftDelay(IsSmallScreen);
  *v2 = 16842752;
  *(this + 289) = 1;
  {
    v7 = API::PageConfiguration::Data::defaultShouldDecidePolicyBeforeLoadingQuickLookPreview(void)::shouldDecide;
  }

  else
  {
    v7 = WTF::linkedOnOrAfterSDKWithBehavior();
    API::PageConfiguration::Data::defaultShouldDecidePolicyBeforeLoadingQuickLookPreview(void)::shouldDecide = v7;
  }

  *(this + 291) = v7;
  *(this + 146) = 257;
  *(this + 294) = 1;
  *(this + 304) = 0;
  *(this + 312) = 0;
  *(this + 320) = 0;
  *(this + 324) = 0;
  *(this + 360) = 0;
  *(v2 + 10) = 0;
  *(this + 344) = 0;
  *(this + 328) = 0u;
  *(this + 368) = 1;
  if (WTF::linkedOnOrAfterSDKWithBehavior())
  {
    v8 = 1;
  }

  else
  {
    v8 = -1;
  }

  *(this + 47) = v8;
  *(this + 24) = 0u;
  *(this + 25) = 0u;
  *(this + 409) = 0u;
  *(this + 425) = 1;
  *(this + 54) = 0;
  *(this + 440) = 1;
  *(this + 448) = 0;
  *(this + 472) = 0;
  *(this + 120) = 0x1000000;
  *(this + 242) = 0;
  *(this + 486) = 1;
  *(this + 520) = 0;
  *(v2 + 202) = 0;
  *(this + 31) = 0u;
  *(this + 512) = 0;
  *(this + 33) = 0u;
  *(this + 68) = 0x4014000000000000;
  *(this + 69) = 0x101010000010001;
  *(this + 280) = 0;
  *(this + 562) = 1;
  *(this + 567) = 0;
  *(this + 563) = 0;
  v2[71] = 65793;
  *(this + 573) = 1;
  *(this + 72) = 0;
  *(this + 584) = 0;
  return this;
}

uint64_t API::PageConfiguration::Data::defaultDragLiftDelay(API::PageConfiguration::Data *this)
{
  v1 = [objc_msgSend(MEMORY[0x1E695E000] "standardUserDefaults")];
  if (v1 == 1)
  {
    return 1;
  }

  else
  {
    return 2 * (v1 == 2);
  }
}

WTF::StringImpl *std::__optional_storage_base<WTF::String,false>::__assign_from[abi:sn200100]<std::__optional_move_assign_base<WTF::String,false>>(WTF::StringImpl *result, unsigned __int8 *a2)
{
  if (*(result + 8) == a2[8])
  {
    if (*(result + 8))
    {
      v3 = *a2;
      *a2 = 0;
      v4 = *result;
      *result = v3;
      if (v4)
      {
        if (atomic_fetch_add_explicit(v4, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          return WTF::StringImpl::destroy(v4, a2);
        }
      }
    }
  }

  else if (*(result + 8))
  {
    return std::__optional_destruct_base<WTF::String,false>::reset[abi:sn200100](result, a2);
  }

  else
  {
    v2 = *a2;
    *a2 = 0;
    *result = v2;
    *(result + 8) = 1;
  }

  return result;
}

void sub_19D55EBD4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  CFRelease(*(v10 + 8));
  if (a10)
  {
    CFRelease(*(a10 + 8));
  }

  _Unwind_Resume(a1);
}

API::WebsitePolicies *API::PageConfiguration::Data::LazyInitializedRef<API::WebsitePolicies,&API::PageConfiguration::Data::createWebsitePolicies>::get(API::WebsitePolicies **a1)
{
  result = *a1;
  if (!result)
  {
    v3 = API::Object::newObject(0xB0uLL, 126);
    result = API::WebsitePolicies::WebsitePolicies(v3);
    v4 = *a1;
    *a1 = result;
    if (v4)
    {
      CFRelease(*(v4 + 1));
      return *a1;
    }
  }

  return result;
}

API::WebsitePolicies *API::WebsitePolicies::WebsitePolicies(API::WebsitePolicies *this)
{
  v2 = API::Object::Object(this);
  *(v2 + 2) = 0;
  *v2 = &unk_1F111BBE0;
  *(v2 + 24) = 0u;
  *(v2 + 40) = 0u;
  *(v2 + 56) = 0u;
  *(v2 + 72) = 0u;
  *(v2 + 83) = 0u;
  *(v2 + 104) = 1;
  *(v2 + 14) = 0;
  *(v2 + 15) = 0;
  *(v2 + 128) = 1;
  *(v2 + 129) = 0;
  *(v2 + 137) = 1;
  *(v2 + 18) = 0;
  *(v2 + 19) = 0;
  *(v2 + 80) = 0;
  v4 = WebKit::WebPagePreferencesLockdownModeObserver::operator new(0x18, v3);
  *(this + 21) = WebKit::WebPagePreferencesLockdownModeObserver::WebPagePreferencesLockdownModeObserver(v4, this);
  return this;
}

uint64_t WebKit::WebPagePreferencesLockdownModeObserver::operator new(WebKit::WebPagePreferencesLockdownModeObserver *this, void *a2)
{
  if (this == 24 && WebKit::WebPagePreferencesLockdownModeObserver::s_heapRef)
  {
    return bmalloc::api::tzoneAllocateNonCompact(WebKit::WebPagePreferencesLockdownModeObserver::s_heapRef, a2);
  }

  else
  {
    return WebKit::WebPagePreferencesLockdownModeObserver::operatorNewSlow(this);
  }
}

WebKit::WebPagePreferencesLockdownModeObserver *WebKit::WebPagePreferencesLockdownModeObserver::WebPagePreferencesLockdownModeObserver(WebKit::WebPagePreferencesLockdownModeObserver *this, API::WebsitePolicies *a2)
{
  *(this + 1) = 0;
  *this = &unk_1F1103A78;
  WTF::WeakPtrFactory<WebPushD::PushServiceConnection,WTF::DefaultWeakPtrImpl>::initializeIfNeeded(a2 + 4, a2);
  v4 = *(a2 + 2);
  atomic_fetch_add(v4, 1u);
  *(this + 2) = v4;
  WebKit::addLockdownModeObserver(this);
  return this;
}

void sub_19D55ED8C(_Unwind_Exception *a1, void *a2)
{
  v4 = v3;
  v6 = *(v4 + 16);
  *(v4 + 16) = 0;
  if (v6)
  {
    if (atomic_fetch_add(v6, 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, v6);
      WTF::fastFree(v6, a2);
    }
  }

  WTF::WeakPtrFactory<WebPushD::PushServiceConnection,WTF::DefaultWeakPtrImpl>::~WeakPtrFactory(v2, a2);
  _Unwind_Resume(a1);
}

unsigned int *WebKit::addLockdownModeObserver(WebKit *isLockdownModeEnabledBySystemIgnoringCaching)
{
  v1 = isLockdownModeEnabledBySystemIgnoringCaching;
  if ((WebKit::cachedLockdownModeEnabledGlobally(void)::cachedLockdownModeEnabledGlobally & 0x100) == 0)
  {
    isLockdownModeEnabledBySystemIgnoringCaching = WebKit::isLockdownModeEnabledBySystemIgnoringCaching(isLockdownModeEnabledBySystemIgnoringCaching);
    WebKit::cachedLockdownModeEnabledGlobally(void)::cachedLockdownModeEnabledGlobally = isLockdownModeEnabledBySystemIgnoringCaching | 0x100;
  }

  WebKit::lockdownModeObservers(isLockdownModeEnabledBySystemIgnoringCaching);
  return WTF::WeakHashSet<WebKit::LockdownModeObserver,WTF::DefaultWeakPtrImpl,(WTF::EnableWeakPtrThreadingAssertions)1>::add<WebKit::LockdownModeObserver>(&qword_1ED642658, v1, v3);
}

uint64_t WebKit::isLockdownModeEnabledBySystemIgnoringCaching(WebKit *this)
{
  {
    if ((WebKit::isLockdownModeEnabledGloballyForTesting(void)::enabledForTesting & 0x100) != 0)
    {
      v1 = WebKit::isLockdownModeEnabledGloballyForTesting(void)::enabledForTesting;
      return v1 & 1;
    }
  }

  else
  {
    WebKit::isLockdownModeEnabledGloballyForTesting(void)::enabledForTesting = 0;
  }

  v2 = +[_WKSystemPreferences isCaptivePortalModeEnabled];
  if (v2)
  {
    HasContainer = WebKit::processHasContainer(v2);
    if (HasContainer)
    {
      WebKit::pathForProcessContainer(&v12, HasContainer);
      v4 = v12;
      if (v12)
      {
        atomic_fetch_add_explicit(v12, 2u, memory_order_relaxed);
        MEMORY[0x19EB00B70](&v13, v4);
        if (atomic_fetch_add_explicit(v4, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v4, v5);
        }
      }

      else
      {
        v13 = &stru_1F1147748;
        v6 = &stru_1F1147748;
      }

      v8 = [_WKSystemPreferences isCaptivePortalModeIgnored:v13];
      v9 = v13;
      v13 = 0;
      if (v9)
      {
      }

      v10 = v12;
      v12 = 0;
      if (v10 && atomic_fetch_add_explicit(v10, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v10, v7);
      }

      v1 = !v8;
    }

    else
    {
      v1 = 1;
    }
  }

  else
  {
    v1 = 0;
  }

  return v1 & 1;
}

void sub_19D55EF48(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, WTF::StringImpl *a9, uint64_t a10)
{
  if (a9)
  {
    if (atomic_fetch_add_explicit(a9, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(a9, a2);
    }
  }

  _Unwind_Resume(exception_object);
}

void sub_19D55F034(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    CFRelease(v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t WebKit::lockdownModeObservers(WebKit *this)
{
  if (WTF::isMainRunLoop(this))
  {
    if ((byte_1ED642610 & 1) == 0)
    {
      qword_1ED642658 = 0;
      unk_1ED642660 = 0;
      byte_1ED642610 = 1;
    }

    return &qword_1ED642658;
  }

  else
  {
    result = 1124;
    __break(0xC471u);
  }

  return result;
}

uint64_t API::Object::constructInWrapper<WebKit::WebsiteDataStoreConfiguration,WebKit::IsPersistent>(API::Object *a1, unsigned __int8 *a2)
{
  v4 = API::Object::apiObjectsUnderConstruction(a1);
  v7 = a1;
  v8 = [(API::Object *)a1 _apiObject];
  WTF::HashMap<API::Object *,void const*,WTF::DefaultHash<API::Object *>,WTF::HashTraits<API::Object *>,WTF::HashTraits<void const*>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::add<void const*>(v4, &v8, &v7, v6);
  return WebKit::WebsiteDataStoreConfiguration::WebsiteDataStoreConfiguration([(API::Object *)a1 _apiObject], *a2, 1);
}

uint64_t WebKit::WebsiteDataStoreConfiguration::WebsiteDataStoreConfiguration(uint64_t a1, int a2, int a3)
{
  v6 = API::Object::Object(a1);
  *v6 = &unk_1F1121198;
  *(v6 + 16) = a2;
  *(v6 + 17) = 2;
  *(v6 + 2) = 0u;
  *(v6 + 3) = 0u;
  v7 = WTF::StringImpl::createWithoutCopyingNonEmpty();
  *(a1 + 64) = v15;
  *(a1 + 216) = 0u;
  *(a1 + 200) = 0u;
  *(a1 + 184) = 0u;
  *(a1 + 168) = 0u;
  *(a1 + 152) = 0u;
  *(a1 + 136) = 0u;
  *(a1 + 120) = 0u;
  *(a1 + 104) = 0u;
  *(a1 + 88) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 232) = 1048576000;
  isFullWebBrowserOrRunningTest = WebKit::isFullWebBrowserOrRunningTest(v7);
  v9 = 0x3FC3333333333333;
  if (isFullWebBrowserOrRunningTest)
  {
    v9 = 0x3FE3333333333333;
  }

  *(a1 + 240) = v9;
  *(a1 + 248) = 1;
  v10 = WebKit::isFullWebBrowserOrRunningTest(isFullWebBrowserOrRunningTest);
  v11 = 0x3FC999999999999ALL;
  if (v10)
  {
    v11 = 0x3FE999999999999ALL;
  }

  *(a1 + 256) = v11;
  *(a1 + 264) = 1;
  *(a1 + 272) = 0x1000000000;
  *(a1 + 280) = 1;
  *(a1 + 288) = 0;
  *(a1 + 296) = 0;
  *(a1 + 304) = 256;
  *(a1 + 312) = 0u;
  *(a1 + 328) = 0u;
  *(a1 + 344) = 0;
  WTF::URL::invalidate((a1 + 344));
  *(a1 + 384) = 0;
  WTF::URL::invalidate((a1 + 384));
  *(a1 + 424) = 0x10000010000;
  *(a1 + 432) = 1;
  *(a1 + 440) = 0;
  *(a1 + 433) = 0;
  *(a1 + 444) = 1;
  *(a1 + 448) = 0;
  WTF::URL::invalidate((a1 + 448));
  *(a1 + 488) = 0;
  *(a1 + 496) = 0u;
  *(a1 + 512) = 0u;
  *(a1 + 528) = 0u;
  *(a1 + 544) = 0;
  if (a2)
  {
    if (a3)
    {
      WebKit::WebsiteDataStoreConfiguration::initializePaths(a1);
      WTF::StringImpl::createWithoutCopyingNonEmpty();
      v13 = *(a1 + 496);
      *(a1 + 496) = v15;
      if (v13)
      {
        if (atomic_fetch_add_explicit(v13, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v13, v12);
        }
      }
    }
  }

  return a1;
}

WTF::StringImpl *WebKit::WebsiteDataStoreConfiguration::initializePaths(WebKit::WebsiteDataStoreConfiguration *this)
{
  WebKit::WebsiteDataStore::defaultApplicationCacheDirectory((this + 48), &v81);
  v3 = v81;
  v81 = 0;
  v4 = *(this + 9);
  *(this + 9) = v3;
  if (v4)
  {
    if (atomic_fetch_add_explicit(v4, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v4, v2);
    }

    v5 = v81;
    v81 = 0;
    if (v5 && atomic_fetch_add_explicit(v5, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v5, v2);
    }
  }

  WebKit::WebsiteDataStore::defaultCacheStorageDirectory((this + 48), &v81);
  v7 = v81;
  v81 = 0;
  v8 = *(this + 11);
  *(this + 11) = v7;
  if (v8)
  {
    if (atomic_fetch_add_explicit(v8, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v8, v6);
    }

    v9 = v81;
    v81 = 0;
    if (v9 && atomic_fetch_add_explicit(v9, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v9, v6);
    }
  }

  WebKit::WebsiteDataStore::defaultNetworkCacheDirectory((this + 48), &v81);
  v11 = v81;
  v81 = 0;
  v12 = *(this + 22);
  *(this + 22) = v11;
  if (v12)
  {
    if (atomic_fetch_add_explicit(v12, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v12, v10);
    }

    v13 = v81;
    v81 = 0;
    if (v13 && atomic_fetch_add_explicit(v13, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v13, v10);
    }
  }

  WebKit::WebsiteDataStore::defaultMediaCacheDirectory((this + 48), &v81);
  v15 = v81;
  v81 = 0;
  v16 = *(this + 20);
  *(this + 20) = v15;
  if (v16)
  {
    if (atomic_fetch_add_explicit(v16, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v16, v14);
    }

    v17 = v81;
    v81 = 0;
    if (v17 && atomic_fetch_add_explicit(v17, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v17, v14);
    }
  }

  WebKit::WebsiteDataStore::defaultHSTSStorageDirectory((this + 48), &v81);
  v19 = v81;
  v81 = 0;
  v20 = *(this + 16);
  *(this + 16) = v19;
  if (v20)
  {
    if (atomic_fetch_add_explicit(v20, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v20, v18);
    }

    v21 = v81;
    v81 = 0;
    if (v21 && atomic_fetch_add_explicit(v21, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v21, v18);
    }
  }

  WebKit::WebsiteDataStore::defaultModelElementCacheDirectory(MEMORY[0x1E696EBA0], &v81);
  v23 = v81;
  v81 = 0;
  v24 = *(this + 27);
  *(this + 27) = v23;
  if (v24)
  {
    if (atomic_fetch_add_explicit(v24, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v24, v22);
    }

    v25 = v81;
    v81 = 0;
    if (v25 && atomic_fetch_add_explicit(v25, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v25, v22);
    }
  }

  WebKit::WebsiteDataStore::defaultAlternativeServicesDirectory((this + 56), &v81);
  v27 = v81;
  v81 = 0;
  v28 = *(this + 10);
  *(this + 10) = v27;
  if (v28)
  {
    if (atomic_fetch_add_explicit(v28, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v28, v26);
    }

    v29 = v81;
    v81 = 0;
    if (v29 && atomic_fetch_add_explicit(v29, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v29, v26);
    }
  }

  WebKit::WebsiteDataStore::defaultIndexedDBDatabaseDirectory((this + 56), &v81);
  v31 = v81;
  v81 = 0;
  v32 = *(this + 17);
  *(this + 17) = v31;
  if (v32)
  {
    if (atomic_fetch_add_explicit(v32, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v32, v30);
    }

    v33 = v81;
    v81 = 0;
    if (v33 && atomic_fetch_add_explicit(v33, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v33, v30);
    }
  }

  WebKit::WebsiteDataStore::defaultServiceWorkerRegistrationDirectory((this + 56), &v81);
  v35 = v81;
  v81 = 0;
  v36 = *(this + 25);
  *(this + 25) = v35;
  if (v36)
  {
    if (atomic_fetch_add_explicit(v36, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v36, v34);
    }

    v37 = v81;
    v81 = 0;
    if (v37 && atomic_fetch_add_explicit(v37, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v37, v34);
    }
  }

  WebKit::WebsiteDataStore::defaultWebSQLDatabaseDirectory((this + 56), &v81);
  v39 = v81;
  v81 = 0;
  v40 = *(this + 26);
  *(this + 26) = v39;
  if (v40)
  {
    if (atomic_fetch_add_explicit(v40, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v40, v38);
    }

    v41 = v81;
    v81 = 0;
    if (v41 && atomic_fetch_add_explicit(v41, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v41, v38);
    }
  }

  WebKit::WebsiteDataStore::defaultLocalStorageDirectory((this + 56), &v81);
  v43 = v81;
  v81 = 0;
  v44 = *(this + 19);
  *(this + 19) = v43;
  if (v44)
  {
    if (atomic_fetch_add_explicit(v44, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v44, v42);
    }

    v45 = v81;
    v81 = 0;
    if (v45 && atomic_fetch_add_explicit(v45, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v45, v42);
    }
  }

  WebKit::WebsiteDataStore::defaultMediaKeysStorageDirectory((this + 56), &v81);
  v47 = v81;
  v81 = 0;
  v48 = *(this + 21);
  *(this + 21) = v47;
  if (v48)
  {
    if (atomic_fetch_add_explicit(v48, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v48, v46);
    }

    v49 = v81;
    v81 = 0;
    if (v49 && atomic_fetch_add_explicit(v49, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v49, v46);
    }
  }

  WebKit::WebsiteDataStore::defaultResourceLoadStatisticsDirectory((this + 56), &v81);
  v51 = v81;
  v81 = 0;
  v52 = *(this + 23);
  *(this + 23) = v51;
  if (v52)
  {
    if (atomic_fetch_add_explicit(v52, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v52, v50);
    }

    v53 = v81;
    v81 = 0;
    if (v53 && atomic_fetch_add_explicit(v53, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v53, v50);
    }
  }

  WebKit::WebsiteDataStore::defaultDeviceIdHashSaltsStorageDirectory((this + 56), &v81);
  v55 = v81;
  v81 = 0;
  v56 = *(this + 13);
  *(this + 13) = v55;
  if (v56)
  {
    if (atomic_fetch_add_explicit(v56, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v56, v54);
    }

    v57 = v81;
    v81 = 0;
    if (v57 && atomic_fetch_add_explicit(v57, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v57, v54);
    }
  }

  WebKit::WebsiteDataStore::defaultMediaKeysHashSaltsStorageDirectory((this + 56), &v81);
  v59 = v81;
  v81 = 0;
  v60 = *(this + 14);
  *(this + 14) = v59;
  if (v60)
  {
    if (atomic_fetch_add_explicit(v60, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v60, v58);
    }

    v61 = v81;
    v81 = 0;
    if (v61 && atomic_fetch_add_explicit(v61, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v61, v58);
    }
  }

  WebKit::WebsiteDataStore::defaultJavaScriptConfigurationDirectory((this + 56), &v81);
  v63 = v81;
  v81 = 0;
  v64 = *(this + 18);
  *(this + 18) = v63;
  if (v64)
  {
    if (atomic_fetch_add_explicit(v64, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v64, v62);
    }

    v65 = v81;
    v81 = 0;
    if (v65 && atomic_fetch_add_explicit(v65, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v65, v62);
    }
  }

  WebKit::WebsiteDataStore::defaultGeneralStorageDirectory((this + 56), &v81);
  v67 = v81;
  v81 = 0;
  v68 = *(this + 15);
  *(this + 15) = v67;
  if (v68)
  {
    if (atomic_fetch_add_explicit(v68, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v68, v66);
    }

    v69 = v81;
    v81 = 0;
    if (v69 && atomic_fetch_add_explicit(v69, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v69, v66);
    }
  }

  WebKit::WebsiteDataStore::defaultCookieStorageFile(this + 56, &v81);
  v71 = v81;
  v81 = 0;
  v72 = *(this + 12);
  *(this + 12) = v71;
  if (v72)
  {
    if (atomic_fetch_add_explicit(v72, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v72, v70);
    }

    v73 = v81;
    v81 = 0;
    if (v73 && atomic_fetch_add_explicit(v73, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v73, v70);
    }
  }

  WebKit::WebsiteDataStore::defaultSearchFieldHistoryDirectory((this + 56), &v81);
  v75 = v81;
  v81 = 0;
  v76 = *(this + 24);
  *(this + 24) = v75;
  if (v76)
  {
    if (atomic_fetch_add_explicit(v76, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v76, v74);
    }

    v77 = v81;
    v81 = 0;
    if (v77 && atomic_fetch_add_explicit(v77, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v77, v74);
    }
  }

  WebKit::WebsiteDataStore::defaultResourceMonitorThrottlerDirectory((this + 56), &v81);
  v79 = v81;
  v81 = 0;
  result = *(this + 28);
  *(this + 28) = v79;
  if (result)
  {
    if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(result, v78);
    }

    result = v81;
    v81 = 0;
    if (result)
    {
      if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        return WTF::StringImpl::destroy(result, v78);
      }
    }
  }

  return result;
}

void WebKit::WebsiteDataStore::defaultApplicationCacheDirectory(WebKit::WebsiteDataStore *this@<X0>, uint64_t a2@<X8>)
{
  if (!*this || !*(*this + 4))
  {
    isMobileSafari = WTF::IOSApplication::isMobileSafari(this);
    if ((isMobileSafari & 1) != 0 || WTF::IOSApplication::isWebBookmarksD(isMobileSafari))
    {
      v5 = [[(NSString *)NSHomeDirectory() stringByAppendingPathComponent:@"Library/Caches/com.apple.WebAppCache"] stringByStandardizingPath];
      MEMORY[0x19EB02040](&v10, v5);
      WebKit::stringByResolvingSymlinksInPath();
      v7 = v10;
      v10 = 0;
      if (!v7 || atomic_fetch_add_explicit(v7, 0xFFFFFFFE, memory_order_relaxed) != 2)
      {
        return;
      }
    }

    else
    {
      WTF::StringImpl::createWithoutCopyingNonEmpty();
      v8 = v10;
      v9 = v10;
      WebKit::WebsiteDataStore::cacheDirectoryFileSystemRepresentation(&v9, 0, a2);
      if (!v8 || atomic_fetch_add_explicit(v8, 0xFFFFFFFE, memory_order_relaxed) != 2)
      {
        return;
      }

      v7 = v8;
    }

    WTF::StringImpl::destroy(v7, v6);
    return;
  }

  WTF::FileSystemImpl::pathByAppendingComponent();
}

void sub_19D55FB68(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, WTF::StringImpl *a10)
{
  if (v10)
  {
    if (atomic_fetch_add_explicit(v10, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v10, a2);
    }
  }

  _Unwind_Resume(exception_object);
}

void WebKit::WebsiteDataStore::defaultCacheStorageDirectory(WebKit::WebsiteDataStore *this@<X0>, uint64_t a2@<X8>)
{
  if (*this && *(*this + 4))
  {

    WTF::FileSystemImpl::pathByAppendingComponent();
  }

  else
  {
    WTF::StringImpl::createWithoutCopyingNonEmpty();
    v4 = v7;
    v6 = v7;
    WebKit::WebsiteDataStore::cacheDirectoryFileSystemRepresentation(&v6, 1, a2);
    if (v4 && atomic_fetch_add_explicit(v4, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v4, v5);
    }
  }
}

void sub_19D55FC78(_Unwind_Exception *exception_object, WTF::StringImpl *a2)
{
  if (v2)
  {
    if (atomic_fetch_add_explicit(v2, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v2, a2);
    }
  }

  _Unwind_Resume(exception_object);
}

void WebKit::WebsiteDataStore::cacheDirectoryFileSystemRepresentation(atomic_uint **a1@<X0>, int a2@<W2>, uint64_t a3@<X8>)
{
  if ((byte_1ED642789 & 1) == 0)
  {
    qword_1ED6427A8 = 0;
    byte_1ED642789 = 1;
  }

  if (qword_1ED6427A0 != -1)
  {
    dispatch_once(&qword_1ED6427A0, &__block_literal_global_220);
  }

  v6 = qword_1ED6427A8;
  v7 = *a1;
  if (v7)
  {
    atomic_fetch_add_explicit(v7, 2u, memory_order_relaxed);
    MEMORY[0x19EB00B70](&v14, v7);
    if (atomic_fetch_add_explicit(v7, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v7, v8);
    }
  }

  else
  {
    v14 = &stru_1F1147748;
    v9 = &stru_1F1147748;
  }

  v10 = [v6 URLByAppendingPathComponent:v14 isDirectory:1];
  v11 = v10;
  if (v10)
  {
    v12 = v10;
  }

  v13 = v14;
  v14 = 0;
  if (v13)
  {

    if (!a2)
    {
      goto LABEL_16;
    }

    goto LABEL_15;
  }

  if (a2)
  {
LABEL_15:
    [objc_msgSend(MEMORY[0x1E696AC08] "defaultManager")];
  }

LABEL_16:
  MEMORY[0x19EB02040](a3, [objc_msgSend(v11 "absoluteURL")]);
  if (v11)
  {
  }
}

void sub_19D55FDEC(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (atomic_fetch_add_explicit(v10, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v10, a2);
  }

  _Unwind_Resume(exception_object);
}

void ___ZN6WebKit16WebsiteDataStore38cacheDirectoryFileSystemRepresentationERKN3WTF6StringES4_NS0_21ShouldCreateDirectoryE_block_invoke()
{
  v0 = [objc_msgSend(MEMORY[0x1E696AC08] "defaultManager")];
  if (v0)
  {
    v10 = v0;
    if (WebKit::processHasContainer(v0))
    {
      v1 = v10;
    }

    else
    {
      WebKit::applicationOrProcessIdentifier(&v12);
      v2 = v12;
      v3 = [v10 URLByAppendingPathComponent:v12 isDirectory:1];
      v4 = v3;
      if (v3)
      {
        v5 = v3;
      }

      if (v2)
      {
      }

      v1 = v4;
    }

    v6 = [v1 URLByAppendingPathComponent:@"WebKit" isDirectory:{1, v1}];
    v7 = v6;
    if (v6)
    {
      v8 = v6;
    }

    v9 = qword_1ED6427A8;
    qword_1ED6427A8 = v7;
    if (v9)
    {
    }

    if (v11)
    {
    }
  }

  else
  {
    __break(0xC471u);
  }
}

void WebKit::WebsiteDataStore::defaultNetworkCacheDirectory(WebKit::WebsiteDataStore *this@<X0>, uint64_t a2@<X8>)
{
  if (*this && *(*this + 4))
  {

    WTF::FileSystemImpl::pathByAppendingComponent();
  }

  else
  {
    WTF::StringImpl::createWithoutCopyingNonEmpty();
    v4 = v7;
    v6 = v7;
    WebKit::WebsiteDataStore::cacheDirectoryFileSystemRepresentation(&v6, 1, a2);
    if (v4 && atomic_fetch_add_explicit(v4, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v4, v5);
    }
  }
}

void sub_19D560054(_Unwind_Exception *exception_object, WTF::StringImpl *a2)
{
  if (v2)
  {
    if (atomic_fetch_add_explicit(v2, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v2, a2);
    }
  }

  _Unwind_Resume(exception_object);
}

void WebKit::WebsiteDataStore::defaultMediaCacheDirectory(WebKit::WebsiteDataStore *this@<X0>, uint64_t a2@<X8>)
{
  if (*this && *(*this + 4))
  {

    WTF::FileSystemImpl::pathByAppendingComponent();
  }

  else
  {
    WTF::StringImpl::createWithoutCopyingNonEmpty();
    v4 = v7;
    v6 = v7;
    WebKit::WebsiteDataStore::tempDirectoryFileSystemRepresentation(&v6, 1, a2);
    if (v4 && atomic_fetch_add_explicit(v4, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v4, v5);
    }
  }
}

void sub_19D560140(_Unwind_Exception *exception_object, WTF::StringImpl *a2)
{
  if (v2)
  {
    if (atomic_fetch_add_explicit(v2, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v2, a2);
    }
  }

  _Unwind_Resume(exception_object);
}

void WebKit::WebsiteDataStore::tempDirectoryFileSystemRepresentation(atomic_uint **a1@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  if ((_MergedGlobals_85 & 1) == 0)
  {
    qword_1ED642798 = 0;
    _MergedGlobals_85 = 1;
  }

  if (qword_1ED642790 != -1)
  {
    dispatch_once(&qword_1ED642790, &__block_literal_global_213);
  }

  v6 = qword_1ED642798;
  v7 = *a1;
  if (v7)
  {
    atomic_fetch_add_explicit(v7, 2u, memory_order_relaxed);
    MEMORY[0x19EB00B70](&v14, v7);
    if (atomic_fetch_add_explicit(v7, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v7, v8);
    }
  }

  else
  {
    v14 = &stru_1F1147748;
    v9 = &stru_1F1147748;
  }

  v10 = [v6 URLByAppendingPathComponent:v14 isDirectory:1];
  v11 = v10;
  if (v10)
  {
    v12 = v10;
  }

  v13 = v14;
  v14 = 0;
  if (v13)
  {

    if (!a2)
    {
      goto LABEL_16;
    }

    goto LABEL_15;
  }

  if (a2)
  {
LABEL_15:
    [objc_msgSend(MEMORY[0x1E696AC08] "defaultManager")];
  }

LABEL_16:
  MEMORY[0x19EB02040](a3, [objc_msgSend(v11 "absoluteURL")]);
  if (v11)
  {
  }
}

void sub_19D5602B4(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (atomic_fetch_add_explicit(v10, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v10, a2);
  }

  _Unwind_Resume(exception_object);
}

void ___ZN6WebKit16WebsiteDataStore37tempDirectoryFileSystemRepresentationERKN3WTF6StringENS0_21ShouldCreateDirectoryE_block_invoke()
{
  v0 = [MEMORY[0x1E695DFF8] fileURLWithPath:NSTemporaryDirectory() isDirectory:1];
  if (v0)
  {
    v10 = v0;
    if (WebKit::processHasContainer(v0))
    {
      v1 = v10;
    }

    else
    {
      WebKit::applicationOrProcessIdentifier(&v12);
      v2 = v12;
      v3 = [v10 URLByAppendingPathComponent:v12 isDirectory:1];
      v4 = v3;
      if (v3)
      {
        v5 = v3;
      }

      if (v2)
      {
      }

      v1 = v4;
    }

    v6 = [v1 URLByAppendingPathComponent:@"WebKit" isDirectory:{1, v1}];
    v7 = v6;
    if (v6)
    {
      v8 = v6;
    }

    v9 = qword_1ED642798;
    qword_1ED642798 = v7;
    if (v9)
    {
    }

    if (v11)
    {
    }
  }

  else
  {
    __break(0xC471u);
  }
}

void WebKit::WebsiteDataStore::defaultHSTSStorageDirectory(WebKit::WebsiteDataStore *this@<X0>, uint64_t a2@<X8>)
{
  if (*this && *(*this + 4))
  {

    WTF::FileSystemImpl::pathByAppendingComponent();
  }

  else
  {
    WTF::StringImpl::createWithoutCopyingNonEmpty();
    v4 = v7;
    v6 = v7;
    WebKit::WebsiteDataStore::cacheDirectoryFileSystemRepresentation(&v6, 1, a2);
    if (v4 && atomic_fetch_add_explicit(v4, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v4, v5);
    }
  }
}

void sub_19D560514(_Unwind_Exception *exception_object, WTF::StringImpl *a2)
{
  if (v2)
  {
    if (atomic_fetch_add_explicit(v2, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v2, a2);
    }
  }

  _Unwind_Resume(exception_object);
}

void WebKit::WebsiteDataStore::defaultModelElementCacheDirectory(WebKit::WebsiteDataStore *this@<X0>, uint64_t a2@<X8>)
{
  if (*this && *(*this + 4))
  {

    WTF::FileSystemImpl::pathByAppendingComponent();
  }

  else
  {
    WTF::StringImpl::createWithoutCopyingNonEmpty();
    v4 = v7;
    v6 = v7;
    WebKit::WebsiteDataStore::tempDirectoryFileSystemRepresentation(&v6, 0, a2);
    if (v4 && atomic_fetch_add_explicit(v4, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v4, v5);
    }
  }
}

void sub_19D560600(_Unwind_Exception *exception_object, WTF::StringImpl *a2)
{
  if (v2)
  {
    if (atomic_fetch_add_explicit(v2, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v2, a2);
    }
  }

  _Unwind_Resume(exception_object);
}

void WebKit::WebsiteDataStore::defaultAlternativeServicesDirectory(WebKit::WebsiteDataStore *this@<X0>, uint64_t a2@<X8>)
{
  if (*this && *(*this + 4))
  {

    WTF::FileSystemImpl::pathByAppendingComponent();
  }

  else
  {
    WTF::StringImpl::createWithoutCopyingNonEmpty();
    v4 = v7;
    v6 = v7;
    WebKit::WebsiteDataStore::cacheDirectoryFileSystemRepresentation(&v6, 0, a2);
    if (v4 && atomic_fetch_add_explicit(v4, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v4, v5);
    }
  }
}

void sub_19D5606EC(_Unwind_Exception *exception_object, WTF::StringImpl *a2)
{
  if (v2)
  {
    if (atomic_fetch_add_explicit(v2, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v2, a2);
    }
  }

  _Unwind_Resume(exception_object);
}

void WebKit::WebsiteDataStore::websiteDataDirectoryFileSystemRepresentation(atomic_uint **a1@<X0>, int a2@<W2>, uint64_t a3@<X8>)
{
  if ((byte_1ED64278A & 1) == 0)
  {
    qword_1ED6427B8 = 0;
    byte_1ED64278A = 1;
  }

  if (qword_1ED6427B0 != -1)
  {
    dispatch_once(&qword_1ED6427B0, &__block_literal_global_222);
  }

  v6 = qword_1ED6427B8;
  v7 = *a1;
  if (v7)
  {
    atomic_fetch_add_explicit(v7, 2u, memory_order_relaxed);
    MEMORY[0x19EB00B70](&v14, v7);
    if (atomic_fetch_add_explicit(v7, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v7, v8);
    }
  }

  else
  {
    v14 = &stru_1F1147748;
    v9 = &stru_1F1147748;
  }

  v10 = [v6 URLByAppendingPathComponent:v14 isDirectory:1];
  v11 = v10;
  if (v10)
  {
    v12 = v10;
  }

  v13 = v14;
  v14 = 0;
  if (v13)
  {

    if (!a2)
    {
      goto LABEL_16;
    }

    goto LABEL_15;
  }

  if (a2)
  {
LABEL_15:
    [objc_msgSend(MEMORY[0x1E696AC08] "defaultManager")];
  }

LABEL_16:
  MEMORY[0x19EB02040](a3, [objc_msgSend(v11 "absoluteURL")]);
  if (v11)
  {
  }
}

void sub_19D560860(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (atomic_fetch_add_explicit(v10, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v10, a2);
  }

  _Unwind_Resume(exception_object);
}

void WebKit::WebsiteDataStore::defaultIndexedDBDatabaseDirectory(WebKit::WebsiteDataStore *this@<X0>, uint64_t a2@<X8>)
{
  if (*this && *(*this + 4))
  {

    WTF::FileSystemImpl::pathByAppendingComponent();
  }

  else
  {
    WTF::StringImpl::createWithoutCopyingNonEmpty();
    v4 = v7;
    v6 = v7;
    WebKit::WebsiteDataStore::websiteDataDirectoryFileSystemRepresentation(&v6, 1, a2);
    if (v4 && atomic_fetch_add_explicit(v4, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v4, v5);
    }
  }
}

void sub_19D560970(_Unwind_Exception *exception_object, WTF::StringImpl *a2)
{
  if (v2)
  {
    if (atomic_fetch_add_explicit(v2, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v2, a2);
    }
  }

  _Unwind_Resume(exception_object);
}

void ___ZN6WebKit16WebsiteDataStore44websiteDataDirectoryFileSystemRepresentationERKN3WTF6StringES4_NS0_21ShouldCreateDirectoryE_block_invoke()
{
  v0 = [objc_msgSend(MEMORY[0x1E696AC08] "defaultManager")];
  if (!v0)
  {
    __break(0xC471u);
    return;
  }

  v13 = v0;
  v1 = v0;
  v2 = [v13 URLByAppendingPathComponent:@"WebKit" isDirectory:1];
  v3 = v2;
  if (v2)
  {
    v4 = v2;
  }

  if ((WebKit::processHasContainer(v5) & 1) == 0)
  {
    WebKit::applicationOrProcessIdentifier(&v16);
    v7 = v16;
    v6 = [v3 URLByAppendingPathComponent:v16 isDirectory:{1, v3}];
    v14 = v6;
    if (v6)
    {
      v8 = v6;
      v6 = v14;
    }

    if (v3)
    {

      v6 = v14;
      if (!v7)
      {
        goto LABEL_11;
      }
    }

    else if (!v7)
    {
      goto LABEL_11;
    }

    v6 = v14;
    goto LABEL_11;
  }

  v6 = v3;
LABEL_11:
  v9 = [v6 URLByAppendingPathComponent:@"WebsiteData" isDirectory:{1, v6}];
  v10 = v9;
  if (v9)
  {
    v11 = v9;
  }

  v12 = qword_1ED6427B8;
  qword_1ED6427B8 = v10;
  if (v12)
  {
  }

  if (v15)
  {
  }
}

void sub_19D560B00(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9)
{
  if (v9)
  {
  }

  _Unwind_Resume(exception_object);
}

void WebKit::WebsiteDataStore::defaultServiceWorkerRegistrationDirectory(WebKit::WebsiteDataStore *this@<X0>, uint64_t a2@<X8>)
{
  if (*this && *(*this + 4))
  {

    WTF::FileSystemImpl::pathByAppendingComponent();
  }

  else
  {
    WTF::StringImpl::createWithoutCopyingNonEmpty();
    v4 = v7;
    v6 = v7;
    WebKit::WebsiteDataStore::cacheDirectoryFileSystemRepresentation(&v6, 1, a2);
    if (v4 && atomic_fetch_add_explicit(v4, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v4, v5);
    }
  }
}

void sub_19D560BF4(_Unwind_Exception *exception_object, WTF::StringImpl *a2)
{
  if (v2)
  {
    if (atomic_fetch_add_explicit(v2, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v2, a2);
    }
  }

  _Unwind_Resume(exception_object);
}

void WebKit::WebsiteDataStore::defaultWebSQLDatabaseDirectory(WebKit::WebsiteDataStore *this@<X0>, uint64_t a2@<X8>)
{
  if (*this && *(*this + 4))
  {

    WTF::FileSystemImpl::pathByAppendingComponent();
  }

  else
  {
    WTF::StringImpl::createWithoutCopyingNonEmpty();
    v4 = v7;
    v6 = v7;
    WebKit::WebsiteDataStore::websiteDataDirectoryFileSystemRepresentation(&v6, 0, a2);
    if (v4 && atomic_fetch_add_explicit(v4, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v4, v5);
    }
  }
}

void sub_19D560CE0(_Unwind_Exception *exception_object, WTF::StringImpl *a2)
{
  if (v2)
  {
    if (atomic_fetch_add_explicit(v2, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v2, a2);
    }
  }

  _Unwind_Resume(exception_object);
}

void WebKit::WebsiteDataStore::defaultLocalStorageDirectory(WebKit::WebsiteDataStore *this@<X0>, uint64_t a2@<X8>)
{
  if (*this && *(*this + 4))
  {

    WTF::FileSystemImpl::pathByAppendingComponent();
  }

  else
  {
    WTF::StringImpl::createWithoutCopyingNonEmpty();
    v4 = v7;
    v6 = v7;
    WebKit::WebsiteDataStore::websiteDataDirectoryFileSystemRepresentation(&v6, 1, a2);
    if (v4 && atomic_fetch_add_explicit(v4, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v4, v5);
    }
  }
}

void sub_19D560DCC(_Unwind_Exception *exception_object, WTF::StringImpl *a2)
{
  if (v2)
  {
    if (atomic_fetch_add_explicit(v2, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v2, a2);
    }
  }

  _Unwind_Resume(exception_object);
}

void WebKit::WebsiteDataStore::defaultMediaKeysStorageDirectory(WebKit::WebsiteDataStore *this@<X0>, uint64_t a2@<X8>)
{
  if (*this && *(*this + 4))
  {

    WTF::FileSystemImpl::pathByAppendingComponent();
  }

  else
  {
    WTF::StringImpl::createWithoutCopyingNonEmpty();
    v4 = v7;
    v6 = v7;
    WebKit::WebsiteDataStore::websiteDataDirectoryFileSystemRepresentation(&v6, 1, a2);
    if (v4 && atomic_fetch_add_explicit(v4, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v4, v5);
    }
  }
}

void sub_19D560EB8(_Unwind_Exception *exception_object, WTF::StringImpl *a2)
{
  if (v2)
  {
    if (atomic_fetch_add_explicit(v2, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v2, a2);
    }
  }

  _Unwind_Resume(exception_object);
}

void WebKit::WebsiteDataStore::defaultResourceLoadStatisticsDirectory(WebKit::WebsiteDataStore *this@<X0>, uint64_t a2@<X8>)
{
  if (*this && *(*this + 4))
  {

    WTF::FileSystemImpl::pathByAppendingComponent();
  }

  else
  {
    WTF::StringImpl::createWithoutCopyingNonEmpty();
    v4 = v7;
    v6 = v7;
    WebKit::WebsiteDataStore::websiteDataDirectoryFileSystemRepresentation(&v6, 1, a2);
    if (v4 && atomic_fetch_add_explicit(v4, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v4, v5);
    }
  }
}

void sub_19D560FA4(_Unwind_Exception *exception_object, WTF::StringImpl *a2)
{
  if (v2)
  {
    if (atomic_fetch_add_explicit(v2, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v2, a2);
    }
  }

  _Unwind_Resume(exception_object);
}

void WebKit::WebsiteDataStore::defaultDeviceIdHashSaltsStorageDirectory(WebKit::WebsiteDataStore *this@<X0>, uint64_t a2@<X8>)
{
  if (*this && *(*this + 4))
  {

    WTF::FileSystemImpl::pathByAppendingComponent();
  }

  else
  {
    WTF::StringImpl::createWithoutCopyingNonEmpty();
    v4 = v7;
    v6 = v7;
    WebKit::WebsiteDataStore::websiteDataDirectoryFileSystemRepresentation(&v6, 1, a2);
    if (v4 && atomic_fetch_add_explicit(v4, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v4, v5);
    }
  }
}

void sub_19D561090(_Unwind_Exception *exception_object, WTF::StringImpl *a2)
{
  if (v2)
  {
    if (atomic_fetch_add_explicit(v2, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v2, a2);
    }
  }

  _Unwind_Resume(exception_object);
}

void WebKit::WebsiteDataStore::defaultMediaKeysHashSaltsStorageDirectory(WebKit::WebsiteDataStore *this@<X0>, uint64_t a2@<X8>)
{
  if (*this && *(*this + 4))
  {

    WTF::FileSystemImpl::pathByAppendingComponent();
  }

  else
  {
    WTF::StringImpl::createWithoutCopyingNonEmpty();
    v4 = v7;
    v6 = v7;
    WebKit::WebsiteDataStore::websiteDataDirectoryFileSystemRepresentation(&v6, 1, a2);
    if (v4 && atomic_fetch_add_explicit(v4, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v4, v5);
    }
  }
}

void sub_19D56117C(_Unwind_Exception *exception_object, WTF::StringImpl *a2)
{
  if (v2)
  {
    if (atomic_fetch_add_explicit(v2, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v2, a2);
    }
  }

  _Unwind_Resume(exception_object);
}

void WebKit::WebsiteDataStore::defaultJavaScriptConfigurationDirectory(WebKit::WebsiteDataStore *this@<X0>, uint64_t a2@<X8>)
{
  if (*this && *(*this + 4))
  {

    WTF::FileSystemImpl::pathByAppendingComponent();
  }

  else
  {
    WTF::StringImpl::createWithoutCopyingNonEmpty();
    v4 = v7;
    v6 = v7;
    WebKit::WebsiteDataStore::tempDirectoryFileSystemRepresentation(&v6, 0, a2);
    if (v4 && atomic_fetch_add_explicit(v4, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v4, v5);
    }
  }
}

void sub_19D561268(_Unwind_Exception *exception_object, WTF::StringImpl *a2)
{
  if (v2)
  {
    if (atomic_fetch_add_explicit(v2, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v2, a2);
    }
  }

  _Unwind_Resume(exception_object);
}

WTF::StringImpl *WebKit::WebsiteDataStore::defaultGeneralStorageDirectory@<X0>(WebKit::WebsiteDataStore *this@<X0>, atomic_uint **a2@<X8>)
{
  if (*this && *(*this + 4))
  {

    return WTF::FileSystemImpl::pathByAppendingComponent();
  }

  else
  {
    WTF::StringImpl::createWithoutCopyingNonEmpty();
    v5 = v11;
    v10 = v11;
    WebKit::WebsiteDataStore::websiteDataDirectoryFileSystemRepresentation(&v10, 1, a2);
    if (v5 && atomic_fetch_add_explicit(v5, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v5, v6);
    }

    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3321888768;
    block[2] = ___ZN6WebKit16WebsiteDataStore30defaultGeneralStorageDirectoryERKN3WTF6StringE_block_invoke;
    block[3] = &__block_descriptor_40_e8_32c17_ZTSN3WTF6StringE_e5_v8__0l;
    v7 = *a2;
    if (*a2)
    {
      atomic_fetch_add_explicit(v7, 2u, memory_order_relaxed);
    }

    v9 = v7;
    if (WebKit::WebsiteDataStore::defaultGeneralStorageDirectory(WTF::String const&)::onceToken != -1)
    {
      dispatch_once(&WebKit::WebsiteDataStore::defaultGeneralStorageDirectory(WTF::String const&)::onceToken, block);
    }

    result = v9;
    v9 = 0;
    if (result && atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      return WTF::StringImpl::destroy(result, v6);
    }
  }

  return result;
}

void sub_19D5613F0(_Unwind_Exception *exception_object, WTF::StringImpl *a2)
{
  if (v2)
  {
    if (atomic_fetch_add_explicit(v2, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v2, a2);
    }
  }

  _Unwind_Resume(exception_object);
}

void ___ZN6WebKit16WebsiteDataStore30defaultGeneralStorageDirectoryERKN3WTF6StringE_block_invoke(uint64_t a1)
{
  v37 = *MEMORY[0x1E69E9840];
  WTF::StringImpl::createWithoutCopyingNonEmpty();
  v2 = v35;
  v32 = v35;
  WebKit::WebsiteDataStore::cacheDirectoryFileSystemRepresentation(&v32, 0, &v33);
  v3 = v33;
  if (v33)
  {
    atomic_fetch_add_explicit(v33, 2u, memory_order_relaxed);
    MEMORY[0x19EB00B70](&v34, v3);
    if (atomic_fetch_add_explicit(v3, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v3, v4);
    }
  }

  else
  {
    v34 = &stru_1F1147748;
    v5 = &stru_1F1147748;
  }

  v6 = v33;
  v33 = 0;
  if (v6 && atomic_fetch_add_explicit(v6, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v6, v4);
    if (!v2)
    {
      goto LABEL_11;
    }
  }

  else if (!v2)
  {
    goto LABEL_11;
  }

  if (atomic_fetch_add_explicit(v2, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v2, v4);
  }

LABEL_11:
  v7 = [MEMORY[0x1E696AC08] defaultManager];
  v8 = v7;
  if (v7)
  {
    v9 = v7;
  }

  v10 = [v8 contentsOfDirectoryAtPath:v34 error:0];
  v11 = v10;
  if (v10)
  {
    v12 = v10;
    v30 = 0u;
    v31 = 0u;
    v28 = 0u;
    v29 = 0u;
    v13 = [v11 countByEnumeratingWithState:&v28 objects:v36 count:16];
    if (v13)
    {
      v14 = *v29;
      do
      {
        for (i = 0; i != v13; ++i)
        {
          if (*v29 != v14)
          {
            objc_enumerationMutation(v11);
          }

          v16 = *(*(&v28 + 1) + 8 * i);
          if ([v16 length])
          {
            v17 = *(a1 + 32);
            if (v17)
            {
              atomic_fetch_add_explicit(v17, 2u, memory_order_relaxed);
              MEMORY[0x19EB00B70](&v35, v17);
              if (atomic_fetch_add_explicit(v17, 0xFFFFFFFE, memory_order_relaxed) == 2)
              {
                WTF::StringImpl::destroy(v17, v18);
              }
            }

            else
            {
              v35 = &stru_1F1147748;
              v19 = &stru_1F1147748;
            }

            v20 = [(atomic_uint *)v35 stringByAppendingPathComponent:v16];
            v21 = v20;
            if (v20)
            {
              v22 = v20;
            }

            v23 = v35;
            v35 = 0;
            if (v23)
            {
            }

            v24 = [(__CFString *)v34 stringByAppendingPathComponent:v16];
            v25 = v24;
            if (v24)
            {
              v26 = v24;
            }

            [v8 moveItemAtPath:v25 toPath:v21 error:0];
            if (v25)
            {
            }

            if (v21)
            {
            }
          }
        }

        v13 = [v11 countByEnumeratingWithState:&v28 objects:v36 count:16];
      }

      while (v13);
    }
  }

  [v8 removeItemAtPath:v34 error:0];
  if (v11)
  {
  }

  if (v8)
  {
  }

  v27 = v34;
  v34 = 0;
  if (v27)
  {
  }
}

void sub_19D5616DC(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, WTF::StringImpl *a18, uint64_t a19, uint64_t a20)
{
  if (a18 && atomic_fetch_add_explicit(a18, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(a18, a2);
  }

  if (v20)
  {
    if (atomic_fetch_add_explicit(v20, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v20, a2);
    }
  }

  _Unwind_Resume(exception_object);
}

void WebKit::WebsiteDataStore::defaultSearchFieldHistoryDirectory(WebKit::WebsiteDataStore *this@<X0>, uint64_t a2@<X8>)
{
  if (*this && *(*this + 4))
  {

    WTF::FileSystemImpl::pathByAppendingComponent();
  }

  else
  {
    WTF::StringImpl::createWithoutCopyingNonEmpty();
    v4 = v7;
    v6 = v7;
    WebKit::WebsiteDataStore::websiteDataDirectoryFileSystemRepresentation(&v6, 1, a2);
    if (v4 && atomic_fetch_add_explicit(v4, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v4, v5);
    }
  }
}

void sub_19D5618BC(_Unwind_Exception *exception_object, WTF::StringImpl *a2)
{
  if (v2)
  {
    if (atomic_fetch_add_explicit(v2, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v2, a2);
    }
  }

  _Unwind_Resume(exception_object);
}

uint64_t WebKit::WebsiteDataStore::defaultCookieStorageFile@<X0>(uint64_t this@<X0>, void *a2@<X8>)
{
  if (*this && *(*this + 4))
  {
    return WTF::FileSystemImpl::pathByAppendingComponents();
  }

  *a2 = 0;
  return this;
}

void WebKit::WebsiteDataStore::defaultResourceMonitorThrottlerDirectory(WebKit::WebsiteDataStore *this@<X0>, uint64_t a2@<X8>)
{
  if (*this && *(*this + 4))
  {

    WTF::FileSystemImpl::pathByAppendingComponent();
  }

  else
  {
    WTF::StringImpl::createWithoutCopyingNonEmpty();
    v4 = v7;
    v6 = v7;
    WebKit::WebsiteDataStore::websiteDataDirectoryFileSystemRepresentation(&v6, 0, a2);
    if (v4 && atomic_fetch_add_explicit(v4, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v4, v5);
    }
  }
}

void sub_19D561A58(_Unwind_Exception *exception_object, WTF::StringImpl *a2)
{
  if (v2)
  {
    if (atomic_fetch_add_explicit(v2, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v2, a2);
    }
  }

  _Unwind_Resume(exception_object);
}

uint64_t WTF::Vector<WTF::RefPtr<API::Object,WTF::RawPtrTraits<API::Object>,WTF::DefaultRefDerefTraits<API::Object>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::Vector(uint64_t result, uint64_t a2)
{
  v2 = result;
  v3 = *(a2 + 12);
  *result = 0;
  *(result + 8) = 0;
  *(result + 12) = v3;
  if (!v3)
  {
    return v2;
  }

  if (!(v3 >> 29))
  {
    v5 = WTF::fastMalloc((8 * v3));
    *(v2 + 8) = v3;
    *v2 = v5;
    v6 = *(a2 + 12);
    if (v6)
    {
      v7 = v5;
      v8 = *a2;
      v9 = 8 * v6;
      do
      {
        v10 = *v8;
        if (*v8)
        {
          CFRetain(*(v10 + 8));
        }

        *v7++ = v10;
        ++v8;
        v9 -= 8;
      }

      while (v9);
    }

    return v2;
  }

  __break(0xC471u);
  return result;
}

void sub_19D561B24(_Unwind_Exception *exception_object, void *a2)
{
  v4 = *v2;
  if (*v2)
  {
    *v2 = 0;
    *(v2 + 8) = 0;
    WTF::fastFree(v4, a2);
  }

  _Unwind_Resume(exception_object);
}

void *WebKit::AuthenticatorManager::create@<X0>(void *a1@<X1>, void *a2@<X8>)
{
  v4 = WebKit::AuthenticatorManager::operator new(0x3B0, a1);
  WebKit::AuthenticatorManager::AuthenticatorManager(v4);
  return WTF::adoptRef<WebKit::AuthenticatorManager,WTF::RawPtrTraits<WebKit::AuthenticatorManager>,WTF::DefaultRefDerefTraits<WebKit::AuthenticatorManager>>(a2, v4);
}

void *WTF::AbstractRefCountedAndCanMakeWeakPtr<WebKit::AuthenticatorTransportServiceObserver>::AbstractRefCountedAndCanMakeWeakPtr(void *a1)
{
  WTF::AbstractRefCounted::AbstractRefCounted(a1);
  WTF::CanMakeWeakPtrBase<WTF::WeakPtrFactory<WebKit::AuthenticatorTransportServiceObserver,WTF::DefaultWeakPtrImpl>,(WTF::WeakPtrFactoryInitialization)0>::CanMakeWeakPtrBase(a1 + 1);
  *a1 = &unk_1F10E6888;
  return a1;
}

void *WTF::AbstractRefCountedAndCanMakeWeakPtr<WebKit::AuthenticatorObserver>::AbstractRefCountedAndCanMakeWeakPtr(void *a1)
{
  WTF::AbstractRefCounted::AbstractRefCounted(a1);
  WTF::CanMakeWeakPtrBase<WTF::WeakPtrFactory<WebKit::AuthenticatorTransportServiceObserver,WTF::DefaultWeakPtrImpl>,(WTF::WeakPtrFactoryInitialization)0>::CanMakeWeakPtrBase(a1 + 1);
  *a1 = &unk_1F10E6960;
  return a1;
}

API::Object *API::Feature::Feature(API::Object *a1, atomic_uint **a2, atomic_uint **a3, char a4, char a5, atomic_uint **a6, char a7, char a8)
{
  result = API::Object::Object(a1);
  *result = &unk_1F111B098;
  v16 = *a2;
  if (*a2)
  {
    atomic_fetch_add_explicit(v16, 2u, memory_order_relaxed);
  }

  *(result + 2) = v16;
  v17 = *a3;
  if (*a3)
  {
    atomic_fetch_add_explicit(v17, 2u, memory_order_relaxed);
  }

  *(result + 3) = v17;
  v18 = *a6;
  if (*a6)
  {
    atomic_fetch_add_explicit(v18, 2u, memory_order_relaxed);
  }

  *(result + 4) = v18;
  *(result + 40) = a4;
  *(result + 41) = a5;
  *(result + 42) = a7;
  *(result + 43) = a8;
  return result;
}

void sub_19D57EE98(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (atomic_fetch_add_explicit(v10, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v10, a2);
  }

  if (atomic_fetch_add_explicit(v10, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v10, a2);
  }

  _Unwind_Resume(exception_object);
}

void WebKit::WebsiteDataStoreConfiguration::copy(WebKit::WebsiteDataStoreConfiguration *this@<X0>, uint64_t *a2@<X8>)
{
  v4 = *(this + 16);
  v5 = API::Object::newObject(0x230uLL, 125);
  *a2 = WebKit::WebsiteDataStoreConfiguration::WebsiteDataStoreConfiguration(v5, v4, 0);
  v7 = *(this + 6);
  if (v7)
  {
    atomic_fetch_add_explicit(v7, 2u, memory_order_relaxed);
  }

  v8 = *(v5 + 48);
  *(v5 + 48) = v7;
  if (v8 && atomic_fetch_add_explicit(v8, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v8, v6);
  }

  v9 = *(this + 7);
  if (v9)
  {
    atomic_fetch_add_explicit(v9, 2u, memory_order_relaxed);
  }

  v10 = *(v5 + 56);
  *(v5 + 56) = v9;
  if (v10 && atomic_fetch_add_explicit(v10, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v10, v6);
  }

  v11 = *(this + 8);
  if (v11)
  {
    atomic_fetch_add_explicit(v11, 2u, memory_order_relaxed);
  }

  v12 = *(v5 + 64);
  *(v5 + 64) = v11;
  if (v12 && atomic_fetch_add_explicit(v12, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v12, v6);
  }

  v13 = *(this + 9);
  if (v13)
  {
    atomic_fetch_add_explicit(v13, 2u, memory_order_relaxed);
  }

  v14 = *(v5 + 72);
  *(v5 + 72) = v13;
  if (v14 && atomic_fetch_add_explicit(v14, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v14, v6);
  }

  v15 = *(this + 10);
  if (v15)
  {
    atomic_fetch_add_explicit(v15, 2u, memory_order_relaxed);
  }

  v16 = *(v5 + 80);
  *(v5 + 80) = v15;
  if (v16 && atomic_fetch_add_explicit(v16, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v16, v6);
  }

  v17 = *(this + 11);
  if (v17)
  {
    atomic_fetch_add_explicit(v17, 2u, memory_order_relaxed);
  }

  v18 = *(v5 + 88);
  *(v5 + 88) = v17;
  if (v18 && atomic_fetch_add_explicit(v18, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v18, v6);
  }

  v19 = *(this + 12);
  if (v19)
  {
    atomic_fetch_add_explicit(v19, 2u, memory_order_relaxed);
  }

  v20 = *(v5 + 96);
  *(v5 + 96) = v19;
  if (v20 && atomic_fetch_add_explicit(v20, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v20, v6);
  }

  v21 = *(this + 13);
  if (v21)
  {
    atomic_fetch_add_explicit(v21, 2u, memory_order_relaxed);
  }

  v22 = *(v5 + 104);
  *(v5 + 104) = v21;
  if (v22 && atomic_fetch_add_explicit(v22, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v22, v6);
  }

  v23 = *(this + 14);
  if (v23)
  {
    atomic_fetch_add_explicit(v23, 2u, memory_order_relaxed);
  }

  v24 = *(v5 + 112);
  *(v5 + 112) = v23;
  if (v24 && atomic_fetch_add_explicit(v24, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v24, v6);
  }

  v25 = *(this + 15);
  if (v25)
  {
    atomic_fetch_add_explicit(v25, 2u, memory_order_relaxed);
  }

  v26 = *(v5 + 120);
  *(v5 + 120) = v25;
  if (v26 && atomic_fetch_add_explicit(v26, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v26, v6);
  }

  v27 = *(this + 16);
  if (v27)
  {
    atomic_fetch_add_explicit(v27, 2u, memory_order_relaxed);
  }

  v28 = *(v5 + 128);
  *(v5 + 128) = v27;
  if (v28 && atomic_fetch_add_explicit(v28, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v28, v6);
  }

  v29 = *(this + 17);
  if (v29)
  {
    atomic_fetch_add_explicit(v29, 2u, memory_order_relaxed);
  }

  v30 = *(v5 + 136);
  *(v5 + 136) = v29;
  if (v30 && atomic_fetch_add_explicit(v30, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v30, v6);
  }

  v31 = *(this + 18);
  if (v31)
  {
    atomic_fetch_add_explicit(v31, 2u, memory_order_relaxed);
  }

  v32 = *(v5 + 144);
  *(v5 + 144) = v31;
  if (v32 && atomic_fetch_add_explicit(v32, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v32, v6);
  }

  v33 = *(this + 19);
  if (v33)
  {
    atomic_fetch_add_explicit(v33, 2u, memory_order_relaxed);
  }

  v34 = *(v5 + 152);
  *(v5 + 152) = v33;
  if (v34 && atomic_fetch_add_explicit(v34, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v34, v6);
  }

  v35 = *(this + 20);
  if (v35)
  {
    atomic_fetch_add_explicit(v35, 2u, memory_order_relaxed);
  }

  v36 = *(v5 + 160);
  *(v5 + 160) = v35;
  if (v36 && atomic_fetch_add_explicit(v36, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v36, v6);
  }

  v37 = *(this + 21);
  if (v37)
  {
    atomic_fetch_add_explicit(v37, 2u, memory_order_relaxed);
  }

  v38 = *(v5 + 168);
  *(v5 + 168) = v37;
  if (v38 && atomic_fetch_add_explicit(v38, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v38, v6);
  }

  v39 = *(this + 22);
  if (v39)
  {
    atomic_fetch_add_explicit(v39, 2u, memory_order_relaxed);
  }

  v40 = *(v5 + 176);
  *(v5 + 176) = v39;
  if (v40 && atomic_fetch_add_explicit(v40, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v40, v6);
  }

  v41 = *(this + 23);
  if (v41)
  {
    atomic_fetch_add_explicit(v41, 2u, memory_order_relaxed);
  }

  v42 = *(v5 + 184);
  *(v5 + 184) = v41;
  if (v42 && atomic_fetch_add_explicit(v42, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v42, v6);
  }

  v43 = *(this + 24);
  if (v43)
  {
    atomic_fetch_add_explicit(v43, 2u, memory_order_relaxed);
  }

  v44 = *(v5 + 192);
  *(v5 + 192) = v43;
  if (v44 && atomic_fetch_add_explicit(v44, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v44, v6);
  }

  v45 = *(this + 25);
  if (v45)
  {
    atomic_fetch_add_explicit(v45, 2u, memory_order_relaxed);
  }

  v46 = *(v5 + 200);
  *(v5 + 200) = v45;
  if (v46 && atomic_fetch_add_explicit(v46, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v46, v6);
  }

  v47 = *(this + 26);
  if (v47)
  {
    atomic_fetch_add_explicit(v47, 2u, memory_order_relaxed);
  }

  v48 = *(v5 + 208);
  *(v5 + 208) = v47;
  if (v48 && atomic_fetch_add_explicit(v48, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v48, v6);
  }

  v49 = *(this + 27);
  if (v49)
  {
    atomic_fetch_add_explicit(v49, 2u, memory_order_relaxed);
  }

  v50 = *(v5 + 216);
  *(v5 + 216) = v49;
  if (v50 && atomic_fetch_add_explicit(v50, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v50, v6);
  }

  v51 = *(this + 28);
  if (v51)
  {
    atomic_fetch_add_explicit(v51, 2u, memory_order_relaxed);
  }

  v52 = *(v5 + 224);
  *(v5 + 224) = v51;
  if (v52 && atomic_fetch_add_explicit(v52, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v52, v6);
  }

  *(v5 + 428) = *(this + 214);
  *(v5 + 304) = *(this + 152);
  *(v5 + 17) = *(this + 17);
  *(v5 + 232) = *(this + 29);
  v53 = *(this + 30);
  *(v5 + 248) = *(this + 248);
  *(v5 + 240) = v53;
  v54 = *(this + 32);
  *(v5 + 264) = *(this + 264);
  *(v5 + 256) = v54;
  v55 = *(this + 34);
  *(v5 + 280) = *(this + 280);
  *(v5 + 272) = v55;
  v56 = *(this + 36);
  *(v5 + 296) = *(this + 296);
  *(v5 + 288) = v56;
  v57 = *(this + 39);
  if (v57)
  {
    atomic_fetch_add_explicit(v57, 2u, memory_order_relaxed);
  }

  v58 = *(v5 + 312);
  *(v5 + 312) = v57;
  if (v58 && atomic_fetch_add_explicit(v58, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v58, v6);
  }

  v59 = *(this + 40);
  if (v59)
  {
    atomic_fetch_add_explicit(v59, 2u, memory_order_relaxed);
  }

  v60 = *(v5 + 320);
  *(v5 + 320) = v59;
  if (v60 && atomic_fetch_add_explicit(v60, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v60, v6);
  }

  WTF::URL::operator=(v5 + 344, this + 344);
  WTF::URL::operator=(v5 + 384, this + 384);
  *(v5 + 424) = *(this + 212);
  v62 = *(this + 41);
  if (v62)
  {
    atomic_fetch_add_explicit(v62, 2u, memory_order_relaxed);
  }

  v63 = *(v5 + 328);
  *(v5 + 328) = v62;
  if (v63 && atomic_fetch_add_explicit(v63, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v63, v61);
  }

  *(v5 + 426) = *(this + 213);
  v64 = *(this + 42);
  if (v64)
  {
    atomic_fetch_add_explicit(v64, 2u, memory_order_relaxed);
  }

  v65 = *(v5 + 336);
  *(v5 + 336) = v64;
  if (v65 && atomic_fetch_add_explicit(v65, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v65, v61);
  }

  *(v5 + 430) = *(this + 215);
  *(v5 + 444) = *(this + 111);
  *(v5 + 432) = *(this + 432);
  *(v5 + 434) = *(this + 217);
  v66 = *(this + 109);
  *(v5 + 440) = *(this + 440);
  *(v5 + 436) = v66;
  *(v5 + 433) = *(this + 433);
  WTF::URL::operator=(v5 + 448, this + 448);
  *(v5 + 488) = *(this + 244);
  v68 = *(this + 62);
  if (v68)
  {
    atomic_fetch_add_explicit(v68, 2u, memory_order_relaxed);
  }

  v69 = *(v5 + 496);
  *(v5 + 496) = v68;
  if (v69 && atomic_fetch_add_explicit(v69, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v69, v67);
  }

  v70 = *(this + 63);
  if (v70)
  {
    atomic_fetch_add_explicit(v70, 2u, memory_order_relaxed);
  }

  v71 = *(v5 + 504);
  *(v5 + 504) = v70;
  if (v71 && atomic_fetch_add_explicit(v71, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v71, v67);
  }

  v72 = *(this + 64);
  if (v72)
  {
    atomic_fetch_add_explicit(v72, 2u, memory_order_relaxed);
  }

  v73 = *(v5 + 512);
  *(v5 + 512) = v72;
  if (v73 && atomic_fetch_add_explicit(v73, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v73, v67);
  }

  *(v5 + 490) = *(this + 490);
  *(v5 + 32) = *(this + 2);
  v74 = *(this + 65);
  if (v74)
  {
    Copy = CFDictionaryCreateCopy(0, v74);
    v76 = *(v5 + 520);
    *(v5 + 520) = Copy;
    if (v76)
    {
      CFRelease(v76);
    }
  }

  *(v5 + 491) = *(this + 491);
}

uint64_t WTF::URL::operator=(uint64_t a1, uint64_t a2)
{
  v4 = *a2;
  if (*a2)
  {
    atomic_fetch_add_explicit(v4, 2u, memory_order_relaxed);
  }

  v5 = *a1;
  *a1 = v4;
  if (v5 && atomic_fetch_add_explicit(v5, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v5, a2);
  }

  v6 = *(a2 + 8);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 8) = v6;
  return a1;
}

{
  WTF::String::operator=(a1, a2);
  *(a1 + 8) = *(a1 + 8) & 0xFFFFFFFE | *(a2 + 8) & 1;
  *(a2 + 8) &= ~1u;
  *(a1 + 8) = *(a1 + 8) & 0xFFFFFFFD | (2 * ((*(a2 + 8) & 2) != 0));
  *(a1 + 8) = *(a1 + 8) & 0xFFFFFFFB | (4 * ((*(a2 + 8) & 4) != 0));
  *(a1 + 8) = *(a1 + 8) & 0xFFFFFFC7 | (8 * ((*(a2 + 8) >> 3) & 7));
  *(a1 + 8) = *(a1 + 8) & 0x3F | (*(a2 + 8) >> 6 << 6);
  *(a1 + 12) = *(a2 + 12);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 20) = *(a2 + 20);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 28) = *(a2 + 28);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 36) = *(a2 + 36);
  return a1;
}

void WebKit::WebsiteDataStore::WebsiteDataStore(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v6 = API::Object::Object(a1);
  *(v6 + 2) = 0;
  v7 = (v6 + 16);
  *v6 = &unk_1F1121170;
  *(v6 + 3) = a3;
  *(v6 + 16) = 0;
  *(v6 + 34) = 0;
  *(v6 + 40) = 0;
  *(v6 + 208) = 0;
  v8 = *a2;
  *a2 = 0;
  *(v6 + 28) = v8;
  *(v6 + 232) = 0;
  *(v6 + 16) = 0u;
  *(v6 + 17) = 0u;
  *(v6 + 15) = 0u;
  *(v6 + 288) = *(v8 + 490);
  *(v6 + 289) = 0;
  *(v6 + 37) = 0;
  WTF::WorkQueue::create();
  *(a1 + 344) = 0u;
  *(a1 + 360) = 0u;
  *(a1 + 312) = 0u;
  *(a1 + 328) = 0u;
  WebKit::AuthenticatorManager::create(v9, (a1 + 376));
  *(a1 + 384) = 0;
  *(a1 + 392) = 0;
  *(a1 + 400) = 0;
  WTF::WeakPtrFactory<WebPushD::PushServiceConnection,WTF::DefaultWeakPtrImpl>::initializeIfNeeded(v7, a1);
  v11 = *v7;
  atomic_fetch_add(*v7, 1u);
  *(a1 + 408) = v11;
  if (qword_1ED642B88)
  {
    NonCompact = bmalloc::api::tzoneAllocateNonCompact(qword_1ED642B88, v10);
  }

  else
  {
    NonCompact = bmalloc::api::tzoneAllocateNonCompactSlow();
  }

  *NonCompact = &unk_1F1121328;
  *(a1 + 416) = NonCompact;
  *(a1 + 424) = 0;
  *(a1 + 432) = 0u;
  *(a1 + 448) = 0;
  v13 = WTF::fastMalloc(0x20);
  *(a1 + 456) = WebCore::LocalWebLockRegistry::LocalWebLockRegistry(v13);
  *(a1 + 464) = 0u;
  *(a1 + 480) = 1;
  *(a1 + 482) = 0;
  *(a1 + 488) = 0;
  *(a1 + 496) = 0;
  *(a1 + 512) = 0;
  *(a1 + 520) = 0;
  *(a1 + 528) = 0u;
  operator new();
}

uint64_t WebKit::AuthenticatorManager::operator new(WebKit::AuthenticatorManager *this, void *a2)
{
  if (WebKit::AuthenticatorManager::s_heapRef)
  {
    return bmalloc::api::tzoneAllocateNonCompact(WebKit::AuthenticatorManager::s_heapRef, a2);
  }

  return WebKit::AuthenticatorManager::operatorNewSlow(0x3B0);
}

WebKit::WebAuthenticationRequestData *WebKit::WebAuthenticationRequestData::WebAuthenticationRequestData(WebKit::WebAuthenticationRequestData *this)
{
  WTF::Vector<WTF::Ref<WebKit::AuthenticatorTransportService,WTF::RawPtrTraits<WebKit::AuthenticatorTransportService>,WTF::DefaultRefDerefTraits<WebKit::AuthenticatorTransportService>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::Vector(this);
  mpark::variant<WebCore::PublicKeyCredentialCreationOptions,WebCore::PublicKeyCredentialRequestOptions>::variant<WebCore::PublicKeyCredentialCreationOptions,0>(this + 16);
  WTF::WeakPtr<WebKit::WebPageProxy,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>::WeakPtr(this + 39);
  *(this + 320) = 0;
  *(this + 41) = 0;
  std::optional<WebCore::GlobalFrameIdentifier>::optional[abi:sn200100](this + 336);
  std::optional<WebKit::FrameInfoData>::optional[abi:sn200100](this + 368);
  WTF::WeakPtr<WebKit::WebPageProxy,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>::WeakPtr(this + 92);
  WTF::WeakPtr<WebKit::WebPageProxy,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>::WeakPtr(this + 93);
  std::optional<WebCore::MediationRequirement>::optional[abi:sn200100](this + 752);
  std::optional<WebCore::SecurityOriginData>::optional[abi:sn200100](this + 760);
  return this;
}

{
  WebKit::WebAuthenticationRequestData::WebAuthenticationRequestData(this);
  return this;
}

WebKit::AuthenticatorTransportServiceObserver *WebKit::AuthenticatorTransportServiceObserver::AuthenticatorTransportServiceObserver(WebKit::AuthenticatorTransportServiceObserver *this)
{
  WTF::AbstractRefCountedAndCanMakeWeakPtr<WebKit::AuthenticatorTransportServiceObserver>::AbstractRefCountedAndCanMakeWeakPtr(this);
  *this = &unk_1F10E6840;
  return this;
}

void sub_19D5800B0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  CFRelease(*(v3 + 8));
  WTF::Vector<WTF::RefPtr<API::Object,WTF::RawPtrTraits<API::Object>,WTF::DefaultRefDerefTraits<API::Object>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(va, v5);
  _Unwind_Resume(a1);
}

WebKit::AuthenticatorManager *WebKit::AuthenticatorManager::AuthenticatorManager(WebKit::AuthenticatorManager *this)
{
  v7[1] = this;
  WTF::RefCounted<WebKit::AuthenticatorManager>::RefCounted(this + 4);
  WebKit::AuthenticatorTransportServiceObserver::AuthenticatorTransportServiceObserver(this);
  WebKit::AuthenticatorObserver::AuthenticatorObserver((this + 24));
  *this = &unk_1F10E6C88;
  *(this + 3) = &unk_1F10E6D50;
  WebKit::WebAuthenticationRequestData::WebAuthenticationRequestData((this + 48));
  v2 = WTF::CompletionHandler<void ()(mpark::variant<WTF::Ref<WebCore::AuthenticatorResponse,WTF::RawPtrTraits<WebCore::AuthenticatorResponse>,WTF::DefaultRefDerefTraits<WebCore::AuthenticatorResponse>>,WebCore::ExceptionData> &&)>::CompletionHandler(this + 106);
  v3 = WTF::RunLoop::mainSingleton(v2);
  WTF::Ref<WTF::RunLoop,WTF::RawPtrTraits<WTF::RunLoop>,WTF::DefaultRefDerefTraits<WTF::RunLoop>>::Ref(v7, v3);
  v4 = WTF::StringLiterals::operator"" _s("AuthenticatorManager::RequestTimeOutTimer", 0x29);
  WTF::RunLoop::Timer::Timer<WebKit::AuthenticatorManager>(this + 107, v7, v4, v5, this, WebKit::AuthenticatorManager::timeOutTimerFired, 0);
  WTF::Ref<WTF::RunLoop,WTF::RawPtrTraits<WTF::RunLoop>,WTF::DefaultRefDerefTraits<WTF::RunLoop>>::~Ref(v7);
  v7[2] = this + 904;
  v7[3] = this + 904;
  *(this + 113) = 0;
  WTF::Vector<WTF::Ref<WebKit::AuthenticatorTransportService,WTF::RawPtrTraits<WebKit::AuthenticatorTransportService>,WTF::DefaultRefDerefTraits<WebKit::AuthenticatorTransportService>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::Vector(this + 912);
  WTF::HashSet<WTF::Ref<WebKit::Authenticator,WTF::RawPtrTraits<WebKit::Authenticator>,WTF::DefaultRefDerefTraits<WebKit::Authenticator>>,WTF::DefaultHash<WTF::Ref<WebKit::Authenticator,WTF::RawPtrTraits<WebKit::Authenticator>,WTF::DefaultRefDerefTraits<WebKit::Authenticator>>>,WTF::HashTraits<WTF::Ref<WebKit::Authenticator,WTF::RawPtrTraits<WebKit::Authenticator>,WTF::DefaultRefDerefTraits<WebKit::Authenticator>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>::HashSet(this + 116);
  *(this + 234) = 0;
  return this;
}

{
  WebKit::AuthenticatorManager::AuthenticatorManager(this);
  return this;
}

WebKit::AuthenticatorObserver *WebKit::AuthenticatorObserver::AuthenticatorObserver(WebKit::AuthenticatorObserver *this)
{
  WTF::AbstractRefCountedAndCanMakeWeakPtr<WebKit::AuthenticatorObserver>::AbstractRefCountedAndCanMakeWeakPtr(this);
  *this = &unk_1F10E68E8;
  return this;
}

uint64_t WTF::VectorBufferBase<WTF::KeyValuePair<WTF::String,WebCore::AuthenticationExtensionsClientInputs::PRFValues>,WTF::FastMalloc>::VectorBufferBase(uint64_t result)
{
  *result = 0;
  *(result + 8) = 0;
  *(result + 12) = 0;
  return result;
}

WebCore::PublicKeyCredentialEntity *WebCore::PublicKeyCredentialEntity::PublicKeyCredentialEntity(WebCore::PublicKeyCredentialEntity *this)
{
  WTF::WeakPtr<WebKit::WebPageProxy,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>::WeakPtr(this);
  WTF::WeakPtr<WebKit::WebPageProxy,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>::WeakPtr(this + 1);
  return this;
}

WebCore::PublicKeyCredentialUserEntity *WebCore::PublicKeyCredentialUserEntity::PublicKeyCredentialUserEntity(WebCore::PublicKeyCredentialUserEntity *this)
{
  WebCore::PublicKeyCredentialEntity::PublicKeyCredentialEntity(this);
  WebCore::BufferSource::BufferSource((this + 16));
  WTF::WeakPtr<WebKit::WebPageProxy,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>::WeakPtr(this + 4);
  return this;
}

{
  WebCore::PublicKeyCredentialUserEntity::PublicKeyCredentialUserEntity(this);
  return this;
}

WebCore::PublicKeyCredentialRpEntity *WebCore::PublicKeyCredentialRpEntity::PublicKeyCredentialRpEntity(WebCore::PublicKeyCredentialRpEntity *this)
{
  WebCore::PublicKeyCredentialRpEntity::PublicKeyCredentialRpEntity(this);
  return this;
}

{
  WebCore::PublicKeyCredentialEntity::PublicKeyCredentialEntity(this);
  WTF::WeakPtr<WebKit::WebPageProxy,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>::WeakPtr(this + 2);
  return this;
}

WebCore::PublicKeyCredentialCreationOptions *WebCore::PublicKeyCredentialCreationOptions::PublicKeyCredentialCreationOptions(WebCore::PublicKeyCredentialCreationOptions *this)
{
  WebCore::PublicKeyCredentialRpEntity::PublicKeyCredentialRpEntity(this);
  WebCore::PublicKeyCredentialUserEntity::PublicKeyCredentialUserEntity((this + 24));
  WebCore::BufferSource::BufferSource((this + 64));
  WTF::Vector<WTF::Ref<WebKit::AuthenticatorTransportService,WTF::RawPtrTraits<WebKit::AuthenticatorTransportService>,WTF::DefaultRefDerefTraits<WebKit::AuthenticatorTransportService>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::Vector(this + 80);
  std::optional<unsigned int>::optional[abi:sn200100](this + 96);
  WTF::Vector<WTF::Ref<WebKit::AuthenticatorTransportService,WTF::RawPtrTraits<WebKit::AuthenticatorTransportService>,WTF::DefaultRefDerefTraits<WebKit::AuthenticatorTransportService>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::Vector(this + 104);
  std::optional<WebCore::AuthenticatorSelectionCriteria>::optional[abi:sn200100](this + 120);
  std::optional<WebCore::AuthenticationExtensionsClientInputs>::optional[abi:sn200100](this + 136);
  return this;
}

{
  WebCore::PublicKeyCredentialCreationOptions::PublicKeyCredentialCreationOptions(this);
  return this;
}

WebCore::BufferSource *WebCore::BufferSource::BufferSource(WebCore::BufferSource *this)
{
  mpark::variant<WTF::RefPtr<JSC::ArrayBufferView,WTF::RawPtrTraits<JSC::ArrayBufferView>,WTF::DefaultRefDerefTraits<JSC::ArrayBufferView>>,WTF::RefPtr<JSC::ArrayBuffer,WTF::RawPtrTraits<JSC::ArrayBuffer>,WTF::DefaultRefDerefTraits<JSC::ArrayBuffer>>>::variant<WTF::RefPtr<JSC::ArrayBufferView,WTF::RawPtrTraits<JSC::ArrayBufferView>,WTF::DefaultRefDerefTraits<JSC::ArrayBufferView>>,0>(this);
  return this;
}

{
  WebCore::BufferSource::BufferSource(this);
  return this;
}

_BYTE *std::optional<unsigned int>::optional[abi:sn200100](_BYTE *a1)
{
  std::__optional_move_assign_base<unsigned int,true>::__optional_move_assign_base(a1);
  return a1;
}

{
  std::optional<unsigned int>::optional[abi:sn200100](a1);
  return a1;
}

_BYTE *std::optional<WebCore::AuthenticatorSelectionCriteria>::optional[abi:sn200100](_BYTE *a1)
{
  std::__optional_move_assign_base<WebCore::AuthenticatorSelectionCriteria,true>::__optional_move_assign_base(a1);
  return a1;
}

{
  std::optional<WebCore::AuthenticatorSelectionCriteria>::optional[abi:sn200100](a1);
  return a1;
}

_BYTE *std::__optional_destruct_base<unsigned int,true>::__optional_destruct_base[abi:sn200100](_BYTE *result)
{
  *result = 0;
  result[4] = 0;
  return result;
}

_BYTE *std::__optional_destruct_base<WebCore::AuthenticatorSelectionCriteria,true>::__optional_destruct_base[abi:sn200100](_BYTE *result)
{
  *result = 0;
  result[6] = 0;
  return result;
}

_BYTE *std::optional<WebCore::AuthenticationExtensionsClientInputs>::optional[abi:sn200100](_BYTE *a1)
{
  std::__optional_move_assign_base<WebCore::AuthenticationExtensionsClientInputs,false>::__optional_move_assign_base[abi:sn200100](a1);
  return a1;
}

{
  std::optional<WebCore::AuthenticationExtensionsClientInputs>::optional[abi:sn200100](a1);
  return a1;
}

_BYTE *std::__optional_destruct_base<WebCore::AuthenticationExtensionsClientInputs,false>::__optional_destruct_base[abi:sn200100](_BYTE *result)
{
  *result = 0;
  result[144] = 0;
  return result;
}

_BYTE *std::optional<WebCore::GlobalFrameIdentifier>::optional[abi:sn200100](_BYTE *a1)
{
  std::__optional_move_assign_base<WebCore::GlobalFrameIdentifier,true>::__optional_move_assign_base(a1);
  return a1;
}

{
  std::optional<WebCore::GlobalFrameIdentifier>::optional[abi:sn200100](a1);
  return a1;
}

_BYTE *std::__optional_destruct_base<WebCore::BufferSource,false>::__optional_destruct_base[abi:sn200100](_BYTE *result)
{
  *result = 0;
  result[16] = 0;
  return result;
}

_BYTE *std::optional<WebKit::FrameInfoData>::optional[abi:sn200100](_BYTE *a1)
{
  std::__optional_move_assign_base<WebKit::FrameInfoData,false>::__optional_move_assign_base[abi:sn200100](a1);
  return a1;
}

{
  std::optional<WebKit::FrameInfoData>::optional[abi:sn200100](a1);
  return a1;
}

_BYTE *std::__optional_destruct_base<WebKit::FrameInfoData,false>::__optional_destruct_base[abi:sn200100](_BYTE *result)
{
  *result = 0;
  result[352] = 0;
  return result;
}

_BYTE *std::optional<WebCore::MediationRequirement>::optional[abi:sn200100](_BYTE *a1)
{
  std::optional<WebCore::MediationRequirement>::optional[abi:sn200100](a1);
  return a1;
}

{
  std::__optional_move_assign_base<WebCore::MediationRequirement,true>::__optional_move_assign_base(a1);
  return a1;
}

_BYTE *std::__optional_destruct_base<WebCore::MediationRequirement,true>::__optional_destruct_base[abi:sn200100](_BYTE *result)
{
  *result = 0;
  result[1] = 0;
  return result;
}

_BYTE *std::optional<WebCore::SecurityOriginData>::optional[abi:sn200100](_BYTE *a1)
{
  std::__optional_move_assign_base<WebCore::SecurityOriginData,false>::__optional_move_assign_base[abi:sn200100](a1);
  return a1;
}

{
  std::optional<WebCore::SecurityOriginData>::optional[abi:sn200100](a1);
  return a1;
}

_BYTE *std::__optional_destruct_base<WebCore::SecurityOriginData,false>::__optional_destruct_base[abi:sn200100](_BYTE *result)
{
  *result = 0;
  result[32] = 0;
  return result;
}

uint64_t WTF::ThreadLikeAssertion::ThreadLikeAssertion(uint64_t a1)
{
  WTF::ThreadLikeAssertion::ThreadLikeAssertion();
  return a1;
}

{
  WTF::ThreadLikeAssertion::operator=();
  return a1;
}

{
  WTF::ThreadLikeAssertion::ThreadLikeAssertion(a1);
  return a1;
}

void *WTF::Ref<WTF::RunLoop,WTF::RawPtrTraits<WTF::RunLoop>,WTF::DefaultRefDerefTraits<WTF::RunLoop>>::Ref(void *a1, uint64_t a2)
{
  WTF::Ref<WTF::RunLoop,WTF::RawPtrTraits<WTF::RunLoop>,WTF::DefaultRefDerefTraits<WTF::RunLoop>>::Ref(a1, a2);
  return a1;
}

{
  WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WTF::SerialFunctionDispatcher,(WTF::DestructionThread)0>::ref((a2 + 8));
  *a1 = a2;
  return a1;
}

uint64_t WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WTF::SerialFunctionDispatcher,(WTF::DestructionThread)0>::ref(void)const::{lambda(unsigned long &)#1}::operator()(uint64_t a1, JSC::InlineWatchpointSet **a2)
{
  if (JSC::InlineWatchpointSet::isThin(*a2))
  {
    *a2 = (*a2 + 2);
    v4 = 1;
  }

  else
  {
    v4 = 0;
  }

  return v4 & 1;
}

uint64_t WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WTF::SerialFunctionDispatcher,(WTF::DestructionThread)0>::ref(atomic_ullong *a1)
{
  v7 = a1;
  v12 = a1;
  v11 = v6;
  v10 = 0;
  do
  {
    v18 = a1;
    v17 = 0;
    v9 = std::__atomic_base<unsigned long,false>::load[abi:sn200100](a1, 0);
    v8 = v9;
    result = WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WTF::SerialFunctionDispatcher,(WTF::DestructionThread)0>::ref(void)const::{lambda(unsigned long &)#1}::operator()(v11, &v8);
    if ((result & 1) == 0)
    {
      v13 = 0;
      goto LABEL_7;
    }

    v23 = a1;
    v22 = v9;
    v21 = v8;
    v20 = v10;
    v19 = v9;
    result = std::__atomic_base<unsigned long,false>::compare_exchange_weak[abi:sn200100](a1, &v19, v8, v10);
  }

  while ((result & 1) == 0);
  v13 = 1;
LABEL_7:
  v6[1] = v13;
  if ((v13 & 1) == 0)
  {
    v14 = a1;
    v16 = a1;
    v15 = 0;
    v5 = std::__atomic_base<unsigned long,false>::load[abi:sn200100](a1, 0);
    v4 = std::span<char const,18446744073709551615ul>::data[abi:sn200100](&v5);
    return WTF::ThreadSafeWeakPtrControlBlock::strongRef(v4);
  }

  return result;
}

unint64_t std::__cxx_atomic_load[abi:sn200100]<unsigned long>(atomic_ullong *a1, int a2)
{
  if ((a2 - 1) < 2)
  {
    return atomic_load_explicit(a1, memory_order_acquire);
  }

  if (a2 != 5)
  {
    return *a1;
  }

  return atomic_load(a1);
}

BOOL std::__cxx_atomic_compare_exchange_weak[abi:sn200100]<unsigned long>(unint64_t *a1, unint64_t *a2, unint64_t a3, int a4, unsigned int a5)
{
  v8 = std::__to_failure_order[abi:sn200100](a5);
  if ((a4 - 1) < 2)
  {
    if ((v8 - 1) < 2)
    {
      v22 = *a2;
      do
      {
        v23 = __ldaxr(a1);
      }

      while (v23 == v22 && __stlxr(a3, a1));
      v24 = v23 == v22;
      if (!v24)
      {
        *a2 = v23;
      }

      return v24;
    }

    else if (v8 == 5)
    {
      v25 = *a2;
      do
      {
        v26 = __ldaxr(a1);
      }

      while (v26 == v25 && __stlxr(a3, a1));
      v27 = v26 == v25;
      if (!v27)
      {
        *a2 = v26;
      }

      return v27;
    }

    else
    {
      v19 = *a2;
      do
      {
        v20 = __ldaxr(a1);
      }

      while (v20 == v19 && __stlxr(a3, a1));
      v21 = v20 == v19;
      if (!v21)
      {
        *a2 = v20;
      }

      return v21;
    }
  }

  else
  {
    switch(a4)
    {
      case 3:
        if ((v8 - 1) < 2)
        {
          v31 = *a2;
          do
          {
            v32 = __ldaxr(a1);
          }

          while (v32 == v31 && __stlxr(a3, a1));
          v33 = v32 == v31;
          if (!v33)
          {
            *a2 = v32;
          }

          v55 = v33;
        }

        else if (v8 == 5)
        {
          v34 = *a2;
          do
          {
            v35 = __ldaxr(a1);
          }

          while (v35 == v34 && __stlxr(a3, a1));
          v36 = v35 == v34;
          if (!v36)
          {
            *a2 = v35;
          }

          v55 = v36;
        }

        else
        {
          v28 = *a2;
          do
          {
            v29 = __ldaxr(a1);
          }

          while (v29 == v28 && __stlxr(a3, a1));
          v30 = v29 == v28;
          if (!v30)
          {
            *a2 = v29;
          }

          v55 = v30;
        }

        break;
      case 4:
        if ((v8 - 1) < 2)
        {
          v40 = *a2;
          do
          {
            v41 = __ldaxr(a1);
          }

          while (v41 == v40 && __stlxr(a3, a1));
          v42 = v41 == v40;
          if (!v42)
          {
            *a2 = v41;
          }

          v55 = v42;
        }

        else if (v8 == 5)
        {
          v43 = *a2;
          do
          {
            v44 = __ldaxr(a1);
          }

          while (v44 == v43 && __stlxr(a3, a1));
          v45 = v44 == v43;
          if (!v45)
          {
            *a2 = v44;
          }

          v55 = v45;
        }

        else
        {
          v37 = *a2;
          do
          {
            v38 = __ldaxr(a1);
          }

          while (v38 == v37 && __stlxr(a3, a1));
          v39 = v38 == v37;
          if (!v39)
          {
            *a2 = v38;
          }

          v55 = v39;
        }

        break;
      case 5:
        if ((v8 - 1) < 2)
        {
          v49 = *a2;
          do
          {
            v50 = __ldaxr(a1);
          }

          while (v50 == v49 && __stlxr(a3, a1));
          v51 = v50 == v49;
          if (!v51)
          {
            *a2 = v50;
          }

          v55 = v51;
        }

        else if (v8 == 5)
        {
          v52 = *a2;
          do
          {
            v53 = __ldaxr(a1);
          }

          while (v53 == v52 && __stlxr(a3, a1));
          v54 = v53 == v52;
          if (!v54)
          {
            *a2 = v53;
          }

          v55 = v54;
        }

        else
        {
          v46 = *a2;
          do
          {
            v47 = __ldaxr(a1);
          }

          while (v47 == v46 && __stlxr(a3, a1));
          v48 = v47 == v46;
          if (!v48)
          {
            *a2 = v47;
          }

          v55 = v48;
        }

        break;
      default:
        if ((v8 - 1) < 2)
        {
          v13 = *a2;
          do
          {
            v14 = __ldaxr(a1);
          }

          while (v14 == v13 && __stlxr(a3, a1));
          v15 = v14 == v13;
          if (!v15)
          {
            *a2 = v14;
          }

          v55 = v15;
        }

        else if (v8 == 5)
        {
          v16 = *a2;
          do
          {
            v17 = __ldaxr(a1);
          }

          while (v17 == v16 && __stlxr(a3, a1));
          v18 = v17 == v16;
          if (!v18)
          {
            *a2 = v17;
          }

          v55 = v18;
        }

        else
        {
          v10 = *a2;
          do
          {
            v11 = __ldaxr(a1);
          }

          while (v11 == v10 && __stlxr(a3, a1));
          v12 = v11 == v10;
          if (!v12)
          {
            *a2 = v11;
          }

          v55 = v12;
        }

        break;
    }
  }

  return v55;
}

uint64_t std::__to_failure_order[abi:sn200100](uint64_t result)
{
  if (result == 3)
  {
    return 0;
  }

  if (result == 4)
  {
    return 2;
  }

  return result;
}

uint64_t *WTF::Function<void ()(void)>::~Function(uint64_t *a1)
{
  WTF::Function<void ()(void)>::~Function(a1);
  return a1;
}

{
  std::unique_ptr<WTF::Detail::CallableWrapperBase<void>>::~unique_ptr[abi:sn200100](a1);
  return a1;
}

uint64_t *std::unique_ptr<WTF::Detail::CallableWrapperBase<void>>::unique_ptr[abi:sn200100](uint64_t *a1, uint64_t *a2)
{
  *a1 = std::unique_ptr<WTF::Detail::CallableWrapperBase<void,mpark::variant<WTF::Ref<WebCore::AuthenticatorResponse,WTF::RawPtrTraits<WebCore::AuthenticatorResponse>,WTF::DefaultRefDerefTraits<WebCore::AuthenticatorResponse>>,WebCore::ExceptionData> &&>,std::default_delete<mpark::variant<WTF::Ref<WebCore::AuthenticatorResponse,WTF::RawPtrTraits<WebCore::AuthenticatorResponse>,WTF::DefaultRefDerefTraits<WebCore::AuthenticatorResponse>>,WebCore::ExceptionData> &&>>::release[abi:sn200100](a2);
  std::__to_address[abi:sn200100]<char const>();
  return a1;
}

{
  std::unique_ptr<WTF::Detail::CallableWrapperBase<void>>::unique_ptr[abi:sn200100](a1, a2);
  return a1;
}

uint64_t *WTF::Function<void ()(void)>::Function(uint64_t *a1, uint64_t *a2)
{
  std::unique_ptr<WTF::Detail::CallableWrapperBase<void>>::unique_ptr[abi:sn200100](a1, a2);
  return a1;
}

{
  WTF::Function<void ()(void)>::Function(a1, a2);
  return a1;
}

uint64_t *std::unique_ptr<WTF::Detail::CallableWrapperBase<void>>::~unique_ptr[abi:sn200100](uint64_t *a1)
{
  std::unique_ptr<WTF::Detail::CallableWrapperBase<void>>::reset[abi:sn200100](a1, 0);
  return a1;
}

{
  std::unique_ptr<WTF::Detail::CallableWrapperBase<void>>::~unique_ptr[abi:sn200100](a1);
  return a1;
}

uint64_t *WTF::Ref<WTF::RunLoop,WTF::RawPtrTraits<WTF::RunLoop>,WTF::DefaultRefDerefTraits<WTF::RunLoop>>::~Ref(uint64_t *a1)
{
  v4 = a1;
  v5 = a1;
  v2 = 0;
  v7 = a1;
  v6 = &v2;
  v3 = std::exchange[abi:sn200100]<WTF::StringImpl *,decltype(nullptr) &>(a1);
  if (v3)
  {
    v8 = v3;
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WTF::SerialFunctionDispatcher,(WTF::DestructionThread)0>::deref((v3 + 8));
  }

  return v5;
}

{
  WTF::Ref<WTF::RunLoop,WTF::RawPtrTraits<WTF::RunLoop>,WTF::DefaultRefDerefTraits<WTF::RunLoop>>::~Ref(a1);
  return a1;
}

uint64_t *std::unique_ptr<WTF::Detail::CallableWrapperBase<void>>::reset[abi:sn200100](uint64_t *result, uint64_t a2)
{
  v2 = *result;
  *result = a2;
  if (v2)
  {
    return std::default_delete<WTF::Detail::CallableWrapperBase<void>>::operator()[abi:sn200100](result, v2);
  }

  return result;
}

void WebKit::determineTrackingPreventionState(WebKit *this)
{
  if (!atomic_load(WebKit::currentTrackingPreventionState))
  {
    v2 = WTF::linkedOnOrAfterSDKWithBehavior();
    WTF::WorkQueue::create();
    v3 = (*(*v16 + 32))(v16);
    {
      v3 = WebKit::itpQueue(void)::itpQueue;
      WebKit::itpQueue(void)::itpQueue = v16;
      if (v3)
      {
        v3 = (*(*v3 + 40))(v3);
      }
    }

    else
    {
      WebKit::itpQueue(void)::itpQueue = v16;
    }

    v4 = v16;
    v13 = v2;
    WTF::applicationBundleIdentifier(&v12, v3);
    WTF::String::isolatedCopy();
    v5 = WTF::fastMalloc(0x18);
    *v5 = &unk_1F10F1880;
    *(v5 + 8) = v13;
    v6 = v14;
    v14 = 0;
    v15 = v5;
    *(v5 + 16) = v6;
    (*(*v4 + 48))(v4, &v15);
    v8 = v15;
    v15 = 0;
    if (v8)
    {
      (*(*v8 + 8))(v8);
    }

    v9 = v14;
    v14 = 0;
    if (v9 && atomic_fetch_add_explicit(v9, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v9, v7);
    }

    v10 = v12;
    v12 = 0;
    if (v10 && atomic_fetch_add_explicit(v10, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v10, v7);
    }

    v11 = v16;
    v16 = 0;
    if (v11)
    {
      (*(*v11 + 40))(v11);
    }
  }
}

void sub_19D58207C(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, WTF::StringImpl *a10, uint64_t a11, WTF::StringImpl *a12, uint64_t a13)
{
  if (a13)
  {
    (*(*a13 + 8))(a13);
  }

  if (a12 && atomic_fetch_add_explicit(a12, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(a12, a2);
  }

  if (a10 && atomic_fetch_add_explicit(a10, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(a10, a2);
  }

  v15 = *(v13 - 24);
  *(v13 - 24) = 0;
  if (v15)
  {
    (*(*v15 + 40))(v15);
  }

  _Unwind_Resume(exception_object);
}

uint64_t WebKit::allDataStores(WebKit *this)
{
  if (WTF::isUIThread(this))
  {
    {
      WebKit::allDataStores(void)::map = 0;
    }

    return &WebKit::allDataStores(void)::map;
  }

  else
  {
    result = 129;
    __break(0xC471u);
  }

  return result;
}

WebKit *WebKit::WebsiteDataStore::initializeAppBoundDomains(WebKit *result, int a2)
{
  v2 = a2;
  v3 = atomic_load(WebKit::hasInitializedAppBoundDomains);
  if (a2 || (v3 & 1) == 0)
  {
    v4 = WebKit::appBoundDomainQueue(result);
    v5 = WTF::fastMalloc(0x10);
    *v5 = &unk_1F110C3E8;
    *(v5 + 8) = v2;
    v6 = v5;
    (*(*v4 + 48))(v4, &v6);
    result = v6;
    v6 = 0;
    if (result)
    {
      return (*(*result + 8))(result);
    }
  }

  return result;
}

void sub_19D582278(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (a10)
  {
    (*(*a10 + 8))(a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t WebKit::appBoundDomainQueue(WebKit *this)
{
  {
    return WebKit::appBoundDomainQueue(void)::queue;
  }

  WTF::WorkQueue::create();
  result = v2;
  WebKit::appBoundDomainQueue(void)::queue = v2;
  return result;
}

WebKit *WebKit::WebsiteDataStore::initializeManagedDomains(WebKit *result, int a2)
{
  v2 = a2;
  v3 = atomic_load(WebKit::hasInitializedManagedDomains);
  if (a2 || (v3 & 1) == 0)
  {
    v4 = WebKit::managedDomainQueueSingleton(result);
    v5 = WTF::fastMalloc(0x10);
    *v5 = &unk_1F110C528;
    *(v5 + 8) = v2;
    v6 = v5;
    (*(*v4 + 48))(v4, &v6);
    result = v6;
    v6 = 0;
    if (result)
    {
      return (*(*result + 8))(result);
    }
  }

  return result;
}

void sub_19D5823FC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (a10)
  {
    (*(*a10 + 8))(a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t WebKit::managedDomainQueueSingleton(WebKit *this)
{
  {
    return WebKit::managedDomainQueueSingleton(void)::queue;
  }

  WTF::WorkQueue::create();
  result = v2;
  WebKit::managedDomainQueueSingleton(void)::queue = v2;
  return result;
}

uint64_t WebKit::WebsiteDataStore::resolveDirectoriesAsynchronously(WebKit::WebsiteDataStore *this)
{
  if (*(this + 34) == 1)
  {
    result = 515;
    __break(0xC471u);
  }

  else
  {
    v34 = v1;
    v35 = v2;
    *(this + 34) = 1;
    WTF::WorkQueue::create();
    v4 = v33;
    CFRetain(*(this + 1));
    WTF::String::isolatedCopy();
    WTF::String::isolatedCopy();
    WTF::String::isolatedCopy();
    WTF::String::isolatedCopy();
    WTF::String::isolatedCopy();
    WTF::String::isolatedCopy();
    WTF::String::isolatedCopy();
    WTF::String::isolatedCopy();
    WTF::String::isolatedCopy();
    WTF::String::isolatedCopy();
    WTF::String::isolatedCopy();
    WTF::String::isolatedCopy();
    WTF::String::isolatedCopy();
    WTF::String::isolatedCopy();
    WTF::String::isolatedCopy();
    WTF::String::isolatedCopy();
    WTF::String::isolatedCopy();
    WTF::String::isolatedCopy();
    WTF::String::isolatedCopy();
    WTF::String::isolatedCopy();
    WTF::String::isolatedCopy();
    v31 = *(*(this + 28) + 32) != 0;
    v5 = WTF::fastMalloc(0xC8);
    *v5 = &unk_1F11213F0;
    *(v5 + 8) = this;
    *(v5 + 16) = this;
    v6 = *(&v20 + 1);
    v20 = 0u;
    *(v5 + 24) = v6;
    *(v5 + 32) = v21;
    v7 = *(&v21 + 1);
    v21 = 0u;
    *(v5 + 40) = v7;
    *(v5 + 48) = v22;
    v8 = *(&v22 + 1);
    v22 = 0u;
    *(v5 + 56) = v8;
    *(v5 + 64) = v23;
    v9 = *(&v23 + 1);
    v23 = 0u;
    *(v5 + 72) = v9;
    *(v5 + 80) = v24;
    v10 = *(&v24 + 1);
    v24 = 0u;
    *(v5 + 88) = v10;
    *(v5 + 96) = v25;
    v11 = *(&v25 + 1);
    v25 = 0u;
    *(v5 + 104) = v11;
    *(v5 + 112) = v26;
    v12 = *(&v26 + 1);
    v26 = 0u;
    *(v5 + 120) = v12;
    *(v5 + 128) = v27;
    v13 = *(&v27 + 1);
    v27 = 0u;
    *(v5 + 136) = v13;
    *(v5 + 144) = v28;
    v14 = *(&v28 + 1);
    v28 = 0u;
    *(v5 + 152) = v14;
    *(v5 + 160) = v29;
    v15 = *(&v29 + 1);
    v29 = 0u;
    *(v5 + 168) = v15;
    *(v5 + 176) = v30;
    v16 = *(&v30 + 1);
    v30 = 0u;
    *(v5 + 184) = v16;
    *(v5 + 192) = v31;
    v32 = v5;
    (*(*v4 + 48))(v4, &v32);
    v18 = v32;
    v32 = 0;
    if (v18)
    {
      (*(*v18 + 8))(v18);
    }

    WebKit::WebsiteDataStoreConfiguration::Directories::~Directories((&v20 + 8), v17);
    if (v20)
    {
      CFRelease(*(v20 + 8));
    }

    result = v33;
    v33 = 0;
    if (result)
    {
      return (*(*result + 40))(result);
    }
  }

  return result;
}

uint64_t WTF::Detail::CallableWrapper<WebKit::determineTrackingPreventionState(void)::$_0,void>::call(uint64_t a1, const String *a2)
{
  v2 = *(a1 + 8);
  isFullWebBrowserOrRunningTest = WebKit::isFullWebBrowserOrRunningTest((a1 + 16), a2);
  if ((v2 & 1) == 0 && !isFullWebBrowserOrRunningTest)
  {
    goto LABEL_8;
  }

  if ((isFullWebBrowserOrRunningTest & 1) == 0)
  {
    if ((byte_1ED641DD3 & 1) == 0)
    {
      isFullWebBrowserOrRunningTest = [objc_msgSend(MEMORY[0x1E696AAE8] "mainBundle")];
      byte_1ED641DD2 = isFullWebBrowserOrRunningTest != 0;
      byte_1ED641DD3 = 1;
    }

    v4 = atomic_load(&byte_1ED641DD2);
    if ((v4 & 1) == 0)
    {
      goto LABEL_9;
    }
  }

  TCC_kTCCServiceWebKitIntelligentTrackingPrevention = WebKit::get_TCC_kTCCServiceWebKitIntelligentTrackingPrevention(isFullWebBrowserOrRunningTest);
  isFullWebBrowserOrRunningTest = WebKit::softLinkTCCTCCAccessPreflight(TCC_kTCCServiceWebKitIntelligentTrackingPrevention, 0, v6);
  if (isFullWebBrowserOrRunningTest == 1)
  {
LABEL_8:
    v7 = 2;
  }

  else
  {
LABEL_9:
    v7 = 1;
  }

  atomic_store(v7, WebKit::currentTrackingPreventionState);
  WTF::RunLoop::mainSingleton(isFullWebBrowserOrRunningTest);
  v8 = WTF::fastMalloc(0x10);
  *v8 = &unk_1F10F18A8;
  v10 = v8;
  WTF::RunLoop::dispatch();
  result = v10;
  if (v10)
  {
    return (*(*v10 + 8))(v10);
  }

  return result;
}

void sub_19D582950(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (a10)
  {
    (*(*a10 + 8))(a10);
  }

  _Unwind_Resume(exception_object);
}

void WebKit::WebsiteDataStoreConfiguration::Directories::~Directories(WebKit::WebsiteDataStoreConfiguration::Directories *this, WTF::StringImpl *a2)
{
  v3 = *(this + 20);
  *(this + 20) = 0;
  if (v3 && atomic_fetch_add_explicit(v3, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v3, a2);
  }

  v4 = *(this + 19);
  *(this + 19) = 0;
  if (v4 && atomic_fetch_add_explicit(v4, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v4, a2);
  }

  v5 = *(this + 18);
  *(this + 18) = 0;
  if (v5 && atomic_fetch_add_explicit(v5, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v5, a2);
  }

  v6 = *(this + 17);
  *(this + 17) = 0;
  if (v6 && atomic_fetch_add_explicit(v6, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v6, a2);
  }

  v7 = *(this + 16);
  *(this + 16) = 0;
  if (v7 && atomic_fetch_add_explicit(v7, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v7, a2);
  }

  v8 = *(this + 15);
  *(this + 15) = 0;
  if (v8 && atomic_fetch_add_explicit(v8, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v8, a2);
  }

  v9 = *(this + 14);
  *(this + 14) = 0;
  if (v9 && atomic_fetch_add_explicit(v9, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v9, a2);
  }

  v10 = *(this + 13);
  *(this + 13) = 0;
  if (v10 && atomic_fetch_add_explicit(v10, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v10, a2);
  }

  v11 = *(this + 12);
  *(this + 12) = 0;
  if (v11 && atomic_fetch_add_explicit(v11, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v11, a2);
  }

  v12 = *(this + 11);
  *(this + 11) = 0;
  if (v12 && atomic_fetch_add_explicit(v12, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v12, a2);
  }

  v13 = *(this + 10);
  *(this + 10) = 0;
  if (v13 && atomic_fetch_add_explicit(v13, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v13, a2);
  }

  v14 = *(this + 9);
  *(this + 9) = 0;
  if (v14 && atomic_fetch_add_explicit(v14, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v14, a2);
  }

  v15 = *(this + 8);
  *(this + 8) = 0;
  if (v15 && atomic_fetch_add_explicit(v15, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v15, a2);
  }

  v16 = *(this + 7);
  *(this + 7) = 0;
  if (v16 && atomic_fetch_add_explicit(v16, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v16, a2);
  }

  v17 = *(this + 6);
  *(this + 6) = 0;
  if (v17 && atomic_fetch_add_explicit(v17, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v17, a2);
  }

  v18 = *(this + 5);
  *(this + 5) = 0;
  if (v18 && atomic_fetch_add_explicit(v18, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v18, a2);
  }

  v19 = *(this + 4);
  *(this + 4) = 0;
  if (v19 && atomic_fetch_add_explicit(v19, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v19, a2);
  }

  v20 = *(this + 3);
  *(this + 3) = 0;
  if (v20 && atomic_fetch_add_explicit(v20, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v20, a2);
  }

  v21 = *(this + 2);
  *(this + 2) = 0;
  if (v21 && atomic_fetch_add_explicit(v21, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v21, a2);
  }

  v22 = *(this + 1);
  *(this + 1) = 0;
  if (v22 && atomic_fetch_add_explicit(v22, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v22, a2);
  }

  v23 = *this;
  *this = 0;
  if (v23)
  {
    if (atomic_fetch_add_explicit(v23, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v23, a2);
    }
  }
}

uint64_t WebKit::get_TCC_kTCCServiceWebKitIntelligentTrackingPrevention(WebKit *this)
{
  if (qword_1ED641C28 != -1)
  {
    dispatch_once(&qword_1ED641C28, &__block_literal_global_10_1);
  }

  return qword_1ED641C20;
}

uint64_t ___ZN6WebKit54get_TCC_kTCCServiceWebKitIntelligentTrackingPreventionEv_block_invoke(WebKit *a1)
{
  v1 = WebKit::TCCLibrary(a1);
  result = dlsym(v1, "kTCCServiceWebKitIntelligentTrackingPrevention");
  if (result)
  {
    qword_1ED641C20 = *result;
  }

  else
  {
    result = 38;
    __break(0xC471u);
  }

  return result;
}

void WebKit::WebsiteDataStoreConfiguration::~WebsiteDataStoreConfiguration(WebKit::WebsiteDataStoreConfiguration *this, void *a2)
{
  *this = &unk_1F1121198;
  v3 = *(this + 66);
  if (v3)
  {
    *(this + 66) = 0;
    *(this + 134) = 0;
    WTF::fastFree(v3, a2);
  }

  v4 = *(this + 65);
  *(this + 65) = 0;
  if (v4)
  {
    CFRelease(v4);
  }

  v5 = *(this + 64);
  *(this + 64) = 0;
  if (v5 && atomic_fetch_add_explicit(v5, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v5, a2);
  }

  v6 = *(this + 63);
  *(this + 63) = 0;
  if (v6 && atomic_fetch_add_explicit(v6, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v6, a2);
  }

  v7 = *(this + 62);
  *(this + 62) = 0;
  if (v7 && atomic_fetch_add_explicit(v7, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v7, a2);
  }

  v8 = *(this + 56);
  *(this + 56) = 0;
  if (v8 && atomic_fetch_add_explicit(v8, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v8, a2);
  }

  v9 = *(this + 48);
  *(this + 48) = 0;
  if (v9 && atomic_fetch_add_explicit(v9, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v9, a2);
  }

  v10 = *(this + 43);
  *(this + 43) = 0;
  if (v10 && atomic_fetch_add_explicit(v10, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v10, a2);
  }

  v11 = *(this + 42);
  *(this + 42) = 0;
  if (v11 && atomic_fetch_add_explicit(v11, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v11, a2);
  }

  v12 = *(this + 41);
  *(this + 41) = 0;
  if (v12 && atomic_fetch_add_explicit(v12, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v12, a2);
  }

  v13 = *(this + 40);
  *(this + 40) = 0;
  if (v13 && atomic_fetch_add_explicit(v13, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v13, a2);
  }

  v14 = *(this + 39);
  *(this + 39) = 0;
  if (v14 && atomic_fetch_add_explicit(v14, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v14, a2);
  }

  WebKit::WebsiteDataStoreConfiguration::Directories::~Directories((this + 64), a2);
  v16 = *(this + 7);
  *(this + 7) = 0;
  if (v16 && atomic_fetch_add_explicit(v16, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v16, v15);
  }

  v17 = *(this + 6);
  *(this + 6) = 0;
  if (v17)
  {
    if (atomic_fetch_add_explicit(v17, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v17, v15);
    }
  }
}

{
  WebKit::WebsiteDataStoreConfiguration::~WebsiteDataStoreConfiguration(this, a2);

  JUMPOUT(0x19EB14CF0);
}

WTF::StringImpl *WTF::Detail::CallableWrapper<WebKit::WebsiteDataStore::resolveDirectoriesAsynchronously(void)::$_0,void>::call(WTF::FileSystemImpl *this, WTF::StringImpl *a2)
{
  v5 = this;
  v282 = *MEMORY[0x1E69E9840];
  v7 = (this + 120);
  v6 = *(this + 15);
  v8 = *(this + 1);
  if (v6)
  {
    v9 = *(v6 + 4);
    if (v9)
    {
      WebKit::resolveAndCreateReadWriteDirectoryForSandboxExtension(*(v6 + 8), v9 | (((*(v6 + 16) >> 2) & 1) << 32), v263);
      v10 = v263[0];
      v263[0] = 0;
      v11 = *v7;
      *v7 = v10;
      if (v11)
      {
        if (atomic_fetch_add_explicit(v11, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v11, a2);
        }

        v12 = v263[0];
        v263[0] = 0;
        if (v12 && atomic_fetch_add_explicit(v12, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v12, a2);
        }
      }
    }
  }

  v13 = *(v5 + 128);
  v252 = v5;
  v253 = (v5 + 128);
  if (v13 && *(v13 + 4))
  {
    WTF::FileSystemImpl::pathByAppendingComponent();
    WTF::FileSystemImpl::pathByAppendingComponent();
    Salt = WTF::FileSystemImpl::readOrMakeSalt(&v259, v14);
    if (v16)
    {
      v17 = Salt;
    }

    else
    {
      v17 = 0;
    }

    v248 = v17;
    WTF::FileSystemImpl::listDirectory(&v261, v253, v16);
    if (HIDWORD(v262))
    {
      v19 = 8 * HIDWORD(v262);
      v20 = v261;
      do
      {
        v21 = *v20;
        if (*v20)
        {
          atomic_fetch_add_explicit(v21, 2u, memory_order_relaxed);
          if (MEMORY[0x19EB01EF0](v21, "v1", 2))
          {
            goto LABEL_18;
          }

          v22 = *(v21 + 1);
          v23 = ((*(v21 + 4) >> 2) & 1) << 32;
        }

        else
        {
          if (MEMORY[0x19EB01EF0](0, "v1", 2))
          {
            goto LABEL_88;
          }

          v22 = 0;
          v23 = 0x100000000;
        }

        v4 = v22 | v4 & 0xFFFFFF0000000000 | v23;
        WebCore::SecurityOriginData::fromDatabaseIdentifier();
        if (v281 != 1)
        {
LABEL_87:
          if (v21)
          {
            goto LABEL_18;
          }

          goto LABEL_88;
        }

        v24 = *v253;
        if (*v253)
        {
          v25 = *(v24 + 16);
          v24 = *(v24 + 4);
          v26 = ((v25 >> 2) & 1) << 32;
          if (v21)
          {
            goto LABEL_26;
          }
        }

        else
        {
          v26 = 0x100000000;
          if (v21)
          {
LABEL_26:
            v27 = *(v21 + 1);
            v28 = ((*(v21 + 4) >> 2) & 1) << 32;
            goto LABEL_27;
          }
        }

        v27 = 0;
        v28 = 0x100000000;
LABEL_27:
        v5 = v24 | v5 & 0xFFFFFF0000000000 | v26;
        v3 = v27 | v3 & 0xFFFFFF0000000000 | v28;
        WTF::FileSystemImpl::pathByAppendingComponent();
        WebKit::computeMediaKeyFile(&v257, v258);
        if ((WTF::FileSystemImpl::fileExists(&v257, v29) & 1) == 0)
        {
          WTF::FileSystemImpl::deleteEmptyDirectory(&v258, v30);
          goto LABEL_74;
        }

        if ((v281 & 1) == 0)
        {
          goto LABEL_360;
        }

        WebCore::StorageUtilities::encodeSecurityOriginForFileName();
        v31 = v260;
        if (v260)
        {
          v31 = *(v260 + 1);
          v32 = ((*(v260 + 4) >> 2) & 1) << 32;
        }

        else
        {
          v32 = 0x100000000;
        }

        v33 = v256;
        if (v256)
        {
          v33 = *(v256 + 1);
          v34 = ((*(v256 + 4) >> 2) & 1) << 32;
        }

        else
        {
          v34 = 0x100000000;
        }

        v251 = v31 | v251 & 0xFFFFFF0000000000 | v32;
        v2 = v33 | v2 & 0xFFFFFF0000000000 | v34;
        WTF::FileSystemImpl::pathByAppendingComponent();
        if (WTF::FileSystemImpl::moveFile(&v258, &v255, v35))
        {
          v36 = v255;
          if (v255)
          {
            v36 = *(v255 + 1);
            v37 = ((*(v255 + 4) >> 2) & 1) << 32;
          }

          else
          {
            v37 = 0x100000000;
          }

          v249 = v36 | v249 & 0xFFFFFF0000000000 | v37;
          v246 = v246 & 0xFFFFFF0000000000 | 0x100000006;
          WTF::FileSystemImpl::pathByAppendingComponent();
          if ((v281 & 1) == 0)
          {
            goto LABEL_360;
          }

          LOBYTE(v263[0]) = 0;
          LOBYTE(v263[3]) = -1;
          LODWORD(v38) = v280;
          if (v280)
          {
            if (v280 != 255)
            {
              *v263 = v278;
              LOBYTE(v263[3]) = v280;
              goto LABEL_43;
            }

            LOBYTE(v263[4]) = 0;
LABEL_49:
            LOBYTE(v264) = v38;
          }

          else
          {
            v39 = v278;
            if (v278)
            {
              atomic_fetch_add_explicit(v278, 2u, memory_order_relaxed);
            }

            v263[0] = v39;
            v38 = *(&v278 + 1);
            if (*(&v278 + 1))
            {
              atomic_fetch_add_explicit(*(&v278 + 1), 2u, memory_order_relaxed);
            }

            v263[1] = v38;
            LODWORD(v263[2]) = v279;
            LODWORD(v38) = v280;
            LOBYTE(v263[3]) = v280;
            if ((v281 & 1) == 0)
            {
LABEL_360:
              __break(1u);
              goto LABEL_361;
            }

LABEL_43:
            LOBYTE(v263[4]) = 0;
            LOBYTE(v264) = -1;
            if (!v38)
            {
              v40 = v278;
              if (v278)
              {
                atomic_fetch_add_explicit(v278, 2u, memory_order_relaxed);
              }

              v263[4] = v40;
              v38 = *(&v278 + 1);
              if (*(&v278 + 1))
              {
                atomic_fetch_add_explicit(*(&v278 + 1), 2u, memory_order_relaxed);
              }

              v263[5] = v38;
              LODWORD(v263[6]) = v279;
              LOBYTE(v38) = v280;
              goto LABEL_49;
            }

            if (v38 != 255)
            {
              *&v263[4] = v278;
              goto LABEL_49;
            }
          }

          WebCore::StorageUtilities::writeOriginToFile();
          if (!v264)
          {
            v41 = v263[5];
            v263[5] = 0;
            if (v41 && atomic_fetch_add_explicit(v41, 0xFFFFFFFE, memory_order_relaxed) == 2)
            {
              WTF::StringImpl::destroy(v41, v18);
            }

            v42 = v263[4];
            v263[4] = 0;
            if (v42 && atomic_fetch_add_explicit(v42, 0xFFFFFFFE, memory_order_relaxed) == 2)
            {
              WTF::StringImpl::destroy(v42, v18);
            }
          }

          LOBYTE(v264) = -1;
          if (!LOBYTE(v263[3]))
          {
            v43 = v263[1];
            v263[1] = 0;
            if (v43 && atomic_fetch_add_explicit(v43, 0xFFFFFFFE, memory_order_relaxed) == 2)
            {
              WTF::StringImpl::destroy(v43, v18);
            }

            v44 = v263[0];
            v263[0] = 0;
            if (v44 && atomic_fetch_add_explicit(v44, 0xFFFFFFFE, memory_order_relaxed) == 2)
            {
              WTF::StringImpl::destroy(v44, v18);
            }
          }

          v45 = v254;
          v254 = 0;
          if (v45 && atomic_fetch_add_explicit(v45, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v45, v18);
          }
        }

        v46 = v255;
        v255 = 0;
        if (v46 && atomic_fetch_add_explicit(v46, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v46, v18);
        }

        v47 = v256;
        v256 = 0;
        if (v47 && atomic_fetch_add_explicit(v47, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v47, v18);
        }

LABEL_74:
        v48 = v257;
        v257 = 0;
        if (v48 && atomic_fetch_add_explicit(v48, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v48, v18);
        }

        v49 = v258;
        v258 = 0;
        if (v49 && atomic_fetch_add_explicit(v49, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v49, v18);
        }

        if ((v281 & 1) == 0 || v280)
        {
          goto LABEL_87;
        }

        v50 = *(&v278 + 1);
        *(&v278 + 1) = 0;
        if (v50 && atomic_fetch_add_explicit(v50, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v50, v18);
        }

        v51 = v278;
        *&v278 = 0;
        if (!v51 || atomic_fetch_add_explicit(v51, 0xFFFFFFFE, memory_order_relaxed) != 2)
        {
          goto LABEL_87;
        }

        WTF::StringImpl::destroy(v51, v18);
        if (v21)
        {
LABEL_18:
          if (atomic_fetch_add_explicit(v21, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v21, v18);
          }
        }

LABEL_88:
        v20 = (v20 + 8);
        v19 -= 8;
      }

      while (v19);
    }

    v52 = v260;
    if (v260)
    {
      atomic_fetch_add_explicit(v260, 2u, memory_order_relaxed);
    }

    WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v261, v18);
    v54 = v259;
    v259 = 0;
    if (v54 && atomic_fetch_add_explicit(v54, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v54, v53);
    }

    v55 = v260;
    v260 = 0;
    v5 = v252;
    if (v55 && atomic_fetch_add_explicit(v55, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v55, v53);
    }

    if (v52)
    {
      v56 = *(v52 + 1);
      v57 = *(v52 + 1) | (((*(v52 + 4) >> 2) & 1) << 32);
    }

    else
    {
      v56 = 0;
      v57 = 0x100000000;
    }

    WebKit::resolveAndCreateReadWriteDirectoryForSandboxExtension(v56, v57, v263);
    v58 = v263[0];
    v263[0] = 0;
    v59 = *v253;
    *v253 = v58;
    if (!v59)
    {
      goto LABEL_118;
    }

    if (atomic_fetch_add_explicit(v59, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v59, a2);
    }

    v60 = v263[0];
    v263[0] = 0;
    if (v60 && atomic_fetch_add_explicit(v60, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v60, a2);
      if (!v52)
      {
        goto LABEL_122;
      }
    }

    else
    {
LABEL_118:
      if (!v52)
      {
        goto LABEL_122;
      }
    }

    if (atomic_fetch_add_explicit(v52, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v52, a2);
    }
  }

LABEL_122:
  v62 = (v5 + 96);
  v61 = *(v5 + 96);
  if (v61)
  {
    v63 = *(v61 + 4);
    if (v63)
    {
      WebKit::resolveAndCreateReadWriteDirectoryForSandboxExtension(*(v61 + 8), v63 | (((*(v61 + 16) >> 2) & 1) << 32), v263);
      v64 = v263[0];
      v263[0] = 0;
      v65 = *v62;
      *v62 = v64;
      if (v65)
      {
        if (atomic_fetch_add_explicit(v65, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v65, a2);
        }

        v66 = v263[0];
        v263[0] = 0;
        if (v66 && atomic_fetch_add_explicit(v66, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v66, a2);
        }
      }
    }
  }

  v68 = (v5 + 40);
  v67 = *(v5 + 40);
  if (v67)
  {
    v69 = *(v67 + 4);
    if (v69)
    {
      WebKit::resolveAndCreateReadWriteDirectoryForSandboxExtension(*(v67 + 8), v69 | (((*(v67 + 16) >> 2) & 1) << 32), v263);
      v70 = v263[0];
      v263[0] = 0;
      v71 = *v68;
      *v68 = v70;
      if (v71)
      {
        if (atomic_fetch_add_explicit(v71, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v71, a2);
        }

        v72 = v263[0];
        v263[0] = 0;
        if (v72 && atomic_fetch_add_explicit(v72, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v72, a2);
        }
      }
    }
  }

  v74 = (v5 + 112);
  v73 = *(v5 + 112);
  if (v73)
  {
    v75 = *(v73 + 4);
    if (v75)
    {
      WebKit::resolveAndCreateReadWriteDirectoryForSandboxExtension(*(v73 + 8), v75 | (((*(v73 + 16) >> 2) & 1) << 32), v263);
      v76 = v263[0];
      v263[0] = 0;
      v77 = *v74;
      *v74 = v76;
      if (v77)
      {
        if (atomic_fetch_add_explicit(v77, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v77, a2);
        }

        v78 = v263[0];
        v263[0] = 0;
        if (v78 && atomic_fetch_add_explicit(v78, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v78, a2);
        }
      }
    }
  }

  v80 = (v5 + 64);
  v79 = *(v5 + 64);
  if (v79)
  {
    v81 = *(v79 + 4);
    if (v81)
    {
      WebKit::resolveAndCreateReadWriteDirectoryForSandboxExtension(*(v79 + 8), v81 | (((*(v79 + 16) >> 2) & 1) << 32), v263);
      v82 = v263[0];
      v263[0] = 0;
      v83 = *v80;
      *v80 = v82;
      if (v83)
      {
        if (atomic_fetch_add_explicit(v83, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v83, a2);
        }

        v84 = v263[0];
        v263[0] = 0;
        if (v84 && atomic_fetch_add_explicit(v84, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v84, a2);
        }
      }
    }
  }

  v86 = (v5 + 72);
  v85 = *(v5 + 72);
  if (v85)
  {
    v87 = *(v85 + 4);
    if (v87)
    {
      WebKit::resolveAndCreateReadWriteDirectoryForSandboxExtension(*(v85 + 8), v87 | (((*(v85 + 16) >> 2) & 1) << 32), v263);
      v88 = v263[0];
      v263[0] = 0;
      v89 = *v86;
      *v86 = v88;
      if (v89)
      {
        if (atomic_fetch_add_explicit(v89, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v89, a2);
        }

        v90 = v263[0];
        v263[0] = 0;
        if (v90 && atomic_fetch_add_explicit(v90, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v90, a2);
        }
      }
    }
  }

  v91 = *(v5 + 136);
  v250 = (v5 + 136);
  if (v91)
  {
    v92 = *(v91 + 4);
    if (v92)
    {
      WebKit::resolveAndCreateReadWriteDirectoryForSandboxExtension(*(v91 + 8), v92 | (((*(v91 + 16) >> 2) & 1) << 32), v263);
      v93 = v263[0];
      v263[0] = 0;
      v94 = *v250;
      *v250 = v93;
      if (v94)
      {
        if (atomic_fetch_add_explicit(v94, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v94, a2);
        }

        v95 = v263[0];
        v263[0] = 0;
        if (v95 && atomic_fetch_add_explicit(v95, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v95, a2);
        }
      }
    }
  }

  v96 = *(v5 + 144);
  v247 = (v5 + 144);
  if (v96)
  {
    v97 = *(v96 + 4);
    if (v97)
    {
      WebKit::resolveAndCreateReadWriteDirectoryForSandboxExtension(*(v96 + 8), v97 | (((*(v96 + 16) >> 2) & 1) << 32), v263);
      v98 = v263[0];
      v263[0] = 0;
      v99 = *v247;
      *v247 = v98;
      if (v99)
      {
        if (atomic_fetch_add_explicit(v99, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v99, a2);
        }

        v100 = v263[0];
        v263[0] = 0;
        if (v100 && atomic_fetch_add_explicit(v100, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v100, a2);
        }
      }
    }
  }

  v101 = *(v5 + 160);
  v245 = (v5 + 160);
  if (v101)
  {
    v102 = *(v101 + 4);
    if (v102)
    {
      WebKit::resolveAndCreateReadWriteDirectoryForSandboxExtension(*(v101 + 8), v102 | (((*(v101 + 16) >> 2) & 1) << 32), v263);
      v103 = v263[0];
      v263[0] = 0;
      v104 = *v245;
      *v245 = v103;
      if (v104)
      {
        if (atomic_fetch_add_explicit(v104, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v104, a2);
        }

        v105 = v263[0];
        v263[0] = 0;
        if (v105 && atomic_fetch_add_explicit(v105, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v105, a2);
        }
      }
    }
  }

  v106 = *(v5 + 104);
  v244 = (v5 + 104);
  if (v106)
  {
    v107 = *(v106 + 4);
    if (v107)
    {
      WebKit::resolveAndCreateReadWriteDirectoryForSandboxExtension(*(v106 + 8), v107 | (((*(v106 + 16) >> 2) & 1) << 32), v263);
      v108 = v263[0];
      v263[0] = 0;
      v109 = *v244;
      *v244 = v108;
      if (v109)
      {
        if (atomic_fetch_add_explicit(v109, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v109, a2);
        }

        v110 = v263[0];
        v263[0] = 0;
        if (v110 && atomic_fetch_add_explicit(v110, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v110, a2);
        }
      }
    }
  }

  v111 = *(v5 + 48);
  v243 = (v5 + 48);
  if (v111)
  {
    v112 = *(v111 + 4);
    if (v112)
    {
      WebKit::resolveAndCreateReadWriteDirectoryForSandboxExtension(*(v111 + 8), v112 | (((*(v111 + 16) >> 2) & 1) << 32), v263);
      v113 = v263[0];
      v263[0] = 0;
      v114 = *v243;
      *v243 = v113;
      if (v114)
      {
        if (atomic_fetch_add_explicit(v114, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v114, a2);
        }

        v115 = v263[0];
        v263[0] = 0;
        if (v115 && atomic_fetch_add_explicit(v115, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v115, a2);
        }
      }
    }
  }

  v116 = *(v5 + 88);
  v242 = (v5 + 88);
  if (v116)
  {
    v117 = *(v116 + 4);
    if (v117)
    {
      WebKit::resolveAndCreateReadWriteDirectoryForSandboxExtension(*(v116 + 8), v117 | (((*(v116 + 16) >> 2) & 1) << 32), v263);
      v118 = v263[0];
      v263[0] = 0;
      v119 = *v242;
      *v242 = v118;
      if (v119)
      {
        if (atomic_fetch_add_explicit(v119, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v119, a2);
        }

        v120 = v263[0];
        v263[0] = 0;
        if (v120 && atomic_fetch_add_explicit(v120, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v120, a2);
        }
      }
    }
  }

  v122 = (v5 + 80);
  v121 = *(v5 + 80);
  if (v121)
  {
    v123 = *(v121 + 4);
    if (v123)
    {
      WebKit::resolveAndCreateReadWriteDirectoryForSandboxExtension(*(v121 + 8), v123 | (((*(v121 + 16) >> 2) & 1) << 32), v263);
      v124 = v263[0];
      v263[0] = 0;
      v125 = *v122;
      *v122 = v124;
      if (v125)
      {
        if (atomic_fetch_add_explicit(v125, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v125, a2);
        }

        v126 = v263[0];
        v263[0] = 0;
        if (v126 && atomic_fetch_add_explicit(v126, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v126, a2);
        }
      }
    }
  }

  v127 = *(v5 + 152);
  v241 = (v5 + 152);
  if (v127)
  {
    v128 = *(v127 + 4);
    if (v128)
    {
      WebKit::resolveAndCreateReadWriteDirectoryForSandboxExtension(*(v127 + 8), v128 | (((*(v127 + 16) >> 2) & 1) << 32), v263);
      v129 = v263[0];
      v263[0] = 0;
      v130 = *v241;
      *v241 = v129;
      if (v130)
      {
        if (atomic_fetch_add_explicit(v130, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v130, a2);
        }

        v131 = v263[0];
        v263[0] = 0;
        if (v131 && atomic_fetch_add_explicit(v131, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v131, a2);
        }
      }
    }
  }

  v132 = *v122;
  if (*v122)
  {
    v133 = *(v132 + 1);
    if (v133)
    {
      WebKit::resolveAndCreateReadWriteDirectoryForSandboxExtension(*(v132 + 1), v133 | (((*(v132 + 4) >> 2) & 1) << 32), v263);
      v134 = v263[0];
      v263[0] = 0;
      v135 = *v122;
      *v122 = v134;
      if (v135)
      {
        if (atomic_fetch_add_explicit(v135, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v135, a2);
        }

        v136 = v263[0];
        v263[0] = 0;
        if (v136 && atomic_fetch_add_explicit(v136, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v136, a2);
        }
      }
    }
  }

  v138 = (v5 + 176);
  v137 = *(v5 + 176);
  if (v137)
  {
    v139 = *(v137 + 4);
    if (v139)
    {
      WebKit::resolveAndCreateReadWriteDirectoryForSandboxExtension(*(v137 + 8), v139 | (((*(v137 + 16) >> 2) & 1) << 32), v263);
      v140 = v263[0];
      v263[0] = 0;
      v141 = *v138;
      *v138 = v140;
      if (v141)
      {
        if (atomic_fetch_add_explicit(v141, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v141, a2);
        }

        v142 = v263[0];
        v263[0] = 0;
        if (v142 && atomic_fetch_add_explicit(v142, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v142, a2);
        }
      }
    }
  }

  v144 = (v5 + 56);
  v143 = *(v5 + 56);
  if (v143 && *(v143 + 4))
  {
    WTF::FileSystemImpl::parentPath(&v278, (v5 + 56), a2);
    if (v278)
    {
      v145 = *(v278 + 8);
      v146 = *(v278 + 4) | (((*(v278 + 16) >> 2) & 1) << 32);
    }

    else
    {
      v145 = 0;
      v146 = 0x100000000;
    }

    WebKit::resolveAndCreateReadWriteDirectoryForSandboxExtension(v145, v146, v263);
    v148 = v278;
    *&v278 = 0;
    if (v148 && atomic_fetch_add_explicit(v148, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v148, v147);
    }

    WTF::FileSystemImpl::pathFileName(&v261, (v5 + 56), v147);
    WTF::FileSystemImpl::pathByAppendingComponent();
    v150 = v278;
    *&v278 = 0;
    v151 = *v144;
    *v144 = v150;
    if (v151)
    {
      if (atomic_fetch_add_explicit(v151, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v151, v149);
      }

      v152 = v278;
      *&v278 = 0;
      if (v152 && atomic_fetch_add_explicit(v152, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v152, v149);
      }
    }

    v153 = v261;
    v261 = 0;
    if (v153 && atomic_fetch_add_explicit(v153, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v153, v149);
    }

    v154 = v263[0];
    v263[0] = 0;
    if (v154 && atomic_fetch_add_explicit(v154, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v154, v149);
    }
  }

  v156 = (v5 + 184);
  v155 = *(v5 + 184);
  if (v155)
  {
    v157 = *(v155 + 4);
    if (v157)
    {
      WebKit::resolveAndCreateReadWriteDirectoryForSandboxExtension(*(v155 + 8), v157 | (((*(v155 + 16) >> 2) & 1) << 32), v263);
      v159 = v263[0];
      v263[0] = 0;
      v160 = *v156;
      *v156 = v159;
      if (v160)
      {
        if (atomic_fetch_add_explicit(v160, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v160, v158);
        }

        v161 = v263[0];
        v263[0] = 0;
        if (v161 && atomic_fetch_add_explicit(v161, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v161, v158);
        }
      }
    }
  }

  if (*(v5 + 192) == 1)
  {
    WTF::String::isolatedCopy();
    WTF::String::isolatedCopy();
    WTF::String::isolatedCopy();
    WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::Vector(&v261, v263, 3uLL);
    v162 = v261;
    v163 = v262;
    v261 = 0;
    v262 = 0;
    *&v278 = v162;
    v240 = v163;
    DWORD2(v278) = v163;
    WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v261, v164);
    for (i = 2; i != -1; --i)
    {
      v167 = v263[i];
      v263[i] = 0;
      if (v167 && atomic_fetch_add_explicit(v167, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v167, v165);
      }
    }
  }

  else
  {
    v162 = 0;
    v240 = 0;
  }

  v168 = *(v8 + 304);
  (*(*v168 + 32))(v168);
  WTF::String::isolatedCopy();
  WTF::String::isolatedCopy();
  WTF::String::isolatedCopy();
  *&v169 = 0;
  v278 = v169;
  v263[3] = v162;
  v263[4] = v240;
  v170 = WTF::fastMalloc(0x30);
  *v170 = &unk_1F1121440;
  *(v170 + 8) = v263[0];
  *(v170 + 16) = v263[1];
  *(v170 + 24) = v263[2];
  v171 = v263[3];
  memset(v263, 0, 32);
  *(v170 + 32) = v171;
  v172 = v263[4];
  v263[4] = 0;
  *(v170 + 40) = v172;
  v261 = v170;
  (*(*v168 + 48))(v168, &v261);
  v174 = v261;
  v261 = 0;
  v21 = v263;
  if (v174)
  {
    (*(*v174 + 8))(v174);
  }

  WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v263[3], v173);
  v176 = v263[2];
  v263[2] = 0;
  if (v176 && atomic_fetch_add_explicit(v176, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v176, v175);
  }

  v177 = v263[1];
  v263[1] = 0;
  v2 = v252;
  if (v177 && atomic_fetch_add_explicit(v177, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v177, v175);
  }

  v178 = v263[0];
  v263[0] = 0;
  if (v178 && atomic_fetch_add_explicit(v178, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v178, v175);
  }

  (*(*v168 + 40))(v168);
  WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v278, v179);
  v180 = 0;
  v4 = v8 + 32;
  atomic_compare_exchange_strong_explicit((v8 + 32), &v180, 1u, memory_order_acquire, memory_order_acquire);
  if (v180)
  {
LABEL_361:
    MEMORY[0x19EB01E30](v4);
  }

  WTF::String::isolatedCopy();
  WTF::String::isolatedCopy();
  WTF::String::isolatedCopy();
  WTF::String::isolatedCopy();
  WTF::String::isolatedCopy();
  WTF::String::isolatedCopy();
  WTF::String::isolatedCopy();
  WTF::String::isolatedCopy();
  WTF::String::isolatedCopy();
  WTF::String::isolatedCopy();
  WTF::String::isolatedCopy();
  WTF::String::isolatedCopy();
  WTF::String::isolatedCopy();
  WTF::String::isolatedCopy();
  WTF::String::isolatedCopy();
  WTF::String::isolatedCopy();
  WTF::String::isolatedCopy();
  WTF::String::isolatedCopy();
  WTF::String::isolatedCopy();
  WTF::String::isolatedCopy();
  WTF::String::isolatedCopy();
  v182 = *(v8 + 208);
  v183 = v263[0];
  v263[0] = 0;
  if (v182 == 1)
  {
    v184 = *(v8 + 40);
    *(v8 + 40) = v183;
    if (v184 && atomic_fetch_add_explicit(v184, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v184, v181);
    }

    v185 = v263[1];
    v263[1] = 0;
    v186 = *(v8 + 48);
    *(v8 + 48) = v185;
    if (v186 && atomic_fetch_add_explicit(v186, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v186, v181);
    }

    v187 = v263[2];
    v263[2] = 0;
    v188 = *(v8 + 56);
    *(v8 + 56) = v187;
    if (v188 && atomic_fetch_add_explicit(v188, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v188, v181);
    }

    v189 = v263[3];
    v263[3] = 0;
    v190 = *(v8 + 64);
    *(v8 + 64) = v189;
    if (v190 && atomic_fetch_add_explicit(v190, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v190, v181);
    }

    v191 = v263[4];
    v263[4] = 0;
    v192 = *(v8 + 72);
    *(v8 + 72) = v191;
    if (v192 && atomic_fetch_add_explicit(v192, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v192, v181);
    }

    v193 = v263[5];
    v263[5] = 0;
    v194 = *(v8 + 80);
    *(v8 + 80) = v193;
    if (v194 && atomic_fetch_add_explicit(v194, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v194, v181);
    }

    v195 = v263[6];
    v263[6] = 0;
    v196 = *(v8 + 88);
    *(v8 + 88) = v195;
    if (v196 && atomic_fetch_add_explicit(v196, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v196, v181);
    }

    v197 = v264;
    v264 = 0;
    v198 = *(v8 + 96);
    *(v8 + 96) = v197;
    if (v198 && atomic_fetch_add_explicit(v198, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v198, v181);
    }

    v199 = v265;
    v265 = 0;
    v200 = *(v8 + 104);
    *(v8 + 104) = v199;
    if (v200 && atomic_fetch_add_explicit(v200, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v200, v181);
    }

    v201 = v266;
    v266 = 0;
    v202 = *(v8 + 112);
    *(v8 + 112) = v201;
    if (v202 && atomic_fetch_add_explicit(v202, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v202, v181);
    }

    v203 = v267;
    v267 = 0;
    v204 = *(v8 + 120);
    *(v8 + 120) = v203;
    if (v204 && atomic_fetch_add_explicit(v204, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v204, v181);
    }

    v205 = v268;
    v268 = 0;
    v206 = *(v8 + 128);
    *(v8 + 128) = v205;
    if (v206 && atomic_fetch_add_explicit(v206, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v206, v181);
    }

    v207 = v269;
    v269 = 0;
    v208 = *(v8 + 136);
    *(v8 + 136) = v207;
    if (v208 && atomic_fetch_add_explicit(v208, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v208, v181);
    }

    v209 = v270;
    v270 = 0;
    v210 = *(v8 + 144);
    *(v8 + 144) = v209;
    if (v210 && atomic_fetch_add_explicit(v210, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v210, v181);
    }

    v211 = v271;
    v271 = 0;
    v212 = *(v8 + 152);
    *(v8 + 152) = v211;
    if (v212 && atomic_fetch_add_explicit(v212, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v212, v181);
    }

    v213 = v272;
    v272 = 0;
    v214 = *(v8 + 160);
    *(v8 + 160) = v213;
    if (v214 && atomic_fetch_add_explicit(v214, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v214, v181);
    }

    v215 = v273;
    v273 = 0;
    v216 = *(v8 + 168);
    *(v8 + 168) = v215;
    if (v216 && atomic_fetch_add_explicit(v216, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v216, v181);
    }

    v217 = v274;
    v274 = 0;
    v218 = *(v8 + 176);
    *(v8 + 176) = v217;
    if (v218 && atomic_fetch_add_explicit(v218, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v218, v181);
    }

    v219 = v275;
    v275 = 0;
    v220 = *(v8 + 184);
    *(v8 + 184) = v219;
    if (v220 && atomic_fetch_add_explicit(v220, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v220, v181);
    }

    v221 = v276;
    v276 = 0;
    v222 = *(v8 + 192);
    *(v8 + 192) = v221;
    if (v222 && atomic_fetch_add_explicit(v222, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v222, v181);
    }

    v223 = v277;
    v277 = 0;
    v224 = *(v8 + 200);
    *(v8 + 200) = v223;
    if (v224 && atomic_fetch_add_explicit(v224, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v224, v181);
    }
  }

  else
  {
    *(v8 + 40) = v183;
    v225 = *&v263[1];
    memset(&v263[1], 0, 32);
    v226 = *&v263[3];
    *(v8 + 48) = v225;
    *(v8 + 64) = v226;
    v227 = *&v263[5];
    *&v263[5] = 0u;
    v228 = *(v21 + 7);
    *(v21 + 7) = 0u;
    *(v8 + 80) = v227;
    *(v8 + 96) = v228;
    v229 = *(v21 + 9);
    *(v21 + 9) = 0u;
    v230 = *(v21 + 11);
    *(v21 + 11) = 0u;
    *(v8 + 112) = v229;
    *(v8 + 128) = v230;
    v231 = *(v21 + 13);
    *(v21 + 13) = 0u;
    v232 = *(v21 + 15);
    *(v21 + 15) = 0u;
    *(v8 + 144) = v231;
    *(v8 + 160) = v232;
    v233 = *(v21 + 17);
    *(v21 + 17) = 0u;
    v234 = *(v21 + 19);
    *(v21 + 19) = 0u;
    *(v8 + 176) = v233;
    *(v8 + 192) = v234;
    *(v8 + 208) = 1;
  }

  WebKit::WebsiteDataStoreConfiguration::Directories::~Directories(v263, v181);
  *(v8 + 216) = v248;
  v235 = WTF::Condition::notifyOne((v8 + 33));
  v236 = 1;
  atomic_compare_exchange_strong_explicit((v8 + 32), &v236, 0, memory_order_release, memory_order_relaxed);
  if (v236 != 1)
  {
    v235 = WTF::Lock::unlockSlow(v4);
  }

  WTF::RunLoop::mainSingleton(v235);
  v237 = *(v2 + 16);
  *(v2 + 16) = 0;
  v238 = WTF::fastMalloc(0x10);
  *v238 = &unk_1F1121418;
  *(v238 + 1) = v237;
  v263[0] = v238;
  WTF::RunLoop::dispatch();
  result = v263[0];
  v263[0] = 0;
  if (result)
  {
    return (*(*result + 8))(result);
  }

  return result;
}

void WebKit::resolveAndCreateReadWriteDirectoryForSandboxExtension(uint64_t a1@<X0>, uint64_t a2@<X1>, WTF::StringImpl **a3@<X8>)
{
  v8[0] = a1;
  v8[1] = a2;
  v7 = 0;
  WTF::StringView::createNSStringWithoutCopying(&v6, v8);
  v4 = [MEMORY[0x1E696AC08] defaultManager];
  if ([v4 createDirectoryAtPath:v6 withIntermediateDirectories:1 attributes:0 error:&v7])
  {
    WebKit::resolvePathForSandboxExtension(a3);
  }

  else
  {
    NSLog(&cfstr_CouldNotCreate.isa, v6, v7);
    *a3 = 0;
  }

  v5 = v6;
  v6 = 0;
  if (v5)
  {
  }
}

void sub_19D5848B8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11)
{
  if (a11)
  {
  }

  _Unwind_Resume(exception_object);
}

void sub_19D584984(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  CFRelease(*(v10 + 8));
  if (a10)
  {
    CFRelease(*(a10 + 8));
  }

  _Unwind_Resume(a1);
}

WebKit::WebPreferences *API::PageConfiguration::Data::LazyInitializedRef<WebKit::WebPreferences,&API::PageConfiguration::Data::createWebPreferences>::get(WebKit::WebPreferences **a1)
{
  result = *a1;
  if (!result)
  {
    API::PageConfiguration::Data::createWebPreferences(&v4);
    result = v4;
    v3 = *a1;
    *a1 = v4;
    if (v3)
    {
      CFRelease(*(v3 + 1));
      return *a1;
    }
  }

  return result;
}

WTF::StringImpl *API::PageConfiguration::Data::createWebPreferences@<X0>(WebKit::WebPreferences **a1@<X8>)
{
  v9 = 0;
  WTF::StringImpl::createWithoutCopyingNonEmpty();
  WTF::StringImpl::createWithoutCopyingNonEmpty();
  v3 = API::Object::newObject(0x88uLL, 91);
  *a1 = WebKit::WebPreferences::WebPreferences(v3, &v9, &v8, &v7);
  v5 = v7;
  v7 = 0;
  if (v5 && atomic_fetch_add_explicit(v5, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v5, v4);
  }

  result = v8;
  v8 = 0;
  if (result)
  {
    if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      return WTF::StringImpl::destroy(result, v4);
    }
  }

  return result;
}

void WTF::Detail::CallableWrapper<WebKit::WebsiteDataStore::initializeManagedDomains(WebKit::WebsiteDataStore::ForceReinitialization)::$_0,void>::call(WTF::IOSApplication *a1)
{
  v2 = atomic_load(WebKit::hasInitializedManagedDomains);
  if ((v2 & 1) != 0 && *(a1 + 8) != 1)
  {
    return;
  }

  isMobileSafari = WTF::IOSApplication::isMobileSafari(a1);
  v4 = MEMORY[0x1E69E2328];
  if (![(*MEMORY[0x1E69E2328])() instancesRespondToSelector:sel_crossSiteTrackingPreventionRelaxedDomains])
  {
    v5 = MEMORY[0x1E695E0F0];
    goto LABEL_7;
  }

  v5 = [objc_msgSend((*v4)() "sharedConnection")];
  if (v5)
  {
LABEL_7:
    v6 = v5;
  }

  v7 = NSSelectorFromString(&cfstr_Crosssitetrack.isa);
  if ([(*v4)() instancesRespondToSelector:v7])
  {
    v8 = [objc_msgSend((*v4)() "sharedConnection")];
    v9 = v8;
    if (v8)
    {
      v10 = v8;
    }
  }

  else
  {
    v9 = MEMORY[0x1E695E0F0];
    v11 = MEMORY[0x1E695E0F0];
  }

  v12 = [objc_msgSend(MEMORY[0x1E696AAE8] "mainBundle")];
  v13 = v12;
  if (v12)
  {
    v12 = v12;
  }

  if (isMobileSafari)
  {
    goto LABEL_21;
  }

  MEMORY[0x19EB02040](&v21, v13);
  if (WebKit::isRunningTest(&v21, v14))
  {
    v16 = 1;
  }

  else
  {
    v16 = [v9 containsObject:v13];
  }

  v12 = v21;
  v21 = 0;
  if (v12 && atomic_fetch_add_explicit(v12, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    v12 = WTF::StringImpl::destroy(v12, v15);
    if (v16)
    {
      goto LABEL_21;
    }
  }

  else if (v16)
  {
LABEL_21:
    WTF::RunLoop::mainSingleton(v12);
    v17 = *(a1 + 8);
    if (v5)
    {
      v18 = v5;
    }

    v19 = WTF::fastMalloc(0x18);
    *v19 = &unk_1F110C550;
    *(v19 + 8) = v17;
    *(v19 + 16) = v5;
    v21 = v19;
    WTF::RunLoop::dispatch();
    v20 = v21;
    v21 = 0;
    if (v20)
    {
      (*(*v20 + 8))(v20);
    }
  }

  if (v13)
  {
  }

  if (v9)
  {
  }

  if (v5)
  {
  }
}

void sub_19D584CC4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, WTF::StringImpl *a10)
{
  if (v12)
  {

    if (!v11)
    {
LABEL_3:
      if (!v10)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }
  }

  else if (!v11)
  {
    goto LABEL_3;
  }

  if (!v10)
  {
LABEL_5:
    _Unwind_Resume(exception_object);
  }

LABEL_4:

  goto LABEL_5;
}

void sub_19D584D78()
{
  if (!v0)
  {
    JUMPOUT(0x19D584D50);
  }

  JUMPOUT(0x19D584D4CLL);
}

void *WebKit::WebPreferences::setShouldIgnoreMetaViewport(atomic_uint **this, const BOOL *a2)
{
  {
    atomic_fetch_add_explicit(WebKit::WebPreferencesKey::shouldIgnoreMetaViewportKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
    WebKit::WebPreferencesKey::shouldIgnoreMetaViewportKey(void)::key = WebKit::WebPreferencesKey::shouldIgnoreMetaViewportKey(void)::$_0::operator() const(void)::impl;
  }

  result = WebKit::WebPreferencesStore::setBoolValueForKey((this + 5), &WebKit::WebPreferencesKey::shouldIgnoreMetaViewportKey(void)::key, *a2);
  if (result)
  {
    {
      atomic_fetch_add_explicit(WebKit::WebPreferencesKey::shouldIgnoreMetaViewportKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
      WebKit::WebPreferencesKey::shouldIgnoreMetaViewportKey(void)::key = WebKit::WebPreferencesKey::shouldIgnoreMetaViewportKey(void)::$_0::operator() const(void)::impl;
    }

    v5 = *a2;

    return WebKit::WebPreferences::updateBoolValueForKey(this, &WebKit::WebPreferencesKey::shouldIgnoreMetaViewportKey(void)::key, v5, 0);
  }

  return result;
}

uint64_t WTF::Detail::CallableWrapper<WebKit::WebsiteDataStore::initializeAppBoundDomains(WebKit::WebsiteDataStore::ForceReinitialization)::$_0,void>::call(uint64_t result)
{
  v1 = result;
  v2 = atomic_load(WebKit::hasInitializedAppBoundDomains);
  if ((v2 & 1) == 0 || *(result + 8) == 1)
  {
    v3 = [objc_msgSend(MEMORY[0x1E696AAE8] "mainBundle")];
    atomic_store(v3 != 0, WebKit::keyExists);
    WTF::RunLoop::mainSingleton(v3);
    v4 = *(v1 + 8);
    if (v3)
    {
      v5 = v3;
    }

    v6 = WTF::fastMalloc(0x18);
    *v6 = &unk_1F110C410;
    *(v6 + 8) = v4;
    *(v6 + 16) = v3;
    v7 = v6;
    WTF::RunLoop::dispatch();
    result = v7;
    if (v7)
    {
      return (*(*v7 + 8))(v7);
    }
  }

  return result;
}

void sub_19D584F58(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (a10)
  {
    (*(*a10 + 8))(a10);
  }

  _Unwind_Resume(exception_object);
}

void WebKit::WebExtensionControllerConfiguration::copy(WebKit::WebExtensionControllerConfiguration *this@<X0>, uint64_t **a2@<X8>)
{
  v4 = (this + 16);
  if (*(this + 1) == 0)
  {
    if (*(this + 32) == 1)
    {
      v5 = API::Object::newObject(0x40uLL, 115);
      WebKit::WebExtensionControllerConfiguration::WebExtensionControllerConfiguration(v5, v6, MEMORY[0x1E696EBA0]);
    }

    else
    {
      v7 = *(this + 5);
      if (v7 && *(v7 + 4))
      {
        v8 = API::Object::newObject(0x40uLL, 115);
        v5 = v8;
        v9 = 1;
      }

      else
      {
        v8 = API::Object::newObject(0x40uLL, 115);
        v5 = v8;
        v9 = 0;
      }

      WebKit::WebExtensionControllerConfiguration::WebExtensionControllerConfiguration(v8, v9);
    }
  }

  else
  {
    v5 = API::Object::newObject(0x40uLL, 115);
    WebKit::WebExtensionControllerConfiguration::WebExtensionControllerConfiguration(v5, v4);
  }

  WTF::String::operator=(v5 + 5, this + 5);
  v10 = *(this + 6);
  v11 = [v10 copy];
  WebKit::WebExtensionControllerConfiguration::setWebViewConfiguration(v5, v11);

  WebKit::WebExtensionControllerConfiguration::setDefaultWebsiteDataStore(v5, *(this + 7));
  *a2 = v5;
}

void sub_19D585140(_Unwind_Exception *a1)
{
  if (v1)
  {
    CFRelease(*(v1 + 8));
  }

  _Unwind_Resume(a1);
}

uint64_t WTF::StringImpl::deref(atomic_uint *this)
{
  result = std::__atomic_base<unsigned int,true>::fetch_sub[abi:sn200100](this, 2, 0);
  if (result == 2)
  {
    return WTF::StringImpl::destroy(this, v3);
  }

  return result;
}

uint64_t std::__cxx_atomic_fetch_sub[abi:sn200100]<unsigned int>(atomic_uint *a1, int a2, int a3)
{
  if ((a3 - 1) < 2)
  {
    return atomic_fetch_add_explicit(a1, -a2, memory_order_acquire);
  }

  else if (a3 == 3)
  {
    return atomic_fetch_add_explicit(a1, -a2, memory_order_release);
  }

  else if (a3 == 4 || a3 == 5)
  {
    return atomic_fetch_add(a1, -a2);
  }

  else
  {
    return atomic_fetch_add_explicit(a1, -a2, memory_order_relaxed);
  }
}

void API::PageConfiguration::Data::operator=(uint64_t *a1, uint64_t a2)
{
  v4 = API::PageConfiguration::Data::LazyInitializedRef<WebKit::WebProcessPool,&API::PageConfiguration::Data::createWebProcessPool>::get(a2);
  CFRetain(*(v4 + 8));
  v5 = *a1;
  *a1 = v4;
  if (v5)
  {
    CFRelease(*(v5 + 1));
  }

  v6 = API::PageConfiguration::Data::LazyInitializedRef<WebKit::WebUserContentControllerProxy,&API::PageConfiguration::Data::createWebUserContentControllerProxy>::get((a2 + 8));
  CFRetain(*(v6 + 1));
  v7 = a1[1];
  a1[1] = v6;
  if (v7)
  {
    CFRelease(*(v7 + 8));
  }

  v8 = API::PageConfiguration::Data::LazyInitializedRef<WebKit::WebPreferences,&API::PageConfiguration::Data::createWebPreferences>::get((a2 + 16));
  CFRetain(*(v8 + 1));
  v9 = a1[2];
  a1[2] = v8;
  if (v9)
  {
    CFRelease(*(v9 + 8));
  }

  v10 = API::PageConfiguration::Data::LazyInitializedRef<WebKit::VisitedLinkStore,&API::PageConfiguration::Data::createVisitedLinkStore>::get((a2 + 24));
  CFRetain(*(v10 + 1));
  v11 = a1[3];
  a1[3] = v10;
  if (v11)
  {
    CFRelease(*(v11 + 8));
  }

  v12 = API::PageConfiguration::Data::LazyInitializedRef<API::WebsitePolicies,&API::PageConfiguration::Data::createWebsitePolicies>::get((a2 + 32));
  CFRetain(*(v12 + 1));
  v13 = a1[4];
  a1[4] = v12;
  if (v13)
  {
    CFRelease(*(v13 + 8));
  }

  v14 = *(a2 + 40);
  if (v14)
  {
    CFRetain(*(v14 + 8));
  }

  v15 = a1[5];
  a1[5] = v14;
  if (v15)
  {
    CFRelease(*(v15 + 8));
  }

  WTF::URL::operator=((a1 + 6), a2 + 48);
  v17 = *(a2 + 88);
  if (v17)
  {
    CFRetain(*(v17 + 8));
  }

  v18 = a1[11];
  a1[11] = v17;
  if (v18)
  {
    CFRelease(*(v18 + 8));
  }

  v19 = *(a2 + 96);
  if (v19)
  {
    atomic_fetch_add(v19, 1u);
  }

  v20 = a1[12];
  a1[12] = v19;
  if (v20 && atomic_fetch_add(v20, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v20);
    WTF::fastFree(v20, v16);
  }

  v21 = *(a2 + 104);
  if (v21)
  {
    CFRetain(*(v21 + 8));
  }

  v22 = a1[13];
  a1[13] = v21;
  if (v22)
  {
    CFRelease(*(v22 + 8));
  }

  v23 = *(a2 + 112);
  if (v23)
  {
    atomic_fetch_add(v23, 1u);
  }

  v24 = a1[14];
  a1[14] = v23;
  if (v24 && atomic_fetch_add(v24, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v24);
    WTF::fastFree(v24, v16);
  }

  v25 = *(a2 + 120);
  if (v25)
  {
    atomic_fetch_add(v25, 1u);
  }

  v26 = a1[15];
  a1[15] = v25;
  if (v26)
  {
    WTF::ThreadSafeRefCounted<WTF::Box<std::optional<API::PageConfiguration::OpenerInfo>>::Data,(WTF::DestructionThread)0>::deref(v26, v16);
  }

  WebCore::Site::operator=(a1 + 16, (a2 + 128));
  v28 = *(a2 + 144);
  if (v28)
  {
    atomic_fetch_add_explicit(v28, 2u, memory_order_relaxed);
  }

  v29 = a1[18];
  a1[18] = v28;
  if (v29 && atomic_fetch_add_explicit(v29, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v29, v27);
  }

  std::__optional_storage_base<WebCore::WindowFeatures,false>::__assign_from[abi:sn200100]<std::__optional_copy_assign_base<WebCore::WindowFeatures,false> const&>(a1 + 38, (a2 + 152));
  *(a1 + 120) = *(a2 + 240);
  v31 = *(a2 + 248);
  if (v31)
  {
    atomic_fetch_add(v31, 1u);
  }

  v32 = a1[31];
  a1[31] = v31;
  if (v32 && atomic_fetch_add(v32, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v32);
    WTF::fastFree(v32, v30);
  }

  v33 = *(a2 + 256);
  if (v33)
  {
    atomic_fetch_add(v33, 1u);
  }

  v34 = a1[32];
  a1[32] = v33;
  if (v34 && atomic_fetch_add(v34, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v34);
    WTF::fastFree(v34, v30);
  }

  *(a1 + 132) = *(a2 + 264);
  v35 = *(a2 + 272);
  if (v35)
  {
    CFRetain(*(a2 + 272));
  }

  v36 = a1[34];
  a1[34] = v35;
  if (v36)
  {
    CFRelease(v36);
  }

  v37 = *(a2 + 280);
  v38 = *(a2 + 296);
  *(a1 + 312) = *(a2 + 312);
  *(a1 + 35) = v37;
  *(a1 + 37) = v38;
  if (*(a1 + 324) == *(a2 + 324))
  {
    if (*(a1 + 324))
    {
      *(a1 + 80) = *(a2 + 320);
    }
  }

  else if (*(a1 + 324))
  {
    *(a1 + 324) = 0;
  }

  else
  {
    *(a1 + 80) = *(a2 + 320);
    *(a1 + 324) = 1;
  }

  v39 = *(a2 + 328);
  if (v39)
  {
    atomic_fetch_add_explicit(v39, 2u, memory_order_relaxed);
  }

  v40 = a1[41];
  a1[41] = v39;
  if (v40 && atomic_fetch_add_explicit(v40, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v40, v30);
  }

  v41 = *(a2 + 336);
  if (v41)
  {
    CFRetain(*(a2 + 336));
  }

  v42 = a1[42];
  a1[42] = v41;
  if (v42)
  {
    CFRelease(v42);
  }

  std::__optional_storage_base<WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,false>::__assign_from[abi:sn200100]<std::__optional_copy_assign_base<WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,false> const&>(a1 + 86, (a2 + 344));
  *(a1 + 23) = *(a2 + 368);
  v44 = *(a2 + 384);
  if (v44)
  {
    CFRetain(*(v44 + 8));
  }

  v45 = a1[48];
  a1[48] = v44;
  if (v45)
  {
    CFRelease(*(v45 + 8));
  }

  v46 = *(a2 + 392);
  if (v46)
  {
    v47 = *(v46 - 12);
    if (v47)
    {
      v64 = *(v46 - 12);
      v65 = *(v46 - 12);
      if (v47 == 1)
      {
        goto LABEL_101;
      }

      v66 = __clz(v47 - 1);
      if (!v66)
      {
        __break(1u);
        return;
      }

      v64 = (1 << -v66);
      v65 = 1 << -v66;
      if (v47 <= 0x400)
      {
LABEL_101:
        if (3 * v64 > 4 * v47)
        {
LABEL_103:
          if (v65 > 0x400)
          {
            v67 = 0.416666667;
          }

          else
          {
            v67 = 0.604166667;
          }

          if (v65 * v67 <= v47)
          {
            v65 *= 2;
          }

          if (v65 <= 8)
          {
            v68 = 8;
          }

          else
          {
            v68 = v65;
          }

          v69 = WTF::fastZeroedMalloc((16 * v68 + 16));
          v48 = v69 + 4;
          v69[2] = v68 - 1;
          v69[3] = v68;
          *v69 = 0;
          v69[1] = v47;
          v70 = WTF::HashTable<WTF::String,WTF::KeyValuePair<WTF::String,WTF::WallTime>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,WTF::WallTime>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,WTF::WallTime,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::WallTime>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::begin((a2 + 392));
          v71 = v70;
          v72 = v43;
          v73 = *(a2 + 392);
          if (v73)
          {
            v74 = (v73 + 16 * *(v73 - 4));
          }

          else
          {
            v74 = 0;
          }

          if (v74 != v70)
          {
            do
            {
              v75 = v69[2];
              v76 = *(*v71 + 4);
              if (v76 < 0x100)
              {
                v77 = WTF::StringImpl::hashSlowCase(*v71);
              }

              else
              {
                v77 = v76 >> 8;
              }

              v78 = 0;
              do
              {
                v79 = v77 & v75;
                v77 = ++v78 + v79;
              }

              while (*&v48[4 * v79]);
              v80 = &v48[4 * v79];
              v81 = *v71;
              if (*v71)
              {
                atomic_fetch_add_explicit(v81, 2u, memory_order_relaxed);
                v82 = *v80;
                v83 = v71[1];
                ++*(v83 + 2);
                *v80 = v81;
                if (v82 && atomic_fetch_add_explicit(v82, 0xFFFFFFFE, memory_order_relaxed) == 2)
                {
                  WTF::StringImpl::destroy(v82, v43);
                }
              }

              else
              {
                v83 = v71[1];
                ++*(v83 + 2);
                *v80 = 0;
              }

              v84 = *(v80 + 1);
              *(v80 + 1) = v83;
              if (v84)
              {
                if (v84[2] == 1)
                {
                  (*(*v84 + 8))(v84);
                }

                else
                {
                  --v84[2];
                }
              }

              do
              {
                v71 += 2;
              }

              while (v71 != v72 && *v71 + 1 <= 1);
            }

            while (v71 != v74);
          }

          goto LABEL_75;
        }
      }

      else if (v64 > 2 * v47)
      {
        goto LABEL_103;
      }

      v65 *= 2;
      goto LABEL_103;
    }
  }

  v48 = 0;
LABEL_75:
  v49 = a1[49];
  a1[49] = v48;
  if (v49)
  {
    WTF::HashTable<WTF::String,WTF::KeyValuePair<WTF::String,WTF::Ref<WebKit::WebURLSchemeHandler,WTF::RawPtrTraits<WebKit::WebURLSchemeHandler>,WTF::DefaultRefDerefTraits<WebKit::WebURLSchemeHandler>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,WTF::Ref<WebKit::WebURLSchemeHandler,WTF::RawPtrTraits<WebKit::WebURLSchemeHandler>,WTF::DefaultRefDerefTraits<WebKit::WebURLSchemeHandler>>>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,WTF::Ref<WebKit::WebURLSchemeHandler,WTF::RawPtrTraits<WebKit::WebURLSchemeHandler>,WTF::DefaultRefDerefTraits<WebKit::WebURLSchemeHandler>>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::Ref<WebKit::WebURLSchemeHandler,WTF::RawPtrTraits<WebKit::WebURLSchemeHandler>,WTF::DefaultRefDerefTraits<WebKit::WebURLSchemeHandler>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::deallocateTable(v49, v43);
  }

  WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::operator=(a1 + 100, a2 + 400);
  WTF::HashTable<WTF::String,WTF::String,WTF::IdentityExtractor,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::operator=(a1 + 52, (a2 + 416));
  *(a1 + 212) = *(a2 + 424);
  v51 = *(a2 + 432);
  if (v51)
  {
    atomic_fetch_add_explicit(v51, 2u, memory_order_relaxed);
  }

  v52 = a1[54];
  a1[54] = v51;
  if (v52 && atomic_fetch_add_explicit(v52, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v52, v50);
  }

  *(a1 + 440) = *(a2 + 440);
  std::__optional_storage_base<WTF::HashSet<WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::MemoryCompactLookupOnlyRobinHoodHashTableTraits,(WTF::ShouldValidateKey)1>,false>::__assign_from[abi:sn200100]<std::__optional_copy_assign_base<WTF::HashSet<WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::MemoryCompactLookupOnlyRobinHoodHashTableTraits,(WTF::ShouldValidateKey)1>,false> const&>((a1 + 56), a2 + 448);
  v54 = *(a2 + 480);
  *(a1 + 487) = *(a2 + 487);
  a1[60] = v54;
  v55 = *(a2 + 496);
  if (v55)
  {
    atomic_fetch_add_explicit(v55, 2u, memory_order_relaxed);
  }

  v56 = a1[62];
  a1[62] = v55;
  if (v56 && atomic_fetch_add_explicit(v56, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v56, v53);
  }

  v57 = *(a2 + 504);
  if (v57)
  {
    atomic_fetch_add_explicit(v57, 2u, memory_order_relaxed);
  }

  v58 = a1[63];
  a1[63] = v57;
  if (v58 && atomic_fetch_add_explicit(v58, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v58, v53);
  }

  std::__optional_storage_base<WTF::String,false>::__assign_from[abi:sn200100]<std::__optional_copy_assign_base<WTF::String,false> const&>(a1 + 64, (a2 + 512));
  v60 = *(a2 + 528);
  v61 = *(a2 + 544);
  *(a1 + 559) = *(a2 + 559);
  *(a1 + 33) = v60;
  *(a1 + 34) = v61;
  v62 = *(a2 + 576);
  if (v62)
  {
    atomic_fetch_add_explicit(v62, 2u, memory_order_relaxed);
  }

  v63 = a1[72];
  a1[72] = v62;
  if (v63)
  {
    if (atomic_fetch_add_explicit(v63, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v63, v59);
    }
  }

  *(a1 + 584) = *(a2 + 584);
}