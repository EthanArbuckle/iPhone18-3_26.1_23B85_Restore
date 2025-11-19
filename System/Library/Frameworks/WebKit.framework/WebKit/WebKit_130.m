void *WTF::Detail::CallableWrapper<WebKit::PreconnectTask::start(WTF::CompletionHandler<void ()(WebCore::ResourceError const&,WebCore::NetworkLoadMetrics const&)> &&,WTF::Seconds)::$_0,void,WebCore::ResourceError const&,WebCore::NetworkLoadMetrics const&>::~CallableWrapper(void *a1)
{
  *a1 = &unk_1F1103A10;
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
    if (v3[5] == 1)
    {
      (*(*v3 + 24))(v3);
    }

    else
    {
      --v3[5];
    }
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WebKit::PreconnectTask::start(WTF::CompletionHandler<void ()(WebCore::ResourceError const&,WebCore::NetworkLoadMetrics const&)> &&,WTF::Seconds)::$_0,void,WebCore::ResourceError const&,WebCore::NetworkLoadMetrics const&>::~CallableWrapper(WTF *this, void *a2)
{
  *this = &unk_1F1103A10;
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
    if (v4[5] == 1)
    {
      (*(*v4 + 24))(v4);
    }

    else
    {
      --v4[5];
    }
  }

  return WTF::fastFree(this, a2);
}

uint64_t WTF::Detail::CallableWrapper<WebKit::PreconnectTask::start(WTF::CompletionHandler<void ()(WebCore::ResourceError const&,WebCore::NetworkLoadMetrics const&)> &&,WTF::Seconds)::$_0,void,WebCore::ResourceError const&,WebCore::NetworkLoadMetrics const&>::call(uint64_t result)
{
  v1 = *(result + 16);
  if (v1)
  {
    *(result + 16) = 0;
    (*(*v1 + 16))(v1);
    v2 = *(*v1 + 8);

    return v2(v1);
  }

  return result;
}

void sub_19DCD7BFC(_Unwind_Exception *a1)
{
  CFRelease(*(v2 + 8));

  _Unwind_Resume(a1);
}

void sub_19DCD7DE0(_Unwind_Exception *exception_object)
{
  if (v1)
  {
  }

  _Unwind_Resume(exception_object);
}

void sub_19DCD85E8(_Unwind_Exception *exception_object, void *a2, int a3, int a4, int a5, int a6, int a7, int a8, WTF::StringImpl *a9, WTF *a10)
{
  if (a10)
  {
    WTF::fastFree(a10, a2);
  }

  _Unwind_Resume(exception_object);
}

void WebKit::WebPagePreferencesLockdownModeObserver::willChangeLockdownMode(WebKit::WebPagePreferencesLockdownModeObserver *this)
{
  v1 = *(this + 2);
  if (v1)
  {
    v2 = *(v1 + 8);
    if (v2)
    {
      CFRetain(*(v2 + 8));
      if (*(v2 + 8))
      {
        v4 = *(v2 + 8);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v3 = v4;
          CFRelease(*(v2 + 8));
          [v4 willChangeValueForKey:@"_captivePortalModeEnabled"];
          [v4 willChangeValueForKey:@"lockdownModeEnabled"];
        }

        else
        {
          __break(0xC471u);
        }
      }

      else
      {

        CFRelease(0);
      }
    }
  }
}

void WebKit::WebPagePreferencesLockdownModeObserver::didChangeLockdownMode(WebKit::WebPagePreferencesLockdownModeObserver *this)
{
  v1 = *(this + 2);
  if (v1)
  {
    v2 = *(v1 + 8);
    if (v2)
    {
      CFRetain(*(v2 + 8));
      if (*(v2 + 8))
      {
        v4 = *(v2 + 8);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v3 = v4;
          CFRelease(*(v2 + 8));
          [v4 didChangeValueForKey:@"_captivePortalModeEnabled"];
          [v4 didChangeValueForKey:@"lockdownModeEnabled"];
        }

        else
        {
          __break(0xC471u);
        }
      }

      else
      {

        CFRelease(0);
      }
    }
  }
}

uint64_t WebKit::WebPagePreferencesLockdownModeObserver::ref(WebKit::WebPagePreferencesLockdownModeObserver *this)
{
  v1 = *(this + 2);
  if (v1)
  {
    v2 = *(v1 + 8);
    if (v2)
    {
      return CFRetain(*(v2 + 8));
    }
  }

  result = 121;
  __break(0xC471u);
  return result;
}

void WebKit::WebPagePreferencesLockdownModeObserver::deref(WebKit::WebPagePreferencesLockdownModeObserver *this)
{
  v1 = *(this + 2);
  if (v1 && (v2 = *(v1 + 8)) != 0)
  {
    CFRelease(*(v2 + 8));
  }

  else
  {
    __break(0xC471u);
  }
}

void WebKit::WebPageProxy::didGeneratePageLoadTiming(WebKit::NavigationState *a1, WebKit::WebPageProxy *a2)
{
  v3 = WebKit::NavigationState::fromWebPage(a1, a2);
  if (v3)
  {
    v4 = v3;
    WebKit::NavigationState::ref(v3);
    WebKit::NavigationState::didGeneratePageLoadTiming(v4, a2);

    WebKit::NavigationState::deref(v4);
  }
}

void WebKit::WebPageProxy::didCommitLayerTree(WebKit::WebPageProxy *this, const WebKit::RemoteLayerTreeTransaction *a2)
{
  v3 = this;
  if (!*(a2 + 5))
  {
    v4 = *(a2 + 23);
    v28[0] = v4;
    if ((v4 & 0x8000000000000) != 0)
    {
      atomic_fetch_add((v4 & 0xFFFFFFFFFFFFLL), 1u);
    }

    WebKit::WebPageProxy::themeColorChanged(this, v28);
    if ((v28[0] & 0x8000000000000) != 0)
    {
      v26 = (v28[0] & 0xFFFFFFFFFFFFLL);
      if (atomic_fetch_add((v28[0] & 0xFFFFFFFFFFFFLL), 0xFFFFFFFF) == 1)
      {
        atomic_store(1u, v26);
        WTF::fastFree(v26, v5);
      }
    }

    v6 = *(a2 + 24);
    v28[0] = v6;
    if ((v6 & 0x8000000000000) != 0)
    {
      atomic_fetch_add((v6 & 0xFFFFFFFFFFFFLL), 1u);
    }

    WebKit::WebPageProxy::pageExtendedBackgroundColorDidChange(v3, v28);
    if ((v28[0] & 0x8000000000000) != 0)
    {
      v27 = (v28[0] & 0xFFFFFFFFFFFFLL);
      if (atomic_fetch_add((v28[0] & 0xFFFFFFFFFFFFLL), 0xFFFFFFFF) == 1)
      {
        atomic_store(1u, v27);
        WTF::fastFree(v27, v7);
      }
    }

    v8 = *(a2 + 25);
    v28[0] = v8;
    if ((v8 & 0x8000000000000) != 0)
    {
      atomic_fetch_add((v8 & 0xFFFFFFFFFFFFLL), 1u);
    }

    this = WebKit::WebPageProxy::sampledPageTopColorChanged(v3, v28);
    if ((v28[0] & 0x8000000000000) != 0)
    {
      this = (v28[0] & 0xFFFFFFFFFFFFLL);
      if (atomic_fetch_add((v28[0] & 0xFFFFFFFFFFFFLL), 0xFFFFFFFF) == 1)
      {
        atomic_store(1u, this);
        this = WTF::fastFree(this, v9);
      }
    }

    if ((*(v3 + 869) & 1) == 0)
    {
      v10 = *(v3 + 4);
      if (*(v10 + 2272) == 1 && *(a2 + 41) >= *(v10 + 2256))
      {
        *(v3 + 869) = 1;
        v11 = *(v3 + 7);
        if (v11)
        {
          v12 = *(v11 + 8);
          if (v12)
          {
            (*(*v12 + 1712))(v12);
            (*(*v12 + 2024))(v12);
            (*(*v12 + 1720))(v12);
          }
        }

        WebKit::WebPageProxy::stopMakingViewBlankDueToLackOfRenderingUpdateIfNecessary(v3);
        v13 = *(v3 + 4);
        *(v13 + 2600) = 0;
        *(v13 + 2784) = 0;
      }
    }

    v14 = *(v3 + 4);
    v15 = *(v14 + 2792);
    *(v14 + 2792) = 0;
    if (v15 == 1)
    {
      v16 = *(v3 + 44);
      atomic_fetch_add((v16 + 16), 1u);
      v17 = *(v3 + 6);
      v18 = IPC::Encoder::operator new(0x238, v9);
      *v18 = 2760;
      *(v18 + 2) = 0;
      *(v18 + 3) = 0;
      *(v18 + 1) = v17;
      *(v18 + 68) = 0;
      *(v18 + 70) = 0;
      *(v18 + 69) = 0;
      IPC::Encoder::encodeHeader(v18);
      v30 = v18;
      LOBYTE(v28[0]) = 0;
      v29 = 0;
      WebKit::AuxiliaryProcessProxy::sendMessage(v16, &v30, 0, v28, 1);
      if (v29 == 1)
      {
        v20 = v28[0];
        v28[0] = 0;
        if (v20)
        {
          (*(*v20 + 8))(v20);
        }
      }

      this = v30;
      v30 = 0;
      if (this)
      {
        IPC::Encoder::~Encoder(this, v19);
        this = bmalloc::api::tzoneFree(v24, v25);
        if (!v16)
        {
          goto LABEL_25;
        }

        goto LABEL_24;
      }

      if (v16)
      {
LABEL_24:
        this = WTF::ThreadSafeRefCounted<WebKit::AuxiliaryProcessProxy,(WTF::DestructionThread)2>::deref((v16 + 16));
      }
    }
  }

LABEL_25:
  v21 = *(v3 + 7);
  if (v21)
  {
    v22 = *(v21 + 8);
    if (v22)
    {
      (*(*v22 + 1712))(v22);
      (*(*v22 + 912))(v22, a2);
      this = (*(*v22 + 1720))(v22);
    }
  }

  if ((*(*(v3 + 4) + 1080) & 0x40) != 0 && (*(v3 + 1016) & 1) == 0 && *(v3 + 126) * 0.5 < *(a2 + 40))
  {
    *(v3 + 1016) = 1;
    WTF::WallTime::now(this);
    WebKit::WebPageProxy::didReachLayoutMilestone(v3, 0x40u, v23);
  }
}

uint64_t WebKit::WebPageProxy::layerTreeCommitComplete(uint64_t this)
{
  v1 = *(this + 56);
  if (v1)
  {
    v2 = *(v1 + 8);
    if (v2)
    {
      (*(*v2 + 1712))(v2);
      (*(*v2 + 920))(v2);
      v3 = *(*v2 + 1720);

      return v3(v2);
    }
  }

  return this;
}

void WebKit::WebPageProxy::setDataDetectionResult(uint64_t a1, uint64_t *a2)
{
  v2 = *a2;
  *a2 = 0;
  v3 = *(a1 + 584);
  *(a1 + 584) = v2;
  if (v3)
  {
  }
}

uint64_t WebKit::WebPageProxy::handleClickForDataDetectionResult(uint64_t result, uint64_t a2, uint64_t a3)
{
  v3 = *(result + 56);
  if (v3)
  {
    v4 = *(v3 + 8);
    if (v4)
    {
      (*(*v4 + 1712))(v4);
      (*(*v4 + 1960))(v4, a2, a3);
      v7 = *(*v4 + 1720);

      return v7(v4);
    }
  }

  return result;
}

void WebKit::WebPageProxy::saveRecentSearches(uint64_t a1, uint64_t a2, void *a3, uint64_t *a4)
{
  v12 = *MEMORY[0x1E69E9840];
  if (*a3)
  {
    v6 = *(a1 + 408);
    CFRetain(*(v6 + 8));
    WebKit::WebsiteDataStore::saveRecentSearches(v6, a3, a4);
    v7 = *(v6 + 8);

    CFRelease(v7);
  }

  else
  {
    v9 = qword_1ED6416C8;
    if (os_log_type_enabled(qword_1ED6416C8, OS_LOG_TYPE_FAULT))
    {
      v10 = 136446210;
      v11 = "void WebKit::WebPageProxy::saveRecentSearches(IPC::Connection &, const String &, const Vector<WebCore::RecentSearch> &)";
      _os_log_fault_impl(&dword_19D52D000, v9, OS_LOG_TYPE_FAULT, "/Library/Caches/com.apple.xbs/Sources/WebKit/Source/WebKit/UIProcess/Cocoa/WebPageProxyCocoa.mm 217: Invalid message dispatched %{public}s", &v10, 0xCu);
    }

    *(a2 + 94) = 1;
    if (IPC::s_shouldCrashOnMessageCheckFailure == 1)
    {
      __break(0xC471u);
    }
  }
}

void WebKit::WebPageProxy::loadRecentSearches(uint64_t a1, uint64_t a2, void *a3, WTF::StringImpl **a4)
{
  v12 = *MEMORY[0x1E69E9840];
  if (*a3)
  {
    v6 = *(a1 + 408);
    CFRetain(*(v6 + 8));
    WebKit::WebsiteDataStore::loadRecentSearches(v6, a3, a4);
    v7 = *(v6 + 8);

    CFRelease(v7);
  }

  else
  {
    v9 = qword_1ED6416C8;
    if (os_log_type_enabled(qword_1ED6416C8, OS_LOG_TYPE_FAULT))
    {
      LODWORD(v11) = 136446210;
      *(&v11 + 4) = "void WebKit::WebPageProxy::loadRecentSearches(IPC::Connection &, const String &, CompletionHandler<void (Vector<WebCore::RecentSearch> &&)> &&)";
      _os_log_fault_impl(&dword_19D52D000, v9, OS_LOG_TYPE_FAULT, "/Library/Caches/com.apple.xbs/Sources/WebKit/Source/WebKit/UIProcess/Cocoa/WebPageProxyCocoa.mm 224: Invalid message dispatched %{public}s", &v11, 0xCu);
    }

    *(a2 + 94) = 1;
    if (IPC::s_shouldCrashOnMessageCheckFailure == 1)
    {
      __break(0xC471u);
    }

    else
    {
      v11 = 0uLL;
      WTF::CompletionHandler<void ()(WTF::Vector<WebCore::RecentSearch,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&)>::operator()(a4);
      WTF::Vector<WebCore::SpeechRecognitionAlternativeData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v11, v10);
    }
  }
}

uint64_t WTF::CompletionHandler<void ()(WTF::Vector<WebCore::RecentSearch,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&)>::operator()(uint64_t *a1)
{
  v1 = *a1;
  *a1 = 0;
  (*(*v1 + 16))(v1);
  v2 = *(*v1 + 8);

  return v2(v1);
}

unint64_t WebKit::WebPageProxy::grantAccessToCurrentPasteboardData(uint64_t a1, const WTF::StringImpl **a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  if ((*(a1 + 865) & 1) != 0 || (*(a1 + 864) & 1) == 0)
  {
    WTF::CompletionHandler<void ()(void)>::operator()(a3);
    v16 = 0;
    v15 = 0;
  }

  else
  {
    v8 = WebKit::WebFrameProxy::webFrame(a4, a5);
    if (v8)
    {
      v9 = v8;
      v10 = CFRetain(*(v8 + 8));
      v11 = WebKit::WebPasteboardProxy::singleton(v10);
      v12 = *(*(v9 + 40) + 16);
      v13 = (v12 + 16);
      atomic_fetch_add((v12 + 16), 1u);
      v14 = WebKit::WebPasteboardProxy::grantAccessToCurrentData(v11, v12, a2, a3);
      v15 = v14;
      v16 = v14 & 0xFFFFFFFFFFFFFF00;
      WTF::ThreadSafeRefCounted<WebKit::AuxiliaryProcessProxy,(WTF::DestructionThread)2>::deref(v13);
      CFRelease(*(v9 + 8));
    }

    else
    {
      v18 = WebKit::WebPasteboardProxy::singleton(0);
      v19 = WebKit::WebPasteboardProxy::grantAccessToCurrentData(v18, *(a1 + 352), a2, a3);
      v15 = v19;
      v16 = v19 & 0xFFFFFFFFFFFFFF00;
    }
  }

  return v15 | v16;
}

void sub_19DCD97BC(_Unwind_Exception *a1)
{
  if (v3)
  {
    WTF::ThreadSafeRefCounted<WebKit::AuxiliaryProcessProxy,(WTF::DestructionThread)2>::deref(v2);
  }

  CFRelease(*(v1 + 8));
  _Unwind_Resume(a1);
}

void WebKit::WebPageProxy::beginSafeBrowsingCheck(WebKit::WebPageProxy *this, const WTF::URL *a2, API::Navigation *a3, uint64_t a4)
{
  v8 = [MEMORY[0x1E69C8E80] sharedLookupContext];
  if (v8)
  {
    v9 = v8;
    v10 = v8;
    if (*(a2 + 8))
    {
      v33[0] = a2;
      v12 = WTF::Vector<WTF::URL,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::findIf<unsigned long WTF::Vector<WTF::URL,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::find<WTF::URL>(WTF::URL const&)::{lambda(WTF::URL&)#1}>(a3 + 448, v33, v11);
      if (v12 == -1)
      {
        v13 = *(a3 + 115);
      }

      else
      {
        v13 = v12;
      }

      v27[0] = v13;
      WTF::ListHashSet<unsigned long,WTF::DefaultHash<unsigned long>>::add(a3 + 487, v27, v33);
      WTF::WeakPtrFactory<IPC::MessageReceiver,WTF::DefaultWeakPtrImpl>::initializeIfNeeded(this + 6, this + 16);
      v14 = *(this + 3);
      atomic_fetch_add(v14, 1u);
      v27[0] = v14;
      CFRetain(*(a3 + 1));
      v27[1] = a3;
      v28 = a4;
      WTF::URL::isolatedCopy();
      v32 = v13;
      v15 = *v27;
      v27[0] = 0;
      v27[1] = 0;
      *v33 = v15;
      v34 = v28;
      v16 = v29;
      v29 = 0;
      v35 = v16;
      v36 = v30;
      v37 = v31;
      LODWORD(v30) = v30 & 0xFFFFFFFE;
      v38 = v13;
      v17 = malloc_type_malloc(0x68uLL, 0x10E00400D1E26BEuLL);
      *v17 = MEMORY[0x1E69E9818];
      v17[1] = 50331650;
      v17[2] = WTF::BlockPtr<void ()(SSBLookupResult *,NSError *)>::fromCallable<WebKit::WebPageProxy::beginSafeBrowsingCheck(WTF::URL const&,API::Navigation &,BOOL)::$_0>(WebKit::WebPageProxy::beginSafeBrowsingCheck(WTF::URL const&,API::Navigation &,BOOL)::$_0)::{lambda(void *,SSBLookupResult *,NSError *)#1}::__invoke;
      v17[3] = &WTF::BlockPtr<void ()(SSBLookupResult *,NSError *)>::fromCallable<WebKit::WebPageProxy::beginSafeBrowsingCheck(WTF::URL const&,API::Navigation &,BOOL)::$_0>(WebKit::WebPageProxy::beginSafeBrowsingCheck(WTF::URL const&,API::Navigation &,BOOL)::$_0)::descriptor;
      v18 = *v33;
      v33[0] = 0;
      v33[1] = 0;
      *(v17 + 2) = v18;
      *(v17 + 48) = v34;
      WTF::URL::URL((v17 + 7), &v35);
      v20 = v35;
      v17[12] = v38;
      v35 = 0;
      if (v20 && atomic_fetch_add_explicit(v20, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v20, v19);
      }

      v21 = v33[1];
      v33[1] = 0;
      if (v21)
      {
        CFRelease(*(v21 + 1));
      }

      v22 = v33[0];
      v33[0] = 0;
      if (v22 && atomic_fetch_add(v22, 0xFFFFFFFF) == 1)
      {
        atomic_store(1u, v22);
        WTF::fastFree(v22, v19);
      }

      v23 = v29;
      v29 = 0;
      if (v23 && atomic_fetch_add_explicit(v23, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v23, v19);
      }

      v24 = v27[1];
      v27[1] = 0;
      if (v24)
      {
        CFRelease(*(v24 + 1));
      }

      v25 = v27[0];
      v27[0] = 0;
      if (v25 && atomic_fetch_add(v25, 0xFFFFFFFF) == 1)
      {
        atomic_store(1u, v25);
        WTF::fastFree(v25, v19);
      }

      if (objc_opt_respondsToSelector())
      {
        WTF::URL::createCFURL(v33, a2);
        [v9 lookUpURL:v33[0] isMainFrame:a4 hasHighConfidenceOfSafety:0 completionHandler:{v17, v27[0], v27[1]}];
      }

      else
      {
        WTF::URL::createCFURL(v33, a2);
        [v9 lookUpURL:v33[0] completionHandler:{v17, v27[0], v27[1]}];
      }

      v26 = v33[0];
      v33[0] = 0;
      if (v26)
      {
      }

      _Block_release(v17);
    }
  }
}

void sub_19DCD9AA4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, WTF *a9, uint64_t a10, uint64_t a11, WTF::StringImpl *a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, WTF *a19, uint64_t a20, uint64_t a21, WTF::StringImpl *a22)
{
  if (a19)
  {
  }

  _Block_release(v23);

  _Unwind_Resume(a1);
}

void WebKit::WebPageProxy::contentFilterDidBlockLoadForFrame(uint64_t a1, WebKit::AuxiliaryProcessProxy *a2, WebCore::ContentFilterUnblockHandler *a3, uint64_t a4)
{
  v21 = *MEMORY[0x1E69E9840];
  v7 = *(a1 + 368);
  CFRetain(*(v7 + 8));
  {
    atomic_fetch_add_explicit(WebKit::WebPreferencesKey::usesWebContentRestrictionsForFilterKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
    WebKit::WebPreferencesKey::usesWebContentRestrictionsForFilterKey(void)::key = WebKit::WebPreferencesKey::usesWebContentRestrictionsForFilterKey(void)::$_0::operator() const(void)::impl;
  }

  BoolValueForKey = WebKit::WebPreferencesStore::getBoolValueForKey((v7 + 40), &WebKit::WebPreferencesKey::usesWebContentRestrictionsForFilterKey(void)::key, v8);
  CFRelease(*(v7 + 8));
  if (!BoolValueForKey)
  {
    goto LABEL_6;
  }

  WebCore::ContentFilterUnblockHandler::webFilterEvaluatorData(v19, a3);
  v11 = v20;
  v12 = *v19;
  if (*v19)
  {
    memset(v19, 0, sizeof(v19));
    WTF::fastFree(v12, v10);
    if (!v11)
    {
      goto LABEL_6;
    }
  }

  else if (!v20)
  {
LABEL_6:
    v13 = WebKit::AuxiliaryProcessProxy::fromConnection(a2, v10);
    v15 = v13;
    if (v13)
    {
      v13 = (*(*v13 + 104))(v13);
      v16 = 1;
      if (v13 == 2)
      {
        atomic_fetch_add((v15 + 16), 1u);
        v16 = 0;
      }

      else
      {
        v15 = 0;
      }
    }

    else
    {
      v16 = 1;
    }

    v17 = (v15 + 16);
    atomic_fetch_add(v17, 1u);
    WebKit::WebPageProxy::contentFilterDidBlockLoadForFrameShared(v13, v14, a3, a4);
    if ((v16 & 1) == 0)
    {
      WTF::ThreadSafeRefCounted<WebKit::AuxiliaryProcessProxy,(WTF::DestructionThread)2>::deref(v17);
      WTF::ThreadSafeRefCounted<WebKit::AuxiliaryProcessProxy,(WTF::DestructionThread)2>::deref(v17);
    }

    return;
  }

  v18 = qword_1ED6416C8;
  if (os_log_type_enabled(qword_1ED6416C8, OS_LOG_TYPE_FAULT))
  {
    *v19 = 136446210;
    *&v19[4] = "void WebKit::WebPageProxy::contentFilterDidBlockLoadForFrame(IPC::Connection &, const WebCore::ContentFilterUnblockHandler &, FrameIdentifier)";
    _os_log_fault_impl(&dword_19D52D000, v18, OS_LOG_TYPE_FAULT, "/Library/Caches/com.apple.xbs/Sources/WebKit/Source/WebKit/UIProcess/Cocoa/WebPageProxyCocoa.mm 286: Invalid message dispatched %{public}s", v19, 0xCu);
  }

  *(a2 + 94) = 1;
  if (IPC::s_shouldCrashOnMessageCheckFailure == 1)
  {
    __break(0xC471u);
    JUMPOUT(0x19DCD9D80);
  }
}

void sub_19DCD9DEC(_Unwind_Exception *exception_object)
{
  if ((v2 & 1) == 0)
  {
    WTF::ThreadSafeRefCounted<WebKit::AuxiliaryProcessProxy,(WTF::DestructionThread)2>::deref(v1);
    WTF::ThreadSafeRefCounted<WebKit::AuxiliaryProcessProxy,(WTF::DestructionThread)2>::deref(v1);
  }

  _Unwind_Resume(exception_object);
}

void WebKit::WebPageProxy::contentFilterDidBlockLoadForFrameShared(uint64_t a1, uint64_t a2, const WebCore::ContentFilterUnblockHandler *a3, uint64_t a4)
{
  v23 = *MEMORY[0x1E69E9840];
  v5 = WebKit::WebFrameProxy::webFrame(a4, 1);
  if (v5)
  {
    v6 = v5;
    CFRetain(*(v5 + 8));
    WebCore::ContentFilterUnblockHandler::ContentFilterUnblockHandler(&v15, a3);
    v8 = v15;
    v15 = 0;
    v9 = *(v6 + 336);
    *(v6 + 336) = v8;
    if (v9 && atomic_fetch_add_explicit(v9, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v9, v7);
    }

    WTF::URL::operator=(v6 + 344, &v16);
    std::__function::__value_func<void ()(std::function<void ()(BOOL)>)>::operator=[abi:sn200100](v6 + 384, &v17);
    std::__optional_storage_base<WTF::URL,false>::__assign_from[abi:sn200100]<std::__optional_move_assign_base<WTF::URL,false>>(v6 + 416, v18);
    v11 = *(v6 + 464);
    if (v11)
    {
      *(v6 + 464) = 0;
      *(v6 + 472) = 0;
      WTF::fastFree(v11, v10);
    }

    *(v6 + 464) = v19;
    v12 = v20;
    v19 = 0;
    v20 = 0;
    *(v6 + 472) = v12;
    v13 = v21;
    v21 = 0;
    v14 = *(v6 + 480);
    *(v6 + 480) = v13;
    if (v14)
    {
    }

    *(v6 + 488) = v22;
    WebCore::ContentFilterUnblockHandler::~ContentFilterUnblockHandler(&v15, v10);
    CFRelease(*(v6 + 8));
  }
}

void WebKit::WebPageProxy::createSandboxExtensionsIfNeeded(uint64_t a1, uint64_t a2, WebKit::SandboxExtensionImpl **a3, uint64_t a4)
{
  v55 = *MEMORY[0x1E69E9840];
  v8 = qword_1ED640D10;
  if (os_log_type_enabled(qword_1ED640D10, OS_LOG_TYPE_DEFAULT))
  {
    v10 = *(a1 + 40);
    v9 = *(a1 + 48);
    v11 = *(*(a1 + 352) + 80);
    if (v11)
    {
      LODWORD(v11) = *(v11 + 108);
    }

    v12 = *(a2 + 12);
    *buf = 134219008;
    *&buf[4] = a1;
    v47 = 2048;
    v48 = v10;
    v49 = 2048;
    v50 = v9;
    v51 = 1024;
    v52 = v11;
    v53 = 2048;
    v54 = v12;
    _os_log_impl(&dword_19D52D000, v8, OS_LOG_TYPE_DEFAULT, "%p - [pageProxyID=%llu, webPageID=%llu, PID=%i] WebPageProxy::WebPageProxy::createSandboxExtensionsIfNeeded: %zu files", buf, 0x30u);
  }

  if (!*(a2 + 12))
  {
    return;
  }

  CFRetain(*(a1 + 8));
  v13 = *(a2 + 12);
  if (v13 != 1)
  {
    goto LABEL_29;
  }

  v45 = 0;
  v14 = [MEMORY[0x1E696AC08] defaultManager];
  if (!*(a2 + 12))
  {
    __break(0xC471u);
    goto LABEL_51;
  }

  v15 = v14;
  v16 = **a2;
  if (v16)
  {
    atomic_fetch_add_explicit(v16, 2u, memory_order_relaxed);
    MEMORY[0x19EB00B70](buf, v16);
    if (atomic_fetch_add_explicit(v16, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v16, v17);
    }
  }

  else
  {
    *buf = &stru_1F1147748;
    v18 = &stru_1F1147748;
  }

  v19 = [v15 fileExistsAtPath:*buf isDirectory:&v45];
  v20 = v45;
  v21 = *buf;
  *buf = 0;
  if (v21)
  {
  }

  if (!v19 || (v20 & 1) != 0)
  {
    goto LABEL_28;
  }

  WTF::StringImpl::createWithoutCopyingNonEmpty();
  v44 = v42;
  WebKit::WebPageProxy::createSandboxExtensionsIfNeeded(WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> const&,WebKit::SandboxExtensionHandle &,WTF::Vector<WebKit::SandboxExtensionHandle,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &)::$_0::operator()(buf, *(a1 + 352), &v44);
  if (v42 && atomic_fetch_add_explicit(v42, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v42, v22);
  }

  if (buf[8] != 1)
  {
    if (*(a2 + 12))
    {
      WebKit::WebPageProxy::createSandboxExtensionsIfNeeded(WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> const&,WebKit::SandboxExtensionHandle &,WTF::Vector<WebKit::SandboxExtensionHandle,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &)::$_0::operator()(&v42, *(a1 + 352), *a2);
      if (v43 == 1)
      {
        v24 = v42;
        v42 = 0;
        std::unique_ptr<WebKit::SandboxExtensionImpl>::reset[abi:sn200100](a3, v24);
        if (v43)
        {
          WebKit::SandboxExtensionHandle::~SandboxExtensionHandle(&v42);
        }
      }

      goto LABEL_25;
    }

    __break(0xC471u);
LABEL_51:
    JUMPOUT(0x19DCDA328);
  }

  v23 = *buf;
  *buf = 0;
  std::unique_ptr<WebKit::SandboxExtensionImpl>::reset[abi:sn200100](a3, v23);
LABEL_25:
  if (buf[8] == 1)
  {
    WebKit::SandboxExtensionHandle::~SandboxExtensionHandle(buf);
  }

  v25 = *(a1 + 352);
  *(a1 + 1253) = 1;
  *(v25 + 568) = 1;
LABEL_28:
  v13 = *(a2 + 12);
LABEL_29:
  if (!v13)
  {
    goto LABEL_47;
  }

  v26 = *a2;
  v27 = 8 * v13;
  do
  {
    v28 = [MEMORY[0x1E696AC08] defaultManager];
    v29 = *v26;
    if (*v26)
    {
      atomic_fetch_add_explicit(v29, 2u, memory_order_relaxed);
      MEMORY[0x19EB00B70](buf, v29);
      if (atomic_fetch_add_explicit(v29, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v29, v30);
      }
    }

    else
    {
      *buf = &stru_1F1147748;
      v31 = &stru_1F1147748;
    }

    v32 = [v28 fileExistsAtPath:*buf];
    v33 = v32;
    v34 = *buf;
    *buf = 0;
    if (v34)
    {

      if ((v33 & 1) == 0)
      {
        goto LABEL_45;
      }
    }

    else if ((v32 & 1) == 0)
    {
      goto LABEL_45;
    }

    WebKit::WebPageProxy::createSandboxExtensionsIfNeeded(WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> const&,WebKit::SandboxExtensionHandle &,WTF::Vector<WebKit::SandboxExtensionHandle,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &)::$_0::operator()(buf, *(a1 + 352), v26);
    if (buf[8] != 1)
    {
      goto LABEL_45;
    }

    v35 = *(a4 + 12);
    if (v35 == *(a4 + 8))
    {
      v36 = WTF::Vector<WebKit::SandboxExtensionHandle,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(a4, v35 + 1, buf);
      v37 = *(a4 + 12);
      v38 = *a4;
      v39 = *v36;
      *v36 = 0;
      *(v38 + 8 * v37) = v39;
      *(a4 + 12) = v37 + 1;
      if ((buf[8] & 1) == 0)
      {
        goto LABEL_45;
      }
    }

    else
    {
      v40 = *a4;
      v41 = *buf;
      *buf = 0;
      *(v40 + 8 * v35) = v41;
      *(a4 + 12) = v35 + 1;
    }

    WebKit::SandboxExtensionHandle::~SandboxExtensionHandle(buf);
LABEL_45:
    ++v26;
    v27 -= 8;
  }

  while (v27);
  if (a1)
  {
LABEL_47:
    CFRelease(*(a1 + 8));
  }
}

void sub_19DCDA334(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, WebKit::SandboxExtensionImpl *a13, char a14)
{
  if (a14)
  {
    WebKit::SandboxExtensionHandle::~SandboxExtensionHandle(&a13);
  }

  CFRelease(*(v14 + 8));
  _Unwind_Resume(a1);
}

void WebKit::WebPageProxy::createSandboxExtensionsIfNeeded(WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> const&,WebKit::SandboxExtensionHandle &,WTF::Vector<WebKit::SandboxExtensionHandle,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &)::$_0::operator()(uint64_t a1, atomic_uint *this, uint64_t *a3)
{
  v6 = this + 4;
  atomic_fetch_add(this + 4, 1u);
  WebKit::AuxiliaryProcessProxy::protectedConnection(this, v11);
  IPC::Connection::getAuditToken(v11[0], v13);
  v7 = v11[0];
  v11[0] = 0;
  if (v7)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v7);
  }

  if (this)
  {
    WTF::ThreadSafeRefCounted<WebKit::AuxiliaryProcessProxy,(WTF::DestructionThread)2>::deref(v6);
  }

  if (v14 != 1 || ((v8 = *a3) == 0 ? (v9 = 0, v10 = 0x100000000) : (v9 = *(v8 + 8), v10 = *(v8 + 4) | (((*(v8 + 16) >> 2) & 1) << 32)), *v11 = v13[0], v12 = v13[1], WebKit::SandboxExtension::createHandleForReadByAuditToken(v9, v10, v11, a1), (*(a1 + 8) & 1) == 0))
  {
    WebKit::SandboxExtension::createHandle(0, a1);
  }
}

void sub_19DCDA528(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, atomic_ullong *a9)
{
  if (a9)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(a9);
  }

  if (v10)
  {
    WTF::ThreadSafeRefCounted<WebKit::AuxiliaryProcessProxy,(WTF::DestructionThread)2>::deref(v9);
  }

  _Unwind_Resume(exception_object);
}

uint64_t WebKit::WebPageProxy::scrollingNodeScrollViewDidScroll(uint64_t result, uint64_t a2, uint64_t a3)
{
  v3 = *(result + 56);
  if (v3)
  {
    v4 = *(v3 + 8);
    if (v4)
    {
      (*(*v4 + 1712))(v4);
      (*(*v4 + 928))(v4, a2, a3);
      v7 = *(*v4 + 1720);

      return v7(v4);
    }
  }

  return result;
}

uint64_t WebKit::WebPageProxy::scrollingUpdatesDisabledForTesting(WebKit::WebPageProxy *this)
{
  v1 = *(this + 7);
  if (!v1)
  {
    return 0;
  }

  v2 = *(v1 + 8);
  if (!v2)
  {
    return 0;
  }

  (*(*v2 + 1712))(v2);
  v3 = (*(*v2 + 1544))(v2);
  (*(*v2 + 1720))(v2);
  return v3;
}

uint64_t WebKit::WebPageProxy::startDrag(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(result + 56);
  if (v4)
  {
    v5 = *(v4 + 8);
    if (v5)
    {
      (*(*v5 + 1712))(v5);
      (*(*v5 + 368))(v5, a2, a3, a4);
      v9 = *(*v5 + 1720);

      return v9(v5);
    }
  }

  return result;
}

uint64_t WebKit::WebPageProxy::platformRegisterAttachment(uint64_t result, atomic_uchar **a2, atomic_uint **a3, IPC::SharedBufferReference *a4)
{
  if (*a4)
  {
    v4 = *(result + 56);
    if (v4)
    {
      v5 = *(v4 + 8);
      if (v5)
      {
        (*(*v5 + 1712))(v5);
        v9 = (*(*v5 + 1840))(v5);
        IPC::SharedBufferReference::unsafeBuffer(a4, &v17);
        v10 = v17;
        WebCore::SharedBuffer::createNSData(&v18, v17);
        v11 = [v9 initRegularFileWithContents:v18];
        v12 = v18;
        v18 = 0;
        if (v12)
        {
        }

        v17 = 0;
        if (v10 && atomic_fetch_add(v10 + 2, 0xFFFFFFFF) == 1)
        {
          atomic_store(1u, v10 + 2);
          (*(*v10 + 8))(v10);
        }

        v13 = *a3;
        if (v13)
        {
          atomic_fetch_add_explicit(v13, 2u, memory_order_relaxed);
          MEMORY[0x19EB00B70](&v18, v13);
          if (atomic_fetch_add_explicit(v13, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v13, v14);
          }
        }

        else
        {
          v18 = &stru_1F1147748;
          v15 = &stru_1F1147748;
        }

        [(NSFileWrapper *)v11 setPreferredFilename:v18, v17];
        v16 = v18;
        v18 = 0;
        if (v16)
        {
        }

        API::Attachment::setFileWrapper(*a2, v11);
        if (v11)
        {
        }

        return (*(*v5 + 1720))(v5);
      }
    }
  }

  return result;
}

void sub_19DCDAAAC(_Unwind_Exception *a1)
{
  if (v2)
  {
  }

  (*(*v1 + 1720))(v1);
  _Unwind_Resume(a1);
}

uint64_t WebKit::WebPageProxy::platformRegisterAttachment(uint64_t result, atomic_uchar **a2, atomic_uint **a3)
{
  if (*a3)
  {
    v3 = *(result + 56);
    if (v3)
    {
      v4 = *(v3 + 8);
      if (v4)
      {
        (*(*v4 + 1712))(v4);
        v7 = (*(*v4 + 1840))(v4);
        v8 = objc_alloc(MEMORY[0x1E695DFF8]);
        v9 = *a3;
        if (v9)
        {
          atomic_fetch_add_explicit(v9, 2u, memory_order_relaxed);
          MEMORY[0x19EB00B70](&v15, v9);
          if (atomic_fetch_add_explicit(v9, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v9, v10);
          }
        }

        else
        {
          v15 = &stru_1F1147748;
          v11 = &stru_1F1147748;
        }

        v12 = [v8 initFileURLWithPath:v15];
        v13 = [v7 initWithURL:v12 options:0 error:0];
        if (v12)
        {
        }

        v14 = v15;
        v15 = 0;
        if (v14)
        {
        }

        API::Attachment::setFileWrapper(*a2, v13);
        if (v13)
        {
        }

        return (*(*v4 + 1720))(v4);
      }
    }
  }

  return result;
}

void WebKit::WebPageProxy::iconForAttachment(const WTF::String *a1@<X1>, const WTF::String *a2@<X2>, const WTF::String *a3@<X3>, id *a4@<X4>, WebCore::ShareableBitmap **a5@<X8>)
{
  WebCore::RenderThemeIOS::iconForAttachment(v26, a1, a2, a3, a3);
  v8 = v26[0];
  if (v26[0])
  {
    v9 = v26[0];
  }

  *a4 = v26[1];
  [v8 size];
  v28.width = v10;
  v28.height = v11;
  WebCore::FloatSize::FloatSize(&v34, &v28);
  if (v34 <= 0.0 || v35 <= 0.0)
  {
    goto LABEL_15;
  }

  v31 = xmmword_19E703A30;
  WebCore::largestRectWithAspectRatioInsideRect(&v31, v34 / v35, v12);
  *&v28.width = __PAIR64__(v14, v13);
  *&v28.height = __PAIR64__(v16, v15);
  WebCore::roundedIntRect(&v28, v17);
  v32 = 0;
  v33 = v18;
  v27 = v18;
  LOBYTE(v31) = 0;
  BYTE8(v31) = 0;
  MEMORY[0x19EB0C920](&v28, &v27, &v31, 0, 1.0);
  WebCore::ShareableBitmap::create();
  if (v29 == 1)
  {
    height = v28.height;
    v28.height = 0.0;
    if (height != 0.0)
    {
      CFRelease(*&height);
    }
  }

  if (BYTE8(v31) == 1)
  {
    v20 = v31;
    *&v31 = 0;
    if (v20)
    {
      CFRelease(v20);
    }
  }

  if (v30)
  {
    WebCore::ShareableBitmap::createGraphicsContext(&v27, v30);
    v21 = v27;
    if (v27)
    {
      WebCore::LocalCurrentGraphicsContext::LocalCurrentGraphicsContext(&v28, v27);
      WebCore::IntRect::operator CGRect();
      [v8 drawInRect:?];
      v22 = v30;
      v30 = 0;
      *a5 = v22;
      WebCore::LocalCurrentGraphicsContext::~LocalCurrentGraphicsContext(&v28);
      v23 = v27;
      v27 = 0;
      if (v23)
      {
        (*(*v23 + 8))(v23);
      }
    }

    else
    {
      *a5 = 0;
    }

    v24 = v30;
    v30 = 0;
    if (v24)
    {
      WTF::ThreadSafeRefCounted<WebCore::ShareableBitmap,(WTF::DestructionThread)0>::deref(v24, v21);
    }
  }

  else
  {
LABEL_15:
    *a5 = 0;
  }

  if (v8)
  {
  }

  v25 = v26[0];
  v26[0] = 0;
  if (v25)
  {
  }
}

void sub_19DCDAF9C(_Unwind_Exception *exception_object, void *a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, uint64_t a11, char a12, CFTypeRef cf, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, WTF *a20)
{
  if (a11)
  {
    (*(*a11 + 8))(a11);
  }

  if (a20)
  {
    WTF::ThreadSafeRefCounted<WebCore::ShareableBitmap,(WTF::DestructionThread)0>::deref(a20, a2);
  }

  if (v20)
  {
  }

  if (a9)
  {
  }

  _Unwind_Resume(exception_object);
}

uint64_t WebKit::WebPageProxy::insertDictatedTextAsync(uint64_t result, uint64_t *a2, uint64_t *a3, unsigned int *a4, char *a5)
{
  if (*(result + 865))
  {
    return result;
  }

  v5 = result;
  if (*(result + 864) != 1)
  {
    return result;
  }

  v6 = *(result + 56);
  if (!v6)
  {
    return result;
  }

  v7 = *(v6 + 8);
  if (!v7)
  {
    return result;
  }

  (*(*v7 + 1712))(v7);
  v31 = 0;
  v32 = 0;
  v13 = a4[3];
  if (!v13)
  {
    goto LABEL_24;
  }

  v14 = (*a4 + 16);
  v15 = 24 * v13;
  do
  {
    v16 = (*(*v7 + 864))(v7, *v14);
    if (v12)
    {
      v33 = *(v14 - 1);
      v34 = v16;
      v17 = HIDWORD(v32);
      if (HIDWORD(v32) == v32)
      {
        v18 = WTF::Vector<WebKit::WebRTCNetwork::InterfaceAddress,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(&v31, HIDWORD(v32) + 1, &v33);
        v17 = HIDWORD(v32);
        v19 = v31 + 24 * HIDWORD(v32);
        v20 = *v18;
        *(v19 + 2) = *(v18 + 16);
      }

      else
      {
        v19 = v31 + 24 * HIDWORD(v32);
        v20 = v33;
        *(v19 + 2) = v34;
      }

      *v19 = v20;
      HIDWORD(v32) = v17 + 1;
    }

    v14 += 3;
    v15 -= 24;
  }

  while (v15);
  if (!HIDWORD(v32))
  {
LABEL_24:
    if ((*(v5 + 865) & 1) == 0 && *(v5 + 864) == 1)
    {
      *&v33 = a2;
      *(&v33 + 1) = a3;
      v34 = a5;
      WebKit::WebPageProxy::send<Messages::WebPage::InsertTextAsync>(v5, &v33);
    }

    goto LABEL_26;
  }

  v21 = *(v5 + 352);
  atomic_fetch_add((v21 + 16), 1u);
  v22 = *(v5 + 48);
  v23 = IPC::Encoder::operator new(0x238, v12);
  *v23 = 2607;
  *(v23 + 2) = 0;
  *(v23 + 3) = 0;
  *(v23 + 1) = v22;
  *(v23 + 68) = 0;
  *(v23 + 70) = 0;
  *(v23 + 69) = 0;
  IPC::Encoder::encodeHeader(v23);
  v35 = v23;
  IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(v23, a2);
  IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(v23, *a3);
  IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(v23, a3[1]);
  IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(v23, HIDWORD(v32));
  if (HIDWORD(v32))
  {
    v24 = v31;
    v25 = 24 * HIDWORD(v32);
    do
    {
      IPC::ArgumentCoder<WebCore::DictationAlternative,void>::encode(v23, v24);
      v24 += 3;
      v25 -= 24;
    }

    while (v25);
  }

  IPC::ArgumentCoder<WebKit::InsertTextOptions,void>::encode(v23, a5);
  LOBYTE(v33) = 0;
  LOBYTE(v34) = 0;
  WebKit::AuxiliaryProcessProxy::sendMessage(v21, &v35, 0, &v33, 1);
  if (v34 == 1)
  {
    v26 = v33;
    *&v33 = 0;
    if (v26)
    {
      (*(*v26 + 8))(v26);
    }
  }

  v27 = v35;
  v35 = 0;
  if (v27)
  {
    IPC::Encoder::~Encoder(v27, v12);
    bmalloc::api::tzoneFree(v29, v30);
    if (!v21)
    {
      goto LABEL_26;
    }

    goto LABEL_22;
  }

  if (v21)
  {
LABEL_22:
    WTF::ThreadSafeRefCounted<WebKit::AuxiliaryProcessProxy,(WTF::DestructionThread)2>::deref((v21 + 16));
  }

LABEL_26:
  v28 = v31;
  if (v31)
  {
    v31 = 0;
    LODWORD(v32) = 0;
    WTF::fastFree(v28, v12);
  }

  return (*(*v7 + 1720))(v7);
}

void sub_19DCDB38C(_Unwind_Exception *a1, void *a2, int a3, int a4, int a5, int a6, int a7, int a8, WTF *a9, int a10, uint64_t a11, uint64_t a12, char a13, IPC::Encoder *a14)
{
  if (a13 == 1 && a11)
  {
    (*(*a11 + 8))(a11);
  }

  if (a14)
  {
    IPC::Encoder::~Encoder(a14, a2);
    bmalloc::api::tzoneFree(v18, v19);
    if (!v16)
    {
LABEL_8:
      if (a9)
      {
        WTF::fastFree(a9, a2);
      }

      (*(*v14 + 1720))(v14);
      _Unwind_Resume(a1);
    }
  }

  else if (!v16)
  {
    goto LABEL_8;
  }

  WTF::ThreadSafeRefCounted<WebKit::AuxiliaryProcessProxy,(WTF::DestructionThread)2>::deref(v15);
  goto LABEL_8;
}

uint64_t WebKit::WebPageProxy::addDictationAlternative(uint64_t result, uint64_t a2)
{
  if (*(result + 865))
  {
    return result;
  }

  v2 = result;
  if (*(result + 864) != 1)
  {
    return result;
  }

  v3 = *(result + 56);
  if (!v3)
  {
    return result;
  }

  v4 = *(v3 + 8);
  if (!v4)
  {
    return result;
  }

  (*(*v4 + 1712))(v4);
  v6 = *(a2 + 16);
  if (v6)
  {
    v7 = v6;
  }

  v8 = (*(*v4 + 864))(v4, v6);
  v10 = v9;
  v11 = *(v2 + 352);
  atomic_fetch_add((v11 + 16), 1u);
  MEMORY[0x19EB02040](&v24, [v6 primaryString]);
  if ((v10 & 1) == 0)
  {
    __break(1u);
    goto LABEL_24;
  }

  WTF::WeakPtrFactory<IPC::MessageReceiver,WTF::DefaultWeakPtrImpl>::initializeIfNeeded((v2 + 24), v2 + 16);
  v12 = *(v2 + 24);
  atomic_fetch_add(v12, 1u);
  v13 = *(v2 + 48);
  v15 = IPC::Encoder::operator new(0x238, v14);
  *v15 = 2431;
  *(v15 + 2) = 0;
  *(v15 + 3) = 0;
  *(v15 + 1) = v13;
  *(v15 + 68) = 0;
  *(v15 + 70) = 0;
  *(v15 + 69) = 0;
  IPC::Encoder::encodeHeader(v15);
  v27 = v15;
  IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(v15, &v24);
  IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(v15, v8);
  v16 = WTF::fastMalloc(0x20);
  *v16 = &unk_1F1103BD8;
  *(v16 + 8) = v8;
  *(v16 + 16) = v10;
  *(v16 + 24) = v12;
  if (WTF::ObjectIdentifierGeneric<IPC::AsyncReplyIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>::m_generationProtected == 1)
  {
LABEL_24:
    result = 141;
    __break(0xC471u);
    return result;
  }

  IdentifierInternal = WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>::generateIdentifierInternal();
  v25[0] = v16;
  v25[1] = IdentifierInternal;
  v26 = 1;
  WebKit::AuxiliaryProcessProxy::sendMessage(v11, &v27, 0, v25, 1);
  if (v26 == 1)
  {
    v19 = v25[0];
    v25[0] = 0;
    if (v19)
    {
      (*(*v19 + 8))(v19);
    }
  }

  v20 = v27;
  v27 = 0;
  if (v20)
  {
    IPC::Encoder::~Encoder(v20, v18);
    bmalloc::api::tzoneFree(v22, v23);
  }

  v21 = v24;
  v24 = 0;
  if (v21 && atomic_fetch_add_explicit(v21, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v21, v18);
  }

  if (v11)
  {
    WTF::ThreadSafeRefCounted<WebKit::AuxiliaryProcessProxy,(WTF::DestructionThread)2>::deref((v11 + 16));
  }

  if (v6)
  {
  }

  return (*(*v4 + 1720))(v4);
}

atomic_uint *WebKit::WebPageProxy::dictationAlternativesAtSelection(uint64_t a1, uint64_t *a2)
{
  if ((*(a1 + 865) & 1) != 0 || (*(a1 + 864) & 1) == 0)
  {
    WTF::CompletionHandler<void ()(WTF::Vector<WTF::ObjectIdentifierGeneric<WebCore::DictationContextType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&)>::operator()(a2);
    return 0;
  }

  else
  {
    v2 = *(a1 + 352);
    atomic_fetch_add((v2 + 16), 1u);
    result = WebKit::AuxiliaryProcessProxy::sendWithAsyncReply<Messages::WebPage::DictationAlternativesAtSelection,WTF::CompletionHandler<void ()(WTF::Vector<WTF::ObjectIdentifierGeneric<WebCore::DictationContextType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&)>>(v2, &v4, a2, *(a1 + 48), 0, 1);
    if (v2)
    {
      return WTF::ThreadSafeRefCounted<WebKit::AuxiliaryProcessProxy,(WTF::DestructionThread)2>::deref((v2 + 16));
    }
  }

  return result;
}

void sub_19DCDB91C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, WTF *a9, int a10)
{
  if (v10)
  {
    WTF::ThreadSafeRefCounted<WebKit::AuxiliaryProcessProxy,(WTF::DestructionThread)2>::deref(v11);
  }

  _Unwind_Resume(exception_object);
}

uint64_t WTF::CompletionHandler<void ()(WTF::Vector<WTF::ObjectIdentifierGeneric<WebCore::DictationContextType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&)>::operator()(uint64_t *a1)
{
  v1 = *a1;
  *a1 = 0;
  (*(*v1 + 16))(v1);
  v2 = *(*v1 + 8);

  return v2(v1);
}

atomic_uint *WebKit::WebPageProxy::clearDictationAlternatives(atomic_uint *result, uint64_t a2)
{
  if ((*(result + 865) & 1) == 0 && *(result + 864) == 1 && *(a2 + 12) != 0)
  {
    v3 = *(result + 44);
    atomic_fetch_add((v3 + 16), 1u);
    v4 = a2;
    result = WebKit::AuxiliaryProcessProxy::send<Messages::WebPage::ClearDictationAlternatives>(v3, &v4, *(result + 6), 0);
    if (v3)
    {
      return WTF::ThreadSafeRefCounted<WebKit::AuxiliaryProcessProxy,(WTF::DestructionThread)2>::deref((v3 + 16));
    }
  }

  return result;
}

void sub_19DCDBA88(_Unwind_Exception *exception_object)
{
  if (v2)
  {
    WTF::ThreadSafeRefCounted<WebKit::AuxiliaryProcessProxy,(WTF::DestructionThread)2>::deref(v1);
  }

  _Unwind_Resume(exception_object);
}

WTF::StringImpl *WebKit::WebPageProxy::errorForUnpermittedAppBoundDomainNavigation@<X0>(const WTF::URL *a1@<X1>, uint64_t a2@<X8>)
{
  MEMORY[0x19EB02040](&v16, @"WKErrorDomain");
  localizedDescriptionForErrorCode(WKErrorNavigationAppBoundDomain, v5, &v14);
  MEMORY[0x19EB02040](&v15, v14);
  v7 = v16;
  if (v16)
  {
    atomic_fetch_add_explicit(v16, 2u, memory_order_relaxed);
  }

  *a2 = v7;
  v8 = *a1;
  if (*a1)
  {
    atomic_fetch_add_explicit(v8, 2u, memory_order_relaxed);
  }

  *(a2 + 8) = v8;
  v9 = *(a1 + 24);
  *(a2 + 16) = *(a1 + 8);
  *(a2 + 32) = v9;
  v10 = v15;
  if (v15)
  {
    atomic_fetch_add_explicit(v15, 2u, memory_order_relaxed);
    v11 = v15;
  }

  else
  {
    v11 = 0;
  }

  *(a2 + 48) = v10;
  *(a2 + 56) = 13;
  *(a2 + 60) = 1;
  *(a2 + 64) = 0;
  *(a2 + 72) = 1;
  v15 = 0;
  if (v11 && atomic_fetch_add_explicit(v11, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v11, v6);
  }

  v12 = v14;
  v14 = 0;
  if (v12)
  {
  }

  result = v16;
  v16 = 0;
  if (result)
  {
    if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      return WTF::StringImpl::destroy(result, v6);
    }
  }

  return result;
}

void sub_19DCDBBB0(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, WTF::StringImpl *a12)
{
  if (a10)
  {
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

void non-virtual thunk toWebKit::WebPageProxy::Internals::~Internals(WebKit::WebPageProxy::Internals *this, void *a2)
{
  WebKit::WebPageProxy::Internals::~Internals((this - 16), a2);
}

{
  WebKit::WebPageProxy::Internals::~Internals((this - 40), a2);
}

{
  WebKit::WebPageProxy::Internals::~Internals((this - 64), a2);
}

{
  WebKit::WebPageProxy::Internals::operator delete((this - 16), a2);
}

{
  WebKit::WebPageProxy::Internals::operator delete((this - 40), a2);
}

{
  WebKit::WebPageProxy::Internals::operator delete((this - 64), a2);
}

void WebKit::WebPageProxy::Internals::operator delete(WebKit::WebPageProxy::Internals *a1, void *a2)
{
  WebKit::WebPageProxy::Internals::~Internals(a1, a2);
  if (v2[2])
  {

    bzero(v2, 0xB80uLL);
  }

  else
  {

    WTF::fastFree(v2, v3);
  }
}

void WebKit::WebPageProxy::Internals::sharedPreferencesForWebPaymentMessages(WebKit::WebPageProxy::Internals *this@<X0>, uint64_t a2@<X8>)
{
  WebKit::WebPageProxy::Internals::protectedPage(this, &v5);
  v3 = *(v5 + 352);
  atomic_fetch_add((v3 + 16), 1u);
  *a2 = *(v3 + 1096);
  *(a2 + 16) = *(v3 + 1112);
  *(a2 + 24) = 1;
  WTF::ThreadSafeRefCounted<WebKit::AuxiliaryProcessProxy,(WTF::DestructionThread)2>::deref((v3 + 16));
  if (v5)
  {
    v4 = *(v5 + 8);

    CFRelease(v4);
  }
}

uint64_t WebKit::WebPageProxy::Internals::paymentCoordinatorConnection(WebKit::WebPageProxy::Internals *this, const WebKit::WebPaymentCoordinatorProxy *a2)
{
  v2 = *(*(this + 9) + 8);
  if (!v2 || (result = *(*(v2 + 336) + 88)) == 0)
  {
    __break(0xC471u);
    JUMPOUT(0x19DCDBD40);
  }

  return result;
}

uint64_t WebKit::WebPageProxy::Internals::paymentCoordinatorBoundInterfaceIdentifier(WebKit::WebPageProxy::Internals *this, const WebKit::WebPaymentCoordinatorProxy *a2)
{
  v2 = *(*(this + 9) + 8);
  if (v2)
  {
    return *(*(v2 + 392) + 224) + 328;
  }

  result = 92;
  __break(0xC471u);
  return result;
}

uint64_t non-virtual thunk toWebKit::WebPageProxy::Internals::paymentCoordinatorBoundInterfaceIdentifier(WebKit::WebPageProxy::Internals *this, const WebKit::WebPaymentCoordinatorProxy *a2)
{
  v2 = *(*(this + 7) + 8);
  if (v2)
  {
    return *(*(v2 + 392) + 224) + 328;
  }

  result = 92;
  __break(0xC471u);
  return result;
}

uint64_t WebKit::WebPageProxy::Internals::getPaymentCoordinatorEmbeddingUserAgent(uint64_t a1, uint64_t a2, WTF::RefCountedBase *a3)
{
  v3 = *(*(a1 + 72) + 8);
  if (v3)
  {
    return WTF::CompletionHandler<void ()(WTF::String const&)>::operator()(a3, v3 + 424);
  }

  result = 92;
  __break(0xC471u);
  return result;
}

uint64_t non-virtual thunk toWebKit::WebPageProxy::Internals::getPaymentCoordinatorEmbeddingUserAgent(uint64_t a1, uint64_t a2, WTF::RefCountedBase *a3)
{
  v3 = *(*(a1 + 56) + 8);
  if (v3)
  {
    return WTF::CompletionHandler<void ()(WTF::String const&)>::operator()(a3, v3 + 424);
  }

  result = 92;
  __break(0xC471u);
  return result;
}

uint64_t WebKit::WebPageProxy::Internals::paymentCoordinatorPresentingWindow(WebKit::WebPageProxy::Internals *this, const WebKit::WebPaymentCoordinatorProxy *a2)
{
  WebKit::WebPageProxy::Internals::protectedPage(this, &v7);
  v2 = v7;
  v3 = *(v7 + 56);
  if (v3 && (v4 = *(v3 + 8)) != 0)
  {
    (*(*v4 + 1712))(v4);
    CFRelease(*(v2 + 8));
    v5 = (*(*v4 + 936))(v4);
    (*(*v4 + 1720))(v4);
  }

  else
  {
    CFRelease(*(v7 + 8));
    return 0;
  }

  return v5;
}

uint64_t WebKit::WebPageProxy::Internals::paymentCoordinatorSourceApplicationBundleIdentifier(WebKit::WebPageProxy::Internals *this, const WebKit::WebPaymentCoordinatorProxy *a2)
{
  v2 = *(*(this + 9) + 8);
  if (v2)
  {
    return *(*(v2 + 392) + 224) + 312;
  }

  result = 92;
  __break(0xC471u);
  return result;
}

uint64_t non-virtual thunk toWebKit::WebPageProxy::Internals::paymentCoordinatorSourceApplicationBundleIdentifier(WebKit::WebPageProxy::Internals *this, const WebKit::WebPaymentCoordinatorProxy *a2)
{
  v2 = *(*(this + 7) + 8);
  if (v2)
  {
    return *(*(v2 + 392) + 224) + 312;
  }

  result = 92;
  __break(0xC471u);
  return result;
}

uint64_t WebKit::WebPageProxy::Internals::paymentCoordinatorSourceApplicationSecondaryIdentifier(WebKit::WebPageProxy::Internals *this, const WebKit::WebPaymentCoordinatorProxy *a2)
{
  v2 = *(*(this + 9) + 8);
  if (v2)
  {
    return *(*(v2 + 392) + 224) + 320;
  }

  result = 92;
  __break(0xC471u);
  return result;
}

uint64_t non-virtual thunk toWebKit::WebPageProxy::Internals::paymentCoordinatorSourceApplicationSecondaryIdentifier(WebKit::WebPageProxy::Internals *this, const WebKit::WebPaymentCoordinatorProxy *a2)
{
  v2 = *(*(this + 7) + 8);
  if (v2)
  {
    return *(*(v2 + 392) + 224) + 320;
  }

  result = 92;
  __break(0xC471u);
  return result;
}

void WebKit::WebPageProxy::Internals::paymentCoordinatorRemoveMessageReceiver(WebKit::WebPageProxy::Internals *a1, uint64_t a2, unsigned int a3)
{
  WebKit::WebPageProxy::Internals::protectedPage(a1, &v8);
  v5 = *(v8 + 352);
  atomic_fetch_add((v5 + 16), 1u);
  v6 = *(*(a1 + 9) + 8);
  if (v6)
  {
    IPC::MessageReceiverMap::removeMessageReceiver(v5 + 96, a3, *(v6 + 32));
    if (v5)
    {
      WTF::ThreadSafeRefCounted<WebKit::AuxiliaryProcessProxy,(WTF::DestructionThread)2>::deref((v5 + 16));
    }

    if (v8)
    {
      v7 = *(v8 + 8);

      CFRelease(v7);
    }
  }

  else
  {
    __break(0xC471u);
  }
}

_DWORD **WebKit::WebPageProxy::Internals::didStartSpeaking(WebKit::WebPageProxy::Internals *this, WebCore::PlatformSpeechSynthesisUtterance *a2)
{
  result = WebKit::WebPageProxy::Internals::speechSynthesisData(this);
  if (result[2])
  {
    v4 = (WebKit::WebPageProxy::Internals::speechSynthesisData(this) + 2);

    return WTF::CompletionHandler<void ()(void)>::operator()(v4);
  }

  return result;
}

_DWORD **WebKit::WebPageProxy::Internals::didFinishSpeaking(WebKit::WebPageProxy::Internals *this, WebCore::PlatformSpeechSynthesisUtterance *a2)
{
  result = WebKit::WebPageProxy::Internals::speechSynthesisData(this);
  if (result[3])
  {
    v4 = (WebKit::WebPageProxy::Internals::speechSynthesisData(this) + 3);

    return WTF::CompletionHandler<void ()(void)>::operator()(v4);
  }

  return result;
}

_DWORD **WebKit::WebPageProxy::Internals::didPauseSpeaking(WebKit::WebPageProxy::Internals *this, WebCore::PlatformSpeechSynthesisUtterance *a2)
{
  result = WebKit::WebPageProxy::Internals::speechSynthesisData(this);
  if (result[4])
  {
    v4 = (WebKit::WebPageProxy::Internals::speechSynthesisData(this) + 4);

    return WTF::CompletionHandler<void ()(void)>::operator()(v4);
  }

  return result;
}

_DWORD **WebKit::WebPageProxy::Internals::didResumeSpeaking(WebKit::WebPageProxy::Internals *this, WebCore::PlatformSpeechSynthesisUtterance *a2)
{
  result = WebKit::WebPageProxy::Internals::speechSynthesisData(this);
  if (result[5])
  {
    v4 = (WebKit::WebPageProxy::Internals::speechSynthesisData(this) + 5);

    return WTF::CompletionHandler<void ()(void)>::operator()(v4);
  }

  return result;
}

void WebKit::WebPageProxy::Internals::speakingErrorOccurred(WebKit::WebPageProxy::Internals *this, WebCore::PlatformSpeechSynthesisUtterance *a2)
{
  v2 = *(*(this + 9) + 8);
  if (v2)
  {
    CFRetain(*(v2 - 8));
    v3 = *(v2 + 336);
    atomic_fetch_add((v3 + 16), 1u);
    v4 = *(v2 + 32);
    v6 = IPC::Encoder::operator new(0x238, v5);
    *v6 = 2798;
    *(v6 + 2) = 0;
    *(v6 + 3) = 0;
    *(v6 + 1) = v4;
    *(v6 + 68) = 0;
    *(v6 + 70) = 0;
    *(v6 + 69) = 0;
    IPC::Encoder::encodeHeader(v6);
    v14 = v6;
    LOBYTE(v12) = 0;
    v13 = 0;
    WebKit::AuxiliaryProcessProxy::sendMessage(v3, &v14, 0, &v12, 1);
    if (v13 == 1)
    {
      v8 = v12;
      v12 = 0;
      if (v8)
      {
        (*(*v8 + 8))(v8);
      }
    }

    v9 = v14;
    v14 = 0;
    if (v9)
    {
      IPC::Encoder::~Encoder(v9, v7);
      bmalloc::api::tzoneFree(v10, v11);
      if (!v3)
      {
        goto LABEL_8;
      }
    }

    else if (!v3)
    {
LABEL_8:
      CFRelease(*(v2 - 8));
      return;
    }

    WTF::ThreadSafeRefCounted<WebKit::AuxiliaryProcessProxy,(WTF::DestructionThread)2>::deref((v3 + 16));
    goto LABEL_8;
  }

  __break(0xC471u);
}

void sub_19DCDC408(_Unwind_Exception *a1, void *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, IPC::Encoder *a12)
{
  if (a11 == 1 && a9)
  {
    (*(*a9 + 8))(a9);
  }

  if (a12)
  {
    IPC::Encoder::~Encoder(a12, a2);
    bmalloc::api::tzoneFree(v16, v17);
  }

  if (v13)
  {
    WTF::ThreadSafeRefCounted<WebKit::AuxiliaryProcessProxy,(WTF::DestructionThread)2>::deref(v12);
  }

  CFRelease(*(v14 - 8));
  _Unwind_Resume(a1);
}

void WebKit::WebPageProxy::Internals::boundaryEventOccurred(uint64_t a1, uint64_t a2, int a3, int a4, int a5)
{
  v19 = a5;
  v20 = a4;
  v5 = *(*(a1 + 72) + 8);
  if (v5)
  {
    CFRetain(*(v5 - 8));
    v7 = *(v5 + 336);
    atomic_fetch_add((v7 + 16), 1u);
    v16[0] = a3 == 0;
    v17 = &v20;
    v18 = &v19;
    v8 = *(v5 + 32);
    v10 = IPC::Encoder::operator new(0x238, v9);
    *v10 = 2449;
    *(v10 + 2) = 0;
    *(v10 + 3) = 0;
    *(v10 + 1) = v8;
    *(v10 + 68) = 0;
    *(v10 + 70) = 0;
    *(v10 + 69) = 0;
    IPC::Encoder::encodeHeader(v10);
    v23 = v10;
    IPC::Encoder::operator<<<BOOL &>(v10, v16);
    IPC::ArgumentCoder<unsigned int,void>::encode<IPC::Encoder>(v10, *v17);
    IPC::ArgumentCoder<unsigned int,void>::encode<IPC::Encoder>(v10, *v18);
    LOBYTE(v21) = 0;
    v22 = 0;
    WebKit::AuxiliaryProcessProxy::sendMessage(v7, &v23, 0, &v21, 1);
    if (v22 == 1)
    {
      v12 = v21;
      v21 = 0;
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
      bmalloc::api::tzoneFree(v14, v15);
      if (!v7)
      {
        goto LABEL_8;
      }
    }

    else if (!v7)
    {
LABEL_8:
      CFRelease(*(v5 - 8));
      return;
    }

    WTF::ThreadSafeRefCounted<WebKit::AuxiliaryProcessProxy,(WTF::DestructionThread)2>::deref((v7 + 16));
    goto LABEL_8;
  }

  __break(0xC471u);
}

void sub_19DCDC614(_Unwind_Exception *a1, void *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, IPC::Encoder *a16)
{
  if (a15 == 1)
  {
    if (a13)
    {
      (*(*a13 + 8))(a13);
    }
  }

  if (a16)
  {
    IPC::Encoder::~Encoder(a16, a2);
    bmalloc::api::tzoneFree(v20, v21);
    if (!v17)
    {
LABEL_7:
      CFRelease(*(v18 - 8));
      _Unwind_Resume(a1);
    }
  }

  else if (!v17)
  {
    goto LABEL_7;
  }

  WTF::ThreadSafeRefCounted<WebKit::AuxiliaryProcessProxy,(WTF::DestructionThread)2>::deref(v16);
  goto LABEL_7;
}

void WebKit::WebPageProxy::Internals::voicesDidChange(WebKit::WebPageProxy::Internals *this)
{
  v1 = *(*(this + 9) + 8);
  if (v1)
  {
    CFRetain(*(v1 - 8));
    v2 = *(v1 + 336);
    atomic_fetch_add((v2 + 16), 1u);
    v3 = *(v1 + 32);
    v5 = IPC::Encoder::operator new(0x238, v4);
    *v5 = 2858;
    *(v5 + 2) = 0;
    *(v5 + 3) = 0;
    *(v5 + 1) = v3;
    *(v5 + 68) = 0;
    *(v5 + 70) = 0;
    *(v5 + 69) = 0;
    IPC::Encoder::encodeHeader(v5);
    v13 = v5;
    LOBYTE(v11) = 0;
    v12 = 0;
    WebKit::AuxiliaryProcessProxy::sendMessage(v2, &v13, 0, &v11, 1);
    if (v12 == 1)
    {
      v7 = v11;
      v11 = 0;
      if (v7)
      {
        (*(*v7 + 8))(v7);
      }
    }

    v8 = v13;
    v13 = 0;
    if (v8)
    {
      IPC::Encoder::~Encoder(v8, v6);
      bmalloc::api::tzoneFree(v9, v10);
      if (!v2)
      {
        goto LABEL_8;
      }
    }

    else if (!v2)
    {
LABEL_8:
      CFRelease(*(v1 - 8));
      return;
    }

    WTF::ThreadSafeRefCounted<WebKit::AuxiliaryProcessProxy,(WTF::DestructionThread)2>::deref((v2 + 16));
    goto LABEL_8;
  }

  __break(0xC471u);
}

void sub_19DCDC7E4(_Unwind_Exception *a1, void *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, IPC::Encoder *a12)
{
  if (a11 == 1 && a9)
  {
    (*(*a9 + 8))(a9);
  }

  if (a12)
  {
    IPC::Encoder::~Encoder(a12, a2);
    bmalloc::api::tzoneFree(v16, v17);
  }

  if (v13)
  {
    WTF::ThreadSafeRefCounted<WebKit::AuxiliaryProcessProxy,(WTF::DestructionThread)2>::deref(v12);
  }

  CFRelease(*(v14 - 8));
  _Unwind_Resume(a1);
}

uint64_t WebKit::WebPageProxy::didCreateContextInWebProcessForVisibilityPropagation(uint64_t this, uint64_t a2)
{
  *(this + 1288) = a2;
  v2 = *(this + 56);
  if (v2)
  {
    v3 = *(v2 + 8);
    if (v3)
    {
      (*(*v3 + 1712))(v3);
      (*(*v3 + 656))(v3, a2);
      v5 = *(*v3 + 1720);

      return v5(v3);
    }
  }

  return this;
}

uint64_t WebKit::WebPageProxy::didCreateContextInGPUProcessForVisibilityPropagation(uint64_t this, uint64_t a2)
{
  *(this + 1292) = a2;
  v2 = *(this + 56);
  if (v2)
  {
    v3 = *(v2 + 8);
    if (v3)
    {
      (*(*v3 + 1712))(v3);
      (*(*v3 + 664))(v3, a2);
      v5 = *(*v3 + 1720);

      return v5(v3);
    }
  }

  return this;
}

void *WebKit::WebPageProxy::updateFullscreenVideoTextRecognition(void *this)
{
  v1 = this[7];
  if (!v1)
  {
    return this;
  }

  v2 = *(v1 + 8);
  if (!v2)
  {
    return this;
  }

  v3 = this;
  (*(*v2 + 1712))(v2);
  if ((*(*v2 + 1304))(v2))
  {
    v4 = v3[65];
    if (v4)
    {
      ++v4[4];
      v6 = v3 + 4;
      v5 = v3[4];
      if ((*(v5 + 2864) & 1) != 0 && WebKit::PlaybackSessionManagerProxy::isPaused(v4, *(v5 + 2848), *(v5 + 2856)))
      {
        WTF::RunLoop::TimerBase::start();
LABEL_14:
        if (v4[4] == 1)
        {
          (*(*v4 + 24))(v4);
        }

        else
        {
          --v4[4];
        }

        goto LABEL_16;
      }
    }

    else
    {
      v6 = v3 + 4;
    }

    WTF::RunLoop::TimerBase::stop((*v6 + 2800));
    if (*(*v6 + 2864) == 1)
    {
      v7 = WebKit::VideoPresentationManagerProxy::playerViewController(v3[66], *(*v6 + 2848), *(*v6 + 2856));
      v8 = v7;
      if (v7)
      {
        v9 = v7;
        (*(*v2 + 1296))(v2, v8);
      }
    }

    if (!v4)
    {
      goto LABEL_16;
    }

    goto LABEL_14;
  }

LABEL_16:
  v10 = *(*v2 + 1720);

  return v10(v2);
}

void sub_19DCDCC8C(_Unwind_Exception *a1)
{
  v4 = v3;

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

  (*(*v1 + 1720))(v1);
  _Unwind_Resume(a1);
}

unsigned int *WebKit::WebPageProxy::fullscreenVideoTextRecognitionTimerFired(unsigned int *this)
{
  v1 = *(this + 4);
  if (*(v1 + 2864) == 1)
  {
    v2 = this;
    v3 = *(this + 66);
    if (v3)
    {
      v4 = *(v1 + 2848);
      v5 = *(v1 + 2856);
      ++v3[4];
      WTF::WeakPtrFactory<IPC::MessageReceiver,WTF::DefaultWeakPtrImpl>::initializeIfNeeded(this + 6, (this + 4));
      v6 = *(v2 + 24);
      atomic_fetch_add(v6, 1u);
      v7 = WTF::fastMalloc(0x20);
      *v7 = &unk_1F1103C28;
      *(v7 + 1) = v4;
      *(v7 + 2) = v5;
      *(v7 + 3) = v6;
      v8 = v7;
      WebKit::VideoPresentationManagerProxy::requestBitmapImageForCurrentTime(v3, v4, v5, &v8);
      this = v8;
      v8 = 0;
      if (this)
      {
        this = (*(*this + 8))(this);
      }

      if (v3[4] == 1)
      {
        return (*(*v3 + 24))(v3);
      }

      else
      {
        --v3[4];
      }
    }
  }

  return this;
}

void sub_19DCDCE44(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (a10)
  {
    (*(*a10 + 8))(a10);
  }

  if (v10[4] == 1)
  {
    (*(*v10 + 24))(v10);
  }

  else
  {
    --v10[4];
  }

  _Unwind_Resume(exception_object);
}

unsigned int *WebKit::WebPageProxy::scheduleActivityStateUpdate(WebKit::WebPageProxy *this)
{
  isScheduled = WebCore::RunLoopObserver::isScheduled(*(this + 129));
  result = [MEMORY[0x1E6979518] currentState];
  v4 = result;
  if (isScheduled)
  {
    v5 = result == 0;
  }

  else
  {
    v5 = 1;
  }

  if (!v5)
  {
    *(this + 1049) = 0;
    result = WebCore::RunLoopObserver::invalidate(*(this + 129));
  }

  if ((*(this + 1049) & 1) == 0)
  {
    *(this + 1049) = 1;
    if (v4)
    {
      v6 = MEMORY[0x1E6979518];
      v10[0] = MEMORY[0x1E69E9820];
      v10[1] = 3321888768;
      v10[2] = ___ZN6WebKit12WebPageProxy27scheduleActivityStateUpdateEv_block_invoke;
      v10[3] = &__block_descriptor_40_e8_32c64_ZTSKZN6WebKit12WebPageProxy27scheduleActivityStateUpdateEvE3__0_e5_v8__0l;
      WTF::WeakPtrFactory<IPC::MessageReceiver,WTF::DefaultWeakPtrImpl>::initializeIfNeeded(this + 6, this + 16);
      v7 = *(this + 3);
      atomic_fetch_add(v7, 1u);
      if (v7)
      {
        atomic_fetch_add(v7, 1u);
      }

      v11 = v7;
      [v6 addCommitHandler:v10 forPhase:2];
      if (v7 && atomic_fetch_add(v7, 0xFFFFFFFF) == 1)
      {
        atomic_store(1u, v7);
        WTF::fastFree(v7, v8);
      }

      result = v11;
      v11 = 0;
      if (result)
      {
        if (atomic_fetch_add(result, 0xFFFFFFFF) == 1)
        {
          atomic_store(1u, result);
          return WTF::fastFree(result, v8);
        }
      }
    }

    else
    {
      v9 = *(this + 129);

      return MEMORY[0x1EEE55FF0](v9, 0, 5);
    }
  }

  return result;
}

void sub_19DCDD05C(_Unwind_Exception *exception_object, void *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, WTF *a14)
{
  if (a14 && atomic_fetch_add(a14, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, a14);
    WTF::fastFree(a14, a2);
    if (!v14)
    {
      goto LABEL_6;
    }
  }

  else if (!v14)
  {
    goto LABEL_6;
  }

  if (atomic_fetch_add(v14, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v14);
    WTF::fastFree(v14, a2);
  }

LABEL_6:
  _Unwind_Resume(exception_object);
}

uint64_t ___ZN6WebKit12WebPageProxy27scheduleActivityStateUpdateEv_block_invoke(WTF::WorkQueue *a1)
{
  v2 = WTF::WorkQueue::mainSingleton(a1);
  v3 = *(a1 + 4);
  if (v3)
  {
    atomic_fetch_add(v3, 1u);
  }

  v4 = WTF::fastMalloc(0x10);
  *v4 = &unk_1F1103B90;
  v4[1] = v3;
  v6 = v4;
  (*(*v2 + 48))(v2, &v6);
  result = v6;
  v6 = 0;
  if (result)
  {
    return (*(*result + 8))(result);
  }

  return result;
}

void sub_19DCDD180(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (a10)
  {
    (*(*a10 + 8))(a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t __copy_helper_block_e8_32c64_ZTSKZN6WebKit12WebPageProxy27scheduleActivityStateUpdateEvE3__0(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 32);
  if (v2)
  {
    atomic_fetch_add(v2, 1u);
  }

  *(result + 32) = v2;
  return result;
}

unsigned int *__destroy_helper_block_e8_32c64_ZTSKZN6WebKit12WebPageProxy27scheduleActivityStateUpdateEvE3__0(uint64_t a1, void *a2)
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

unint64_t WebKit::WebPageProxy::addActivityStateUpdateCompletionHandler(unint64_t result, uint64_t *a2)
{
  if (*(result + 1049))
  {
    v3 = result;
    v4 = *(result + 1068);
    if (v4 == *(result + 1064))
    {
      result = WTF::Vector<WTF::CompletionHandler<void ()(void)>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(result + 1056, v4 + 1, a2);
      v4 = *(v3 + 1068);
      v5 = v4 + 1;
      v6 = *(v3 + 1056);
      v7 = *result;
      *result = 0;
    }

    else
    {
      v5 = v4 + 1;
      v6 = *(result + 1056);
      v7 = *a2;
      *a2 = 0;
    }

    *(v6 + 8 * v4) = v7;
    *(v3 + 1068) = v5;
  }

  else
  {

    return WTF::CompletionHandler<void ()(void)>::operator()(a2);
  }

  return result;
}

atomic_uint *WebKit::WebPageProxy::createTextFragmentDirectiveFromSelection(atomic_uint *result, uint64_t *a2)
{
  if ((*(result + 865) & 1) == 0 && *(result + 864) == 1)
  {
    v2 = *(result + 44);
    atomic_fetch_add((v2 + 16), 1u);
    result = WebKit::AuxiliaryProcessProxy::sendWithAsyncReply<Messages::WebPage::CreateTextFragmentDirectiveFromSelection,WTF::CompletionHandler<void ()(WTF::URL &&)>>(v2, &v3, a2, *(result + 6), 0, 1);
    if (v2)
    {
      return WTF::ThreadSafeRefCounted<WebKit::AuxiliaryProcessProxy,(WTF::DestructionThread)2>::deref((v2 + 16));
    }
  }

  return result;
}

void sub_19DCDD32C(_Unwind_Exception *exception_object)
{
  if (v2)
  {
    WTF::ThreadSafeRefCounted<WebKit::AuxiliaryProcessProxy,(WTF::DestructionThread)2>::deref(v1);
  }

  _Unwind_Resume(exception_object);
}

atomic_uint *WebKit::WebPageProxy::getTextFragmentRanges(uint64_t a1, uint64_t *a2)
{
  if ((*(a1 + 865) & 1) != 0 || (*(a1 + 864) & 1) == 0)
  {
    WTF::CompletionHandler<void ()(WTF::Vector<WebKit::EditingRange,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> const&&)>::operator()(a2);
    return 0;
  }

  else
  {
    v2 = *(a1 + 352);
    atomic_fetch_add((v2 + 16), 1u);
    result = WebKit::AuxiliaryProcessProxy::sendWithAsyncReply<Messages::WebPage::GetTextFragmentRanges,WTF::CompletionHandler<void ()(WTF::Vector<WebKit::EditingRange,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> const&&)>>(v2, &v4, a2, *(a1 + 48), 0, 1);
    if (v2)
    {
      return WTF::ThreadSafeRefCounted<WebKit::AuxiliaryProcessProxy,(WTF::DestructionThread)2>::deref((v2 + 16));
    }
  }

  return result;
}

void sub_19DCDD3D8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, WTF *a9, int a10)
{
  if (v10)
  {
    WTF::ThreadSafeRefCounted<WebKit::AuxiliaryProcessProxy,(WTF::DestructionThread)2>::deref(v11);
  }

  _Unwind_Resume(exception_object);
}

uint64_t WTF::CompletionHandler<void ()(WTF::Vector<WebKit::EditingRange,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> const&&)>::operator()(uint64_t *a1)
{
  v1 = *a1;
  *a1 = 0;
  (*(*v1 + 16))(v1);
  v2 = *(*v1 + 8);

  return v2(v1);
}

uint64_t WebKit::WebPageProxy::createAppHighlightInSelectedRange(uint64_t this, char a2, char a3)
{
  if ((*(this + 865) & 1) == 0)
  {
    v3 = this;
    if (*(this + 864) == 1)
    {
      WebKit::WebPageProxy::setUpHighlightsObserver(this);
      CFRetain(*(v3 + 8));
      v6 = *(v3 + 352);
      atomic_fetch_add((v6 + 16), 1u);
      v7 = *(v3 + 48);
      v9 = IPC::Encoder::operator new(0x238, v8);
      *v9 = 2480;
      *(v9 + 2) = 0;
      *(v9 + 3) = 0;
      *(v9 + 1) = v7;
      *(v9 + 68) = 0;
      *(v9 + 70) = 0;
      *(v9 + 69) = 0;
      IPC::Encoder::encodeHeader(v9);
      v18 = v9;
      LOBYTE(v16[0]) = a2;
      IPC::Encoder::operator<<<BOOL>(v9, v16);
      LOBYTE(v16[0]) = a3;
      IPC::Encoder::operator<<<BOOL>(v9, v16);
      v10 = WTF::fastMalloc(0x18);
      *v10 = &unk_1F1103CA0;
      v10[1] = v3;
      v10[2] = v3;
      if (WTF::ObjectIdentifierGeneric<IPC::AsyncReplyIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>::m_generationProtected == 1)
      {
        this = 141;
        __break(0xC471u);
        return this;
      }

      IdentifierInternal = WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>::generateIdentifierInternal();
      v16[0] = v10;
      v16[1] = IdentifierInternal;
      v17 = 1;
      WebKit::AuxiliaryProcessProxy::sendMessage(v6, &v18, 0, v16, 1);
      if (v17 == 1)
      {
        v13 = v16[0];
        v16[0] = 0;
        if (v13)
        {
          (*(*v13 + 8))(v13);
        }
      }

      this = v18;
      v18 = 0;
      if (!this)
      {
        if (!v6)
        {
          return this;
        }

        return WTF::ThreadSafeRefCounted<WebKit::AuxiliaryProcessProxy,(WTF::DestructionThread)2>::deref((v6 + 16));
      }

      IPC::Encoder::~Encoder(this, v12);
      this = bmalloc::api::tzoneFree(v14, v15);
      if (v6)
      {
        return WTF::ThreadSafeRefCounted<WebKit::AuxiliaryProcessProxy,(WTF::DestructionThread)2>::deref((v6 + 16));
      }
    }
  }

  return this;
}

void sub_19DCDD680(_Unwind_Exception *exception_object, void *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, IPC::Encoder *a12)
{
  if (a11 == 1)
  {
    if (a9)
    {
      (*(*a9 + 8))(a9);
    }
  }

  if (a12)
  {
    IPC::Encoder::~Encoder(a12, a2);
    bmalloc::api::tzoneFree(v15, v16);
    if (!v13)
    {
      goto LABEL_6;
    }
  }

  else if (!v13)
  {
    goto LABEL_6;
  }

  WTF::ThreadSafeRefCounted<WebKit::AuxiliaryProcessProxy,(WTF::DestructionThread)2>::deref(v12);
LABEL_6:
  _Unwind_Resume(exception_object);
}

WTF *WebKit::WebPageProxy::setUpHighlightsObserver(WTF *this)
{
  if (!*(this + 181))
  {
    v1 = this;
    WTF::WeakPtrFactory<IPC::MessageReceiver,WTF::DefaultWeakPtrImpl>::initializeIfNeeded(this + 6, this + 16);
    v2 = *(v1 + 3);
    atomic_fetch_add(v2, 1u);
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3321888768;
    v6[2] = ___ZN6WebKit12WebPageProxy23setUpHighlightsObserverEv_block_invoke;
    v6[3] = &__block_descriptor_40_e8_32c90_ZTSN3WTF7WeakPtrIN6WebKit12WebPageProxyENS_18DefaultWeakPtrImplENS_12RawPtrTraitsIS3_EEEE_e8_v12__0B8l;
    if (v2)
    {
      atomic_fetch_add(v2, 1u);
    }

    v7 = v2;
    v3 = [objc_alloc(getSYNotesActivationObserverClass()) initWithHandler:v6];
    v5 = *(v1 + 181);
    *(v1 + 181) = v3;
    if (v5)
    {
    }

    this = v7;
    v7 = 0;
    if (this && atomic_fetch_add(this, 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, this);
      this = WTF::fastFree(this, v4);
      if (!v2)
      {
        return this;
      }
    }

    else if (!v2)
    {
      return this;
    }

    if (atomic_fetch_add(v2, 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, v2);
      return WTF::fastFree(v2, v4);
    }
  }

  return this;
}

void sub_19DCDD85C(_Unwind_Exception *exception_object, void *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, WTF *a14)
{
  if (a14 && atomic_fetch_add(a14, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, a14);
    WTF::fastFree(a14, a2);
    if (!v14)
    {
      goto LABEL_6;
    }
  }

  else if (!v14)
  {
    goto LABEL_6;
  }

  if (atomic_fetch_add(v14, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v14);
    WTF::fastFree(v14, a2);
  }

LABEL_6:
  _Unwind_Resume(exception_object);
}

uint64_t WebKit::WebPageProxy::restoreAppHighlightsAndScrollToIndex(uint64_t result, uint64_t *a2, uint64_t a3)
{
  v23 = a3;
  if ((*(result + 865) & 1) == 0)
  {
    v3 = result;
    if (*(result + 864) == 1)
    {
      v21 = 0;
      v22 = 0;
      v5 = *(a2 + 3);
      if (!v5)
      {
        goto LABEL_15;
      }

      if (v5 >> 28)
      {
        __break(0xC471u);
        return result;
      }

      LODWORD(v22) = *(a2 + 3);
      v21 = WTF::fastMalloc((16 * v5));
      v6 = *(a2 + 3);
      if (v6)
      {
        v7 = *a2;
        v8 = 8 * v6;
        do
        {
          WebCore::SharedMemory::createHandle();
          if (v27 == 1)
          {
            WTF::MachSendRight::MachSendRight();
            v25 = v26[1];
            if (HIDWORD(v22) == v22)
            {
              WTF::Vector<WebCore::SharedMemoryHandle,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::appendSlowCase<(WTF::FailureAction)0,WebCore::SharedMemoryHandle>(&v21, &v24);
            }

            else
            {
              *(WTF::MachSendRight::MachSendRight() + 8) = v25;
              ++HIDWORD(v22);
            }

            WTF::MachSendRight::~MachSendRight(&v24);
            if (v27)
            {
              WTF::MachSendRight::~MachSendRight(v26);
            }
          }

          v7 += 8;
          v8 -= 8;
        }

        while (v8);
        v9 = HIDWORD(v22);
      }

      else
      {
LABEL_15:
        v9 = 0;
      }

      WTF::Vector<WebCore::SharedMemoryHandle,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::shrinkCapacity(&v21, v9);
      WebKit::WebPageProxy::setUpHighlightsObserver(v3);
      v10 = *(v3 + 44);
      atomic_fetch_add((v10 + 16), 1u);
      v11 = *(v3 + 6);
      v13 = IPC::Encoder::operator new(0x238, v12);
      *v13 = 2690;
      *(v13 + 2) = 0;
      *(v13 + 3) = 0;
      *(v13 + 1) = v11;
      *(v13 + 68) = 0;
      *(v13 + 70) = 0;
      *(v13 + 69) = 0;
      IPC::Encoder::encodeHeader(v13);
      v24 = v13;
      IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(v13, HIDWORD(v22));
      if (HIDWORD(v22))
      {
        v14 = v21;
        v15 = 16 * HIDWORD(v22);
        do
        {
          IPC::ArgumentCoder<WebCore::SharedMemoryHandle,void>::encode(v13, v14);
          v14 += 16;
          v15 -= 16;
        }

        while (v15);
      }

      IPC::ArgumentCoder<std::optional<unsigned int>,void>::encode<IPC::Encoder,std::optional<unsigned int>>(v13, &v23);
      LOBYTE(v26[0]) = 0;
      v27 = 0;
      WebKit::AuxiliaryProcessProxy::sendMessage(v10, &v24, 0, v26, 1);
      if (v27 == 1)
      {
        v17 = v26[0];
        v26[0] = 0;
        if (v17)
        {
          (*(*v17 + 8))(v17);
        }
      }

      v18 = v24;
      v24 = 0;
      if (v18)
      {
        IPC::Encoder::~Encoder(v18, v16);
        bmalloc::api::tzoneFree(v19, v20);
        if (!v10)
        {
          return WTF::Vector<WebCore::SharedMemoryHandle,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v21, v16);
        }
      }

      else if (!v10)
      {
        return WTF::Vector<WebCore::SharedMemoryHandle,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v21, v16);
      }

      WTF::ThreadSafeRefCounted<WebKit::AuxiliaryProcessProxy,(WTF::DestructionThread)2>::deref((v10 + 16));
      return WTF::Vector<WebCore::SharedMemoryHandle,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v21, v16);
    }
  }

  return result;
}

void sub_19DCDDB0C(_Unwind_Exception *a1, void *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, IPC::Encoder *a12, uint64_t a13, uint64_t a14, uint64_t a15, char a16)
{
  if (a16 == 1)
  {
    v19 = a14;
    a14 = 0;
    if (v19)
    {
      (*(*v19 + 8))(v19);
    }
  }

  v20 = a12;
  a12 = 0;
  if (v20)
  {
    IPC::Encoder::~Encoder(v20, a2);
    bmalloc::api::tzoneFree(v21, v22);
    if (!v17)
    {
LABEL_7:
      WTF::Vector<WebCore::SharedMemoryHandle,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&a9, a2);
      _Unwind_Resume(a1);
    }
  }

  else if (!v17)
  {
    goto LABEL_7;
  }

  WTF::ThreadSafeRefCounted<WebKit::AuxiliaryProcessProxy,(WTF::DestructionThread)2>::deref(v16);
  goto LABEL_7;
}

uint64_t ___ZN6WebKit12WebPageProxy23setUpHighlightsObserverEv_block_invoke(uint64_t a1, char a2)
{
  v3 = *(a1 + 32);
  if (v3)
  {
    atomic_fetch_add(v3, 1u);
  }

  v4 = WTF::fastMalloc(0x18);
  *v4 = &unk_1F1103CC8;
  if (v3)
  {
    atomic_fetch_add(v3, 1u);
  }

  *(v4 + 8) = v3;
  *(v4 + 16) = a2;
  v7 = v4;
  WTF::ensureOnMainRunLoop();
  result = v7;
  if (v7)
  {
    result = (*(*v7 + 8))(v7);
    if (!v3)
    {
      return result;
    }
  }

  else if (!v3)
  {
    return result;
  }

  if (atomic_fetch_add(v3, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v3);
    return WTF::fastFree(v3, v5);
  }

  return result;
}

void sub_19DCDDCB0(_Unwind_Exception *exception_object, void *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (a10)
  {
    (*(*a10 + 8))(a10);
  }

  if (v10)
  {
    if (atomic_fetch_add(v10, 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, v10);
      WTF::fastFree(v10, a2);
    }
  }

  _Unwind_Resume(exception_object);
}

uint64_t __copy_helper_block_e8_32c90_ZTSN3WTF7WeakPtrIN6WebKit12WebPageProxyENS_18DefaultWeakPtrImplENS_12RawPtrTraitsIS3_EEEE(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 32);
  if (v2)
  {
    atomic_fetch_add(v2, 1u);
  }

  *(result + 32) = v2;
  return result;
}

unsigned int *__destroy_helper_block_e8_32c90_ZTSN3WTF7WeakPtrIN6WebKit12WebPageProxyENS_18DefaultWeakPtrImplENS_12RawPtrTraitsIS3_EEEE(uint64_t a1, void *a2)
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

void WebKit::WebPageProxy::startApplePayAMSUISession(uint64_t a1, WTF::URL *a2, atomic_uint **a3, uint64_t *a4)
{
  if (byte_1EB01D4D2 == 1)
  {
    if (!qword_1EB01D4F0)
    {
LABEL_31:
      WTF::CompletionHandler<void ()(std::optional<BOOL> &&)>::operator()(a4);
      return;
    }
  }

  else
  {
    qword_1EB01D4F0 = dlopen("/System/Library/PrivateFrameworks/AppleMediaServicesUI.framework/AppleMediaServicesUI", 2);
    byte_1EB01D4D2 = 1;
    if (!qword_1EB01D4F0)
    {
      goto LABEL_31;
    }
  }

  v8 = (*(**(a1 + 120) + 504))(*(a1 + 120));
  if (!v8)
  {
    goto LABEL_31;
  }

  v9 = v8;
  v10 = v8;
  v11 = objc_alloc(off_1EE6358D8());
  v12 = MEMORY[0x1E696ACB0];
  v13 = *a3;
  if (v13)
  {
    atomic_fetch_add_explicit(v13, 2u, memory_order_relaxed);
    MEMORY[0x19EB00B70](&v32, v13);
    if (atomic_fetch_add_explicit(v13, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v13, v14);
    }
  }

  else
  {
    v32 = &stru_1F1147748;
    v15 = &stru_1F1147748;
  }

  v16 = [v12 JSONObjectWithData:-[__CFString dataUsingEncoding:](v32 options:"dataUsingEncoding:" error:{4), 0, 0}];
  v17 = v16;
  if (v16)
  {
    if (WTF::ObjCTypeCastTraits<NSDictionary>::isType(v16))
    {
      v18 = v17;
    }

    else
    {
      v18 = 0;
    }
  }

  else
  {
    v18 = 0;
  }

  v19 = [v11 initWithRequestDictionary:v18];
  v20 = v32;
  v32 = 0;
  if (v20)
  {
  }

  WTF::URL::createCFURL(&v32, a2);
  [v19 setOriginatingURL:v32];
  v21 = v32;
  v32 = 0;
  if (v21)
  {
  }

  v22 = [_MergedGlobals_303() createBagForSubProfile];
  v23 = v22;
  if (v22)
  {
    v24 = v22;
  }

  v25 = [objc_alloc(_MergedGlobals_303()) initWithRequest:v19 bag:v23 presentingViewController:v9];
  v26 = *(a1 + 568);
  *(a1 + 568) = v25;
  if (v26)
  {

    v25 = *(a1 + 568);
  }

  [v25 setRemotePresentation:1];
  v27 = [*(a1 + 568) presentEngagement];
  v28 = v27;
  if (v27)
  {
    v29 = v27;
  }

  v30 = *a4;
  *a4 = 0;
  v31 = malloc_type_malloc(0x28uLL, 0x10E004053C0834CuLL);
  *v31 = MEMORY[0x1E69E9818];
  v31[1] = 50331650;
  v31[2] = WTF::BlockPtr<void ()(AMSEngagementResult *,NSError *)>::fromCallable<WebKit::WebPageProxy::startApplePayAMSUISession(WTF::URL &&,WebCore::ApplePayAMSUIRequest &&,WTF::CompletionHandler<void ()(std::optional<BOOL> &&)> &&)::$_0>(WebKit::WebPageProxy::startApplePayAMSUISession(WTF::URL &&,WebCore::ApplePayAMSUIRequest &&,WTF::CompletionHandler<void ()(std::optional<BOOL> &&)> &&)::$_0)::{lambda(void *,AMSEngagementResult *,NSError *)#1}::__invoke;
  v31[3] = &WTF::BlockPtr<void ()(AMSEngagementResult *,NSError *)>::fromCallable<WebKit::WebPageProxy::startApplePayAMSUISession(WTF::URL &&,WebCore::ApplePayAMSUIRequest &&,WTF::CompletionHandler<void ()(std::optional<BOOL> &&)> &&)::$_0>(WebKit::WebPageProxy::startApplePayAMSUISession(WTF::URL &&,WebCore::ApplePayAMSUIRequest &&,WTF::CompletionHandler<void ()(std::optional<BOOL> &&)> &&)::$_0)::descriptor;
  v31[4] = v30;
  [v28 addFinishBlock:v31];
  _Block_release(v31);
  if (v28)
  {
  }

  if (v23)
  {
  }

  if (v19)
  {
  }
}

uint64_t WTF::CompletionHandler<void ()(std::optional<BOOL> &&)>::operator()(uint64_t *a1)
{
  v1 = *a1;
  *a1 = 0;
  (*(*v1 + 16))(v1);
  v2 = *(*v1 + 8);

  return v2(v1);
}

void WebKit::WebPageProxy::abortApplePayAMSUISession(WebKit::WebPageProxy *this)
{
  v1 = *(this + 71);
  *(this + 71) = 0;
  v2 = v1;
  [v1 cancel];
  if (v2)
  {
  }
}

void sub_19DCDE228(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  if (a10)
  {
  }

  _Unwind_Resume(exception_object);
}

atomic_uint *WebKit::WebPageProxy::requestActiveNowPlayingSessionInfo(uint64_t a1, uint64_t *a2)
{
  v2 = *(a1 + 352);
  atomic_fetch_add((v2 + 16), 1u);
  result = WebKit::AuxiliaryProcessProxy::sendWithAsyncReply<Messages::WebPage::RequestActiveNowPlayingSessionInfo,WTF::CompletionHandler<void ()(BOOL,WebCore::NowPlayingInfo &&)>>(v2, &v4, a2, *(a1 + 48), 0, 1);
  if (v2)
  {
    return WTF::ThreadSafeRefCounted<WebKit::AuxiliaryProcessProxy,(WTF::DestructionThread)2>::deref((v2 + 16));
  }

  return result;
}

void sub_19DCDE2A8(_Unwind_Exception *exception_object)
{
  if (v2)
  {
    WTF::ThreadSafeRefCounted<WebKit::AuxiliaryProcessProxy,(WTF::DestructionThread)2>::deref(v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t WebKit::WebPageProxy::setLastNavigationWasAppInitiated(WebKit::WebPageProxy *this, WebCore::ResourceRequest *a2)
{
  v4 = [WebCore::ResourceRequest::nsURLRequest() attribution] == 0;
  if (*(*(this + 8) + 281))
  {
    v5 = *(*(this + 8) + 281) == 2;
  }

  else
  {
    v5 = v4;
  }

  result = WebCore::ResourceRequestBase::setIsAppInitiated(a2);
  *(this + 1424) = v5;
  return result;
}

atomic_uint *WebKit::WebPageProxy::lastNavigationWasAppInitiated(uint64_t a1, uint64_t *a2)
{
  v2 = *(a1 + 352);
  atomic_fetch_add((v2 + 16), 1u);
  result = WebKit::AuxiliaryProcessProxy::sendWithAsyncReply<Messages::WebPage::LastNavigationWasAppInitiated,WTF::CompletionHandler<void ()(BOOL)>>(v2, &v4, a2, *(a1 + 48), 0, 1);
  if (v2)
  {
    return WTF::ThreadSafeRefCounted<WebKit::AuxiliaryProcessProxy,(WTF::DestructionThread)2>::deref((v2 + 16));
  }

  return result;
}

void sub_19DCDE390(_Unwind_Exception *exception_object)
{
  if (v2)
  {
    WTF::ThreadSafeRefCounted<WebKit::AuxiliaryProcessProxy,(WTF::DestructionThread)2>::deref(v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t WebKit::WebPageProxy::grantAccessToAssetServices(WebKit::WebPageProxy *this)
{
  v11[2] = *MEMORY[0x1E69E9840];
  v11[0] = "com.apple.mobileassetd.v2";
  v11[1] = 26;
  v2 = *(this + 44);
  atomic_fetch_add((v2 + 16), 1u);
  WebKit::WebProcessProxy::auditToken(v2, v6);
  v9[0] = v6[0];
  v9[1] = v6[1];
  v10 = v7;
  WebKit::SandboxExtension::createHandlesForMachLookup(v11, 1uLL, v9, 1, v8);
  if (v2)
  {
    WTF::ThreadSafeRefCounted<WebKit::AuxiliaryProcessProxy,(WTF::DestructionThread)2>::deref((v2 + 16));
  }

  v3 = *(this + 44);
  atomic_fetch_add((v3 + 16), 1u);
  *&v9[0] = v8;
  WebKit::AuxiliaryProcessProxy::send<Messages::WebProcess::GrantAccessToAssetServices>(v3, v9, 0, 0);
  if (v3)
  {
    WTF::ThreadSafeRefCounted<WebKit::AuxiliaryProcessProxy,(WTF::DestructionThread)2>::deref((v3 + 16));
  }

  return WTF::Vector<WebKit::SandboxExtensionHandle,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v8, v4);
}

void sub_19DCDE4AC(_Unwind_Exception *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  if (v9)
  {
    WTF::ThreadSafeRefCounted<WebKit::AuxiliaryProcessProxy,(WTF::DestructionThread)2>::deref(v8);
  }

  WTF::Vector<WebKit::SandboxExtensionHandle,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(va, a2);
  _Unwind_Resume(a1);
}

uint64_t WebKit::AuxiliaryProcessProxy::send<Messages::WebProcess::GrantAccessToAssetServices>(uint64_t a1, void *a2, uint64_t a3, char a4)
{
  v8 = IPC::Encoder::operator new(0x238, a2);
  *v8 = 2953;
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

void sub_19DCDE5E0(_Unwind_Exception *exception_object, void *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, IPC::Encoder *a12)
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

atomic_uint *WebKit::WebPageProxy::revokeAccessToAssetServices(WebKit::WebPageProxy *this)
{
  v1 = *(this + 44);
  atomic_fetch_add((v1 + 16), 1u);
  result = WebKit::AuxiliaryProcessProxy::send<Messages::WebProcess::RevokeAccessToAssetServices>(v1, &v3, 0, 0);
  if (v1)
  {
    return WTF::ThreadSafeRefCounted<WebKit::AuxiliaryProcessProxy,(WTF::DestructionThread)2>::deref((v1 + 16));
  }

  return result;
}

void sub_19DCDE6A4(_Unwind_Exception *exception_object)
{
  if (v2)
  {
    WTF::ThreadSafeRefCounted<WebKit::AuxiliaryProcessProxy,(WTF::DestructionThread)2>::deref(v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t WebKit::AuxiliaryProcessProxy::send<Messages::WebProcess::RevokeAccessToAssetServices>(uint64_t a1, void *a2, uint64_t a3, char a4)
{
  v7 = IPC::Encoder::operator new(0x238, a2);
  *v7 = 2981;
  *(v7 + 2) = 0;
  *(v7 + 3) = 0;
  *(v7 + 1) = a3;
  *(v7 + 68) = 0;
  *(v7 + 70) = 0;
  *(v7 + 69) = 0;
  IPC::Encoder::encodeHeader(v7);
  v17 = v7;
  LOBYTE(v15) = 0;
  v16 = 0;
  v9 = WebKit::AuxiliaryProcessProxy::sendMessage(a1, &v17, a4, &v15, 1);
  if (v16 == 1)
  {
    v10 = v15;
    v15 = 0;
    if (v10)
    {
      (*(*v10 + 8))(v10);
    }
  }

  v11 = v17;
  v17 = 0;
  if (v11)
  {
    IPC::Encoder::~Encoder(v11, v8);
    bmalloc::api::tzoneFree(v13, v14);
  }

  return v9;
}

void sub_19DCDE7A4(_Unwind_Exception *exception_object, void *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, IPC::Encoder *a12)
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

atomic_uint *WebKit::WebPageProxy::disableURLSchemeCheckInDataDetectors(WebKit::WebPageProxy *this)
{
  v1 = *(this + 44);
  atomic_fetch_add((v1 + 16), 1u);
  result = WebKit::AuxiliaryProcessProxy::send<Messages::WebProcess::DisableURLSchemeCheckInDataDetectors>(v1, &v3, 0, 0);
  if (v1)
  {
    return WTF::ThreadSafeRefCounted<WebKit::AuxiliaryProcessProxy,(WTF::DestructionThread)2>::deref((v1 + 16));
  }

  return result;
}

void sub_19DCDE864(_Unwind_Exception *exception_object)
{
  if (v2)
  {
    WTF::ThreadSafeRefCounted<WebKit::AuxiliaryProcessProxy,(WTF::DestructionThread)2>::deref(v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t WebKit::AuxiliaryProcessProxy::send<Messages::WebProcess::DisableURLSchemeCheckInDataDetectors>(uint64_t a1, void *a2, uint64_t a3, char a4)
{
  v7 = IPC::Encoder::operator new(0x238, a2);
  *v7 = 2942;
  *(v7 + 2) = 0;
  *(v7 + 3) = 0;
  *(v7 + 1) = a3;
  *(v7 + 68) = 0;
  *(v7 + 70) = 0;
  *(v7 + 69) = 0;
  IPC::Encoder::encodeHeader(v7);
  v17 = v7;
  LOBYTE(v15) = 0;
  v16 = 0;
  v9 = WebKit::AuxiliaryProcessProxy::sendMessage(a1, &v17, a4, &v15, 1);
  if (v16 == 1)
  {
    v10 = v15;
    v15 = 0;
    if (v10)
    {
      (*(*v10 + 8))(v10);
    }
  }

  v11 = v17;
  v17 = 0;
  if (v11)
  {
    IPC::Encoder::~Encoder(v11, v8);
    bmalloc::api::tzoneFree(v13, v14);
  }

  return v9;
}

void sub_19DCDE964(_Unwind_Exception *exception_object, void *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, IPC::Encoder *a12)
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

uint64_t WebKit::WebPageProxy::switchFromStaticFontRegistryToUserFontRegistry(WebKit::WebPageProxy *this)
{
  v2 = *(this + 44);
  atomic_fetch_add((v2 + 16), 1u);
  result = WebKit::WebProcessProxy::fontdMachExtensionHandles(v2, v7);
  if (v2)
  {
    result = WTF::ThreadSafeRefCounted<WebKit::AuxiliaryProcessProxy,(WTF::DestructionThread)2>::deref((v2 + 16));
  }

  if (v8 == 1)
  {
    v4 = *(this + 44);
    atomic_fetch_add((v4 + 16), 1u);
    if (v8)
    {
      v6 = v7;
      result = WebKit::AuxiliaryProcessProxy::send<Messages::WebProcess::SwitchFromStaticFontRegistryToUserFontRegistry>(v4, &v6, 0, 0);
      if (v4)
      {
        result = WTF::ThreadSafeRefCounted<WebKit::AuxiliaryProcessProxy,(WTF::DestructionThread)2>::deref((v4 + 16));
      }

      if (v8)
      {
        return WTF::Vector<WebKit::SandboxExtensionHandle,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v7, v5);
      }
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

void sub_19DCDEA7C(_Unwind_Exception *exception_object, void *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, char a12)
{
  if (v12)
  {
    WTF::ThreadSafeRefCounted<WebKit::AuxiliaryProcessProxy,(WTF::DestructionThread)2>::deref(v13);
  }

  if (a12 == 1)
  {
    WTF::Vector<WebKit::SandboxExtensionHandle,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&a10, a2);
  }

  _Unwind_Resume(exception_object);
}

uint64_t WebKit::AuxiliaryProcessProxy::send<Messages::WebProcess::SwitchFromStaticFontRegistryToUserFontRegistry>(uint64_t a1, void *a2, uint64_t a3, char a4)
{
  v8 = IPC::Encoder::operator new(0x238, a2);
  *v8 = 3017;
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

void sub_19DCDEBC0(_Unwind_Exception *exception_object, void *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, IPC::Encoder *a12)
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

atomic_uint *WebKit::WebPageProxy::insertMultiRepresentationHEIC(WebKit::WebPageProxy *this, NSData *a2, NSString *a3)
{
  v5 = *(this + 44);
  atomic_fetch_add((v5 + 16), 1u);
  if (a2)
  {
    v7 = [(NSData *)a2 bytes];
    v8 = [(NSData *)a2 length];
  }

  else
  {
    v7 = 0;
    v8 = 0;
  }

  v12[0] = v7;
  v12[1] = v8;
  MEMORY[0x19EB02040](&v11, a3);
  v13[0] = v12;
  v13[1] = &v11;
  WebKit::AuxiliaryProcessProxy::send<Messages::WebPage::InsertMultiRepresentationHEIC>(v5, v13, *(this + 6), 0);
  result = v11;
  v11 = 0;
  if (!result || atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) != 2)
  {
    if (!v5)
    {
      return result;
    }

    return WTF::ThreadSafeRefCounted<WebKit::AuxiliaryProcessProxy,(WTF::DestructionThread)2>::deref((v5 + 16));
  }

  result = WTF::StringImpl::destroy(result, v9);
  if (v5)
  {
    return WTF::ThreadSafeRefCounted<WebKit::AuxiliaryProcessProxy,(WTF::DestructionThread)2>::deref((v5 + 16));
  }

  return result;
}

void sub_19DCDED00(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, WTF::StringImpl *a10)
{
  if (a10 && atomic_fetch_add_explicit(a10, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(a10, a2);
  }

  if (v11)
  {
    WTF::ThreadSafeRefCounted<WebKit::AuxiliaryProcessProxy,(WTF::DestructionThread)2>::deref(v10);
  }

  _Unwind_Resume(exception_object);
}

id WebKit::WebPageProxy::cocoaView@<X0>(WebKit::WebPageProxy *this@<X0>, void *a2@<X8>)
{
  result = objc_loadWeakRetained((*(this + 4) + 2248));
  *a2 = result;
  return result;
}

atomic_uint *WebKit::WebPageProxy::replaceImageForRemoveBackground(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8[0] = a4;
  v8[1] = a5;
  v5 = *(a1 + 352);
  atomic_fetch_add((v5 + 16), 1u);
  v7[0] = a2;
  v7[1] = a3;
  v7[2] = v8;
  result = WebKit::AuxiliaryProcessProxy::send<Messages::WebPage::ReplaceImageForRemoveBackground>(v5, v7, *(a1 + 48), 0);
  if (v5)
  {
    return WTF::ThreadSafeRefCounted<WebKit::AuxiliaryProcessProxy,(WTF::DestructionThread)2>::deref((v5 + 16));
  }

  return result;
}

void sub_19DCDEDE0(_Unwind_Exception *exception_object)
{
  if (v2)
  {
    WTF::ThreadSafeRefCounted<WebKit::AuxiliaryProcessProxy,(WTF::DestructionThread)2>::deref(v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t WebKit::WebPageProxy::shouldForceForegroundPriorityForClientNavigation(WebKit::WebPageProxy *this)
{
  v20 = *MEMORY[0x1E69E9840];
  if (*(*(this + 8) + 384) != 1)
  {
    return 0;
  }

  if ((*(*(this + 4) + 80) & 4) != 0)
  {
    return 0;
  }

  v2 = *(this + 7);
  if (!v2)
  {
    return 0;
  }

  v3 = *(v2 + 8);
  if (!v3)
  {
    return 0;
  }

  (*(*v3 + 1712))(v3);
  v4 = (*(*v3 + 104))(v3);
  v5 = qword_1ED6416A0;
  if (os_log_type_enabled(qword_1ED6416A0, OS_LOG_TYPE_DEFAULT))
  {
    v7 = *(this + 5);
    v6 = *(this + 6);
    v8 = *(*(this + 44) + 80);
    if (v8)
    {
      LODWORD(v8) = *(v8 + 108);
    }

    v10 = 134219008;
    v11 = this;
    v12 = 2048;
    v13 = v7;
    v14 = 2048;
    v15 = v6;
    v16 = 1024;
    v17 = v8;
    v18 = 1024;
    v19 = v4;
    _os_log_impl(&dword_19D52D000, v5, OS_LOG_TYPE_DEFAULT, "%p - [pageProxyID=%llu, webPageID=%llu, PID=%i] WebPageProxy::WebPageProxy::shouldForceForegroundPriorityForClientNavigation() returns %d based on PageClient::canTakeForegroundAssertions()", &v10, 0x2Cu);
  }

  (*(*v3 + 1720))(v3);
  return v4;
}

uint64_t WebKit::WebPageProxy::shouldAllowAutoFillForCellularIdentifiers(WebKit::WebPageProxy *this)
{
  WebKit::PageLoadState::activeURL((*(this + 4) + 1144), &v7);
  MEMORY[0x19EB01DD0](v8, &v7, 0);
  shouldAllowAutoFillForCellularIdentifiers = WebKit::shouldAllowAutoFillForCellularIdentifiers(v8, v1);
  v4 = v8[0];
  v8[0] = 0;
  if (v4 && atomic_fetch_add_explicit(v4, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v4, v2);
  }

  v5 = v7;
  v7 = 0;
  if (v5 && atomic_fetch_add_explicit(v5, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v5, v2);
  }

  return shouldAllowAutoFillForCellularIdentifiers;
}

void sub_19DCDF070(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, WTF::StringImpl *a9, WTF::StringImpl *a10)
{
  if (a10 && atomic_fetch_add_explicit(a10, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(a10, a2);
  }

  if (a9)
  {
    if (atomic_fetch_add_explicit(a9, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(a9, a2);
    }
  }

  _Unwind_Resume(exception_object);
}

atomic_uint *WebKit::WebPageProxy::setMediaCapability(WebKit::WebPageProxy *a1, WTF::StringImpl *a2)
{
  v44 = *MEMORY[0x1E69E9840];
  v4 = *(a1 + 4);
  v5 = *(v4 + 2872);
  *(v4 + 2872) = 0;
  if (v5)
  {
    WebKit::WebPageProxy::deactivateMediaCapability(a1, v5);
    WTF::RefCounted<WebKit::MediaCapability>::deref((v5 + 3), v6);
  }

  v7 = *(a1 + 4);
  v8 = *a2;
  *a2 = 0;
  v9 = *(v7 + 2872);
  *(v7 + 2872) = v8;
  if (v9)
  {
    WTF::RefCounted<WebKit::MediaCapability>::deref(v9 + 24, a2);
  }

  v10 = *(*(a1 + 4) + 2872);
  v11 = qword_1ED641008;
  v12 = os_log_type_enabled(qword_1ED641008, OS_LOG_TYPE_DEFAULT);
  if (v10)
  {
    if (v12)
    {
      v13 = *(*(a1 + 44) + 80);
      if (v13)
      {
        v14 = *(v13 + 108);
      }

      else
      {
        v14 = 0;
      }

      v22 = *(a1 + 5);
      v21 = *(a1 + 6);
      WebKit::MediaCapability::environmentIdentifier(v10, &v31);
      WTF::String::utf8();
      v23 = v32;
      WTF::String::utf8();
      v24 = v23 + 16;
      if (!v23)
      {
        v24 = 0;
      }

      *buf = 134219267;
      if (v30)
      {
        v25 = v30 + 16;
      }

      else
      {
        v25 = 0;
      }

      *&buf[4] = a1;
      v34 = 2048;
      v35 = v22;
      v36 = 2048;
      v37 = v21;
      v38 = 1024;
      v39 = v14;
      v40 = 2082;
      v41 = v24;
      v42 = 2085;
      v43 = v25;
      _os_log_impl(&dword_19D52D000, v11, OS_LOG_TYPE_DEFAULT, "%p - [pageProxyID=%llu, webPageID=%llu, PID=%i] WebPageProxy::setMediaCapability: creating (envID=%{public}s) for URL '%{sensitive}s'", buf, 0x3Au);
      if (v30)
      {
        if (*v30 == 1)
        {
          WTF::fastFree(v30, v26);
        }

        else
        {
          --*v30;
        }
      }

      v27 = v32;
      v32 = 0;
      if (v27)
      {
        if (*v27 == 1)
        {
          WTF::fastFree(v27, v26);
        }

        else
        {
          --*v27;
        }
      }

      v28 = v31;
      v31 = 0;
      if (v28 && atomic_fetch_add_explicit(v28, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v28, v26);
      }
    }

    v18 = *(a1 + 44);
    v19 = (v18 + 16);
    atomic_fetch_add((v18 + 16), 1u);
    WebKit::MediaCapability::environmentIdentifier(*(*(a1 + 4) + 2872), &v32);
    *buf = &v32;
    WebKit::AuxiliaryProcessProxy::send<Messages::WebPage::SetMediaEnvironment>(v18, buf, *(a1 + 6));
  }

  else
  {
    if (v12)
    {
      v16 = *(a1 + 5);
      v15 = *(a1 + 6);
      v17 = *(*(a1 + 44) + 80);
      if (v17)
      {
        LODWORD(v17) = *(v17 + 108);
      }

      *buf = 134218752;
      *&buf[4] = a1;
      v34 = 2048;
      v35 = v16;
      v36 = 2048;
      v37 = v15;
      v38 = 1024;
      v39 = v17;
      _os_log_impl(&dword_19D52D000, v11, OS_LOG_TYPE_DEFAULT, "%p - [pageProxyID=%llu, webPageID=%llu, PID=%i] WebPageProxy::setMediaCapability: clearing media capability", buf, 0x26u);
    }

    v18 = *(a1 + 44);
    v19 = (v18 + 16);
    atomic_fetch_add((v18 + 16), 1u);
    v32 = 0;
    *buf = &v32;
    WebKit::AuxiliaryProcessProxy::send<Messages::WebPage::SetMediaEnvironment>(v18, buf, *(a1 + 6));
  }

  result = v32;
  v32 = 0;
  if (!result || atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) != 2)
  {
    if (!v18)
    {
      return result;
    }

    return WTF::ThreadSafeRefCounted<WebKit::AuxiliaryProcessProxy,(WTF::DestructionThread)2>::deref(v19);
  }

  result = WTF::StringImpl::destroy(result, v20);
  if (v18)
  {
    return WTF::ThreadSafeRefCounted<WebKit::AuxiliaryProcessProxy,(WTF::DestructionThread)2>::deref(v19);
  }

  return result;
}

void sub_19DCDF3DC(_Unwind_Exception *exception_object, void *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, WTF::StringImpl *a11, WTF::StringImpl *a12)
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

void WebKit::WebPageProxy::deactivateMediaCapability(WebKit::WebPageProxy *this, id *a2)
{
  v38 = *MEMORY[0x1E69E9840];
  v4 = qword_1ED641008;
  if (os_log_type_enabled(qword_1ED641008, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(*(this + 44) + 80);
    if (v5)
    {
      v6 = *(v5 + 108);
    }

    else
    {
      v6 = 0;
    }

    v8 = *(this + 5);
    v7 = *(this + 6);
    WebKit::MediaCapability::environmentIdentifier(a2, &v24);
    WTF::String::utf8();
    v9 = v25;
    WTF::String::utf8();
    v10 = v9 + 16;
    if (!v9)
    {
      v10 = 0;
    }

    *buf = 134219267;
    if (v23)
    {
      v11 = v23 + 16;
    }

    else
    {
      v11 = 0;
    }

    v27 = this;
    v28 = 2048;
    v29 = v8;
    v30 = 2048;
    v31 = v7;
    v32 = 1024;
    v33 = v6;
    v34 = 2082;
    v35 = v10;
    v36 = 2085;
    v37 = v11;
    _os_log_impl(&dword_19D52D000, v4, OS_LOG_TYPE_DEFAULT, "%p - [pageProxyID=%llu, webPageID=%llu, PID=%i] WebPageProxy::deactivateMediaCapability: deactivating (envID=%{public}s) for URL '%{sensitive}s'", buf, 0x3Au);
    if (v23)
    {
      if (*v23 == 1)
      {
        WTF::fastFree(v23, v12);
      }

      else
      {
        --*v23;
      }
    }

    v13 = v25;
    v25 = 0;
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

    v14 = v24;
    v24 = 0;
    if (v14 && atomic_fetch_add_explicit(v14, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v14, v12);
    }
  }

  v15 = *(this + 44);
  v16 = (v15 + 16);
  atomic_fetch_add((v15 + 16), 1u);
  v17 = *(*(v15 + 552) + 8);
  if (v17)
  {
    v18 = (v17 - 16);
  }

  else
  {
    v18 = 0;
  }

  CFRetain(v18[1]);
  WTF::ThreadSafeRefCounted<WebKit::AuxiliaryProcessProxy,(WTF::DestructionThread)2>::deref(v16);
  v20 = WebKit::WebProcessPool::extensionCapabilityGranter(v18, v19);
  WebKit::ExtensionCapabilityGranter::setMediaCapabilityActive(v20, a2, 0);
  v22 = WebKit::WebProcessPool::extensionCapabilityGranter(v18, v21);
  WebKit::ExtensionCapabilityGranter::revoke(v22, a2);
  if (v17)
  {
    CFRelease(*(v17 - 8));
  }
}

void sub_19DCDF6B4(_Unwind_Exception *exception_object, void *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, WTF::StringImpl *a11, WTF *a12)
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

WTF::StringImpl *WebKit::WebPageProxy::resetMediaCapability(WebKit::WebPageProxy *this, uint64_t a2, const WTF::StringImpl *a3)
{
  v4 = *(this + 46);
  {
    atomic_fetch_add_explicit(WebKit::WebPreferencesKey::mediaCapabilityGrantsEnabledKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
    WebKit::WebPreferencesKey::mediaCapabilityGrantsEnabledKey(void)::key = WebKit::WebPreferencesKey::mediaCapabilityGrantsEnabledKey(void)::$_0::operator() const(void)::impl;
  }

  result = WebKit::WebPreferencesStore::getBoolValueForKey((v4 + 40), &WebKit::WebPreferencesKey::mediaCapabilityGrantsEnabledKey(void)::key, a3);
  if (result)
  {
    WebKit::WebPageProxy::currentURL(this, &v13);
    MEMORY[0x19EB01DD0](&v14, &v13, 0);
    v8 = v13;
    v13 = 0;
    if (v8 && atomic_fetch_add_explicit(v8, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v8, v6);
    }

    if (*(this + 865) & 1) == 0 && *(this + 864) == 1 && (*(&v14 + 8))
    {
      v11 = *(*(this + 4) + 2872);
      if (!v11 || (++*(v11 + 24), (WTF::protocolHostAndPortAreEqual((v11 + 32), &v14, v7) & 1) == 0))
      {
        WebKit::MediaCapability::create(&v14, &v12);
        v13 = v12;
        WebKit::WebPageProxy::setMediaCapability(this, &v13);
        if (v13)
        {
          WTF::RefCounted<WebKit::MediaCapability>::deref(v13 + 24, v9);
        }

        if (!v11)
        {
          goto LABEL_13;
        }
      }

      v10 = (v11 + 24);
    }

    else
    {
      v13 = 0;
      WebKit::WebPageProxy::setMediaCapability(this, &v13);
      if (!v13)
      {
        goto LABEL_13;
      }

      v10 = v13 + 24;
    }

    WTF::RefCounted<WebKit::MediaCapability>::deref(v10, v9);
LABEL_13:
    result = v14.m_string.m_impl.m_ptr;
    v14.m_string.m_impl.m_ptr = 0;
    if (result)
    {
      if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        return WTF::StringImpl::destroy(result, v9);
      }
    }
  }

  return result;
}

void sub_19DCDF8A4(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, WTF::StringImpl *a11, WTF::StringImpl *a12)
{
  if (a11)
  {
    WTF::RefCounted<WebKit::MediaCapability>::deref(a11 + 24, a2);
  }

  if (v12)
  {
    WTF::RefCounted<WebKit::MediaCapability>::deref(v12 + 24, a2);
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

uint64_t WebKit::WebPageProxy::shouldDeactivateMediaCapability(WebKit::WebPageProxy *this)
{
  v2 = *(*(this + 4) + 2872);
  if (!v2)
  {
    return 0;
  }

  v3 = v2 + 24;
  ++*(v2 + 6);
  if ((WebKit::MediaCapability::isActivatingOrActive(v2) & 1) != 0 && (*(*(this + 4) + 968) & 0x7FDFC00) == 0)
  {
    v5 = WebKit::WebPageProxy::hasValidAudibleActivity(this) ^ 1;
  }

  else
  {
    v5 = 0;
  }

  WTF::RefCounted<WebKit::MediaCapability>::deref(v3, v4);
  return v5;
}

uint64_t WebKit::WebPageProxy::setWritingToolsActive(uint64_t this, int a2)
{
  if (*(this + 1536) != a2)
  {
    v2 = this;
    v3 = *(this + 56);
    if (v3)
    {
      v4 = *(v3 + 8);
      if (v4)
      {
        v5 = a2;
        (*(*v4 + 1712))(v4);
        (*(*v4 + 1912))(v4);
        *(v2 + 1536) = v5;
        (*(*v4 + 1920))(v4);
        v6 = *(*v4 + 1720);

        return v6(v4);
      }
    }
  }

  return this;
}

uint64_t WebKit::WebPageProxy::writingToolsBehavior(WebKit::WebPageProxy *this)
{
  if (*(this + 736))
  {
    return 3;
  }

  v2 = *(this + 8);
  v3 = *(v2 + 589);
  if (!*(v2 + 589))
  {
    return 0;
  }

  v4 = *(this + 4);
  if (v4[281] & 1) != 0 || (v4[287] & 1) != 0 || (v4[290])
  {
    return 0;
  }

  if (v3 == 3 && (v4[285] & 1) != 0)
  {
    return 3;
  }

  return 2;
}

atomic_uint *WebKit::WebPageProxy::willBeginWritingToolsSession(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v3 = *(a1 + 352);
  atomic_fetch_add((v3 + 16), 1u);
  v5 = a2;
  result = WebKit::AuxiliaryProcessProxy::sendWithAsyncReply<Messages::WebPage::WillBeginWritingToolsSession,WTF::CompletionHandler<void ()(WTF::Vector<WebCore::WritingTools::Context,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> const&)>>(v3, &v5, a3, *(a1 + 48), 0, 1);
  if (v3)
  {
    return WTF::ThreadSafeRefCounted<WebKit::AuxiliaryProcessProxy,(WTF::DestructionThread)2>::deref((v3 + 16));
  }

  return result;
}

void sub_19DCDFBDC(_Unwind_Exception *exception_object)
{
  if (v2)
  {
    WTF::ThreadSafeRefCounted<WebKit::AuxiliaryProcessProxy,(WTF::DestructionThread)2>::deref(v1);
  }

  _Unwind_Resume(exception_object);
}

atomic_uint *WebKit::WebPageProxy::didBeginWritingToolsSession(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 352);
  atomic_fetch_add((v3 + 16), 1u);
  v5[0] = a2;
  v5[1] = a3;
  result = WebKit::AuxiliaryProcessProxy::send<Messages::WebPage::DidBeginWritingToolsSession>(v3, v5, *(a1 + 48), 0);
  if (v3)
  {
    return WTF::ThreadSafeRefCounted<WebKit::AuxiliaryProcessProxy,(WTF::DestructionThread)2>::deref((v3 + 16));
  }

  return result;
}

void sub_19DCDFC54(_Unwind_Exception *exception_object)
{
  if (v2)
  {
    WTF::ThreadSafeRefCounted<WebKit::AuxiliaryProcessProxy,(WTF::DestructionThread)2>::deref(v1);
  }

  _Unwind_Resume(exception_object);
}

atomic_uint *WebKit::WebPageProxy::proofreadingSessionDidReceiveSuggestions(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6, uint64_t *a7)
{
  v7 = *(a1 + 352);
  atomic_fetch_add((v7 + 16), 1u);
  v9[0] = a2;
  v9[1] = a3;
  v9[2] = a4;
  v9[3] = a5;
  v10 = a6;
  result = WebKit::AuxiliaryProcessProxy::sendWithAsyncReply<Messages::WebPage::ProofreadingSessionDidReceiveSuggestions,WTF::CompletionHandler<void ()(void)>>(v7, v9, a7, *(a1 + 48), 0, 1);
  if (v7)
  {
    return WTF::ThreadSafeRefCounted<WebKit::AuxiliaryProcessProxy,(WTF::DestructionThread)2>::deref((v7 + 16));
  }

  return result;
}

void sub_19DCDFCDC(_Unwind_Exception *exception_object)
{
  if (v2)
  {
    WTF::ThreadSafeRefCounted<WebKit::AuxiliaryProcessProxy,(WTF::DestructionThread)2>::deref(v1);
  }

  _Unwind_Resume(exception_object);
}

atomic_uint *WebKit::WebPageProxy::proofreadingSessionDidUpdateStateForSuggestion(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5)
{
  v5 = *(a1 + 352);
  atomic_fetch_add((v5 + 16), 1u);
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v10 = a5;
  result = WebKit::AuxiliaryProcessProxy::send<Messages::WebPage::ProofreadingSessionDidUpdateStateForSuggestion>(v5, &v7, *(a1 + 48), 0);
  if (v5)
  {
    return WTF::ThreadSafeRefCounted<WebKit::AuxiliaryProcessProxy,(WTF::DestructionThread)2>::deref((v5 + 16));
  }

  return result;
}

void sub_19DCDFD5C(_Unwind_Exception *exception_object)
{
  if (v2)
  {
    WTF::ThreadSafeRefCounted<WebKit::AuxiliaryProcessProxy,(WTF::DestructionThread)2>::deref(v1);
  }

  _Unwind_Resume(exception_object);
}

atomic_uint *WebKit::WebPageProxy::willEndWritingToolsSession(uint64_t a1, uint64_t a2, char a3, uint64_t *a4)
{
  v4 = *(a1 + 352);
  atomic_fetch_add((v4 + 16), 1u);
  v6 = a2;
  v7 = a3;
  result = WebKit::AuxiliaryProcessProxy::sendWithAsyncReply<Messages::WebPage::WillEndWritingToolsSession,WTF::CompletionHandler<void ()(void)>>(v4, &v6, a4, *(a1 + 48), 0, 1);
  if (v4)
  {
    return WTF::ThreadSafeRefCounted<WebKit::AuxiliaryProcessProxy,(WTF::DestructionThread)2>::deref((v4 + 16));
  }

  return result;
}

void sub_19DCDFDE4(_Unwind_Exception *exception_object)
{
  if (v2)
  {
    WTF::ThreadSafeRefCounted<WebKit::AuxiliaryProcessProxy,(WTF::DestructionThread)2>::deref(v1);
  }

  _Unwind_Resume(exception_object);
}

atomic_uint *WebKit::WebPageProxy::didEndWritingToolsSession(uint64_t a1, uint64_t a2, char a3)
{
  v3 = *(a1 + 352);
  atomic_fetch_add((v3 + 16), 1u);
  v5 = a2;
  v6 = a3;
  result = WebKit::AuxiliaryProcessProxy::send<Messages::WebPage::DidEndWritingToolsSession>(v3, &v5, *(a1 + 48), 0);
  if (v3)
  {
    return WTF::ThreadSafeRefCounted<WebKit::AuxiliaryProcessProxy,(WTF::DestructionThread)2>::deref((v3 + 16));
  }

  return result;
}

void sub_19DCDFE60(_Unwind_Exception *exception_object)
{
  if (v2)
  {
    WTF::ThreadSafeRefCounted<WebKit::AuxiliaryProcessProxy,(WTF::DestructionThread)2>::deref(v1);
  }

  _Unwind_Resume(exception_object);
}

atomic_uint *WebKit::WebPageProxy::compositionSessionDidReceiveTextWithReplacementRange(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6, uint64_t *a7)
{
  v7 = *(a1 + 352);
  atomic_fetch_add((v7 + 16), 1u);
  v9[0] = a2;
  v9[1] = a3;
  v9[2] = a4;
  v9[3] = a5;
  v10 = a6;
  result = WebKit::AuxiliaryProcessProxy::sendWithAsyncReply<Messages::WebPage::CompositionSessionDidReceiveTextWithReplacementRange,WTF::CompletionHandler<void ()(void)>>(v7, v9, a7, *(a1 + 48), 0, 1);
  if (v7)
  {
    return WTF::ThreadSafeRefCounted<WebKit::AuxiliaryProcessProxy,(WTF::DestructionThread)2>::deref((v7 + 16));
  }

  return result;
}

void sub_19DCDFEE8(_Unwind_Exception *exception_object)
{
  if (v2)
  {
    WTF::ThreadSafeRefCounted<WebKit::AuxiliaryProcessProxy,(WTF::DestructionThread)2>::deref(v1);
  }

  _Unwind_Resume(exception_object);
}

atomic_uint *WebKit::WebPageProxy::writingToolsSessionDidReceiveAction(uint64_t a1, uint64_t a2, char a3)
{
  v3 = *(a1 + 352);
  atomic_fetch_add((v3 + 16), 1u);
  v5 = a2;
  v6 = a3;
  result = WebKit::AuxiliaryProcessProxy::send<Messages::WebPage::WritingToolsSessionDidReceiveAction>(v3, &v5, *(a1 + 48), 0);
  if (v3)
  {
    return WTF::ThreadSafeRefCounted<WebKit::AuxiliaryProcessProxy,(WTF::DestructionThread)2>::deref((v3 + 16));
  }

  return result;
}

void sub_19DCDFF64(_Unwind_Exception *exception_object)
{
  if (v2)
  {
    WTF::ThreadSafeRefCounted<WebKit::AuxiliaryProcessProxy,(WTF::DestructionThread)2>::deref(v1);
  }

  _Unwind_Resume(exception_object);
}

atomic_uint *WebKit::WebPageProxy::proofreadingSessionSuggestionTextRectsInRootViewCoordinates(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v3 = *(a1 + 352);
  atomic_fetch_add((v3 + 16), 1u);
  v5 = a2;
  result = WebKit::AuxiliaryProcessProxy::sendWithAsyncReply<Messages::WebPage::ProofreadingSessionSuggestionTextRectsInRootViewCoordinates,WTF::CompletionHandler<void ()(WTF::Vector<WebCore::FloatRect,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&)>>(v3, &v5, a3, *(a1 + 48), 0, 1);
  if (v3)
  {
    return WTF::ThreadSafeRefCounted<WebKit::AuxiliaryProcessProxy,(WTF::DestructionThread)2>::deref((v3 + 16));
  }

  return result;
}

void sub_19DCDFFE0(_Unwind_Exception *exception_object)
{
  if (v2)
  {
    WTF::ThreadSafeRefCounted<WebKit::AuxiliaryProcessProxy,(WTF::DestructionThread)2>::deref(v1);
  }

  _Unwind_Resume(exception_object);
}

atomic_uint *WebKit::WebPageProxy::updateTextVisibilityForActiveWritingToolsSession(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t *a5)
{
  v5 = *(a1 + 352);
  atomic_fetch_add((v5 + 16), 1u);
  v7 = a2;
  v8 = a3;
  v9 = a4;
  result = WebKit::AuxiliaryProcessProxy::sendWithAsyncReply<Messages::WebPage::UpdateTextVisibilityForActiveWritingToolsSession,WTF::CompletionHandler<void ()(void)>>(v5, &v7, a5, *(a1 + 48), 0, 1);
  if (v5)
  {
    return WTF::ThreadSafeRefCounted<WebKit::AuxiliaryProcessProxy,(WTF::DestructionThread)2>::deref((v5 + 16));
  }

  return result;
}

void sub_19DCE0068(_Unwind_Exception *exception_object)
{
  if (v2)
  {
    WTF::ThreadSafeRefCounted<WebKit::AuxiliaryProcessProxy,(WTF::DestructionThread)2>::deref(v1);
  }

  _Unwind_Resume(exception_object);
}

atomic_uint *WebKit::WebPageProxy::textPreviewDataForActiveWritingToolsSession(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v3 = *(a1 + 352);
  atomic_fetch_add((v3 + 16), 1u);
  v5 = a2;
  result = WebKit::AuxiliaryProcessProxy::sendWithAsyncReply<Messages::WebPage::TextPreviewDataForActiveWritingToolsSession,WTF::CompletionHandler<void ()(WTF::RefPtr<WebCore::TextIndicator,WTF::RawPtrTraits<WebCore::TextIndicator>,WTF::DefaultRefDerefTraits<WebCore::TextIndicator>> &&)>>(v3, &v5, a3, *(a1 + 48), 0, 1);
  if (v3)
  {
    return WTF::ThreadSafeRefCounted<WebKit::AuxiliaryProcessProxy,(WTF::DestructionThread)2>::deref((v3 + 16));
  }

  return result;
}

void sub_19DCE00E4(_Unwind_Exception *exception_object)
{
  if (v2)
  {
    WTF::ThreadSafeRefCounted<WebKit::AuxiliaryProcessProxy,(WTF::DestructionThread)2>::deref(v1);
  }

  _Unwind_Resume(exception_object);
}

atomic_uint *WebKit::WebPageProxy::decorateTextReplacementsForActiveWritingToolsSession(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v3 = *(a1 + 352);
  atomic_fetch_add((v3 + 16), 1u);
  v5 = a2;
  result = WebKit::AuxiliaryProcessProxy::sendWithAsyncReply<Messages::WebPage::DecorateTextReplacementsForActiveWritingToolsSession,WTF::CompletionHandler<void ()(void)>>(v3, &v5, a3, *(a1 + 48), 0, 1);
  if (v3)
  {
    return WTF::ThreadSafeRefCounted<WebKit::AuxiliaryProcessProxy,(WTF::DestructionThread)2>::deref((v3 + 16));
  }

  return result;
}

void sub_19DCE0160(_Unwind_Exception *exception_object)
{
  if (v2)
  {
    WTF::ThreadSafeRefCounted<WebKit::AuxiliaryProcessProxy,(WTF::DestructionThread)2>::deref(v1);
  }

  _Unwind_Resume(exception_object);
}

atomic_uint *WebKit::WebPageProxy::setSelectionForActiveWritingToolsSession(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v3 = *(a1 + 352);
  atomic_fetch_add((v3 + 16), 1u);
  v5 = a2;
  result = WebKit::AuxiliaryProcessProxy::sendWithAsyncReply<Messages::WebPage::SetSelectionForActiveWritingToolsSession,WTF::CompletionHandler<void ()(void)>>(v3, &v5, a3, *(a1 + 48), 0, 1);
  if (v3)
  {
    return WTF::ThreadSafeRefCounted<WebKit::AuxiliaryProcessProxy,(WTF::DestructionThread)2>::deref((v3 + 16));
  }

  return result;
}

void sub_19DCE01DC(_Unwind_Exception *exception_object)
{
  if (v2)
  {
    WTF::ThreadSafeRefCounted<WebKit::AuxiliaryProcessProxy,(WTF::DestructionThread)2>::deref(v1);
  }

  _Unwind_Resume(exception_object);
}

WebCore::TextIndicator *WebKit::WebPageProxy::addTextAnimationForAnimationID(uint64_t a1, uint64_t a2, WTF::UUIDHash *a3, unsigned __int8 *a4, WebCore::TextIndicator **a5)
{
  v5 = *a5;
  if (*a5)
  {
    ++*v5;
  }

  v7 = 0;
  v8 = v5;
  WebKit::WebPageProxy::addTextAnimationForAnimationIDWithCompletionHandler(a1, a2, a3, a4, &v8, &v7);
  result = v7;
  v7 = 0;
  if (result)
  {
    result = (*(*result + 8))(result);
  }

  if (v5)
  {
    return WTF::RefCounted<WebCore::TextIndicator>::deref(v5);
  }

  return result;
}

void sub_19DCE027C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9)
{
  if (a9)
  {
    (*(*a9 + 8))(a9);
  }

  if (v9)
  {
    WTF::RefCounted<WebCore::TextIndicator>::deref(v9);
  }

  _Unwind_Resume(exception_object);
}

void WebKit::WebPageProxy::addTextAnimationForAnimationIDWithCompletionHandler(uint64_t a1, uint64_t a2, WTF::UUIDHash *this, unsigned __int8 *a4, WebCore::TextIndicator **a5, uint64_t *a6)
{
  v142 = *MEMORY[0x1E69E9840];
  v12 = *this;
  if (*a6)
  {
    if (v12 <= 1)
    {
      v13 = qword_1ED6416C8;
      if (os_log_type_enabled(qword_1ED6416C8, OS_LOG_TYPE_FAULT))
      {
        LODWORD(buf[0]) = 136446210;
        *(buf + 4) = "void WebKit::WebPageProxy::addTextAnimationForAnimationIDWithCompletionHandler(IPC::Connection &, const WTF::UUID &, const WebCore::TextAnimationData &, const RefPtr<WebCore::TextIndicator>, CompletionHandler<void (WebCore::TextAnimationRunMode)> &&)";
        _os_log_fault_impl(&dword_19D52D000, v13, OS_LOG_TYPE_FAULT, "/Library/Caches/com.apple.xbs/Sources/WebKit/Source/WebKit/UIProcess/Cocoa/WebPageProxyCocoa.mm 1370: Invalid message dispatched %{public}s", buf, 0xCu);
      }

      *(a2 + 94) = 1;
      if (IPC::s_shouldCrashOnMessageCheckFailure != 1)
      {
        WTF::CompletionHandler<void ()(WebCore::TextAnimationRunMode)>::operator()(a6);
        return;
      }

LABEL_207:
      __break(0xC471u);
      JUMPOUT(0x19DCE0D60);
    }

LABEL_8:
    v14 = *(a1 + 32);
    v15 = (v14 + 2544);
    v16 = *(v14 + 2544);
    if (v16 || (WTF::HashTable<WTF::UUID,WTF::KeyValuePair<WTF::UUID,WTF::RefPtr<WebCore::TextIndicator,WTF::RawPtrTraits<WebCore::TextIndicator>,WTF::DefaultRefDerefTraits<WebCore::TextIndicator>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::UUID,WTF::RefPtr<WebCore::TextIndicator,WTF::RawPtrTraits<WebCore::TextIndicator>,WTF::DefaultRefDerefTraits<WebCore::TextIndicator>>>>,WTF::DefaultHash<WTF::UUID>,WTF::HashMap<WTF::UUID,WTF::RefPtr<WebCore::TextIndicator,WTF::RawPtrTraits<WebCore::TextIndicator>,WTF::DefaultRefDerefTraits<WebCore::TextIndicator>>,WTF::DefaultHash<WTF::UUID>,WTF::HashTraits<WTF::UUID>,WTF::HashTraits<WTF::RefPtr<WebCore::TextIndicator,WTF::RawPtrTraits<WebCore::TextIndicator>,WTF::DefaultRefDerefTraits<WebCore::TextIndicator>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::UUID>,WTF::FastMalloc>::expand((v14 + 2544)), (v16 = *v15) != 0))
    {
      v17 = *(v16 - 8);
    }

    else
    {
      v17 = 0;
    }

    v19 = WTF::UUIDHash::hash(this, a2) & v17;
    v20 = (v16 + 32 * v19);
    v22 = *v20;
    v21 = v20[1];
    if (*v20 != 0)
    {
      v23 = 0;
      v24 = 1;
      while (v21 != *(this + 1) || v22 != *this)
      {
        if (!(v22 ^ 1 | v21))
        {
          v23 = v20;
        }

        v19 = (v19 + v24) & v17;
        v20 = (v16 + 32 * v19);
        v22 = *v20;
        v21 = v20[1];
        ++v24;
        if (*v20 == 0)
        {
          if (v23)
          {
            *v23 = 0;
            v23[1] = 0;
            v23[2] = 0;
            --*(*v15 - 16);
            v20 = v23;
          }

          goto LABEL_22;
        }
      }

LABEL_32:
      if (!*a6)
      {
        goto LABEL_57;
      }

      if (!(*this ^ 1 | *(this + 1)))
      {
        __break(0xC471u);
        JUMPOUT(0x19DCE0F54);
      }

      if (*this == 0)
      {
        __break(0xC471u);
        JUMPOUT(0x19DCE0F74);
      }

      v32 = *(a1 + 32);
      v33 = (v32 + 2552);
      v34 = *(v32 + 2552);
      if (v34 || (WTF::HashTable<WTF::UUID,WTF::KeyValuePair<WTF::UUID,WTF::CompletionHandler<void ()(WebCore::TextAnimationRunMode)>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::UUID,WTF::CompletionHandler<void ()(WebCore::TextAnimationRunMode)>>>,WTF::DefaultHash<WTF::UUID>,WTF::HashMap<WTF::UUID,WTF::CompletionHandler<void ()(WebCore::TextAnimationRunMode)>,WTF::DefaultHash<WTF::UUID>,WTF::HashTraits<WTF::UUID>,WTF::HashTraits<WTF::CompletionHandler<void ()(WebCore::TextAnimationRunMode)>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::UUID>,WTF::FastMalloc>::expand((v32 + 2552), 0), (v34 = *v33) != 0))
      {
        v35 = *(v34 - 8);
      }

      else
      {
        v35 = 0;
      }

      v36 = WTF::UUIDHash::hash(this, v18) & v35;
      v37 = (v34 + 32 * v36);
      v39 = *v37;
      v38 = v37[1];
      if (*v37 != 0)
      {
        v40 = 0;
        v41 = 1;
        while (v38 != *(this + 1) || v39 != *this)
        {
          if (!(v39 ^ 1 | v38))
          {
            v40 = v37;
          }

          v36 = (v36 + v41) & v35;
          v37 = (v34 + 32 * v36);
          v39 = *v37;
          v38 = v37[1];
          ++v41;
          if (*v37 == 0)
          {
            if (v40)
            {
              *v40 = 0;
              v40[1] = 0;
              v40[2] = 0;
              --*(*v33 - 16);
              v37 = v40;
            }

            goto LABEL_49;
          }
        }

LABEL_57:
        v49 = *(a1 + 32);
        v50 = WTF::HashTable<WTF::UUID,WTF::KeyValuePair<WTF::UUID,WTF::CompletionHandler<void ()(std::optional<WebCore::TextIndicatorData>)>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::UUID,WTF::CompletionHandler<void ()(std::optional<WebCore::TextIndicatorData>)>>>,WTF::DefaultHash<WTF::UUID>,WTF::HashMap<WTF::UUID,WTF::CompletionHandler<void ()(std::optional<WebCore::TextIndicatorData>)>,WTF::DefaultHash<WTF::UUID>,WTF::HashTraits<WTF::UUID>,WTF::HashTraits<WTF::CompletionHandler<void ()(std::optional<WebCore::TextIndicatorData>)>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::UUID>,WTF::FastMalloc>::find<WTF::IdentityHashTranslator<WTF::HashMap<WTF::UUID,WTF::CompletionHandler<void ()(std::optional<WebCore::TextIndicatorData>)>,WTF::DefaultHash<WTF::UUID>,WTF::HashTraits<WTF::UUID>,WTF::HashTraits<WTF::CompletionHandler<void ()(std::optional<WebCore::TextIndicatorData>)>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<WTF::UUID>>,(WTF::ShouldValidateKey)1,WTF::UUID>((v49 + 2560), this);
        WTF::HashMap<WTF::UUID,WTF::CompletionHandler<void ()(std::optional<WebCore::TextIndicatorData>)>,WTF::DefaultHash<WTF::UUID>,WTF::HashTraits<WTF::UUID>,WTF::HashTraits<WTF::CompletionHandler<void ()(std::optional<WebCore::TextIndicatorData>)>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::take(v126, (v49 + 2560), v50);
        if (v126[0])
        {
          WebCore::TextIndicator::data(*a5, buf);
          std::optional<WebCore::TextIndicatorData>::optional[abi:sn200100]<WebCore::TextIndicatorData,0>(v127, buf);
          WTF::CompletionHandler<void ()(std::optional<WebCore::TextIndicatorData>)>::operator()(v126, v127);
          if (v134 == 1)
          {
            if ((v133 & 0x8000000000000) != 0)
            {
              v114 = (v133 & 0xFFFFFFFFFFFFLL);
              if (atomic_fetch_add((v133 & 0xFFFFFFFFFFFFLL), 0xFFFFFFFF) == 1)
              {
                atomic_store(1u, v114);
                WTF::fastFree(v114, v51);
              }
            }

            v52 = v132;
            v132 = 0;
            if (v52)
            {
              if (v52[4] == 1)
              {
                (*(*v52 + 8))(v52);
              }

              else
              {
                --v52[4];
              }
            }

            v53 = v131;
            v131 = 0;
            if (v53)
            {
              if (v53[4] == 1)
              {
                (*(*v53 + 8))(v53);
              }

              else
              {
                --v53[4];
              }
            }

            v54 = v130;
            v130 = 0;
            if (v54)
            {
              if (v54[4] == 1)
              {
                (*(*v54 + 8))(v54);
              }

              else
              {
                --v54[4];
              }
            }

            v55 = v128;
            if (v128)
            {
              v128 = 0;
              v129 = 0;
              WTF::fastFree(v55, v51);
            }
          }

          if ((v141 & 0x8000000000000) != 0)
          {
            v112 = (v141 & 0xFFFFFFFFFFFFLL);
            if (atomic_fetch_add((v141 & 0xFFFFFFFFFFFFLL), 0xFFFFFFFF) == 1)
            {
              atomic_store(1u, v112);
              WTF::fastFree(v112, v51);
            }
          }

          v56 = v140;
          v140 = 0;
          if (v56)
          {
            if (v56[4] == 1)
            {
              (*(*v56 + 8))(v56);
            }

            else
            {
              --v56[4];
            }
          }

          v57 = v139;
          v139 = 0;
          if (v57)
          {
            if (v57[4] == 1)
            {
              (*(*v57 + 8))(v57);
            }

            else
            {
              --v57[4];
            }
          }

          v58 = v138;
          v138 = 0;
          if (v58)
          {
            if (v58[4] == 1)
            {
              (*(*v58 + 8))(v58);
            }

            else
            {
              --v58[4];
            }
          }

          v59 = v136;
          if (v136)
          {
            v136 = 0;
            v137 = 0;
            WTF::fastFree(v59, v51);
          }

          if (v126[0])
          {
            (*(*v126[0] + 8))(v126[0]);
          }
        }

        if (a4[1] != 2)
        {
          goto LABEL_168;
        }

        v60 = *a4;
        if (v60 != 1)
        {
LABEL_112:
          if (v60 == 2)
          {
            v77 = *(a1 + 32);
            v78 = *(v77 + 2568);
            if (v78)
            {
              if (!(*this ^ 1 | *(this + 1)))
              {
                __break(0xC471u);
                JUMPOUT(0x19DCE0FD4);
              }

              if (*this == 0)
              {
                __break(0xC471u);
                JUMPOUT(0x19DCE0FF4);
              }

              v79 = *(v78 - 8);
              v80 = WTF::UUIDHash::hash(this, v51);
              v81 = (v77 + 2568);
              v82 = *this;
              v83 = *(this + 1);
              v84 = v80 & v79;
              v85 = (v78 + 32 * v84);
              v86 = *v85;
              v87 = v85[1];
              if (v87 == v83 && v86 == v82)
              {
LABEL_127:
                v92 = (v78 + 32 * v84);
                v93 = *v81;
              }

              else
              {
                v89 = 1;
                while (v86 | v87)
                {
                  v84 = (v84 + v89) & v79;
                  v90 = (v78 + 32 * v84);
                  v86 = *v90;
                  v87 = v90[1];
                  v91 = v87 == v83 && v86 == v82;
                  ++v89;
                  if (v91)
                  {
                    goto LABEL_127;
                  }
                }

                v93 = *v81;
                if (!*v81)
                {
                  goto LABEL_168;
                }

                v92 = (v93 + 32 * *(v93 - 4));
              }

              v94 = *(v93 - 4);
              if ((v93 + 32 * v94) != v92)
              {
                v96 = v92[2];
                v95 = v92[3];
                *v92 = 1;
                v92[1] = 0;
                v97 = vadd_s32(*(v93 - 16), 0xFFFFFFFF00000001);
                *(v93 - 16) = v97;
                if (6 * v97.i32[1] < v94 && v94 >= 9)
                {
                  WTF::HashTable<WTF::UUID,WTF::KeyValuePair<WTF::UUID,WTF::UUID>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::UUID,WTF::UUID>>,WTF::DefaultHash<WTF::UUID>,WTF::HashMap<WTF::UUID,WTF::UUID,WTF::DefaultHash<WTF::UUID>,WTF::HashTraits<WTF::UUID>,WTF::HashTraits<WTF::UUID>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::UUID>,WTF::FastMalloc>::rehash(v81, v94 >> 1);
                }

                v126[0] = v96;
                v126[1] = v95;
                if (v96 | v95)
                {
                  v99 = *(a1 + 32);
                  v100 = WTF::HashTable<WTF::UUID,WTF::KeyValuePair<WTF::UUID,WTF::CompletionHandler<void ()(std::optional<WebCore::TextIndicatorData>)>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::UUID,WTF::CompletionHandler<void ()(std::optional<WebCore::TextIndicatorData>)>>>,WTF::DefaultHash<WTF::UUID>,WTF::HashMap<WTF::UUID,WTF::CompletionHandler<void ()(std::optional<WebCore::TextIndicatorData>)>,WTF::DefaultHash<WTF::UUID>,WTF::HashTraits<WTF::UUID>,WTF::HashTraits<WTF::CompletionHandler<void ()(std::optional<WebCore::TextIndicatorData>)>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::UUID>,WTF::FastMalloc>::find<WTF::IdentityHashTranslator<WTF::HashMap<WTF::UUID,WTF::CompletionHandler<void ()(std::optional<WebCore::TextIndicatorData>)>,WTF::DefaultHash<WTF::UUID>,WTF::HashTraits<WTF::UUID>,WTF::HashTraits<WTF::CompletionHandler<void ()(std::optional<WebCore::TextIndicatorData>)>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<WTF::UUID>>,(WTF::ShouldValidateKey)1,WTF::UUID>((v99 + 2560), v126);
                  WTF::HashMap<WTF::UUID,WTF::CompletionHandler<void ()(std::optional<WebCore::TextIndicatorData>)>,WTF::DefaultHash<WTF::UUID>,WTF::HashTraits<WTF::UUID>,WTF::HashTraits<WTF::CompletionHandler<void ()(std::optional<WebCore::TextIndicatorData>)>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::take(&v125, (v99 + 2560), v100);
                  if (v125)
                  {
                    WebCore::TextIndicator::data(*a5, buf);
                    std::optional<WebCore::TextIndicatorData>::optional[abi:sn200100]<WebCore::TextIndicatorData,0>(v117, buf);
                    WTF::CompletionHandler<void ()(std::optional<WebCore::TextIndicatorData>)>::operator()(&v125, v117);
                    if (v124 == 1)
                    {
                      if ((v123 & 0x8000000000000) != 0)
                      {
                        v116 = (v123 & 0xFFFFFFFFFFFFLL);
                        if (atomic_fetch_add((v123 & 0xFFFFFFFFFFFFLL), 0xFFFFFFFF) == 1)
                        {
                          atomic_store(1u, v116);
                          WTF::fastFree(v116, v101);
                        }
                      }

                      v102 = v122;
                      v122 = 0;
                      if (v102)
                      {
                        if (v102[4] == 1)
                        {
                          (*(*v102 + 8))(v102);
                        }

                        else
                        {
                          --v102[4];
                        }
                      }

                      v103 = v121;
                      v121 = 0;
                      if (v103)
                      {
                        if (v103[4] == 1)
                        {
                          (*(*v103 + 8))(v103);
                        }

                        else
                        {
                          --v103[4];
                        }
                      }

                      v104 = v120;
                      v120 = 0;
                      if (v104)
                      {
                        if (v104[4] == 1)
                        {
                          (*(*v104 + 8))(v104);
                        }

                        else
                        {
                          --v104[4];
                        }
                      }

                      v105 = v118;
                      if (v118)
                      {
                        v118 = 0;
                        v119 = 0;
                        WTF::fastFree(v105, v101);
                      }
                    }

                    if ((v141 & 0x8000000000000) != 0)
                    {
                      v115 = (v141 & 0xFFFFFFFFFFFFLL);
                      if (atomic_fetch_add((v141 & 0xFFFFFFFFFFFFLL), 0xFFFFFFFF) == 1)
                      {
                        atomic_store(1u, v115);
                        WTF::fastFree(v115, v101);
                      }
                    }

                    v106 = v140;
                    v140 = 0;
                    if (v106)
                    {
                      if (v106[4] == 1)
                      {
                        (*(*v106 + 8))(v106);
                      }

                      else
                      {
                        --v106[4];
                      }
                    }

                    v107 = v139;
                    v139 = 0;
                    if (v107)
                    {
                      if (v107[4] == 1)
                      {
                        (*(*v107 + 8))(v107);
                      }

                      else
                      {
                        --v107[4];
                      }
                    }

                    v108 = v138;
                    v138 = 0;
                    if (v108)
                    {
                      if (v108[4] == 1)
                      {
                        (*(*v108 + 8))(v108);
                      }

                      else
                      {
                        --v108[4];
                      }
                    }

                    v109 = v136;
                    if (v136)
                    {
                      v136 = 0;
                      v137 = 0;
                      WTF::fastFree(v109, v101);
                    }

                    if (v125)
                    {
                      (*(*v125 + 8))(v125);
                    }
                  }
                }
              }
            }
          }

LABEL_168:
          v110 = *(a1 + 56);
          if (v110)
          {
            v111 = *(v110 + 8);
            if (v111)
            {
              (*(*v111 + 1712))(v111);
              (*(*v111 + 1944))(v111, this, a4);
              (*(*v111 + 1720))(v111);
            }
          }

          return;
        }

        v61 = a4 + 48;
        if (*(a4 + 3) == 0)
        {
          __break(0xC471u);
          JUMPOUT(0x19DCE0F94);
        }

        if (!(*(a4 + 6) ^ 1 | *(a4 + 7)))
        {
          __break(0xC471u);
          JUMPOUT(0x19DCE0FB4);
        }

        v62 = *(a1 + 32);
        v63 = (v62 + 2568);
        v64 = *(v62 + 2568);
        if (v64 || (WTF::HashTable<WTF::UUID,WTF::KeyValuePair<WTF::UUID,WTF::UUID>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::UUID,WTF::UUID>>,WTF::DefaultHash<WTF::UUID>,WTF::HashMap<WTF::UUID,WTF::UUID,WTF::DefaultHash<WTF::UUID>,WTF::HashTraits<WTF::UUID>,WTF::HashTraits<WTF::UUID>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::UUID>,WTF::FastMalloc>::expand((v62 + 2568)), (v64 = *v63) != 0))
        {
          v65 = *(v64 - 8);
        }

        else
        {
          v65 = 0;
        }

        v66 = WTF::UUIDHash::hash((a4 + 48), v51) & v65;
        v51 = (v64 + 32 * v66);
        v68 = *v51;
        v67 = v51[1];
        if (*v51 != 0)
        {
          v69 = 0;
          v70 = 1;
          while (v67 != *(a4 + 7) || v68 != *v61)
          {
            if (!(v68 ^ 1 | v67))
            {
              v69 = v51;
            }

            v66 = (v66 + v70) & v65;
            v51 = (v64 + 32 * v66);
            v68 = *v51;
            v67 = v51[1];
            ++v70;
            if (*v51 == 0)
            {
              if (v69)
              {
                *v69 = 0u;
                *(v69 + 1) = 0u;
                --*(*v63 - 16);
                v51 = v69;
              }

              goto LABEL_103;
            }
          }

          goto LABEL_111;
        }

LABEL_103:
        *v51 = *v61;
        v72 = *(this + 1);
        v51[2] = *this;
        v51[3] = v72;
        v73 = *v63;
        if (*v63)
        {
          v74 = *(v73 - 12) + 1;
        }

        else
        {
          v74 = 1;
        }

        *(v73 - 12) = v74;
        v75 = (*(v73 - 16) + v74);
        v76 = *(v73 - 4);
        if (v76 > 0x400)
        {
          if (v76 > 2 * v75)
          {
            goto LABEL_111;
          }
        }

        else if (3 * v76 > 4 * v75)
        {
LABEL_111:
          v60 = *a4;
          goto LABEL_112;
        }

        WTF::HashTable<WTF::UUID,WTF::KeyValuePair<WTF::UUID,WTF::UUID>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::UUID,WTF::UUID>>,WTF::DefaultHash<WTF::UUID>,WTF::HashMap<WTF::UUID,WTF::UUID,WTF::DefaultHash<WTF::UUID>,WTF::HashTraits<WTF::UUID>,WTF::HashTraits<WTF::UUID>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::UUID>,WTF::FastMalloc>::expand(v63);
        goto LABEL_111;
      }

LABEL_49:
      *v37 = *this;
      v43 = *a6;
      *a6 = 0;
      v44 = v37[2];
      v37[2] = v43;
      if (v44)
      {
        (*(*v44 + 8))(v44);
      }

      v45 = *v33;
      if (*v33)
      {
        v46 = *(v45 - 12) + 1;
      }

      else
      {
        v46 = 1;
      }

      *(v45 - 12) = v46;
      v47 = (*(v45 - 16) + v46);
      v48 = *(v45 - 4);
      if (v48 > 0x400)
      {
        if (v48 > 2 * v47)
        {
          goto LABEL_57;
        }
      }

      else if (3 * v48 > 4 * v47)
      {
        goto LABEL_57;
      }

      WTF::HashTable<WTF::UUID,WTF::KeyValuePair<WTF::UUID,WTF::CompletionHandler<void ()(WebCore::TextAnimationRunMode)>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::UUID,WTF::CompletionHandler<void ()(WebCore::TextAnimationRunMode)>>>,WTF::DefaultHash<WTF::UUID>,WTF::HashMap<WTF::UUID,WTF::CompletionHandler<void ()(WebCore::TextAnimationRunMode)>,WTF::DefaultHash<WTF::UUID>,WTF::HashTraits<WTF::UUID>,WTF::HashTraits<WTF::CompletionHandler<void ()(WebCore::TextAnimationRunMode)>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::UUID>,WTF::FastMalloc>::expand(v33, v37);
      goto LABEL_57;
    }

LABEL_22:
    *v20 = *this;
    v26 = *a5;
    if (*a5)
    {
      ++*v26;
    }

    v27 = v20[2];
    v20[2] = v26;
    if (v27)
    {
      WTF::RefCounted<WebCore::TextIndicator>::deref(v27);
    }

    v28 = *v15;
    if (*v15)
    {
      v29 = *(v28 - 12) + 1;
    }

    else
    {
      v29 = 1;
    }

    *(v28 - 12) = v29;
    v30 = (*(v28 - 16) + v29);
    v31 = *(v28 - 4);
    if (v31 > 0x400)
    {
      if (v31 > 2 * v30)
      {
        goto LABEL_32;
      }
    }

    else if (3 * v31 > 4 * v30)
    {
      goto LABEL_32;
    }

    WTF::HashTable<WTF::UUID,WTF::KeyValuePair<WTF::UUID,WTF::RefPtr<WebCore::TextIndicator,WTF::RawPtrTraits<WebCore::TextIndicator>,WTF::DefaultRefDerefTraits<WebCore::TextIndicator>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::UUID,WTF::RefPtr<WebCore::TextIndicator,WTF::RawPtrTraits<WebCore::TextIndicator>,WTF::DefaultRefDerefTraits<WebCore::TextIndicator>>>>,WTF::DefaultHash<WTF::UUID>,WTF::HashMap<WTF::UUID,WTF::RefPtr<WebCore::TextIndicator,WTF::RawPtrTraits<WebCore::TextIndicator>,WTF::DefaultRefDerefTraits<WebCore::TextIndicator>>,WTF::DefaultHash<WTF::UUID>,WTF::HashTraits<WTF::UUID>,WTF::HashTraits<WTF::RefPtr<WebCore::TextIndicator,WTF::RawPtrTraits<WebCore::TextIndicator>,WTF::DefaultRefDerefTraits<WebCore::TextIndicator>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::UUID>,WTF::FastMalloc>::expand(v15);
    goto LABEL_32;
  }

  if (v12 > 1)
  {
    goto LABEL_8;
  }

  v113 = qword_1ED6416C8;
  if (os_log_type_enabled(qword_1ED6416C8, OS_LOG_TYPE_FAULT))
  {
    LODWORD(buf[0]) = 136446210;
    *(buf + 4) = "void WebKit::WebPageProxy::addTextAnimationForAnimationIDWithCompletionHandler(IPC::Connection &, const WTF::UUID &, const WebCore::TextAnimationData &, const RefPtr<WebCore::TextIndicator>, CompletionHandler<void (WebCore::TextAnimationRunMode)> &&)";
    _os_log_fault_impl(&dword_19D52D000, v113, OS_LOG_TYPE_FAULT, "/Library/Caches/com.apple.xbs/Sources/WebKit/Source/WebKit/UIProcess/Cocoa/WebPageProxyCocoa.mm 1372: Invalid message dispatched %{public}s", buf, 0xCu);
  }

  *(a2 + 94) = 1;
  if (IPC::s_shouldCrashOnMessageCheckFailure == 1)
  {
    goto LABEL_207;
  }
}

void sub_19DCE1000(_Unwind_Exception *exception_object, void *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, WTF *a16, int a17, uint64_t a18, _DWORD *a19, _DWORD *a20, _DWORD *a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, WTF *a37, int a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, char a48)
{
  if (a27 == 1)
  {
    if ((a22 & 0x8000000000000) != 0)
    {
      v50 = (a22 & 0xFFFFFFFFFFFFLL);
      if (atomic_fetch_add((a22 & 0xFFFFFFFFFFFFLL), 0xFFFFFFFF) == 1)
      {
        atomic_store(1u, v50);
        WTF::fastFree(v50, a2);
      }
    }

    if (a21)
    {
      if (a21[4] == 1)
      {
        (*(*a21 + 8))(a21);
      }

      else
      {
        --a21[4];
      }
    }

    if (a20)
    {
      if (a20[4] == 1)
      {
        (*(*a20 + 8))(a20);
      }

      else
      {
        --a20[4];
      }
    }

    if (a19)
    {
      if (a19[4] == 1)
      {
        (*(*a19 + 8))(a19);
      }

      else
      {
        --a19[4];
      }
    }

    if (a16)
    {
      WTF::fastFree(a16, a2);
    }
  }

  v51 = *(v48 - 128);
  if ((v51 & 0x8000000000000) != 0)
  {
    v56 = (v51 & 0xFFFFFFFFFFFFLL);
    if (atomic_fetch_add((v51 & 0xFFFFFFFFFFFFLL), 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, v56);
      WTF::fastFree(v56, a2);
    }
  }

  v52 = *(v48 - 136);
  *(v48 - 136) = 0;
  if (v52)
  {
    if (v52[4] == 1)
    {
      (*(*v52 + 8))(v52);
    }

    else
    {
      --v52[4];
    }
  }

  v53 = *(v48 - 144);
  *(v48 - 144) = 0;
  if (v53)
  {
    if (v53[4] == 1)
    {
      (*(*v53 + 8))(v53);
    }

    else
    {
      --v53[4];
    }
  }

  v54 = *(v48 - 152);
  *(v48 - 152) = 0;
  if (v54)
  {
    if (v54[4] == 1)
    {
      (*(*v54 + 8))(v54);
    }

    else
    {
      --v54[4];
    }
  }

  v55 = *(v48 - 176);
  if (v55)
  {
    *(v48 - 176) = 0;
    *(v48 - 168) = 0;
    WTF::fastFree(v55, a2);
  }

  if (a28)
  {
    (*(*a28 + 8))(a28);
  }

  _Unwind_Resume(exception_object);
}

uint64_t WTF::CompletionHandler<void ()(WebCore::TextAnimationRunMode)>::operator()(uint64_t *a1)
{
  v1 = *a1;
  *a1 = 0;
  (*(*v1 + 16))(v1);
  v2 = *(*v1 + 8);

  return v2(v1);
}

uint64_t WTF::CompletionHandler<void ()(std::optional<WebCore::TextIndicatorData>)>::operator()(uint64_t *a1, __int128 *a2)
{
  v2 = *a1;
  *a1 = 0;
  std::__optional_move_base<WebCore::TextIndicatorData,false>::__optional_move_base[abi:sn200100](v15, a2);
  std::__optional_move_base<WebCore::TextIndicatorData,false>::__optional_move_base[abi:sn200100](v23, v15);
  (*(*v2 + 16))(v2, v23);
  if (v30 == 1)
  {
    if ((v29 & 0x8000000000000) != 0)
    {
      v13 = (v29 & 0xFFFFFFFFFFFFLL);
      if (atomic_fetch_add((v29 & 0xFFFFFFFFFFFFLL), 0xFFFFFFFF) == 1)
      {
        atomic_store(1u, v13);
        WTF::fastFree(v13, v3);
      }
    }

    v4 = v28;
    v28 = 0;
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

    v5 = v27;
    v27 = 0;
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

    v6 = v26;
    v26 = 0;
    if (v6)
    {
      if (v6[4] == 1)
      {
        (*(*v6 + 8))(v6);
      }

      else
      {
        --v6[4];
      }
    }

    v7 = v24;
    if (v24)
    {
      v24 = 0;
      v25 = 0;
      WTF::fastFree(v7, v3);
    }
  }

  if (v22 == 1)
  {
    if ((v21 & 0x8000000000000) != 0)
    {
      v14 = (v21 & 0xFFFFFFFFFFFFLL);
      if (atomic_fetch_add((v21 & 0xFFFFFFFFFFFFLL), 0xFFFFFFFF) == 1)
      {
        atomic_store(1u, v14);
        WTF::fastFree(v14, v3);
      }
    }

    v8 = v20;
    v20 = 0;
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

    v9 = v19;
    v19 = 0;
    if (v9)
    {
      if (v9[4] == 1)
      {
        (*(*v9 + 8))(v9);
      }

      else
      {
        --v9[4];
      }
    }

    v10 = v18;
    v18 = 0;
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

    v11 = v16;
    if (v16)
    {
      v16 = 0;
      v17 = 0;
      WTF::fastFree(v11, v3);
    }
  }

  return (*(*v2 + 8))(v2);
}

void sub_19DCE1858(_Unwind_Exception *exception_object, void *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, WTF *a15, int a16, uint64_t a17, _DWORD *a18, _DWORD *a19, _DWORD *a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, char a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, WTF *a33, int a34, uint64_t a35, _DWORD *a36, _DWORD *a37, _DWORD *a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, char a44)
{
  if (a44 == 1)
  {
    if ((a39 & 0x8000000000000) != 0)
    {
      v46 = (a39 & 0xFFFFFFFFFFFFLL);
      if (atomic_fetch_add((a39 & 0xFFFFFFFFFFFFLL), 0xFFFFFFFF) == 1)
      {
        atomic_store(1u, v46);
        WTF::fastFree(v46, a2);
      }
    }

    if (a38)
    {
      if (a38[4] == 1)
      {
        (*(*a38 + 8))(a38);
      }

      else
      {
        --a38[4];
      }
    }

    if (a37)
    {
      if (a37[4] == 1)
      {
        (*(*a37 + 8))(a37);
      }

      else
      {
        --a37[4];
      }
    }

    if (a36)
    {
      if (a36[4] == 1)
      {
        (*(*a36 + 8))(a36);
      }

      else
      {
        --a36[4];
      }
    }

    if (a33)
    {
      WTF::fastFree(a33, a2);
    }
  }

  if (a26 == 1)
  {
    if ((a21 & 0x8000000000000) != 0)
    {
      v47 = (a21 & 0xFFFFFFFFFFFFLL);
      if (atomic_fetch_add((a21 & 0xFFFFFFFFFFFFLL), 0xFFFFFFFF) == 1)
      {
        atomic_store(1u, v47);
        WTF::fastFree(v47, a2);
      }
    }

    if (a20)
    {
      if (a20[4] == 1)
      {
        (*(*a20 + 8))(a20);
      }

      else
      {
        --a20[4];
      }
    }

    if (a19)
    {
      if (a19[4] == 1)
      {
        (*(*a19 + 8))(a19);
      }

      else
      {
        --a19[4];
      }
    }

    if (a18)
    {
      if (a18[4] == 1)
      {
        (*(*a18 + 8))(a18);
      }

      else
      {
        --a18[4];
      }
    }

    if (a15)
    {
      WTF::fastFree(a15, a2);
    }
  }

  if (v44)
  {
    (*(*v44 + 8))(v44);
  }

  _Unwind_Resume(exception_object);
}

__n128 WebCore::TextIndicator::data@<Q0>(WebCore::TextIndicator *this@<X0>, uint64_t a2@<X8>)
{
  v4 = *(this + 24);
  *a2 = *(this + 8);
  *(a2 + 16) = v4;
  *(a2 + 32) = *(this + 40);
  WTF::Vector<WebCore::LinearTimingFunction::Point,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::Vector(a2 + 48, this + 56);
  *(a2 + 64) = *(this + 18);
  v5 = *(this + 10);
  if (v5)
  {
    ++*(v5 + 16);
  }

  *(a2 + 72) = v5;
  v6 = *(this + 11);
  if (v6)
  {
    ++*(v6 + 16);
  }

  *(a2 + 80) = v6;
  v7 = *(this + 12);
  if (v7)
  {
    ++*(v7 + 16);
  }

  v8 = *(this + 13);
  *(a2 + 88) = v7;
  *(a2 + 96) = v8;
  if ((v8 & 0x8000000000000) != 0)
  {
    atomic_fetch_add((v8 & 0xFFFFFFFFFFFFLL), 1u);
  }

  *(a2 + 104) = *(this + 7);
  result = *(this + 121);
  *(a2 + 113) = result;
  return result;
}

uint64_t std::optional<WebCore::TextIndicatorData>::optional[abi:sn200100]<WebCore::TextIndicatorData,0>(uint64_t a1, __int128 *a2)
{
  v4 = *a2;
  v5 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v5;
  *a1 = v4;
  *(a1 + 48) = 0;
  *(a1 + 56) = 0;
  WTF::VectorBuffer<WTF::String,0ul,WTF::FastMalloc>::adopt(a1 + 48, a2 + 12);
  *(a1 + 64) = *(a2 + 16);
  v6 = *(a2 + 9);
  *(a2 + 9) = 0;
  *(a1 + 72) = v6;
  v7 = *(a2 + 10);
  *(a2 + 10) = 0;
  *(a1 + 80) = v7;
  v8 = *(a2 + 11);
  *(a2 + 11) = 0;
  *(a1 + 88) = v8;
  *(a1 + 96) = 0;
  if (a1 != a2)
  {
    v9 = *(a2 + 12);
    *(a2 + 12) = 0;
    *(a1 + 96) = v9;
  }

  v10 = *(a2 + 104);
  *(a1 + 113) = *(a2 + 113);
  *(a1 + 104) = v10;
  *(a1 + 136) = 1;
  return a1;
}

void sub_19DCE1C34(_Unwind_Exception *exception_object, void *a2)
{
  v5 = *v3;
  if (*v3)
  {
    *(v2 + 48) = 0;
    *(v2 + 56) = 0;
    WTF::fastFree(v5, a2);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *WebKit::WebPageProxy::callCompletionHandlerForAnimationID(uint64_t *result, WTF::UUIDHash *a2)
{
  if ((*(result + 865) & 1) == 0 && *(result + 864) == 1)
  {
    v2 = result[4];
    v3 = WTF::HashTable<WTF::UUID,WTF::KeyValuePair<WTF::UUID,WTF::CompletionHandler<void ()(WebCore::TextAnimationRunMode)>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::UUID,WTF::CompletionHandler<void ()(WebCore::TextAnimationRunMode)>>>,WTF::DefaultHash<WTF::UUID>,WTF::HashMap<WTF::UUID,WTF::CompletionHandler<void ()(WebCore::TextAnimationRunMode)>,WTF::DefaultHash<WTF::UUID>,WTF::HashTraits<WTF::UUID>,WTF::HashTraits<WTF::CompletionHandler<void ()(WebCore::TextAnimationRunMode)>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::UUID>,WTF::FastMalloc>::find<WTF::IdentityHashTranslator<WTF::HashMap<WTF::UUID,WTF::CompletionHandler<void ()(WebCore::TextAnimationRunMode)>,WTF::DefaultHash<WTF::UUID>,WTF::HashTraits<WTF::UUID>,WTF::HashTraits<WTF::CompletionHandler<void ()(WebCore::TextAnimationRunMode)>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<WTF::UUID>>,(WTF::ShouldValidateKey)1,WTF::UUID>((v2 + 2552), a2);
    result = WTF::HashMap<WTF::UUID,WTF::CompletionHandler<void ()(WebCore::TextAnimationRunMode)>,WTF::DefaultHash<WTF::UUID>,WTF::HashTraits<WTF::UUID>,WTF::HashTraits<WTF::CompletionHandler<void ()(WebCore::TextAnimationRunMode)>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::take((v2 + 2552), v3, &v4);
    if (v4)
    {
      WTF::CompletionHandler<void ()(WebCore::TextAnimationRunMode)>::operator()(&v4);
      result = v4;
      v4 = 0;
      if (result)
      {
        return (*(*result + 8))(result);
      }
    }
  }

  return result;
}

void sub_19DCE1CFC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (a10)
  {
    (*(*a10 + 8))(a10);
  }

  _Unwind_Resume(exception_object);
}

void *WTF::HashMap<WTF::UUID,WTF::CompletionHandler<void ()(std::optional<WebCore::TextIndicatorData>)>,WTF::DefaultHash<WTF::UUID>,WTF::HashTraits<WTF::UUID>,WTF::HashTraits<WTF::CompletionHandler<void ()(std::optional<WebCore::TextIndicatorData>)>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::add<WTF::CompletionHandler<void ()(std::optional<WebCore::TextIndicatorData>)>>@<X0>(WTF::UUIDHash *this@<X1>, uint64_t *a2@<X0>, uint64_t *a3@<X2>, uint64_t a4@<X8>)
{
  if (!(*this ^ 1 | *(this + 1)) || *this == 0)
  {
    __break(0xC471u);
    JUMPOUT(0x19DCE1F34);
  }

  v8 = *a2;
  if (*a2 || (WTF::HashTable<WTF::UUID,WTF::KeyValuePair<WTF::UUID,WTF::CompletionHandler<void ()(std::optional<WebCore::TextIndicatorData>)>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::UUID,WTF::CompletionHandler<void ()(std::optional<WebCore::TextIndicatorData>)>>>,WTF::DefaultHash<WTF::UUID>,WTF::HashMap<WTF::UUID,WTF::CompletionHandler<void ()(std::optional<WebCore::TextIndicatorData>)>,WTF::DefaultHash<WTF::UUID>,WTF::HashTraits<WTF::UUID>,WTF::HashTraits<WTF::CompletionHandler<void ()(std::optional<WebCore::TextIndicatorData>)>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::UUID>,WTF::FastMalloc>::expand(a2, 0), (v8 = *a2) != 0))
  {
    v9 = *(v8 - 8);
  }

  else
  {
    v9 = 0;
  }

  result = WTF::UUIDHash::hash(this, this);
  v11 = result & v9;
  v12 = (v8 + 32 * v11);
  v14 = *v12;
  v13 = v12[1];
  if (*v12 != 0)
  {
    v15 = 0;
    v16 = 1;
    do
    {
      if (v13 == *(this + 1) && v14 == *this)
      {
        v21 = *a2;
        if (*a2)
        {
          v22 = *(v21 - 4);
        }

        else
        {
          v22 = 0;
        }

        v26 = 0;
        v25 = v21 + 32 * v22;
        goto LABEL_33;
      }

      if (!(v14 ^ 1 | v13))
      {
        v15 = v12;
      }

      v11 = (v11 + v16) & v9;
      v12 = (v8 + 32 * v11);
      v14 = *v12;
      v13 = v12[1];
      ++v16;
    }

    while (*v12 != 0);
    if (v15)
    {
      *v15 = 0;
      v15[1] = 0;
      v15[2] = 0;
      --*(*a2 - 16);
      v12 = v15;
    }
  }

  *v12 = *this;
  v18 = *a3;
  *a3 = 0;
  result = v12[2];
  v12[2] = v18;
  if (result)
  {
    result = (*(*result + 8))(result);
  }

  v19 = *a2;
  if (*a2)
  {
    v20 = *(v19 - 12) + 1;
  }

  else
  {
    v20 = 1;
  }

  *(v19 - 12) = v20;
  v23 = (*(v19 - 16) + v20);
  v24 = *(v19 - 4);
  if (v24 > 0x400)
  {
    if (v24 <= 2 * v23)
    {
LABEL_26:
      result = WTF::HashTable<WTF::UUID,WTF::KeyValuePair<WTF::UUID,WTF::CompletionHandler<void ()(std::optional<WebCore::TextIndicatorData>)>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::UUID,WTF::CompletionHandler<void ()(std::optional<WebCore::TextIndicatorData>)>>>,WTF::DefaultHash<WTF::UUID>,WTF::HashMap<WTF::UUID,WTF::CompletionHandler<void ()(std::optional<WebCore::TextIndicatorData>)>,WTF::DefaultHash<WTF::UUID>,WTF::HashTraits<WTF::UUID>,WTF::HashTraits<WTF::CompletionHandler<void ()(std::optional<WebCore::TextIndicatorData>)>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::UUID>,WTF::FastMalloc>::expand(a2, v12);
      v12 = result;
      v19 = *a2;
      if (*a2)
      {
        v24 = *(v19 - 4);
      }

      else
      {
        v24 = 0;
      }
    }
  }

  else if (3 * v24 <= 4 * v23)
  {
    goto LABEL_26;
  }

  v25 = v19 + 32 * v24;
  v26 = 1;
LABEL_33:
  *a4 = v12;
  *(a4 + 8) = v25;
  *(a4 + 16) = v26;
  return result;
}

WebCore::TextIndicator *WebKit::WebPageProxy::getTextIndicatorForID(uint64_t a1, WTF::UUIDHash *a2, uint64_t *a3)
{
  if ((*(a1 + 865) & 1) != 0 || (*(a1 + 864) & 1) == 0)
  {
    v10 = 0;
    WTF::CompletionHandler<void ()(WTF::RefPtr<WebCore::TextIndicator,WTF::RawPtrTraits<WebCore::TextIndicator>,WTF::DefaultRefDerefTraits<WebCore::TextIndicator>> &&)>::operator()(a3);
LABEL_6:
    result = v10;
    v10 = 0;
    if (result)
    {
      return WTF::RefCounted<WebCore::TextIndicator>::deref(result);
    }

    return result;
  }

  v6 = WTF::HashMap<WTF::UUID,WTF::RefPtr<WebCore::TextIndicator,WTF::RawPtrTraits<WebCore::TextIndicator>,WTF::DefaultRefDerefTraits<WebCore::TextIndicator>>,WTF::DefaultHash<WTF::UUID>,WTF::HashTraits<WTF::UUID>,WTF::HashTraits<WTF::RefPtr<WebCore::TextIndicator,WTF::RawPtrTraits<WebCore::TextIndicator>,WTF::DefaultRefDerefTraits<WebCore::TextIndicator>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::get<WTF::IdentityHashTranslator<WTF::HashMap<WTF::UUID,WTF::RefPtr<WebCore::TextIndicator,WTF::RawPtrTraits<WebCore::TextIndicator>,WTF::DefaultRefDerefTraits<WebCore::TextIndicator>>,WTF::DefaultHash<WTF::UUID>,WTF::HashTraits<WTF::UUID>,WTF::HashTraits<WTF::RefPtr<WebCore::TextIndicator,WTF::RawPtrTraits<WebCore::TextIndicator>,WTF::DefaultRefDerefTraits<WebCore::TextIndicator>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<WTF::UUID>>,WTF::UUID>((*(a1 + 32) + 2544), a2);
  if (v6)
  {
    ++*v6;
    v10 = v6;
    WTF::CompletionHandler<void ()(WTF::RefPtr<WebCore::TextIndicator,WTF::RawPtrTraits<WebCore::TextIndicator>,WTF::DefaultRefDerefTraits<WebCore::TextIndicator>> &&)>::operator()(a3);
    goto LABEL_6;
  }

  v8 = *(a1 + 352);
  atomic_fetch_add((v8 + 16), 1u);
  v9 = a2;
  result = WebKit::AuxiliaryProcessProxy::sendWithAsyncReply<Messages::WebPage::CreateTextIndicatorForTextAnimationID,WTF::CompletionHandler<void ()(WTF::RefPtr<WebCore::TextIndicator,WTF::RawPtrTraits<WebCore::TextIndicator>,WTF::DefaultRefDerefTraits<WebCore::TextIndicator>> &&)>>(v8, &v9, a3, *(a1 + 48), 0, 1);
  if (v8)
  {
    return WTF::ThreadSafeRefCounted<WebKit::AuxiliaryProcessProxy,(WTF::DestructionThread)2>::deref((v8 + 16));
  }

  return result;
}

void sub_19DCE2038(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (v11)
  {
    WTF::ThreadSafeRefCounted<WebKit::AuxiliaryProcessProxy,(WTF::DestructionThread)2>::deref(v10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t WTF::CompletionHandler<void ()(WTF::RefPtr<WebCore::TextIndicator,WTF::RawPtrTraits<WebCore::TextIndicator>,WTF::DefaultRefDerefTraits<WebCore::TextIndicator>> &&)>::operator()(uint64_t *a1)
{
  v1 = *a1;
  *a1 = 0;
  (*(*v1 + 16))(v1);
  v2 = *(*v1 + 8);

  return v2(v1);
}

atomic_uint *WebKit::WebPageProxy::updateUnderlyingTextVisibilityForTextAnimationID(uint64_t a1, uint64_t a2, char a3, uint64_t *a4)
{
  if ((*(a1 + 865) & 1) != 0 || (*(a1 + 864) & 1) == 0)
  {

    return WTF::CompletionHandler<void ()(void)>::operator()(a4);
  }

  else
  {
    v4 = *(a1 + 352);
    atomic_fetch_add((v4 + 16), 1u);
    v6 = a2;
    v7 = a3;
    result = WebKit::AuxiliaryProcessProxy::sendWithAsyncReply<Messages::WebPage::UpdateUnderlyingTextVisibilityForTextAnimationID,WTF::CompletionHandler<void ()(void)>>(v4, &v6, a4, *(a1 + 48), 0, 1);
    if (v4)
    {
      return WTF::ThreadSafeRefCounted<WebKit::AuxiliaryProcessProxy,(WTF::DestructionThread)2>::deref((v4 + 16));
    }
  }

  return result;
}

void sub_19DCE21CC(_Unwind_Exception *exception_object)
{
  if (v2)
  {
    WTF::ThreadSafeRefCounted<WebKit::AuxiliaryProcessProxy,(WTF::DestructionThread)2>::deref(v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t WebKit::WebPageProxy::didEndPartialIntelligenceTextAnimationImpl(uint64_t this)
{
  v1 = *(this + 56);
  if (v1)
  {
    v2 = *(v1 + 8);
    if (v2)
    {
      (*(*v2 + 1712))(v2);
      (*(*v2 + 1928))(v2);
      v3 = *(*v2 + 1720);

      return v3(v2);
    }
  }

  return this;
}

atomic_uint *WebKit::WebPageProxy::intelligenceTextAnimationsDidComplete(atomic_uint *this)
{
  if ((*(this + 865) & 1) == 0 && *(this + 864) == 1)
  {
    v1 = *(this + 44);
    atomic_fetch_add((v1 + 16), 1u);
    this = WebKit::AuxiliaryProcessProxy::send<Messages::WebPage::IntelligenceTextAnimationsDidComplete>(v1, &v2, *(this + 6), 0);
    if (v1)
    {
      return WTF::ThreadSafeRefCounted<WebKit::AuxiliaryProcessProxy,(WTF::DestructionThread)2>::deref((v1 + 16));
    }
  }

  return this;
}

void sub_19DCE2360(_Unwind_Exception *exception_object)
{
  if (v2)
  {
    WTF::ThreadSafeRefCounted<WebKit::AuxiliaryProcessProxy,(WTF::DestructionThread)2>::deref(v1);
  }

  _Unwind_Resume(exception_object);
}

void WebKit::WebPageProxy::removeTextAnimationForAnimationID(WebKit::WebPageProxy *this, IPC::Connection *a2, const WTF::UUID *a3)
{
  v11 = *MEMORY[0x1E69E9840];
  if (*a3 <= 1uLL)
  {
    v8 = qword_1ED6416C8;
    if (os_log_type_enabled(qword_1ED6416C8, OS_LOG_TYPE_FAULT))
    {
      v9 = 136446210;
      v10 = "void WebKit::WebPageProxy::removeTextAnimationForAnimationID(IPC::Connection &, const WTF::UUID &)";
      _os_log_fault_impl(&dword_19D52D000, v8, OS_LOG_TYPE_FAULT, "/Library/Caches/com.apple.xbs/Sources/WebKit/Source/WebKit/UIProcess/Cocoa/WebPageProxyCocoa.mm 1475: Invalid message dispatched %{public}s", &v9, 0xCu);
    }

    *(a2 + 94) = 1;
    if (IPC::s_shouldCrashOnMessageCheckFailure == 1)
    {
      __break(0xC471u);
    }
  }

  else
  {
    v3 = *(this + 7);
    if (v3)
    {
      v4 = *(v3 + 8);
      if (v4)
      {
        (*(*v4 + 1712))(v4, a2);
        (*(*v4 + 1952))(v4, a3);
        v6 = *(*v4 + 1720);

        v6(v4);
      }
    }
  }
}

uint64_t WebKit::WebPageProxy::proofreadingSessionShowDetailsForSuggestionWithIDRelativeToRect(uint64_t this, IPC::Connection *a2, const UUID *a3, IntRect a4)
{
  v4 = *(this + 56);
  if (v4)
  {
    v5 = *(v4 + 8);
    if (v5)
    {
      m_size = a4.m_size;
      m_location = a4.m_location;
      (*(*v5 + 1712))(v5, a2);
      (*(*v5 + 1896))(v5, a3, m_location, m_size);
      v9 = *(*v5 + 1720);

      return v9(v5);
    }
  }

  return this;
}

uint64_t WebKit::WebPageProxy::proofreadingSessionUpdateStateForSuggestionWithID(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(result + 56);
  if (v4)
  {
    v5 = *(v4 + 8);
    if (v5)
    {
      (*(*v5 + 1712))(v5);
      (*(*v5 + 1904))(v5, a3, a4);
      v8 = *(*v5 + 1720);

      return v8(v5);
    }
  }

  return result;
}

uint64_t WebKit::WebPageProxy::createTextIndicatorForElementWithID(uint64_t a1, void *a2, uint64_t *a3)
{
  if ((*(a1 + 865) & 1) != 0 || (*(a1 + 864) & 1) == 0)
  {
    LOBYTE(v15[0]) = 0;
    v17 = 0;
    return WTF::CompletionHandler<void ()(std::optional<WebCore::TextIndicatorData> &&)>::operator()(a3);
  }

  else
  {
    v5 = *(a1 + 352);
    atomic_fetch_add((v5 + 16), 1u);
    v6 = *(a1 + 48);
    v7 = IPC::Encoder::operator new(0x238, a2);
    *v7 = 2484;
    *(v7 + 2) = 0;
    *(v7 + 3) = 0;
    *(v7 + 1) = v6;
    *(v7 + 68) = 0;
    *(v7 + 70) = 0;
    *(v7 + 69) = 0;
    IPC::Encoder::encodeHeader(v7);
    v18 = v7;
    IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(v7, a2);
    v8 = *a3;
    *a3 = 0;
    v9 = WTF::fastMalloc(0x10);
    *v9 = &unk_1F1103EF8;
    v9[1] = v8;
    if (WTF::ObjectIdentifierGeneric<IPC::AsyncReplyIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>::m_generationProtected == 1)
    {
      result = 141;
      __break(0xC471u);
    }

    else
    {
      v15[0] = v9;
      v15[1] = WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>::generateIdentifierInternal();
      v16 = 1;
      WebKit::AuxiliaryProcessProxy::sendMessage(v5, &v18, 0, v15, 1);
      if (v16 == 1)
      {
        v11 = v15[0];
        v15[0] = 0;
        if (v11)
        {
          (*(*v11 + 8))(v11);
        }
      }

      result = v18;
      v18 = 0;
      if (result)
      {
        IPC::Encoder::~Encoder(result, v10);
        result = bmalloc::api::tzoneFree(v13, v14);
        if (v5)
        {
          return WTF::ThreadSafeRefCounted<WebKit::AuxiliaryProcessProxy,(WTF::DestructionThread)2>::deref((v5 + 16));
        }
      }

      else if (v5)
      {
        return WTF::ThreadSafeRefCounted<WebKit::AuxiliaryProcessProxy,(WTF::DestructionThread)2>::deref((v5 + 16));
      }
    }
  }

  return result;
}

void sub_19DCE2A88(_Unwind_Exception *exception_object, void *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, uint64_t a13, uint64_t a14, uint64_t a15, WTF *a16, int a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27)
{
  if (a12 == 1 && a10)
  {
    (*(*a10 + 8))(a10);
  }

  v31 = *(v29 - 56);
  *(v29 - 56) = 0;
  if (v31)
  {
    IPC::Encoder::~Encoder(v31, a2);
    bmalloc::api::tzoneFree(v32, v33);
  }

  if (v28)
  {
    WTF::ThreadSafeRefCounted<WebKit::AuxiliaryProcessProxy,(WTF::DestructionThread)2>::deref(v27);
  }

  _Unwind_Resume(exception_object);
}

uint64_t WTF::CompletionHandler<void ()(std::optional<WebCore::TextIndicatorData> &&)>::operator()(uint64_t *a1)
{
  v1 = *a1;
  *a1 = 0;
  (*(*v1 + 16))(v1);
  v2 = *(*v1 + 8);

  return v2(v1);
}

void WebKit::WebPageProxy::setTextIndicatorFromFrame(uint64_t a1, uint64_t a2, __int128 *a3, char a4)
{
  v7 = WebKit::WebFrameProxy::webFrame(a2, 1);
  if (v7)
  {
    v8 = v7;
    CFRetain(*(v7 + 8));
    v9 = *(a3 + 4);
    v10 = *(a3 + 5);
    v11 = *(a3 + 6);
    v12 = *(a3 + 7);
    v13 = WebKit::WebFrameProxy::rootFrame(v8)[36];
    WTF::WeakPtrFactory<IPC::MessageReceiver,WTF::DefaultWeakPtrImpl>::initializeIfNeeded((a1 + 24), a1 + 16);
    v14 = *(a1 + 24);
    atomic_fetch_add(v14, 1u);
    v36 = v14;
    v15 = a3[1];
    v37 = *a3;
    v38 = v15;
    v39 = a3[2];
    WTF::Vector<WebCore::LinearTimingFunction::Point,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::Vector(&v40, (a3 + 3));
    v42 = *(a3 + 16);
    v16 = *(a3 + 9);
    if (v16)
    {
      ++v16[4];
    }

    v43 = v16;
    v17 = *(a3 + 10);
    if (v17)
    {
      ++v17[4];
    }

    v44 = v17;
    v18 = *(a3 + 11);
    if (v18)
    {
      ++v18[4];
    }

    v19 = *(a3 + 12);
    v45 = v18;
    v46 = v19;
    if ((v19 & 0x8000000000000) != 0)
    {
      atomic_fetch_add((v19 & 0xFFFFFFFFFFFFLL), 1u);
    }

    v47[0] = *(a3 + 104);
    *(v47 + 9) = *(a3 + 113);
    v48 = a4;
    v20 = WTF::fastMalloc(0xA0);
    *v20 = &unk_1F1103F20;
    *(v20 + 8) = v36;
    v21 = v37;
    v22 = v39;
    *(v20 + 32) = v38;
    *(v20 + 48) = v22;
    *(v20 + 16) = v21;
    v36 = 0;
    *(v20 + 64) = v40;
    v23 = v41;
    v40 = 0;
    v41 = 0;
    *(v20 + 72) = v23;
    *(v20 + 80) = v42;
    *(v20 + 88) = v43;
    v24 = v44;
    v43 = 0;
    v44 = 0;
    *(v20 + 96) = v24;
    v25 = v45;
    v45 = 0;
    *(v20 + 104) = v25;
    *(v20 + 112) = 0;
    if ((v20 + 8) != &v36)
    {
      v26 = v46;
      v46 = 0;
      *(v20 + 112) = v26;
    }

    v27 = v47[0];
    *(v20 + 129) = *(v47 + 9);
    *(v20 + 120) = v27;
    *(v20 + 152) = v48;
    v49 = v20;
    WebKit::WebPageProxy::convertRectToMainFrameCoordinates(a1, v13, 1, &v49, v9, v10, v11, v12);
    v29 = v49;
    v49 = 0;
    if (v29)
    {
      (*(*v29 + 8))(v29);
    }

    if ((v46 & 0x8000000000000) != 0)
    {
      v35 = (v46 & 0xFFFFFFFFFFFFLL);
      if (atomic_fetch_add((v46 & 0xFFFFFFFFFFFFLL), 0xFFFFFFFF) == 1)
      {
        atomic_store(1u, v35);
        WTF::fastFree(v35, v28);
      }
    }

    v30 = v45;
    v45 = 0;
    if (v30)
    {
      if (v30[4] == 1)
      {
        (*(*v30 + 8))(v30);
      }

      else
      {
        --v30[4];
      }
    }

    v31 = v44;
    v44 = 0;
    if (v31)
    {
      if (v31[4] == 1)
      {
        (*(*v31 + 8))(v31);
      }

      else
      {
        --v31[4];
      }
    }

    v32 = v43;
    v43 = 0;
    if (v32)
    {
      if (v32[4] == 1)
      {
        (*(*v32 + 8))(v32);
      }

      else
      {
        --v32[4];
      }
    }

    v33 = v40;
    if (v40)
    {
      v40 = 0;
      LODWORD(v41) = 0;
      WTF::fastFree(v33, v28);
    }

    v34 = v36;
    v36 = 0;
    if (v34)
    {
      if (atomic_fetch_add(v34, 0xFFFFFFFF) == 1)
      {
        atomic_store(1u, v34);
        WTF::fastFree(v34, v28);
      }
    }

    CFRelease(v8[1]);
  }
}

void sub_19DCE30A8(_Unwind_Exception *a1, void *a2, int a3, int a4, int a5, int a6, int a7, int a8, WTF *a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, WTF *a16, int a17, uint64_t a18, _DWORD *a19, _DWORD *a20, _DWORD *a21, uint64_t a22)
{
  v25 = *(v23 - 104);
  *(v23 - 104) = 0;
  if (v25)
  {
    (*(*v25 + 8))(v25);
  }

  if ((a22 & 0x8000000000000) != 0)
  {
    v26 = (a22 & 0xFFFFFFFFFFFFLL);
    if (atomic_fetch_add((a22 & 0xFFFFFFFFFFFFLL), 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, v26);
      WTF::fastFree(v26, a2);
    }
  }

  if (a21)
  {
    if (a21[4] == 1)
    {
      (*(*a21 + 8))(a21);
    }

    else
    {
      --a21[4];
    }
  }

  if (a20)
  {
    if (a20[4] == 1)
    {
      (*(*a20 + 8))(a20);
    }

    else
    {
      --a20[4];
    }
  }

  if (a19)
  {
    if (a19[4] == 1)
    {
      (*(*a19 + 8))(a19);
    }

    else
    {
      --a19[4];
    }
  }

  if (a16)
  {
    WTF::fastFree(a16, a2);
  }

  if (a9)
  {
    if (atomic_fetch_add(a9, 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, a9);
      WTF::fastFree(a9, a2);
    }
  }

  CFRelease(*(v22 + 8));
  _Unwind_Resume(a1);
}

void WebKit::WebPageProxy::updateTextIndicatorFromFrame(uint64_t a1, uint64_t a2, __int128 *a3)
{
  v5 = WebKit::WebFrameProxy::webFrame(a2, 1);
  if (v5)
  {
    v6 = v5;
    CFRetain(*(v5 + 8));
    v7 = *(a3 + 4);
    v8 = *(a3 + 5);
    v9 = *(a3 + 6);
    v10 = *(a3 + 7);
    v11 = WebKit::WebFrameProxy::rootFrame(v6)[36];
    WTF::WeakPtrFactory<IPC::MessageReceiver,WTF::DefaultWeakPtrImpl>::initializeIfNeeded((a1 + 24), a1 + 16);
    v12 = *(a1 + 24);
    atomic_fetch_add(v12, 1u);
    v34 = v12;
    v13 = a3[1];
    v35 = *a3;
    v36 = v13;
    v37 = a3[2];
    WTF::Vector<WebCore::LinearTimingFunction::Point,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::Vector(&v38, (a3 + 3));
    v40 = *(a3 + 16);
    v14 = *(a3 + 9);
    if (v14)
    {
      ++v14[4];
    }

    v41 = v14;
    v15 = *(a3 + 10);
    if (v15)
    {
      ++v15[4];
    }

    v42 = v15;
    v16 = *(a3 + 11);
    if (v16)
    {
      ++v16[4];
    }

    v17 = *(a3 + 12);
    v43 = v16;
    v44 = v17;
    if ((v17 & 0x8000000000000) != 0)
    {
      atomic_fetch_add((v17 & 0xFFFFFFFFFFFFLL), 1u);
    }

    v45[0] = *(a3 + 104);
    *(v45 + 9) = *(a3 + 113);
    v18 = WTF::fastMalloc(0x98);
    *v18 = &unk_1F1103F48;
    *(v18 + 8) = v34;
    v19 = v35;
    v20 = v37;
    *(v18 + 32) = v36;
    *(v18 + 48) = v20;
    *(v18 + 16) = v19;
    v34 = 0;
    *(v18 + 64) = v38;
    v21 = v39;
    v38 = 0;
    v39 = 0;
    *(v18 + 72) = v21;
    *(v18 + 80) = v40;
    *(v18 + 88) = v41;
    v22 = v42;
    v41 = 0;
    v42 = 0;
    *(v18 + 96) = v22;
    v23 = v43;
    v43 = 0;
    *(v18 + 104) = v23;
    *(v18 + 112) = 0;
    if ((v18 + 8) != &v34)
    {
      v24 = v44;
      v44 = 0;
      *(v18 + 112) = v24;
    }

    v25 = v45[0];
    *(v18 + 129) = *(v45 + 9);
    *(v18 + 120) = v25;
    v46 = v18;
    WebKit::WebPageProxy::convertRectToMainFrameCoordinates(a1, v11, 1, &v46, v7, v8, v9, v10);
    v27 = v46;
    v46 = 0;
    if (v27)
    {
      (*(*v27 + 8))(v27);
    }

    if ((v44 & 0x8000000000000) != 0)
    {
      v33 = (v44 & 0xFFFFFFFFFFFFLL);
      if (atomic_fetch_add((v44 & 0xFFFFFFFFFFFFLL), 0xFFFFFFFF) == 1)
      {
        atomic_store(1u, v33);
        WTF::fastFree(v33, v26);
      }
    }

    v28 = v43;
    v43 = 0;
    if (v28)
    {
      if (v28[4] == 1)
      {
        (*(*v28 + 8))(v28);
      }

      else
      {
        --v28[4];
      }
    }

    v29 = v42;
    v42 = 0;
    if (v29)
    {
      if (v29[4] == 1)
      {
        (*(*v29 + 8))(v29);
      }

      else
      {
        --v29[4];
      }
    }

    v30 = v41;
    v41 = 0;
    if (v30)
    {
      if (v30[4] == 1)
      {
        (*(*v30 + 8))(v30);
      }

      else
      {
        --v30[4];
      }
    }

    v31 = v38;
    if (v38)
    {
      v38 = 0;
      LODWORD(v39) = 0;
      WTF::fastFree(v31, v26);
    }

    v32 = v34;
    v34 = 0;
    if (v32)
    {
      if (atomic_fetch_add(v32, 0xFFFFFFFF) == 1)
      {
        atomic_store(1u, v32);
        WTF::fastFree(v32, v26);
      }
    }

    CFRelease(v6[1]);
  }
}

void sub_19DCE359C(_Unwind_Exception *a1, void *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, WTF *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, WTF *a17, int a18, uint64_t a19, _DWORD *a20, _DWORD *a21, _DWORD *a22, uint64_t a23)
{
  v26 = *(v24 - 88);
  *(v24 - 88) = 0;
  if (v26)
  {
    (*(*v26 + 8))(v26);
  }

  if ((a23 & 0x8000000000000) != 0)
  {
    v27 = (a23 & 0xFFFFFFFFFFFFLL);
    if (atomic_fetch_add((a23 & 0xFFFFFFFFFFFFLL), 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, v27);
      WTF::fastFree(v27, a2);
    }
  }

  if (a22)
  {
    if (a22[4] == 1)
    {
      (*(*a22 + 8))(a22);
    }

    else
    {
      --a22[4];
    }
  }

  if (a21)
  {
    if (a21[4] == 1)
    {
      (*(*a21 + 8))(a21);
    }

    else
    {
      --a21[4];
    }
  }

  if (a20)
  {
    if (a20[4] == 1)
    {
      (*(*a20 + 8))(a20);
    }

    else
    {
      --a20[4];
    }
  }

  if (a17)
  {
    WTF::fastFree(a17, a2);
  }

  if (a10)
  {
    if (atomic_fetch_add(a10, 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, a10);
      WTF::fastFree(a10, a2);
    }
  }

  CFRelease(*(v23 + 8));
  _Unwind_Resume(a1);
}

void WebKit::WebPageProxy::clearTextIndicatorWithAnimation(uint64_t a1, int a2)
{
  if ([*(a1 + 320) isFadingOut])
  {
    return;
  }

  v4 = *(a1 + 312);
  if (v4)
  {
    ++*v4;
    if (WebCore::TextIndicator::wantsManualAnimation(v4))
    {
      v5 = [*(a1 + 320) hasCompletedAnimation] ^ 1;
      if (a2 != 1)
      {
        LOBYTE(v5) = 1;
      }

      if ((v5 & 1) == 0)
      {
        WebKit::WebPageProxy::startTextIndicatorFadeOut(a1);
LABEL_8:

        WTF::RefCounted<WebCore::TextIndicator>::deref(v4);
        return;
      }
    }
  }

  [*(a1 + 320) removeFromSuperlayer];
  v6 = *(a1 + 320);
  *(a1 + 320) = 0;
  if (v6)
  {
  }

  if (v4)
  {
    goto LABEL_8;
  }
}

void sub_19DCE37DC(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    WTF::RefCounted<WebCore::TextIndicator>::deref(v1);
  }

  _Unwind_Resume(exception_object);
}

unsigned int *WebKit::WebPageProxy::startTextIndicatorFadeOut(WebKit::WebPageProxy *this)
{
  [*(this + 40) setFadingOut:1];
  v2 = *(this + 40);
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3321888768;
  v6[2] = ___ZN6WebKit12WebPageProxy25startTextIndicatorFadeOutEv_block_invoke;
  v6[3] = &__block_descriptor_40_e8_32c62_ZTSKZN6WebKit12WebPageProxy25startTextIndicatorFadeOutEvE3__0_e5_v8__0l;
  WTF::WeakPtrFactory<IPC::MessageReceiver,WTF::DefaultWeakPtrImpl>::initializeIfNeeded(this + 6, this + 16);
  v3 = *(this + 3);
  atomic_fetch_add(v3, 1u);
  if (v3)
  {
    atomic_fetch_add(v3, 1u);
  }

  v7 = v3;
  [v2 hideWithCompletionHandler:v6];
  if (v3 && atomic_fetch_add(v3, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v3);
    WTF::fastFree(v3, v4);
  }

  result = v7;
  v7 = 0;
  if (result)
  {
    if (atomic_fetch_add(result, 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, result);
      return WTF::fastFree(result, v4);
    }
  }

  return result;
}

void sub_19DCE38FC(_Unwind_Exception *exception_object, void *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, WTF *a14)
{
  if (a14 && atomic_fetch_add(a14, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, a14);
    WTF::fastFree(a14, a2);
    if (!v14)
    {
      goto LABEL_6;
    }
  }

  else if (!v14)
  {
    goto LABEL_6;
  }

  if (atomic_fetch_add(v14, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v14);
    WTF::fastFree(v14, a2);
  }

LABEL_6:
  _Unwind_Resume(exception_object);
}

void ___ZN6WebKit12WebPageProxy25startTextIndicatorFadeOutEv_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    v2 = *(v1 + 8);
    if (v2)
    {
      CFRetain(*(v2 - 8));
      [*(v2 + 304) removeFromSuperlayer];
      v3 = *(v2 + 304);
      *(v2 + 304) = 0;
      if (v3)
      {
      }

      v4 = *(v2 - 8);

      CFRelease(v4);
    }
  }
}

void sub_19DCE39C4(_Unwind_Exception *a1)
{
  v2 = v1;
  CFRelease(*(v2 - 8));
  _Unwind_Resume(a1);
}

uint64_t __copy_helper_block_e8_32c62_ZTSKZN6WebKit12WebPageProxy25startTextIndicatorFadeOutEvE3__0(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 32);
  if (v2)
  {
    atomic_fetch_add(v2, 1u);
  }

  *(result + 32) = v2;
  return result;
}

unsigned int *__destroy_helper_block_e8_32c62_ZTSKZN6WebKit12WebPageProxy25startTextIndicatorFadeOutEvE3__0(uint64_t a1, void *a2)
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

uint64_t *WebKit::WebPageProxy::playPredominantOrNowPlayingMediaSession(uint64_t *a1, WTF::RefCountedBase *a2)
{
  if (WebKit::WebPageProxy::tryToSendCommandToActiveControlledVideo(a1, 1))
  {

    return WTF::CompletionHandler<void ()(BOOL)>::operator()(a2, 1);
  }

  else
  {
    v5 = a1[44];
    atomic_fetch_add((v5 + 16), 1u);
    result = WebKit::AuxiliaryProcessProxy::sendWithAsyncReply<Messages::WebPage::StartPlayingPredominantVideo,WTF::CompletionHandler<void ()(BOOL)>>(v5, &v6, a2, a1[6], 0, 1);
    if (v5)
    {
      return WTF::ThreadSafeRefCounted<WebKit::AuxiliaryProcessProxy,(WTF::DestructionThread)2>::deref((v5 + 16));
    }
  }

  return result;
}

void sub_19DCE3AD0(_Unwind_Exception *exception_object)
{
  if (v2)
  {
    WTF::ThreadSafeRefCounted<WebKit::AuxiliaryProcessProxy,(WTF::DestructionThread)2>::deref(v1);
  }

  _Unwind_Resume(exception_object);
}

BOOL WebKit::WebPageProxy::tryToSendCommandToActiveControlledVideo(WebKit::WebPageProxy *a1, uint64_t a2)
{
  if (!WebKit::WebPageProxy::hasActiveVideoForControlsManager(a1))
  {
    return 0;
  }

  v4 = *(a1 + 65);
  if (v4)
  {
    ++*(v4 + 16);
  }

  WebKit::PlaybackSessionManagerProxy::controlsManagerInterface(v4, &v14);
  v5 = v14;
  v6 = WebCore::PlaybackSessionInterfaceIOS::playbackSessionModel(v14);
  v8 = v6;
  if (v6)
  {
    v9 = *(v6 + 8);
    if (v9)
    {
      goto LABEL_10;
    }

    v9 = WTF::fastCompactMalloc(0x10);
    *v9 = 1;
    *(v9 + 8) = v8;
    v10 = *(v8 + 8);
    *(v8 + 8) = v9;
    if (!v10)
    {
      goto LABEL_10;
    }

    if (atomic_fetch_add(v10, 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, v10);
      WTF::fastFree(v10, v7);
    }

    v9 = *(v8 + 8);
    if (v9)
    {
LABEL_10:
      atomic_fetch_add(v9, 1u);
    }

    v5 = v14;
    if (!v14)
    {
      goto LABEL_16;
    }
  }

  else
  {
    v9 = 0;
    if (!v5)
    {
      goto LABEL_16;
    }
  }

  if (*(v5 + 4) == 1)
  {
    (*(*v5 + 8))(v5);
    if (!v4)
    {
      goto LABEL_19;
    }

    goto LABEL_17;
  }

  --*(v5 + 4);
LABEL_16:
  if (!v4)
  {
    goto LABEL_19;
  }

LABEL_17:
  if (*(v4 + 16) == 1)
  {
    (*(*v4 + 24))(v4);
  }

  else
  {
    --*(v4 + 16);
  }

LABEL_19:
  if (!v9)
  {
    return 0;
  }

  v11 = *(v9 + 8);
  v12 = v11 != 0;
  if (v11)
  {
    LOBYTE(v14) = 0;
    v15 = 0;
    v16 = 0;
    (*(*v11 + 256))(v11, a2, &v14);
  }

  if (atomic_fetch_add(v9, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v9);
    WTF::fastFree(v9, v7);
  }

  return v12;
}

void sub_19DCE3CC8(_Unwind_Exception *exception_object, void *a2)
{
  if (atomic_fetch_add(v2, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v2);
    WTF::fastFree(v2, a2);
  }

  _Unwind_Resume(exception_object);
}

uint64_t WebKit::WebPageProxy::getInformationFromImageData(WebKit::WebPageProxy *a1, uint64_t a2, uint64_t *a3)
{
  v6 = WebKit::WebPageProxy::ensureRunningProcess(a1);
  atomic_fetch_add((v6 + 16), 1u);
  v7 = *(a1 + 44);
  atomic_fetch_add((v7 + 16), 1u);
  WebKit::WebProcessProxy::shutdownPreventingScope(v7, &v28);
  v8 = *a3;
  *a3 = 0;
  v29 = v8;
  v9 = *(a1 + 6);
  v11 = IPC::Encoder::operator new(0x238, v10);
  *v11 = 2573;
  *(v11 + 2) = 0;
  *(v11 + 3) = 0;
  *(v11 + 1) = v9;
  *(v11 + 68) = 0;
  *(v11 + 70) = 0;
  *(v11 + 69) = 0;
  IPC::Encoder::encodeHeader(v11);
  v32 = v11;
  IPC::ArgumentCoder<std::span<unsigned char const,18446744073709551615ul>,void>::encode<IPC::Encoder>(v11, *a2, *(a2 + 12));
  v12 = v28;
  v13 = v29;
  v28 = 0;
  v29 = 0;
  v14 = WTF::fastMalloc(0x18);
  *v14 = &unk_1F1103F98;
  v14[1] = v12;
  v14[2] = v13;
  if (WTF::ObjectIdentifierGeneric<IPC::AsyncReplyIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>::m_generationProtected == 1)
  {
    result = 141;
    __break(0xC471u);
    return result;
  }

  IdentifierInternal = WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>::generateIdentifierInternal();
  v30[0] = v14;
  v30[1] = IdentifierInternal;
  v31 = 1;
  WebKit::AuxiliaryProcessProxy::sendMessage(v6, &v32, 0, v30, 1);
  if (v31 == 1)
  {
    v17 = v30[0];
    v30[0] = 0;
    if (v17)
    {
      (*(*v17 + 8))(v17);
    }
  }

  v18 = v32;
  v32 = 0;
  if (v18)
  {
    IPC::Encoder::~Encoder(v18, v16);
    bmalloc::api::tzoneFree(v26, v27);
  }

  v19 = v29;
  v29 = 0;
  if (v19)
  {
    (*(*v19 + 8))(v19);
  }

  v20 = v28;
  v28 = 0;
  if (v20)
  {
    v21 = *v20;
    v22 = *(v20 + 8) - 1;
    *(v20 + 8) = v22;
    if (!v21)
    {
      goto LABEL_14;
    }

    v23 = *v21;
    if (*v21)
    {
      v24 = *(v20 + 16);
      *(v20 + 16) = 1;
      (*(*v23 + 16))(v23, 0);
      *(v20 + 16) = v24;
      if (!*v20)
      {
        v22 = *(v20 + 8);
LABEL_14:
        if (!v22)
        {
          MEMORY[0x19EB14CF0](v20, 0x1020C40545B2139);
        }
      }
    }
  }

  if (v7)
  {
    WTF::ThreadSafeRefCounted<WebKit::AuxiliaryProcessProxy,(WTF::DestructionThread)2>::deref((v7 + 16));
  }

  return WTF::ThreadSafeRefCounted<WebKit::AuxiliaryProcessProxy,(WTF::DestructionThread)2>::deref((v6 + 16));
}

void *WebKit::WebProcessProxy::shutdownPreventingScope@<X0>(void *this@<X0>, void *a2@<X8>)
{
  v3 = this[129];
  if (v3)
  {
    v4 = *v3;
    ++*(v3 + 8);
    if (v4)
    {
      this = *v4;
      if (*v4)
      {
        this = (*(*this + 16))(this, 1);
      }
    }
  }

  *a2 = v3;
  return this;
}

uint64_t WebKit::WebPageProxy::createIconDataFromImageData(WebKit::WebPageProxy *a1, atomic_uint **a2, uint64_t a3, uint64_t *a4)
{
  if (*(a3 + 12))
  {
    WTF::Vector<unsigned int,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::Vector(&v33, a3);
  }

  else
  {
    v7 = WTF::fastMalloc(0x14);
    v34 = 0x500000005;
    v33 = v7;
    *(v7 + 4) = 256;
    *v7 = xmmword_19E703A40;
  }

  v8 = WebKit::WebPageProxy::ensureRunningProcess(a1);
  atomic_fetch_add((v8 + 16), 1u);
  v9 = *(a1 + 44);
  atomic_fetch_add((v9 + 16), 1u);
  WebKit::WebProcessProxy::shutdownPreventingScope(v9, &v31);
  v10 = *a4;
  *a4 = 0;
  v32 = v10;
  v11 = *(a1 + 6);
  v13 = IPC::Encoder::operator new(0x238, v12);
  *v13 = 2481;
  *(v13 + 2) = 0;
  *(v13 + 3) = 0;
  *(v13 + 1) = v11;
  *(v13 + 68) = 0;
  *(v13 + 70) = 0;
  *(v13 + 69) = 0;
  IPC::Encoder::encodeHeader(v13);
  v37 = v13;
  IPC::ArgumentCoder<WebCore::SharedBuffer,void>::encode(v13, *a2);
  IPC::ArgumentCoder<std::span<float const,18446744073709551615ul>,void>::encode<IPC::Encoder>(v13, v33, HIDWORD(v34));
  v14 = v31;
  v15 = v32;
  v31 = 0;
  v32 = 0;
  v16 = WTF::fastMalloc(0x18);
  *v16 = &unk_1F1103FC0;
  v16[1] = v14;
  v16[2] = v15;
  if (WTF::ObjectIdentifierGeneric<IPC::AsyncReplyIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>::m_generationProtected == 1)
  {
    result = 141;
    __break(0xC471u);
    return result;
  }

  IdentifierInternal = WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>::generateIdentifierInternal();
  v35[0] = v16;
  v35[1] = IdentifierInternal;
  v36 = 1;
  WebKit::AuxiliaryProcessProxy::sendMessage(v8, &v37, 0, v35, 1);
  if (v36 == 1)
  {
    v19 = v35[0];
    v35[0] = 0;
    if (v19)
    {
      (*(*v19 + 8))(v19);
    }
  }

  v20 = v37;
  v37 = 0;
  if (v20)
  {
    IPC::Encoder::~Encoder(v20, v18);
    bmalloc::api::tzoneFree(v29, v30);
  }

  v21 = v32;
  v32 = 0;
  if (v21)
  {
    (*(*v21 + 8))(v21);
  }

  v22 = v31;
  v31 = 0;
  if (v22)
  {
    v23 = *v22;
    v24 = *(v22 + 8) - 1;
    *(v22 + 8) = v24;
    if (!v23)
    {
      goto LABEL_17;
    }

    v25 = *v23;
    if (*v23)
    {
      v26 = *(v22 + 16);
      *(v22 + 16) = 1;
      (*(*v25 + 16))(v25, 0);
      *(v22 + 16) = v26;
      if (!*v22)
      {
        v24 = *(v22 + 8);
LABEL_17:
        if (!v24)
        {
          MEMORY[0x19EB14CF0](v22, 0x1020C40545B2139);
        }
      }
    }
  }

  if (v9)
  {
    WTF::ThreadSafeRefCounted<WebKit::AuxiliaryProcessProxy,(WTF::DestructionThread)2>::deref((v9 + 16));
  }

  WTF::ThreadSafeRefCounted<WebKit::AuxiliaryProcessProxy,(WTF::DestructionThread)2>::deref((v8 + 16));
  result = v33;
  if (v33)
  {
    v33 = 0;
    LODWORD(v34) = 0;
    return WTF::fastFree(result, v27);
  }

  return result;
}

uint64_t WebKit::WebPageProxy::decodeImageData(WebKit::WebPageProxy *a1, atomic_uint **a2, uint64_t a3, int a4, uint64_t *a5)
{
  v32 = a3;
  v33 = a4;
  v8 = WebKit::WebPageProxy::ensureRunningProcess(a1);
  atomic_fetch_add((v8 + 16), 1u);
  v9 = *(a1 + 44);
  atomic_fetch_add((v9 + 16), 1u);
  WebKit::WebProcessProxy::shutdownPreventingScope(v9, &v30);
  v10 = *a5;
  *a5 = 0;
  v31 = v10;
  v11 = *(a1 + 6);
  v13 = IPC::Encoder::operator new(0x238, v12);
  *v13 = 2486;
  *(v13 + 2) = 0;
  *(v13 + 3) = 0;
  *(v13 + 1) = v11;
  *(v13 + 68) = 0;
  *(v13 + 70) = 0;
  *(v13 + 69) = 0;
  IPC::Encoder::encodeHeader(v13);
  v36 = v13;
  IPC::ArgumentCoder<WebCore::SharedBuffer,void>::encode(v13, *a2);
  IPC::ArgumentCoder<std::optional<WebCore::FloatSize>,void>::encode<IPC::Encoder,std::optional<WebCore::FloatSize> const&>(v13, &v32);
  v14 = v30;
  v15 = v31;
  v30 = 0;
  v31 = 0;
  v16 = WTF::fastMalloc(0x18);
  *v16 = &unk_1F1103FE8;
  v16[1] = v14;
  v16[2] = v15;
  if (WTF::ObjectIdentifierGeneric<IPC::AsyncReplyIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>::m_generationProtected == 1)
  {
    result = 141;
    __break(0xC471u);
    return result;
  }

  IdentifierInternal = WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>::generateIdentifierInternal();
  v34[0] = v16;
  v34[1] = IdentifierInternal;
  v35 = 1;
  WebKit::AuxiliaryProcessProxy::sendMessage(v8, &v36, 0, v34, 1);
  if (v35 == 1)
  {
    v19 = v34[0];
    v34[0] = 0;
    if (v19)
    {
      (*(*v19 + 8))(v19);
    }
  }

  v20 = v36;
  v36 = 0;
  if (v20)
  {
    IPC::Encoder::~Encoder(v20, v18);
    bmalloc::api::tzoneFree(v28, v29);
  }

  v21 = v31;
  v31 = 0;
  if (v21)
  {
    (*(*v21 + 8))(v21);
  }

  v22 = v30;
  v30 = 0;
  if (v22)
  {
    v23 = *v22;
    v24 = *(v22 + 8) - 1;
    *(v22 + 8) = v24;
    if (!v23)
    {
      goto LABEL_14;
    }

    v25 = *v23;
    if (*v23)
    {
      v26 = *(v22 + 16);
      *(v22 + 16) = 1;
      (*(*v25 + 16))(v25, 0);
      *(v22 + 16) = v26;
      if (!*v22)
      {
        v24 = *(v22 + 8);
LABEL_14:
        if (!v24)
        {
          MEMORY[0x19EB14CF0](v22, 0x1020C40545B2139);
        }
      }
    }
  }

  if (v9)
  {
    WTF::ThreadSafeRefCounted<WebKit::AuxiliaryProcessProxy,(WTF::DestructionThread)2>::deref((v9 + 16));
  }

  return WTF::ThreadSafeRefCounted<WebKit::AuxiliaryProcessProxy,(WTF::DestructionThread)2>::deref((v8 + 16));
}

void WebKit::WebPageProxy::getWebArchiveData(void *a1, uint64_t *a2)
{
  v3 = a1[53];
  if (v3)
  {
    CFRetain(*(v3 + 8));
    v5 = *(v3 + 288);
    v6 = *a2;
    *a2 = 0;
    v7 = WTF::fastMalloc(0x10);
    *v7 = &unk_1F1104038;
    v7[1] = v6;
    v8 = WTF::fastMalloc(0x20);
    *v8 = 1;
    *(v8 + 8) = v5;
    *(v8 + 16) = v7;
    *(v8 + 24) = 0;
    v11 = v8;
    v9 = WTF::fastMalloc(0x10);
    *v9 = &unk_1F1104060;
    v9[1] = &v11;
    v10 = v9;
    WebKit::WebPageProxy::forEachWebContentProcess(a1, &v10);
    if (v10)
    {
      (*(*v10 + 8))(v10);
    }

    WTF::Ref<WebKit::WebPageProxy::getWebArchiveData(WTF::CompletionHandler<void ()(API::Data *)> &&)::WebArchvieCallbackAggregator,WTF::RawPtrTraits<WTF::CompletionHandler<void ()(API::Data *)> &&>,WTF::DefaultRefDerefTraits<WTF::CompletionHandler<void ()(API::Data *)> &&>>::~Ref(&v11);
    CFRelease(*(v3 + 8));
  }

  else
  {

    WTF::CompletionHandler<void ()(API::Data *)>::operator()(a2);
  }
}

void sub_19DCE4DEC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  WTF::Ref<WebKit::WebPageProxy::getWebArchiveData(WTF::CompletionHandler<void ()(API::Data *)> &&)::WebArchvieCallbackAggregator,WTF::RawPtrTraits<WTF::CompletionHandler<void ()(API::Data *)> &&>,WTF::DefaultRefDerefTraits<WTF::CompletionHandler<void ()(API::Data *)> &&>>::~Ref(va);
  CFRelease(*(v2 + 8));
  _Unwind_Resume(a1);
}

uint64_t WTF::CompletionHandler<void ()(API::Data *)>::operator()(uint64_t *a1)
{
  v1 = *a1;
  *a1 = 0;
  (*(*v1 + 16))(v1);
  v2 = *(*v1 + 8);

  return v2(v1);
}

unsigned int **WTF::Ref<WebKit::WebPageProxy::getWebArchiveData(WTF::CompletionHandler<void ()(API::Data *)> &&)::WebArchvieCallbackAggregator,WTF::RawPtrTraits<WTF::CompletionHandler<void ()(API::Data *)> &&>,WTF::DefaultRefDerefTraits<WTF::CompletionHandler<void ()(API::Data *)> &&>>::~Ref(unsigned int **a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (atomic_fetch_add(v2, 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, v2);
      v4 = WTF::fastMalloc(0x10);
      *v4 = &unk_1F1104010;
      v4[1] = v2;
      v5 = v4;
      WTF::ensureOnMainRunLoop();
      if (v5)
      {
        (*(*v5 + 8))(v5);
      }
    }
  }

  return a1;
}

void sub_19DCE4FD0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (a10)
  {
    (*(*a10 + 8))(a10);
  }

  _Unwind_Resume(exception_object);
}

unsigned int *WTF::BlockPtr<void ()(SSBLookupResult *,NSError *)>::fromCallable<WebKit::WebPageProxy::beginSafeBrowsingCheck(WTF::URL const&,API::Navigation &,BOOL)::$_0>(WebKit::WebPageProxy::beginSafeBrowsingCheck(WTF::URL const&,API::Navigation &,BOOL)::$_0)::{lambda(void const*)#1}::__invoke(void *a1, WTF::StringImpl *a2)
{
  v3 = a1[7];
  a1[7] = 0;
  if (v3 && atomic_fetch_add_explicit(v3, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v3, a2);
  }

  v4 = a1[5];
  a1[5] = 0;
  if (v4)
  {
    CFRelease(*(v4 + 8));
  }

  result = a1[4];
  a1[4] = 0;
  if (result && atomic_fetch_add(result, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, result);

    return WTF::fastFree(result, a2);
  }

  return result;
}

uint64_t WTF::BlockPtr<void ()(SSBLookupResult *,NSError *)>::fromCallable<WebKit::WebPageProxy::beginSafeBrowsingCheck(WTF::URL const&,API::Navigation &,BOOL)::$_0>(WebKit::WebPageProxy::beginSafeBrowsingCheck(WTF::URL const&,API::Navigation &,BOOL)::$_0)::{lambda(void *,SSBLookupResult *,NSError *)#1}::__invoke(uint64_t a1, void *a2, void *a3)
{
  WTF::RunLoop::mainSingleton(a1);
  v6 = *(a1 + 32);
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  *v14 = v6;
  if (a2)
  {
    v7 = a2;
  }

  if (a3)
  {
    v13 = a3;
  }

  v15 = *(a1 + 48);
  WTF::URL::isolatedCopy();
  v17 = *(a1 + 96);
  v8 = WTF::fastMalloc(0x60);
  *v8 = &unk_1F1103B68;
  *(v8 + 8) = *v14;
  *(v8 + 24) = a2;
  *(v8 + 32) = a3;
  *(v8 + 40) = v15;
  WTF::URL::URL(v8 + 48, &v16);
  *(v8 + 88) = v17;
  v18 = v8;
  WTF::RunLoop::dispatch();
  v10 = v18;
  v18 = 0;
  if (v10)
  {
    (*(*v10 + 8))(v10);
  }

  v11 = v16;
  v16 = 0;
  if (v11 && atomic_fetch_add_explicit(v11, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v11, v9);
  }

  return 0;
}

void sub_19DCE5254(_Unwind_Exception *exception_object, void *a2, int a3, int a4, int a5, int a6, int a7, int a8, WTF *a9, uint64_t a10, void *a11, uint64_t a12, uint64_t a13, WTF::StringImpl *a14)
{
  if (a11)
  {
  }

  if (a10)
  {
    CFRelease(*(a10 + 8));
  }

  if (a9)
  {
    if (atomic_fetch_add(a9, 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, a9);
      WTF::fastFree(a9, a2);
    }
  }

  _Unwind_Resume(exception_object);
}

void *WTF::Detail::CallableWrapper<WebKit::WebPageProxy::beginSafeBrowsingCheck(WTF::URL const&,API::Navigation &,BOOL)::$_0::operator()(SSBLookupResult *,NSError *)::{lambda(void)#1},void>::~CallableWrapper(void *a1, WTF::StringImpl *a2)
{
  *a1 = &unk_1F1103B68;
  v3 = a1[6];
  a1[6] = 0;
  if (v3 && atomic_fetch_add_explicit(v3, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v3, a2);
  }

  v4 = a1[4];
  a1[4] = 0;
  if (v4)
  {
  }

  v5 = a1[3];
  a1[3] = 0;
  if (v5)
  {
  }

  v6 = a1[2];
  a1[2] = 0;
  if (v6)
  {
    CFRelease(*(v6 + 8));
  }

  v7 = a1[1];
  a1[1] = 0;
  if (v7 && atomic_fetch_add(v7, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v7);
    WTF::fastFree(v7, a2);
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WebKit::WebPageProxy::beginSafeBrowsingCheck(WTF::URL const&,API::Navigation &,BOOL)::$_0::operator()(SSBLookupResult *,NSError *)::{lambda(void)#1},void>::~CallableWrapper(WTF *this, WTF::StringImpl *a2)
{
  *this = &unk_1F1103B68;
  v3 = *(this + 6);
  *(this + 6) = 0;
  if (v3 && atomic_fetch_add_explicit(v3, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v3, a2);
  }

  v4 = *(this + 4);
  *(this + 4) = 0;
  if (v4)
  {
  }

  v5 = *(this + 3);
  *(this + 3) = 0;
  if (v5)
  {
  }

  v6 = *(this + 2);
  *(this + 2) = 0;
  if (v6)
  {
    CFRelease(*(v6 + 8));
  }

  v7 = *(this + 1);
  *(this + 1) = 0;
  if (v7 && atomic_fetch_add(v7, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v7);
    WTF::fastFree(v7, a2);
  }

  return WTF::fastFree(this, a2);
}

void WTF::Detail::CallableWrapper<WebKit::WebPageProxy::beginSafeBrowsingCheck(WTF::URL const&,API::Navigation &,BOOL)::$_0::operator()(SSBLookupResult *,NSError *)::{lambda(void)#1},void>::call(uint64_t a1)
{
  v30 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 8);
  if (v1)
  {
    v2 = *(v1 + 8);
    if (v2)
    {
      CFRetain(*(v2 - 8));
      API::Navigation::setSafeBrowsingCheckOngoing(*(a1 + 16), *(a1 + 88), 0);
      if (!*(a1 + 32))
      {
        v27 = 0u;
        v28 = 0u;
        v25 = 0u;
        v26 = 0u;
        v4 = [*(a1 + 24) serviceLookupResults];
        v6 = [v4 countByEnumeratingWithState:&v25 objects:v29 count:16];
        if (v6)
        {
          v7 = *v26;
          while (2)
          {
            for (i = 0; i != v6; ++i)
            {
              if (*v26 != v7)
              {
                objc_enumerationMutation(v4);
              }

              v9 = *(*(&v25 + 1) + 8 * i);
              if (([v9 isPhishing] & 1) != 0 || (objc_msgSend(v9, "isMalware") & 1) != 0 || objc_msgSend(v9, "isUnwantedSoftware"))
              {
                v10 = *(a1 + 16);
                v11 = *(a1 + 40);
                if (v9)
                {
                  v12 = v9;
                }

                v23 = v9;
                v24 = 0;
                v13 = WTF::fastMalloc(0x60);
                WebKit::BrowsingWarning::BrowsingWarning(v13, a1 + 48, v11, &v23);
                v14 = *(v10 + 3888);
                *(v10 + 3888) = v13;
                if (v14)
                {
                  WTF::RefCounted<WebKit::BrowsingWarning>::deref(v14, v5);
                }

                if (!v24)
                {
                  v15 = v23;
                  v23 = 0;
                  if (v15)
                  {
                  }
                }

                goto LABEL_24;
              }
            }

            v6 = [v4 countByEnumeratingWithState:&v25 objects:v29 count:16];
            if (v6)
            {
              continue;
            }

            break;
          }
        }

LABEL_24:
        v16 = *(a1 + 16);
        v17 = *(v16 + 3896);
        if (!v17 || !*(v17 - 12))
        {
          v18 = *(v16 + 3888);
          if (v18)
          {
            ++*v18;
            v19 = *(v16 + 3856);
            WTF::RefCounted<WebKit::BrowsingWarning>::deref(v18, v5);
            if ((v19 & 0x10) != 0)
            {
              v20 = *(*(a1 + 16) + 3888);
              if (v20)
              {
                ++*v20;
              }

              v23 = v20;
              WebKit::WebPageProxy::showBrowsingWarning(v2 - 16, &v23);
              v22 = v23;
              v23 = 0;
              if (v22)
              {
                WTF::RefCounted<WebKit::BrowsingWarning>::deref(v22, v21);
              }
            }
          }
        }
      }

      CFRelease(*(v2 - 8));
    }
  }
}

uint64_t std::__function::__value_func<void ()(std::function<void ()(BOOL)>)>::operator=[abi:sn200100](uint64_t a1, uint64_t a2)
{
  std::__function::__value_func<void ()(std::function<void ()(BOOL)>)>::operator=[abi:sn200100](a1);
  v4 = *(a2 + 24);
  if (v4)
  {
    if (v4 == a2)
    {
      *(a1 + 24) = a1;
      (*(**(a2 + 24) + 24))(*(a2 + 24), a1);
    }

    else
    {
      *(a1 + 24) = v4;
      *(a2 + 24) = 0;
    }
  }

  else
  {
    *(a1 + 24) = 0;
  }

  return a1;
}

uint64_t std::__function::__value_func<void ()(std::function<void ()(BOOL)>)>::operator=[abi:sn200100](uint64_t a1)
{
  v2 = *(a1 + 24);
  *(a1 + 24) = 0;
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

void std::__optional_storage_base<WTF::URL,false>::__assign_from[abi:sn200100]<std::__optional_move_assign_base<WTF::URL,false>>(uint64_t a1, unsigned __int8 *a2)
{
  if (*(a1 + 40) == a2[40])
  {
    if (*(a1 + 40))
    {

      WTF::URL::operator=(a1, a2);
    }
  }

  else if (*(a1 + 40))
  {
    v3 = *a1;
    *a1 = 0;
    if (v3)
    {
      if (atomic_fetch_add_explicit(v3, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v3, a2);
      }
    }

    *(a1 + 40) = 0;
  }

  else
  {
    WTF::URL::URL(a1, a2);
    *(a1 + 40) = 1;
  }
}

WebCore::ContentFilterUnblockHandler *WebCore::ContentFilterUnblockHandler::ContentFilterUnblockHandler(WebCore::ContentFilterUnblockHandler *this, const WebCore::ContentFilterUnblockHandler *a2)
{
  v4 = *a2;
  if (*a2)
  {
    atomic_fetch_add_explicit(v4, 2u, memory_order_relaxed);
  }

  *this = v4;
  v5 = *(a2 + 1);
  if (v5)
  {
    atomic_fetch_add_explicit(v5, 2u, memory_order_relaxed);
  }

  *(this + 1) = v5;
  v6 = *(a2 + 2);
  *(this + 1) = *(a2 + 1);
  *(this + 2) = v6;
  std::__function::__value_func<void ()(std::function<void ()(BOOL)>)>::__value_func[abi:sn200100](this + 48, a2 + 48);
  *(this + 80) = 0;
  *(this + 120) = 0;
  if (*(a2 + 120) == 1)
  {
    v7 = *(a2 + 10);
    if (v7)
    {
      atomic_fetch_add_explicit(v7, 2u, memory_order_relaxed);
    }

    *(this + 10) = v7;
    v8 = *(a2 + 88);
    *(this + 104) = *(a2 + 104);
    *(this + 88) = v8;
    *(this + 120) = 1;
  }

  v9 = *(a2 + 35);
  *(this + 16) = 0;
  *(this + 17) = 0;
  *(this + 35) = v9;
  if (v9)
  {
    v10 = WTF::fastMalloc(v9);
    *(this + 34) = v9;
    *(this + 16) = v10;
    memcpy(v10, *(a2 + 16), *(a2 + 35));
  }

  v11 = *(a2 + 18);
  *(this + 18) = v11;
  if (v11)
  {
    v12 = v11;
  }

  *(this + 152) = *(a2 + 152);
  return this;
}

void sub_19DCE5A50(_Unwind_Exception *a1, void *a2)
{
  v5 = *v3;
  if (*v3)
  {
    *(v2 + 128) = 0;
    *(v2 + 136) = 0;
    WTF::fastFree(v5, a2);
  }

  if (*(v2 + 120) == 1)
  {
    v6 = *(v2 + 80);
    *(v2 + 80) = 0;
    if (v6)
    {
      if (atomic_fetch_add_explicit(v6, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v6, a2);
      }
    }
  }

  std::__function::__value_func<void ()(std::function<void ()(BOOL)>)>::~__value_func[abi:sn200100](v2 + 48);
  v8 = *(v2 + 8);
  *(v2 + 8) = 0;
  if (v8 && atomic_fetch_add_explicit(v8, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v8, v7);
  }

  v9 = *v2;
  *v2 = 0;
  if (v9)
  {
    if (atomic_fetch_add_explicit(v9, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v9, v7);
    }
  }

  _Unwind_Resume(a1);
}

WebCore::LocalCurrentGraphicsContext *WebCore::LocalCurrentGraphicsContext::LocalCurrentGraphicsContext(WebCore::LocalCurrentGraphicsContext *this, WebCore::GraphicsContext *a2)
{
  *this = a2;
  *(this + 8) = 1;
  (*(*a2 + 104))(a2, 1);
  v4 = (*(*a2 + 24))(a2);
  WebCore::LocalCurrentContextSaver::LocalCurrentContextSaver((this + 16), v4);
  return this;
}

void sub_19DCE5B98(_Unwind_Exception *exception_object)
{
  if (v1[8] == 1)
  {
    (*(**v1 + 112))(*v1, 1);
  }

  _Unwind_Resume(exception_object);
}

void WebCore::LocalCurrentGraphicsContext::~LocalCurrentGraphicsContext(WebCore::LocalCurrentGraphicsContext *this)
{
  WebCore::LocalCurrentContextSaver::~LocalCurrentContextSaver((this + 16));
  if (*(this + 8) == 1)
  {
    (*(**this + 112))(*this, 1);
  }
}

uint64_t WTF::HashTable<WTF::UUID,WTF::KeyValuePair<WTF::UUID,WTF::CompletionHandler<void ()(WebCore::TextAnimationRunMode)>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::UUID,WTF::CompletionHandler<void ()(WebCore::TextAnimationRunMode)>>>,WTF::DefaultHash<WTF::UUID>,WTF::HashMap<WTF::UUID,WTF::CompletionHandler<void ()(WebCore::TextAnimationRunMode)>,WTF::DefaultHash<WTF::UUID>,WTF::HashTraits<WTF::UUID>,WTF::HashTraits<WTF::CompletionHandler<void ()(WebCore::TextAnimationRunMode)>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::UUID>,WTF::FastMalloc>::deallocateTable(uint64_t a1, void *a2)
{
  v3 = *(a1 - 4);
  if (v3)
  {
    v4 = (a1 + 16);
    do
    {
      if (*(v4 - 2) ^ 1 | *(v4 - 1))
      {
        v5 = *v4;
        *v4 = 0;
        if (v5)
        {
          (*(*v5 + 8))(v5);
        }
      }

      v4 += 4;
      --v3;
    }

    while (v3);
  }

  return WTF::fastFree((a1 - 16), a2);
}

WebCore::PlatformSpeechSynthesisUtterance *WTF::RefCounted<WebCore::PlatformSpeechSynthesisUtterance>::deref(WebCore::PlatformSpeechSynthesisUtterance *result, WTF::StringImpl *a2)
{
  if (*result == 1)
  {
    WebCore::PlatformSpeechSynthesisUtterance::~PlatformSpeechSynthesisUtterance(result, a2);

    return WTF::fastFree(v3, v4);
  }

  else
  {
    --*result;
  }

  return result;
}

void WebCore::PlatformSpeechSynthesisUtterance::~PlatformSpeechSynthesisUtterance(WebCore::PlatformSpeechSynthesisUtterance *this, WTF::StringImpl *a2)
{
  v3 = *(this + 8);
  *(this + 8) = 0;
  if (v3)
  {
  }

  v4 = *(this + 4);
  *(this + 4) = 0;
  if (v4)
  {
    WTF::RefCounted<WebCore::PlatformSpeechSynthesisVoice>::deref(v4, a2);
  }

  v5 = *(this + 3);
  *(this + 3) = 0;
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
  if (v7 && atomic_fetch_add(v7, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v7);
    WTF::fastFree(v7, a2);
  }

  if (*this != 1)
  {
    __break(0xC471u);
  }
}

uint64_t WTF::RefCounted<WebCore::PlatformSpeechSynthesisVoice>::deref(uint64_t this, WTF::StringImpl *a2)
{
  v2 = this;
  if (*this == 1)
  {
    v3 = *(this + 24);
    *(v2 + 3) = 0;
    if (v3 && atomic_fetch_add_explicit(v3, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v3, a2);
    }

    v4 = *(v2 + 2);
    *(v2 + 2) = 0;
    if (v4 && atomic_fetch_add_explicit(v4, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v4, a2);
    }

    v5 = *(v2 + 1);
    *(v2 + 1) = 0;
    if (v5 && atomic_fetch_add_explicit(v5, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v5, a2);
    }

    if (*v2 == 1)
    {

      return WTF::fastFree(v2, a2);
    }

    else
    {
      this = 191;
      __break(0xC471u);
    }
  }

  else
  {
    --*this;
  }

  return this;
}

uint64_t WTF::HashTable<WTF::ObjectIdentifierGeneric<WebCore::SleepDisablerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::SleepDisablerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,std::unique_ptr<WebCore::SleepDisabler>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::SleepDisablerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,std::unique_ptr<WebCore::SleepDisabler>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::SleepDisablerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::SleepDisablerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,std::unique_ptr<WebCore::SleepDisabler>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::SleepDisablerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::SleepDisablerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<std::unique_ptr<WebCore::SleepDisabler>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::SleepDisablerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::deallocateTable(uint64_t a1, void *a2)
{
  v3 = *(a1 - 4);
  if (v3)
  {
    v4 = (a1 + 8);
    do
    {
      if (*(v4 - 1) != -1)
      {
        std::unique_ptr<WebCore::SleepDisabler>::reset[abi:sn200100](v4, 0);
      }

      v4 += 2;
      --v3;
    }

    while (v3);
  }

  return WTF::fastFree((a1 - 16), a2);
}

WebCore::SleepDisabler *std::unique_ptr<WebCore::SleepDisabler>::reset[abi:sn200100](WebCore::SleepDisabler **a1, WebCore::SleepDisabler *a2)
{
  result = *a1;
  *a1 = a2;
  if (result)
  {
    WebCore::SleepDisabler::~SleepDisabler(result);

    return bmalloc::api::tzoneFree(v4, v5);
  }

  return result;
}

uint64_t WTF::HashTable<WTF::ObjectIdentifierGeneric<WebKit::GeolocationIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::GeolocationIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::RefPtr<WebKit::GeolocationPermissionRequestProxy,WTF::RawPtrTraits<WebKit::GeolocationPermissionRequestProxy>,WTF::DefaultRefDerefTraits<WebKit::GeolocationPermissionRequestProxy>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::GeolocationIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::RefPtr<WebKit::GeolocationPermissionRequestProxy,WTF::RawPtrTraits<WebKit::GeolocationPermissionRequestProxy>,WTF::DefaultRefDerefTraits<WebKit::GeolocationPermissionRequestProxy>>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::GeolocationIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::GeolocationIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::RefPtr<WebKit::GeolocationPermissionRequestProxy,WTF::RawPtrTraits<WebKit::GeolocationPermissionRequestProxy>,WTF::DefaultRefDerefTraits<WebKit::GeolocationPermissionRequestProxy>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::GeolocationIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::GeolocationIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::RefPtr<WebKit::GeolocationPermissionRequestProxy,WTF::RawPtrTraits<WebKit::GeolocationPermissionRequestProxy>,WTF::DefaultRefDerefTraits<WebKit::GeolocationPermissionRequestProxy>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::GeolocationIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::deallocateTable(uint64_t a1, void *a2)
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
          WTF::RefCounted<WebKit::GeolocationPermissionRequestProxy>::deref(v5, a2);
        }
      }

      v4 += 2;
      --v3;
    }

    while (v3);
  }

  return WTF::fastFree((a1 - 16), a2);
}

uint64_t WTF::RefCounted<WebKit::GeolocationPermissionRequestProxy>::deref(uint64_t this, void *a2)
{
  v2 = this;
  if (*this == 1)
  {
    v3 = *(this + 24);
    *(v2 + 3) = 0;
    if (v3 && atomic_fetch_add(v3, 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, v3);
      WTF::fastFree(v3, a2);
    }

    v4 = *(v2 + 1);
    *(v2 + 1) = 0;
    if (v4 && atomic_fetch_add(v4, 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, v4);
      WTF::fastFree(v4, a2);
    }

    if (*v2 == 1)
    {

      return WTF::fastFree(v2, a2);
    }

    else
    {
      this = 191;
      __break(0xC471u);
    }
  }

  else
  {
    --*this;
  }

  return this;
}

void *WTF::Detail::CallableWrapper<WebKit::WebPageProxy::scheduleActivityStateUpdate(void)::$_0::operator() const(void)::{lambda(void)#1},void>::~CallableWrapper(void *a1, void *a2)
{
  v3 = a1[1];
  *a1 = &unk_1F1103B90;
  a1[1] = 0;
  if (v3 && atomic_fetch_add(v3, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v3);
    WTF::fastFree(v3, a2);
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WebKit::WebPageProxy::scheduleActivityStateUpdate(void)::$_0::operator() const(void)::{lambda(void)#1},void>::~CallableWrapper(WTF *this, void *a2)
{
  v3 = *(this + 1);
  *this = &unk_1F1103B90;
  *(this + 1) = 0;
  if (v3 && atomic_fetch_add(v3, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v3);
    WTF::fastFree(v3, a2);
  }

  return WTF::fastFree(this, a2);
}

void WTF::Detail::CallableWrapper<WebKit::WebPageProxy::scheduleActivityStateUpdate(void)::$_0::operator() const(void)::{lambda(void)#1},void>::call(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1)
  {
    v2 = *(v1 + 8);
    if (v2)
    {
      CFRetain(*(v2 - 8));
      WebKit::WebPageProxy::dispatchActivityStateChange((v2 - 16));
      v3 = *(v2 - 8);

      CFRelease(v3);
    }
  }
}

Class initSYNotesActivationObserver(void)
{
  if ((byte_1EB01D4D1 & 1) == 0)
  {
    *algn_1EB01D4E8 = dlopen("/System/Library/PrivateFrameworks/Synapse.framework/Synapse", 2);
    byte_1EB01D4D1 = 1;
  }

  result = objc_getClass("SYNotesActivationObserver");
  qword_1EB01D4E0 = result;
  getSYNotesActivationObserverClass = SYNotesActivationObserverFunction;
  return result;
}

Class initAMSEngagementRequest(void)
{
  if ((byte_1EB01D4D3 & 1) == 0)
  {
    unk_1EB01D500 = dlopen("/System/Library/PrivateFrameworks/AppleMediaServices.framework/AppleMediaServices", 2);
    byte_1EB01D4D3 = 1;
  }

  result = objc_getClass("AMSEngagementRequest");
  qword_1EB01D4F8 = result;
  off_1EE6358D8 = AMSEngagementRequestFunction;
  return result;
}

Class initAMSUIEngagementTask(void)
{
  if ((byte_1EB01D4D2 & 1) == 0)
  {
    qword_1EB01D4F0 = dlopen("/System/Library/PrivateFrameworks/AppleMediaServicesUI.framework/AppleMediaServicesUI", 2);
    byte_1EB01D4D2 = 1;
  }

  result = objc_getClass("AMSUIEngagementTask");
  qword_1EB01D508 = result;
  _MergedGlobals_303 = AMSUIEngagementTaskFunction;
  return result;
}

uint64_t WTF::BlockPtr<void ()(AMSEngagementResult *,NSError *)>::fromCallable<WebKit::WebPageProxy::startApplePayAMSUISession(WTF::URL &&,WebCore::ApplePayAMSUIRequest &&,WTF::CompletionHandler<void ()(std::optional<BOOL> &&)> &&)::$_0>(WebKit::WebPageProxy::startApplePayAMSUISession(WTF::URL &&,WebCore::ApplePayAMSUIRequest &&,WTF::CompletionHandler<void ()(std::optional<BOOL> &&)> &&)::$_0)::{lambda(void const*)#1}::__invoke(uint64_t a1)
{
  result = *(a1 + 32);
  *(a1 + 32) = 0;
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t WTF::RefCounted<WebKit::MediaCapability>::deref(uint64_t result, WTF::StringImpl *a2)
{
  v2 = result;
  if (*result == 1)
  {
    v3 = *(result + 48);
    *(result + 48) = 0;
    if (v3)
    {
    }

    v4 = *(v2 + 8);
    *(v2 + 8) = 0;
    if (v4 && atomic_fetch_add_explicit(v4, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v4, a2);
    }

    if (*v2 == 1)
    {
      WTF::WeakPtrFactory<WebPushD::PushServiceConnection,WTF::DefaultWeakPtrImpl>::~WeakPtrFactory((v2 - 8), a2);
      v6 = *(v2 - 16);
      *(v2 - 24) = &unk_1F10E6398;
      *(v2 - 16) = 0;
      if (v6)
      {
      }

      return WTF::fastFree((v2 - 24), v5);
    }

    else
    {
      result = 191;
      __break(0xC471u);
    }
  }

  else
  {
    --*result;
  }

  return result;
}

_DWORD *WTF::HashTable<WTF::String,WTF::KeyValuePair<WTF::String,objc_class  {objcproto24WKWebViewContentProvider}*>,WTF::KeyValuePairKeyExtractor<objc_class  {objcproto24WKWebViewContentProvider}*>,WTF::ASCIICaseInsensitiveHash,WTF::HashMap<WTF::String,objc_class  {objcproto24WKWebViewContentProvider},WTF::KeyValuePairKeyExtractor<objc_class  {objcproto24WKWebViewContentProvider}*>,WTF::HashTraits<WTF::String>,WTF::HashMap<objc_class  {objcproto24WKWebViewContentProvider}>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits,WTF::ShouldValidateKey>::expand(uint64_t *a1)
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
  result = WTF::fastZeroedMalloc((16 * v5 + 16));
  *a1 = (result + 4);
  result[2] = v5 - 1;
  result[3] = v5;
  *result = 0;
  result[1] = v4;
  if (v3)
  {
    for (i = 0; i != v3; ++i)
    {
      v9 = (v2 + 16 * i);
      v10 = *v9;
      if (*v9 != -1)
      {
        if (v10)
        {
          v11 = *a1;
          if (*a1)
          {
            v12 = *(v11 - 8);
          }

          else
          {
            v12 = 0;
          }

          v13 = WTF::ASCIICaseInsensitiveHash::hash(v10, v7);
          v14 = 0;
          do
          {
            v15 = v13 & v12;
            v13 = ++v14 + v15;
          }

          while (*(v11 + 16 * v15));
          v16 = *v9;
          *v9 = 0;
          *(v11 + 16 * v15) = v16;
          v17 = *v9;
          *v9 = 0;
          if (v17 && atomic_fetch_add_explicit(v17, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v17, v7);
          }
        }

        else
        {
          *v9 = 0;
        }
      }
    }
  }

  else if (!v2)
  {
    return result;
  }

  return WTF::fastFree((v2 - 16), v7);
}

void *WTF::Detail::CallableWrapper<WTF::CompletionHandler<void ()(IPC::Connection*,IPC::Decoder *)> IPC::Connection::makeAsyncReplyCompletionHandler<Messages::WebPage::AddDictationAlternative,WebKit::WebPageProxy::addDictationAlternative(WebCore::TextAlternativeWithRange &&)::$_0>(WebKit::WebPageProxy::addDictationAlternative(WebCore::TextAlternativeWithRange &&)::$_0 &&,WTF::ThreadLikeAssertion)::{lambda(WTF::CompletionHandler,IPC::Decoder)#1},void,WTF::CompletionHandler,IPC::Decoder>::~CallableWrapper(void *a1, void *a2)
{
  *a1 = &unk_1F1103BD8;
  v3 = a1[3];
  a1[3] = 0;
  if (v3 && atomic_fetch_add(v3, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v3);
    WTF::fastFree(v3, a2);
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WTF::CompletionHandler<void ()(IPC::Connection*,IPC::Decoder *)> IPC::Connection::makeAsyncReplyCompletionHandler<Messages::WebPage::AddDictationAlternative,WebKit::WebPageProxy::addDictationAlternative(WebCore::TextAlternativeWithRange &&)::$_0>(WebKit::WebPageProxy::addDictationAlternative(WebCore::TextAlternativeWithRange &&)::$_0 &&,WTF::ThreadLikeAssertion)::{lambda(WTF::CompletionHandler,IPC::Decoder)#1},void,WTF::CompletionHandler,IPC::Decoder>::~CallableWrapper(WTF *this, void *a2)
{
  *this = &unk_1F1103BD8;
  v3 = *(this + 3);
  *(this + 3) = 0;
  if (v3 && atomic_fetch_add(v3, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v3);
    WTF::fastFree(v3, a2);
  }

  return WTF::fastFree(this, a2);
}

void WTF::Detail::CallableWrapper<WTF::CompletionHandler<void ()(IPC::Connection*,IPC::Decoder *)> IPC::Connection::makeAsyncReplyCompletionHandler<Messages::WebPage::AddDictationAlternative,WebKit::WebPageProxy::addDictationAlternative(WebCore::TextAlternativeWithRange &&)::$_0>(WebKit::WebPageProxy::addDictationAlternative(WebCore::TextAlternativeWithRange &&)::$_0 &&,WTF::ThreadLikeAssertion)::{lambda(WTF::CompletionHandler,IPC::Decoder)#1},void,WTF::CompletionHandler,IPC::Decoder>::call(uint64_t a1, uint64_t a2, IPC::Decoder *a3)
{
  if (!a3 || !*a3 || (v4 = IPC::Decoder::decode<std::tuple<BOOL>>(a3), (v4 & 0x100) == 0))
  {
    v5 = *(a1 + 24);
    if (!v5)
    {
      return;
    }

    v6 = *(v5 + 8);
    if (!v6)
    {
      return;
    }

    CFRetain(*(v6 - 8));
    if (*(a1 + 16))
    {
      v7 = v6 - 16;
LABEL_8:
      WebKit::WebPageProxy::removeDictationAlternatives(v7, *(a1 + 8));
      goto LABEL_9;
    }

LABEL_16:
    __break(1u);
    return;
  }

  v9 = *(a1 + 24);
  if (!v9)
  {
    return;
  }

  v10 = *(v9 + 8);
  if (!v10)
  {
    return;
  }

  v11 = v4;
  v7 = v10 - 16;
  CFRetain(*(v10 - 8));
  if ((v11 & 1) == 0)
  {
    if (*(a1 + 16))
    {
      goto LABEL_8;
    }

    goto LABEL_16;
  }

LABEL_9:
  v8 = *(v7 + 8);

  CFRelease(v8);
}

uint64_t WebKit::AuxiliaryProcessProxy::sendWithAsyncReply<Messages::WebPage::DictationAlternativesAtSelection,WTF::CompletionHandler<void ()(WTF::Vector<WTF::ObjectIdentifierGeneric<WebCore::DictationContextType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&)>>(uint64_t a1, void *a2, uint64_t *a3, uint64_t a4, char a5, int a6)
{
  v11 = IPC::Encoder::operator new(0x238, a2);
  *v11 = 2491;
  *(v11 + 2) = 0;
  *(v11 + 3) = 0;
  *(v11 + 1) = a4;
  *(v11 + 68) = 0;
  *(v11 + 70) = 0;
  *(v11 + 69) = 0;
  IPC::Encoder::encodeHeader(v11);
  v24 = v11;
  v12 = *a3;
  *a3 = 0;
  v13 = WTF::fastMalloc(0x10);
  *v13 = &unk_1F1103C00;
  v13[1] = v12;
  if (WTF::ObjectIdentifierGeneric<IPC::AsyncReplyIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>::m_generationProtected == 1)
  {
    result = 141;
    __break(0xC471u);
  }

  else
  {
    IdentifierInternal = WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>::generateIdentifierInternal();
    v22[0] = v13;
    v22[1] = IdentifierInternal;
    v23 = 1;
    v16 = WebKit::AuxiliaryProcessProxy::sendMessage(a1, &v24, a5, v22, a6);
    if (v23 == 1)
    {
      v17 = v22[0];
      v22[0] = 0;
      if (v17)
      {
        (*(*v17 + 8))(v17);
      }
    }

    v18 = v24;
    v24 = 0;
    if (v18)
    {
      IPC::Encoder::~Encoder(v18, v15);
      bmalloc::api::tzoneFree(v20, v21);
    }

    if (v16)
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

void sub_19DCE6964(_Unwind_Exception *exception_object, void *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, IPC::Encoder *a12)
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

void *WTF::Detail::CallableWrapper<WTF::CompletionHandler<void ()(IPC::Connection*,IPC::Decoder *)> IPC::Connection::makeAsyncReplyCompletionHandler<Messages::WebPage::DictationAlternativesAtSelection,WTF::CompletionHandler<void ()(WTF::Vector<WTF::ObjectIdentifierGeneric<WebCore::DictationContextType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&)>>(WTF::CompletionHandler<void ()(WTF::Vector<WTF::ObjectIdentifierGeneric<WebCore::DictationContextType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&)> &&,WTF::ThreadLikeAssertion)::{lambda(WTF::CompletionHandler<void ()(WTF::Vector<WTF::ObjectIdentifierGeneric<WebCore::DictationContextType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&)>,IPC::Decoder)#1},void,WTF::CompletionHandler<void ()(WTF::Vector<WTF::ObjectIdentifierGeneric<WebCore::DictationContextType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&)>,IPC::Decoder>::~CallableWrapper(void *a1)
{
  v2 = a1[1];
  *a1 = &unk_1F1103C00;
  a1[1] = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WTF::CompletionHandler<void ()(IPC::Connection*,IPC::Decoder *)> IPC::Connection::makeAsyncReplyCompletionHandler<Messages::WebPage::DictationAlternativesAtSelection,WTF::CompletionHandler<void ()(WTF::Vector<WTF::ObjectIdentifierGeneric<WebCore::DictationContextType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&)>>(WTF::CompletionHandler<void ()(WTF::Vector<WTF::ObjectIdentifierGeneric<WebCore::DictationContextType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&)> &&,WTF::ThreadLikeAssertion)::{lambda(WTF::CompletionHandler<void ()(WTF::Vector<WTF::ObjectIdentifierGeneric<WebCore::DictationContextType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&)>,IPC::Decoder)#1},void,WTF::CompletionHandler<void ()(WTF::Vector<WTF::ObjectIdentifierGeneric<WebCore::DictationContextType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&)>,IPC::Decoder>::~CallableWrapper(WTF *this, void *a2)
{
  v3 = *(this + 1);
  *this = &unk_1F1103C00;
  *(this + 1) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  return WTF::fastFree(this, a2);
}

WTF *WTF::Detail::CallableWrapper<WTF::CompletionHandler<void ()(IPC::Connection*,IPC::Decoder *)> IPC::Connection::makeAsyncReplyCompletionHandler<Messages::WebPage::DictationAlternativesAtSelection,WTF::CompletionHandler<void ()(WTF::Vector<WTF::ObjectIdentifierGeneric<WebCore::DictationContextType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&)>>(WTF::CompletionHandler<void ()(WTF::Vector<WTF::ObjectIdentifierGeneric<WebCore::DictationContextType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&)> &&,WTF::ThreadLikeAssertion)::{lambda(WTF::CompletionHandler<void ()(WTF::Vector<WTF::ObjectIdentifierGeneric<WebCore::DictationContextType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&)>,IPC::Decoder)#1},void,WTF::CompletionHandler<void ()(WTF::Vector<WTF::ObjectIdentifierGeneric<WebCore::DictationContextType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&)>,IPC::Decoder>::call(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  if (a3 && *a3)
  {
    IPC::ArgumentCoder<std::tuple<WTF::Vector<WTF::ObjectIdentifierGeneric<WebCore::DictationContextType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,void>::decode<IPC::Decoder>(a3, &v11);
    if (v13 & 1) != 0 || (v8 = *a3, v9 = a3[1], *a3 = 0, a3[1] = 0, (v10 = a3[3]) != 0) && v9 && ((*(*v10 + 16))(v10, v8), (v13))
    {
      result = WTF::CompletionHandler<void ()(WTF::Vector<WTF::ObjectIdentifierGeneric<WebCore::DictationContextType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&)>::operator()((a1 + 8));
      if (v13)
      {
        result = v11;
        if (v11)
        {
          v11 = 0;
          v12 = 0;
          return WTF::fastFree(result, v6);
        }
      }
    }

    else
    {
      return IPC::Connection::cancelReply<Messages::WebPage::DictationAlternativesAtSelection,WTF::CompletionHandler<void ()(WTF::Vector<WTF::ObjectIdentifierGeneric<WebCore::DictationContextType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&)>>((a1 + 8));
    }
  }

  else
  {
    v7 = (a1 + 8);

    return IPC::Connection::cancelReply<Messages::WebPage::DictationAlternativesAtSelection,WTF::CompletionHandler<void ()(WTF::Vector<WTF::ObjectIdentifierGeneric<WebCore::DictationContextType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&)>>(v7);
  }

  return result;
}

void sub_19DCE6BF0(_Unwind_Exception *exception_object, void *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, WTF *a10, int a11, int a12, char a13)
{
  if (a13 == 1)
  {
    if (a10)
    {
      WTF::fastFree(a10, a2);
    }
  }

  _Unwind_Resume(exception_object);
}

WTF *IPC::Connection::cancelReply<Messages::WebPage::DictationAlternativesAtSelection,WTF::CompletionHandler<void ()(WTF::Vector<WTF::ObjectIdentifierGeneric<WebCore::DictationContextType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&)>>(uint64_t *a1)
{
  v8 = 0;
  v9 = 0;
  std::__tuple_leaf<0ul,WTF::Vector<WTF::ObjectIdentifierGeneric<WebCore::DictationContextType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,false>::__tuple_leaf[abi:sn200100]<WTF::Vector<WTF::ObjectIdentifierGeneric<WebCore::DictationContextType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,0>(&v6, &v8);
  v3 = v8;
  if (v8)
  {
    v8 = 0;
    LODWORD(v9) = 0;
    WTF::fastFree(v3, v2);
  }

  WTF::CompletionHandler<void ()(WTF::Vector<WTF::ObjectIdentifierGeneric<WebCore::DictationContextType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&)>::operator()(a1);
  result = v6;
  if (v6)
  {
    v6 = 0;
    v7 = 0;
    return WTF::fastFree(result, v4);
  }

  return result;
}

void sub_19DCE6C98(_Unwind_Exception *exception_object, void *a2, int a3, int a4, int a5, int a6, int a7, int a8, WTF *a9, int a10, WTF *a11, int a12)
{
  if (a9)
  {
    WTF::fastFree(a9, a2);
  }

  _Unwind_Resume(exception_object);
}

void *std::__tuple_leaf<0ul,WTF::Vector<WTF::ObjectIdentifierGeneric<WebCore::DictationContextType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,false>::__tuple_leaf[abi:sn200100]<WTF::Vector<WTF::ObjectIdentifierGeneric<WebCore::DictationContextType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,0>(void *a1, _DWORD *a2)
{
  *a1 = 0;
  a1[1] = 0;
  WTF::VectorBuffer<unsigned short,0ul,WTF::FastMalloc>::adopt(a1, a2);
  return a1;
}

void sub_19DCE6D00(_Unwind_Exception *exception_object, void *a2)
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

uint64_t WebKit::AuxiliaryProcessProxy::send<Messages::WebPage::ClearDictationAlternatives>(uint64_t a1, void *a2, uint64_t a3, char a4)
{
  v8 = IPC::Encoder::operator new(0x238, a2);
  *v8 = 2461;
  *(v8 + 2) = 0;
  *(v8 + 3) = 0;
  *(v8 + 1) = a3;
  *(v8 + 68) = 0;
  *(v8 + 70) = 0;
  *(v8 + 69) = 0;
  IPC::Encoder::encodeHeader(v8);
  v18 = v8;
  IPC::VectorArgumentCoder<false,WTF::ObjectIdentifierGeneric<WebCore::DictationContextType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul>::encode<IPC::Encoder,WTF::Vector<WTF::ObjectIdentifierGeneric<WebCore::DictationContextType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> const&>(v8, *a2);
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

void sub_19DCE6E24(_Unwind_Exception *exception_object, void *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, IPC::Encoder *a12)
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

_DWORD *WTF::RefCounted<WebKit::WebPageProxyFrameLoadStateObserver>::deref(_DWORD *result, void *a2)
{
  if (*result == 1)
  {
    WebKit::WebPageProxyFrameLoadStateObserver::~WebPageProxyFrameLoadStateObserver((result - 4), a2);

    return bmalloc::api::tzoneFree(v3, v4);
  }

  else
  {
    --*result;
  }

  return result;
}

void *WTF::Detail::CallableWrapper<WebKit::WebPageProxy::fullscreenVideoTextRecognitionTimerFired(void)::$_0,void,std::optional<WebCore::ShareableBitmapHandle> &&>::~CallableWrapper(void *a1, void *a2)
{
  *a1 = &unk_1F1103C28;
  v3 = a1[3];
  a1[3] = 0;
  if (v3 && atomic_fetch_add(v3, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v3);
    WTF::fastFree(v3, a2);
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WebKit::WebPageProxy::fullscreenVideoTextRecognitionTimerFired(void)::$_0,void,std::optional<WebCore::ShareableBitmapHandle> &&>::~CallableWrapper(WTF *this, void *a2)
{
  *this = &unk_1F1103C28;
  v3 = *(this + 3);
  *(this + 3) = 0;
  if (v3 && atomic_fetch_add(v3, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v3);
    WTF::fastFree(v3, a2);
  }

  return WTF::fastFree(this, a2);
}

void WTF::Detail::CallableWrapper<WebKit::WebPageProxy::fullscreenVideoTextRecognitionTimerFired(void)::$_0,void,std::optional<WebCore::ShareableBitmapHandle> &&>::call(uint64_t *a1, uint64_t a2)
{
  v2 = a1[3];
  if (v2)
  {
    v3 = *(v2 + 8);
    if (v3)
    {
      CFRetain(*(v3 - 1));
      v6 = v3[2];
      if (*(v6 + 2864) == 1)
      {
        v7 = *(v6 + 2848);
        v8 = *(v6 + 2856);
        if (v7 == a1[1] && v8 == a1[2])
        {
          v10 = v3[64];
          if (v10)
          {
            ++v10[4];
            if (*(a2 + 80) == 1)
            {
              v11 = WebKit::VideoPresentationManagerProxy::playerViewController(v10, a1[1], a1[2]);
              v12 = v11;
              if (v11)
              {
                v13 = v11;
                v14 = v3[5];
                if (v14)
                {
                  v15 = *(v14 + 8);
                  if (v15)
                  {
                    (*(*v15 + 1712))(v15);
                    if ((*(a2 + 80) & 1) == 0)
                    {
                      __break(1u);
                      return;
                    }

                    (*(*v15 + 1288))(v15, a2, v12);
                    (*(*v15 + 1720))(v15);
                  }
                }
              }
            }

            if (v10[4] == 1)
            {
              (*(*v10 + 24))(v10);
            }

            else
            {
              --v10[4];
            }
          }
        }
      }

      v16 = *(v3 - 1);

      CFRelease(v16);
    }
  }
}

void sub_19DCE7174(_Unwind_Exception *a1)
{
  (*(*v3 + 1720))(v3);

  if (v1[4] == 1)
  {
    (*(*v1 + 24))(v1);
  }

  else
  {
    --v1[4];
  }

  CFRelease(*(v4 - 8));
  _Unwind_Resume(a1);
}

uint64_t WebKit::AuxiliaryProcessProxy::sendWithAsyncReply<Messages::WebPage::CreateTextFragmentDirectiveFromSelection,WTF::CompletionHandler<void ()(WTF::URL &&)>>(uint64_t a1, void *a2, uint64_t *a3, uint64_t a4, char a5, int a6)
{
  v11 = IPC::Encoder::operator new(0x238, a2);
  *v11 = 2483;
  *(v11 + 2) = 0;
  *(v11 + 3) = 0;
  *(v11 + 1) = a4;
  *(v11 + 68) = 0;
  *(v11 + 70) = 0;
  *(v11 + 69) = 0;
  IPC::Encoder::encodeHeader(v11);
  v24 = v11;
  v12 = *a3;
  *a3 = 0;
  v13 = WTF::fastMalloc(0x10);
  *v13 = &unk_1F1103C50;
  v13[1] = v12;
  if (WTF::ObjectIdentifierGeneric<IPC::AsyncReplyIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>::m_generationProtected == 1)
  {
    result = 141;
    __break(0xC471u);
  }

  else
  {
    IdentifierInternal = WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>::generateIdentifierInternal();
    v22[0] = v13;
    v22[1] = IdentifierInternal;
    v23 = 1;
    v16 = WebKit::AuxiliaryProcessProxy::sendMessage(a1, &v24, a5, v22, a6);
    if (v23 == 1)
    {
      v17 = v22[0];
      v22[0] = 0;
      if (v17)
      {
        (*(*v17 + 8))(v17);
      }
    }

    v18 = v24;
    v24 = 0;
    if (v18)
    {
      IPC::Encoder::~Encoder(v18, v15);
      bmalloc::api::tzoneFree(v20, v21);
    }

    if (v16)
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

void sub_19DCE7378(_Unwind_Exception *exception_object, void *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, IPC::Encoder *a12)
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

void *WTF::Detail::CallableWrapper<WTF::CompletionHandler<void ()(IPC::Connection*,IPC::Decoder *)> IPC::Connection::makeAsyncReplyCompletionHandler<Messages::WebPage::CreateTextFragmentDirectiveFromSelection,WTF::CompletionHandler<void ()(WTF::URL &&)>>(WTF::CompletionHandler<void ()(WTF::URL &&)> &&,WTF::ThreadLikeAssertion)::{lambda(WTF::CompletionHandler<void ()(WTF::URL &&)>,IPC::Decoder)#1},void,WTF::CompletionHandler<void ()(WTF::URL &&)>,IPC::Decoder>::~CallableWrapper(void *a1)
{
  v2 = a1[1];
  *a1 = &unk_1F1103C50;
  a1[1] = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WTF::CompletionHandler<void ()(IPC::Connection*,IPC::Decoder *)> IPC::Connection::makeAsyncReplyCompletionHandler<Messages::WebPage::CreateTextFragmentDirectiveFromSelection,WTF::CompletionHandler<void ()(WTF::URL &&)>>(WTF::CompletionHandler<void ()(WTF::URL &&)> &&,WTF::ThreadLikeAssertion)::{lambda(WTF::CompletionHandler<void ()(WTF::URL &&)>,IPC::Decoder)#1},void,WTF::CompletionHandler<void ()(WTF::URL &&)>,IPC::Decoder>::~CallableWrapper(WTF *this, void *a2)
{
  v3 = *(this + 1);
  *this = &unk_1F1103C50;
  *(this + 1) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  return WTF::fastFree(this, a2);
}

WTF::StringImpl *WTF::Detail::CallableWrapper<WTF::CompletionHandler<void ()(IPC::Connection*,IPC::Decoder *)> IPC::Connection::makeAsyncReplyCompletionHandler<Messages::WebPage::CreateTextFragmentDirectiveFromSelection,WTF::CompletionHandler<void ()(WTF::URL &&)>>(WTF::CompletionHandler<void ()(WTF::URL &&)> &&,WTF::ThreadLikeAssertion)::{lambda(WTF::CompletionHandler<void ()(WTF::URL &&)>,IPC::Decoder)#1},void,WTF::CompletionHandler<void ()(WTF::URL &&)>,IPC::Decoder>::call(uint64_t a1, uint64_t a2, IPC::Decoder *a3)
{
  if (a3 && *a3)
  {
    IPC::Decoder::decode<std::tuple<WTF::URL>>(a3, &v7);
    if (v8 == 1)
    {
      result = WTF::CompletionHandler<void ()(WTF::URL &&)>::operator()((a1 + 8));
      if (v8)
      {
        result = v7;
        v7 = 0;
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
      return IPC::Connection::cancelReply<Messages::WebPage::CreateTextFragmentDirectiveFromSelection,WTF::CompletionHandler<void ()(WTF::URL &&)>>((a1 + 8));
    }
  }

  else
  {
    v6 = (a1 + 8);

    return IPC::Connection::cancelReply<Messages::WebPage::CreateTextFragmentDirectiveFromSelection,WTF::CompletionHandler<void ()(WTF::URL &&)>>(v6);
  }

  return result;
}

void sub_19DCE75C8(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, WTF::StringImpl *a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14)
{
  if (a14 == 1 && a9 && atomic_fetch_add_explicit(a9, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(a9, a2);
  }

  _Unwind_Resume(exception_object);
}

uint64_t IPC::Connection::cancelReply<Messages::WebPage::CreateTextFragmentDirectiveFromSelection,WTF::CompletionHandler<void ()(WTF::URL &&)>>(uint64_t *a1)
{
  WTF::URL::URL(&v5);
  v4 = v5;
  WTF::CompletionHandler<void ()(WTF::URL &&)>::operator()(a1);
  result = v4;
  if (v4)
  {
    if (atomic_fetch_add_explicit(v4, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      return WTF::StringImpl::destroy(v4, v2);
    }
  }

  return result;
}

void sub_19DCE7670(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, WTF::StringImpl *a9)
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

uint64_t WTF::CompletionHandler<void ()(WTF::URL &&)>::operator()(uint64_t *a1)
{
  v1 = *a1;
  *a1 = 0;
  (*(*v1 + 16))(v1);
  v2 = *(*v1 + 8);

  return v2(v1);
}

uint64_t WebKit::AuxiliaryProcessProxy::sendWithAsyncReply<Messages::WebPage::GetTextFragmentRanges,WTF::CompletionHandler<void ()(WTF::Vector<WebKit::EditingRange,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> const&&)>>(uint64_t a1, void *a2, uint64_t *a3, uint64_t a4, char a5, int a6)
{
  v11 = IPC::Encoder::operator new(0x238, a2);
  *v11 = 2590;
  *(v11 + 2) = 0;
  *(v11 + 3) = 0;
  *(v11 + 1) = a4;
  *(v11 + 68) = 0;
  *(v11 + 70) = 0;
  *(v11 + 69) = 0;
  IPC::Encoder::encodeHeader(v11);
  v24 = v11;
  v12 = *a3;
  *a3 = 0;
  v13 = WTF::fastMalloc(0x10);
  *v13 = &unk_1F1103C78;
  v13[1] = v12;
  if (WTF::ObjectIdentifierGeneric<IPC::AsyncReplyIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>::m_generationProtected == 1)
  {
    result = 141;
    __break(0xC471u);
  }

  else
  {
    IdentifierInternal = WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>::generateIdentifierInternal();
    v22[0] = v13;
    v22[1] = IdentifierInternal;
    v23 = 1;
    v16 = WebKit::AuxiliaryProcessProxy::sendMessage(a1, &v24, a5, v22, a6);
    if (v23 == 1)
    {
      v17 = v22[0];
      v22[0] = 0;
      if (v17)
      {
        (*(*v17 + 8))(v17);
      }
    }

    v18 = v24;
    v24 = 0;
    if (v18)
    {
      IPC::Encoder::~Encoder(v18, v15);
      bmalloc::api::tzoneFree(v20, v21);
    }

    if (v16)
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