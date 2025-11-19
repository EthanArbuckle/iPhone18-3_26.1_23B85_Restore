void sub_19D59318C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *aBlock, WTF::StringImpl *a11, WTF::StringImpl *a12, WTF::StringImpl *a13, WTF *a14, uint64_t a15)
{
  WTF::ThreadSafeRefCounted<WebKit::LaunchGrant,(WTF::DestructionThread)0>::deref(v16);
  WTF::ThreadSafeWeakPtrControlBlock::weakDeref(v15, v18);
  _Unwind_Resume(a1);
}

void *WebKit::AssertionCapability::AssertionCapability(void *a1, uint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t *a5, uint64_t *a6)
{
  v27 = *MEMORY[0x1E69E9840];
  *a1 = &unk_1F10E6370;
  a1[1] = 0;
  v8 = *a2;
  *a2 = 0;
  a1[2] = v8;
  v9 = *a3;
  *a3 = 0;
  a1[3] = v9;
  v10 = *a4;
  *a4 = 0;
  a1[4] = v10;
  v11 = a1 + 4;
  v12 = *a5;
  if (*a5)
  {
    *a5 = 0;
    v13 = malloc_type_malloc(0x28uLL, 0x10E004053C0834CuLL);
    *v13 = MEMORY[0x1E69E9818];
    v13[1] = 50331650;
    v13[2] = WTF::BlockPtr<void ()(void)>::fromCallable<WTF::Function<void ()(void)>>(WTF::Function<void ()(void)>)::{lambda(void *)#1}::__invoke;
    v13[3] = &WTF::BlockPtr<void ()(void)>::fromCallable<WTF::Function<void ()(void)>>(WTF::Function<void ()(void)>)::descriptor;
    v13[4] = v12;
  }

  else
  {
    v13 = _Block_copy(0);
  }

  a1[5] = v13;
  v14 = *a6;
  if (*a6)
  {
    *a6 = 0;
    v15 = malloc_type_malloc(0x28uLL, 0x10E004053C0834CuLL);
    *v15 = MEMORY[0x1E69E9818];
    v15[1] = 50331650;
    v15[2] = WTF::BlockPtr<void ()(void)>::fromCallable<WTF::Function<void ()(void)>>(WTF::Function<void ()(void)>)::{lambda(void *)#1}::__invoke;
    v15[3] = &WTF::BlockPtr<void ()(void)>::fromCallable<WTF::Function<void ()(void)>>(WTF::Function<void ()(void)>)::descriptor;
    v15[4] = v14;
  }

  else
  {
    v15 = _Block_copy(0);
  }

  a1[6] = v15;
  v16 = qword_1ED6416A0;
  if (os_log_type_enabled(qword_1ED6416A0, OS_LOG_TYPE_DEFAULT))
  {
    WTF::String::utf8();
    v17 = v24 ? v24 + 16 : 0;
    *buf = 136446210;
    v26 = v17;
    _os_log_impl(&dword_19D52D000, v16, OS_LOG_TYPE_DEFAULT, "AssertionCapability::AssertionCapability: taking assertion %{public}s", buf, 0xCu);
    if (v24)
    {
      if (*v24 == 1)
      {
        WTF::fastFree(v24, v18);
      }

      else
      {
        --*v24;
      }
    }
  }

  if (MEMORY[0x19EB01EF0](*v11, "Suspended", 9))
  {
    v19 = [MEMORY[0x1E695AA70] suspended];
    v20 = v19;
    if (!v19)
    {
      goto LABEL_23;
    }

    goto LABEL_22;
  }

  if (MEMORY[0x19EB01EF0](*v11, "Background", 10))
  {
    v19 = [MEMORY[0x1E695AA70] background];
    v20 = v19;
    if (!v19)
    {
      goto LABEL_23;
    }

    goto LABEL_22;
  }

  if (!MEMORY[0x19EB01EF0](*v11, "Foreground", 10))
  {
    return a1;
  }

  v19 = [MEMORY[0x1E695AA70] foreground];
  v20 = v19;
  if (v19)
  {
LABEL_22:
    v21 = v19;
  }

LABEL_23:
  v22 = a1[1];
  a1[1] = v20;
  if (v22)
  {
  }

  return a1;
}

void sub_19D5936F0(_Unwind_Exception *a1)
{
  _Block_release(*(v1 + 48));
  _Block_release(*(v1 + 40));
  v6 = *v3;
  *v3 = 0;
  if (v6 && atomic_fetch_add_explicit(v6, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v6, v5);
  }

  v7 = *(v1 + 24);
  *(v1 + 24) = 0;
  if (v7 && atomic_fetch_add_explicit(v7, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v7, v5);
  }

  v8 = *(v1 + 16);
  *(v1 + 16) = 0;
  if (v8 && atomic_fetch_add_explicit(v8, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v8, v5);
  }

  v9 = *(v1 + 8);
  *v1 = v2;
  *(v1 + 8) = 0;
  if (v9)
  {
  }

  _Unwind_Resume(a1);
}

void WebKit::ExtensionProcess::grantCapability(unsigned __int8 *a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X2>, void *a4@<X8>)
{
  v29 = 0;
  v8 = a1[8];
  if (v8 == 255)
  {
    v9 = -1;
  }

  else
  {
    v9 = a1[8];
  }

  if (v9 != 2)
  {
    if (v9 == 1)
    {
      if (v8 == 1)
      {
        v10 = objc_opt_respondsToSelector();
        v11 = *a1;
        v12 = *a2;
        if (v10)
        {
          v13 = *a3;
          *a3 = 0;
          v14 = malloc_type_malloc(0x28uLL, 0x10E0040799C3B1DuLL);
          *v14 = MEMORY[0x1E69E9818];
          v14[1] = 50331650;
          v14[2] = WTF::BlockPtr<void ()(void)>::fromCallable<WTF::BlockPtr<void ()(void)>>(WTF::BlockPtr<void ()(void)>)::{lambda(void *)#1}::__invoke;
          v14[3] = &WTF::BlockPtr<void ()(void)>::fromCallable<WTF::BlockPtr<void ()(void)>>(WTF::BlockPtr<void ()(void)>)::descriptor;
          v14[4] = v13;
          _Block_release(0);
          v15 = [v11 grantCapability:v12 error:&v29 invalidationHandler:v14];
          v16 = v15;
          if (v15)
          {
            goto LABEL_17;
          }

          goto LABEL_18;
        }

        v26 = [v11 grantCapability:v12 error:&v29];
        v27 = v26;
        if (v26)
        {
          goto LABEL_24;
        }

        goto LABEL_25;
      }
    }

    else if (!a1[8])
    {
      v21 = objc_opt_respondsToSelector();
      v22 = *a1;
      v23 = *a2;
      if (v21)
      {
        v24 = *a3;
        *a3 = 0;
        v14 = malloc_type_malloc(0x28uLL, 0x10E0040799C3B1DuLL);
        *v14 = MEMORY[0x1E69E9818];
        v14[1] = 50331650;
        v14[2] = WTF::BlockPtr<void ()(void)>::fromCallable<WTF::BlockPtr<void ()(void)>>(WTF::BlockPtr<void ()(void)>)::{lambda(void *)#1}::__invoke;
        v14[3] = &WTF::BlockPtr<void ()(void)>::fromCallable<WTF::BlockPtr<void ()(void)>>(WTF::BlockPtr<void ()(void)>)::descriptor;
        v14[4] = v24;
        _Block_release(0);
        v15 = [v22 grantCapability:v23 error:&v29 invalidationHandler:v14];
        v16 = v15;
        if (v15)
        {
LABEL_17:
          v25 = v15;
        }

LABEL_18:
        *a4 = v16;
        _Block_release(v14);
        return;
      }

      v26 = [v22 grantCapability:v23 error:&v29];
      v27 = v26;
      if (v26)
      {
        goto LABEL_24;
      }

      goto LABEL_25;
    }

LABEL_26:
    mpark::throw_bad_variant_access(a1);
  }

  if (v8 != 2)
  {
    goto LABEL_26;
  }

  v17 = objc_opt_respondsToSelector();
  v18 = *a1;
  v19 = *a2;
  if (v17)
  {
    v20 = *a3;
    *a3 = 0;
    v14 = malloc_type_malloc(0x28uLL, 0x10E0040799C3B1DuLL);
    *v14 = MEMORY[0x1E69E9818];
    v14[1] = 50331650;
    v14[2] = WTF::BlockPtr<void ()(void)>::fromCallable<WTF::BlockPtr<void ()(void)>>(WTF::BlockPtr<void ()(void)>)::{lambda(void *)#1}::__invoke;
    v14[3] = &WTF::BlockPtr<void ()(void)>::fromCallable<WTF::BlockPtr<void ()(void)>>(WTF::BlockPtr<void ()(void)>)::descriptor;
    v14[4] = v20;
    _Block_release(0);
    v15 = [v18 grantCapability:v19 error:&v29 invalidationHandler:v14];
    v16 = v15;
    if (v15)
    {
      goto LABEL_17;
    }

    goto LABEL_18;
  }

  v26 = [v18 grantCapability:v19 error:&v29];
  v27 = v26;
  if (v26)
  {
LABEL_24:
    v28 = v26;
  }

LABEL_25:
  *a4 = v27;
}

void sub_19D593AF4(_Unwind_Exception *a1)
{
  _Block_release(v2);
  *v1 = 0;
  _Unwind_Resume(a1);
}

void WebKit::AssertionCapability::~AssertionCapability(const void **this)
{
  _Block_release(this[6]);
  _Block_release(this[5]);
  v3 = this[4];
  this[4] = 0;
  if (v3 && atomic_fetch_add_explicit(v3, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v3, v2);
  }

  v4 = this[3];
  this[3] = 0;
  if (v4 && atomic_fetch_add_explicit(v4, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v4, v2);
  }

  v5 = this[2];
  this[2] = 0;
  if (v5 && atomic_fetch_add_explicit(v5, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v5, v2);
  }

  v6 = this[1];
  *this = &unk_1F10E6398;
  this[1] = 0;
  if (v6)
  {
  }
}

{
  WebKit::AssertionCapability::~AssertionCapability(this);

  JUMPOUT(0x19EB14CF0);
}

uint64_t WTF::BlockPtr<void ()(BEWebContentProcess *,NSError *)>::fromCallable<WebKit::launchWithExtensionKit(WebKit::ProcessLauncher &,WebKit::ProcessLaunchType,WebKit::ProcessLauncher::Client *,WTF::Function<void ()(WTF::ThreadSafeWeakPtr<WebKit::ProcessLauncher,WTF::NoTaggingTraits<WebKit::ProcessLauncher>>,WebKit::ExtensionProcess &&,WTF::ASCIILiteral,NSError *)> &&)::$_0>(WebKit::launchWithExtensionKit(WebKit::ProcessLauncher &,WebKit::ProcessLaunchType,WebKit::ProcessLauncher::Client *,WTF::Function<void ()(WTF::ThreadSafeWeakPtr<WebKit::ProcessLauncher,WTF::NoTaggingTraits<WebKit::ProcessLauncher>>,WebKit::ExtensionProcess &&,WTF::ASCIILiteral,NSError *)> &&)::$_0)::{lambda(void const*)#1}::__invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 48);
  *(a1 + 48) = 0;
  if (v3)
  {
    WTF::ThreadSafeWeakPtrControlBlock::weakDeref(v3, a2);
  }

  result = *(a1 + 32);
  *(a1 + 32) = 0;
  if (result)
  {
    v5 = *(*result + 8);

    return v5();
  }

  return result;
}

void WebKit::ExtensionCapabilityGrant::setPlatformGrant(uint64_t a1, uint64_t *a2)
{
  v8 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 8);
  *(a1 + 8) = 0;
  v3 = *a2;
  *a2 = 0;
  v4 = *(a1 + 8);
  *(a1 + 8) = v3;
  if (v4)
  {
  }

  if ([v2 isValid])
  {
    if (([v2 invalidate] & 1) == 0)
    {
      v5 = qword_1ED641008;
      if (os_log_type_enabled(qword_1ED641008, OS_LOG_TYPE_ERROR))
      {
        v6 = 138543362;
        v7 = v2;
        _os_log_error_impl(&dword_19D52D000, v5, OS_LOG_TYPE_ERROR, "Invalidating grant %{public}@ failed", &v6, 0xCu);
      }
    }
  }

  if (v2)
  {
  }
}

void sub_19D593D4C(_Unwind_Exception *exception_object)
{
  if (v1)
  {
  }

  _Unwind_Resume(exception_object);
}

atomic_uchar *WTF::ThreadSafeWeakPtrControlBlock::weakDeref(atomic_uchar *this, void *a2)
{
  v2 = this;
  v3 = 0;
  atomic_compare_exchange_strong_explicit(this, &v3, 1u, memory_order_acquire, memory_order_acquire);
  if (v3)
  {
    this = MEMORY[0x19EB01E30](this);
  }

  v4 = *(v2 + 2) - 1;
  *(v2 + 2) = v4;
  if (v4 || *(v2 + 1))
  {
    v5 = 1;
    atomic_compare_exchange_strong_explicit(v2, &v5, 0, memory_order_release, memory_order_relaxed);
    if (v5 != 1)
    {

      return WTF::Lock::unlockSlow(v2);
    }
  }

  else
  {
    v6 = 1;
    atomic_compare_exchange_strong_explicit(v2, &v6, 0, memory_order_release, memory_order_relaxed);
    if (v6 != 1)
    {
      WTF::Lock::unlockSlow(v2);
    }

    return WTF::fastFree(v2, a2);
  }

  return this;
}

BOOL WTF::equalIgnoringASCIICaseCommon<WTF::StringImpl,WTF::StringImpl>(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 4);
  if (v3 != *(a2 + 4))
  {
    return 0;
  }

  v6 = *(a2 + 16);
  v7 = *(a1 + 8);
  v8 = *(a2 + 8);
  if ((*(a1 + 16) & 4) != 0)
  {
    if ((v6 & 4) != 0)
    {
      return WTF::equalIgnoringASCIICaseWithLength<unsigned char,unsigned char>(v7, v3, v8, v3, v3);
    }

    else
    {
      return WTF::equalIgnoringASCIICaseWithLength<unsigned char,char16_t>(v7, v3, v8, v3, v3);
    }
  }

  else if ((v6 & 4) != 0)
  {
    return WTF::equalIgnoringASCIICaseWithLength<char16_t,unsigned char>(v7, v3, v8, v3, v3);
  }

  else
  {
    return WTF::equalIgnoringASCIICaseWithLength<char16_t,char16_t>(v7, v3, v8, v3, v3);
  }
}

void WTF::Detail::CallableWrapper<WebKit::WebProcessPool::initializeHardwareKeyboardAvailability(void)::$_0::operator() const(void)::{lambda(void)#1},void>::call(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1)
  {
    v2 = *(v1 + 8);
    if (v2)
    {
      v4 = CFRetain(*(v2 - 8));
      v5 = *(a1 + 18);
      v6 = *(a1 + 16);
      if (WTF::isMainRunLoop(v4))
      {
        *(v2 + 1003) = (v6 | (v5 << 16)) >> 16;
        *(v2 + 1001) = v6;
        WebKit::WebProcessPool::hardwareKeyboardAvailabilityChanged(v2 - 16);
        v7 = *(v2 - 8);

        CFRelease(v7);
      }

      else
      {
        __break(0xC471u);
      }
    }
  }
}

void *WebKit::WebProcessProxy::pages@<X0>(WebKit::WebProcessProxy *this@<X0>, uint64_t a2@<X8>)
{
  WebKit::WebProcessProxy::mainPages(this, a2);
  WTF::WeakHashSet<WebKit::RemoteAudioSessionProxy,WTF::DefaultWeakPtrImpl,(WTF::EnableWeakPtrThreadingAssertions)1>::begin(&v27, this + 75);
  v4 = *(this + 75);
  if (v4)
  {
    v5 = *(v4 - 4);
    v6 = v4 + 8 * v5;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v22 = this + 600;
  v23 = v6;
  v24 = v6;
  v25 = v6;
  v26 = v4 + 8 * v5;
  result = WTF::WeakHashSet<WebKit::RemoteLayerBackingStore,WTF::DefaultWeakPtrImpl,(WTF::EnableWeakPtrThreadingAssertions)1>::WeakHashSetConstIterator::skipEmptyBuckets(&v22);
  v8 = v28;
  v9 = v23;
  while (v8 != v9)
  {
    v10 = *(*v8 + 8);
    v11 = *(v10 + 16);
    *(v10 + 16) = v11 + 1;
    v12 = *(v10 + 40);
    if (v12)
    {
      v13 = *(v12 + 8);
      if (v13)
      {
        v14 = v13 - 16;
        CFRetain(*(v13 - 8));
        v21 = v14;
        v15 = *(a2 + 12);
        if (v15 == *(a2 + 8))
        {
          v16 = WTF::Vector<WTF::Ref<WebKit::WebPageProxy,WTF::RawPtrTraits<WebKit::WebPageProxy>,WTF::DefaultRefDerefTraits<WebKit::WebPageProxy>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(a2, v15 + 1, &v21);
          v15 = *(a2 + 12);
          v17 = *a2;
          v18 = *v16;
          *v16 = 0;
          *(v17 + 8 * v15) = v18;
        }

        else
        {
          v19 = *a2;
          v21 = 0;
          *(v19 + 8 * v15) = v14;
        }

        *(a2 + 12) = v15 + 1;
        v20 = v21;
        v21 = 0;
        if (v20)
        {
          CFRelease(*(v20 + 8));
        }

        v11 = *(v10 + 16) - 1;
      }
    }

    if (v11)
    {
      *(v10 + 16) = v11;
    }

    else
    {
      (*(*v10 + 24))(v10);
    }

    result = WTF::WeakHashSet<WebKit::RemoteLayerBackingStore,WTF::DefaultWeakPtrImpl,(WTF::EnableWeakPtrThreadingAssertions)1>::WeakHashSetConstIterator::operator++(&v27);
    v8 = v28;
  }

  return result;
}

void *WebKit::WebProcessProxy::mainPages@<X0>(WebKit::WebProcessProxy *this@<X0>, uint64_t a2@<X8>)
{
  *a2 = 0;
  *(a2 + 8) = 0;
  v4 = *(this + 74);
  if (v4 && (v5 = *(v4 - 12), v5))
  {
    if (v5 >> 29)
    {
      __break(0xC471u);
      goto LABEL_20;
    }

    v6 = WTF::fastMalloc((8 * v5));
    *(a2 + 8) = v5;
    *a2 = v6;
  }

  else
  {
    v6 = 0;
  }

  v7 = (this + 592);
  result = WTF::HashTable<WTF::String,WTF::KeyValuePair<WTF::String,WTF::WallTime>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,WTF::WallTime>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,WTF::WallTime,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::WallTime>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::begin(this + 74);
  v9 = result;
  v11 = v10;
  if (*v7)
  {
    v12 = *v7 + 16 * *(*v7 - 4);
  }

  else
  {
    v12 = 0;
  }

  if (v12 != result)
  {
    v13 = 0;
    while (1)
    {
      v14 = *(v9[1] + 8);
      if (!v14)
      {
        break;
      }

      v15 = v14 - 16;
      result = CFRetain(*(v14 - 8));
      *(v6 + 8 * v13) = v15;
      do
      {
        v9 += 2;
      }

      while (v9 != v11 && (*v9 + 1) <= 1);
      ++v13;
      if (v9 == v12)
      {
        *(a2 + 12) = v13;
        return result;
      }
    }

    *(a2 + 12) = v13;
    __break(0xC471u);
LABEL_20:
    JUMPOUT(0x19D5941C8);
  }

  return result;
}

uint64_t WebKit::WebProcessPool::hardwareKeyboardAvailabilityChanged(uint64_t this)
{
  v2 = *(this + 84);
  if (v2)
  {
    v3 = *(this + 72);
    v4 = &v3[v2];
    v5 = (this + 1017);
    while (1)
    {
      v6 = *v3;
      v7 = (*v3 + 16);
      atomic_fetch_add(v7, 1u);
      v8 = WebKit::WebProcessProxy::pages(v6, &v13);
      if (v14)
      {
        break;
      }

LABEL_7:
      this = WTF::Vector<WTF::Ref<WebKit::WebPageProxy,WTF::RawPtrTraits<WebKit::WebPageProxy>,WTF::DefaultRefDerefTraits<WebKit::WebPageProxy>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v13, v9);
      if (v6)
      {
        this = WTF::ThreadSafeRefCounted<WebKit::AuxiliaryProcessProxy,(WTF::DestructionThread)2>::deref(v7);
      }

      if (++v3 == v4)
      {
        return this;
      }
    }

    v10 = v13;
    v11 = 8 * v14;
    while (1)
    {
      v12 = *v10;
      if ((WTF::isMainRunLoop(v8) & 1) == 0)
      {
        break;
      }

      v1 = v1 & 0xFFFFFFFFFF000000 | *v5 | (*(v5 + 2) << 16);
      v8 = WebKit::WebPageProxy::hardwareKeyboardAvailabilityChanged(v12, v1);
      ++v10;
      v11 -= 8;
      if (!v11)
      {
        goto LABEL_7;
      }
    }

    this = 1430;
    __break(0xC471u);
  }

  return this;
}

void sub_19D5942D0(_Unwind_Exception *exception_object)
{
  if (v2)
  {
    WTF::ThreadSafeRefCounted<WebKit::AuxiliaryProcessProxy,(WTF::DestructionThread)2>::deref(v1);
  }

  _Unwind_Resume(exception_object);
}

void *WTF::WeakHashSet<WebKit::RemoteLayerBackingStore,WTF::DefaultWeakPtrImpl,(WTF::EnableWeakPtrThreadingAssertions)1>::begin(void *a1, void **a2)
{
  v4 = WTF::HashTable<WTF::String,WTF::String,WTF::IdentityExtractor,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::begin(a2);
  *a1 = a2;
  a1[1] = v4;
  a1[2] = v5;
  v6 = *a2;
  if (*a2)
  {
    v7 = *(v6 - 1);
    v8 = &v6[v7];
  }

  else
  {
    v8 = 0;
    v7 = 0;
  }

  a1[3] = v8;
  a1[4] = &v6[v7];

  return WTF::WeakHashSet<WebKit::RemoteLayerBackingStore,WTF::DefaultWeakPtrImpl,(WTF::EnableWeakPtrThreadingAssertions)1>::WeakHashSetConstIterator::skipEmptyBuckets(a1);
}

uint64_t WTF::Detail::CallableWrapper<WebKit::WebProcessPool::initializeHardwareKeyboardAvailability(void)::$_0::operator() const(void)::{lambda(void)#1},void>::~CallableWrapper(WTF *this, void *a2)
{
  v3 = *(this + 1);
  *this = &unk_1F1105FA0;
  *(this + 1) = 0;
  if (v3 && atomic_fetch_add(v3, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v3);
    WTF::fastFree(v3, a2);
  }

  return WTF::fastFree(this, a2);
}

void WTF::Detail::CallableWrapper<WebKit::WebProcessPool::registerNotificationObservers(void)::$_2,void,BOOL>::call(uint64_t a1, char a2)
{
  v2 = *(a1 + 8);
  if (v2)
  {
    v3 = *(v2 + 8);
    if (v3)
    {
      CFRetain(*(v3 - 8));
      v6 = *(v3 + 68);
      if (v6)
      {
        v7 = *(v3 + 56);
        v8 = 8 * v6;
        do
        {
          v9 = *v7;
          v10 = *(*v7 + 80);
          if (v10 && (*(v10 + 104) & 1) != 0 || *(v9 + 88))
          {
            v16 = a2;
            v11 = IPC::Encoder::operator new(0x238, v5);
            *v11 = 2961;
            *(v11 + 68) = 0;
            *(v11 + 70) = 0;
            *(v11 + 69) = 0;
            *(v11 + 2) = 0;
            *(v11 + 3) = 0;
            *(v11 + 1) = 0;
            IPC::Encoder::encodeHeader(v11);
            v19 = v11;
            IPC::Encoder::operator<<<BOOL &>(v11, &v16);
            LOBYTE(v17) = 0;
            v18 = 0;
            WebKit::AuxiliaryProcessProxy::sendMessage(v9, &v19, 0, &v17, 1);
            if (v18 == 1)
            {
              v12 = v17;
              v17 = 0;
              if (v12)
              {
                (*(*v12 + 8))(v12);
              }
            }

            v13 = v19;
            v19 = 0;
            if (v13)
            {
              IPC::Encoder::~Encoder(v13, v5);
              bmalloc::api::tzoneFree(v14, v15);
            }
          }

          ++v7;
          v8 -= 8;
        }

        while (v8);
      }

      CFRelease(*(v3 - 8));
    }
  }
}

void sub_19D59452C(_Unwind_Exception *a1, void *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13, IPC::Encoder *a14)
{
  if (a13 == 1 && a11)
  {
    (*(*a11 + 8))(a11);
  }

  if (a14)
  {
    IPC::Encoder::~Encoder(a14, a2);
    bmalloc::api::tzoneFree(v16, v17);
  }

  CFRelease(*(v14 - 8));
  _Unwind_Resume(a1);
}

void WTF::Detail::CallableWrapper<WebKit::WebsiteDataStore::initializeAppBoundDomains(WebKit::WebsiteDataStore::ForceReinitialization)::$_0::operator()(void)::{lambda(void)#1},void>::call(uint64_t a1, WTF::StringImpl *a2)
{
  v35 = *MEMORY[0x1E69E9840];
  v4 = atomic_load(WebKit::hasInitializedAppBoundDomains);
  if (v4)
  {
    if ((*(a1 + 8) & 1) == 0)
    {
      return;
    }
  }

  else if ((*(a1 + 8) & 1) == 0)
  {
    goto LABEL_8;
  }

  {
    v5 = WebKit::appBoundDomains(void)::appBoundDomains;
    if (WebKit::appBoundDomains(void)::appBoundDomains)
    {
      WebKit::appBoundDomains(void)::appBoundDomains = 0;
      WTF::HashTable<WTF::String,WTF::String,WTF::IdentityExtractor,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::deallocateTable(v5, a2);
    }
  }

  else
  {
    WebKit::appBoundDomains(void)::appBoundDomains = 0;
  }

LABEL_8:
  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  v6 = *(a1 + 16);
  v7 = [v6 countByEnumeratingWithState:&v30 objects:v34 count:16];
  if (v7)
  {
    v8 = *v31;
LABEL_10:
    v9 = 0;
    while (1)
    {
      if (*v31 != v8)
      {
        objc_enumerationMutation(v6);
      }

      v10 = *(*(&v30 + 1) + 8 * v9);
      {
        v11 = WebKit::appBoundDomains(void)::appBoundDomains;
        if (WebKit::appBoundDomains(void)::appBoundDomains)
        {
          v11 = *(WebKit::appBoundDomains(void)::appBoundDomains - 12);
        }
      }

      else
      {
        v11 = 0;
        WebKit::appBoundDomains(void)::appBoundDomains = 0;
      }

      if (byte_1ED64278E)
      {
        v12 = qword_1ED6427E8;
        if (qword_1ED6427E8)
        {
          v12 = *(qword_1ED6427E8 - 12);
        }
      }

      else
      {
        v12 = 0;
        qword_1ED6427E8 = 0;
        byte_1ED64278E = 1;
      }

      if ((v12 + v11) > 9)
      {
        goto LABEL_55;
      }

      if (![v10 hasSuffix:@":"])
      {
        break;
      }

      MEMORY[0x19EB02040](v26, [v10 substringToIndex:{objc_msgSend(v10, "length") - 1}]);
      v15 = v26[0];
      if (!v26[0])
      {
        break;
      }

      v16 = *(v26[0] + 1);
      if (v16)
      {
        if ((byte_1ED64278E & 1) == 0)
        {
          qword_1ED6427E8 = 0;
          byte_1ED64278E = 1;
        }

        WTF::HashTable<WTF::String,WTF::String,WTF::IdentityExtractor,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::add<(WTF::ShouldValidateKey)1>(&qword_1ED6427E8, v26, v14, &v28);
        v15 = v26[0];
        v26[0] = 0;
        if (!v15)
        {
          goto LABEL_50;
        }
      }

      else
      {
        v26[0] = 0;
      }

      if (atomic_fetch_add_explicit(v15, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v15, v13);
        if (!v16)
        {
          break;
        }
      }

      else if (!v16)
      {
        break;
      }

LABEL_50:
      if (v7 == ++v9)
      {
        v23 = [v6 countByEnumeratingWithState:&v30 objects:v34 count:16];
        v7 = v23;
        if (v23)
        {
          goto LABEL_10;
        }

        goto LABEL_55;
      }
    }

    MEMORY[0x19EB02040](v26, v10);
    MEMORY[0x19EB01DD0](&v28, v26, 0);
    v18 = v26[0];
    v26[0] = 0;
    if (v18 && atomic_fetch_add_explicit(v18, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v18, v17);
    }

    WTF::URL::protocol(&v28);
    if (!v19)
    {
      v2 = v2 & 0xFFFFFF0000000000 | 0x100000005;
      WTF::URL::setProtocol();
    }

    if (v29)
    {
      WebCore::RegistrableDomain::RegistrableDomain(&v27, &v28);
      if (v27)
      {
        if (*(v27 + 1) && (MEMORY[0x19EB01EF0]() & 1) == 0)
        {
          {
            WebKit::appBoundDomains(void)::appBoundDomains = 0;
          }

          WTF::HashTable<WebCore::RegistrableDomain,WebCore::RegistrableDomain,WTF::IdentityExtractor,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::FastMalloc>::add<(WTF::ShouldValidateKey)1>(&WebKit::appBoundDomains(void)::appBoundDomains, &v27, v20, v26);
        }

        v21 = v27;
        v27 = 0;
        if (v21 && atomic_fetch_add_explicit(v21, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v21, v19);
        }
      }
    }

    v22 = v28;
    v28 = 0;
    if (v22 && atomic_fetch_add_explicit(v22, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v22, v19);
    }

    goto LABEL_50;
  }

LABEL_55:
  atomic_store(1u, WebKit::hasInitializedAppBoundDomains);
  v24 = atomic_load(WebKit::WebsiteDataStore::isAppBoundITPRelaxationEnabled);
  if (v24)
  {
    v25 = WTF::fastMalloc(0x10);
    *v25 = &unk_1F110C438;
    v28 = v25;
    WebKit::WebsiteDataStore::forwardAppBoundDomainsToITPIfInitialized(&v28);
    if (v28)
    {
      (*(*v28 + 8))(v28);
    }
  }
}

void sub_19D5949A0(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, WTF::StringImpl *a13, WTF::StringImpl *a14)
{
  if (a13 && atomic_fetch_add_explicit(a13, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(a13, a2);
  }

  if (a14)
  {
    if (atomic_fetch_add_explicit(a14, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(a14, a2);
    }
  }

  _Unwind_Resume(exception_object);
}

uint64_t WTF::Detail::CallableWrapper<WebKit::WebsiteDataStore::initializeAppBoundDomains(WebKit::WebsiteDataStore::ForceReinitialization)::$_0::operator()(void)::{lambda(void)#1},void>::~CallableWrapper(WTF *this, void *a2)
{
  *this = &unk_1F110C410;
  v3 = *(this + 2);
  *(this + 2) = 0;
  if (v3)
  {
  }

  return WTF::fastFree(this, a2);
}

WTF::StringImpl *WTF::Detail::CallableWrapper<WebKit::WebsiteDataStore::initializeManagedDomains(WebKit::WebsiteDataStore::ForceReinitialization)::$_0::operator()(void)::{lambda(void)#1},void>::call(WTF::StringImpl *result, WTF::StringImpl *a2)
{
  v3 = result;
  v28 = *MEMORY[0x1E69E9840];
  v4 = atomic_load(WebKit::hasInitializedManagedDomains);
  if (v4)
  {
    if ((*(result + 8) & 1) == 0)
    {
      return result;
    }

    goto LABEL_5;
  }

  if (*(result + 8))
  {
LABEL_5:
    {
      v5 = WebKit::managedDomains(void)::managedDomains;
      if (WebKit::managedDomains(void)::managedDomains)
      {
        WebKit::managedDomains(void)::managedDomains = 0;
        WTF::HashTable<WTF::String,WTF::String,WTF::IdentityExtractor,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::deallocateTable(v5, a2);
      }
    }

    else
    {
      WebKit::managedDomains(void)::managedDomains = 0;
    }
  }

  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  v6 = *(v3 + 2);
  v7 = [v6 countByEnumeratingWithState:&v23 objects:v27 count:16];
  if (v7)
  {
    v8 = *v24;
    do
    {
      v9 = 0;
      do
      {
        if (*v24 != v8)
        {
          objc_enumerationMutation(v6);
        }

        v10 = *(*(&v23 + 1) + 8 * v9);
        {
          if (WebKit::managedDomains(void)::managedDomains && *(WebKit::managedDomains(void)::managedDomains - 12) > 9u)
          {
            goto LABEL_38;
          }
        }

        else
        {
          WebKit::managedDomains(void)::managedDomains = 0;
        }

        MEMORY[0x19EB02040](v19, v10);
        MEMORY[0x19EB01DD0](&v21, v19, 0);
        v12 = v19[0];
        v19[0] = 0;
        if (v12 && atomic_fetch_add_explicit(v12, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v12, v11);
        }

        WTF::URL::protocol(&v21);
        if (!v13)
        {
          v2 = v2 & 0xFFFFFF0000000000 | 0x100000005;
          WTF::URL::setProtocol();
        }

        if (v22)
        {
          WebCore::RegistrableDomain::RegistrableDomain(&v20, &v21);
          if (v20)
          {
            if (*(v20 + 1) && (MEMORY[0x19EB01EF0]() & 1) == 0)
            {
              {
                WebKit::managedDomains(void)::managedDomains = 0;
              }

              WTF::HashTable<WebCore::RegistrableDomain,WebCore::RegistrableDomain,WTF::IdentityExtractor,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::FastMalloc>::add<(WTF::ShouldValidateKey)1>(&WebKit::managedDomains(void)::managedDomains, &v20, v14, v19);
            }

            v15 = v20;
            v20 = 0;
            if (v15 && atomic_fetch_add_explicit(v15, 0xFFFFFFFE, memory_order_relaxed) == 2)
            {
              WTF::StringImpl::destroy(v15, v13);
            }
          }
        }

        v16 = v21;
        v21 = 0;
        if (v16 && atomic_fetch_add_explicit(v16, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v16, v13);
        }

        ++v9;
      }

      while (v7 != v9);
      v17 = [v6 countByEnumeratingWithState:&v23 objects:v27 count:16];
      v7 = v17;
    }

    while (v17);
  }

LABEL_38:
  atomic_store(1u, WebKit::hasInitializedManagedDomains);
  v18 = WTF::fastMalloc(0x10);
  *v18 = &unk_1F110C578;
  v21 = v18;
  WebKit::WebsiteDataStore::forwardManagedDomainsToITPIfInitialized(&v21);
  result = v21;
  if (v21)
  {
    return (*(*v21 + 8))(v21);
  }

  return result;
}

void sub_19D594D78(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, WTF::StringImpl *a10, uint64_t a11, uint64_t a12, WTF::StringImpl *a13, WTF::StringImpl *a14)
{
  if (a13 && atomic_fetch_add_explicit(a13, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(a13, a2);
  }

  if (a14)
  {
    if (atomic_fetch_add_explicit(a14, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(a14, a2);
    }
  }

  _Unwind_Resume(exception_object);
}

uint64_t WebKit::WebsiteDataStore::forwardManagedDomainsToITPIfInitialized(uint64_t *a1)
{
  v2 = WTF::fastMalloc(0x10);
  v3 = v2;
  *v2 = 1;
  v4 = *a1;
  *a1 = 0;
  *(v2 + 8) = v4;
  LOBYTE(v4) = atomic_load(WebKit::hasInitializedManagedDomains);
  if ((v4 & 1) == 0)
  {
    goto LABEL_17;
  }

  {
    WebKit::managedDomains(void)::managedDomains = 0;
    goto LABEL_17;
  }

  if (!WebKit::managedDomains(void)::managedDomains || !*(WebKit::managedDomains(void)::managedDomains - 12))
  {
LABEL_17:

    return WTF::ThreadSafeRefCounted<WTF::CallbackAggregatorOnThread<(WTF::DestructionThread)0>,(WTF::DestructionThread)0>::deref(v3);
  }

  atomic_fetch_add(v2, 1u);
  v14 = v2;
  {
    v5 = WebKit::protectedDefaultDataStore(void)::globalDefaultDataStore;
  }

  else
  {
    v5 = 0;
    WebKit::protectedDefaultDataStore(void)::globalDefaultDataStore = 0;
  }

  v6 = WebKit::WebsiteDataStore::forwardManagedDomainsToITPIfInitialized(WTF::CompletionHandler<void ()(void)> &&)::$_0::operator()(&v14, v5, &WebKit::managedDomains(void)::managedDomains);
  WebKit::allDataStores(v6);
  v7 = WTF::HashTable<WTF::String,WTF::KeyValuePair<WTF::String,WTF::WallTime>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,WTF::WallTime>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,WTF::WallTime,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::WallTime>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::begin(&WebKit::allDataStores(void)::map);
  v8 = v7;
  v10 = v9;
  if (WebKit::allDataStores(void)::map)
  {
    v11 = WebKit::allDataStores(void)::map + 16 * *(WebKit::allDataStores(void)::map - 4);
  }

  else
  {
    v11 = 0;
  }

  if (v11 == v7)
  {
LABEL_16:
    WTF::ThreadSafeRefCounted<WTF::CallbackAggregatorOnThread<(WTF::DestructionThread)0>,(WTF::DestructionThread)0>::deref(v3);
    goto LABEL_17;
  }

  while (1)
  {
    v12 = *(v8[1] + 8);
    if (!v12)
    {
      break;
    }

    CFRetain(*(v12 + 8));
    WebKit::WebsiteDataStore::forwardManagedDomainsToITPIfInitialized(WTF::CompletionHandler<void ()(void)> &&)::$_0::operator()(&v14, v12, &WebKit::managedDomains(void)::managedDomains);
    CFRelease(*(v12 + 8));
    do
    {
      v8 += 2;
    }

    while (v8 != v10 && (*v8 + 1) <= 1);
    if (v8 == v11)
    {
      goto LABEL_16;
    }
  }

  result = 103;
  __break(0xC471u);
  return result;
}

atomic_uint *WTF::ThreadSafeRefCounted<WTF::CallbackAggregatorOnThread<(WTF::DestructionThread)0>,(WTF::DestructionThread)0>::deref(atomic_uint *result)
{
  add = atomic_fetch_add(result, 0xFFFFFFFF);
  if (add == 1)
  {
    v5 = v1;
    atomic_store(add, result);
    v3 = WTF::CallbackAggregatorOnThread<(WTF::DestructionThread)0>::~CallbackAggregatorOnThread(result);

    return WTF::fastFree(v3, v4);
  }

  return result;
}

uint64_t WTF::CompletionHandler<void ()(void)>::operator()(uint64_t *a1)
{
  v1 = *a1;
  *a1 = 0;
  (*(*v1 + 16))(v1);
  v2 = *(*v1 + 8);

  return v2(v1);
}

uint64_t WTF::CallbackAggregatorOnThread<(WTF::DestructionThread)0>::~CallbackAggregatorOnThread(uint64_t a1)
{
  v2 = (a1 + 8);
  if (*(a1 + 8))
  {
    WTF::CompletionHandler<void ()(void)>::operator()((a1 + 8));
    v3 = *v2;
    *v2 = 0;
    if (v3)
    {
      (*(*v3 + 8))(v3);
    }
  }

  return a1;
}

void sub_19D595108(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  *v1 = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t WTF::Detail::CallableWrapper<WebKit::WebsiteDataStore::initializeManagedDomains(WebKit::WebsiteDataStore::ForceReinitialization)::$_0::operator()(void)::{lambda(void)#1},void>::~CallableWrapper(WTF *this, void *a2)
{
  *this = &unk_1F110C550;
  v3 = *(this + 2);
  *(this + 2) = 0;
  if (v3)
  {
  }

  return WTF::fastFree(this, a2);
}

void WTF::Detail::CallableWrapper<WebKit::determineTrackingPreventionState(void)::$_0::operator() const(void)::{lambda(void)#1},void>::call()
{
  {
    v0 = WebKit::itpQueue(void)::itpQueue;
    WebKit::itpQueue(void)::itpQueue = 0;
    if (v0)
    {
      (*(*v0 + 40))();
    }
  }

  else
  {
    WebKit::itpQueue(void)::itpQueue = 0;
  }
}

uint64_t WTF::Detail::CallableWrapper<WebKit::WebsiteDataStore::resolveDirectoriesAsynchronously(void)::$_0::operator()(void)::{lambda(void)#1},void>::~CallableWrapper(WTF *this, void *a2)
{
  v3 = *(this + 1);
  *this = &unk_1F1121418;
  *(this + 1) = 0;
  if (v3)
  {
    CFRelease(*(v3 + 8));
  }

  return WTF::fastFree(this, a2);
}

IPC::Encoder *WebKit::AuxiliaryProcessProxy::send<Messages::WebProcess::SetMediaAccessibilityPreferences>(uint64_t a1, uint64_t *a2)
{
  v4 = IPC::Encoder::operator new(0x238, a2);
  *v4 = 3003;
  *(v4 + 68) = 0;
  *(v4 + 70) = 0;
  *(v4 + 69) = 0;
  *(v4 + 2) = 0;
  *(v4 + 3) = 0;
  *(v4 + 1) = 0;
  IPC::Encoder::encodeHeader(v4);
  v12 = v4;
  v13 = *a2;
  IPC::Encoder::operator<<<unsigned char>(v4, &v13);
  IPC::VectorArgumentCoder<false,WTF::String,0ul,WTF::CrashOnOverflow,16ul>::encode<IPC::Encoder,WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>(v4, a2[1]);
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

void sub_19D59536C(_Unwind_Exception *exception_object, void *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, IPC::Encoder *a13)
{
  if (a12 == 1 && a10)
  {
    (*(*a10 + 8))(a10);
  }

  if (a13)
  {
    IPC::Encoder::~Encoder(a13, a2);
    bmalloc::api::tzoneFree(v14, v15);
  }

  _Unwind_Resume(exception_object);
}

IPC::Encoder *WTF::Detail::CallableWrapper<WebKit::WebProcessPool::setMediaAccessibilityPreferences(WebKit::WebProcessProxy &)::$_0::operator() const(void)::{lambda(void)#1},void>::call(IPC::Encoder *result)
{
  v1 = *(result + 1);
  if (v1)
  {
    v2 = result;
    result = *(v1 + 8);
    if (result)
    {
      LOBYTE(v3[0]) = *(v2 + 16);
      v3[1] = v2 + 24;
      return WebKit::AuxiliaryProcessProxy::send<Messages::WebProcess::SetMediaAccessibilityPreferences>(result, v3);
    }
  }

  return result;
}

uint64_t WTF::Detail::CallableWrapper<WebKit::WebProcessPool::setMediaAccessibilityPreferences(WebKit::WebProcessProxy &)::$_0::operator() const(void)::{lambda(void)#1},void>::~CallableWrapper(WTF *a1, void *a2)
{
  *a1 = &unk_1F1105F58;
  WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(a1 + 24, a2);
  v4 = *(a1 + 1);
  *(a1 + 1) = 0;
  if (v4 && atomic_fetch_add(v4, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v4);
    WTF::fastFree(v4, v3);
  }

  return WTF::fastFree(a1, v3);
}

uint64_t WTF::Detail::CallableWrapper<WebKit::WebsiteDataStore::fetchAllDataStoreIdentifiers(WTF::CompletionHandler<void ()(WTF::Vector<WTF::UUID,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&)> &&)::$_0::operator()(void)::{lambda(void)#1},void>::call(uint64_t a1)
{
  v1 = *(a1 + 8);
  *(a1 + 8) = 0;
  (*(*v1 + 16))(v1, a1 + 16);
  v2 = *(*v1 + 8);

  return v2(v1);
}

uint64_t WTF::Detail::CallableWrapper<WebKit::WebsiteDataStore::fetchAllDataStoreIdentifiers(WTF::CompletionHandler<void ()(WTF::Vector<WTF::UUID,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&)> &&)::$_0::operator()(void)::{lambda(void)#1},void>::~CallableWrapper(WTF *this, void *a2)
{
  *this = &unk_1F110C320;
  v3 = *(this + 2);
  if (v3)
  {
    *(this + 2) = 0;
    *(this + 6) = 0;
    WTF::fastFree(v3, a2);
  }

  v4 = *(this + 1);
  *(this + 1) = 0;
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }

  return WTF::fastFree(this, a2);
}

void WTF::Detail::CallableWrapper<WebKit::ProcessLauncher::launchProcess(void)::$_0::operator() const(WTF::ThreadSafeWeakPtr<WebKit::ProcessLauncher,WTF::NoTaggingTraits<WebKit::ProcessLauncher>>,WebKit::ExtensionProcess &&,WTF::ASCIILiteral,NSError *)::{lambda(void)#2},void>::call(uint64_t a1)
{
  v102[2] = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 16);
  if (!v2)
  {
    v3 = 0;
LABEL_14:
    WebKit::ExtensionProcess::invalidate((a1 + 40));
    goto LABEL_150;
  }

  WTF::ThreadSafeWeakPtrControlBlock::makeStrongReferenceIfPossible<WebKit::LibWebRTCCodecsProxy>(&v84, v2, *(a1 + 8));
  v3 = v84;
  if (!v84 || !*(v84 + 16))
  {
    goto LABEL_14;
  }

  WebKit::ExtensionProcess::makeLibXPCConnection((a1 + 40), &v83);
  v4 = v83;
  if (v83)
  {
    v83 = 0;
    v5 = *(v3 + 24);
    *(v3 + 24) = v4;
    if (v5)
    {
    }

    if (*(v3 + 56) == 1)
    {
      v6 = (v3 + 40);
      v7 = *(a1 + 48);
      if (*(v3 + 48) == 255)
      {
        if (v7 == 255)
        {
          goto LABEL_24;
        }
      }

      else if (v7 == 255)
      {
        v8 = *v6;
        *v6 = 0;
        if (v8)
        {
        }

        *(v3 + 48) = -1;
        goto LABEL_24;
      }

      handler = (v3 + 40);
      _ZN5mpark6detail10visitation3alt12visit_alt_atIZNS0_10assignmentINS0_6traitsIJN3WTF9RetainPtrI19BEWebContentProcessEENS7_I19BENetworkingProcessEENS7_I18BERenderingProcessEEEEEE14generic_assignINS0_15move_assignmentISE_LNS0_5TraitE1EEEEEvOT_EUlRSK_OT0_E_JRSF_SJ_EEEDcmSL_DpOT0_(v7, &handler, v6, (a1 + 40));
      goto LABEL_24;
    }

    *(v3 + 40) = 0;
    *(v3 + 48) = -1;
    if (*(a1 + 48) != 255)
    {
      v11 = *(a1 + 40);
      *(a1 + 40) = 0;
      *(v3 + 40) = v11;
      *(v3 + 48) = *(a1 + 48);
    }

    *(v3 + 56) = 1;
LABEL_24:
    v12 = *(a1 + 56);
    *(a1 + 56) = 0;
    v13 = *(v3 + 32);
    *(v3 + 32) = v12;
    if (v13)
    {
      WTF::ThreadSafeRefCounted<WebKit::LaunchGrant,(WTF::DestructionThread)0>::deref(v13);
    }

    v14 = *(a1 + 32);
    string = *(a1 + 24);
    v102[0] = 0;
    v102[1] = 0;
    MEMORY[0x19EB16A80](v102);
    xpc_connection_set_oneshot_instance();
    name = 0;
    v15 = MEMORY[0x1E69E9A60];
    if (mach_port_allocate(*MEMORY[0x1E69E9A60], 1u, &name))
    {
      goto LABEL_159;
    }

    mach_port_insert_right(*v15, name, name, 0x14u);
    previous = 0;
    mach_port_request_notification(*v15, name, 70, 0, name, 0x15u, &previous);
    v99 = 0;
    MEMORY[0x19EB02040](&handler, [objc_msgSend(MEMORY[0x1E696AAE8] "mainBundle")]);
    v17 = handler;
    handler = 0;
    v18 = v99;
    v99 = v17;
    if (v18)
    {
      if (atomic_fetch_add_explicit(v18, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v18, v16);
      }

      v19 = handler;
      handler = 0;
      if (v19 && atomic_fetch_add_explicit(v19, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v19, v16);
      }
    }

    v81 = v14;
    v20 = xpc_dictionary_create(0, 0, 0);
    v22 = (v3 + 88);
    v21 = *(v3 + 88);
    handler = "OverrideLanguages";
    v86 = 18;
    if (!v21)
    {
LABEL_59:
      v36 = xpc_dictionary_create(0, 0, 0);
      v37 = getenv("HOME");
      if (v37)
      {
        xpc_dictionary_set_string(v36, "HOME", v37);
      }

      v38 = getenv("CFFIXED_USER_HOME");
      if (v38)
      {
        xpc_dictionary_set_string(v36, "CFFIXED_USER_HOME", v38);
      }

      v39 = getenv("TMPDIR");
      if (v39)
      {
        xpc_dictionary_set_string(v36, "TMPDIR", v39);
      }

      xpc_dictionary_set_value(v20, "ContainerEnvironmentVariables", v36);
      v40 = *(v3 + 16);
      if (v40)
      {
        (*(*v40 + 104))(*(v3 + 16));
        if ((*(*v40 + 40))(v40))
        {
          xpc_dictionary_set_BOOL(v20, "configure-jsc-for-testing", 1);
        }

        if (((*(*v40 + 48))(v40) & 1) == 0)
        {
          xpc_dictionary_set_BOOL(v20, "disable-jit", 1);
        }

        if ((*(*v40 + 56))(v40))
        {
          xpc_dictionary_set_BOOL(v20, "enable-shared-array-buffer", 1);
        }

        if ((*(*v40 + 72))(v40))
        {
          xpc_dictionary_set_BOOL(v20, "disable-jit-cage", 1);
        }
      }

      xpc_dictionary_set_string(v20, "message-name", "bootstrap");
      xpc_dictionary_set_mach_send();
      if (v99 && *(v99 + 1))
      {
        WTF::String::utf8();
        v41 = 0;
        if (v92)
        {
          v42 = v92 + 16;
        }

        else
        {
          v42 = 0;
        }
      }

      else
      {
        v42 = *_NSGetProgname();
        v41 = 1;
      }

      xpc_dictionary_set_string(v20, "client-identifier", v42);
      if ((v41 & 1) == 0)
      {
        v43 = v92;
        v92 = 0;
        if (v43)
        {
          if (*v43 == 1)
          {
            v43 = WTF::fastFree(v43, v44);
          }

          else
          {
            --*v43;
          }
        }
      }

      WTF::applicationBundleIdentifier(&bytes, v43);
      WTF::String::utf8();
      if (handler)
      {
        v45 = handler + 16;
      }

      else
      {
        v45 = 0;
      }

      xpc_dictionary_set_string(v20, "client-bundle-identifier", v45);
      v47 = handler;
      handler = 0;
      if (v47)
      {
        if (*v47 == 1)
        {
          WTF::fastFree(v47, v46);
        }

        else
        {
          --*v47;
        }
      }

      v48 = bytes;
      bytes = 0;
      if (v48 && atomic_fetch_add_explicit(v48, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v48, v46);
      }

      WTF::String::number(*(v3 + 72));
      WTF::String::utf8();
      if (handler)
      {
        v49 = handler + 16;
      }

      else
      {
        v49 = 0;
      }

      xpc_dictionary_set_string(v20, "process-identifier", v49);
      v51 = handler;
      handler = 0;
      if (v51)
      {
        if (*v51 == 1)
        {
          WTF::fastFree(v51, v50);
        }

        else
        {
          --*v51;
        }
      }

      v52 = bytes;
      bytes = 0;
      if (v52 && atomic_fetch_add_explicit(v52, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v52, v50);
      }

      v53 = [objc_msgSend(MEMORY[0x1E696AE30] processInfo];
      v54 = v53;
      if (v53)
      {
        v55 = v53;
      }

      xpc_dictionary_set_string(v20, "ui-process-name", [v54 UTF8String]);
      xpc_dictionary_set_string(v20, "service-name", string);
      if (!*(v3 + 80))
      {
        xpc_dictionary_set_BOOL(v20, "disable-logging", 1);
      }

      isSystemWebKit = WebKit::AuxiliaryProcess::isSystemWebKit(v56);
      if ((isSystemWebKit & 1) == 0)
      {
        xpc_dictionary_set_fd(v20, "stdout", 1);
        xpc_dictionary_set_fd(v20, "stderr", 2);
      }

      v58 = WTF::sdkAlignedBehaviors(isSystemWebKit);
      v59 = *v58;
      v96 = *(v58 + 8);
      bytes = v59;
      xpc_dictionary_set_data(v20, "client-sdk-aligned-behaviors", &bytes, 0xCuLL);
      v60 = xpc_dictionary_create(0, 0, 0);
      v61 = WTF::HashTable<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::begin((v3 + 88));
      v62 = v61;
      v64 = v63;
      if (*v22)
      {
        v65 = *v22 + 16 * *(*v22 - 4);
      }

      else
      {
        v65 = 0;
      }

      if (v65 != v61)
      {
        do
        {
          WTF::String::utf8();
          v66 = handler;
          WTF::String::utf8();
          if (v66)
          {
            v67 = v66 + 16;
          }

          else
          {
            v67 = 0;
          }

          if (v91)
          {
            v68 = v91 + 16;
          }

          else
          {
            v68 = 0;
          }

          xpc_dictionary_set_string(v60, v67, v68);
          v70 = v91;
          v91 = 0;
          if (v70)
          {
            if (*v70 == 1)
            {
              WTF::fastFree(v70, v69);
            }

            else
            {
              --*v70;
            }
          }

          v71 = handler;
          handler = 0;
          if (v71)
          {
            if (*v71 == 1)
            {
              WTF::fastFree(v71, v69);
            }

            else
            {
              --*v71;
            }
          }

          do
          {
            v62 += 2;
          }

          while (v62 != v64 && (*v62 + 1) <= 1);
        }

        while (v62 != v65);
      }

      xpc_dictionary_set_value(v20, "extra-initialization-data", v60);
      handler = v3;
      v72 = (v3 + 8);
      v73 = WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::NetworkDataTask,(WTF::DestructionThread)1>::controlBlock((v3 + 8));
      v86 = WTF::ThreadSafeWeakPtrControlBlock::weakRef(v73);
      LODWORD(v87) = name;
      WTF::CString::CString();
      v74 = WTF::fastMalloc(0x28);
      *v74 = &unk_1F1108358;
      *(v74 + 1) = handler;
      *(v74 + 2) = v86;
      *(v74 + 6) = v87;
      *(v74 + 4) = v88;
      handler = v74;
      if (v40)
      {
        (*(*v40 + 80))(&v86, v40);
        v75 = WTF::fastMalloc(0x18);
        *v75 = &unk_1F1108380;
        v75[1] = handler;
        v75[2] = v86;
        v76 = malloc_type_malloc(0x28uLL, 0x10E004053C0834CuLL);
        *v76 = MEMORY[0x1E69E9818];
        v76[1] = 50331650;
        v76[2] = WTF::BlockPtr<void ()(NSObject  {objcproto13OS_xpc_object}*)>::fromCallable<WTF::Function<void ()(NSObject  {objcproto13OS_xpc_object}*)>>(WTF::Function<void ()(NSObject  {objcproto13OS_xpc_object}*)>)::{lambda(void *,NSObject  {objcproto13OS_xpc_object}*)#1}::__invoke;
        v76[3] = &WTF::BlockPtr<void ()(NSObject  {objcproto13OS_xpc_object}*)>::fromCallable<WTF::Function<void ()(NSObject  {objcproto13OS_xpc_object}*)>>(WTF::Function<void ()(NSObject  {objcproto13OS_xpc_object}*)>)::descriptor;
        v76[4] = v75;
        xpc_connection_set_event_handler(*(v3 + 24), v76);
        xpc_connection_resume(*(v3 + 24));
        if (*(v3 + 97))
        {
          (v76[2])(v76, 0);
        }

        else
        {
          while (1)
          {
            v77 = *v72;
            if ((*v72 & 1) == 0)
            {
              break;
            }

            v78 = *v72;
            atomic_compare_exchange_strong_explicit(v72, &v78, v77 + 2, memory_order_relaxed, memory_order_relaxed);
            if (v78 == v77)
            {
              goto LABEL_135;
            }
          }

          WTF::ThreadSafeWeakPtrControlBlock::strongRef(*v72);
LABEL_135:
          v79 = *(v3 + 24);
          handler = MEMORY[0x1E69E9820];
          v86 = 3221225472;
          v87 = ___ZN6WebKit15ProcessLauncher22finishLaunchingProcessEN3WTF12ASCIILiteralE_block_invoke;
          v88 = &__block_descriptor_44_e33_v16__0__NSObject_OS_xpc_object__8l;
          v89 = v3;
          v90 = name;
          xpc_connection_send_message_with_reply(v79, v20, MEMORY[0x1E69E96A0], &handler);
        }

        _Block_release(v76);
        if (v60)
        {
        }

        if (v54)
        {
        }

        (*(*v40 + 112))(v40);
        if (v36)
        {
        }

        if (v20)
        {
        }

        v80 = v99;
        v99 = 0;
        if (v80 && atomic_fetch_add_explicit(v80, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v80, v9);
        }

        goto LABEL_147;
      }

LABEL_159:
      __break(0xC471u);
      JUMPOUT(0x19D59620CLL);
    }

    v23 = WTF::HashTable<WTF::String,WTF::KeyValuePair<WTF::String,WTF::String>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,WTF::String>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::lookup<WTF::HashMapTranslatorAdapter<WTF::HashMap<WTF::String,WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTranslatorASCIILiteral>,(WTF::ShouldValidateKey)1,WTF::ASCIILiteral>((v3 + 88), &handler);
    v24 = *v22;
    if (!v23 && v24)
    {
      v23 = v24 + 16 * *(v24 - 4);
    }

    else if (!v24)
    {
      goto LABEL_40;
    }

    v24 += 16 * *(v24 - 4);
LABEL_40:
    if (v24 != v23)
    {
      v25 = xpc_array_create(0, 0);
      v26 = *(v23 + 8);
      if (v26)
      {
        v27 = *(v26 + 8);
        v28 = *(v26 + 4) | (((*(v26 + 16) >> 2) & 1) << 32);
      }

      else
      {
        v27 = 0;
        v28 = 0x100000000;
      }

      handler = v27;
      v86 = v28;
      LOWORD(v87) = 44;
      BYTE2(v87) = 0;
      bytes = &handler;
      v96 = 0;
      v98 = v28 == 0;
      WTF::StringView::SplitResult::Iterator::findNextSubstring(&bytes);
      v29 = v86;
      while (v96 != v29 || !v98)
      {
        v92 = WTF::StringView::substring(bytes, v96, v97);
        v93 = v31;
        v94 = v32;
        WTF::StringView::utf8();
        if (v91)
        {
          v33 = v91 + 16;
        }

        else
        {
          v33 = 0;
        }

        xpc_array_set_string(v25, 0xFFFFFFFFFFFFFFFFLL, v33);
        v35 = v91;
        v91 = 0;
        if (v35)
        {
          if (*v35 == 1)
          {
            WTF::fastFree(v35, v34);
          }

          else
          {
            --*v35;
          }
        }

        WTF::StringView::SplitResult::Iterator::operator++();
      }

      xpc_dictionary_set_value(v20, "OverrideLanguages", v25);
      if (v25)
      {
      }
    }

    goto LABEL_59;
  }

  v10 = qword_1ED6416A0;
  if (os_log_type_enabled(qword_1ED6416A0, OS_LOG_TYPE_ERROR))
  {
    LOWORD(handler) = 0;
    _os_log_error_impl(&dword_19D52D000, v10, OS_LOG_TYPE_ERROR, "Failed to make libxpc connection for process", &handler, 2u);
  }

  WebKit::ExtensionProcess::invalidate((a1 + 40));
  handler = 0;
  v86 = 0;
  WebKit::ProcessLauncher::didFinishLaunchingProcess(v3, 0, &handler);
  if (v86)
  {
  }

LABEL_147:
  if (v83)
  {
  }

  v3 = v84;
LABEL_150:
  v84 = 0;
  if (v3)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::ProcessLauncher,(WTF::DestructionThread)0>::deref((v3 + 8), v9);
  }
}

void sub_19D596230(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, WTF *a13, WTF::ThreadSafeWeakPtrControlBlock *a14, uint64_t a15, WTF *a16, uint64_t a17, uint64_t a18, WTF *a19, WTF *a20, uint64_t a21, WTF::StringImpl *a22, uint64_t a23, uint64_t a24, WTF::StringImpl *a25)
{
  if (v28)
  {
  }

  if (v27)
  {
    (*(*v27 + 112))(v27);
  }

  if (v26)
  {
  }

  if (v25)
  {
  }

  if (a25 && atomic_fetch_add_explicit(a25, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(a25, a2);
  }

  if (a11)
  {
  }

  if (a12)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::ProcessLauncher,(WTF::DestructionThread)0>::deref((a12 + 8), a2);
  }

  _Unwind_Resume(exception_object);
}

void *WTF::ThreadSafeWeakPtrControlBlock::makeStrongReferenceIfPossible<WebKit::LibWebRTCCodecsProxy>(void *result, atomic_uchar *this, uint64_t a3)
{
  v5 = result;
  v6 = 0;
  atomic_compare_exchange_strong_explicit(this, &v6, 1u, memory_order_acquire, memory_order_acquire);
  if (v6)
  {
    result = MEMORY[0x19EB01E30](this);
  }

  if (*(this + 3))
  {
    ++*(this + 1);
  }

  else
  {
    a3 = 0;
  }

  *v5 = a3;
  v7 = 1;
  atomic_compare_exchange_strong_explicit(this, &v7, 0, memory_order_release, memory_order_relaxed);
  if (v7 != 1)
  {

    return WTF::Lock::unlockSlow(this);
  }

  return result;
}

void **WebKit::ExtensionProcess::makeLibXPCConnection@<X0>(id *this@<X0>, void **a2@<X8>)
{
  v6 = 0;
  *a2 = 0;
  v3 = *(this + 8);
  if (v3 == 255)
  {
    v4 = -1;
  }

  else
  {
    v4 = *(this + 8);
  }

  if (v4 == 2)
  {
    if (v3 == 2)
    {
      return WTF::OSObjectPtr<NSObject  {objcproto13OS_xpc_object}*>::operator=(a2, [*this makeLibXPCConnectionError:&v6]);
    }

LABEL_9:
    mpark::throw_bad_variant_access(this);
  }

  if (v4 != 1)
  {
    if (!*(this + 8))
    {
      return WTF::OSObjectPtr<NSObject  {objcproto13OS_xpc_object}*>::operator=(a2, [*this makeLibXPCConnectionError:&v6]);
    }

    goto LABEL_9;
  }

  if (v3 != 1)
  {
    goto LABEL_9;
  }

  return WTF::OSObjectPtr<NSObject  {objcproto13OS_xpc_object}*>::operator=(a2, [*this makeLibXPCConnectionError:&v6]);
}

void sub_19D5966B8(_Unwind_Exception *exception_object)
{
  if (*v1)
  {
  }

  _Unwind_Resume(exception_object);
}

void **WTF::OSObjectPtr<NSObject  {objcproto13OS_xpc_object}*>::operator=(void **a1, void *a2)
{
  if (a2)
  {
    v4 = a2;
  }

  v5 = *a1;
  *a1 = a2;
  if (v5)
  {
  }

  return a1;
}

uint64_t non-virtual thunk toWebKit::WebProcessProxy::shouldConfigureJSCForTesting(WebKit::WebProcessProxy *this)
{
  v1 = *(*(this + 66) + 8);
  if (v1)
  {
    v2 = v1 - 16;
  }

  else
  {
    v2 = 0;
  }

  return *(*(v2 + 48) + 94);
}

uint64_t non-virtual thunk toWebKit::WebProcessProxy::isJITEnabled(WebKit::WebProcessProxy *this)
{
  v1 = *(*(this + 66) + 8);
  if (v1)
  {
    v2 = v1 - 16;
  }

  else
  {
    v2 = 0;
  }

  return *(*(v2 + 48) + 95);
}

uint64_t WTF::ThreadSafeWeakPtrControlBlock::strongRef(WTF::ThreadSafeWeakPtrControlBlock *this)
{
  v4 = this;
  WTF::Locker<WTF::Lock,void>::Locker(v3, this);
  ++*(this + 1);
  return WTF::Locker<WTF::Lock,void>::~Locker(v3);
}

uint64_t WTF::Locker<WTF::Lock,void>::Locker(uint64_t a1, uint64_t a2)
{
  std::__to_address[abi:sn200100]<char const>();
  *a1 = a2;
  *(a1 + 8) = 1;
  WTF::Lock::lock(*a1);
  return a1;
}

{
  WTF::Locker<WTF::Lock,void>::Locker(a1, a2);
  return a1;
}

uint64_t WTF::Locker<WTF::Lock,void>::~Locker(uint64_t a1)
{
  if (*(a1 + 8))
  {
    WTF::Lock::unlock(*a1);
  }

  return a1;
}

{
  WTF::Locker<WTF::Lock,void>::~Locker(a1);
  return a1;
}

BOOL WTF::LockAlgorithm<unsigned char,(unsigned char)1,(unsigned char)2,WTF::EmptyLockHooks<unsigned char>>::lockFastAssumingZero(atomic_uchar *a1)
{
  v6 = a1;
  v5 = 0;
  v4 = WTF::EmptyLockHooks<unsigned char>::lockHook();
  v3 = 2;
  v2 = 0;
  return std::__atomic_base<unsigned char,false>::compare_exchange_weak[abi:sn200100](v6, &v2, v4, 2u);
}

BOOL std::__cxx_atomic_compare_exchange_weak[abi:sn200100]<unsigned char>(atomic_uchar *a1, _BYTE *a2, unsigned __int8 a3, int a4, unsigned int a5)
{
  v8 = std::__to_failure_order[abi:sn200100](a5);
  if ((a4 - 1) < 2)
  {
    if ((v8 - 1) < 2)
    {
      v22 = *a2;
      v23 = v22;
      atomic_compare_exchange_strong_explicit(a1, &v23, a3, memory_order_acquire, memory_order_acquire);
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
      v26 = v25;
      atomic_compare_exchange_strong(a1, &v26, a3);
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
      v20 = v19;
      atomic_compare_exchange_strong_explicit(a1, &v20, a3, memory_order_acquire, memory_order_acquire);
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
          v32 = v31;
          atomic_compare_exchange_strong(a1, &v32, a3);
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
          v35 = v34;
          atomic_compare_exchange_strong(a1, &v35, a3);
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
          v29 = v28;
          atomic_compare_exchange_strong_explicit(a1, &v29, a3, memory_order_release, memory_order_relaxed);
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
          v41 = v40;
          atomic_compare_exchange_strong(a1, &v41, a3);
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
          v44 = v43;
          atomic_compare_exchange_strong(a1, &v44, a3);
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
          v38 = v37;
          atomic_compare_exchange_strong(a1, &v38, a3);
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
          v50 = v49;
          atomic_compare_exchange_strong(a1, &v50, a3);
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
          v53 = v52;
          atomic_compare_exchange_strong(a1, &v53, a3);
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
          v47 = v46;
          atomic_compare_exchange_strong(a1, &v47, a3);
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
          v14 = v13;
          atomic_compare_exchange_strong_explicit(a1, &v14, a3, memory_order_acquire, memory_order_acquire);
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
          v17 = v16;
          atomic_compare_exchange_strong(a1, &v17, a3);
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
          v11 = v10;
          atomic_compare_exchange_strong_explicit(a1, &v11, a3, memory_order_relaxed, memory_order_relaxed);
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

uint64_t WTF::Lock::lock(atomic_uchar *this)
{
  result = WTF::LockAlgorithm<unsigned char,(unsigned char)1,(unsigned char)2,WTF::EmptyLockHooks<unsigned char>>::lockFastAssumingZero(this);
  if ((result & 1) == 0)
  {
    return MEMORY[0x19EB01E30](this);
  }

  return result;
}

BOOL WTF::LockAlgorithm<unsigned char,(unsigned char)1,(unsigned char)2,WTF::EmptyLockHooks<unsigned char>>::unlockFastAssumingZero(atomic_uchar *a1)
{
  v6 = a1;
  v5 = 1;
  v4 = WTF::EmptyLockHooks<unsigned char>::unlockHook();
  v3 = 3;
  v2 = 1;
  return std::__atomic_base<unsigned char,false>::compare_exchange_weak[abi:sn200100](v6, &v2, v4, 3u);
}

uint64_t WTF::Lock::unlock(atomic_uchar *this)
{
  result = WTF::LockAlgorithm<unsigned char,(unsigned char)1,(unsigned char)2,WTF::EmptyLockHooks<unsigned char>>::unlockFastAssumingZero(this);
  if ((result & 1) == 0)
  {
    return WTF::Lock::unlockSlow(this);
  }

  return result;
}

uint64_t non-virtual thunk toWebKit::AuxiliaryProcessProxy::decrementCheckedPtrCount(uint64_t this)
{
  if (atomic_load((this + 24)))
  {
    atomic_fetch_add((this + 24), 0xFFFFFFFF);
  }

  else
  {
    this = 290;
    __break(0xC471u);
  }

  return this;
}

atomic_uchar **WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::ProcessLauncher,(WTF::DestructionThread)0>::deref(atomic_uchar **result, void *a2)
{
  do
  {
    v2 = *result;
    if ((*result & 1) == 0)
    {
      return WTF::ThreadSafeWeakPtrControlBlock::strongDeref<WebKit::ProcessLauncher,(WTF::DestructionThread)0>(*result, a2);
    }

    v3 = *result;
    atomic_compare_exchange_strong_explicit(result, &v3, (v2 - 2), memory_order_relaxed, memory_order_relaxed);
  }

  while (v3 != v2);
  if (v2 == 3)
  {
    return (*(*(result - 1) + 1))();
  }

  return result;
}

uint64_t WTF::ThreadSafeWeakPtrControlBlock::strongDeref<WebKit::ProcessLauncher,(WTF::DestructionThread)0>(atomic_uchar *this, void *a2)
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

uint64_t WTF::Detail::CallableWrapper<WebKit::ProcessLauncher::launchProcess(void)::$_0::operator() const(WTF::ThreadSafeWeakPtr<WebKit::ProcessLauncher,WTF::NoTaggingTraits<WebKit::ProcessLauncher>>,WebKit::ExtensionProcess &&,WTF::ASCIILiteral,NSError *)::{lambda(void)#2},void>::~CallableWrapper(WTF *this, void *a2)
{
  *this = &unk_1F1108330;
  v3 = *(this + 7);
  *(this + 7) = 0;
  if (v3)
  {
    WTF::ThreadSafeRefCounted<WebKit::LaunchGrant,(WTF::DestructionThread)0>::deref(v3);
  }

  if (*(this + 48) != 255)
  {
    v4 = *(this + 5);
    *(this + 5) = 0;
    if (v4)
    {
    }
  }

  *(this + 48) = -1;
  v5 = *(this + 2);
  *(this + 2) = 0;
  if (v5)
  {
    WTF::ThreadSafeWeakPtrControlBlock::weakDeref(v5, a2);
  }

  return WTF::fastFree(this, a2);
}

void WebKit::XPCServiceEventHandler(void *a1)
{
  if (a1)
  {
    v2 = a1;
  }

  global_queue = dispatch_get_global_queue(0, 0);
  xpc_connection_set_target_queue(a1, global_queue);
  handler[0] = MEMORY[0x1E69E9820];
  handler[1] = 3321888768;
  handler[2] = ___ZN6WebKit22XPCServiceEventHandlerEPU24objcproto13OS_xpc_object8NSObject_block_invoke;
  handler[3] = &__block_descriptor_40_e8_32c62_ZTSN3WTF11OSObjectPtrIPU24objcproto13OS_xpc_object8NSObjectEE_e33_v16__0__NSObject_OS_xpc_object__8l;
  v6 = a1;
  if (a1)
  {
    v4 = a1;
  }

  xpc_connection_set_event_handler(a1, handler);
  xpc_connection_resume(a1);
  if (v6)
  {
  }

  if (a1)
  {
  }
}

void sub_19D59719C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14)
{
  if (a14)
  {
  }

  if (v14)
  {
  }

  _Unwind_Resume(exception_object);
}

void *__copy_helper_block_e8_32c62_ZTSN3WTF11OSObjectPtrIPU24objcproto13OS_xpc_object8NSObjectEE(void *result, uint64_t a2)
{
  v2 = *(a2 + 32);
  result[4] = v2;
  if (v2)
  {
    return v2;
  }

  return result;
}

void ___ZN6WebKit22XPCServiceEventHandlerEPU24objcproto13OS_xpc_object8NSObject_block_invoke(uint64_t a1, id a2)
{
  v56 = *MEMORY[0x1E69E9840];
  Class = object_getClass(a2);
  if (Class == MEMORY[0x1E69E9E80])
  {
    string = xpc_dictionary_get_string(a2, "message-name");
    if (string)
    {
      strlen(string);
      WTF::String::fromUTF8();
      if (v53)
      {
        v6 = MEMORY[0x19EB01EF0](v53, "bootstrap", 9);
        if (!v6)
        {
          WebKit::handleXPCEndpointMessage(a2, &v53);
LABEL_59:
          v40 = v53;
          v53 = 0;
          if (v40)
          {
            if (atomic_fetch_add_explicit(v40, 0xFFFFFFFE, memory_order_relaxed) == 2)
            {
              WTF::StringImpl::destroy(v40, v31);
            }
          }

          return;
        }

        WTF::initialize(v6);
        if (xpc_dictionary_get_BOOL(a2, "disable-logging"))
        {
          os_trace_set_mode();
        }

        value = xpc_dictionary_get_value(a2, "OverrideLanguages");
        v8 = value;
        if (value)
        {
          v9 = value;
          bufsize = 0uLL;
          v10 = objc_autoreleasePoolPush();
          v11 = malloc_type_malloc(0x28uLL, 0x10E004053C0834CuLL);
          *v11 = MEMORY[0x1E69E9818];
          v11[1] = 50331650;
          v11[2] = _ZZN3WTF8BlockPtrIFbmPU24objcproto13OS_xpc_object8NSObjectEE12fromCallableIZZN6WebKit22XPCServiceEventHandlerES3_EUb_E3__0EES5_T_ENUlPvmS3_E_8__invokeESA_mS3_;
          v11[3] = &_ZZN3WTF8BlockPtrIFbmPU24objcproto13OS_xpc_object8NSObjectEE12fromCallableIZZN6WebKit22XPCServiceEventHandlerES3_EUb_E3__0EES5_T_E10descriptor;
          v11[4] = &bufsize;
          xpc_array_apply(v8, v11);
          _Block_release(v11);
          objc_autoreleasePoolPop(v10);
          if (byte_1ED641F31)
          {
            if (HIDWORD(xmmword_1ED641F48))
            {
              __break(0xC471u);
              return;
            }

            v13 = DWORD2(xmmword_1ED641F48);
            v14 = xmmword_1ED641F48;
          }

          else
          {
            v14 = 0;
            v13 = 0;
            xmmword_1ED641F48 = 0uLL;
            byte_1ED641F31 = 1;
          }

          xmmword_1ED641F48 = bufsize;
          *&bufsize = v14;
          *(&bufsize + 1) = v13;
          WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&bufsize, v12);
        }

        if (os_variant_allows_internal_security_policies() && analytics_send_event_lazyPtr())
        {
          LODWORD(bufsize) = 1025;
          if (_NSGetExecutablePath(byte_1ED641F58, &bufsize) == -1)
          {
            v49 = byte_1ED641F58;
            v50 = bufsize;
            v48 = "void register_for_dlsym_callbacks()";
            WTFLogAlways();
          }

          else
          {
            v48 = byte_1ED641F58;
            WTFLogAlways();
            _dyld_register_dlsym_notifier();
          }
        }

        v15 = xpc_dictionary_get_value(a2, "ContainerEnvironmentVariables");
        xpc_dictionary_apply(v15, &__block_literal_global_12_2);
        v16 = xpc_dictionary_get_string(a2, "service-name");
        if (v16)
        {
          strlen(v16);
          WTF::String::fromUTF8();
          if (v52)
          {
            if (WTF::StringImpl::startsWith())
            {
              _MergedGlobals_62 = 1;
              WebKit::setUserDirSuffix();
              v17 = @"WebContentServiceInitializer";
            }

            else if (MEMORY[0x19EB01EF0](v52, "com.apple.WebKit.Networking", 27))
            {
              WebKit::setUserDirSuffix();
              v17 = @"NetworkServiceInitializer";
            }

            else if (MEMORY[0x19EB01EF0](v52, "com.apple.WebKit.GPU", 20))
            {
              WebKit::setUserDirSuffix();
              v17 = @"GPUServiceInitializer";
            }

            else
            {
              if ((MEMORY[0x19EB01EF0](v52, "com.apple.WebKit.Model", 22) & 1) == 0)
              {
                v44 = qword_1ED6416C8;
                if (os_log_type_enabled(qword_1ED6416C8, OS_LOG_TYPE_ERROR))
                {
                  WTF::String::utf8();
                  v45 = v51 ? v51 + 16 : 0;
                  LODWORD(bufsize) = 136446210;
                  *(&bufsize + 4) = v45;
                  _os_log_error_impl(&dword_19D52D000, v44, OS_LOG_TYPE_ERROR, "XPCServiceEventHandler: Unexpected 'service-name': %{public}s", &bufsize, 0xCu);
                  v46 = v51;
                  v51 = 0;
                  if (v46)
                  {
                    if (*v46 == 1)
                    {
                      WTF::fastFree(v46, v31);
                    }

                    else
                    {
                      --*v46;
                    }
                  }
                }

                goto LABEL_41;
              }

              v17 = @"ModelServiceInitializer";
            }

            BundleWithIdentifier = CFBundleGetBundleWithIdentifier(@"com.apple.WebKit");
            v19 = BundleWithIdentifier;
            if (BundleWithIdentifier)
            {
              CFRetain(BundleWithIdentifier);
            }

            FunctionPointerForName = CFBundleGetFunctionPointerForName(v19, v17);
            if (FunctionPointerForName)
            {
              reply = xpc_dictionary_create_reply(a2);
              xpc_dictionary_set_string(reply, "message-name", "process-finished-launching");
              remote_connection = xpc_dictionary_get_remote_connection(a2);
              xpc_connection_send_message(remote_connection, reply);
              v23 = xpc_dictionary_dup_fd(a2, "stdout");
              if (v23 != -1)
              {
                dup2(v23, 1);
              }

              v24 = xpc_dictionary_dup_fd(a2, "stderr");
              if (v24 != -1)
              {
                v24 = dup2(v24, 2);
              }

              v25 = WTF::WorkQueue::mainSingleton(v24);
              *&bufsize = FunctionPointerForName;
              *(&bufsize + 1) = a2;
              if (a2)
              {
                v26 = a2;
              }

              v27 = *(a1 + 32);
              v55 = v27;
              if (v27)
              {
                v28 = v27;
              }

              v29 = WTF::fastMalloc(0x20);
              *v29 = &unk_1F10F27E0;
              *(v29 + 1) = FunctionPointerForName;
              *(&bufsize + 1) = 0;
              *(v29 + 2) = a2;
              *(v29 + 3) = v27;
              if (v27)
              {
                v30 = v27;
              }

              v51 = v29;
              (*(*v25 + 24))(v25, &v51);
              v32 = v51;
              v51 = 0;
              if (v32)
              {
                (*(*v32 + 8))(v32);
              }

              if (v27)
              {
              }

              if (reply)
              {
              }
            }

            else
            {
              v43 = qword_1ED6416C8;
              if (os_log_type_enabled(qword_1ED6416C8, OS_LOG_TYPE_FAULT))
              {
                v47 = [(__CFString *)v17 UTF8String];
                LODWORD(bufsize) = 136315138;
                *(&bufsize + 4) = v47;
                _os_log_fault_impl(&dword_19D52D000, v43, OS_LOG_TYPE_FAULT, "Exiting: Unable to find entry point in WebKit.framework with name: %s", &bufsize, 0xCu);
              }

              [objc_msgSend(MEMORY[0x1E695DFD0] mainRunLoop];
            }

            if (v19)
            {
              CFRelease(v19);
            }

LABEL_41:
            v33 = v52;
            v52 = 0;
            if (v33 && atomic_fetch_add_explicit(v33, 0xFFFFFFFE, memory_order_relaxed) == 2)
            {
              WTF::StringImpl::destroy(v33, v31);
            }

            goto LABEL_59;
          }
        }

        else
        {
          v52 = 0;
        }

        v41 = qword_1ED6416C8;
        if (os_log_type_enabled(qword_1ED6416C8, OS_LOG_TYPE_ERROR))
        {
          LOWORD(bufsize) = 0;
          _os_log_error_impl(&dword_19D52D000, v41, OS_LOG_TYPE_ERROR, "XPCServiceEventHandler: 'service-name' is not present in the XPC dictionary", &bufsize, 2u);
        }

        goto LABEL_41;
      }
    }

    else
    {
      v53 = 0;
    }

    v34 = qword_1ED6416C8;
    if (os_log_type_enabled(qword_1ED6416C8, OS_LOG_TYPE_ERROR))
    {
      LOWORD(bufsize) = 0;
      _os_log_error_impl(&dword_19D52D000, v34, OS_LOG_TYPE_ERROR, "XPCServiceEventHandler: 'message-name' is not present in the XPC dictionary", &bufsize, 2u);
    }

    goto LABEL_59;
  }

  v35 = Class;
  v36 = qword_1ED6416C8;
  if (os_log_type_enabled(qword_1ED6416C8, OS_LOG_TYPE_ERROR))
  {
    LODWORD(bufsize) = 136446210;
    *(&bufsize + 4) = xpc_type_get_name(v35);
    _os_log_error_impl(&dword_19D52D000, v36, OS_LOG_TYPE_ERROR, "XPCServiceEventHandler: Received unexpected XPC event type: %{public}s", &bufsize, 0xCu);
  }

  if (v35 == MEMORY[0x1E69E9E98])
  {
    v37 = MEMORY[0x1E69E9E20];
    if (a2 == MEMORY[0x1E69E9E20] || a2 == MEMORY[0x1E69E9E38])
    {
      v39 = qword_1ED6416C8;
      if (os_log_type_enabled(qword_1ED6416C8, OS_LOG_TYPE_FAULT))
      {
        v42 = "XPC_ERROR_TERMINATION_IMMINENT";
        if (a2 == v37)
        {
          v42 = "XPC_ERROR_CONNECTION_INVALID";
        }

        LODWORD(bufsize) = 136446210;
        *(&bufsize + 4) = v42;
        _os_log_fault_impl(&dword_19D52D000, v39, OS_LOG_TYPE_FAULT, "Exiting: Received XPC event type: %{public}s", &bufsize, 0xCu);
      }

      if ((_MergedGlobals_62 & 1) == 0)
      {
        [objc_msgSend(MEMORY[0x1E695DFD0] "mainRunLoop")];
      }
    }
  }
}

void sub_19D597A20(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, WTF::StringImpl *a13, WTF::StringImpl *a14, char a15)
{
  if (a13 && atomic_fetch_add_explicit(a13, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(a13, a2);
  }

  if (a14)
  {
    if (atomic_fetch_add_explicit(a14, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(a14, a2);
    }
  }

  _Unwind_Resume(exception_object);
}

uint64_t _ZZN3WTF8BlockPtrIFbmPU24objcproto13OS_xpc_object8NSObjectEE12fromCallableIZZN6WebKit22XPCServiceEventHandlerES3_EUb_E3__0EES5_T_ENUlPvmS3_E_8__invokeESA_mS3_(uint64_t a1, int a2, xpc_object_t xstring)
{
  v4 = *(a1 + 32);
  xpc_string_get_string_ptr(xstring);
  xpc_string_get_length(xstring);
  WTF::String::fromUTF8();
  v6 = *(v4 + 12);
  if (v6 == *(v4 + 8))
  {
    v11 = WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(v4, v6 + 1, &v12);
    v6 = *(v4 + 12);
    v7 = *v4;
    v8 = *v11;
    *v11 = 0;
  }

  else
  {
    v7 = *v4;
    v8 = v12;
    v12 = 0;
  }

  *(v7 + 8 * v6) = v8;
  *(v4 + 12) = v6 + 1;
  v9 = v12;
  v12 = 0;
  if (v9 && atomic_fetch_add_explicit(v9, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v9, v5);
  }

  return 1;
}

void sub_19D597C38(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, WTF::StringImpl *a10)
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

unint64_t WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(uint64_t a1, unint64_t a2, unint64_t a3)
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

    WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::reserveCapacity<(WTF::FailureAction)0>(a1, v13);
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

    WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::reserveCapacity<(WTF::FailureAction)0>(a1, v8);
  }

  return v3;
}

void *analytics_send_event_lazyPtr(void)
{
  if (byte_1ED641F32 == 1)
  {
    return qword_1ED641F38;
  }

  if (byte_1ED641F33 == 1)
  {
    v1 = qword_1ED641F40;
  }

  else
  {
    v1 = ___ZL20CoreAnalyticsLibraryv_block_invoke();
    qword_1ED641F40 = v1;
    byte_1ED641F33 = 1;
  }

  result = dlsym(v1, "analytics_send_event_lazy");
  qword_1ED641F38 = result;
  byte_1ED641F32 = 1;
  return result;
}

void WebKit::setUserDirSuffix()
{
  v4 = *MEMORY[0x1E69E9840];
  v0 = _set_user_dir_suffix();
  v1 = qword_1ED6416C8;
  if (v0)
  {
    if (os_log_type_enabled(qword_1ED6416C8, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v3[0]) = 0;
      _os_log_impl(&dword_19D52D000, v1, OS_LOG_TYPE_DEFAULT, "Successfully set temp dir", v3, 2u);
    }

    confstr(65537, 0, 0);
  }

  else if (os_log_type_enabled(qword_1ED6416C8, OS_LOG_TYPE_ERROR))
  {
    v2 = *__error();
    v3[0] = 67109120;
    v3[1] = v2;
    _os_log_error_impl(&dword_19D52D000, v1, OS_LOG_TYPE_ERROR, "Failed to set temp dir: errno = %d", v3, 8u);
  }
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZZN6WebKit22XPCServiceEventHandlerEPU24objcproto13OS_xpc_object8NSObjectEUb_E3__1vJEE4callEv(uint64_t a1)
{
  WTF::initializeMainThread(a1);
  _CFPrefsSetDirectModeEnabled();
  _CFPrefsSetReadOnly();
  result = (*(a1 + 8))(*(a1 + 24), *(a1 + 16));
  if (byte_1ED641F31)
  {
    if (HIDWORD(qword_1ED641F50))
    {

      return WTF::overrideUserPreferredLanguages();
    }
  }

  else
  {
    qword_1ED641F50 = 0;
    qword_1ED641F48 = 0;
    byte_1ED641F31 = 1;
  }

  return result;
}

uint64_t ___ZN6WebKit34StorageAccessPromptQuirkController10updateListEON3WTF17CompletionHandlerIFvvEEE_block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v77 = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 32);
  v67 = 0;
  v68 = 0;
  if (a3)
  {
    v4 = qword_1ED641148;
    if (os_log_type_enabled(qword_1ED641148, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_19D52D000, v4, OS_LOG_TYPE_ERROR, "Failed to request storage access quirks from WebPrivacy.", buf, 2u);
    }

    goto LABEL_70;
  }

  obj = [a2 quirks];
  v5 = MEMORY[0x1E69E23D0];
  if ([(*MEMORY[0x1E69E23D0])() instancesRespondToSelector:sel_quirkDomains])
  {
    v6 = [(*v5)() instancesRespondToSelector:sel_triggerPages];
  }

  else
  {
    v6 = 0;
  }

  v65 = 0u;
  v66 = 0u;
  v63 = 0u;
  v64 = 0u;
  v8 = [obj countByEnumeratingWithState:&v63 objects:v73 count:{16, v3}];
  if (v8)
  {
    v9 = *v64;
    v53 = v6;
    do
    {
      v10 = 0;
      v55 = v8;
      do
      {
        if (*v64 != v9)
        {
          objc_enumerationMutation(obj);
        }

        v11 = *(*(&v63 + 1) + 8 * v10);
        if (v6)
        {
          MEMORY[0x19EB02040](&v59, [*(*(&v63 + 1) + 8 * v10) name]);
          WebKit::quirkDomainsDictToMap(&v58, [v11 quirkDomains]);
          v12 = [v11 triggerPages];
          v56 = 0;
          v57 = 0;
          v71 = 0u;
          memset(v72, 0, sizeof(v72));
          v13 = [v12 countByEnumeratingWithState:&v71 objects:buf count:16];
          if (v13)
          {
            v14 = **&v72[0];
            do
            {
              v15 = 0;
              do
              {
                if (**&v72[0] != v14)
                {
                  objc_enumerationMutation(v12);
                }

                v16 = *(*(&v71 + 1) + 8 * v15);
                if (([v16 isEqualToString:@"*"] & 1) == 0)
                {
                  MEMORY[0x19EB02040](&v69, v16);
                  MEMORY[0x19EB01DD0](v70, &v69, 0);
                  if (HIDWORD(v57) == v57)
                  {
                    WTF::Vector<WTF::URL,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::appendSlowCase<(WTF::FailureAction)0,WTF::URL>(&v56, v70);
                  }

                  else
                  {
                    WTF::URL::URL(v56 + 40 * HIDWORD(v57), v70);
                    ++HIDWORD(v57);
                  }

                  v18 = v70[0];
                  v70[0] = 0;
                  if (v18 && atomic_fetch_add_explicit(v18, 0xFFFFFFFE, memory_order_relaxed) == 2)
                  {
                    WTF::StringImpl::destroy(v18, v17);
                  }

                  v19 = v69;
                  v69 = 0;
                  if (v19 && atomic_fetch_add_explicit(v19, 0xFFFFFFFE, memory_order_relaxed) == 2)
                  {
                    WTF::StringImpl::destroy(v19, v17);
                  }
                }

                ++v15;
              }

              while (v13 != v15);
              v20 = [v12 countByEnumeratingWithState:&v71 objects:buf count:16];
              v13 = v20;
            }

            while (v20);
          }

          WebCore::OrganizationStorageAccessPromptQuirk::OrganizationStorageAccessPromptQuirk(&v60, &v59, &v58, &v56);
          if (HIDWORD(v68) == v68)
          {
            WTF::Vector<WebCore::OrganizationStorageAccessPromptQuirk,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::appendSlowCase<(WTF::FailureAction)0,WebCore::OrganizationStorageAccessPromptQuirk>(&v67, &v60);
          }

          else
          {
            v21 = (v67 + 32 * HIDWORD(v68));
            v22 = v60;
            v60 = 0;
            *v21 = v22;
            v21[1] = 0;
            v23 = v61;
            v61 = 0;
            v21[1] = v23;
            WTF::Vector<WTF::URL,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::Vector(v21 + 2, v62);
            ++HIDWORD(v68);
          }

          v6 = v53;
          WTF::Vector<WTF::URL,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v62, v24);
          v8 = v55;
          if (v61)
          {
            WTF::HashTable<WebCore::RegistrableDomain,WTF::KeyValuePair<WebCore::RegistrableDomain,WTF::Vector<WebCore::RegistrableDomain,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebCore::RegistrableDomain,WTF::Vector<WebCore::RegistrableDomain,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>>,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashMap<WebCore::RegistrableDomain,WTF::Vector<WebCore::RegistrableDomain,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTraits<WTF::Vector<WebCore::RegistrableDomain,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::FastMalloc>::deallocateTable(v61, v25);
          }

          v26 = v60;
          v60 = 0;
          if (v26 && atomic_fetch_add_explicit(v26, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v26, v25);
          }

          WTF::Vector<WTF::URL,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v56, v25);
          if (v58)
          {
            WTF::HashTable<WebCore::RegistrableDomain,WTF::KeyValuePair<WebCore::RegistrableDomain,WTF::Vector<WebCore::RegistrableDomain,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebCore::RegistrableDomain,WTF::Vector<WebCore::RegistrableDomain,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>>,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashMap<WebCore::RegistrableDomain,WTF::Vector<WebCore::RegistrableDomain,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTraits<WTF::Vector<WebCore::RegistrableDomain,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::FastMalloc>::deallocateTable(v58, v27);
          }

          v28 = v59;
          v59 = 0;
          if (v28)
          {
            goto LABEL_52;
          }
        }

        else
        {
          MEMORY[0x19EB02040](v70, [*(*(&v63 + 1) + 8 * v10) name]);
          WebKit::quirkDomainsDictToMap(&v60, [v11 domainPairings]);
          v71 = 0uLL;
          WebCore::OrganizationStorageAccessPromptQuirk::OrganizationStorageAccessPromptQuirk(buf, v70, &v60, &v71);
          if (HIDWORD(v68) == v68)
          {
            WTF::Vector<WebCore::OrganizationStorageAccessPromptQuirk,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::appendSlowCase<(WTF::FailureAction)0,WebCore::OrganizationStorageAccessPromptQuirk>(&v67, buf);
          }

          else
          {
            v29 = (v67 + 32 * HIDWORD(v68));
            v30 = *buf;
            *buf = 0;
            *v29 = v30;
            v29[1] = 0;
            v31 = v75;
            v75 = 0;
            v29[1] = v31;
            WTF::Vector<WTF::URL,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::Vector(v29 + 2, v76);
            ++HIDWORD(v68);
            v8 = v55;
          }

          WTF::Vector<WTF::URL,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v76, v32);
          if (v75)
          {
            WTF::HashTable<WebCore::RegistrableDomain,WTF::KeyValuePair<WebCore::RegistrableDomain,WTF::Vector<WebCore::RegistrableDomain,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebCore::RegistrableDomain,WTF::Vector<WebCore::RegistrableDomain,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>>,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashMap<WebCore::RegistrableDomain,WTF::Vector<WebCore::RegistrableDomain,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTraits<WTF::Vector<WebCore::RegistrableDomain,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::FastMalloc>::deallocateTable(v75, v33);
          }

          v34 = *buf;
          *buf = 0;
          if (v34 && atomic_fetch_add_explicit(v34, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v34, v33);
          }

          WTF::Vector<WTF::URL,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v71, v33);
          if (v60)
          {
            WTF::HashTable<WebCore::RegistrableDomain,WTF::KeyValuePair<WebCore::RegistrableDomain,WTF::Vector<WebCore::RegistrableDomain,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebCore::RegistrableDomain,WTF::Vector<WebCore::RegistrableDomain,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>>,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashMap<WebCore::RegistrableDomain,WTF::Vector<WebCore::RegistrableDomain,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTraits<WTF::Vector<WebCore::RegistrableDomain,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::FastMalloc>::deallocateTable(v60, v27);
          }

          v28 = v70[0];
          v70[0] = 0;
          if (v28)
          {
LABEL_52:
            if (atomic_fetch_add_explicit(v28, 0xFFFFFFFE, memory_order_relaxed) == 2)
            {
              WTF::StringImpl::destroy(v28, v27);
            }
          }
        }

        ++v10;
      }

      while (v10 != v8);
      v35 = [obj countByEnumeratingWithState:&v63 objects:v73 count:16];
      v8 = v35;
    }

    while (v35);
  }

  v36 = *(v52 + 68);
  if (v36)
  {
    v37 = 32 * v36;
    v38 = *(v52 + 56) + 16;
    do
    {
      WTF::Vector<WTF::URL,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v38, v7);
      v39 = *(v38 - 8);
      if (v39)
      {
        WTF::HashTable<WebCore::RegistrableDomain,WTF::KeyValuePair<WebCore::RegistrableDomain,WTF::Vector<WebCore::RegistrableDomain,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebCore::RegistrableDomain,WTF::Vector<WebCore::RegistrableDomain,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>>,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashMap<WebCore::RegistrableDomain,WTF::Vector<WebCore::RegistrableDomain,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTraits<WTF::Vector<WebCore::RegistrableDomain,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::FastMalloc>::deallocateTable(v39, v7);
      }

      v40 = *(v38 - 16);
      *(v38 - 16) = 0;
      if (v40 && atomic_fetch_add_explicit(v40, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v40, v7);
      }

      v38 += 32;
      v37 -= 32;
    }

    while (v37);
  }

  v41 = *(v52 + 56);
  if (v41)
  {
    *(v52 + 56) = 0;
    *(v52 + 64) = 0;
    WTF::fastFree(v41, v7);
  }

  *(v52 + 56) = v67;
  v42 = v68;
  v67 = 0;
  v68 = 0;
  *(v52 + 64) = v42;
  (*(*v52 + 24))(v52);
LABEL_70:
  *&v71 = v72;
  *(&v71 + 1) = 1;
  *buf = v76;
  v75 = 1;
  WTF::VectorBuffer<WTF::CompletionHandler<void ()(void)>,1ul,WTF::FastMalloc>::adopt(buf, &qword_1ED641D28);
  if (dword_1ED641D34)
  {
    v43 = qword_1ED641D28;
    v44 = 8 * dword_1ED641D34;
    do
    {
      v45 = *v43;
      *v43 = 0;
      if (v45)
      {
        (*(*v45 + 8))(v45);
      }

      ++v43;
      v44 -= 8;
    }

    while (v44);
  }

  WTF::VectorBuffer<WTF::CompletionHandler<void ()(void)>,1ul,WTF::FastMalloc>::adopt(&qword_1ED641D28, &v71);
  if (HIDWORD(v75))
  {
    v47 = *buf;
    v48 = 8 * HIDWORD(v75);
    do
    {
      WTF::CompletionHandler<void ()(void)>::operator()(v47++);
      v48 -= 8;
    }

    while (v48);
  }

  WTF::Vector<WTF::CompletionHandler<void ()(void)>,1ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(buf, v46);
  WTF::Vector<WTF::CompletionHandler<void ()(void)>,1ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v71, v49);
  return WTF::Vector<WebCore::OrganizationStorageAccessPromptQuirk,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v67, v50);
}

void WebContentServiceInitializer(void *a1, void *a2)
{
  v4 = bmalloc::api::TZoneHeapManager::setBucketParams(4);
  WTF::initializeMainThread(v4);
  WebKit::EnvironmentUtilities::removeValuesEndingWith("DYLD_INSERT_LIBRARIES", "/WebProcessShim.dylib", v5);
  GSInitialize();
  InitWebCoreThreadSystemInterface();
  v8 = a1;
  if (a1)
  {
    v6 = a1;
  }

  WebKit::XPCServiceInitializer<WebKit::WebProcess,WebKit::XPCServiceInitializerDelegate,true>(&v8, a2);
  v7 = v8;
  if (v8)
  {
  }
}

void sub_19D598870(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10)
{
  if (a10)
  {
  }

  _Unwind_Resume(exception_object);
}

uint64_t WebKit::EnvironmentUtilities::removeValuesEndingWith(WebKit::EnvironmentUtilities *this, const char *a2, const char *a3)
{
  result = getenv(this);
  if (result)
  {
    v6 = result;
    v7 = strlen(result) | 0x100000000;
    if (a2)
    {
      strlen(a2);
    }

    WebKit::EnvironmentUtilities::stripEntriesEndingWith(v6, v7, &v12);
    v8 = v12;
    if (v12 && *(v12 + 1))
    {
      WTF::String::utf8();
      if (v11)
      {
        v9 = v11 + 16;
      }

      else
      {
        v9 = 0;
      }

      setenv(this, v9, 1);
      result = v11;
      if (v11)
      {
        if (*v11 == 1)
        {
          result = WTF::fastFree(v11, v10);
        }

        else
        {
          --*v11;
        }
      }

      v8 = v12;
    }

    else
    {
      result = unsetenv(this);
    }

    v12 = 0;
    if (v8)
    {
      if (atomic_fetch_add_explicit(v8, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        return WTF::StringImpl::destroy(v8, v10);
      }
    }
  }

  return result;
}

void WebKit::XPCServiceInitializer<WebKit::WebProcess,WebKit::XPCServiceInitializerDelegate,true>(id *a1, void *a2)
{
  v27 = *a1;
  *a1 = 0;
  WebKit::XPCServiceInitializerDelegate::XPCServiceInitializerDelegate(v28, &v27, a2);
  if (v27)
  {
  }

  v22 = 0;
  v23 = 0;
  v19 = 0;
  v20 = 0;
  v18 = 0;
  LOBYTE(v21) = 0;
  v24 = 0;
  v25 = 0;
  if ((WebKit::XPCServiceInitializerDelegate::getExtraInitializationData(v28, &v25) & 1) == 0)
  {
    WTF::exitProcess(1);
    goto LABEL_29;
  }

  *MEMORY[0x1E696EB80] = 1;
  if (a2)
  {
    v16 = "enable-lockdown-mode";
    v17 = 21;
    v3 = WTF::HashTable<WTF::String,WTF::KeyValuePair<WTF::String,WTF::String>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,WTF::String>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::lookup<WTF::HashMapTranslatorAdapter<WTF::HashMap<WTF::String,WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTranslatorASCIILiteral>,(WTF::ShouldValidateKey)1,WTF::ASCIILiteral>(&v25, &v16);
    if (v3)
    {
      v4 = *(v3 + 8);
      if (v4)
      {
        atomic_fetch_add_explicit(v4, 2u, memory_order_relaxed);
      }
    }

    else
    {
      v4 = 0;
    }

    v6 = MEMORY[0x19EB01EF0](v4, "1", 1);
    if (v4 && atomic_fetch_add_explicit(v4, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v4, v5);
    }

    WebKit::setJSCOptions(a2, v6);
  }

  v15 = 0;
  v14 = 0;
  WebKit::XPCServiceInitializerDelegate::getClientSDKAlignedBehaviors(v28, &v14);
  WTF::setSDKAlignedBehaviors();
  v26 = 0;
  v7 = WTF::setAuxiliaryProcessType();
  WebKit::InitializeWebKit2(v7);
  if ((WebKit::XPCServiceInitializerDelegate::checkEntitlements(v28) & 1) == 0)
  {
    goto LABEL_26;
  }

  if (!WebKit::XPCServiceInitializerDelegate::getConnectionIdentifier(v28, &v23))
  {
    goto LABEL_26;
  }

  if (!WebKit::XPCServiceInitializerDelegate::getClientIdentifier(v28, &v19))
  {
    goto LABEL_26;
  }

  WebKit::XPCServiceInitializerDelegate::getClientBundleIdentifier(v28, &v20);
  LOBYTE(v16) = 0;
  LOBYTE(v17) = 0;
  if ((WebKit::XPCServiceInitializerDelegate::getProcessIdentifier(v28, &v16) & 1) == 0)
  {
    goto LABEL_26;
  }

  if ((v17 & 1) == 0)
  {
LABEL_29:
    __break(1u);
LABEL_30:
    v9 = WTF::Thread::setGlobalMaxQOSClass(0x11, v8);
    goto LABEL_21;
  }

  if ((v22 & 1) == 0)
  {
    v22 = 1;
  }

  v21 = v16;
  if (!WebKit::XPCServiceInitializerDelegate::getClientProcessName(v28, &v18))
  {
LABEL_26:
    WTF::exitProcess(1);
    goto LABEL_29;
  }

  voucher_replace_default_voucher();
  WTF::StringImpl::createWithoutCopyingNonEmpty();
  v9 = v29;
  v13 = v29;
  if (v25)
  {
    v10 = WTF::HashTable<WTF::String,WTF::KeyValuePair<WTF::String,WTF::String>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,WTF::String>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::lookup<WTF::IdentityHashTranslator<WTF::HashMap<WTF::String,WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<WTF::String>>,(WTF::ShouldValidateKey)1,WTF::String>(&v25, &v13) != 0;
    v9 = v13;
  }

  else
  {
    v10 = 0;
  }

  v13 = 0;
  if (v9 && atomic_fetch_add_explicit(v9, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    v9 = WTF::StringImpl::destroy(v9, v8);
  }

  if (v10)
  {
    goto LABEL_30;
  }

LABEL_21:
  v11 = WebKit::WebProcess::singleton(v9, v8);
  WebKit::AuxiliaryProcess::initialize(v11, &v18);
  WebKit::AuxiliaryProcessInitializationParameters::~AuxiliaryProcessInitializationParameters(&v18, v12);
  WebKit::XPCServiceInitializerDelegate::~XPCServiceInitializerDelegate(v28);
}

void sub_19D598C24(_Unwind_Exception *a1, WTF::StringImpl *a2, uint64_t a3, WTF::StringImpl *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  if (a4)
  {
    if (atomic_fetch_add_explicit(a4, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(a4, a2);
    }
  }

  WebKit::AuxiliaryProcessInitializationParameters::~AuxiliaryProcessInitializationParameters(va, a2);
  WebKit::XPCServiceInitializerDelegate::~XPCServiceInitializerDelegate((v8 - 64));
  _Unwind_Resume(a1);
}

void *WebKit::XPCServiceInitializerDelegate::XPCServiceInitializerDelegate(void *result, uint64_t *a2, uint64_t a3)
{
  v3 = *a2;
  *result = &unk_1F10F20B8;
  result[1] = v3;
  *a2 = 0;
  result[2] = a3;
  return result;
}

uint64_t WebKit::quirkDomainsDictToMap(uint64_t *a1, void *a2)
{
  v43 = *MEMORY[0x1E69E9840];
  *a1 = 0;
  v2 = [a2 allKeys];
  v39 = 0u;
  v40 = 0u;
  v38 = 0u;
  v37 = 0u;
  result = [v2 countByEnumeratingWithState:&v37 objects:v42 count:16];
  v4 = result;
  if (result)
  {
    v5 = *v38;
    obj = v2;
    do
    {
      v6 = 0;
      do
      {
        if (*v38 != v5)
        {
          objc_enumerationMutation(obj);
        }

        v7 = *(*(&v37 + 1) + 8 * v6);
        v35 = 0;
        v36 = 0;
        v31 = 0u;
        v32 = 0u;
        v33 = 0u;
        v34 = 0u;
        v8 = [a2 objectForKey:{v7, obj}];
        v9 = [v8 countByEnumeratingWithState:&v31 objects:v41 count:16];
        if (v9)
        {
          v10 = *v32;
          do
          {
            v11 = 0;
            do
            {
              if (*v32 != v10)
              {
                objc_enumerationMutation(v8);
              }

              MEMORY[0x19EB02040](&v29, *(*(&v31 + 1) + 8 * v11));
              v13 = v29;
              if (v29 && *(v29 + 1))
              {
                v29 = 0;
              }

              else
              {
                WTF::StringImpl::createWithoutCopyingNonEmpty();
                v13 = v28;
              }

              v30 = v13;
              LODWORD(v14) = HIDWORD(v36);
              if (HIDWORD(v36) == v36)
              {
                v17 = WTF::Vector<WebCore::RegistrableDomain,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(&v35, HIDWORD(v36) + 1, &v30);
                v14 = HIDWORD(v36);
                v18 = v35;
                v19 = *v17;
                *v17 = 0;
                *(v18 + 8 * v14) = v19;
              }

              else
              {
                v30 = 0;
                *(v35 + 8 * HIDWORD(v36)) = v13;
              }

              HIDWORD(v36) = v14 + 1;
              v15 = v30;
              v30 = 0;
              if (v15 && atomic_fetch_add_explicit(v15, 0xFFFFFFFE, memory_order_relaxed) == 2)
              {
                WTF::StringImpl::destroy(v15, v12);
              }

              v16 = v29;
              v29 = 0;
              if (v16 && atomic_fetch_add_explicit(v16, 0xFFFFFFFE, memory_order_relaxed) == 2)
              {
                WTF::StringImpl::destroy(v16, v12);
              }

              ++v11;
            }

            while (v9 != v11);
            v20 = [v8 countByEnumeratingWithState:&v31 objects:v41 count:16];
            v9 = v20;
          }

          while (v20);
        }

        MEMORY[0x19EB02040](&v29, v7);
        v21 = v29;
        if (v29 && *(v29 + 1))
        {
          v29 = 0;
        }

        else
        {
          WTF::StringImpl::createWithoutCopyingNonEmpty();
          v21 = v28;
        }

        v30 = v21;
        WTF::HashMap<WebCore::RegistrableDomain,WTF::Vector<WebCore::RegistrableDomain,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTraits<WTF::Vector<WebCore::RegistrableDomain,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::add<WTF::Vector<WebCore::RegistrableDomain,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>(a1, &v30, &v35, &v28);
        v23 = v30;
        v30 = 0;
        if (v23 && atomic_fetch_add_explicit(v23, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v23, v22);
        }

        v24 = v29;
        v29 = 0;
        if (v24)
        {
          if (atomic_fetch_add_explicit(v24, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v24, v22);
          }
        }

        WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v35, v22);
        ++v6;
      }

      while (v6 != v4);
      result = [obj countByEnumeratingWithState:&v37 objects:v42 count:16];
      v4 = result;
    }

    while (result);
  }

  return result;
}

void sub_19D598FC8(_Unwind_Exception *exception_object, void *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, WTF::StringImpl ***a11, uint64_t a12, uint64_t a13, uint64_t a14, WTF::StringImpl *a15, WTF::StringImpl *a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, char a25)
{
  if (*a11)
  {
    WTF::HashTable<WebCore::RegistrableDomain,WTF::KeyValuePair<WebCore::RegistrableDomain,WTF::Vector<WebCore::RegistrableDomain,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebCore::RegistrableDomain,WTF::Vector<WebCore::RegistrableDomain,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>>,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashMap<WebCore::RegistrableDomain,WTF::Vector<WebCore::RegistrableDomain,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTraits<WTF::Vector<WebCore::RegistrableDomain,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::FastMalloc>::deallocateTable(*a11, a2);
  }

  _Unwind_Resume(exception_object);
}

uint64_t WebKit::XPCServiceInitializerDelegate::getExtraInitializationData(uint64_t a1, uint64_t *a2)
{
  value = xpc_dictionary_get_value(*(a1 + 16), "extra-initialization-data");
  v4 = value;
  if (value)
  {
    v5 = value;
  }

  string = xpc_dictionary_get_string(v4, "inspector-process");
  if (string)
  {
    strlen(string);
    WTF::String::fromUTF8();
    if (v39)
    {
      if (*(v39 + 1))
      {
        WTF::StringImpl::createWithoutCopyingNonEmpty();
        v40[0] = *&v42[0];
        WTF::HashMap<WTF::String,WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::add<WTF::String&>(v42, a2, v40, &v39);
        v23 = v40[0];
        if (v40[0])
        {
          if (atomic_fetch_add_explicit(v40[0], 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v23, v22);
          }
        }
      }
    }
  }

  else
  {
    v39 = 0;
  }

  v7 = xpc_dictionary_get_string(v4, "service-worker-process");
  if (v7)
  {
    strlen(v7);
    WTF::String::fromUTF8();
    if (v38)
    {
      if (*(v38 + 1))
      {
        WTF::StringImpl::createWithoutCopyingNonEmpty();
        v40[0] = *&v42[0];
        WTF::HashMap<WTF::String,WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::add<WTF::String>(a2, v40, &v38, v42);
        v25 = v40[0];
        v40[0] = 0;
        if (v25)
        {
          if (atomic_fetch_add_explicit(v25, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v25, v24);
          }
        }
      }
    }
  }

  else
  {
    v38 = 0;
  }

  v8 = xpc_dictionary_get_string(v4, "registrable-domain");
  if (v8)
  {
    strlen(v8);
    WTF::String::fromUTF8();
    if (v37)
    {
      if (*(v37 + 1))
      {
        WTF::StringImpl::createWithoutCopyingNonEmpty();
        v40[0] = *&v42[0];
        WTF::HashMap<WTF::String,WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::add<WTF::String>(a2, v40, &v37, v42);
        v27 = v40[0];
        v40[0] = 0;
        if (v27)
        {
          if (atomic_fetch_add_explicit(v27, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v27, v26);
          }
        }
      }
    }
  }

  else
  {
    v37 = 0;
  }

  v9 = xpc_dictionary_get_string(v4, "is-prewarmed");
  if (v9)
  {
    strlen(v9);
    WTF::String::fromUTF8();
    if (v36)
    {
      if (*(v36 + 1))
      {
        WTF::StringImpl::createWithoutCopyingNonEmpty();
        v40[0] = *&v42[0];
        WTF::HashMap<WTF::String,WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::add<WTF::String&>(v42, a2, v40, &v36);
        v21 = v40[0];
        if (v40[0])
        {
          if (atomic_fetch_add_explicit(v40[0], 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v21, v20);
          }
        }
      }
    }
  }

  else
  {
    v36 = 0;
  }

  v10 = xpc_dictionary_get_string(v4, "enable-lockdown-mode");
  if (v10)
  {
    strlen(v10);
    WTF::String::fromUTF8();
    if (v35)
    {
      if (*(v35 + 1))
      {
        WTF::StringImpl::createWithoutCopyingNonEmpty();
        v40[0] = *&v42[0];
        WTF::HashMap<WTF::String,WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::add<WTF::String&>(v42, a2, v40, &v35);
        v29 = v40[0];
        if (v40[0])
        {
          if (atomic_fetch_add_explicit(v40[0], 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v29, v28);
          }
        }
      }
    }
  }

  else
  {
    v35 = 0;
  }

  xpc_connection_get_audit_token();
  *v40 = v42[0];
  v41 = v42[1];
  if (!sandbox_check_by_audit_token())
  {
    WTF::xpcDictionaryGetString(v4, "user-directory-suffix", v40);
    v31 = v40[0];
    if (v40[0])
    {
      if (!*(v40[0] + 1))
      {
        v40[0] = 0;
LABEL_74:
        if (atomic_fetch_add_explicit(v31, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v31, v30);
        }

        goto LABEL_19;
      }

      WTF::StringImpl::createWithoutCopyingNonEmpty();
      v34 = *&v42[0];
      WTF::HashMap<WTF::String,WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::add<WTF::String&>(v42, a2, &v34, v40);
      v32 = v34;
      if (v34 && atomic_fetch_add_explicit(v34, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v32, v30);
      }

      v31 = v40[0];
      v40[0] = 0;
      if (v31)
      {
        goto LABEL_74;
      }
    }
  }

LABEL_19:
  v11 = xpc_dictionary_get_string(v4, "always-runs-at-background-priority");
  if (!v11)
  {
    goto LABEL_25;
  }

  strlen(v11);
  WTF::String::fromUTF8();
  v13 = v40[0];
  if (!v40[0])
  {
    goto LABEL_25;
  }

  if (!*(v40[0] + 1))
  {
    v40[0] = 0;
LABEL_23:
    if (atomic_fetch_add_explicit(v13, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v13, v12);
    }

    goto LABEL_25;
  }

  WTF::StringImpl::createWithoutCopyingNonEmpty();
  v34 = *&v42[0];
  WTF::HashMap<WTF::String,WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::add<WTF::String&>(v42, a2, &v34, v40);
  v33 = v34;
  if (v34 && atomic_fetch_add_explicit(v34, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v33, v12);
  }

  v13 = v40[0];
  v40[0] = 0;
  if (v13)
  {
    goto LABEL_23;
  }

LABEL_25:
  v14 = v35;
  v35 = 0;
  if (v14 && atomic_fetch_add_explicit(v14, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v14, v12);
  }

  v15 = v36;
  v36 = 0;
  if (v15 && atomic_fetch_add_explicit(v15, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v15, v12);
  }

  v16 = v37;
  v37 = 0;
  if (v16 && atomic_fetch_add_explicit(v16, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v16, v12);
  }

  v17 = v38;
  v38 = 0;
  if (v17 && atomic_fetch_add_explicit(v17, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v17, v12);
  }

  v18 = v39;
  v39 = 0;
  if (v18 && atomic_fetch_add_explicit(v18, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v18, v12);
  }

  if (v4)
  {
  }

  return 1;
}

void sub_19D599604(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, WTF::StringImpl *a9, WTF::StringImpl *a10, WTF::StringImpl *a11, WTF::StringImpl *a12, WTF::StringImpl *a13, WTF::StringImpl *a14, WTF::StringImpl *a15)
{
  if (a9 && atomic_fetch_add_explicit(a9, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(a9, a2);
  }

  if (a15 && atomic_fetch_add_explicit(a15, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(a15, a2);
  }

  if (a10 && atomic_fetch_add_explicit(a10, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(a10, a2);
  }

  if (a11 && atomic_fetch_add_explicit(a11, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(a11, a2);
  }

  if (a12 && atomic_fetch_add_explicit(a12, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(a12, a2);
  }

  if (a13 && atomic_fetch_add_explicit(a13, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(a13, a2);
  }

  if (a14 && atomic_fetch_add_explicit(a14, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(a14, a2);
  }

  if (v15)
  {
  }

  _Unwind_Resume(exception_object);
}

unint64_t WTF::Vector<WebCore::RegistrableDomain,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(uint64_t a1, unint64_t a2, unint64_t a3)
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

    WTF::Vector<WebCore::RegistrableDomain,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::reserveCapacity<(WTF::FailureAction)0>(a1, v13);
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

    WTF::Vector<WebCore::RegistrableDomain,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::reserveCapacity<(WTF::FailureAction)0>(a1, v8);
  }

  return v3;
}

const char *WTF::xpcDictionaryGetString@<X0>(void *a1@<X0>, const char *a2@<X1>, void *a3@<X8>)
{
  result = xpc_dictionary_get_string(a1, a2);
  if (result)
  {
    strlen(result);

    return WTF::String::fromUTF8();
  }

  else
  {
    *a3 = 0;
  }

  return result;
}

uint64_t WTF::Vector<WebCore::RegistrableDomain,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::reserveCapacity<(WTF::FailureAction)0>(uint64_t result, unint64_t a2)
{
  if (*(result + 8) >= a2)
  {
    return 1;
  }

  v2 = a2;
  if (!(a2 >> 29))
  {
    v3 = result;
    v4 = *result;
    v5 = (*result + 8 * *(result + 12));
    v6 = WTF::fastMalloc((8 * a2));
    *(v3 + 8) = v2;
    *v3 = v6;
    WTF::VectorTypeOperations<WebCore::RegistrableDomain>::move(v4, v5, v6);
    if (v4)
    {
      if (*v3 == v4)
      {
        *v3 = 0;
        *(v3 + 8) = 0;
      }

      WTF::fastFree(v4, v7);
    }

    return 1;
  }

  __break(0xC471u);
  return result;
}

uint64_t WebKit::setJSCOptions(void *a1, int a2)
{
  v2 = MEMORY[0x1E696EBF0];
  if (*(MEMORY[0x1E696EBF0] + 485) == 1)
  {
    result = 198;
    __break(0xC471u);
    return result;
  }

  v5 = xpc_dictionary_get_BOOL(a1, "configure-jsc-for-testing");
  if (v5)
  {
    v5 = JSC::Config::configureForTesting(v5);
  }

  if (a2)
  {
    *MEMORY[0x1E696EB80] = 2;
    v10 = JSC::Options::initialize(v5);
    JSC::ExecutableAllocator::disableJIT(v10);
    *(v2 + 913) = 0;
    *(v2 + 2180) = 0;
    *(v2 + 1933) = 0;
    v7 = 1;
    *(v2 + 1642) = 1;
    *(v2 + 1640) = 1;
  }

  else
  {
    v6 = xpc_dictionary_get_BOOL(a1, "disable-jit");
    if (v6)
    {
      v11 = JSC::Options::initialize(v6);
      JSC::ExecutableAllocator::disableJIT(v11);
      v7 = 1;
    }

    else
    {
      v7 = 0;
    }
  }

  v8 = xpc_dictionary_get_BOOL(a1, "enable-shared-array-buffer");
  if (!v8)
  {
    result = xpc_dictionary_get_BOOL(a1, "disable-jit-cage");
    if ((result & 1) == 0)
    {
      if (!v7)
      {
        return result;
      }

      goto LABEL_12;
    }

    goto LABEL_16;
  }

  JSC::Options::initialize(v8);
  *(v2 + 2225) = 1;
  result = xpc_dictionary_get_BOOL(a1, "disable-jit-cage");
  if (result)
  {
LABEL_16:
    result = JSC::Options::initialize(result);
    *(v2 + 2137) = 0;
  }

LABEL_12:

  return JSC::Options::notifyOptionsChanged(result);
}

WTF::StringImpl **___ZN6WebKit43StorageAccessUserAgentStringQuirkController10updateListEON3WTF17CompletionHandlerIFvvEEE_block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v59 = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 32);
  v57 = 0;
  if (!a3)
  {
    v5 = [a2 quirks];
    v44 = v3;
    v55 = 0u;
    v56 = 0u;
    v53 = 0u;
    v54 = 0u;
    v6 = [v5 countByEnumeratingWithState:&v53 objects:v58 count:16];
    if (!v6)
    {
      goto LABEL_50;
    }

    obj = v5;
    v46 = *v54;
    while (1)
    {
      v7 = 0;
      v47 = v6;
      do
      {
        if (*v54 != v46)
        {
          objc_enumerationMutation(obj);
        }

        v8 = *(*(&v53 + 1) + 8 * v7);
        MEMORY[0x19EB02040](v48, [v8 domain]);
        v9 = v48[0];
        if (v48[0] && *(v48[0] + 1))
        {
          v48[0] = 0;
        }

        else
        {
          WTF::StringImpl::createWithoutCopyingNonEmpty();
          v9 = *buf;
        }

        v10 = [v8 userAgentString];
        if (WTF::equal(v9, 0, v11) || v9 == -1)
        {
          __break(0xC471u);
          JUMPOUT(0x19D599F50);
        }

        v13 = v57;
        if (v57 || (WTF::HashTable<WebCore::RegistrableDomain,WTF::KeyValuePair<WebCore::RegistrableDomain,WTF::String>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebCore::RegistrableDomain,WTF::String>>,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashMap<WebCore::RegistrableDomain,WTF::String,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::FastMalloc>::expand(&v57, 0), (v13 = v57) != 0))
        {
          v14 = *(v13 - 2);
        }

        else
        {
          v14 = 0;
        }

        v15 = WTF::ASCIICaseInsensitiveHash::hash(v9, v12) & v14;
        v16 = &v13[2 * v15];
        if (WTF::equal(*v16, 0, v17))
        {
LABEL_25:
          v24 = *v16;
          *v16 = v9;
          if (v24 && atomic_fetch_add_explicit(v24, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v24, v18);
          }

          MEMORY[0x19EB02040](buf, v10);
          v25 = v47;
          v26 = *buf;
          *buf = 0;
          v27 = v16[1];
          v16[1] = v26;
          if (v27)
          {
            if (atomic_fetch_add_explicit(v27, 0xFFFFFFFE, memory_order_relaxed) == 2)
            {
              WTF::StringImpl::destroy(v27, v23);
            }

            v28 = *buf;
            *buf = 0;
            if (v28 && atomic_fetch_add_explicit(v28, 0xFFFFFFFE, memory_order_relaxed) == 2)
            {
              WTF::StringImpl::destroy(v28, v23);
            }
          }

          v29 = v57;
          if (v57)
          {
            v30 = *(v57 - 3) + 1;
          }

          else
          {
            v30 = 1;
          }

          *(v57 - 3) = v30;
          v31 = (*(v29 - 4) + v30);
          v32 = *(v29 - 1);
          if (v32 > 0x400)
          {
            if (v32 > 2 * v31)
            {
              goto LABEL_43;
            }

LABEL_39:
            WTF::HashTable<WebCore::RegistrableDomain,WTF::KeyValuePair<WebCore::RegistrableDomain,WTF::String>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebCore::RegistrableDomain,WTF::String>>,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashMap<WebCore::RegistrableDomain,WTF::String,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::FastMalloc>::expand(&v57, v16);
            goto LABEL_43;
          }

          if (3 * v32 <= 4 * v31)
          {
            goto LABEL_39;
          }
        }

        else
        {
          v20 = 0;
          v21 = 1;
          while (1)
          {
            v22 = v16;
            if (*v16 != -1)
            {
              v22 = v20;
              if (WTF::equalIgnoringASCIICase(*v16, v9, v19))
              {
                break;
              }
            }

            v15 = (v15 + v21) & v14;
            v16 = &v13[2 * v15];
            ++v21;
            v20 = v22;
            if (WTF::equal(*v16, 0, v19))
            {
              if (v22)
              {
                *v22 = 0;
                v22[1] = 0;
                --*(v57 - 4);
                v16 = v22;
              }

              goto LABEL_25;
            }
          }

          v25 = v47;
          if (atomic_fetch_add_explicit(v9, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v9, v23);
          }
        }

LABEL_43:
        v33 = v48[0];
        v48[0] = 0;
        if (v33 && atomic_fetch_add_explicit(v33, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v33, v23);
        }

        ++v7;
      }

      while (v7 != v25);
      v34 = [obj countByEnumeratingWithState:&v53 objects:v58 count:16];
      v6 = v34;
      if (!v34)
      {
LABEL_50:
        WebKit::ListDataController<WebKit::StorageAccessUserAgentStringQuirkController,WTF::HashMap<WebCore::RegistrableDomain,WTF::String,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>>::setCachedListData(v44, &v57);
        goto LABEL_51;
      }
    }
  }

  v4 = qword_1ED641148;
  if (os_log_type_enabled(qword_1ED641148, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_error_impl(&dword_19D52D000, v4, OS_LOG_TYPE_ERROR, "Failed to request storage access user agent string quirks from WebPrivacy.", buf, 2u);
  }

LABEL_51:
  v48[0] = &v49;
  v48[1] = 1;
  *buf = &v52;
  v51 = 1;
  WTF::VectorBuffer<WTF::CompletionHandler<void ()(void)>,1ul,WTF::FastMalloc>::adopt(buf, &qword_1ED641D40);
  if (dword_1ED641D4C)
  {
    v35 = qword_1ED641D40;
    v36 = 8 * dword_1ED641D4C;
    do
    {
      v37 = *v35;
      *v35 = 0;
      if (v37)
      {
        (*(*v37 + 8))(v37);
      }

      ++v35;
      v36 -= 8;
    }

    while (v36);
  }

  WTF::VectorBuffer<WTF::CompletionHandler<void ()(void)>,1ul,WTF::FastMalloc>::adopt(&qword_1ED641D40, v48);
  if (HIDWORD(v51))
  {
    v39 = *buf;
    v40 = 8 * HIDWORD(v51);
    do
    {
      WTF::CompletionHandler<void ()(void)>::operator()(v39++);
      v40 -= 8;
    }

    while (v40);
  }

  WTF::Vector<WTF::CompletionHandler<void ()(void)>,1ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(buf, v38);
  WTF::Vector<WTF::CompletionHandler<void ()(void)>,1ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v48, v41);
  result = v57;
  if (v57)
  {
    return WTF::HashTable<WebCore::RegistrableDomain,WTF::KeyValuePair<WebCore::RegistrableDomain,WTF::String>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebCore::RegistrableDomain,WTF::String>>,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashMap<WebCore::RegistrableDomain,WTF::String,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::FastMalloc>::deallocateTable(v57, v42);
  }

  return result;
}

void sub_19D599F74(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, WTF::StringImpl *a14, uint64_t a15, uint64_t a16, WTF *a17, int a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, WTF::StringImpl **a30)
{
  if (a30)
  {
    WTF::HashTable<WebCore::RegistrableDomain,WTF::KeyValuePair<WebCore::RegistrableDomain,WTF::String>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebCore::RegistrableDomain,WTF::String>>,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashMap<WebCore::RegistrableDomain,WTF::String,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::FastMalloc>::deallocateTable(a30, a2);
  }

  _Unwind_Resume(exception_object);
}

WTF *WTF::VectorBuffer<WTF::String,0ul,WTF::FastMalloc>::adopt(uint64_t a1, _DWORD *a2)
{
  result = *a1;
  if (result)
  {
    *a1 = 0;
    *(a1 + 8) = 0;
    result = WTF::fastFree(result, a2);
  }

  v5 = *a2;
  *a2 = 0;
  *a1 = v5;
  LODWORD(v5) = a2[2];
  a2[2] = 0;
  *(a1 + 8) = v5;
  LODWORD(v5) = a2[3];
  a2[3] = 0;
  *(a1 + 12) = v5;
  return result;
}

unint64_t WTF::Vector<WTF::URL,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(uint64_t a1, unint64_t a2, unint64_t a3)
{
  v3 = a3;
  v5 = *a1;
  if (*a1 > a3 || v5 + 40 * *(a1 + 12) <= a3)
  {
    v10 = *(a1 + 8);
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

    WTF::Vector<WTF::URL,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::reserveCapacity<(WTF::FailureAction)0>(a1, v12);
  }

  else
  {
    v6 = a3 - v5;
    v7 = *(a1 + 8);
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

    WTF::Vector<WTF::URL,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::reserveCapacity<(WTF::FailureAction)0>(a1, v9);
    return *a1 + v6;
  }

  return v3;
}

uint64_t WTF::Vector<WTF::URL,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::appendSlowCase<(WTF::FailureAction)0,WTF::URL>(uint64_t a1, unint64_t a2)
{
  v3 = WTF::Vector<WTF::URL,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(a1, *(a1 + 12) + 1, a2);
  WTF::URL::URL(*a1 + 40 * *(a1 + 12), v3);
  ++*(a1 + 12);
  return 1;
}

uint64_t WebKit::ListDataController<WebKit::StorageAccessUserAgentStringQuirkController,WTF::HashMap<WebCore::RegistrableDomain,WTF::String,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>>::setCachedListData(void *a1, WTF::StringImpl *a2)
{
  v3 = *a2;
  *a2 = 0;
  v4 = a1[7];
  a1[7] = v3;
  if (v4)
  {
    WTF::HashTable<WebCore::RegistrableDomain,WTF::KeyValuePair<WebCore::RegistrableDomain,WTF::String>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebCore::RegistrableDomain,WTF::String>>,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashMap<WebCore::RegistrableDomain,WTF::String,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::FastMalloc>::deallocateTable(v4, a2);
  }

  v5 = *(*a1 + 24);

  return v5(a1);
}

uint64_t WTF::Vector<WTF::URL,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::reserveCapacity<(WTF::FailureAction)0>(uint64_t result, unint64_t a2)
{
  if (*(result + 8) >= a2)
  {
    return 1;
  }

  if (a2 < 0x6666667)
  {
    v2 = result;
    v3 = *result;
    v4 = (*result + 40 * *(result + 12));
    v5 = 40 * a2;
    v6 = WTF::fastMalloc((40 * a2));
    *(v2 + 8) = v5 / 0x28;
    *v2 = v6;
    WTF::VectorMover<false,WTF::URL>::move(v3, v4, v6);
    if (v3)
    {
      if (*v2 == v3)
      {
        *v2 = 0;
        *(v2 + 8) = 0;
      }

      WTF::fastFree(v3, v7);
    }

    return 1;
  }

  __break(0xC471u);
  return result;
}

unint64_t WTF::Vector<WebCore::OrganizationStorageAccessPromptQuirk,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(uint64_t a1, unint64_t a2, unint64_t a3)
{
  v3 = a3;
  v5 = *a1;
  if (*a1 > a3 || v5 + 32 * *(a1 + 12) <= a3)
  {
    v10 = *(a1 + 8);
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

    WTF::Vector<WebCore::OrganizationStorageAccessPromptQuirk,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::reserveCapacity<(WTF::FailureAction)0>(a1, v12);
  }

  else
  {
    v6 = a3 - v5;
    v7 = *(a1 + 8);
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

    WTF::Vector<WebCore::OrganizationStorageAccessPromptQuirk,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::reserveCapacity<(WTF::FailureAction)0>(a1, v9);
    return *a1 + v6;
  }

  return v3;
}

WTF *WTF::VectorBuffer<WTF::CompletionHandler<void ()(void)>,1ul,WTF::FastMalloc>::adopt(uint64_t a1, WTF **a2)
{
  v5 = (a1 + 16);
  result = *a1;
  if (result != v5)
  {
    if (result)
    {
      *a1 = 0;
      *(a1 + 8) = 0;
      result = WTF::fastFree(result, a2);
    }

    *a1 = v5;
  }

  v7 = a2 + 2;
  v6 = *a2;
  if (*a2 == (a2 + 2))
  {
    v9 = *(a2 + 3);
    if (v9)
    {
      v10 = 8 * v9;
      do
      {
        v11 = *v7;
        *v7 = 0;
        *v5 = v11;
        result = *v7;
        *v7 = 0;
        if (result)
        {
          result = (*(*result + 8))(result);
        }

        v5 = (v5 + 8);
        ++v7;
        v10 -= 8;
      }

      while (v10);
    }

    v8 = *(a2 + 2);
  }

  else
  {
    *a2 = v7;
    *a1 = v6;
    v8 = *(a2 + 2);
    *(a2 + 2) = 1;
  }

  *(a1 + 8) = v8;
  v12 = *(a2 + 3);
  *(a2 + 3) = 0;
  *(a1 + 12) = v12;
  return result;
}

uint64_t WTF::Vector<WebCore::OrganizationStorageAccessPromptQuirk,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::appendSlowCase<(WTF::FailureAction)0,WebCore::OrganizationStorageAccessPromptQuirk>(uint64_t a1, unint64_t a2)
{
  v3 = WTF::Vector<WebCore::OrganizationStorageAccessPromptQuirk,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(a1, *(a1 + 12) + 1, a2);
  v4 = (*a1 + 32 * *(a1 + 12));
  v5 = *v3;
  *v3 = 0;
  *v4 = v5;
  v4[1] = 0;
  v6 = *(v3 + 8);
  *(v3 + 8) = 0;
  v4[1] = v6;
  WTF::Vector<WTF::URL,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::Vector(v4 + 2, (v3 + 16));
  ++*(a1 + 12);
  return 1;
}

void sub_19D59A4F4(_Unwind_Exception *exception_object, void *a2)
{
  v4 = *(v2 + 8);
  if (v4)
  {
    WTF::HashTable<WebCore::RegistrableDomain,WTF::KeyValuePair<WebCore::RegistrableDomain,WTF::Vector<WebCore::RegistrableDomain,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebCore::RegistrableDomain,WTF::Vector<WebCore::RegistrableDomain,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>>,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashMap<WebCore::RegistrableDomain,WTF::Vector<WebCore::RegistrableDomain,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTraits<WTF::Vector<WebCore::RegistrableDomain,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::FastMalloc>::deallocateTable(v4, a2);
  }

  v5 = *v2;
  *v2 = 0;
  if (v5)
  {
    if (atomic_fetch_add_explicit(v5, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v5, a2);
    }
  }

  _Unwind_Resume(exception_object);
}

uint64_t WTF::Detail::CallableWrapper<WebKit::ListDataControllerBase::initializeIfNeeded(void)::$_0,void>::call(uint64_t result)
{
  v1 = *(result + 8);
  if (v1)
  {
    v2 = *(v1 + 8);
    if (v2)
    {
      ++*(v2 + 16);
      v3 = WTF::fastMalloc(0x10);
      *v3 = &unk_1F10EE830;
      v5 = v3;
      WTF::WeakHashSet<WebKit::ListDataObserver,WTF::DefaultWeakPtrImpl,(WTF::EnableWeakPtrThreadingAssertions)1>::forEach((v2 + 32), &v5);
      result = v5;
      if (v5)
      {
        result = (*(*v5 + 8))(v5);
      }

      if (*(v2 + 16) == 1)
      {
        v4 = *(*v2 + 8);

        return v4(v2);
      }

      else
      {
        --*(v2 + 16);
      }
    }
  }

  return result;
}

void sub_19D59A624(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (a10)
  {
    (*(*a10 + 8))(a10);
  }

  if (v10[4] == 1)
  {
    (*(*v10 + 8))(v10);
  }

  else
  {
    --v10[4];
  }

  _Unwind_Resume(exception_object);
}

WTF::StringImpl *WTF::VectorMover<false,WTF::URL>::move(WTF::StringImpl *result, uint64_t *a2, uint64_t a3)
{
  if (result != a2)
  {
    v5 = result;
    do
    {
      WTF::URL::URL(a3, v5);
      result = *v5;
      *v5 = 0;
      if (result)
      {
        if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          result = WTF::StringImpl::destroy(result, v6);
        }
      }

      a3 += 40;
      v5 += 5;
    }

    while (v5 != a2);
  }

  return result;
}

uint64_t WTF::Vector<WebCore::OrganizationStorageAccessPromptQuirk,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::reserveCapacity<(WTF::FailureAction)0>(uint64_t result, unint64_t a2)
{
  if (*(result + 8) >= a2)
  {
    return 1;
  }

  v2 = a2;
  if (!(a2 >> 27))
  {
    v3 = result;
    v4 = *result;
    v5 = (*result + 32 * *(result + 12));
    v6 = WTF::fastMalloc((32 * a2));
    *(v3 + 8) = v2;
    *v3 = v6;
    WTF::VectorMover<false,WebCore::OrganizationStorageAccessPromptQuirk>::move(v4, v5, v6);
    if (v4)
    {
      if (*v3 == v4)
      {
        *v3 = 0;
        *(v3 + 8) = 0;
      }

      WTF::fastFree(v4, v7);
    }

    return 1;
  }

  __break(0xC471u);
  return result;
}

uint64_t WTF::WeakHashSet<WebKit::ListDataObserver,WTF::DefaultWeakPtrImpl,(WTF::EnableWeakPtrThreadingAssertions)1>::forEach(void **a1, uint64_t a2)
{
  v18 = 0;
  v19 = 0;
  WTF::Mapper<WTF::WeakHashSet<WebKit::ListDataObserver,WTF::DefaultWeakPtrImpl,(WTF::EnableWeakPtrThreadingAssertions)1>::forEach(WTF::Function<void ()(WebKit::ListDataObserver&)> const&)::{lambda(WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>> const&)#1},WTF::Vector<WTF::WeakPtr<WebKit::ListDataObserver,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::HashSet<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>,WTF::DefaultHash<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>>,WTF::HashTraits<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1> &,void>::map(&v18, a1);
  if (HIDWORD(v19))
  {
    v5 = v18;
    v6 = &v18[HIDWORD(v19)];
    do
    {
      v7 = *v5;
      if (*v5)
      {
        v4 = *(v7 + 8);
        if (v4)
        {
          v8 = *a1;
          if (*a1)
          {
            v9 = *(v8 - 2);
            v10 = (~(v7 << 32) + v7) ^ ((~(v7 << 32) + v7) >> 22);
            v11 = 9 * ((v10 + ~(v10 << 13)) ^ ((v10 + ~(v10 << 13)) >> 8));
            v12 = (v11 ^ (v11 >> 15)) + ~((v11 ^ (v11 >> 15)) << 27);
            v13 = v9 & ((v12 >> 31) ^ v12);
            for (i = 1; ; ++i)
            {
              v15 = v8[v13];
              if (!v15)
              {
                break;
              }

              if (v15 != -1 && v15 == v7)
              {
                (*(**a2 + 16))();
                break;
              }

              v13 = (v13 + i) & v9;
            }
          }
        }
      }

      ++v5;
    }

    while (v5 != v6);
  }

  return WTF::Vector<WTF::WeakPtr<WebKit::ListDataObserver,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v18, v4);
}

void sub_19D59A8CC(_Unwind_Exception *a1, void *a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  WTF::Vector<WTF::WeakPtr<WebKit::ListDataObserver,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(va, a2);
  _Unwind_Resume(a1);
}

_DWORD *WTF::Mapper<WTF::WeakHashSet<WebKit::ListDataObserver,WTF::DefaultWeakPtrImpl,(WTF::EnableWeakPtrThreadingAssertions)1>::forEach(WTF::Function<void ()(WebKit::ListDataObserver&)> const&)::{lambda(WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>> const&)#1},WTF::Vector<WTF::WeakPtr<WebKit::ListDataObserver,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::HashSet<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>,WTF::DefaultHash<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>>,WTF::HashTraits<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1> &,void>::map(_DWORD *result, void **a2)
{
  v3 = result;
  if (*a2)
  {
    v4 = *(*a2 - 3);
    if (v4)
    {
      if (v4 >> 29)
      {
        __break(0xC471u);
        return result;
      }

      v5 = WTF::fastMalloc((8 * v4));
      v3[2] = v4;
      *v3 = v5;
    }
  }

  result = WTF::HashTable<WTF::String,WTF::String,WTF::IdentityExtractor,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::begin(a2);
  v6 = result;
  v8 = v7;
  if (*a2)
  {
    v9 = &(*a2)[*(*a2 - 1)];
  }

  else
  {
    v9 = 0;
  }

  if (v9 != result)
  {
    do
    {
      v10 = *(*v6 + 8);
      if (v10)
      {
        result = WTF::WeakPtrFactory<WebPushD::PushServiceConnection,WTF::DefaultWeakPtrImpl>::initializeIfNeeded(*(*v6 + 8), *(*v6 + 8));
        v11 = *v10;
        if (*v10)
        {
          atomic_fetch_add(v11, 1u);
        }
      }

      else
      {
        v11 = 0;
      }

      v12 = v3[3];
      *(*v3 + 8 * v12) = v11;
      v3[3] = v12 + 1;
      do
      {
        v6 += 8;
      }

      while (v6 != v8 && (*v6 + 1) <= 1);
    }

    while (v6 != v9);
  }

  return result;
}

double WTF::URL::URL(uint64_t a1, uint64_t *a2)
{
  v2 = *a2;
  *a2 = 0;
  *a1 = v2;
  v3 = *(a1 + 8) & 0xFFFFFFFE | a2[1] & 1;
  *(a1 + 8) = v3;
  v4 = v3 & 0xFFFFFFFD | (2 * ((*(a2 + 2) >> 1) & 1));
  *(a1 + 8) = v4;
  v5 = v4 & 0xFFFFFFFB | (4 * ((*(a2 + 2) >> 2) & 1));
  *(a1 + 8) = v5;
  v6 = v5 & 0xFFFFFFC7 | (8 * ((*(a2 + 2) >> 3) & 7));
  *(a1 + 8) = v6;
  *(a1 + 8) = a2[1] & 0xFFFFFFC0 | v6 & 0x3F;
  *(a1 + 12) = *(a2 + 12);
  result = *(a2 + 28);
  *(a1 + 28) = result;
  *(a1 + 36) = *(a2 + 9);
  *(a2 + 2) &= ~1u;
  return result;
}

WTF::StringImpl *WTF::VectorMover<false,WebCore::OrganizationStorageAccessPromptQuirk>::move(WTF::StringImpl *result, WTF::StringImpl **a2, uint64_t a3)
{
  if (result != a2)
  {
    v4 = (a3 + 16);
    v5 = (result + 16);
    do
    {
      v7 = (v5 - 4);
      v6 = *(v5 - 2);
      *(v5 - 2) = 0;
      *(v4 - 2) = v6;
      *(v4 - 1) = 0;
      v8 = *(v5 - 1);
      *(v5 - 1) = 0;
      *(v4 - 1) = v8;
      WTF::Vector<WTF::URL,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::Vector(v4, v5);
      WTF::Vector<WTF::URL,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v5, v9);
      v11 = *(v5 - 1);
      if (v11)
      {
        WTF::HashTable<WebCore::RegistrableDomain,WTF::KeyValuePair<WebCore::RegistrableDomain,WTF::Vector<WebCore::RegistrableDomain,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebCore::RegistrableDomain,WTF::Vector<WebCore::RegistrableDomain,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>>,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashMap<WebCore::RegistrableDomain,WTF::Vector<WebCore::RegistrableDomain,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTraits<WTF::Vector<WebCore::RegistrableDomain,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::FastMalloc>::deallocateTable(v11, v10);
      }

      result = *v7;
      *v7 = 0;
      if (result)
      {
        if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          result = WTF::StringImpl::destroy(result, v10);
        }
      }

      v4 += 4;
      v5 += 8;
    }

    while (v7 + 4 != a2);
  }

  return result;
}

void sub_19D59AB40(_Unwind_Exception *exception_object, void *a2)
{
  v4 = *(v2 - 8);
  if (v4)
  {
    WTF::HashTable<WebCore::RegistrableDomain,WTF::KeyValuePair<WebCore::RegistrableDomain,WTF::Vector<WebCore::RegistrableDomain,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebCore::RegistrableDomain,WTF::Vector<WebCore::RegistrableDomain,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>>,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashMap<WebCore::RegistrableDomain,WTF::Vector<WebCore::RegistrableDomain,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTraits<WTF::Vector<WebCore::RegistrableDomain,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::FastMalloc>::deallocateTable(v4, a2);
  }

  v5 = *(v2 - 16);
  *(v2 - 16) = 0;
  if (v5)
  {
    if (atomic_fetch_add_explicit(v5, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v5, a2);
    }
  }

  _Unwind_Resume(exception_object);
}

void WTF::Detail::CallableWrapper<WebKit::WebProcessPool::WebProcessPool(API::ProcessPoolConfiguration &)::$_9,void>::call(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1)
  {
    v2 = *(v1 + 8);
    if (v2)
    {
      CFRetain(*(v2 - 8));
      v29 = 0;
      {
        if (dword_1ED63B6E4)
        {
          v5 = off_1ED63B6D8;
          v6 = off_1ED63B6D8 + 32 * dword_1ED63B6E4;
          do
          {
            v7 = *(v5 + 7);
            if (v7)
            {
              v8 = *(v5 + 2);
              v9 = 40 * v7;
              do
              {
                WebCore::RegistrableDomain::uncheckedCreateFromRegistrableDomainString(v8, v28);
                WTF::HashTable<WebCore::RegistrableDomain,WebCore::RegistrableDomain,WTF::IdentityExtractor,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::FastMalloc>::add<(WTF::ShouldValidateKey)1>(&v29, v28, v10, v30);
                v11 = v28[0];
                v28[0] = 0;
                if (v11 && atomic_fetch_add_explicit(v11, 0xFFFFFFFE, memory_order_relaxed) == 2)
                {
                  WTF::StringImpl::destroy(v11, v3);
                }

                v8 += 5;
                v9 -= 40;
              }

              while (v9);
            }

            else
            {
              v12 = WTF::HashTable<WebCore::RegistrableDomain,WTF::KeyValuePair<WebCore::RegistrableDomain,WTF::Vector<WebCore::RegistrableDomain,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebCore::RegistrableDomain,WTF::Vector<WebCore::RegistrableDomain,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>>,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashMap<WebCore::RegistrableDomain,WTF::Vector<WebCore::RegistrableDomain,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTraits<WTF::Vector<WebCore::RegistrableDomain,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::FastMalloc>::begin(v5 + 1, v3, v4);
              v13 = v12;
              v14 = *(v5 + 1);
              if (v14)
              {
                v15 = (v14 + 24 * *(v14 - 4));
              }

              else
              {
                v15 = 0;
              }

              v28[0] = v12;
              for (v28[1] = v3; v28[0] != v15; v13 = v28[0])
              {
                WTF::HashTable<WebCore::RegistrableDomain,WebCore::RegistrableDomain,WTF::IdentityExtractor,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::FastMalloc>::add<(WTF::ShouldValidateKey)1>(&v29, v13, v4, v30);
                v28[0] = (v28[0] + 24);
                WTF::HashTableConstIterator<WTF::HashTable<WebCore::RegistrableDomain,WTF::KeyValuePair<WebCore::RegistrableDomain,WTF::Vector<WebCore::RegistrableDomain,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebCore::RegistrableDomain,WTF::Vector<WebCore::RegistrableDomain,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>>,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashMap<WebCore::RegistrableDomain,WTF::Vector<WebCore::RegistrableDomain,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTraits<WTF::Vector<WebCore::RegistrableDomain,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::FastMalloc>,WebCore::RegistrableDomain,WTF::KeyValuePair<WebCore::RegistrableDomain,WTF::Vector<WebCore::RegistrableDomain,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebCore::RegistrableDomain,WTF::Vector<WebCore::RegistrableDomain,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>>,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashMap<WebCore::RegistrableDomain,WTF::Vector<WebCore::RegistrableDomain,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTraits<WTF::Vector<WebCore::RegistrableDomain,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WebCore::RegistrableDomain>>::skipEmptyBuckets(v28, v16, v17);
              }
            }

            v5 += 32;
          }

          while (v5 != v6);
        }
      }

      else
      {
        *algn_1ED63B6A8 = 0u;
        *&qword_1ED63B6C8 = 0u;
        dword_1ED63B6B0 = 1;
        qword_1ED63B6B8 = 0;
        unk_1ED63B6C0 = 0;
        qword_1ED63B6C8 = 0;
        byte_1ED63B6D0 = 0;
        off_1ED63B6D8 = 0;
        *&dword_1ED63B6E0 = 0;
        WebKit::ListDataController<WebKit::StorageAccessPromptQuirkController,WTF::Vector<WebCore::OrganizationStorageAccessPromptQuirk,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>::sharedSingleton(void)::sharedInstance = &unk_1F10EE4C0;
      }

      v18 = *(v2 + 68);
      if (v18)
      {
        v19 = *(v2 + 56);
        v20 = 8 * v18;
        do
        {
          v21 = *v19;
          v22 = *(*v19 + 80);
          if (v22 && (*(v22 + 104) & 1) != 0 || *(v21 + 88))
          {
            v23 = IPC::Encoder::operator new(0x238, v3);
            *v23 = 3019;
            *(v23 + 68) = 0;
            *(v23 + 70) = 0;
            *(v23 + 69) = 0;
            *(v23 + 2) = 0;
            *(v23 + 3) = 0;
            *(v23 + 1) = 0;
            IPC::Encoder::encodeHeader(v23);
            v28[0] = v23;
            IPC::ArgumentCoder<WTF::HashSet<WebCore::RegistrableDomain,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>,void>::encode<IPC::Encoder>(v23, &v29);
            LOBYTE(v30[0]) = 0;
            v31 = 0;
            WebKit::AuxiliaryProcessProxy::sendMessage(v21, v28, 0, v30, 1);
            if (v31 == 1)
            {
              v24 = v30[0];
              v30[0] = 0;
              if (v24)
              {
                (*(*v24 + 8))(v24);
              }
            }

            v25 = v28[0];
            v28[0] = 0;
            if (v25)
            {
              IPC::Encoder::~Encoder(v25, v3);
              bmalloc::api::tzoneFree(v26, v27);
            }
          }

          ++v19;
          v20 -= 8;
        }

        while (v20);
      }

      if (v29)
      {
        WTF::HashTable<WTF::String,WTF::String,WTF::IdentityExtractor,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::deallocateTable(v29, v3);
      }

      CFRelease(*(v2 - 8));
    }
  }
}

uint64_t WTF::Vector<WTF::URL,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(uint64_t a1, void *a2)
{
  v3 = *(a1 + 12);
  if (v3)
  {
    WTF::VectorDestructor<true,WTF::URL>::destruct(*a1, (*a1 + 40 * v3));
  }

  v4 = *a1;
  if (*a1)
  {
    *a1 = 0;
    *(a1 + 8) = 0;
    WTF::fastFree(v4, a2);
  }

  return a1;
}

unsigned int *WTF::Vector<WebCore::OrganizationStorageAccessPromptQuirk,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::shrinkCapacity(unsigned int *result, unint64_t a2)
{
  if (result[2] > a2)
  {
    v3 = result;
    if (result[3] > a2)
    {
      result = WTF::Vector<WebCore::OrganizationStorageAccessPromptQuirk,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::shrink(result, a2);
    }

    v4 = *v3;
    if (a2)
    {
      if (a2 >> 27)
      {
        __break(0xC471u);
        return result;
      }

      v5 = v3[3];
      result = WTF::fastMalloc((32 * a2));
      v3[2] = a2;
      *v3 = result;
      if (result != v4)
      {
        result = WTF::VectorMover<false,WebCore::OrganizationStorageAccessPromptQuirk>::move(v4, v4 + 4 * v5, result);
      }
    }

    if (v4)
    {
      if (*v3 == v4)
      {
        *v3 = 0;
        v3[2] = 0;
      }

      return WTF::fastFree(v4, a2);
    }
  }

  return result;
}

void WebKit::StorageAccessPromptQuirkController::didUpdateCachedListData(WebKit::StorageAccessPromptQuirkController *this)
{
  v6 = *MEMORY[0x1E69E9840];
  WTF::Vector<WebCore::OrganizationStorageAccessPromptQuirk,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::shrinkCapacity(this + 14, *(this + 17));
  v2 = qword_1ED641148;
  if (os_log_type_enabled(qword_1ED641148, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(this + 17);
    v4 = 134217984;
    v5 = v3;
    _os_log_impl(&dword_19D52D000, v2, OS_LOG_TYPE_DEFAULT, "StorageAccessPromptQuirkController::didUpdateCachedListData: Loaded %lu storage access prompt(s) quirks from WebPrivacy.", &v4, 0xCu);
  }
}

uint64_t WTF::Vector<WTF::WeakPtr<WebKit::ListDataObserver,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(uint64_t a1, void *a2)
{
  v3 = *(a1 + 12);
  if (v3)
  {
    WTF::VectorDestructor<true,WTF::WeakPtr<WebKit::ListDataObserver,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>>::destruct(*a1, (*a1 + 8 * v3));
  }

  v4 = *a1;
  if (*a1)
  {
    *a1 = 0;
    *(a1 + 8) = 0;
    WTF::fastFree(v4, a2);
  }

  return a1;
}

unsigned int *WTF::VectorDestructor<true,WTF::WeakPtr<WebKit::ListDataObserver,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>>::destruct(unsigned int *result, void *a2)
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

      ++v3;
    }

    while (v3 != a2);
  }

  return result;
}

uint64_t WTF::Vector<WTF::CompletionHandler<void ()(void)>,1ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(uint64_t a1, void *a2)
{
  v3 = *(a1 + 12);
  v4 = *a1;
  if (v3)
  {
    v5 = 8 * v3;
    do
    {
      v6 = *v4;
      *v4 = 0;
      if (v6)
      {
        (*(*v6 + 8))(v6);
      }

      v4 = (v4 + 8);
      v5 -= 8;
    }

    while (v5);
    v4 = *a1;
  }

  if ((a1 + 16) != v4 && v4 != 0)
  {
    *a1 = 0;
    *(a1 + 8) = 0;
    WTF::fastFree(v4, a2);
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WebKit::ListDataControllerBase::initializeIfNeeded(void)::$_0,void>::~CallableWrapper(WTF *this, void *a2)
{
  v3 = *(this + 1);
  *this = &unk_1F10EE808;
  *(this + 1) = 0;
  if (v3 && atomic_fetch_add(v3, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v3);
    WTF::fastFree(v3, a2);
  }

  return WTF::fastFree(this, a2);
}

WTF::StringImpl **WebCore::RegistrableDomain::uncheckedCreateFromRegistrableDomainString@<X0>(WTF::StringImpl **this@<X0>, WTF::StringImpl **a2@<X8>)
{
  v4 = *this;
  if (*this && (atomic_fetch_add_explicit(v4, 2u, memory_order_relaxed), *(v4 + 1)))
  {
    *a2 = v4;
  }

  else
  {
    this = WTF::StringImpl::createWithoutCopyingNonEmpty();
    *a2 = v6;
    if (v4)
    {
      if (atomic_fetch_add_explicit(v4, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        return WTF::StringImpl::destroy(v4, v5);
      }
    }
  }

  return this;
}

void sub_19D59B260(_Unwind_Exception *exception_object, WTF::StringImpl *a2)
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

uint64_t WTF::Vector<WebCore::OrganizationStorageAccessPromptQuirk,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(uint64_t a1, void *a2)
{
  v3 = *(a1 + 12);
  if (v3)
  {
    v6 = *a1;
    v7 = 32 * v3;
    do
    {
      WebCore::OrganizationStorageAccessPromptQuirk::~OrganizationStorageAccessPromptQuirk(v6, a2);
      v6 = (v8 + 32);
      v7 -= 32;
    }

    while (v7);
  }

  v4 = *a1;
  if (*a1)
  {
    *a1 = 0;
    *(a1 + 8) = 0;
    WTF::fastFree(v4, a2);
  }

  return a1;
}

WTF::StringImpl *API::ContentRuleListStore::lookupContentRuleList(CFTypeRef *a1, const WTF::String *a2, const WTF::String *a3)
{
  API::constructedPath((a1 + 2), a2, a3);
  v6 = *a3;
  *a3 = 0;
  v9 = v6;
  API::ContentRuleListStore::lookupContentRuleListFile(a1, &v10, a2, &v9);
  if (v9)
  {
    (*(*v9 + 8))(v9);
  }

  result = v10;
  v10 = 0;
  if (result)
  {
    if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      return WTF::StringImpl::destroy(result, v7);
    }
  }

  return result;
}

uint64_t WTF::tryMakeString<WTF::ASCIILiteral,WTF::String>@<X0>(void *a1@<X0>, uint64_t *a2@<X1>, void *a3@<X8>)
{
  v3 = a1[1];
  v4 = v3 != 0;
  v5 = v3 - 1;
  if (!v4)
  {
    v5 = 0;
  }

  v8[0] = *a1;
  v8[1] = v5;
  if (v5 >> 31)
  {
    result = 161;
    __break(0xC471u);
  }

  else
  {
    v7 = *a2;
    return WTF::tryMakeStringFromAdapters<WTF::StringTypeAdapter<WTF::ASCIILiteral,void>,WTF::StringTypeAdapter<WTF::String,void>>(v8, &v7, a3);
  }

  return result;
}

WTF::StringImpl *API::constructedPath(API *this, const WTF::String *a2, const WTF::String *a3)
{
  if (!*this || !*(*this + 4))
  {
    __break(0xC471u);
    goto LABEL_13;
  }

  WTF::FileSystemImpl::encodeForFileName(&v6, a2, a2);
  v8[0] = "ContentRuleList-";
  v8[1] = 17;
  WTF::tryMakeString<WTF::ASCIILiteral,WTF::String>(v8, &v6, &v7);
  if (!v7)
  {
    __break(0xC471u);
LABEL_13:
    JUMPOUT(0x19D59B530);
  }

  WTF::FileSystemImpl::pathByAppendingComponent();
  v4 = v7;
  v7 = 0;
  if (v4 && atomic_fetch_add_explicit(v4, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v4, v3);
  }

  result = v6;
  v6 = 0;
  if (result)
  {
    if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      return WTF::StringImpl::destroy(result, v3);
    }
  }

  return result;
}

uint64_t WTF::tryMakeStringFromAdapters<WTF::StringTypeAdapter<WTF::ASCIILiteral,void>,WTF::StringTypeAdapter<WTF::String,void>>@<X0>(uint64_t result@<X0>, uint64_t *a2@<X1>, void *a3@<X8>)
{
  v3 = *(result + 8);
  v4 = *a2;
  if (*a2)
  {
    v5 = *(v4 + 4);
  }

  else
  {
    v5 = 0;
  }

  if (((v5 | v3) & 0x80000000) != 0 || (v6 = __OFADD__(v3, v5), v7 = (v3 + v5), v6))
  {
    *a3 = 0;
  }

  else
  {
    if (v4)
    {
      v8 = (*(v4 + 16) >> 2) & 1;
    }

    else
    {
      v8 = 1;
    }

    return WTF::tryMakeStringImplFromAdaptersInternal<WTF::StringTypeAdapter<WTF::ASCIILiteral,void>,WTF::StringTypeAdapter<WTF::String,void>>(v7, v8, *result, v3, v4, a3);
  }

  return result;
}

uint64_t WTF::tryMakeStringImplFromAdaptersInternal<WTF::StringTypeAdapter<WTF::ASCIILiteral,void>,WTF::StringTypeAdapter<WTF::String,void>>@<X0>(uint64_t result@<X0>, int a2@<W1>, _OWORD *a3@<X2>, size_t a4@<X3>, _DWORD *a5@<X4>, void *a6@<X8>)
{
  v10 = result;
  v12 = result;
  if (a2)
  {
    if (result)
    {
      if ((result & 0x80000000) == 0)
      {
        result = WTF::tryFastCompactMalloc((result + 20));
        v13 = v25;
        if (v25)
        {
          v6 = v25 + 5;
          *v25 = 2;
          v13[1] = v10;
          *(v13 + 1) = v13 + 5;
          v13[4] = 4;
          if (a4)
          {
            if (a4 == 1)
            {
              goto LABEL_26;
            }

            memcpy(v13 + 5, a3, a4);
          }

          while (v12 < a4)
          {
LABEL_25:
            __break(1u);
LABEL_26:
            *v6 = *a3;
          }

          v25 = a5;
          result = WTF::StringTypeAdapter<WTF::StringImpl *,void>::writeTo<unsigned char>(&v25, &v6[a4]);
        }

        goto LABEL_24;
      }

LABEL_12:
      v13 = 0;
      goto LABEL_24;
    }

LABEL_13:
    v13 = MEMORY[0x1E696EB88];
    atomic_fetch_add_explicit(MEMORY[0x1E696EB88], 2u, memory_order_relaxed);
    goto LABEL_24;
  }

  if (!result)
  {
    goto LABEL_13;
  }

  if (result > 0x7FFFFFEF)
  {
    goto LABEL_12;
  }

  result = WTF::tryFastCompactMalloc((2 * result + 20));
  v13 = v25;
  if (v25)
  {
    v14 = (v25 + 5);
    *v25 = 2;
    v13[1] = v10;
    *(v13 + 1) = v13 + 5;
    v13[4] = 0;
    if (a4 < 0x40)
    {
      v15 = (v13 + 5);
    }

    else
    {
      v15 = &v14[2 * (a4 & 0x7FFFFFFFFFFFFFC0)];
      v16 = 0uLL;
      v17 = (v13 + 5);
      do
      {
        v26.val[0] = *a3;
        v18 = *(a3 + 1);
        v27.val[0] = a3[2];
        v19 = a3[3];
        a3 += 4;
        v20 = v19;
        v27.val[1] = 0uLL;
        v28.val[0] = v18;
        v26.val[1] = 0uLL;
        v21 = v17;
        vst2q_s8(v21, v26);
        v21 += 32;
        v28.val[1] = 0uLL;
        vst2q_s8(v21, v28);
        v22 = v17 + 64;
        vst2q_s8(v22, v27);
        v23 = v17 + 96;
        vst2q_s8(v23, *(&v16 - 1));
        v17 += 128;
      }

      while (v17 != v15);
    }

    while (v15 != v13 + 2 * a4 + 20)
    {
      v24 = *a3;
      a3 = (a3 + 1);
      *v15 = v24;
      v15 += 2;
    }

    if (v12 < a4)
    {
      goto LABEL_25;
    }

    v25 = a5;
    result = WTF::StringTypeAdapter<WTF::StringImpl *,void>::writeTo<char16_t>(&v25, &v14[2 * a4]);
  }

LABEL_24:
  *a6 = v13;
  return result;
}

void API::ContentRuleListStore::lookupContentRuleListFile(CFTypeRef *a1, uint64_t a2, uint64_t a3, WTF::StringImpl **a4)
{
  v6 = API::fileSystemQueueSingleton(a1);
  CFRetain(a1[1]);
  WTF::String::isolatedCopy();
  WTF::String::isolatedCopy();
  v7 = *a4;
  *a4 = 0;
  v11[1] = v7;
  v8 = WTF::fastMalloc(0x28);
  *v8 = &unk_1F111B158;
  *(v8 + 8) = a1;
  *(v8 + 16) = v10;
  *(v8 + 24) = *v11;
  v12 = v8;
  (*(*v6 + 48))(v6, &v12);
  v9 = v12;
  v12 = 0;
  if (v9)
  {
    (*(*v9 + 8))(v9);
  }
}

void WTF::Detail::CallableWrapper<API::ContentRuleListStore::lookupContentRuleListFile(WTF::String &&,WTF::String &,WTF::CompletionHandler<void ()(WTF::RefPtr<API::ContentRuleList,WTF::RawPtrTraits<WTF::RefPtr>,WTF::DefaultRefDerefTraits<WTF::RefPtr>>,std::error_code)>)::$_0,void>::call(void *a1)
{
  API::openAndMapContentRuleList(&v74, (a1 + 2));
  if ((v82 & 1) == 0)
  {
    WTF::RunLoop::mainSingleton(size);
    v14 = a1[1];
    a1[1] = 0;
    v15 = a1[4];
    a1[4] = 0;
    v16 = WTF::fastMalloc(0x18);
    *v16 = &unk_1F111B180;
    v16[1] = v14;
    v16[2] = v15;
    goto LABEL_74;
  }

  v3 = v74;
  v62 = v74 != 20;
  v4 = 64;
  if (v74 < 0xC)
  {
    v4 = 48;
  }

  v5 = (*(&v74 + 1) + v75);
  v6 = (v4 + *(&v74 + 1) + v75);
  v7 = *(&v75 + 1);
  v8 = v76;
  v9 = v6 + *(&v75 + 1);
  v10 = *(&v76 + 1);
  if (v80 || (size = data) == 0)
  {
    v11 = *(&v80 + 1);
  }

  else
  {
    size = dispatch_data_get_size(data);
    v11 = size;
  }

  if (!v7)
  {
    v17 = 1;
    goto LABEL_29;
  }

  if (v9 > v11)
  {
    API::getContentRuleListSourceFromMappedFile(v83, &v74);
    v13 = v83[0];
LABEL_67:
    v83[0] = 0;
    if (v13)
    {
LABEL_71:
      if (atomic_fetch_add_explicit(v13, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        v13 = WTF::StringImpl::destroy(v13, v12);
      }
    }

    goto LABEL_73;
  }

  size = WebKit::NetworkCache::Data::span(&data);
  v5 = (v18 - v6);
  if (v18 < v6)
  {
    goto LABEL_97;
  }

  v19 = *(&v75 + 1);
  if (*(&v75 + 1) == -1)
  {
    goto LABEL_98;
  }

  if (v5 < *(&v75 + 1))
  {
    goto LABEL_97;
  }

  while (1)
  {
    v63[0] = (v6 + size);
    v63[1] = v19;
    size = WebCore::ContentExtensions::DFABytecodeInterpreter::actionsMatchingEverything(v83, v63);
    v21 = v83[0];
    if (!v83[0])
    {
      v6 = 0;
      goto LABEL_28;
    }

    v22 = *(v83[0] - 3);
    if (!v22)
    {
      v6 = 0;
LABEL_27:
      size = WTF::fastFree((v21 - 16), v20);
      goto LABEL_28;
    }

    if (v22 >> 29)
    {
      __break(0xC471u);
      return;
    }

    size = WTF::fastMalloc((8 * v22));
    v6 = size;
    v21 = v83[0];
    if (v83[0])
    {
      if (*(v83[0] - 3))
      {
        v23 = *(v83[0] - 1);
        v24 = v83[0];
        if (v23)
        {
          v25 = 8 * v23;
          v24 = v83[0];
          while (*v24 >= 0xFFFFFFFFFFFFFFFELL)
          {
            v24 = (v24 + 8);
            v25 -= 8;
            if (!v25)
            {
              goto LABEL_27;
            }
          }
        }

        v54 = (v83[0] + 8 * v23);
        if (v24 != v54)
        {
          v55 = 0;
          v56 = 1;
LABEL_82:
          v57 = v56;
          v58 = *v24;
          v24 = (v24 + 8);
          *(size + v55++) = v58;
          while (v24 != v54)
          {
            if (*v24 < 0xFFFFFFFFFFFFFFFELL)
            {
              ++v56;
              if (v24 != v54)
              {
                goto LABEL_82;
              }

              break;
            }

            v24 = (v24 + 8);
          }

          WTF::fastFree((v21 - 16), v20);
          if (v55)
          {
            v59 = 0;
            do
            {
              v60 = v6[v59 / 8];
              v17 = v60 < v75;
              v61 = v60 >= v75 || 8 * v57 - 8 == v59;
              v59 += 8;
            }

            while (!v61);
          }

          else
          {
            v17 = 1;
          }

LABEL_96:
          size = WTF::fastFree(v6, v20);
          goto LABEL_29;
        }
      }

      goto LABEL_27;
    }

LABEL_28:
    v17 = 1;
    if (v6)
    {
      goto LABEL_96;
    }

LABEL_29:
    if (v3 != 20 || &v9[v8 + v10] != v11 || !v17)
    {
      break;
    }

    v11 = WTF::RunLoop::mainSingleton(size);
    v26 = a1[1];
    a1[1] = 0;
    v63[0] = v26;
    v6 = v63;
    size = WTF::String::isolatedCopy();
    if (v82)
    {
      v66 = v76;
      v67 = v77;
      v68 = v78;
      *v64 = v74;
      v65 = v75;
      object = data;
      if (data)
      {
        os_retain(data);
      }

      v70 = v80;
      v71 = v81;
      v27 = a1[4];
      a1[4] = 0;
      v72 = v27;
      v28 = WTF::fastMalloc(0x88);
      *v28 = &unk_1F111B1F8;
      *(v28 + 8) = v63[0];
      v29 = v63[1];
      v63[0] = 0;
      v63[1] = 0;
      *(v28 + 16) = v29;
      v30 = v68;
      v31 = v67;
      v32 = v65;
      *(v28 + 56) = v66;
      *(v28 + 72) = v31;
      *(v28 + 40) = v32;
      *(v28 + 88) = v30;
      *(v28 + 24) = *v64;
      v33 = object;
      *(v28 + 96) = object;
      if (v33)
      {
        os_retain(v33);
      }

      v34 = v70;
      *(v28 + 120) = v71;
      *(v28 + 104) = v34;
      v35 = v72;
      v72 = 0;
      *(v28 + 128) = v35;
      v83[0] = v28;
      WTF::RunLoop::dispatch();
      v37 = v83[0];
      v83[0] = 0;
      if (v37)
      {
        (*(*v37 + 8))(v37);
      }

      v38 = v72;
      v72 = 0;
      if (v38)
      {
        (*(*v38 + 8))(v38);
      }

      if (object)
      {
        os_release(object);
      }

      v39 = v63[1];
      v63[1] = 0;
      if (v39 && atomic_fetch_add_explicit(v39, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v39, v36);
      }

      v40 = v63[0];
      v63[0] = 0;
      if (v40)
      {
        CFRelease(*(v40 + 1));
      }

      goto LABEL_76;
    }

LABEL_97:
    __break(1u);
LABEL_98:
    v19 = v5;
  }

  if ((v82 & 1) == 0)
  {
    goto LABEL_97;
  }

  API::getContentRuleListSourceFromMappedFile(v83, &v74);
  v13 = v83[0];
  if (!v17)
  {
    goto LABEL_67;
  }

  if (v83[0])
  {
    if (!*(v83[0] + 1))
    {
      v83[0] = 0;
      goto LABEL_71;
    }

    WTF::RunLoop::mainSingleton(v83[0]);
    v41 = a1[1];
    a1[1] = 0;
    v63[0] = v41;
    WTF::String::isolatedCopy();
    WTF::String::isolatedCopy();
    v42 = a1[4];
    a1[4] = 0;
    v64[1] = v42;
    v43 = WTF::fastMalloc(0x28);
    *v43 = &unk_1F111B1A8;
    *(v43 + 8) = v63[0];
    *(v43 + 16) = v63[1];
    *(v43 + 24) = *v64;
    *v63 = 0u;
    *v64 = 0u;
    v73 = v43;
    WTF::RunLoop::dispatch();
    v45 = v73;
    v73 = 0;
    if (v45)
    {
      (*(*v45 + 8))(v45);
    }

    v46 = v64[1];
    v64[1] = 0;
    if (v46)
    {
      (*(*v46 + 8))(v46);
    }

    v47 = v64[0];
    v64[0] = 0;
    if (v47 && atomic_fetch_add_explicit(v47, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v47, v44);
    }

    v48 = v63[1];
    v63[1] = 0;
    if (v48 && atomic_fetch_add_explicit(v48, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v48, v44);
    }

    v49 = v63[0];
    v63[0] = 0;
    if (v49)
    {
      CFRelease(*(v49 + 1));
    }

    v50 = v83[0];
    v83[0] = 0;
    if (v50 && atomic_fetch_add_explicit(v50, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v50, v44);
    }

    goto LABEL_76;
  }

LABEL_73:
  WTF::RunLoop::mainSingleton(v13);
  v51 = a1[1];
  a1[1] = 0;
  v52 = a1[4];
  a1[4] = 0;
  v16 = WTF::fastMalloc(0x20);
  *v16 = &unk_1F111B1D0;
  *(v16 + 8) = v62;
  v16[2] = v51;
  v16[3] = v52;
LABEL_74:
  v63[0] = v16;
  WTF::RunLoop::dispatch();
  v53 = v63[0];
  v63[0] = 0;
  if (v53)
  {
    (*(*v53 + 8))(v53);
  }

LABEL_76:
  if (v82 == 1)
  {
    if (data)
    {
      os_release(data);
    }
  }
}

void API::openAndMapContentRuleList(API *this, const WTF::String *a2)
{
  if ((WTF::FileSystemImpl::makeSafeToUseMemoryMapForPath(a2, a2) & 1) != 0 && (WebKit::NetworkCache::mapFile(&v16), v16))
  {
    API::decodeContentRuleListMetaData(&v16, &v10);
    if (v15)
    {
      v3 = v16;
      if (v16)
      {
        os_retain(v16);
        v8 = v17;
        v9 = v18;
        v4 = v13;
        *(this + 2) = v12;
        *(this + 3) = v4;
        *(this + 8) = v14;
        v5 = v11;
        *this = v10;
        *(this + 1) = v5;
        os_retain(v3);
        *(this + 5) = v8;
        *(this + 96) = v9;
        os_release(v3);
      }

      else
      {
        v6 = v13;
        *(this + 2) = v12;
        *(this + 3) = v6;
        *(this + 8) = v14;
        v7 = v11;
        *this = v10;
        *(this + 1) = v7;
        *(this + 5) = v17;
        *(this + 96) = v18;
      }

      *(this + 9) = v3;
      *(this + 104) = 1;
    }

    else
    {
      *this = 0;
      *(this + 104) = 0;
    }

    if (v16)
    {
      os_release(v16);
    }
  }

  else
  {
    *this = 0;
    *(this + 104) = 0;
  }
}

void WebKit::NetworkCache::mapFile(uint64_t a1@<X8>)
{
  WTF::FileSystemImpl::openFile();
  if (v6 == -1 || (v4 = WTF::FileSystemImpl::FileHandle::size(&v6), (v5 & 1) == 0))
  {
    *a1 = 0;
    *(a1 + 8) = 0;
    *(a1 + 24) = 0;
    *(a1 + 16) = 0;
  }

  else
  {
    WebKit::NetworkCache::adoptAndMapFile(v4, a1);
  }

  WTF::FileSystemImpl::FileHandle::~FileHandle(&v6);
}

void WebKit::NetworkCache::adoptAndMapFile(uint64_t a1@<X2>, uint64_t a2@<X8>)
{
  if (a1)
  {
    WTF::FileSystemImpl::FileHandle::map();
    if (v4 == 1)
    {
      WebKit::NetworkCache::Data::adoptMap(v3, a2);
      if (v4)
      {
        WTF::FileSystemImpl::MappedFileData::~MappedFileData(v3);
      }
    }

    else
    {
      *a2 = 0;
      *(a2 + 8) = 0;
      *(a2 + 24) = 0;
      *(a2 + 16) = 0;
    }
  }

  else
  {

    WebKit::NetworkCache::Data::empty(a2);
  }
}

size_t WebKit::NetworkCache::Data::adoptMap@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = *(a1 + 8);
  *a1 = 0;
  *(a1 + 8) = 0;
  WTF::FileSystemImpl::FileHandle::FileHandle(v9);
  WTF::FileSystemImpl::FileHandle::operator=();
  WTF::FileSystemImpl::FileHandle::~FileHandle(v9);
  global_queue = dispatch_get_global_queue(0, 0);
  destructor[0] = MEMORY[0x1E69E9820];
  destructor[1] = 3321888768;
  destructor[2] = ___ZN6WebKit12NetworkCache4Data8adoptMapEON3WTF14FileSystemImpl14MappedFileDataEONS3_10FileHandleE_block_invoke;
  destructor[3] = &__block_descriptor_48_e8_32c105_ZTSKZN6WebKit12NetworkCache4Data8adoptMapEON3WTF14FileSystemImpl14MappedFileDataEONS3_10FileHandleEE3__0_e5_v8__0l;
  destructor[4] = v3;
  destructor[5] = v4;
  v6 = dispatch_data_create(v3, v4, global_queue, destructor);
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *a2 = v6;
  result = dispatch_data_get_size(v6);
  *(a2 + 24) = result != 0;
  return result;
}

__n128 __copy_helper_block_e8_32c105_ZTSKZN6WebKit12NetworkCache4Data8adoptMapEON3WTF14FileSystemImpl14MappedFileDataEONS3_10FileHandleEE3__0(__n128 *a1, __n128 *a2)
{
  result = a2[2];
  a1[2] = result;
  return result;
}

void API::decodeContentRuleListMetaData(API *this@<X0>, _BYTE *a2@<X8>)
{
  WebKit::NetworkCache::Data::span(this);
  WTF::Persistence::Decoder::Decoder();
  WTF::Persistence::Decoder::operator>>();
  *a2 = 0;
  a2[72] = 0;
  WTF::Persistence::Decoder::~Decoder(v4);
}

void *WebKit::NetworkCache::Data::span(WebKit::NetworkCache::Data *this)
{
  result = *(this + 1);
  if (!result)
  {
    v3 = *this;
    if (*this)
    {
      v7 = 0;
      buffer_ptr = 0;
      v4 = dispatch_data_create_map(v3, &buffer_ptr, &v7);
      v5 = *this;
      *this = v4;
      if (v5)
      {
      }

      v6 = v7;
      result = buffer_ptr;
      *(this + 1) = buffer_ptr;
      *(this + 2) = v6;
    }
  }

  return result;
}

uint64_t WTF::Detail::CallableWrapper<API::ContentRuleListStore::lookupContentRuleListFile(WTF::String &&,WTF::String &,WTF::CompletionHandler<void ()(WTF::RefPtr<API::ContentRuleList,WTF::RawPtrTraits<WTF::RefPtr>,WTF::DefaultRefDerefTraits<WTF::RefPtr>>,std::error_code)>)::$_0,void>::~CallableWrapper(WTF *this, WTF::StringImpl *a2)
{
  *this = &unk_1F111B158;
  v3 = *(this + 4);
  *(this + 4) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  v4 = *(this + 3);
  *(this + 3) = 0;
  if (v4 && atomic_fetch_add_explicit(v4, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v4, a2);
  }

  v5 = *(this + 2);
  *(this + 2) = 0;
  if (v5 && atomic_fetch_add_explicit(v5, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v5, a2);
  }

  v6 = *(this + 1);
  *(this + 1) = 0;
  if (v6)
  {
    CFRelease(*(v6 + 8));
  }

  return WTF::fastFree(this, a2);
}

BOOL WebKit::XPCServiceInitializerDelegate::getConnectionIdentifier(uint64_t a1, uint64_t a2)
{
  v4 = xpc_dictionary_copy_mach_send();
  v5 = v4 - 1;
  if ((v4 - 1) <= 0xFFFFFFFD)
  {
    v6 = v4;
    v7 = *(a1 + 8);
    if (v7)
    {
      v8 = v7;
    }

    *a2 = v6;
    v9 = *(a2 + 8);
    *(a2 + 8) = v7;
    if (v9)
    {
    }
  }

  return v5 < 0xFFFFFFFE;
}

BOOL WebKit::XPCServiceInitializerDelegate::getClientIdentifier(xpc_object_t *this, WTF::StringImpl **a2)
{
  string = xpc_dictionary_get_string(this[2], "client-identifier");
  if (string)
  {
    strlen(string);
    WTF::String::fromUTF8();
    v5 = v8;
  }

  else
  {
    v5 = 0;
  }

  v6 = *a2;
  *a2 = v5;
  if (v6)
  {
    if (atomic_fetch_add_explicit(v6, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v6, v4);
    }

    v5 = *a2;
  }

  return v5 && *(v5 + 1) != 0;
}

BOOL WebKit::XPCServiceInitializerDelegate::getClientBundleIdentifier(xpc_object_t *this, WTF::StringImpl **a2)
{
  string = xpc_dictionary_get_string(this[2], "client-bundle-identifier");
  if (string)
  {
    strlen(string);
    WTF::String::fromUTF8();
    v5 = v8;
  }

  else
  {
    v5 = 0;
  }

  v6 = *a2;
  *a2 = v5;
  if (v6)
  {
    if (atomic_fetch_add_explicit(v6, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v6, v4);
    }

    v5 = *a2;
  }

  return v5 && *(v5 + 1) != 0;
}

uint64_t WebKit::XPCServiceInitializerDelegate::getProcessIdentifier(uint64_t a1, uint64_t a2)
{
  string = xpc_dictionary_get_string(*(a1 + 16), "process-identifier");
  if (!string)
  {
    v4 = 0;
    v10 = 0;
LABEL_11:
    v5 = 0x100000000;
    goto LABEL_4;
  }

  strlen(string);
  WTF::String::fromUTF8();
  v4 = v10;
  if (!v10)
  {
    string = 0;
    goto LABEL_11;
  }

  string = *(v10 + 1);
  v4 = *(v10 + 1);
  v5 = ((*(v10 + 4) >> 2) & 1) << 32;
LABEL_4:
  v7 = WTF::parseInteger<unsigned long long>(string, v5 | v4, 0xAu, 1);
  v8 = v6;
  if (v10 && atomic_fetch_add_explicit(v10, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v10, v6);
  }

  result = v8 & (v7 - 1 < 0xFFFFFFFFFFFFFFFELL);
  if ((v8 & (v7 - 1 < 0xFFFFFFFFFFFFFFFELL)) != 0)
  {
    if ((*(a2 + 8) & 1) == 0)
    {
      *(a2 + 8) = 1;
    }

    *a2 = v7;
  }

  return result;
}

void sub_19D59C910(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, WTF::StringImpl *a10)
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

unint64_t WTF::parseInteger<unsigned long long>(unsigned __int8 *a1, uint64_t a2, unsigned int a3, int a4)
{
  if ((a2 & 0x100000000) != 0)
  {
    return WTF::parseInteger<unsigned long long,unsigned char>(a1, a2, a3, 0, a4);
  }

  else
  {
    return WTF::parseInteger<unsigned long long,char16_t>(a1, a2, a3, 0, a4);
  }
}

BOOL WebKit::XPCServiceInitializerDelegate::getClientProcessName(xpc_object_t *this, WTF::StringImpl **a2)
{
  string = xpc_dictionary_get_string(this[2], "ui-process-name");
  if (string)
  {
    strlen(string);
    WTF::String::fromUTF8();
    v5 = v8;
  }

  else
  {
    v5 = 0;
  }

  v6 = *a2;
  *a2 = v5;
  if (v6)
  {
    if (atomic_fetch_add_explicit(v6, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v6, v4);
    }

    v5 = *a2;
  }

  return v5 && *(v5 + 1) != 0;
}

unint64_t WTF::parseInteger<unsigned long long,unsigned char>(unsigned __int8 *a1, unint64_t a2, unsigned int a3, char a4, int a5)
{
  if (a1)
  {
    if (!a5)
    {
      goto LABEL_12;
    }

    v5 = 0;
    if (!a2)
    {
      goto LABEL_11;
    }

    while (1)
    {
      v6 = a1[v5];
      if ((v6 - 9) >= 5 && v6 != 32)
      {
        break;
      }

      if (a2 == ++v5)
      {
        goto LABEL_10;
      }
    }

    if (a2 >= v5)
    {
      goto LABEL_11;
    }

    while (1)
    {
      __break(1u);
LABEL_10:
      v5 = a2;
LABEL_11:
      a2 -= v5;
      a1 += v5;
LABEL_12:
      if (!a2)
      {
        break;
      }

      v7 = *a1;
      if (v7 == 43)
      {
        if (!--a2)
        {
          break;
        }

        v26 = *++a1;
        v7 = v26;
      }

      if ((v7 - 48) > 9)
      {
        if ((v7 | 0x20u) < 0x61)
        {
          goto LABEL_50;
        }

        v27 = a3 >= 0x24 ? 36 : a3;
        v9 = v27 + 87;
        if (v27 + 87 <= (v7 | 0x20u))
        {
          goto LABEL_50;
        }
      }

      else
      {
        if (v7 - 48 >= a3)
        {
          goto LABEL_50;
        }

        if (a3 >= 0x24)
        {
          v8 = 36;
        }

        else
        {
          v8 = a3;
        }

        v9 = v8 + 87;
      }

      v10 = 0;
      v11 = 0;
      v12 = &a1[a2];
      v13 = a2 - 1;
      for (i = a1 + 1; ; ++i)
      {
        v15 = (v7 - 48);
        v16 = v7 - 48;
        v17 = (v7 | 0x20u) - 87;
        if (v15 < 0xA)
        {
          v17 = v16;
        }

        v18 = !is_mul_ok(v10, a3);
        if (is_mul_ok(v10, a3))
        {
          v10 *= a3;
        }

        v19 = __CFADD__(v10, v17);
        v20 = v10 + v17;
        v21 = v19;
        if (!v19)
        {
          v10 = v20;
        }

        if ((v21 | v18))
        {
          v11 = 1;
        }

        if (!v13)
        {
          break;
        }

        ++a1;
        v7 = *i;
        if ((v7 - 48) > 9)
        {
          if ((v7 | 0x20u) < 0x61 || (v7 | 0x20u) >= v9)
          {
            v12 = i;
            break;
          }
        }

        else if (v7 - 48 >= a3)
        {
          v12 = a1;
          break;
        }

        --v13;
      }

      if (v11)
      {
        goto LABEL_50;
      }

      if (a4)
      {
        goto LABEL_47;
      }

      if (!a5)
      {
        if (v13)
        {
          goto LABEL_50;
        }

LABEL_47:
        v24 = v10 & 0xFFFFFFFFFFFFFF00;
        v10 = v10;
        return v24 | v10;
      }

      if (!v13)
      {
        goto LABEL_47;
      }

      v22 = 0;
      while (1)
      {
        v23 = v12[v22];
        if ((v23 - 9) >= 5 && v23 != 32)
        {
          break;
        }

        if (v13 == ++v22)
        {
          goto LABEL_47;
        }
      }

      if (v13 >= v22)
      {
        if (v13 != v22)
        {
          goto LABEL_50;
        }

        goto LABEL_47;
      }
    }

    v10 = 0;
  }

  else
  {
LABEL_50:
    v10 = 0;
  }

  v24 = 0;
  return v24 | v10;
}

uint64_t WebKit::WebProcess::operator new(WebKit::WebProcess *this, void *a2)
{
  if (this == 880 && WebKit::WebProcess::s_heapRef)
  {
    return bmalloc::api::tzoneAllocateNonCompact(WebKit::WebProcess::s_heapRef, a2);
  }

  else
  {
    return WebKit::WebProcess::operatorNewSlow(this);
  }
}

WebKit::WebProcess *WebKit::WebProcess::singleton(WebKit::WebProcess *this, void *a2)
{
  {
    return WebKit::WebProcess::singleton(void)::process;
  }

  v3 = WebKit::WebProcess::operator new(0x370, a2);
  result = WebKit::WebProcess::WebProcess(v3);
  WebKit::WebProcess::singleton(void)::process = result;
  return result;
}

WebKit::WebProcess *WebKit::WebProcess::WebProcess(WebKit::WebProcess *this)
{
  v2 = WebKit::AuxiliaryProcess::AuxiliaryProcess(this);
  *v2 = &unk_1F1121E00;
  *(v2 + 3) = &unk_1F1121EE0;
  *(v2 + 18) = 0;
  *(v2 + 19) = 0;
  *(v2 + 17) = 0;
  WebKit::EventDispatcher::EventDispatcher((v2 + 160), this);
  WebKit::ViewUpdateDispatcher::ViewUpdateDispatcher((this + 216), this);
  v3 = WebKit::WebInspectorInterruptDispatcher::WebInspectorInterruptDispatcher((this + 264), this);
  *(this + 300) = 0;
  *(this + 74) = 0;
  *(this + 38) = 0;
  *(this + 39) = 0;
  *(this + 320) = 0;
  *(this + 41) = 0;
  *(this + 42) = 0;
  v5 = WebKit::WebLoaderStrategy::operator new(v3, v4);
  *(this + 43) = WebKit::WebLoaderStrategy::WebLoaderStrategy(v5, this);
  *(this + 44) = 0;
  *(this + 45) = 0;
  *(this + 46) = 0;
  WebKit::RemoteVideoCodecFactory::RemoteVideoCodecFactory((this + 376), this);
  *(this + 48) = 0;
  v6 = WTF::fastMalloc(0x20);
  *(v6 + 16) = 1;
  *v6 = &unk_1F1122170;
  *(v6 + 8) = 0;
  *(v6 + 24) = 0;
  *(this + 49) = v6;
  v7 = WTF::fastMalloc(0x10);
  *(v7 + 8) = 1;
  *v7 = &unk_1F1130C78;
  *(this + 50) = v7;
  WebKit::RemoteMediaPlayerManager::create(v8, this + 51);
  WebKit::RemoteImageDecoderAVFManager::create(v9, this + 52);
  v10 = WTF::fastMalloc(0x18);
  *(v10 + 8) = 1;
  *v10 = &unk_1F1130C40;
  *(v10 + 16) = 0;
  *(this + 53) = v10;
  v11 = WTF::fastMalloc(0x38);
  *(this + 54) = WebKit::WebCookieJar::WebCookieJar(v11);
  *(this + 55) = 0;
  *(this + 56) = 0;
  *(this + 57) = 0;
  v12 = WTF::fastMalloc(0x10);
  *v12 = &unk_1F11224D8;
  *(v12 + 1) = this;
  v26 = v12;
  PAL::HysteresisActivity::HysteresisActivity(this + 464, &v26, 5.0);
  v14 = v26;
  v26 = 0;
  if (v14)
  {
    v14 = (*(*v14 + 8))(v14);
  }

  *(this + 67) = 0;
  *(this + 544) = 0;
  *(this + 69) = 0;
  *(this + 560) = 0;
  *(this + 624) = 0;
  *(this + 79) = 0x400000000;
  *(this + 40) = 0u;
  *(this + 656) = 0;
  *(this + 657) = 1;
  *(this + 659) = 0;
  *(this + 712) = 0;
  *(this + 720) = 0;
  *(this + 784) = 0;
  *(this + 101) = 0;
  *(this + 816) = 0;
  *(this + 170) = 0;
  *(this + 664) = 0u;
  *(this + 704) = 0;
  *(this + 43) = 0u;
  *(this + 752) = 0;
  *(this + 93) = 0;
  *(this + 728) = 0u;
  *(this + 99) = 0;
  *(this + 797) = 0;
  *(this + 817) = 1;
  *(this + 103) = 0;
  *(this + 109) = 0;
  *(this + 818) = 0;
  *(this + 107) = 0;
  *(this + 840) = 0u;
  *(this + 864) = 0;
  WebKit::WebPlatformStrategies::initialize(v14, v13);
  WebKit::WebProcess::addSupplementWithoutRefCountedCheck<WebKit::WebGeolocationManager>(this);
  WebKit::WebProcess::addSupplementWithoutRefCountedCheck<WebKit::WebNotificationManager>(this, v15);
  WebKit::WebProcess::addSupplement<WebKit::WebMediaKeyStorageManager>(this);
  WebKit::WebProcess::addSupplementWithoutRefCountedCheck<WebKit::UserMediaCaptureManager>(this);
  WebKit::WebProcess::addSupplementWithoutRefCountedCheck<WebKit::RemoteCDMFactory>(this);
  WebKit::WebProcess::addSupplementWithoutRefCountedCheck<WebKit::RemoteLegacyCDMFactory>(this);
  v16 = WebKit::WebProcess::addSupplementWithoutRefCountedCheck<WebKit::RemoteMediaEngineConfigurationFactory>(this);
  v17 = Gigacage::forbidDisablingPrimitiveGigacage(v16);
  v18 = WebKit::WebMockContentFilterManager::singleton(v17);
  WebKit::WebMockContentFilterManager::startObservingSettings(v18);
  v19 = WTF::fastMalloc(0x28);
  v26 = WebKit::RemoteWebLockRegistry::RemoteWebLockRegistry(v19, this);
  WebCore::WebLockRegistry::setSharedRegistry();
  v20 = v26;
  v26 = 0;
  if (v20)
  {
    if (*(v20 + 2) == 1)
    {
      (*(*v20 + 8))(v20);
    }

    else
    {
      --*(v20 + 2);
    }
  }

  WebKit::WebPermissionController::create(this, &v25);
  v21 = v25;
  v25 = 0;
  v26 = v21;
  WebCore::PermissionController::setSharedController();
  v22 = v26;
  v26 = 0;
  if (v22 && atomic_fetch_add(v22 + 2, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v22 + 2);
    (*(*v22 + 8))(v22);
  }

  v23 = v25;
  v25 = 0;
  if (v23 && atomic_fetch_add(v23 + 2, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v23 + 2);
    (*(*v23 + 8))(v23);
  }

  return this;
}

WebKit::AuxiliaryProcess *WebKit::AuxiliaryProcess::AuxiliaryProcess(WebKit::AuxiliaryProcess *this)
{
  *(this + 4) = 0;
  *this = &unk_1F10F18F8;
  *(this + 1) = 0;
  *(this + 3) = &unk_1F10F19D8;
  *(this + 8) = 0;
  *(this + 36) = 0;
  *(this + 6) = 0;
  *(this + 7) = 0;
  *(this + 5) = 0;
  MEMORY[0x19EB04810](this + 64, "Process Suppression Disabled by UIProcess", 42);
  return this;
}

void *IPC::MessageReceiverMap::MessageReceiverMap(void *this)
{
  *this = 0;
  this[1] = 0;
  return this;
}

WebKit::EventDispatcher *WebKit::EventDispatcher::EventDispatcher(WebKit::EventDispatcher *this, atomic_uint *a2)
{
  *this = &unk_1F1133030;
  *(this + 1) = 0;
  *(this + 2) = a2;
  atomic_fetch_add(a2 + 4, 1u);
  v3 = WTF::WorkQueue::create();
  WebCore::WheelEventDeltaFilter::create(v3);
  *(this + 40) = 0;
  *(this + 6) = 0;
  return this;
}

WebKit::WebInspectorInterruptDispatcher *WebKit::WebInspectorInterruptDispatcher::WebInspectorInterruptDispatcher(WebKit::WebInspectorInterruptDispatcher *this, atomic_uint *a2)
{
  *this = &unk_1F112BDB0;
  *(this + 1) = 0;
  *(this + 2) = a2;
  atomic_fetch_add(a2 + 4, 1u);
  WTF::WorkQueue::create();
  return this;
}

uint64_t WebKit::WebLoaderStrategy::operator new(WebKit::WebLoaderStrategy *this, void *a2)
{
  if (WebKit::WebLoaderStrategy::s_heapRef)
  {
    return bmalloc::api::tzoneAllocateNonCompact(WebKit::WebLoaderStrategy::s_heapRef, a2);
  }

  else
  {
    return WebKit::WebLoaderStrategy::operatorNewSlow(0x90);
  }
}

WebKit::WebLoaderStrategy *WebKit::WebLoaderStrategy::WebLoaderStrategy(WebKit::WebLoaderStrategy *this, WebKit::WebProcess *a2)
{
  *this = &unk_1F112C5B8;
  v4 = WTF::WeakPtrFactory<IPC::MessageReceiver,WTF::DefaultWeakPtrImpl>::initializeIfNeeded(a2 + 2, a2);
  v5 = *(a2 + 1);
  atomic_fetch_add(v5, 1u);
  *(this + 1) = v5;
  *(this + 2) = 0;
  v6 = WTF::RunLoop::mainSingleton(v4);
  v7 = v6;
  while (1)
  {
    v8 = *(v6 + 8);
    if ((v8 & 1) == 0)
    {
      break;
    }

    v11 = *(v6 + 8);
    atomic_compare_exchange_strong_explicit((v6 + 8), &v11, v8 + 2, memory_order_relaxed, memory_order_relaxed);
    if (v11 == v8)
    {
      goto LABEL_4;
    }
  }

  WTF::ThreadSafeWeakPtrControlBlock::strongRef(*(v6 + 8));
LABEL_4:
  v12 = v7;
  WTF::RunLoop::Timer::Timer<WebKit::WebLoaderStrategy>(this + 3, &v12, this);
  v9 = v12;
  v12 = 0;
  if (v9)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WTF::SerialFunctionDispatcher,(WTF::DestructionThread)0>::deref((v9 + 8));
  }

  *(this + 128) = 0;
  *(this + 72) = 0u;
  *(this + 88) = 0u;
  *(this + 104) = 0u;
  *(this + 120) = 0;
  *(this + 136) = 1;
  return this;
}

WebKit::LibWebRTCCodecs *WebKit::WebProcess::libWebRTCCodecs(WebKit::WebProcess *this, void *a2)
{
  result = *(this + 46);
  if (!result)
  {
    v4 = WebKit::LibWebRTCCodecs::operator new(0x88, a2);
    result = WebKit::LibWebRTCCodecs::LibWebRTCCodecs(v4);
    v6 = *(this + 46);
    *(this + 46) = result;
    if (v6)
    {
      WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::WorkQueueMessageReceiver<(WTF::DestructionThread)0>,(WTF::DestructionThread)0>::deref((v6 + 8), v5);
      return *(this + 46);
    }
  }

  return result;
}

uint64_t WebKit::LibWebRTCCodecs::operator new(WebKit::LibWebRTCCodecs *this, void *a2)
{
  if (this == 136 && WebKit::LibWebRTCCodecs::s_heapRef)
  {
    return bmalloc::api::tzoneAllocateNonCompact(WebKit::LibWebRTCCodecs::s_heapRef, a2);
  }

  else
  {
    return WebKit::LibWebRTCCodecs::operatorNewSlow(this);
  }
}

uint64_t WebKit::RemoteVideoCodecFactory::RemoteVideoCodecFactory(WebKit::RemoteVideoCodecFactory *this, WebKit::WebProcess *a2)
{
  WebKit::WebProcess::libWebRTCCodecs(this, a2);
  WebCore::VideoDecoder::setCreatorCallback();
  return WebCore::VideoEncoder::setCreatorCallback();
}

WebKit::LibWebRTCCodecs *WebKit::LibWebRTCCodecs::LibWebRTCCodecs(WebKit::LibWebRTCCodecs *this)
{
  *this = &unk_1F1129F60;
  *(this + 1) = 3;
  *(this + 2) = &unk_1F1129FC0;
  *(this + 3) = 0;
  *(this + 32) = 0;
  *(this + 5) = 0;
  *(this + 24) = 0;
  *(this + 56) = 0u;
  *(this + 72) = 0u;
  WTF::WorkQueue::create();
  *(this + 128) = 0;
  *(this + 6) = 0u;
  *(this + 7) = 0u;
  return this;
}

uint64_t WebKit::RemoteMediaPlayerManager::operator new(WebKit::RemoteMediaPlayerManager *this, void *a2)
{
  if (WebKit::RemoteMediaPlayerManager::s_heapRef)
  {
    return bmalloc::api::tzoneAllocateNonCompact(WebKit::RemoteMediaPlayerManager::s_heapRef, a2);
  }

  else
  {
    return WebKit::RemoteMediaPlayerManager::operatorNewSlow(0x28);
  }
}

void *WebKit::RemoteMediaPlayerManager::create@<X0>(void *a1@<X1>, void *a2@<X8>)
{
  result = WebKit::RemoteMediaPlayerManager::operator new(0x28, a1);
  *result = &unk_1F1128778;
  result[1] = 3;
  result[3] = 0;
  result[4] = 0;
  result[2] = 0;
  *a2 = result;
  return result;
}

void *WebKit::RemoteImageDecoderAVFManager::create@<X0>(void *a1@<X1>, void *a2@<X8>)
{
  result = WebKit::RemoteImageDecoderAVFManager::operator new(0x38, a1);
  result[2] = 0;
  result[3] = 3;
  *result = &unk_1F1129EC8;
  result[1] = &unk_1F1129F18;
  result[5] = 0;
  result[6] = 0;
  result[4] = 0;
  *a2 = result;
  return result;
}

uint64_t WebKit::RemoteImageDecoderAVFManager::operator new(WebKit::RemoteImageDecoderAVFManager *this, void *a2)
{
  if (WebKit::RemoteImageDecoderAVFManager::s_heapRef)
  {
    return bmalloc::api::tzoneAllocateNonCompact(WebKit::RemoteImageDecoderAVFManager::s_heapRef, a2);
  }

  else
  {
    return WebKit::RemoteImageDecoderAVFManager::operatorNewSlow(0x38);
  }
}

void WebKit::WebCookieJar::WebCookieJar(WebKit::WebCookieJar *this)
{
  v2 = WTF::fastMalloc(0x10);
  *(v2 + 8) = 1;
  *v2 = &unk_1F1133580;
  v4 = v2;
  WebCore::CookieJar::CookieJar();
  if (v4)
  {
    if (atomic_fetch_add(v4 + 2, 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, v4 + 2);
      (*(*v4 + 16))(v4);
    }
  }

  *this = &unk_1F1133338;
  v3 = WTF::fastMalloc(0x40);
  WebKit::WebCookieCache::WebCookieCache(v3);
}

void WebKit::WebCookieCache::WebCookieCache(WebKit::WebCookieCache *this)
{
  *(this + 4) = 1;
  *this = &unk_1F1133540;
  *(this + 1) = 0;
  *(this + 6) = 0;
  *(this + 3) = 0;
  *(this + 4) = 0;
  *(this + 40) = 0;
  operator new();
}

uint64_t PAL::HysteresisActivity::HysteresisActivity(uint64_t a1, uint64_t *a2, double a3)
{
  v4 = *a2;
  *a2 = 0;
  *a1 = v4;
  *(a1 + 8) = a3;
  v5 = WTF::RunLoop::mainSingleton(a1);
  v6 = v5;
  while (1)
  {
    v7 = *(v5 + 8);
    if ((v7 & 1) == 0)
    {
      break;
    }

    v10 = *(v5 + 8);
    atomic_compare_exchange_strong_explicit((v5 + 8), &v10, v7 + 2, memory_order_relaxed, memory_order_relaxed);
    if (v10 == v7)
    {
      goto LABEL_4;
    }
  }

  WTF::ThreadSafeWeakPtrControlBlock::strongRef(*(v5 + 8));
LABEL_4:
  v11 = v6;
  v8 = WTF::fastMalloc(0x10);
  *v8 = &unk_1F1108DF8;
  v8[1] = a1;
  WTF::RunLoop::TimerBase::TimerBase();
  *(a1 + 16) = &unk_1F10E6DC8;
  *(a1 + 56) = v8;
  if (v11)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WTF::SerialFunctionDispatcher,(WTF::DestructionThread)0>::deref((v11 + 8));
  }

  *(a1 + 64) = 0;
  return a1;
}

uint64_t WebKit::WebPlatformStrategies::initialize(WebKit::WebPlatformStrategies *this, WebCore::PlatformStrategies *a2)
{
  if ((byte_1ED642C8A & 1) == 0)
  {
    *&qword_1ED642C90[5] = 0u;
    *&qword_1ED642C90[3] = 0u;
    *&qword_1ED642C90[1] = 0u;
    qword_1ED642C90[0] = &unk_1F1131D58;
    qword_1ED642C90[7] = &unk_1F1131EB8;
    qword_1ED642C90[8] = &unk_1F1131FD0;
    byte_1ED642C8A = 1;
  }

  return WebCore::setPlatformStrategies(qword_1ED642C90, a2);
}

uint64_t WebKit::WebProcess::addSupplementWithoutRefCountedCheck<WebKit::WebGeolocationManager>(uint64_t *a1)
{
  v7[0] = WebKit::WebGeolocationManager::supplementName(a1);
  v7[1] = v2;
  v3 = WebKit::WebGeolocationManager::operator new(v7[0], v2);
  v6 = WebKit::WebGeolocationManager::WebGeolocationManager(v3, a1);
  WTF::HashMap<WTF::ASCIILiteral,std::unique_ptr<WebKit::WebProcessSupplement>,WTF::DefaultHash<WTF::ASCIILiteral>,WTF::HashTraits<WTF::ASCIILiteral>,WTF::HashTraits<std::unique_ptr<WebKit::WebProcessSupplement>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::add<std::unique_ptr<WebKit::WebProcessSupplement>>(&v5, a1 + 39, v7, &v6);
  result = v6;
  if (v6)
  {
    return (*(*v6 + 8))(v6);
  }

  return result;
}

uint64_t WebKit::WebGeolocationManager::operator new(WebKit::WebGeolocationManager *this, void *a2)
{
  if (WebKit::WebGeolocationManager::s_heapRef)
  {
    return bmalloc::api::tzoneAllocateNonCompact(WebKit::WebGeolocationManager::s_heapRef, a2);
  }

  else
  {
    return WebKit::WebGeolocationManager::operatorNewSlow(0x38);
  }
}

WebKit::WebGeolocationManager *WebKit::WebGeolocationManager::WebGeolocationManager(WebKit::WebGeolocationManager *this, atomic_uint *a2)
{
  *this = &unk_1F112ADC8;
  *(this + 1) = &unk_1F112AE18;
  *(this + 2) = 0;
  *(this + 3) = a2;
  atomic_fetch_add(a2 + 4, 1u);
  *(this + 4) = 0;
  *(this + 5) = 0;
  *(this + 6) = 0;
  WebKit::AuxiliaryProcess::addMessageReceiver(a2, 173, this + 8);
  return this;
}

uint64_t WebKit::WebNotificationManager::operator new(WebKit::WebNotificationManager *this, void *a2)
{
  if (WebKit::WebNotificationManager::s_heapRef)
  {
    return bmalloc::api::tzoneAllocateNonCompact(WebKit::WebNotificationManager::s_heapRef, a2);
  }

  else
  {
    return WebKit::WebNotificationManager::operatorNewSlow(0x30);
  }
}

WebKit::WebNotificationManager *WebKit::WebNotificationManager::WebNotificationManager(WebKit::WebNotificationManager *this, WebKit::WebProcess *a2)
{
  v4 = this + 8;
  *this = &unk_1F112DC28;
  *(this + 1) = &unk_1F112DC78;
  *(this + 2) = 0;
  WTF::WeakPtrFactory<IPC::MessageReceiver,WTF::DefaultWeakPtrImpl>::initializeIfNeeded(a2 + 2, a2);
  v5 = *(a2 + 1);
  atomic_fetch_add(v5, 1u);
  *(this + 4) = 0;
  *(this + 5) = 0;
  *(this + 3) = v5;
  WebKit::AuxiliaryProcess::addMessageReceiver(a2, 183, v4);
  return this;
}

uint64_t WebKit::WebProcess::addSupplement<WebKit::WebMediaKeyStorageManager>(uint64_t *a1)
{
  v7[0] = WebKit::WebMediaKeyStorageManager::supplementName(a1);
  v7[1] = v2;
  v3 = WebKit::WebMediaKeyStorageManager::operator new(v7[0], v2);
  *v3 = &unk_1F112C4C8;
  v3[1] = 0;
  v6 = v3;
  WTF::HashMap<WTF::ASCIILiteral,std::unique_ptr<WebKit::WebProcessSupplement>,WTF::DefaultHash<WTF::ASCIILiteral>,WTF::HashTraits<WTF::ASCIILiteral>,WTF::HashTraits<std::unique_ptr<WebKit::WebProcessSupplement>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::add<std::unique_ptr<WebKit::WebMediaKeyStorageManager>>(&v5, a1 + 39, v7, &v6);
  result = v6;
  if (v6)
  {
    return (*(*v6 + 8))(v6);
  }

  return result;
}

uint64_t WebKit::WebMediaKeyStorageManager::operator new(WebKit::WebMediaKeyStorageManager *this, void *a2)
{
  if (WebKit::WebMediaKeyStorageManager::s_heapRef)
  {
    return bmalloc::api::tzoneAllocateNonCompact(WebKit::WebMediaKeyStorageManager::s_heapRef, a2);
  }

  else
  {
    return WebKit::WebMediaKeyStorageManager::operatorNewSlow(0x10);
  }
}

uint64_t WebKit::UserMediaCaptureManager::operator new(WebKit::UserMediaCaptureManager *this, void *a2)
{
  if (WebKit::UserMediaCaptureManager::s_heapRef)
  {
    return bmalloc::api::tzoneAllocateNonCompact(WebKit::UserMediaCaptureManager::s_heapRef, a2);
  }

  else
  {
    return WebKit::UserMediaCaptureManager::operatorNewSlow(0xF8);
  }
}

WebKit::UserMediaCaptureManager *WebKit::UserMediaCaptureManager::UserMediaCaptureManager(WebKit::UserMediaCaptureManager *this, atomic_uint *a2)
{
  v4 = this + 8;
  *(this + 6) = 0;
  *this = &unk_1F1135328;
  *(this + 1) = &unk_1F1135378;
  *(this + 2) = 0;
  *(this + 4) = a2;
  atomic_fetch_add(a2 + 4, 1u);
  *(this + 7) = 0;
  *(this + 8) = 0;
  *(this + 5) = 0;
  *(this + 6) = &unk_1F1135470;
  *(this + 9) = &unk_1F11353C0;
  *(this + 10) = this;
  v5 = *(this + 6);
  *(this + 88) = 0;
  *(this + 12) = 0;
  *(this + 13) = 0;
  *(this + 14) = &unk_1F1135410;
  *(this + 15) = this;
  *(this + 128) = 0;
  *(this + 17) = &unk_1F1135440;
  *(this + 18) = this;
  *(this + 6) = v5 + 3;
  *(this + 152) = 0;
  WebKit::RemoteCaptureSampleManager::RemoteCaptureSampleManager((this + 160), this);
  *(this + 240) = 0;
  WebKit::AuxiliaryProcess::addMessageReceiver(a2, 148, v4);
  return this;
}

WebKit::RemoteCaptureSampleManager *WebKit::RemoteCaptureSampleManager::RemoteCaptureSampleManager(WebKit::RemoteCaptureSampleManager *this, WebKit::UserMediaCaptureManager *a2)
{
  *this = &unk_1F1134BD8;
  *(this + 1) = 3;
  *(this + 2) = a2;
  ++*(a2 + 6);
  *(this + 24) = 0;
  WTF::WorkQueue::create();
  *(this + 9) = 0;
  *(this + 6) = 0;
  *(this + 7) = 0;
  *(this + 5) = 0;
  *(this + 64) = 0;
  return this;
}

uint64_t WebKit::WebProcess::addSupplementWithoutRefCountedCheck<WebKit::RemoteCDMFactory>(uint64_t *a1)
{
  v9[0] = WebKit::RemoteCDMFactory::supplementName(a1);
  v9[1] = v2;
  v3 = WebKit::RemoteCDMFactory::operator new(v9[0], v2);
  v4 = WebKit::RemoteCDMFactory::RemoteCDMFactory(v3, a1);
  v5 = v4 + 8;
  if (!v4)
  {
    v5 = 0;
  }

  v8 = v5;
  WTF::HashMap<WTF::ASCIILiteral,std::unique_ptr<WebKit::WebProcessSupplement>,WTF::DefaultHash<WTF::ASCIILiteral>,WTF::HashTraits<WTF::ASCIILiteral>,WTF::HashTraits<std::unique_ptr<WebKit::WebProcessSupplement>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::add<std::unique_ptr<WebKit::WebProcessSupplement>>(&v7, a1 + 39, v9, &v8);
  result = v8;
  if (v8)
  {
    return (*(*v8 + 8))(v8);
  }

  return result;
}

uint64_t WebKit::RemoteCDMFactory::operator new(WebKit::RemoteCDMFactory *this, void *a2)
{
  if (WebKit::RemoteCDMFactory::s_heapRef)
  {
    return bmalloc::api::tzoneAllocateNonCompact(WebKit::RemoteCDMFactory::s_heapRef, a2);
  }

  else
  {
    return WebKit::RemoteCDMFactory::operatorNewSlow(0x30);
  }
}

WebKit::RemoteCDMFactory *WebKit::RemoteCDMFactory::RemoteCDMFactory(WebKit::RemoteCDMFactory *this, WebKit::WebProcess *a2)
{
  *this = &unk_1F11281A0;
  *(this + 1) = &unk_1F11281D0;
  *(this + 2) = 0;
  WTF::WeakPtrFactory<IPC::MessageReceiver,WTF::DefaultWeakPtrImpl>::initializeIfNeeded(a2 + 2, a2);
  v4 = *(a2 + 1);
  atomic_fetch_add(v4, 1u);
  *(this + 4) = 0;
  *(this + 5) = 0;
  *(this + 3) = v4;
  return this;
}

uint64_t WebKit::RemoteLegacyCDMFactory::operator new(WebKit::RemoteLegacyCDMFactory *this, void *a2)
{
  if (WebKit::RemoteLegacyCDMFactory::s_heapRef)
  {
    return bmalloc::api::tzoneAllocateNonCompact(WebKit::RemoteLegacyCDMFactory::s_heapRef, a2);
  }

  else
  {
    return WebKit::RemoteLegacyCDMFactory::operatorNewSlow(0x38);
  }
}

WebKit::RemoteLegacyCDMFactory *WebKit::WebProcess::addSupplementWithoutRefCountedCheck<WebKit::RemoteLegacyCDMFactory>(uint64_t *a1)
{
  v7[0] = WebKit::RemoteLegacyCDMFactory::supplementName(a1);
  v7[1] = v2;
  v3 = WebKit::RemoteLegacyCDMFactory::operator new(v7[0], v2);
  v6 = WebKit::RemoteLegacyCDMFactory::RemoteLegacyCDMFactory(v3, a1);
  WTF::HashMap<WTF::ASCIILiteral,std::unique_ptr<WebKit::WebProcessSupplement>,WTF::DefaultHash<WTF::ASCIILiteral>,WTF::HashTraits<WTF::ASCIILiteral>,WTF::HashTraits<std::unique_ptr<WebKit::WebProcessSupplement>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::add<std::unique_ptr<WebKit::WebProcessSupplement>>(&v5, a1 + 39, v7, &v6);
  result = v6;
  if (v6)
  {
    return (*(*v6 + 8))(v6);
  }

  return result;
}

WebKit::RemoteLegacyCDMFactory *WebKit::RemoteLegacyCDMFactory::RemoteLegacyCDMFactory(WebKit::RemoteLegacyCDMFactory *this, WebKit::WebProcess *a2)
{
  *this = &unk_1F1128418;
  *(this + 1) = 0;
  WTF::WeakPtrFactory<IPC::MessageReceiver,WTF::DefaultWeakPtrImpl>::initializeIfNeeded(a2 + 2, a2);
  v4 = *(a2 + 1);
  atomic_fetch_add(v4, 1u);
  *(this + 2) = v4;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  return this;
}

uint64_t WebKit::RemoteMediaEngineConfigurationFactory::operator new(WebKit::RemoteMediaEngineConfigurationFactory *this, void *a2)
{
  if (WebKit::RemoteMediaEngineConfigurationFactory::s_heapRef)
  {
    return bmalloc::api::tzoneAllocateNonCompact(WebKit::RemoteMediaEngineConfigurationFactory::s_heapRef, a2);
  }

  else
  {
    return WebKit::RemoteMediaEngineConfigurationFactory::operatorNewSlow(0x18);
  }
}

WebKit::RemoteMediaEngineConfigurationFactory *WebKit::RemoteMediaEngineConfigurationFactory::RemoteMediaEngineConfigurationFactory(WebKit::RemoteMediaEngineConfigurationFactory *this, WebKit::WebProcess *a2)
{
  *this = &unk_1F1128510;
  *(this + 1) = 0;
  WTF::WeakPtrFactory<IPC::MessageReceiver,WTF::DefaultWeakPtrImpl>::initializeIfNeeded(a2 + 2, a2);
  v4 = *(a2 + 1);
  atomic_fetch_add(v4, 1u);
  *(this + 2) = v4;
  return this;
}

WebKit::WebMockContentFilterManager *WebKit::WebMockContentFilterManager::startObservingSettings(WebKit::WebMockContentFilterManager *this)
{
  WebCore::MockContentFilterManager::singleton(this);
  if (this)
  {
    ++*(this + 2);
  }

  WebCore::MockContentFilterManager::setClient();
  result = this;
  if (this)
  {
    if (*(this + 2) == 1)
    {
      return (*(*this + 8))(this);
    }

    else
    {
      --*(this + 2);
    }
  }

  return result;
}

uint64_t *WebKit::WebMockContentFilterManager::singleton(WebKit::WebMockContentFilterManager *this)
{
  if ((_MergedGlobals_137 & 1) == 0)
  {
    qword_1ED643190 = &unk_1F113B190;
    unk_1ED643198 = 1;
    _MergedGlobals_137 = 1;
  }

  return &qword_1ED643190;
}

WebKit::RemoteWebLockRegistry *WebKit::RemoteWebLockRegistry::RemoteWebLockRegistry(WebKit::RemoteWebLockRegistry *this, WebKit::WebProcess *a2)
{
  *(this + 2) = 1;
  *this = &unk_1F112FEE0;
  *(this + 3) = 0;
  *(this + 4) = 0;
  *(this + 2) = &unk_1F112FF40;
  WebKit::AuxiliaryProcess::addMessageReceiver(a2, 132, this + 16);
  return this;
}

WebKit::WebPermissionController *WebKit::WebPermissionController::create@<X0>(WebKit::WebPermissionController *this@<X0>, WebKit::WebPermissionController **a2@<X8>)
{
  v5 = WTF::fastMalloc(0x30);
  result = WebKit::WebPermissionController::WebPermissionController(v5, this);
  *a2 = result;
  return result;
}

WebKit::WebPermissionController *WebKit::WebPermissionController::WebPermissionController(WebKit::WebPermissionController *this, WebKit::WebProcess *a2)
{
  *(this + 2) = 1;
  *this = &unk_1F1131CB8;
  *(this + 2) = &unk_1F1131D10;
  *(this + 3) = 0;
  *(this + 4) = 0;
  *(this + 5) = 0;
  WebKit::AuxiliaryProcess::addMessageReceiver(a2, 190, this + 16);
  return this;
}

void WebKit::AuxiliaryProcess::initialize(WebCore::FloatingPointEnvironment *a1, uint64_t a2)
{
  if (*(a2 + 32))
  {
    WebCore::Process::setIdentifier();
    WebKit::AuxiliaryProcess::platformInitialize(a1, a2);
    v15 = 0;
    memset(v14, 0, 41);
    (*(*a1 + 104))(a1, a2, v14);
    v4 = (*(*a1 + 88))(a1, a2);
    WTF::logChannels(v4);
    v5 = WTF::LogChannels::initializeLogChannelsIfNecessary();
    WebCore::logChannels(v5);
    WTF::LogChannels::initializeLogChannelsIfNecessary();
    {
      WebKit::LogChannels::LogChannels(&WebKit::logChannels(void)::logChannels);
    }

    WTF::LogChannels::initializeLogChannelsIfNecessary();
    v6 = (*(*a1 + 96))(a1, a2);
    PAL::SessionID::enableGenerationProtection(v6);
    WTF::ObjectIdentifierGeneric<WebKit::ContentWorldIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>::m_generationProtected = 1;
    WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>::m_generationProtected = 1;
    v7 = WTF::fastMalloc(0x188);
    IPC::Connection::Connection(v7, a2 + 40, 0);
    while (1)
    {
      v8 = *v7;
      if ((*v7 & 1) == 0)
      {
        break;
      }

      v13 = *v7;
      atomic_compare_exchange_strong_explicit(v7, &v13, v8 + 2, memory_order_relaxed, memory_order_relaxed);
      if (v13 == v8)
      {
        goto LABEL_7;
      }
    }

    WTF::ThreadSafeWeakPtrControlBlock::strongRef(*v7);
LABEL_7:
    v9 = *(a1 + 5);
    *(a1 + 5) = v7;
    if (v9)
    {
      WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v9);
    }

    v10 = (*(*a1 + 112))(a1, v7);
    v11 = WTF::RunLoop::currentSingleton(v10);
    IPC::Connection::open(v7, a1, v11);
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v7);
    WebKit::SandboxInitializationParameters::~SandboxInitializationParameters(v14, v12);
  }

  else
  {
    __break(0xC471u);
  }
}

uint64_t WebKit::AuxiliaryProcess::platformInitialize(WebCore::FloatingPointEnvironment *a1, uint64_t a2)
{
  v3 = WebCore::FloatingPointEnvironment::singleton(a1);
  WebCore::FloatingPointEnvironment::enableDenormalSupport(v3);
  WebCore::FloatingPointEnvironment::saveMainThreadEnvironment(v3);
  v4 = [MEMORY[0x1E696AC08] defaultManager];
  [v4 changeCurrentDirectoryPath:{objc_msgSend(objc_msgSend(MEMORY[0x1E696AAE8], "mainBundle"), "bundlePath")}];
  WTF::setApplicationBundleIdentifier((a2 + 16), v5);
  v6 = +[WKProcessExtension sharedInstance]!= 0;

  return MEMORY[0x1EEDCB120](v6);
}

uint64_t WebKit::WebProcess::initializeProcess(WebKit::WebProcess *this, const WebKit::AuxiliaryProcessInitializationParameters *a2)
{
  v11[0] = "enable-lockdown-mode";
  v11[1] = 21;
  v4 = WTF::HashTable<WTF::String,WTF::KeyValuePair<WTF::String,WTF::String>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,WTF::String>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::lookup<WTF::HashMapTranslatorAdapter<WTF::HashMap<WTF::String,WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTranslatorASCIILiteral>,(WTF::ShouldValidateKey)1,WTF::ASCIILiteral>(a2 + 7, v11);
  if (v4)
  {
    v5 = *(v4 + 8);
    if (v5)
    {
      atomic_fetch_add_explicit(v5, 2u, memory_order_relaxed);
    }
  }

  else
  {
    v5 = 0;
  }

  *(this + 329) = MEMORY[0x19EB01EF0](v5, "1", 1) | 0x100;
  if (v5 && atomic_fetch_add_explicit(v5, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v5, v6);
  }

  v7 = WTF::setProcessPrivileges();
  *(MEMORY[0x1E696EBF0] + 1918) = 0;
  v8 = JSC::Options::notifyOptionsChanged(v7);
  WebKit::WebMessagePortChannelProvider::singleton(v8, v9);
  WebCore::MessagePortChannelProvider::setSharedProvider();
  return WebKit::WebProcess::platformInitializeProcess(this, a2);
}

void *WebKit::WebMessagePortChannelProvider::singleton(WebKit::WebMessagePortChannelProvider *this, void *a2)
{
  {
    return WebKit::WebMessagePortChannelProvider::singleton(void)::provider;
  }

  result = WebKit::WebMessagePortChannelProvider::operator new(0x18, a2);
  result[1] = 0;
  result[2] = 0;
  *result = &unk_1F1131BE8;
  WebKit::WebMessagePortChannelProvider::singleton(void)::provider = result;
  return result;
}

uint64_t WebKit::WebMessagePortChannelProvider::operator new(WebKit::WebMessagePortChannelProvider *this, void *a2)
{
  if (this == 24 && WebKit::WebMessagePortChannelProvider::s_heapRef)
  {
    return bmalloc::api::tzoneAllocateNonCompact(WebKit::WebMessagePortChannelProvider::s_heapRef, a2);
  }

  else
  {
    return WebKit::WebMessagePortChannelProvider::operatorNewSlow(this);
  }
}

uint64_t WebKit::WebProcess::platformInitializeProcess(WebCore::PublicSuffixStore *a1, uint64_t a2)
{
  v4 = WebCore::PublicSuffixStore::singleton(a1);
  WebCore::PublicSuffixStore::enablePublicSuffixCache(v4);
  v19 = "inspector-process";
  v20 = 18;
  v5 = WTF::HashTable<WTF::String,WTF::KeyValuePair<WTF::String,WTF::String>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,WTF::String>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::lookup<WTF::HashMapTranslatorAdapter<WTF::HashMap<WTF::String,WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTranslatorASCIILiteral>,(WTF::ShouldValidateKey)1,WTF::ASCIILiteral>((a2 + 56), &v19);
  if (v5)
  {
    v6 = *(v5 + 8);
    if (v6)
    {
      atomic_fetch_add_explicit(v6, 2u, memory_order_relaxed);
    }
  }

  else
  {
    v6 = 0;
  }

  v8 = MEMORY[0x19EB01EF0](v6, "1", 1);
  if (v6 && atomic_fetch_add_explicit(v6, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v6, v7);
  }

  if (v8)
  {
    *(a1 + 159) = 0;
  }

  else
  {
    v19 = "service-worker-process";
    v20 = 23;
    v9 = WTF::HashTable<WTF::String,WTF::KeyValuePair<WTF::String,WTF::String>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,WTF::String>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::lookup<WTF::HashMapTranslatorAdapter<WTF::HashMap<WTF::String,WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTranslatorASCIILiteral>,(WTF::ShouldValidateKey)1,WTF::ASCIILiteral>((a2 + 56), &v19);
    if (v9)
    {
      v10 = *(v9 + 8);
      if (v10)
      {
        atomic_fetch_add_explicit(v10, 2u, memory_order_relaxed);
      }
    }

    else
    {
      v10 = 0;
    }

    v12 = MEMORY[0x19EB01EF0](v10, "1", 1);
    if (v10 && atomic_fetch_add_explicit(v10, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v10, v11);
    }

    if (v12)
    {
      v17 = 1;
    }

    else
    {
      v19 = "is-prewarmed";
      v20 = 13;
      v13 = WTF::HashTable<WTF::String,WTF::KeyValuePair<WTF::String,WTF::String>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,WTF::String>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::lookup<WTF::HashMapTranslatorAdapter<WTF::HashMap<WTF::String,WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTranslatorASCIILiteral>,(WTF::ShouldValidateKey)1,WTF::ASCIILiteral>((a2 + 56), &v19);
      if (v13)
      {
        v14 = *(v13 + 8);
        if (v14)
        {
          atomic_fetch_add_explicit(v14, 2u, memory_order_relaxed);
        }
      }

      else
      {
        v14 = 0;
      }

      v16 = MEMORY[0x19EB01EF0](v14, "1", 1);
      if (v14 && atomic_fetch_add_explicit(v14, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v14, v15);
      }

      if (v16)
      {
        v17 = 2;
      }

      else
      {
        v17 = 4;
      }
    }

    *(a1 + 159) = v17;
  }

  WebKit::AuxiliaryProcess::registerWithStateDumper();
  return [MEMORY[0x1E695AC78] _disableAppSSO];
}

void sub_19D59E998(_Unwind_Exception *exception_object, WTF::StringImpl *a2)
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

__n128 __copy_helper_block_e8_32c83_ZTSKZN6WebKit16AuxiliaryProcess23registerWithStateDumperEN3WTF12ASCIILiteralEE3__0(__n128 *a1, __n128 *a2)
{
  result = a2[2];
  a1[3].n128_u64[0] = a2[3].n128_u64[0];
  a1[2] = result;
  return result;
}

mach_port_context_t IPC::Connection::createClientConnection@<X0>(uint64_t a1@<X0>, mach_port_context_t *a2@<X8>)
{
  v4 = WTF::fastMalloc(0x188);
  result = IPC::Connection::Connection(v4, a1, 0);
  *a2 = result;
  return result;
}

mach_port_context_t IPC::Connection::Connection(mach_port_context_t a1, uint64_t a2, char a3)
{
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *a1 = 3;
  *(a1 + 24) = WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>::generateIdentifierInternal();
  *(a1 + 32) = a3;
  *(a1 + 33) = 1;
  *(a1 + 35) = 0;
  *(a1 + 48) = 0;
  *(a1 + 56) = 0;
  *(a1 + 40) = 0;
  WTF::WorkQueue::create();
  *(a1 + 72) = 0;
  *(a1 + 168) = 0;
  *(a1 + 176) = 0;
  *(a1 + 224) = 0;
  *(a1 + 232) = 0;
  *(a1 + 84) = 0;
  *(a1 + 76) = 0;
  *(a1 + 89) = 0;
  *(a1 + 100) = 0u;
  *(a1 + 116) = 0u;
  *(a1 + 132) = 0u;
  *(a1 + 145) = 0;
  *(a1 + 184) = 0u;
  *(a1 + 200) = 0u;
  *(a1 + 215) = 0;
  *(a1 + 233) = 257;
  *(a1 + 312) = 0;
  *(a1 + 320) = 0;
  *(a1 + 356) = 0;
  *(a1 + 388) = 0;
  *(a1 + 240) = 0;
  *(a1 + 248) = 0;
  *(a1 + 256) = 0;
  *(a1 + 264) = 0u;
  *(a1 + 280) = 0u;
  *(a1 + 292) = 0u;
  *(a1 + 336) = 0;
  *(a1 + 344) = 0;
  *(a1 + 328) = 0;
  *(a1 + 352) = 0;
  os_unfair_lock_lock(&IPC::s_connectionMapLock);
  {
    IPC::connectionMap(void)::map = 0;
  }

  v7 = *(a1 + 24);
  if (v7 == -1 || !v7)
  {
    __break(0xC471u);
    JUMPOUT(0x19D59ED7CLL);
  }

  v8 = IPC::connectionMap(void)::map;
  if (!IPC::connectionMap(void)::map)
  {
    WTF::HashTable<WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::ThreadSafeWeakPtr<IPC::Connection,WTF::NoTaggingTraits<IPC::Connection>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::ThreadSafeWeakPtr<IPC::Connection,WTF::NoTaggingTraits<IPC::Connection>>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::ThreadSafeWeakPtr<IPC::Connection,WTF::NoTaggingTraits<IPC::Connection>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ThreadSafeWeakPtr<IPC::Connection,WTF::NoTaggingTraits<IPC::Connection>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::expand();
    v8 = IPC::connectionMap(void)::map;
    v7 = *(a1 + 24);
  }

  v9 = *(v8 - 8);
  v10 = (v7 + ~(v7 << 32)) ^ ((v7 + ~(v7 << 32)) >> 22);
  v11 = 9 * ((v10 + ~(v10 << 13)) ^ ((v10 + ~(v10 << 13)) >> 8));
  v12 = (v11 ^ (v11 >> 15)) + ~((v11 ^ (v11 >> 15)) << 27);
  v13 = v9 & ((v12 >> 31) ^ v12);
  v14 = (v8 + 24 * v13);
  v15 = *v14;
  if (!*v14)
  {
    v16 = (v8 + 24 * v13);
LABEL_9:
    *v16 = v7;
LABEL_10:
    v17 = WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::controlBlock(a1);
    v18 = WTF::ThreadSafeWeakPtrControlBlock::weakRef(v17);
LABEL_11:
    v19 = v14[2];
    v14[2] = v18;
    if (v19)
    {
      WTF::ThreadSafeWeakPtrControlBlock::weakDeref(v19, v6);
    }

    v14[1] = a1;
    v20 = IPC::connectionMap(void)::map;
    if (IPC::connectionMap(void)::map)
    {
      v21 = *(IPC::connectionMap(void)::map - 12) + 1;
    }

    else
    {
      v21 = 1;
    }

    *(IPC::connectionMap(void)::map - 12) = v21;
    v22 = (*(v20 - 16) + v21);
    v23 = *(v20 - 4);
    if (v23 > 0x400)
    {
      if (v23 > 2 * v22)
      {
        goto LABEL_17;
      }
    }

    else if (3 * v23 > 4 * v22)
    {
      goto LABEL_17;
    }

    WTF::HashTable<WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::ThreadSafeWeakPtr<IPC::Connection,WTF::NoTaggingTraits<IPC::Connection>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::ThreadSafeWeakPtr<IPC::Connection,WTF::NoTaggingTraits<IPC::Connection>>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::ThreadSafeWeakPtr<IPC::Connection,WTF::NoTaggingTraits<IPC::Connection>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ThreadSafeWeakPtr<IPC::Connection,WTF::NoTaggingTraits<IPC::Connection>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::expand();
    goto LABEL_17;
  }

  v16 = 0;
  v25 = 1;
  while (v15 != v7)
  {
    if (v15 == -1)
    {
      v16 = v14;
    }

    v13 = (v13 + v25) & v9;
    v14 = (v8 + 24 * v13);
    v15 = *v14;
    ++v25;
    if (!*v14)
    {
      if (v16)
      {
        *v16 = 0;
        v16[1] = 0;
        v16[2] = 0;
        --*(v8 - 16);
        v7 = *(a1 + 24);
        v14 = v16;
        goto LABEL_9;
      }

      *v14 = v7;
      if (a1)
      {
        goto LABEL_10;
      }

      v18 = 0;
      goto LABEL_11;
    }
  }

LABEL_17:
  os_unfair_lock_unlock(&IPC::s_connectionMapLock);
  IPC::Connection::platformInitialize(a1, a2);
  return a1;
}

unint64_t WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::NetworkCache::Storage,(WTF::DestructionThread)2>::controlBlock(atomic_ullong *a1)
{
  result = *a1;
  if (result)
  {
    result = WTF::fastMalloc(0x20);
    *result = 0;
    *(result + 8) = xmmword_19E7014F0;
    *(result + 24) = a1;
    while (1)
    {
      v4 = *a1;
      if ((*a1 & 1) == 0)
      {
        break;
      }

      *(result + 8) = v4 >> 1;
      v5 = v4;
      atomic_compare_exchange_strong_explicit(a1, &v5, result, memory_order_release, memory_order_relaxed);
      if (v5 == v4)
      {
        return result;
      }
    }

    WTF::fastFree(result, v3);
    return *a1;
  }

  return result;
}

void ___ZN6WebKit15ProcessLauncher22finishLaunchingProcessEN3WTF12ASCIILiteralE_block_invoke(uint64_t a1, id a2)
{
  v2 = *(a1 + 32);
  if (*(v2 + 104) != 1 || object_getClass(a2) == MEMORY[0x1E69E9E98])
  {
LABEL_11:
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::ProcessLauncher,(WTF::DestructionThread)0>::deref((v2 + 8), a2);
    return;
  }

  WTF::deallocateSendRightSafely(*(a1 + 40));
  v4 = *(v2 + 24);
  if (v4)
  {
    pid = xpc_connection_get_pid(v4);
    v6 = *(a1 + 40);
    v7 = *(v2 + 24);
    if (v7)
    {
      v8 = v7;
    }

    LODWORD(v10) = v6;
    v11 = v7;
    WebKit::ProcessLauncher::didFinishLaunchingProcess(v2, pid, &v10);
    if (v11)
    {
    }

    v9 = *(v2 + 24);
    if (v9)
    {
    }

    *(v2 + 24) = 0;
    goto LABEL_11;
  }

  v10 = 0;
  v11 = 0;
  WebKit::ProcessLauncher::didFinishLaunchingProcess(v2, 0, &v10);
  if (v11)
  {
  }
}

void IPC::Connection::platformInitialize(mach_port_context_t guard, uint64_t a2)
{
  v4 = *a2;
  if (*(guard + 32) != 1)
  {
    if (v4)
    {
      *(guard + 304) = v4;
      goto LABEL_4;
    }

LABEL_12:
    __break(0xC471u);
    JUMPOUT(0x19D59EFACLL);
  }

  if (v4 + 1 <= 1)
  {
    goto LABEL_12;
  }

  *(guard + 320) = v4;
  mach_port_guard(*MEMORY[0x1E69E9A60], v4, guard, 1);
LABEL_4:
  v5 = *(a2 + 8);
  if (v5)
  {
    v6 = v5;
  }

  v7 = *(guard + 344);
  *(guard + 344) = v5;
  if (v7)
  {
  }
}

uint64_t WebKit::ProcessLauncher::didFinishLaunchingProcess(uint64_t a1, int a2, mach_port_name_t *a3)
{
  *(a1 + 108) = a2;
  *(a1 + 104) = 0;
  result = kdebug_trace();
  v6 = *(a1 + 16);
  if (v6)
  {
    (*(*v6 + 16))(*(a1 + 16));
    (*(*v6 + 32))(v6, a1, a3);
    v7 = *(*v6 + 24);

    return v7(v6);
  }

  else
  {
    v8 = *a3;
    if (*a3)
    {
      v9 = *MEMORY[0x1E69E9A60];

      return mach_port_mod_refs(v9, v8, 1u, -1);
    }
  }

  return result;
}

void *WebKit::WebProcess::initializeConnection(WebKit::WebProcess *this, IPC::Connection *a2)
{
  WebKit::AuxiliaryProcess::initializeConnection(this, a2);
  IPC::Connection::setDidCloseOnConnectionWorkQueueCallback(a2, WebKit::callExit);
  IPC::Connection::setShouldExitOnSyncMessageSendFailure(a2, 1);
  WebKit::EventDispatcher::ref(this + 160);
  WebKit::EventDispatcher::initializeConnection((this + 160), a2);
  WebKit::EventDispatcher::deref(this + 160);
  WebKit::ViewUpdateDispatcher::initializeConnection((this + 216), a2);
  WebKit::WebInspectorInterruptDispatcher::ref(this + 264);
  WebKit::WebInspectorInterruptDispatcher::initializeConnection((this + 264), a2);
  WebKit::WebInspectorInterruptDispatcher::deref(this + 264);
  v4 = *(this + 39);
  result = WTF::HashTable<WTF::ASCIILiteral,WTF::KeyValuePair<WTF::ASCIILiteral,std::unique_ptr<WebKit::NetworkProcessSupplement>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ASCIILiteral,std::unique_ptr<WebKit::NetworkProcessSupplement>>>,WTF::DefaultHash<WTF::ASCIILiteral>,WTF::HashMap<WTF::ASCIILiteral,std::unique_ptr<WebKit::NetworkProcessSupplement>,WTF::DefaultHash<WTF::ASCIILiteral>,WTF::HashTraits<WTF::ASCIILiteral>,WTF::HashTraits<std::unique_ptr<WebKit::NetworkProcessSupplement>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ASCIILiteral>,WTF::FastMalloc>::begin(v4);
  v6 = result;
  v8 = v7;
  if (v4)
  {
    v4 += 3 * *(v4 - 1);
  }

  if (v4 != result)
  {
    do
    {
      result = (*(**(v6 + 16) + 16))(*(v6 + 16), a2);
      do
      {
        v6 += 24;
        if (v6 == v8)
        {
          break;
        }
      }

      while (!*(v6 + 8) || *v6 == -1);
    }

    while (v6 != v4);
  }

  return result;
}

atomic_uint *WebKit::WebProcessProxy::didFinishLaunching(uint64_t a1, uint64_t a2, atomic_uint *a3)
{
  v86 = *MEMORY[0x1E69E9840];
  v6 = qword_1ED6416A0;
  v7 = os_log_type_enabled(qword_1ED6416A0, OS_LOG_TYPE_DEFAULT);
  if (v7)
  {
    v8 = *(a1 + 80);
    if (v8)
    {
      LODWORD(v8) = *(v8 + 108);
    }

    *buf = 134218240;
    *&buf[4] = a1;
    *&buf[12] = 1024;
    *&buf[14] = v8;
    _os_log_impl(&dword_19D52D000, v6, OS_LOG_TYPE_DEFAULT, "%p - [PID=%i] WebProcessProxy::didFinishLaunching:", buf, 0x12u);
  }

  v9 = WTF::RunLoop::mainSingleton(v7);
  if ((WTF::RunLoop::isCurrent(v9) & 1) == 0 && WTF::linkedOnOrAfterSDKWithBehavior())
  {
    __break(0xC471u);
    goto LABEL_108;
  }

  v10 = (a1 + 16);
  atomic_fetch_add((a1 + 16), 1u);
  v11 = *a3 - 1;
  WebKit::AuxiliaryProcessProxy::didFinishLaunching(a1, a2, a3);
  if (v11 < 0xFFFFFFFE)
  {
    v12 = *(a1 + 800);
    if (v12)
    {
      CFRetain(v12[1]);
      v14 = WebKit::WebsiteDataStore::networkProcess(v12, v13);
      v15 = v14 + 4;
      atomic_fetch_add(v14 + 4, 1u);
      WebKit::NetworkProcessProxy::sendXPCEndpointToProcess(v14, a1);
      WTF::ThreadSafeRefCounted<WebKit::AuxiliaryProcessProxy,(WTF::DestructionThread)2>::deref(v15);
      CFRelease(v12[1]);
    }

    v16 = *(*(a1 + 552) + 8);
    v80 = v16;
    if (v16)
    {
      v17 = v16 - 16;
    }

    else
    {
      v17 = 0;
    }

    v18 = CFRetain(*(v17 + 8));
    if ((*(v17 + 336) & 1) == 0)
    {
      v18 = (*(**(v17 + 312) + 48))(*(v17 + 312), v17);
      *(v17 + 336) = 1;
    }

    if (*(v17 + 440) != 1)
    {
LABEL_76:
      v61 = *(v17 + 48);
      if (*(v61 + 72) == 1)
      {
        WebKit::AuxiliaryProcessProxy::protectedConnection(a1, buf);
        v62 = *buf;
        *(*buf + 92) = 1;
        *buf = 0;
        WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v62);
        v61 = *(v17 + 48);
      }

      if (*(v61 + 73) == 1)
      {
        WebKit::AuxiliaryProcessProxy::protectedConnection(a1, buf);
        v63 = *buf;
        *(*buf + 93) = 1;
        *buf = 0;
        WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v63);
      }

      WebKit::WebProcessProxy::pages(a1, &v82);
      if (v83)
      {
        v65 = v82;
        v66 = 8 * v83;
        do
        {
          v67 = *v65;
          v68 = *(*(*v65 + 32) + 2872);
          if (v68)
          {
            ++*(v68 + 24);
            v69 = qword_1ED641008;
            if (os_log_type_enabled(qword_1ED641008, OS_LOG_TYPE_DEFAULT))
            {
              WebKit::MediaCapability::environmentIdentifier(v68, &v81);
              WTF::String::utf8();
              if (v84)
              {
                v70 = v84 + 16;
              }

              else
              {
                v70 = 0;
              }

              *buf = 134218242;
              *&buf[4] = v17;
              *&buf[12] = 2082;
              *&buf[14] = v70;
              _os_log_impl(&dword_19D52D000, v69, OS_LOG_TYPE_DEFAULT, "%p - WebProcessPool::processDidFinishLaunching[envID=%{public}s]: updating media capability", buf, 0x16u);
              v72 = v84;
              v84 = 0;
              if (v72)
              {
                if (*v72 == 1)
                {
                  WTF::fastFree(v72, v71);
                }

                else
                {
                  --*v72;
                }
              }

              v73 = v81;
              v81 = 0;
              if (v73 && atomic_fetch_add_explicit(v73, 0xFFFFFFFE, memory_order_relaxed) == 2)
              {
                WTF::StringImpl::destroy(v73, v71);
              }

              v67 = *v65;
            }

            WebKit::WebPageProxy::updateMediaCapability(v67);
            WTF::RefCounted<WebKit::MediaCapability>::deref(v68 + 24, v74);
          }

          v65 = (v65 + 8);
          v66 -= 8;
        }

        while (v66);
      }

      WTF::Vector<WTF::Ref<WebKit::WebPageProxy,WTF::RawPtrTraits<WebKit::WebPageProxy>,WTF::DefaultRefDerefTraits<WebKit::WebPageProxy>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v82, v64);
      if (v80)
      {
        CFRelease(*(v80 - 8));
      }

      WebKit::BackgroundProcessResponsivenessTimer::updateState((a1 + 416));
      v75 = *(*(a1 + 160) + 8);
      if (v75)
      {
        atomic_fetch_add((v75 + 16), 1u);
        shouldTakeNearSuspendedAssertion = WebKit::WebProcessProxy::shouldTakeNearSuspendedAssertion(a1);
        WebKit::ProcessThrottler::setShouldTakeNearSuspendedAssertion((a1 + 144), shouldTakeNearSuspendedAssertion);
        shouldDropNearSuspendedAssertionAfterDelay = WebKit::WebProcessProxy::shouldDropNearSuspendedAssertionAfterDelay(a1);
        WebKit::ProcessThrottler::setShouldDropNearSuspendedAssertionAfterDelay(a1 + 144, shouldDropNearSuspendedAssertionAfterDelay);
        WebKit::WebProcessProxy::unblockAccessibilityServerIfNeeded(a1);
        WebKit::WebProcessProxy::enableRemoteInspectorIfNeeded(a1);
        WebKit::AuxiliaryProcessProxy::beginResponsivenessChecks(a1);
        WebKit::ProcessThrottler::deref((a1 + 144));
        return WTF::ThreadSafeRefCounted<WebKit::AuxiliaryProcessProxy,(WTF::DestructionThread)2>::deref(v10);
      }

      __break(0xC471u);
LABEL_113:
      JUMPOUT(0x19D59FA8CLL);
    }

    v84 = 0;
    WTF::WallTime::now(v18);
    if (v19 >= 1.84467441e19)
    {
      v20 = -1;
    }

    else if (v19 > 0.0)
    {
      v20 = v19;
    }

    else
    {
      v20 = 0;
    }

    v21 = *(a1 + 80);
    if (v21)
    {
      v22 = *(v21 + 108);
    }

    else
    {
      v22 = 0;
    }

    v26 = 13;
    v27 = v20;
    do
    {
      ++v26;
      v28 = v27 > 9;
      v27 /= 0xAuLL;
    }

    while (v28);
    a3 = (a1 + 16);
    v6 = a1;
    v79 = v17;
    if ((v22 & 0x80000000) != 0)
    {
      v31 = -v22;
      v29 = 1;
      do
      {
        ++v29;
        v32 = v31 >= 0xA;
        v31 /= 0xAu;
      }

      while (v32);
    }

    else
    {
      v29 = 0;
      v30 = v22;
      do
      {
        ++v29;
        v28 = v30 > 9;
        v30 /= 0xAu;
      }

      while (v28);
    }

    if (v29 < 0)
    {
      goto LABEL_111;
    }

    v33 = v26 - 13;
    v34 = v29 + 3;
    v35 = __OFADD__(v29, 3);
    if (v33 < 0)
    {
      goto LABEL_111;
    }

    if (v35)
    {
      goto LABEL_111;
    }

    v36 = __OFADD__(v33, v34);
    v37 = v33 + v34;
    if (v36)
    {
      goto LABEL_111;
    }

    v38 = (v37 + 10);
    if (__OFADD__(v37, 10))
    {
      goto LABEL_111;
    }

    if (v37 == -10)
    {
      goto LABEL_109;
    }

    if ((v38 & 0x80000000) != 0 || (WTF::tryFastCompactMalloc((v38 + 20)), (v39 = *buf) == 0))
    {
LABEL_111:
      __break(0xC471u);
      goto LABEL_113;
    }

    **buf = 2;
    *(v39 + 4) = v38;
    *(v39 + 20) = *"WebProcess";
    *(v39 + 8) = v39 + 20;
    *(v39 + 16) = 4;
    *(v39 + 28) = 29555;
    if (v38 > 9)
    {
      v40 = v38 - 10;
      v82 = v20;
      WTF::StringTypeAdapter<unsigned long long,void>::writeTo<unsigned char>(&v82, (v39 + 30), v38 - 10);
      LODWORD(v41) = 0;
      v42 = v82;
      do
      {
        v41 = (v41 + 1);
        v28 = v42 > 9;
        v42 /= 0xAuLL;
      }

      while (v28);
      if (v40 >= v41)
      {
        v43 = v39 + 30 + v41;
        *(v43 + 2) = 100;
        *v43 = 26992;
        if (v40 - v41 > 2)
        {
          if ((v22 & 0x80000000) != 0)
          {
            v50 = -v22;
            v51 = 12;
            while (v51 != -1)
            {
              buf[v51--] = (v50 % 0xA) | 0x30;
              v28 = v50 > 9;
              v50 /= 0xAu;
              if (!v28)
              {
                if (v51 < 0xD)
                {
                  buf[v51] = 45;
                  v52 = v51 + 1;
                  v53 = (v39 + v41 + 33);
                  v54 = (v29 + v26) - v41 - 13;
                  a1 = v6;
                  while (v54)
                  {
                    *v53++ = buf[v51];
                    ++v52;
                    ++v51;
                    --v54;
                    if (v52 == 14)
                    {
                      goto LABEL_64;
                    }
                  }
                }

                break;
              }
            }
          }

          else
          {
            v44 = 12;
            while (v44 != -1)
            {
              buf[v44--] = (v22 % 0xA) | 0x30;
              v28 = v22 > 9;
              v22 /= 0xAu;
              if (!v28)
              {
                v45 = (v29 + v26) - v41;
                v46 = (v39 + v41 + 33);
                v47 = v45 - 13;
                v48 = v44 + 1;
                v49 = v44 + 2;
                a1 = v6;
                while (v47)
                {
                  *v46++ = buf[v48];
                  ++v49;
                  ++v48;
                  --v47;
                  if (v49 == 14)
                  {
                    goto LABEL_64;
                  }
                }

                break;
              }
            }
          }
        }
      }
    }

LABEL_108:
    __break(1u);
LABEL_109:
    v39 = MEMORY[0x1E696EB88];
    atomic_fetch_add_explicit(MEMORY[0x1E696EB88], 2u, memory_order_relaxed);
    a1 = v6;
    v10 = a3;
LABEL_64:
    v82 = v39;
    WebKit::SandboxExtension::createHandleForTemporaryFile(*(v39 + 8), (*(v39 + 4) | (((*(v39 + 16) >> 2) & 1) << 32)), 1, buf);
    if (buf[16] == 1)
    {
      v56 = *&buf[8];
      v84 = *buf;
      *buf = 0;
      *&buf[8] = 0;
      v82 = v56;
      if (atomic_fetch_add_explicit(v39, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v39, v55);
      }
    }

    v17 = v79;
    if (buf[16] == 1)
    {
      v57 = *&buf[8];
      *&buf[8] = 0;
      if (v57 && atomic_fetch_add_explicit(v57, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v57, v55);
      }

      WebKit::SandboxExtensionHandle::~SandboxExtensionHandle(buf);
    }

    v58 = *(v79 + 448);
    *buf = &v84;
    *&buf[8] = &v82;
    *&buf[16] = v58;
    WebKit::AuxiliaryProcessProxy::send<Messages::WebProcess::StartMemorySampler>(a1, buf);
    v60 = v82;
    v82 = 0;
    if (v60 && atomic_fetch_add_explicit(v60, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v60, v59);
    }

    WebKit::SandboxExtensionHandle::~SandboxExtensionHandle(&v84);
    goto LABEL_76;
  }

  v23 = qword_1ED6416A0;
  if (os_log_type_enabled(qword_1ED6416A0, OS_LOG_TYPE_ERROR))
  {
    v78 = *(a1 + 80);
    if (v78)
    {
      LODWORD(v78) = *(v78 + 108);
    }

    *buf = 134218240;
    *&buf[4] = a1;
    *&buf[12] = 1024;
    *&buf[14] = v78;
    _os_log_error_impl(&dword_19D52D000, v23, OS_LOG_TYPE_ERROR, "%p - [PID=%i] WebProcessProxy::didFinishLaunching: Invalid connection identifier (web process failed to launch)", buf, 0x12u);
  }

  v24 = WebKit::WebProcessProxy::terminationReason(a1);
  result = WebKit::WebProcessProxy::processDidTerminateOrFailedToLaunch(a1, v24);
  if (a1)
  {
    return WTF::ThreadSafeRefCounted<WebKit::AuxiliaryProcessProxy,(WTF::DestructionThread)2>::deref(v10);
  }

  return result;
}

void WebKit::AuxiliaryProcessProxy::didFinishLaunching(uint64_t a1, uint64_t a2, _DWORD *a3)
{
  v53 = *MEMORY[0x1E69E9840];
  WTF::MonotonicTime::now(a1);
  v7 = v6 - *(a1 + 136);
  if (v7 > 1.0)
  {
    v8 = qword_1ED6416A0;
    if (os_log_type_enabled(qword_1ED6416A0, OS_LOG_TYPE_FAULT))
    {
      v46 = (*(*a1 + 184))(a1);
      *buf = 136315650;
      *&buf[4] = v46;
      *v50 = 2048;
      *&v50[2] = a1;
      v51 = 2048;
      v52 = v7;
      _os_log_fault_impl(&dword_19D52D000, v8, OS_LOG_TYPE_FAULT, "%s process (%p) took %f seconds to launch", buf, 0x20u);
    }
  }

  if ((*a3 - 1) <= 0xFFFFFFFD)
  {
    v9 = WTF::fastMalloc(0x188);
    IPC::Connection::Connection(v9, a3, 1);
    while (1)
    {
      v10 = *v9;
      if ((*v9 & 1) == 0)
      {
        break;
      }

      v11 = *v9;
      atomic_compare_exchange_strong_explicit(v9, &v11, v10 + 2, memory_order_relaxed, memory_order_relaxed);
      if (v11 == v10)
      {
        goto LABEL_10;
      }
    }

    WTF::ThreadSafeWeakPtrControlBlock::strongRef(*v9);
LABEL_10:
    v12 = *(a1 + 88);
    *(a1 + 88) = v9;
    if (v12)
    {
      WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v12);
    }

    {
      WebKit::connectionToProcessMap(void)::map = 0;
    }

    v13 = *(*(a1 + 88) + 24);
    if (v13 == -1 || !v13)
    {
      __break(0xC471u);
      JUMPOUT(0x19D59FF94);
    }

    v14 = WebKit::connectionToProcessMap(void)::map;
    if (!WebKit::connectionToProcessMap(void)::map)
    {
      WTF::HashTable<WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::WeakPtr<WebKit::AuxiliaryProcessProxy,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::WeakPtr<WebKit::AuxiliaryProcessProxy,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::WeakPtr<WebKit::AuxiliaryProcessProxy,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::WeakPtr<WebKit::AuxiliaryProcessProxy,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::expand();
      v14 = WebKit::connectionToProcessMap(void)::map;
    }

    v15 = *(v14 - 8);
    v16 = (v13 + ~(v13 << 32)) ^ ((v13 + ~(v13 << 32)) >> 22);
    v17 = 9 * ((v16 + ~(v16 << 13)) ^ ((v16 + ~(v16 << 13)) >> 8));
    v18 = (v17 ^ (v17 >> 15)) + ~((v17 ^ (v17 >> 15)) << 27);
    v19 = v15 & ((v18 >> 31) ^ v18);
    v20 = (v14 + 16 * v19);
    v21 = *v20;
    if (*v20)
    {
      v22 = 0;
      v23 = 1;
      while (v21 != v13)
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
            --*(v14 - 16);
            v20 = v22;
          }

          goto LABEL_26;
        }
      }

      goto LABEL_35;
    }

LABEL_26:
    *v20 = v13;
    WTF::WeakPtrFactory<WebPushD::PushServiceConnection,WTF::DefaultWeakPtrImpl>::initializeIfNeeded((a1 + 8), a1);
    v25 = *(a1 + 8);
    atomic_fetch_add(v25, 1u);
    v26 = v20[1];
    v20[1] = v25;
    if (v26 && atomic_fetch_add(v26, 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, v26);
      WTF::fastFree(v26, v24);
    }

    v27 = WebKit::connectionToProcessMap(void)::map;
    if (WebKit::connectionToProcessMap(void)::map)
    {
      v28 = *(WebKit::connectionToProcessMap(void)::map - 12) + 1;
    }

    else
    {
      v28 = 1;
    }

    *(WebKit::connectionToProcessMap(void)::map - 12) = v28;
    v29 = (*(v27 - 16) + v28);
    v30 = *(v27 - 4);
    if (v30 > 0x400)
    {
      if (v30 > 2 * v29)
      {
        goto LABEL_35;
      }
    }

    else if (3 * v30 > 4 * v29)
    {
LABEL_35:
      v31 = (*(*a1 + 216))(a1, v9);
      v32 = WTF::RunLoop::currentSingleton(v31);
      IPC::Connection::open(v9, a1 + 32, v32);
      WTF::WeakPtrFactory<WebPushD::PushServiceConnection,WTF::DefaultWeakPtrImpl>::initializeIfNeeded((a1 + 8), a1);
      v33 = *(a1 + 8);
      atomic_fetch_add(v33, 1u);
      v35 = WTF::fastMalloc(0x10);
      *v35 = &unk_1F1114CD8;
      v35[1] = v33;
      v37 = v9[6];
      v9[6] = v35;
      if (v37)
      {
        (*(*v37 + 8))(v37);
      }

      *&v36 = 0;
      v38 = *(a1 + 64);
      *buf = v38;
      v39 = *(a1 + 76);
      *&buf[8] = *(a1 + 72);
      *v50 = v39;
      v48 = v36;
      *(a1 + 64) = 0;
      *(a1 + 72) = 0;
      if (v39)
      {
        v40 = 40 * v39;
        do
        {
          if ((*(*a1 + 208))(a1, v38))
          {
            if (*(v38 + 32) == 1)
            {
              v41 = *(v38 + 16);
              v42 = *(v38 + 24);
              *(v38 + 16) = 0;
              v47[0] = v41;
              v47[1] = v42;
              IPC::Connection::sendMessageWithAsyncReply(v9, v38, v47, *(v38 + 8), 0);
              v43 = v47[0];
              v47[0] = 0;
              if (v43)
              {
                (*(*v43 + 8))(v43);
              }
            }

            else
            {
              IPC::Connection::sendMessageImpl(v9, v38, *(v38 + 8), 0);
            }
          }

          v38 += 40;
          v40 -= 40;
        }

        while (v40);
      }

      WTF::Vector<WebKit::AuxiliaryProcessProxy::PendingMessage,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(buf, v34);
      WTF::Vector<WebKit::AuxiliaryProcessProxy::PendingMessage,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v48, v44);
      WebKit::ProcessThrottler::didConnectToProcess((a1 + 144), a1);
      if (a2)
      {
        v45 = *(a2 + 32);
        *(a2 + 32) = 0;
        if (v45)
        {
          WTF::ThreadSafeRefCounted<WebKit::LaunchGrant,(WTF::DestructionThread)0>::deref(v45);
        }
      }

      WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v9);
      return;
    }

    WTF::HashTable<WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::WeakPtr<WebKit::AuxiliaryProcessProxy,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::WeakPtr<WebKit::AuxiliaryProcessProxy,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::WeakPtr<WebKit::AuxiliaryProcessProxy,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::WeakPtr<WebKit::AuxiliaryProcessProxy,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::expand();
    goto LABEL_35;
  }
}

uint64_t WebKit::EventDispatcher::ref(uint64_t this)
{
  if (!*(this + 16))
  {
    this = 120;
    __break(0xC471u);
  }

  return this;
}

bmalloc::api *IPC::Connection::addMessageReceiver(uint64_t a1, void *a2, uint64_t a3, char a4, uint64_t a5)
{
  if (a5)
  {
    v16 = a5;
    v8 = 1;
  }

  else
  {
    v8 = 0;
    LOBYTE(v16) = 0;
  }

  LOBYTE(v15) = a4;
  BYTE1(v15) = 1;
  v17 = v8;
  v9 = IPC::FunctionDispatcherQueue::operator new(0x18, a2);
  *v9 = &unk_1F1147318;
  *(v9 + 1) = a2;
  WTF::WeakPtrFactory<IPC::MessageReceiver,WTF::DefaultWeakPtrImpl>::initializeIfNeeded((a3 + 8), a3);
  v10 = *(a3 + 8);
  atomic_fetch_add(v10, 1u);
  *(v9 + 2) = v10;
  os_unfair_lock_lock((a1 + 100));
  IPC::Connection::enqueueMatchingMessagesToMessageReceiveQueue(a1, v9, &v15);
  v13 = v9;
  v14 = 0;
  IPC::MessageReceiveQueueMap::add((a1 + 136), &v13, &v15);
  v11 = v13;
  v13 = 0;
  if (v11)
  {
    (*(*v11 + 8))(v11);
  }

  os_unfair_lock_unlock((a1 + 100));
  return std::unique_ptr<IPC::FunctionDispatcherQueue>::reset[abi:sn200100](&v14, 0);
}

uint64_t IPC::FunctionDispatcherQueue::operator new(IPC::FunctionDispatcherQueue *this, void *a2)
{
  if (this == 24 && IPC::FunctionDispatcherQueue::operator new(unsigned long)::s_heapRef)
  {
    return bmalloc::api::tzoneAllocateNonCompact(IPC::FunctionDispatcherQueue::operator new(unsigned long)::s_heapRef, a2);
  }

  else
  {
    return bmalloc::api::tzoneAllocateNonCompactSlow();
  }
}

WTF *IPC::Connection::enqueueMatchingMessagesToMessageReceiveQueue(WTF *result, WTF *a2, uint64_t *a3)
{
  v6 = atomic_load(result + 33);
  if (v6)
  {
    v7 = a3;
    v8 = a2;
    v9 = result;
    v10 = *(result + 2);
    if (v10)
    {
      v11 = *(v10 + 88);
      if (v11)
      {
        WTF::ThreadSafeWeakPtrControlBlock::makeStrongReferenceIfPossible<WebKit::RemoteImageBufferProxy>(v11, *(v10 + 80), &v27);
        v26 = v27;
        *&v27 = 0;
        if (v26)
        {
          WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WTF::SerialFunctionDispatcher,(WTF::DestructionThread)0>::deref((v26 + 8));
        }
      }

      v12 = 0;
      *&v27 = v9;
      *(&v27 + 1) = v7;
      v28[0] = v8;
      v13 = 1;
      atomic_compare_exchange_strong_explicit((v10 + 3), &v12, 1u, memory_order_acquire, memory_order_acquire);
      if (v12)
      {
        MEMORY[0x19EB01E30](v10 + 3);
      }

      IPC::Connection::SyncMessageState::enqueueMatchingMessages(IPC::Connection&,IPC::MessageReceiveQueue &,IPC::ReceiverMatcher const&)::$_0::operator()(&v27, (v10 + 16));
      IPC::Connection::SyncMessageState::enqueueMatchingMessages(IPC::Connection&,IPC::MessageReceiveQueue &,IPC::ReceiverMatcher const&)::$_0::operator()(&v27, (v10 + 48));
      atomic_compare_exchange_strong_explicit((v10 + 3), &v13, 0, memory_order_release, memory_order_relaxed);
      if (v13 != 1)
      {
        WTF::Lock::unlockSlow((v10 + 3));
      }
    }

    v14 = 0uLL;
    v27 = 0u;
    *v28 = 0u;
    v15 = *(v9 + 13);
    v16 = *(v9 + 14);
    if (v15 == v16)
    {
      v20 = 0;
      v19 = 0;
      v17 = *(v9 + 32);
      v6 = *(v9 + 13);
      goto LABEL_20;
    }

    v17 = *(v9 + 32);
    v3 = 4223;
    v4 = &IPC::Detail::messageDescriptions;
    v5 = 24;
LABEL_10:
    if (v15 < v17)
    {
      a3 = (*(v9 + 15) + 8 * v15);
      if (*(v7 + 1) != 1)
      {
        goto LABEL_45;
      }

      v6 = *a3;
      v18 = *(*a3 + 50);
      if (v18 >= v3)
      {
        v18 = v3;
      }

      if (*v7 == *(v4 + v18 * v5 + 16))
      {
        goto LABEL_43;
      }

LABEL_15:
      WTF::Deque<WTF::UniqueRef<IPC::Decoder>,0ul>::append(&v27, a3);
      goto LABEL_16;
    }

    while (1)
    {
      do
      {
        while (1)
        {
          __break(1u);
LABEL_43:
          if (*(v7 + 16) == 1 && v7[1] != *(v6 + 56))
          {
            goto LABEL_15;
          }

LABEL_45:
          (*(*v8 + 16))(v8, v9, a3);
LABEL_16:
          v17 = *(v9 + 32);
          v6 = v15 + v17;
          v15 += v17 + 1;
          do
          {
            v15 -= v17;
          }

          while (v15 >= v17);
          if (v16 != v15)
          {
            goto LABEL_10;
          }

          v6 = *(v9 + 13);
          v15 = *(v9 + 14);
          v14 = v27;
          v19 = v28[0];
          v20 = v28[1];
LABEL_20:
          *(v9 + 104) = v14;
          *&v27 = v6;
          *(&v27 + 1) = v15;
          v7 = *(v9 + 15);
          *(v9 + 15) = v19;
          v28[0] = v7;
          *(v9 + 32) = v20;
          LODWORD(v28[1]) = v17;
          v21 = v15 - v6;
          if (v15 >= v6)
          {
            break;
          }

          if (v15 <= v17)
          {
            if (v15)
            {
              v8 = (8 * v15);
              v9 = v7;
              do
              {
                std::unique_ptr<IPC::Decoder>::reset[abi:sn200100](v9, 0);
                v9 = (v9 + 8);
                v8 = (v8 - 8);
              }

              while (v8);
              v6 = v27;
            }

            if (v6 <= v17)
            {
              if (v6 != v17)
              {
                v24 = &v7[v6];
                v25 = 8 * v17 - 8 * v6;
                do
                {
                  std::unique_ptr<IPC::Decoder>::reset[abi:sn200100](v24++, 0);
                  v25 -= 8;
                }

                while (v25);
              }

              goto LABEL_27;
            }
          }
        }
      }

      while (v17 < v6);
      if (v21 == -1)
      {
        break;
      }

      if (v17 - v6 >= v21)
      {
        goto LABEL_24;
      }
    }

    v21 = v17 - v6;
LABEL_24:
    if (v21)
    {
      v22 = 8 * v21;
      v23 = &v7[v6];
      do
      {
        std::unique_ptr<IPC::Decoder>::reset[abi:sn200100](v23++, 0);
        v22 -= 8;
      }

      while (v22);
    }

LABEL_27:
    result = v28[0];
    if (v28[0])
    {
      v28[0] = 0;
      LODWORD(v28[1]) = 0;
      return WTF::fastFree(result, a2);
    }
  }

  return result;
}

uint64_t *IPC::MessageReceiveQueueMap::add(uint64_t *a1, uint64_t **a2, unsigned __int8 *a3)
{
  v3 = *a2;
  *a2 = 0;
  v5 = v3;
  v6 = 1;
  result = IPC::MessageReceiveQueueMap::addImpl(a1, &v5, a3);
  if (v6 && v6 != 255)
  {
    result = v5;
    v5 = 0;
    if (result)
    {
      return (*(*result + 8))(result);
    }
  }

  return result;
}

void WebKit::WebProcessProxy::connectionWillOpen(WebKit::WebProcessProxy *this, IPC::Connection *a2)
{
  if ((*(a2 + 96) & 1) == 0)
  {
    *(a2 + 95) = 256;
  }

  *(a2 + 34) = 1;
}