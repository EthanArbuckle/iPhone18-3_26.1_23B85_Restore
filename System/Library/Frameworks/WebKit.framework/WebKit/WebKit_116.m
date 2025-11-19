void sub_19DC0F990(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, WTF::Lock *a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21, uint64_t a22, uint64_t a23, char a24, uint64_t a25, WTF::StringImpl *a26, WTF::StringImpl *a27, WTF::StringImpl *a28, WTF::StringImpl *a29, WTF::StringImpl *a30, WTF::StringImpl *a31, WTF::StringImpl *a32, uint64_t a33, WTF::StringImpl *a34, char a35)
{
  if (atomic_fetch_add(v35 + 2, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v35 + 2);
    (*(*v35 + 16))(v35);
  }

  _Unwind_Resume(exception_object);
}

WTF::StringImpl *WTF::Logger::log<WTF::Logger::LogSiteIdentifier,char [12],WTF::NativePromise<void,WebKit::ExtensionCapabilityGrantError,0u>>(uint64_t a1, WTF::Logger::LogSiteIdentifier *this, const char *a3, uint64_t a4)
{
  v38[2] = *MEMORY[0x1E69E9840];
  WTF::Logger::LogSiteIdentifier::toString(&v32, this);
  WTF::String::String(&v31, a3);
  WTF::LogArgument<WTF::NativePromise<void,WebKit::ExtensionCapabilityGrantError,0u>>::toString(&v30, a4);
  WTF::makeString<WTF::String,WTF::String,WTF::String>(&v32, &v31, &v30, &v33);
  v8 = v30;
  v30 = 0;
  if (v8 && atomic_fetch_add_explicit(v8, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v8, v7);
  }

  v9 = v31;
  v31 = 0;
  if (v9 && atomic_fetch_add_explicit(v9, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v9, v7);
  }

  v10 = v32;
  v32 = 0;
  if (v10 && atomic_fetch_add_explicit(v10, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v10, v7);
  }

  v11 = *(a1 + 32);
  v12 = os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT);
  if (v12)
  {
    WTF::String::utf8();
    v14 = v29[0] ? v29[0] + 16 : 0;
    *buf = 136446210;
    v35 = v14;
    _os_log_impl(&dword_19D52D000, v11, OS_LOG_TYPE_DEFAULT, "%{public}s", buf, 0xCu);
    v12 = v29[0];
    v29[0] = 0;
    if (v12)
    {
      if (*v12 == 1)
      {
        v12 = WTF::fastFree(v12, v13);
      }

      else
      {
        --*v12;
      }
    }
  }

  if (*a1 && *(a1 + 16) >= 4u)
  {
    v15 = MEMORY[0x1E696EBC0];
    while (1)
    {
      v16 = *v15;
      if (v16)
      {
        break;
      }

      v17 = *v15;
      atomic_compare_exchange_strong_explicit(v15, &v17, v16 | 1, memory_order_acquire, memory_order_acquire);
      if (v17 == v16)
      {
        v18 = WTF::Logger::observers(v12);
        v19 = *(v18 + 12);
        if (v19)
        {
          v20 = *v18;
          v21 = *v18 + 8 * v19;
          do
          {
            v22 = *v20;
            *buf = 0;
            WTF::Logger::LogSiteIdentifier::toString((&v35 + 4), this);
            v36 = 0;
            WTF::String::String(v37, a3);
            v37[2] = 0;
            WTF::LogArgument<WTF::NativePromise<void,WebKit::ExtensionCapabilityGrantError,0u>>::toString(v38, a4);
            WTF::Vector<WTF::JSONLogValue,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::Vector(v29, buf, 3uLL);
            (*(*v22 + 16))(v22, a1, 4, v29);
            WTF::Vector<std::tuple<Inspector::BackendDispatcher::CommonErrorCode,WTF::String>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v29, v23);
            for (i = 40; i != -8; i -= 16)
            {
              v25 = *&buf[i];
              *&buf[i] = 0;
              if (v25 && atomic_fetch_add_explicit(v25, 0xFFFFFFFE, memory_order_relaxed) == 2)
              {
                WTF::StringImpl::destroy(v25, v13);
              }
            }

            ++v20;
          }

          while (v20 != v21);
        }

        v26 = 1;
        atomic_compare_exchange_strong_explicit(v15, &v26, 0, memory_order_release, memory_order_relaxed);
        if (v26 != 1)
        {
          WTF::Lock::unlockSlow(MEMORY[0x1E696EBC0]);
        }

        break;
      }
    }
  }

  result = v33;
  v33 = 0;
  if (result)
  {
    if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      return WTF::StringImpl::destroy(result, v13);
    }
  }

  return result;
}

void sub_19DC1006C(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, WTF::StringImpl *a13, WTF::StringImpl *a14, uint64_t a15, WTF::StringImpl *a16, char a17)
{
  v19 = 1;
  atomic_compare_exchange_strong_explicit(v17, &v19, 0, memory_order_release, memory_order_relaxed);
  if (v19 != 1)
  {
    WTF::Lock::unlockSlow(MEMORY[0x1E696EBC0]);
  }

  if (a16)
  {
    if (atomic_fetch_add_explicit(a16, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(a16, a2);
    }
  }

  _Unwind_Resume(exception_object);
}

uint64_t WTF::NativePromise<void,WebKit::ExtensionCapabilityGrantError,0u>::dispatchAll(uint64_t a1, atomic_uchar *volatile *a2)
{
  v17 = &v19;
  v18 = 1;
  __dst = &v22;
  v21 = 1;
  WTF::VectorBuffer<WTF::Ref<WTF::NativePromise<WTF::String,void,0u>::ThenCallbackBase,WTF::RawPtrTraits<WTF::NativePromise<WTF::String,void,0u>::ThenCallbackBase>,WTF::DefaultRefDerefTraits<WTF::NativePromise<WTF::String,void,0u>::ThenCallbackBase>>,1ul,WTF::FastMalloc>::adopt(&__dst, (a1 + 72));
  v4 = *(a1 + 84);
  if (v4)
  {
    WTF::VectorDestructor<true,WTF::Ref<WTF::NativePromise<WTF::String,void,0u>::ThenCallbackBase,WTF::RawPtrTraits<WTF::NativePromise<WTF::String,void,0u>::ThenCallbackBase>,WTF::DefaultRefDerefTraits<WTF::NativePromise<WTF::String,void,0u>::ThenCallbackBase>>>::destruct(*(a1 + 72), (*(a1 + 72) + 8 * v4));
  }

  WTF::VectorBuffer<WTF::Ref<WTF::NativePromise<WTF::String,void,0u>::ThenCallbackBase,WTF::RawPtrTraits<WTF::NativePromise<WTF::String,void,0u>::ThenCallbackBase>,WTF::DefaultRefDerefTraits<WTF::NativePromise<WTF::String,void,0u>::ThenCallbackBase>>,1ul,WTF::FastMalloc>::adopt((a1 + 72), &v17);
  WTF::Vector<WTF::Ref<WTF::NativePromise<WTF::String,void,0u>::ThenCallbackBase,WTF::RawPtrTraits<WTF::NativePromise<WTF::String,void,0u>::ThenCallbackBase>,WTF::DefaultRefDerefTraits<WTF::NativePromise<WTF::String,void,0u>::ThenCallbackBase>>,1ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v17, v5);
  *&v6 = 0;
  v7 = *(a1 + 96);
  v17 = v7;
  v8 = *(a1 + 108);
  LODWORD(v18) = *(a1 + 104);
  HIDWORD(v18) = v8;
  v16 = v6;
  *(a1 + 96) = 0;
  *(a1 + 104) = 0;
  WTF::Vector<WTF::NativePromiseProducer<void,WebKit::ExtensionCapabilityGrantError,0u>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v16, v9);
  if (HIDWORD(v21))
  {
    v11 = __dst;
    v12 = 8 * HIDWORD(v21);
    do
    {
      WTF::NativePromise<void,WebKit::ExtensionCapabilityGrantError,0u>::ThenCallbackBase::dispatch(*v11++, a1, a2);
      v12 -= 8;
    }

    while (v12);
    v7 = v17;
    v8 = HIDWORD(v18);
  }

  if (v8)
  {
    v13 = 40 * v8;
    do
    {
      WTF::NativePromise<void,WebKit::ExtensionCapabilityGrantError,0u>::settleChainedPromise(a1, v7);
      v7 += 40;
      v13 -= 40;
    }

    while (v13);
  }

  WTF::Vector<WTF::NativePromiseProducer<void,WebKit::ExtensionCapabilityGrantError,0u>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v17, v10);
  return WTF::Vector<WTF::Ref<WTF::NativePromise<WTF::String,void,0u>::ThenCallbackBase,WTF::RawPtrTraits<WTF::NativePromise<WTF::String,void,0u>::ThenCallbackBase>,WTF::DefaultRefDerefTraits<WTF::NativePromise<WTF::String,void,0u>::ThenCallbackBase>>,1ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&__dst, v14);
}

void sub_19DC102EC(_Unwind_Exception *a1, void *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, WTF *a14, int a15)
{
  WTF::Vector<WTF::Ref<WTF::NativePromise<WTF::String,void,0u>::ThenCallbackBase,WTF::RawPtrTraits<WTF::NativePromise<WTF::String,void,0u>::ThenCallbackBase>,WTF::DefaultRefDerefTraits<WTF::NativePromise<WTF::String,void,0u>::ThenCallbackBase>>,1ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&a14, a2);
  WTF::Vector<WTF::Ref<WTF::NativePromise<WTF::String,void,0u>::ThenCallbackBase,WTF::RawPtrTraits<WTF::NativePromise<WTF::String,void,0u>::ThenCallbackBase>,WTF::DefaultRefDerefTraits<WTF::NativePromise<WTF::String,void,0u>::ThenCallbackBase>>,1ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&a11, v16);
  _Unwind_Resume(a1);
}

unsigned __int8 *WTF::NativePromise<void,WebKit::ExtensionCapabilityGrantError,0u>::ThenCallbackBase::dispatch(WTF::NativePromiseBase *a1, uint64_t a2, atomic_uchar *volatile *a3)
{
  v5 = a1;
  if (!*(a1 + 2) || (v6 = atomic_load((a2 + 113)), v6 == 1) && (a1 = (*(**(a1 + 2) + 24))(*(a1 + 2)), a1))
  {
    if (*(v5 + 56) == 1)
    {
      v16 = v5;
      result = WTF::NativePromiseBase::logChannel(a1);
      if (*result)
      {
        v10 = result[16] >= 4u;
      }

      else
      {
        v10 = 0;
      }

      if (v10)
      {
        return WTF::Logger::log<char [32],WTF::NativePromise<void,WebKit::ExtensionCapabilityGrantError,0u>,char [21],void const*,char [11],WTF::Logger::LogSiteIdentifier,char [2]>(result, a2, &v16, (v5 + 24));
      }
    }

    else
    {
      v11 = *a3;
      v12 = 1;
      atomic_compare_exchange_strong_explicit(*a3, &v12, 0, memory_order_release, memory_order_relaxed);
      if (v12 != 1)
      {
        WTF::Lock::unlockSlow(v11);
      }

      if (WTF::NativePromise<void,void,0u>::hasRunnable(a2))
      {
        WTF::NativePromise<void,WebKit::ExtensionCapabilityGrantError,0u>::takeResultRunnable(&v16, a2);
        v13 = v16;
        (*(*v16 + 16))(v15, v16);
        (*(*v5 + 24))(v5, a2, v15);
        (*(*v13 + 8))(v13);
      }

      else
      {
        WTF::NativePromise<void,WebKit::ExtensionCapabilityGrantError,0u>::takeResult(&v16, a2);
        (*(*v5 + 24))(v5, a2, &v16);
      }

      v14 = 0;
      result = *a3;
      atomic_compare_exchange_strong_explicit(*a3, &v14, 1u, memory_order_acquire, memory_order_acquire);
      if (v14)
      {
        return MEMORY[0x19EB01E30]();
      }
    }
  }

  else
  {
    v7 = *(v5 + 2);
    atomic_fetch_add(v5 + 2, 1u);
    atomic_fetch_add((a2 + 8), 1u);
    v8 = WTF::fastMalloc(0x18);
    *v8 = &unk_1F10FEF60;
    *(v8 + 1) = v5;
    *(v8 + 2) = a2;
    v16 = v8;
    (*(*v7 + 16))(v7, &v16);
    result = v16;
    v16 = 0;
    if (result)
    {
      return (*(*result + 8))(result);
    }
  }

  return result;
}

void sub_19DC105C0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  v12 = 0;
  atomic_compare_exchange_strong_explicit(*v10, &v12, 1u, memory_order_acquire, memory_order_acquire);
  if (v12)
  {
    MEMORY[0x19EB01E30]();
  }

  _Unwind_Resume(exception_object);
}

atomic_uint **WTF::NativePromise<void,WebKit::ExtensionCapabilityGrantError,0u>::settleChainedPromise(uint64_t a1, uint64_t a2)
{
  v3 = *a2;
  *a2 = 0;
  v23 = v3;
  v4 = *(a2 + 24);
  v24 = *(a2 + 8);
  v25 = v4;
  if (v3)
  {
    atomic_fetch_add((v3 + 8), 1u);
  }

  v5 = 0;
  v22[0] = 0;
  v22[1] = 0;
  v22[2] = "<chained promise>";
  v22[3] = 0;
  v6 = (v3 + 48);
  v26 = (v3 + 48);
  v27 = 1;
  atomic_compare_exchange_strong_explicit((v3 + 48), &v5, 1u, memory_order_acquire, memory_order_acquire);
  if (v5)
  {
    v6 = MEMORY[0x19EB01E30]();
  }

  v7 = WTF::NativePromiseBase::logChannel(v6);
  if (*v7 && v7[16] >= 4u)
  {
    WTF::Logger::log<WTF::Logger::LogSiteIdentifier,char [27],WTF::NativePromise<void,WebKit::ExtensionCapabilityGrantError,0u>>(v7, v22, " settling chained promise ", v3);
  }

  v8 = *(v3 + 64);
  v9 = *(a1 + 64);
  if (v8 != 255 || v9 != 255)
  {
    switch(v9)
    {
      case 255:
        if (v8 >= 2 && v8 != 255)
        {
          v10 = *(v3 + 56);
          *(v3 + 56) = 0;
          if (v10)
          {
            (*(*v10 + 8))(v10);
          }
        }

        v11 = -1;
        goto LABEL_41;
      case 2:
        if (v8 >= 2 && v8 != 255)
        {
          if (v8 == 2)
          {
            v13 = *(a1 + 56);
            *(a1 + 56) = 0;
            v14 = *(v3 + 56);
            *(v3 + 56) = v13;
            if (v14)
            {
              (*(*v14 + 8))(v14);
            }

            goto LABEL_42;
          }

          v17 = *(v3 + 56);
          *(v3 + 56) = 0;
          if (v17)
          {
            (*(*v17 + 8))(v17);
          }
        }

        v18 = *(a1 + 56);
        *(a1 + 56) = 0;
        *(v3 + 56) = v18;
        v11 = 2;
        goto LABEL_41;
      case 1:
        if (*(v3 + 64) && v8 != 255)
        {
          if (v8 == 1)
          {
            v12 = *(a1 + 56);
            if (*(v3 + 57) == v12 >> 8)
            {
              if ((v12 & 0x100) != 0)
              {
                *(v3 + 56) = v12;
              }
            }

            else if ((v12 & 0x100) != 0)
            {
              *(v3 + 56) = v12;
              *(v3 + 57) = 1;
            }

            else if (*(v3 + 57))
            {
              *(v3 + 57) = 0;
            }

            goto LABEL_42;
          }

          v16 = *(v3 + 56);
          *(v3 + 56) = 0;
          if (v16)
          {
            (*(*v16 + 8))(v16);
          }
        }

        *(v3 + 64) = -1;
        *(v3 + 56) = *(a1 + 56);
        v11 = 1;
LABEL_41:
        *(v3 + 64) = v11;
        goto LABEL_42;
    }

    if (*(v3 + 64))
    {
      if (v8 != 1 && v8 != 255)
      {
        v15 = *(v3 + 56);
        *(v3 + 56) = 0;
        if (v15)
        {
          (*(*v15 + 8))(v15);
        }
      }

      *(v3 + 64) = 0;
    }
  }

LABEL_42:
  WTF::NativePromise<void,WebKit::ExtensionCapabilityGrantError,0u>::dispatchAll(v3, &v26);
  v19 = v27;
  if (v27 == 1)
  {
    v20 = v26;
    atomic_compare_exchange_strong_explicit(v26, &v19, 0, memory_order_release, memory_order_relaxed);
    if (v19 != 1)
    {
      WTF::Lock::unlockSlow(v20);
    }
  }

  if (atomic_fetch_add((v3 + 8), 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, (v3 + 8));
    (*(*v3 + 16))(v3);
  }

  return WTF::NativePromiseProducer<void,WebKit::ExtensionCapabilityGrantError,0u>::~NativePromiseProducer(&v23);
}

void sub_19DC10A18(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  if (v6)
  {
    if (atomic_fetch_add(v6 + 2, 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, v6 + 2);
      (*(*v6 + 16))(v6);
    }
  }

  WTF::NativePromiseProducer<void,WebKit::ExtensionCapabilityGrantError,0u>::~NativePromiseProducer(va);
  _Unwind_Resume(a1);
}

mpark *WTF::NativePromise<void,WebKit::ExtensionCapabilityGrantError,0u>::takeResultRunnable(mpark *result, uint64_t a2)
{
  v3 = result;
  v4 = 0;
  v5 = (a2 + 48);
  atomic_compare_exchange_strong_explicit((a2 + 48), &v4, 1u, memory_order_acquire, memory_order_acquire);
  if (v4)
  {
    result = MEMORY[0x19EB01E30](a2 + 48);
  }

  if (*(a2 + 64) != 2)
  {
    mpark::throw_bad_variant_access(result);
  }

  v6 = *(a2 + 56);
  *(a2 + 56) = 0;
  *v3 = v6;
  v7 = 1;
  atomic_compare_exchange_strong_explicit((a2 + 48), &v7, 0, memory_order_release, memory_order_relaxed);
  if (v7 != 1)
  {

    return WTF::Lock::unlockSlow(v5);
  }

  return result;
}

mpark *WTF::NativePromise<void,WebKit::ExtensionCapabilityGrantError,0u>::takeResult(mpark *result, uint64_t a2)
{
  v3 = result;
  v4 = 0;
  v5 = (a2 + 48);
  atomic_compare_exchange_strong_explicit((a2 + 48), &v4, 1u, memory_order_acquire, memory_order_acquire);
  if (v4)
  {
    result = MEMORY[0x19EB01E30](a2 + 48);
  }

  if (*(a2 + 64) != 1)
  {
    mpark::throw_bad_variant_access(result);
  }

  *v3 = *(a2 + 56);
  v6 = 1;
  atomic_compare_exchange_strong_explicit((a2 + 48), &v6, 0, memory_order_release, memory_order_relaxed);
  if (v6 != 1)
  {

    return WTF::Lock::unlockSlow(v5);
  }

  return result;
}

WTF::StringImpl *WTF::Logger::log<char [32],WTF::NativePromise<void,WebKit::ExtensionCapabilityGrantError,0u>,char [21],void const*,char [11],WTF::Logger::LogSiteIdentifier,char [2]>(uint64_t a1, uint64_t a2, uint64_t a3, WTF::Logger::LogSiteIdentifier *a4)
{
  v54[1] = *MEMORY[0x1E69E9840];
  WTF::String::String(&v39, "ThenCallback disconnected from ");
  WTF::LogArgument<WTF::NativePromise<void,WebKit::ExtensionCapabilityGrantError,0u>>::toString(&v38, a2);
  WTF::String::String(&v37, " aborting [callback:");
  WTF::LogArgument<void const*>::toString();
  WTF::String::String(&v35, " callSite:");
  WTF::Logger::LogSiteIdentifier::toString(&v34, a4);
  WTF::String::String(&v33, "]");
  v32[0] = v38;
  v45 = v37;
  *buf = v39;
  v43 = v35;
  v44 = v36;
  v41 = v33;
  v42 = v34;
  result = WTF::tryMakeStringFromAdapters<WTF::StringTypeAdapter<WTF::String,void>,WTF::StringTypeAdapter<WTF::String,void>,WTF::StringTypeAdapter<WTF::String,void>,WTF::StringTypeAdapter<WTF::String,void>,WTF::StringTypeAdapter<WTF::String,void>,WTF::StringTypeAdapter<WTF::String,void>,WTF::StringTypeAdapter<WTF::String,void>>(buf, v32, &v45, &v44, &v43, &v42, &v41, &v40);
  if (v40)
  {
    v8 = v33;
    v33 = 0;
    if (v8 && atomic_fetch_add_explicit(v8, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v8, v7);
    }

    v9 = v34;
    v34 = 0;
    if (v9 && atomic_fetch_add_explicit(v9, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v9, v7);
    }

    v10 = v35;
    v35 = 0;
    if (v10 && atomic_fetch_add_explicit(v10, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v10, v7);
    }

    v11 = v36;
    v36 = 0;
    if (v11 && atomic_fetch_add_explicit(v11, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v11, v7);
    }

    v12 = v37;
    v37 = 0;
    if (v12 && atomic_fetch_add_explicit(v12, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v12, v7);
    }

    v13 = v38;
    v38 = 0;
    if (v13 && atomic_fetch_add_explicit(v13, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v13, v7);
    }

    v14 = v39;
    v39 = 0;
    if (v14 && atomic_fetch_add_explicit(v14, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v14, v7);
    }

    v15 = *(a1 + 32);
    v16 = os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT);
    if (v16)
    {
      WTF::String::utf8();
      v18 = v32[0] ? v32[0] + 16 : 0;
      *buf = 136446210;
      *&buf[4] = v18;
      _os_log_impl(&dword_19D52D000, v15, OS_LOG_TYPE_DEFAULT, "%{public}s", buf, 0xCu);
      v16 = v32[0];
      v32[0] = 0;
      if (v16)
      {
        if (*v16 == 1)
        {
          v16 = WTF::fastFree(v16, v17);
        }

        else
        {
          --*v16;
        }
      }
    }

    if (*a1 && *(a1 + 16) >= 4u)
    {
      v19 = MEMORY[0x1E696EBC0];
      while (1)
      {
        v20 = *v19;
        if (v20)
        {
          break;
        }

        v21 = *v19;
        atomic_compare_exchange_strong_explicit(v19, &v21, v20 | 1, memory_order_acquire, memory_order_acquire);
        if (v21 == v20)
        {
          v22 = WTF::Logger::observers(v16);
          v23 = *(v22 + 12);
          if (v23)
          {
            v24 = *v22;
            v25 = *v22 + 8 * v23;
            do
            {
              v26 = *v24;
              *buf = 0;
              WTF::String::String(&buf[8], "ThenCallback disconnected from ");
              v47 = 0;
              WTF::LogArgument<WTF::NativePromise<void,WebKit::ExtensionCapabilityGrantError,0u>>::toString(&v48, a2);
              v49 = 0;
              WTF::String::String(v50, " aborting [callback:");
              v50[2] = 0;
              WTF::LogArgument<void const*>::toString();
              v50[6] = 0;
              WTF::String::String(v51, " callSite:");
              v51[2] = 0;
              WTF::Logger::LogSiteIdentifier::toString(&v52, a4);
              v53 = 0;
              WTF::String::String(v54, "]");
              WTF::Vector<WTF::JSONLogValue,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::Vector(v32, buf, 7uLL);
              (*(*v26 + 16))(v26, a1, 4, v32);
              WTF::Vector<std::tuple<Inspector::BackendDispatcher::CommonErrorCode,WTF::String>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v32, v27);
              for (i = 104; i != -8; i -= 16)
              {
                v29 = *&buf[i];
                *&buf[i] = 0;
                if (v29 && atomic_fetch_add_explicit(v29, 0xFFFFFFFE, memory_order_relaxed) == 2)
                {
                  WTF::StringImpl::destroy(v29, v17);
                }
              }

              ++v24;
            }

            while (v24 != v25);
          }

          v30 = 1;
          atomic_compare_exchange_strong_explicit(v19, &v30, 0, memory_order_release, memory_order_relaxed);
          if (v30 != 1)
          {
            WTF::Lock::unlockSlow(MEMORY[0x1E696EBC0]);
          }

          break;
        }
      }
    }

    result = v40;
    v40 = 0;
    if (result)
    {
      if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        return WTF::StringImpl::destroy(result, v17);
      }
    }
  }

  else
  {
    __break(0xC471u);
  }

  return result;
}

void sub_19DC11058(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, char a16, uint64_t a17, WTF::StringImpl *a18, WTF::StringImpl *a19, WTF::StringImpl *a20, WTF::StringImpl *a21, WTF::StringImpl *a22, WTF::StringImpl *a23, uint64_t a24, WTF::StringImpl *a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, char a31)
{
  v33 = 1;
  atomic_compare_exchange_strong_explicit(v31, &v33, 0, memory_order_release, memory_order_relaxed);
  if (v33 != 1)
  {
    WTF::Lock::unlockSlow(MEMORY[0x1E696EBC0]);
  }

  if (a25)
  {
    if (atomic_fetch_add_explicit(a25, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(a25, a2);
    }
  }

  _Unwind_Resume(exception_object);
}

void *WTF::Detail::CallableWrapper<WTF::NativePromise<void,WebKit::ExtensionCapabilityGrantError,0u>::ThenCallbackBase::dispatch(WTF::NativePromise<void,WebKit::ExtensionCapabilityGrantError,0u>&,WTF::Locker<WTF::Lock,void> &)::{lambda(void)#1},void>::~CallableWrapper(void *a1)
{
  *a1 = &unk_1F10FEF60;
  v2 = a1[2];
  a1[2] = 0;
  if (v2 && atomic_fetch_add(v2 + 2, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v2 + 2);
    (*(*v2 + 16))(v2);
  }

  v3 = a1[1];
  a1[1] = 0;
  if (v3 && atomic_fetch_add(v3 + 2, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v3 + 2);
    (*(*v3 + 8))(v3);
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WTF::NativePromise<void,WebKit::ExtensionCapabilityGrantError,0u>::ThenCallbackBase::dispatch(WTF::NativePromise<void,WebKit::ExtensionCapabilityGrantError,0u>&,WTF::Locker<WTF::Lock,void> &)::{lambda(void)#1},void>::~CallableWrapper(WTF *this, void *a2)
{
  *this = &unk_1F10FEF60;
  v3 = *(this + 2);
  *(this + 2) = 0;
  if (v3 && atomic_fetch_add(v3 + 2, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v3 + 2);
    (*(*v3 + 16))(v3);
  }

  v4 = *(this + 1);
  *(this + 1) = 0;
  if (v4 && atomic_fetch_add(v4 + 2, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v4 + 2);
    (*(*v4 + 8))(v4);
  }

  return WTF::fastFree(this, a2);
}

WTF::StringImpl *WTF::Detail::CallableWrapper<WTF::NativePromise<void,WebKit::ExtensionCapabilityGrantError,0u>::ThenCallbackBase::dispatch(WTF::NativePromise<void,WebKit::ExtensionCapabilityGrantError,0u>&,WTF::Locker<WTF::Lock,void> &)::{lambda(void)#1},void>::call(WTF::NativePromiseBase *a1)
{
  v2 = *(a1 + 1);
  v1 = *(a1 + 2);
  if (*(v2 + 56) == 1)
  {
    v11 = *(a1 + 1);
    result = WTF::NativePromiseBase::logChannel(a1);
    if (*result)
    {
      v4 = *(result + 16) >= 4u;
    }

    else
    {
      v4 = 0;
    }

    if (v4)
    {
      return WTF::Logger::log<char [32],WTF::NativePromise<void,WebKit::ExtensionCapabilityGrantError,0u>,char [21],void const*,char [11],WTF::Logger::LogSiteIdentifier,char [2]>(result, v1, &v11, (v2 + 24));
    }
  }

  else
  {
    hasRunnable = WTF::NativePromise<void,void,0u>::hasRunnable(*(a1 + 2));
    v7 = *(a1 + 1);
    v8 = *(a1 + 2);
    if (hasRunnable)
    {
      WTF::NativePromise<void,WebKit::ExtensionCapabilityGrantError,0u>::takeResultRunnable(&v11, v8);
      v9 = v11;
      (*(*v11 + 16))(v10, v11);
      (*(*v7 + 24))(v7, v8, v10);
      return (*(*v9 + 8))(v9);
    }

    else
    {
      WTF::NativePromise<void,WebKit::ExtensionCapabilityGrantError,0u>::takeResult(&v11, v8);
      return (*(*v7 + 24))(v7, v8, &v11);
    }
  }

  return result;
}

unint64_t WTF::Vector<WTF::NativePromiseProducer<void,WebKit::ExtensionCapabilityGrantError,0u>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(uint64_t a1, unint64_t a2, unint64_t a3)
{
  v3 = a3;
  v5 = *a1;
  if (*a1 > a3 || &v5[10 * *(a1 + 12)] <= a3)
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

    WTF::Vector<WTF::NativePromiseProducer<void,WebKit::ExtensionCapabilityGrantError,0u>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::reserveCapacity<(WTF::FailureAction)0>(a1, v12);
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

    WTF::Vector<WTF::NativePromiseProducer<void,WebKit::ExtensionCapabilityGrantError,0u>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::reserveCapacity<(WTF::FailureAction)0>(a1, v9);
    return *a1 + v6;
  }

  return v3;
}

atomic_uint **WTF::Vector<WTF::NativePromiseProducer<void,WebKit::ExtensionCapabilityGrantError,0u>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::reserveCapacity<(WTF::FailureAction)0>(atomic_uint **result, unint64_t a2)
{
  if (*(result + 2) < a2)
  {
    if (a2 >= 0x6666667)
    {
      __break(0xC471u);
    }

    else
    {
      v2 = result;
      v3 = *result;
      v4 = *(result + 3);
      v5 = 40 * a2;
      result = WTF::fastMalloc((40 * a2));
      *(v2 + 2) = v5 / 0x28;
      *v2 = result;
      if (v4)
      {
        v7 = result;
        result = v3;
        do
        {
          v8 = *result;
          *result = 0;
          *v7 = v8;
          v9 = *(result + 1);
          *(v7 + 3) = *(result + 3);
          *(v7 + 1) = v9;
          v7 += 5;
          result = WTF::NativePromiseProducer<void,WebKit::ExtensionCapabilityGrantError,0u>::~NativePromiseProducer(result) + 5;
        }

        while (result != &v3[10 * v4]);
      }

      if (v3)
      {
        if (*v2 == v3)
        {
          *v2 = 0;
          *(v2 + 2) = 0;
        }

        return WTF::fastFree(v3, v6);
      }
    }
  }

  return result;
}

void *_ZN3WTF6Detail15CallableWrapperIZNS_13NativePromiseIvN6WebKit29ExtensionCapabilityGrantErrorELj0EE11whenSettledIZNS3_26ExtensionCapabilityGranter24setMediaCapabilityActiveERNS3_15MediaCapabilityEbE3__1EEDaRNS_34GuaranteedSerialFunctionDispatcherEOT_RKNS_6Logger17LogSiteIdentifierEEUlONSt12experimental15fundamentals_v38expectedIvS4_EEE_vJSO_EED1Ev(void *a1, void *a2)
{
  v3 = a1[1];
  *a1 = &unk_1F10FEF88;
  a1[1] = 0;
  if (v3 && atomic_fetch_add(v3, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v3);
    WTF::fastFree(v3, a2);
  }

  return a1;
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZNS_13NativePromiseIvN6WebKit29ExtensionCapabilityGrantErrorELj0EE11whenSettledIZNS3_26ExtensionCapabilityGranter24setMediaCapabilityActiveERNS3_15MediaCapabilityEbE3__1EEDaRNS_34GuaranteedSerialFunctionDispatcherEOT_RKNS_6Logger17LogSiteIdentifierEEUlONSt12experimental15fundamentals_v38expectedIvS4_EEE_vJSO_EED0Ev(WTF *this, void *a2)
{
  v3 = *(this + 1);
  *this = &unk_1F10FEF88;
  *(this + 1) = 0;
  if (v3 && atomic_fetch_add(v3, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v3);
    WTF::fastFree(v3, a2);
  }

  return WTF::fastFree(this, a2);
}

WTF::StringImpl *_ZN3WTF6Detail15CallableWrapperIZNS_13NativePromiseIvN6WebKit29ExtensionCapabilityGrantErrorELj0EE11whenSettledIZNS3_26ExtensionCapabilityGranter24setMediaCapabilityActiveERNS3_15MediaCapabilityEbE3__1EEDaRNS_34GuaranteedSerialFunctionDispatcherEOT_RKNS_6Logger17LogSiteIdentifierEEUlONSt12experimental15fundamentals_v38expectedIvS4_EEE_vJSO_EE4callESO_(WTF::StringImpl *result, uint64_t a2)
{
  v27 = *MEMORY[0x1E69E9840];
  v2 = *(result + 1);
  if (!v2)
  {
    return result;
  }

  v3 = *(v2 + 8);
  if (!v3)
  {
    return result;
  }

  v4 = result;
  if (*(a2 + 1) == 1)
  {
    v5 = qword_1ED641008;
    result = os_log_type_enabled(qword_1ED641008, OS_LOG_TYPE_ERROR);
    if (result)
    {
      WebKit::MediaCapability::environmentIdentifier(v3, &v19);
      WTF::String::utf8();
      if (v20)
      {
        v14 = v20 + 16;
      }

      else
      {
        v14 = 0;
      }

      v15 = "deactivate";
      v16 = *(v4 + 16);
      v22 = "operator()";
      *buf = 136446722;
      v23 = 2082;
      if (v16)
      {
        v15 = "activate";
      }

      v24 = v14;
      v25 = 2082;
      v26 = v15;
      _os_log_error_impl(&dword_19D52D000, v5, OS_LOG_TYPE_ERROR, "%{public}s[envID=%{public}s] failed to %{public}s", buf, 0x20u);
      v18 = v20;
      v20 = 0;
      if (v18)
      {
        if (*v18 == 1)
        {
          WTF::fastFree(v18, v17);
        }

        else
        {
          --*v18;
        }
      }

      result = v19;
      v19 = 0;
      if (result)
      {
        if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          result = WTF::StringImpl::destroy(result, v17);
        }
      }
    }

    *(v3 + 28) = 0;
    return result;
  }

  v6 = *(v3 + 28);
  if (v6 > 1)
  {
    if (v6 == 2)
    {
      return result;
    }

    if (v6 != 3 || (*(result + 16) & 1) != 0)
    {
      goto LABEL_16;
    }

    v7 = 0;
  }

  else
  {
    if (!*(v3 + 28))
    {
      return result;
    }

    if (v6 != 1 || *(result + 16) != 1)
    {
      goto LABEL_16;
    }

    v7 = 2;
  }

  *(v3 + 28) = v7;
LABEL_16:
  v8 = qword_1ED641008;
  result = os_log_type_enabled(qword_1ED641008, OS_LOG_TYPE_DEFAULT);
  if (result)
  {
    WebKit::MediaCapability::environmentIdentifier(v3, &v19);
    WTF::String::utf8();
    if (v20)
    {
      v9 = v20 + 16;
    }

    else
    {
      v9 = 0;
    }

    v10 = "deactivated";
    v11 = *(v4 + 16);
    v22 = "operator()";
    *buf = 136446722;
    v23 = 2082;
    if (v11)
    {
      v10 = "activated";
    }

    v24 = v9;
    v25 = 2082;
    v26 = v10;
    _os_log_impl(&dword_19D52D000, v8, OS_LOG_TYPE_DEFAULT, "%{public}s[envID=%{public}s] %{public}s", buf, 0x20u);
    v13 = v20;
    v20 = 0;
    if (v13)
    {
      if (*v13 == 1)
      {
        WTF::fastFree(v13, v12);
      }

      else
      {
        --*v13;
      }
    }

    result = v19;
    v19 = 0;
    if (result && atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      return WTF::StringImpl::destroy(result, v12);
    }
  }

  return result;
}

void sub_19DC11B18(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, WTF::StringImpl *a9)
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

uint64_t WTF::NativePromise<void,WebKit::ExtensionCapabilityGrantError,0u>::ThenCallback<false,void>::~ThenCallback(uint64_t a1)
{
  *a1 = &unk_1F10FEFB0;
  v2 = *(a1 + 72);
  *(a1 + 72) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  std::unique_ptr<WTF::NativePromiseProducer<void,void,0u>>::reset[abi:sn200100]((a1 + 64), 0);
  *a1 = &unk_1F10FEFE0;
  v3 = *(a1 + 16);
  *(a1 + 16) = 0;
  if (v3)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WTF::SerialFunctionDispatcher,(WTF::DestructionThread)0>::deref((v3 + 8));
  }

  return a1;
}

{
  *a1 = &unk_1F10FEFB0;
  v2 = *(a1 + 72);
  *(a1 + 72) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  std::unique_ptr<WTF::NativePromiseProducer<void,void,0u>>::reset[abi:sn200100]((a1 + 64), 0);
  *a1 = &unk_1F10FEFE0;
  v4 = *(a1 + 16);
  *(a1 + 16) = 0;
  if (v4)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WTF::SerialFunctionDispatcher,(WTF::DestructionThread)0>::deref((v4 + 8));
  }

  return WTF::fastFree(a1, v3);
}

uint64_t WTF::NativePromise<void,WebKit::ExtensionCapabilityGrantError,0u>::ThenCallback<false,void>::disconnect(uint64_t a1)
{
  *(a1 + 56) = 1;
  result = *(a1 + 72);
  *(a1 + 72) = 0;
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t WTF::NativePromise<void,WebKit::ExtensionCapabilityGrantError,0u>::ThenCallback<false,void>::processResult(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v64[1] = *MEMORY[0x1E69E9840];
  v5 = *(a3 + 1);
  v6 = WTF::NativePromiseBase::logChannel(a1);
  if (*v6)
  {
    v7 = v6[16] >= 4u;
  }

  else
  {
    v7 = 0;
  }

  if (v7)
  {
    v8 = v6;
    if (v5)
    {
      v9 = "Rejecting";
    }

    else
    {
      v9 = "Resolving";
    }

    v42 = v9;
    WTF::String::String(&v52, v9);
    WTF::String::String(&v51, " then() call made from ");
    WTF::Logger::LogSiteIdentifier::toString(&v50, (a1 + 24));
    WTF::String::String(&v49, "[");
    WTF::LogArgument<WTF::NativePromise<void,WebKit::ExtensionCapabilityGrantError,0u>>::toString(&v48, a2);
    WTF::String::String(&v47, " callback:");
    WTF::LogArgument<void const*>::toString();
    WTF::String::String(&v45, "]");
    result = WTF::tryMakeString<WTF::String,WTF::String,WTF::String,WTF::String,WTF::String,WTF::String,WTF::String,WTF::String>(&v52, &v51, &v50, &v49, &v48, &v47, &v46, &v45, &v53);
    if (!v53)
    {
      __break(0xC471u);
      return result;
    }

    v12 = v45;
    v45 = 0;
    if (v12 && atomic_fetch_add_explicit(v12, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v12, v11);
    }

    v13 = v46;
    v46 = 0;
    if (v13 && atomic_fetch_add_explicit(v13, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v13, v11);
    }

    v14 = v47;
    v47 = 0;
    if (v14 && atomic_fetch_add_explicit(v14, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v14, v11);
    }

    v15 = v48;
    v48 = 0;
    if (v15 && atomic_fetch_add_explicit(v15, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v15, v11);
    }

    v16 = v49;
    v49 = 0;
    if (v16 && atomic_fetch_add_explicit(v16, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v16, v11);
    }

    v17 = v50;
    v50 = 0;
    if (v17 && atomic_fetch_add_explicit(v17, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v17, v11);
    }

    v18 = v51;
    v51 = 0;
    if (v18 && atomic_fetch_add_explicit(v18, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v18, v11);
    }

    v19 = v52;
    v52 = 0;
    if (v19 && atomic_fetch_add_explicit(v19, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v19, v11);
    }

    v20 = *(v8 + 4);
    v21 = os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT);
    if (v21)
    {
      WTF::String::utf8();
      v23 = v44[0] ? v44[0] + 16 : 0;
      *buf = 136446210;
      *&buf[4] = v23;
      _os_log_impl(&dword_19D52D000, v20, OS_LOG_TYPE_DEFAULT, "%{public}s", buf, 0xCu);
      v21 = v44[0];
      v44[0] = 0;
      if (v21)
      {
        if (*v21 == 1)
        {
          v21 = WTF::fastFree(v21, v22);
        }

        else
        {
          --*v21;
        }
      }
    }

    if (*v8 && v8[16] >= 4u)
    {
      v24 = MEMORY[0x1E696EBC0];
      while (1)
      {
        v25 = *v24;
        if (v25)
        {
          break;
        }

        v26 = *v24;
        atomic_compare_exchange_strong_explicit(v24, &v26, v25 | 1, memory_order_acquire, memory_order_acquire);
        if (v26 == v25)
        {
          v27 = WTF::Logger::observers(v21);
          v28 = *(v27 + 12);
          if (v28)
          {
            v29 = *v27;
            v30 = *v27 + 8 * v28;
            do
            {
              v31 = *v29;
              *buf = 0;
              WTF::String::String(&buf[8], v42);
              LODWORD(v55) = 0;
              WTF::String::String(&v56, " then() call made from ");
              v57 = 0;
              WTF::Logger::LogSiteIdentifier::toString(&v58, (a1 + 24));
              v59 = 0;
              WTF::String::String(v60, "[");
              v60[2] = 0;
              WTF::LogArgument<WTF::NativePromise<void,WebKit::ExtensionCapabilityGrantError,0u>>::toString(&v61, a2);
              v62 = 0;
              WTF::String::String(v63, " callback:");
              v63[2] = 0;
              WTF::LogArgument<void const*>::toString();
              v63[6] = 0;
              WTF::String::String(v64, "]");
              WTF::Vector<WTF::JSONLogValue,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::Vector(v44, buf, 8uLL);
              (*(*v31 + 16))(v31, v8, 4, v44);
              WTF::Vector<std::tuple<Inspector::BackendDispatcher::CommonErrorCode,WTF::String>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v44, v32);
              for (i = 120; i != -8; i -= 16)
              {
                v34 = *&buf[i];
                *&buf[i] = 0;
                if (v34 && atomic_fetch_add_explicit(v34, 0xFFFFFFFE, memory_order_relaxed) == 2)
                {
                  WTF::StringImpl::destroy(v34, v22);
                }
              }

              ++v29;
            }

            while (v29 != v30);
          }

          v35 = 1;
          atomic_compare_exchange_strong_explicit(v24, &v35, 0, memory_order_release, memory_order_relaxed);
          if (v35 != 1)
          {
            WTF::Lock::unlockSlow(MEMORY[0x1E696EBC0]);
          }

          break;
        }
      }
    }

    v36 = v53;
    v53 = 0;
    if (v36 && atomic_fetch_add_explicit(v36, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v36, v22);
    }
  }

  v37 = 0;
  v38 = 1;
  atomic_compare_exchange_strong_explicit((a1 + 57), &v37, 1u, memory_order_acquire, memory_order_acquire);
  if (v37)
  {
    MEMORY[0x19EB01E30](a1 + 57);
  }

  v39 = *(a1 + 64);
  *(a1 + 64) = 0;
  std::unique_ptr<WTF::NativePromiseProducer<void,void,0u>>::reset[abi:sn200100]((a1 + 64), 0);
  atomic_compare_exchange_strong_explicit((a1 + 57), &v38, 0, memory_order_release, memory_order_relaxed);
  if (v38 != 1)
  {
    WTF::Lock::unlockSlow((a1 + 57));
  }

  (*(**(a1 + 72) + 16))(*(a1 + 72), a3);
  if (v39)
  {
    *buf = 0uLL;
    v55 = "<chained completion promise>";
    v56 = 0;
    WTF::NativePromiseProducer<void,void,0u>::resolve<std::enable_if<true,void>>(v39, buf);
  }

  result = *(a1 + 72);
  *(a1 + 72) = 0;
  if (result)
  {
    result = (*(*result + 8))(result);
  }

  if (v39)
  {
    v40 = WTF::NativePromiseProducer<void,void,0u>::~NativePromiseProducer(v39);
    return WTF::fastFree(v40, v41);
  }

  return result;
}

void sub_19DC122A4(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, char a18, uint64_t a19, WTF::StringImpl *a20, WTF::StringImpl *a21, WTF::StringImpl *a22, WTF::StringImpl *a23, WTF::StringImpl *a24, WTF::StringImpl *a25, WTF::StringImpl *a26, uint64_t a27, WTF::StringImpl *a28, char a29)
{
  v31 = 1;
  atomic_compare_exchange_strong_explicit(v29, &v31, 0, memory_order_release, memory_order_relaxed);
  if (v31 != 1)
  {
    WTF::Lock::unlockSlow(MEMORY[0x1E696EBC0]);
  }

  if (a28)
  {
    if (atomic_fetch_add_explicit(a28, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(a28, a2);
    }
  }

  _Unwind_Resume(exception_object);
}

WTF *WTF::CrossThreadCopierBase<false,false,WTF::Vector<WebKit::ExtensionCapabilityGrant,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>::copy@<X0>(_DWORD *a1@<X0>, void *a2@<X8>)
{
  v4 = a1[3];
  if (v4)
  {
    v5 = *a1;
    v6 = *a1 + 16 * v4;
    do
    {
      WTF::String::isolatedCopy();
      v7 = *(v5 + 8);
      *(v5 + 8) = 0;
      v9[1] = v7;
      WebKit::ExtensionCapabilityGrant::operator=(v5, v9);
      WebKit::ExtensionCapabilityGrant::~ExtensionCapabilityGrant(v9);
      v5 += 16;
    }

    while (v5 != v6);
  }

  *a2 = 0;
  a2[1] = 0;
  return WTF::VectorBuffer<WebCore::HTTPHeaderField,0ul,WTF::FastMalloc>::adopt(a2, a1);
}

void sub_19DC125BC(_Unwind_Exception *exception_object, void *a2)
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

uint64_t WTF::BlockPtr<void ()(UIViewController *,NSError *)>::fromCallable<WTF::CompletionHandler<void ()(UIViewController *,NSError *)>>(WTF::CompletionHandler<void ()(UIViewController *,NSError *)>)::{lambda(void const*)#1}::__invoke(uint64_t a1)
{
  result = *(a1 + 32);
  *(a1 + 32) = 0;
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t WTF::Vector<WebKit::ExtensionCapabilityGrant,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(uint64_t a1, void *a2)
{
  v3 = *(a1 + 12);
  if (v3)
  {
    v4 = *a1;
    v5 = 16 * v3;
    do
    {
      WebKit::ExtensionCapabilityGrant::~ExtensionCapabilityGrant(v4);
      v4 = (v6 + 16);
      v5 -= 16;
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

unint64_t WTF::Vector<WebKit::ExtensionCapabilityGrant,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(uint64_t a1, unint64_t a2, unint64_t a3)
{
  v3 = a3;
  v5 = *a1;
  if (*a1 > a3 || v5 + 16 * *(a1 + 12) <= a3)
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

    WTF::Vector<WebKit::ExtensionCapabilityGrant,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::reserveCapacity<(WTF::FailureAction)0>(a1, v12);
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

    WTF::Vector<WebKit::ExtensionCapabilityGrant,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::reserveCapacity<(WTF::FailureAction)0>(a1, v9);
    return *a1 + v6;
  }

  return v3;
}

uint64_t WTF::Vector<WebKit::ExtensionCapabilityGrant,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::reserveCapacity<(WTF::FailureAction)0>(uint64_t result, unint64_t a2)
{
  if (*(result + 8) < a2)
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
      v5 = *(result + 12);
      result = WTF::fastMalloc((16 * a2));
      *(v3 + 8) = v2;
      *v3 = result;
      if (v5)
      {
        v7 = result;
        result = v4;
        do
        {
          v8 = *result;
          *result = 0;
          *v7 = v8;
          v9 = *(result + 8);
          *(result + 8) = 0;
          v7[1] = v9;
          WebKit::ExtensionCapabilityGrant::~ExtensionCapabilityGrant(result);
          v7 += 2;
          result = v10 + 16;
        }

        while (result != (v4 + 16 * v5));
      }

      if (v4)
      {
        if (*v3 == v4)
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

void WTF::HashMap<WTF::String,WebKit::ExtensionCapabilityGrant,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WebKit::ExtensionCapabilityGrant>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::take(void *a1, uint64_t *a2, uint64_t a3)
{
  v3 = *a2;
  if (*a2)
  {
    v3 += 24 * *(v3 - 4);
  }

  if (v3 == a3)
  {
    v6[0] = 0;
    v6[1] = 0;
    *a1 = 0;
    a1[1] = 0;
    WebKit::ExtensionCapabilityGrant::~ExtensionCapabilityGrant(v6);
    return;
  }

  v4 = *(a3 + 8);
  *(a3 + 8) = 0;
  *(a3 + 16) = 0;
  *a1 = v4;
  if (*a2)
  {
    v5 = *a2 + 24 * *(*a2 - 4);
    if (v5 == a3)
    {
      return;
    }
  }

  else
  {
    if (!a3)
    {
      return;
    }

    v5 = 0;
  }

  if (v5 != a3)
  {
    WTF::HashTable<WTF::String,WTF::KeyValuePair<WTF::String,WebKit::ExtensionCapabilityGrant>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,WebKit::ExtensionCapabilityGrant>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,WebKit::ExtensionCapabilityGrant,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WebKit::ExtensionCapabilityGrant>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::remove(a2, a3);
  }
}

void *WTF::Detail::CallableWrapper<WebKit::ExtensionCapabilityGranter::invalidateGrants(WTF::Vector<WebKit::ExtensionCapabilityGrant,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&)::$_0,void>::~CallableWrapper(void *a1, void *a2)
{
  *a1 = &unk_1F10FF030;
  WTF::Vector<WebKit::ExtensionCapabilityGrant,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector((a1 + 1), a2);
  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WebKit::ExtensionCapabilityGranter::invalidateGrants(WTF::Vector<WebKit::ExtensionCapabilityGrant,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&)::$_0,void>::~CallableWrapper(WTF *a1, void *a2)
{
  *a1 = &unk_1F10FF030;
  WTF::Vector<WebKit::ExtensionCapabilityGrant,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(a1 + 8, a2);

  return WTF::fastFree(a1, v3);
}

void WTF::Detail::CallableWrapper<WebKit::ExtensionCapabilityGranter::invalidateGrants(WTF::Vector<WebKit::ExtensionCapabilityGrant,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&)::$_0,void>::call(uint64_t a1)
{
  v1 = *(a1 + 20);
  if (v1)
  {
    v2 = *(a1 + 8);
    v3 = 16 * v1;
    do
    {
      v5 = 0;
      WebKit::ExtensionCapabilityGrant::setPlatformGrant(v2, &v5);
      v4 = v5;
      v5 = 0;
      if (v4)
      {
      }

      v2 += 16;
      v3 -= 16;
    }

    while (v3);
  }
}

void sub_19DC129D0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10)
{
  if (a10)
  {
  }

  _Unwind_Resume(exception_object);
}

void WebKit::GPUProcessProxy::sendBookmarkDataForCacheDirectory(WebKit::GPUProcessProxy *this)
{
  v1 = *(this + 11);
  if (v1)
  {
    while (1)
    {
      v2 = *v1;
      if ((*v1 & 1) == 0)
      {
        break;
      }

      v3 = *v1;
      atomic_compare_exchange_strong_explicit(v1, &v3, v2 + 2, memory_order_relaxed, memory_order_relaxed);
      if (v3 == v2)
      {
        goto LABEL_6;
      }
    }

    WTF::ThreadSafeWeakPtrControlBlock::strongRef(*v1);
LABEL_6:
    v4 = malloc_type_malloc(0x28uLL, 0x10E004053C0834CuLL);
    *v4 = MEMORY[0x1E69E9818];
    v4[1] = 50331650;
    v4[2] = WTF::BlockPtr<void ()(void)>::fromCallable<WebKit::GPUProcessProxy::sendBookmarkDataForCacheDirectory(void)::$_0>(WebKit::GPUProcessProxy::sendBookmarkDataForCacheDirectory(void)::$_0)::{lambda(void *)#1}::__invoke;
    v4[3] = &WTF::BlockPtr<void ()(void)>::fromCallable<WebKit::GPUProcessProxy::sendBookmarkDataForCacheDirectory(void)::$_0>(WebKit::GPUProcessProxy::sendBookmarkDataForCacheDirectory(void)::$_0)::descriptor;
    v4[4] = v1;
    global_queue = dispatch_get_global_queue(0, 0);
    dispatch_async(global_queue, v4);

    _Block_release(v4);
  }

  else
  {
    __break(0xC471u);
  }
}

void WebKit::IconLoadingDelegate::IconLoadingClient::~IconLoadingClient(WebKit::IconLoadingDelegate::IconLoadingClient *this)
{
  v1 = *(this + 1);
  *this = &unk_1F10FF058;
  *(this + 1) = 0;
  if (v1)
  {
    if (*v1)
    {
      --*v1;
    }

    else
    {
      __break(0xC471u);
    }
  }
}

{
  WebKit::IconLoadingDelegate::IconLoadingClient::~IconLoadingClient(this);

  bmalloc::api::tzoneFree(v1, v2);
}

void WebKit::IconLoadingDelegate::IconLoadingClient::getLoadDecisionForIcon(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  if ((*(a2 + 8) & 2) == 0 && (WTF::URL::protocolIs() & 1) == 0)
  {
    goto LABEL_14;
  }

  v6 = *(a1 + 8);
  if (!v6)
  {
LABEL_15:
    __break(0xC471u);
    JUMPOUT(0x19DC12D64);
  }

  if ((*(v6 + 24) & 1) == 0 || (WeakRetained = objc_loadWeakRetained((v6 + 16))) == 0)
  {
LABEL_14:
    WTF::CompletionHandler<void ()(WTF::CompletionHandler<void ()(API::Data *)> &&)>::operator()(a3);
    return;
  }

  v7 = [[_WKLinkIconParameters alloc] _initWithLinkIcon:a2];
  v8 = *(a1 + 8);
  if (!v8)
  {
    goto LABEL_15;
  }

  v9 = v7;
  v10 = objc_loadWeakRetained((v8 + 8));
  v11 = *a3;
  *a3 = 0;
  v12 = malloc_type_malloc(0x28uLL, 0x10E004053C0834CuLL);
  *v12 = MEMORY[0x1E69E9818];
  v12[1] = 50331650;
  v12[2] = WTF::BlockPtr<void ()(void({block_pointer})(NSData *))>::fromCallable<WebKit::IconLoadingDelegate::IconLoadingClient::getLoadDecisionForIcon(WebCore::LinkIcon const&,WTF::CompletionHandler<void ()(WTF::CompletionHandler<void ()(API::Data *)> &&)> &&)::$_0>(WebKit::IconLoadingDelegate::IconLoadingClient::getLoadDecisionForIcon(WebCore::LinkIcon const&,WTF::CompletionHandler<void ()(WTF::CompletionHandler<void ()(API::Data *)> &&)> &&)::$_0)::{lambda(void *,void({block_pointer})(NSData *))#1}::__invoke;
  v12[3] = &WTF::BlockPtr<void ()(void({block_pointer})(NSData *))>::fromCallable<WebKit::IconLoadingDelegate::IconLoadingClient::getLoadDecisionForIcon(WebCore::LinkIcon const&,WTF::CompletionHandler<void ()(WTF::CompletionHandler<void ()(API::Data *)> &&)> &&)::$_0>(WebKit::IconLoadingDelegate::IconLoadingClient::getLoadDecisionForIcon(WebCore::LinkIcon const&,WTF::CompletionHandler<void ()(WTF::CompletionHandler<void ()(API::Data *)> &&)> &&)::$_0)::descriptor;
  v12[4] = v11;
  [WeakRetained webView:v10 shouldLoadIconWithParameters:v9 completionHandler:v12];
  _Block_release(v12);
  if (v10)
  {
  }

  if (v9)
  {
  }
}

void sub_19DC12D88(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, id a9, uint64_t a10)
{
  if (a10)
  {
    (*(*a10 + 8))(a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t WTF::CompletionHandler<void ()(WTF::CompletionHandler<void ()(API::Data *)> &&)>::operator()(uint64_t *a1)
{
  v1 = *a1;
  *a1 = 0;
  (*(*v1 + 16))(v1);
  v2 = *(*v1 + 8);

  return v2(v1);
}

void sub_19DC13580(_Unwind_Exception *a1)
{
  WebCore::ResourceRequest::~ResourceRequest((v2 - 248));
  WebKit::LegacyCustomProtocolManagerProxy::deref(v1);
  _Unwind_Resume(a1);
}

void WebKit::LegacyCustomProtocolManagerClient::startLoading(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = WebCore::ResourceRequest::nsURLRequest();
  if (!v6)
  {
    return;
  }

  v25 = v6;
  v7 = v6;
  v8 = [[WKCustomProtocolLoader alloc] initWithLegacyCustomProtocolManagerProxy:a2 customProtocolID:a3 request:v25];
  if (a3 == -1 || !a3)
  {
    __break(0xC471u);
    JUMPOUT(0x19DC138E0);
  }

  v9 = v8;
  v10 = *(a1 + 8);
  if (!v10)
  {
    WTF::HashTable<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::RetainPtr<objc_object *>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::RetainPtr<objc_object *>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::RetainPtr<objc_object *>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::RetainPtr<objc_object *>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::expand((a1 + 8));
    v10 = *(a1 + 8);
  }

  v11 = *(v10 - 8);
  v12 = (~(a3 << 32) + a3) ^ ((~(a3 << 32) + a3) >> 22);
  v13 = 9 * ((v12 + ~(v12 << 13)) ^ ((v12 + ~(v12 << 13)) >> 8));
  v14 = (v13 ^ (v13 >> 15)) + ~((v13 ^ (v13 >> 15)) << 27);
  v15 = v11 & ((v14 >> 31) ^ v14);
  v16 = (v10 + 16 * v15);
  v17 = *v16;
  if (*v16)
  {
    v18 = 0;
    v19 = 1;
    while (v17 != a3)
    {
      if (v17 == -1)
      {
        v18 = v16;
      }

      v15 = (v15 + v19) & v11;
      v16 = (v10 + 16 * v15);
      v17 = *v16;
      ++v19;
      if (!*v16)
      {
        if (v18)
        {
          *v18 = 0;
          v18[1] = 0;
          --*(*(a1 + 8) - 16);
          v16 = v18;
        }

        goto LABEL_14;
      }
    }

    if (v9)
    {
    }

    goto LABEL_24;
  }

LABEL_14:
  v20 = v16[1];
  *v16 = a3;
  v16[1] = v9;
  if (v20)
  {
  }

  v21 = *(a1 + 8);
  if (v21)
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
    if (v24 > 2 * v23)
    {
      goto LABEL_24;
    }

    goto LABEL_23;
  }

  if (3 * v24 <= 4 * v23)
  {
LABEL_23:
    WTF::HashTable<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::RetainPtr<objc_object *>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::RetainPtr<objc_object *>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::RetainPtr<objc_object *>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::RetainPtr<objc_object *>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::expand((a1 + 8));
  }

LABEL_24:
}

void WebKit::LegacyCustomProtocolManagerClient::stopLoading(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = (a1 + 8);
  v4 = WTF::HashTable<WTF::ObjectIdentifierGeneric<WebKit::LegacyCustomProtocolIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::LegacyCustomProtocolIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::RetainPtr<WKCustomProtocolLoader>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::LegacyCustomProtocolIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::RetainPtr<WKCustomProtocolLoader>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::LegacyCustomProtocolIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::LegacyCustomProtocolIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::RetainPtr<WKCustomProtocolLoader>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::LegacyCustomProtocolIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::LegacyCustomProtocolIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::RetainPtr<WKCustomProtocolLoader>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::LegacyCustomProtocolIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::find<WTF::IdentityHashTranslator<WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::LegacyCustomProtocolIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::RetainPtr<WKCustomProtocolLoader>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::LegacyCustomProtocolIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::LegacyCustomProtocolIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::RetainPtr<WKCustomProtocolLoader>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::LegacyCustomProtocolIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,(WTF::ShouldValidateKey)1,WTF::ObjectIdentifierGeneric<WebKit::LegacyCustomProtocolIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>(*(a1 + 8), a3);
  if (*v3)
  {
    v5 = *v3 + 16 * *(*v3 - 4);
    if (v5 == v4)
    {
      return;
    }
  }

  else
  {
    if (!v4)
    {
      return;
    }

    v5 = 0;
  }

  if (v5 != v4)
  {

    WTF::HashTable<WTF::ObjectIdentifierGeneric<WebKit::LegacyCustomProtocolIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::LegacyCustomProtocolIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::RetainPtr<WKCustomProtocolLoader>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::LegacyCustomProtocolIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::RetainPtr<WKCustomProtocolLoader>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::LegacyCustomProtocolIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::LegacyCustomProtocolIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::RetainPtr<WKCustomProtocolLoader>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::LegacyCustomProtocolIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::LegacyCustomProtocolIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::RetainPtr<WKCustomProtocolLoader>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::LegacyCustomProtocolIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::remove(v3, v4);
  }
}

uint64_t *WebKit::LegacyCustomProtocolManagerClient::invalidate(WebKit::LegacyCustomProtocolManagerClient *this, WebKit::LegacyCustomProtocolManagerProxy *a2)
{
  v3 = (this + 8);
  result = *(this + 1);
  if (result)
  {
    do
    {
      if (!*(result - 3))
      {
        return result;
      }

      v4 = *(result - 1);
      v5 = result;
      if (v4)
      {
        v6 = 16 * v4;
        v5 = result;
        v7 = &result[2 * v4];
        while ((*v5 + 1) <= 1)
        {
          v5 += 2;
          v6 -= 16;
          if (!v6)
          {
            v5 = v7;
            break;
          }
        }
      }

      v8 = WTF::HashTable<WTF::ObjectIdentifierGeneric<WebKit::LegacyCustomProtocolIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::LegacyCustomProtocolIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::RetainPtr<WKCustomProtocolLoader>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::LegacyCustomProtocolIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::RetainPtr<WKCustomProtocolLoader>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::LegacyCustomProtocolIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::LegacyCustomProtocolIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::RetainPtr<WKCustomProtocolLoader>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::LegacyCustomProtocolIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::LegacyCustomProtocolIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::RetainPtr<WKCustomProtocolLoader>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::LegacyCustomProtocolIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::find<WTF::IdentityHashTranslator<WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::LegacyCustomProtocolIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::RetainPtr<WKCustomProtocolLoader>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::LegacyCustomProtocolIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::LegacyCustomProtocolIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::RetainPtr<WKCustomProtocolLoader>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::LegacyCustomProtocolIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,(WTF::ShouldValidateKey)1,WTF::ObjectIdentifierGeneric<WebKit::LegacyCustomProtocolIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>(result, *v5);
      v9 = *v3;
      if (*v3)
      {
        v9 += 16 * *(v9 - 4);
      }

      if (v9 == v8)
      {
        v10 = 0;
      }

      else
      {
        v10 = v8[1];
        v8[1] = 0;
        if (*v3)
        {
          v11 = *v3 + 16 * *(*v3 - 4);
          if (v11 != v8)
          {
            goto LABEL_17;
          }
        }

        else if (v8)
        {
          v11 = 0;
LABEL_17:
          if (v11 != v8)
          {
            WTF::HashTable<WTF::ObjectIdentifierGeneric<WebKit::LegacyCustomProtocolIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::LegacyCustomProtocolIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::RetainPtr<WKCustomProtocolLoader>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::LegacyCustomProtocolIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::RetainPtr<WKCustomProtocolLoader>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::LegacyCustomProtocolIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::LegacyCustomProtocolIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::RetainPtr<WKCustomProtocolLoader>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::LegacyCustomProtocolIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::LegacyCustomProtocolIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::RetainPtr<WKCustomProtocolLoader>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::LegacyCustomProtocolIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::remove(v3, v8);
          }
        }
      }

      [v10 cancel];
      if (v10)
      {
      }

      result = *v3;
    }

    while (*v3);
  }

  return result;
}

void sub_19DC13A90(_Unwind_Exception *exception_object)
{
  if (v1)
  {
  }

  _Unwind_Resume(exception_object);
}

uint64_t WebKit::LegacyDownloadClient::LegacyDownloadClient(uint64_t a1, void *a2)
{
  *(a1 + 8) = 1;
  *a1 = &unk_1F10FF080;
  *(a1 + 16) = 0;
  objc_initWeak((a1 + 16), a2);
  *(a1 + 24) = *(a1 + 24) & 0xFFFE | objc_opt_respondsToSelector() & 1;
  if (objc_opt_respondsToSelector())
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *(a1 + 24) = *(a1 + 24) & 0xFFFD | v3;
  if (objc_opt_respondsToSelector())
  {
    v4 = 4;
  }

  else
  {
    v4 = 0;
  }

  *(a1 + 24) = *(a1 + 24) & 0xFFFB | v4;
  if (objc_opt_respondsToSelector())
  {
    v5 = 8;
  }

  else
  {
    v5 = 0;
  }

  *(a1 + 24) = *(a1 + 24) & 0xFFF7 | v5;
  if (objc_opt_respondsToSelector())
  {
    v6 = 16;
  }

  else
  {
    v6 = 0;
  }

  *(a1 + 24) = *(a1 + 24) & 0xFFEF | v6;
  if (objc_opt_respondsToSelector())
  {
    v7 = 32;
  }

  else
  {
    v7 = 0;
  }

  *(a1 + 24) = *(a1 + 24) & 0xFFDF | v7;
  if (objc_opt_respondsToSelector())
  {
    v8 = 64;
  }

  else
  {
    v8 = 0;
  }

  *(a1 + 24) = *(a1 + 24) & 0xFFBF | v8;
  if (objc_opt_respondsToSelector())
  {
    v9 = 128;
  }

  else
  {
    v9 = 0;
  }

  *(a1 + 24) = *(a1 + 24) & 0xFF7F | v9;
  if (objc_opt_respondsToSelector())
  {
    v10 = 256;
  }

  else
  {
    v10 = 0;
  }

  *(a1 + 24) = *(a1 + 24) & 0xFEFF | v10;
  if (objc_opt_respondsToSelector())
  {
    v11 = 512;
  }

  else
  {
    v11 = 0;
  }

  *(a1 + 24) = *(a1 + 24) & 0xFDFF | v11;
  if (objc_opt_respondsToSelector())
  {
    v12 = 1024;
  }

  else
  {
    v12 = 0;
  }

  *(a1 + 24) = *(a1 + 24) & 0xFBFF | v12;
  if (objc_opt_respondsToSelector())
  {
    v13 = 2048;
  }

  else
  {
    v13 = 0;
  }

  *(a1 + 24) = *(a1 + 24) & 0xF7FF | v13;
  if (objc_opt_respondsToSelector())
  {
    v14 = 4096;
  }

  else
  {
    v14 = 0;
  }

  *(a1 + 24) = *(a1 + 24) & 0xEFFF | v14;
  if (objc_opt_respondsToSelector())
  {
    v15 = 0x2000;
  }

  else
  {
    v15 = 0;
  }

  *(a1 + 24) = *(a1 + 24) & 0xDFFF | v15;
  return a1;
}

void sub_19DC13D70(_Unwind_Exception *exception_object)
{
  if (*(v1 + 8) == 1)
  {
    _Unwind_Resume(exception_object);
  }

  __break(0xC471u);
}

uint64_t WebKit::LegacyDownloadClient::legacyDidStart(uint64_t this, WebKit::DownloadProxy *a2)
{
  if (*(this + 24))
  {
    Weak = objc_loadWeak((this + 16));
    v4 = *(a2 + 1);
    if (v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      this = 117;
      __break(0xC471u);
    }

    else
    {
      v5 = [_WKDownload downloadWithDownload:v4];

      return [Weak _downloadDidStart:v5];
    }
  }

  return this;
}

uint64_t WebKit::LegacyDownloadClient::didReceiveData(uint64_t this, WebKit::DownloadProxy *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = *(this + 24);
  if ((v7 & 8) == 0)
  {
    if ((v7 & 4) == 0)
    {
      return this;
    }

    Weak = objc_loadWeak((this + 16));
    v14 = *(a2 + 1);
    if (!v14 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      v15 = [_WKDownload downloadWithDownload:v14];

      return [Weak _download:v15 didReceiveData:a3];
    }

LABEL_14:
    __break(0xC471u);
    JUMPOUT(0x19DC13FC8);
  }

  v10 = objc_loadWeak((this + 16));
  v11 = *(a2 + 1);
  if (v11)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      goto LABEL_14;
    }
  }

  v12 = [_WKDownload downloadWithDownload:v11];

  return [v10 _download:v12 didWriteData:a3 totalBytesWritten:a4 totalBytesExpectedToWrite:a5];
}

void WebKit::LegacyDownloadClient::didReceiveAuthenticationChallenge(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((*(a1 + 24) & 0x400) == 0)
  {
    v4 = *(a3 + 472);
    WebCore::CredentialBase::CredentialBase(&v20);
    v22 = 0;
    WebKit::AuthenticationDecisionListener::completeChallenge(v4);
    v6 = v22;
    v22 = 0;
    if (v6)
    {
    }

    v7 = v21;
    v21 = 0;
    if (v7 && atomic_fetch_add_explicit(v7, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v7, v5);
    }

    v8 = v20;
    v20 = 0;
    if (v8)
    {
      if (atomic_fetch_add_explicit(v8, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v8, v5);
      }
    }

    return;
  }

  Weak = objc_loadWeak((a1 + 16));
  v12 = *(a2 + 8);
  if (v12)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      goto LABEL_19;
    }
  }

  v13 = [_WKDownload downloadWithDownload:v12];
  v14 = *(a3 + 8);
  if (v14)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v15 = *(a3 + 8);
      goto LABEL_16;
    }

LABEL_19:
    __break(0xC471u);
    JUMPOUT(0x19DC141F8);
  }

  v15 = 0;
LABEL_16:
  CFRetain(v15);
  WeakRetained = objc_loadWeakRetained((a1 + 16));
  WebKit::CompletionHandlerCallChecker::create(WeakRetained, sel__download_didReceiveAuthenticationChallenge_completionHandler_, &v21);
  v18 = a3;
  v17 = v21;
  v19 = malloc_type_malloc(0x30uLL, 0x10E0040FAC56454uLL);
  *v19 = MEMORY[0x1E69E9818];
  v19[1] = 50331650;
  v19[2] = WTF::BlockPtr<void ()(NSURLSessionAuthChallengeDisposition,NSURLCredential *)>::fromCallable<WebKit::LegacyDownloadClient::didReceiveAuthenticationChallenge(WebKit::DownloadProxy &,WebKit::AuthenticationChallengeProxy &)::$_0>(WebKit::LegacyDownloadClient::didReceiveAuthenticationChallenge(WebKit::DownloadProxy &,WebKit::AuthenticationChallengeProxy &)::$_0)::{lambda(void *,NSURLSessionAuthChallengeDisposition,NSURLCredential *)#1}::__invoke;
  v19[3] = &WTF::BlockPtr<void ()(NSURLSessionAuthChallengeDisposition,NSURLCredential *)>::fromCallable<WebKit::LegacyDownloadClient::didReceiveAuthenticationChallenge(WebKit::DownloadProxy &,WebKit::AuthenticationChallengeProxy &)::$_0>(WebKit::LegacyDownloadClient::didReceiveAuthenticationChallenge(WebKit::DownloadProxy &,WebKit::AuthenticationChallengeProxy &)::$_0)::descriptor;
  v19[4] = v18;
  v19[5] = v17;
  [Weak _download:v13 didReceiveAuthenticationChallenge:v14 completionHandler:v19];
  _Block_release(v19);
  if (WeakRetained)
  {
  }
}

void sub_19DC1421C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9)
{
  _Block_release(v10);
  if (v9)
  {
  }

  _Unwind_Resume(a1);
}

void WebKit::LegacyDownloadClient::didCreateDestination(id *this, WebKit::DownloadProxy *a2, atomic_uint **a3)
{
  if ((this[3] & 0x1000) != 0)
  {
    Weak = objc_loadWeak(this + 2);
    v6 = *(a2 + 1);
    if (v6 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      __break(0xC471u);
    }

    else
    {
      v7 = [_WKDownload downloadWithDownload:v6];
      v8 = *a3;
      if (v8)
      {
        atomic_fetch_add_explicit(v8, 2u, memory_order_relaxed);
        MEMORY[0x19EB00B70](&v12, v8);
        if (atomic_fetch_add_explicit(v8, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v8, v9);
        }
      }

      else
      {
        v12 = &stru_1F1147748;
        v10 = &stru_1F1147748;
      }

      [Weak _download:v7 didCreateDestination:v12];
      v11 = v12;
      v12 = 0;
      if (v11)
      {
      }
    }
  }
}

void sub_19DC1439C(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (atomic_fetch_add_explicit(v10, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v10, a2);
  }

  _Unwind_Resume(exception_object);
}

uint64_t WebKit::LegacyDownloadClient::processDidCrash(uint64_t this, WebKit::DownloadProxy *a2)
{
  if ((*(this + 24) & 0x2000) != 0)
  {
    Weak = objc_loadWeak((this + 16));
    v4 = *(a2 + 1);
    if (v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      this = 117;
      __break(0xC471u);
    }

    else
    {
      v5 = [_WKDownload downloadWithDownload:v4];

      return [Weak _downloadProcessDidCrash:v5];
    }
  }

  return this;
}

void WebKit::LegacyDownloadClient::decideDestinationWithSuggestedFilename(uint64_t a1, uint64_t a2, WebCore::ResourceResponse *a3, atomic_uint **a4, uint64_t *a5)
{
  v9 = *(a1 + 24);
  if ((v9 & 2) != 0)
  {
    Weak = objc_loadWeak((a1 + 16));
    v12 = *(a2 + 8);
    if (v12)
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        goto LABEL_39;
      }
    }

    [Weak _download:+[_WKDownload downloadWithDownload:](_WKDownload didReceiveResponse:{"downloadWithDownload:", v12), WebCore::ResourceResponse::nsURLResponse(a3)}];
    v9 = *(a1 + 24);
  }

  if ((v9 & 0x30) != 0)
  {
    if ((v9 & 0x10) == 0)
    {
      v13 = objc_loadWeak((a1 + 16));
      v14 = *(a2 + 8);
      if (v14)
      {
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          __break(0xC471u);
          JUMPOUT(0x19DC14838);
        }
      }

      v15 = [_WKDownload downloadWithDownload:v14];
      v16 = *a4;
      if (v16)
      {
        atomic_fetch_add_explicit(v16, 2u, memory_order_relaxed);
        MEMORY[0x19EB00B70](&v41, v16);
        if (atomic_fetch_add_explicit(v16, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v16, v17);
        }
      }

      else
      {
        v41 = &stru_1F1147748;
        v25 = &stru_1F1147748;
      }

      v26 = v41;
      WeakRetained = objc_loadWeakRetained((a1 + 16));
      WebKit::CompletionHandlerCallChecker::create(WeakRetained, sel__download_decideDestinationWithSuggestedFilename_completionHandler_, v40);
      v28 = *a5;
      *a5 = 0;
      v29 = v40[0];
      v30 = malloc_type_malloc(0x30uLL, 0x10E0040FAC56454uLL);
      *v30 = MEMORY[0x1E69E9818];
      v30[1] = 50331650;
      v30[2] = WTF::BlockPtr<void ()(BOOL,NSString *)>::fromCallable<WebKit::LegacyDownloadClient::decideDestinationWithSuggestedFilename(WebKit::DownloadProxy &,WebCore::ResourceResponse const&,WTF::String const&,WTF::CompletionHandler<void ()(WebKit::AllowOverwrite,WTF::String)> &&)::$_0>(WebKit::LegacyDownloadClient::decideDestinationWithSuggestedFilename(WebKit::DownloadProxy &,WebCore::ResourceResponse const&,WTF::String const&,WTF::CompletionHandler<void ()(WebKit::AllowOverwrite,WTF::String)> &&)::$_0)::{lambda(void *,BOOL,NSString *)#1}::__invoke;
      v30[3] = &WTF::BlockPtr<void ()(BOOL,NSString *)>::fromCallable<WebKit::LegacyDownloadClient::decideDestinationWithSuggestedFilename(WebKit::DownloadProxy &,WebCore::ResourceResponse const&,WTF::String const&,WTF::CompletionHandler<void ()(WebKit::AllowOverwrite,WTF::String)> &&)::$_0>(WebKit::LegacyDownloadClient::decideDestinationWithSuggestedFilename(WebKit::DownloadProxy &,WebCore::ResourceResponse const&,WTF::String const&,WTF::CompletionHandler<void ()(WebKit::AllowOverwrite,WTF::String)> &&)::$_0)::descriptor;
      v30[4] = v29;
      v30[5] = v28;
      [v13 _download:v15 decideDestinationWithSuggestedFilename:v26 completionHandler:v30];
      _Block_release(v30);
      if (WeakRetained)
      {
      }

      v31 = v41;
      v41 = 0;
      if (v31)
      {
      }

      return;
    }

    LOBYTE(v41) = 0;
    v20 = objc_loadWeak((a1 + 16));
    v21 = *(a2 + 8);
    if (!v21 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      v22 = [_WKDownload downloadWithDownload:v21];
      v23 = *a4;
      if (v23)
      {
        atomic_fetch_add_explicit(v23, 2u, memory_order_relaxed);
        MEMORY[0x19EB00B70](v40, v23);
        if (atomic_fetch_add_explicit(v23, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v23, v24);
        }
      }

      else
      {
        v40[0] = &stru_1F1147748;
        v32 = &stru_1F1147748;
      }

      v33 = [v20 _download:v22 decideDestinationWithSuggestedFilename:v40[0] allowOverwrite:&v41];
      v34 = v33;
      if (v33)
      {
        v35 = v33;
      }

      v36 = v40[0];
      v40[0] = 0;
      if (v36)
      {
      }

      v37 = v41;
      MEMORY[0x19EB02040](&v42, v34);
      WTF::CompletionHandler<void ()(WebKit::AllowOverwrite,WTF::String)>::operator()(a5, v37, &v42);
      v39 = v42;
      v42 = 0;
      if (v39 && atomic_fetch_add_explicit(v39, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v39, v38);
        if (!v34)
        {
          return;
        }
      }

      else if (!v34)
      {
        return;
      }

      return;
    }

LABEL_39:
    __break(0xC471u);
    JUMPOUT(0x19DC14818);
  }

  v43 = 0;
  WTF::CompletionHandler<void ()(WebKit::AllowOverwrite,WTF::String)>::operator()(a5, 0, &v43);
  v19 = v43;
  v43 = 0;
  if (v19 && atomic_fetch_add_explicit(v19, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v19, v18);
  }
}

void sub_19DC1485C(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, WTF::StringImpl *a13, WTF::StringImpl *a14)
{
  if (atomic_fetch_add_explicit(v14, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v14, a2);
  }

  _Unwind_Resume(exception_object);
}

uint64_t WebKit::LegacyDownloadClient::didFinish(uint64_t this, WebKit::DownloadProxy *a2)
{
  if ((*(this + 24) & 0x40) != 0)
  {
    Weak = objc_loadWeak((this + 16));
    v4 = *(a2 + 1);
    if (v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      this = 117;
      __break(0xC471u);
    }

    else
    {
      v5 = [_WKDownload downloadWithDownload:v4];

      return [Weak _downloadDidFinish:v5];
    }
  }

  return this;
}

uint64_t WebKit::LegacyDownloadClient::didFail(uint64_t this, WebKit::DownloadProxy *a2, const WebCore::ResourceError *a3, API::Data *a4)
{
  if ((*(this + 24) & 0x80) != 0)
  {
    Weak = objc_loadWeak((this + 16));
    v7 = *(a2 + 1);
    if (v7 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      this = 117;
      __break(0xC471u);
    }

    else
    {
      v8 = [_WKDownload downloadWithDownload:v7];
      v9 = WebCore::ResourceError::nsError(a3);

      return [Weak _download:v8 didFailWithError:v9];
    }
  }

  return this;
}

uint64_t WebKit::LegacyDownloadClient::legacyDidCancel(uint64_t this, WebKit::DownloadProxy *a2)
{
  if ((*(this + 24) & 0x100) != 0)
  {
    Weak = objc_loadWeak((this + 16));
    v4 = *(a2 + 1);
    if (v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      this = 117;
      __break(0xC471u);
    }

    else
    {
      v5 = [_WKDownload downloadWithDownload:v4];

      return [Weak _downloadDidCancel:v5];
    }
  }

  return this;
}

uint64_t WebKit::LegacyDownloadClient::willSendRequest(uint64_t a1, uint64_t a2, WebCore::ResourceRequestBase *a3, uint64_t a4, uint64_t *a5)
{
  if ((*(a1 + 24) & 0x200) == 0)
  {
    return WTF::CompletionHandler<void ()(WebCore::ResourceRequest &&)>::operator()(a5);
  }

  Weak = objc_loadWeak((a1 + 16));
  v9 = *(a2 + 8);
  if (!v9 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v10 = [_WKDownload downloadWithDownload:v9];
    v11 = WebCore::ResourceRequestBase::url(a3);
    WTF::URL::createCFURL(&v14, v11);
    [Weak _download:v10 didReceiveServerRedirectToURL:v14];
    v12 = v14;
    v14 = 0;
    if (v12)
    {
    }

    return WTF::CompletionHandler<void ()(WebCore::ResourceRequest &&)>::operator()(a5);
  }

  result = 117;
  __break(0xC471u);
  return result;
}

void sub_19DC14CB8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10)
{
  if (a10)
  {
  }

  _Unwind_Resume(exception_object);
}

uint64_t WebKit::applicationVisibleNameFromOrigin@<X0>(uint64_t this@<X0>, uint64_t *a2@<X8>)
{
  v3 = this;
  v5 = this;
  if (*(this + 24))
  {
    if (*(this + 24) != 1)
    {
      goto LABEL_15;
    }

    v5 = MEMORY[0x1E696EBA8];
  }

  this = MEMORY[0x19EB01EF0](*v5, "http", 4);
  if (this)
  {
    goto LABEL_14;
  }

  v6 = v3;
  if (*(v3 + 24))
  {
    if (*(v3 + 24) != 1)
    {
      goto LABEL_15;
    }

    v6 = MEMORY[0x1E696EBA8];
  }

  this = MEMORY[0x19EB01EF0](*v6, "https", 5);
  if (this)
  {
LABEL_14:
    if (*(v3 + 24) && *(v3 + 24) != 1)
    {
LABEL_15:
      mpark::throw_bad_variant_access(this);
    }

    return WebKit::visibleDomain(a2);
  }

  else
  {
    *a2 = 0;
  }

  return this;
}

uint64_t WebKit::visibleDomain@<X0>(uint64_t *a1@<X8>)
{
  WTF::String::utf8();
  WTF::URLHelpers::userVisibleURL(&v19, &v16, v4);
  v6 = v16;
  v16 = 0;
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

  if (v19)
  {
    result = WTF::startsWithLettersIgnoringASCIICaseCommon<WTF::StringImpl>(v19, "www.", 4uLL);
    v8 = v19;
    if (result)
    {
      if (v19)
      {
        v9 = *(v19 + 1);
        if (v9 >= 5)
        {
          v10 = *(v19 + 1);
          v11 = (v9 - 4);
          v12 = v9 - 4;
          if ((*(v19 + 16) & 4) != 0)
          {
            if (v12 >= v11)
            {
              v13 = (v10 + 4);
              v11 |= 0x100000000uLL;
LABEL_11:
              v16 = v13;
              v17 = v11;
              v18 = BYTE4(v11);
              WTF::StringView::createNSString(a1, &v16);
              goto LABEL_16;
            }
          }

          else if (v12 >= v11)
          {
            v13 = (v10 + 8);
            goto LABEL_11;
          }

          __break(1u);
          return result;
        }
      }

      v11 = 0x100000000;
      v13 = "";
      goto LABEL_11;
    }

    if (v19)
    {
      atomic_fetch_add_explicit(v19, 2u, memory_order_relaxed);
      MEMORY[0x19EB00B70](v8);
      if (atomic_fetch_add_explicit(v8, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v8, v14);
      }

      goto LABEL_16;
    }
  }

  *a1 = &stru_1F1147748;
  v15 = &stru_1F1147748;
LABEL_16:
  result = v19;
  v19 = 0;
  if (result)
  {
    if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      return WTF::StringImpl::destroy(result, v14);
    }
  }

  return result;
}

void sub_19DC14F48(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, WTF *a10, uint64_t a11, WTF::StringImpl *a12)
{
  if (atomic_fetch_add_explicit(v12, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v12, a2);
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

void WebKit::alertForPermission(uint64_t a1, int a2, uint64_t a3, WTF::RefCountedBase *a4)
{
  if (a2 != 3 || (v8 = *(a1 + 1160)) == 0)
  {
    WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 2248));
    if (!WeakRetained)
    {
      v10 = a4;
      v9 = 0;
      goto LABEL_14;
    }

    v12 = WeakRetained;
    WebKit::applicationVisibleNameFromOrigin(a3, &v74);
    if (!v74)
    {
      WebKit::applicationVisibleName(&v75);
      v13 = v74;
      v74 = v75;
      if (v13)
      {
      }
    }

    if (a2 <= 2)
    {
      if (a2)
      {
        if (a2 == 1)
        {
          v14 = objc_alloc(MEMORY[0x1E696AEC0]);
          WebCore::copyLocalizedString(&v75, @"Allow “%@” to use your camera and microphone?", v17);
          v16 = v75;
          v75 = 0;
          if (!v16)
          {
            goto LABEL_37;
          }
        }

        else
        {
          v14 = objc_alloc(MEMORY[0x1E696AEC0]);
          WebCore::copyLocalizedString(&v75, @"Allow “%@” to use your microphone?", v26);
          v16 = v75;
          v75 = 0;
          if (!v16)
          {
            goto LABEL_37;
          }
        }
      }

      else
      {
        v14 = objc_alloc(MEMORY[0x1E696AEC0]);
        WebCore::copyLocalizedString(&v75, @"Allow “%@” to use your camera?", v25);
        v16 = v75;
        v75 = 0;
        if (!v16)
        {
          goto LABEL_37;
        }
      }
    }

    else
    {
      if (a2 > 4)
      {
        if (a2 == 5)
        {
          v18 = objc_alloc(MEMORY[0x1E696AEC0]);
          v20 = WebCore::copyLocalizedString(&v75, @"Allow “%@” to capture your audio and use it for speech recognition?", v19);
          v21 = v75;
          v75 = 0;
          if (v21)
          {
            CFAutorelease(v21);
            v20 = v75;
            v75 = 0;
            if (v20)
            {
              CFRelease(v20);
            }
          }

          if (*(a3 + 24) && *(a3 + 24) != 1)
          {
            mpark::throw_bad_variant_access(v20);
          }

          WebKit::visibleDomain(&v75);
          v23 = [v18 initWithFormat:v21, v75];
          v24 = v75;
          v75 = 0;
          if (v24)
          {
          }

LABEL_38:
          v30 = v74;
          v74 = 0;
          if (v30)
          {
          }

          if (!v23)
          {
            WTF::CompletionHandler<void ()(BOOL)>::operator()(a4, 0);
LABEL_102:

            return;
          }

          if (a2 <= 2)
          {
            WebCore::localizedString(&v75, @"Allow (usermedia)", v22);
            v33 = v75;
            if (v75)
            {
              atomic_fetch_add_explicit(v75, 2u, memory_order_relaxed);
              MEMORY[0x19EB00B70](&v74, v33);
              if (atomic_fetch_add_explicit(v33, 0xFFFFFFFE, memory_order_relaxed) == 2)
              {
                WTF::StringImpl::destroy(v33, v34);
              }
            }

            else
            {
              v74 = &stru_1F1147748;
              v41 = &stru_1F1147748;
            }

            v42 = v75;
            v75 = 0;
            if (v42 && atomic_fetch_add_explicit(v42, 0xFFFFFFFE, memory_order_relaxed) == 2)
            {
              WTF::StringImpl::destroy(v42, v34);
            }

            WebCore::localizedString(&v75, @"Don’t Allow (usermedia)", v34);
            v43 = v75;
            if (v75)
            {
              goto LABEL_90;
            }
          }

          else if (a2 > 4)
          {
            if (a2 == 5)
            {
              WebCore::localizedString(&v75, @"Allow (speechrecognition)", v22);
              v35 = v75;
              if (v75)
              {
                atomic_fetch_add_explicit(v75, 2u, memory_order_relaxed);
                MEMORY[0x19EB00B70](&v74, v35);
                if (atomic_fetch_add_explicit(v35, 0xFFFFFFFE, memory_order_relaxed) == 2)
                {
                  WTF::StringImpl::destroy(v35, v36);
                }
              }

              else
              {
                v74 = &stru_1F1147748;
                v48 = &stru_1F1147748;
              }

              v49 = v75;
              v75 = 0;
              if (v49 && atomic_fetch_add_explicit(v49, 0xFFFFFFFE, memory_order_relaxed) == 2)
              {
                WTF::StringImpl::destroy(v49, v36);
              }

              WebCore::localizedString(&v75, @"Don’t Allow (speechrecognition)", v36);
              v43 = v75;
              if (v75)
              {
                goto LABEL_90;
              }
            }

            else
            {
              WebCore::localizedString(&v75, @"Allow (screensharing)", v22);
              v39 = v75;
              if (v75)
              {
                atomic_fetch_add_explicit(v75, 2u, memory_order_relaxed);
                MEMORY[0x19EB00B70](&v74, v39);
                if (atomic_fetch_add_explicit(v39, 0xFFFFFFFE, memory_order_relaxed) == 2)
                {
                  WTF::StringImpl::destroy(v39, v40);
                }
              }

              else
              {
                v74 = &stru_1F1147748;
                v52 = &stru_1F1147748;
              }

              v53 = v75;
              v75 = 0;
              if (v53 && atomic_fetch_add_explicit(v53, 0xFFFFFFFE, memory_order_relaxed) == 2)
              {
                WTF::StringImpl::destroy(v53, v40);
              }

              WebCore::localizedString(&v75, @"Don’t Allow (screensharing)", v40);
              v43 = v75;
              if (v75)
              {
                goto LABEL_90;
              }
            }
          }

          else if (a2 == 3)
          {
            WebCore::localizedString(&v75, @"Allow (device motion and orientation access)", v22);
            v31 = v75;
            if (v75)
            {
              atomic_fetch_add_explicit(v75, 2u, memory_order_relaxed);
              MEMORY[0x19EB00B70](&v74, v31);
              if (atomic_fetch_add_explicit(v31, 0xFFFFFFFE, memory_order_relaxed) == 2)
              {
                WTF::StringImpl::destroy(v31, v32);
              }
            }

            else
            {
              v74 = &stru_1F1147748;
              v46 = &stru_1F1147748;
            }

            v47 = v75;
            v75 = 0;
            if (v47 && atomic_fetch_add_explicit(v47, 0xFFFFFFFE, memory_order_relaxed) == 2)
            {
              WTF::StringImpl::destroy(v47, v32);
            }

            WebCore::localizedString(&v75, @"Cancel (device motion and orientation access)", v32);
            v43 = v75;
            if (v75)
            {
LABEL_90:
              atomic_fetch_add_explicit(v43, 2u, memory_order_relaxed);
              MEMORY[0x19EB00B70](&v73, v43);
              if (atomic_fetch_add_explicit(v43, 0xFFFFFFFE, memory_order_relaxed) == 2)
              {
                WTF::StringImpl::destroy(v43, v45);
              }

              goto LABEL_92;
            }
          }

          else
          {
            WebCore::localizedString(&v75, @"Allow (geolocation)", v22);
            v37 = v75;
            if (v75)
            {
              atomic_fetch_add_explicit(v75, 2u, memory_order_relaxed);
              MEMORY[0x19EB00B70](&v74, v37);
              if (atomic_fetch_add_explicit(v37, 0xFFFFFFFE, memory_order_relaxed) == 2)
              {
                WTF::StringImpl::destroy(v37, v38);
              }
            }

            else
            {
              v74 = &stru_1F1147748;
              v50 = &stru_1F1147748;
            }

            v51 = v75;
            v75 = 0;
            if (v51 && atomic_fetch_add_explicit(v51, 0xFFFFFFFE, memory_order_relaxed) == 2)
            {
              WTF::StringImpl::destroy(v51, v38);
            }

            WebCore::localizedString(&v75, @"Don’t Allow (geolocation)", v38);
            v43 = v75;
            if (v75)
            {
              goto LABEL_90;
            }
          }

          v73 = &stru_1F1147748;
          v44 = &stru_1F1147748;
LABEL_92:
          v54 = v75;
          v75 = 0;
          if (v54 && atomic_fetch_add_explicit(v54, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v54, v45);
          }

          v55 = *a4;
          *a4 = 0;
          v56 = malloc_type_malloc(0x28uLL, 0x10E004053C0834CuLL);
          *v56 = MEMORY[0x1E69E9818];
          v56[1] = 50331650;
          v56[2] = WTF::BlockPtr<void ()(BOOL)>::fromCallable<WTF::CompletionHandler<void ()(BOOL)>>(WTF::CompletionHandler<void ()(BOOL)>)::{lambda(void *,BOOL)#1}::__invoke;
          v56[3] = &WTF::BlockPtr<void ()(BOOL)>::fromCallable<WTF::CompletionHandler<void ()(BOOL)>>(WTF::CompletionHandler<void ()(BOOL)>)::descriptor;
          v56[4] = v55;
          WebKit::createUIAlertController(v23, 0, &v75);
          v57 = MEMORY[0x1E69DC648];
          v58 = v74;
          v71[0] = MEMORY[0x1E69E9820];
          v71[1] = 3321888768;
          v71[2] = ___ZN6WebKit18alertForPermissionERNS_12WebPageProxyENS_21MediaPermissionReasonERKN7WebCore18SecurityOriginDataEON3WTF17CompletionHandlerIFvbEEE_block_invoke;
          v71[3] = &__block_descriptor_40_e8_32c150_ZTSKZN6WebKit18alertForPermissionERNS_12WebPageProxyENS_21MediaPermissionReasonERKN7WebCore18SecurityOriginDataEON3WTF17CompletionHandlerIFvbEEEE3__0_e23_v16__0__UIAlertAction_8l;
          v59 = _Block_copy(v56);
          v72 = _Block_copy(v59);
          v60 = [v57 actionWithTitle:v58 style:0 handler:v71];
          _Block_release(v59);
          v61 = MEMORY[0x1E69DC648];
          v62 = v73;
          v69[0] = MEMORY[0x1E69E9820];
          v69[1] = 3321888768;
          v69[2] = ___ZN6WebKit18alertForPermissionERNS_12WebPageProxyENS_21MediaPermissionReasonERKN7WebCore18SecurityOriginDataEON3WTF17CompletionHandlerIFvbEEE_block_invoke_121;
          v69[3] = &__block_descriptor_40_e8_32c150_ZTSKZN6WebKit18alertForPermissionERNS_12WebPageProxyENS_21MediaPermissionReasonERKN7WebCore18SecurityOriginDataEON3WTF17CompletionHandlerIFvbEEEE3__1_e23_v16__0__UIAlertAction_8l;
          v63 = _Block_copy(v56);
          aBlock = _Block_copy(v63);
          v64 = [v61 actionWithTitle:v62 style:1 handler:v69];
          _Block_release(v63);
          [(atomic_uint *)v75 addAction:v64];
          [(atomic_uint *)v75 addAction:v60];
          v65 = [v12 _wk_viewControllerForFullScreenPresentation];
          [v65 presentViewController:v75 animated:1 completion:0];
          _Block_release(aBlock);
          _Block_release(v72);
          v66 = v75;
          v75 = 0;
          if (v66)
          {
          }

          _Block_release(v56);
          v67 = v73;
          v73 = 0;
          if (v67)
          {
          }

          v68 = v74;
          v74 = 0;
          if (v68)
          {
          }

          goto LABEL_102;
        }

        v14 = objc_alloc(MEMORY[0x1E696AEC0]);
        WebCore::copyLocalizedString(&v75, @"Allow “%@” to observe your screen?", v28);
        v16 = v75;
        v75 = 0;
        if (v16)
        {
          goto LABEL_35;
        }

        goto LABEL_37;
      }

      if (a2 == 3)
      {
        v14 = objc_alloc(MEMORY[0x1E696AEC0]);
        WebCore::copyLocalizedString(&v75, @"“%@” Would Like to Access Motion and Orientation", v15);
        v16 = v75;
        v75 = 0;
        if (v16)
        {
          goto LABEL_35;
        }

LABEL_37:
        v23 = [v14 initWithFormat:v16, v74];
        goto LABEL_38;
      }

      v14 = objc_alloc(MEMORY[0x1E696AEC0]);
      WebCore::copyLocalizedString(&v75, @"Allow “%@” to use your current location?", v27);
      v16 = v75;
      v75 = 0;
      if (!v16)
      {
        goto LABEL_37;
      }
    }

LABEL_35:
    CFAutorelease(v16);
    v29 = v75;
    v75 = 0;
    if (v29)
    {
      CFRelease(v29);
    }

    goto LABEL_37;
  }

  v9 = (*(*v8 + 16))(v8);
  v10 = a4;
LABEL_14:

  WTF::CompletionHandler<void ()(BOOL)>::operator()(v10, v9);
}

void sub_19DC158F8(_Unwind_Exception *a1, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *aBlock, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *a19, uint64_t a20, void *a21)
{
  v25 = *(v23 - 88);
  *(v23 - 88) = 0;
  if (v25 && atomic_fetch_add_explicit(v25, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v25, a2);
  }

  if (a21)
  {
  }

  _Unwind_Resume(a1);
}

void *__copy_helper_block_e8_32c150_ZTSKZN6WebKit18alertForPermissionERNS_12WebPageProxyENS_21MediaPermissionReasonERKN7WebCore18SecurityOriginDataEON3WTF17CompletionHandlerIFvbEEEE3__0(uint64_t a1, uint64_t a2)
{
  result = _Block_copy(*(a2 + 32));
  *(a1 + 32) = result;
  return result;
}

void *__copy_helper_block_e8_32c150_ZTSKZN6WebKit18alertForPermissionERNS_12WebPageProxyENS_21MediaPermissionReasonERKN7WebCore18SecurityOriginDataEON3WTF17CompletionHandlerIFvbEEEE3__1(uint64_t a1, uint64_t a2)
{
  result = _Block_copy(*(a2 + 32));
  *(a1 + 32) = result;
  return result;
}

void WebKit::requestAVCaptureAccessForType(PAL *a1, uint64_t *a2)
{
  if (a1 == 1)
  {
    AVFoundation_AVMediaTypeAudio = PAL::get_AVFoundation_AVMediaTypeAudio(a1);
  }

  else
  {
    AVFoundation_AVMediaTypeAudio = PAL::get_AVFoundation_AVMediaTypeVideo(a1);
  }

  v7 = AVFoundation_AVMediaTypeAudio;
  if (AVFoundation_AVMediaTypeAudio)
  {
    v4 = AVFoundation_AVMediaTypeAudio;
  }

  v5 = *a2;
  *a2 = 0;
  v6 = malloc_type_malloc(0x28uLL, 0x10E004053C0834CuLL);
  *v6 = MEMORY[0x1E69E9818];
  v6[1] = 50331650;
  v6[2] = WTF::BlockPtr<void ()(BOOL)>::fromCallable<WebKit::requestAVCaptureAccessForType(WebKit::MediaPermissionType,WTF::CompletionHandler<void ()(BOOL)> &&)::$_0>(WebKit::requestAVCaptureAccessForType(WebKit::MediaPermissionType,WTF::CompletionHandler<void ()(BOOL)> &&)::$_0)::{lambda(void *,BOOL)#1}::__invoke;
  v6[3] = &WTF::BlockPtr<void ()(BOOL)>::fromCallable<WebKit::requestAVCaptureAccessForType(WebKit::MediaPermissionType,WTF::CompletionHandler<void ()(BOOL)> &&)::$_0>(WebKit::requestAVCaptureAccessForType(WebKit::MediaPermissionType,WTF::CompletionHandler<void ()(BOOL)> &&)::$_0)::descriptor;
  v6[4] = v5;
  [(*MEMORY[0x1E69E22A8])() requestAccessForMediaType:v7 completionHandler:v6];
  _Block_release(v6);
  if (v7)
  {
  }
}

void sub_19DC15CC8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  if (v10)
  {
    (*(*v10 + 8))(v10);
  }

  if (a10)
  {
  }

  _Unwind_Resume(exception_object);
}

uint64_t WebKit::checkAVCaptureAccessForType(PAL *a1)
{
  if (a1 == 1)
  {
    AVFoundation_AVMediaTypeAudio = PAL::get_AVFoundation_AVMediaTypeAudio(a1);
  }

  else
  {
    AVFoundation_AVMediaTypeAudio = PAL::get_AVFoundation_AVMediaTypeVideo(a1);
  }

  v2 = AVFoundation_AVMediaTypeAudio;
  if (AVFoundation_AVMediaTypeAudio)
  {
    AVFoundation_AVMediaTypeAudio = AVFoundation_AVMediaTypeAudio;
  }

  v3 = [(*MEMORY[0x1E69E22A8])(AVFoundation_AVMediaTypeAudio) authorizationStatusForMediaType:v2];
  if (v2)
  {
  }

  if (v3)
  {
    v4 = 1;
  }

  else
  {
    v4 = 2;
  }

  if ((v3 - 1) >= 2)
  {
    return v4;
  }

  else
  {
    return 0;
  }
}

void sub_19DC15D98(_Unwind_Exception *exception_object)
{
  if (v1)
  {
  }

  _Unwind_Resume(exception_object);
}

void WebKit::requestSpeechRecognitionAccess(uint64_t *a1)
{
  v1 = *a1;
  *a1 = 0;
  v2 = malloc_type_malloc(0x28uLL, 0x10E004053C0834CuLL);
  *v2 = MEMORY[0x1E69E9818];
  v2[1] = 50331650;
  v2[2] = WTF::BlockPtr<void ()(SFSpeechRecognizerAuthorizationStatus)>::fromCallable<WebKit::requestSpeechRecognitionAccess(WTF::CompletionHandler<void ()(BOOL)> &&)::$_0>(WebKit::requestSpeechRecognitionAccess(WTF::CompletionHandler<void ()(BOOL)> &&)::$_0)::{lambda(void *,SFSpeechRecognizerAuthorizationStatus)#1}::__invoke;
  v2[3] = &WTF::BlockPtr<void ()(SFSpeechRecognizerAuthorizationStatus)>::fromCallable<WebKit::requestSpeechRecognitionAccess(WTF::CompletionHandler<void ()(BOOL)> &&)::$_0>(WebKit::requestSpeechRecognitionAccess(WTF::CompletionHandler<void ()(BOOL)> &&)::$_0)::descriptor;
  v2[4] = v1;
  [(*MEMORY[0x1E69E2318])() requestAuthorization:v2];

  _Block_release(v2);
}

void sub_19DC15E64(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    (*(*v1 + 8))(v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t WebKit::checkSpeechRecognitionServiceAvailability(atomic_uint **this, const WTF::String *a2)
{
  if (*this && (*this)[1])
  {
    v3 = objc_alloc((*MEMORY[0x1E69E2318])());
    v4 = MEMORY[0x1E695DF58];
    v5 = *this;
    if (v5)
    {
      atomic_fetch_add_explicit(v5, 2u, memory_order_relaxed);
      MEMORY[0x19EB00B70](&v12, v5);
      if (atomic_fetch_add_explicit(v5, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v5, v6);
      }
    }

    else
    {
      v12 = &stru_1F1147748;
      v8 = &stru_1F1147748;
    }

    v7 = [v3 initWithLocale:{objc_msgSend(v4, "localeWithLocaleIdentifier:", v12)}];
    v9 = v12;
    v12 = 0;
    if (v9)
    {
    }
  }

  else
  {
    v7 = [objc_alloc((*MEMORY[0x1E69E2318])()) init];
  }

  if (!v7)
  {
    return 0;
  }

  v10 = [v7 isAvailable];

  return v10;
}

void sub_19DC15FC0(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (atomic_fetch_add_explicit(v10, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v10, a2);
  }

  _Unwind_Resume(exception_object);
}

uint64_t WebKit::ModelElementController::modelViewForModelIdentifier(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 16);
  if (!v3)
  {
    return 0;
  }

  v4 = *(v3 + 8);
  if (!v4)
  {
    return 0;
  }

  CFRetain(*(v4 - 8));
  v7 = *(v4 + 352);
  CFRetain(*(v7 + 8));
  {
    atomic_fetch_add_explicit(WebKit::WebPreferencesKey::modelElementEnabledKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
    WebKit::WebPreferencesKey::modelElementEnabledKey(void)::key = WebKit::WebPreferencesKey::modelElementEnabledKey(void)::$_0::operator() const(void)::impl;
  }

  BoolValueForKey = WebKit::WebPreferencesStore::getBoolValueForKey((v7 + 40), &WebKit::WebPreferencesKey::modelElementEnabledKey(void)::key, v8);
  CFRelease(*(v7 + 8));
  if (BoolValueForKey && (v10 = *(v4 + 312)) != 0 && !*(v10 + 36) && (v13 = *(v10 + 80), v15[0] = a2, v15[1] = a3, v16 = 1, (v14 = WTF::HashMap<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::Ref<WebKit::RemoteLayerTreeNode,WTF::RawPtrTraits<WebKit::RemoteLayerTreeNode>,WTF::DefaultRefDerefTraits<WebKit::RemoteLayerTreeNode>>,WTF::DefaultHash<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashTraits<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashTraits<WTF::Ref<WebKit::RemoteLayerTreeNode,WTF::RawPtrTraits<WebKit::RemoteLayerTreeNode>,WTF::DefaultRefDerefTraits<WebKit::RemoteLayerTreeNode>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::get<WTF::IdentityHashTranslator<WTF::HashMap<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::Ref<WebKit::RemoteLayerTreeNode,WTF::RawPtrTraits<WebKit::RemoteLayerTreeNode>,WTF::DefaultRefDerefTraits<WebKit::RemoteLayerTreeNode>>,WTF::DefaultHash<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashTraits<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashTraits<WTF::Ref<WebKit::RemoteLayerTreeNode,WTF::RawPtrTraits<WebKit::RemoteLayerTreeNode>,WTF::DefaultRefDerefTraits<WebKit::RemoteLayerTreeNode>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>>,WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>((v13 + 16), v15)) != 0))
  {
    v11 = *(v14 + 56);
    if (v11)
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        v11 = 0;
      }
    }
  }

  else
  {
    v11 = 0;
  }

  CFRelease(*(v4 - 8));
  return v11;
}

void WebKit::ModelElementController::takeModelElementFullscreen(uint64_t a1, uint64_t a2, uint64_t a3, WTF::URL *a4)
{
  v4 = *(a1 + 16);
  if (v4 && (v5 = *(v4 + 8)) != 0)
  {
    CFRetain(*(v5 - 8));
    v10 = (*(**(v5 + 104) + 504))(*(v5 + 104));
    CFRelease(*(v5 - 8));
    if (v10)
    {
      v11 = WebKit::ModelElementController::modelViewForModelIdentifier(a1, a2, a3);
      if (v11)
      {
        v12 = v11;
        [v11 frame];
        [v12 convertRect:0 toView:?];
        v14 = v13;
        v16 = v15;
        v18 = v17;
        v20 = v19;
        v21 = [v12 preview];
        WTF::URL::createCFURL(&v27, a4);
        [v21 setCanonicalWebPageURL:v27];
        v22 = v27;
        v27 = 0;
        if (v22)
        {
        }

        v27 = WTF::URL::fragmentIdentifier(a4);
        v28 = v23;
        v29 = v24;
        WTF::StringView::createNSString(&v30, &v27);
        [v21 setUrlFragment:v30];
        v25 = v30;
        v30 = 0;
        if (v25)
        {
        }

        v26[0] = MEMORY[0x1E69E9820];
        v26[1] = 3221225472;
        v26[2] = ___ZN6WebKit22ModelElementController26takeModelElementFullscreenENS_15ModelIdentifierERKN3WTF3URLE_block_invoke;
        v26[3] = &unk_1E7632268;
        v26[4] = v10;
        v26[5] = v12;
        v26[6] = v21;
        [v21 createFullscreenInstanceWithInitialFrame:&unk_1F1184E18 previewOptions:v26 completionHandler:{v14, v16, v18, v20}];
      }
    }
  }

  else
  {
    __break(0xC471u);
  }
}

void sub_19DC16328(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *a18)
{
  if (a18)
  {
  }

  _Unwind_Resume(exception_object);
}

void ___ZN6WebKit22ModelElementController26takeModelElementFullscreenENS_15ModelIdentifierERKN3WTF3URLE_block_invoke(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  if (a4)
  {

    [a3 invalidate];
  }

  else
  {
    v11 = v4;
    v12 = v5;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = ___ZN6WebKit22ModelElementController26takeModelElementFullscreenENS_15ModelIdentifierERKN3WTF3URLE_block_invoke_2;
    block[3] = &unk_1E7632240;
    block[4] = a2;
    v8 = *(a1 + 32);
    v6 = *(a1 + 48);
    v9 = a3;
    v10 = v6;
    dispatch_async(MEMORY[0x1E69E96A0], block);
  }
}

uint64_t ___ZN6WebKit22ModelElementController26takeModelElementFullscreenENS_15ModelIdentifierERKN3WTF3URLE_block_invoke_2(uint64_t a1)
{
  [*(a1 + 32) setModalPresentationStyle:5];
  [objc_msgSend(*(a1 + 32) "view")];
  v3 = *(a1 + 32);
  v2 = *(a1 + 40);
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = ___ZN6WebKit22ModelElementController26takeModelElementFullscreenENS_15ModelIdentifierERKN3WTF3URLE_block_invoke_3;
  v8[3] = &unk_1E76321C8;
  v9 = *(a1 + 48);
  [v2 presentViewController:v3 animated:0 completion:v8];
  v4 = *(a1 + 64);
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = ___ZN6WebKit22ModelElementController26takeModelElementFullscreenENS_15ModelIdentifierERKN3WTF3URLE_block_invoke_4;
  v7[3] = &unk_1E7632218;
  v5 = *(a1 + 32);
  v7[4] = *(a1 + 48);
  v7[5] = v5;
  return [v4 observeDismissFullscreenWithCompletionHandler:v7];
}

uint64_t ___ZN6WebKit22ModelElementController26takeModelElementFullscreenENS_15ModelIdentifierERKN3WTF3URLE_block_invoke_3(uint64_t a1)
{
  [MEMORY[0x1E6979518] begin];
  [objc_msgSend(objc_msgSend(objc_msgSend(*(a1 + 32) "layer")];
  [MEMORY[0x1E6979518] commit];
  v2 = *(a1 + 40);

  return [v2 invalidate];
}

void ___ZN6WebKit22ModelElementController26takeModelElementFullscreenENS_15ModelIdentifierERKN3WTF3URLE_block_invoke_4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = ___ZN6WebKit22ModelElementController26takeModelElementFullscreenENS_15ModelIdentifierERKN3WTF3URLE_block_invoke_5;
  v4[3] = &unk_1E76321F0;
  v4[4] = a4;
  v4[5] = a2;
  v5 = *(a1 + 32);
  dispatch_async(MEMORY[0x1E69E96A0], v4);
}

uint64_t ___ZN6WebKit22ModelElementController26takeModelElementFullscreenENS_15ModelIdentifierERKN3WTF3URLE_block_invoke_5(uint64_t a1)
{
  v3 = *(a1 + 32);
  v2 = *(a1 + 40);
  if (v3 || !v2)
  {

    return [v2 invalidate];
  }

  else
  {
    [MEMORY[0x1E6979518] begin];
    [objc_msgSend(objc_msgSend(objc_msgSend(*(a1 + 48) "layer")];
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = ___ZN6WebKit22ModelElementController26takeModelElementFullscreenENS_15ModelIdentifierERKN3WTF3URLE_block_invoke_6;
    v5[3] = &unk_1E7631230;
    v5[4] = *(a1 + 56);
    [MEMORY[0x1E6979518] setCompletionBlock:v5];
    [MEMORY[0x1E6979518] commit];
    return [*(a1 + 40) invalidate];
  }
}

void WebKit::ModelElementController::getCameraForModelElement(unsigned int *a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v31[11] = *MEMORY[0x1E69E9840];
  v6 = [WebKit::ModelElementController::modelViewForModelIdentifier(a1 a2];
  v7 = v6;
  if (v6)
  {
    v8 = v6;
  }

  if (objc_opt_respondsToSelector())
  {
    WTF::WeakPtrFactory<WebPushD::PushServiceConnection,WTF::DefaultWeakPtrImpl>::initializeIfNeeded(a1, a1);
    v9 = *a1;
    atomic_fetch_add(v9, 1u);
    v10 = *a4;
    *a4 = 0;
    v11 = malloc_type_malloc(0x30uLL, 0x10E0040FAC56454uLL);
    *v11 = MEMORY[0x1E69E9818];
    v11[1] = 50331650;
    v11[2] = _ZZN3WTF8BlockPtrIFvDv3_fP7NSErrorEE12fromCallableIZN6WebKit22ModelElementController24getCameraForModelElementENS7_15ModelIdentifierEONS_17CompletionHandlerIFvNSt12experimental15fundamentals_v38expectedIN7WebCore22HTMLModelElementCameraENSE_13ResourceErrorEEEEEEE3__0EES5_T_ENUlPvS1_S3_E_8__invokeESN_S1_S3_;
    v11[3] = &_ZZN3WTF8BlockPtrIFvDv3_fP7NSErrorEE12fromCallableIZN6WebKit22ModelElementController24getCameraForModelElementENS7_15ModelIdentifierEONS_17CompletionHandlerIFvNSt12experimental15fundamentals_v38expectedIN7WebCore22HTMLModelElementCameraENSE_13ResourceErrorEEEEEEE3__0EES5_T_E10descriptor;
    v11[4] = v9;
    v11[5] = v10;
    [v7 getCameraTransform:v11];
    _Block_release(v11);
    if (!v7)
    {
      return;
    }
  }

  else
  {
    WebCore::ResourceErrorBase::ResourceErrorBase(&v22, 1);
    v25 = 0;
    v26 = 1;
    makeUnexpected<WebCore::ResourceError>(&v22, &v27);
    std::experimental::fundamentals_v3::expected<WebCore::HTMLModelElementCamera,WebCore::ResourceError>::expected(v31, &v27);
    WTF::CompletionHandler<void ()(std::experimental::fundamentals_v3::expected<WebCore::HTMLModelElementCamera,WebCore::ResourceError>)>::operator()(a4, v31);
    std::experimental::fundamentals_v3::expected<WTF::Seconds,WebCore::ResourceError>::~expected(v31, v12);
    v14 = v30;
    v30 = 0;
    if (v14)
    {
    }

    v15 = v29;
    v29 = 0;
    if (v15 && atomic_fetch_add_explicit(v15, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v15, v13);
    }

    v16 = v28;
    v28 = 0;
    if (v16 && atomic_fetch_add_explicit(v16, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v16, v13);
    }

    v17 = v27;
    v27 = 0;
    if (v17 && atomic_fetch_add_explicit(v17, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v17, v13);
    }

    v18 = v25;
    v25 = 0;
    if (v18)
    {
    }

    v19 = v24;
    v24 = 0;
    if (v19 && atomic_fetch_add_explicit(v19, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v19, v13);
    }

    v20 = v23;
    v23 = 0;
    if (v20 && atomic_fetch_add_explicit(v20, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v20, v13);
    }

    v21 = v22;
    v22 = 0;
    if (v21 && atomic_fetch_add_explicit(v21, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v21, v13);
      if (!v7)
      {
        return;
      }
    }

    else if (!v7)
    {
      return;
    }
  }
}

void sub_19DC16944(_Unwind_Exception *a1, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, WTF::StringImpl *a9, WTF::StringImpl *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, WTF::StringImpl *a15, uint64_t a16, void *a17, uint64_t a18, WTF::StringImpl *a19, WTF::StringImpl *a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, WTF::StringImpl *a25, uint64_t a26, void *a27)
{
  std::experimental::fundamentals_v3::expected<WTF::Seconds,WebCore::ResourceError>::~expected(v28 - 144, a2);
  if (a27)
  {
  }

  if (a25 && atomic_fetch_add_explicit(a25, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(a25, v30);
  }

  if (a20 && atomic_fetch_add_explicit(a20, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(a20, v30);
  }

  if (a19 && atomic_fetch_add_explicit(a19, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(a19, v30);
  }

  if (a17)
  {
  }

  if (a15 && atomic_fetch_add_explicit(a15, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(a15, v30);
  }

  if (a10 && atomic_fetch_add_explicit(a10, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(a10, v30);
  }

  if (a9 && atomic_fetch_add_explicit(a9, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(a9, v30);
  }

  if (v27)
  {
  }

  _Unwind_Resume(a1);
}

uint64_t WTF::CompletionHandler<void ()(std::experimental::fundamentals_v3::expected<WebCore::HTMLModelElementCamera,WebCore::ResourceError>)>::operator()(uint64_t *a1, uint64_t *a2)
{
  v5[11] = *MEMORY[0x1E69E9840];
  v4 = *a1;
  *a1 = 0;
  mpark::detail::move_constructor<mpark::detail::traits<WebCore::HTMLModelElementCamera,WebCore::ResourceError>,(mpark::detail::Trait)1>::move_constructor(v5, a2);
  WTF::Function<void ()(std::experimental::fundamentals_v3::expected<WebCore::HTMLModelElementCamera,WebCore::ResourceError>)>::operator()(&v4, v5);
  std::experimental::fundamentals_v3::expected<WTF::Seconds,WebCore::ResourceError>::~expected(v5, v2);
  result = v4;
  v4 = 0;
  if (result)
  {
    return (*(*result + 8))(result);
  }

  return result;
}

void sub_19DC16B78(_Unwind_Exception *a1, WTF::StringImpl *a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  std::experimental::fundamentals_v3::expected<WTF::Seconds,WebCore::ResourceError>::~expected(va, a2);
  if (a4)
  {
    (*(*a4 + 8))(a4);
  }

  _Unwind_Resume(a1);
}

uint64_t std::experimental::fundamentals_v3::expected<WebCore::HTMLModelElementCamera,WebCore::ResourceError>::expected(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  *a2 = 0;
  *a1 = v4;
  WTF::URL::URL(a1 + 8, a2 + 1);
  v5 = a2[6];
  a2[6] = 0;
  *(a1 + 48) = v5;
  LODWORD(v5) = *(a2 + 14);
  *(a1 + 60) = *(a2 + 30);
  *(a1 + 56) = v5;
  v6 = a2[8];
  a2[8] = 0;
  *(a1 + 64) = v6;
  *(a1 + 72) = *(a2 + 72);
  *(a1 + 80) = 1;
  return a1;
}

void sub_19DC16C38(_Unwind_Exception *exception_object, WTF::StringImpl *a2)
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

void WebKit::ModelElementController::setCameraForModelElement(uint64_t a1, uint64_t a2, uint64_t a3, WTF::RefCountedBase *a4, float64_t a5, float64_t a6)
{
  v12 = [WebKit::ModelElementController::modelViewForModelIdentifier(a1 a2];
  if (v12)
  {
    v7 = v12;
  }

  v8 = objc_opt_respondsToSelector();
  if (v8)
  {
    v9.f64[0] = a5;
    v9.f64[1] = a6;
    [v12 setCameraTransform:COERCE_DOUBLE(vcvt_f32_f64(v9))];
  }

  WTF::CompletionHandler<void ()(BOOL)>::operator()(a4, v8 & 1);
  if (v12)
  {
  }
}

void sub_19DC16D20(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id a14)
{
  if (a14)
  {
  }

  _Unwind_Resume(exception_object);
}

void WebKit::ModelElementController::isPlayingAnimationForModelElement(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v5 = [WebKit::ModelElementController::modelViewForModelIdentifier(a1 a2];
  v6 = v5;
  if (v5)
  {
    v7 = v5;
  }

  if (objc_opt_respondsToSelector())
  {
    LOBYTE(v19[0]) = [v6 isPlaying];
    v20 = 0;
    WTF::CompletionHandler<void ()(std::experimental::fundamentals_v3::expected<BOOL,WebCore::ResourceError>)>::operator()(a4, v19);
    std::experimental::fundamentals_v3::expected<WTF::Seconds,WebCore::ResourceError>::~expected(v19, v8);
    if (!v6)
    {
      return;
    }
  }

  else
  {
    WebCore::ResourceErrorBase::ResourceErrorBase(&v21, 1);
    v24 = 0;
    v25 = 1;
    makeUnexpected<WebCore::ResourceError>(&v21, &v26);
    std::experimental::fundamentals_v3::expected<BOOL,WebCore::ResourceError>::expected(v30, &v26);
    WTF::CompletionHandler<void ()(std::experimental::fundamentals_v3::expected<BOOL,WebCore::ResourceError>)>::operator()(a4, v30);
    std::experimental::fundamentals_v3::expected<WTF::Seconds,WebCore::ResourceError>::~expected(v30, v9);
    v11 = v29;
    v29 = 0;
    if (v11)
    {
    }

    v12 = v28;
    v28 = 0;
    if (v12 && atomic_fetch_add_explicit(v12, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v12, v10);
    }

    v13 = v27;
    v27 = 0;
    if (v13 && atomic_fetch_add_explicit(v13, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v13, v10);
    }

    v14 = v26;
    v26 = 0;
    if (v14 && atomic_fetch_add_explicit(v14, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v14, v10);
    }

    v15 = v24;
    v24 = 0;
    if (v15)
    {
    }

    v16 = v23;
    v23 = 0;
    if (v16 && atomic_fetch_add_explicit(v16, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v16, v10);
    }

    v17 = v22;
    v22 = 0;
    if (v17 && atomic_fetch_add_explicit(v17, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v17, v10);
    }

    v18 = v21;
    v21 = 0;
    if (v18 && atomic_fetch_add_explicit(v18, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v18, v10);
      if (!v6)
      {
        return;
      }
    }

    else if (!v6)
    {
      return;
    }
  }
}

void sub_19DC16EFC(_Unwind_Exception *a1, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, WTF::StringImpl *a20, WTF::StringImpl *a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, WTF::StringImpl *a26, uint64_t a27, void *a28, uint64_t a29, WTF::StringImpl *a30, WTF::StringImpl *a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, WTF::StringImpl *a36, uint64_t a37, void *a38)
{
  std::experimental::fundamentals_v3::expected<WTF::Seconds,WebCore::ResourceError>::~expected(v39 - 120, a2);
  if (a38)
  {
  }

  if (a36 && atomic_fetch_add_explicit(a36, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(a36, v41);
  }

  if (a31 && atomic_fetch_add_explicit(a31, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(a31, v41);
  }

  if (a30 && atomic_fetch_add_explicit(a30, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(a30, v41);
  }

  if (a28)
  {
  }

  if (a26 && atomic_fetch_add_explicit(a26, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(a26, v41);
  }

  if (a21 && atomic_fetch_add_explicit(a21, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(a21, v41);
  }

  if (a20 && atomic_fetch_add_explicit(a20, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(a20, v41);
  }

  if (v38)
  {
  }

  _Unwind_Resume(a1);
}

uint64_t WTF::CompletionHandler<void ()(std::experimental::fundamentals_v3::expected<BOOL,WebCore::ResourceError>)>::operator()(uint64_t *a1, uint64_t *a2)
{
  v5 = *a1;
  *a1 = 0;
  mpark::detail::move_constructor<mpark::detail::traits<BOOL,WebCore::ResourceError>,(mpark::detail::Trait)1>::move_constructor(v4, a2);
  WTF::Function<void ()(std::experimental::fundamentals_v3::expected<BOOL,WebCore::ResourceError>)>::operator()(&v5, v4);
  std::experimental::fundamentals_v3::expected<WTF::Seconds,WebCore::ResourceError>::~expected(v4, v2);
  result = v5;
  v5 = 0;
  if (result)
  {
    return (*(*result + 8))(result);
  }

  return result;
}

void sub_19DC170AC(_Unwind_Exception *a1, WTF::StringImpl *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  std::experimental::fundamentals_v3::expected<WTF::Seconds,WebCore::ResourceError>::~expected(&a9, a2);
  v11 = *(v9 - 24);
  *(v9 - 24) = 0;
  if (v11)
  {
    (*(*v11 + 8))(v11);
  }

  _Unwind_Resume(a1);
}

uint64_t std::experimental::fundamentals_v3::expected<BOOL,WebCore::ResourceError>::expected(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  *a2 = 0;
  *a1 = v4;
  WTF::URL::URL(a1 + 8, a2 + 1);
  v5 = a2[6];
  a2[6] = 0;
  *(a1 + 48) = v5;
  LODWORD(v5) = *(a2 + 14);
  *(a1 + 60) = *(a2 + 30);
  *(a1 + 56) = v5;
  v6 = a2[8];
  a2[8] = 0;
  *(a1 + 64) = v6;
  *(a1 + 72) = *(a2 + 72);
  *(a1 + 80) = 1;
  return a1;
}

void sub_19DC1716C(_Unwind_Exception *exception_object, WTF::StringImpl *a2)
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

void WebKit::ModelElementController::setAnimationIsPlayingForModelElement(unsigned int *a1, uint64_t a2, uint64_t a3, uint64_t a4, WTF::RefCountedBase *a5)
{
  v12 = [WebKit::ModelElementController::modelViewForModelIdentifier(a1 a2];
  if (v12)
  {
    v8 = v12;
  }

  if (objc_opt_respondsToSelector())
  {
    WTF::WeakPtrFactory<WebPushD::PushServiceConnection,WTF::DefaultWeakPtrImpl>::initializeIfNeeded(a1, a1);
    v9 = *a1;
    atomic_fetch_add(v9, 1u);
    v10 = *a5;
    *a5 = 0;
    v11 = malloc_type_malloc(0x30uLL, 0x10E0040FAC56454uLL);
    *v11 = MEMORY[0x1E69E9818];
    v11[1] = 50331650;
    v11[2] = WTF::BlockPtr<void ()(BOOL,NSError *)>::fromCallable<WebKit::ModelElementController::setAnimationIsPlayingForModelElement(WebKit::ModelIdentifier,BOOL,WTF::CompletionHandler<void ()(BOOL)> &&)::$_0>(WebKit::ModelElementController::setAnimationIsPlayingForModelElement(WebKit::ModelIdentifier,BOOL,WTF::CompletionHandler<void ()(BOOL)> &&)::$_0)::{lambda(void *,BOOL,NSError *)#1}::__invoke;
    v11[3] = &WTF::BlockPtr<void ()(BOOL,NSError *)>::fromCallable<WebKit::ModelElementController::setAnimationIsPlayingForModelElement(WebKit::ModelIdentifier,BOOL,WTF::CompletionHandler<void ()(BOOL)> &&)::$_0>(WebKit::ModelElementController::setAnimationIsPlayingForModelElement(WebKit::ModelIdentifier,BOOL,WTF::CompletionHandler<void ()(BOOL)> &&)::$_0)::descriptor;
    v11[4] = v9;
    v11[5] = v10;
    [v12 setIsPlaying:a4 reply:v11];
    _Block_release(v11);
  }

  else
  {
    WTF::CompletionHandler<void ()(BOOL)>::operator()(a5, 0);
  }

  if (v12)
  {
  }
}

void sub_19DC172D0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  _Block_release(v10);
  if (a10)
  {
  }

  _Unwind_Resume(a1);
}

void WebKit::ModelElementController::isLoopingAnimationForModelElement(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v5 = [WebKit::ModelElementController::modelViewForModelIdentifier(a1 a2];
  v6 = v5;
  if (v5)
  {
    v7 = v5;
  }

  if (objc_opt_respondsToSelector())
  {
    LOBYTE(v19[0]) = [v6 isLooping];
    v20 = 0;
    WTF::CompletionHandler<void ()(std::experimental::fundamentals_v3::expected<BOOL,WebCore::ResourceError>)>::operator()(a4, v19);
    std::experimental::fundamentals_v3::expected<WTF::Seconds,WebCore::ResourceError>::~expected(v19, v8);
    if (!v6)
    {
      return;
    }
  }

  else
  {
    WebCore::ResourceErrorBase::ResourceErrorBase(&v21, 1);
    v24 = 0;
    v25 = 1;
    makeUnexpected<WebCore::ResourceError>(&v21, &v26);
    std::experimental::fundamentals_v3::expected<BOOL,WebCore::ResourceError>::expected(v30, &v26);
    WTF::CompletionHandler<void ()(std::experimental::fundamentals_v3::expected<BOOL,WebCore::ResourceError>)>::operator()(a4, v30);
    std::experimental::fundamentals_v3::expected<WTF::Seconds,WebCore::ResourceError>::~expected(v30, v9);
    v11 = v29;
    v29 = 0;
    if (v11)
    {
    }

    v12 = v28;
    v28 = 0;
    if (v12 && atomic_fetch_add_explicit(v12, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v12, v10);
    }

    v13 = v27;
    v27 = 0;
    if (v13 && atomic_fetch_add_explicit(v13, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v13, v10);
    }

    v14 = v26;
    v26 = 0;
    if (v14 && atomic_fetch_add_explicit(v14, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v14, v10);
    }

    v15 = v24;
    v24 = 0;
    if (v15)
    {
    }

    v16 = v23;
    v23 = 0;
    if (v16 && atomic_fetch_add_explicit(v16, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v16, v10);
    }

    v17 = v22;
    v22 = 0;
    if (v17 && atomic_fetch_add_explicit(v17, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v17, v10);
    }

    v18 = v21;
    v21 = 0;
    if (v18 && atomic_fetch_add_explicit(v18, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v18, v10);
      if (!v6)
      {
        return;
      }
    }

    else if (!v6)
    {
      return;
    }
  }
}

void sub_19DC17514(_Unwind_Exception *a1, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, WTF::StringImpl *a20, WTF::StringImpl *a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, WTF::StringImpl *a26, uint64_t a27, void *a28, uint64_t a29, WTF::StringImpl *a30, WTF::StringImpl *a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, WTF::StringImpl *a36, uint64_t a37, void *a38)
{
  std::experimental::fundamentals_v3::expected<WTF::Seconds,WebCore::ResourceError>::~expected(v39 - 120, a2);
  if (a38)
  {
  }

  if (a36 && atomic_fetch_add_explicit(a36, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(a36, v41);
  }

  if (a31 && atomic_fetch_add_explicit(a31, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(a31, v41);
  }

  if (a30 && atomic_fetch_add_explicit(a30, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(a30, v41);
  }

  if (a28)
  {
  }

  if (a26 && atomic_fetch_add_explicit(a26, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(a26, v41);
  }

  if (a21 && atomic_fetch_add_explicit(a21, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(a21, v41);
  }

  if (a20 && atomic_fetch_add_explicit(a20, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(a20, v41);
  }

  if (v38)
  {
  }

  _Unwind_Resume(a1);
}

void WebKit::ModelElementController::setIsLoopingAnimationForModelElement(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, WTF::RefCountedBase *a5)
{
  v9 = [WebKit::ModelElementController::modelViewForModelIdentifier(a1 a2];
  if (v9)
  {
    v7 = v9;
  }

  v8 = objc_opt_respondsToSelector();
  if (v8)
  {
    [v9 setIsLooping:a4];
  }

  WTF::CompletionHandler<void ()(BOOL)>::operator()(a5, v8 & 1);
  if (v9)
  {
  }
}

void sub_19DC176F0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  if (a10)
  {
  }

  _Unwind_Resume(exception_object);
}

void WebKit::ModelElementController::animationDurationForModelElement(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v31[11] = *MEMORY[0x1E69E9840];
  v5 = [WebKit::ModelElementController::modelViewForModelIdentifier(a1 a2];
  v6 = v5;
  if (v5)
  {
    v7 = v5;
  }

  if (objc_opt_respondsToSelector())
  {
    [v6 duration];
    v29[0] = v8;
    v30 = 0;
    WTF::CompletionHandler<void ()(std::experimental::fundamentals_v3::expected<WTF::Seconds,WebCore::ResourceError>)>::operator()(a4, v29);
    std::experimental::fundamentals_v3::expected<WTF::Seconds,WebCore::ResourceError>::~expected(v29, v9);
    if (!v6)
    {
      return;
    }
  }

  else
  {
    WebCore::ResourceErrorBase::ResourceErrorBase(&v20, 1);
    v23 = 0;
    v24 = 1;
    makeUnexpected<WebCore::ResourceError>(&v20, &v25);
    std::experimental::fundamentals_v3::expected<WTF::Seconds,WebCore::ResourceError>::expected(v31, &v25);
    WTF::CompletionHandler<void ()(std::experimental::fundamentals_v3::expected<WTF::Seconds,WebCore::ResourceError>)>::operator()(a4, v31);
    std::experimental::fundamentals_v3::expected<WTF::Seconds,WebCore::ResourceError>::~expected(v31, v10);
    v12 = v28;
    v28 = 0;
    if (v12)
    {
    }

    v13 = v27;
    v27 = 0;
    if (v13 && atomic_fetch_add_explicit(v13, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v13, v11);
    }

    v14 = v26;
    v26 = 0;
    if (v14 && atomic_fetch_add_explicit(v14, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v14, v11);
    }

    v15 = v25;
    v25 = 0;
    if (v15 && atomic_fetch_add_explicit(v15, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v15, v11);
    }

    v16 = v23;
    v23 = 0;
    if (v16)
    {
    }

    v17 = v22;
    v22 = 0;
    if (v17 && atomic_fetch_add_explicit(v17, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v17, v11);
    }

    v18 = v21;
    v21 = 0;
    if (v18 && atomic_fetch_add_explicit(v18, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v18, v11);
    }

    v19 = v20;
    v20 = 0;
    if (v19 && atomic_fetch_add_explicit(v19, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v19, v11);
      if (!v6)
      {
        return;
      }
    }

    else if (!v6)
    {
      return;
    }
  }
}

void sub_19DC178F8(_Unwind_Exception *a1, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, WTF::StringImpl *a10, WTF::StringImpl *a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, WTF::StringImpl *a16, uint64_t a17, void *a18, uint64_t a19, WTF::StringImpl *a20, WTF::StringImpl *a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, WTF::StringImpl *a26, uint64_t a27, void *a28, uint64_t a29, char a30)
{
  std::experimental::fundamentals_v3::expected<WTF::Seconds,WebCore::ResourceError>::~expected(v31 - 128, a2);
  if (a28)
  {
  }

  if (a26 && atomic_fetch_add_explicit(a26, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(a26, v33);
  }

  if (a21 && atomic_fetch_add_explicit(a21, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(a21, v33);
  }

  if (a20 && atomic_fetch_add_explicit(a20, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(a20, v33);
  }

  if (a18)
  {
  }

  if (a16 && atomic_fetch_add_explicit(a16, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(a16, v33);
  }

  if (a11 && atomic_fetch_add_explicit(a11, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(a11, v33);
  }

  if (a10 && atomic_fetch_add_explicit(a10, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(a10, v33);
  }

  if (v30)
  {
  }

  _Unwind_Resume(a1);
}

uint64_t WTF::CompletionHandler<void ()(std::experimental::fundamentals_v3::expected<WTF::Seconds,WebCore::ResourceError>)>::operator()(uint64_t *a1, uint64_t *a2)
{
  v5[11] = *MEMORY[0x1E69E9840];
  v4 = *a1;
  *a1 = 0;
  mpark::detail::move_constructor<mpark::detail::traits<WTF::Seconds,WebCore::ResourceError>,(mpark::detail::Trait)1>::move_constructor(v5, a2);
  WTF::Function<void ()(std::experimental::fundamentals_v3::expected<WTF::Seconds,WebCore::ResourceError>)>::operator()(&v4, v5);
  std::experimental::fundamentals_v3::expected<WTF::Seconds,WebCore::ResourceError>::~expected(v5, v2);
  result = v4;
  v4 = 0;
  if (result)
  {
    return (*(*result + 8))(result);
  }

  return result;
}

void sub_19DC17AD4(_Unwind_Exception *a1, WTF::StringImpl *a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  std::experimental::fundamentals_v3::expected<WTF::Seconds,WebCore::ResourceError>::~expected(va, a2);
  if (a4)
  {
    (*(*a4 + 8))(a4);
  }

  _Unwind_Resume(a1);
}

void WebKit::ModelElementController::animationCurrentTimeForModelElement(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v31[11] = *MEMORY[0x1E69E9840];
  v5 = [WebKit::ModelElementController::modelViewForModelIdentifier(a1 a2];
  v6 = v5;
  if (v5)
  {
    v7 = v5;
  }

  if (objc_opt_respondsToSelector())
  {
    [v6 currentTime];
    v29[0] = v8;
    v30 = 0;
    WTF::CompletionHandler<void ()(std::experimental::fundamentals_v3::expected<WTF::Seconds,WebCore::ResourceError>)>::operator()(a4, v29);
    std::experimental::fundamentals_v3::expected<WTF::Seconds,WebCore::ResourceError>::~expected(v29, v9);
    if (!v6)
    {
      return;
    }
  }

  else
  {
    WebCore::ResourceErrorBase::ResourceErrorBase(&v20, 1);
    v23 = 0;
    v24 = 1;
    makeUnexpected<WebCore::ResourceError>(&v20, &v25);
    std::experimental::fundamentals_v3::expected<WTF::Seconds,WebCore::ResourceError>::expected(v31, &v25);
    WTF::CompletionHandler<void ()(std::experimental::fundamentals_v3::expected<WTF::Seconds,WebCore::ResourceError>)>::operator()(a4, v31);
    std::experimental::fundamentals_v3::expected<WTF::Seconds,WebCore::ResourceError>::~expected(v31, v10);
    v12 = v28;
    v28 = 0;
    if (v12)
    {
    }

    v13 = v27;
    v27 = 0;
    if (v13 && atomic_fetch_add_explicit(v13, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v13, v11);
    }

    v14 = v26;
    v26 = 0;
    if (v14 && atomic_fetch_add_explicit(v14, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v14, v11);
    }

    v15 = v25;
    v25 = 0;
    if (v15 && atomic_fetch_add_explicit(v15, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v15, v11);
    }

    v16 = v23;
    v23 = 0;
    if (v16)
    {
    }

    v17 = v22;
    v22 = 0;
    if (v17 && atomic_fetch_add_explicit(v17, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v17, v11);
    }

    v18 = v21;
    v21 = 0;
    if (v18 && atomic_fetch_add_explicit(v18, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v18, v11);
    }

    v19 = v20;
    v20 = 0;
    if (v19 && atomic_fetch_add_explicit(v19, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v19, v11);
      if (!v6)
      {
        return;
      }
    }

    else if (!v6)
    {
      return;
    }
  }
}

void sub_19DC17D10(_Unwind_Exception *a1, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, WTF::StringImpl *a10, WTF::StringImpl *a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, WTF::StringImpl *a16, uint64_t a17, void *a18, uint64_t a19, WTF::StringImpl *a20, WTF::StringImpl *a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, WTF::StringImpl *a26, uint64_t a27, void *a28, uint64_t a29, char a30)
{
  std::experimental::fundamentals_v3::expected<WTF::Seconds,WebCore::ResourceError>::~expected(v31 - 128, a2);
  if (a28)
  {
  }

  if (a26 && atomic_fetch_add_explicit(a26, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(a26, v33);
  }

  if (a21 && atomic_fetch_add_explicit(a21, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(a21, v33);
  }

  if (a20 && atomic_fetch_add_explicit(a20, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(a20, v33);
  }

  if (a18)
  {
  }

  if (a16 && atomic_fetch_add_explicit(a16, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(a16, v33);
  }

  if (a11 && atomic_fetch_add_explicit(a11, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(a11, v33);
  }

  if (a10 && atomic_fetch_add_explicit(a10, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(a10, v33);
  }

  if (v30)
  {
  }

  _Unwind_Resume(a1);
}

void WebKit::ModelElementController::setAnimationCurrentTimeForModelElement(uint64_t a1, uint64_t a2, uint64_t a3, WTF::RefCountedBase *a4, double a5)
{
  v9 = [WebKit::ModelElementController::modelViewForModelIdentifier(a1 a2];
  if (v9)
  {
    v7 = v9;
  }

  v8 = objc_opt_respondsToSelector();
  if (v8)
  {
    [v9 setCurrentTime:a5];
  }

  WTF::CompletionHandler<void ()(BOOL)>::operator()(a4, v8 & 1);
  if (v9)
  {
  }
}

void sub_19DC17EEC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  if (a10)
  {
  }

  _Unwind_Resume(exception_object);
}

void WebKit::ModelElementController::hasAudioForModelElement(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v5 = [WebKit::ModelElementController::modelViewForModelIdentifier(a1 a2];
  v6 = v5;
  if (v5)
  {
    v7 = v5;
  }

  if (objc_opt_respondsToSelector())
  {
    LOBYTE(v19[0]) = [v6 hasAudio];
    v20 = 0;
    WTF::CompletionHandler<void ()(std::experimental::fundamentals_v3::expected<BOOL,WebCore::ResourceError>)>::operator()(a4, v19);
    std::experimental::fundamentals_v3::expected<WTF::Seconds,WebCore::ResourceError>::~expected(v19, v8);
    if (!v6)
    {
      return;
    }
  }

  else
  {
    WebCore::ResourceErrorBase::ResourceErrorBase(&v21, 1);
    v24 = 0;
    v25 = 1;
    makeUnexpected<WebCore::ResourceError>(&v21, &v26);
    std::experimental::fundamentals_v3::expected<BOOL,WebCore::ResourceError>::expected(v30, &v26);
    WTF::CompletionHandler<void ()(std::experimental::fundamentals_v3::expected<BOOL,WebCore::ResourceError>)>::operator()(a4, v30);
    std::experimental::fundamentals_v3::expected<WTF::Seconds,WebCore::ResourceError>::~expected(v30, v9);
    v11 = v29;
    v29 = 0;
    if (v11)
    {
    }

    v12 = v28;
    v28 = 0;
    if (v12 && atomic_fetch_add_explicit(v12, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v12, v10);
    }

    v13 = v27;
    v27 = 0;
    if (v13 && atomic_fetch_add_explicit(v13, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v13, v10);
    }

    v14 = v26;
    v26 = 0;
    if (v14 && atomic_fetch_add_explicit(v14, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v14, v10);
    }

    v15 = v24;
    v24 = 0;
    if (v15)
    {
    }

    v16 = v23;
    v23 = 0;
    if (v16 && atomic_fetch_add_explicit(v16, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v16, v10);
    }

    v17 = v22;
    v22 = 0;
    if (v17 && atomic_fetch_add_explicit(v17, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v17, v10);
    }

    v18 = v21;
    v21 = 0;
    if (v18 && atomic_fetch_add_explicit(v18, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v18, v10);
      if (!v6)
      {
        return;
      }
    }

    else if (!v6)
    {
      return;
    }
  }
}

void sub_19DC180C8(_Unwind_Exception *a1, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, WTF::StringImpl *a20, WTF::StringImpl *a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, WTF::StringImpl *a26, uint64_t a27, void *a28, uint64_t a29, WTF::StringImpl *a30, WTF::StringImpl *a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, WTF::StringImpl *a36, uint64_t a37, void *a38)
{
  std::experimental::fundamentals_v3::expected<WTF::Seconds,WebCore::ResourceError>::~expected(v39 - 120, a2);
  if (a38)
  {
  }

  if (a36 && atomic_fetch_add_explicit(a36, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(a36, v41);
  }

  if (a31 && atomic_fetch_add_explicit(a31, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(a31, v41);
  }

  if (a30 && atomic_fetch_add_explicit(a30, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(a30, v41);
  }

  if (a28)
  {
  }

  if (a26 && atomic_fetch_add_explicit(a26, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(a26, v41);
  }

  if (a21 && atomic_fetch_add_explicit(a21, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(a21, v41);
  }

  if (a20 && atomic_fetch_add_explicit(a20, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(a20, v41);
  }

  if (v38)
  {
  }

  _Unwind_Resume(a1);
}

void WebKit::ModelElementController::isMutedForModelElement(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v5 = [WebKit::ModelElementController::modelViewForModelIdentifier(a1 a2];
  v6 = v5;
  if (v5)
  {
    v7 = v5;
  }

  if (objc_opt_respondsToSelector())
  {
    LOBYTE(v19[0]) = [v6 isMuted];
    v20 = 0;
    WTF::CompletionHandler<void ()(std::experimental::fundamentals_v3::expected<BOOL,WebCore::ResourceError>)>::operator()(a4, v19);
    std::experimental::fundamentals_v3::expected<WTF::Seconds,WebCore::ResourceError>::~expected(v19, v8);
    if (!v6)
    {
      return;
    }
  }

  else
  {
    WebCore::ResourceErrorBase::ResourceErrorBase(&v21, 1);
    v24 = 0;
    v25 = 1;
    makeUnexpected<WebCore::ResourceError>(&v21, &v26);
    std::experimental::fundamentals_v3::expected<BOOL,WebCore::ResourceError>::expected(v30, &v26);
    WTF::CompletionHandler<void ()(std::experimental::fundamentals_v3::expected<BOOL,WebCore::ResourceError>)>::operator()(a4, v30);
    std::experimental::fundamentals_v3::expected<WTF::Seconds,WebCore::ResourceError>::~expected(v30, v9);
    v11 = v29;
    v29 = 0;
    if (v11)
    {
    }

    v12 = v28;
    v28 = 0;
    if (v12 && atomic_fetch_add_explicit(v12, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v12, v10);
    }

    v13 = v27;
    v27 = 0;
    if (v13 && atomic_fetch_add_explicit(v13, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v13, v10);
    }

    v14 = v26;
    v26 = 0;
    if (v14 && atomic_fetch_add_explicit(v14, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v14, v10);
    }

    v15 = v24;
    v24 = 0;
    if (v15)
    {
    }

    v16 = v23;
    v23 = 0;
    if (v16 && atomic_fetch_add_explicit(v16, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v16, v10);
    }

    v17 = v22;
    v22 = 0;
    if (v17 && atomic_fetch_add_explicit(v17, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v17, v10);
    }

    v18 = v21;
    v21 = 0;
    if (v18 && atomic_fetch_add_explicit(v18, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v18, v10);
      if (!v6)
      {
        return;
      }
    }

    else if (!v6)
    {
      return;
    }
  }
}

void sub_19DC183BC(_Unwind_Exception *a1, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, WTF::StringImpl *a20, WTF::StringImpl *a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, WTF::StringImpl *a26, uint64_t a27, void *a28, uint64_t a29, WTF::StringImpl *a30, WTF::StringImpl *a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, WTF::StringImpl *a36, uint64_t a37, void *a38)
{
  std::experimental::fundamentals_v3::expected<WTF::Seconds,WebCore::ResourceError>::~expected(v39 - 120, a2);
  if (a38)
  {
  }

  if (a36 && atomic_fetch_add_explicit(a36, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(a36, v41);
  }

  if (a31 && atomic_fetch_add_explicit(a31, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(a31, v41);
  }

  if (a30 && atomic_fetch_add_explicit(a30, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(a30, v41);
  }

  if (a28)
  {
  }

  if (a26 && atomic_fetch_add_explicit(a26, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(a26, v41);
  }

  if (a21 && atomic_fetch_add_explicit(a21, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(a21, v41);
  }

  if (a20 && atomic_fetch_add_explicit(a20, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(a20, v41);
  }

  if (v38)
  {
  }

  _Unwind_Resume(a1);
}

void WebKit::ModelElementController::setIsMutedForModelElement(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, WTF::RefCountedBase *a5)
{
  v9 = [WebKit::ModelElementController::modelViewForModelIdentifier(a1 a2];
  if (v9)
  {
    v7 = v9;
  }

  v8 = objc_opt_respondsToSelector();
  if (v8)
  {
    [v9 setIsMuted:a4];
  }

  WTF::CompletionHandler<void ()(BOOL)>::operator()(a5, v8 & 1);
  if (v9)
  {
  }
}

void sub_19DC18598(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  if (a10)
  {
  }

  _Unwind_Resume(exception_object);
}

void WebKit::LegacyCustomProtocolManagerClient::~LegacyCustomProtocolManagerClient(WebKit::LegacyCustomProtocolManagerClient *this, void *a2)
{
  v2 = *(this + 1);
  if (v2)
  {
    WTF::HashTable<WTF::ObjectIdentifierGeneric<WebKit::DataTaskIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::DataTaskIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::RetainPtr<NSURLSessionDataTask>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::DataTaskIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::RetainPtr<NSURLSessionDataTask>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::DataTaskIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::DataTaskIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::RetainPtr<NSURLSessionDataTask>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::DataTaskIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::DataTaskIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::RetainPtr<NSURLSessionDataTask>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::DataTaskIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::deallocateTable(v2, a2);
  }
}

{
  v3 = *(this + 1);
  if (v3)
  {
    WTF::HashTable<WTF::ObjectIdentifierGeneric<WebKit::DataTaskIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::DataTaskIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::RetainPtr<NSURLSessionDataTask>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::DataTaskIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::RetainPtr<NSURLSessionDataTask>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::DataTaskIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::DataTaskIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::RetainPtr<NSURLSessionDataTask>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::DataTaskIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::DataTaskIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::RetainPtr<NSURLSessionDataTask>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::DataTaskIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::deallocateTable(v3, a2);
  }

  bmalloc::api::tzoneFree(this, a2);
}

void WebKit::LegacyDownloadClient::~LegacyDownloadClient(id *this)
{
  objc_destroyWeak(this + 2);
  if (*(this + 2) != 1)
  {
    __break(0xC471u);
  }
}

{
  objc_destroyWeak(this + 2);
  if (*(this + 2) == 1)
  {

    bmalloc::api::tzoneFree(this, v2);
  }

  else
  {
    __break(0xC471u);
  }
}

WTF::StringImpl *API::DownloadClient::decidePlaceholderPolicy(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  WTF::URL::URL(&v6);
  WTF::CompletionHandler<void ()(WebKit::UseDownloadPlaceholder,WTF::URL const&)>::operator()(a3);
  result = v6;
  v6 = 0;
  if (result)
  {
    if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      return WTF::StringImpl::destroy(result, v4);
    }
  }

  return result;
}

void sub_19DC18744(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, WTF::StringImpl *a10)
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

atomic_ullong *WTF::BlockPtr<void ()(void)>::fromCallable<WebKit::GPUProcessProxy::sendBookmarkDataForCacheDirectory(void)::$_0>(WebKit::GPUProcessProxy::sendBookmarkDataForCacheDirectory(void)::$_0)::{lambda(void const*)#1}::__invoke(uint64_t a1)
{
  result = *(a1 + 32);
  *(a1 + 32) = 0;
  if (result)
  {
    return WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(result);
  }

  return result;
}

void WTF::BlockPtr<void ()(void)>::fromCallable<WebKit::GPUProcessProxy::sendBookmarkDataForCacheDirectory(void)::$_0>(WebKit::GPUProcessProxy::sendBookmarkDataForCacheDirectory(void)::$_0)::{lambda(void *)#1}::__invoke(uint64_t a1)
{
  v2 = [objc_msgSend(MEMORY[0x1E696AC08] defaultManager];
  v3 = v2;
  if (v2)
  {
    v4 = v2;
  }

  v5 = [objc_alloc(MEMORY[0x1E695DFF8]) initFileURLWithPath:@"Caches/com.apple.WebKit.GPU/" relativeToURL:v3];
  v18 = 0;
  v6 = [v5 bookmarkDataWithOptions:512 includingResourceValuesForKeys:0 relativeToURL:0 error:&v18];
  v8 = v6;
  if (v6)
  {
    v9 = v6;
    v10 = *(a1 + 32);
    v11 = [v8 bytes];
    v12 = [v8 length];
  }

  else
  {
    v11 = 0;
    v12 = 0;
    v10 = *(a1 + 32);
  }

  v13 = IPC::Encoder::operator new(0x238, v7);
  *v13 = 84;
  *(v13 + 68) = 0;
  *(v13 + 70) = 0;
  *(v13 + 69) = 0;
  *(v13 + 2) = 0;
  *(v13 + 3) = 0;
  *(v13 + 1) = 0;
  IPC::Encoder::encodeHeader(v13);
  v19 = v13;
  IPC::ArgumentCoder<std::span<unsigned char const,18446744073709551615ul>,void>::encode<IPC::Encoder>(v13, v11, v12);
  IPC::Connection::sendMessageImpl(v10, &v19, 0, 0);
  v15 = v19;
  v19 = 0;
  if (!v15)
  {
    if (!v8)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  IPC::Encoder::~Encoder(v15, v14);
  bmalloc::api::tzoneFree(v16, v17);
  if (v8)
  {
LABEL_8:
  }

LABEL_9:
  if (!v5)
  {
    if (!v3)
    {
      return;
    }

LABEL_13:

    return;
  }

  if (v3)
  {
    goto LABEL_13;
  }
}

void sub_19DC18908(_Unwind_Exception *a1, void *a2)
{
  IPC::Encoder::~Encoder(v5, a2);
  bmalloc::api::tzoneFree(v7, v8);
  if (v4)
  {

    if (!v3)
    {
LABEL_3:
      if (!v2)
      {
        goto LABEL_4;
      }

LABEL_7:

LABEL_4:
      _Unwind_Resume(a1);
    }
  }

  else if (!v3)
  {
    goto LABEL_3;
  }

  if (!v2)
  {
    goto LABEL_4;
  }

  goto LABEL_7;
}

uint64_t WTF::BlockPtr<void ()(void({block_pointer})(NSData *))>::fromCallable<WebKit::IconLoadingDelegate::IconLoadingClient::getLoadDecisionForIcon(WebCore::LinkIcon const&,WTF::CompletionHandler<void ()(WTF::CompletionHandler<void ()(API::Data *)> &&)> &&)::$_0>(WebKit::IconLoadingDelegate::IconLoadingClient::getLoadDecisionForIcon(WebCore::LinkIcon const&,WTF::CompletionHandler<void ()(WTF::CompletionHandler<void ()(API::Data *)> &&)> &&)::$_0)::{lambda(void const*)#1}::__invoke(uint64_t a1)
{
  result = *(a1 + 32);
  *(a1 + 32) = 0;
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

void WTF::BlockPtr<void ()(void({block_pointer})(NSData *))>::fromCallable<WebKit::IconLoadingDelegate::IconLoadingClient::getLoadDecisionForIcon(WebCore::LinkIcon const&,WTF::CompletionHandler<void ()(WTF::CompletionHandler<void ()(API::Data *)> &&)> &&)::$_0>(WebKit::IconLoadingDelegate::IconLoadingClient::getLoadDecisionForIcon(WebCore::LinkIcon const&,WTF::CompletionHandler<void ()(WTF::CompletionHandler<void ()(API::Data *)> &&)> &&)::$_0)::{lambda(void *,void({block_pointer})(NSData *))#1}::__invoke(uint64_t a1, void *aBlock)
{
  if (aBlock)
  {
    v3 = _Block_copy(aBlock);
    v4 = WTF::fastMalloc(0x10);
    *v4 = &unk_1F10FF1A8;
    v4[1] = v3;
    v5 = v4;
    WTF::CompletionHandler<void ()(WTF::CompletionHandler<void ()(API::Data *)> &&)>::operator()((a1 + 32));
    if (v5)
    {
      (*(*v5 + 8))(v5);
    }

    _Block_release(0);
  }

  else
  {
    WTF::CompletionHandler<void ()(WTF::CompletionHandler<void ()(API::Data *)> &&)>::operator()((a1 + 32));
  }
}

void sub_19DC18A88(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (a10)
  {
    (*(*a10 + 8))(a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t WTF::Detail::CallableWrapper<WebKit::IconLoadingDelegate::IconLoadingClient::getLoadDecisionForIcon(WebCore::LinkIcon const&,WTF::CompletionHandler<void ()(WTF::CompletionHandler<void ()(API::Data *)> &&)> &&)::$_0::operator()(void({block_pointer})(NSData *))::{lambda(API::Data *)#1},void,API::Data *>::~CallableWrapper(uint64_t a1)
{
  *a1 = &unk_1F10FF1A8;
  _Block_release(*(a1 + 8));
  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WebKit::IconLoadingDelegate::IconLoadingClient::getLoadDecisionForIcon(WebCore::LinkIcon const&,WTF::CompletionHandler<void ()(WTF::CompletionHandler<void ()(API::Data *)> &&)> &&)::$_0::operator()(void({block_pointer})(NSData *))::{lambda(API::Data *)#1},void,API::Data *>::~CallableWrapper(const void **a1)
{
  *a1 = &unk_1F10FF1A8;
  _Block_release(a1[1]);

  return WTF::fastFree(a1, v2);
}

uint64_t WTF::Detail::CallableWrapper<WebKit::IconLoadingDelegate::IconLoadingClient::getLoadDecisionForIcon(WebCore::LinkIcon const&,WTF::CompletionHandler<void ()(WTF::CompletionHandler<void ()(API::Data *)> &&)> &&)::$_0::operator()(void({block_pointer})(NSData *))::{lambda(API::Data *)#1},void,API::Data *>::call(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    if (*(a2 + 8))
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        __break(0xC471u);
        JUMPOUT(0x19DC18C08);
      }
    }
  }

  v3 = *(*(a1 + 8) + 16);

  return v3();
}

void WTF::BlockPtr<void ()(NSURLSessionAuthChallengeDisposition,NSURLCredential *)>::fromCallable<WebKit::LegacyDownloadClient::didReceiveAuthenticationChallenge(WebKit::DownloadProxy &,WebKit::AuthenticationChallengeProxy &)::$_0>(WebKit::LegacyDownloadClient::didReceiveAuthenticationChallenge(WebKit::DownloadProxy &,WebKit::AuthenticationChallengeProxy &)::$_0)::{lambda(void const*)#1}::__invoke(uint64_t a1)
{
  v2 = *(a1 + 40);
  *(a1 + 40) = 0;
  if (v2)
  {
    WTF::ThreadSafeRefCounted<WebKit::CompletionHandlerCallChecker,(WTF::DestructionThread)0>::deref(v2);
  }

  v3 = *(a1 + 32);
  *(a1 + 32) = 0;
  if (v3)
  {
    v4 = *(v3 + 8);

    CFRelease(v4);
  }
}

uint64_t WTF::BlockPtr<void ()(NSURLSessionAuthChallengeDisposition,NSURLCredential *)>::fromCallable<WebKit::LegacyDownloadClient::didReceiveAuthenticationChallenge(WebKit::DownloadProxy &,WebKit::AuthenticationChallengeProxy &)::$_0>(WebKit::LegacyDownloadClient::didReceiveAuthenticationChallenge(WebKit::DownloadProxy &,WebKit::AuthenticationChallengeProxy &)::$_0)::{lambda(void *,NSURLSessionAuthChallengeDisposition,NSURLCredential *)#1}::__invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = WebKit::CompletionHandlerCallChecker::completionHandlerHasBeenCalled(*(a1 + 40));
  if (result)
  {
    return result;
  }

  *(*(a1 + 40) + 24) = 1;
  if (a2 > 1)
  {
    if (a2 == 2 || a2 == 3)
    {
      goto LABEL_5;
    }

    return [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:{@"Invalid NSURLSessionAuthChallengeDisposition (%ld)", a2}];
  }

  if (!a2)
  {
    v9 = *(*(a1 + 32) + 472);
    if (a3)
    {
      MEMORY[0x19EB02B50](&v13, a3);
    }

    else
    {
      WebCore::CredentialBase::CredentialBase(&v13);
      v15 = 0;
    }

    v8 = v9;
    goto LABEL_14;
  }

  if (a2 != 1)
  {
    return [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:{@"Invalid NSURLSessionAuthChallengeDisposition (%ld)", a2}];
  }

LABEL_5:
  v7 = *(*(a1 + 32) + 472);
  WebCore::CredentialBase::CredentialBase(&v13);
  v15 = 0;
  v8 = v7;
LABEL_14:
  WebKit::AuthenticationDecisionListener::completeChallenge(v8);
  v11 = v15;
  v15 = 0;
  if (v11)
  {
  }

  v12 = v14;
  v14 = 0;
  if (v12 && atomic_fetch_add_explicit(v12, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v12, v10);
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

atomic_uint *WTF::BlockPtr<void ()(BOOL,NSString *)>::fromCallable<WebKit::LegacyDownloadClient::decideDestinationWithSuggestedFilename(WebKit::DownloadProxy &,WebCore::ResourceResponse const&,WTF::String const&,WTF::CompletionHandler<void ()(WebKit::AllowOverwrite,WTF::String)> &&)::$_0>(WebKit::LegacyDownloadClient::decideDestinationWithSuggestedFilename(WebKit::DownloadProxy &,WebCore::ResourceResponse const&,WTF::String const&,WTF::CompletionHandler<void ()(WebKit::AllowOverwrite,WTF::String)> &&)::$_0)::{lambda(void const*)#1}::__invoke(uint64_t a1)
{
  v2 = *(a1 + 40);
  *(a1 + 40) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  result = *(a1 + 32);
  *(a1 + 32) = 0;
  if (result)
  {

    return WTF::ThreadSafeRefCounted<WebKit::CompletionHandlerCallChecker,(WTF::DestructionThread)0>::deref(result);
  }

  return result;
}

uint64_t WTF::BlockPtr<void ()(BOOL,NSString *)>::fromCallable<WebKit::LegacyDownloadClient::decideDestinationWithSuggestedFilename(WebKit::DownloadProxy &,WebCore::ResourceResponse const&,WTF::String const&,WTF::CompletionHandler<void ()(WebKit::AllowOverwrite,WTF::String)> &&)::$_0>(WebKit::LegacyDownloadClient::decideDestinationWithSuggestedFilename(WebKit::DownloadProxy &,WebCore::ResourceResponse const&,WTF::String const&,WTF::CompletionHandler<void ()(WebKit::AllowOverwrite,WTF::String)> &&)::$_0)::{lambda(void *,BOOL,NSString *)#1}::__invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = WebKit::CompletionHandlerCallChecker::completionHandlerHasBeenCalled(*(a1 + 32));
  if ((result & 1) == 0)
  {
    *(*(a1 + 32) + 24) = 1;
    MEMORY[0x19EB02040](&v8, a3);
    WTF::CompletionHandler<void ()(WebKit::AllowOverwrite,WTF::String)>::operator()((a1 + 40), a2, &v8);
    result = v8;
    v8 = 0;
    if (result)
    {
      if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        return WTF::StringImpl::destroy(result, v7);
      }
    }
  }

  return result;
}

void sub_19DC18F2C(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, WTF::StringImpl *a10)
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

uint64_t WTF::BlockPtr<void ()(BOOL)>::fromCallable<WTF::CompletionHandler<void ()(BOOL)>>(WTF::CompletionHandler<void ()(BOOL)>)::{lambda(void const*)#1}::__invoke(uint64_t a1)
{
  result = *(a1 + 32);
  *(a1 + 32) = 0;
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t WTF::BlockPtr<void ()(BOOL)>::fromCallable<WebKit::requestAVCaptureAccessForType(WebKit::MediaPermissionType,WTF::CompletionHandler<void ()(BOOL)> &&)::$_0>(WebKit::requestAVCaptureAccessForType(WebKit::MediaPermissionType,WTF::CompletionHandler<void ()(BOOL)> &&)::$_0)::{lambda(void const*)#1}::__invoke(uint64_t a1)
{
  result = *(a1 + 32);
  *(a1 + 32) = 0;
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t WTF::BlockPtr<void ()(BOOL)>::fromCallable<WebKit::requestAVCaptureAccessForType(WebKit::MediaPermissionType,WTF::CompletionHandler<void ()(BOOL)> &&)::$_0>(WebKit::requestAVCaptureAccessForType(WebKit::MediaPermissionType,WTF::CompletionHandler<void ()(BOOL)> &&)::$_0)::{lambda(void *,BOOL)#1}::__invoke(uint64_t a1, char a2)
{
  v3 = *(a1 + 32);
  *(a1 + 32) = 0;
  v4 = WTF::fastMalloc(0x18);
  *v4 = &unk_1F10FF250;
  *(v4 + 8) = v3;
  *(v4 + 16) = a2;
  v6 = v4;
  WTF::callOnMainRunLoop();
  result = v6;
  if (v6)
  {
    return (*(*v6 + 8))(v6);
  }

  return result;
}

void sub_19DC19068(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (a10)
  {
    (*(*a10 + 8))(a10);
  }

  _Unwind_Resume(exception_object);
}

void *WTF::Detail::CallableWrapper<WebKit::requestAVCaptureAccessForType(WebKit::MediaPermissionType,WTF::CompletionHandler<void ()(BOOL)> &&)::$_0::operator()(BOOL)::{lambda(void)#1},void>::~CallableWrapper(void *a1)
{
  v2 = a1[1];
  *a1 = &unk_1F10FF250;
  a1[1] = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WebKit::requestAVCaptureAccessForType(WebKit::MediaPermissionType,WTF::CompletionHandler<void ()(BOOL)> &&)::$_0::operator()(BOOL)::{lambda(void)#1},void>::~CallableWrapper(WTF *this, void *a2)
{
  v3 = *(this + 1);
  *this = &unk_1F10FF250;
  *(this + 1) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  return WTF::fastFree(this, a2);
}

uint64_t WTF::BlockPtr<void ()(SFSpeechRecognizerAuthorizationStatus)>::fromCallable<WebKit::requestSpeechRecognitionAccess(WTF::CompletionHandler<void ()(BOOL)> &&)::$_0>(WebKit::requestSpeechRecognitionAccess(WTF::CompletionHandler<void ()(BOOL)> &&)::$_0)::{lambda(void const*)#1}::__invoke(uint64_t a1)
{
  result = *(a1 + 32);
  *(a1 + 32) = 0;
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t WTF::BlockPtr<void ()(SFSpeechRecognizerAuthorizationStatus)>::fromCallable<WebKit::requestSpeechRecognitionAccess(WTF::CompletionHandler<void ()(BOOL)> &&)::$_0>(WebKit::requestSpeechRecognitionAccess(WTF::CompletionHandler<void ()(BOOL)> &&)::$_0)::{lambda(void *,SFSpeechRecognizerAuthorizationStatus)#1}::__invoke(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);
  *(a1 + 32) = 0;
  v4 = WTF::fastMalloc(0x18);
  *v4 = &unk_1F10FF298;
  *(v4 + 8) = v3;
  *(v4 + 16) = a2 == 3;
  v6 = v4;
  WTF::callOnMainRunLoop();
  result = v6;
  if (v6)
  {
    return (*(*v6 + 8))(v6);
  }

  return result;
}

void sub_19DC192A4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (a10)
  {
    (*(*a10 + 8))(a10);
  }

  _Unwind_Resume(exception_object);
}

void *WTF::Detail::CallableWrapper<WebKit::requestSpeechRecognitionAccess(WTF::CompletionHandler<void ()(BOOL)> &&)::$_0::operator()(SFSpeechRecognizerAuthorizationStatus)::{lambda(void)#1},void>::~CallableWrapper(void *a1)
{
  v2 = a1[1];
  *a1 = &unk_1F10FF298;
  a1[1] = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WebKit::requestSpeechRecognitionAccess(WTF::CompletionHandler<void ()(BOOL)> &&)::$_0::operator()(SFSpeechRecognizerAuthorizationStatus)::{lambda(void)#1},void>::~CallableWrapper(WTF *this, void *a2)
{
  v3 = *(this + 1);
  *this = &unk_1F10FF298;
  *(this + 1) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  return WTF::fastFree(this, a2);
}

unsigned int *_ZZN3WTF8BlockPtrIFvDv3_fP7NSErrorEE12fromCallableIZN6WebKit22ModelElementController24getCameraForModelElementENS7_15ModelIdentifierEONS_17CompletionHandlerIFvNSt12experimental15fundamentals_v38expectedIN7WebCore22HTMLModelElementCameraENSE_13ResourceErrorEEEEEEE3__0EES5_T_ENUlPKvE_8__invokeESO_(uint64_t a1, void *a2)
{
  v3 = *(a1 + 40);
  *(a1 + 40) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  result = *(a1 + 32);
  *(a1 + 32) = 0;
  if (result && atomic_fetch_add(result, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, result);

    return WTF::fastFree(result, a2);
  }

  return result;
}

uint64_t _ZZN3WTF8BlockPtrIFvDv3_fP7NSErrorEE12fromCallableIZN6WebKit22ModelElementController24getCameraForModelElementENS7_15ModelIdentifierEONS_17CompletionHandlerIFvNSt12experimental15fundamentals_v38expectedIN7WebCore22HTMLModelElementCameraENSE_13ResourceErrorEEEEEEE3__0EES5_T_ENUlPvS1_S3_E_8__invokeESN_S1_S3_(uint64_t a1, uint64_t a2, __n128 a3)
{
  if (a2)
  {
    v4 = *(a1 + 32);
    v3 = *(a1 + 40);
    *(a1 + 32) = 0;
    *(a1 + 40) = 0;
    v5 = WTF::fastMalloc(0x18);
    v5->n128_u64[0] = &unk_1F10FF2E0;
    v5->n128_u64[1] = v4;
    v5[1].n128_u64[0] = v3;
  }

  else
  {
    v7 = *(a1 + 32);
    v6 = *(a1 + 40);
    *(a1 + 32) = 0;
    *(a1 + 40) = 0;
    v5 = WTF::fastMalloc(0x30);
    v5->n128_u64[0] = &unk_1F10FF308;
    v5[1] = a3;
    v5[2].n128_u64[0] = v7;
    v5[2].n128_u64[1] = v6;
  }

  v10 = v5;
  WTF::callOnMainRunLoop();
  result = v10;
  if (v10)
  {
    return (*(v10->n128_u64[0] + 8))(v10);
  }

  return result;
}

void sub_19DC19578(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  if (a12)
  {
    (*(*a12 + 8))(a12);
  }

  _Unwind_Resume(exception_object);
}

void *_ZN3WTF6Detail15CallableWrapperIZZN6WebKit22ModelElementController24getCameraForModelElementENS2_15ModelIdentifierEONS_17CompletionHandlerIFvNSt12experimental15fundamentals_v38expectedIN7WebCore22HTMLModelElementCameraENS9_13ResourceErrorEEEEEEEN3__0clEDv3_fP7NSErrorEUlvE_vJEED1Ev(void *a1, void *a2)
{
  *a1 = &unk_1F10FF2E0;
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

uint64_t _ZN3WTF6Detail15CallableWrapperIZZN6WebKit22ModelElementController24getCameraForModelElementENS2_15ModelIdentifierEONS_17CompletionHandlerIFvNSt12experimental15fundamentals_v38expectedIN7WebCore22HTMLModelElementCameraENS9_13ResourceErrorEEEEEEEN3__0clEDv3_fP7NSErrorEUlvE_vJEED0Ev(WTF *this, void *a2)
{
  *this = &unk_1F10FF2E0;
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

WTF::StringImpl *_ZN3WTF6Detail15CallableWrapperIZZN6WebKit22ModelElementController24getCameraForModelElementENS2_15ModelIdentifierEONS_17CompletionHandlerIFvNSt12experimental15fundamentals_v38expectedIN7WebCore22HTMLModelElementCameraENS9_13ResourceErrorEEEEEEEN3__0clEDv3_fP7NSErrorEUlvE_vJEE4callEv(WTF::StringImpl *result)
{
  v21[11] = *MEMORY[0x1E69E9840];
  v1 = *(result + 1);
  if (v1 && *(v1 + 8))
  {
    v2 = result;
    WebCore::ResourceErrorBase::ResourceErrorBase(&v12, 1);
    v15 = 0;
    v16 = 1;
    makeUnexpected<WebCore::ResourceError>(&v12, &v17);
    std::experimental::fundamentals_v3::expected<WebCore::HTMLModelElementCamera,WebCore::ResourceError>::expected(v21, &v17);
    WTF::CompletionHandler<void ()(std::experimental::fundamentals_v3::expected<WebCore::HTMLModelElementCamera,WebCore::ResourceError>)>::operator()(v2 + 2, v21);
    std::experimental::fundamentals_v3::expected<WTF::Seconds,WebCore::ResourceError>::~expected(v21, v3);
    v5 = v20;
    v20 = 0;
    if (v5)
    {
    }

    v6 = v19;
    v19 = 0;
    if (v6 && atomic_fetch_add_explicit(v6, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v6, v4);
    }

    v7 = v18;
    v18 = 0;
    if (v7 && atomic_fetch_add_explicit(v7, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v7, v4);
    }

    v8 = v17;
    v17 = 0;
    if (v8 && atomic_fetch_add_explicit(v8, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v8, v4);
    }

    v9 = v15;
    v15 = 0;
    if (v9)
    {
    }

    v10 = v14;
    v14 = 0;
    if (v10 && atomic_fetch_add_explicit(v10, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v10, v4);
    }

    v11 = v13;
    v13 = 0;
    if (v11 && atomic_fetch_add_explicit(v11, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v11, v4);
    }

    result = v12;
    v12 = 0;
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

void sub_19DC198F0(_Unwind_Exception *a1, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, WTF::StringImpl *a9, WTF::StringImpl *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, WTF::StringImpl *a15, uint64_t a16, void *a17, uint64_t a18, WTF::StringImpl *a19, WTF::StringImpl *a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, WTF::StringImpl *a25, uint64_t a26, void *a27)
{
  std::experimental::fundamentals_v3::expected<WTF::Seconds,WebCore::ResourceError>::~expected(v27 - 128, a2);
  if (a27)
  {
  }

  if (a25 && atomic_fetch_add_explicit(a25, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(a25, v29);
  }

  if (a20 && atomic_fetch_add_explicit(a20, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(a20, v29);
  }

  if (a19 && atomic_fetch_add_explicit(a19, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(a19, v29);
  }

  if (a17)
  {
  }

  if (a15 && atomic_fetch_add_explicit(a15, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(a15, v29);
  }

  if (a10 && atomic_fetch_add_explicit(a10, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(a10, v29);
  }

  if (a9)
  {
    if (atomic_fetch_add_explicit(a9, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(a9, v29);
    }
  }

  _Unwind_Resume(a1);
}

void *_ZN3WTF6Detail15CallableWrapperIZZN6WebKit22ModelElementController24getCameraForModelElementENS2_15ModelIdentifierEONS_17CompletionHandlerIFvNSt12experimental15fundamentals_v38expectedIN7WebCore22HTMLModelElementCameraENS9_13ResourceErrorEEEEEEEN3__0clEDv3_fP7NSErrorEUlvE0_vJEED1Ev(void *a1, void *a2)
{
  *a1 = &unk_1F10FF308;
  v3 = a1[5];
  a1[5] = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  v4 = a1[4];
  a1[4] = 0;
  if (v4 && atomic_fetch_add(v4, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v4);
    WTF::fastFree(v4, a2);
  }

  return a1;
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZZN6WebKit22ModelElementController24getCameraForModelElementENS2_15ModelIdentifierEONS_17CompletionHandlerIFvNSt12experimental15fundamentals_v38expectedIN7WebCore22HTMLModelElementCameraENS9_13ResourceErrorEEEEEEEN3__0clEDv3_fP7NSErrorEUlvE0_vJEED0Ev(WTF *this, void *a2)
{
  *this = &unk_1F10FF308;
  v3 = *(this + 5);
  *(this + 5) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  v4 = *(this + 4);
  *(this + 4) = 0;
  if (v4 && atomic_fetch_add(v4, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v4);
    WTF::fastFree(v4, a2);
  }

  return WTF::fastFree(this, a2);
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZZN6WebKit22ModelElementController24getCameraForModelElementENS2_15ModelIdentifierEONS_17CompletionHandlerIFvNSt12experimental15fundamentals_v38expectedIN7WebCore22HTMLModelElementCameraENS9_13ResourceErrorEEEEEEEN3__0clEDv3_fP7NSErrorEUlvE0_vJEE4callEv(uint64_t result)
{
  v7 = *MEMORY[0x1E69E9840];
  v1 = *(result + 32);
  if (v1)
  {
    if (*(v1 + 8))
    {
      v2 = COERCE_FLOAT(*(result + 24));
      v4 = vcvtq_f64_f32(*(result + 16));
      v5 = v2;
      v6 = 0;
      WTF::CompletionHandler<void ()(std::experimental::fundamentals_v3::expected<WebCore::HTMLModelElementCamera,WebCore::ResourceError>)>::operator()((result + 40), &v4);
      return std::experimental::fundamentals_v3::expected<WTF::Seconds,WebCore::ResourceError>::~expected(&v4, v3);
    }
  }

  return result;
}

unsigned int *WTF::BlockPtr<void ()(BOOL,NSError *)>::fromCallable<WebKit::ModelElementController::setAnimationIsPlayingForModelElement(WebKit::ModelIdentifier,BOOL,WTF::CompletionHandler<void ()(BOOL)> &&)::$_0>(WebKit::ModelElementController::setAnimationIsPlayingForModelElement(WebKit::ModelIdentifier,BOOL,WTF::CompletionHandler<void ()(BOOL)> &&)::$_0)::{lambda(void const*)#1}::__invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 40);
  *(a1 + 40) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  result = *(a1 + 32);
  *(a1 + 32) = 0;
  if (result && atomic_fetch_add(result, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, result);

    return WTF::fastFree(result, a2);
  }

  return result;
}

uint64_t WTF::BlockPtr<void ()(BOOL,NSError *)>::fromCallable<WebKit::ModelElementController::setAnimationIsPlayingForModelElement(WebKit::ModelIdentifier,BOOL,WTF::CompletionHandler<void ()(BOOL)> &&)::$_0>(WebKit::ModelElementController::setAnimationIsPlayingForModelElement(WebKit::ModelIdentifier,BOOL,WTF::CompletionHandler<void ()(BOOL)> &&)::$_0)::{lambda(void *,BOOL,NSError *)#1}::__invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  v6 = WTF::fastMalloc(0x20);
  *v6 = &unk_1F10FF350;
  *(v6 + 8) = a3 == 0;
  *(v6 + 16) = v4;
  *(v6 + 24) = v5;
  v8 = v6;
  WTF::callOnMainRunLoop();
  result = v8;
  if (v8)
  {
    return (*(*v8 + 8))(v8);
  }

  return result;
}

void sub_19DC19D20(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (a10)
  {
    (*(*a10 + 8))(a10);
  }

  _Unwind_Resume(exception_object);
}

void *WTF::Detail::CallableWrapper<WebKit::ModelElementController::setAnimationIsPlayingForModelElement(WebKit::ModelIdentifier,BOOL,WTF::CompletionHandler<void ()(BOOL)> &&)::$_0::operator()(BOOL,NSError *)::{lambda(void)#1},void>::~CallableWrapper(void *a1, void *a2)
{
  *a1 = &unk_1F10FF350;
  v3 = a1[3];
  a1[3] = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  v4 = a1[2];
  a1[2] = 0;
  if (v4 && atomic_fetch_add(v4, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v4);
    WTF::fastFree(v4, a2);
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WebKit::ModelElementController::setAnimationIsPlayingForModelElement(WebKit::ModelIdentifier,BOOL,WTF::CompletionHandler<void ()(BOOL)> &&)::$_0::operator()(BOOL,NSError *)::{lambda(void)#1},void>::~CallableWrapper(WTF *this, void *a2)
{
  *this = &unk_1F10FF350;
  v3 = *(this + 3);
  *(this + 3) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  v4 = *(this + 2);
  *(this + 2) = 0;
  if (v4 && atomic_fetch_add(v4, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v4);
    WTF::fastFree(v4, a2);
  }

  return WTF::fastFree(this, a2);
}

uint64_t *WTF::Detail::CallableWrapper<WebKit::ModelElementController::setAnimationIsPlayingForModelElement(WebKit::ModelIdentifier,BOOL,WTF::CompletionHandler<void ()(BOOL)> &&)::$_0::operator()(BOOL,NSError *)::{lambda(void)#1},void>::call(uint64_t *result)
{
  v1 = result[2];
  if (v1)
  {
    if (*(v1 + 8))
    {
      return WTF::CompletionHandler<void ()(BOOL)>::operator()((result + 3), *(result + 8));
    }
  }

  return result;
}

void WTF::HashTable<WTF::ObjectIdentifierGeneric<WebKit::LegacyCustomProtocolIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::LegacyCustomProtocolIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::RetainPtr<WKCustomProtocolLoader>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::LegacyCustomProtocolIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::RetainPtr<WKCustomProtocolLoader>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::LegacyCustomProtocolIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::LegacyCustomProtocolIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::RetainPtr<WKCustomProtocolLoader>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::LegacyCustomProtocolIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::LegacyCustomProtocolIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::RetainPtr<WKCustomProtocolLoader>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::LegacyCustomProtocolIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::remove(uint64_t *a1, void *a2)
{
  v3 = a2[1];
  *a2 = -1;
  a2[1] = 0;
  if (v3)
  {
  }

  v4 = *a1;
  v5 = vadd_s32(*(*a1 - 16), 0xFFFFFFFF00000001);
  *(v4 - 16) = v5;
  v6 = *(v4 - 4);
  if (6 * v5.i32[1] < v6 && v6 >= 9)
  {

    WTF::HashTable<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::RetainPtr<objc_object *>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::RetainPtr<objc_object *>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::RetainPtr<objc_object *>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::RetainPtr<objc_object *>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::rehash(a1, v6 >> 1);
  }
}

uint64_t WTF::HashTable<WTF::ObjectIdentifierGeneric<WebKit::LegacyCustomProtocolIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::LegacyCustomProtocolIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::RetainPtr<WKCustomProtocolLoader>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::LegacyCustomProtocolIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::RetainPtr<WKCustomProtocolLoader>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::LegacyCustomProtocolIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::LegacyCustomProtocolIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::RetainPtr<WKCustomProtocolLoader>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::LegacyCustomProtocolIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::LegacyCustomProtocolIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::RetainPtr<WKCustomProtocolLoader>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::LegacyCustomProtocolIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::find<WTF::IdentityHashTranslator<WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::LegacyCustomProtocolIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::RetainPtr<WKCustomProtocolLoader>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::LegacyCustomProtocolIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::LegacyCustomProtocolIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::RetainPtr<WKCustomProtocolLoader>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::LegacyCustomProtocolIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,(WTF::ShouldValidateKey)1,WTF::ObjectIdentifierGeneric<WebKit::LegacyCustomProtocolIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>(uint64_t result, uint64_t a2)
{
  if (result)
  {
    if (a2 == -1 || !a2)
    {
      __break(0xC471u);
      JUMPOUT(0x19DC1A054);
    }

    v2 = *(result - 8);
    v3 = (~(a2 << 32) + a2) ^ ((~(a2 << 32) + a2) >> 22);
    v4 = 9 * ((v3 + ~(v3 << 13)) ^ ((v3 + ~(v3 << 13)) >> 8));
    v5 = (v4 ^ (v4 >> 15)) + ~((v4 ^ (v4 >> 15)) << 27);
    v6 = v2 & ((v5 >> 31) ^ v5);
    v7 = *(result + 16 * v6);
    if (v7 == a2)
    {
LABEL_8:
      result += 16 * v6;
    }

    else
    {
      v8 = 1;
      while (v7)
      {
        v6 = (v6 + v8) & v2;
        v7 = *(result + 16 * v6);
        ++v8;
        if (v7 == a2)
        {
          goto LABEL_8;
        }
      }

      result += 16 * *(result - 4);
    }
  }

  return result;
}

uint64_t std::__call_once_proxy[abi:sn200100]<std::tuple<WebKit::checkUsageDescriptionStringForType(WebKit::MediaPermissionType)::$_0 &&>>()
{
  result = [WTF::dynamic_objc_cast<NSString>(objc_msgSend(objc_msgSend(objc_msgSend(MEMORY[0x1E696AAE8] "mainBundle")];
  _MergedGlobals_71 = result != 0;
  return result;
}

uint64_t std::__call_once_proxy[abi:sn200100]<std::tuple<WebKit::checkUsageDescriptionStringForType(WebKit::MediaPermissionType)::$_1 &&>>()
{
  result = [WTF::dynamic_objc_cast<NSString>(objc_msgSend(objc_msgSend(objc_msgSend(MEMORY[0x1E696AAE8] "mainBundle")];
  byte_1ED642549 = result != 0;
  return result;
}

uint64_t WTF::Function<void ()(std::experimental::fundamentals_v3::expected<WebCore::HTMLModelElementCamera,WebCore::ResourceError>)>::operator()(uint64_t *a1, uint64_t *a2)
{
  v5[11] = *MEMORY[0x1E69E9840];
  v2 = *a1;
  mpark::detail::move_constructor<mpark::detail::traits<WebCore::HTMLModelElementCamera,WebCore::ResourceError>,(mpark::detail::Trait)1>::move_constructor(v5, a2);
  (*(*v2 + 16))(v2, v5);
  return std::experimental::fundamentals_v3::expected<WTF::Seconds,WebCore::ResourceError>::~expected(v5, v3);
}

uint64_t mpark::detail::move_constructor<mpark::detail::traits<WebCore::HTMLModelElementCamera,WebCore::ResourceError>,(mpark::detail::Trait)1>::move_constructor(uint64_t a1, uint64_t *a2)
{
  *a1 = 0;
  *(a1 + 80) = -1;
  if (*(a2 + 80) != 255)
  {
    if (*(a2 + 80))
    {
      v5 = *a2;
      *a2 = 0;
      *a1 = v5;
      WTF::URL::URL(a1 + 8, a2 + 1);
      v6 = a2[6];
      a2[6] = 0;
      *(a1 + 48) = v6;
      LODWORD(v6) = *(a2 + 14);
      *(a1 + 60) = *(a2 + 30);
      *(a1 + 56) = v6;
      v7 = a2[8];
      a2[8] = 0;
      *(a1 + 64) = v7;
      *(a1 + 72) = *(a2 + 72);
    }

    else
    {
      v4 = *a2;
      *(a1 + 16) = a2[2];
      *a1 = v4;
    }

    *(a1 + 80) = *(a2 + 80);
  }

  return a1;
}

void sub_19DC1A25C(_Unwind_Exception *a1, WTF::StringImpl *a2)
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

  std::experimental::fundamentals_v3::expected<WTF::Seconds,WebCore::ResourceError>::~expected(v2, a2);
  _Unwind_Resume(a1);
}

uint64_t WTF::Function<void ()(std::experimental::fundamentals_v3::expected<BOOL,WebCore::ResourceError>)>::operator()(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  mpark::detail::move_constructor<mpark::detail::traits<BOOL,WebCore::ResourceError>,(mpark::detail::Trait)1>::move_constructor(v5, a2);
  (*(*v2 + 16))(v2, v5);
  return std::experimental::fundamentals_v3::expected<WTF::Seconds,WebCore::ResourceError>::~expected(v5, v3);
}

void sub_19DC1A2F4(_Unwind_Exception *a1, WTF::StringImpl *a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::experimental::fundamentals_v3::expected<WTF::Seconds,WebCore::ResourceError>::~expected(va, a2);
  _Unwind_Resume(a1);
}

uint64_t mpark::detail::move_constructor<mpark::detail::traits<BOOL,WebCore::ResourceError>,(mpark::detail::Trait)1>::move_constructor(uint64_t a1, uint64_t *a2)
{
  *a1 = 0;
  *(a1 + 80) = -1;
  LODWORD(v3) = *(a2 + 80);
  if (v3 != 255)
  {
    if (*(a2 + 80))
    {
      v5 = *a2;
      *a2 = 0;
      *a1 = v5;
      WTF::URL::URL(a1 + 8, a2 + 1);
      v6 = a2[6];
      a2[6] = 0;
      *(a1 + 48) = v6;
      LODWORD(v6) = *(a2 + 14);
      *(a1 + 60) = *(a2 + 30);
      *(a1 + 56) = v6;
      v3 = a2[8];
      a2[8] = 0;
      *(a1 + 64) = v3;
      *(a1 + 72) = *(a2 + 72);
      LOBYTE(v3) = *(a2 + 80);
    }

    else
    {
      *a1 = *a2;
    }

    *(a1 + 80) = v3;
  }

  return a1;
}

void sub_19DC1A3A8(_Unwind_Exception *a1, WTF::StringImpl *a2)
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

  std::experimental::fundamentals_v3::expected<WTF::Seconds,WebCore::ResourceError>::~expected(v2, a2);
  _Unwind_Resume(a1);
}

uint64_t WTF::Function<void ()(std::experimental::fundamentals_v3::expected<WTF::Seconds,WebCore::ResourceError>)>::operator()(uint64_t *a1, uint64_t *a2)
{
  v5[11] = *MEMORY[0x1E69E9840];
  v2 = *a1;
  mpark::detail::move_constructor<mpark::detail::traits<WTF::Seconds,WebCore::ResourceError>,(mpark::detail::Trait)1>::move_constructor(v5, a2);
  (*(*v2 + 16))(v2, v5);
  return std::experimental::fundamentals_v3::expected<WTF::Seconds,WebCore::ResourceError>::~expected(v5, v3);
}

uint64_t mpark::detail::move_constructor<mpark::detail::traits<WTF::Seconds,WebCore::ResourceError>,(mpark::detail::Trait)1>::move_constructor(uint64_t a1, uint64_t *a2)
{
  *a1 = 0;
  *(a1 + 80) = -1;
  LODWORD(v3) = *(a2 + 80);
  if (v3 != 255)
  {
    if (*(a2 + 80))
    {
      v5 = *a2;
      *a2 = 0;
      *a1 = v5;
      WTF::URL::URL(a1 + 8, a2 + 1);
      v6 = a2[6];
      a2[6] = 0;
      *(a1 + 48) = v6;
      LODWORD(v6) = *(a2 + 14);
      *(a1 + 60) = *(a2 + 30);
      *(a1 + 56) = v6;
      v3 = a2[8];
      a2[8] = 0;
      *(a1 + 64) = v3;
      *(a1 + 72) = *(a2 + 72);
      LOBYTE(v3) = *(a2 + 80);
    }

    else
    {
      *a1 = *a2;
    }

    *(a1 + 80) = v3;
  }

  return a1;
}

void sub_19DC1A528(_Unwind_Exception *a1, WTF::StringImpl *a2)
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

  std::experimental::fundamentals_v3::expected<WTF::Seconds,WebCore::ResourceError>::~expected(v2, a2);
  _Unwind_Resume(a1);
}

uint64_t WebKit::BackgroundFetchLoad::BackgroundFetchLoad(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, WebCore::ResourceRequest *a5, WTF::StringImpl *a6, uint64_t a7)
{
  *(a1 + 8) = 1;
  *(a1 + 24) = 0;
  v13 = (a1 + 24);
  *a1 = &unk_1F10FF3B0;
  v67 = a1 + 16;
  *(a1 + 16) = &unk_1F10FF438;
  *(a1 + 32) = a3;
  if (!*(a4 + 8))
  {
    v15 = WTF::fastCompactMalloc(0x10);
    *v15 = 1;
    *(v15 + 8) = a4;
    v16 = *(a4 + 8);
    *(a4 + 8) = v15;
    if (v16)
    {
      if (atomic_fetch_add(v16, 0xFFFFFFFF) == 1)
      {
        atomic_store(1u, v16);
        WTF::fastFree(v16, v14);
      }
    }
  }

  v17 = *(a4 + 8);
  atomic_fetch_add(v17, 1u);
  *(a1 + 40) = v17;
  WebCore::ResourceRequest::ResourceRequest((a1 + 48), a5);
  *(a1 + 248) = 0;
  LODWORD(v68) = *(a5 + 52);
  *(&v68 + 3) = *(a5 + 211);
  v18 = *(a5 + 27);
  if (v18)
  {
    atomic_fetch_add_explicit(v18, 2u, memory_order_relaxed);
  }

  v69 = v18;
  v19 = *(a5 + 15);
  v70 = *(a5 + 14);
  v71 = v19;
  v20 = *(a1 + 32);
  WTF::Vector<WebCore::HTTPHeaderMap::CommonHeader,0ul,WTF::CrashOnOverflow,6ul,WTF::FastMalloc>::Vector(v89, a5 + 264);
  WTF::Vector<WebCore::HTTPHeaderMap::UncommonHeader,0ul,WTF::CrashOnOverflow,0ul,WTF::FastMalloc>::Vector(v90, a5 + 280);
  v21 = WebCore::ResourceRequestBase::url((a1 + 48));
  v22 = *v21;
  if (*v21)
  {
    atomic_fetch_add_explicit(v22, 2u, memory_order_relaxed);
  }

  v75 = v22;
  v23 = *(v21 + 24);
  *v76 = *(v21 + 8);
  *&v76[16] = v23;
  v88[0] = 0;
  WTF::URL::invalidate(v88);
  WebCore::SecurityOriginData::securityOrigin(&v86, (a7 + 32));
  v24 = v86;
  v86 = 0;
  v87 = v24;
  WebCore::SecurityOriginData::securityOrigin(&v84, a7);
  v26 = v84;
  v84 = 0;
  v85 = v26;
  v83 = 0;
  v27 = *(a5 + 37);
  if (v27)
  {
    atomic_fetch_add_explicit(v27, 2u, memory_order_relaxed);
  }

  v82 = v27;
  v28 = WebKit::NetworkLoadChecker::operator new(0x4A0, v25);
  *(a1 + 256) = WebKit::NetworkLoadChecker::NetworkLoadChecker(v28, a2, 0, 0, &v68, v20, 0, 0, v89, &v75, v88, &v87, &v85, &v83, 0, &v82, 1, v66, 0, 0, 0, 1);
  v30 = v82;
  if (v82 && atomic_fetch_add_explicit(v82, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v30, v29);
  }

  if (v83)
  {
    WTF::ThreadSafeRefCounted<WebCore::SecurityOrigin,(WTF::DestructionThread)0>::deref(v83, v29);
  }

  if (v85)
  {
    WTF::ThreadSafeRefCounted<WebCore::SecurityOrigin,(WTF::DestructionThread)0>::deref(v85, v29);
  }

  v31 = v84;
  v84 = 0;
  if (v31)
  {
    WTF::ThreadSafeRefCounted<WebCore::SecurityOrigin,(WTF::DestructionThread)0>::deref(v31, v29);
  }

  if (v87)
  {
    WTF::ThreadSafeRefCounted<WebCore::SecurityOrigin,(WTF::DestructionThread)0>::deref(v87, v29);
  }

  v32 = v86;
  v86 = 0;
  if (v32)
  {
    WTF::ThreadSafeRefCounted<WebCore::SecurityOrigin,(WTF::DestructionThread)0>::deref(v32, v29);
  }

  v33 = v88[0];
  v88[0] = 0;
  if (v33 && atomic_fetch_add_explicit(v33, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v33, v29);
  }

  v34 = v75;
  v75 = 0;
  if (v34 && atomic_fetch_add_explicit(v34, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v34, v29);
  }

  WTF::Vector<WebCore::HTTPHeaderMap::UncommonHeader,0ul,WTF::CrashOnOverflow,0ul,WTF::FastMalloc>::~Vector(v90, v29);
  WTF::Vector<WebCore::HTTPHeaderMap::CommonHeader,0ul,WTF::CrashOnOverflow,6ul,WTF::FastMalloc>::~Vector(v89, v35);
  v37 = v69;
  if (v69 && atomic_fetch_add_explicit(v69, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v37, v36);
  }

  *(a1 + 264) = 0;
  *(a1 + 272) = 0;
  result = WebCore::ResourceRequestBase::url((a1 + 48));
  if ((*(result + 8) & 2) == 0)
  {
    v39 = WebCore::ResourceRequestBase::url((a1 + 48));
    WTF::StringImpl::createWithoutCopyingNonEmpty();
    v40 = v68;
    v75 = 0;
    v41 = *v39;
    if (*v39)
    {
      atomic_fetch_add_explicit(v41, 2u, memory_order_relaxed);
    }

    *v76 = v41;
    v42 = *(v39 + 24);
    *&v76[8] = *(v39 + 8);
    *&v76[24] = v42;
    if (v40)
    {
      atomic_fetch_add_explicit(v40, 2u, memory_order_relaxed);
    }

    v77 = v40;
    v78 = 0;
    v79 = 3;
    v80 = 0;
    v81 = 1;
    WebCore::ResourceResponseBase::ResourceResponseBase(&v68);
    cf = 0;
    v74 = 0;
    v72 = v72 & 0xF1 | 4;
    WebKit::BackgroundFetchLoad::didFinish(*(a1 + 40), &v75);
    v44 = cf;
    cf = 0;
    if (v44)
    {
      CFRelease(v44);
    }

    WebCore::ResourceResponseBase::~ResourceResponseBase(&v68, v43);
    v46 = v80;
    v80 = 0;
    if (v46)
    {
      CFRelease(v46);
    }

    v47 = v77;
    v77 = 0;
    if (v47 && atomic_fetch_add_explicit(v47, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v47, v45);
    }

    v48 = *v76;
    *v76 = 0;
    if (v48 && atomic_fetch_add_explicit(v48, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v48, v45);
    }

    v49 = v75;
    v75 = 0;
    if (v49 && atomic_fetch_add_explicit(v49, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v49, v45);
      if (v40)
      {
LABEL_51:
        if (atomic_fetch_add_explicit(v40, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v40, v45);
        }
      }
    }

    else if (v40)
    {
      goto LABEL_51;
    }

    return a1;
  }

  if (!a6)
  {
LABEL_67:
    v62 = *(a1 + 256);
    *(v62 + 528) = 1;
    if ((*(a5 + 324) & 1) == 0)
    {
      WTF::Vector<std::pair<WTF::String,WebCore::ContentSecurityPolicyHeaderType>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::Vector(&v68, a5 + 38);
      LODWORD(v70) = *(a5 + 80);
      BYTE4(v70) = *(a5 + 324);
      std::optional<WebCore::ContentSecurityPolicyResponseHeaders>::operator=[abi:sn200100]<WebCore::ContentSecurityPolicyResponseHeaders,void>(v62 + 264, &v68);
      WTF::Vector<std::pair<WTF::String,WebCore::ContentSecurityPolicyHeaderType>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v68, v63);
      v62 = *(a1 + 256);
    }

    WebCore::ResourceRequest::ResourceRequest(&v68, (a1 + 48));
    WTF::WeakPtrFactory<WebPushD::PushServiceConnection,WTF::DefaultWeakPtrImpl>::initializeIfNeeded(v13, v67);
    v64 = *(a1 + 24);
    atomic_fetch_add(v64, 1u);
    atomic_fetch_add((a2 + 144), 1u);
    v65 = WTF::fastMalloc(0x20);
    *v65 = &unk_1F10FF790;
    *(v65 + 1) = a1;
    *(v65 + 2) = v64;
    *(v65 + 3) = a2;
    v75 = v65;
    WebKit::NetworkLoadChecker::check(v62, &v68, 0, &v75);
    if (v75)
    {
      (*(*v75 + 8))(v75);
    }

    WebCore::ResourceRequest::~ResourceRequest(&v68);
    return a1;
  }

  v50 = 0;
  v51 = a6;
  do
  {
    ++v50;
    v52 = v51 > 9;
    v51 /= 0xAuLL;
  }

  while (v52);
  if ((v50 & 0x80000000) == 0)
  {
    v53 = __OFADD__(v50, 1);
    v54 = v50 + 1;
    if (!v53)
    {
      v55 = (v54 + 6);
      if (!__OFADD__(v54, 6))
      {
        result = WTF::tryFastCompactMalloc((v55 + 20));
        v56 = v68;
        if (v68)
        {
          *v68 = 2;
          *(v56 + 1) = v55;
          *(v56 + 1) = v56 + 20;
          *(v56 + 2) = 0x6574796200000004;
          *(v56 + 12) = 15731;
          v57 = v55 - 6;
          v68 = a6;
          result = WTF::StringTypeAdapter<unsigned long long,void>::writeTo<unsigned char>(&v68, v56 + 26, v55 - 6);
          LODWORD(v58) = 0;
          v59 = v68;
          do
          {
            v58 = (v58 + 1);
            v52 = v59 > 9;
            v59 /= 0xAuLL;
          }

          while (v52);
          if (v57 >= v58 && v57 != v58)
          {
            *(v56 + v58 + 26) = 45;
            v68 = v56;
            WebCore::ResourceRequestBase::setHTTPHeaderField();
            v61 = v68;
            v68 = 0;
            if (v61 && atomic_fetch_add_explicit(v61, 0xFFFFFFFE, memory_order_relaxed) == 2)
            {
              WTF::StringImpl::destroy(v61, v60);
            }

            goto LABEL_67;
          }

          __break(1u);
        }
      }
    }
  }

  __break(0xC471u);
  return result;
}

uint64_t WebKit::BackgroundFetchLoad::didFinish(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v3 = *(a1 + 8);
    if (v3)
    {
      (**v3)(*(a1 + 8));
    }
  }

  else
  {
    v3 = 0;
  }

  (*(*v3 + 56))(v3, a2);
  v4 = *(*v3 + 8);

  return v4(v3);
}

void WebKit::BackgroundFetchLoad::~BackgroundFetchLoad(WebKit::BackgroundFetchLoad *this, void *a2)
{
  WebKit::BackgroundFetchLoad::abort(this, a2);
  WTF::Vector<WTF::RefPtr<WebCore::BlobDataFileReference,WTF::RawPtrTraits<WebCore::BlobDataFileReference>,WTF::DefaultRefDerefTraits<WebCore::BlobDataFileReference>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(this + 264, v3);
  v5 = *(this + 32);
  *(this + 32) = 0;
  if (v5)
  {
    WTF::RefCounted<WebKit::NetworkLoadChecker>::deref((v5 + 8), v4);
  }

  v6 = *(this + 31);
  *(this + 31) = 0;
  if (v6)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::NetworkDataTask,(WTF::DestructionThread)1>::deref((v6 + 8));
  }

  WebCore::ResourceRequest::~ResourceRequest((this + 48));
  v8 = *(this + 5);
  *(this + 5) = 0;
  if (v8 && atomic_fetch_add(v8, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v8);
    WTF::fastFree(v8, v7);
  }

  WTF::WeakPtrFactory<WebPushD::PushServiceConnection,WTF::DefaultWeakPtrImpl>::~WeakPtrFactory(this + 3, v7);
  if (*(this + 2) != 1)
  {
    __break(0xC471u);
  }
}

{
  WebKit::BackgroundFetchLoad::~BackgroundFetchLoad(this, a2);

  bmalloc::api::tzoneFree(v2, v3);
}

atomic_ullong *WebKit::BackgroundFetchLoad::abort(atomic_ullong *this, void *a2)
{
  v2 = this[31];
  if (v2)
  {
    v3 = this;
    v4 = v2 + 1;
    while (1)
    {
      v5 = *v4;
      if ((*v4 & 1) == 0)
      {
        break;
      }

      v6 = *v4;
      atomic_compare_exchange_strong_explicit(v4, &v6, v5 + 2, memory_order_relaxed, memory_order_relaxed);
      if (v6 == v5)
      {
        goto LABEL_7;
      }
    }

    WTF::ThreadSafeWeakPtrControlBlock::strongRef(*v4);
LABEL_7:
    v7 = v2[3];
    v2[3] = 0;
    if (v7 && atomic_fetch_add(v7, 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, v7);
      WTF::fastFree(v7, a2);
    }

    (*(*v2 + 16))(v2);
    v8 = v3[31];
    v3[31] = 0;
    if (v8)
    {
      WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::NetworkDataTask,(WTF::DestructionThread)1>::deref((v8 + 8));
    }

    return WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::NetworkDataTask,(WTF::DestructionThread)1>::deref(v2 + 1);
  }

  return this;
}

void non-virtual thunk toWebKit::BackgroundFetchLoad::~BackgroundFetchLoad(WebKit::BackgroundFetchLoad *this, void *a2)
{
  WebKit::BackgroundFetchLoad::~BackgroundFetchLoad((this - 16), a2);
}

{
  WebKit::BackgroundFetchLoad::~BackgroundFetchLoad((this - 16), a2);

  bmalloc::api::tzoneFree(v2, v3);
}

void WebKit::BackgroundFetchLoad::willPerformHTTPRedirection(uint64_t a1, WebCore::ResourceResponse *a2, uint64_t a3, uint64_t *a4)
{
  v8 = *(a1 + 256);
  WebCore::ResourceRequest::ResourceRequest(v14);
  WTF::WeakPtrFactory<WebPushD::PushServiceConnection,WTF::DefaultWeakPtrImpl>::initializeIfNeeded((a1 + 24), a1 + 16);
  v9 = *(a1 + 24);
  atomic_fetch_add(v9, 1u);
  v10 = *a4;
  *a4 = 0;
  v11 = WTF::fastMalloc(0x18);
  *v11 = &unk_1F10FF7B8;
  *(v11 + 1) = v9;
  *(v11 + 2) = v10;
  v13 = v11;
  WebKit::NetworkLoadChecker::checkRedirection(v8, v14, a3, a2, 0, &v13);
  v12 = v13;
  v13 = 0;
  if (v12)
  {
    (*(*v12 + 8))(v12);
  }

  WebCore::ResourceRequest::~ResourceRequest(v14);
}

WTF::StringImpl *WebKit::BackgroundFetchLoad::didReceiveChallenge(uint64_t a1, WebCore::AuthenticationChallengeBase *a2, char a3, uint64_t *a4)
{
  v44 = *MEMORY[0x1E69E9840];
  v8 = qword_1ED6416F0;
  if (os_log_type_enabled(qword_1ED6416F0, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(buf) = 134217984;
    *(&buf + 4) = a1;
    _os_log_impl(&dword_19D52D000, v8, OS_LOG_TYPE_DEFAULT, "%p - BackgroundFetchLoad::didReceiveChallenge", &buf, 0xCu);
  }

  if (*(WebCore::AuthenticationChallengeBase::protectionSpace(a2) + 21) == 8)
  {
    v9 = *(a1 + 256);
    v11 = *(v9 + 8);
    v10 = v9 + 8;
    *v10 = v11 + 1;
    v12 = *(v10 + 72);
    atomic_fetch_add(v12 + 36, 1u);
    WebKit::NetworkProcess::protectedAuthenticationManager(v12, &buf);
    v13 = buf;
    WebKit::AuthenticationManager::didReceiveAuthenticationChallenge(buf, *(a1 + 32), 0, 0, 0, a2, a3, a4);
    *&buf = 0;
    if (v13)
    {
      WebKit::AuthenticationManager::deref(v13);
    }

    if (v12)
    {
      if (atomic_fetch_add(v12 + 36, 0xFFFFFFFF) == 1)
      {
        atomic_store(1u, v12 + 36);
        (*(*v12 + 24))(v12);
      }
    }

    return WTF::RefCounted<WebKit::NetworkLoadChecker>::deref(v10, v14);
  }

  WTF::WeakPtrFactory<WebPushD::PushServiceConnection,WTF::DefaultWeakPtrImpl>::initializeIfNeeded((a1 + 24), a1 + 16);
  v16 = *(a1 + 24);
  atomic_fetch_add(v16, 1u);
  WebCore::CredentialBase::CredentialBase(&buf);
  v40 = 0;
  v17 = *a4;
  *a4 = 0;
  (*(*v17 + 16))(v17, 2, &buf);
  (*(*v17 + 8))(v17);
  v19 = v40;
  v40 = 0;
  if (v19)
  {
    CFRelease(v19);
  }

  v20 = *(&buf + 1);
  *(&buf + 1) = 0;
  if (v20 && atomic_fetch_add_explicit(v20, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v20, v18);
  }

  result = buf;
  *&buf = 0;
  if (result && atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    result = WTF::StringImpl::destroy(result, v18);
    if (!v16)
    {
      return result;
    }
  }

  else if (!v16)
  {
    return result;
  }

  if (*(v16 + 8))
  {
    v21 = *(a1 + 256);
    WTF::StringImpl::createWithoutCopyingNonEmpty();
    v22 = buf;
    v30 = 0;
    v23 = *(v21 + 160);
    if (v23)
    {
      atomic_fetch_add_explicit(v23, 2u, memory_order_relaxed);
    }

    v31 = v23;
    v24 = *(v21 + 184);
    v32 = *(v21 + 168);
    v33 = v24;
    if (v22)
    {
      atomic_fetch_add_explicit(v22, 2u, memory_order_relaxed);
    }

    v34 = v22;
    v35 = 0;
    v36 = 2;
    v37 = 0;
    v38 = 1;
    WebCore::ResourceResponseBase::ResourceResponseBase(&buf);
    cf = 0;
    v43 = 0;
    v41 = v41 & 0xF1 | 4;
    WebKit::BackgroundFetchLoad::didFinish(*(a1 + 40), &v30);
    v26 = cf;
    cf = 0;
    if (v26)
    {
      CFRelease(v26);
    }

    WebCore::ResourceResponseBase::~ResourceResponseBase(&buf, v25);
    v27 = v37;
    v37 = 0;
    if (v27)
    {
      CFRelease(v27);
    }

    v28 = v34;
    v34 = 0;
    if (v28 && atomic_fetch_add_explicit(v28, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v28, v18);
    }

    v29 = v31;
    v31 = 0;
    if (v29 && atomic_fetch_add_explicit(v29, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v29, v18);
    }

    result = v30;
    v30 = 0;
    if (result && atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      result = WTF::StringImpl::destroy(result, v18);
      if (v22)
      {
LABEL_36:
        if (atomic_fetch_add_explicit(v22, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          result = WTF::StringImpl::destroy(v22, v18);
        }
      }
    }

    else if (v22)
    {
      goto LABEL_36;
    }
  }

  if (atomic_fetch_add(v16, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v16);
    return WTF::fastFree(v16, v18);
  }

  return result;
}

WTF::StringImpl *WebKit::BackgroundFetchLoad::didReceiveResponse(uint64_t a1, WebCore::ResourceResponseBase *a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v40 = *MEMORY[0x1E69E9840];
  v8 = qword_1ED6416F0;
  if (os_log_type_enabled(qword_1ED6416F0, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134218240;
    v32 = a1;
    v33 = 1024;
    LODWORD(v34) = WebCore::ResourceResponseBase::httpStatusCode(a2);
    _os_log_impl(&dword_19D52D000, v8, OS_LOG_TYPE_DEFAULT, "%p - BackgroundFetchLoad::didReceiveResponse - httpStatusCode=%d", buf, 0x12u);
  }

  WebKit::NetworkLoadChecker::validateResponse(*(a1 + 256), a1 + 48, a2, &v25);
  if (!v29)
  {
    WTF::WeakPtrFactory<WebPushD::PushServiceConnection,WTF::DefaultWeakPtrImpl>::initializeIfNeeded((a1 + 24), a1 + 16);
    v12 = *(a1 + 24);
    atomic_fetch_add(v12, 1u);
    v17 = *a5;
    *a5 = 0;
    (*(*v17 + 16))(v17, 0);
    (*(*v17 + 8))(v17);
    if (!v12)
    {
      goto LABEL_25;
    }

    if (*(v12 + 8))
    {
      v18 = *(a1 + 40);
      if (v18)
      {
        v19 = *(v18 + 8);
        if (v19)
        {
          (**v19)(v19);
        }
      }

      else
      {
        v19 = 0;
      }

      (*(*v19 + 40))(v19, a2);
      (*(*v19 + 8))(v19);
    }

    goto LABEL_23;
  }

  v9 = qword_1ED6416F0;
  if (os_log_type_enabled(qword_1ED6416F0, OS_LOG_TYPE_DEFAULT))
  {
    MEMORY[0x19EB12BA0](&v25);
    WTF::String::utf8();
    v10 = v24 ? v24 + 16 : 0;
    MEMORY[0x19EB12BA0](&v25);
    *buf = 134218498;
    v32 = a1;
    v33 = 2082;
    v34 = v10;
    v35 = 1024;
    v36 = v28;
    _os_log_impl(&dword_19D52D000, v9, OS_LOG_TYPE_DEFAULT, "%p - BackgroundFetchLoad::didReceiveResponse: NetworkLoadChecker::validateResponse returned an error (error.domain=%{public}s, error.code=%d)", buf, 0x1Cu);
    if (v24)
    {
      if (*v24 == 1)
      {
        WTF::fastFree(v24, v11);
      }

      else
      {
        --*v24;
      }
    }
  }

  WTF::WeakPtrFactory<WebPushD::PushServiceConnection,WTF::DefaultWeakPtrImpl>::initializeIfNeeded((a1 + 24), a1 + 16);
  v12 = *(a1 + 24);
  atomic_fetch_add(v12, 1u);
  v13 = *a5;
  *a5 = 0;
  (*(*v13 + 16))(v13, 2);
  (*(*v13 + 8))(v13);
  if (v12)
  {
    if (*(v12 + 8))
    {
      WebCore::ResourceResponseBase::ResourceResponseBase(buf);
      v38 = 0;
      v39 = 0;
      v37 = v37 & 0xF1 | 4;
      WebKit::BackgroundFetchLoad::didFinish(*(a1 + 40), &v25);
      v16 = v38;
      v38 = 0;
      if (v16)
      {
        CFRelease(v16);
      }

      WebCore::ResourceResponseBase::~ResourceResponseBase(buf, v15);
    }

LABEL_23:
    if (atomic_fetch_add(v12, 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, v12);
      WTF::fastFree(v12, v14);
    }
  }

LABEL_25:
  v20 = cf;
  cf = 0;
  if (v20)
  {
    CFRelease(v20);
  }

  v21 = v27;
  v27 = 0;
  if (v21 && atomic_fetch_add_explicit(v21, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v21, v14);
  }

  v22 = v26;
  v26 = 0;
  if (v22 && atomic_fetch_add_explicit(v22, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v22, v14);
  }

  result = v25;
  v25 = 0;
  if (result)
  {
    if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      return WTF::StringImpl::destroy(result, v14);
    }
  }

  return result;
}

uint64_t WebKit::BackgroundFetchLoad::didReceiveData(WebKit::BackgroundFetchLoad *this, const WebCore::SharedBuffer *a2)
{
  v10 = *MEMORY[0x1E69E9840];
  v4 = qword_1ED6416F0;
  if (os_log_type_enabled(qword_1ED6416F0, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 134217984;
    v9 = this;
    _os_log_impl(&dword_19D52D000, v4, OS_LOG_TYPE_DEFAULT, "%p - BackgroundFetchLoad::didReceiveData", &v8, 0xCu);
  }

  v5 = *(this + 5);
  if (v5)
  {
    v6 = *(v5 + 8);
    if (v6)
    {
      (**v6)(v6);
    }
  }

  else
  {
    v6 = 0;
  }

  (*(*v6 + 48))(v6, a2);
  return (*(*v6 + 8))(v6);
}

void WebKit::BackgroundFetchLoad::didCompleteWithError(WebKit::BackgroundFetchLoad *this, const WebCore::ResourceError *a2, const WebCore::NetworkLoadMetrics *a3)
{
  v21 = *MEMORY[0x1E69E9840];
  v5 = *(a2 + 60);
  v6 = qword_1ED6416F0;
  v7 = os_log_type_enabled(qword_1ED6416F0, OS_LOG_TYPE_DEFAULT);
  if (v5)
  {
    if (!v7)
    {
      goto LABEL_7;
    }

    MEMORY[0x19EB12BA0](a2);
    v8 = *(a2 + 14);
    v14 = 134218240;
    v15 = this;
    v16 = 1024;
    v17 = v8;
    v9 = "%p - BackgroundFetchLoad::didCompleteWithError, error_code=%d";
    v10 = v6;
    v11 = 18;
  }

  else
  {
    if (!v7)
    {
      goto LABEL_7;
    }

    v14 = 134217984;
    v15 = this;
    v9 = "%p - BackgroundFetchLoad::didComplete";
    v10 = v6;
    v11 = 12;
  }

  _os_log_impl(&dword_19D52D000, v10, OS_LOG_TYPE_DEFAULT, v9, &v14, v11);
LABEL_7:
  WebCore::ResourceResponseBase::ResourceResponseBase(&v14);
  cf = 0;
  v20 = 0;
  v18 = v18 & 0xF1 | 4;
  WebKit::BackgroundFetchLoad::didFinish(*(this + 5), a2);
  v13 = cf;
  cf = 0;
  if (v13)
  {
    CFRelease(v13);
  }

  WebCore::ResourceResponseBase::~ResourceResponseBase(&v14, v12);
}

uint64_t WebKit::BackgroundFetchLoad::didSendData(WebKit::BackgroundFetchLoad *this, uint64_t a2)
{
  v3 = *(this + 5);
  if (v3)
  {
    v4 = *(v3 + 8);
    if (v4)
    {
      (**v4)(v4);
    }
  }

  else
  {
    v4 = 0;
  }

  (*(*v4 + 32))(v4, a2);
  v5 = *(*v4 + 8);

  return v5(v4);
}

WTF::StringImpl *WebKit::BackgroundFetchLoad::wasBlocked(WebKit::BackgroundFetchLoad *this)
{
  v28 = *MEMORY[0x1E69E9840];
  v2 = qword_1ED6416F0;
  if (os_log_type_enabled(qword_1ED6416F0, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    v24 = this;
    _os_log_impl(&dword_19D52D000, v2, OS_LOG_TYPE_DEFAULT, "%p - BackgroundFetchLoad::wasBlocked", buf, 0xCu);
  }

  v3 = *(this + 32);
  v4 = *(v3 + 160);
  if (v4)
  {
    atomic_fetch_add_explicit(v4, 2u, memory_order_relaxed);
  }

  v14 = v4;
  v15 = *(v3 + 168);
  v16 = *(v3 + 184);
  WebCore::ResourceRequestBase::ResourceRequestBase(v17, &v14, 0);
  v18 = 0;
  WebKit::blockedError(v17, &v19);
  WebCore::ResourceResponseBase::ResourceResponseBase(buf);
  cf = 0;
  v27 = 0;
  v25 = v25 & 0xF1 | 4;
  WebKit::BackgroundFetchLoad::didFinish(*(this + 5), &v19);
  v6 = cf;
  cf = 0;
  if (v6)
  {
    CFRelease(v6);
  }

  WebCore::ResourceResponseBase::~ResourceResponseBase(buf, v5);
  v8 = v22;
  v22 = 0;
  if (v8)
  {
    CFRelease(v8);
  }

  v9 = v21;
  v21 = 0;
  if (v9 && atomic_fetch_add_explicit(v9, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v9, v7);
  }

  v10 = v20;
  v20 = 0;
  if (v10 && atomic_fetch_add_explicit(v10, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v10, v7);
  }

  v11 = v19;
  v19 = 0;
  if (v11 && atomic_fetch_add_explicit(v11, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v11, v7);
  }

  WebCore::ResourceRequest::~ResourceRequest(v17);
  result = v14;
  v14 = 0;
  if (result)
  {
    if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      return WTF::StringImpl::destroy(result, v12);
    }
  }

  return result;
}

WTF::StringImpl *WebKit::BackgroundFetchLoad::cannotShowURL(WebKit::BackgroundFetchLoad *this)
{
  v28 = *MEMORY[0x1E69E9840];
  v2 = qword_1ED6416F0;
  if (os_log_type_enabled(qword_1ED6416F0, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    v24 = this;
    _os_log_impl(&dword_19D52D000, v2, OS_LOG_TYPE_DEFAULT, "%p - BackgroundFetchLoad::cannotShowURL", buf, 0xCu);
  }

  v3 = *(this + 32);
  v4 = *(v3 + 160);
  if (v4)
  {
    atomic_fetch_add_explicit(v4, 2u, memory_order_relaxed);
  }

  v14 = v4;
  v15 = *(v3 + 168);
  v16 = *(v3 + 184);
  WebCore::ResourceRequestBase::ResourceRequestBase(v17, &v14, 0);
  v18 = 0;
  WebKit::cannotShowURLError(v17, &v19);
  WebCore::ResourceResponseBase::ResourceResponseBase(buf);
  cf = 0;
  v27 = 0;
  v25 = v25 & 0xF1 | 4;
  WebKit::BackgroundFetchLoad::didFinish(*(this + 5), &v19);
  v6 = cf;
  cf = 0;
  if (v6)
  {
    CFRelease(v6);
  }

  WebCore::ResourceResponseBase::~ResourceResponseBase(buf, v5);
  v8 = v22;
  v22 = 0;
  if (v8)
  {
    CFRelease(v8);
  }

  v9 = v21;
  v21 = 0;
  if (v9 && atomic_fetch_add_explicit(v9, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v9, v7);
  }

  v10 = v20;
  v20 = 0;
  if (v10 && atomic_fetch_add_explicit(v10, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v10, v7);
  }

  v11 = v19;
  v19 = 0;
  if (v11 && atomic_fetch_add_explicit(v11, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v11, v7);
  }

  WebCore::ResourceRequest::~ResourceRequest(v17);
  result = v14;
  v14 = 0;
  if (result)
  {
    if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      return WTF::StringImpl::destroy(result, v12);
    }
  }

  return result;
}

WTF::StringImpl *WebKit::BackgroundFetchLoad::wasBlockedByRestrictions(WebKit::BackgroundFetchLoad *this)
{
  v28 = *MEMORY[0x1E69E9840];
  v2 = qword_1ED6416F0;
  if (os_log_type_enabled(qword_1ED6416F0, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    v24 = this;
    _os_log_impl(&dword_19D52D000, v2, OS_LOG_TYPE_DEFAULT, "%p - BackgroundFetchLoad::wasBlockedByRestrictions", buf, 0xCu);
  }

  v3 = *(this + 32);
  v4 = *(v3 + 160);
  if (v4)
  {
    atomic_fetch_add_explicit(v4, 2u, memory_order_relaxed);
  }

  v14 = v4;
  v15 = *(v3 + 168);
  v16 = *(v3 + 184);
  WebCore::ResourceRequestBase::ResourceRequestBase(v17, &v14, 0);
  v18 = 0;
  WebKit::wasBlockedByRestrictionsError(v17, &v19);
  WebCore::ResourceResponseBase::ResourceResponseBase(buf);
  cf = 0;
  v27 = 0;
  v25 = v25 & 0xF1 | 4;
  WebKit::BackgroundFetchLoad::didFinish(*(this + 5), &v19);
  v6 = cf;
  cf = 0;
  if (v6)
  {
    CFRelease(v6);
  }

  WebCore::ResourceResponseBase::~ResourceResponseBase(buf, v5);
  v8 = v22;
  v22 = 0;
  if (v8)
  {
    CFRelease(v8);
  }

  v9 = v21;
  v21 = 0;
  if (v9 && atomic_fetch_add_explicit(v9, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v9, v7);
  }

  v10 = v20;
  v20 = 0;
  if (v10 && atomic_fetch_add_explicit(v10, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v10, v7);
  }

  v11 = v19;
  v19 = 0;
  if (v11 && atomic_fetch_add_explicit(v11, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v11, v7);
  }

  WebCore::ResourceRequest::~ResourceRequest(v17);
  result = v14;
  v14 = 0;
  if (result)
  {
    if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      return WTF::StringImpl::destroy(result, v12);
    }
  }

  return result;
}

WTF::StringImpl *WebKit::BackgroundFetchLoad::wasBlockedByDisabledFTP(WebKit::BackgroundFetchLoad *this)
{
  v28 = *MEMORY[0x1E69E9840];
  v2 = qword_1ED6416F0;
  if (os_log_type_enabled(qword_1ED6416F0, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    v24 = this;
    _os_log_impl(&dword_19D52D000, v2, OS_LOG_TYPE_DEFAULT, "%p - BackgroundFetchLoad::wasBlockedByDisabledFTP", buf, 0xCu);
  }

  v3 = *(this + 32);
  v4 = *(v3 + 160);
  if (v4)
  {
    atomic_fetch_add_explicit(v4, 2u, memory_order_relaxed);
  }

  v14 = v4;
  v15 = *(v3 + 168);
  v16 = *(v3 + 184);
  WebCore::ResourceRequestBase::ResourceRequestBase(v17, &v14, 0);
  v18 = 0;
  WebKit::ftpDisabledError(v17, &v19);
  WebCore::ResourceResponseBase::ResourceResponseBase(buf);
  cf = 0;
  v27 = 0;
  v25 = v25 & 0xF1 | 4;
  WebKit::BackgroundFetchLoad::didFinish(*(this + 5), &v19);
  v6 = cf;
  cf = 0;
  if (v6)
  {
    CFRelease(v6);
  }

  WebCore::ResourceResponseBase::~ResourceResponseBase(buf, v5);
  v8 = v22;
  v22 = 0;
  if (v8)
  {
    CFRelease(v8);
  }

  v9 = v21;
  v21 = 0;
  if (v9 && atomic_fetch_add_explicit(v9, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v9, v7);
  }

  v10 = v20;
  v20 = 0;
  if (v10 && atomic_fetch_add_explicit(v10, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v10, v7);
  }

  v11 = v19;
  v19 = 0;
  if (v11 && atomic_fetch_add_explicit(v11, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v11, v7);
  }

  WebCore::ResourceRequest::~ResourceRequest(v17);
  result = v14;
  v14 = 0;
  if (result)
  {
    if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      return WTF::StringImpl::destroy(result, v12);
    }
  }

  return result;
}

void *WebKit::DatabaseUtilities::DatabaseUtilities(void *a1, uint64_t *a2)
{
  v3 = *a2;
  *a2 = 0;
  *a1 = &unk_1F10FF4D0;
  a1[1] = v3;
  WebCore::SQLiteDatabase::SQLiteDatabase((a1 + 2));
  WebCore::SQLiteTransaction::SQLiteTransaction((a1 + 10), (a1 + 2));
  return a1;
}

void WebKit::DatabaseUtilities::~DatabaseUtilities(WebKit::DatabaseUtilities *this)
{
  *this = &unk_1F10FF4D0;
  MEMORY[0x19EB07780](this + 80);
  MEMORY[0x19EB058E0](this + 16);
  v3 = *(this + 1);
  *(this + 1) = 0;
  if (v3)
  {
    if (atomic_fetch_add_explicit(v3, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v3, v2);
    }
  }
}

uint64_t WebKit::DatabaseUtilities::openDatabaseAndCreateSchemaIfNecessary(WebKit::DatabaseUtilities *this, const WTF::String *a2)
{
  v36 = *MEMORY[0x1E69E9840];
  v4 = WTF::FileSystemImpl::fileExists((this + 8), a2);
  if (v4)
  {
    goto LABEL_4;
  }

  WTF::FileSystemImpl::parentPath(v31, (this + 8), v3);
  AllDirectories = WTF::FileSystemImpl::makeAllDirectories(v31, v5);
  v8 = *v31;
  *v31 = 0;
  if (v8 && atomic_fetch_add_explicit(v8, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v8, v6);
  }

  if (AllDirectories)
  {
LABEL_4:
    v9 = v4 ^ 1u;
    if (WebCore::SQLiteDatabase::open())
    {
      WebCore::SQLiteDatabase::prepareStatement();
      if (v35 || WebCore::SQLiteStatement::step(v31) != 100)
      {
        v11 = qword_1ED640FE0;
        if (os_log_type_enabled(qword_1ED640FE0, OS_LOG_TYPE_ERROR))
        {
          *buf = 134218243;
          *&buf[4] = this;
          v27 = 2081;
          ErrorMsg = WebCore::SQLiteDatabase::lastErrorMsg((this + 16));
          _os_log_error_impl(&dword_19D52D000, v11, OS_LOG_TYPE_ERROR, "%p - DatabaseUtilities::setBusyTimeout failed, error message: %{private}s", buf, 0x16u);
        }
      }

      if ((v4 & 1) == 0 && ((**this)(this) & 1) == 0)
      {
        v18 = qword_1ED640FE0;
        if (os_log_type_enabled(qword_1ED640FE0, OS_LOG_TYPE_ERROR))
        {
          v19 = WebCore::SQLiteDatabase::lastErrorMsg((this + 16));
          WTF::String::utf8();
          v20 = v25 ? v25 + 16 : 0;
          *buf = 134218498;
          *&buf[4] = this;
          v27 = 2082;
          ErrorMsg = v19;
          v29 = 2082;
          v30 = v20;
          _os_log_error_impl(&dword_19D52D000, v18, OS_LOG_TYPE_ERROR, "%p - DatabaseUtilities::createSchema failed, error message: %{public}s, database path: %{public}s", buf, 0x20u);
          if (v25)
          {
            if (*v25 == 1)
            {
              WTF::fastFree(v25, v21);
            }

            else
            {
              --*v25;
            }
          }
        }
      }

      if (!v35)
      {
        WebCore::SQLiteStatement::~SQLiteStatement(v31);
      }
    }

    else
    {
      v12 = qword_1ED640FE0;
      if (os_log_type_enabled(qword_1ED640FE0, OS_LOG_TYPE_ERROR))
      {
        v13 = WebCore::SQLiteDatabase::lastErrorMsg((this + 16));
        WTF::String::utf8();
        v14 = *buf ? *buf + 16 : 0;
        *v31 = 134218498;
        *&v31[4] = this;
        v32 = 2082;
        v33 = v13;
        v34 = 2082;
        v35 = v14;
        _os_log_error_impl(&dword_19D52D000, v12, OS_LOG_TYPE_ERROR, "%p - DatabaseUtilities::open failed, error message: %{public}s, database path: %{public}s", v31, 0x20u);
        v16 = *buf;
        *buf = 0;
        if (v16)
        {
          if (*v16 == 1)
          {
            WTF::fastFree(v16, v15);
          }

          else
          {
            --*v16;
          }
        }
      }
    }
  }

  else
  {
    v17 = qword_1ED640FE0;
    if (os_log_type_enabled(qword_1ED640FE0, OS_LOG_TYPE_ERROR))
    {
      WTF::String::utf8();
      v22 = *buf ? *buf + 16 : 0;
      *v31 = 134218242;
      *&v31[4] = this;
      v32 = 2082;
      v33 = v22;
      _os_log_error_impl(&dword_19D52D000, v17, OS_LOG_TYPE_ERROR, "%p - DatabaseUtilities::open failed, error message: Failed to create directory database path: %{public}s", v31, 0x16u);
      v24 = *buf;
      *buf = 0;
      if (v24)
      {
        if (*v24 == 1)
        {
          WTF::fastFree(v24, v23);
        }

        else
        {
          --*v24;
        }
      }
    }

    return 0;
  }

  return v9;
}

void WebKit::DatabaseUtilities::enableForeignKeys(WebKit::DatabaseUtilities *this)
{
  v10 = *MEMORY[0x1E69E9840];
  WebCore::SQLiteDatabase::prepareStatement();
  if (v5 || WebCore::SQLiteStatement::step(v4) != 101)
  {
    v2 = qword_1ED640FE0;
    if (os_log_type_enabled(qword_1ED640FE0, OS_LOG_TYPE_ERROR))
    {
      ErrorMsg = WebCore::SQLiteDatabase::lastErrorMsg((this + 16));
      *buf = 134218243;
      v7 = this;
      v8 = 2081;
      v9 = ErrorMsg;
      _os_log_error_impl(&dword_19D52D000, v2, OS_LOG_TYPE_ERROR, "%p - DatabaseUtilities::enableForeignKeys failed, error message: %{private}s", buf, 0x16u);
    }
  }

  if (!v5)
  {
    WebCore::SQLiteStatement::~SQLiteStatement(v4);
  }
}

uint64_t WebKit::DatabaseUtilities::close(WebKit::DatabaseUtilities *this)
{
  result = (*(*this + 16))(this);
  if (*(this + 3))
  {

    return MEMORY[0x1EEE559F0](this + 16);
  }

  return result;
}

WTF::StringImpl *WebKit::DatabaseUtilities::buildPrivateClickMeasurementFromDatabase@<X0>(WebCore::SQLiteStatement *this@<X1>, uint64_t a2@<X0>, int a3@<W2>, uint64_t a4@<X8>)
{
  v8 = WebCore::SQLiteStatement::columnInt(this);
  (*(*a2 + 24))(&v72, a2, v8);
  v9 = WebCore::SQLiteStatement::columnInt(this);
  (*(*a2 + 24))(&v71, a2, v9);
  v10 = WebCore::SQLiteStatement::columnInt(this);
  WebCore::SQLiteStatement::columnDouble(this);
  v12 = v11;
  WebCore::SQLiteStatement::columnText(this);
  WebCore::SQLiteStatement::columnText(this);
  WebCore::SQLiteStatement::columnText(this);
  WebCore::SQLiteStatement::columnText(this);
  if (!v67 || !v67[1])
  {
    WTF::StringImpl::createWithoutCopyingNonEmpty();
    v14 = v67;
    v67 = v57;
    if (v14)
    {
      if (atomic_fetch_add_explicit(v14, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v14, v13);
      }
    }
  }

  WebCore::RegistrableDomain::uncheckedCreateFromRegistrableDomainString(&v72, &v57);
  v15 = v57;
  v57 = 0;
  WebCore::RegistrableDomain::uncheckedCreateFromRegistrableDomainString(&v71, &v66);
  v17 = v66;
  v66 = 0;
  *a4 = v10;
  if (v15)
  {
    atomic_fetch_add_explicit(v15, 2u, memory_order_relaxed);
  }

  *(a4 + 8) = v15;
  if (v17)
  {
    atomic_fetch_add_explicit(v17, 2u, memory_order_relaxed);
  }

  *(a4 + 56) = 0;
  *(a4 + 16) = v17;
  *(a4 + 24) = v12;
  *(a4 + 32) = 0;
  *(a4 + 40) = 0;
  *(a4 + 48) = 0;
  *(a4 + 184) = 0;
  *(a4 + 192) = 0;
  *(a4 + 200) = 0;
  *(a4 + 208) = 0;
  *(a4 + 216) = 0;
  *(a4 + 224) = 0;
  *(a4 + 232) = 0;
  *(a4 + 296) = 0;
  *(a4 + 240) = 0u;
  *(a4 + 256) = 0u;
  *(a4 + 272) = 0;
  v18 = v67;
  if (v67)
  {
    atomic_fetch_add_explicit(v67, 2u, memory_order_relaxed);
  }

  *(a4 + 304) = v18;
  if (v17 && atomic_fetch_add_explicit(v17, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v17, v16);
  }

  v19 = v66;
  v66 = 0;
  if (v19 && atomic_fetch_add_explicit(v19, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v19, v16);
    if (!v15)
    {
      goto LABEL_21;
    }
  }

  else if (!v15)
  {
    goto LABEL_21;
  }

  if (atomic_fetch_add_explicit(v15, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v15, v16);
  }

LABEL_21:
  v20 = v57;
  v57 = 0;
  if (v20 && atomic_fetch_add_explicit(v20, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v20, v16);
    if (!a3)
    {
      goto LABEL_66;
    }
  }

  else if (!a3)
  {
    goto LABEL_66;
  }

  v21 = WebCore::SQLiteStatement::columnInt(this);
  v22 = WebCore::SQLiteStatement::columnInt(this);
  WebCore::SQLiteStatement::columnDouble(this);
  v24 = v23;
  WebCore::SQLiteStatement::columnDouble(this);
  v26 = v25;
  WebCore::SQLiteStatement::columnText(this);
  WebCore::SQLiteStatement::columnText(this);
  WebCore::SQLiteStatement::columnText(this);
  if (v21 != -1)
  {
    LOBYTE(v57) = v21;
    *(&v57 + 1) = v22;
    LOBYTE(v58) = 0;
    LOBYTE(v59) = 0;
    v60[0] = 0;
    v60[8] = 0;
    v61[0] = 0;
    v61[8] = 0;
    v62[0] = 0;
    v62[32] = 0;
    v63[0] = 0;
    v63[24] = 0;
    if (*(a4 + 184) == 1)
    {
      *(a4 + 56) = v57;
      *(a4 + 58) = BYTE2(v57);
      std::__optional_storage_base<WebCore::RegistrableDomain,false>::__assign_from[abi:sn200100]<std::__optional_move_assign_base<WebCore::RegistrableDomain,false>>((a4 + 64), &v58);
      std::__optional_storage_base<WebCore::RegistrableDomain,false>::__assign_from[abi:sn200100]<std::__optional_move_assign_base<WebCore::RegistrableDomain,false>>((a4 + 80), v60);
      std::__optional_storage_base<WebCore::RegistrableDomain,false>::__assign_from[abi:sn200100]<std::__optional_move_assign_base<WebCore::RegistrableDomain,false>>((a4 + 96), v61);
      std::__optional_storage_base<WebCore::PCM::DestinationUnlinkableToken,false>::__assign_from[abi:sn200100]<std::__optional_move_assign_base<WebCore::PCM::DestinationUnlinkableToken,false>>(a4 + 112, v62);
      std::__optional_storage_base<WebCore::PCM::DestinationSecretToken,false>::__assign_from[abi:sn200100]<std::__optional_move_assign_base<WebCore::PCM::DestinationSecretToken,false>>(a4 + 152, v63);
    }

    else
    {
      std::__optional_storage_base<WebCore::PCM::AttributionTriggerData,false>::__construct[abi:sn200100]<WebCore::PCM::AttributionTriggerData>(a4 + 56, &v57);
    }

    WebCore::PCM::AttributionTriggerData::~AttributionTriggerData(&v57, v28);
  }

  v57 = 0;
  v58 = 0;
  v59 = 0;
  v29 = v66;
  if (v66)
  {
    atomic_fetch_add_explicit(v66, 2u, memory_order_relaxed);
    v30 = v57;
    v57 = v29;
    if (v30)
    {
      if (atomic_fetch_add_explicit(v30, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v30, v27);
      }
    }
  }

  v31 = v65;
  if (v65)
  {
    atomic_fetch_add_explicit(v65, 2u, memory_order_relaxed);
  }

  v32 = v58;
  v58 = v31;
  if (v32 && atomic_fetch_add_explicit(v32, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v32, v27);
  }

  v33 = v64;
  if (v64)
  {
    atomic_fetch_add_explicit(v64, 2u, memory_order_relaxed);
  }

  v34 = v59;
  v59 = v33;
  if (v34 && atomic_fetch_add_explicit(v34, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v34, v27);
  }

  WebCore::PrivateClickMeasurement::setDestinationSecretToken();
  v36 = v24;
  if (v24 <= 0.0)
  {
    v36 = 0.0;
  }

  v37 = v26;
  if (v26 <= 0.0)
  {
    v37 = 0.0;
  }

  *(a4 + 192) = v36;
  *(a4 + 200) = v24 > 0.0;
  *(a4 + 208) = v37;
  *(a4 + 216) = v26 > 0.0;
  v38 = v59;
  v59 = 0;
  if (v38 && atomic_fetch_add_explicit(v38, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v38, v35);
  }

  v39 = v58;
  v58 = 0;
  if (v39 && atomic_fetch_add_explicit(v39, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v39, v35);
  }

  v40 = v57;
  v57 = 0;
  if (v40 && atomic_fetch_add_explicit(v40, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v40, v35);
  }

  v41 = v64;
  v64 = 0;
  if (v41 && atomic_fetch_add_explicit(v41, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v41, v35);
  }

  v42 = v65;
  v65 = 0;
  if (v42 && atomic_fetch_add_explicit(v42, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v42, v35);
  }

  v43 = v66;
  v66 = 0;
  if (v43 && atomic_fetch_add_explicit(v43, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v43, v35);
  }

LABEL_66:
  v44 = v70;
  if (v70)
  {
    atomic_fetch_add_explicit(v70, 2u, memory_order_relaxed);
  }

  v57 = v44;
  v45 = v69;
  if (v69)
  {
    atomic_fetch_add_explicit(v69, 2u, memory_order_relaxed);
  }

  v58 = v45;
  v46 = v68;
  if (v68)
  {
    atomic_fetch_add_explicit(v68, 2u, memory_order_relaxed);
  }

  v59 = v46;
  WebCore::PrivateClickMeasurement::setSourceSecretToken();
  v48 = v59;
  v59 = 0;
  if (v48 && atomic_fetch_add_explicit(v48, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v48, v47);
  }

  v49 = v58;
  v58 = 0;
  if (v49 && atomic_fetch_add_explicit(v49, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v49, v47);
  }

  v50 = v57;
  v57 = 0;
  if (v50 && atomic_fetch_add_explicit(v50, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v50, v47);
  }

  v51 = v67;
  v67 = 0;
  if (v51 && atomic_fetch_add_explicit(v51, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v51, v47);
  }

  v52 = v68;
  v68 = 0;
  if (v52 && atomic_fetch_add_explicit(v52, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v52, v47);
  }

  v53 = v69;
  v69 = 0;
  if (v53 && atomic_fetch_add_explicit(v53, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v53, v47);
  }

  v54 = v70;
  v70 = 0;
  if (v54 && atomic_fetch_add_explicit(v54, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v54, v47);
  }

  v55 = v71;
  v71 = 0;
  if (v55 && atomic_fetch_add_explicit(v55, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v55, v47);
  }

  result = v72;
  v72 = 0;
  if (result)
  {
    if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      return WTF::StringImpl::destroy(result, v47);
    }
  }

  return result;
}

WTF::StringImpl *WebKit::DatabaseUtilities::stripIndexQueryToMatchStoredValue@<X0>(const char *a1@<X1>, void *a2@<X8>)
{
  WTF::String::String(&v6, a1);
  result = v6;
  if (v6)
  {
    WTF::StringImpl::replace();
    result = v6;
    v6 = 0;
    if (result)
    {
      if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        return WTF::StringImpl::destroy(result, v5);
      }
    }
  }

  else
  {
    *a2 = 0;
  }

  return result;
}

void WebKit::DatabaseUtilities::currentTableAndIndexQueries(WebKit::DatabaseUtilities *this@<X0>, uint64_t a2@<X8>)
{
  v34 = *MEMORY[0x1E69E9840];
  WebCore::SQLiteDatabase::prepareStatement();
  if (v25)
  {
    v14 = qword_1ED640FE0;
    if (os_log_type_enabled(qword_1ED640FE0, OS_LOG_TYPE_ERROR))
    {
      *buf = 134218243;
      v30 = this;
      v31 = 2081;
      ErrorMsg = WebCore::SQLiteDatabase::lastErrorMsg((this + 16));
      v16 = "%p - DatabaseUtilities::currentTableAndIndexQueries Unable to prepare statement to fetch schema for the table, error message: %{private}s";
      goto LABEL_40;
    }

    goto LABEL_19;
  }

  if (WebCore::SQLiteStatement::bindText())
  {
    v14 = qword_1ED640FE0;
    if (os_log_type_enabled(qword_1ED640FE0, OS_LOG_TYPE_ERROR))
    {
      *buf = 134218243;
      v30 = this;
      v31 = 2081;
      ErrorMsg = WebCore::SQLiteDatabase::lastErrorMsg((this + 16));
      v16 = "%p - DatabaseUtilities::currentTableAndIndexQueries Unable to bind statement to fetch schema for the table, error message: %{private}s";
LABEL_40:
      _os_log_error_impl(&dword_19D52D000, v14, OS_LOG_TYPE_ERROR, v16, buf, 0x16u);
    }

LABEL_19:
    *(a2 + 16) = 0;
    *a2 = 0;
    *(a2 + 8) = 0;
    goto LABEL_20;
  }

  v5 = WebCore::SQLiteStatement::step(v24);
  if (v5 != 100)
  {
    v14 = qword_1ED640FE0;
    if (os_log_type_enabled(qword_1ED640FE0, OS_LOG_TYPE_ERROR))
    {
      v18 = WebCore::SQLiteDatabase::lastErrorMsg((this + 16));
      *buf = 134218243;
      v30 = this;
      v31 = 2081;
      ErrorMsg = v18;
      v16 = "%p - DatabaseUtilities::currentTableAndIndexQueries error executing statement to fetch table schema, error message: %{private}s";
      goto LABEL_40;
    }

    goto LABEL_19;
  }

  if (v25)
  {
    goto LABEL_43;
  }

  WebCore::SQLiteStatement::columnText(v24);
  WebCore::SQLiteDatabase::prepareStatement();
  if (v33)
  {
    v19 = qword_1ED640FE0;
    if (os_log_type_enabled(qword_1ED640FE0, OS_LOG_TYPE_ERROR))
    {
      v22 = WebCore::SQLiteDatabase::lastErrorMsg((this + 16));
      *v26 = 134218243;
      *&v26[4] = this;
      v27 = 2081;
      v28 = v22;
      v21 = "%p - DatabaseUtilities::currentTableAndIndexQueries Unable to prepare statement to fetch index for the table, error message: %{private}s";
      goto LABEL_42;
    }

LABEL_31:
    *(a2 + 16) = 0;
    *a2 = 0;
    *(a2 + 8) = 0;
    goto LABEL_32;
  }

  v5 = WebCore::SQLiteStatement::bindText();
  if (v5)
  {
    v19 = qword_1ED640FE0;
    if (os_log_type_enabled(qword_1ED640FE0, OS_LOG_TYPE_ERROR))
    {
      v20 = WebCore::SQLiteDatabase::lastErrorMsg((this + 16));
      *v26 = 134218243;
      *&v26[4] = this;
      v27 = 2081;
      v28 = v20;
      v21 = "%p - DatabaseUtilities::currentTableAndIndexQueries Unable to bind statement to fetch index for the table, error message: %{private}s";
LABEL_42:
      _os_log_error_impl(&dword_19D52D000, v19, OS_LOG_TYPE_ERROR, v21, v26, 0x16u);
      goto LABEL_31;
    }

    goto LABEL_31;
  }

  if (v33)
  {
    goto LABEL_43;
  }

  v5 = WebCore::SQLiteStatement::step(buf);
  if (v5 != 100)
  {
    goto LABEL_23;
  }

  if (v33)
  {
LABEL_43:
    mpark::throw_bad_variant_access(v5);
  }

  WebCore::SQLiteStatement::columnText(buf);
  v7 = *v26;
  if (*v26)
  {
    v8 = *(*v26 + 4);
    if (v8)
    {
      atomic_fetch_add_explicit(*v26, 2u, memory_order_relaxed);
      v9 = *v26;
      *v26 = 0;
      if (!v9)
      {
        v17 = v23;
        v23 = 0;
        v12 = (a2 + 8);
        *a2 = v17;
        v13 = (a2 + 16);
LABEL_27:
        *v12 = v7;
        *v13 = 1;
        goto LABEL_32;
      }

      v10 = v7;
      v7 = v9;
    }

    else
    {
      v10 = 0;
      *v26 = 0;
    }

    if (atomic_fetch_add_explicit(v7, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v7, v6);
    }

    v11 = v23;
    v23 = 0;
    *a2 = v11;
    *(a2 + 8) = 0;
    v12 = (a2 + 8);
    *(a2 + 16) = 0;
    v13 = (a2 + 16);
    if (!v8)
    {
      goto LABEL_32;
    }

    v7 = v10;
    goto LABEL_27;
  }

LABEL_23:
  v15 = v23;
  v23 = 0;
  *a2 = v15;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
LABEL_32:
  if (!v33)
  {
    WebCore::SQLiteStatement::~SQLiteStatement(buf);
  }

  if (v23 && atomic_fetch_add_explicit(v23, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v23, v6);
  }

LABEL_20:
  if (!v25)
  {
    WebCore::SQLiteStatement::~SQLiteStatement(v24);
  }
}

uint64_t WebKit::DatabaseUtilities::migrateDataToNewTablesIfNecessary(WebKit::DatabaseUtilities *this)
{
  v56 = *MEMORY[0x1E69E9840];
  result = (*(*this + 32))(this);
  if (result)
  {
    WebCore::SQLiteTransaction::SQLiteTransaction(v45, (this + 16));
    WebCore::SQLiteTransaction::begin(v45);
    v5 = (*(*this + 40))(this);
    if (*(v5 + 12))
    {
      v6 = *(v5 + 8);
      if (v6)
      {
        v7 = 32 * v6;
        v8 = *v5;
        while (!*v8)
        {
          v8 += 4;
          v7 -= 32;
          if (!v7)
          {
            goto LABEL_7;
          }
        }
      }

      else
      {
        v8 = *v5;
      }

      v31 = *v5 + 32 * v6;
      if (v8 != v31)
      {
        v1 = " RENAME TO _";
LABEL_46:
        v32 = *v8;
        if (*v8)
        {
          atomic_fetch_add_explicit(v32, 2u, memory_order_relaxed);
        }

        v44 = v32;
        v33 = *v8;
        if (*v8)
        {
          atomic_fetch_add_explicit(v33, 2u, memory_order_relaxed);
        }

        v43 = v33;
        WTF::makeString<WTF::ASCIILiteral,WTF::String,WTF::ASCIILiteral,WTF::String>("ALTER TABLE ", 13, &v44, " RENAME TO _", 13, &v43, buf);
        v34 = *buf;
        if (*buf)
        {
          v34 = *(*buf + 4);
          v35 = ((*(*buf + 16) >> 2) & 1) << 32;
        }

        else
        {
          v35 = 0x100000000;
        }

        v2 = v34 | v2 & 0xFFFFFF0000000000 | v35;
        WebCore::SQLiteDatabase::prepareStatementSlow();
        v37 = *buf;
        *buf = 0;
        if (v37 && atomic_fetch_add_explicit(v37, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v37, v36);
        }

        v38 = v43;
        v43 = 0;
        if (v38 && atomic_fetch_add_explicit(v38, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v38, v36);
        }

        v39 = v44;
        v44 = 0;
        if (v39 && atomic_fetch_add_explicit(v39, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v39, v36);
        }

        if (v55 || WebCore::SQLiteStatement::step(v51) != 101)
        {
          v40 = qword_1ED640FE0;
          if (os_log_type_enabled(qword_1ED640FE0, OS_LOG_TYPE_ERROR))
          {
            ErrorMsg = WebCore::SQLiteDatabase::lastErrorMsg((this + 16));
            *buf = 134218242;
            *&buf[4] = this;
            v47 = 2080;
            v48 = ErrorMsg;
            _os_log_error_impl(&dword_19D52D000, v40, OS_LOG_TYPE_ERROR, "%p - DatabaseUtilities::migrateDataToNewTablesIfNecessary failed to rename table, error message: %s", buf, 0x16u);
          }

          WebCore::SQLiteTransaction::rollback(v45);
          goto LABEL_72;
        }

        if (!v55)
        {
          WebCore::SQLiteStatement::~SQLiteStatement(v51);
        }

        while (1)
        {
          v8 += 4;
          if (v8 == v31)
          {
            break;
          }

          if (*v8)
          {
            if (v8 != v31)
            {
              goto LABEL_46;
            }

            break;
          }
        }
      }
    }

LABEL_7:
    if ((**this)(this))
    {
      v9 = (*(*this + 48))(this);
      if (v10)
      {
        v11 = v9;
        v1 = 16 * v10;
        while (1)
        {
          WTF::String::String(buf, *v11, v11[1]);
          WebKit::insertDistinctValuesInTableStatement(v51, (this + 16), buf);
          v13 = *buf;
          *buf = 0;
          if (v13 && atomic_fetch_add_explicit(v13, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v13, v12);
          }

          if (v55 || WebCore::SQLiteStatement::step(v51) != 101)
          {
            break;
          }

          if (!v55)
          {
            WebCore::SQLiteStatement::~SQLiteStatement(v51);
          }

          v11 += 2;
          v1 -= 16;
          if (!v1)
          {
            goto LABEL_19;
          }
        }

        WebCore::SQLiteTransaction::rollback(v45);
        v22 = qword_1ED640FE0;
        if (!os_log_type_enabled(qword_1ED640FE0, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_72;
        }

        v23 = *v11;
        v24 = WebCore::SQLiteDatabase::lastErrorMsg((this + 16));
        *buf = 134218498;
        *&buf[4] = this;
        v47 = 2080;
        v48 = v23;
        v49 = 2080;
        v50 = v24;
        v25 = "%p - DatabaseUtilities::migrateDataToNewTablesIfNecessary (table %s) failed to migrate schema, error message: %s";
        v26 = v22;
        v27 = 32;
LABEL_36:
        _os_log_error_impl(&dword_19D52D000, v26, OS_LOG_TYPE_ERROR, v25, buf, v27);
LABEL_72:
        if (!v55)
        {
          WebCore::SQLiteStatement::~SQLiteStatement(v51);
        }

        return MEMORY[0x19EB07780](v45);
      }

LABEL_19:
      v14 = (*(*this + 48))(this);
      if (v15)
      {
        v16 = v14;
        v17 = v14 + 16 * v15;
        while (1)
        {
          WTF::makeString<WTF::ASCIILiteral,WTF::ASCIILiteral>(buf, *v16, *(v16 + 8));
          v18 = *buf;
          if (*buf)
          {
            v19 = *(*buf + 4);
            v20 = ((*(*buf + 16) >> 2) & 1) << 32;
          }

          else
          {
            v19 = 0;
            v20 = 0x100000000;
          }

          v1 = v19 | v1 & 0xFFFFFF0000000000 | v20;
          WebCore::SQLiteDatabase::prepareStatementSlow();
          if (v18 && atomic_fetch_add_explicit(v18, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v18, v21);
          }

          if (v55 || WebCore::SQLiteStatement::step(v51) != 101)
          {
            break;
          }

          if (!v55)
          {
            WebCore::SQLiteStatement::~SQLiteStatement(v51);
          }

          v16 += 16;
          if (v16 == v17)
          {
            goto LABEL_32;
          }
        }

        WebCore::SQLiteTransaction::rollback(v45);
        v28 = qword_1ED640FE0;
        if (!os_log_type_enabled(qword_1ED640FE0, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_72;
        }

        v29 = WebCore::SQLiteDatabase::lastErrorMsg((this + 16));
        *buf = 134218242;
        *&buf[4] = this;
        v47 = 2080;
        v48 = v29;
        v25 = "%p - DatabaseUtilities::migrateDataToNewTablesIfNecessary failed to drop temporary tables, error message: %s";
        v26 = v28;
        v27 = 22;
        goto LABEL_36;
      }

LABEL_32:
      if ((*(*this + 8))(this))
      {
        WebCore::SQLiteTransaction::commit(v45);
        return MEMORY[0x19EB07780](v45);
      }

      v30 = qword_1ED640FE0;
      if (os_log_type_enabled(qword_1ED640FE0, OS_LOG_TYPE_ERROR))
      {
        v42 = WebCore::SQLiteDatabase::lastErrorMsg((this + 16));
        *v51 = 134218242;
        v52 = this;
        v53 = 2080;
        v54 = v42;
        _os_log_error_impl(&dword_19D52D000, v30, OS_LOG_TYPE_ERROR, "%p - DatabaseUtilities::migrateDataToNewTablesIfNecessary failed to create unique indices, error message: %s", v51, 0x16u);
      }
    }

    WebCore::SQLiteTransaction::rollback(v45);
    return MEMORY[0x19EB07780](v45);
  }

  return result;
}

uint64_t WTF::makeString<WTF::ASCIILiteral,WTF::String,WTF::ASCIILiteral,WTF::String>@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t *a6@<X5>, void *a7@<X8>)
{
  v10[0] = a1;
  v10[1] = a2;
  v9[0] = a4;
  v9[1] = a5;
  result = WTF::tryMakeString<WTF::ASCIILiteral,WTF::String,WTF::ASCIILiteral,WTF::String>(v10, a3, v9, a6, a7);
  if (!*a7)
  {
    __break(0xC471u);
  }

  return result;
}

WTF::StringImpl *WebKit::insertDistinctValuesInTableStatement(WebKit *this, WebCore::SQLiteDatabase *a2, atomic_uint **a3)
{
  if (MEMORY[0x19EB01EF0](*a3, "SubframeUnderTopFrameDomains", 28) || MEMORY[0x19EB01EF0](*a3, "SubresourceUnderTopFrameDomains", 31) || MEMORY[0x19EB01EF0](*a3, "SubresourceUniqueRedirectsTo", 28) || MEMORY[0x19EB01EF0](*a3, "TopFrameLinkDecorationsFrom", 27))
  {

    return WebCore::SQLiteDatabase::prepareStatement();
  }

  else
  {
    v4 = *a3;
    if (*a3)
    {
      atomic_fetch_add_explicit(v4, 2u, memory_order_relaxed);
      v5 = *a3;
      v11 = v4;
      if (v5)
      {
        atomic_fetch_add_explicit(v5, 2u, memory_order_relaxed);
      }
    }

    else
    {
      v5 = 0;
      v11 = 0;
    }

    v10 = v5;
    WTF::makeString<WTF::ASCIILiteral,WTF::String,WTF::ASCIILiteral,WTF::String>("INSERT INTO ", 13, &v11, " SELECT DISTINCT * FROM _", 26, &v10, &v12);
    WebCore::SQLiteDatabase::prepareStatementSlow();
    v7 = v12;
    v12 = 0;
    if (v7 && atomic_fetch_add_explicit(v7, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v7, v6);
    }

    v8 = v10;
    v10 = 0;
    if (v8 && atomic_fetch_add_explicit(v8, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v8, v6);
    }

    result = v11;
    v11 = 0;
    if (result)
    {
      if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        return WTF::StringImpl::destroy(result, v6);
      }
    }
  }

  return result;
}

uint64_t WTF::makeString<WTF::ASCIILiteral,WTF::ASCIILiteral>(void *a1, _BYTE *a2, uint64_t a3)
{
  if (a3)
  {
    v3 = a3 - 1;
  }

  else
  {
    v3 = 0;
  }

  if (v3 >> 31)
  {
    __break(0xC471u);
LABEL_14:
    JUMPOUT(0x19DC1DD98);
  }

  if (__OFADD__(v3, 12) || (result = WTF::tryFastCompactMalloc((v3 + 32)), !v7))
  {
    *a1 = 0;
    __break(0xC471u);
    goto LABEL_14;
  }

  *(v7 + 20) = *"DROP TABLE _";
  *v7 = 2;
  *(v7 + 4) = v3 + 12;
  *(v7 + 8) = v7 + 20;
  *(v7 + 16) = 4;
  *(v7 + 28) = 1595950412;
  if (v3)
  {
    if (v3 == 1)
    {
      *(v7 + 32) = *a2;
    }

    else
    {
      result = memcpy((v7 + 32), a2, v3);
    }
  }

  *a1 = v7;
  return result;
}

void WebKit::DatabaseUtilities::columnsForTable(uint64_t a1@<X0>, _BYTE *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v21 = *MEMORY[0x1E69E9840];
  WTF::tryMakeString<WTF::ASCIILiteral,WTF::ASCIILiteral,char>(buf, "PRAGMA table_info(", 19, a2, a3, 41);
  v6 = *buf;
  if (*buf)
  {
    WebCore::SQLiteDatabase::prepareStatementSlow();
    if (atomic_fetch_add_explicit(v6, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v6, v7);
    }

    if (v17)
    {
      v14 = qword_1ED640FE0;
      if (os_log_type_enabled(qword_1ED640FE0, OS_LOG_TYPE_ERROR))
      {
        ErrorMsg = WebCore::SQLiteDatabase::lastErrorMsg((a1 + 16));
        *buf = 134218243;
        *&buf[4] = a1;
        v19 = 2081;
        v20 = ErrorMsg;
        _os_log_error_impl(&dword_19D52D000, v14, OS_LOG_TYPE_ERROR, "%p - Database::columnsForTable Unable to prepare statement to fetch schema for table, error message: %{private}s", buf, 0x16u);
      }

      *a4 = 0;
      *(a4 + 8) = 0;
    }

    else
    {
      *a4 = 0;
      *(a4 + 8) = 0;
      while (1)
      {
        v8 = WebCore::SQLiteStatement::step(v16);
        if (v8 != 100)
        {
          break;
        }

        if (!v17)
        {
          WebCore::SQLiteStatement::columnText(v16);
          v10 = *(a4 + 12);
          if (v10 == *(a4 + 8))
          {
            WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::appendSlowCase<(WTF::FailureAction)0,WTF::String&>(a4, buf);
          }

          else
          {
            v11 = *a4;
            v12 = *buf;
            if (*buf)
            {
              atomic_fetch_add_explicit(*buf, 2u, memory_order_relaxed);
            }

            v13 = *(a4 + 12);
            *(v11 + 8 * v10) = v12;
            *(a4 + 12) = v13 + 1;
          }

          v8 = *buf;
          *buf = 0;
          if (v8)
          {
            if (atomic_fetch_add_explicit(v8, 0xFFFFFFFE, memory_order_relaxed) == 2)
            {
              v8 = WTF::StringImpl::destroy(v8, v9);
            }
          }

          if (!v17)
          {
            continue;
          }
        }

        mpark::throw_bad_variant_access(v8);
      }
    }

    if (!v17)
    {
      WebCore::SQLiteStatement::~SQLiteStatement(v16);
    }
  }

  else
  {
    __break(0xC471u);
  }
}

uint64_t WebKit::DatabaseUtilities::addMissingColumnToTable(uint64_t a1, _BYTE *a2, uint64_t a3, _BYTE *a4, uint64_t a5)
{
  v30 = *MEMORY[0x1E69E9840];
  if (a3)
  {
    v5 = a3 - 1;
  }

  else
  {
    v5 = 0;
  }

  if (v5 >> 31)
  {
    __break(0xC471u);
    JUMPOUT(0x19DC1E29CLL);
  }

  if (a5)
  {
    v6 = a5 - 1;
  }

  else
  {
    v6 = 0;
  }

  if (v6 >> 31)
  {
    __break(0xC471u);
    goto LABEL_45;
  }

  v7 = v6 + 12;
  if (__OFADD__(v6, 12))
  {
    goto LABEL_42;
  }

  v8 = __OFADD__(v5, v7);
  v9 = v5 + v7;
  if (v8)
  {
    goto LABEL_42;
  }

  v10 = (v9 + 12);
  if (__OFADD__(v9, 12))
  {
    goto LABEL_42;
  }

  if (v9 == -12)
  {
    v14 = MEMORY[0x1E696EB88];
    atomic_fetch_add_explicit(MEMORY[0x1E696EB88], 2u, memory_order_relaxed);
    goto LABEL_24;
  }

  if ((v10 & 0x80000000) != 0 || (WTF::tryFastCompactMalloc((v10 + 20)), (v14 = v24[0]) == 0))
  {
LABEL_42:
    __break(0xC471u);
    goto LABEL_46;
  }

  *v24[0] = 2;
  *(v14 + 4) = v10;
  *(v14 + 20) = *"ALTER TABLE ";
  *(v14 + 8) = v14 + 20;
  *(v14 + 16) = 4;
  *(v14 + 28) = 541412418;
  if (v10 <= 0xB)
  {
    goto LABEL_45;
  }

  v15 = v10 - 12;
  v16 = (v14 + 32);
  if (v5)
  {
    if (v5 == 1)
    {
      *v16 = *a2;
    }

    else
    {
      memcpy((v14 + 32), a2, v5);
    }
  }

  if (v15 < v5 || (v17 = &v16[v5], *v17 = *" ADD COLUMN ", *(v17 + 2) = 542002517, v15 - v5 <= 0xB))
  {
LABEL_45:
    __break(1u);
LABEL_46:
    JUMPOUT(0x19DC1E27CLL);
  }

  if (v6)
  {
    if (v6 == 1)
    {
      v17[12] = *a4;
    }

    else
    {
      memcpy(v17 + 12, a4, v6);
    }
  }

LABEL_24:
  WebCore::SQLiteDatabase::prepareStatementSlow();
  if (atomic_fetch_add_explicit(v14, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v14, v18);
  }

  if (v25)
  {
    v19 = qword_1ED640FE0;
    if (!os_log_type_enabled(qword_1ED640FE0, OS_LOG_TYPE_ERROR))
    {
      return 0;
    }

    *buf = 134218243;
    v27 = a1;
    v28 = 2081;
    ErrorMsg = WebCore::SQLiteDatabase::lastErrorMsg((a1 + 16));
    v22 = "%p - Database::addMissingColumnToTable Unable to prepare statement to add missing columns to table, error message: %{private}s";
    goto LABEL_34;
  }

  if (WebCore::SQLiteStatement::step(v24) == 101)
  {
    v20 = 1;
    goto LABEL_36;
  }

  v19 = qword_1ED640FE0;
  if (os_log_type_enabled(qword_1ED640FE0, OS_LOG_TYPE_ERROR))
  {
    v21 = WebCore::SQLiteDatabase::lastErrorMsg((a1 + 16));
    *buf = 134218243;
    v27 = a1;
    v28 = 2081;
    ErrorMsg = v21;
    v22 = "%p - Database::addMissingColumnToTable error executing statement to add missing columns to table, error message: %{private}s";
LABEL_34:
    _os_log_error_impl(&dword_19D52D000, v19, OS_LOG_TYPE_ERROR, v22, buf, 0x16u);
  }

  v20 = 0;
LABEL_36:
  if (!v25)
  {
    WebCore::SQLiteStatement::~SQLiteStatement(v24);
  }

  return v20;
}

void WebKit::EarlyHintsResourceLoader::~EarlyHintsResourceLoader(WebKit::EarlyHintsResourceLoader *this, void *a2)
{
  v3 = *(this + 1);
  *this = &unk_1F10FF518;
  *(this + 1) = 0;
  if (v3)
  {
    if (atomic_fetch_add(v3, 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, v3);
      WTF::fastFree(v3, a2);
    }
  }
}

{
  WebKit::EarlyHintsResourceLoader::~EarlyHintsResourceLoader(this, a2);

  bmalloc::api::tzoneFree(v2, v3);
}

uint64_t WebKit::EarlyHintsResourceLoader::addConsoleMessage(uint64_t result, void *a2, char a3, uint64_t a4)
{
  v4 = *(result + 8);
  if (v4)
  {
    v5 = *(v4 + 8);
    if (v5)
    {
      v13 = v5[12];
      if (v5[410])
      {
        v11 = v5[410];
        v12 = 1;
        v14 = &v13;
        v15 = a2;
        v16 = a3;
        v17 = a4;
        v18 = &v11;
        v6 = v5[11];
        v7 = IPC::Encoder::operator new(0x238, a2);
        *v7 = 2430;
        *(v7 + 2) = 0;
        *(v7 + 3) = 0;
        *(v7 + 1) = v6;
        *(v7 + 68) = 0;
        *(v7 + 70) = 0;
        *(v7 + 69) = 0;
        IPC::Encoder::encodeHeader(v7);
        v19 = v7;
        Messages::WebPage::AddConsoleMessage::encode<IPC::Encoder>(&v14, v7);
        (*(v5[3] + 32))(v5 + 3, &v19, 0);
        result = v19;
        v19 = 0;
        if (result)
        {
          IPC::Encoder::~Encoder(result, v8);
          return bmalloc::api::tzoneFree(v9, v10);
        }
      }

      else
      {
        result = 157;
        __break(0xC471u);
      }
    }
  }

  return result;
}

uint64_t WebKit::EarlyHintsResourceLoader::handleEarlyHintsResponse(uint64_t a1, WebCore::ResourceResponseBase *this)
{
  v131 = *MEMORY[0x1E69E9840];
  result = WebCore::ResourceResponseBase::httpStatusCode(this);
  if (result != 103)
  {
    __break(0xC471u);
    goto LABEL_192;
  }

  v5 = *(a1 + 8);
  if (v5)
  {
    v6 = *(v5 + 8);
    if (v6)
    {
      if (*(v6 + 251) == 1 && !*(v6 + 3588))
      {
        v7 = WebCore::ResourceResponseBase::url(this);
        result = WTF::URL::protocol(v7);
        if (result == "https" || v8 != 5)
        {
          if (result != "https" || v8 != 5)
          {
            return result;
          }
        }

        else if ((v8 & 0x100000000) != 0)
        {
          if (*result != 104 || *(result + 1) != 29812 || *(result + 3) != 29552)
          {
            return result;
          }
        }

        else if (*result != 104 || *(result + 2) != 0x73007000740074)
        {
          return result;
        }

        result = *WebCore::ResourceResponseBase::httpVersion(this);
        if (!result || (result = WTF::StringImpl::startsWith(), (result & 1) == 0))
        {
          if ((*(a1 + 16) & 1) == 0)
          {
            *(a1 + 16) = 1;
            WebCore::ResourceResponseBase::httpHeaderField();
            result = v95;
            if (v95)
            {
              if (!*(v95 + 1))
              {
                v95 = 0;
LABEL_179:
                if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
                {
                  return WTF::StringImpl::destroy(result, v9);
                }

                return result;
              }

              v10 = WebCore::ResourceResponseBase::url(this);
              v11 = *v10;
              if (*v10)
              {
                atomic_fetch_add_explicit(v11, 2u, memory_order_relaxed);
                v12 = *(v10 + 24);
                v93 = *(v10 + 8);
                v94 = v12;
                atomic_fetch_add_explicit(v11, 2u, memory_order_relaxed);
              }

              else
              {
                v13 = *(v10 + 24);
                v93 = *(v10 + 8);
                v94 = v13;
              }

              v110[0] = v11;
              *&v110[1] = v93;
              *&v110[3] = v94;
              MEMORY[0x19EB09300](v92, v110, a1, 0);
              v15 = v110[0];
              v110[0] = 0;
              if (v15 && atomic_fetch_add_explicit(v15, 0xFFFFFFFE, memory_order_relaxed) == 2)
              {
                WTF::StringImpl::destroy(v15, v14);
              }

              MEMORY[0x19EB0D930](v110, this);
              v16 = *(a1 + 8);
              if (!v16 || (v17 = *(v16 + 8)) == 0)
              {
                __break(0xC471u);
                JUMPOUT(0x19DC1EFCCLL);
              }

              WebCore::ResourceRequestBase::httpReferrer(v96, (v17 + 104));
              WebCore::ContentSecurityPolicy::didReceiveHeaders();
              v19 = v96[0];
              v96[0] = 0;
              if (v19 && atomic_fetch_add_explicit(v19, 0xFFFFFFFE, memory_order_relaxed) == 2)
              {
                WTF::StringImpl::destroy(v19, v18);
              }

              WTF::Vector<std::pair<WTF::String,WebCore::ContentSecurityPolicyHeaderType>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v110, v18);
              WebCore::LinkHeaderSet::LinkHeaderSet(&v89, &v95);
              v21 = v89;
              if (v91)
              {
                v22 = 96 * v91;
                while (1)
                {
                  if (*(v21 + 88) != 1)
                  {
                    goto LABEL_123;
                  }

                  if (!*v21)
                  {
                    goto LABEL_123;
                  }

                  if (!*(*v21 + 4))
                  {
                    goto LABEL_123;
                  }

                  v23 = *(v21 + 1);
                  if (!v23)
                  {
                    goto LABEL_123;
                  }

                  if (!*(v23 + 4))
                  {
                    goto LABEL_123;
                  }

                  v24 = *(v21 + 4);
                  if (v24)
                  {
                    if (*(v24 + 4))
                    {
                      goto LABEL_123;
                    }
                  }

                  v25 = *(v21 + 6);
                  if (v25)
                  {
                    if (*(v25 + 4))
                    {
                      goto LABEL_123;
                    }
                  }

                  v26 = *(v21 + 7);
                  if (v26)
                  {
                    if (*(v26 + 4))
                    {
                      goto LABEL_123;
                    }
                  }

                  if (!WTF::equalLettersIgnoringASCIICaseCommon<WTF::StringImpl>(v23, "preconnect", 0xAuLL))
                  {
                    goto LABEL_123;
                  }

                  v27 = WebCore::ResourceResponseBase::url(this);
                  v28 = *(a1 + 8);
                  if (!v28)
                  {
                    goto LABEL_123;
                  }

                  v29 = *(v28 + 8);
                  if (!v29)
                  {
                    goto LABEL_123;
                  }

                  v30 = *(v29 + 20);
                  *(v29 + 20) = v30 + 1;
                  v31 = v29;
                  if (*(v29 + 4121) == 1)
                  {
                    break;
                  }

LABEL_121:
                  if (v30)
                  {
                    *(v31 + 20) = v30;
                  }

                  else
                  {
                    (*(*v31 + 24))(v31);
                  }

LABEL_123:
                  v21 = (v21 + 96);
                  v22 -= 96;
                  if (!v22)
                  {
                    v21 = v89;
                    if (v91)
                    {
                      v73 = 96 * v91;
                      v74 = v89 + 40;
                      do
                      {
                        v75 = *(v74 + 5);
                        *(v74 + 5) = 0;
                        if (v75 && atomic_fetch_add_explicit(v75, 0xFFFFFFFE, memory_order_relaxed) == 2)
                        {
                          WTF::StringImpl::destroy(v75, v20);
                        }

                        v76 = *(v74 + 4);
                        *(v74 + 4) = 0;
                        if (v76 && atomic_fetch_add_explicit(v76, 0xFFFFFFFE, memory_order_relaxed) == 2)
                        {
                          WTF::StringImpl::destroy(v76, v20);
                        }

                        v77 = *(v74 + 3);
                        *(v74 + 3) = 0;
                        if (v77 && atomic_fetch_add_explicit(v77, 0xFFFFFFFE, memory_order_relaxed) == 2)
                        {
                          WTF::StringImpl::destroy(v77, v20);
                        }

                        v78 = *(v74 + 2);
                        *(v74 + 2) = 0;
                        if (v78 && atomic_fetch_add_explicit(v78, 0xFFFFFFFE, memory_order_relaxed) == 2)
                        {
                          WTF::StringImpl::destroy(v78, v20);
                        }

                        v79 = *(v74 + 1);
                        *(v74 + 1) = 0;
                        if (v79 && atomic_fetch_add_explicit(v79, 0xFFFFFFFE, memory_order_relaxed) == 2)
                        {
                          WTF::StringImpl::destroy(v79, v20);
                        }

                        v80 = *v74;
                        *v74 = 0;
                        if (v80 && atomic_fetch_add_explicit(v80, 0xFFFFFFFE, memory_order_relaxed) == 2)
                        {
                          WTF::StringImpl::destroy(v80, v20);
                        }

                        v81 = *(v74 - 1);
                        *(v74 - 1) = 0;
                        if (v81 && atomic_fetch_add_explicit(v81, 0xFFFFFFFE, memory_order_relaxed) == 2)
                        {
                          WTF::StringImpl::destroy(v81, v20);
                        }

                        v82 = *(v74 - 2);
                        *(v74 - 2) = 0;
                        if (v82 && atomic_fetch_add_explicit(v82, 0xFFFFFFFE, memory_order_relaxed) == 2)
                        {
                          WTF::StringImpl::destroy(v82, v20);
                        }

                        v83 = *(v74 - 3);
                        *(v74 - 3) = 0;
                        if (v83 && atomic_fetch_add_explicit(v83, 0xFFFFFFFE, memory_order_relaxed) == 2)
                        {
                          WTF::StringImpl::destroy(v83, v20);
                        }

                        v84 = *(v74 - 4);
                        *(v74 - 4) = 0;
                        if (v84 && atomic_fetch_add_explicit(v84, 0xFFFFFFFE, memory_order_relaxed) == 2)
                        {
                          WTF::StringImpl::destroy(v84, v20);
                        }

                        v85 = *(v74 - 5);
                        *(v74 - 5) = 0;
                        if (v85 && atomic_fetch_add_explicit(v85, 0xFFFFFFFE, memory_order_relaxed) == 2)
                        {
                          WTF::StringImpl::destroy(v85, v20);
                        }

                        v74 += 96;
                        v73 -= 96;
                      }

                      while (v73);
                      v21 = v89;
                    }

                    goto LABEL_173;
                  }
                }

                MEMORY[0x19EB01E00](&v103, v27, v21, 0);
                if (v104)
                {
                  v32 = WTF::URL::protocol(&v103);
                  if (v32 == "https" || v20 != 5)
                  {
                    if (v32 != "https" || v20 != 5)
                    {
                      goto LABEL_117;
                    }
                  }

                  else if ((v20 & 0x100000000) != 0)
                  {
                    if (*v32 != 104 || *(v32 + 1) != 29812 || *(v32 + 3) != 29552)
                    {
                      goto LABEL_117;
                    }
                  }

                  else if (*v32 != 104 || *(v32 + 2) != 0x73007000740074)
                  {
                    goto LABEL_117;
                  }

                  WebCore::ResourceRequestBase::url((v31 + 104));
                  if (WebCore::ContentSecurityPolicy::allowConnectToSource())
                  {
                    v33 = *(v31 + 4144);
                    ++*(v33 + 20);
                    v86 = v33;
                    v34 = *(v33 + 88);
                    v110[0] = *(v33 + 96);
                    v88 = WTF::HashMap<PAL::SessionID,std::unique_ptr<WebKit::NetworkSession>,WTF::DefaultHash<PAL::SessionID>,WTF::HashTraits<PAL::SessionID>,WTF::HashTraits<std::unique_ptr<WebKit::NetworkSession>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::get<WTF::IdentityHashTranslator<WTF::HashMap<PAL::SessionID,std::unique_ptr<WebKit::NetworkSession>,WTF::DefaultHash<PAL::SessionID>,WTF::HashTraits<PAL::SessionID>,WTF::HashTraits<std::unique_ptr<WebKit::NetworkSession>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<PAL::SessionID>>,PAL::SessionID>((v34 + 240), v110);
                    if (v88)
                    {
                      ++v88[4];
                    }

                    if (v86[5] == 1)
                    {
                      (*(*v86 + 8))(v86);
                    }

                    else
                    {
                      --v86[5];
                    }

                    if (v88)
                    {
                      memset(v110, 0, 44);
                      WebCore::ResourceRequest::ResourceRequest(v111);
                      v118 = 0;
                      v119 = 1;
                      v120 = 0;
                      v121[0] = 0;
                      v122 = 0;
                      v125 = 0;
                      v127 = 0;
                      v123[0] = 0;
                      v123[1] = 0;
                      v124 = 0;
                      v128 = 16777472;
                      v129 = 0;
                      v130 = 0;
                      v35 = *(a1 + 8);
                      if (!v35 || (v36 = *(v35 + 8)) == 0)
                      {
                        __break(0xC471u);
                        JUMPOUT(0x19DC1EFECLL);
                      }

                      v37 = *(v36 + 96);
                      *v110 = *(v36 + 80);
                      v110[2] = v37;
                      v38 = *(v21 + 5);
                      if (v38)
                      {
                        v39 = WTF::equalLettersIgnoringASCIICaseCommon<WTF::StringImpl>(v38, "anonymous", 9uLL) ^ 1;
                      }

                      else
                      {
                        v39 = 1;
                      }

                      BYTE2(v118) = v39;
                      LOWORD(v118) = 1;
                      v124 = 1;
                      v40 = v103;
                      if (v103)
                      {
                        atomic_fetch_add_explicit(v103, 2u, memory_order_relaxed);
                      }

                      v107 = v40;
                      v108 = v104;
                      v109 = v105;
                      WebCore::ResourceRequestBase::ResourceRequestBase(v96, &v107, 0);
                      v102 = 0;
                      v42 = v107;
                      v107 = 0;
                      if (v42 && atomic_fetch_add_explicit(v42, 0xFFFFFFFE, memory_order_relaxed) == 2)
                      {
                        WTF::StringImpl::destroy(v42, v41);
                      }

                      PartyForCookies = WebCore::ResourceRequestBase::firstPartyForCookies((v31 + 104));
                      v44 = *PartyForCookies;
                      if (*PartyForCookies)
                      {
                        atomic_fetch_add_explicit(v44, 2u, memory_order_relaxed);
                      }

                      v107 = v44;
                      v45 = *(PartyForCookies + 24);
                      v108 = *(PartyForCookies + 8);
                      v109 = v45;
                      if (v108)
                      {
                        WebCore::ResourceRequestBase::setFirstPartyForCookies(v96, &v107);
                      }

                      WebCore::ResourceRequestBase::httpUserAgent(&v106, (v31 + 104));
                      v47 = v106;
                      if (!v106)
                      {
                        goto LABEL_81;
                      }

                      if (*(v106 + 1))
                      {
                        WebCore::ResourceRequestBase::setHTTPUserAgent(v96, &v106);
                        v47 = v106;
                        v106 = 0;
                        if (!v47)
                        {
LABEL_81:
                          v48 = v107;
                          v107 = 0;
                          if (v48 && atomic_fetch_add_explicit(v48, 0xFFFFFFFE, memory_order_relaxed) == 2)
                          {
                            WTF::StringImpl::destroy(v48, v46);
                          }

                          WebCore::ResourceRequestBase::RequestData::operator=(v111, v96);
                          v50 = v97;
                          v97 = 0;
                          v51 = v112;
                          v112 = v50;
                          if (v51 && atomic_fetch_add_explicit(v51, 0xFFFFFFFE, memory_order_relaxed) == 2)
                          {
                            WTF::StringImpl::destroy(v51, v49);
                          }

                          v52 = v98;
                          v98 = 0;
                          v53 = v113;
                          v113 = v52;
                          if (v53 && atomic_fetch_add_explicit(v53, 0xFFFFFFFE, memory_order_relaxed) == 2)
                          {
                            WTF::StringImpl::destroy(v53, v49);
                          }

                          v54 = v99;
                          v99 = 0;
                          v55 = v114;
                          v114 = v54;
                          if (v55)
                          {
                            WTF::RefCounted<WebCore::FormData>::deref(v55);
                          }

                          v115 = v100;
                          v116 = v101;
                          v56 = v102;
                          v102 = 0;
                          v57 = cf;
                          cf = v56;
                          if (v57)
                          {
                            CFRelease(v57);
                          }

                          WebCore::ResourceRequest::~ResourceRequest(v96);
                          v58 = *(a1 + 8);
                          if (!v58 || (v59 = *(v58 + 8)) == 0)
                          {
                            __break(0xC471u);
                            JUMPOUT(0x19DC1F00CLL);
                          }

                          LOWORD(v128) = *(v59 + 3265);
                          v60 = WTF::fastMalloc(0x30);
                          v61 = WebKit::PreconnectTask::PreconnectTask(v60, v88, v110);
                          v96[0] = 0;
                          v87 = v61;
                          WebKit::PreconnectTask::start(v61, v96, 60.0);
                          v62 = v96[0];
                          v96[0] = 0;
                          if (v62)
                          {
                            (*(*v62 + 8))(v62);
                          }

                          v63 = v103;
                          if (v103)
                          {
                            atomic_fetch_add_explicit(v103, 2u, memory_order_relaxed);
                          }

                          v107 = v63;
                          WTF::makeString<WTF::ASCIILiteral,WTF::String,WTF::ASCIILiteral>("Preconnecting to ", 18, &v107, " due to early hint", 19, v96);
                          WebKit::EarlyHintsResourceLoader::addConsoleMessage(a1, 2, 4, v96);
                          v65 = v96[0];
                          v96[0] = 0;
                          if (v65 && atomic_fetch_add_explicit(v65, 0xFFFFFFFE, memory_order_relaxed) == 2)
                          {
                            WTF::StringImpl::destroy(v65, v64);
                          }

                          v66 = v107;
                          v107 = 0;
                          if (v66 && atomic_fetch_add_explicit(v66, 0xFFFFFFFE, memory_order_relaxed) == 2)
                          {
                            WTF::StringImpl::destroy(v66, v64);
                          }

                          if (v87[5] == 1)
                          {
                            (*(*v87 + 24))(v87);
                          }

                          else
                          {
                            --v87[5];
                          }

                          if (v127 == 1)
                          {
                            v72 = v126;
                            v126 = 0;
                            if (v72)
                            {
                            }
                          }

                          WTF::Vector<WTF::RefPtr<WebCore::BlobDataFileReference,WTF::RawPtrTraits<WebCore::BlobDataFileReference>,WTF::DefaultRefDerefTraits<WebCore::BlobDataFileReference>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v123, v64);
                          if (v122 == 1)
                          {
                            WebKit::NavigationActionData::~NavigationActionData(v121, v67);
                          }

                          WebCore::ResourceRequest::~ResourceRequest(v111);
                          v68 = v110[4];
                          v110[4] = 0;
                          if (v68)
                          {
                            WTF::ThreadSafeRefCounted<WebCore::SecurityOrigin,(WTF::DestructionThread)0>::deref(v68, v20);
                          }

                          v69 = v110[3];
                          v110[3] = 0;
                          if (v69)
                          {
                            WTF::ThreadSafeRefCounted<WebCore::SecurityOrigin,(WTF::DestructionThread)0>::deref(v69, v20);
                          }

                          v70 = v88[4];
                          if (!v70)
                          {
                            __break(0xC471u);
LABEL_192:
                            JUMPOUT(0x19DC1EFACLL);
                          }

                          v88[4] = v70 - 1;
                          goto LABEL_117;
                        }
                      }

                      else
                      {
                        v106 = 0;
                      }

                      if (atomic_fetch_add_explicit(v47, 0xFFFFFFFE, memory_order_relaxed) == 2)
                      {
                        WTF::StringImpl::destroy(v47, v46);
                      }

                      goto LABEL_81;
                    }
                  }
                }

LABEL_117:
                v71 = v103;
                v103 = 0;
                if (v71 && atomic_fetch_add_explicit(v71, 0xFFFFFFFE, memory_order_relaxed) == 2)
                {
                  WTF::StringImpl::destroy(v71, v20);
                }

                v30 = *(v31 + 20) - 1;
                goto LABEL_121;
              }

LABEL_173:
              if (v21)
              {
                v89 = 0;
                v90 = 0;
                WTF::fastFree(v21, v20);
              }

              MEMORY[0x19EB09310](v92);
              if (v11 && atomic_fetch_add_explicit(v11, 0xFFFFFFFE, memory_order_relaxed) == 2)
              {
                WTF::StringImpl::destroy(v11, v9);
              }

              result = v95;
              v95 = 0;
              if (result)
              {
                goto LABEL_179;
              }
            }
          }
        }
      }
    }
  }

  return result;
}