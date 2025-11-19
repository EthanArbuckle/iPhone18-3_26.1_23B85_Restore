void WebKit::LogStream::lOCALFRAMEVIEW_NOT_PAINTING_LAYOUT_NEEDED(WebKit::LogStream *this, uint64_t a2, uint64_t a3, int a4)
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
    _os_log_impl(&dword_19D52D000, v8, OS_LOG_TYPE_DEFAULT, "WebContent[%d]:     [pageID=%llu, frameID=%llu, isMainFrame=%d] LocalFrameView::paintContents: Not painting because render tree needs layout", v10, 0x22u);
  }

  if (v8)
  {
    os_release(v8);
  }
}

void WebKit::LogStream::sERVICEWORKERTHREADPROXY_REMOVEFETCH(WebKit::LogStream *this, uint64_t a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v4 = os_log_create("com.apple.WebKit", "ServiceWorker");
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(this + 8);
    v6[0] = 67109376;
    v6[1] = v5;
    v7 = 2048;
    v8 = a2;
    _os_log_impl(&dword_19D52D000, v4, OS_LOG_TYPE_DEFAULT, "WebContent[%d]: ServiceWorkerThreadProxy::removeFetch %llu", v6, 0x12u);
  }

  if (v4)
  {
    os_release(v4);
  }
}

void WebKit::LogStream::fONTCACHECORETEXT_REGISTER_FONT(uint64_t a1, void *a2, void *a3)
{
  v15 = *MEMORY[0x1E69E9840];
  v6 = os_log_create("com.apple.WebKit", "Fonts");
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

    if (*a3)
    {
      v9 = *a3 + 16;
    }

    else
    {
      v9 = 0;
    }

    v10[0] = 67109635;
    v10[1] = v7;
    v11 = 2081;
    v12 = v8;
    v13 = 2081;
    v14 = v9;
    _os_log_impl(&dword_19D52D000, v6, OS_LOG_TYPE_DEFAULT, "WebContent[%d]: Registering font %{private}s with fontURL %{private}s", v10, 0x1Cu);
  }

  if (v6)
  {
    os_release(v6);
  }
}

void WebKit::LogStream::fONTCACHECORETEXT_REGISTER_ERROR(uint64_t a1, void *a2, void *a3)
{
  v15 = *MEMORY[0x1E69E9840];
  v6 = os_log_create("com.apple.WebKit", "Fonts");
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

    if (*a3)
    {
      v9 = *a3 + 16;
    }

    else
    {
      v9 = 0;
    }

    v10[0] = 67109635;
    v10[1] = v7;
    v11 = 2081;
    v12 = v8;
    v13 = 2082;
    v14 = v9;
    _os_log_impl(&dword_19D52D000, v6, OS_LOG_TYPE_DEFAULT, "WebContent[%d]: Could not register font %{private}s, error %{public}s", v10, 0x1Cu);
  }

  if (v6)
  {
    os_release(v6);
  }
}

void WebKit::LogStream::wEBCORE_TEST_LOG(WebKit::LogStream *this, int a2)
{
  v9 = *MEMORY[0x1E69E9840];
  atomic_fetch_add(WebKit::globalLogCountForTesting, 1u);
  v4 = os_log_create("com.apple.WebKit", "Testing");
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(this + 8);
    v6[0] = 67109376;
    v6[1] = v5;
    v7 = 1024;
    v8 = a2;
    _os_log_impl(&dword_19D52D000, v4, OS_LOG_TYPE_DEFAULT, "WebContent[%d]: WebCore log message for testing (%u)", v6, 0xEu);
  }

  if (v4)
  {
    os_release(v4);
  }
}

WebPushD::MockPushServiceConnection *WebPushD::MockPushServiceConnection::MockPushServiceConnection(WebPushD::MockPushServiceConnection *this)
{
  *(this + 4) = 1;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  *(this + 56) = 0u;
  *(this + 72) = 0u;
  *this = &unk_1F10EA458;
  *(this + 1) = 0;
  *(this + 88) = 0u;
  *(this + 104) = 0u;
  *(this + 120) = 0u;
  *(this + 136) = 0u;
  qmemcpy(v5, "abc", sizeof(v5));
  WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::Vector(&v6, v5, 3);
  WebPushD::PushServiceConnection::didReceivePublicToken(this, &v6);
  v3 = v6;
  if (v6)
  {
    v6 = 0;
    v7 = 0;
    WTF::fastFree(v3, v2);
  }

  return this;
}

void sub_19D8BCB1C(_Unwind_Exception *a1, void *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, WTF *a11, int a12)
{
  if (a11)
  {
    WTF::fastFree(a11, a2);
  }

  WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v12 + 136, a2);
  WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v12 + 120, v15);
  WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v12 + 104, v16);
  WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v13, v17);
  WebPushD::PushServiceConnection::~PushServiceConnection(v12);
  _Unwind_Resume(a1);
}

void WebPushD::MockPushServiceConnection::~MockPushServiceConnection(WebPushD::MockPushServiceConnection *this, void *a2)
{
  WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(this + 136, a2);
  WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(this + 120, v3);
  WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(this + 104, v4);
  WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(this + 88, v5);

  WebPushD::PushServiceConnection::~PushServiceConnection(this);
}

{
  WebPushD::MockPushServiceConnection::~MockPushServiceConnection(this, a2);

  bmalloc::api::tzoneFree(v2, v3);
}

double WebPushD::MockPushServiceConnection::generateClientKeys@<D0>(double *a1@<X8>)
{
  WTF::base64Decode();
  if ((v10 & 1) == 0)
  {
    v7 = std::__throw_bad_optional_access[abi:sn200100]();
    if (v3)
    {
      WTF::fastFree(v3, v6);
    }

    if (v2)
    {
      WTF::fastFree(v2, v6);
    }

    _Unwind_Resume(v7);
  }

  WTF::base64Decode();
  WTF::base64Decode();
  result = v9;
  *a1 = v8;
  a1[1] = v9;
  *(a1 + 2) = v8;
  a1[3] = v9;
  *(a1 + 4) = v8;
  a1[5] = v9;
  return result;
}

uint64_t WebPushD::MockPushServiceConnection::subscribe(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  WTF::base64Decode();
  if ((__n_4 & 1) == 0)
  {
    v10 = std::__throw_bad_optional_access[abi:sn200100]();
    if (v4)
    {
      WTF::fastFree(v4, v9);
    }

    _Unwind_Resume(v10);
  }

  if (*(a3 + 12) == __n && !memcmp(*a3, __s2, __n))
  {
    [MEMORY[0x1E696ABC0] errorWithDomain:@"WebPush" code:-1 userInfo:0];
    result = WTF::CompletionHandler<void ()(NSString *,NSError *)>::operator()(a4);
  }

  else
  {
    result = WTF::CompletionHandler<void ()(NSString *,NSError *)>::operator()(a4);
  }

  if (__s2)
  {
    return WTF::fastFree(__s2, v8);
  }

  return result;
}

unsigned int *WebPushD::MockPushServiceConnection::setTopicLists(unsigned int *a1, uint64_t a2)
{
  WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::operator=(a1 + 22, a2);
  WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::operator=(a1 + 26, a2 + 16);
  WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::operator=(a1 + 30, a2 + 32);

  return WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::operator=(a1 + 34, a2 + 48);
}

void WebKit::NearFieldLibrary(WebKit *this)
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = ___ZN6WebKit16NearFieldLibraryEb_block_invoke;
  block[3] = &__block_descriptor_33_e5_v8__0l;
  v2 = 0;
  if (WebKit::NearFieldLibrary(BOOL)::once != -1)
  {
    dispatch_once(&WebKit::NearFieldLibrary(BOOL)::once, block);
  }
}

uint64_t ___ZN6WebKit16NearFieldLibraryEb_block_invoke(uint64_t a1)
{
  result = dlopen("/System/Library/PrivateFrameworks/NearField.framework/NearField", 2);
  WebKit::NearFieldLibrary(BOOL)::frameworkLibrary = result;
  if ((*(a1 + 32) & 1) == 0 && !result)
  {
    result = 32;
    __break(0xC471u);
  }

  return result;
}

uint64_t WebKit::initNFReaderSession(WebKit *this)
{
  if (_MergedGlobals_53 != -1)
  {
    dispatch_once(&_MergedGlobals_53, &__block_literal_global_6_1);
  }

  return qword_1ED641B78;
}

uint64_t WebKit::initNFHardwareManager(WebKit *this)
{
  if (qword_1ED641B80 != -1)
  {
    dispatch_once(&qword_1ED641B80, &__block_literal_global_8_1);
  }

  return qword_1ED641B88;
}

uint64_t ___ZN6WebKitL19initNFReaderSessionEv_block_invoke(WebKit *a1)
{
  WebKit::NearFieldLibrary(a1);
  result = objc_getClass("NFReaderSession");
  qword_1ED641B78 = result;
  if (result)
  {
    WebKit::getNFReaderSessionClass[0] = WebKit::NFReaderSessionFunction;
  }

  else
  {
    result = 36;
    __break(0xC471u);
  }

  return result;
}

uint64_t ___ZN6WebKitL21initNFHardwareManagerEv_block_invoke(WebKit *a1)
{
  WebKit::NearFieldLibrary(a1);
  result = objc_getClass("NFHardwareManager");
  qword_1ED641B88 = result;
  if (result)
  {
    WebKit::getNFHardwareManagerClass = WebKit::NFHardwareManagerFunction;
  }

  else
  {
    result = 41;
    __break(0xC471u);
  }

  return result;
}

uint64_t WebKit::setNWParametersApplicationIdentifiers(uint64_t result, _BYTE *a2, uint64_t a3, uint64_t a4)
{
  v5 = result;
  if (a2 && *a2)
  {
    result = nw_parameters_set_source_application_by_bundle_id();
  }

  else if (*(a3 + 32) == 1)
  {
    *v9 = *a3;
    result = nw_parameters_set_source_application();
  }

  if (*a4)
  {
    if (*(*a4 + 4))
    {
      result = nw_parameters_set_attributed_bundle_identifierPtr();
      if (result)
      {
        v6 = nw_parameters_set_attributed_bundle_identifierPtr();
        WTF::String::utf8();
        if (v9[0])
        {
          v7 = v9[0] + 16;
        }

        else
        {
          v7 = 0;
        }

        v6(v5, v7);
        result = v9[0];
        if (v9[0])
        {
          if (*v9[0] == 1)
          {
            return WTF::fastFree(v9[0], v8);
          }

          else
          {
            --*v9[0];
          }
        }
      }
    }
  }

  return result;
}

void sub_19D8BD1CC(_Unwind_Exception *exception_object, void *a2, int a3, int a4, int a5, int a6, int a7, int a8, WTF *a9)
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

void *nw_parameters_set_attributed_bundle_identifierPtr(void)
{
  if (_MergedGlobals_54 == 1)
  {
    return qword_1ED641B98;
  }

  if (byte_1ED641B91 == 1)
  {
    v1 = qword_1ED641BA0;
  }

  else
  {
    v1 = dlopen("/usr/lib/libnetwork.dylib", 2);
    qword_1ED641BA0 = v1;
    byte_1ED641B91 = 1;
  }

  result = dlsym(v1, "nw_parameters_set_attributed_bundle_identifier");
  qword_1ED641B98 = result;
  _MergedGlobals_54 = 1;
  return result;
}

uint64_t WebKit::setNWParametersTrackerOptions(uint64_t a1, int a2, uint64_t a3, uint64_t a4)
{
  if (a2)
  {
    nw_parameters_set_account_id();
  }

  nw_parameters_set_is_third_party_web_content();

  return MEMORY[0x1EEDD3BD0](a1, a4);
}

BOOL WebKit::isKnownTracker(atomic_uint **this, const WebCore::RegistrableDomain *a2)
{
  v12[1] = *MEMORY[0x1E69E9840];
  v2 = *this;
  if (*this)
  {
    atomic_fetch_add_explicit(v2, 2u, memory_order_relaxed);
    MEMORY[0x19EB00B70](&v11, v2, a2);
    if (atomic_fetch_add_explicit(v2, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v2, v3);
    }
  }

  else
  {
    v11 = &stru_1F1147748;
    v4 = &stru_1F1147748;
  }

  v12[0] = v11;
  v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v12 count:1];
  v6 = v5;
  if (v5)
  {
    v7 = v5;
  }

  v8 = v11;
  v11 = 0;
  if (v8)
  {
  }

  v11 = 0;
  v9 = (softLinkNEHelperTrackerGetDisposition[0])(0, v6, 0, &v11);
  if (v6)
  {
  }

  return v9 != 0;
}

void sub_19D8BD3FC(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (atomic_fetch_add_explicit(v10, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v10, a2);
  }

  _Unwind_Resume(exception_object);
}

uint64_t initNEHelperTrackerGetDisposition(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (byte_1ED641B92 == 1)
  {
    v8 = qword_1ED641BA8;
  }

  else
  {
    v8 = dlopen("/usr/lib/libnetworkextension.dylib", 2);
    if (!v8)
    {
      goto LABEL_9;
    }

    qword_1ED641BA8 = v8;
    byte_1ED641B92 = 1;
  }

  v9 = dlsym(v8, "NEHelperTrackerGetDisposition");
  softLinkNEHelperTrackerGetDisposition[0] = v9;
  if (!v9)
  {
LABEL_9:
    __break(0xC471u);
    JUMPOUT(0x19D8BD518);
  }

  return (v9)(a1, a2, a3, a4);
}

void sub_19D8BD870(_Unwind_Exception *a1)
{
  if (v2)
  {
  }

  if (v1)
  {
  }

  _Unwind_Resume(a1);
}

void sub_19D8BDA6C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, void *a15)
{
  if (a15)
  {
  }

  if (a14)
  {
  }

  if (v17)
  {
  }

  if (v16)
  {
  }

  if (v15)
  {
  }

  _Unwind_Resume(exception_object);
}

void *__copy_helper_block_e8_32c89_ZTSKZ76__WKUserDefaults__notifyObserversOfChangeFromValuesForKeys_toValuesForKeys__E3__1(void *result, void *a2)
{
  v3 = result;
  v4 = a2[5];
  result[4] = a2[4];
  result[5] = v4;
  if (v4)
  {
    result = v4;
  }

  v5 = a2[6];
  v3[6] = v5;
  if (v5)
  {
    result = v5;
  }

  v6 = a2[7];
  v3[7] = v6;
  if (v6)
  {
    return v6;
  }

  return result;
}

void sub_19D8BDB34(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 48);
  *(v1 + 48) = 0;
  if (v3)
  {
  }

  v4 = *(v1 + 40);
  *(v1 + 40) = 0;
  if (v4)
  {
  }

  _Unwind_Resume(exception_object);
}

void __destroy_helper_block_e8_32c89_ZTSKZ76__WKUserDefaults__notifyObserversOfChangeFromValuesForKeys_toValuesForKeys__E3__1(void *a1)
{
  v2 = a1[7];
  a1[7] = 0;
  if (v2)
  {
  }

  v3 = a1[6];
  a1[6] = 0;
  if (v3)
  {
  }

  v4 = a1[5];
  a1[5] = 0;
  if (v4)
  {
  }
}

void sub_19D8BDD84(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (v11)
  {
  }

  if (v10)
  {
  }

  _Unwind_Resume(exception_object);
}

void sub_19D8BE1A8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, WTF::StringImpl *a10, WTF::StringImpl *a11, WTF::StringImpl *a12, char a13, int a14, __int16 a15, char a16, char a17)
{
  v18 = v17;
  WTF::ThreadSafeRefCounted<WebKit::AuxiliaryProcessProxy,(WTF::DestructionThread)2>::deref(v18);
  if (a10 && atomic_fetch_add_explicit(a10, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(a10, v20);
  }

  if (a11 && atomic_fetch_add_explicit(a11, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(a11, v20);
  }

  if (a13 == 1 && a12 && atomic_fetch_add_explicit(a12, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(a12, v20);
  }

  _Unwind_Resume(a1);
}

uint64_t WTF::Vector<WTF::Ref<WebKit::WebProcessPool,WTF::RawPtrTraits<WebKit::WebProcessPool>,WTF::DefaultRefDerefTraits<WebKit::WebProcessPool>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(uint64_t a1, void *a2)
{
  v3 = *(a1 + 12);
  if (v3)
  {
    v6 = *a1;
    v7 = 8 * v3;
    do
    {
      v8 = *v6;
      *v6 = 0;
      if (v8)
      {
        API::Object::deref(v8);
      }

      ++v6;
      v7 -= 8;
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

void WebPushD::PushClientConnection::create(void *a1@<X0>, IPC::Decoder *a2@<X1>, uint64_t *a3@<X8>)
{
  v74 = *MEMORY[0x1E69E9840];
  if (*(a2 + 25) == 899)
  {
    IPC::Decoder::decode<WebKit::WebPushD::WebPushDaemonConnectionConfiguration>(a2, v66);
    if ((v72 & 1) == 0)
    {
      v9 = qword_1ED6410A8;
      if (os_log_type_enabled(qword_1ED6410A8, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        v10 = "PushClientConnection::create failed: could not decode InitializeConnection arguments";
        v11 = v9;
        v12 = 2;
LABEL_13:
        _os_log_error_impl(&dword_19D52D000, v11, OS_LOG_TYPE_ERROR, v10, buf, v12);
      }

LABEL_18:
      *a3 = 0;
LABEL_19:
      if (v72 == 1)
      {
        v20 = v69;
        v69 = 0;
        if (v20 && atomic_fetch_add_explicit(v20, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v20, v7);
        }

        v21 = v68;
        v68 = 0;
        if (v21 && atomic_fetch_add_explicit(v21, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v21, v7);
        }

        v22 = *v66;
        if (*v66)
        {
          *v66 = 0;
          v67 = 0;
          WTF::fastFree(v22, v7);
        }
      }

      return;
    }

    xpc_connection_get_audit_token();
    *buf = v61;
    *&buf[16] = v62;
    if (WTF::hasEntitlement())
    {
      v6 = WebPushD::PushClientConnection::operator new(0x60, v5);
      WebPushD::PushClientConnection::PushClientConnection(v6, a1, &v68, 1, &v69, v70, v71);
      *a3 = v6;
      goto LABEL_19;
    }

    pid = xpc_connection_get_pid(a1);
    v60 = 0;
    v14 = [MEMORY[0x1E69C75D0] handleForIdentifier:objc_msgSend(MEMORY[0x1E69C75E0] error:{"identifierWithPid:", pid), &v60}];
    v15 = v60;
    if (v60)
    {
      v16 = qword_1ED6410A8;
      if (os_log_type_enabled(qword_1ED6410A8, OS_LOG_TYPE_ERROR))
      {
        *buf = 67109378;
        *&buf[4] = pid;
        *&buf[8] = 2114;
        *&buf[10] = v15;
        v10 = "PushClientConnection::create failed: couldn't look up remote pid %d: %{public}@";
        v11 = v16;
        v12 = 18;
        goto LABEL_13;
      }

      goto LABEL_18;
    }

    v17 = v14;
    if (![v14 hostProcess])
    {
      v19 = qword_1ED6410A8;
      if (!os_log_type_enabled(qword_1ED6410A8, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_18;
      }

      *buf = 67109120;
      *&buf[4] = pid;
      v10 = "PushClientConnection::create failed: remote pid %d has no host process";
      v11 = v19;
      v12 = 8;
      goto LABEL_13;
    }

    v58 = 0u;
    v59 = 0u;
    v18 = [v17 hostProcess];
    if (v18)
    {
      [v18 auditToken];
    }

    else
    {
      v58 = 0u;
      v59 = 0u;
    }

    *buf = v58;
    *&buf[16] = v59;
    hasEntitlement = WTF::hasEntitlement();
    *buf = v58;
    *&buf[16] = v59;
    WebKit::codeSigningIdentifier(buf, &v57);
    *buf = v58;
    *&buf[16] = v59;
    v25 = WTF::hasEntitlement();
    v26 = v69;
    v69 = 0;
    v56 = v26;
    if (v26)
    {
      atomic_fetch_add_explicit(v26, 2u, memory_order_relaxed);
      v27 = *(v26 + 1);
      if (v27)
      {
        if (v27 == 32)
        {
          v28 = *(v26 + 1);
          if ((*(v26 + 16) & 4) != 0)
          {
            v35 = 0;
            do
            {
              v36 = *(v28 + v35);
              v37 = v36 - 48;
              v38 = v36 - 65;
              v34 = v37 < 0xA || v38 < 0x1A;
              v40 = !v34 || v35++ == 31;
            }

            while (!v40);
          }

          else
          {
            v29 = 0;
            do
            {
              v30 = *(v28 + v29);
              v31 = v30 - 48;
              v32 = v30 - 65;
              v34 = v31 < 0xA || v32 < 0x1A;
              if (!v34)
              {
                break;
              }

              v40 = v29 == 62;
              v29 += 2;
            }

            while (!v40);
          }
        }

        else
        {
          LOBYTE(v34) = 0;
        }
      }

      else
      {
        LOBYTE(v34) = 1;
      }

      if (atomic_fetch_add_explicit(v26, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v26, v24);
      }
    }

    else
    {
      LOBYTE(v34) = 1;
    }

    if (v25)
    {
      v41 = v68;
      if (v68)
      {
        if (*(v68 + 1))
        {
          atomic_fetch_add_explicit(v68, 2u, memory_order_relaxed);
          v42 = v57;
          v57 = v41;
          if (v42)
          {
            if (atomic_fetch_add_explicit(v42, 0xFFFFFFFE, memory_order_relaxed) == 2)
            {
              WTF::StringImpl::destroy(v42, v24);
            }
          }
        }
      }
    }

    if (hasEntitlement)
    {
      goto LABEL_69;
    }

    if (!_os_feature_enabled_impl())
    {
      goto LABEL_92;
    }

    *v64 = v58;
    v65 = v59;
    if (objc_opt_class())
    {
      v63 = 0;
      v44 = objc_alloc(MEMORY[0x1E69B7CC0]);
      *buf = *v64;
      *&buf[16] = v65;
      v45 = [v44 initWithDomain:40 auditToken:buf error:&v63];
      v46 = v45;
      if (!v45)
      {
        v53 = qword_1ED6410A8;
        if (os_log_type_enabled(qword_1ED6410A8, OS_LOG_TYPE_ERROR))
        {
          *buf = 134218242;
          *&buf[4] = 40;
          *&buf[12] = 2114;
          *&buf[14] = v63;
          _os_log_error_impl(&dword_19D52D000, v53, OS_LOG_TYPE_ERROR, "Failure getting info for domain %qu: %{public}@", buf, 0x16u);
        }

        goto LABEL_92;
      }

      v47 = [v45 answer];

      if (v47 != 4)
      {
LABEL_92:
        v48 = qword_1ED6410A8;
        if (!os_log_type_enabled(qword_1ED6410A8, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_93;
        }

        *buf = 0;
        v49 = "PushClientConnection::create failed: client is missing Web Push entitlement";
        goto LABEL_102;
      }
    }

    else
    {
      *buf = 0;
      v63 = 0;
      os_eligibility_get_domain_answer();
      if (*buf != 4)
      {
        goto LABEL_92;
      }
    }

    *buf = v58;
    *&buf[16] = v59;
    if (WTF::hasEntitlement())
    {
LABEL_69:
      if (v57 && *(v57 + 1))
      {
        if (v34)
        {
          v43 = WebPushD::PushClientConnection::operator new(0x60, v24);
          WebPushD::PushClientConnection::PushClientConnection(v43, a1, &v57, v25, &v56, v70, v71);
          goto LABEL_94;
        }

        v50 = qword_1ED6410A8;
        if (os_log_type_enabled(qword_1ED6410A8, OS_LOG_TYPE_ERROR))
        {
          WTF::String::utf8();
          v51 = v64[0] ? v64[0] + 16 : 0;
          *buf = 136446210;
          *&buf[4] = v51;
          _os_log_error_impl(&dword_19D52D000, v50, OS_LOG_TYPE_ERROR, "PushClientConnection::create failed: invalid push partition %{public}s", buf, 0xCu);
          v52 = v64[0];
          v64[0] = 0;
          if (v52)
          {
            if (*v52 == 1)
            {
              WTF::fastFree(v52, v7);
            }

            else
            {
              --*v52;
            }
          }
        }

LABEL_93:
        v43 = 0;
LABEL_94:
        *a3 = v43;
        v54 = v56;
        v56 = 0;
        if (v54 && atomic_fetch_add_explicit(v54, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v54, v7);
        }

        v55 = v57;
        if (v57 && atomic_fetch_add_explicit(v57, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v55, v7);
        }

        goto LABEL_19;
      }

      v48 = qword_1ED6410A8;
      if (!os_log_type_enabled(qword_1ED6410A8, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_93;
      }

      *buf = 0;
      v49 = "PushClientConnection::create failed: cannot determine code signing identifier of client";
LABEL_102:
      _os_log_error_impl(&dword_19D52D000, v48, OS_LOG_TYPE_ERROR, v49, buf, 2u);
      goto LABEL_93;
    }

    goto LABEL_92;
  }

  v8 = qword_1ED6410A8;
  if (os_log_type_enabled(qword_1ED6410A8, OS_LOG_TYPE_ERROR))
  {
    *v66 = 0;
    _os_log_error_impl(&dword_19D52D000, v8, OS_LOG_TYPE_ERROR, "PushClientConnection::create failed: first message must be InitializeConnection", v66, 2u);
  }

  *a3 = 0;
}

void sub_19D8BE9F8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, WTF::StringImpl *a9, WTF::StringImpl *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, WTF *a25, int a26, WTF::StringImpl *a27, WTF::StringImpl *a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, char a35)
{
  if (a9 && atomic_fetch_add_explicit(a9, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(a9, v37);
  }

  if (a10 && atomic_fetch_add_explicit(a10, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(a10, v37);
  }

  if (a35)
  {
    if (a28 && atomic_fetch_add_explicit(a28, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(a28, v37);
    }

    if (a27 && atomic_fetch_add_explicit(a27, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(a27, v37);
    }

    if (a25)
    {
      WTF::fastFree(a25, v37);
    }
  }

  _Unwind_Resume(a1);
}

uint64_t WebPushD::PushClientConnection::operator new(WebPushD::PushClientConnection *this, void *a2)
{
  if (WebPushD::PushClientConnection::s_heapRef)
  {
    return bmalloc::api::tzoneAllocateNonCompact(WebPushD::PushClientConnection::s_heapRef, a2);
  }

  else
  {
    return WebPushD::PushClientConnection::operatorNewSlow(0x60);
  }
}

uint64_t WebPushD::PushClientConnection::PushClientConnection(uint64_t a1, void *a2, uint64_t *a3, char a4, atomic_uint **a5, uint64_t a6, char a7)
{
  *(a1 + 16) = 1;
  *(a1 + 24) = WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>::generateIdentifierInternal();
  *(a1 + 32) = a2;
  *(a1 + 8) = 0;
  *a1 = &unk_1F10EA598;
  if (a2)
  {
    v14 = a2;
  }

  v15 = *a3;
  *a3 = 0;
  *(a1 + 40) = v15;
  *(a1 + 48) = a4;
  v16 = *a5;
  if (*a5)
  {
    atomic_fetch_add_explicit(v16, 2u, memory_order_relaxed);
  }

  *(a1 + 56) = v16;
  if (*(a6 + 16) == 1)
  {
    *(a1 + 64) = *a6;
  }

  else
  {
    *(a1 + 64) = 0;
    *(a1 + 72) = 0;
  }

  *(a1 + 80) = a7;
  *(a1 + 88) = 0;
  return a1;
}

void sub_19D8BEC10(_Unwind_Exception *a1, void *a2)
{
  *v2 = v4;
  WTF::WeakPtrFactory<WebPushD::PushServiceConnection,WTF::DefaultWeakPtrImpl>::~WeakPtrFactory(v3, a2);
  if (*(v2 + 16) == 1)
  {
    _Unwind_Resume(a1);
  }

  __break(0xC471u);
}

void WebPushD::PushClientConnection::~PushClientConnection(WebPushD::PushClientConnection *this)
{
  *this = &unk_1F10EA598;
  v2 = (this + 88);
  v4 = WTF::HashTable<WebCore::SecurityOriginData,WebCore::SecurityOriginData,WTF::IdentityExtractor,WTF::DefaultHash<WebCore::SecurityOriginData>,WTF::HashTraits<WebCore::SecurityOriginData>,WTF::HashTraits<WebCore::SecurityOriginData>,WTF::FastMalloc>::begin(this + 11);
  v5 = v3;
  v6 = *v2;
  if (*v2)
  {
    v7 = (v6 + 32 * *(v6 - 1));
  }

  else
  {
    v7 = 0;
  }

  if (v7 != v4)
  {
    do
    {
      {
        WebPushD::WebPushDaemon::WebPushDaemon(&WebPushD::WebPushDaemon::singleton(void)::daemon);
      }

      WebPushD::WebPushDaemon::setServiceWorkerOriginIsBeingInspected(&WebPushD::WebPushDaemon::singleton(void)::daemon, v4, 0);
      do
      {
        v4 = (v4 + 32);
      }

      while (v4 != v5 && WTF::HashTable<WebCore::SecurityOriginData,WebCore::SecurityOriginData,WTF::IdentityExtractor,WTF::DefaultHash<WebCore::SecurityOriginData>,WTF::HashTraits<WebCore::SecurityOriginData>,WTF::HashTraits<WebCore::SecurityOriginData>,WTF::FastMalloc>::isEmptyOrDeletedBucket(v4));
    }

    while (v4 != v7);
    v6 = *v2;
  }

  if (v6)
  {
    WTF::HashTable<WebCore::SecurityOriginData,WebCore::SecurityOriginData,WTF::IdentityExtractor,WTF::DefaultHash<WebCore::SecurityOriginData>,WTF::HashTraits<WebCore::SecurityOriginData>,WTF::HashTraits<WebCore::SecurityOriginData>,WTF::FastMalloc>::deallocateTable(v6, v3);
  }

  v8 = *(this + 7);
  *(this + 7) = 0;
  if (v8 && atomic_fetch_add_explicit(v8, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v8, v3);
  }

  v9 = *(this + 5);
  *(this + 5) = 0;
  if (v9 && atomic_fetch_add_explicit(v9, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v9, v3);
  }

  v10 = *(this + 4);
  if (v10)
  {
  }

  *this = &unk_1F10EA5E0;
  WTF::WeakPtrFactory<WebPushD::PushServiceConnection,WTF::DefaultWeakPtrImpl>::~WeakPtrFactory(this + 1, v3);
  if (*(this + 4) != 1)
  {
    __break(0xC471u);
  }
}

{
  WebPushD::PushClientConnection::~PushClientConnection(this);

  bmalloc::api::tzoneFree(v1, v2);
}

void sub_19D8BEDEC(_Unwind_Exception *a1, void *a2)
{
  if (*v3)
  {
    WTF::HashTable<WebCore::SecurityOriginData,WebCore::SecurityOriginData,WTF::IdentityExtractor,WTF::DefaultHash<WebCore::SecurityOriginData>,WTF::HashTraits<WebCore::SecurityOriginData>,WTF::HashTraits<WebCore::SecurityOriginData>,WTF::FastMalloc>::deallocateTable(*v3, a2);
  }

  v5 = *(v2 + 56);
  *(v2 + 56) = 0;
  if (v5 && atomic_fetch_add_explicit(v5, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v5, a2);
  }

  v6 = *(v2 + 40);
  *(v2 + 40) = 0;
  if (v6 && atomic_fetch_add_explicit(v6, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v6, a2);
  }

  v7 = *(v2 + 32);
  if (v7)
  {
  }

  *v2 = &unk_1F10EA5E0;
  WTF::WeakPtrFactory<WebPushD::PushServiceConnection,WTF::DefaultWeakPtrImpl>::~WeakPtrFactory((v2 + 8), a2);
  if (*(v2 + 16) == 1)
  {
    _Unwind_Resume(a1);
  }

  __break(0xC471u);
}

void WebPushD::PushClientConnection::initializeConnection(uint64_t a1)
{
  v5 = *MEMORY[0x1E69E9840];
  v2 = qword_1ED6410A8;
  if (os_log_type_enabled(qword_1ED6410A8, OS_LOG_TYPE_ERROR))
  {
    v3 = 134217984;
    v4 = a1;
    _os_log_error_impl(&dword_19D52D000, v2, OS_LOG_TYPE_ERROR, "PushClientConnection::initializeConnection(%p): ignoring duplicate message", &v3, 0xCu);
  }
}

uint64_t WebPushD::PushClientConnection::getPushTopicsForTesting(WebPushD::PushClientConnection *a1, uint64_t *a2)
{
  v4 = a1;
  {
    v7 = a2;
    WebPushD::WebPushDaemon::WebPushDaemon(&WebPushD::WebPushDaemon::singleton(void)::daemon);
    v4 = a1;
    a2 = v7;
  }

  return WebPushD::WebPushDaemon::getPushTopicsForTesting(&WebPushD::WebPushDaemon::singleton(void)::daemon, v4, a2);
}

void WebPushD::PushClientConnection::subscriptionSetIdentifierForOrigin(WebPushD::PushClientConnection *this@<X0>, const WebCore::SecurityOriginData *a2@<X1>, uint64_t a3@<X8>)
{
  v6 = *(this + 7);
  if (v6)
  {
    atomic_fetch_add_explicit(v6, 2u, memory_order_relaxed);
    if (v6[1])
    {
      v7 = v6;
LABEL_13:
      v10 = *(this + 5);
      if (v10)
      {
        atomic_fetch_add_explicit(v10, 2u, memory_order_relaxed);
      }

      atomic_fetch_add_explicit(v7, 2u, memory_order_relaxed);
      v11 = *(this + 8);
      v12 = *(this + 9);
      *a3 = v10;
      *(a3 + 8) = v7;
      *(a3 + 16) = v11;
      *(a3 + 24) = v12;
      LOBYTE(v10) = 1;
      goto LABEL_16;
    }
  }

  {
    WebPushD::WebPushDaemon::WebPushDaemon(&WebPushD::WebPushDaemon::singleton(void)::daemon);
  }

  v8 = WebPushD::WebPushDaemon::ensureWebClipCache(&WebPushD::WebPushDaemon::singleton(void)::daemon);
  WebPushD::WebClipCache::preferredWebClipIdentifier(v8, this + 5, a2, &v13);
  v7 = v13;
  v13 = 0;
  if (v6)
  {
    if (atomic_fetch_add_explicit(v6, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v6, a2);
      v9 = v13;
      v13 = 0;
      if (v9)
      {
        if (atomic_fetch_add_explicit(v9, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v9, a2);
        }
      }
    }
  }

  if (!v7)
  {
    *a3 = 0;
    *(a3 + 32) = 0;
    return;
  }

  LODWORD(v10) = v7[1];
  if (v10)
  {
    goto LABEL_13;
  }

  *a3 = 0;
LABEL_16:
  *(a3 + 32) = v10;
  if (atomic_fetch_add_explicit(v7, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v7, a2);
  }
}

void sub_19D8BF134(_Unwind_Exception *exception_object, WTF::StringImpl *a2)
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

uint64_t WebPushD::PushClientConnection::debugDescription(WebPushD::PushClientConnection *this)
{
  v12 = 0;
  v13 = 0;
  v14 = 0;
  v15 = 1;
  v16 = 0;
  v17 = 256;
  v18 = 0;
  WTF::TextStream::operator<<();
  v2 = *(this + 7);
  if (v2 && *(v2 + 4))
  {
    WTF::TextStream::operator<<();
    WTF::TextStream::operator<<();
  }

  v3 = *(this + 8);
  v4 = *(this + 9);
  v5 = (this + 64);
  if (v3 | v4)
  {
    WTF::TextStream::operator<<();
    if (*v5 == 0)
    {
      result = 154;
      __break(0xC471u);
      return result;
    }

    WTF::UUID::toString(&v11, v5);
    WTF::TextStream::operator<<();
    v7 = v11;
    v11 = 0;
    if (v7 && atomic_fetch_add_explicit(v7, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v7, v6);
    }
  }

  WTF::TextStream::release(&v12);
  v9 = v13;
  v13 = 0;
  if (v9 && atomic_fetch_add_explicit(v9, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v9, v8);
  }

  result = v12;
  v12 = 0;
  if (result)
  {
    if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      return WTF::StringImpl::destroy(result, v8);
    }
  }

  return result;
}

void sub_19D8BF2BC(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, WTF::StringImpl *a9, WTF::StringImpl *a10, WTF::StringImpl *a11)
{
  if (a9 && atomic_fetch_add_explicit(a9, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(a9, a2);
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

void WebPushD::PushClientConnection::connectionClosed(WebPushD::PushClientConnection *this)
{
  v1 = *(this + 4);
  if (v1)
  {

    *(this + 4) = 0;
  }

  else
  {
    __break(0xC471u);
  }
}

WTF::StringImpl *WebPushD::PushClientConnection::setPushAndNotificationsEnabledForOrigin(WebPushD::PushClientConnection *a1, atomic_uint **a2, char a3, uint64_t *a4)
{
  v8 = a1;
  {
    v12 = a2;
    v13 = a4;
    v11 = a3;
    WebPushD::WebPushDaemon::WebPushDaemon(&WebPushD::WebPushDaemon::singleton(void)::daemon);
    v8 = a1;
    a2 = v12;
    a4 = v13;
    a3 = v11;
  }

  return WebPushD::WebPushDaemon::setPushAndNotificationsEnabledForOrigin(&WebPushD::WebPushDaemon::singleton(void)::daemon, v8, a2, a3, a4);
}

WTF::StringImpl *WebPushD::PushClientConnection::injectPushMessageForTesting(uint64_t a1, uint64_t a2, WTF::RefCountedBase *a3)
{
  v6 = a1;
  {
    v10 = a3;
    v8 = a2;
    WebPushD::WebPushDaemon::WebPushDaemon(&WebPushD::WebPushDaemon::singleton(void)::daemon);
    a2 = v8;
    v6 = a1;
    a3 = v10;
  }

  return WebPushD::WebPushDaemon::injectPushMessageForTesting(&WebPushD::WebPushDaemon::singleton(void)::daemon, v6, a2, a3);
}

uint64_t *WebPushD::PushClientConnection::injectEncryptedPushMessageForTesting(WebPushD::PushClientConnection *a1, atomic_uint **a2, WTF::RefCountedBase *a3)
{
  v6 = a1;
  {
    v10 = a3;
    v8 = a2;
    WebPushD::WebPushDaemon::WebPushDaemon(&WebPushD::WebPushDaemon::singleton(void)::daemon);
    a2 = v8;
    v6 = a1;
    a3 = v10;
  }

  return WebPushD::WebPushDaemon::injectEncryptedPushMessageForTesting(&WebPushD::WebPushDaemon::singleton(void)::daemon, v6, a2, a3);
}

WTF::StringImpl *WebPushD::PushClientConnection::getPendingPushMessage(uint64_t a1, uint64_t *a2)
{
  v4 = a1;
  {
    v7 = a2;
    WebPushD::WebPushDaemon::WebPushDaemon(&WebPushD::WebPushDaemon::singleton(void)::daemon);
    v4 = a1;
    a2 = v7;
  }

  return WebPushD::WebPushDaemon::getPendingPushMessage(&WebPushD::WebPushDaemon::singleton(void)::daemon, v4, a2);
}

uint64_t WebPushD::PushClientConnection::getPendingPushMessages(WTF **a1, uint64_t *a2)
{
  v4 = a1;
  {
    v7 = a2;
    WebPushD::WebPushDaemon::WebPushDaemon(&WebPushD::WebPushDaemon::singleton(void)::daemon);
    v4 = a1;
    a2 = v7;
  }

  return WebPushD::WebPushDaemon::getPendingPushMessages(&WebPushD::WebPushDaemon::singleton(void)::daemon, v4, a2);
}

uint64_t WebPushD::PushClientConnection::subscribeToPushService(const WTF::URL *a1, WebCore::SecurityOriginData *this, uint64_t a3, uint64_t *a4)
{
  v8 = a1;
  {
    v12 = this;
    v13 = a4;
    v11 = a3;
    WebPushD::WebPushDaemon::WebPushDaemon(&WebPushD::WebPushDaemon::singleton(void)::daemon);
    v8 = a1;
    a3 = v11;
    this = v12;
    a4 = v13;
  }

  return WebPushD::WebPushDaemon::subscribeToPushService(&WebPushD::WebPushDaemon::singleton(void)::daemon, v8, this, a3, a4);
}

uint64_t WebPushD::PushClientConnection::unsubscribeFromPushService(const WTF::URL *a1, WebCore::SecurityOriginData *this, uint64_t a3, char a4, uint64_t *a5)
{
  v10 = a1;
  {
    v16 = a5;
    v12 = this;
    v13 = a4;
    v15 = a3;
    WebPushD::WebPushDaemon::WebPushDaemon(&WebPushD::WebPushDaemon::singleton(void)::daemon);
    v10 = a1;
    a3 = v15;
    this = v12;
    a4 = v13;
    a5 = v16;
  }

  return WebPushD::WebPushDaemon::unsubscribeFromPushService(&WebPushD::WebPushDaemon::singleton(void)::daemon, v10, this, a3, a4, a5);
}

uint64_t WebPushD::PushClientConnection::getPushSubscription(const WTF::URL *a1, WebCore::SecurityOriginData *this, uint64_t *a3)
{
  v6 = a1;
  {
    v10 = a3;
    v8 = this;
    WebPushD::WebPushDaemon::WebPushDaemon(&WebPushD::WebPushDaemon::singleton(void)::daemon);
    this = v8;
    v6 = a1;
    a3 = v10;
  }

  return WebPushD::WebPushDaemon::getPushSubscription(&WebPushD::WebPushDaemon::singleton(void)::daemon, v6, this, a3);
}

WTF::StringImpl *WebPushD::PushClientConnection::incrementSilentPushCount(WebPushD::PushClientConnection *this, WebCore::SecurityOriginData *a2, uint64_t *a3)
{
  v6 = this;
  {
    v10 = a3;
    v8 = a2;
    WebPushD::WebPushDaemon::WebPushDaemon(&WebPushD::WebPushDaemon::singleton(void)::daemon);
    a2 = v8;
    v6 = this;
    a3 = v10;
  }

  return WebPushD::WebPushDaemon::incrementSilentPushCount(&WebPushD::WebPushDaemon::singleton(void)::daemon, v6, a2, a3);
}

uint64_t WebPushD::PushClientConnection::removeAllPushSubscriptions(void *a1, uint64_t *a2)
{
  v4 = a1;
  {
    v7 = a2;
    WebPushD::WebPushDaemon::WebPushDaemon(&WebPushD::WebPushDaemon::singleton(void)::daemon);
    v4 = a1;
    a2 = v7;
  }

  return WebPushD::WebPushDaemon::removeAllPushSubscriptions(&WebPushD::WebPushDaemon::singleton(void)::daemon, v4, a2);
}

WTF::StringImpl *WebPushD::PushClientConnection::removePushSubscriptionsForOrigin(WebPushD::PushClientConnection *this, WebCore::SecurityOriginData *a2, uint64_t *a3)
{
  v6 = this;
  {
    v10 = a3;
    v8 = a2;
    WebPushD::WebPushDaemon::WebPushDaemon(&WebPushD::WebPushDaemon::singleton(void)::daemon);
    a2 = v8;
    v6 = this;
    a3 = v10;
  }

  return WebPushD::WebPushDaemon::removePushSubscriptionsForOrigin(&WebPushD::WebPushDaemon::singleton(void)::daemon, v6, a2, a3);
}

uint64_t WebPushD::PushClientConnection::setPublicTokenForTesting(WebPushD::PushClientConnection *a1, atomic_uint **a2, uint64_t *a3)
{
  v6 = a1;
  {
    v10 = a3;
    v8 = a2;
    WebPushD::WebPushDaemon::WebPushDaemon(&WebPushD::WebPushDaemon::singleton(void)::daemon);
    a2 = v8;
    v6 = a1;
    a3 = v10;
  }

  return WebPushD::WebPushDaemon::setPublicTokenForTesting(&WebPushD::WebPushDaemon::singleton(void)::daemon, v6, a2, a3);
}

WTF::StringImpl *WebPushD::PushClientConnection::getPushPermissionState(WebPushD::PushClientConnection *this, WebCore::SecurityOriginData *a2, uint64_t *a3)
{
  v6 = this;
  {
    v10 = a3;
    v8 = a2;
    WebPushD::WebPushDaemon::WebPushDaemon(&WebPushD::WebPushDaemon::singleton(void)::daemon);
    a2 = v8;
    v6 = this;
    a3 = v10;
  }

  return WebPushD::WebPushDaemon::getPushPermissionState(&WebPushD::WebPushDaemon::singleton(void)::daemon, v6, a2, a3);
}

uint64_t *WebPushD::PushClientConnection::requestPushPermission(WebPushD::PushClientConnection *this, WebCore::SecurityOriginData *a2, WTF::RefCountedBase *a3)
{
  v6 = this;
  {
    v10 = a3;
    v8 = a2;
    WebPushD::WebPushDaemon::WebPushDaemon(&WebPushD::WebPushDaemon::singleton(void)::daemon);
    a2 = v8;
    v6 = this;
    a3 = v10;
  }

  return WebPushD::WebPushDaemon::requestPushPermission(&WebPushD::WebPushDaemon::singleton(void)::daemon, v6, a2, a3);
}

atomic_uint *WebPushD::PushClientConnection::showNotification(WebPushD::PushClientConnection *a1, uint64_t a2, atomic_uint **a3, uint64_t *a4)
{
  v4 = a4;
  v6 = a1;
  {
    v10 = a3;
    v11 = a2;
    WebPushD::WebPushDaemon::WebPushDaemon(&WebPushD::WebPushDaemon::singleton(void)::daemon);
    a3 = v10;
    a2 = v11;
    v6 = a1;
    v4 = a4;
  }

  v7 = *a3;
  if (*a3)
  {
    atomic_fetch_add(v7, 1u);
  }

  v14 = v7;
  WebPushD::WebPushDaemon::showNotification(&WebPushD::WebPushDaemon::singleton(void)::daemon, v6, a2, &v14, v4);
  result = v14;
  v14 = 0;
  if (result)
  {
    return WTF::ThreadSafeRefCounted<WebCore::NotificationResources,(WTF::DestructionThread)0>::deref(result, v8);
  }

  return result;
}

void sub_19D8BFB1C(_Unwind_Exception *exception_object, void *a2)
{
  v4 = *(v2 - 24);
  *(v2 - 24) = 0;
  if (v4)
  {
    WTF::ThreadSafeRefCounted<WebCore::NotificationResources,(WTF::DestructionThread)0>::deref(v4, a2);
  }

  _Unwind_Resume(exception_object);
}

uint64_t WebPushD::PushClientConnection::getNotifications(const WTF::URL *a1, WebCore::SecurityOriginData *this, uint64_t a3, uint64_t *a4)
{
  v8 = a1;
  {
    v12 = this;
    v13 = a4;
    v11 = a3;
    WebPushD::WebPushDaemon::WebPushDaemon(&WebPushD::WebPushDaemon::singleton(void)::daemon);
    v8 = a1;
    a3 = v11;
    this = v12;
    a4 = v13;
  }

  return WebPushD::WebPushDaemon::getNotifications(&WebPushD::WebPushDaemon::singleton(void)::daemon, v8, this, a3, a4);
}

uint64_t WebPushD::PushClientConnection::cancelNotification(WebPushD::PushClientConnection *this, WebCore::SecurityOriginData *a2, WTF::UUID *a3)
{
  v6 = this;
  {
    v10 = a3;
    v8 = a2;
    WebPushD::WebPushDaemon::WebPushDaemon(&WebPushD::WebPushDaemon::singleton(void)::daemon);
    a2 = v8;
    v6 = this;
    a3 = v10;
  }

  return WebPushD::WebPushDaemon::cancelNotification(&WebPushD::WebPushDaemon::singleton(void)::daemon, v6, a2, a3);
}

WTF::StringImpl *WebPushD::PushClientConnection::setAppBadge(WebPushD::PushClientConnection *this, WebCore::SecurityOriginData *a2, uint64_t a3, char a4)
{
  v8 = this;
  {
    v12 = a2;
    v13 = a4;
    v11 = a3;
    WebPushD::WebPushDaemon::WebPushDaemon(&WebPushD::WebPushDaemon::singleton(void)::daemon);
    v8 = this;
    a3 = v11;
    a2 = v12;
    a4 = v13;
  }

  return WebPushD::WebPushDaemon::setAppBadge(&WebPushD::WebPushDaemon::singleton(void)::daemon, v8, a2, a3, a4);
}

uint64_t WebPushD::PushClientConnection::getAppBadgeForTesting(uint64_t a1, uint64_t *a2)
{
  v3 = a2;
  {
    WebPushD::WebPushDaemon::WebPushDaemon(&WebPushD::WebPushDaemon::singleton(void)::daemon);
    v3 = a2;
  }

  return WTF::CompletionHandler<void ()(std::optional<unsigned long long>)>::operator()(v3);
}

uint64_t WebPushD::PushClientConnection::setProtocolVersionForTesting(uint64_t a1, int a2, uint64_t *a3)
{
  v4 = a3;
  {
    v6 = a2;
    WebPushD::WebPushDaemon::WebPushDaemon(&WebPushD::WebPushDaemon::singleton(void)::daemon);
    a2 = v6;
    v4 = a3;
  }

  WebPushD::s_protocolVersion = a2;

  return WTF::CompletionHandler<void ()(void)>::operator()(v4);
}

uint64_t WebPushD::PushClientConnection::setServiceWorkerIsBeingInspected(uint64_t a1, WebCore::SecurityOriginData *this, char a3, uint64_t *a4)
{
  v17 = *MEMORY[0x1E69E9840];
  v7 = WebCore::SecurityOriginData::fromURL(v14, this, this);
  if (v16 != 1)
  {
    if (v16)
    {
      mpark::throw_bad_variant_access(v7);
    }

    if (v14[0] || v14[1] || (v15 & 1) != 0)
    {
      if (a3)
      {
        WTF::HashTable<WebCore::SecurityOriginData,WebCore::SecurityOriginData,WTF::IdentityExtractor,WTF::DefaultHash<WebCore::SecurityOriginData>,WTF::HashTraits<WebCore::SecurityOriginData>,WTF::HashTraits<WebCore::SecurityOriginData>,WTF::FastMalloc>::add<(WTF::ShouldValidateKey)1>(v14, (a1 + 88), v13);
        if ((v13[16] & 1) == 0)
        {
          goto LABEL_21;
        }

LABEL_18:
        {
          WebPushD::WebPushDaemon::WebPushDaemon(&WebPushD::WebPushDaemon::singleton(void)::daemon);
        }

        WebPushD::WebPushDaemon::setServiceWorkerOriginIsBeingInspected(&WebPushD::WebPushDaemon::singleton(void)::daemon, v14, a3);
        goto LABEL_21;
      }

      v9 = *(a1 + 88);
      v8 = (a1 + 88);
      if (v9)
      {
        v10 = WTF::HashTable<WebCore::SecurityOriginData,WebCore::SecurityOriginData,WTF::IdentityExtractor,WTF::DefaultHash<WebCore::SecurityOriginData>,WTF::HashTraits<WebCore::SecurityOriginData>,WTF::HashTraits<WebCore::SecurityOriginData>,WTF::FastMalloc>::lookup<WTF::IdentityHashTranslator<WTF::HashTraits<WebCore::SecurityOriginData>,WTF::DefaultHash<WebCore::SecurityOriginData>>,(WTF::ShouldValidateKey)1,WebCore::SecurityOriginData>(v8, v14);
        v11 = *v8;
        if (v10)
        {
          if (!v11)
          {
LABEL_16:
            if (v11 != v10)
            {
              WTF::HashTable<WebCore::SecurityOriginData,WebCore::SecurityOriginData,WTF::IdentityExtractor,WTF::DefaultHash<WebCore::SecurityOriginData>,WTF::HashTraits<WebCore::SecurityOriginData>,WTF::HashTraits<WebCore::SecurityOriginData>,WTF::FastMalloc>::remove(v8, v10);
            }

            goto LABEL_18;
          }
        }

        else
        {
          if (!v11)
          {
            goto LABEL_21;
          }

          v10 = (v11 + 32 * *(v11 - 4));
        }

        v11 += 32 * *(v11 - 4);
        if (v11 != v10)
        {
          goto LABEL_16;
        }
      }

LABEL_21:
      WTF::CompletionHandler<void ()(void)>::operator()(a4);
    }
  }

  return mpark::detail::move_constructor<mpark::detail::traits<WebCore::SecurityOriginData::Tuple,WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::OpaqueOriginIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,(mpark::detail::Trait)1>::~move_constructor(v14);
}

void sub_19D8BFF08(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  mpark::detail::move_constructor<mpark::detail::traits<WebCore::SecurityOriginData::Tuple,WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::OpaqueOriginIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,(mpark::detail::Trait)1>::~move_constructor(va);
  _Unwind_Resume(a1);
}

_DWORD *WebPushD::PushClientConnection::deref(_DWORD *this)
{
  if (this[4] == 1)
  {
    return (*(*this + 24))();
  }

  --this[4];
  return this;
}

uint64_t WTF::ThreadSafeRefCounted<WebCore::NotificationResources,(WTF::DestructionThread)0>::deref(uint64_t this, void *a2)
{
  add = atomic_fetch_add(this, 0xFFFFFFFF);
  if (add == 1)
  {
    v4 = this;
    atomic_store(add, this);
    v5 = *(this + 8);
    *(v4 + 1) = 0;
    if (v5)
    {
      if (v5[4] == 1)
      {
        (*(*v5 + 8))(v5);
      }

      else
      {
        --v5[4];
      }
    }

    return WTF::fastFree(v4, a2);
  }

  return this;
}

_BYTE *WTF::HashTable<WebCore::SecurityOriginData,WebCore::SecurityOriginData,WTF::IdentityExtractor,WTF::DefaultHash<WebCore::SecurityOriginData>,WTF::HashTraits<WebCore::SecurityOriginData>,WTF::HashTraits<WebCore::SecurityOriginData>,WTF::FastMalloc>::remove(uint64_t *a1, uint64_t a2)
{
  result = mpark::detail::move_constructor<mpark::detail::traits<WebCore::SecurityOriginData::Tuple,WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::OpaqueOriginIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,(mpark::detail::Trait)1>::~move_constructor(a2);
  *a2 = -1;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *(a2 + 24) = 0;
  v5 = *a1;
  v6 = vadd_s32(*(*a1 - 16), 0xFFFFFFFF00000001);
  *(v5 - 16) = v6;
  v7 = *(v5 - 4);
  if (6 * v6.i32[1] < v7 && v7 >= 9)
  {

    return WTF::HashTable<WebCore::SecurityOriginData,WebCore::SecurityOriginData,WTF::IdentityExtractor,WTF::DefaultHash<WebCore::SecurityOriginData>,WTF::HashTraits<WebCore::SecurityOriginData>,WTF::HashTraits<WebCore::SecurityOriginData>,WTF::FastMalloc>::rehash(a1, v7 >> 1, 0);
  }

  return result;
}

WebCore::SecurityOriginData *WTF::HashTable<WebCore::SecurityOriginData,WebCore::SecurityOriginData,WTF::IdentityExtractor,WTF::DefaultHash<WebCore::SecurityOriginData>,WTF::HashTraits<WebCore::SecurityOriginData>,WTF::HashTraits<WebCore::SecurityOriginData>,WTF::FastMalloc>::lookup<WTF::IdentityHashTranslator<WTF::HashTraits<WebCore::SecurityOriginData>,WTF::DefaultHash<WebCore::SecurityOriginData>>,(WTF::ShouldValidateKey)1,WebCore::SecurityOriginData>(uint64_t *a1, WebCore::SecurityOriginData *this)
{
  isNull = WebCore::SecurityOriginData::isNull(this);
  if (isNull)
  {
    goto LABEL_18;
  }

  if (!*(this + 24))
  {
    if (*this != -1)
    {
      goto LABEL_4;
    }

LABEL_18:
    __break(0xC471u);
    JUMPOUT(0x19D8C01D8);
  }

  if (*(this + 24) != 1)
  {
LABEL_15:
    mpark::throw_bad_variant_access(isNull);
  }

LABEL_4:
  v5 = *a1;
  if (*a1)
  {
    v6 = *(v5 - 8);
    v11 = -1640531527;
    v12 = 0;
    v13 = 0;
    WTF::add<WebCore::SecurityOriginData::Tuple,WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::OpaqueOriginIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>(&v11, this);
    v7 = WTF::SuperFastHash::hash(&v11) & v6;
    v8 = (v5 + 32 * v7);
    isNull = WebCore::SecurityOriginData::isNull(v8);
    if ((isNull & 1) == 0)
    {
      v10 = 1;
      while (!*(v8 + 24))
      {
        if (*v8 != -1)
        {
          goto LABEL_11;
        }

LABEL_12:
        v7 = (v7 + v10) & v6;
        v8 = (v5 + 32 * v7);
        isNull = WebCore::SecurityOriginData::isNull(v8);
        ++v10;
        if (isNull)
        {
          return 0;
        }
      }

      if (*(v8 + 24) != 1)
      {
        goto LABEL_15;
      }

LABEL_11:
      if (WebCore::operator==())
      {
        return v8;
      }

      goto LABEL_12;
    }
  }

  return 0;
}

uint64_t WTF::IdentityHashTranslator<WTF::HashTraits<WebCore::SecurityOriginData>,WTF::DefaultHash<WebCore::SecurityOriginData>>::translate<WebCore::SecurityOriginData,WebCore::SecurityOriginData,WTF::HashTableAddResult<WTF::HashTableIterator<WTF::HashTable<WebCore::SecurityOriginData,WebCore::SecurityOriginData,WTF::IdentityExtractor,WTF::DefaultHash<WebCore::SecurityOriginData>,WTF::HashTraits<WebCore::SecurityOriginData>,WTF::HashTraits<WebCore::SecurityOriginData>,WTF::FastMalloc>,WebCore::SecurityOriginData,WebCore::SecurityOriginData,WTF::IdentityExtractor,WTF::DefaultHash<WebCore::SecurityOriginData>,WTF::HashTraits<WebCore::SecurityOriginData>,WTF::HashTraits<WebCore::SecurityOriginData>>> WTF::HashTable<WebCore::SecurityOriginData,WebCore::SecurityOriginData,WTF::IdentityExtractor,WTF::DefaultHash<WebCore::SecurityOriginData>,WTF::HashTraits<WebCore::SecurityOriginData>,WTF::HashTraits<WebCore::SecurityOriginData>,WTF::FastMalloc>::add<(WTF::ShouldValidateKey)1>(WebCore::SecurityOriginData const&)::{lambda(void)#1}>(uint64_t a1, WTF::StringImpl *a2, __int128 **a3)
{
  v18 = *MEMORY[0x1E69E9840];
  v4 = *a3;
  LOBYTE(v15) = 0;
  v17 = -1;
  v5 = *(v4 + 24);
  if (!*(v4 + 24))
  {
    v6 = *v4;
    if (*v4)
    {
      atomic_fetch_add_explicit(v6, 2u, memory_order_relaxed);
    }

    *&v15 = v6;
    v7 = *(v4 + 1);
    if (v7)
    {
      atomic_fetch_add_explicit(v7, 2u, memory_order_relaxed);
    }

    *(&v15 + 1) = v7;
    v16 = *(v4 + 4);
    v5 = *(v4 + 24);
    goto LABEL_7;
  }

  if (v5 != 255)
  {
    v15 = *v4;
LABEL_7:
    v17 = v5;
  }

  if (*(a1 + 24) == 255)
  {
    if (v5 == 255)
    {
      return mpark::detail::move_constructor<mpark::detail::traits<WebCore::SecurityOriginData::Tuple,WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::OpaqueOriginIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,(mpark::detail::Trait)1>::~move_constructor(&v15);
    }

    if (!v5)
    {
      goto LABEL_24;
    }

    goto LABEL_25;
  }

  if (v5 != 255)
  {
    if (!v5)
    {
      if (!*(a1 + 24))
      {
        v8 = v15;
        *&v15 = 0;
        v9 = *a1;
        *a1 = v8;
        if (v9 && atomic_fetch_add_explicit(v9, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v9, a2);
        }

        v10 = *(&v15 + 1);
        *(&v15 + 1) = 0;
        v11 = *(a1 + 8);
        *(a1 + 8) = v10;
        if (v11 && atomic_fetch_add_explicit(v11, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v11, a2);
        }

        *(a1 + 16) = v16;
        *(a1 + 18) = BYTE2(v16);
        return mpark::detail::move_constructor<mpark::detail::traits<WebCore::SecurityOriginData::Tuple,WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::OpaqueOriginIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,(mpark::detail::Trait)1>::~move_constructor(&v15);
      }

LABEL_24:
      mpark::detail::assignment<mpark::detail::traits<WebCore::SecurityOriginData::Tuple,WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::OpaqueOriginIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>>::emplace<0ul,WebCore::SecurityOriginData::Tuple>(a1);
      return mpark::detail::move_constructor<mpark::detail::traits<WebCore::SecurityOriginData::Tuple,WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::OpaqueOriginIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,(mpark::detail::Trait)1>::~move_constructor(&v15);
    }

LABEL_25:
    _ZN5mpark3lib5cpp176invokeIZNS_6detail10assignmentINS3_6traitsIJN7WebCore18SecurityOriginData5TupleENS6_16ProcessQualifiedIN3WTF23ObjectIdentifierGenericINS6_26OpaqueOriginIdentifierTypeENSA_38ObjectIdentifierThreadSafeAccessTraitsIyEEyEEEEEEEE14generic_assignINS3_15move_assignmentISH_LNS3_5TraitE1EEEEEvOT_EUlRSN_OT0_E_JRNS3_3altILm1ESG_EESU_EEEDTclsr6detailE6invokeclsr3libE7forwardISN_Efp_Espclsr3libE7forwardIT0_Efp0_EEESO_DpOSW_();
    return mpark::detail::move_constructor<mpark::detail::traits<WebCore::SecurityOriginData::Tuple,WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::OpaqueOriginIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,(mpark::detail::Trait)1>::~move_constructor(&v15);
  }

  if (!*(a1 + 24))
  {
    v13 = *(a1 + 8);
    *(a1 + 8) = 0;
    if (v13 && atomic_fetch_add_explicit(v13, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v13, a2);
    }

    v14 = *a1;
    *a1 = 0;
    if (v14 && atomic_fetch_add_explicit(v14, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v14, a2);
    }
  }

  *(a1 + 24) = -1;
  return mpark::detail::move_constructor<mpark::detail::traits<WebCore::SecurityOriginData::Tuple,WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::OpaqueOriginIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,(mpark::detail::Trait)1>::~move_constructor(&v15);
}

void sub_19D8C061C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  mpark::detail::move_constructor<mpark::detail::traits<WebCore::SecurityOriginData::Tuple,WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::OpaqueOriginIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,(mpark::detail::Trait)1>::~move_constructor(va);
  _Unwind_Resume(a1);
}

uint64_t WebPushD::PushService::create(atomic_uint **a1, atomic_uint **a2, uint64_t *a3, uint64_t *a4)
{
  v8 = os_transaction_create();
  v9 = WebPushD::PushServiceConnection::operatorNewSlow(0x80);
  WebPushD::ApplePushServiceConnection::ApplePushServiceConnection(v9, a1);
  v10 = *a2;
  if (v10)
  {
    atomic_fetch_add_explicit(v10, 2u, memory_order_relaxed);
  }

  v11 = *a3;
  *a3 = 0;
  v12 = *a4;
  *a4 = 0;
  v13 = WTF::fastMalloc(0x30);
  *v13 = &unk_1F10EA850;
  if (v10)
  {
    atomic_fetch_add_explicit(v10, 2u, memory_order_relaxed);
  }

  *(v13 + 1) = v10;
  *(v13 + 2) = v8;
  *(v13 + 3) = v9;
  *(v13 + 4) = v11;
  *(v13 + 5) = v12;
  v38 = v13;
  if ((_MergedGlobals_55 & 1) == 0)
  {
    qword_1ED641BC8 = 0;
    *&dword_1ED641BD0 = 0;
    _MergedGlobals_55 = 1;
  }

  v14 = WTF::RunLoop::mainSingleton(v13);
  if ((WTF::RunLoop::isCurrent(v14) & 1) == 0)
  {
    result = 86;
    __break(0xC471u);
    return result;
  }

  if (MKBDeviceUnlockedSinceBoot() == 1)
  {
    v15 = dword_1ED641BD4;
    if (dword_1ED641BD4 == dword_1ED641BD0)
    {
      v18 = WTF::Vector<WTF::Function<void ()(void)>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(&qword_1ED641BC8, dword_1ED641BD4 + 1, &v38);
      v15 = dword_1ED641BD4;
      v16 = qword_1ED641BC8;
      v17 = (qword_1ED641BC8 + 8 * dword_1ED641BD4);
    }

    else
    {
      v16 = qword_1ED641BC8;
      v17 = (qword_1ED641BC8 + 8 * dword_1ED641BD4);
      v18 = &v38;
    }

    v24 = *v18;
    *v18 = 0;
    *v17 = v24;
    v25 = v15 + 1;
    dword_1ED641BD4 = v15 + 1;
    v26 = qword_1ED6410A8;
    v27 = os_log_type_enabled(qword_1ED6410A8, OS_LOG_TYPE_DEFAULT);
    if (v27)
    {
      *buf = 0;
      _os_log_impl(&dword_19D52D000, v26, OS_LOG_TYPE_DEFAULT, "Device has unlocked. Running initialization.", buf, 2u);
      v16 = qword_1ED641BC8;
      v25 = dword_1ED641BD4;
    }

    if (v25)
    {
      v28 = 8 * v25;
      do
      {
        v29 = WTF::WorkQueue::mainSingleton(v27);
        v27 = (*(*v29 + 48))(v29, v16);
        v16 += 8;
        v28 -= 8;
      }

      while (v28);
    }

LABEL_31:
    WTF::Vector<WTF::Function<void ()(void)>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::shrinkCapacity(&qword_1ED641BC8, 0);
    if (WebPushD::performAfterFirstUnlock(WTF::Function<void ()(void)> &&)::notifyToken != -1)
    {
      notify_cancel(WebPushD::performAfterFirstUnlock(WTF::Function<void ()(void)> &&)::notifyToken);
      WebPushD::performAfterFirstUnlock(WTF::Function<void ()(void)> &&)::notifyToken = -1;
    }

    goto LABEL_33;
  }

  v19 = qword_1ED6410A8;
  if (os_log_type_enabled(qword_1ED6410A8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_19D52D000, v19, OS_LOG_TYPE_DEFAULT, "Device is locked. Delaying init until it unlocks for the first time.", buf, 2u);
  }

  if (WebPushD::performAfterFirstUnlock(WTF::Function<void ()(void)> &&)::notifyToken == -1)
  {
    v20 = *MEMORY[0x1E69B1A70];
    *buf = MEMORY[0x1E69E9820];
    v40 = 3221225472;
    v41 = ___ZN8WebPushDL23performAfterFirstUnlockEON3WTF8FunctionIFvvEEE_block_invoke;
    v42 = &__block_descriptor_33_e8_v12__0i8l;
    notify_register_dispatch(v20, &WebPushD::performAfterFirstUnlock(WTF::Function<void ()(void)> &&)::notifyToken, MEMORY[0x1E69E96A0], buf);
  }

  v21 = dword_1ED641BD4;
  if (dword_1ED641BD4 == dword_1ED641BD0)
  {
    v23 = WTF::Vector<WTF::Function<void ()(void)>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(&qword_1ED641BC8, dword_1ED641BD4 + 1, &v38);
    v21 = dword_1ED641BD4;
    v22 = (qword_1ED641BC8 + 8 * dword_1ED641BD4);
  }

  else
  {
    v22 = (qword_1ED641BC8 + 8 * dword_1ED641BD4);
    v23 = &v38;
  }

  v30 = *v23;
  *v23 = 0;
  *v22 = v30;
  dword_1ED641BD4 = v21 + 1;
  if (MKBDeviceUnlockedSinceBoot() == 1)
  {
    v32 = qword_1ED6410A8;
    v33 = os_log_type_enabled(qword_1ED6410A8, OS_LOG_TYPE_DEFAULT);
    if (v33)
    {
      *v43 = 0;
      _os_log_impl(&dword_19D52D000, v32, OS_LOG_TYPE_DEFAULT, "Device has unlocked. Running initialization.", v43, 2u);
    }

    if (dword_1ED641BD4)
    {
      v34 = qword_1ED641BC8;
      v35 = 8 * dword_1ED641BD4;
      do
      {
        v36 = WTF::WorkQueue::mainSingleton(v33);
        v33 = (*(*v36 + 48))(v36, v34);
        v34 += 8;
        v35 -= 8;
      }

      while (v35);
    }

    goto LABEL_31;
  }

LABEL_33:
  result = v38;
  v38 = 0;
  if (result)
  {
    result = (*(*result + 8))(result);
    if (!v10)
    {
      return result;
    }
  }

  else if (!v10)
  {
    return result;
  }

  if (atomic_fetch_add_explicit(v10, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    return WTF::StringImpl::destroy(v10, v31);
  }

  return result;
}

void sub_19D8C0AAC(_Unwind_Exception *a1, WTF::StringImpl *a2)
{
  if (v6)
  {
    (*(*v6 + 8))(v6);
    if (!v5)
    {
LABEL_3:
      if (!v4)
      {
        goto LABEL_4;
      }

      goto LABEL_8;
    }
  }

  else if (!v5)
  {
    goto LABEL_3;
  }

  (*(*v5 + 8))(v5);
  if (!v4)
  {
LABEL_4:
    if (!v3)
    {
LABEL_13:
      if (!v2)
      {
        goto LABEL_16;
      }

      goto LABEL_14;
    }

LABEL_10:

    if (!v2)
    {
      goto LABEL_16;
    }

LABEL_14:
    if (atomic_fetch_add_explicit(v2, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v2, a2);
    }

LABEL_16:
    _Unwind_Resume(a1);
  }

LABEL_8:
  if (v4[4] == 1)
  {
    (*(*v4 + 8))(v4);
    if (!v3)
    {
      goto LABEL_13;
    }
  }

  else
  {
    --v4[4];
    if (!v3)
    {
      goto LABEL_13;
    }
  }

  goto LABEL_10;
}

uint64_t WebPushD::PushService::createMockService(uint64_t *a1, uint64_t *a2)
{
  WTF::StringImpl::createWithoutCopyingNonEmpty();
  v4 = *a1;
  *a1 = 0;
  v5 = *a2;
  *a2 = 0;
  v6 = WTF::fastMalloc(0x18);
  *v6 = &unk_1F10EA8C8;
  v6[1] = v4;
  v6[2] = v5;
  v9 = v6;
  WebCore::PushDatabase::create();
  if (v9)
  {
    (*(*v9 + 8))(v9);
  }

  result = v10;
  if (v10)
  {
    if (atomic_fetch_add_explicit(v10, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      return WTF::StringImpl::destroy(v10, v7);
    }
  }

  return result;
}

void sub_19D8C0CD4(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, WTF::StringImpl *a10)
{
  if (a9)
  {
    (*(*a9 + 8))(a9);
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

uint64_t WebPushD::PushService::PushService(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  *a1 = 0;
  v4 = *a2;
  *a2 = 0;
  *(a1 + 16) = v4;
  v5 = *a3;
  *a3 = 0;
  v6 = *a4;
  *a4 = 0;
  *(a1 + 40) = 0u;
  *(a1 + 8) = 1;
  *(a1 + 24) = v5;
  *(a1 + 32) = v6;
  *(a1 + 56) = 0u;
  if (v6)
  {
    v8 = *(a1 + 16);
    ++v8[4];
    WTF::WeakPtrFactory<WebPushD::PushServiceConnection,WTF::DefaultWeakPtrImpl>::initializeIfNeeded(a1, a1);
    v9 = *a1;
    atomic_fetch_add(*a1, 1u);
    v10 = WTF::fastMalloc(0x10);
    *v10 = &unk_1F10EA8F0;
    v10[1] = v9;
    v15 = v10;
    WebPushD::PushServiceConnection::startListeningForPublicToken(v8, &v15);
    if (v15)
    {
      (*(*v15 + 8))(v15);
    }

    WTF::WeakPtrFactory<WebPushD::PushServiceConnection,WTF::DefaultWeakPtrImpl>::initializeIfNeeded(a1, a1);
    v11 = *a1;
    atomic_fetch_add(*a1, 1u);
    v12 = WTF::fastMalloc(0x10);
    *v12 = &unk_1F10EA918;
    v12[1] = v11;
    v15 = v12;
    WebPushD::PushServiceConnection::startListeningForPushMessages(v8, &v15);
    v13 = v15;
    v15 = 0;
    if (v13)
    {
      (*(*v13 + 8))(v13);
    }

    if (v8[4] == 1)
    {
      (*(*v8 + 8))(v8);
    }

    else
    {
      --v8[4];
    }

    return a1;
  }

  else
  {
    result = 184;
    __break(0xC471u);
  }

  return result;
}

void sub_19D8C0F60(_Unwind_Exception *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  if (a10)
  {
    (*(*a10 + 8))(a10);
  }

  if (v11[4] == 1)
  {
    (*(*v11 + 8))(v11);
  }

  else
  {
    --v11[4];
  }

  v14 = *(v10 + 56);
  if (v14)
  {
    WTF::HashTable<WTF::String,WTF::KeyValuePair<WTF::String,WTF::Deque<WTF::Ref<WebPushD::PushServiceRequest,WTF::RawPtrTraits<WebPushD::PushServiceRequest>,WTF::DefaultRefDerefTraits<WebPushD::PushServiceRequest>>,0ul>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,WTF::Deque<WTF::Ref<WebPushD::PushServiceRequest,WTF::RawPtrTraits<WebPushD::PushServiceRequest>,WTF::DefaultRefDerefTraits<WebPushD::PushServiceRequest>>,0ul>>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,WTF::Deque<WTF::Ref<WebPushD::PushServiceRequest,WTF::RawPtrTraits<WebPushD::PushServiceRequest>,WTF::DefaultRefDerefTraits<WebPushD::PushServiceRequest>>,0ul>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::Deque<WTF::Ref<WebPushD::PushServiceRequest,WTF::RawPtrTraits<WebPushD::PushServiceRequest>,WTF::DefaultRefDerefTraits<WebPushD::PushServiceRequest>>,0ul>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::deallocateTable(v14, a2);
  }

  v15 = *(v10 + 48);
  if (v15)
  {
    WTF::HashTable<WTF::String,WTF::KeyValuePair<WTF::String,WTF::Deque<WTF::Ref<WebPushD::PushServiceRequest,WTF::RawPtrTraits<WebPushD::PushServiceRequest>,WTF::DefaultRefDerefTraits<WebPushD::PushServiceRequest>>,0ul>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,WTF::Deque<WTF::Ref<WebPushD::PushServiceRequest,WTF::RawPtrTraits<WebPushD::PushServiceRequest>,WTF::DefaultRefDerefTraits<WebPushD::PushServiceRequest>>,0ul>>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,WTF::Deque<WTF::Ref<WebPushD::PushServiceRequest,WTF::RawPtrTraits<WebPushD::PushServiceRequest>,WTF::DefaultRefDerefTraits<WebPushD::PushServiceRequest>>,0ul>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::Deque<WTF::Ref<WebPushD::PushServiceRequest,WTF::RawPtrTraits<WebPushD::PushServiceRequest>,WTF::DefaultRefDerefTraits<WebPushD::PushServiceRequest>>,0ul>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::deallocateTable(v15, a2);
  }

  if (*v12)
  {
    WTF::HashTable<WTF::String,WTF::KeyValuePair<WTF::String,WTF::Deque<WTF::Ref<WebPushD::PushServiceRequest,WTF::RawPtrTraits<WebPushD::PushServiceRequest>,WTF::DefaultRefDerefTraits<WebPushD::PushServiceRequest>>,0ul>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,WTF::Deque<WTF::Ref<WebPushD::PushServiceRequest,WTF::RawPtrTraits<WebPushD::PushServiceRequest>,WTF::DefaultRefDerefTraits<WebPushD::PushServiceRequest>>,0ul>>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,WTF::Deque<WTF::Ref<WebPushD::PushServiceRequest,WTF::RawPtrTraits<WebPushD::PushServiceRequest>,WTF::DefaultRefDerefTraits<WebPushD::PushServiceRequest>>,0ul>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::Deque<WTF::Ref<WebPushD::PushServiceRequest,WTF::RawPtrTraits<WebPushD::PushServiceRequest>,WTF::DefaultRefDerefTraits<WebPushD::PushServiceRequest>>,0ul>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::deallocateTable(*v12, a2);
  }

  v16 = *(v10 + 32);
  *(v10 + 32) = 0;
  if (v16)
  {
    (*(*v16 + 8))(v16);
  }

  v17 = *(v10 + 24);
  *(v10 + 24) = 0;
  if (v17)
  {
    WTF::RefCounted<WebCore::PushDatabase>::deref((v17 + 8));
  }

  v18 = *(v10 + 16);
  *(v10 + 16) = 0;
  if (v18)
  {
    if (v18[4] == 1)
    {
      (*(*v18 + 8))(v18);
    }

    else
    {
      --v18[4];
    }
  }

  if (*(v10 + 8) == 1)
  {
    WTF::WeakPtrFactory<WebPushD::PushServiceConnection,WTF::DefaultWeakPtrImpl>::~WeakPtrFactory(v10, a2);
    _Unwind_Resume(a1);
  }

  __break(0xC471u);
}

void WebPushD::PushService::~PushService(WebPushD::PushService *this, void *a2)
{
  v3 = *(this + 7);
  if (v3)
  {
    WTF::HashTable<WTF::String,WTF::KeyValuePair<WTF::String,WTF::Deque<WTF::Ref<WebPushD::PushServiceRequest,WTF::RawPtrTraits<WebPushD::PushServiceRequest>,WTF::DefaultRefDerefTraits<WebPushD::PushServiceRequest>>,0ul>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,WTF::Deque<WTF::Ref<WebPushD::PushServiceRequest,WTF::RawPtrTraits<WebPushD::PushServiceRequest>,WTF::DefaultRefDerefTraits<WebPushD::PushServiceRequest>>,0ul>>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,WTF::Deque<WTF::Ref<WebPushD::PushServiceRequest,WTF::RawPtrTraits<WebPushD::PushServiceRequest>,WTF::DefaultRefDerefTraits<WebPushD::PushServiceRequest>>,0ul>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::Deque<WTF::Ref<WebPushD::PushServiceRequest,WTF::RawPtrTraits<WebPushD::PushServiceRequest>,WTF::DefaultRefDerefTraits<WebPushD::PushServiceRequest>>,0ul>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::deallocateTable(v3, a2);
  }

  v4 = *(this + 6);
  if (v4)
  {
    WTF::HashTable<WTF::String,WTF::KeyValuePair<WTF::String,WTF::Deque<WTF::Ref<WebPushD::PushServiceRequest,WTF::RawPtrTraits<WebPushD::PushServiceRequest>,WTF::DefaultRefDerefTraits<WebPushD::PushServiceRequest>>,0ul>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,WTF::Deque<WTF::Ref<WebPushD::PushServiceRequest,WTF::RawPtrTraits<WebPushD::PushServiceRequest>,WTF::DefaultRefDerefTraits<WebPushD::PushServiceRequest>>,0ul>>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,WTF::Deque<WTF::Ref<WebPushD::PushServiceRequest,WTF::RawPtrTraits<WebPushD::PushServiceRequest>,WTF::DefaultRefDerefTraits<WebPushD::PushServiceRequest>>,0ul>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::Deque<WTF::Ref<WebPushD::PushServiceRequest,WTF::RawPtrTraits<WebPushD::PushServiceRequest>,WTF::DefaultRefDerefTraits<WebPushD::PushServiceRequest>>,0ul>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::deallocateTable(v4, a2);
  }

  v5 = *(this + 5);
  if (v5)
  {
    WTF::HashTable<WTF::String,WTF::KeyValuePair<WTF::String,WTF::Deque<WTF::Ref<WebPushD::PushServiceRequest,WTF::RawPtrTraits<WebPushD::PushServiceRequest>,WTF::DefaultRefDerefTraits<WebPushD::PushServiceRequest>>,0ul>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,WTF::Deque<WTF::Ref<WebPushD::PushServiceRequest,WTF::RawPtrTraits<WebPushD::PushServiceRequest>,WTF::DefaultRefDerefTraits<WebPushD::PushServiceRequest>>,0ul>>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,WTF::Deque<WTF::Ref<WebPushD::PushServiceRequest,WTF::RawPtrTraits<WebPushD::PushServiceRequest>,WTF::DefaultRefDerefTraits<WebPushD::PushServiceRequest>>,0ul>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::Deque<WTF::Ref<WebPushD::PushServiceRequest,WTF::RawPtrTraits<WebPushD::PushServiceRequest>,WTF::DefaultRefDerefTraits<WebPushD::PushServiceRequest>>,0ul>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::deallocateTable(v5, a2);
  }

  v6 = *(this + 4);
  *(this + 4) = 0;
  if (v6)
  {
    (*(*v6 + 8))(v6);
  }

  v7 = *(this + 3);
  *(this + 3) = 0;
  if (v7)
  {
    WTF::RefCounted<WebCore::PushDatabase>::deref((v7 + 8));
  }

  v8 = *(this + 2);
  *(this + 2) = 0;
  if (v8)
  {
    if (v8[4] == 1)
    {
      (*(*v8 + 8))(v8);
    }

    else
    {
      --v8[4];
    }
  }

  if (*(this + 2) == 1)
  {

    WTF::WeakPtrFactory<WebPushD::PushServiceConnection,WTF::DefaultWeakPtrImpl>::~WeakPtrFactory(this, a2);
  }

  else
  {
    __break(0xC471u);
  }
}

void WebPushD::PushServiceRequestImpl<std::optional<WebCore::PushSubscriptionData>>::~PushServiceRequestImpl(WebPushD::PushServiceRequest *this, void *a2)
{
  *this = &unk_1F10EA718;
  v3 = *(this + 12);
  if (v3)
  {
  }

  v4 = *(this + 11);
  *(this + 11) = 0;
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }

  WebPushD::PushServiceRequest::~PushServiceRequest(this, a2);
}

uint64_t WebPushD::GetSubscriptionRequest::startInternal(WebPushD::GetSubscriptionRequest *this)
{
  v1 = *(*(this + 10) + 8);
  if (v1)
  {
    ++*(v1 + 8);
    WTF::WeakPtrFactory<WebPushD::PushServiceConnection,WTF::DefaultWeakPtrImpl>::initializeIfNeeded(this + 2, this);
    v3 = *(this + 1);
    atomic_fetch_add(v3, 1u);
    v4 = WTF::fastMalloc(0x10);
    *v4 = &unk_1F10EA968;
    v4[1] = v3;
    v6 = v4;
    WebCore::PushDatabase::getRecordBySubscriptionSetAndScope();
    if (v6)
    {
      (*(*v6 + 8))(v6);
    }

    return WTF::RefCounted<WebCore::PushDatabase>::deref((v1 + 8));
  }

  else
  {
    result = 103;
    __break(0xC471u);
  }

  return result;
}

void sub_19D8C13B8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  if (a10)
  {
    (*(*a10 + 8))(a10);
  }

  WTF::RefCounted<WebCore::PushDatabase>::deref(v10);
  _Unwind_Resume(a1);
}

void WebPushD::PushServiceRequestImpl<WebCore::PushSubscriptionData>::~PushServiceRequestImpl(WebPushD::PushServiceRequest *this, void *a2)
{
  *this = &unk_1F10EA7B0;
  v3 = *(this + 12);
  if (v3)
  {
  }

  v4 = *(this + 11);
  *(this + 11) = 0;
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }

  WebPushD::PushServiceRequest::~PushServiceRequest(this, a2);
}

uint64_t WebPushD::SubscribeRequest::startImpl(uint64_t a1, char a2)
{
  v2 = *(*(a1 + 80) + 8);
  if (v2)
  {
    ++*(v2 + 8);
    WTF::WeakPtrFactory<WebPushD::PushServiceConnection,WTF::DefaultWeakPtrImpl>::initializeIfNeeded((a1 + 8), a1);
    v5 = *(a1 + 8);
    atomic_fetch_add(v5, 1u);
    v6 = WTF::fastMalloc(0x18);
    *v6 = &unk_1F10EA990;
    *(v6 + 8) = v5;
    *(v6 + 16) = a2;
    v8 = v6;
    WebCore::PushDatabase::getRecordBySubscriptionSetAndScope();
    if (v8)
    {
      (*(*v8 + 8))(v8);
    }

    return WTF::RefCounted<WebCore::PushDatabase>::deref((v2 + 8));
  }

  else
  {
    result = 103;
    __break(0xC471u);
  }

  return result;
}

void sub_19D8C15C0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  if (a10)
  {
    (*(*a10 + 8))(a10);
  }

  WTF::RefCounted<WebCore::PushDatabase>::deref(v10);
  _Unwind_Resume(a1);
}

void WebPushD::PushServiceRequestImpl<BOOL>::~PushServiceRequestImpl(WebPushD::PushServiceRequest *this, void *a2)
{
  *this = &unk_1F10EA800;
  v3 = *(this + 12);
  if (v3)
  {
  }

  v4 = *(this + 11);
  *(this + 11) = 0;
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }

  WebPushD::PushServiceRequest::~PushServiceRequest(this, a2);
}

uint64_t WebPushD::UnsubscribeRequest::startInternal(WebPushD::UnsubscribeRequest *this)
{
  v1 = *(*(this + 10) + 8);
  if (v1)
  {
    ++*(v1 + 8);
    WTF::WeakPtrFactory<WebPushD::PushServiceConnection,WTF::DefaultWeakPtrImpl>::initializeIfNeeded(this + 2, this);
    v3 = *(this + 1);
    atomic_fetch_add(v3, 1u);
    v4 = WTF::fastMalloc(0x10);
    *v4 = &unk_1F10EAA80;
    v4[1] = v3;
    v6 = v4;
    WebCore::PushDatabase::getRecordBySubscriptionSetAndScope();
    if (v6)
    {
      (*(*v6 + 8))(v6);
    }

    return WTF::RefCounted<WebCore::PushDatabase>::deref((v1 + 8));
  }

  else
  {
    result = 103;
    __break(0xC471u);
  }

  return result;
}

void sub_19D8C17B8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  if (a10)
  {
    (*(*a10 + 8))(a10);
  }

  WTF::RefCounted<WebCore::PushDatabase>::deref(v10);
  _Unwind_Resume(a1);
}

uint64_t WebPushD::PushService::enqueuePushServiceRequest(uint64_t *a1, void *a2)
{
  v52 = *MEMORY[0x1E69E9840];
  WebCore::makePushTopic();
  if (v49 == -1)
  {
    __break(0xC471u);
    goto LABEL_76;
  }

  if (!v49)
  {
    __break(0xC471u);
    JUMPOUT(0x19D8C1CB8);
  }

  v6 = *a1;
  if (*a1 || (WTF::HashTable<WTF::String,WTF::KeyValuePair<WTF::String,WTF::Deque<WTF::Ref<WebPushD::PushServiceRequest,WTF::RawPtrTraits<WebPushD::PushServiceRequest>,WTF::DefaultRefDerefTraits<WebPushD::PushServiceRequest>>,0ul>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,WTF::Deque<WTF::Ref<WebPushD::PushServiceRequest,WTF::RawPtrTraits<WebPushD::PushServiceRequest>,WTF::DefaultRefDerefTraits<WebPushD::PushServiceRequest>>,0ul>>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,WTF::Deque<WTF::Ref<WebPushD::PushServiceRequest,WTF::RawPtrTraits<WebPushD::PushServiceRequest>,WTF::DefaultRefDerefTraits<WebPushD::PushServiceRequest>>,0ul>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::Deque<WTF::Ref<WebPushD::PushServiceRequest,WTF::RawPtrTraits<WebPushD::PushServiceRequest>,WTF::DefaultRefDerefTraits<WebPushD::PushServiceRequest>>,0ul>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::expand(a1, 0), (v6 = *a1) != 0))
  {
    v7 = *(v6 - 8);
  }

  else
  {
    v7 = 0;
  }

  v8 = *(v49 + 4);
  if (v8 < 0x100)
  {
    v9 = WTF::StringImpl::hashSlowCase(v49);
  }

  else
  {
    v9 = v8 >> 8;
  }

  v10 = 0;
  for (i = 1; ; ++i)
  {
    v12 = v9 & v7;
    v13 = v6 + 40 * (v9 & v7);
    v14 = *v13;
    if (*v13 == -1)
    {
      v10 = v6 + 40 * v12;
      goto LABEL_14;
    }

    if (!v14)
    {
      break;
    }

    if (WTF::equal(v14, v49, v5))
    {
      v21 = 0;
      goto LABEL_27;
    }

LABEL_14:
    v9 = i + v12;
  }

  if (v10)
  {
    *(v10 + 32) = 0;
    *v10 = 0u;
    *(v10 + 16) = 0u;
    --*(*a1 - 16);
    v13 = v10;
  }

  v15 = v49;
  v49 = 0;
  v16 = *v13;
  *v13 = v15;
  if (v16 && atomic_fetch_add_explicit(v16, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v16, v4);
  }

  v51 = 0;
  v17 = *(v13 + 8);
  *(v13 + 8) = 0;
  *(v13 + 16) = 0;
  *buf = v17;
  v18 = *(v13 + 24);
  *(v13 + 24) = 0;
  *&buf[16] = v18;
  LODWORD(v18) = *(v13 + 32);
  *(v13 + 32) = 0;
  LODWORD(v51) = v18;
  WTF::Deque<WTF::Ref<WebPushD::PushServiceRequest,WTF::RawPtrTraits<WebPushD::PushServiceRequest>,WTF::DefaultRefDerefTraits<WebPushD::PushServiceRequest>>,0ul>::~Deque(buf, v4);
  v19 = *a1;
  if (*a1)
  {
    v20 = *(v19 - 12) + 1;
  }

  else
  {
    v20 = 1;
  }

  *(v19 - 12) = v20;
  v22 = (*(v19 - 16) + v20);
  v23 = *(v19 - 4);
  if (v23 > 0x400)
  {
    if (v23 <= 2 * v22)
    {
LABEL_25:
      v13 = WTF::HashTable<WTF::String,WTF::KeyValuePair<WTF::String,WTF::Deque<WTF::Ref<WebPushD::PushServiceRequest,WTF::RawPtrTraits<WebPushD::PushServiceRequest>,WTF::DefaultRefDerefTraits<WebPushD::PushServiceRequest>>,0ul>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,WTF::Deque<WTF::Ref<WebPushD::PushServiceRequest,WTF::RawPtrTraits<WebPushD::PushServiceRequest>,WTF::DefaultRefDerefTraits<WebPushD::PushServiceRequest>>,0ul>>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,WTF::Deque<WTF::Ref<WebPushD::PushServiceRequest,WTF::RawPtrTraits<WebPushD::PushServiceRequest>,WTF::DefaultRefDerefTraits<WebPushD::PushServiceRequest>>,0ul>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::Deque<WTF::Ref<WebPushD::PushServiceRequest,WTF::RawPtrTraits<WebPushD::PushServiceRequest>,WTF::DefaultRefDerefTraits<WebPushD::PushServiceRequest>>,0ul>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::expand(a1, v13);
    }
  }

  else if (3 * v23 <= 4 * v22)
  {
    goto LABEL_25;
  }

  v21 = 1;
LABEL_27:
  if (v49 && atomic_fetch_add_explicit(v49, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v49, v4);
  }

  v24 = qword_1ED6410A8;
  if (os_log_type_enabled(qword_1ED6410A8, OS_LOG_TYPE_DEFAULT))
  {
    v25 = *a2;
    v26 = *(v13 + 8);
    v27 = *(v13 + 16);
    if (v26 > v27)
    {
      v27 += *(v13 + 32);
    }

    *buf = 134218240;
    *&buf[4] = v25;
    *&buf[12] = 2048;
    *&buf[14] = v27 - v26;
    _os_log_impl(&dword_19D52D000, v24, OS_LOG_TYPE_DEFAULT, "Enqueuing PushServiceRequest %p (current queue size: %zu)", buf, 0x16u);
  }

  v28 = *(v13 + 8);
  v29 = *(v13 + 16);
  if (!v28)
  {
    v30 = *(v13 + 32);
    if (v29)
    {
      if (v29 != v30 - 1)
      {
        goto LABEL_62;
      }
    }

    else if (v30)
    {
      v29 = 0;
      goto LABEL_62;
    }

LABEL_43:
    v31 = v30;
    v32 = (v30 >> 2) + v30;
    if (v32 < 0x1FFFFFFF)
    {
      v33 = *(v13 + 24);
      if (v32 <= 0xF)
      {
        v32 = 15;
      }

      v34 = v32 + 1;
      v35 = WTF::fastMalloc((8 * (v32 + 1)));
      *(v13 + 32) = v34;
      *(v13 + 24) = v35;
      v36 = *(v13 + 8);
      v37 = *(v13 + 16);
      v38 = v37 - v36;
      if (v37 >= v36)
      {
        if (v31 < v36)
        {
          goto LABEL_72;
        }

        if (v38 == -1)
        {
          v38 = v31 - v36;
        }

        else if (v31 - v36 < v38)
        {
          goto LABEL_72;
        }

        memcpy(&v35[8 * v36], &v33[8 * v36], 8 * v38);
        if (!v33)
        {
          goto LABEL_61;
        }
      }

      else
      {
        if (v37 > v31)
        {
          goto LABEL_72;
        }

        memcpy(v35, v33, 8 * v37);
        v39 = *(v13 + 8);
        v40 = v31 - v39;
        if (v31 < v39)
        {
          goto LABEL_72;
        }

        v41 = *(v13 + 32);
        if (v41 < v40)
        {
          goto LABEL_72;
        }

        v42 = v41 - (v31 - v39);
        memcpy((*(v13 + 24) + 8 * v42), &v33[8 * v39], 8 * v40);
        *(v13 + 8) = v42;
        if (!v33)
        {
LABEL_61:
          v29 = *(v13 + 16);
          goto LABEL_62;
        }
      }

      if (*(v13 + 24) == v33)
      {
        *(v13 + 24) = 0;
        *(v13 + 32) = 0;
      }

      WTF::fastFree(v33, v43);
      goto LABEL_61;
    }

    __break(0xC471u);
LABEL_76:
    JUMPOUT(0x19D8C1C98);
  }

  if (v29 + 1 == v28)
  {
    LODWORD(v30) = *(v13 + 32);
    goto LABEL_43;
  }

LABEL_62:
  if (v29 >= *(v13 + 32))
  {
LABEL_72:
    __break(1u);
  }

  v44 = *(v13 + 24);
  v45 = *a2;
  result = (***a2)(*a2);
  *(v44 + 8 * v29) = v45;
  v47 = *(v13 + 16);
  if (v47 == *(v13 + 32) - 1)
  {
    v48 = 0;
  }

  else
  {
    v48 = v47 + 1;
  }

  *(v13 + 16) = v48;
  if (v21)
  {
    return (*(**a2 + 40))();
  }

  return result;
}

void sub_19D8C1CC4(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, WTF::StringImpl *a10)
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

WTF::StringImpl *WebPushD::PushService::finishedPushServiceRequest(uint64_t *a1, uint64_t a2)
{
  WebCore::makePushTopic();
  v6 = *a1;
  if (!*a1)
  {
    goto LABEL_13;
  }

  if (v35 == -1)
  {
    __break(0xC471u);
    JUMPOUT(0x19D8C20E4);
  }

  if (!v35)
  {
    goto LABEL_58;
  }

  v7 = *(v6 - 8);
  v8 = *(v35 + 4);
  v9 = v8 < 0x100 ? WTF::StringImpl::hashSlowCase(v35) : v8 >> 8;
  for (i = 0; ; v9 = ++i + v11)
  {
    v11 = v9 & v7;
    v12 = v6 + 40 * (v9 & v7);
    v13 = *v12;
    if (*v12 == -1)
    {
      continue;
    }

    if (!v13)
    {
      break;
    }

    if (WTF::equal(v13, v35, v5))
    {
      goto LABEL_14;
    }
  }

  if (!*a1)
  {
LABEL_13:
    v12 = 0;
    goto LABEL_14;
  }

  v12 = *a1 + 40 * *(*a1 - 4);
LABEL_14:
  v14 = v35;
  v35 = 0;
  if (v14 && atomic_fetch_add_explicit(v14, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v14, v4);
  }

  v15 = *a1;
  if (*a1)
  {
    v15 += 40 * *(v15 - 4);
  }

  if (v15 == v12)
  {
LABEL_58:
    __break(0xC471u);
    JUMPOUT(0x19D8C2064);
  }

  v16 = *(v12 + 8);
  v17 = *(v12 + 16);
  v18 = v17;
  if (v16 > v17)
  {
    v18 = v17 + *(v12 + 32);
  }

  if (v18 == v16)
  {
    __break(0xC471u);
    goto LABEL_54;
  }

  v19 = *(v12 + 32);
  if (v16 >= v19)
  {
LABEL_54:
    __break(1u);
    goto LABEL_55;
  }

  v20 = *(v12 + 24);
  v21 = *(v20 + 8 * v16);
  *(v20 + 8 * v16) = 0;
  if (v16 == v17)
  {
LABEL_55:
    __break(0xC471u);
    JUMPOUT(0x19D8C20A4);
  }

  v22 = *(v12 + 24);
  v23 = *(v22 + 8 * v16);
  *(v22 + 8 * v16) = 0;
  if (v23)
  {
    v23 = (*(*v23 + 8))(v23);
    v16 = *(v12 + 8);
    v19 = *(v12 + 32);
  }

  if (v16 == v19 - 1)
  {
    v24 = 0;
  }

  else
  {
    v24 = v16 + 1;
  }

  *(v12 + 8) = v24;
  if (v21 != a2)
  {
    __break(0xC471u);
    JUMPOUT(0x19D8C20C4);
  }

  v25 = *(v12 + 16);
  if (v24 > v25)
  {
    v25 += *(v12 + 32);
  }

  if (v25 != v24)
  {
    if (v24 < *(v12 + 32))
    {
      v27 = *(*(v12 + 24) + 8 * v24);
      v23 = (**v27)(v27);
      goto LABEL_48;
    }

    goto LABEL_54;
  }

  v26 = *a1;
  if (*a1)
  {
    v26 += 40 * *(v26 - 4);
    if (v26 == v12)
    {
LABEL_47:
      v27 = 0;
      goto LABEL_48;
    }
  }

  else
  {
    v27 = 0;
    if (!v12)
    {
      goto LABEL_48;
    }
  }

  if (v26 == v12)
  {
    goto LABEL_47;
  }

  v28 = *v12;
  *v12 = -1;
  if (v28 && atomic_fetch_add_explicit(v28, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v28, v4);
  }

  v23 = WTF::Deque<WTF::Ref<WebPushD::PushServiceRequest,WTF::RawPtrTraits<WebPushD::PushServiceRequest>,WTF::DefaultRefDerefTraits<WebPushD::PushServiceRequest>>,0ul>::~Deque(v12 + 8, v4);
  v27 = 0;
  v29 = *a1;
  v30 = vadd_s32(*(*a1 - 16), 0xFFFFFFFF00000001);
  *(v29 - 16) = v30;
  v31 = *(v29 - 4);
  if (6 * v30.i32[1] < v31 && v31 >= 9)
  {
    v23 = WTF::HashTable<WTF::String,WTF::KeyValuePair<WTF::String,WTF::Deque<WTF::Ref<WebPushD::PushServiceRequest,WTF::RawPtrTraits<WebPushD::PushServiceRequest>,WTF::DefaultRefDerefTraits<WebPushD::PushServiceRequest>>,0ul>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,WTF::Deque<WTF::Ref<WebPushD::PushServiceRequest,WTF::RawPtrTraits<WebPushD::PushServiceRequest>,WTF::DefaultRefDerefTraits<WebPushD::PushServiceRequest>>,0ul>>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,WTF::Deque<WTF::Ref<WebPushD::PushServiceRequest,WTF::RawPtrTraits<WebPushD::PushServiceRequest>,WTF::DefaultRefDerefTraits<WebPushD::PushServiceRequest>>,0ul>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::Deque<WTF::Ref<WebPushD::PushServiceRequest,WTF::RawPtrTraits<WebPushD::PushServiceRequest>,WTF::DefaultRefDerefTraits<WebPushD::PushServiceRequest>>,0ul>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::rehash(a1, v31 >> 1, 0);
    goto LABEL_47;
  }

LABEL_48:
  v32 = WTF::WorkQueue::mainSingleton(v23);
  v33 = WTF::fastMalloc(0x18);
  *v33 = &unk_1F10EAB20;
  *(v33 + 1) = v21;
  *(v33 + 2) = v27;
  v35 = v33;
  (*(*v32 + 48))(v32, &v35);
  result = v35;
  v35 = 0;
  if (result)
  {
    return (*(*result + 8))(result);
  }

  return result;
}

void sub_19D8C2108(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, WTF::StringImpl *a10)
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

uint64_t WebPushD::PushService::getSubscription(uint64_t *a1, void *a2, atomic_uint **a3, uint64_t *a4)
{
  v21 = *MEMORY[0x1E69E9840];
  if (!*a2)
  {
    v10 = qword_1ED6410A8;
    if (os_log_type_enabled(qword_1ED6410A8, OS_LOG_TYPE_ERROR))
    {
      v11 = 1;
      goto LABEL_15;
    }

LABEL_10:
    WTF::StringImpl::createWithoutCopyingNonEmpty();
    LOBYTE(v17) = 16;
    v20 = 1;
    WTF::CompletionHandler<void ()(std::experimental::fundamentals_v3::expected<std::optional<WebCore::PushSubscriptionData>,WebCore::ExceptionData> const&)>::operator()(a4);
    return std::experimental::fundamentals_v3::expected<std::optional<WebCore::PushSubscriptionData>,WebCore::ExceptionData>::~expected(&v17, v12);
  }

  v6 = *(*a2 + 4);
  if (!v6 || !*a3 || !(*a3)[1])
  {
    v10 = qword_1ED6410A8;
    if (os_log_type_enabled(qword_1ED6410A8, OS_LOG_TYPE_ERROR))
    {
      v11 = v6 == 0;
LABEL_15:
      if (*a3)
      {
        v16 = (*a3)[1] == 0;
      }

      else
      {
        v16 = 1;
      }

      LODWORD(v17) = 67109376;
      HIDWORD(v17) = v11;
      v18 = 1024;
      v19 = v16;
      _os_log_error_impl(&dword_19D52D000, v10, OS_LOG_TYPE_ERROR, "Ignoring getSubscription request with bundleIdentifier (empty = %d) and scope (empty = %d)", &v17, 0xEu);
      goto LABEL_10;
    }

    goto LABEL_10;
  }

  if (WebPushD::GetSubscriptionRequest::operator new(unsigned long)::s_heapRef)
  {
    NonCompact = bmalloc::api::tzoneAllocateNonCompact(WebPushD::GetSubscriptionRequest::operator new(unsigned long)::s_heapRef, a2);
  }

  else
  {
    NonCompact = bmalloc::api::tzoneAllocateNonCompactSlow();
  }

  v14 = NonCompact;
  WebPushD::PushServiceRequest::PushServiceRequest(NonCompact, a1, a2, a3);
  v15 = *a4;
  *a4 = 0;
  *(v14 + 11) = v15;
  *(v14 + 12) = 0;
  *(v14 + 26) = 1;
  *v14 = &unk_1F10EA628;
  v17 = v14;
  WebPushD::PushService::enqueuePushServiceRequest(a1 + 5, &v17);
  return (*(*v14 + 8))(v14);
}

uint64_t WTF::CompletionHandler<void ()(std::experimental::fundamentals_v3::expected<std::optional<WebCore::PushSubscriptionData>,WebCore::ExceptionData> const&)>::operator()(uint64_t *a1)
{
  v1 = *a1;
  *a1 = 0;
  (*(*v1 + 16))(v1);
  v2 = *(*v1 + 8);

  return v2(v1);
}

uint64_t std::experimental::fundamentals_v3::expected<std::optional<WebCore::PushSubscriptionData>,WebCore::ExceptionData>::~expected(uint64_t a1, void *a2)
{
  if (*(a1 + 88) != 255)
  {
    if (!*(a1 + 88))
    {
      if (*(a1 + 80) != 1)
      {
        goto LABEL_13;
      }

      v3 = *(a1 + 64);
      if (v3)
      {
        *(a1 + 64) = 0;
        *(a1 + 72) = 0;
        WTF::fastFree(v3, a2);
      }

      v4 = *(a1 + 48);
      if (v4)
      {
        *(a1 + 48) = 0;
        *(a1 + 56) = 0;
        WTF::fastFree(v4, a2);
      }

      v5 = *(a1 + 32);
      if (v5)
      {
        *(a1 + 32) = 0;
        *(a1 + 40) = 0;
        WTF::fastFree(v5, a2);
      }
    }

    v6 = *(a1 + 8);
    *(a1 + 8) = 0;
    if (v6 && atomic_fetch_add_explicit(v6, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v6, a2);
    }
  }

LABEL_13:
  *(a1 + 88) = -1;
  return a1;
}

uint64_t WebPushD::PushService::subscribe(uint64_t *a1, WebCore::PushSubscriptionSetIdentifier *a2, WTF::String *a3, uint64_t a4, uint64_t *a5)
{
  v35 = *MEMORY[0x1E69E9840];
  if (!*a2)
  {
    v12 = qword_1ED6410A8;
    if (os_log_type_enabled(qword_1ED6410A8, OS_LOG_TYPE_ERROR))
    {
      v13 = 1;
      goto LABEL_21;
    }

LABEL_11:
    WTF::StringImpl::createWithoutCopyingNonEmpty();
    buf[0] = 16;
    v34 = 1;
    WTF::CompletionHandler<void ()(std::experimental::fundamentals_v3::expected<WebCore::PushSubscriptionData,WebCore::ExceptionData> const&)>::operator()(a5);
    return std::experimental::fundamentals_v3::expected<WebCore::PushSubscriptionData,WebCore::ExceptionData>::~expected(buf, v11);
  }

  v7 = *(*a2 + 4);
  if (!v7 || !*a3 || !*(*a3 + 4))
  {
    v12 = qword_1ED6410A8;
    if (os_log_type_enabled(qword_1ED6410A8, OS_LOG_TYPE_ERROR))
    {
      v13 = v7 == 0;
LABEL_21:
      if (*a3)
      {
        v21 = *(*a3 + 4) == 0;
      }

      else
      {
        v21 = 1;
      }

      *buf = 67109376;
      *&buf[4] = v13;
      *&buf[8] = 1024;
      *&buf[10] = v21;
      _os_log_error_impl(&dword_19D52D000, v12, OS_LOG_TYPE_ERROR, "Ignoring subscribe request with bundleIdentifier (empty = %d) and scope (empty = %d)", buf, 0xEu);
      goto LABEL_11;
    }

    goto LABEL_11;
  }

  if (a1[8] >= 0x40)
  {
    v10 = qword_1ED6410A8;
    if (os_log_type_enabled(qword_1ED6410A8, OS_LOG_TYPE_ERROR))
    {
      WebCore::PushSubscriptionSetIdentifier::debugDescription(&v30, a2);
      WTF::String::ascii(&v31, &v30);
      v22 = v31;
      WTF::String::ascii(&v29, a3);
      v23 = v22 + 16;
      if (!v22)
      {
        v23 = 0;
      }

      if (v29)
      {
        v24 = v29 + 16;
      }

      else
      {
        v24 = 0;
      }

      *buf = 136446467;
      *&buf[4] = v23;
      *&buf[12] = 2085;
      v33 = v24;
      _os_log_error_impl(&dword_19D52D000, v10, OS_LOG_TYPE_ERROR, "Subscribe request from %{public}s and scope %{sensitive}s failed: reached max push topic count", buf, 0x16u);
      v26 = v29;
      v29 = 0;
      if (v26)
      {
        if (*v26 == 1)
        {
          WTF::fastFree(v26, v25);
        }

        else
        {
          --*v26;
        }
      }

      v27 = v31;
      v31 = 0;
      if (v27)
      {
        if (*v27 == 1)
        {
          WTF::fastFree(v27, v25);
        }

        else
        {
          --*v27;
        }
      }

      v28 = v30;
      v30 = 0;
      if (v28)
      {
        if (atomic_fetch_add_explicit(v28, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v28, v25);
        }
      }
    }

    WTF::StringImpl::createWithoutCopyingNonEmpty();
    buf[0] = 31;
    v34 = 1;
    WTF::CompletionHandler<void ()(std::experimental::fundamentals_v3::expected<WebCore::PushSubscriptionData,WebCore::ExceptionData> const&)>::operator()(a5);
    return std::experimental::fundamentals_v3::expected<WebCore::PushSubscriptionData,WebCore::ExceptionData>::~expected(buf, v11);
  }

  if (WebPushD::SubscribeRequest::operator new(unsigned long)::s_heapRef)
  {
    NonCompact = bmalloc::api::tzoneAllocateNonCompact(WebPushD::SubscribeRequest::operator new(unsigned long)::s_heapRef, a2);
  }

  else
  {
    NonCompact = bmalloc::api::tzoneAllocateNonCompactSlow();
  }

  v17 = NonCompact;
  WebPushD::PushServiceRequest::PushServiceRequest(NonCompact, a1, a2, a3);
  v18 = *a5;
  *a5 = 0;
  *(v17 + 11) = v18;
  *(v17 + 12) = 0;
  *(v17 + 26) = 1;
  *v17 = &unk_1F10EA678;
  v19 = *(a4 + 12);
  *(v17 + 14) = 0;
  *(v17 + 15) = 0;
  *(v17 + 31) = v19;
  if (v19)
  {
    v20 = WTF::fastMalloc(v19);
    *(v17 + 30) = v19;
    *(v17 + 14) = v20;
    memcpy(v20, *a4, *(a4 + 12));
  }

  *buf = v17;
  WebPushD::PushService::enqueuePushServiceRequest(a1 + 6, buf);
  return (*(*v17 + 8))(v17);
}

void sub_19D8C2934(_Unwind_Exception *exception_object, void *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, WTF::StringImpl *a11, WTF *a12, char a13)
{
  if (a12)
  {
    if (*a12 == 1)
    {
      WTF::fastFree(a12, a2);
    }

    else
    {
      --*a12;
    }
  }

  if (a11)
  {
    if (atomic_fetch_add_explicit(a11, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(a11, a2);
    }
  }

  _Unwind_Resume(exception_object);
}

uint64_t WTF::CompletionHandler<void ()(std::experimental::fundamentals_v3::expected<WebCore::PushSubscriptionData,WebCore::ExceptionData> const&)>::operator()(uint64_t *a1)
{
  v1 = *a1;
  *a1 = 0;
  (*(*v1 + 16))(v1);
  v2 = *(*v1 + 8);

  return v2(v1);
}

uint64_t std::experimental::fundamentals_v3::expected<WebCore::PushSubscriptionData,WebCore::ExceptionData>::~expected(uint64_t a1, void *a2)
{
  if (*(a1 + 80) != 255)
  {
    if (!*(a1 + 80))
    {
      v3 = *(a1 + 64);
      if (v3)
      {
        *(a1 + 64) = 0;
        *(a1 + 72) = 0;
        WTF::fastFree(v3, a2);
      }

      v4 = *(a1 + 48);
      if (v4)
      {
        *(a1 + 48) = 0;
        *(a1 + 56) = 0;
        WTF::fastFree(v4, a2);
      }

      v5 = *(a1 + 32);
      if (v5)
      {
        *(a1 + 32) = 0;
        *(a1 + 40) = 0;
        WTF::fastFree(v5, a2);
      }
    }

    v6 = *(a1 + 8);
    *(a1 + 8) = 0;
    if (v6 && atomic_fetch_add_explicit(v6, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v6, a2);
    }
  }

  *(a1 + 80) = -1;
  return a1;
}

uint64_t WebPushD::PushService::unsubscribe(uint64_t *a1, void *a2, atomic_uint **a3, uint64_t a4, uint64_t a5, uint64_t *a6)
{
  v25 = *MEMORY[0x1E69E9840];
  if (!*a2)
  {
    v14 = qword_1ED6410A8;
    if (os_log_type_enabled(qword_1ED6410A8, OS_LOG_TYPE_ERROR))
    {
      v15 = 1;
      goto LABEL_15;
    }

LABEL_10:
    WTF::StringImpl::createWithoutCopyingNonEmpty();
    LOBYTE(v21) = 16;
    v24 = 1;
    WTF::CompletionHandler<void ()(std::experimental::fundamentals_v3::expected<BOOL,WebCore::ExceptionData> const&)>::operator()(a6);
    return mpark::detail::move_constructor<mpark::detail::traits<BOOL,WebCore::ExceptionData>,(mpark::detail::Trait)1>::~move_constructor(&v21, v16);
  }

  v8 = *(*a2 + 4);
  if (!v8 || !*a3 || !(*a3)[1])
  {
    v14 = qword_1ED6410A8;
    if (os_log_type_enabled(qword_1ED6410A8, OS_LOG_TYPE_ERROR))
    {
      v15 = v8 == 0;
LABEL_15:
      if (*a3)
      {
        v20 = (*a3)[1] == 0;
      }

      else
      {
        v20 = 1;
      }

      LODWORD(v21) = 67109376;
      HIDWORD(v21) = v15;
      v22 = 1024;
      v23 = v20;
      _os_log_error_impl(&dword_19D52D000, v14, OS_LOG_TYPE_ERROR, "Ignoring unsubscribe request with bundleIdentifier (empty = %d) and scope (empty = %d)", &v21, 0xEu);
      goto LABEL_10;
    }

    goto LABEL_10;
  }

  if (WebPushD::UnsubscribeRequest::operator new(unsigned long)::s_heapRef)
  {
    NonCompact = bmalloc::api::tzoneAllocateNonCompact(WebPushD::UnsubscribeRequest::operator new(unsigned long)::s_heapRef, a2);
  }

  else
  {
    NonCompact = bmalloc::api::tzoneAllocateNonCompactSlow();
  }

  v18 = NonCompact;
  WebPushD::PushServiceRequest::PushServiceRequest(NonCompact, a1, a2, a3);
  v19 = *a6;
  *a6 = 0;
  *(v18 + 11) = v19;
  *(v18 + 12) = 0;
  *(v18 + 26) = 1;
  *v18 = &unk_1F10EA6C8;
  *(v18 + 14) = a4;
  *(v18 + 15) = a5;
  v21 = v18;
  WebPushD::PushService::enqueuePushServiceRequest(a1 + 7, &v21);
  return (*(*v18 + 8))(v18);
}

uint64_t WTF::CompletionHandler<void ()(std::experimental::fundamentals_v3::expected<BOOL,WebCore::ExceptionData> const&)>::operator()(uint64_t *a1)
{
  v1 = *a1;
  *a1 = 0;
  (*(*v1 + 16))(v1);
  v2 = *(*v1 + 8);

  return v2(v1);
}

uint64_t WebPushD::PushService::incrementSilentPushCount(unsigned int *a1, atomic_uint **a2, atomic_uint **a3, uint64_t *a4)
{
  v25 = *MEMORY[0x1E69E9840];
  if (!*a2)
  {
    v18 = qword_1ED6410A8;
    if (os_log_type_enabled(qword_1ED6410A8, OS_LOG_TYPE_ERROR))
    {
      v19 = 1;
      goto LABEL_34;
    }

    return WTF::CompletionHandler<void ()>::operator()(a4);
  }

  v6 = (*a2)[1];
  if (!v6 || !*a3 || !(*a3)[1])
  {
    v18 = qword_1ED6410A8;
    if (os_log_type_enabled(qword_1ED6410A8, OS_LOG_TYPE_ERROR))
    {
      v19 = v6 == 0;
LABEL_34:
      if (*a3)
      {
        v20 = (*a3)[1] == 0;
      }

      else
      {
        v20 = 1;
      }

      *buf = 67109376;
      *&buf[4] = v19;
      v23 = 1024;
      v24 = v20;
      _os_log_error_impl(&dword_19D52D000, v18, OS_LOG_TYPE_ERROR, "Ignoring incrementSilentPushCount request with bundleIdentifier (empty = %d) and securityOrigin (empty = %d)", buf, 0xEu);
      return WTF::CompletionHandler<void ()>::operator()(a4);
    }

    return WTF::CompletionHandler<void ()>::operator()(a4);
  }

  WTF::WeakPtrFactory<WebPushD::PushServiceConnection,WTF::DefaultWeakPtrImpl>::initializeIfNeeded(a1, a1);
  v21 = *a1;
  atomic_fetch_add(*a1, 1u);
  v9 = *a2;
  if (*a2)
  {
    atomic_fetch_add_explicit(v9, 2u, memory_order_relaxed);
  }

  v10 = a2[1];
  if (v10)
  {
    atomic_fetch_add_explicit(v10, 2u, memory_order_relaxed);
  }

  v11 = a2[2];
  v12 = a2[3];
  v13 = *a3;
  if (*a3)
  {
    atomic_fetch_add_explicit(v13, 2u, memory_order_relaxed);
  }

  v14 = *a4;
  *a4 = 0;
  v15 = WTF::fastMalloc(0x50);
  *v15 = &unk_1F10EAB48;
  v15[2] = v21;
  if (v9)
  {
    atomic_fetch_add_explicit(v9, 2u, memory_order_relaxed);
  }

  v15[4] = v9;
  if (v10)
  {
    atomic_fetch_add_explicit(v10, 2u, memory_order_relaxed);
  }

  v15[5] = v10;
  v15[6] = v11;
  v15[7] = v12;
  if (v13)
  {
    atomic_fetch_add_explicit(v13, 2u, memory_order_relaxed);
  }

  v15[8] = v13;
  v15[9] = v14;
  *buf = v15;
  WebCore::PushDatabase::incrementSilentPushCount();
  result = *buf;
  *buf = 0;
  if (result)
  {
    result = (*(*result + 8))(result);
  }

  if (v13 && atomic_fetch_add_explicit(v13, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    result = WTF::StringImpl::destroy(v13, v16);
    if (v10)
    {
LABEL_22:
      if (atomic_fetch_add_explicit(v10, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        result = WTF::StringImpl::destroy(v10, v16);
      }
    }
  }

  else if (v10)
  {
    goto LABEL_22;
  }

  if (v9)
  {
    if (atomic_fetch_add_explicit(v9, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      return WTF::StringImpl::destroy(v9, v16);
    }
  }

  return result;
}

void sub_19D8C3150(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, WTF *a10, uint64_t a11)
{
  if (a11)
  {
    (*(*a11 + 8))(a11);
  }

  if (v13 && atomic_fetch_add_explicit(v13, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v13, a2);
  }

  if (v12 && atomic_fetch_add_explicit(v12, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v12, a2);
  }

  if (v11)
  {
    if (atomic_fetch_add_explicit(v11, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v11, a2);
    }
  }

  _Unwind_Resume(exception_object);
}

uint64_t WTF::CompletionHandler<void ()(unsigned int)>::operator()(uint64_t *a1)
{
  v1 = *a1;
  *a1 = 0;
  (*(*v1 + 16))(v1);
  v2 = *(*v1 + 8);

  return v2(v1);
}

uint64_t WebPushD::PushService::setPushesEnabledForSubscriptionSetAndOrigin(unsigned int *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v19 = *MEMORY[0x1E69E9840];
  if (!*a2)
  {
    v13 = qword_1ED6410A8;
    if (os_log_type_enabled(qword_1ED6410A8, OS_LOG_TYPE_ERROR))
    {
      v14 = 1;
      goto LABEL_13;
    }

    return WTF::CompletionHandler<void ()(void)>::operator()(a5);
  }

  v7 = *(*a2 + 4);
  if (!v7 || !*a3 || !*(*a3 + 4))
  {
    v13 = qword_1ED6410A8;
    if (os_log_type_enabled(qword_1ED6410A8, OS_LOG_TYPE_ERROR))
    {
      v14 = v7 == 0;
LABEL_13:
      if (*a3)
      {
        v15 = *(*a3 + 4) == 0;
      }

      else
      {
        v15 = 1;
      }

      LODWORD(v16) = 67109376;
      HIDWORD(v16) = v14;
      v17 = 1024;
      v18 = v15;
      _os_log_error_impl(&dword_19D52D000, v13, OS_LOG_TYPE_ERROR, "Ignoring setPushesEnabledForBundleIdentifierAndOrigin request with bundleIdentifier (empty = %d) and securityOrigin (empty = %d)", &v16, 0xEu);
      return WTF::CompletionHandler<void ()(void)>::operator()(a5);
    }

    return WTF::CompletionHandler<void ()(void)>::operator()(a5);
  }

  WTF::WeakPtrFactory<WebPushD::PushServiceConnection,WTF::DefaultWeakPtrImpl>::initializeIfNeeded(a1, a1);
  v9 = *a1;
  atomic_fetch_add(v9, 1u);
  v10 = *a5;
  *a5 = 0;
  v11 = WTF::fastMalloc(0x18);
  *v11 = &unk_1F10EAB98;
  v11[1] = v9;
  v11[2] = v10;
  v16 = v11;
  WebCore::PushDatabase::setPushesEnabledForOrigin();
  result = v16;
  v16 = 0;
  if (result)
  {
    return (*(*result + 8))(result);
  }

  return result;
}

void sub_19D8C34B0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9)
{
  if (a9)
  {
    (*(*a9 + 8))(a9);
  }

  _Unwind_Resume(exception_object);
}

unsigned int *WebPushD::PushService::removeRecordsForSubscriptionSet(unsigned int *a1, WebCore::PushSubscriptionSetIdentifier *a2, uint64_t *a3)
{
  v16 = *MEMORY[0x1E69E9840];
  v6 = qword_1ED6410A8;
  if (os_log_type_enabled(qword_1ED6410A8, OS_LOG_TYPE_DEFAULT))
  {
    WebCore::PushSubscriptionSetIdentifier::debugDescription(&v13, a2);
    WTF::String::utf8();
    if (v14)
    {
      v7 = v14 + 16;
    }

    else
    {
      v7 = 0;
    }

    *buf = 136446210;
    *&buf[4] = v7;
    _os_log_impl(&dword_19D52D000, v6, OS_LOG_TYPE_DEFAULT, "Removing push subscriptions associated with %{public}s", buf, 0xCu);
    v9 = v14;
    v14 = 0;
    if (v9)
    {
      if (*v9 == 1)
      {
        WTF::fastFree(v9, v8);
      }

      else
      {
        --*v9;
      }
    }

    v10 = v13;
    v13 = 0;
    if (v10 && atomic_fetch_add_explicit(v10, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v10, v8);
    }
  }

  buf[0] = 0;
  buf[8] = 0;
  result = WebPushD::PushService::removeRecordsImpl(a1, a2, buf, a3);
  if (buf[8] == 1)
  {
    result = *buf;
    *buf = 0;
    if (result)
    {
      if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        return WTF::StringImpl::destroy(result, v12);
      }
    }
  }

  return result;
}

void sub_19D8C36B8(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, WTF::StringImpl *a9, uint64_t a10, WTF::StringImpl *a11, char a12)
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

unsigned int *WebPushD::PushService::removeRecordsImpl(unsigned int *a1, uint64_t a2, _BYTE *a3, uint64_t *a4)
{
  v37 = *MEMORY[0x1E69E9840];
  if (!*a2)
  {
    v15 = qword_1ED6410A8;
    if (os_log_type_enabled(qword_1ED6410A8, OS_LOG_TYPE_ERROR))
    {
      v16 = 1;
      goto LABEL_41;
    }

    return WTF::CompletionHandler<void ()>::operator()(a4);
  }

  v6 = *(*a2 + 4);
  if (!v6 || a3[8] == 1 && (!*a3 || !*(*a3 + 4)))
  {
    v15 = qword_1ED6410A8;
    if (os_log_type_enabled(qword_1ED6410A8, OS_LOG_TYPE_ERROR))
    {
      v16 = v6 == 0;
LABEL_41:
      if (a3[8] == 1)
      {
        if (*a3)
        {
          v26 = *(*a3 + 4) == 0;
        }

        else
        {
          v26 = 1;
        }
      }

      else
      {
        v26 = 0;
      }

      *buf = 67109376;
      *&buf[4] = v16;
      v29 = 1024;
      v30 = v26;
      _os_log_error_impl(&dword_19D52D000, v15, OS_LOG_TYPE_ERROR, "Ignoring removeRecordsImpl request with bundleIdentifier (empty = %d) and securityOrigin (empty = %d)", buf, 0xEu);
      return WTF::CompletionHandler<void ()>::operator()(a4);
    }

    return WTF::CompletionHandler<void ()>::operator()(a4);
  }

  WTF::WeakPtrFactory<WebPushD::PushServiceConnection,WTF::DefaultWeakPtrImpl>::initializeIfNeeded(a1, a1);
  v9 = *a1;
  atomic_fetch_add(*a1, 1u);
  *buf = v9;
  v10 = *a2;
  if (*a2)
  {
    atomic_fetch_add_explicit(v10, 2u, memory_order_relaxed);
  }

  v31 = v10;
  v11 = *(a2 + 8);
  if (v11)
  {
    atomic_fetch_add_explicit(v11, 2u, memory_order_relaxed);
  }

  v32 = v11;
  v33 = *(a2 + 16);
  LOBYTE(v34) = 0;
  v35 = 0;
  if (a3[8] != 1)
  {
    v20 = *a4;
    *a4 = 0;
    v36 = v20;
LABEL_21:
    WTF::CompletionHandler<void ()(WTF::Vector<WebCore::RemovedPushRecord,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&)>::CompletionHandler<WebPushD::PushService::removeRecordsImpl(WebCore::PushSubscriptionSetIdentifier const&,std::optional<WTF::String> const&,WTF::CompletionHandler<void ()> &&)::$_0,void>(&v27, buf);
    WebCore::PushDatabase::removeRecordsBySubscriptionSet();
    goto LABEL_22;
  }

  v12 = *a3;
  if (*a3)
  {
    atomic_fetch_add_explicit(v12, 2u, memory_order_relaxed);
    v13 = a3[8];
    v34 = v12;
    v35 = 1;
    v14 = *a4;
    *a4 = 0;
    v36 = v14;
    if ((v13 & 1) == 0)
    {
      goto LABEL_21;
    }
  }

  else
  {
    v34 = 0;
    v35 = 1;
    v18 = *a4;
    *a4 = 0;
    v36 = v18;
  }

  WTF::CompletionHandler<void ()(WTF::Vector<WebCore::RemovedPushRecord,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&)>::CompletionHandler<WebPushD::PushService::removeRecordsImpl(WebCore::PushSubscriptionSetIdentifier const&,std::optional<WTF::String> const&,WTF::CompletionHandler<void ()> &&)::$_0,void>(&v27, buf);
  WebCore::PushDatabase::removeRecordsBySubscriptionSetAndSecurityOrigin();
LABEL_22:
  v21 = v27;
  v27 = 0;
  if (v21)
  {
    (*(*v21 + 8))(v21);
  }

  v22 = v36;
  v36 = 0;
  if (v22)
  {
    (*(*v22 + 8))(v22);
  }

  if (v35 == 1)
  {
    v23 = v34;
    v34 = 0;
    if (v23)
    {
      if (atomic_fetch_add_explicit(v23, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v23, v19);
      }
    }
  }

  v24 = v32;
  v32 = 0;
  if (v24 && atomic_fetch_add_explicit(v24, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v24, v19);
  }

  v25 = v31;
  v31 = 0;
  if (v25 && atomic_fetch_add_explicit(v25, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v25, v19);
  }

  result = *buf;
  *buf = 0;
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

void sub_19D8C3A60(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, WTF *a11, uint64_t a12, WTF::StringImpl *a13, WTF::StringImpl *a14, uint64_t a15, uint64_t a16, WTF::StringImpl *a17, char a18, uint64_t a19)
{
  if (a10)
  {
    (*(*a10 + 8))(a10);
  }

  if (a19)
  {
    (*(*a19 + 8))(a19);
  }

  if (a18 == 1 && a17 && atomic_fetch_add_explicit(a17, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(a17, a2);
  }

  if (a14 && atomic_fetch_add_explicit(a14, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(a14, a2);
  }

  if (a13 && atomic_fetch_add_explicit(a13, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(a13, a2);
  }

  if (a11)
  {
    if (atomic_fetch_add(a11, 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, a11);
      WTF::fastFree(a11, a2);
    }
  }

  _Unwind_Resume(exception_object);
}

unsigned int *WebPushD::PushService::removeRecordsForSubscriptionSetAndOrigin(unsigned int *a1, WebCore::PushSubscriptionSetIdentifier *a2, atomic_uint **a3, uint64_t *a4)
{
  v24 = *MEMORY[0x1E69E9840];
  v8 = qword_1ED6410A8;
  if (os_log_type_enabled(qword_1ED6410A8, OS_LOG_TYPE_DEFAULT))
  {
    WebCore::PushSubscriptionSetIdentifier::debugDescription(&v19, a2);
    WTF::String::utf8();
    v9 = v20;
    WTF::String::utf8();
    v10 = v9 + 16;
    if (!v9)
    {
      v10 = 0;
    }

    if (v18)
    {
      v11 = v18 + 16;
    }

    else
    {
      v11 = 0;
    }

    *buf = 136446467;
    *&buf[4] = v10;
    v22 = 2085;
    v23 = v11;
    _os_log_impl(&dword_19D52D000, v8, OS_LOG_TYPE_DEFAULT, "Removing push subscriptions associated with %{public}s %{sensitive}s", buf, 0x16u);
    if (v18)
    {
      if (*v18 == 1)
      {
        WTF::fastFree(v18, v12);
      }

      else
      {
        --*v18;
      }
    }

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

    v14 = v19;
    v19 = 0;
    if (v14 && atomic_fetch_add_explicit(v14, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v14, v12);
    }
  }

  v15 = *a3;
  if (*a3)
  {
    atomic_fetch_add_explicit(v15, 2u, memory_order_relaxed);
  }

  *buf = v15;
  buf[8] = 1;
  result = WebPushD::PushService::removeRecordsImpl(a1, a2, buf, a4);
  if (buf[8] == 1)
  {
    result = *buf;
    *buf = 0;
    if (result)
    {
      if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        return WTF::StringImpl::destroy(result, v17);
      }
    }
  }

  return result;
}

void sub_19D8C3D4C(_Unwind_Exception *exception_object, void *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, WTF::StringImpl *a11, WTF *a12, WTF::StringImpl *a13, char a14)
{
  if (a12)
  {
    if (*a12 == 1)
    {
      WTF::fastFree(a12, a2);
    }

    else
    {
      --*a12;
    }
  }

  if (a11)
  {
    if (atomic_fetch_add_explicit(a11, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(a11, a2);
    }
  }

  _Unwind_Resume(exception_object);
}

uint64_t *WTF::CompletionHandler<void ()(WTF::Vector<WebCore::RemovedPushRecord,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&)>::CompletionHandler<WebPushD::PushService::removeRecordsImpl(WebCore::PushSubscriptionSetIdentifier const&,std::optional<WTF::String> const&,WTF::CompletionHandler<void ()(unsigned int)> &&)::$_0,void>(uint64_t *a1, uint64_t *a2)
{
  v4 = WTF::fastMalloc(0x60);
  *v4 = &unk_1F10EABC0;
  v5 = *a2;
  *a2 = 0;
  *(v4 + 16) = v5;
  v6 = a2[2];
  if (v6)
  {
    atomic_fetch_add_explicit(v6, 2u, memory_order_relaxed);
  }

  *(v4 + 32) = v6;
  v7 = a2[3];
  if (v7)
  {
    atomic_fetch_add_explicit(v7, 2u, memory_order_relaxed);
  }

  *(v4 + 40) = v7;
  *(v4 + 48) = *(a2 + 2);
  *(v4 + 64) = 0;
  *(v4 + 72) = 0;
  if (*(a2 + 56) == 1)
  {
    v8 = a2[6];
    if (v8)
    {
      atomic_fetch_add_explicit(v8, 2u, memory_order_relaxed);
    }

    *(v4 + 64) = v8;
    *(v4 + 72) = 1;
  }

  v9 = a2[8];
  a2[8] = 0;
  *(v4 + 80) = v9;
  *a1 = v4;
  return a1;
}

uint64_t WebPushD::PushService::removeRecordsForBundleIdentifierAndDataStore(unsigned int *a1, uint64_t a2, WTF::UUID *a3, uint64_t *a4)
{
  v24 = *MEMORY[0x1E69E9840];
  v7 = qword_1ED6410A8;
  if (os_log_type_enabled(qword_1ED6410A8, OS_LOG_TYPE_DEFAULT))
  {
    WTF::String::utf8();
    if (v20)
    {
      v8 = v20 + 16;
    }

    else
    {
      v8 = 0;
    }

    if (*(a3 + 16) == 1)
    {
      WTF::UUID::toString(&v18, a3);
      WTF::String::ascii(&v19, &v18);
      if (v19)
      {
        v9 = v19 + 16;
      }

      else
      {
        v9 = 0;
      }

      *buf = 136446466;
      *&buf[4] = v8;
      v22 = 2082;
      v23 = v9;
      _os_log_impl(&dword_19D52D000, v7, OS_LOG_TYPE_DEFAULT, "Removing push subscriptions associated with %{public}s | ds: %{public}s", buf, 0x16u);
      v11 = v19;
      v19 = 0;
      if (v11)
      {
        if (*v11 == 1)
        {
          WTF::fastFree(v11, v10);
        }

        else
        {
          --*v11;
        }
      }

      v12 = v18;
      v18 = 0;
      if (v12 && atomic_fetch_add_explicit(v12, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v12, v10);
      }
    }

    else
    {
      *buf = 136446466;
      *&buf[4] = v8;
      v22 = 2082;
      v23 = "default";
      _os_log_impl(&dword_19D52D000, v7, OS_LOG_TYPE_DEFAULT, "Removing push subscriptions associated with %{public}s | ds: %{public}s", buf, 0x16u);
    }

    v13 = v20;
    v20 = 0;
    if (v13)
    {
      if (*v13 == 1)
      {
        WTF::fastFree(v13, v10);
      }

      else
      {
        --*v13;
      }
    }
  }

  WTF::WeakPtrFactory<WebPushD::PushServiceConnection,WTF::DefaultWeakPtrImpl>::initializeIfNeeded(a1, a1);
  v14 = *a1;
  atomic_fetch_add(v14, 1u);
  v15 = *a4;
  *a4 = 0;
  v16 = WTF::fastMalloc(0x18);
  *v16 = &unk_1F10EAC38;
  v16[1] = v14;
  v16[2] = v15;
  *buf = v16;
  WebCore::PushDatabase::removeRecordsByBundleIdentifierAndDataStore();
  result = *buf;
  *buf = 0;
  if (result)
  {
    return (*(*result + 8))(result);
  }

  return result;
}

void sub_19D8C40F8(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, WTF::StringImpl *a10, uint64_t a11, WTF *a12, uint64_t a13)
{
  if (a10 && atomic_fetch_add_explicit(a10, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(a10, a2);
  }

  if (a12)
  {
    if (*a12 == 1)
    {
      WTF::fastFree(a12, a2);
    }

    else
    {
      --*a12;
    }
  }

  _Unwind_Resume(exception_object);
}

uint64_t WebPushD::PushService::updateSubscriptionSetState(unsigned int *a1, atomic_uint **a2, void **a3, uint64_t *a4)
{
  WTF::WeakPtrFactory<WebPushD::PushServiceConnection,WTF::DefaultWeakPtrImpl>::initializeIfNeeded(a1, a1);
  v8 = *a1;
  atomic_fetch_add(*a1, 1u);
  v18 = v8;
  v9 = *a2;
  if (*a2)
  {
    atomic_fetch_add_explicit(v9, 2u, memory_order_relaxed);
  }

  v19 = v9;
  WTF::HashTable<WTF::String,WTF::String,WTF::IdentityExtractor,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::HashTable(&v20, a3);
  v10 = *a4;
  *a4 = 0;
  v21 = v10;
  v11 = WTF::fastMalloc(0x28);
  v12 = v11;
  *v11 = &unk_1F10EACB0;
  v11[1] = v18;
  if (v19)
  {
    atomic_fetch_add_explicit(v19, 2u, memory_order_relaxed);
  }

  v11[2] = v19;
  WTF::HashSet<WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>::HashSet<WTF::HashSet<WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1> const>(v11 + 3, &v20);
  v13 = v21;
  v21 = 0;
  v22 = v12;
  v12[4] = v13;
  WebCore::PushDatabase::getPushSubscriptionSetRecords();
  v15 = v22;
  v22 = 0;
  if (v15)
  {
    (*(*v15 + 8))(v15);
  }

  v16 = v21;
  v21 = 0;
  if (v16)
  {
    (*(*v16 + 8))(v16);
  }

  if (v20)
  {
    WTF::HashTable<WTF::String,WTF::String,WTF::IdentityExtractor,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::deallocateTable(v20, v14);
  }

  if (v19 && atomic_fetch_add_explicit(v19, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v19, v14);
  }

  return 0;
}

void sub_19D8C4390(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, WTF *a10, WTF::StringImpl *a11, WTF::StringImpl **a12, uint64_t a13, uint64_t a14)
{
  if (a14)
  {
    (*(*a14 + 8))(a14);
  }

  if (a13)
  {
    (*(*a13 + 8))(a13);
  }

  if (a12)
  {
    WTF::HashTable<WTF::String,WTF::String,WTF::IdentityExtractor,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::deallocateTable(a12, a2);
  }

  if (a11 && atomic_fetch_add_explicit(a11, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(a11, a2);
  }

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

uint64_t WebPushD::PushService::updateTopicLists(unsigned int *a1, uint64_t *a2)
{
  WTF::WeakPtrFactory<WebPushD::PushServiceConnection,WTF::DefaultWeakPtrImpl>::initializeIfNeeded(a1, a1);
  v4 = *a1;
  atomic_fetch_add(v4, 1u);
  v5 = *a2;
  *a2 = 0;
  v6 = WTF::fastMalloc(0x18);
  *v6 = &unk_1F10EAD78;
  v6[1] = v4;
  v6[2] = v5;
  v8 = v6;
  WebCore::PushDatabase::getTopics();
  result = v8;
  if (v8)
  {
    return (*(*v8 + 8))(v8);
  }

  return result;
}

void sub_19D8C457C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (a10)
  {
    (*(*a10 + 8))(a10);
  }

  _Unwind_Resume(exception_object);
}

void WebPushD::PushService::didReceivePushMessage(unsigned int *a1, uint64_t a2, void *a3, uint64_t *a4)
{
  v83 = *MEMORY[0x1E69E9840];
  v8 = os_transaction_create();
  *v63 = 0u;
  *v64 = 0u;
  *v65 = 0u;
  v9 = objc_autoreleasePoolPush();
  MEMORY[0x19EB02040](&v81, a2);
  v61 = v81;
  v10 = [a3 objectForKeyedSubscript:@"content_encoding"];
  v11 = [a3 objectForKeyedSubscript:@"payload"];
  if (![v10 length] || !objc_msgSend(v11, "length"))
  {
    LODWORD(v62) = 0;
    WebPushD::RawPushMessage::RawPushMessage(v69, &v61);
    v14 = 0;
    v76 = 1;
    goto LABEL_30;
  }

  if ([v10 isEqualToString:@"aes128gcm"])
  {
    LODWORD(v62) = 2;
LABEL_5:
    MEMORY[0x19EB02040](buf, v11);
    WTF::base64Decode();
    v13 = *buf;
    *buf = 0;
    if (v13 && atomic_fetch_add_explicit(v13, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v13, v12);
    }

    v14 = v82;
    if (v82)
    {
      v15 = v63[0];
      if (v63[0])
      {
        v63[0] = 0;
        LODWORD(v63[1]) = 0;
        WTF::fastFree(v15, v12);
      }

      v16 = v81;
      *&v81 = 0;
      v63[0] = v16;
      v17 = *(&v81 + 1);
      HIDWORD(v81) = 0;
      v63[1] = v17;
    }

    else
    {
      v24 = qword_1ED6410A8;
      if (os_log_type_enabled(qword_1ED6410A8, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_error_impl(&dword_19D52D000, v24, OS_LOG_TYPE_ERROR, "Dropping push with improperly encoded payload", buf, 2u);
      }

      LOBYTE(v69[0]) = 0;
      v76 = 0;
    }

    if (v82 == 1)
    {
      v25 = v81;
      if (v81)
      {
        *&v81 = 0;
        DWORD2(v81) = 0;
        WTF::fastFree(v25, v12);
      }
    }

    goto LABEL_30;
  }

  if (![v10 isEqualToString:@"aesgcm"])
  {
    v26 = qword_1ED6410A8;
    if (!os_log_type_enabled(qword_1ED6410A8, OS_LOG_TYPE_ERROR))
    {
LABEL_29:
      v14 = 0;
      LOBYTE(v69[0]) = 0;
      v76 = 0;
      goto LABEL_30;
    }

    v27 = [v10 UTF8String];
    LODWORD(v81) = 136446210;
    *(&v81 + 4) = v27;
    v28 = "Dropping push with unknown content encoding: %{public}s";
    v29 = v26;
    v30 = 12;
LABEL_94:
    _os_log_error_impl(&dword_19D52D000, v29, OS_LOG_TYPE_ERROR, v28, &v81, v30);
    goto LABEL_29;
  }

  LODWORD(v62) = 1;
  v18 = [a3 objectForKeyedSubscript:@"as_publickey"];
  v19 = [a3 objectForKeyedSubscript:@"as_salt"];
  if (!v18 || (v20 = v19) == 0)
  {
    v31 = qword_1ED6410A8;
    if (!os_log_type_enabled(qword_1ED6410A8, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_29;
    }

    LOWORD(v81) = 0;
    v28 = "Dropping aesgcm-encrypted push without required server key and salt";
    v29 = v31;
    v30 = 2;
    goto LABEL_94;
  }

  WebPushD::base64URLDecode(&v81, v18);
  WebPushD::base64URLDecode(buf, v20);
  if (v82 == 1 && (v80 & 1) != 0)
  {
    v22 = v64[0];
    if (v64[0])
    {
      v64[0] = 0;
      LODWORD(v64[1]) = 0;
      WTF::fastFree(v22, v21);
      v23 = v80;
    }

    else
    {
      v23 = 1;
    }

    v58 = *(&v81 + 1);
    v64[0] = v81;
    v81 = 0uLL;
    v64[1] = v58;
    if ((v23 & 1) == 0)
    {
      goto LABEL_95;
    }

    v59 = v65[0];
    if (v65[0])
    {
      v65[0] = 0;
      LODWORD(v65[1]) = 0;
      WTF::fastFree(v59, v21);
    }

    v65[0] = *buf;
    v65[1] = v79;
    if (v82 == 1)
    {
      v60 = v81;
      if (v81)
      {
        *&v81 = 0;
        DWORD2(v81) = 0;
        WTF::fastFree(v60, v21);
      }
    }

    goto LABEL_5;
  }

  v54 = qword_1ED6410A8;
  if (os_log_type_enabled(qword_1ED6410A8, OS_LOG_TYPE_ERROR))
  {
    *v77 = 0;
    _os_log_error_impl(&dword_19D52D000, v54, OS_LOG_TYPE_ERROR, "Dropping aesgcm-encrypted push with improperly encoded server key and salt", v77, 2u);
  }

  LOBYTE(v69[0]) = 0;
  v76 = 0;
  if (v80 == 1)
  {
    v56 = *buf;
    if (*buf)
    {
      *buf = 0;
      LODWORD(v79) = 0;
      WTF::fastFree(v56, v55);
    }
  }

  if (v82 == 1)
  {
    v57 = v81;
    if (v81)
    {
      *&v81 = 0;
      DWORD2(v81) = 0;
      WTF::fastFree(v57, v55);
    }
  }

  v14 = 0;
LABEL_30:
  objc_autoreleasePoolPop(v9);
  if (v14)
  {
    WebPushD::RawPushMessage::RawPushMessage(v69, &v61);
    v76 = 1;
  }

  v33 = v65[0];
  if (v65[0])
  {
    v65[0] = 0;
    LODWORD(v65[1]) = 0;
    WTF::fastFree(v33, v32);
  }

  v34 = v64[0];
  if (v64[0])
  {
    v64[0] = 0;
    LODWORD(v64[1]) = 0;
    WTF::fastFree(v34, v32);
  }

  v35 = v63[0];
  if (v63[0])
  {
    v63[0] = 0;
    LODWORD(v63[1]) = 0;
    WTF::fastFree(v35, v32);
  }

  v36 = v61;
  v61 = 0;
  if (v36 && atomic_fetch_add_explicit(v36, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v36, v32);
  }

  if (v76 == 1)
  {
    MEMORY[0x19EB02040](&v81, a2);
    WTF::WeakPtrFactory<WebPushD::PushServiceConnection,WTF::DefaultWeakPtrImpl>::initializeIfNeeded(a1, a1);
    v37 = *a1;
    atomic_fetch_add(*a1, 1u);
    v61 = v37;
    if (v76)
    {
      WebPushD::RawPushMessage::RawPushMessage(&v62, v69);
      v38 = *a4;
      *a4 = 0;
      v67 = v38;
      v68 = v8;
      v39 = WTF::fastMalloc(0x60);
      *v39 = &unk_1F10EADF0;
      v40 = v61;
      v61 = 0;
      v39[1] = v40;
      WebPushD::RawPushMessage::RawPushMessage((v39 + 2), &v62);
      v39[10] = v67;
      v39[11] = v68;
      v67 = 0;
      v68 = 0;
      *buf = v39;
      WebCore::PushDatabase::getRecordByTopic();
      v42 = *buf;
      *buf = 0;
      if (v42)
      {
        (*(*v42 + 8))(v42);
      }

      if (v68)
      {
      }

      v43 = v67;
      v67 = 0;
      if (v43)
      {
        (*(*v43 + 8))(v43);
      }

      v44 = v65[1];
      if (v65[1])
      {
        v65[1] = 0;
        v66 = 0;
        WTF::fastFree(v44, v41);
      }

      v45 = v64[1];
      if (v64[1])
      {
        v64[1] = 0;
        LODWORD(v65[0]) = 0;
        WTF::fastFree(v45, v41);
      }

      v46 = v63[1];
      if (v63[1])
      {
        v63[1] = 0;
        LODWORD(v64[0]) = 0;
        WTF::fastFree(v46, v41);
      }

      v47 = v62;
      v62 = 0;
      if (v47 && atomic_fetch_add_explicit(v47, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v47, v41);
      }

      v48 = v61;
      v61 = 0;
      if (v48 && atomic_fetch_add(v48, 0xFFFFFFFF) == 1)
      {
        atomic_store(1u, v48);
        WTF::fastFree(v48, v41);
      }

      v49 = v81;
      *&v81 = 0;
      if (v49 && atomic_fetch_add_explicit(v49, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v49, v41);
      }

      if (v76)
      {
        v50 = v74;
        if (v74)
        {
          v74 = 0;
          v75 = 0;
          WTF::fastFree(v50, v41);
        }

        v51 = v72;
        if (v72)
        {
          v72 = 0;
          v73 = 0;
          WTF::fastFree(v51, v41);
        }

        v52 = v70;
        if (v70)
        {
          v70 = 0;
          v71 = 0;
          WTF::fastFree(v52, v41);
        }

        v53 = v69[0];
        v69[0] = 0;
        if (v53)
        {
          if (atomic_fetch_add_explicit(v53, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v53, v41);
          }
        }
      }

      return;
    }

LABEL_95:
    __break(1u);
  }

  if (v8)
  {
  }
}

void sub_19D8C4D58(_Unwind_Exception *exception_object, void *a2, int a3, int a4, int a5, int a6, int a7, int a8, WTF::StringImpl *a9, WTF::StringImpl *a10, WTF *a11, WTF *a12, WTF *a13, WTF *a14, WTF *a15, WTF *a16, int a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, WTF *a22, int a23, WTF *a24, int a25, WTF *a26, int a27, int a28, char a29)
{
  if (*(v30 - 128) == 1)
  {
    v32 = *(v30 - 144);
    if (v32)
    {
      *(v30 - 144) = 0;
      *(v30 - 136) = 0;
      WTF::fastFree(v32, a2);
    }
  }

  if (*(v30 - 96) == 1)
  {
    v33 = *(v30 - 112);
    if (v33)
    {
      *(v30 - 112) = 0;
      *(v30 - 104) = 0;
      WTF::fastFree(v33, a2);
    }
  }

  if (a15)
  {
    WTF::fastFree(a15, a2);
  }

  if (a13)
  {
    WTF::fastFree(a13, a2);
  }

  if (a11)
  {
    WTF::fastFree(a11, a2);
  }

  if (a9 && atomic_fetch_add_explicit(a9, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(a9, a2);
  }

  if (v29)
  {
  }

  _Unwind_Resume(exception_object);
}

uint64_t WebPushD::PushService::didReceivePushMessage(NSString *,NSDictionary *,WTF::CompletionHandler<void ()(void)> &&)::$_0::~$_0(uint64_t a1, void *a2)
{
  v3 = *(a1 + 80);
  if (v3)
  {
  }

  v4 = *(a1 + 72);
  *(a1 + 72) = 0;
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }

  v5 = *(a1 + 56);
  if (v5)
  {
    *(a1 + 56) = 0;
    *(a1 + 64) = 0;
    WTF::fastFree(v5, a2);
  }

  v6 = *(a1 + 40);
  if (v6)
  {
    *(a1 + 40) = 0;
    *(a1 + 48) = 0;
    WTF::fastFree(v6, a2);
  }

  v7 = *(a1 + 24);
  if (v7)
  {
    *(a1 + 24) = 0;
    *(a1 + 32) = 0;
    WTF::fastFree(v7, a2);
  }

  v8 = *(a1 + 8);
  *(a1 + 8) = 0;
  if (v8 && atomic_fetch_add_explicit(v8, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v8, a2);
  }

  v9 = *a1;
  *a1 = 0;
  if (v9 && atomic_fetch_add(v9, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v9);
    WTF::fastFree(v9, a2);
  }

  return a1;
}

void WebPushD::GetSubscriptionRequest::~GetSubscriptionRequest(WebPushD::GetSubscriptionRequest *this, void *a2)
{
  if (*(this + 26) == 1)
  {
    WebPushD::PushServiceRequestImpl<std::optional<WebCore::PushSubscriptionData>>::~PushServiceRequestImpl(this, a2);
  }

  else
  {
    __break(0xC471u);
  }
}

{
  if (*(this + 26) == 1)
  {
    WebPushD::PushServiceRequestImpl<std::optional<WebCore::PushSubscriptionData>>::~PushServiceRequestImpl(this, a2);

    bmalloc::api::tzoneFree(v3, v4);
  }

  else
  {
    __break(0xC471u);
  }
}

WTF::StringImpl *WebPushD::PushServiceRequestImpl<std::optional<WebCore::PushSubscriptionData>>::start(uint64_t *a1)
{
  v49 = *MEMORY[0x1E69E9840];
  v3 = (a1 + 2);
  v2 = a1[2];
  if (v2 && *(v2 + 4) && (v4 = a1[6]) != 0 && *(v4 + 4))
  {
    v5 = (*(*a1 + 32))(a1);
    v7 = v6;
    WebCore::PushSubscriptionSetIdentifier::debugDescription(&v37, v3);
    v8 = a1[6];
    if (v8)
    {
      atomic_fetch_add_explicit(v8, 2u, memory_order_relaxed);
    }

    WTF::makeString<WTF::ASCIILiteral,WTF::ASCIILiteral,char,WTF::String,char,WTF::String>(&v38, v5, v7, v37, v8);
    if (v8 && atomic_fetch_add_explicit(v8, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v8, v9);
    }

    v10 = v37;
    v37 = 0;
    if (v10 && atomic_fetch_add_explicit(v10, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v10, v9);
    }

    WTF::String::utf8();
    v11 = os_transaction_create();
    v13 = a1[12];
    a1[12] = v11;
    if (v13)
    {
    }

    v14 = *buf;
    *buf = 0;
    if (v14)
    {
      if (*v14 == 1)
      {
        WTF::fastFree(v14, v12);
      }

      else
      {
        --*v14;
      }
    }

    v15 = qword_1ED6410A8;
    if (os_log_type_enabled(qword_1ED6410A8, OS_LOG_TYPE_DEFAULT))
    {
      v16 = (*(*a1 + 32))(a1);
      WebCore::PushSubscriptionSetIdentifier::debugDescription(&v41, v3);
      WTF::String::utf8();
      v17 = v42;
      WTF::String::utf8();
      v18 = v17 + 16;
      if (!v17)
      {
        v18 = 0;
      }

      *buf = 136446979;
      if (v40)
      {
        v19 = v40 + 16;
      }

      else
      {
        v19 = 0;
      }

      *&buf[4] = v16;
      *&buf[12] = 2048;
      *&buf[14] = a1;
      v44 = 2082;
      v45 = v18;
      v46 = 2085;
      v47 = v19;
      _os_log_impl(&dword_19D52D000, v15, OS_LOG_TYPE_DEFAULT, "Started pushServiceRequest %{public}s (%p) for %{public}s, scope = %{sensitive}s", buf, 0x2Au);
      v21 = v40;
      v40 = 0;
      if (v21)
      {
        if (*v21 == 1)
        {
          WTF::fastFree(v21, v20);
        }

        else
        {
          --*v21;
        }
      }

      v22 = v42;
      v42 = 0;
      if (v22)
      {
        if (*v22 == 1)
        {
          WTF::fastFree(v22, v20);
        }

        else
        {
          --*v22;
        }
      }

      v23 = v41;
      v41 = 0;
      if (v23 && atomic_fetch_add_explicit(v23, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v23, v20);
      }
    }

    (*(*a1 + 56))(a1);
    result = v38;
    v38 = 0;
    if (result)
    {
      if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        return WTF::StringImpl::destroy(result, v24);
      }
    }
  }

  else
  {
    LOBYTE(v38) = 16;
    WTF::StringImpl::createWithoutCopyingNonEmpty();
    v26 = qword_1ED6410A8;
    if (os_log_type_enabled(qword_1ED6410A8, OS_LOG_TYPE_DEFAULT))
    {
      v27 = (*(*a1 + 32))(a1);
      WebCore::PushSubscriptionSetIdentifier::debugDescription(&v41, v3);
      WTF::String::utf8();
      v28 = v42;
      WTF::String::utf8();
      v29 = v28 + 16;
      if (!v28)
      {
        v29 = 0;
      }

      *buf = 136446979;
      if (v40)
      {
        v30 = v40 + 16;
      }

      else
      {
        v30 = 0;
      }

      *&buf[4] = v27;
      *&buf[12] = 2048;
      *&buf[14] = a1;
      v44 = 2082;
      v45 = v29;
      v46 = 2085;
      v47 = v30;
      _os_log_impl(&dword_19D52D000, v26, OS_LOG_TYPE_DEFAULT, "Finished pushServiceRequest %{public}s (%p) with exception for %{public}s, scope = %{sensitive}s", buf, 0x2Au);
      v32 = v40;
      v40 = 0;
      if (v32)
      {
        if (*v32 == 1)
        {
          WTF::fastFree(v32, v31);
        }

        else
        {
          --*v32;
        }
      }

      v33 = v42;
      v42 = 0;
      if (v33)
      {
        if (*v33 == 1)
        {
          WTF::fastFree(v33, v31);
        }

        else
        {
          --*v33;
        }
      }

      v34 = v41;
      v41 = 0;
      if (v34 && atomic_fetch_add_explicit(v34, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v34, v31);
      }
    }

    v35 = v39;
    v39 = 0;
    buf[0] = v38;
    *&buf[8] = v35;
    v48 = 1;
    WTF::CompletionHandler<void ()(std::experimental::fundamentals_v3::expected<std::optional<WebCore::PushSubscriptionData>,WebCore::ExceptionData> const&)>::operator()(a1 + 11);
    std::experimental::fundamentals_v3::expected<std::optional<WebCore::PushSubscriptionData>,WebCore::ExceptionData>::~expected(buf, v36);
    (*(*a1 + 48))(a1);
    result = 0;
    v39 = 0;
  }

  return result;
}

void sub_19D8C56DC(_Unwind_Exception *exception_object, void *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, WTF::StringImpl *a10, WTF::StringImpl *a11, uint64_t a12, WTF::StringImpl *a13, WTF *a14, WTF *a15)
{
  if (a14)
  {
    if (*a14 == 1)
    {
      WTF::fastFree(a14, a2);
    }

    else
    {
      --*a14;
    }
  }

  if (a13 && atomic_fetch_add_explicit(a13, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(a13, a2);
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

uint64_t WebPushD::GetSubscriptionRequest::finish(WebPushD::GetSubscriptionRequest *this)
{
  v1 = *(*(this + 8) + 8);
  if (v1)
  {
    v3 = *(v1 + 8);
    v2 = v1 + 8;
    *v2 = v3 + 1;
    WebPushD::PushService::finishedPushServiceRequest((v2 + 32), this);

    return WTF::RefCounted<WebPushD::PushService>::deref(v2, v4);
  }

  else
  {
    result = 103;
    __break(0xC471u);
  }

  return result;
}

void WebPushD::UnsubscribeRequest::~UnsubscribeRequest(WebPushD::UnsubscribeRequest *this, void *a2)
{
  if (*(this + 26) == 1)
  {
    WebPushD::PushServiceRequestImpl<BOOL>::~PushServiceRequestImpl(this, a2);
  }

  else
  {
    __break(0xC471u);
  }
}

{
  if (*(this + 26) == 1)
  {
    WebPushD::PushServiceRequestImpl<BOOL>::~PushServiceRequestImpl(this, a2);

    bmalloc::api::tzoneFree(v3, v4);
  }

  else
  {
    __break(0xC471u);
  }
}

WTF::StringImpl *WebPushD::PushServiceRequestImpl<BOOL>::start(uint64_t *a1)
{
  v48 = *MEMORY[0x1E69E9840];
  v3 = (a1 + 2);
  v2 = a1[2];
  if (v2 && *(v2 + 4) && (v4 = a1[6]) != 0 && *(v4 + 4))
  {
    v5 = (*(*a1 + 32))(a1);
    v7 = v6;
    WebCore::PushSubscriptionSetIdentifier::debugDescription(&v37, v3);
    v8 = a1[6];
    if (v8)
    {
      atomic_fetch_add_explicit(v8, 2u, memory_order_relaxed);
    }

    WTF::makeString<WTF::ASCIILiteral,WTF::ASCIILiteral,char,WTF::String,char,WTF::String>(&v38, v5, v7, v37, v8);
    if (v8 && atomic_fetch_add_explicit(v8, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v8, v9);
    }

    v10 = v37;
    v37 = 0;
    if (v10 && atomic_fetch_add_explicit(v10, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v10, v9);
    }

    WTF::String::utf8();
    v11 = os_transaction_create();
    v13 = a1[12];
    a1[12] = v11;
    if (v13)
    {
    }

    v14 = *buf;
    *buf = 0;
    if (v14)
    {
      if (*v14 == 1)
      {
        WTF::fastFree(v14, v12);
      }

      else
      {
        --*v14;
      }
    }

    v15 = qword_1ED6410A8;
    if (os_log_type_enabled(qword_1ED6410A8, OS_LOG_TYPE_DEFAULT))
    {
      v16 = (*(*a1 + 32))(a1);
      WebCore::PushSubscriptionSetIdentifier::debugDescription(&v41, v3);
      WTF::String::utf8();
      v17 = v42;
      WTF::String::utf8();
      v18 = v17 + 16;
      if (!v17)
      {
        v18 = 0;
      }

      *buf = 136446979;
      if (v40)
      {
        v19 = v40 + 16;
      }

      else
      {
        v19 = 0;
      }

      *&buf[4] = v16;
      *&buf[12] = 2048;
      *&buf[14] = a1;
      v44 = 2082;
      v45 = v18;
      v46 = 2085;
      v47 = v19;
      _os_log_impl(&dword_19D52D000, v15, OS_LOG_TYPE_DEFAULT, "Started pushServiceRequest %{public}s (%p) for %{public}s, scope = %{sensitive}s", buf, 0x2Au);
      v21 = v40;
      v40 = 0;
      if (v21)
      {
        if (*v21 == 1)
        {
          WTF::fastFree(v21, v20);
        }

        else
        {
          --*v21;
        }
      }

      v22 = v42;
      v42 = 0;
      if (v22)
      {
        if (*v22 == 1)
        {
          WTF::fastFree(v22, v20);
        }

        else
        {
          --*v22;
        }
      }

      v23 = v41;
      v41 = 0;
      if (v23 && atomic_fetch_add_explicit(v23, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v23, v20);
      }
    }

    (*(*a1 + 56))(a1);
    result = v38;
    v38 = 0;
    if (result)
    {
      if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        return WTF::StringImpl::destroy(result, v24);
      }
    }
  }

  else
  {
    LOBYTE(v38) = 16;
    WTF::StringImpl::createWithoutCopyingNonEmpty();
    v26 = qword_1ED6410A8;
    if (os_log_type_enabled(qword_1ED6410A8, OS_LOG_TYPE_DEFAULT))
    {
      v27 = (*(*a1 + 32))(a1);
      WebCore::PushSubscriptionSetIdentifier::debugDescription(&v41, v3);
      WTF::String::utf8();
      v28 = v42;
      WTF::String::utf8();
      v29 = v28 + 16;
      if (!v28)
      {
        v29 = 0;
      }

      *buf = 136446979;
      if (v40)
      {
        v30 = v40 + 16;
      }

      else
      {
        v30 = 0;
      }

      *&buf[4] = v27;
      *&buf[12] = 2048;
      *&buf[14] = a1;
      v44 = 2082;
      v45 = v29;
      v46 = 2085;
      v47 = v30;
      _os_log_impl(&dword_19D52D000, v26, OS_LOG_TYPE_DEFAULT, "Finished pushServiceRequest %{public}s (%p) with exception for %{public}s, scope = %{sensitive}s", buf, 0x2Au);
      v32 = v40;
      v40 = 0;
      if (v32)
      {
        if (*v32 == 1)
        {
          WTF::fastFree(v32, v31);
        }

        else
        {
          --*v32;
        }
      }

      v33 = v42;
      v42 = 0;
      if (v33)
      {
        if (*v33 == 1)
        {
          WTF::fastFree(v33, v31);
        }

        else
        {
          --*v33;
        }
      }

      v34 = v41;
      v41 = 0;
      if (v34 && atomic_fetch_add_explicit(v34, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v34, v31);
      }
    }

    v35 = v39;
    v39 = 0;
    buf[0] = v38;
    *&buf[8] = v35;
    buf[16] = 1;
    WTF::CompletionHandler<void ()(std::experimental::fundamentals_v3::expected<BOOL,WebCore::ExceptionData> const&)>::operator()(a1 + 11);
    mpark::detail::move_constructor<mpark::detail::traits<BOOL,WebCore::ExceptionData>,(mpark::detail::Trait)1>::~move_constructor(buf, v36);
    (*(*a1 + 48))(a1);
    result = 0;
    v39 = 0;
  }

  return result;
}

void sub_19D8C5E6C(_Unwind_Exception *exception_object, void *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, WTF::StringImpl *a10, WTF::StringImpl *a11, uint64_t a12, WTF::StringImpl *a13, WTF *a14, WTF *a15)
{
  if (a14)
  {
    if (*a14 == 1)
    {
      WTF::fastFree(a14, a2);
    }

    else
    {
      --*a14;
    }
  }

  if (a13 && atomic_fetch_add_explicit(a13, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(a13, a2);
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

uint64_t WebPushD::UnsubscribeRequest::finish(WebPushD::UnsubscribeRequest *this)
{
  v1 = *(*(this + 8) + 8);
  if (v1)
  {
    v3 = *(v1 + 8);
    v2 = v1 + 8;
    *v2 = v3 + 1;
    WebPushD::PushService::finishedPushServiceRequest((v2 + 48), this);

    return WTF::RefCounted<WebPushD::PushService>::deref(v2, v4);
  }

  else
  {
    result = 103;
    __break(0xC471u);
  }

  return result;
}

void WebPushD::SubscribeRequest::~SubscribeRequest(WebPushD::SubscribeRequest *this, void *a2)
{
  WebPushD::SubscribeRequest::~SubscribeRequest(this, a2);

  bmalloc::api::tzoneFree(v2, v3);
}

{
  v3 = *(this + 14);
  if (v3)
  {
    *(this + 14) = 0;
    *(this + 30) = 0;
    WTF::fastFree(v3, a2);
  }

  if (*(this + 26) == 1)
  {

    WebPushD::PushServiceRequestImpl<WebCore::PushSubscriptionData>::~PushServiceRequestImpl(this, a2);
  }

  else
  {
    __break(0xC471u);
  }
}

WTF::StringImpl *WebPushD::PushServiceRequestImpl<WebCore::PushSubscriptionData>::start(uint64_t *a1)
{
  v35 = *MEMORY[0x1E69E9840];
  v3 = (a1 + 2);
  v2 = a1[2];
  if (!v2 || !*(v2 + 4) || (v4 = a1[6]) == 0 || !*(v4 + 4))
  {
    buf[0] = 16;
    WTF::StringImpl::createWithoutCopyingNonEmpty();
    WebPushD::PushServiceRequestImpl<WebCore::PushSubscriptionData>::reject(a1, buf);
    result = *&buf[8];
    *&buf[8] = 0;
    if (!result)
    {
      return result;
    }

    goto LABEL_36;
  }

  v5 = (*(*a1 + 32))(a1);
  v7 = v6;
  WebCore::PushSubscriptionSetIdentifier::debugDescription(&v28, v3);
  v8 = a1[6];
  if (v8)
  {
    atomic_fetch_add_explicit(v8, 2u, memory_order_relaxed);
  }

  WTF::makeString<WTF::ASCIILiteral,WTF::ASCIILiteral,char,WTF::String,char,WTF::String>(&v29, v5, v7, v28, v8);
  if (v8 && atomic_fetch_add_explicit(v8, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v8, v9);
  }

  v10 = v28;
  v28 = 0;
  if (v10 && atomic_fetch_add_explicit(v10, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v10, v9);
  }

  WTF::String::utf8();
  v11 = os_transaction_create();
  v13 = a1[12];
  a1[12] = v11;
  if (v13)
  {
  }

  v14 = *buf;
  *buf = 0;
  if (v14)
  {
    if (*v14 == 1)
    {
      WTF::fastFree(v14, v12);
    }

    else
    {
      --*v14;
    }
  }

  v15 = qword_1ED6410A8;
  if (os_log_type_enabled(qword_1ED6410A8, OS_LOG_TYPE_DEFAULT))
  {
    v16 = (*(*a1 + 32))(a1);
    WebCore::PushSubscriptionSetIdentifier::debugDescription(&v26, v3);
    WTF::String::utf8();
    v17 = v27;
    WTF::String::utf8();
    v18 = v17 + 16;
    if (!v17)
    {
      v18 = 0;
    }

    *buf = 136446979;
    if (v25)
    {
      v19 = v25 + 16;
    }

    else
    {
      v19 = 0;
    }

    *&buf[4] = v16;
    *&buf[12] = 2048;
    *&buf[14] = a1;
    v31 = 2082;
    v32 = v18;
    v33 = 2085;
    v34 = v19;
    _os_log_impl(&dword_19D52D000, v15, OS_LOG_TYPE_DEFAULT, "Started pushServiceRequest %{public}s (%p) for %{public}s, scope = %{sensitive}s", buf, 0x2Au);
    if (v25)
    {
      if (*v25 == 1)
      {
        WTF::fastFree(v25, v20);
      }

      else
      {
        --*v25;
      }
    }

    v21 = v27;
    v27 = 0;
    if (v21)
    {
      if (*v21 == 1)
      {
        WTF::fastFree(v21, v20);
      }

      else
      {
        --*v21;
      }
    }

    v22 = v26;
    v26 = 0;
    if (v22 && atomic_fetch_add_explicit(v22, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v22, v20);
    }
  }

  (*(*a1 + 56))(a1);
  result = v29;
  v29 = 0;
  if (result)
  {
LABEL_36:
    if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      return WTF::StringImpl::destroy(result, v23);
    }
  }

  return result;
}

void sub_19D8C6408(_Unwind_Exception *exception_object, void *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, WTF::StringImpl *a11, WTF *a12, uint64_t a13, WTF::StringImpl *a14, WTF *a15, WTF::StringImpl *a16)
{
  if (a12)
  {
    if (*a12 == 1)
    {
      WTF::fastFree(a12, a2);
    }

    else
    {
      --*a12;
    }
  }

  if (a11 && atomic_fetch_add_explicit(a11, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(a11, a2);
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

uint64_t WebPushD::SubscribeRequest::finish(WebPushD::SubscribeRequest *this)
{
  v1 = *(*(this + 8) + 8);
  if (v1)
  {
    v3 = *(v1 + 8);
    v2 = v1 + 8;
    *v2 = v3 + 1;
    WebPushD::PushService::finishedPushServiceRequest((v2 + 40), this);

    return WTF::RefCounted<WebPushD::PushService>::deref(v2, v4);
  }

  else
  {
    result = 103;
    __break(0xC471u);
  }

  return result;
}

uint64_t ___ZN8WebPushDL23performAfterFirstUnlockEON3WTF8FunctionIFvvEEE_block_invoke(int a1, int val)
{
  result = notify_is_valid_token(val);
  if (result)
  {
    result = MKBDeviceUnlockedSinceBoot();
    if (result == 1)
    {
      v3 = qword_1ED6410A8;
      v4 = os_log_type_enabled(qword_1ED6410A8, OS_LOG_TYPE_DEFAULT);
      if (v4)
      {
        *v8 = 0;
        _os_log_impl(&dword_19D52D000, v3, OS_LOG_TYPE_DEFAULT, "Device has unlocked. Running initialization.", v8, 2u);
      }

      if (dword_1ED641BD4)
      {
        v5 = qword_1ED641BC8;
        v6 = 8 * dword_1ED641BD4;
        do
        {
          v7 = WTF::WorkQueue::mainSingleton(v4);
          v4 = (*(*v7 + 48))(v7, v5);
          v5 += 8;
          v6 -= 8;
        }

        while (v6);
      }

      WTF::Vector<WTF::Function<void ()(void)>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::shrinkCapacity(&qword_1ED641BC8, 0);
      result = WebPushD::performAfterFirstUnlock(WTF::Function<void ()(void)> &&)::notifyToken;
      if (WebPushD::performAfterFirstUnlock(WTF::Function<void ()(void)> &&)::notifyToken != -1)
      {
        result = notify_cancel(WebPushD::performAfterFirstUnlock(WTF::Function<void ()(void)> &&)::notifyToken);
        WebPushD::performAfterFirstUnlock(WTF::Function<void ()(void)> &&)::notifyToken = -1;
      }
    }
  }

  return result;
}

unint64_t WTF::Vector<WTF::Function<void ()(void)>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(uint64_t a1, unint64_t a2, unint64_t a3)
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

    WTF::Vector<WTF::Function<void ()(void)>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::reserveCapacity<(WTF::FailureAction)0>(a1, v13);
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

    WTF::Vector<WTF::Function<void ()(void)>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::reserveCapacity<(WTF::FailureAction)0>(a1, v8);
  }

  return v3;
}

uint64_t WTF::Vector<WTF::Function<void ()(void)>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::reserveCapacity<(WTF::FailureAction)0>(uint64_t a1, unint64_t a2)
{
  if (*(a1 + 8) < a2)
  {
    v2 = a2;
    if (a2 >> 29)
    {
      __break(0xC471u);
      JUMPOUT(0x19D8C6834);
    }

    v4 = *a1;
    v5 = *(a1 + 12);
    v6 = WTF::fastMalloc((8 * a2));
    *(a1 + 8) = v2;
    *a1 = v6;
    if (v5)
    {
      v8 = v6;
      v9 = 8 * v5;
      v10 = v4;
      do
      {
        v11 = *v10;
        *v10 = 0;
        *v8 = v11;
        v12 = *v10;
        *v10 = 0;
        if (v12)
        {
          (*(*v12 + 8))(v12);
        }

        ++v8;
        v10 = (v10 + 8);
        v9 -= 8;
      }

      while (v9);
    }

    if (v4)
    {
      if (*a1 == v4)
      {
        *a1 = 0;
        *(a1 + 8) = 0;
      }

      WTF::fastFree(v4, v7);
    }
  }

  return 1;
}

uint64_t WTF::VectorTypeOperations<WTF::Function<void ()(void)>>::move(uint64_t result, uint64_t *a2, uint64_t *a3)
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

uint64_t WTF::Vector<WTF::Function<void ()(void)>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::shrinkCapacity(uint64_t result, unint64_t a2)
{
  if (*(result + 8) > a2)
  {
    v3 = result;
    if (*(result + 12) > a2)
    {
      result = WTF::Vector<WTF::Function<void ()(void)>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::shrink(result, a2);
    }

    v4 = *v3;
    if (a2)
    {
      if (a2 >> 29)
      {
        __break(0xC471u);
        return result;
      }

      v5 = *(v3 + 12);
      result = WTF::fastMalloc((8 * a2));
      *(v3 + 8) = a2;
      *v3 = result;
      if (result != v4)
      {
        result = WTF::VectorTypeOperations<WTF::Function<void ()(void)>>::move(v4, v4 + v5, result);
      }
    }

    if (v4)
    {
      if (*v3 == v4)
      {
        *v3 = 0;
        *(v3 + 8) = 0;
      }

      return WTF::fastFree(v4, a2);
    }
  }

  return result;
}

uint64_t WTF::Vector<WTF::Function<void ()(void)>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::shrink(uint64_t result, unint64_t a2)
{
  v2 = *(result + 12);
  if (v2 < a2)
  {
    __break(1u);
  }

  else if (v2 == a2)
  {
    goto LABEL_3;
  }

  v3 = (*result + 8 * a2);
  v4 = 8 * v2 - 8 * a2;
  do
  {
    v5 = *v3;
    *v3 = 0;
    if (v5)
    {
      v9 = result;
      v7 = v4;
      v8 = a2;
      v6 = v3;
      (*(*v5 + 8))(v5);
      v3 = v6;
      v4 = v7;
      result = v9;
      a2 = v8;
    }

    ++v3;
    v4 -= 8;
  }

  while (v4);
LABEL_3:
  *(result + 12) = a2;
  return result;
}

uint64_t WTF::HashTable<WTF::String,WTF::KeyValuePair<WTF::String,WTF::Deque<WTF::Ref<WebPushD::PushServiceRequest,WTF::RawPtrTraits<WebPushD::PushServiceRequest>,WTF::DefaultRefDerefTraits<WebPushD::PushServiceRequest>>,0ul>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,WTF::Deque<WTF::Ref<WebPushD::PushServiceRequest,WTF::RawPtrTraits<WebPushD::PushServiceRequest>,WTF::DefaultRefDerefTraits<WebPushD::PushServiceRequest>>,0ul>>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,WTF::Deque<WTF::Ref<WebPushD::PushServiceRequest,WTF::RawPtrTraits<WebPushD::PushServiceRequest>,WTF::DefaultRefDerefTraits<WebPushD::PushServiceRequest>>,0ul>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::Deque<WTF::Ref<WebPushD::PushServiceRequest,WTF::RawPtrTraits<WebPushD::PushServiceRequest>,WTF::DefaultRefDerefTraits<WebPushD::PushServiceRequest>>,0ul>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::deallocateTable(uint64_t a1, void *a2)
{
  v3 = *(a1 - 4);
  if (v3)
  {
    v4 = a1 + 8;
    do
    {
      if (*(v4 - 8) != -1)
      {
        WTF::Deque<WTF::Ref<WebPushD::PushServiceRequest,WTF::RawPtrTraits<WebPushD::PushServiceRequest>,WTF::DefaultRefDerefTraits<WebPushD::PushServiceRequest>>,0ul>::~Deque(v4, a2);
        v5 = *(v4 - 8);
        *(v4 - 8) = 0;
        if (v5)
        {
          if (atomic_fetch_add_explicit(v5, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v5, a2);
          }
        }
      }

      v4 += 40;
      --v3;
    }

    while (v3);
  }

  return WTF::fastFree((a1 - 16), a2);
}

uint64_t WTF::Deque<WTF::Ref<WebPushD::PushServiceRequest,WTF::RawPtrTraits<WebPushD::PushServiceRequest>,WTF::DefaultRefDerefTraits<WebPushD::PushServiceRequest>>,0ul>::~Deque(uint64_t result, void *a2)
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

void WebPushD::PushServiceRequest::~PushServiceRequest(WebPushD::PushServiceRequest *this, void *a2)
{
  *this = &unk_1F10EA768;
  v3 = *(this + 10);
  *(this + 10) = 0;
  if (v3 && atomic_fetch_add(v3, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v3);
    WTF::fastFree(v3, a2);
  }

  v4 = *(this + 9);
  *(this + 9) = 0;
  if (v4 && atomic_fetch_add(v4, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v4);
    WTF::fastFree(v4, a2);
  }

  v5 = *(this + 8);
  *(this + 8) = 0;
  if (v5 && atomic_fetch_add(v5, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v5);
    WTF::fastFree(v5, a2);
  }

  v6 = *(this + 7);
  *(this + 7) = 0;
  if (v6)
  {
    (*(*v6 + 8))(v6);
  }

  v7 = *(this + 6);
  *(this + 6) = 0;
  if (v7 && atomic_fetch_add_explicit(v7, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v7, a2);
  }

  v8 = *(this + 3);
  *(this + 3) = 0;
  if (v8 && atomic_fetch_add_explicit(v8, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v8, a2);
  }

  v9 = *(this + 2);
  *(this + 2) = 0;
  if (v9 && atomic_fetch_add_explicit(v9, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v9, a2);
  }

  WTF::WeakPtrFactory<WebPushD::PushServiceConnection,WTF::DefaultWeakPtrImpl>::~WeakPtrFactory(this + 1, a2);
}

uint64_t mpark::detail::move_constructor<mpark::detail::traits<BOOL,WebCore::ExceptionData>,(mpark::detail::Trait)1>::~move_constructor(uint64_t a1, WTF::StringImpl *a2)
{
  if (*(a1 + 16))
  {
    if (*(a1 + 16) != 255)
    {
      v3 = *(a1 + 8);
      *(a1 + 8) = 0;
      if (v3)
      {
        if (atomic_fetch_add_explicit(v3, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v3, a2);
        }
      }
    }
  }

  *(a1 + 16) = -1;
  return a1;
}

uint64_t *WTF::HashTable<WTF::String,WTF::String,WTF::IdentityExtractor,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::HashTable(uint64_t *a1, void **a2)
{
  *a1 = 0;
  v3 = *a2;
  if (*a2)
  {
    v4 = *(v3 - 3);
    if (v4)
    {
      v6 = WTF::HashTable<WTF::String,WTF::String,WTF::IdentityExtractor,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::computeBestTableSize(*(v3 - 3));
      v7 = WTF::fastZeroedMalloc((8 * v6 + 16));
      *a1 = (v7 + 4);
      v7[2] = v6 - 1;
      v7[3] = v6;
      *v7 = 0;
      v7[1] = v4;
      v8 = WTF::HashTable<WTF::String,WTF::String,WTF::IdentityExtractor,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::begin(a2);
      v10 = v8;
      v11 = v9;
      v12 = *a2 ? &(*a2)[*(*a2 - 1)] : 0;
      if (v12 != v8)
      {
        do
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

          v15 = *(*v10 + 4);
          if (v15 < 0x100)
          {
            v16 = WTF::StringImpl::hashSlowCase(*v10);
          }

          else
          {
            v16 = v15 >> 8;
          }

          v17 = 0;
          do
          {
            v18 = v16 & v14;
            v16 = ++v17 + (v16 & v14);
          }

          while (*(v13 + 8 * v18));
          v19 = *v10;
          if (*v10)
          {
            atomic_fetch_add_explicit(v19, 2u, memory_order_relaxed);
            v20 = *(v13 + 8 * v18);
            *(v13 + 8 * v18) = v19;
            if (v20 && atomic_fetch_add_explicit(v20, 0xFFFFFFFE, memory_order_relaxed) == 2)
            {
              WTF::StringImpl::destroy(v20, v9);
            }
          }

          else
          {
            *(v13 + 8 * v18) = 0;
          }

          do
          {
            ++v10;
          }

          while (v10 != v11 && *v10 + 1 <= 1);
        }

        while (v10 != v12);
      }
    }
  }

  return a1;
}

WTF::StringImpl *WebPushD::base64URLDecode(WebPushD *this, NSString *a2)
{
  MEMORY[0x19EB02040](&v4, a2);
  WTF::base64Decode();
  result = v4;
  v4 = 0;
  if (result)
  {
    if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      return WTF::StringImpl::destroy(result, v2);
    }
  }

  return result;
}

void sub_19D8C6FE4(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, WTF::StringImpl *a10)
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

uint64_t WebPushD::RawPushMessage::RawPushMessage(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  *a2 = 0;
  *a1 = v4;
  *(a1 + 8) = *(a2 + 2);
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  WTF::VectorBuffer<unsigned char,0ul,WTF::FastMalloc>::adopt(a1 + 16, a2 + 2);
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  WTF::VectorBuffer<unsigned char,0ul,WTF::FastMalloc>::adopt(a1 + 32, a2 + 4);
  *(a1 + 48) = 0;
  *(a1 + 56) = 0;
  WTF::VectorBuffer<unsigned char,0ul,WTF::FastMalloc>::adopt(a1 + 48, a2 + 6);
  return a1;
}

void sub_19D8C709C(_Unwind_Exception *exception_object, void *a2)
{
  v7 = *v5;
  if (*v5)
  {
    *(v2 + 48) = 0;
    *(v2 + 56) = 0;
    WTF::fastFree(v7, a2);
  }

  v8 = *v4;
  if (*v4)
  {
    *(v2 + 32) = 0;
    *(v2 + 40) = 0;
    WTF::fastFree(v8, a2);
  }

  v9 = *v3;
  if (*v3)
  {
    *(v2 + 16) = 0;
    *(v2 + 24) = 0;
    WTF::fastFree(v9, a2);
  }

  v10 = *v2;
  *v2 = 0;
  if (v10)
  {
    if (atomic_fetch_add_explicit(v10, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v10, a2);
    }
  }

  _Unwind_Resume(exception_object);
}

_DWORD *WTF::RefCounted<WebPushD::GetSubscriptionRequest>::deref(_DWORD *result, void *a2)
{
  if (*result == 1)
  {
    WebPushD::PushServiceRequestImpl<std::optional<WebCore::PushSubscriptionData>>::~PushServiceRequestImpl((result - 26), a2);

    return bmalloc::api::tzoneFree(v3, v4);
  }

  else
  {
    --*result;
  }

  return result;
}

_DWORD *WTF::RefCounted<WebPushD::PushService>::deref(_DWORD *result, void *a2)
{
  if (*result == 1)
  {
    WebPushD::PushService::~PushService((result - 2), a2);

    return bmalloc::api::tzoneFree(v3, v4);
  }

  else
  {
    --*result;
  }

  return result;
}

_DWORD *WTF::RefCounted<WebPushD::UnsubscribeRequest>::deref(_DWORD *result, void *a2)
{
  if (*result == 1)
  {
    WebPushD::PushServiceRequestImpl<BOOL>::~PushServiceRequestImpl((result - 26), a2);

    return bmalloc::api::tzoneFree(v3, v4);
  }

  else
  {
    --*result;
  }

  return result;
}

void *WTF::Detail::CallableWrapper<WebPushD::PushService::create(WTF::String const&,WTF::String const&,WTF::Function<void ()(WebCore::PushSubscriptionSetIdentifier const&,WebKit::WebPushMessage &&)> &&,WTF::CompletionHandler<void ()(WTF::RefPtr<WebPushD::PushService,WTF::RawPtrTraits<WebPushD::PushService>,WTF::DefaultRefDerefTraits<WebPushD::PushService>> &&)> &&)::$_0,void>::~CallableWrapper(void *a1, WTF::StringImpl *a2)
{
  *a1 = &unk_1F10EA850;
  v3 = a1[5];
  a1[5] = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  v4 = a1[4];
  a1[4] = 0;
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }

  v5 = a1[3];
  a1[3] = 0;
  if (v5)
  {
    if (v5[4] == 1)
    {
      (*(*v5 + 8))(v5);
    }

    else
    {
      --v5[4];
    }
  }

  v6 = a1[2];
  if (v6)
  {
  }

  v7 = a1[1];
  a1[1] = 0;
  if (v7 && atomic_fetch_add_explicit(v7, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v7, a2);
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WebPushD::PushService::create(WTF::String const&,WTF::String const&,WTF::Function<void ()(WebCore::PushSubscriptionSetIdentifier const&,WebKit::WebPushMessage &&)> &&,WTF::CompletionHandler<void ()(WTF::RefPtr<WebPushD::PushService,WTF::RawPtrTraits<WebPushD::PushService>,WTF::DefaultRefDerefTraits<WebPushD::PushService>> &&)> &&)::$_0,void>::~CallableWrapper(WTF *this, WTF::StringImpl *a2)
{
  *this = &unk_1F10EA850;
  v3 = *(this + 5);
  *(this + 5) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  v4 = *(this + 4);
  *(this + 4) = 0;
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }

  v5 = *(this + 3);
  *(this + 3) = 0;
  if (v5)
  {
    if (v5[4] == 1)
    {
      (*(*v5 + 8))(v5);
    }

    else
    {
      --v5[4];
    }
  }

  v6 = *(this + 2);
  if (v6)
  {
  }

  v7 = *(this + 1);
  *(this + 1) = 0;
  if (v7 && atomic_fetch_add_explicit(v7, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v7, a2);
  }

  return WTF::fastFree(this, a2);
}

uint64_t WTF::Detail::CallableWrapper<WebPushD::PushService::create(WTF::String const&,WTF::String const&,WTF::Function<void ()(WebCore::PushSubscriptionSetIdentifier const&,WebKit::WebPushMessage &&)> &&,WTF::CompletionHandler<void ()(WTF::RefPtr<WebPushD::PushService,WTF::RawPtrTraits<WebPushD::PushService>,WTF::DefaultRefDerefTraits<WebPushD::PushService>> &&)> &&)::$_0,void>::call(void *a1)
{
  v2 = a1[2];
  if (v2)
  {
    v3 = v2;
  }

  v4 = a1[3];
  v5 = a1[4];
  a1[3] = 0;
  a1[4] = 0;
  v6 = a1[5];
  a1[5] = 0;
  v7 = WTF::fastMalloc(0x28);
  *v7 = &unk_1F10EA878;
  v7[1] = v2;
  v7[2] = v4;
  v7[3] = v5;
  v7[4] = v6;
  v9 = v7;
  WebCore::PushDatabase::create();
  result = v9;
  if (v9)
  {
    return (*(*v9 + 8))(v9);
  }

  return result;
}

void sub_19D8C74C4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (a10)
  {
    (*(*a10 + 8))(a10);
  }

  _Unwind_Resume(exception_object);
}

void *_ZN3WTF6Detail15CallableWrapperIZZN8WebPushD11PushService6createERKNS_6StringES6_ONS_8FunctionIFvRKN7WebCore29PushSubscriptionSetIdentifierEON6WebKit14WebPushMessageEEEEONS_17CompletionHandlerIFvONS_6RefPtrIS3_NS_12RawPtrTraitsIS3_EENS_21DefaultRefDerefTraitsIS3_EEEEEEEEN3__0clEvEUlOT_E_vJONSJ_INS8_12PushDatabaseENSK_ISX_EENSM_ISX_EEEEEED1Ev(void *a1)
{
  *a1 = &unk_1F10EA878;
  v2 = a1[4];
  a1[4] = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  v3 = a1[3];
  a1[3] = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  v4 = a1[2];
  a1[2] = 0;
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

  v5 = a1[1];
  if (v5)
  {
  }

  return a1;
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZZN8WebPushD11PushService6createERKNS_6StringES6_ONS_8FunctionIFvRKN7WebCore29PushSubscriptionSetIdentifierEON6WebKit14WebPushMessageEEEEONS_17CompletionHandlerIFvONS_6RefPtrIS3_NS_12RawPtrTraitsIS3_EENS_21DefaultRefDerefTraitsIS3_EEEEEEEEN3__0clEvEUlOT_E_vJONSJ_INS8_12PushDatabaseENSK_ISX_EENSM_ISX_EEEEEED0Ev(WTF *this, void *a2)
{
  *this = &unk_1F10EA878;
  v3 = *(this + 4);
  *(this + 4) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  v4 = *(this + 3);
  *(this + 3) = 0;
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }

  v5 = *(this + 2);
  *(this + 2) = 0;
  if (v5)
  {
    if (v5[4] == 1)
    {
      (*(*v5 + 8))(v5);
    }

    else
    {
      --v5[4];
    }
  }

  v6 = *(this + 1);
  if (v6)
  {
  }

  return WTF::fastFree(this, a2);
}

_DWORD *_ZN3WTF6Detail15CallableWrapperIZZN8WebPushD11PushService6createERKNS_6StringES6_ONS_8FunctionIFvRKN7WebCore29PushSubscriptionSetIdentifierEON6WebKit14WebPushMessageEEEEONS_17CompletionHandlerIFvONS_6RefPtrIS3_NS_12RawPtrTraitsIS3_EENS_21DefaultRefDerefTraitsIS3_EEEEEEEEN3__0clEvEUlOT_E_vJONSJ_INS8_12PushDatabaseENSK_ISX_EENSM_ISX_EEEEEE4callES11_(void *a1, uint64_t *a2)
{
  if (*a2)
  {
    v4 = WebPushD::PushService::operator new(0x48, a2);
    v5 = a1[2];
    a1[2] = 0;
    v15 = *a2;
    *buf = v5;
    *a2 = 0;
    WebPushD::PushService::PushService(v4, buf, &v15, a1 + 3);
    if (v15)
    {
      WTF::RefCounted<WebCore::PushDatabase>::deref((v15 + 8));
    }

    if (*buf)
    {
      if (*(*buf + 16) == 1)
      {
        (*(**buf + 8))();
      }

      else
      {
        --*(*buf + 16);
      }
    }

    v6 = a1[1];
    if (v6)
    {
      v7 = v6;
    }

    ++v4[2];
    v8 = a1[4];
    a1[4] = 0;
    v9 = WTF::fastMalloc(0x20);
    *v9 = &unk_1F10EA8A0;
    v9[1] = v6;
    v9[2] = v4;
    v9[3] = v8;
    *buf = v9;
    WebPushD::PushService::updateTopicLists(v4, buf);
    if (*buf)
    {
      (*(**buf + 8))(*buf);
    }

    return WTF::RefCounted<WebPushD::PushService>::deref(v4 + 2, v10);
  }

  else
  {
    v12 = qword_1ED6410A8;
    if (os_log_type_enabled(qword_1ED6410A8, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_19D52D000, v12, OS_LOG_TYPE_ERROR, "Push service initialization failed with database error", buf, 2u);
    }

    *buf = 0;
    result = WTF::CompletionHandler<void ()(WTF::RefPtr<WebPushD::PushService,WTF::RawPtrTraits<WebPushD::PushService>,WTF::DefaultRefDerefTraits<WebPushD::PushService>> &&)>::operator()(a1 + 4);
    v14 = *buf;
    *buf = 0;
    if (v14)
    {
      return WTF::RefCounted<WebPushD::PushService>::deref((v14 + 8), v13);
    }
  }

  return result;
}

void sub_19D8C7990(_Unwind_Exception *exception_object, void *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  if (a11)
  {
    WTF::RefCounted<WebPushD::PushService>::deref((a11 + 8), a2);
  }

  _Unwind_Resume(exception_object);
}

uint64_t WTF::CompletionHandler<void ()(WTF::RefPtr<WebPushD::PushService,WTF::RawPtrTraits<WebPushD::PushService>,WTF::DefaultRefDerefTraits<WebPushD::PushService>> &&)>::operator()(uint64_t *a1)
{
  v1 = *a1;
  *a1 = 0;
  (*(*v1 + 16))(v1);
  v2 = *(*v1 + 8);

  return v2(v1);
}

uint64_t WebPushD::PushService::operator new(WebPushD::PushService *this, void *a2)
{
  if (WebPushD::PushService::s_heapRef)
  {
    return bmalloc::api::tzoneAllocateNonCompact(WebPushD::PushService::s_heapRef, a2);
  }

  else
  {
    return WebPushD::PushService::operatorNewSlow(0x48);
  }
}

void *_ZN3WTF6Detail15CallableWrapperIZZZN8WebPushD11PushService6createERKNS_6StringES6_ONS_8FunctionIFvRKN7WebCore29PushSubscriptionSetIdentifierEON6WebKit14WebPushMessageEEEEONS_17CompletionHandlerIFvONS_6RefPtrIS3_NS_12RawPtrTraitsIS3_EENS_21DefaultRefDerefTraitsIS3_EEEEEEEEN3__0clEvENUlOT_E_clINSJ_INS8_12PushDatabaseENSK_ISY_EENSM_ISY_EEEEEEDaSV_EUlvE_vJEED1Ev(void *a1, void *a2)
{
  *a1 = &unk_1F10EA8A0;
  v3 = a1[3];
  a1[3] = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  v4 = a1[2];
  a1[2] = 0;
  if (v4)
  {
    WTF::RefCounted<WebPushD::PushService>::deref((v4 + 8), a2);
  }

  v5 = a1[1];
  if (v5)
  {
  }

  return a1;
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZZZN8WebPushD11PushService6createERKNS_6StringES6_ONS_8FunctionIFvRKN7WebCore29PushSubscriptionSetIdentifierEON6WebKit14WebPushMessageEEEEONS_17CompletionHandlerIFvONS_6RefPtrIS3_NS_12RawPtrTraitsIS3_EENS_21DefaultRefDerefTraitsIS3_EEEEEEEEN3__0clEvENUlOT_E_clINSJ_INS8_12PushDatabaseENSK_ISY_EENSM_ISY_EEEEEEDaSV_EUlvE_vJEED0Ev(WTF *this, void *a2)
{
  *this = &unk_1F10EA8A0;
  v3 = *(this + 3);
  *(this + 3) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  v4 = *(this + 2);
  *(this + 2) = 0;
  if (v4)
  {
    WTF::RefCounted<WebPushD::PushService>::deref((v4 + 8), a2);
  }

  v5 = *(this + 1);
  if (v5)
  {
  }

  return WTF::fastFree(this, a2);
}

_DWORD *_ZN3WTF6Detail15CallableWrapperIZZZN8WebPushD11PushService6createERKNS_6StringES6_ONS_8FunctionIFvRKN7WebCore29PushSubscriptionSetIdentifierEON6WebKit14WebPushMessageEEEEONS_17CompletionHandlerIFvONS_6RefPtrIS3_NS_12RawPtrTraitsIS3_EENS_21DefaultRefDerefTraitsIS3_EEEEEEEEN3__0clEvENUlOT_E_clINSJ_INS8_12PushDatabaseENSK_ISY_EENSM_ISY_EEEEEEDaSV_EUlvE_vJEE4callEv(uint64_t a1)
{
  v1 = *(a1 + 16);
  *(a1 + 16) = 0;
  v4 = v1;
  result = WTF::CompletionHandler<void ()(WTF::RefPtr<WebPushD::PushService,WTF::RawPtrTraits<WebPushD::PushService>,WTF::DefaultRefDerefTraits<WebPushD::PushService>> &&)>::operator()((a1 + 24));
  if (v4)
  {
    return WTF::RefCounted<WebPushD::PushService>::deref((v4 + 8), v3);
  }

  return result;
}

void sub_19D8C7CE4(_Unwind_Exception *exception_object, void *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (a10)
  {
    WTF::RefCounted<WebPushD::PushService>::deref((a10 + 8), a2);
  }

  _Unwind_Resume(exception_object);
}

void *WTF::Detail::CallableWrapper<WebPushD::PushService::createMockService(WTF::Function<void ()(WebCore::PushSubscriptionSetIdentifier const&,WebKit::WebPushMessage &&)> &&,WTF::CompletionHandler<void ()(WTF::RefPtr<WebPushD::PushService,WTF::RawPtrTraits<WebPushD::PushService>,WTF::DefaultRefDerefTraits<WebPushD::PushService>> &&)> &&)::$_0,void,WTF::Function<void ()(WebCore::PushSubscriptionSetIdentifier const&,WebKit::WebPushMessage &&)> &&<WebCore::PushDatabase,WTF::CompletionHandler<WTF::CompletionHandler<void ()(WTF::RefPtr<WebPushD::PushService,WTF::RawPtrTraits<WebPushD::PushService>,WTF::DefaultRefDerefTraits<WebPushD::PushService>> &&)>>,WTF::RawPtrTraits<WTF::CompletionHandler<void ()(WTF::RefPtr<WebPushD::PushService,WTF::RawPtrTraits<WebPushD::PushService>,WTF::DefaultRefDerefTraits<WebPushD::PushService>> &&)>>> &&>::~CallableWrapper(void *a1)
{
  *a1 = &unk_1F10EA8C8;
  v2 = a1[2];
  a1[2] = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  v3 = a1[1];
  a1[1] = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WebPushD::PushService::createMockService(WTF::Function<void ()(WebCore::PushSubscriptionSetIdentifier const&,WebKit::WebPushMessage &&)> &&,WTF::CompletionHandler<void ()(WTF::RefPtr<WebPushD::PushService,WTF::RawPtrTraits<WebPushD::PushService>,WTF::DefaultRefDerefTraits<WebPushD::PushService>> &&)> &&)::$_0,void,WTF::Function<void ()(WebCore::PushSubscriptionSetIdentifier const&,WebKit::WebPushMessage &&)> &&<WebCore::PushDatabase,WTF::CompletionHandler<WTF::CompletionHandler<void ()(WTF::RefPtr<WebPushD::PushService,WTF::RawPtrTraits<WebPushD::PushService>,WTF::DefaultRefDerefTraits<WebPushD::PushService>> &&)>>,WTF::RawPtrTraits<WTF::CompletionHandler<void ()(WTF::RefPtr<WebPushD::PushService,WTF::RawPtrTraits<WebPushD::PushService>,WTF::DefaultRefDerefTraits<WebPushD::PushService>> &&)>>> &&>::~CallableWrapper(WTF *this, void *a2)
{
  *this = &unk_1F10EA8C8;
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
    (*(*v4 + 8))(v4);
  }

  return WTF::fastFree(this, a2);
}

_DWORD *WTF::Detail::CallableWrapper<WebPushD::PushService::createMockService(WTF::Function<void ()(WebCore::PushSubscriptionSetIdentifier const&,WebKit::WebPushMessage &&)> &&,WTF::CompletionHandler<void ()(WTF::RefPtr<WebPushD::PushService,WTF::RawPtrTraits<WebPushD::PushService>,WTF::DefaultRefDerefTraits<WebPushD::PushService>> &&)> &&)::$_0,void,WTF::Function<void ()(WebCore::PushSubscriptionSetIdentifier const&,WebKit::WebPushMessage &&)> &&<WebCore::PushDatabase,WTF::CompletionHandler<WTF::CompletionHandler<void ()(WTF::RefPtr<WebPushD::PushService,WTF::RawPtrTraits<WebPushD::PushService>,WTF::DefaultRefDerefTraits<WebPushD::PushService>> &&)>>,WTF::RawPtrTraits<WTF::CompletionHandler<void ()(WTF::RefPtr<WebPushD::PushService,WTF::RawPtrTraits<WebPushD::PushService>,WTF::DefaultRefDerefTraits<WebPushD::PushService>> &&)>>> &&>::call(uint64_t a1, uint64_t *a2)
{
  if (*a2)
  {
    v4 = WebPushD::PushServiceConnection::operatorNewSlow(0x98);
    WebPushD::MockPushServiceConnection::MockPushServiceConnection(v4);
    v6 = WebPushD::PushService::operator new(0x48, v5);
    v10 = *a2;
    v11 = v4;
    *a2 = 0;
    WebPushD::PushService::PushService(v6, &v11, &v10, (a1 + 8));
    v12 = v6;
    WTF::CompletionHandler<void ()(WTF::RefPtr<WebPushD::PushService,WTF::RawPtrTraits<WebPushD::PushService>,WTF::DefaultRefDerefTraits<WebPushD::PushService>> &&)>::operator()((a1 + 16));
    v8 = v12;
    v12 = 0;
    if (v8)
    {
      WTF::RefCounted<WebPushD::PushService>::deref((v8 + 8), v7);
    }

    if (v10)
    {
      WTF::RefCounted<WebCore::PushDatabase>::deref((v10 + 8));
    }

    result = v11;
    if (v11)
    {
      if (*(v11 + 4) == 1)
      {
        return (*(*v11 + 8))();
      }

      else
      {
        --*(v11 + 4);
      }
    }
  }

  else
  {
    result = WTF::CompletionHandler<void ()(WTF::RefPtr<WebPushD::PushService,WTF::RawPtrTraits<WebPushD::PushService>,WTF::DefaultRefDerefTraits<WebPushD::PushService>> &&)>::operator()((a1 + 16));
    v12 = 0;
  }

  return result;
}

void sub_19D8C7F64(_Unwind_Exception *exception_object, void *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  if (a12)
  {
    WTF::RefCounted<WebPushD::PushService>::deref((a12 + 8), a2);
  }

  _Unwind_Resume(exception_object);
}

_DWORD *WTF::RefCounted<WebCore::PushDatabase>::deref(_DWORD *result)
{
  if (*result == 1)
  {
    v2 = MEMORY[0x19EB045A0](result - 2);

    return bmalloc::api::tzoneFree(v2, v3);
  }

  else
  {
    --*result;
  }

  return result;
}

void *WTF::Detail::CallableWrapper<WebPushD::PushService::PushService(WTF::Ref<WebPushD::PushServiceConnection,WTF::RawPtrTraits<WebPushD::PushServiceConnection>,WTF::DefaultRefDerefTraits<WebPushD::PushServiceConnection>> &&,WTF::Ref<WebCore::PushDatabase,WTF::RawPtrTraits<WebCore>,WTF::DefaultRefDerefTraits<WebCore>> &&,WTF::Function<void ()(WTF::Ref<WebPushD::PushServiceConnection,WTF::RawPtrTraits<WebPushD::PushServiceConnection>,WTF::DefaultRefDerefTraits<WebPushD::PushServiceConnection>> &&::PushSubscriptionSetIdentifier const&,WebKit::WebPushMessage &&)> &&)::$_0,void,WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&>::~CallableWrapper(void *a1, void *a2)
{
  v3 = a1[1];
  *a1 = &unk_1F10EA8F0;
  a1[1] = 0;
  if (v3 && atomic_fetch_add(v3, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v3);
    WTF::fastFree(v3, a2);
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WebPushD::PushService::PushService(WTF::Ref<WebPushD::PushServiceConnection,WTF::RawPtrTraits<WebPushD::PushServiceConnection>,WTF::DefaultRefDerefTraits<WebPushD::PushServiceConnection>> &&,WTF::Ref<WebCore::PushDatabase,WTF::RawPtrTraits<WebCore>,WTF::DefaultRefDerefTraits<WebCore>> &&,WTF::Function<void ()(WTF::Ref<WebPushD::PushServiceConnection,WTF::RawPtrTraits<WebPushD::PushServiceConnection>,WTF::DefaultRefDerefTraits<WebPushD::PushServiceConnection>> &&::PushSubscriptionSetIdentifier const&,WebKit::WebPushMessage &&)> &&)::$_0,void,WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&>::~CallableWrapper(WTF *this, void *a2)
{
  v3 = *(this + 1);
  *this = &unk_1F10EA8F0;
  *(this + 1) = 0;
  if (v3 && atomic_fetch_add(v3, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v3);
    WTF::fastFree(v3, a2);
  }

  return WTF::fastFree(this, a2);
}

_DWORD *WTF::Detail::CallableWrapper<WebPushD::PushService::PushService(WTF::Ref<WebPushD::PushServiceConnection,WTF::RawPtrTraits<WebPushD::PushServiceConnection>,WTF::DefaultRefDerefTraits<WebPushD::PushServiceConnection>> &&,WTF::Ref<WebCore::PushDatabase,WTF::RawPtrTraits<WebCore>,WTF::DefaultRefDerefTraits<WebCore>> &&,WTF::Function<void ()(WTF::Ref<WebPushD::PushServiceConnection,WTF::RawPtrTraits<WebPushD::PushServiceConnection>,WTF::DefaultRefDerefTraits<WebPushD::PushServiceConnection>> &&::PushSubscriptionSetIdentifier const&,WebKit::WebPushMessage &&)> &&)::$_0,void,WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&>::call(_DWORD *result)
{
  v1 = *(result + 1);
  if (v1)
  {
    v2 = *(v1 + 8);
    if (v2)
    {
      v3 = v2 + 2;
      ++v2[2];
      WTF::WeakPtrFactory<WebPushD::PushServiceConnection,WTF::DefaultWeakPtrImpl>::initializeIfNeeded(v2, v2);
      v4 = *v2;
      atomic_fetch_add(v4, 1u);
      v5 = WTF::fastMalloc(0x10);
      *v5 = &unk_1F10EADA0;
      v5[1] = v4;
      v7 = v5;
      WebCore::PushDatabase::updatePublicToken();
      if (v7)
      {
        (*(*v7 + 8))(v7);
      }

      return WTF::RefCounted<WebPushD::PushService>::deref(v3, v6);
    }
  }

  return result;
}

void sub_19D8C8294(_Unwind_Exception *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  if (a10)
  {
    (*(*a10 + 8))(a10);
  }

  WTF::RefCounted<WebPushD::PushService>::deref(v10, a2);
  _Unwind_Resume(a1);
}

void *WTF::Detail::CallableWrapper<WebPushD::PushService::PushService(WTF::Ref<WebPushD::PushServiceConnection,WTF::RawPtrTraits<WebPushD::PushServiceConnection>,WTF::DefaultRefDerefTraits<WebPushD::PushServiceConnection>> &&,WTF::Ref<WebCore::PushDatabase,WTF::RawPtrTraits<WebCore>,WTF::DefaultRefDerefTraits<WebCore>> &&,WTF::Function<void ()(WTF::Ref<WebPushD::PushServiceConnection,WTF::RawPtrTraits<WebPushD::PushServiceConnection>,WTF::DefaultRefDerefTraits<WebPushD::PushServiceConnection>> &&::PushSubscriptionSetIdentifier const&,WebKit::WebPushMessage &&)> &&)::$_1,void,NSString *,NSDictionary *>::~CallableWrapper(void *a1, void *a2)
{
  v3 = a1[1];
  *a1 = &unk_1F10EA918;
  a1[1] = 0;
  if (v3 && atomic_fetch_add(v3, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v3);
    WTF::fastFree(v3, a2);
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WebPushD::PushService::PushService(WTF::Ref<WebPushD::PushServiceConnection,WTF::RawPtrTraits<WebPushD::PushServiceConnection>,WTF::DefaultRefDerefTraits<WebPushD::PushServiceConnection>> &&,WTF::Ref<WebCore::PushDatabase,WTF::RawPtrTraits<WebCore>,WTF::DefaultRefDerefTraits<WebCore>> &&,WTF::Function<void ()(WTF::Ref<WebPushD::PushServiceConnection,WTF::RawPtrTraits<WebPushD::PushServiceConnection>,WTF::DefaultRefDerefTraits<WebPushD::PushServiceConnection>> &&::PushSubscriptionSetIdentifier const&,WebKit::WebPushMessage &&)> &&)::$_1,void,NSString *,NSDictionary *>::~CallableWrapper(WTF *this, void *a2)
{
  v3 = *(this + 1);
  *this = &unk_1F10EA918;
  *(this + 1) = 0;
  if (v3 && atomic_fetch_add(v3, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v3);
    WTF::fastFree(v3, a2);
  }

  return WTF::fastFree(this, a2);
}

_DWORD *WTF::Detail::CallableWrapper<WebPushD::PushService::PushService(WTF::Ref<WebPushD::PushServiceConnection,WTF::RawPtrTraits<WebPushD::PushServiceConnection>,WTF::DefaultRefDerefTraits<WebPushD::PushServiceConnection>> &&,WTF::Ref<WebCore::PushDatabase,WTF::RawPtrTraits<WebCore>,WTF::DefaultRefDerefTraits<WebCore>> &&,WTF::Function<void ()(WTF::Ref<WebPushD::PushServiceConnection,WTF::RawPtrTraits<WebPushD::PushServiceConnection>,WTF::DefaultRefDerefTraits<WebPushD::PushServiceConnection>> &&::PushSubscriptionSetIdentifier const&,WebKit::WebPushMessage &&)> &&)::$_1,void,NSString *,NSDictionary *>::call(_DWORD *result, uint64_t a2, void *a3)
{
  v3 = *(result + 1);
  if (v3)
  {
    v4 = *(v3 + 8);
    if (v4)
    {
      ++v4[2];
      v7 = WTF::fastMalloc(0x10);
      *v7 = &unk_1F10EA940;
      v9 = v7;
      WebPushD::PushService::didReceivePushMessage(v4, a2, a3, &v9);
      if (v9)
      {
        (*(*v9 + 8))(v9);
      }

      return WTF::RefCounted<WebPushD::PushService>::deref(v4 + 2, v8);
    }
  }

  return result;
}

void sub_19D8C84C8(_Unwind_Exception *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  if (a10)
  {
    (*(*a10 + 8))(a10);
  }

  WTF::RefCounted<WebPushD::PushService>::deref(v10, a2);
  _Unwind_Resume(a1);
}

WebPushD::PushServiceRequest *WebPushD::PushServiceRequest::PushServiceRequest(WebPushD::PushServiceRequest *this, WebPushD::PushService *a2, atomic_uint **a3, atomic_uint **a4)
{
  *(this + 1) = 0;
  *this = &unk_1F10EA768;
  v6 = *a3;
  if (*a3)
  {
    atomic_fetch_add_explicit(v6, 2u, memory_order_relaxed);
  }

  *(this + 2) = v6;
  v7 = a3[1];
  if (v7)
  {
    atomic_fetch_add_explicit(v7, 2u, memory_order_relaxed);
  }

  *(this + 3) = v7;
  *(this + 2) = *(a3 + 1);
  v8 = *a4;
  if (*a4)
  {
    atomic_fetch_add_explicit(v8, 2u, memory_order_relaxed);
  }

  *(this + 6) = v8;
  *(this + 7) = 0;
  WTF::WeakPtrFactory<WebPushD::PushServiceConnection,WTF::DefaultWeakPtrImpl>::initializeIfNeeded(a2, a2);
  v9 = *a2;
  atomic_fetch_add(*a2, 1u);
  *(this + 8) = v9;
  v10 = *(a2 + 2);
  WTF::WeakPtrFactory<WebPushD::PushServiceConnection,WTF::DefaultWeakPtrImpl>::initializeIfNeeded((v10 + 8), v10);
  v11 = *(v10 + 8);
  atomic_fetch_add(v11, 1u);
  *(this + 9) = v11;
  v12 = *(a2 + 3);
  if (!*v12)
  {
    v14 = WTF::fastCompactMalloc(0x10);
    *v14 = 1;
    *(v14 + 8) = v12;
    v15 = *v12;
    *v12 = v14;
    if (v15)
    {
      if (atomic_fetch_add(v15, 0xFFFFFFFF) == 1)
      {
        atomic_store(1u, v15);
        WTF::fastFree(v15, v13);
      }
    }
  }

  v16 = *v12;
  atomic_fetch_add(*v12, 1u);
  *(this + 10) = v16;
  return this;
}

void sub_19D8C8650(_Unwind_Exception *a1, void *a2)
{
  v5 = v2[9];
  v2[9] = 0;
  if (v5 && atomic_fetch_add(v5, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v5);
    WTF::fastFree(v5, a2);
  }

  v6 = v2[8];
  v2[8] = 0;
  if (v6 && atomic_fetch_add(v6, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v6);
    WTF::fastFree(v6, a2);
  }

  v7 = v2[7];
  v2[7] = 0;
  if (v7)
  {
    (*(*v7 + 8))(v7);
  }

  v8 = v2[6];
  v2[6] = 0;
  if (v8 && atomic_fetch_add_explicit(v8, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v8, a2);
  }

  v9 = v2[3];
  v2[3] = 0;
  if (v9 && atomic_fetch_add_explicit(v9, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v9, a2);
  }

  v10 = v2[2];
  v2[2] = 0;
  if (v10)
  {
    if (atomic_fetch_add_explicit(v10, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v10, a2);
    }
  }

  WTF::WeakPtrFactory<WebPushD::PushServiceConnection,WTF::DefaultWeakPtrImpl>::~WeakPtrFactory(v3, a2);
  _Unwind_Resume(a1);
}

void *WTF::Detail::CallableWrapper<WebPushD::GetSubscriptionRequest::startInternal(void)::$_0,void,std::optional<WebCore::PushRecord> &&>::~CallableWrapper(void *a1, void *a2)
{
  v3 = a1[1];
  *a1 = &unk_1F10EA968;
  a1[1] = 0;
  if (v3 && atomic_fetch_add(v3, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v3);
    WTF::fastFree(v3, a2);
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WebPushD::GetSubscriptionRequest::startInternal(void)::$_0,void,std::optional<WebCore::PushRecord> &&>::~CallableWrapper(WTF *this, void *a2)
{
  v3 = *(this + 1);
  *this = &unk_1F10EA968;
  *(this + 1) = 0;
  if (v3 && atomic_fetch_add(v3, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v3);
    WTF::fastFree(v3, a2);
  }

  return WTF::fastFree(this, a2);
}

_DWORD *WTF::Detail::CallableWrapper<WebPushD::GetSubscriptionRequest::startInternal(void)::$_0,void,std::optional<WebCore::PushRecord> &&>::call(_DWORD *result, uint64_t a2)
{
  v2 = *(result + 1);
  if (v2)
  {
    v3 = *(v2 + 8);
    if (v3)
    {
      ++*(v3 + 104);
      if (*(a2 + 160))
      {
        WebPushD::makePushSubscriptionFromRecord(v16, a2);
        WebCore::PushSubscriptionData::PushSubscriptionData(v24, v16);
        v32 = 1;
        WebPushD::PushServiceRequestImpl<std::optional<WebCore::PushSubscriptionData>>::fulfill(v3, v24);
        if (v32 == 1)
        {
          v5 = v30;
          if (v30)
          {
            v30 = 0;
            v31 = 0;
            WTF::fastFree(v5, v4);
          }

          v6 = v28;
          if (v28)
          {
            v28 = 0;
            v29 = 0;
            WTF::fastFree(v6, v4);
          }

          v7 = v26;
          if (v26)
          {
            v26 = 0;
            v27 = 0;
            WTF::fastFree(v7, v4);
          }

          v8 = v25;
          v25 = 0;
          if (v8 && atomic_fetch_add_explicit(v8, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v8, v4);
          }
        }

        v9 = v22;
        if (v22)
        {
          v22 = 0;
          v23 = 0;
          WTF::fastFree(v9, v4);
        }

        v10 = v20;
        if (v20)
        {
          v20 = 0;
          v21 = 0;
          WTF::fastFree(v10, v4);
        }

        v11 = v18;
        if (v18)
        {
          v18 = 0;
          v19 = 0;
          WTF::fastFree(v11, v4);
        }

        v12 = v17;
        v17 = 0;
        if (!v12)
        {
          return WTF::RefCounted<WebPushD::GetSubscriptionRequest>::deref((v3 + 104), v4);
        }
      }

      else
      {
        v24[0] = 0;
        v32 = 0;
        WebPushD::PushServiceRequestImpl<std::optional<WebCore::PushSubscriptionData>>::fulfill(v3, v24);
        if (v32 != 1)
        {
          return WTF::RefCounted<WebPushD::GetSubscriptionRequest>::deref((v3 + 104), v4);
        }

        v13 = v30;
        if (v30)
        {
          v30 = 0;
          v31 = 0;
          WTF::fastFree(v13, v4);
        }

        v14 = v28;
        if (v28)
        {
          v28 = 0;
          v29 = 0;
          WTF::fastFree(v14, v4);
        }

        v15 = v26;
        if (v26)
        {
          v26 = 0;
          v27 = 0;
          WTF::fastFree(v15, v4);
        }

        v12 = v25;
        v25 = 0;
        if (!v12)
        {
          return WTF::RefCounted<WebPushD::GetSubscriptionRequest>::deref((v3 + 104), v4);
        }
      }

      if (atomic_fetch_add_explicit(v12, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v12, v4);
      }

      return WTF::RefCounted<WebPushD::GetSubscriptionRequest>::deref((v3 + 104), v4);
    }
  }

  return result;
}

void sub_19D8C89D0(_Unwind_Exception *a1, void *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, WTF::StringImpl *a11, uint64_t a12, uint64_t a13, WTF *a14, int a15, WTF *a16, int a17, WTF *a18, int a19, uint64_t a20, WTF::StringImpl *a21, uint64_t a22, uint64_t a23, WTF *a24, int a25, WTF *a26, int a27, WTF *a28, int a29, int a30, char a31)
{
  if (a31 == 1)
  {
    if (a28)
    {
      WTF::fastFree(a28, a2);
    }

    if (a26)
    {
      WTF::fastFree(a26, a2);
    }

    if (a24)
    {
      WTF::fastFree(a24, a2);
    }

    if (a21 && atomic_fetch_add_explicit(a21, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(a21, a2);
    }
  }

  if (a18)
  {
    WTF::fastFree(a18, a2);
  }

  if (a16)
  {
    WTF::fastFree(a16, a2);
  }

  if (a14)
  {
    WTF::fastFree(a14, a2);
  }

  if (a11)
  {
    if (atomic_fetch_add_explicit(a11, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(a11, a2);
    }
  }

  WTF::RefCounted<WebPushD::GetSubscriptionRequest>::deref(v31, a2);
  _Unwind_Resume(a1);
}

uint64_t WebPushD::PushServiceRequestImpl<std::optional<WebCore::PushSubscriptionData>>::fulfill(uint64_t *a1, uint64_t a2)
{
  v29 = *MEMORY[0x1E69E9840];
  v4 = qword_1ED6410A8;
  if (os_log_type_enabled(qword_1ED6410A8, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a2 + 80);
    v6 = (*(*a1 + 32))(a1);
    WebCore::PushSubscriptionSetIdentifier::debugDescription(&v16, (a1 + 2));
    WTF::String::utf8();
    v7 = v17;
    WTF::String::utf8();
    v8 = v7 + 16;
    if (!v7)
    {
      v8 = 0;
    }

    *buf = 136447235;
    if (v15)
    {
      v9 = v15 + 16;
    }

    else
    {
      v9 = 0;
    }

    v19 = v6;
    v20 = 2048;
    v21 = a1;
    v22 = 1024;
    v23 = v5;
    v24 = 2082;
    v25 = v8;
    v26 = 2085;
    v27 = v9;
    _os_log_impl(&dword_19D52D000, v4, OS_LOG_TYPE_DEFAULT, "Finished pushServiceRequest %{public}s (%p) with result (hasResult: %d) for %{public}s, scope = %{sensitive}s", buf, 0x30u);
    if (v15)
    {
      if (*v15 == 1)
      {
        WTF::fastFree(v15, v10);
      }

      else
      {
        --*v15;
      }
    }

    v11 = v17;
    v17 = 0;
    if (v11)
    {
      if (*v11 == 1)
      {
        WTF::fastFree(v11, v10);
      }

      else
      {
        --*v11;
      }
    }

    v12 = v16;
    v16 = 0;
    if (v12 && atomic_fetch_add_explicit(v12, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v12, v10);
    }
  }

  std::__optional_move_base<WebCore::PushSubscriptionData,false>::__optional_move_base[abi:sn200100](buf, a2);
  v28 = 0;
  WTF::CompletionHandler<void ()(std::experimental::fundamentals_v3::expected<std::optional<WebCore::PushSubscriptionData>,WebCore::ExceptionData> const&)>::operator()(a1 + 11);
  std::experimental::fundamentals_v3::expected<std::optional<WebCore::PushSubscriptionData>,WebCore::ExceptionData>::~expected(buf, v13);
  return (*(*a1 + 48))(a1);
}

void sub_19D8C8D2C(_Unwind_Exception *exception_object, void *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, WTF::StringImpl *a11, WTF *a12, char a13)
{
  if (a12)
  {
    if (*a12 == 1)
    {
      WTF::fastFree(a12, a2);
    }

    else
    {
      --*a12;
    }
  }

  if (a11)
  {
    if (atomic_fetch_add_explicit(a11, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(a11, a2);
    }
  }

  _Unwind_Resume(exception_object);
}

uint64_t WebPushD::makePushSubscriptionFromRecord(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  v5 = a2[8];
  a2[8] = 0;
  *a1 = v4;
  *(a1 + 8) = v5;
  *(a1 + 16) = a2[18];
  *(a1 + 24) = *(a2 + 152);
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  WTF::VectorBuffer<unsigned char,0ul,WTF::FastMalloc>::adopt(a1 + 32, a2 + 10);
  *(a1 + 48) = 0;
  *(a1 + 56) = 0;
  WTF::VectorBuffer<unsigned char,0ul,WTF::FastMalloc>::adopt(a1 + 48, a2 + 12);
  *(a1 + 64) = 0;
  *(a1 + 72) = 0;
  return WTF::VectorBuffer<unsigned char,0ul,WTF::FastMalloc>::adopt(a1 + 64, a2 + 16);
}

void sub_19D8C8E30(_Unwind_Exception *exception_object, void *a2)
{
  v7 = *v5;
  if (*v5)
  {
    *(v2 + 64) = 0;
    *(v2 + 72) = 0;
    WTF::fastFree(v7, a2);
  }

  v8 = *v4;
  if (*v4)
  {
    *(v2 + 48) = 0;
    *(v2 + 56) = 0;
    WTF::fastFree(v8, a2);
  }

  v9 = *v3;
  if (*v3)
  {
    *(v2 + 32) = 0;
    *(v2 + 40) = 0;
    WTF::fastFree(v9, a2);
  }

  v10 = *(v2 + 8);
  *(v2 + 8) = 0;
  if (v10)
  {
    if (atomic_fetch_add_explicit(v10, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v10, a2);
    }
  }

  _Unwind_Resume(exception_object);
}

_BYTE *std::__optional_move_base<WebCore::PushSubscriptionData,false>::__optional_move_base[abi:sn200100](_BYTE *a1, uint64_t a2)
{
  *a1 = 0;
  a1[80] = 0;
  if (*(a2 + 80) == 1)
  {
    WebCore::PushSubscriptionData::PushSubscriptionData(a1, a2);
    a1[80] = 1;
  }

  return a1;
}

void sub_19D8C8EF0(_Unwind_Exception *exception_object, void *a2)
{
  if (*(v2 + 80) == 1)
  {
    v4 = *(v2 + 64);
    if (v4)
    {
      *(v2 + 64) = 0;
      *(v2 + 72) = 0;
      WTF::fastFree(v4, a2);
    }

    v5 = *(v2 + 48);
    if (v5)
    {
      *(v2 + 48) = 0;
      *(v2 + 56) = 0;
      WTF::fastFree(v5, a2);
    }

    v6 = *(v2 + 32);
    if (v6)
    {
      *(v2 + 32) = 0;
      *(v2 + 40) = 0;
      WTF::fastFree(v6, a2);
    }

    v7 = *(v2 + 8);
    *(v2 + 8) = 0;
    if (v7)
    {
      if (atomic_fetch_add_explicit(v7, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v7, a2);
      }
    }
  }

  _Unwind_Resume(exception_object);
}

void *WTF::Detail::CallableWrapper<WebPushD::SubscribeRequest::startImpl(WebPushD::SubscribeRequest::IsRetry)::$_0,void,std::optional<WebCore::PushRecord> &&>::~CallableWrapper(void *a1, void *a2)
{
  v3 = a1[1];
  *a1 = &unk_1F10EA990;
  a1[1] = 0;
  if (v3 && atomic_fetch_add(v3, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v3);
    WTF::fastFree(v3, a2);
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WebPushD::SubscribeRequest::startImpl(WebPushD::SubscribeRequest::IsRetry)::$_0,void,std::optional<WebCore::PushRecord> &&>::~CallableWrapper(WTF *this, void *a2)
{
  v3 = *(this + 1);
  *this = &unk_1F10EA990;
  *(this + 1) = 0;
  if (v3 && atomic_fetch_add(v3, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v3);
    WTF::fastFree(v3, a2);
  }

  return WTF::fastFree(this, a2);
}

uint64_t WTF::Detail::CallableWrapper<WebPushD::SubscribeRequest::startImpl(WebPushD::SubscribeRequest::IsRetry)::$_0,void,std::optional<WebCore::PushRecord> &&>::call(uint64_t result, uint64_t a2)
{
  v2 = *(result + 8);
  if (v2)
  {
    v3 = *(v2 + 8);
    if (v3)
    {
      ++*(v3 + 104);
      if (*(a2 + 160) == 1)
      {
        v5 = *(v3 + 124);
        if (v5 == *(a2 + 92) && !memcmp(*(v3 + 112), *(a2 + 80), v5))
        {
          WebPushD::makePushSubscriptionFromRecord(&v18, a2);
          WebPushD::PushServiceRequestImpl<WebCore::PushSubscriptionData>::fulfill(v3, &v18);
          v15 = v24;
          if (v24)
          {
            v24 = 0;
            v25 = 0;
            WTF::fastFree(v15, v6);
          }

          v16 = v22;
          if (v22)
          {
            v22 = 0;
            v23 = 0;
            WTF::fastFree(v16, v6);
          }

          v17 = v20;
          if (v20)
          {
            v20 = 0;
            v21 = 0;
            WTF::fastFree(v17, v6);
          }

          v7 = v19;
          v19 = 0;
          if (!v7)
          {
            return WTF::RefCounted<WebPushD::SubscribeRequest>::deref((v3 + 104), v6);
          }
        }

        else
        {
          LOBYTE(v18) = 8;
          WTF::StringImpl::createWithoutCopyingNonEmpty();
          v19 = v26;
          WebPushD::PushServiceRequestImpl<WebCore::PushSubscriptionData>::reject(v3, &v18);
          v7 = v19;
          if (!v19)
          {
            return WTF::RefCounted<WebPushD::SubscribeRequest>::deref((v3 + 104), v6);
          }
        }
      }

      else
      {
        v8 = result;
        WebCore::makePushTopic();
        v9 = *(*(v3 + 72) + 8);
        if (!v9)
        {
          result = 103;
          __break(0xC471u);
          return result;
        }

        ++v9[4];
        v10 = *(v8 + 8);
        if (v10)
        {
          atomic_fetch_add(v10, 1u);
        }

        v11 = *(v8 + 16);
        v12 = v18;
        if (v18)
        {
          atomic_fetch_add_explicit(v18, 2u, memory_order_relaxed);
        }

        v13 = WTF::fastMalloc(0x20);
        *v13 = &unk_1F10EA9B8;
        *(v13 + 8) = v10;
        *(v13 + 16) = v11;
        *(v13 + 24) = v12;
        v26 = v13;
        (*(*v9 + 24))(v9, &v18, v3 + 112, &v26);
        v14 = v26;
        v26 = 0;
        if (v14)
        {
          (*(*v14 + 8))(v14);
        }

        if (v9[4] == 1)
        {
          (*(*v9 + 8))(v9);
        }

        else
        {
          --v9[4];
        }

        v7 = v18;
        v18 = 0;
        if (!v7)
        {
          return WTF::RefCounted<WebPushD::SubscribeRequest>::deref((v3 + 104), v6);
        }
      }

      if (atomic_fetch_add_explicit(v7, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v7, v6);
      }

      return WTF::RefCounted<WebPushD::SubscribeRequest>::deref((v3 + 104), v6);
    }
  }

  return result;
}

void sub_19D8C92C8(_Unwind_Exception *a1, void *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, WTF::StringImpl *a10, WTF::StringImpl *a11, uint64_t a12, uint64_t a13, WTF *a14, int a15, WTF *a16, int a17, WTF *a18, int a19)
{
  if (a18)
  {
    WTF::fastFree(a18, a2);
  }

  if (a16)
  {
    WTF::fastFree(a16, a2);
  }

  if (a14)
  {
    WTF::fastFree(a14, a2);
  }

  if (a11)
  {
    if (atomic_fetch_add_explicit(a11, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(a11, a2);
    }
  }

  WTF::RefCounted<WebPushD::SubscribeRequest>::deref(v19, a2);
  _Unwind_Resume(a1);
}

uint64_t WebPushD::PushServiceRequestImpl<WebCore::PushSubscriptionData>::reject(uint64_t *a1, uint64_t a2)
{
  v26 = *MEMORY[0x1E69E9840];
  v4 = qword_1ED6410A8;
  if (os_log_type_enabled(qword_1ED6410A8, OS_LOG_TYPE_DEFAULT))
  {
    v5 = (*(*a1 + 32))(a1);
    WebCore::PushSubscriptionSetIdentifier::debugDescription(&v17, (a1 + 2));
    WTF::String::utf8();
    v6 = v18;
    WTF::String::utf8();
    v7 = v6 + 16;
    if (!v6)
    {
      v7 = 0;
    }

    *buf = 136446979;
    if (v16)
    {
      v8 = v16 + 16;
    }

    else
    {
      v8 = 0;
    }

    *v20 = v5;
    *&v20[8] = 2048;
    *&v20[10] = a1;
    v21 = 2082;
    v22 = v7;
    v23 = 2085;
    v24 = v8;
    _os_log_impl(&dword_19D52D000, v4, OS_LOG_TYPE_DEFAULT, "Finished pushServiceRequest %{public}s (%p) with exception for %{public}s, scope = %{sensitive}s", buf, 0x2Au);
    if (v16)
    {
      if (*v16 == 1)
      {
        WTF::fastFree(v16, v9);
      }

      else
      {
        --*v16;
      }
    }

    v10 = v18;
    v18 = 0;
    if (v10)
    {
      if (*v10 == 1)
      {
        WTF::fastFree(v10, v9);
      }

      else
      {
        --*v10;
      }
    }

    v11 = v17;
    v17 = 0;
    if (v11 && atomic_fetch_add_explicit(v11, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v11, v9);
    }
  }

  v12 = *a2;
  v13 = *(a2 + 8);
  *(a2 + 8) = 0;
  buf[0] = v12;
  *&v20[4] = v13;
  v25 = 1;
  WTF::CompletionHandler<void ()(std::experimental::fundamentals_v3::expected<WebCore::PushSubscriptionData,WebCore::ExceptionData> const&)>::operator()(a1 + 11);
  std::experimental::fundamentals_v3::expected<WebCore::PushSubscriptionData,WebCore::ExceptionData>::~expected(buf, v14);
  return (*(*a1 + 48))(a1);
}

void sub_19D8C9634(_Unwind_Exception *exception_object, void *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, WTF::StringImpl *a11, WTF *a12, char a13)
{
  if (a12)
  {
    if (*a12 == 1)
    {
      WTF::fastFree(a12, a2);
    }

    else
    {
      --*a12;
    }
  }

  if (a11)
  {
    if (atomic_fetch_add_explicit(a11, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(a11, a2);
    }
  }

  _Unwind_Resume(exception_object);
}

uint64_t WebPushD::PushServiceRequestImpl<WebCore::PushSubscriptionData>::fulfill(uint64_t *a1, uint64_t a2)
{
  v28 = *MEMORY[0x1E69E9840];
  v4 = qword_1ED6410A8;
  if (os_log_type_enabled(qword_1ED6410A8, OS_LOG_TYPE_DEFAULT))
  {
    v5 = (*(*a1 + 32))(a1);
    WebCore::PushSubscriptionSetIdentifier::debugDescription(&v15, (a1 + 2));
    WTF::String::utf8();
    v6 = v16;
    WTF::String::utf8();
    v7 = v6 + 16;
    if (!v6)
    {
      v7 = 0;
    }

    *buf = 136447235;
    if (v14)
    {
      v8 = v14 + 16;
    }

    else
    {
      v8 = 0;
    }

    v18 = v5;
    v19 = 2048;
    v20 = a1;
    v21 = 1024;
    v22 = 1;
    v23 = 2082;
    v24 = v7;
    v25 = 2085;
    v26 = v8;
    _os_log_impl(&dword_19D52D000, v4, OS_LOG_TYPE_DEFAULT, "Finished pushServiceRequest %{public}s (%p) with result (hasResult: %d) for %{public}s, scope = %{sensitive}s", buf, 0x30u);
    if (v14)
    {
      if (*v14 == 1)
      {
        WTF::fastFree(v14, v9);
      }

      else
      {
        --*v14;
      }
    }

    v10 = v16;
    v16 = 0;
    if (v10)
    {
      if (*v10 == 1)
      {
        WTF::fastFree(v10, v9);
      }

      else
      {
        --*v10;
      }
    }

    v11 = v15;
    v15 = 0;
    if (v11 && atomic_fetch_add_explicit(v11, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v11, v9);
    }
  }

  WebCore::PushSubscriptionData::PushSubscriptionData(buf, a2);
  v27 = 0;
  WTF::CompletionHandler<void ()(std::experimental::fundamentals_v3::expected<WebCore::PushSubscriptionData,WebCore::ExceptionData> const&)>::operator()(a1 + 11);
  std::experimental::fundamentals_v3::expected<WebCore::PushSubscriptionData,WebCore::ExceptionData>::~expected(buf, v12);
  return (*(*a1 + 48))(a1);
}

void sub_19D8C98BC(_Unwind_Exception *exception_object, void *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, WTF::StringImpl *a11, WTF *a12, char a13)
{
  if (a12)
  {
    if (*a12 == 1)
    {
      WTF::fastFree(a12, a2);
    }

    else
    {
      --*a12;
    }
  }

  if (a11)
  {
    if (atomic_fetch_add_explicit(a11, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(a11, a2);
    }
  }

  _Unwind_Resume(exception_object);
}

void *_ZN3WTF6Detail15CallableWrapperIZZN8WebPushD16SubscribeRequest9startImplENS3_7IsRetryEEN3__0clINSt3__18optionalIN7WebCore10PushRecordEEEEEDaOT_EUlP8NSStringP7NSErrorE_vJSG_SI_EED1Ev(void *a1, WTF::StringImpl *a2)
{
  *a1 = &unk_1F10EA9B8;
  v3 = a1[3];
  a1[3] = 0;
  if (v3 && atomic_fetch_add_explicit(v3, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v3, a2);
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

uint64_t _ZN3WTF6Detail15CallableWrapperIZZN8WebPushD16SubscribeRequest9startImplENS3_7IsRetryEEN3__0clINSt3__18optionalIN7WebCore10PushRecordEEEEEDaOT_EUlP8NSStringP7NSErrorE_vJSG_SI_EED0Ev(WTF *this, WTF::StringImpl *a2)
{
  *this = &unk_1F10EA9B8;
  v3 = *(this + 3);
  *(this + 3) = 0;
  if (v3 && atomic_fetch_add_explicit(v3, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v3, a2);
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

_DWORD *_ZN3WTF6Detail15CallableWrapperIZZN8WebPushD16SubscribeRequest9startImplENS3_7IsRetryEEN3__0clINSt3__18optionalIN7WebCore10PushRecordEEEEEDaOT_EUlP8NSStringP7NSErrorE_vJSG_SI_EE4callESG_SI_(_DWORD *result, uint64_t a2, void *a3)
{
  v69 = *MEMORY[0x1E69E9840];
  v3 = *(result + 1);
  if (v3)
  {
    v4 = *(v3 + 8);
    if (v4)
    {
      v6 = result;
      v7 = (v4 + 104);
      ++*(v4 + 104);
      if (a3)
      {
        if ((result[4] & 1) == 0 && [objc_msgSend(a3 "domain")] && objc_msgSend(a3, "code") == 103)
        {
          v8 = WTF::WorkQueue::mainSingleton(0x67);
          WTF::WeakPtrFactory<WebPushD::PushServiceConnection,WTF::DefaultWeakPtrImpl>::initializeIfNeeded((v4 + 8), v4);
          v9 = *(v4 + 8);
          atomic_fetch_add(v9, 1u);
          v10 = *(v6 + 3);
          *(v6 + 3) = 0;
          v11 = WTF::fastMalloc(0x18);
          *v11 = &unk_1F10EAA30;
          v11[1] = v9;
          v11[2] = v10;
          *buf = v11;
          (*(*v8 + 48))(v8, buf);
          v13 = *buf;
          *buf = 0;
          if (v13)
          {
            (*(*v13 + 8))(v13);
          }
        }

        else
        {
          v14 = qword_1ED6410A8;
          if (os_log_type_enabled(qword_1ED6410A8, OS_LOG_TYPE_ERROR))
          {
            WebCore::PushSubscriptionSetIdentifier::debugDescription(&v52, (v4 + 16));
            WTF::String::utf8();
            if (v48[0])
            {
              v40 = v48[0] + 16;
            }

            else
            {
              v40 = 0;
            }

            WTF::String::utf8();
            if (v51)
            {
              v41 = v51 + 16;
            }

            else
            {
              v41 = 0;
            }

            v42 = [objc_msgSend(a3 "domain")];
            v43 = [a3 code];
            *buf = 136446979;
            *&buf[4] = v40;
            *&buf[12] = 2085;
            *&buf[14] = v41;
            *&buf[22] = 2082;
            v54 = v42;
            LOWORD(v55) = 2048;
            *(&v55 + 2) = v43;
            _os_log_error_impl(&dword_19D52D000, v14, OS_LOG_TYPE_ERROR, "PushManager.subscribe(%{public}s, scope: %{sensitive}s) failed with domain: %{public}s code: %lld)", buf, 0x2Au);
            v45 = v51;
            v51 = 0;
            if (v45)
            {
              if (*v45 == 1)
              {
                WTF::fastFree(v45, v44);
              }

              else
              {
                --*v45;
              }
            }

            v46 = v48[0];
            v48[0] = 0;
            if (v46)
            {
              if (*v46 == 1)
              {
                WTF::fastFree(v46, v44);
              }

              else
              {
                --*v46;
              }
            }

            v47 = v52;
            v52 = 0;
            if (v47 && atomic_fetch_add_explicit(v47, 0xFFFFFFFE, memory_order_relaxed) == 2)
            {
              WTF::StringImpl::destroy(v47, v44);
            }
          }

          buf[0] = 16;
          WTF::StringImpl::createWithoutCopyingNonEmpty();
          *&buf[8] = v48[0];
          WebPushD::PushServiceRequestImpl<WebCore::PushSubscriptionData>::reject(v4, buf);
          v15 = *&buf[8];
          if (*&buf[8] && atomic_fetch_add_explicit(*&buf[8], 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v15, v12);
          }
        }

        return WTF::RefCounted<WebPushD::SubscribeRequest>::deref(v7, v12);
      }

      v16 = *(*(v4 + 64) + 8);
      if (v16)
      {
        (*(**(v16 + 16) + 16))(v48);
        *buf = 0;
        v19 = *(v4 + 16);
        if (v19)
        {
          atomic_fetch_add_explicit(v19, 2u, memory_order_relaxed);
        }

        *&buf[16] = v19;
        v20 = *(v4 + 24);
        if (v20)
        {
          atomic_fetch_add_explicit(v20, 2u, memory_order_relaxed);
        }

        v54 = v20;
        v55 = *(v4 + 32);
        WebCore::SecurityOrigin::createFromString(&v52, (v4 + 48), v18);
        WebCore::SecurityOriginData::toString(v56, (v52 + 8));
        v21 = *(v4 + 48);
        if (v21)
        {
          atomic_fetch_add_explicit(v21, 2u, memory_order_relaxed);
        }

        v56[1] = v21;
        MEMORY[0x19EB02040](v57, a2);
        v24 = *(v6 + 3);
        *(v6 + 3) = 0;
        v25 = *(v4 + 124);
        v58 = 0;
        v59 = 0;
        v57[1] = v24;
        v60 = v25;
        if (v25)
        {
          v26 = WTF::fastMalloc(v25);
          v59 = v25;
          v58 = v26;
          memcpy(v26, *(v4 + 112), *(v4 + 124));
        }

        *&v23 = 0;
        v61 = v48[0];
        v62 = v48[1];
        v27 = v49[0];
        v28 = v49[1];
        *v48 = v23;
        *v49 = v23;
        v63 = v27;
        v64 = v28;
        v29 = v50[0];
        v30 = v50[1];
        *v50 = v23;
        v65 = v29;
        v66 = v30;
        v67 = 0;
        v68 = 0;
        v31 = v52;
        v52 = 0;
        if (v31)
        {
          WTF::ThreadSafeRefCounted<WebCore::SecurityOrigin,(WTF::DestructionThread)0>::deref(v31, v22);
        }

        v32 = *(*(v4 + 80) + 8);
        if (v32)
        {
          ++*(v32 + 8);
          v33 = *(v6 + 1);
          if (v33)
          {
            atomic_fetch_add(v33, 1u);
          }

          v34 = WTF::fastMalloc(0x10);
          *v34 = &unk_1F10EA9E0;
          *(v34 + 1) = v33;
          v52 = v34;
          WebCore::PushDatabase::insertRecord();
          v35 = v52;
          v52 = 0;
          if (v35)
          {
            (*(*v35 + 8))(v35);
          }

          WTF::RefCounted<WebCore::PushDatabase>::deref((v32 + 8));
          WebCore::PushRecord::~PushRecord(buf, v36);
          v37 = v50[0];
          if (v50[0])
          {
            v50[0] = 0;
            LODWORD(v50[1]) = 0;
            WTF::fastFree(v37, v12);
          }

          v38 = v49[0];
          if (v49[0])
          {
            v49[0] = 0;
            LODWORD(v49[1]) = 0;
            WTF::fastFree(v38, v12);
          }

          v39 = v48[0];
          if (v48[0])
          {
            v48[0] = 0;
            LODWORD(v48[1]) = 0;
            WTF::fastFree(v39, v12);
          }

          return WTF::RefCounted<WebPushD::SubscribeRequest>::deref(v7, v12);
        }

        __break(0xC471u);
      }

      else
      {
        __break(0xC471u);
      }

      JUMPOUT(0x19D8C9FA8);
    }
  }

  return result;
}

void sub_19D8C9FCC(_Unwind_Exception *a1, void *a2, int a3, int a4, int a5, int a6, int a7, int a8, WTF *a9, int a10, WTF *a11, int a12, WTF *a13, int a14, WTF *a15, WTF::StringImpl *a16, uint64_t a17, uint64_t a18, WTF::StringImpl *a19, WTF::StringImpl *a20, uint64_t a21, uint64_t a22, WTF::StringImpl *a23, WTF::StringImpl *a24, WTF::StringImpl *a25, WTF::StringImpl *a26)
{
  if (a17)
  {
    (*(*a17 + 8))(a17);
  }

  WTF::RefCounted<WebPushD::SubscribeRequest>::deref(v26, a2);
  _Unwind_Resume(a1);
}

void *_ZN3WTF6Detail15CallableWrapperIZZZN8WebPushD16SubscribeRequest9startImplENS3_7IsRetryEEN3__0clINSt3__18optionalIN7WebCore10PushRecordEEEEEDaOT_ENUlP8NSStringP7NSErrorE_clESG_SI_EUlSE_E_vJOSB_EED1Ev(void *a1, void *a2)
{
  v3 = a1[1];
  *a1 = &unk_1F10EA9E0;
  a1[1] = 0;
  if (v3 && atomic_fetch_add(v3, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v3);
    WTF::fastFree(v3, a2);
  }

  return a1;
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZZZN8WebPushD16SubscribeRequest9startImplENS3_7IsRetryEEN3__0clINSt3__18optionalIN7WebCore10PushRecordEEEEEDaOT_ENUlP8NSStringP7NSErrorE_clESG_SI_EUlSE_E_vJOSB_EED0Ev(WTF *this, void *a2)
{
  v3 = *(this + 1);
  *this = &unk_1F10EA9E0;
  *(this + 1) = 0;
  if (v3 && atomic_fetch_add(v3, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v3);
    WTF::fastFree(v3, a2);
  }

  return WTF::fastFree(this, a2);
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZZZN8WebPushD16SubscribeRequest9startImplENS3_7IsRetryEEN3__0clINSt3__18optionalIN7WebCore10PushRecordEEEEEDaOT_ENUlP8NSStringP7NSErrorE_clESG_SI_EUlSE_E_vJOSB_EE4callESL_(uint64_t result, uint64_t a2)
{
  v24 = *MEMORY[0x1E69E9840];
  v2 = *(result + 8);
  if (v2)
  {
    v3 = *(v2 + 8);
    if (v3)
    {
      ++*(v3 + 104);
      if (*(a2 + 160))
      {
        v4 = *(*(v3 + 64) + 8);
        if (v4)
        {
          ++v4[2];
          atomic_fetch_add(v2, 1u);
          *buf = v2;
          if (*(a2 + 160))
          {
            WebCore::PushRecord::PushRecord(&buf[16], a2);
            v5 = WTF::fastMalloc(0xC0);
            *v5 = &unk_1F10EAA08;
            v6 = *buf;
            *buf = 0;
            *(v5 + 2) = v6;
            WebCore::PushRecord::PushRecord(v5 + 32, &buf[16]);
            v22 = v5;
            WebPushD::PushService::updateTopicLists(v4, &v22);
            v8 = v22;
            v22 = 0;
            if (v8)
            {
              (*(*v8 + 8))(v8);
            }

            WebCore::PushRecord::~PushRecord(&buf[16], v7);
            v10 = *buf;
            *buf = 0;
            if (v10)
            {
              if (atomic_fetch_add(v10, 0xFFFFFFFF) == 1)
              {
                atomic_store(1u, v10);
                WTF::fastFree(v10, v9);
              }
            }

            WTF::RefCounted<WebPushD::PushService>::deref(v4 + 2, v9);
            return WTF::RefCounted<WebPushD::SubscribeRequest>::deref((v3 + 104), v11);
          }
        }

        else
        {
          result = 103;
          __break(0xC471u);
        }

        __break(1u);
        return result;
      }

      v12 = qword_1ED6410A8;
      if (os_log_type_enabled(qword_1ED6410A8, OS_LOG_TYPE_ERROR))
      {
        WebCore::PushSubscriptionSetIdentifier::debugDescription(&v21, (v3 + 16));
        WTF::String::utf8();
        v14 = v22;
        WTF::String::utf8();
        v15 = v14 + 16;
        if (!v14)
        {
          v15 = 0;
        }

        if (v20)
        {
          v16 = v20 + 16;
        }

        else
        {
          v16 = 0;
        }

        *buf = 136446467;
        *&buf[4] = v15;
        *&buf[12] = 2085;
        *&buf[14] = v16;
        _os_log_error_impl(&dword_19D52D000, v12, OS_LOG_TYPE_ERROR, "PushManager.subscribe(%{public}s, scope: %{sensitive}s) failed with database error", buf, 0x16u);
        if (v20)
        {
          if (*v20 == 1)
          {
            WTF::fastFree(v20, v17);
          }

          else
          {
            --*v20;
          }
        }

        v18 = v22;
        v22 = 0;
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

        v19 = v21;
        v21 = 0;
        if (v19 && atomic_fetch_add_explicit(v19, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v19, v17);
        }
      }

      buf[0] = 16;
      WTF::StringImpl::createWithoutCopyingNonEmpty();
      *&buf[8] = v22;
      WebPushD::PushServiceRequestImpl<WebCore::PushSubscriptionData>::reject(v3, buf);
      v13 = *&buf[8];
      if (*&buf[8] && atomic_fetch_add_explicit(*&buf[8], 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v13, v11);
      }

      return WTF::RefCounted<WebPushD::SubscribeRequest>::deref((v3 + 104), v11);
    }
  }

  return result;
}

void sub_19D8CA678(_Unwind_Exception *a1, void *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, WTF::StringImpl *a11, WTF *a12, WTF *a13, WTF::StringImpl *a14)
{
  if (a12)
  {
    if (*a12 == 1)
    {
      WTF::fastFree(a12, a2);
    }

    else
    {
      --*a12;
    }
  }

  if (a11)
  {
    if (atomic_fetch_add_explicit(a11, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(a11, a2);
    }
  }

  WTF::RefCounted<WebPushD::SubscribeRequest>::deref(v14, a2);
  _Unwind_Resume(a1);
}

uint64_t WebCore::PushRecord::PushRecord(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v4 = *(a2 + 16);
  *(a2 + 16) = 0;
  *(a1 + 16) = v4;
  v5 = *(a2 + 24);
  *(a2 + 24) = 0;
  *(a1 + 24) = v5;
  *(a1 + 32) = *(a2 + 32);
  v6 = *(a2 + 48);
  *(a2 + 48) = 0;
  *(a1 + 48) = v6;
  v7 = *(a2 + 56);
  *(a2 + 56) = 0;
  *(a1 + 56) = v7;
  v8 = *(a2 + 64);
  *(a2 + 64) = 0;
  *(a1 + 64) = v8;
  v9 = *(a2 + 72);
  *(a2 + 72) = 0;
  *(a1 + 80) = 0;
  *(a1 + 72) = v9;
  *(a1 + 88) = 0;
  WTF::VectorBuffer<unsigned char,0ul,WTF::FastMalloc>::adopt(a1 + 80, (a2 + 80));
  *(a1 + 96) = 0;
  *(a1 + 104) = 0;
  WTF::VectorBuffer<unsigned char,0ul,WTF::FastMalloc>::adopt(a1 + 96, (a2 + 96));
  *(a1 + 112) = 0;
  *(a1 + 120) = 0;
  WTF::VectorBuffer<unsigned char,0ul,WTF::FastMalloc>::adopt(a1 + 112, (a2 + 112));
  *(a1 + 128) = 0;
  *(a1 + 136) = 0;
  WTF::VectorBuffer<unsigned char,0ul,WTF::FastMalloc>::adopt(a1 + 128, (a2 + 128));
  *(a1 + 144) = *(a2 + 144);
  return a1;
}

void sub_19D8CA89C(_Unwind_Exception *exception_object, void *a2)
{
  v8 = *v6;
  if (*v6)
  {
    *(v2 + 128) = 0;
    *(v2 + 136) = 0;
    WTF::fastFree(v8, a2);
  }

  v9 = *v5;
  if (*v5)
  {
    *(v2 + 112) = 0;
    *(v2 + 120) = 0;
    WTF::fastFree(v9, a2);
  }

  v10 = *v4;
  if (*v4)
  {
    *(v2 + 96) = 0;
    *(v2 + 104) = 0;
    WTF::fastFree(v10, a2);
  }

  v11 = *v3;
  if (*v3)
  {
    *(v2 + 80) = 0;
    *(v2 + 88) = 0;
    WTF::fastFree(v11, a2);
  }

  v12 = *(v2 + 72);
  *(v2 + 72) = 0;
  if (v12 && atomic_fetch_add_explicit(v12, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v12, a2);
  }

  v13 = *(v2 + 64);
  *(v2 + 64) = 0;
  if (v13 && atomic_fetch_add_explicit(v13, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v13, a2);
  }

  v14 = *(v2 + 56);
  *(v2 + 56) = 0;
  if (v14 && atomic_fetch_add_explicit(v14, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v14, a2);
  }

  v15 = *(v2 + 48);
  *(v2 + 48) = 0;
  if (v15 && atomic_fetch_add_explicit(v15, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v15, a2);
  }

  v16 = *(v2 + 24);
  *(v2 + 24) = 0;
  if (v16 && atomic_fetch_add_explicit(v16, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v16, a2);
  }

  v17 = *(v2 + 16);
  *(v2 + 16) = 0;
  if (v17)
  {
    if (atomic_fetch_add_explicit(v17, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v17, a2);
    }
  }

  _Unwind_Resume(exception_object);
}

void *_ZN3WTF6Detail15CallableWrapperIZZZZN8WebPushD16SubscribeRequest9startImplENS3_7IsRetryEEN3__0clINSt3__18optionalIN7WebCore10PushRecordEEEEEDaOT_ENUlP8NSStringP7NSErrorE_clESG_SI_ENUlSE_E_clISB_EESC_SE_EUlvE_vJEED1Ev(void *a1, void *a2)
{
  *a1 = &unk_1F10EAA08;
  WebCore::PushRecord::~PushRecord((a1 + 4), a2);
  v4 = a1[2];
  a1[2] = 0;
  if (v4 && atomic_fetch_add(v4, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v4);
    WTF::fastFree(v4, v3);
  }

  return a1;
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZZZZN8WebPushD16SubscribeRequest9startImplENS3_7IsRetryEEN3__0clINSt3__18optionalIN7WebCore10PushRecordEEEEEDaOT_ENUlP8NSStringP7NSErrorE_clESG_SI_ENUlSE_E_clISB_EESC_SE_EUlvE_vJEED0Ev(void *a1, void *a2)
{
  *a1 = &unk_1F10EAA08;
  WebCore::PushRecord::~PushRecord((a1 + 4), a2);
  v4 = a1[2];
  a1[2] = 0;
  if (v4 && atomic_fetch_add(v4, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v4);
    WTF::fastFree(v4, v3);
  }

  return WTF::fastFree(a1, v3);
}

_DWORD *_ZN3WTF6Detail15CallableWrapperIZZZZN8WebPushD16SubscribeRequest9startImplENS3_7IsRetryEEN3__0clINSt3__18optionalIN7WebCore10PushRecordEEEEEDaOT_ENUlP8NSStringP7NSErrorE_clESG_SI_ENUlSE_E_clISB_EESC_SE_EUlvE_vJEE4callEv(_DWORD *result)
{
  v1 = *(result + 2);
  if (v1)
  {
    v2 = *(v1 + 8);
    if (v2)
    {
      ++*(v2 + 104);
      WebPushD::makePushSubscriptionFromRecord(&v8, result + 4);
      WebPushD::PushServiceRequestImpl<WebCore::PushSubscriptionData>::fulfill(v2, &v8);
      v4 = v14;
      if (v14)
      {
        v14 = 0;
        v15 = 0;
        WTF::fastFree(v4, v3);
      }

      v5 = v12;
      if (v12)
      {
        v12 = 0;
        v13 = 0;
        WTF::fastFree(v5, v3);
      }

      v6 = v10;
      if (v10)
      {
        v10 = 0;
        v11 = 0;
        WTF::fastFree(v6, v3);
      }

      v7 = v9;
      v9 = 0;
      if (v7)
      {
        if (atomic_fetch_add_explicit(v7, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v7, v3);
        }
      }

      return WTF::RefCounted<WebPushD::SubscribeRequest>::deref((v2 + 104), v3);
    }
  }

  return result;
}

void sub_19D8CAB7C(_Unwind_Exception *a1, void *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, WTF::StringImpl *a10, uint64_t a11, uint64_t a12, WTF *a13, int a14, WTF *a15, int a16, WTF *a17, int a18)
{
  if (a17)
  {
    WTF::fastFree(a17, a2);
  }

  if (a15)
  {
    WTF::fastFree(a15, a2);
  }

  if (a13)
  {
    WTF::fastFree(a13, a2);
  }

  if (a10)
  {
    if (atomic_fetch_add_explicit(a10, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(a10, a2);
    }
  }

  WTF::RefCounted<WebPushD::SubscribeRequest>::deref(v18, a2);
  _Unwind_Resume(a1);
}

void WebCore::PushRecord::~PushRecord(WebCore::PushRecord *this, void *a2)
{
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

  v5 = *(this + 12);
  if (v5)
  {
    *(this + 12) = 0;
    *(this + 26) = 0;
    WTF::fastFree(v5, a2);
  }

  v6 = *(this + 10);
  if (v6)
  {
    *(this + 10) = 0;
    *(this + 22) = 0;
    WTF::fastFree(v6, a2);
  }

  v7 = *(this + 9);
  *(this + 9) = 0;
  if (v7 && atomic_fetch_add_explicit(v7, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v7, a2);
  }

  v8 = *(this + 8);
  *(this + 8) = 0;
  if (v8 && atomic_fetch_add_explicit(v8, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v8, a2);
  }

  v9 = *(this + 7);
  *(this + 7) = 0;
  if (v9 && atomic_fetch_add_explicit(v9, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v9, a2);
  }

  v10 = *(this + 6);
  *(this + 6) = 0;
  if (v10 && atomic_fetch_add_explicit(v10, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v10, a2);
  }

  v11 = *(this + 3);
  *(this + 3) = 0;
  if (v11 && atomic_fetch_add_explicit(v11, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v11, a2);
  }

  v12 = *(this + 2);
  *(this + 2) = 0;
  if (v12)
  {
    if (atomic_fetch_add_explicit(v12, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v12, a2);
    }
  }
}

void *WTF::Detail::CallableWrapper<WebPushD::SubscribeRequest::attemptToRecoverFromTopicAlreadyInFilterError(WTF::String &&)::$_0,void>::~CallableWrapper(void *a1, WTF::StringImpl *a2)
{
  *a1 = &unk_1F10EAA30;
  v3 = a1[2];
  a1[2] = 0;
  if (v3 && atomic_fetch_add_explicit(v3, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v3, a2);
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

uint64_t WTF::Detail::CallableWrapper<WebPushD::SubscribeRequest::attemptToRecoverFromTopicAlreadyInFilterError(WTF::String &&)::$_0,void>::~CallableWrapper(WTF *this, WTF::StringImpl *a2)
{
  *this = &unk_1F10EAA30;
  v3 = *(this + 2);
  *(this + 2) = 0;
  if (v3 && atomic_fetch_add_explicit(v3, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v3, a2);
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

uint64_t WTF::Detail::CallableWrapper<WebPushD::SubscribeRequest::attemptToRecoverFromTopicAlreadyInFilterError(WTF::String &&)::$_0,void>::call(uint64_t result)
{
  v1 = *(result + 8);
  if (v1)
  {
    v2 = *(v1 + 8);
    if (v2)
    {
      v4 = *(v2 + 104);
      v3 = (v2 + 104);
      *v3 = v4 + 1;
      v5 = *(*(v3 - 4) + 8);
      if (v5)
      {
        v6 = result;
        ++v5[4];
        (*(*v5 + 48))(v23, v5);
        WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::Vector(&v20, v23);
        v7 = v22;
        if (v22 == v21)
        {
          WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::appendSlowCase<(WTF::FailureAction)0,WTF::String&>(&v20, v6 + 16);
        }

        else
        {
          v8 = v20;
          v9 = *(v6 + 16);
          if (v9)
          {
            atomic_fetch_add_explicit(v9, 2u, memory_order_relaxed);
          }

          v10 = v22;
          *(v8 + 8 * v7) = v9;
          v22 = v10 + 1;
        }

        (*(*v5 + 80))(v5, &v20);
        v11 = (*(*v5 + 80))(v5, v23);
        v12 = WTF::WorkQueue::mainSingleton(v11);
        v13 = *(v6 + 8);
        *(v6 + 8) = 0;
        v14 = WTF::fastMalloc(0x10);
        *v14 = &unk_1F10EAA58;
        v14[1] = v13;
        v19 = v14;
        (*(*v12 + 48))(v12, &v19);
        v16 = v19;
        v19 = 0;
        if (v16)
        {
          (*(*v16 + 8))(v16);
        }

        WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v20, v15);
        WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v23, v17);
        if (v5[4] == 1)
        {
          (*(*v5 + 8))(v5);
        }

        else
        {
          --v5[4];
        }

        return WTF::RefCounted<WebPushD::SubscribeRequest>::deref(v3, v18);
      }

      else
      {
        result = 103;
        __break(0xC471u);
      }
    }
  }

  return result;
}

void sub_19D8CB098(_Unwind_Exception *a1, void *a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va1, a4);
  va_start(va, a4);
  v9 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  if (a4)
  {
    (*(*a4 + 8))(a4);
  }

  WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(va, a2);
  WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(va1, v7);
  if (v5[4] == 1)
  {
    (*(*v5 + 8))(v5);
  }

  else
  {
    --v5[4];
  }

  WTF::RefCounted<WebPushD::SubscribeRequest>::deref(v4, v8);
  _Unwind_Resume(a1);
}

uint64_t WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::appendSlowCase<(WTF::FailureAction)0,WTF::String&>(uint64_t a1, unint64_t a2)
{
  v3 = WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(a1, *(a1 + 12) + 1, a2);
  v4 = *(a1 + 12);
  v5 = *a1;
  v6 = *v3;
  if (*v3)
  {
    atomic_fetch_add_explicit(v6, 2u, memory_order_relaxed);
  }

  v7 = *(a1 + 12);
  *(v5 + 8 * v4) = v6;
  *(a1 + 12) = v7 + 1;
  return 1;
}

void *WTF::Detail::CallableWrapper<WebPushD::SubscribeRequest::attemptToRecoverFromTopicAlreadyInFilterError(WTF::String &&)::$_0::operator()(void)::{lambda(void)#1},void>::~CallableWrapper(void *a1, void *a2)
{
  v3 = a1[1];
  *a1 = &unk_1F10EAA58;
  a1[1] = 0;
  if (v3 && atomic_fetch_add(v3, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v3);
    WTF::fastFree(v3, a2);
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WebPushD::SubscribeRequest::attemptToRecoverFromTopicAlreadyInFilterError(WTF::String &&)::$_0::operator()(void)::{lambda(void)#1},void>::~CallableWrapper(WTF *this, void *a2)
{
  v3 = *(this + 1);
  *this = &unk_1F10EAA58;
  *(this + 1) = 0;
  if (v3 && atomic_fetch_add(v3, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v3);
    WTF::fastFree(v3, a2);
  }

  return WTF::fastFree(this, a2);
}

_DWORD *WTF::Detail::CallableWrapper<WebPushD::SubscribeRequest::attemptToRecoverFromTopicAlreadyInFilterError(WTF::String &&)::$_0::operator()(void)::{lambda(void)#1},void>::call(_DWORD *result)
{
  v1 = *(result + 1);
  if (v1)
  {
    result = *(v1 + 8);
    if (result)
    {
      v2 = result + 26;
      ++result[26];
      WebPushD::SubscribeRequest::startImpl(result, 1);

      return WTF::RefCounted<WebPushD::SubscribeRequest>::deref(v2, v3);
    }
  }

  return result;
}

void *WTF::Detail::CallableWrapper<WebPushD::UnsubscribeRequest::startInternal(void)::$_0,void,std::optional<WebCore::PushRecord> &&>::~CallableWrapper(void *a1, void *a2)
{
  v3 = a1[1];
  *a1 = &unk_1F10EAA80;
  a1[1] = 0;
  if (v3 && atomic_fetch_add(v3, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v3);
    WTF::fastFree(v3, a2);
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WebPushD::UnsubscribeRequest::startInternal(void)::$_0,void,std::optional<WebCore::PushRecord> &&>::~CallableWrapper(WTF *this, void *a2)
{
  v3 = *(this + 1);
  *this = &unk_1F10EAA80;
  *(this + 1) = 0;
  if (v3 && atomic_fetch_add(v3, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v3);
    WTF::fastFree(v3, a2);
  }

  return WTF::fastFree(this, a2);
}

_DWORD *WTF::Detail::CallableWrapper<WebPushD::UnsubscribeRequest::startInternal(void)::$_0,void,std::optional<WebCore::PushRecord> &&>::call(_DWORD *result, uint64_t a2)
{
  v2 = *(result + 1);
  if (v2)
  {
    v3 = *(v2 + 8);
    if (v3)
    {
      v5 = (v3 + 104);
      ++*(v3 + 104);
      if (*(a2 + 160) == 1 && (*(v3 + 120) != 1 || *a2 && *a2 == *(v3 + 112)))
      {
        v6 = *(*(v3 + 80) + 8);
        if (!v6 || (++*(v6 + 8), !*a2))
        {
          __break(0xC471u);
          JUMPOUT(0x19D8CB57CLL);
        }

        *(result + 1) = 0;
        v7 = *(a2 + 92);
        if (v7)
        {
          v8 = WTF::fastMalloc(*(a2 + 92));
          memcpy(v8, *(a2 + 80), *(a2 + 92));
        }

        else
        {
          v8 = 0;
        }

        v9 = WTF::fastMalloc(0x20);
        *v9 = &unk_1F10EAAA8;
        *(v9 + 8) = v2;
        *(v9 + 16) = v8;
        *(v9 + 24) = v7;
        *(v9 + 28) = v7;
        v11 = v9;
        WebCore::PushDatabase::removeRecordByIdentifier();
        if (v11)
        {
          (*(*v11 + 8))(v11);
        }

        WTF::RefCounted<WebCore::PushDatabase>::deref((v6 + 8));
      }

      else
      {
        WebPushD::PushServiceRequestImpl<BOOL>::fulfill(v3, 0);
      }

      return WTF::RefCounted<WebPushD::UnsubscribeRequest>::deref(v5, v10);
    }
  }

  return result;
}

void sub_19D8CB5A0(_Unwind_Exception *a1, void *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (atomic_fetch_add(v12, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v12);
    WTF::fastFree(v12, a2);
  }

  WTF::RefCounted<WebCore::PushDatabase>::deref(v11);
  WTF::RefCounted<WebPushD::UnsubscribeRequest>::deref(v10, v14);
  _Unwind_Resume(a1);
}

uint64_t WebPushD::PushServiceRequestImpl<BOOL>::fulfill(uint64_t *a1, int a2)
{
  v27 = *MEMORY[0x1E69E9840];
  v4 = qword_1ED6410A8;
  if (os_log_type_enabled(qword_1ED6410A8, OS_LOG_TYPE_DEFAULT))
  {
    v5 = (*(*a1 + 32))(a1);
    WebCore::PushSubscriptionSetIdentifier::debugDescription(&v15, (a1 + 2));
    WTF::String::utf8();
    v6 = v16;
    WTF::String::utf8();
    v7 = v6 + 16;
    if (!v6)
    {
      v7 = 0;
    }

    *buf = 136447235;
    if (v14)
    {
      v8 = v14 + 16;
    }

    else
    {
      v8 = 0;
    }

    v18 = v5;
    v19 = 2048;
    v20 = a1;
    v21 = 1024;
    v22 = a2;
    v23 = 2082;
    v24 = v7;
    v25 = 2085;
    v26 = v8;
    _os_log_impl(&dword_19D52D000, v4, OS_LOG_TYPE_DEFAULT, "Finished pushServiceRequest %{public}s (%p) with result (hasResult: %d) for %{public}s, scope = %{sensitive}s", buf, 0x30u);
    if (v14)
    {
      if (*v14 == 1)
      {
        WTF::fastFree(v14, v9);
      }

      else
      {
        --*v14;
      }
    }

    v10 = v16;
    v16 = 0;
    if (v10)
    {
      if (*v10 == 1)
      {
        WTF::fastFree(v10, v9);
      }

      else
      {
        --*v10;
      }
    }

    v11 = v15;
    v15 = 0;
    if (v11 && atomic_fetch_add_explicit(v11, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v11, v9);
    }
  }

  buf[0] = a2;
  BYTE2(v20) = 0;
  WTF::CompletionHandler<void ()(std::experimental::fundamentals_v3::expected<BOOL,WebCore::ExceptionData> const&)>::operator()(a1 + 11);
  mpark::detail::move_constructor<mpark::detail::traits<BOOL,WebCore::ExceptionData>,(mpark::detail::Trait)1>::~move_constructor(buf, v12);
  return (*(*a1 + 48))(a1);
}

void sub_19D8CB83C(_Unwind_Exception *exception_object, void *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, WTF::StringImpl *a11, WTF *a12, char a13)
{
  if (a12)
  {
    if (*a12 == 1)
    {
      WTF::fastFree(a12, a2);
    }

    else
    {
      --*a12;
    }
  }

  if (a11)
  {
    if (atomic_fetch_add_explicit(a11, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(a11, a2);
    }
  }

  _Unwind_Resume(exception_object);
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZZN8WebPushD18UnsubscribeRequest13startInternalEvEN3__0clINSt3__18optionalIN7WebCore10PushRecordEEEEEDaOT_EUlbE_vJbEED1Ev(uint64_t a1, void *a2)
{
  *a1 = &unk_1F10EAAA8;
  v3 = *(a1 + 16);
  if (v3)
  {
    *(a1 + 16) = 0;
    *(a1 + 24) = 0;
    WTF::fastFree(v3, a2);
  }

  v4 = *(a1 + 8);
  *(a1 + 8) = 0;
  if (v4 && atomic_fetch_add(v4, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v4);
    WTF::fastFree(v4, a2);
  }

  return a1;
}