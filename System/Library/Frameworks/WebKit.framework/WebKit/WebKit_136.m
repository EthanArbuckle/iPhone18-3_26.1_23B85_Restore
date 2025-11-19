uint64_t WTF::WeakHashSet<WebKit::LockdownModeObserver,WTF::DefaultWeakPtrImpl,(WTF::EnableWeakPtrThreadingAssertions)1>::forEach(uint64_t result)
{
  v1 = result;
  v24 = 0;
  v25 = 0;
  if (qword_1ED642658 && (v2 = *(qword_1ED642658 - 12), v2))
  {
    if (v2 >> 29)
    {
      __break(0xC471u);
      return result;
    }

    v3 = WTF::fastMalloc((8 * v2));
    LODWORD(v25) = v2;
    v24 = v3;
  }

  else
  {
    v3 = 0;
  }

  v4 = WTF::HashTable<WTF::String,WTF::String,WTF::IdentityExtractor,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::begin(&qword_1ED642658);
  v6 = v4;
  v7 = v5;
  if (qword_1ED642658)
  {
    v8 = qword_1ED642658 + 8 * *(qword_1ED642658 - 4);
  }

  else
  {
    v8 = 0;
  }

  if (v8 != v4)
  {
    v9 = 0;
    do
    {
      v10 = *(*v6 + 8);
      if (v10)
      {
        WTF::WeakPtrFactory<WebPushD::PushServiceConnection,WTF::DefaultWeakPtrImpl>::initializeIfNeeded((v10 + 8), *(*v6 + 8));
        v11 = *(v10 + 8);
        if (v11)
        {
          atomic_fetch_add(v11, 1u);
          v9 = HIDWORD(v25);
          v3 = v24;
        }
      }

      else
      {
        v11 = 0;
      }

      v12 = v9 + 1;
      *(v3 + 8 * v9) = v11;
      HIDWORD(v25) = v9 + 1;
      do
      {
        ++v6;
      }

      while (v6 != v7 && (*v6 + 1) <= 1);
      ++v9;
    }

    while (v6 != v8);
    if (v12)
    {
      v13 = v24;
      v14 = &v24[v12];
      do
      {
        v15 = *v13;
        if (*v13)
        {
          v5 = *(v15 + 8);
          if (v5)
          {
            if (qword_1ED642658)
            {
              v16 = *(qword_1ED642658 - 8);
              v17 = (~(v15 << 32) + v15) ^ ((~(v15 << 32) + v15) >> 22);
              v18 = 9 * ((v17 + ~(v17 << 13)) ^ ((v17 + ~(v17 << 13)) >> 8));
              v19 = (v18 ^ (v18 >> 15)) + ~((v18 ^ (v18 >> 15)) << 27);
              v20 = v16 & ((v19 >> 31) ^ v19);
              for (i = 1; ; ++i)
              {
                v22 = *(qword_1ED642658 + 8 * v20);
                if (!v22)
                {
                  break;
                }

                if (v22 != -1 && v22 == v15)
                {
                  (*(**v1 + 16))();
                  break;
                }

                v20 = (v20 + i) & v16;
              }
            }
          }
        }

        ++v13;
      }

      while (v13 != v14);
    }
  }

  return WTF::Vector<WTF::WeakPtr<WebCore::VideoPresentationModelClient,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v24, v5);
}

unsigned int *WTF::WeakHashSet<WebKit::LockdownModeObserver,WTF::DefaultWeakPtrImpl,(WTF::EnableWeakPtrThreadingAssertions)1>::add<WebKit::LockdownModeObserver>@<X0>(uint64_t a1@<X0>, unsigned int *a2@<X1>, uint64_t a3@<X8>)
{
  v6 = *(a1 + 12);
  v7 = *(a1 + 8) + 1;
  *(a1 + 8) = v7;
  if (v7 > v6)
  {
    v8 = *a1;
    if (*a1)
    {
      v9 = *(v8 - 4);
      if (!v9)
      {
LABEL_15:
        v15 = *(v8 - 4);
        if (6 * *(v8 - 12) < v15 && v15 > 8)
        {
          WTF::HashTable<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>,WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>,WTF::IdentityExtractor,WTF::DefaultHash<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>>,WTF::HashTraits<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>>,WTF::HashTraits<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>>,WTF::FastMalloc>::shrinkToBestSize(a1);
          v8 = *a1;
          *(a1 + 8) = 0;
          if (!v8)
          {
            goto LABEL_22;
          }
        }

        else
        {
          *(a1 + 8) = 0;
        }

        LODWORD(v8) = *(v8 - 12);
        if (v8 > 0x7FFFFFFE)
        {
          v17 = -2;
          goto LABEL_24;
        }

LABEL_22:
        v17 = 2 * v8;
LABEL_24:
        *(a1 + 12) = v17;
        goto LABEL_25;
      }

      v10 = 0;
      v11 = 8 * v9;
      v12 = v8 - 8;
      do
      {
        v13 = *(v12 + v11);
        if ((v13 + 1) >= 2 && !*(v13 + 8))
        {
          *(v12 + v11) = 0;
          if (atomic_fetch_add(v13, 0xFFFFFFFF) == 1)
          {
            atomic_store(1u, v13);
            WTF::fastFree(v13, a2);
          }

          *(v12 + v11) = -1;
          ++v10;
        }

        v11 -= 8;
      }

      while (v11);
      v8 = *a1;
      if (v10)
      {
        v14 = *(v8 - 12) - v10;
        *(v8 - 16) += v10;
        *(v8 - 12) = v14;
        goto LABEL_15;
      }

      if (v8)
      {
        goto LABEL_15;
      }
    }

    LODWORD(v8) = 0;
    *(a1 + 8) = 0;
    goto LABEL_22;
  }

LABEL_25:
  WTF::WeakPtrFactory<WebPushD::PushServiceConnection,WTF::DefaultWeakPtrImpl>::initializeIfNeeded(a2 + 2, a2);
  v18 = *(a2 + 1);
  atomic_fetch_add(v18, 1u);
  v21 = v18;
  WTF::HashTable<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>,WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>,WTF::IdentityExtractor,WTF::DefaultHash<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>>,WTF::HashTraits<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>>,WTF::HashTraits<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>>,WTF::FastMalloc>::add<(WTF::ShouldValidateKey)1>(a1, &v21, a3);
  result = v21;
  v21 = 0;
  if (result)
  {
    if (atomic_fetch_add(result, 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, result);
      return WTF::fastFree(result, v19);
    }
  }

  return result;
}

void sub_19DD3161C(_Unwind_Exception *exception_object, void *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, WTF *a10)
{
  if (a10)
  {
    if (atomic_fetch_add(a10, 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, a10);
      WTF::fastFree(a10, a2);
    }
  }

  _Unwind_Resume(exception_object);
}

uint64_t WebKit::setLockdownModeEnabledGloballyForTesting(uint64_t result)
{
  {
    if ((result & 0x100) != 0 && (WebKit::isLockdownModeEnabledGloballyForTesting(void)::enabledForTesting & 0x100) != 0)
    {
      if (WebKit::isLockdownModeEnabledGloballyForTesting(void)::enabledForTesting == result)
      {
        return result;
      }
    }

    else if (((result >> 8) & 1) == (HIBYTE(WebKit::isLockdownModeEnabledGloballyForTesting(void)::enabledForTesting) & 1))
    {
      return result;
    }
  }

  else
  {
    WebKit::isLockdownModeEnabledGloballyForTesting(void)::enabledForTesting = 0;
    if ((result & 0x100) == 0)
    {
      return result;
    }
  }

  WebKit::isLockdownModeEnabledGloballyForTesting(void)::enabledForTesting = result;
  WebKit::WebProcessPool::allProcessPools(&v4);
  if (v5)
  {
    v2 = v4;
    v3 = 8 * v5;
    do
    {
      WebKit::WebProcessPool::lockdownModeStateChanged(*v2++);
      v3 -= 8;
    }

    while (v3);
  }

  return WTF::Vector<WTF::Ref<WebKit::WebProcessPool,WTF::RawPtrTraits<WebKit::WebProcessPool>,WTF::DefaultRefDerefTraits<WebKit::WebProcessPool>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v4, v1);
}

uint64_t WebKit::WebProcessPool::applicationIsAboutToSuspend(WebKit::WebProcessPool *this)
{
  v6 = *MEMORY[0x1E69E9840];
  v2 = qword_1ED641030;
  if (os_log_type_enabled(qword_1ED641030, OS_LOG_TYPE_DEFAULT))
  {
    v4 = 134217984;
    v5 = this;
    _os_log_impl(&dword_19D52D000, v2, OS_LOG_TYPE_DEFAULT, "%p - WebProcessPool::applicationIsAboutToSuspend: Terminating non-critical processes", &v4, 0xCu);
  }

  WebKit::WebBackForwardCache::pruneToSize(*(this + 101), 1u);
  return WebKit::WebProcessCache::clear(*(this + 102));
}

uint64_t WebKit::WebProcessPool::notifyProcessPoolsApplicationIsAboutToSuspend(WebKit::WebProcessPool *this)
{
  WebKit::WebProcessPool::allProcessPools(&v5);
  if (v6)
  {
    v2 = v5;
    v3 = 8 * v6;
    do
    {
      WebKit::WebProcessPool::applicationIsAboutToSuspend(*v2++);
      v3 -= 8;
    }

    while (v3);
  }

  return WTF::Vector<WTF::Ref<WebKit::WebProcessPool,WTF::RawPtrTraits<WebKit::WebProcessPool>,WTF::DefaultRefDerefTraits<WebKit::WebProcessPool>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v5, v1);
}

void WebKit::WebProcessPool::notifyPreferencesChanged(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  v6 = *(a1 + 84);
  if (v6)
  {
    v9 = *(a1 + 72);
    v10 = 8 * v6;
    do
    {
      v11 = *v9;
      v12 = (*v9 + 16);
      atomic_fetch_add(v12, 1u);
      v13[0] = a2;
      v13[1] = a3;
      v13[2] = a4;
      WebKit::AuxiliaryProcessProxy::send<Messages::AuxiliaryProcess::PreferenceDidUpdate>(v11, v13, 0, 0);
      if (v11)
      {
        WTF::ThreadSafeRefCounted<WebKit::AuxiliaryProcessProxy,(WTF::DestructionThread)2>::deref(v12);
      }

      ++v9;
      v10 -= 8;
    }

    while (v10);
  }

  if (MEMORY[0x19EB01EF0](*a3, "WKLockdownModeEnabled", 21))
  {

    WebKit::WebProcessPool::lockdownModeStateChanged(a1);
  }
}

void sub_19DD31930(_Unwind_Exception *exception_object)
{
  if (v2)
  {
    WTF::ThreadSafeRefCounted<WebKit::AuxiliaryProcessProxy,(WTF::DestructionThread)2>::deref(v1);
  }

  _Unwind_Resume(exception_object);
}

float *WebKit::WebProcessPool::screenPropertiesChanged(WebKit::WebProcessPool *this)
{
  WebCore::collectScreenProperties(&v8, this);
  if (*(this + 1209) == 1)
  {
    v2 = WTF::HashTable<unsigned int,WTF::KeyValuePair<unsigned int,WebCore::ScreenData>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<unsigned int,WebCore::ScreenData>>,WTF::DefaultHash<unsigned int>,WTF::HashMap<unsigned int,WebCore::ScreenData,WTF::DefaultHash<unsigned int>,WTF::HashTraits<unsigned int>,WTF::HashTraits<WebCore::ScreenData>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<unsigned int>,WTF::FastMalloc>::begin(&v9);
    v4 = v9;
    if (v9)
    {
      v4 = &v9[18 * *(v9 - 1)];
    }

    while (v2 != v4)
    {
      v2[15] = fminf(v2[15], 1.6);
      *(v2 + 59) = 1;
      do
      {
        v2 += 18;
      }

      while (v2 != v3 && (*v2 + 1) <= 1);
    }
  }

  v7 = &v8;
  WebKit::WebProcessPool::sendToAllProcesses<Messages::WebProcess::SetScreenProperties>(this, &v7);
  result = v9;
  if (v9)
  {
    return WTF::HashTable<unsigned int,WTF::KeyValuePair<unsigned int,WebCore::ScreenData>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<unsigned int,WebCore::ScreenData>>,WTF::DefaultHash<unsigned int>,WTF::HashMap<unsigned int,WebCore::ScreenData,WTF::DefaultHash<unsigned int>,WTF::HashTraits<unsigned int>,WTF::HashTraits<WebCore::ScreenData>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<unsigned int>,WTF::FastMalloc>::deallocateTable(v9, v5);
  }

  return result;
}

void sub_19DD31A08(_Unwind_Exception *exception_object, void *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  if (a11)
  {
    WTF::HashTable<unsigned int,WTF::KeyValuePair<unsigned int,WebCore::ScreenData>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<unsigned int,WebCore::ScreenData>>,WTF::DefaultHash<unsigned int>,WTF::HashMap<unsigned int,WebCore::ScreenData,WTF::DefaultHash<unsigned int>,WTF::HashTraits<unsigned int>,WTF::HashTraits<WebCore::ScreenData>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<unsigned int>,WTF::FastMalloc>::deallocateTable(a11, a2);
  }

  _Unwind_Resume(exception_object);
}

uint64_t WebKit::WebProcessPool::sendToAllProcesses<Messages::WebProcess::SetScreenProperties>(uint64_t result, uint64_t *a2)
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
        result = WebKit::AuxiliaryProcessProxy::send<Messages::WebProcess::SetScreenProperties>(result, &v7, 0, 0);
      }

      ++v4;
      v5 -= 8;
    }

    while (v5);
  }

  return result;
}

float *WebKit::WebProcessPool::didRefreshDisplay(WebKit::WebProcessPool *this)
{
  v2 = WebCore::primaryScreenDisplayID(this);
  result = WebCore::currentEDRHeadroomForDisplay(v2);
  if (*(this + 116) != v4)
  {
    *(this + 116) = v4;

    return WebKit::WebProcessPool::screenPropertiesChanged(this);
  }

  return result;
}

uint64_t WebKit::WebProcessPool::extensionCapabilityGranter(WebKit::WebProcessPool *this, void *a2)
{
  result = *(this + 126);
  if (!result)
  {
    WebKit::ExtensionCapabilityGranter::create(this + 32, a2, &v6);
    result = v6;
    v5 = *(this + 126);
    *(this + 126) = v6;
    if (v5)
    {
      WTF::RefCounted<WebKit::ExtensionCapabilityGranter>::deref(v5 + 8, v4);
      return *(this + 126);
    }
  }

  return result;
}

uint64_t WebKit::WebProcessPool::gpuProcessForCapabilityGranter@<X0>(uint64_t result@<X0>, void *a2@<X8>)
{
  v2 = *(result + 176);
  if (v2)
  {
    atomic_fetch_add((v2 + 16), 1u);
  }

  *a2 = v2;
  return result;
}

uint64_t non-virtual thunk toWebKit::WebProcessPool::gpuProcessForCapabilityGranter@<X0>(uint64_t result@<X0>, void *a2@<X8>)
{
  v2 = *(result + 144);
  if (v2)
  {
    atomic_fetch_add((v2 + 16), 1u);
  }

  *a2 = v2;
  return result;
}

uint64_t WebKit::WebProcessPool::webProcessForCapabilityGranter@<X0>(uint64_t this@<X0>, const WTF::StringImpl **a2@<X2>, void *a3@<X8>)
{
  if (!*(this + 84))
  {
LABEL_13:
    v17 = 0;
    goto LABEL_16;
  }

  v6 = this;
  v7 = 0;
  while (1)
  {
    WebKit::WebProcessProxy::pages(*(*(v6 + 72) + 8 * v7), &v18);
    v9 = v19;
    if (v19)
    {
      break;
    }

LABEL_12:
    this = WTF::Vector<WTF::Ref<WebKit::WebPageProxy,WTF::RawPtrTraits<WebKit::WebPageProxy>,WTF::DefaultRefDerefTraits<WebKit::WebPageProxy>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v18, v8);
    if (++v7 >= *(v6 + 84))
    {
      goto LABEL_13;
    }
  }

  v10 = 0;
  while (1)
  {
    v11 = *(*(*(v18 + 8 * v10) + 32) + 2872);
    if (v11)
    {
      break;
    }

LABEL_11:
    if (++v10 >= v9)
    {
      goto LABEL_12;
    }
  }

  v12 = v11 + 24;
  ++*(v11 + 24);
  WebKit::MediaCapability::environmentIdentifier(v11, &v20);
  v15 = WTF::equal(v20, *a2, v13);
  v16 = v20;
  v20 = 0;
  if (v16)
  {
    if (atomic_fetch_add_explicit(v16, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v16, v14);
    }
  }

  WTF::RefCounted<WebKit::MediaCapability>::deref(v12, v14);
  if ((v15 & 1) == 0)
  {
    v9 = v19;
    goto LABEL_11;
  }

  this = WTF::Vector<WTF::Ref<WebKit::WebPageProxy,WTF::RawPtrTraits<WebKit::WebPageProxy>,WTF::DefaultRefDerefTraits<WebKit::WebPageProxy>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v18, v8);
  if (v7 >= *(v6 + 84))
  {
    __break(0xC471u);
  }

  else
  {
    v17 = *(*(v6 + 72) + 8 * v7);
    atomic_fetch_add((v17 + 16), 1u);
LABEL_16:
    *a3 = v17;
  }

  return this;
}

void sub_19DD31CCC(_Unwind_Exception *a1, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, WTF::StringImpl *a12)
{
  WTF::RefCounted<WebKit::MediaCapability>::deref(v12, a2);
  WTF::Vector<WTF::Ref<WebKit::WebPageProxy,WTF::RawPtrTraits<WebKit::WebPageProxy>,WTF::DefaultRefDerefTraits<WebKit::WebPageProxy>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&a10, v14);
  _Unwind_Resume(a1);
}

uint64_t WebKit::WebProcessPool::platformLoadResourceMonitorRuleList(uint64_t a1, uint64_t *a2)
{
  v4 = qword_1ED641170;
  if (os_log_type_enabled(qword_1ED641170, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_19D52D000, v4, OS_LOG_TYPE_DEFAULT, "WebProcessPool::platformLoadResourceMonitorRuleList request to load rule list.", buf, 2u);
  }

  {
  }

  WTF::WeakPtrFactory<IPC::MessageReceiver,WTF::DefaultWeakPtrImpl>::initializeIfNeeded((a1 + 24), a1 + 16);
  v5 = *(a1 + 24);
  atomic_fetch_add(v5, 1u);
  v6 = *a2;
  *a2 = 0;
  v7 = WTF::fastMalloc(0x18);
  *v7 = &unk_1F1106630;
  v7[1] = v5;
  v7[2] = v6;
  v9 = v7;
  WebKit::ResourceMonitorURLsController::prepare(&WebKit::ResourceMonitorURLsController::singleton(void)::sharedInstance, &v9);
  result = v9;
  v9 = 0;
  if (result)
  {
    return (*(*result + 8))(result);
  }

  return result;
}

void sub_19DD31E30(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (a10)
  {
    (*(*a10 + 8))(a10);
  }

  _Unwind_Resume(exception_object);
}

void WebKit::WebProcessPool::platformCompileResourceMonitorRuleList(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v16 = 0;
  v4 = *a2;
  if (*a2)
  {
    v5 = *(v4 + 16);
    v6 = *(v4 + 8);
    LODWORD(v4) = *(v4 + 4);
    v16 = v6;
    v7 = (v5 >> 2) & 1;
  }

  else
  {
    LOBYTE(v7) = 1;
  }

  v17 = v4;
  v18 = v7;
  WTF::StringView::createNSStringWithoutCopying(&v15, &v16);
  v8 = +[WKContentRuleListStore defaultStore];
  v9 = v8;
  if (v8)
  {
    v10 = v8;
  }

  v11 = v15;
  v12 = *a3;
  *a3 = 0;
  v13 = malloc_type_malloc(0x28uLL, 0x10E004053C0834CuLL);
  *v13 = MEMORY[0x1E69E9818];
  v13[1] = 50331650;
  v13[2] = WTF::BlockPtr<void ()(WKContentRuleList *,NSError *)>::fromCallable<WebKit::WebProcessPool::platformCompileResourceMonitorRuleList(WTF::String const&,WTF::CompletionHandler<void ()(WTF::RefPtr<WebKit::WebCompiledContentRuleList,WTF::RawPtrTraits<WebKit::WebCompiledContentRuleList>,WTF::DefaultRefDerefTraits<WebKit::WebCompiledContentRuleList>>)> &&)::$_0>(WebKit::WebProcessPool::platformCompileResourceMonitorRuleList(WTF::String const&,WTF::CompletionHandler<void ()(WTF::RefPtr<WebKit::WebCompiledContentRuleList,WTF::RawPtrTraits<WebKit::WebCompiledContentRuleList>,WTF::DefaultRefDerefTraits<WebKit::WebCompiledContentRuleList>>)> &&)::$_0)::{lambda(void *,WKContentRuleList *,NSError *)#1}::__invoke;
  v13[3] = &WTF::BlockPtr<void ()(WKContentRuleList *,NSError *)>::fromCallable<WebKit::WebProcessPool::platformCompileResourceMonitorRuleList(WTF::String const&,WTF::CompletionHandler<void ()(WTF::RefPtr<WebKit::WebCompiledContentRuleList,WTF::RawPtrTraits<WebKit::WebCompiledContentRuleList>,WTF::DefaultRefDerefTraits<WebKit::WebCompiledContentRuleList>>)> &&)::$_0>(WebKit::WebProcessPool::platformCompileResourceMonitorRuleList(WTF::String const&,WTF::CompletionHandler<void ()(WTF::RefPtr<WebKit::WebCompiledContentRuleList,WTF::RawPtrTraits<WebKit::WebCompiledContentRuleList>,WTF::DefaultRefDerefTraits<WebKit::WebCompiledContentRuleList>>)> &&)::$_0)::descriptor;
  v13[4] = v12;
  [(WKContentRuleListStore *)v9 compileContentRuleListForIdentifier:@"com.apple.WebPrivacy.ResourceMonitorURLsForTesting" encodedContentRuleList:v11 completionHandler:v13];
  _Block_release(v13);
  if (v9)
  {
  }

  v14 = v15;
  v15 = 0;
  if (v14)
  {
  }
}

void sub_19DD31FEC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10)
{
  v12 = v11;
  _Block_release(v12);
  if (v10)
  {
  }

  if (a10)
  {
  }

  _Unwind_Resume(a1);
}

atomic_uint *WebKit::WebProcessPool::registerFontsForGPUProcessIfNeeded(atomic_uint *this, WTF::StringImpl *a2)
{
  v3 = *(this + 22);
  if (!v3)
  {
    return this;
  }

  v4 = this;
  atomic_fetch_add((v3 + 16), 1u);
  v63 = 0;
  v64 = 0;
  if (*(this + 1160) != 1)
  {
    goto LABEL_50;
  }

  v5 = *(this + 144);
  if (v5)
  {
    v6 = *(v5 - 4);
    v7 = (v5 + 48 * v6);
    if (*(v5 - 12))
    {
      v8 = *(this + 144);
      if (v6)
      {
        v9 = 48 * v6;
        v8 = *(this + 144);
        while ((*v8 + 1) <= 1)
        {
          v8 += 6;
          v9 -= 48;
          if (!v9)
          {
            v8 = v7;
            goto LABEL_10;
          }
        }
      }

      goto LABEL_10;
    }

    v8 = (v5 + 48 * v6);
  }

  else
  {
    v8 = 0;
    LODWORD(v6) = 0;
  }

  v7 = (v5 + 48 * v6);
  if (v5)
  {
LABEL_10:
    v10 = (v5 + 48 * *(v5 - 4));
    goto LABEL_15;
  }

  v10 = 0;
LABEL_15:
  v61 = 0;
  v62 = 0;
  if (v8 == v10)
  {
    v11 = 0;
    v12 = 0;
    v13 = 0;
    goto LABEL_35;
  }

  do
  {
    LOBYTE(v57) = 0;
    v58 = 0;
    WTF::URL::fileSystemPath(&v65, (v8 + 1));
    v14 = v65;
    if (v65)
    {
      v14 = *(v65 + 1);
      v15 = ((*(v65 + 4) >> 2) & 1) << 32;
    }

    else
    {
      v15 = 0x100000000;
    }

    v2 = v14 | v2 & 0xFFFFFF0000000000 | v15;
    WebKit::SandboxExtension::createHandle(0, &v66);
    std::__optional_storage_base<WebKit::SandboxExtensionHandle,false>::__assign_from[abi:sn200100]<std::__optional_move_assign_base<WebKit::SandboxExtensionHandle,false>>(&v57, &v66);
    if (v67 == 1)
    {
      WebKit::SandboxExtensionHandle::~SandboxExtensionHandle(&v66);
    }

    v16 = v65;
    v65 = 0;
    if (v16 && atomic_fetch_add_explicit(v16, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v16, a2);
    }

    if (v58 == 1)
    {
      v17 = HIDWORD(v62);
      if (HIDWORD(v62) != v62)
      {
        v22 = v57;
        v57 = 0;
        v61[HIDWORD(v62)] = v22;
        HIDWORD(v62) = v17 + 1;
LABEL_29:
        WebKit::SandboxExtensionHandle::~SandboxExtensionHandle(&v57);
        goto LABEL_30;
      }

      v18 = WTF::Vector<WebKit::SandboxExtensionHandle,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(&v61, HIDWORD(v62) + 1, &v57);
      v19 = HIDWORD(v62);
      v20 = v61;
      v21 = *v18;
      *v18 = 0;
      v20[v19] = v21;
      HIDWORD(v62) = v19 + 1;
      if (v58)
      {
        goto LABEL_29;
      }
    }

    do
    {
LABEL_30:
      v8 += 6;
    }

    while (v8 != v7 && (*v8 + 1) <= 1);
  }

  while (v8 != v10);
  v13 = HIDWORD(v62);
  v11 = v64;
  v12 = HIDWORD(v64);
LABEL_35:
  v23 = v12 + v13;
  if (v23 <= v11)
  {
    v26 = v13;
    if (!v13)
    {
      goto LABEL_49;
    }

    goto LABEL_46;
  }

  v24 = v11 + (v11 >> 1);
  if (v24 <= v11 + 1)
  {
    v24 = v11 + 1;
  }

  if (v24 <= v23)
  {
    v24 = v23;
  }

  if (v24 <= 0x10)
  {
    v25 = 16;
  }

  else
  {
    v25 = v24;
  }

  WTF::Vector<WebKit::SandboxExtensionHandle,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::reserveCapacity<(WTF::FailureAction)0>(&v63, v25);
  v26 = HIDWORD(v62);
  if (HIDWORD(v62))
  {
LABEL_46:
    v27 = v61;
    v28 = HIDWORD(v64);
    v29 = 8 * v26;
    v30 = v63;
    do
    {
      v31 = *v27;
      *v27++ = 0;
      *(v30 + 8 * v28++) = v31;
      v29 -= 8;
    }

    while (v29);
    HIDWORD(v64) = v28;
  }

LABEL_49:
  WTF::Vector<WebKit::SandboxExtensionHandle,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v61, a2);
LABEL_50:
  if (*(v4 + 1200) == 1)
  {
    LOBYTE(v57) = 0;
    v60 = 0;
    WebKit::sandboxExtensionsForFonts<WTF::Vector<WTF::URL,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>(&v66, *(v4 + 148), v4[299], &v57);
    v33 = v68;
    v34 = v68 + HIDWORD(v64);
    if (v34 > v64)
    {
      if (v64 + (v64 >> 1) <= v64 + 1)
      {
        v35 = v64 + 1;
      }

      else
      {
        v35 = v64 + (v64 >> 1);
      }

      if (v35 > v34)
      {
        v34 = v35;
      }

      if (v34 <= 0x10)
      {
        v36 = 16;
      }

      else
      {
        v36 = v34;
      }

      WTF::Vector<WebKit::SandboxExtensionHandle,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::reserveCapacity<(WTF::FailureAction)0>(&v63, v36);
      v33 = v68;
    }

    if (v33)
    {
      v37 = v66;
      v38 = HIDWORD(v64);
      v39 = 8 * v33;
      v40 = v63;
      do
      {
        v41 = *v37;
        *v37 = 0;
        v37 = (v37 + 8);
        *(v40 + 8 * v38++) = v41;
        v39 -= 8;
      }

      while (v39);
      HIDWORD(v64) = v38;
    }

    WTF::Vector<WebKit::SandboxExtensionHandle,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v66, v32);
  }

  if (*(v4 + 1144) == 1)
  {
    LOBYTE(v57) = 0;
    v60 = 0;
    WebKit::sandboxExtensionsForFonts<WTF::Vector<WTF::URL,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>(&v66, *(v4 + 141), v4[285], &v57);
    v43 = v68;
    v44 = v68 + HIDWORD(v64);
    if (v44 > v64)
    {
      if (v64 + (v64 >> 1) <= v64 + 1)
      {
        v45 = v64 + 1;
      }

      else
      {
        v45 = v64 + (v64 >> 1);
      }

      if (v45 > v44)
      {
        v44 = v45;
      }

      if (v44 <= 0x10)
      {
        v46 = 16;
      }

      else
      {
        v46 = v44;
      }

      WTF::Vector<WebKit::SandboxExtensionHandle,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::reserveCapacity<(WTF::FailureAction)0>(&v63, v46);
      v43 = v68;
    }

    if (v43)
    {
      v47 = v66;
      v48 = HIDWORD(v64);
      v49 = 8 * v43;
      v50 = v63;
      do
      {
        v51 = *v47;
        *v47 = 0;
        v47 = (v47 + 8);
        *(v50 + 8 * v48++) = v51;
        v49 -= 8;
      }

      while (v49);
      HIDWORD(v64) = v48;
    }

    WTF::Vector<WebKit::SandboxExtensionHandle,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v66, v42);
  }

  if (HIDWORD(v64))
  {
    v52 = IPC::Encoder::operator new(0x238, a2);
    *v52 = 79;
    *(v52 + 68) = 0;
    *(v52 + 70) = 0;
    *(v52 + 69) = 0;
    *(v52 + 2) = 0;
    *(v52 + 3) = 0;
    *(v52 + 1) = 0;
    IPC::Encoder::encodeHeader(v52);
    v66 = v52;
    IPC::VectorArgumentCoder<false,WebKit::SandboxExtensionHandle,0ul,WTF::CrashOnOverflow,16ul>::encode<IPC::Encoder,WTF::Vector<WebKit::SandboxExtensionHandle,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>(v52, &v63);
    LOBYTE(v57) = 0;
    v59 = 0;
    WebKit::AuxiliaryProcessProxy::sendMessage(v3, &v66, 0, &v57, 1);
    if (v59 == 1)
    {
      v53 = v57;
      v57 = 0;
      if (v53)
      {
        (*(*v53 + 8))(v53);
      }
    }

    v54 = v66;
    v66 = 0;
    if (v54)
    {
      IPC::Encoder::~Encoder(v54, a2);
      bmalloc::api::tzoneFree(v55, v56);
    }
  }

  WTF::Vector<WebKit::SandboxExtensionHandle,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v63, a2);
  return WTF::ThreadSafeRefCounted<WebKit::AuxiliaryProcessProxy,(WTF::DestructionThread)2>::deref((v3 + 16));
}

void sub_19DD32530(_Unwind_Exception *a1, void *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, char a17, uint64_t a18, char a19, uint64_t a20, WTF::StringImpl *a21, IPC::Encoder *a22, char a23)
{
  WTF::Vector<WebKit::SandboxExtensionHandle,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&a17, a2);
  WTF::Vector<WebKit::SandboxExtensionHandle,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&a19, v25);
  WTF::ThreadSafeRefCounted<WebKit::AuxiliaryProcessProxy,(WTF::DestructionThread)2>::deref(v23);
  _Unwind_Resume(a1);
}

void WebKit::sandboxExtensionsForFonts<WTF::Vector<WTF::URL,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>(uint64_t a1, WTF::URL *this, unsigned int a3, uint64_t a4)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  if (a3)
  {
    for (i = 40 * a3; i; i -= 40)
    {
      LOBYTE(v29) = 0;
      v30 = 0;
      if (*(a4 + 32) == 1)
      {
        WTF::URL::fileSystemPath(&v26, this);
        v10 = v26;
        if (v26)
        {
          v11 = *(v26 + 8);
          v10 = *(v26 + 4);
          v12 = ((*(v26 + 16) >> 2) & 1) << 32;
        }

        else
        {
          v11 = 0;
          v12 = 0x100000000;
        }

        if ((*(a4 + 32) & 1) == 0)
        {
          __break(1u);
          return;
        }

        v5 = v10 | v5 & 0xFFFFFF0000000000 | v12;
        v13 = *(a4 + 16);
        v25[0] = *a4;
        v25[1] = v13;
        WebKit::SandboxExtension::createHandleForReadByAuditToken(v11, v5, v25, &v27);
        std::__optional_storage_base<WebKit::SandboxExtensionHandle,false>::__assign_from[abi:sn200100]<std::__optional_move_assign_base<WebKit::SandboxExtensionHandle,false>>(&v29, &v27);
        if (v28 == 1)
        {
          WebKit::SandboxExtensionHandle::~SandboxExtensionHandle(&v27);
        }

        v15 = v26;
        v26 = 0;
        if (v15)
        {
LABEL_16:
          if (atomic_fetch_add_explicit(v15, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v15, v14);
          }
        }
      }

      else
      {
        WTF::URL::fileSystemPath(&v27, this);
        v16 = v27;
        if (v27)
        {
          v16 = *(v27 + 1);
          v17 = ((*(v27 + 4) >> 2) & 1) << 32;
        }

        else
        {
          v17 = 0x100000000;
        }

        v4 = v16 | v4 & 0xFFFFFF0000000000 | v17;
        WebKit::SandboxExtension::createHandle(0, v25);
        std::__optional_storage_base<WebKit::SandboxExtensionHandle,false>::__assign_from[abi:sn200100]<std::__optional_move_assign_base<WebKit::SandboxExtensionHandle,false>>(&v29, v25);
        if (BYTE8(v25[0]) == 1)
        {
          WebKit::SandboxExtensionHandle::~SandboxExtensionHandle(v25);
        }

        v15 = v27;
        v27 = 0;
        if (v15)
        {
          goto LABEL_16;
        }
      }

      if (v30 == 1)
      {
        v18 = *(a1 + 12);
        if (v18 != *(a1 + 8))
        {
          v23 = *a1;
          v24 = v29;
          v29 = 0;
          *(v23 + 8 * v18) = v24;
          *(a1 + 12) = v18 + 1;
LABEL_23:
          WebKit::SandboxExtensionHandle::~SandboxExtensionHandle(&v29);
          goto LABEL_24;
        }

        v19 = WTF::Vector<WebKit::SandboxExtensionHandle,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(a1, v18 + 1, &v29);
        v20 = *(a1 + 12);
        v21 = *a1;
        v22 = *v19;
        *v19 = 0;
        *(v21 + 8 * v20) = v22;
        *(a1 + 12) = v20 + 1;
        if (v30)
        {
          goto LABEL_23;
        }
      }

LABEL_24:
      this = (this + 40);
    }
  }
}

void sub_19DD3285C(_Unwind_Exception *a1, void *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, WTF::StringImpl *a15, char a16, int a17, WebKit::SandboxExtensionImpl *a18, __int16 a19, char a20, char a21)
{
  if (a19 == 1)
  {
    WebKit::SandboxExtensionHandle::~SandboxExtensionHandle(&a18);
  }

  WTF::Vector<WebKit::SandboxExtensionHandle,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v21, a2);
  _Unwind_Resume(a1);
}

WTF *WebKit::WebProcessPool::registerAssetFonts(WebKit::WebProcessPool *this, atomic_ullong *a2)
{
  v2 = a2;
  v38[2] = *MEMORY[0x1E69E9840];
  if (*(this + 1144) == 1)
  {
    WebKit::WebProcessProxy::auditToken(a2, v36);
    WebKit::AdditionalFonts::additionalFonts(this + 1128, v36, v38);
    v37[0] = v38;
    WebKit::AuxiliaryProcessProxy::send<Messages::WebProcess::RegisterAdditionalFonts>(v2, v37);
    return WTF::Vector<WebKit::FontData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v38, v4);
  }

  else
  {
    v36[0] = xmmword_1E7633018;
    v36[1] = *&off_1E7633028;
    v36[2] = xmmword_1E7633038;
    WTF::Vector<WTF::ASCIILiteral,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::Vector(&v33, v36, 3uLL);
    v6 = [MEMORY[0x1E695DF70] array];
    v7 = v6;
    if (v6)
    {
      v8 = v6;
    }

    v9 = v33;
    if (HIDWORD(v34))
    {
      v29 = v2;
      v10 = *MEMORY[0x1E6965790];
      v11 = *MEMORY[0x1E6965840];
      v12 = 16 * HIDWORD(v34);
      do
      {
        v36[0] = *v9;
        WTF::ASCIILiteral::createNSString(&v35, v36);
        v37[0] = v10;
        v37[1] = v11;
        v38[0] = v35;
        v38[1] = &unk_1F11848D8;
        v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v38 forKeys:v37 count:2];
        v14 = v13;
        if (v13)
        {
          v15 = v13;
        }

        v16 = CTFontDescriptorCreateWithAttributes(v14);
        if (v14)
        {
        }

        v17 = v35;
        v35 = 0;
        if (v17)
        {
        }

        [v7 addObject:{v16, v29}];
        if (v16)
        {
          CFRelease(v16);
        }

        v9 = (v9 + 16);
        v12 -= 16;
      }

      while (v12);
      v9 = v33;
      v18 = HIDWORD(v34);
      v2 = v29;
    }

    else
    {
      v18 = 0;
    }

    v19 = v34;
    v33 = 0;
    v34 = 0;
    WTF::WeakPtrFactory<WebPushD::PushServiceConnection,WTF::DefaultWeakPtrImpl>::initializeIfNeeded(v2 + 2, v2);
    v20 = *(v2 + 1);
    atomic_fetch_add(v20, 1u);
    WTF::WeakPtrFactory<IPC::MessageReceiver,WTF::DefaultWeakPtrImpl>::initializeIfNeeded(this + 6, this + 16);
    v21 = *(this + 3);
    atomic_fetch_add(v21, 1u);
    v22 = malloc_type_malloc(0x40uLL, 0x10E00404BE9A799uLL);
    *v22 = MEMORY[0x1E69E9818];
    v22[1] = 50331650;
    v22[2] = WTF::BlockPtr<BOOL ()(CTFontDescriptorMatchingState,__CFDictionary const*)>::fromCallable<WebKit::WebProcessPool::registerAssetFonts(WebKit::WebProcessProxy &)::$_0>(WebKit::WebProcessPool::registerAssetFonts(WebKit::WebProcessProxy &)::$_0)::{lambda(void *,CTFontDescriptorMatchingState,__CFDictionary const*)#1}::__invoke;
    v22[3] = &WTF::BlockPtr<BOOL ()(CTFontDescriptorMatchingState,__CFDictionary const*)>::fromCallable<WebKit::WebProcessPool::registerAssetFonts(WebKit::WebProcessProxy &)::$_0>(WebKit::WebProcessPool::registerAssetFonts(WebKit::WebProcessProxy &)::$_0)::descriptor;
    v22[4] = v9;
    *(v22 + 10) = v19;
    *(v22 + 11) = v18;
    v22[6] = v20;
    v22[7] = v21;
    global_queue = dispatch_get_global_queue(0, 0);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3321888768;
    block[2] = ___ZN6WebKit14WebProcessPool18registerAssetFontsERNS_15WebProcessProxyE_block_invoke;
    block[3] = &__block_descriptor_48_e8_32c78_ZTSKZN6WebKit14WebProcessPool18registerAssetFontsERNS_15WebProcessProxyEE3__1_e5_v8__0l;
    if (v7)
    {
      v24 = v7;
    }

    v25 = _Block_copy(v22);
    v31 = v7;
    if (v7)
    {
      v26 = v7;
    }

    aBlock = _Block_copy(v25);
    dispatch_async(global_queue, block);
    _Block_release(v25);
    if (v7)
    {
    }

    _Block_release(aBlock);
    v27 = v31;
    v31 = 0;
    if (v27)
    {
    }

    _Block_release(v22);
    if (v7)
    {
    }

    result = v33;
    if (v33)
    {
      v33 = 0;
      LODWORD(v34) = 0;
      return WTF::fastFree(result, v28);
    }
  }

  return result;
}

void sub_19DD32C54(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, WTF *a16, int a17, uint64_t a18)
{
  _Block_release(v20);

  _Block_release(v19);
  if (v18)
  {
  }

  if (a16)
  {
    WTF::fastFree(a16, v22);
  }

  _Unwind_Resume(a1);
}

void *__copy_helper_block_e8_32c78_ZTSKZN6WebKit14WebProcessPool18registerAssetFontsERNS_15WebProcessProxyEE3__1(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  *(a1 + 32) = v4;
  if (v4)
  {
    v5 = v4;
  }

  result = _Block_copy(*(a2 + 40));
  *(a1 + 40) = result;
  return result;
}

void sub_19DD32DE4(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 32);
  *(v1 + 32) = 0;
  if (v3)
  {
  }

  _Unwind_Resume(exception_object);
}

void __destroy_helper_block_e8_32c78_ZTSKZN6WebKit14WebProcessPool18registerAssetFontsERNS_15WebProcessProxyEE3__1(uint64_t a1)
{
  _Block_release(*(a1 + 40));
  v2 = *(a1 + 32);
  *(a1 + 32) = 0;
  if (v2)
  {
  }
}

uint64_t *WebKit::WebProcessProxy::platformPathsWithAssumedReadAccess(WebKit::WebProcessProxy *this)
{
  v35[1] = *MEMORY[0x1E69E9840];
  if ((byte_1ED64260A & 1) == 0)
  {
    MEMORY[0x19EB02040](v34, [objc_msgSend(objc_msgSend(MEMORY[0x1E696AAE8] bundleWithIdentifier:{@"com.apple.WebCore", "resourcePath"), "stringByStandardizingPath"}]);
    v2 = [objc_msgSend(objc_msgSend(MEMORY[0x1E696AAE8] bundleForClass:{NSClassFromString(&cfstr_Wkwebview.isa)), "resourcePath"), "stringByStandardizingPath"}];
    MEMORY[0x19EB02040](v35, v2);
    qword_1ED642678 = 0;
    *&dword_1ED642680 = 0;
    *(&dword_1ED642684 + 1) = 0;
    WTF::RobinHoodHashTable<WTF::String,WTF::String,WTF::IdentityExtractor,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::MemoryCompactLookupOnlyRobinHoodHashTableSizePolicy,WTF::FastMalloc>::reserveInitialCapacity(&qword_1ED642678, 2);
    for (i = 0; i != 16; i += 8)
    {
      v6 = dword_1ED642680;
      if (20 * dword_1ED642684 >= 19 * dword_1ED642680 || dword_1ED642680 <= (2 * dword_1ED642684) && (byte_1ED64268C & 1) != 0)
      {
        if (dword_1ED642680)
        {
          v7 = 2 * dword_1ED642680;
        }

        else
        {
          v7 = 8;
        }

        WTF::RobinHoodHashTable<WTF::String,WTF::String,WTF::IdentityExtractor,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::MemoryCompactLookupOnlyRobinHoodHashTableSizePolicy,WTF::FastMalloc>::rehash(&qword_1ED642678, v7);
        v6 = dword_1ED642680;
      }

      v8 = dword_1ED642688;
      v9 = *&v34[i];
      v10 = *(v9 + 4);
      if (v10 < 0x100)
      {
        v11 = WTF::StringImpl::hashSlowCase(v9);
      }

      else
      {
        v11 = v10 >> 8;
      }

      v12 = v6 - 1;
      v13 = (v11 ^ v8) & (v6 - 1);
      v14 = (qword_1ED642678 + 8 * v13);
      v15 = *v14;
      if (*v14)
      {
        v16 = 0;
        while (1)
        {
          v17 = *(v15 + 4);
          v18 = v17 < 0x100 ? WTF::StringImpl::hashSlowCase(v15) : v17 >> 8;
          v19 = (v13 + v6 - ((v18 ^ v8) & v12)) & v12;
          if (v16 > v19)
          {
            break;
          }

          if (v18 == v11 && (WTF::equal(*v14, *&v34[i], v4) & 1) != 0)
          {
            goto LABEL_47;
          }

          v13 = (v13 + 1) & v12;
          ++v16;
          v14 = (qword_1ED642678 + 8 * v13);
          v15 = *v14;
          if (!*v14)
          {
            if (v16 >= 0x80)
            {
              byte_1ED64268C = 1;
            }

            goto LABEL_31;
          }
        }

        if (v16 >= 0x80)
        {
          byte_1ED64268C = 1;
        }

        v20 = *v14;
        *v14 = 0;
        v21 = *&v34[i];
        if (v21)
        {
          atomic_fetch_add_explicit(v21, 2u, memory_order_relaxed);
          v22 = *v14;
          *v14 = v21;
          if (v22 && atomic_fetch_add_explicit(v22, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v22, v3);
          }
        }

        else
        {
          *v14 = 0;
        }

        for (j = v13 + 1; ; j = v26 + 1)
        {
          v26 = j & v12;
          v27 = (qword_1ED642678 + 8 * (j & v12));
          v28 = *v27;
          if (!*v27)
          {
            break;
          }

          v29 = *(v28 + 4);
          if (v29 < 0x100)
          {
            v30 = WTF::StringImpl::hashSlowCase(v28);
          }

          else
          {
            v30 = v29 >> 8;
          }

          if (++v19 > ((v26 + v6 - ((v30 ^ v8) & v12)) & v12))
          {
            v31 = *v27;
            *v27 = v20;
            v20 = v31;
            v19 = (v26 + v6 - ((v30 ^ v8) & v12)) & v12;
          }
        }

        *v27 = v20;
      }

      else
      {
LABEL_31:
        v23 = *&v34[i];
        if (v23)
        {
          atomic_fetch_add_explicit(v23, 2u, memory_order_relaxed);
          v24 = *v14;
          *v14 = v23;
          if (v24 && atomic_fetch_add_explicit(v24, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v24, v3);
          }
        }

        else
        {
          *v14 = 0;
        }
      }

      ++dword_1ED642684;
LABEL_47:
      ;
    }

    for (k = 8; k != -8; k -= 8)
    {
      v33 = *&v34[k];
      *&v34[k] = 0;
      if (v33 && atomic_fetch_add_explicit(v33, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v33, v3);
      }
    }

    byte_1ED64260A = 1;
  }

  return &qword_1ED642678;
}

void sub_19DD331E4(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, WTF::StringImpl *a10)
{
  if (qword_1ED642678)
  {
    WTF::RobinHoodHashTable<WTF::String,WTF::String,WTF::IdentityExtractor,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::MemoryCompactLookupOnlyRobinHoodHashTableSizePolicy,WTF::FastMalloc>::deallocateTable(qword_1ED642678, dword_1ED642680);
  }

  v11 = 8;
  while (1)
  {
    v12 = *(&a10 + v11);
    *(&a10 + v11) = 0;
    if (v12 && atomic_fetch_add_explicit(v12, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v12, a2);
    }

    v11 -= 8;
    if (v11 == -8)
    {
      _Unwind_Resume(exception_object);
    }
  }
}

IPC::Encoder *WebKit::WebProcessProxy::cacheMediaMIMETypes(IPC::Encoder *result, uint64_t a2)
{
  v3 = result;
  if (byte_1ED642611)
  {
    if (dword_1ED642674)
    {
      return result;
    }
  }

  else
  {
    unk_1ED642670 = 0;
    qword_1ED642668 = 0;
    byte_1ED642611 = 1;
  }

  result = WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::operator=(&qword_1ED642668, a2);
  v4 = *(*(v3 + 552) + 8);
  v5 = v4 - 16;
  if (!v4)
  {
    v5 = 0;
  }

  v6 = *(v5 + 84);
  if (v6)
  {
    v7 = *(v5 + 72);
    for (i = 8 * v6; i; i -= 8)
    {
      v9 = *v7;
      v10 = (*v7 + 16);
      atomic_fetch_add(v10, 1u);
      if (v9 == v3)
      {
        goto LABEL_16;
      }

      if (byte_1ED642611)
      {
        if (dword_1ED642674)
        {
          goto LABEL_16;
        }
      }

      else
      {
        unk_1ED642670 = 0;
        qword_1ED642668 = 0;
        byte_1ED642611 = 1;
      }

      WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::operator=(&qword_1ED642668, a2);
      v12 = IPC::Encoder::operator new(0x238, v11);
      *v12 = 3004;
      *(v12 + 68) = 0;
      *(v12 + 70) = 0;
      *(v12 + 69) = 0;
      *(v12 + 2) = 0;
      *(v12 + 3) = 0;
      *(v12 + 1) = 0;
      IPC::Encoder::encodeHeader(v12);
      v19 = v12;
      IPC::VectorArgumentCoder<false,WTF::String,0ul,WTF::CrashOnOverflow,16ul>::encode<IPC::Encoder,WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>(v12, a2);
      LOBYTE(v17) = 0;
      v18 = 0;
      WebKit::AuxiliaryProcessProxy::sendMessage(v3, &v19, 0, &v17, 1);
      if (v18 == 1)
      {
        v14 = v17;
        v17 = 0;
        if (v14)
        {
          (*(*v14 + 8))(v14);
        }
      }

      result = v19;
      v19 = 0;
      if (result)
      {
        IPC::Encoder::~Encoder(result, v13);
        result = bmalloc::api::tzoneFree(v15, v16);
        if (!v9)
        {
          goto LABEL_18;
        }

LABEL_17:
        result = WTF::ThreadSafeRefCounted<WebKit::AuxiliaryProcessProxy,(WTF::DestructionThread)2>::deref(v10);
        goto LABEL_18;
      }

LABEL_16:
      if (v9)
      {
        goto LABEL_17;
      }

LABEL_18:
      ++v7;
    }
  }

  return result;
}

void sub_19DD3346C(_Unwind_Exception *exception_object, void *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, IPC::Encoder *a12)
{
  if (a11 == 1 && a9)
  {
    (*(*a9 + 8))(a9);
  }

  if (a12)
  {
    IPC::Encoder::~Encoder(a12, a2);
    bmalloc::api::tzoneFree(v15, v16);
  }

  if (v13)
  {
    WTF::ThreadSafeRefCounted<WebKit::AuxiliaryProcessProxy,(WTF::DestructionThread)2>::deref(v12);
  }

  _Unwind_Resume(exception_object);
}

uint64_t WebKit::AuxiliaryProcessProxy::send<Messages::WebProcess::UnblockServicesRequiredByAccessibility>(uint64_t a1, void *a2, uint64_t a3, char a4)
{
  v8 = IPC::Encoder::operator new(0x238, a2);
  *v8 = 3018;
  *(v8 + 2) = 0;
  *(v8 + 3) = 0;
  *(v8 + 1) = a3;
  *(v8 + 68) = 0;
  *(v8 + 70) = 0;
  *(v8 + 69) = 0;
  IPC::Encoder::encodeHeader(v8);
  v18 = v8;
  IPC::VectorArgumentCoder<false,WebKit::SandboxExtensionHandle,0ul,WTF::CrashOnOverflow,16ul>::encode<IPC::Encoder,WTF::Vector<WebKit::SandboxExtensionHandle,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>(v8, *a2);
  LOBYTE(v16) = 0;
  v17 = 0;
  v10 = WebKit::AuxiliaryProcessProxy::sendMessage(a1, &v18, a4, &v16, 1);
  if (v17 == 1)
  {
    v11 = v16;
    v16 = 0;
    if (v11)
    {
      (*(*v11 + 8))(v11);
    }
  }

  v12 = v18;
  v18 = 0;
  if (v12)
  {
    IPC::Encoder::~Encoder(v12, v9);
    bmalloc::api::tzoneFree(v14, v15);
  }

  return v10;
}

void sub_19DD335EC(_Unwind_Exception *exception_object, void *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, IPC::Encoder *a12)
{
  if (a11 == 1 && a9)
  {
    (*(*a9 + 8))(a9);
  }

  if (a12)
  {
    IPC::Encoder::~Encoder(a12, a2);
    bmalloc::api::tzoneFree(v13, v14);
  }

  _Unwind_Resume(exception_object);
}

uint64_t WebKit::WebProcessProxy::fontdMachExtensionHandles@<X0>(uint64_t this@<X0>, uint64_t a2@<X8>)
{
  v10[2] = *MEMORY[0x1E69E9840];
  v3 = *(this + 815);
  *(this + 815) = 1;
  if (v3 == 1)
  {
    v4 = 0;
    *a2 = 0;
  }

  else
  {
    v10[0] = "com.apple.fonts";
    v10[1] = 16;
    WebKit::WebProcessProxy::auditToken(this, v9);
    WebKit::SandboxExtension::createHandlesForMachLookup(v10, 1uLL, v9, 1, &v7);
    *a2 = v7;
    v5 = v8;
    v7 = 0;
    v8 = 0;
    *(a2 + 8) = v5;
    this = WTF::Vector<WebKit::SandboxExtensionHandle,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v7, v6);
    v4 = 1;
  }

  *(a2 + 16) = v4;
  return this;
}

void WebKit::WebProcessProxy::createServiceWorkerDebuggable(uint64_t a1, uint64_t a2, WTF::StringImpl **a3, uint64_t a4, WTF::RefCountedBase *a5)
{
  v36 = *MEMORY[0x1E69E9840];
  if (!WebKit::WebProcessProxy::checkURLReceivedFromWebProcess(a1, a3, 1))
  {
    v32 = qword_1ED6416C8;
    if (os_log_type_enabled(qword_1ED6416C8, OS_LOG_TYPE_FAULT))
    {
      v34 = 136446210;
      v35 = "void WebKit::WebProcessProxy::createServiceWorkerDebuggable(WebCore::ServiceWorkerIdentifier, URL &&, WebCore::ServiceWorkerIsInspectable, CompletionHandler<void (BOOL)> &&)";
      _os_log_fault_impl(&dword_19D52D000, v32, OS_LOG_TYPE_FAULT, "/Library/Caches/com.apple.xbs/Sources/WebKit/Source/WebKit/UIProcess/Cocoa/WebProcessProxyCocoa.mm 289: Invalid message dispatched %{public}s", &v34, 0xCu);
    }

    v33 = *(a1 + 88);
    if (!v33 || (*(v33 + 94) = 1, IPC::s_shouldCrashOnMessageCheckFailure == 1))
    {
      __break(0xC471u);
      JUMPOUT(0x19DD33A04);
    }

    return;
  }

  v9 = qword_1ED640C20;
  if (os_log_type_enabled(qword_1ED640C20, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v34) = 0;
    _os_log_impl(&dword_19D52D000, v9, OS_LOG_TYPE_DEFAULT, "WebProcessProxy::createServiceWorkerDebuggable", &v34, 2u);
  }

  if (!CFPreferencesGetAppIntegerValue(@"RemoteInspectorEnabled", @"com.apple.webinspectord", 0))
  {
    if (*a5)
    {
      WTF::CompletionHandler<void ()(BOOL)>::operator()(a5, 0);
    }

    return;
  }

  v11 = WebKit::ServiceWorkerDebuggableProxy::operator new(0x40, v10);
  WebKit::ServiceWorkerDebuggableProxy::ServiceWorkerDebuggableProxy(v11, a3, a2, a1);
  if (a2 == -1)
  {
    __break(0xC471u);
    JUMPOUT(0x19DD33A68);
  }

  if (!a2)
  {
    __break(0xC471u);
    JUMPOUT(0x19DD33A88);
  }

  v13 = (a1 + 1232);
  v14 = *v13;
  if (!*v13)
  {
    WTF::HashTable<WTF::ObjectIdentifierGeneric<WebCore::ServiceWorkerIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::ServiceWorkerIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::ServiceWorkerDebuggableProxy,WTF::RawPtrTraits<WebKit::ServiceWorkerDebuggableProxy>,WTF::DefaultRefDerefTraits<WebKit::ServiceWorkerDebuggableProxy>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::ServiceWorkerIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::ServiceWorkerDebuggableProxy,WTF::RawPtrTraits<WebKit::ServiceWorkerDebuggableProxy>,WTF::DefaultRefDerefTraits<WebKit::ServiceWorkerDebuggableProxy>>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ServiceWorkerIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::ServiceWorkerIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::ServiceWorkerDebuggableProxy,WTF::RawPtrTraits<WebKit::ServiceWorkerDebuggableProxy>,WTF::DefaultRefDerefTraits<WebKit::ServiceWorkerDebuggableProxy>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ServiceWorkerIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::ServiceWorkerIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::Ref<WebKit::ServiceWorkerDebuggableProxy,WTF::RawPtrTraits<WebKit::ServiceWorkerDebuggableProxy>,WTF::DefaultRefDerefTraits<WebKit::ServiceWorkerDebuggableProxy>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::ServiceWorkerIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::expand(v13);
    v14 = *v13;
  }

  v15 = *(v14 - 8);
  v16 = (~(a2 << 32) + a2) ^ ((~(a2 << 32) + a2) >> 22);
  v17 = 9 * ((v16 + ~(v16 << 13)) ^ ((v16 + ~(v16 << 13)) >> 8));
  v18 = (v17 ^ (v17 >> 15)) + ~((v17 ^ (v17 >> 15)) << 27);
  v19 = v15 & ((v18 >> 31) ^ v18);
  v20 = (v14 + 16 * v19);
  v21 = *v20;
  if (*v20)
  {
    v22 = 0;
    v23 = 1;
    while (v21 != a2)
    {
      if (v21 == -1)
      {
        v22 = v20;
      }

      v19 = (v19 + v23) & v15;
      v20 = (v14 + 16 * v19);
      v21 = *v20;
      ++v23;
      if (!*v20)
      {
        if (v22)
        {
          *v22 = 0;
          v22[1] = 0;
          --*(*v13 - 16);
          v20 = v22;
        }

        goto LABEL_17;
      }
    }

    goto LABEL_32;
  }

LABEL_17:
  *v20 = a2;
  while (1)
  {
    v24 = *(v11 + 8);
    if ((v24 & 1) == 0)
    {
      break;
    }

    v25 = *(v11 + 8);
    atomic_compare_exchange_strong_explicit((v11 + 8), &v25, v24 + 2, memory_order_relaxed, memory_order_relaxed);
    if (v25 == v24)
    {
      goto LABEL_24;
    }
  }

  WTF::ThreadSafeWeakPtrControlBlock::strongRef(*(v11 + 8));
LABEL_24:
  v26 = v20[1];
  v20[1] = v11;
  if (v26)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<Inspector::RemoteControllableTarget,(WTF::DestructionThread)0>::deref((v26 + 8), v12);
  }

  v27 = *v13;
  if (*v13)
  {
    v28 = *(v27 - 12) + 1;
  }

  else
  {
    v28 = 1;
  }

  *(v27 - 12) = v28;
  v29 = (*(v27 - 16) + v28);
  v30 = *(v27 - 4);
  if (v30 > 0x400)
  {
    if (v30 > 2 * v29)
    {
      goto LABEL_32;
    }

    goto LABEL_31;
  }

  if (3 * v30 <= 4 * v29)
  {
LABEL_31:
    WTF::HashTable<WTF::ObjectIdentifierGeneric<WebCore::ServiceWorkerIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::ServiceWorkerIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::ServiceWorkerDebuggableProxy,WTF::RawPtrTraits<WebKit::ServiceWorkerDebuggableProxy>,WTF::DefaultRefDerefTraits<WebKit::ServiceWorkerDebuggableProxy>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::ServiceWorkerIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::ServiceWorkerDebuggableProxy,WTF::RawPtrTraits<WebKit::ServiceWorkerDebuggableProxy>,WTF::DefaultRefDerefTraits<WebKit::ServiceWorkerDebuggableProxy>>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ServiceWorkerIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::ServiceWorkerIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::ServiceWorkerDebuggableProxy,WTF::RawPtrTraits<WebKit::ServiceWorkerDebuggableProxy>,WTF::DefaultRefDerefTraits<WebKit::ServiceWorkerDebuggableProxy>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ServiceWorkerIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::ServiceWorkerIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::Ref<WebKit::ServiceWorkerDebuggableProxy,WTF::RawPtrTraits<WebKit::ServiceWorkerDebuggableProxy>,WTF::DefaultRefDerefTraits<WebKit::ServiceWorkerDebuggableProxy>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::ServiceWorkerIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::expand(v13);
  }

LABEL_32:
  Inspector::RemoteControllableTarget::init(v11);
  Inspector::RemoteInspectionTarget::setInspectable(v11);
  if (*a5)
  {
    WTF::CompletionHandler<void ()(BOOL)>::operator()(a5, *(v11 + 20));
  }

  else if (!v11)
  {
    return;
  }

  WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<Inspector::RemoteControllableTarget,(WTF::DestructionThread)0>::deref((v11 + 8), v31);
}

void sub_19DD33AAC(_Unwind_Exception *exception_object, void *a2)
{
  if (v2)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<Inspector::RemoteControllableTarget,(WTF::DestructionThread)0>::deref((v2 + 8), a2);
  }

  _Unwind_Resume(exception_object);
}

_DWORD *WebKit::WebProcessProxy::deleteServiceWorkerDebuggable(uint64_t a1, uint64_t a2)
{
  v4 = qword_1ED640C20;
  if (os_log_type_enabled(qword_1ED640C20, OS_LOG_TYPE_DEFAULT))
  {
    *v22 = 0;
    _os_log_impl(&dword_19D52D000, v4, OS_LOG_TYPE_DEFAULT, "WebProcessProxy::deleteServiceWorkerDebuggable", v22, 2u);
  }

  result = CFPreferencesGetAppIntegerValue(@"RemoteInspectorEnabled", @"com.apple.webinspectord", 0);
  if (result)
  {
    v7 = *(a1 + 1232);
    if (v7)
    {
      if (a2 == -1 || !a2)
      {
        __break(0xC471u);
        JUMPOUT(0x19DD33C78);
      }

      v8 = *(v7 - 8);
      v9 = (~(a2 << 32) + a2) ^ ((~(a2 << 32) + a2) >> 22);
      v10 = 9 * ((v9 + ~(v9 << 13)) ^ ((v9 + ~(v9 << 13)) >> 8));
      v11 = (v10 ^ (v10 >> 15)) + ~((v10 ^ (v10 >> 15)) << 27);
      v12 = v8 & ((v11 >> 31) ^ v11);
      v13 = *(v7 + 16 * v12);
      if (v13 != a2)
      {
        v14 = 1;
        while (v13)
        {
          v12 = (v12 + v14) & v8;
          v13 = *(v7 + 16 * v12);
          ++v14;
          if (v13 == a2)
          {
            goto LABEL_13;
          }
        }

        v12 = *(v7 - 4);
      }

LABEL_13:
      if (v12 != *(v7 - 4))
      {
        v15 = (a1 + 1232);
        v16 = (v7 + 16 * v12);
        v17 = v16[1];
        *v16 = -1;
        v16[1] = 0;
        if (v17)
        {
          result = WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<Inspector::RemoteControllableTarget,(WTF::DestructionThread)0>::deref((v17 + 8), v6);
        }

        v18 = *v15;
        v19 = vadd_s32(*(*v15 - 16), 0xFFFFFFFF00000001);
        *(v18 - 16) = v19;
        v20 = *(v18 - 4);
        if (6 * v19.i32[1] < v20 && v20 >= 9)
        {
          return WTF::HashTable<WTF::ObjectIdentifierGeneric<WebCore::ServiceWorkerIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::ServiceWorkerIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::ServiceWorkerDebuggableProxy,WTF::RawPtrTraits<WebKit::ServiceWorkerDebuggableProxy>,WTF::DefaultRefDerefTraits<WebKit::ServiceWorkerDebuggableProxy>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::ServiceWorkerIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::ServiceWorkerDebuggableProxy,WTF::RawPtrTraits<WebKit::ServiceWorkerDebuggableProxy>,WTF::DefaultRefDerefTraits<WebKit::ServiceWorkerDebuggableProxy>>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ServiceWorkerIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::ServiceWorkerIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::ServiceWorkerDebuggableProxy,WTF::RawPtrTraits<WebKit::ServiceWorkerDebuggableProxy>,WTF::DefaultRefDerefTraits<WebKit::ServiceWorkerDebuggableProxy>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ServiceWorkerIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::ServiceWorkerIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::Ref<WebKit::ServiceWorkerDebuggableProxy,WTF::RawPtrTraits<WebKit::ServiceWorkerDebuggableProxy>,WTF::DefaultRefDerefTraits<WebKit::ServiceWorkerDebuggableProxy>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::ServiceWorkerIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::rehash(v15, v20 >> 1);
        }
      }
    }
  }

  return result;
}

atomic_uchar **WebKit::WebProcessProxy::sendMessageToInspector(uint64_t a1, uint64_t a2, const WTF::String *a3)
{
  v6 = qword_1ED640C20;
  if (os_log_type_enabled(qword_1ED640C20, OS_LOG_TYPE_DEFAULT))
  {
    *v23 = 0;
    _os_log_impl(&dword_19D52D000, v6, OS_LOG_TYPE_DEFAULT, "WebProcessProxy::sendMessageToInspector", v23, 2u);
  }

  result = CFPreferencesGetAppIntegerValue(@"RemoteInspectorEnabled", @"com.apple.webinspectord", 0);
  if (result)
  {
    if (a2 == -1 || !a2)
    {
      __break(0xC471u);
      JUMPOUT(0x19DD33E24);
    }

    v8 = *(a1 + 1232);
    if (v8)
    {
      v9 = *(v8 - 8);
      v10 = (~(a2 << 32) + a2) ^ ((~(a2 << 32) + a2) >> 22);
      v11 = 9 * ((v10 + ~(v10 << 13)) ^ ((v10 + ~(v10 << 13)) >> 8));
      v12 = (v11 ^ (v11 >> 15)) + ~((v11 ^ (v11 >> 15)) << 27);
      v13 = v9 & ((v12 >> 31) ^ v12);
      v14 = *(v8 + 16 * v13);
      if (v14 == a2)
      {
LABEL_11:
        v16 = *(v8 + 16 * v13 + 8);
        if (v16)
        {
          v17 = (v16 + 8);
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
              goto LABEL_17;
            }
          }

          result = WTF::ThreadSafeWeakPtrControlBlock::strongRef(*v17);
LABEL_17:
          v20 = *(v16 + 16);
          v21 = Inspector::RemoteInspector::singleton(result);
          Inspector::RemoteInspector::sendMessageToRemote(v21, v20, a3);
          return WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<Inspector::RemoteControllableTarget,(WTF::DestructionThread)0>::deref(v17, v22);
        }
      }

      else
      {
        v15 = 1;
        while (v14)
        {
          v13 = (v13 + v15) & v9;
          v14 = *(v8 + 16 * v13);
          ++v15;
          if (v14 == a2)
          {
            goto LABEL_11;
          }
        }
      }
    }
  }

  return result;
}

uint64_t WebKit::WebProcessProxy::platformResumeProcess(uint64_t this)
{
  if (*(this + 1081) == 1)
  {
    v1 = this;
    *(this + 1081) = 0;
    v2 = *(*(this + 160) + 8);
    if (v2)
    {
      atomic_fetch_add((v2 + 16), 1u);
      WebKit::ProcessThrottler::setShouldTakeNearSuspendedAssertion((this + 144), 1);

      return WebKit::ProcessThrottler::deref((v1 + 144));
    }

    else
    {
      this = 92;
      __break(0xC471u);
    }
  }

  return this;
}

uint64_t WebKit::WebProcessProxy::platformSuspendProcess(WebKit::WebProcessProxy *this)
{
  v2 = *(this + 21);
  if (v2)
  {
    LOBYTE(v2) = *(v2 + 16) == 0;
  }

  *(this + 1081) = v2;
  v3 = *(*(this + 20) + 8);
  if (v3)
  {
    atomic_fetch_add((v3 + 16), 1u);
    WebKit::ProcessThrottler::setShouldTakeNearSuspendedAssertion(this + 36, 0);

    return WebKit::ProcessThrottler::deref((this + 144));
  }

  else
  {
    result = 92;
    __break(0xC471u);
  }

  return result;
}

uint64_t WebKit::WebURLSchemeHandlerCocoa::create@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = WTF::fastMalloc(0x38);
  result = WebKit::WebURLSchemeHandlerCocoa::WebURLSchemeHandlerCocoa(v4, a1);
  *a2 = v4;
  return result;
}

uint64_t WebKit::WebURLSchemeHandlerCocoa::WebURLSchemeHandlerCocoa(uint64_t a1, void *a2)
{
  *(a1 + 8) = 1;
  *(a1 + 16) = WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>::generateIdentifierInternal();
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  *a1 = &unk_1F1105F10;
  *(a1 + 48) = a2;
  if (a2)
  {
    v4 = a2;
  }

  return a1;
}

void WebKit::WebURLSchemeHandlerCocoa::platformStartTask(uint64_t a1, WebKit::WebPageProxy *this, uint64_t a3)
{
  v7 = *(a3 + 8);
  if (v7)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      __break(0xC471u);
      return;
    }

    v5 = v7;
  }

  WebKit::WebPageProxy::cocoaView(this, &v8);
  v6 = v8;
  if (v8)
  {
    [*(a1 + 48) webView:v8 startURLSchemeTask:v7];
  }

  if (v7)
  {
  }
}

void sub_19DD34144(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, id a9)
{
  if (a9)
  {
  }

  _Unwind_Resume(a1);
}

void WebKit::WebURLSchemeHandlerCocoa::platformStopTask(uint64_t a1, WebKit::WebPageProxy *this, uint64_t a3)
{
  v8 = *(a3 + 8);
  if (v8)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      __break(0xC471u);
      return;
    }

    v6 = v8;
  }

  WebKit::WebPageProxy::cocoaView(this, &v9);
  v7 = v9;
  if (v9)
  {
    [*(a1 + 48) webView:v9 stopURLSchemeTask:v8];
  }

  else
  {
    *(a3 + 269) = 1;
  }

  if (v8)
  {
  }
}

void sub_19DD34254(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, id a9)
{
  if (a9)
  {
  }

  _Unwind_Resume(a1);
}

void WebKit::WebURLSchemeHandlerCocoa::~WebURLSchemeHandlerCocoa(WebKit::WebURLSchemeHandlerCocoa *this, void *a2)
{
  *this = &unk_1F1105F10;
  v3 = *(this + 6);
  *(this + 6) = 0;
  if (v3)
  {
  }

  WebKit::WebURLSchemeHandler::~WebURLSchemeHandler(this, a2);
}

{
  *this = &unk_1F1105F10;
  v3 = *(this + 6);
  *(this + 6) = 0;
  if (v3)
  {
  }

  WebKit::WebURLSchemeHandler::~WebURLSchemeHandler(this, a2);

  WTF::fastFree(v4, v5);
}

uint64_t WTF::Vector<WebCore::PasteboardItemInfo,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(uint64_t a1, void *a2)
{
  v3 = *(a1 + 12);
  if (v3)
  {
    v4 = *a1;
    v5 = 120 * v3;
    do
    {
      WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v4 + 96, a2);
      v7 = *(v4 + 48);
      *(v4 + 48) = 0;
      if (v7 && atomic_fetch_add_explicit(v7, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v7, v6);
      }

      WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v4 + 32, v6);
      WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v4 + 16, v8);
      WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v4, v9);
      v4 += 120;
      v5 -= 120;
    }

    while (v5);
  }

  v10 = *a1;
  if (*a1)
  {
    *a1 = 0;
    *(a1 + 8) = 0;
    WTF::fastFree(v10, a2);
  }

  return a1;
}

uint64_t WTF::Vector<std::pair<WTF::WeakPtr<WebKit::WebProcessProxy,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>,WebKit::WebPasteboardProxy::PasteboardAccessType>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::operator=(uint64_t a1, unsigned int *a2)
{
  if (a2 != a1)
  {
    v4 = *(a1 + 12);
    v5 = a2[3];
    if (v4 <= v5)
    {
      v6 = *(a1 + 8);
      if (v5 > v6)
      {
        if (v6)
        {
          if (v4)
          {
            WTF::VectorDestructor<true,std::pair<WTF::WeakPtr<WebKit::WebProcessProxy,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>,WebKit::WebPasteboardProxy::PasteboardAccessType>>::destruct(*a1, (*a1 + 16 * v4));
            *(a1 + 12) = 0;
          }

          v7 = *a1;
          if (*a1)
          {
            *a1 = 0;
            *(a1 + 8) = 0;
            WTF::fastFree(v7, a2);
          }
        }

        WTF::Vector<std::pair<WTF::WeakPtr<WebKit::WebProcessProxy,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>,WebKit::WebPasteboardProxy::PasteboardAccessType>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::reserveCapacity<(WTF::FailureAction)0>(a1, a2[3]);
        LODWORD(v4) = *(a1 + 12);
      }
    }

    else
    {
      WTF::VectorDestructor<true,std::pair<WTF::WeakPtr<WebKit::WebProcessProxy,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>,WebKit::WebPasteboardProxy::PasteboardAccessType>>::destruct((*a1 + 16 * v5), (*a1 + 16 * v4));
      *(a1 + 12) = v5;
      LODWORD(v4) = v5;
    }

    v8 = *a2;
    v9 = *a1;
    if (v4)
    {
      v10 = v8 + 16 * v4;
      do
      {
        v11 = *v8;
        if (*v8)
        {
          atomic_fetch_add(v11, 1u);
        }

        v12 = *v9;
        *v9 = v11;
        if (v12 && atomic_fetch_add(v12, 0xFFFFFFFF) == 1)
        {
          atomic_store(1u, v12);
          WTF::fastFree(v12, a2);
        }

        *(v9 + 8) = *(v8 + 8);
        v8 += 16;
        v9 += 4;
      }

      while (v8 != v10);
      v8 = *a2;
      LODWORD(v4) = *(a1 + 12);
      v9 = *a1;
    }

    v13 = a2[3];
    if (v4 != v13)
    {
      v14 = v8 + 16 * v13;
      v15 = &v9[4 * v4];
      v16 = v8 + 16 * v4;
      do
      {
        v17 = *v16;
        if (*v16)
        {
          atomic_fetch_add(v17, 1u);
        }

        *v15 = v17;
        *(v15 + 8) = *(v16 + 8);
        v15 += 4;
        v16 += 16;
      }

      while (v16 != v14);
      LODWORD(v4) = a2[3];
    }

    *(a1 + 12) = v4;
  }

  return a1;
}

unsigned int *WTF::VectorDestructor<true,std::pair<WTF::WeakPtr<WebKit::WebProcessProxy,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>,WebKit::WebPasteboardProxy::PasteboardAccessType>>::destruct(unsigned int *result, void *a2)
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
        if (atomic_fetch_add(result, 0xFFFFFFFF) == 1)
        {
          atomic_store(1u, result);
          result = WTF::fastFree(result, a2);
        }
      }

      v3 += 2;
    }

    while (v3 != a2);
  }

  return result;
}

unsigned int *WTF::VectorMover<false,std::pair<WTF::WeakPtr<WebKit::WebProcessProxy,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>,WebKit::WebPasteboardProxy::PasteboardAccessType>>::move(unsigned int *result, unsigned int *a2, uint64_t a3)
{
  if (result != a2)
  {
    v5 = result;
    do
    {
      v6 = *v5;
      *v5 = 0;
      *a3 = v6;
      *(a3 + 8) = *(v5 + 8);
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

      a3 += 16;
      v5 += 4;
    }

    while (v5 != a2);
  }

  return result;
}

unsigned int *WTF::Vector<std::pair<WTF::WeakPtr<WebKit::WebProcessProxy,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>,WebKit::WebPasteboardProxy::PasteboardAccessType>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::reserveCapacity<(WTF::FailureAction)0>(unsigned int *result, unint64_t a2)
{
  if (result[2] < a2)
  {
    v2 = a2;
    if (a2 >> 28)
    {
      __break(0xC471u);
    }

    else
    {
      v3 = result;
      v4 = *result;
      v5 = (*result + 16 * result[3]);
      v6 = WTF::fastMalloc((16 * a2));
      v3[2] = v2;
      *v3 = v6;
      result = WTF::VectorMover<false,std::pair<WTF::WeakPtr<WebKit::WebProcessProxy,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>,WebKit::WebPasteboardProxy::PasteboardAccessType>>::move(v4, v5, v6);
      if (v4)
      {
        if (*v3 == v4)
        {
          *v3 = 0;
          v3[2] = 0;
        }

        return WTF::fastFree(v4, v7);
      }
    }
  }

  return result;
}

void *WTF::Detail::CallableWrapper<WebKit::WebProcessPool::setMediaAccessibilityPreferences(WebKit::WebProcessProxy &)::$_0::operator() const(void)::{lambda(void)#1},void>::~CallableWrapper(void *a1, void *a2)
{
  *a1 = &unk_1F1105F58;
  WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector((a1 + 3), a2);
  v4 = a1[1];
  a1[1] = 0;
  if (v4 && atomic_fetch_add(v4, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v4);
    WTF::fastFree(v4, v3);
  }

  return a1;
}

uint64_t WTF::HashTable<WebCore::RegistrableDomain,WTF::KeyValuePair<WebCore::RegistrableDomain,WTF::String>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebCore::RegistrableDomain,WTF::String>>,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashMap<WebCore::RegistrableDomain,WTF::String,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::FastMalloc>::begin(uint64_t *a1, uint64_t a2, const WTF::StringImpl *a3)
{
  v3 = *a1;
  if (!*a1)
  {
    return 0;
  }

  if (*(v3 - 12))
  {
    return WTF::HashTable<WebCore::RegistrableDomain,WTF::KeyValuePair<WebCore::RegistrableDomain,WTF::String>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebCore::RegistrableDomain,WTF::String>>,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashMap<WebCore::RegistrableDomain,WTF::String,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::FastMalloc>::makeConstIterator(a1, v3, a3);
  }

  return v3 + 16 * *(v3 - 4);
}

uint64_t WTF::HashTable<WebCore::RegistrableDomain,WTF::KeyValuePair<WebCore::RegistrableDomain,WTF::String>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebCore::RegistrableDomain,WTF::String>>,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashMap<WebCore::RegistrableDomain,WTF::String,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::FastMalloc>::makeConstIterator(uint64_t *a1, uint64_t a2, const WTF::StringImpl *a3)
{
  v5 = *a1;
  if (*a1)
  {
    v6 = *(v5 - 4);
  }

  else
  {
    v6 = 0;
  }

  v8[2] = v3;
  v8[3] = v4;
  v8[0] = a2;
  v8[1] = v5 + 16 * v6;
  WTF::HashTableConstIterator<WTF::HashTable<WebCore::RegistrableDomain,WTF::KeyValuePair<WebCore::RegistrableDomain,WTF::String>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebCore::RegistrableDomain,WTF::String>>,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashMap<WebCore::RegistrableDomain,WTF::String,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::FastMalloc>,WebCore::RegistrableDomain,WTF::KeyValuePair<WebCore::RegistrableDomain,WTF::String>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebCore::RegistrableDomain,WTF::String>>,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashMap<WebCore::RegistrableDomain,WTF::String,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WebCore::RegistrableDomain>>::skipEmptyBuckets(v8, a2, a3);
  return v8[0];
}

uint64_t WTF::Vector<WebKit::ScriptTrackingPrivacyHost,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::operator=(uint64_t a1, uint64_t *a2)
{
  if (a2 != a1)
  {
    v4 = *(a1 + 12);
    v5 = *(a2 + 3);
    if (v4 <= v5)
    {
      if (v5 > *(a1 + 8))
      {
        WTF::Vector<WebKit::ScriptTrackingPrivacyHost,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::shrinkCapacity(a1, 0);
        WTF::Vector<WebKit::ScriptTrackingPrivacyHost,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::reserveCapacity<(WTF::FailureAction)0>(a1, *(a2 + 3));
        LODWORD(v4) = *(a1 + 12);
      }
    }

    else
    {
      WTF::VectorDestructor<true,WebKit::ScriptTrackingPrivacyHost>::destruct((*a1 + 16 * v5), (*a1 + 16 * v4));
      *(a1 + 12) = v5;
      LODWORD(v4) = v5;
    }

    v6 = *a2;
    v7 = *a1;
    if (v4)
    {
      v8 = v6 + 16 * v4;
      do
      {
        WTF::String::operator=(v7, v6);
        *(v7 + 8) = *(v6 + 8);
        v6 += 16;
        v7 += 16;
      }

      while (v6 != v8);
      v6 = *a2;
      LODWORD(v4) = *(a1 + 12);
      v7 = *a1;
    }

    v9 = *(a2 + 3);
    if (v4 != v9)
    {
      v10 = v6 + 16 * v9;
      v11 = v7 + 16 * v4;
      v12 = v6 + 16 * v4;
      do
      {
        v13 = *v12;
        if (*v12)
        {
          atomic_fetch_add_explicit(v13, 2u, memory_order_relaxed);
        }

        *v11 = v13;
        *(v11 + 8) = *(v12 + 8);
        v11 += 16;
        v12 += 16;
      }

      while (v12 != v10);
      LODWORD(v4) = *(a2 + 3);
    }

    *(a1 + 12) = v4;
  }

  return a1;
}

void *WTF::Detail::CallableWrapper<WebKit::WebProcessPool::initializeHardwareKeyboardAvailability(void)::$_0::operator() const(void)::{lambda(void)#1},void>::~CallableWrapper(void *a1, void *a2)
{
  v3 = a1[1];
  *a1 = &unk_1F1105FA0;
  a1[1] = 0;
  if (v3 && atomic_fetch_add(v3, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v3);
    WTF::fastFree(v3, a2);
  }

  return a1;
}

void *WTF::Detail::CallableWrapper<WebKit::WebProcessPool::registerNotificationObservers(void)::$_2,void,BOOL>::~CallableWrapper(void *a1, void *a2)
{
  v3 = a1[1];
  *a1 = &unk_1F1105FC8;
  a1[1] = 0;
  if (v3 && atomic_fetch_add(v3, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v3);
    WTF::fastFree(v3, a2);
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WebKit::WebProcessPool::registerNotificationObservers(void)::$_2,void,BOOL>::~CallableWrapper(WTF *this, void *a2)
{
  v3 = *(this + 1);
  *this = &unk_1F1105FC8;
  *(this + 1) = 0;
  if (v3 && atomic_fetch_add(v3, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v3);
    WTF::fastFree(v3, a2);
  }

  return WTF::fastFree(this, a2);
}

uint64_t WTF::BlockPtr<void ()(WKContentRuleList *,NSError *)>::fromCallable<WebKit::WebProcessPool::platformCompileResourceMonitorRuleList(WTF::String const&,WTF::CompletionHandler<void ()(WTF::RefPtr<WebKit::WebCompiledContentRuleList,WTF::RawPtrTraits<WebKit::WebCompiledContentRuleList>,WTF::DefaultRefDerefTraits<WebKit::WebCompiledContentRuleList>>)> &&)::$_0>(WebKit::WebProcessPool::platformCompileResourceMonitorRuleList(WTF::String const&,WTF::CompletionHandler<void ()(WTF::RefPtr<WebKit::WebCompiledContentRuleList,WTF::RawPtrTraits<WebKit::WebCompiledContentRuleList>,WTF::DefaultRefDerefTraits<WebKit::WebCompiledContentRuleList>>)> &&)::$_0)::{lambda(void const*)#1}::__invoke(uint64_t a1)
{
  result = *(a1 + 32);
  *(a1 + 32) = 0;
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

unsigned int *WTF::BlockPtr<void ()(WKContentRuleList *,NSError *)>::fromCallable<WebKit::WebProcessPool::platformCompileResourceMonitorRuleList(WTF::String const&,WTF::CompletionHandler<void ()(WTF::RefPtr<WebKit::WebCompiledContentRuleList,WTF::RawPtrTraits<WebKit::WebCompiledContentRuleList>,WTF::DefaultRefDerefTraits<WebKit::WebCompiledContentRuleList>>)> &&)::$_0>(WebKit::WebProcessPool::platformCompileResourceMonitorRuleList(WTF::String const&,WTF::CompletionHandler<void ()(WTF::RefPtr<WebKit::WebCompiledContentRuleList,WTF::RawPtrTraits<WebKit::WebCompiledContentRuleList>,WTF::DefaultRefDerefTraits<WebKit::WebCompiledContentRuleList>>)> &&)::$_0)::{lambda(void *,WKContentRuleList *,NSError *)#1}::__invoke(uint64_t a1, WKContentRuleList *a2, uint64_t a3)
{
  if (!a2 || a3)
  {
    v5 = qword_1ED641148;
    if (os_log_type_enabled(qword_1ED641148, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_19D52D000, v5, OS_LOG_TYPE_ERROR, "Failed to compile test urls", buf, 2u);
    }
  }

  WebKit::createCompiledContentRuleList(&v7, a2);
  WTF::CompletionHandler<void ()(WTF::RefPtr<WebKit::WebCompiledContentRuleList,WTF::RawPtrTraits<WebKit::WebCompiledContentRuleList>,WTF::DefaultRefDerefTraits<WebKit::WebCompiledContentRuleList>>)>::operator()((a1 + 32), &v7);
  result = v7;
  v7 = 0;
  if (result)
  {
    if (atomic_fetch_add(result + 2, 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, result + 2);
      return (*(*result + 8))(result);
    }
  }

  return result;
}

void sub_19DD34B80(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, unsigned int *a10)
{
  if (a10)
  {
    if (atomic_fetch_add(a10 + 2, 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, a10 + 2);
      (*(*a10 + 8))(a10);
    }
  }

  _Unwind_Resume(exception_object);
}

uint64_t WTF::CompletionHandler<void ()(WTF::RefPtr<WebKit::WebCompiledContentRuleList,WTF::RawPtrTraits<WebKit::WebCompiledContentRuleList>,WTF::DefaultRefDerefTraits<WebKit::WebCompiledContentRuleList>>)>::operator()(uint64_t *a1, unsigned int **a2)
{
  v2 = *a1;
  *a1 = 0;
  v3 = *a2;
  *a2 = 0;
  v6 = v3;
  (*(*v2 + 16))(v2, &v6);
  v4 = v6;
  v6 = 0;
  if (v4 && atomic_fetch_add(v4 + 2, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v4 + 2);
    (*(*v4 + 8))(v4);
  }

  return (*(*v2 + 8))(v2);
}

void sub_19DD34CB0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, unsigned int *a10)
{
  if (a10)
  {
    if (atomic_fetch_add(a10 + 2, 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, a10 + 2);
      (*(*a10 + 8))(a10);
    }
  }

  (*(*v10 + 8))(v10);
  _Unwind_Resume(a1);
}

uint64_t *WebKit::createCompiledContentRuleList(uint64_t *this, WKContentRuleList *a2)
{
  if (a2)
  {
    v2 = *&a2->_contentRuleList.m_storage.data[16];
    v3 = *(v2 + 16);
    if (v3)
    {
      atomic_fetch_add_explicit(v3, 2u, memory_order_relaxed);
    }

    v8 = v3;
    v4 = *(v2 + 24);
    if (v4)
    {
      atomic_fetch_add(v4, 1u);
    }

    v9 = v4;
    v5 = *(v2 + 48);
    v10 = *(v2 + 32);
    v11 = v5;
    v6 = *(v2 + 80);
    v12 = *(v2 + 64);
    v13 = v6;
    WebKit::WebCompiledContentRuleList::create(&v8, this);
    if (v9)
    {
      WTF::ThreadSafeRefCounted<WebCore::SharedMemory,(WTF::DestructionThread)0>::deref(v9);
    }

    this = v8;
    if (v8)
    {
      if (atomic_fetch_add_explicit(v8, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        return WTF::StringImpl::destroy(this, v7);
      }
    }
  }

  else
  {
    *this = 0;
  }

  return this;
}

WTF *WTF::BlockPtr<BOOL ()(CTFontDescriptorMatchingState,__CFDictionary const*)>::fromCallable<WebKit::WebProcessPool::registerAssetFonts(WebKit::WebProcessProxy &)::$_0>(WebKit::WebProcessPool::registerAssetFonts(WebKit::WebProcessProxy &)::$_0)::{lambda(void const*)#1}::__invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 56);
  *(a1 + 56) = 0;
  if (v3 && atomic_fetch_add(v3, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v3);
    WTF::fastFree(v3, a2);
  }

  v4 = *(a1 + 48);
  *(a1 + 48) = 0;
  if (v4 && atomic_fetch_add(v4, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v4);
    WTF::fastFree(v4, a2);
  }

  result = *(a1 + 32);
  if (result)
  {
    *(a1 + 32) = 0;
    *(a1 + 40) = 0;

    return WTF::fastFree(result, a2);
  }

  return result;
}

uint64_t WTF::BlockPtr<BOOL ()(CTFontDescriptorMatchingState,__CFDictionary const*)>::fromCallable<WebKit::WebProcessPool::registerAssetFonts(WebKit::WebProcessProxy &)::$_0>(WebKit::WebProcessPool::registerAssetFonts(WebKit::WebProcessProxy &)::$_0)::{lambda(void *,CTFontDescriptorMatchingState,__CFDictionary const*)#1}::__invoke(uint64_t a1, int a2, uint64_t a3)
{
  v19[3] = *MEMORY[0x1E69E9840];
  if (a2 != 1)
  {
    return 1;
  }

  v5 = qword_1ED6416A0;
  v6 = os_log_type_enabled(qword_1ED6416A0, OS_LOG_TYPE_DEFAULT);
  if (v6)
  {
    LODWORD(v19[0]) = 138412290;
    *(v19 + 4) = a3;
    _os_log_impl(&dword_19D52D000, v5, OS_LOG_TYPE_DEFAULT, "Font matching finished, progress parameter = %@", v19, 0xCu);
  }

  result = WTF::RunLoop::mainSingleton(v6);
  v8 = *(a1 + 44);
  if (!v8)
  {
    v10 = 0;
LABEL_11:
    v15 = *(a1 + 48);
    if (v15)
    {
      atomic_fetch_add(v15, 1u);
    }

    v16 = *(a1 + 56);
    if (v16)
    {
      atomic_fetch_add(v16, 1u);
    }

    v17 = WTF::fastMalloc(0x28);
    *v17 = &unk_1F1106030;
    *(v17 + 8) = v10;
    *(v17 + 16) = v8;
    *(v17 + 20) = v8;
    *(v17 + 24) = v15;
    *(v17 + 32) = v16;
    v19[0] = v17;
    WTF::RunLoop::dispatch();
    v18 = v19[0];
    v19[0] = 0;
    if (v18)
    {
      (*(*v18 + 8))(v18);
    }

    return 1;
  }

  if (!(v8 >> 28))
  {
    v9 = WTF::fastMalloc((16 * v8));
    v10 = v9;
    v11 = *(a1 + 44);
    if (v11)
    {
      v12 = 0;
      v13 = *(a1 + 32);
      v14 = 16 * v11;
      do
      {
        *(v9 + v12) = *(v13 + v12);
        v12 += 16;
      }

      while (v14 != v12);
    }

    goto LABEL_11;
  }

  __break(0xC471u);
  return result;
}

void sub_19DD35014(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9)
{
  if (a9)
  {
    (*(*a9 + 8))(a9);
  }

  _Unwind_Resume(exception_object);
}

uint64_t WTF::Detail::CallableWrapper<WebKit::WebProcessPool::registerAssetFonts(WebKit::WebProcessProxy &)::$_0::operator() const(CTFontDescriptorMatchingState,__CFDictionary const*)::{lambda(void)#1},void>::~CallableWrapper(uint64_t a1, void *a2)
{
  *a1 = &unk_1F1106030;
  v3 = *(a1 + 32);
  *(a1 + 32) = 0;
  if (v3 && atomic_fetch_add(v3, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v3);
    WTF::fastFree(v3, a2);
  }

  v4 = *(a1 + 24);
  *(a1 + 24) = 0;
  if (v4 && atomic_fetch_add(v4, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v4);
    WTF::fastFree(v4, a2);
  }

  v5 = *(a1 + 8);
  if (v5)
  {
    *(a1 + 8) = 0;
    *(a1 + 16) = 0;
    WTF::fastFree(v5, a2);
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WebKit::WebProcessPool::registerAssetFonts(WebKit::WebProcessProxy &)::$_0::operator() const(CTFontDescriptorMatchingState,__CFDictionary const*)::{lambda(void)#1},void>::~CallableWrapper(WTF *this, void *a2)
{
  *this = &unk_1F1106030;
  v3 = *(this + 4);
  *(this + 4) = 0;
  if (v3 && atomic_fetch_add(v3, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v3);
    WTF::fastFree(v3, a2);
  }

  v4 = *(this + 3);
  *(this + 3) = 0;
  if (v4 && atomic_fetch_add(v4, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v4);
    WTF::fastFree(v4, a2);
  }

  v5 = *(this + 1);
  if (v5)
  {
    *(this + 1) = 0;
    *(this + 4) = 0;
    WTF::fastFree(v5, a2);
  }

  return WTF::fastFree(this, a2);
}

void WTF::Detail::CallableWrapper<WebKit::WebProcessPool::registerAssetFonts(WebKit::WebProcessProxy &)::$_0::operator() const(CTFontDescriptorMatchingState,__CFDictionary const*)::{lambda(void)#1},void>::call(uint64_t a1)
{
  v26 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  if (v1)
  {
    v2 = *(v1 + 8);
    if (v2)
    {
      CFRetain(*(v2 - 8));
      if ((*(v2 + 1128) & 1) == 0)
      {
        v23[0] = 0;
        v23[1] = 0;
        WTF::Vector<WTF::URL,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::Vector((v2 + 1112), v23);
        *(v2 + 1128) = 1;
        WTF::Vector<WTF::URL,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v23, v5);
        v6 = *(a1 + 20);
        if (v6)
        {
          v7 = *(a1 + 8);
          v8 = *MEMORY[0x1E69658E8];
          v9 = 16 * v6;
          while (1)
          {
            *buf = *v7;
            WTF::ASCIILiteral::createCFString(&name, buf);
            v10 = CTFontCreateWithName(name, 0.0, 0);
            v11 = CTFontCopyAttribute(v10, v8);
            MEMORY[0x19EB01DF0](v23, v11);
            if (!v11)
            {
              break;
            }

            CFRelease(v11);
            if (v10)
            {
              goto LABEL_8;
            }

LABEL_9:
            v12 = name;
            name = 0;
            if (v12)
            {
              CFRelease(v12);
            }

            v13 = qword_1ED6416A0;
            if (os_log_type_enabled(qword_1ED6416A0, OS_LOG_TYPE_DEFAULT))
            {
              v14 = *v7;
              WTF::String::utf8();
              v15 = name ? &name->data : 0;
              *buf = 136315394;
              *&buf[4] = v14;
              *&buf[12] = 2080;
              *&buf[14] = v15;
              _os_log_impl(&dword_19D52D000, v13, OS_LOG_TYPE_DEFAULT, "Registering font name %s with url %s", buf, 0x16u);
              v17 = name;
              name = 0;
              if (v17)
              {
                if (*v17 == 1)
                {
                  WTF::fastFree(v17, v16);
                }

                else
                {
                  --*v17;
                }
              }
            }

            if ((*(v2 + 1128) & 1) == 0)
            {
              goto LABEL_36;
            }

            v18 = *(v2 + 1124);
            if (v18 == *(v2 + 1120))
            {
              WTF::Vector<WTF::URL,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::appendSlowCase<(WTF::FailureAction)0,WTF::URL>(v2 + 1112, v23);
            }

            else
            {
              WTF::URL::URL(*(v2 + 1112) + 40 * v18, v23);
              ++*(v2 + 1124);
            }

            v19 = v23[0];
            v23[0] = 0;
            if (v19 && atomic_fetch_add_explicit(v19, 0xFFFFFFFE, memory_order_relaxed) == 2)
            {
              WTF::StringImpl::destroy(v19, v4);
            }

            ++v7;
            v9 -= 16;
            if (!v9)
            {
              goto LABEL_30;
            }
          }

          if (!v10)
          {
            goto LABEL_9;
          }

LABEL_8:
          CFRelease(v10);
          goto LABEL_9;
        }
      }

LABEL_30:
      v20 = *(a1 + 24);
      if (v20)
      {
        v21 = *(v20 + 8);
        if (v21)
        {
          if ((*(v2 + 1128) & 1) == 0)
          {
LABEL_36:
            __break(1u);
          }

          WebKit::WebProcessProxy::auditToken(v21, v23);
          WebKit::AdditionalFonts::additionalFonts(v2 + 1112, v23, buf);
          name = buf;
          WebKit::AuxiliaryProcessProxy::send<Messages::WebProcess::RegisterAdditionalFonts>(v21, &name);
          WTF::Vector<WebKit::FontData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(buf, v22);
        }
      }

      WebKit::WebProcessPool::registerFontsForGPUProcessIfNeeded((v2 - 16), v4);
      CFRelease(*(v2 - 8));
    }
  }
}

void sub_19DD354E4(_Unwind_Exception *a1, void *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, WTF::StringImpl *a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, CFTypeRef cf, char a17)
{
  WTF::Vector<WebKit::FontData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&a17, a2);
  CFRelease(*(v17 - 8));
  _Unwind_Resume(a1);
}

void *WTF::Detail::CallableWrapper<WTF::CompletionHandler<void ()(IPC::Connection*,IPC::Decoder *)> IPC::Connection::makeAsyncReplyCompletionHandler<Messages::NetworkProcess::AllowFilesAccessFromWebProcess,WTF::CompletionHandler<void ()(void)>>(WTF::CompletionHandler<void ()(void)> &&,WTF::ThreadLikeAssertion)::{lambda(IPC::Connection*,IPC::Decoder *)#1},void,IPC::Connection*,IPC::Decoder *>::~CallableWrapper(void *a1)
{
  v2 = a1[1];
  *a1 = &unk_1F1106058;
  a1[1] = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WTF::CompletionHandler<void ()(IPC::Connection*,IPC::Decoder *)> IPC::Connection::makeAsyncReplyCompletionHandler<Messages::NetworkProcess::AllowFilesAccessFromWebProcess,WTF::CompletionHandler<void ()(void)>>(WTF::CompletionHandler<void ()(void)> &&,WTF::ThreadLikeAssertion)::{lambda(IPC::Connection*,IPC::Decoder *)#1},void,IPC::Connection*,IPC::Decoder *>::~CallableWrapper(WTF *this, void *a2)
{
  v3 = *(this + 1);
  *this = &unk_1F1106058;
  *(this + 1) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  return WTF::fastFree(this, a2);
}

uint64_t WTF::HashTable<WTF::String,WTF::KeyValuePair<WTF::String,WebKit::WebPasteboardProxy::PasteboardAccessInformation>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,WebKit::WebPasteboardProxy::PasteboardAccessInformation>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,WebKit::WebPasteboardProxy::PasteboardAccessInformation,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WebKit::WebPasteboardProxy::PasteboardAccessInformation>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::find<WTF::IdentityHashTranslator<WTF::HashMap<WTF::String,WebKit::WebPasteboardProxy::PasteboardAccessInformation,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WebKit::WebPasteboardProxy::PasteboardAccessInformation>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<WTF::String>>,(WTF::ShouldValidateKey)1,WTF::String>(uint64_t *a1, const WTF::StringImpl **a2, const WTF::StringImpl *a3)
{
  v3 = *a1;
  if (!*a1)
  {
    return 0;
  }

  v6 = *a2;
  if (*a2 == -1 || !v6)
  {
    __break(0xC471u);
    JUMPOUT(0x19DD35768);
  }

  v7 = *(v3 - 8);
  v8 = *(v6 + 4);
  if (v8 < 0x100)
  {
    v9 = WTF::StringImpl::hashSlowCase(v6);
  }

  else
  {
    v9 = v8 >> 8;
  }

  for (i = 0; ; v9 = i + v11)
  {
    v11 = v9 & v7;
    v12 = *(v3 + 32 * v11);
    if (v12 == -1)
    {
      goto LABEL_10;
    }

    if (!v12)
    {
      break;
    }

    if (WTF::equal(v12, *a2, a3))
    {
      return v3 + 32 * v11;
    }

LABEL_10:
    ++i;
  }

  if (!*a1)
  {
    return 0;
  }

  return *a1 + 32 * *(*a1 - 4);
}

uint64_t *WTF::Vector<std::pair<WTF::WeakPtr<WebKit::WebProcessProxy,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>,WebKit::WebPasteboardProxy::PasteboardAccessType>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::Vector(uint64_t *result, uint64_t a2, unint64_t a3)
{
  v3 = result;
  *result = 0;
  result[1] = 0;
  if (!a3)
  {
    return v3;
  }

  if (!(a3 >> 28))
  {
    v6 = WTF::fastMalloc((16 * a3));
    *(v3 + 2) = a3;
    *v3 = v6;
    v7 = a2 + 16 * a3;
    v8 = *(v3 + 3);
    do
    {
      v9 = *v3;
      v10 = *a2;
      v11 = v8;
      if (*a2)
      {
        atomic_fetch_add(v10, 1u);
        v11 = *(v3 + 3);
      }

      v12 = v9 + 16 * v8;
      *v12 = v10;
      *(v12 + 8) = *(a2 + 8);
      v8 = v11 + 1;
      *(v3 + 3) = v11 + 1;
      a2 += 16;
    }

    while (a2 != v7);
    return v3;
  }

  __break(0xC471u);
  return result;
}

void sub_19DD35830(_Unwind_Exception *exception_object, void *a2)
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

void WTF::HashTable<WTF::String,WTF::KeyValuePair<WTF::String,WebKit::WebPasteboardProxy::PasteboardAccessInformation>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,WebKit::WebPasteboardProxy::PasteboardAccessInformation>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,WebKit::WebPasteboardProxy::PasteboardAccessInformation,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WebKit::WebPasteboardProxy::PasteboardAccessInformation>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::expand(uint64_t *a1)
{
  v2 = *a1;
  if (*a1)
  {
    v3 = *(v2 - 4);
    v4 = *(v2 - 12);
    if (v3)
    {
      v5 = v3 << (6 * v4 >= (2 * v3));
      goto LABEL_6;
    }
  }

  else
  {
    v3 = 0;
    v4 = 0;
  }

  v5 = 8;
LABEL_6:
  v6 = WTF::fastMalloc(((32 * v5) | 0x10));
  v8 = v6;
  v9 = v6 + 16;
  if (v5)
  {
    bzero((v6 + 16), 32 * v5);
  }

  *a1 = v9;
  v8[2] = v5 - 1;
  v8[3] = v5;
  *v8 = 0;
  v8[1] = v4;
  if (v3)
  {
    v10 = 0;
    while (1)
    {
      v11 = v2 + 32 * v10;
      v12 = *v11;
      if (*v11 != -1)
      {
        if (v12)
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

          v16 = v12[4];
          if (v16 < 0x100)
          {
            v17 = WTF::StringImpl::hashSlowCase(v12);
          }

          else
          {
            v17 = v16 >> 8;
          }

          v18 = 0;
          do
          {
            v19 = v17 & v15;
            v17 = ++v18 + v19;
          }

          while (*(v14 + 32 * v19));
          v20 = v14 + 32 * v19;
          WTF::Vector<std::pair<WTF::WeakPtr<WebKit::WebProcessProxy,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>,WebKit::WebPasteboardProxy::PasteboardAccessType>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v20 + 16, v7);
          v22 = *v20;
          *v20 = 0;
          if (v22 && atomic_fetch_add_explicit(v22, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v22, v21);
          }

          v23 = *v11;
          v24 = *(v11 + 8);
          *v11 = 0;
          *v20 = v23;
          *(v20 + 8) = v24;
          WTF::Vector<std::pair<WTF::WeakPtr<WebKit::WebProcessProxy,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>,WebKit::WebPasteboardProxy::PasteboardAccessType>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::Vector(v20 + 16, (v11 + 16));
          WTF::Vector<std::pair<WTF::WeakPtr<WebKit::WebProcessProxy,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>,WebKit::WebPasteboardProxy::PasteboardAccessType>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v11 + 16, v25);
          v13 = *v11;
          *v11 = 0;
          if (!v13 || atomic_fetch_add_explicit(v13, 0xFFFFFFFE, memory_order_relaxed) != 2)
          {
            goto LABEL_28;
          }
        }

        else
        {
          WTF::Vector<std::pair<WTF::WeakPtr<WebKit::WebProcessProxy,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>,WebKit::WebPasteboardProxy::PasteboardAccessType>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v11 + 16, v7);
          v13 = *v11;
          *v11 = 0;
          if (!v13 || atomic_fetch_add_explicit(v13, 0xFFFFFFFE, memory_order_relaxed) != 2)
          {
            goto LABEL_28;
          }
        }

        WTF::StringImpl::destroy(v13, v7);
      }

LABEL_28:
      if (++v10 == v3)
      {
        goto LABEL_32;
      }
    }
  }

  if (v2)
  {
LABEL_32:

    WTF::fastFree((v2 - 16), v7);
  }
}

void sub_19DD35A4C(_Unwind_Exception *exception_object, WTF::StringImpl *a2)
{
  v4 = *v2;
  *v2 = 0;
  if (v4)
  {
    if (atomic_fetch_add_explicit(v4, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v4, a2);
    }
  }

  _Unwind_Resume(exception_object);
}

uint64_t WTF::Vector<std::pair<WTF::WeakPtr<WebKit::WebProcessProxy,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>,WebKit::WebPasteboardProxy::PasteboardAccessType>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::Vector(uint64_t result, uint64_t *a2)
{
  v2 = result;
  v3 = *(a2 + 3);
  *result = 0;
  *(result + 8) = 0;
  *(result + 12) = v3;
  if (!v3)
  {
    return v2;
  }

  if (!(v3 >> 28))
  {
    v5 = WTF::fastMalloc((16 * v3));
    *(v2 + 8) = v3;
    *v2 = v5;
    v6 = *(a2 + 3);
    if (v6)
    {
      v7 = *a2;
      v8 = *a2 + 16 * v6;
      do
      {
        v9 = *v7;
        if (*v7)
        {
          atomic_fetch_add(v9, 1u);
        }

        *v5 = v9;
        *(v5 + 8) = *(v7 + 8);
        v5 += 16;
        v7 += 16;
      }

      while (v7 != v8);
    }

    return v2;
  }

  __break(0xC471u);
  return result;
}

void *WTF::HashTable<WTF::String,WTF::KeyValuePair<WTF::String,WebKit::WebPasteboardProxy::PasteboardAccessInformation>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,WebKit::WebPasteboardProxy::PasteboardAccessInformation>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,WebKit::WebPasteboardProxy::PasteboardAccessInformation,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WebKit::WebPasteboardProxy::PasteboardAccessInformation>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::begin(void **a1)
{
  result = *a1;
  if (!result)
  {
    return 0;
  }

  v2 = *(result - 1);
  v3 = &result[4 * v2];
  if (!*(result - 3))
  {
    return &result[4 * v2];
  }

  if (v2)
  {
    v4 = 32 * v2;
    while ((*result + 1) <= 1)
    {
      result += 4;
      v4 -= 32;
      if (!v4)
      {
        return v3;
      }
    }
  }

  return result;
}

uint64_t WTF::Detail::CallableWrapper<WebKit::WebPasteboardProxy::getPasteboardTypes(IPC::Connection &,WTF::String const&,std::optional<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::CompletionHandler<void ()(WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&)> &&)::$_0,void>::call(uint64_t a1)
{
  v6[0] = 0;
  v6[1] = 0;
  MEMORY[0x19EB07E50](&v5, *(a1 + 8));
  WebCore::PlatformPasteboard::getTypes();
  v2 = v5;
  v5 = 0;
  if (v2)
  {
  }

  WTF::CompletionHandler<void ()(WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&)>::operator()(*(a1 + 16));
  return WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v6, v3);
}

void sub_19DD35BE4(_Unwind_Exception *a1, void *a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(va, a2);
  _Unwind_Resume(a1);
}

uint64_t WTF::Detail::CallableWrapper<WebKit::WebPasteboardProxy::getPasteboardPathnamesForType(IPC::Connection &,WTF::String const&,WTF::String const&,std::optional<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::CompletionHandler<void ()(WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&,WTF::Vector<WebKit::SandboxExtensionHandle,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&)> &&)::$_0,void>::call(uint64_t a1)
{
  v8[0] = 0;
  v8[1] = 0;
  v7[0] = 0;
  v7[1] = 0;
  WebKit::WebPasteboardProxy::webProcessProxyForConnection(*(a1 + 8), *(a1 + 16), &v6);
  if (v6)
  {
    WTF::ThreadSafeRefCounted<WebKit::AuxiliaryProcessProxy,(WTF::DestructionThread)2>::deref(v6 + 4);
    MEMORY[0x19EB07E50](&v6, *(a1 + 24));
    WebCore::PlatformPasteboard::getPathnamesForType();
    v2 = v6;
    v6 = 0;
    if (v2)
    {
    }
  }

  WTF::CompletionHandler<void ()(WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&,WTF::Vector<WebKit::SandboxExtensionHandle,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&)>::operator()(*(a1 + 40));
  WTF::Vector<WebKit::SandboxExtensionHandle,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v7, v3);
  return WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v8, v4);
}

void sub_19DD35CB8(_Unwind_Exception *a1, void *a2, uint64_t a3, void *a4, ...)
{
  va_start(va1, a4);
  va_start(va, a4);
  v6 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  if (a4)
  {
  }

  WTF::Vector<WebKit::SandboxExtensionHandle,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(va, a2);
  WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(va1, v5);
  _Unwind_Resume(a1);
}

void WTF::Detail::CallableWrapper<WebKit::WebPasteboardProxy::getPasteboardStringForType(IPC::Connection &,WTF::String const&,WTF::String const&,std::optional<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::CompletionHandler<void ()(WTF::String&&)> &&)::$_0,void>::call(uint64_t a1)
{
  v2 = *(a1 + 8);
  MEMORY[0x19EB07E50](&v6, *(a1 + 16));
  WebCore::PlatformPasteboard::stringForType(&v7, &v6, *(a1 + 24));
  WTF::CompletionHandler<void ()(WTF::String &&)>::operator()(v2);
  v4 = v7;
  v7 = 0;
  if (v4 && atomic_fetch_add_explicit(v4, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v4, v3);
  }

  v5 = v6;
  v6 = 0;
  if (v5)
  {
  }
}

void sub_19DD35D78(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, WTF::StringImpl *a10)
{
  if (a10 && atomic_fetch_add_explicit(a10, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(a10, a2);
  }

  if (a9)
  {
  }

  _Unwind_Resume(exception_object);
}

void WTF::Detail::CallableWrapper<WebKit::WebPasteboardProxy::getPasteboardStringsForType(IPC::Connection &,WTF::String const&,WTF::String const&,std::optional<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::CompletionHandler<void ()(WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&)> &&)::$_0,void>::call(uint64_t a1)
{
  v2 = *(a1 + 8);
  MEMORY[0x19EB07E50](&v5, *(a1 + 16));
  WebCore::PlatformPasteboard::allStringsForType(v6, &v5, *(a1 + 24));
  WTF::CompletionHandler<void ()(WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&)>::operator()(v2);
  WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v6, v3);
  v4 = v5;
  v5 = 0;
  if (v4)
  {
  }
}

void sub_19DD35E2C(_Unwind_Exception *a1, void *a2, uint64_t a3, void *a4, ...)
{
  va_start(va, a4);
  WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(va, a2);
  if (a4)
  {
  }

  _Unwind_Resume(a1);
}

WTF::StringImpl *WTF::Detail::CallableWrapper<WebKit::WebPasteboardProxy::getPasteboardBufferForType(IPC::Connection &,WTF::String const&,WTF::String const&,std::optional<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::CompletionHandler<void ()(WebCore::PasteboardBuffer &&)> &&)::$_0,void>::call(uint64_t a1)
{
  MEMORY[0x19EB07E50](&v7, *(a1 + 8));
  WebCore::PlatformPasteboard::bufferForType(&v8, &v7, *(a1 + 16));
  v2 = v7;
  v7 = 0;
  if (v2)
  {
  }

  WTF::CompletionHandler<void ()(WebCore::PasteboardBuffer &&)>::operator()(*(a1 + 24));
  v4 = v10;
  v10 = 0;
  if (v4 && atomic_fetch_add(v4 + 2, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v4 + 2);
    (*(*v4 + 8))(v4);
  }

  v5 = v9;
  v9 = 0;
  if (v5 && atomic_fetch_add_explicit(v5, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v5, v3);
  }

  result = v8;
  v8 = 0;
  if (result)
  {
    if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      return WTF::StringImpl::destroy(result, v3);
    }
  }

  return result;
}

void sub_19DD35F4C(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, WTF::StringImpl *a10, WTF::StringImpl *a11, unsigned int *a12)
{
  if (a12 && atomic_fetch_add(a12 + 2, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, a12 + 2);
    (*(*a12 + 8))(a12);
  }

  if (a11 && atomic_fetch_add_explicit(a11, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(a11, a2);
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

void WTF::Detail::CallableWrapper<WebKit::WebPasteboardProxy::getPasteboardChangeCount(IPC::Connection &,WTF::String const&,std::optional<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::CompletionHandler<void ()(long long)> &&)::$_0,void>::call(uint64_t a1)
{
  v1 = *(a1 + 8);
  MEMORY[0x19EB07E50](&v3, *(a1 + 16));
  WebCore::PlatformPasteboard::changeCount(&v3);
  WTF::CompletionHandler<void ()(long long)>::operator()(v1);
  v2 = v3;
  v3 = 0;
  if (v2)
  {
  }
}

void sub_19DD36058(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10)
{
  if (a10)
  {
  }

  _Unwind_Resume(exception_object);
}

void WTF::Detail::CallableWrapper<WebKit::WebPasteboardProxy::getPasteboardColor(IPC::Connection &,WTF::String const&,std::optional<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::CompletionHandler<void ()(WebCore::Color &&)> &&)::$_0,void>::call(uint64_t a1)
{
  v1 = *(a1 + 8);
  MEMORY[0x19EB07E50](&v5, *(a1 + 16));
  WebCore::PlatformPasteboard::color(&v6, &v5);
  WTF::CompletionHandler<void ()(WebCore::Color &&)>::operator()(v1);
  if ((v6 & 0x8000000000000) != 0)
  {
    v4 = (v6 & 0xFFFFFFFFFFFFLL);
    if (atomic_fetch_add((v6 & 0xFFFFFFFFFFFFLL), 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, v4);
      WTF::fastFree(v4, v2);
    }
  }

  v3 = v5;
  v5 = 0;
  if (v3)
  {
  }
}

void sub_19DD360FC(_Unwind_Exception *exception_object, void *a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10)
{
  if ((a10 & 0x8000000000000) != 0)
  {
    v11 = (a10 & 0xFFFFFFFFFFFFLL);
    if (atomic_fetch_add((a10 & 0xFFFFFFFFFFFFLL), 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, v11);
      WTF::fastFree(v11, a2);
    }
  }

  if (a9)
  {
  }

  _Unwind_Resume(exception_object);
}

void WTF::Detail::CallableWrapper<WebKit::WebPasteboardProxy::getPasteboardURL(IPC::Connection &,WTF::String const&,std::optional<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::CompletionHandler<void ()(WTF::String const&)> &&)::$_0,void>::call(uint64_t a1)
{
  v1 = *(a1 + 8);
  MEMORY[0x19EB07E50](&v5, *(a1 + 16));
  WebCore::PlatformPasteboard::url(v6, &v5);
  WTF::CompletionHandler<void ()(WTF::String const&)>::operator()(v1, v6);
  v3 = v6[0];
  v6[0] = 0;
  if (v3 && atomic_fetch_add_explicit(v3, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v3, v2);
  }

  v4 = v5;
  v5 = 0;
  if (v4)
  {
  }
}

void sub_19DD361C4(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, WTF::StringImpl *a10)
{
  if (a10 && atomic_fetch_add_explicit(a10, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(a10, a2);
  }

  if (a9)
  {
  }

  _Unwind_Resume(exception_object);
}

uint64_t WTF::Detail::CallableWrapper<WebKit::WebPasteboardProxy::addPasteboardTypes(IPC::Connection &,WTF::String const&,WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> const&,std::optional<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::CompletionHandler<void ()(long long)> &&)::$_0,void>::call(uint64_t a1)
{
  v2 = *(a1 + 24);
  MEMORY[0x19EB07E50](&v8, *(a1 + 8));
  v3 = WebCore::PlatformPasteboard::changeCount(&v8);
  v4 = v8;
  v8 = 0;
  if (v4)
  {
  }

  MEMORY[0x19EB07E50](&v8, *(a1 + 8));
  v5 = WebCore::PlatformPasteboard::addTypes();
  v6 = v8;
  v8 = 0;
  if (v6)
  {
  }

  WebKit::WebPasteboardProxy::didModifyContentsOfPasteboard(v2, *(a1 + 32), *(a1 + 8), v3, v5);
  return WTF::CompletionHandler<void ()(long long)>::operator()(*(a1 + 40));
}

void sub_19DD362BC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10)
{
  if (a10)
  {
  }

  _Unwind_Resume(exception_object);
}

uint64_t WTF::Detail::CallableWrapper<WebKit::WebPasteboardProxy::setPasteboardTypes(IPC::Connection &,WTF::String const&,WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> const&,std::optional<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::CompletionHandler<void ()(long long)> &&)::$_0,void>::call(uint64_t a1)
{
  v2 = *(a1 + 32);
  MEMORY[0x19EB07E50](&v8, *(a1 + 8));
  v3 = WebCore::PlatformPasteboard::changeCount(&v8);
  v4 = v8;
  v8 = 0;
  if (v4)
  {
  }

  MEMORY[0x19EB07E50](&v8, *(a1 + 8));
  v5 = WebCore::PlatformPasteboard::setTypes();
  v6 = v8;
  v8 = 0;
  if (v6)
  {
  }

  WebKit::WebPasteboardProxy::didModifyContentsOfPasteboard(v2, *(a1 + 40), *(a1 + 8), v3, v5);
  return WTF::CompletionHandler<void ()(long long)>::operator()(*(a1 + 48));
}

void sub_19DD36394(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10)
{
  if (a10)
  {
  }

  _Unwind_Resume(exception_object);
}

uint64_t WTF::Detail::CallableWrapper<WebKit::WebPasteboardProxy::setPasteboardURL(IPC::Connection &,WebCore::PasteboardURL const&,WTF::String const&,std::optional<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::CompletionHandler<void ()(long long)> &&)::$_0,void>::call(uint64_t a1)
{
  v2 = *(a1 + 24);
  MEMORY[0x19EB07E50](&v8, *(a1 + 8));
  v3 = WebCore::PlatformPasteboard::changeCount(&v8);
  v4 = v8;
  v8 = 0;
  if (v4)
  {
  }

  MEMORY[0x19EB07E50](&v8, *(a1 + 8));
  v5 = WebCore::PlatformPasteboard::setURL();
  v6 = v8;
  v8 = 0;
  if (v6)
  {
  }

  WebKit::WebPasteboardProxy::didModifyContentsOfPasteboard(v2, *(a1 + 32), *(a1 + 8), v3, v5);
  return WTF::CompletionHandler<void ()(long long)>::operator()(*(a1 + 40));
}

void sub_19DD36468(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10)
{
  if (a10)
  {
  }

  _Unwind_Resume(exception_object);
}

uint64_t WTF::Detail::CallableWrapper<WebKit::WebPasteboardProxy::setPasteboardColor(IPC::Connection &,WTF::String const&,WebCore::Color const&,std::optional<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::CompletionHandler<void ()(long long)> &&)::$_0,void>::call(uint64_t a1)
{
  v2 = *(a1 + 24);
  MEMORY[0x19EB07E50](&v8, *(a1 + 8));
  v3 = WebCore::PlatformPasteboard::changeCount(&v8);
  v4 = v8;
  v8 = 0;
  if (v4)
  {
  }

  MEMORY[0x19EB07E50](&v8, *(a1 + 8));
  v5 = WebCore::PlatformPasteboard::setColor(&v8, *(a1 + 16));
  v6 = v8;
  v8 = 0;
  if (v6)
  {
  }

  WebKit::WebPasteboardProxy::didModifyContentsOfPasteboard(v2, *(a1 + 32), *(a1 + 8), v3, v5);
  return WTF::CompletionHandler<void ()(long long)>::operator()(*(a1 + 40));
}

void sub_19DD3653C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10)
{
  if (a10)
  {
  }

  _Unwind_Resume(exception_object);
}

uint64_t WTF::Detail::CallableWrapper<WebKit::WebPasteboardProxy::setPasteboardStringForType(IPC::Connection &,WTF::String const&,WTF::String const&,WTF::String const&,std::optional<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::CompletionHandler<void ()(long long)> &&)::$_0,void>::call(uint64_t a1)
{
  v2 = *(a1 + 32);
  MEMORY[0x19EB07E50](&v8, *(a1 + 8));
  v3 = WebCore::PlatformPasteboard::changeCount(&v8);
  v4 = v8;
  v8 = 0;
  if (v4)
  {
  }

  MEMORY[0x19EB07E50](&v8, *(a1 + 8));
  v5 = WebCore::PlatformPasteboard::setStringForType(&v8, *(a1 + 16), *(a1 + 24));
  v6 = v8;
  v8 = 0;
  if (v6)
  {
  }

  WebKit::WebPasteboardProxy::didModifyContentsOfPasteboard(v2, *(a1 + 40), *(a1 + 8), v3, v5);
  return WTF::CompletionHandler<void ()(long long)>::operator()(*(a1 + 48));
}

void sub_19DD36610(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10)
{
  if (a10)
  {
  }

  _Unwind_Resume(exception_object);
}

void WTF::Detail::CallableWrapper<WebKit::WebPasteboardProxy::containsURLStringSuitableForLoading(IPC::Connection &,WTF::String const&,std::optional<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::CompletionHandler<void ()(BOOL)> &&)::$_0,void>::call(uint64_t a1)
{
  v1 = *(a1 + 8);
  MEMORY[0x19EB07E50](&v4, *(a1 + 16));
  v2 = WebCore::PlatformPasteboard::containsURLStringSuitableForLoading(&v4);
  WTF::CompletionHandler<void ()(BOOL)>::operator()(v1, v2);
  v3 = v4;
  v4 = 0;
  if (v3)
  {
  }
}

void sub_19DD3668C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10)
{
  if (a10)
  {
  }

  _Unwind_Resume(exception_object);
}

WTF::StringImpl *WTF::Detail::CallableWrapper<WebKit::WebPasteboardProxy::urlStringSuitableForLoading(IPC::Connection &,WTF::String const&,std::optional<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::CompletionHandler<void ()(WTF::String&&,WTF::String&)> &&)::$_0,void>::call(uint64_t a1)
{
  v8 = 0;
  MEMORY[0x19EB07E50](&v6, *(a1 + 8));
  WebCore::PlatformPasteboard::urlStringSuitableForLoading(&v7, &v6, &v8);
  v2 = v6;
  v6 = 0;
  if (v2)
  {
  }

  WTF::CompletionHandler<void ()(WTF::String &&,WTF::String &)>::operator()(*(a1 + 16));
  v4 = v7;
  v7 = 0;
  if (v4 && atomic_fetch_add_explicit(v4, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v4, v3);
  }

  result = v8;
  v8 = 0;
  if (result)
  {
    if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      return WTF::StringImpl::destroy(result, v3);
    }
  }

  return result;
}

void sub_19DD36758(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, WTF::StringImpl *a11, WTF::StringImpl *a12)
{
  if (a11 && atomic_fetch_add_explicit(a11, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(a11, a2);
  }

  if (a12)
  {
    if (atomic_fetch_add_explicit(a12, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(a12, a2);
    }
  }

  _Unwind_Resume(exception_object);
}

uint64_t WTF::Detail::CallableWrapper<WebKit::WebPasteboardProxy::setPasteboardBufferForType(IPC::Connection &,WTF::String const&,WTF::String const&,WTF::RefPtr<WebCore::SharedBuffer,WTF::RawPtrTraits<WebCore::SharedBuffer>,WTF::DefaultRefDerefTraits<WebCore::SharedBuffer>> &&,std::optional<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::CompletionHandler<void ()(long long)> &&)::$_0,void>::call(uint64_t a1)
{
  v2 = *(a1 + 32);
  MEMORY[0x19EB07E50](&v9, *(a1 + 8));
  v3 = WebCore::PlatformPasteboard::changeCount(&v9);
  v4 = v9;
  v9 = 0;
  if (v4)
  {
  }

  if (**(a1 + 16))
  {
    MEMORY[0x19EB07E50](&v9, *(a1 + 8));
    v5 = WebCore::PlatformPasteboard::setBufferForType(&v9, **(a1 + 16), *(a1 + 24));
  }

  else
  {
    MEMORY[0x19EB07E50](&v9, *(a1 + 8));
    v5 = WebCore::PlatformPasteboard::setBufferForType(&v9, 0, *(a1 + 24));
  }

  v6 = v5;
  v7 = v9;
  v9 = 0;
  if (v7)
  {
  }

  WebKit::WebPasteboardProxy::didModifyContentsOfPasteboard(v2, *(a1 + 40), *(a1 + 8), v3, v6);
  return WTF::CompletionHandler<void ()(long long)>::operator()(*(a1 + 48));
}

void sub_19DD368A8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10)
{
  if (a10)
  {
  }

  _Unwind_Resume(exception_object);
}

void WTF::Detail::CallableWrapper<WebKit::WebPasteboardProxy::getNumberOfFiles(IPC::Connection &,WTF::String const&,std::optional<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::CompletionHandler<void ()(unsigned long long)> &&)::$_0,void>::call(uint64_t a1)
{
  v1 = *(a1 + 8);
  MEMORY[0x19EB07E50](&v3, *(a1 + 16));
  WebCore::PlatformPasteboard::numberOfFiles(&v3);
  WTF::CompletionHandler<void ()(unsigned long long)>::operator()(v1);
  v2 = v3;
  v3 = 0;
  if (v2)
  {
  }
}

void sub_19DD36928(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10)
{
  if (a10)
  {
  }

  _Unwind_Resume(exception_object);
}

void WTF::Detail::CallableWrapper<WebKit::WebPasteboardProxy::typesSafeForDOMToReadAndWrite(IPC::Connection &,WTF::String const&,WTF::String const&,std::optional<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::CompletionHandler<void ()(WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&)> &&)::$_0,void>::call(uint64_t a1)
{
  v2 = *(a1 + 8);
  MEMORY[0x19EB07E50](&v5, *(a1 + 16));
  WebCore::PlatformPasteboard::typesSafeForDOMToReadAndWrite(v6, &v5, *(a1 + 24));
  WTF::CompletionHandler<void ()(WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&)>::operator()(v2);
  WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v6, v3);
  v4 = v5;
  v5 = 0;
  if (v4)
  {
  }
}

void sub_19DD369B4(_Unwind_Exception *a1, void *a2, uint64_t a3, void *a4, ...)
{
  va_start(va, a4);
  WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(va, a2);
  if (a4)
  {
  }

  _Unwind_Resume(a1);
}

uint64_t WTF::Detail::CallableWrapper<WebKit::WebPasteboardProxy::writeCustomData(IPC::Connection &,WTF::Vector<WebCore::PasteboardCustomData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> const&,WTF::String const&,std::optional<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::CompletionHandler<void ()(long long)> &&)::$_0,void>::call(uint64_t a1)
{
  v2 = *(a1 + 32);
  MEMORY[0x19EB07E50](&v8, *(a1 + 8));
  v3 = WebCore::PlatformPasteboard::changeCount(&v8);
  v4 = v8;
  v8 = 0;
  if (v4)
  {
  }

  MEMORY[0x19EB07E50](&v8, *(a1 + 8));
  v5 = WebCore::PlatformPasteboard::write();
  v6 = v8;
  v8 = 0;
  if (v6)
  {
  }

  WebKit::WebPasteboardProxy::didModifyContentsOfPasteboard(v2, *(a1 + 40), *(a1 + 8), v3, v5);
  return WTF::CompletionHandler<void ()(long long)>::operator()(*(a1 + 48));
}

void sub_19DD36A98(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10)
{
  if (a10)
  {
  }

  _Unwind_Resume(exception_object);
}

void WTF::Detail::CallableWrapper<WebKit::WebPasteboardProxy::allPasteboardItemInfo(IPC::Connection &,WTF::String const&,long long,std::optional<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::CompletionHandler<void ()(std::optional<WTF::Vector<WebCore::PasteboardItemInfo,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>> &&)> &&)::$_0,void>::call(uint64_t a1)
{
  v1 = *(a1 + 8);
  MEMORY[0x19EB07E50](&v4, *(a1 + 16));
  WebCore::PlatformPasteboard::allPasteboardItemInfo(&v4);
  WTF::CompletionHandler<void ()(std::optional<WTF::Vector<WebCore::PasteboardItemInfo,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>> &&)>::operator()(v1);
  if (v5[16] == 1)
  {
    WTF::Vector<WebCore::PasteboardItemInfo,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v5, v2);
  }

  v3 = v4;
  v4 = 0;
  if (v3)
  {
  }
}

void sub_19DD36B38(_Unwind_Exception *exception_object, void *a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, char a10, uint64_t a11, char a12)
{
  if (a12 == 1)
  {
    WTF::Vector<WebCore::PasteboardItemInfo,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&a10, a2);
  }

  if (a9)
  {
  }

  _Unwind_Resume(exception_object);
}

void WTF::Detail::CallableWrapper<WebKit::WebPasteboardProxy::informationForItemAtIndex(IPC::Connection &,unsigned long long,WTF::String const&,long long,std::optional<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::CompletionHandler<void ()(std::optional<WebCore::PasteboardItemInfo> &&)> &&)::$_0,void>::call(uint64_t a1)
{
  v1 = *(a1 + 8);
  MEMORY[0x19EB07E50](&v8, *(a1 + 16));
  WebCore::PlatformPasteboard::informationForItemAtIndex(&v8);
  WTF::CompletionHandler<void ()(std::optional<WebCore::PasteboardItemInfo> &&)>::operator()(v1);
  if (v13[24] == 1)
  {
    WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v13, v2);
    v4 = v12;
    v12 = 0;
    if (v4 && atomic_fetch_add_explicit(v4, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v4, v3);
    }

    WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v11, v3);
    WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v10, v5);
    WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v9, v6);
  }

  v7 = v8;
  v8 = 0;
  if (v7)
  {
  }
}

void sub_19DD36C30(_Unwind_Exception *exception_object, void *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, char a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, WTF::StringImpl *a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, char a26)
{
  if (a26 == 1)
  {
    WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&a23, a2);
    v28 = a17;
    a17 = 0;
    if (v28 && atomic_fetch_add_explicit(v28, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v28, v27);
    }

    WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&a15, v27);
    WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&a13, v29);
    WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&a11, v30);
  }

  if (a10)
  {
  }

  _Unwind_Resume(exception_object);
}

void WTF::Detail::CallableWrapper<WebKit::WebPasteboardProxy::getPasteboardItemsCount(IPC::Connection &,WTF::String const&,std::optional<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::CompletionHandler<void ()(unsigned long long)> &&)::$_0,void>::call(uint64_t a1)
{
  v1 = *(a1 + 8);
  MEMORY[0x19EB07E50](&v3, *(a1 + 16));
  WebCore::PlatformPasteboard::count(&v3);
  WTF::CompletionHandler<void ()(unsigned long long)>::operator()(v1);
  v2 = v3;
  v3 = 0;
  if (v2)
  {
  }
}

void sub_19DD36D00(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10)
{
  if (a10)
  {
  }

  _Unwind_Resume(exception_object);
}

void WTF::Detail::CallableWrapper<WebKit::WebPasteboardProxy::readStringFromPasteboard(IPC::Connection &,unsigned long long,WTF::String const&,WTF::String const&,std::optional<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::CompletionHandler<void ()(WTF::String&&)> &&)::$_0,void>::call(uint64_t a1)
{
  v2 = *(a1 + 8);
  MEMORY[0x19EB07E50](&v6, *(a1 + 16));
  WebCore::PlatformPasteboard::readString(&v6, **(a1 + 24), *(a1 + 32));
  WTF::CompletionHandler<void ()(WTF::String &&)>::operator()(v2);
  v4 = v7;
  v7 = 0;
  if (v4 && atomic_fetch_add_explicit(v4, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v4, v3);
  }

  v5 = v6;
  v6 = 0;
  if (v5)
  {
  }
}

void sub_19DD36DA8(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, WTF::StringImpl *a10)
{
  if (a10 && atomic_fetch_add_explicit(a10, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(a10, a2);
  }

  if (a9)
  {
  }

  _Unwind_Resume(exception_object);
}

WTF::StringImpl *WTF::Detail::CallableWrapper<WebKit::WebPasteboardProxy::readURLFromPasteboard(IPC::Connection &,unsigned long long,WTF::String const&,std::optional<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::CompletionHandler<void ()(WTF::String&&,WTF::String&)> &&)::$_0,void>::call(uint64_t a1)
{
  v12 = 0;
  MEMORY[0x19EB07E50](&v9, *(a1 + 8));
  WebCore::PlatformPasteboard::readURL(&v9, **(a1 + 16), &v12);
  v3 = v10;
  if (v10)
  {
    atomic_fetch_add_explicit(v10, 2u, memory_order_relaxed);
    v4 = v10;
    v11 = v3;
    v10 = 0;
    if (v4 && atomic_fetch_add_explicit(v4, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v4, v2);
    }
  }

  else
  {
    v11 = 0;
  }

  v5 = v9;
  v9 = 0;
  if (v5)
  {
  }

  WTF::CompletionHandler<void ()(WTF::String &&,WTF::String &)>::operator()(*(a1 + 24));
  v7 = v11;
  v11 = 0;
  if (v7 && atomic_fetch_add_explicit(v7, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v7, v6);
  }

  result = v12;
  v12 = 0;
  if (result)
  {
    if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      return WTF::StringImpl::destroy(result, v6);
    }
  }

  return result;
}

void sub_19DD36EE0(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9)
{
  v11 = *(v9 - 32);
  *(v9 - 32) = 0;
  if (v11 && atomic_fetch_add_explicit(v11, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v11, a2);
  }

  v12 = *(v9 - 24);
  *(v9 - 24) = 0;
  if (v12)
  {
    if (atomic_fetch_add_explicit(v12, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v12, a2);
    }
  }

  _Unwind_Resume(exception_object);
}

void WTF::Detail::CallableWrapper<WebKit::WebPasteboardProxy::readBufferFromPasteboard(IPC::Connection &,std::optional<unsigned long long>,WTF::String const&,WTF::String const&,std::optional<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::CompletionHandler<void ()(WTF::RefPtr<WebCore::SharedBuffer,WTF::RawPtrTraits<WebCore::SharedBuffer>,WTF::DefaultRefDerefTraits<WebCore::SharedBuffer>> &&)> &&)::$_0,void>::call(uint64_t a1)
{
  v1 = *(a1 + 8);
  MEMORY[0x19EB07E50](&v4, *(a1 + 16));
  WebCore::PlatformPasteboard::readBuffer();
  WTF::CompletionHandler<void ()(WTF::RefPtr<WebCore::SharedBuffer,WTF::RawPtrTraits<WebCore::SharedBuffer>,WTF::DefaultRefDerefTraits<WebCore::SharedBuffer>> &&)>::operator()(v1);
  v2 = v5;
  v5 = 0;
  if (v2 && atomic_fetch_add(v2 + 2, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v2 + 2);
    (*(*v2 + 8))(v2);
  }

  v3 = v4;
  v4 = 0;
  if (v3)
  {
  }
}

void sub_19DD37024(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, unsigned int *a10)
{
  if (a10 && atomic_fetch_add(a10 + 2, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, a10 + 2);
    (*(*a10 + 8))(a10);
  }

  if (a9)
  {
  }

  _Unwind_Resume(exception_object);
}

void WTF::Detail::CallableWrapper<WebKit::WebPasteboardProxy::containsStringSafeForDOMToReadForType(IPC::Connection &,WTF::String const&,WTF::String const&,std::optional<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::CompletionHandler<void ()(BOOL)> &&)::$_0,void>::call(uint64_t a1)
{
  v2 = *(a1 + 8);
  MEMORY[0x19EB07E50](&v5, *(a1 + 16));
  v3 = WebCore::PlatformPasteboard::containsStringSafeForDOMToReadForType(&v5, *(a1 + 24));
  WTF::CompletionHandler<void ()(BOOL)>::operator()(v2, v3);
  v4 = v5;
  v5 = 0;
  if (v4)
  {
  }
}

void sub_19DD370F4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10)
{
  if (a10)
  {
  }

  _Unwind_Resume(exception_object);
}

atomic_uint *WTF::Detail::CallableWrapper<WebKit::WebPasteboardProxy::writeURLToPasteboard(IPC::Connection &,WebCore::PasteboardURL const&,WTF::String const&,std::optional<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>)::$_0,void>::call(uint64_t a1)
{
  v2 = *(a1 + 24);
  MEMORY[0x19EB07E50](&v13, *(a1 + 8));
  v3 = WebCore::PlatformPasteboard::changeCount(&v13);
  v4 = v13;
  v13 = 0;
  if (v4)
  {
  }

  MEMORY[0x19EB07E50](&v13, *(a1 + 8));
  WebCore::PlatformPasteboard::write();
  v5 = v13;
  v13 = 0;
  if (v5)
  {
  }

  v6 = *(a1 + 32);
  v7 = *(a1 + 8);
  MEMORY[0x19EB07E50](&v13, v7);
  v8 = WebCore::PlatformPasteboard::changeCount(&v13);
  WebKit::WebPasteboardProxy::didModifyContentsOfPasteboard(v2, v6, v7, v3, v8);
  v9 = v13;
  v13 = 0;
  if (v9)
  {
  }

  result = WebKit::WebPasteboardProxy::webProcessProxyForConnection(v2, *(a1 + 32), &v13);
  v11 = v13;
  if (v13)
  {
    v12 = *(a1 + 8);
    WebKit::AuxiliaryProcessProxy::send<Messages::WebProcess::DidWriteToPasteboardAsynchronously>(v13, &v12);
    return WTF::ThreadSafeRefCounted<WebKit::AuxiliaryProcessProxy,(WTF::DestructionThread)2>::deref((v11 + 16));
  }

  return result;
}

IPC::Encoder *WebKit::AuxiliaryProcessProxy::send<Messages::WebProcess::DidWriteToPasteboardAsynchronously>(uint64_t a1, uint64_t **a2)
{
  v4 = IPC::Encoder::operator new(0x238, a2);
  *v4 = 2941;
  *(v4 + 68) = 0;
  *(v4 + 70) = 0;
  *(v4 + 69) = 0;
  *(v4 + 2) = 0;
  *(v4 + 3) = 0;
  *(v4 + 1) = 0;
  IPC::Encoder::encodeHeader(v4);
  v12 = v4;
  IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(v4, *a2);
  LOBYTE(v10) = 0;
  v11 = 0;
  WebKit::AuxiliaryProcessProxy::sendMessage(a1, &v12, 0, &v10, 1);
  if (v11 == 1)
  {
    v6 = v10;
    v10 = 0;
    if (v6)
    {
      (*(*v6 + 8))(v6);
    }
  }

  result = v12;
  v12 = 0;
  if (result)
  {
    IPC::Encoder::~Encoder(result, v5);
    return bmalloc::api::tzoneFree(v8, v9);
  }

  return result;
}

void sub_19DD37338(_Unwind_Exception *exception_object, void *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, IPC::Encoder *a12)
{
  if (a11 == 1 && a9)
  {
    (*(*a9 + 8))(a9);
  }

  if (a12)
  {
    IPC::Encoder::~Encoder(a12, a2);
    bmalloc::api::tzoneFree(v13, v14);
  }

  _Unwind_Resume(exception_object);
}

atomic_uint *WTF::Detail::CallableWrapper<WebKit::WebPasteboardProxy::writeWebContentToPasteboard(IPC::Connection &,WebCore::PasteboardWebContent const&,WTF::String const&,std::optional<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>)::$_0,void>::call(uint64_t a1)
{
  v2 = *(a1 + 24);
  MEMORY[0x19EB07E50](&v13, *(a1 + 8));
  v3 = WebCore::PlatformPasteboard::changeCount(&v13);
  v4 = v13;
  v13 = 0;
  if (v4)
  {
  }

  MEMORY[0x19EB07E50](&v13, *(a1 + 8));
  WebCore::PlatformPasteboard::write();
  v5 = v13;
  v13 = 0;
  if (v5)
  {
  }

  v6 = *(a1 + 32);
  v7 = *(a1 + 8);
  MEMORY[0x19EB07E50](&v13, v7);
  v8 = WebCore::PlatformPasteboard::changeCount(&v13);
  WebKit::WebPasteboardProxy::didModifyContentsOfPasteboard(v2, v6, v7, v3, v8);
  v9 = v13;
  v13 = 0;
  if (v9)
  {
  }

  result = WebKit::WebPasteboardProxy::webProcessProxyForConnection(v2, *(a1 + 32), &v13);
  v11 = v13;
  if (v13)
  {
    v12 = *(a1 + 8);
    WebKit::AuxiliaryProcessProxy::send<Messages::WebProcess::DidWriteToPasteboardAsynchronously>(v13, &v12);
    return WTF::ThreadSafeRefCounted<WebKit::AuxiliaryProcessProxy,(WTF::DestructionThread)2>::deref((v11 + 16));
  }

  return result;
}

atomic_uint *WTF::Detail::CallableWrapper<WebKit::WebPasteboardProxy::writeImageToPasteboard(IPC::Connection &,WebCore::PasteboardImage const&,WTF::String const&,std::optional<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>)::$_0,void>::call(uint64_t a1)
{
  v2 = *(a1 + 24);
  MEMORY[0x19EB07E50](&v13, *(a1 + 8));
  v3 = WebCore::PlatformPasteboard::changeCount(&v13);
  v4 = v13;
  v13 = 0;
  if (v4)
  {
  }

  MEMORY[0x19EB07E50](&v13, *(a1 + 8));
  WebCore::PlatformPasteboard::write();
  v5 = v13;
  v13 = 0;
  if (v5)
  {
  }

  v6 = *(a1 + 32);
  v7 = *(a1 + 8);
  MEMORY[0x19EB07E50](&v13, v7);
  v8 = WebCore::PlatformPasteboard::changeCount(&v13);
  WebKit::WebPasteboardProxy::didModifyContentsOfPasteboard(v2, v6, v7, v3, v8);
  v9 = v13;
  v13 = 0;
  if (v9)
  {
  }

  result = WebKit::WebPasteboardProxy::webProcessProxyForConnection(v2, *(a1 + 32), &v13);
  v11 = v13;
  if (v13)
  {
    v12 = *(a1 + 8);
    WebKit::AuxiliaryProcessProxy::send<Messages::WebProcess::DidWriteToPasteboardAsynchronously>(v13, &v12);
    return WTF::ThreadSafeRefCounted<WebKit::AuxiliaryProcessProxy,(WTF::DestructionThread)2>::deref((v11 + 16));
  }

  return result;
}

atomic_uint *WTF::Detail::CallableWrapper<WebKit::WebPasteboardProxy::writeStringToPasteboard(IPC::Connection &,WTF::String const&,WTF::String const&,WTF::String const&,std::optional<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>)::$_0,void>::call(uint64_t a1)
{
  v2 = *(a1 + 32);
  MEMORY[0x19EB07E50](&v13, *(a1 + 8));
  v3 = WebCore::PlatformPasteboard::changeCount(&v13);
  v4 = v13;
  v13 = 0;
  if (v4)
  {
  }

  MEMORY[0x19EB07E50](&v13, *(a1 + 8));
  WebCore::PlatformPasteboard::write(&v13, *(a1 + 16), *(a1 + 24));
  v5 = v13;
  v13 = 0;
  if (v5)
  {
  }

  v6 = *(a1 + 40);
  v7 = *(a1 + 8);
  MEMORY[0x19EB07E50](&v13, v7);
  v8 = WebCore::PlatformPasteboard::changeCount(&v13);
  WebKit::WebPasteboardProxy::didModifyContentsOfPasteboard(v2, v6, v7, v3, v8);
  v9 = v13;
  v13 = 0;
  if (v9)
  {
  }

  result = WebKit::WebPasteboardProxy::webProcessProxyForConnection(v2, *(a1 + 40), &v13);
  v11 = v13;
  if (v13)
  {
    v12 = *(a1 + 8);
    WebKit::AuxiliaryProcessProxy::send<Messages::WebProcess::DidWriteToPasteboardAsynchronously>(v13, &v12);
    return WTF::ThreadSafeRefCounted<WebKit::AuxiliaryProcessProxy,(WTF::DestructionThread)2>::deref((v11 + 16));
  }

  return result;
}

unint64_t WTF::Vector<std::pair<WTF::WeakPtr<WebKit::WebProcessProxy,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>,WebKit::WebPasteboardProxy::PasteboardAccessType>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(unsigned int *a1, unint64_t a2, unint64_t a3)
{
  v3 = a3;
  v5 = *a1;
  if (*a1 > a3 || v5 + 16 * a1[3] <= a3)
  {
    v10 = a1[2];
    if (v10 + (v10 >> 1) <= v10 + 1)
    {
      v11 = v10 + 1;
    }

    else
    {
      v11 = v10 + (v10 >> 1);
    }

    if (v11 <= a2)
    {
      v11 = a2;
    }

    if (v11 <= 0x10)
    {
      v12 = 16;
    }

    else
    {
      v12 = v11;
    }

    WTF::Vector<std::pair<WTF::WeakPtr<WebKit::WebProcessProxy,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>,WebKit::WebPasteboardProxy::PasteboardAccessType>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::reserveCapacity<(WTF::FailureAction)0>(a1, v12);
  }

  else
  {
    v6 = a3 - v5;
    v7 = a1[2];
    if (v7 + (v7 >> 1) <= v7 + 1)
    {
      v8 = v7 + 1;
    }

    else
    {
      v8 = v7 + (v7 >> 1);
    }

    if (v8 <= a2)
    {
      v8 = a2;
    }

    if (v8 <= 0x10)
    {
      v9 = 16;
    }

    else
    {
      v9 = v8;
    }

    WTF::Vector<std::pair<WTF::WeakPtr<WebKit::WebProcessProxy,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>,WebKit::WebPasteboardProxy::PasteboardAccessType>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::reserveCapacity<(WTF::FailureAction)0>(a1, v9);
    return *a1 + v6;
  }

  return v3;
}

unsigned int *WTF::VectorMover<false,std::pair<WTF::WeakPtr<WebKit::WebProcessProxy,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>,WebKit::WebPasteboardProxy::PasteboardAccessType>>::moveOverlapping(unsigned int *result, unsigned int *a2, unint64_t a3)
{
  v3 = a2;
  v4 = result;
  if (result <= a3)
  {
    if (a2 != result)
    {
      v5 = (a2 - result + a3 - 8);
      do
      {
        v6 = *(v3 - 2);
        v3 -= 4;
        *v3 = 0;
        *(v5 - 1) = v6;
        *v5 = *(v3 + 8);
        result = *v3;
        *v3 = 0;
        if (result && atomic_fetch_add(result, 0xFFFFFFFF) == 1)
        {
          atomic_store(1u, result);
          result = WTF::fastFree(result, a2);
        }

        v5 -= 16;
      }

      while (v3 != v4);
    }
  }

  else
  {

    return WTF::VectorMover<false,std::pair<WTF::WeakPtr<WebKit::WebProcessProxy,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>,WebKit::WebPasteboardProxy::PasteboardAccessType>>::move(result, a2, a3);
  }

  return result;
}

uint64_t ___ZZN6WebKit14WebProcessPool29registerNotificationObserversEvENK3__0clERKN3WTF12ASCIILiteralE_block_invoke(uint64_t a1, int token)
{
  state64 = 0;
  state = notify_get_state(token, &state64);
  v4 = *(a1 + 32);
  if (v4)
  {
    atomic_fetch_add(v4, 1u);
  }

  v8 = *(a1 + 40);
  v5 = state64;
  v6 = WTF::fastMalloc(0x30);
  *v6 = &unk_1F1106560;
  *(v6 + 8) = v4;
  *(v6 + 16) = v8;
  *(v6 + 32) = v5;
  *(v6 + 40) = state;
  v9 = v6;
  WTF::callOnMainRunLoop();
  result = v9;
  if (v9)
  {
    return (*(*v9 + 8))(v9);
  }

  return result;
}

void sub_19DD379B0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  if (a11)
  {
    (*(*a11 + 8))(a11);
  }

  _Unwind_Resume(exception_object);
}

unsigned int *__destroy_helper_block_e8_32c102_ZTSKZZN6WebKit14WebProcessPool29registerNotificationObserversEvENK3__0clERKN3WTF12ASCIILiteralEEUliE_(uint64_t a1, void *a2)
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

void *WTF::Detail::CallableWrapper<WebKit::WebProcessPool::registerNotificationObservers(void)::$_0::operator() const(WTF::ASCIILiteral const&)::{lambda(int)#1}::operator() const(int)::{lambda(void)#1},void>::~CallableWrapper(void *a1, void *a2)
{
  v3 = a1[1];
  *a1 = &unk_1F1106560;
  a1[1] = 0;
  if (v3 && atomic_fetch_add(v3, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v3);
    WTF::fastFree(v3, a2);
  }

  return a1;
}

void ___ZZN6WebKit14WebProcessPool29registerNotificationObserversEvENK3__1clEP8NSString_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (!v1)
  {
    return;
  }

  v2 = *(v1 + 8);
  if (!v2)
  {
    return;
  }

  CFRetain(*(v2 - 8));
  if (!*(v2 + 68))
  {
LABEL_33:
    CFRelease(*(v2 - 8));
    return;
  }

  MEMORY[0x19EB02040](&v28, *(a1 + 40));
  v5 = *(v2 + 68);
  if (!v5)
  {
LABEL_30:
    v26 = v28;
    v28 = 0;
    if (v26)
    {
      if (atomic_fetch_add_explicit(v26, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v26, v4);
      }
    }

    goto LABEL_33;
  }

  v6 = *(v2 + 56);
  v7 = 8 * v5;
  while (1)
  {
    v8 = *v6;
    MEMORY[0x19EB02040](&v27, *(a1 + 40));
    if (*(v8 + 114) != 1)
    {
      v10 = IPC::Encoder::operator new(0x238, v9);
      *v10 = 2960;
      *(v10 + 68) = 0;
      *(v10 + 70) = 0;
      *(v10 + 69) = 0;
      *(v10 + 2) = 0;
      *(v10 + 3) = 0;
      *(v10 + 1) = 0;
      IPC::Encoder::encodeHeader(v10);
      v33 = v10;
      IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(v10, &v27);
      LOBYTE(v29) = 0;
      v32 = 0;
      WebKit::AuxiliaryProcessProxy::sendMessage(v8, &v33, 0, &v29, 1);
      if (v32 == 1)
      {
        v11 = v29;
        v29 = 0;
        if (v11)
        {
          (*(*v11 + 8))(v11);
        }
      }

      v12 = v33;
      v33 = 0;
      if (!v12)
      {
        goto LABEL_11;
      }

      goto LABEL_28;
    }

    v14 = IPC::Encoder::operator new(0x238, v9);
    *v14 = 2960;
    v14[68] = 0;
    v14[70] = 0;
    v14[69] = 0;
    v14[2] = 0;
    v14[3] = 0;
    v14[1] = 0;
    IPC::Encoder::encodeHeader(v14);
    v16 = v14[2];
    if (v16)
    {
      v17 = v14[3];
    }

    else
    {
      v16 = v14 + 4;
      v17 = 512;
    }

    v18 = v14[68];
    if (v17 < v18)
    {
      break;
    }

    v29 = 0;
    v30 = 0;
    v31 = v18;
    if (v18)
    {
      if (HIDWORD(v18))
      {
        goto LABEL_36;
      }

      v19 = WTF::fastMalloc(v18);
      v30 = v18;
      v29 = v19;
      memcpy(v19, v16, v18);
    }

    v20 = IPC::Encoder::operator new(0x238, v15);
    *v20 = 2960;
    *(v20 + 68) = 0;
    *(v20 + 70) = 0;
    *(v20 + 69) = 0;
    *(v20 + 2) = 0;
    *(v20 + 3) = 0;
    *(v20 + 1) = 0;
    IPC::Encoder::encodeHeader(v20);
    v33 = v20;
    IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(v20, &v27);
    WebKit::AuxiliaryProcessProxy::sendMessageAfterResuming(v8, &v29, &v33);
    if (v33)
    {
      IPC::Encoder::~Encoder(v33, v4);
      bmalloc::api::tzoneFree(v24, v25);
    }

    v21 = v29;
    if (v29)
    {
      v29 = 0;
      v30 = 0;
      WTF::fastFree(v21, v4);
    }

    v12 = v14;
LABEL_28:
    IPC::Encoder::~Encoder(v12, v4);
    bmalloc::api::tzoneFree(v22, v23);
LABEL_11:
    v13 = v27;
    v27 = 0;
    if (v13 && atomic_fetch_add_explicit(v13, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v13, v4);
    }

    ++v6;
    v7 -= 8;
    if (!v7)
    {
      goto LABEL_30;
    }
  }

  __break(1u);
LABEL_36:
  __break(0xC471u);
}

void sub_19DD37D68(_Unwind_Exception *a1, void *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, IPC::Encoder *a10, WTF::StringImpl *a11, WTF::StringImpl *a12, uint64_t a13, uint64_t a14, char a15, IPC::Encoder *a16)
{
  if (v16)
  {
    WTF::fastFree(v16, a2);
  }

  IPC::Encoder::~Encoder(a10, a2);
  bmalloc::api::tzoneFree(v19, v20);
  if (a11 && atomic_fetch_add_explicit(a11, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(a11, v21);
  }

  if (a12)
  {
    if (atomic_fetch_add_explicit(a12, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(a12, v21);
    }
  }

  CFRelease(*(v17 - 8));
  _Unwind_Resume(a1);
}

unsigned int *__destroy_helper_block_e8_32c106_ZTSKZZN6WebKit14WebProcessPool29registerNotificationObserversEvENK3__1clEP8NSStringEUlP14NSNotificationE_(uint64_t a1, void *a2)
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

uint64_t *WTF::Vector<WTF::URL,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::Vector(uint64_t *result, uint64_t a2, unint64_t a3)
{
  v3 = result;
  *result = 0;
  result[1] = 0;
  if (!a3)
  {
    return v3;
  }

  if (a3 < 0x6666667)
  {
    v6 = 40 * a3;
    v7 = WTF::fastMalloc((40 * a3));
    *(v3 + 2) = v6 / 0x28;
    *v3 = v7;
    v8 = a2 + 40 * a3;
    v9 = *(v3 + 3);
    do
    {
      v10 = *v3;
      v11 = *a2;
      if (*a2)
      {
        atomic_fetch_add_explicit(v11, 2u, memory_order_relaxed);
      }

      v12 = v10 + 40 * v9;
      *v12 = v11;
      v13 = *(a2 + 8);
      *(v12 + 24) = *(a2 + 24);
      *(v12 + 8) = v13;
      v9 = *(v3 + 3) + 1;
      *(v3 + 3) = v9;
      a2 += 40;
    }

    while (a2 != v8);
    return v3;
  }

  __break(0xC471u);
  return result;
}

void sub_19DD37F44(_Unwind_Exception *exception_object, void *a2)
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

_DWORD *WTF::HashTable<WTF::String,WTF::KeyValuePair<WTF::String,unsigned long long>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,unsigned long long>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,unsigned long long,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<unsigned long long>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::expand(uint64_t *a1)
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

  return WTF::HashTable<WTF::String,WTF::KeyValuePair<WTF::String,unsigned long long>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,unsigned long long>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,unsigned long long,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<unsigned long long>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::rehash(a1, v3);
}

_DWORD *WTF::HashTable<WTF::String,WTF::KeyValuePair<WTF::String,unsigned long long>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,unsigned long long>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,unsigned long long,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<unsigned long long>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::rehash(uint64_t *a1, unsigned int a2)
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

  result = WTF::fastZeroedMalloc((16 * a2 + 16));
  *a1 = (result + 4);
  result[2] = a2 - 1;
  result[3] = a2;
  *result = 0;
  result[1] = v6;
  if (v5)
  {
    for (i = 0; i != v5; ++i)
    {
      v10 = (v4 + 16 * i);
      v11 = *v10;
      if (*v10 != -1)
      {
        if (v11)
        {
          v12 = *a1;
          if (*a1)
          {
            v13 = *(v12 - 8);
          }

          else
          {
            v13 = 0;
          }

          v14 = *(v11 + 4);
          if (v14 < 0x100)
          {
            v15 = WTF::StringImpl::hashSlowCase(v11);
          }

          else
          {
            v15 = v14 >> 8;
          }

          v16 = 0;
          do
          {
            v17 = v15 & v13;
            v15 = ++v16 + v17;
          }

          while (*(v12 + 16 * v17));
          v18 = (v12 + 16 * v17);
          v19 = *v10;
          v20 = v10[1];
          *v10 = 0;
          *v18 = v19;
          v18[1] = v20;
          v21 = *v10;
          *v10 = 0;
          if (v21 && atomic_fetch_add_explicit(v21, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v21, v8);
          }
        }

        else
        {
          *v10 = 0;
        }
      }
    }
  }

  else if (!v4)
  {
    return result;
  }

  return WTF::fastFree((v4 - 16), v8);
}

uint64_t WTF::Detail::CallableWrapper<WebKit::WebProcessPool::lockdownModeStateChanged(void)::$_0,void,WebKit::LockdownModeObserver &>::call(uint64_t a1, uint64_t a2)
{
  (*(*a2 + 32))(a2);
  (*(*a2 + 16))(a2);
  v3 = *(*a2 + 40);

  return v3(a2);
}

uint64_t WTF::Detail::CallableWrapper<WebKit::WebProcessPool::lockdownModeStateChanged(void)::$_1,void,WebKit::LockdownModeObserver &>::call(uint64_t a1, uint64_t a2)
{
  (*(*a2 + 32))(a2);
  (*(*a2 + 24))(a2);
  v3 = *(*a2 + 40);

  return v3(a2);
}

uint64_t WebKit::AuxiliaryProcessProxy::send<Messages::WebProcess::SetScreenProperties>(uint64_t a1, void *a2, uint64_t a3, char a4)
{
  v8 = IPC::Encoder::operator new(0x238, a2);
  *v8 = 3010;
  *(v8 + 2) = 0;
  *(v8 + 3) = 0;
  *(v8 + 1) = a3;
  *(v8 + 68) = 0;
  *(v8 + 70) = 0;
  *(v8 + 69) = 0;
  IPC::Encoder::encodeHeader(v8);
  v18 = v8;
  IPC::ArgumentCoder<WebCore::ScreenProperties,void>::encode(v8, *a2);
  LOBYTE(v16) = 0;
  v17 = 0;
  v10 = WebKit::AuxiliaryProcessProxy::sendMessage(a1, &v18, a4, &v16, 1);
  if (v17 == 1)
  {
    v11 = v16;
    v16 = 0;
    if (v11)
    {
      (*(*v11 + 8))(v11);
    }
  }

  v12 = v18;
  v18 = 0;
  if (v12)
  {
    IPC::Encoder::~Encoder(v12, v9);
    bmalloc::api::tzoneFree(v14, v15);
  }

  return v10;
}

void sub_19DD383D4(_Unwind_Exception *exception_object, void *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, IPC::Encoder *a12)
{
  if (a11 == 1 && a9)
  {
    (*(*a9 + 8))(a9);
  }

  if (a12)
  {
    IPC::Encoder::~Encoder(a12, a2);
    bmalloc::api::tzoneFree(v13, v14);
  }

  _Unwind_Resume(exception_object);
}

uint64_t WTF::Detail::CallableWrapper<WebKit::WebProcessPool::registerHighDynamicRangeChangeCallback(void)::$_0,void,BOOL>::call(WebCore *a1)
{
  WebCore::collectScreenProperties(&v10, a1);
  WebKit::WebProcessPool::allProcessPools(&v8);
  if (v9)
  {
    v2 = v8;
    v3 = 8 * v9;
    do
    {
      v4 = *v2;
      v7 = &v10;
      WebKit::WebProcessPool::sendToAllProcesses<Messages::WebProcess::SetScreenProperties>(v4, &v7);
      ++v2;
      v3 -= 8;
    }

    while (v3);
  }

  WTF::Vector<WTF::Ref<WebKit::WebProcessPool,WTF::RawPtrTraits<WebKit::WebProcessPool>,WTF::DefaultRefDerefTraits<WebKit::WebProcessPool>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v8, v1);
  result = v11;
  if (v11)
  {
    return WTF::HashTable<unsigned int,WTF::KeyValuePair<unsigned int,WebCore::ScreenData>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<unsigned int,WebCore::ScreenData>>,WTF::DefaultHash<unsigned int>,WTF::HashMap<unsigned int,WebCore::ScreenData,WTF::DefaultHash<unsigned int>,WTF::HashTraits<unsigned int>,WTF::HashTraits<WebCore::ScreenData>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<unsigned int>,WTF::FastMalloc>::deallocateTable(v11, v5);
  }

  return result;
}

void sub_19DD384C4(_Unwind_Exception *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  WTF::Vector<WTF::Ref<WebKit::WebProcessPool,WTF::RawPtrTraits<WebKit::WebProcessPool>,WTF::DefaultRefDerefTraits<WebKit::WebProcessPool>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&a10, a2);
  if (a13)
  {
    WTF::HashTable<unsigned int,WTF::KeyValuePair<unsigned int,WebCore::ScreenData>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<unsigned int,WebCore::ScreenData>>,WTF::DefaultHash<unsigned int>,WTF::HashMap<unsigned int,WebCore::ScreenData,WTF::DefaultHash<unsigned int>,WTF::HashTraits<unsigned int>,WTF::HashTraits<WebCore::ScreenData>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<unsigned int>,WTF::FastMalloc>::deallocateTable(a13, v14);
  }

  _Unwind_Resume(a1);
}

void *WTF::Detail::CallableWrapper<WebKit::WebProcessPool::platformLoadResourceMonitorRuleList(WTF::CompletionHandler<void ()(WTF::RefPtr<WebKit::WebCompiledContentRuleList,WTF::RawPtrTraits<WebKit::WebCompiledContentRuleList>,WTF::DefaultRefDerefTraits<WebKit::WebCompiledContentRuleList>>)> &&)::$_0,void,WKContentRuleList *,BOOL>::~CallableWrapper(void *a1, void *a2)
{
  *a1 = &unk_1F1106630;
  v3 = a1[2];
  a1[2] = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  v4 = a1[1];
  a1[1] = 0;
  if (v4 && atomic_fetch_add(v4, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v4);
    WTF::fastFree(v4, a2);
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WebKit::WebProcessPool::platformLoadResourceMonitorRuleList(WTF::CompletionHandler<void ()(WTF::RefPtr<WebKit::WebCompiledContentRuleList,WTF::RawPtrTraits<WebKit::WebCompiledContentRuleList>,WTF::DefaultRefDerefTraits<WebKit::WebCompiledContentRuleList>>)> &&)::$_0,void,WKContentRuleList *,BOOL>::~CallableWrapper(WTF *this, void *a2)
{
  *this = &unk_1F1106630;
  v3 = *(this + 2);
  *(this + 2) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  v4 = *(this + 1);
  *(this + 1) = 0;
  if (v4 && atomic_fetch_add(v4, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v4);
    WTF::fastFree(v4, a2);
  }

  return WTF::fastFree(this, a2);
}

unsigned int *WTF::Detail::CallableWrapper<WebKit::WebProcessPool::platformLoadResourceMonitorRuleList(WTF::CompletionHandler<void ()(WTF::RefPtr<WebKit::WebCompiledContentRuleList,WTF::RawPtrTraits<WebKit::WebCompiledContentRuleList>,WTF::DefaultRefDerefTraits<WebKit::WebCompiledContentRuleList>>)> &&)::$_0,void,WKContentRuleList *,BOOL>::call(uint64_t a1, WKContentRuleList *a2, char a3)
{
  v4 = *(a1 + 8);
  if (v4 && (v5 = *(v4 + 8)) != 0)
  {
    CFRetain(*(v5 - 8));
    if (a2 && ((a3 & 1) != 0 || !*(v5 + 1048)))
    {
      v10 = qword_1ED641170;
      if (os_log_type_enabled(qword_1ED641170, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v12[0]) = 0;
        _os_log_impl(&dword_19D52D000, v10, OS_LOG_TYPE_DEFAULT, "WebProcessPool::platformLoadResourceMonitorRuleList rule list is loaded.", v12, 2u);
      }

      WebKit::createCompiledContentRuleList(v12, a2);
      v9 = v12[0];
    }

    else
    {
      v8 = qword_1ED641170;
      if (os_log_type_enabled(qword_1ED641170, OS_LOG_TYPE_ERROR))
      {
        LOWORD(v12[0]) = 0;
        _os_log_error_impl(&dword_19D52D000, v8, OS_LOG_TYPE_ERROR, "WebProcessPool::platformLoadResourceMonitorRuleList failed to load rule list.", v12, 2u);
      }

      v9 = 0;
    }

    CFRelease(*(v5 - 8));
  }

  else
  {
    v9 = 0;
  }

  v12[0] = v9;
  WTF::CompletionHandler<void ()(WTF::RefPtr<WebKit::WebCompiledContentRuleList,WTF::RawPtrTraits<WebKit::WebCompiledContentRuleList>,WTF::DefaultRefDerefTraits<WebKit::WebCompiledContentRuleList>>)>::operator()((a1 + 16), v12);
  result = v12[0];
  v12[0] = 0;
  if (result)
  {
    if (atomic_fetch_add(result + 2, 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, result + 2);
      return (*(*result + 8))(result);
    }
  }

  return result;
}

void sub_19DD3878C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, unsigned int *a9)
{
  if (a9)
  {
    if (atomic_fetch_add(a9 + 2, 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, a9 + 2);
      (*(*a9 + 8))(a9);
    }
  }

  _Unwind_Resume(exception_object);
}

uint64_t WTF::RobinHoodHashTable<WTF::String,WTF::String,WTF::IdentityExtractor,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::MemoryCompactLookupOnlyRobinHoodHashTableSizePolicy,WTF::FastMalloc>::reserveInitialCapacity(uint64_t a1, uint64_t a2)
{
  v3 = WTF::RobinHoodHashTable<WTF::String,WTF::String,WTF::IdentityExtractor,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::MemoryCompactLookupOnlyRobinHoodHashTableSizePolicy,WTF::FastMalloc>::computeBestTableSize(a2);
  if (v3 <= 8)
  {
    v4 = 8;
  }

  else
  {
    v4 = v3;
  }

  result = WTF::fastZeroedMalloc((8 * v4));
  *a1 = result;
  *(a1 + 8) = v4;
  *(a1 + 12) = 0;
  v6 = (~(result << 32) + result) ^ ((~(result << 32) + result) >> 22);
  v7 = 9 * ((v6 + ~(v6 << 13)) ^ ((v6 + ~(v6 << 13)) >> 8));
  v8 = (v7 ^ (v7 >> 15)) + ~((v7 ^ (v7 >> 15)) << 27);
  *(a1 + 16) = (v8 >> 31) ^ v8;
  *(a1 + 20) = 0;
  return result;
}

uint64_t WTF::RobinHoodHashTable<WTF::String,WTF::String,WTF::IdentityExtractor,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::MemoryCompactLookupOnlyRobinHoodHashTableSizePolicy,WTF::FastMalloc>::computeBestTableSize(uint64_t result)
{
  if (result >= 2)
  {
    v2 = __clz(result - 1);
    if (!v2)
    {
      __break(1u);
      return result;
    }

    v1 = 1 << -v2;
  }

  else
  {
    v1 = 1;
  }

  v3 = v1 << (20 * result >= 19 * v1);
  v4 = v3 << (v3 * 0.754166667 <= result);
  if (v4 <= 8)
  {
    return 8;
  }

  else
  {
    return v4;
  }
}

uint64_t WTF::ThreadSafeWeakPtrControlBlock::strongDeref<Inspector::RemoteControllableTarget,(WTF::DestructionThread)0>(atomic_uchar *this, void *a2)
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
  if (v6 == 1)
  {
    if (v4)
    {
      return result;
    }
  }

  else
  {
    v10 = v4;
    v11 = result;
    WTF::Lock::unlockSlow(this);
    result = v11;
    if (v10)
    {
      return result;
    }
  }

  if (result)
  {
    result = (*(*result + 8))(result);
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
  if (v8 == 1)
  {
    if (v9)
    {
      return result;
    }
  }

  else
  {
    v12 = v9;
    result = WTF::Lock::unlockSlow(this);
    if (v12)
    {
      return result;
    }
  }

  return WTF::fastFree(this, a2);
}

_DWORD *WTF::HashTable<WTF::ObjectIdentifierGeneric<WebCore::ServiceWorkerIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::ServiceWorkerIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::ServiceWorkerDebuggableProxy,WTF::RawPtrTraits<WebKit::ServiceWorkerDebuggableProxy>,WTF::DefaultRefDerefTraits<WebKit::ServiceWorkerDebuggableProxy>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::ServiceWorkerIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::ServiceWorkerDebuggableProxy,WTF::RawPtrTraits<WebKit::ServiceWorkerDebuggableProxy>,WTF::DefaultRefDerefTraits<WebKit::ServiceWorkerDebuggableProxy>>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ServiceWorkerIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::ServiceWorkerIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::ServiceWorkerDebuggableProxy,WTF::RawPtrTraits<WebKit::ServiceWorkerDebuggableProxy>,WTF::DefaultRefDerefTraits<WebKit::ServiceWorkerDebuggableProxy>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ServiceWorkerIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::ServiceWorkerIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::Ref<WebKit::ServiceWorkerDebuggableProxy,WTF::RawPtrTraits<WebKit::ServiceWorkerDebuggableProxy>,WTF::DefaultRefDerefTraits<WebKit::ServiceWorkerDebuggableProxy>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::ServiceWorkerIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::expand(uint64_t *a1)
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

  return WTF::HashTable<WTF::ObjectIdentifierGeneric<WebCore::ServiceWorkerIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::ServiceWorkerIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::ServiceWorkerDebuggableProxy,WTF::RawPtrTraits<WebKit::ServiceWorkerDebuggableProxy>,WTF::DefaultRefDerefTraits<WebKit::ServiceWorkerDebuggableProxy>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::ServiceWorkerIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::ServiceWorkerDebuggableProxy,WTF::RawPtrTraits<WebKit::ServiceWorkerDebuggableProxy>,WTF::DefaultRefDerefTraits<WebKit::ServiceWorkerDebuggableProxy>>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ServiceWorkerIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::ServiceWorkerIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::ServiceWorkerDebuggableProxy,WTF::RawPtrTraits<WebKit::ServiceWorkerDebuggableProxy>,WTF::DefaultRefDerefTraits<WebKit::ServiceWorkerDebuggableProxy>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ServiceWorkerIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::ServiceWorkerIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::Ref<WebKit::ServiceWorkerDebuggableProxy,WTF::RawPtrTraits<WebKit::ServiceWorkerDebuggableProxy>,WTF::DefaultRefDerefTraits<WebKit::ServiceWorkerDebuggableProxy>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::ServiceWorkerIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::rehash(a1, v3);
}

_DWORD *WTF::HashTable<WTF::ObjectIdentifierGeneric<WebCore::ServiceWorkerIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::ServiceWorkerIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::ServiceWorkerDebuggableProxy,WTF::RawPtrTraits<WebKit::ServiceWorkerDebuggableProxy>,WTF::DefaultRefDerefTraits<WebKit::ServiceWorkerDebuggableProxy>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::ServiceWorkerIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::ServiceWorkerDebuggableProxy,WTF::RawPtrTraits<WebKit::ServiceWorkerDebuggableProxy>,WTF::DefaultRefDerefTraits<WebKit::ServiceWorkerDebuggableProxy>>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ServiceWorkerIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::ServiceWorkerIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::ServiceWorkerDebuggableProxy,WTF::RawPtrTraits<WebKit::ServiceWorkerDebuggableProxy>,WTF::DefaultRefDerefTraits<WebKit::ServiceWorkerDebuggableProxy>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ServiceWorkerIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::ServiceWorkerIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::Ref<WebKit::ServiceWorkerDebuggableProxy,WTF::RawPtrTraits<WebKit::ServiceWorkerDebuggableProxy>,WTF::DefaultRefDerefTraits<WebKit::ServiceWorkerDebuggableProxy>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::ServiceWorkerIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::rehash(uint64_t *a1, unsigned int a2)
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

  result = WTF::fastZeroedMalloc((16 * a2 + 16));
  *a1 = (result + 4);
  result[2] = a2 - 1;
  result[3] = a2;
  *result = 0;
  result[1] = v6;
  if (v5)
  {
    v9 = 0;
    while (1)
    {
      v10 = (v4 + 16 * v9);
      v11 = *v10;
      if (*v10 != -1)
      {
        if (v11)
        {
          v13 = *a1;
          if (*a1)
          {
            v14 = *(v13 - 8);
          }

          else
          {
            v14 = 0;
          }

          v15 = (v11 + ~(v11 << 32)) ^ ((v11 + ~(v11 << 32)) >> 22);
          v16 = 9 * ((v15 + ~(v15 << 13)) ^ ((v15 + ~(v15 << 13)) >> 8));
          v17 = (v16 ^ (v16 >> 15)) + ~((v16 ^ (v16 >> 15)) << 27);
          v18 = v14 & ((v17 >> 31) ^ v17);
          v19 = 1;
          do
          {
            v20 = v18;
            v21 = *(v13 + 16 * v18);
            v18 = (v18 + v19++) & v14;
          }

          while (v21);
          v22 = (v13 + 16 * v20);
          v23 = v22[1];
          v22[1] = 0;
          if (v23)
          {
            WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<Inspector::RemoteControllableTarget,(WTF::DestructionThread)0>::deref((v23 + 8), v8);
          }

          *v22 = *v10;
          v24 = v10[1];
          v10[1] = 0;
          v22[1] = v24;
          v12 = v10[1];
          v10[1] = 0;
          if (!v12)
          {
            goto LABEL_19;
          }

LABEL_18:
          WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<Inspector::RemoteControllableTarget,(WTF::DestructionThread)0>::deref((v12 + 8), v8);
          goto LABEL_19;
        }

        v12 = v10[1];
        v10[1] = 0;
        if (v12)
        {
          goto LABEL_18;
        }
      }

LABEL_19:
      if (++v9 == v5)
      {
        goto LABEL_22;
      }
    }
  }

  if (v4)
  {
LABEL_22:

    return WTF::fastFree((v4 - 16), v8);
  }

  return result;
}

void WebKit::DownloadManager::~DownloadManager(WebKit::DownloadManager *this, void *a2)
{
  v3 = *(this + 4);
  if (v3)
  {
    WTF::HashTable<WTF::ObjectIdentifierGeneric<WebKit::DownloadIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::DownloadIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::Download,WTF::RawPtrTraits<WebKit::Download>,WTF::DefaultRefDerefTraits<WebKit::Download>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::DownloadIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::Download,WTF::RawPtrTraits<WebKit::Download>,WTF::DefaultRefDerefTraits<WebKit::Download>>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::DownloadIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::DownloadIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::Download,WTF::RawPtrTraits<WebKit::Download>,WTF::DefaultRefDerefTraits<WebKit::Download>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::DownloadIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::DownloadIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::Ref<WebKit::Download,WTF::RawPtrTraits<WebKit::Download>,WTF::DefaultRefDerefTraits<WebKit::Download>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::DownloadIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::deallocateTable(v3, a2);
  }

  v4 = *(this + 3);
  if (v4)
  {
    WTF::HashTable<WTF::ObjectIdentifierGeneric<WebKit::DownloadIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::DownloadIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::RefPtr<WebKit::NetworkDataTask,WTF::RawPtrTraits<WebKit::NetworkDataTask>,WTF::DefaultRefDerefTraits<WebKit::NetworkDataTask>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::DownloadIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::RefPtr<WebKit::NetworkDataTask,WTF::RawPtrTraits<WebKit::NetworkDataTask>,WTF::DefaultRefDerefTraits<WebKit::NetworkDataTask>>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::DownloadIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::DownloadIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::RefPtr<WebKit::NetworkDataTask,WTF::RawPtrTraits<WebKit::NetworkDataTask>,WTF::DefaultRefDerefTraits<WebKit::NetworkDataTask>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::DownloadIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::DownloadIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::RefPtr<WebKit::NetworkDataTask,WTF::RawPtrTraits<WebKit::NetworkDataTask>,WTF::DefaultRefDerefTraits<WebKit::NetworkDataTask>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::DownloadIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::deallocateTable(v4, a2);
  }

  v5 = *(this + 2);
  if (v5)
  {
    WTF::HashTable<WTF::ObjectIdentifierGeneric<WebKit::DownloadIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::DownloadIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::PendingDownload,WTF::RawPtrTraits<WebKit::PendingDownload>,WTF::DefaultRefDerefTraits<WebKit::PendingDownload>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::DownloadIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::PendingDownload,WTF::RawPtrTraits<WebKit::PendingDownload>,WTF::DefaultRefDerefTraits<WebKit::PendingDownload>>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::DownloadIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::DownloadIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::PendingDownload,WTF::RawPtrTraits<WebKit::PendingDownload>,WTF::DefaultRefDerefTraits<WebKit::PendingDownload>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::DownloadIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::DownloadIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::Ref<WebKit::PendingDownload,WTF::RawPtrTraits<WebKit::PendingDownload>,WTF::DefaultRefDerefTraits<WebKit::PendingDownload>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::DownloadIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::deallocateTable(v5, a2);
  }

  v6 = *(this + 1);
  *(this + 1) = 0;
  if (v6)
  {
    (*(*v6 + 56))(v6);
  }
}

uint64_t WebKit::DownloadManager::startDownload(uint64_t a1, uint64_t a2, uint64_t a3, CFTypeRef *a4, WebCore::SecurityOriginData *a5, __int16 a6, atomic_uint **a7, char a8, uint64_t a9, char a10, uint64_t a11, char a12, uint64_t a13, uint64_t a14)
{
  v82 = *MEMORY[0x1E69E9840];
  v65 = a3;
  v14 = *(a1 + 8);
  if (!v14)
  {
    __break(0xC471u);
    goto LABEL_55;
  }

  v19 = a3;
  (**v14)(*(a1 + 8));
  v22 = (*(*v14 + 104))(v14, a2);
  if (v22)
  {
    v23 = v22;
    v59 = a1;
    ++*(v22 + 16);
    memset(v66, 0, 44);
    WebCore::ResourceRequest::ResourceRequest(v67);
    v69 = 0;
    v70 = 1;
    v71 = 0;
    v72[0] = 0;
    v73 = 0;
    v76 = 0;
    v78 = 0;
    *v74 = 0u;
    v75 = 0;
    v79 = 16777472;
    v80 = 0;
    v81 = 0;
    if (a10)
    {
      *&v66[1] = a9;
    }

    if (a12)
    {
      *(&v66[0] + 1) = a11;
    }

    WebCore::ResourceRequestBase::operator=(v67, a4);
    v24 = a4[24];
    if (v24)
    {
      CFRetain(a4[24]);
    }

    v25 = cf;
    cf = v24;
    if (v25)
    {
      CFRelease(v25);
    }

    HIBYTE(v69) = 1;
    LOWORD(v79) = a6;
    WebCore::ResourceRequestBase::url(a4);
    if (!WTF::URL::protocolIs())
    {
LABEL_23:
      BYTE2(v69) = a2 > -2;
      WebKit::DownloadManager::Client::protectedParentProcessConnectionForDownloads(v14, &v63);
      v33 = v63;
      v35 = WebKit::PendingDownload::operator new(0x98, v34);
      *(v35 + 16) = 0x100000000;
      v36 = v35 + 24;
      *v35 = &unk_1F1106658;
      *(v35 + 8) = 0;
      *(v35 + 24) = &unk_1F11066F8;
      v38 = WebKit::NetworkLoad::operator new(0xDD0, v37);
      *(v35 + 32) = WebKit::NetworkLoad::NetworkLoad(v38, v35, v66, v23);
      if (v33)
      {
        while (1)
        {
          v39 = *v33;
          if ((*v33 & 1) == 0)
          {
            break;
          }

          v40 = *v33;
          atomic_compare_exchange_strong_explicit(v33, &v40, v39 + 2, memory_order_relaxed, memory_order_relaxed);
          if (v40 == v39)
          {
            goto LABEL_28;
          }
        }

        WTF::ThreadSafeWeakPtrControlBlock::strongRef(*v33);
      }

LABEL_28:
      *(v35 + 40) = v33;
      *(v35 + 49) = 0;
      *(v35 + 50) = a8;
      *(v35 + 56) = a13;
      *(v35 + 64) = a14;
      *(v35 + 72) = 0;
      WTF::URL::invalidate((v35 + 72));
      *(v35 + 144) = 0;
      *(v35 + 112) = 0u;
      *(v35 + 128) = 0u;
      WebKit::NetworkLoad::start(*(v35 + 32));
      *(v35 + 48) = HIBYTE(v69);
      WebKit::NetworkLoad::setPendingDownloadID(*(v35 + 32), v19);
      WebKit::NetworkLoad::setPendingDownload(*(v35 + 32), v35);
      v41 = *(v35 + 32);
      v42 = *(v41 + 3312);
      if (v42)
      {
        WTF::String::operator=((v42 + 528), a7);
        v41 = *(v35 + 32);
      }

      v43 = (*(*v36 + 56))(v36);
      v45 = IPC::Encoder::operator new(0x238, v44);
      *v45 = 16;
      *(v45 + 2) = 0;
      *(v45 + 3) = 0;
      *(v45 + 1) = v43;
      *(v45 + 68) = 0;
      *(v45 + 70) = 0;
      *(v45 + 69) = 0;
      IPC::Encoder::encodeHeader(v45);
      v61 = v45;
      IPC::ArgumentCoder<WebCore::ResourceRequest,void>::encode(v45, (v41 + 3328));
      IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(v45, a7);
      (*(*v36 + 32))(v36, &v61, 0);
      v47 = v61;
      v61 = 0;
      if (v47)
      {
        IPC::Encoder::~Encoder(v47, v46);
        bmalloc::api::tzoneFree(v56, v57);
      }

      v64 = v35;
      WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::DownloadIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::PendingDownload,WTF::RawPtrTraits<WebKit::PendingDownload>,WTF::DefaultRefDerefTraits<WebKit::PendingDownload>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::DownloadIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::DownloadIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::Ref<WebKit::PendingDownload,WTF::RawPtrTraits<WebKit::PendingDownload>,WTF::DefaultRefDerefTraits<WebKit::PendingDownload>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::add<WTF::Ref<WebKit::PendingDownload,WTF::RawPtrTraits<WebKit::PendingDownload>,WTF::DefaultRefDerefTraits<WebKit::PendingDownload>>>((v59 + 16), &v65, &v64, &v61);
      v49 = v64;
      v64 = 0;
      if (v49)
      {
        if (v49[5] == 1)
        {
          (*(*v49 + 24))(v49);
          if (!v33)
          {
LABEL_37:
            if (v78 == 1)
            {
              v58 = v77;
              v77 = 0;
              if (v58)
              {
              }
            }

            WTF::Vector<WTF::RefPtr<WebCore::BlobDataFileReference,WTF::RawPtrTraits<WebCore::BlobDataFileReference>,WTF::DefaultRefDerefTraits<WebCore::BlobDataFileReference>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v74, v48);
            if (v73 == 1)
            {
              WebKit::NavigationActionData::~NavigationActionData(v72, v50);
            }

            WebCore::ResourceRequest::~ResourceRequest(v67);
            v52 = *&v66[2];
            *&v66[2] = 0;
            if (v52)
            {
              WTF::ThreadSafeRefCounted<WebCore::SecurityOrigin,(WTF::DestructionThread)0>::deref(v52, v51);
            }

            v53 = *(&v66[1] + 1);
            *(&v66[1] + 1) = 0;
            if (v53)
            {
              WTF::ThreadSafeRefCounted<WebCore::SecurityOrigin,(WTF::DestructionThread)0>::deref(v53, v51);
            }

            v54 = *(v23 + 4);
            if (v54)
            {
              *(v23 + 4) = v54 - 1;
              return (*(*v14 + 8))(v14);
            }

            __break(0xC471u);
LABEL_55:
            JUMPOUT(0x19DD39268);
          }

LABEL_36:
          WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v33);
          goto LABEL_37;
        }

        --v49[5];
      }

      if (!v33)
      {
        goto LABEL_37;
      }

      goto LABEL_36;
    }

    if (*(a5 + 32) == 1)
    {
      WebCore::SecurityOriginData::securityOrigin(&v61, a5);
      v27 = v61;
      if (v61)
      {
        atomic_fetch_add(v61, 1u);
      }

      v28 = *(&v66[1] + 1);
      *(&v66[1] + 1) = v27;
      if (v28)
      {
        WTF::ThreadSafeRefCounted<WebCore::SecurityOrigin,(WTF::DestructionThread)0>::deref(v28, v26);
      }

      v29 = v61;
      v61 = 0;
      if (!v29)
      {
        goto LABEL_18;
      }
    }

    else
    {
      v29 = *(&v66[1] + 1);
      *(&v66[1] + 1) = 0;
      if (!v29)
      {
LABEL_18:
        (*(*v14 + 104))(v14, a2);
        WebCore::ResourceRequestBase::url(a4);
        WebCore::BlobRegistryImpl::filesInBlob();
        if (HIDWORD(v74[1]))
        {
          WTF::VectorDestructor<true,WTF::RefPtr<WebCore::BlobDataFileReference,WTF::RawPtrTraits<WebCore::BlobDataFileReference>,WTF::DefaultRefDerefTraits<WebCore::BlobDataFileReference>>>::destruct(v74[0], v74[0] + HIDWORD(v74[1]));
        }

        v31 = v74[0];
        if (v74[0])
        {
          v74[0] = 0;
          LODWORD(v74[1]) = 0;
          WTF::fastFree(v31, v30);
        }

        v74[0] = v61;
        v32 = v62;
        v61 = 0;
        v62 = 0;
        v74[1] = v32;
        WTF::Vector<WTF::RefPtr<WebCore::BlobDataFileReference,WTF::RawPtrTraits<WebCore::BlobDataFileReference>,WTF::DefaultRefDerefTraits<WebCore::BlobDataFileReference>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v61, v30);
        v19 = v65;
        goto LABEL_23;
      }
    }

    WTF::ThreadSafeRefCounted<WebCore::SecurityOrigin,(WTF::DestructionThread)0>::deref(v29, v26);
    goto LABEL_18;
  }

  return (*(*v14 + 8))(v14);
}

uint64_t *WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::DownloadIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::PendingDownload,WTF::RawPtrTraits<WebKit::PendingDownload>,WTF::DefaultRefDerefTraits<WebKit::PendingDownload>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::DownloadIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::DownloadIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::Ref<WebKit::PendingDownload,WTF::RawPtrTraits<WebKit::PendingDownload>,WTF::DefaultRefDerefTraits<WebKit::PendingDownload>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::add<WTF::Ref<WebKit::PendingDownload,WTF::RawPtrTraits<WebKit::PendingDownload>,WTF::DefaultRefDerefTraits<WebKit::PendingDownload>>>@<X0>(uint64_t *result@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X8>)
{
  v5 = *a2;
  if (*a2 == -1 || !v5)
  {
    __break(0xC471u);
    JUMPOUT(0x19DD39484);
  }

  v8 = result;
  v9 = *result;
  if (!*result)
  {
    result = WTF::HashTable<WTF::ObjectIdentifierGeneric<WebKit::DownloadIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::DownloadIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::PendingDownload,WTF::RawPtrTraits<WebKit::PendingDownload>,WTF::DefaultRefDerefTraits<WebKit::PendingDownload>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::DownloadIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::PendingDownload,WTF::RawPtrTraits<WebKit::PendingDownload>,WTF::DefaultRefDerefTraits<WebKit::PendingDownload>>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::DownloadIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::DownloadIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::PendingDownload,WTF::RawPtrTraits<WebKit::PendingDownload>,WTF::DefaultRefDerefTraits<WebKit::PendingDownload>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::DownloadIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::DownloadIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::Ref<WebKit::PendingDownload,WTF::RawPtrTraits<WebKit::PendingDownload>,WTF::DefaultRefDerefTraits<WebKit::PendingDownload>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::DownloadIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::expand(result, 0);
    v9 = *v8;
    v5 = *a2;
  }

  v10 = *(v9 - 8);
  v11 = (v5 + ~(v5 << 32)) ^ ((v5 + ~(v5 << 32)) >> 22);
  v12 = 9 * ((v11 + ~(v11 << 13)) ^ ((v11 + ~(v11 << 13)) >> 8));
  v13 = (v12 ^ (v12 >> 15)) + ~((v12 ^ (v12 >> 15)) << 27);
  v14 = v10 & ((v13 >> 31) ^ v13);
  v15 = (v9 + 16 * v14);
  v16 = *v15;
  if (*v15)
  {
    v17 = 0;
    v18 = 1;
    do
    {
      if (v16 == v5)
      {
        v22 = 0;
        v23 = v9 + 16 * *(v9 - 4);
        goto LABEL_26;
      }

      if (v16 == -1)
      {
        v17 = v15;
      }

      v14 = (v14 + v18) & v10;
      v15 = (v9 + 16 * v14);
      v16 = *v15;
      ++v18;
    }

    while (*v15);
    if (v17)
    {
      *v17 = 0;
      v17[1] = 0;
      --*(*v8 - 16);
      v5 = *a2;
      v15 = v17;
    }
  }

  *v15 = v5;
  v19 = *a3;
  *a3 = 0;
  result = v15[1];
  v15[1] = v19;
  if (result)
  {
    if (*(result + 5) == 1)
    {
      result = (*(*result + 24))(result);
    }

    else
    {
      --*(result + 5);
    }
  }

  v20 = *v8;
  if (*v8)
  {
    v21 = *(v20 - 12) + 1;
  }

  else
  {
    v21 = 1;
  }

  *(v20 - 12) = v21;
  v24 = (*(v20 - 16) + v21);
  v25 = *(v20 - 4);
  if (v25 > 0x400)
  {
    if (v25 <= 2 * v24)
    {
LABEL_22:
      result = WTF::HashTable<WTF::ObjectIdentifierGeneric<WebKit::DownloadIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::DownloadIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::PendingDownload,WTF::RawPtrTraits<WebKit::PendingDownload>,WTF::DefaultRefDerefTraits<WebKit::PendingDownload>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::DownloadIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::PendingDownload,WTF::RawPtrTraits<WebKit::PendingDownload>,WTF::DefaultRefDerefTraits<WebKit::PendingDownload>>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::DownloadIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::DownloadIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::PendingDownload,WTF::RawPtrTraits<WebKit::PendingDownload>,WTF::DefaultRefDerefTraits<WebKit::PendingDownload>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::DownloadIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::DownloadIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::Ref<WebKit::PendingDownload,WTF::RawPtrTraits<WebKit::PendingDownload>,WTF::DefaultRefDerefTraits<WebKit::PendingDownload>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::DownloadIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::expand(v8, v15);
      v15 = result;
      v20 = *v8;
      if (*v8)
      {
        v25 = *(v20 - 4);
      }

      else
      {
        v25 = 0;
      }
    }
  }

  else if (3 * v25 <= 4 * v24)
  {
    goto LABEL_22;
  }

  v23 = v20 + 16 * v25;
  v22 = 1;
LABEL_26:
  *a4 = v15;
  *(a4 + 8) = v23;
  *(a4 + 16) = v22;
  return result;
}

atomic_ullong *WebKit::DownloadManager::Client::protectedParentProcessConnectionForDownloads@<X0>(WebKit::DownloadManager::Client *this@<X0>, atomic_ullong **a2@<X8>)
{
  result = (*(*this + 88))(this);
  v4 = result;
  if (result)
  {
    while (1)
    {
      v5 = *result;
      if ((*result & 1) == 0)
      {
        break;
      }

      v6 = *result;
      atomic_compare_exchange_strong_explicit(result, &v6, v5 + 2, memory_order_relaxed, memory_order_relaxed);
      if (v6 == v5)
      {
        goto LABEL_6;
      }
    }

    result = WTF::ThreadSafeWeakPtrControlBlock::strongRef(*result);
  }

LABEL_6:
  *a2 = v4;
  return result;
}

uint64_t *WebKit::DownloadManager::dataTaskBecameDownloadTask(uint64_t *a1, uint64_t a2, WebKit::Download **a3)
{
  v12 = a2;
  v5 = WTF::HashTable<WTF::ObjectIdentifierGeneric<WebKit::DownloadIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::DownloadIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::PendingDownload,WTF::RawPtrTraits<WebKit::PendingDownload>,WTF::DefaultRefDerefTraits<WebKit::PendingDownload>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::DownloadIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::PendingDownload,WTF::RawPtrTraits<WebKit::PendingDownload>,WTF::DefaultRefDerefTraits<WebKit::PendingDownload>>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::DownloadIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::DownloadIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::PendingDownload,WTF::RawPtrTraits<WebKit::PendingDownload>,WTF::DefaultRefDerefTraits<WebKit::PendingDownload>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::DownloadIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::DownloadIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::Ref<WebKit::PendingDownload,WTF::RawPtrTraits<WebKit::PendingDownload>,WTF::DefaultRefDerefTraits<WebKit::PendingDownload>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::DownloadIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::find<WTF::IdentityHashTranslator<WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::DownloadIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::PendingDownload,WTF::RawPtrTraits<WebKit::PendingDownload>,WTF::DefaultRefDerefTraits<WebKit::PendingDownload>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::DownloadIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::DownloadIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::Ref<WebKit::PendingDownload,WTF::RawPtrTraits<WebKit::PendingDownload>,WTF::DefaultRefDerefTraits<WebKit::PendingDownload>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::DownloadIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,(WTF::ShouldValidateKey)1,WTF::ObjectIdentifierGeneric<WebKit::DownloadIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(a1 + 2, &v12);
  WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::DownloadIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::PendingDownload,WTF::RawPtrTraits<WebKit::PendingDownload>,WTF::DefaultRefDerefTraits<WebKit::PendingDownload>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::DownloadIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::DownloadIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::Ref<WebKit::PendingDownload,WTF::RawPtrTraits<WebKit::PendingDownload>,WTF::DefaultRefDerefTraits<WebKit::PendingDownload>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::take(a1 + 2, v5, v11);
  if (v11[0])
  {
    WebKit::PendingDownload::didBecomeDownload(v11[0], *a3);
    v6 = v11[0];
    v11[0] = 0;
    if (v6)
    {
      if (*(v6 + 5) == 1)
      {
        (*(*v6 + 24))(v6);
      }

      else
      {
        --*(v6 + 5);
      }
    }
  }

  v7 = WTF::HashTable<WTF::ObjectIdentifierGeneric<WebKit::DownloadIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::DownloadIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::RefPtr<WebKit::NetworkDataTask,WTF::RawPtrTraits<WebKit::NetworkDataTask>,WTF::DefaultRefDerefTraits<WebKit::NetworkDataTask>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::DownloadIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::RefPtr<WebKit::NetworkDataTask,WTF::RawPtrTraits<WebKit::NetworkDataTask>,WTF::DefaultRefDerefTraits<WebKit::NetworkDataTask>>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::DownloadIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::DownloadIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::RefPtr<WebKit::NetworkDataTask,WTF::RawPtrTraits<WebKit::NetworkDataTask>,WTF::DefaultRefDerefTraits<WebKit::NetworkDataTask>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::DownloadIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::DownloadIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::RefPtr<WebKit::NetworkDataTask,WTF::RawPtrTraits<WebKit::NetworkDataTask>,WTF::DefaultRefDerefTraits<WebKit::NetworkDataTask>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::DownloadIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::find<WTF::IdentityHashTranslator<WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::DownloadIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::RefPtr<WebKit::NetworkDataTask,WTF::RawPtrTraits<WebKit::NetworkDataTask>,WTF::DefaultRefDerefTraits<WebKit::NetworkDataTask>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::DownloadIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::DownloadIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::RefPtr<WebKit::NetworkDataTask,WTF::RawPtrTraits<WebKit::NetworkDataTask>,WTF::DefaultRefDerefTraits<WebKit::NetworkDataTask>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::DownloadIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,(WTF::ShouldValidateKey)1,WTF::ObjectIdentifierGeneric<WebKit::DownloadIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(a1 + 3, &v12);
  v8 = a1[3];
  if (v8)
  {
    v9 = (v8 + 16 * *(v8 - 4));
    if (v9 == v7)
    {
      return WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::DownloadIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::Download,WTF::RawPtrTraits<WebKit::Download>,WTF::DefaultRefDerefTraits<WebKit::Download>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::DownloadIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::DownloadIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::Ref<WebKit::Download,WTF::RawPtrTraits<WebKit::Download>,WTF::DefaultRefDerefTraits<WebKit::Download>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::add<WTF::Ref<WebKit::Download,WTF::RawPtrTraits<WebKit::Download>,WTF::DefaultRefDerefTraits<WebKit::Download>>>(a1 + 4, &v12, a3, v11);
    }
  }

  else
  {
    if (!v7)
    {
      return WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::DownloadIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::Download,WTF::RawPtrTraits<WebKit::Download>,WTF::DefaultRefDerefTraits<WebKit::Download>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::DownloadIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::DownloadIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::Ref<WebKit::Download,WTF::RawPtrTraits<WebKit::Download>,WTF::DefaultRefDerefTraits<WebKit::Download>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::add<WTF::Ref<WebKit::Download,WTF::RawPtrTraits<WebKit::Download>,WTF::DefaultRefDerefTraits<WebKit::Download>>>(a1 + 4, &v12, a3, v11);
    }

    v9 = 0;
  }

  if (v9 != v7)
  {
    WTF::HashTable<WTF::ObjectIdentifierGeneric<WebKit::DownloadIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::DownloadIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::RefPtr<WebKit::NetworkDataTask,WTF::RawPtrTraits<WebKit::NetworkDataTask>,WTF::DefaultRefDerefTraits<WebKit::NetworkDataTask>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::DownloadIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::RefPtr<WebKit::NetworkDataTask,WTF::RawPtrTraits<WebKit::NetworkDataTask>,WTF::DefaultRefDerefTraits<WebKit::NetworkDataTask>>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::DownloadIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::DownloadIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::RefPtr<WebKit::NetworkDataTask,WTF::RawPtrTraits<WebKit::NetworkDataTask>,WTF::DefaultRefDerefTraits<WebKit::NetworkDataTask>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::DownloadIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::DownloadIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::RefPtr<WebKit::NetworkDataTask,WTF::RawPtrTraits<WebKit::NetworkDataTask>,WTF::DefaultRefDerefTraits<WebKit::NetworkDataTask>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::DownloadIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::remove(a1 + 3, v7);
  }

  return WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::DownloadIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::Download,WTF::RawPtrTraits<WebKit::Download>,WTF::DefaultRefDerefTraits<WebKit::Download>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::DownloadIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::DownloadIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::Ref<WebKit::Download,WTF::RawPtrTraits<WebKit::Download>,WTF::DefaultRefDerefTraits<WebKit::Download>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::add<WTF::Ref<WebKit::Download,WTF::RawPtrTraits<WebKit::Download>,WTF::DefaultRefDerefTraits<WebKit::Download>>>(a1 + 4, &v12, a3, v11);
}

void WebKit::PendingDownload::didBecomeDownload(WebKit::PendingDownload *this, WebKit::Download *a2)
{
  if (*(this + 80))
  {
    WebKit::Download::publishProgress(a2, (this + 72), *(this + 14), *(this + 31), *(this + 144), *(this + 16), *(this + 35));
  }
}

uint64_t *WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::DownloadIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::Download,WTF::RawPtrTraits<WebKit::Download>,WTF::DefaultRefDerefTraits<WebKit::Download>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::DownloadIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::DownloadIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::Ref<WebKit::Download,WTF::RawPtrTraits<WebKit::Download>,WTF::DefaultRefDerefTraits<WebKit::Download>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::add<WTF::Ref<WebKit::Download,WTF::RawPtrTraits<WebKit::Download>,WTF::DefaultRefDerefTraits<WebKit::Download>>>@<X0>(uint64_t *result@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X8>)
{
  v5 = *a2;
  if (*a2 == -1)
  {
    __break(0xC471u);
    JUMPOUT(0x19DD39814);
  }

  if (!v5)
  {
    __break(0xC471u);
    JUMPOUT(0x19DD39834);
  }

  v8 = result;
  v9 = *result;
  if (!*result)
  {
    result = WTF::HashTable<WTF::ObjectIdentifierGeneric<WebKit::DownloadIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::DownloadIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::Download,WTF::RawPtrTraits<WebKit::Download>,WTF::DefaultRefDerefTraits<WebKit::Download>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::DownloadIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::Download,WTF::RawPtrTraits<WebKit::Download>,WTF::DefaultRefDerefTraits<WebKit::Download>>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::DownloadIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::DownloadIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::Download,WTF::RawPtrTraits<WebKit::Download>,WTF::DefaultRefDerefTraits<WebKit::Download>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::DownloadIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::DownloadIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::Ref<WebKit::Download,WTF::RawPtrTraits<WebKit::Download>,WTF::DefaultRefDerefTraits<WebKit::Download>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::DownloadIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::expand(result, 0);
    v9 = *v8;
    v5 = *a2;
  }

  v10 = *(v9 - 8);
  v11 = (v5 + ~(v5 << 32)) ^ ((v5 + ~(v5 << 32)) >> 22);
  v12 = 9 * ((v11 + ~(v11 << 13)) ^ ((v11 + ~(v11 << 13)) >> 8));
  v13 = (v12 ^ (v12 >> 15)) + ~((v12 ^ (v12 >> 15)) << 27);
  v14 = v10 & ((v13 >> 31) ^ v13);
  v15 = (v9 + 16 * v14);
  v16 = *v15;
  if (*v15)
  {
    v17 = 0;
    v18 = 1;
    do
    {
      if (v16 == v5)
      {
        v26 = 0;
        v25 = v9 + 16 * *(v9 - 4);
        goto LABEL_23;
      }

      if (v16 == -1)
      {
        v17 = v15;
      }

      v14 = (v14 + v18) & v10;
      v15 = (v9 + 16 * v14);
      v16 = *v15;
      ++v18;
    }

    while (*v15);
    if (v17)
    {
      *v17 = 0;
      v17[1] = 0;
      --*(*v8 - 16);
      v5 = *a2;
      v15 = v17;
    }
  }

  *v15 = v5;
  v19 = *a3;
  *a3 = 0;
  v20 = v15[1];
  v15[1] = v19;
  if (v20)
  {
    result = WTF::RefCounted<WebKit::Download>::deref((v20 + 16));
  }

  v21 = *v8;
  if (*v8)
  {
    v22 = *(v21 - 12) + 1;
  }

  else
  {
    v22 = 1;
  }

  *(v21 - 12) = v22;
  v23 = (*(v21 - 16) + v22);
  v24 = *(v21 - 4);
  if (v24 > 0x400)
  {
    if (v24 <= 2 * v23)
    {
LABEL_19:
      result = WTF::HashTable<WTF::ObjectIdentifierGeneric<WebKit::DownloadIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::DownloadIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::Download,WTF::RawPtrTraits<WebKit::Download>,WTF::DefaultRefDerefTraits<WebKit::Download>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::DownloadIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::Download,WTF::RawPtrTraits<WebKit::Download>,WTF::DefaultRefDerefTraits<WebKit::Download>>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::DownloadIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::DownloadIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::Download,WTF::RawPtrTraits<WebKit::Download>,WTF::DefaultRefDerefTraits<WebKit::Download>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::DownloadIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::DownloadIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::Ref<WebKit::Download,WTF::RawPtrTraits<WebKit::Download>,WTF::DefaultRefDerefTraits<WebKit::Download>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::DownloadIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::expand(v8, v15);
      v15 = result;
      v21 = *v8;
      if (*v8)
      {
        v24 = *(v21 - 4);
      }

      else
      {
        v24 = 0;
      }
    }
  }

  else if (3 * v24 <= 4 * v23)
  {
    goto LABEL_19;
  }

  v25 = v21 + 16 * v24;
  v26 = 1;
LABEL_23:
  *a4 = v15;
  *(a4 + 8) = v25;
  *(a4 + 16) = v26;
  return result;
}

uint64_t WebKit::DownloadManager::convertNetworkLoadToDownload(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t a5, WebCore::ResourceRequest *a6, WebCore::ResourceResponseBase *a7)
{
  v22 = a2;
  v7 = *(a1 + 8);
  if (v7)
  {
    (**v7)(*(a1 + 8));
    WebKit::DownloadManager::Client::protectedParentProcessConnectionForDownloads(v7, &v20);
    v14 = v20;
    v16 = WebKit::PendingDownload::operator new(0x98, v15);
    v21 = WebKit::PendingDownload::PendingDownload(v16, v14, a3, a4, a2, a6, a7);
    WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::DownloadIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::PendingDownload,WTF::RawPtrTraits<WebKit::PendingDownload>,WTF::DefaultRefDerefTraits<WebKit::PendingDownload>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::DownloadIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::DownloadIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::Ref<WebKit::PendingDownload,WTF::RawPtrTraits<WebKit::PendingDownload>,WTF::DefaultRefDerefTraits<WebKit::PendingDownload>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::add<WTF::Ref<WebKit::PendingDownload,WTF::RawPtrTraits<WebKit::PendingDownload>,WTF::DefaultRefDerefTraits<WebKit::PendingDownload>>>((a1 + 16), &v22, &v21, &v19);
    v17 = v21;
    v21 = 0;
    if (v17)
    {
      if (v17[5] == 1)
      {
        (*(*v17 + 24))(v17);
        if (!v14)
        {
          return (*(*v7 + 8))(v7);
        }

        goto LABEL_6;
      }

      --v17[5];
    }

    if (!v14)
    {
      return (*(*v7 + 8))(v7);
    }

LABEL_6:
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v14);
    return (*(*v7 + 8))(v7);
  }

  result = 114;
  __break(0xC471u);
  return result;
}

void *WebKit::DownloadManager::resumeDownload(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, WTF::FileSystemImpl *a6, uint64_t *a7, int a8, uint64_t a9, uint64_t a10)
{
  v38 = a3;
  v10 = a1[1];
  if (!v10)
  {
    __break(0xC471u);
    goto LABEL_19;
  }

  (**v10)(a1[1]);
  v18 = (*(*v10 + 104))(v10, a2);
  if (v18)
  {
    v19 = v18;
    ++*(v18 + 16);
    (*(*v10 + 8))(v10);
    v21 = WebKit::Download::operator new(0x1C8, v20);
    v37 = WebKit::Download::Download(v21, a1, a3, 0, v19);
    WebKit::Download::resume(v37, a4, a5, a6, a7, a9, a10);
    if (a8)
    {
      WebCore::ResourceRequest::ResourceRequest(v36);
      v35 = 0;
      v22 = (*(*v21 + 56))(v21);
      v24 = IPC::Encoder::operator new(0x238, v23);
      *v24 = 16;
      *(v24 + 2) = 0;
      *(v24 + 3) = 0;
      *(v24 + 1) = v22;
      *(v24 + 68) = 0;
      *(v24 + 70) = 0;
      *(v24 + 69) = 0;
      IPC::Encoder::encodeHeader(v24);
      v39 = v24;
      IPC::ArgumentCoder<WebCore::ResourceRequest,void>::encode(v24, v36);
      IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(v24, &v35);
      (*(*v21 + 32))(v21, &v39, 0);
      v26 = v39;
      v39 = 0;
      if (v26)
      {
        IPC::Encoder::~Encoder(v26, v25);
        bmalloc::api::tzoneFree(v31, v32);
      }

      v27 = v35;
      v35 = 0;
      if (v27 && atomic_fetch_add_explicit(v27, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v27, v25);
      }

      WebCore::ResourceRequest::~ResourceRequest(v36);
    }

    result = WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::DownloadIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::Download,WTF::RawPtrTraits<WebKit::Download>,WTF::DefaultRefDerefTraits<WebKit::Download>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::DownloadIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::DownloadIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::Ref<WebKit::Download,WTF::RawPtrTraits<WebKit::Download>,WTF::DefaultRefDerefTraits<WebKit::Download>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::add<WTF::Ref<WebKit::Download,WTF::RawPtrTraits<WebKit::Download>,WTF::DefaultRefDerefTraits<WebKit::Download>>>(a1 + 4, &v38, &v37, v36);
    v29 = v37;
    v37 = 0;
    if (v29)
    {
      result = WTF::RefCounted<WebKit::Download>::deref((v29 + 16));
    }

    v30 = *(v19 + 16);
    if (v30)
    {
      *(v19 + 16) = v30 - 1;
      return result;
    }

    __break(0xC471u);
LABEL_19:
    JUMPOUT(0x19DD39C94);
  }

  v33 = *(*v10 + 8);

  return v33(v10);
}

_DWORD *WebKit::DownloadManager::cancelDownload(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v11 = a2;
  v5 = WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::DownloadIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::Download,WTF::RawPtrTraits<WebKit::Download>,WTF::DefaultRefDerefTraits<WebKit::Download>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::DownloadIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::DownloadIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::Ref<WebKit::Download,WTF::RawPtrTraits<WebKit::Download>,WTF::DefaultRefDerefTraits<WebKit::Download>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::get<WTF::IdentityHashTranslator<WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::DownloadIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::Download,WTF::RawPtrTraits<WebKit::Download>,WTF::DefaultRefDerefTraits<WebKit::Download>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::DownloadIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::DownloadIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::Ref<WebKit::Download,WTF::RawPtrTraits<WebKit::Download>,WTF::DefaultRefDerefTraits<WebKit::Download>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::DownloadIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::ObjectIdentifierGeneric<WebKit::DownloadIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>((a1 + 32), &v11);
  if (v5)
  {
    v6 = (v5 + 16);
    ++*(v5 + 16);
    WebKit::Download::cancel(v5, a3, 1);
    return WTF::RefCounted<WebKit::Download>::deref(v6);
  }

  else
  {
    v8 = WTF::HashTable<WTF::ObjectIdentifierGeneric<WebKit::DownloadIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::DownloadIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::PendingDownload,WTF::RawPtrTraits<WebKit::PendingDownload>,WTF::DefaultRefDerefTraits<WebKit::PendingDownload>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::DownloadIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::PendingDownload,WTF::RawPtrTraits<WebKit::PendingDownload>,WTF::DefaultRefDerefTraits<WebKit::PendingDownload>>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::DownloadIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::DownloadIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::PendingDownload,WTF::RawPtrTraits<WebKit::PendingDownload>,WTF::DefaultRefDerefTraits<WebKit::PendingDownload>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::DownloadIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::DownloadIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::Ref<WebKit::PendingDownload,WTF::RawPtrTraits<WebKit::PendingDownload>,WTF::DefaultRefDerefTraits<WebKit::PendingDownload>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::DownloadIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::find<WTF::IdentityHashTranslator<WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::DownloadIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::PendingDownload,WTF::RawPtrTraits<WebKit::PendingDownload>,WTF::DefaultRefDerefTraits<WebKit::PendingDownload>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::DownloadIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::DownloadIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::Ref<WebKit::PendingDownload,WTF::RawPtrTraits<WebKit::PendingDownload>,WTF::DefaultRefDerefTraits<WebKit::PendingDownload>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::DownloadIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,(WTF::ShouldValidateKey)1,WTF::ObjectIdentifierGeneric<WebKit::DownloadIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>((a1 + 16), &v11);
    WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::DownloadIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::PendingDownload,WTF::RawPtrTraits<WebKit::PendingDownload>,WTF::DefaultRefDerefTraits<WebKit::PendingDownload>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::DownloadIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::DownloadIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::Ref<WebKit::PendingDownload,WTF::RawPtrTraits<WebKit::PendingDownload>,WTF::DefaultRefDerefTraits<WebKit::PendingDownload>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::take((a1 + 16), v8, &v10);
    if (v10)
    {
      WebKit::PendingDownload::cancel(v10, a3);
      result = v10;
      v10 = 0;
      if (result)
      {
        if (result[5] == 1)
        {
          return (*(*result + 24))(result);
        }

        else
        {
          --result[5];
        }
      }
    }

    else
    {
      v9 = *a3;
      *a3 = 0;
      (*(*v9 + 16))(v9, 0, 0);
      return (*(*v9 + 8))(v9);
    }
  }

  return result;
}

uint64_t WebKit::PendingDownload::cancel(uint64_t a1, uint64_t *a2)
{
  WebKit::NetworkLoad::cancel(*(a1 + 32));
  v3 = *a2;
  *a2 = 0;
  (*(*v3 + 16))(v3, 0, 0);
  v4 = *(*v3 + 8);

  return v4(v3);
}

_DWORD *WebKit::DownloadManager::publishDownloadProgress(uint64_t a1, uint64_t a2, WTF::URL *a3, uint64_t a4, WTF *a5, uint64_t a6, uint64_t a7, WTF *a8)
{
  v19 = a2;
  v15 = WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::DownloadIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::Download,WTF::RawPtrTraits<WebKit::Download>,WTF::DefaultRefDerefTraits<WebKit::Download>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::DownloadIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::DownloadIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::Ref<WebKit::Download,WTF::RawPtrTraits<WebKit::Download>,WTF::DefaultRefDerefTraits<WebKit::Download>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::get<WTF::IdentityHashTranslator<WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::DownloadIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::Download,WTF::RawPtrTraits<WebKit::Download>,WTF::DefaultRefDerefTraits<WebKit::Download>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::DownloadIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::DownloadIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::Ref<WebKit::Download,WTF::RawPtrTraits<WebKit::Download>,WTF::DefaultRefDerefTraits<WebKit::Download>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::DownloadIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::ObjectIdentifierGeneric<WebKit::DownloadIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>((a1 + 32), &v19);
  if (v15)
  {
    v16 = v15 + 4;
    ++v15[4];
    WebKit::Download::publishProgress(v15, a3, a4, a5, a6, a7, a8);
    return WTF::RefCounted<WebKit::Download>::deref(v16);
  }

  else
  {
    result = WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::DownloadIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::PendingDownload,WTF::RawPtrTraits<WebKit::PendingDownload>,WTF::DefaultRefDerefTraits<WebKit::PendingDownload>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::DownloadIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::DownloadIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::Ref<WebKit::PendingDownload,WTF::RawPtrTraits<WebKit::PendingDownload>,WTF::DefaultRefDerefTraits<WebKit::PendingDownload>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::get<WTF::IdentityHashTranslator<WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::DownloadIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::PendingDownload,WTF::RawPtrTraits<WebKit::PendingDownload>,WTF::DefaultRefDerefTraits<WebKit::PendingDownload>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::DownloadIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::DownloadIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::Ref<WebKit::PendingDownload,WTF::RawPtrTraits<WebKit::PendingDownload>,WTF::DefaultRefDerefTraits<WebKit::PendingDownload>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::DownloadIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::ObjectIdentifierGeneric<WebKit::DownloadIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>((a1 + 16), &v19);
    if (result)
    {
      v18 = result;
      ++result[5];
      result = WebKit::PendingDownload::publishProgress(result, a3, a4, a5, a6, a7, a8);
      if (v18[5] == 1)
      {
        return (*(*v18 + 24))(v18);
      }

      else
      {
        --v18[5];
      }
    }
  }

  return result;
}

WTF *WebKit::PendingDownload::publishProgress(uint64_t a1, uint64_t a2, uint64_t a3, WTF *a4, char a5, uint64_t a6, WTF *a7)
{
  WTF::URL::operator=(a1 + 72, a2);
  if (a4)
  {
    if (a4 >> 32)
    {
      goto LABEL_16;
    }

    v14 = WTF::fastMalloc(a4);
    v15 = v14;
    v16 = 0;
    do
    {
      *(v16 + v14) = *(v16 + a3);
      v16 = (v16 + 1);
    }

    while (a4 != v16);
  }

  else
  {
    v15 = 0;
  }

  v17 = *(a1 + 112);
  if (v17)
  {
    *(a1 + 112) = 0;
    *(a1 + 120) = 0;
    WTF::fastFree(v17, v13);
  }

  *(a1 + 112) = v15;
  *(a1 + 120) = a4;
  *(a1 + 124) = a4;
  *(a1 + 144) = a5;
  if (!a7)
  {
    v19 = 0;
    goto LABEL_11;
  }

  if (a7 >> 32)
  {
LABEL_16:
    __break(0xC471u);
    JUMPOUT(0x19DD3A0B4);
  }

  v18 = WTF::fastMalloc(a7);
  v19 = v18;
  v20 = 0;
  do
  {
    *(v20 + v18) = *(v20 + a6);
    v20 = (v20 + 1);
  }

  while (a7 != v20);
LABEL_11:
  result = *(a1 + 128);
  if (result)
  {
    *(a1 + 128) = 0;
    *(a1 + 136) = 0;
    result = WTF::fastFree(result, v13);
  }

  *(a1 + 128) = v19;
  *(a1 + 136) = a7;
  *(a1 + 140) = a7;
  return result;
}

uint64_t WebKit::DownloadManager::downloadFinished(WebKit::DownloadManager *this, WebKit::Download *a2)
{
  v3 = *(a2 + 3);
  if (v3)
  {
    if (!*v3)
    {
      result = 290;
      __break(0xC471u);
      return result;
    }

    --*v3;
  }

  *(a2 + 3) = 0;
  v7 = *(a2 + 4);
  result = WTF::HashTable<WTF::ObjectIdentifierGeneric<WebKit::DownloadIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::DownloadIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::Download,WTF::RawPtrTraits<WebKit::Download>,WTF::DefaultRefDerefTraits<WebKit::Download>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::DownloadIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::Download,WTF::RawPtrTraits<WebKit::Download>,WTF::DefaultRefDerefTraits<WebKit::Download>>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::DownloadIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::DownloadIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::Download,WTF::RawPtrTraits<WebKit::Download>,WTF::DefaultRefDerefTraits<WebKit::Download>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::DownloadIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::DownloadIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::Ref<WebKit::Download,WTF::RawPtrTraits<WebKit::Download>,WTF::DefaultRefDerefTraits<WebKit::Download>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::DownloadIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::find<WTF::IdentityHashTranslator<WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::DownloadIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::Download,WTF::RawPtrTraits<WebKit::Download>,WTF::DefaultRefDerefTraits<WebKit::Download>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::DownloadIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::DownloadIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::Ref<WebKit::Download,WTF::RawPtrTraits<WebKit::Download>,WTF::DefaultRefDerefTraits<WebKit::Download>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::DownloadIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,(WTF::ShouldValidateKey)1,WTF::ObjectIdentifierGeneric<WebKit::DownloadIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(this + 4, &v7);
  v5 = *(this + 4);
  if (v5)
  {
    v6 = v5 + 16 * *(v5 - 4);
    if (v6 == result)
    {
      return result;
    }
  }

  else
  {
    if (!result)
    {
      return result;
    }

    v6 = 0;
  }

  if (v6 != result)
  {
    return WTF::HashTable<WTF::ObjectIdentifierGeneric<WebKit::DownloadIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::DownloadIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::Download,WTF::RawPtrTraits<WebKit::Download>,WTF::DefaultRefDerefTraits<WebKit::Download>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::DownloadIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::Download,WTF::RawPtrTraits<WebKit::Download>,WTF::DefaultRefDerefTraits<WebKit::Download>>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::DownloadIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::DownloadIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::Download,WTF::RawPtrTraits<WebKit::Download>,WTF::DefaultRefDerefTraits<WebKit::Download>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::DownloadIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::DownloadIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::Ref<WebKit::Download,WTF::RawPtrTraits<WebKit::Download>,WTF::DefaultRefDerefTraits<WebKit::Download>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::DownloadIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::remove(this + 4, result);
  }

  return result;
}

uint64_t WebKit::DownloadManager::didCreateDownload(WebKit::DownloadManager *this)
{
  v1 = *(this + 1);
  if (v1)
  {
    (**v1)(*(this + 1));
    (*(*v1 + 64))(v1);
    v2 = *(*v1 + 8);

    return v2(v1);
  }

  else
  {
    result = 114;
    __break(0xC471u);
  }

  return result;
}

uint64_t WebKit::DownloadManager::didDestroyDownload(WebKit::DownloadManager *this)
{
  v1 = *(this + 1);
  if (v1)
  {
    (**v1)(*(this + 1));
    (*(*v1 + 72))(v1);
    v2 = *(*v1 + 8);

    return v2(v1);
  }

  else
  {
    result = 114;
    __break(0xC471u);
  }

  return result;
}

uint64_t WebKit::DownloadManager::downloadProxyConnection(WebKit::DownloadManager *this)
{
  v1 = *(this + 1);
  if (v1)
  {
    (**v1)(*(this + 1));
    v2 = (*(*v1 + 80))(v1);
    (*(*v1 + 8))(v1);
    return v2;
  }

  else
  {
    result = 114;
    __break(0xC471u);
  }

  return result;
}

uint64_t WebKit::DownloadManager::Client::protectedDownloadsAuthenticationManager@<X0>(WebKit::DownloadManager::Client *this@<X0>, void *a2@<X8>)
{
  result = (*(*this + 96))(this);
  v4 = *(*(result + 24) + 8);
  if (v4)
  {
    atomic_fetch_add((v4 + 144), 1u);
    *a2 = result;
  }

  else
  {
    result = 92;
    __break(0xC471u);
  }

  return result;
}

void *WebKit::DownloadManager::applicationDidEnterBackground(WebKit::DownloadManager *this)
{
  result = WTF::HashTable<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::begin(this + 4);
  v3 = result;
  v5 = v4;
  v6 = *(this + 4);
  if (v6)
  {
    v7 = (v6 + 16 * *(v6 - 4));
  }

  else
  {
    v7 = 0;
  }

  if (v7 != result)
  {
    do
    {
      v8 = v3[1];
      v9 = v8 + 4;
      ++v8[4];
      WebKit::Download::applicationDidEnterBackground(v8);
      result = WTF::RefCounted<WebKit::Download>::deref(v9);
      do
      {
        v3 += 2;
      }

      while (v3 != v5 && (*v3 + 1) <= 1);
    }

    while (v3 != v7);
  }

  return result;
}

uint64_t WebKit::Download::applicationDidEnterBackground(WebKit::Download *this)
{
  v1 = (this + 176);
  v2 = *(*(this + 22) + 8);
  if (v2)
  {
    ++*(v2 + 16);
    WebKit::DownloadMonitor::applicationDidEnterBackground((this + 176));

    return WebKit::DownloadMonitor::deref(v1);
  }

  else
  {
    result = 92;
    __break(0xC471u);
  }

  return result;
}

void *WebKit::DownloadManager::applicationWillEnterForeground(WebKit::DownloadManager *this)
{
  result = WTF::HashTable<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::begin(this + 4);
  v3 = result;
  v5 = v4;
  v6 = *(this + 4);
  if (v6)
  {
    v7 = (v6 + 16 * *(v6 - 4));
  }

  else
  {
    v7 = 0;
  }

  if (v7 != result)
  {
    do
    {
      v8 = v3[1];
      v9 = v8 + 4;
      ++v8[4];
      WebKit::Download::applicationWillEnterForeground(v8);
      result = WTF::RefCounted<WebKit::Download>::deref(v9);
      do
      {
        v3 += 2;
      }

      while (v3 != v5 && (*v3 + 1) <= 1);
    }

    while (v3 != v7);
  }

  return result;
}

uint64_t WebKit::Download::applicationWillEnterForeground(WebKit::Download *this)
{
  v11 = *MEMORY[0x1E69E9840];
  v1 = (this + 176);
  v2 = *(*(this + 22) + 8);
  if (v2)
  {
    ++*(v2 + 16);
    v4 = qword_1ED6416F0;
    if (os_log_type_enabled(qword_1ED6416F0, OS_LOG_TYPE_DEFAULT))
    {
      v5 = *(v2 + 32);
      v7 = 134218240;
      v8 = v1;
      v9 = 2048;
      v10 = v5;
      _os_log_impl(&dword_19D52D000, v4, OS_LOG_TYPE_DEFAULT, "%p - DownloadMonitor::applicationWillEnterForeground (id = %llu)", &v7, 0x16u);
    }

    if ((*(this + 51) & 0xFFFFFFFFFFFFLL) != 0)
    {
      WebCore::TimerBase::stopSlowCase((this + 376));
    }

    *(this + 54) = 0;

    return WebKit::DownloadMonitor::deref(v1);
  }

  else
  {
    result = 92;
    __break(0xC471u);
  }

  return result;
}

WebKit::DownloadMonitor *WebKit::DownloadMonitor::DownloadMonitor(WebKit::DownloadMonitor *this, WebKit::Download *a2)
{
  WTF::WeakPtrFactory<WebPushD::PushServiceConnection,WTF::DefaultWeakPtrImpl>::initializeIfNeeded(a2 + 2, a2);
  v4 = *(a2 + 1);
  atomic_fetch_add(v4, 1u);
  *this = v4;
  *(this + 1) = 0;
  *(this + 2) = 0;
  *(this + 3) = this + 40;
  *(this + 4) = 10;
  WebCore::TimerBase::TimerBase((this + 200));
  *(this + 25) = &unk_1F10EB388;
  v5 = WTF::fastMalloc(0x20);
  *v5 = &unk_1F1106898;
  v5[1] = this;
  v5[2] = WebKit::DownloadMonitor::timerFired;
  v5[3] = 0;
  *(this + 31) = v5;
  *(this + 32) = 0;
  return this;
}

void WebKit::DownloadMonitor::timerFired(WebKit::DownloadMonitor *this)
{
  v1 = this;
  v28 = *MEMORY[0x1E69E9840];
  v2 = WebKit::DownloadMonitor::downloadReceivedBytes(this, 0);
  v3 = *(v1 + 32);
  if (v3 >= 9)
  {
    goto LABEL_43;
  }

  v4 = *(v1 + 1);
  v5 = *(v1 + 2);
  v6 = 0.0;
  if (v4 == v5)
  {
    goto LABEL_16;
  }

  v7 = 0;
  v8 = *(v1 + 8);
  v9 = *(v1 + 1);
  do
  {
    if (v9 >= v8)
    {
      goto LABEL_35;
    }

    v10 = *(v1 + 3);
    v11 = *(v10 + 16 * v9 + 8);
    v9 += v8 + 1;
    do
    {
      v9 -= v8;
    }

    while (v9 >= v8);
    v7 += v11;
  }

  while (v5 != v9);
  if (!v7)
  {
    goto LABEL_16;
  }

  if (v5)
  {
    v12 = v5 - 1;
    if (v12 >= v8)
    {
LABEL_35:
      __break(1u);
LABEL_36:
      (*(*v2 + 8))(v2);
LABEL_22:
      WTF::RefCounted<WebKit::Download>::deref(v1);
      return;
    }

    v13 = (v10 + 16 * v12);
  }

  else
  {
    v13 = (v10 + 16 * v8 - 16);
  }

  if (v4 >= v8)
  {
    goto LABEL_35;
  }

  v14 = *v13 - *(v10 + 16 * v4);
  if (v14 != 0.0)
  {
    v6 = v7 / v14;
  }

LABEL_16:
  if (v6 < WebKit::throughputIntervals[2 * v3 + 1])
  {
    v15 = qword_1ED6416F0;
    if (os_log_type_enabled(qword_1ED6416F0, OS_LOG_TYPE_DEFAULT))
    {
      v16 = *(*v1 + 8);
      if (!v16)
      {
        __break(0xC471u);
        JUMPOUT(0x19DD3AB60);
      }

      v17 = *(v16 + 32);
      *v25 = 134218240;
      *&v25[4] = v1;
      v26 = 2048;
      v27 = v17;
      _os_log_impl(&dword_19D52D000, v15, OS_LOG_TYPE_DEFAULT, "%p - DownloadMonitor::timerFired: cancelling download (id = %llu)", v25, 0x16u);
    }

    v18 = *(*v1 + 8);
    if (!v18)
    {
      __break(0xC471u);
      JUMPOUT(0x19DD3AB40);
    }

    v1 = (v18 + 16);
    ++*(v18 + 16);
    v19 = WTF::fastMalloc(0x10);
    *v19 = &unk_1F11068C0;
    *v25 = v19;
    WebKit::Download::cancel(v18, v25, 0);
    v2 = *v25;
    if (!*v25)
    {
      goto LABEL_22;
    }

    goto LABEL_36;
  }

  v20 = qword_1ED6416F0;
  v2 = os_log_type_enabled(qword_1ED6416F0, OS_LOG_TYPE_DEFAULT);
  if (v3 == 8)
  {
    if (v2)
    {
      v21 = *(*v1 + 8);
      if (!v21)
      {
        __break(0xC471u);
        JUMPOUT(0x19DD3ABC0);
      }

      v22 = *(v21 + 32);
      *v25 = 134218240;
      *&v25[4] = v1;
      v26 = 2048;
      v27 = v22;
      _os_log_impl(&dword_19D52D000, v20, OS_LOG_TYPE_DEFAULT, "%p - DownloadMonitor::timerFired: Download reached threshold to not be terminated (id = %llu)", v25, 0x16u);
    }

    return;
  }

  if (v2)
  {
    v23 = *(*v1 + 8);
    if (v23)
    {
      v24 = *(v23 + 32);
      *v25 = 134218240;
      *&v25[4] = v1;
      v26 = 2048;
      v27 = v24;
      _os_log_impl(&dword_19D52D000, v20, OS_LOG_TYPE_DEFAULT, "%p - DownloadMonitor::timerFired: sufficient throughput rate (id = %llu)", v25, 0x16u);
      v3 = *(v1 + 32);
      goto LABEL_30;
    }

LABEL_43:
    __break(0xC471u);
    JUMPOUT(0x19DD3AB20);
  }

LABEL_30:
  *(v1 + 32) = v3 + 1;
  if (v3 + 1 >= 9)
  {
    __break(0xC471u);
    JUMPOUT(0x19DD3AB80);
  }

  if (v3 >= 9)
  {
    goto LABEL_35;
  }

  if (!*(*v1 + 8))
  {
    __break(0xC471u);
    JUMPOUT(0x19DD3ABA0);
  }

  WebCore::TimerBase::start();
}

uint64_t WebKit::DownloadMonitor::deref(WebKit::DownloadMonitor *this)
{
  v1 = *(*this + 8);
  if (v1)
  {
    return WTF::RefCounted<WebKit::Download>::deref((v1 + 16));
  }

  result = 92;
  __break(0xC471u);
  return result;
}

uint64_t WebKit::DownloadMonitor::downloadReceivedBytes(uint64_t this, uint64_t a2)
{
  v3 = this;
  v4 = *(this + 8);
  v5 = *(this + 16);
  v6 = (this + 8);
  v7 = v5;
  if (v4 > v5)
  {
    v7 = v5 + *(this + 32);
  }

  if (v7 - v4 >= 0xA)
  {
    if (v4 == v5)
    {
      this = 513;
      __break(0xC471u);
      goto LABEL_25;
    }

    v8 = *(this + 32);
    if (v4 >= v8)
    {
LABEL_25:
      __break(1u);
      return this;
    }

    if (v4 == v8 - 1)
    {
      v9 = 0;
    }

    else
    {
      v9 = v4 + 1;
    }

    *v6 = v9;
  }

  this = WTF::MonotonicTime::now(this);
  v11 = v10;
  v13 = *(v3 + 8);
  v12 = *(v3 + 16);
  if (v13)
  {
    if (v12 + 1 != v13)
    {
      goto LABEL_19;
    }

    goto LABEL_18;
  }

  v14 = *(v3 + 32);
  if (!v12)
  {
    if (v14)
    {
      v12 = 0;
      goto LABEL_19;
    }

    goto LABEL_18;
  }

  if (v12 == v14 - 1)
  {
LABEL_18:
    this = WTF::Deque<WebKit::DownloadMonitor::Timestamp,10ul>::expandCapacity(v6);
    v12 = *(v3 + 16);
  }

LABEL_19:
  if (v12 >= *(v3 + 32))
  {
    goto LABEL_25;
  }

  v15 = (*(v3 + 24) + 16 * v12);
  *v15 = v11;
  v15[1] = a2;
  v16 = *(v3 + 16);
  if (v16 == *(v3 + 32) - 1)
  {
    v17 = 0;
  }

  else
  {
    v17 = v16 + 1;
  }

  *(v3 + 16) = v17;
  return this;
}

uint64_t WebKit::DownloadMonitor::applicationDidEnterBackground(WebKit::DownloadMonitor *this)
{
  v10 = *MEMORY[0x1E69E9840];
  v2 = qword_1ED6416F0;
  if (os_log_type_enabled(qword_1ED6416F0, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(*this + 8);
    if (!v3)
    {
      __break(0xC471u);
LABEL_8:
      JUMPOUT(0x19DD3AE44);
    }

    v4 = *(v3 + 32);
    v6 = 134218240;
    v7 = this;
    v8 = 2048;
    v9 = v4;
    _os_log_impl(&dword_19D52D000, v2, OS_LOG_TYPE_DEFAULT, "%p - DownloadMonitor::applicationDidEnterBackground (id = %llu)", &v6, 0x16u);
  }

  if (!*(*this + 8))
  {
    __break(0xC471u);
    goto LABEL_8;
  }

  return WebCore::TimerBase::start();
}

uint64_t WebKit::PendingDownload::PendingDownload(uint64_t a1, atomic_ullong *a2, uint64_t *a3, uint64_t *a4, uint64_t a5, WebCore::ResourceRequest *a6, WebCore::ResourceResponseBase *a7)
{
  *(a1 + 16) = 0x100000000;
  v13 = a1 + 24;
  *a1 = &unk_1F1106658;
  *(a1 + 8) = 0;
  v14 = *a3;
  *a3 = 0;
  *(a1 + 24) = &unk_1F11066F8;
  *(a1 + 32) = v14;
  if (a2)
  {
    while (1)
    {
      v15 = *a2;
      if ((*a2 & 1) == 0)
      {
        break;
      }

      v16 = *a2;
      atomic_compare_exchange_strong_explicit(a2, &v16, v15 + 2, memory_order_relaxed, memory_order_relaxed);
      if (v16 == v15)
      {
        goto LABEL_6;
      }
    }

    WTF::ThreadSafeWeakPtrControlBlock::strongRef(*a2);
  }

LABEL_6:
  *(a1 + 72) = 0;
  *(a1 + 40) = a2;
  *(a1 + 49) = 0;
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  WTF::URL::invalidate((a1 + 72));
  *(a1 + 144) = 0;
  *(a1 + 128) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 48) = WebKit::NetworkLoad::isAllowedToAskUserForCredentials(*(a1 + 32));
  WebKit::NetworkLoad::setPendingDownloadID(*(a1 + 32), a5);
  v26 = 0;
  v17 = (*(*(a1 + 24) + 56))(v13);
  v19 = IPC::Encoder::operator new(0x238, v18);
  *v19 = 16;
  *(v19 + 2) = 0;
  *(v19 + 3) = 0;
  *(v19 + 1) = v17;
  *(v19 + 68) = 0;
  *(v19 + 70) = 0;
  *(v19 + 69) = 0;
  IPC::Encoder::encodeHeader(v19);
  v27 = v19;
  IPC::ArgumentCoder<WebCore::ResourceRequest,void>::encode(v19, a6);
  IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(v19, &v26);
  (*(*(a1 + 24) + 32))(v13, &v27, 0);
  v21 = v27;
  v27 = 0;
  if (v21)
  {
    IPC::Encoder::~Encoder(v21, v20);
    bmalloc::api::tzoneFree(v24, v25);
  }

  v22 = v26;
  v26 = 0;
  if (v22 && atomic_fetch_add_explicit(v22, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v22, v20);
  }

  WebKit::NetworkLoad::convertTaskToDownload(*(a1 + 32), a1, a6, a7, a4);
  return a1;
}

void WebKit::PendingDownload::~PendingDownload(WebKit::PendingDownload *this, void *a2)
{
  *this = &unk_1F1106658;
  *(this + 3) = &unk_1F11066F8;
  v3 = *(this + 16);
  if (v3)
  {
    *(this + 16) = 0;
    *(this + 34) = 0;
    WTF::fastFree(v3, a2);
  }

  v4 = *(this + 14);
  if (v4)
  {
    *(this + 14) = 0;
    *(this + 30) = 0;
    WTF::fastFree(v4, a2);
  }

  v5 = *(this + 9);
  *(this + 9) = 0;
  if (v5 && atomic_fetch_add_explicit(v5, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v5, a2);
  }

  v6 = *(this + 5);
  *(this + 5) = 0;
  if (v6)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v6);
  }

  v7 = *(this + 4);
  *(this + 4) = 0;
  if (v7)
  {
    WTF::RefCounted<WebKit::NetworkLoad>::deref((v7 + 16), a2);
  }

  WTF::WeakPtrFactory<WebPushD::PushServiceConnection,WTF::DefaultWeakPtrImpl>::~WeakPtrFactory(this + 1, a2);
  if (*(this + 5) != 1)
  {
    __break(0xC471u);
  }
}

void non-virtual thunk toWebKit::PendingDownload::~PendingDownload(WebKit::PendingDownload *this, void *a2)
{
  WebKit::PendingDownload::~PendingDownload((this - 24), a2);
}

{
  WebKit::PendingDownload::operator delete((this - 24), a2);
}

double WebKit::PendingDownload::operator delete(WebKit::PendingDownload *a1, void *a2)
{
  WebKit::PendingDownload::~PendingDownload(a1, a2);
  if (atomic_load((v2 + 16)))
  {
    *(v2 + 144) = 0;
    result = 0.0;
    *(v2 + 112) = 0u;
    *(v2 + 128) = 0u;
    *(v2 + 80) = 0u;
    *(v2 + 96) = 0u;
    *(v2 + 48) = 0u;
    *(v2 + 64) = 0u;
    *(v2 + 16) = 0u;
    *(v2 + 32) = 0u;
    *v2 = 0u;
  }

  else
  {

    bmalloc::api::tzoneFree(v2, v3);
  }

  return result;
}

uint64_t WebKit::PendingDownload::willSendRedirectedRequest(uint64_t a1, uint64_t a2, WebCore::ResourceRequestBase *a3, WebCore::ResourceResponseBase *a4, uint64_t *a5)
{
  if (!WTF::linkedOnOrAfterSDKWithBehavior() || *(a1 + 50) != 1)
  {
    goto LABEL_7;
  }

  v9 = WebCore::ResourceResponseBase::url(a4);
  WebCore::SecurityOrigin::create(&v44, v9, v10);
  v11 = v44;
  v12 = WebCore::ResourceRequestBase::url(a3);
  WebCore::SecurityOrigin::create(&v42, v12, v13);
  isSameOriginAs = WebCore::SecurityOrigin::isSameOriginAs(v11, v42);
  v16 = v42;
  v42 = 0;
  if (v16)
  {
    WTF::ThreadSafeRefCounted<WebCore::SecurityOrigin,(WTF::DestructionThread)0>::deref(v16, v14);
  }

  v17 = v44;
  v44 = 0;
  if (v17)
  {
    WTF::ThreadSafeRefCounted<WebCore::SecurityOrigin,(WTF::DestructionThread)0>::deref(v17, v14);
    if ((isSameOriginAs & 1) == 0)
    {
      goto LABEL_14;
    }

LABEL_7:
    v19 = *(a1 + 24);
    v18 = a1 + 24;
    v20 = (*(v19 + 56))(v18);
    v22 = IPC::Encoder::operator new(0x238, v21);
    *v22 = 18;
    *(v22 + 2) = 0;
    *(v22 + 3) = 0;
    *(v22 + 1) = v20;
    *(v22 + 68) = 0;
    *(v22 + 70) = 0;
    *(v22 + 69) = 0;
    IPC::Encoder::encodeHeader(v22);
    v42 = v22;
    IPC::ArgumentCoder<WebCore::ResourceRequest,void>::encode(v22, a3);
    IPC::ArgumentCoder<WebCore::ResourceResponse,void>::encode(v22, a4);
    v23 = *a5;
    *a5 = 0;
    v24 = WTF::fastMalloc(0x10);
    *v24 = &unk_1F11068E8;
    v24[1] = v23;
    if (WTF::ObjectIdentifierGeneric<IPC::AsyncReplyIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>::m_generationProtected != 1)
    {
      v25 = v24;
      IdentifierInternal = WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>::generateIdentifierInternal();
      v44 = v25;
      v45 = IdentifierInternal;
      (*(*v18 + 40))(v18, &v42, &v44, 0);
      v28 = v44;
      v44 = 0;
      if (v28)
      {
        (*(*v28 + 8))(v28);
      }

      result = v42;
      v42 = 0;
      if (result)
      {
        IPC::Encoder::~Encoder(result, v27);
        return bmalloc::api::tzoneFree(v30, v31);
      }

      return result;
    }

LABEL_32:
    result = 141;
    __break(0xC471u);
    return result;
  }

  if (isSameOriginAs)
  {
    goto LABEL_7;
  }

LABEL_14:
  WebCore::ResourceRequest::ResourceRequest(&v44);
  v32 = *a5;
  *a5 = 0;
  (*(*v32 + 16))(v32, &v44);
  (*(*v32 + 8))(v32);
  WebCore::ResourceRequest::~ResourceRequest(&v44);
  result = WebKit::NetworkLoad::cancel(*(a1 + 32));
  if (*(a1 + 64) != 1)
  {
    return result;
  }

  v33 = WebCore::ResourceRequestBase::url(a3);
  result = WTF::URL::protocolIsJavaScript(v33);
  if (result)
  {
    return result;
  }

  v34 = *(a1 + 32);
  if (!v34[8] || !v34[7])
  {
    return result;
  }

  v35 = v34[4];
  atomic_fetch_add((v35 + 144), 1u);
  if ((*(a1 + 64) & 1) == 0)
  {
    goto LABEL_31;
  }

  v44 = *(a1 + 56);
  v36 = WTF::HashTable<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::NetworkConnectionToWebProcess,WTF::RawPtrTraits<WebKit::NetworkConnectionToWebProcess>,WTF::DefaultRefDerefTraits<WebKit::NetworkConnectionToWebProcess>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::NetworkConnectionToWebProcess,WTF::RawPtrTraits<WebKit::NetworkConnectionToWebProcess>,WTF::DefaultRefDerefTraits<WebKit::NetworkConnectionToWebProcess>>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::NetworkConnectionToWebProcess,WTF::RawPtrTraits<WebKit::NetworkConnectionToWebProcess>,WTF::DefaultRefDerefTraits<WebKit::NetworkConnectionToWebProcess>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::Ref<WebKit::NetworkConnectionToWebProcess,WTF::RawPtrTraits<WebKit::NetworkConnectionToWebProcess>,WTF::DefaultRefDerefTraits<WebKit::NetworkConnectionToWebProcess>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::lookup<WTF::HashMapTranslatorAdapter<WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::NetworkConnectionToWebProcess,WTF::RawPtrTraits<WebKit::NetworkConnectionToWebProcess>,WTF::DefaultRefDerefTraits<WebKit::NetworkConnectionToWebProcess>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::Ref<WebKit::NetworkConnectionToWebProcess,WTF::RawPtrTraits<WebKit::NetworkConnectionToWebProcess>,WTF::DefaultRefDerefTraits<WebKit::NetworkConnectionToWebProcess>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::IdentityHashTranslator<WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::NetworkConnectionToWebProcess,WTF::RawPtrTraits<WebKit::NetworkConnectionToWebProcess>,WTF::DefaultRefDerefTraits<WebKit::NetworkConnectionToWebProcess>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::Ref<WebKit::NetworkConnectionToWebProcess,WTF::RawPtrTraits<WebKit::NetworkConnectionToWebProcess>,WTF::DefaultRefDerefTraits<WebKit::NetworkConnectionToWebProcess>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>>,(WTF::ShouldValidateKey)1,WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>( (v35 + 152),  &v44);
  if (v36)
  {
    v37 = *(v36 + 8);
    if (v37)
    {
      ++*(v37 + 20);
    }
  }

  else
  {
    v37 = 0;
  }

  v38 = *(a1 + 32);
  v42 = *(v38 + 64);
  v43 = v42 != 0;
  if (!v42 || (v40 = *(v38 + 56), v41 = v40 != 0, !v40))
  {
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  v39 = *(v37 + 80);
  v44 = a3;
  v45 = &v42;
  v46 = &v40;
  result = IPC::Connection::send<Messages::NetworkProcessConnection::LoadCancelledDownloadRedirectRequestInFrame>(v39, &v44, 0, 0, 0);
  if (*(v37 + 20) == 1)
  {
    result = (*(*v37 + 8))(v37);
    if (!v35)
    {
      return result;
    }
  }

  else
  {
    --*(v37 + 20);
    if (!v35)
    {
      return result;
    }
  }

  if (atomic_fetch_add((v35 + 144), 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, (v35 + 144));
    return (*(*v35 + 24))(v35);
  }

  return result;
}

IPC::Encoder *WebKit::PendingDownload::didFailLoading(IPC::Encoder *this, const WebCore::ResourceError *a2)
{
  if ((*(this + 49) & 1) == 0)
  {
    v4 = this + 24;
    v3 = *(this + 3);
    *(this + 49) = 1;
    v5 = (*(v3 + 56))(this + 24);
    v7 = IPC::Encoder::operator new(0x238, v6);
    *v7 = 10;
    *(v7 + 2) = 0;
    *(v7 + 3) = 0;
    *(v7 + 1) = v5;
    *(v7 + 68) = 0;
    *(v7 + 70) = 0;
    *(v7 + 69) = 0;
    IPC::Encoder::encodeHeader(v7);
    v11 = v7;
    IPC::ArgumentCoder<WebCore::ResourceError,void>::encode(v7, a2);
    IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(v7, 0);
    (*(*v4 + 32))(v4, &v11, 0);
    this = v11;
    v11 = 0;
    if (this)
    {
      IPC::Encoder::~Encoder(this, v8);
      return bmalloc::api::tzoneFree(v9, v10);
    }
  }

  return this;
}

uint64_t WebKit::PendingDownload::didReceiveResponse(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v4 = *a4;
  *a4 = 0;
  (*(*v4 + 16))(v4, 1);
  v5 = *(*v4 + 8);

  return v5(v4);
}

atomic_ullong *WebKit::PendingDownload::messageSenderDestinationID(WebKit::PendingDownload *this)
{
  WebKit::NetworkLoad::protectedTask(*(this + 4), &v3);
  v1 = *(v3 + 40);
  result = WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::NetworkDataTask,(WTF::DestructionThread)1>::deref((v3 + 8));
  if (v1)
  {
    return v1;
  }

  __break(1u);
  return result;
}

atomic_ullong *non-virtual thunk toWebKit::PendingDownload::messageSenderDestinationID(WebKit::PendingDownload *this)
{
  WebKit::NetworkLoad::protectedTask(*(this + 1), &v3);
  v1 = *(v3 + 40);
  result = WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::NetworkDataTask,(WTF::DestructionThread)1>::deref((v3 + 8));
  if (v1)
  {
    return v1;
  }

  __break(1u);
  return result;
}

uint64_t WebKit::NetworkNotificationManager::create@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v8 = WebKit::NetworkNotificationManager::operator new(0x28, a2);
  result = WebKit::NetworkNotificationManager::NetworkNotificationManager(v8, a1, a2, a3);
  *a4 = result;
  return result;
}

uint64_t WebKit::NetworkNotificationManager::operator new(WebKit::NetworkNotificationManager *this, void *a2)
{
  if (WebKit::NetworkNotificationManager::s_heapRef)
  {
    return bmalloc::api::tzoneAllocateNonCompact(WebKit::NetworkNotificationManager::s_heapRef, a2);
  }

  else
  {
    return WebKit::NetworkNotificationManager::operatorNewSlow(0x28);
  }
}

uint64_t WebKit::NetworkNotificationManager::NetworkNotificationManager(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(a1 + 16) = 1;
  *a1 = &unk_1F1106748;
  *(a1 + 8) = 0;
  *(a1 + 24) = 0;
  atomic_fetch_add((a4 + 144), 1u);
  *(a1 + 32) = a4;
  if (*a2 && *(*a2 + 4))
  {
    WTF::String::utf8();
    v8 = WebKit::WebPushD::Connection::operator new(0x80, v7);
    WebKit::WebPushD::Connection::Connection(v8, &v12, a3);
    v10 = *(a1 + 24);
    *(a1 + 24) = v8;
    if (v10)
    {
      if (v10[4] == 1)
      {
        (*(*v10 + 8))(v10);
      }

      else
      {
        --v10[4];
      }
    }

    v11 = v12;
    v12 = 0;
    if (v11)
    {
      if (*v11 == 1)
      {
        WTF::fastFree(v11, v9);
      }

      else
      {
        --*v11;
      }
    }
  }

  return a1;
}

WTF::StringImpl *WebKit::NetworkNotificationManager::setPushAndNotificationsEnabledForOrigin(uint64_t a1, WebCore::SecurityOriginData *this, char a3, uint64_t *a4)
{
  v5 = *(a1 + 24);
  if (v5)
  {
    ++v5[4];
    WebCore::SecurityOriginData::toString(&v11, this);
    v12 = &v11;
    v13 = a3;
    IPC::MessageSender::sendWithAsyncReplyWithoutUsingIPCConnection<Messages::PushClientConnection::SetPushAndNotificationsEnabledForOrigin,WTF::CompletionHandler<void ()(void)>>((v5 + 10), &v12, a4);
    result = v11;
    v11 = 0;
    if (result && atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      result = WTF::StringImpl::destroy(result, v7);
    }

    if (v5[4] == 1)
    {
      return (*(*v5 + 8))(v5);
    }

    else
    {
      --v5[4];
    }
  }

  else
  {
    v9 = *a4;
    *a4 = 0;
    (*(*v9 + 16))(v9, this);
    v10 = *(*v9 + 8);

    return v10(v9);
  }

  return result;
}

uint64_t IPC::MessageSender::sendWithAsyncReplyWithoutUsingIPCConnection<Messages::PushClientConnection::SetPushAndNotificationsEnabledForOrigin,WTF::CompletionHandler<void ()(void)>>(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v6 = (*(*a1 + 56))(a1);
  v8 = IPC::Encoder::operator new(0x238, v7);
  *v8 = 908;
  *(v8 + 2) = 0;
  *(v8 + 3) = 0;
  *(v8 + 1) = v6;
  *(v8 + 68) = 0;
  *(v8 + 70) = 0;
  *(v8 + 69) = 0;
  IPC::Encoder::encodeHeader(v8);
  v19 = v8;
  IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(v8, *a2);
  IPC::Encoder::operator<<<BOOL &>(v8, (a2 + 8));
  v9 = *a3;
  *a3 = 0;
  v10 = WTF::fastMalloc(0x10);
  *v10 = &unk_1F1106910;
  v10[1] = v9;
  v18 = v10;
  v12 = (*(*a1 + 24))(a1, &v19, &v18);
  v13 = v18;
  v18 = 0;
  if (v13)
  {
    (*(*v13 + 8))(v13);
  }

  v14 = v19;
  v19 = 0;
  if (v14)
  {
    IPC::Encoder::~Encoder(v14, v11);
    bmalloc::api::tzoneFree(v16, v17);
  }

  return v12;
}

uint64_t WebKit::NetworkNotificationManager::getPendingPushMessage(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  *a2 = 0;
  v4 = WTF::fastMalloc(0x10);
  *v4 = &unk_1F1106938;
  v4[1] = v3;
  v8 = v4;
  v5 = *(a1 + 24);
  if (v5)
  {
    ++v5[4];
    IPC::MessageSender::sendWithAsyncReplyWithoutUsingIPCConnection<Messages::PushClientConnection::GetPendingPushMessage,WTF::CompletionHandler<void ()(std::optional<WebKit::WebPushMessage> &&)>>((v5 + 10), &v7, &v8);
    if (v5[4] == 1)
    {
      (*(*v5 + 8))(v5);
    }

    else
    {
      --v5[4];
    }
  }

  else
  {
    IPC::MessageSender::sendWithAsyncReplyWithoutUsingIPCConnection<Messages::PushClientConnection::GetPendingPushMessage,WTF::CompletionHandler<void ()(std::optional<WebKit::WebPushMessage> &&)>>(40, &v7, &v8);
  }

  result = v8;
  v8 = 0;
  if (result)
  {
    return (*(*result + 8))(result);
  }

  return result;
}

uint64_t IPC::MessageSender::sendWithAsyncReplyWithoutUsingIPCConnection<Messages::PushClientConnection::GetPendingPushMessage,WTF::CompletionHandler<void ()(std::optional<WebKit::WebPushMessage> &&)>>(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = (*(*a1 + 56))(a1);
  v7 = IPC::Encoder::operator new(0x238, v6);
  *v7 = 893;
  *(v7 + 2) = 0;
  *(v7 + 3) = 0;
  *(v7 + 1) = v5;
  *(v7 + 68) = 0;
  *(v7 + 70) = 0;
  *(v7 + 69) = 0;
  IPC::Encoder::encodeHeader(v7);
  v18 = v7;
  v8 = *a3;
  *a3 = 0;
  v9 = WTF::fastMalloc(0x10);
  *v9 = &unk_1F1106960;
  v9[1] = v8;
  v17 = v9;
  v11 = (*(*a1 + 24))(a1, &v18, &v17);
  v12 = v17;
  v17 = 0;
  if (v12)
  {
    (*(*v12 + 8))(v12);
  }

  v13 = v18;
  v18 = 0;
  if (v13)
  {
    IPC::Encoder::~Encoder(v13, v10);
    bmalloc::api::tzoneFree(v15, v16);
  }

  return v11;
}

uint64_t WebKit::NetworkNotificationManager::getPendingPushMessages(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  *a2 = 0;
  v4 = WTF::fastMalloc(0x10);
  *v4 = &unk_1F1106988;
  v4[1] = v3;
  v8 = v4;
  v5 = *(a1 + 24);
  if (v5)
  {
    ++v5[4];
    IPC::MessageSender::sendWithAsyncReplyWithoutUsingIPCConnection<Messages::PushClientConnection::GetPendingPushMessages,WTF::CompletionHandler<void ()(WTF::Vector<WebKit::WebPushMessage,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&)>>((v5 + 10), &v7, &v8);
    if (v5[4] == 1)
    {
      (*(*v5 + 8))(v5);
    }

    else
    {
      --v5[4];
    }
  }

  else
  {
    IPC::MessageSender::sendWithAsyncReplyWithoutUsingIPCConnection<Messages::PushClientConnection::GetPendingPushMessages,WTF::CompletionHandler<void ()(WTF::Vector<WebKit::WebPushMessage,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&)>>(40, &v7, &v8);
  }

  result = v8;
  v8 = 0;
  if (result)
  {
    return (*(*result + 8))(result);
  }

  return result;
}

uint64_t IPC::MessageSender::sendWithAsyncReplyWithoutUsingIPCConnection<Messages::PushClientConnection::GetPendingPushMessages,WTF::CompletionHandler<void ()(WTF::Vector<WebKit::WebPushMessage,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&)>>(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = (*(*a1 + 56))(a1);
  v7 = IPC::Encoder::operator new(0x238, v6);
  *v7 = 894;
  *(v7 + 2) = 0;
  *(v7 + 3) = 0;
  *(v7 + 1) = v5;
  *(v7 + 68) = 0;
  *(v7 + 70) = 0;
  *(v7 + 69) = 0;
  IPC::Encoder::encodeHeader(v7);
  v18 = v7;
  v8 = *a3;
  *a3 = 0;
  v9 = WTF::fastMalloc(0x10);
  *v9 = &unk_1F11069B0;
  v9[1] = v8;
  v17 = v9;
  v11 = (*(*a1 + 24))(a1, &v18, &v17);
  v12 = v17;
  v17 = 0;
  if (v12)
  {
    (*(*v12 + 8))(v12);
  }

  v13 = v18;
  v18 = 0;
  if (v13)
  {
    IPC::Encoder::~Encoder(v13, v10);
    bmalloc::api::tzoneFree(v15, v16);
  }

  return v11;
}

uint64_t IPC::MessageSender::sendWithAsyncReplyWithoutUsingIPCConnection<Messages::PushClientConnection::ShowNotification,WTF::CompletionHandler<void ()(void)>>(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v6 = (*(*a1 + 56))(a1);
  v8 = IPC::Encoder::operator new(0x238, v7);
  *v8 = 910;
  *(v8 + 2) = 0;
  *(v8 + 3) = 0;
  *(v8 + 1) = v6;
  *(v8 + 68) = 0;
  *(v8 + 70) = 0;
  *(v8 + 69) = 0;
  IPC::Encoder::encodeHeader(v8);
  v19 = v8;
  IPC::ArgumentCoder<WebCore::NotificationData,void>::encode(v8, *a2);
  IPC::ArgumentCoder<WTF::RefPtr<WebCore::NotificationResources,WTF::RawPtrTraits<WebCore::NotificationResources>,WTF::DefaultRefDerefTraits<WebCore::NotificationResources>>,void>::encode<IPC::Encoder,WebCore::NotificationResources>(v8, *(a2 + 8));
  v9 = *a3;
  *a3 = 0;
  v10 = WTF::fastMalloc(0x10);
  *v10 = &unk_1F11069D8;
  v10[1] = v9;
  v18 = v10;
  v12 = (*(*a1 + 24))(a1, &v19, &v18);
  v13 = v18;
  v18 = 0;
  if (v13)
  {
    (*(*v13 + 8))(v13);
  }

  v14 = v19;
  v19 = 0;
  if (v14)
  {
    IPC::Encoder::~Encoder(v14, v11);
    bmalloc::api::tzoneFree(v16, v17);
  }

  return v12;
}

uint64_t WebKit::NetworkNotificationManager::showNotification(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v5 = *(a1 + 24);
  if (v5)
  {
    ++v5[4];
    v9[0] = a3;
    v9[1] = a4;
    result = IPC::MessageSender::sendWithAsyncReplyWithoutUsingIPCConnection<Messages::PushClientConnection::ShowNotification,WTF::CompletionHandler<void ()(void)>>((v5 + 10), v9, a5);
    if (v5[4] == 1)
    {
      return (*(*v5 + 8))(v5);
    }

    else
    {
      --v5[4];
    }
  }

  else
  {
    v7 = *a5;
    *a5 = 0;
    (*(*v7 + 16))(v7);
    v8 = *(*v7 + 8);

    return v8(v7);
  }

  return result;
}

uint64_t WebKit::NetworkNotificationManager::getNotifications(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  v5 = *(a1 + 24);
  if (v5)
  {
    ++v5[4];
    v9[0] = a2;
    v9[1] = a3;
    result = IPC::MessageSender::sendWithAsyncReplyWithoutUsingIPCConnection<Messages::PushClientConnection::GetNotifications,WTF::CompletionHandler<void ()(std::experimental::fundamentals_v3::expected<WTF::Vector<WebCore::NotificationData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WebCore::ExceptionData> &&)>>((v5 + 10), v9, a4);
    if (v5[4] == 1)
    {
      return (*(*v5 + 8))(v5);
    }

    else
    {
      --v5[4];
    }
  }

  else
  {
    WTF::StringImpl::createWithoutCopyingNonEmpty();
    LOBYTE(v9[0]) = 8;
    v10 = 1;
    v7 = *a4;
    *a4 = 0;
    (*(*v7 + 16))(v7, v9);
    (*(*v7 + 8))(v7);
    return mpark::detail::copy_constructor<mpark::detail::traits<WTF::Vector<WebCore::NotificationData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WebCore::ExceptionData>,(mpark::detail::Trait)1>::~copy_constructor(v9, v8);
  }

  return result;
}

uint64_t IPC::MessageSender::sendWithAsyncReplyWithoutUsingIPCConnection<Messages::PushClientConnection::GetNotifications,WTF::CompletionHandler<void ()(std::experimental::fundamentals_v3::expected<WTF::Vector<WebCore::NotificationData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WebCore::ExceptionData> &&)>>(uint64_t a1, uint64_t **a2, uint64_t *a3)
{
  v6 = (*(*a1 + 56))(a1);
  v8 = IPC::Encoder::operator new(0x238, v7);
  *v8 = 892;
  *(v8 + 2) = 0;
  *(v8 + 3) = 0;
  *(v8 + 1) = v6;
  *(v8 + 68) = 0;
  *(v8 + 70) = 0;
  *(v8 + 69) = 0;
  IPC::Encoder::encodeHeader(v8);
  v19 = v8;
  IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(v8, *a2);
  IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(v8, a2[1]);
  v9 = *a3;
  *a3 = 0;
  v10 = WTF::fastMalloc(0x10);
  *v10 = &unk_1F1106A00;
  v10[1] = v9;
  v18 = v10;
  v12 = (*(*a1 + 24))(a1, &v19, &v18);
  v13 = v18;
  v18 = 0;
  if (v13)
  {
    (*(*v13 + 8))(v13);
  }

  v14 = v19;
  v19 = 0;
  if (v14)
  {
    IPC::Encoder::~Encoder(v14, v11);
    bmalloc::api::tzoneFree(v16, v17);
  }

  return v12;
}

IPC::Encoder *WebKit::NetworkNotificationManager::cancelNotification(IPC::Encoder *result, uint64_t a2, uint64_t *a3)
{
  v3 = *(result + 3);
  if (v3)
  {
    ++*(v3 + 16);
    v6 = (*(*(v3 + 40) + 56))(v3 + 40);
    v8 = IPC::Encoder::operator new(0x238, v7);
    *v8 = 890;
    *(v8 + 2) = 0;
    *(v8 + 3) = 0;
    *(v8 + 1) = v6;
    *(v8 + 68) = 0;
    *(v8 + 70) = 0;
    *(v8 + 69) = 0;
    IPC::Encoder::encodeHeader(v8);
    v12 = v8;
    IPC::ArgumentCoder<WebCore::SecurityOriginData,void>::encode(v8, a2);
    IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(v8, a3[1]);
    IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(v8, *a3);
    (*(*(v3 + 40) + 16))(v3 + 40, &v12);
    result = v12;
    v12 = 0;
    if (result)
    {
      IPC::Encoder::~Encoder(result, v9);
      result = bmalloc::api::tzoneFree(v10, v11);
    }

    if (*(v3 + 16) == 1)
    {
      return (*(*v3 + 8))(v3);
    }

    else
    {
      --*(v3 + 16);
    }
  }

  return result;
}

uint64_t WebKit::NetworkNotificationManager::requestPermission(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v4 = *(a1 + 24);
  if (v4)
  {
    ++v4[4];
    v8 = a2;
    result = IPC::MessageSender::sendWithAsyncReplyWithoutUsingIPCConnection<Messages::PushClientConnection::RequestPushPermission,WTF::CompletionHandler<void ()(BOOL)>>((v4 + 10), &v8, a3);
    if (v4[4] == 1)
    {
      return (*(*v4 + 8))(v4);
    }

    else
    {
      --v4[4];
    }
  }

  else
  {
    v6 = qword_1ED6410A8;
    if (os_log_type_enabled(qword_1ED6410A8, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_19D52D000, v6, OS_LOG_TYPE_ERROR, "requestPermission failed: no active connection to webpushd", buf, 2u);
    }

    v7 = *a3;
    *a3 = 0;
    (*(*v7 + 16))(v7, 0);
    return (*(*v7 + 8))(v7);
  }

  return result;
}

uint64_t IPC::MessageSender::sendWithAsyncReplyWithoutUsingIPCConnection<Messages::PushClientConnection::RequestPushPermission,WTF::CompletionHandler<void ()(BOOL)>>(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v6 = (*(*a1 + 56))(a1);
  v8 = IPC::Encoder::operator new(0x238, v7);
  *v8 = 904;
  *(v8 + 2) = 0;
  *(v8 + 3) = 0;
  *(v8 + 1) = v6;
  *(v8 + 68) = 0;
  *(v8 + 70) = 0;
  *(v8 + 69) = 0;
  IPC::Encoder::encodeHeader(v8);
  v19 = v8;
  IPC::ArgumentCoder<WebCore::SecurityOriginData,void>::encode(v8, *a2);
  v9 = *a3;
  *a3 = 0;
  v10 = WTF::fastMalloc(0x10);
  *v10 = &unk_1F1106A28;
  v10[1] = v9;
  v18 = v10;
  v12 = (*(*a1 + 24))(a1, &v19, &v18);
  v13 = v18;
  v18 = 0;
  if (v13)
  {
    (*(*v13 + 8))(v13);
  }

  v14 = v19;
  v19 = 0;
  if (v14)
  {
    IPC::Encoder::~Encoder(v14, v11);
    bmalloc::api::tzoneFree(v16, v17);
  }

  return v12;
}

IPC::Encoder *WebKit::NetworkNotificationManager::setAppBadge(IPC::Encoder *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[0] = a3;
  v12[1] = a4;
  v4 = *(result + 3);
  if (v4)
  {
    ++*(v4 + 16);
    v6 = (*(*(v4 + 40) + 56))(v4 + 40);
    v8 = IPC::Encoder::operator new(0x238, v7);
    *v8 = 905;
    *(v8 + 2) = 0;
    *(v8 + 3) = 0;
    *(v8 + 1) = v6;
    *(v8 + 68) = 0;
    *(v8 + 70) = 0;
    *(v8 + 69) = 0;
    IPC::Encoder::encodeHeader(v8);
    v13 = v8;
    IPC::ArgumentCoder<WebCore::SecurityOriginData,void>::encode(v8, a2);
    IPC::ArgumentCoder<std::optional<unsigned long long>,void>::encode<IPC::Encoder,std::optional<unsigned long long> const&>(v8, v12);
    (*(*(v4 + 40) + 16))(v4 + 40, &v13);
    result = v13;
    v13 = 0;
    if (result)
    {
      IPC::Encoder::~Encoder(result, v9);
      result = bmalloc::api::tzoneFree(v10, v11);
    }

    if (*(v4 + 16) == 1)
    {
      return (*(*v4 + 8))(v4);
    }

    else
    {
      --*(v4 + 16);
    }
  }

  return result;
}

uint64_t WebKit::NetworkNotificationManager::subscribeToPushService(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v5 = *(a1 + 24);
  if (v5)
  {
    ++v5[4];
    v9[0] = a2;
    v9[1] = a3;
    result = IPC::MessageSender::sendWithAsyncReplyWithoutUsingIPCConnection<Messages::PushClientConnection::SubscribeToPushService,WTF::CompletionHandler<void ()(std::experimental::fundamentals_v3::expected<WebCore::PushSubscriptionData,WebCore::ExceptionData> &&)>>((v5 + 10), v9, a4);
    if (v5[4] == 1)
    {
      return (*(*v5 + 8))(v5);
    }

    else
    {
      --v5[4];
    }
  }

  else
  {
    WTF::StringImpl::createWithoutCopyingNonEmpty();
    LOBYTE(v9[0]) = 16;
    v10 = 1;
    v7 = *a4;
    *a4 = 0;
    (*(*v7 + 16))(v7, v9);
    (*(*v7 + 8))(v7);
    return std::experimental::fundamentals_v3::expected<WebCore::PushSubscriptionData,WebCore::ExceptionData>::~expected(v9, v8);
  }

  return result;
}

uint64_t IPC::MessageSender::sendWithAsyncReplyWithoutUsingIPCConnection<Messages::PushClientConnection::SubscribeToPushService,WTF::CompletionHandler<void ()(std::experimental::fundamentals_v3::expected<WebCore::PushSubscriptionData,WebCore::ExceptionData> &&)>>(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v6 = (*(*a1 + 56))(a1);
  v8 = IPC::Encoder::operator new(0x238, v7);
  *v8 = 911;
  *(v8 + 2) = 0;
  *(v8 + 3) = 0;
  *(v8 + 1) = v6;
  *(v8 + 68) = 0;
  *(v8 + 70) = 0;
  *(v8 + 69) = 0;
  IPC::Encoder::encodeHeader(v8);
  v19 = v8;
  IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(v8, *a2);
  IPC::ArgumentCoder<std::span<unsigned char const,18446744073709551615ul>,void>::encode<IPC::Encoder>(v8, **(a2 + 8), *(*(a2 + 8) + 12));
  v9 = *a3;
  *a3 = 0;
  v10 = WTF::fastMalloc(0x10);
  *v10 = &unk_1F1106A50;
  v10[1] = v9;
  v18 = v10;
  v12 = (*(*a1 + 24))(a1, &v19, &v18);
  v13 = v18;
  v18 = 0;
  if (v13)
  {
    (*(*v13 + 8))(v13);
  }

  v14 = v19;
  v19 = 0;
  if (v14)
  {
    IPC::Encoder::~Encoder(v14, v11);
    bmalloc::api::tzoneFree(v16, v17);
  }

  return v12;
}

uint64_t WebKit::NetworkNotificationManager::unsubscribeFromPushService(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v12[0] = a3;
  v12[1] = a4;
  v6 = *(a1 + 24);
  if (v6)
  {
    ++v6[4];
    v10[0] = a2;
    v10[1] = v12;
    result = IPC::MessageSender::sendWithAsyncReplyWithoutUsingIPCConnection<Messages::PushClientConnection::UnsubscribeFromPushService,WTF::CompletionHandler<void ()(std::experimental::fundamentals_v3::expected<BOOL,WebCore::ExceptionData> &&)>>((v6 + 10), v10, a5);
    if (v6[4] == 1)
    {
      return (*(*v6 + 8))(v6);
    }

    else
    {
      --v6[4];
    }
  }

  else
  {
    WTF::StringImpl::createWithoutCopyingNonEmpty();
    LOBYTE(v10[0]) = 16;
    v11 = 1;
    v8 = *a5;
    *a5 = 0;
    (*(*v8 + 16))(v8, v10);
    (*(*v8 + 8))(v8);
    return mpark::detail::move_constructor<mpark::detail::traits<BOOL,WebCore::ExceptionData>,(mpark::detail::Trait)1>::~move_constructor(v10, v9);
  }

  return result;
}

uint64_t IPC::MessageSender::sendWithAsyncReplyWithoutUsingIPCConnection<Messages::PushClientConnection::UnsubscribeFromPushService,WTF::CompletionHandler<void ()(std::experimental::fundamentals_v3::expected<BOOL,WebCore::ExceptionData> &&)>>(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v6 = (*(*a1 + 56))(a1);
  v8 = IPC::Encoder::operator new(0x238, v7);
  *v8 = 912;
  *(v8 + 2) = 0;
  *(v8 + 3) = 0;
  *(v8 + 1) = v6;
  *(v8 + 68) = 0;
  *(v8 + 70) = 0;
  *(v8 + 69) = 0;
  IPC::Encoder::encodeHeader(v8);
  v19 = v8;
  IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(v8, *a2);
  IPC::ArgumentCoder<std::optional<WTF::ObjectIdentifierGeneric<WebCore::PushSubscriptionIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,void>::encode<IPC::Encoder,std::optional<WTF::ObjectIdentifierGeneric<WebCore::PushSubscriptionIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>> const&>(v8, *(a2 + 8));
  v9 = *a3;
  *a3 = 0;
  v10 = WTF::fastMalloc(0x10);
  *v10 = &unk_1F1106A78;
  v10[1] = v9;
  v18 = v10;
  v12 = (*(*a1 + 24))(a1, &v19, &v18);
  v13 = v18;
  v18 = 0;
  if (v13)
  {
    (*(*v13 + 8))(v13);
  }

  v14 = v19;
  v19 = 0;
  if (v14)
  {
    IPC::Encoder::~Encoder(v14, v11);
    bmalloc::api::tzoneFree(v16, v17);
  }

  return v12;
}

IPC::Encoder *WebKit::NetworkNotificationManager::getPushSubscription(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v33 = *MEMORY[0x1E69E9840];
  v4 = *(a1 + 24);
  if (v4)
  {
    ++*(v4 + 16);
    v6 = (*(*(v4 + 40) + 56))(v4 + 40);
    v8 = IPC::Encoder::operator new(0x238, v7);
    *v8 = 896;
    *(v8 + 2) = 0;
    *(v8 + 3) = 0;
    *(v8 + 1) = v6;
    *(v8 + 68) = 0;
    *(v8 + 70) = 0;
    *(v8 + 69) = 0;
    IPC::Encoder::encodeHeader(v8);
    v31[0] = v8;
    IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(v8, a2);
    v9 = *a3;
    *a3 = 0;
    v10 = WTF::fastMalloc(0x10);
    *v10 = &unk_1F1106AA0;
    v10[1] = v9;
    v22 = v10;
    (*(*(v4 + 40) + 24))(v4 + 40, v31, &v22);
    v12 = v22;
    v22 = 0;
    if (v12)
    {
      (*(*v12 + 8))(v12);
    }

    result = v31[0];
    v31[0] = 0;
    if (result)
    {
      IPC::Encoder::~Encoder(result, v11);
      result = bmalloc::api::tzoneFree(v14, v15);
    }

    if (*(v4 + 16) == 1)
    {
      return (*(*v4 + 8))(v4);
    }

    else
    {
      --*(v4 + 16);
    }
  }

  else
  {
    LOBYTE(v22) = 0;
    v30 = 0;
    std::optional<WebCore::PushSubscriptionData>::optional[abi:sn200100](v31, &v22);
    v32 = 0;
    v16 = *a3;
    *a3 = 0;
    (*(*v16 + 16))(v16, v31);
    (*(*v16 + 8))(v16);
    result = std::experimental::fundamentals_v3::expected<std::optional<WebCore::PushSubscriptionData>,WebCore::ExceptionData>::~expected(v31, v17);
    if (v30 == 1)
    {
      v19 = v28;
      if (v28)
      {
        v28 = 0;
        v29 = 0;
        WTF::fastFree(v19, v18);
      }

      v20 = v26;
      if (v26)
      {
        v26 = 0;
        v27 = 0;
        WTF::fastFree(v20, v18);
      }

      v21 = v24;
      if (v24)
      {
        v24 = 0;
        v25 = 0;
        WTF::fastFree(v21, v18);
      }

      result = v23;
      v23 = 0;
      if (result && atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        return WTF::StringImpl::destroy(result, v18);
      }
    }
  }

  return result;
}

uint64_t WebKit::NetworkNotificationManager::incrementSilentPushCount(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v3 = *(a1 + 24);
  if (v3)
  {
    ++v3[4];
    v7 = a2;
    result = IPC::MessageSender::sendWithAsyncReplyWithoutUsingIPCConnection<Messages::PushClientConnection::IncrementSilentPushCount,WTF::CompletionHandler<void ()>>((v3 + 10), &v7, a3);
    if (v3[4] == 1)
    {
      return (*(*v3 + 8))(v3);
    }

    else
    {
      --v3[4];
    }
  }

  else
  {
    v5 = *a3;
    *a3 = 0;
    (*(*v5 + 16))(v5, 0);
    v6 = *(*v5 + 8);

    return v6(v5);
  }

  return result;
}

uint64_t IPC::MessageSender::sendWithAsyncReplyWithoutUsingIPCConnection<Messages::PushClientConnection::IncrementSilentPushCount,WTF::CompletionHandler<void ()(unsigned int)>>(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v6 = (*(*a1 + 56))(a1);
  v8 = IPC::Encoder::operator new(0x238, v7);
  *v8 = 898;
  *(v8 + 2) = 0;
  *(v8 + 3) = 0;
  *(v8 + 1) = v6;
  *(v8 + 68) = 0;
  *(v8 + 70) = 0;
  *(v8 + 69) = 0;
  IPC::Encoder::encodeHeader(v8);
  v19 = v8;
  IPC::ArgumentCoder<WebCore::SecurityOriginData,void>::encode(v8, *a2);
  v9 = *a3;
  *a3 = 0;
  v10 = WTF::fastMalloc(0x10);
  *v10 = &unk_1F1106AC8;
  v10[1] = v9;
  v18 = v10;
  v12 = (*(*a1 + 24))(a1, &v19, &v18);
  v13 = v18;
  v18 = 0;
  if (v13)
  {
    (*(*v13 + 8))(v13);
  }

  v14 = v19;
  v19 = 0;
  if (v14)
  {
    IPC::Encoder::~Encoder(v14, v11);
    bmalloc::api::tzoneFree(v16, v17);
  }

  return v12;
}

uint64_t WebKit::NetworkNotificationManager::removeAllPushSubscriptions(uint64_t a1, uint64_t *a2)
{
  v2 = *(a1 + 24);
  if (v2)
  {
    ++v2[4];
    result = IPC::MessageSender::sendWithAsyncReplyWithoutUsingIPCConnection<Messages::PushClientConnection::RemoveAllPushSubscriptions,WTF::CompletionHandler<void ()>>((v2 + 10), &v6, a2);
    if (v2[4] == 1)
    {
      return (*(*v2 + 8))(v2);
    }

    else
    {
      --v2[4];
    }
  }

  else
  {
    v4 = *a2;
    *a2 = 0;
    (*(*v4 + 16))(v4, 0);
    v5 = *(*v4 + 8);

    return v5(v4);
  }

  return result;
}

uint64_t IPC::MessageSender::sendWithAsyncReplyWithoutUsingIPCConnection<Messages::PushClientConnection::RemoveAllPushSubscriptions,WTF::CompletionHandler<void ()(unsigned int)>>(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = (*(*a1 + 56))(a1);
  v7 = IPC::Encoder::operator new(0x238, v6);
  *v7 = 902;
  *(v7 + 2) = 0;
  *(v7 + 3) = 0;
  *(v7 + 1) = v5;
  *(v7 + 68) = 0;
  *(v7 + 70) = 0;
  *(v7 + 69) = 0;
  IPC::Encoder::encodeHeader(v7);
  v18 = v7;
  v8 = *a3;
  *a3 = 0;
  v9 = WTF::fastMalloc(0x10);
  *v9 = &unk_1F1106AF0;
  v9[1] = v8;
  v17 = v9;
  v11 = (*(*a1 + 24))(a1, &v18, &v17);
  v12 = v17;
  v17 = 0;
  if (v12)
  {
    (*(*v12 + 8))(v12);
  }

  v13 = v18;
  v18 = 0;
  if (v13)
  {
    IPC::Encoder::~Encoder(v13, v10);
    bmalloc::api::tzoneFree(v15, v16);
  }

  return v11;
}

uint64_t WebKit::NetworkNotificationManager::removePushSubscriptionsForOrigin(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v3 = *(a1 + 24);
  if (v3)
  {
    ++v3[4];
    v7 = a2;
    result = IPC::MessageSender::sendWithAsyncReplyWithoutUsingIPCConnection<Messages::PushClientConnection::RemovePushSubscriptionsForOrigin,WTF::CompletionHandler<void ()>>((v3 + 10), &v7, a3);
    if (v3[4] == 1)
    {
      return (*(*v3 + 8))(v3);
    }

    else
    {
      --v3[4];
    }
  }

  else
  {
    v5 = *a3;
    *a3 = 0;
    (*(*v5 + 16))(v5, 0);
    v6 = *(*v5 + 8);

    return v6(v5);
  }

  return result;
}

uint64_t IPC::MessageSender::sendWithAsyncReplyWithoutUsingIPCConnection<Messages::PushClientConnection::RemovePushSubscriptionsForOrigin,WTF::CompletionHandler<void ()(unsigned int)>>(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v6 = (*(*a1 + 56))(a1);
  v8 = IPC::Encoder::operator new(0x238, v7);
  *v8 = 903;
  *(v8 + 2) = 0;
  *(v8 + 3) = 0;
  *(v8 + 1) = v6;
  *(v8 + 68) = 0;
  *(v8 + 70) = 0;
  *(v8 + 69) = 0;
  IPC::Encoder::encodeHeader(v8);
  v19 = v8;
  IPC::ArgumentCoder<WebCore::SecurityOriginData,void>::encode(v8, *a2);
  v9 = *a3;
  *a3 = 0;
  v10 = WTF::fastMalloc(0x10);
  *v10 = &unk_1F1106B18;
  v10[1] = v9;
  v18 = v10;
  v12 = (*(*a1 + 24))(a1, &v19, &v18);
  v13 = v18;
  v18 = 0;
  if (v13)
  {
    (*(*v13 + 8))(v13);
  }

  v14 = v19;
  v19 = 0;
  if (v14)
  {
    IPC::Encoder::~Encoder(v14, v11);
    bmalloc::api::tzoneFree(v16, v17);
  }

  return v12;
}

uint64_t WebKit::NetworkNotificationManager::getAppBadgeForTesting(uint64_t a1, uint64_t *a2)
{
  v2 = *(a1 + 24);
  if (v2)
  {
    ++v2[4];
    result = IPC::MessageSender::sendWithAsyncReplyWithoutUsingIPCConnection<Messages::PushClientConnection::GetAppBadgeForTesting,WTF::CompletionHandler<void ()(std::optional<unsigned long long>)>>((v2 + 10), &v6, a2);
    if (v2[4] == 1)
    {
      return (*(*v2 + 8))(v2);
    }

    else
    {
      --v2[4];
    }
  }

  else
  {
    v4 = *a2;
    *a2 = 0;
    (*(*v4 + 16))(v4, 0, 0);
    v5 = *(*v4 + 8);

    return v5(v4);
  }

  return result;
}

uint64_t IPC::MessageSender::sendWithAsyncReplyWithoutUsingIPCConnection<Messages::PushClientConnection::GetAppBadgeForTesting,WTF::CompletionHandler<void ()(std::optional<unsigned long long>)>>(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = (*(*a1 + 56))(a1);
  v7 = IPC::Encoder::operator new(0x238, v6);
  *v7 = 891;
  *(v7 + 2) = 0;
  *(v7 + 3) = 0;
  *(v7 + 1) = v5;
  *(v7 + 68) = 0;
  *(v7 + 70) = 0;
  *(v7 + 69) = 0;
  IPC::Encoder::encodeHeader(v7);
  v18 = v7;
  v8 = *a3;
  *a3 = 0;
  v9 = WTF::fastMalloc(0x10);
  *v9 = &unk_1F1106B40;
  v9[1] = v8;
  v17 = v9;
  v11 = (*(*a1 + 24))(a1, &v18, &v17);
  v12 = v17;
  v17 = 0;
  if (v12)
  {
    (*(*v12 + 8))(v12);
  }

  v13 = v18;
  v18 = 0;
  if (v13)
  {
    IPC::Encoder::~Encoder(v13, v10);
    bmalloc::api::tzoneFree(v15, v16);
  }

  return v11;
}

IPC::Encoder *WebKit::NetworkNotificationManager::setServiceWorkerIsBeingInspected(IPC::Encoder *this, const WTF::URL *a2, char a3)
{
  v3 = *(this + 3);
  if (v3)
  {
    ++*(v3 + 16);
    v13[0] = a3;
    v5 = (*(*(v3 + 40) + 56))(v3 + 40);
    v7 = IPC::Encoder::operator new(0x238, v6);
    *v7 = 909;
    *(v7 + 2) = 0;
    *(v7 + 3) = 0;
    *(v7 + 1) = v5;
    *(v7 + 68) = 0;
    *(v7 + 70) = 0;
    *(v7 + 69) = 0;
    IPC::Encoder::encodeHeader(v7);
    v15 = v7;
    IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(v7, a2);
    IPC::Encoder::operator<<<BOOL &>(v7, v13);
    v8 = WTF::fastMalloc(0x10);
    *v8 = &unk_1F1106B68;
    v14 = v8;
    (*(*(v3 + 40) + 24))(v3 + 40, &v15, &v14);
    v10 = v14;
    v14 = 0;
    if (v10)
    {
      (*(*v10 + 8))(v10);
    }

    this = v15;
    v15 = 0;
    if (this)
    {
      IPC::Encoder::~Encoder(this, v9);
      this = bmalloc::api::tzoneFree(v11, v12);
    }

    if (*(v3 + 16) == 1)
    {
      return (*(*v3 + 8))(v3);
    }

    else
    {
      --*(v3 + 16);
    }
  }

  return this;
}

uint64_t WebKit::NetworkNotificationManager::getPermissionState(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v3 = *(a1 + 24);
  if (v3)
  {
    ++v3[4];
    v8 = a2;
    result = IPC::MessageSender::sendWithAsyncReplyWithoutUsingIPCConnection<Messages::PushClientConnection::GetPushPermissionState,WTF::CompletionHandler<void ()(WebCore::PushPermissionState)>>((v3 + 10), &v8, a3);
    if (v3[4] == 1)
    {
      v5 = *(*v3 + 8);

      return v5(v3);
    }

    else
    {
      --v3[4];
    }
  }

  else
  {
    v6 = *a3;
    *a3 = 0;
    (*(*v6 + 16))(v6, 0);
    v7 = *(*v6 + 8);

    return v7(v6);
  }

  return result;
}

uint64_t WebKit::NetworkNotificationManager::getPermissionStateSync(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v3 = *(a1 + 24);
  if (v3)
  {
    ++v3[4];
    v8 = a2;
    result = IPC::MessageSender::sendWithAsyncReplyWithoutUsingIPCConnection<Messages::PushClientConnection::GetPushPermissionState,WTF::CompletionHandler<void ()(WebCore::PushPermissionState)>>((v3 + 10), &v8, a3);
    if (v3[4] == 1)
    {
      v5 = *(*v3 + 8);

      return v5(v3);
    }

    else
    {
      --v3[4];
    }
  }

  else
  {
    v6 = *a3;
    *a3 = 0;
    (*(*v6 + 16))(v6, 0);
    v7 = *(*v6 + 8);

    return v7(v6);
  }

  return result;
}

uint64_t WebKit::NetworkNotificationManager::sharedPreferencesForWebProcess@<X0>(WebKit::NetworkProcess **this@<X0>, const IPC::Connection *a2@<X1>, uint64_t a3@<X8>)
{
  WebKit::NetworkProcess::protectedWebProcessConnection(this[4], a2, &v6);
  result = v6;
  if (v6)
  {
    *(a3 + 16) = *(v6 + 344);
    *a3 = *(result + 328);
    *(a3 + 24) = 1;
    if (*(result + 20) == 1)
    {
      v5 = *(*result + 8);

      return v5();
    }

    else
    {
      --*(result + 20);
    }
  }

  else
  {
    *a3 = 0;
    *(a3 + 24) = 0;
  }

  return result;
}

uint64_t WebKit::WebPushD::Connection::operator new(WebKit::WebPushD::Connection *this, void *a2)
{
  if (this == 128 && WebKit::WebPushD::Connection::s_heapRef)
  {
    return bmalloc::api::tzoneAllocateNonCompact(WebKit::WebPushD::Connection::s_heapRef, a2);
  }

  else
  {
    return WebKit::WebPushD::Connection::operatorNewSlow(this);
  }
}

uint64_t WebKit::WebPushD::Connection::Connection(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  *(a1 + 24) = 0;
  v5 = *a2;
  *a2 = 0;
  *a1 = &unk_1F10EC118;
  *(a1 + 32) = v5;
  *(a1 + 40) = &unk_1F10EC178;
  *(a1 + 56) = 0;
  *(a1 + 48) = 0;
  WTF::VectorBuffer<unsigned char,0ul,WTF::FastMalloc>::adopt(a1 + 48, a3);
  v6 = *(a3 + 16);
  *(a3 + 16) = 0;
  *(a1 + 64) = v6;
  v7 = *(a3 + 24);
  *(a3 + 24) = 0;
  *(a1 + 72) = v7;
  v8 = *(a3 + 32);
  v9 = *(a3 + 48);
  *(a1 + 112) = *(a3 + 64);
  *(a1 + 80) = v8;
  *(a1 + 96) = v9;
  return a1;
}

WebKit::PCM::ClientImpl *WebKit::PCM::ClientImpl::ClientImpl(WebKit::PCM::ClientImpl *this, WebKit::NetworkSession *a2, atomic_uint *a3)
{
  *this = &unk_1F11067E0;
  WTF::WeakPtrFactory<IPC::MessageReceiver,WTF::DefaultWeakPtrImpl>::initializeIfNeeded(a2 + 2, a2);
  v6 = *(a2 + 1);
  atomic_fetch_add(v6, 1u);
  *(this + 1) = v6;
  atomic_fetch_add(a3 + 36, 1u);
  *(this + 2) = a3;
  return this;
}

uint64_t WebKit::PCM::ClientImpl::broadcastConsoleMessage(uint64_t result, char a2, uint64_t a3)
{
  v3 = *(result + 8);
  if (v3)
  {
    v4 = *(v3 + 8);
    if (v4)
    {
      result = *(result + 16);
      if (*(result + 392) == 1)
      {
        return WebKit::NetworkProcess::broadcastConsoleMessage(result, *(v4 + 24), 14, a2, a3);
      }
    }
  }

  return result;
}

uint64_t WebKit::PCM::ClientImpl::featureEnabled(WebKit::PCM::ClientImpl *this)
{
  v1 = *(this + 1);
  if (v1)
  {
    v1 = *(v1 + 8);
    if (v1)
    {
      LOBYTE(v1) = *(*(this + 2) + 392);
    }
  }

  return v1 & 1;
}

uint64_t WebKit::PCM::ClientImpl::debugModeEnabled(WebKit::PCM::ClientImpl *this)
{
  v1 = *(this + 1);
  if (v1)
  {
    v1 = *(v1 + 8);
    if (v1)
    {
      LOBYTE(v1) = *(v1 + 168);
    }
  }

  return v1 & 1;
}

uint64_t WebKit::PCM::Connection::create@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = WTF::fastMalloc(0x30);
  result = WebKit::PCM::Connection::Connection(v6, a1, a2);
  *a3 = result;
  return result;
}

uint64_t WebKit::PCM::Connection::Connection(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  *(a1 + 24) = 0;
  v5 = *a2;
  *a2 = 0;
  *(a1 + 32) = v5;
  *a1 = &unk_1F10EC1C8;
  WTF::WeakPtrFactory<IPC::MessageReceiver,WTF::DefaultWeakPtrImpl>::initializeIfNeeded((a3 + 8), a3);
  v6 = *(a3 + 8);
  atomic_fetch_add(v6, 1u);
  *(a1 + 40) = v6;
  return a1;
}

void WebKit::PCM::DaemonClient::broadcastConsoleMessage(uint64_t a1, unsigned int a2)
{
  {
    WebKit::PCM::DaemonConnectionSet::singleton(void)::set = 0;
    qword_1EB01DB30 = 0;
  }

  WebKit::PCM::DaemonConnectionSet::broadcastConsoleMessage(&WebKit::PCM::DaemonConnectionSet::singleton(void)::set, a2);
}

BOOL WebKit::PCM::DaemonClient::debugModeEnabled(WebKit::PCM::DaemonClient *this)
{
  {
    return qword_1EB01DB30 != 0;
  }

  result = 0;
  WebKit::PCM::DaemonConnectionSet::singleton(void)::set = 0;
  qword_1EB01DB30 = 0;
  return result;
}

_DWORD *WebKit::PendingDownload::deref(_DWORD *this)
{
  if (this[5] == 1)
  {
    return (*(*this + 24))();
  }

  --this[5];
  return this;
}

_DWORD *WebKit::NetworkNotificationManager::deref(_DWORD *this)
{
  if (this[4] == 1)
  {
    return (*(*this + 24))();
  }

  --this[4];
  return this;
}

void WebKit::NetworkNotificationManager::~NetworkNotificationManager(WebKit::NetworkNotificationManager *this, void *a2)
{
  *this = &unk_1F1106748;
  v3 = *(this + 4);
  *(this + 4) = 0;
  if (v3 && atomic_fetch_add(v3 + 36, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v3 + 36);
    (*(*v3 + 24))(v3);
  }

  v4 = *(this + 3);
  *(this + 3) = 0;
  if (v4)
  {
    if (v4[4] == 1)
    {
      (*(*v4 + 8))(v4);
    }

    else
    {
      --v4[4];
    }
  }

  if (*(this + 4) == 1)
  {
    *this = &unk_1F10EA5E0;
    WTF::WeakPtrFactory<WebPushD::PushServiceConnection,WTF::DefaultWeakPtrImpl>::~WeakPtrFactory(this + 1, a2);
  }

  else
  {
    __break(0xC471u);
  }
}

{
  *this = &unk_1F1106748;
  v3 = *(this + 4);
  *(this + 4) = 0;
  if (v3 && atomic_fetch_add(v3 + 36, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v3 + 36);
    (*(*v3 + 24))(v3);
  }

  v4 = *(this + 3);
  *(this + 3) = 0;
  if (v4)
  {
    if (v4[4] == 1)
    {
      (*(*v4 + 8))(v4);
    }

    else
    {
      --v4[4];
    }
  }

  if (*(this + 4) == 1)
  {
    *this = &unk_1F10EA5E0;
    WTF::WeakPtrFactory<WebPushD::PushServiceConnection,WTF::DefaultWeakPtrImpl>::~WeakPtrFactory(this + 1, a2);

    bmalloc::api::tzoneFree(this, v5);
  }

  else
  {
    __break(0xC471u);
  }
}

void WebKit::PCM::ClientImpl::~ClientImpl(WebKit::PCM::ClientImpl *this, void *a2)
{
  *this = &unk_1F11067E0;
  v3 = *(this + 2);
  *(this + 2) = 0;
  if (v3 && atomic_fetch_add(v3 + 36, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v3 + 36);
    (*(*v3 + 24))(v3);
  }

  v4 = *(this + 1);
  *(this + 1) = 0;
  if (v4)
  {
    if (atomic_fetch_add(v4, 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, v4);
      WTF::fastFree(v4, a2);
    }
  }
}

{
  *this = &unk_1F11067E0;
  v3 = *(this + 2);
  *(this + 2) = 0;
  if (v3 && atomic_fetch_add(v3 + 36, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v3 + 36);
    (*(*v3 + 24))(v3);
  }

  v4 = *(this + 1);
  *(this + 1) = 0;
  if (v4 && atomic_fetch_add(v4, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v4);
    WTF::fastFree(v4, a2);
  }

  bmalloc::api::tzoneFree(this, a2);
}

void WebKit::PCM::DaemonClient::~DaemonClient(unsigned int **this, void *a2)
{
  WTF::WeakPtrFactory<WebPushD::PushServiceConnection,WTF::DefaultWeakPtrImpl>::~WeakPtrFactory(this + 1, a2);
}

{
  WTF::WeakPtrFactory<WebPushD::PushServiceConnection,WTF::DefaultWeakPtrImpl>::~WeakPtrFactory(this + 1, a2);

  bmalloc::api::tzoneFree(this, v3);
}

uint64_t WTF::HashTable<WTF::ObjectIdentifierGeneric<WebKit::DownloadIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::DownloadIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::Download,WTF::RawPtrTraits<WebKit::Download>,WTF::DefaultRefDerefTraits<WebKit::Download>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::DownloadIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::Download,WTF::RawPtrTraits<WebKit::Download>,WTF::DefaultRefDerefTraits<WebKit::Download>>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::DownloadIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::DownloadIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::Download,WTF::RawPtrTraits<WebKit::Download>,WTF::DefaultRefDerefTraits<WebKit::Download>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::DownloadIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::DownloadIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::Ref<WebKit::Download,WTF::RawPtrTraits<WebKit::Download>,WTF::DefaultRefDerefTraits<WebKit::Download>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::DownloadIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::deallocateTable(uint64_t a1, void *a2)
{
  v3 = *(a1 - 4);
  if (v3)
  {
    v4 = (a1 + 8);
    do
    {
      if (*(v4 - 1) != -1)
      {
        v5 = *v4;
        *v4 = 0;
        if (v5)
        {
          WTF::RefCounted<WebKit::Download>::deref((v5 + 16));
        }
      }

      v4 += 2;
      --v3;
    }

    while (v3);
  }

  return WTF::fastFree((a1 - 16), a2);
}

uint64_t WTF::HashTable<WTF::ObjectIdentifierGeneric<WebKit::DownloadIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::DownloadIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::RefPtr<WebKit::NetworkDataTask,WTF::RawPtrTraits<WebKit::NetworkDataTask>,WTF::DefaultRefDerefTraits<WebKit::NetworkDataTask>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::DownloadIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::RefPtr<WebKit::NetworkDataTask,WTF::RawPtrTraits<WebKit::NetworkDataTask>,WTF::DefaultRefDerefTraits<WebKit::NetworkDataTask>>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::DownloadIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::DownloadIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::RefPtr<WebKit::NetworkDataTask,WTF::RawPtrTraits<WebKit::NetworkDataTask>,WTF::DefaultRefDerefTraits<WebKit::NetworkDataTask>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::DownloadIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::DownloadIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::RefPtr<WebKit::NetworkDataTask,WTF::RawPtrTraits<WebKit::NetworkDataTask>,WTF::DefaultRefDerefTraits<WebKit::NetworkDataTask>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::DownloadIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::deallocateTable(uint64_t a1, void *a2)
{
  v3 = *(a1 - 4);
  if (v3)
  {
    v4 = (a1 + 8);
    do
    {
      if (*(v4 - 1) != -1)
      {
        v5 = *v4;
        *v4 = 0;
        if (v5)
        {
          WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::NetworkDataTask,(WTF::DestructionThread)1>::deref((v5 + 8));
        }
      }

      v4 += 2;
      --v3;
    }

    while (v3);
  }

  return WTF::fastFree((a1 - 16), a2);
}

uint64_t WTF::HashTable<WTF::ObjectIdentifierGeneric<WebKit::DownloadIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::DownloadIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::PendingDownload,WTF::RawPtrTraits<WebKit::PendingDownload>,WTF::DefaultRefDerefTraits<WebKit::PendingDownload>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::DownloadIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::PendingDownload,WTF::RawPtrTraits<WebKit::PendingDownload>,WTF::DefaultRefDerefTraits<WebKit::PendingDownload>>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::DownloadIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::DownloadIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::PendingDownload,WTF::RawPtrTraits<WebKit::PendingDownload>,WTF::DefaultRefDerefTraits<WebKit::PendingDownload>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::DownloadIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::DownloadIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::Ref<WebKit::PendingDownload,WTF::RawPtrTraits<WebKit::PendingDownload>,WTF::DefaultRefDerefTraits<WebKit::PendingDownload>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::DownloadIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::deallocateTable(uint64_t a1, void *a2)
{
  v3 = *(a1 - 4);
  if (v3)
  {
    v4 = (a1 + 8);
    do
    {
      if (*(v4 - 1) != -1)
      {
        v5 = *v4;
        *v4 = 0;
        if (v5)
        {
          if (v5[5] == 1)
          {
            (*(*v5 + 24))(v5);
          }

          else
          {
            --v5[5];
          }
        }
      }

      v4 += 2;
      --v3;
    }

    while (v3);
  }

  return WTF::fastFree((a1 - 16), a2);
}

uint64_t WebKit::PendingDownload::operator new(WebKit::PendingDownload *this, void *a2)
{
  if (this == 152 && WebKit::PendingDownload::s_heapRef)
  {
    return bmalloc::api::tzoneAllocateNonCompact(WebKit::PendingDownload::s_heapRef, a2);
  }

  else
  {
    return WebKit::PendingDownload::operatorNewSlow(this);
  }
}

uint64_t std::optional<WebCore::PushSubscriptionData>::optional[abi:sn200100](uint64_t a1, uint64_t a2)
{
  *a1 = 0;
  *(a1 + 80) = 0;
  if (*(a2 + 80) == 1)
  {
    *a1 = *a2;
    v4 = *(a2 + 8);
    *(a2 + 8) = 0;
    *(a1 + 8) = v4;
    *(a1 + 16) = *(a2 + 16);
    *(a1 + 40) = 0;
    *(a1 + 32) = 0;
    WTF::VectorBuffer<unsigned char,0ul,WTF::FastMalloc>::adopt(a1 + 32, (a2 + 32));
    *(a1 + 56) = 0;
    *(a1 + 48) = 0;
    WTF::VectorBuffer<unsigned char,0ul,WTF::FastMalloc>::adopt(a1 + 48, (a2 + 48));
    *(a1 + 64) = 0;
    *(a1 + 72) = 0;
    WTF::VectorBuffer<unsigned char,0ul,WTF::FastMalloc>::adopt(a1 + 64, (a2 + 64));
    *(a1 + 80) = 1;
  }

  return a1;
}

uint64_t IPC::MessageSender::sendWithAsyncReplyWithoutUsingIPCConnection<Messages::PushClientConnection::GetPushPermissionState,WTF::CompletionHandler<void ()(WebCore::PushPermissionState)>>(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v6 = (*(*a1 + 56))(a1);
  v8 = IPC::Encoder::operator new(0x238, v7);
  *v8 = 895;
  *(v8 + 2) = 0;
  *(v8 + 3) = 0;
  *(v8 + 1) = v6;
  *(v8 + 68) = 0;
  *(v8 + 70) = 0;
  *(v8 + 69) = 0;
  IPC::Encoder::encodeHeader(v8);
  v19 = v8;
  IPC::ArgumentCoder<WebCore::SecurityOriginData,void>::encode(v8, *a2);
  v9 = *a3;
  *a3 = 0;
  v10 = WTF::fastMalloc(0x10);
  *v10 = &unk_1F1106870;
  v10[1] = v9;
  v18 = v10;
  v12 = (*(*a1 + 24))(a1, &v19, &v18);
  v13 = v18;
  v18 = 0;
  if (v13)
  {
    (*(*v13 + 8))(v13);
  }

  v14 = v19;
  v19 = 0;
  if (v14)
  {
    IPC::Encoder::~Encoder(v14, v11);
    bmalloc::api::tzoneFree(v16, v17);
  }

  return v12;
}

void *WTF::Detail::CallableWrapper<BOOL IPC::MessageSender::sendWithAsyncReplyWithoutUsingIPCConnection<Messages::PushClientConnection::GetPushPermissionState,WTF::CompletionHandler<void ()(WebCore::PushPermissionState)>>(Messages::PushClientConnection::GetPushPermissionState &&,WTF::CompletionHandler<void ()(WebCore::PushPermissionState)> &&)::{lambda(IPC::Decoder *)#1},void,WTF::CompletionHandler<void ()(WebCore::PushPermissionState)> &&>::~CallableWrapper(void *a1)
{
  v2 = a1[1];
  *a1 = &unk_1F1106870;
  a1[1] = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<BOOL IPC::MessageSender::sendWithAsyncReplyWithoutUsingIPCConnection<Messages::PushClientConnection::GetPushPermissionState,WTF::CompletionHandler<void ()(WebCore::PushPermissionState)>>(Messages::PushClientConnection::GetPushPermissionState &&,WTF::CompletionHandler<void ()(WebCore::PushPermissionState)> &&)::{lambda(IPC::Decoder *)#1},void,WTF::CompletionHandler<void ()(WebCore::PushPermissionState)> &&>::~CallableWrapper(WTF *this, void *a2)
{
  v3 = *(this + 1);
  *this = &unk_1F1106870;
  *(this + 1) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  return WTF::fastFree(this, a2);
}

uint64_t WTF::Detail::CallableWrapper<BOOL IPC::MessageSender::sendWithAsyncReplyWithoutUsingIPCConnection<Messages::PushClientConnection::GetPushPermissionState,WTF::CompletionHandler<void ()(WebCore::PushPermissionState)>>(Messages::PushClientConnection::GetPushPermissionState &&,WTF::CompletionHandler<void ()(WebCore::PushPermissionState)> &&)::{lambda(IPC::Decoder *)#1},void,WTF::CompletionHandler<void ()(WebCore::PushPermissionState)> &&>::call(uint64_t a1, uint64_t *a2)
{
  if (a2)
  {
    v3 = *a2;
    if (*a2)
    {
      v4 = IPC::Decoder::decode<std::tuple<WebCore::InspectorFrontendClientAppearance>>(a2);
      LODWORD(v3) = v4 & (v4 << 23 >> 31);
    }
  }

  else
  {
    LOBYTE(v3) = 0;
  }

  v5 = *(a1 + 8);
  *(a1 + 8) = 0;
  (*(*v5 + 16))(v5, v3);
  v6 = *(*v5 + 8);

  return v6(v5);
}

uint64_t *WTF::HashTable<WTF::ObjectIdentifierGeneric<WebKit::DownloadIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::DownloadIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::PendingDownload,WTF::RawPtrTraits<WebKit::PendingDownload>,WTF::DefaultRefDerefTraits<WebKit::PendingDownload>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::DownloadIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::PendingDownload,WTF::RawPtrTraits<WebKit::PendingDownload>,WTF::DefaultRefDerefTraits<WebKit::PendingDownload>>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::DownloadIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::DownloadIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::PendingDownload,WTF::RawPtrTraits<WebKit::PendingDownload>,WTF::DefaultRefDerefTraits<WebKit::PendingDownload>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::DownloadIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::DownloadIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::Ref<WebKit::PendingDownload,WTF::RawPtrTraits<WebKit::PendingDownload>,WTF::DefaultRefDerefTraits<WebKit::PendingDownload>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::DownloadIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::expand(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  if (*a1 && (v4 = *(v3 - 4)) != 0)
  {
    v5 = v4 << (6 * *(v3 - 12) >= (2 * v4));
  }

  else
  {
    v5 = 8;
  }

  return WTF::HashTable<WTF::ObjectIdentifierGeneric<WebKit::DownloadIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::DownloadIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::PendingDownload,WTF::RawPtrTraits<WebKit::PendingDownload>,WTF::DefaultRefDerefTraits<WebKit::PendingDownload>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::DownloadIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::PendingDownload,WTF::RawPtrTraits<WebKit::PendingDownload>,WTF::DefaultRefDerefTraits<WebKit::PendingDownload>>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::DownloadIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::DownloadIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::PendingDownload,WTF::RawPtrTraits<WebKit::PendingDownload>,WTF::DefaultRefDerefTraits<WebKit::PendingDownload>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::DownloadIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::DownloadIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::Ref<WebKit::PendingDownload,WTF::RawPtrTraits<WebKit::PendingDownload>,WTF::DefaultRefDerefTraits<WebKit::PendingDownload>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::DownloadIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::rehash(a1, v5, a2);
}

uint64_t *WTF::HashTable<WTF::ObjectIdentifierGeneric<WebKit::DownloadIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::DownloadIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::PendingDownload,WTF::RawPtrTraits<WebKit::PendingDownload>,WTF::DefaultRefDerefTraits<WebKit::PendingDownload>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::DownloadIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::PendingDownload,WTF::RawPtrTraits<WebKit::PendingDownload>,WTF::DefaultRefDerefTraits<WebKit::PendingDownload>>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::DownloadIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::DownloadIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::PendingDownload,WTF::RawPtrTraits<WebKit::PendingDownload>,WTF::DefaultRefDerefTraits<WebKit::PendingDownload>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::DownloadIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::DownloadIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::Ref<WebKit::PendingDownload,WTF::RawPtrTraits<WebKit::PendingDownload>,WTF::DefaultRefDerefTraits<WebKit::PendingDownload>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::DownloadIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::rehash(uint64_t *a1, unsigned int a2, uint64_t *a3)
{
  v6 = *a1;
  if (*a1)
  {
    v7 = *(v6 - 4);
    v8 = *(v6 - 12);
  }

  else
  {
    v7 = 0;
    v8 = 0;
  }

  v9 = WTF::fastZeroedMalloc((16 * a2 + 16));
  *a1 = (v9 + 4);
  v9[2] = a2 - 1;
  v9[3] = a2;
  *v9 = 0;
  v9[1] = v8;
  if (v7)
  {
    v11 = 0;
    v12 = 0;
    do
    {
      v13 = (v6 + 16 * v11);
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
            v23 = v21;
            v24 = *(v16 + 16 * v21);
            v21 = (v21 + v22++) & v17;
          }

          while (v24);
          v25 = (v16 + 16 * v23);
          v26 = v25[1];
          v25[1] = 0;
          if (v26)
          {
            if (v26[5] == 1)
            {
              (*(*v26 + 24))(v26);
            }

            else
            {
              --v26[5];
            }
          }

          *v25 = *v13;
          v27 = v13[1];
          v13[1] = 0;
          v25[1] = v27;
          v28 = v13[1];
          v13[1] = 0;
          if (v28)
          {
            if (v28[5] == 1)
            {
              (*(*v28 + 24))(v28);
            }

            else
            {
              --v28[5];
            }
          }

          if (v13 == a3)
          {
            v12 = v25;
          }
        }

        else
        {
          v15 = v13[1];
          v13[1] = 0;
          if (v15)
          {
            if (v15[5] == 1)
            {
              (*(*v15 + 24))(v15);
            }

            else
            {
              --v15[5];
            }
          }
        }
      }

      ++v11;
    }

    while (v11 != v7);
  }

  else
  {
    v12 = 0;
    result = 0;
    if (!v6)
    {
      return result;
    }
  }

  WTF::fastFree((v6 - 16), v10);
  return v12;
}

uint64_t *WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::DownloadIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::PendingDownload,WTF::RawPtrTraits<WebKit::PendingDownload>,WTF::DefaultRefDerefTraits<WebKit::PendingDownload>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::DownloadIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::DownloadIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::Ref<WebKit::PendingDownload,WTF::RawPtrTraits<WebKit::PendingDownload>,WTF::DefaultRefDerefTraits<WebKit::PendingDownload>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::take@<X0>(uint64_t *a1@<X0>, void *a2@<X1>, void *a3@<X8>)
{
  v3 = *a1;
  if (*a1)
  {
    v4 = (v3 + 16 * *(v3 - 4));
  }

  else
  {
    v4 = 0;
  }

  if (v4 == a2)
  {
    *a3 = 0;
    return a1;
  }

  v5 = a2[1];
  if (v5)
  {
    a2[1] = 0;
    v3 = *a1;
  }

  *a3 = v5;
  if (v3)
  {
    v6 = (v3 + 16 * *(v3 - 4));
    if (v6 == a2)
    {
      return a1;
    }
  }

  else
  {
    if (!a2)
    {
      return a1;
    }

    v6 = 0;
  }

  if (v6 != a2)
  {
    return WTF::HashTable<WTF::ObjectIdentifierGeneric<WebKit::DownloadIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::DownloadIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::PendingDownload,WTF::RawPtrTraits<WebKit::PendingDownload>,WTF::DefaultRefDerefTraits<WebKit::PendingDownload>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::DownloadIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::PendingDownload,WTF::RawPtrTraits<WebKit::PendingDownload>,WTF::DefaultRefDerefTraits<WebKit::PendingDownload>>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::DownloadIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::DownloadIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::PendingDownload,WTF::RawPtrTraits<WebKit::PendingDownload>,WTF::DefaultRefDerefTraits<WebKit::PendingDownload>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::DownloadIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::DownloadIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::Ref<WebKit::PendingDownload,WTF::RawPtrTraits<WebKit::PendingDownload>,WTF::DefaultRefDerefTraits<WebKit::PendingDownload>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::DownloadIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::remove(a1, a2);
  }

  return a1;
}