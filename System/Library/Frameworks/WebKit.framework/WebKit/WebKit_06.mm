atomic_uint *WebKit::NetworkProcessProxy::updateProcessAssertion(WebKit::NetworkProcessProxy *this)
{
  WebKit::WebProcessPool::allProcessPools(&v26);
  if (v27)
  {
    v3 = v26;
    v4 = 8 * v27;
    while (!*(*(*v3 + 784) + 8))
    {
      v3 += 8;
      v4 -= 8;
      if (!v4)
      {
        goto LABEL_5;
      }
    }

    result = WTF::Vector<WTF::Ref<WebKit::WebProcessPool,WTF::RawPtrTraits<WebKit::WebProcessPool>,WTF::DefaultRefDerefTraits<WebKit::WebProcessPool>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v26, v2);
    v12 = *(this + 57);
    if (!v12 || (v13 = *(v12 + 16)) == 0 || !*(v13 + 8) || (*(v12 + 40) & 1) == 0)
    {
      v14 = *(*(this + 20) + 8);
      if (v14)
      {
        atomic_fetch_add((v14 + 16), 1u);
        v15 = WebKit::ProcessThrottlerActivity::operator new(0x30, v11);
        v16 = "Networking for foreground view(s)";
        v17 = this + 144;
        v18 = 1;
LABEL_23:
        v23 = WebKit::ProcessThrottlerActivity::ProcessThrottlerActivity(v15, v17, v16, 34, v18, 0);
        v25 = *(this + 57);
        *(this + 57) = v23;
        if (v25)
        {
          WTF::RefCounted<WebKit::ProcessThrottlerActivity>::deref((v25 + 8), v24);
        }

        return WebKit::ProcessThrottler::deref((this + 144));
      }

      goto LABEL_27;
    }
  }

  else
  {
LABEL_5:
    WTF::Vector<WTF::Ref<WebKit::WebProcessPool,WTF::RawPtrTraits<WebKit::WebProcessPool>,WTF::DefaultRefDerefTraits<WebKit::WebProcessPool>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v26, v2);
    WebKit::WebProcessPool::allProcessPools(&v26);
    if (!v27)
    {
LABEL_9:
      result = WTF::Vector<WTF::Ref<WebKit::WebProcessPool,WTF::RawPtrTraits<WebKit::WebProcessPool>,WTF::DefaultRefDerefTraits<WebKit::WebProcessPool>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v26, v5);
      v10 = *(this + 57);
      *(this + 57) = 0;
      if (v10)
      {
        return WTF::RefCounted<WebKit::ProcessThrottlerActivity>::deref((v10 + 8), v9);
      }

      return result;
    }

    v6 = v26;
    v7 = 8 * v27;
    while (!*(*(*v6 + 800) + 8))
    {
      v6 += 8;
      v7 -= 8;
      if (!v7)
      {
        goto LABEL_9;
      }
    }

    result = WTF::Vector<WTF::Ref<WebKit::WebProcessPool,WTF::RawPtrTraits<WebKit::WebProcessPool>,WTF::DefaultRefDerefTraits<WebKit::WebProcessPool>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v26, v5);
    v20 = *(this + 57);
    if (!v20 || (v21 = *(v20 + 16)) == 0 || !*(v21 + 8) || *(v20 + 40) == 1)
    {
      v22 = *(*(this + 20) + 8);
      if (v22)
      {
        atomic_fetch_add((v22 + 16), 1u);
        v15 = WebKit::ProcessThrottlerActivity::operator new(0x30, v19);
        v16 = "Networking for background view(s)";
        v17 = this + 144;
        v18 = 0;
        goto LABEL_23;
      }

LABEL_27:
      __break(0xC471u);
      JUMPOUT(0x19D5B99B0);
    }
  }

  return result;
}

void WebKit::NetworkProcessProxy::addBackgroundStateObservers(WebKit::NetworkProcessProxy *this)
{
  v2 = [MEMORY[0x1E696AD88] defaultCenter];
  v3 = [MEMORY[0x1E69DC668] sharedApplication];
  WTF::WeakPtrFactory<WebPushD::PushServiceConnection,WTF::DefaultWeakPtrImpl>::initializeIfNeeded(this + 2, this);
  v4 = *(this + 1);
  atomic_fetch_add(v4, 1u);
  v5 = malloc_type_malloc(0x28uLL, 0x10E004053C0834CuLL);
  v6 = *MEMORY[0x1E69DDAC8];
  *v5 = MEMORY[0x1E69E9818];
  v5[1] = 50331650;
  v5[2] = WTF::BlockPtr<void ()(NSNotification *)>::fromCallable<WebKit::NetworkProcessProxy::addBackgroundStateObservers(void)::$_0>(WebKit::NetworkProcessProxy::addBackgroundStateObservers(void)::$_0)::{lambda(void *,NSNotification *)#1}::__invoke;
  v5[3] = &WTF::BlockPtr<void ()(NSNotification *)>::fromCallable<WebKit::NetworkProcessProxy::addBackgroundStateObservers(void)::$_0>(WebKit::NetworkProcessProxy::addBackgroundStateObservers(void)::$_0)::descriptor;
  v5[4] = v4;
  v7 = [v2 addObserverForName:v6 object:v3 queue:0 usingBlock:v5];
  v8 = v7;
  if (v7)
  {
    v9 = v7;
  }

  v10 = *(this + 71);
  *(this + 71) = v8;
  if (v10)
  {
  }

  _Block_release(v5);
  v11 = [MEMORY[0x1E696AD88] defaultCenter];
  v12 = [MEMORY[0x1E69DC668] sharedApplication];
  WTF::WeakPtrFactory<WebPushD::PushServiceConnection,WTF::DefaultWeakPtrImpl>::initializeIfNeeded(this + 2, this);
  v13 = *(this + 1);
  atomic_fetch_add(v13, 1u);
  v14 = malloc_type_malloc(0x28uLL, 0x10E004053C0834CuLL);
  v15 = *MEMORY[0x1E69DDBC0];
  *v14 = MEMORY[0x1E69E9818];
  v14[1] = 50331650;
  v14[2] = WTF::BlockPtr<void ()(NSNotification *)>::fromCallable<WebKit::NetworkProcessProxy::addBackgroundStateObservers(void)::$_1>(WebKit::NetworkProcessProxy::addBackgroundStateObservers(void)::$_1)::{lambda(void *,NSNotification *)#1}::__invoke;
  v14[3] = &WTF::BlockPtr<void ()(NSNotification *)>::fromCallable<WebKit::NetworkProcessProxy::addBackgroundStateObservers(void)::$_1>(WebKit::NetworkProcessProxy::addBackgroundStateObservers(void)::$_1)::descriptor;
  v14[4] = v13;
  v16 = [v11 addObserverForName:v15 object:v12 queue:0 usingBlock:v14];
  v17 = v16;
  if (v16)
  {
    v18 = v16;
  }

  v19 = *(this + 72);
  *(this + 72) = v17;
  if (v19)
  {
  }

  _Block_release(v14);
}

void sub_19D5B9BC8(_Unwind_Exception *exception_object, void *a2)
{
  if (v2)
  {
    if (atomic_fetch_add(v2, 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, v2);
      WTF::fastFree(v2, a2);
    }
  }

  _Unwind_Resume(exception_object);
}

void IPC::ArgumentCoder<WebKit::CoreIPCCGColorSpace,void>::decode(IPC::Decoder *a1@<X0>, _BYTE *a2@<X8>)
{
  IPC::Decoder::decode<mpark::variant<WebCore::ColorSpace,WTF::RetainPtr<__CFString const*>,WTF::RetainPtr<void const*>>>(a1, &v11);
  if (*a1)
  {
    if (v13)
    {
      LOBYTE(v7) = 0;
      v8 = -1;
      if (v12)
      {
        if (v12 != 1 && v12 != 2)
        {
LABEL_6:
          mpark::detail::copy_constructor<mpark::detail::traits<WebCore::ColorSpace,WTF::RetainPtr<__CFString const*>,WTF::RetainPtr<void const*>>,(mpark::detail::Trait)1>::copy_constructor(&v9, &v7);
          *a2 = 0;
          a2[8] = -1;
          v4 = v10;
          if (v10)
          {
            if (v10 != 1 && v10 != 2)
            {
              goto LABEL_9;
            }

            v6 = v9;
            v9 = 0;
            *a2 = v6;
          }

          else
          {
            *a2 = v9;
          }

          a2[8] = v4;
LABEL_9:
          a2[16] = 1;
          mpark::variant<WebCore::ColorSpace,WTF::RetainPtr<__CFString const*>,WTF::RetainPtr<void const*>>::~variant(&v9);
          mpark::variant<WebCore::ColorSpace,WTF::RetainPtr<__CFString const*>,WTF::RetainPtr<void const*>>::~variant(&v7);
          goto LABEL_10;
        }

        v5 = v11;
        v11 = 0;
        v7 = v5;
      }

      else
      {
        LOBYTE(v7) = v11;
      }

      v8 = v12;
      goto LABEL_6;
    }

    __break(1u);
  }

  *a2 = 0;
  a2[16] = 0;
LABEL_10:
  if (v13 == 1)
  {
    mpark::variant<WebCore::ColorSpace,WTF::RetainPtr<__CFString const*>,WTF::RetainPtr<void const*>>::~variant(&v11);
  }
}

void sub_19D5B9D20(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14, uint64_t a15, char a16)
{
  mpark::variant<WebCore::ColorSpace,WTF::RetainPtr<__CFString const*>,WTF::RetainPtr<void const*>>::~variant(&a10);
  if (a16 == 1)
  {
    mpark::variant<WebCore::ColorSpace,WTF::RetainPtr<__CFString const*>,WTF::RetainPtr<void const*>>::~variant(&a14);
  }

  _Unwind_Resume(a1);
}

uint64_t WebKit::AuxiliaryProcessProxy::sendWithAsyncReply<Messages::NetworkProcess::GetResourceLoadStatisticsDataSummary,WTF::CompletionHandler<void ()(WTF::Vector<WebKit::ITPThirdPartyData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&)>>(uint64_t a1, void **a2, uint64_t *a3, uint64_t a4, char a5, int a6)
{
  v12 = IPC::Encoder::operator new(0x238, a2);
  *v12 = 618;
  *(v12 + 2) = 0;
  *(v12 + 3) = 0;
  *(v12 + 1) = a4;
  *(v12 + 68) = 0;
  *(v12 + 70) = 0;
  *(v12 + 69) = 0;
  IPC::Encoder::encodeHeader(v12);
  v26 = v12;
  IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(v12, **a2);
  v13 = *a3;
  *a3 = 0;
  v14 = WTF::fastMalloc(0x10);
  *v14 = &unk_1F111FD38;
  v14[1] = v13;
  if (WTF::ObjectIdentifierGeneric<IPC::AsyncReplyIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>::m_generationProtected == 1)
  {
    result = 141;
    __break(0xC471u);
  }

  else
  {
    v15 = v14;
    IdentifierInternal = WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>::generateIdentifierInternal();
    v24[0] = v15;
    v24[1] = IdentifierInternal;
    v25 = 1;
    v18 = WebKit::AuxiliaryProcessProxy::sendMessage(a1, &v26, a5, v24, a6);
    if (v25 == 1)
    {
      v19 = v24[0];
      v24[0] = 0;
      if (v19)
      {
        (*(*v19 + 8))(v19);
      }
    }

    v20 = v26;
    v26 = 0;
    if (v20)
    {
      IPC::Encoder::~Encoder(v20, v17);
      bmalloc::api::tzoneFree(v22, v23);
    }

    if (v18)
    {
      return IdentifierInternal;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t WebKit::NetworkProcessProxy::getResourceLoadStatisticsDataSummary(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v8 = a2;
  v3 = *(a1 + 80);
  if (v3 && (*(v3 + 104) & 1) != 0 || *(a1 + 88))
  {
    v7[0] = &v8;
    return WebKit::AuxiliaryProcessProxy::sendWithAsyncReply<Messages::NetworkProcess::GetResourceLoadStatisticsDataSummary,WTF::CompletionHandler<void ()(WTF::Vector<WebKit::ITPThirdPartyData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&)>>(a1, v7, a3, 0, 0, 1);
  }

  else
  {
    v7[0] = 0;
    v7[1] = 0;
    v5 = *a3;
    *a3 = 0;
    (*(*v5 + 16))(v5, v7);
    (*(*v5 + 8))(v5);
    return WTF::Vector<WebKit::ITPThirdPartyData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v7, v6);
  }
}

void IPC::ArgumentCoder<WTF::RetainPtr<CGColorSpace *>,void>::decode(IPC::Decoder *a1@<X0>, uint64_t a2@<X8>)
{
  IPC::ArgumentCoder<WebKit::CoreIPCCGColorSpace,void>::decode(a1, v5);
  if (v6 == 1)
  {
    if (*a1)
    {
      WebKit::CoreIPCCGColorSpace::toCF(v5, &v4);
      *a2 = v4;
      *(a2 + 8) = 1;
      if ((v6 & 1) == 0)
      {
        return;
      }

      goto LABEL_4;
    }
  }

  else
  {
    IPC::Decoder::markInvalid(a1);
    if (!*a1)
    {
      *a2 = 0;
      *(a2 + 8) = 0;
      return;
    }

    __break(1u);
  }

  *a2 = 0;
  *(a2 + 8) = 0;
LABEL_4:
  mpark::variant<WebCore::ColorSpace,WTF::RetainPtr<__CFString const*>,WTF::RetainPtr<void const*>>::~variant(v5);
}

void sub_19D5BA03C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, char a12)
{
  if (a12 == 1)
  {
    mpark::variant<WebCore::ColorSpace,WTF::RetainPtr<__CFString const*>,WTF::RetainPtr<void const*>>::~variant(&a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t WTF::Detail::CallableWrapper<WebKit::WebsiteDataStore::getResourceLoadStatisticsDataSummary(WTF::CompletionHandler<void ()(WTF::Vector<WebKit::ITPThirdPartyData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&)> &&)::$_0,void>::~CallableWrapper(uint64_t a1)
{
  *a1 = &unk_1F11218F0;
  WTF::Ref<WebKit::WebsiteDataStore::getResourceLoadStatisticsDataSummary(WTF::CompletionHandler<void ()(WTF::Vector<WebKit::ITPThirdPartyData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&)> &&)::LocalCallbackAggregator,WTF::RawPtrTraits<WTF::CompletionHandler<void ()(WTF::Vector<WebKit::ITPThirdPartyData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&)> &>,WTF::DefaultRefDerefTraits<WTF::CompletionHandler<void ()(WTF::Vector<WebKit::ITPThirdPartyData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&)> &>>::~Ref((a1 + 24));
  v3 = *(a1 + 16);
  *(a1 + 16) = 0;
  if (v3)
  {
    CFRelease(*(v3 + 8));
  }

  return WTF::fastFree(a1, v2);
}

{
  *a1 = &unk_1F11218F0;
  WTF::Ref<WebKit::WebsiteDataStore::getResourceLoadStatisticsDataSummary(WTF::CompletionHandler<void ()(WTF::Vector<WebKit::ITPThirdPartyData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&)> &&)::LocalCallbackAggregator,WTF::RawPtrTraits<WTF::CompletionHandler<void ()(WTF::Vector<WebKit::ITPThirdPartyData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&)> &>,WTF::DefaultRefDerefTraits<WTF::CompletionHandler<void ()(WTF::Vector<WebKit::ITPThirdPartyData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&)> &>>::~Ref((a1 + 24));
  v2 = *(a1 + 16);
  *(a1 + 16) = 0;
  if (v2)
  {
    CFRelease(*(v2 + 8));
  }

  return a1;
}

uint64_t IPC::Decoder::decode<WebCore::ColorSpace>(IPC::Decoder *a1)
{
  result = IPC::ArgumentCoder<WebCore::ColorSpace,void>::decode<IPC::Decoder>(a1);
  if ((result & 0x100) == 0)
  {
    v3 = result;
    IPC::Decoder::markInvalid(a1);
    return v3;
  }

  return result;
}

void WebKit::CoreIPCCGColorSpace::toCF(WebKit::CoreIPCCGColorSpace *this@<X0>, CGColorSpaceRef *a2@<X8>)
{
  v3 = *(this + 8);
  if (v3 == 255)
  {
    v4 = -1;
  }

  else
  {
    v4 = *(this + 8);
  }

  if (!v4)
  {
    if (!*(this + 8))
    {
      v5 = WebCore::cachedNullableCGColorSpace(*this);
      v6 = v5;
      if (v5)
      {
        CFRetain(v5);
      }

      goto LABEL_8;
    }

LABEL_20:
    mpark::throw_bad_variant_access(this);
  }

  if (v4 == 1)
  {
    if (v3 != 1)
    {
      goto LABEL_20;
    }

    v7 = *this;
    if (*this)
    {
      CFRetain(*this);
    }

    v8 = CGColorSpaceCreateWithName(v7);
  }

  else
  {
    if (v3 != 2)
    {
      goto LABEL_20;
    }

    v7 = *this;
    if (*this)
    {
      CFRetain(*this);
    }

    v8 = CGColorSpaceCreateWithPropertyList(v7);
  }

  v6 = v8;
  if (v7)
  {
    CFRelease(v7);
  }

LABEL_8:
  *a2 = v6;
}

void sub_19D5BA1C4(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    CFRelease(v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t WebCore::cachedNullableCGColorSpace(WebCore *a1)
{
  if (a1 == 17)
  {
    return WebCore::sRGBColorSpaceSingleton(a1);
  }

  if (a1 > 11)
  {
    if (a1 <= 14)
    {
      if (a1 == 12)
      {
        return MEMORY[0x1EEE59CA0]();
      }

      return 0;
    }

    switch(a1)
    {
      case 0xF:
        return MEMORY[0x1EEE595A0]();
      case 0x10:
        return MEMORY[0x1EEE59978]();
      case 0x12:
        return MEMORY[0x1EEE594A0]();
      default:
        return 0;
    }
  }

  else if (a1 <= 4)
  {
    if (a1 <= 1)
    {
      if (a1)
      {
        if (a1 != 1)
        {
          return 0;
        }

        return MEMORY[0x1EEE59A88]();
      }

      else
      {
        return MEMORY[0x1EEE59EB8]();
      }
    }

    else if (a1 == 2)
    {
      return MEMORY[0x1EEE5A390]();
    }

    else if (a1 == 3)
    {
      return MEMORY[0x1EEE5A260]();
    }

    else
    {
      return MEMORY[0x1EEE5A2F0]();
    }
  }

  else
  {
    switch(a1)
    {
      case 7:
        return MEMORY[0x1EEE59EC8]();
      case 5:
        return MEMORY[0x1EEE5A1B0]();
      case 6:
        return MEMORY[0x1EEE5A268]();
      default:
        return 0;
    }
  }
}

uint64_t dlsym_callback_notify(const char *a1)
{
  bufsize = 1025;
  if (_NSGetExecutablePath(byte_1ED641F58, &bufsize) == -1)
  {
    return WTFLogAlways();
  }

  v2 = analytics_send_event_lazyPtr();
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = ___ZL21dlsym_callback_notifyPKc_block_invoke;
  v4[3] = &__block_descriptor_40_e30___NSObject_OS_xpc_object__8__0l;
  v4[4] = a1;
  return v2("com.apple.dlsym_callback.webkit", v4);
}

void *___ZL21dlsym_callback_notifyPKc_block_invoke(uint64_t a1)
{
  empty = xpc_dictionary_create_empty();
  v3 = empty;
  if (empty)
  {
    xpc_dictionary_set_string(empty, "symbol", *(a1 + 32));
    xpc_dictionary_set_string(v3, "executable_path", byte_1ED641F58);
  }

  else
  {
    WTFLogAlways();
  }

  return v3;
}

uint64_t IPC::Decoder::decode<WTF::OptionSet<WebCore::ContentsFormat>>(IPC::Decoder *a1)
{
  v2 = IPC::ArgumentCoder<WTF::OptionSet<WebCore::ContentsFormat>,void>::decode<IPC::Decoder>(a1);
  if ((v2 & 0x100) == 0)
  {
    IPC::Decoder::markInvalid(a1);
  }

  return v2;
}

void IPC::ArgumentCoder<std::optional<WebKit::WebProcessDataStoreParameters>,void>::decode<IPC::Decoder>(uint64_t a1, IPC::Decoder *a2)
{
  v21 = *MEMORY[0x1E69E9840];
  v4 = IPC::Decoder::decode<BOOL>(a2);
  if ((v4 & 0x100) == 0)
  {
    goto LABEL_9;
  }

  if (v4)
  {
    IPC::Decoder::decode<WebKit::WebProcessDataStoreParameters>(a2, &v11);
    if (v20)
    {
      *a1 = v11;
      v5 = v12;
      v12 = 0u;
      *(a1 + 8) = v5;
      v6 = v13;
      v7 = v14;
      v13 = 0;
      *(a1 + 24) = v6;
      *(a1 + 32) = v7;
      v8 = v15;
      v15 = 0u;
      *(a1 + 40) = v8;
      *(a1 + 56) = v16;
      v9 = v17;
      v17 = 0u;
      *(a1 + 64) = v9;
      v10 = v18;
      v18 = 0;
      *(a1 + 80) = v10;
      *(a1 + 88) = v19;
      *(a1 + 96) = 1;
      *(a1 + 104) = 1;
LABEL_5:
      WebKit::WebProcessDataStoreParameters::~WebProcessDataStoreParameters(&v11);
      return;
    }

LABEL_9:
    *a1 = 0;
    *(a1 + 104) = 0;
    return;
  }

  LOBYTE(v11) = 0;
  v20 = 0;
  std::__optional_move_base<WebKit::WebProcessDataStoreParameters,false>::__optional_move_base[abi:sn200100](a1, &v11);
  *(a1 + 104) = 1;
  if (v20 == 1)
  {
    goto LABEL_5;
  }
}

void IPC::Decoder::decode<std::optional<WebKit::WebProcessDataStoreParameters>>(uint64_t a1, IPC::Decoder *a2)
{
  IPC::ArgumentCoder<std::optional<WebKit::WebProcessDataStoreParameters>,void>::decode<IPC::Decoder>(a1, a2);
  if ((*(a1 + 104) & 1) == 0)
  {
    IPC::Decoder::markInvalid(a2);
  }
}

void sub_19D5BA58C(_Unwind_Exception *exception_object)
{
  if (*(v1 + 104) == 1 && *(v1 + 96) == 1)
  {
    WebKit::WebProcessDataStoreParameters::~WebProcessDataStoreParameters(v1);
  }

  _Unwind_Resume(exception_object);
}

__n128 std::__optional_move_base<WebKit::WebProcessDataStoreParameters,false>::__optional_move_base[abi:sn200100](uint64_t a1, uint64_t *a2)
{
  *a1 = 0;
  *(a1 + 96) = 0;
  if (*(a2 + 96) == 1)
  {
    v2 = *a2;
    v3 = a2[1];
    a2[1] = 0;
    *a1 = v2;
    *(a1 + 8) = v3;
    v4 = *(a2 + 1);
    *(a2 + 1) = 0u;
    *(a1 + 16) = v4;
    *(a1 + 32) = a2[4];
    v5 = *(a2 + 5);
    *(a2 + 5) = 0u;
    *(a1 + 40) = v5;
    *(a1 + 56) = *(a2 + 56);
    *(a1 + 64) = 0;
    v6 = a2[8];
    a2[8] = 0;
    *(a1 + 64) = v6;
    *(a1 + 72) = 0;
    result = *(a2 + 9);
    *(a2 + 9) = 0u;
    *(a1 + 72) = result;
    *(a1 + 88) = *(a2 + 44);
    *(a1 + 96) = 1;
  }

  return result;
}

void IPC::ArgumentCoder<std::optional<WebKit::SandboxExtensionHandle>,void>::decode<IPC::Decoder>(IPC::Decoder *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *(a1 + 2);
  if (*(a1 + 1) <= &v3[-*a1])
  {
    v7 = a1;
    IPC::Decoder::markInvalid(a1);
    a1 = v7;
    goto LABEL_12;
  }

  *(a1 + 2) = v3 + 1;
  if (!v3)
  {
LABEL_12:
    v8 = a1;
    IPC::Decoder::markInvalid(a1);
    a1 = v8;
    goto LABEL_13;
  }

  v4 = *v3;
  if (v4 >= 2)
  {
LABEL_13:
    IPC::Decoder::markInvalid(a1);
    *a2 = 0;
    a2[16] = 0;
    return;
  }

  if (v4)
  {
    IPC::Decoder::decode<WebKit::SandboxExtensionHandle>(a1, &v9);
    if (v10)
    {
      v5 = v9;
      v9 = 0;
      *a2 = v5;
      v6 = 1;
      a2[8] = 1;
      WebKit::SandboxExtensionHandle::~SandboxExtensionHandle(&v9);
    }

    else
    {
      v6 = 0;
      *a2 = 0;
    }

    a2[16] = v6;
  }

  else
  {
    *a2 = 0;
    a2[8] = 0;
    a2[16] = 1;
  }
}

void IPC::Decoder::decode<std::optional<WebKit::SandboxExtensionHandle>>(_BYTE *a1, IPC::Decoder *a2)
{
  IPC::ArgumentCoder<std::optional<WebKit::SandboxExtensionHandle>,void>::decode<IPC::Decoder>(a2, a1);
  if ((a1[16] & 1) == 0)
  {
    IPC::Decoder::markInvalid(a2);
  }
}

void sub_19D5BA748(_Unwind_Exception *exception_object)
{
  if (*(v1 + 16) == 1 && *(v1 + 8) == 1)
  {
    WebKit::SandboxExtensionHandle::~SandboxExtensionHandle(v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t IPC::Decoder::decode<WebCore::WritingDirection>(uint64_t *a1)
{
  result = IPC::ArgumentCoder<WebCore::WritingDirection,void>::decode<IPC::Decoder>(a1);
  if ((result & 0x100) == 0)
  {
    v3 = *a1;
    v4 = a1[1];
    *a1 = 0;
    a1[1] = 0;
    v5 = a1[3];
    if (v5)
    {
      v6 = v4 == 0;
    }

    else
    {
      v6 = 1;
    }

    if (!v6)
    {
      v7 = result;
      (*(*v5 + 16))(v5, v3);
      return v7;
    }
  }

  return result;
}

IPC::Decoder *IPC::Decoder::decode<WebCore::Color>@<X0>(IPC::Decoder *a1@<X0>, uint64_t a2@<X8>)
{
  result = IPC::ArgumentCoder<WebCore::Color,void>::decode(a1, a2);
  if ((*(a2 + 8) & 1) == 0)
  {
    return IPC::Decoder::markInvalid(a1);
  }

  return result;
}

IPC::Decoder *IPC::ArgumentCoder<WebCore::Color,void>::decode@<X0>(IPC::Decoder *this@<X0>, uint64_t a2@<X8>)
{
  v2 = this;
  v4 = *(this + 2);
  v5 = *this;
  if (*(this + 1) <= &v4[-*this])
  {
    IPC::Decoder::markInvalid(this);
    goto LABEL_16;
  }

  *(this + 2) = v4 + 1;
  if (!v4)
  {
LABEL_16:
    IPC::Decoder::markInvalid(v2);
    goto LABEL_17;
  }

  v6 = *v4;
  if (v6 >= 2)
  {
    goto LABEL_17;
  }

  if (v6)
  {
    this = IPC::ArgumentCoder<WebCore::ColorDataForIPC,void>::decode(this, &v9);
    if (v10 == 1)
    {
      v5 = *v2;
      goto LABEL_7;
    }

LABEL_17:
    IPC::Decoder::markInvalid(v2);
    this = IPC::Decoder::markInvalid(v2);
    if (*v2)
    {
      __break(1u);
    }

    goto LABEL_19;
  }

LABEL_7:
  if (!v5)
  {
LABEL_19:
    *a2 = 0;
    *(a2 + 8) = 0;
    return this;
  }

  this = WebCore::Color::Color();
  *a2 = 0;
  v8 = v9;
  if (&v9 == a2)
  {
    *(a2 + 8) = 1;
    if ((v8 & 0x8000000000000) != 0)
    {
      this = (v8 & 0xFFFFFFFFFFFFLL);
      if (atomic_fetch_add((v8 & 0xFFFFFFFFFFFFLL), 0xFFFFFFFF) == 1)
      {
        atomic_store(1u, this);
        return WTF::fastFree(this, v7);
      }
    }
  }

  else
  {
    *a2 = v9;
    *(a2 + 8) = 1;
  }

  return this;
}

unint64_t IPC::Decoder::decode<WebCore::IntSize>(IPC::Decoder *a1)
{
  result = IPC::ArgumentCoder<WebCore::IntSize,void>::decode(a1);
  if ((v3 & 1) == 0)
  {
    v4 = result;
    IPC::Decoder::markInvalid(a1);
    return v4;
  }

  return result;
}

unint64_t IPC::ArgumentCoder<WebKit::WebBackForwardListCounts,void>::decode(IPC::Decoder *this)
{
  v1 = this;
  v2 = *(this + 1);
  v3 = ((*(this + 2) + 3) & 0xFFFFFFFFFFFFFFFCLL);
  v4 = *this;
  v5 = v3 - *this;
  v6 = v2 >= v5;
  v7 = v2 - v5;
  if (v6 && v7 > 3)
  {
    v9 = v3 + 1;
    *(this + 2) = v3 + 1;
    if (v3)
    {
      v10 = *v3 | 0x100000000;
      goto LABEL_8;
    }

    goto LABEL_22;
  }

  while (1)
  {
    IPC::Decoder::markInvalid(v1);
LABEL_22:
    IPC::Decoder::markInvalid(v1);
    v10 = 0;
    v2 = *(v1 + 1);
    v9 = *(v1 + 2);
    v4 = *v1;
LABEL_8:
    v11 = ((v9 + 3) & 0xFFFFFFFFFFFFFFFCLL);
    v6 = v2 >= v11 - v4;
    v12 = v2 - (v11 - v4);
    if (v6 && v12 > 3)
    {
      *(v1 + 2) = v11 + 1;
      if (v11)
      {
        v14 = *v11 | 0x100000000;
        goto LABEL_15;
      }
    }

    else
    {
      v18 = v1;
      v16 = v10;
      IPC::Decoder::markInvalid(v18);
      v10 = v16;
      v1 = v18;
    }

    v17 = v10;
    IPC::Decoder::markInvalid(v1);
    v10 = v17;
    v14 = 0;
    v4 = *v1;
LABEL_15:
    if (!v4)
    {
      return 0;
    }

    if ((v10 & 0x100000000) != 0 && (v14 & 0x100000000) != 0)
    {
      return v10 | (v14 << 32);
    }

    __break(1u);
  }
}

uint64_t IPC::ArgumentCoder<WebKit::AccessibilityPreferences,void>::decode@<X0>(IPC::Decoder *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = IPC::Decoder::decode<WebKit::WebKitAXValueState>(a1);
  v5 = IPC::Decoder::decode<WebKit::WebKitAXValueState>(a1);
  v6 = IPC::Decoder::decode<WebKit::WebKitAXValueState>(a1);
  v7 = IPC::Decoder::decode<WebKit::WebKitAXValueState>(a1);
  v8 = IPC::Decoder::decode<WebKit::WebKitAXValueState>(a1);
  v9 = IPC::Decoder::decode<BOOL>(a1);
  v10 = IPC::Decoder::decode<BOOL>(a1);
  result = IPC::Decoder::decode<BOOL>(a1);
  v12 = *a1;
  if (!*a1)
  {
    *a2 = 0;
    goto LABEL_11;
  }

  if (HIDWORD(v4) && HIDWORD(v5) && HIDWORD(v6) && HIDWORD(v7) && HIDWORD(v8) && (v9 & 0x100) != 0 && (v10 & 0x100) != 0 && (result & 0x100) != 0)
  {
    *a2 = v4;
    *(a2 + 4) = v5;
    *(a2 + 8) = v6;
    *(a2 + 12) = v7;
    *(a2 + 16) = v8;
    *(a2 + 20) = v9;
    *(a2 + 21) = v10;
    LOBYTE(v12) = 1;
    *(a2 + 22) = result;
LABEL_11:
    *(a2 + 24) = v12;
    return result;
  }

  __break(1u);
  return result;
}

uint64_t IPC::Decoder::decode<WebKit::AccessibilityPreferences>@<X0>(IPC::Decoder *a1@<X0>, uint64_t a2@<X8>)
{
  result = IPC::ArgumentCoder<WebKit::AccessibilityPreferences,void>::decode(a1, a2);
  if ((*(a2 + 24) & 1) == 0)
  {

    return IPC::Decoder::markInvalid(a1);
  }

  return result;
}

uint64_t IPC::Decoder::decode<WebKit::WebKitAXValueState>(IPC::Decoder *a1)
{
  v2 = IPC::Decoder::decode<float>(a1);
  if ((BYTE4(v2) & ((v2 + 2) < 4)) != 0)
  {
    v3 = v2 | 0x100000000;
  }

  else
  {
    v3 = 0;
  }

  if ((v3 & 0x100000000) == 0)
  {
    IPC::Decoder::markInvalid(a1);
  }

  return v3;
}

WTF::StringImpl **IPC::ArgumentCoder<WTF::HashMap<WebCore::RegistrableDomain,WTF::String,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>,void>::decode<IPC::Decoder>@<X0>(WTF::StringImpl **this@<X0>, _BYTE *a2@<X8>)
{
  v2 = this;
  v4 = this[1];
  v5 = ((this[2] + 3) & 0xFFFFFFFFFFFFFFFCLL);
  v6 = v5 - *this;
  v7 = v4 >= v6;
  v8 = v4 - v6;
  if (!v7 || v8 <= 3)
  {
LABEL_33:
    IPC::Decoder::markInvalid(v2);
    goto LABEL_34;
  }

  this[2] = (v5 + 4);
  if (!v5)
  {
LABEL_34:
    this = IPC::Decoder::markInvalid(v2);
    *a2 = 0;
    a2[8] = 0;
    return this;
  }

  v10 = *v5;
  v22 = 0;
  if (v10)
  {
    while (1)
    {
      IPC::Decoder::decode<WebCore::RegistrableDomain>(v2, &v20);
      if ((v21 & 1) == 0)
      {
        *a2 = 0;
        a2[8] = 0;
        goto LABEL_39;
      }

      IPC::Decoder::decode<WTF::String>(v2, &v18);
      v13 = v19;
      if ((v19 & 1) == 0)
      {
        goto LABEL_36;
      }

      if ((v21 & 1) == 0)
      {
LABEL_32:
        __break(1u);
        goto LABEL_33;
      }

      if (v20 == -1)
      {
        *a2 = 0;
        a2[8] = 0;
LABEL_37:
        v15 = v18;
        v18 = 0;
        if (v15 && atomic_fetch_add_explicit(v15, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v15, v11);
        }

        goto LABEL_38;
      }

      if (WTF::equal(v20, 0, v12))
      {
        break;
      }

      if ((v21 & 1) == 0 || (v19 & 1) == 0)
      {
        goto LABEL_32;
      }

      this = WTF::HashMap<WebCore::RegistrableDomain,WTF::String,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::add<WTF::String>(&v22, &v20, &v18, v17);
      v13 = v19;
      if ((v17[16] & 1) == 0)
      {
        goto LABEL_36;
      }

      if (v19)
      {
        this = v18;
        v18 = 0;
        if (this)
        {
          if (atomic_fetch_add_explicit(this, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            this = WTF::StringImpl::destroy(this, v11);
          }
        }
      }

      if (v21 == 1)
      {
        this = v20;
        v20 = 0;
        if (this)
        {
          if (atomic_fetch_add_explicit(this, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            this = WTF::StringImpl::destroy(this, v11);
          }
        }
      }

      if (!--v10)
      {
        v14 = v22;
        goto LABEL_24;
      }
    }

    v13 = v19;
LABEL_36:
    *a2 = 0;
    a2[8] = 0;
    if (v13)
    {
      goto LABEL_37;
    }

LABEL_38:
    if (v21 == 1)
    {
      v16 = v20;
      v20 = 0;
      if (v16)
      {
        if (atomic_fetch_add_explicit(v16, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v16, v11);
        }
      }
    }

LABEL_39:
    this = v22;
    if (v22)
    {
      return WTF::HashTable<WebCore::RegistrableDomain,WTF::KeyValuePair<WebCore::RegistrableDomain,WTF::String>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebCore::RegistrableDomain,WTF::String>>,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashMap<WebCore::RegistrableDomain,WTF::String,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::FastMalloc>::deallocateTable(v22, v11);
    }
  }

  else
  {
    v14 = 0;
LABEL_24:
    *a2 = v14;
    a2[8] = 1;
  }

  return this;
}

void sub_19D5BAE88(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, WTF::StringImpl *a12, char a13, WTF::StringImpl *a14, char a15)
{
  if (a13 == 1 && a12 && atomic_fetch_add_explicit(a12, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(a12, a2);
  }

  if (a15 == 1 && a14 && atomic_fetch_add_explicit(a14, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(a14, a2);
  }

  v17 = *(v15 - 40);
  if (v17)
  {
    WTF::HashTable<WebCore::RegistrableDomain,WTF::KeyValuePair<WebCore::RegistrableDomain,WTF::String>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebCore::RegistrableDomain,WTF::String>>,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashMap<WebCore::RegistrableDomain,WTF::String,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::FastMalloc>::deallocateTable(v17, a2);
  }

  _Unwind_Resume(exception_object);
}

WTF::StringImpl **IPC::Decoder::decode<WTF::HashMap<WebCore::RegistrableDomain,WTF::String,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>>@<X0>(WTF::StringImpl **a1@<X0>, _BYTE *a2@<X8>)
{
  result = IPC::ArgumentCoder<WTF::HashMap<WebCore::RegistrableDomain,WTF::String,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>,void>::decode<IPC::Decoder>(a1, a2);
  if ((a2[8] & 1) == 0)
  {
    return IPC::Decoder::markInvalid(a1);
  }

  return result;
}

void sub_19D5BAF50(_Unwind_Exception *exception_object, WTF::StringImpl *a2)
{
  if (*(v2 + 8) == 1)
  {
    if (*v2)
    {
      WTF::HashTable<WebCore::RegistrableDomain,WTF::KeyValuePair<WebCore::RegistrableDomain,WTF::String>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebCore::RegistrableDomain,WTF::String>>,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashMap<WebCore::RegistrableDomain,WTF::String,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::FastMalloc>::deallocateTable(*v2, a2);
    }
  }

  _Unwind_Resume(exception_object);
}

WTF::StringImpl *IPC::Decoder::decode<WTF::HashSet<WebCore::RegistrableDomain,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>>@<X0>(WTF::StringImpl *a1@<X0>, _BYTE *a2@<X8>)
{
  result = IPC::ArgumentCoder<WTF::HashSet<WebCore::RegistrableDomain,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>,void>::decode<IPC::Decoder>(a1, a2);
  if ((a2[8] & 1) == 0)
  {
    return IPC::Decoder::markInvalid(a1);
  }

  return result;
}

void sub_19D5BAFB4(_Unwind_Exception *exception_object, WTF::StringImpl *a2)
{
  if (*(v2 + 8) == 1)
  {
    if (*v2)
    {
      WTF::HashTable<WTF::String,WTF::String,WTF::IdentityExtractor,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::deallocateTable(*v2, a2);
    }
  }

  _Unwind_Resume(exception_object);
}

WTF::StringImpl *IPC::ArgumentCoder<WTF::HashSet<WebCore::RegistrableDomain,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>,void>::decode<IPC::Decoder>@<X0>(WTF::StringImpl *this@<X0>, _BYTE *a2@<X8>)
{
  v2 = this;
  v4 = *(this + 1);
  v5 = ((*(this + 2) + 3) & 0xFFFFFFFFFFFFFFFCLL);
  v6 = v5 - *this;
  v7 = v4 >= v6;
  v8 = v4 - v6;
  if (!v7 || v8 <= 3)
  {
    IPC::Decoder::markInvalid(this);
LABEL_29:
    this = IPC::Decoder::markInvalid(v2);
    *a2 = 0;
    a2[8] = 0;
    return this;
  }

  *(this + 2) = v5 + 1;
  if (!v5)
  {
    goto LABEL_29;
  }

  v10 = 0;
  v11 = *v5;
  v21 = 0;
  if (v11)
  {
    while (1)
    {
      IPC::Decoder::decode<WebCore::RegistrableDomain>(v2, &v19);
      v14 = v20;
      if ((v20 & 1) == 0)
      {
        break;
      }

      if (v19 == -1)
      {
        goto LABEL_25;
      }

      v15 = WTF::equal(v19, 0, v13);
      v14 = v20;
      if (v15)
      {
        break;
      }

      if ((v20 & 1) == 0)
      {
        __break(1u);
LABEL_25:
        *a2 = 0;
        a2[8] = 0;
        goto LABEL_26;
      }

      this = WTF::HashTable<WebCore::RegistrableDomain,WebCore::RegistrableDomain,WTF::IdentityExtractor,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::FastMalloc>::add<(WTF::ShouldValidateKey)1>(&v21, &v19, v16, v18);
      v14 = v20;
      if ((v18[16] & 1) == 0)
      {
        break;
      }

      if (v20)
      {
        this = v19;
        v19 = 0;
        if (this)
        {
          if (atomic_fetch_add_explicit(this, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            this = WTF::StringImpl::destroy(this, v12);
          }
        }
      }

      if (!--v11)
      {
        v10 = v21;
        goto LABEL_8;
      }
    }

    *a2 = 0;
    a2[8] = 0;
    if ((v14 & 1) == 0)
    {
      goto LABEL_19;
    }

LABEL_26:
    v17 = v19;
    v19 = 0;
    if (v17 && atomic_fetch_add_explicit(v17, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v17, v12);
    }

LABEL_19:
    this = v21;
    if (v21)
    {
      return WTF::HashTable<WTF::String,WTF::String,WTF::IdentityExtractor,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::deallocateTable(v21, v12);
    }
  }

  else
  {
LABEL_8:
    *a2 = v10;
    a2[8] = 1;
  }

  return this;
}

void sub_19D5BB148(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, WTF::StringImpl *a12, char a13, WTF::StringImpl **a14)
{
  if (a13 == 1 && a12 && atomic_fetch_add_explicit(a12, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(a12, a2);
  }

  if (a14)
  {
    WTF::HashTable<WTF::String,WTF::String,WTF::IdentityExtractor,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::deallocateTable(a14, a2);
  }

  _Unwind_Resume(exception_object);
}

uint64_t IPC::Decoder::decode<WTF::Seconds>(IPC::Decoder *a1)
{
  result = IPC::Decoder::decode<unsigned long long>(a1);
  if (*a1)
  {
    if ((v3 & 1) == 0)
    {
      __break(1u);
    }
  }

  else
  {
    IPC::Decoder::markInvalid(a1);
    return 0;
  }

  return result;
}

unint64_t IPC::VectorArgumentCoder<false,std::pair<WTF::String,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul>::decode<IPC::Decoder>(_BYTE *a1, IPC::Decoder *a2)
{
  result = IPC::Decoder::decode<unsigned long long>(a2);
  if ((v5 & 1) == 0)
  {
    *a1 = 0;
    a1[16] = 0;
    return result;
  }

  v6 = result;
  v19 = 0;
  v20 = 0;
  if (result >= 0x10000)
  {
    while (1)
    {
      IPC::Decoder::decode<std::pair<WTF::String,unsigned long long>>(&v16, a2);
      if ((v18 & 1) == 0)
      {
LABEL_24:
        *a1 = 0;
        a1[16] = 0;
        return WTF::Vector<std::pair<WTF::String,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v19, v7);
      }

      if (HIDWORD(v20) != v20)
      {
        break;
      }

      WTF::Vector<std::pair<WTF::String,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::appendSlowCase<(WTF::FailureAction)0,std::pair<WTF::String,unsigned long long>>(&v19, &v16);
      if (v18)
      {
        goto LABEL_17;
      }

LABEL_18:
      if (!--v6)
      {
        WTF::Vector<std::pair<WTF::String,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::shrinkCapacity(&v19, HIDWORD(v20));
        goto LABEL_27;
      }
    }

    v12 = HIDWORD(v20) + 1;
    v13 = (v19 + 16 * HIDWORD(v20));
    v14 = v16;
    v16 = 0;
    *v13 = v14;
    v13[1] = v17;
    HIDWORD(v20) = v12;
LABEL_17:
    v15 = v16;
    v16 = 0;
    if (v15 && atomic_fetch_add_explicit(v15, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v15, v7);
    }

    goto LABEL_18;
  }

  if (result)
  {
    LODWORD(v20) = result;
    v19 = WTF::fastMalloc((16 * result));
    while (1)
    {
      IPC::Decoder::decode<std::pair<WTF::String,unsigned long long>>(&v16, a2);
      if ((v18 & 1) == 0)
      {
        goto LABEL_24;
      }

      if (HIDWORD(v20) != v20)
      {
        break;
      }

      WTF::Vector<std::pair<WTF::String,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::appendSlowCase<(WTF::FailureAction)0,std::pair<WTF::String,unsigned long long>>(&v19, &v16);
      if (v18)
      {
        goto LABEL_8;
      }

LABEL_9:
      if (!--v6)
      {
        goto LABEL_27;
      }
    }

    v8 = HIDWORD(v20) + 1;
    v9 = (v19 + 16 * HIDWORD(v20));
    v10 = v16;
    v16 = 0;
    *v9 = v10;
    v9[1] = v17;
    HIDWORD(v20) = v8;
LABEL_8:
    v11 = v16;
    v16 = 0;
    if (v11)
    {
      if (atomic_fetch_add_explicit(v11, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v11, v7);
      }
    }

    goto LABEL_9;
  }

LABEL_27:
  std::optional<WTF::Vector<std::pair<WTF::String,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>::optional[abi:sn200100]<WTF::Vector<std::pair<WTF::String,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,0>(a1, &v19);
  return WTF::Vector<std::pair<WTF::String,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v19, v7);
}

void sub_19D5BB39C(_Unwind_Exception *a1, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, WTF::StringImpl *a10, uint64_t a11, char a12, int a13, __int16 a14, char a15, char a16)
{
  if (a12 == 1 && a10 && atomic_fetch_add_explicit(a10, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(a10, a2);
  }

  WTF::Vector<std::pair<WTF::String,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&a14, a2);
  _Unwind_Resume(a1);
}

unint64_t IPC::Decoder::decode<WTF::Vector<std::pair<WTF::String,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>(_BYTE *a1, IPC::Decoder *a2)
{
  result = IPC::VectorArgumentCoder<false,std::pair<WTF::String,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul>::decode<IPC::Decoder>(a1, a2);
  if ((a1[16] & 1) == 0)
  {
    return IPC::Decoder::markInvalid(a2);
  }

  return result;
}

void sub_19D5BB42C(_Unwind_Exception *exception_object, void *a2)
{
  if (*(v2 + 16) == 1)
  {
    WTF::Vector<std::pair<WTF::String,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v2, a2);
  }

  _Unwind_Resume(exception_object);
}

IPC::Decoder *IPC::Decoder::decode<std::pair<WTF::String,unsigned long long>>(uint64_t a1, IPC::Decoder *a2)
{
  result = IPC::Decoder::decode<WTF::String>(a2, &v14);
  if (v15 != 1)
  {
    *a1 = 0;
    *(a1 + 16) = 0;
    return IPC::Decoder::markInvalid(a2);
  }

  v5 = *(a2 + 1);
  v6 = ((*(a2 + 2) + 7) & 0xFFFFFFFFFFFFFFF8);
  v7 = v6 - *a2;
  v8 = v5 >= v7;
  v9 = v5 - v7;
  if (!v8 || v9 <= 7)
  {
    IPC::Decoder::markInvalid(a2);
LABEL_12:
    IPC::Decoder::markInvalid(a2);
    *a1 = 0;
    *(a1 + 16) = 0;
    if (v15)
    {
      v13 = v14;
      v14 = 0;
      if (v13)
      {
        if (atomic_fetch_add_explicit(v13, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v13, v12);
        }
      }
    }

    return IPC::Decoder::markInvalid(a2);
  }

  *(a2 + 2) = v6 + 1;
  if (!v6)
  {
    goto LABEL_12;
  }

  v11 = *v6;
  *a1 = v14;
  *(a1 + 8) = v11;
  *(a1 + 16) = 1;
  return result;
}

void sub_19D5BB528(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, WTF::StringImpl *a9, char a10)
{
  if (a10 == 1 && a9 && atomic_fetch_add_explicit(a9, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(a9, a2);
  }

  _Unwind_Resume(exception_object);
}

uint64_t WebKit::WebProcessCreationParameters::WebProcessCreationParameters(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  *a2 = 0;
  *a1 = v4;
  v5 = a2[1];
  a2[1] = 0;
  *(a1 + 8) = v5;
  v6 = *(a2 + 1);
  *(a2 + 1) = 0u;
  *(a1 + 16) = v6;
  v7 = *(a2 + 2);
  *(a2 + 2) = 0u;
  *(a1 + 48) = 0u;
  v8 = a1 + 48;
  *(v8 - 16) = v7;
  WTF::VectorBuffer<WTF::String,0ul,WTF::FastMalloc>::adopt(v8, a2 + 12);
  v9 = a2[8];
  if (v9)
  {
    CFRetain(*(v9 + 8));
  }

  *(a1 + 72) = 0;
  *(a1 + 64) = v9;
  *(a1 + 80) = 0;
  WTF::VectorBuffer<WTF::String,0ul,WTF::FastMalloc>::adopt(a1 + 72, a2 + 18);
  *(a1 + 88) = 0;
  *(a1 + 96) = 0;
  WTF::VectorBuffer<WTF::String,0ul,WTF::FastMalloc>::adopt(a1 + 88, a2 + 22);
  *(a1 + 104) = 0;
  *(a1 + 112) = 0;
  WTF::VectorBuffer<WTF::String,0ul,WTF::FastMalloc>::adopt(a1 + 104, a2 + 26);
  *(a1 + 120) = 0;
  *(a1 + 128) = 0;
  WTF::VectorBuffer<WTF::String,0ul,WTF::FastMalloc>::adopt(a1 + 120, a2 + 30);
  *(a1 + 136) = 0;
  *(a1 + 144) = 0;
  WTF::VectorBuffer<WTF::String,0ul,WTF::FastMalloc>::adopt(a1 + 136, a2 + 34);
  *(a1 + 152) = 0;
  *(a1 + 160) = 0;
  WTF::VectorBuffer<WTF::String,0ul,WTF::FastMalloc>::adopt(a1 + 152, a2 + 38);
  *(a1 + 168) = 0;
  *(a1 + 176) = 0;
  WTF::VectorBuffer<WTF::String,0ul,WTF::FastMalloc>::adopt(a1 + 168, a2 + 42);
  *(a1 + 184) = 0;
  *(a1 + 192) = 0;
  WTF::VectorBuffer<WTF::String,0ul,WTF::FastMalloc>::adopt(a1 + 184, a2 + 46);
  *(a1 + 200) = 0;
  *(a1 + 208) = 0;
  WTF::VectorBuffer<WTF::String,0ul,WTF::FastMalloc>::adopt(a1 + 200, a2 + 50);
  *(a1 + 216) = 0;
  *(a1 + 224) = 0;
  WTF::VectorBuffer<WTF::String,0ul,WTF::FastMalloc>::adopt(a1 + 216, a2 + 54);
  *(a1 + 232) = 0;
  *(a1 + 240) = 0;
  WTF::VectorBuffer<WTF::String,0ul,WTF::FastMalloc>::adopt(a1 + 232, a2 + 58);
  *(a1 + 248) = 0;
  *(a1 + 256) = 0;
  WTF::VectorBuffer<WTF::String,0ul,WTF::FastMalloc>::adopt(a1 + 248, a2 + 62);
  *(a1 + 264) = 0;
  *(a1 + 272) = 0;
  WTF::VectorBuffer<WTF::String,0ul,WTF::FastMalloc>::adopt(a1 + 264, a2 + 66);
  *(a1 + 280) = 0;
  *(a1 + 288) = 0;
  WTF::VectorBuffer<WTF::String,0ul,WTF::FastMalloc>::adopt(a1 + 280, a2 + 70);
  v10 = *(a2 + 39);
  *(a1 + 296) = *(a2 + 37);
  *(a1 + 312) = v10;
  v11 = a2[41];
  a2[41] = 0;
  *(a1 + 328) = v11;
  v12 = a2[42];
  *(a1 + 344) = *(a2 + 86);
  *(a1 + 336) = v12;
  v13 = *(a2 + 22);
  *(a2 + 22) = 0u;
  *(a1 + 352) = v13;
  LOWORD(v12) = *(a2 + 184);
  *(a1 + 370) = *(a2 + 370);
  *(a1 + 368) = v12;
  v14 = a2[47];
  a2[47] = 0;
  *(a1 + 376) = v14;
  *(a1 + 384) = 0;
  v15 = a2[48];
  a2[48] = 0;
  *(a1 + 384) = v15;
  v16 = a2[49];
  a2[49] = 0;
  *(a1 + 392) = v16;
  *(a1 + 400) = 0u;
  WTF::VectorBuffer<WTF::String,0ul,WTF::FastMalloc>::adopt(a1 + 400, a2 + 100);
  *(a1 + 416) = *(a2 + 104);
  *(a1 + 424) = 0;
  v17 = a2[53];
  a2[53] = 0;
  *(a1 + 424) = v17;
  *(a1 + 432) = *(a2 + 432);
  *(a1 + 440) = *(a2 + 440);
  std::__optional_move_base<WebKit::WebProcessDataStoreParameters,false>::__optional_move_base[abi:sn200100](a1 + 448, a2 + 56);
  *(a1 + 552) = 0;
  *(a1 + 560) = 0;
  if (*(a2 + 560) == 1)
  {
    v29 = a2[69];
    a2[69] = 0;
    *(a1 + 552) = v29;
    *(a1 + 560) = 1;
  }

  *(a1 + 568) = 0;
  *(a1 + 576) = 0;
  if (*(a2 + 576) == 1)
  {
    v30 = a2[71];
    a2[71] = 0;
    *(a1 + 568) = v30;
    *(a1 + 576) = 1;
  }

  v18 = *(a2 + 146);
  *(a1 + 588) = *(a2 + 294);
  *(a1 + 584) = v18;
  *(a1 + 592) = 0u;
  v19 = a2[74];
  a2[74] = 0;
  *(a1 + 592) = v19;
  if (a1 != a2)
  {
    v20 = a2[75];
    a2[75] = 0;
    *(a1 + 600) = v20;
  }

  v21 = a2[76];
  a2[76] = 0;
  *(a1 + 608) = v21;
  v22 = a2[77];
  a2[77] = 0;
  *(a1 + 616) = v22;
  v23 = *(a2 + 39);
  v24 = *(a2 + 40);
  *(a1 + 649) = *(a2 + 649);
  *(a1 + 624) = v23;
  *(a1 + 640) = v24;
  v25 = a2[84];
  a2[84] = 0;
  *(a1 + 672) = v25;
  *(a1 + 680) = 0;
  v26 = a2[85];
  a2[85] = 0;
  *(a1 + 680) = v26;
  *(a1 + 688) = 0;
  v27 = a2[86];
  a2[86] = 0;
  *(a1 + 688) = v27;
  WebKit::ScriptTrackingPrivacyRules::ScriptTrackingPrivacyRules((a1 + 696), a2 + 174);
  *(a1 + 760) = a2[95];
  *(a1 + 768) = 0u;
  WTF::VectorBuffer<WTF::String,0ul,WTF::FastMalloc>::adopt(a1 + 768, a2 + 192);
  *(a1 + 784) = 0u;
  WTF::VectorBuffer<WTF::String,0ul,WTF::FastMalloc>::adopt(a1 + 784, a2 + 196);
  *(a1 + 800) = *(a2 + 800);
  return a1;
}

void sub_19D5BB934(_Unwind_Exception *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  WTF::Vector<WebKit::SandboxExtensionHandle,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(a16, a2);
  WebKit::SandboxExtensionHandle::~SandboxExtensionHandle((a16 - 8));
  v19 = v16[4];
  v16[4] = 0;
  if (v19 && atomic_fetch_add_explicit(v19, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v19, v18);
  }

  std::unique_ptr<WTF::HashSet<WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>>::~unique_ptr[abi:sn200100]((a16 - 24), v18);
  v21 = v16[2];
  v16[2] = 0;
  if (v21 && atomic_fetch_add_explicit(v21, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v21, v20);
  }

  v22 = v16[1];
  v16[1] = 0;
  if (v22 && atomic_fetch_add_explicit(v22, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v22, v20);
  }

  v23 = *v16;
  *v16 = 0;
  if (v23)
  {
    if (atomic_fetch_add_explicit(v23, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v23, v20);
    }
  }

  _Unwind_Resume(a1);
}

void sub_19D5BBC78(uint64_t a1, void *a2)
{
  v3 = *(v2 + 280);
  if (v3)
  {
    *(v2 + 280) = 0;
    *(v2 + 288) = 0;
    WTF::fastFree(v3, a2);
  }

  JUMPOUT(0x19D5BBB3CLL);
}

void sub_19D5BBC94(uint64_t a1, void *a2)
{
  v3 = *(v2 + 264);
  if (v3)
  {
    *(v2 + 264) = 0;
    *(v2 + 272) = 0;
    WTF::fastFree(v3, a2);
  }

  JUMPOUT(0x19D5BBB44);
}

void sub_19D5BBCB0(uint64_t a1, void *a2)
{
  v4 = *v3;
  if (*v3)
  {
    *(v2 + 248) = 0;
    *(v2 + 256) = 0;
    WTF::fastFree(v4, a2);
  }

  JUMPOUT(0x19D5BBB4CLL);
}

void sub_19D5BBCCC(uint64_t a1, void *a2)
{
  v4 = *v3;
  if (*v3)
  {
    *(v2 + 232) = 0;
    *(v2 + 240) = 0;
    WTF::fastFree(v4, a2);
  }

  JUMPOUT(0x19D5BBB54);
}

void sub_19D5BBCE8(uint64_t a1, void *a2)
{
  v4 = *v3;
  if (*v3)
  {
    *(v2 + 216) = 0;
    *(v2 + 224) = 0;
    WTF::fastFree(v4, a2);
  }

  JUMPOUT(0x19D5BBB5CLL);
}

void sub_19D5BBD04(uint64_t a1, void *a2)
{
  v4 = *v3;
  if (*v3)
  {
    *(v2 + 200) = 0;
    *(v2 + 208) = 0;
    WTF::fastFree(v4, a2);
  }

  JUMPOUT(0x19D5BBB64);
}

void sub_19D5BBD20(uint64_t a1, void *a2)
{
  v4 = *v3;
  if (*v3)
  {
    *(v2 + 184) = 0;
    *(v2 + 192) = 0;
    WTF::fastFree(v4, a2);
  }

  JUMPOUT(0x19D5BBB6CLL);
}

void sub_19D5BBD3C(uint64_t a1, void *a2)
{
  v4 = *v3;
  if (*v3)
  {
    *(v2 + 168) = 0;
    *(v2 + 176) = 0;
    WTF::fastFree(v4, a2);
  }

  JUMPOUT(0x19D5BBB74);
}

void sub_19D5BBD58(uint64_t a1, void *a2)
{
  v4 = *v3;
  if (*v3)
  {
    *(v2 + 152) = 0;
    *(v2 + 160) = 0;
    WTF::fastFree(v4, a2);
  }

  JUMPOUT(0x19D5BBB7CLL);
}

void sub_19D5BBD74(uint64_t a1, void *a2)
{
  v4 = *v3;
  if (*v3)
  {
    *(v2 + 136) = 0;
    *(v2 + 144) = 0;
    WTF::fastFree(v4, a2);
  }

  JUMPOUT(0x19D5BBB84);
}

void sub_19D5BBD90(uint64_t a1, void *a2)
{
  v4 = *v3;
  if (*v3)
  {
    *(v2 + 120) = 0;
    *(v2 + 128) = 0;
    WTF::fastFree(v4, a2);
  }

  JUMPOUT(0x19D5BBB8CLL);
}

void sub_19D5BBDAC(uint64_t a1, void *a2)
{
  v4 = *v3;
  if (*v3)
  {
    *(v2 + 104) = 0;
    *(v2 + 112) = 0;
    WTF::fastFree(v4, a2);
  }

  JUMPOUT(0x19D5BBB94);
}

void sub_19D5BBDC8(uint64_t a1, void *a2)
{
  v4 = *v3;
  if (*v3)
  {
    *(v2 + 88) = 0;
    *(v2 + 96) = 0;
    WTF::fastFree(v4, a2);
  }

  JUMPOUT(0x19D5BBB9CLL);
}

void sub_19D5BBDE4(uint64_t a1, void *a2)
{
  v4 = *v3;
  if (*v3)
  {
    *(v2 + 72) = 0;
    *(v2 + 80) = 0;
    WTF::fastFree(v4, a2);
  }

  JUMPOUT(0x19D5BBBA4);
}

void sub_19D5BBE00(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, WTF **a16)
{
  v17 = *a16;
  if (*a16)
  {
    *(v16 + 48) = 0;
    *(v16 + 56) = 0;
    WTF::fastFree(v17, a2);
  }

  JUMPOUT(0x19D5BBBB8);
}

uint64_t IPC::ArgumentCoder<WTF::ObjectIdentifierGeneric<WebKit::ContentWorldIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,void>::decode(IPC::Decoder *a1)
{
  result = IPC::Decoder::decode<unsigned long long>(a1);
  v4 = *a1;
  if (!*a1)
  {
    v5 = 0;
    return v5 | v4;
  }

  if (v3)
  {
    v5 = result & 0xFFFFFFFFFFFFFF00;
    v4 = result;
    if ((result - 1) > 0xFFFFFFFFFFFFFFFDLL)
    {
      v4 = 0;
      v5 = 0;
    }

    return v5 | v4;
  }

  __break(1u);
  return result;
}

uint64_t IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::ContentWorldIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(IPC::Decoder *a1)
{
  v2 = IPC::ArgumentCoder<WTF::ObjectIdentifierGeneric<WebKit::ContentWorldIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,void>::decode(a1);
  if ((v3 & 1) == 0)
  {
    IPC::Decoder::markInvalid(a1);
  }

  return v2;
}

uint64_t WebKit::WebProcess::initializeWebProcess(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v98 = *MEMORY[0x1E69E9840];
  kdebug_trace();
  MEMORY[0x19EB06150](v92, 0);
  WTF::CompletionHandler<void ()(WebCore::ProcessIdentity)>::operator()(a3, v92);
  WTF::MachSendRight::~MachSendRight(v92);
  if (*(a2 + 544) == 1)
  {
    WebKit::WebProcess::setWebsiteDataStoreParameters(a1, a2 + 448);
  }

  WTF::setLegacyPresentingApplicationPID(*(a2 + 344));
  WebKit::WebProcess::platformInitializeWebProcess(a1, a2);
  IsUserInteractive = WTF::Thread::setCurrentThreadIsUserInteractive(0xFFFFFFFFLL);
  v7 = *(a2 + 318);
  *(a1 + 632) = v7;
  if ((v7 & 1) == 0)
  {
    v8 = WTF::MemoryPressureHandler::singleton(IsUserInteractive);
    v9 = WTF::fastMalloc(0x18);
    *v9 = &unk_1F1122500;
    v9[1] = a1;
    v9[2] = a1;
    v10 = *(v8 + 6);
    *(v8 + 6) = v9;
    if (v10)
    {
      (*(*v10 + 8))(v10);
    }

    v11 = WTF::fastMalloc(0x18);
    *v11 = &unk_1F1122528;
    v11[1] = a1;
    v11[2] = a1;
    v12 = *(v8 + 4);
    *(v8 + 4) = v11;
    if (v12)
    {
      (*(*v12 + 8))(v12);
    }

    v13 = WTF::fastMalloc(0x18);
    *v13 = &unk_1F1122550;
    v13[1] = a1;
    v13[2] = a1;
    v14 = *(v8 + 5);
    *(v8 + 5) = v13;
    if (v14)
    {
      (*(*v14 + 8))(v14);
    }

    WTF::MemoryPressureHandler::install(v8);
    v15 = WTF::fastMalloc(0x10);
    *v15 = &unk_1F11225A0;
    *buf = v15;
    PAL::registerNotifyCallback();
    v16 = *buf;
    *buf = 0;
    if (v16)
    {
      (*(*v16 + 8))(v16);
    }
  }

  v17 = WTF::fastMalloc(0x18);
  *v17 = &unk_1F11225C8;
  v17[1] = a1;
  v17[2] = a1;
  *buf = v17;
  PAL::registerNotifyCallback();
  v18 = *buf;
  *buf = 0;
  if (v18)
  {
    (*(*v18 + 8))(v18);
  }

  WebKit::SandboxExtension::consumePermanently(a2 + 48);
  v19 = *(a2 + 32);
  if (!v19 || !*(v19 + 4))
  {
    goto LABEL_24;
  }

  v20 = *(a2 + 64);
  if (v20)
  {
    goto LABEL_106;
  }

  while (1)
  {
    *buf = &unk_1F11223F0;
    WebKit::UserData::transform(v20, buf, &v91);
    WebKit::InjectedBundle::create(a2, &v91, buf);
    v21 = v91;
    v91 = 0;
    if (v21)
    {
      CFRelease(*(v21 + 1));
    }

    if (v20)
    {
      CFRelease(v20[1]);
    }

    v22 = *buf;
    if (*buf)
    {
      *buf = 0;
      if (*(a1 + 152))
      {
        result = 272;
        __break(0xC471u);
        return result;
      }

      *(a1 + 152) = v22;
    }

LABEL_24:
    v23 = *(a1 + 312);
    v24 = WTF::HashTable<WTF::ASCIILiteral,WTF::KeyValuePair<WTF::ASCIILiteral,std::unique_ptr<WebKit::NetworkProcessSupplement>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ASCIILiteral,std::unique_ptr<WebKit::NetworkProcessSupplement>>>,WTF::DefaultHash<WTF::ASCIILiteral>,WTF::HashMap<WTF::ASCIILiteral,std::unique_ptr<WebKit::NetworkProcessSupplement>,WTF::DefaultHash<WTF::ASCIILiteral>,WTF::HashTraits<WTF::ASCIILiteral>,WTF::HashTraits<std::unique_ptr<WebKit::NetworkProcessSupplement>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ASCIILiteral>,WTF::FastMalloc>::begin(v23);
    v25 = v24;
    v27 = v26;
    if (v23)
    {
      v23 += 3 * *(v23 - 1);
    }

    if (v23 != v24)
    {
      do
      {
        (*(*v25[2] + 24))(v25[2], a2);
        do
        {
          v25 += 3;
          if (v25 == v27)
          {
            break;
          }
        }

        while (!v25[1] || *v25 == -1);
      }

      while (v25 != v23);
    }

    v29 = *(a1 + 408);
    v30 = (v29 + 8);
    while (1)
    {
      v31 = *v30;
      if ((*v30 & 1) == 0)
      {
        break;
      }

      v32 = *v30;
      atomic_compare_exchange_strong_explicit(v30, &v32, v31 + 2, memory_order_relaxed, memory_order_relaxed);
      if (v32 == v31)
      {
        goto LABEL_39;
      }
    }

    WTF::ThreadSafeWeakPtrControlBlock::strongRef(*v30);
LABEL_39:
    WebKit::RemoteMediaPlayerManager::initialize(v29, a2);
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::RemoteMediaPlayerManager,(WTF::DestructionThread)0>::deref((v29 + 8), v33);
    CanRequest = WebKit::WebProcess::setCacheModel(a1, *(a2 + 296));
    v37 = *(a2 + 672);
    if (v37 && *(v37 + 4))
    {
      CanRequest = WTF::setTimeZoneOverride();
    }

    if (*(a2 + 292))
    {
      CanRequest = WTF::overrideUserPreferredLanguages();
    }

    *(a1 + 320) = *(a2 + 327);
    *(a1 + 298) = *(a2 + 320);
    *(a1 + 299) = *(a2 + 321);
    v38 = *(a2 + 100);
    if (v38)
    {
      v76 = *(a2 + 88);
      v77 = 8 * v38;
      do
      {
        CanRequest = WebCore::LegacySchemeRegistry::registerURLSchemeAsEmptyDocument(v76, v35);
        v76 = (v76 + 8);
        v77 -= 8;
      }

      while (v77);
    }

    v39 = *(a2 + 116);
    if (v39)
    {
      v40 = *(a2 + 104);
      v41 = 8 * v39;
      do
      {
        CanRequest = WebCore::LegacySchemeRegistry::registerURLSchemeAsSecure(v40, v35);
        v40 = (v40 + 8);
        v41 -= 8;
      }

      while (v41);
    }

    v42 = *(a2 + 132);
    if (v42)
    {
      v43 = *(a2 + 120);
      v44 = 8 * v42;
      do
      {
        CanRequest = WebCore::LegacySchemeRegistry::registerURLSchemeAsBypassingContentSecurityPolicy(v43, v35);
        v43 = (v43 + 8);
        v44 -= 8;
      }

      while (v44);
    }

    v45 = *(a2 + 148);
    if (v45)
    {
      v72 = *(a2 + 136);
      v73 = 8 * v45;
      do
      {
        CanRequest = WebCore::LegacySchemeRegistry::setDomainRelaxationForbiddenForURLScheme(1, v72, v36);
        v72 += 8;
        v73 -= 8;
      }

      while (v73);
    }

    v46 = *(a2 + 164);
    if (v46)
    {
      v78 = *(a2 + 152);
      v79 = 8 * v46;
      do
      {
        CanRequest = WebCore::LegacySchemeRegistry::registerURLSchemeAsLocal(v78, v35);
        v78 = (v78 + 8);
        v79 -= 8;
      }

      while (v79);
    }

    v47 = *(a2 + 180);
    if (v47)
    {
      v80 = *(a2 + 168);
      v81 = 8 * v47;
      do
      {
        CanRequest = WebCore::LegacySchemeRegistry::registerURLSchemeAsDisplayIsolated(v80, v35);
        v80 = (v80 + 8);
        v81 -= 8;
      }

      while (v81);
    }

    v48 = *(a2 + 196);
    if (v48)
    {
      v82 = *(a2 + 184);
      v83 = 8 * v48;
      do
      {
        CanRequest = WebCore::LegacySchemeRegistry::registerURLSchemeAsCORSEnabled(v82, v35);
        v82 = (v82 + 8);
        v83 -= 8;
      }

      while (v83);
    }

    v49 = *(a2 + 212);
    if (v49)
    {
      v84 = *(a2 + 200);
      v85 = 8 * v49;
      do
      {
        CanRequest = WebCore::LegacySchemeRegistry::registerURLSchemeAsAlwaysRevalidated(v84, v35);
        v84 = (v84 + 8);
        v85 -= 8;
      }

      while (v85);
    }

    v50 = *(a2 + 228);
    if (v50)
    {
      v74 = *(a2 + 216);
      v75 = 8 * v50;
      do
      {
        CanRequest = WebCore::LegacySchemeRegistry::registerURLSchemeAsCachePartitioned(v74, v35);
        v74 = (v74 + 8);
        v75 -= 8;
      }

      while (v75);
    }

    v51 = *(a2 + 244);
    if (v51)
    {
      v86 = *(a2 + 232);
      v87 = 8 * v51;
      do
      {
        CanRequest = WebCore::LegacySchemeRegistry::registerAsCanDisplayOnlyIfCanRequest(v86, v35);
        v86 = (v86 + 8);
        v87 -= 8;
      }

      while (v87);
    }

    v52 = *(a2 + 260);
    if (v52)
    {
      v53 = *(a2 + 248);
      v54 = 8 * v52;
      do
      {
        v55 = *v53;
        if (*v53)
        {
          atomic_fetch_add_explicit(v55, 2u, memory_order_relaxed);
        }

        v90 = v55;
        WebKit::WebExtensionMatchPattern::registerCustomURLScheme(&v90);
        CanRequest = v90;
        v90 = 0;
        if (CanRequest && atomic_fetch_add_explicit(CanRequest, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          CanRequest = WTF::StringImpl::destroy(CanRequest, v56);
        }

        ++v53;
        v54 -= 8;
      }

      while (v54);
    }

    v57 = WebCore::ResourceRequestBase::setDefaultTimeoutInterval(CanRequest, *(a2 + 304));
    v58 = WebCore::BackForwardCache::singleton(v57);
    WebCore::BackForwardCache::setMaxSize(v58);
    WebCore::FontCascade::setCodePath();
    v59 = WebCore::FontCascade::setDisableFontSubpixelAntialiasingForTesting(*(a2 + 319));
    v60 = WebKit::WebProcess::setMemoryCacheDisabled(v59, *(a2 + 323));
    v20 = *(a2 + 324);
    *(WebCore::DeprecatedGlobalSettings::shared(v60) + 22) = v20;
    v61 = *MEMORY[0x1E69E25C0];
    if (!*MEMORY[0x1E69E25C0])
    {
      v61 = WebCore::commonVMSlow(0);
    }

    *(v61 + 130841) = *(a2 + 325);
    v62 = WebCore::ScriptExecutionContext::setCrossOriginMode();
    if (*(a1 + 659))
    {
      v20 = (*(a1 + 658) ^ 1u);
      *(WebCore::DeprecatedGlobalSettings::shared(v62) + 27) = v20;
      if (*(a1 + 659))
      {
        break;
      }
    }

    std::__throw_bad_optional_access[abi:sn200100]();
LABEL_106:
    CFRetain(v20[1]);
  }

  v63 = PAL::setLockdownModeEnabledForCurrentProcess(*(a1 + 658));
  WebCore::GamepadProvider::singleton(v63);
  {
    qword_1ED643808 = 0;
    unk_1ED643810 = 0;
    byte_1ED643818 = 0;
    WebKit::WebGamepadProvider::singleton(void)::provider = &unk_1F112AD70;
    xmmword_1ED643820 = 0u;
    unk_1ED643830 = 0u;
    xmmword_1ED643840 = 0u;
  }

  v65 = WebCore::GamepadProvider::setSharedProvider(&WebKit::WebGamepadProvider::singleton(void)::provider, v64);
  WebKit::WebServiceWorkerProvider::singleton(v65);
  v66 = WebCore::ServiceWorkerProvider::setSharedProvider();
  WebKit::WebSharedWorkerProvider::singleton(v66);
  WebCore::SharedWorkerProvider::setSharedProvider();
  ShouldLogUserInteraction = WebKit::WebResourceLoadObserver::setShouldLogUserInteraction(*(a2 + 440));
  if (*(a1 + 636) == 2)
  {
    WebKit::WebProcess::prewarmGlobally(ShouldLogUserInteraction);
  }

  WebCore::Quirks::updateStorageAccessUserAgentStringQuirks();
  WebKit::WebProcess::updateDomainsWithStorageAccessQuirks(a1, (a2 + 688), v68);
  WebKit::WebProcess::updateScriptTrackingPrivacyFilter(a1, (a2 + 696));
  WebCore::NavigatorGamepad::setGamepadsRecentlyAccessedThreshold();
  v69 = qword_1ED6416A0;
  v70 = os_log_type_enabled(qword_1ED6416A0, OS_LOG_TYPE_DEFAULT);
  if (v70)
  {
    if (*(a1 + 712) == 1)
    {
      v88 = *(a1 + 704);
    }

    else
    {
      v88 = 0;
    }

    v89 = WTF::legacyPresentingApplicationPID(v70);
    *buf = 134218496;
    *&buf[4] = a1;
    v94 = 2048;
    v95 = v88;
    v96 = 1024;
    v97 = v89;
    _os_log_impl(&dword_19D52D000, v69, OS_LOG_TYPE_DEFAULT, "%p - [sessionID=%llu] WebProcess::initializeWebProcess: Presenting processPID=%d", buf, 0x1Cu);
  }

  return kdebug_trace();
}

IPC::Encoder *IPC::Connection::sendAsyncReply<Messages::WebProcess::InitializeWebProcess,WebCore::ProcessIdentity>(uint64_t *a1, void *a2, uint64_t a3)
{
  v6 = IPC::Encoder::operator new(0x238, a2);
  *v6 = 3927;
  *(v6 + 2) = 0;
  *(v6 + 3) = 0;
  *(v6 + 1) = a2;
  *(v6 + 68) = 0;
  *(v6 + 70) = 0;
  *(v6 + 69) = 0;
  IPC::Encoder::encodeHeader(v6);
  v11 = v6;
  IPC::ArgumentCoder<WebCore::ProcessIdentity,void>::encode(v6, a3);
  IPC::Connection::sendMessageImpl(a1, &v11, 0, 0);
  result = v11;
  v11 = 0;
  if (result)
  {
    IPC::Encoder::~Encoder(result, v7);
    return bmalloc::api::tzoneFree(v9, v10);
  }

  return result;
}

void WTF::Vector<WTF::MachSendRight,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::takeLast(uint64_t a1)
{
  if (!*(a1 + 12) || (WTF::MachSendRight::MachSendRight(), v2 = *(a1 + 12), !v2))
  {
    __break(0xC471u);
    JUMPOUT(0x19D5BC8B0);
  }

  v3 = v2 - 1;
  WTF::MachSendRight::~MachSendRight((*a1 + 4 * (v2 - 1)));
  *(a1 + 12) = v3;
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages10WebProcess20InitializeWebProcessENS2_10ConnectionEN6WebKit10WebProcessES9_FvONS8_28WebProcessCreationParametersEONS_17CompletionHandlerIFvN7WebCore15ProcessIdentityEEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJSE_EED0Ev(WTF *this, void *a2)
{
  *this = &unk_1F10F7B58;
  v3 = *(this + 2);
  *(this + 2) = 0;
  if (v3)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v3);
  }

  return WTF::fastFree(this, a2);
}

uint64_t WTF::Detail::CallableWrapper<IPC::Decoder::create(std::span<unsigned char const,18446744073709551615ul>,WTF::Vector<WTF::MachSendRight,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&)::$_0,void,std::span<unsigned char const,18446744073709551615ul>>::~CallableWrapper(WTF **a1, void *a2)
{
  *a1 = &unk_1F11475C0;
  WTF::fastFree(a1[1], a2);

  return WTF::fastFree(a1, v3);
}

void WebKit::WebProcess::platformInitializeWebProcess(WebKit::WebProcess *this, WebKit::WebProcessCreationParameters *a2)
{
  v45 = *MEMORY[0x1E69E9840];
  WebKit::WebProcess::setupLogStream(this);
  v5 = *(a2 + 199);
  if (v5)
  {
    v6 = *(a2 + 98);
    v7 = 16 * v5;
    do
    {
      v4 = WebKit::WebProcess::setNotifyState(this, v6, v6[1]);
      v6 += 2;
      v7 -= 16;
    }

    while (v7);
  }

  v8 = WebCore::logClient(v4);
  v9 = WTF::downcast<WebKit::LogClient,WebCore::LogClient>(*v8);
  if (v9)
  {
    WebKit::LogClient::PLATFORM_INITIALIZE_WEBPROCESS(v9);
  }

  else
  {
    v10 = qword_1ED6416A0;
    if (os_log_type_enabled(qword_1ED6416A0, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_19D52D000, v10, OS_LOG_TYPE_DEFAULT, "WebProcess::platformInitializeWebProcess", buf, 2u);
    }
  }

  unsetenv("BSServiceDomains");
  WebKit::AuxiliaryProcess::applyProcessCreationParameters(this, a2);
  WTF::isIntegralOrPointerType(this);
  WebKit::AuxiliaryProcess::populateMobileGestaltCache(this, a2 + 552);
  WTF::RefPtr<WTF::StringImpl,WTF::RawPtrTraits<WTF::StringImpl>,WTF::DefaultRefDerefTraits<WTF::StringImpl>>::operator=(this + 41, a2 + 41);
  WebKit::SandboxExtension::consumePermanently(a2 + 45);
  v11 = WebKit::SandboxExtension::consumePermanently(a2 + 72);
  Inspector::RemoteInspector::setNeedMachSandboxExtension((v11 ^ 1u));
  if (*(a2 + 584) == 1)
  {
    WebCore::ProcessCapabilities::setHEICDecodingEnabled(1);
    v12 = 8;
  }

  else
  {
    v12 = 0;
  }

  if (*(a2 + 585) == 1)
  {
    WebCore::ProcessCapabilities::setAVIFDecodingEnabled(1);
    v12 |= 0x10u;
  }

  if ((*(a2 + 584) & 1) != 0 || *(a2 + 585) == 1)
  {
    v13 = WebKit::WebProcess::platformInitializeWebProcess(WebKit::WebProcessCreationParameters &)::restricted;
    WebKit::WebProcess::platformInitializeWebProcess(WebKit::WebProcessCreationParameters &)::restricted = 1;
    if ((v13 & 1) == 0)
    {
      CGImageSourceEnableRestrictedDecoding();
    }
  }

  if (v12)
  {
    WebKit::setVideoDecoderBehaviors(v12 | 3);
  }

  v14 = [objc_alloc(MEMORY[0x1E695AC38]) initWithMemoryCapacity:0 diskCapacity:0 diskPath:0];
  WebCore::registerMemoryReleaseNotifyCallbacks([MEMORY[0x1E695AC38] setSharedURLCache:v14]);
  *MEMORY[0x1E696EBC8] = *(a2 + 317);
  WebKit::WebProcess::setEnhancedAccessibility(this, *(a2 + 370));
  PAL::setCurrentUserInterfaceIdiom();
  WebCore::setLocalizedDeviceModel((a2 + 608), v15);
  WebCore::setContentSizeCategory((a2 + 616), v16);
  WebCore::setSupportsPictureInPicture(*(a2 + 589));
  v17 = pthread_set_fixedpriority_self();
  if (!*(a2 + 103))
  {
    WebCore::AVAssetMIMETypeCache::singleton(v17);
    *(&v43 + 1) = 0;
    operator new();
  }

  v34 = WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::Vector(v40, a2 + 400);
  WebKit::WebProcess::setMediaMIMETypes(v34, v40);
  WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v40, v35);
  WebCore::setScreenProperties();
  WebCore::setSystemHasBattery(*(a2 + 586));
  WebCore::setSystemHasAC(*(a2 + 587));
  WebCore::RenderThemeIOS::setCSSValueToSystemColorMap();
  v19 = WebCore::RenderThemeIOS::setFocusRingColor((a2 + 600), v18);
  v21 = WebKit::WebSleepDisablerClient::operator new(v19, v20);
  *v21 = &unk_1F1122B80;
  v22 = WebCore::sleepDisablerClient(v21);
  v23 = *v22;
  *v22 = v21;
  if (v23)
  {
    v23 = (*(*v23 + 8))(v23);
  }

  v24 = WebCore::SystemSoundManager::singleton(v23);
  v26 = WebKit::WebSystemSoundDelegate::operator new(v24, v25);
  *v26 = &unk_1F1122BB0;
  *buf = v26;
  WebCore::SystemSoundManager::setSystemSoundDelegate();
  v28 = *buf;
  *buf = 0;
  if (v28)
  {
    v28 = (*(*v28 + 8))(v28);
  }

  v29 = WebKit::WebCaptionPreferencesDelegate::operator new(v28, v27);
  *v29 = &unk_1F1132C18;
  *buf = v29;
  WebCore::CaptionUserPreferencesMediaAF::setCaptionPreferencesDelegate();
  v30 = *buf;
  *buf = 0;
  if (v30)
  {
    (*(*v30 + 8))(v30);
  }

  WebCore::IOSurface::setMaximumSize();
  WebCore::IOSurface::setBytesPerRowAlignment(*(a2 + 79));
  WebKit::WebProcess::accessibilityPreferencesDidChange(this, a2 + 640);
  v31 = _AXSApplicationAccessibilitySetEnabled();
  if (PAL::canLoad_DataDetectorsCore_DDResultDisableURLSchemeChecking(v31))
  {
    (*MEMORY[0x1E69E2468])();
  }

  IPC::Connection::getAuditToken(*(this + 5), buf);
  if (v44 == 1)
  {
    v37 = *buf;
    v38 = v43;
    if (WTF::hasEntitlementValueInArray())
    {
      WebKit::WebProcess::auditTokenForSelf(this, &v37);
      if ((v39 & 1) == 0)
      {
        std::__throw_bad_optional_access[abi:sn200100]();
      }

      *v41 = v37;
      *&v41[16] = v38;
      v32 = sandbox_enable_state_flag();
      v33 = qword_1ED641198;
      if (os_log_type_enabled(qword_1ED641198, OS_LOG_TYPE_DEFAULT))
      {
        if (*(this + 712) == 1)
        {
          v36 = *(this + 88);
        }

        else
        {
          v36 = 0;
        }

        *v41 = 134218496;
        *&v41[4] = this;
        *&v41[12] = 2048;
        *&v41[14] = v36;
        *&v41[22] = 1024;
        *&v41[24] = v32;
        _os_log_impl(&dword_19D52D000, v33, OS_LOG_TYPE_DEFAULT, "%p - [sessionID=%llu] WebProcess::Enabling ParentProcessCanEnableQuickLookStateFlag state flag, status = %d", v41, 0x1Cu);
      }
    }
  }

  WebKit::setLiquidGlassEnabled(*(a2 + 800));
  xpc_connection_cancel(*(*(this + 5) + 344));
  if (v14)
  {
  }
}

void sub_19D5BCEE0(_Unwind_Exception *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(va, a2);
  if (v8)
  {
  }

  _Unwind_Resume(a1);
}

void IPC::StreamClientConnection::create(int a1@<W0>, uint64_t a2@<X8>, double a3@<D0>)
{
  IPC::Connection::createConnectionIdentifierPair(v28);
  if (v31 != 1)
  {
    *a2 = 0;
    *(a2 + 32) = 0;
    return;
  }

  if ((a1 - 31) >= 0xFFFFFFE7)
  {
    WebCore::SharedMemory::allocate(((1 << a1) + 256));
    v6 = v20;
    if (v20)
    {
      v20 = 0;
      v7 = *(v6 + 1);
      v32 = (v7 - 256);
      v33 = v6;
      v34 = 0;
      LOBYTE(v35) = 0;
      v37 = 0;
      if ((v7 - 257) >= 0x7FFFFFFF)
      {
        __break(0xC471u);
        goto LABEL_41;
      }

      *(*(v6 + 2) + 128) = 0x80000000;
      if (*(v6 + 1) <= 0xFFuLL)
      {
LABEL_41:
        __break(1u);
        goto LABEL_42;
      }

      **(v6 + 2) = 0;
      IPC::StreamClientConnectionBuffer::StreamClientConnectionBuffer(&v23, &v32);
      v27 = 1;
      if (v37 == 1)
      {
        IPC::Semaphore::destroy(&v36);
        WTF::MachSendRight::~MachSendRight(&v36);
        IPC::Semaphore::destroy(&v35);
        WTF::MachSendRight::~MachSendRight(&v35);
      }

      v8 = v33;
      v33 = 0;
      if (v8)
      {
        WTF::ThreadSafeRefCounted<WebCore::SharedMemory,(WTF::DestructionThread)0>::deref(v8);
      }

      v9 = v20;
      v20 = 0;
      if (v9)
      {
        WTF::ThreadSafeRefCounted<WebCore::SharedMemory,(WTF::DestructionThread)0>::deref(v9);
      }
    }

    else
    {
      LOBYTE(v23) = 0;
      v27 = 0;
    }

    if (v27)
    {
      if (v31)
      {
        v10 = WTF::fastMalloc(0x188);
        IPC::Connection::Connection(v10, v28, 1);
        v12 = IPC::StreamClientConnection::s_heapRef ? bmalloc::api::tzoneAllocateNonCompact(IPC::StreamClientConnection::s_heapRef, v11) : IPC::StreamClientConnection::operatorNewSlow(0);
        v13 = v12;
        if (v27)
        {
          *v12 = 1;
          *(v12 + 8) = v10;
          *(v12 + 16) = 0;
          *(v12 + 56) = 0;
          *(v12 + 64) = 0;
          IPC::StreamClientConnectionBuffer::StreamClientConnectionBuffer(v12 + 72, &v23);
          *(v13 + 120) = 100;
          *(v13 + 128) = a3;
          if (v31)
          {
            v14 = *(v13 + 80);
            atomic_fetch_add(v14, 1u);
            WebCore::SharedMemory::createHandle();
            if (v14)
            {
              WTF::ThreadSafeRefCounted<WebCore::SharedMemory,(WTF::DestructionThread)0>::deref(v14);
            }

            if (v34)
            {
              WTF::MachSendRight::MachSendRight();
              v19 = v33;
              if (v34 == 1)
              {
                WTF::MachSendRight::~MachSendRight(&v32);
              }

              WTF::MachSendRight::MachSendRight();
              WTF::MachSendRight::MachSendRight();
              v22 = v19;
              WTF::MachSendRight::~MachSendRight(&v18);
              v32 = v13;
              WTF::MachSendRight::MachSendRight();
              WTF::MachSendRight::MachSendRight();
              v15 = v32;
              v35 = v22;
              v32 = 0;
              *a2 = v15;
              WTF::MachSendRight::MachSendRight();
              WTF::MachSendRight::MachSendRight();
              *(a2 + 24) = v35;
              *(a2 + 32) = 1;
              WTF::MachSendRight::~MachSendRight(&v34);
              WTF::MachSendRight::~MachSendRight(&v33);
              v16 = v32;
              v32 = 0;
              if (v16 && atomic_fetch_add(v16, 0xFFFFFFFF) == 1)
              {
                atomic_store(1u, v16);
                IPC::StreamClientConnection::operator delete(v16);
              }

              WTF::MachSendRight::~MachSendRight(&v21);
              WTF::MachSendRight::~MachSendRight(&v20);
              if (v27)
              {
                if (v26[8] == 1)
                {
                  IPC::Semaphore::destroy(v26);
                  WTF::MachSendRight::~MachSendRight(v26);
                  IPC::Semaphore::destroy(&v25);
                  WTF::MachSendRight::~MachSendRight(&v25);
                }

                v17 = v24;
                v24 = 0;
                if (v17)
                {
                  WTF::ThreadSafeRefCounted<WebCore::SharedMemory,(WTF::DestructionThread)0>::deref(v17);
                }
              }

              goto LABEL_29;
            }

            __break(0xC471u);
LABEL_42:
            JUMPOUT(0x19D5BD33CLL);
          }
        }
      }

      goto LABEL_41;
    }
  }

  *a2 = 0;
  *(a2 + 32) = 0;
LABEL_29:
  if (v31)
  {
    WTF::MachSendRight::~MachSendRight(&v30);
    if (object)
    {
      os_release(object);
    }
  }
}

void IPC::Connection::createConnectionIdentifierPair(uint64_t a1@<X8>)
{
  v14[1] = *MEMORY[0x1E69E9840];
  name = 0;
  v3 = mach_port_allocate(*MEMORY[0x1E69E9A60], 1u, &name);
  if (v3)
  {
    v5 = qword_1ED6416A0;
    if (!os_log_type_enabled(qword_1ED6416A0, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_8;
    }

    *buf = 67109120;
    v12 = v3;
    v6 = "Connection::createConnectionIdentifierPair: Could not allocate mach port, error %x";
    v7 = v5;
    v8 = 8;
    goto LABEL_12;
  }

  if (name - 1 >= 0xFFFFFFFE)
  {
    v4 = qword_1ED6416A0;
    if (!os_log_type_enabled(qword_1ED6416A0, OS_LOG_TYPE_ERROR))
    {
LABEL_8:
      *a1 = 0;
      *(a1 + 24) = 0;
      return;
    }

    *buf = 0;
    v6 = "Connection::createConnectionIdentifierPair: Could not allocate mach port, returned port was invalid";
    v7 = v4;
    v8 = 2;
LABEL_12:
    _os_log_error_impl(&dword_19D52D000, v7, OS_LOG_TYPE_ERROR, v6, buf, v8);
    goto LABEL_8;
  }

  *buf = name;
  v13 = 0;
  WTF::MachSendRight::createFromReceiveRight(name);
  WTF::MachSendRight::MachSendRight();
  *a1 = *buf;
  *(a1 + 8) = v13;
  v13 = 0;
  WTF::MachSendRight::MachSendRight();
  *(a1 + 24) = 1;
  WTF::MachSendRight::~MachSendRight(v14);
  if (v13)
  {
  }

  WTF::MachSendRight::~MachSendRight(v9);
}

void sub_19D5BD4F0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v5 = va_arg(va1, void);
  v4 = *(v2 + 8);
  if (v4)
  {
  }

  IPC::Connection::ConnectionIdentifierPair::~ConnectionIdentifierPair(va1);
  WTF::MachSendRight::~MachSendRight(va);
  _Unwind_Resume(a1);
}

uint64_t IPC::StreamClientConnectionBuffer::StreamClientConnectionBuffer(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = a2[1];
  a2[1] = 0;
  *a1 = v3;
  *(a1 + 8) = v4;
  *(a1 + 16) = a2[2];
  *(a1 + 24) = 0;
  v5 = a1 + 24;
  *(a1 + 40) = 0;
  if (*(a2 + 40) == 1)
  {
    std::__optional_storage_base<IPC::StreamClientConnectionBuffer::Semaphores,false>::__construct[abi:sn200100]<IPC::StreamClientConnectionBuffer::Semaphores>(v5, (a2 + 3));
  }

  return a1;
}

mach_port_context_t IPC::Connection::createServerConnection@<X0>(uint64_t a1@<X0>, mach_port_context_t *a2@<X8>)
{
  v4 = WTF::fastMalloc(0x188);
  result = IPC::Connection::Connection(v4, a1, 1);
  *a2 = result;
  return result;
}

atomic_uint *WTF::ThreadSafeRefCounted<WebCore::SharedMemory,(WTF::DestructionThread)0>::deref(atomic_uint *result)
{
  add = atomic_fetch_add(result, 0xFFFFFFFF);
  if (add == 1)
  {
    v5 = v1;
    atomic_store(add, result);
    v3 = MEMORY[0x19EB047C0](result);

    return WTF::fastFree(v3, v4);
  }

  return result;
}

uint64_t IPC::StreamServerConnectionHandle::StreamServerConnectionHandle(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WTF::MachSendRight::MachSendRight();
  WTF::MachSendRight::MachSendRight();
  *(a1 + 16) = *(a3 + 8);
  return a1;
}

uint64_t IPC::StreamServerConnectionHandle::StreamServerConnectionHandle(uint64_t a1, uint64_t a2)
{
  WTF::MachSendRight::MachSendRight();
  WTF::MachSendRight::MachSendRight();
  *(a1 + 16) = *(a2 + 16);
  return a1;
}

void IPC::StreamClientConnection::StreamConnectionPair::~StreamConnectionPair(unsigned int **this)
{
  WTF::MachSendRight::~MachSendRight((this + 2));
  WTF::MachSendRight::~MachSendRight((this + 1));
  v2 = *this;
  *this = 0;
  if (v2)
  {
    if (atomic_fetch_add(v2, 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, v2);
      IPC::StreamClientConnection::operator delete(v2);
    }
  }
}

uint64_t std::optional<IPC::Connection::ConnectionIdentifierPair>::~optional(uint64_t a1)
{
  if (*(a1 + 24) == 1)
  {
    WTF::MachSendRight::~MachSendRight((a1 + 16));
    v2 = *(a1 + 8);
    if (v2)
    {
      os_release(v2);
    }
  }

  return a1;
}

void IPC::StreamClientConnection::open(uint64_t a1, uint64_t a2, uint64_t a3)
{
  std::optional<IPC::StreamClientConnection::DedicatedConnectionClient>::emplace[abi:sn200100]<IPC::StreamClientConnection&,IPC::Connection::Client &,void>((a1 + 16), a1, a2);
  if ((*(a1 + 56) & 1) == 0)
  {
    __break(1u);
    goto LABEL_7;
  }

  v5 = *(a1 + 40);
  if (!v5)
  {
LABEL_7:
    __break(0xC471u);
    return;
  }

  v6 = *(a1 + 8);
  atomic_fetch_add(v5, 1u);
  IPC::Connection::open(v6, a1 + 16, a3);

  IPC::StreamClientConnection::DedicatedConnectionClient::deref((a1 + 16));
}

IPC::StreamClientConnection::DedicatedConnectionClient *std::optional<IPC::StreamClientConnection::DedicatedConnectionClient>::emplace[abi:sn200100]<IPC::StreamClientConnection&,IPC::Connection::Client &,void>(IPC::StreamClientConnection::DedicatedConnectionClient *this, atomic_uint *a2, uint64_t a3)
{
  if (*(this + 40) == 1)
  {
    IPC::StreamClientConnection::DedicatedConnectionClient::~DedicatedConnectionClient(this, a2);
    *(this + 40) = 0;
  }

  *(this + 4) = 0;
  *this = &unk_1F11475E8;
  *(this + 1) = 0;
  *(this + 3) = a2;
  atomic_fetch_add(a2 + 1, 1u);
  WTF::WeakPtrFactory<IPC::MessageReceiver,WTF::DefaultWeakPtrImpl>::initializeIfNeeded((a3 + 8), a3);
  v6 = *(a3 + 8);
  atomic_fetch_add(v6, 1u);
  *(this + 4) = v6;
  *(this + 40) = 1;
  return this;
}

unint64_t WebKit::WebProcess::setNotifyState(WebKit::WebProcess *this, const WTF::StringImpl **a2, const WTF::StringImpl *a3)
{
  v50 = *MEMORY[0x1E69E9840];
  if (a3)
  {
    out_token = -1;
    v5 = *a2;
    if (*a2 == -1)
    {
      __break(0xC471u);
    }

    else
    {
      if (!v5)
      {
        __break(0xC471u);
        JUMPOUT(0x19D5BDCC4);
      }

      v40 = this;
      v7 = (this + 872);
      v8 = *(this + 109);
      if (v8)
      {
        v9 = *(v8 - 8);
        v10 = *(v5 + 4);
        if (v10 < 0x100)
        {
          v11 = WTF::StringImpl::hashSlowCase(v5);
        }

        else
        {
          v11 = v10 >> 8;
        }

        for (i = 0; ; v11 = i + v13)
        {
          v13 = v11 & v9;
          v14 = *(v8 + 16 * v13);
          if (!v14)
          {
            goto LABEL_12;
          }

          if (v14 != -1 && (WTF::equal(v14, *a2, a3) & 1) != 0)
          {
            break;
          }

          ++i;
        }

        v18 = 0;
        v33 = *(v8 + 16 * v13 + 8);
        out_token = v33;
        goto LABEL_34;
      }

LABEL_12:
      WTF::String::ascii(buf, a2);
      if (*buf)
      {
        v15 = (*buf + 16);
      }

      else
      {
        v15 = 0;
      }

      v18 = notify_register_check(v15, &out_token);
      v19 = *buf;
      *buf = 0;
      if (v19)
      {
        if (*v19 == 1)
        {
          WTF::fastFree(v19, v16);
        }

        else
        {
          --*v19;
        }
      }

      if (v18)
      {
LABEL_33:
        v33 = out_token;
LABEL_34:
        if (v33 != -1)
        {
          return notify_set_state(v33, a3);
        }

        v36 = qword_1ED6416A0;
        result = os_log_type_enabled(qword_1ED6416A0, OS_LOG_TYPE_ERROR);
        if (result)
        {
          if (*(v40 + 712) == 1)
          {
            v37 = *(v40 + 88);
          }

          else
          {
            v37 = 0;
          }

          WTF::String::ascii(&v41, a2);
          if (v41)
          {
            v38 = v41 + 16;
          }

          else
          {
            v38 = 0;
          }

          *buf = 134218754;
          *&buf[4] = v40;
          v44 = 2048;
          v45 = v37;
          v46 = 2082;
          v47 = v38;
          v48 = 1024;
          v49 = v18;
          _os_log_error_impl(&dword_19D52D000, v36, OS_LOG_TYPE_ERROR, "%p - [sessionID=%llu] WebProcess::setNotifyState: Couldn't create token for %{public}s: %d", buf, 0x26u);
          result = v41;
          v41 = 0;
          if (result)
          {
            if (*result == 1)
            {
              return WTF::fastFree(result, v39);
            }

            else
            {
              --*result;
            }
          }
        }

        return result;
      }

      if (*a2 == -1)
      {
        __break(0xC471u);
        JUMPOUT(0x19D5BDCE4);
      }

      if (*a2)
      {
        v20 = *v7;
        if (*v7 || (WTF::HashTable<WTF::String,WTF::KeyValuePair<WTF::String,int>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,int>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,int,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<int>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::expand(v7, 0), (v20 = *v7) != 0))
        {
          v21 = *(v20 - 8);
        }

        else
        {
          v21 = 0;
        }

        v22 = *(*a2 + 4);
        if (v22 < 0x100)
        {
          v23 = WTF::StringImpl::hashSlowCase(*a2);
        }

        else
        {
          v23 = v22 >> 8;
        }

        v24 = 0;
        for (j = 1; ; ++j)
        {
          v26 = v23 & v21;
          v27 = (v20 + 16 * (v23 & v21));
          v28 = *v27;
          if (!*v27)
          {
            break;
          }

          if (v28 == -1)
          {
            v24 = (v20 + 16 * v26);
          }

          else if (WTF::equal(v28, *a2, v17))
          {
            *(v27 + 2) = out_token;
            goto LABEL_33;
          }

          v23 = j + v26;
        }

        if (v24)
        {
          *v24 = 0;
          v24[1] = 0;
          --*(*v7 - 16);
          v27 = v24;
        }

        WTF::GenericHashTraits<WebCore::RegistrableDomain>::assignToEmpty<WebCore::RegistrableDomain,WebCore::RegistrableDomain const&>(v27, a2);
        *(v27 + 2) = out_token;
        v29 = *v7;
        if (*v7)
        {
          v30 = *(v29 - 12) + 1;
        }

        else
        {
          v30 = 1;
        }

        *(v29 - 12) = v30;
        v31 = (*(v29 - 16) + v30);
        v32 = *(v29 - 4);
        if (v32 > 0x400)
        {
          if (v32 > 2 * v31)
          {
            goto LABEL_33;
          }
        }

        else if (3 * v32 > 4 * v31)
        {
          goto LABEL_33;
        }

        WTF::HashTable<WTF::String,WTF::KeyValuePair<WTF::String,int>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,int>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,int,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<int>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::expand(v7, v27);
        goto LABEL_33;
      }

      __break(0xC471u);
    }

    JUMPOUT(0x19D5BDCA4);
  }

  result = WTF::HashMap<WTF::String,int,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<int>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::takeOptional(this + 109, a2, 0);
  if (HIDWORD(result))
  {
    v35 = result;
    notify_set_state(result, 0);

    return notify_cancel(v35);
  }

  return result;
}

void sub_19D5BDD08(_Unwind_Exception *exception_object, void *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, WTF *a13)
{
  if (a13)
  {
    if (*a13 == 1)
    {
      WTF::fastFree(a13, a2);
    }

    else
    {
      --*a13;
    }
  }

  _Unwind_Resume(exception_object);
}

void IPC::Connection::takeAsyncReplyHandlerWithDispatcherWithLockHeld(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v6 = a2;
  os_unfair_lock_assert_owner((a1 + 100));
  if ((a2 - 1) >= 0xFFFFFFFFFFFFFFFELL)
  {
    *a3 = 0;
  }

  else
  {
    WTF::HashMap<WTF::ObjectIdentifierGeneric<IPC::AsyncReplyIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::CompletionHandler<void ()(IPC::Connection *,std::unique_ptr<IPC::Decoder> &&)>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<IPC::AsyncReplyIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<IPC::AsyncReplyIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<IPC::AsyncReplyIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>><void ()(IPC::Connection *,std::unique_ptr<IPC::Decoder> &&)>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::take((a1 + 296), &v6, a3);
  }
}

void WebKit::AuxiliaryProcess::populateMobileGestaltCache(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 8) == 1)
  {
    WebKit::SandboxExtension::create(a2, &v11);
    if (v11)
    {
      WebKit::SandboxExtension::consume(v11);
      MGGetFloat32Answer();
      MGGetSInt32Answer();
      MGGetSInt32Answer();
      MGGetBoolAnswer();
      MGGetBoolAnswer();
      v2 = MGCopyAnswer();
      MGGetSInt32Answer();
      MGGetBoolAnswer();
      MGGetFloat32Answer();
      MGGetBoolAnswer();
      cf = MGCopyAnswer();
      v3 = MGCopyAnswer();
      WTF::RetainPtr<void const*>::operator=(&cf, v3);
      v4 = MGCopyAnswer();
      WTF::RetainPtr<void const*>::operator=(&cf, v4);
      v5 = MGCopyAnswer();
      WTF::RetainPtr<void const*>::operator=(&cf, v5);
      v6 = MGCopyAnswer();
      WTF::RetainPtr<void const*>::operator=(&cf, v6);
      v7 = MGCopyAnswer();
      WTF::RetainPtr<void const*>::operator=(&cf, v7);
      WebKit::SandboxExtension::revoke(v11);
      v8 = cf;
      cf = 0;
      if (v8)
      {
        CFRelease(v8);
      }

      if (v2)
      {
        CFRelease(v2);
      }

      v9 = v11;
      v11 = 0;
      if (v9)
      {
        WTF::RefCounted<WebKit::SandboxExtension>::deref(v9);
      }
    }
  }
}

void sub_19D5BDF5C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, CFTypeRef cf, WebKit::SandboxExtension *a10)
{
  if (v10)
  {
    CFRelease(v10);
  }

  if (a10)
  {
    WTF::RefCounted<WebKit::SandboxExtension>::deref(a10);
  }

  _Unwind_Resume(exception_object);
}

WebKit::SandboxExtensionImpl *WebKit::SandboxExtension::consumePermanently(WebKit::SandboxExtensionImpl **a1)
{
  result = *a1;
  if (result)
  {
    v3 = WebKit::SandboxExtensionImpl::consume(result);
    std::unique_ptr<WebKit::SandboxExtensionImpl>::reset[abi:sn200100](a1, 0);
    return v3;
  }

  return result;
}

BOOL WebKit::SandboxExtensionImpl::consume(WebKit::SandboxExtensionImpl *this)
{
  v11 = *MEMORY[0x1E69E9840];
  v2 = sandbox_extension_consume();
  *(this + 1) = v2;
  if (v2 == -1)
  {
    v4 = qword_1ED641198;
    if (os_log_type_enabled(qword_1ED641198, OS_LOG_TYPE_ERROR))
    {
      if (*this)
      {
        v5 = *this + 16;
      }

      else
      {
        v5 = 0;
      }

      v6 = *__error();
      v7 = 136315394;
      v8 = v5;
      v9 = 1024;
      v10 = v6;
      _os_log_error_impl(&dword_19D52D000, v4, OS_LOG_TYPE_ERROR, "Could not create a sandbox extension for '%s', errno = %d", &v7, 0x12u);
    }
  }

  return v2 != -1;
}

uint64_t WebKit::SandboxExtension::consumePermanently(uint64_t a1)
{
  v1 = *(a1 + 12);
  if (v1)
  {
    v4 = *a1;
    v5 = 8 * v1;
    v2 = 1;
    do
    {
      if (*v4)
      {
        v2 &= WebKit::SandboxExtension::consumePermanently(v4);
      }

      ++v4;
      v5 -= 8;
    }

    while (v5);
  }

  else
  {
    LOBYTE(v2) = 1;
  }

  return v2 & 1;
}

PAL *WebKit::setVideoDecoderBehaviors(unsigned __int8 a1)
{
  result = PAL::VideoToolboxLibrary(1);
  if (result)
  {
    result = PAL::canLoad_VideoToolbox_VTRestrictVideoDecoders(result);
    if (result)
    {
      v7 = 0;
      v8 = 0;
      if ((a1 & 4) != 0)
      {
        v6 = 1748121139;
        WTF::Vector<unsigned int,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::appendSlowCase<(WTF::FailureAction)0,int>(&v7, &v6);
        v6 = 1635148593;
        if (HIDWORD(v8) == v8)
        {
          WTF::Vector<unsigned int,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::appendSlowCase<(WTF::FailureAction)0,int>(&v7, &v6);
          v5 = HIDWORD(v8);
        }

        else
        {
          *(v7 + HIDWORD(v8)) = 1635148593;
          v5 = ++HIDWORD(v8);
        }

        v6 = 1836070006;
        if (v5 == v8)
        {
          WTF::Vector<unsigned int,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::appendSlowCase<(WTF::FailureAction)0,int>(&v7, &v6);
        }

        else
        {
          *(v7 + v5) = 1836070006;
          ++HIDWORD(v8);
        }
      }

      if ((a1 & 8) != 0)
      {
        v6 = 1752589105;
        if (HIDWORD(v8) == v8)
        {
          WTF::Vector<unsigned int,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::appendSlowCase<(WTF::FailureAction)0,int>(&v7, &v6);
          v3 = HIDWORD(v8);
        }

        else
        {
          *(v7 + HIDWORD(v8)) = 1752589105;
          v3 = ++HIDWORD(v8);
        }

        v6 = 1836415073;
        if (v3 == v8)
        {
          WTF::Vector<unsigned int,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::appendSlowCase<(WTF::FailureAction)0,int>(&v7, &v6);
        }

        else
        {
          *(v7 + v3) = 1836415073;
          ++HIDWORD(v8);
        }
      }

      if ((a1 & 0x10) != 0)
      {
        v6 = 1635135537;
        if (HIDWORD(v8) == v8)
        {
          WTF::Vector<unsigned int,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::appendSlowCase<(WTF::FailureAction)0,int>(&v7, &v6);
        }

        else
        {
          *(v7 + HIDWORD(v8)) = 1635135537;
          ++HIDWORD(v8);
        }
      }

      (*MEMORY[0x1E69E2438])((a1 << 31 >> 31) & 0xB | (4 * ((a1 >> 1) & 1u)), v7, HIDWORD(v8));
      result = v7;
      if (v7)
      {
        v7 = 0;
        LODWORD(v8) = 0;
        return WTF::fastFree(result, v4);
      }
    }
  }

  return result;
}

void sub_19D5BE334(_Unwind_Exception *exception_object, void *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, WTF *a11, int a12)
{
  if (a11)
  {
    WTF::fastFree(a11, a2);
  }

  _Unwind_Resume(exception_object);
}

uint64_t WTF::Vector<unsigned int,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::reserveCapacity<(WTF::FailureAction)0>(uint64_t result, unint64_t a2)
{
  if (*(result + 8) >= a2)
  {
    return 1;
  }

  v2 = a2;
  if (!(a2 >> 30))
  {
    v3 = result;
    v4 = *result;
    v5 = *(result + 12);
    v6 = WTF::fastMalloc((4 * a2));
    *(v3 + 8) = v2;
    *v3 = v6;
    memcpy(v6, v4, 4 * v5);
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

uint64_t WTF::Vector<unsigned int,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::appendSlowCase<(WTF::FailureAction)0,int>(uint64_t a1, _DWORD *a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 12);
  if (v5 + (v5 >> 1) <= v5 + 1)
  {
    v6 = v5 + 1;
  }

  else
  {
    v6 = v5 + (v5 >> 1);
  }

  if (v6 <= v4 + 1)
  {
    v7 = v4 + 1;
  }

  else
  {
    v7 = v6;
  }

  if (v7 <= 0x10)
  {
    v8 = 16;
  }

  else
  {
    v8 = v7;
  }

  result = WTF::Vector<unsigned int,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::reserveCapacity<(WTF::FailureAction)0>(a1, v8);
  *(*a1 + 4 * (*(a1 + 12))++) = *a2;
  return result;
}

uint64_t std::__function::__value_func<void ()(WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> const&)>::operator=[abi:sn200100](uint64_t a1, uint64_t a2)
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

uint64_t std::__function::__value_func<void ()(WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> const&)>::~__value_func[abi:sn200100](uint64_t a1)
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

uint64_t WebKit::WebSleepDisablerClient::operator new(WebKit::WebSleepDisablerClient *this, void *a2)
{
  if (WebKit::WebSleepDisablerClient::s_heapRef)
  {
    return bmalloc::api::tzoneAllocateNonCompact(WebKit::WebSleepDisablerClient::s_heapRef, a2);
  }

  else
  {
    return WebKit::WebSleepDisablerClient::operatorNewSlow(8);
  }
}

uint64_t WebKit::WebSystemSoundDelegate::operator new(WebKit::WebSystemSoundDelegate *this, void *a2)
{
  if (WebKit::WebSystemSoundDelegate::s_heapRef)
  {
    return bmalloc::api::tzoneAllocateNonCompact(WebKit::WebSystemSoundDelegate::s_heapRef, a2);
  }

  else
  {
    return WebKit::WebSystemSoundDelegate::operatorNewSlow(8);
  }
}

uint64_t WebKit::WebCaptionPreferencesDelegate::operator new(WebKit::WebCaptionPreferencesDelegate *this, void *a2)
{
  if (WebKit::WebCaptionPreferencesDelegate::s_heapRef)
  {
    return bmalloc::api::tzoneAllocateNonCompact(WebKit::WebCaptionPreferencesDelegate::s_heapRef, a2);
  }

  else
  {
    return WebKit::WebCaptionPreferencesDelegate::operatorNewSlow(8);
  }
}

void *WebKit::WebProcess::accessibilityPreferencesDidChange(WebKit::WebProcess *a1, uint64_t a2)
{
  if ((*a2 + 1) >= 3)
  {
    v4 = -2;
  }

  else
  {
    v4 = *a2;
  }

  if (_AXSReduceMotionEnabledApp() != v4)
  {
    _AXSSetReduceMotionEnabledApp();
  }

  if ((*(a2 + 4) + 1) >= 3)
  {
    v5 = -2;
  }

  else
  {
    v5 = *(a2 + 4);
  }

  if (_AXSIncreaseButtonLegibilityApp() != v5)
  {
    _AXSSetIncreaseButtonLegibilityApp();
  }

  if ((*(a2 + 8) + 1) >= 3)
  {
    v6 = -2;
  }

  else
  {
    v6 = *(a2 + 8);
  }

  if (_AXSEnhanceTextLegibilityEnabledApp() != v6)
  {
    _AXSSetEnhanceTextLegibilityEnabledApp();
  }

  if ((*(a2 + 12) + 1) >= 3)
  {
    v7 = -2;
  }

  else
  {
    v7 = *(a2 + 12);
  }

  if (_AXDarkenSystemColorsApp() != v7)
  {
    _AXSSetDarkenSystemColorsApp();
  }

  if ((*(a2 + 16) + 1) >= 3)
  {
    v8 = -2;
  }

  else
  {
    v8 = *(a2 + 16);
  }

  if (_AXSInvertColorsEnabledApp() != v8)
  {
    _AXSInvertColorsSetEnabledApp();
  }

  WebCore::setOverrideEnhanceTextLegibility(*(a2 + 21));
  WebCore::FontCache::invalidateAllFontCaches();
  *(a1 + 817) = *(a2 + 20);
  *(a1 + 821) = *(a2 + 22);

  return WebKit::WebProcess::updatePageAccessibilitySettings(a1);
}

void *WebKit::WebProcess::updatePageAccessibilitySettings(WebKit::WebProcess *this)
{
  WebCore::Image::setSystemAllowsAnimationControls(((*(this + 817) & 1) == 0));
  result = WTF::HashTable<WTF::String,WTF::KeyValuePair<WTF::String,WTF::RefPtr<API::Object,WTF::RawPtrTraits<API::Object>,WTF::DefaultRefDerefTraits<API::Object>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,WTF::RefPtr<API::Object,WTF::RawPtrTraits<API::Object>,WTF::DefaultRefDerefTraits<API::Object>>>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,WTF::RefPtr<API::Object,WTF::RawPtrTraits<API::Object>,WTF::DefaultRefDerefTraits<API::Object>>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::RefPtr<API::Object,WTF::RawPtrTraits<API::Object>,WTF::DefaultRefDerefTraits<API::Object>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::begin(this + 17);
  v4 = result;
  v5 = v3;
  v6 = *(this + 17);
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
      WebKit::WebPage::updateImageAnimationEnabled(*(v4 + 8), v3);
      result = WebKit::WebPage::updatePrefersNonBlinkingCursor(*(v4 + 8), v8);
      do
      {
        v4 += 16;
      }

      while (v4 != v5 && (*v4 + 1) <= 1);
    }

    while (v4 != v7);
  }

  return result;
}

void WebKit::WebProcess::auditTokenForSelf(WebKit::WebProcess *this@<X0>, uint64_t a2@<X8>)
{
  v24 = *MEMORY[0x1E69E9840];
  v3 = this + 752;
  if (*(this + 784) == 1)
  {
    goto LABEL_2;
  }

  *task_info_out = 0u;
  v15 = 0u;
  task_info_outCnt = 8;
  v6 = task_info(*MEMORY[0x1E69E9A60], 0xFu, task_info_out, &task_info_outCnt);
  if (!v6)
  {
    v7 = *(this + 784);
    v8 = v15;
    *v3 = *task_info_out;
    *(v3 + 1) = v8;
    if ((v7 & 1) == 0)
    {
      *(this + 784) = 1;
    }

LABEL_2:
    v4 = *(v3 + 1);
    *a2 = *v3;
    *(a2 + 16) = v4;
    *(a2 + 32) = *(v3 + 8);
    return;
  }

  v9 = v6;
  v10 = qword_1ED6416A0;
  if (os_log_type_enabled(qword_1ED6416A0, OS_LOG_TYPE_ERROR))
  {
    if (*(this + 712) == 1)
    {
      v11 = *(this + 88);
    }

    else
    {
      v11 = 0;
    }

    v12 = mach_error_string(v9);
    *buf = 134218754;
    v17 = this;
    v18 = 2048;
    v19 = v11;
    v20 = 2082;
    v21 = v12;
    v22 = 1024;
    v23 = v9;
    _os_log_error_impl(&dword_19D52D000, v10, OS_LOG_TYPE_ERROR, "%p - [sessionID=%llu] WebProcess::Unable to get audit token for self. Error: %{public}s (%x)", buf, 0x26u);
  }

  *a2 = 0;
  *(a2 + 32) = 0;
}

uint64_t WebKit::InjectedBundle::create@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X8>)
{
  kdebug_trace();
  v6 = API::Object::newObject(0x40uLL, 133);
  WebKit::InjectedBundle::InjectedBundle(v6, a1);
  WebKit::SandboxExtension::create((a1 + 40), &v11);
  v7 = v11;
  v11 = 0;
  v8 = *(v6 + 32);
  *(v6 + 32) = v7;
  if (v8)
  {
    WTF::RefCounted<WebKit::SandboxExtension>::deref(v8);
    v10 = v11;
    v11 = 0;
    if (v10)
    {
      WTF::RefCounted<WebKit::SandboxExtension>::deref(v10);
    }
  }

  if ((WebKit::InjectedBundle::initialize(v6, a1, a2) & 1) == 0)
  {
    CFRelease(*(v6 + 8));
    v6 = 0;
  }

  *a3 = v6;
  return kdebug_trace();
}

API::Object *WebKit::InjectedBundle::InjectedBundle(API::Object *a1, uint64_t a2)
{
  v4 = API::Object::Object(a1);
  *v4 = &unk_1F112B188;
  v6 = *(a2 + 32);
  if (v6)
  {
    atomic_fetch_add_explicit(v6, 2u, memory_order_relaxed);
  }

  *(a1 + 3) = 0;
  *(a1 + 4) = 0;
  *(a1 + 2) = v6;
  v7 = API::InjectedBundle::Client::operator new(v4, v5);
  *v7 = &unk_1F112B450;
  *(a1 + 5) = v7;
  *(a1 + 6) = 0;
  *(a1 + 7) = 0;
  return a1;
}

uint64_t API::InjectedBundle::Client::operator new(API::InjectedBundle::Client *this, void *a2)
{
  if (API::InjectedBundle::Client::operator new(unsigned long)::s_heapRef)
  {
    return bmalloc::api::tzoneAllocateNonCompact(API::InjectedBundle::Client::operator new(unsigned long)::s_heapRef, a2);
  }

  else
  {
    return bmalloc::api::tzoneAllocateNonCompactSlow();
  }
}

uint64_t WebKit::InjectedBundle::initialize(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v6 = *(a1 + 32);
  *(a1 + 32) = 0;
  if (v6)
  {
    if (!WebKit::SandboxExtension::consumePermanently(v6))
    {
      WTF::String::utf8();
      WTFLogAlways();
      v29 = v37;
      v37 = 0;
      if (v29)
      {
        if (*v29 == 1)
        {
          WTF::fastFree(v29, v28);
        }

        else
        {
          --*v29;
        }
      }

      WTF::RefCounted<WebKit::SandboxExtension>::deref(v6);
      return 0;
    }

    WTF::RefCounted<WebKit::SandboxExtension>::deref(v6);
  }

  v7 = objc_alloc(MEMORY[0x1E696AAE8]);
  WTF::String::createNSString((a1 + 16), &v37);
  v8 = [v7 initWithPath:v37];
  v9 = *(a1 + 24);
  *(a1 + 24) = v8;
  if (v9)
  {
  }

  v10 = v37;
  v37 = 0;
  if (v10)
  {
  }

  v11 = *(a1 + 24);
  if (!v11)
  {
    goto LABEL_34;
  }

  v12 = [v11 executablePath];
  v13 = v12;
  if (v12)
  {
    if (dlopen_preflight([v12 fileSystemRepresentation]) && (v14 = dlopen(objc_msgSend(v13, "fileSystemRepresentation"), 265)) != 0)
    {
      v15 = v14;
      v13 = dlsym(v14, "WKBundleAdditionalClassesForParameterCoder");
      FunctionPointerForName = dlsym(v15, "WKBundleInitialize");
      if (FunctionPointerForName)
      {
        goto LABEL_16;
      }
    }

    else
    {
      v13 = 0;
    }
  }

  v37 = 0;
  if (([*(a1 + 24) preflightAndReturnError:&v37] & 1) == 0)
  {
    NSLog(&cfstr_Injectedbundle_3.isa, v37);
    return 0;
  }

  if (([*(a1 + 24) loadAndReturnError:&v37] & 1) == 0)
  {
    NSLog(&cfstr_Injectedbundle_4.isa, v37);
    return 0;
  }

  FunctionPointerForName = CFBundleGetFunctionPointerForName([*(a1 + 24) _cfBundle], @"WKBundleInitialize");
LABEL_16:
  v18 = FunctionPointerForName;
  if (!v13)
  {
    v19 = CFBundleGetFunctionPointerForName([*(a1 + 24) _cfBundle], @"WKBundleAdditionalClassesForParameterCoder");
    if (!v19)
    {
      goto LABEL_18;
    }

    v13 = v19;
  }

  v34 = API::Object::wrap(a1, v17);
  v36 = API::Object::wrap(*a3, v35);
  (v13)(v34, v36);
LABEL_18:
  if (v18)
  {
    if (WebKit::InjectedBundle::decodeBundleParameters(a1, *(a2 + 376)))
    {
      v31 = API::Object::wrap(a1, v30);
      v33 = API::Object::wrap(*a3, v32);
      v18(v31, v33);
      return 1;
    }

    return 0;
  }

  v20 = [*(a1 + 24) principalClass];
  if (!v20 || (v21 = v20, ([(objc_class *)v20 conformsToProtocol:&unk_1F1210ED0]& 1) == 0) || (v22 = objc_alloc_init(v21)) == 0)
  {
LABEL_34:
    WTFLogAlways();
    return 0;
  }

  v23 = v22;
  v24 = *(a1 + 8);
  WTF::checked_objc_cast<WKWebProcessPlugInController>(v24);
  if (v24)
  {
    v25 = v24;
  }

  [v24 _setPrincipalClassInstance:v23];
  if (objc_opt_respondsToSelector())
  {
    [v24 extendClassesForParameterCoder:{objc_msgSend(v23, "additionalClassesForParameterCoder")}];
  }

  v26 = WebKit::InjectedBundle::decodeBundleParameters(a1, *(a2 + 376));
  if (v26 && (objc_opt_respondsToSelector() & 1) != 0)
  {
    [v23 webProcessPlugIn:v24 initializeWithObject:0];
  }

  if (v24)
  {
  }

  return v26;
}

void sub_19D5BEEDC(_Unwind_Exception *a1, void *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, WTF *a10)
{
  if (a10)
  {
    if (*a10 == 1)
    {
      WTF::fastFree(a10, a2);
    }

    else
    {
      --*a10;
    }
  }

  WTF::RefCounted<WebKit::SandboxExtension>::deref(v10);
  _Unwind_Resume(a1);
}

BOOL WebKit::SandboxExtension::consumePermanently(WebKit::SandboxExtensionImpl **this)
{
  v1 = this + 1;
  v2 = WebKit::SandboxExtensionImpl::consume(this[1]);
  std::unique_ptr<WebKit::SandboxExtensionImpl>::reset[abi:sn200100](v1, 0);
  return v2;
}

uint64_t WebKit::SandboxExtension::create@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  if (*a1)
  {
    result = WTF::fastMalloc(0x18);
    *result = 1;
    v5 = *a1;
    *a1 = 0;
    *(result + 8) = v5;
    *(result + 16) = 0;
  }

  else
  {
    result = 0;
  }

  *a2 = result;
  return result;
}

void __destroy_helper_block_e8_32c62_ZTSN3WTF11OSObjectPtrIPU24objcproto13OS_xpc_object8NSObjectEE(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
  }
}

void WebKit::SandboxExtension::~SandboxExtension(WebKit::SandboxExtensionImpl **this)
{
  std::unique_ptr<WebKit::SandboxExtensionImpl>::reset[abi:sn200100](this + 1, 0);
  if (*this != 1)
  {
    __break(0xC471u);
  }
}

WTF::RunLoop *WTF::Detail::CallableWrapper<WebKit::ProcessLauncher::finishLaunchingProcess(WTF::ASCIILiteral)::$_2,void,NSObject  {objcproto13OS_xpc_object}*>::call(WTF::RunLoop *a1, id a2)
{
  if (!a2)
  {
    WTF::RunLoop::mainSingleton(a1);
    v8 = *(a1 + 1);
    *(a1 + 1) = 0;
LABEL_9:
    v10 = WTF::fastMalloc(0x18);
    *v10 = &unk_1F11083A8;
    *(v10 + 1) = v8;
    *(v10 + 2) = a2;
    v11 = v10;
    WTF::RunLoop::dispatch();
    goto LABEL_10;
  }

  result = object_getClass(a2);
  if (result == MEMORY[0x1E69E9E98])
  {
    WTF::RunLoop::mainSingleton(result);
    v8 = *(a1 + 1);
    *(a1 + 1) = 0;
    v9 = a2;
    goto LABEL_9;
  }

  if (!*(a1 + 2))
  {
    return result;
  }

  WTF::RunLoop::mainSingleton(result);
  v5 = *(a1 + 2);
  if (v5)
  {
    atomic_fetch_add((v5 + 8), 1u);
  }

  v6 = a2;
  v7 = WTF::fastMalloc(0x18);
  *v7 = &unk_1F11083D0;
  *(v7 + 1) = v5;
  *(v7 + 2) = a2;
  v11 = v7;
  WTF::RunLoop::dispatch();
LABEL_10:
  result = v11;
  if (v11)
  {
    return (*(*v11 + 8))(v11);
  }

  return result;
}

void sub_19D5BF1C0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (v10)
  {
    (*(*v10 + 8))(v10);
  }

  _Unwind_Resume(exception_object);
}

WebKit::SandboxExtension *WTF::RefCounted<WebKit::SandboxExtension>::deref(WebKit::SandboxExtension *result)
{
  if (*result == 1)
  {
    WebKit::SandboxExtension::~SandboxExtension(result);

    return WTF::fastFree(v2, v3);
  }

  else
  {
    --*result;
  }

  return result;
}

__CFString *WTF::String::createNSString@<X0>(atomic_uint **this@<X0>, void *a2@<X8>)
{
  v2 = *this;
  if (*this)
  {
    atomic_fetch_add_explicit(v2, 2u, memory_order_relaxed);
    result = MEMORY[0x19EB00B70](v2);
    if (atomic_fetch_add_explicit(v2, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {

      return WTF::StringImpl::destroy(v2, v4);
    }
  }

  else
  {
    *a2 = &stru_1F1147748;

    return &stru_1F1147748;
  }

  return result;
}

void sub_19D5BF374(_Unwind_Exception *exception_object, WTF::StringImpl *a2)
{
  if (atomic_fetch_add_explicit(v2, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v2, a2);
  }

  _Unwind_Resume(exception_object);
}

WTF::ThreadSafeWeakPtrControlBlock *WTF::BlockPtr<void ()(BENetworkingProcess *,NSError *)>::fromCallable<WebKit::launchWithExtensionKit(WebKit::ProcessLauncher &,WebKit::ProcessLaunchType,WebKit::ProcessLauncher::Client *,WTF::Function<void ()(WTF::ThreadSafeWeakPtr<WebKit::ProcessLauncher,WTF::NoTaggingTraits<WebKit::ProcessLauncher>>,WebKit::ExtensionProcess &&,WTF::ASCIILiteral,NSError *)> &&)::$_1>(WebKit::launchWithExtensionKit(WebKit::ProcessLauncher &,WebKit::ProcessLaunchType,WebKit::ProcessLauncher::Client *,WTF::Function<void ()(WTF::ThreadSafeWeakPtr<WebKit::ProcessLauncher,WTF::NoTaggingTraits<WebKit::ProcessLauncher>>,WebKit::ExtensionProcess &&,WTF::ASCIILiteral,NSError *)> &&)::$_1)::{lambda(void *,BENetworkingProcess *,NSError *)#1}::__invoke(uint64_t *a1, void *a2)
{
  v5 = a1[5];
  v4 = a1[6];
  v10 = v5;
  if (v4)
  {
    v6 = WTF::ThreadSafeWeakPtrControlBlock::weakRef(v4);
  }

  else
  {
    v6 = 0;
  }

  v11 = v6;
  if (a2)
  {
    v7 = a2;
  }

  WTF::Function<void ()(WTF::ThreadSafeWeakPtr<WebKit::ProcessLauncher,WTF::NoTaggingTraits<WebKit::ProcessLauncher>>,WebKit::ExtensionProcess &&,WTF::ASCIILiteral,NSError *)>::operator()(a1[4], &v10);
  if (a2)
  {
  }

  result = v11;
  if (v11)
  {
    return WTF::ThreadSafeWeakPtrControlBlock::weakDeref(v11, v8);
  }

  return result;
}

void sub_19D5BF448(_Unwind_Exception *exception_object, void *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12)
{
  if (v12)
  {
    WTF::ThreadSafeWeakPtrControlBlock::weakDeref(v12, a2);
  }

  _Unwind_Resume(exception_object);
}

uint64_t WTF::BlockPtr<void ()(BENetworkingProcess *,NSError *)>::fromCallable<WebKit::launchWithExtensionKit(WebKit::ProcessLauncher &,WebKit::ProcessLaunchType,WebKit::ProcessLauncher::Client *,WTF::Function<void ()(WTF::ThreadSafeWeakPtr<WebKit::ProcessLauncher,WTF::NoTaggingTraits<WebKit::ProcessLauncher>>,WebKit::ExtensionProcess &&,WTF::ASCIILiteral,NSError *)> &&)::$_1>(WebKit::launchWithExtensionKit(WebKit::ProcessLauncher &,WebKit::ProcessLaunchType,WebKit::ProcessLauncher::Client *,WTF::Function<void ()(WTF::ThreadSafeWeakPtr<WebKit::ProcessLauncher,WTF::NoTaggingTraits<WebKit::ProcessLauncher>>,WebKit::ExtensionProcess &&,WTF::ASCIILiteral,NSError *)> &&)::$_1)::{lambda(void const*)#1}::__invoke(uint64_t a1, void *a2)
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

uint64_t WTF::Detail::CallableWrapper<WebKit::WebProcessPool::updateProcessAssertions(void)::$_0,void>::call()
{
  {
    WebKit::WebProcessPool::remoteWorkerProcesses(void)::processes = 0;
    *algn_1ED643608 = 0;
  }

  v0 = WTF::fastMalloc(0x10);
  *v0 = &unk_1F111A6C8;
  v3 = v0;
  WTF::WeakHashSet<WebKit::WebProcessProxy,WTF::DefaultWeakPtrImpl,(WTF::EnableWeakPtrThreadingAssertions)1>::forEach(&WebKit::WebProcessPool::remoteWorkerProcesses(void)::processes, &v3);
  result = v3;
  if (v3)
  {
    v2 = *(*v3 + 8);

    return v2();
  }

  return result;
}

unsigned int *WTF::WeakHashSet<WebKit::WebProcessProxy,WTF::DefaultWeakPtrImpl,(WTF::EnableWeakPtrThreadingAssertions)1>::forEach(unsigned int *result, uint64_t a2)
{
  v3 = result;
  if (*result && (v4 = *(*result - 12), v4))
  {
    if (v4 >> 29)
    {
      __break(0xC471u);
      return result;
    }

    v5 = WTF::fastMalloc((8 * v4));
  }

  else
  {
    v5 = 0;
  }

  result = WTF::HashTable<WTF::String,WTF::String,WTF::IdentityExtractor,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::begin(v3);
  v7 = result;
  v8 = v6;
  if (*v3)
  {
    v9 = *v3 + 8 * *(*v3 - 4);
  }

  else
  {
    v9 = 0;
  }

  if (v9 != result)
  {
    v10 = 0;
    v11 = 1;
    do
    {
      v12 = v11;
      v13 = *(*v7 + 8);
      if (v13)
      {
        result = WTF::WeakPtrFactory<WebPushD::PushServiceConnection,WTF::DefaultWeakPtrImpl>::initializeIfNeeded((v13 + 8), *(*v7 + 8));
        v14 = *(v13 + 8);
        if (v14)
        {
          atomic_fetch_add(v14, 1u);
        }
      }

      else
      {
        v14 = 0;
      }

      *(v5 + v10) = v14;
      do
      {
        v7 += 2;
      }

      while (v7 != v8 && (*v7 + 1) <= 1);
      ++v10;
      v11 = v12 + 1;
    }

    while (v7 != v9);
    if (v10)
    {
      v15 = v5;
      do
      {
        v16 = *v15;
        if (*v15)
        {
          v6 = *(v16 + 8);
          if (v6)
          {
            v17 = *v3;
            if (*v3)
            {
              v18 = *(v17 - 2);
              v19 = (~(v16 << 32) + v16) ^ ((~(v16 << 32) + v16) >> 22);
              v20 = 9 * ((v19 + ~(v19 << 13)) ^ ((v19 + ~(v19 << 13)) >> 8));
              v21 = (v20 ^ (v20 >> 15)) + ~((v20 ^ (v20 >> 15)) << 27);
              v22 = v18 & ((v21 >> 31) ^ v21);
              for (i = 1; ; ++i)
              {
                v24 = v17[v22];
                if (!v24)
                {
                  break;
                }

                if (v24 != -1 && v24 == v16)
                {
                  (*(**a2 + 16))();
                  break;
                }

                v22 = (v22 + i) & v18;
              }
            }
          }
        }

        v15 = (v15 + 8);
      }

      while (v15 != (v5 + 8 * v10));
      v26 = 8 * v12;
      v27 = v5;
      do
      {
        result = *v27;
        *v27 = 0;
        if (result && atomic_fetch_add(result, 0xFFFFFFFF) == 1)
        {
          atomic_store(1u, result);
          result = WTF::fastFree(result, v6);
        }

        ++v27;
        v26 -= 8;
      }

      while (v26);
    }
  }

  if (v5)
  {

    return WTF::fastFree(v5, v6);
  }

  return result;
}

uint64_t *WTF::Detail::CallableWrapper<WebKit::ProcessAssertion::acquireAsync(WTF::CompletionHandler<void ()(void)> &&)::$_0::operator()(void)::{lambda(void)#1},void>::call(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = (a1 + 16);
  if (v2)
  {
    return WTF::CompletionHandler<void ()(void)>::operator()(result);
  }

  return result;
}

uint64_t WTF::Detail::CallableWrapper<WebKit::ProcessThrottler::setThrottleState(WebKit::ProcessThrottleState)::$_0,void>::~CallableWrapper(WTF *this, void *a2)
{
  v3 = *(this + 1);
  *this = &unk_1F11152B8;
  *(this + 1) = 0;
  if (v3)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::ProcessAssertion,(WTF::DestructionThread)0>::deref((v3 + 8), a2);
  }

  return WTF::fastFree(this, a2);
}

uint64_t WTF::Detail::CallableWrapper<WebKit::ProcessAssertion::acquireAsync(WTF::CompletionHandler<void ()(void)> &&)::$_0::operator()(void)::{lambda(void)#1},void>::~CallableWrapper(WTF *this, void *a2)
{
  *this = &unk_1F1100D60;
  v3 = *(this + 2);
  *(this + 2) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  v4 = *(this + 1);
  *(this + 1) = 0;
  if (v4)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::ProcessAssertion,(WTF::DestructionThread)0>::deref((v4 + 8), a2);
  }

  return WTF::fastFree(this, a2);
}

void IPC::Connection::dispatchIncomingMessages(IPC::Connection *this)
{
  v44 = *MEMORY[0x1E69E9840];
  v1 = atomic_load(this + 33);
  if (v1)
  {
    os_unfair_lock_lock(this + 25);
    v3 = *(this + 13);
    if (v3 == *(this + 14))
    {

      os_unfair_lock_unlock(this + 25);
    }

    else
    {
      if (v3 >= *(this + 32))
      {
        goto LABEL_53;
      }

      v4 = (*(this + 15) + 8 * v3);
      v5 = *v4;
      *v4 = 0;
      std::unique_ptr<IPC::Decoder>::reset[abi:sn200100](v4, 0);
      v6 = *(this + 32);
      v7 = *(this + 13);
      v8 = *(this + 14);
      if (v7 == v6 - 1)
      {
        v9 = 0;
      }

      else
      {
        v9 = v7 + 1;
      }

      *(this + 13) = v9;
      v10 = v8 >= v9;
      v11 = v8 - v9;
      if (v10)
      {
        v6 = 0;
      }

      if ((*(this + 96) & 1) == 0)
      {
LABEL_53:
        __break(1u);
      }

      v12 = v11 + v6;
      v13 = *(this + 95);
      if (v12 < 0x259)
      {
        if (*(this + 95))
        {
          *(this + 95) = v13 - 1;
        }
      }

      else
      {
        v14 = (v13 + 1);
        if (v14 >= 9)
        {
          LOWORD(v14) = 9;
        }

        *(this + 95) = v14 | 0x100;
      }

      v15 = 0x258u / (v13 + 1);
      if (v15 >= v12)
      {
        v16 = v12;
      }

      else
      {
        v16 = v15;
      }

      if (v12 > v15)
      {
        v17 = qword_1ED6416C8;
        if (os_log_type_enabled(qword_1ED6416C8, OS_LOG_TYPE_ERROR))
        {
          *buf = 134218496;
          *&buf[4] = this;
          v40 = 2048;
          v41 = v12;
          v42 = 2048;
          v43 = v16;
          _os_log_error_impl(&dword_19D52D000, v17, OS_LOG_TYPE_ERROR, "%p - Connection::dispatchIncomingMessages: IPC throttling was triggered (has %zu pending incoming messages, will only process %zu before yielding)", buf, 0x20u);
          v17 = qword_1ED6416C8;
        }

        if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
        {
          v35 = *(v5 + 25);
          if (v35 >= 0x107F)
          {
            v35 = 4223;
          }

          v36 = (&IPC::Detail::messageDescriptions)[3 * v35];
          *buf = 134218242;
          *&buf[4] = this;
          v40 = 2082;
          v41 = v36;
          _os_log_error_impl(&dword_19D52D000, v17, OS_LOG_TYPE_ERROR, "%p - Connection::dispatchIncomingMessages: first IPC message in queue is %{public}s", buf, 0x16u);
        }
      }

      if (*(this + 13) != *(this + 14))
      {
        v18 = IPC::Connection::dispatcher(this);
        while (1)
        {
          v19 = *this;
          if ((*this & 1) == 0)
          {
            break;
          }

          v20 = *this;
          atomic_compare_exchange_strong_explicit(this, &v20, v19 + 2, memory_order_relaxed, memory_order_relaxed);
          if (v20 == v19)
          {
            goto LABEL_33;
          }
        }

        WTF::ThreadSafeWeakPtrControlBlock::strongRef(*this);
LABEL_33:
        v21 = WTF::fastMalloc(0x10);
        *v21 = &unk_1F1147548;
        v21[1] = this;
        *buf = v21;
        (*(*v18 + 16))(v18, buf);
        v22 = *buf;
        *buf = 0;
        if (v22)
        {
          (*(*v22 + 8))(v22);
        }
      }

      os_unfair_lock_unlock(this + 25);
      v38 = v5;
      IPC::Connection::dispatchMessage(this, &v38);
      v23 = v38;
      v38 = 0;
      if (v23)
      {
        IPC::Decoder::~Decoder(v23);
        bmalloc::api::tzoneFree(v33, v34);
      }

      if (v16 >= 2)
      {
        v24 = v16 - 1;
        while (1)
        {
          os_unfair_lock_lock(this + 25);
          v25 = *(this + 13);
          if (v25 == *(this + 14))
          {
            break;
          }

          if (v25 >= *(this + 32))
          {
            goto LABEL_53;
          }

          v26 = (*(this + 15) + 8 * v25);
          v27 = *v26;
          *v26 = 0;
          std::unique_ptr<IPC::Decoder>::reset[abi:sn200100](v26, 0);
          v28 = *(this + 13);
          if (v28 == *(this + 32) - 1)
          {
            v29 = 0;
          }

          else
          {
            v29 = v28 + 1;
          }

          *(this + 13) = v29;
          os_unfair_lock_unlock(this + 25);
          v37 = v27;
          IPC::Connection::dispatchMessage(this, &v37);
          v30 = v37;
          v37 = 0;
          if (v30)
          {
            IPC::Decoder::~Decoder(v30);
            bmalloc::api::tzoneFree(v31, v32);
          }

          if (!--v24)
          {
            return;
          }
        }

        os_unfair_lock_unlock(this + 25);
      }
    }
  }
}

void IPC::Connection::takeAsyncReplyHandler(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v7 = a2;
  os_unfair_lock_lock((a1 + 100));
  if ((a2 - 1) >= 0xFFFFFFFFFFFFFFFELL)
  {
    *a3 = 0;
  }

  else
  {
    v6 = WTF::HashTable<WTF::ObjectIdentifierGeneric<IPC::AsyncReplyIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<IPC::AsyncReplyIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::CompletionHandler<void ()(IPC::Connection *,IPC::Decoder *)>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<IPC::AsyncReplyIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::CompletionHandler<void ()(IPC::Connection *,IPC::Decoder *)>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<IPC::AsyncReplyIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<IPC::AsyncReplyIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::CompletionHandler<void ()(IPC::Connection *,IPC::Decoder *)>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<IPC::AsyncReplyIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<IPC::AsyncReplyIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::CompletionHandler<void ()(IPC::Connection *,IPC::Decoder *)>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<IPC::AsyncReplyIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::find<WTF::IdentityHashTranslator<WTF::HashMap<WTF::ObjectIdentifierGeneric<IPC::AsyncReplyIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::CompletionHandler<void ()(IPC::Connection *,IPC::Decoder *)>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<IPC::AsyncReplyIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<IPC::AsyncReplyIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::CompletionHandler<void ()(IPC::Connection *,IPC::Decoder *)>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<IPC::AsyncReplyIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,(WTF::ShouldValidateKey)1,WTF::ObjectIdentifierGeneric<IPC::AsyncReplyIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>((a1 + 288), &v7);
    WTF::HashMap<WTF::ObjectIdentifierGeneric<IPC::AsyncReplyIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::CompletionHandler<void ()(IPC::Connection *,IPC::Decoder *)>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<IPC::AsyncReplyIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<IPC::AsyncReplyIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::CompletionHandler<void ()(IPC::Connection *,IPC::Decoder *)>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::take((a1 + 288), v6, a3);
  }

  os_unfair_lock_unlock((a1 + 100));
}

uint64_t WTF::Detail::CallableWrapper<WebKit::AuxiliaryProcessProxy::sendMessage(WTF::UniqueRef<IPC::Encoder> &&,WTF::OptionSet<IPC::SendOption>,std::optional<IPC::ConnectionAsyncReplyHandler>,WebKit::AuxiliaryProcessProxy::ShouldStartProcessThrottlerActivity)::$_1,void,IPC::Connection *,IPC::Decoder *>::call(uint64_t a1)
{
  v1 = *(a1 + 16);
  *(a1 + 16) = 0;
  (*(*v1 + 16))(v1);
  v2 = *(*v1 + 8);

  return v2(v1);
}

void WTF::Detail::CallableWrapper<WTF::CompletionHandler<void ()(IPC::Connection*,IPC::Decoder *)> IPC::Connection::makeAsyncReplyCompletionHandler<Messages::WebProcess::InitializeWebProcess,WebKit::WebProcessProxy::initializeWebProcess(WebKit::WebProcessCreationParameters &&)::$_0>(WebKit::WebProcessProxy::initializeWebProcess(WebKit::WebProcessCreationParameters &&)::$_0 &&,WTF::ThreadLikeAssertion)::{lambda(WTF::CompletionHandler,IPC::Decoder)#1},void,WTF::CompletionHandler,IPC::Decoder>::call(uint64_t a1, uint64_t a2, IPC::Decoder *a3)
{
  if (a3 && *a3)
  {
    IPC::Decoder::decode<WebCore::ProcessIdentity>(a3, v14);
    if (v15 == 1)
    {
      WTF::MachSendRight::MachSendRight(v12, v14);
      v13 = 1;
      if (v15 & 1) == 0 || (WTF::MachSendRight::~MachSendRight(v14), (v13))
      {
LABEL_6:
        WTF::MachSendRight::MachSendRight(v14, v12);
        v5 = *(a1 + 8);
        if (v5)
        {
          v6 = *(v5 + 8);
          if (v6)
          {
            v7 = (v6 + 16);
            atomic_fetch_add((v6 + 16), 1u);
            WebCore::ProcessIdentity::operator=();
            WTF::ThreadSafeRefCounted<WebKit::AuxiliaryProcessProxy,(WTF::DestructionThread)2>::deref(v7);
          }
        }

        WTF::MachSendRight::~MachSendRight(v14);
        if (v13)
        {
          WTF::MachSendRight::~MachSendRight(v12);
        }

        return;
      }
    }

    else
    {
      v12[0] = 0;
      v13 = 0;
    }

    v9 = *a3;
    v10 = *(a3 + 1);
    *a3 = 0;
    *(a3 + 1) = 0;
    v11 = *(a3 + 3);
    if (!v11 || !v10 || ((*(*v11 + 16))(v11, v9), (v13 & 1) == 0))
    {
      IPC::Connection::cancelReply<Messages::WebProcess::InitializeWebProcess,WebKit::WebProcessProxy::initializeWebProcess(WebKit::WebProcessCreationParameters &&)::$_0>(a1 + 8);
      return;
    }

    goto LABEL_6;
  }

  v8 = a1 + 8;

  IPC::Connection::cancelReply<Messages::WebProcess::InitializeWebProcess,WebKit::WebProcessProxy::initializeWebProcess(WebKit::WebProcessCreationParameters &&)::$_0>(v8);
}

void IPC::ArgumentCoder<WebCore::ProcessIdentity,void>::decode(IPC::Decoder *a1@<X0>, WTF::MachSendRight *a2@<X8>)
{
  IPC::Decoder::takeLastAttachment(a1, v5);
  if (*a1)
  {
    if ((v6 & 1) == 0)
    {
      __break(1u);
      return;
    }

    WTF::MachSendRight::MachSendRight();
    WTF::MachSendRight::MachSendRight(a2, v4);
    *(a2 + 4) = 1;
    WTF::MachSendRight::~MachSendRight(v4);
  }

  else
  {
    *a2 = 0;
    *(a2 + 4) = 0;
  }

  if (v6 == 1)
  {
    WTF::MachSendRight::~MachSendRight(v5);
  }
}

void sub_19D5C0074(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, int a9, char a10, __int16 a11, char a12, __int16 a13, char a14)
{
  WTF::MachSendRight::~MachSendRight(&a10);
  if (a14 == 1)
  {
    WTF::MachSendRight::~MachSendRight(&a12);
  }

  _Unwind_Resume(a1);
}

void IPC::Decoder::decode<WebCore::ProcessIdentity>(IPC::Decoder *a1@<X0>, WTF::MachSendRight *a2@<X8>)
{
  IPC::ArgumentCoder<WebCore::ProcessIdentity,void>::decode(a1, a2);
  if ((*(a2 + 4) & 1) == 0)
  {
    IPC::Decoder::markInvalid(a1);
  }
}

void sub_19D5C00E0(_Unwind_Exception *exception_object)
{
  if (*(v1 + 4) == 1)
  {
    WTF::MachSendRight::~MachSendRight(v1);
  }

  _Unwind_Resume(exception_object);
}

void WebKit::ProcessThrottlerActivity::~ProcessThrottlerActivity(WebKit::ProcessThrottlerActivity *this, void *a2)
{
  v3 = *(this + 2);
  if (v3)
  {
    if (*(v3 + 8))
    {
      WebKit::ProcessThrottlerActivity::invalidate(this, 0);
      v3 = *(this + 2);
      *(this + 2) = 0;
      if (!v3)
      {
        goto LABEL_8;
      }
    }

    else
    {
      *(this + 2) = 0;
    }

    if (atomic_fetch_add(v3, 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, v3);
      WTF::fastFree(v3, a2);
    }
  }

LABEL_8:
  if (*(this + 2) == 1)
  {

    WTF::WeakPtrFactory<WebPushD::PushServiceConnection,WTF::DefaultWeakPtrImpl>::~WeakPtrFactory(this, a2);
  }

  else
  {
    __break(0xC471u);
  }
}

void sub_19D5C01AC(_Unwind_Exception *a1, void *a2)
{
  v4 = *(v2 + 16);
  *(v2 + 16) = 0;
  if (v4 && atomic_fetch_add(v4, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v4);
    WTF::fastFree(v4, a2);
  }

  if (*(v2 + 8) == 1)
  {
    WTF::WeakPtrFactory<WebPushD::PushServiceConnection,WTF::DefaultWeakPtrImpl>::~WeakPtrFactory(v2, a2);
    _Unwind_Resume(a1);
  }

  __break(0xC471u);
}

uint64_t WTF::Detail::CallableWrapper<WTF::CompletionHandler<void ()(IPC::Connection*,IPC::Decoder *)> IPC::Connection::makeAsyncReplyCompletionHandler<Messages::WebProcess::InitializeWebProcess,WebKit::WebProcessProxy::initializeWebProcess(WebKit::WebProcessCreationParameters &&)::$_0>(WebKit::WebProcessProxy::initializeWebProcess(WebKit::WebProcessCreationParameters &&)::$_0 &&,WTF::ThreadLikeAssertion)::{lambda(WTF::CompletionHandler,IPC::Decoder)#1},void,WTF::CompletionHandler,IPC::Decoder>::~CallableWrapper(WTF *this, void *a2)
{
  *this = &unk_1F111A998;
  v3 = *(this + 3);
  *(this + 3) = 0;
  if (v3)
  {
    WTF::ThreadSafeRefCounted<WebKit::LaunchGrant,(WTF::DestructionThread)0>::deref(v3);
  }

  v4 = *(this + 2);
  *(this + 2) = 0;
  if (v4)
  {
    WTF::RefCounted<WebKit::ProcessThrottlerActivity>::deref((v4 + 8), a2);
  }

  v5 = *(this + 1);
  *(this + 1) = 0;
  if (v5 && atomic_fetch_add(v5, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v5);
    WTF::fastFree(v5, a2);
  }

  return WTF::fastFree(this, a2);
}

_DWORD *WTF::RefCounted<WebKit::ProcessThrottlerActivity>::deref(_DWORD *result, void *a2)
{
  if (*result == 1)
  {
    WebKit::ProcessThrottlerActivity::~ProcessThrottlerActivity((result - 2), a2);

    return bmalloc::api::tzoneFree(v3, v4);
  }

  else
  {
    --*result;
  }

  return result;
}

atomic_uint *WebKit::ProcessThrottlerActivity::invalidate(atomic_uint *result, void *a2)
{
  v24 = *MEMORY[0x1E69E9840];
  v2 = *(result + 2);
  if (!v2)
  {
    return result;
  }

  v3 = *(v2 + 8);
  if (!v3)
  {
    return result;
  }

  v4 = *(*(v3 + 16) + 8);
  if (!v4)
  {
    goto LABEL_29;
  }

  v5 = result;
  atomic_fetch_add((v4 + 16), 1u);
  if (*(result + 41) == 1 && a2 == 0)
  {
    goto LABEL_18;
  }

  v7 = qword_1ED641030;
  if (!os_log_type_enabled(qword_1ED641030, OS_LOG_TYPE_DEFAULT))
  {
    goto LABEL_18;
  }

  v8 = *(v5 + 2);
  if (v8)
  {
    v8 = *(v8 + 8);
    if (v8)
    {
      v9 = *(*(v8 + 16) + 8);
      if (v9)
      {
        v10 = *(v9 + 80);
        if (v10)
        {
          LODWORD(v10) = *(v10 + 108);
        }

        goto LABEL_15;
      }

LABEL_29:
      __break(0xC471u);
      JUMPOUT(0x19D5C04E4);
    }
  }

  LODWORD(v10) = 0;
LABEL_15:
  v11 = "background";
  v12 = *(v5 + 3);
  if (*(v5 + 40))
  {
    v11 = "foreground";
  }

  v14 = 134219010;
  v15 = v5;
  v16 = 1024;
  v17 = v10;
  v18 = 2048;
  v19 = v8;
  v20 = 2082;
  v21 = v11;
  v22 = 2082;
  v23 = v12;
  _os_log_impl(&dword_19D52D000, v7, OS_LOG_TYPE_DEFAULT, "%p - [PID=%d, throttler=%p] ProcessThrottler::Activity::invalidate: Ending %{public}s activity / '%{public}s'", &v14, 0x30u);
LABEL_18:
  if (*(v3 + 236) == 1)
  {
    if (*(v5 + 40) == 1)
    {
      if ((WTF::WeakHashSet<WebKit::ProcessThrottlerActivity,WTF::DefaultWeakPtrImpl,(WTF::EnableWeakPtrThreadingAssertions)1>::remove<WebKit::ProcessThrottlerActivity>(v3 + 184, v5) & 1) == 0)
      {
        goto LABEL_24;
      }

      goto LABEL_23;
    }

    if (WTF::WeakHashSet<WebKit::ProcessThrottlerActivity,WTF::DefaultWeakPtrImpl,(WTF::EnableWeakPtrThreadingAssertions)1>::remove<WebKit::ProcessThrottlerActivity>(v3 + 200, v5))
    {
LABEL_23:
      WebKit::ProcessThrottler::updateThrottleStateIfNeeded(v3, 0, 0);
    }
  }

LABEL_24:
  v13 = *(v5 + 2);
  *(v5 + 2) = 0;
  if (v13)
  {
    if (atomic_fetch_add(v13, 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, v13);
      WTF::fastFree(v13, a2);
    }
  }

  return WebKit::ProcessThrottler::deref(v3);
}

uint64_t WTF::WeakHashSet<WebKit::ProcessThrottlerActivity,WTF::DefaultWeakPtrImpl,(WTF::EnableWeakPtrThreadingAssertions)1>::remove<WebKit::ProcessThrottlerActivity>(uint64_t a1, uint64_t *a2)
{
  v4 = *(a1 + 12);
  v5 = *(a1 + 8) + 1;
  *(a1 + 8) = v5;
  if (v5 > v4)
  {
    v6 = *a1;
    if (*a1)
    {
      v7 = *(v6 - 4);
      if (!v7)
      {
LABEL_15:
        v13 = *(v6 - 4);
        if (6 * *(v6 - 12) < v13 && v13 > 8)
        {
          WTF::HashTable<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>,WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>,WTF::IdentityExtractor,WTF::DefaultHash<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>>,WTF::HashTraits<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>>,WTF::HashTraits<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>>,WTF::FastMalloc>::shrinkToBestSize(a1);
          v6 = *a1;
          *(a1 + 8) = 0;
          if (!v6)
          {
            goto LABEL_22;
          }
        }

        else
        {
          *(a1 + 8) = 0;
        }

        LODWORD(v6) = *(v6 - 12);
        if (v6 > 0x7FFFFFFE)
        {
          v15 = -2;
          goto LABEL_24;
        }

LABEL_22:
        v15 = 2 * v6;
LABEL_24:
        *(a1 + 12) = v15;
        goto LABEL_25;
      }

      v8 = 0;
      v9 = 8 * v7;
      v10 = v6 - 8;
      do
      {
        v11 = *(v10 + v9);
        if ((v11 + 1) >= 2 && !*(v11 + 8))
        {
          *(v10 + v9) = 0;
          if (atomic_fetch_add(v11, 0xFFFFFFFF) == 1)
          {
            atomic_store(1u, v11);
            WTF::fastFree(v11, a2);
          }

          *(v10 + v9) = -1;
          ++v8;
        }

        v9 -= 8;
      }

      while (v9);
      v6 = *a1;
      if (v8)
      {
        v12 = *(v6 - 12) - v8;
        *(v6 - 16) += v8;
        *(v6 - 12) = v12;
        goto LABEL_15;
      }

      if (v6)
      {
        goto LABEL_15;
      }
    }

    LODWORD(v6) = 0;
    *(a1 + 8) = 0;
    goto LABEL_22;
  }

LABEL_25:
  if (!*a2 || !*(*a2 + 8))
  {
    return 0;
  }

  v19 = *a2;
  v16 = WTF::HashTable<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>,WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>,WTF::IdentityExtractor,WTF::DefaultHash<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>>,WTF::HashTraits<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>>,WTF::HashTraits<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>>,WTF::FastMalloc>::find<WTF::HashSetTranslator<WTF::HashTraits<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>>,WTF::DefaultHash<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>>>,(WTF::ShouldValidateKey)1,WTF::DefaultWeakPtrImpl const*>(a1, &v19);
  if (*a1)
  {
    v17 = *a1 + 8 * *(*a1 - 4);
    if (v17 == v16)
    {
      return 0;
    }
  }

  else
  {
    if (!v16)
    {
      return 0;
    }

    v17 = 0;
  }

  if (v17 != v16)
  {
    WTF::HashTable<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>,WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>,WTF::IdentityExtractor,WTF::DefaultHash<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>>,WTF::HashTraits<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>>,WTF::HashTraits<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>>,WTF::FastMalloc>::remove(a1, v16);
  }

  return 1;
}

void sub_19D5C0770(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  CFRelease(*(v10 + 8));
  if (a10)
  {
    CFRelease(*(a10 + 8));
  }

  _Unwind_Resume(a1);
}

uint64_t API::PageConfiguration::websiteDataStore(API::PageConfiguration *this)
{
  result = *(this + 7);
  if (!result)
  {
    WebKit::WebsiteDataStore::defaultDataStore(0, &v4);
    result = v4;
    v3 = *(this + 7);
    *(this + 7) = v4;
    if (v3)
    {
      CFRelease(*(v3 + 8));
      return *(this + 7);
    }
  }

  return result;
}

uint64_t WTF::Detail::CallableWrapper<WebKit::ProcessThrottler::setThrottleState(WebKit::ProcessThrottleState)::$_3,void>::~CallableWrapper(WTF *this, void *a2)
{
  v3 = *(this + 1);
  *this = &unk_1F1115330;
  *(this + 1) = 0;
  if (v3 && atomic_fetch_add(v3, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v3);
    WTF::fastFree(v3, a2);
  }

  return WTF::fastFree(this, a2);
}

uint64_t WebKit::WebsiteDataStore::setTrackingPreventionEnabled(uint64_t this, int a2)
{
  v29 = *MEMORY[0x1E69E9840];
  if (a2)
  {
    v2 = 2;
  }

  else
  {
    v2 = 1;
  }

  v3 = *(this + 289);
  if (v3 != v2)
  {
    v5 = this;
    if (*(this + 289))
    {
      this = v3 == 2;
    }

    else
    {
      this = *(*(this + 224) + 544);
      if ((this & 0x100) == 0)
      {
        this = WebKit::doesAppHaveTrackingPreventionEnabled(this);
      }
    }

    *(v5 + 289) = v2;
    if ((this & 1) != a2)
    {
      v6 = qword_1ED641350;
      if (os_log_type_enabled(qword_1ED641350, OS_LOG_TYPE_DEFAULT))
      {
        v8 = *(v5 + 24);
        *buf = 134218496;
        *&buf[4] = v5;
        v25 = 2048;
        v26 = v8;
        v27 = 1024;
        v28 = a2;
        _os_log_impl(&dword_19D52D000, v6, OS_LOG_TYPE_DEFAULT, "%p - WebsiteDataStore::setTrackingPreventionEnabled: sessionID=%llu, enabled=%d", buf, 0x1Cu);
      }

      v9 = *(v5 + 432);
      if (v9)
      {
        atomic_fetch_add((v9 + 16), 1u);
        v21 = v5 + 24;
        v22[0] = a2;
        v10 = IPC::Encoder::operator new(0x238, v7);
        *v10 = 720;
        *(v10 + 68) = 0;
        *(v10 + 70) = 0;
        *(v10 + 69) = 0;
        *(v10 + 2) = 0;
        *(v10 + 3) = 0;
        *(v10 + 1) = 0;
        IPC::Encoder::encodeHeader(v10);
        v23 = v10;
        IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(v10, *(v5 + 24));
        IPC::Encoder::operator<<<BOOL &>(v10, v22);
        buf[0] = 0;
        BYTE2(v26) = 0;
        WebKit::AuxiliaryProcessProxy::sendMessage(v9, &v23, 0, buf, 1);
        if (BYTE2(v26) == 1)
        {
          v12 = *buf;
          *buf = 0;
          if (v12)
          {
            (*(*v12 + 8))(v12);
          }
        }

        v13 = v23;
        v23 = 0;
        if (v13)
        {
          IPC::Encoder::~Encoder(v13, v11);
          bmalloc::api::tzoneFree(v19, v20);
        }

        WTF::ThreadSafeRefCounted<WebKit::AuxiliaryProcessProxy,(WTF::DestructionThread)2>::deref((v9 + 16));
      }

      WebKit::WebsiteDataStore::processPools(v5, -1, buf);
      v15 = WTF::HashTable<WTF::Ref<WebKit::WebProcessProxy,WTF::RawPtrTraits<WebKit::WebProcessProxy>,WTF::DefaultRefDerefTraits<WebKit::WebProcessProxy>>,WTF::Ref<WebKit::WebProcessProxy,WTF::RawPtrTraits<WebKit::WebProcessProxy>,WTF::DefaultRefDerefTraits<WebKit::WebProcessProxy>>,WTF::IdentityExtractor,WTF::DefaultHash<WTF::Ref<WebKit::WebProcessProxy,WTF::RawPtrTraits<WebKit::WebProcessProxy>,WTF::DefaultRefDerefTraits<WebKit::WebProcessProxy>>>,WTF::HashTraits<WTF::Ref<WebKit::WebProcessProxy,WTF::RawPtrTraits<WebKit::WebProcessProxy>,WTF::DefaultRefDerefTraits<WebKit::WebProcessProxy>>>,WTF::HashTraits<WTF::Ref<WebKit::WebProcessProxy,WTF::RawPtrTraits<WebKit::WebProcessProxy>,WTF::DefaultRefDerefTraits<WebKit::WebProcessProxy>>>,WTF::FastMalloc>::begin(buf);
      v16 = v14;
      this = *buf;
      if (*buf)
      {
        v17 = *buf + 8 * *(*buf - 4);
      }

      else
      {
        v17 = 0;
      }

      if (v17 != v15)
      {
        do
        {
          v18 = *v15;
          if (*v15)
          {
            CFRetain(*(v18 + 8));
            LOBYTE(v21) = a2;
            WebKit::WebProcessPool::sendToAllProcessesForSession<Messages::WebProcess::SetTrackingPreventionEnabled>(v18, &v21, *(v5 + 24));
            CFRelease(*(v18 + 8));
          }

          else
          {
            LOBYTE(v21) = a2;
            WebKit::WebProcessPool::sendToAllProcessesForSession<Messages::WebProcess::SetTrackingPreventionEnabled>(0, &v21, *(v5 + 24));
          }

          do
          {
            ++v15;
          }

          while (v15 != v16 && (*v15 + 1) <= 1);
        }

        while (v15 != v17);
        this = *buf;
      }

      if (this)
      {
        return WTF::HashTable<WTF::Ref<WebKit::WebExtensionMatchPattern,WTF::RawPtrTraits<WebKit::WebExtensionMatchPattern>,WTF::DefaultRefDerefTraits<WebKit::WebExtensionMatchPattern>>,WTF::Ref<WebKit::WebExtensionMatchPattern,WTF::RawPtrTraits<WebKit::WebExtensionMatchPattern>,WTF::DefaultRefDerefTraits<WebKit::WebExtensionMatchPattern>>,WTF::IdentityExtractor,WTF::DefaultHash<WTF::Ref<WebKit::WebExtensionMatchPattern,WTF::RawPtrTraits<WebKit::WebExtensionMatchPattern>,WTF::DefaultRefDerefTraits<WebKit::WebExtensionMatchPattern>>>,WTF::HashTraits<WTF::Ref<WebKit::WebExtensionMatchPattern,WTF::RawPtrTraits<WebKit::WebExtensionMatchPattern>,WTF::DefaultRefDerefTraits<WebKit::WebExtensionMatchPattern>>>,WTF::HashTraits<WTF::Ref<WebKit::WebExtensionMatchPattern,WTF::RawPtrTraits<WebKit::WebExtensionMatchPattern>,WTF::DefaultRefDerefTraits<WebKit::WebExtensionMatchPattern>>>,WTF::FastMalloc>::deallocateTable(this, v14);
      }
    }
  }

  return this;
}

void *WebKit::WebPreferences::setSafeBrowsingEnabled(atomic_uint **this, const BOOL *a2)
{
  {
    atomic_fetch_add_explicit(WebKit::WebPreferencesKey::safeBrowsingEnabledKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
    WebKit::WebPreferencesKey::safeBrowsingEnabledKey(void)::key = WebKit::WebPreferencesKey::safeBrowsingEnabledKey(void)::$_0::operator() const(void)::impl;
  }

  result = WebKit::WebPreferencesStore::setBoolValueForKey((this + 5), &WebKit::WebPreferencesKey::safeBrowsingEnabledKey(void)::key, *a2);
  if (result)
  {
    {
      atomic_fetch_add_explicit(WebKit::WebPreferencesKey::safeBrowsingEnabledKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
      WebKit::WebPreferencesKey::safeBrowsingEnabledKey(void)::key = WebKit::WebPreferencesKey::safeBrowsingEnabledKey(void)::$_0::operator() const(void)::impl;
    }

    v5 = *a2;

    return WebKit::WebPreferences::updateBoolValueForKey(this, &WebKit::WebPreferencesKey::safeBrowsingEnabledKey(void)::key, v5, 0);
  }

  return result;
}

unsigned int **WTF::WeakPtrFactory<WebPushD::PushServiceConnection,WTF::DefaultWeakPtrImpl>::~WeakPtrFactory(unsigned int **a1, void *a2)
{
  if (*a1)
  {
    *(*a1 + 1) = 0;
    v3 = *a1;
    *a1 = 0;
    if (v3)
    {
      if (atomic_fetch_add(v3, 0xFFFFFFFF) == 1)
      {
        atomic_store(1u, v3);
        WTF::fastFree(v3, a2);
      }
    }
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WebKit::AuxiliaryProcessProxy::sendMessage(WTF::UniqueRef<IPC::Encoder> &&,WTF::OptionSet<IPC::SendOption>,std::optional<IPC::ConnectionAsyncReplyHandler>,WebKit::AuxiliaryProcessProxy::ShouldStartProcessThrottlerActivity)::$_1,void,IPC::Connection *,IPC::Decoder *>::~CallableWrapper(WTF *this, void *a2)
{
  *this = &unk_1F1114C88;
  v3 = *(this + 2);
  *(this + 2) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  v4 = *(this + 1);
  *(this + 1) = 0;
  if (v4)
  {
    WTF::RefCounted<WebKit::ProcessThrottlerActivity>::deref((v4 + 8), a2);
  }

  return WTF::fastFree(this, a2);
}

atomic_uint *WebKit::ProcessThrottler::sendPrepareToSuspendIPC(atomic_uint *result, uint64_t a2)
{
  v27 = *MEMORY[0x1E69E9840];
  if (*(result + 237) == 1)
  {
    v3 = result;
    if (*(result + 224) == 1)
    {
      if (a2)
      {
        v4 = qword_1ED641030;
        if (os_log_type_enabled(qword_1ED641030, OS_LOG_TYPE_DEFAULT))
        {
          v5 = *(*(v3 + 16) + 8);
          if (!v5)
          {
            __break(0xC471u);
            JUMPOUT(0x19D5C101CLL);
          }

          v6 = *(v5 + 80);
          if (v6)
          {
            LODWORD(v6) = *(v6 + 108);
          }

          v7 = *(v3 + 216);
          *v20 = 134218752;
          *&v20[4] = v3;
          v21 = 1024;
          v22 = v6;
          v23 = 1024;
          *v24 = 1;
          *&v24[4] = 2048;
          *&v24[6] = v7;
          _os_log_impl(&dword_19D52D000, v4, OS_LOG_TYPE_DEFAULT, "%p - [PID=%d] ProcessThrottler::sendPrepareToSuspendIPC: Not sending PrepareToSuspend(isSuspensionImminent=%d) IPC because there is already one in flight (%llu)", v20, 0x22u);
        }

        return WebKit::ProcessThrottler::setThrottleState(v3, a2 ^ 1);
      }

      __break(0xC471u);
LABEL_30:
      JUMPOUT(0x19D5C0FDCLL);
    }

    *(result + 27) = ++WebKit::generatePrepareToSuspendRequestID(void)::prepareToSuspendRequestID;
    *(result + 224) = 1;
    v8 = *(*(result + 2) + 8);
    if (!v8)
    {
      __break(0xC471u);
      JUMPOUT(0x19D5C0FFCLL);
    }

    atomic_fetch_add((v8 + 16), 1u);
    v9 = *(v8 + 80);
    if (v9)
    {
      v10 = *(v9 + 108);
    }

    else
    {
      v10 = 0;
    }

    v11 = WebKit::ProcessAssertion::remainingRunTimeInSeconds(v10);
    v12 = qword_1ED641030;
    if (!os_log_type_enabled(qword_1ED641030, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_19;
    }

    v13 = *(*(v3 + 16) + 8);
    if (v13)
    {
      v14 = *(v13 + 80);
      if (v14)
      {
        LODWORD(v14) = *(v14 + 108);
      }

      if (*(v3 + 224))
      {
        v15 = *(v3 + 216);
        *v20 = 134219008;
        *&v20[4] = v3;
        v21 = 1024;
        v22 = v14;
        v23 = 2048;
        *v24 = v15;
        *&v24[8] = 1024;
        *&v24[10] = a2;
        v25 = 2048;
        v26 = v11;
        _os_log_impl(&dword_19D52D000, v12, OS_LOG_TYPE_DEFAULT, "%p - [PID=%d] ProcessThrottler::sendPrepareToSuspendIPC: Sending PrepareToSuspend(%llu, isSuspensionImminent=%d) IPC, remainingRunTime=%fs", v20, 0x2Cu);
LABEL_19:
        WTF::WeakPtrFactory<WebPushD::PushServiceConnection,WTF::DefaultWeakPtrImpl>::initializeIfNeeded(v3, v3);
        v16 = *v3;
        atomic_fetch_add(*v3, 1u);
        if (*(v3 + 224))
        {
          v17 = *(v3 + 216);
          v18 = WTF::fastMalloc(0x18);
          *v18 = &unk_1F1115358;
          v18[1] = v16;
          v18[2] = v17;
          *v20 = v18;
          (*(*v8 + 120))(v8, a2, v20, v11);
          v19 = *v20;
          *v20 = 0;
          if (v19)
          {
            (*(*v19 + 8))(v19);
          }

          WTF::ThreadSafeRefCounted<WebKit::AuxiliaryProcessProxy,(WTF::DestructionThread)2>::deref((v8 + 16));
          return WebKit::ProcessThrottler::setThrottleState(v3, a2 ^ 1);
        }
      }
    }

    else
    {
      __break(0xC471u);
    }

    __break(1u);
    goto LABEL_30;
  }

  return result;
}

double WebKit::ProcessAssertion::remainingRunTimeInSeconds(WebKit::ProcessAssertion *this)
{
  v1 = this;
  v10 = *MEMORY[0x1E69E9840];
  v2 = [MEMORY[0x1E69C75E0] identifierWithPid:this];
  if (!v2)
  {
    v6 = qword_1ED641030;
    if (!os_log_type_enabled(qword_1ED641030, OS_LOG_TYPE_ERROR))
    {
      return 0.0;
    }

    v8 = 67109120;
    v9 = v1;
    v7 = "ProcessAssertion::remainingRunTimeInSeconds failed to get identifier for process with PID=%d";
LABEL_11:
    _os_log_error_impl(&dword_19D52D000, v6, OS_LOG_TYPE_ERROR, v7, &v8, 8u);
    return 0.0;
  }

  v3 = [MEMORY[0x1E69C75D0] handleForIdentifier:v2 error:0];
  if (!v3)
  {
    v6 = qword_1ED641030;
    if (!os_log_type_enabled(qword_1ED641030, OS_LOG_TYPE_ERROR))
    {
      return 0.0;
    }

    v8 = 67109120;
    v9 = v1;
    v7 = "ProcessAssertion::remainingRunTimeInSeconds failed to get handle for process with PID=%d";
    goto LABEL_11;
  }

  v4 = [v3 activeLimitations];

  [v4 runTime];
  return result;
}

uint64_t WebKit::WebProcessProxy::sendPrepareToSuspend(uint64_t a1, int a2, uint64_t *a3, double a4)
{
  v30 = *MEMORY[0x1E69E9840];
  v8 = qword_1ED641030;
  v9 = os_log_type_enabled(qword_1ED641030, OS_LOG_TYPE_DEFAULT);
  if (v9)
  {
    v10 = *(a1 + 80);
    if (v10)
    {
      LODWORD(v10) = *(v10 + 108);
    }

    *buf = 134218496;
    *&buf[4] = a1;
    *&buf[12] = 1024;
    *&buf[14] = v10;
    v28 = 1024;
    v29 = a2;
    _os_log_impl(&dword_19D52D000, v8, OS_LOG_TYPE_DEFAULT, "%p - [PID=%i] WebProcessProxy::sendPrepareToSuspend: isSuspensionImminent=%d", buf, 0x18u);
  }

  WTF::MonotonicTime::now(v9);
  v23 = v11 + a4;
  v24[0] = a2;
  v25 = &v23;
  v13 = IPC::Encoder::operator new(0x238, v12);
  *v13 = 2962;
  *(v13 + 68) = 0;
  *(v13 + 70) = 0;
  *(v13 + 69) = 0;
  *(v13 + 2) = 0;
  *(v13 + 3) = 0;
  *(v13 + 1) = 0;
  IPC::Encoder::encodeHeader(v13);
  v26 = v13;
  IPC::Encoder::operator<<<BOOL &>(v13, v24);
  IPC::ArgumentCoder<double,void>::encode<IPC::Encoder>(v13, *v25);
  v14 = *a3;
  *a3 = 0;
  v15 = WTF::fastMalloc(0x10);
  *v15 = &unk_1F111AB28;
  v15[1] = v14;
  if (WTF::ObjectIdentifierGeneric<IPC::AsyncReplyIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>::m_generationProtected == 1)
  {
    result = 141;
    __break(0xC471u);
  }

  else
  {
    v16 = v15;
    IdentifierInternal = WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>::generateIdentifierInternal();
    *buf = v16;
    *&buf[8] = IdentifierInternal;
    buf[16] = 1;
    WebKit::AuxiliaryProcessProxy::sendMessage(a1, &v26, 0, buf, 0);
    if (buf[16] == 1)
    {
      v19 = *buf;
      *buf = 0;
      if (v19)
      {
        (*(*v19 + 8))(v19);
      }
    }

    result = v26;
    v26 = 0;
    if (result)
    {
      IPC::Encoder::~Encoder(result, v18);
      return bmalloc::api::tzoneFree(v21, v22);
    }
  }

  return result;
}

uint64_t WebKit::AuxiliaryProcessProxy::protectedConnection@<X0>(uint64_t this@<X0>, atomic_ullong **a2@<X8>)
{
  v2 = *(this + 88);
  if (v2)
  {
    while (1)
    {
      v4 = *v2;
      if ((*v2 & 1) == 0)
      {
        break;
      }

      v5 = *v2;
      atomic_compare_exchange_strong_explicit(v2, &v5, v4 + 2, memory_order_relaxed, memory_order_relaxed);
      if (v5 == v4)
      {
        goto LABEL_6;
      }
    }

    this = WTF::ThreadSafeWeakPtrControlBlock::strongRef(*v2);
LABEL_6:
    *a2 = v2;
  }

  else
  {
    this = 139;
    __break(0xC471u);
  }

  return this;
}

uint64_t WTF::Detail::CallableWrapper<IPC::Connection::enqueueIncomingMessage(WTF::UniqueRef<IPC::Decoder>)::$_1,void>::~CallableWrapper(WTF *this, void *a2)
{
  v3 = *(this + 1);
  *this = &unk_1F11474F8;
  *(this + 1) = 0;
  if (v3)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v3);
  }

  return WTF::fastFree(this, a2);
}

atomic_uchar **WTF::Detail::CallableWrapper<WebKit::ProcessLauncher::finishLaunchingProcess(WTF::ASCIILiteral)::$_1,void,NSObject  {objcproto13OS_xpc_object}*>::call(atomic_uchar **result)
{
  v1 = result[2];
  if (v1)
  {
    v2 = result;
    result = WTF::ThreadSafeWeakPtrControlBlock::makeStrongReferenceIfPossible<WebKit::LibWebRTCCodecsProxy>(&v9, v1, result[1]);
    v4 = v9;
    if (v9)
    {
      if (*(v9 + 104) == 1)
      {
        WTF::deallocateSendRightSafely(*(v2 + 6));
        mach_port_mod_refs(*MEMORY[0x1E69E9A60], *(v2 + 6), 1u, -1);
        v5 = *(v4 + 24);
        if (v5)
        {
          xpc_connection_cancel(v5);
          v6 = *(v4 + 24);
          if (v6)
          {
          }
        }

        *(v4 + 24) = 0;
        v7 = 0;
        v8 = 0;
        WebKit::ProcessLauncher::didFinishLaunchingProcess(v4, 0, &v7);
        if (v8)
        {
        }
      }

      return WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::ProcessLauncher,(WTF::DestructionThread)0>::deref((v4 + 8), v3);
    }
  }

  return result;
}

uint64_t WTF::Detail::CallableWrapper<WebKit::ProcessLauncher::finishLaunchingProcess(WTF::ASCIILiteral)::$_2::operator()(NSObject  {objcproto13OS_xpc_object}*)::{lambda(void)#1},void>::call(uint64_t a1)
{
  result = *(a1 + 8);
  if (result)
  {
    return (*(*result + 16))(result, *(a1 + 16));
  }

  return result;
}

uint64_t WTF::Detail::CallableWrapper<WebKit::ProcessLauncher::finishLaunchingProcess(WTF::ASCIILiteral)::$_2::operator()(NSObject  {objcproto13OS_xpc_object}*)::{lambda(void)#1},void>::~CallableWrapper(WTF *this, void *a2)
{
  *this = &unk_1F11083A8;
  v3 = *(this + 2);
  if (v3)
  {
  }

  v4 = *(this + 1);
  *(this + 1) = 0;
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }

  return WTF::fastFree(this, a2);
}

uint64_t WTF::Detail::CallableWrapper<WebKit::ProcessLauncher::finishLaunchingProcess(WTF::ASCIILiteral)::$_1,void,NSObject  {objcproto13OS_xpc_object}*>::~CallableWrapper(WTF *this, void *a2)
{
  *this = &unk_1F1108358;
  v3 = *(this + 4);
  *(this + 4) = 0;
  if (v3)
  {
    if (*v3 == 1)
    {
      WTF::fastFree(v3, a2);
    }

    else
    {
      --*v3;
    }
  }

  v4 = *(this + 2);
  *(this + 2) = 0;
  if (v4)
  {
    WTF::ThreadSafeWeakPtrControlBlock::weakDeref(v4, a2);
  }

  return WTF::fastFree(this, a2);
}

atomic_uint *WebKit::WebProcessProxy::didReceiveMessage(WebKit::WebProcessProxy *this, atomic_ullong *a2, IPC::Decoder *a3)
{
  v4 = a3;
  v135 = *MEMORY[0x1E69E9840];
  v7 = *(this + 138);
  v8 = (this + 16);
  atomic_fetch_add(this + 4, 1u);
  switch(*(a3 + 25))
  {
    case 0xB55:
      IPC::Decoder::decode<std::tuple<WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>>(a3, buf);
      if (buf[16] == 1)
      {
        WebKit::WebProcessProxy::cacheMediaMIMETypes(this, buf);
        if (buf[16])
        {
          WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(buf, v9);
        }
      }

      return WTF::ThreadSafeRefCounted<WebKit::AuxiliaryProcessProxy,(WTF::DestructionThread)2>::deref(v8);
    case 0xB56:
      v28 = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::RemoteVideoFrameIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>(a3);
      if (v29 & 1) != 0 && ((v30 = v28, IPC::ArgumentCoder<IPC::ConnectionHandle,void>::decode(v4, v130), (v130[4]) || (v82 = *v4, v83 = *(v4 + 1), *v4 = 0, *(v4 + 1) = 0, (v84 = *(v4 + 3)) != 0) && v83 && ((*(*v84 + 16))(v84, v82), (v130[4])))
      {
        *buf = v30;
        WTF::MachSendRight::MachSendRight();
        buf[16] = 1;
        if ((v130[4] & 1) == 0)
        {
          goto LABEL_38;
        }

        WTF::MachSendRight::~MachSendRight(v130);
        if (buf[16])
        {
          goto LABEL_38;
        }
      }

      else
      {
        buf[0] = 0;
        buf[16] = 0;
      }

      v85 = *v4;
      v86 = *(v4 + 1);
      *v4 = 0;
      *(v4 + 1) = 0;
      v87 = *(v4 + 3);
      if (!v87)
      {
        return WTF::ThreadSafeRefCounted<WebKit::AuxiliaryProcessProxy,(WTF::DestructionThread)2>::deref(v8);
      }

      if (!v86)
      {
        return WTF::ThreadSafeRefCounted<WebKit::AuxiliaryProcessProxy,(WTF::DestructionThread)2>::deref(v8);
      }

      (*(*v87 + 16))(v87, v85);
      if ((buf[16] & 1) == 0)
      {
        return WTF::ThreadSafeRefCounted<WebKit::AuxiliaryProcessProxy,(WTF::DestructionThread)2>::deref(v8);
      }

LABEL_38:
      WebKit::WebProcessProxy::createGPUProcessConnection(this, *buf, &buf[8]);
      if (buf[16])
      {
        goto LABEL_176;
      }

      return WTF::ThreadSafeRefCounted<WebKit::AuxiliaryProcessProxy,(WTF::DestructionThread)2>::deref(v8);
    case 0xB57:
      v18 = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::RemoteVideoFrameIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>(a3);
      if ((v19 & 1) == 0)
      {
        goto LABEL_153;
      }

      v3 = v18;
      IPC::ArgumentCoder<WTF::URL,void>::decode(v4, v130);
      if ((v131 & 1) == 0)
      {
        goto LABEL_178;
      }

      goto LABEL_21;
    case 0xB58:
      if (v7 < 0)
      {
        v78 = IPC::Decoder::decode<std::tuple<PAL::SessionID>>(a3);
        if (v79)
        {
          WebKit::WebProcessProxy::createSpeechRecognitionServer(this, v78);
        }

        return WTF::ThreadSafeRefCounted<WebKit::AuxiliaryProcessProxy,(WTF::DestructionThread)2>::deref(v8);
      }

      v10 = qword_1ED6416C8;
      if (!os_log_type_enabled(qword_1ED6416C8, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_101;
      }

      *buf = 136315138;
      *&buf[4] = "WebProcessProxy_CreateSpeechRecognitionServer";
      v11 = "Message %s received by a disabled message endpoint";
      goto LABEL_79;
    case 0xB59:
      v16 = IPC::Decoder::decode<std::tuple<WTF::ObjectIdentifierGeneric<WebKit::AudioMediaStreamTrackRendererInternalUnitIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>(a3);
      if (v17)
      {
        WebKit::WebProcessProxy::deleteServiceWorkerDebuggable(this, v16);
      }

      return WTF::ThreadSafeRefCounted<WebKit::AuxiliaryProcessProxy,(WTF::DestructionThread)2>::deref(v8);
    case 0xB5A:
      if (v7 < 0)
      {
        v80 = IPC::Decoder::decode<std::tuple<PAL::SessionID>>(a3);
        if (v81)
        {
          WebKit::WebProcessProxy::destroySpeechRecognitionServer(this, v80);
        }

        return WTF::ThreadSafeRefCounted<WebKit::AuxiliaryProcessProxy,(WTF::DestructionThread)2>::deref(v8);
      }

      v10 = qword_1ED6416C8;
      if (!os_log_type_enabled(qword_1ED6416C8, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_101;
      }

      *buf = 136315138;
      *&buf[4] = "WebProcessProxy_DestroySpeechRecognitionServer";
      v11 = "Message %s received by a disabled message endpoint";
      goto LABEL_79;
    case 0xB5B:
      IPC::ArgumentCoder<WebCore::RegistrableDomain,void>::decode(a3, &v128);
      if ((v129 & 1) == 0)
      {
        v91 = *v4;
        v92 = *(v4 + 1);
        *v4 = 0;
        *(v4 + 1) = 0;
        v93 = *(v4 + 3);
        if (v93 && v92)
        {
          (*(*v93 + 16))(v93, v91);
        }

        goto LABEL_101;
      }

      IPC::Decoder::decode<WebCore::PrewarmInformation>(v130, v4);
      if ((v130[32] & 1) == 0)
      {
        v64 = v128;
        if (v128 && atomic_fetch_add_explicit(v128, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v64, v37);
        }

        goto LABEL_101;
      }

      *&v38 = 0;
      *buf = v128;
      *&buf[8] = *v130;
      *&buf[16] = *&v130[8];
      v39 = *&v130[16];
      *v130 = v38;
      *&v130[16] = v38;
      *&buf[24] = v39;
      WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v130[16], v37);
      WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v130, v40);
      buf[40] = 1;
      WebKit::WebProcessProxy::didCollectPrewarmInformation(this, buf, &buf[8]);
      if ((buf[40] & 1) == 0)
      {
        return WTF::ThreadSafeRefCounted<WebKit::AuxiliaryProcessProxy,(WTF::DestructionThread)2>::deref(v8);
      }

      WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&buf[24], v41);
      WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&buf[8], v42);
      goto LABEL_118;
    case 0xB5C:
      v25 = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(a3);
      if ((v26 & 1) == 0)
      {
        goto LABEL_153;
      }

      v27 = v25;
      IPC::ArgumentCoder<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::BackForwardFrameItemIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,void>::decode(v4, buf);
      if (buf[16])
      {
        WebKit::WebProcessProxy::didDestroyUserGestureToken(this, v27, *buf, *&buf[8]);
        return WTF::ThreadSafeRefCounted<WebKit::AuxiliaryProcessProxy,(WTF::DestructionThread)2>::deref(v8);
      }

      v99 = *v4;
      v100 = *(v4 + 1);
      *v4 = 0;
      *(v4 + 1) = 0;
      v101 = *(v4 + 3);
      if (v101 && v100)
      {
        (*(*v101 + 16))(v101, v99);
      }

      goto LABEL_153;
    case 0xB5D:
      WebKit::WebProcessProxy::didExceedActiveMemoryLimit(this);
      return WTF::ThreadSafeRefCounted<WebKit::AuxiliaryProcessProxy,(WTF::DestructionThread)2>::deref(v8);
    case 0xB5E:
      WebKit::WebProcessProxy::didExceedCPULimit(this);
      return WTF::ThreadSafeRefCounted<WebKit::AuxiliaryProcessProxy,(WTF::DestructionThread)2>::deref(v8);
    case 0xB5F:
      WebKit::WebProcessProxy::didExceedInactiveMemoryLimit(this);
      return WTF::ThreadSafeRefCounted<WebKit::AuxiliaryProcessProxy,(WTF::DestructionThread)2>::deref(v8);
    case 0xB60:
      v14 = IPC::Decoder::decode<std::tuple<unsigned long long>>(a3);
      if (v15)
      {
        WebKit::WebProcessProxy::didExceedMemoryFootprintThreshold(this, v14);
      }

      return WTF::ThreadSafeRefCounted<WebKit::AuxiliaryProcessProxy,(WTF::DestructionThread)2>::deref(v8);
    case 0xB61:
      WebKit::BackgroundProcessResponsivenessTimer::didReceiveBackgroundResponsivenessPong((this + 416));
      return WTF::ThreadSafeRefCounted<WebKit::AuxiliaryProcessProxy,(WTF::DestructionThread)2>::deref(v8);
    case 0xB62:
      v36 = *(this + 10);
      if (v36 && (*(v36 + 104) & 1) != 0 || !*(this + 11))
      {
        return WTF::ThreadSafeRefCounted<WebKit::AuxiliaryProcessProxy,(WTF::DestructionThread)2>::deref(v8);
      }

      v13 = *(this + 174) + 1;
      goto LABEL_56;
    case 0xB63:
      v12 = *(this + 10);
      if (v12 && (*(v12 + 104) & 1) != 0 || !*(this + 11))
      {
        return WTF::ThreadSafeRefCounted<WebKit::AuxiliaryProcessProxy,(WTF::DestructionThread)2>::deref(v8);
      }

      v13 = *(this + 174) - 1;
LABEL_56:
      *(this + 174) = v13;
      return WTF::ThreadSafeRefCounted<WebKit::AuxiliaryProcessProxy,(WTF::DestructionThread)2>::deref(v8);
    case 0xB64:
      v23 = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::RemoteVideoFrameIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>(a3);
      if ((v24 & 1) == 0)
      {
        goto LABEL_153;
      }

      WebKit::WebProcessProxy::gpuProcessConnectionDidBecomeUnresponsive(this, v23);
      return WTF::ThreadSafeRefCounted<WebKit::AuxiliaryProcessProxy,(WTF::DestructionThread)2>::deref(v8);
    case 0xB65:
      if ((v7 & 0x8000000000000) == 0)
      {
        v10 = qword_1ED6416C8;
        if (!os_log_type_enabled(qword_1ED6416C8, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_101;
        }

        *buf = 136315138;
        *&buf[4] = "WebProcessProxy_GetNotifications";
        v11 = "Message %s received by a disabled message endpoint";
        goto LABEL_79;
      }

      IPC::ArgumentCoder<std::tuple<WTF::URL,WTF::String>,void>::decode<IPC::Decoder>(a3, buf);
      if ((v133 & 1) == 0)
      {
        v35 = *v4;
        v97 = *(v4 + 1);
        *v4 = 0;
        *(v4 + 1) = 0;
        v98 = *(v4 + 3);
        if (!v98)
        {
          goto LABEL_114;
        }

        if (!v97)
        {
          goto LABEL_114;
        }

        (*(*v98 + 16))(v98, v35);
        if ((v133 & 1) == 0)
        {
          goto LABEL_114;
        }
      }

      v60 = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(v4);
      if ((v35 & 1) == 0)
      {
        goto LABEL_114;
      }

      v4 = v60;
      while (1)
      {
        v61 = *a2;
        if ((*a2 & 1) == 0)
        {
          break;
        }

        v62 = *a2;
        atomic_compare_exchange_strong_explicit(a2, &v62, v61 + 2, memory_order_relaxed, memory_order_relaxed);
        if (v62 == v61)
        {
          goto LABEL_111;
        }
      }

      WTF::ThreadSafeWeakPtrControlBlock::strongRef(*a2);
LABEL_111:
      v73 = WTF::fastMalloc(0x18);
      *v73 = &unk_1F10F7F40;
      v73[1] = v4;
      v73[2] = a2;
      *v130 = v73;
      if ((v133 & 1) == 0)
      {
        goto LABEL_177;
      }

      WebKit::WebProcessProxy::getNotifications(this, buf, &buf[40], v130);
      v74 = *v130;
      *v130 = 0;
      if (v74)
      {
        (*(*v74 + 8))(v74);
      }

LABEL_114:
      if (v133 != 1)
      {
        return WTF::ThreadSafeRefCounted<WebKit::AuxiliaryProcessProxy,(WTF::DestructionThread)2>::deref(v8);
      }

      v63 = *&buf[40];
      *&buf[40] = 0;
      if (v63)
      {
LABEL_116:
        if (atomic_fetch_add_explicit(v63, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v63, v35);
        }
      }

LABEL_118:
      v75 = *buf;
      *buf = 0;
      if (v75)
      {
        goto LABEL_125;
      }

      return WTF::ThreadSafeRefCounted<WebKit::AuxiliaryProcessProxy,(WTF::DestructionThread)2>::deref(v8);
    case 0xB66:
      v31 = *(a3 + 1);
      v32 = *(v4 + 2);
      v33 = *v4;
      if (v31 <= &v32[-*v4])
      {
        *v4 = 0;
        *(v4 + 1) = 0;
        v124 = *(v4 + 3);
        if (v124)
        {
          if (v31)
          {
            (*(*v124 + 16))(v124);
            v31 = *(v4 + 1);
          }
        }

        else
        {
          v31 = 0;
        }
      }

      else
      {
        *(v4 + 2) = v32 + 1;
        if (v32)
        {
          v34 = *v32;
          if (v34 < 3)
          {
            *(this + 808) = v34;
            return WTF::ThreadSafeRefCounted<WebKit::AuxiliaryProcessProxy,(WTF::DestructionThread)2>::deref(v8);
          }

LABEL_202:
          *v4 = 0;
          *(v4 + 1) = 0;
          v126 = *(v4 + 3);
          if (v126)
          {
            if (v31)
            {
              (*(*v126 + 16))(v126, v33);
              v65 = *v4;
              v66 = *(v4 + 1);
              v67 = *(v4 + 3);
              *v4 = 0;
              *(v4 + 1) = 0;
              if (v67)
              {
LABEL_102:
                if (v66)
                {
LABEL_157:
                  (*(*v67 + 16))(v67, v65);
                }
              }
            }
          }

          return WTF::ThreadSafeRefCounted<WebKit::AuxiliaryProcessProxy,(WTF::DestructionThread)2>::deref(v8);
        }
      }

      *v4 = 0;
      *(v4 + 1) = 0;
      v125 = *(v4 + 3);
      if (v125)
      {
        if (v31)
        {
          (*(*v125 + 16))(v125);
          v33 = *v4;
          v31 = *(v4 + 1);
          goto LABEL_202;
        }
      }

      else
      {
        v31 = 0;
      }

      v33 = 0;
      goto LABEL_202;
    case 0xB67:
      IPC::ArgumentCoder<std::tuple<WTF::ObjectIdentifierGeneric<WebCore::ServiceWorkerIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::String>,void>::decode<IPC::Decoder>(a3, buf);
      if ((buf[16] & 1) == 0)
      {
        v94 = *v4;
        v95 = *(v4 + 1);
        *v4 = 0;
        *(v4 + 1) = 0;
        v96 = *(v4 + 3);
        if (!v96)
        {
          return WTF::ThreadSafeRefCounted<WebKit::AuxiliaryProcessProxy,(WTF::DestructionThread)2>::deref(v8);
        }

        if (!v95)
        {
          return WTF::ThreadSafeRefCounted<WebKit::AuxiliaryProcessProxy,(WTF::DestructionThread)2>::deref(v8);
        }

        (*(*v96 + 16))(v96, v94);
        if ((buf[16] & 1) == 0)
        {
          return WTF::ThreadSafeRefCounted<WebKit::AuxiliaryProcessProxy,(WTF::DestructionThread)2>::deref(v8);
        }
      }

      WebKit::WebProcessProxy::sendMessageToInspector(this, *buf, &buf[8]);
      if ((buf[16] & 1) == 0)
      {
        return WTF::ThreadSafeRefCounted<WebKit::AuxiliaryProcessProxy,(WTF::DestructionThread)2>::deref(v8);
      }

      goto LABEL_124;
    case 0xB68:
      if ((v7 & 0x4000) != 0)
      {
        IPC::ArgumentCoder<std::tuple<WebCore::SecurityOriginData,std::optional<unsigned long long>>,void>::decode<IPC::Decoder>(a3, buf);
        if ((v133 & 1) == 0)
        {
          v104 = *v4;
          v105 = *(v4 + 1);
          *v4 = 0;
          *(v4 + 1) = 0;
          v106 = *(v4 + 3);
          if (!v106)
          {
            return WTF::ThreadSafeRefCounted<WebKit::AuxiliaryProcessProxy,(WTF::DestructionThread)2>::deref(v8);
          }

          if (!v105)
          {
            return WTF::ThreadSafeRefCounted<WebKit::AuxiliaryProcessProxy,(WTF::DestructionThread)2>::deref(v8);
          }

          (*(*v106 + 16))(v106, v104);
          if ((v133 & 1) == 0)
          {
            return WTF::ThreadSafeRefCounted<WebKit::AuxiliaryProcessProxy,(WTF::DestructionThread)2>::deref(v8);
          }
        }

        WebKit::WebProcessProxy::setAppBadgeFromWorker(this, buf, *&buf[32], *&buf[40]);
        if ((v133 & 1) == 0 || buf[24])
        {
          return WTF::ThreadSafeRefCounted<WebKit::AuxiliaryProcessProxy,(WTF::DestructionThread)2>::deref(v8);
        }

        v63 = *&buf[8];
        *&buf[8] = 0;
        if (!v63)
        {
          goto LABEL_118;
        }

        goto LABEL_116;
      }

      v10 = qword_1ED6416C8;
      if (os_log_type_enabled(qword_1ED6416C8, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315138;
        *&buf[4] = "WebProcessProxy_SetAppBadgeFromWorker";
        v11 = "Message %s received by a disabled message endpoint";
LABEL_79:
        v53 = v10;
        v54 = 12;
LABEL_80:
        _os_log_error_impl(&dword_19D52D000, v53, OS_LOG_TYPE_ERROR, v11, buf, v54);
      }

LABEL_101:
      v65 = *v4;
      v66 = *(v4 + 1);
      *v4 = 0;
      *(v4 + 1) = 0;
      v67 = *(v4 + 3);
      if (!v67)
      {
        return WTF::ThreadSafeRefCounted<WebKit::AuxiliaryProcessProxy,(WTF::DestructionThread)2>::deref(v8);
      }

      goto LABEL_102;
    case 0xB69:
      if (IPC::Decoder::decode<WebCore::CaptionUserPreferencesDisplayMode>(a3) <= 0xFFu)
      {
        goto LABEL_153;
      }

      WebCore::CaptionUserPreferencesMediaAF::platformSetCaptionDisplayMode();
      return WTF::ThreadSafeRefCounted<WebKit::AuxiliaryProcessProxy,(WTF::DestructionThread)2>::deref(v8);
    case 0xB6A:
      IPC::ArgumentCoder<std::tuple<WTF::String>,void>::decode<IPC::Decoder>(a3, buf);
      if ((buf[8] & 1) == 0)
      {
        v88 = *v4;
        v89 = *(v4 + 1);
        *v4 = 0;
        *(v4 + 1) = 0;
        v90 = *(v4 + 3);
        if (!v90)
        {
          return WTF::ThreadSafeRefCounted<WebKit::AuxiliaryProcessProxy,(WTF::DestructionThread)2>::deref(v8);
        }

        if (!v89)
        {
          return WTF::ThreadSafeRefCounted<WebKit::AuxiliaryProcessProxy,(WTF::DestructionThread)2>::deref(v8);
        }

        (*(*v90 + 16))(v90, v88);
        if ((buf[8] & 1) == 0)
        {
          return WTF::ThreadSafeRefCounted<WebKit::AuxiliaryProcessProxy,(WTF::DestructionThread)2>::deref(v8);
        }
      }

      WebKit::WebProcessProxy::setCaptionLanguage(this, buf);
      if ((buf[8] & 1) == 0)
      {
        return WTF::ThreadSafeRefCounted<WebKit::AuxiliaryProcessProxy,(WTF::DestructionThread)2>::deref(v8);
      }

      goto LABEL_118;
    case 0xB6B:
      v43 = *(a3 + 1);
      v44 = ((*(v4 + 2) + 3) & 0xFFFFFFFFFFFFFFFCLL);
      v45 = v44 - *v4;
      v46 = v43 >= v45;
      v47 = v43 - v45;
      if (!v46 || v47 <= 3)
      {
        *v4 = 0;
        *(v4 + 1) = 0;
        v119 = *(v4 + 3);
        if (v119)
        {
          if (v43)
          {
            (*(*v119 + 16))(v119);
            v43 = *(v4 + 1);
          }
        }

        else
        {
          v43 = 0;
        }

        goto LABEL_191;
      }

      *(v4 + 2) = v44 + 1;
      if (!v44)
      {
LABEL_191:
        *v4 = 0;
        *(v4 + 1) = 0;
        v120 = *(v4 + 3);
        if (v120 && v43)
        {
          (*(*v120 + 16))(v120);
        }

        buf[0] = 0;
        buf[40] = 0;
        goto LABEL_193;
      }

      v3 = *v44;
      IPC::Decoder::decode<IPC::StreamServerConnectionHandle>(v4, v130);
      if ((v130[24] & 1) == 0)
      {
        goto LABEL_163;
      }

      v49 = IPC::ArgumentCoder<WTF::ObjectIdentifierGeneric<WebCore::BackgroundFetchRecordIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,void>::decode(v4);
      if ((v50 & 1) == 0)
      {
        v107 = *v4;
        v108 = *(v4 + 1);
        *v4 = 0;
        *(v4 + 1) = 0;
        v109 = *(v4 + 3);
        if (v109 && v108)
        {
          (*(*v109 + 16))(v109, v107);
        }

LABEL_163:
        v52 = 0;
        buf[0] = 0;
LABEL_164:
        buf[40] = v52;
        std::__optional_destruct_base<IPC::StreamServerConnectionHandle,false>::~__optional_destruct_base[abi:sn200100](v130);
        if (buf[40])
        {
LABEL_165:
          v110 = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(v4);
          if (v111)
          {
            v4 = v110;
            while (1)
            {
              v112 = *a2;
              if ((*a2 & 1) == 0)
              {
                break;
              }

              v113 = *a2;
              atomic_compare_exchange_strong_explicit(a2, &v113, v112 + 2, memory_order_relaxed, memory_order_relaxed);
              if (v113 == v112)
              {
                goto LABEL_171;
              }
            }

            WTF::ThreadSafeWeakPtrControlBlock::strongRef(*a2);
LABEL_171:
            v114 = WTF::fastMalloc(0x18);
            *v114 = &unk_1F10F7F68;
            v114[1] = v4;
            v114[2] = a2;
            *v130 = v114;
            if ((buf[40] & 1) == 0)
            {
              goto LABEL_177;
            }

            WebKit::WebProcessProxy::setupLogStream(this, *buf, &buf[8], *&buf[32], v130);
            v115 = *v130;
            *v130 = 0;
            if (v115)
            {
              (*(*v115 + 8))(v115);
            }
          }

LABEL_174:
          if (buf[40] == 1)
          {
            WTF::MachSendRight::~MachSendRight(&buf[16]);
LABEL_176:
            WTF::MachSendRight::~MachSendRight(&buf[8]);
          }

          return WTF::ThreadSafeRefCounted<WebKit::AuxiliaryProcessProxy,(WTF::DestructionThread)2>::deref(v8);
        }

LABEL_193:
        v121 = *v4;
        v122 = *(v4 + 1);
        *v4 = 0;
        *(v4 + 1) = 0;
        v123 = *(v4 + 3);
        if (!v123)
        {
          goto LABEL_174;
        }

        if (!v122)
        {
          goto LABEL_174;
        }

        (*(*v123 + 16))(v123, v121);
        if ((buf[40] & 1) == 0)
        {
          goto LABEL_174;
        }

        goto LABEL_165;
      }

      if (v130[24])
      {
        v51 = v49;
        *buf = v3;
        v3 = buf;
        WTF::MachSendRight::MachSendRight();
        WTF::MachSendRight::MachSendRight();
        *&buf[24] = *&v130[16];
        *&buf[32] = v51;
        v52 = 1;
        goto LABEL_164;
      }

      do
      {
LABEL_177:
        __break(1u);
LABEL_178:
        v116 = *v4;
        v117 = *(v4 + 1);
        *v4 = 0;
        *(v4 + 1) = 0;
        v118 = *(v4 + 3);
        if (!v118)
        {
          goto LABEL_153;
        }

        if (!v117)
        {
          goto LABEL_153;
        }

        (*(*v118 + 16))(v118, v116);
        if ((v131 & 1) == 0)
        {
          goto LABEL_153;
        }

LABEL_21:
        v20 = IPC::Decoder::decode<WebKit::UseDownloadPlaceholder>(v4);
        if ((v20 & 0x100) == 0)
        {
          buf[0] = 0;
          v134 = 0;
          if (v131)
          {
            v22 = *v130;
            *v130 = 0;
            if (v22)
            {
              if (atomic_fetch_add_explicit(v22, 0xFFFFFFFE, memory_order_relaxed) == 2)
              {
                WTF::StringImpl::destroy(v22, v21);
              }
            }
          }

LABEL_153:
          v65 = *v4;
          v102 = *(v4 + 1);
          *v4 = 0;
          *(v4 + 1) = 0;
          v67 = *(v4 + 3);
          if (v67)
          {
            v103 = v102 == 0;
          }

          else
          {
            v103 = 1;
          }

          if (v103)
          {
            return WTF::ThreadSafeRefCounted<WebKit::AuxiliaryProcessProxy,(WTF::DestructionThread)2>::deref(v8);
          }

          goto LABEL_157;
        }
      }

      while ((v131 & 1) == 0);
      v68 = v20;
      *buf = v3;
      *&buf[8] = *v130;
      *&buf[16] = *&v130[8];
      *&buf[32] = *&v130[24];
      v133 = v20;
      v134 = 1;
      v69 = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(v4);
      if (v35)
      {
        v70 = v69;
        while (1)
        {
          v71 = *a2;
          if ((*a2 & 1) == 0)
          {
            break;
          }

          v72 = *a2;
          atomic_compare_exchange_strong_explicit(a2, &v72, v71 + 2, memory_order_relaxed, memory_order_relaxed);
          if (v72 == v71)
          {
            goto LABEL_121;
          }
        }

        WTF::ThreadSafeWeakPtrControlBlock::strongRef(*a2);
LABEL_121:
        v76 = WTF::fastMalloc(0x18);
        *v76 = &unk_1F10F7F90;
        v76[1] = v70;
        v76[2] = a2;
        *v130 = v76;
        WebKit::WebProcessProxy::createServiceWorkerDebuggable(this, *buf, &buf[8], v68 & 1, v130);
        v77 = *v130;
        *v130 = 0;
        if (v77)
        {
          (*(*v77 + 8))(v77);
        }

        if ((v134 & 1) == 0)
        {
          return WTF::ThreadSafeRefCounted<WebKit::AuxiliaryProcessProxy,(WTF::DestructionThread)2>::deref(v8);
        }
      }

LABEL_124:
      v75 = *&buf[8];
      *&buf[8] = 0;
      if (!v75)
      {
        return WTF::ThreadSafeRefCounted<WebKit::AuxiliaryProcessProxy,(WTF::DestructionThread)2>::deref(v8);
      }

LABEL_125:
      if (atomic_fetch_add_explicit(v75, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v75, v35);
      }

      return WTF::ThreadSafeRefCounted<WebKit::AuxiliaryProcessProxy,(WTF::DestructionThread)2>::deref(v8);
    case 0xB6C:
      v55 = *(this + 7);
      ++*v55;
      WebKit::ResponsivenessTimer::stop(v55);
      WTF::RefCounted<WebKit::ResponsivenessTimer>::deref(v55);
      return WTF::ThreadSafeRefCounted<WebKit::AuxiliaryProcessProxy,(WTF::DestructionThread)2>::deref(v8);
    case 0xB6D:
      PAL::systemBeep(this);
      return WTF::ThreadSafeRefCounted<WebKit::AuxiliaryProcessProxy,(WTF::DestructionThread)2>::deref(v8);
    default:
      if (WebKit::WebProcessProxy::dispatchMessage(this, a2, a3))
      {
        return WTF::ThreadSafeRefCounted<WebKit::AuxiliaryProcessProxy,(WTF::DestructionThread)2>::deref(v8);
      }

      v56 = qword_1ED6416C8;
      if (!os_log_type_enabled(qword_1ED6416C8, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_101;
      }

      v57 = *(v4 + 25);
      if (v57 >= 0x107F)
      {
        v57 = 4223;
      }

      v58 = (&IPC::Detail::messageDescriptions)[3 * v57];
      v59 = *(v4 + 7);
      *buf = 136315394;
      *&buf[4] = v58;
      *&buf[12] = 2048;
      *&buf[14] = v59;
      v11 = "Unhandled message %s to %llu";
      v53 = v56;
      v54 = 22;
      goto LABEL_80;
  }
}

void sub_19D5C2AD0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  CFRelease(*(v10 + 8));
  if (a10)
  {
    CFRelease(*(a10 + 8));
  }

  _Unwind_Resume(a1);
}

void IPC::ArgumentCoder<IPC::StreamServerConnectionHandle,void>::decode(IPC::Decoder *a1@<X0>, _BYTE *a2@<X8>)
{
  IPC::Decoder::decode<IPC::ConnectionHandle>(a1, v9);
  IPC::Decoder::decode<WebCore::SharedMemoryHandle>(a1, v6);
  if (!*a1)
  {
    goto LABEL_11;
  }

  if ((v8 & 1) == 0)
  {
LABEL_12:
    __break(1u);
    return;
  }

  if ((v7 - 257) >= 0x7FFFFFFF)
  {
LABEL_11:
    *a2 = 0;
    a2[24] = 0;
    goto LABEL_6;
  }

  if ((v10 & 1) == 0)
  {
    goto LABEL_12;
  }

  IPC::StreamServerConnectionHandle::StreamServerConnectionHandle(v4, v9, v6);
  IPC::StreamServerConnectionHandle::StreamServerConnectionHandle(a2, v4);
  a2[24] = 1;
  WTF::MachSendRight::~MachSendRight(&v5);
  WTF::MachSendRight::~MachSendRight(v4);
LABEL_6:
  if (v8 == 1)
  {
    WTF::MachSendRight::~MachSendRight(v6);
  }

  if (v10 == 1)
  {
    WTF::MachSendRight::~MachSendRight(v9);
  }
}

void sub_19D5C2BD4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, char a13, uint64_t a14, char a15)
{
  WTF::MachSendRight::~MachSendRight((v15 + 8));
  WTF::MachSendRight::~MachSendRight(&a10);
  if (a15)
  {
    WTF::MachSendRight::~MachSendRight(&a13);
  }

  if (*(v16 - 20) == 1)
  {
    WTF::MachSendRight::~MachSendRight((v16 - 24));
  }

  _Unwind_Resume(a1);
}

void IPC::ArgumentCoder<IPC::ConnectionHandle,void>::decode(IPC::Decoder *a1@<X0>, _BYTE *a2@<X8>)
{
  IPC::Decoder::takeLastAttachment(a1, v5);
  if (*a1)
  {
    if ((v6 & 1) == 0)
    {
      __break(1u);
      return;
    }

    WTF::MachSendRight::MachSendRight();
    WTF::MachSendRight::MachSendRight();
    a2[4] = 1;
    WTF::MachSendRight::~MachSendRight(v4);
  }

  else
  {
    *a2 = 0;
    a2[4] = 0;
  }

  if (v6 == 1)
  {
    WTF::MachSendRight::~MachSendRight(v5);
  }
}

void sub_19D5C2CB4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, int a9, char a10, __int16 a11, char a12, __int16 a13, char a14)
{
  WTF::MachSendRight::~MachSendRight(&a10);
  if (a14 == 1)
  {
    WTF::MachSendRight::~MachSendRight(&a12);
  }

  _Unwind_Resume(a1);
}

API::PageConfiguration::Data *API::PageConfiguration::create@<X0>(API::Object **a1@<X8>)
{
  v3 = API::Object::newObject(0x260uLL, 86);
  v4 = API::Object::Object(v3);
  *v4 = &unk_1F111B740;
  result = API::PageConfiguration::Data::Data((v4 + 16));
  *a1 = v3;
  return result;
}

void IPC::Decoder::decode<IPC::ConnectionHandle>(IPC::Decoder *a1@<X0>, _BYTE *a2@<X8>)
{
  IPC::ArgumentCoder<IPC::ConnectionHandle,void>::decode(a1, a2);
  if ((a2[4] & 1) == 0)
  {
    IPC::Decoder::markInvalid(a1);
  }
}

void sub_19D5C2D78(_Unwind_Exception *exception_object)
{
  if (*(v1 + 4) == 1)
  {
    WTF::MachSendRight::~MachSendRight(v1);
  }

  _Unwind_Resume(exception_object);
}

void IPC::Decoder::decode<IPC::StreamServerConnectionHandle>(IPC::Decoder *a1@<X0>, _BYTE *a2@<X8>)
{
  IPC::ArgumentCoder<IPC::StreamServerConnectionHandle,void>::decode(a1, a2);
  if ((a2[24] & 1) == 0)
  {

    IPC::Decoder::markInvalid(a1);
  }
}

void IPC::ArgumentCoder<WebCore::SharedMemoryHandle,void>::decode(IPC::Decoder *a1@<X0>, uint64_t a2@<X8>)
{
  IPC::Decoder::takeLastAttachment(a1, &v13);
  if (*a1)
  {
    if (v14 == 1 && v13 != 0)
    {
      v5 = *(a1 + 1);
      v6 = (*(a1 + 2) + 7) & 0xFFFFFFFFFFFFFFF8;
      v7 = v6 - *a1;
      v8 = v5 >= v7;
      v9 = v5 - v7;
      if (v8 && v9 > 7)
      {
        *(a1 + 2) = v6 + 8;
        if (v6)
        {
          WebCore::SharedMemoryHandle::SharedMemoryHandle();
          WTF::MachSendRight::MachSendRight();
          *(a2 + 8) = v12;
          *(a2 + 16) = 1;
          WTF::MachSendRight::~MachSendRight(v11);
          goto LABEL_13;
        }
      }

      else
      {
        IPC::Decoder::markInvalid(a1);
      }

      IPC::Decoder::markInvalid(a1);
      if (*a1)
      {
        __break(1u);
        return;
      }
    }
  }

  *a2 = 0;
  *(a2 + 16) = 0;
LABEL_13:
  if (v14 == 1)
  {
    WTF::MachSendRight::~MachSendRight(&v13);
  }
}

void sub_19D5C2ED0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, char a12, __int16 a13, char a14, char a15)
{
  if (a14 == 1)
  {
    WTF::MachSendRight::~MachSendRight(&a12);
  }

  _Unwind_Resume(exception_object);
}

void IPC::Decoder::decode<WebCore::SharedMemoryHandle>(IPC::Decoder *a1@<X0>, uint64_t a2@<X8>)
{
  IPC::ArgumentCoder<WebCore::SharedMemoryHandle,void>::decode(a1, a2);
  if ((*(a2 + 16) & 1) == 0)
  {
    IPC::Decoder::markInvalid(a1);
  }
}

void sub_19D5C2F40(_Unwind_Exception *exception_object)
{
  if (*(v1 + 16) == 1)
  {
    WTF::MachSendRight::~MachSendRight(v1);
  }

  _Unwind_Resume(exception_object);
}

void **WebKit::WebProcessProxy::setupLogStream(uint64_t a1, uint64_t a2, WTF::MachSendRight *a3, uint64_t a4, uint64_t *a5)
{
  v9 = *(a1 + 80);
  if (v9)
  {
    v10 = *(v9 + 108);
  }

  else
  {
    v10 = 0;
  }

  v11 = WTF::fastMalloc(0x28);
  v11[2] = 1;
  *v11 = &unk_1F10EA430;
  *(v11 + 2) = 0;
  *(v11 + 3) = a4;
  v11[8] = v10;
  WebKit::LogStream::setup(v11, a3, a5);
  v16 = v11;
  v12 = (a1 + 1208);
  if (v12 != &v16)
  {
    if (*v12)
    {
      IPC::ScopedActiveMessageReceiveQueue<WebKit::LogStream,WTF::RefPtr<WebKit::LogStream,WTF::RawPtrTraits<WebKit::LogStream>,WTF::DefaultRefDerefTraits<WebKit::LogStream>>>::stopListeningForIPCAndRelease<WTF::RefPtr<WebKit::LogStream,WTF::RawPtrTraits<WebKit::LogStream>,WTF::DefaultRefDerefTraits<WebKit::LogStream>>>(v12);
      v13 = *v12;
      v14 = v16;
      v16 = 0;
      *v12 = v14;
      if (v13 && atomic_fetch_add(v13 + 2, 0xFFFFFFFF) == 1)
      {
        atomic_store(1u, v13 + 2);
        (*(*v13 + 8))(v13);
      }
    }

    else
    {
      v16 = 0;
      *v12 = v11;
    }
  }

  return IPC::ScopedActiveMessageReceiveQueue<WebKit::LogStream,WTF::RefPtr<WebKit::LogStream,WTF::RawPtrTraits<WebKit::LogStream>,WTF::DefaultRefDerefTraits<WebKit::LogStream>>>::~ScopedActiveMessageReceiveQueue(&v16);
}

void sub_19D5C3084(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  IPC::ScopedActiveMessageReceiveQueue<WebKit::LogStream,WTF::RefPtr<WebKit::LogStream,WTF::RawPtrTraits<WebKit::LogStream>,WTF::DefaultRefDerefTraits<WebKit::LogStream>>>::~ScopedActiveMessageReceiveQueue(va);
  _Unwind_Resume(a1);
}

atomic_uint *IPC::StreamServerConnection::tryCreate@<X0>(WTF::MachSendRight *a1@<X0>, uint64_t *a2@<X8>)
{
  result = WebCore::SharedMemory::map();
  if (v8)
  {
    v11 = *(v8 + 8) - 256;
    v12 = v8;
    v13 = 0;
    v14 = 1;
    LODWORD(v8) = WTF::MachSendRight::leakSendRight(a1);
    object = 0;
    IPC::Connection::createClientConnection(&v8, &v10);
    if (object)
    {
      os_release(object);
    }

    v5 = WTF::fastMalloc(0xB0);
    v6 = v10;
    v10 = 0;
    v7 = v6;
    *a2 = IPC::StreamServerConnection::StreamServerConnection(v5, &v7, &v11);
    if (v7)
    {
      WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v7);
    }

    result = v10;
    v10 = 0;
    if (result)
    {
      result = WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(result);
    }

    if (v14)
    {
      result = v12;
      if (v12)
      {
        return WTF::ThreadSafeRefCounted<WebCore::SharedMemory,(WTF::DestructionThread)0>::deref(v12);
      }
    }
  }

  else
  {
    *a2 = 0;
  }

  return result;
}

void sub_19D5C3348(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  CFRelease(*(v10 + 8));
  if (a10)
  {
    CFRelease(*(a10 + 8));
  }

  _Unwind_Resume(a1);
}

uint64_t IPC::StreamServerConnection::StreamServerConnection(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  *(a1 + 8) = 1;
  *(a1 + 32) = 0;
  *a1 = &unk_1F1147678;
  *(a1 + 16) = &unk_1F11476D0;
  *(a1 + 24) = 0;
  v4 = *a2;
  *a2 = 0;
  *(a1 + 40) = v4;
  *(a1 + 48) = 0;
  v5 = *a3;
  v6 = a3[1];
  a3[1] = 0;
  *(a1 + 56) = v5;
  *(a1 + 64) = v6;
  *(a1 + 72) = a3[2];
  *(a1 + 80) = 0;
  *(a1 + 128) = 0;
  *(a1 + 136) = 0;
  *(a1 + 120) = 0;
  *(a1 + 104) = 0u;
  *(a1 + 88) = 0u;
  *(a1 + 144) = 0;
  *(a1 + 152) = 0;
  IPC::Semaphore::Semaphore((a1 + 160));
  *(a1 + 168) = 0;
  return a1;
}

IPC::Semaphore *IPC::Semaphore::Semaphore(IPC::Semaphore *this)
{
  *this = 0;
  *(this + 1) = 0;
  semaphore_create(*MEMORY[0x1E69E9A60], this + 1, 0, 0);
  return this;
}

void sub_19D5C3520(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  CFRelease(*(v10 + 8));
  if (a10)
  {
    CFRelease(*(a10 + 8));
  }

  _Unwind_Resume(a1);
}

uint64_t IPC::StreamConnectionWorkQueue::StreamConnectionWorkQueue(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a1 + 8) = 3;
  v6 = WTF::FunctionDispatcher::FunctionDispatcher(a1);
  *v6 = &unk_1F1147648;
  v6[2] = a2;
  v6[3] = a3;
  IPC::Semaphore::Semaphore((v6 + 4));
  *(a1 + 40) = 0;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  return a1;
}

atomic_ullong *IPC::StreamServerConnection::open(IPC::StreamServerConnection *this, IPC::StreamConnectionWorkQueue *a2)
{
  while (1)
  {
    v4 = *(a2 + 1);
    if ((v4 & 1) == 0)
    {
      break;
    }

    v9 = *(a2 + 1);
    atomic_compare_exchange_strong_explicit(a2 + 1, &v9, v4 + 2, memory_order_relaxed, memory_order_relaxed);
    if (v9 == v4)
    {
      goto LABEL_3;
    }
  }

  WTF::ThreadSafeWeakPtrControlBlock::strongRef(*(a2 + 1));
LABEL_3:
  v5 = *(this + 6);
  *(this + 6) = a2;
  if (v5)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WTF::SerialFunctionDispatcher,(WTF::DestructionThread)0>::deref((v5 + 8));
  }

  v6 = *(this + 5);
  while (1)
  {
    v7 = *v6;
    if ((*v6 & 1) == 0)
    {
      break;
    }

    v10 = *v6;
    atomic_compare_exchange_strong_explicit(v6, &v10, v7 + 2, memory_order_relaxed, memory_order_relaxed);
    if (v10 == v7)
    {
      goto LABEL_8;
    }
  }

  WTF::ThreadSafeWeakPtrControlBlock::strongRef(*v6);
LABEL_8:
  memset(v11, 0, sizeof(v11));
  IPC::Connection::addMessageReceiveQueue(v6, this, v11);
  IPC::Connection::open(v6, this + 16, a2);
  IPC::StreamConnectionWorkQueue::addStreamConnection(a2, this);
  return WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v6);
}

void IPC::Connection::addMessageReceiveQueue(uint64_t a1, WTF *a2, uint64_t *a3)
{
  os_unfair_lock_lock((a1 + 100));
  IPC::Connection::enqueueMatchingMessagesToMessageReceiveQueue(a1, a2, a3);
  IPC::MessageReceiveQueueMap::add((a1 + 136), a2, a3);

  os_unfair_lock_unlock((a1 + 100));
}

void sub_19D5C37C0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  CFRelease(*(v10 + 8));
  if (a10)
  {
    CFRelease(*(a10 + 8));
  }

  _Unwind_Resume(a1);
}

void sub_19D5C38A8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  CFRelease(*(v10 - 8));
  if (a10)
  {
    CFRelease(*(a10 + 8));
  }

  _Unwind_Resume(a1);
}

uint64_t *IPC::MessageReceiveQueueMap::add(uint64_t *a1, uint64_t *a2, unsigned __int8 *a3)
{
  v4 = a2;
  v5 = 0;
  result = IPC::MessageReceiveQueueMap::addImpl(a1, &v4, a3);
  if (v5 && v5 != 255)
  {
    result = v4;
    v4 = 0;
    if (result)
    {
      return (*(*result + 8))(result);
    }
  }

  return result;
}

void **WTF::Vector<WTF::Ref<IPC::StreamServerConnection,WTF::RawPtrTraits<IPC::StreamServerConnection>,WTF::DefaultRefDerefTraits<IPC::StreamServerConnection>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::appendSlowCase<(WTF::FailureAction)0,IPC::StreamServerConnection&>(uint64_t a1, uint64_t a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 12);
  if (v5 + (v5 >> 1) <= v5 + 1)
  {
    v6 = v5 + 1;
  }

  else
  {
    v6 = v5 + (v5 >> 1);
  }

  if (v6 <= v4 + 1)
  {
    v7 = v4 + 1;
  }

  else
  {
    v7 = v6;
  }

  if (v7 <= 0x10)
  {
    v8 = 16;
  }

  else
  {
    v8 = v7;
  }

  result = WTF::Vector<WTF::Ref<WebCore::FilterEffect,WTF::RawPtrTraits<WebCore::FilterEffect>,WTF::DefaultRefDerefTraits<WebCore::FilterEffect>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::reserveCapacity<(WTF::FailureAction)0>(a1, v8);
  v10 = *(a1 + 12);
  v11 = *a1;
  atomic_fetch_add((a2 + 8), 1u);
  v11[v10] = a2;
  ++*(a1 + 12);
  return result;
}

void **IPC::StreamConnectionWorkQueue::addStreamConnection(void **this, atomic_uint *a2)
{
  v3 = this;
  v4 = 0;
  v5 = this + 41;
  atomic_compare_exchange_strong_explicit(this + 41, &v4, 1u, memory_order_acquire, memory_order_acquire);
  if (v4)
  {
    this = MEMORY[0x19EB01E30](this + 41);
  }

  v6 = *(v3 + 108);
  if (v6 == *(v3 + 104))
  {
    this = WTF::Vector<WTF::Ref<IPC::StreamServerConnection,WTF::RawPtrTraits<IPC::StreamServerConnection>,WTF::DefaultRefDerefTraits<IPC::StreamServerConnection>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::appendSlowCase<(WTF::FailureAction)0,IPC::StreamServerConnection&>(v3 + 96, a2);
  }

  else
  {
    v10 = *(v3 + 96);
    atomic_fetch_add(a2 + 2, 1u);
    *(v10 + 8 * v6) = a2;
    ++*(v3 + 108);
  }

  v7 = atomic_load((v3 + 40));
  v8 = 1;
  if ((v7 & 1) != 0 || *(v3 + 48))
  {
    v9 = 1;
  }

  else
  {
    this = IPC::StreamConnectionWorkQueue::startProcessingThread(v3);
    v9 = 0;
  }

  atomic_compare_exchange_strong_explicit(v5, &v8, 0, memory_order_release, memory_order_relaxed);
  if (v8 != 1)
  {
    v11 = v5;
    v12 = v9;
    this = WTF::Lock::unlockSlow(v11);
    v9 = v12;
  }

  if (v9)
  {

    JUMPOUT(0x19EB16320);
  }

  return this;
}

void sub_19D5C3B34(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10)
{
  if (a10)
  {
  }

  _Unwind_Resume(exception_object);
}

uint64_t IPC::StreamConnectionWorkQueue::startProcessingThread(IPC::StreamConnectionWorkQueue *this)
{
  v2 = WTF::fastMalloc(0x10);
  *v2 = &unk_1F1147730;
  v2[1] = this;
  v5 = v2;
  WTF::Thread::create();
  v3 = *(this + 6);
  *(this + 6) = v6;
  if (v3)
  {
    WTF::ThreadSafeRefCounted<WTF::Thread,(WTF::DestructionThread)0>::deref(v3);
  }

  result = v5;
  if (v5)
  {
    return (*(*v5 + 8))(v5);
  }

  return result;
}

uint64_t IPC::StreamServerConnection::startReceivingMessages(uint64_t a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v6 = 0;
  v11[0] = a3;
  v11[1] = a4;
  v7 = (a1 + 136);
  v8 = 1;
  atomic_compare_exchange_strong_explicit((a1 + 136), &v6, 1u, memory_order_acquire, memory_order_acquire);
  if (v6)
  {
    MEMORY[0x19EB01E30](a1 + 136);
  }

  result = WTF::HashMap<std::pair<unsigned char,unsigned long long>,WTF::Ref<IPC::StreamMessageReceiver,WTF::RawPtrTraits<IPC::StreamMessageReceiver>,WTF::DefaultRefDerefTraits<IPC::StreamMessageReceiver>>,WTF::DefaultHash<std::pair<unsigned char,unsigned long long>>,WTF::HashTraits<std::pair<unsigned char,unsigned long long>>,WTF::HashTraits<WTF::Ref<IPC::StreamMessageReceiver,WTF::RawPtrTraits<IPC::StreamMessageReceiver>,WTF::DefaultRefDerefTraits<IPC::StreamMessageReceiver>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::add<IPC::StreamMessageReceiver&>(a1 + 144, v11, a2, v10);
  atomic_compare_exchange_strong_explicit(v7, &v8, 0, memory_order_release, memory_order_relaxed);
  if (v8 != 1)
  {
    return WTF::Lock::unlockSlow(v7);
  }

  return result;
}

WTF *std::__optional_storage_base<WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,false>::__assign_from[abi:sn200100]<std::__optional_move_assign_base<WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,false>>(WTF *result, uint64_t a2)
{
  v3 = result;
  if (*(result + 16) == *(a2 + 16))
  {
    if (*(result + 16))
    {
      v4 = *(result + 3);
      if (v4)
      {
        WTF::VectorDestructor<true,WTF::String>::destruct(*result, (*result + 8 * v4));
      }

      return WTF::VectorBuffer<WTF::String,0ul,WTF::FastMalloc>::adopt(v3, a2);
    }
  }

  else if (*(result + 16))
  {
    result = WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(result, a2);
    *(v3 + 16) = 0;
  }

  else
  {
    *result = 0;
    *(result + 1) = 0;
    result = WTF::VectorBuffer<WTF::String,0ul,WTF::FastMalloc>::adopt(result, a2);
    *(v3 + 16) = 1;
  }

  return result;
}

void sub_19D5C3D54(_Unwind_Exception *exception_object, void *a2)
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

IPC::Encoder *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages15WebProcessProxy14SetupLogStreamENS2_10ConnectionEN6WebKit15WebProcessProxyES9_FvjONS2_28StreamServerConnectionHandleENS_23ObjectIdentifierGenericINS8_23LogStreamIdentifierTypeENS_38ObjectIdentifierThreadSafeAccessTraitsIyEEyEEONS_17CompletionHandlerIFvRNS2_9SemaphoreESJ_EEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJSJ_SJ_EE4callESJ_SJ_(uint64_t a1, void *a2, IPC::Semaphore *a3)
{
  v6 = *(a1 + 8);
  v5 = *(a1 + 16);
  v7 = IPC::Encoder::operator new(0x238, a2);
  *v7 = 3917;
  *(v7 + 2) = 0;
  *(v7 + 3) = 0;
  *(v7 + 1) = v6;
  *(v7 + 68) = 0;
  *(v7 + 70) = 0;
  *(v7 + 69) = 0;
  IPC::Encoder::encodeHeader(v7);
  v12 = v7;
  IPC::ArgumentCoder<IPC::Semaphore,void>::encode(v7, a2);
  IPC::ArgumentCoder<IPC::Semaphore,void>::encode(v7, a3);
  IPC::Connection::sendMessageImpl(v5, &v12, 0, 0);
  result = v12;
  v12 = 0;
  if (result)
  {
    IPC::Encoder::~Encoder(result, v8);
    return bmalloc::api::tzoneFree(v10, v11);
  }

  return result;
}

void IPC::ArgumentCoder<IPC::Semaphore,void>::encode(uint64_t a1, IPC::Semaphore *this)
{
  IPC::Semaphore::createSendRight(&v3, this);
  IPC::Encoder::addAttachment(a1, &v3);
  WTF::MachSendRight::~MachSendRight(&v3);
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages15WebProcessProxy14SetupLogStreamENS2_10ConnectionEN6WebKit15WebProcessProxyES9_FvjONS2_28StreamServerConnectionHandleENS_23ObjectIdentifierGenericINS8_23LogStreamIdentifierTypeENS_38ObjectIdentifierThreadSafeAccessTraitsIyEEyEEONS_17CompletionHandlerIFvRNS2_9SemaphoreESJ_EEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJSJ_SJ_EED0Ev(WTF *this, void *a2)
{
  *this = &unk_1F10F7F68;
  v3 = *(this + 2);
  *(this + 2) = 0;
  if (v3)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v3);
  }

  return WTF::fastFree(this, a2);
}

void **IPC::ScopedActiveMessageReceiveQueue<WebKit::LogStream,WTF::RefPtr<WebKit::LogStream,WTF::RawPtrTraits<WebKit::LogStream>,WTF::DefaultRefDerefTraits<WebKit::LogStream>>>::~ScopedActiveMessageReceiveQueue(void **a1)
{
  if (*a1)
  {
    IPC::ScopedActiveMessageReceiveQueue<WebKit::LogStream,WTF::RefPtr<WebKit::LogStream,WTF::RawPtrTraits<WebKit::LogStream>,WTF::DefaultRefDerefTraits<WebKit::LogStream>>>::stopListeningForIPCAndRelease<WTF::RefPtr<WebKit::LogStream,WTF::RawPtrTraits<WebKit::LogStream>,WTF::DefaultRefDerefTraits<WebKit::LogStream>>>(a1);
    v2 = *a1;
    *a1 = 0;
    if (v2)
    {
      if (atomic_fetch_add(v2 + 2, 0xFFFFFFFF) == 1)
      {
        atomic_store(1u, v2 + 2);
        (*(*v2 + 8))(v2);
      }
    }
  }

  return a1;
}

void sub_19D5C3F78(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  *v1 = 0;
  if (v3)
  {
    if (atomic_fetch_add(v3 + 2, 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, v3 + 2);
      (*(*v3 + 8))(v3);
    }
  }

  _Unwind_Resume(exception_object);
}

void *WebKit::WebPreferences::setSuppressesIncrementalRendering(atomic_uint **this, const BOOL *a2)
{
  {
    atomic_fetch_add_explicit(WebKit::WebPreferencesKey::suppressesIncrementalRenderingKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
    WebKit::WebPreferencesKey::suppressesIncrementalRenderingKey(void)::key = WebKit::WebPreferencesKey::suppressesIncrementalRenderingKey(void)::$_0::operator() const(void)::impl;
  }

  result = WebKit::WebPreferencesStore::setBoolValueForKey((this + 5), &WebKit::WebPreferencesKey::suppressesIncrementalRenderingKey(void)::key, *a2);
  if (result)
  {
    {
      atomic_fetch_add_explicit(WebKit::WebPreferencesKey::suppressesIncrementalRenderingKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
      WebKit::WebPreferencesKey::suppressesIncrementalRenderingKey(void)::key = WebKit::WebPreferencesKey::suppressesIncrementalRenderingKey(void)::$_0::operator() const(void)::impl;
    }

    v5 = *a2;

    return WebKit::WebPreferences::updateBoolValueForKey(this, &WebKit::WebPreferencesKey::suppressesIncrementalRenderingKey(void)::key, v5, 0);
  }

  return result;
}

uint64_t WTF::Detail::CallableWrapper<IPC::Connection::dispatchIncomingMessages(void)::$_0,void>::~CallableWrapper(WTF *this, void *a2)
{
  v3 = *(this + 1);
  *this = &unk_1F1147548;
  *(this + 1) = 0;
  if (v3)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v3);
  }

  return WTF::fastFree(this, a2);
}

BOOL WebKit::WebPreferencesStore::setDoubleValueForKey(WebKit::WebPreferencesStore *this, WTF::StringImpl **a2, double a3)
{
  v6 = WebKit::valueForKey<double>(this, this + 24, a2);
  if (v6 != a3)
  {
    v11 = *&a3;
    v12 = 3;
    WTF::HashMap<WTF::String,mpark::variant<WTF::String,BOOL,unsigned int,double>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<mpark::variant<WTF::String,BOOL,unsigned int,double>>,WTF::MemoryCompactRobinHoodHashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::inlineSet<WTF::String const&,mpark::variant<WTF::String,BOOL,unsigned int,double>>(this, a2, &v11, v10);
    if (!v12)
    {
      v8 = v11;
      v11 = 0;
      if (v8)
      {
        if (atomic_fetch_add_explicit(v8, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v8, v7);
        }
      }
    }
  }

  return v6 != a3;
}

void IPC::StreamConnectionWorkQueue::startProcessingThread(void)::$_0::operator()(uint64_t a1)
{
  v2 = (a1 + 40);
  IPC::StreamConnectionWorkQueue::processStreams(a1);
  v3 = atomic_load(v2);
  if ((v3 & 1) == 0)
  {
    do
    {
      MEMORY[0x19EB16340](*(a1 + 36));
      IPC::StreamConnectionWorkQueue::processStreams(a1);
      v4 = atomic_load((a1 + 40));
    }

    while ((v4 & 1) == 0);
  }

  IPC::StreamConnectionWorkQueue::processStreams(a1);
  v5 = 0;
  v6 = 1;
  atomic_compare_exchange_strong_explicit((a1 + 41), &v5, 1u, memory_order_acquire, memory_order_acquire);
  if (v5)
  {
    MEMORY[0x19EB01E30](a1 + 41);
  }

  v7 = *(a1 + 88);
  *(a1 + 88) = 0;
  atomic_compare_exchange_strong_explicit((a1 + 41), &v6, 0, memory_order_release, memory_order_relaxed);
  if (v6 != 1)
  {
    WTF::Lock::unlockSlow((a1 + 41));
  }

  if (v7)
  {
    (*(*v7 + 16))(v7);
    v8 = *(*v7 + 8);

    v8(v7);
  }
}

uint64_t WebKit::WebPreferences::setIncrementalRenderingSuppressionTimeout(atomic_uint **this, double *a2)
{
  {
    atomic_fetch_add_explicit(WebKit::WebPreferencesKey::incrementalRenderingSuppressionTimeoutKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
    WebKit::WebPreferencesKey::incrementalRenderingSuppressionTimeoutKey(void)::key = WebKit::WebPreferencesKey::incrementalRenderingSuppressionTimeoutKey(void)::$_0::operator() const(void)::impl;
  }

  result = WebKit::WebPreferencesStore::setDoubleValueForKey((this + 5), &WebKit::WebPreferencesKey::incrementalRenderingSuppressionTimeoutKey(void)::key, *a2);
  if (result)
  {
    {
      atomic_fetch_add_explicit(WebKit::WebPreferencesKey::incrementalRenderingSuppressionTimeoutKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
      WebKit::WebPreferencesKey::incrementalRenderingSuppressionTimeoutKey(void)::key = WebKit::WebPreferencesKey::incrementalRenderingSuppressionTimeoutKey(void)::$_0::operator() const(void)::impl;
    }

    WebKit::WebPreferences::platformUpdateDoubleValueForKey(this, &WebKit::WebPreferencesKey::incrementalRenderingSuppressionTimeoutKey(void)::key, *a2);

    return WebKit::WebPreferences::update(this);
  }

  return result;
}

void IPC::StreamConnectionWorkQueue::processStreams(atomic_uchar *this)
{
  v2 = this;
  v3 = this + 41;
  v4 = (this + 96);
  v129 = this + 41;
  v128 = (this + 96);
  while (1)
  {
    WTF::AutodrainedPool::AutodrainedPool(v139);
    v8 = 0;
    v137 = 0u;
    v138 = 0u;
    v135 = 0;
    v136 = 0;
    atomic_compare_exchange_strong_explicit(v3, &v8, 1u, memory_order_acquire, memory_order_acquire);
    if (v8)
    {
      MEMORY[0x19EB01E30](v3);
    }

    v9 = v137;
    v137 = *(v2 + 56);
    *(v2 + 56) = v9;
    v10 = v138;
    *&v138 = *(v2 + 9);
    *(v2 + 9) = v10;
    LODWORD(v10) = DWORD2(v138);
    DWORD2(v138) = *(v2 + 20);
    *(v2 + 20) = v10;
    if (v4 != &v135)
    {
      v5 = *(v2 + 27);
      if (HIDWORD(v136) > v5)
      {
        WTF::Vector<WTF::Ref<IPC::StreamServerConnection,WTF::RawPtrTraits<IPC::StreamServerConnection>,WTF::DefaultRefDerefTraits<IPC::StreamServerConnection>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::shrink(&v135, v5);
      }

      else if (v5 > v136)
      {
        if (v136)
        {
          if (HIDWORD(v136))
          {
            WTF::Vector<WTF::Ref<IPC::StreamServerConnection,WTF::RawPtrTraits<IPC::StreamServerConnection>,WTF::DefaultRefDerefTraits<IPC::StreamServerConnection>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::shrink(&v135, 0);
          }

          v102 = v135;
          v3 = v129;
          v2 = this;
          v4 = v128;
          if (v135)
          {
            v135 = 0;
            LODWORD(v136) = 0;
            WTF::fastFree(v102, v5);
          }
        }

        v11 = *(v2 + 27);
        if (v136 < v11)
        {
          if (v11 >> 29)
          {
            __break(0xC471u);
            JUMPOUT(0x19D5C50B4);
          }

          v1 = v135;
          v12 = HIDWORD(v136);
          v13 = WTF::fastMalloc((8 * v11));
          LODWORD(v136) = v11;
          v135 = v13;
          memcpy(v13, v1, 8 * v12);
          if (v1)
          {
            if (v135 == v1)
            {
              v135 = 0;
              LODWORD(v136) = 0;
            }

            WTF::fastFree(v1, v5);
          }
        }
      }

      v14 = *v4;
      v15 = v135;
      if (HIDWORD(v136))
      {
        v1 = (8 * HIDWORD(v136));
        do
        {
          v100 = *v14;
          atomic_fetch_add((*v14 + 8), 1u);
          v101 = *v15;
          *v15 = v100;
          if (v101 && atomic_fetch_add(v101 + 2, 0xFFFFFFFF) == 1)
          {
            atomic_store(1u, v101 + 2);
            (*(*v101 + 8))(v101);
          }

          v14 = (v14 + 8);
          v15 = (v15 + 8);
          v1 -= 2;
        }

        while (v1);
        v3 = v129;
        v14 = *v128;
        v16 = HIDWORD(v136);
        v15 = v135;
        v2 = this;
      }

      else
      {
        v16 = 0;
      }

      v17 = *(v2 + 27);
      if (v16 != v17)
      {
        v18 = (v15 + 8 * v16);
        v7 = v14 + 8 * v16;
        v19 = 8 * v17 - 8 * v16;
        do
        {
          v20 = *v7;
          v7 += 8;
          atomic_fetch_add((v20 + 8), 1u);
          *v18++ = v20;
          v19 -= 8;
        }

        while (v19);
        LODWORD(v16) = *(v2 + 27);
      }

      HIDWORD(v136) = v16;
    }

    v21 = 1;
    atomic_compare_exchange_strong_explicit(v3, &v21, 0, memory_order_release, memory_order_relaxed);
    if (v21 != 1)
    {
      WTF::Lock::unlockSlow(v3);
    }

    v22 = *(&v137 + 1);
    v23 = v137;
    if (v137 == *(&v137 + 1))
    {
      break;
    }

    explicit = DWORD2(v138);
    while (v23 < explicit)
    {
      (*(**(v138 + 8 * v23) + 16))(*(v138 + 8 * v23));
      explicit = DWORD2(v138);
      v23 += DWORD2(v138) + 1;
      do
      {
        v23 -= DWORD2(v138);
      }

      while (v23 >= DWORD2(v138));
      if (v22 == v23)
      {
        goto LABEL_24;
      }
    }

LABEL_119:
    while (2)
    {
      while (2)
      {
        __break(1u);
LABEL_120:
        for (i = v7 + explicit; ; i = v35 + v30)
        {
          IPC::Decoder::Decoder(&v140, i + 256, v6, *(v2 + 19));
          if (!v140)
          {
            v107 = *(v2 + 5);
            while (1)
            {
              v108 = *v107;
              if ((*v107 & 1) == 0)
              {
                break;
              }

              v118 = *v107;
              atomic_compare_exchange_strong_explicit(v107, &v118, v108 + 2, memory_order_relaxed, memory_order_relaxed);
              if (v118 == v108)
              {
                goto LABEL_228;
              }
            }

LABEL_227:
            WTF::ThreadSafeWeakPtrControlBlock::strongRef(*v107);
LABEL_228:
            IPC::Connection::dispatchDidReceiveInvalidMessage(v107, v144, v145);
            WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v107);
            goto LABEL_174;
          }

          v37 = v144;
          if (v144 != 3198)
          {
            break;
          }

          v6 = v141;
          v58 = ((v142 + 7) & 0xFFFFFFFFFFFFFFF8);
          if (v141 < v58 - v140 || v141 - (v58 - v140) <= 7)
          {
            v140 = 0;
            v141 = 0;
            if (v143 && v6)
            {
              (*(*v143 + 16))();
              v6 = v141;
LABEL_242:
              v140 = 0;
              v141 = 0;
              if (v143 && v6)
              {
                (*(*v143 + 16))();
              }
            }

            v107 = *(v2 + 5);
            while (1)
            {
              v111 = *v107;
              if ((*v107 & 1) == 0)
              {
                goto LABEL_227;
              }

              v112 = *v107;
              atomic_compare_exchange_strong_explicit(v107, &v112, v111 + 2, memory_order_relaxed, memory_order_relaxed);
              if (v112 == v111)
              {
                goto LABEL_228;
              }
            }
          }

          v142 = v58 + 1;
          if (!v58)
          {
            goto LABEL_242;
          }

          v59 = *v58;
          if (*(v2 + 19) != v59)
          {
            *(v2 + 19) = v59;
            if (v1)
            {
              if (atomic_fetch_add(v1 + 2, 0xFFFFFFFF) == 1)
              {
                atomic_store(1u, v1 + 2);
                (*(*v1 + 8))(v1);
              }

              v1 = 0;
            }
          }

          explicit = v140;
          v60 = (*(v2 + 9) + 1) & 0xFFFFFFFFFFFFFFFELL;
          v7 = *(v2 + 7);
          if (v60 + 16 >= v7)
          {
            v60 = 0;
          }

          v61 = *(v2 + 8);
          if (*(v61 + 8) <= 0xFFuLL)
          {
            goto LABEL_119;
          }

          v62 = v142 - v140;
          if (v142 - v140 <= 0x10)
          {
            v62 = 16;
          }

          v63 = v60 + v62;
          if (v7 <= v63)
          {
            v63 = 0;
          }

          v64 = atomic_exchange(*(v61 + 16), v63);
          *(v2 + 9) = v63;
          if (v64 == 0x80000000)
          {
            MEMORY[0x19EB16320](*(v2 + 41));
          }

LABEL_62:
          IPC::Decoder::~Decoder(&v140);
          LODWORD(v22) = v23++ > 0x3E6;
          if (v23 == 1000)
          {
            LODWORD(v22) = 1;
            goto LABEL_112;
          }

LABEL_27:
          explicit = *(v2 + 8);
          if (*(explicit + 8) <= 0xFFuLL)
          {
            goto LABEL_119;
          }

          explicit = atomic_load_explicit((*(explicit + 16) + 128), memory_order_acquire);
          if (explicit == 0x80000000)
          {
            goto LABEL_112;
          }

          v27 = *(v2 + 9);
          v28 = *(v2 + 7);
          if (v28 - 1 >= explicit)
          {
            v29 = explicit;
          }

          else
          {
            v29 = v28 - 1;
          }

          v30 = (v27 + 1) & 0xFFFFFFFFFFFFFFFELL;
          if (v30 + 16 >= v28)
          {
            v30 = 0;
          }

          if (v27 >= v29)
          {
            if (v27 > v29 && (v30 >= v27 || v29 > v30))
            {
              if (v29 < v30)
              {
                v29 = *(v2 + 7);
              }

              v7 = v29 - v30;
            }

            else
            {
              v7 = 0;
            }
          }

          else
          {
            v7 = v29 - v30;
            v31 = v29 > v30 && v30 >= v27;
            if (!v31)
            {
              v7 = 0;
            }
          }

          v32 = *(v2 + 8);
          v33 = *(v32 + 8);
          if (v33 <= 0xFF)
          {
            goto LABEL_119;
          }

          v34 = v33 - 256;
          v6 = v34 - v30;
          if (v34 < v30)
          {
            goto LABEL_119;
          }

          v35 = *(v32 + 16);
          if (v7 != -1)
          {
            v31 = v6 >= v7;
            v6 = v7;
            if (!v31)
            {
              goto LABEL_119;
            }
          }

          if (v6 <= 0xF)
          {
            atomic_compare_exchange_strong((v35 + 128), &explicit, 0x80000000uLL);
            v47 = *(v2 + 9);
            v48 = *(v2 + 7);
            v49 = v48 - 1;
            if (v48 - 1 >= explicit)
            {
              v49 = explicit;
            }

            explicit = (v47 + 1) & 0xFFFFFFFFFFFFFFFELL;
            if (explicit + 16 >= v48)
            {
              explicit = 0;
            }

            if (v47 >= v49)
            {
              if (v47 > v49 && (explicit >= v47 || v49 > explicit))
              {
                if (v49 < explicit)
                {
                  v49 = *(v2 + 7);
                }

                v50 = v49 - explicit;
              }

              else
              {
                v50 = 0;
              }
            }

            else
            {
              v50 = v49 - explicit;
              if (v49 <= explicit || explicit < v47)
              {
                v50 = 0;
              }
            }

            v7 = *(v2 + 8);
            v52 = *(v7 + 8);
            if (v52 <= 0xFF)
            {
              goto LABEL_119;
            }

            v53 = v52 - 256;
            v6 = v53 - explicit;
            if (v53 < explicit)
            {
              goto LABEL_119;
            }

            v7 = *(v7 + 16);
            if (v50 != -1)
            {
              v31 = v6 >= v50;
              v6 = v50;
              if (!v31)
              {
                goto LABEL_119;
              }
            }

            if (v6 < 0x10)
            {
              goto LABEL_112;
            }

            goto LABEL_120;
          }
        }

        if (v144 != 3197)
        {
          if (v144 >= 0x107Fu)
          {
            v37 = 4223;
          }

          v38 = LOBYTE((&IPC::Detail::messageDescriptions)[3 * v37 + 2]);
          if (v38 == v4)
          {
            if (v1)
            {
              goto LABEL_52;
            }
          }

          else
          {
            if (v1 && atomic_fetch_add(v1 + 2, 0xFFFFFFFF) == 1)
            {
              atomic_store(1u, v1 + 2);
              (*(*v1 + 8))(v1);
            }

            LOBYTE(v4) = v38;
          }

          v54 = *(v2 + 19);
          if (v4)
          {
            if (v4 == 255)
            {
              goto LABEL_168;
            }
          }

          else if (!v54)
          {
LABEL_168:
            v90 = *(v2 + 5);
            while (1)
            {
              v91 = *v90;
              if ((*v90 & 1) == 0)
              {
                break;
              }

              v115 = *v90;
              atomic_compare_exchange_strong_explicit(v90, &v115, v91 + 2, memory_order_relaxed, memory_order_relaxed);
              if (v115 == v91)
              {
                goto LABEL_171;
              }
            }

            WTF::ThreadSafeWeakPtrControlBlock::strongRef(*v90);
LABEL_171:
            IPC::Connection::dispatchDidReceiveInvalidMessage(v90, v144, v145);
            WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v90);
            goto LABEL_205;
          }

          v55 = 0;
          atomic_compare_exchange_strong_explicit(v134, &v55, 1u, memory_order_acquire, memory_order_acquire);
          if (v55)
          {
            MEMORY[0x19EB01E30](v134);
          }

          v56 = WTF::HashTable<std::pair<unsigned char,unsigned long long>,WTF::KeyValuePair<std::pair<unsigned char,unsigned long long>,WTF::Ref<IPC::StreamMessageReceiver,WTF::RawPtrTraits<IPC::StreamMessageReceiver>,WTF::DefaultRefDerefTraits<IPC::StreamMessageReceiver>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<std::pair<unsigned char,unsigned long long>,WTF::Ref<IPC::StreamMessageReceiver,WTF::RawPtrTraits<IPC::StreamMessageReceiver>,WTF::DefaultRefDerefTraits<IPC::StreamMessageReceiver>>>>,WTF::DefaultHash<std::pair<unsigned char,unsigned long long>>,WTF::HashMap<std::pair<unsigned char,unsigned long long>,WTF::Ref<IPC::StreamMessageReceiver,WTF::RawPtrTraits<IPC::StreamMessageReceiver>,WTF::DefaultRefDerefTraits<IPC::StreamMessageReceiver>>,WTF::DefaultHash<std::pair<unsigned char,unsigned long long>>,WTF::HashTraits<std::pair<unsigned char,unsigned long long>>,WTF::HashTraits<WTF::Ref<IPC::StreamMessageReceiver,WTF::RawPtrTraits<IPC::StreamMessageReceiver>,WTF::DefaultRefDerefTraits<IPC::StreamMessageReceiver>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<std::pair<unsigned char,unsigned long long>>,WTF::FastMalloc>::lookup<WTF::HashMapTranslatorAdapter<WTF::HashMap<std::pair<unsigned char,unsigned long long>,WTF::Ref<IPC::StreamMessageReceiver,WTF::RawPtrTraits<IPC::StreamMessageReceiver>,WTF::DefaultRefDerefTraits<IPC::StreamMessageReceiver>>,WTF::DefaultHash<std::pair<unsigned char,unsigned long long>>,WTF::HashTraits<std::pair<unsigned char,unsigned long long>>,WTF::HashTraits<WTF::Ref<IPC::StreamMessageReceiver,WTF::RawPtrTraits<IPC::StreamMessageReceiver>,WTF::DefaultRefDerefTraits<IPC::StreamMessageReceiver>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::IdentityHashTranslator<WTF::HashMap<std::pair<unsigned char,unsigned long long>,WTF::Ref<IPC::StreamMessageReceiver,WTF::RawPtrTraits<IPC::StreamMessageReceiver>,WTF::DefaultRefDerefTraits<IPC::StreamMessageReceiver>>,WTF::DefaultHash<std::pair<unsigned char,unsigned long long>>,WTF::HashTraits<std::pair<unsigned char,unsigned long long>>,WTF::HashTraits<WTF::Ref<IPC::StreamMessageReceiver,WTF::RawPtrTraits<IPC::StreamMessageReceiver>,WTF::DefaultRefDerefTraits<IPC::StreamMessageReceiver>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<std::pair<unsigned char,unsigned long long>>>>,(WTF::ShouldValidateKey)1,std::pair<unsigned char,unsigned long long>>(v2 + 18, v4, v54);
          if (v56)
          {
            v1 = *(v56 + 2);
            if (v1)
            {
              atomic_fetch_add(v1 + 2, 1u);
            }
          }

          else
          {
            v1 = 0;
          }

          v57 = 1;
          atomic_compare_exchange_strong_explicit(v134, &v57, 0, memory_order_release, memory_order_relaxed);
          if (v57 != 1)
          {
            WTF::Lock::unlockSlow(v134);
          }

          if (!v1)
          {
            v98 = 0;
            v99 = 1;
            atomic_compare_exchange_strong_explicit(v134, &v98, 1u, memory_order_acquire, memory_order_acquire);
            if (v98)
            {
              MEMORY[0x19EB01E30](v134);
            }

            atomic_compare_exchange_strong_explicit(v134, &v99, 0, memory_order_release, memory_order_relaxed);
            if (v99 != 1)
            {
              WTF::Lock::unlockSlow(v134);
            }

LABEL_205:
            v1 = 0;
            goto LABEL_174;
          }

LABEL_52:
          *(v2 + 120) = 1;
          (*(*v1 + 16))(v1, v2, &v140);
          v39 = *(v2 + 168);
          *(v2 + 168) = 0;
          explicit = v140;
          v7 = v140 == 0;
          v40 = v39 | v7;
          if (v39 & 1 | (v140 == 0))
          {
            v125 = *(v2 + 5);
            while (1)
            {
              v97 = *v125;
              if ((*v125 & 1) == 0)
              {
                break;
              }

              v116 = *v125;
              atomic_compare_exchange_strong_explicit(v125, &v116, v97 + 2, memory_order_relaxed, memory_order_relaxed);
              if (v116 == v97)
              {
                goto LABEL_200;
              }
            }

            WTF::ThreadSafeWeakPtrControlBlock::strongRef(*v125);
LABEL_200:
            IPC::Connection::dispatchDidReceiveInvalidMessage(v125, v144, v145);
            WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v125);
            *(v2 + 120) = 0;
          }

          else
          {
            *(v2 + 120) = 0;
            if (v144 >= 0xF8Fu)
            {
              explicit = *(v2 + 8);
              if (*(explicit + 8) <= 0xFFuLL)
              {
                continue;
              }

              atomic_store(0, (*(explicit + 16) + 128));
              explicit = *(v2 + 8);
              if (*(explicit + 8) <= 0xFFuLL)
              {
                continue;
              }

              v93 = atomic_exchange(*(explicit + 16), 0);
              *(v2 + 9) = 0;
              if (!*(v2 + 16))
              {
                if (v93 != 0x80000000)
                {
                  goto LABEL_62;
                }

                goto LABEL_179;
              }

              v122 = v93;
              v126 = *(v2 + 5);
              while (1)
              {
                v103 = *v126;
                if ((*v126 & 1) == 0)
                {
                  break;
                }

                v117 = *v126;
                atomic_compare_exchange_strong_explicit(v126, &v117, v103 + 2, memory_order_relaxed, memory_order_relaxed);
                if (v117 == v103)
                {
                  goto LABEL_220;
                }
              }

              WTF::ThreadSafeWeakPtrControlBlock::strongRef(*v126);
LABEL_220:
              v104 = *(v2 + 16);
              *(v2 + 16) = 0;
              v146 = v104;
              IPC::Connection::sendSyncReply(v126, &v146);
              v106 = v146;
              v146 = 0;
              if (v106)
              {
                IPC::Encoder::~Encoder(v106, v105);
                bmalloc::api::tzoneFree(v109, v110);
              }

              WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v126);
              if (v122 == 0x80000000)
              {
                goto LABEL_179;
              }
            }

            else
            {
              v7 = (*(v2 + 9) + 1) & 0xFFFFFFFFFFFFFFFELL;
              v41 = *(v2 + 7);
              if (v7 + 16 >= v41)
              {
                v7 = 0;
              }

              v42 = *(v2 + 8);
              if (*(v42 + 8) <= 0xFFuLL)
              {
                continue;
              }

              v43 = v142 - explicit;
              if (v43 <= 0x10)
              {
                v43 = 16;
              }

              v44 = v7 + v43;
              if (v41 <= v44)
              {
                v44 = 0;
              }

              v45 = atomic_exchange(*(v42 + 16), v44);
              *(v2 + 9) = v44;
              if (v45 != 0x80000000)
              {
                goto LABEL_62;
              }

LABEL_179:
              MEMORY[0x19EB16320](*(v2 + 41));
            }
          }

          if (v40)
          {
            goto LABEL_174;
          }

          goto LABEL_62;
        }

        break;
      }

      v67 = 0;
      atomic_compare_exchange_strong_explicit(v2 + 80, &v67, 1u, memory_order_acquire, memory_order_acquire);
      if (v67)
      {
        MEMORY[0x19EB01E30](v127);
      }

      explicit = *(v2 + 11);
      if (explicit != *(v2 + 12))
      {
        if (explicit >= *(v2 + 28))
        {
          continue;
        }

        v68 = (*(v2 + 13) + 8 * explicit);
        v69 = *v68;
        *v68 = 0;
        std::unique_ptr<IPC::Decoder>::reset[abi:sn200100](v68, 0);
        v70 = *(v2 + 11);
        if (v70 == *(v2 + 28) - 1)
        {
          v71 = 0;
        }

        else
        {
          v71 = v70 + 1;
        }

        *(v2 + 11) = v71;
        v72 = 1;
        atomic_compare_exchange_strong_explicit(v2 + 80, &v72, 0, memory_order_release, memory_order_relaxed);
        if (v72 != 1)
        {
          WTF::Lock::unlockSlow(v127);
        }

        v73 = 0;
        v74 = *(v69 + 25);
        if (v74 >= 0x107F)
        {
          v74 = 4223;
        }

        v75 = (&IPC::Detail::messageDescriptions)[3 * v74 + 2];
        v121 = v69;
        v76 = *(v69 + 7);
        atomic_compare_exchange_strong_explicit(v134, &v73, 1u, memory_order_acquire, memory_order_acquire);
        if (v73)
        {
          v124 = v75;
          v96 = v76;
          MEMORY[0x19EB01E30](v134);
          v76 = v96;
          v75 = v124;
        }

        v77 = WTF::HashTable<std::pair<unsigned char,unsigned long long>,WTF::KeyValuePair<std::pair<unsigned char,unsigned long long>,WTF::Ref<IPC::StreamMessageReceiver,WTF::RawPtrTraits<IPC::StreamMessageReceiver>,WTF::DefaultRefDerefTraits<IPC::StreamMessageReceiver>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<std::pair<unsigned char,unsigned long long>,WTF::Ref<IPC::StreamMessageReceiver,WTF::RawPtrTraits<IPC::StreamMessageReceiver>,WTF::DefaultRefDerefTraits<IPC::StreamMessageReceiver>>>>,WTF::DefaultHash<std::pair<unsigned char,unsigned long long>>,WTF::HashMap<std::pair<unsigned char,unsigned long long>,WTF::Ref<IPC::StreamMessageReceiver,WTF::RawPtrTraits<IPC::StreamMessageReceiver>,WTF::DefaultRefDerefTraits<IPC::StreamMessageReceiver>>,WTF::DefaultHash<std::pair<unsigned char,unsigned long long>>,WTF::HashTraits<std::pair<unsigned char,unsigned long long>>,WTF::HashTraits<WTF::Ref<IPC::StreamMessageReceiver,WTF::RawPtrTraits<IPC::StreamMessageReceiver>,WTF::DefaultRefDerefTraits<IPC::StreamMessageReceiver>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<std::pair<unsigned char,unsigned long long>>,WTF::FastMalloc>::lookup<WTF::HashMapTranslatorAdapter<WTF::HashMap<std::pair<unsigned char,unsigned long long>,WTF::Ref<IPC::StreamMessageReceiver,WTF::RawPtrTraits<IPC::StreamMessageReceiver>,WTF::DefaultRefDerefTraits<IPC::StreamMessageReceiver>>,WTF::DefaultHash<std::pair<unsigned char,unsigned long long>>,WTF::HashTraits<std::pair<unsigned char,unsigned long long>>,WTF::HashTraits<WTF::Ref<IPC::StreamMessageReceiver,WTF::RawPtrTraits<IPC::StreamMessageReceiver>,WTF::DefaultRefDerefTraits<IPC::StreamMessageReceiver>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::IdentityHashTranslator<WTF::HashMap<std::pair<unsigned char,unsigned long long>,WTF::Ref<IPC::StreamMessageReceiver,WTF::RawPtrTraits<IPC::StreamMessageReceiver>,WTF::DefaultRefDerefTraits<IPC::StreamMessageReceiver>>,WTF::DefaultHash<std::pair<unsigned char,unsigned long long>>,WTF::HashTraits<std::pair<unsigned char,unsigned long long>>,WTF::HashTraits<WTF::Ref<IPC::StreamMessageReceiver,WTF::RawPtrTraits<IPC::StreamMessageReceiver>,WTF::DefaultRefDerefTraits<IPC::StreamMessageReceiver>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<std::pair<unsigned char,unsigned long long>>>>,(WTF::ShouldValidateKey)1,std::pair<unsigned char,unsigned long long>>(v2 + 18, v75, v76);
        v78 = 1;
        if (v77)
        {
          v77 = *(v77 + 2);
          v79 = 1;
          v80 = v121;
          if (v77)
          {
            atomic_fetch_add(v77 + 2, 1u);
            v79 = 0;
          }
        }

        else
        {
          v79 = 1;
          v80 = v121;
        }

        v120 = v79;
        atomic_compare_exchange_strong_explicit(v134, &v78, 0, memory_order_release, memory_order_relaxed);
        v123 = v77;
        if (v78 != 1)
        {
          WTF::Lock::unlockSlow(v134);
          v77 = v123;
        }

        if (v77 && (((*(*v77 + 16))(v123, v2, v80), v77 = v123, v81 = *(v2 + 168), *(v2 + 168) = 0, (v81 & 1) != 0) || !*v80))
        {
          v113 = *(v2 + 5);
          while (1)
          {
            v114 = *v113;
            if ((*v113 & 1) == 0)
            {
              break;
            }

            v119 = *v113;
            atomic_compare_exchange_strong_explicit(v113, &v119, v114 + 2, memory_order_relaxed, memory_order_relaxed);
            if (v119 == v114)
            {
              goto LABEL_239;
            }
          }

          WTF::ThreadSafeWeakPtrControlBlock::strongRef(*v113);
LABEL_239:
          IPC::Connection::dispatchDidReceiveInvalidMessage(v113, v121[25], (v121 + 36));
          WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v113);
          v87 = 0;
          v77 = v123;
        }

        else
        {
          v82 = (*(v2 + 9) + 1) & 0xFFFFFFFFFFFFFFFELL;
          explicit = *(v2 + 7);
          if (v82 + 16 >= explicit)
          {
            v82 = 0;
          }

          v7 = *(v2 + 8);
          if (*(v7 + 8) <= 0xFFuLL)
          {
            continue;
          }

          v83 = v142 - v140;
          if (v142 - v140 <= 0x10)
          {
            v83 = 16;
          }

          v84 = v82 + v83;
          if (explicit <= v84)
          {
            v85 = 0;
          }

          else
          {
            v85 = v84;
          }

          v86 = atomic_exchange(*(v7 + 16), v85);
          *(v2 + 9) = v85;
          if (v86 == 0x80000000)
          {
            v94 = v77;
            MEMORY[0x19EB16320](*(v2 + 41));
            v77 = v94;
          }

          v87 = 1;
        }

        if ((v120 & 1) == 0 && atomic_fetch_add(v77 + 2, 0xFFFFFFFF) == 1)
        {
          atomic_store(1u, v77 + 2);
          (*(*v77 + 8))(v77);
        }

        IPC::Decoder::~Decoder(v121);
        bmalloc::api::tzoneFree(v88, v89);
        if ((v87 & 1) == 0)
        {
          goto LABEL_174;
        }

        goto LABEL_62;
      }

      break;
    }

    v92 = 1;
    atomic_compare_exchange_strong_explicit(v127, &v92, 0, memory_order_release, memory_order_relaxed);
    if (v92 != 1)
    {
      WTF::Lock::unlockSlow(v127);
    }

LABEL_174:
    IPC::Decoder::~Decoder(&v140);
LABEL_112:
    v65 = v133;
    v3 = v129;
    v2 = this;
    v4 = v128;
    if (v1)
    {
      v65 = v133;
      if (atomic_fetch_add(v1 + 2, 0xFFFFFFFF) == 1)
      {
        atomic_store(1u, v1 + 2);
        (*(*v1 + 8))(v1);
        v65 = v133;
      }
    }

    v24 = v132 | v22;
    v25 = (v65 + 8);
    if (v25 != v131)
    {
      goto LABEL_26;
    }

    WTF::Vector<WTF::Ref<IPC::StreamServerConnection,WTF::RawPtrTraits<IPC::StreamServerConnection>,WTF::DefaultRefDerefTraits<IPC::StreamServerConnection>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v135, v5);
    WTF::Deque<WTF::Function<void ()(void)>,0ul>::~Deque(&v137, v66);
    WTF::AutodrainedPool::~AutodrainedPool(v139);
    if ((v24 & 1) == 0)
    {
      return;
    }
  }

LABEL_24:
  if (HIDWORD(v136))
  {
    v24 = 0;
    v25 = v135;
    v131 = (v135 + 8 * HIDWORD(v136));
LABEL_26:
    v132 = v24;
    v1 = 0;
    LODWORD(v22) = 0;
    v23 = 0;
    v2 = *v25;
    v133 = v25;
    v134 = (*v25 + 136);
    v127 = (*v25 + 80);
    LOBYTE(v4) = -41;
    goto LABEL_27;
  }

  WTF::Vector<WTF::Ref<IPC::StreamServerConnection,WTF::RawPtrTraits<IPC::StreamServerConnection>,WTF::DefaultRefDerefTraits<IPC::StreamServerConnection>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v135, v5);
  WTF::Deque<WTF::Function<void ()(void)>,0ul>::~Deque(&v137, v95);
  WTF::AutodrainedPool::~AutodrainedPool(v139);
}

unint64_t *WTF::Deque<WTF::Function<void ()(void)>,0ul>::~Deque(unint64_t *result, void *a2)
{
  v2 = result[1];
  v3 = *(result + 6);
  v4 = *result;
  v5 = v2 - *result;
  if (v2 < *result)
  {
    v17 = result[2];
    v18 = *(result + 6);
    v19 = result;
    if (v2 <= v3)
    {
      if (v2)
      {
        goto LABEL_25;
      }

      goto LABEL_17;
    }
  }

  else
  {
    v2 = v3 - v4;
    if (v3 >= v4)
    {
      if (v5 == -1)
      {
        v5 = v3 - v4;
LABEL_5:
        if (v5)
        {
          v7 = 8 * v5;
          v8 = (result[2] + 8 * v4);
          do
          {
            v9 = *v8;
            *v8 = 0;
            if (v9)
            {
              v20 = result;
              (*(*v9 + 8))(v9);
              result = v20;
            }

            ++v8;
            v7 -= 8;
          }

          while (v7);
        }

        goto LABEL_6;
      }

      if (v2 >= v5)
      {
        goto LABEL_5;
      }
    }
  }

  do
  {
    __break(1u);
LABEL_25:
    v14 = 8 * v2;
    v15 = v17;
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
    v4 = *v19;
LABEL_17:
    ;
  }

  while (v4 > v18);
  result = v19;
  if (v4 != v18)
  {
    v11 = &v17[v4];
    v12 = 8 * v18 - 8 * v4;
    do
    {
      v13 = *v11;
      *v11 = 0;
      if (v13)
      {
        (*(*v13 + 8))(v13);
      }

      ++v11;
      v12 -= 8;
      result = v19;
    }

    while (v12);
  }

LABEL_6:
  v6 = result[2];
  if (v6)
  {
    result[2] = 0;
    *(result + 6) = 0;
    v10 = result;
    WTF::fastFree(v6, a2);
    return v10;
  }

  return result;
}

void *WebKit::WebPreferences::setJavaScriptMarkupEnabled(atomic_uint **this, const BOOL *a2)
{
  {
    atomic_fetch_add_explicit(WebKit::WebPreferencesKey::javaScriptMarkupEnabledKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
    WebKit::WebPreferencesKey::javaScriptMarkupEnabledKey(void)::key = WebKit::WebPreferencesKey::javaScriptMarkupEnabledKey(void)::$_0::operator() const(void)::impl;
  }

  result = WebKit::WebPreferencesStore::setBoolValueForKey((this + 5), &WebKit::WebPreferencesKey::javaScriptMarkupEnabledKey(void)::key, *a2);
  if (result)
  {
    {
      atomic_fetch_add_explicit(WebKit::WebPreferencesKey::javaScriptMarkupEnabledKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
      WebKit::WebPreferencesKey::javaScriptMarkupEnabledKey(void)::key = WebKit::WebPreferencesKey::javaScriptMarkupEnabledKey(void)::$_0::operator() const(void)::impl;
    }

    v5 = *a2;

    return WebKit::WebPreferences::updateBoolValueForKey(this, &WebKit::WebPreferencesKey::javaScriptMarkupEnabledKey(void)::key, v5, 0);
  }

  return result;
}

void *WebKit::WebPreferences::setShouldConvertPositionStyleOnCopy(atomic_uint **this, const BOOL *a2)
{
  {
    atomic_fetch_add_explicit(WebKit::WebPreferencesKey::shouldConvertPositionStyleOnCopyKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
    WebKit::WebPreferencesKey::shouldConvertPositionStyleOnCopyKey(void)::key = WebKit::WebPreferencesKey::shouldConvertPositionStyleOnCopyKey(void)::$_0::operator() const(void)::impl;
  }

  result = WebKit::WebPreferencesStore::setBoolValueForKey((this + 5), &WebKit::WebPreferencesKey::shouldConvertPositionStyleOnCopyKey(void)::key, *a2);
  if (result)
  {
    {
      atomic_fetch_add_explicit(WebKit::WebPreferencesKey::shouldConvertPositionStyleOnCopyKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
      WebKit::WebPreferencesKey::shouldConvertPositionStyleOnCopyKey(void)::key = WebKit::WebPreferencesKey::shouldConvertPositionStyleOnCopyKey(void)::$_0::operator() const(void)::impl;
    }

    v5 = *a2;

    return WebKit::WebPreferences::updateBoolValueForKey(this, &WebKit::WebPreferencesKey::shouldConvertPositionStyleOnCopyKey(void)::key, v5, 0);
  }

  return result;
}

void *WebKit::WebPreferences::setHTTPEquivEnabled(atomic_uint **this, const BOOL *a2)
{
  {
    atomic_fetch_add_explicit(WebKit::WebPreferencesKey::httpEquivEnabledKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
    WebKit::WebPreferencesKey::httpEquivEnabledKey(void)::key = WebKit::WebPreferencesKey::httpEquivEnabledKey(void)::$_0::operator() const(void)::impl;
  }

  result = WebKit::WebPreferencesStore::setBoolValueForKey((this + 5), &WebKit::WebPreferencesKey::httpEquivEnabledKey(void)::key, *a2);
  if (result)
  {
    {
      atomic_fetch_add_explicit(WebKit::WebPreferencesKey::httpEquivEnabledKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
      WebKit::WebPreferencesKey::httpEquivEnabledKey(void)::key = WebKit::WebPreferencesKey::httpEquivEnabledKey(void)::$_0::operator() const(void)::impl;
    }

    v5 = *a2;

    return WebKit::WebPreferences::updateBoolValueForKey(this, &WebKit::WebPreferencesKey::httpEquivEnabledKey(void)::key, v5, 0);
  }

  return result;
}

void *WebKit::WebPreferences::setAllowUniversalAccessFromFileURLs(atomic_uint **this, const BOOL *a2)
{
  {
    atomic_fetch_add_explicit(WebKit::WebPreferencesKey::allowUniversalAccessFromFileURLsKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
    WebKit::WebPreferencesKey::allowUniversalAccessFromFileURLsKey(void)::key = WebKit::WebPreferencesKey::allowUniversalAccessFromFileURLsKey(void)::$_0::operator() const(void)::impl;
  }

  result = WebKit::WebPreferencesStore::setBoolValueForKey((this + 5), &WebKit::WebPreferencesKey::allowUniversalAccessFromFileURLsKey(void)::key, *a2);
  if (result)
  {
    {
      atomic_fetch_add_explicit(WebKit::WebPreferencesKey::allowUniversalAccessFromFileURLsKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
      WebKit::WebPreferencesKey::allowUniversalAccessFromFileURLsKey(void)::key = WebKit::WebPreferencesKey::allowUniversalAccessFromFileURLsKey(void)::$_0::operator() const(void)::impl;
    }

    v5 = *a2;

    return WebKit::WebPreferences::updateBoolValueForKey(this, &WebKit::WebPreferencesKey::allowUniversalAccessFromFileURLsKey(void)::key, v5, 0);
  }

  return result;
}

void *WebKit::WebPreferences::setAllowTopNavigationToDataURLs(atomic_uint **this, const BOOL *a2)
{
  {
    atomic_fetch_add_explicit(WebKit::WebPreferencesKey::allowTopNavigationToDataURLsKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
    WebKit::WebPreferencesKey::allowTopNavigationToDataURLsKey(void)::key = WebKit::WebPreferencesKey::allowTopNavigationToDataURLsKey(void)::$_0::operator() const(void)::impl;
  }

  result = WebKit::WebPreferencesStore::setBoolValueForKey((this + 5), &WebKit::WebPreferencesKey::allowTopNavigationToDataURLsKey(void)::key, *a2);
  if (result)
  {
    {
      atomic_fetch_add_explicit(WebKit::WebPreferencesKey::allowTopNavigationToDataURLsKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
      WebKit::WebPreferencesKey::allowTopNavigationToDataURLsKey(void)::key = WebKit::WebPreferencesKey::allowTopNavigationToDataURLsKey(void)::$_0::operator() const(void)::impl;
    }

    v5 = *a2;

    return WebKit::WebPreferences::updateBoolValueForKey(this, &WebKit::WebPreferencesKey::allowTopNavigationToDataURLsKey(void)::key, v5, 0);
  }

  return result;
}

void *WebKit::WebPreferences::setIncompleteImageBorderEnabled(atomic_uint **this, const BOOL *a2)
{
  {
    atomic_fetch_add_explicit(WebKit::WebPreferencesKey::incompleteImageBorderEnabledKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
    WebKit::WebPreferencesKey::incompleteImageBorderEnabledKey(void)::key = WebKit::WebPreferencesKey::incompleteImageBorderEnabledKey(void)::$_0::operator() const(void)::impl;
  }

  result = WebKit::WebPreferencesStore::setBoolValueForKey((this + 5), &WebKit::WebPreferencesKey::incompleteImageBorderEnabledKey(void)::key, *a2);
  if (result)
  {
    {
      atomic_fetch_add_explicit(WebKit::WebPreferencesKey::incompleteImageBorderEnabledKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
      WebKit::WebPreferencesKey::incompleteImageBorderEnabledKey(void)::key = WebKit::WebPreferencesKey::incompleteImageBorderEnabledKey(void)::$_0::operator() const(void)::impl;
    }

    v5 = *a2;

    return WebKit::WebPreferences::updateBoolValueForKey(this, &WebKit::WebPreferencesKey::incompleteImageBorderEnabledKey(void)::key, v5, 0);
  }

  return result;
}

void *WebKit::WebPreferences::setShouldDeferAsynchronousScriptsUntilAfterDocumentLoadOrFirstPaint(atomic_uint **this, const BOOL *a2)
{
  {
    atomic_fetch_add_explicit(WebKit::WebPreferencesKey::shouldDeferAsynchronousScriptsUntilAfterDocumentLoadOrFirstPaintKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
    WebKit::WebPreferencesKey::shouldDeferAsynchronousScriptsUntilAfterDocumentLoadOrFirstPaintKey(void)::key = WebKit::WebPreferencesKey::shouldDeferAsynchronousScriptsUntilAfterDocumentLoadOrFirstPaintKey(void)::$_0::operator() const(void)::impl;
  }

  result = WebKit::WebPreferencesStore::setBoolValueForKey((this + 5), &WebKit::WebPreferencesKey::shouldDeferAsynchronousScriptsUntilAfterDocumentLoadOrFirstPaintKey(void)::key, *a2);
  if (result)
  {
    {
      atomic_fetch_add_explicit(WebKit::WebPreferencesKey::shouldDeferAsynchronousScriptsUntilAfterDocumentLoadOrFirstPaintKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
      WebKit::WebPreferencesKey::shouldDeferAsynchronousScriptsUntilAfterDocumentLoadOrFirstPaintKey(void)::key = WebKit::WebPreferencesKey::shouldDeferAsynchronousScriptsUntilAfterDocumentLoadOrFirstPaintKey(void)::$_0::operator() const(void)::impl;
    }

    v5 = *a2;

    return WebKit::WebPreferences::updateBoolValueForKey(this, &WebKit::WebPreferencesKey::shouldDeferAsynchronousScriptsUntilAfterDocumentLoadOrFirstPaintKey(void)::key, v5, 0);
  }

  return result;
}

void *WebKit::WebPreferences::setShouldRestrictBaseURLSchemes(atomic_uint **this, const BOOL *a2)
{
  {
    atomic_fetch_add_explicit(WebKit::WebPreferencesKey::shouldRestrictBaseURLSchemesKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
    WebKit::WebPreferencesKey::shouldRestrictBaseURLSchemesKey(void)::key = WebKit::WebPreferencesKey::shouldRestrictBaseURLSchemesKey(void)::$_0::operator() const(void)::impl;
  }

  result = WebKit::WebPreferencesStore::setBoolValueForKey((this + 5), &WebKit::WebPreferencesKey::shouldRestrictBaseURLSchemesKey(void)::key, *a2);
  if (result)
  {
    {
      atomic_fetch_add_explicit(WebKit::WebPreferencesKey::shouldRestrictBaseURLSchemesKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
      WebKit::WebPreferencesKey::shouldRestrictBaseURLSchemesKey(void)::key = WebKit::WebPreferencesKey::shouldRestrictBaseURLSchemesKey(void)::$_0::operator() const(void)::impl;
    }

    v5 = *a2;

    return WebKit::WebPreferences::updateBoolValueForKey(this, &WebKit::WebPreferencesKey::shouldRestrictBaseURLSchemesKey(void)::key, v5, 0);
  }

  return result;
}

unsigned int *WTF::VectorDestructor<true,WTF::Ref<IPC::StreamServerConnection,WTF::RawPtrTraits<IPC::StreamServerConnection>,WTF::DefaultRefDerefTraits<IPC::StreamServerConnection>>>::destruct(unsigned int *result, unsigned int **a2)
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
        if (atomic_fetch_add(result + 2, 0xFFFFFFFF) == 1)
        {
          atomic_store(1u, result + 2);
          result = (*(*result + 8))(result);
        }
      }

      ++v3;
    }

    while (v3 != a2);
  }

  return result;
}

void *WebKit::WebPreferences::setAllowsInlineMediaPlayback(atomic_uint **this, const BOOL *a2)
{
  {
    atomic_fetch_add_explicit(WebKit::WebPreferencesKey::allowsInlineMediaPlaybackKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
    WebKit::WebPreferencesKey::allowsInlineMediaPlaybackKey(void)::key = WebKit::WebPreferencesKey::allowsInlineMediaPlaybackKey(void)::$_0::operator() const(void)::impl;
  }

  result = WebKit::WebPreferencesStore::setBoolValueForKey((this + 5), &WebKit::WebPreferencesKey::allowsInlineMediaPlaybackKey(void)::key, *a2);
  if (result)
  {
    {
      atomic_fetch_add_explicit(WebKit::WebPreferencesKey::allowsInlineMediaPlaybackKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
      WebKit::WebPreferencesKey::allowsInlineMediaPlaybackKey(void)::key = WebKit::WebPreferencesKey::allowsInlineMediaPlaybackKey(void)::$_0::operator() const(void)::impl;
    }

    v5 = *a2;

    return WebKit::WebPreferences::updateBoolValueForKey(this, &WebKit::WebPreferencesKey::allowsInlineMediaPlaybackKey(void)::key, v5, 0);
  }

  return result;
}

void *WebKit::WebPreferences::setAllowsInlineMediaPlaybackAfterFullscreen(atomic_uint **this, const BOOL *a2)
{
  {
    atomic_fetch_add_explicit(WebKit::WebPreferencesKey::allowsInlineMediaPlaybackAfterFullscreenKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
    WebKit::WebPreferencesKey::allowsInlineMediaPlaybackAfterFullscreenKey(void)::key = WebKit::WebPreferencesKey::allowsInlineMediaPlaybackAfterFullscreenKey(void)::$_0::operator() const(void)::impl;
  }

  result = WebKit::WebPreferencesStore::setBoolValueForKey((this + 5), &WebKit::WebPreferencesKey::allowsInlineMediaPlaybackAfterFullscreenKey(void)::key, *a2);
  if (result)
  {
    {
      atomic_fetch_add_explicit(WebKit::WebPreferencesKey::allowsInlineMediaPlaybackAfterFullscreenKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
      WebKit::WebPreferencesKey::allowsInlineMediaPlaybackAfterFullscreenKey(void)::key = WebKit::WebPreferencesKey::allowsInlineMediaPlaybackAfterFullscreenKey(void)::$_0::operator() const(void)::impl;
    }

    v5 = *a2;

    return WebKit::WebPreferences::updateBoolValueForKey(this, &WebKit::WebPreferencesKey::allowsInlineMediaPlaybackAfterFullscreenKey(void)::key, v5, 0);
  }

  return result;
}

void *WebKit::WebPreferences::setInlineMediaPlaybackRequiresPlaysInlineAttribute(atomic_uint **this, const BOOL *a2)
{
  {
    atomic_fetch_add_explicit(WebKit::WebPreferencesKey::inlineMediaPlaybackRequiresPlaysInlineAttributeKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
    WebKit::WebPreferencesKey::inlineMediaPlaybackRequiresPlaysInlineAttributeKey(void)::key = WebKit::WebPreferencesKey::inlineMediaPlaybackRequiresPlaysInlineAttributeKey(void)::$_0::operator() const(void)::impl;
  }

  result = WebKit::WebPreferencesStore::setBoolValueForKey((this + 5), &WebKit::WebPreferencesKey::inlineMediaPlaybackRequiresPlaysInlineAttributeKey(void)::key, *a2);
  if (result)
  {
    {
      atomic_fetch_add_explicit(WebKit::WebPreferencesKey::inlineMediaPlaybackRequiresPlaysInlineAttributeKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
      WebKit::WebPreferencesKey::inlineMediaPlaybackRequiresPlaysInlineAttributeKey(void)::key = WebKit::WebPreferencesKey::inlineMediaPlaybackRequiresPlaysInlineAttributeKey(void)::$_0::operator() const(void)::impl;
    }

    v5 = *a2;

    return WebKit::WebPreferences::updateBoolValueForKey(this, &WebKit::WebPreferencesKey::inlineMediaPlaybackRequiresPlaysInlineAttributeKey(void)::key, v5, 0);
  }

  return result;
}

void *WebKit::WebPreferences::setAllowsPictureInPictureMediaPlayback(atomic_uint **this, const BOOL *a2)
{
  {
    atomic_fetch_add_explicit(WebKit::WebPreferencesKey::allowsPictureInPictureMediaPlaybackKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
    WebKit::WebPreferencesKey::allowsPictureInPictureMediaPlaybackKey(void)::key = WebKit::WebPreferencesKey::allowsPictureInPictureMediaPlaybackKey(void)::$_0::operator() const(void)::impl;
  }

  result = WebKit::WebPreferencesStore::setBoolValueForKey((this + 5), &WebKit::WebPreferencesKey::allowsPictureInPictureMediaPlaybackKey(void)::key, *a2);
  if (result)
  {
    {
      atomic_fetch_add_explicit(WebKit::WebPreferencesKey::allowsPictureInPictureMediaPlaybackKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
      WebKit::WebPreferencesKey::allowsPictureInPictureMediaPlaybackKey(void)::key = WebKit::WebPreferencesKey::allowsPictureInPictureMediaPlaybackKey(void)::$_0::operator() const(void)::impl;
    }

    v5 = *a2;

    return WebKit::WebPreferences::updateBoolValueForKey(this, &WebKit::WebPreferencesKey::allowsPictureInPictureMediaPlaybackKey(void)::key, v5, 0);
  }

  return result;
}

uint64_t WebKit::WebPreferences::setUserInterfaceDirectionPolicy(atomic_uint **this, const unsigned int *a2)
{
  {
    atomic_fetch_add_explicit(WebKit::WebPreferencesKey::userInterfaceDirectionPolicyKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
    WebKit::WebPreferencesKey::userInterfaceDirectionPolicyKey(void)::key = WebKit::WebPreferencesKey::userInterfaceDirectionPolicyKey(void)::$_0::operator() const(void)::impl;
  }

  result = WebKit::WebPreferencesStore::setUInt32ValueForKey((this + 5), &WebKit::WebPreferencesKey::userInterfaceDirectionPolicyKey(void)::key, *a2);
  if (result)
  {
    {
      atomic_fetch_add_explicit(WebKit::WebPreferencesKey::userInterfaceDirectionPolicyKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
      WebKit::WebPreferencesKey::userInterfaceDirectionPolicyKey(void)::key = WebKit::WebPreferencesKey::userInterfaceDirectionPolicyKey(void)::$_0::operator() const(void)::impl;
    }

    WebKit::WebPreferences::platformUpdateUInt32ValueForKey(this, &WebKit::WebPreferencesKey::userInterfaceDirectionPolicyKey(void)::key, *a2);

    return WebKit::WebPreferences::update(this);
  }

  return result;
}

uint64_t WebKit::WebPreferences::setSystemLayoutDirection(atomic_uint **this, const unsigned int *a2)
{
  {
    atomic_fetch_add_explicit(WebKit::WebPreferencesKey::systemLayoutDirectionKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
    WebKit::WebPreferencesKey::systemLayoutDirectionKey(void)::key = WebKit::WebPreferencesKey::systemLayoutDirectionKey(void)::$_0::operator() const(void)::impl;
  }

  result = WebKit::WebPreferencesStore::setUInt32ValueForKey((this + 5), &WebKit::WebPreferencesKey::systemLayoutDirectionKey(void)::key, *a2);
  if (result)
  {
    {
      atomic_fetch_add_explicit(WebKit::WebPreferencesKey::systemLayoutDirectionKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
      WebKit::WebPreferencesKey::systemLayoutDirectionKey(void)::key = WebKit::WebPreferencesKey::systemLayoutDirectionKey(void)::$_0::operator() const(void)::impl;
    }

    WebKit::WebPreferences::platformUpdateUInt32ValueForKey(this, &WebKit::WebPreferencesKey::systemLayoutDirectionKey(void)::key, *a2);

    return WebKit::WebPreferences::update(this);
  }

  return result;
}

void *WebKit::WebPreferences::setShouldDecidePolicyBeforeLoadingQuickLookPreview(atomic_uint **this, const BOOL *a2)
{
  {
    atomic_fetch_add_explicit(WebKit::WebPreferencesKey::shouldDecidePolicyBeforeLoadingQuickLookPreviewKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
    WebKit::WebPreferencesKey::shouldDecidePolicyBeforeLoadingQuickLookPreviewKey(void)::key = WebKit::WebPreferencesKey::shouldDecidePolicyBeforeLoadingQuickLookPreviewKey(void)::$_0::operator() const(void)::impl;
  }

  result = WebKit::WebPreferencesStore::setBoolValueForKey((this + 5), &WebKit::WebPreferencesKey::shouldDecidePolicyBeforeLoadingQuickLookPreviewKey(void)::key, *a2);
  if (result)
  {
    {
      atomic_fetch_add_explicit(WebKit::WebPreferencesKey::shouldDecidePolicyBeforeLoadingQuickLookPreviewKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
      WebKit::WebPreferencesKey::shouldDecidePolicyBeforeLoadingQuickLookPreviewKey(void)::key = WebKit::WebPreferencesKey::shouldDecidePolicyBeforeLoadingQuickLookPreviewKey(void)::$_0::operator() const(void)::impl;
    }

    v5 = *a2;

    return WebKit::WebPreferences::updateBoolValueForKey(this, &WebKit::WebPreferencesKey::shouldDecidePolicyBeforeLoadingQuickLookPreviewKey(void)::key, v5, 0);
  }

  return result;
}

void *WebKit::WebPreferences::setSystemPreviewEnabled(atomic_uint **this, const BOOL *a2)
{
  {
    atomic_fetch_add_explicit(WebKit::WebPreferencesKey::systemPreviewEnabledKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
    WebKit::WebPreferencesKey::systemPreviewEnabledKey(void)::key = WebKit::WebPreferencesKey::systemPreviewEnabledKey(void)::$_0::operator() const(void)::impl;
  }

  result = WebKit::WebPreferencesStore::setBoolValueForKey((this + 5), &WebKit::WebPreferencesKey::systemPreviewEnabledKey(void)::key, *a2);
  if (result)
  {
    {
      atomic_fetch_add_explicit(WebKit::WebPreferencesKey::systemPreviewEnabledKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
      WebKit::WebPreferencesKey::systemPreviewEnabledKey(void)::key = WebKit::WebPreferencesKey::systemPreviewEnabledKey(void)::$_0::operator() const(void)::impl;
    }

    v5 = *a2;

    return WebKit::WebPreferences::updateBoolValueForKey(this, &WebKit::WebPreferencesKey::systemPreviewEnabledKey(void)::key, v5, 0);
  }

  return result;
}

void *WebKit::WebPreferences::setScrollToTextFragmentIndicatorEnabled(atomic_uint **this, const BOOL *a2)
{
  {
    atomic_fetch_add_explicit(WebKit::WebPreferencesKey::scrollToTextFragmentIndicatorEnabledKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
    WebKit::WebPreferencesKey::scrollToTextFragmentIndicatorEnabledKey(void)::key = WebKit::WebPreferencesKey::scrollToTextFragmentIndicatorEnabledKey(void)::$_0::operator() const(void)::impl;
  }

  result = WebKit::WebPreferencesStore::setBoolValueForKey((this + 5), &WebKit::WebPreferencesKey::scrollToTextFragmentIndicatorEnabledKey(void)::key, *a2);
  if (result)
  {
    {
      atomic_fetch_add_explicit(WebKit::WebPreferencesKey::scrollToTextFragmentIndicatorEnabledKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
      WebKit::WebPreferencesKey::scrollToTextFragmentIndicatorEnabledKey(void)::key = WebKit::WebPreferencesKey::scrollToTextFragmentIndicatorEnabledKey(void)::$_0::operator() const(void)::impl;
    }

    v5 = *a2;

    return WebKit::WebPreferences::updateBoolValueForKey(this, &WebKit::WebPreferencesKey::scrollToTextFragmentIndicatorEnabledKey(void)::key, v5, 0);
  }

  return result;
}

void *WebKit::WebPreferences::setScrollToTextFragmentMarkingEnabled(atomic_uint **this, const BOOL *a2)
{
  {
    atomic_fetch_add_explicit(WebKit::WebPreferencesKey::scrollToTextFragmentMarkingEnabledKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
    WebKit::WebPreferencesKey::scrollToTextFragmentMarkingEnabledKey(void)::key = WebKit::WebPreferencesKey::scrollToTextFragmentMarkingEnabledKey(void)::$_0::operator() const(void)::impl;
  }

  result = WebKit::WebPreferencesStore::setBoolValueForKey((this + 5), &WebKit::WebPreferencesKey::scrollToTextFragmentMarkingEnabledKey(void)::key, *a2);
  if (result)
  {
    {
      atomic_fetch_add_explicit(WebKit::WebPreferencesKey::scrollToTextFragmentMarkingEnabledKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
      WebKit::WebPreferencesKey::scrollToTextFragmentMarkingEnabledKey(void)::key = WebKit::WebPreferencesKey::scrollToTextFragmentMarkingEnabledKey(void)::$_0::operator() const(void)::impl;
    }

    v5 = *a2;

    return WebKit::WebPreferences::updateBoolValueForKey(this, &WebKit::WebPreferencesKey::scrollToTextFragmentMarkingEnabledKey(void)::key, v5, 0);
  }

  return result;
}

void *WebKit::WebPreferences::setRequiresUserGestureForVideoPlayback(atomic_uint **this, const BOOL *a2)
{
  {
    atomic_fetch_add_explicit(WebKit::WebPreferencesKey::requiresUserGestureForVideoPlaybackKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
    WebKit::WebPreferencesKey::requiresUserGestureForVideoPlaybackKey(void)::key = WebKit::WebPreferencesKey::requiresUserGestureForVideoPlaybackKey(void)::$_0::operator() const(void)::impl;
  }

  result = WebKit::WebPreferencesStore::setBoolValueForKey((this + 5), &WebKit::WebPreferencesKey::requiresUserGestureForVideoPlaybackKey(void)::key, *a2);
  if (result)
  {
    {
      atomic_fetch_add_explicit(WebKit::WebPreferencesKey::requiresUserGestureForVideoPlaybackKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
      WebKit::WebPreferencesKey::requiresUserGestureForVideoPlaybackKey(void)::key = WebKit::WebPreferencesKey::requiresUserGestureForVideoPlaybackKey(void)::$_0::operator() const(void)::impl;
    }

    v5 = *a2;

    return WebKit::WebPreferences::updateBoolValueForKey(this, &WebKit::WebPreferencesKey::requiresUserGestureForVideoPlaybackKey(void)::key, v5, 0);
  }

  return result;
}

void *WebKit::WebPreferences::setRequiresUserGestureForAudioPlayback(atomic_uint **this, const BOOL *a2)
{
  {
    atomic_fetch_add_explicit(WebKit::WebPreferencesKey::requiresUserGestureForAudioPlaybackKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
    WebKit::WebPreferencesKey::requiresUserGestureForAudioPlaybackKey(void)::key = WebKit::WebPreferencesKey::requiresUserGestureForAudioPlaybackKey(void)::$_0::operator() const(void)::impl;
  }

  result = WebKit::WebPreferencesStore::setBoolValueForKey((this + 5), &WebKit::WebPreferencesKey::requiresUserGestureForAudioPlaybackKey(void)::key, *a2);
  if (result)
  {
    {
      atomic_fetch_add_explicit(WebKit::WebPreferencesKey::requiresUserGestureForAudioPlaybackKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
      WebKit::WebPreferencesKey::requiresUserGestureForAudioPlaybackKey(void)::key = WebKit::WebPreferencesKey::requiresUserGestureForAudioPlaybackKey(void)::$_0::operator() const(void)::impl;
    }

    v5 = *a2;

    return WebKit::WebPreferences::updateBoolValueForKey(this, &WebKit::WebPreferencesKey::requiresUserGestureForAudioPlaybackKey(void)::key, v5, 0);
  }

  return result;
}

void *WebKit::WebPreferences::setRequiresUserGestureToLoadVideo(atomic_uint **this, const BOOL *a2)
{
  {
    atomic_fetch_add_explicit(WebKit::WebPreferencesKey::requiresUserGestureToLoadVideoKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
    WebKit::WebPreferencesKey::requiresUserGestureToLoadVideoKey(void)::key = WebKit::WebPreferencesKey::requiresUserGestureToLoadVideoKey(void)::$_0::operator() const(void)::impl;
  }

  result = WebKit::WebPreferencesStore::setBoolValueForKey((this + 5), &WebKit::WebPreferencesKey::requiresUserGestureToLoadVideoKey(void)::key, *a2);
  if (result)
  {
    {
      atomic_fetch_add_explicit(WebKit::WebPreferencesKey::requiresUserGestureToLoadVideoKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
      WebKit::WebPreferencesKey::requiresUserGestureToLoadVideoKey(void)::key = WebKit::WebPreferencesKey::requiresUserGestureToLoadVideoKey(void)::$_0::operator() const(void)::impl;
    }

    v5 = *a2;

    return WebKit::WebPreferences::updateBoolValueForKey(this, &WebKit::WebPreferencesKey::requiresUserGestureToLoadVideoKey(void)::key, v5, 0);
  }

  return result;
}

void *WebKit::WebPreferences::setMainContentUserGestureOverrideEnabled(atomic_uint **this, const BOOL *a2)
{
  {
    atomic_fetch_add_explicit(WebKit::WebPreferencesKey::mainContentUserGestureOverrideEnabledKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
    WebKit::WebPreferencesKey::mainContentUserGestureOverrideEnabledKey(void)::key = WebKit::WebPreferencesKey::mainContentUserGestureOverrideEnabledKey(void)::$_0::operator() const(void)::impl;
  }

  result = WebKit::WebPreferencesStore::setBoolValueForKey((this + 5), &WebKit::WebPreferencesKey::mainContentUserGestureOverrideEnabledKey(void)::key, *a2);
  if (result)
  {
    {
      atomic_fetch_add_explicit(WebKit::WebPreferencesKey::mainContentUserGestureOverrideEnabledKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
      WebKit::WebPreferencesKey::mainContentUserGestureOverrideEnabledKey(void)::key = WebKit::WebPreferencesKey::mainContentUserGestureOverrideEnabledKey(void)::$_0::operator() const(void)::impl;
    }

    v5 = *a2;

    return WebKit::WebPreferences::updateBoolValueForKey(this, &WebKit::WebPreferencesKey::mainContentUserGestureOverrideEnabledKey(void)::key, v5, 0);
  }

  return result;
}

void *WebKit::WebPreferences::setInvisibleAutoplayNotPermitted(atomic_uint **this, const BOOL *a2)
{
  {
    atomic_fetch_add_explicit(WebKit::WebPreferencesKey::invisibleAutoplayNotPermittedKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
    WebKit::WebPreferencesKey::invisibleAutoplayNotPermittedKey(void)::key = WebKit::WebPreferencesKey::invisibleAutoplayNotPermittedKey(void)::$_0::operator() const(void)::impl;
  }

  result = WebKit::WebPreferencesStore::setBoolValueForKey((this + 5), &WebKit::WebPreferencesKey::invisibleAutoplayNotPermittedKey(void)::key, *a2);
  if (result)
  {
    {
      atomic_fetch_add_explicit(WebKit::WebPreferencesKey::invisibleAutoplayNotPermittedKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
      WebKit::WebPreferencesKey::invisibleAutoplayNotPermittedKey(void)::key = WebKit::WebPreferencesKey::invisibleAutoplayNotPermittedKey(void)::$_0::operator() const(void)::impl;
    }

    v5 = *a2;

    return WebKit::WebPreferences::updateBoolValueForKey(this, &WebKit::WebPreferencesKey::invisibleAutoplayNotPermittedKey(void)::key, v5, 0);
  }

  return result;
}

void *WebKit::WebPreferences::setMediaDataLoadsAutomatically(atomic_uint **this, const BOOL *a2)
{
  {
    atomic_fetch_add_explicit(WebKit::WebPreferencesKey::mediaDataLoadsAutomaticallyKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
    WebKit::WebPreferencesKey::mediaDataLoadsAutomaticallyKey(void)::key = WebKit::WebPreferencesKey::mediaDataLoadsAutomaticallyKey(void)::$_0::operator() const(void)::impl;
  }

  result = WebKit::WebPreferencesStore::setBoolValueForKey((this + 5), &WebKit::WebPreferencesKey::mediaDataLoadsAutomaticallyKey(void)::key, *a2);
  if (result)
  {
    {
      atomic_fetch_add_explicit(WebKit::WebPreferencesKey::mediaDataLoadsAutomaticallyKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
      WebKit::WebPreferencesKey::mediaDataLoadsAutomaticallyKey(void)::key = WebKit::WebPreferencesKey::mediaDataLoadsAutomaticallyKey(void)::$_0::operator() const(void)::impl;
    }

    v5 = *a2;

    return WebKit::WebPreferences::updateBoolValueForKey(this, &WebKit::WebPreferencesKey::mediaDataLoadsAutomaticallyKey(void)::key, v5, 0);
  }

  return result;
}

void *WebKit::WebPreferences::setAttachmentElementEnabled(atomic_uint **this, const BOOL *a2)
{
  {
    atomic_fetch_add_explicit(WebKit::WebPreferencesKey::attachmentElementEnabledKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
    WebKit::WebPreferencesKey::attachmentElementEnabledKey(void)::key = WebKit::WebPreferencesKey::attachmentElementEnabledKey(void)::$_0::operator() const(void)::impl;
  }

  result = WebKit::WebPreferencesStore::setBoolValueForKey((this + 5), &WebKit::WebPreferencesKey::attachmentElementEnabledKey(void)::key, *a2);
  if (result)
  {
    {
      atomic_fetch_add_explicit(WebKit::WebPreferencesKey::attachmentElementEnabledKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
      WebKit::WebPreferencesKey::attachmentElementEnabledKey(void)::key = WebKit::WebPreferencesKey::attachmentElementEnabledKey(void)::$_0::operator() const(void)::impl;
    }

    v5 = *a2;

    return WebKit::WebPreferences::updateBoolValueForKey(this, &WebKit::WebPreferencesKey::attachmentElementEnabledKey(void)::key, v5, 0);
  }

  return result;
}

void *WebKit::WebPreferences::setAttachmentWideLayoutEnabled(atomic_uint **this, const BOOL *a2)
{
  {
    atomic_fetch_add_explicit(WebKit::WebPreferencesKey::attachmentWideLayoutEnabledKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
    WebKit::WebPreferencesKey::attachmentWideLayoutEnabledKey(void)::key = WebKit::WebPreferencesKey::attachmentWideLayoutEnabledKey(void)::$_0::operator() const(void)::impl;
  }

  result = WebKit::WebPreferencesStore::setBoolValueForKey((this + 5), &WebKit::WebPreferencesKey::attachmentWideLayoutEnabledKey(void)::key, *a2);
  if (result)
  {
    {
      atomic_fetch_add_explicit(WebKit::WebPreferencesKey::attachmentWideLayoutEnabledKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
      WebKit::WebPreferencesKey::attachmentWideLayoutEnabledKey(void)::key = WebKit::WebPreferencesKey::attachmentWideLayoutEnabledKey(void)::$_0::operator() const(void)::impl;
    }

    v5 = *a2;

    return WebKit::WebPreferences::updateBoolValueForKey(this, &WebKit::WebPreferencesKey::attachmentWideLayoutEnabledKey(void)::key, v5, 0);
  }

  return result;
}