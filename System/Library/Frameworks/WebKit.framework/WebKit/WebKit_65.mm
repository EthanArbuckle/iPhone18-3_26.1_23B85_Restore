void WebKit::GPUConnectionToWebProcess::setTCCIdentity(WebKit::GPUConnectionToWebProcess *this)
{
  v26 = *MEMORY[0x1E69E9840];
  IPC::Connection::getAuditToken(*(*(this + 10) + 40), v22);
  if (v23)
  {
    v21 = 0;
    *buf = v22[0];
    v25 = v22[1];
    v2 = [MEMORY[0x1E6963618] bundleProxyWithAuditToken:buf error:&v21];
    v3 = v21;
    if (v21)
    {
      v18 = qword_1ED641580;
      if (os_log_type_enabled(qword_1ED641580, OS_LOG_TYPE_ERROR))
      {
        v19 = [objc_msgSend(v3 "localizedDescription")];
        *buf = 136315138;
        *&buf[4] = v19;
        _os_log_error_impl(&dword_19D52D000, v18, OS_LOG_TYPE_ERROR, "[LSBundleProxy bundleProxyWithAuditToken:error:] failed with error %s", buf, 0xCu);
      }
    }

    MEMORY[0x19EB02040](buf, [v2 bundleIdentifier]);
    if (*buf)
    {
LABEL_4:
      WTF::String::utf8();
      if (v20)
      {
        v5 = v20 + 16;
      }

      else
      {
        v5 = 0;
      }

      v7 = WebKit::softLinkTCCtcc_identity_create(0, v5);
      v8 = v20;
      v20 = 0;
      if (v8)
      {
        if (*v8 == 1)
        {
          v8 = WTF::fastFree(v8, v6);
          if (v7)
          {
LABEL_11:
            v9 = WebCore::RealtimeMediaSourceCenter::singleton(v8);
            v11 = *(v9 + 104);
            *(v9 + 104) = v7;
            if (v11)
            {
            }

            goto LABEL_26;
          }

          goto LABEL_25;
        }

        --*v8;
      }

      if (v7)
      {
        goto LABEL_11;
      }

LABEL_25:
      v15 = qword_1ED641580;
      if (!os_log_type_enabled(qword_1ED641580, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_26;
      }

      LOWORD(v20) = 0;
      v16 = "tcc_identity_create returned null";
LABEL_31:
      _os_log_error_impl(&dword_19D52D000, v15, OS_LOG_TYPE_ERROR, v16, &v20, 2u);
LABEL_26:
      v17 = *buf;
      *buf = 0;
      if (v17)
      {
        if (atomic_fetch_add_explicit(v17, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v17, v10);
        }
      }

      return;
    }

    v13 = *(this + 27);
    if (v13)
    {
      atomic_fetch_add_explicit(v13, 2u, memory_order_relaxed);
      v14 = *buf;
      *buf = v13;
      if (!v14)
      {
        goto LABEL_4;
      }

      if (atomic_fetch_add_explicit(v14, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v14, v4);
      }

      if (*buf)
      {
        goto LABEL_4;
      }
    }

    else
    {
      *buf = 0;
    }

    v15 = qword_1ED641580;
    if (!os_log_type_enabled(qword_1ED641580, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_26;
    }

    LOWORD(v20) = 0;
    v16 = "Unable to get the bundle identifier";
    goto LABEL_31;
  }

  v12 = qword_1ED641580;
  if (os_log_type_enabled(qword_1ED641580, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_error_impl(&dword_19D52D000, v12, OS_LOG_TYPE_ERROR, "getAuditToken returned null", buf, 2u);
  }
}

void sub_19D8E53A4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, WTF *a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, WTF::StringImpl *a17)
{
  if (a17)
  {
    if (atomic_fetch_add_explicit(a17, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(a17, v19);
    }
  }

  _Unwind_Resume(a1);
}

uint64_t *WebKit::GPUConnectionToWebProcess::setMediaEnvironment(uint64_t a1, uint64_t a2, atomic_uint **a3)
{
  v7 = a2;
  if (*a3 && (*a3)[1])
  {
    return WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::String,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::inlineSet<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long> const&,WTF::String const&>(&v6, (a1 + 328), &v7, a3);
  }

  v4 = WTF::HashTable<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::String>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::String>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::String,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::find<WTF::IdentityHashTranslator<WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::String,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,(WTF::ShouldValidateKey)1,WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>((a1 + 328), a2);

  return WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::String,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::remove((a1 + 328), v4);
}

void WebKit::GPUProcess::additionalStateForDiagnosticReport(WebKit::GPUProcess *this@<X0>, void *a2@<X8>)
{
  v4 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:1];
  v7 = *(this + 18);
  v6 = (this + 144);
  v5 = v7;
  if (v7 && *(v5 - 12))
  {
    v8 = objc_alloc(MEMORY[0x1E695DF90]);
    if (*v6)
    {
      v9 = *(*v6 - 3);
    }

    else
    {
      v9 = 0;
    }

    v10 = [v8 initWithCapacity:v9];
    v11 = WTF::HashTable<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::GPUConnectionToWebProcess,WTF::RawPtrTraits<WebKit::GPUConnectionToWebProcess>,WTF::DefaultRefDerefTraits<WebKit::GPUConnectionToWebProcess>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::GPUConnectionToWebProcess,WTF::RawPtrTraits<WebKit::GPUConnectionToWebProcess>,WTF::DefaultRefDerefTraits<WebKit::GPUConnectionToWebProcess>>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::GPUConnectionToWebProcess,WTF::RawPtrTraits<WebKit::GPUConnectionToWebProcess>,WTF::DefaultRefDerefTraits<WebKit::GPUConnectionToWebProcess>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::Ref<WebKit::GPUConnectionToWebProcess,WTF::RawPtrTraits<WebKit::GPUConnectionToWebProcess>,WTF::DefaultRefDerefTraits<WebKit::GPUConnectionToWebProcess>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::begin(v6);
    v12 = v11;
    v14 = v13;
    v27 = a2;
    if (*v6)
    {
      v15 = &(*v6)[2 * *(*v6 - 1)];
    }

    else
    {
      v15 = 0;
    }

    if (v15 != v11)
    {
      while (1)
      {
        v16 = v12[1];
        v17 = *(v16 + 28);
        if (!v17 || !*(v17 - 12))
        {
          goto LABEL_25;
        }

        v18 = objc_alloc(MEMORY[0x1E695DF90]);
        v19 = *(v16 + 28);
        v20 = v19 ? *(v19 - 12) : 0;
        v21 = [v18 initWithCapacity:{v20, v27}];
        WTF::String::number(*v12);
        if (v29)
        {
          atomic_fetch_add_explicit(v29, 2u, memory_order_relaxed);
          MEMORY[0x19EB00B70](&v30, v29);
          if (atomic_fetch_add_explicit(v29, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v29, v22);
          }
        }

        else
        {
          v30 = &stru_1F1147748;
          v23 = &stru_1F1147748;
        }

        [v10 setObject:v21 forKey:v30];
        v25 = v30;
        v30 = 0;
        if (v25)
        {
        }

        v26 = v29;
        v29 = 0;
        if (!v26 || atomic_fetch_add_explicit(v26, 0xFFFFFFFE, memory_order_relaxed) != 2)
        {
          break;
        }

        WTF::StringImpl::destroy(v26, v24);
        if (v21)
        {
          goto LABEL_24;
        }

        do
        {
LABEL_25:
          v12 += 2;
        }

        while (v12 != v14 && *v12 + 1 <= 1);
        if (v12 == v15)
        {
          goto LABEL_31;
        }
      }

      if (!v21)
      {
        goto LABEL_25;
      }

LABEL_24:

      goto LABEL_25;
    }

LABEL_31:
    if ([v10 count])
    {
      [v4 setObject:v10 forKey:@"RemoteRenderingBackend states"];
    }

    a2 = v28;
    if (v10)
    {
    }
  }

  *a2 = v4;
}

void sub_19D8E56A0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, WTF::StringImpl *a11, uint64_t a12)
{
  if (v12)
  {
  }

  if (a10)
  {
  }

  _Unwind_Resume(exception_object);
}

void WebKit::GPUProcess::ensureAVCaptureServerConnection(WebKit::GPUProcess *this)
{
  v1 = qword_1ED641580;
  if (os_log_type_enabled(qword_1ED641580, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_19D52D000, v1, OS_LOG_TYPE_DEFAULT, "GPUProcess::ensureAVCaptureServerConnection: Entering.", buf, 2u);
  }

  v2 = (*MEMORY[0x1E69E22A8])();
  v3 = v2;
  if (v2)
  {
    v4 = v2;
  }

  if (objc_opt_respondsToSelector())
  {
    v5 = qword_1ED641580;
    if (os_log_type_enabled(qword_1ED641580, OS_LOG_TYPE_DEFAULT))
    {
      *v6 = 0;
      _os_log_impl(&dword_19D52D000, v5, OS_LOG_TYPE_DEFAULT, "GPUProcess::ensureAVCaptureServerConnection: Calling [AVCaptureDevice ensureServerConnection]", v6, 2u);
    }

    [v3 ensureServerConnection];
  }

  if (v3)
  {
  }
}

void sub_19D8E5828(_Unwind_Exception *exception_object)
{
  if (v1)
  {
  }

  _Unwind_Resume(exception_object);
}

void WebKit::GPUProcess::platformInitializeGPUProcess(WebKit::AuxiliaryProcess *a1, uint64_t a2)
{
  v8 = *MEMORY[0x1E69E9840];
  if (*(a2 + 120) == 1)
  {
    v5 = qword_1ED6416A0;
    if (os_log_type_enabled(qword_1ED6416A0, OS_LOG_TYPE_DEFAULT))
    {
      *v7 = 134217984;
      *&v7[4] = a1;
      _os_log_impl(&dword_19D52D000, v5, OS_LOG_TYPE_DEFAULT, "%p - GPUProcess::platformInitializeGPUProcess: enabling Metal debug device", v7, 0xCu);
    }

    setenv("MTL_DEBUG_LAYER", "1", 1);
  }

  if (*(a2 + 121) == 1)
  {
    v6 = qword_1ED6416A0;
    if (os_log_type_enabled(qword_1ED6416A0, OS_LOG_TYPE_DEFAULT))
    {
      *v7 = 134217984;
      *&v7[4] = a1;
      _os_log_impl(&dword_19D52D000, v6, OS_LOG_TYPE_DEFAULT, "%p - GPUProcess::platformInitializeGPUProcess: enabling Metal shader validation", v7, 0xCu);
    }

    setenv("MTL_SHADER_VALIDATION", "1", 1);
    setenv("MTL_SHADER_VALIDATION_ABORT_ON_FAULT", "1", 1);
    setenv("MTL_SHADER_VALIDATION_REPORT_TO_STDERR", "1", 1);
    setenv("MTL_SHADER_VALIDATION_GPUOPT_ENABLE_RUNTIME_STACKTRACE", "0", 1);
  }

  WTF::String::createNSString((a2 + 56), v7);
  MTLSetShaderCachePath();
  v4 = *v7;
  *v7 = 0;
  if (v4)
  {
  }

  if (+[WKProcessExtension sharedInstance])
  {
    [+[WKProcessExtension sharedInstance](WKProcessExtension lockdownSandbox:"lockdownSandbox:", @"2.0"];
  }

  WebKit::AuxiliaryProcess::increaseFileDescriptorLimit(a1);
}

void sub_19D8E5A1C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9)
{
  if (a9)
  {
  }

  _Unwind_Resume(exception_object);
}

void WebKit::GPUProcess::resolveBookmarkDataForCacheDirectory(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBytes:a2 length:a3];
  v5 = 0;
  v4 = 0;
  [MEMORY[0x1E695DFF8] URLByResolvingBookmarkData:v3 options:256 relativeToURL:0 bookmarkDataIsStale:&v5 error:&v4];
  if (v3)
  {
  }
}

void sub_19D8E5AB8(_Unwind_Exception *exception_object)
{
  if (v1)
  {
  }

  _Unwind_Resume(exception_object);
}

uint64_t WebKit::GPUProcess::postWillTakeSnapshotNotification(uint64_t a1, uint64_t *a2)
{
  [MEMORY[0x1E6979518] begin];
  [MEMORY[0x1E6979518] setDisableActions:1];
  [objc_msgSend(MEMORY[0x1E696AD88] "defaultCenter")];
  [MEMORY[0x1E6979518] commit];

  return WTF::CompletionHandler<void ()(void)>::operator()(a2);
}

WebKit::SandboxExtensionImpl *WebKit::GPUProcess::registerFonts(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 12);
  if (v2)
  {
    v3 = *a2;
    v4 = 8 * v2;
    do
    {
      result = WebKit::SandboxExtension::consumePermanently(v3++);
      v4 -= 8;
    }

    while (v4);
  }

  return result;
}

uint64_t WebKit::RemoteMediaPlayerProxy::setVideoLayerSizeIfPossible(uint64_t this, const WebCore::FloatSize *a2)
{
  v2 = *(this + 160);
  if (v2)
  {
    v4 = this;
    v5 = *(v2 + 16);
    if (!v5)
    {
      v5 = *(v2 + 8);
    }

    this = [v5 layer];
    if (this && *a2 > 0.0 && *(a2 + 1) > 0.0)
    {
      v6 = *(v4 + 904);
      atomic_fetch_add(v6 + 2, 1u);
      v7 = *a2;
      v10 = *(a2 + 1);
      v11 = v7;
      v8 = *(v4 + 760);
      v12[0] = "RemoteMediaPlayerProxy";
      v12[1] = 23;
      v12[2] = "setVideoLayerSizeIfPossible";
      v12[3] = v8;
      if (WTF::Logger::willLog<WTF::Logger::LogSiteIdentifier,float,char [2],float>(v6, &WebKit2LogMedia, v12, &v11, &v10))
      {
        WTF::Logger::log<WTF::Logger::LogSiteIdentifier,float,char [2],float>(&WebKit2LogMedia, v12, &v11, &v10);
      }

      if (v6 && atomic_fetch_add(v6 + 2, 0xFFFFFFFF) == 1)
      {
        atomic_store(1u, v6 + 2);
        (*(*v6 + 8))(v6);
      }

      [MEMORY[0x1E6979518] begin];
      [MEMORY[0x1E6979518] setDisableActions:1];
      WebKit::LayerHostingContext::protectedRootLayer(*(v4 + 160), v12);
      v9 = v12[0];
      [v12[0] setFrame:{0.0, 0.0, *a2, *(a2 + 1)}];
      if (v9)
      {
      }

      return [MEMORY[0x1E6979518] commit];
    }
  }

  return this;
}

void sub_19D8E5D00(_Unwind_Exception *exception_object)
{
  if (v1)
  {
  }

  _Unwind_Resume(exception_object);
}

atomic_ullong *WebKit::RemoteMediaPlayerProxy::mediaPlayerFirstVideoFrameAvailable(WebKit::RemoteMediaPlayerProxy *this)
{
  v2 = *(this + 113);
  atomic_fetch_add(v2 + 2, 1u);
  v3 = *(this + 95);
  v15[0] = "RemoteMediaPlayerProxy";
  v15[1] = 23;
  v15[2] = "mediaPlayerFirstVideoFrameAvailable";
  v15[3] = v3;
  if (WTF::Logger::willLog<WTF::Logger::LogSiteIdentifier>(v2, &WebKit2LogMedia, 0, v15))
  {
    WTF::Logger::log<WTF::Logger::LogSiteIdentifier>(&WebKit2LogMedia, 0, v15);
  }

  if (v2 && atomic_fetch_add(v2 + 2, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v2 + 2);
    (*(*v2 + 8))(v2);
  }

  WebKit::RemoteMediaPlayerProxy::setVideoLayerSizeIfPossible(this, (this + 752));
  v5 = *(this + 16);
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
      goto LABEL_11;
    }
  }

  WTF::ThreadSafeWeakPtrControlBlock::strongRef(*v5);
LABEL_11:
  v8 = *(this + 13);
  v9 = IPC::Encoder::operator new(0x238, v4);
  *v9 = 340;
  *(v9 + 2) = 0;
  *(v9 + 3) = 0;
  *(v9 + 1) = v8;
  *(v9 + 68) = 0;
  *(v9 + 70) = 0;
  *(v9 + 69) = 0;
  IPC::Encoder::encodeHeader(v9);
  v15[0] = v9;
  IPC::Connection::sendMessageImpl(v5, v15, 0, 0);
  v11 = v15[0];
  v15[0] = 0;
  if (v11)
  {
    IPC::Encoder::~Encoder(v11, v10);
    bmalloc::api::tzoneFree(v13, v14);
  }

  return WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v5);
}

void WebKit::RemoteMediaPlayerProxy::mediaPlayerRenderingModeChanged(WebKit::RemoteMediaPlayerProxy *this)
{
  v2 = *(this + 113);
  atomic_fetch_add(v2 + 2, 1u);
  v3 = *(this + 95);
  *&v57.origin.x = "RemoteMediaPlayerProxy";
  *&v57.origin.y = 23;
  *&v57.size.width = "mediaPlayerRenderingModeChanged";
  v57.size.height = v3;
  if (WTF::Logger::willLog<WTF::Logger::LogSiteIdentifier>(v2, &WebKit2LogMedia, 0, &v57))
  {
    WTF::Logger::log<WTF::Logger::LogSiteIdentifier>(&WebKit2LogMedia, 0, &v57);
  }

  if (v2 && atomic_fetch_add(v2 + 2, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v2 + 2);
    (*(*v2 + 8))(v2);
  }

  WebKit::RemoteMediaPlayerProxy::protectedPlayer(this, &v57);
  v4 = WebCore::MediaPlayer::platformLayer(*&v57.origin.x);
  v6 = v4;
  if (v4)
  {
    v7 = v4;
  }

  x = v57.origin.x;
  v57.origin.x = 0.0;
  if (x != 0.0)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebCore::MediaPlayer,(WTF::DestructionThread)1>::deref(*&x);
  }

  v10 = (this + 160);
  v9 = *(this + 20);
  if (v6)
  {
    if (v9)
    {
      goto LABEL_40;
    }

    BYTE1(v52) = 1;
    LOBYTE(v52) = *(this + 772);
    WebKit::LayerHostingContext::create(&v52, v5, &v57);
    std::unique_ptr<WebKit::LayerHostingContext>::operator=[abi:sn200100](this + 20, &v57);
    v11 = v57.origin.x;
    v57.origin.x = 0.0;
    if (v11 != 0.0)
    {
      WebKit::LayerHostingContext::~LayerHostingContext(*&v11);
      bmalloc::api::tzoneFree(v50, v51);
    }

    v12 = *(this + 188);
    if (v12 <= 0.0 || (v13 = *(this + 189), v13 <= 0.0))
    {
      [v6 frame];
      v57.origin.x = v14;
      v57.origin.y = v15;
      v57.size.width = v16;
      v57.size.height = v17;
      WebCore::FloatRect::FloatRect(&v56, &v57);
      WebCore::enclosingIntRect(&v56, v18);
      v12 = v19;
      v13 = v20;
      *(this + 188) = v19;
      *(this + 189) = v20;
    }

    [v6 setFrame:{0.0, 0.0, v12, v13}];
    v21 = *(this + 16);
    while (1)
    {
      v22 = *v21;
      if ((*v21 & 1) == 0)
      {
        break;
      }

      v23 = *v21;
      atomic_compare_exchange_strong_explicit(v21, &v23, v22 + 2, memory_order_relaxed, memory_order_relaxed);
      if (v23 == v22)
      {
        goto LABEL_31;
      }
    }

    WTF::ThreadSafeWeakPtrControlBlock::strongRef(*v21);
LABEL_31:
    WebKit::LayerHostingContext::hostingContext(*v10, &v57);
    *&v56 = &v57;
    *(&v56 + 1) = this + 752;
    IPC::Connection::send<Messages::MediaPlayerPrivateRemote::LayerHostingContextChanged>(v21, &v56, *(this + 13));
    width = v57.size.width;
    v57.size.width = 0.0;
    if (width != 0.0)
    {
      WTF::fastFree(*&width, v31);
    }

    WTF::MachSendRight::~MachSendRight(&v57.origin.y);
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v21);
    *&v34 = 0;
    v35 = *(this + 18);
    *&v57.origin.x = v35;
    v36 = *(this + 39);
    LODWORD(v57.origin.y) = *(this + 38);
    HIDWORD(v57.origin.y) = v36;
    v56 = v34;
    *(this + 18) = 0;
    *(this + 19) = 0;
    if (v36)
    {
      v37 = 8 * v36;
      do
      {
        WebKit::LayerHostingContext::hostingContext(*v10, v53);
        WTF::CompletionHandler<void ()(WebCore::HostingContext)>::operator()(v35, v53);
        v39 = v55;
        v55 = 0;
        if (v39)
        {
          WTF::fastFree(v39, v38);
        }

        WTF::MachSendRight::~MachSendRight(&v54);
        ++v35;
        v37 -= 8;
      }

      while (v37);
    }

    WTF::Vector<WTF::CompletionHandler<void ()(WebCore::HostingContext)>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v57, v33);
    WTF::Vector<WTF::CompletionHandler<void ()(WebCore::HostingContext)>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v56, v40);
  }

  else
  {
    if (!v9)
    {
      goto LABEL_43;
    }

    *(this + 20) = 0;
    WebKit::LayerHostingContext::~LayerHostingContext(v9);
    bmalloc::api::tzoneFree(v24, v25);
    v26 = *(this + 16);
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
        goto LABEL_27;
      }
    }

    WTF::ThreadSafeWeakPtrControlBlock::strongRef(*v26);
LABEL_27:
    LODWORD(v57.origin.x) = 0;
    LODWORD(v57.origin.y) = 0;
    v57.size.width = 0.0;
    v52 = 0;
    *&v56 = &v57;
    *(&v56 + 1) = &v52;
    IPC::Connection::send<Messages::MediaPlayerPrivateRemote::LayerHostingContextChanged>(v26, &v56, *(this + 13));
    v30 = v57.size.width;
    v57.size.width = 0.0;
    if (v30 != 0.0)
    {
      WTF::fastFree(*&v30, v29);
    }

    WTF::MachSendRight::~MachSendRight(&v57.origin.y);
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v26);
  }

  v9 = *v10;
  if (*v10)
  {
LABEL_40:
    if (v9[2])
    {
      [v9[2] setLayer:v6];
    }

    else
    {
      [v9[1] setLayer:v6];
    }
  }

LABEL_43:
  v41 = *(this + 16);
  while (1)
  {
    v42 = *v41;
    if ((*v41 & 1) == 0)
    {
      break;
    }

    v43 = *v41;
    atomic_compare_exchange_strong_explicit(v41, &v43, v42 + 2, memory_order_relaxed, memory_order_relaxed);
    if (v43 == v42)
    {
      goto LABEL_48;
    }
  }

  WTF::ThreadSafeWeakPtrControlBlock::strongRef(*v41);
LABEL_48:
  v44 = *(this + 13);
  v45 = IPC::Encoder::operator new(0x238, v5);
  *v45 = 363;
  *(v45 + 2) = 0;
  *(v45 + 3) = 0;
  *(v45 + 1) = v44;
  *(v45 + 68) = 0;
  *(v45 + 70) = 0;
  *(v45 + 69) = 0;
  IPC::Encoder::encodeHeader(v45);
  *&v57.origin.x = v45;
  IPC::Connection::sendMessageImpl(v41, &v57, 0, 0);
  v47 = v57.origin.x;
  v57.origin.x = 0.0;
  if (v47 != 0.0)
  {
    IPC::Encoder::~Encoder(*&v47, v46);
    bmalloc::api::tzoneFree(v48, v49);
  }

  WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v41);
  if (v6)
  {
  }
}

void sub_19D8E6354(_Unwind_Exception *a1, void *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, WTF *a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, WTF *a17)
{
  v20 = a17;
  a17 = 0;
  if (v20)
  {
    WTF::fastFree(v20, a2);
  }

  WTF::MachSendRight::~MachSendRight(&a16);
  WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v18);
  if (v17)
  {
  }

  _Unwind_Resume(a1);
}

uint64_t WebKit::RemoteMediaPlayerProxy::protectedPlayer@<X0>(uint64_t this@<X0>, atomic_ullong **a2@<X8>)
{
  v3 = *(this + 136);
  if (v3)
  {
    while (1)
    {
      v4 = *v3;
      if ((*v3 & 1) == 0)
      {
        break;
      }

      v5 = *v3;
      atomic_compare_exchange_strong_explicit(v3, &v5, v4 + 2, memory_order_relaxed, memory_order_relaxed);
      if (v5 == v4)
      {
        goto LABEL_6;
      }
    }

    this = WTF::ThreadSafeWeakPtrControlBlock::strongRef(*v3);
  }

LABEL_6:
  *a2 = v3;
  return this;
}

id **std::unique_ptr<WebKit::LayerHostingContext>::operator=[abi:sn200100](id **a1, id **a2)
{
  v3 = *a2;
  *a2 = 0;
  v4 = *a1;
  *a1 = v3;
  if (v4)
  {
    WebKit::LayerHostingContext::~LayerHostingContext(v4);
    bmalloc::api::tzoneFree(v6, v7);
  }

  return a1;
}

id **std::unique_ptr<WebKit::LayerHostingContext>::~unique_ptr[abi:sn200100](id **a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    WebKit::LayerHostingContext::~LayerHostingContext(v2);
    bmalloc::api::tzoneFree(v4, v5);
  }

  return a1;
}

uint64_t WTF::CompletionHandler<void ()(WebCore::HostingContext)>::operator()(uint64_t *a1, uint64_t a2)
{
  v10 = *a1;
  *a1 = 0;
  v7 = *a2;
  WTF::MachSendRight::MachSendRight();
  v3 = *(a2 + 16);
  *(a2 + 16) = 0;
  v9 = v3;
  WTF::Function<void ()(WebCore::HostingContext)>::operator()(&v10, &v7);
  v5 = v9;
  v9 = 0;
  if (v5)
  {
    WTF::fastFree(v5, v4);
  }

  WTF::MachSendRight::~MachSendRight(&v8);
  result = v10;
  v10 = 0;
  if (result)
  {
    return (*(*result + 8))(result);
  }

  return result;
}

void sub_19D8E65FC(_Unwind_Exception *a1, void *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, WTF *a11, uint64_t a12)
{
  if (a11)
  {
    WTF::fastFree(a11, a2);
  }

  WTF::MachSendRight::~MachSendRight((v12 + 8));
  if (a12)
  {
    (*(*a12 + 8))(a12);
  }

  _Unwind_Resume(a1);
}

void WebKit::RemoteMediaPlayerProxy::requestHostingContext(uint64_t a1, uint64_t *a2)
{
  v4 = *(a1 + 160);
  if (v4)
  {
    WebKit::LayerHostingContext::hostingContext(v4, v12);
    WTF::CompletionHandler<void ()(WebCore::HostingContext)>::operator()(a2, v12);
    v6 = v14;
    v14 = 0;
    if (v6)
    {
      WTF::fastFree(v6, v5);
    }

    WTF::MachSendRight::~MachSendRight(&v13);
  }

  else
  {
    v7 = *(a1 + 156);
    if (v7 == *(a1 + 152))
    {
      v8 = WTF::Vector<WTF::CompletionHandler<void ()(WebCore::HostingContext)>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(a1 + 144, v7 + 1, a2);
      v7 = *(a1 + 156);
      v9 = v7 + 1;
      v10 = *(a1 + 144);
      v11 = *v8;
      *v8 = 0;
    }

    else
    {
      v9 = v7 + 1;
      v10 = *(a1 + 144);
      v11 = *a2;
      *a2 = 0;
    }

    *(v10 + 8 * v7) = v11;
    *(a1 + 156) = v9;
  }
}

void sub_19D8E6710(_Unwind_Exception *a1, void *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, WTF *a12)
{
  v13 = a12;
  a12 = 0;
  if (v13)
  {
    WTF::fastFree(v13, a2);
  }

  WTF::MachSendRight::~MachSendRight(&a11);
  _Unwind_Resume(a1);
}

void WebKit::RemoteMediaPlayerProxy::setVideoLayerSizeFenced(void *a1, const WebCore::FloatSize *a2, const WTF::MachSendRight *a3)
{
  v25 = *MEMORY[0x1E69E9840];
  v6 = qword_1ED640D38;
  if (os_log_type_enabled(qword_1ED640D38, OS_LOG_TYPE_DEFAULT))
  {
    v7 = *a3;
    v8 = *(a3 + 1);
    if (v8)
    {
      v8 = *v8;
    }

    *buf = 67109376;
    *&buf[4] = v7;
    LOWORD(v23) = 2048;
    *(&v23 + 2) = v8;
    _os_log_impl(&dword_19D52D000, v6, OS_LOG_TYPE_DEFAULT, "RemoteMediaPlayerProxy::setVideoLayerSizeFenced: send right %d, fence data size %lu", buf, 0x12u);
  }

  v9 = a1[113];
  atomic_fetch_add(v9 + 2, 1u);
  v10 = *a2;
  v20 = *(a2 + 1);
  LODWORD(v21) = v10;
  v11 = a1[95];
  *buf = "RemoteMediaPlayerProxy";
  *&v23 = 23;
  *(&v23 + 1) = "setVideoLayerSizeFenced";
  v24 = v11;
  if (WTF::Logger::willLog<WTF::Logger::LogSiteIdentifier,float,char [2],float>(v9, &WebKit2LogMedia, buf, &v21, &v20))
  {
    WTF::Logger::log<WTF::Logger::LogSiteIdentifier,float,char [2],float>(&WebKit2LogMedia, buf, &v21, &v20);
  }

  if (v9 && atomic_fetch_add(v9 + 2, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v9 + 2);
    (*(*v9 + 8))(v9);
  }

  if (a1[20])
  {
    WTF::MachSendRight::MachSendRight(buf, a3);
    v12 = *(a3 + 1);
    if (v12)
    {
      WTF::EmbeddedFixedVector<unsigned char,WTF::FastMalloc>::create<unsigned char const*>(v12 + 4, &v12[*v12 + 4], &v21);
      v13 = v21;
    }

    else
    {
      v13 = 0;
    }

    *&v23 = v13;
    WebKit::LayerHostingContext::createHostingUpdateCoordinator(buf, &v21);
    v14 = v21;
    v15 = *(a1[20] + 16);
    if (v15)
    {
      v16 = v15;
    }

    [v14 addLayerHierarchy:v15];
    if (v15)
    {
    }

    v18 = v23;
    *&v23 = 0;
    if (v18)
    {
      WTF::fastFree(v18, v17);
    }

    WTF::MachSendRight::~MachSendRight(buf);
  }

  else
  {
    v14 = 0;
  }

  a1[94] = *a2;
  WebKit::RemoteMediaPlayerProxy::setVideoLayerSizeIfPossible(a1, a2);
  WebKit::RemoteMediaPlayerProxy::protectedPlayer(a1, buf);
  WebCore::MediaPlayer::setVideoLayerSizeFenced();
  v19 = *buf;
  *buf = 0;
  if (v19)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebCore::MediaPlayer,(WTF::DestructionThread)1>::deref(v19);
  }

  [v14 commit];
  if (v14)
  {
  }
}

void sub_19D8E69A8(_Unwind_Exception *a1, void *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, WTF *a12)
{
  v14 = a12;
  a12 = 0;
  if (v14)
  {
    WTF::fastFree(v14, a2);
  }

  WTF::MachSendRight::~MachSendRight(&a11);
  if (v12)
  {
  }

  _Unwind_Resume(a1);
}

atomic_ullong *WebKit::RemoteMediaPlayerProxy::mediaPlayerOnNewVideoFrameMetadata(void *a1, uint64_t a2)
{
  v4 = a1[110];
  v5 = (v4 + 8);
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
  LOBYTE(v22) = 0;
  v23 = 0;
  WebCore::VideoFrameCV::create();
  v8 = v24;
  v24 = 0;
  v25 = v8;
  WebKit::RemoteVideoFrameObjectHeap::add(v4, &v25, v26);
  v10 = v25;
  v25 = 0;
  if (v10 && atomic_fetch_add(v10 + 2, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v10 + 2);
    (*(*v10 + 8))(v10);
  }

  v24 = 0;
  WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::WorkQueueMessageReceiver<(WTF::DestructionThread)0>,(WTF::DestructionThread)0>::deref((v4 + 8), v9);
  v12 = a1[16];
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
      goto LABEL_14;
    }
  }

  WTF::ThreadSafeWeakPtrControlBlock::strongRef(*v12);
LABEL_14:
  v15 = a1[13];
  v16 = IPC::Encoder::operator new(0x238, v11);
  *v16 = 351;
  *(v16 + 2) = 0;
  *(v16 + 3) = 0;
  *(v16 + 1) = v15;
  *(v16 + 68) = 0;
  *(v16 + 70) = 0;
  *(v16 + 69) = 0;
  IPC::Encoder::encodeHeader(v16);
  v22 = v16;
  IPC::ArgumentCoder<WebCore::VideoFrameMetadata,void>::encode(v16, a2);
  IPC::ArgumentCoder<WebKit::RemoteVideoFrameProxyProperties,void>::encode(v16, v26);
  IPC::Connection::sendMessageImpl(v12, &v22, 0, 0);
  v18 = v22;
  v22 = 0;
  if (v18)
  {
    IPC::Encoder::~Encoder(v18, v17);
    bmalloc::api::tzoneFree(v20, v21);
  }

  return WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v12);
}

void WebKit::RemoteMediaPlayerProxy::nativeImageForCurrentTime(WebCore::DestinationColorSpace *a1, uint64_t *a2)
{
  v3 = *(a1 + 17);
  if (!v3)
  {
    LOBYTE(v33) = 0;
    BYTE4(v33) = 0;
    v21 = *WebCore::DestinationColorSpace::SRGB(a1);
    v32 = v21;
    if (v21)
    {
      CFRetain(v21);
    }

    WTF::CompletionHandler<void ()(std::optional<WTF::MachSendRight> &&,WebCore::DestinationColorSpace)>::operator()(a2, &v33, &v32);
    if (v32)
    {
      CFRelease(v32);
    }

    if (BYTE4(v33) == 1)
    {
      WTF::MachSendRight::~MachSendRight(&v33);
    }

    return;
  }

  while (1)
  {
    v4 = *v3;
    if ((*v3 & 1) == 0)
    {
      break;
    }

    v5 = *v3;
    atomic_compare_exchange_strong_explicit(v3, &v5, v4 + 2, memory_order_relaxed, memory_order_relaxed);
    if (v5 == v4)
    {
      goto LABEL_6;
    }
  }

  WTF::ThreadSafeWeakPtrControlBlock::strongRef(*v3);
LABEL_6:
  WebCore::MediaPlayer::nativeImageForCurrentTime(&v33, v3);
  if (!v33)
  {
    LOBYTE(v31) = 0;
    BYTE4(v31) = 0;
    v11 = *WebCore::DestinationColorSpace::SRGB(0);
    v30 = v11;
    if (v11)
    {
      CFRetain(v11);
    }

    WTF::CompletionHandler<void ()(std::optional<WTF::MachSendRight> &&,WebCore::DestinationColorSpace)>::operator()(a2, &v31, &v30);
    v13 = v30;
    v30 = 0;
    if (!v13)
    {
      goto LABEL_18;
    }

LABEL_17:
    CFRelease(v13);
LABEL_18:
    if (BYTE4(v31) == 1)
    {
      WTF::MachSendRight::~MachSendRight(&v31);
    }

    goto LABEL_34;
  }

  v6 = WebCore::NativeImage::platformImage(v33);
  v7 = *v6;
  if (!*v6)
  {
    LOBYTE(v31) = 0;
    BYTE4(v31) = 0;
    v14 = *WebCore::DestinationColorSpace::SRGB(v6);
    v29 = v14;
    if (v14)
    {
      CFRetain(v14);
    }

    WTF::CompletionHandler<void ()(std::optional<WTF::MachSendRight> &&,WebCore::DestinationColorSpace)>::operator()(a2, &v31, &v29);
    v13 = v29;
    v29 = 0;
    if (!v13)
    {
      goto LABEL_18;
    }

    goto LABEL_17;
  }

  CFRetain(*v6);
  WebCore::IOSurface::createFromImage(&v31, 0, v7, v8);
  if (v31)
  {
    WebCore::IOSurface::createSendRight(v25, v31);
    WTF::MachSendRight::MachSendRight();
    v28 = 1;
    WebCore::NativeImage::colorSpace(&cf, v33);
    WTF::CompletionHandler<void ()(std::optional<WTF::MachSendRight> &&,WebCore::DestinationColorSpace)>::operator()(a2, v27, &cf);
    v9 = cf;
    cf = 0;
    if (v9)
    {
      CFRelease(v9);
    }

    if (v28 == 1)
    {
      WTF::MachSendRight::~MachSendRight(v27);
    }

    v10 = v25;
  }

  else
  {
    v27[0] = 0;
    v28 = 0;
    v15 = *WebCore::DestinationColorSpace::SRGB(0);
    v26 = v15;
    if (v15)
    {
      CFRetain(v15);
    }

    WTF::CompletionHandler<void ()(std::optional<WTF::MachSendRight> &&,WebCore::DestinationColorSpace)>::operator()(a2, v27, &v26);
    v16 = v26;
    v26 = 0;
    if (v16)
    {
      CFRelease(v16);
    }

    if (v28 != 1)
    {
      goto LABEL_31;
    }

    v10 = v27;
  }

  WTF::MachSendRight::~MachSendRight(v10);
LABEL_31:
  v17 = v31;
  v31 = 0;
  if (v17)
  {
    WebCore::IOSurface::~IOSurface(v17);
    bmalloc::api::tzoneFree(v22, v23);
  }

  CFRelease(v7);
LABEL_34:
  v18 = v33;
  v33 = 0;
  if (v18)
  {
    do
    {
      v19 = v18[1];
      if ((v19 & 1) == 0)
      {
        WTF::ThreadSafeWeakPtrControlBlock::strongDeref<WebCore::RenderingResource,(WTF::DestructionThread)0>(v18[1], v12);
        goto LABEL_39;
      }

      v20 = v18[1];
      atomic_compare_exchange_strong_explicit(v18 + 1, &v20, (v19 - 2), memory_order_relaxed, memory_order_relaxed);
    }

    while (v20 != v19);
    if (v19 == 3)
    {
      (*(*v18 + 1))(v18);
    }
  }

LABEL_39:
  WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebCore::MediaPlayer,(WTF::DestructionThread)1>::deref(v3);
}

void sub_19D8E6F7C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, CFTypeRef a10, int a11, char a12, CFTypeRef cf, char a14, __int16 a15, char a16, char a17, CFTypeRef a18, uint64_t a19, WebCore::IOSurface *a20)
{
  v22 = *(v20 - 48);
  if (v22)
  {
    CFRelease(v22);
  }

  if (*(v20 - 36) == 1)
  {
    WTF::MachSendRight::~MachSendRight((v20 - 40));
  }

  _Unwind_Resume(exception_object);
}

uint64_t WTF::CompletionHandler<void ()(std::optional<WTF::MachSendRight> &&,WebCore::DestinationColorSpace)>::operator()(uint64_t *a1, uint64_t a2, const void **a3)
{
  v3 = *a1;
  *a1 = 0;
  v4 = *a3;
  *a3 = 0;
  cf = v4;
  (*(*v3 + 16))(v3, a2, &cf);
  v5 = cf;
  cf = 0;
  if (v5)
  {
    CFRelease(v5);
  }

  return (*(*v3 + 8))(v3);
}

void sub_19D8E71B8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, CFTypeRef cf)
{
  if (cf)
  {
    CFRelease(cf);
  }

  (*(*v10 + 8))(v10);
  _Unwind_Resume(a1);
}

void WebKit::RemoteMediaPlayerProxy::colorSpace(WebCore::DestinationColorSpace *a1, uint64_t *a2)
{
  v3 = *(a1 + 17);
  if (v3)
  {
    while (1)
    {
      v4 = *v3;
      if ((*v3 & 1) == 0)
      {
        break;
      }

      v5 = *v3;
      atomic_compare_exchange_strong_explicit(v3, &v5, v4 + 2, memory_order_relaxed, memory_order_relaxed);
      if (v5 == v4)
      {
        goto LABEL_6;
      }
    }

    WTF::ThreadSafeWeakPtrControlBlock::strongRef(*v3);
LABEL_6:
    WebCore::MediaPlayer::colorSpace(&cf, v3);
    WTF::CompletionHandler<void ()(WebCore::DestinationColorSpace)>::operator()(a2, &cf);
    v6 = cf;
    cf = 0;
    if (v6)
    {
      CFRelease(v6);
    }

    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebCore::MediaPlayer,(WTF::DestructionThread)1>::deref(v3);
  }

  else
  {
    v7 = *WebCore::DestinationColorSpace::SRGB(a1);
    v10 = v7;
    if (v7)
    {
      CFRetain(v7);
    }

    WTF::CompletionHandler<void ()(WebCore::DestinationColorSpace)>::operator()(a2, &v10);
    v8 = v10;
    v10 = 0;
    if (v8)
    {
      CFRelease(v8);
    }
  }
}

void sub_19D8E72B8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, CFTypeRef a9, CFTypeRef cf)
{
  if (cf)
  {
    CFRelease(cf);
  }

  _Unwind_Resume(exception_object);
}

uint64_t WTF::CompletionHandler<void ()(WebCore::DestinationColorSpace)>::operator()(uint64_t *a1, const void **a2)
{
  v2 = *a1;
  *a1 = 0;
  v3 = *a2;
  *a2 = 0;
  cf = v3;
  v7 = v2;
  WTF::Function<void ()(WebCore::DestinationColorSpace)>::operator()(&v7, &cf);
  v4 = cf;
  cf = 0;
  if (v4)
  {
    CFRelease(v4);
  }

  result = v7;
  v7 = 0;
  if (result)
  {
    return (*(*result + 8))(result);
  }

  return result;
}

void sub_19D8E7380(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, CFTypeRef cf, uint64_t a10)
{
  if (cf)
  {
    CFRelease(cf);
  }

  if (a10)
  {
    (*(*a10 + 8))(a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t WebKit::RemoteSampleBufferDisplayLayer::create@<X0>(atomic_ullong *a1@<X0>, void *a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  v10 = WebKit::RemoteSampleBufferDisplayLayer::operator new(0xC0, a2);
  result = WebKit::RemoteSampleBufferDisplayLayer::RemoteSampleBufferDisplayLayer(v10, a1, a2, a3, a4);
  if (!*(v10 + 80))
  {
    result = WTF::ThreadSafeRefCounted<WebKit::RemoteSampleBufferDisplayLayer,(WTF::DestructionThread)2>::deref((v10 + 16));
    v10 = 0;
  }

  *a5 = v10;
  return result;
}

uint64_t WebKit::RemoteSampleBufferDisplayLayer::operator new(WebKit::RemoteSampleBufferDisplayLayer *this, void *a2)
{
  if (this == 192 && WebKit::RemoteSampleBufferDisplayLayer::s_heapRef)
  {
    return bmalloc::api::tzoneAllocateNonCompact(WebKit::RemoteSampleBufferDisplayLayer::s_heapRef, a2);
  }

  else
  {
    return WebKit::RemoteSampleBufferDisplayLayer::operatorNewSlow(this);
  }
}

uint64_t WebKit::RemoteSampleBufferDisplayLayer::RemoteSampleBufferDisplayLayer(uint64_t a1, atomic_ullong *a2, uint64_t a3, uint64_t *a4, uint64_t a5)
{
  *(a1 + 16) = 1;
  *(a1 + 8) = 0;
  *(a1 + 32) = 0;
  *a1 = &unk_1F10EB738;
  *(a1 + 24) = &unk_1F10EB790;
  *(a1 + 40) = &unk_1F10EB7D8;
  *(a1 + 48) = a2;
  v10 = WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::GPUConnectionToWebProcess,(WTF::DestructionThread)1>::controlBlock(a2 + 2);
  *(a1 + 56) = WTF::ThreadSafeWeakPtrControlBlock::weakRef(v10);
  *(a1 + 64) = a3;
  v11 = *a4;
  *a4 = 0;
  *(a1 + 72) = v11;
  WebCore::LocalSampleBufferDisplayLayer::create();
  *(a1 + 88) = 0;
  v12 = a2[24];
  while (1)
  {
    v13 = *(v12 + 8);
    if ((v13 & 1) == 0)
    {
      break;
    }

    v14 = *(v12 + 8);
    atomic_compare_exchange_strong_explicit((v12 + 8), &v14, v13 + 2, memory_order_relaxed, memory_order_relaxed);
    if (v14 == v13)
    {
      goto LABEL_6;
    }
  }

  WTF::ThreadSafeWeakPtrControlBlock::strongRef(*(v12 + 8));
LABEL_6:
  *(a1 + 96) = v12;
  WTF::MachSendRight::MachSendRight((a1 + 104), (a2 + 12));
  *(a1 + 108) = 1;
  *(a1 + 112) = 0;
  *(a1 + 120) = 0;
  *(a1 + 128) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 160) = 0;
  *(a1 + 168) = 0;
  *(a1 + 176) = a5;
  v15 = WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::WorkQueueMessageReceiver<(WTF::DestructionThread)0>,(WTF::DestructionThread)0>::controlBlock((a5 + 8));
  *(a1 + 184) = WTF::ThreadSafeWeakPtrControlBlock::weakRef(v15);
  return a1;
}

void sub_19D8E75E4(_Unwind_Exception *a1)
{
  std::unique_ptr<WebKit::LayerHostingContext>::~unique_ptr[abi:sn200100](v4);
  v8 = v3[10];
  v3[10] = 0;
  if (v8)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebCore::SampleBufferDisplayLayer,(WTF::DestructionThread)2>::deref((v8 + 8));
  }

  v9 = v3[9];
  v3[9] = 0;
  if (v9)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v9);
  }

  v10 = v3[7];
  v3[7] = 0;
  if (v10)
  {
    WTF::ThreadSafeWeakPtrControlBlock::weakDeref(v10, v7);
  }

  *v5 = &unk_1F10EA5E0;
  WTF::WeakPtrFactory<WebPushD::PushServiceConnection,WTF::DefaultWeakPtrImpl>::~WeakPtrFactory(v2, v7);
  WTF::WeakPtrFactory<WebPushD::PushServiceConnection,WTF::DefaultWeakPtrImpl>::~WeakPtrFactory(v1, v11);
  _Unwind_Resume(a1);
}

uint64_t WebKit::RemoteSampleBufferDisplayLayer::protectedSampleBufferDisplayLayer@<X0>(uint64_t this@<X0>, void *a2@<X8>)
{
  v3 = *(this + 80);
  if (v3)
  {
    while (1)
    {
      v4 = *(v3 + 8);
      if ((v4 & 1) == 0)
      {
        break;
      }

      v5 = *(v3 + 8);
      atomic_compare_exchange_strong_explicit((v3 + 8), &v5, v4 + 2, memory_order_relaxed, memory_order_relaxed);
      if (v5 == v4)
      {
        goto LABEL_6;
      }
    }

    this = WTF::ThreadSafeWeakPtrControlBlock::strongRef(*(v3 + 8));
  }

LABEL_6:
  *a2 = v3;
  return this;
}

atomic_ullong *WebKit::RemoteSampleBufferDisplayLayer::initialize(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, __int16 a5, uint64_t *a6)
{
  WebKit::RemoteSampleBufferDisplayLayer::protectedSampleBufferDisplayLayer(a1, &v14);
  WTF::WeakPtrFactory<WebPushD::PushServiceConnection,WTF::DefaultWeakPtrImpl>::initializeIfNeeded((a1 + 8), a1);
  v9 = *(a1 + 8);
  atomic_fetch_add(v9, 1u);
  v10 = *a6;
  *a6 = 0;
  v11 = WTF::fastMalloc(0x20);
  *v11 = &unk_1F10EB8D8;
  *(v11 + 8) = v9;
  *(v11 + 16) = a5 | 0x100;
  *(v11 + 24) = v10;
  v13 = v11;
  WebCore::LocalSampleBufferDisplayLayer::initialize();
  result = v13;
  if (v13)
  {
    result = (*(*v13 + 8))(v13);
  }

  if (v14)
  {
    return WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebCore::SampleBufferDisplayLayer,(WTF::DestructionThread)2>::deref((v14 + 8));
  }

  return result;
}

void sub_19D8E77DC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (a9)
  {
    (*(*a9 + 8))(a9);
  }

  if (a10)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebCore::SampleBufferDisplayLayer,(WTF::DestructionThread)2>::deref((a10 + 8));
  }

  _Unwind_Resume(exception_object);
}

void WebKit::RemoteSampleBufferDisplayLayer::~RemoteSampleBufferDisplayLayer(WebKit::RemoteSampleBufferDisplayLayer *this, void *a2)
{
  *this = &unk_1F10EB738;
  *(this + 3) = &unk_1F10EB790;
  *(this + 5) = &unk_1F10EB7D8;
  v3 = *(this + 23);
  *(this + 23) = 0;
  if (v3)
  {
    WTF::ThreadSafeWeakPtrControlBlock::weakDeref(v3, a2);
  }

  WebKit::SharedVideoFrameReader::~SharedVideoFrameReader((this + 96));
  std::unique_ptr<WebKit::LayerHostingContext>::~unique_ptr[abi:sn200100](this + 11);
  v5 = *(this + 10);
  *(this + 10) = 0;
  if (v5)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebCore::SampleBufferDisplayLayer,(WTF::DestructionThread)2>::deref((v5 + 8));
  }

  v6 = *(this + 9);
  *(this + 9) = 0;
  if (v6)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v6);
  }

  v7 = *(this + 7);
  *(this + 7) = 0;
  if (v7)
  {
    WTF::ThreadSafeWeakPtrControlBlock::weakDeref(v7, v4);
  }

  *(this + 3) = &unk_1F10EA5E0;
  WTF::WeakPtrFactory<WebPushD::PushServiceConnection,WTF::DefaultWeakPtrImpl>::~WeakPtrFactory(this + 4, v4);
  WTF::WeakPtrFactory<WebPushD::PushServiceConnection,WTF::DefaultWeakPtrImpl>::~WeakPtrFactory(this + 1, v8);
}

{
  WebKit::RemoteSampleBufferDisplayLayer::~RemoteSampleBufferDisplayLayer(this, a2);

  bmalloc::api::tzoneFree(v2, v3);
}

void non-virtual thunk toWebKit::RemoteSampleBufferDisplayLayer::~RemoteSampleBufferDisplayLayer(WebKit::RemoteSampleBufferDisplayLayer *this, void *a2)
{
  WebKit::RemoteSampleBufferDisplayLayer::~RemoteSampleBufferDisplayLayer((this - 24), a2);
}

{
  WebKit::RemoteSampleBufferDisplayLayer::~RemoteSampleBufferDisplayLayer((this - 40), a2);
}

{
  WebKit::RemoteSampleBufferDisplayLayer::~RemoteSampleBufferDisplayLayer((this - 24), a2);

  bmalloc::api::tzoneFree(v2, v3);
}

{
  WebKit::RemoteSampleBufferDisplayLayer::~RemoteSampleBufferDisplayLayer((this - 40), a2);

  bmalloc::api::tzoneFree(v2, v3);
}

atomic_ullong *WebKit::RemoteSampleBufferDisplayLayer::updateDisplayMode(WebKit::RemoteSampleBufferDisplayLayer *this)
{
  WebKit::RemoteSampleBufferDisplayLayer::protectedSampleBufferDisplayLayer(this, &v3);
  v1 = v3;
  result = WebCore::LocalSampleBufferDisplayLayer::updateDisplayMode(v3);
  if (v1)
  {

    return WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebCore::SampleBufferDisplayLayer,(WTF::DestructionThread)2>::deref(v1 + 1);
  }

  return result;
}

void sub_19D8E7A9C(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebCore::SampleBufferDisplayLayer,(WTF::DestructionThread)2>::deref((v1 + 8));
  }

  _Unwind_Resume(exception_object);
}

void WebKit::RemoteSampleBufferDisplayLayer::updateBoundsAndPosition(uint64_t a1, WTF::MachSendRight *a2)
{
  if (*(a2 + 16) != 1 || *a2 == 0)
  {
LABEL_12:
    v4 = 0;
    goto LABEL_13;
  }

  WebKit::LayerHostingContext::createHostingUpdateCoordinator(a2, &v11);
  v4 = v11;
  if (!v11)
  {
    v7 = qword_1ED640D38;
    if (os_log_type_enabled(qword_1ED640D38, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v11) = 0;
      _os_log_error_impl(&dword_19D52D000, v7, OS_LOG_TYPE_ERROR, "Could not create hosting update coordinator", &v11, 2u);
    }

    goto LABEL_12;
  }

  v5 = *(*(a1 + 88) + 16);
  if (v5)
  {
    v6 = v5;
  }

  [v4 addLayerHierarchy:v5];
  if (v5)
  {
  }

LABEL_13:
  WebKit::RemoteSampleBufferDisplayLayer::protectedSampleBufferDisplayLayer(a1, &v14);
  v8 = v14;
  LOBYTE(v11) = 0;
  v13 = 0;
  WebCore::LocalSampleBufferDisplayLayer::updateBoundsAndPosition();
  if (v13 != 1)
  {
    if (!v8)
    {
      goto LABEL_16;
    }

    goto LABEL_15;
  }

  v10 = v12;
  v12 = 0;
  if (v10)
  {
    WTF::fastFree(v10, v9);
  }

  WTF::MachSendRight::~MachSendRight(&v11);
  if (v8)
  {
LABEL_15:
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebCore::SampleBufferDisplayLayer,(WTF::DestructionThread)2>::deref((v8 + 8));
  }

LABEL_16:
  if (v4)
  {
    [v4 commit];
  }
}

atomic_ullong *WebKit::RemoteSampleBufferDisplayLayer::flush(WebKit::RemoteSampleBufferDisplayLayer *this)
{
  WebKit::RemoteSampleBufferDisplayLayer::protectedSampleBufferDisplayLayer(this, &v3);
  v1 = v3;
  result = WebCore::LocalSampleBufferDisplayLayer::flush(v3);
  if (v1)
  {

    return WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebCore::SampleBufferDisplayLayer,(WTF::DestructionThread)2>::deref(v1 + 1);
  }

  return result;
}

void sub_19D8E7CE8(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebCore::SampleBufferDisplayLayer,(WTF::DestructionThread)2>::deref((v1 + 8));
  }

  _Unwind_Resume(exception_object);
}

atomic_ullong *WebKit::RemoteSampleBufferDisplayLayer::flushAndRemoveImage(WebKit::RemoteSampleBufferDisplayLayer *this)
{
  WebKit::RemoteSampleBufferDisplayLayer::protectedSampleBufferDisplayLayer(this, &v3);
  v1 = v3;
  result = WebCore::LocalSampleBufferDisplayLayer::flushAndRemoveImage(v3);
  if (v1)
  {

    return WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebCore::SampleBufferDisplayLayer,(WTF::DestructionThread)2>::deref(v1 + 1);
  }

  return result;
}

void sub_19D8E7D60(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebCore::SampleBufferDisplayLayer,(WTF::DestructionThread)2>::deref((v1 + 8));
  }

  _Unwind_Resume(exception_object);
}

void WebKit::RemoteSampleBufferDisplayLayer::enqueueVideoFrame(uint64_t a1, uint64_t a2)
{
  WebKit::SharedVideoFrameReader::read(a1 + 96, a2, &v7);
  v3 = v7;
  if (v7)
  {
    WebKit::RemoteSampleBufferDisplayLayer::protectedSampleBufferDisplayLayer(a1, &v6);
    v4 = v6;
    WebCore::LocalSampleBufferDisplayLayer::enqueueVideoFrame(v6, v3);
    if (v4)
    {
      WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebCore::SampleBufferDisplayLayer,(WTF::DestructionThread)2>::deref(v4 + 1);
    }

    v7 = 0;
    if (atomic_fetch_add(v3 + 2, 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, v3 + 2);
      v5 = *(*v3 + 8);

      v5(v3);
    }
  }
}

void sub_19D8E7E3C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  v12 = v11;
  if (v12)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebCore::SampleBufferDisplayLayer,(WTF::DestructionThread)2>::deref((v12 + 8));
  }

  if (atomic_fetch_add(v10 + 2, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v10 + 2);
    (*(*v10 + 8))(v10);
  }

  _Unwind_Resume(exception_object);
}

atomic_ullong *WebKit::RemoteSampleBufferDisplayLayer::clearVideoFrames(WebKit::RemoteSampleBufferDisplayLayer *this)
{
  WebKit::RemoteSampleBufferDisplayLayer::protectedSampleBufferDisplayLayer(this, &v3);
  v1 = v3;
  result = WebCore::LocalSampleBufferDisplayLayer::clearVideoFrames(v3);
  if (v1)
  {

    return WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebCore::SampleBufferDisplayLayer,(WTF::DestructionThread)2>::deref(v1 + 1);
  }

  return result;
}

void sub_19D8E7F08(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebCore::SampleBufferDisplayLayer,(WTF::DestructionThread)2>::deref((v1 + 8));
  }

  _Unwind_Resume(exception_object);
}

IPC::Encoder *WebKit::RemoteSampleBufferDisplayLayer::sampleBufferDisplayLayerStatusDidFail(WebKit::RemoteSampleBufferDisplayLayer *this)
{
  v1 = this;
  WebKit::RemoteSampleBufferDisplayLayer::protectedSampleBufferDisplayLayer(this, &v12);
  v2 = v12;
  v3 = WebCore::LocalSampleBufferDisplayLayer::didFail(v12);
  v4 = *(v1 + 5);
  v1 = (v1 + 40);
  v13 = v3;
  v5 = (*(v4 + 56))(v1);
  v7 = IPC::Encoder::operator new(0x238, v6);
  *v7 = 1714;
  *(v7 + 2) = 0;
  *(v7 + 3) = 0;
  *(v7 + 1) = v5;
  *(v7 + 68) = 0;
  *(v7 + 70) = 0;
  *(v7 + 69) = 0;
  IPC::Encoder::encodeHeader(v7);
  v14 = v7;
  IPC::Encoder::operator<<<BOOL &>(v7, &v13);
  (*(*v1 + 32))(v1, &v14, 0);
  result = v14;
  v14 = 0;
  if (result)
  {
    IPC::Encoder::~Encoder(result, v8);
    result = bmalloc::api::tzoneFree(v10, v11);
    if (!v2)
    {
      return result;
    }
  }

  else if (!v2)
  {
    return result;
  }

  return WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebCore::SampleBufferDisplayLayer,(WTF::DestructionThread)2>::deref(v2 + 1);
}

void sub_19D8E8038(_Unwind_Exception *exception_object, void *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, IPC::Encoder *a12)
{
  if (a12)
  {
    IPC::Encoder::~Encoder(a12, a2);
    bmalloc::api::tzoneFree(v14, v15);
  }

  if (v12)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebCore::SampleBufferDisplayLayer,(WTF::DestructionThread)2>::deref((v12 + 8));
  }

  _Unwind_Resume(exception_object);
}

atomic_ullong *WebKit::RemoteSampleBufferDisplayLayer::setShouldMaintainAspectRatio(WebKit::RemoteSampleBufferDisplayLayer *this)
{
  WebKit::RemoteSampleBufferDisplayLayer::protectedSampleBufferDisplayLayer(this, &v3);
  v1 = v3;
  result = WebCore::LocalSampleBufferDisplayLayer::setShouldMaintainAspectRatio(v3);
  if (v1)
  {

    return WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebCore::SampleBufferDisplayLayer,(WTF::DestructionThread)2>::deref(v1 + 1);
  }

  return result;
}

void sub_19D8E80E4(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebCore::SampleBufferDisplayLayer,(WTF::DestructionThread)2>::deref((v1 + 8));
  }

  _Unwind_Resume(exception_object);
}

atomic_uchar *WebKit::RemoteSampleBufferDisplayLayer::sharedPreferencesForWebProcess@<X0>(WebKit::RemoteSampleBufferDisplayLayer *this@<X0>, uint64_t a2@<X8>)
{
  result = *(this + 23);
  if (result && (result = WTF::ThreadSafeWeakPtrControlBlock::makeStrongReferenceIfPossible<WebKit::RemoteMediaPlayerManager>(result, *(this + 22), &v7), (v6 = v7) != 0))
  {
    *a2 = *(v7 + 40);
    *(a2 + 16) = *(v6 + 56);
    *(a2 + 24) = 1;
    v7 = 0;
    return WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::WorkQueueMessageReceiver<(WTF::DestructionThread)0>,(WTF::DestructionThread)0>::deref((v6 + 8), v5);
  }

  else
  {
    *a2 = 0;
    *(a2 + 24) = 0;
  }

  return result;
}

char *WTF::EmbeddedFixedVector<unsigned char,WTF::FastMalloc>::create<unsigned char const*>@<X0>(char *result@<X0>, char *a2@<X1>, char **a3@<X8>)
{
  v4 = a2 - result;
  if ((a2 - result) >> 32)
  {
    __break(0xC471u);
  }

  else
  {
    v6 = result;
    result = WTF::fastMalloc((v4 + 4));
    *result = v4;
    if (v6 != a2)
    {
      v7 = result + 4;
      do
      {
        v8 = *v6++;
        *v7++ = v8;
      }

      while (v6 != a2);
    }

    *a3 = result;
  }

  return result;
}

unsigned int *WTF::ThreadSafeRefCounted<WebKit::RemoteSampleBufferDisplayLayer,(WTF::DestructionThread)2>::deref(unsigned int *result)
{
  if (atomic_fetch_add(result, 0xFFFFFFFF) == 1)
  {
    v1 = result;
    atomic_store(1u, result);
    v2 = WTF::fastMalloc(0x10);
    *v2 = &unk_1F10EB828;
    *(v2 + 1) = v1;
    v3 = v2;
    WTF::ensureOnMainRunLoop();
    result = v3;
    if (v3)
    {
      return (*(*v3 + 8))(v3);
    }
  }

  return result;
}

void sub_19D8E82CC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (a10)
  {
    (*(*a10 + 8))(a10);
  }

  _Unwind_Resume(exception_object);
}

void GPUServiceInitializer::$_0::operator()(void ***a1)
{
  v2 = **a1;
  v5 = v2;
  if (v2)
  {
    v3 = v2;
  }

  WebKit::XPCServiceInitializer<WebKit::GPUProcess,WebKit::GPUServiceInitializerDelegate,false>(&v5, *a1[1]);
  v4 = v5;
  if (v5)
  {
  }
}

void sub_19D8E83C0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10)
{
  if (a10)
  {
  }

  _Unwind_Resume(exception_object);
}

void WebKit::XPCServiceInitializer<WebKit::GPUProcess,WebKit::GPUServiceInitializerDelegate,false>(id *a1, void *a2)
{
  v27 = *a1;
  *a1 = 0;
  WebKit::GPUServiceInitializerDelegate::GPUServiceInitializerDelegate(&v28, &v27, a2);
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
  if ((WebKit::XPCServiceInitializerDelegate::getExtraInitializationData(&v28, &v25) & 1) == 0)
  {
    WTF::exitProcess(1);
    goto LABEL_31;
  }

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
  WebKit::XPCServiceInitializerDelegate::getClientSDKAlignedBehaviors(&v28, &v14);
  WTF::setSDKAlignedBehaviors();
  v26 = 3;
  v7 = WTF::setAuxiliaryProcessType();
  WebKit::InitializeWebKit2(v7);
  if ((WebKit::XPCServiceInitializerDelegate::checkEntitlements(&v28) & 1) == 0)
  {
    goto LABEL_29;
  }

  if (!WebKit::XPCServiceInitializerDelegate::getConnectionIdentifier(&v28, &v23))
  {
    goto LABEL_29;
  }

  if (!WebKit::XPCServiceInitializerDelegate::getClientIdentifier(&v28, &v19))
  {
    goto LABEL_29;
  }

  WebKit::XPCServiceInitializerDelegate::getClientBundleIdentifier(&v28, &v20);
  LOBYTE(v16) = 0;
  LOBYTE(v17) = 0;
  if ((WebKit::XPCServiceInitializerDelegate::getProcessIdentifier(&v28, &v16) & 1) == 0)
  {
    goto LABEL_29;
  }

  if ((v17 & 1) == 0)
  {
LABEL_31:
    __break(1u);
LABEL_32:
    v9 = WTF::Thread::setGlobalMaxQOSClass(0x11, v8);
    goto LABEL_21;
  }

  if ((v22 & 1) == 0)
  {
    v22 = 1;
  }

  v21 = v16;
  if (!WebKit::XPCServiceInitializerDelegate::getClientProcessName(&v28, &v18))
  {
LABEL_29:
    WTF::exitProcess(1);
    goto LABEL_31;
  }

  voucher_replace_default_voucher();
  WTF::StringImpl::createWithoutCopyingNonEmpty();
  v9 = v30;
  v13 = v30;
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
    goto LABEL_32;
  }

LABEL_21:
  v11 = WebKit::GPUProcess::singleton(v9);
  WebKit::AuxiliaryProcess::initialize(v11, &v18);
  WebKit::AuxiliaryProcessInitializationParameters::~AuxiliaryProcessInitializationParameters(&v18, v12);
  v28 = &unk_1F10F20B8;
  if (v29)
  {
  }
}

void sub_19D8E8678(_Unwind_Exception *a1, WTF::StringImpl *a2, uint64_t a3, WTF::StringImpl *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  if (a4 && atomic_fetch_add_explicit(a4, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(a4, a2);
  }

  WebKit::AuxiliaryProcessInitializationParameters::~AuxiliaryProcessInitializationParameters(va, a2);
  *(v8 - 64) = &unk_1F10F20B8;
  v10 = *(v8 - 56);
  if (v10)
  {
  }

  _Unwind_Resume(a1);
}

void WebKit::GPUServiceInitializerDelegate::~GPUServiceInitializerDelegate(WebKit::GPUServiceInitializerDelegate *this)
{
  *this = &unk_1F10F20B8;
  v1 = *(this + 1);
  if (v1)
  {
  }
}

{
  *this = &unk_1F10F20B8;
  v1 = *(this + 1);
  if (v1)
  {
  }

  JUMPOUT(0x19EB14CF0);
}

void *WebKit::GPUServiceInitializerDelegate::GPUServiceInitializerDelegate(void *a1, id *a2, uint64_t a3)
{
  v5 = *a2;
  *a2 = 0;
  WebKit::XPCServiceInitializerDelegate::XPCServiceInitializerDelegate(a1, &v5, a3);
  if (v5)
  {
  }

  *a1 = &unk_1F10EB878;
  return a1;
}

void sub_19D8E87D8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10)
{
  if (a10)
  {
  }

  _Unwind_Resume(exception_object);
}

uint64_t WTF::HashTable<WTF::String,WTF::KeyValuePair<WTF::String,WTF::String>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,WTF::String>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::lookup<WTF::HashMapTranslatorAdapter<WTF::HashMap<WTF::String,WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTranslatorASCIILiteral>,(WTF::ShouldValidateKey)1,WTF::ASCIILiteral>(uint64_t *a1, uint64_t *a2)
{
  if (WTF::HashTraitsEmptyValueChecker<WTF::HashTraits<WTF::String>,true>::isEmptyValue<WTF::ASCIILiteral>(a2))
  {
    goto LABEL_23;
  }

  v4 = a2[1];
  if (v4)
  {
    if (v4 == 1)
    {
      v16 = MEMORY[0x1E696EB88];
      atomic_fetch_add_explicit(MEMORY[0x1E696EB88], 2u, memory_order_relaxed);
      if (atomic_fetch_add_explicit(v16, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(MEMORY[0x1E696EB88], (v4 - 1));
      }
    }

    else
    {
      WTF::StringImpl::createWithoutCopyingNonEmpty();
      if (v17)
      {
        if (atomic_fetch_add_explicit(v17, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v17, v5);
        }

        if (v17 == -1)
        {
LABEL_23:
          __break(0xC471u);
          JUMPOUT(0x19D8E8908);
        }
      }
    }
  }

  v6 = *a1;
  if (!v6)
  {
    return 0;
  }

  v8 = *(v6 - 8);
  v9 = a2[1];
  v10 = v9 != 0;
  v11 = v9 - 1;
  if (v10)
  {
    v12 = v11;
  }

  else
  {
    v12 = 0;
  }

  v13 = WTF::StringHasher::computeHashAndMaskTop8Bits<unsigned char,WTF::StringHasher::DefaultConverter>(*a2, v12);
  for (i = 0; ; v13 = i + v15)
  {
    v15 = v13 & v8;
    result = *(v6 + 16 * v15);
    if (!result)
    {
      break;
    }

    if (result != -1 && (MEMORY[0x19EB01EF0]() & 1) != 0)
    {
      return v6 + 16 * v15;
    }

    ++i;
  }

  return result;
}

uint64_t WTF::StringHasher::computeHashAndMaskTop8Bits<unsigned char,WTF::StringHasher::DefaultConverter>(uint64_t a1, unint64_t a2)
{
  v2 = WTF::SuperFastHash::computeHashImpl<unsigned char,WTF::StringHasher::DefaultConverter>(a1, a2);
  v3 = (v2 ^ (8 * v2)) + ((v2 ^ (8 * v2)) >> 5);
  v4 = (v3 ^ (4 * v3)) + ((v3 ^ (4 * v3)) >> 15);
  v5 = (v4 ^ (v4 << 10)) & 0xFFFFFF;
  if (v5)
  {
    return v5;
  }

  else
  {
    return 0x800000;
  }
}

WTF *WTF::HashTable<WTF::String,WTF::KeyValuePair<WTF::String,WTF::String>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,WTF::String>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::lookup<WTF::IdentityHashTranslator<WTF::HashMap<WTF::String,WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<WTF::String>>,(WTF::ShouldValidateKey)1,WTF::String>(uint64_t *a1, uint64_t *a2)
{
  WTF::checkHashTableKey<WTF::String,WTF::KeyValuePair<WTF::String,WTF::String>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,WTF::String>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::IdentityHashTranslator<WTF::HashMap<WTF::String,WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<WTF::String>>,(WTF::ShouldValidateKey)1,WTF::String>(*a2);
  v5 = *a1;
  if (!v5)
  {
    return 0;
  }

  v6 = *(v5 - 8);
  v7 = *(*a2 + 16);
  if (v7 < 0x100)
  {
    v8 = WTF::StringImpl::hashSlowCase(*a2);
  }

  else
  {
    v8 = v7 >> 8;
  }

  for (i = 0; ; v8 = i + v10)
  {
    v10 = v8 & v6;
    result = *(v5 + 16 * v10);
    if (!result)
    {
      break;
    }

    if (result != -1 && (WTF::equal(result, *a2, v4) & 1) != 0)
    {
      return (v5 + 16 * v10);
    }

    ++i;
  }

  return result;
}

uint64_t WTF::checkHashTableKey<WTF::String,WTF::KeyValuePair<WTF::String,WTF::String>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,WTF::String>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::IdentityHashTranslator<WTF::HashMap<WTF::String,WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<WTF::String>>,(WTF::ShouldValidateKey)1,WTF::String>(uint64_t result)
{
  if (result == -1 || !result)
  {
    __break(0xC471u);
    JUMPOUT(0x19D8E8AC8);
  }

  return result;
}

atomic_uint **WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::String,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::get<WTF::IdentityHashTranslator<WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::String,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>@<X0>(atomic_uint **result@<X0>, uint64_t *a2@<X1>, atomic_uint **a3@<X8>)
{
  v3 = *a2;
  if (*a2 == -1 || !v3)
  {
    __break(0xC471u);
    JUMPOUT(0x19D8E8BB4);
  }

  v4 = *result;
  if (*result)
  {
    v5 = *(v4 - 2);
    v6 = (v3 + ~(v3 << 32)) ^ ((v3 + ~(v3 << 32)) >> 22);
    v7 = 9 * ((v6 + ~(v6 << 13)) ^ ((v6 + ~(v6 << 13)) >> 8));
    v8 = (v7 ^ (v7 >> 15)) + ~((v7 ^ (v7 >> 15)) << 27);
    v9 = v5 & ((v8 >> 31) ^ v8);
    v10 = *&v4[4 * v9];
    if (v10 == v3)
    {
LABEL_8:
      v4 = *&v4[4 * v9 + 2];
      if (v4)
      {
        atomic_fetch_add_explicit(v4, 2u, memory_order_relaxed);
      }
    }

    else
    {
      v11 = 1;
      while (v10)
      {
        v9 = (v9 + v11) & v5;
        v10 = *&v4[4 * v9];
        ++v11;
        if (v10 == v3)
        {
          goto LABEL_8;
        }
      }

      v4 = 0;
    }
  }

  *a3 = v4;
  return result;
}

uint64_t *WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::String,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::remove(uint64_t *a1, WTF::StringImpl *a2)
{
  if (*a1)
  {
    v2 = (*a1 + 16 * *(*a1 - 4));
    if (v2 == a2)
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

    v2 = 0;
  }

  if (v2 != a2)
  {
    return WTF::HashTable<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::String>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::String>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::String,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::remove(a1, a2);
  }

  return a1;
}

WTF::StringImpl *WTF::HashTable<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::String>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::String>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::String,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::remove(uint64_t *a1, WTF::StringImpl *a2)
{
  result = *(a2 + 1);
  *a2 = -1;
  *(a2 + 1) = 0;
  if (result && atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    result = WTF::StringImpl::destroy(result, a2);
  }

  v4 = *a1;
  v5 = vadd_s32(*(*a1 - 16), 0xFFFFFFFF00000001);
  *(v4 - 16) = v5;
  v6 = *(v4 - 4);
  if (6 * v5.i32[1] < v6 && v6 >= 9)
  {

    return WTF::HashTable<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::String>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::String>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::String,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::rehash(a1, v6 >> 1, 0);
  }

  return result;
}

void *WTF::HashTable<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::String>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::String>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::String,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::rehash(uint64_t *a1, unsigned int a2, WTF::StringImpl *a3)
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
  v11 = 0;
  if (v7)
  {
    v13 = v6;
    v14 = v7;
    do
    {
      if (*v13 != -1)
      {
        if (*v13)
        {
          v16 = WTF::HashTable<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::String>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::String>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::String,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::reinsert(*a1, v13);
          v17 = *(v13 + 1);
          *(v13 + 1) = 0;
          if (v17 && atomic_fetch_add_explicit(v17, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v17, v10);
          }

          if (v13 == a3)
          {
            v11 = v16;
          }
        }

        else
        {
          v15 = *(v13 + 1);
          *(v13 + 1) = 0;
          if (v15)
          {
            if (atomic_fetch_add_explicit(v15, 0xFFFFFFFE, memory_order_relaxed) == 2)
            {
              WTF::StringImpl::destroy(v15, v10);
            }
          }
        }
      }

      v13 = (v13 + 16);
      --v14;
    }

    while (v14);
    goto LABEL_16;
  }

  result = 0;
  if (v6)
  {
LABEL_16:
    WTF::fastFree((v6 - 16), v10);
    return v11;
  }

  return result;
}

void *WTF::HashTable<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::String>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::String>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::String,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::reinsert(uint64_t a1, WTF::StringImpl *a2)
{
  if (a1)
  {
    v3 = *(a1 - 8);
  }

  else
  {
    v3 = 0;
  }

  v4 = *a2 + ~(*a2 << 32);
  v5 = (v4 ^ (v4 >> 22)) + ~((v4 ^ (v4 >> 22)) << 13);
  v6 = (9 * (v5 ^ (v5 >> 8))) ^ ((9 * (v5 ^ (v5 >> 8))) >> 15);
  v7 = v3 & (((v6 + ~(v6 << 27)) >> 31) ^ (v6 + ~(v6 << 27)));
  v8 = 1;
  do
  {
    v9 = v7;
    v10 = *(a1 + 16 * v7);
    v7 = (v7 + v8++) & v3;
  }

  while (v10);
  v11 = (a1 + 16 * v9);
  v12 = v11[1];
  v11[1] = 0;
  if (v12 && atomic_fetch_add_explicit(v12, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v12, a2);
  }

  *v11 = *a2;
  v13 = *(a2 + 1);
  *(a2 + 1) = 0;
  v11[1] = v13;
  return v11;
}

uint64_t WTF::HashTable<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::String>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::String>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::String,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::find<WTF::IdentityHashTranslator<WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::String,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,(WTF::ShouldValidateKey)1,WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(uint64_t *a1, uint64_t a2)
{
  if (!*a1)
  {
    return 0;
  }

  result = WTF::HashTable<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::String>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::String>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::String,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::lookup<WTF::IdentityHashTranslator<WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::String,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,(WTF::ShouldValidateKey)1,WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(a1, a2);
  v4 = *a1;
  if (!result)
  {
    if (v4)
    {
      return v4 + 16 * *(v4 - 4);
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t WTF::HashTable<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::String>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::String>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::String,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::lookup<WTF::IdentityHashTranslator<WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::String,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,(WTF::ShouldValidateKey)1,WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(uint64_t *a1, uint64_t a2)
{
  if (a2 == -1 || !a2)
  {
    __break(0xC471u);
    JUMPOUT(0x19D8E8FB8);
  }

  v2 = *a1;
  if (*a1)
  {
    v3 = *(v2 - 8);
    v4 = (~(a2 << 32) + a2) ^ ((~(a2 << 32) + a2) >> 22);
    v5 = 9 * ((v4 + ~(v4 << 13)) ^ ((v4 + ~(v4 << 13)) >> 8));
    v6 = (v5 ^ (v5 >> 15)) + ~((v5 ^ (v5 >> 15)) << 27);
    v7 = v3 & ((v6 >> 31) ^ v6);
    v8 = *(v2 + 16 * v7);
    if (v8 == a2)
    {
      return v2 + 16 * v7;
    }

    v9 = 1;
    while (v8)
    {
      v7 = (v7 + v9) & v3;
      v8 = *(v2 + 16 * v7);
      ++v9;
      if (v8 == a2)
      {
        return v2 + 16 * v7;
      }
    }
  }

  return 0;
}

uint64_t *WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::String,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::inlineSet<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long> const&,WTF::String const&>(uint64_t a1, uint64_t *a2, uint64_t *a3, atomic_uint **a4)
{
  v23 = a4;
  WTF::checkHashTableKey<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::String>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::String>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::String,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMapTranslator<WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::String,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,(WTF::ShouldValidateKey)1,WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(*a3);
  v8 = *a2;
  if (*a2 || (WTF::HashTable<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::String>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::String>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::String,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::expand(a2, 0), (v8 = *a2) != 0))
  {
    v9 = *(v8 - 8);
  }

  else
  {
    v9 = 0;
  }

  v10 = WTF::intHash(*a3) & v9;
  v11 = (v8 + 16 * v10);
  v12 = *v11;
  v13 = *a3;
  if (!*v11)
  {
LABEL_5:
    result = WTF::HashMapTranslator<WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::String,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>::translate<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long> const&,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::String>,WTF::HashTableAddResult<WTF::HashTableIterator<WTF::HashTable<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::String>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::String>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::String,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>,WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::String>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::String>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::String,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>> WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::String,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::inlineAdd<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long> const&,WTF::String const&>(WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long> const&,WTF::String const&)::{lambda(void)#1}>( v11,  v13,  &v23);
    v15 = *a2;
    if (*a2)
    {
      v16 = *(v15 - 12) + 1;
    }

    else
    {
      v16 = 1;
    }

    *(v15 - 12) = v16;
    v17 = (*(v15 - 16) + v16);
    v18 = *(v15 - 4);
    if (v18 > 0x400)
    {
      if (v18 > 2 * v17)
      {
        goto LABEL_9;
      }
    }

    else if (3 * v18 > 4 * v17)
    {
LABEL_9:
      *a1 = v11;
      *(a1 + 8) = v15 + 16 * v18;
      *(a1 + 16) = 1;
      return result;
    }

    result = WTF::HashTable<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::String>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::String>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::String,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::expand(a2, v11);
    v11 = result;
    v15 = *a2;
    if (*a2)
    {
      v18 = *(v15 - 4);
    }

    else
    {
      v18 = 0;
    }

    goto LABEL_9;
  }

  v19 = 0;
  v20 = 1;
  while (v12 != v13)
  {
    if (v12 == -1)
    {
      v19 = v11;
    }

    v10 = (v10 + v20) & v9;
    v11 = (v8 + 16 * v10);
    v12 = *v11;
    ++v20;
    if (!*v11)
    {
      if (v19)
      {
        *v19 = 0;
        v19[1] = 0;
        --*(*a2 - 16);
        v13 = *a3;
        v11 = v19;
      }

      goto LABEL_5;
    }
  }

  v21 = *a2;
  if (*a2)
  {
    v22 = *(v21 - 4);
  }

  else
  {
    v22 = 0;
  }

  *a1 = v11;
  *(a1 + 8) = v21 + 16 * v22;
  *(a1 + 16) = 0;

  return WTF::RefPtr<WTF::StringImpl,WTF::RawPtrTraits<WTF::StringImpl>,WTF::DefaultRefDerefTraits<WTF::StringImpl>>::operator=(v11 + 1, a4);
}

uint64_t WTF::checkHashTableKey<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::String>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::String>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::String,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMapTranslator<WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::String,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,(WTF::ShouldValidateKey)1,WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(uint64_t result)
{
  if (result == -1 || !result)
  {
    __break(0xC471u);
    JUMPOUT(0x19D8E91D4);
  }

  return result;
}

void *WTF::HashTable<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::String>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::String>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::String,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::expand(uint64_t *a1, WTF::StringImpl *a2)
{
  v3 = *a1;
  if (*a1 && (v5 = *(v3 - 4)) != 0)
  {
    v4 = v5 << (6 * *(v3 - 12) >= (2 * v5));
  }

  else
  {
    v4 = 8;
  }

  return WTF::HashTable<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::String>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::String>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::String,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::rehash(a1, v4, a2);
}

WTF::StringImpl *WTF::HashMapTranslator<WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::String,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>::translate<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long> const&,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::String>,WTF::HashTableAddResult<WTF::HashTableIterator<WTF::HashTable<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::String>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::String>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::String,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>,WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::String>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::String>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::String,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>> WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::String,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::inlineAdd<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long> const&,WTF::String const&>(WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long> const&,WTF::String const&)::{lambda(void)#1}>(WTF::StringImpl **a1, WTF::StringImpl *a2, atomic_uint ***a3)
{
  *a1 = a2;
  v4 = **a3;
  if (v4)
  {
    atomic_fetch_add_explicit(v4, 2u, memory_order_relaxed);
  }

  result = a1[1];
  a1[1] = v4;
  if (result)
  {
    if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      return WTF::StringImpl::destroy(result, a2);
    }
  }

  return result;
}

void *WTF::HashTable<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::GPUConnectionToWebProcess,WTF::RawPtrTraits<WebKit::GPUConnectionToWebProcess>,WTF::DefaultRefDerefTraits<WebKit::GPUConnectionToWebProcess>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::GPUConnectionToWebProcess,WTF::RawPtrTraits<WebKit::GPUConnectionToWebProcess>,WTF::DefaultRefDerefTraits<WebKit::GPUConnectionToWebProcess>>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::GPUConnectionToWebProcess,WTF::RawPtrTraits<WebKit::GPUConnectionToWebProcess>,WTF::DefaultRefDerefTraits<WebKit::GPUConnectionToWebProcess>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::Ref<WebKit::GPUConnectionToWebProcess,WTF::RawPtrTraits<WebKit::GPUConnectionToWebProcess>,WTF::DefaultRefDerefTraits<WebKit::GPUConnectionToWebProcess>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::begin(void **a1)
{
  result = *a1;
  if (!result)
  {
    return 0;
  }

  v2 = *(result - 1);
  v3 = &result[2 * v2];
  if (!*(result - 3))
  {
    return &result[2 * v2];
  }

  if (v2)
  {
    v4 = 16 * v2;
    while ((*result + 1) <= 1)
    {
      result += 2;
      v4 -= 16;
      if (!v4)
      {
        return v3;
      }
    }
  }

  return result;
}

void WTF::Function<void ()(WebCore::HostingContext)>::operator()(uint64_t *a1, int *a2)
{
  v3 = *a1;
  v7 = *a2;
  WTF::MachSendRight::MachSendRight();
  v4 = *(a2 + 2);
  *(a2 + 2) = 0;
  v9 = v4;
  (*(*v3 + 16))(v3, &v7);
  v6 = v9;
  v9 = 0;
  if (v6)
  {
    WTF::fastFree(v6, v5);
  }

  WTF::MachSendRight::~MachSendRight(&v8);
}

void sub_19D8E9368(_Unwind_Exception *a1, void *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, WTF *a12)
{
  if (a12)
  {
    WTF::fastFree(a12, a2);
  }

  WTF::MachSendRight::~MachSendRight((v12 + 8));
  _Unwind_Resume(a1);
}

atomic_ullong *WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebCore::MediaPlayer,(WTF::DestructionThread)1>::deref(atomic_ullong *result)
{
  v1 = result;
  while (1)
  {
    v2 = *result;
    if ((*result & 1) == 0)
    {
      break;
    }

    v3 = *result;
    atomic_compare_exchange_strong_explicit(result, &v3, v2 - 2, memory_order_relaxed, memory_order_relaxed);
    if (v3 == v2)
    {
      if (v2 == 3)
      {
        v4 = WTF::fastMalloc(0x10);
        *v4 = &unk_1F10EB950;
        v4[1] = v1;
        v6 = v4;
        WTF::ensureOnMainThread();
        result = v6;
        if (v6)
        {
          return (*(*v6 + 8))(v6);
        }
      }

      return result;
    }
  }

  v5 = *result;

  return WTF::ThreadSafeWeakPtrControlBlock::strongDeref<WebCore::MediaPlayer,(WTF::DestructionThread)1>(v5);
}

void sub_19D8E9460(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (a10)
  {
    (*(*a10 + 8))(a10);
  }

  _Unwind_Resume(exception_object);
}

atomic_uchar *WTF::ThreadSafeWeakPtrControlBlock::strongDeref<WebCore::MediaPlayer,(WTF::DestructionThread)1>(atomic_uchar *this)
{
  v1 = this;
  v2 = 0;
  atomic_compare_exchange_strong_explicit(this, &v2, 1u, memory_order_acquire, memory_order_acquire);
  if (v2)
  {
    this = MEMORY[0x19EB01E30](this);
  }

  v3 = *(v1 + 1) - 1;
  *(v1 + 1) = v3;
  if (v3)
  {
    v4 = 0;
  }

  else
  {
    v4 = *(v1 + 3);
    ++*(v1 + 2);
    *(v1 + 3) = 0;
  }

  v5 = 1;
  atomic_compare_exchange_strong_explicit(v1, &v5, 0, memory_order_release, memory_order_relaxed);
  if (v5 == 1)
  {
    if (v3)
    {
      return this;
    }
  }

  else
  {
    v7 = v3;
    this = WTF::Lock::unlockSlow(v1);
    if (v7)
    {
      return this;
    }
  }

  v6 = WTF::fastMalloc(0x18);
  *v6 = &unk_1F10EB978;
  *(v6 + 1) = v1;
  *(v6 + 2) = v4;
  v8 = v6;
  WTF::ensureOnMainThread();
  this = v8;
  if (v8)
  {
    return (*(*v8 + 8))(v8);
  }

  return this;
}

void sub_19D8E95A0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (a10)
  {
    (*(*a10 + 8))(a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t WTF::Detail::CallableWrapper<WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebCore::MediaPlayer,(WTF::DestructionThread)1>::deref(void)::{lambda(void)#1},void>::call(uint64_t a1)
{
  result = *(a1 + 8);
  if (result)
  {
    v2 = MEMORY[0x19EB03B80]();

    return bmalloc::api::tzoneFree(v2, v3);
  }

  return result;
}

uint64_t WTF::Detail::CallableWrapper<void WTF::ThreadSafeWeakPtrControlBlock::strongDeref<WebCore::MediaPlayer,(WTF::DestructionThread)1>(void)::{lambda(void)#1},void>::call(uint64_t a1, void *a2)
{
  v3 = *(a1 + 8);
  result = *(a1 + 16);
  if (result)
  {
    v4 = MEMORY[0x19EB03B80]();
    result = bmalloc::api::tzoneFree(v4, v5);
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
  if (v7 == 1)
  {
    if (v8)
    {
      return result;
    }
  }

  else
  {
    v9 = v8;
    result = WTF::Lock::unlockSlow(v3);
    if (v9)
    {
      return result;
    }
  }

  return WTF::fastFree(v3, a2);
}

uint64_t WTF::Logger::willLog<WTF::Logger::LogSiteIdentifier,float,char [2],float>(WTF::Logger *a1, uint64_t a2, WTF::Logger::LogSiteIdentifier *a3, float *a4, float *a5)
{
  v36[1] = *MEMORY[0x1E69E9840];
  v9 = MEMORY[0x1E696EBD0];
  do
  {
    v10 = *v9;
    if (v10)
    {
      v26 = 0;
      return v26 & 1;
    }

    v11 = *v9;
    atomic_compare_exchange_strong_explicit(v9, &v11, v10 | 1, memory_order_acquire, memory_order_acquire);
  }

  while (v11 != v10);
  v12 = WTF::Logger::messageHandlerObservers(a1);
  v13 = *(v12 + 12);
  if (v13)
  {
    v14 = *v12;
    v15 = *v12 + 8 * v13;
    do
    {
      v16 = *v14;
      v30[0] = 0;
      v17 = WTF::Logger::LogSiteIdentifier::toString(&v31, a3);
      v18 = *a4;
      v32 = 0;
      WTF::String::number(&v33, v17, v18);
      v34 = 0;
      v19 = WTF::String::String(v35, "x");
      v20 = *a5;
      v35[2] = 0;
      WTF::String::number(v36, v19, v20);
      WTF::Vector<WTF::JSONLogValue,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::Vector(v29, v30, 4uLL);
      (*(*v16 + 16))(v16, a2, 0, v29);
      WTF::Vector<std::tuple<Inspector::BackendDispatcher::CommonErrorCode,WTF::String>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v29, v21);
      for (i = 14; i != -2; i -= 4)
      {
        v24 = *&v30[i];
        *&v30[i] = 0;
        if (v24 && atomic_fetch_add_explicit(v24, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v24, v22);
        }
      }

      ++v14;
    }

    while (v14 != v15);
  }

  v25 = 1;
  atomic_compare_exchange_strong_explicit(MEMORY[0x1E696EBD0], &v25, 0, memory_order_release, memory_order_relaxed);
  if (v25 != 1)
  {
    WTF::Lock::unlockSlow(MEMORY[0x1E696EBD0]);
  }

  v26 = *(a1 + 12);
  return v26 & 1;
}

void sub_19D8E9898(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, uint64_t a13, char a14)
{
  v15 = 1;
  atomic_compare_exchange_strong_explicit(MEMORY[0x1E696EBD0], &v15, 0, memory_order_release, memory_order_relaxed);
  if (v15 != 1)
  {
    WTF::Lock::unlockSlow(MEMORY[0x1E696EBD0]);
  }

  _Unwind_Resume(exception_object);
}

WTF::StringImpl *WTF::Logger::log<WTF::Logger::LogSiteIdentifier,float,char [2],float>(uint64_t a1, WTF::Logger::LogSiteIdentifier *this, float *a3, float *a4)
{
  v48[1] = *MEMORY[0x1E69E9840];
  v6 = WTF::Logger::LogSiteIdentifier::toString(&v40, this);
  WTF::String::number(&v39, v6, *a3);
  v7 = WTF::String::String(&v38, "x");
  WTF::String::number(&v37, v7, *a4);
  WTF::makeString<WTF::String,WTF::String,WTF::String,WTF::String>(&v40, &v39, &v38, &v37, &v41);
  v9 = v37;
  v37 = 0;
  if (v9 && atomic_fetch_add_explicit(v9, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v9, v8);
  }

  v10 = v38;
  v38 = 0;
  if (v10 && atomic_fetch_add_explicit(v10, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v10, v8);
  }

  v11 = v39;
  v39 = 0;
  if (v11 && atomic_fetch_add_explicit(v11, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v11, v8);
  }

  v12 = v40;
  v40 = 0;
  if (v12 && atomic_fetch_add_explicit(v12, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v12, v8);
  }

  v13 = *(a1 + 32);
  v14 = os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT);
  if (v14)
  {
    WTF::String::utf8();
    v16 = v36[0] ? v36[0] + 16 : 0;
    *buf = 136446210;
    v43 = v16;
    _os_log_impl(&dword_19D52D000, v13, OS_LOG_TYPE_DEFAULT, "%{public}s", buf, 0xCu);
    v14 = v36[0];
    v36[0] = 0;
    if (v14)
    {
      if (*v14 == 1)
      {
        v14 = WTF::fastFree(v14, v15);
      }

      else
      {
        --*v14;
      }
    }
  }

  if (*a1)
  {
    v17 = MEMORY[0x1E696EBC0];
    while (1)
    {
      v18 = *v17;
      if (v18)
      {
        break;
      }

      v19 = *v17;
      atomic_compare_exchange_strong_explicit(v17, &v19, v18 | 1, memory_order_acquire, memory_order_acquire);
      if (v19 == v18)
      {
        v20 = WTF::Logger::observers(v14);
        v21 = *(v20 + 12);
        if (v21)
        {
          v22 = *v20;
          v23 = *v20 + 8 * v21;
          do
          {
            v24 = *v22;
            *buf = 0;
            v25 = WTF::Logger::LogSiteIdentifier::toString((&v43 + 4), this);
            v26 = *a3;
            v44 = 0;
            WTF::String::number(&v45, v25, v26);
            v46 = 0;
            v27 = WTF::String::String(v47, "x");
            v28 = *a4;
            v47[2] = 0;
            WTF::String::number(v48, v27, v28);
            WTF::Vector<WTF::JSONLogValue,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::Vector(v36, buf, 4uLL);
            (*(*v24 + 16))(v24, a1, 0, v36);
            WTF::Vector<std::tuple<Inspector::BackendDispatcher::CommonErrorCode,WTF::String>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v36, v29);
            for (i = 56; i != -8; i -= 16)
            {
              v31 = *&buf[i];
              *&buf[i] = 0;
              if (v31 && atomic_fetch_add_explicit(v31, 0xFFFFFFFE, memory_order_relaxed) == 2)
              {
                WTF::StringImpl::destroy(v31, v15);
              }
            }

            ++v22;
          }

          while (v22 != v23);
        }

        v32 = 1;
        atomic_compare_exchange_strong_explicit(v17, &v32, 0, memory_order_release, memory_order_relaxed);
        if (v32 != 1)
        {
          WTF::Lock::unlockSlow(MEMORY[0x1E696EBC0]);
        }

        break;
      }
    }
  }

  result = v41;
  v41 = 0;
  if (result)
  {
    if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      return WTF::StringImpl::destroy(result, v15);
    }
  }

  return result;
}

void sub_19D8E9CB4(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14, uint64_t a15, WTF::StringImpl *a16, WTF::StringImpl *a17, WTF::StringImpl *a18, uint64_t a19, WTF::StringImpl *a20, char a21)
{
  v23 = 1;
  atomic_compare_exchange_strong_explicit(v21, &v23, 0, memory_order_release, memory_order_relaxed);
  if (v23 != 1)
  {
    WTF::Lock::unlockSlow(MEMORY[0x1E696EBC0]);
  }

  if (a20)
  {
    if (atomic_fetch_add_explicit(a20, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(a20, a2);
    }
  }

  _Unwind_Resume(exception_object);
}

uint64_t WTF::makeString<WTF::String,WTF::String,WTF::String,WTF::String>@<X0>(uint64_t *a1@<X0>, unint64_t *a2@<X1>, uint64_t *a3@<X2>, uint64_t *a4@<X3>, void *a5@<X8>)
{
  v6 = *a1;
  v11 = *a2;
  v12 = v6;
  v7 = *a3;
  v9 = *a4;
  v10 = v7;
  result = WTF::tryMakeStringFromAdapters<WTF::StringTypeAdapter<WTF::String,void>,WTF::StringTypeAdapter<WTF::String,void>,WTF::StringTypeAdapter<WTF::String,void>,WTF::StringTypeAdapter<WTF::String,void>>(&v12, &v11, &v10, &v9, a5);
  if (!*a5)
  {
    __break(0xC471u);
  }

  return result;
}

uint64_t WTF::tryMakeStringFromAdapters<WTF::StringTypeAdapter<WTF::String,void>,WTF::StringTypeAdapter<WTF::String,void>,WTF::StringTypeAdapter<WTF::String,void>,WTF::StringTypeAdapter<WTF::String,void>>@<X0>(uint64_t result@<X0>, unint64_t *a2@<X1>, uint64_t *a3@<X2>, uint64_t *a4@<X3>, void *a5@<X8>)
{
  v7 = *result;
  if (*result)
  {
    v8 = *(v7 + 4);
  }

  else
  {
    v8 = 0;
  }

  v9 = *a2;
  if (*a2)
  {
    v10 = *(v9 + 4);
  }

  else
  {
    v10 = 0;
  }

  v11 = *a3;
  if (*a3)
  {
    v12 = *(v11 + 4);
  }

  else
  {
    v12 = 0;
  }

  v13 = *a4;
  if (*a4)
  {
    v14 = *(v13 + 4);
  }

  else
  {
    v14 = 0;
  }

  if (((v14 | v12) & 0x80000000) == 0)
  {
    v15 = __OFADD__(v12, v14);
    v16 = v12 + v14;
    v17 = v15;
    if ((v10 & 0x80000000) == 0 && !v17)
    {
      v15 = __OFADD__(v10, v16);
      v18 = v10 + v16;
      v19 = v15;
      if ((v8 & 0x80000000) == 0 && !v19)
      {
        result = (v8 + v18);
        if (!__OFADD__(v8, v18))
        {
          if ((!v7 || (*(v7 + 16) & 4) != 0) && (!v9 || (*(v9 + 16) & 4) != 0))
          {
            if (v11)
            {
              v21 = *(v11 + 16);
              v20 = (v21 >> 2) & 1;
              if (!v13 || (v21 & 4) == 0)
              {
                return WTF::tryMakeStringImplFromAdaptersInternal<WTF::StringTypeAdapter<WTF::String,void>,WTF::StringTypeAdapter<WTF::String,void>,WTF::StringTypeAdapter<WTF::String,void>,WTF::StringTypeAdapter<WTF::String,void>>(result, v20, v7, v9, v11, v13, a5);
              }
            }

            else if (!v13)
            {
              v20 = 1;
              return WTF::tryMakeStringImplFromAdaptersInternal<WTF::StringTypeAdapter<WTF::String,void>,WTF::StringTypeAdapter<WTF::String,void>,WTF::StringTypeAdapter<WTF::String,void>,WTF::StringTypeAdapter<WTF::String,void>>(result, v20, v7, v9, v11, v13, a5);
            }

            v20 = (*(v13 + 16) >> 2) & 1;
          }

          else
          {
            v20 = 0;
          }

          return WTF::tryMakeStringImplFromAdaptersInternal<WTF::StringTypeAdapter<WTF::String,void>,WTF::StringTypeAdapter<WTF::String,void>,WTF::StringTypeAdapter<WTF::String,void>,WTF::StringTypeAdapter<WTF::String,void>>(result, v20, v7, v9, v11, v13, a5);
        }
      }
    }
  }

  *a5 = 0;
  return result;
}

uint64_t WTF::tryMakeStringImplFromAdaptersInternal<WTF::StringTypeAdapter<WTF::String,void>,WTF::StringTypeAdapter<WTF::String,void>,WTF::StringTypeAdapter<WTF::String,void>,WTF::StringTypeAdapter<WTF::String,void>>@<X0>(uint64_t result@<X0>, int a2@<W1>, uint64_t a3@<X2>, unint64_t a4@<X3>, uint64_t a5@<X4>, _DWORD *a6@<X5>, void *a7@<X8>)
{
  v11 = result;
  v13 = result;
  if (!a2)
  {
    if (result)
    {
      if (result <= 0x7FFFFFEF)
      {
        result = WTF::tryFastCompactMalloc((2 * result + 20));
        v14 = v25;
        if (!v25)
        {
          goto LABEL_24;
        }

        v15 = (v25 + 5);
        *v25 = 2;
        v14[1] = v11;
        *(v14 + 1) = v14 + 5;
        v14[4] = 0;
        v22 = a3;
        WTF::StringTypeAdapter<WTF::StringImpl *,void>::writeTo<char16_t>(&v22, v14 + 20);
        if (!v22)
        {
          goto LABEL_26;
        }

        v19 = *(v22 + 4);
        if (v19 <= v11)
        {
          goto LABEL_19;
        }

        goto LABEL_25;
      }

LABEL_14:
      v14 = 0;
      goto LABEL_24;
    }

LABEL_15:
    v14 = MEMORY[0x1E696EB88];
    atomic_fetch_add_explicit(MEMORY[0x1E696EB88], 2u, memory_order_relaxed);
    goto LABEL_24;
  }

  if (!result)
  {
    goto LABEL_15;
  }

  if ((result & 0x80000000) != 0)
  {
    goto LABEL_14;
  }

  result = WTF::tryFastCompactMalloc((result + 20));
  v14 = v25;
  if (!v25)
  {
    goto LABEL_24;
  }

  v15 = (v25 + 5);
  *v25 = 2;
  v14[1] = v11;
  *(v14 + 1) = v14 + 5;
  v14[4] = 4;
  v22 = a3;
  WTF::StringTypeAdapter<WTF::StringImpl *,void>::writeTo<unsigned char>(&v22, v14 + 20);
  v16 = v22;
  if (!v22 || (v16 = *(v22 + 4), v16 <= v11))
  {
    v13 -= v16;
    v15 += v16;
    v23 = a4;
    WTF::StringTypeAdapter<WTF::StringImpl *,void>::writeTo<unsigned char>(&v23, v15);
    v17 = v23;
    if (!v23 || (v17 = *(v23 + 4), v13 >= v17))
    {
      v13 -= v17;
      a4 = &v15[v17];
      v24 = a5;
      WTF::StringTypeAdapter<WTF::StringImpl *,void>::writeTo<unsigned char>(&v24, &v15[v17]);
      v18 = v24;
      if (!v24 || (v18 = *(v24 + 4), v13 >= v18))
      {
        v25 = a6;
        result = WTF::StringTypeAdapter<WTF::StringImpl *,void>::writeTo<unsigned char>(&v25, (v18 + a4));
        goto LABEL_24;
      }
    }
  }

  while (1)
  {
LABEL_25:
    __break(1u);
LABEL_26:
    v19 = 0;
LABEL_19:
    v13 -= v19;
    v23 = a4;
    WTF::StringTypeAdapter<WTF::StringImpl *,void>::writeTo<char16_t>(&v23, &v15[2 * v19]);
    v20 = v23;
    if (v23)
    {
      v20 = *(v23 + 4);
      if (v13 < v20)
      {
        continue;
      }
    }

    a4 = v13 - v20;
    v13 = v20 + v19;
    v24 = a5;
    WTF::StringTypeAdapter<WTF::StringImpl *,void>::writeTo<char16_t>(&v24, &v15[2 * v20 + 2 * v19]);
    v21 = v24;
    if (!v24)
    {
      break;
    }

    v21 = *(v24 + 4);
    if (a4 >= v21)
    {
      break;
    }
  }

  v25 = a6;
  result = WTF::StringTypeAdapter<WTF::StringImpl *,void>::writeTo<char16_t>(&v25, &v15[2 * v21 + 2 * v13]);
LABEL_24:
  *a7 = v14;
  return result;
}

void sub_19D8EA1C0(_Unwind_Exception *exception_object, WTF::StringImpl *a2)
{
  if (atomic_fetch_add_explicit(v2, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v2, a2);
  }

  _Unwind_Resume(exception_object);
}

IPC::Encoder *IPC::Connection::send<Messages::MediaPlayerPrivateRemote::LayerHostingContextChanged>(uint64_t *a1, float **a2, uint64_t a3)
{
  v6 = IPC::Encoder::operator new(0x238, a2);
  *v6 = 343;
  *(v6 + 2) = 0;
  *(v6 + 3) = 0;
  *(v6 + 1) = a3;
  *(v6 + 68) = 0;
  *(v6 + 70) = 0;
  *(v6 + 69) = 0;
  IPC::Encoder::encodeHeader(v6);
  v12 = v6;
  v7 = (*a2 + 2);
  IPC::ArgumentCoder<unsigned int,void>::encode<IPC::Encoder>(v6, **a2);
  IPC::ArgumentCoder<WTF::MachSendRightAnnotated,void>::encode(v6, v7);
  IPC::ArgumentCoder<WebCore::FloatPoint,void>::encode(v6, a2[1]);
  IPC::Connection::sendMessageImpl(a1, &v12, 0, 0);
  result = v12;
  v12 = 0;
  if (result)
  {
    IPC::Encoder::~Encoder(result, v8);
    return bmalloc::api::tzoneFree(v10, v11);
  }

  return result;
}

void sub_19D8EA2A4(_Unwind_Exception *a1, void *a2)
{
  IPC::Encoder::~Encoder(v2, a2);
  bmalloc::api::tzoneFree(v4, v5);
  _Unwind_Resume(a1);
}

uint64_t WTF::Vector<WTF::CompletionHandler<void ()(WebCore::HostingContext)>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(uint64_t a1, void *a2)
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

  if (v4)
  {
    *a1 = 0;
    *(a1 + 8) = 0;
    WTF::fastFree(v4, a2);
  }

  return a1;
}

unint64_t WTF::Vector<WTF::CompletionHandler<void ()(WebCore::HostingContext)>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(uint64_t a1, unint64_t a2, unint64_t a3)
{
  v3 = a3;
  v5 = *a1;
  if (*a1 > a3 || v5 + 8 * *(a1 + 12) <= a3)
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

    WTF::Vector<WTF::CompletionHandler<void ()(WebCore::HostingContext)>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::reserveCapacity<(WTF::FailureAction)0>(a1, v12);
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

    WTF::Vector<WTF::CompletionHandler<void ()(WebCore::HostingContext)>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::reserveCapacity<(WTF::FailureAction)0>(a1, v9);
    return *a1 + v6;
  }

  return v3;
}

uint64_t WTF::Vector<WTF::CompletionHandler<void ()(WebCore::HostingContext)>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::reserveCapacity<(WTF::FailureAction)0>(uint64_t result, unint64_t a2)
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
    v5 = *(result + 12);
    v6 = WTF::fastMalloc((8 * a2));
    *(v3 + 8) = v2;
    *v3 = v6;
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

void WTF::Function<void ()(WebCore::DestinationColorSpace)>::operator()(uint64_t *a1, const void **a2)
{
  v2 = *a1;
  v3 = *a2;
  *a2 = 0;
  cf = v3;
  (*(*v2 + 16))(v2, &cf);
  v4 = cf;
  cf = 0;
  if (v4)
  {
    CFRelease(v4);
  }
}

void sub_19D8EA554(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, CFTypeRef cf)
{
  if (cf)
  {
    CFRelease(cf);
  }

  _Unwind_Resume(exception_object);
}

atomic_ullong *WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebCore::SampleBufferDisplayLayer,(WTF::DestructionThread)2>::deref(atomic_ullong *result)
{
  v1 = result;
  while (1)
  {
    v2 = *result;
    if ((*result & 1) == 0)
    {
      break;
    }

    v3 = *result;
    atomic_compare_exchange_strong_explicit(result, &v3, v2 - 2, memory_order_relaxed, memory_order_relaxed);
    if (v3 == v2)
    {
      if (v2 == 3)
      {
        v4 = WTF::fastMalloc(0x10);
        *v4 = &unk_1F10EB900;
        v4[1] = v1;
        v6 = v4;
        WTF::ensureOnMainRunLoop();
        result = v6;
        if (v6)
        {
          return (*(*v6 + 8))(v6);
        }
      }

      return result;
    }
  }

  v5 = *result;

  return WTF::ThreadSafeWeakPtrControlBlock::strongDeref<WebCore::SampleBufferDisplayLayer,(WTF::DestructionThread)2>(v5);
}

void sub_19D8EA644(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (a10)
  {
    (*(*a10 + 8))(a10);
  }

  _Unwind_Resume(exception_object);
}

atomic_uchar *WTF::ThreadSafeWeakPtrControlBlock::strongDeref<WebCore::SampleBufferDisplayLayer,(WTF::DestructionThread)2>(atomic_uchar *this)
{
  v1 = this;
  v2 = 0;
  atomic_compare_exchange_strong_explicit(this, &v2, 1u, memory_order_acquire, memory_order_acquire);
  if (v2)
  {
    this = MEMORY[0x19EB01E30](this);
  }

  v3 = *(v1 + 1) - 1;
  *(v1 + 1) = v3;
  if (v3)
  {
    v4 = 0;
  }

  else
  {
    v4 = *(v1 + 3);
    ++*(v1 + 2);
    *(v1 + 3) = 0;
  }

  v5 = 1;
  atomic_compare_exchange_strong_explicit(v1, &v5, 0, memory_order_release, memory_order_relaxed);
  if (v5 == 1)
  {
    if (v3)
    {
      return this;
    }
  }

  else
  {
    v7 = v3;
    this = WTF::Lock::unlockSlow(v1);
    if (v7)
    {
      return this;
    }
  }

  v6 = WTF::fastMalloc(0x18);
  *v6 = &unk_1F10EB928;
  *(v6 + 1) = v1;
  *(v6 + 2) = v4;
  v8 = v6;
  WTF::ensureOnMainRunLoop();
  this = v8;
  if (v8)
  {
    return (*(*v8 + 8))(v8);
  }

  return this;
}

void sub_19D8EA784(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (a10)
  {
    (*(*a10 + 8))(a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t WTF::Detail::CallableWrapper<void WTF::ThreadSafeWeakPtrControlBlock::strongDeref<WebCore::SampleBufferDisplayLayer,(WTF::DestructionThread)2>(void)::{lambda(void)#1},void>::call(uint64_t a1, void *a2)
{
  v3 = *(a1 + 8);
  result = *(a1 + 16);
  if (result)
  {
    result = (*(*result + 8))(result);
  }

  v4 = 0;
  v5 = 1;
  atomic_compare_exchange_strong_explicit(v3, &v4, 1u, memory_order_acquire, memory_order_acquire);
  if (v4)
  {
    result = MEMORY[0x19EB01E30](v3);
  }

  v6 = *(v3 + 16) - 1;
  *(v3 + 16) = v6;
  atomic_compare_exchange_strong_explicit(v3, &v5, 0, memory_order_release, memory_order_relaxed);
  if (v5 == 1)
  {
    if (v6)
    {
      return result;
    }
  }

  else
  {
    v7 = v6;
    result = WTF::Lock::unlockSlow(v3);
    if (v7)
    {
      return result;
    }
  }

  return WTF::fastFree(v3, a2);
}

void *WTF::Detail::CallableWrapper<WebKit::RemoteSampleBufferDisplayLayer::initialize(BOOL,WebCore::IntSize,BOOL,BOOL,WTF::CompletionHandler<void ()(WebCore::HostingContext)> &&)::$_0,void,BOOL>::~CallableWrapper(void *a1, void *a2)
{
  *a1 = &unk_1F10EB8D8;
  v3 = a1[3];
  a1[3] = 0;
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

uint64_t WTF::Detail::CallableWrapper<WebKit::RemoteSampleBufferDisplayLayer::initialize(BOOL,WebCore::IntSize,BOOL,BOOL,WTF::CompletionHandler<void ()(WebCore::HostingContext)> &&)::$_0,void,BOOL>::~CallableWrapper(WTF *this, void *a2)
{
  *this = &unk_1F10EB8D8;
  v3 = *(this + 3);
  *(this + 3) = 0;
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

void WTF::Detail::CallableWrapper<WebKit::RemoteSampleBufferDisplayLayer::initialize(BOOL,WebCore::IntSize,BOOL,BOOL,WTF::CompletionHandler<void ()(WebCore::HostingContext)> &&)::$_0,void,BOOL>::call(uint64_t a1, void *a2)
{
  v3 = *(a1 + 8);
  if (v3)
  {
    v4 = *(v3 + 8);
    v5 = 1;
    if (v4)
    {
      atomic_fetch_add((v4 + 16), 1u);
      if (a2)
      {
        WebKit::LayerHostingContext::create((a1 + 16), a2, &v17);
        std::unique_ptr<WebKit::LayerHostingContext>::operator=[abi:sn200100]((v4 + 88), &v17);
        v6 = v17;
        v17 = 0;
        if (v6)
        {
          WebKit::LayerHostingContext::~LayerHostingContext(v6);
          bmalloc::api::tzoneFree(v15, v16);
        }

        v7 = *(v4 + 88);
        WebKit::RemoteSampleBufferDisplayLayer::protectedSampleBufferDisplayLayer(v4, &v17);
        v8 = v17;
        v9 = WebCore::LocalSampleBufferDisplayLayer::rootLayer(v17);
        v10 = *(v7 + 16);
        if (v10)
        {
          [v10 setLayer:v9];
        }

        else
        {
          [*(v7 + 8) setLayer:v9];
        }

        if (v8)
        {
          WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebCore::SampleBufferDisplayLayer,(WTF::DestructionThread)2>::deref(v8 + 1);
        }

        WebKit::LayerHostingContext::hostingContext(*(v4 + 88), &v17);
        WTF::CompletionHandler<void ()(WebCore::HostingContext)>::operator()((a1 + 24), &v17);
        v14 = v19;
        v19 = 0;
        if (v14)
        {
          WTF::fastFree(v14, v13);
        }

        WTF::MachSendRight::~MachSendRight(&v18);
LABEL_20:
        WTF::ThreadSafeRefCounted<WebKit::RemoteSampleBufferDisplayLayer,(WTF::DestructionThread)2>::deref((v4 + 16));
        return;
      }

      v5 = 0;
    }
  }

  else
  {
    v4 = 0;
    v5 = 1;
  }

  LODWORD(v17) = 0;
  v18 = 0;
  v19 = 0;
  WTF::CompletionHandler<void ()(WebCore::HostingContext)>::operator()((a1 + 24), &v17);
  v12 = v19;
  v19 = 0;
  if (v12)
  {
    WTF::fastFree(v12, v11);
  }

  WTF::MachSendRight::~MachSendRight(&v18);
  if ((v5 & 1) == 0)
  {
    goto LABEL_20;
  }
}

void sub_19D8EAB3C(_Unwind_Exception *a1, void *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, WTF *a12)
{
  v14 = a12;
  a12 = 0;
  if (v14)
  {
    WTF::fastFree(v14, a2);
  }

  WTF::MachSendRight::~MachSendRight(&a11);
  WTF::ThreadSafeRefCounted<WebKit::RemoteSampleBufferDisplayLayer,(WTF::DestructionThread)2>::deref((v12 + 16));
  _Unwind_Resume(a1);
}

void WebKit::NetworkTransportSession::didReceiveMessage(WebKit::NetworkTransportSession *this, atomic_ullong *a2, IPC::Decoder *a3)
{
  v68 = *MEMORY[0x1E69E9840];
  v4 = *(this + 6);
  if (v4)
  {
    v5 = *(v4 + 8);
    if (v5)
    {
      if ((*(v5 + 290) & 2) != 0)
      {
        ++*(this + 4);
        v12 = *(a3 + 25);
        if (v12 <= 0x331)
        {
          if (*(a3 + 25) <= 0x32Fu)
          {
            if (v12 == 814)
            {
              IPC::Decoder::decode<std::tuple<WTF::ObjectIdentifierGeneric<WebCore::WebTransportStreamIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,std::optional<unsigned long long>>>(buf, a3);
              if (v67 == 1)
              {
                WebKit::NetworkTransportSession::cancelReceiveStream(this, *buf);
              }

              goto LABEL_80;
            }

            if (v12 == 815)
            {
              IPC::Decoder::decode<std::tuple<WTF::ObjectIdentifierGeneric<WebCore::WebTransportStreamIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,std::optional<unsigned long long>>>(buf, a3);
              if (v67 == 1)
              {
                WebKit::NetworkTransportSession::cancelSendStream(this, *buf);
              }

              goto LABEL_80;
            }

            goto LABEL_63;
          }

          if (v12 == 816)
          {
            v32 = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(a3);
            if (v13)
            {
              v33 = v32;
              while (1)
              {
                v34 = *a2;
                if ((*a2 & 1) == 0)
                {
                  break;
                }

                v35 = *a2;
                atomic_compare_exchange_strong_explicit(a2, &v35, v34 + 2, memory_order_relaxed, memory_order_relaxed);
                if (v35 == v34)
                {
                  goto LABEL_68;
                }
              }

              WTF::ThreadSafeWeakPtrControlBlock::strongRef(*a2);
LABEL_68:
              v49 = WTF::fastMalloc(0x18);
              *v49 = &unk_1F10EB9F0;
              v49[1] = v33;
              v49[2] = a2;
              *buf = v49;
              WebKit::NetworkTransportSession::createBidirectionalStream(this, buf);
              goto LABEL_71;
            }

LABEL_80:
            if (*(this + 4) == 1)
            {
              (*(*this + 24))(this, v13, v14);
            }

            else
            {
              --*(this + 4);
            }

            return;
          }

          if (v12 == 817)
          {
            v19 = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(a3);
            if (v13)
            {
              v20 = v19;
              while (1)
              {
                v21 = *a2;
                if ((*a2 & 1) == 0)
                {
                  break;
                }

                v22 = *a2;
                atomic_compare_exchange_strong_explicit(a2, &v22, v21 + 2, memory_order_relaxed, memory_order_relaxed);
                if (v22 == v21)
                {
                  goto LABEL_70;
                }
              }

              WTF::ThreadSafeWeakPtrControlBlock::strongRef(*a2);
LABEL_70:
              v50 = WTF::fastMalloc(0x18);
              *v50 = &unk_1F10EB9C8;
              v50[1] = v20;
              v50[2] = a2;
              *buf = v50;
              WebKit::NetworkTransportSession::createOutgoingUnidirectionalStream(this, buf);
LABEL_71:
              v51 = *buf;
              *buf = 0;
              if (v51)
              {
                (*(*v51 + 8))(v51);
              }

              goto LABEL_80;
            }

            goto LABEL_80;
          }

LABEL_63:
          v47 = qword_1ED6416C8;
          if (os_log_type_enabled(qword_1ED6416C8, OS_LOG_TYPE_ERROR))
          {
            if (v12 >= 0x107F)
            {
              v55 = 4223;
            }

            else
            {
              v55 = v12;
            }

            v56 = (&IPC::Detail::messageDescriptions)[3 * v55];
            v57 = *(a3 + 7);
            *buf = 136315394;
            *&buf[4] = v56;
            *&buf[12] = 2048;
            *&buf[14] = v57;
            _os_log_error_impl(&dword_19D52D000, v47, OS_LOG_TYPE_ERROR, "Unhandled message %s to %llu", buf, 0x16u);
          }

          goto LABEL_64;
        }

        if (*(a3 + 25) <= 0x333u)
        {
          if (v12 == 818)
          {
            IPC::Decoder::decode<std::tuple<WTF::ObjectIdentifierGeneric<WebCore::WebTransportStreamIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,std::optional<unsigned long long>>>(buf, a3);
            if (v67 == 1)
            {
              WebKit::NetworkTransportSession::destroyStream(this, *buf);
            }

            goto LABEL_80;
          }

          if (v12 != 819)
          {
            goto LABEL_63;
          }

          IPC::Decoder::decode<std::tuple<std::span<unsigned char const,18446744073709551615ul>>>(a3, buf);
          if (buf[16] != 1)
          {
            goto LABEL_80;
          }

          v15 = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(a3);
          if ((v13 & 1) == 0)
          {
            goto LABEL_80;
          }

          v16 = v15;
          while (1)
          {
            v17 = *a2;
            if ((*a2 & 1) == 0)
            {
              break;
            }

            v18 = *a2;
            atomic_compare_exchange_strong_explicit(a2, &v18, v17 + 2, memory_order_relaxed, memory_order_relaxed);
            if (v18 == v17)
            {
              goto LABEL_74;
            }
          }

          WTF::ThreadSafeWeakPtrControlBlock::strongRef(*a2);
LABEL_74:
          v52 = WTF::fastMalloc(0x18);
          *v52 = &unk_1F10EB9A0;
          v52[1] = v16;
          v52[2] = a2;
          v64 = v52;
          if ((buf[16] & 1) == 0)
          {
            __break(1u);
          }

          WebKit::NetworkTransportSession::sendDatagram(this, *buf, *&buf[8], &v64);
          v53 = v64;
          v64 = 0;
          if (!v53)
          {
            goto LABEL_80;
          }

LABEL_79:
          (*(*v53 + 8))(v53);
          goto LABEL_80;
        }

        if (v12 == 820)
        {
          v36 = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::RemoteVideoFrameIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>(a3);
          if ((v37 & 1) == 0 || (v38 = v36, IPC::ArgumentCoder<std::span<unsigned char const,18446744073709551615ul>,void>::decode<IPC::Decoder>(a3, buf), (buf[16] & 1) == 0) && ((v58 = *a3, v59 = *(a3 + 1), *a3 = 0, *(a3 + 1) = 0, (v60 = *(a3 + 3)) == 0) || !v59 || ((*(*v60 + 16))(v60, v58), (buf[16] & 1) == 0)))
          {
LABEL_64:
            v13 = *a3;
            v14 = *(a3 + 1);
            *a3 = 0;
            *(a3 + 1) = 0;
            v48 = *(a3 + 3);
            if (v48 && v14)
            {
              (*(*v48 + 16))(v48, v13);
            }

            goto LABEL_80;
          }

          v23 = *(a3 + 1);
          v39 = *(a3 + 2);
          if (v23 <= &v39[-*a3])
          {
            *a3 = 0;
            *(a3 + 1) = 0;
            v61 = *(a3 + 3);
            if (v61)
            {
              if (v23)
              {
                (*(*v61 + 16))(v61);
                v23 = *(a3 + 1);
              }
            }

            else
            {
              v23 = 0;
            }
          }

          else
          {
            *(a3 + 2) = v39 + 1;
            if (v39)
            {
              v40 = *v39;
              if (v40 < 2)
              {
                v41 = *buf;
                v42 = *&buf[8];
                v43 = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(a3);
                if ((v13 & 1) == 0)
                {
                  goto LABEL_80;
                }

                v44 = v43;
                while (1)
                {
                  v45 = *a2;
                  if ((*a2 & 1) == 0)
                  {
                    break;
                  }

                  v46 = *a2;
                  atomic_compare_exchange_strong_explicit(a2, &v46, v45 + 2, memory_order_relaxed, memory_order_relaxed);
                  if (v46 == v45)
                  {
                    goto LABEL_78;
                  }
                }

                WTF::ThreadSafeWeakPtrControlBlock::strongRef(*a2);
LABEL_78:
                v54 = WTF::fastMalloc(0x18);
                *v54 = &unk_1F10EBA18;
                v54[1] = v44;
                v54[2] = a2;
                *buf = v54;
                WebKit::NetworkTransportSession::streamSendBytes(this, v38, v41, v42, v40 & 1, buf);
                v53 = *buf;
                *buf = 0;
                if (!v53)
                {
                  goto LABEL_80;
                }

                goto LABEL_79;
              }

              goto LABEL_102;
            }
          }
        }

        else
        {
          if (v12 != 821)
          {
            goto LABEL_63;
          }

          v23 = *(a3 + 1);
          v24 = ((*(a3 + 2) + 3) & 0xFFFFFFFFFFFFFFFCLL);
          v25 = v24 - *a3;
          v26 = v23 >= v25;
          v27 = v23 - v25;
          if (v26 && v27 > 3)
          {
            *(a3 + 2) = v24 + 1;
            if (v24)
            {
              v28 = *v24;
              IPC::ArgumentCoder<WTF::CString,void>::decode(a3, &v64);
              if (v65)
              {
                *buf = v28;
                *&buf[8] = v64;
                buf[16] = 1;
                WebKit::NetworkTransportSession::terminate(this, v28, &buf[8]);
                if (buf[16])
                {
                  v29 = *&buf[8];
                  *&buf[8] = 0;
                  if (v29)
                  {
                    if (*v29 == 1)
                    {
                      WTF::fastFree(v29, v13);
                    }

                    else
                    {
                      --*v29;
                    }
                  }
                }

                goto LABEL_80;
              }

LABEL_101:
              v23 = *(a3 + 1);
            }

LABEL_102:
            *a3 = 0;
            *(a3 + 1) = 0;
            v63 = *(a3 + 3);
            if (v63 && v23)
            {
              (*(*v63 + 16))(v63);
            }

            goto LABEL_64;
          }
        }

        *a3 = 0;
        *(a3 + 1) = 0;
        v62 = *(a3 + 3);
        if (!v62)
        {
          v23 = 0;
          goto LABEL_102;
        }

        if (!v23)
        {
          goto LABEL_102;
        }

        (*(*v62 + 16))(v62);
        goto LABEL_101;
      }
    }
  }

  v6 = qword_1ED6416C8;
  if (os_log_type_enabled(qword_1ED6416C8, OS_LOG_TYPE_ERROR))
  {
    v30 = *(a3 + 25);
    if (v30 >= 0x107F)
    {
      v30 = 4223;
    }

    v31 = (&IPC::Detail::messageDescriptions)[3 * v30];
    *buf = 136315138;
    *&buf[4] = v31;
    _os_log_error_impl(&dword_19D52D000, v6, OS_LOG_TYPE_ERROR, "Message %s received by a disabled message receiver NetworkTransportSession", buf, 0xCu);
  }

  v7 = *a3;
  v8 = *(a3 + 1);
  *a3 = 0;
  *(a3 + 1) = 0;
  v9 = *(a3 + 3);
  if (v9)
  {
    if (v8)
    {
      (*(*v9 + 16))(v9, v7);
    }
  }
}

void WebPushD::PushClientConnection::didReceiveMessageWithReplyHandler(WebPushD::PushClientConnection *a1, uint64_t a2, void *a3)
{
  v3 = a2;
  v5 = buf;
  v155 = *MEMORY[0x1E69E9840];
  v6 = *(a1 + 4);
  *(a1 + 4) = v6 + 1;
  switch(*(a2 + 50))
  {
    case 0x37A:
      IPC::ArgumentCoder<std::tuple<WebCore::SecurityOriginData,WTF::UUID>,void>::decode<IPC::Decoder>(a2, buf);
      if (v141 & 1) != 0 || (v8 = *v3, v9 = v3[1], *v3 = 0, v3[1] = 0, (v103 = v3[3]) != 0) && v9 && ((*(*v103 + 16))(v103, v8), (v141))
      {
        WebPushD::PushClientConnection::cancelNotification(a1, buf, &buf[32]);
        goto LABEL_42;
      }

      goto LABEL_133;
    case 0x37B:
      v49 = *(a2 + 56);
      v50 = *a3;
      *a3 = 0;
      *(a1 + 4) = v6 + 2;
      v51 = WTF::fastMalloc(0x20);
      *v51 = &unk_1F10EBCE8;
      v51[1] = v49;
      v51[2] = v50;
      v51[3] = a1;
      *buf = v51;
      WebPushD::PushClientConnection::getAppBadgeForTesting(a1, buf);
      v15 = *buf;
      *buf = 0;
      if (v15)
      {
        goto LABEL_49;
      }

      goto LABEL_133;
    case 0x37C:
      IPC::ArgumentCoder<std::tuple<WTF::URL,WTF::String>,void>::decode<IPC::Decoder>(a2, buf);
      if (v141 & 1) != 0 || (v8 = *v3, v9 = v3[1], *v3 = 0, v3[1] = 0, (v101 = v3[3]) != 0) && v9 && ((*(*v101 + 16))(v101, v8), (v141))
      {
        v3 = v3[7];
        v5 = *a3;
        *a3 = 0;
        ++*(a1 + 4);
        v40 = WTF::fastMalloc(0x20);
        *v40 = &unk_1F10EBC98;
        v40[1] = v3;
        v40[2] = v5;
        v40[3] = a1;
        *v124 = v40;
        if ((v141 & 1) == 0)
        {
          goto LABEL_148;
        }

        WebPushD::PushClientConnection::getNotifications(a1, buf, &buf[40], v124);
        v41 = *v124;
        *v124 = 0;
        if (v41)
        {
          (*(*v41 + 8))(v41);
        }

        if (v141)
        {
          v42 = *&buf[40];
          *&buf[40] = 0;
          if (!v42)
          {
            goto LABEL_130;
          }

          goto LABEL_104;
        }
      }

      goto LABEL_133;
    case 0x37D:
      v43 = *(a2 + 56);
      v44 = *a3;
      *a3 = 0;
      *(a1 + 4) = v6 + 2;
      v45 = WTF::fastMalloc(0x20);
      *v45 = &unk_1F10EBA68;
      v45[1] = v43;
      v45[2] = v44;
      v45[3] = a1;
      *buf = v45;
      WebPushD::PushClientConnection::getPendingPushMessage(a1, buf);
      v15 = *buf;
      *buf = 0;
      if (v15)
      {
        goto LABEL_49;
      }

      goto LABEL_133;
    case 0x37E:
      v31 = *(a2 + 56);
      v32 = *a3;
      *a3 = 0;
      *(a1 + 4) = v6 + 2;
      v33 = WTF::fastMalloc(0x20);
      *v33 = &unk_1F10EBA90;
      v33[1] = v31;
      v33[2] = v32;
      v33[3] = a1;
      *buf = v33;
      WebPushD::PushClientConnection::getPendingPushMessages(a1, buf);
      v15 = *buf;
      *buf = 0;
      if (v15)
      {
        goto LABEL_49;
      }

      goto LABEL_133;
    case 0x37F:
      IPC::Decoder::decode<std::tuple<WebCore::SecurityOriginData>>(a2, buf);
      if (buf[32] == 1)
      {
        v3 = v3[7];
        v5 = *a3;
        *a3 = 0;
        ++*(a1 + 4);
        v59 = WTF::fastMalloc(0x20);
        *v59 = &unk_1F10EBB80;
        v59[1] = v3;
        v59[2] = v5;
        v59[3] = a1;
        *v124 = v59;
        if ((buf[32] & 1) == 0)
        {
          goto LABEL_148;
        }

        WebPushD::PushClientConnection::getPushPermissionState(a1, buf, v124);
        v17 = *v124;
        *v124 = 0;
        if (!v17)
        {
          goto LABEL_101;
        }

        goto LABEL_100;
      }

      goto LABEL_133;
    case 0x380:
      IPC::ArgumentCoder<std::tuple<WTF::URL>,void>::decode<IPC::Decoder>(a2, buf);
      if (buf[40] & 1) != 0 || (v8 = *v3, v9 = v3[1], *v3 = 0, v3[1] = 0, (v106 = v3[3]) != 0) && v9 && ((*(*v106 + 16))(v106, v8), (buf[40]))
      {
        v3 = v3[7];
        v5 = *a3;
        *a3 = 0;
        ++*(a1 + 4);
        v64 = WTF::fastMalloc(0x20);
        *v64 = &unk_1F10EBB58;
        v64[1] = v3;
        v64[2] = v5;
        v64[3] = a1;
        *v124 = v64;
        if ((buf[40] & 1) == 0)
        {
          goto LABEL_148;
        }

        WebPushD::PushClientConnection::getPushSubscription(a1, buf, v124);
        v65 = *v124;
        *v124 = 0;
        if (v65)
        {
          (*(*v65 + 8))(v65);
        }

        if (buf[40])
        {
          goto LABEL_130;
        }
      }

      goto LABEL_133;
    case 0x381:
      v46 = *(a2 + 56);
      v47 = *a3;
      *a3 = 0;
      *(a1 + 4) = v6 + 2;
      v48 = WTF::fastMalloc(0x20);
      *v48 = &unk_1F10EBC48;
      v48[1] = v46;
      v48[2] = v47;
      v48[3] = a1;
      *buf = v48;
      WebPushD::PushClientConnection::getPushTopicsForTesting(a1, buf);
      v15 = *buf;
      *buf = 0;
      if (v15)
      {
        goto LABEL_49;
      }

      goto LABEL_133;
    case 0x382:
      IPC::Decoder::decode<std::tuple<WebCore::SecurityOriginData>>(a2, buf);
      if (buf[32] == 1)
      {
        v3 = v3[7];
        v5 = *a3;
        *a3 = 0;
        ++*(a1 + 4);
        v69 = WTF::fastMalloc(0x20);
        *v69 = &unk_1F10EBBA8;
        v69[1] = v3;
        v69[2] = v5;
        v69[3] = a1;
        *v124 = v69;
        if ((buf[32] & 1) == 0)
        {
          goto LABEL_148;
        }

        WebPushD::PushClientConnection::incrementSilentPushCount(a1, buf, v124);
        goto LABEL_99;
      }

      goto LABEL_133;
    case 0x383:
      IPC::Decoder::decode<WebKit::WebPushD::WebPushDaemonConnectionConfiguration>(a2, buf);
      if ((v144 & 1) == 0)
      {
        goto LABEL_123;
      }

      *v124 = *buf;
      *&v124[8] = *&buf[8];
      *&v124[16] = *&buf[16];
      *&v124[32] = *&buf[32];
      *&v124[48] = v141;
      v125 = v142;
      LOBYTE(v127) = 1;
      WebPushD::PushClientConnection::initializeConnection(a1);
      v37 = *&v124[24];
      *&v124[24] = 0;
      if (v37 && atomic_fetch_add_explicit(v37, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v37, v8);
      }

      v38 = *&v124[16];
      *&v124[16] = 0;
      if (v38 && atomic_fetch_add_explicit(v38, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v38, v8);
      }

      v39 = *v124;
      if (*v124)
      {
        *v124 = 0;
        *&v124[8] = 0;
        WTF::fastFree(v39, v8);
      }

      goto LABEL_133;
    case 0x384:
      IPC::ArgumentCoder<std::tuple<WTF::String>,void>::decode<IPC::Decoder>(a2, buf);
      if (buf[8] & 1) != 0 || (v8 = *v3, v9 = v3[1], *v3 = 0, v3[1] = 0, (v99 = v3[3]) != 0) && v9 && ((*(*v99 + 16))(v99, v8), (buf[8]))
      {
        v3 = v3[7];
        v5 = *a3;
        *a3 = 0;
        ++*(a1 + 4);
        v68 = WTF::fastMalloc(0x20);
        *v68 = &unk_1F10EBAE0;
        v68[1] = v3;
        v68[2] = v5;
        v68[3] = a1;
        *v124 = v68;
        if ((buf[8] & 1) == 0)
        {
          goto LABEL_148;
        }

        WebPushD::PushClientConnection::injectEncryptedPushMessageForTesting(a1, buf, v124);
        v53 = *v124;
        *v124 = 0;
        if (!v53)
        {
          goto LABEL_94;
        }

        goto LABEL_93;
      }

      goto LABEL_133;
    case 0x385:
      IPC::ArgumentCoder<WebKit::WebPushD::PushMessageForTesting,void>::decode(a2, buf);
      if ((v152 & 1) == 0)
      {
        goto LABEL_149;
      }

      goto LABEL_12;
    case 0x386:
      v34 = *(a2 + 56);
      v35 = *a3;
      *a3 = 0;
      *(a1 + 4) = v6 + 2;
      v36 = WTF::fastMalloc(0x20);
      *v36 = &unk_1F10EBBD0;
      v36[1] = v34;
      v36[2] = v35;
      v36[3] = a1;
      *buf = v36;
      WebPushD::PushClientConnection::removeAllPushSubscriptions(a1, buf);
      v15 = *buf;
      *buf = 0;
      if (v15)
      {
        goto LABEL_49;
      }

      goto LABEL_133;
    case 0x387:
      IPC::Decoder::decode<std::tuple<WebCore::SecurityOriginData>>(a2, buf);
      if (buf[32] != 1)
      {
        goto LABEL_133;
      }

      v3 = v3[7];
      v5 = *a3;
      *a3 = 0;
      ++*(a1 + 4);
      v63 = WTF::fastMalloc(0x20);
      *v63 = &unk_1F10EBBF8;
      v63[1] = v3;
      v63[2] = v5;
      v63[3] = a1;
      *v124 = v63;
      if ((buf[32] & 1) == 0)
      {
        goto LABEL_148;
      }

      WebPushD::PushClientConnection::removePushSubscriptionsForOrigin(a1, buf, v124);
LABEL_99:
      v17 = *v124;
      *v124 = 0;
      if (v17)
      {
        goto LABEL_100;
      }

      goto LABEL_101;
    case 0x388:
      IPC::Decoder::decode<std::tuple<WebCore::SecurityOriginData>>(a2, buf);
      if (buf[32] != 1)
      {
        goto LABEL_133;
      }

      v3 = v3[7];
      v5 = *a3;
      *a3 = 0;
      ++*(a1 + 4);
      v16 = WTF::fastMalloc(0x20);
      *v16 = &unk_1F10EBCC0;
      v16[1] = v3;
      v16[2] = v5;
      v16[3] = a1;
      *v124 = v16;
      if ((buf[32] & 1) == 0)
      {
        goto LABEL_148;
      }

      WebPushD::PushClientConnection::requestPushPermission(a1, buf, v124);
      v17 = *v124;
      *v124 = 0;
      if (v17)
      {
LABEL_100:
        (*(*v17 + 8))(v17);
      }

LABEL_101:
      if ((buf[32] & 1) == 0)
      {
        goto LABEL_133;
      }

LABEL_102:
      if (buf[24])
      {
        goto LABEL_133;
      }

      v42 = *&buf[8];
      *&buf[8] = 0;
      if (v42)
      {
LABEL_104:
        if (atomic_fetch_add_explicit(v42, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v42, v8);
        }
      }

      goto LABEL_130;
    case 0x389:
      IPC::ArgumentCoder<std::tuple<WebCore::SecurityOriginData,std::optional<unsigned long long>>,void>::decode<IPC::Decoder>(a2, buf);
      if ((v141 & 1) == 0)
      {
        v8 = *v3;
        v9 = v3[1];
        *v3 = 0;
        v3[1] = 0;
        v102 = v3[3];
        if (!v102)
        {
          goto LABEL_133;
        }

        if (!v9)
        {
          goto LABEL_133;
        }

        (*(*v102 + 16))(v102, v8);
        if ((v141 & 1) == 0)
        {
          goto LABEL_133;
        }
      }

      WebPushD::PushClientConnection::setAppBadge(a1, buf, *&buf[32], buf[40]);
LABEL_42:
      if ((v141 & 1) == 0)
      {
        goto LABEL_133;
      }

      goto LABEL_102;
    case 0x38A:
      v10 = IPC::Decoder::decode<std::tuple<unsigned int>>(a2);
      if ((v10 & 0x100000000) != 0)
      {
        v11 = v10;
        v12 = v3[7];
        v13 = *a3;
        *a3 = 0;
        ++*(a1 + 4);
        v14 = WTF::fastMalloc(0x20);
        *v14 = &unk_1F10EBD38;
        v14[1] = v12;
        v14[2] = v13;
        v14[3] = a1;
        *buf = v14;
        WebPushD::PushClientConnection::setProtocolVersionForTesting(a1, v11, buf);
        v15 = *buf;
        *buf = 0;
        if (v15)
        {
LABEL_49:
          (*(*v15 + 8))(v15);
        }
      }

      goto LABEL_133;
    case 0x38B:
      IPC::ArgumentCoder<std::tuple<WTF::String>,void>::decode<IPC::Decoder>(a2, buf);
      if ((buf[8] & 1) == 0)
      {
        v8 = *v3;
        v9 = v3[1];
        *v3 = 0;
        v3[1] = 0;
        v98 = v3[3];
        if (!v98)
        {
          goto LABEL_133;
        }

        if (!v9)
        {
          goto LABEL_133;
        }

        (*(*v98 + 16))(v98, v8);
        if ((buf[8] & 1) == 0)
        {
          goto LABEL_133;
        }
      }

      v3 = v3[7];
      v5 = *a3;
      *a3 = 0;
      ++*(a1 + 4);
      v52 = WTF::fastMalloc(0x20);
      *v52 = &unk_1F10EBC20;
      v52[1] = v3;
      v52[2] = v5;
      v52[3] = a1;
      *v124 = v52;
      if ((buf[8] & 1) == 0)
      {
        goto LABEL_148;
      }

      WebPushD::PushClientConnection::setPublicTokenForTesting(a1, buf, v124);
      v53 = *v124;
      *v124 = 0;
      if (v53)
      {
LABEL_93:
        (*(*v53 + 8))(v53);
      }

LABEL_94:
      if ((buf[8] & 1) == 0)
      {
        goto LABEL_133;
      }

      goto LABEL_130;
    case 0x38C:
      IPC::ArgumentCoder<std::tuple<WTF::String,BOOL>,void>::decode<IPC::Decoder>(a2, buf);
      if ((buf[16] & 1) == 0)
      {
        v8 = *v3;
        v9 = v3[1];
        *v3 = 0;
        v3[1] = 0;
        v107 = v3[3];
        if (!v107)
        {
          goto LABEL_133;
        }

        if (!v9)
        {
          goto LABEL_133;
        }

        (*(*v107 + 16))(v107, v8);
        if ((buf[16] & 1) == 0)
        {
          goto LABEL_133;
        }
      }

      v3 = v3[7];
      v5 = *a3;
      *a3 = 0;
      ++*(a1 + 4);
      v66 = WTF::fastMalloc(0x20);
      *v66 = &unk_1F10EBA40;
      v66[1] = v3;
      v66[2] = v5;
      v66[3] = a1;
      *v124 = v66;
      if ((buf[16] & 1) == 0)
      {
        goto LABEL_148;
      }

      WebPushD::PushClientConnection::setPushAndNotificationsEnabledForOrigin(a1, buf, buf[8], v124);
      v67 = *v124;
      *v124 = 0;
      if (v67)
      {
        (*(*v67 + 8))(v67);
      }

      if ((buf[16] & 1) == 0)
      {
        goto LABEL_133;
      }

      goto LABEL_130;
    case 0x38D:
      IPC::ArgumentCoder<WTF::URL,void>::decode(a2, v124);
      if ((v124[40] & 1) == 0)
      {
        v111 = *v3;
        v112 = v3[1];
        *v3 = 0;
        v3[1] = 0;
        v113 = v3[3];
        if (!v113)
        {
          goto LABEL_123;
        }

        if (!v112)
        {
          goto LABEL_123;
        }

        (*(*v113 + 16))(v113, v111);
        if ((v124[40] & 1) == 0)
        {
          goto LABEL_123;
        }
      }

      v79 = v3[1];
      v80 = v3[2];
      v81 = *v3;
      if (v79 <= &v80[-*v3])
      {
        *v3 = 0;
        v3[1] = 0;
        v120 = v3[3];
        if (v120)
        {
          if (v79)
          {
            (*(*v120 + 16))(v120);
            v79 = v3[1];
          }
        }

        else
        {
          v79 = 0;
        }
      }

      else
      {
        v3[2] = (v80 + 1);
        if (v80)
        {
          v82 = *v80;
          if (v82 < 2)
          {
            *buf = *v124;
            *&buf[8] = *&v124[8];
            *&buf[24] = *&v124[24];
            buf[40] = v82;
            LOBYTE(v141) = 1;
            v83 = v3[7];
            v84 = *a3;
            *a3 = 0;
            ++*(a1 + 4);
            v85 = WTF::fastMalloc(0x20);
            *v85 = &unk_1F10EBD10;
            v85[1] = v83;
            v85[2] = v84;
            v85[3] = a1;
            *v124 = v85;
            WebPushD::PushClientConnection::setServiceWorkerIsBeingInspected(a1, buf, v82 & 1, v124);
            v86 = *v124;
            *v124 = 0;
            if (v86)
            {
              (*(*v86 + 8))(v86);
            }

            if (v141)
            {
              goto LABEL_130;
            }

            goto LABEL_133;
          }

          goto LABEL_209;
        }
      }

      *v3 = 0;
      v3[1] = 0;
      v121 = v3[3];
      if (v121)
      {
        if (v79)
        {
          (*(*v121 + 16))(v121);
          v81 = *v3;
          v79 = v3[1];
LABEL_209:
          *v3 = 0;
          v3[1] = 0;
          v122 = v3[3];
          if (v122 && v79)
          {
            (*(*v122 + 16))(v122, v81);
          }

          buf[0] = 0;
          LOBYTE(v141) = 0;
          if (v124[40])
          {
            goto LABEL_199;
          }

          goto LABEL_123;
        }
      }

      else
      {
        v79 = 0;
      }

      v81 = 0;
      goto LABEL_209;
    case 0x38E:
      IPC::ArgumentCoder<std::tuple<WebCore::NotificationData,WTF::RefPtr<WebCore::NotificationResources,WTF::RawPtrTraits<WebCore::NotificationResources>,WTF::DefaultRefDerefTraits<WebCore::NotificationResources>>>,void>::decode<IPC::Decoder>(a2, buf);
      if ((v154 & 1) == 0)
      {
        v8 = *v3;
        v9 = v3[1];
        *v3 = 0;
        v3[1] = 0;
        v104 = v3[3];
        if (!v104)
        {
          goto LABEL_133;
        }

        if (!v9)
        {
          goto LABEL_133;
        }

        (*(*v104 + 16))(v104, v8);
        if ((v154 & 1) == 0)
        {
          goto LABEL_133;
        }
      }

      v3 = v3[7];
      v5 = *a3;
      *a3 = 0;
      ++*(a1 + 4);
      v54 = WTF::fastMalloc(0x20);
      *v54 = &unk_1F10EBC70;
      v54[1] = v3;
      v54[2] = v5;
      v54[3] = a1;
      v123 = v54;
      if ((v154 & 1) == 0)
      {
        goto LABEL_148;
      }

      v55 = v153;
      v153 = 0;
      *v124 = v55;
      WebPushD::PushClientConnection::showNotification(a1, buf, v124, &v123);
      v56 = *v124;
      *v124 = 0;
      if (v56)
      {
        WTF::ThreadSafeRefCounted<WebCore::NotificationResources,(WTF::DestructionThread)0>::deref(v56, v8);
      }

      v57 = v123;
      v123 = 0;
      if (v57)
      {
        (*(*v57 + 8))(v57);
      }

      if (v154)
      {
        v58 = v153;
        v153 = 0;
        if (v58)
        {
          WTF::ThreadSafeRefCounted<WebCore::NotificationResources,(WTF::DestructionThread)0>::deref(v58, v8);
        }

        WebCore::NotificationData::~NotificationData(buf, v8);
      }

      goto LABEL_133;
    case 0x38F:
      IPC::ArgumentCoder<std::tuple<WTF::URL,WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,void>::decode<IPC::Decoder>(a2, buf);
      if ((BYTE8(v141) & 1) == 0)
      {
        v8 = *v3;
        v9 = v3[1];
        *v3 = 0;
        v3[1] = 0;
        v105 = v3[3];
        if (!v105)
        {
          goto LABEL_133;
        }

        if (!v9)
        {
          goto LABEL_133;
        }

        (*(*v105 + 16))(v105, v8);
        if ((BYTE8(v141) & 1) == 0)
        {
          goto LABEL_133;
        }
      }

      v3 = v3[7];
      v5 = *a3;
      *a3 = 0;
      ++*(a1 + 4);
      v60 = WTF::fastMalloc(0x20);
      *v60 = &unk_1F10EBB08;
      v60[1] = v3;
      v60[2] = v5;
      v60[3] = a1;
      *v124 = v60;
      if ((BYTE8(v141) & 1) == 0)
      {
        goto LABEL_148;
      }

      WebPushD::PushClientConnection::subscribeToPushService(a1, buf, &buf[40], v124);
      v61 = *v124;
      *v124 = 0;
      if (v61)
      {
        (*(*v61 + 8))(v61);
      }

      if ((BYTE8(v141) & 1) == 0)
      {
        goto LABEL_133;
      }

      v62 = *&buf[40];
      if (*&buf[40])
      {
        *&buf[40] = 0;
        LODWORD(v141) = 0;
        WTF::fastFree(v62, v8);
      }

      goto LABEL_130;
    case 0x390:
      IPC::ArgumentCoder<WTF::URL,void>::decode(a2, v124);
      if ((v124[40] & 1) == 0)
      {
        v108 = *v3;
        v109 = v3[1];
        *v3 = 0;
        v3[1] = 0;
        v110 = v3[3];
        if (!v110)
        {
          goto LABEL_123;
        }

        if (!v109)
        {
          goto LABEL_123;
        }

        (*(*v110 + 16))(v110, v108);
        if ((v124[40] & 1) == 0)
        {
          goto LABEL_123;
        }
      }

      v70 = v3[1];
      v71 = v3[2];
      v72 = *v3;
      if (v70 <= &v71[-*v3])
      {
        *v3 = 0;
        v3[1] = 0;
        v114 = v3[3];
        if (v114)
        {
          if (v70)
          {
            (*(*v114 + 16))(v114);
            v70 = v3[1];
          }
        }

        else
        {
          v70 = 0;
        }

        goto LABEL_193;
      }

      v3[2] = (v71 + 1);
      if (!v71)
      {
LABEL_193:
        *v3 = 0;
        v3[1] = 0;
        v115 = v3[3];
        if (v115)
        {
          if (v70)
          {
            (*(*v115 + 16))(v115);
            v72 = *v3;
            v70 = v3[1];
            goto LABEL_196;
          }
        }

        else
        {
          v70 = 0;
        }

        v72 = 0;
LABEL_196:
        *v3 = 0;
        v3[1] = 0;
        v116 = v3[3];
        if (v116 && v70)
        {
          (*(*v116 + 16))(v116, v72);
        }

        goto LABEL_197;
      }

      v73 = *v71;
      if (v73 >= 2)
      {
        goto LABEL_196;
      }

      if (!v73)
      {
        v77 = 0;
        v76 = 0;
        v78 = 0;
LABEL_127:
        *&buf[8] = *&v124[8];
        *&buf[24] = *&v124[24];
        v89 = v76 | v77;
        *buf = *v124;
        *&buf[40] = v76 | v77;
        LOBYTE(v141) = v78;
        BYTE8(v141) = 1;
        v90 = v3[7];
        v91 = *a3;
        *a3 = 0;
        ++*(a1 + 4);
        v92 = WTF::fastMalloc(0x20);
        *v92 = &unk_1F10EBB30;
        v92[1] = v90;
        v92[2] = v91;
        v92[3] = a1;
        *v124 = v92;
        WebPushD::PushClientConnection::unsubscribeFromPushService(a1, buf, v89, v141, v124);
        v93 = *v124;
        *v124 = 0;
        if (v93)
        {
          (*(*v93 + 8))(v93);
        }

        if (BYTE8(v141))
        {
LABEL_130:
          v94 = *buf;
          *buf = 0;
          if (v94 && atomic_fetch_add_explicit(v94, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v94, v8);
          }
        }

        goto LABEL_133;
      }

      v74 = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::RemoteVideoFrameIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>(v3);
      if ((v75 & 1) == 0)
      {
LABEL_197:
        v81 = *v3;
        v117 = v3[1];
        *v3 = 0;
        v3[1] = 0;
        v118 = v3[3];
        if (v118 && v117)
        {
          (*(*v118 + 16))(v118, v81);
        }

        buf[0] = 0;
        BYTE8(v141) = 0;
        if (v124[40])
        {
LABEL_199:
          v119 = *v124;
          *v124 = 0;
          if (v119 && atomic_fetch_add_explicit(v119, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v119, v81);
          }
        }

LABEL_123:
        v8 = *v3;
        v9 = v3[1];
        *v3 = 0;
        v3[1] = 0;
        v88 = v3[3];
        if (v88)
        {
LABEL_124:
          if (v9)
          {
            (*(*v88 + 16))(v88, v8);
          }
        }

        goto LABEL_133;
      }

      if (v124[40])
      {
        v76 = v74 & 0xFFFFFFFFFFFFFF00;
        v77 = v74;
        v78 = 1;
        goto LABEL_127;
      }

LABEL_148:
      __break(1u);
LABEL_149:
      v8 = *v3;
      v9 = v3[1];
      *v3 = 0;
      v3[1] = 0;
      v100 = v3[3];
      if (!v100 || !v9)
      {
        *v3 = 0;
        v3[1] = 0;
        goto LABEL_133;
      }

      (*(*v100 + 16))(v100, v8);
      if (v152)
      {
LABEL_12:
        v19 = *(&v141 + 1);
        *&v124[16] = *&buf[16];
        *&v124[24] = *&buf[24];
        *&buf[24] &= ~1u;
        v20 = *buf;
        memset(buf, 0, 24);
        *v124 = v20;
        *&v124[40] = *(v5 + 40);
        *(&v141 + 1) = 0;
        *&v124[56] = v19;
        v125 = v142;
        LOBYTE(v126) = 0;
        v138 = 0;
        if (v151 == 1)
        {
          v21 = v145;
          v126 = v143;
          v22 = v5[5];
          v23 = v5[6];
          v144 = v22 & 0xFFFFFFFE;
          v143 = 0;
          v127 = v22;
          v128 = v23;
          v145 = 0;
          v129 = v21;
          v130 = *(v5 + 120);
          v131 = 0;
          v136 = 0;
          if (v149 == 1)
          {
            v24 = v5[9];
            v25 = v5[10];
            v5[9] = 0u;
            v5[10] = 0u;
            v131 = v146;
            v132 = v24;
            v133 = v25;
            v26 = v147;
            v147 = 0;
            v134 = v26;
            v135 = v148;
            v136 = 1;
          }

          v137 = v150;
          v138 = 1;
        }

        v139 = 1;
        WebKit::WebPushD::PushMessageForTesting::~PushMessageForTesting(buf, v18);
        v27 = v3[7];
        v28 = *a3;
        *a3 = 0;
        ++*(a1 + 4);
        v29 = WTF::fastMalloc(0x20);
        *v29 = &unk_1F10EBAB8;
        v29[1] = v27;
        v29[2] = v28;
        v29[3] = a1;
        *buf = v29;
        WebPushD::PushClientConnection::injectPushMessageForTesting(a1, v124, buf);
        v30 = *buf;
        *buf = 0;
        if (v30)
        {
          (*(*v30 + 8))(v30);
        }

        if (v139)
        {
          WebKit::WebPushD::PushMessageForTesting::~PushMessageForTesting(v124, v8);
        }
      }

      else
      {
        v88 = v3[3];
        v8 = *v3;
        v9 = v3[1];
        *v3 = 0;
        v3[1] = 0;
        if (v88)
        {
          goto LABEL_124;
        }
      }

LABEL_133:
      if (*(a1 + 4) == 1)
      {
        (*(*a1 + 24))(a1, v8, v9);
      }

      else
      {
        --*(a1 + 4);
      }

      return;
    default:
      v87 = qword_1ED6416C8;
      if (os_log_type_enabled(qword_1ED6416C8, OS_LOG_TYPE_ERROR))
      {
        if (v124 >= 0x107F)
        {
          v95 = 4223;
        }

        else
        {
          v95 = v124;
        }

        v96 = (&IPC::Detail::messageDescriptions)[3 * v95];
        v97 = v3[7];
        *buf = 136315394;
        *&buf[4] = v96;
        *&buf[12] = 2048;
        *&buf[14] = v97;
        _os_log_error_impl(&dword_19D52D000, v87, OS_LOG_TYPE_ERROR, "Unhandled message %s to %llu", buf, 0x16u);
      }

      goto LABEL_123;
  }
}

WTF *WebKit::RTCDataChannelRemoteManager::didReceiveMessage(WebKit::RTCDataChannelRemoteManager *this, IPC::Connection *a2, IPC::Decoder *a3)
{
  v18 = *MEMORY[0x1E69E9840];
  v5 = *(a3 + 25);
  if (v5 > 0x399)
  {
    switch(v5)
    {
      case 0x39Au:
        result = IPC::Decoder::decode<std::tuple<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::RTCDataChannelLocalIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WebCore::RTCErrorDetailType,WTF::String>>(v14, a3);
        if (v16 == 1)
        {
          result = WebKit::RTCDataChannelRemoteManager::detectError(this, *v14, *&v14[8], v14[16], &v15);
          if (v16)
          {
            result = v15;
            v15 = 0;
            if (result)
            {
              if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
              {
                return WTF::StringImpl::destroy(result, v7);
              }
            }
          }
        }

        break;
      case 0x39Bu:
        result = IPC::Decoder::decode<std::tuple<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::RTCDataChannelLocalIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,BOOL,std::span<unsigned char const,18446744073709551615ul>>>(v14, a3);
        if (v17 == 1)
        {
          return WebKit::RTCDataChannelRemoteManager::receiveData(this, *v14, *&v14[8], v14[16], v15, v16);
        }

        break;
      case 0x39Cu:
        result = IPC::Decoder::decode<std::tuple<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::RTCDataChannelLocalIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,BOOL,std::span<unsigned char const,18446744073709551615ul>>>(v14, a3);
        if (v17 == 1)
        {
          return WebKit::RTCDataChannelRemoteManager::sendData(this, *v14, *&v14[8], v14[16]);
        }

        break;
      default:
LABEL_19:
        v8 = qword_1ED6416C8;
        if (os_log_type_enabled(qword_1ED6416C8, OS_LOG_TYPE_ERROR))
        {
          if (v5 >= 0x107F)
          {
            v11 = 4223;
          }

          else
          {
            v11 = v5;
          }

          v12 = (&IPC::Detail::messageDescriptions)[3 * v11];
          v13 = *(a3 + 7);
          *v14 = 136315394;
          *&v14[4] = v12;
          *&v14[12] = 2048;
          *&v14[14] = v13;
          _os_log_error_impl(&dword_19D52D000, v8, OS_LOG_TYPE_ERROR, "Unhandled message %s to %llu", v14, 0x16u);
        }

        v9 = *a3;
        v10 = *(a3 + 1);
        *a3 = 0;
        *(a3 + 1) = 0;
        result = *(a3 + 3);
        if (result && v10)
        {
          return (*(*result + 16))(result, v9);
        }

        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 0x397u:
        result = IPC::Decoder::decode<std::tuple<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::RTCDataChannelLocalIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,unsigned long long>>(v14, a3);
        if (v15 == 1)
        {
          return WebKit::RTCDataChannelRemoteManager::bufferedAmountIsDecreasing(this, *v14, *&v14[8], *&v14[16]);
        }

        break;
      case 0x398u:
        result = IPC::Decoder::decode<std::tuple<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::RTCDataChannelLocalIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WebCore::RTCDataChannelState>>(v14, a3);
        if (v15 == 1)
        {
          return WebKit::RTCDataChannelRemoteManager::changeReadyState(this, *v14, *&v14[8], v14[16]);
        }

        break;
      case 0x399u:
        result = IPC::Decoder::decode<std::tuple<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::RTCDataChannelLocalIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>>(v14, a3);
        if (v14[16] == 1)
        {
          return WebKit::RTCDataChannelRemoteManager::close(this, *v14, *&v14[8]);
        }

        return result;
      default:
        goto LABEL_19;
    }
  }

  return result;
}

atomic_uchar **WebKit::RTCDataChannelRemoteManagerProxy::didReceiveMessage(WebKit::RTCDataChannelRemoteManagerProxy *this, IPC::Connection *a2, IPC::Decoder *a3)
{
  v22 = *MEMORY[0x1E69E9840];
  v5 = (this + 8);
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
  v8 = *(a3 + 25);
  if (v8 > 0x393)
  {
    switch(v8)
    {
      case 0x394u:
        IPC::Decoder::decode<std::tuple<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::RTCDataChannelLocalIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WebCore::RTCErrorDetailType,WTF::String>>(v18, a3);
        if (v20 == 1)
        {
          WebKit::RTCDataChannelRemoteManagerProxy::detectError(this, *v18, *&v18[8], v18[16], &v19);
          if (v20)
          {
            v10 = v19;
            v19 = 0;
            if (v10)
            {
              if (atomic_fetch_add_explicit(v10, 0xFFFFFFFE, memory_order_relaxed) == 2)
              {
                WTF::StringImpl::destroy(v10, v9);
              }
            }
          }
        }

        break;
      case 0x395u:
        IPC::Decoder::decode<std::tuple<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::RTCDataChannelLocalIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,BOOL,std::span<unsigned char const,18446744073709551615ul>>>(v18, a3);
        if (v21 == 1)
        {
          WebKit::RTCDataChannelRemoteManagerProxy::receiveData(this, *v18, *&v18[8], v18[16], v19, v20);
        }

        break;
      case 0x396u:
        IPC::Decoder::decode<std::tuple<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::RTCDataChannelLocalIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,BOOL,std::span<unsigned char const,18446744073709551615ul>>>(v18, a3);
        if (v21 == 1)
        {
          WebKit::RTCDataChannelRemoteManagerProxy::sendData(this, *v18, *&v18[8], v18[16], v19, v20);
        }

        break;
      default:
LABEL_24:
        v11 = qword_1ED6416C8;
        if (os_log_type_enabled(qword_1ED6416C8, OS_LOG_TYPE_ERROR))
        {
          if (v8 >= 0x107F)
          {
            v15 = 4223;
          }

          else
          {
            v15 = v8;
          }

          v16 = (&IPC::Detail::messageDescriptions)[3 * v15];
          v17 = *(a3 + 7);
          *v18 = 136315394;
          *&v18[4] = v16;
          *&v18[12] = 2048;
          *&v18[14] = v17;
          _os_log_error_impl(&dword_19D52D000, v11, OS_LOG_TYPE_ERROR, "Unhandled message %s to %llu", v18, 0x16u);
        }

        v9 = *a3;
        v12 = *(a3 + 1);
        *a3 = 0;
        *(a3 + 1) = 0;
        v13 = *(a3 + 3);
        if (v13 && v12)
        {
          (*(*v13 + 16))(v13, v9);
        }

        return WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::WorkQueueMessageReceiver<(WTF::DestructionThread)0>,(WTF::DestructionThread)0>::deref(v5, v9);
    }
  }

  else
  {
    switch(v8)
    {
      case 0x391u:
        IPC::Decoder::decode<std::tuple<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::RTCDataChannelLocalIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,unsigned long long>>(v18, a3);
        if (v19 == 1)
        {
          WebKit::RTCDataChannelRemoteManagerProxy::bufferedAmountIsDecreasing(this, *v18, *&v18[8], *&v18[16]);
        }

        break;
      case 0x392u:
        IPC::Decoder::decode<std::tuple<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::RTCDataChannelLocalIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WebCore::RTCDataChannelState>>(v18, a3);
        if (v19 == 1)
        {
          WebKit::RTCDataChannelRemoteManagerProxy::changeReadyState(this, *v18, *&v18[8], v18[16]);
        }

        break;
      case 0x393u:
        IPC::Decoder::decode<std::tuple<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::RTCDataChannelLocalIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>>(v18, a3);
        if (v18[16] == 1)
        {
          WebKit::RTCDataChannelRemoteManagerProxy::close(this, *v18, *&v18[8]);
        }

        return WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::WorkQueueMessageReceiver<(WTF::DestructionThread)0>,(WTF::DestructionThread)0>::deref(v5, v9);
      default:
        goto LABEL_24;
    }
  }

  return WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::WorkQueueMessageReceiver<(WTF::DestructionThread)0>,(WTF::DestructionThread)0>::deref(v5, v9);
}

uint64_t WebKit::RemoteAdapter::didReceiveStreamMessage(WebKit::RemoteAdapter *this, atomic_uint *a2, IPC::Decoder *a3)
{
  v46 = *MEMORY[0x1E69E9840];
  v3 = *(*(this + 7) + 8);
  if (!v3)
  {
    __break(0xC471u);
    goto LABEL_51;
  }

  if ((*(v3 + 56) & 0x4000) == 0)
  {
    v5 = qword_1ED6416C8;
    if (os_log_type_enabled(qword_1ED6416C8, OS_LOG_TYPE_ERROR))
    {
      v29 = *(a3 + 25);
      if (v29 >= 0x107F)
      {
        v29 = 4223;
      }

      v30 = (&IPC::Detail::messageDescriptions)[3 * v29];
      *buf = 136315138;
      *&buf[4] = v30;
      _os_log_error_impl(&dword_19D52D000, v5, OS_LOG_TYPE_ERROR, "Message %s received by a disabled message receiver RemoteAdapter", buf, 0xCu);
    }

    v6 = *a3;
    v7 = *(a3 + 1);
    *a3 = 0;
    *(a3 + 1) = 0;
    result = *(a3 + 3);
    if (result)
    {
      if (v7)
      {
        return (*(*result + 16))(result, v6);
      }
    }

    return result;
  }

  atomic_fetch_add(this + 2, 1u);
  v10 = *(a3 + 25);
  if (v10 == 4016)
  {
    IPC::ArgumentCoder<WebKit::WebGPU::DeviceDescriptor,void>::decode(a3, v37);
    if ((v40 & 1) == 0)
    {
      v34 = *a3;
      v35 = *(a3 + 1);
      *a3 = 0;
      *(a3 + 1) = 0;
      v36 = *(a3 + 3);
      if (!v36 || !v35 || ((*(*v36 + 16))(v36, v34), (v40 & 1) == 0))
      {
LABEL_16:
        v11 = *a3;
        v12 = *(a3 + 1);
        *a3 = 0;
        *(a3 + 1) = 0;
        result = *(a3 + 3);
        if (result && v12)
        {
          result = (*(*result + 16))(result, v11);
        }

        goto LABEL_36;
      }
    }

    v14 = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::RemoteVideoFrameIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>(a3);
    if ((v15 & 1) == 0 || (v16 = v14, v17 = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::RemoteVideoFrameIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>(a3), (v15 & 1) == 0))
    {
      v21 = 0;
      buf[0] = 0;
      goto LABEL_20;
    }

    if (v40)
    {
      *&v18 = 0;
      *buf = *v37;
      v19 = v38;
      v38 = 0;
      v37[0] = 0;
      v37[1] = 0;
      *&buf[16] = v19;
      v20 = v39;
      v39 = v18;
      v42 = v20;
      v21 = 1;
      v43 = v16;
      v44 = v17;
LABEL_20:
      v45 = v21;
      if (v40)
      {
        WTF::Vector<WebCore::SpeechRecognitionAlternativeData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v39, v15);
        v24 = v37[1];
        if (v37[1])
        {
          v37[1] = 0;
          LODWORD(v38) = 0;
          WTF::fastFree(v24, v23);
        }

        v25 = v37[0];
        v37[0] = 0;
        if (v25 && atomic_fetch_add_explicit(v25, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v25, v23);
        }
      }

      if ((v21 & 1) == 0)
      {
        goto LABEL_16;
      }

      v26 = *(a3 + 8);
      if (v26)
      {
        atomic_fetch_add(a2 + 2, 1u);
        v27 = WTF::fastMalloc(0x18);
        *v27 = &unk_1F10EBD60;
        *(v27 + 1) = v26;
        *(v27 + 2) = a2;
        v37[0] = v27;
        WebKit::RemoteAdapter::requestDevice(this, buf, v43, v44, v37);
        result = v37[0];
        v37[0] = 0;
        if (result)
        {
          result = (*(*result + 8))(result);
        }

        if (v45)
        {
          WTF::Vector<WebCore::SpeechRecognitionAlternativeData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v42, v11);
          v28 = *&buf[8];
          if (*&buf[8])
          {
            *&buf[8] = 0;
            *&buf[16] = 0;
            WTF::fastFree(v28, v11);
          }

          result = *buf;
          *buf = 0;
          if (result && atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            result = WTF::StringImpl::destroy(result, v11);
          }
        }

        goto LABEL_36;
      }

LABEL_52:
      result = 157;
      __break(0xC471u);
      return result;
    }

LABEL_51:
    __break(1u);
    goto LABEL_52;
  }

  if (v10 != 925)
  {
    v22 = qword_1ED6416C8;
    if (os_log_type_enabled(qword_1ED6416C8, OS_LOG_TYPE_ERROR))
    {
      if (v10 >= 0x107F)
      {
        v31 = 4223;
      }

      else
      {
        v31 = v10;
      }

      v32 = (&IPC::Detail::messageDescriptions)[3 * v31];
      v33 = *(a3 + 7);
      *buf = 136315394;
      *&buf[4] = v32;
      *&buf[12] = 2048;
      *&buf[14] = v33;
      _os_log_error_impl(&dword_19D52D000, v22, OS_LOG_TYPE_ERROR, "Unhandled stream message %s to %llu", buf, 0x16u);
    }

    goto LABEL_16;
  }

  result = WebKit::RemoteAdapter::destruct(this);
LABEL_36:
  if (atomic_fetch_add(this + 2, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, this + 2);
    return (*(*this + 8))(this, v11, v12);
  }

  return result;
}

void WebKit::RemoteAudioMediaStreamTrackRendererInternalUnitManager::didReceiveMessage(WebKit::RemoteAudioMediaStreamTrackRendererInternalUnitManager *this, atomic_ullong *a2, IPC::Decoder *a3)
{
  v65 = *MEMORY[0x1E69E9840];
  WebKit::RemoteAudioDestinationManager::sharedPreferencesForWebProcess(this, v55);
  if (v55[24] != 1 || (v55[12] & 2) == 0)
  {
    v6 = qword_1ED6416C8;
    if (os_log_type_enabled(qword_1ED6416C8, OS_LOG_TYPE_ERROR))
    {
      v15 = *(a3 + 25);
      if (v15 >= 0x107F)
      {
        v15 = 4223;
      }

      v16 = (&IPC::Detail::messageDescriptions)[3 * v15];
      *buf = 136315138;
      *&buf[4] = v16;
      _os_log_error_impl(&dword_19D52D000, v6, OS_LOG_TYPE_ERROR, "Message %s received by a disabled message receiver RemoteAudioMediaStreamTrackRendererInternalUnitManager", buf, 0xCu);
    }

    v7 = *a3;
    v8 = *(a3 + 1);
    *a3 = 0;
    *(a3 + 1) = 0;
    v9 = *(a3 + 3);
    if (v9)
    {
      if (v8)
      {
        (*(*v9 + 16))(v9, v7);
      }
    }

    return;
  }

  WebKit::RemoteAudioMediaStreamTrackRendererInternalUnitManager::ref(this);
  v10 = *(a3 + 25);
  if (v10 <= 0x3A8)
  {
    if (v10 != 935)
    {
      if (v10 == 936)
      {
        v13 = IPC::Decoder::decode<std::tuple<WTF::ObjectIdentifierGeneric<WebKit::AudioMediaStreamTrackRendererInternalUnitIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>(a3);
        if (v14)
        {
          WebKit::RemoteAudioMediaStreamTrackRendererInternalUnitManager::deleteUnit(this, v13);
        }

        goto LABEL_55;
      }

LABEL_42:
      v31 = qword_1ED6416C8;
      if (os_log_type_enabled(qword_1ED6416C8, OS_LOG_TYPE_ERROR))
      {
        if (v10 >= 0x107F)
        {
          v37 = 4223;
        }

        else
        {
          v37 = v10;
        }

        v38 = (&IPC::Detail::messageDescriptions)[3 * v37];
        v39 = *(a3 + 7);
        *buf = 136315394;
        *&buf[4] = v38;
        *&buf[12] = 2048;
        *&buf[14] = v39;
        _os_log_error_impl(&dword_19D52D000, v31, OS_LOG_TYPE_ERROR, "Unhandled message %s to %llu", buf, 0x16u);
      }

      goto LABEL_43;
    }

    v23 = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::RemoteVideoFrameIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>(a3);
    if ((v24 & 1) == 0 || (v25 = v23, IPC::ArgumentCoder<WTF::String,void>::decode<IPC::Decoder>(a3, &v56), (v57 & 1) == 0) && ((v52 = *a3, v53 = *(a3 + 1), *a3 = 0, *(a3 + 1) = 0, (v54 = *(a3 + 3)) == 0) || !v53 || ((*(*v54 + 16))(v54, v52), (v57 & 1) == 0)))
    {
LABEL_43:
      v32 = *a3;
      v33 = *(a3 + 1);
      *a3 = 0;
      *(a3 + 1) = 0;
      v34 = *(a3 + 3);
      if (v34 && v33)
      {
        (*(*v34 + 16))(v34, v32);
      }

      goto LABEL_55;
    }

    v26 = v56;
    *buf = v25;
    *&buf[8] = v56;
    buf[16] = 1;
    v27 = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(a3);
    if (v17)
    {
      v28 = v27;
      while (1)
      {
        v29 = *a2;
        if ((*a2 & 1) == 0)
        {
          break;
        }

        v30 = *a2;
        atomic_compare_exchange_strong_explicit(a2, &v30, v29 + 2, memory_order_relaxed, memory_order_relaxed);
        if (v30 == v29)
        {
          goto LABEL_47;
        }
      }

      WTF::ThreadSafeWeakPtrControlBlock::strongRef(*a2);
LABEL_47:
      v35 = WTF::fastMalloc(0x18);
      *v35 = &unk_1F10EBD88;
      *(v35 + 1) = v28;
      *(v35 + 2) = a2;
      v56 = v35;
      WebKit::RemoteAudioMediaStreamTrackRendererInternalUnitManager::createUnit(this, v25, &buf[8], &v56);
      v36 = v56;
      v56 = 0;
      if (v36)
      {
        (*(*v36 + 8))(v36);
      }

      if ((buf[16] & 1) == 0)
      {
        goto LABEL_55;
      }

      v26 = *&buf[8];
    }

    *&buf[8] = 0;
    if (!v26 || atomic_fetch_add_explicit(v26, 0xFFFFFFFE, memory_order_relaxed) != 2)
    {
      goto LABEL_55;
    }

    v18 = v26;
LABEL_54:
    WTF::StringImpl::destroy(v18, v17);
    goto LABEL_55;
  }

  if (v10 == 937)
  {
    IPC::ArgumentCoder<std::tuple<WTF::String>,void>::decode<IPC::Decoder>(a3, buf);
    if ((buf[8] & 1) == 0)
    {
      v43 = *a3;
      v44 = *(a3 + 1);
      *a3 = 0;
      *(a3 + 1) = 0;
      v45 = *(a3 + 3);
      if (!v45)
      {
        goto LABEL_55;
      }

      if (!v44)
      {
        goto LABEL_55;
      }

      (*(*v45 + 16))(v45, v43);
      if ((buf[8] & 1) == 0)
      {
        goto LABEL_55;
      }
    }

    WebKit::RemoteAudioMediaStreamTrackRendererInternalUnitManager::setLastDeviceUsed(this, buf);
    if ((buf[8] & 1) == 0)
    {
      goto LABEL_55;
    }

    v18 = *buf;
    *buf = 0;
    if (!v18 || atomic_fetch_add_explicit(v18, 0xFFFFFFFE, memory_order_relaxed) != 2)
    {
      goto LABEL_55;
    }

    goto LABEL_54;
  }

  if (v10 != 938)
  {
    if (v10 == 939)
    {
      v11 = IPC::Decoder::decode<std::tuple<WTF::ObjectIdentifierGeneric<WebKit::AudioMediaStreamTrackRendererInternalUnitIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>(a3);
      if (v12)
      {
        WebKit::RemoteAudioMediaStreamTrackRendererInternalUnitManager::stopUnit(this, v11);
      }

      goto LABEL_55;
    }

    goto LABEL_42;
  }

  v19 = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::RemoteVideoFrameIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>(a3);
  if (v20)
  {
    v21 = v19;
    IPC::ArgumentCoder<WebKit::ConsumerSharedCARingBufferHandle,void>::decode(a3, &v56);
    if (v58 & 1) != 0 || (v49 = *a3, v50 = *(a3 + 1), *a3 = 0, *(a3 + 1) = 0, (v51 = *(a3 + 3)) != 0) && v50 && ((*(*v51 + 16))(v51, v49), (v58))
    {
      IPC::ArgumentCoder<IPC::Semaphore,void>::decode(a3, v59);
      if (v61 & 1) != 0 || (v40 = *a3, v41 = *(a3 + 1), *a3 = 0, *(a3 + 1) = 0, (v42 = *(a3 + 3)) != 0) && v41 && ((*(*v42 + 16))(v42, v40), (v61))
      {
        if ((v58 & 1) == 0)
        {
          __break(1u);
        }

        *buf = v21;
        WTF::MachSendRight::MachSendRight();
        *&buf[16] = v57;
        WTF::MachSendRight::MachSendRight();
        v22 = v60;
        v60 = 0;
        v63[1] = v22;
        v64 = 1;
        if (v61)
        {
          IPC::Semaphore::destroy(v59);
          WTF::MachSendRight::~MachSendRight(v59);
        }
      }

      else
      {
        buf[0] = 0;
        v64 = 0;
      }

      if (v58)
      {
        WTF::MachSendRight::~MachSendRight(&v56);
      }
    }

    else
    {
      buf[0] = 0;
      v64 = 0;
    }

    if (v64)
    {
      goto LABEL_33;
    }
  }

  else
  {
    buf[0] = 0;
    v64 = 0;
  }

  v46 = *a3;
  v47 = *(a3 + 1);
  *a3 = 0;
  *(a3 + 1) = 0;
  v48 = *(a3 + 3);
  if (v48)
  {
    if (v47)
    {
      (*(*v48 + 16))(v48, v46);
      if (v64)
      {
LABEL_33:
        WebKit::RemoteAudioMediaStreamTrackRendererInternalUnitManager::startUnit(this, *buf, &buf[8], v63);
        if (v64)
        {
          IPC::Semaphore::destroy(v63);
          WTF::MachSendRight::~MachSendRight(v63);
          WTF::MachSendRight::~MachSendRight(&buf[8]);
        }
      }
    }
  }

LABEL_55:
  if (this)
  {
    WebKit::RemoteAudioMediaStreamTrackRendererInternalUnitManager::deref(this);
  }
}

void WebKit::RTCDataChannelRemoteManager::~RTCDataChannelRemoteManager(WebKit::RTCDataChannelRemoteManager *this, void *a2)
{
  WebKit::RTCDataChannelRemoteManager::~RTCDataChannelRemoteManager(this, a2);

  JUMPOUT(0x19EB14CF0);
}

{
  v3 = *(this + 7);
  if (v3)
  {
    v4 = *(v3 - 4);
    if (v4)
    {
      v5 = (v3 + 16);
      do
      {
        if (*(v5 - 2) != -1)
        {
          v6 = *v5;
          *v5 = 0;
          if (v6)
          {
            if (atomic_fetch_add(v6, 0xFFFFFFFF) == 1)
            {
              atomic_store(1u, v6);
              WTF::fastFree(v6, a2);
            }
          }
        }

        v5 += 8;
        --v4;
      }

      while (v4);
    }

    WTF::fastFree((v3 - 16), a2);
  }

  v7 = *(this + 6);
  if (v7)
  {
    v8 = *(v7 - 4);
    if (v8)
    {
      v9 = (v7 + 8);
      do
      {
        if (*(v9 - 1) != -1)
        {
          v10 = *v9;
          *v9 = 0;
          if (v10)
          {
            (*(*v10 + 8))(v10);
          }
        }

        v9 += 2;
        --v8;
      }

      while (v8);
    }

    WTF::fastFree((v7 - 16), a2);
  }

  v11 = *(this + 5);
  *(this + 5) = 0;
  if (v11)
  {
    WTF::ThreadSafeRefCounted<WebCore::RTCDataChannelRemoteSourceConnection,(WTF::DestructionThread)1>::deref((v11 + 8));
  }

  v12 = *(this + 4);
  *(this + 4) = 0;
  if (v12)
  {
    WTF::ThreadSafeRefCounted<WebCore::RTCDataChannelRemoteHandlerConnection,(WTF::DestructionThread)1>::deref((v12 + 8));
  }

  v13 = *(this + 3);
  *(this + 3) = 0;
  if (v13)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v13);
  }

  v14 = *(this + 2);
  *(this + 2) = 0;
  if (v14)
  {
    (*(*v14 + 40))(v14);
  }

  *this = &unk_1F10EA5E0;
  WTF::WeakPtrFactory<WebPushD::PushServiceConnection,WTF::DefaultWeakPtrImpl>::~WeakPtrFactory(this + 1, a2);
}

void IPC::WorkQueueMessageReceiver<(WTF::DestructionThread)0>::ref(uint64_t a1)
{
  while (1)
  {
    v1 = *(a1 + 8);
    if ((v1 & 1) == 0)
    {
      break;
    }

    v2 = *(a1 + 8);
    atomic_compare_exchange_strong_explicit((a1 + 8), &v2, v1 + 2, memory_order_relaxed, memory_order_relaxed);
    if (v2 == v1)
    {
      return;
    }
  }

  WTF::ThreadSafeWeakPtrControlBlock::strongRef(*(a1 + 8));
}

void WebKit::RTCDataChannelRemoteManagerProxy::~RTCDataChannelRemoteManagerProxy(WebKit::RTCDataChannelRemoteManagerProxy *this, void *a2)
{
  v3 = *(this + 3);
  if (v3)
  {
    WTF::fastFree((v3 - 16), a2);
  }

  v4 = *(this + 2);
  *(this + 2) = 0;
  if (v4)
  {
    (*(*v4 + 40))(v4);
  }
}

{
  v3 = *(this + 3);
  if (v3)
  {
    WTF::fastFree((v3 - 16), a2);
  }

  v4 = *(this + 2);
  *(this + 2) = 0;
  if (v4)
  {
    (*(*v4 + 40))(v4);
  }

  WTF::fastFree(this, a2);
}

atomic_uint *WTF::ThreadSafeRefCounted<WebCore::RTCDataChannelRemoteSourceConnection,(WTF::DestructionThread)1>::deref(atomic_uint *result)
{
  add = atomic_fetch_add(result, 0xFFFFFFFF);
  if (add == 1)
  {
    v2 = result;
    atomic_store(add, result);
    v3 = WTF::fastMalloc(0x10);
    *v3 = &unk_1F10EBDF8;
    *(v3 + 1) = v2;
    v4 = v3;
    WTF::ensureOnMainThread();
    result = v4;
    if (v4)
    {
      return (*(*v4 + 8))(v4);
    }
  }

  return result;
}

atomic_uint *WTF::ThreadSafeRefCounted<WebCore::RTCDataChannelRemoteHandlerConnection,(WTF::DestructionThread)1>::deref(atomic_uint *result)
{
  add = atomic_fetch_add(result, 0xFFFFFFFF);
  if (add == 1)
  {
    v2 = result;
    atomic_store(add, result);
    v3 = WTF::fastMalloc(0x10);
    *v3 = &unk_1F10EBE20;
    *(v3 + 1) = v2;
    v4 = v3;
    WTF::ensureOnMainThread();
    result = v4;
    if (v4)
    {
      return (*(*v4 + 8))(v4);
    }
  }

  return result;
}

IPC::Decoder *IPC::Decoder::decode<std::tuple<std::span<unsigned char const,18446744073709551615ul>>>@<X0>(IPC::Decoder *a1@<X0>, uint64_t a2@<X8>)
{
  result = IPC::Decoder::decode<std::span<unsigned char const,18446744073709551615ul>>(a1, &v6);
  v5 = v7;
  if (v7 == 1)
  {
    *a2 = v6;
  }

  else
  {
    *a2 = 0;
    result = IPC::Decoder::markInvalid(a1);
    v5 = 0;
  }

  *(a2 + 16) = v5;
  return result;
}

void *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages23NetworkTransportSession12SendDatagramENS2_10ConnectionEN6WebKit23NetworkTransportSessionES9_FvNSt3__14spanIKhLm18446744073709551615EEEONS_17CompletionHandlerIFvONSA_8optionalIN7WebCore9ExceptionEEEEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJSJ_EED1Ev(void *a1)
{
  *a1 = &unk_1F10EB9A0;
  v2 = a1[2];
  a1[2] = 0;
  if (v2)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v2);
  }

  return a1;
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages23NetworkTransportSession12SendDatagramENS2_10ConnectionEN6WebKit23NetworkTransportSessionES9_FvNSt3__14spanIKhLm18446744073709551615EEEONS_17CompletionHandlerIFvONSA_8optionalIN7WebCore9ExceptionEEEEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJSJ_EED0Ev(WTF *this, void *a2)
{
  *this = &unk_1F10EB9A0;
  v3 = *(this + 2);
  *(this + 2) = 0;
  if (v3)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v3);
  }

  return WTF::fastFree(this, a2);
}

IPC::Encoder *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages23NetworkTransportSession12SendDatagramENS2_10ConnectionEN6WebKit23NetworkTransportSessionES9_FvNSt3__14spanIKhLm18446744073709551615EEEONS_17CompletionHandlerIFvONSA_8optionalIN7WebCore9ExceptionEEEEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJSJ_EE4callESJ_(uint64_t a1, void *a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  v5 = IPC::Encoder::operator new(0x238, a2);
  *v5 = 3456;
  *(v5 + 2) = 0;
  *(v5 + 3) = 0;
  *(v5 + 1) = v4;
  *(v5 + 68) = 0;
  *(v5 + 70) = 0;
  *(v5 + 69) = 0;
  IPC::Encoder::encodeHeader(v5);
  v10 = v5;
  IPC::ArgumentCoder<std::optional<WebCore::Exception>,void>::encode<IPC::Encoder,std::optional<WebCore::Exception>>(v5, a2);
  IPC::Connection::sendMessageImpl(v3, &v10, 0, 0);
  result = v10;
  v10 = 0;
  if (result)
  {
    IPC::Encoder::~Encoder(result, v6);
    return bmalloc::api::tzoneFree(v8, v9);
  }

  return result;
}

void *IPC::ArgumentCoder<std::optional<WebCore::Exception>,void>::encode<IPC::Encoder,std::optional<WebCore::Exception>>(IPC::Encoder *a1, uint64_t a2)
{
  if (*(a2 + 16))
  {
    v6 = 1;
    IPC::Encoder::operator<<<BOOL>(a1, &v6);
    if (*(a2 + 16))
    {
      IPC::ArgumentCoder<BOOL,void>::encode<IPC::Encoder>(a1, *a2);
      return IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(a1, (a2 + 8));
    }

    else
    {
      v5 = std::__throw_bad_optional_access[abi:sn200100]();
      return _ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages23NetworkTransportSession34CreateOutgoingUnidirectionalStreamENS2_10ConnectionEN6WebKit23NetworkTransportSessionES9_FvONS_17CompletionHandlerIFvNSt3__18optionalINS_23ObjectIdentifierGenericIN7WebCore32WebTransportStreamIdentifierTypeENS_38ObjectIdentifierMainThreadAccessTraitsIyEEyEEEEEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJSJ_EED1Ev(v5);
    }
  }

  else
  {
    v7 = 0;
    return IPC::Encoder::operator<<<BOOL>(a1, &v7);
  }
}

void *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages23NetworkTransportSession34CreateOutgoingUnidirectionalStreamENS2_10ConnectionEN6WebKit23NetworkTransportSessionES9_FvONS_17CompletionHandlerIFvNSt3__18optionalINS_23ObjectIdentifierGenericIN7WebCore32WebTransportStreamIdentifierTypeENS_38ObjectIdentifierMainThreadAccessTraitsIyEEyEEEEEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJSJ_EED1Ev(void *a1)
{
  *a1 = &unk_1F10EB9C8;
  v2 = a1[2];
  a1[2] = 0;
  if (v2)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v2);
  }

  return a1;
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages23NetworkTransportSession34CreateOutgoingUnidirectionalStreamENS2_10ConnectionEN6WebKit23NetworkTransportSessionES9_FvONS_17CompletionHandlerIFvNSt3__18optionalINS_23ObjectIdentifierGenericIN7WebCore32WebTransportStreamIdentifierTypeENS_38ObjectIdentifierMainThreadAccessTraitsIyEEyEEEEEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJSJ_EED0Ev(WTF *this, void *a2)
{
  *this = &unk_1F10EB9C8;
  v3 = *(this + 2);
  *(this + 2) = 0;
  if (v3)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v3);
  }

  return WTF::fastFree(this, a2);
}

IPC::Encoder *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages23NetworkTransportSession34CreateOutgoingUnidirectionalStreamENS2_10ConnectionEN6WebKit23NetworkTransportSessionES9_FvONS_17CompletionHandlerIFvNSt3__18optionalINS_23ObjectIdentifierGenericIN7WebCore32WebTransportStreamIdentifierTypeENS_38ObjectIdentifierMainThreadAccessTraitsIyEEyEEEEEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJSJ_EE4callESJ_(uint64_t a1, void *a2, uint64_t a3)
{
  v10[0] = a2;
  v10[1] = a3;
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  v5 = IPC::Encoder::operator new(0x238, a2);
  *v5 = 3455;
  *(v5 + 2) = 0;
  *(v5 + 3) = 0;
  *(v5 + 1) = v4;
  *(v5 + 68) = 0;
  *(v5 + 70) = 0;
  *(v5 + 69) = 0;
  IPC::Encoder::encodeHeader(v5);
  v11 = v5;
  IPC::ArgumentCoder<std::optional<unsigned long long>,void>::encode<IPC::Encoder,std::optional<unsigned long long>>(v5, v10);
  IPC::Connection::sendMessageImpl(v3, &v11, 0, 0);
  result = v11;
  v11 = 0;
  if (result)
  {
    IPC::Encoder::~Encoder(result, v6);
    return bmalloc::api::tzoneFree(v8, v9);
  }

  return result;
}

void *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages23NetworkTransportSession25CreateBidirectionalStreamENS2_10ConnectionEN6WebKit23NetworkTransportSessionES9_FvONS_17CompletionHandlerIFvNSt3__18optionalINS_23ObjectIdentifierGenericIN7WebCore32WebTransportStreamIdentifierTypeENS_38ObjectIdentifierMainThreadAccessTraitsIyEEyEEEEEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJSJ_EED1Ev(void *a1)
{
  *a1 = &unk_1F10EB9F0;
  v2 = a1[2];
  a1[2] = 0;
  if (v2)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v2);
  }

  return a1;
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages23NetworkTransportSession25CreateBidirectionalStreamENS2_10ConnectionEN6WebKit23NetworkTransportSessionES9_FvONS_17CompletionHandlerIFvNSt3__18optionalINS_23ObjectIdentifierGenericIN7WebCore32WebTransportStreamIdentifierTypeENS_38ObjectIdentifierMainThreadAccessTraitsIyEEyEEEEEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJSJ_EED0Ev(WTF *this, void *a2)
{
  *this = &unk_1F10EB9F0;
  v3 = *(this + 2);
  *(this + 2) = 0;
  if (v3)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v3);
  }

  return WTF::fastFree(this, a2);
}

IPC::Encoder *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages23NetworkTransportSession25CreateBidirectionalStreamENS2_10ConnectionEN6WebKit23NetworkTransportSessionES9_FvONS_17CompletionHandlerIFvNSt3__18optionalINS_23ObjectIdentifierGenericIN7WebCore32WebTransportStreamIdentifierTypeENS_38ObjectIdentifierMainThreadAccessTraitsIyEEyEEEEEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJSJ_EE4callESJ_(uint64_t a1, void *a2, uint64_t a3)
{
  v10[0] = a2;
  v10[1] = a3;
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  v5 = IPC::Encoder::operator new(0x238, a2);
  *v5 = 3454;
  *(v5 + 2) = 0;
  *(v5 + 3) = 0;
  *(v5 + 1) = v4;
  *(v5 + 68) = 0;
  *(v5 + 70) = 0;
  *(v5 + 69) = 0;
  IPC::Encoder::encodeHeader(v5);
  v11 = v5;
  IPC::ArgumentCoder<std::optional<unsigned long long>,void>::encode<IPC::Encoder,std::optional<unsigned long long>>(v5, v10);
  IPC::Connection::sendMessageImpl(v3, &v11, 0, 0);
  result = v11;
  v11 = 0;
  if (result)
  {
    IPC::Encoder::~Encoder(result, v6);
    return bmalloc::api::tzoneFree(v8, v9);
  }

  return result;
}

void *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages23NetworkTransportSession15StreamSendBytesENS2_10ConnectionEN6WebKit23NetworkTransportSessionES9_FvNS_23ObjectIdentifierGenericIN7WebCore32WebTransportStreamIdentifierTypeENS_38ObjectIdentifierMainThreadAccessTraitsIyEEyEENSt3__14spanIKhLm18446744073709551615EEEbONS_17CompletionHandlerIFvONSG_8optionalINSB_9ExceptionEEEEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJSO_EED1Ev(void *a1)
{
  *a1 = &unk_1F10EBA18;
  v2 = a1[2];
  a1[2] = 0;
  if (v2)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v2);
  }

  return a1;
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages23NetworkTransportSession15StreamSendBytesENS2_10ConnectionEN6WebKit23NetworkTransportSessionES9_FvNS_23ObjectIdentifierGenericIN7WebCore32WebTransportStreamIdentifierTypeENS_38ObjectIdentifierMainThreadAccessTraitsIyEEyEENSt3__14spanIKhLm18446744073709551615EEEbONS_17CompletionHandlerIFvONSG_8optionalINSB_9ExceptionEEEEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJSO_EED0Ev(WTF *this, void *a2)
{
  *this = &unk_1F10EBA18;
  v3 = *(this + 2);
  *(this + 2) = 0;
  if (v3)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v3);
  }

  return WTF::fastFree(this, a2);
}

IPC::Encoder *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages23NetworkTransportSession15StreamSendBytesENS2_10ConnectionEN6WebKit23NetworkTransportSessionES9_FvNS_23ObjectIdentifierGenericIN7WebCore32WebTransportStreamIdentifierTypeENS_38ObjectIdentifierMainThreadAccessTraitsIyEEyEENSt3__14spanIKhLm18446744073709551615EEEbONS_17CompletionHandlerIFvONSG_8optionalINSB_9ExceptionEEEEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJSO_EE4callESO_(uint64_t a1, void *a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  v5 = IPC::Encoder::operator new(0x238, a2);
  *v5 = 3457;
  *(v5 + 2) = 0;
  *(v5 + 3) = 0;
  *(v5 + 1) = v4;
  *(v5 + 68) = 0;
  *(v5 + 70) = 0;
  *(v5 + 69) = 0;
  IPC::Encoder::encodeHeader(v5);
  v10 = v5;
  IPC::ArgumentCoder<std::optional<WebCore::Exception>,void>::encode<IPC::Encoder,std::optional<WebCore::Exception>>(v5, a2);
  IPC::Connection::sendMessageImpl(v3, &v10, 0, 0);
  result = v10;
  v10 = 0;
  if (result)
  {
    IPC::Encoder::~Encoder(result, v6);
    return bmalloc::api::tzoneFree(v8, v9);
  }

  return result;
}

uint64_t IPC::Decoder::decode<std::tuple<WTF::ObjectIdentifierGeneric<WebCore::WebTransportStreamIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,std::optional<unsigned long long>>>(uint64_t a1, uint64_t *a2)
{
  v4 = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::RemoteVideoFrameIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>(a2);
  if ((v5 & 1) != 0 && (v6 = v4, result = IPC::Decoder::decode<std::optional<unsigned long long>>(a2, &v12), v8 = v13, v13 == 1))
  {
    *a1 = v6;
    *(a1 + 8) = v12;
    *(a1 + 24) = v8;
  }

  else
  {
    *a1 = 0;
    *(a1 + 24) = 0;
    v9 = a2[1];
    *a2 = 0;
    a2[1] = 0;
    result = a2[3];
    if (result)
    {
      v10 = v9 == 0;
    }

    else
    {
      v10 = 1;
    }

    if (!v10)
    {
      v11 = *(*result + 16);

      return v11();
    }
  }

  return result;
}

WTF::StringImpl *IPC::ArgumentCoder<std::tuple<WTF::String,BOOL>,void>::decode<IPC::Decoder>@<X0>(IPC::Decoder *a1@<X0>, _BYTE *a2@<X8>)
{
  IPC::ArgumentCoder<WTF::String,void>::decode<IPC::Decoder>(a1, &v9);
  if (v10 & 1) != 0 || ((v6 = *a1, v7 = *(a1 + 1), *a1 = 0, *(a1 + 1) = 0, (result = *(a1 + 3)) != 0) ? (v8 = v7 == 0) : (v8 = 1), !v8 && (result = (*(*result + 16))(result, v6), (v10)))
  {
    result = IPC::ArgumentCoder<std::tuple<WTF::String,BOOL>,void>::decode<IPC::Decoder,WTF::String>(a1, &v9, a2);
    if (v10)
    {
      result = v9;
      v9 = 0;
      if (result)
      {
        if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          return WTF::StringImpl::destroy(result, v5);
        }
      }
    }
  }

  else
  {
    *a2 = 0;
    a2[16] = 0;
  }

  return result;
}

uint64_t *IPC::ArgumentCoder<std::tuple<WTF::String,BOOL>,void>::decode<IPC::Decoder,WTF::String>@<X0>(uint64_t *result@<X0>, uint64_t *a2@<X1>, _BYTE *a3@<X8>)
{
  v4 = result[1];
  v5 = result[2];
  v6 = *result;
  if (v4 > &v5[-*result])
  {
    result[2] = (v5 + 1);
    if (!v5)
    {
      v12 = a3;
      v13 = result;
      goto LABEL_11;
    }

    v7 = *v5;
    if (v7 >= 2)
    {
      v12 = a3;
      v13 = result;
      goto LABEL_15;
    }

    if (a2[1])
    {
      v8 = *a2;
      *a2 = 0;
      *a3 = v8;
      a3[8] = v7;
      v9 = 1;
      goto LABEL_6;
    }

    __break(1u);
  }

  v12 = a3;
  v13 = result;
  *result = 0;
  result[1] = 0;
  v10 = result[3];
  if (v10)
  {
    if (v4)
    {
      (*(*v10 + 16))(v10);
      v6 = *v13;
      v4 = v13[1];
      goto LABEL_11;
    }
  }

  else
  {
    v4 = 0;
  }

  v6 = 0;
LABEL_11:
  *v13 = 0;
  v13[1] = 0;
  v11 = v13[3];
  if (!v11)
  {
    v4 = 0;
LABEL_13:
    v6 = 0;
    goto LABEL_15;
  }

  if (!v4)
  {
    goto LABEL_13;
  }

  (*(*v11 + 16))(v11, v6);
  v6 = *v13;
  v4 = v13[1];
LABEL_15:
  *v13 = 0;
  v13[1] = 0;
  result = v13[3];
  if (result && v4)
  {
    result = (*(*result + 16))(result, v6);
  }

  v9 = 0;
  a3 = v12;
  *v12 = 0;
LABEL_6:
  a3[16] = v9;
  return result;
}

void *_ZN3WTF6Detail15CallableWrapperIZN3IPC43handleMessageAsyncWithoutUsingIPCConnectionIN8Messages20PushClientConnection39SetPushAndNotificationsEnabledForOriginEN8WebPushD20PushClientConnectionES8_FvRKNS_6StringEbONS_17CompletionHandlerIFvvEEEEEEvRNS2_7DecoderEONS_8FunctionIFvONS_9UniqueRefINS2_7EncoderEEEEEEPT0_MT1_T2_EUlDpOT_E_vJEED1Ev(void *a1)
{
  *a1 = &unk_1F10EBA40;
  v2 = a1[3];
  a1[3] = 0;
  if (v2)
  {
    if (v2[4] == 1)
    {
      (*(*v2 + 24))(v2);
    }

    else
    {
      --v2[4];
    }
  }

  v3 = a1[2];
  a1[2] = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  return a1;
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC43handleMessageAsyncWithoutUsingIPCConnectionIN8Messages20PushClientConnection39SetPushAndNotificationsEnabledForOriginEN8WebPushD20PushClientConnectionES8_FvRKNS_6StringEbONS_17CompletionHandlerIFvvEEEEEEvRNS2_7DecoderEONS_8FunctionIFvONS_9UniqueRefINS2_7EncoderEEEEEEPT0_MT1_T2_EUlDpOT_E_vJEED0Ev(WTF *this, void *a2)
{
  *this = &unk_1F10EBA40;
  v3 = *(this + 3);
  *(this + 3) = 0;
  if (v3)
  {
    if (v3[4] == 1)
    {
      (*(*v3 + 24))(v3);
    }

    else
    {
      --v3[4];
    }
  }

  v4 = *(this + 2);
  *(this + 2) = 0;
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }

  return WTF::fastFree(this, a2);
}

IPC::Encoder *_ZN3WTF6Detail15CallableWrapperIZN3IPC43handleMessageAsyncWithoutUsingIPCConnectionIN8Messages20PushClientConnection39SetPushAndNotificationsEnabledForOriginEN8WebPushD20PushClientConnectionES8_FvRKNS_6StringEbONS_17CompletionHandlerIFvvEEEEEEvRNS2_7DecoderEONS_8FunctionIFvONS_9UniqueRefINS2_7EncoderEEEEEEPT0_MT1_T2_EUlDpOT_E_vJEE4callEv(uint64_t a1, void *a2)
{
  v3 = IPC::Encoder::operator new(0x238, a2);
  v4 = *(a1 + 8);
  *v3 = 3479;
  *(v3 + 1) = v4;
  *(v3 + 2) = 0;
  *(v3 + 3) = 0;
  *(v3 + 69) = 0;
  *(v3 + 70) = 0;
  *(v3 + 68) = 0;
  IPC::Encoder::encodeHeader(v3);
  v9 = v3;
  (*(**(a1 + 16) + 16))(*(a1 + 16), &v9);
  result = v9;
  v9 = 0;
  if (result)
  {
    IPC::Encoder::~Encoder(result, v5);
    return bmalloc::api::tzoneFree(v7, v8);
  }

  return result;
}

void *_ZN3WTF6Detail15CallableWrapperIZN3IPC43handleMessageAsyncWithoutUsingIPCConnectionIN8Messages20PushClientConnection21GetPendingPushMessageEN8WebPushD20PushClientConnectionES8_FvONS_17CompletionHandlerIFvRKNSt3__18optionalIN6WebKit14WebPushMessageEEEEEEEEEvRNS2_7DecoderEONS_8FunctionIFvONS_9UniqueRefINS2_7EncoderEEEEEEPT0_MT1_T2_EUlDpOT_E_vJSG_EED1Ev(void *a1)
{
  *a1 = &unk_1F10EBA68;
  v2 = a1[3];
  a1[3] = 0;
  if (v2)
  {
    if (v2[4] == 1)
    {
      (*(*v2 + 24))(v2);
    }

    else
    {
      --v2[4];
    }
  }

  v3 = a1[2];
  a1[2] = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  return a1;
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC43handleMessageAsyncWithoutUsingIPCConnectionIN8Messages20PushClientConnection21GetPendingPushMessageEN8WebPushD20PushClientConnectionES8_FvONS_17CompletionHandlerIFvRKNSt3__18optionalIN6WebKit14WebPushMessageEEEEEEEEEvRNS2_7DecoderEONS_8FunctionIFvONS_9UniqueRefINS2_7EncoderEEEEEEPT0_MT1_T2_EUlDpOT_E_vJSG_EED0Ev(WTF *this, void *a2)
{
  *this = &unk_1F10EBA68;
  v3 = *(this + 3);
  *(this + 3) = 0;
  if (v3)
  {
    if (v3[4] == 1)
    {
      (*(*v3 + 24))(v3);
    }

    else
    {
      --v3[4];
    }
  }

  v4 = *(this + 2);
  *(this + 2) = 0;
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }

  return WTF::fastFree(this, a2);
}

IPC::Encoder *_ZN3WTF6Detail15CallableWrapperIZN3IPC43handleMessageAsyncWithoutUsingIPCConnectionIN8Messages20PushClientConnection21GetPendingPushMessageEN8WebPushD20PushClientConnectionES8_FvONS_17CompletionHandlerIFvRKNSt3__18optionalIN6WebKit14WebPushMessageEEEEEEEEEvRNS2_7DecoderEONS_8FunctionIFvONS_9UniqueRefINS2_7EncoderEEEEEEPT0_MT1_T2_EUlDpOT_E_vJSG_EE4callESG_(uint64_t a1, void *a2)
{
  v4 = IPC::Encoder::operator new(0x238, a2);
  v5 = *(a1 + 8);
  *v4 = 3466;
  *(v4 + 1) = v5;
  *(v4 + 2) = 0;
  *(v4 + 3) = 0;
  *(v4 + 69) = 0;
  *(v4 + 70) = 0;
  *(v4 + 68) = 0;
  IPC::Encoder::encodeHeader(v4);
  v10 = v4;
  IPC::ArgumentCoder<std::optional<WebKit::WebPushMessage>,void>::encode<IPC::Encoder,std::optional<WebKit::WebPushMessage> const&>(v4, a2);
  (*(**(a1 + 16) + 16))(*(a1 + 16), &v10);
  result = v10;
  v10 = 0;
  if (result)
  {
    IPC::Encoder::~Encoder(result, v6);
    return bmalloc::api::tzoneFree(v8, v9);
  }

  return result;
}

void IPC::ArgumentCoder<std::optional<WebKit::WebPushMessage>,void>::encode<IPC::Encoder,std::optional<WebKit::WebPushMessage> const&>(IPC::Encoder *a1, uint64_t a2)
{
  if (*(a2 + 216))
  {
    v5 = 1;
    IPC::Encoder::operator<<<BOOL>(a1, &v5);
    if (*(a2 + 216))
    {
      IPC::ArgumentCoder<WebKit::WebPushMessage,void>::encode(a1, a2);
    }

    else
    {
      v4 = std::__throw_bad_optional_access[abi:sn200100]();
      _ZN3WTF6Detail15CallableWrapperIZN3IPC43handleMessageAsyncWithoutUsingIPCConnectionIN8Messages20PushClientConnection22GetPendingPushMessagesEN8WebPushD20PushClientConnectionES8_FvONS_17CompletionHandlerIFvRKNS_6VectorIN6WebKit14WebPushMessageELm0ENS_15CrashOnOverflowELm16ENS_10FastMallocEEEEEEEEEvRNS2_7DecoderEONS_8FunctionIFvONS_9UniqueRefINS2_7EncoderEEEEEEPT0_MT1_T2_EUlDpOT_E_vJSH_EED1Ev(v4);
    }
  }

  else
  {
    v6 = 0;
    IPC::Encoder::operator<<<BOOL>(a1, &v6);
  }
}

void *_ZN3WTF6Detail15CallableWrapperIZN3IPC43handleMessageAsyncWithoutUsingIPCConnectionIN8Messages20PushClientConnection22GetPendingPushMessagesEN8WebPushD20PushClientConnectionES8_FvONS_17CompletionHandlerIFvRKNS_6VectorIN6WebKit14WebPushMessageELm0ENS_15CrashOnOverflowELm16ENS_10FastMallocEEEEEEEEEvRNS2_7DecoderEONS_8FunctionIFvONS_9UniqueRefINS2_7EncoderEEEEEEPT0_MT1_T2_EUlDpOT_E_vJSH_EED1Ev(void *a1)
{
  *a1 = &unk_1F10EBA90;
  v2 = a1[3];
  a1[3] = 0;
  if (v2)
  {
    if (v2[4] == 1)
    {
      (*(*v2 + 24))(v2);
    }

    else
    {
      --v2[4];
    }
  }

  v3 = a1[2];
  a1[2] = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  return a1;
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC43handleMessageAsyncWithoutUsingIPCConnectionIN8Messages20PushClientConnection22GetPendingPushMessagesEN8WebPushD20PushClientConnectionES8_FvONS_17CompletionHandlerIFvRKNS_6VectorIN6WebKit14WebPushMessageELm0ENS_15CrashOnOverflowELm16ENS_10FastMallocEEEEEEEEEvRNS2_7DecoderEONS_8FunctionIFvONS_9UniqueRefINS2_7EncoderEEEEEEPT0_MT1_T2_EUlDpOT_E_vJSH_EED0Ev(WTF *this, void *a2)
{
  *this = &unk_1F10EBA90;
  v3 = *(this + 3);
  *(this + 3) = 0;
  if (v3)
  {
    if (v3[4] == 1)
    {
      (*(*v3 + 24))(v3);
    }

    else
    {
      --v3[4];
    }
  }

  v4 = *(this + 2);
  *(this + 2) = 0;
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }

  return WTF::fastFree(this, a2);
}

IPC::Encoder *_ZN3WTF6Detail15CallableWrapperIZN3IPC43handleMessageAsyncWithoutUsingIPCConnectionIN8Messages20PushClientConnection22GetPendingPushMessagesEN8WebPushD20PushClientConnectionES8_FvONS_17CompletionHandlerIFvRKNS_6VectorIN6WebKit14WebPushMessageELm0ENS_15CrashOnOverflowELm16ENS_10FastMallocEEEEEEEEEvRNS2_7DecoderEONS_8FunctionIFvONS_9UniqueRefINS2_7EncoderEEEEEEPT0_MT1_T2_EUlDpOT_E_vJSH_EE4callESH_(uint64_t a1, void *a2)
{
  v4 = IPC::Encoder::operator new(0x238, a2);
  v5 = *(a1 + 8);
  *v4 = 3467;
  *(v4 + 1) = v5;
  *(v4 + 2) = 0;
  *(v4 + 3) = 0;
  *(v4 + 69) = 0;
  *(v4 + 70) = 0;
  *(v4 + 68) = 0;
  IPC::Encoder::encodeHeader(v4);
  v10 = v4;
  IPC::VectorArgumentCoder<false,WebKit::WebPushMessage,0ul,WTF::CrashOnOverflow,16ul>::encode<IPC::Encoder,WTF::Vector<WebKit::WebPushMessage,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> const&>(v4, a2);
  (*(**(a1 + 16) + 16))(*(a1 + 16), &v10);
  result = v10;
  v10 = 0;
  if (result)
  {
    IPC::Encoder::~Encoder(result, v6);
    return bmalloc::api::tzoneFree(v8, v9);
  }

  return result;
}

void IPC::VectorArgumentCoder<false,WebKit::WebPushMessage,0ul,WTF::CrashOnOverflow,16ul>::encode<IPC::Encoder,WTF::Vector<WebKit::WebPushMessage,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> const&>(IPC::Encoder *a1, uint64_t a2)
{
  IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(a1, *(a2 + 12));
  v4 = *(a2 + 12);
  if (v4)
  {
    v5 = *a2;
    v6 = 216 * v4;
    do
    {
      IPC::ArgumentCoder<WebKit::WebPushMessage,void>::encode(a1, v5);
      v5 += 216;
      v6 -= 216;
    }

    while (v6);
  }
}

void WebKit::WebPushD::PushMessageForTesting::~PushMessageForTesting(WebKit::WebPushD::PushMessageForTesting *this, WTF::StringImpl *a2)
{
  if (*(this + 208) == 1)
  {
    std::__optional_storage_base<WebCore::NotificationOptionsPayload,false>::~__optional_storage_base(this + 136, a2);
    v3 = *(this + 14);
    *(this + 14) = 0;
    if (v3 && atomic_fetch_add_explicit(v3, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v3, a2);
    }

    v4 = *(this + 9);
    *(this + 9) = 0;
    if (v4 && atomic_fetch_add_explicit(v4, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v4, a2);
    }
  }

  v5 = *(this + 7);
  *(this + 7) = 0;
  if (v5 && atomic_fetch_add_explicit(v5, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v5, a2);
  }

  v6 = *(this + 2);
  *(this + 2) = 0;
  if (v6 && atomic_fetch_add_explicit(v6, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v6, a2);
  }

  v7 = *(this + 1);
  *(this + 1) = 0;
  if (v7 && atomic_fetch_add_explicit(v7, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v7, a2);
  }

  v8 = *this;
  *this = 0;
  if (v8)
  {
    if (atomic_fetch_add_explicit(v8, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v8, a2);
    }
  }
}

void *_ZN3WTF6Detail15CallableWrapperIZN3IPC43handleMessageAsyncWithoutUsingIPCConnectionIN8Messages20PushClientConnection27InjectPushMessageForTestingEN8WebPushD20PushClientConnectionES8_FvON6WebKit8WebPushD21PushMessageForTestingEONS_17CompletionHandlerIFvRKNS_6StringEEEEEEEvRNS2_7DecoderEONS_8FunctionIFvONS_9UniqueRefINS2_7EncoderEEEEEEPT0_MT1_T2_EUlDpOT_E_vJSG_EED1Ev(void *a1)
{
  *a1 = &unk_1F10EBAB8;
  v2 = a1[3];
  a1[3] = 0;
  if (v2)
  {
    if (v2[4] == 1)
    {
      (*(*v2 + 24))(v2);
    }

    else
    {
      --v2[4];
    }
  }

  v3 = a1[2];
  a1[2] = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  return a1;
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC43handleMessageAsyncWithoutUsingIPCConnectionIN8Messages20PushClientConnection27InjectPushMessageForTestingEN8WebPushD20PushClientConnectionES8_FvON6WebKit8WebPushD21PushMessageForTestingEONS_17CompletionHandlerIFvRKNS_6StringEEEEEEEvRNS2_7DecoderEONS_8FunctionIFvONS_9UniqueRefINS2_7EncoderEEEEEEPT0_MT1_T2_EUlDpOT_E_vJSG_EED0Ev(WTF *this, void *a2)
{
  *this = &unk_1F10EBAB8;
  v3 = *(this + 3);
  *(this + 3) = 0;
  if (v3)
  {
    if (v3[4] == 1)
    {
      (*(*v3 + 24))(v3);
    }

    else
    {
      --v3[4];
    }
  }

  v4 = *(this + 2);
  *(this + 2) = 0;
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }

  return WTF::fastFree(this, a2);
}

IPC::Encoder *_ZN3WTF6Detail15CallableWrapperIZN3IPC43handleMessageAsyncWithoutUsingIPCConnectionIN8Messages20PushClientConnection27InjectPushMessageForTestingEN8WebPushD20PushClientConnectionES8_FvON6WebKit8WebPushD21PushMessageForTestingEONS_17CompletionHandlerIFvRKNS_6StringEEEEEEEvRNS2_7DecoderEONS_8FunctionIFvONS_9UniqueRefINS2_7EncoderEEEEEEPT0_MT1_T2_EUlDpOT_E_vJSG_EE4callESG_(uint64_t a1, void *a2)
{
  v4 = IPC::Encoder::operator new(0x238, a2);
  v5 = *(a1 + 8);
  *v4 = 3473;
  *(v4 + 1) = v5;
  *(v4 + 2) = 0;
  *(v4 + 3) = 0;
  *(v4 + 69) = 0;
  *(v4 + 70) = 0;
  *(v4 + 68) = 0;
  IPC::Encoder::encodeHeader(v4);
  v10 = v4;
  IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(v4, a2);
  (*(**(a1 + 16) + 16))(*(a1 + 16), &v10);
  result = v10;
  v10 = 0;
  if (result)
  {
    IPC::Encoder::~Encoder(result, v6);
    return bmalloc::api::tzoneFree(v8, v9);
  }

  return result;
}

IPC::Decoder *IPC::ArgumentCoder<std::tuple<WTF::String>,void>::decode<IPC::Decoder>@<X0>(IPC::Decoder *a1@<X0>, uint64_t a2@<X8>)
{
  result = IPC::ArgumentCoder<WTF::String,void>::decode<IPC::Decoder>(a1, &v6);
  if (v7 & 1) != 0 || (result = IPC::Decoder::markInvalid(a1), (v7))
  {
    *a2 = v6;
    v5 = 1;
  }

  else
  {
    v5 = 0;
    *a2 = 0;
  }

  *(a2 + 8) = v5;
  return result;
}

void *_ZN3WTF6Detail15CallableWrapperIZN3IPC43handleMessageAsyncWithoutUsingIPCConnectionIN8Messages20PushClientConnection36InjectEncryptedPushMessageForTestingEN8WebPushD20PushClientConnectionES8_FvRKNS_6StringEONS_17CompletionHandlerIFvbEEEEEEvRNS2_7DecoderEONS_8FunctionIFvONS_9UniqueRefINS2_7EncoderEEEEEEPT0_MT1_T2_EUlDpOT_E_vJbEED1Ev(void *a1)
{
  *a1 = &unk_1F10EBAE0;
  v2 = a1[3];
  a1[3] = 0;
  if (v2)
  {
    if (v2[4] == 1)
    {
      (*(*v2 + 24))(v2);
    }

    else
    {
      --v2[4];
    }
  }

  v3 = a1[2];
  a1[2] = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  return a1;
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC43handleMessageAsyncWithoutUsingIPCConnectionIN8Messages20PushClientConnection36InjectEncryptedPushMessageForTestingEN8WebPushD20PushClientConnectionES8_FvRKNS_6StringEONS_17CompletionHandlerIFvbEEEEEEvRNS2_7DecoderEONS_8FunctionIFvONS_9UniqueRefINS2_7EncoderEEEEEEPT0_MT1_T2_EUlDpOT_E_vJbEED0Ev(WTF *this, void *a2)
{
  *this = &unk_1F10EBAE0;
  v3 = *(this + 3);
  *(this + 3) = 0;
  if (v3)
  {
    if (v3[4] == 1)
    {
      (*(*v3 + 24))(v3);
    }

    else
    {
      --v3[4];
    }
  }

  v4 = *(this + 2);
  *(this + 2) = 0;
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }

  return WTF::fastFree(this, a2);
}

IPC::Encoder *_ZN3WTF6Detail15CallableWrapperIZN3IPC43handleMessageAsyncWithoutUsingIPCConnectionIN8Messages20PushClientConnection36InjectEncryptedPushMessageForTestingEN8WebPushD20PushClientConnectionES8_FvRKNS_6StringEONS_17CompletionHandlerIFvbEEEEEEvRNS2_7DecoderEONS_8FunctionIFvONS_9UniqueRefINS2_7EncoderEEEEEEPT0_MT1_T2_EUlDpOT_E_vJbEE4callEb(uint64_t a1, void *a2)
{
  v9 = a2;
  v3 = IPC::Encoder::operator new(0x238, a2);
  v4 = *(a1 + 8);
  *v3 = 3472;
  *(v3 + 1) = v4;
  *(v3 + 2) = 0;
  *(v3 + 3) = 0;
  *(v3 + 69) = 0;
  *(v3 + 70) = 0;
  *(v3 + 68) = 0;
  IPC::Encoder::encodeHeader(v3);
  v10 = v3;
  IPC::Encoder::operator<<<BOOL>(v3, &v9);
  (*(**(a1 + 16) + 16))(*(a1 + 16), &v10);
  result = v10;
  v10 = 0;
  if (result)
  {
    IPC::Encoder::~Encoder(result, v5);
    return bmalloc::api::tzoneFree(v7, v8);
  }

  return result;
}

void IPC::ArgumentCoder<std::tuple<WTF::URL,WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,void>::decode<IPC::Decoder>(IPC::Decoder *a1@<X0>, _BYTE *a2@<X8>)
{
  IPC::ArgumentCoder<WTF::URL,void>::decode(a1, v10);
  if (v11 & 1) != 0 || ((v6 = *a1, v7 = *(a1 + 1), *a1 = 0, *(a1 + 1) = 0, (v8 = *(a1 + 3)) != 0) ? (v9 = v7 == 0) : (v9 = 1), !v9 && ((*(*v8 + 16))(v8, v6), (v11)))
  {
    IPC::ArgumentCoder<std::tuple<WTF::URL,WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,void>::decode<IPC::Decoder,WTF::URL>(a1, v10, a2);
    if (v11)
    {
      v5 = v10[0];
      v10[0] = 0;
      if (v5)
      {
        if (atomic_fetch_add_explicit(v5, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v5, v4);
        }
      }
    }
  }

  else
  {
    *a2 = 0;
    a2[56] = 0;
  }
}

void IPC::ArgumentCoder<std::tuple<WTF::URL,WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,void>::decode<IPC::Decoder,WTF::URL>(IPC::Decoder *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = IPC::VectorArgumentCoder<true,unsigned char,0ul,WTF::CrashOnOverflow,16ul>::decode<IPC::Decoder>(a1, v11);
  if (v12)
  {
    while ((*(a2 + 40) & 1) == 0)
    {
      __break(1u);
LABEL_12:
      v6 = (*(*v6 + 16))(v6, v7);
      if ((v12 & 1) == 0)
      {
        goto LABEL_10;
      }
    }

    WTF::URL::URL(a3, a2);
    *(a3 + 40) = v11[0];
    *(a3 + 48) = v11[1];
    v8 = 1;
  }

  else
  {
    v7 = *a1;
    v9 = *(a1 + 1);
    *a1 = 0;
    *(a1 + 1) = 0;
    v6 = *(a1 + 3);
    if (v6)
    {
      v10 = v9 == 0;
    }

    else
    {
      v10 = 1;
    }

    if (!v10)
    {
      goto LABEL_12;
    }

LABEL_10:
    v8 = 0;
    *a3 = 0;
  }

  *(a3 + 56) = v8;
}

void *_ZN3WTF6Detail15CallableWrapperIZN3IPC43handleMessageAsyncWithoutUsingIPCConnectionIN8Messages20PushClientConnection22SubscribeToPushServiceEN8WebPushD20PushClientConnectionES8_FvONS_3URLERKNS_6VectorIhLm0ENS_15CrashOnOverflowELm16ENS_10FastMallocEEEONS_17CompletionHandlerIFvRKNSt12experimental15fundamentals_v38expectedIN7WebCore20PushSubscriptionDataENSL_13ExceptionDataEEEEEEEEEvRNS2_7DecoderEONS_8FunctionIFvONS_9UniqueRefINS2_7EncoderEEEEEEPT0_MT1_T2_EUlDpOT_E_vJSQ_EED1Ev(void *a1)
{
  *a1 = &unk_1F10EBB08;
  v2 = a1[3];
  a1[3] = 0;
  if (v2)
  {
    if (v2[4] == 1)
    {
      (*(*v2 + 24))(v2);
    }

    else
    {
      --v2[4];
    }
  }

  v3 = a1[2];
  a1[2] = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  return a1;
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC43handleMessageAsyncWithoutUsingIPCConnectionIN8Messages20PushClientConnection22SubscribeToPushServiceEN8WebPushD20PushClientConnectionES8_FvONS_3URLERKNS_6VectorIhLm0ENS_15CrashOnOverflowELm16ENS_10FastMallocEEEONS_17CompletionHandlerIFvRKNSt12experimental15fundamentals_v38expectedIN7WebCore20PushSubscriptionDataENSL_13ExceptionDataEEEEEEEEEvRNS2_7DecoderEONS_8FunctionIFvONS_9UniqueRefINS2_7EncoderEEEEEEPT0_MT1_T2_EUlDpOT_E_vJSQ_EED0Ev(WTF *this, void *a2)
{
  *this = &unk_1F10EBB08;
  v3 = *(this + 3);
  *(this + 3) = 0;
  if (v3)
  {
    if (v3[4] == 1)
    {
      (*(*v3 + 24))(v3);
    }

    else
    {
      --v3[4];
    }
  }

  v4 = *(this + 2);
  *(this + 2) = 0;
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }

  return WTF::fastFree(this, a2);
}

IPC::Encoder *_ZN3WTF6Detail15CallableWrapperIZN3IPC43handleMessageAsyncWithoutUsingIPCConnectionIN8Messages20PushClientConnection22SubscribeToPushServiceEN8WebPushD20PushClientConnectionES8_FvONS_3URLERKNS_6VectorIhLm0ENS_15CrashOnOverflowELm16ENS_10FastMallocEEEONS_17CompletionHandlerIFvRKNSt12experimental15fundamentals_v38expectedIN7WebCore20PushSubscriptionDataENSL_13ExceptionDataEEEEEEEEEvRNS2_7DecoderEONS_8FunctionIFvONS_9UniqueRefINS2_7EncoderEEEEEEPT0_MT1_T2_EUlDpOT_E_vJSQ_EE4callESQ_(uint64_t a1, uint64_t *a2)
{
  v4 = IPC::Encoder::operator new(0x238, a2);
  v5 = *(a1 + 8);
  *v4 = 3482;
  *(v4 + 1) = v5;
  *(v4 + 2) = 0;
  *(v4 + 3) = 0;
  *(v4 + 69) = 0;
  *(v4 + 70) = 0;
  *(v4 + 68) = 0;
  IPC::Encoder::encodeHeader(v4);
  v11 = v4;
  if (*(a2 + 80))
  {
    v13 = 0;
    v6 = IPC::Encoder::operator<<<BOOL>(v4, &v13);
    if (*(a2 + 80) == 1)
    {
      IPC::ArgumentCoder<BOOL,void>::encode<IPC::Encoder>(v4, *a2);
      IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(v4, a2 + 1);
      goto LABEL_6;
    }

LABEL_9:
    mpark::throw_bad_variant_access(v6);
  }

  v12 = 1;
  v6 = IPC::Encoder::operator<<<BOOL>(v4, &v12);
  if (*(a2 + 80))
  {
    goto LABEL_9;
  }

  IPC::ArgumentCoder<WebCore::PushSubscriptionData,void>::encode(v4, a2);
LABEL_6:
  (*(**(a1 + 16) + 16))(*(a1 + 16), &v11);
  result = v11;
  v11 = 0;
  if (result)
  {
    IPC::Encoder::~Encoder(result, v7);
    return bmalloc::api::tzoneFree(v9, v10);
  }

  return result;
}

void *_ZN3WTF6Detail15CallableWrapperIZN3IPC43handleMessageAsyncWithoutUsingIPCConnectionIN8Messages20PushClientConnection26UnsubscribeFromPushServiceEN8WebPushD20PushClientConnectionES8_FvONS_3URLENSt3__18optionalINS_23ObjectIdentifierGenericIN7WebCore30PushSubscriptionIdentifierTypeENS_38ObjectIdentifierMainThreadAccessTraitsIyEEyEEEEONS_17CompletionHandlerIFvRKNSt12experimental15fundamentals_v38expectedIbNSE_13ExceptionDataEEEEEEEEEvRNS2_7DecoderEONS_8FunctionIFvONS_9UniqueRefINS2_7EncoderEEEEEEPT0_MT1_T2_EUlDpOT_E_vJSR_EED1Ev(void *a1)
{
  *a1 = &unk_1F10EBB30;
  v2 = a1[3];
  a1[3] = 0;
  if (v2)
  {
    if (v2[4] == 1)
    {
      (*(*v2 + 24))(v2);
    }

    else
    {
      --v2[4];
    }
  }

  v3 = a1[2];
  a1[2] = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  return a1;
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC43handleMessageAsyncWithoutUsingIPCConnectionIN8Messages20PushClientConnection26UnsubscribeFromPushServiceEN8WebPushD20PushClientConnectionES8_FvONS_3URLENSt3__18optionalINS_23ObjectIdentifierGenericIN7WebCore30PushSubscriptionIdentifierTypeENS_38ObjectIdentifierMainThreadAccessTraitsIyEEyEEEEONS_17CompletionHandlerIFvRKNSt12experimental15fundamentals_v38expectedIbNSE_13ExceptionDataEEEEEEEEEvRNS2_7DecoderEONS_8FunctionIFvONS_9UniqueRefINS2_7EncoderEEEEEEPT0_MT1_T2_EUlDpOT_E_vJSR_EED0Ev(WTF *this, void *a2)
{
  *this = &unk_1F10EBB30;
  v3 = *(this + 3);
  *(this + 3) = 0;
  if (v3)
  {
    if (v3[4] == 1)
    {
      (*(*v3 + 24))(v3);
    }

    else
    {
      --v3[4];
    }
  }

  v4 = *(this + 2);
  *(this + 2) = 0;
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }

  return WTF::fastFree(this, a2);
}

IPC::Encoder *_ZN3WTF6Detail15CallableWrapperIZN3IPC43handleMessageAsyncWithoutUsingIPCConnectionIN8Messages20PushClientConnection26UnsubscribeFromPushServiceEN8WebPushD20PushClientConnectionES8_FvONS_3URLENSt3__18optionalINS_23ObjectIdentifierGenericIN7WebCore30PushSubscriptionIdentifierTypeENS_38ObjectIdentifierMainThreadAccessTraitsIyEEyEEEEONS_17CompletionHandlerIFvRKNSt12experimental15fundamentals_v38expectedIbNSE_13ExceptionDataEEEEEEEEEvRNS2_7DecoderEONS_8FunctionIFvONS_9UniqueRefINS2_7EncoderEEEEEEPT0_MT1_T2_EUlDpOT_E_vJSR_EE4callESR_(uint64_t a1, uint64_t *a2)
{
  v4 = IPC::Encoder::operator new(0x238, a2);
  v5 = *(a1 + 8);
  *v4 = 3483;
  *(v4 + 1) = v5;
  *(v4 + 2) = 0;
  *(v4 + 3) = 0;
  *(v4 + 69) = 0;
  *(v4 + 70) = 0;
  *(v4 + 68) = 0;
  IPC::Encoder::encodeHeader(v4);
  v11 = v4;
  if (*(a2 + 16))
  {
    v13 = 0;
    v6 = IPC::Encoder::operator<<<BOOL>(v4, &v13);
    if (*(a2 + 16) == 1)
    {
      IPC::ArgumentCoder<BOOL,void>::encode<IPC::Encoder>(v4, *a2);
      IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(v4, a2 + 1);
      goto LABEL_6;
    }

LABEL_9:
    mpark::throw_bad_variant_access(v6);
  }

  v12 = 1;
  v6 = IPC::Encoder::operator<<<BOOL>(v4, &v12);
  if (*(a2 + 16))
  {
    goto LABEL_9;
  }

  IPC::Encoder::operator<<<BOOL>(v4, a2);
LABEL_6:
  (*(**(a1 + 16) + 16))(*(a1 + 16), &v11);
  result = v11;
  v11 = 0;
  if (result)
  {
    IPC::Encoder::~Encoder(result, v7);
    return bmalloc::api::tzoneFree(v9, v10);
  }

  return result;
}

void IPC::ArgumentCoder<std::tuple<WTF::URL>,void>::decode<IPC::Decoder>(IPC::Decoder *a1@<X0>, _BYTE *a2@<X8>)
{
  IPC::ArgumentCoder<WTF::URL,void>::decode(a1, v11);
  if (v12 & 1) != 0 || ((v7 = *a1, v8 = *(a1 + 1), *a1 = 0, *(a1 + 1) = 0, (v9 = *(a1 + 3)) != 0) ? (v10 = v8 == 0) : (v10 = 1), !v10 && ((*(*v9 + 16))(v9, v7), (v12)))
  {
    WTF::URL::URL(a2, v11);
    v5 = v12;
    a2[40] = 1;
    if (v5)
    {
      v6 = v11[0];
      v11[0] = 0;
      if (v6)
      {
        if (atomic_fetch_add_explicit(v6, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v6, v4);
        }
      }
    }
  }

  else
  {
    *a2 = 0;
    a2[40] = 0;
  }
}

void *_ZN3WTF6Detail15CallableWrapperIZN3IPC43handleMessageAsyncWithoutUsingIPCConnectionIN8Messages20PushClientConnection19GetPushSubscriptionEN8WebPushD20PushClientConnectionES8_FvONS_3URLEONS_17CompletionHandlerIFvRKNSt12experimental15fundamentals_v38expectedINSt3__18optionalIN7WebCore20PushSubscriptionDataEEENSH_13ExceptionDataEEEEEEEEEvRNS2_7DecoderEONS_8FunctionIFvONS_9UniqueRefINS2_7EncoderEEEEEEPT0_MT1_T2_EUlDpOT_E_vJSN_EED1Ev(void *a1)
{
  *a1 = &unk_1F10EBB58;
  v2 = a1[3];
  a1[3] = 0;
  if (v2)
  {
    if (v2[4] == 1)
    {
      (*(*v2 + 24))(v2);
    }

    else
    {
      --v2[4];
    }
  }

  v3 = a1[2];
  a1[2] = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  return a1;
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC43handleMessageAsyncWithoutUsingIPCConnectionIN8Messages20PushClientConnection19GetPushSubscriptionEN8WebPushD20PushClientConnectionES8_FvONS_3URLEONS_17CompletionHandlerIFvRKNSt12experimental15fundamentals_v38expectedINSt3__18optionalIN7WebCore20PushSubscriptionDataEEENSH_13ExceptionDataEEEEEEEEEvRNS2_7DecoderEONS_8FunctionIFvONS_9UniqueRefINS2_7EncoderEEEEEEPT0_MT1_T2_EUlDpOT_E_vJSN_EED0Ev(WTF *this, void *a2)
{
  *this = &unk_1F10EBB58;
  v3 = *(this + 3);
  *(this + 3) = 0;
  if (v3)
  {
    if (v3[4] == 1)
    {
      (*(*v3 + 24))(v3);
    }

    else
    {
      --v3[4];
    }
  }

  v4 = *(this + 2);
  *(this + 2) = 0;
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }

  return WTF::fastFree(this, a2);
}

IPC::Encoder *_ZN3WTF6Detail15CallableWrapperIZN3IPC43handleMessageAsyncWithoutUsingIPCConnectionIN8Messages20PushClientConnection19GetPushSubscriptionEN8WebPushD20PushClientConnectionES8_FvONS_3URLEONS_17CompletionHandlerIFvRKNSt12experimental15fundamentals_v38expectedINSt3__18optionalIN7WebCore20PushSubscriptionDataEEENSH_13ExceptionDataEEEEEEEEEvRNS2_7DecoderEONS_8FunctionIFvONS_9UniqueRefINS2_7EncoderEEEEEEPT0_MT1_T2_EUlDpOT_E_vJSN_EE4callESN_(uint64_t a1, uint64_t *a2)
{
  v4 = IPC::Encoder::operator new(0x238, a2);
  v5 = *(a1 + 8);
  *v4 = 3469;
  *(v4 + 1) = v5;
  *(v4 + 2) = 0;
  *(v4 + 3) = 0;
  *(v4 + 69) = 0;
  *(v4 + 70) = 0;
  *(v4 + 68) = 0;
  IPC::Encoder::encodeHeader(v4);
  v13 = v4;
  if (*(a2 + 88))
  {
    v15 = 0;
    v6 = IPC::Encoder::operator<<<BOOL>(v4, &v15);
    if (*(a2 + 88) == 1)
    {
      IPC::ArgumentCoder<BOOL,void>::encode<IPC::Encoder>(v4, *a2);
      IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(v4, a2 + 1);
      goto LABEL_9;
    }

LABEL_12:
    mpark::throw_bad_variant_access(v6);
  }

  v14 = 1;
  v6 = IPC::Encoder::operator<<<BOOL>(v4, &v14);
  if (*(a2 + 88))
  {
    goto LABEL_12;
  }

  if (a2[10])
  {
    v16 = 1;
    IPC::Encoder::operator<<<BOOL>(v4, &v16);
    if ((a2[10] & 1) == 0)
    {
      v11 = std::__throw_bad_optional_access[abi:sn200100]();
      return IPC::Decoder::decode<std::tuple<WebCore::SecurityOriginData>>(v11, v12);
    }

    IPC::ArgumentCoder<WebCore::PushSubscriptionData,void>::encode(v4, a2);
  }

  else
  {
    v17 = 0;
    IPC::Encoder::operator<<<BOOL>(v4, &v17);
  }

LABEL_9:
  (*(**(a1 + 16) + 16))(*(a1 + 16), &v13);
  result = v13;
  v13 = 0;
  if (result)
  {
    IPC::Encoder::~Encoder(result, v7);
    return bmalloc::api::tzoneFree(v9, v10);
  }

  return result;
}

uint64_t IPC::Decoder::decode<std::tuple<WebCore::SecurityOriginData>>@<X0>(IPC::Decoder *a1@<X0>, uint64_t a2@<X8>)
{
  result = IPC::ArgumentCoder<std::tuple<WebCore::SecurityOriginData>,void>::decode<IPC::Decoder>(a1, a2);
  if ((*(a2 + 32) & 1) == 0)
  {
    v5 = *(a1 + 1);
    *a1 = 0;
    *(a1 + 1) = 0;
    result = *(a1 + 3);
    if (result && v5 != 0)
    {
      v7 = *(*result + 16);

      return v7();
    }
  }

  return result;
}

uint64_t IPC::ArgumentCoder<std::tuple<WebCore::SecurityOriginData>,void>::decode<IPC::Decoder>@<X0>(IPC::Decoder *a1@<X0>, uint64_t a2@<X8>)
{
  v14 = *MEMORY[0x1E69E9840];
  result = IPC::ArgumentCoder<WebCore::SecurityOriginData,void>::decode(a1, &v10);
  if (v13)
  {
    *a2 = 0;
    *(a2 + 24) = -1;
    v5 = v12;
    if (v12)
    {
      if (v12 != 255)
      {
        *a2 = v10;
        *(a2 + 24) = v5;
      }
    }

    else
    {
      *a2 = v10;
      *(a2 + 16) = v11;
      *(a2 + 24) = 0;
    }

    v6 = 1;
  }

  else
  {
    v7 = *a1;
    v8 = *(a1 + 1);
    *a1 = 0;
    *(a1 + 1) = 0;
    result = *(a1 + 3);
    if (result)
    {
      v9 = v8 == 0;
    }

    else
    {
      v9 = 1;
    }

    if (!v9)
    {
      result = (*(*result + 16))(result, v7);
    }

    v6 = 0;
    *a2 = 0;
  }

  *(a2 + 32) = v6;
  return result;
}

void *_ZN3WTF6Detail15CallableWrapperIZN3IPC43handleMessageAsyncWithoutUsingIPCConnectionIN8Messages20PushClientConnection22GetPushPermissionStateEN8WebPushD20PushClientConnectionES8_FvON7WebCore18SecurityOriginDataEONS_17CompletionHandlerIFvNS9_19PushPermissionStateEEEEEEEvRNS2_7DecoderEONS_8FunctionIFvONS_9UniqueRefINS2_7EncoderEEEEEEPT0_MT1_T2_EUlDpOT_E_vJSD_EED1Ev(void *a1)
{
  *a1 = &unk_1F10EBB80;
  v2 = a1[3];
  a1[3] = 0;
  if (v2)
  {
    if (v2[4] == 1)
    {
      (*(*v2 + 24))(v2);
    }

    else
    {
      --v2[4];
    }
  }

  v3 = a1[2];
  a1[2] = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  return a1;
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC43handleMessageAsyncWithoutUsingIPCConnectionIN8Messages20PushClientConnection22GetPushPermissionStateEN8WebPushD20PushClientConnectionES8_FvON7WebCore18SecurityOriginDataEONS_17CompletionHandlerIFvNS9_19PushPermissionStateEEEEEEEvRNS2_7DecoderEONS_8FunctionIFvONS_9UniqueRefINS2_7EncoderEEEEEEPT0_MT1_T2_EUlDpOT_E_vJSD_EED0Ev(WTF *this, void *a2)
{
  *this = &unk_1F10EBB80;
  v3 = *(this + 3);
  *(this + 3) = 0;
  if (v3)
  {
    if (v3[4] == 1)
    {
      (*(*v3 + 24))(v3);
    }

    else
    {
      --v3[4];
    }
  }

  v4 = *(this + 2);
  *(this + 2) = 0;
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }

  return WTF::fastFree(this, a2);
}

IPC::Encoder *_ZN3WTF6Detail15CallableWrapperIZN3IPC43handleMessageAsyncWithoutUsingIPCConnectionIN8Messages20PushClientConnection22GetPushPermissionStateEN8WebPushD20PushClientConnectionES8_FvON7WebCore18SecurityOriginDataEONS_17CompletionHandlerIFvNS9_19PushPermissionStateEEEEEEEvRNS2_7DecoderEONS_8FunctionIFvONS_9UniqueRefINS2_7EncoderEEEEEEPT0_MT1_T2_EUlDpOT_E_vJSD_EE4callESD_(uint64_t a1, void *a2)
{
  v2 = a2;
  v4 = IPC::Encoder::operator new(0x238, a2);
  v5 = *(a1 + 8);
  *v4 = 3468;
  *(v4 + 1) = v5;
  *(v4 + 2) = 0;
  *(v4 + 3) = 0;
  *(v4 + 69) = 0;
  *(v4 + 70) = 0;
  *(v4 + 68) = 0;
  IPC::Encoder::encodeHeader(v4);
  v10 = v4;
  IPC::ArgumentCoder<BOOL,void>::encode<IPC::Encoder>(v4, v2);
  (*(**(a1 + 16) + 16))(*(a1 + 16), &v10);
  result = v10;
  v10 = 0;
  if (result)
  {
    IPC::Encoder::~Encoder(result, v6);
    return bmalloc::api::tzoneFree(v8, v9);
  }

  return result;
}

void *_ZN3WTF6Detail15CallableWrapperIZN3IPC43handleMessageAsyncWithoutUsingIPCConnectionIN8Messages20PushClientConnection24IncrementSilentPushCountEN8WebPushD20PushClientConnectionES8_FvON7WebCore18SecurityOriginDataEONS_17CompletionHandlerIFvjEEEEEEvRNS2_7DecoderEONS_8FunctionIFvONS_9UniqueRefINS2_7EncoderEEEEEEPT0_MT1_T2_EUlDpOT_E_vJjEED1Ev(void *a1)
{
  *a1 = &unk_1F10EBBA8;
  v2 = a1[3];
  a1[3] = 0;
  if (v2)
  {
    if (v2[4] == 1)
    {
      (*(*v2 + 24))(v2);
    }

    else
    {
      --v2[4];
    }
  }

  v3 = a1[2];
  a1[2] = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  return a1;
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC43handleMessageAsyncWithoutUsingIPCConnectionIN8Messages20PushClientConnection24IncrementSilentPushCountEN8WebPushD20PushClientConnectionES8_FvON7WebCore18SecurityOriginDataEONS_17CompletionHandlerIFvjEEEEEEvRNS2_7DecoderEONS_8FunctionIFvONS_9UniqueRefINS2_7EncoderEEEEEEPT0_MT1_T2_EUlDpOT_E_vJjEED0Ev(WTF *this, void *a2)
{
  *this = &unk_1F10EBBA8;
  v3 = *(this + 3);
  *(this + 3) = 0;
  if (v3)
  {
    if (v3[4] == 1)
    {
      (*(*v3 + 24))(v3);
    }

    else
    {
      --v3[4];
    }
  }

  v4 = *(this + 2);
  *(this + 2) = 0;
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }

  return WTF::fastFree(this, a2);
}

IPC::Encoder *_ZN3WTF6Detail15CallableWrapperIZN3IPC43handleMessageAsyncWithoutUsingIPCConnectionIN8Messages20PushClientConnection24IncrementSilentPushCountEN8WebPushD20PushClientConnectionES8_FvON7WebCore18SecurityOriginDataEONS_17CompletionHandlerIFvjEEEEEEvRNS2_7DecoderEONS_8FunctionIFvONS_9UniqueRefINS2_7EncoderEEEEEEPT0_MT1_T2_EUlDpOT_E_vJjEE4callEj(uint64_t a1, void *a2)
{
  v2 = a2;
  v4 = IPC::Encoder::operator new(0x238, a2);
  v5 = *(a1 + 8);
  *v4 = 3471;
  *(v4 + 1) = v5;
  *(v4 + 2) = 0;
  *(v4 + 3) = 0;
  *(v4 + 69) = 0;
  *(v4 + 70) = 0;
  *(v4 + 68) = 0;
  IPC::Encoder::encodeHeader(v4);
  v10 = v4;
  IPC::ArgumentCoder<unsigned int,void>::encode<IPC::Encoder>(v4, v2);
  (*(**(a1 + 16) + 16))(*(a1 + 16), &v10);
  result = v10;
  v10 = 0;
  if (result)
  {
    IPC::Encoder::~Encoder(result, v6);
    return bmalloc::api::tzoneFree(v8, v9);
  }

  return result;
}

void *_ZN3WTF6Detail15CallableWrapperIZN3IPC43handleMessageAsyncWithoutUsingIPCConnectionIN8Messages20PushClientConnection26RemoveAllPushSubscriptionsEN8WebPushD20PushClientConnectionES8_FvONS_17CompletionHandlerIFvjEEEEEEvRNS2_7DecoderEONS_8FunctionIFvONS_9UniqueRefINS2_7EncoderEEEEEEPT0_MT1_T2_EUlDpOT_E_vJjEED1Ev(void *a1)
{
  *a1 = &unk_1F10EBBD0;
  v2 = a1[3];
  a1[3] = 0;
  if (v2)
  {
    if (v2[4] == 1)
    {
      (*(*v2 + 24))(v2);
    }

    else
    {
      --v2[4];
    }
  }

  v3 = a1[2];
  a1[2] = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  return a1;
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC43handleMessageAsyncWithoutUsingIPCConnectionIN8Messages20PushClientConnection26RemoveAllPushSubscriptionsEN8WebPushD20PushClientConnectionES8_FvONS_17CompletionHandlerIFvjEEEEEEvRNS2_7DecoderEONS_8FunctionIFvONS_9UniqueRefINS2_7EncoderEEEEEEPT0_MT1_T2_EUlDpOT_E_vJjEED0Ev(WTF *this, void *a2)
{
  *this = &unk_1F10EBBD0;
  v3 = *(this + 3);
  *(this + 3) = 0;
  if (v3)
  {
    if (v3[4] == 1)
    {
      (*(*v3 + 24))(v3);
    }

    else
    {
      --v3[4];
    }
  }

  v4 = *(this + 2);
  *(this + 2) = 0;
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }

  return WTF::fastFree(this, a2);
}

IPC::Encoder *_ZN3WTF6Detail15CallableWrapperIZN3IPC43handleMessageAsyncWithoutUsingIPCConnectionIN8Messages20PushClientConnection26RemoveAllPushSubscriptionsEN8WebPushD20PushClientConnectionES8_FvONS_17CompletionHandlerIFvjEEEEEEvRNS2_7DecoderEONS_8FunctionIFvONS_9UniqueRefINS2_7EncoderEEEEEEPT0_MT1_T2_EUlDpOT_E_vJjEE4callEj(uint64_t a1, void *a2)
{
  v2 = a2;
  v4 = IPC::Encoder::operator new(0x238, a2);
  v5 = *(a1 + 8);
  *v4 = 3474;
  *(v4 + 1) = v5;
  *(v4 + 2) = 0;
  *(v4 + 3) = 0;
  *(v4 + 69) = 0;
  *(v4 + 70) = 0;
  *(v4 + 68) = 0;
  IPC::Encoder::encodeHeader(v4);
  v10 = v4;
  IPC::ArgumentCoder<unsigned int,void>::encode<IPC::Encoder>(v4, v2);
  (*(**(a1 + 16) + 16))(*(a1 + 16), &v10);
  result = v10;
  v10 = 0;
  if (result)
  {
    IPC::Encoder::~Encoder(result, v6);
    return bmalloc::api::tzoneFree(v8, v9);
  }

  return result;
}

void *_ZN3WTF6Detail15CallableWrapperIZN3IPC43handleMessageAsyncWithoutUsingIPCConnectionIN8Messages20PushClientConnection32RemovePushSubscriptionsForOriginEN8WebPushD20PushClientConnectionES8_FvON7WebCore18SecurityOriginDataEONS_17CompletionHandlerIFvjEEEEEEvRNS2_7DecoderEONS_8FunctionIFvONS_9UniqueRefINS2_7EncoderEEEEEEPT0_MT1_T2_EUlDpOT_E_vJjEED1Ev(void *a1)
{
  *a1 = &unk_1F10EBBF8;
  v2 = a1[3];
  a1[3] = 0;
  if (v2)
  {
    if (v2[4] == 1)
    {
      (*(*v2 + 24))(v2);
    }

    else
    {
      --v2[4];
    }
  }

  v3 = a1[2];
  a1[2] = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  return a1;
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC43handleMessageAsyncWithoutUsingIPCConnectionIN8Messages20PushClientConnection32RemovePushSubscriptionsForOriginEN8WebPushD20PushClientConnectionES8_FvON7WebCore18SecurityOriginDataEONS_17CompletionHandlerIFvjEEEEEEvRNS2_7DecoderEONS_8FunctionIFvONS_9UniqueRefINS2_7EncoderEEEEEEPT0_MT1_T2_EUlDpOT_E_vJjEED0Ev(WTF *this, void *a2)
{
  *this = &unk_1F10EBBF8;
  v3 = *(this + 3);
  *(this + 3) = 0;
  if (v3)
  {
    if (v3[4] == 1)
    {
      (*(*v3 + 24))(v3);
    }

    else
    {
      --v3[4];
    }
  }

  v4 = *(this + 2);
  *(this + 2) = 0;
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }

  return WTF::fastFree(this, a2);
}

IPC::Encoder *_ZN3WTF6Detail15CallableWrapperIZN3IPC43handleMessageAsyncWithoutUsingIPCConnectionIN8Messages20PushClientConnection32RemovePushSubscriptionsForOriginEN8WebPushD20PushClientConnectionES8_FvON7WebCore18SecurityOriginDataEONS_17CompletionHandlerIFvjEEEEEEvRNS2_7DecoderEONS_8FunctionIFvONS_9UniqueRefINS2_7EncoderEEEEEEPT0_MT1_T2_EUlDpOT_E_vJjEE4callEj(uint64_t a1, void *a2)
{
  v2 = a2;
  v4 = IPC::Encoder::operator new(0x238, a2);
  v5 = *(a1 + 8);
  *v4 = 3475;
  *(v4 + 1) = v5;
  *(v4 + 2) = 0;
  *(v4 + 3) = 0;
  *(v4 + 69) = 0;
  *(v4 + 70) = 0;
  *(v4 + 68) = 0;
  IPC::Encoder::encodeHeader(v4);
  v10 = v4;
  IPC::ArgumentCoder<unsigned int,void>::encode<IPC::Encoder>(v4, v2);
  (*(**(a1 + 16) + 16))(*(a1 + 16), &v10);
  result = v10;
  v10 = 0;
  if (result)
  {
    IPC::Encoder::~Encoder(result, v6);
    return bmalloc::api::tzoneFree(v8, v9);
  }

  return result;
}

void *_ZN3WTF6Detail15CallableWrapperIZN3IPC43handleMessageAsyncWithoutUsingIPCConnectionIN8Messages20PushClientConnection24SetPublicTokenForTestingEN8WebPushD20PushClientConnectionES8_FvRKNS_6StringEONS_17CompletionHandlerIFvvEEEEEEvRNS2_7DecoderEONS_8FunctionIFvONS_9UniqueRefINS2_7EncoderEEEEEEPT0_MT1_T2_EUlDpOT_E_vJEED1Ev(void *a1)
{
  *a1 = &unk_1F10EBC20;
  v2 = a1[3];
  a1[3] = 0;
  if (v2)
  {
    if (v2[4] == 1)
    {
      (*(*v2 + 24))(v2);
    }

    else
    {
      --v2[4];
    }
  }

  v3 = a1[2];
  a1[2] = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  return a1;
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC43handleMessageAsyncWithoutUsingIPCConnectionIN8Messages20PushClientConnection24SetPublicTokenForTestingEN8WebPushD20PushClientConnectionES8_FvRKNS_6StringEONS_17CompletionHandlerIFvvEEEEEEvRNS2_7DecoderEONS_8FunctionIFvONS_9UniqueRefINS2_7EncoderEEEEEEPT0_MT1_T2_EUlDpOT_E_vJEED0Ev(WTF *this, void *a2)
{
  *this = &unk_1F10EBC20;
  v3 = *(this + 3);
  *(this + 3) = 0;
  if (v3)
  {
    if (v3[4] == 1)
    {
      (*(*v3 + 24))(v3);
    }

    else
    {
      --v3[4];
    }
  }

  v4 = *(this + 2);
  *(this + 2) = 0;
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }

  return WTF::fastFree(this, a2);
}

IPC::Encoder *_ZN3WTF6Detail15CallableWrapperIZN3IPC43handleMessageAsyncWithoutUsingIPCConnectionIN8Messages20PushClientConnection24SetPublicTokenForTestingEN8WebPushD20PushClientConnectionES8_FvRKNS_6StringEONS_17CompletionHandlerIFvvEEEEEEvRNS2_7DecoderEONS_8FunctionIFvONS_9UniqueRefINS2_7EncoderEEEEEEPT0_MT1_T2_EUlDpOT_E_vJEE4callEv(uint64_t a1, void *a2)
{
  v3 = IPC::Encoder::operator new(0x238, a2);
  v4 = *(a1 + 8);
  *v3 = 3478;
  *(v3 + 1) = v4;
  *(v3 + 2) = 0;
  *(v3 + 3) = 0;
  *(v3 + 69) = 0;
  *(v3 + 70) = 0;
  *(v3 + 68) = 0;
  IPC::Encoder::encodeHeader(v3);
  v9 = v3;
  (*(**(a1 + 16) + 16))(*(a1 + 16), &v9);
  result = v9;
  v9 = 0;
  if (result)
  {
    IPC::Encoder::~Encoder(result, v5);
    return bmalloc::api::tzoneFree(v7, v8);
  }

  return result;
}

void *_ZN3WTF6Detail15CallableWrapperIZN3IPC43handleMessageAsyncWithoutUsingIPCConnectionIN8Messages20PushClientConnection23GetPushTopicsForTestingEN8WebPushD20PushClientConnectionES8_FvONS_17CompletionHandlerIFvNS_6VectorINS_6StringELm0ENS_15CrashOnOverflowELm16ENS_10FastMallocEEESE_EEEEEEvRNS2_7DecoderEONS_8FunctionIFvONS_9UniqueRefINS2_7EncoderEEEEEEPT0_MT1_T2_EUlDpOT_E_vJSE_SE_EED1Ev(void *a1)
{
  *a1 = &unk_1F10EBC48;
  v2 = a1[3];
  a1[3] = 0;
  if (v2)
  {
    if (v2[4] == 1)
    {
      (*(*v2 + 24))(v2);
    }

    else
    {
      --v2[4];
    }
  }

  v3 = a1[2];
  a1[2] = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  return a1;
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC43handleMessageAsyncWithoutUsingIPCConnectionIN8Messages20PushClientConnection23GetPushTopicsForTestingEN8WebPushD20PushClientConnectionES8_FvONS_17CompletionHandlerIFvNS_6VectorINS_6StringELm0ENS_15CrashOnOverflowELm16ENS_10FastMallocEEESE_EEEEEEvRNS2_7DecoderEONS_8FunctionIFvONS_9UniqueRefINS2_7EncoderEEEEEEPT0_MT1_T2_EUlDpOT_E_vJSE_SE_EED0Ev(WTF *this, void *a2)
{
  *this = &unk_1F10EBC48;
  v3 = *(this + 3);
  *(this + 3) = 0;
  if (v3)
  {
    if (v3[4] == 1)
    {
      (*(*v3 + 24))(v3);
    }

    else
    {
      --v3[4];
    }
  }

  v4 = *(this + 2);
  *(this + 2) = 0;
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }

  return WTF::fastFree(this, a2);
}

IPC::Encoder *_ZN3WTF6Detail15CallableWrapperIZN3IPC43handleMessageAsyncWithoutUsingIPCConnectionIN8Messages20PushClientConnection23GetPushTopicsForTestingEN8WebPushD20PushClientConnectionES8_FvONS_17CompletionHandlerIFvNS_6VectorINS_6StringELm0ENS_15CrashOnOverflowELm16ENS_10FastMallocEEESE_EEEEEEvRNS2_7DecoderEONS_8FunctionIFvONS_9UniqueRefINS2_7EncoderEEEEEEPT0_MT1_T2_EUlDpOT_E_vJSE_SE_EE4callESE_SE_(uint64_t a1, void *a2, uint64_t a3)
{
  v6 = IPC::Encoder::operator new(0x238, a2);
  v7 = *(a1 + 8);
  *v6 = 3470;
  *(v6 + 1) = v7;
  *(v6 + 2) = 0;
  *(v6 + 3) = 0;
  *(v6 + 69) = 0;
  *(v6 + 70) = 0;
  *(v6 + 68) = 0;
  IPC::Encoder::encodeHeader(v6);
  v12 = v6;
  IPC::VectorArgumentCoder<false,WTF::String,0ul,WTF::CrashOnOverflow,16ul>::encode<IPC::Encoder,WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>(v6, a2);
  IPC::VectorArgumentCoder<false,WTF::String,0ul,WTF::CrashOnOverflow,16ul>::encode<IPC::Encoder,WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>(v6, a3);
  (*(**(a1 + 16) + 16))(*(a1 + 16), &v12);
  result = v12;
  v12 = 0;
  if (result)
  {
    IPC::Encoder::~Encoder(result, v8);
    return bmalloc::api::tzoneFree(v10, v11);
  }

  return result;
}

void IPC::ArgumentCoder<std::tuple<WebCore::NotificationData,WTF::RefPtr<WebCore::NotificationResources,WTF::RawPtrTraits<WebCore::NotificationResources>,WTF::DefaultRefDerefTraits<WebCore::NotificationResources>>>,void>::decode<IPC::Decoder>(IPC::Decoder *a1@<X0>, _BYTE *a2@<X8>)
{
  v11 = *MEMORY[0x1E69E9840];
  IPC::ArgumentCoder<WebCore::NotificationData,void>::decode(a1, v9);
  if (v10 & 1) != 0 || ((v5 = *a1, v6 = *(a1 + 1), *a1 = 0, *(a1 + 1) = 0, (v7 = *(a1 + 3)) != 0) ? (v8 = v6 == 0) : (v8 = 1), !v8 && ((*(*v7 + 16))(v7, v5), (v10)))
  {
    IPC::ArgumentCoder<std::tuple<WebCore::NotificationData,WTF::RefPtr<WebCore::NotificationResources,WTF::RawPtrTraits<WebCore::NotificationResources>,WTF::DefaultRefDerefTraits<WebCore::NotificationResources>>>,void>::decode<IPC::Decoder,WebCore::NotificationData>(a1, v9, a2);
    if (v10)
    {
      WebCore::NotificationData::~NotificationData(v9, v4);
    }
  }

  else
  {
    *a2 = 0;
    a2[272] = 0;
  }
}

uint64_t IPC::ArgumentCoder<std::tuple<WebCore::NotificationData,WTF::RefPtr<WebCore::NotificationResources,WTF::RawPtrTraits<WebCore::NotificationResources>,WTF::DefaultRefDerefTraits<WebCore::NotificationResources>>>,void>::decode<IPC::Decoder,WebCore::NotificationData>@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  IPC::ArgumentCoder<WTF::RefPtr<WebCore::NotificationResources,WTF::RawPtrTraits<WebCore::NotificationResources>,WTF::DefaultRefDerefTraits<WebCore::NotificationResources>>,void>::decode<IPC::Decoder,WebCore::NotificationResources>(a1, &v17);
  if (v18)
  {
    while ((*(a2 + 256) & 1) == 0)
    {
      __break(1u);
LABEL_12:
      result = (*(*result + 16))(result, v7);
      if ((v18 & 1) == 0)
      {
        goto LABEL_10;
      }
    }

    WTF::URL::URL(a3, a2);
    v8 = *(a2 + 40);
    *(a2 + 40) = 0u;
    *(a3 + 40) = v8;
    v9 = *(a2 + 56);
    *(a2 + 56) = 0u;
    *(a3 + 56) = v9;
    v10 = *(a2 + 72);
    *(a2 + 72) = 0;
    *(a3 + 72) = v10;
    *(a3 + 80) = *(a2 + 80);
    v11 = *(a2 + 88);
    *(a2 + 88) = 0;
    *(a3 + 88) = v11;
    WTF::URL::URL(a3 + 96, (a2 + 96));
    *(a3 + 224) = 0u;
    v12 = *(a2 + 192);
    *(a3 + 176) = *(a2 + 176);
    *(a3 + 192) = v12;
    *(a3 + 208) = *(a2 + 208);
    v13 = *(a2 + 160);
    *(a3 + 144) = *(a2 + 144);
    *(a3 + 160) = v13;
    result = WTF::VectorBuffer<unsigned char,0ul,WTF::FastMalloc>::adopt(a3 + 224, (a2 + 224));
    *(a3 + 240) = *(a2 + 240);
    *(a3 + 256) = v17;
    v14 = 1;
  }

  else
  {
    v7 = *a1;
    v15 = a1[1];
    *a1 = 0;
    a1[1] = 0;
    result = a1[3];
    if (result)
    {
      v16 = v15 == 0;
    }

    else
    {
      v16 = 1;
    }

    if (!v16)
    {
      goto LABEL_12;
    }

LABEL_10:
    v14 = 0;
    *a3 = 0;
  }

  *(a3 + 272) = v14;
  return result;
}

void IPC::ArgumentCoder<WTF::RefPtr<WebCore::NotificationResources,WTF::RawPtrTraits<WebCore::NotificationResources>,WTF::DefaultRefDerefTraits<WebCore::NotificationResources>>,void>::decode<IPC::Decoder,WebCore::NotificationResources>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = a1[1];
  v4 = a1[2];
  v5 = *a1;
  if (v3 <= &v4[-*a1])
  {
    *a1 = 0;
    a1[1] = 0;
    v10 = a1;
    v7 = a1[3];
    if (v7)
    {
      if (v3)
      {
        (*(*v7 + 16))(v7);
        v5 = *v10;
        v3 = v10[1];
        goto LABEL_13;
      }
    }

    else
    {
      v3 = 0;
    }

    v5 = 0;
LABEL_13:
    *v10 = 0;
    v10[1] = 0;
    v8 = v10[3];
    if (v8)
    {
      if (v3)
      {
        (*(*v8 + 16))(v8, v5);
        v5 = *v10;
        v3 = v10[1];
        goto LABEL_17;
      }
    }

    else
    {
      v3 = 0;
    }

    v5 = 0;
LABEL_17:
    *v10 = 0;
    v10[1] = 0;
    v9 = v10[3];
    if (v9)
    {
      if (v3)
      {
        (*(*v9 + 16))(v9, v5);
      }
    }

    *a2 = 0;
    a2[8] = 0;
    return;
  }

  a1[2] = (v4 + 1);
  if (!v4)
  {
    v10 = a1;
    goto LABEL_13;
  }

  v6 = *v4;
  if (v6 >= 2)
  {
    v10 = a1;
    goto LABEL_17;
  }

  if (v6)
  {
    IPC::ArgumentCoder<WebCore::NotificationResources,void>::decode(a1, &v11);
    *a2 = 0;
    a2[8] = 0;
    if (v12 != 1)
    {
      return;
    }

    *a2 = v11;
  }

  else
  {
    *a2 = 0;
  }

  a2[8] = 1;
}

void *_ZN3WTF6Detail15CallableWrapperIZN3IPC43handleMessageAsyncWithoutUsingIPCConnectionIN8Messages20PushClientConnection16ShowNotificationEN8WebPushD20PushClientConnectionES8_FvRKN7WebCore16NotificationDataENS_6RefPtrINS9_21NotificationResourcesENS_12RawPtrTraitsISE_EENS_21DefaultRefDerefTraitsISE_EEEEONS_17CompletionHandlerIFvvEEEEEEvRNS2_7DecoderEONS_8FunctionIFvONS_9UniqueRefINS2_7EncoderEEEEEEPT0_MT1_T2_EUlDpOT_E_vJEED1Ev(void *a1)
{
  *a1 = &unk_1F10EBC70;
  v2 = a1[3];
  a1[3] = 0;
  if (v2)
  {
    if (v2[4] == 1)
    {
      (*(*v2 + 24))(v2);
    }

    else
    {
      --v2[4];
    }
  }

  v3 = a1[2];
  a1[2] = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  return a1;
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC43handleMessageAsyncWithoutUsingIPCConnectionIN8Messages20PushClientConnection16ShowNotificationEN8WebPushD20PushClientConnectionES8_FvRKN7WebCore16NotificationDataENS_6RefPtrINS9_21NotificationResourcesENS_12RawPtrTraitsISE_EENS_21DefaultRefDerefTraitsISE_EEEEONS_17CompletionHandlerIFvvEEEEEEvRNS2_7DecoderEONS_8FunctionIFvONS_9UniqueRefINS2_7EncoderEEEEEEPT0_MT1_T2_EUlDpOT_E_vJEED0Ev(WTF *this, void *a2)
{
  *this = &unk_1F10EBC70;
  v3 = *(this + 3);
  *(this + 3) = 0;
  if (v3)
  {
    if (v3[4] == 1)
    {
      (*(*v3 + 24))(v3);
    }

    else
    {
      --v3[4];
    }
  }

  v4 = *(this + 2);
  *(this + 2) = 0;
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }

  return WTF::fastFree(this, a2);
}

IPC::Encoder *_ZN3WTF6Detail15CallableWrapperIZN3IPC43handleMessageAsyncWithoutUsingIPCConnectionIN8Messages20PushClientConnection16ShowNotificationEN8WebPushD20PushClientConnectionES8_FvRKN7WebCore16NotificationDataENS_6RefPtrINS9_21NotificationResourcesENS_12RawPtrTraitsISE_EENS_21DefaultRefDerefTraitsISE_EEEEONS_17CompletionHandlerIFvvEEEEEEvRNS2_7DecoderEONS_8FunctionIFvONS_9UniqueRefINS2_7EncoderEEEEEEPT0_MT1_T2_EUlDpOT_E_vJEE4callEv(uint64_t a1, void *a2)
{
  v3 = IPC::Encoder::operator new(0x238, a2);
  v4 = *(a1 + 8);
  *v3 = 3481;
  *(v3 + 1) = v4;
  *(v3 + 2) = 0;
  *(v3 + 3) = 0;
  *(v3 + 69) = 0;
  *(v3 + 70) = 0;
  *(v3 + 68) = 0;
  IPC::Encoder::encodeHeader(v3);
  v9 = v3;
  (*(**(a1 + 16) + 16))(*(a1 + 16), &v9);
  result = v9;
  v9 = 0;
  if (result)
  {
    IPC::Encoder::~Encoder(result, v5);
    return bmalloc::api::tzoneFree(v7, v8);
  }

  return result;
}

void IPC::ArgumentCoder<std::tuple<WTF::URL,WTF::String>,void>::decode<IPC::Decoder>(IPC::Decoder *a1@<X0>, _BYTE *a2@<X8>)
{
  IPC::ArgumentCoder<WTF::URL,void>::decode(a1, v10);
  if (v11 & 1) != 0 || ((v6 = *a1, v7 = *(a1 + 1), *a1 = 0, *(a1 + 1) = 0, (v8 = *(a1 + 3)) != 0) ? (v9 = v7 == 0) : (v9 = 1), !v9 && ((*(*v8 + 16))(v8, v6), (v11)))
  {
    IPC::ArgumentCoder<std::tuple<WTF::URL,WTF::String>,void>::decode<IPC::Decoder,WTF::URL>(a1, v10, a2);
    if (v11)
    {
      v5 = v10[0];
      v10[0] = 0;
      if (v5)
      {
        if (atomic_fetch_add_explicit(v5, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v5, v4);
        }
      }
    }
  }

  else
  {
    *a2 = 0;
    a2[48] = 0;
  }
}

void IPC::ArgumentCoder<std::tuple<WTF::URL,WTF::String>,void>::decode<IPC::Decoder,WTF::URL>(IPC::Decoder *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  IPC::ArgumentCoder<WTF::String,void>::decode<IPC::Decoder>(a1, &v11);
  if ((v12 & 1) == 0)
  {
    goto LABEL_6;
  }

  do
  {
    if (*(a2 + 40))
    {
      WTF::URL::URL(a3, a2);
      *(a3 + 40) = v11;
      v6 = 1;
      goto LABEL_4;
    }

    __break(1u);
LABEL_6:
    v7 = *a1;
    v8 = *(a1 + 1);
    *a1 = 0;
    *(a1 + 1) = 0;
    v9 = *(a1 + 3);
    if (v9)
    {
      v10 = v8 == 0;
    }

    else
    {
      v10 = 1;
    }

    if (v10)
    {
      break;
    }

    (*(*v9 + 16))(v9, v7);
  }

  while ((v12 & 1) != 0);
  v6 = 0;
  *a3 = 0;
LABEL_4:
  *(a3 + 48) = v6;
}

void *_ZN3WTF6Detail15CallableWrapperIZN3IPC43handleMessageAsyncWithoutUsingIPCConnectionIN8Messages20PushClientConnection16GetNotificationsEN8WebPushD20PushClientConnectionES8_FvRKNS_3URLERKNS_6StringEONS_17CompletionHandlerIFvONSt12experimental15fundamentals_v38expectedINS_6VectorIN7WebCore16NotificationDataELm0ENS_15CrashOnOverflowELm16ENS_10FastMallocEEENSK_13ExceptionDataEEEEEEEEEvRNS2_7DecoderEONS_8FunctionIFvONS_9UniqueRefINS2_7EncoderEEEEEEPT0_MT1_T2_EUlDpOT_E_vJSR_EED1Ev(void *a1)
{
  *a1 = &unk_1F10EBC98;
  v2 = a1[3];
  a1[3] = 0;
  if (v2)
  {
    if (v2[4] == 1)
    {
      (*(*v2 + 24))(v2);
    }

    else
    {
      --v2[4];
    }
  }

  v3 = a1[2];
  a1[2] = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  return a1;
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC43handleMessageAsyncWithoutUsingIPCConnectionIN8Messages20PushClientConnection16GetNotificationsEN8WebPushD20PushClientConnectionES8_FvRKNS_3URLERKNS_6StringEONS_17CompletionHandlerIFvONSt12experimental15fundamentals_v38expectedINS_6VectorIN7WebCore16NotificationDataELm0ENS_15CrashOnOverflowELm16ENS_10FastMallocEEENSK_13ExceptionDataEEEEEEEEEvRNS2_7DecoderEONS_8FunctionIFvONS_9UniqueRefINS2_7EncoderEEEEEEPT0_MT1_T2_EUlDpOT_E_vJSR_EED0Ev(WTF *this, void *a2)
{
  *this = &unk_1F10EBC98;
  v3 = *(this + 3);
  *(this + 3) = 0;
  if (v3)
  {
    if (v3[4] == 1)
    {
      (*(*v3 + 24))(v3);
    }

    else
    {
      --v3[4];
    }
  }

  v4 = *(this + 2);
  *(this + 2) = 0;
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }

  return WTF::fastFree(this, a2);
}

IPC::Encoder *_ZN3WTF6Detail15CallableWrapperIZN3IPC43handleMessageAsyncWithoutUsingIPCConnectionIN8Messages20PushClientConnection16GetNotificationsEN8WebPushD20PushClientConnectionES8_FvRKNS_3URLERKNS_6StringEONS_17CompletionHandlerIFvONSt12experimental15fundamentals_v38expectedINS_6VectorIN7WebCore16NotificationDataELm0ENS_15CrashOnOverflowELm16ENS_10FastMallocEEENSK_13ExceptionDataEEEEEEEEEvRNS2_7DecoderEONS_8FunctionIFvONS_9UniqueRefINS2_7EncoderEEEEEEPT0_MT1_T2_EUlDpOT_E_vJSR_EE4callESR_(uint64_t a1, void *a2)
{
  v4 = IPC::Encoder::operator new(0x238, a2);
  v5 = *(a1 + 8);
  *v4 = 3465;
  *(v4 + 1) = v5;
  *(v4 + 2) = 0;
  *(v4 + 3) = 0;
  *(v4 + 69) = 0;
  *(v4 + 70) = 0;
  *(v4 + 68) = 0;
  IPC::Encoder::encodeHeader(v4);
  v10 = v4;
  IPC::ArgumentCoder<std::experimental::fundamentals_v3::expected<WTF::Vector<WebCore::NotificationData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WebCore::ExceptionData>,void>::encode<IPC::Encoder>(v4, a2);
  (*(**(a1 + 16) + 16))(*(a1 + 16), &v10);
  result = v10;
  v10 = 0;
  if (result)
  {
    IPC::Encoder::~Encoder(result, v6);
    return bmalloc::api::tzoneFree(v8, v9);
  }

  return result;
}

void *IPC::ArgumentCoder<std::experimental::fundamentals_v3::expected<WTF::Vector<WebCore::NotificationData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WebCore::ExceptionData>,void>::encode<IPC::Encoder>(IPC::Encoder *a1, uint64_t a2)
{
  if (*(a2 + 16))
  {
    v7 = 0;
    v4 = IPC::Encoder::operator<<<BOOL>(a1, &v7);
    if (*(a2 + 16) == 1)
    {
      IPC::ArgumentCoder<BOOL,void>::encode<IPC::Encoder>(a1, *a2);
      return IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(a1, (a2 + 8));
    }

LABEL_7:
    mpark::throw_bad_variant_access(v4);
  }

  v6 = 1;
  v4 = IPC::Encoder::operator<<<BOOL>(a1, &v6);
  if (*(a2 + 16))
  {
    goto LABEL_7;
  }

  return IPC::VectorArgumentCoder<false,WebCore::NotificationData,0ul,WTF::CrashOnOverflow,16ul>::encode<IPC::Encoder,WTF::Vector<WebCore::NotificationData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>(a1, a2);
}

uint64_t IPC::VectorArgumentCoder<false,WebCore::NotificationData,0ul,WTF::CrashOnOverflow,16ul>::encode<IPC::Encoder,WTF::Vector<WebCore::NotificationData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>(IPC::Encoder *a1, uint64_t a2)
{
  result = IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(a1, *(a2 + 12));
  v5 = *(a2 + 12);
  if (v5)
  {
    v6 = *a2;
    v7 = v5 << 8;
    do
    {
      result = IPC::ArgumentCoder<WebCore::NotificationData,void>::encode(a1, v6);
      v6 += 256;
      v7 -= 256;
    }

    while (v7);
  }

  return result;
}

WTF::StringImpl *IPC::ArgumentCoder<std::tuple<WebCore::SecurityOriginData,WTF::UUID>,void>::decode<IPC::Decoder>@<X0>(IPC::Decoder *a1@<X0>, _BYTE *a2@<X8>)
{
  v14 = *MEMORY[0x1E69E9840];
  IPC::ArgumentCoder<WebCore::SecurityOriginData,void>::decode(a1, &v10);
  if (v13)
  {
    result = IPC::ArgumentCoder<std::tuple<WebCore::SecurityOriginData,WTF::UUID>,void>::decode<IPC::Decoder,WebCore::SecurityOriginData>(a1, &v10, a2);
    if ((v13 & 1) != 0 && !v12)
    {
      v6 = v11;
      v11 = 0;
      if (v6 && atomic_fetch_add_explicit(v6, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v6, v5);
      }

      result = v10;
      v10 = 0;
      if (result)
      {
        if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          return WTF::StringImpl::destroy(result, v5);
        }
      }
    }
  }

  else
  {
    v7 = *a1;
    v8 = *(a1 + 1);
    *a1 = 0;
    *(a1 + 1) = 0;
    result = *(a1 + 3);
    if (result)
    {
      v9 = v8 == 0;
    }

    else
    {
      v9 = 1;
    }

    if (!v9)
    {
      result = (*(*result + 16))(result, v7);
    }

    *a2 = 0;
    a2[48] = 0;
  }

  return result;
}

_BYTE *IPC::ArgumentCoder<std::tuple<WebCore::SecurityOriginData,WTF::UUID>,void>::decode<IPC::Decoder,WebCore::SecurityOriginData>@<X0>(IPC::Decoder *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v13 = *MEMORY[0x1E69E9840];
  IPC::ArgumentCoder<WTF::UUID,void>::decode(a1, &v11);
  if (v12)
  {
    if (*(a2 + 32))
    {
      result = mpark::detail::move_assignment<mpark::detail::traits<WebCore::SecurityOriginData::Tuple,WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::OpaqueOriginIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,(mpark::detail::Trait)1>::move_assignment(a3);
      *(a3 + 32) = v11;
      v7 = 1;
      goto LABEL_4;
    }

    __break(1u);
  }

  v8 = *a1;
  v9 = *(a1 + 1);
  *a1 = 0;
  *(a1 + 1) = 0;
  result = *(a1 + 3);
  if (result)
  {
    v10 = v9 == 0;
  }

  else
  {
    v10 = 1;
  }

  if (!v10)
  {
    result = (*(*result + 16))(result, v8);
  }

  v7 = 0;
  *a3 = 0;
LABEL_4:
  *(a3 + 48) = v7;
  return result;
}

void *_ZN3WTF6Detail15CallableWrapperIZN3IPC43handleMessageAsyncWithoutUsingIPCConnectionIN8Messages20PushClientConnection21RequestPushPermissionEN8WebPushD20PushClientConnectionES8_FvON7WebCore18SecurityOriginDataEONS_17CompletionHandlerIFvbEEEEEEvRNS2_7DecoderEONS_8FunctionIFvONS_9UniqueRefINS2_7EncoderEEEEEEPT0_MT1_T2_EUlDpOT_E_vJbEED1Ev(void *a1)
{
  *a1 = &unk_1F10EBCC0;
  v2 = a1[3];
  a1[3] = 0;
  if (v2)
  {
    if (v2[4] == 1)
    {
      (*(*v2 + 24))(v2);
    }

    else
    {
      --v2[4];
    }
  }

  v3 = a1[2];
  a1[2] = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  return a1;
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC43handleMessageAsyncWithoutUsingIPCConnectionIN8Messages20PushClientConnection21RequestPushPermissionEN8WebPushD20PushClientConnectionES8_FvON7WebCore18SecurityOriginDataEONS_17CompletionHandlerIFvbEEEEEEvRNS2_7DecoderEONS_8FunctionIFvONS_9UniqueRefINS2_7EncoderEEEEEEPT0_MT1_T2_EUlDpOT_E_vJbEED0Ev(WTF *this, void *a2)
{
  *this = &unk_1F10EBCC0;
  v3 = *(this + 3);
  *(this + 3) = 0;
  if (v3)
  {
    if (v3[4] == 1)
    {
      (*(*v3 + 24))(v3);
    }

    else
    {
      --v3[4];
    }
  }

  v4 = *(this + 2);
  *(this + 2) = 0;
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }

  return WTF::fastFree(this, a2);
}

IPC::Encoder *_ZN3WTF6Detail15CallableWrapperIZN3IPC43handleMessageAsyncWithoutUsingIPCConnectionIN8Messages20PushClientConnection21RequestPushPermissionEN8WebPushD20PushClientConnectionES8_FvON7WebCore18SecurityOriginDataEONS_17CompletionHandlerIFvbEEEEEEvRNS2_7DecoderEONS_8FunctionIFvONS_9UniqueRefINS2_7EncoderEEEEEEPT0_MT1_T2_EUlDpOT_E_vJbEE4callEb(uint64_t a1, void *a2)
{
  v9 = a2;
  v3 = IPC::Encoder::operator new(0x238, a2);
  v4 = *(a1 + 8);
  *v3 = 3476;
  *(v3 + 1) = v4;
  *(v3 + 2) = 0;
  *(v3 + 3) = 0;
  *(v3 + 69) = 0;
  *(v3 + 70) = 0;
  *(v3 + 68) = 0;
  IPC::Encoder::encodeHeader(v3);
  v10 = v3;
  IPC::Encoder::operator<<<BOOL>(v3, &v9);
  (*(**(a1 + 16) + 16))(*(a1 + 16), &v10);
  result = v10;
  v10 = 0;
  if (result)
  {
    IPC::Encoder::~Encoder(result, v5);
    return bmalloc::api::tzoneFree(v7, v8);
  }

  return result;
}

WTF::StringImpl *IPC::ArgumentCoder<std::tuple<WebCore::SecurityOriginData,std::optional<unsigned long long>>,void>::decode<IPC::Decoder>@<X0>(IPC::Decoder *a1@<X0>, _BYTE *a2@<X8>)
{
  v14 = *MEMORY[0x1E69E9840];
  IPC::ArgumentCoder<WebCore::SecurityOriginData,void>::decode(a1, &v10);
  if (v13)
  {
    result = IPC::ArgumentCoder<std::tuple<WebCore::SecurityOriginData,std::optional<unsigned long long>>,void>::decode<IPC::Decoder,WebCore::SecurityOriginData>(a1, &v10, a2);
    if ((v13 & 1) != 0 && !v12)
    {
      v6 = v11;
      v11 = 0;
      if (v6 && atomic_fetch_add_explicit(v6, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v6, v5);
      }

      result = v10;
      v10 = 0;
      if (result)
      {
        if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          return WTF::StringImpl::destroy(result, v5);
        }
      }
    }
  }

  else
  {
    v7 = *a1;
    v8 = *(a1 + 1);
    *a1 = 0;
    *(a1 + 1) = 0;
    result = *(a1 + 3);
    if (result)
    {
      v9 = v8 == 0;
    }

    else
    {
      v9 = 1;
    }

    if (!v9)
    {
      result = (*(*result + 16))(result, v7);
    }

    *a2 = 0;
    a2[48] = 0;
  }

  return result;
}

uint64_t IPC::ArgumentCoder<std::tuple<WebCore::SecurityOriginData,std::optional<unsigned long long>>,void>::decode<IPC::Decoder,WebCore::SecurityOriginData>@<X0>(IPC::Decoder *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  result = IPC::Decoder::decode<std::optional<unsigned long long>>(a1, &v7);
  if ((v8 & 1) == 0)
  {
    v6 = 0;
    *a3 = 0;
    goto LABEL_5;
  }

  if (*(a2 + 32))
  {
    result = mpark::detail::move_assignment<mpark::detail::traits<WebCore::SecurityOriginData::Tuple,WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::OpaqueOriginIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,(mpark::detail::Trait)1>::move_assignment(a3);
    *(a3 + 32) = v7;
    v6 = 1;
LABEL_5:
    *(a3 + 48) = v6;
    return result;
  }

  __break(1u);
  return result;
}

void *_ZN3WTF6Detail15CallableWrapperIZN3IPC43handleMessageAsyncWithoutUsingIPCConnectionIN8Messages20PushClientConnection21GetAppBadgeForTestingEN8WebPushD20PushClientConnectionES8_FvONS_17CompletionHandlerIFvNSt3__18optionalIyEEEEEEEEvRNS2_7DecoderEONS_8FunctionIFvONS_9UniqueRefINS2_7EncoderEEEEEEPT0_MT1_T2_EUlDpOT_E_vJSC_EED1Ev(void *a1)
{
  *a1 = &unk_1F10EBCE8;
  v2 = a1[3];
  a1[3] = 0;
  if (v2)
  {
    if (v2[4] == 1)
    {
      (*(*v2 + 24))(v2);
    }

    else
    {
      --v2[4];
    }
  }

  v3 = a1[2];
  a1[2] = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  return a1;
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC43handleMessageAsyncWithoutUsingIPCConnectionIN8Messages20PushClientConnection21GetAppBadgeForTestingEN8WebPushD20PushClientConnectionES8_FvONS_17CompletionHandlerIFvNSt3__18optionalIyEEEEEEEEvRNS2_7DecoderEONS_8FunctionIFvONS_9UniqueRefINS2_7EncoderEEEEEEPT0_MT1_T2_EUlDpOT_E_vJSC_EED0Ev(WTF *this, void *a2)
{
  *this = &unk_1F10EBCE8;
  v3 = *(this + 3);
  *(this + 3) = 0;
  if (v3)
  {
    if (v3[4] == 1)
    {
      (*(*v3 + 24))(v3);
    }

    else
    {
      --v3[4];
    }
  }

  v4 = *(this + 2);
  *(this + 2) = 0;
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }

  return WTF::fastFree(this, a2);
}

IPC::Encoder *_ZN3WTF6Detail15CallableWrapperIZN3IPC43handleMessageAsyncWithoutUsingIPCConnectionIN8Messages20PushClientConnection21GetAppBadgeForTestingEN8WebPushD20PushClientConnectionES8_FvONS_17CompletionHandlerIFvNSt3__18optionalIyEEEEEEEEvRNS2_7DecoderEONS_8FunctionIFvONS_9UniqueRefINS2_7EncoderEEEEEEPT0_MT1_T2_EUlDpOT_E_vJSC_EE4callESC_(uint64_t a1, void *a2, uint64_t a3)
{
  v10[0] = a2;
  v10[1] = a3;
  v4 = IPC::Encoder::operator new(0x238, a2);
  v5 = *(a1 + 8);
  *v4 = 3464;
  *(v4 + 1) = v5;
  *(v4 + 2) = 0;
  *(v4 + 3) = 0;
  *(v4 + 69) = 0;
  *(v4 + 70) = 0;
  *(v4 + 68) = 0;
  IPC::Encoder::encodeHeader(v4);
  v11 = v4;
  IPC::ArgumentCoder<std::optional<unsigned long long>,void>::encode<IPC::Encoder,std::optional<unsigned long long>>(v4, v10);
  (*(**(a1 + 16) + 16))(*(a1 + 16), &v11);
  result = v11;
  v11 = 0;
  if (result)
  {
    IPC::Encoder::~Encoder(result, v6);
    return bmalloc::api::tzoneFree(v8, v9);
  }

  return result;
}

void *_ZN3WTF6Detail15CallableWrapperIZN3IPC43handleMessageAsyncWithoutUsingIPCConnectionIN8Messages20PushClientConnection32SetServiceWorkerIsBeingInspectedEN8WebPushD20PushClientConnectionES8_FvONS_3URLEbONS_17CompletionHandlerIFvvEEEEEEvRNS2_7DecoderEONS_8FunctionIFvONS_9UniqueRefINS2_7EncoderEEEEEEPT0_MT1_T2_EUlDpOT_E_vJEED1Ev(void *a1)
{
  *a1 = &unk_1F10EBD10;
  v2 = a1[3];
  a1[3] = 0;
  if (v2)
  {
    if (v2[4] == 1)
    {
      (*(*v2 + 24))(v2);
    }

    else
    {
      --v2[4];
    }
  }

  v3 = a1[2];
  a1[2] = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  return a1;
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC43handleMessageAsyncWithoutUsingIPCConnectionIN8Messages20PushClientConnection32SetServiceWorkerIsBeingInspectedEN8WebPushD20PushClientConnectionES8_FvONS_3URLEbONS_17CompletionHandlerIFvvEEEEEEvRNS2_7DecoderEONS_8FunctionIFvONS_9UniqueRefINS2_7EncoderEEEEEEPT0_MT1_T2_EUlDpOT_E_vJEED0Ev(WTF *this, void *a2)
{
  *this = &unk_1F10EBD10;
  v3 = *(this + 3);
  *(this + 3) = 0;
  if (v3)
  {
    if (v3[4] == 1)
    {
      (*(*v3 + 24))(v3);
    }

    else
    {
      --v3[4];
    }
  }

  v4 = *(this + 2);
  *(this + 2) = 0;
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }

  return WTF::fastFree(this, a2);
}

IPC::Encoder *_ZN3WTF6Detail15CallableWrapperIZN3IPC43handleMessageAsyncWithoutUsingIPCConnectionIN8Messages20PushClientConnection32SetServiceWorkerIsBeingInspectedEN8WebPushD20PushClientConnectionES8_FvONS_3URLEbONS_17CompletionHandlerIFvvEEEEEEvRNS2_7DecoderEONS_8FunctionIFvONS_9UniqueRefINS2_7EncoderEEEEEEPT0_MT1_T2_EUlDpOT_E_vJEE4callEv(uint64_t a1, void *a2)
{
  v3 = IPC::Encoder::operator new(0x238, a2);
  v4 = *(a1 + 8);
  *v3 = 3480;
  *(v3 + 1) = v4;
  *(v3 + 2) = 0;
  *(v3 + 3) = 0;
  *(v3 + 69) = 0;
  *(v3 + 70) = 0;
  *(v3 + 68) = 0;
  IPC::Encoder::encodeHeader(v3);
  v9 = v3;
  (*(**(a1 + 16) + 16))(*(a1 + 16), &v9);
  result = v9;
  v9 = 0;
  if (result)
  {
    IPC::Encoder::~Encoder(result, v5);
    return bmalloc::api::tzoneFree(v7, v8);
  }

  return result;
}

uint64_t IPC::Decoder::decode<std::tuple<unsigned int>>(uint64_t *a1)
{
  v2 = IPC::ArgumentCoder<std::tuple<unsigned int>,void>::decode<IPC::Decoder>(a1);
  if ((v2 & 0x100000000) == 0)
  {
    v4 = *a1;
    v5 = a1[1];
    *a1 = 0;
    a1[1] = 0;
    v6 = a1[3];
    if (v6)
    {
      v7 = v5 == 0;
    }

    else
    {
      v7 = 1;
    }

    if (!v7)
    {
      v8 = v2;
      (*(*v6 + 16))(v6, v4);
      v2 = v8;
    }
  }

  return v2 & 0xFFFFFFFFFFLL;
}