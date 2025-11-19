void sub_19DC8F6B0(_Unwind_Exception *a1, void *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, WTF *a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, WTF *a20, void *a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, WTF *a26, WTF::StringImpl *a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, WTF *a38, WTF::StringImpl *a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, void *a44)
{
  if (a15 && atomic_fetch_add(a15, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, a15);
    WTF::fastFree(a15, a2);
  }

  if (a20 && atomic_fetch_add(a20, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, a20);
    WTF::fastFree(a20, a2);
  }

  if (a21)
  {
  }

  if (a44)
  {
  }

  if (a39 && atomic_fetch_add_explicit(a39, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(a39, a2);
  }

  if (a38 && atomic_fetch_add(a38, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, a38);
    WTF::fastFree(a38, a2);
  }

  mpark::detail::move_constructor<mpark::detail::traits<WebCore::SecurityOriginData::Tuple,WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::OpaqueOriginIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,(mpark::detail::Trait)1>::~move_constructor(v46 + 8);
  if (a33)
  {
    (*(*a33 + 8))(a33);
  }

  CFRelease(*(v45 - 8));
  _Unwind_Resume(a1);
}

void ___ZN6WebKit23SystemPreviewController5beginERKN3WTF3URLERKN7WebCore18SecurityOriginDataERKNS5_17SystemPreviewInfoEONS1_17CompletionHandlerIFvvEEE_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    v2 = *(v1 + 8);
    if (v2)
    {
      v3 = *(v2 + 280);
      *(v2 + 280) = 0;
      v4 = _Block_copy(0);
      _Block_release(*(v2 + 280));
      *(v2 + 280) = v4;
      _Block_release(0);
      v3[2](v3, 1);

      _Block_release(v3);
    }
  }
}

uint64_t __copy_helper_block_e8_32c152_ZTSKZN6WebKit23SystemPreviewController5beginERKN3WTF3URLERKN7WebCore18SecurityOriginDataERKNS5_17SystemPreviewInfoEONS1_17CompletionHandlerIFvvEEEE3__2(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 32);
  if (v2)
  {
    atomic_fetch_add(v2, 1u);
  }

  *(result + 32) = v2;
  return result;
}

unsigned int *__destroy_helper_block_e8_32c152_ZTSKZN6WebKit23SystemPreviewController5beginERKN3WTF3URLERKN7WebCore18SecurityOriginDataERKNS5_17SystemPreviewInfoEONS1_17CompletionHandlerIFvvEEEE3__2(uint64_t a1, void *a2)
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

void ___ZN6WebKit23SystemPreviewController5beginERKN3WTF3URLERKN7WebCore18SecurityOriginDataERKNS5_17SystemPreviewInfoEONS1_17CompletionHandlerIFvvEEE_block_invoke_192(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    v2 = *(v1 + 8);
    if (v2)
    {
      v3 = *(v2 + 280);
      *(v2 + 280) = 0;
      v4 = _Block_copy(0);
      _Block_release(*(v2 + 280));
      *(v2 + 280) = v4;
      _Block_release(0);
      v3[2](v3, 0);

      _Block_release(v3);
    }
  }
}

uint64_t __copy_helper_block_e8_32c152_ZTSKZN6WebKit23SystemPreviewController5beginERKN3WTF3URLERKN7WebCore18SecurityOriginDataERKNS5_17SystemPreviewInfoEONS1_17CompletionHandlerIFvvEEEE3__3(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 32);
  if (v2)
  {
    atomic_fetch_add(v2, 1u);
  }

  *(result + 32) = v2;
  return result;
}

unsigned int *__destroy_helper_block_e8_32c152_ZTSKZN6WebKit23SystemPreviewController5beginERKN3WTF3URLERKN7WebCore18SecurityOriginDataERKNS5_17SystemPreviewInfoEONS1_17CompletionHandlerIFvvEEEE3__3(uint64_t a1, void *a2)
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

void WebKit::SystemPreviewController::releaseActivityTokenIfNecessary(WebKit::SystemPreviewController *this)
{
  v7 = *MEMORY[0x1E69E9840];
  v1 = *(this + 33);
  if (v1)
  {
    v3 = qword_1ED641030;
    if (os_log_type_enabled(qword_1ED641030, OS_LOG_TYPE_DEFAULT))
    {
      v5 = 134217984;
      v6 = this;
      _os_log_impl(&dword_19D52D000, v3, OS_LOG_TYPE_DEFAULT, "%p UIProcess is releasing a background assertion because a system preview download completed", &v5, 0xCu);
      v1 = *(this + 33);
      *(this + 33) = 0;
      if (!v1)
      {
        return;
      }
    }

    else
    {
      *(this + 33) = 0;
    }

    WTF::RefCounted<WebKit::ProcessThrottlerActivity>::deref((v1 + 8), v4);
  }
}

void WebKit::SystemPreviewController::triggerSystemPreviewActionWithTargetForTesting(WebKit::SystemPreviewController *this, uint64_t a2, NSString *a3, uint64_t a4)
{
  v15 = *MEMORY[0x1E69E9840];
  MEMORY[0x19EB02040](v13, a3);
  WTF::UUID::parseVersion4();
  v8 = v13[0];
  v13[0] = 0;
  if (v8 && atomic_fetch_add_explicit(v8, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v8, v7);
  }

  v9 = *(this + 2);
  if (v9)
  {
    v10 = *(v9 + 8);
    if (v10)
    {
      CFRetain(*(v10 - 8));
      if (v14)
      {
        *(this + 128) = 1;
        if (a2 == -1 || (*(this + 12) = a2, v11 = v13[2], v12 = *(*(v10 + 336) + 120), *(this + 8) = v13[1], *(this + 9) = v11, *(this + 10) = v12, (a4 - 1) >= 0xFFFFFFFFFFFFFFFELL))
        {
          __break(0xC471u);
          JUMPOUT(0x19DC8FEF8);
        }

        *(this + 6) = a4;
        WebKit::SystemPreviewController::triggerSystemPreviewAction(this);
      }

      CFRelease(*(v10 - 8));
    }
  }
}

void WebKit::UIDelegate::UIClient::~UIClient(WebKit::UIDelegate::UIClient *this, void *a2)
{
  *this = &unk_1F1102320;
  v3 = *(this + 2);
  *(this + 2) = 0;
  if (v3 && atomic_fetch_add(v3, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v3);
    WTF::fastFree(v3, a2);
  }

  WTF::WeakPtrFactory<WebPushD::PushServiceConnection,WTF::DefaultWeakPtrImpl>::~WeakPtrFactory(this + 1, a2);
}

{
  WebKit::UIDelegate::UIClient::~UIClient(this, a2);

  bmalloc::api::tzoneFree(v2, v3);
}

id WebKit::UIDelegate::UIClient::uiDelegatePrivate(WebKit::UIDelegate::UIClient *this)
{
  if (!this)
  {
    return 0;
  }

  v1 = *(this + 1);
  if (!v1)
  {
    return 0;
  }

  WeakRetained = objc_loadWeakRetained((v1 + 16));
  v3 = WeakRetained;
  if (WeakRetained)
  {
  }

  return v3;
}

void WebKit::UIDelegate::UIClient::mouseDidMoveOverElement(uint64_t a1, WebKit::WebPageProxy *a2, const WebKit::WebHitTestResultData *a3, uint64_t a4, uint64_t a5)
{
  v5 = *(a1 + 16);
  if (v5)
  {
    v6 = *(v5 + 8);
    if (v6)
    {
      v12 = objc_loadWeak((v6 + 8));
      if ((*(v6 + 25) & 0x80) != 0)
      {
        v13 = WebKit::UIDelegate::UIClient::uiDelegatePrivate(*(a1 + 16));
        v14 = v13;
        if (v13)
        {
          v15 = v13;
          v16 = API::Object::newObject(0x370uLL, 66);
          API::HitTestResult::HitTestResult(v16, a3, a2);
          WeakRetained = objc_loadWeakRetained((v6 + 8));
          v18 = v16[1];
          if (v18)
          {
            objc_opt_class();
            if ((objc_opt_isKindOfClass() & 1) == 0)
            {
              __break(0xC471u);
              return;
            }
          }

          if (a5)
          {
            v19 = *(a5 + 8);
          }

          else
          {
            v19 = 0;
          }

          [v14 _webView:WeakRetained mouseDidMoveOverElement:v18 withFlags:(a4 << 12) & 0x10000 | ((a4 & 0xF) << 17) userInfo:v19];
          if (WeakRetained)
          {
          }

          CFRelease(v16[1]);
        }
      }

      Weak = objc_loadWeak((v6 + 8));
    }
  }
}

void sub_19DC901A0(_Unwind_Exception *a1)
{
  if (v2)
  {
    CFRelease(*(v2 + 8));
  }

  _Unwind_Resume(a1);
}

void WebKit::UIDelegate::UIClient::createNewPage(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v6 = *(a1 + 16);
  if (!v6 || (v7 = *(v6 + 8)) == 0)
  {
    WTF::CompletionHandler<void ()(WTF::RefPtr<WebKit::WebPageProxy,WTF::RawPtrTraits<WebKit::WebPageProxy>,WTF::DefaultRefDerefTraits<WebKit::WebPageProxy>> &&)>::operator()(a5);
    v50 = 0;
    return;
  }

  v11 = objc_loadWeak((v7 + 8));
  v12 = WebKit::UIDelegate::UIClient::uiDelegatePrivate(*(a1 + 16));
  v13 = v12;
  if (v12)
  {
    v14 = v12;
    if ((*(*a3 + 248) & 1) == 0)
    {
      WTF::CompletionHandler<void ()(WTF::RefPtr<WebKit::WebPageProxy,WTF::RawPtrTraits<WebKit::WebPageProxy>,WTF::DefaultRefDerefTraits<WebKit::WebPageProxy>> &&)>::operator()(a5);
      v50 = 0;
LABEL_11:

      goto LABEL_12;
    }

    API::WindowFeatures::create((*a3 + 168), &v50);
    v15 = *(*a3 + 136);
    if (*(v15 + 32) == 1)
    {
      v16 = *(v15 + 24);
      v17 = v16 & 0xFFFFFFFFFFFFFF00;
      v18 = v16;
      v19 = 1;
    }

    else
    {
      v19 = 0;
      v18 = 0;
      v17 = 0;
    }

    v20 = *(*a3 + 8);
    if (!v20 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      v21 = [v20 _relatedWebView];
      v22 = v21;
      if (v21)
      {
        v23 = v21;
      }

      v47 = v18;
      v24 = API::PageConfiguration::Data::LazyInitializedRef<WebKit::WebPreferences,&API::PageConfiguration::Data::createWebPreferences>::get((*a3 + 32));
      CFRetain(*(v24 + 1));
      {
        atomic_fetch_add_explicit(WebKit::WebPreferencesKey::siteIsolationEnabledKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
        WebKit::WebPreferencesKey::siteIsolationEnabledKey(void)::key = WebKit::WebPreferencesKey::siteIsolationEnabledKey(void)::$_0::operator() const(void)::impl;
      }

      BoolValueForKey = WebKit::WebPreferencesStore::getBoolValueForKey((v24 + 40), &WebKit::WebPreferencesKey::siteIsolationEnabledKey(void)::key, v25);
      CFRelease(*(v24 + 1));
      v26 = *(v7 + 24);
      if ((v26 & 2) != 0)
      {
        v46 = v22;
        WebKit::CompletionHandlerCallChecker::create(v13, sel__webView_createWebViewWithConfiguration_forNavigationAction_windowFeatures_completionHandler_, &v49);
        WeakRetained = objc_loadWeakRetained((v7 + 8));
        v37 = *(*a3 + 8);
        v45 = WeakRetained;
        if (v37)
        {
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            __break(0xC471u);
            JUMPOUT(0x19DC90748);
          }
        }

        v38 = *(*a4 + 8);
        if (v38)
        {
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            __break(0xC471u);
            JUMPOUT(0x19DC90768);
          }
        }

        v39 = *(v50 + 1);
        if (v39)
        {
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            __break(0xC471u);
            JUMPOUT(0x19DC90788);
          }
        }

        if (v22)
        {
          v40 = v22;
        }

        v41 = *a5;
        *a5 = 0;
        v42 = v49;
        v49 = 0;
        v43 = malloc_type_malloc(0x50uLL, 0x10E00401B65BE20uLL);
        *v43 = MEMORY[0x1E69E9818];
        v43[1] = 50331650;
        v43[2] = WTF::BlockPtr<void ()(WKWebView *)>::fromCallable<WebKit::UIDelegate::UIClient::createNewPage(WebKit::WebPageProxy &,WTF::Ref<API::PageConfiguration,WTF::RawPtrTraits<API::PageConfiguration>,WTF::DefaultRefDerefTraits<API::PageConfiguration>> &&,WTF::Ref<API::NavigationAction,WTF::RawPtrTraits<WTF::Ref<API::PageConfiguration,WTF::RawPtrTraits<API::PageConfiguration>,WTF::DefaultRefDerefTraits<API::PageConfiguration>> &&>,WTF::DefaultRefDerefTraits<WTF::Ref<API::PageConfiguration,WTF::RawPtrTraits<API::PageConfiguration>,WTF::DefaultRefDerefTraits<API::PageConfiguration>> &&>> &&,WTF::CompletionHandler<void ()(WTF::RefPtr<WebKit::WebPageProxy,WTF::RawPtrTraits<WebKit::WebPageProxy>,WTF::DefaultRefDerefTraits<WebKit::WebPageProxy>> &&)> &&)::$_0>(WebKit::UIDelegate::UIClient::createNewPage(WebKit::WebPageProxy &,WTF::Ref<API::PageConfiguration,WTF::RawPtrTraits<API::PageConfiguration>,WTF::DefaultRefDerefTraits<API::PageConfiguration>> &&,WTF::Ref<API::NavigationAction,WTF::RawPtrTraits<WTF::Ref<API::PageConfiguration,WTF::RawPtrTraits<API::PageConfiguration>,WTF::DefaultRefDerefTraits<API::PageConfiguration>> &&>,WTF::DefaultRefDerefTraits<WTF::Ref<API::PageConfiguration,WTF::RawPtrTraits<API::PageConfiguration>,WTF::DefaultRefDerefTraits<API::PageConfiguration>> &&>> &&,WTF::CompletionHandler<void ()(WTF::RefPtr<WebKit::WebPageProxy,WTF::RawPtrTraits<WebKit::WebPageProxy>,WTF::DefaultRefDerefTraits<WebKit::WebPageProxy>> &&)> &&)::$_0)::{lambda(void *,WKWebView *)#1}::__invoke;
        v43[3] = &WTF::BlockPtr<void ()(WKWebView *)>::fromCallable<WebKit::UIDelegate::UIClient::createNewPage(WebKit::WebPageProxy &,WTF::Ref<API::PageConfiguration,WTF::RawPtrTraits<API::PageConfiguration>,WTF::DefaultRefDerefTraits<API::PageConfiguration>> &&,WTF::Ref<API::NavigationAction,WTF::RawPtrTraits<WTF::Ref<API::PageConfiguration,WTF::RawPtrTraits<API::PageConfiguration>,WTF::DefaultRefDerefTraits<API::PageConfiguration>> &&>,WTF::DefaultRefDerefTraits<WTF::Ref<API::PageConfiguration,WTF::RawPtrTraits<API::PageConfiguration>,WTF::DefaultRefDerefTraits<API::PageConfiguration>> &&>> &&,WTF::CompletionHandler<void ()(WTF::RefPtr<WebKit::WebPageProxy,WTF::RawPtrTraits<WebKit::WebPageProxy>,WTF::DefaultRefDerefTraits<WebKit::WebPageProxy>> &&)> &&)::$_0>(WebKit::UIDelegate::UIClient::createNewPage(WebKit::WebPageProxy &,WTF::Ref<API::PageConfiguration,WTF::RawPtrTraits<API::PageConfiguration>,WTF::DefaultRefDerefTraits<API::PageConfiguration>> &&,WTF::Ref<API::NavigationAction,WTF::RawPtrTraits<WTF::Ref<API::PageConfiguration,WTF::RawPtrTraits<API::PageConfiguration>,WTF::DefaultRefDerefTraits<API::PageConfiguration>> &&>,WTF::DefaultRefDerefTraits<WTF::Ref<API::PageConfiguration,WTF::RawPtrTraits<API::PageConfiguration>,WTF::DefaultRefDerefTraits<API::PageConfiguration>> &&>> &&,WTF::CompletionHandler<void ()(WTF::RefPtr<WebKit::WebPageProxy,WTF::RawPtrTraits<WebKit::WebPageProxy>,WTF::DefaultRefDerefTraits<WebKit::WebPageProxy>> &&)> &&)::$_0)::descriptor;
        *(v43 + 32) = BoolValueForKey;
        v43[5] = v46;
        v43[6] = v41;
        v43[7] = v42;
        v43[8] = v17 | v47;
        *(v43 + 72) = v19;
        [v13 _webView:v45 createWebViewWithConfiguration:v37 forNavigationAction:v38 windowFeatures:v39 completionHandler:v43];
        _Block_release(v43);
        if (v45)
        {
        }

        v22 = v46;
        if (!v46)
        {
          goto LABEL_52;
        }

LABEL_51:

LABEL_52:
        if (v50)
        {
          CFRelease(*(v50 + 1));
        }

        goto LABEL_11;
      }

      if ((v26 & 1) == 0)
      {
        goto LABEL_50;
      }

      v27 = objc_loadWeakRetained((v7 + 8));
      v28 = *(*a3 + 8);
      if (v28)
      {
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          __break(0xC471u);
          JUMPOUT(0x19DC907A8);
        }
      }

      v29 = *(*a4 + 8);
      if (v29)
      {
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          __break(0xC471u);
          JUMPOUT(0x19DC907C8);
        }
      }

      v30 = *(v50 + 1);
      if (!v30 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
      {
        v31 = [v13 webView:v27 createWebViewWithConfiguration:v28 forNavigationAction:v29 windowFeatures:v30];
        v32 = v31;
        if (v31)
        {
          v33 = v31;
        }

        if (v27)
        {
        }

        if (v32)
        {
          if (BoolValueForKey)
          {
            v34 = *(v32 + 52);
            v35 = *(v34 + 1496);
            if (v19 && (v35 & 1) != 0)
            {
              if ((v17 | v47) == *(v34 + 1488))
              {
                goto LABEL_58;
              }
            }

            else if (((v19 ^ v35) & 1) == 0)
            {
              goto LABEL_58;
            }
          }

          else if ([*(v32 + 51) _relatedWebView] == v22)
          {
LABEL_58:
            v44 = *(v32 + 52);
            if (v44)
            {
              CFRetain(*(v44 + 8));
            }

            WTF::CompletionHandler<void ()(WTF::RefPtr<WebKit::WebPageProxy,WTF::RawPtrTraits<WebKit::WebPageProxy>,WTF::DefaultRefDerefTraits<WebKit::WebPageProxy>> &&)>::operator()(a5);
            v49 = 0;
            if (v44)
            {
              CFRelease(*(v44 + 8));
            }

            if (!v22)
            {
              goto LABEL_52;
            }

            goto LABEL_51;
          }

          [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D930] format:@"Returned WKWebView was not created with the given configuration."];
          goto LABEL_58;
        }

LABEL_50:
        WTF::CompletionHandler<void ()(WTF::RefPtr<WebKit::WebPageProxy,WTF::RawPtrTraits<WebKit::WebPageProxy>,WTF::DefaultRefDerefTraits<WebKit::WebPageProxy>> &&)>::operator()(a5);
        v49 = 0;
        if (!v22)
        {
          goto LABEL_52;
        }

        goto LABEL_51;
      }
    }

    __break(0xC471u);
    JUMPOUT(0x19DC90728);
  }

  WTF::CompletionHandler<void ()(WTF::RefPtr<WebKit::WebPageProxy,WTF::RawPtrTraits<WebKit::WebPageProxy>,WTF::DefaultRefDerefTraits<WebKit::WebPageProxy>> &&)>::operator()(a5);
  v50 = 0;
LABEL_12:
}

void sub_19DC907EC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  if (a13)
  {
    CFRelease(*(a13 + 8));
  }

  if (v15)
  {
  }

  if (a14)
  {
    CFRelease(*(a14 + 8));
  }

  _Unwind_Resume(a1);
}

uint64_t WTF::CompletionHandler<void ()(WTF::RefPtr<WebKit::WebPageProxy,WTF::RawPtrTraits<WebKit::WebPageProxy>,WTF::DefaultRefDerefTraits<WebKit::WebPageProxy>> &&)>::operator()(uint64_t *a1)
{
  v1 = *a1;
  *a1 = 0;
  (*(*v1 + 16))(v1);
  v2 = *(*v1 + 8);

  return v2(v1);
}

void WebKit::UIDelegate::UIClient::runJavaScriptAlert(uint64_t a1, CFTypeRef *a2, atomic_uint **a3, uint64_t a4, uint64_t a5, uint64_t *a6)
{
  v7 = *(a1 + 16);
  if (v7 && (v8 = *(v7 + 8)) != 0)
  {
    v13 = objc_loadWeak((v8 + 8));
    if ((*(v8 + 24) & 4) == 0 || (v15 = WebKit::UIDelegate::UIClient::uiDelegatePrivate(*(a1 + 16)), (v16 = v15) == 0))
    {
      (*(**a6 + 16))();
LABEL_26:

      return;
    }

    v17 = v15;
    WebKit::WebPageProxy::makeViewBlankIfUnpaintedSinceLastLoadCommit(a2);
    WebKit::CompletionHandlerCallChecker::create(v16, sel_webView_runJavaScriptAlertPanelWithMessage_initiatedByFrame_completionHandler_, &v32);
    WeakRetained = objc_loadWeakRetained((v8 + 8));
    v19 = *a3;
    if (v19)
    {
      atomic_fetch_add_explicit(v19, 2u, memory_order_relaxed);
      MEMORY[0x19EB00B70](&v31, v19);
      if (atomic_fetch_add_explicit(v19, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v19, v20);
      }
    }

    else
    {
      v31 = &stru_1F1147748;
      v21 = &stru_1F1147748;
    }

    v22 = v31;
    CFRetain(a2[1]);
    v30 = a2;
    v23 = API::Object::newObject(0x180uLL, 59);
    v24 = *(API::FrameInfo::FrameInfo(v23, a5, &v30) + 8);
    if (!v24)
    {
LABEL_17:
      v26 = *a6;
      *a6 = 0;
      v27 = v32;
      v32 = 0;
      v28 = malloc_type_malloc(0x30uLL, 0x10E0040FAC56454uLL);
      *v28 = MEMORY[0x1E69E9818];
      v28[1] = 50331650;
      v28[2] = WTF::BlockPtr<void ()(void)>::fromCallable<WebKit::UIDelegate::UIClient::runJavaScriptAlert(WebKit::WebPageProxy &,WTF::String const&,WebKit::WebFrameProxy *,WebKit::FrameInfoData &&,WTF::Function<void ()(void)> &&)::$_0>(WebKit::UIDelegate::UIClient::runJavaScriptAlert(WebKit::WebPageProxy &,WTF::String const&,WebKit::WebFrameProxy *,WebKit::FrameInfoData &&,WTF::Function<void ()(void)> &&)::$_0)::{lambda(void *)#1}::__invoke;
      v28[3] = &WTF::BlockPtr<void ()(void)>::fromCallable<WebKit::UIDelegate::UIClient::runJavaScriptAlert(WebKit::WebPageProxy &,WTF::String const&,WebKit::WebFrameProxy *,WebKit::FrameInfoData &&,WTF::Function<void ()(void)> &&)::$_0>(WebKit::UIDelegate::UIClient::runJavaScriptAlert(WebKit::WebPageProxy &,WTF::String const&,WebKit::WebFrameProxy *,WebKit::FrameInfoData &&,WTF::Function<void ()(void)> &&)::$_0)::descriptor;
      v28[4] = v26;
      v28[5] = v27;
      [(WebKit::CompletionHandlerCallChecker *)v16 webView:WeakRetained runJavaScriptAlertPanelWithMessage:v22 initiatedByFrame:v24 completionHandler:v28];
      _Block_release(v28);
      if (v24)
      {
      }

      CFRelease(*(v23 + 8));
      if (v30)
      {
        CFRelease(v30[1]);
      }

      v29 = v31;
      v31 = 0;
      if (v29)
      {
      }

      if (WeakRetained)
      {
      }

      goto LABEL_26;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v25 = v24;
      goto LABEL_17;
    }

    __break(0xC471u);
  }

  else
  {
    v14 = *(**a6 + 16);

    v14();
  }
}

void sub_19DC90D38(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, atomic_uint *a12)
{
  if (v13)
  {
  }

  if (a12)
  {
    WTF::ThreadSafeRefCounted<WebKit::CompletionHandlerCallChecker,(WTF::DestructionThread)0>::deref(a12);
  }

  _Unwind_Resume(a1);
}

void WebKit::UIDelegate::UIClient::runJavaScriptConfirm(uint64_t a1, CFTypeRef *a2, atomic_uint **a3, uint64_t a4, uint64_t a5, void *a6)
{
  v7 = *(a1 + 16);
  if (v7 && (v8 = *(v7 + 8)) != 0)
  {
    v13 = objc_loadWeak((v8 + 8));
    if ((*(v8 + 24) & 8) == 0 || (v15 = WebKit::UIDelegate::UIClient::uiDelegatePrivate(*(a1 + 16)), (v16 = v15) == 0))
    {
      (*(**a6 + 16))(*a6, 0);
LABEL_26:

      return;
    }

    v17 = v15;
    WebKit::WebPageProxy::makeViewBlankIfUnpaintedSinceLastLoadCommit(a2);
    WebKit::CompletionHandlerCallChecker::create(v16, sel_webView_runJavaScriptConfirmPanelWithMessage_initiatedByFrame_completionHandler_, &v32);
    WeakRetained = objc_loadWeakRetained((v8 + 8));
    v19 = *a3;
    if (v19)
    {
      atomic_fetch_add_explicit(v19, 2u, memory_order_relaxed);
      MEMORY[0x19EB00B70](&v31, v19);
      if (atomic_fetch_add_explicit(v19, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v19, v20);
      }
    }

    else
    {
      v31 = &stru_1F1147748;
      v21 = &stru_1F1147748;
    }

    v22 = v31;
    CFRetain(a2[1]);
    v30 = a2;
    v23 = API::Object::newObject(0x180uLL, 59);
    v24 = *(API::FrameInfo::FrameInfo(v23, a5, &v30) + 8);
    if (!v24)
    {
LABEL_17:
      v26 = *a6;
      *a6 = 0;
      v27 = v32;
      v32 = 0;
      v28 = malloc_type_malloc(0x30uLL, 0x10E0040FAC56454uLL);
      *v28 = MEMORY[0x1E69E9818];
      v28[1] = 50331650;
      v28[2] = WTF::BlockPtr<void ()(BOOL)>::fromCallable<WebKit::UIDelegate::UIClient::runJavaScriptConfirm(WebKit::WebPageProxy &,WTF::String const&,WebKit::WebFrameProxy *,WebKit::FrameInfoData &&,WTF::Function<void ()(BOOL)> &&)::$_0>(WebKit::UIDelegate::UIClient::runJavaScriptConfirm(WebKit::WebPageProxy &,WTF::String const&,WebKit::WebFrameProxy *,WebKit::FrameInfoData &&,WTF::Function<void ()(BOOL)> &&)::$_0)::{lambda(void *,BOOL)#1}::__invoke;
      v28[3] = &WTF::BlockPtr<void ()(BOOL)>::fromCallable<WebKit::UIDelegate::UIClient::runJavaScriptConfirm(WebKit::WebPageProxy &,WTF::String const&,WebKit::WebFrameProxy *,WebKit::FrameInfoData &&,WTF::Function<void ()(BOOL)> &&)::$_0>(WebKit::UIDelegate::UIClient::runJavaScriptConfirm(WebKit::WebPageProxy &,WTF::String const&,WebKit::WebFrameProxy *,WebKit::FrameInfoData &&,WTF::Function<void ()(BOOL)> &&)::$_0)::descriptor;
      v28[4] = v26;
      v28[5] = v27;
      [(WebKit::CompletionHandlerCallChecker *)v16 webView:WeakRetained runJavaScriptConfirmPanelWithMessage:v22 initiatedByFrame:v24 completionHandler:v28];
      _Block_release(v28);
      if (v24)
      {
      }

      CFRelease(*(v23 + 8));
      if (v30)
      {
        CFRelease(v30[1]);
      }

      v29 = v31;
      v31 = 0;
      if (v29)
      {
      }

      if (WeakRetained)
      {
      }

      goto LABEL_26;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v25 = v24;
      goto LABEL_17;
    }

    __break(0xC471u);
  }

  else
  {
    v14 = *(**a6 + 16);

    v14();
  }
}

void sub_19DC91154(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, atomic_uint *a12)
{
  if (v13)
  {
  }

  if (a12)
  {
    WTF::ThreadSafeRefCounted<WebKit::CompletionHandlerCallChecker,(WTF::DestructionThread)0>::deref(a12);
  }

  _Unwind_Resume(a1);
}

void WebKit::UIDelegate::UIClient::runJavaScriptPrompt(uint64_t a1, CFTypeRef *a2, atomic_uint **a3, atomic_uint **a4, uint64_t a5, uint64_t a6, void *a7)
{
  v8 = *(a1 + 16);
  if (v8 && (v9 = *(v8 + 8)) != 0)
  {
    v15 = objc_loadWeak((v9 + 8));
    if ((*(v9 + 24) & 0x10) != 0 && (v18 = WebKit::UIDelegate::UIClient::uiDelegatePrivate(*(a1 + 16)), (v19 = v18) != 0))
    {
      v20 = v18;
      WebKit::WebPageProxy::makeViewBlankIfUnpaintedSinceLastLoadCommit(a2);
      WebKit::CompletionHandlerCallChecker::create(v19, sel_webView_runJavaScriptTextInputPanelWithPrompt_defaultText_initiatedByFrame_completionHandler_, &v43);
      WeakRetained = objc_loadWeakRetained((v9 + 8));
      v22 = *a3;
      if (v22)
      {
        atomic_fetch_add_explicit(v22, 2u, memory_order_relaxed);
        MEMORY[0x19EB00B70](&v42, v22);
        if (atomic_fetch_add_explicit(v22, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v22, v23);
        }
      }

      else
      {
        v42 = &stru_1F1147748;
        v26 = &stru_1F1147748;
      }

      v27 = v42;
      v28 = *a4;
      if (v28)
      {
        atomic_fetch_add_explicit(v28, 2u, memory_order_relaxed);
        MEMORY[0x19EB00B70](&v41, v28);
        if (atomic_fetch_add_explicit(v28, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v28, v29);
        }
      }

      else
      {
        v41 = &stru_1F1147748;
        v30 = &stru_1F1147748;
      }

      v31 = v41;
      CFRetain(a2[1]);
      v40 = a2;
      v32 = API::Object::newObject(0x180uLL, 59);
      v33 = *(API::FrameInfo::FrameInfo(v32, a6, &v40) + 8);
      if (v33)
      {
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          __break(0xC471u);
          return;
        }

        v34 = v33;
      }

      v35 = *a7;
      *a7 = 0;
      v36 = v43;
      v43 = 0;
      v37 = malloc_type_malloc(0x30uLL, 0x10E0040FAC56454uLL);
      *v37 = MEMORY[0x1E69E9818];
      v37[1] = 50331650;
      v37[2] = WTF::BlockPtr<void ()(NSString *)>::fromCallable<WebKit::UIDelegate::UIClient::runJavaScriptPrompt(WebKit::WebPageProxy &,WTF::String const&,WTF::String const&,WebKit::WebFrameProxy *,WebKit::FrameInfoData &&,WTF::Function<void ()(WTF::String const&)> &&)::$_0>(WebKit::UIDelegate::UIClient::runJavaScriptPrompt(WebKit::WebPageProxy &,WTF::String const&,WTF::String const&,WebKit::WebFrameProxy *,WebKit::FrameInfoData &&,WTF::Function<void ()(WTF::String const&)> &&)::$_0)::{lambda(void *,NSString *)#1}::__invoke;
      v37[3] = &WTF::BlockPtr<void ()(NSString *)>::fromCallable<WebKit::UIDelegate::UIClient::runJavaScriptPrompt(WebKit::WebPageProxy &,WTF::String const&,WTF::String const&,WebKit::WebFrameProxy *,WebKit::FrameInfoData &&,WTF::Function<void ()(WTF::String const&)> &&)::$_0>(WebKit::UIDelegate::UIClient::runJavaScriptPrompt(WebKit::WebPageProxy &,WTF::String const&,WTF::String const&,WebKit::WebFrameProxy *,WebKit::FrameInfoData &&,WTF::Function<void ()(WTF::String const&)> &&)::$_0)::descriptor;
      v37[4] = v35;
      v37[5] = v36;
      [(WebKit::CompletionHandlerCallChecker *)v19 webView:WeakRetained runJavaScriptTextInputPanelWithPrompt:v27 defaultText:v31 initiatedByFrame:v33 completionHandler:v37];
      _Block_release(v37);
      if (v33)
      {
      }

      CFRelease(*(v32 + 8));
      if (v40)
      {
        CFRelease(v40[1]);
      }

      v38 = v41;
      v41 = 0;
      if (v38)
      {
      }

      v39 = v42;
      v42 = 0;
      if (v39)
      {
      }

      if (WeakRetained)
      {
      }
    }

    else
    {
      v43 = 0;
      (*(**a7 + 16))(*a7, &v43);
      v25 = v43;
      v43 = 0;
      if (v25)
      {
        if (atomic_fetch_add_explicit(v25, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v25, v24);
        }
      }
    }
  }

  else
  {
    v43 = 0;
    (*(**a7 + 16))(*a7, &v43);
    v17 = v43;
    v43 = 0;
    if (v17 && atomic_fetch_add_explicit(v17, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v17, v16);
    }
  }
}

void sub_19DC915F8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, WTF::StringImpl *a12)
{
  if (a11)
  {
  }

  if (v13)
  {
  }

  if (a12)
  {
    WTF::ThreadSafeRefCounted<WebKit::CompletionHandlerCallChecker,(WTF::DestructionThread)0>::deref(a12);
  }

  _Unwind_Resume(a1);
}

void WebKit::UIDelegate::UIClient::requestStorageAccessConfirm(uint64_t a1, uint64_t a2, uint64_t a3, WTF::String *a4, WTF::String *a5, uint64_t a6, WTF::RefCountedBase *a7)
{
  v7 = a7;
  v90[1] = *MEMORY[0x1E69E9840];
  v8 = *(a1 + 16);
  if (v8)
  {
    v9 = *(v8 + 8);
    if (v9)
    {
      v14 = objc_loadWeak((v9 + 8));
      v15 = WebKit::UIDelegate::UIClient::uiDelegatePrivate(*(a1 + 16));
      v16 = v15;
      if (!v15)
      {
        WTF::CompletionHandler<void ()(BOOL)>::operator()(v7, 0);
LABEL_85:

        return;
      }

      v17 = v15;
      WebCore::NetworkStorageSession::findAdditionalLoginDomain();
      if (*(a6 + 32))
      {
        if ((*(v9 + 24) & 0x40) == 0)
        {
          WeakRetained = objc_loadWeakRetained((v9 + 8));
          if (*(a6 + 32))
          {
            v19 = WeakRetained;
            WebKit::presentStorageAccessAlertSSOQuirk(WeakRetained, a6, (a6 + 8), v7);
LABEL_81:
            if (v19)
            {
            }

            if (v89 == 1)
            {
              v79 = v88;
              v88 = 0;
              if (v79)
              {
                if (atomic_fetch_add_explicit(v79, 0xFFFFFFFE, memory_order_relaxed) == 2)
                {
                  WTF::StringImpl::destroy(v79, v20);
                }
              }
            }

            goto LABEL_85;
          }

          goto LABEL_89;
        }
      }

      else
      {
        v21 = *(v9 + 24);
        if ((v89 & 1) == 0)
        {
          if ((v21 & 0x20) != 0)
          {
            WebKit::CompletionHandlerCallChecker::create(v16, sel__webView_requestStorageAccessPanelForDomain_underCurrentDomain_completionHandler_, v87);
            v19 = objc_loadWeakRetained((v9 + 8));
            v30 = *a4;
            if (v30)
            {
              atomic_fetch_add_explicit(v30, 2u, memory_order_relaxed);
              MEMORY[0x19EB00B70](&v86, v30);
              if (atomic_fetch_add_explicit(v30, 0xFFFFFFFE, memory_order_relaxed) == 2)
              {
                WTF::StringImpl::destroy(v30, v31);
              }
            }

            else
            {
              v86 = &stru_1F1147748;
              v68 = &stru_1F1147748;
            }

            v69 = v86;
            v70 = *a5;
            if (v70)
            {
              atomic_fetch_add_explicit(v70, 2u, memory_order_relaxed);
              MEMORY[0x19EB00B70](&v85, v70);
              if (atomic_fetch_add_explicit(v70, 0xFFFFFFFE, memory_order_relaxed) == 2)
              {
                WTF::StringImpl::destroy(v70, v71);
              }
            }

            else
            {
              v85 = &stru_1F1147748;
              v72 = &stru_1F1147748;
            }

            v73 = v85;
            v74 = *v7;
            *v7 = 0;
            v75 = v87[0];
            v87[0] = 0;
            v76 = malloc_type_malloc(0x30uLL, 0x10E0040FAC56454uLL);
            *v76 = MEMORY[0x1E69E9818];
            v76[1] = 50331650;
            v76[2] = WTF::BlockPtr<void ()(BOOL)>::fromCallable<WebKit::UIDelegate::UIClient::requestStorageAccessConfirm(WebKit::WebPageProxy &,WebKit::WebFrameProxy *,WebCore::RegistrableDomain const&,WebCore::RegistrableDomain const&,std::optional<WebCore::OrganizationStorageAccessPromptQuirk> &&,WTF::CompletionHandler<void ()(BOOL)> &&)::$_1>(WebKit::UIDelegate::UIClient::requestStorageAccessConfirm(WebKit::WebPageProxy &,WebKit::WebFrameProxy *,WebCore::RegistrableDomain const&,WebCore::RegistrableDomain const&,std::optional<WebCore::OrganizationStorageAccessPromptQuirk> &&,WTF::CompletionHandler<void ()(BOOL)> &&)::$_1)::{lambda(void *,BOOL)#1}::__invoke;
            v76[3] = &WTF::BlockPtr<void ()(BOOL)>::fromCallable<WebKit::UIDelegate::UIClient::requestStorageAccessConfirm(WebKit::WebPageProxy &,WebKit::WebFrameProxy *,WebCore::RegistrableDomain const&,WebCore::RegistrableDomain const&,std::optional<WebCore::OrganizationStorageAccessPromptQuirk> &&,WTF::CompletionHandler<void ()(BOOL)> &&)::$_1>(WebKit::UIDelegate::UIClient::requestStorageAccessConfirm(WebKit::WebPageProxy &,WebKit::WebFrameProxy *,WebCore::RegistrableDomain const&,WebCore::RegistrableDomain const&,std::optional<WebCore::OrganizationStorageAccessPromptQuirk> &&,WTF::CompletionHandler<void ()(BOOL)> &&)::$_1)::descriptor;
            v76[4] = v74;
            v76[5] = v75;
            [v16 _webView:v19 requestStorageAccessPanelForDomain:v69 underCurrentDomain:v73 completionHandler:v76];
            _Block_release(v76);
            v77 = v85;
            v85 = 0;
            if (v77)
            {
            }

            v78 = v86;
            v86 = 0;
            if (v78)
            {
            }
          }

          else
          {
            v19 = objc_loadWeakRetained((v9 + 8));
            WebKit::presentStorageAccessAlert(v19, a4, a5, v7);
          }

          goto LABEL_81;
        }

        if ((v21 & 0x40) == 0)
        {
          v22 = objc_loadWeakRetained((v9 + 8));
          if (v89)
          {
            v19 = v22;
            WebKit::presentStorageAccessAlertQuirk(v22, a4, &v88, a5, v7);
            goto LABEL_81;
          }

LABEL_89:
          __break(1u);
        }
      }

      v19 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:1];
      v84 = v19;
      if (*(a6 + 32) == 1)
      {
        v83 = v16;
        v87[0] = WTF::HashTable<WebCore::RegistrableDomain,WTF::KeyValuePair<WebCore::RegistrableDomain,WTF::Vector<WebCore::RegistrableDomain,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebCore::RegistrableDomain,WTF::Vector<WebCore::RegistrableDomain,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>>,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashMap<WebCore::RegistrableDomain,WTF::Vector<WebCore::RegistrableDomain,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTraits<WTF::Vector<WebCore::RegistrableDomain,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::FastMalloc>::begin((a6 + 8), v23, v24);
        v87[1] = v25;
        v26 = *(a6 + 8);
        v81 = a5;
        v82 = v7;
        v80 = a4;
        if (v26)
        {
          v27 = v26 + 24 * *(v26 - 4);
        }

        else
        {
          v27 = 0;
        }

        while (1)
        {
          v32 = v87[0];
          if (v87[0] == v27)
          {
            break;
          }

          v33 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:*(v87[0] + 20)];
          v34 = *(v32 + 20);
          if (v34)
          {
            v35 = *(v32 + 8);
            v36 = 8 * v34;
            do
            {
              v37 = *v35;
              if (*v35)
              {
                atomic_fetch_add_explicit(v37, 2u, memory_order_relaxed);
                MEMORY[0x19EB00B70](&v86, v37);
                if (atomic_fetch_add_explicit(v37, 0xFFFFFFFE, memory_order_relaxed) == 2)
                {
                  WTF::StringImpl::destroy(v37, v38);
                }
              }

              else
              {
                v86 = &stru_1F1147748;
                v39 = &stru_1F1147748;
              }

              [v33 addObject:{v86, v80, v81, v82}];
              v40 = v86;
              v86 = 0;
              if (v40)
              {
              }

              ++v35;
              v36 -= 8;
            }

            while (v36);
          }

          v41 = *v32;
          if (*v32)
          {
            atomic_fetch_add_explicit(v41, 2u, memory_order_relaxed);
            v19 = v84;
            MEMORY[0x19EB00B70](&v86, v41);
            if (atomic_fetch_add_explicit(v41, 0xFFFFFFFE, memory_order_relaxed) == 2)
            {
              WTF::StringImpl::destroy(v41, v42);
            }
          }

          else
          {
            v86 = &stru_1F1147748;
            v19 = v84;
            v43 = &stru_1F1147748;
          }

          [v19 setObject:v33 forKey:{v86, v80, v81, v82}];
          v46 = v86;
          v86 = 0;
          if (v46)
          {
          }

          if (v33)
          {
          }

          v87[0] += 24;
          WTF::HashTableConstIterator<WTF::HashTable<WebCore::RegistrableDomain,WTF::KeyValuePair<WebCore::RegistrableDomain,WTF::Vector<WebCore::RegistrableDomain,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebCore::RegistrableDomain,WTF::Vector<WebCore::RegistrableDomain,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>>,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashMap<WebCore::RegistrableDomain,WTF::Vector<WebCore::RegistrableDomain,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTraits<WTF::Vector<WebCore::RegistrableDomain,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::FastMalloc>,WebCore::RegistrableDomain,WTF::KeyValuePair<WebCore::RegistrableDomain,WTF::Vector<WebCore::RegistrableDomain,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebCore::RegistrableDomain,WTF::Vector<WebCore::RegistrableDomain,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>>,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashMap<WebCore::RegistrableDomain,WTF::Vector<WebCore::RegistrableDomain,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTraits<WTF::Vector<WebCore::RegistrableDomain,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WebCore::RegistrableDomain>>::skipEmptyBuckets(v87, v44, v45);
        }

        v16 = v83;
        a5 = v81;
        v7 = v82;
        a4 = v80;
      }

      else
      {
        if ((v89 & 1) == 0)
        {
          goto LABEL_89;
        }

        v28 = v88;
        if (v88)
        {
          atomic_fetch_add_explicit(v88, 2u, memory_order_relaxed);
          MEMORY[0x19EB00B70](v87, v28);
          if (atomic_fetch_add_explicit(v28, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v28, v29);
          }
        }

        else
        {
          v87[0] = &stru_1F1147748;
          v47 = &stru_1F1147748;
        }

        v90[0] = v87[0];
        v48 = [MEMORY[0x1E695DEC8] arrayWithObjects:v90 count:1];
        v49 = *a5;
        if (*a5)
        {
          atomic_fetch_add_explicit(v49, 2u, memory_order_relaxed);
          MEMORY[0x19EB00B70](&v86, v49);
          if (atomic_fetch_add_explicit(v49, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v49, v50);
          }
        }

        else
        {
          v86 = &stru_1F1147748;
          v51 = &stru_1F1147748;
        }

        [v19 setObject:v48 forKey:v86];
        v52 = v86;
        v86 = 0;
        if (v52)
        {
        }

        v53 = v87[0];
        v87[0] = 0;
        if (v53)
        {
        }
      }

      WebKit::CompletionHandlerCallChecker::create(v16, sel__webView_requestStorageAccessPanelForDomain_underCurrentDomain_forQuirkDomains_completionHandler_, v87);
      v54 = objc_loadWeakRetained((v9 + 8));
      v55 = *a4;
      if (v55)
      {
        atomic_fetch_add_explicit(v55, 2u, memory_order_relaxed);
        MEMORY[0x19EB00B70](&v86, v55);
        if (atomic_fetch_add_explicit(v55, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v55, v56);
        }
      }

      else
      {
        v86 = &stru_1F1147748;
        v57 = &stru_1F1147748;
      }

      v58 = v86;
      v59 = *a5;
      if (v59)
      {
        atomic_fetch_add_explicit(v59, 2u, memory_order_relaxed);
        MEMORY[0x19EB00B70](&v85, v59);
        if (atomic_fetch_add_explicit(v59, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v59, v60);
        }
      }

      else
      {
        v85 = &stru_1F1147748;
        v61 = &stru_1F1147748;
      }

      v62 = v85;
      v63 = *v7;
      *v7 = 0;
      v64 = v87[0];
      v87[0] = 0;
      v65 = malloc_type_malloc(0x30uLL, 0x10E0040FAC56454uLL);
      *v65 = MEMORY[0x1E69E9818];
      v65[1] = 50331650;
      v65[2] = WTF::BlockPtr<void ()(BOOL)>::fromCallable<WebKit::UIDelegate::UIClient::requestStorageAccessConfirm(WebKit::WebPageProxy &,WebKit::WebFrameProxy *,WebCore::RegistrableDomain const&,WebCore::RegistrableDomain const&,std::optional<WebCore::OrganizationStorageAccessPromptQuirk> &&,WTF::CompletionHandler<void ()(BOOL)> &&)::$_0>(WebKit::UIDelegate::UIClient::requestStorageAccessConfirm(WebKit::WebPageProxy &,WebKit::WebFrameProxy *,WebCore::RegistrableDomain const&,WebCore::RegistrableDomain const&,std::optional<WebCore::OrganizationStorageAccessPromptQuirk> &&,WTF::CompletionHandler<void ()(BOOL)> &&)::$_0)::{lambda(void *,BOOL)#1}::__invoke;
      v65[3] = &WTF::BlockPtr<void ()(BOOL)>::fromCallable<WebKit::UIDelegate::UIClient::requestStorageAccessConfirm(WebKit::WebPageProxy &,WebKit::WebFrameProxy *,WebCore::RegistrableDomain const&,WebCore::RegistrableDomain const&,std::optional<WebCore::OrganizationStorageAccessPromptQuirk> &&,WTF::CompletionHandler<void ()(BOOL)> &&)::$_0>(WebKit::UIDelegate::UIClient::requestStorageAccessConfirm(WebKit::WebPageProxy &,WebKit::WebFrameProxy *,WebCore::RegistrableDomain const&,WebCore::RegistrableDomain const&,std::optional<WebCore::OrganizationStorageAccessPromptQuirk> &&,WTF::CompletionHandler<void ()(BOOL)> &&)::$_0)::descriptor;
      v65[4] = v63;
      v65[5] = v64;
      [v16 _webView:v54 requestStorageAccessPanelForDomain:v58 underCurrentDomain:v62 forQuirkDomains:v19 completionHandler:v65];
      _Block_release(v65);
      v66 = v85;
      v85 = 0;
      if (v66)
      {
      }

      v67 = v86;
      v86 = 0;
      if (v67)
      {
      }

      if (v54)
      {
      }

      goto LABEL_81;
    }
  }

  WTF::CompletionHandler<void ()(BOOL)>::operator()(a7, 0);
}

void sub_19DC91EF4(_Unwind_Exception *a1, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *a16, atomic_uint *a17, uint64_t a18, WTF::StringImpl *a19, char a20)
{
  if (a16)
  {
  }

  if (v20)
  {
  }

  if (a17)
  {
    WTF::ThreadSafeRefCounted<WebKit::CompletionHandlerCallChecker,(WTF::DestructionThread)0>::deref(a17);
  }

  if (a20 == 1 && a19 && atomic_fetch_add_explicit(a19, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(a19, a2);
  }

  _Unwind_Resume(a1);
}

void WebKit::UIDelegate::UIClient::decidePolicyForGeolocationPermissionRequest(uint64_t a1, uint64_t a2, uint64_t a3, const WebKit::FrameInfoData *a4, uint64_t *a5)
{
  v80 = *MEMORY[0x1E69E9840];
  v6 = *(a1 + 16);
  if (v6)
  {
    v7 = *(v6 + 8);
    if (v7)
    {
      v12 = objc_loadWeak((v7 + 8));
      if ((*(v7 + 25) & 3) == 0)
      {
        goto LABEL_75;
      }

      v13 = WebKit::UIDelegate::UIClient::uiDelegatePrivate(*(a1 + 16));
      v14 = v13;
      if (!v13)
      {
        goto LABEL_75;
      }

      v15 = v13;
      if ((*(v7 + 25) & 2) == 0)
      {
        WebKit::CompletionHandlerCallChecker::create(v14, sel__webView_requestGeolocationPermissionForFrame_decisionHandler_, &v74);
        WeakRetained = objc_loadWeakRetained((v7 + 8));
        WebKit::FrameInfoData::FrameInfoData(&v64, a4);
        CFRetain(*(a2 + 8));
        v63 = a2;
        v17 = API::Object::newObject(0x180uLL, 59);
        v18 = *(API::FrameInfo::FrameInfo(v17, &v64, &v63) + 8);
        if (!v18)
        {
LABEL_9:
          v20 = *a5;
          *a5 = 0;
          v21 = v74;
          v74 = 0;
          v22 = malloc_type_malloc(0x30uLL, 0x10E0040FAC56454uLL);
          *v22 = MEMORY[0x1E69E9818];
          v22[1] = 50331650;
          v22[2] = WTF::BlockPtr<void ()(BOOL)>::fromCallable<WebKit::UIDelegate::UIClient::decidePolicyForGeolocationPermissionRequest(WebKit::WebPageProxy &,WebKit::WebFrameProxy &,WebKit::FrameInfoData const&,WTF::Function<void ()(BOOL)> &)::$_1>(WebKit::UIDelegate::UIClient::decidePolicyForGeolocationPermissionRequest(WebKit::WebPageProxy &,WebKit::WebFrameProxy &,WebKit::FrameInfoData const&,WTF::Function<void ()(BOOL)> &)::$_1)::{lambda(void *,BOOL)#1}::__invoke;
          v22[3] = &WTF::BlockPtr<void ()(BOOL)>::fromCallable<WebKit::UIDelegate::UIClient::decidePolicyForGeolocationPermissionRequest(WebKit::WebPageProxy &,WebKit::WebFrameProxy &,WebKit::FrameInfoData const&,WTF::Function<void ()(BOOL)> &)::$_1>(WebKit::UIDelegate::UIClient::decidePolicyForGeolocationPermissionRequest(WebKit::WebPageProxy &,WebKit::WebFrameProxy &,WebKit::FrameInfoData const&,WTF::Function<void ()(BOOL)> &)::$_1)::descriptor;
          v22[4] = v20;
          v22[5] = v21;
          [(WebKit::CompletionHandlerCallChecker *)v14 _webView:WeakRetained requestGeolocationPermissionForFrame:v18 decisionHandler:v22];
          _Block_release(v22);
          if (v18)
          {
          }

          CFRelease(*(v17 + 8));
          if (v63)
          {
            CFRelease(*(v63 + 1));
          }

          v24 = cf;
          cf = 0;
          if (v24)
          {
            CFRelease(v24);
          }

          v25 = v72;
          v72 = 0;
          if (v25 && atomic_fetch_add_explicit(v25, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v25, v23);
          }

          mpark::detail::move_constructor<mpark::detail::traits<WebCore::SecurityOriginData::Tuple,WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::OpaqueOriginIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,(mpark::detail::Trait)1>::~move_constructor(v71);
          v26 = v70;
          v70 = 0;
          if (v26)
          {
          }

          WebCore::ResourceRequestBase::~ResourceRequestBase(&v65);
          if (WeakRetained)
          {
          }

LABEL_74:

LABEL_75:
          return;
        }

        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v19 = v18;
          goto LABEL_9;
        }

        __break(0xC471u);
LABEL_87:
        JUMPOUT(0x19DC92954);
      }

      v27 = *(a2 + 32);
      WebKit::PageLoadState::ref((v27 + 1120));
      WebKit::PageLoadState::activeURL((v27 + 1144), &v64);
      WebCore::SecurityOrigin::createFromString(&v63, &v64, v28);
      v30 = v64;
      v64 = 0;
      if (v30 && atomic_fetch_add_explicit(v30, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v30, v29);
      }

      WebKit::PageLoadState::deref((v27 + 1120));
      WebKit::CompletionHandlerCallChecker::create(v14, sel__webView_requestGeolocationPermissionForOrigin_initiatedByFrame_decisionHandler_, &v62);
      v74 = *a5;
      *a5 = 0;
      v31 = v63;
      LOBYTE(v75) = 0;
      v77 = -1;
      LODWORD(v32) = *(v63 + 32);
      if (*(v63 + 32))
      {
        if (v32 == 255)
        {
LABEL_32:
          v34 = v62;
          v62 = 0;
          v78 = v34;
          WTF::WeakPtrFactory<IPC::MessageReceiver,WTF::DefaultWeakPtrImpl>::initializeIfNeeded((a2 + 24), a2 + 16);
          v35 = *(a2 + 24);
          atomic_fetch_add(v35, 1u);
          v36 = v74;
          v74 = 0;
          v64 = v36;
          LOBYTE(v65) = 0;
          v67 = -1;
          v37 = v77;
          if (v77)
          {
            if (v77 == 255)
            {
LABEL_35:
              v39 = v78;
              v68 = v78;
              v78 = 0;
              v79 = 0;
              v40 = malloc_type_malloc(0x58uLL, 0x10E2040C785F25AuLL);
              v41 = v40;
              *v40 = MEMORY[0x1E69E9818];
              *(v40 + 1) = 50331650;
              *(v40 + 2) = WTF::BlockPtr<void ()(WKPermissionDecision)>::fromCallable<WebKit::UIDelegate::UIClient::decidePolicyForGeolocationPermissionRequest(WebKit::WebPageProxy &,WebKit::WebFrameProxy &,WebKit::FrameInfoData const&,WTF::Function<void ()(BOOL)> &)::$_0>(WebKit::UIDelegate::UIClient::decidePolicyForGeolocationPermissionRequest(WebKit::WebPageProxy &,WebKit::WebFrameProxy &,WebKit::FrameInfoData const&,WTF::Function<void ()(BOOL)> &)::$_0)::{lambda(void *,WKPermissionDecision)#1}::__invoke;
              *(v40 + 3) = &WTF::BlockPtr<void ()(WKPermissionDecision)>::fromCallable<WebKit::UIDelegate::UIClient::decidePolicyForGeolocationPermissionRequest(WebKit::WebPageProxy &,WebKit::WebFrameProxy &,WebKit::FrameInfoData const&,WTF::Function<void ()(BOOL)> &)::$_0>(WebKit::UIDelegate::UIClient::decidePolicyForGeolocationPermissionRequest(WebKit::WebPageProxy &,WebKit::WebFrameProxy &,WebKit::FrameInfoData const&,WTF::Function<void ()(BOOL)> &)::$_0)::descriptor;
              v64 = 0;
              *(v40 + 4) = v36;
              v40[40] = 0;
              v40[64] = -1;
              if (v37)
              {
                if (v37 == 255)
                {
LABEL_38:
                  *(v40 + 9) = v39;
                  *(v40 + 10) = v35;
                  v68 = 0;
                  v69 = 0;
                  mpark::detail::move_constructor<mpark::detail::traits<WebCore::SecurityOriginData::Tuple,WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::OpaqueOriginIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,(mpark::detail::Trait)1>::~move_constructor(&v65);
                  v44 = v64;
                  v64 = 0;
                  if (v44)
                  {
                    (*(*v44 + 8))(v44);
                  }

                  v45 = v79;
                  v79 = 0;
                  if (v45 && atomic_fetch_add(v45, 0xFFFFFFFF) == 1)
                  {
                    atomic_store(1u, v45);
                    WTF::fastFree(v45, v43);
                  }

                  v46 = v78;
                  v78 = 0;
                  if (v46)
                  {
                    WTF::ThreadSafeRefCounted<WebKit::CompletionHandlerCallChecker,(WTF::DestructionThread)0>::deref(v46);
                  }

                  mpark::detail::move_constructor<mpark::detail::traits<WebCore::SecurityOriginData::Tuple,WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::OpaqueOriginIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,(mpark::detail::Trait)1>::~move_constructor(&v75);
                  v47 = v74;
                  v74 = 0;
                  if (v47)
                  {
                    (*(*v47 + 8))(v47);
                  }

                  v48 = objc_loadWeakRetained((v7 + 8));
                  API::SecurityOrigin::create(&v74);
                  v49 = *(v74 + 1);
                  if (v49)
                  {
                    objc_opt_class();
                    if ((objc_opt_isKindOfClass() & 1) == 0)
                    {
                      __break(0xC471u);
                      JUMPOUT(0x19DC92974);
                    }

                    v50 = v49;
                  }

                  WebKit::FrameInfoData::FrameInfoData(&v64, a4);
                  CFRetain(*(a2 + 8));
                  v61 = a2;
                  v51 = API::Object::newObject(0x180uLL, 59);
                  v52 = *(API::FrameInfo::FrameInfo(v51, &v64, &v61) + 8);
                  if (v52)
                  {
                    objc_opt_class();
                    if ((objc_opt_isKindOfClass() & 1) == 0)
                    {
                      __break(0xC471u);
                      goto LABEL_87;
                    }

                    v53 = v52;
                  }

                  [(WebKit::CompletionHandlerCallChecker *)v14 _webView:v48 requestGeolocationPermissionForOrigin:v49 initiatedByFrame:v52 decisionHandler:v41, v14];
                  if (v52)
                  {
                  }

                  CFRelease(*(v51 + 8));
                  if (v61)
                  {
                    CFRelease(*(v61 + 8));
                  }

                  v55 = cf;
                  cf = 0;
                  if (v55)
                  {
                    CFRelease(v55);
                  }

                  v56 = v72;
                  v72 = 0;
                  if (v56 && atomic_fetch_add_explicit(v56, 0xFFFFFFFE, memory_order_relaxed) == 2)
                  {
                    WTF::StringImpl::destroy(v56, v54);
                  }

                  mpark::detail::move_constructor<mpark::detail::traits<WebCore::SecurityOriginData::Tuple,WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::OpaqueOriginIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,(mpark::detail::Trait)1>::~move_constructor(v71);
                  v57 = v70;
                  v70 = 0;
                  if (v57)
                  {
                  }

                  WebCore::ResourceRequestBase::~ResourceRequestBase(&v65);
                  if (v49)
                  {
                  }

                  v58 = v74;
                  v74 = 0;
                  if (v58)
                  {
                    CFRelease(*(v58 + 8));
                  }

                  if (v48)
                  {
                  }

                  _Block_release(v41);
                  if (v62)
                  {
                    WTF::ThreadSafeRefCounted<WebKit::CompletionHandlerCallChecker,(WTF::DestructionThread)0>::deref(v62);
                  }

                  v60 = v63;
                  v63 = 0;
                  if (v60)
                  {
                    WTF::ThreadSafeRefCounted<WebCore::SecurityOrigin,(WTF::DestructionThread)0>::deref(v60, v59);
                  }

                  goto LABEL_74;
                }

                *(v40 + 40) = v65;
              }

              else
              {
                v42 = v65;
                v65 = 0uLL;
                *(v40 + 40) = v42;
                *(v40 + 14) = v5;
              }

              v40[64] = v37;
              goto LABEL_38;
            }

            v65 = v75;
          }

          else
          {
            v38 = v75;
            v75 = 0uLL;
            v65 = v38;
            v5 = v76;
            v66 = v76;
          }

          v67 = v77;
          goto LABEL_35;
        }

        v75 = *(v63 + 8);
      }

      else
      {
        v33 = *(v63 + 1);
        if (v33)
        {
          atomic_fetch_add_explicit(v33, 2u, memory_order_relaxed);
        }

        *&v75 = v33;
        v32 = *(v31 + 2);
        if (v32)
        {
          atomic_fetch_add_explicit(v32, 2u, memory_order_relaxed);
        }

        *(&v75 + 1) = v32;
        v76 = *(v31 + 6);
        LOBYTE(v32) = *(v31 + 32);
      }

      v77 = v32;
      goto LABEL_32;
    }
  }
}

void sub_19DC92998(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, atomic_uint *a11, uint64_t a12, WTF::StringImpl *a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, void *a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, WTF::StringImpl *a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, CFTypeRef cf)
{
  v58 = v51;
  if (v58)
  {
  }

  CFRelease(*(v53 + 8));
  if (a10)
  {
    CFRelease(*(a10 + 8));
  }

  v61 = cf;
  cf = 0;
  if (v61)
  {
    CFRelease(v61);
  }

  v62 = a43;
  a43 = 0;
  if (v62 && atomic_fetch_add_explicit(v62, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v62, v60);
  }

  mpark::detail::move_constructor<mpark::detail::traits<WebCore::SecurityOriginData::Tuple,WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::OpaqueOriginIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,(mpark::detail::Trait)1>::~move_constructor(&a39);
  v63 = a38;
  a38 = 0;
  if (v63)
  {
  }

  WebCore::ResourceRequestBase::~ResourceRequestBase(&a14);
  if (v55)
  {
  }

  v64 = *(v57 - 152);
  *(v57 - 152) = 0;
  if (v64)
  {
    CFRelease(*(v64 + 8));
  }

  if (v54)
  {
  }

  _Block_release(v52);
  if (a11)
  {
    WTF::ThreadSafeRefCounted<WebKit::CompletionHandlerCallChecker,(WTF::DestructionThread)0>::deref(a11);
  }

  if (a12)
  {
    WTF::ThreadSafeRefCounted<WebCore::SecurityOrigin,(WTF::DestructionThread)0>::deref(a12, v65);
  }

  _Unwind_Resume(a1);
}

void WebKit::UIDelegate::UIClient::didResignInputElementStrongPasswordAppearance(WebKit::UIDelegate::UIClient *this, WebKit::WebPageProxy *a2, API::Object *a3)
{
  v3 = *(this + 2);
  if (v3)
  {
    v4 = *(v3 + 8);
    if (v4)
    {
      v7 = objc_loadWeak((v4 + 8));
      if ((*(v4 + 25) & 4) != 0)
      {
        v8 = WebKit::UIDelegate::UIClient::uiDelegatePrivate(*(this + 2));
        v9 = v8;
        if (v8)
        {
          v10 = v8;
          WeakRetained = objc_loadWeakRetained((v4 + 8));
          if (a3)
          {
            v12 = *(a3 + 1);
          }

          else
          {
            v12 = 0;
          }

          [v9 _webView:WeakRetained didResignInputElementStrongPasswordAppearanceWithUserInfo:v12];
          if (WeakRetained)
          {
          }
        }
      }

      Weak = objc_loadWeak((v4 + 8));
    }
  }
}

void sub_19DC92EF4(_Unwind_Exception *a1)
{
  if (v2)
  {
  }

  _Unwind_Resume(a1);
}

void WebKit::UIDelegate::UIClient::runBeforeUnloadConfirmPanel(uint64_t a1, uint64_t a2, atomic_uint **a3, uint64_t a4, uint64_t a5, void *a6)
{
  v7 = *(a1 + 16);
  if (v7 && (v8 = *(v7 + 8)) != 0)
  {
    v13 = objc_loadWeak((v8 + 8));
    if ((*(v8 + 24) & 0x80) == 0 || (v15 = WebKit::UIDelegate::UIClient::uiDelegatePrivate(*(a1 + 16)), (v16 = v15) == 0))
    {
      (*(**a6 + 16))(*a6, 0);
LABEL_26:

      return;
    }

    v17 = v15;
    WebKit::CompletionHandlerCallChecker::create(v16, sel__webView_runBeforeUnloadConfirmPanelWithMessage_initiatedByFrame_completionHandler_, &v32);
    WeakRetained = objc_loadWeakRetained((v8 + 8));
    v19 = *a3;
    if (v19)
    {
      atomic_fetch_add_explicit(v19, 2u, memory_order_relaxed);
      MEMORY[0x19EB00B70](&v31, v19);
      if (atomic_fetch_add_explicit(v19, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v19, v20);
      }
    }

    else
    {
      v31 = &stru_1F1147748;
      v21 = &stru_1F1147748;
    }

    v22 = v31;
    CFRetain(*(a2 + 8));
    v30 = a2;
    v23 = API::Object::newObject(0x180uLL, 59);
    v24 = *(API::FrameInfo::FrameInfo(v23, a5, &v30) + 8);
    if (!v24)
    {
LABEL_17:
      v26 = *a6;
      *a6 = 0;
      v27 = v32;
      v32 = 0;
      v28 = malloc_type_malloc(0x30uLL, 0x10E0040FAC56454uLL);
      *v28 = MEMORY[0x1E69E9818];
      v28[1] = 50331650;
      v28[2] = WTF::BlockPtr<void ()(BOOL)>::fromCallable<WebKit::UIDelegate::UIClient::runBeforeUnloadConfirmPanel(WebKit::WebPageProxy &,WTF::String &&,WebKit::WebFrameProxy *,WebKit::FrameInfoData &&,WTF::Function<void ()(BOOL)> &&)::$_0>(WebKit::UIDelegate::UIClient::runBeforeUnloadConfirmPanel(WebKit::WebPageProxy &,WTF::String &&,WebKit::WebFrameProxy *,WebKit::FrameInfoData &&,WTF::Function<void ()(BOOL)> &&)::$_0)::{lambda(void *,BOOL)#1}::__invoke;
      v28[3] = &WTF::BlockPtr<void ()(BOOL)>::fromCallable<WebKit::UIDelegate::UIClient::runBeforeUnloadConfirmPanel(WebKit::WebPageProxy &,WTF::String &&,WebKit::WebFrameProxy *,WebKit::FrameInfoData &&,WTF::Function<void ()(BOOL)> &&)::$_0>(WebKit::UIDelegate::UIClient::runBeforeUnloadConfirmPanel(WebKit::WebPageProxy &,WTF::String &&,WebKit::WebFrameProxy *,WebKit::FrameInfoData &&,WTF::Function<void ()(BOOL)> &&)::$_0)::descriptor;
      v28[4] = v26;
      v28[5] = v27;
      [(WebKit::CompletionHandlerCallChecker *)v16 _webView:WeakRetained runBeforeUnloadConfirmPanelWithMessage:v22 initiatedByFrame:v24 completionHandler:v28];
      _Block_release(v28);
      if (v24)
      {
      }

      CFRelease(*(v23 + 8));
      if (v30)
      {
        CFRelease(*(v30 + 8));
      }

      v29 = v31;
      v31 = 0;
      if (v29)
      {
      }

      if (WeakRetained)
      {
      }

      goto LABEL_26;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v25 = v24;
      goto LABEL_17;
    }

    __break(0xC471u);
  }

  else
  {
    v14 = *(**a6 + 16);

    v14();
  }
}

void sub_19DC93224(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, atomic_uint *a12)
{
  if (v13)
  {
  }

  if (a12)
  {
    WTF::ThreadSafeRefCounted<WebKit::CompletionHandlerCallChecker,(WTF::DestructionThread)0>::deref(a12);
  }

  _Unwind_Resume(a1);
}

void WebKit::UIDelegate::UIClient::exceededDatabaseQuota(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, atomic_uint **a5, atomic_uint **a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *a11)
{
  v11 = *(a1 + 16);
  if (v11)
  {
    v12 = *(v11 + 8);
    if (v12)
    {
      v19 = objc_loadWeak((v12 + 8));
      if ((*(v12 + 26) & 6) == 0 || (v20 = WebKit::UIDelegate::UIClient::uiDelegatePrivate(*(a1 + 16)), (v21 = v20) == 0))
      {
        (*(**a11 + 16))(*a11, 52428800);
LABEL_33:

        return;
      }

      v22 = v20;
      if ((*(v12 + 26) & 4) != 0)
      {
        WebKit::CompletionHandlerCallChecker::create(v21, sel__webView_decideDatabaseQuotaForSecurityOrigin_databaseName_displayName_currentQuota_currentOriginUsage_currentDatabaseUsage_expectedUsage_decisionHandler_, &v49);
        WeakRetained = objc_loadWeakRetained((v12 + 8));
        v29 = *(a4 + 8);
        if (!v29 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
        {
          v30 = *a5;
          if (*a5)
          {
            atomic_fetch_add_explicit(v30, 2u, memory_order_relaxed);
            MEMORY[0x19EB00B70](&v48, v30);
            if (atomic_fetch_add_explicit(v30, 0xFFFFFFFE, memory_order_relaxed) == 2)
            {
              WTF::StringImpl::destroy(v30, v31);
            }
          }

          else
          {
            v48 = &stru_1F1147748;
            v32 = &stru_1F1147748;
          }

          v33 = *a6;
          v43 = v48;
          v44 = v29;
          if (*a6)
          {
            atomic_fetch_add_explicit(v33, 2u, memory_order_relaxed);
            MEMORY[0x19EB00B70](&v47, v33);
            v35 = a10;
            if (atomic_fetch_add_explicit(v33, 0xFFFFFFFE, memory_order_relaxed) == 2)
            {
              WTF::StringImpl::destroy(v33, v34);
            }
          }

          else
          {
            v35 = a10;
            v47 = &stru_1F1147748;
            v36 = &stru_1F1147748;
          }

          v37 = v47;
          v38 = *a11;
          *a11 = 0;
          v39 = v49;
          v49 = 0;
          v40 = malloc_type_malloc(0x30uLL, 0x10E0040FAC56454uLL);
          *v40 = MEMORY[0x1E69E9818];
          v40[1] = 50331650;
          v40[2] = WTF::BlockPtr<void ()(unsigned long long)>::fromCallable<WebKit::UIDelegate::UIClient::exceededDatabaseQuota(WebKit::WebPageProxy *,WebKit::WebFrameProxy *,API::SecurityOrigin *,WTF::String const&,WTF::String const&,unsigned long long,unsigned long long,unsigned long long,unsigned long long,WTF::Function<void ()(unsigned long long)> &&)::$_0>(WebKit::UIDelegate::UIClient::exceededDatabaseQuota(WebKit::WebPageProxy *,WebKit::WebFrameProxy *,API::SecurityOrigin *,WTF::String const&,WTF::String const&,unsigned long long,unsigned long long,unsigned long long,unsigned long long,WTF::Function<void ()(unsigned long long)> &&)::$_0)::{lambda(void *,unsigned long long)#1}::__invoke;
          v40[3] = &WTF::BlockPtr<void ()(unsigned long long)>::fromCallable<WebKit::UIDelegate::UIClient::exceededDatabaseQuota(WebKit::WebPageProxy *,WebKit::WebFrameProxy *,API::SecurityOrigin *,WTF::String const&,WTF::String const&,unsigned long long,unsigned long long,unsigned long long,unsigned long long,WTF::Function<void ()(unsigned long long)> &&)::$_0>(WebKit::UIDelegate::UIClient::exceededDatabaseQuota(WebKit::WebPageProxy *,WebKit::WebFrameProxy *,API::SecurityOrigin *,WTF::String const&,WTF::String const&,unsigned long long,unsigned long long,unsigned long long,unsigned long long,WTF::Function<void ()(unsigned long long)> &&)::$_0)::descriptor;
          v40[4] = v38;
          v40[5] = v39;
          [(WebKit::CompletionHandlerCallChecker *)v21 _webView:WeakRetained decideDatabaseQuotaForSecurityOrigin:v44 databaseName:v43 displayName:v37 currentQuota:a7 currentOriginUsage:a8 currentDatabaseUsage:a9 expectedUsage:v35 decisionHandler:v40];
          _Block_release(v40);
          v41 = v47;
          v47 = 0;
          if (v41)
          {
          }

          v42 = v48;
          v48 = 0;
          if (v42)
          {
          }

          if (WeakRetained)
          {
          }

          goto LABEL_32;
        }
      }

      else
      {
        WebKit::CompletionHandlerCallChecker::create(v21, sel__webView_decideDatabaseQuotaForSecurityOrigin_currentQuota_currentOriginUsage_currentDatabaseUsage_expectedUsage_decisionHandler_, &v49);
        v23 = objc_loadWeakRetained((v12 + 8));
        v24 = *(a4 + 8);
        v45 = v23;
        if (!v24 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
        {
          v25 = *a11;
          *a11 = 0;
          v26 = v49;
          v49 = 0;
          v27 = malloc_type_malloc(0x30uLL, 0x10E0040FAC56454uLL);
          *v27 = MEMORY[0x1E69E9818];
          v27[1] = 50331650;
          v27[2] = WTF::BlockPtr<void ()(unsigned long long)>::fromCallable<WebKit::UIDelegate::UIClient::exceededDatabaseQuota(WebKit::WebPageProxy *,WebKit::WebFrameProxy *,API::SecurityOrigin *,WTF::String const&,WTF::String const&,unsigned long long,unsigned long long,unsigned long long,unsigned long long,WTF::Function<void ()(unsigned long long)> &&)::$_1>(WebKit::UIDelegate::UIClient::exceededDatabaseQuota(WebKit::WebPageProxy *,WebKit::WebFrameProxy *,API::SecurityOrigin *,WTF::String const&,WTF::String const&,unsigned long long,unsigned long long,unsigned long long,unsigned long long,WTF::Function<void ()(unsigned long long)> &&)::$_1)::{lambda(void *,unsigned long long)#1}::__invoke;
          v27[3] = &WTF::BlockPtr<void ()(unsigned long long)>::fromCallable<WebKit::UIDelegate::UIClient::exceededDatabaseQuota(WebKit::WebPageProxy *,WebKit::WebFrameProxy *,API::SecurityOrigin *,WTF::String const&,WTF::String const&,unsigned long long,unsigned long long,unsigned long long,unsigned long long,WTF::Function<void ()(unsigned long long)> &&)::$_1>(WebKit::UIDelegate::UIClient::exceededDatabaseQuota(WebKit::WebPageProxy *,WebKit::WebFrameProxy *,API::SecurityOrigin *,WTF::String const&,WTF::String const&,unsigned long long,unsigned long long,unsigned long long,unsigned long long,WTF::Function<void ()(unsigned long long)> &&)::$_1)::descriptor;
          v27[4] = v25;
          v27[5] = v26;
          [(WebKit::CompletionHandlerCallChecker *)v21 _webView:v45 decideDatabaseQuotaForSecurityOrigin:v24 currentQuota:a7 currentOriginUsage:a8 currentDatabaseUsage:a9 expectedUsage:a10 decisionHandler:v27];
          _Block_release(v27);
          if (v45)
          {
          }

LABEL_32:

          goto LABEL_33;
        }
      }

      __break(0xC471u);
      JUMPOUT(0x19DC93774);
    }
  }

  v28 = *(**a11 + 16);

  v28();
}

void sub_19DC93798(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, void *a15, uint64_t a16, void *a17, atomic_uint *a18)
{
  if (a17)
  {
  }

  if (a14)
  {
  }

  if (a18)
  {
    WTF::ThreadSafeRefCounted<WebKit::CompletionHandlerCallChecker,(WTF::DestructionThread)0>::deref(a18);
  }

  _Unwind_Resume(a1);
}

uint64_t WebKit::UIDelegate::UIClient::lockScreenOrientation(uint64_t a1, uint64_t a2, int a3)
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

  v7 = objc_loadWeak((v4 + 8));
  if ((*(v4 + 26) & 8) != 0 && (v8 = WebKit::UIDelegate::UIClient::uiDelegatePrivate(*(a1 + 16)), (v9 = v8) != 0))
  {
    v10 = v8;
    WeakRetained = objc_loadWeakRetained((v4 + 8));
    if ((a3 - 1) < 3)
    {
      v12 = (a3 - 1) + 1;
    }

    else
    {
      v12 = 0;
    }

    v13 = [v9 _webViewLockScreenOrientation:WeakRetained lockType:v12];
    if (WeakRetained)
    {
    }
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

void sub_19DC939CC(_Unwind_Exception *a1)
{
  if (v2)
  {
  }

  _Unwind_Resume(a1);
}

void WebKit::UIDelegate::UIClient::unlockScreenOrientation(WebKit::UIDelegate::UIClient *this, WebKit::WebPageProxy *a2)
{
  v2 = *(this + 2);
  if (v2)
  {
    v3 = *(v2 + 8);
    if (v3)
    {
      v5 = objc_loadWeak((v3 + 8));
      if ((*(v3 + 26) & 0x10) != 0)
      {
        v6 = WebKit::UIDelegate::UIClient::uiDelegatePrivate(*(this + 2));
        v7 = v6;
        if (v6)
        {
          v8 = v6;
          WeakRetained = objc_loadWeakRetained((v3 + 8));
          [v7 _webViewUnlockScreenOrientation:WeakRetained];
          if (WeakRetained)
          {
          }
        }
      }

      Weak = objc_loadWeak((v3 + 8));
    }
  }
}

void sub_19DC93AAC(_Unwind_Exception *a1)
{
  v4 = v2;
  if (v4)
  {
  }

  _Unwind_Resume(a1);
}

uint64_t WebKit::UIDelegate::UIClient::takeFocus(WebKit::UIDelegate::UIClient *this, WebKit::WebPageProxy *a2, int a3)
{
  v3 = *(this + 2);
  if (!v3)
  {
    return 0;
  }

  v4 = *(v3 + 8);
  if (!v4)
  {
    return 0;
  }

  v7 = objc_loadWeak((v4 + 8));
  if ((*(v4 + 25) & 8) != 0)
  {
    v9 = WebKit::UIDelegate::UIClient::uiDelegatePrivate(*(this + 2));
    v8 = v9;
    if (v9)
    {
      v10 = v9;
      WeakRetained = objc_loadWeakRetained((v4 + 8));
      [v8 _webView:WeakRetained takeFocus:a3 != 0];
      if (WeakRetained)
      {
      }

      v8 = 1;
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

void sub_19DC93B9C(_Unwind_Exception *a1)
{
  if (v2)
  {
  }

  _Unwind_Resume(a1);
}

void WebKit::UIDelegate::UIClient::handleAutoplayEvent(uint64_t a1, uint64_t a2, unsigned int a3, char a4)
{
  v4 = *(a1 + 16);
  if (v4)
  {
    v5 = *(v4 + 8);
    if (v5)
    {
      v9 = objc_loadWeak((v5 + 8));
      if ((*(v5 + 25) & 0x10) != 0)
      {
        v10 = WebKit::UIDelegate::UIClient::uiDelegatePrivate(*(a1 + 16));
        v11 = v10;
        if (v10)
        {
          v12 = v10;
          WeakRetained = objc_loadWeakRetained((v5 + 8));
          if (a3 >= 4)
          {
            v14 = 1;
          }

          else
          {
            v14 = a3;
          }

          [v11 _webView:WeakRetained handleAutoplayEvent:v14 withFlags:a4 & 7];
          if (WeakRetained)
          {
          }
        }
      }

      Weak = objc_loadWeak((v5 + 8));
    }
  }
}

void sub_19DC93C9C(_Unwind_Exception *a1)
{
  if (v2)
  {
  }

  _Unwind_Resume(a1);
}

void WebKit::UIDelegate::UIClient::decidePolicyForNotificationPermissionRequest(uint64_t a1, uint64_t a2, uint64_t a3, WTF::RefCountedBase *a4)
{
  v5 = *(a1 + 16);
  if (v5 && (v6 = *(v5 + 8)) != 0)
  {
    v9 = objc_loadWeak((v6 + 8));
    if (*(v6 + 28) < 0 && (v10 = WebKit::UIDelegate::UIClient::uiDelegatePrivate(*(a1 + 16)), (v11 = v10) != 0))
    {
      v12 = v10;
      WebKit::CompletionHandlerCallChecker::create(v11, sel__webView_requestNotificationPermissionForSecurityOrigin_decisionHandler_, &v19);
      WeakRetained = objc_loadWeakRetained((v6 + 8));
      v14 = *(a3 + 8);
      if (v14)
      {
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          __break(0xC471u);
          return;
        }
      }

      v15 = *a4;
      *a4 = 0;
      v16 = v19;
      v19 = 0;
      v17 = malloc_type_malloc(0x30uLL, 0x10E0040FAC56454uLL);
      *v17 = MEMORY[0x1E69E9818];
      v17[1] = 50331650;
      v17[2] = WTF::BlockPtr<void ()(BOOL)>::fromCallable<WebKit::UIDelegate::UIClient::decidePolicyForNotificationPermissionRequest(WebKit::WebPageProxy &,API::SecurityOrigin &,WTF::CompletionHandler<void ()(BOOL)> &&)::$_0>(WebKit::UIDelegate::UIClient::decidePolicyForNotificationPermissionRequest(WebKit::WebPageProxy &,API::SecurityOrigin &,WTF::CompletionHandler<void ()(BOOL)> &&)::$_0)::{lambda(void *,BOOL)#1}::__invoke;
      v17[3] = &WTF::BlockPtr<void ()(BOOL)>::fromCallable<WebKit::UIDelegate::UIClient::decidePolicyForNotificationPermissionRequest(WebKit::WebPageProxy &,API::SecurityOrigin &,WTF::CompletionHandler<void ()(BOOL)> &&)::$_0>(WebKit::UIDelegate::UIClient::decidePolicyForNotificationPermissionRequest(WebKit::WebPageProxy &,API::SecurityOrigin &,WTF::CompletionHandler<void ()(BOOL)> &&)::$_0)::descriptor;
      v17[4] = v15;
      v17[5] = v16;
      [(WebKit::CompletionHandlerCallChecker *)v11 _webView:WeakRetained requestNotificationPermissionForSecurityOrigin:v14 decisionHandler:v17];
      _Block_release(v17);
      if (WeakRetained)
      {
      }
    }

    else
    {
      WTF::CompletionHandler<void ()(BOOL)>::operator()(a4, 0);
    }

    Weak = objc_loadWeak((v6 + 8));
  }

  else
  {

    WTF::CompletionHandler<void ()(BOOL)>::operator()(a4, 0);
  }
}

void WebKit::UIDelegate::UIClient::requestCookieConsent(uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 + 16);
  if (v3 && (v4 = *(v3 + 8)) != 0)
  {
    v6 = objc_loadWeak((v4 + 8));
    if ((*(v4 + 30) & 1) != 0 && (v7 = WebKit::UIDelegate::UIClient::uiDelegatePrivate(*(a1 + 16)), (v8 = v7) != 0))
    {
      v9 = v7;
      WebKit::CompletionHandlerCallChecker::create(v8, sel__webView_requestCookieConsentWithMoreInfoHandler_decisionHandler_, &v15);
      WeakRetained = objc_loadWeakRetained((v4 + 8));
      v11 = *a2;
      *a2 = 0;
      v12 = v15;
      v13 = malloc_type_malloc(0x30uLL, 0x10E0040FAC56454uLL);
      *v13 = MEMORY[0x1E69E9818];
      v13[1] = 50331650;
      v13[2] = WTF::BlockPtr<void ()(BOOL)>::fromCallable<WebKit::UIDelegate::UIClient::requestCookieConsent(WTF::CompletionHandler<void ()(WebCore::CookieConsentDecisionResult)> &&)::$_0>(WebKit::UIDelegate::UIClient::requestCookieConsent(WTF::CompletionHandler<void ()(WebCore::CookieConsentDecisionResult)> &&)::$_0)::{lambda(void *,BOOL)#1}::__invoke;
      v13[3] = &WTF::BlockPtr<void ()(BOOL)>::fromCallable<WebKit::UIDelegate::UIClient::requestCookieConsent(WTF::CompletionHandler<void ()(WebCore::CookieConsentDecisionResult)> &&)::$_0>(WebKit::UIDelegate::UIClient::requestCookieConsent(WTF::CompletionHandler<void ()(WebCore::CookieConsentDecisionResult)> &&)::$_0)::descriptor;
      v13[4] = v11;
      v13[5] = v12;
      [(WebKit::CompletionHandlerCallChecker *)v8 _webView:WeakRetained requestCookieConsentWithMoreInfoHandler:0 decisionHandler:v13];
      _Block_release(v13);
      if (WeakRetained)
      {
      }
    }

    else
    {
      WTF::CompletionHandler<void ()(WebCore::CookieConsentDecisionResult)>::operator()(a2);
    }

    Weak = objc_loadWeak((v4 + 8));
  }

  else
  {

    WTF::CompletionHandler<void ()(WebCore::CookieConsentDecisionResult)>::operator()(a2);
  }
}

uint64_t WTF::CompletionHandler<void ()(WebCore::CookieConsentDecisionResult)>::operator()(uint64_t *a1)
{
  v1 = *a1;
  *a1 = 0;
  (*(*v1 + 16))(v1);
  v2 = *(*v1 + 8);

  return v2(v1);
}

uint64_t WebKit::UIDelegate::UIClient::focusFromServiceWorker(WebKit::UIDelegate::UIClient *this, WebKit::WebPageProxy *a2)
{
  v2 = *(this + 2);
  if (!v2)
  {
    return 0;
  }

  v3 = *(v2 + 8);
  if (!v3)
  {
    return 0;
  }

  v5 = objc_loadWeak((v3 + 8));
  if ((*(v3 + 25) & 0x40) != 0 && (v6 = objc_loadWeakRetained((v3 + 16))) != 0)
  {

    v7 = WebKit::UIDelegate::UIClient::uiDelegatePrivate(*(this + 2));
    WeakRetained = objc_loadWeakRetained((v3 + 8));
    v9 = [v7 _focusWebViewFromServiceWorker:WeakRetained];
    if (WeakRetained)
    {
    }
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

void sub_19DC9430C(_Unwind_Exception *a1)
{
  if (v1)
  {
  }

  _Unwind_Resume(a1);
}

uint64_t WebKit::UIDelegate::UIClient::runOpenPanel(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6 = *(a1 + 16);
  if (!v6)
  {
    return 0;
  }

  v7 = *(v6 + 8);
  if (!v7)
  {
    return 0;
  }

  v13 = objc_loadWeak((v7 + 8));
  if ((*(v7 + 25) & 0x20) != 0)
  {
    v15 = WebKit::UIDelegate::UIClient::uiDelegatePrivate(*(a1 + 16));
    v14 = v15;
    if (v15)
    {
      v16 = v15;
      CFRetain(*(a2 + 8));
      v24 = a2;
      v17 = API::Object::newObject(0x180uLL, 59);
      API::FrameInfo::FrameInfo(v17, a4, &v24);
      if (v24)
      {
        CFRelease(*(v24 + 8));
      }

      WebKit::CompletionHandlerCallChecker::create(v14, sel_webView_runOpenPanelWithParameters_initiatedByFrame_completionHandler_, &v24);
      WeakRetained = objc_loadWeakRetained((v7 + 8));
      v19 = *(a5 + 8);
      if (v19 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0) || (v20 = *(v17 + 8)) != 0 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
      {
        __break(0xC471u);
        JUMPOUT(0x19DC94560);
      }

      v21 = v24;
      v24 = 0;
      CFRetain(*(a5 + 8));
      if (a6)
      {
        CFRetain(*(a6 + 8));
      }

      v22 = malloc_type_malloc(0x38uLL, 0x10E004099C88F60uLL);
      *v22 = MEMORY[0x1E69E9818];
      v22[1] = 50331650;
      v22[2] = WTF::BlockPtr<void ()(NSArray *)>::fromCallable<WebKit::UIDelegate::UIClient::runOpenPanel(WebKit::WebPageProxy &,WebKit::WebFrameProxy *,WebKit::FrameInfoData &&,API::OpenPanelParameters *,WebKit::WebOpenPanelResultListenerProxy *)::$_0>(WebKit::UIDelegate::UIClient::runOpenPanel(WebKit::WebPageProxy &,WebKit::WebFrameProxy *,WebKit::FrameInfoData &&,API::OpenPanelParameters *,WebKit::WebOpenPanelResultListenerProxy *)::$_0)::{lambda(void *,NSArray *)#1}::__invoke;
      v22[3] = &WTF::BlockPtr<void ()(NSArray *)>::fromCallable<WebKit::UIDelegate::UIClient::runOpenPanel(WebKit::WebPageProxy &,WebKit::WebFrameProxy *,WebKit::FrameInfoData &&,API::OpenPanelParameters *,WebKit::WebOpenPanelResultListenerProxy *)::$_0>(WebKit::UIDelegate::UIClient::runOpenPanel(WebKit::WebPageProxy &,WebKit::WebFrameProxy *,WebKit::FrameInfoData &&,API::OpenPanelParameters *,WebKit::WebOpenPanelResultListenerProxy *)::$_0)::descriptor;
      v22[4] = v21;
      v22[5] = a5;
      v22[6] = a6;
      [v14 webView:WeakRetained runOpenPanelWithParameters:v19 initiatedByFrame:v20 completionHandler:v22];
      _Block_release(v22);
      if (WeakRetained)
      {
      }

      CFRelease(*(v17 + 8));

      v14 = 1;
    }
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

void sub_19DC94584(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, atomic_uint *a10)
{
  CFRelease(*(v12 + 8));
  if (v14)
  {
    WTF::ThreadSafeRefCounted<WebKit::CompletionHandlerCallChecker,(WTF::DestructionThread)0>::deref(v14);
  }

  if (v13)
  {
  }

  if (a10)
  {
    WTF::ThreadSafeRefCounted<WebKit::CompletionHandlerCallChecker,(WTF::DestructionThread)0>::deref(a10);
  }

  if (v11)
  {
    CFRelease(*(v11 + 8));
  }

  _Unwind_Resume(a1);
}

API::SecurityOrigin *WebKit::UIDelegate::UIClient::shouldAllowDeviceOrientationAndMotionAccess(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, WTF::RefCountedBase *a5)
{
  v64 = *MEMORY[0x1E69E9840];
  v10 = *(a2 + 32);
  WebKit::PageLoadState::ref((v10 + 1120));
  WebKit::PageLoadState::activeURL((v10 + 1144), &v58);
  WebCore::SecurityOrigin::createFromString(&v51, &v58, v11);
  v13 = v58;
  v58 = 0;
  if (v13 && atomic_fetch_add_explicit(v13, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v13, v12);
  }

  WebKit::PageLoadState::deref((v10 + 1120));
  v14 = *(a1 + 16);
  if (!v14)
  {
    v15 = 0;
    goto LABEL_10;
  }

  v15 = *(v14 + 8);
  if (!v15)
  {
LABEL_10:
    v19 = 1;
LABEL_11:
    WebKit::alertForPermission(a2, 3, v51 + 8, a5);
    if (v19)
    {
      goto LABEL_13;
    }

    goto LABEL_12;
  }

  v16 = objc_loadWeak((v15 + 8));
  WeakRetained = objc_loadWeakRetained((v15 + 16));
  if (!WeakRetained || (v18 = *(v15 + 24), WeakRetained, (v18 & 0x10000) == 0))
  {
    v19 = 0;
    goto LABEL_11;
  }

  v22 = WebKit::UIDelegate::UIClient::uiDelegatePrivate(*(a1 + 16));
  v23 = v22;
  if (v22)
  {
    v24 = v22;
  }

  WebKit::CompletionHandlerCallChecker::create(v23, sel_webView_requestDeviceOrientationAndMotionPermissionForOrigin_initiatedByFrame_decisionHandler_, &v50);
  v25 = *a5;
  *a5 = 0;
  v52 = v25;
  v26 = v51;
  LOBYTE(v53) = 0;
  v55 = -1;
  LODWORD(v27) = *(v51 + 32);
  if (!*(v51 + 32))
  {
    v28 = *(v51 + 1);
    if (v28)
    {
      atomic_fetch_add_explicit(v28, 2u, memory_order_relaxed);
    }

    *&v53 = v28;
    v27 = *(v26 + 2);
    if (v27)
    {
      atomic_fetch_add_explicit(v27, 2u, memory_order_relaxed);
    }

    *(&v53 + 1) = v27;
    v54 = *(v26 + 6);
    LOBYTE(v27) = *(v26 + 32);
    goto LABEL_24;
  }

  if (v27 != 255)
  {
    v53 = *(v51 + 8);
LABEL_24:
    v55 = v27;
  }

  v29 = v50;
  v50 = 0;
  v56 = v29;
  WTF::WeakPtrFactory<IPC::MessageReceiver,WTF::DefaultWeakPtrImpl>::initializeIfNeeded((a2 + 24), a2 + 16);
  v30 = *(a2 + 24);
  atomic_fetch_add(v30, 1u);
  v31 = v52;
  v52 = 0;
  v58 = v31;
  LOBYTE(v59) = 0;
  v61 = -1;
  v32 = v55;
  if (!v55)
  {
    v33 = v53;
    v53 = 0uLL;
    v59 = v33;
    v5 = v54;
    v60 = v54;
LABEL_27:
    v61 = v55;
    goto LABEL_28;
  }

  if (v55 != 255)
  {
    v59 = v53;
    goto LABEL_27;
  }

LABEL_28:
  v34 = v56;
  v62 = v56;
  v56 = 0;
  v57 = 0;
  v35 = malloc_type_malloc(0x58uLL, 0x10E2040C785F25AuLL);
  v36 = v35;
  *v35 = MEMORY[0x1E69E9818];
  *(v35 + 1) = 50331650;
  *(v35 + 2) = WTF::BlockPtr<void ()(WKPermissionDecision)>::fromCallable<WebKit::UIDelegate::UIClient::shouldAllowDeviceOrientationAndMotionAccess(WebKit::WebPageProxy &,WebKit::WebFrameProxy &,WebKit::FrameInfoData &&,WTF::CompletionHandler<void ()(BOOL)> &&)::$_0>(WebKit::UIDelegate::UIClient::shouldAllowDeviceOrientationAndMotionAccess(WebKit::WebPageProxy &,WebKit::WebFrameProxy &,WebKit::FrameInfoData &&,WTF::CompletionHandler<void ()(BOOL)> &&)::$_0)::{lambda(void *,WKPermissionDecision)#1}::__invoke;
  *(v35 + 3) = &WTF::BlockPtr<void ()(WKPermissionDecision)>::fromCallable<WebKit::UIDelegate::UIClient::shouldAllowDeviceOrientationAndMotionAccess(WebKit::WebPageProxy &,WebKit::WebFrameProxy &,WebKit::FrameInfoData &&,WTF::CompletionHandler<void ()(BOOL)> &&)::$_0>(WebKit::UIDelegate::UIClient::shouldAllowDeviceOrientationAndMotionAccess(WebKit::WebPageProxy &,WebKit::WebFrameProxy &,WebKit::FrameInfoData &&,WTF::CompletionHandler<void ()(BOOL)> &&)::$_0)::descriptor;
  v58 = 0;
  *(v35 + 4) = v31;
  v35[40] = 0;
  v35[64] = -1;
  if (!v32)
  {
    v37 = v59;
    v59 = 0uLL;
    *(v35 + 40) = v37;
    *(v35 + 14) = v5;
LABEL_30:
    v35[64] = v32;
    goto LABEL_31;
  }

  if (v32 != 255)
  {
    *(v35 + 40) = v59;
    goto LABEL_30;
  }

LABEL_31:
  *(v35 + 9) = v34;
  *(v35 + 10) = v30;
  v62 = 0;
  v63 = 0;
  mpark::detail::move_constructor<mpark::detail::traits<WebCore::SecurityOriginData::Tuple,WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::OpaqueOriginIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,(mpark::detail::Trait)1>::~move_constructor(&v59);
  v39 = v58;
  v58 = 0;
  if (v39)
  {
    (*(*v39 + 8))(v39);
  }

  v40 = v57;
  v57 = 0;
  if (v40 && atomic_fetch_add(v40, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v40);
    WTF::fastFree(v40, v38);
  }

  v41 = v56;
  v56 = 0;
  if (v41)
  {
    WTF::ThreadSafeRefCounted<WebKit::CompletionHandlerCallChecker,(WTF::DestructionThread)0>::deref(v41);
  }

  mpark::detail::move_constructor<mpark::detail::traits<WebCore::SecurityOriginData::Tuple,WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::OpaqueOriginIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,(mpark::detail::Trait)1>::~move_constructor(&v53);
  v42 = v52;
  v52 = 0;
  if (v42)
  {
    (*(*v42 + 8))(v42);
  }

  v43 = objc_loadWeakRetained((v15 + 8));
  API::SecurityOrigin::create(&v58);
  v44 = *(v58 + 1);
  if (v44)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      goto LABEL_67;
    }

    v45 = v44;
  }

  CFRetain(*(a2 + 8));
  v52 = a2;
  v46 = API::Object::newObject(0x180uLL, 59);
  v47 = *(API::FrameInfo::FrameInfo(v46, a4, &v52) + 8);
  if (v47)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v48 = v47;
      goto LABEL_46;
    }

LABEL_67:
    __break(0xC471u);
    JUMPOUT(0x19DC94B38);
  }

LABEL_46:
  [(WebKit::CompletionHandlerCallChecker *)v23 webView:v43 requestDeviceOrientationAndMotionPermissionForOrigin:v44 initiatedByFrame:v47 decisionHandler:v36, v23];
  if (v47)
  {
  }

  CFRelease(*(v46 + 8));
  if (v52)
  {
    CFRelease(v52[1]);
  }

  if (v44)
  {
  }

  v49 = v58;
  v58 = 0;
  if (v49)
  {
    CFRelease(*(v49 + 1));
  }

  if (v43)
  {
  }

  _Block_release(v36);
  if (v50)
  {
    WTF::ThreadSafeRefCounted<WebKit::CompletionHandlerCallChecker,(WTF::DestructionThread)0>::deref(v50);
  }

  if (v23)
  {
  }

LABEL_12:

LABEL_13:
  result = v51;
  v51 = 0;
  if (result)
  {
    return WTF::ThreadSafeRefCounted<WebCore::SecurityOrigin,(WTF::DestructionThread)0>::deref(result, v20);
  }

  return result;
}

void sub_19DC94B5C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, atomic_uint *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, WTF *a18, CFTypeRef *a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25)
{
  if (v25)
  {
  }

  CFRelease(*(v29 + 8));
  if (a12)
  {
    CFRelease(*(a12 + 8));
  }

  if (v28)
  {
  }

  if (a19)
  {
    CFRelease(a19[1]);
  }

  if (v27)
  {
  }

  _Block_release(v26);
  if (a10)
  {
    WTF::ThreadSafeRefCounted<WebKit::CompletionHandlerCallChecker,(WTF::DestructionThread)0>::deref(a10);
  }

  if (a9)
  {
  }

  if (a11)
  {
    WTF::ThreadSafeRefCounted<WebCore::SecurityOrigin,(WTF::DestructionThread)0>::deref(a11, v32);
  }

  _Unwind_Resume(a1);
}

void WebKit::UIDelegate::UIClient::didChangeFontAttributes(WebKit::UIDelegate::UIClient *this, const WebCore::FontAttributes *a2)
{
  v2 = *(this + 2);
  if (v2)
  {
    v3 = *(v2 + 8);
    if (v3)
    {
      v6 = objc_loadWeak((v3 + 8));
      v7 = *(this + 2);
      if (v7)
      {
        v8 = *(v7 + 1);
        if (v8)
        {
          if ((*(v8 + 24) & 0x80000000) != 0)
          {
            v9 = WebKit::UIDelegate::UIClient::uiDelegatePrivate(v7);
            v10 = v9;
            if (v9)
            {
              v11 = v9;
            }

            WeakRetained = objc_loadWeakRetained((v3 + 8));
            WebCore::FontAttributes::createDictionary(&v14, a2);
            [v10 _webView:WeakRetained didChangeFontAttributes:v14];
            v13 = v14;
            v14 = 0;
            if (v13)
            {
            }

            if (WeakRetained)
            {
            }

            if (v10)
            {
            }
          }
        }
      }
    }
  }
}

void sub_19DC94E48(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10)
{
  if (a10)
  {
  }

  if (v11)
  {
  }

  if (v10)
  {
  }

  _Unwind_Resume(a1);
}

void WebKit::UIDelegate::UIClient::decidePolicyForUserMediaPermissionRequest(WebKit::UIDelegate::UIClient *this, WebKit::WebPageProxy *a2, WebKit::WebFrameProxy *a3, API::SecurityOrigin *a4, API::SecurityOrigin *a5, CFTypeRef *a6)
{
  v97 = *MEMORY[0x1E69E9840];
  v6 = *(this + 2);
  if (v6)
  {
    v7 = *(v6 + 8);
    if (v7)
    {
      v12 = objc_loadWeak((v7 + 8));
      v13 = WebKit::UIDelegate::UIClient::uiDelegatePrivate(*(this + 2));
      v14 = v13;
      if (!v13)
      {
        CFRetain(a6[1]);
        v16 = WTF::fastMalloc(0x10);
        *v16 = &unk_1F1102C58;
        *(v16 + 1) = a6;
        v91 = v16;
        WTF::ensureOnMainRunLoop();
        v17 = v91;
        v91 = 0;
        if (v17)
        {
          (*(*v17 + 8))(v17);
        }

        goto LABEL_122;
      }

      v15 = v13;
      if (*(a6 + 448) - 1 > 1)
      {
        v18 = objc_opt_respondsToSelector();
        v19 = objc_opt_respondsToSelector();
        if ((v18 | v19))
        {
          if (v18)
          {
            WebKit::CompletionHandlerCallChecker::create(v14, sel_webView_requestMediaCapturePermissionForOrigin_initiatedByFrame_type_decisionHandler_, &v87);
            CFRetain(a6[1]);
            v20 = v87;
            v21 = malloc_type_malloc(0x30uLL, 0x10E0040FAC56454uLL);
            *v21 = MEMORY[0x1E69E9818];
            v21[1] = 50331650;
            v21[2] = WTF::BlockPtr<void ()(WKPermissionDecision)>::fromCallable<WebKit::UIDelegate::UIClient::decidePolicyForUserMediaPermissionRequest(WebKit::WebPageProxy &,WebKit::WebFrameProxy &,API::SecurityOrigin &,API::SecurityOrigin &,WebKit::UserMediaPermissionRequestProxy &)::$_0>(WebKit::UIDelegate::UIClient::decidePolicyForUserMediaPermissionRequest(WebKit::WebPageProxy &,WebKit::WebFrameProxy &,API::SecurityOrigin &,API::SecurityOrigin &,WebKit::UserMediaPermissionRequestProxy &)::$_0)::{lambda(void *,WKPermissionDecision)#1}::__invoke;
            v21[3] = &WTF::BlockPtr<void ()(WKPermissionDecision)>::fromCallable<WebKit::UIDelegate::UIClient::decidePolicyForUserMediaPermissionRequest(WebKit::WebPageProxy &,WebKit::WebFrameProxy &,API::SecurityOrigin &,API::SecurityOrigin &,WebKit::UserMediaPermissionRequestProxy &)::$_0>(WebKit::UIDelegate::UIClient::decidePolicyForUserMediaPermissionRequest(WebKit::WebPageProxy &,WebKit::WebFrameProxy &,API::SecurityOrigin &,API::SecurityOrigin &,WebKit::UserMediaPermissionRequestProxy &)::$_0)::descriptor;
            v21[4] = a6;
            v21[5] = v20;
            v22 = *(a3 + 4);
            if (v22)
            {
              v23 = *(v22 + 8);
              if (v23)
              {
                v24 = *(v23 + 408);
                if (v24)
                {
                  CFRetain(*(v24 + 8));
                  CFRelease(*(v24 + 8));
                }
              }
            }

            WebKit::FrameInfoData::FrameInfoData(&v91, (a6 + 6));
            v25 = *(a3 + 4);
            if (v25)
            {
              v26 = *(v25 + 8);
              if (v26)
              {
                CFRetain(*(v26 - 8));
                v25 = v26 - 16;
              }

              else
              {
                v25 = 0;
              }
            }

            v90 = v25;
            v62 = API::Object::newObject(0x180uLL, 59);
            v63 = *(API::FrameInfo::FrameInfo(v62, &v91, &v90) + 8);
            if (v63)
            {
              objc_opt_class();
              if ((objc_opt_isKindOfClass() & 1) == 0)
              {
                goto LABEL_127;
              }

              v64 = v63;
              v65 = *(v62 + 8);
            }

            else
            {
              v65 = 0;
            }

            CFRelease(v65);
            if (v90)
            {
              CFRelease(*(v90 + 8));
            }

            v67 = cf;
            cf = 0;
            if (v67)
            {
              CFRelease(v67);
            }

            v68 = v95;
            v95 = 0;
            if (v68 && atomic_fetch_add_explicit(v68, 0xFFFFFFFE, memory_order_relaxed) == 2)
            {
              WTF::StringImpl::destroy(v68, v66);
            }

            mpark::detail::move_constructor<mpark::detail::traits<WebCore::SecurityOriginData::Tuple,WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::OpaqueOriginIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,(mpark::detail::Trait)1>::~move_constructor(v94);
            v69 = v93;
            v93 = 0;
            if (v69)
            {
            }

            WebCore::ResourceRequestBase::~ResourceRequestBase(v92);
            if (*(a6 + 111))
            {
              if (*(a6 + 448) - 1 >= 2)
              {
                if (*(a6 + 107))
                {
                  v70 = 2;
                }

                else
                {
                  v70 = 1;
                }
              }

              else
              {
                v70 = 1;
              }
            }

            else
            {
              v70 = 0;
            }

            WeakRetained = objc_loadWeakRetained((v7 + 8));
            v72 = *(a5 + 1);
            if (v72)
            {
              objc_opt_class();
              if ((objc_opt_isKindOfClass() & 1) == 0)
              {
                __break(0xC471u);
                JUMPOUT(0x19DC957D4);
              }
            }

            [(WebKit::CompletionHandlerCallChecker *)v14 webView:WeakRetained requestMediaCapturePermissionForOrigin:v72 initiatedByFrame:v63 type:v70 decisionHandler:v21];
            if (WeakRetained)
            {
            }

            if (v63)
            {
            }

            _Block_release(v21);
            goto LABEL_121;
          }

          if (v19)
          {
            v33 = *(a3 + 8);
            if (v33)
            {
              atomic_fetch_add_explicit(v33, 2u, memory_order_relaxed);
            }

            v91 = v33;
            v92[0] = *(a3 + 72);
            v92[1] = *(a3 + 88);
            v34 = *(*(a3 + 4) + 8);
            if (v34)
            {
              v35 = v34 - 16;
            }

            else
            {
              v35 = 0;
            }

            v36 = *(v35 + 424);
            v37 = *(v36 + 64);
            if (v37)
            {
              atomic_fetch_add_explicit(v37, 2u, memory_order_relaxed);
            }

            v87 = v37;
            v88 = *(v36 + 72);
            v89 = *(v36 + 88);
            v38 = *(a6 + 111);
            v39 = v38 == 0;
            v40 = v38 != 0;
            v41 = 2;
            if (!v39)
            {
              v41 = 3;
            }

            if (*(a6 + 107))
            {
              v42 = *(a6 + 448) - 1 >= 2;
            }

            else
            {
              v42 = 0;
            }

            if (v42)
            {
              v43 = v41;
            }

            else
            {
              v43 = v40;
            }

            WebKit::CompletionHandlerCallChecker::create(v14, sel__webView_requestUserMediaAuthorizationForDevices_url_mainFrameURL_decisionHandler_, &v90);
            CFRetain(a6[1]);
            v44 = v90;
            v45 = malloc_type_malloc(0x30uLL, 0x10E0040FAC56454uLL);
            *v45 = MEMORY[0x1E69E9818];
            v45[1] = 50331650;
            v45[2] = WTF::BlockPtr<void ()(BOOL)>::fromCallable<WebKit::UIDelegate::UIClient::decidePolicyForUserMediaPermissionRequest(WebKit::WebPageProxy &,WebKit::WebFrameProxy &,API::SecurityOrigin &,API::SecurityOrigin &,WebKit::UserMediaPermissionRequestProxy &)::$_1>(WebKit::UIDelegate::UIClient::decidePolicyForUserMediaPermissionRequest(WebKit::WebPageProxy &,WebKit::WebFrameProxy &,API::SecurityOrigin &,API::SecurityOrigin &,WebKit::UserMediaPermissionRequestProxy &)::$_1)::{lambda(void *,BOOL)#1}::__invoke;
            v45[3] = &WTF::BlockPtr<void ()(BOOL)>::fromCallable<WebKit::UIDelegate::UIClient::decidePolicyForUserMediaPermissionRequest(WebKit::WebPageProxy &,WebKit::WebFrameProxy &,API::SecurityOrigin &,API::SecurityOrigin &,WebKit::UserMediaPermissionRequestProxy &)::$_1>(WebKit::UIDelegate::UIClient::decidePolicyForUserMediaPermissionRequest(WebKit::WebPageProxy &,WebKit::WebFrameProxy &,API::SecurityOrigin &,API::SecurityOrigin &,WebKit::UserMediaPermissionRequestProxy &)::$_1)::descriptor;
            v45[4] = a6;
            v45[5] = v44;
            v46 = objc_loadWeakRetained((v7 + 8));
            WTF::URL::createCFURL(&v86, &v91);
            v47 = v86;
            WTF::URL::createCFURL(&v85, &v87);
            [(WebKit::CompletionHandlerCallChecker *)v14 _webView:v46 requestUserMediaAuthorizationForDevices:v43 url:v47 mainFrameURL:v85 decisionHandler:v45];
            v48 = v85;
            v85 = 0;
            if (v48)
            {
            }

            v49 = v86;
            v86 = 0;
            if (v49)
            {
            }

            if (v46)
            {
            }

            _Block_release(v45);
            v51 = v87;
            v87 = 0;
            if (v51 && atomic_fetch_add_explicit(v51, 0xFFFFFFFE, memory_order_relaxed) == 2)
            {
              WTF::StringImpl::destroy(v51, v50);
            }

            v52 = v91;
            v91 = 0;
            if (v52 && atomic_fetch_add_explicit(v52, 0xFFFFFFFE, memory_order_relaxed) == 2)
            {
              WTF::StringImpl::destroy(v52, v50);
            }

            goto LABEL_121;
          }

          CFRetain(a6[1]);
          v53 = WTF::fastMalloc(0x10);
          *v53 = &unk_1F1102CA8;
          *(v53 + 1) = a6;
          v91 = v53;
          WTF::ensureOnMainRunLoop();
        }

        else
        {
          CFRetain(a6[1]);
          v27 = WTF::fastMalloc(0x10);
          *v27 = &unk_1F1102C80;
          *(v27 + 1) = a6;
          v91 = v27;
          WTF::ensureOnMainRunLoop();
        }

        v28 = v91;
        v91 = 0;
        if (v28)
        {
          (*(*v28 + 8))(v28);
        }

        goto LABEL_121;
      }

      if ((objc_opt_respondsToSelector() & 1) == 0 || (*(*a6 + 4))(a6))
      {
        (*(*a6 + 3))(a6, 2);
LABEL_121:

LABEL_122:
        return;
      }

      WebKit::FrameInfoData::FrameInfoData(&v91, (a6 + 6));
      v29 = *(this + 2);
      if (v29)
      {
        v30 = *(v29 + 1);
        if (v30)
        {
          v31 = objc_loadWeak((v30 + 8));
          v32 = 0;
          v29 = *(this + 2);
          goto LABEL_56;
        }
      }

      else
      {
        v30 = 0;
      }

      v32 = 1;
LABEL_56:
      v54 = WebKit::UIDelegate::UIClient::uiDelegatePrivate(v29);
      v55 = v54;
      if (v54)
      {
        v56 = v54;
      }

      WebKit::CompletionHandlerCallChecker::create(v55, sel__webView_requestDisplayCapturePermissionForOrigin_initiatedByFrame_withSystemAudio_decisionHandler_, &v87);
      CFRetain(a6[1]);
      v57 = v87;
      v87 = 0;
      v58 = malloc_type_malloc(0x30uLL, 0x10E0040FAC56454uLL);
      *v58 = MEMORY[0x1E69E9818];
      v58[1] = 50331650;
      v58[2] = WTF::BlockPtr<void ()(WKDisplayCapturePermissionDecision)>::fromCallable<WebKit::UIDelegate::UIClient::callDisplayCapturePermissionDelegate(WebKit::WebPageProxy &,WebKit::WebFrameProxy &,WebKit::FrameInfoData &&,API::SecurityOrigin &,API::SecurityOrigin,WebKit::UserMediaPermissionRequestProxy &)::$_0>(WebKit::UIDelegate::UIClient::callDisplayCapturePermissionDelegate(WebKit::WebPageProxy &,WebKit::WebFrameProxy &,WebKit::FrameInfoData &&,API::SecurityOrigin &,API::SecurityOrigin,WebKit::UserMediaPermissionRequestProxy &)::$_0)::{lambda(void *,WKDisplayCapturePermissionDecision)#1}::__invoke;
      v58[3] = &WTF::BlockPtr<void ()(WKDisplayCapturePermissionDecision)>::fromCallable<WebKit::UIDelegate::UIClient::callDisplayCapturePermissionDelegate(WebKit::WebPageProxy &,WebKit::WebFrameProxy &,WebKit::FrameInfoData &&,API::SecurityOrigin &,API::SecurityOrigin,WebKit::UserMediaPermissionRequestProxy &)::$_0>(WebKit::UIDelegate::UIClient::callDisplayCapturePermissionDelegate(WebKit::WebPageProxy &,WebKit::WebFrameProxy &,WebKit::FrameInfoData &&,API::SecurityOrigin &,API::SecurityOrigin,WebKit::UserMediaPermissionRequestProxy &)::$_0)::descriptor;
      v58[4] = a6;
      v58[5] = v57;
      v59 = *(a3 + 4);
      if (v59)
      {
        v84 = v32;
        v60 = *(v59 + 8);
        if (v60)
        {
          v61 = *(v60 + 408);
          if (v61)
          {
            CFRetain(*(v61 + 8));
            CFRelease(*(v61 + 8));
            v59 = *(a3 + 4);
            if (!v59)
            {
              v32 = v84;
              goto LABEL_95;
            }

            v60 = *(v59 + 8);
          }
        }

        v32 = v84;
        if (v60)
        {
          CFRetain(*(v60 - 8));
          v59 = v60 - 16;
        }

        else
        {
          v59 = 0;
        }
      }

LABEL_95:
      v90 = v59;
      v73 = API::Object::newObject(0x180uLL, 59);
      v74 = *(API::FrameInfo::FrameInfo(v73, &v91, &v90) + 8);
      if (v74)
      {
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          __break(0xC471u);
          JUMPOUT(0x19DC957F4);
        }

        v75 = v74;
        v76 = *(v73 + 8);
      }

      else
      {
        v76 = 0;
      }

      CFRelease(v76);
      if (v90)
      {
        CFRelease(*(v90 + 8));
      }

      v77 = *(a6 + 448);
      v78 = objc_loadWeakRetained((v30 + 8));
      v79 = *(a5 + 1);
      if (!v79 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
      {
        [(WebKit::CompletionHandlerCallChecker *)v55 _webView:v78 requestDisplayCapturePermissionForOrigin:v79 initiatedByFrame:v74 withSystemAudio:v77 == 2 decisionHandler:v58];
        if (v78)
        {
        }

        if (v74)
        {
        }

        _Block_release(v58);
        if (v87)
        {
          WTF::ThreadSafeRefCounted<WebKit::CompletionHandlerCallChecker,(WTF::DestructionThread)0>::deref(v87);
        }

        if (v55)
        {
        }

        if ((v32 & 1) == 0)
        {
        }

        v81 = cf;
        cf = 0;
        if (v81)
        {
          CFRelease(v81);
        }

        v82 = v95;
        v95 = 0;
        if (v82 && atomic_fetch_add_explicit(v82, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v82, v80);
        }

        mpark::detail::move_constructor<mpark::detail::traits<WebCore::SecurityOriginData::Tuple,WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::OpaqueOriginIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,(mpark::detail::Trait)1>::~move_constructor(v94);
        v83 = v93;
        v93 = 0;
        if (v83)
        {
        }

        WebCore::ResourceRequestBase::~ResourceRequestBase(v92);
        goto LABEL_121;
      }

LABEL_127:
      __break(0xC471u);
      JUMPOUT(0x19DC957B4);
    }
  }
}

void sub_19DC95818(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, int a10, char a11, uint64_t a12, uint64_t a13, WTF::StringImpl *a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, WTF::StringImpl *a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, void *a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, WTF::StringImpl *a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, CFTypeRef cf)
{
  _Block_release(v60);
  if (a14)
  {
    WTF::ThreadSafeRefCounted<WebKit::CompletionHandlerCallChecker,(WTF::DestructionThread)0>::deref(a14);
  }

  if (v59)
  {
  }

  if ((a11 & 1) == 0)
  {
  }

  v65 = cf;
  cf = 0;
  if (v65)
  {
    CFRelease(v65);
  }

  v66 = a50;
  a50 = 0;
  if (v66 && atomic_fetch_add_explicit(v66, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v66, v64);
  }

  mpark::detail::move_constructor<mpark::detail::traits<WebCore::SecurityOriginData::Tuple,WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::OpaqueOriginIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,(mpark::detail::Trait)1>::~move_constructor(&a46);
  v67 = a45;
  a45 = 0;
  if (v67)
  {
  }

  WebCore::ResourceRequestBase::~ResourceRequestBase(&a21);

  _Unwind_Resume(a1);
}

void WebKit::UIDelegate::UIClient::decidePolicyForScreenCaptureUnmuting(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, WTF::RefCountedBase *a7)
{
  v8 = *(a1 + 16);
  if (v8)
  {
    v9 = *(v8 + 8);
    if (v9)
    {
      v15 = objc_loadWeak((v9 + 8));
      v16 = WebKit::UIDelegate::UIClient::uiDelegatePrivate(*(a1 + 16));
      v17 = v16;
      if (!v16)
      {
        WTF::CompletionHandler<void ()(BOOL)>::operator()(a7, 0);
LABEL_31:
        Weak = objc_loadWeak((v9 + 8));

        return;
      }

      v18 = v16;
      if ((objc_opt_respondsToSelector() & 1) == 0)
      {
        WebKit::alertForPermission(a2, 6, a6 + 16, a7);
LABEL_30:

        goto LABEL_31;
      }

      WebKit::CompletionHandlerCallChecker::create(v17, sel__webView_decidePolicyForScreenCaptureUnmutingForOrigin_initiatedByFrame_decisionHandler_, &v34);
      v19 = *a7;
      *a7 = 0;
      v20 = v34;
      v21 = malloc_type_malloc(0x30uLL, 0x10E0040FAC56454uLL);
      *v21 = MEMORY[0x1E69E9818];
      v21[1] = 50331650;
      v21[2] = WTF::BlockPtr<void ()(BOOL)>::fromCallable<WebKit::UIDelegate::UIClient::decidePolicyForScreenCaptureUnmuting(WebKit::WebPageProxy &,WebKit::WebFrameProxy &,WebKit::FrameInfoData &&,API::SecurityOrigin &,API::SecurityOrigin,WTF::CompletionHandler<void ()(BOOL)> &&)::$_0>(WebKit::UIDelegate::UIClient::decidePolicyForScreenCaptureUnmuting(WebKit::WebPageProxy &,WebKit::WebFrameProxy &,WebKit::FrameInfoData &&,API::SecurityOrigin &,API::SecurityOrigin,WTF::CompletionHandler<void ()(BOOL)> &&)::$_0)::{lambda(void *,BOOL)#1}::__invoke;
      v21[3] = &WTF::BlockPtr<void ()(BOOL)>::fromCallable<WebKit::UIDelegate::UIClient::decidePolicyForScreenCaptureUnmuting(WebKit::WebPageProxy &,WebKit::WebFrameProxy &,WebKit::FrameInfoData &&,API::SecurityOrigin &,API::SecurityOrigin,WTF::CompletionHandler<void ()(BOOL)> &&)::$_0>(WebKit::UIDelegate::UIClient::decidePolicyForScreenCaptureUnmuting(WebKit::WebPageProxy &,WebKit::WebFrameProxy &,WebKit::FrameInfoData &&,API::SecurityOrigin &,API::SecurityOrigin,WTF::CompletionHandler<void ()(BOOL)> &&)::$_0)::descriptor;
      v21[4] = v19;
      v21[5] = v20;
      v22 = *(a3 + 32);
      if (v22)
      {
        v23 = *(v22 + 8);
        if (!v23 || (v24 = *(v23 + 408)) == 0 || (CFRetain(*(v24 + 8)), CFRelease(*(v24 + 8)), (v22 = *(a3 + 32)) != 0))
        {
          v25 = *(v22 + 8);
          if (v25)
          {
            CFRetain(*(v25 - 8));
            v22 = v25 - 16;
          }

          else
          {
            v22 = 0;
          }
        }
      }

      v33 = v22;
      v26 = API::Object::newObject(0x180uLL, 59);
      v27 = *(API::FrameInfo::FrameInfo(v26, a4, &v33) + 8);
      if (v27)
      {
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          goto LABEL_34;
        }

        v28 = v27;
        v29 = *(v26 + 8);
      }

      else
      {
        v29 = 0;
      }

      CFRelease(v29);
      if (v33)
      {
        CFRelease(*(v33 + 8));
      }

      WeakRetained = objc_loadWeakRetained((v9 + 8));
      v31 = *(a6 + 8);
      if (!v31 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
      {
        [v17 _webView:WeakRetained decidePolicyForScreenCaptureUnmutingForOrigin:v31 initiatedByFrame:v27 decisionHandler:{v21, v33}];
        if (WeakRetained)
        {
        }

        if (v27)
        {
        }

        _Block_release(v21);
        goto LABEL_30;
      }

LABEL_34:
      __break(0xC471u);
      JUMPOUT(0x19DC95E80);
    }
  }

  WTF::CompletionHandler<void ()(BOOL)>::operator()(a7, 0);
}

void sub_19DC95EA4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9)
{
  _Block_release(v10);

  _Unwind_Resume(a1);
}

void WebKit::UIDelegate::UIClient::mediaCaptureStateDidChange(uint64_t a1, unint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    v3 = *(v2 + 8);
    if (v3)
    {
      v6 = objc_loadWeak((v3 + 8));
      to = 0;
      objc_copyWeak(&to, (v3 + 8));
      [objc_loadWeak(&to) didChangeValueForKey:@"mediaCaptureState"];
      v7 = WebKit::UIDelegate::UIClient::uiDelegatePrivate(*(a1 + 16));
      v8 = v7;
      if (v7)
      {
        v9 = v7;
        if ((*(v3 + 27) & 0x40) != 0)
        {
          v10 = objc_loadWeakRetained(&to);
          [v8 _webView:v10 mediaCaptureStateDidChange:(a2 >> 11) & 0xF];
          if (v10)
          {
          }
        }
      }

      objc_destroyWeak(&to);
    }
  }
}

void sub_19DC96030(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id location)
{
  if (v11)
  {
  }

  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void WebKit::UIDelegate::UIClient::printFrame(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v6 = *(a1 + 16);
  if (v6 && (v7 = *(v6 + 8)) != 0)
  {
    v10 = objc_loadWeak((v7 + 8));
    v11 = WebKit::UIDelegate::UIClient::uiDelegatePrivate(*(a1 + 16));
    v12 = v11;
    if (v11)
    {
      v13 = v11;
      API::FrameHandle::create(*(a3 + 288), 1, &v27);
      v14 = *(v7 + 24);
      if ((v14 & 0x800000) != 0)
      {
        WebKit::CompletionHandlerCallChecker::create(v12, sel__webView_printFrame_pdfFirstPageSize_completionHandler_, &v26);
        WeakRetained = objc_loadWeakRetained((v7 + 8));
        v17 = WTF::checked_objc_cast<_WKFrameHandle>(*(v27 + 1));
        WebCore::FloatSize::operator CGSize();
        v19 = v18;
        v21 = v20;
        v22 = v26;
        v26 = 0;
        v23 = *a5;
        *a5 = 0;
        v24 = malloc_type_malloc(0x30uLL, 0x10E0040FAC56454uLL);
        *v24 = MEMORY[0x1E69E9818];
        v24[1] = 50331650;
        v24[2] = WTF::BlockPtr<void ()(void)>::fromCallable<WebKit::UIDelegate::UIClient::printFrame(WebKit::WebPageProxy &,WebKit::WebFrameProxy &,WebCore::FloatSize const&,WTF::CompletionHandler<void ()(void)> &&)::$_0>(WebKit::UIDelegate::UIClient::printFrame(WebKit::WebPageProxy &,WebKit::WebFrameProxy &,WebCore::FloatSize const&,WTF::CompletionHandler<void ()(void)> &&)::$_0)::{lambda(void *)#1}::__invoke;
        v24[3] = &WTF::BlockPtr<void ()(void)>::fromCallable<WebKit::UIDelegate::UIClient::printFrame(WebKit::WebPageProxy &,WebKit::WebFrameProxy &,WebCore::FloatSize const&,WTF::CompletionHandler<void ()(void)> &&)::$_0>(WebKit::UIDelegate::UIClient::printFrame(WebKit::WebPageProxy &,WebKit::WebFrameProxy &,WebCore::FloatSize const&,WTF::CompletionHandler<void ()(void)> &&)::$_0)::descriptor;
        v24[4] = v22;
        v24[5] = v23;
        [(WebKit::CompletionHandlerCallChecker *)v12 _webView:WeakRetained printFrame:v17 pdfFirstPageSize:v24 completionHandler:v19, v21];
        _Block_release(v24);
        if (WeakRetained)
        {
        }
      }

      else
      {
        if ((v14 & 0x400000) != 0)
        {
          v15 = objc_loadWeakRetained((v7 + 8));
          [(WebKit::CompletionHandlerCallChecker *)v12 _webView:v15 printFrame:WTF::checked_objc_cast<_WKFrameHandle>(*(v27 + 1))];
          if (v15)
          {
          }
        }

        WTF::CompletionHandler<void ()(void)>::operator()(a5);
      }

      v25 = v27;
      v27 = 0;
      if (v25)
      {
        CFRelease(*(v25 + 1));
      }
    }

    else
    {
      WTF::CompletionHandler<void ()(void)>::operator()(a5);
    }
  }

  else
  {

    WTF::CompletionHandler<void ()(void)>::operator()(a5);
  }
}

void sub_19DC96294(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  if (a10)
  {
    CFRelease(*(a10 + 8));
  }

  _Unwind_Resume(a1);
}

void WebKit::UIDelegate::UIClient::close(WebKit::UIDelegate::UIClient *this, WebKit::WebPageProxy *a2)
{
  v2 = *(this + 2);
  if (!v2)
  {
    return;
  }

  v3 = *(v2 + 8);
  if (!v3)
  {
    return;
  }

  v5 = objc_loadWeak((v3 + 8));
  v6 = *(v3 + 24);
  if ((v6 & 0x2000000) != 0)
  {
    v11 = WebKit::UIDelegate::UIClient::uiDelegatePrivate(*(this + 2));
    v8 = v11;
    if (v11)
    {
      v12 = v11;
      WeakRetained = objc_loadWeakRetained((v3 + 8));
      [v8 _webViewClose:WeakRetained];
      goto LABEL_9;
    }
  }

  else if ((v6 & 0x1000000) != 0)
  {
    v7 = WebKit::UIDelegate::UIClient::uiDelegatePrivate(*(this + 2));
    v8 = v7;
    if (v7)
    {
      v9 = v7;
      WeakRetained = objc_loadWeakRetained((v3 + 8));
      [v8 webViewDidClose:WeakRetained];
LABEL_9:
      if (WeakRetained)
      {
      }
    }
  }

  Weak = objc_loadWeak((v3 + 8));
}

void sub_19DC9645C(_Unwind_Exception *a1)
{
  v4 = v2;
  if (v4)
  {
  }

  _Unwind_Resume(a1);
}

void WebKit::UIDelegate::UIClient::fullscreenMayReturnToInline(WebKit::UIDelegate::UIClient *this, WebKit::WebPageProxy *a2)
{
  v2 = *(this + 2);
  if (v2)
  {
    v3 = *(v2 + 8);
    if (v3)
    {
      v5 = objc_loadWeak((v3 + 8));
      if ((*(v3 + 27) & 4) != 0)
      {
        v6 = WebKit::UIDelegate::UIClient::uiDelegatePrivate(*(this + 2));
        v7 = v6;
        if (v6)
        {
          v8 = v6;
          WeakRetained = objc_loadWeakRetained((v3 + 8));
          [v7 _webViewFullscreenMayReturnToInline:WeakRetained];
          if (WeakRetained)
          {
          }
        }
      }

      Weak = objc_loadWeak((v3 + 8));
    }
  }
}

void sub_19DC96550(_Unwind_Exception *a1)
{
  v4 = v2;
  if (v4)
  {
  }

  _Unwind_Resume(a1);
}

void WebKit::UIDelegate::UIClient::willEnterFullscreen(WebKit::UIDelegate::UIClient *this, WebKit::WebPageProxy *a2)
{
  v2 = *(this + 2);
  if (v2)
  {
    v3 = *(v2 + 8);
    if (v3)
    {
      v5 = objc_loadWeak((v3 + 8));
      if ((*(v3 + 27) & 8) != 0)
      {
        v6 = WebKit::UIDelegate::UIClient::uiDelegatePrivate(*(this + 2));
        v7 = v6;
        if (v6)
        {
          v8 = v6;
          WeakRetained = objc_loadWeakRetained((v3 + 8));
          [v7 _webViewWillEnterFullscreen:WeakRetained];
          if (WeakRetained)
          {
          }
        }
      }

      Weak = objc_loadWeak((v3 + 8));
    }
  }
}

void sub_19DC96638(_Unwind_Exception *a1)
{
  v4 = v2;
  if (v4)
  {
  }

  _Unwind_Resume(a1);
}

void WebKit::UIDelegate::UIClient::didEnterFullscreen(WebKit::UIDelegate::UIClient *this, WebKit::WebPageProxy *a2)
{
  v2 = *(this + 2);
  if (v2)
  {
    v3 = *(v2 + 8);
    if (v3)
    {
      v5 = objc_loadWeak((v3 + 8));
      if ((*(v3 + 27) & 0x10) != 0)
      {
        v6 = WebKit::UIDelegate::UIClient::uiDelegatePrivate(*(this + 2));
        v7 = v6;
        if (v6)
        {
          v8 = v6;
          WeakRetained = objc_loadWeakRetained((v3 + 8));
          [v7 _webViewDidEnterFullscreen:WeakRetained];
          if (WeakRetained)
          {
          }
        }
      }

      Weak = objc_loadWeak((v3 + 8));
    }
  }
}

void sub_19DC96720(_Unwind_Exception *a1)
{
  v4 = v2;
  if (v4)
  {
  }

  _Unwind_Resume(a1);
}

void WebKit::UIDelegate::UIClient::didExitFullscreen(WebKit::UIDelegate::UIClient *this, WebKit::WebPageProxy *a2)
{
  v2 = *(this + 2);
  if (v2)
  {
    v3 = *(v2 + 8);
    if (v3)
    {
      v5 = objc_loadWeak((v3 + 8));
      if ((*(v3 + 27) & 0x20) != 0)
      {
        v6 = WebKit::UIDelegate::UIClient::uiDelegatePrivate(*(this + 2));
        v7 = v6;
        if (v6)
        {
          v8 = v6;
          WeakRetained = objc_loadWeakRetained((v3 + 8));
          [v7 _webViewDidExitFullscreen:WeakRetained];
          if (WeakRetained)
          {
          }
        }
      }

      Weak = objc_loadWeak((v3 + 8));
    }
  }
}

void sub_19DC96808(_Unwind_Exception *a1)
{
  v4 = v2;
  if (v4)
  {
  }

  _Unwind_Resume(a1);
}

uint64_t WebKit::UIDelegate::UIClient::shouldIncludeAppLinkActionsForElement(WebKit::UIDelegate::UIClient *this, _WKActivatedElementInfo *a2)
{
  v2 = *(this + 2);
  if (!v2)
  {
    return 1;
  }

  v3 = *(v2 + 8);
  if (!v3)
  {
    return 1;
  }

  v6 = objc_loadWeak((v3 + 8));
  if ((*(v3 + 28) & 1) != 0 && (v7 = WebKit::UIDelegate::UIClient::uiDelegatePrivate(*(this + 2)), (v8 = v7) != 0))
  {
    v9 = v7;
    WeakRetained = objc_loadWeakRetained((v3 + 8));
    v11 = [v8 _webView:WeakRetained shouldIncludeAppLinkActionsForElement:a2];
    if (WeakRetained)
    {
    }
  }

  else
  {
    v11 = 1;
  }

  return v11;
}

void sub_19DC968F4(_Unwind_Exception *a1)
{
  if (v2)
  {
  }

  _Unwind_Resume(a1);
}

void WebKit::UIDelegate::UIClient::actionsForElement(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, void *a4@<X8>)
{
  v6 = *(a1 + 16);
  if (v6 && (v7 = *(v6 + 8)) != 0)
  {
    v10 = objc_loadWeak((v7 + 8));
    if ((*(v7 + 28) & 2) != 0 && (v11 = WebKit::UIDelegate::UIClient::uiDelegatePrivate(*(a1 + 16)), (v12 = v11) != 0))
    {
      v13 = v11;
      WeakRetained = objc_loadWeakRetained((v7 + 8));
      v15 = [v12 _webView:WeakRetained actionsForElement:a2 defaultActions:*a3];
      *a4 = v15;
      if (v15)
      {
        v16 = v15;
      }

      if (WeakRetained)
      {
      }
    }

    else
    {
      v17 = *a3;
      *a3 = 0;
      *a4 = v17;
    }

    Weak = objc_loadWeak((v7 + 8));
  }

  else
  {
    v19 = *a3;
    *a3 = 0;
    *a4 = v19;
  }
}

void WebKit::UIDelegate::UIClient::didNotHandleTapAsClick(WebKit::UIDelegate::UIClient *this, const WebCore::IntPoint *a2)
{
  v2 = *(this + 2);
  if (v2)
  {
    v3 = *(v2 + 8);
    if (v3)
    {
      v5 = objc_loadWeak((v3 + 8));
      if ((*(v3 + 28) & 4) != 0)
      {
        v6 = WebKit::UIDelegate::UIClient::uiDelegatePrivate(*(this + 2));
        v7 = v6;
        if (v6)
        {
          v8 = v6;
          WeakRetained = objc_loadWeakRetained((v3 + 8));
          WebCore::IntPoint::operator CGPoint();
          [v7 _webView:WeakRetained didNotHandleTapAsClickAtPoint:?];
          if (WeakRetained)
          {
          }
        }
      }

      Weak = objc_loadWeak((v3 + 8));
    }
  }
}

void WebKit::UIDelegate::UIClient::statusBarWasTapped(WebKit::UIDelegate::UIClient *this)
{
  v1 = *(this + 2);
  if (v1)
  {
    v2 = *(v1 + 8);
    if (v2)
    {
      v4 = objc_loadWeak((v2 + 8));
      if ((*(v2 + 28) & 8) != 0)
      {
        v5 = WebKit::UIDelegate::UIClient::uiDelegatePrivate(*(this + 2));
        v6 = v5;
        if (v5)
        {
          v7 = v5;
          WeakRetained = objc_loadWeakRetained((v2 + 8));
          [v6 _webViewStatusBarWasTapped:WeakRetained];
          if (WeakRetained)
          {
          }
        }
      }

      Weak = objc_loadWeak((v2 + 8));
    }
  }
}

void sub_19DC96BE8(_Unwind_Exception *a1)
{
  v4 = v2;
  if (v4)
  {
  }

  _Unwind_Resume(a1);
}

uint64_t WebKit::UIDelegate::UIClient::setShouldKeepScreenAwake(WebKit::UIDelegate::UIClient *this, uint64_t a2)
{
  v2 = *(this + 2);
  if (!v2)
  {
    return 0;
  }

  v3 = *(v2 + 8);
  if (!v3)
  {
    return 0;
  }

  v6 = objc_loadWeak((v3 + 8));
  if ((*(v3 + 28) & 0x10) != 0)
  {
    v8 = WebKit::UIDelegate::UIClient::uiDelegatePrivate(*(this + 2));
    v7 = v8;
    if (v8)
    {
      v9 = v8;
      WeakRetained = objc_loadWeakRetained((v3 + 8));
      [v7 _webView:WeakRetained setShouldKeepScreenAwake:a2];
      if (WeakRetained)
      {
      }

      v7 = 1;
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

void sub_19DC96CD4(_Unwind_Exception *a1)
{
  if (v2)
  {
  }

  _Unwind_Resume(a1);
}

uint64_t WebKit::UIDelegate::UIClient::presentingViewController(WebKit::UIDelegate::UIClient *this)
{
  v1 = *(this + 2);
  if (!v1)
  {
    return 0;
  }

  v2 = *(v1 + 8);
  if (!v2)
  {
    return 0;
  }

  v4 = objc_loadWeak((v2 + 8));
  if ((*(v2 + 28) & 0x20) != 0 && (v5 = WebKit::UIDelegate::UIClient::uiDelegatePrivate(*(this + 2)), (v6 = v5) != 0))
  {
    v7 = v5;
    WeakRetained = objc_loadWeakRetained((v2 + 8));
    v9 = [v6 _presentingViewControllerForWebView:WeakRetained];
    if (WeakRetained)
    {
    }
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

void sub_19DC96DB0(_Unwind_Exception *a1)
{
  if (v2)
  {
  }

  _Unwind_Resume(a1);
}

unint64_t WebKit::UIDelegate::UIClient::dataDetectionReferenceDate(WebKit::UIDelegate::UIClient *this)
{
  v1 = *(this + 2);
  if (!v1 || (v2 = *(v1 + 8)) == 0)
  {
    v14 = 0;
    v5 = 0;
    return v5 | v14;
  }

  v4 = objc_loadWeak((v2 + 8));
  if ((*(v2 + 28) & 0x40) != 0)
  {
    v6 = WebKit::UIDelegate::UIClient::uiDelegatePrivate(*(this + 2));
    v7 = v6;
    if (v6)
    {
      v8 = v6;
      WeakRetained = objc_loadWeakRetained((v2 + 8));
      v10 = [v7 _dataDetectionContextForWebView:WeakRetained];
      ReferenceDate = WebCore::DataDetection::extractReferenceDate(v10, v11);
      v13 = ReferenceDate;
      v5 = ReferenceDate & 0xFFFFFFFFFFFFFF00;
      if (WeakRetained)
      {
      }

      v14 = v13;
      goto LABEL_11;
    }

    v5 = 0;
  }

  else
  {
    v5 = 0;
  }

  v14 = 0;
LABEL_11:

  return v5 | v14;
}

void WebKit::UIDelegate::UIClient::didShowSafeBrowsingWarning(WebKit::UIDelegate::UIClient *this)
{
  v1 = *(this + 2);
  if (v1)
  {
    v2 = *(v1 + 8);
    if (v2)
    {
      v4 = objc_loadWeak((v2 + 8));
      if ((*(v2 + 28) & 0x200) != 0)
      {
        v5 = WebKit::UIDelegate::UIClient::uiDelegatePrivate(*(this + 2));
        v6 = v5;
        if (v5)
        {
          v7 = v5;
          WeakRetained = objc_loadWeakRetained((v2 + 8));
          [v6 _webViewDidShowSafeBrowsingWarning:WeakRetained];
          if (WeakRetained)
          {
          }
        }
      }

      Weak = objc_loadWeak((v2 + 8));
    }
  }
}

void sub_19DC96FA4(_Unwind_Exception *a1)
{
  v4 = v2;
  if (v4)
  {
  }

  _Unwind_Resume(a1);
}

void WebKit::UIDelegate::UIClient::confirmPDFOpening(uint64_t a1, uint64_t a2, WTF::URL *a3, uint64_t a4, WTF::RefCountedBase *a5)
{
  v6 = *(a1 + 16);
  if (v6 && (v7 = *(v6 + 8)) != 0)
  {
    v12 = objc_loadWeak((v7 + 8));
    if ((*(v7 + 28) & 0x400) == 0 || (v13 = WebKit::UIDelegate::UIClient::uiDelegatePrivate(*(a1 + 16)), (v14 = v13) == 0))
    {
      WTF::CompletionHandler<void ()(BOOL)>::operator()(a5, 1);
LABEL_22:

      return;
    }

    v15 = v13;
    WebKit::CompletionHandlerCallChecker::create(v14, sel__webView_shouldAllowPDFAtURL_toOpenFromFrame_completionHandler_, &v27);
    WeakRetained = objc_loadWeakRetained((v7 + 8));
    WTF::URL::createCFURL(&v26, a3);
    v17 = v26;
    CFRetain(*(a2 + 8));
    v25 = a2;
    v18 = API::Object::newObject(0x180uLL, 59);
    v19 = *(API::FrameInfo::FrameInfo(v18, a4, &v25) + 8);
    if (!v19)
    {
LABEL_12:
      v21 = *a5;
      *a5 = 0;
      v22 = v27;
      v27 = 0;
      v23 = malloc_type_malloc(0x30uLL, 0x10E0040FAC56454uLL);
      *v23 = MEMORY[0x1E69E9818];
      v23[1] = 50331650;
      v23[2] = WTF::BlockPtr<void ()(BOOL)>::fromCallable<WebKit::UIDelegate::UIClient::confirmPDFOpening(WebKit::WebPageProxy &,WTF::URL const&,WebKit::FrameInfoData &&,WTF::CompletionHandler<void ()(BOOL)> &&)::$_0>(WebKit::UIDelegate::UIClient::confirmPDFOpening(WebKit::WebPageProxy &,WTF::URL const&,WebKit::FrameInfoData &&,WTF::CompletionHandler<void ()(BOOL)> &&)::$_0)::{lambda(void *,BOOL)#1}::__invoke;
      v23[3] = &WTF::BlockPtr<void ()(BOOL)>::fromCallable<WebKit::UIDelegate::UIClient::confirmPDFOpening(WebKit::WebPageProxy &,WTF::URL const&,WebKit::FrameInfoData &&,WTF::CompletionHandler<void ()(BOOL)> &&)::$_0>(WebKit::UIDelegate::UIClient::confirmPDFOpening(WebKit::WebPageProxy &,WTF::URL const&,WebKit::FrameInfoData &&,WTF::CompletionHandler<void ()(BOOL)> &&)::$_0)::descriptor;
      v23[4] = v21;
      v23[5] = v22;
      [(WebKit::CompletionHandlerCallChecker *)v14 _webView:WeakRetained shouldAllowPDFAtURL:v17 toOpenFromFrame:v19 completionHandler:v23];
      _Block_release(v23);
      if (v19)
      {
      }

      CFRelease(*(v18 + 8));
      if (v25)
      {
        CFRelease(*(v25 + 8));
      }

      v24 = v26;
      v26 = 0;
      if (v24)
      {
      }

      if (WeakRetained)
      {
      }

      goto LABEL_22;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v20 = v19;
      goto LABEL_12;
    }

    __break(0xC471u);
  }

  else
  {

    WTF::CompletionHandler<void ()(BOOL)>::operator()(a5, 1);
  }
}

void WebKit::UIDelegate::UIClient::runWebAuthenticationPanel(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t *a6)
{
  v7 = *(a1 + 16);
  if (v7)
  {
    v8 = *(v7 + 8);
    if (v8)
    {
      v13 = objc_loadWeak((v8 + 8));
      if ((*(v8 + 28) & 0x800) == 0 || (v14 = WebKit::UIDelegate::UIClient::uiDelegatePrivate(*(a1 + 16)), (v15 = v14) == 0))
      {
        WTF::CompletionHandler<void ()(WebKit::WebAuthenticationPanelResult)>::operator()(a6);
LABEL_22:
        Weak = objc_loadWeak((v8 + 8));

        return;
      }

      v16 = v14;
      WebKit::CompletionHandlerCallChecker::create(v15, sel__webView_runWebAuthenticationPanel_initiatedByFrame_completionHandler_, &v27);
      WeakRetained = objc_loadWeakRetained((v8 + 8));
      v18 = *(a3 + 8);
      if (v18 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
      {
        __break(0xC471u);
      }

      else
      {
        CFRetain(*(a2 + 8));
        v26 = a2;
        v19 = API::Object::newObject(0x180uLL, 59);
        v20 = *(API::FrameInfo::FrameInfo(v19, a5, &v26) + 8);
        if (!v20)
        {
LABEL_14:
          v22 = *a6;
          *a6 = 0;
          v23 = v27;
          v27 = 0;
          v24 = malloc_type_malloc(0x30uLL, 0x10E0040FAC56454uLL);
          *v24 = MEMORY[0x1E69E9818];
          v24[1] = 50331650;
          v24[2] = WTF::BlockPtr<void ()(_WKWebAuthenticationPanelResult)>::fromCallable<WebKit::UIDelegate::UIClient::runWebAuthenticationPanel(WebKit::WebPageProxy &,API::WebAuthenticationPanel &,WebKit::WebFrameProxy &,WebKit::FrameInfoData &&,WTF::CompletionHandler<void ()(WebKit::WebAuthenticationPanelResult)> &&)::$_0>(WebKit::UIDelegate::UIClient::runWebAuthenticationPanel(WebKit::WebPageProxy &,API::WebAuthenticationPanel &,WebKit::WebFrameProxy &,WebKit::FrameInfoData &&,WTF::CompletionHandler<void ()(WebKit::WebAuthenticationPanelResult)> &&)::$_0)::{lambda(void *,_WKWebAuthenticationPanelResult)#1}::__invoke;
          v24[3] = &WTF::BlockPtr<void ()(_WKWebAuthenticationPanelResult)>::fromCallable<WebKit::UIDelegate::UIClient::runWebAuthenticationPanel(WebKit::WebPageProxy &,API::WebAuthenticationPanel &,WebKit::WebFrameProxy &,WebKit::FrameInfoData &&,WTF::CompletionHandler<void ()(WebKit::WebAuthenticationPanelResult)> &&)::$_0>(WebKit::UIDelegate::UIClient::runWebAuthenticationPanel(WebKit::WebPageProxy &,API::WebAuthenticationPanel &,WebKit::WebFrameProxy &,WebKit::FrameInfoData &&,WTF::CompletionHandler<void ()(WebKit::WebAuthenticationPanelResult)> &&)::$_0)::descriptor;
          v24[4] = v22;
          v24[5] = v23;
          [(WebKit::CompletionHandlerCallChecker *)v15 _webView:WeakRetained runWebAuthenticationPanel:v18 initiatedByFrame:v20 completionHandler:v24];
          _Block_release(v24);
          if (v20)
          {
          }

          CFRelease(*(v19 + 8));
          if (v26)
          {
            CFRelease(*(v26 + 8));
          }

          if (WeakRetained)
          {
          }

          goto LABEL_22;
        }

        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v21 = v20;
          goto LABEL_14;
        }

        __break(0xC471u);
      }

      JUMPOUT(0x19DC975A0);
    }
  }

  WTF::CompletionHandler<void ()(WebKit::WebAuthenticationPanelResult)>::operator()(a6);
}

uint64_t WTF::CompletionHandler<void ()(WebKit::WebAuthenticationPanelResult)>::operator()(uint64_t *a1)
{
  v1 = *a1;
  *a1 = 0;
  (*(*v1 + 16))(v1);
  v2 = *(*v1 + 8);

  return v2(v1);
}

void WebKit::UIDelegate::UIClient::requestWebAuthenticationConditonalMediationRegistration(uint64_t a1, atomic_uint **a2, uint64_t *a3)
{
  v4 = *(a1 + 16);
  if (v4 && (v5 = *(v4 + 8)) != 0)
  {
    v8 = objc_loadWeak((v5 + 8));
    if ((*(v5 + 28) & 0x1000) != 0 && (v9 = WebKit::UIDelegate::UIClient::uiDelegatePrivate(*(a1 + 16)), (v10 = v9) != 0))
    {
      v11 = v9;
      WebKit::CompletionHandlerCallChecker::create(v10, sel__webView_requestWebAuthenticationConditionalMediationRegistrationForUser_completionHandler_, &v22);
      WeakRetained = objc_loadWeakRetained((v5 + 8));
      v13 = *a2;
      if (v13)
      {
        atomic_fetch_add_explicit(v13, 2u, memory_order_relaxed);
        MEMORY[0x19EB00B70](&v21, v13);
        if (atomic_fetch_add_explicit(v13, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v13, v14);
        }
      }

      else
      {
        v21 = &stru_1F1147748;
        v15 = &stru_1F1147748;
      }

      v16 = v21;
      v17 = v22;
      v18 = *a3;
      *a3 = 0;
      v22 = 0;
      v19 = malloc_type_malloc(0x30uLL, 0x10E0040FAC56454uLL);
      *v19 = MEMORY[0x1E69E9818];
      v19[1] = 50331650;
      v19[2] = WTF::BlockPtr<void ()(BOOL)>::fromCallable<WebKit::UIDelegate::UIClient::requestWebAuthenticationConditonalMediationRegistration(WTF::String const&,WTF::CompletionHandler<void ()(std::optional<BOOL>)> &&)::$_0>(WebKit::UIDelegate::UIClient::requestWebAuthenticationConditonalMediationRegistration(WTF::String const&,WTF::CompletionHandler<void ()(std::optional<BOOL>)> &&)::$_0)::{lambda(void *,BOOL)#1}::__invoke;
      v19[3] = &WTF::BlockPtr<void ()(BOOL)>::fromCallable<WebKit::UIDelegate::UIClient::requestWebAuthenticationConditonalMediationRegistration(WTF::String const&,WTF::CompletionHandler<void ()(std::optional<BOOL>)> &&)::$_0>(WebKit::UIDelegate::UIClient::requestWebAuthenticationConditonalMediationRegistration(WTF::String const&,WTF::CompletionHandler<void ()(std::optional<BOOL>)> &&)::$_0)::descriptor;
      v19[4] = v18;
      v19[5] = v17;
      [(WebKit::CompletionHandlerCallChecker *)v10 _webView:WeakRetained requestWebAuthenticationConditionalMediationRegistrationForUser:v16 completionHandler:v19];
      _Block_release(v19);
      v20 = v21;
      v21 = 0;
      if (v20)
      {
      }

      if (WeakRetained)
      {
      }
    }

    else
    {
      WTF::CompletionHandler<void ()(std::optional<BOOL>)>::operator()(a3, 0);
    }
  }

  else
  {

    WTF::CompletionHandler<void ()(std::optional<BOOL>)>::operator()(a3, 0);
  }
}

void sub_19DC97948(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, atomic_uint *a10)
{
  if (v11)
  {
  }

  if (a10)
  {
    WTF::ThreadSafeRefCounted<WebKit::CompletionHandlerCallChecker,(WTF::DestructionThread)0>::deref(a10);
  }

  _Unwind_Resume(a1);
}

uint64_t WTF::CompletionHandler<void ()(std::optional<BOOL>)>::operator()(uint64_t *a1, unsigned __int16 a2)
{
  v2 = *a1;
  *a1 = 0;
  (*(*v2 + 16))(v2, a2);
  v3 = *(*v2 + 8);

  return v3(v2);
}

void WebKit::UIDelegate::UIClient::hasVideoInPictureInPictureDidChange(WebKit::UIDelegate::UIClient *this, WebKit::WebPageProxy *a2, uint64_t a3)
{
  v3 = *(this + 2);
  if (v3)
  {
    v4 = *(v3 + 8);
    if (v4)
    {
      v7 = objc_loadWeak((v4 + 8));
      if ((*(v4 + 28) & 0x100) != 0)
      {
        v8 = WebKit::UIDelegate::UIClient::uiDelegatePrivate(*(this + 2));
        v9 = v8;
        if (v8)
        {
          v10 = v8;
          WeakRetained = objc_loadWeakRetained((v4 + 8));
          [v9 _webView:WeakRetained hasVideoInPictureInPictureDidChange:a3];
          if (WeakRetained)
          {
          }
        }
      }

      Weak = objc_loadWeak((v4 + 8));
    }
  }
}

void sub_19DC97B88(_Unwind_Exception *a1)
{
  if (v2)
  {
  }

  _Unwind_Resume(a1);
}

void WebKit::UIDelegate::UIClient::imageOrMediaDocumentSizeChanged(WebKit::UIDelegate::UIClient *this, const WebCore::IntSize *a2)
{
  v2 = *(this + 2);
  if (v2)
  {
    v3 = *(v2 + 8);
    if (v3)
    {
      v5 = objc_loadWeak((v3 + 8));
      if ((*(v3 + 28) & 0x80) != 0)
      {
        v6 = WebKit::UIDelegate::UIClient::uiDelegatePrivate(*(this + 2));
        v7 = v6;
        if (v6)
        {
          v8 = v6;
          WeakRetained = objc_loadWeakRetained((v3 + 8));
          WebCore::IntSize::operator CGSize();
          [v7 _webView:WeakRetained imageOrMediaDocumentSizeChanged:?];
          if (WeakRetained)
          {
          }
        }
      }

      Weak = objc_loadWeak((v3 + 8));
    }
  }
}

void WebKit::UIDelegate::UIClient::queryPermission(uint64_t a1, atomic_uint **a2, uint64_t a3, uint64_t *a4)
{
  v5 = *(a1 + 16);
  if (v5 && (v6 = *(v5 + 8)) != 0)
  {
    v10 = objc_loadWeak((v6 + 8));
    v11 = WebKit::UIDelegate::UIClient::uiDelegatePrivate(*(a1 + 16));
    v12 = v11;
    if (!v11)
    {
      WTF::CompletionHandler<void ()(std::optional<WebCore::PermissionState>)>::operator()(a4, 0x102u);
LABEL_21:

      return;
    }

    v13 = v11;
    if ((objc_opt_respondsToSelector() & 1) == 0)
    {
      WTF::CompletionHandler<void ()(std::optional<WebCore::PermissionState>)>::operator()(a4, 0x102u);
LABEL_20:

      goto LABEL_21;
    }

    WebKit::CompletionHandlerCallChecker::create(v12, sel__webView_queryPermission_forOrigin_completionHandler_, &v25);
    WeakRetained = objc_loadWeakRetained((v6 + 8));
    v15 = *a2;
    if (v15)
    {
      atomic_fetch_add_explicit(v15, 2u, memory_order_relaxed);
      MEMORY[0x19EB00B70](&v24, v15);
      if (atomic_fetch_add_explicit(v15, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v15, v16);
      }
    }

    else
    {
      v24 = &stru_1F1147748;
      v17 = &stru_1F1147748;
    }

    v18 = v24;
    v19 = *(a3 + 8);
    if (!v19 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      v20 = *a4;
      *a4 = 0;
      v21 = v25;
      v25 = 0;
      v22 = malloc_type_malloc(0x30uLL, 0x10E0040FAC56454uLL);
      *v22 = MEMORY[0x1E69E9818];
      v22[1] = 50331650;
      v22[2] = WTF::BlockPtr<void ()(WKPermissionDecision)>::fromCallable<WebKit::UIDelegate::UIClient::queryPermission(WTF::String const&,API::SecurityOrigin &,WTF::CompletionHandler<void ()(std::optional<WebCore::PermissionState>)> &&)::$_0>(WebKit::UIDelegate::UIClient::queryPermission(WTF::String const&,API::SecurityOrigin &,WTF::CompletionHandler<void ()(std::optional<WebCore::PermissionState>)> &&)::$_0)::{lambda(void *,WKPermissionDecision)#1}::__invoke;
      v22[3] = &WTF::BlockPtr<void ()(WKPermissionDecision)>::fromCallable<WebKit::UIDelegate::UIClient::queryPermission(WTF::String const&,API::SecurityOrigin &,WTF::CompletionHandler<void ()(std::optional<WebCore::PermissionState>)> &&)::$_0>(WebKit::UIDelegate::UIClient::queryPermission(WTF::String const&,API::SecurityOrigin &,WTF::CompletionHandler<void ()(std::optional<WebCore::PermissionState>)> &&)::$_0)::descriptor;
      v22[4] = v20;
      v22[5] = v21;
      [v12 _webView:WeakRetained queryPermission:v18 forOrigin:v19 completionHandler:v22];
      _Block_release(v22);
      v23 = v24;
      v24 = 0;
      if (v23)
      {
      }

      if (WeakRetained)
      {
      }

      goto LABEL_20;
    }

    __break(0xC471u);
  }

  else
  {

    WTF::CompletionHandler<void ()(std::optional<WebCore::PermissionState>)>::operator()(a4, 0x102u);
  }
}

void sub_19DC97EF4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, atomic_uint *a10)
{
  if (v11)
  {
  }

  if (a10)
  {
    WTF::ThreadSafeRefCounted<WebKit::CompletionHandlerCallChecker,(WTF::DestructionThread)0>::deref(a10);
  }

  _Unwind_Resume(a1);
}

uint64_t WTF::CompletionHandler<void ()(std::optional<WebCore::PermissionState>)>::operator()(uint64_t *a1, unsigned __int16 a2)
{
  v2 = *a1;
  *a1 = 0;
  (*(*v2 + 16))(v2, a2);
  v3 = *(*v2 + 8);

  return v3(v2);
}

void WebKit::UIDelegate::UIClient::didEnableInspectorBrowserDomain(WebKit::UIDelegate::UIClient *this, WebKit::WebPageProxy *a2)
{
  v2 = *(this + 2);
  if (v2)
  {
    v3 = *(v2 + 8);
    if (v3)
    {
      v5 = objc_loadWeak((v3 + 8));
      if ((*(v3 + 28) & 0x2000) != 0)
      {
        v6 = WebKit::UIDelegate::UIClient::uiDelegatePrivate(*(this + 2));
        v7 = v6;
        if (v6)
        {
          v8 = v6;
          WeakRetained = objc_loadWeakRetained((v3 + 8));
          [v7 _webViewDidEnableInspectorBrowserDomain:WeakRetained];
          if (WeakRetained)
          {
          }
        }
      }

      Weak = objc_loadWeak((v3 + 8));
    }
  }
}

void sub_19DC98138(_Unwind_Exception *a1)
{
  v4 = v2;
  if (v4)
  {
  }

  _Unwind_Resume(a1);
}

void WebKit::UIDelegate::UIClient::didDisableInspectorBrowserDomain(WebKit::UIDelegate::UIClient *this, WebKit::WebPageProxy *a2)
{
  v2 = *(this + 2);
  if (v2)
  {
    v3 = *(v2 + 8);
    if (v3)
    {
      v5 = objc_loadWeak((v3 + 8));
      if ((*(v3 + 28) & 0x4000) != 0)
      {
        v6 = WebKit::UIDelegate::UIClient::uiDelegatePrivate(*(this + 2));
        v7 = v6;
        if (v6)
        {
          v8 = v6;
          WeakRetained = objc_loadWeakRetained((v3 + 8));
          [v7 _webViewDidDisableInspectorBrowserDomain:WeakRetained];
          if (WeakRetained)
          {
          }
        }
      }

      Weak = objc_loadWeak((v3 + 8));
    }
  }
}

void sub_19DC98220(_Unwind_Exception *a1)
{
  v4 = v2;
  if (v4)
  {
  }

  _Unwind_Resume(a1);
}

void WebKit::UIDelegate::UIClient::updateAppBadge(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v5 = *(a1 + 16);
  if (v5)
  {
    v6 = *(v5 + 8);
    if (v6)
    {
      v10 = objc_loadWeak((v6 + 8));
      if ((*(v6 + 30) & 2) != 0)
      {
        v11 = WebKit::UIDelegate::UIClient::uiDelegatePrivate(*(a1 + 16));
        v12 = v11;
        if (v11)
        {
          v13 = v11;
          v20 = 0;
          if (a5)
          {
            WTF::RetainPtr<NSNumber>::operator=(&v20, [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:a4]);
          }

          API::SecurityOrigin::create(&v19);
          WeakRetained = objc_loadWeakRetained((v6 + 8));
          v15 = v20;
          v16 = *(v19 + 8);
          if (v16)
          {
            objc_opt_class();
            if ((objc_opt_isKindOfClass() & 1) == 0)
            {
              __break(0xC471u);
              return;
            }
          }

          [v12 _webView:WeakRetained updatedAppBadge:v15 fromSecurityOrigin:v16];
          if (WeakRetained)
          {
          }

          v17 = v19;
          v19 = 0;
          if (v17)
          {
            CFRelease(*(v17 + 8));
          }

          v18 = v20;
          v20 = 0;
          if (v18)
          {
          }
        }
      }
    }
  }
}

void sub_19DC983B0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10)
{
  if (a9)
  {
    CFRelease(*(a9 + 8));
  }

  if (a10)
  {
  }

  _Unwind_Resume(a1);
}

void WebKit::UIDelegate::UIClient::didAdjustVisibilityWithSelectors(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    v4 = *(v3 + 8);
    if (v4)
    {
      v7 = objc_loadWeak((v4 + 8));
      if ((*(v4 + 30) & 4) != 0)
      {
        v8 = WebKit::UIDelegate::UIClient::uiDelegatePrivate(*(a1 + 16));
        v9 = v8;
        if (v8)
        {
          v10 = v8;
          WTF::createNSArray<WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>(a3, &v13);
          WeakRetained = objc_loadWeakRetained((v4 + 8));
          [v9 _webView:WeakRetained didAdjustVisibilityWithSelectors:v13];
          if (WeakRetained)
          {
          }

          v12 = v13;
          v13 = 0;
          if (v12)
          {
          }
        }
      }
    }
  }
}

void sub_19DC984DC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10)
{
  v13 = v11;
  if (v13)
  {
  }

  if (a10)
  {
  }

  _Unwind_Resume(a1);
}

void WebKit::UIDelegate::UIClient::recentlyAccessedGamepadsForTesting(WebKit::UIDelegate::UIClient *this, WebKit::WebPageProxy *a2)
{
  v2 = *(this + 2);
  if (v2)
  {
    v3 = *(v2 + 8);
    if (v3)
    {
      v5 = objc_loadWeak((v3 + 8));
      if ((*(v3 + 30) & 8) != 0)
      {
        v6 = WebKit::UIDelegate::UIClient::uiDelegatePrivate(*(this + 2));
        v7 = v6;
        if (v6)
        {
          v8 = v6;
          WeakRetained = objc_loadWeakRetained((v3 + 8));
          [v7 _webViewRecentlyAccessedGamepadsForTesting:WeakRetained];
          if (WeakRetained)
          {
          }
        }
      }

      Weak = objc_loadWeak((v3 + 8));
    }
  }
}

void sub_19DC985DC(_Unwind_Exception *a1)
{
  v4 = v2;
  if (v4)
  {
  }

  _Unwind_Resume(a1);
}

void WebKit::UIDelegate::UIClient::stoppedAccessingGamepadsForTesting(WebKit::UIDelegate::UIClient *this, WebKit::WebPageProxy *a2)
{
  v2 = *(this + 2);
  if (v2)
  {
    v3 = *(v2 + 8);
    if (v3)
    {
      v5 = objc_loadWeak((v3 + 8));
      if ((*(v3 + 30) & 0x10) != 0)
      {
        v6 = WebKit::UIDelegate::UIClient::uiDelegatePrivate(*(this + 2));
        v7 = v6;
        if (v6)
        {
          v8 = v6;
          WeakRetained = objc_loadWeakRetained((v3 + 8));
          [v7 _webViewStoppedAccessingGamepadsForTesting:WeakRetained];
          if (WeakRetained)
          {
          }
        }
      }

      Weak = objc_loadWeak((v3 + 8));
    }
  }
}

void sub_19DC986C4(_Unwind_Exception *a1)
{
  v4 = v2;
  if (v4)
  {
  }

  _Unwind_Resume(a1);
}

void WebKit::UIDelegate::UIClient::didEnterStandby(WebKit::UIDelegate::UIClient *this, WebKit::WebPageProxy *a2)
{
  v2 = *(this + 2);
  if (v2)
  {
    v3 = *(v2 + 8);
    if (v3)
    {
      v5 = objc_loadWeak((v3 + 8));
      if ((*(v3 + 30) & 0x20) != 0)
      {
        v6 = WebKit::UIDelegate::UIClient::uiDelegatePrivate(*(this + 2));
        v7 = v6;
        if (v6)
        {
          v8 = v6;
          WeakRetained = objc_loadWeakRetained((v3 + 8));
          [v7 _webViewDidEnterStandbyForTesting:WeakRetained];
          if (WeakRetained)
          {
          }
        }
      }

      Weak = objc_loadWeak((v3 + 8));
    }
  }
}

void sub_19DC987AC(_Unwind_Exception *a1)
{
  v4 = v2;
  if (v4)
  {
  }

  _Unwind_Resume(a1);
}

void WebKit::UIDelegate::UIClient::didExitStandby(WebKit::UIDelegate::UIClient *this, WebKit::WebPageProxy *a2)
{
  v2 = *(this + 2);
  if (v2)
  {
    v3 = *(v2 + 8);
    if (v3)
    {
      v5 = objc_loadWeak((v3 + 8));
      if ((*(v3 + 30) & 0x40) != 0)
      {
        v6 = WebKit::UIDelegate::UIClient::uiDelegatePrivate(*(this + 2));
        v7 = v6;
        if (v6)
        {
          v8 = v6;
          WeakRetained = objc_loadWeakRetained((v3 + 8));
          [v7 _webViewDidExitStandbyForTesting:WeakRetained];
          if (WeakRetained)
          {
          }
        }
      }

      Weak = objc_loadWeak((v3 + 8));
    }
  }
}

void sub_19DC98894(_Unwind_Exception *a1)
{
  v4 = v2;
  if (v4)
  {
  }

  _Unwind_Resume(a1);
}

void sub_19DC98B30(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, WTF::StringImpl *a11, uint64_t a12, uint64_t a13, WTF::StringImpl *a14)
{
  if (a13)
  {
    (*(*a13 + 8))(a13);
  }

  if (a11 && atomic_fetch_add_explicit(a11, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(a11, a2);
  }

  if (a9)
  {
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

void sub_19DC98FD4(_Unwind_Exception *a1)
{
  if (v1)
  {
  }

  _Unwind_Resume(a1);
}

void sub_19DC99238(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  if (a10)
  {
  }

  _Unwind_Resume(exception_object);
}

void WebKit::UserMediaPermissionRequestManagerProxy::requestSystemValidation(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = *(a1 + 368);
  CFRetain(*(v5 + 8));
  if (*(v5 + 120) == 1)
  {
    v7 = *(v5 + 119);
    CFRelease(*(v5 + 8));
    if (v7)
    {
      goto LABEL_27;
    }
  }

  else
  {
    {
      atomic_fetch_add_explicit(WebKit::WebPreferencesKey::mockCaptureDevicesEnabledKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
      WebKit::WebPreferencesKey::mockCaptureDevicesEnabledKey(void)::key = WebKit::WebPreferencesKey::mockCaptureDevicesEnabledKey(void)::$_0::operator() const(void)::impl;
    }

    BoolValueForKey = WebKit::WebPreferencesStore::getBoolValueForKey((v5 + 40), &WebKit::WebPreferencesKey::mockCaptureDevicesEnabledKey(void)::key, v6);
    CFRelease(*(v5 + 8));
    if (BoolValueForKey)
    {
      goto LABEL_27;
    }
  }

  if (*(a2 + 444))
  {
    v9 = WebKit::checkAVCaptureAccessForType(1);
    if (!v9)
    {
LABEL_22:
      v15 = a3;
      v16 = 0;
LABEL_28:

      WTF::CompletionHandler<void ()(BOOL)>::operator()(v15, v16);
      return;
    }
  }

  else
  {
    v9 = 1;
  }

  if (*(a2 + 448) - 3 > 0xFFFFFFFD || *(a2 + 428) == 0)
  {
    if (v9 == 2)
    {
      v11 = 1;
LABEL_20:
      v13 = *a3;
      *a3 = 0;
      v14 = WTF::fastMalloc(0x18);
      *v14 = &unk_1F1102CF8;
      *(v14 + 8) = v11;
      *(v14 + 16) = v13;
      v18 = v14;
      WebKit::requestAVCaptureAccessForType(1, &v18);
      if (v18)
      {
        v17 = *(*v18 + 8);

        v17();
      }

      return;
    }

LABEL_27:
    v15 = a3;
    v16 = 1;
    goto LABEL_28;
  }

  v12 = WebKit::checkAVCaptureAccessForType(2);
  if (!v12)
  {
    goto LABEL_22;
  }

  v11 = v12;
  if (v9 == 2)
  {
    goto LABEL_20;
  }

  if (v12 != 2)
  {
    goto LABEL_27;
  }

  WebKit::requestAVCaptureAccessForType(2, a3);
}

void sub_19DC99548(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (a10)
  {
    (*(*a10 + 8))(a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t WebKit::UserMediaPermissionRequestManagerProxy::isMonitoringCaptureDeviceRotation(WebKit::UserMediaPermissionRequestManagerProxy *this, const WTF::String *a2)
{
  if (!*a2 || !*(*a2 + 4))
  {
    return 0;
  }

  v3 = *(this + 43);
  if (v3)
  {
    v4 = v3;
  }

  v5 = [v3 isMonitoringCaptureDeviceRotation:a2];
  if (v3)
  {
  }

  return v5;
}

void sub_19DC995F0(_Unwind_Exception *exception_object)
{
  if (v1)
  {
  }

  _Unwind_Resume(exception_object);
}

void WebKit::UserMediaPermissionRequestManagerProxy::startMonitoringCaptureDeviceRotation(WebKit::UserMediaPermissionRequestManagerProxy *this, const WTF::String *a2)
{
  v2 = *(this + 9);
  if (v2)
  {
    v3 = *(v2 + 8);
    if (v3)
    {
      CFRetain(*(v3 - 8));
      WeakRetained = objc_loadWeakRetained((*(v3 + 16) + 2248));
      v7 = [WeakRetained layer];
      if (v7)
      {
        v8 = *(this + 43);
        if (!v8)
        {
          v9 = [WKRotationCoordinatorObserver alloc];
          WTF::WeakPtrFactory<WebPushD::PushServiceConnection,WTF::DefaultWeakPtrImpl>::initializeIfNeeded(this + 2, this);
          v10 = *(this + 1);
          atomic_fetch_add(v10, 1u);
          v17 = v10;
          v11 = [(WKRotationCoordinatorObserver *)v9 initWithRequestManagerProxy:&v17];
          v13 = *(this + 43);
          *(this + 43) = v11;
          if (v13)
          {
          }

          v14 = v17;
          v17 = 0;
          if (v14 && atomic_fetch_add(v14, 0xFFFFFFFF) == 1)
          {
            atomic_store(1u, v14);
            WTF::fastFree(v14, v12);
          }

          v8 = *(this + 43);
        }

        v15 = [v8 start:a2 layer:v7];
        if ((v15 & 0x10000) != 0)
        {
          WebKit::UserMediaPermissionRequestManagerProxy::rotationAngleForCaptureDeviceChanged(*(this + 9), a2, v15);
        }
      }

      else
      {
        v16 = qword_1ED641580;
        if (os_log_type_enabled(qword_1ED641580, OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          _os_log_error_impl(&dword_19D52D000, v16, OS_LOG_TYPE_ERROR, "UserMediaPermissionRequestManagerProxy unable to start monitoring capture device rotation", buf, 2u);
          if (!WeakRetained)
          {
            goto LABEL_16;
          }

          goto LABEL_15;
        }
      }

      if (!WeakRetained)
      {
LABEL_16:
        CFRelease(*(v3 - 8));
        return;
      }

LABEL_15:

      goto LABEL_16;
    }
  }
}

void sub_19DC99770(_Unwind_Exception *a1, void *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, WTF *a10)
{
  if (a10 && atomic_fetch_add(a10, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, a10);
    WTF::fastFree(a10, a2);
  }

  if (v10)
  {
  }

  CFRelease(*(v11 - 8));
  _Unwind_Resume(a1);
}

void WebKit::UserMediaPermissionRequestManagerProxy::rotationAngleForCaptureDeviceChanged(uint64_t a1, uint64_t a2, const WTF::StringImpl *a3)
{
  if (a1)
  {
    v3 = *(a1 + 8);
    if (v3)
    {
      CFRetain(*(v3 - 8));
      WebKit::WebPageProxy::rotationAngleForCaptureDeviceChanged(v3 - 16, a2, a3);
      v6 = *(v3 - 8);

      CFRelease(v6);
    }
  }
}

void WebKit::VideoPresentationModelContext::~VideoPresentationModelContext(WebKit::VideoPresentationModelContext *this, void *a2)
{
  v3 = *(this + 6);
  if (v3)
  {
    WTF::HashTable<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>,WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>,WTF::IdentityExtractor,WTF::DefaultHash<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>>,WTF::HashTraits<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>>,WTF::HashTraits<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>>,WTF::FastMalloc>::deallocateTable(v3, a2);
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

  v5 = *(this + 2);
  *(this + 2) = 0;
  if (v5)
  {
    if (atomic_fetch_add(v5, 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, v5);
      WTF::fastFree(v5, a2);
    }
  }
}

{
  WebKit::VideoPresentationModelContext::~VideoPresentationModelContext(this, a2);

  WTF::fastFree(v2, v3);
}

unsigned int *WebKit::VideoPresentationModelContext::addClient(WebKit::VideoPresentationModelContext *this, WebCore::VideoPresentationModelClient *a2)
{
  v4 = *(this + 15);
  v5 = *(this + 14) + 1;
  *(this + 14) = v5;
  if (v5 > v4)
  {
    v6 = *(this + 6);
    if (v6)
    {
      v7 = *(v6 - 4);
      if (!v7)
      {
LABEL_15:
        v13 = *(v6 - 4);
        if (6 * *(v6 - 12) < v13 && v13 > 8)
        {
          WTF::HashTable<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>,WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>,WTF::IdentityExtractor,WTF::DefaultHash<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>>,WTF::HashTraits<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>>,WTF::HashTraits<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>>,WTF::FastMalloc>::shrinkToBestSize(this + 6);
          v6 = *(this + 6);
          *(this + 14) = 0;
          if (!v6)
          {
            goto LABEL_22;
          }
        }

        else
        {
          *(this + 14) = 0;
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
        *(this + 15) = v15;
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
      v6 = *(this + 6);
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
    *(this + 14) = 0;
    goto LABEL_22;
  }

LABEL_25:
  WTF::WeakPtrFactory<WebPushD::PushServiceConnection,WTF::DefaultWeakPtrImpl>::initializeIfNeeded(a2 + 2, a2);
  v16 = *(a2 + 1);
  atomic_fetch_add(v16, 1u);
  v20 = v16;
  WTF::HashTable<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>,WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>,WTF::IdentityExtractor,WTF::DefaultHash<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>>,WTF::HashTraits<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>>,WTF::HashTraits<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>>,WTF::FastMalloc>::add<(WTF::ShouldValidateKey)1>(this + 6, &v20, &v19);
  result = v20;
  v20 = 0;
  if (result)
  {
    if (atomic_fetch_add(result, 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, result);
      return WTF::fastFree(result, v17);
    }
  }

  return result;
}

void sub_19DC99E6C(_Unwind_Exception *exception_object, void *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, WTF *a12)
{
  if (a12)
  {
    if (atomic_fetch_add(a12, 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, a12);
      WTF::fastFree(a12, a2);
    }
  }

  _Unwind_Resume(exception_object);
}

unsigned int *WebKit::VideoPresentationModelContext::removeClient(unsigned int *this, WebCore::VideoPresentationModelClient *a2)
{
  v3 = this;
  v4 = this[15];
  v5 = this[14] + 1;
  this[14] = v5;
  if (v5 > v4)
  {
    v6 = *(this + 6);
    if (v6)
    {
      v7 = *(v6 - 4);
      if (!v7)
      {
LABEL_15:
        v12 = *(v6 - 4);
        if (6 * *(v6 - 12) < v12 && v12 > 8)
        {
          this = WTF::HashTable<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>,WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>,WTF::IdentityExtractor,WTF::DefaultHash<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>>,WTF::HashTraits<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>>,WTF::HashTraits<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>>,WTF::FastMalloc>::shrinkToBestSize(v3 + 6);
          v6 = *(v3 + 6);
          v3[14] = 0;
          if (!v6)
          {
            goto LABEL_22;
          }
        }

        else
        {
          v3[14] = 0;
        }

        LODWORD(v6) = *(v6 - 12);
        if (v6 > 0x7FFFFFFE)
        {
          v14 = -2;
          goto LABEL_24;
        }

LABEL_22:
        v14 = 2 * v6;
LABEL_24:
        v3[15] = v14;
        goto LABEL_25;
      }

      v8 = 0;
      v9 = 8 * v7;
      v10 = v6 - 8;
      do
      {
        this = *(v10 + v9);
        if (this + 1 >= 2 && !*(this + 1))
        {
          *(v10 + v9) = 0;
          if (atomic_fetch_add(this, 0xFFFFFFFF) == 1)
          {
            atomic_store(1u, this);
            this = WTF::fastFree(this, a2);
          }

          *(v10 + v9) = -1;
          ++v8;
        }

        v9 -= 8;
      }

      while (v9);
      v6 = *(v3 + 6);
      if (v8)
      {
        v11 = *(v6 - 12) - v8;
        *(v6 - 16) += v8;
        *(v6 - 12) = v11;
        goto LABEL_15;
      }

      if (v6)
      {
        goto LABEL_15;
      }
    }

    LODWORD(v6) = 0;
    v3[14] = 0;
    goto LABEL_22;
  }

LABEL_25:
  v15 = *(a2 + 1);
  if (v15 && *(v15 + 8))
  {
    v18 = *(a2 + 1);
    this = WTF::HashTable<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>,WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>,WTF::IdentityExtractor,WTF::DefaultHash<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>>,WTF::HashTraits<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>>,WTF::HashTraits<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>>,WTF::FastMalloc>::find<WTF::HashSetTranslator<WTF::HashTraits<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>>,WTF::DefaultHash<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>>>,(WTF::ShouldValidateKey)1,WTF::DefaultWeakPtrImpl const*>(v3 + 6, &v18);
    v16 = *(v3 + 6);
    if (v16)
    {
      v17 = (v16 + 8 * *(v16 - 4));
      if (v17 == this)
      {
        return this;
      }
    }

    else
    {
      if (!this)
      {
        return this;
      }

      v17 = 0;
    }

    if (v17 != this)
    {
      return WTF::HashTable<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>,WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>,WTF::IdentityExtractor,WTF::DefaultHash<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>>,WTF::HashTraits<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>>,WTF::HashTraits<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>>,WTF::FastMalloc>::remove(v3 + 6, this);
    }
  }

  return this;
}

uint64_t *WebKit::VideoPresentationManagerProxy::setDocumentVisibility(uint64_t *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if ((result[4] & 1) == 0)
  {
    v7 = result;
    result = WebKit::VideoPresentationManagerProxy::findInterface(result, a2, a3, &v12);
    v8 = v12;
    if (v12)
    {
      (*(*v12 + 112))(v12, a4);
      WebKit::VideoPresentationManagerProxy::ensureModel(v7, a2, a3, &v11);
      v10 = v11;
      if (*(v11 + 73) == 1)
      {
        WebKit::VideoPresentationManagerProxy::videosInElementFullscreenChanged(v7);
      }

      WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebCore::VideoPresentationModel,(WTF::DestructionThread)0>::deref((v10 + 8), v9);
      return WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebCore::VideoPresentationInterfaceIOS,(WTF::DestructionThread)2>::deref((v8 + 104));
    }
  }

  return result;
}

void sub_19DC9A108(_Unwind_Exception *a1, void *a2)
{
  WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebCore::VideoPresentationModel,(WTF::DestructionThread)0>::deref((v3 + 8), a2);
  WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebCore::VideoPresentationInterfaceIOS,(WTF::DestructionThread)2>::deref((v2 + 104));
  _Unwind_Resume(a1);
}

uint64_t *WebKit::VideoPresentationManagerProxy::findInterface@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v11[0] = a2;
  v11[1] = a3;
  result = WTF::HashTable<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::MediaPlayerClientIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::KeyValuePair<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::MediaPlayerClientIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,std::pair<WTF::Ref<WebKit::VideoPresentationModelContext,WTF::RawPtrTraits<WebKit::VideoPresentationModelContext>,WTF::DefaultRefDerefTraits<WebKit::VideoPresentationModelContext>>,WTF::Ref<WebCore::VideoPresentationInterfaceIOS,WTF::RawPtrTraits<WebCore::VideoPresentationInterfaceIOS>,WTF::DefaultRefDerefTraits<WebCore::VideoPresentationInterfaceIOS>>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::MediaPlayerClientIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,std::pair<WTF::Ref<WebKit::VideoPresentationModelContext,WTF::RawPtrTraits<WebKit::VideoPresentationModelContext>,WTF::DefaultRefDerefTraits<WebKit::VideoPresentationModelContext>>,WTF::Ref<WebCore::VideoPresentationInterfaceIOS,WTF::RawPtrTraits<WebCore::VideoPresentationInterfaceIOS>,WTF::DefaultRefDerefTraits<WebCore::VideoPresentationInterfaceIOS>>>>>,WTF::DefaultHash<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::MediaPlayerClientIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashMap<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::MediaPlayerClientIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,std::pair<WTF::Ref<WebKit::VideoPresentationModelContext,WTF::RawPtrTraits<WebKit::VideoPresentationModelContext>,WTF::DefaultRefDerefTraits<WebKit::VideoPresentationModelContext>>,WTF::Ref<WebCore::VideoPresentationInterfaceIOS,WTF::RawPtrTraits<WebCore::VideoPresentationInterfaceIOS>,WTF::DefaultRefDerefTraits<WebCore::VideoPresentationInterfaceIOS>>>,WTF::DefaultHash<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::MediaPlayerClientIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashTraits<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::MediaPlayerClientIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashTraits<std::pair<WTF::Ref<WebKit::VideoPresentationModelContext,WTF::RawPtrTraits<WebKit::VideoPresentationModelContext>,WTF::DefaultRefDerefTraits<WebKit::VideoPresentationModelContext>>,WTF::Ref<WebCore::VideoPresentationInterfaceIOS,WTF::RawPtrTraits<WebCore::VideoPresentationInterfaceIOS>,WTF::DefaultRefDerefTraits<WebCore::VideoPresentationInterfaceIOS>>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::MediaPlayerClientIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::FastMalloc>::find<WTF::IdentityHashTranslator<WTF::HashMap<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::MediaPlayerClientIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,std::pair<WTF::Ref<WebKit::VideoPresentationModelContext,WTF::RawPtrTraits<WebKit::VideoPresentationModelContext>,WTF::DefaultRefDerefTraits<WebKit::VideoPresentationModelContext>>,WTF::Ref<WebCore::VideoPresentationInterfaceIOS,WTF::RawPtrTraits<WebCore::VideoPresentationInterfaceIOS>,WTF::DefaultRefDerefTraits<WebCore::VideoPresentationInterfaceIOS>>>,WTF::DefaultHash<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::MediaPlayerClientIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashTraits<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::MediaPlayerClientIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashTraits<std::pair<WTF::Ref<WebKit::VideoPresentationModelContext,WTF::RawPtrTraits<WebKit::VideoPresentationModelContext>,WTF::DefaultRefDerefTraits<WebKit::VideoPresentationModelContext>>,WTF::Ref<WebCore::VideoPresentationInterfaceIOS,WTF::RawPtrTraits<WebCore::VideoPresentationInterfaceIOS>,WTF::DefaultRefDerefTraits<WebCore::VideoPresentationInterfaceIOS>>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::MediaPlayerClientIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>>,(WTF::ShouldValidateKey)1,WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::MediaPlayerClientIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>( (a1 + 64),  v11);
  v7 = *(a1 + 64);
  if (v7)
  {
    v7 += 4 * *(v7 - 1);
  }

  if (v7 == result)
  {
    v8 = 0;
  }

  else
  {
    v8 = result[3];
    while (1)
    {
      v9 = *(v8 + 104);
      if ((v9 & 1) == 0)
      {
        break;
      }

      v10 = *(v8 + 104);
      atomic_compare_exchange_strong_explicit((v8 + 104), &v10, v9 + 2, memory_order_relaxed, memory_order_relaxed);
      if (v10 == v9)
      {
        goto LABEL_10;
      }
    }

    result = WTF::ThreadSafeWeakPtrControlBlock::strongRef(*(v8 + 104));
  }

LABEL_10:
  *a4 = v8;
  return result;
}

unint64_t *WebKit::VideoPresentationManagerProxy::ensureModel@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, unint64_t *a4@<X8>)
{
  result = WebKit::VideoPresentationManagerProxy::ensureModelAndInterface(a1, a2, a3);
  v6 = *result;
  while (1)
  {
    v7 = *(v6 + 8);
    if ((v7 & 1) == 0)
    {
      break;
    }

    v8 = *(v6 + 8);
    atomic_compare_exchange_strong_explicit((v6 + 8), &v8, v7 + 2, memory_order_relaxed, memory_order_relaxed);
    if (v8 == v7)
    {
      goto LABEL_6;
    }
  }

  result = WTF::ThreadSafeWeakPtrControlBlock::strongRef(*(v6 + 8));
LABEL_6:
  *a4 = v6;
  return result;
}

void WebKit::VideoPresentationManagerProxy::videosInElementFullscreenChanged(WebKit::VideoPresentationManagerProxy *this)
{
  v1 = *(this + 6);
  if (v1)
  {
    v2 = *(v1 + 8);
    if (v2)
    {
      CFRetain(*(v2 - 8));
      WebKit::WebPageProxy::videosInElementFullscreenChanged(v2 - 16);
      v3 = *(v2 - 8);

      CFRelease(v3);
    }
  }
}

atomic_uchar **WebKit::VideoPresentationManagerProxy::setIsChildOfElementFullscreen(WebKit::VideoPresentationManagerProxy *a1, uint64_t a2, uint64_t a3, int a4)
{
  WebKit::VideoPresentationManagerProxy::ensureModel(a1, a2, a3, &v10);
  v7 = v10;
  v8 = *(v10 + 73);
  *(v10 + 73) = a4;
  if (v8 != a4)
  {
    WebKit::VideoPresentationManagerProxy::videosInElementFullscreenChanged(a1);
  }

  return WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebCore::VideoPresentationModel,(WTF::DestructionThread)0>::deref((v7 + 8), v6);
}

unint64_t *WebKit::VideoPresentationManagerProxy::hasBeenInteractedWith(WebKit::VideoPresentationManagerProxy *a1, uint64_t a2, uint64_t a3)
{
  result = WebKit::VideoPresentationManagerProxy::ensureModel(a1, a2, a3, &v13);
  v8 = *(a1 + 14);
  v9 = *(a1 + 15);
  *(a1 + 14) = a2;
  *(a1 + 15) = a3;
  if (v8)
  {
    v10 = v8 == a2;
  }

  else
  {
    v10 = 0;
  }

  if (v10 && v9 == a3)
  {
    v12 = v13;
    if (!v13)
    {
      return result;
    }
  }

  else
  {
    v12 = v13;
    if (*(v13 + 73) == 1)
    {
      WebKit::VideoPresentationManagerProxy::videosInElementFullscreenChanged(a1);
    }
  }

  return WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebCore::VideoPresentationModel,(WTF::DestructionThread)0>::deref((v12 + 8), v7);
}

uint64_t WebKit::VideoPresentationModelContext::setVideoDimensions(uint64_t this, const WebCore::FloatSize *a2)
{
  v71 = *MEMORY[0x1E69E9840];
  if (*(this + 64) != *a2 || *(this + 68) != *(a2 + 1))
  {
    v3 = a2;
    v4 = this;
    *(this + 64) = *a2;
    v5 = WebKit::VideoPresentationModelContext::loggerPtr(this);
    if (!v5)
    {
LABEL_81:
      v55 = WTF::fastMalloc(0x10);
      *v55 = &unk_1F1102D20;
      v55[1] = v3;
      *buf = v55;
      WTF::WeakHashSet<WebCore::VideoPresentationModelClient,WTF::DefaultWeakPtrImpl,(WTF::EnableWeakPtrThreadingAssertions)1>::forEach((v4 + 48), buf);
      return (*(*v55 + 8))(v55);
    }

    v7 = v5;
    atomic_fetch_add(v5 + 2, 1u);
    v8 = *(v4 + 48);
    v9 = *(*(v4 + 24) + 336);
    v58[0] = "VideoPresentationModelContext";
    v58[1] = 30;
    v58[2] = "setVideoDimensions";
    v58[3] = v9;
    if (v8)
    {
      v10 = *(v8 - 4);
      if (!v10)
      {
        goto LABEL_19;
      }

      v11 = v3;
      v12 = 0;
      v13 = 8 * v10;
      v14 = v8 - 8;
      do
      {
        v5 = *(v14 + v13);
        if (v5 + 1 >= 2 && !*(v5 + 1))
        {
          *(v14 + v13) = 0;
          if (atomic_fetch_add(v5, 0xFFFFFFFF) == 1)
          {
            atomic_store(1u, v5);
            v5 = WTF::fastFree(v5, v6);
          }

          *(v14 + v13) = -1;
          ++v12;
        }

        v13 -= 8;
      }

      while (v13);
      v8 = *(v4 + 48);
      if (v12)
      {
        v15 = *(v8 - 12) - v12;
        *(v8 - 16) += v12;
        *(v8 - 12) = v15;
        v3 = v11;
        goto LABEL_19;
      }

      v3 = v11;
      if (v8)
      {
LABEL_19:
        v16 = *(v8 - 4);
        if (6 * *(v8 - 12) < v16 && v16 > 8)
        {
          v5 = WTF::HashTable<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>,WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>,WTF::IdentityExtractor,WTF::DefaultHash<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>>,WTF::HashTraits<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>>,WTF::HashTraits<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>>,WTF::FastMalloc>::shrinkToBestSize((v4 + 48));
          v8 = *(v4 + 48);
          *(v4 + 56) = 0;
          if (!v8)
          {
            v57 = 0;
            *(v4 + 60) = 0;
            goto LABEL_29;
          }
        }

        else
        {
          *(v4 + 56) = 0;
        }

        v18 = *(v8 - 12);
        if (v18 >= 0x7FFFFFFF)
        {
          v19 = -2;
        }

        else
        {
          v19 = 2 * v18;
        }

        *(v4 + 60) = v19;
        v57 = *(v8 - 12);
LABEL_29:
        v20 = MEMORY[0x1E696EBD0];
        while (1)
        {
          v21 = *v20;
          if (v21)
          {
            break;
          }

          v22 = *v20;
          atomic_compare_exchange_strong_explicit(v20, &v22, v21 | 1, memory_order_acquire, memory_order_acquire);
          if (v22 == v21)
          {
            v56 = v4;
            v23 = WTF::Logger::messageHandlerObservers(v5);
            v24 = *(v23 + 12);
            if (v24)
            {
              v25 = *v23;
              v26 = *v23 + 8 * v24;
              do
              {
                v27 = *v25;
                *buf = 0;
                WTF::Logger::LogSiteIdentifier::toString(&buf[8], v58);
                v66 = 1;
                WebCore::FloatSize::toJSONString(&v67, v3);
                v68 = 0;
                WTF::String::String(&v69, ", clients=");
                v70 = 0;
                WTF::String::number(v57);
                WTF::Vector<WTF::JSONLogValue,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::Vector(v59, buf, 4uLL);
                (*(*v27 + 16))(v27, &WebKit2LogFullscreen, 0, v59);
                WTF::Vector<std::tuple<Inspector::BackendDispatcher::CommonErrorCode,WTF::String>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v59, v28);
                for (i = 56; i != -8; i -= 16)
                {
                  v31 = *&buf[i];
                  *&buf[i] = 0;
                  if (v31 && atomic_fetch_add_explicit(v31, 0xFFFFFFFE, memory_order_relaxed) == 2)
                  {
                    WTF::StringImpl::destroy(v31, v29);
                  }
                }

                ++v25;
              }

              while (v25 != v26);
            }

            v32 = 1;
            atomic_compare_exchange_strong_explicit(v20, &v32, 0, memory_order_release, memory_order_relaxed);
            if (v32 != 1)
            {
              WTF::Lock::unlockSlow(MEMORY[0x1E696EBD0]);
            }

            v4 = v56;
            if (*(v7 + 12) == 1)
            {
              WTF::Logger::LogSiteIdentifier::toString(&v63, v58);
              WebCore::FloatSize::toJSONString(&v62, v3);
              WTF::String::String(&v61, ", clients=");
              WTF::String::number(v57);
              WTF::makeString<WTF::String,WTF::String,WTF::String,WTF::String>(&v63, &v62, &v61, &v60, &v64);
              v34 = v60;
              v60 = 0;
              if (v34 && atomic_fetch_add_explicit(v34, 0xFFFFFFFE, memory_order_relaxed) == 2)
              {
                WTF::StringImpl::destroy(v34, v33);
              }

              v35 = v61;
              v61 = 0;
              if (v35 && atomic_fetch_add_explicit(v35, 0xFFFFFFFE, memory_order_relaxed) == 2)
              {
                WTF::StringImpl::destroy(v35, v33);
              }

              v36 = v62;
              v62 = 0;
              if (v36 && atomic_fetch_add_explicit(v36, 0xFFFFFFFE, memory_order_relaxed) == 2)
              {
                WTF::StringImpl::destroy(v36, v33);
              }

              v37 = v63;
              v63 = 0;
              if (v37 && atomic_fetch_add_explicit(v37, 0xFFFFFFFE, memory_order_relaxed) == 2)
              {
                WTF::StringImpl::destroy(v37, v33);
              }

              v38 = qword_1ED640AE0;
              v39 = os_log_type_enabled(qword_1ED640AE0, OS_LOG_TYPE_DEFAULT);
              if (v39)
              {
                WTF::String::utf8();
                v41 = v59[0] ? v59[0] + 16 : 0;
                *buf = 136446210;
                *&buf[4] = v41;
                _os_log_impl(&dword_19D52D000, v38, OS_LOG_TYPE_DEFAULT, "%{public}s", buf, 0xCu);
                v39 = v59[0];
                v59[0] = 0;
                if (v39)
                {
                  if (*v39 == 1)
                  {
                    v39 = WTF::fastFree(v39, v40);
                  }

                  else
                  {
                    --*v39;
                  }
                }
              }

              if (WebKit2LogFullscreen)
              {
                v42 = MEMORY[0x1E696EBC0];
                while (1)
                {
                  v43 = *v42;
                  if (v43)
                  {
                    break;
                  }

                  v44 = *v42;
                  atomic_compare_exchange_strong_explicit(v42, &v44, v43 | 1, memory_order_acquire, memory_order_acquire);
                  if (v44 == v43)
                  {
                    v45 = WTF::Logger::observers(v39);
                    v46 = *(v45 + 12);
                    if (v46)
                    {
                      v47 = *v45;
                      v48 = *v45 + 8 * v46;
                      do
                      {
                        v49 = *v47;
                        *buf = 0;
                        WTF::Logger::LogSiteIdentifier::toString(&buf[8], v58);
                        v66 = 1;
                        WebCore::FloatSize::toJSONString(&v67, v3);
                        v68 = 0;
                        WTF::String::String(&v69, ", clients=");
                        v70 = 0;
                        WTF::String::number(v57);
                        WTF::Vector<WTF::JSONLogValue,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::Vector(v59, buf, 4uLL);
                        (*(*v49 + 16))(v49, &WebKit2LogFullscreen, 0, v59);
                        WTF::Vector<std::tuple<Inspector::BackendDispatcher::CommonErrorCode,WTF::String>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v59, v50);
                        for (j = 56; j != -8; j -= 16)
                        {
                          v52 = *&buf[j];
                          *&buf[j] = 0;
                          if (v52 && atomic_fetch_add_explicit(v52, 0xFFFFFFFE, memory_order_relaxed) == 2)
                          {
                            WTF::StringImpl::destroy(v52, v40);
                          }
                        }

                        ++v47;
                      }

                      while (v47 != v48);
                    }

                    v53 = 1;
                    atomic_compare_exchange_strong_explicit(v42, &v53, 0, memory_order_release, memory_order_relaxed);
                    v4 = v56;
                    if (v53 != 1)
                    {
                      WTF::Lock::unlockSlow(MEMORY[0x1E696EBC0]);
                    }

                    break;
                  }
                }
              }

              v54 = v64;
              v64 = 0;
              if (v54 && atomic_fetch_add_explicit(v54, 0xFFFFFFFE, memory_order_relaxed) == 2)
              {
                WTF::StringImpl::destroy(v54, v40);
              }
            }

            break;
          }
        }

        if (atomic_fetch_add(v7 + 2, 0xFFFFFFFF) == 1)
        {
          atomic_store(1u, v7 + 2);
          (*(*v7 + 8))(v7);
        }

        goto LABEL_81;
      }
    }

    v57 = 0;
    *(v4 + 56) = 0;
    goto LABEL_29;
  }

  return this;
}

void sub_19DC9AA84(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, unsigned int *a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, char a20, uint64_t a21, WTF::StringImpl *a22, WTF::StringImpl *a23, WTF::StringImpl *a24, uint64_t a25, WTF::StringImpl *a26, char a27)
{
  v29 = 1;
  atomic_compare_exchange_strong_explicit(v27, &v29, 0, memory_order_release, memory_order_relaxed);
  if (v29 != 1)
  {
    WTF::Lock::unlockSlow(MEMORY[0x1E696EBC0]);
  }

  if (a26 && atomic_fetch_add_explicit(a26, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(a26, a2);
  }

  if (atomic_fetch_add(a13 + 2, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, a13 + 2);
    (*(*a13 + 8))(a13);
  }

  _Unwind_Resume(exception_object);
}

uint64_t WebKit::VideoPresentationModelContext::loggerPtr(WebKit::VideoPresentationModelContext *this)
{
  v1 = *(this + 3);
  v2 = *(v1 + 16);
  *(v1 + 16) = v2 + 1;
  v3 = *(v1 + 24);
  if (v3 && (v4 = *(v3 + 8)) != 0)
  {
    v5 = *(v4 + 80);
  }

  else
  {
    v5 = 0;
  }

  if (v2)
  {
    *(v1 + 16) = v2;
  }

  else
  {
    (*(*v1 + 8))(v1);
  }

  return v5;
}

void *WTF::WeakHashSet<WebCore::VideoPresentationModelClient,WTF::DefaultWeakPtrImpl,(WTF::EnableWeakPtrThreadingAssertions)1>::forEach(void *result, uint64_t a2)
{
  v3 = result;
  v27 = 0;
  v28 = 0;
  if (*result && (v4 = *(*result - 12), v4))
  {
    if (v4 >> 29)
    {
      __break(0xC471u);
      return result;
    }

    v5 = WTF::fastMalloc((8 * v4));
    LODWORD(v28) = v4;
    v27 = v5;
  }

  else
  {
    v5 = 0;
  }

  v6 = WTF::HashTable<WTF::String,WTF::String,WTF::IdentityExtractor,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::begin(v3);
  v8 = v6;
  v9 = v7;
  if (*v3)
  {
    v10 = &(*v3)[*(*v3 - 1)];
  }

  else
  {
    v10 = 0;
  }

  if (v10 != v6)
  {
    v11 = 0;
    do
    {
      v12 = *(*v8 + 8);
      if (v12)
      {
        WTF::WeakPtrFactory<WebPushD::PushServiceConnection,WTF::DefaultWeakPtrImpl>::initializeIfNeeded((v12 + 8), *(*v8 + 8));
        v13 = *(v12 + 8);
        if (v13)
        {
          atomic_fetch_add(v13, 1u);
          v11 = HIDWORD(v28);
          v5 = v27;
        }
      }

      else
      {
        v13 = 0;
      }

      v14 = v11 + 1;
      *(v5 + 8 * v11) = v13;
      HIDWORD(v28) = v11 + 1;
      do
      {
        ++v8;
      }

      while (v8 != v9 && (*v8 + 1) <= 1);
      ++v11;
    }

    while (v8 != v10);
    if (v14)
    {
      v15 = v27;
      v16 = &v27[v14];
      do
      {
        v17 = *v15;
        if (*v15)
        {
          v7 = *(v17 + 8);
          if (v7)
          {
            v18 = *v3;
            if (*v3)
            {
              v19 = *(v18 - 2);
              v20 = (~(v17 << 32) + v17) ^ ((~(v17 << 32) + v17) >> 22);
              v21 = 9 * ((v20 + ~(v20 << 13)) ^ ((v20 + ~(v20 << 13)) >> 8));
              v22 = (v21 ^ (v21 >> 15)) + ~((v21 ^ (v21 >> 15)) << 27);
              v23 = v19 & ((v22 >> 31) ^ v22);
              for (i = 1; ; ++i)
              {
                v25 = v18[v23];
                if (!v25)
                {
                  break;
                }

                if (v25 != -1 && v25 == v17)
                {
                  (*(**a2 + 16))();
                  break;
                }

                v23 = (v23 + i) & v19;
              }
            }
          }
        }

        ++v15;
      }

      while (v15 != v16);
    }
  }

  return WTF::Vector<WTF::WeakPtr<WebCore::VideoPresentationModelClient,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v27, v7);
}

void WebKit::VideoPresentationModelContext::requestCloseAllMediaPresentations(WebKit::VideoPresentationModelContext *a1, char a2, uint64_t *a3)
{
  v3 = a3;
  v4 = *(a1 + 2);
  if (v4 && (v5 = *(v4 + 8)) != 0)
  {
    ++*(v5 + 16);
    v8 = WebKit::VideoPresentationModelContext::loggerPtr(a1);
    v9 = v8;
    if (v8)
    {
      atomic_fetch_add(v8 + 2, 1u);
      v10 = *(*(a1 + 3) + 336);
      v16 = "VideoPresentationModelContext";
      v17 = 30;
      v18 = "requestCloseAllMediaPresentations";
      v19 = v10;
      if (WTF::Logger::willLog<WTF::Logger::LogSiteIdentifier>(v8, &WebKit2LogFullscreen, 0, &v16))
      {
        WTF::Logger::log<WTF::Logger::LogSiteIdentifier>(&WebKit2LogFullscreen, 0, &v16);
      }

      if (atomic_fetch_add(v9 + 2, 0xFFFFFFFF) == 1)
      {
        atomic_store(1u, v9 + 2);
        (*(*v9 + 8))(v9);
      }
    }

    v12 = *(a1 + 4);
    v11 = *(a1 + 5);
    if (WebKit::VideoPresentationManagerProxy::hasMode(v5, 2) || WebKit::VideoPresentationManagerProxy::hasMode(v5, 1))
    {
      v13 = *(v5 + 92);
      if (v13 == *(v5 + 88))
      {
        v3 = WTF::Vector<WTF::CompletionHandler<void ()(void)>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(v5 + 80, v13 + 1, v3);
        v13 = *(v5 + 92);
      }

      v14 = (*(v5 + 80) + 8 * v13);
      v15 = *v3;
      *v3 = 0;
      *v14 = v15;
      *(v5 + 92) = v13 + 1;
      v16 = v12;
      v17 = v11;
      v20 = &v16;
      v21 = 0;
      v22 = a2;
      WebKit::VideoPresentationManagerProxy::sendToWebProcess<Messages::VideoPresentationManager::RequestFullscreenMode>(*(v5 + 48), v12, v11, &v20);
    }

    else
    {
      WTF::CompletionHandler<void ()(void)>::operator()(v3);
    }

    if (*(v5 + 16) == 1)
    {
      (*(*v5 + 24))(v5);
    }

    else
    {
      --*(v5 + 16);
    }
  }

  else
  {

    WTF::CompletionHandler<void ()(void)>::operator()(a3);
  }
}

void sub_19DC9B210(_Unwind_Exception *exception_object)
{
  if (v1[4] == 1)
  {
    (*(*v1 + 24))(v1);
  }

  else
  {
    --v1[4];
  }

  _Unwind_Resume(exception_object);
}

void WebKit::VideoPresentationModelContext::requestFullscreenMode(WebKit::VideoPresentationModelContext *this, int a2, char a3)
{
  v48[0] = a2;
  v4 = this;
  v63 = *MEMORY[0x1E69E9840];
  v5 = WebKit::VideoPresentationModelContext::loggerPtr(this);
  if (v5)
  {
    v6 = v5;
    atomic_fetch_add(v5 + 2, 1u);
    v7 = *(*(v4 + 3) + 336);
    *&v48[1] = "VideoPresentationModelContext";
    v49 = 30;
    v50 = "requestFullscreenMode";
    v51 = v7;
    v8 = MEMORY[0x1E696EBD0];
    while (1)
    {
      v9 = *v8;
      if (v9)
      {
        break;
      }

      v10 = *v8;
      atomic_compare_exchange_strong_explicit(v8, &v10, v9 | 1, memory_order_acquire, memory_order_acquire);
      if (v10 == v9)
      {
        v46 = v4;
        v47 = v5;
        v11 = WTF::Logger::messageHandlerObservers(v5);
        v12 = *(v11 + 12);
        if (v12)
        {
          v13 = *v11;
          v14 = *v11 + 8 * v12;
          do
          {
            v15 = *v13;
            LODWORD(buf) = 0;
            WTF::Logger::LogSiteIdentifier::toString(&buf + 1, &v48[1]);
            v59 = 0;
            WTF::String::number(v48[0]);
            v60 = 0;
            WTF::String::String(&v61, ", finishedWithMedia: ");
            v62 = 0;
            WTF::StringImpl::createWithoutCopyingNonEmpty();
            WTF::Vector<WTF::JSONLogValue,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::Vector(v52, &buf, 4uLL);
            (*(*v15 + 16))(v15, &WebKit2LogFullscreen, 0, v52);
            WTF::Vector<std::tuple<Inspector::BackendDispatcher::CommonErrorCode,WTF::String>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v52, v16);
            for (i = 56; i != -8; i -= 16)
            {
              v19 = *(&buf + i);
              *(&buf + i) = 0;
              if (v19 && atomic_fetch_add_explicit(v19, 0xFFFFFFFE, memory_order_relaxed) == 2)
              {
                WTF::StringImpl::destroy(v19, v17);
              }
            }

            ++v13;
          }

          while (v13 != v14);
        }

        v20 = 1;
        atomic_compare_exchange_strong_explicit(v8, &v20, 0, memory_order_release, memory_order_relaxed);
        if (v20 != 1)
        {
          WTF::Lock::unlockSlow(MEMORY[0x1E696EBD0]);
        }

        v6 = v47;
        if (*(v47 + 12) == 1)
        {
          WTF::Logger::LogSiteIdentifier::toString(&v56, &v48[1]);
          WTF::String::number(v48[0]);
          WTF::String::String(&v54, ", finishedWithMedia: ");
          WTF::StringImpl::createWithoutCopyingNonEmpty();
          WTF::makeString<WTF::String,WTF::String,WTF::String,WTF::String>(&v56, &v55, &v54, &v53, &v57);
          v22 = v53;
          v53 = 0;
          if (v22 && atomic_fetch_add_explicit(v22, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v22, v21);
          }

          v23 = v54;
          v54 = 0;
          if (v23 && atomic_fetch_add_explicit(v23, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v23, v21);
          }

          v24 = v55;
          v55 = 0;
          if (v24 && atomic_fetch_add_explicit(v24, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v24, v21);
          }

          v25 = v56;
          v56 = 0;
          if (v25 && atomic_fetch_add_explicit(v25, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v25, v21);
          }

          v26 = qword_1ED640AE0;
          v27 = os_log_type_enabled(qword_1ED640AE0, OS_LOG_TYPE_DEFAULT);
          if (v27)
          {
            WTF::String::utf8();
            v29 = v52[0] ? v52[0] + 16 : 0;
            LODWORD(buf) = 136446210;
            *(&buf + 4) = v29;
            _os_log_impl(&dword_19D52D000, v26, OS_LOG_TYPE_DEFAULT, "%{public}s", &buf, 0xCu);
            v27 = v52[0];
            v52[0] = 0;
            if (v27)
            {
              if (*v27 == 1)
              {
                v27 = WTF::fastFree(v27, v28);
              }

              else
              {
                --*v27;
              }
            }
          }

          if (WebKit2LogFullscreen)
          {
            v30 = MEMORY[0x1E696EBC0];
            while (1)
            {
              v31 = *v30;
              if (v31)
              {
                break;
              }

              v32 = *v30;
              atomic_compare_exchange_strong_explicit(v30, &v32, v31 | 1, memory_order_acquire, memory_order_acquire);
              if (v32 == v31)
              {
                v33 = WTF::Logger::observers(v27);
                v34 = *(v33 + 12);
                if (v34)
                {
                  v35 = *v33;
                  v36 = *v33 + 8 * v34;
                  do
                  {
                    v37 = *v35;
                    LODWORD(buf) = 0;
                    WTF::Logger::LogSiteIdentifier::toString(&buf + 1, &v48[1]);
                    v59 = 0;
                    WTF::String::number(v48[0]);
                    v60 = 0;
                    WTF::String::String(&v61, ", finishedWithMedia: ");
                    v62 = 0;
                    WTF::StringImpl::createWithoutCopyingNonEmpty();
                    WTF::Vector<WTF::JSONLogValue,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::Vector(v52, &buf, 4uLL);
                    (*(*v37 + 16))(v37, &WebKit2LogFullscreen, 0, v52);
                    WTF::Vector<std::tuple<Inspector::BackendDispatcher::CommonErrorCode,WTF::String>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v52, v38);
                    for (j = 56; j != -8; j -= 16)
                    {
                      v40 = *(&buf + j);
                      *(&buf + j) = 0;
                      if (v40 && atomic_fetch_add_explicit(v40, 0xFFFFFFFE, memory_order_relaxed) == 2)
                      {
                        WTF::StringImpl::destroy(v40, v28);
                      }
                    }

                    ++v35;
                  }

                  while (v35 != v36);
                }

                v41 = 1;
                atomic_compare_exchange_strong_explicit(v30, &v41, 0, memory_order_release, memory_order_relaxed);
                v4 = v46;
                v6 = v47;
                if (v41 != 1)
                {
                  WTF::Lock::unlockSlow(MEMORY[0x1E696EBC0]);
                }

                break;
              }
            }
          }

          v42 = v57;
          v57 = 0;
          if (v42 && atomic_fetch_add_explicit(v42, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v42, v28);
          }
        }

        break;
      }
    }

    if (atomic_fetch_add(v6 + 2, 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, v6 + 2);
      (*(*v6 + 8))(v6);
    }
  }

  v43 = *(v4 + 2);
  if (v43)
  {
    v44 = *(v43 + 8);
    if (v44)
    {
      ++*(v44 + 16);
      v45 = *(v4 + 5);
      *&buf = *(v4 + 4);
      *(&buf + 1) = v45;
      *&v48[1] = &buf;
      LODWORD(v49) = v48[0];
      BYTE4(v49) = a3;
      WebKit::VideoPresentationManagerProxy::sendToWebProcess<Messages::VideoPresentationManager::RequestFullscreenMode>(*(v44 + 48), buf, v45, &v48[1]);
      if (*(v44 + 16) == 1)
      {
        (*(*v44 + 24))(v44);
      }

      else
      {
        --*(v44 + 16);
      }
    }
  }
}

void sub_19DC9B8B0(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, unsigned int *a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, char a20, uint64_t a21, WTF::StringImpl *a22, WTF::StringImpl *a23, WTF::StringImpl *a24, uint64_t a25, WTF::StringImpl *a26, char a27)
{
  v29 = 1;
  atomic_compare_exchange_strong_explicit(v27, &v29, 0, memory_order_release, memory_order_relaxed);
  if (v29 != 1)
  {
    WTF::Lock::unlockSlow(MEMORY[0x1E696EBC0]);
  }

  if (a26 && atomic_fetch_add_explicit(a26, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(a26, a2);
  }

  if (atomic_fetch_add(a12 + 2, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, a12 + 2);
    (*(*a12 + 8))(a12);
  }

  _Unwind_Resume(exception_object);
}

void WebKit::VideoPresentationModelContext::setVideoLayerFrame(WebKit::VideoPresentationModelContext *a1, float a2, float a3, float a4, float a5)
{
  v47 = *MEMORY[0x1E69E9840];
  *&v32 = __PAIR64__(LODWORD(a3), LODWORD(a2));
  *(&v32 + 1) = __PAIR64__(LODWORD(a5), LODWORD(a4));
  v6 = WebKit::VideoPresentationModelContext::loggerPtr(a1);
  if (v6)
  {
    v7 = v6;
    atomic_fetch_add(v6 + 2, 1u);
    v8 = *(*(a1 + 3) + 336);
    *&buf.origin.x = "VideoPresentationModelContext";
    *&buf.origin.y = 30;
    *&buf.size.width = "setVideoLayerFrame";
    buf.size.height = v8;
    if (WTF::Logger::willLog<WTF::Logger::LogSiteIdentifier,WebCore::FloatRect>(v6, &buf, &v32))
    {
      WTF::Logger::log<WTF::Logger::LogSiteIdentifier,WebCore::FloatRect>(&buf, &v32);
    }

    if (atomic_fetch_add(v7 + 2, 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, v7 + 2);
      (*(*v7 + 8))(v7);
    }
  }

  v9 = *(a1 + 2);
  if (v9)
  {
    v10 = *(v9 + 8);
    if (v10)
    {
      v11 = *(v10 + 16);
      *(v10 + 16) = v11 + 1;
      v13 = *(a1 + 4);
      v12 = *(a1 + 5);
      v38 = v13;
      v39 = v12;
      v37 = v32;
      v14 = *(v10 + 48);
      if (v14)
      {
        v15 = *(v14 + 8);
        if (v15)
        {
          CFRetain(*(v15 - 8));
          v16 = WebKit::VideoPresentationManagerProxy::ensureModelAndInterface(v10, v13, v12);
          std::pair<WTF::Ref<WebKit::VideoPresentationModelContext,WTF::RawPtrTraits<WebKit::VideoPresentationModelContext>,WTF::DefaultRefDerefTraits<WebKit::VideoPresentationModelContext>>,WTF::Ref<WebCore::VideoPresentationInterfaceIOS,WTF::RawPtrTraits<WebCore::VideoPresentationInterfaceIOS>,WTF::DefaultRefDerefTraits<WebCore::VideoPresentationInterfaceIOS>>>::pair[abi:sn200100](&v35, v16);
          buf.origin.x = 0.0;
          buf.origin.y = 0.0;
          buf.size = vcvtq_f64_f32(*(&v37 + 8));
          WebCore::VideoFullscreenCaptions::setCaptionsFrame((v36 + 32), &buf);
          v33 = 0;
          v34 = 0;
          v17 = WTF::dynamic_objc_cast<WKLayerHostView>(*(v36 + 72));
          v18 = v17;
          if (v17 && *(v17 + 424))
          {
            v19 = [MEMORY[0x1E695AA50] coordinatorWithError:0];
            [v19 addLayerHierarchyHostingView:*(v18 + 424)];
            WebKit::LayerHostingContext::fence(v19, &buf);
            WTF::MachSendRight::operator=();
            y = buf.origin.y;
            buf.origin.y = 0.0;
            v22 = v34;
            v34 = *&y;
            if (v22)
            {
              WTF::fastFree(v22, v20);
              v24 = buf.origin.y;
              buf.origin.y = 0.0;
              if (v24 != 0.0)
              {
                WTF::fastFree(*&v24, v23);
              }
            }

            WTF::MachSendRight::~MachSendRight(&buf);
            v25 = qword_1ED640D38;
            if (os_log_type_enabled(qword_1ED640D38, OS_LOG_TYPE_DEFAULT))
            {
              v26 = v34;
              if (v34)
              {
                v26 = *v34;
              }

              LODWORD(buf.origin.x) = 134219264;
              *(&buf.origin.x + 4) = *&v37;
              WORD2(buf.origin.y) = 2048;
              *(&buf.origin.y + 6) = *(&v37 + 1);
              HIWORD(buf.size.width) = 2048;
              buf.size.height = *(&v37 + 2);
              v41 = 2048;
              v42 = *(&v37 + 3);
              v43 = 1024;
              v44 = v33;
              v45 = 2048;
              v46 = v26;
              _os_log_impl(&dword_19D52D000, v25, OS_LOG_TYPE_DEFAULT, "VideoPresentationManagerProxy::setVideoLayerFrame: x=%f y=%f w=%f h=%f send right %d, fence data size %lu", &buf, 0x3Au);
            }

            *&buf.origin.x = &v38;
            *&buf.origin.y = &v37;
            *&buf.size.width = &v33;
            WebKit::VideoPresentationManagerProxy::sendToWebProcess<Messages::VideoPresentationManager::SetVideoLayerFrameFenced>(*(v10 + 48), v38, v39, &buf);
            [v19 commit];
          }

          else
          {
            *&buf.origin.x = &v38;
            *&buf.origin.y = &v37;
            *&buf.size.width = &v33;
            WebKit::VideoPresentationManagerProxy::sendToWebProcess<Messages::VideoPresentationManager::SetVideoLayerFrameFenced>(*(v10 + 48), v38, v39, &buf);
          }

          v28 = v34;
          v34 = 0;
          if (v28)
          {
            WTF::fastFree(v28, v27);
          }

          WTF::MachSendRight::~MachSendRight(&v33);
          v30 = v36;
          v36 = 0;
          if (v30)
          {
            WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebCore::VideoPresentationInterfaceIOS,(WTF::DestructionThread)2>::deref((v30 + 104));
          }

          v31 = v35;
          v35 = 0;
          if (v31)
          {
            WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebCore::VideoPresentationModel,(WTF::DestructionThread)0>::deref((v31 + 8), v29);
          }

          CFRelease(*(v15 - 8));
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
    }
  }
}

void sub_19DC9BF24(_Unwind_Exception *a1, void *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, WTF *a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19, WTF *a20)
{
  v23 = a12;
  a12 = 0;
  if (v23)
  {
    WTF::fastFree(v23, a2);
  }

  WTF::MachSendRight::~MachSendRight(&a11);
  v25 = a14;
  a14 = 0;
  if (v25)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebCore::VideoPresentationInterfaceIOS,(WTF::DestructionThread)2>::deref((v25 + 104));
  }

  v26 = a13;
  a13 = 0;
  if (v26)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebCore::VideoPresentationModel,(WTF::DestructionThread)0>::deref((v26 + 8), v24);
  }

  CFRelease(*(v21 - 8));
  if (v20[4] == 1)
  {
    (*(*v20 + 24))(v20);
  }

  else
  {
    --v20[4];
  }

  _Unwind_Resume(a1);
}

void WebKit::VideoPresentationModelContext::setVideoLayerGravity(WebKit::VideoPresentationModelContext *a1, WTF::String *a2)
{
  v64 = *MEMORY[0x1E69E9840];
  v4 = WebKit::VideoPresentationModelContext::loggerPtr(a1);
  if (v4)
  {
    v5 = v4;
    atomic_fetch_add(v4 + 2, 1u);
    v6 = *(*(a1 + 3) + 336);
    v57[0] = "VideoPresentationModelContext";
    v57[1] = 30;
    v57[2] = "setVideoLayerGravity";
    v57[3] = v6;
    v7 = MEMORY[0x1E696EBD0];
    while (1)
    {
      v8 = *v7;
      if (v8)
      {
        break;
      }

      v9 = *v7;
      atomic_compare_exchange_strong_explicit(v7, &v9, v8 | 1, memory_order_acquire, memory_order_acquire);
      if (v9 == v8)
      {
        v10 = WTF::Logger::messageHandlerObservers(v4);
        v11 = *(v10 + 12);
        if (v11)
        {
          v12 = *v10;
          v13 = *v10 + 8 * v11;
          do
          {
            v14 = *v12;
            *buf = 0;
            WTF::Logger::LogSiteIdentifier::toString(&buf[8], v57);
            v63 = 0;
            WTF::String::number(a2);
            WTF::Vector<WTF::JSONLogValue,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::Vector(v58, buf, 2uLL);
            (*(*v14 + 16))(v14, &WebKit2LogFullscreen, 0, v58);
            WTF::Vector<std::tuple<Inspector::BackendDispatcher::CommonErrorCode,WTF::String>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v58, v15);
            for (i = 24; i != -8; i -= 16)
            {
              v18 = *&buf[i];
              *&buf[i] = 0;
              if (v18 && atomic_fetch_add_explicit(v18, 0xFFFFFFFE, memory_order_relaxed) == 2)
              {
                WTF::StringImpl::destroy(v18, v16);
              }
            }

            ++v12;
          }

          while (v12 != v13);
        }

        v19 = 1;
        atomic_compare_exchange_strong_explicit(v7, &v19, 0, memory_order_release, memory_order_relaxed);
        if (v19 != 1)
        {
          WTF::Lock::unlockSlow(MEMORY[0x1E696EBD0]);
        }

        if (*(v5 + 12) == 1)
        {
          WTF::Logger::LogSiteIdentifier::toString(&v60, v57);
          WTF::String::number(a2);
          *buf = v60;
          v58[0] = v59;
          WTF::tryMakeStringFromAdapters<WTF::StringTypeAdapter<WTF::String,void>,WTF::StringTypeAdapter<WTF::String,void>>(buf, v58, &v61);
          if (!v61)
          {
            __break(0xC471u);
            return;
          }

          v21 = v59;
          v59 = 0;
          if (v21 && atomic_fetch_add_explicit(v21, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v21, v20);
          }

          v22 = v60;
          v60 = 0;
          if (v22 && atomic_fetch_add_explicit(v22, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v22, v20);
          }

          v23 = qword_1ED640AE0;
          v24 = os_log_type_enabled(qword_1ED640AE0, OS_LOG_TYPE_DEFAULT);
          if (v24)
          {
            WTF::String::utf8();
            v26 = v58[0] ? v58[0] + 16 : 0;
            *buf = 136446210;
            *&buf[4] = v26;
            _os_log_impl(&dword_19D52D000, v23, OS_LOG_TYPE_DEFAULT, "%{public}s", buf, 0xCu);
            v24 = v58[0];
            v58[0] = 0;
            if (v24)
            {
              if (*v24 == 1)
              {
                v24 = WTF::fastFree(v24, v25);
              }

              else
              {
                --*v24;
              }
            }
          }

          if (WebKit2LogFullscreen)
          {
            v27 = MEMORY[0x1E696EBC0];
            while (1)
            {
              v28 = *v27;
              if (v28)
              {
                break;
              }

              v29 = *v27;
              atomic_compare_exchange_strong_explicit(v27, &v29, v28 | 1, memory_order_acquire, memory_order_acquire);
              if (v29 == v28)
              {
                v30 = WTF::Logger::observers(v24);
                v31 = *(v30 + 12);
                if (v31)
                {
                  v32 = *v30;
                  v33 = *v30 + 8 * v31;
                  do
                  {
                    v34 = *v32;
                    *buf = 0;
                    WTF::Logger::LogSiteIdentifier::toString(&buf[8], v57);
                    v63 = 0;
                    WTF::String::number(a2);
                    WTF::Vector<WTF::JSONLogValue,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::Vector(v58, buf, 2uLL);
                    (*(*v34 + 16))(v34, &WebKit2LogFullscreen, 0, v58);
                    WTF::Vector<std::tuple<Inspector::BackendDispatcher::CommonErrorCode,WTF::String>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v58, v35);
                    for (j = 24; j != -8; j -= 16)
                    {
                      v37 = *&buf[j];
                      *&buf[j] = 0;
                      if (v37 && atomic_fetch_add_explicit(v37, 0xFFFFFFFE, memory_order_relaxed) == 2)
                      {
                        WTF::StringImpl::destroy(v37, v25);
                      }
                    }

                    ++v32;
                  }

                  while (v32 != v33);
                }

                v38 = 1;
                atomic_compare_exchange_strong_explicit(v27, &v38, 0, memory_order_release, memory_order_relaxed);
                if (v38 != 1)
                {
                  WTF::Lock::unlockSlow(MEMORY[0x1E696EBC0]);
                }

                break;
              }
            }
          }

          v39 = v61;
          v61 = 0;
          if (v39 && atomic_fetch_add_explicit(v39, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v39, v25);
          }
        }

        break;
      }
    }

    if (atomic_fetch_add(v5 + 2, 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, v5 + 2);
      (*(*v5 + 8))(v5);
    }
  }

  v40 = *(a1 + 2);
  if (v40)
  {
    v41 = *(v40 + 8);
    if (v41)
    {
      v42 = *(v41 + 16);
      *(v41 + 16) = v42 + 1;
      v43 = *(v41 + 48);
      if (v43)
      {
        v44 = *(v43 + 8);
        if (v44)
        {
          v46 = *(a1 + 4);
          v45 = *(a1 + 5);
          CFRetain(*(v44 - 8));
          *buf = v45;
          {
            WebKit::WebProcessProxy::allProcessMap(void)::map = 0;
          }

          v47 = WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::CheckedRef<WebKit::WebProcessProxy,WTF::RawPtrTraits<WebKit::WebProcessProxy>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::CheckedRef<WebKit::WebProcessProxy,WTF::RawPtrTraits<WebKit::WebProcessProxy>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::get<WTF::IdentityHashTranslator<WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::CheckedRef<WebKit::WebProcessProxy,WTF::RawPtrTraits<WebKit::WebProcessProxy>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::CheckedRef<WebKit::WebProcessProxy,WTF::RawPtrTraits<WebKit::WebProcessProxy>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(&WebKit::WebProcessProxy::allProcessMap(void)::map, buf);
          if (v47)
          {
            v48 = v47;
            atomic_fetch_add(v47 + 4, 1u);
            v49 = WebKit::WebPageProxy::webPageIDInProcess((v44 - 16), v47);
            v51 = IPC::Encoder::operator new(0x238, v50);
            *v51 = 1810;
            *(v51 + 2) = 0;
            *(v51 + 3) = 0;
            *(v51 + 1) = v49;
            *(v51 + 68) = 0;
            *(v51 + 70) = 0;
            *(v51 + 69) = 0;
            IPC::Encoder::encodeHeader(v51);
            v57[0] = v51;
            IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(v51, v46);
            IPC::ArgumentCoder<unsigned int,void>::encode<IPC::Encoder>(v51, a2);
            buf[0] = 0;
            LOBYTE(v63) = 0;
            WebKit::AuxiliaryProcessProxy::sendMessage(v48, v57, 0, buf, 1);
            if (v63 == 1)
            {
              v53 = *buf;
              *buf = 0;
              if (v53)
              {
                (*(*v53 + 8))(v53);
              }
            }

            v54 = v57[0];
            v57[0] = 0;
            if (v54)
            {
              IPC::Encoder::~Encoder(v54, v52);
              bmalloc::api::tzoneFree(v55, v56);
            }

            WTF::ThreadSafeRefCounted<WebKit::AuxiliaryProcessProxy,(WTF::DestructionThread)2>::deref((v48 + 16));
          }

          CFRelease(*(v44 - 8));
          v42 = *(v41 + 16) - 1;
        }
      }

      if (v42)
      {
        *(v41 + 16) = v42;
      }

      else
      {
        (*(*v41 + 24))(v41);
      }
    }
  }
}

void sub_19DC9C64C(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, IPC::Encoder *a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14, uint64_t a15, WTF::StringImpl *a16, uint64_t a17, WTF::StringImpl *a18, uint64_t a19, WTF::StringImpl *a20, char a21)
{
  v24 = 1;
  atomic_compare_exchange_strong_explicit(v22, &v24, 0, memory_order_release, memory_order_relaxed);
  if (v24 != 1)
  {
    WTF::Lock::unlockSlow(MEMORY[0x1E696EBC0]);
  }

  if (a18 && atomic_fetch_add_explicit(a18, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(a18, a2);
  }

  if (atomic_fetch_add(v21 + 2, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v21 + 2);
    (*(*v21 + 8))(v21);
  }

  _Unwind_Resume(exception_object);
}

void WebKit::VideoPresentationModelContext::setVideoFullscreenFrame(WebKit::VideoPresentationModelContext *a1, float a2, float a3, float a4, float a5)
{
  *&v29 = __PAIR64__(LODWORD(a3), LODWORD(a2));
  *(&v29 + 1) = __PAIR64__(LODWORD(a5), LODWORD(a4));
  v6 = WebKit::VideoPresentationModelContext::loggerPtr(a1);
  if (v6)
  {
    v7 = v6;
    atomic_fetch_add(v6 + 2, 1u);
    v8 = *(*(a1 + 3) + 336);
    v26[0] = "VideoPresentationModelContext";
    v26[1] = 30;
    v27 = "setVideoFullscreenFrame";
    v28 = v8;
    if (WTF::Logger::willLog<WTF::Logger::LogSiteIdentifier,WebCore::FloatRect>(v6, v26, &v29))
    {
      WTF::Logger::log<WTF::Logger::LogSiteIdentifier,WebCore::FloatRect>(v26, &v29);
    }

    if (atomic_fetch_add(v7 + 2, 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, v7 + 2);
      (*(*v7 + 8))(v7);
    }
  }

  v9 = *(a1 + 2);
  if (v9)
  {
    v10 = *(v9 + 8);
    if (v10)
    {
      v11 = *(v10 + 16);
      *(v10 + 16) = v11 + 1;
      v13 = *(a1 + 4);
      v12 = *(a1 + 5);
      *v30 = v29;
      v14 = *(v10 + 48);
      if (v14)
      {
        v15 = *(v14 + 8);
        if (v15)
        {
          CFRetain(*(v15 - 8));
          v26[0] = v12;
          {
            WebKit::WebProcessProxy::allProcessMap(void)::map = 0;
          }

          v16 = WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::CheckedRef<WebKit::WebProcessProxy,WTF::RawPtrTraits<WebKit::WebProcessProxy>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::CheckedRef<WebKit::WebProcessProxy,WTF::RawPtrTraits<WebKit::WebProcessProxy>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::get<WTF::IdentityHashTranslator<WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::CheckedRef<WebKit::WebProcessProxy,WTF::RawPtrTraits<WebKit::WebProcessProxy>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::CheckedRef<WebKit::WebProcessProxy,WTF::RawPtrTraits<WebKit::WebProcessProxy>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(&WebKit::WebProcessProxy::allProcessMap(void)::map, v26);
          if (v16)
          {
            v17 = v16;
            atomic_fetch_add(v16 + 4, 1u);
            v18 = WebKit::WebPageProxy::webPageIDInProcess((v15 - 16), v16);
            v20 = IPC::Encoder::operator new(0x238, v19);
            *v20 = 1808;
            *(v20 + 2) = 0;
            *(v20 + 3) = 0;
            *(v20 + 1) = v18;
            *(v20 + 68) = 0;
            *(v20 + 70) = 0;
            *(v20 + 69) = 0;
            IPC::Encoder::encodeHeader(v20);
            v31 = v20;
            IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(v20, v13);
            IPC::ArgumentCoder<WebCore::FloatRect,void>::encode(v20, v30);
            LOBYTE(v26[0]) = 0;
            LOBYTE(v27) = 0;
            WebKit::AuxiliaryProcessProxy::sendMessage(v17, &v31, 0, v26, 1);
            if (v27 == 1)
            {
              v22 = v26[0];
              v26[0] = 0;
              if (v22)
              {
                (*(*v22 + 8))(v22);
              }
            }

            v23 = v31;
            v31 = 0;
            if (v23)
            {
              IPC::Encoder::~Encoder(v23, v21);
              bmalloc::api::tzoneFree(v24, v25);
            }

            WTF::ThreadSafeRefCounted<WebKit::AuxiliaryProcessProxy,(WTF::DestructionThread)2>::deref((v17 + 16));
          }

          CFRelease(*(v15 - 8));
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
    }
  }
}

void sub_19DC9CB88(_Unwind_Exception *a1, void *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, IPC::Encoder *a18)
{
  if (a11 == 1 && a9)
  {
    (*(*a9 + 8))(a9);
  }

  if (a18)
  {
    IPC::Encoder::~Encoder(a18, a2);
    bmalloc::api::tzoneFree(v22, v23);
  }

  WTF::ThreadSafeRefCounted<WebKit::AuxiliaryProcessProxy,(WTF::DestructionThread)2>::deref(v19);
  CFRelease(*(v20 - 8));
  if (v18[4] == 1)
  {
    (*(*v18 + 24))(v18);
  }

  else
  {
    --v18[4];
  }

  _Unwind_Resume(a1);
}

void WebKit::VideoPresentationModelContext::fullscreenModeChanged(WebKit::VideoPresentationModelContext *this, WTF::String *a2)
{
  v53 = *MEMORY[0x1E69E9840];
  v4 = WebKit::VideoPresentationModelContext::loggerPtr(this);
  if (v4)
  {
    v5 = v4;
    atomic_fetch_add(v4 + 2, 1u);
    v6 = *(*(this + 3) + 336);
    p_buf = "VideoPresentationModelContext";
    v44 = 30;
    v45 = "fullscreenModeChanged";
    v46 = v6;
    v7 = MEMORY[0x1E696EBD0];
    while (1)
    {
      v8 = *v7;
      if (v8)
      {
        break;
      }

      v9 = *v7;
      atomic_compare_exchange_strong_explicit(v7, &v9, v8 | 1, memory_order_acquire, memory_order_acquire);
      if (v9 == v8)
      {
        v10 = WTF::Logger::messageHandlerObservers(v4);
        v11 = *(v10 + 12);
        if (v11)
        {
          v12 = *v10;
          v13 = *v10 + 8 * v11;
          do
          {
            v14 = *v12;
            LODWORD(buf) = 0;
            WTF::Logger::LogSiteIdentifier::toString(&buf + 1, &p_buf);
            v52 = 0;
            WTF::String::number(a2);
            WTF::Vector<WTF::JSONLogValue,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::Vector(v47, &buf, 2uLL);
            (*(*v14 + 16))(v14, &WebKit2LogFullscreen, 0, v47);
            WTF::Vector<std::tuple<Inspector::BackendDispatcher::CommonErrorCode,WTF::String>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v47, v15);
            for (i = 24; i != -8; i -= 16)
            {
              v18 = *(&buf + i);
              *(&buf + i) = 0;
              if (v18 && atomic_fetch_add_explicit(v18, 0xFFFFFFFE, memory_order_relaxed) == 2)
              {
                WTF::StringImpl::destroy(v18, v16);
              }
            }

            ++v12;
          }

          while (v12 != v13);
        }

        v19 = 1;
        atomic_compare_exchange_strong_explicit(v7, &v19, 0, memory_order_release, memory_order_relaxed);
        if (v19 != 1)
        {
          WTF::Lock::unlockSlow(MEMORY[0x1E696EBD0]);
        }

        if (*(v5 + 12) == 1)
        {
          WTF::Logger::LogSiteIdentifier::toString(&v49, &p_buf);
          WTF::String::number(a2);
          *&buf = v49;
          v47[0] = v48;
          WTF::tryMakeStringFromAdapters<WTF::StringTypeAdapter<WTF::String,void>,WTF::StringTypeAdapter<WTF::String,void>>(&buf, v47, &v50);
          if (!v50)
          {
            __break(0xC471u);
            return;
          }

          v21 = v48;
          v48 = 0;
          if (v21 && atomic_fetch_add_explicit(v21, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v21, v20);
          }

          v22 = v49;
          v49 = 0;
          if (v22 && atomic_fetch_add_explicit(v22, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v22, v20);
          }

          v23 = qword_1ED640AE0;
          v24 = os_log_type_enabled(qword_1ED640AE0, OS_LOG_TYPE_DEFAULT);
          if (v24)
          {
            WTF::String::utf8();
            v26 = v47[0] ? v47[0] + 16 : 0;
            LODWORD(buf) = 136446210;
            *(&buf + 4) = v26;
            _os_log_impl(&dword_19D52D000, v23, OS_LOG_TYPE_DEFAULT, "%{public}s", &buf, 0xCu);
            v24 = v47[0];
            v47[0] = 0;
            if (v24)
            {
              if (*v24 == 1)
              {
                v24 = WTF::fastFree(v24, v25);
              }

              else
              {
                --*v24;
              }
            }
          }

          if (WebKit2LogFullscreen)
          {
            v27 = MEMORY[0x1E696EBC0];
            while (1)
            {
              v28 = *v27;
              if (v28)
              {
                break;
              }

              v29 = *v27;
              atomic_compare_exchange_strong_explicit(v27, &v29, v28 | 1, memory_order_acquire, memory_order_acquire);
              if (v29 == v28)
              {
                v30 = WTF::Logger::observers(v24);
                v31 = *(v30 + 12);
                if (v31)
                {
                  v32 = *v30;
                  v33 = *v30 + 8 * v31;
                  do
                  {
                    v34 = *v32;
                    LODWORD(buf) = 0;
                    WTF::Logger::LogSiteIdentifier::toString(&buf + 1, &p_buf);
                    v52 = 0;
                    WTF::String::number(a2);
                    WTF::Vector<WTF::JSONLogValue,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::Vector(v47, &buf, 2uLL);
                    (*(*v34 + 16))(v34, &WebKit2LogFullscreen, 0, v47);
                    WTF::Vector<std::tuple<Inspector::BackendDispatcher::CommonErrorCode,WTF::String>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v47, v35);
                    for (j = 24; j != -8; j -= 16)
                    {
                      v37 = *(&buf + j);
                      *(&buf + j) = 0;
                      if (v37 && atomic_fetch_add_explicit(v37, 0xFFFFFFFE, memory_order_relaxed) == 2)
                      {
                        WTF::StringImpl::destroy(v37, v25);
                      }
                    }

                    ++v32;
                  }

                  while (v32 != v33);
                }

                v38 = 1;
                atomic_compare_exchange_strong_explicit(v27, &v38, 0, memory_order_release, memory_order_relaxed);
                if (v38 != 1)
                {
                  WTF::Lock::unlockSlow(MEMORY[0x1E696EBC0]);
                }

                break;
              }
            }
          }

          v39 = v50;
          v50 = 0;
          if (v39 && atomic_fetch_add_explicit(v39, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v39, v25);
          }
        }

        break;
      }
    }

    if (atomic_fetch_add(v5 + 2, 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, v5 + 2);
      (*(*v5 + 8))(v5);
    }
  }

  v40 = *(this + 2);
  if (v40)
  {
    v41 = *(v40 + 8);
    if (v41)
    {
      ++*(v41 + 16);
      v42 = *(this + 5);
      *&buf = *(this + 4);
      *(&buf + 1) = v42;
      p_buf = &buf;
      LODWORD(v44) = a2;
      WebKit::VideoPresentationManagerProxy::sendToWebProcess<Messages::VideoPresentationManager::FullscreenModeChanged>(*(v41 + 48), buf, v42, &p_buf);
      if (*(v41 + 16) == 1)
      {
        (*(*v41 + 24))(v41);
      }

      else
      {
        --*(v41 + 16);
      }
    }
  }
}

void sub_19DC9D178(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14, uint64_t a15, WTF::StringImpl *a16, uint64_t a17, WTF::StringImpl *a18, char a19, WTF::StringImpl *a20)
{
  v23 = 1;
  atomic_compare_exchange_strong_explicit(v21, &v23, 0, memory_order_release, memory_order_relaxed);
  if (v23 != 1)
  {
    WTF::Lock::unlockSlow(MEMORY[0x1E696EBC0]);
  }

  if (a18 && atomic_fetch_add_explicit(a18, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(a18, a2);
  }

  if (atomic_fetch_add(v20 + 2, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v20 + 2);
    (*(*v20 + 8))(v20);
  }

  _Unwind_Resume(exception_object);
}

uint64_t WebKit::VideoPresentationModelContext::presentingViewController(WebKit::VideoPresentationModelContext *this)
{
  v1 = *(this + 2);
  if (!v1)
  {
    return 0;
  }

  v2 = *(v1 + 8);
  if (!v2)
  {
    return 0;
  }

  v3 = *(v2 + 48);
  if (!v3)
  {
    return 0;
  }

  v4 = *(v3 + 8);
  if (!v4)
  {
    return 0;
  }

  v5 = *(v4 + 40);
  if (!v5)
  {
    return 0;
  }

  v6 = *(v5 + 8);
  if (!v6)
  {
    return 0;
  }

  (*(*v6 + 1712))(v6);
  v7 = (*(*v6 + 1992))(v6);
  (*(*v6 + 1720))(v6);
  return v7;
}

WKVideoFullScreenViewController *WebKit::VideoPresentationModelContext::createVideoFullscreenViewController@<X0>(AVPlayerViewController *a1@<X1>, WKVideoFullScreenViewController **a2@<X8>)
{
  result = [[WKVideoFullScreenViewController alloc] initWithAVPlayerViewController:a1];
  *a2 = result;
  return result;
}

void WebKit::VideoPresentationModelContext::requestUpdateInlineRect(WebKit::VideoPresentationModelContext *this)
{
  v2 = WebKit::VideoPresentationModelContext::loggerPtr(this);
  if (v2)
  {
    v3 = v2;
    atomic_fetch_add(v2 + 2, 1u);
    v4 = *(*(this + 3) + 336);
    v22[0] = "VideoPresentationModelContext";
    v22[1] = 30;
    v23 = "requestUpdateInlineRect";
    v24 = v4;
    if (WTF::Logger::willLog<WTF::Logger::LogSiteIdentifier>(v2, &WebKit2LogFullscreen, 0, v22))
    {
      WTF::Logger::log<WTF::Logger::LogSiteIdentifier>(&WebKit2LogFullscreen, 0, v22);
    }

    if (atomic_fetch_add(v3 + 2, 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, v3 + 2);
      (*(*v3 + 8))(v3);
    }
  }

  v5 = *(this + 2);
  if (v5)
  {
    v6 = *(v5 + 8);
    if (v6)
    {
      v7 = *(v6 + 16);
      *(v6 + 16) = v7 + 1;
      v8 = *(v6 + 48);
      if (v8)
      {
        v9 = *(v8 + 8);
        if (v9)
        {
          v11 = *(this + 4);
          v10 = *(this + 5);
          CFRetain(*(v9 - 8));
          v22[0] = v10;
          {
            WebKit::WebProcessProxy::allProcessMap(void)::map = 0;
          }

          v12 = WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::CheckedRef<WebKit::WebProcessProxy,WTF::RawPtrTraits<WebKit::WebProcessProxy>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::CheckedRef<WebKit::WebProcessProxy,WTF::RawPtrTraits<WebKit::WebProcessProxy>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::get<WTF::IdentityHashTranslator<WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::CheckedRef<WebKit::WebProcessProxy,WTF::RawPtrTraits<WebKit::WebProcessProxy>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::CheckedRef<WebKit::WebProcessProxy,WTF::RawPtrTraits<WebKit::WebProcessProxy>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(&WebKit::WebProcessProxy::allProcessMap(void)::map, v22);
          if (v12)
          {
            v13 = v12;
            atomic_fetch_add(v12 + 4, 1u);
            v14 = WebKit::WebPageProxy::webPageIDInProcess((v9 - 16), v12);
            v16 = IPC::Encoder::operator new(0x238, v15);
            *v16 = 1803;
            *(v16 + 2) = 0;
            *(v16 + 3) = 0;
            *(v16 + 1) = v14;
            *(v16 + 68) = 0;
            *(v16 + 70) = 0;
            *(v16 + 69) = 0;
            IPC::Encoder::encodeHeader(v16);
            v25 = v16;
            IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(v16, v11);
            LOBYTE(v22[0]) = 0;
            LOBYTE(v23) = 0;
            WebKit::AuxiliaryProcessProxy::sendMessage(v13, &v25, 0, v22, 1);
            if (v23 == 1)
            {
              v18 = v22[0];
              v22[0] = 0;
              if (v18)
              {
                (*(*v18 + 8))(v18);
              }
            }

            v19 = v25;
            v25 = 0;
            if (v19)
            {
              IPC::Encoder::~Encoder(v19, v17);
              bmalloc::api::tzoneFree(v20, v21);
            }

            WTF::ThreadSafeRefCounted<WebKit::AuxiliaryProcessProxy,(WTF::DestructionThread)2>::deref((v13 + 16));
          }

          CFRelease(*(v9 - 8));
          v7 = *(v6 + 16) - 1;
        }
      }

      if (v7)
      {
        *(v6 + 16) = v7;
      }

      else
      {
        (*(*v6 + 24))(v6);
      }
    }
  }
}

void sub_19DC9D790(_Unwind_Exception *a1, void *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, uint64_t a13, IPC::Encoder *a14)
{
  if (a12 == 1 && a10)
  {
    (*(*a10 + 8))(a10);
  }

  if (a14)
  {
    IPC::Encoder::~Encoder(a14, a2);
    bmalloc::api::tzoneFree(v18, v19);
  }

  WTF::ThreadSafeRefCounted<WebKit::AuxiliaryProcessProxy,(WTF::DestructionThread)2>::deref(v15);
  CFRelease(*(v16 - 8));
  if (v14[4] == 1)
  {
    (*(*v14 + 24))(v14);
  }

  else
  {
    --v14[4];
  }

  _Unwind_Resume(a1);
}

void WebKit::VideoPresentationModelContext::requestVideoContentLayer(WebKit::VideoPresentationModelContext *this)
{
  v2 = WebKit::VideoPresentationModelContext::loggerPtr(this);
  if (v2)
  {
    v3 = v2;
    atomic_fetch_add(v2 + 2, 1u);
    v4 = *(*(this + 3) + 336);
    v8 = "VideoPresentationModelContext";
    v9 = 30;
    v10 = "requestVideoContentLayer";
    v11 = v4;
    if (WTF::Logger::willLog<WTF::Logger::LogSiteIdentifier>(v2, &WebKit2LogFullscreen, 0, &v8))
    {
      WTF::Logger::log<WTF::Logger::LogSiteIdentifier>(&WebKit2LogFullscreen, 0, &v8);
    }

    if (atomic_fetch_add(v3 + 2, 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, v3 + 2);
      (*(*v3 + 8))(v3);
    }
  }

  v5 = *(this + 2);
  if (v5)
  {
    v6 = *(v5 + 8);
    if (v6)
    {
      ++*(v6 + 16);
      v7 = *(this + 5);
      v8 = *(this + 4);
      v9 = v7;
      v12 = &v8;
      WebKit::VideoPresentationManagerProxy::sendToWebProcess<Messages::VideoPresentationManager::RequestVideoContentLayer>(*(v6 + 48), v8, v7, &v12);
      if (*(v6 + 16) == 1)
      {
        (*(*v6 + 24))(v6);
      }

      else
      {
        --*(v6 + 16);
      }
    }
  }
}

void sub_19DC9D9F0(_Unwind_Exception *exception_object)
{
  if (v1[4] == 1)
  {
    (*(*v1 + 24))(v1);
  }

  else
  {
    --v1[4];
  }

  _Unwind_Resume(exception_object);
}

void WebKit::VideoPresentationModelContext::returnVideoContentLayer(WebKit::VideoPresentationModelContext *this)
{
  v2 = WebKit::VideoPresentationModelContext::loggerPtr(this);
  if (v2)
  {
    v3 = v2;
    atomic_fetch_add(v2 + 2, 1u);
    v4 = *(*(this + 3) + 336);
    v8 = "VideoPresentationModelContext";
    v9 = 30;
    v10 = "returnVideoContentLayer";
    v11 = v4;
    if (WTF::Logger::willLog<WTF::Logger::LogSiteIdentifier>(v2, &WebKit2LogFullscreen, 0, &v8))
    {
      WTF::Logger::log<WTF::Logger::LogSiteIdentifier>(&WebKit2LogFullscreen, 0, &v8);
    }

    if (atomic_fetch_add(v3 + 2, 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, v3 + 2);
      (*(*v3 + 8))(v3);
    }
  }

  v5 = *(this + 2);
  if (v5)
  {
    v6 = *(v5 + 8);
    if (v6)
    {
      ++*(v6 + 16);
      v7 = *(this + 5);
      v8 = *(this + 4);
      v9 = v7;
      v12 = &v8;
      WebKit::VideoPresentationManagerProxy::sendToWebProcess<Messages::VideoPresentationManager::ReturnVideoContentLayer>(*(v6 + 48), v8, v7, &v12);
      if (*(v6 + 16) == 1)
      {
        (*(*v6 + 24))(v6);
      }

      else
      {
        --*(v6 + 16);
      }
    }
  }
}

void sub_19DC9DBD8(_Unwind_Exception *exception_object)
{
  if (v1[4] == 1)
  {
    (*(*v1 + 24))(v1);
  }

  else
  {
    --v1[4];
  }

  _Unwind_Resume(exception_object);
}

uint64_t WebKit::VideoPresentationModelContext::returnVideoView(WebKit::VideoPresentationModelContext *this)
{
  result = WebKit::VideoPresentationModelContext::loggerPtr(this);
  if (result)
  {
    v3 = result;
    atomic_fetch_add((result + 8), 1u);
    v4 = *(*(this + 3) + 336);
    v10[0] = "VideoPresentationModelContext";
    v10[1] = 30;
    v10[2] = "returnVideoView";
    v10[3] = v4;
    result = WTF::Logger::willLog<WTF::Logger::LogSiteIdentifier>(result, &WebKit2LogFullscreen, 0, v10);
    if (result)
    {
      result = WTF::Logger::log<WTF::Logger::LogSiteIdentifier>(&WebKit2LogFullscreen, 0, v10);
    }

    if (atomic_fetch_add(v3 + 2, 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, v3 + 2);
      result = (*(*v3 + 8))(v3);
    }
  }

  v5 = *(this + 2);
  if (v5)
  {
    v6 = *(v5 + 8);
    if (v6)
    {
      ++v6[4];
      WebKit::VideoPresentationManagerProxy::ensureInterface(v6, *(this + 4), *(this + 5), v10);
      v7 = v10[0];
      v8 = *(v10[0] + 88);
      if (v8)
      {
        v9 = *(v10[0] + 72) == 0;
      }

      else
      {
        v9 = 1;
      }

      if (!v9)
      {
        [*(v10[0] + 88) addSubview:?];
        [v8 setNeedsLayout];
        [v8 layoutIfNeeded];
      }

      result = WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebCore::VideoPresentationInterfaceIOS,(WTF::DestructionThread)2>::deref((v7 + 104));
      if (v6[4] == 1)
      {
        return (*(*v6 + 24))(v6);
      }

      else
      {
        --v6[4];
      }
    }
  }

  return result;
}

void sub_19DC9DDEC(_Unwind_Exception *exception_object)
{
  if (v1[4] == 1)
  {
    (*(*v1 + 24))(v1);
  }

  else
  {
    --v1[4];
  }

  _Unwind_Resume(exception_object);
}

void WebKit::VideoPresentationModelContext::didSetupFullscreen(WebKit::VideoPresentationModelContext *this)
{
  v2 = WebKit::VideoPresentationModelContext::loggerPtr(this);
  if (v2)
  {
    v3 = v2;
    atomic_fetch_add(v2 + 2, 1u);
    v4 = *(*(this + 3) + 336);
    v7[0] = "VideoPresentationModelContext";
    v7[1] = 30;
    v7[2] = "didSetupFullscreen";
    v7[3] = v4;
    if (WTF::Logger::willLog<WTF::Logger::LogSiteIdentifier>(v2, &WebKit2LogFullscreen, 0, v7))
    {
      WTF::Logger::log<WTF::Logger::LogSiteIdentifier>(&WebKit2LogFullscreen, 0, v7);
    }

    if (atomic_fetch_add(v3 + 2, 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, v3 + 2);
      (*(*v3 + 8))(v3);
    }
  }

  v5 = *(this + 2);
  if (v5)
  {
    v6 = *(v5 + 8);
    if (v6)
    {
      ++v6[4];
      WebKit::VideoPresentationManagerProxy::didSetupFullscreen(v6, *(this + 4), *(this + 5));
      if (v6[4] == 1)
      {
        (*(*v6 + 24))(v6);
      }

      else
      {
        --v6[4];
      }
    }
  }
}

void sub_19DC9DFD4(_Unwind_Exception *exception_object)
{
  if (v1[4] == 1)
  {
    (*(*v1 + 24))(v1);
  }

  else
  {
    --v1[4];
  }

  _Unwind_Resume(exception_object);
}

void WebKit::VideoPresentationManagerProxy::didSetupFullscreen(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a1 + 48);
  if (v6 && (v7 = *(v6 + 8)) != 0)
  {
    v8 = v7 - 16;
    CFRetain(*(v7 - 8));
    (*(**(v7 + 104) + 40))(*(v7 + 104), v7 - 16);
    v9 = 0;
  }

  else
  {
    v8 = 0;
    v9 = 1;
  }

  if (*(a1 + 32) == 1)
  {
    WebKit::VideoPresentationManagerProxy::didEnterFullscreen(a1, a2, a3, (a1 + 36));
  }

  else
  {
    WebKit::VideoPresentationManagerProxy::ensureInterface(a1, a2, a3, &v20);
    v10 = v20;
    MEMORY[0x19EB0CD80](v20);
    v11 = *(a1 + 64);
    v12 = WTF::HashTable<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::MediaPlayerClientIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::KeyValuePair<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::MediaPlayerClientIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,std::pair<WTF::Ref<WebKit::VideoPresentationModelContext,WTF::RawPtrTraits<WebKit::VideoPresentationModelContext>,WTF::DefaultRefDerefTraits<WebKit::VideoPresentationModelContext>>,WTF::Ref<WebCore::VideoPresentationInterfaceIOS,WTF::RawPtrTraits<WebCore::VideoPresentationInterfaceIOS>,WTF::DefaultRefDerefTraits<WebCore::VideoPresentationInterfaceIOS>>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::MediaPlayerClientIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,std::pair<WTF::Ref<WebKit::VideoPresentationModelContext,WTF::RawPtrTraits<WebKit::VideoPresentationModelContext>,WTF::DefaultRefDerefTraits<WebKit::VideoPresentationModelContext>>,WTF::Ref<WebCore::VideoPresentationInterfaceIOS,WTF::RawPtrTraits<WebCore::VideoPresentationInterfaceIOS>,WTF::DefaultRefDerefTraits<WebCore::VideoPresentationInterfaceIOS>>>>>,WTF::DefaultHash<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::MediaPlayerClientIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashMap<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::MediaPlayerClientIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,std::pair<WTF::Ref<WebKit::VideoPresentationModelContext,WTF::RawPtrTraits<WebKit::VideoPresentationModelContext>,WTF::DefaultRefDerefTraits<WebKit::VideoPresentationModelContext>>,WTF::Ref<WebCore::VideoPresentationInterfaceIOS,WTF::RawPtrTraits<WebCore::VideoPresentationInterfaceIOS>,WTF::DefaultRefDerefTraits<WebCore::VideoPresentationInterfaceIOS>>>,WTF::DefaultHash<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::MediaPlayerClientIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashTraits<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::MediaPlayerClientIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashTraits<std::pair<WTF::Ref<WebKit::VideoPresentationModelContext,WTF::RawPtrTraits<WebKit::VideoPresentationModelContext>,WTF::DefaultRefDerefTraits<WebKit::VideoPresentationModelContext>>,WTF::Ref<WebCore::VideoPresentationInterfaceIOS,WTF::RawPtrTraits<WebCore::VideoPresentationInterfaceIOS>,WTF::DefaultRefDerefTraits<WebCore::VideoPresentationInterfaceIOS>>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::MediaPlayerClientIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::FastMalloc>::begin(v11);
    v13 = v12;
    v15 = v14;
    if (v11)
    {
      v11 += 32 * *(v11 - 4);
    }

    if (v11 != v12)
    {
      do
      {
        if (a2 != *v13 || a3 != v13[1])
        {
          v17 = v13[3];
          if ((v17[53] & *(v10 + 212)) != 0)
          {
            (*(*v17 + 192))(v17);
          }
        }

        do
        {
          v13 += 4;
          if (v13 == v15)
          {
            break;
          }
        }

        while (*v13 == 0 || v13[1] == -1);
      }

      while (v13 != v11);
    }

    if (v10)
    {
      WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebCore::VideoPresentationInterfaceIOS,(WTF::DestructionThread)2>::deref((v10 + 104));
    }
  }

  if ((v9 & 1) == 0)
  {
    v19 = *(v8 + 8);

    CFRelease(v19);
  }
}

void sub_19DC9E228(_Unwind_Exception *exception_object)
{
  if (v2)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebCore::VideoPresentationInterfaceIOS,(WTF::DestructionThread)2>::deref((v2 + 104));
  }

  if ((v3 & 1) == 0)
  {
    CFRelease(*(v1 + 8));
  }

  _Unwind_Resume(exception_object);
}

void WebKit::VideoPresentationModelContext::failedToEnterFullscreen(WebKit::VideoPresentationModelContext *this)
{
  v2 = WebKit::VideoPresentationModelContext::loggerPtr(this);
  if (v2)
  {
    v3 = v2;
    atomic_fetch_add(v2 + 2, 1u);
    v4 = *(*(this + 3) + 336);
    v22[0] = "VideoPresentationModelContext";
    v22[1] = 30;
    v23 = "failedToEnterFullscreen";
    v24 = v4;
    if (WTF::Logger::willLog<WTF::Logger::LogSiteIdentifier>(v2, &WebKit2LogFullscreen, 0, v22))
    {
      WTF::Logger::log<WTF::Logger::LogSiteIdentifier>(&WebKit2LogFullscreen, 0, v22);
    }

    if (atomic_fetch_add(v3 + 2, 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, v3 + 2);
      (*(*v3 + 8))(v3);
    }
  }

  v5 = *(this + 2);
  if (v5)
  {
    v6 = *(v5 + 8);
    if (v6)
    {
      v7 = *(v6 + 16);
      *(v6 + 16) = v7 + 1;
      v8 = *(v6 + 48);
      if (v8)
      {
        v9 = *(v8 + 8);
        if (v9)
        {
          v11 = *(this + 4);
          v10 = *(this + 5);
          CFRetain(*(v9 - 8));
          v22[0] = v10;
          {
            WebKit::WebProcessProxy::allProcessMap(void)::map = 0;
          }

          v12 = WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::CheckedRef<WebKit::WebProcessProxy,WTF::RawPtrTraits<WebKit::WebProcessProxy>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::CheckedRef<WebKit::WebProcessProxy,WTF::RawPtrTraits<WebKit::WebProcessProxy>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::get<WTF::IdentityHashTranslator<WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::CheckedRef<WebKit::WebProcessProxy,WTF::RawPtrTraits<WebKit::WebProcessProxy>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::CheckedRef<WebKit::WebProcessProxy,WTF::RawPtrTraits<WebKit::WebProcessProxy>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(&WebKit::WebProcessProxy::allProcessMap(void)::map, v22);
          if (v12)
          {
            v13 = v12;
            atomic_fetch_add(v12 + 4, 1u);
            v14 = WebKit::WebPageProxy::webPageIDInProcess((v9 - 16), v12);
            v16 = IPC::Encoder::operator new(0x238, v15);
            *v16 = 1798;
            *(v16 + 2) = 0;
            *(v16 + 3) = 0;
            *(v16 + 1) = v14;
            *(v16 + 68) = 0;
            *(v16 + 70) = 0;
            *(v16 + 69) = 0;
            IPC::Encoder::encodeHeader(v16);
            v25 = v16;
            IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(v16, v11);
            LOBYTE(v22[0]) = 0;
            LOBYTE(v23) = 0;
            WebKit::AuxiliaryProcessProxy::sendMessage(v13, &v25, 0, v22, 1);
            if (v23 == 1)
            {
              v18 = v22[0];
              v22[0] = 0;
              if (v18)
              {
                (*(*v18 + 8))(v18);
              }
            }

            v19 = v25;
            v25 = 0;
            if (v19)
            {
              IPC::Encoder::~Encoder(v19, v17);
              bmalloc::api::tzoneFree(v20, v21);
            }

            WTF::ThreadSafeRefCounted<WebKit::AuxiliaryProcessProxy,(WTF::DestructionThread)2>::deref((v13 + 16));
          }

          CFRelease(*(v9 - 8));
          v7 = *(v6 + 16) - 1;
        }
      }

      if (v7)
      {
        *(v6 + 16) = v7;
      }

      else
      {
        (*(*v6 + 24))(v6);
      }
    }
  }
}

void sub_19DC9E4D8(_Unwind_Exception *a1, void *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, uint64_t a13, IPC::Encoder *a14)
{
  if (a12 == 1 && a10)
  {
    (*(*a10 + 8))(a10);
  }

  if (a14)
  {
    IPC::Encoder::~Encoder(a14, a2);
    bmalloc::api::tzoneFree(v18, v19);
  }

  WTF::ThreadSafeRefCounted<WebKit::AuxiliaryProcessProxy,(WTF::DestructionThread)2>::deref(v15);
  CFRelease(*(v16 - 8));
  if (v14[4] == 1)
  {
    (*(*v14 + 24))(v14);
  }

  else
  {
    --v14[4];
  }

  _Unwind_Resume(a1);
}

void WebKit::VideoPresentationModelContext::didEnterFullscreen(WebKit::VideoPresentationModelContext *this, const WebCore::FloatSize *a2)
{
  v4 = WebKit::VideoPresentationModelContext::loggerPtr(this);
  if (v4)
  {
    v5 = v4;
    atomic_fetch_add(v4 + 2, 1u);
    v6 = *(*(this + 3) + 336);
    v9[0] = "VideoPresentationModelContext";
    v9[1] = 30;
    v9[2] = "didEnterFullscreen";
    v9[3] = v6;
    if (WTF::Logger::willLog<WTF::Logger::LogSiteIdentifier,WebCore::FloatSize>(v4, &WebKit2LogFullscreen, 0, v9, a2))
    {
      WTF::Logger::log<WTF::Logger::LogSiteIdentifier,WebCore::FloatSize>(&WebKit2LogFullscreen, 0, v9, a2);
    }

    if (atomic_fetch_add(v5 + 2, 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, v5 + 2);
      (*(*v5 + 8))(v5);
    }
  }

  v7 = *(this + 2);
  if (v7)
  {
    v8 = *(v7 + 8);
    if (v8)
    {
      ++v8[4];
      WebKit::VideoPresentationManagerProxy::didEnterFullscreen(v8, *(this + 4), *(this + 5), a2);
      if (v8[4] == 1)
      {
        (*(*v8 + 24))(v8);
      }

      else
      {
        --v8[4];
      }
    }
  }
}

void sub_19DC9E738(_Unwind_Exception *exception_object)
{
  if (v1[4] == 1)
  {
    (*(*v1 + 24))(v1);
  }

  else
  {
    --v1[4];
  }

  _Unwind_Resume(exception_object);
}

void WebKit::VideoPresentationManagerProxy::didEnterFullscreen(uint64_t a1, uint64_t a2, uint64_t a3, float *a4)
{
  v4 = *(a1 + 48);
  if (v4)
  {
    v5 = *(v4 + 8);
    if (v5)
    {
      CFRetain(*(v5 - 8));
      LOBYTE(v24) = 0;
      v25 = 0;
      if (*a4 > 0.0 && a4[1] > 0.0)
      {
        v10 = *a4;
        v25 = 1;
        v24 = v10;
      }

      v11 = *(a1 + 48);
      if (v11)
      {
        v12 = *(v11 + 8);
        if (v12)
        {
          CFRetain(*(v12 - 8));
          v26[0] = a3;
          {
            WebKit::WebProcessProxy::allProcessMap(void)::map = 0;
          }

          v13 = WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::CheckedRef<WebKit::WebProcessProxy,WTF::RawPtrTraits<WebKit::WebProcessProxy>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::CheckedRef<WebKit::WebProcessProxy,WTF::RawPtrTraits<WebKit::WebProcessProxy>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::get<WTF::IdentityHashTranslator<WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::CheckedRef<WebKit::WebProcessProxy,WTF::RawPtrTraits<WebKit::WebProcessProxy>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::CheckedRef<WebKit::WebProcessProxy,WTF::RawPtrTraits<WebKit::WebProcessProxy>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(&WebKit::WebProcessProxy::allProcessMap(void)::map, v26);
          if (v13)
          {
            v14 = v13;
            atomic_fetch_add(v13 + 4, 1u);
            v15 = WebKit::WebPageProxy::webPageIDInProcess((v12 - 16), v13);
            v17 = IPC::Encoder::operator new(0x238, v16);
            *v17 = 1795;
            *(v17 + 2) = 0;
            *(v17 + 3) = 0;
            *(v17 + 1) = v15;
            *(v17 + 68) = 0;
            *(v17 + 70) = 0;
            *(v17 + 69) = 0;
            IPC::Encoder::encodeHeader(v17);
            v28 = v17;
            IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(v17, a2);
            IPC::ArgumentCoder<std::optional<WebCore::FloatSize>,void>::encode<IPC::Encoder,std::optional<WebCore::FloatSize> const&>(v17, &v24);
            LOBYTE(v26[0]) = 0;
            v27 = 0;
            WebKit::AuxiliaryProcessProxy::sendMessage(v14, &v28, 0, v26, 1);
            if (v27 == 1)
            {
              v19 = v26[0];
              v26[0] = 0;
              if (v19)
              {
                (*(*v19 + 8))(v19);
              }
            }

            v20 = v28;
            v28 = 0;
            if (v20)
            {
              IPC::Encoder::~Encoder(v20, v18);
              bmalloc::api::tzoneFree(v22, v23);
            }

            WTF::ThreadSafeRefCounted<WebKit::AuxiliaryProcessProxy,(WTF::DestructionThread)2>::deref((v14 + 16));
          }

          CFRelease(*(v12 - 8));
        }
      }

      WebKit::VideoPresentationManagerProxy::ensureInterface(a1, a2, a3, v26);
      v21 = *(v26[0] + 285);
      WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebCore::VideoPresentationInterfaceIOS,(WTF::DestructionThread)2>::deref((v26[0] + 104));
      if (v21 == 1)
      {
        (*(**(v5 + 104) + 672))(*(v5 + 104), v5 - 16);
      }

      else
      {
        WebKit::WebPageProxy::didEnterFullscreen(v5 - 16, a2, a3);
      }

      CFRelease(*(v5 - 8));
    }
  }
}

void sub_19DC9EA2C(_Unwind_Exception *a1, void *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13, IPC::Encoder *a14)
{
  if (a13 == 1 && a11)
  {
    (*(*a11 + 8))(a11);
  }

  if (a14)
  {
    IPC::Encoder::~Encoder(a14, a2);
    bmalloc::api::tzoneFree(v18, v19);
  }

  WTF::ThreadSafeRefCounted<WebKit::AuxiliaryProcessProxy,(WTF::DestructionThread)2>::deref(v14);
  CFRelease(*(v16 - 8));
  CFRelease(*(v15 - 8));
  _Unwind_Resume(a1);
}

void WebKit::VideoPresentationModelContext::willExitFullscreen(WebKit::VideoPresentationModelContext *this)
{
  v2 = WebKit::VideoPresentationModelContext::loggerPtr(this);
  if (v2)
  {
    v3 = v2;
    atomic_fetch_add(v2 + 2, 1u);
    v4 = *(*(this + 3) + 336);
    v22[0] = "VideoPresentationModelContext";
    v22[1] = 30;
    v23 = "willExitFullscreen";
    v24 = v4;
    if (WTF::Logger::willLog<WTF::Logger::LogSiteIdentifier>(v2, &WebKit2LogFullscreen, 0, v22))
    {
      WTF::Logger::log<WTF::Logger::LogSiteIdentifier>(&WebKit2LogFullscreen, 0, v22);
    }

    if (atomic_fetch_add(v3 + 2, 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, v3 + 2);
      (*(*v3 + 8))(v3);
    }
  }

  v5 = *(this + 2);
  if (v5)
  {
    v6 = *(v5 + 8);
    if (v6)
    {
      v7 = *(v6 + 16);
      *(v6 + 16) = v7 + 1;
      v8 = *(v6 + 48);
      if (v8)
      {
        v9 = *(v8 + 8);
        if (v9)
        {
          v11 = *(this + 4);
          v10 = *(this + 5);
          CFRetain(*(v9 - 8));
          v22[0] = v10;
          {
            WebKit::WebProcessProxy::allProcessMap(void)::map = 0;
          }

          v12 = WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::CheckedRef<WebKit::WebProcessProxy,WTF::RawPtrTraits<WebKit::WebProcessProxy>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::CheckedRef<WebKit::WebProcessProxy,WTF::RawPtrTraits<WebKit::WebProcessProxy>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::get<WTF::IdentityHashTranslator<WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::CheckedRef<WebKit::WebProcessProxy,WTF::RawPtrTraits<WebKit::WebProcessProxy>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::CheckedRef<WebKit::WebProcessProxy,WTF::RawPtrTraits<WebKit::WebProcessProxy>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(&WebKit::WebProcessProxy::allProcessMap(void)::map, v22);
          if (v12)
          {
            v13 = v12;
            atomic_fetch_add(v12 + 4, 1u);
            v14 = WebKit::WebPageProxy::webPageIDInProcess((v9 - 16), v12);
            v16 = IPC::Encoder::operator new(0x238, v15);
            *v16 = 1811;
            *(v16 + 2) = 0;
            *(v16 + 3) = 0;
            *(v16 + 1) = v14;
            *(v16 + 68) = 0;
            *(v16 + 70) = 0;
            *(v16 + 69) = 0;
            IPC::Encoder::encodeHeader(v16);
            v25 = v16;
            IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(v16, v11);
            LOBYTE(v22[0]) = 0;
            LOBYTE(v23) = 0;
            WebKit::AuxiliaryProcessProxy::sendMessage(v13, &v25, 0, v22, 1);
            if (v23 == 1)
            {
              v18 = v22[0];
              v22[0] = 0;
              if (v18)
              {
                (*(*v18 + 8))(v18);
              }
            }

            v19 = v25;
            v25 = 0;
            if (v19)
            {
              IPC::Encoder::~Encoder(v19, v17);
              bmalloc::api::tzoneFree(v20, v21);
            }

            WTF::ThreadSafeRefCounted<WebKit::AuxiliaryProcessProxy,(WTF::DestructionThread)2>::deref((v13 + 16));
          }

          CFRelease(*(v9 - 8));
          v7 = *(v6 + 16) - 1;
        }
      }

      if (v7)
      {
        *(v6 + 16) = v7;
      }

      else
      {
        (*(*v6 + 24))(v6);
      }
    }
  }
}

void sub_19DC9ED3C(_Unwind_Exception *a1, void *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, uint64_t a13, IPC::Encoder *a14)
{
  if (a12 == 1 && a10)
  {
    (*(*a10 + 8))(a10);
  }

  if (a14)
  {
    IPC::Encoder::~Encoder(a14, a2);
    bmalloc::api::tzoneFree(v18, v19);
  }

  WTF::ThreadSafeRefCounted<WebKit::AuxiliaryProcessProxy,(WTF::DestructionThread)2>::deref(v15);
  CFRelease(*(v16 - 8));
  if (v14[4] == 1)
  {
    (*(*v14 + 24))(v14);
  }

  else
  {
    --v14[4];
  }

  _Unwind_Resume(a1);
}

void WebKit::VideoPresentationModelContext::didExitFullscreen(WebKit::VideoPresentationModelContext *this)
{
  v2 = WebKit::VideoPresentationModelContext::loggerPtr(this);
  if (v2)
  {
    v3 = v2;
    atomic_fetch_add(v2 + 2, 1u);
    v4 = *(*(this + 3) + 336);
    v7[0] = "VideoPresentationModelContext";
    v7[1] = 30;
    v7[2] = "didExitFullscreen";
    v7[3] = v4;
    if (WTF::Logger::willLog<WTF::Logger::LogSiteIdentifier>(v2, &WebKit2LogFullscreen, 0, v7))
    {
      WTF::Logger::log<WTF::Logger::LogSiteIdentifier>(&WebKit2LogFullscreen, 0, v7);
    }

    if (atomic_fetch_add(v3 + 2, 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, v3 + 2);
      (*(*v3 + 8))(v3);
    }
  }

  v5 = *(this + 2);
  if (v5)
  {
    v6 = *(v5 + 8);
    if (v6)
    {
      ++*(v6 + 4);
      WebKit::VideoPresentationManagerProxy::didExitFullscreen(v6, *(this + 4), *(this + 5));
      if (*(v6 + 4) == 1)
      {
        (*(*v6 + 24))(v6);
      }

      else
      {
        --*(v6 + 4);
      }
    }
  }
}

void sub_19DC9EF8C(_Unwind_Exception *exception_object)
{
  if (v1[4] == 1)
  {
    (*(*v1 + 24))(v1);
  }

  else
  {
    --v1[4];
  }

  _Unwind_Resume(exception_object);
}

void WebKit::VideoPresentationManagerProxy::didExitFullscreen(WebKit::VideoPresentationManagerProxy *a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 6);
  if (v3)
  {
    v4 = *(v3 + 8);
    if (v4)
    {
      CFRetain(*(v4 - 8));
      v8 = *(a1 + 6);
      if (v8)
      {
        v9 = *(v8 + 8);
        if (v9)
        {
          CFRetain(*(v9 - 8));
          v21[0] = a3;
          {
            WebKit::WebProcessProxy::allProcessMap(void)::map = 0;
          }

          v10 = WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::CheckedRef<WebKit::WebProcessProxy,WTF::RawPtrTraits<WebKit::WebProcessProxy>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::CheckedRef<WebKit::WebProcessProxy,WTF::RawPtrTraits<WebKit::WebProcessProxy>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::get<WTF::IdentityHashTranslator<WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::CheckedRef<WebKit::WebProcessProxy,WTF::RawPtrTraits<WebKit::WebProcessProxy>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::CheckedRef<WebKit::WebProcessProxy,WTF::RawPtrTraits<WebKit::WebProcessProxy>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(&WebKit::WebProcessProxy::allProcessMap(void)::map, v21);
          if (v10)
          {
            v11 = v10;
            atomic_fetch_add(v10 + 4, 1u);
            v12 = WebKit::WebPageProxy::webPageIDInProcess((v9 - 16), v10);
            v14 = IPC::Encoder::operator new(0x238, v13);
            *v14 = 1796;
            *(v14 + 2) = 0;
            *(v14 + 3) = 0;
            *(v14 + 1) = v12;
            *(v14 + 68) = 0;
            *(v14 + 70) = 0;
            *(v14 + 69) = 0;
            IPC::Encoder::encodeHeader(v14);
            v23 = v14;
            IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(v14, a2);
            LOBYTE(v21[0]) = 0;
            v22 = 0;
            WebKit::AuxiliaryProcessProxy::sendMessage(v11, &v23, 0, v21, 1);
            if (v22 == 1)
            {
              v16 = v21[0];
              v21[0] = 0;
              if (v16)
              {
                (*(*v16 + 8))(v16);
              }
            }

            v17 = v23;
            v23 = 0;
            if (v17)
            {
              IPC::Encoder::~Encoder(v17, v15);
              bmalloc::api::tzoneFree(v19, v20);
            }

            WTF::ThreadSafeRefCounted<WebKit::AuxiliaryProcessProxy,(WTF::DestructionThread)2>::deref((v11 + 16));
          }

          CFRelease(*(v9 - 8));
        }
      }

      WebKit::VideoPresentationManagerProxy::ensureInterface(a1, a2, a3, v21);
      v18 = *(v21[0] + 285);
      WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebCore::VideoPresentationInterfaceIOS,(WTF::DestructionThread)2>::deref((v21[0] + 104));
      if (v18 == 1)
      {
        (*(**(v4 + 104) + 680))(*(v4 + 104), v4 - 16);
      }

      else
      {
        WebKit::WebPageProxy::didExitFullscreen(v4 - 16, a2, a3);
      }

      WebKit::VideoPresentationManagerProxy::callCloseCompletionHandlers(a1);
      CFRelease(*(v4 - 8));
    }
  }
}

void sub_19DC9F248(_Unwind_Exception *a1, void *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, IPC::Encoder *a12)
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

  WTF::ThreadSafeRefCounted<WebKit::AuxiliaryProcessProxy,(WTF::DestructionThread)2>::deref(v12);
  CFRelease(*(v14 - 8));
  CFRelease(*(v13 - 8));
  _Unwind_Resume(a1);
}

void WebKit::VideoPresentationModelContext::didCleanupFullscreen(WebKit::VideoPresentationModelContext *this)
{
  v2 = WebKit::VideoPresentationModelContext::loggerPtr(this);
  if (v2)
  {
    v3 = v2;
    atomic_fetch_add(v2 + 2, 1u);
    v4 = *(*(this + 3) + 336);
    v7[0] = "VideoPresentationModelContext";
    v7[1] = 30;
    v7[2] = "didCleanupFullscreen";
    v7[3] = v4;
    if (WTF::Logger::willLog<WTF::Logger::LogSiteIdentifier>(v2, &WebKit2LogFullscreen, 0, v7))
    {
      WTF::Logger::log<WTF::Logger::LogSiteIdentifier>(&WebKit2LogFullscreen, 0, v7);
    }

    if (atomic_fetch_add(v3 + 2, 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, v3 + 2);
      (*(*v3 + 8))(v3);
    }
  }

  v5 = *(this + 2);
  if (v5)
  {
    v6 = *(v5 + 8);
    if (v6)
    {
      ++v6[4];
      WebKit::VideoPresentationManagerProxy::didCleanupFullscreen(v6, *(this + 4), *(this + 5));
      if (v6[4] == 1)
      {
        (*(*v6 + 24))(v6);
      }

      else
      {
        --v6[4];
      }
    }
  }
}

void sub_19DC9F41C(_Unwind_Exception *exception_object)
{
  if (v1[4] == 1)
  {
    (*(*v1 + 24))(v1);
  }

  else
  {
    --v1[4];
  }

  _Unwind_Resume(exception_object);
}

void WebKit::VideoPresentationManagerProxy::didCleanupFullscreen(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 48);
  if (!v3)
  {
    return;
  }

  v4 = *(v3 + 8);
  if (!v4)
  {
    return;
  }

  CFRetain(*(v4 - 8));
  v8 = WebKit::VideoPresentationManagerProxy::ensureModelAndInterface(a1, a2, a3);
  std::pair<WTF::Ref<WebKit::VideoPresentationModelContext,WTF::RawPtrTraits<WebKit::VideoPresentationModelContext>,WTF::DefaultRefDerefTraits<WebKit::VideoPresentationModelContext>>,WTF::Ref<WebCore::VideoPresentationInterfaceIOS,WTF::RawPtrTraits<WebCore::VideoPresentationInterfaceIOS>,WTF::DefaultRefDerefTraits<WebCore::VideoPresentationInterfaceIOS>>>::pair[abi:sn200100](&v31, v8);
  v9 = WTF::dynamic_objc_cast<WKLayerHostView>(*(v32 + 9));
  v10 = v9;
  if (v9)
  {
    v11 = v9;
    WebKit::VideoPresentationManagerProxy::setVisibilityPropagationViewForLayerHostView(*(a1 + 48), 0, v10);
  }

  [*(v32 + 9) removeFromSuperview];
  WebCore::VideoFullscreenCaptions::removeCaptionsLayer((v32 + 32));
  v12 = *(v32 + 10);
  if (v12)
  {
    v13 = v12;
    v14 = *(v32 + 9);
    if (v14)
    {
      v15 = v14;
    }

    [v12 addSublayer:{objc_msgSend(v14, "layer")}];
    [v12 layoutSublayers];
    if (v14)
    {
    }
  }

  else
  {
    [MEMORY[0x1E6979518] flush];
    [*(v32 + 9) removeFromSuperview];
    v12 = *(v32 + 9);
    *(v32 + 9) = 0;
    if (!v12)
    {
      goto LABEL_12;
    }
  }

LABEL_12:
  v16 = *(a1 + 48);
  if (v16)
  {
    v17 = *(v16 + 8);
    if (v17)
    {
      CFRetain(*(v17 - 8));
      v33[0] = a3;
      {
        WebKit::WebProcessProxy::allProcessMap(void)::map = 0;
      }

      v18 = WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::CheckedRef<WebKit::WebProcessProxy,WTF::RawPtrTraits<WebKit::WebProcessProxy>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::CheckedRef<WebKit::WebProcessProxy,WTF::RawPtrTraits<WebKit::WebProcessProxy>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::get<WTF::IdentityHashTranslator<WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::CheckedRef<WebKit::WebProcessProxy,WTF::RawPtrTraits<WebKit::WebProcessProxy>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::CheckedRef<WebKit::WebProcessProxy,WTF::RawPtrTraits<WebKit::WebProcessProxy>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(&WebKit::WebProcessProxy::allProcessMap(void)::map, v33);
      if (v18)
      {
        v19 = v18;
        atomic_fetch_add(v18 + 4, 1u);
        v20 = WebKit::WebPageProxy::webPageIDInProcess((v17 - 16), v18);
        v22 = IPC::Encoder::operator new(0x238, v21);
        *v22 = 1794;
        *(v22 + 2) = 0;
        *(v22 + 3) = 0;
        *(v22 + 1) = v20;
        *(v22 + 68) = 0;
        *(v22 + 70) = 0;
        *(v22 + 69) = 0;
        IPC::Encoder::encodeHeader(v22);
        v35 = v22;
        IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(v22, a2);
        LOBYTE(v33[0]) = 0;
        v34 = 0;
        WebKit::AuxiliaryProcessProxy::sendMessage(v19, &v35, 0, v33, 1);
        if (v34 == 1)
        {
          v24 = v33[0];
          v33[0] = 0;
          if (v24)
          {
            (*(*v24 + 8))(v24);
          }
        }

        v25 = v35;
        v35 = 0;
        if (v25)
        {
          IPC::Encoder::~Encoder(v25, v23);
          bmalloc::api::tzoneFree(v29, v30);
        }

        WTF::ThreadSafeRefCounted<WebKit::AuxiliaryProcessProxy,(WTF::DestructionThread)2>::deref((v19 + 16));
      }

      CFRelease(*(v17 - 8));
    }
  }

  if (!WebKit::VideoPresentationManagerProxy::hasMode(a1, 4))
  {
    WebCore::VideoPresentationInterfaceIOS::setMode(v32);
    WebKit::VideoPresentationManagerProxy::removeClientForContext(a1, a2, a3);
  }

  WebKit::WebPageProxy::didCleanupFullscreen((v4 - 16));
  v27 = v32;
  v32 = 0;
  if (v27)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebCore::VideoPresentationInterfaceIOS,(WTF::DestructionThread)2>::deref(v27 + 13);
  }

  v28 = v31;
  v31 = 0;
  if (v28)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebCore::VideoPresentationModel,(WTF::DestructionThread)0>::deref((v28 + 8), v26);
  }

  CFRelease(*(v4 - 8));
}

void sub_19DC9F794(_Unwind_Exception *a1, void *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13, IPC::Encoder *a14)
{
  if (a13 == 1 && a11)
  {
    (*(*a11 + 8))(a11);
  }

  if (a14)
  {
    IPC::Encoder::~Encoder(a14, a2);
    bmalloc::api::tzoneFree(v18, v19);
  }

  WTF::ThreadSafeRefCounted<WebKit::AuxiliaryProcessProxy,(WTF::DestructionThread)2>::deref(v14);
  CFRelease(*(v16 - 8));
  if (a10)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebCore::VideoPresentationInterfaceIOS,(WTF::DestructionThread)2>::deref((a10 + 104));
  }

  if (a9)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebCore::VideoPresentationModel,(WTF::DestructionThread)0>::deref((a9 + 8), v20);
  }

  CFRelease(*(v15 - 8));
  _Unwind_Resume(a1);
}

void WebKit::VideoPresentationModelContext::fullscreenMayReturnToInline(WebKit::VideoPresentationModelContext *this)
{
  v2 = WebKit::VideoPresentationModelContext::loggerPtr(this);
  if (v2)
  {
    v3 = v2;
    atomic_fetch_add(v2 + 2, 1u);
    v4 = *(*(this + 3) + 336);
    v25[0] = "VideoPresentationModelContext";
    v25[1] = 30;
    v26 = "fullscreenMayReturnToInline";
    v27 = v4;
    if (WTF::Logger::willLog<WTF::Logger::LogSiteIdentifier>(v2, &WebKit2LogFullscreen, 0, v25))
    {
      WTF::Logger::log<WTF::Logger::LogSiteIdentifier>(&WebKit2LogFullscreen, 0, v25);
    }

    if (atomic_fetch_add(v3 + 2, 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, v3 + 2);
      (*(*v3 + 8))(v3);
    }
  }

  v5 = *(this + 2);
  if (v5)
  {
    v6 = *(v5 + 8);
    if (v6)
    {
      v7 = *(v6 + 16);
      *(v6 + 16) = v7 + 1;
      v8 = *(this + 4);
      v9 = *(this + 5);
      v30[0] = v8;
      v30[1] = v9;
      v10 = *(v6 + 48);
      if (v10)
      {
        v11 = *(v10 + 8);
        if (v11)
        {
          CFRetain(*(v11 - 8));
          v12 = (*(*(v11 + 16) + 80) & 4) != 0;
          v28 = v30;
          v29[0] = v12;
          v13 = *(v6 + 48);
          if (v13)
          {
            v14 = *(v13 + 8);
            if (v14)
            {
              CFRetain(*(v14 - 8));
              v25[0] = v9;
              {
                WebKit::WebProcessProxy::allProcessMap(void)::map = 0;
              }

              v15 = WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::CheckedRef<WebKit::WebProcessProxy,WTF::RawPtrTraits<WebKit::WebProcessProxy>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::CheckedRef<WebKit::WebProcessProxy,WTF::RawPtrTraits<WebKit::WebProcessProxy>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::get<WTF::IdentityHashTranslator<WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::CheckedRef<WebKit::WebProcessProxy,WTF::RawPtrTraits<WebKit::WebProcessProxy>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::CheckedRef<WebKit::WebProcessProxy,WTF::RawPtrTraits<WebKit::WebProcessProxy>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(&WebKit::WebProcessProxy::allProcessMap(void)::map, v25);
              if (v15)
              {
                v16 = v15;
                atomic_fetch_add(v15 + 4, 1u);
                v17 = WebKit::WebPageProxy::webPageIDInProcess((v14 - 16), v15);
                v19 = IPC::Encoder::operator new(0x238, v18);
                *v19 = 1799;
                *(v19 + 2) = 0;
                *(v19 + 3) = 0;
                *(v19 + 1) = v17;
                *(v19 + 68) = 0;
                *(v19 + 70) = 0;
                *(v19 + 69) = 0;
                IPC::Encoder::encodeHeader(v19);
                v31 = v19;
                IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(v19, *v28);
                IPC::Encoder::operator<<<BOOL &>(v19, v29);
                LOBYTE(v25[0]) = 0;
                LOBYTE(v26) = 0;
                WebKit::AuxiliaryProcessProxy::sendMessage(v16, &v31, 0, v25, 1);
                if (v26 == 1)
                {
                  v21 = v25[0];
                  v25[0] = 0;
                  if (v21)
                  {
                    (*(*v21 + 8))(v21);
                  }
                }

                v22 = v31;
                v31 = 0;
                if (v22)
                {
                  IPC::Encoder::~Encoder(v22, v20);
                  bmalloc::api::tzoneFree(v23, v24);
                }

                WTF::ThreadSafeRefCounted<WebKit::AuxiliaryProcessProxy,(WTF::DestructionThread)2>::deref((v16 + 16));
              }

              CFRelease(*(v14 - 8));
            }
          }

          CFRelease(*(v11 - 8));
          v7 = *(v6 + 16) - 1;
        }
      }

      if (v7)
      {
        *(v6 + 16) = v7;
      }

      else
      {
        (*(*v6 + 24))(v6);
      }
    }
  }
}

void sub_19DC9FB4C(_Unwind_Exception *a1, void *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, IPC::Encoder *a18)
{
  if (a12 == 1 && a10)
  {
    (*(*a10 + 8))(a10);
  }

  if (a18)
  {
    IPC::Encoder::~Encoder(a18, a2);
    bmalloc::api::tzoneFree(v23, v24);
  }

  WTF::ThreadSafeRefCounted<WebKit::AuxiliaryProcessProxy,(WTF::DestructionThread)2>::deref(v19);
  CFRelease(*(v21 - 8));
  CFRelease(*(v20 - 8));
  if (v18[4] == 1)
  {
    (*(*v18 + 24))(v18);
  }

  else
  {
    --v18[4];
  }

  _Unwind_Resume(a1);
}

void WebKit::VideoPresentationModelContext::requestRouteSharingPolicyAndContextUID(WebKit::VideoPresentationModelContext *a1, uint64_t *a2)
{
  v4 = WebKit::VideoPresentationModelContext::loggerPtr(a1);
  if (v4)
  {
    v5 = v4;
    atomic_fetch_add(v4 + 2, 1u);
    v6 = *(*(a1 + 3) + 336);
    v30 = "VideoPresentationModelContext";
    v31 = 30;
    v32 = "requestRouteSharingPolicyAndContextUID";
    v33 = v6;
    if (WTF::Logger::willLog<WTF::Logger::LogSiteIdentifier>(v4, &WebKit2LogFullscreen, 0, &v30))
    {
      WTF::Logger::log<WTF::Logger::LogSiteIdentifier>(&WebKit2LogFullscreen, 0, &v30);
    }

    if (atomic_fetch_add(v5 + 2, 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, v5 + 2);
      (*(*v5 + 8))(v5);
    }
  }

  v7 = *(a1 + 2);
  if (v7)
  {
    v8 = *(v7 + 8);
    if (v8)
    {
      ++*(v8 + 16);
      v9 = *(v8 + 48);
      if (!v9 || (v10 = *(v9 + 8)) == 0)
      {
        v30 = 0;
        WTF::CompletionHandler<void ()(WebCore::RouteSharingPolicy,WTF::String)>::operator()(a2, 0, &v30);
        v23 = v30;
        if (v30 && atomic_fetch_add_explicit(v30, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v23, v22);
        }

        goto LABEL_21;
      }

      v11 = *(a1 + 4);
      CFRetain(*(v10 - 8));
      v12 = *(v10 + 336);
      atomic_fetch_add((v12 + 16), 1u);
      v13 = *(v10 + 32);
      v15 = IPC::Encoder::operator new(0x238, v14);
      *v15 = 1802;
      *(v15 + 2) = 0;
      *(v15 + 3) = 0;
      *(v15 + 1) = v13;
      *(v15 + 68) = 0;
      *(v15 + 70) = 0;
      *(v15 + 69) = 0;
      IPC::Encoder::encodeHeader(v15);
      v34 = v15;
      IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(v15, v11);
      v16 = *a2;
      *a2 = 0;
      v17 = WTF::fastMalloc(0x10);
      *v17 = &unk_1F1102DE8;
      *(v17 + 1) = v16;
      if (WTF::ObjectIdentifierGeneric<IPC::AsyncReplyIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>::m_generationProtected == 1)
      {
        __break(0xC471u);
        return;
      }

      IdentifierInternal = WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>::generateIdentifierInternal();
      v30 = v17;
      v31 = IdentifierInternal;
      LOBYTE(v32) = 1;
      WebKit::AuxiliaryProcessProxy::sendMessage(v12, &v34, 0, &v30, 1);
      if (v32 == 1)
      {
        v20 = v30;
        v30 = 0;
        if (v20)
        {
          (*(*v20 + 8))(v20);
        }
      }

      v21 = v34;
      v34 = 0;
      if (v21)
      {
        IPC::Encoder::~Encoder(v21, v19);
        bmalloc::api::tzoneFree(v27, v28);
        if (!v12)
        {
          goto LABEL_17;
        }
      }

      else if (!v12)
      {
LABEL_17:
        CFRelease(*(v10 - 8));
LABEL_21:
        if (*(v8 + 16) == 1)
        {
          (*(*v8 + 24))(v8);
        }

        else
        {
          --*(v8 + 16);
        }

        return;
      }

      WTF::ThreadSafeRefCounted<WebKit::AuxiliaryProcessProxy,(WTF::DestructionThread)2>::deref((v12 + 16));
      goto LABEL_17;
    }
  }

  v24 = *MEMORY[0x1E696EBA8];
  if (*MEMORY[0x1E696EBA8])
  {
    atomic_fetch_add_explicit(v24, 2u, memory_order_relaxed);
  }

  v29 = v24;
  WTF::CompletionHandler<void ()(WebCore::RouteSharingPolicy,WTF::String)>::operator()(a2, 0, &v29);
  v26 = v29;
  if (v29 && atomic_fetch_add_explicit(v29, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v26, v25);
  }
}

void sub_19DC9FF9C(_Unwind_Exception *a1, void *a2, int a3, int a4, int a5, int a6, int a7, int a8, WTF::StringImpl *a9, WTF::StringImpl *a10, uint64_t a11, char a12, uint64_t a13, IPC::Encoder *a14)
{
  if (a12 == 1 && a10)
  {
    (*(*a10 + 8))(a10);
  }

  if (a14)
  {
    IPC::Encoder::~Encoder(a14, a2);
    bmalloc::api::tzoneFree(v19, v20);
  }

  if (v16)
  {
    WTF::ThreadSafeRefCounted<WebKit::AuxiliaryProcessProxy,(WTF::DestructionThread)2>::deref(v15);
  }

  CFRelease(*(v17 - 8));
  if (v14[4] == 1)
  {
    (*(*v14 + 24))(v14);
  }

  else
  {
    --v14[4];
  }

  _Unwind_Resume(a1);
}

uint64_t WTF::CompletionHandler<void ()(WebCore::RouteSharingPolicy,WTF::String)>::operator()(uint64_t *a1, uint64_t a2, WTF::StringImpl **a3)
{
  v3 = *a1;
  *a1 = 0;
  v4 = *a3;
  *a3 = 0;
  v8 = v4;
  (*(*v3 + 16))(v3, a2, &v8);
  v6 = v8;
  v8 = 0;
  if (v6 && atomic_fetch_add_explicit(v6, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v6, v5);
  }

  return (*(*v3 + 8))(v3);
}

void sub_19DCA01FC(_Unwind_Exception *a1, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, WTF::StringImpl *a10)
{
  if (a10)
  {
    if (atomic_fetch_add_explicit(a10, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(a10, a2);
    }
  }

  (*(*v10 + 8))(v10);
  _Unwind_Resume(a1);
}

void WebKit::VideoPresentationModelContext::didEnterPictureInPicture(WebKit::VideoPresentationModelContext *this)
{
  v2 = WebKit::VideoPresentationModelContext::loggerPtr(this);
  if (v2)
  {
    v3 = v2;
    atomic_fetch_add(v2 + 2, 1u);
    v4 = *(*(this + 3) + 336);
    v7[0] = "VideoPresentationModelContext";
    v7[1] = 30;
    v7[2] = "didEnterPictureInPicture";
    v7[3] = v4;
    if (WTF::Logger::willLog<WTF::Logger::LogSiteIdentifier>(v2, &WebKit2LogFullscreen, 0, v7))
    {
      WTF::Logger::log<WTF::Logger::LogSiteIdentifier>(&WebKit2LogFullscreen, 0, v7);
    }

    if (atomic_fetch_add(v3 + 2, 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, v3 + 2);
      (*(*v3 + 8))(v3);
    }
  }

  v5 = *(this + 2);
  if (v5)
  {
    v6 = *(v5 + 8);
    if (v6)
    {
      ++*(v6 + 4);
      WebKit::VideoPresentationManagerProxy::hasVideoInPictureInPictureDidChange(v6, 1);
      if (*(v6 + 4) == 1)
      {
        (*(*v6 + 24))(v6);
      }

      else
      {
        --*(v6 + 4);
      }
    }
  }
}

void sub_19DCA0390(_Unwind_Exception *exception_object)
{
  if (v1[4] == 1)
  {
    (*(*v1 + 24))(v1);
  }

  else
  {
    --v1[4];
  }

  _Unwind_Resume(exception_object);
}

void WebKit::VideoPresentationManagerProxy::hasVideoInPictureInPictureDidChange(WebKit::VideoPresentationManagerProxy *this, BOOL a2)
{
  v39 = a2;
  v3 = *(*(this + 7) + 80);
  atomic_fetch_add(v3 + 2, 1u);
  v4 = *(*(this + 7) + 88);
  v35 = "PlaybackSessionManagerProxy";
  v36 = 28;
  v37 = "hasVideoInPictureInPictureDidChange";
  v38 = v4;
  if (WTF::Logger::willLog<WTF::Logger::LogSiteIdentifier,BOOL>(v3, &WebKit2LogFullscreen, 0, &v35))
  {
    WTF::Logger::log<WTF::Logger::LogSiteIdentifier,BOOL>(&WebKit2LogFullscreen, 0, &v35);
  }

  if (v3 && atomic_fetch_add(v3 + 2, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v3 + 2);
    (*(*v3 + 8))(v3);
  }

  v5 = *(this + 6);
  if (v5)
  {
    v6 = *(v5 + 8);
    if (v6)
    {
      CFRetain(*(v6 - 8));
      WebKit::WebPageProxy::hasVideoInPictureInPictureDidChange((v6 - 16), v39);
      v7 = v39;
      v8 = WTF::fastMalloc(0x10);
      *v8 = &unk_1F1102E10;
      v8[8] = v7;
      v11 = *(this + 12);
      v10 = (this + 96);
      v9 = v11;
      v35 = 0;
      v36 = 0;
      if (v11 && (v12 = *(v9 - 12), v12))
      {
        if (v12 >> 29)
        {
          __break(0xC471u);
          return;
        }

        v13 = WTF::fastMalloc((8 * v12));
        LODWORD(v36) = v12;
        v35 = v13;
      }

      else
      {
        v13 = 0;
      }

      v14 = WTF::HashTable<WTF::String,WTF::String,WTF::IdentityExtractor,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::begin(v10);
      v16 = v14;
      v17 = v15;
      if (*v10)
      {
        v18 = &(*v10)[*(*v10 - 1)];
      }

      else
      {
        v18 = 0;
      }

      if (v18 == v14)
      {
        v22 = HIDWORD(v36);
        if (!HIDWORD(v36))
        {
LABEL_42:
          WTF::Vector<WTF::WeakPtr<WebCore::VideoPresentationModelClient,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v35, v15);
          (*(*v8 + 8))(v8);
          CFRelease(*(v6 - 8));
          return;
        }
      }

      else
      {
        v19 = 0;
        do
        {
          v20 = *(*v16 + 8);
          if (v20)
          {
            WTF::WeakPtrFactory<WebPushD::PushServiceConnection,WTF::DefaultWeakPtrImpl>::initializeIfNeeded(*(*v16 + 8), *(*v16 + 8));
            v21 = *v20;
            if (*v20)
            {
              atomic_fetch_add(v21, 1u);
              v19 = HIDWORD(v36);
              v13 = v35;
            }
          }

          else
          {
            v21 = 0;
          }

          v22 = v19 + 1;
          *(v13 + 8 * v19) = v21;
          HIDWORD(v36) = v19 + 1;
          do
          {
            ++v16;
          }

          while (v16 != v17 && (*v16 + 1) <= 1);
          ++v19;
        }

        while (v16 != v18);
        if (!v22)
        {
          goto LABEL_42;
        }
      }

      v23 = v35;
      v24 = &v35[8 * v22];
      do
      {
        v25 = *v23;
        if (*v23)
        {
          v15 = *(v25 + 8);
          if (v15)
          {
            v26 = *v10;
            if (*v10)
            {
              v27 = *(v26 - 2);
              v28 = (~(v25 << 32) + v25) ^ ((~(v25 << 32) + v25) >> 22);
              v29 = 9 * ((v28 + ~(v28 << 13)) ^ ((v28 + ~(v28 << 13)) >> 8));
              v30 = (v29 ^ (v29 >> 15)) + ~((v29 ^ (v29 >> 15)) << 27);
              v31 = v27 & ((v30 >> 31) ^ v30);
              for (i = 1; ; ++i)
              {
                v33 = v26[v31];
                if (!v33)
                {
                  break;
                }

                if (v33 != -1 && v33 == v25)
                {
                  (*(*v8 + 16))(v8);
                  break;
                }

                v31 = (v31 + i) & v27;
              }
            }
          }
        }

        v23 += 8;
      }

      while (v23 != v24);
      goto LABEL_42;
    }
  }
}