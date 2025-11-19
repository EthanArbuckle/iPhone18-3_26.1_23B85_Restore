void sub_19DB3AFE0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, WTF::StringImpl *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15)
{
  if (a15)
  {
  }

  _Block_release(v15);
  _Unwind_Resume(a1);
}

void WebsiteDataStoreClient::reportServiceWorkerConsoleMessage(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, atomic_uint **a6)
{
  WeakRetained = objc_loadWeakRetained((a1 + 16));
  v9 = objc_opt_respondsToSelector();
  if (WeakRetained)
  {
  }

  if (v9)
  {
    Weak = objc_loadWeak((a1 + 16));
    v11 = objc_loadWeak((a1 + 8));
    v12 = *a6;
    if (v12)
    {
      atomic_fetch_add_explicit(v12, 2u, memory_order_relaxed);
      MEMORY[0x19EB00B70](&v16, v12);
      if (atomic_fetch_add_explicit(v12, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v12, v13);
      }
    }

    else
    {
      v16 = &stru_1F1147748;
      v14 = &stru_1F1147748;
    }

    [Weak websiteDataStore:v11 reportServiceWorkerConsoleMessage:v16];
    v15 = v16;
    v16 = 0;
    if (v15)
    {
    }
  }
}

void sub_19DB3B16C(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (atomic_fetch_add_explicit(v10, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v10, a2);
  }

  _Unwind_Resume(exception_object);
}

uint64_t WebsiteDataStoreClient::showNotification(WebsiteDataStoreClient *this, const WebCore::NotificationData *a2)
{
  if (*(this + 27) != 1)
  {
    return 0;
  }

  result = objc_loadWeakRetained(this + 2);
  if (result)
  {

    result = objc_loadWeakRetained(this + 1);
    if (result)
    {

      v5 = [[_WKNotificationData alloc] _initWithCoreData:a2];
      Weak = objc_loadWeak(this + 2);
      [Weak websiteDataStore:objc_loadWeak(this + 1) showNotification:v5];
      if (v5)
      {
      }

      return 1;
    }
  }

  return result;
}

void sub_19DB3B264(_Unwind_Exception *exception_object)
{
  if (v1)
  {
  }

  _Unwind_Resume(exception_object);
}

id WebsiteDataStoreClient::notificationPermissions@<X0>(id this@<X0>, uint64_t *a2@<X8>)
{
  v46 = *MEMORY[0x1E69E9840];
  if (*(this + 28) != 1 || (v3 = this, (this = objc_loadWeakRetained(this + 2)) == 0) || (this, (this = objc_loadWeakRetained(v3 + 1)) == 0))
  {
    *a2 = 0;
    return this;
  }

  *a2 = 0;
  Weak = objc_loadWeak(v3 + 2);
  v5 = [Weak notificationPermissionsForWebsiteDataStore:objc_loadWeak(v3 + 1)];
  v42 = 0u;
  v43 = 0u;
  v40 = 0u;
  v41 = 0u;
  this = [v5 countByEnumeratingWithState:&v40 objects:v45 count:16];
  v6 = this;
  if (!this)
  {
    return this;
  }

  v7 = *v41;
  v35 = *v41;
  v36 = a2;
  do
  {
    v8 = 0;
    do
    {
      if (*v41 != v7)
      {
        objc_enumerationMutation(v5);
      }

      v9 = *(*(&v40 + 1) + 8 * v8);
      v10 = [v5 objectForKeyedSubscript:v9];
      MEMORY[0x19EB02040](&v37, v9);
      MEMORY[0x19EB01DD0](buf, &v37, 0);
      WebCore::SecurityOriginData::fromURL(v44, buf, v11);
      WebCore::SecurityOriginData::toString(&v39, v44);
      mpark::detail::move_constructor<mpark::detail::traits<WebCore::SecurityOriginData::Tuple,WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::OpaqueOriginIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,(mpark::detail::Trait)1>::~move_constructor(v44);
      v13 = *buf;
      *buf = 0;
      if (v13 && atomic_fetch_add_explicit(v13, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v13, v12);
      }

      v14 = v37;
      v37 = 0;
      if (v14 && atomic_fetch_add_explicit(v14, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v14, v12);
      }

      if (!v39 || !*(v39 + 1))
      {
        v28 = qword_1ED6410A8;
        if (os_log_type_enabled(qword_1ED6410A8, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_19D52D000, v28, OS_LOG_TYPE_DEFAULT, "[WKWebsiteDataStoreDelegate notificationPermissionsForWebsiteDataStore:] returned a URL string that could not be parsed into a security origin. Skipping.", buf, 2u);
        }

        goto LABEL_45;
      }

      v15 = [v10 BOOLValue];
      if (v39 == -1 || !v39)
      {
        __break(0xC471u);
        JUMPOUT(0x19DB3B640);
      }

      v18 = v15;
      v19 = *a2;
      if (*a2 || (WTF::HashTable<WTF::String,WTF::KeyValuePair<WTF::String,BOOL>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,BOOL>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,BOOL,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<BOOL>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::expand(a2, 0), (v19 = *a2) != 0))
      {
        v20 = *(v19 - 8);
      }

      else
      {
        v20 = 0;
      }

      v21 = *(v39 + 4);
      if (v21 < 0x100)
      {
        v22 = WTF::StringImpl::hashSlowCase(v39);
      }

      else
      {
        v22 = v21 >> 8;
      }

      v23 = 0;
      for (i = 1; ; ++i)
      {
        v25 = v22 & v20;
        v26 = v19 + 16 * (v22 & v20);
        v27 = *v26;
        if (*v26 == -1)
        {
          v23 = (v19 + 16 * v25);
          goto LABEL_30;
        }

        if (!v27)
        {
          break;
        }

        if (WTF::equal(v27, v39, v17))
        {
          *(v26 + 8) = v18;
          v7 = v35;
          a2 = v36;
          goto LABEL_45;
        }

LABEL_30:
        v22 = i + v25;
      }

      a2 = v36;
      if (v23)
      {
        v27 = 0;
        *v23 = 0;
        v23[1] = 0;
        --*(*v36 - 16);
        v26 = v23;
      }

      v29 = v39;
      v7 = v35;
      if (v39)
      {
        atomic_fetch_add_explicit(v39, 2u, memory_order_relaxed);
        v27 = *v26;
      }

      *v26 = v29;
      if (v27 && atomic_fetch_add_explicit(v27, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v27, v16);
      }

      *(v26 + 8) = v18;
      v30 = *v36;
      if (*v36)
      {
        v31 = *(v30 - 12) + 1;
      }

      else
      {
        v31 = 1;
      }

      *(v30 - 12) = v31;
      v32 = (*(v30 - 16) + v31);
      v33 = *(v30 - 4);
      if (v33 > 0x400)
      {
        if (v33 <= 2 * v32)
        {
LABEL_44:
          WTF::HashTable<WTF::String,WTF::KeyValuePair<WTF::String,BOOL>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,BOOL>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,BOOL,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<BOOL>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::expand(v36, v26);
        }
      }

      else if (3 * v33 <= 4 * v32)
      {
        goto LABEL_44;
      }

LABEL_45:
      v34 = v39;
      v39 = 0;
      if (v34 && atomic_fetch_add_explicit(v34, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v34, v16);
      }

      v8 = v8 + 1;
    }

    while (v8 != v6);
    this = [v5 countByEnumeratingWithState:&v40 objects:v45 count:16];
    v6 = this;
  }

  while (this);
  return this;
}

void sub_19DB3B664(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, WTF::StringImpl *a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, WTF::StringImpl *a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27)
{
  if (*v27)
  {
    WTF::HashTable<WTF::String,WTF::KeyValuePair<WTF::String,Inspector::SupplementalBackendDispatcher *>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,Inspector::SupplementalBackendDispatcher *>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,Inspector::SupplementalBackendDispatcher *,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<Inspector::SupplementalBackendDispatcher *>,WTF::HashTableTraits,(WTF::ShouldValidateKey)0,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::deallocateTable(*v27, a2);
  }

  _Unwind_Resume(exception_object);
}

void WebsiteDataStoreClient::getDisplayedNotifications(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  if (*(a1 + 31) == 1 && (WeakRetained = objc_loadWeakRetained((a1 + 16))) != 0 && (WeakRetained, (v6 = objc_loadWeakRetained((a1 + 8))) != 0))
  {

    API::SecurityOrigin::create(v14);
    v7 = *a3;
    *a3 = 0;
    v8 = malloc_type_malloc(0x28uLL, 0x10E004053C0834CuLL);
    *v8 = MEMORY[0x1E69E9818];
    v8[1] = 50331650;
    v8[2] = WTF::BlockPtr<void ()(NSArray<NSDictionary *> *)>::fromCallable<WebsiteDataStoreClient::getDisplayedNotifications(WebCore::SecurityOriginData const&,WTF::CompletionHandler<void ()(WTF::Vector<WebCore::NotificationData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&)> &&)::{lambda(NSArray<NSDictionary *> *)#1}>(WebsiteDataStoreClient::getDisplayedNotifications(WebCore::SecurityOriginData const&,WTF::CompletionHandler<void ()(WTF::Vector<WebCore::NotificationData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&)> &&)::{lambda(NSArray<NSDictionary *> *)#1})::{lambda(void *,NSArray<NSDictionary *> *)#1}::__invoke;
    v8[3] = &WTF::BlockPtr<void ()(NSArray<NSDictionary *> *)>::fromCallable<WebsiteDataStoreClient::getDisplayedNotifications(WebCore::SecurityOriginData const&,WTF::CompletionHandler<void ()(WTF::Vector<WebCore::NotificationData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&)> &&)::{lambda(NSArray<NSDictionary *> *)#1}>(WebsiteDataStoreClient::getDisplayedNotifications(WebCore::SecurityOriginData const&,WTF::CompletionHandler<void ()(WTF::Vector<WebCore::NotificationData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&)> &&)::{lambda(NSArray<NSDictionary *> *)#1})::descriptor;
    v8[4] = v7;
    Weak = objc_loadWeak((a1 + 16));
    v10 = objc_loadWeak((a1 + 8));
    v11 = *(v14[0] + 8);
    if (v11 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      __break(0xC471u);
    }

    else
    {
      [Weak websiteDataStore:v10 getDisplayedNotificationsForWorkerOrigin:v11 completionHandler:v8];
      _Block_release(v8);
      v12 = v14[0];
      v14[0] = 0;
      if (v12)
      {
        CFRelease(*(v12 + 8));
      }
    }
  }

  else
  {
    v14[0] = 0;
    v14[1] = 0;
    WTF::CompletionHandler<void ()(WTF::Vector<WebCore::NotificationData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&)>::operator()(a3);
    WTF::Vector<WebCore::NotificationData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v14, v13);
  }
}

void sub_19DB3B8A4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9)
{
  if (v9)
  {
    (*(*v9 + 8))(v9);
  }

  if (a9)
  {
    CFRelease(*(a9 + 8));
  }

  _Unwind_Resume(exception_object);
}

void WebsiteDataStoreClient::workerUpdatedAppBadge(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  if (*(a1 + 29) == 1)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 16));
    if (WeakRetained)
    {

      v8 = objc_loadWeakRetained((a1 + 8));
      if (v8)
      {

        API::SecurityOrigin::create(&v15);
        v14 = 0;
        if (a4)
        {
          WTF::RetainPtr<NSNumber>::operator=(&v14, [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:a3]);
        }

        Weak = objc_loadWeak((a1 + 16));
        v10 = objc_loadWeak((a1 + 8));
        v11 = *(v15 + 8);
        if (v11 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
        {
          __break(0xC471u);
        }

        else
        {
          [Weak websiteDataStore:v10 workerOrigin:v11 updatedAppBadge:{v14, v14}];
          v12 = v14;
          v14 = 0;
          if (v12)
          {
          }

          v13 = v15;
          v15 = 0;
          if (v13)
          {
            CFRelease(*(v13 + 8));
          }
        }
      }
    }
  }
}

void sub_19DB3BA44(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10)
{
  if (a9)
  {
  }

  if (a10)
  {
    CFRelease(*(a10 + 8));
  }

  _Unwind_Resume(exception_object);
}

void WebsiteDataStoreClient::navigationToNotificationActionURL(id *this, const WTF::URL *a2)
{
  if (*(this + 30) == 1)
  {
    WeakRetained = objc_loadWeakRetained(this + 2);
    if (WeakRetained)
    {

      v5 = objc_loadWeakRetained(this + 1);
      if (v5)
      {

        Weak = objc_loadWeak(this + 2);
        v7 = objc_loadWeak(this + 1);
        WTF::URL::createCFURL(&v9, a2);
        [Weak websiteDataStore:v7 navigateToNotificationActionURL:v9];
        v8 = v9;
        v9 = 0;
        if (v8)
        {
        }
      }
    }
  }
}

void sub_19DB3BB1C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10)
{
  if (a10)
  {
  }

  _Unwind_Resume(exception_object);
}

void WebsiteDataStoreClient::requestBackgroundFetchPermission(uint64_t a1, WebCore::SecurityOriginData *a2, WebCore::SecurityOriginData *a3, WTF::RefCountedBase *a4)
{
  if (*(a1 + 32))
  {
    Weak = objc_loadWeak((a1 + 16));
    WebKit::CompletionHandlerCallChecker::create(Weak, sel_requestBackgroundFetchPermission_frameOrigin_decisionHandler_, &v27);
    v9 = *a4;
    *a4 = 0;
    v10 = v27;
    v11 = malloc_type_malloc(0x30uLL, 0x10E0040FAC56454uLL);
    *v11 = MEMORY[0x1E69E9818];
    v11[1] = 50331650;
    v11[2] = WTF::BlockPtr<void ()(BOOL)>::fromCallable<WebsiteDataStoreClient::requestBackgroundFetchPermission(WebCore::SecurityOriginData const&,WebCore::SecurityOriginData const&,WTF::CompletionHandler<void ()(BOOL)> &&)::{lambda(BOOL)#1}>(WebsiteDataStoreClient::requestBackgroundFetchPermission(WebCore::SecurityOriginData const&,WebCore::SecurityOriginData const&,WTF::CompletionHandler<void ()(BOOL)> &&)::{lambda(BOOL)#1})::{lambda(void *,BOOL)#1}::__invoke;
    v11[3] = &WTF::BlockPtr<void ()(BOOL)>::fromCallable<WebsiteDataStoreClient::requestBackgroundFetchPermission(WebCore::SecurityOriginData const&,WebCore::SecurityOriginData const&,WTF::CompletionHandler<void ()(BOOL)> &&)::{lambda(BOOL)#1}>(WebsiteDataStoreClient::requestBackgroundFetchPermission(WebCore::SecurityOriginData const&,WebCore::SecurityOriginData const&,WTF::CompletionHandler<void ()(BOOL)> &&)::{lambda(BOOL)#1})::descriptor;
    v11[4] = v9;
    v11[5] = v10;
    WebCore::SecurityOriginData::toString(v25, a2);
    MEMORY[0x19EB01DD0](v26, v25, 0);
    v13 = v25[0];
    v25[0] = 0;
    if (v13 && atomic_fetch_add_explicit(v13, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v13, v12);
    }

    WebCore::SecurityOriginData::toString(&v24, a3);
    MEMORY[0x19EB01DD0](v25, &v24, 0);
    v15 = v24;
    v24 = 0;
    if (v15 && atomic_fetch_add_explicit(v15, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v15, v14);
    }

    v16 = objc_loadWeak((a1 + 16));
    WTF::URL::createCFURL(&v24, v26);
    v17 = v24;
    WTF::URL::createCFURL(&v23, v25);
    [v16 requestBackgroundFetchPermission:v17 frameOrigin:v23 decisionHandler:v11];
    v19 = v23;
    v23 = 0;
    if (v19)
    {
    }

    v20 = v24;
    v24 = 0;
    if (v20)
    {
    }

    v21 = v25[0];
    v25[0] = 0;
    if (v21 && atomic_fetch_add_explicit(v21, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v21, v18);
    }

    v22 = v26[0];
    v26[0] = 0;
    if (v22)
    {
      if (atomic_fetch_add_explicit(v22, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v22, v18);
      }
    }

    _Block_release(v11);
  }

  else
  {

    WTF::CompletionHandler<void ()(BOOL)>::operator()(a4, 0);
  }
}

void sub_19DB3BD54(_Unwind_Exception *a1, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, WTF::StringImpl *a11, WTF::StringImpl *a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, WTF::StringImpl *a17)
{
  if (a10)
  {
  }

  if (a11)
  {
  }

  if (a12 && atomic_fetch_add_explicit(a12, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(a12, a2);
  }

  if (a17)
  {
    if (atomic_fetch_add_explicit(a17, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(a17, a2);
    }
  }

  _Block_release(v17);
  _Unwind_Resume(a1);
}

void sub_19DB3BE14()
{
  if (v1)
  {
    WTF::ThreadSafeRefCounted<WebKit::CompletionHandlerCallChecker,(WTF::DestructionThread)0>::deref(v1);
  }

  if (v0)
  {
    (*(*v0 + 8))(v0);
  }

  JUMPOUT(0x19DB3BE0CLL);
}

void WebsiteDataStoreClient::notifyBackgroundFetchChange(uint64_t a1, atomic_uint **a2, int a3)
{
  if (*(a1 + 33) == 1)
  {
    if (a3 == 2)
    {
      v4 = 2;
    }

    else
    {
      v4 = a3 == 1;
    }

    Weak = objc_loadWeak((a1 + 16));
    v6 = *a2;
    if (v6)
    {
      atomic_fetch_add_explicit(v6, 2u, memory_order_relaxed);
      MEMORY[0x19EB00B70](&v10, v6);
      if (atomic_fetch_add_explicit(v6, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v6, v7);
      }
    }

    else
    {
      v10 = &stru_1F1147748;
      v8 = &stru_1F1147748;
    }

    [Weak notifyBackgroundFetchChange:v10 change:v4];
    v9 = v10;
    v10 = 0;
    if (v9)
    {
    }
  }
}

void sub_19DB3BF14(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (atomic_fetch_add_explicit(v10, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v10, a2);
  }

  _Unwind_Resume(exception_object);
}

void WebsiteDataStoreClient::didAccessWindowProxyProperty(uint64_t a1, atomic_uint **a2, atomic_uint **a3, int a4, uint64_t a5)
{
  if (*(a1 + 34) == 1)
  {
    if (a4 == 2)
    {
      v9 = 2;
    }

    else
    {
      v9 = 3;
    }

    if (a4 == 4)
    {
      v10 = 1;
    }

    else
    {
      v10 = v9;
    }

    Weak = objc_loadWeak((a1 + 16));
    v12 = objc_loadWeak((a1 + 8));
    v13 = *a2;
    if (v13)
    {
      atomic_fetch_add_explicit(v13, 2u, memory_order_relaxed);
      MEMORY[0x19EB00B70](&v23, v13);
      if (atomic_fetch_add_explicit(v13, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v13, v14);
      }
    }

    else
    {
      v23 = &stru_1F1147748;
      v15 = &stru_1F1147748;
    }

    v16 = v23;
    v17 = *a3;
    if (v17)
    {
      atomic_fetch_add_explicit(v17, 2u, memory_order_relaxed);
      MEMORY[0x19EB00B70](&v22, v17);
      if (atomic_fetch_add_explicit(v17, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v17, v18);
      }
    }

    else
    {
      v22 = &stru_1F1147748;
      v19 = &stru_1F1147748;
    }

    [Weak websiteDataStore:v12 domain:v16 didOpenDomainViaWindowOpen:v22 withProperty:v10 directly:{a5, v22}];
    v20 = v22;
    v22 = 0;
    if (v20)
    {
    }

    v21 = v23;
    v23 = 0;
    if (v21)
    {
    }
  }
}

void sub_19DB3C0A0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10)
{
  if (a10)
  {
  }

  _Unwind_Resume(exception_object);
}

void WebsiteDataStoreClient::didAllowPrivateTokenUsageByThirdPartyForTesting(uint64_t a1, uint64_t a2, WTF::URL *a3)
{
  if (*(a1 + 35) == 1)
  {
    Weak = objc_loadWeak((a1 + 16));
    v7 = objc_loadWeak((a1 + 8));
    WTF::URL::createCFURL(&v9, a3);
    [Weak websiteDataStore:v7 didAllowPrivateTokenUsageByThirdPartyForTesting:a2 forResourceURL:v9];
    v8 = v9;
    v9 = 0;
    if (v8)
    {
    }
  }
}

void sub_19DB3C1A0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10)
{
  if (a10)
  {
  }

  _Unwind_Resume(exception_object);
}

void WebsiteDataStoreClient::didExceedMemoryFootprintThreshold(uint64_t a1, uint64_t a2, atomic_uint **a3, unsigned int a4, uint64_t a5, uint64_t a6, char a7, double a8)
{
  if (*(a1 + 36) == 1)
  {
    Weak = objc_loadWeak((a1 + 16));
    v17 = objc_loadWeak((a1 + 8));
    v18 = *a3;
    if (v18)
    {
      atomic_fetch_add_explicit(v18, 2u, memory_order_relaxed);
      MEMORY[0x19EB00B70](&v23, v18);
      if (atomic_fetch_add_explicit(v18, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v18, v19);
      }
    }

    else
    {
      v23 = &stru_1F1147748;
      v20 = &stru_1F1147748;
    }

    LOBYTE(v22) = a7;
    [Weak websiteDataStore:v17 domain:v23 didExceedMemoryFootprintThreshold:a2 withPageCount:a4 processLifetime:a5 inForeground:a6 wasPrivateRelayed:a8 canSuspend:v22];
    v21 = v23;
    v23 = 0;
    if (v21)
    {
    }
  }
}

void sub_19DB3C2C4(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (atomic_fetch_add_explicit(v10, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v10, a2);
  }

  _Unwind_Resume(exception_object);
}

void WebsiteDataStoreClient::webCryptoMasterKey(uint64_t a1, uint64_t *a2)
{
  if (*(a1 + 37) == 1 && (WeakRetained = objc_loadWeakRetained((a1 + 16))) != 0)
  {

    Weak = objc_loadWeak((a1 + 16));
    WebKit::CompletionHandlerCallChecker::create(Weak, sel_webCryptoMasterKey_, &v10);
    v6 = objc_loadWeak((a1 + 16));
    v7 = *a2;
    *a2 = 0;
    v8 = v10;
    v9 = malloc_type_malloc(0x30uLL, 0x10E0040FAC56454uLL);
    *v9 = MEMORY[0x1E69E9818];
    v9[1] = 50331650;
    v9[2] = WTF::BlockPtr<void ()(NSData *)>::fromCallable<WebsiteDataStoreClient::webCryptoMasterKey(WTF::CompletionHandler<void ()(std::optional<WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>> &&)> &&)::{lambda(NSData *)#1}>(WebsiteDataStoreClient::webCryptoMasterKey(WTF::CompletionHandler<void ()(std::optional<WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>> &&)> &&)::{lambda(NSData *)#1})::{lambda(void *,NSData *)#1}::__invoke;
    v9[3] = &WTF::BlockPtr<void ()(NSData *)>::fromCallable<WebsiteDataStoreClient::webCryptoMasterKey(WTF::CompletionHandler<void ()(std::optional<WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>> &&)> &&)::{lambda(NSData *)#1}>(WebsiteDataStoreClient::webCryptoMasterKey(WTF::CompletionHandler<void ()(std::optional<WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>> &&)> &&)::{lambda(NSData *)#1})::descriptor;
    v9[4] = v7;
    v9[5] = v8;
    [v6 webCryptoMasterKey:v9];
    _Block_release(v9);
  }

  else
  {
    WTF::CompletionHandler<void ()(std::optional<WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>> &&)>::operator()(a2);
  }
}

void sub_19DB3C430(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, WTF *a10, int a11, int a12, char a13)
{
  v14 = v13;
  _Block_release(v14);
  _Unwind_Resume(a1);
}

uint64_t WTF::CompletionHandler<void ()(std::optional<unsigned long long>)>::operator()(uint64_t *a1)
{
  v1 = *a1;
  *a1 = 0;
  (*(*v1 + 16))(v1);
  v2 = *(*v1 + 8);

  return v2(v1);
}

uint64_t WTF::CompletionHandler<void ()(WebKit::WebPageProxy *)>::operator()(uint64_t *a1)
{
  v1 = *a1;
  *a1 = 0;
  (*(*v1 + 16))(v1);
  v2 = *(*v1 + 8);

  return v2(v1);
}

uint64_t WTF::CompletionHandler<void ()(WTF::Vector<WebCore::NotificationData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&)>::operator()(uint64_t *a1)
{
  v1 = *a1;
  *a1 = 0;
  (*(*v1 + 16))(v1);
  v2 = *(*v1 + 8);

  return v2(v1);
}

uint64_t WTF::Vector<WebCore::NotificationData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(uint64_t a1, void *a2)
{
  v3 = *(a1 + 12);
  if (v3)
  {
    v4 = *a1;
    v5 = v3 << 8;
    do
    {
      WebCore::NotificationData::~NotificationData(v4, a2);
      v4 = (v6 + 256);
      v5 -= 256;
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

uint64_t WTF::CompletionHandler<void ()(std::optional<WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>> &&)>::operator()(uint64_t *a1)
{
  v1 = *a1;
  *a1 = 0;
  (*(*v1 + 16))(v1);
  v2 = *(*v1 + 8);

  return v2(v1);
}

uint64_t WTF::BlockPtr<void ()(unsigned long long)>::fromCallable<WebsiteDataStoreClient::requestStorageSpace(WebCore::SecurityOriginData const&,WebCore::SecurityOriginData const&,unsigned long long,unsigned long long,unsigned long long,WTF::CompletionHandler<void ()(std::optional<unsigned long long>)> &&)::{lambda(unsigned long long)#1}>(WebsiteDataStoreClient::requestStorageSpace(WebCore::SecurityOriginData const&,WebCore::SecurityOriginData const&,unsigned long long,unsigned long long,unsigned long long,WTF::CompletionHandler<void ()(std::optional<unsigned long long>)> &&)::{lambda(unsigned long long)#1})::{lambda(void const*)#1}::__invoke(uint64_t a1)
{
  v2 = *(a1 + 40);
  *(a1 + 40) = 0;
  if (v2)
  {
    WTF::ThreadSafeRefCounted<WebKit::CompletionHandlerCallChecker,(WTF::DestructionThread)0>::deref(v2);
  }

  result = *(a1 + 32);
  *(a1 + 32) = 0;
  if (result)
  {
    v4 = *(*result + 8);

    return v4();
  }

  return result;
}

uint64_t WTF::BlockPtr<void ()(unsigned long long)>::fromCallable<WebsiteDataStoreClient::requestStorageSpace(WebCore::SecurityOriginData const&,WebCore::SecurityOriginData const&,unsigned long long,unsigned long long,unsigned long long,WTF::CompletionHandler<void ()(std::optional<unsigned long long>)> &&)::{lambda(unsigned long long)#1}>(WebsiteDataStoreClient::requestStorageSpace(WebCore::SecurityOriginData const&,WebCore::SecurityOriginData const&,unsigned long long,unsigned long long,unsigned long long,WTF::CompletionHandler<void ()(std::optional<unsigned long long>)> &&)::{lambda(unsigned long long)#1})::{lambda(void *,unsigned long long)#1}::__invoke(uint64_t a1)
{
  result = WebKit::CompletionHandlerCallChecker::completionHandlerHasBeenCalled(*(a1 + 40));
  if ((result & 1) == 0)
  {
    *(*(a1 + 40) + 24) = 1;

    return WTF::CompletionHandler<void ()(std::optional<unsigned long long>)>::operator()((a1 + 32));
  }

  return result;
}

void WTF::BlockPtr<void ()(NSURLSessionAuthChallengeDisposition,NSURLCredential *)>::fromCallable<WebsiteDataStoreClient::didReceiveAuthenticationChallenge(WTF::Ref<WebKit::AuthenticationChallengeProxy,WTF::RawPtrTraits<WebKit::AuthenticationChallengeProxy>,WTF::DefaultRefDerefTraits<WebKit::AuthenticationChallengeProxy>> &&)::{lambda(NSURLSessionAuthChallengeDisposition,NSURLCredential *)#1}>(WebsiteDataStoreClient::didReceiveAuthenticationChallenge(WTF::Ref<WebKit::AuthenticationChallengeProxy,WTF::RawPtrTraits<WebKit::AuthenticationChallengeProxy>,WTF::DefaultRefDerefTraits<WebKit::AuthenticationChallengeProxy>> &&)::{lambda(NSURLSessionAuthChallengeDisposition,NSURLCredential *)#1})::{lambda(void const*)#1}::__invoke(uint64_t a1)
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

uint64_t WTF::BlockPtr<void ()(NSURLSessionAuthChallengeDisposition,NSURLCredential *)>::fromCallable<WebsiteDataStoreClient::didReceiveAuthenticationChallenge(WTF::Ref<WebKit::AuthenticationChallengeProxy,WTF::RawPtrTraits<WebKit::AuthenticationChallengeProxy>,WTF::DefaultRefDerefTraits<WebKit::AuthenticationChallengeProxy>> &&)::{lambda(NSURLSessionAuthChallengeDisposition,NSURLCredential *)#1}>(WebsiteDataStoreClient::didReceiveAuthenticationChallenge(WTF::Ref<WebKit::AuthenticationChallengeProxy,WTF::RawPtrTraits<WebKit::AuthenticationChallengeProxy>,WTF::DefaultRefDerefTraits<WebKit::AuthenticationChallengeProxy>> &&)::{lambda(NSURLSessionAuthChallengeDisposition,NSURLCredential *)#1})::{lambda(void *,NSURLSessionAuthChallengeDisposition,NSURLCredential *)#1}::__invoke(uint64_t a1, unint64_t a2, uint64_t a3)
{
  result = WebKit::CompletionHandlerCallChecker::completionHandlerHasBeenCalled(*(a1 + 40));
  if ((result & 1) == 0)
  {
    v8 = *(a1 + 32);
    *(*(a1 + 40) + 24) = 1;
    v9 = *(v8 + 472);
    WebKit::toAuthenticationChallengeDisposition(a2, v7);
    MEMORY[0x19EB02B50](&v13, a3);
    WebKit::AuthenticationDecisionListener::completeChallenge(v9);
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
  }

  return result;
}

uint64_t WTF::BlockPtr<void ()(WKWebView *)>::fromCallable<WebsiteDataStoreClient::openWindowFromServiceWorker(WTF::String const&,WebCore::SecurityOriginData const&,WTF::CompletionHandler<void ()(WebKit::WebPageProxy *)> &&)::{lambda(WKWebView *)#1}>(WebsiteDataStoreClient::openWindowFromServiceWorker(WTF::String const&,WebCore::SecurityOriginData const&,WTF::CompletionHandler<void ()(WebKit::WebPageProxy *)> &&)::{lambda(WKWebView *)#1})::{lambda(void const*)#1}::__invoke(uint64_t a1)
{
  v2 = *(a1 + 40);
  *(a1 + 40) = 0;
  if (v2)
  {
    WTF::ThreadSafeRefCounted<WebKit::CompletionHandlerCallChecker,(WTF::DestructionThread)0>::deref(v2);
  }

  result = *(a1 + 32);
  *(a1 + 32) = 0;
  if (result)
  {
    v4 = *(*result + 8);

    return v4();
  }

  return result;
}

uint64_t WTF::BlockPtr<void ()(WKWebView *)>::fromCallable<WebsiteDataStoreClient::openWindowFromServiceWorker(WTF::String const&,WebCore::SecurityOriginData const&,WTF::CompletionHandler<void ()(WebKit::WebPageProxy *)> &&)::{lambda(WKWebView *)#1}>(WebsiteDataStoreClient::openWindowFromServiceWorker(WTF::String const&,WebCore::SecurityOriginData const&,WTF::CompletionHandler<void ()(WebKit::WebPageProxy *)> &&)::{lambda(WKWebView *)#1})::{lambda(void *,WKWebView *)#1}::__invoke(uint64_t a1, void *a2)
{
  result = WebKit::CompletionHandlerCallChecker::completionHandlerHasBeenCalled(*(a1 + 40));
  if ((result & 1) == 0)
  {
    *(*(a1 + 40) + 24) = 1;
    if (a2)
    {
      [a2 _page];
    }

    return WTF::CompletionHandler<void ()(WebKit::WebPageProxy *)>::operator()((a1 + 32));
  }

  return result;
}

uint64_t WTF::BlockPtr<void ()(NSArray<NSDictionary *> *)>::fromCallable<WebsiteDataStoreClient::getDisplayedNotifications(WebCore::SecurityOriginData const&,WTF::CompletionHandler<void ()(WTF::Vector<WebCore::NotificationData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&)> &&)::{lambda(NSArray<NSDictionary *> *)#1}>(WebsiteDataStoreClient::getDisplayedNotifications(WebCore::SecurityOriginData const&,WTF::CompletionHandler<void ()(WTF::Vector<WebCore::NotificationData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&)> &&)::{lambda(NSArray<NSDictionary *> *)#1})::{lambda(void const*)#1}::__invoke(uint64_t a1)
{
  result = *(a1 + 32);
  *(a1 + 32) = 0;
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t WTF::BlockPtr<void ()(NSArray<NSDictionary *> *)>::fromCallable<WebsiteDataStoreClient::getDisplayedNotifications(WebCore::SecurityOriginData const&,WTF::CompletionHandler<void ()(WTF::Vector<WebCore::NotificationData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&)> &&)::{lambda(NSArray<NSDictionary *> *)#1}>(WebsiteDataStoreClient::getDisplayedNotifications(WebCore::SecurityOriginData const&,WTF::CompletionHandler<void ()(WTF::Vector<WebCore::NotificationData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&)> &&)::{lambda(NSArray<NSDictionary *> *)#1})::{lambda(void *,NSArray<NSDictionary *> *)#1}::__invoke(uint64_t a1, void *a2)
{
  v19 = *MEMORY[0x1E69E9840];
  v14 = 0;
  v15 = 0;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v5 = [a2 countByEnumeratingWithState:&v10 objects:v18 count:16];
  if (v5)
  {
    v6 = *v11;
    while (2)
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v11 != v6)
        {
          objc_enumerationMutation(a2);
        }

        WebCore::NotificationData::fromDictionary(v16, *(*(&v10 + 1) + 8 * i), v4);
        if ((v17 & 1) == 0)
        {
          result = 248;
          __break(0xC471u);
          return result;
        }

        if (HIDWORD(v15) == v15)
        {
          WTF::Vector<WebCore::NotificationData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::appendSlowCase<(WTF::FailureAction)0,WebCore::NotificationData&>(&v14, v16);
        }

        else
        {
          WebCore::NotificationData::NotificationData((v14 + (HIDWORD(v15) << 8)), v16);
          ++HIDWORD(v15);
        }

        if (v17 == 1)
        {
          WebCore::NotificationData::~NotificationData(v16, v4);
        }
      }

      v5 = [a2 countByEnumeratingWithState:&v10 objects:v18 count:16];
      if (v5)
      {
        continue;
      }

      break;
    }
  }

  WTF::CompletionHandler<void ()(WTF::Vector<WebCore::NotificationData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&)>::operator()((a1 + 32));
  return WTF::Vector<WebCore::NotificationData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v14, v8);
}

void sub_19DB3CC8C(_Unwind_Exception *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va, a10);
  WTF::Vector<WebCore::NotificationData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(va, a2);
  _Unwind_Resume(a1);
}

uint64_t WTF::Vector<WebCore::NotificationData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::appendSlowCase<(WTF::FailureAction)0,WebCore::NotificationData&>(uint64_t a1, unint64_t a2)
{
  v3 = WTF::Vector<WebCore::NotificationData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(a1, *(a1 + 12) + 1, a2);
  WebCore::NotificationData::NotificationData((*a1 + (*(a1 + 12) << 8)), v3);
  ++*(a1 + 12);
  return 1;
}

unint64_t WTF::Vector<WebCore::NotificationData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(uint64_t a1, unint64_t a2, unint64_t a3)
{
  v3 = a3;
  v5 = *a1;
  if (*a1 > a3 || v5 + (*(a1 + 12) << 8) <= a3)
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

    WTF::Vector<WebCore::NotificationData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::reserveCapacity<(WTF::FailureAction)0>(a1, v12);
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

    WTF::Vector<WebCore::NotificationData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::reserveCapacity<(WTF::FailureAction)0>(a1, v9);
    return *a1 + v6;
  }

  return v3;
}

uint64_t WTF::Vector<WebCore::NotificationData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::reserveCapacity<(WTF::FailureAction)0>(uint64_t a1, unint64_t a2)
{
  if (*(a1 + 8) < a2)
  {
    v2 = a2;
    if (a2 >> 24)
    {
      __break(0xC471u);
      JUMPOUT(0x19DB3CE68);
    }

    v4 = *a1;
    v5 = (*a1 + (*(a1 + 12) << 8));
    v6 = WTF::fastMalloc((a2 << 8));
    *(a1 + 8) = v2;
    *a1 = v6;
    WTF::VectorMover<false,WebCore::NotificationData>::move(v4, v5, v6);
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

void WTF::VectorMover<false,WebCore::NotificationData>::move(WebCore::NotificationData *a1, WebCore::NotificationData *a2, uint64_t a3)
{
  if (a1 != a2)
  {
    v5 = a1;
    do
    {
      WebCore::NotificationData::NotificationData(a3, v5);
      WebCore::NotificationData::~NotificationData(v5, v6);
      a3 += 256;
      v5 = (v5 + 256);
    }

    while (v5 != a2);
  }
}

uint64_t WTF::BlockPtr<void ()(BOOL)>::fromCallable<WebsiteDataStoreClient::requestBackgroundFetchPermission(WebCore::SecurityOriginData const&,WebCore::SecurityOriginData const&,WTF::CompletionHandler<void ()(BOOL)> &&)::{lambda(BOOL)#1}>(WebsiteDataStoreClient::requestBackgroundFetchPermission(WebCore::SecurityOriginData const&,WebCore::SecurityOriginData const&,WTF::CompletionHandler<void ()(BOOL)> &&)::{lambda(BOOL)#1})::{lambda(void const*)#1}::__invoke(uint64_t a1)
{
  v2 = *(a1 + 40);
  *(a1 + 40) = 0;
  if (v2)
  {
    WTF::ThreadSafeRefCounted<WebKit::CompletionHandlerCallChecker,(WTF::DestructionThread)0>::deref(v2);
  }

  result = *(a1 + 32);
  *(a1 + 32) = 0;
  if (result)
  {
    v4 = *(*result + 8);

    return v4();
  }

  return result;
}

uint64_t WTF::BlockPtr<void ()(BOOL)>::fromCallable<WebsiteDataStoreClient::requestBackgroundFetchPermission(WebCore::SecurityOriginData const&,WebCore::SecurityOriginData const&,WTF::CompletionHandler<void ()(BOOL)> &&)::{lambda(BOOL)#1}>(WebsiteDataStoreClient::requestBackgroundFetchPermission(WebCore::SecurityOriginData const&,WebCore::SecurityOriginData const&,WTF::CompletionHandler<void ()(BOOL)> &&)::{lambda(BOOL)#1})::{lambda(void *,BOOL)#1}::__invoke(uint64_t a1, char a2)
{
  result = WebKit::CompletionHandlerCallChecker::completionHandlerHasBeenCalled(*(a1 + 40));
  if ((result & 1) == 0)
  {
    *(*(a1 + 40) + 24) = 1;

    return WTF::CompletionHandler<void ()(BOOL)>::operator()((a1 + 32), a2);
  }

  return result;
}

uint64_t WTF::BlockPtr<void ()(NSData *)>::fromCallable<WebsiteDataStoreClient::webCryptoMasterKey(WTF::CompletionHandler<void ()(std::optional<WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>> &&)> &&)::{lambda(NSData *)#1}>(WebsiteDataStoreClient::webCryptoMasterKey(WTF::CompletionHandler<void ()(std::optional<WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>> &&)> &&)::{lambda(NSData *)#1})::{lambda(void const*)#1}::__invoke(uint64_t a1)
{
  v2 = *(a1 + 40);
  *(a1 + 40) = 0;
  if (v2)
  {
    WTF::ThreadSafeRefCounted<WebKit::CompletionHandlerCallChecker,(WTF::DestructionThread)0>::deref(v2);
  }

  result = *(a1 + 32);
  *(a1 + 32) = 0;
  if (result)
  {
    v4 = *(*result + 8);

    return v4();
  }

  return result;
}

unint64_t WTF::BlockPtr<void ()(NSData *)>::fromCallable<WebsiteDataStoreClient::webCryptoMasterKey(WTF::CompletionHandler<void ()(std::optional<WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>> &&)> &&)::{lambda(NSData *)#1}>(WebsiteDataStoreClient::webCryptoMasterKey(WTF::CompletionHandler<void ()(std::optional<WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>> &&)> &&)::{lambda(NSData *)#1})::{lambda(void *,NSData *)#1}::__invoke(uint64_t a1, void *a2)
{
  result = WebKit::CompletionHandlerCallChecker::completionHandlerHasBeenCalled(*(a1 + 40));
  if ((result & 1) == 0)
  {
    *(*(a1 + 40) + 24) = 1;
    if (a2)
    {
      v5 = [a2 bytes];
      result = [a2 length];
      v6 = result;
      if (result)
      {
        if (HIDWORD(result))
        {
          __break(0xC471u);
          return result;
        }

        result = WTF::fastMalloc(result);
        v7 = 0;
        do
        {
          *(result + v7) = *(v5 + v7);
          ++v7;
        }

        while (v6 != v7);
      }

      v9 = result;
      v10 = 1;
      result = WTF::CompletionHandler<void ()(std::optional<WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>> &&)>::operator()((a1 + 32));
    }

    else
    {
      LOBYTE(v9) = 0;
      v10 = 0;
      result = WTF::CompletionHandler<void ()(std::optional<WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>> &&)>::operator()((a1 + 32));
    }

    if (v10 == 1)
    {
      result = v9;
      if (v9)
      {
        return WTF::fastFree(v9, v8);
      }
    }
  }

  return result;
}

void sub_19DB3D110(_Unwind_Exception *exception_object, void *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, WTF *a10, int a11, int a12, char a13)
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

void sub_19DB3D344(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  if (v2)
  {
  }

  CFRelease(*(v3 + 8));
  WTF::Vector<WTF::RefPtr<API::Object,WTF::RawPtrTraits<API::Object>,WTF::DefaultRefDerefTraits<API::Object>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(va, v5);
  _Unwind_Resume(a1);
}

void sub_19DB3D59C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  if (v2)
  {
  }

  CFRelease(*(v3 + 8));
  WTF::Vector<WTF::RefPtr<API::Object,WTF::RawPtrTraits<API::Object>,WTF::DefaultRefDerefTraits<API::Object>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(va, v5);
  _Unwind_Resume(a1);
}

void sub_19DB3D8D0(_Unwind_Exception *exception_object)
{
  if (v1)
  {
  }

  _Unwind_Resume(exception_object);
}

void sub_19DB3DAA4(_Unwind_Exception *exception_object)
{
  if (v1)
  {
  }

  _Unwind_Resume(exception_object);
}

void sub_19DB3E0AC(_Unwind_Exception *a1, void *a2, uint64_t a3, ...)
{
  va_start(va, a3);
  WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(va, a2);
  _Unwind_Resume(a1);
}

void sub_19DB3E2E0(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, WTF::StringImpl *a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, WTF::StringImpl *a19, uint64_t a20, uint64_t a21, WTF::StringImpl *a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29)
{
  if (a29 == 1)
  {
    v30 = a22;
    a22 = 0;
    if (v30 && atomic_fetch_add_explicit(v30, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v30, a2);
    }

    WTF::Vector<WebCore::ImageResource,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&a20, a2);
    v32 = a19;
    a19 = 0;
    if (v32 && atomic_fetch_add_explicit(v32, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v32, v31);
    }

    v33 = a14;
    a14 = 0;
    if (v33)
    {
      if (atomic_fetch_add_explicit(v33, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v33, v31);
      }
    }

    mpark::detail::move_constructor<mpark::detail::traits<WebCore::SecurityOriginData::Tuple,WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::OpaqueOriginIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,(mpark::detail::Trait)1>::~move_constructor(&a10);
  }

  _Unwind_Resume(exception_object);
}

void sub_19DB3E8E4(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
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

void sub_19DB3EBE8(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9)
{
  if (v10)
  {
  }

  if (a9)
  {
  }

  if (atomic_fetch_add_explicit(v9, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v9, a2);
  }

  _Unwind_Resume(exception_object);
}

uint64_t WTF::Vector<WebCore::ElementAnimationContext,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::Vector(uint64_t result, uint64_t a2)
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

  if (v3 < 0x2AAAAAB)
  {
    v5 = 96 * v3;
    v6 = WTF::fastMalloc((96 * v3));
    *(v2 + 8) = v5 / 0x60;
    *v2 = v6;
    v7 = *(a2 + 12);
    if (v7)
    {
      v8 = *a2;
      v9 = 96 * v7;
      do
      {
        v10 = v8[1];
        *v6 = *v8;
        v6[1] = v10;
        v11 = v8[2];
        v12 = v8[3];
        v13 = v8[5];
        v6[4] = v8[4];
        v6[5] = v13;
        v6[2] = v11;
        v6[3] = v12;
        v6 += 6;
        v8 += 6;
        v9 -= 96;
      }

      while (v9);
    }

    return v2;
  }

  __break(0xC471u);
  return result;
}

uint64_t WebKit::GPUConnectionToWebProcess::GPUConnectionToWebProcess(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, WTF::MachSendRight *this, uint64_t a6)
{
  v53 = *MEMORY[0x1E69E9840];
  *(a1 + 8) = 0;
  *(a1 + 16) = 3;
  v11 = a1 + 24;
  *(a1 + 40) = 0;
  *a1 = &unk_1F10FAAA8;
  *(a1 + 24) = &unk_1F10FAB00;
  *(a1 + 32) = 0;
  *(a1 + 48) = 0;
  *object = WTF::MachSendRight::leakSendRight(this);
  *&object[8] = 0;
  IPC::Connection::createClientConnection(object, (a1 + 56));
  if (*&object[8])
  {
    os_release(*&object[8]);
  }

  v12 = IPC::MessageReceiverMap::MessageReceiverMap((a1 + 64));
  atomic_fetch_add((a2 + 136), 1u);
  *(a1 + 80) = a2;
  *(a1 + 88) = a3;
  isMemoryAttributionDisabled = WebCore::isMemoryAttributionDisabled(v12);
  if (isMemoryAttributionDisabled)
  {
    *(a1 + 96) = 0;
  }

  else
  {
    isMemoryAttributionDisabled = WTF::MachSendRight::MachSendRight((a1 + 96), a6);
  }

  *(a1 + 104) = 0;
  *(a1 + 112) = 0;
  *(a1 + 120) = 0;
  v15 = WebKit::RemoteMediaPlayerManagerProxy::operator new(isMemoryAttributionDisabled, v14);
  *(a1 + 128) = WebKit::RemoteMediaPlayerManagerProxy::RemoteMediaPlayerManagerProxy(v15, a1);
  *(a1 + 136) = a4;
  *(a1 + 144) = 0;
  *(a1 + 152) = 0;
  *(a1 + 160) = 0;
  v16 = WebKit::RemoteSampleBufferDisplayLayerManager::create((a1 + 168), a1, a6 + 8);
  WebCore::SecurityOrigin::createOpaque(v16);
  *(a1 + 184) = 0;
  *(a1 + 186) = 0;
  v17 = *(a1 + 56);
  while (1)
  {
    v18 = *v17;
    if ((*v17 & 1) == 0)
    {
      break;
    }

    v39 = *v17;
    atomic_compare_exchange_strong_explicit(v17, &v39, v18 + 2, memory_order_relaxed, memory_order_relaxed);
    if (v39 == v18)
    {
      goto LABEL_8;
    }
  }

  WTF::ThreadSafeWeakPtrControlBlock::strongRef(*v17);
LABEL_8:
  v52[0] = v17;
  WebKit::RemoteVideoFrameObjectHeap::create(v52, object);
  *(a1 + 192) = *object;
  *object = 0;
  v19 = v52[0];
  v52[0] = 0;
  if (v19)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v19);
  }

  WebKit::LibWebRTCCodecsProxy::create(a1, (a6 + 8), object);
  *(a1 + 200) = *object;
  *(a1 + 208) = 0;
  v21 = *(a6 + 40);
  *(a6 + 40) = 0;
  *(a1 + 208) = v21;
  v22 = *(a6 + 48);
  if (v22)
  {
    atomic_fetch_add_explicit(v22, 2u, memory_order_relaxed);
  }

  *(a1 + 216) = v22;
  *(a1 + 320) = 0;
  *(a1 + 288) = 0u;
  *(a1 + 304) = 0u;
  *(a1 + 256) = 0u;
  *(a1 + 272) = 0u;
  *(a1 + 224) = 0u;
  *(a1 + 240) = 0u;
  *(a1 + 321) = *(a6 + 32);
  *(a1 + 322) = 0;
  *(a1 + 328) = 0;
  v23 = *(a6 + 8);
  *(a1 + 352) = *(a6 + 24);
  *(a1 + 336) = v23;
  v24 = WTF::RunLoop::mainSingleton(v20);
  isCurrent = WTF::RunLoop::isCurrent(v24);
  if (isCurrent)
  {
    WebCore::AudioSession::enableMediaPlayback(isCurrent);
    v26 = *(a1 + 56);
    while (1)
    {
      v27 = *v26;
      if ((*v26 & 1) == 0)
      {
        break;
      }

      v40 = *v26;
      atomic_compare_exchange_strong_explicit(v26, &v40, v27 + 2, memory_order_relaxed, memory_order_relaxed);
      if (v40 == v27)
      {
        goto LABEL_16;
      }
    }

    WTF::ThreadSafeWeakPtrControlBlock::strongRef(*v26);
LABEL_16:
    v28 = IPC::Connection::setOnlySendMessagesAsDispatchWhenWaitingForSyncReplyWhenProcessingSuchAMessage(v26, 1);
    v29 = WTF::RunLoop::currentSingleton(v28);
    v30 = IPC::Connection::open(v26, v11, v29);
    if (*(a6 + 57) == 1)
    {
      v31 = *(a6 + 56);
    }

    else
    {
      v31 = WebCore::vp9HardwareDecoderAvailable(v30);
      object[0] = v31;
      v30 = IPC::MessageSender::send<Messages::GPUProcessProxy::SetHasVP9HardwareDecoder>(a2 + 24, object);
    }

    if (*(a6 + 59) == 1)
    {
      v32 = *(a6 + 58);
    }

    else
    {
      v32 = WebCore::av1HardwareDecoderAvailable(v30);
      object[0] = v32;
      IPC::MessageSender::send<Messages::GPUProcessProxy::SetHasAV1HardwareDecoder>(a2 + 24, object);
    }

    v33 = *(a2 + 40);
    if (v33)
    {
      while (1)
      {
        v34 = *v33;
        if ((*v33 & 1) == 0)
        {
          break;
        }

        v41 = *v33;
        atomic_compare_exchange_strong_explicit(v33, &v41, v34 + 2, memory_order_relaxed, memory_order_relaxed);
        if (v41 == v34)
        {
          goto LABEL_25;
        }
      }

      WTF::ThreadSafeWeakPtrControlBlock::strongRef(*v33);
    }

LABEL_25:
    IPC::Connection::getAuditToken(v33, object);
    if (v43 == 1)
    {
      v35 = object[0];
      *v52 = *&object[1];
      *(&v52[1] + 7) = *&object[16];
      v36 = 1;
    }

    else
    {
      v35 = 0;
      v36 = 0;
    }

    if (v33)
    {
      WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v33);
    }

    v37 = *(a1 + 56);
    object[0] = v35;
    *&object[1] = *v52;
    *&object[16] = *(&v52[1] + 7);
    v43 = v36;
    v44 = v50;
    v45 = v51;
    v46 = v31 & 1;
    v47 = v32 & 1;
    v48 = 1;
    v49 = object;
    IPC::Connection::send<Messages::GPUProcessConnection::DidInitialize>(v37, &v49);
    ++WebKit::GPUConnectionToWebProcess::gObjectCountForTesting;
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v26);
    return a1;
  }

  else
  {
    result = 334;
    __break(0xC471u);
  }

  return result;
}

atomic_uchar *WebKit::RemoteSampleBufferDisplayLayerManager::create(WebKit::RemoteSampleBufferDisplayLayerManager *a1, void *a2, uint64_t a3)
{
  v6 = WebKit::RemoteSampleBufferDisplayLayerManager::operator new(a1, a2);
  v7 = WebKit::RemoteSampleBufferDisplayLayerManager::RemoteSampleBufferDisplayLayerManager(v6, a2, a3);
  *a1 = v7;

  return WebKit::RemoteSampleBufferDisplayLayerManager::startListeningForIPC(v7);
}

IPC::Encoder *IPC::MessageSender::send<Messages::GPUProcessProxy::SetHasVP9HardwareDecoder>(uint64_t a1, void *a2)
{
  v4 = (*(*a1 + 56))(a1);

  return IPC::MessageSender::send<Messages::GPUProcessProxy::SetHasVP9HardwareDecoder>(a1, a2, v4);
}

IPC::Encoder *IPC::MessageSender::send<Messages::GPUProcessProxy::SetHasAV1HardwareDecoder>(uint64_t a1, void *a2)
{
  v4 = (*(*a1 + 56))(a1);

  return IPC::MessageSender::send<Messages::GPUProcessProxy::SetHasAV1HardwareDecoder>(a1, a2, v4);
}

IPC::Encoder *IPC::Connection::send<Messages::GPUProcessConnection::DidInitialize>(uint64_t *a1, void *a2)
{
  v4 = IPC::Encoder::operator new(0x238, a2);
  *v4 = 56;
  *(v4 + 68) = 0;
  *(v4 + 70) = 0;
  *(v4 + 69) = 0;
  *(v4 + 2) = 0;
  *(v4 + 3) = 0;
  *(v4 + 1) = 0;
  IPC::Encoder::encodeHeader(v4);
  v9 = v4;
  IPC::ArgumentCoder<std::optional<WebKit::GPUProcessConnectionInfo>,void>::encode<IPC::Encoder,std::optional<WebKit::GPUProcessConnectionInfo> const&>(v4, *a2);
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

void WebKit::GPUConnectionToWebProcess::~GPUConnectionToWebProcess(WebKit::GPUConnectionToWebProcess *this)
{
  *this = &unk_1F10FAAA8;
  *(this + 3) = &unk_1F10FAB00;
  v2 = WTF::RunLoop::mainSingleton(this);
  if (WTF::RunLoop::isCurrent(v2))
  {
    IPC::Connection::invalidate(*(this + 7));
    WebKit::RemoteSampleBufferDisplayLayerManager::close(*(this + 21));
    --WebKit::GPUConnectionToWebProcess::gObjectCountForTesting;
    v4 = *(this + 41);
    if (v4)
    {
      v5 = *(v4 - 4);
      if (v5)
      {
        v6 = (v4 + 8);
        do
        {
          if (*(v6 - 1) != -1)
          {
            v7 = *v6;
            *v6 = 0;
            if (v7)
            {
              if (atomic_fetch_add_explicit(v7, 0xFFFFFFFE, memory_order_relaxed) == 2)
              {
                WTF::StringImpl::destroy(v7, v3);
              }
            }
          }

          v6 += 2;
          --v5;
        }

        while (v5);
      }

      WTF::fastFree((v4 - 16), v3);
    }

    v8 = *(this + 39);
    *(this + 39) = 0;
    if (v8)
    {
      if (v8[4] == 1)
      {
        (*(*v8 + 24))(v8);
      }

      else
      {
        --v8[4];
      }
    }

    v9 = *(this + 38);
    if (v9)
    {
      v10 = *(v9 - 4);
      if (v10)
      {
        v11 = (v9 + 8);
        do
        {
          if (*(v11 - 1) != -1)
          {
            std::unique_ptr<WebKit::RemoteAudioHardwareListenerProxy>::reset[abi:sn200100](v11, 0);
          }

          v11 += 2;
          --v10;
        }

        while (v10);
      }

      WTF::fastFree((v9 - 16), v3);
    }

    v12 = *(this + 37);
    if (v12)
    {
      v13 = *(v12 - 4);
      if (v13)
      {
        v14 = (v12 + 16);
        do
        {
          if (*(v14 - 2) != -1)
          {
            v14 = std::unique_ptr<WebKit::LayerHostingContext>::~unique_ptr[abi:sn200100](v14);
          }

          v14 += 3;
          --v13;
        }

        while (v13);
      }

      WTF::fastFree((v12 - 16), v3);
    }

    std::unique_ptr<WebKit::RemoteMediaEngineConfigurationFactoryProxy>::reset[abi:sn200100](this + 36, 0);
    v16 = *(this + 35);
    *(this + 35) = 0;
    if (v16)
    {
      (*(*v16 + 24))(v16);
    }

    v17 = *(this + 34);
    *(this + 34) = 0;
    if (v17)
    {
      WTF::RefCounted<WebKit::RemoteLegacyCDMFactoryProxy>::deref((v17 + 16), v15);
    }

    v18 = *(this + 33);
    *(this + 33) = 0;
    if (v18)
    {
      (*(*v18 + 8))(v18);
    }

    v19 = *(this + 32);
    *(this + 32) = 0;
    if (v19)
    {
      if (v19[4] == 1)
      {
        (*(*v19 + 24))(v19);
      }

      else
      {
        --v19[4];
      }
    }

    v20 = *(this + 31);
    *(this + 31) = 0;
    if (v20)
    {
      WTF::RefCounted<WebKit::RemoteCDMFactoryProxy>::deref((v20 + 16), v15);
    }

    v21 = *(this + 30);
    if (v21)
    {
      v22 = *(v21 - 4);
      if (v22)
      {
        v23 = (v21 + 8);
        do
        {
          if (*(v23 - 1) != -1)
          {
            v23 = IPC::ScopedActiveMessageReceiveQueue<WebKit::RemoteGPU,WTF::RefPtr<WebKit::RemoteGPU,WTF::RawPtrTraits<WebKit::RemoteGPU>,WTF::DefaultRefDerefTraits<WebKit::RemoteGPU>>>::~ScopedActiveMessageReceiveQueue(v23);
          }

          v23 += 2;
          --v22;
        }

        while (v22);
      }

      WTF::fastFree((v21 - 16), v15);
    }

    v24 = *(this + 29);
    if (v24)
    {
      WTF::HashTable<WTF::ObjectIdentifierGeneric<WebKit::GraphicsContextGLIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::GraphicsContextGLIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,IPC::ScopedActiveMessageReceiveQueue<WebKit::RemoteGraphicsContextGL,WTF::RefPtr<WebKit::RemoteGraphicsContextGL,WTF::RawPtrTraits<WebKit::RemoteGraphicsContextGL>,WTF::DefaultRefDerefTraits<WebKit::RemoteGraphicsContextGL>>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::GraphicsContextGLIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,IPC::ScopedActiveMessageReceiveQueue<WebKit::RemoteGraphicsContextGL,WTF::RefPtr<WebKit::RemoteGraphicsContextGL,WTF::RawPtrTraits<WebKit::RemoteGraphicsContextGL>,WTF::DefaultRefDerefTraits<WebKit::RemoteGraphicsContextGL>>>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::GraphicsContextGLIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::GraphicsContextGLIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,IPC::ScopedActiveMessageReceiveQueue<WebKit::RemoteGraphicsContextGL,WTF::RefPtr<WebKit::RemoteGraphicsContextGL,WTF::RawPtrTraits<WebKit::RemoteGraphicsContextGL>,WTF::DefaultRefDerefTraits<WebKit::RemoteGraphicsContextGL>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::GraphicsContextGLIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::GraphicsContextGLIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<IPC::ScopedActiveMessageReceiveQueue<WebKit::RemoteGraphicsContextGL,WTF::RefPtr<WebKit::RemoteGraphicsContextGL,WTF::RawPtrTraits<WebKit::RemoteGraphicsContextGL>,WTF::DefaultRefDerefTraits<WebKit::RemoteGraphicsContextGL>>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::GraphicsContextGLIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::deallocateTable(v24, v15);
    }

    v25 = *(this + 28);
    if (v25)
    {
      WTF::HashTable<WTF::ObjectIdentifierGeneric<WebKit::RenderingBackendIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::RenderingBackendIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,IPC::ScopedActiveMessageReceiveQueue<WebKit::RemoteRenderingBackend,WTF::RefPtr<WebKit::RemoteRenderingBackend,WTF::RawPtrTraits<WebKit::RemoteRenderingBackend>,WTF::DefaultRefDerefTraits<WebKit::RemoteRenderingBackend>>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::RenderingBackendIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,IPC::ScopedActiveMessageReceiveQueue<WebKit::RemoteRenderingBackend,WTF::RefPtr<WebKit::RemoteRenderingBackend,WTF::RawPtrTraits<WebKit::RemoteRenderingBackend>,WTF::DefaultRefDerefTraits<WebKit::RemoteRenderingBackend>>>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::RenderingBackendIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::RenderingBackendIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,IPC::ScopedActiveMessageReceiveQueue<WebKit::RemoteRenderingBackend,WTF::RefPtr<WebKit::RemoteRenderingBackend,WTF::RawPtrTraits<WebKit::RemoteRenderingBackend>,WTF::DefaultRefDerefTraits<WebKit::RemoteRenderingBackend>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::RenderingBackendIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::RenderingBackendIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<IPC::ScopedActiveMessageReceiveQueue<WebKit::RemoteRenderingBackend,WTF::RefPtr<WebKit::RemoteRenderingBackend,WTF::RawPtrTraits<WebKit::RemoteRenderingBackend>,WTF::DefaultRefDerefTraits<WebKit::RemoteRenderingBackend>>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::RenderingBackendIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::deallocateTable(v25, v15);
    }

    v26 = *(this + 27);
    *(this + 27) = 0;
    if (v26 && atomic_fetch_add_explicit(v26, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v26, v15);
    }

    v27 = *(this + 26);
    if (v27)
    {
      WTF::fastFree((v27 - 16), v15);
    }

    IPC::ScopedActiveMessageReceiveQueue<WebKit::LibWebRTCCodecsProxy,WTF::RefPtr<WebKit::LibWebRTCCodecsProxy,WTF::RawPtrTraits<WebKit::LibWebRTCCodecsProxy>,WTF::DefaultRefDerefTraits<WebKit::LibWebRTCCodecsProxy>>>::~ScopedActiveMessageReceiveQueue(this + 25);
    v29 = *(this + 24);
    if (v29)
    {
      *(this + 24) = 0;
      WebKit::RemoteVideoFrameObjectHeap::close(v29);
      WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::WorkQueueMessageReceiver<(WTF::DestructionThread)0>,(WTF::DestructionThread)0>::deref((v29 + 8), v30);
      v31 = *(this + 24);
      *(this + 24) = 0;
      if (v31)
      {
        WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::WorkQueueMessageReceiver<(WTF::DestructionThread)0>,(WTF::DestructionThread)0>::deref((v31 + 8), v28);
      }
    }

    v32 = *(this + 22);
    *(this + 22) = 0;
    if (v32)
    {
      WTF::ThreadSafeRefCounted<WebCore::SecurityOrigin,(WTF::DestructionThread)0>::deref(v32, v28);
    }

    v33 = *(this + 21);
    *(this + 21) = 0;
    if (v33)
    {
      WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::WorkQueueMessageReceiver<(WTF::DestructionThread)0>,(WTF::DestructionThread)0>::deref((v33 + 8), v28);
    }

    v34 = *(this + 19);
    *(this + 19) = 0;
    if (v34)
    {
      (*(*v34 + 24))(v34);
    }

    v35 = *(this + 18);
    *(this + 18) = 0;
    if (v35)
    {
      if (v35[4] == 1)
      {
        (*(*v35 + 24))(v35);
      }

      else
      {
        --v35[4];
      }
    }

    v36 = *(this + 16);
    *(this + 16) = 0;
    if (v36)
    {
      if (v36[4] == 1)
      {
        (*(*v36 + 24))(v36);
      }

      else
      {
        --v36[4];
      }
    }

    v37 = *(this + 15);
    *(this + 15) = 0;
    if (v37)
    {
      WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::WorkQueueMessageReceiver<(WTF::DestructionThread)0>,(WTF::DestructionThread)0>::deref((v37 + 8), v28);
    }

    v38 = *(this + 14);
    *(this + 14) = 0;
    if (v38)
    {
      WTF::ThreadSafeRefCounted<WebKit::RemoteSharedResourceCache,(WTF::DestructionThread)0>::deref((v38 + 16));
    }

    v39 = *(this + 13);
    *(this + 13) = 0;
    if (v39)
    {
      (*(*v39 + 24))(v39);
    }

    WTF::MachSendRight::~MachSendRight((this + 96));
    v41 = *(this + 10);
    *(this + 10) = 0;
    if (v41 && atomic_fetch_add(v41 + 34, 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, v41 + 34);
      (*(*v41 + 24))(v41);
    }

    IPC::MessageReceiverMap::~MessageReceiverMap((this + 64), v40);
    v43 = *(this + 7);
    *(this + 7) = 0;
    if (v43)
    {
      WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v43);
    }

    v44 = *(this + 6);
    *(this + 6) = 0;
    if (v44 && atomic_fetch_add(v44 + 2, 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, v44 + 2);
      (*(*v44 + 8))(v44);
    }

    *(this + 3) = &unk_1F10EA5E0;
    WTF::WeakPtrFactory<WebPushD::PushServiceConnection,WTF::DefaultWeakPtrImpl>::~WeakPtrFactory(this + 4, v42);
    v46 = *(this + 1);
    if (v46)
    {
      *(v46 + 8) = 0;
      v47 = *(this + 1);
      *(this + 1) = 0;
      if (v47)
      {
        if (atomic_fetch_add(v47, 0xFFFFFFFF) == 1)
        {
          atomic_store(1u, v47);
          WTF::fastFree(v47, v45);
        }
      }
    }
  }

  else
  {
    __break(0xC471u);
  }
}

void non-virtual thunk toWebKit::GPUConnectionToWebProcess::~GPUConnectionToWebProcess(WebKit::GPUConnectionToWebProcess *this)
{
  WebKit::GPUConnectionToWebProcess::~GPUConnectionToWebProcess((this - 24));
}

{
  WebKit::GPUConnectionToWebProcess::operator delete((this - 24));
}

double WebKit::GPUConnectionToWebProcess::operator delete(WebKit::GPUConnectionToWebProcess *a1)
{
  WebKit::GPUConnectionToWebProcess::~GPUConnectionToWebProcess(a1);
  if (atomic_load((v1 + 40)))
  {
    *(v1 + 352) = 0;
    result = 0.0;
    *(v1 + 320) = 0u;
    *(v1 + 336) = 0u;
    *(v1 + 288) = 0u;
    *(v1 + 304) = 0u;
    *(v1 + 256) = 0u;
    *(v1 + 272) = 0u;
    *(v1 + 224) = 0u;
    *(v1 + 240) = 0u;
    *(v1 + 192) = 0u;
    *(v1 + 208) = 0u;
    *(v1 + 160) = 0u;
    *(v1 + 176) = 0u;
    *(v1 + 128) = 0u;
    *(v1 + 144) = 0u;
    *(v1 + 96) = 0u;
    *(v1 + 112) = 0u;
    *(v1 + 64) = 0u;
    *(v1 + 80) = 0u;
    *(v1 + 32) = 0u;
    *(v1 + 48) = 0u;
    *v1 = 0u;
    *(v1 + 16) = 0u;
  }

  else
  {

    WTF::fastFree(v1, v2);
  }

  return result;
}

WebKit::RemoteSharedResourceCache *WebKit::GPUConnectionToWebProcess::sharedResourceCache@<X0>(WebKit::GPUConnectionToWebProcess *this@<X0>, void *a2@<X1>, WebKit::RemoteSharedResourceCache **a3@<X8>)
{
  result = *(this + 14);
  if (!result)
  {
    v6 = WebKit::RemoteSharedResourceCache::operator new(0x50, a2);
    result = WebKit::RemoteSharedResourceCache::RemoteSharedResourceCache(v6, this);
    v7 = *(this + 14);
    *(this + 14) = result;
    if (v7)
    {
      WTF::ThreadSafeRefCounted<WebKit::RemoteSharedResourceCache,(WTF::DestructionThread)0>::deref((v7 + 16));
      result = *(this + 14);
    }
  }

  atomic_fetch_add(result + 4, 1u);
  *a3 = result;
  return result;
}

void WebKit::GPUConnectionToWebProcess::didClose(WebKit::GPUConnectionToWebProcess *this, IPC::Connection *a2)
{
  v52 = *MEMORY[0x1E69E9840];
  v3 = *(this + 32);
  if (v3)
  {
    ++*(v3 + 16);
    v4 = WebKit::GPUProcess::audioSessionManager(*(this + 10), a2);
    ++*(v4 + 4);
    WTF::WeakHashSet<WebKit::RemoteAudioSessionProxy,WTF::DefaultWeakPtrImpl,(WTF::EnableWeakPtrThreadingAssertions)1>::remove<WebKit::RemoteAudioSessionProxy>(v4 + 48, v3);
    WebKit::RemoteAudioSessionProxyManager::updateCategory(v4);
    if (*(v4 + 4) == 1)
    {
      (*(*v4 + 8))(v4);
    }

    else
    {
      --*(v4 + 4);
    }

    v5 = *(this + 32);
    *(this + 32) = 0;
    if (v5)
    {
      if (v5[4] == 1)
      {
        (*(*v5 + 24))(v5);
      }

      else
      {
        --v5[4];
      }
    }

    if (*(v3 + 16) == 1)
    {
      (*(*v3 + 24))(v3);
    }

    else
    {
      --*(v3 + 16);
    }
  }

  v6 = *(this + 18);
  *(this + 18) = 0;
  if (v6)
  {
    WebKit::UserMediaCaptureManagerProxy::close(v6, a2);
    if (v6[4] == 1)
    {
      (*(*v6 + 24))(v6);
    }

    else
    {
      --v6[4];
    }
  }

  v7 = *(this + 24);
  v8 = (v7 + 8);
  while (1)
  {
    v9 = *v8;
    if ((*v8 & 1) == 0)
    {
      break;
    }

    v10 = *v8;
    atomic_compare_exchange_strong_explicit(v8, &v10, v9 + 2, memory_order_relaxed, memory_order_relaxed);
    if (v10 == v9)
    {
      goto LABEL_17;
    }
  }

  WTF::ThreadSafeWeakPtrControlBlock::strongRef(*v8);
LABEL_17:
  WebKit::RemoteVideoFrameObjectHeap::close(v7);
  WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::WorkQueueMessageReceiver<(WTF::DestructionThread)0>,(WTF::DestructionThread)0>::deref((v7 + 8), v11);
  v12 = *(this + 16);
  ++*(v12 + 4);
  WebKit::RemoteMediaPlayerManagerProxy::clear(v12, v13);
  if (*(v12 + 4) == 1)
  {
    (*(*v12 + 24))(v12);
  }

  else
  {
    --*(v12 + 4);
  }

  v15 = *(this + 28);
  if (v15)
  {
    *(this + 28) = 0;
    WTF::HashTable<WTF::ObjectIdentifierGeneric<WebKit::RenderingBackendIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::RenderingBackendIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,IPC::ScopedActiveMessageReceiveQueue<WebKit::RemoteRenderingBackend,WTF::RefPtr<WebKit::RemoteRenderingBackend,WTF::RawPtrTraits<WebKit::RemoteRenderingBackend>,WTF::DefaultRefDerefTraits<WebKit::RemoteRenderingBackend>>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::RenderingBackendIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,IPC::ScopedActiveMessageReceiveQueue<WebKit::RemoteRenderingBackend,WTF::RefPtr<WebKit::RemoteRenderingBackend,WTF::RawPtrTraits<WebKit::RemoteRenderingBackend>,WTF::DefaultRefDerefTraits<WebKit::RemoteRenderingBackend>>>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::RenderingBackendIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::RenderingBackendIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,IPC::ScopedActiveMessageReceiveQueue<WebKit::RemoteRenderingBackend,WTF::RefPtr<WebKit::RemoteRenderingBackend,WTF::RawPtrTraits<WebKit::RemoteRenderingBackend>,WTF::DefaultRefDerefTraits<WebKit::RemoteRenderingBackend>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::RenderingBackendIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::RenderingBackendIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<IPC::ScopedActiveMessageReceiveQueue<WebKit::RemoteRenderingBackend,WTF::RefPtr<WebKit::RemoteRenderingBackend,WTF::RawPtrTraits<WebKit::RemoteRenderingBackend>,WTF::DefaultRefDerefTraits<WebKit::RemoteRenderingBackend>>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::RenderingBackendIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::deallocateTable(v15, v14);
  }

  v16 = *(this + 29);
  if (v16)
  {
    *(this + 29) = 0;
    WTF::HashTable<WTF::ObjectIdentifierGeneric<WebKit::GraphicsContextGLIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::GraphicsContextGLIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,IPC::ScopedActiveMessageReceiveQueue<WebKit::RemoteGraphicsContextGL,WTF::RefPtr<WebKit::RemoteGraphicsContextGL,WTF::RawPtrTraits<WebKit::RemoteGraphicsContextGL>,WTF::DefaultRefDerefTraits<WebKit::RemoteGraphicsContextGL>>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::GraphicsContextGLIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,IPC::ScopedActiveMessageReceiveQueue<WebKit::RemoteGraphicsContextGL,WTF::RefPtr<WebKit::RemoteGraphicsContextGL,WTF::RawPtrTraits<WebKit::RemoteGraphicsContextGL>,WTF::DefaultRefDerefTraits<WebKit::RemoteGraphicsContextGL>>>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::GraphicsContextGLIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::GraphicsContextGLIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,IPC::ScopedActiveMessageReceiveQueue<WebKit::RemoteGraphicsContextGL,WTF::RefPtr<WebKit::RemoteGraphicsContextGL,WTF::RawPtrTraits<WebKit::RemoteGraphicsContextGL>,WTF::DefaultRefDerefTraits<WebKit::RemoteGraphicsContextGL>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::GraphicsContextGLIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::GraphicsContextGLIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<IPC::ScopedActiveMessageReceiveQueue<WebKit::RemoteGraphicsContextGL,WTF::RefPtr<WebKit::RemoteGraphicsContextGL,WTF::RawPtrTraits<WebKit::RemoteGraphicsContextGL>,WTF::DefaultRefDerefTraits<WebKit::RemoteGraphicsContextGL>>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::GraphicsContextGLIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::deallocateTable(v16, v14);
  }

  *v49 = 0;
  v17 = (this + 200);
  if (this + 200 != v49)
  {
    if (*v17)
    {
      IPC::ScopedActiveMessageReceiveQueue<WebKit::LibWebRTCCodecsProxy,WTF::RefPtr<WebKit::LibWebRTCCodecsProxy,WTF::RawPtrTraits<WebKit::LibWebRTCCodecsProxy>,WTF::DefaultRefDerefTraits<WebKit::LibWebRTCCodecsProxy>>>::stopListeningForIPCAndRelease<WTF::RefPtr<WebKit::LibWebRTCCodecsProxy,WTF::RawPtrTraits<WebKit::LibWebRTCCodecsProxy>,WTF::DefaultRefDerefTraits<WebKit::LibWebRTCCodecsProxy>>>(this + 25);
      v19 = *v17;
      v20 = *v49;
      *v49 = 0;
      *v17 = v20;
      if (v19)
      {
        WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::WorkQueueMessageReceiver<(WTF::DestructionThread)0>,(WTF::DestructionThread)0>::deref((v19 + 8), v18);
      }
    }
  }

  IPC::ScopedActiveMessageReceiveQueue<WebKit::LibWebRTCCodecsProxy,WTF::RefPtr<WebKit::LibWebRTCCodecsProxy,WTF::RawPtrTraits<WebKit::LibWebRTCCodecsProxy>,WTF::DefaultRefDerefTraits<WebKit::LibWebRTCCodecsProxy>>>::~ScopedActiveMessageReceiveQueue(v49);
  v22 = *(this + 31);
  if (v22)
  {
    v23 = (v22 + 16);
    ++*(v22 + 16);
    v24 = *(v22 + 48);
    if (v24)
    {
      *(v22 + 48) = 0;
      WTF::HashTable<WTF::ObjectIdentifierGeneric<WebKit::RemoteCDMIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::RemoteCDMIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::RefPtr<WebKit::RemoteCDMProxy,WTF::RawPtrTraits<WebKit::RemoteCDMProxy>,WTF::DefaultRefDerefTraits<WebKit::RemoteCDMProxy>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::RemoteCDMIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::RefPtr<WebKit::RemoteCDMProxy,WTF::RawPtrTraits<WebKit::RemoteCDMProxy>,WTF::DefaultRefDerefTraits<WebKit::RemoteCDMProxy>>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::RemoteCDMIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::RemoteCDMIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::RefPtr<WebKit::RemoteCDMProxy,WTF::RawPtrTraits<WebKit::RemoteCDMProxy>,WTF::DefaultRefDerefTraits<WebKit::RemoteCDMProxy>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::RemoteCDMIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::RemoteCDMIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::RefPtr<WebKit::RemoteCDMProxy,WTF::RawPtrTraits<WebKit::RemoteCDMProxy>,WTF::DefaultRefDerefTraits<WebKit::RemoteCDMProxy>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::RemoteCDMIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::deallocateTable(v24, v21);
    }

    WTF::RefCounted<WebKit::RemoteCDMFactoryProxy>::deref(v23, v21);
  }

  v25 = *(this + 15);
  if (v25)
  {
    v26 = v25 + 1;
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
        goto LABEL_37;
      }
    }

    WTF::ThreadSafeWeakPtrControlBlock::strongRef(*v26);
LABEL_37:
    WebKit::RemoteMediaResourceManager::initializeConnection(v25, 0);
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::WorkQueueMessageReceiver<(WTF::DestructionThread)0>,(WTF::DestructionThread)0>::deref(v25 + 1, v29);
  }

  v30 = *(this + 10);
  atomic_fetch_add((v30 + 136), 1u);
  v31 = qword_1ED6416A0;
  if (os_log_type_enabled(qword_1ED6416A0, OS_LOG_TYPE_DEFAULT))
  {
    v32 = *(this + 11);
    *v49 = 134218240;
    *&v49[4] = v30;
    v50 = 2048;
    v51 = v32;
    _os_log_impl(&dword_19D52D000, v31, OS_LOG_TYPE_DEFAULT, "%p - GPUProcess::removeGPUConnectionToWebProcess: processIdentifier=%llu", v49, 0x16u);
  }

  v34 = (v30 + 144);
  v33 = *(v30 + 144);
  if (v33)
  {
    v35 = *(this + 11);
    if (v35 == -1 || !v35)
    {
      __break(0xC471u);
      JUMPOUT(0x19DB40004);
    }

    v36 = *(v33 - 8);
    v37 = (v35 + ~(v35 << 32)) ^ ((v35 + ~(v35 << 32)) >> 22);
    v38 = 9 * ((v37 + ~(v37 << 13)) ^ ((v37 + ~(v37 << 13)) >> 8));
    v39 = (v38 ^ (v38 >> 15)) + ~((v38 ^ (v38 >> 15)) << 27);
    v40 = v36 & ((v39 >> 31) ^ v39);
    v41 = *(v33 + 16 * v40);
    if (v41 != v35)
    {
      v42 = 1;
      while (v41)
      {
        v40 = (v40 + v42) & v36;
        v41 = *(v33 + 16 * v40);
        ++v42;
        if (v41 == v35)
        {
          goto LABEL_49;
        }
      }

      v40 = *(v33 - 4);
    }

LABEL_49:
    if (v40 == *(v33 - 4))
    {
      WebKit::GPUProcess::tryExitIfUnusedAndUnderMemoryPressure(v30);
      if (!v30)
      {
        return;
      }

      goto LABEL_61;
    }

    v43 = (v33 + 16 * v40);
    v44 = v43[1];
    *v43 = -1;
    v43[1] = 0;
    if (v44)
    {
      WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::GPUConnectionToWebProcess,(WTF::DestructionThread)1>::deref((v44 + 16));
    }

    v45 = *v34;
    v46 = vadd_s32(*(*v34 - 16), 0xFFFFFFFF00000001);
    *(v45 - 16) = v46;
    v47 = *(v45 - 4);
    if (6 * v46.i32[1] < v47 && v47 >= 9)
    {
      WTF::HashTable<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::GPUConnectionToWebProcess,WTF::RawPtrTraits<WebKit::GPUConnectionToWebProcess>,WTF::DefaultRefDerefTraits<WebKit::GPUConnectionToWebProcess>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::GPUConnectionToWebProcess,WTF::RawPtrTraits<WebKit::GPUConnectionToWebProcess>,WTF::DefaultRefDerefTraits<WebKit::GPUConnectionToWebProcess>>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::GPUConnectionToWebProcess,WTF::RawPtrTraits<WebKit::GPUConnectionToWebProcess>,WTF::DefaultRefDerefTraits<WebKit::GPUConnectionToWebProcess>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::Ref<WebKit::GPUConnectionToWebProcess,WTF::RawPtrTraits<WebKit::GPUConnectionToWebProcess>,WTF::DefaultRefDerefTraits<WebKit::GPUConnectionToWebProcess>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::rehash((v30 + 144), v47 >> 1, 0);
    }
  }

  WebKit::GPUProcess::tryExitIfUnusedAndUnderMemoryPressure(v30);
LABEL_61:
  if (atomic_fetch_add((v30 + 136), 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, (v30 + 136));
    (*(*v30 + 24))(v30);
  }
}

id **WebKit::GPUConnectionToWebProcess::createVisibilityPropagationContextForPage(uint64_t a1, void *a2, uint64_t a3, char a4)
{
  v17 = *MEMORY[0x1E69E9840];
  v13 = a3;
  v14 = a2;
  buf[0] = a4;
  buf[1] = 0;
  WebKit::LayerHostingContext::create(buf, a2, &v12);
  v7 = qword_1ED6416A0;
  if (os_log_type_enabled(qword_1ED6416A0, OS_LOG_TYPE_DEFAULT))
  {
    v8 = WebKit::LayerHostingContext::contextID(v12);
    *buf = 134218496;
    *&buf[4] = a2;
    *&buf[12] = 2048;
    *&buf[14] = a3;
    *&buf[22] = 1024;
    v16 = v8;
    _os_log_impl(&dword_19D52D000, v7, OS_LOG_TYPE_DEFAULT, "GPUConnectionToWebProcess::createVisibilityPropagationContextForPage: pageProxyID=%llu, webPageID=%llu, contextID=%u", buf, 0x1Cu);
  }

  v9 = *(a1 + 80);
  LODWORD(v11[0]) = WebKit::LayerHostingContext::contextID(v12);
  *buf = &v14;
  *&buf[8] = &v13;
  *&buf[16] = v11;
  IPC::MessageSender::send<Messages::GPUProcessProxy::DidCreateContextForVisibilityPropagation>(v9 + 24, buf);
  v11[0] = v14;
  v11[1] = v13;
  WTF::HashMap<std::pair<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,std::unique_ptr<WebKit::LayerHostingContext>,WTF::DefaultHash<std::pair<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashTraits<std::pair<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashTraits<std::unique_ptr<WebKit::LayerHostingContext>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::add<std::unique_ptr<WebKit::LayerHostingContext>>(buf, (a1 + 296), v11, &v12);
  return std::unique_ptr<WebKit::LayerHostingContext>::~unique_ptr[abi:sn200100](&v12);
}

IPC::Encoder *IPC::MessageSender::send<Messages::GPUProcessProxy::DidCreateContextForVisibilityPropagation>(uint64_t a1, void *a2)
{
  v4 = (*(*a1 + 56))(a1);

  return IPC::MessageSender::send<Messages::GPUProcessProxy::DidCreateContextForVisibilityPropagation>(a1, a2, v4);
}

unint64_t WTF::HashMap<std::pair<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,std::unique_ptr<WebKit::LayerHostingContext>,WTF::DefaultHash<std::pair<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashTraits<std::pair<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashTraits<std::unique_ptr<WebKit::LayerHostingContext>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::add<std::unique_ptr<WebKit::LayerHostingContext>>(uint64_t a1, uint64_t *a2, uint64_t *a3, id **a4)
{
  v24 = a4;
  WTF::checkHashTableKey<std::pair<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::KeyValuePair<std::pair<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,std::unique_ptr<WebKit::LayerHostingContext>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<std::pair<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,std::unique_ptr<WebKit::LayerHostingContext>>>,WTF::DefaultHash<std::pair<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashMap<std::pair<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,std::unique_ptr<WebKit::LayerHostingContext>,WTF::DefaultHash<std::pair<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashTraits<std::pair<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashTraits<std::unique_ptr<WebKit::LayerHostingContext>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<std::pair<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashMapTranslator<WTF::HashMap<std::pair<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,std::unique_ptr<WebKit::LayerHostingContext>,WTF::DefaultHash<std::pair<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashTraits<std::pair<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashTraits<std::unique_ptr<WebKit::LayerHostingContext>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<std::pair<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>>,(WTF::ShouldValidateKey)1,std::pair<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>( *a3,  a3[1]);
  v7 = *a2;
  if (*a2 || (WTF::HashTable<std::pair<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::KeyValuePair<std::pair<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,std::unique_ptr<WebKit::LayerHostingContext>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<std::pair<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,std::unique_ptr<WebKit::LayerHostingContext>>>,WTF::DefaultHash<std::pair<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashMap<std::pair<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,std::unique_ptr<WebKit::LayerHostingContext>,WTF::DefaultHash<std::pair<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashTraits<std::pair<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashTraits<std::unique_ptr<WebKit::LayerHostingContext>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<std::pair<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::FastMalloc>::expand(a2, 0), (v7 = *a2) != 0))
  {
    v8 = *(v7 - 8);
  }

  else
  {
    v8 = 0;
  }

  result = WTF::PairHash<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>::hash(a3);
  v10 = result & v8;
  v11 = (v7 + 24 * (result & v8));
  v12 = *v11;
  v13 = v11[1];
  if (*v11 != 0)
  {
    v20 = 0;
    v21 = 1;
    do
    {
      if (v12 == *a3 && v13 == a3[1])
      {
        v22 = *a2;
        if (*a2)
        {
          v23 = *(v22 - 4);
        }

        else
        {
          v23 = 0;
        }

        v19 = 0;
        v18 = v22 + 24 * v23;
        goto LABEL_10;
      }

      if (v12 == -1)
      {
        v20 = v11;
      }

      v10 = (v10 + v21) & v8;
      v11 = (v7 + 24 * v10);
      v12 = *v11;
      v13 = v11[1];
      ++v21;
    }

    while (*v11 != 0);
    if (v20)
    {
      *v20 = 0;
      v20[1] = 0;
      v20[2] = 0;
      --*(*a2 - 16);
      v11 = v20;
    }
  }

  result = WTF::HashMapTranslator<WTF::HashMap<std::pair<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,std::unique_ptr<WebKit::LayerHostingContext>,WTF::DefaultHash<std::pair<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashTraits<std::pair<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashTraits<std::unique_ptr<WebKit::LayerHostingContext>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<std::pair<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>>::translate<std::pair<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::KeyValuePair<std::pair<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,std::unique_ptr<WebKit::LayerHostingContext>>,WTF::HashTableAddResult<WTF::HashTableIterator<WTF::HashTable<std::pair<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::KeyValuePair<std::pair<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,std::unique_ptr<WebKit::LayerHostingContext>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<std::pair<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,std::unique_ptr<WebKit::LayerHostingContext>>>,WTF::DefaultHash<std::pair<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashMap<std::pair<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,std::unique_ptr<WebKit::LayerHostingContext>,WTF::DefaultHash<std::pair<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashTraits<std::pair<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashTraits<std::unique_ptr<WebKit::LayerHostingContext>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<std::pair<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::FastMalloc>,std::pair<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::KeyValuePair<std::pair<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,std::unique_ptr<WebKit::LayerHostingContext>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<std::pair<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,std::unique_ptr<WebKit::LayerHostingContext>>>,WTF::DefaultHash<std::pair<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashMap<std::pair<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,std::unique_ptr<WebKit::LayerHostingContext>,WTF::DefaultHash<std::pair<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashTraits<std::pair<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashTraits<std::unique_ptr<WebKit::LayerHostingContext>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<std::pair<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>>> WTF::HashMap<std::pair<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,std::unique_ptr<WebKit::LayerHostingContext>,WTF::DefaultHash<std::pair<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashTraits<std::pair<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashTraits<std::unique_ptr<WebKit::LayerHostingContext>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::inlineAdd<std::pair<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,std::unique_ptr<WebKit::LayerHostingContext>>(std::pair<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>> &&,std::unique_ptr<WebKit::LayerHostingContext> &&)::{lambda(void)#1}>( v11,  a3,  &v24);
  v14 = *a2;
  if (*a2)
  {
    v15 = *(v14 - 12) + 1;
  }

  else
  {
    v15 = 1;
  }

  *(v14 - 12) = v15;
  v16 = (*(v14 - 16) + v15);
  v17 = *(v14 - 4);
  if (v17 > 0x400)
  {
    if (v17 > 2 * v16)
    {
      goto LABEL_9;
    }

LABEL_21:
    result = WTF::HashTable<std::pair<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::KeyValuePair<std::pair<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,std::unique_ptr<WebKit::LayerHostingContext>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<std::pair<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,std::unique_ptr<WebKit::LayerHostingContext>>>,WTF::DefaultHash<std::pair<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashMap<std::pair<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,std::unique_ptr<WebKit::LayerHostingContext>,WTF::DefaultHash<std::pair<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashTraits<std::pair<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashTraits<std::unique_ptr<WebKit::LayerHostingContext>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<std::pair<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::FastMalloc>::expand(a2, v11);
    v11 = result;
    v14 = *a2;
    if (*a2)
    {
      LODWORD(v17) = *(v14 - 4);
    }

    else
    {
      LODWORD(v17) = 0;
    }

    goto LABEL_9;
  }

  if (3 * v17 <= 4 * v16)
  {
    goto LABEL_21;
  }

LABEL_9:
  v18 = v14 + 24 * v17;
  v19 = 1;
LABEL_10:
  *a1 = v11;
  *(a1 + 8) = v18;
  *(a1 + 16) = v19;
  return result;
}

uint64_t *WebKit::GPUConnectionToWebProcess::destroyVisibilityPropagationContextForPage(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v10 = *MEMORY[0x1E69E9840];
  v6 = qword_1ED6416A0;
  if (os_log_type_enabled(qword_1ED6416A0, OS_LOG_TYPE_DEFAULT))
  {
    *v9 = 134218240;
    *&v9[4] = a2;
    *&v9[12] = 2048;
    *&v9[14] = a3;
    _os_log_impl(&dword_19D52D000, v6, OS_LOG_TYPE_DEFAULT, "GPUConnectionToWebProcess::destroyVisibilityPropagationContextForPage: pageProxyID=%llu, webPageID=%llu", v9, 0x16u);
  }

  *v9 = a2;
  *&v9[8] = a3;
  v7 = WTF::HashTable<std::pair<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::KeyValuePair<std::pair<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,std::unique_ptr<WebKit::LayerHostingContext>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<std::pair<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,std::unique_ptr<WebKit::LayerHostingContext>>>,WTF::DefaultHash<std::pair<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashMap<std::pair<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,std::unique_ptr<WebKit::LayerHostingContext>,WTF::DefaultHash<std::pair<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashTraits<std::pair<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashTraits<std::unique_ptr<WebKit::LayerHostingContext>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<std::pair<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::FastMalloc>::find<WTF::IdentityHashTranslator<WTF::HashMap<std::pair<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,std::unique_ptr<WebKit::LayerHostingContext>,WTF::DefaultHash<std::pair<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashTraits<std::pair<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashTraits<std::unique_ptr<WebKit::LayerHostingContext>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<std::pair<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>>,(WTF::ShouldValidateKey)1,std::pair<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>( (a1 + 296),  v9);
  return WTF::HashMap<std::pair<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,std::unique_ptr<WebKit::LayerHostingContext>,WTF::DefaultHash<std::pair<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashTraits<std::pair<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashTraits<std::unique_ptr<WebKit::LayerHostingContext>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::remove((a1 + 296), v7);
}

_BYTE *WebKit::GPUConnectionToWebProcess::configureLoggingChannel(int a1, WebCore *this, char a3, char a4)
{
  LogChannel = WebCore::getLogChannel(this, this);
  if (LogChannel)
  {
    *LogChannel = a3;
    LogChannel[16] = a4;
  }

  result = WebCore::getLogChannel(this, v8);
  if (result)
  {
    *result = a3;
    result[16] = a4;
  }

  return result;
}

uint64_t WebKit::GPUConnectionToWebProcess::logger(WebKit::GPUConnectionToWebProcess *this)
{
  result = *(this + 6);
  if (!result)
  {
    v3 = WTF::fastMalloc(0x18);
    *(v3 + 8) = 1;
    *v3 = &unk_1F10FAF48;
    *(v3 + 12) = 1;
    *(v3 + 16) = this;
    v4 = *(this + 6);
    *(this + 6) = v3;
    if (v4 && atomic_fetch_add(v4 + 2, 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, v4 + 2);
      (*(*v4 + 8))(v4);
    }

    result = *(this + 6);
    if (*(this + 17) <= -2)
    {
      v5 = (*(this + 345) >> 5) & 1;
    }

    else
    {
      LOBYTE(v5) = 1;
    }

    if (*(result + 16) == this)
    {
      *(result + 12) = v5;
    }
  }

  return result;
}

IPC::Encoder *WebKit::GPUConnectionToWebProcess::didReceiveInvalidMessage(WebKit::GPUConnectionToWebProcess *a1, uint64_t a2, unsigned int a3)
{
  v14 = *MEMORY[0x1E69E9840];
  v5 = qword_1ED6416C8;
  if (os_log_type_enabled(qword_1ED6416C8, OS_LOG_TYPE_FAULT))
  {
    if (a3 >= 0x107F)
    {
      v7 = 4223;
    }

    else
    {
      v7 = a3;
    }

    v8 = (&IPC::Detail::messageDescriptions)[3 * v7];
    v9 = *(a1 + 11);
    v10 = 136446466;
    v11 = v8;
    v12 = 2048;
    v13 = v9;
    _os_log_fault_impl(&dword_19D52D000, v5, OS_LOG_TYPE_FAULT, "Received an invalid message '%{public}s' from WebContent process %llu, requesting for it to be terminated.", &v10, 0x16u);
  }

  return WebKit::GPUConnectionToWebProcess::terminateWebProcess(a1);
}

IPC::Encoder *WebKit::GPUConnectionToWebProcess::terminateWebProcess(WebKit::GPUConnectionToWebProcess *this)
{
  v2 = *(*(this + 10) + 40);
  if (v2)
  {
    while (1)
    {
      v3 = *v2;
      if ((*v2 & 1) == 0)
      {
        break;
      }

      v4 = *v2;
      atomic_compare_exchange_strong_explicit(v2, &v4, v3 + 2, memory_order_relaxed, memory_order_relaxed);
      if (v4 == v3)
      {
        goto LABEL_6;
      }
    }

    WTF::ThreadSafeWeakPtrControlBlock::strongRef(*v2);
LABEL_6:
    v6 = (this + 88);
    IPC::Connection::send<Messages::GPUProcessProxy::TerminateWebProcess>(v2, &v6);

    return WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v2);
  }

  else
  {
    v6 = (this + 88);
    return IPC::Connection::send<Messages::GPUProcessProxy::TerminateWebProcess>(0, &v6);
  }
}

IPC::Encoder *IPC::Connection::send<Messages::GPUProcessProxy::TerminateWebProcess>(uint64_t *a1, void **a2)
{
  v4 = IPC::Encoder::operator new(0x238, a2);
  *v4 = 68;
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

uint64_t WebKit::GPUConnectionToWebProcess::remoteMediaResourceManager(WebKit::GPUConnectionToWebProcess *this, void *a2)
{
  v2 = *(this + 15);
  if (!v2)
  {
    v2 = WebKit::RemoteMediaResourceManager::operator new(0x28, a2);
    *v2 = &unk_1F10FD6A8;
    *(v2 + 8) = 3;
    *(v2 + 16) = 0;
    *(v2 + 24) = 0;
    *(v2 + 32) = 0;
    WebKit::RemoteMediaResourceManager::initializeConnection(v2, *(this + 7));
    v5 = *(this + 15);
    *(this + 15) = v2;
    if (v5)
    {
      WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::WorkQueueMessageReceiver<(WTF::DestructionThread)0>,(WTF::DestructionThread)0>::deref((v5 + 8), v4);
      return *(this + 15);
    }
  }

  return v2;
}

uint64_t WebKit::GPUConnectionToWebProcess::userMediaCaptureManagerProxy(WebKit::GPUConnectionToWebProcess *this)
{
  result = *(this + 18);
  if (!result)
  {
    WTF::makeUniqueRefWithoutFastMallocCheck<WebKit::GPUProxyForCapture,WebKit::GPUConnectionToWebProcess &>(&v5, this);
    v6 = v5;
    WebKit::UserMediaCaptureManagerProxy::create(&v6, v3, &v7);
    if (*(this + 18))
    {
      result = 272;
      __break(0xC471u);
    }

    else
    {
      v4 = v6;
      result = v7;
      *(this + 18) = v7;
      v6 = 0;
      v7 = 0;
      if (v4)
      {
        (*(*v4 + 8))(v4);
        return *(this + 18);
      }
    }
  }

  return result;
}

WebKit::RemoteCDMFactoryProxy *WebKit::GPUConnectionToWebProcess::cdmFactoryProxy(WebKit::GPUConnectionToWebProcess *this, void *a2)
{
  result = *(this + 31);
  if (!result)
  {
    v4 = WebKit::RemoteCDMFactoryProxy::operator new(0x50, a2);
    result = WebKit::RemoteCDMFactoryProxy::RemoteCDMFactoryProxy(v4, this);
    v6 = *(this + 31);
    *(this + 31) = result;
    if (v6)
    {
      WTF::RefCounted<WebKit::RemoteCDMFactoryProxy>::deref((v6 + 16), v5);
      return *(this + 31);
    }
  }

  return result;
}

uint64_t WebKit::GPUConnectionToWebProcess::audioSessionProxy(WebKit::GPUConnectionToWebProcess *this, void *a2)
{
  if (!*(this + 32))
  {
    if (WebKit::RemoteAudioSessionProxy::s_heapRef)
    {
      NonCompact = bmalloc::api::tzoneAllocateNonCompact(WebKit::RemoteAudioSessionProxy::s_heapRef, a2);
    }

    else
    {
      NonCompact = WebKit::RemoteAudioSessionProxy::operatorNewSlow(0x50);
    }

    v4 = NonCompact;
    if (WebKit::RemoteAudioSessionProxy::RemoteAudioSessionProxy(NonCompact, this))
    {
      ++v4[4];
    }

    v5 = *(this + 32);
    *(this + 32) = v4;
    if (v5)
    {
      if (v5[4] == 1)
      {
        (*(*v5 + 24))(v5);
      }

      else
      {
        --v5[4];
      }
    }

    v6 = *(*(this + 10) + 40);
    if (v6)
    {
      while (1)
      {
        v7 = *v6;
        if ((*v6 & 1) == 0)
        {
          break;
        }

        v8 = *v6;
        atomic_compare_exchange_strong_explicit(v6, &v8, v7 + 2, memory_order_relaxed, memory_order_relaxed);
        if (v8 == v7)
        {
          goto LABEL_14;
        }
      }

      WTF::ThreadSafeWeakPtrControlBlock::strongRef(*v6);
LABEL_14:
      IPC::Connection::getAuditToken(v6, v12);
      WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v6);
    }

    else
    {
      IPC::Connection::getAuditToken(0, v12);
    }

    v10 = WebKit::GPUProcess::audioSessionManager(*(this + 10), v9);
    ++*(v10 + 4);
    WebKit::RemoteAudioSessionProxyManager::addProxy(v10, v4, v12);
    if (*(v10 + 4) == 1)
    {
      (*(*v10 + 8))(v10);
    }

    else
    {
      --*(v10 + 4);
    }

    if (v4[4] == 1)
    {
      (*(*v4 + 24))(v4);
    }

    else
    {
      --v4[4];
    }
  }

  return *(this + 32);
}

uint64_t WebKit::GPUConnectionToWebProcess::presentingApplicationPID(uint64_t a1, uint64_t a2)
{
  WebKit::GPUConnectionToWebProcess::presentingApplicationAuditToken(a1, a2, v4);
  if (v4[32] == 1)
  {
    return WTF::pidFromAuditToken(v4, v2);
  }

  else
  {
    return 0;
  }
}

uint64_t WebKit::GPUConnectionToWebProcess::imageDecoderAVFProxy(WebKit::GPUConnectionToWebProcess *this, void *a2)
{
  result = *(this + 35);
  if (!result)
  {
    if (WebKit::RemoteImageDecoderAVFProxy::s_heapRef)
    {
      NonCompact = bmalloc::api::tzoneAllocateNonCompact(WebKit::RemoteImageDecoderAVFProxy::s_heapRef, a2);
    }

    else
    {
      NonCompact = WebKit::RemoteImageDecoderAVFProxy::operatorNewSlow(0x30);
    }

    result = WebKit::RemoteImageDecoderAVFProxy::RemoteImageDecoderAVFProxy(NonCompact, this);
    if (*(this + 35))
    {
      result = 1469;
      __break(0xC471u);
    }

    else
    {
      *(this + 35) = result;
    }
  }

  return result;
}

void WebKit::GPUConnectionToWebProcess::createRenderingBackend(uint64_t a1, uint64_t a2, WTF::MachSendRight *a3)
{
  v14 = *MEMORY[0x1E69E9840];
  v8 = a2;
  IPC::StreamServerConnection::tryCreate(a3, &v7);
  if (v7)
  {
    *&v9 = a1;
    *(&v9 + 1) = &v8;
    v10 = &v7;
    WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::RenderingBackendIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,IPC::ScopedActiveMessageReceiveQueue<WebKit::RemoteRenderingBackend,WTF::RefPtr<WebKit::RemoteRenderingBackend,WTF::RawPtrTraits<WebKit::RemoteRenderingBackend>,WTF::DefaultRefDerefTraits<WebKit::RemoteRenderingBackend>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::RenderingBackendIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::RenderingBackendIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<IPC::ScopedActiveMessageReceiveQueue<WebKit::RemoteRenderingBackend,WTF::RefPtr<WebKit::RemoteRenderingBackend,WTF::RawPtrTraits<WebKit::RemoteRenderingBackend>,WTF::DefaultRefDerefTraits<WebKit::RemoteRenderingBackend>>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::ensure<WebKit::GPUConnectionToWebProcess::createRenderingBackend(WTF::ObjectIdentifierGeneric<WebKit::RenderingBackendIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,IPC::StreamServerConnectionHandle &&)::$_0>(buf, (a1 + 224), &v8, &v9);
    if ((v13 & 1) == 0)
    {
      IPC::StreamServerConnection::invalidate(v7);
      v6 = qword_1ED6416C8;
      if (os_log_type_enabled(qword_1ED6416C8, OS_LOG_TYPE_FAULT))
      {
        LODWORD(v9) = 136446210;
        *(&v9 + 4) = "void WebKit::GPUConnectionToWebProcess::createRenderingBackend(RenderingBackendIdentifier, IPC::StreamServerConnection::Handle &&)";
        _os_log_fault_impl(&dword_19D52D000, v6, OS_LOG_TYPE_FAULT, "/Library/Caches/com.apple.xbs/Sources/WebKit/Source/WebKit/GPUProcess/GPUConnectionToWebProcess.cpp 733: Invalid message dispatched %{public}s", &v9, 0xCu);
      }

      *(*(a1 + 56) + 94) = 1;
      if (IPC::s_shouldCrashOnMessageCheckFailure == 1)
      {
        __break(0xC471u);
        JUMPOUT(0x19DB40D18);
      }
    }

    v4 = v7;
    v7 = 0;
    if (v4)
    {
      if (atomic_fetch_add(v4 + 2, 0xFFFFFFFF) == 1)
      {
        atomic_store(1u, v4 + 2);
        (*(*v4 + 8))(v4);
      }
    }
  }

  else
  {
    v5 = qword_1ED6416C8;
    if (os_log_type_enabled(qword_1ED6416C8, OS_LOG_TYPE_FAULT))
    {
      *buf = 136446210;
      v12 = "void WebKit::GPUConnectionToWebProcess::createRenderingBackend(RenderingBackendIdentifier, IPC::StreamServerConnection::Handle &&)";
      _os_log_fault_impl(&dword_19D52D000, v5, OS_LOG_TYPE_FAULT, "/Library/Caches/com.apple.xbs/Sources/WebKit/Source/WebKit/GPUProcess/GPUConnectionToWebProcess.cpp 726: Invalid message dispatched %{public}s", buf, 0xCu);
    }

    *(*(a1 + 56) + 94) = 1;
    if (IPC::s_shouldCrashOnMessageCheckFailure == 1)
    {
      __break(0xC471u);
      JUMPOUT(0x19DB40CD4);
    }
  }
}

uint64_t WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::RenderingBackendIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,IPC::ScopedActiveMessageReceiveQueue<WebKit::RemoteRenderingBackend,WTF::RefPtr<WebKit::RemoteRenderingBackend,WTF::RawPtrTraits<WebKit::RemoteRenderingBackend>,WTF::DefaultRefDerefTraits<WebKit::RemoteRenderingBackend>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::RenderingBackendIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::RenderingBackendIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<IPC::ScopedActiveMessageReceiveQueue<WebKit::RemoteRenderingBackend,WTF::RefPtr<WebKit::RemoteRenderingBackend,WTF::RawPtrTraits<WebKit::RemoteRenderingBackend>,WTF::DefaultRefDerefTraits<WebKit::RemoteRenderingBackend>>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::ensure<WebKit::GPUConnectionToWebProcess::createRenderingBackend(WTF::ObjectIdentifierGeneric<WebKit::RenderingBackendIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,IPC::StreamServerConnectionHandle &&)::$_0>(uint64_t a1, uint64_t *a2, uint64_t *a3, atomic_ullong **a4)
{
  WTF::checkHashTableKey<WTF::ObjectIdentifierGeneric<WebKit::RenderingBackendIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::RenderingBackendIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,IPC::ScopedActiveMessageReceiveQueue<WebKit::RemoteRenderingBackend,WTF::RefPtr<WebKit::RemoteRenderingBackend,WTF::RawPtrTraits<WebKit::RemoteRenderingBackend>,WTF::DefaultRefDerefTraits<WebKit::RemoteRenderingBackend>>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::RenderingBackendIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,IPC::ScopedActiveMessageReceiveQueue<WebKit::RemoteRenderingBackend,WTF::RefPtr<WebKit::RemoteRenderingBackend,WTF::RawPtrTraits<WebKit::RemoteRenderingBackend>,WTF::DefaultRefDerefTraits<WebKit::RemoteRenderingBackend>>>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::RenderingBackendIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::RenderingBackendIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,IPC::ScopedActiveMessageReceiveQueue<WebKit::RemoteRenderingBackend,WTF::RefPtr<WebKit::RemoteRenderingBackend,WTF::RawPtrTraits<WebKit::RemoteRenderingBackend>,WTF::DefaultRefDerefTraits<WebKit::RemoteRenderingBackend>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::RenderingBackendIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::RenderingBackendIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<IPC::ScopedActiveMessageReceiveQueue<WebKit::RemoteRenderingBackend,WTF::RefPtr<WebKit::RemoteRenderingBackend,WTF::RawPtrTraits<WebKit::RemoteRenderingBackend>,WTF::DefaultRefDerefTraits<WebKit::RemoteRenderingBackend>>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::RenderingBackendIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMapEnsureTranslator<WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::RenderingBackendIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,IPC::ScopedActiveMessageReceiveQueue<WebKit::RemoteRenderingBackend,WTF::RefPtr<WebKit::RemoteRenderingBackend,WTF::RawPtrTraits<WebKit::RemoteRenderingBackend>,WTF::DefaultRefDerefTraits<WebKit::RemoteRenderingBackend>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::RenderingBackendIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::RenderingBackendIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<IPC::ScopedActiveMessageReceiveQueue<WebKit::RemoteRenderingBackend,WTF::RefPtr<WebKit::RemoteRenderingBackend,WTF::RawPtrTraits<WebKit::RemoteRenderingBackend>,WTF::DefaultRefDerefTraits<WebKit::RemoteRenderingBackend>>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::RenderingBackendIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,(WTF::ShouldValidateKey)1,WTF::ObjectIdentifierGeneric<WebKit::RenderingBackendIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>(*a3);
  v8 = *a2;
  if (*a2 || (WTF::HashTable<WTF::ObjectIdentifierGeneric<WebKit::RenderingBackendIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::RenderingBackendIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,IPC::ScopedActiveMessageReceiveQueue<WebKit::RemoteRenderingBackend,WTF::RefPtr<WebKit::RemoteRenderingBackend,WTF::RawPtrTraits<WebKit::RemoteRenderingBackend>,WTF::DefaultRefDerefTraits<WebKit::RemoteRenderingBackend>>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::RenderingBackendIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,IPC::ScopedActiveMessageReceiveQueue<WebKit::RemoteRenderingBackend,WTF::RefPtr<WebKit::RemoteRenderingBackend,WTF::RawPtrTraits<WebKit::RemoteRenderingBackend>,WTF::DefaultRefDerefTraits<WebKit::RemoteRenderingBackend>>>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::RenderingBackendIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::RenderingBackendIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,IPC::ScopedActiveMessageReceiveQueue<WebKit::RemoteRenderingBackend,WTF::RefPtr<WebKit::RemoteRenderingBackend,WTF::RawPtrTraits<WebKit::RemoteRenderingBackend>,WTF::DefaultRefDerefTraits<WebKit::RemoteRenderingBackend>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::RenderingBackendIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::RenderingBackendIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<IPC::ScopedActiveMessageReceiveQueue<WebKit::RemoteRenderingBackend,WTF::RefPtr<WebKit::RemoteRenderingBackend,WTF::RawPtrTraits<WebKit::RemoteRenderingBackend>,WTF::DefaultRefDerefTraits<WebKit::RemoteRenderingBackend>>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::RenderingBackendIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::expand(a2, 0), (v8 = *a2) != 0))
  {
    v9 = *(v8 - 8);
  }

  else
  {
    v9 = 0;
  }

  result = WTF::ObjectIdentifierGenericBaseHash<unsigned long long>::hash(a3);
  v11 = result & v9;
  v12 = (v8 + 16 * (result & v9));
  v13 = *v12;
  v14 = *a3;
  if (*v12)
  {
    v21 = 0;
    v22 = 1;
    do
    {
      if (v13 == v14)
      {
        v23 = *a2;
        if (*a2)
        {
          v24 = *(v23 - 4);
        }

        else
        {
          v24 = 0;
        }

        v20 = 0;
        v19 = v23 + 16 * v24;
        goto LABEL_10;
      }

      if (v13 == -1)
      {
        v21 = v12;
      }

      v11 = (v11 + v22) & v9;
      v12 = (v8 + 16 * v11);
      v13 = *v12;
      ++v22;
    }

    while (*v12);
    if (v21)
    {
      *v21 = 0;
      v21[1] = 0;
      --*(*a2 - 16);
      v14 = *a3;
      v12 = v21;
    }
  }

  result = WTF::HashMapEnsureTranslator<WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::RenderingBackendIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,IPC::ScopedActiveMessageReceiveQueue<WebKit::RemoteRenderingBackend,WTF::RefPtr<WebKit::RemoteRenderingBackend,WTF::RawPtrTraits<WebKit::RemoteRenderingBackend>,WTF::DefaultRefDerefTraits<WebKit::RemoteRenderingBackend>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::RenderingBackendIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::RenderingBackendIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<IPC::ScopedActiveMessageReceiveQueue<WebKit::RemoteRenderingBackend,WTF::RefPtr<WebKit::RemoteRenderingBackend,WTF::RawPtrTraits<WebKit::RemoteRenderingBackend>,WTF::DefaultRefDerefTraits<WebKit::RemoteRenderingBackend>>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::RenderingBackendIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>::translate<WTF::ObjectIdentifierGeneric<WebKit::RenderingBackendIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long> const&,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::RenderingBackendIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,IPC::ScopedActiveMessageReceiveQueue<WebKit::RemoteRenderingBackend,WTF::RefPtr<WebKit::RemoteRenderingBackend,WTF::RawPtrTraits<WebKit::RemoteRenderingBackend>,WTF::DefaultRefDerefTraits<WebKit::RemoteRenderingBackend>>>>,WebKit::GPUConnectionToWebProcess::createRenderingBackend(WTF::ObjectIdentifierGeneric<WebKit::RenderingBackendIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,IPC::StreamServerConnectionHandle &&)::$_0>(v12, v14, a4);
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

LABEL_20:
    result = WTF::HashTable<WTF::ObjectIdentifierGeneric<WebKit::RenderingBackendIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::RenderingBackendIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,IPC::ScopedActiveMessageReceiveQueue<WebKit::RemoteRenderingBackend,WTF::RefPtr<WebKit::RemoteRenderingBackend,WTF::RawPtrTraits<WebKit::RemoteRenderingBackend>,WTF::DefaultRefDerefTraits<WebKit::RemoteRenderingBackend>>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::RenderingBackendIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,IPC::ScopedActiveMessageReceiveQueue<WebKit::RemoteRenderingBackend,WTF::RefPtr<WebKit::RemoteRenderingBackend,WTF::RawPtrTraits<WebKit::RemoteRenderingBackend>,WTF::DefaultRefDerefTraits<WebKit::RemoteRenderingBackend>>>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::RenderingBackendIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::RenderingBackendIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,IPC::ScopedActiveMessageReceiveQueue<WebKit::RemoteRenderingBackend,WTF::RefPtr<WebKit::RemoteRenderingBackend,WTF::RawPtrTraits<WebKit::RemoteRenderingBackend>,WTF::DefaultRefDerefTraits<WebKit::RemoteRenderingBackend>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::RenderingBackendIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::RenderingBackendIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<IPC::ScopedActiveMessageReceiveQueue<WebKit::RemoteRenderingBackend,WTF::RefPtr<WebKit::RemoteRenderingBackend,WTF::RawPtrTraits<WebKit::RemoteRenderingBackend>,WTF::DefaultRefDerefTraits<WebKit::RemoteRenderingBackend>>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::RenderingBackendIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::expand(a2, v12);
    v12 = result;
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

  if (3 * v18 <= 4 * v17)
  {
    goto LABEL_20;
  }

LABEL_9:
  v19 = v15 + 16 * v18;
  v20 = 1;
LABEL_10:
  *a1 = v12;
  *(a1 + 8) = v19;
  *(a1 + 16) = v20;
  return result;
}

void WebKit::GPUConnectionToWebProcess::releaseRenderingBackend(uint64_t a1, uint64_t a2)
{
  v4 = a2;
  v3 = WTF::HashTable<WTF::ObjectIdentifierGeneric<WebKit::RenderingBackendIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::RenderingBackendIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,IPC::ScopedActiveMessageReceiveQueue<WebKit::RemoteRenderingBackend,WTF::RefPtr<WebKit::RemoteRenderingBackend,WTF::RawPtrTraits<WebKit::RemoteRenderingBackend>,WTF::DefaultRefDerefTraits<WebKit::RemoteRenderingBackend>>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::RenderingBackendIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,IPC::ScopedActiveMessageReceiveQueue<WebKit::RemoteRenderingBackend,WTF::RefPtr<WebKit::RemoteRenderingBackend,WTF::RawPtrTraits<WebKit::RemoteRenderingBackend>,WTF::DefaultRefDerefTraits<WebKit::RemoteRenderingBackend>>>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::RenderingBackendIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::RenderingBackendIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,IPC::ScopedActiveMessageReceiveQueue<WebKit::RemoteRenderingBackend,WTF::RefPtr<WebKit::RemoteRenderingBackend,WTF::RawPtrTraits<WebKit::RemoteRenderingBackend>,WTF::DefaultRefDerefTraits<WebKit::RemoteRenderingBackend>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::RenderingBackendIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::RenderingBackendIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<IPC::ScopedActiveMessageReceiveQueue<WebKit::RemoteRenderingBackend,WTF::RefPtr<WebKit::RemoteRenderingBackend,WTF::RawPtrTraits<WebKit::RemoteRenderingBackend>,WTF::DefaultRefDerefTraits<WebKit::RemoteRenderingBackend>>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::RenderingBackendIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::find<WTF::IdentityHashTranslator<WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::RenderingBackendIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,IPC::ScopedActiveMessageReceiveQueue<WebKit::RemoteRenderingBackend,WTF::RefPtr<WebKit::RemoteRenderingBackend,WTF::RawPtrTraits<WebKit::RemoteRenderingBackend>,WTF::DefaultRefDerefTraits<WebKit::RemoteRenderingBackend>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::RenderingBackendIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::RenderingBackendIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<IPC::ScopedActiveMessageReceiveQueue<WebKit::RemoteRenderingBackend,WTF::RefPtr<WebKit::RemoteRenderingBackend,WTF::RawPtrTraits<WebKit::RemoteRenderingBackend>,WTF::DefaultRefDerefTraits<WebKit::RemoteRenderingBackend>>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::RenderingBackendIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,(WTF::ShouldValidateKey)1,WTF::ObjectIdentifierGeneric<WebKit::RenderingBackendIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>( (a1 + 224),  &v4);
  WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::RenderingBackendIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,IPC::ScopedActiveMessageReceiveQueue<WebKit::RemoteRenderingBackend,WTF::RefPtr<WebKit::RemoteRenderingBackend,WTF::RawPtrTraits<WebKit::RemoteRenderingBackend>,WTF::DefaultRefDerefTraits<WebKit::RemoteRenderingBackend>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::RenderingBackendIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::RenderingBackendIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<IPC::ScopedActiveMessageReceiveQueue<WebKit::RemoteRenderingBackend,WTF::RefPtr<WebKit::RemoteRenderingBackend,WTF::RawPtrTraits<WebKit::RemoteRenderingBackend>,WTF::DefaultRefDerefTraits<WebKit::RemoteRenderingBackend>>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::remove((a1 + 224), v3);
  WebKit::GPUProcess::tryExitIfUnusedAndUnderMemoryPressure(*(a1 + 80));
}

void WebKit::GPUProcess::tryExitIfUnusedAndUnderMemoryPressure(WebKit::GPUProcess *this)
{
  v2 = WTF::MemoryPressureHandler::singleton(this);
  v3 = atomic_load((v2 + 4));
  if (v3 == 2 || *(v2 + 7) == 1)
  {

    WebKit::GPUProcess::tryExitIfUnused(this);
  }
}

void WebKit::GPUConnectionToWebProcess::createGraphicsContextGL(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, WTF::MachSendRight *a6)
{
  v42 = *MEMORY[0x1E69E9840];
  v36 = a5;
  v37 = a3;
  v38 = a4;
  if (*(a1 + 321) == 1)
  {
    v33 = qword_1ED6416C8;
    if (os_log_type_enabled(qword_1ED6416C8, OS_LOG_TYPE_FAULT))
    {
      *buf = 136446210;
      *&buf[4] = "void WebKit::GPUConnectionToWebProcess::createGraphicsContextGL(GraphicsContextGLIdentifier, WebCore::GraphicsContextGLAttributes, RenderingBackendIdentifier, IPC::StreamServerConnection::Handle &&)";
      _os_log_fault_impl(&dword_19D52D000, v33, OS_LOG_TYPE_FAULT, "/Library/Caches/com.apple.xbs/Sources/WebKit/Source/WebKit/GPUProcess/GPUConnectionToWebProcess.cpp 747: Invalid message dispatched %{public}s", buf, 0xCu);
    }

    *(*(a1 + 56) + 94) = 1;
    if (IPC::s_shouldCrashOnMessageCheckFailure != 1)
    {
      return;
    }

    __break(0xC471u);
LABEL_55:
    JUMPOUT(0x19DB4138CLL);
  }

  v9 = WTF::HashTable<WTF::ObjectIdentifierGeneric<WebKit::RenderingBackendIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::RenderingBackendIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,IPC::ScopedActiveMessageReceiveQueue<WebKit::RemoteRenderingBackend,WTF::RefPtr<WebKit::RemoteRenderingBackend,WTF::RawPtrTraits<WebKit::RemoteRenderingBackend>,WTF::DefaultRefDerefTraits<WebKit::RemoteRenderingBackend>>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::RenderingBackendIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,IPC::ScopedActiveMessageReceiveQueue<WebKit::RemoteRenderingBackend,WTF::RefPtr<WebKit::RemoteRenderingBackend,WTF::RawPtrTraits<WebKit::RemoteRenderingBackend>,WTF::DefaultRefDerefTraits<WebKit::RemoteRenderingBackend>>>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::RenderingBackendIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::RenderingBackendIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,IPC::ScopedActiveMessageReceiveQueue<WebKit::RemoteRenderingBackend,WTF::RefPtr<WebKit::RemoteRenderingBackend,WTF::RawPtrTraits<WebKit::RemoteRenderingBackend>,WTF::DefaultRefDerefTraits<WebKit::RemoteRenderingBackend>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::RenderingBackendIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::RenderingBackendIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<IPC::ScopedActiveMessageReceiveQueue<WebKit::RemoteRenderingBackend,WTF::RefPtr<WebKit::RemoteRenderingBackend,WTF::RawPtrTraits<WebKit::RemoteRenderingBackend>,WTF::DefaultRefDerefTraits<WebKit::RemoteRenderingBackend>>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::RenderingBackendIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::find<WTF::IdentityHashTranslator<WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::RenderingBackendIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,IPC::ScopedActiveMessageReceiveQueue<WebKit::RemoteRenderingBackend,WTF::RefPtr<WebKit::RemoteRenderingBackend,WTF::RawPtrTraits<WebKit::RemoteRenderingBackend>,WTF::DefaultRefDerefTraits<WebKit::RemoteRenderingBackend>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::RenderingBackendIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::RenderingBackendIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<IPC::ScopedActiveMessageReceiveQueue<WebKit::RemoteRenderingBackend,WTF::RefPtr<WebKit::RemoteRenderingBackend,WTF::RawPtrTraits<WebKit::RemoteRenderingBackend>,WTF::DefaultRefDerefTraits<WebKit::RemoteRenderingBackend>>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::RenderingBackendIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,(WTF::ShouldValidateKey)1,WTF::ObjectIdentifierGeneric<WebKit::RenderingBackendIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>( (a1 + 224),  &v36);
  v10 = *(a1 + 224);
  if (v10)
  {
    v10 += 16 * *(v10 - 4);
  }

  if (v10 == v9)
  {
    return;
  }

  v11 = *(v9 + 8);
  if (v11)
  {
    atomic_fetch_add((v11 + 16), 1u);
  }

  IPC::StreamServerConnection::tryCreate(a6, &v35);
  v12 = v35;
  if (!v35)
  {
    v34 = qword_1ED6416C8;
    if (os_log_type_enabled(qword_1ED6416C8, OS_LOG_TYPE_FAULT))
    {
      *buf = 136446210;
      *&buf[4] = "void WebKit::GPUConnectionToWebProcess::createGraphicsContextGL(GraphicsContextGLIdentifier, WebCore::GraphicsContextGLAttributes, RenderingBackendIdentifier, IPC::StreamServerConnection::Handle &&)";
      _os_log_fault_impl(&dword_19D52D000, v34, OS_LOG_TYPE_FAULT, "/Library/Caches/com.apple.xbs/Sources/WebKit/Source/WebKit/GPUProcess/GPUConnectionToWebProcess.cpp 759: Invalid message dispatched %{public}s", buf, 0xCu);
    }

    *(*(a1 + 56) + 94) = 1;
    if (IPC::s_shouldCrashOnMessageCheckFailure == 1)
    {
      __break(0xC471u);
      JUMPOUT(0x19DB413C8);
    }

    goto LABEL_35;
  }

  if (a2 == -1)
  {
    __break(0xC471u);
    JUMPOUT(0x19DB4146CLL);
  }

  if (!a2)
  {
    __break(0xC471u);
    goto LABEL_55;
  }

  v13 = *(a1 + 232);
  if (!v13)
  {
    WTF::HashTable<WTF::ObjectIdentifierGeneric<WebKit::GraphicsContextGLIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::GraphicsContextGLIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,IPC::ScopedActiveMessageReceiveQueue<WebKit::RemoteGraphicsContextGL,WTF::RefPtr<WebKit::RemoteGraphicsContextGL,WTF::RawPtrTraits<WebKit::RemoteGraphicsContextGL>,WTF::DefaultRefDerefTraits<WebKit::RemoteGraphicsContextGL>>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::GraphicsContextGLIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,IPC::ScopedActiveMessageReceiveQueue<WebKit::RemoteGraphicsContextGL,WTF::RefPtr<WebKit::RemoteGraphicsContextGL,WTF::RawPtrTraits<WebKit::RemoteGraphicsContextGL>,WTF::DefaultRefDerefTraits<WebKit::RemoteGraphicsContextGL>>>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::GraphicsContextGLIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::GraphicsContextGLIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,IPC::ScopedActiveMessageReceiveQueue<WebKit::RemoteGraphicsContextGL,WTF::RefPtr<WebKit::RemoteGraphicsContextGL,WTF::RawPtrTraits<WebKit::RemoteGraphicsContextGL>,WTF::DefaultRefDerefTraits<WebKit::RemoteGraphicsContextGL>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::GraphicsContextGLIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::GraphicsContextGLIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<IPC::ScopedActiveMessageReceiveQueue<WebKit::RemoteGraphicsContextGL,WTF::RefPtr<WebKit::RemoteGraphicsContextGL,WTF::RawPtrTraits<WebKit::RemoteGraphicsContextGL>,WTF::DefaultRefDerefTraits<WebKit::RemoteGraphicsContextGL>>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::GraphicsContextGLIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::expand((a1 + 232));
    v13 = *(a1 + 232);
  }

  v14 = *(v13 - 8);
  v15 = (~(a2 << 32) + a2) ^ ((~(a2 << 32) + a2) >> 22);
  v16 = 9 * ((v15 + ~(v15 << 13)) ^ ((v15 + ~(v15 << 13)) >> 8));
  v17 = (v16 ^ (v16 >> 15)) + ~((v16 ^ (v16 >> 15)) << 27);
  v18 = v14 & ((v17 >> 31) ^ v17);
  v19 = (v13 + 16 * v18);
  v20 = *v19;
  if (*v19)
  {
    v21 = 0;
    v22 = 1;
    while (v20 != a2)
    {
      if (v20 == -1)
      {
        v21 = v19;
      }

      v18 = (v18 + v22) & v14;
      v19 = (v13 + 16 * v18);
      v20 = *v19;
      ++v22;
      if (!*v19)
      {
        if (v21)
        {
          *v21 = 0;
          v21[1] = 0;
          --*(*(a1 + 232) - 16);
          v19 = v21;
        }

        goto LABEL_20;
      }
    }

    goto LABEL_35;
  }

LABEL_20:
  *v19 = a2;
  v40 = v12;
  v35 = 0;
  WebKit::RemoteGraphicsContextGL::create(a1, &v37, a2, v11, &v40, buf);
  v23 = v40;
  v39 = *buf;
  v40 = 0;
  *buf = 0;
  if (v23 && atomic_fetch_add(v23 + 2, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v23 + 2);
    (*(*v23 + 8))(v23);
  }

  v24 = v19 + 1;
  if (v19 + 1 != &v39)
  {
    if (*v24)
    {
      IPC::ScopedActiveMessageReceiveQueue<WebKit::RemoteGraphicsContextGL,WTF::RefPtr<WebKit::RemoteGraphicsContextGL,WTF::RawPtrTraits<WebKit::RemoteGraphicsContextGL>,WTF::DefaultRefDerefTraits<WebKit::RemoteGraphicsContextGL>>>::stopListeningForIPCAndRelease<WTF::RefPtr<WebKit::RemoteGraphicsContextGL,WTF::RawPtrTraits<WebKit::RemoteGraphicsContextGL>,WTF::DefaultRefDerefTraits<WebKit::RemoteGraphicsContextGL>>>(v19 + 1);
      v25 = *v24;
      v26 = v39;
      v39 = 0;
      *v24 = v26;
      if (v25 && atomic_fetch_add((v25 + 16), 0xFFFFFFFF) == 1)
      {
        atomic_store(1u, (v25 + 16));
        (*(*(v25 + 8) + 8))();
      }
    }

    else
    {
      v27 = v39;
      v39 = 0;
      *v24 = v27;
    }
  }

  IPC::ScopedActiveMessageReceiveQueue<WebKit::RemoteGraphicsContextGL,WTF::RefPtr<WebKit::RemoteGraphicsContextGL,WTF::RawPtrTraits<WebKit::RemoteGraphicsContextGL>,WTF::DefaultRefDerefTraits<WebKit::RemoteGraphicsContextGL>>>::~ScopedActiveMessageReceiveQueue(&v39);
  v28 = *(a1 + 232);
  if (v28)
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
  if (v31 <= 0x400)
  {
    if (3 * v31 > 4 * v30)
    {
      goto LABEL_35;
    }

    goto LABEL_34;
  }

  if (v31 <= 2 * v30)
  {
LABEL_34:
    WTF::HashTable<WTF::ObjectIdentifierGeneric<WebKit::GraphicsContextGLIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::GraphicsContextGLIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,IPC::ScopedActiveMessageReceiveQueue<WebKit::RemoteGraphicsContextGL,WTF::RefPtr<WebKit::RemoteGraphicsContextGL,WTF::RawPtrTraits<WebKit::RemoteGraphicsContextGL>,WTF::DefaultRefDerefTraits<WebKit::RemoteGraphicsContextGL>>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::GraphicsContextGLIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,IPC::ScopedActiveMessageReceiveQueue<WebKit::RemoteGraphicsContextGL,WTF::RefPtr<WebKit::RemoteGraphicsContextGL,WTF::RawPtrTraits<WebKit::RemoteGraphicsContextGL>,WTF::DefaultRefDerefTraits<WebKit::RemoteGraphicsContextGL>>>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::GraphicsContextGLIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::GraphicsContextGLIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,IPC::ScopedActiveMessageReceiveQueue<WebKit::RemoteGraphicsContextGL,WTF::RefPtr<WebKit::RemoteGraphicsContextGL,WTF::RawPtrTraits<WebKit::RemoteGraphicsContextGL>,WTF::DefaultRefDerefTraits<WebKit::RemoteGraphicsContextGL>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::GraphicsContextGLIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::GraphicsContextGLIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<IPC::ScopedActiveMessageReceiveQueue<WebKit::RemoteGraphicsContextGL,WTF::RefPtr<WebKit::RemoteGraphicsContextGL,WTF::RawPtrTraits<WebKit::RemoteGraphicsContextGL>,WTF::DefaultRefDerefTraits<WebKit::RemoteGraphicsContextGL>>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::GraphicsContextGLIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::expand((a1 + 232));
  }

LABEL_35:
  v32 = v35;
  v35 = 0;
  if (v32 && atomic_fetch_add(v32 + 2, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v32 + 2);
    (*(*v32 + 8))(v32);
    if (!v11)
    {
      return;
    }
  }

  else if (!v11)
  {
    return;
  }

  if (atomic_fetch_add((v11 + 16), 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, (v11 + 16));
    (*(*(v11 + 8) + 8))(v11 + 8);
  }
}

void WebKit::GPUConnectionToWebProcess::releaseGraphicsContextGL(uint64_t a1, uint64_t a2)
{
  v20 = *MEMORY[0x1E69E9840];
  if (*(a1 + 321) == 1)
  {
    v17 = qword_1ED6416C8;
    if (os_log_type_enabled(qword_1ED6416C8, OS_LOG_TYPE_FAULT))
    {
      v18 = 136446210;
      v19 = "void WebKit::GPUConnectionToWebProcess::releaseGraphicsContextGL(GraphicsContextGLIdentifier)";
      _os_log_fault_impl(&dword_19D52D000, v17, OS_LOG_TYPE_FAULT, "/Library/Caches/com.apple.xbs/Sources/WebKit/Source/WebKit/GPUProcess/GPUConnectionToWebProcess.cpp 769: Invalid message dispatched %{public}s", &v18, 0xCu);
    }

    *(*(a1 + 56) + 94) = 1;
    if (IPC::s_shouldCrashOnMessageCheckFailure != 1)
    {
      return;
    }

    __break(0xC471u);
LABEL_29:
    JUMPOUT(0x19DB41660);
  }

  v4 = (a1 + 232);
  v3 = *(a1 + 232);
  if (!v3)
  {
LABEL_20:
    v16 = *(a1 + 80);

    WebKit::GPUProcess::tryExitIfUnusedAndUnderMemoryPressure(v16);
    return;
  }

  if (a2 == -1)
  {
    __break(0xC471u);
    JUMPOUT(0x19DB416C4);
  }

  if (!a2)
  {
    __break(0xC471u);
    goto LABEL_29;
  }

  v5 = *(v3 - 8);
  v6 = (~(a2 << 32) + a2) ^ ((~(a2 << 32) + a2) >> 22);
  v7 = 9 * ((v6 + ~(v6 << 13)) ^ ((v6 + ~(v6 << 13)) >> 8));
  v8 = (v7 ^ (v7 >> 15)) + ~((v7 ^ (v7 >> 15)) << 27);
  v9 = v5 & ((v8 >> 31) ^ v8);
  v10 = *(v3 + 16 * v9);
  if (v10 != a2)
  {
    v11 = 1;
    while (v10)
    {
      v9 = (v9 + v11) & v5;
      v10 = *(v3 + 16 * v9);
      ++v11;
      if (v10 == a2)
      {
        goto LABEL_11;
      }
    }

    v9 = *(v3 - 4);
  }

LABEL_11:
  if (v9 != *(v3 - 4))
  {
    v12 = (v3 + 16 * v9);
    *v12 = -1;
    IPC::ScopedActiveMessageReceiveQueue<WebKit::RemoteGraphicsContextGL,WTF::RefPtr<WebKit::RemoteGraphicsContextGL,WTF::RawPtrTraits<WebKit::RemoteGraphicsContextGL>,WTF::DefaultRefDerefTraits<WebKit::RemoteGraphicsContextGL>>>::~ScopedActiveMessageReceiveQueue(v12 + 1);
    v3 = *v4;
    v13 = vadd_s32(*(*v4 - 16), 0xFFFFFFFF00000001);
    *(v3 - 16) = v13;
    v14 = *(v3 - 4);
    if (6 * v13.i32[1] < v14 && v14 >= 9)
    {
      WTF::HashTable<WTF::ObjectIdentifierGeneric<WebKit::GraphicsContextGLIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::GraphicsContextGLIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,IPC::ScopedActiveMessageReceiveQueue<WebKit::RemoteGraphicsContextGL,WTF::RefPtr<WebKit::RemoteGraphicsContextGL,WTF::RawPtrTraits<WebKit::RemoteGraphicsContextGL>,WTF::DefaultRefDerefTraits<WebKit::RemoteGraphicsContextGL>>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::GraphicsContextGLIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,IPC::ScopedActiveMessageReceiveQueue<WebKit::RemoteGraphicsContextGL,WTF::RefPtr<WebKit::RemoteGraphicsContextGL,WTF::RawPtrTraits<WebKit::RemoteGraphicsContextGL>,WTF::DefaultRefDerefTraits<WebKit::RemoteGraphicsContextGL>>>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::GraphicsContextGLIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::GraphicsContextGLIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,IPC::ScopedActiveMessageReceiveQueue<WebKit::RemoteGraphicsContextGL,WTF::RefPtr<WebKit::RemoteGraphicsContextGL,WTF::RawPtrTraits<WebKit::RemoteGraphicsContextGL>,WTF::DefaultRefDerefTraits<WebKit::RemoteGraphicsContextGL>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::GraphicsContextGLIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::GraphicsContextGLIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<IPC::ScopedActiveMessageReceiveQueue<WebKit::RemoteGraphicsContextGL,WTF::RefPtr<WebKit::RemoteGraphicsContextGL,WTF::RawPtrTraits<WebKit::RemoteGraphicsContextGL>,WTF::DefaultRefDerefTraits<WebKit::RemoteGraphicsContextGL>>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::GraphicsContextGLIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::rehash((a1 + 232), v14 >> 1);
      v3 = *v4;
      if (!*v4)
      {
        goto LABEL_20;
      }
    }
  }

  if (!*(v3 - 12))
  {
    goto LABEL_20;
  }
}

uint64_t WebKit::GPUConnectionToWebProcess::performWithMediaPlayerOnMainThread(uint64_t a1, uint64_t a2, uint64_t a3)
{
  while (1)
  {
    v6 = *(a1 + 16);
    if ((v6 & 1) == 0)
    {
      break;
    }

    v7 = *(a1 + 16);
    atomic_compare_exchange_strong_explicit((a1 + 16), &v7, v6 + 2, memory_order_relaxed, memory_order_relaxed);
    if (v7 == v6)
    {
      goto LABEL_5;
    }
  }

  WTF::ThreadSafeWeakPtrControlBlock::strongRef(*(a1 + 16));
LABEL_5:
  v8 = WTF::fastMalloc(0x20);
  *v8 = &unk_1F10FAE08;
  v8[1] = a1;
  v8[2] = a2;
  v8[3] = a3;
  v11 = v8;
  WTF::callOnMainRunLoopAndWait();
  result = v11;
  if (v11)
  {
    v10 = *(*v11 + 8);

    return v10();
  }

  return result;
}

void WebKit::GPUConnectionToWebProcess::createGPU(uint64_t a1, uint64_t a2, uint64_t a3, WTF::MachSendRight *a4)
{
  v41 = *MEMORY[0x1E69E9840];
  v38 = a3;
  if ((*(a1 + 352) & 0x4000) == 0)
  {
    v35 = qword_1ED6416C8;
    if (os_log_type_enabled(qword_1ED6416C8, OS_LOG_TYPE_FAULT))
    {
      *buf = 136446210;
      *&buf[4] = "void WebKit::GPUConnectionToWebProcess::createGPU(WebGPUIdentifier, RenderingBackendIdentifier, IPC::StreamServerConnection::Handle &&)";
      _os_log_fault_impl(&dword_19D52D000, v35, OS_LOG_TYPE_FAULT, "/Library/Caches/com.apple.xbs/Sources/WebKit/Source/WebKit/GPUProcess/GPUConnectionToWebProcess.cpp 812: Invalid message dispatched %{public}s", buf, 0xCu);
    }

    *(*(a1 + 56) + 94) = 1;
    if (IPC::s_shouldCrashOnMessageCheckFailure != 1)
    {
      return;
    }

    __break(0xC471u);
LABEL_58:
    JUMPOUT(0x19DB41B78);
  }

  v7 = WTF::HashTable<WTF::ObjectIdentifierGeneric<WebKit::RenderingBackendIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::RenderingBackendIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,IPC::ScopedActiveMessageReceiveQueue<WebKit::RemoteRenderingBackend,WTF::RefPtr<WebKit::RemoteRenderingBackend,WTF::RawPtrTraits<WebKit::RemoteRenderingBackend>,WTF::DefaultRefDerefTraits<WebKit::RemoteRenderingBackend>>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::RenderingBackendIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,IPC::ScopedActiveMessageReceiveQueue<WebKit::RemoteRenderingBackend,WTF::RefPtr<WebKit::RemoteRenderingBackend,WTF::RawPtrTraits<WebKit::RemoteRenderingBackend>,WTF::DefaultRefDerefTraits<WebKit::RemoteRenderingBackend>>>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::RenderingBackendIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::RenderingBackendIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,IPC::ScopedActiveMessageReceiveQueue<WebKit::RemoteRenderingBackend,WTF::RefPtr<WebKit::RemoteRenderingBackend,WTF::RawPtrTraits<WebKit::RemoteRenderingBackend>,WTF::DefaultRefDerefTraits<WebKit::RemoteRenderingBackend>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::RenderingBackendIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::RenderingBackendIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<IPC::ScopedActiveMessageReceiveQueue<WebKit::RemoteRenderingBackend,WTF::RefPtr<WebKit::RemoteRenderingBackend,WTF::RawPtrTraits<WebKit::RemoteRenderingBackend>,WTF::DefaultRefDerefTraits<WebKit::RemoteRenderingBackend>>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::RenderingBackendIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::find<WTF::IdentityHashTranslator<WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::RenderingBackendIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,IPC::ScopedActiveMessageReceiveQueue<WebKit::RemoteRenderingBackend,WTF::RefPtr<WebKit::RemoteRenderingBackend,WTF::RawPtrTraits<WebKit::RemoteRenderingBackend>,WTF::DefaultRefDerefTraits<WebKit::RemoteRenderingBackend>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::RenderingBackendIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::RenderingBackendIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<IPC::ScopedActiveMessageReceiveQueue<WebKit::RemoteRenderingBackend,WTF::RefPtr<WebKit::RemoteRenderingBackend,WTF::RawPtrTraits<WebKit::RemoteRenderingBackend>,WTF::DefaultRefDerefTraits<WebKit::RemoteRenderingBackend>>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::RenderingBackendIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,(WTF::ShouldValidateKey)1,WTF::ObjectIdentifierGeneric<WebKit::RenderingBackendIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>( (a1 + 224),  &v38);
  v8 = *(a1 + 224);
  if (v8)
  {
    v8 += 16 * *(v8 - 4);
  }

  if (v8 == v7)
  {
    return;
  }

  v9 = *(v7 + 8);
  if (v9)
  {
    atomic_fetch_add((v9 + 16), 1u);
  }

  IPC::StreamServerConnection::tryCreate(a4, &v37);
  v11 = v37;
  if (!v37)
  {
    v36 = qword_1ED6416C8;
    if (os_log_type_enabled(qword_1ED6416C8, OS_LOG_TYPE_FAULT))
    {
      *buf = 136446210;
      *&buf[4] = "void WebKit::GPUConnectionToWebProcess::createGPU(WebGPUIdentifier, RenderingBackendIdentifier, IPC::StreamServerConnection::Handle &&)";
      _os_log_fault_impl(&dword_19D52D000, v36, OS_LOG_TYPE_FAULT, "/Library/Caches/com.apple.xbs/Sources/WebKit/Source/WebKit/GPUProcess/GPUConnectionToWebProcess.cpp 824: Invalid message dispatched %{public}s", buf, 0xCu);
    }

    *(*(a1 + 56) + 94) = 1;
    if (IPC::s_shouldCrashOnMessageCheckFailure == 1)
    {
      __break(0xC471u);
      JUMPOUT(0x19DB41BC0);
    }

    goto LABEL_37;
  }

  if (a2 == -1)
  {
    __break(0xC471u);
    JUMPOUT(0x19DB41C64);
  }

  if (!a2)
  {
    __break(0xC471u);
    goto LABEL_58;
  }

  v12 = *(a1 + 240);
  if (!v12)
  {
    WTF::HashTable<WTF::ObjectIdentifierGeneric<WebKit::WebGPUIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::WebGPUIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,IPC::ScopedActiveMessageReceiveQueue<WebKit::RemoteGPU,WTF::RefPtr<WebKit::RemoteGPU,WTF::RawPtrTraits<WebKit::RemoteGPU>,WTF::DefaultRefDerefTraits<WebKit::RemoteGPU>>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::WebGPUIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,IPC::ScopedActiveMessageReceiveQueue<WebKit::RemoteGPU,WTF::RefPtr<WebKit::RemoteGPU,WTF::RawPtrTraits<WebKit::RemoteGPU>,WTF::DefaultRefDerefTraits<WebKit::RemoteGPU>>>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::WebGPUIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::WebGPUIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,IPC::ScopedActiveMessageReceiveQueue<WebKit::RemoteGPU,WTF::RefPtr<WebKit::RemoteGPU,WTF::RawPtrTraits<WebKit::RemoteGPU>,WTF::DefaultRefDerefTraits<WebKit::RemoteGPU>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::WebGPUIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::WebGPUIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<IPC::ScopedActiveMessageReceiveQueue<WebKit::RemoteGPU,WTF::RefPtr<WebKit::RemoteGPU,WTF::RawPtrTraits<WebKit::RemoteGPU>,WTF::DefaultRefDerefTraits<WebKit::RemoteGPU>>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::WebGPUIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::expand((a1 + 240));
    v12 = *(a1 + 240);
  }

  v13 = *(v12 - 8);
  v14 = (~(a2 << 32) + a2) ^ ((~(a2 << 32) + a2) >> 22);
  v15 = 9 * ((v14 + ~(v14 << 13)) ^ ((v14 + ~(v14 << 13)) >> 8));
  v16 = (v15 ^ (v15 >> 15)) + ~((v15 ^ (v15 >> 15)) << 27);
  v17 = v13 & ((v16 >> 31) ^ v16);
  v18 = (v12 + 16 * v17);
  v19 = *v18;
  if (*v18)
  {
    v20 = 0;
    v21 = 1;
    while (v19 != a2)
    {
      if (v19 == -1)
      {
        v20 = v18;
      }

      v17 = (v17 + v21) & v13;
      v18 = (v12 + 16 * v17);
      v19 = *v18;
      ++v21;
      if (!*v18)
      {
        if (v20)
        {
          *v20 = 0;
          v20[1] = 0;
          --*(*(a1 + 240) - 16);
          v18 = v20;
        }

        goto LABEL_20;
      }
    }

    goto LABEL_37;
  }

LABEL_20:
  *v18 = a2;
  *buf = v11;
  v37 = 0;
  if (WebKit::RemoteGPU::s_heapRef)
  {
    NonCompact = bmalloc::api::tzoneAllocateNonCompact(WebKit::RemoteGPU::s_heapRef, v10);
  }

  else
  {
    NonCompact = WebKit::RemoteGPU::operatorNewSlow(0x70);
  }

  v23 = NonCompact;
  v24 = WebKit::RemoteGPU::RemoteGPU(NonCompact, a2, a1, v9, buf);
  WebKit::RemoteGPU::initialize(v24);
  v25 = *buf;
  v39 = v23;
  *buf = 0;
  if (v25 && atomic_fetch_add(v25 + 2, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v25 + 2);
    (*(*v25 + 8))(v25);
  }

  v26 = (v18 + 1);
  if (v18 + 1 != &v39)
  {
    if (*v26)
    {
      IPC::ScopedActiveMessageReceiveQueue<WebKit::RemoteGPU,WTF::RefPtr<WebKit::RemoteGPU,WTF::RawPtrTraits<WebKit::RemoteGPU>,WTF::DefaultRefDerefTraits<WebKit::RemoteGPU>>>::stopListeningForIPCAndRelease<WTF::RefPtr<WebKit::RemoteGPU,WTF::RawPtrTraits<WebKit::RemoteGPU>,WTF::DefaultRefDerefTraits<WebKit::RemoteGPU>>>(v18 + 1);
      v27 = *v26;
      v28 = v39;
      v39 = 0;
      *v26 = v28;
      if (v27 && atomic_fetch_add(v27 + 2, 0xFFFFFFFF) == 1)
      {
        atomic_store(1u, v27 + 2);
        (*(*v27 + 8))(v27);
      }
    }

    else
    {
      v29 = v39;
      v39 = 0;
      *v26 = v29;
    }
  }

  IPC::ScopedActiveMessageReceiveQueue<WebKit::RemoteGPU,WTF::RefPtr<WebKit::RemoteGPU,WTF::RawPtrTraits<WebKit::RemoteGPU>,WTF::DefaultRefDerefTraits<WebKit::RemoteGPU>>>::~ScopedActiveMessageReceiveQueue(&v39);
  v30 = *(a1 + 240);
  if (v30)
  {
    v31 = *(v30 - 12) + 1;
  }

  else
  {
    v31 = 1;
  }

  *(v30 - 12) = v31;
  v32 = (*(v30 - 16) + v31);
  v33 = *(v30 - 4);
  if (v33 <= 0x400)
  {
    if (3 * v33 > 4 * v32)
    {
      goto LABEL_37;
    }

    goto LABEL_36;
  }

  if (v33 <= 2 * v32)
  {
LABEL_36:
    WTF::HashTable<WTF::ObjectIdentifierGeneric<WebKit::WebGPUIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::WebGPUIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,IPC::ScopedActiveMessageReceiveQueue<WebKit::RemoteGPU,WTF::RefPtr<WebKit::RemoteGPU,WTF::RawPtrTraits<WebKit::RemoteGPU>,WTF::DefaultRefDerefTraits<WebKit::RemoteGPU>>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::WebGPUIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,IPC::ScopedActiveMessageReceiveQueue<WebKit::RemoteGPU,WTF::RefPtr<WebKit::RemoteGPU,WTF::RawPtrTraits<WebKit::RemoteGPU>,WTF::DefaultRefDerefTraits<WebKit::RemoteGPU>>>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::WebGPUIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::WebGPUIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,IPC::ScopedActiveMessageReceiveQueue<WebKit::RemoteGPU,WTF::RefPtr<WebKit::RemoteGPU,WTF::RawPtrTraits<WebKit::RemoteGPU>,WTF::DefaultRefDerefTraits<WebKit::RemoteGPU>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::WebGPUIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::WebGPUIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<IPC::ScopedActiveMessageReceiveQueue<WebKit::RemoteGPU,WTF::RefPtr<WebKit::RemoteGPU,WTF::RawPtrTraits<WebKit::RemoteGPU>,WTF::DefaultRefDerefTraits<WebKit::RemoteGPU>>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::WebGPUIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::expand((a1 + 240));
  }

LABEL_37:
  v34 = v37;
  v37 = 0;
  if (v34 && atomic_fetch_add(v34 + 2, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v34 + 2);
    (*(*v34 + 8))(v34);
    if (!v9)
    {
      return;
    }
  }

  else if (!v9)
  {
    return;
  }

  if (atomic_fetch_add((v9 + 16), 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, (v9 + 16));
    (*(*(v9 + 8) + 8))(v9 + 8);
  }
}

void WebKit::GPUConnectionToWebProcess::releaseGPU(uint64_t a1, uint64_t a2)
{
  v4 = (a1 + 240);
  v3 = *(a1 + 240);
  if (!v3)
  {
    goto LABEL_18;
  }

  if (a2 == -1 || !a2)
  {
    __break(0xC471u);
    JUMPOUT(0x19DB41E40);
  }

  v5 = *(v3 - 8);
  v6 = (~(a2 << 32) + a2) ^ ((~(a2 << 32) + a2) >> 22);
  v7 = 9 * ((v6 + ~(v6 << 13)) ^ ((v6 + ~(v6 << 13)) >> 8));
  v8 = (v7 ^ (v7 >> 15)) + ~((v7 ^ (v7 >> 15)) << 27);
  v9 = v5 & ((v8 >> 31) ^ v8);
  v10 = *(v3 + 16 * v9);
  if (v10 != a2)
  {
    v11 = 1;
    while (v10)
    {
      v9 = (v9 + v11) & v5;
      v10 = *(v3 + 16 * v9);
      ++v11;
      if (v10 == a2)
      {
        goto LABEL_10;
      }
    }

    v9 = *(v3 - 4);
  }

LABEL_10:
  if (v9 != *(v3 - 4) && ((v12 = v3 + 16 * v9, *v12 = -1, IPC::ScopedActiveMessageReceiveQueue<WebKit::RemoteGPU,WTF::RefPtr<WebKit::RemoteGPU,WTF::RawPtrTraits<WebKit::RemoteGPU>,WTF::DefaultRefDerefTraits<WebKit::RemoteGPU>>>::~ScopedActiveMessageReceiveQueue((v12 + 8)), v3 = *v4, v13 = vadd_s32(*(*v4 - 16), 0xFFFFFFFF00000001), *(v3 - 16) = v13, v14 = *(v3 - 4), 6 * v13.i32[1] < v14) ? (v15 = v14 >= 9) : (v15 = 0), v15 && (WTF::HashTable<WTF::ObjectIdentifierGeneric<WebKit::WebGPUIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::WebGPUIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,IPC::ScopedActiveMessageReceiveQueue<WebKit::RemoteGPU,WTF::RefPtr<WebKit::RemoteGPU,WTF::RawPtrTraits<WebKit::RemoteGPU>,WTF::DefaultRefDerefTraits<WebKit::RemoteGPU>>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::WebGPUIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,IPC::ScopedActiveMessageReceiveQueue<WebKit::RemoteGPU,WTF::RefPtr<WebKit::RemoteGPU,WTF::RawPtrTraits<WebKit::RemoteGPU>,WTF::DefaultRefDerefTraits<WebKit::RemoteGPU>>>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::WebGPUIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::WebGPUIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,IPC::ScopedActiveMessageReceiveQueue<WebKit::RemoteGPU,WTF::RefPtr<WebKit::RemoteGPU,WTF::RawPtrTraits<WebKit::RemoteGPU>,WTF::DefaultRefDerefTraits<WebKit::RemoteGPU>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::WebGPUIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::WebGPUIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<IPC::ScopedActiveMessageReceiveQueue<WebKit::RemoteGPU,WTF::RefPtr<WebKit::RemoteGPU,WTF::RawPtrTraits<WebKit::RemoteGPU>,WTF::DefaultRefDerefTraits<WebKit::RemoteGPU>>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::WebGPUIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::rehash(v4, v14 >> 1), (v3 = *v4) == 0)) || !*(v3 - 12))
  {
LABEL_18:
    v16 = *(a1 + 80);
    atomic_fetch_add((v16 + 136), 1u);
    v17 = WTF::fastMalloc(0x10);
    *v17 = &unk_1F10FAE30;
    v17[1] = v16;
    v18 = v17;
    WTF::ensureOnMainRunLoop();
    if (v18)
    {
      (*(*v18 + 8))(v18);
    }
  }
}

uint64_t WebKit::GPUConnectionToWebProcess::clearNowPlayingInfo(WebKit::GPUConnectionToWebProcess *this, void *a2)
{
  *(this + 320) = 0;
  v3 = WebKit::GPUProcess::nowPlayingManager(*(this + 10), a2);

  return MEMORY[0x1EEE56CE0](v3, this);
}

uint64_t WebKit::GPUProcess::nowPlayingManager(WebKit::GPUProcess *this, void *a2)
{
  result = *(this + 33);
  if (!result)
  {
    v4 = WebCore::NowPlayingManager::operator new(0xB0, a2);
    result = WebCore::NowPlayingManager::NowPlayingManager(v4);
    v5 = *(this + 33);
    *(this + 33) = result;
    if (v5)
    {
      (*(*v5 + 8))(v5);
      return *(this + 33);
    }
  }

  return result;
}

uint64_t WebKit::GPUConnectionToWebProcess::setNowPlayingInfo(uint64_t a1, void *a2)
{
  *(a1 + 320) = 1;
  v3 = *(a1 + 80);
  atomic_fetch_add(v3 + 34, 1u);
  WebKit::GPUProcess::nowPlayingManager(v3, a2);
  WebCore::NowPlayingManager::addClient();
  WebKit::GPUProcess::nowPlayingManager(v3, v4);
  WebCore::NowPlayingManager::setNowPlayingInfo();
  result = WebKit::GPUConnectionToWebProcess::updateSupportedRemoteCommands(a1, v5);
  if (v3 && atomic_fetch_add(v3 + 34, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v3 + 34);
    v7 = *(*v3 + 24);

    return v7(v3);
  }

  return result;
}

uint64_t WebKit::GPUConnectionToWebProcess::updateSupportedRemoteCommands(uint64_t this, void *a2)
{
  if (*(this + 320) == 1)
  {
    if (*(this + 312))
    {
      v2 = *(this + 80);
      atomic_fetch_add(v2 + 34, 1u);
      v3 = WebKit::GPUProcess::nowPlayingManager(v2, a2);
      WebCore::NowPlayingManager::setSupportsSeeking(v3);
      WebKit::GPUProcess::nowPlayingManager(v2, v4);
      this = WebCore::NowPlayingManager::setSupportedRemoteCommands();
      if (v2)
      {
        if (atomic_fetch_add(v2 + 34, 0xFFFFFFFF) == 1)
        {
          atomic_store(1u, v2 + 34);
          v5 = *(*v2 + 24);

          return v5(v2);
        }
      }
    }
  }

  return this;
}

IPC::Encoder *WebKit::GPUConnectionToWebProcess::didReceiveRemoteControlCommand(uint64_t a1, void *a2, uint64_t a3)
{
  v4 = a2;
  v5 = *(a1 + 56);
  v6 = IPC::Encoder::operator new(0x238, a2);
  *v6 = 57;
  *(v6 + 68) = 0;
  *(v6 + 70) = 0;
  *(v6 + 69) = 0;
  *(v6 + 2) = 0;
  *(v6 + 3) = 0;
  *(v6 + 1) = 0;
  IPC::Encoder::encodeHeader(v6);
  v11 = v6;
  IPC::ArgumentCoder<BOOL,void>::encode<IPC::Encoder>(v6, v4);
  IPC::ArgumentCoder<std::optional<double>,void>::encode<IPC::Encoder,std::optional<double>>(v6, a3);
  IPC::ArgumentCoder<std::optional<BOOL>,void>::encode<IPC::Encoder,std::optional<BOOL> const&>(v6, (a3 + 16));
  IPC::Connection::sendMessageImpl(v5, &v11, 0, 0);
  result = v11;
  v11 = 0;
  if (result)
  {
    IPC::Encoder::~Encoder(result, v7);
    return bmalloc::api::tzoneFree(v9, v10);
  }

  return result;
}

WTF::StringImpl *WebKit::GPUConnectionToWebProcess::ensureAudioSession(WebKit::GPUConnectionToWebProcess *a1, uint64_t *a2)
{
  v3 = WebKit::GPUConnectionToWebProcess::audioSessionProxy(a1, a2);
  ++*(v3 + 16);
  WebKit::RemoteAudioSessionProxy::configuration(v3, v8);
  v4 = *a2;
  *a2 = 0;
  (*(*v4 + 16))(v4, v8);
  (*(*v4 + 8))(v4);
  v6 = v9;
  v9 = 0;
  if (v6 && atomic_fetch_add_explicit(v6, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v6, v5);
  }

  result = v8[0];
  v8[0] = 0;
  if (result && atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    result = WTF::StringImpl::destroy(result, v5);
  }

  if (*(v3 + 16) == 1)
  {
    return (*(*v3 + 24))(v3);
  }

  --*(v3 + 16);
  return result;
}

uint64_t WebKit::GPUConnectionToWebProcess::mediaSessionHelperProxy(WebKit::GPUConnectionToWebProcess *this, void *a2)
{
  result = *(this + 33);
  if (!result)
  {
    if (WebKit::RemoteMediaSessionHelperProxy::s_heapRef)
    {
      NonCompact = bmalloc::api::tzoneAllocateNonCompact(WebKit::RemoteMediaSessionHelperProxy::s_heapRef, a2);
    }

    else
    {
      NonCompact = WebKit::RemoteMediaSessionHelperProxy::operatorNewSlow(0x38);
    }

    result = WebKit::RemoteMediaSessionHelperProxy::RemoteMediaSessionHelperProxy(NonCompact, this);
    if (*(this + 33))
    {
      result = 1469;
      __break(0xC471u);
    }

    else
    {
      *(this + 33) = result;
    }
  }

  return result;
}

uint64_t WebKit::GPUConnectionToWebProcess::legacyCdmFactoryProxy(WebKit::GPUConnectionToWebProcess *this, void *a2)
{
  v2 = *(this + 34);
  if (!v2)
  {
    v2 = WebKit::RemoteLegacyCDMFactoryProxy::operator new(0x38, a2);
    *(v2 + 16) = 1;
    *v2 = &unk_1F10FC5B8;
    *(v2 + 8) = 0;
    WTF::WeakPtrFactory<WebPushD::PushServiceConnection,WTF::DefaultWeakPtrImpl>::initializeIfNeeded(this + 2, this);
    v5 = *(this + 1);
    atomic_fetch_add(v5, 1u);
    *(v2 + 24) = v5;
    *(v2 + 32) = 0;
    *(v2 + 40) = 0;
    *(v2 + 48) = 0;
    v6 = *(this + 34);
    *(this + 34) = v2;
    if (v6)
    {
      WTF::RefCounted<WebKit::RemoteLegacyCDMFactoryProxy>::deref((v6 + 16), v4);
      return *(this + 34);
    }
  }

  return v2;
}

_DWORD *WebKit::GPUConnectionToWebProcess::createAudioHardwareListener(_DWORD *result, void *a2)
{
  v20 = a2;
  if (a2 == -1 || !a2)
  {
    __break(0xC471u);
    JUMPOUT(0x19DB42560);
  }

  v3 = result;
  v4 = *(result + 38);
  if (!v4)
  {
    result = WTF::HashTable<WTF::ObjectIdentifierGeneric<WebKit::RemoteAudioHardwareListenerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::RemoteAudioHardwareListenerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,std::unique_ptr<WebKit::RemoteAudioHardwareListenerProxy>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::RemoteAudioHardwareListenerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,std::unique_ptr<WebKit::RemoteAudioHardwareListenerProxy>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::RemoteAudioHardwareListenerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::RemoteAudioHardwareListenerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,std::unique_ptr<WebKit::RemoteAudioHardwareListenerProxy>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::RemoteAudioHardwareListenerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::RemoteAudioHardwareListenerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<std::unique_ptr<WebKit::RemoteAudioHardwareListenerProxy>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::RemoteAudioHardwareListenerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::expand(result + 38);
    v4 = *(v3 + 304);
  }

  v5 = *(v4 - 8);
  v6 = (a2 + ~(a2 << 32)) ^ ((a2 + ~(a2 << 32)) >> 22);
  v7 = 9 * ((v6 + ~(v6 << 13)) ^ ((v6 + ~(v6 << 13)) >> 8));
  v8 = (v7 ^ (v7 >> 15)) + ~((v7 ^ (v7 >> 15)) << 27);
  v9 = v5 & ((v8 >> 31) ^ v8);
  v10 = (v4 + 16 * v9);
  v11 = *v10;
  if (*v10)
  {
    v12 = 0;
    v13 = 1;
    while (v11 != a2)
    {
      if (v11 == -1)
      {
        v12 = v10;
      }

      v9 = (v9 + v13) & v5;
      v10 = (v4 + 16 * v9);
      v11 = *v10;
      ++v13;
      if (!*v10)
      {
        if (v12)
        {
          *v12 = 0;
          v12[1] = 0;
          --*(*(v3 + 304) - 16);
          v10 = v12;
        }

        goto LABEL_13;
      }
    }
  }

  else
  {
LABEL_13:
    *v10 = a2;
    if (WebKit::RemoteAudioHardwareListenerProxy::s_heapRef)
    {
      NonCompact = bmalloc::api::tzoneAllocateNonCompact(WebKit::RemoteAudioHardwareListenerProxy::s_heapRef, a2);
    }

    else
    {
      NonCompact = WebKit::RemoteAudioHardwareListenerProxy::operatorNewSlow(0x28);
    }

    v15 = NonCompact;
    WebKit::RemoteAudioHardwareListenerProxy::RemoteAudioHardwareListenerProxy(NonCompact, v3, &v20);
    result = std::unique_ptr<WebKit::RemoteAudioHardwareListenerProxy>::reset[abi:sn200100](v10 + 1, v15);
    v16 = *(v3 + 304);
    if (v16)
    {
      v17 = *(v16 - 12) + 1;
    }

    else
    {
      v17 = 1;
    }

    *(v16 - 12) = v17;
    v18 = (*(v16 - 16) + v17);
    v19 = *(v16 - 4);
    if (v19 > 0x400)
    {
      if (v19 > 2 * v18)
      {
        return result;
      }
    }

    else if (3 * v19 > 4 * v18)
    {
      return result;
    }

    return WTF::HashTable<WTF::ObjectIdentifierGeneric<WebKit::RemoteAudioHardwareListenerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::RemoteAudioHardwareListenerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,std::unique_ptr<WebKit::RemoteAudioHardwareListenerProxy>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::RemoteAudioHardwareListenerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,std::unique_ptr<WebKit::RemoteAudioHardwareListenerProxy>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::RemoteAudioHardwareListenerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::RemoteAudioHardwareListenerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,std::unique_ptr<WebKit::RemoteAudioHardwareListenerProxy>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::RemoteAudioHardwareListenerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::RemoteAudioHardwareListenerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<std::unique_ptr<WebKit::RemoteAudioHardwareListenerProxy>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::RemoteAudioHardwareListenerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::expand((v3 + 304));
  }

  return result;
}

WebKit::RemoteAudioHardwareListenerProxy *WebKit::GPUConnectionToWebProcess::releaseAudioHardwareListener(WebKit::RemoteAudioHardwareListenerProxy *result, uint64_t a2)
{
  v2 = *(result + 38);
  if (v2)
  {
    if (a2 == -1 || !a2)
    {
      __break(0xC471u);
      JUMPOUT(0x19DB426C8);
    }

    v3 = result;
    v4 = *(v2 - 8);
    v5 = (~(a2 << 32) + a2) ^ ((~(a2 << 32) + a2) >> 22);
    v6 = 9 * ((v5 + ~(v5 << 13)) ^ ((v5 + ~(v5 << 13)) >> 8));
    v7 = (v6 ^ (v6 >> 15)) + ~((v6 ^ (v6 >> 15)) << 27);
    v8 = v4 & ((v7 >> 31) ^ v7);
    v9 = *(v2 + 16 * v8);
    if (v9 != a2)
    {
      v10 = 1;
      while (v9)
      {
        v8 = (v8 + v10) & v4;
        v9 = *(v2 + 16 * v8);
        ++v10;
        if (v9 == a2)
        {
          goto LABEL_10;
        }
      }

      v8 = *(v2 - 4);
    }

LABEL_10:
    if (v8 != *(v2 - 4))
    {
      v11 = v2 + 16 * v8;
      *v11 = -1;
      result = std::unique_ptr<WebKit::RemoteAudioHardwareListenerProxy>::reset[abi:sn200100]((v11 + 8), 0);
      v12 = *(v3 + 38);
      v13 = vadd_s32(*(v12 - 16), 0xFFFFFFFF00000001);
      *(v12 - 16) = v13;
      v14 = *(v12 - 4);
      if (6 * v13.i32[1] < v14 && v14 >= 9)
      {

        return WTF::HashTable<WTF::ObjectIdentifierGeneric<WebKit::RemoteAudioHardwareListenerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::RemoteAudioHardwareListenerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,std::unique_ptr<WebKit::RemoteAudioHardwareListenerProxy>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::RemoteAudioHardwareListenerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,std::unique_ptr<WebKit::RemoteAudioHardwareListenerProxy>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::RemoteAudioHardwareListenerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::RemoteAudioHardwareListenerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,std::unique_ptr<WebKit::RemoteAudioHardwareListenerProxy>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::RemoteAudioHardwareListenerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::RemoteAudioHardwareListenerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<std::unique_ptr<WebKit::RemoteAudioHardwareListenerProxy>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::RemoteAudioHardwareListenerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::rehash(v3 + 38, v14 >> 1);
      }
    }
  }

  return result;
}

uint64_t WebKit::GPUConnectionToWebProcess::createRemoteCommandListener(uint64_t a1, void *a2)
{
  v7 = a2;
  if (WebKit::RemoteRemoteCommandListenerProxy::s_heapRef)
  {
    NonCompact = bmalloc::api::tzoneAllocateNonCompact(WebKit::RemoteRemoteCommandListenerProxy::s_heapRef, a2);
  }

  else
  {
    NonCompact = WebKit::RemoteRemoteCommandListenerProxy::operatorNewSlow(0x40);
  }

  result = WebKit::RemoteRemoteCommandListenerProxy::RemoteRemoteCommandListenerProxy(NonCompact, a1, &v7);
  v5 = *(a1 + 312);
  *(a1 + 312) = result;
  if (v5)
  {
    if (v5[4] == 1)
    {
      v6 = *(*v5 + 24);

      return v6(v5);
    }

    else
    {
      --v5[4];
    }
  }

  return result;
}

uint64_t WebKit::GPUConnectionToWebProcess::releaseRemoteCommandListener(uint64_t a1, uint64_t a2)
{
  result = *(a1 + 312);
  if (result && *(result + 40) == a2)
  {
    *(a1 + 312) = 0;
    if (*(result + 16) == 1)
    {
      return (*(*result + 24))();
    }

    else
    {
      --*(result + 16);
    }
  }

  return result;
}

void WebKit::GPUConnectionToWebProcess::setMediaOverridesForTesting(uint64_t a1, _BYTE *a2)
{
  v16 = *MEMORY[0x1E69E9840];
  if ((*(a1 + 344) & 4) != 0)
  {
    WebCore::VP9TestingOverrides::singleton(a1);
    v7 = WebCore::VP9TestingOverrides::setHardwareDecoderDisabled();
    WebCore::VP9TestingOverrides::singleton(v7);
    v8 = WebCore::VP9TestingOverrides::setVP9DecoderDisabled();
    WebCore::VP9TestingOverrides::singleton(v8);
    v9 = WebCore::VP9TestingOverrides::setVP9ScreenSizeAndScale();
    WebCore::SystemBatteryStatusTestingOverrides::singleton(v9);
    HasAC = WebCore::SystemBatteryStatusTestingOverrides::setHasAC();
    v11 = WebCore::SystemBatteryStatusTestingOverrides::singleton(HasAC);
    v12 = a2 + 2;

    goto __ZN7WebCore35SystemBatteryStatusTestingOverrides13setHasBatteryEONSt3__18optionalIbEE;
  }

  if ((a2[1] & 1) == 0 && (a2[3] & 1) == 0 && (a2[5] & 1) == 0 && (a2[7] & 1) == 0 && a2[32] != 1)
  {
    v4 = WebCore::VP9TestingOverrides::singleton(a1);
    v5 = WebCore::VP9TestingOverrides::resetOverridesToDefaultValues(v4);
    v6 = WebCore::SystemBatteryStatusTestingOverrides::singleton(v5);

    MEMORY[0x1EEE5A1E8](v6);
    return;
  }

  v13 = qword_1ED6416C8;
  v11 = os_log_type_enabled(qword_1ED6416C8, OS_LOG_TYPE_FAULT);
  if (v11)
  {
    v14 = 136446210;
    v15 = "void WebKit::GPUConnectionToWebProcess::setMediaOverridesForTesting(MediaOverridesForTesting)";
    _os_log_fault_impl(&dword_19D52D000, v13, OS_LOG_TYPE_FAULT, "/Library/Caches/com.apple.xbs/Sources/WebKit/Source/WebKit/GPUProcess/GPUConnectionToWebProcess.cpp 951: Invalid message dispatched %{public}s", &v14, 0xCu);
  }

  *(*(a1 + 56) + 94) = 1;
  if (IPC::s_shouldCrashOnMessageCheckFailure == 1)
  {
    __break(0xC471u);
__ZN7WebCore35SystemBatteryStatusTestingOverrides13setHasBatteryEONSt3__18optionalIbEE:
    MEMORY[0x1EEE5A1E0](v11, v12);
  }
}

BOOL WebKit::GPUConnectionToWebProcess::dispatchMessage(WebKit::GPUConnectionToWebProcess *this, IPC::Connection *a2, IPC::Decoder *a3)
{
  v6 = *(a3 + 25);
  if (v6 >= 0x107F)
  {
    v6 = 4223;
  }

  v7 = LOBYTE((&IPC::Detail::messageDescriptions)[3 * v6 + 2]);
  if (v7 > 92)
  {
    if (v7 <= 98)
    {
      if (v7 > 95)
      {
        if (v7 == 96)
        {
          v24 = *(this + 36);
          if (!v24)
          {
            if (WebKit::RemoteMediaEngineConfigurationFactoryProxy::s_heapRef)
            {
              NonCompact = bmalloc::api::tzoneAllocateNonCompact(WebKit::RemoteMediaEngineConfigurationFactoryProxy::s_heapRef, a2);
            }

            else
            {
              NonCompact = WebKit::RemoteMediaEngineConfigurationFactoryProxy::operatorNewSlow(0x20);
            }

            v26 = NonCompact;
            *NonCompact = &unk_1F10FC740;
            *(NonCompact + 1) = 0;
            *(NonCompact + 2) = this;
            v27 = WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::GPUConnectionToWebProcess,(WTF::DestructionThread)1>::controlBlock(this + 2);
            *(v26 + 3) = WTF::ThreadSafeWeakPtrControlBlock::weakRef(v27);
            if (*(this + 36))
            {
              __break(0xC471u);
              JUMPOUT(0x19DB43020);
            }

            std::unique_ptr<WebKit::RemoteMediaEngineConfigurationFactoryProxy>::reset[abi:sn200100](this + 36, v26);
            v24 = *(this + 36);
          }

          WebKit::RemoteMediaEngineConfigurationFactoryProxy::ref(v24);
          WebKit::RemoteMediaEngineConfigurationFactoryProxy::didReceiveMessage(v24, a2, a3);
          WebKit::RemoteMediaEngineConfigurationFactoryProxy::deref(v24);
          return 1;
        }

        v11 = *(this + 16);
        ++*(v11 + 4);
        if (v7 == 97)
        {
          WebKit::RemoteMediaPlayerManagerProxy::didReceiveMessage(v11, a2, a3);
        }

        else
        {
          WebKit::RemoteMediaPlayerManagerProxy::didReceivePlayerMessage(v11, a2, a3);
        }

        goto LABEL_56;
      }

      if (v7 == 93)
      {
        v31 = WebKit::GPUConnectionToWebProcess::legacyCdmFactoryProxy(this, a2);
        v13 = (v31 + 16);
        ++*(v31 + 16);
        WebKit::RemoteLegacyCDMFactoryProxy::didReceiveCDMMessage(v31, a2, a3);
      }

      else
      {
        if (v7 != 95)
        {
          goto LABEL_73;
        }

        v18 = WebKit::GPUConnectionToWebProcess::legacyCdmFactoryProxy(this, a2);
        v13 = (v18 + 16);
        ++*(v18 + 16);
        WebKit::RemoteLegacyCDMFactoryProxy::didReceiveCDMSessionMessage(v18, a2, a3);
      }

      goto LABEL_65;
    }

    if (v7 <= 110)
    {
      if (v7 == 99)
      {
        v34 = WebKit::GPUConnectionToWebProcess::remoteMediaResourceManager(this, a2);
        v35 = (v34 + 8);
        while (1)
        {
          v36 = *v35;
          if ((*v35 & 1) == 0)
          {
            break;
          }

          v37 = *v35;
          atomic_compare_exchange_strong_explicit(v35, &v37, v36 + 2, memory_order_relaxed, memory_order_relaxed);
          if (v37 == v36)
          {
            goto LABEL_77;
          }
        }

        WTF::ThreadSafeWeakPtrControlBlock::strongRef(*v35);
LABEL_77:
        WebKit::RemoteMediaResourceManager::didReceiveMessage(v34, a2, a3);
        WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::WorkQueueMessageReceiver<(WTF::DestructionThread)0>,(WTF::DestructionThread)0>::deref(v35, v39);
        return 1;
      }

      if (v7 != 103)
      {
        goto LABEL_73;
      }

      v20 = WebKit::GPUConnectionToWebProcess::mediaSessionHelperProxy(this, a2);
      WebKit::RemoteMediaSessionHelperProxy::didReceiveMessage(v20, a2, a3);
    }

    else
    {
      if (v7 != 111)
      {
        if (v7 == 123)
        {
          WebKit::GPUConnectionToWebProcess::sharedResourceCache(this, a2, &v40);
          v23 = v40;
          WebKit::RemoteSharedResourceCache::didReceiveMessage(v40, a2, a3);
          if (v23)
          {
            WTF::ThreadSafeRefCounted<WebKit::RemoteSharedResourceCache,(WTF::DestructionThread)0>::deref(v23 + 4);
          }

          return 1;
        }

        if (v7 != 149)
        {
          goto LABEL_73;
        }

        v11 = WebKit::GPUConnectionToWebProcess::userMediaCaptureManagerProxy(this);
        ++*(v11 + 4);
        WebKit::UserMediaCaptureManagerProxy::didReceiveMessage(v11, a2, a3);
        goto LABEL_56;
      }

      v11 = *(this + 39);
      if (v11)
      {
        ++*(v11 + 4);
        WebKit::RemoteRemoteCommandListenerProxy::didReceiveMessage(v11, a2, a3);
        goto LABEL_56;
      }
    }

    return 1;
  }

  if (v7 <= 68)
  {
    if (v7 > 58)
    {
      if (v7 != 59)
      {
        if (v7 == 65)
        {
          v21 = WebKit::GPUConnectionToWebProcess::cdmFactoryProxy(this, a2);
          v9 = (v21 + 16);
          ++*(v21 + 4);
          WebKit::RemoteCDMFactoryProxy::didReceiveMessage(v21, a2, a3);
          goto LABEL_67;
        }

        if (v7 == 67)
        {
          v8 = WebKit::GPUConnectionToWebProcess::cdmFactoryProxy(this, a2);
          v9 = (v8 + 16);
          ++*(v8 + 4);
          WebKit::RemoteCDMFactoryProxy::didReceiveCDMInstanceMessage(v8, a2, a3);
LABEL_67:
          WTF::RefCounted<WebKit::RemoteCDMFactoryProxy>::deref(v9, v10);
          return 1;
        }

        goto LABEL_73;
      }

      v11 = WebKit::GPUConnectionToWebProcess::audioSessionProxy(this, a2);
      ++*(v11 + 4);
      WebKit::RemoteAudioSessionProxy::didReceiveMessage(v11, a2, a3);
LABEL_56:
      if (*(v11 + 4) == 1)
      {
        (*(*v11 + 24))(v11);
      }

      else
      {
        --*(v11 + 4);
      }

      return 1;
    }

    if (v7 != 55)
    {
      if (v7 != 57)
      {
        goto LABEL_73;
      }

      v15 = *(this + 19);
      if (v15)
      {
        goto LABEL_32;
      }

      if (WebKit::RemoteAudioMediaStreamTrackRendererInternalUnitManager::s_heapRef)
      {
        v16 = bmalloc::api::tzoneAllocateNonCompact(WebKit::RemoteAudioMediaStreamTrackRendererInternalUnitManager::s_heapRef, a2);
      }

      else
      {
        v16 = WebKit::RemoteAudioMediaStreamTrackRendererInternalUnitManager::operatorNewSlow(0x28);
      }

      v15 = v16;
      *v16 = &unk_1F10FE330;
      *(v16 + 1) = 0;
      *(v16 + 2) = 0;
      *(v16 + 3) = this;
      v17 = WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::GPUConnectionToWebProcess,(WTF::DestructionThread)1>::controlBlock(this + 2);
      *(v15 + 4) = WTF::ThreadSafeWeakPtrControlBlock::weakRef(v17);
      if (!*(this + 19))
      {
        *(this + 19) = v15;
LABEL_32:
        WebKit::RemoteAudioMediaStreamTrackRendererInternalUnitManager::ref(v15);
        (*(*v15 + 32))(v15, a2, a3);
        WebKit::RemoteAudioMediaStreamTrackRendererInternalUnitManager::deref(v15);
        return 1;
      }

LABEL_84:
      __break(0xC471u);
      JUMPOUT(0x19DB43000);
    }

    v28 = *(this + 13);
    if (!v28)
    {
      if (WebKit::RemoteAudioDestinationManager::s_heapRef)
      {
        v29 = bmalloc::api::tzoneAllocateNonCompact(WebKit::RemoteAudioDestinationManager::s_heapRef, a2);
      }

      else
      {
        v29 = WebKit::RemoteAudioDestinationManager::operatorNewSlow(0x28);
      }

      v28 = v29;
      *v29 = &unk_1F10EAEC8;
      *(v29 + 1) = 0;
      *(v29 + 2) = 0;
      *(v29 + 3) = this;
      v30 = WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::GPUConnectionToWebProcess,(WTF::DestructionThread)1>::controlBlock(this + 2);
      *(v28 + 4) = WTF::ThreadSafeWeakPtrControlBlock::weakRef(v30);
      if (*(this + 13))
      {
        goto LABEL_84;
      }

      *(this + 13) = v28;
    }

    WebKit::RemoteAudioDestinationManager::ref(v28);
    (*(*v28 + 32))(v28, a2, a3);
    WebKit::RemoteAudioDestinationManager::deref(v28);
    return 1;
  }

  if (v7 > 82)
  {
    if (v7 != 83)
    {
      if (v7 == 90)
      {
        v22 = WebKit::GPUConnectionToWebProcess::imageDecoderAVFProxy(this, a2);
        WebKit::RemoteImageDecoderAVFProxy::ref(v22);
        WebKit::RemoteImageDecoderAVFProxy::didReceiveMessage(v22, a2, a3);
        WebKit::RemoteImageDecoderAVFProxy::deref(v22);
        return 1;
      }

      if (v7 != 92)
      {
        goto LABEL_73;
      }

      v12 = WebKit::GPUConnectionToWebProcess::legacyCdmFactoryProxy(this, a2);
      v13 = (v12 + 16);
      ++*(v12 + 16);
      WebKit::RemoteLegacyCDMFactoryProxy::didReceiveMessage(v12, a2, a3);
LABEL_65:
      WTF::RefCounted<WebKit::RemoteLegacyCDMFactoryProxy>::deref(v13, v14);
      return 1;
    }

    return 1;
  }

  if (v7 == 69)
  {
    v32 = WebKit::GPUConnectionToWebProcess::cdmFactoryProxy(this, a2);
    v9 = (v32 + 16);
    ++*(v32 + 4);
    WebKit::RemoteCDMFactoryProxy::didReceiveCDMInstanceSessionMessage(v32, a2, a3);
    goto LABEL_67;
  }

  if (v7 == 70)
  {
    v19 = WebKit::GPUConnectionToWebProcess::cdmFactoryProxy(this, a2);
    v9 = (v19 + 16);
    ++*(v19 + 4);
    WebKit::RemoteCDMFactoryProxy::didReceiveCDMMessage(v19, a2, a3);
    goto LABEL_67;
  }

LABEL_73:
  v38 = (this + 64);

  return IPC::MessageReceiverMap::dispatchMessage(v38, a2, a3);
}

uint64_t WebKit::GPUConnectionToWebProcess::dispatchSyncMessage(WebKit::GPUConnectionToWebProcess *a1, void *a2, uint64_t a3, uint64_t *a4)
{
  v7 = *(a3 + 50);
  if (v7 >= 0x107F)
  {
    v7 = 4223;
  }

  v8 = LOBYTE((&IPC::Detail::messageDescriptions)[3 * v7 + 2]);
  if (v8 <= 89)
  {
    if (v8 > 68)
    {
      switch(v8)
      {
        case 'E':
          v24 = WebKit::GPUConnectionToWebProcess::cdmFactoryProxy(a1, a2);
          v12 = (v24 + 16);
          ++*(v24 + 4);
          v13 = WebKit::RemoteCDMFactoryProxy::didReceiveSyncCDMInstanceSessionMessage(v24, a2, a3);
          break;
        case 'F':
          v26 = WebKit::GPUConnectionToWebProcess::cdmFactoryProxy(a1, a2);
          v12 = (v26 + 16);
          ++*(v26 + 4);
          v13 = WebKit::RemoteCDMFactoryProxy::didReceiveSyncCDMMessage(v26, a2, a3, a4);
          break;
        case 'S':
          return 1;
        default:
          goto LABEL_40;
      }
    }

    else
    {
      switch(v8)
      {
        case ';':
          v9 = WebKit::GPUConnectionToWebProcess::audioSessionProxy(a1, a2);
          ++*(v9 + 4);
          v10 = WebKit::RemoteAudioSessionProxy::didReceiveSyncMessage(v9, a2, a3, a4);
          goto LABEL_33;
        case 'A':
          v25 = WebKit::GPUConnectionToWebProcess::cdmFactoryProxy(a1, a2);
          v12 = (v25 + 16);
          ++*(v25 + 4);
          v13 = WebKit::RemoteCDMFactoryProxy::didReceiveSyncMessage(v25, a2, a3, a4);
          break;
        case 'C':
          v11 = WebKit::GPUConnectionToWebProcess::cdmFactoryProxy(a1, a2);
          v12 = (v11 + 16);
          ++*(v11 + 4);
          v13 = WebKit::RemoteCDMFactoryProxy::didReceiveSyncCDMInstanceMessage(v11, a2, a3, a4);
          break;
        default:
          goto LABEL_40;
      }
    }

    v20 = v13;
    WTF::RefCounted<WebKit::RemoteCDMFactoryProxy>::deref(v12, v14);
    return v20;
  }

  if (v8 <= 94)
  {
    if (v8 != 90)
    {
      if (v8 == 92)
      {
        v23 = WebKit::GPUConnectionToWebProcess::legacyCdmFactoryProxy(a1, a2);
        v16 = (v23 + 16);
        ++*(v23 + 16);
        v17 = WebKit::RemoteLegacyCDMFactoryProxy::didReceiveSyncMessage(v23, a2, a3, a4);
      }

      else
      {
        if (v8 != 93)
        {
          goto LABEL_40;
        }

        v15 = WebKit::GPUConnectionToWebProcess::legacyCdmFactoryProxy(a1, a2);
        v16 = (v15 + 16);
        ++*(v15 + 16);
        v17 = WebKit::RemoteLegacyCDMFactoryProxy::didReceiveSyncCDMMessage(v15, a2, a3, a4);
      }

      goto LABEL_31;
    }

    v22 = WebKit::GPUConnectionToWebProcess::imageDecoderAVFProxy(a1, a2);
    WebKit::RemoteImageDecoderAVFProxy::ref(v22);
    v20 = WebKit::RemoteImageDecoderAVFProxy::didReceiveSyncMessage(v22, a2, a3, a4);
    WebKit::RemoteImageDecoderAVFProxy::deref(v22);
    return v20;
  }

  if (v8 > 97)
  {
    if (v8 != 98)
    {
      if (v8 != 149)
      {
        goto LABEL_40;
      }

      v19 = WebKit::GPUConnectionToWebProcess::userMediaCaptureManagerProxy(a1);
      ++v19[4];
      (*(*v19 + 48))(v19, a2, a3, a4);
      if (v19[4] == 1)
      {
        (*(*v19 + 24))(v19);
      }

      else
      {
        --v19[4];
      }

      return 1;
    }

    v9 = *(a1 + 16);
    ++*(v9 + 4);
    v10 = WebKit::RemoteMediaPlayerManagerProxy::didReceiveSyncPlayerMessage(v9, a2, a3, a4);
LABEL_33:
    v20 = v10;
    if (*(v9 + 4) == 1)
    {
      (*(*v9 + 24))(v9);
    }

    else
    {
      --*(v9 + 4);
    }

    return v20;
  }

  if (v8 == 95)
  {
    v21 = WebKit::GPUConnectionToWebProcess::legacyCdmFactoryProxy(a1, a2);
    v16 = (v21 + 16);
    ++*(v21 + 16);
    v17 = WebKit::RemoteLegacyCDMFactoryProxy::didReceiveSyncCDMSessionMessage(v21, a2, a3, a4);
LABEL_31:
    v20 = v17;
    WTF::RefCounted<WebKit::RemoteLegacyCDMFactoryProxy>::deref(v16, v18);
    return v20;
  }

  if (v8 == 97)
  {
    v9 = *(a1 + 16);
    ++*(v9 + 4);
    v10 = WebKit::RemoteMediaPlayerManagerProxy::didReceiveSyncMessage(v9, a2, a3, a4);
    goto LABEL_33;
  }

LABEL_40:
  v28 = a1 + 64;

  return IPC::MessageReceiverMap::dispatchSyncMessage(v28, a2, a3, a4);
}

uint64_t *WebKit::GPUConnectionToWebProcess::mediaCacheDirectory(WebKit::GPUConnectionToWebProcess *this)
{
  v1 = *(this + 10);
  v5 = *(this + 17);
  v2 = WTF::HashTable<PAL::SessionID,WTF::KeyValuePair<PAL::SessionID,WebKit::GPUProcess::GPUSession>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<PAL::SessionID,WebKit::GPUProcess::GPUSession>>,WTF::DefaultHash<PAL::SessionID>,WTF::HashMap<PAL::SessionID,WebKit::GPUProcess::GPUSession,WTF::DefaultHash<PAL::SessionID>,WTF::HashTraits<PAL::SessionID>,WTF::HashTraits<WebKit::GPUProcess::GPUSession>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<PAL::SessionID>,WTF::FastMalloc>::find<WTF::IdentityHashTranslator<WTF::HashMap<PAL::SessionID,WebKit::GPUProcess::GPUSession,WTF::DefaultHash<PAL::SessionID>,WTF::HashTraits<PAL::SessionID>,WTF::HashTraits<WebKit::GPUProcess::GPUSession>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<PAL::SessionID>>,(WTF::ShouldValidateKey)1,PAL::SessionID>((v1 + 200), &v5);
  v3 = *(v1 + 200);
  if (v3)
  {
    v3 += 3 * *(v3 - 1);
  }

  if (v3 == v2)
  {
    return MEMORY[0x1E696EBA0];
  }

  else
  {
    return v2 + 1;
  }
}

uint64_t *WebKit::GPUConnectionToWebProcess::mediaKeysStorageDirectory(WebKit::GPUConnectionToWebProcess *this)
{
  v1 = *(this + 10);
  v5 = *(this + 17);
  v2 = WTF::HashTable<PAL::SessionID,WTF::KeyValuePair<PAL::SessionID,WebKit::GPUProcess::GPUSession>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<PAL::SessionID,WebKit::GPUProcess::GPUSession>>,WTF::DefaultHash<PAL::SessionID>,WTF::HashMap<PAL::SessionID,WebKit::GPUProcess::GPUSession,WTF::DefaultHash<PAL::SessionID>,WTF::HashTraits<PAL::SessionID>,WTF::HashTraits<WebKit::GPUProcess::GPUSession>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<PAL::SessionID>,WTF::FastMalloc>::find<WTF::IdentityHashTranslator<WTF::HashMap<PAL::SessionID,WebKit::GPUProcess::GPUSession,WTF::DefaultHash<PAL::SessionID>,WTF::HashTraits<PAL::SessionID>,WTF::HashTraits<WebKit::GPUProcess::GPUSession>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<PAL::SessionID>>,(WTF::ShouldValidateKey)1,PAL::SessionID>((v1 + 200), &v5);
  v3 = *(v1 + 200);
  if (v3)
  {
    v3 += 3 * *(v3 - 1);
  }

  if (v3 == v2)
  {
    return MEMORY[0x1E696EBA0];
  }

  else
  {
    return v2 + 2;
  }
}

uint64_t WebKit::GPUConnectionToWebProcess::setOrientationForMediaCapture(WebKit::GPUConnectionToWebProcess *this, uint64_t a2)
{
  v3 = WebKit::GPUConnectionToWebProcess::userMediaCaptureManagerProxy(this);
  ++v3[4];
  result = WebKit::UserMediaCaptureManagerProxy::setOrientation(v3, a2);
  if (v3[4] == 1)
  {
    v5 = *(*v3 + 24);

    return v5(v3);
  }

  else
  {
    --v3[4];
  }

  return result;
}

IPC::Encoder *IPC::Connection::send<Messages::GPUProcessProxy::StartMonitoringCaptureDeviceRotation>(uint64_t *a1, uint64_t **a2)
{
  v4 = IPC::Encoder::operator new(0x238, a2);
  *v4 = 65;
  *(v4 + 68) = 0;
  *(v4 + 70) = 0;
  *(v4 + 69) = 0;
  *(v4 + 2) = 0;
  *(v4 + 3) = 0;
  *(v4 + 1) = 0;
  IPC::Encoder::encodeHeader(v4);
  v9 = v4;
  IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(v4, **a2);
  IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(v4, a2[1]);
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

IPC::Encoder *IPC::Connection::send<Messages::GPUProcessProxy::StopMonitoringCaptureDeviceRotation>(uint64_t *a1, uint64_t **a2)
{
  v4 = IPC::Encoder::operator new(0x238, a2);
  *v4 = 67;
  *(v4 + 68) = 0;
  *(v4 + 70) = 0;
  *(v4 + 69) = 0;
  *(v4 + 2) = 0;
  *(v4 + 3) = 0;
  *(v4 + 1) = 0;
  IPC::Encoder::encodeHeader(v4);
  v9 = v4;
  IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(v4, **a2);
  IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(v4, a2[1]);
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

_BYTE *WebKit::GPUConnectionToWebProcess::enableMockMediaSource(_BYTE *this)
{
  if ((this[322] & 1) == 0)
  {
    v1 = this;
    this = WebCore::MediaStrategy::addMockMediaSourceEngine(this);
    v1[322] = 1;
  }

  return this;
}

uint64_t WebKit::GPUConnectionToWebProcess::updateSharedPreferencesForWebProcess(uint64_t a1, __int128 *a2)
{
  v3 = (a1 + 336);
  v4 = *a2;
  *(a1 + 351) = *(a2 + 15);
  *(a1 + 336) = v4;
  v5 = *(a1 + 200);
  v6 = (v5 + 8);
  while (1)
  {
    v7 = *v6;
    if ((*v6 & 1) == 0)
    {
      break;
    }

    v8 = *v6;
    atomic_compare_exchange_strong_explicit(v6, &v8, v7 + 2, memory_order_relaxed, memory_order_relaxed);
    if (v8 == v7)
    {
      goto LABEL_6;
    }
  }

  WTF::ThreadSafeWeakPtrControlBlock::strongRef(*v6);
LABEL_6:
  v13 = *v3;
  v14 = *(v3 + 2);
  WebKit::LibWebRTCCodecsProxy::updateSharedPreferencesForWebProcess(v5, &v13);
  WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::WorkQueueMessageReceiver<(WTF::DestructionThread)0>,(WTF::DestructionThread)0>::deref((v5 + 8), v9);
  v10 = *(a1 + 168);
  v13 = *v3;
  v14 = *(v3 + 2);
  updated = WebKit::RemoteSampleBufferDisplayLayerManager::updateSharedPreferencesForWebProcess(v10, &v13);

  return WebCore::AudioSession::enableMediaPlayback(updated);
}

void WebKit::GPUConnectionToWebProcess::presentingApplicationAuditToken(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v15 = a2;
  v5 = WTF::HashTable<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WebKit::CoreIPCAuditToken>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WebKit::CoreIPCAuditToken>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WebKit::CoreIPCAuditToken,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WebKit::CoreIPCAuditToken>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::find<WTF::IdentityHashTranslator<WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WebKit::CoreIPCAuditToken,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WebKit::CoreIPCAuditToken>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,(WTF::ShouldValidateKey)1,WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>((a1 + 208), &v15);
  v6 = *(a1 + 208);
  if (v6)
  {
    v6 += 5 * *(v6 - 1);
  }

  if (v6 == v5)
  {
    v9 = *(*(a1 + 80) + 40);
    if (v9)
    {
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
      IPC::Connection::getAuditToken(v9, v13);
      WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v9);
    }

    else
    {
      IPC::Connection::getAuditToken(0, v13);
    }

    v8 = v14;
    if (v14 != 1)
    {
      *a3 = 0;
      *(a3 + 32) = 0;
      return;
    }

    v12 = v13[1];
    *a3 = v13[0];
    *(a3 + 16) = v12;
  }

  else
  {
    v7 = *(v5 + 3);
    *a3 = *(v5 + 1);
    *(a3 + 16) = v7;
    v8 = 1;
  }

  *(a3 + 32) = v8;
}

uint64_t WebKit::GPUConnectionToWebProcess::setPresentingApplicationAuditToken(uint64_t result, uint64_t a2, uint64_t a3)
{
  v4 = result;
  if (*(a3 + 32) != 1)
  {
    v20 = *(result + 208);
    if (!v20)
    {
      return result;
    }

    if (a2 == -1)
    {
      __break(0xC471u);
      JUMPOUT(0x19DB43B90);
    }

    if (a2)
    {
      v21 = *(v20 - 8);
      v22 = (~(a2 << 32) + a2) ^ ((~(a2 << 32) + a2) >> 22);
      v23 = 9 * ((v22 + ~(v22 << 13)) ^ ((v22 + ~(v22 << 13)) >> 8));
      v24 = (v23 ^ (v23 >> 15)) + ~((v23 ^ (v23 >> 15)) << 27);
      v25 = v21 & ((v24 >> 31) ^ v24);
      v26 = (v20 + 40 * v25);
      v27 = *v26;
      if (*v26 != a2)
      {
        v28 = 1;
        while (v27)
        {
          v25 = (v25 + v28) & v21;
          v26 = (v20 + 40 * v25);
          v27 = *v26;
          ++v28;
          if (*v26 == a2)
          {
            goto LABEL_32;
          }
        }

        v26 = (v20 + 40 * *(v20 - 4));
      }

LABEL_32:
      v32 = *(v20 - 4);
      if ((v20 + 40 * v32) != v26)
      {
        *v26 = -1;
        v33 = vadd_s32(*(v20 - 16), 0xFFFFFFFF00000001);
        *(v20 - 16) = v33;
        if (6 * v33.i32[1] < v32 && v32 >= 9)
        {
          v35 = (result + 208);

          return WTF::HashTable<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WebKit::CoreIPCAuditToken>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WebKit::CoreIPCAuditToken>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WebKit::CoreIPCAuditToken,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WebKit::CoreIPCAuditToken>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::rehash(v35, v32 >> 1, 0);
        }
      }

      return result;
    }

LABEL_46:
    __break(0xC471u);
    JUMPOUT(0x19DB43B50);
  }

  if (a2 == -1)
  {
    goto LABEL_46;
  }

  if (!a2)
  {
    __break(0xC471u);
    JUMPOUT(0x19DB43B70);
  }

  v6 = *(result + 208);
  if (!v6)
  {
    result = WTF::HashTable<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WebKit::CoreIPCAuditToken>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WebKit::CoreIPCAuditToken>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WebKit::CoreIPCAuditToken,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WebKit::CoreIPCAuditToken>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::expand((result + 208), 0);
    v6 = *(v4 + 208);
  }

  v7 = *(v6 - 8);
  v8 = (~(a2 << 32) + a2) ^ ((~(a2 << 32) + a2) >> 22);
  v9 = 9 * ((v8 + ~(v8 << 13)) ^ ((v8 + ~(v8 << 13)) >> 8));
  v10 = (v9 ^ (v9 >> 15)) + ~((v9 ^ (v9 >> 15)) << 27);
  v11 = v7 & ((v10 >> 31) ^ v10);
  v12 = (v6 + 40 * v11);
  v13 = *v12;
  if (*v12)
  {
    v14 = 0;
    v15 = 1;
    do
    {
      if (v13 == a2)
      {
        v29 = *a3;
        *(v12 + 24) = *(a3 + 16);
        *(v12 + 8) = v29;
        return result;
      }

      if (v13 == -1)
      {
        v14 = v12;
      }

      v11 = (v11 + v15) & v7;
      v12 = (v6 + 40 * v11);
      v13 = *v12;
      ++v15;
    }

    while (*v12);
    if (v14)
    {
      *v14 = 0;
      *&v16 = -1;
      *(&v16 + 1) = -1;
      *(v14 + 8) = v16;
      *(v14 + 24) = v16;
      --*(*(v4 + 208) - 16);
      v12 = v14;
    }
  }

  *v12 = a2;
  v17 = *a3;
  *(v12 + 24) = *(a3 + 16);
  *(v12 + 8) = v17;
  v18 = *(v4 + 208);
  if (v18)
  {
    v19 = *(v18 - 12) + 1;
  }

  else
  {
    v19 = 1;
  }

  *(v18 - 12) = v19;
  v30 = (*(v18 - 16) + v19);
  v31 = *(v18 - 4);
  if (v31 > 0x400)
  {
    if (v31 > 2 * v30)
    {
      return result;
    }
  }

  else if (3 * v31 > 4 * v30)
  {
    return result;
  }

  return WTF::HashTable<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WebKit::CoreIPCAuditToken>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WebKit::CoreIPCAuditToken>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WebKit::CoreIPCAuditToken,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WebKit::CoreIPCAuditToken>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::expand((v4 + 208), v12);
}

WebKit::GPUProcess *WebKit::GPUProcess::GPUProcess(WebKit::GPUProcess *this)
{
  v8 = *MEMORY[0x1E69E9840];
  v2 = WebKit::AuxiliaryProcess::AuxiliaryProcess(this);
  *(v2 + 34) = 1;
  *v2 = &unk_1F10FAB60;
  *(v2 + 3) = &unk_1F10FAC40;
  *(v2 + 18) = 0;
  WTF::MonotonicTime::now(v2);
  *(this + 19) = v3;
  *(this + 40) = 0;
  *(this + 164) = 0;
  *(this + 21) = 0;
  *(this + 22) = 0;
  *(this + 46) = 0;
  *(this + 24) = 0;
  *(this + 25) = 0;
  WebCore::Timer::Timer<WebKit::GPUProcess,WebKit::GPUProcess>((this + 208), this);
  *(this + 33) = 0;
  *(this + 34) = 0;
  *(this + 144) = 0;
  *(this + 35) = 0;
  v4 = qword_1ED6416A0;
  if (os_log_type_enabled(qword_1ED6416A0, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 134217984;
    v7 = this;
    _os_log_impl(&dword_19D52D000, v4, OS_LOG_TYPE_DEFAULT, "%p - GPUProcess::GPUProcess:", &v6, 0xCu);
  }

  return this;
}

void WebKit::GPUProcess::tryExitIfUnused(WebKit::GPUProcess *this)
{
  v2 = WTF::HashTable<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::GPUConnectionToWebProcess,WTF::RawPtrTraits<WebKit::GPUConnectionToWebProcess>,WTF::DefaultRefDerefTraits<WebKit::GPUConnectionToWebProcess>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::GPUConnectionToWebProcess,WTF::RawPtrTraits<WebKit::GPUConnectionToWebProcess>,WTF::DefaultRefDerefTraits<WebKit::GPUConnectionToWebProcess>>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::GPUConnectionToWebProcess,WTF::RawPtrTraits<WebKit::GPUConnectionToWebProcess>,WTF::DefaultRefDerefTraits<WebKit::GPUConnectionToWebProcess>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::Ref<WebKit::GPUConnectionToWebProcess,WTF::RawPtrTraits<WebKit::GPUConnectionToWebProcess>,WTF::DefaultRefDerefTraits<WebKit::GPUConnectionToWebProcess>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::begin(this + 18);
  v3 = v2;
  v5 = v4;
  v6 = *(this + 18);
  if (v6)
  {
    v7 = (v6 + 16 * *(v6 - 4));
  }

  else
  {
    v7 = 0;
  }

  if (v7 != v2)
  {
    do
    {
      v8 = v3[1];
      v9 = atomic_load(&WebKit::ScopedRenderingResourcesRequest::s_requests);
      if (v9 || (*(v8 + 348) & 1) != 0)
      {
LABEL_62:
        if ((*(this + 30) & 0xFFFFFFFFFFFFLL) != 0)
        {

          WebCore::TimerBase::stopSlowCase((this + 208));
        }

        return;
      }

      v10 = *(v8 + 104);
      if (v10)
      {
        WebKit::RemoteAudioDestinationManager::ref(*(v8 + 104));
        if ((WebKit::RemoteAudioDestinationManager::allowsExitUnderMemoryPressure(v10) & 1) == 0)
        {
          WebKit::RemoteAudioDestinationManager::deref(v10);
          goto LABEL_62;
        }
      }

      v2 = *(v8 + 144);
      if (!v2)
      {
        goto LABEL_16;
      }

      v11 = *(v2 + 16);
      *(v2 + 16) = v11 + 1;
      v12 = *(v2 + 24);
      if (v12)
      {
        v13 = *(v12 - 12);
        v14 = v13 != 0;
        if (v11)
        {
          *(v2 + 16) = v11;
          if (v13)
          {
            goto LABEL_31;
          }

          goto LABEL_16;
        }
      }

      else
      {
        if (v11)
        {
          *(v2 + 16) = v11;
          goto LABEL_16;
        }

        v14 = 0;
      }

      v2 = (*(*v2 + 24))(v2);
      if (v14)
      {
        goto LABEL_31;
      }

LABEL_16:
      v15 = *(v8 + 152);
      if (v15 && (v16 = *(v15 + 16)) != 0 && *(v16 - 12) || (v2 = WebKit::RemoteSampleBufferDisplayLayerManager::allowsExitUnderMemoryPressure(*(v8 + 168)), !v2) || (v18 = *(v8 + 280)) != 0 && (v19 = *(v18 + 32)) != 0 && *(v19 - 12))
      {
LABEL_31:
        v30 = 0;
        if (!v10)
        {
          goto LABEL_33;
        }

LABEL_32:
        v2 = WebKit::RemoteAudioDestinationManager::deref(v10);
        goto LABEL_33;
      }

      v20 = *(v8 + 248);
      if (v20)
      {
        v22 = *(v20 + 16);
        v21 = v20 + 16;
        *v21 = v22 + 1;
        v23 = *(v21 + 40);
        if (v23)
        {
          v24 = *(v23 - 12);
          v2 = WTF::RefCounted<WebKit::RemoteCDMFactoryProxy>::deref(v21, v17);
          if (v24)
          {
            goto LABEL_31;
          }
        }

        else
        {
          WTF::RefCounted<WebKit::RemoteCDMFactoryProxy>::deref(v21, v17);
        }
      }

      v25 = *(v8 + 272);
      if (v25)
      {
        v27 = *(v25 + 16);
        v26 = v25 + 16;
        *v26 = v27 + 1;
        v28 = *(v26 + 24);
        if (v28)
        {
          v29 = *(v28 - 12);
          v2 = WTF::RefCounted<WebKit::RemoteLegacyCDMFactoryProxy>::deref(v26, v17);
          if (v29)
          {
            goto LABEL_31;
          }
        }

        else
        {
          WTF::RefCounted<WebKit::RemoteLegacyCDMFactoryProxy>::deref(v26, v17);
        }
      }

      v31 = *(v8 + 200);
      v32 = (v31 + 8);
      while (1)
      {
        v33 = *v32;
        if ((*v32 & 1) == 0)
        {
          break;
        }

        v34 = *v32;
        atomic_compare_exchange_strong_explicit(v32, &v34, v33 + 2, memory_order_relaxed, memory_order_relaxed);
        if (v34 == v33)
        {
          goto LABEL_44;
        }
      }

      WTF::ThreadSafeWeakPtrControlBlock::strongRef(*v32);
LABEL_44:
      v35 = atomic_load((v31 + 88));
      v30 = v35 ^ 1;
      v2 = WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::WorkQueueMessageReceiver<(WTF::DestructionThread)0>,(WTF::DestructionThread)0>::deref(v32, v17);
      if (v10)
      {
        goto LABEL_32;
      }

LABEL_33:
      if ((v30 & 1) == 0)
      {
        goto LABEL_62;
      }

      do
      {
        v3 += 2;
      }

      while (v3 != v5 && (*v3 + 1) <= 1);
    }

    while (v3 != v7);
  }

  v36 = WTF::MonotonicTime::now(v2);
  if (v37 - *(this + 19) >= 5.0 || (*(WTF::MemoryPressureHandler::singleton(v36) + 7) & 1) != 0)
  {
    if ((*(this + 30) & 0xFFFFFFFFFFFFLL) != 0)
    {
      WebCore::TimerBase::stopSlowCase((this + 208));
    }

    v38 = qword_1ED6416A0;
    if (os_log_type_enabled(qword_1ED6416A0, OS_LOG_TYPE_DEFAULT))
    {
      v44[0] = 0;
      _os_log_impl(&dword_19D52D000, v38, OS_LOG_TYPE_DEFAULT, "GPUProcess::tryExitIfUnused: GPUProcess is exiting because we are under memory pressure and the process is no longer useful.", v44, 2u);
    }

    v40 = *(this + 5);
    if (v40)
    {
      while (1)
      {
        v41 = *v40;
        if ((*v40 & 1) == 0)
        {
          break;
        }

        v42 = *v40;
        atomic_compare_exchange_strong_explicit(v40, &v42, v41 + 2, memory_order_relaxed, memory_order_relaxed);
        if (v42 == v41)
        {
          goto LABEL_60;
        }
      }

      WTF::ThreadSafeWeakPtrControlBlock::strongRef(*v40);
LABEL_60:
      IPC::Connection::send<Messages::GPUProcessProxy::ProcessIsReadyToExit>(v40, v39);
      WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v40);
    }

    else
    {
      IPC::Connection::send<Messages::GPUProcessProxy::ProcessIsReadyToExit>(0, v39);
    }
  }

  else
  {
    v43 = qword_1ED6416A0;
    if (os_log_type_enabled(qword_1ED6416A0, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_19D52D000, v43, OS_LOG_TYPE_DEFAULT, "GPUProcess::tryExitIfUnused: GPUProcess is idle and under memory pressure but it is not exiting because it has just launched", buf, 2u);
    }

    if ((*(this + 30) & 0xFFFFFFFFFFFFLL) == 0 || *((*(this + 30) & 0xFFFFFFFFFFFFLL) + 8) == 0.0)
    {
      WebCore::TimerBase::start();
    }
  }
}

void WebKit::GPUProcess::~GPUProcess(WebKit::GPUProcess *this, WTF::StringImpl *a2)
{
  v3 = *(this + 35);
  *(this + 35) = 0;
  if (v3)
  {
    if (v3[4] == 1)
    {
      (*(*v3 + 8))(v3);
    }

    else
    {
      --v3[4];
    }
  }

  v4 = *(this + 34);
  *(this + 34) = 0;
  if (v4 && atomic_fetch_add_explicit(v4, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v4, a2);
  }

  v5 = *(this + 33);
  *(this + 33) = 0;
  if (v5)
  {
    (*(*v5 + 8))(v5);
  }

  *(this + 26) = &unk_1F10EB388;
  v6 = *(this + 32);
  *(this + 32) = 0;
  if (v6)
  {
    (*(*v6 + 8))(v6);
  }

  WebCore::TimerBase::~TimerBase((this + 208));
  v8 = *(this + 25);
  if (v8)
  {
    v9 = *(v8 - 4);
    if (v9)
    {
      v10 = (v8 + 16);
      do
      {
        if (*(v10 - 2) != -1)
        {
          v11 = *v10;
          *v10 = 0;
          if (v11 && atomic_fetch_add_explicit(v11, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v11, v7);
          }

          v12 = *(v10 - 1);
          *(v10 - 1) = 0;
          if (v12 && atomic_fetch_add_explicit(v12, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v12, v7);
          }
        }

        v10 += 3;
        --v9;
      }

      while (v9);
    }

    WTF::fastFree((v8 - 16), v7);
  }

  v13 = *(this + 24);
  *(this + 24) = 0;
  if (v13)
  {
    (*(*v13 + 40))(v13);
  }

  v14 = *(this + 22);
  *(this + 22) = 0;
  if (v14)
  {
    (*(*v14 + 40))(v14);
  }

  v15 = *(this + 21);
  if (v15)
  {
    WTF::fastFree((v15 - 16), v7);
  }

  v16 = *(this + 18);
  if (v16)
  {
    v17 = *(v16 - 4);
    if (v17)
    {
      v18 = (v16 + 8);
      do
      {
        if (*(v18 - 1) != -1)
        {
          v19 = *v18;
          *v18 = 0;
          if (v19)
          {
            WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::GPUConnectionToWebProcess,(WTF::DestructionThread)1>::deref((v19 + 16));
          }
        }

        v18 += 2;
        --v17;
      }

      while (v17);
    }

    WTF::fastFree((v16 - 16), v7);
  }

  WebKit::AuxiliaryProcess::~AuxiliaryProcess(this);
}

void non-virtual thunk toWebKit::GPUProcess::~GPUProcess(WebKit::GPUProcess *this, WTF::StringImpl *a2)
{
  WebKit::GPUProcess::~GPUProcess((this - 24), a2);
}

{
  WebKit::GPUProcess::operator delete((this - 24), a2);
}

double WebKit::GPUProcess::operator delete(WebKit::GPUProcess *a1, WTF::StringImpl *a2)
{
  WebKit::GPUProcess::~GPUProcess(a1, a2);
  if (atomic_load((v2 + 16)))
  {
    *(v2 + 288) = 0;
    result = 0.0;
    *(v2 + 256) = 0u;
    *(v2 + 272) = 0u;
    *(v2 + 224) = 0u;
    *(v2 + 240) = 0u;
    *(v2 + 192) = 0u;
    *(v2 + 208) = 0u;
    *(v2 + 160) = 0u;
    *(v2 + 176) = 0u;
    *(v2 + 128) = 0u;
    *(v2 + 144) = 0u;
    *(v2 + 96) = 0u;
    *(v2 + 112) = 0u;
    *(v2 + 64) = 0u;
    *(v2 + 80) = 0u;
    *(v2 + 32) = 0u;
    *(v2 + 48) = 0u;
    *v2 = 0u;
    *(v2 + 16) = 0u;
  }

  else
  {

    WTF::fastFree(v2, v3);
  }

  return result;
}

void *WebKit::GPUProcess::singleton(WebKit::GPUProcess *this)
{
  {
    WebKit::GPUProcess::GPUProcess(&WebKit::GPUProcess::singleton(void)::gpuProcess);
  }

  return &WebKit::GPUProcess::singleton(void)::gpuProcess;
}

uint64_t *WebKit::GPUProcess::createGPUConnectionToWebProcess(uint64_t a1, uint64_t a2, uint64_t a3, WTF::MachSendRight *a4, uint64_t a5, uint64_t *a6)
{
  v25 = *MEMORY[0x1E69E9840];
  v20 = a2;
  v12 = qword_1ED6416A0;
  if (os_log_type_enabled(qword_1ED6416A0, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134218240;
    v22 = a1;
    v23 = 2048;
    v24 = a2;
    _os_log_impl(&dword_19D52D000, v12, OS_LOG_TYPE_DEFAULT, "%p - GPUProcess::createGPUConnectionToWebProcess: processIdentifier=%llu", buf, 0x16u);
  }

  v13 = *a6;
  *a6 = 0;
  v18 = v13;
  v19 = 1;
  if ((*a4 - 1) <= 0xFFFFFFFD)
  {
    v14 = WTF::fastMalloc(0x168);
    v17 = WebKit::GPUConnectionToWebProcess::GPUConnectionToWebProcess(v14, a1, a2, a3, a4, a5);
    v15 = WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WebKit::GPUProcess::MediaCaptureAccess,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WebKit::GPUProcess::MediaCaptureAccess>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::take((a1 + 168), a2);
    *(v14 + 184) |= v15 & 1;
    *(v14 + 185) |= BYTE1(v15) & 1;
    *(v14 + 186) |= BYTE2(v15) & 1;
    WebKit::GPUConnectionToWebProcess::setOrientationForMediaCapture(v14, *(a1 + 184));
    WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::GPUConnectionToWebProcess,WTF::RawPtrTraits<WebKit::GPUConnectionToWebProcess>,WTF::DefaultRefDerefTraits<WebKit::GPUConnectionToWebProcess>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::Ref<WebKit::GPUConnectionToWebProcess,WTF::RawPtrTraits<WebKit::GPUConnectionToWebProcess>,WTF::DefaultRefDerefTraits<WebKit::GPUConnectionToWebProcess>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::add<WTF::Ref<WebKit::GPUConnectionToWebProcess,WTF::RawPtrTraits<WebKit::GPUConnectionToWebProcess>,WTF::DefaultRefDerefTraits<WebKit::GPUConnectionToWebProcess>>>(buf, (a1 + 144), &v20, &v17);
    if (v17)
    {
      WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::GPUConnectionToWebProcess,(WTF::DestructionThread)1>::deref((v17 + 16));
    }
  }

  return WTF::ScopeExit<WTF::CompletionHandler<void ()(void)>>::~ScopeExit(&v18);
}

uint64_t WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WebKit::GPUProcess::MediaCaptureAccess,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WebKit::GPUProcess::MediaCaptureAccess>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::take(uint64_t *a1, uint64_t a2)
{
  v3 = WTF::HashTable<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WebKit::GPUProcess::MediaCaptureAccess>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WebKit::GPUProcess::MediaCaptureAccess>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WebKit::GPUProcess::MediaCaptureAccess,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WebKit::GPUProcess::MediaCaptureAccess>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::find<WTF::IdentityHashTranslator<WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WebKit::GPUProcess::MediaCaptureAccess,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WebKit::GPUProcess::MediaCaptureAccess>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,(WTF::ShouldValidateKey)1,WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(a1, a2);
  v4 = *a1;
  if (*a1)
  {
    v4 += 16 * *(v4 - 4);
  }

  if (v4 == v3)
  {
    return 0;
  }

  v5 = *(v3 + 8) | (*(v3 + 10) << 16);
  WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WebKit::GPUProcess::MediaCaptureAccess,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WebKit::GPUProcess::MediaCaptureAccess>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::remove(a1, v3);
  return v5;
}

uint64_t WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::GPUConnectionToWebProcess,WTF::RawPtrTraits<WebKit::GPUConnectionToWebProcess>,WTF::DefaultRefDerefTraits<WebKit::GPUConnectionToWebProcess>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::Ref<WebKit::GPUConnectionToWebProcess,WTF::RawPtrTraits<WebKit::GPUConnectionToWebProcess>,WTF::DefaultRefDerefTraits<WebKit::GPUConnectionToWebProcess>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::add<WTF::Ref<WebKit::GPUConnectionToWebProcess,WTF::RawPtrTraits<WebKit::GPUConnectionToWebProcess>,WTF::DefaultRefDerefTraits<WebKit::GPUConnectionToWebProcess>>>(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  WTF::checkHashTableKey<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::GPUConnectionToWebProcess,WTF::RawPtrTraits<WebKit::GPUConnectionToWebProcess>,WTF::DefaultRefDerefTraits<WebKit::GPUConnectionToWebProcess>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::GPUConnectionToWebProcess,WTF::RawPtrTraits<WebKit::GPUConnectionToWebProcess>,WTF::DefaultRefDerefTraits<WebKit::GPUConnectionToWebProcess>>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::GPUConnectionToWebProcess,WTF::RawPtrTraits<WebKit::GPUConnectionToWebProcess>,WTF::DefaultRefDerefTraits<WebKit::GPUConnectionToWebProcess>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::Ref<WebKit::GPUConnectionToWebProcess,WTF::RawPtrTraits<WebKit::GPUConnectionToWebProcess>,WTF::DefaultRefDerefTraits<WebKit::GPUConnectionToWebProcess>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMapTranslator<WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::GPUConnectionToWebProcess,WTF::RawPtrTraits<WebKit::GPUConnectionToWebProcess>,WTF::DefaultRefDerefTraits<WebKit::GPUConnectionToWebProcess>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::Ref<WebKit::GPUConnectionToWebProcess,WTF::RawPtrTraits<WebKit::GPUConnectionToWebProcess>,WTF::DefaultRefDerefTraits<WebKit::GPUConnectionToWebProcess>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,(WTF::ShouldValidateKey)1,WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(*a3);
  v8 = *a2;
  if (*a2 || (WTF::HashTable<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::GPUConnectionToWebProcess,WTF::RawPtrTraits<WebKit::GPUConnectionToWebProcess>,WTF::DefaultRefDerefTraits<WebKit::GPUConnectionToWebProcess>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::GPUConnectionToWebProcess,WTF::RawPtrTraits<WebKit::GPUConnectionToWebProcess>,WTF::DefaultRefDerefTraits<WebKit::GPUConnectionToWebProcess>>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::GPUConnectionToWebProcess,WTF::RawPtrTraits<WebKit::GPUConnectionToWebProcess>,WTF::DefaultRefDerefTraits<WebKit::GPUConnectionToWebProcess>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::Ref<WebKit::GPUConnectionToWebProcess,WTF::RawPtrTraits<WebKit::GPUConnectionToWebProcess>,WTF::DefaultRefDerefTraits<WebKit::GPUConnectionToWebProcess>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::expand(a2, 0), (v8 = *a2) != 0))
  {
    v9 = *(v8 - 8);
  }

  else
  {
    v9 = 0;
  }

  result = WTF::ObjectIdentifierGenericBaseHash<unsigned long long>::hash(a3);
  v11 = result & v9;
  v12 = (v8 + 16 * (result & v9));
  v13 = *v12;
  v14 = *a3;
  if (*v12)
  {
    v23 = 0;
    v24 = 1;
    do
    {
      if (v13 == v14)
      {
        v25 = *a2;
        if (*a2)
        {
          v26 = *(v25 - 4);
        }

        else
        {
          v26 = 0;
        }

        v22 = 0;
        v21 = v25 + 16 * v26;
        goto LABEL_12;
      }

      if (v13 == -1)
      {
        v23 = v12;
      }

      v11 = (v11 + v24) & v9;
      v12 = (v8 + 16 * v11);
      v13 = *v12;
      ++v24;
    }

    while (*v12);
    if (v23)
    {
      *v23 = 0;
      v23[1] = 0;
      --*(*a2 - 16);
      v14 = *a3;
      v12 = v23;
    }
  }

  *v12 = v14;
  v15 = *a4;
  *a4 = 0;
  v16 = v12[1];
  v12[1] = v15;
  if (v16)
  {
    result = WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::GPUConnectionToWebProcess,(WTF::DestructionThread)1>::deref((v16 + 16));
  }

  v17 = *a2;
  if (*a2)
  {
    v18 = *(v17 - 12) + 1;
  }

  else
  {
    v18 = 1;
  }

  *(v17 - 12) = v18;
  v19 = (*(v17 - 16) + v18);
  v20 = *(v17 - 4);
  if (v20 > 0x400)
  {
    if (v20 > 2 * v19)
    {
      goto LABEL_11;
    }

LABEL_22:
    result = WTF::HashTable<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::GPUConnectionToWebProcess,WTF::RawPtrTraits<WebKit::GPUConnectionToWebProcess>,WTF::DefaultRefDerefTraits<WebKit::GPUConnectionToWebProcess>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::GPUConnectionToWebProcess,WTF::RawPtrTraits<WebKit::GPUConnectionToWebProcess>,WTF::DefaultRefDerefTraits<WebKit::GPUConnectionToWebProcess>>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::GPUConnectionToWebProcess,WTF::RawPtrTraits<WebKit::GPUConnectionToWebProcess>,WTF::DefaultRefDerefTraits<WebKit::GPUConnectionToWebProcess>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::Ref<WebKit::GPUConnectionToWebProcess,WTF::RawPtrTraits<WebKit::GPUConnectionToWebProcess>,WTF::DefaultRefDerefTraits<WebKit::GPUConnectionToWebProcess>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::expand(a2, v12);
    v12 = result;
    v17 = *a2;
    if (*a2)
    {
      v20 = *(v17 - 4);
    }

    else
    {
      v20 = 0;
    }

    goto LABEL_11;
  }

  if (3 * v20 <= 4 * v19)
  {
    goto LABEL_22;
  }

LABEL_11:
  v21 = v17 + 16 * v20;
  v22 = 1;
LABEL_12:
  *a1 = v12;
  *(a1 + 8) = v21;
  *(a1 + 16) = v22;
  return result;
}

uint64_t WebKit::GPUProcess::sharedPreferencesForWebProcessDidChange(uint64_t a1, uint64_t a2, __int128 *a3, uint64_t *a4)
{
  v6 = WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::GPUConnectionToWebProcess,WTF::RawPtrTraits<WebKit::GPUConnectionToWebProcess>,WTF::DefaultRefDerefTraits<WebKit::GPUConnectionToWebProcess>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::Ref<WebKit::GPUConnectionToWebProcess,WTF::RawPtrTraits<WebKit::GPUConnectionToWebProcess>,WTF::DefaultRefDerefTraits<WebKit::GPUConnectionToWebProcess>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::get<WTF::IdentityHashTranslator<WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::GPUConnectionToWebProcess,WTF::RawPtrTraits<WebKit::GPUConnectionToWebProcess>,WTF::DefaultRefDerefTraits<WebKit::GPUConnectionToWebProcess>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::Ref<WebKit::GPUConnectionToWebProcess,WTF::RawPtrTraits<WebKit::GPUConnectionToWebProcess>,WTF::DefaultRefDerefTraits<WebKit::GPUConnectionToWebProcess>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>((a1 + 144), a2);
  if (v6)
  {
    v10 = v6;
    v11 = (v6 + 16);
    while (1)
    {
      v12 = *v11;
      if ((*v11 & 1) == 0)
      {
        break;
      }

      v13 = *v11;
      atomic_compare_exchange_strong_explicit(v11, &v13, v12 + 2, memory_order_relaxed, memory_order_relaxed);
      if (v13 == v12)
      {
        goto LABEL_8;
      }
    }

    WTF::ThreadSafeWeakPtrControlBlock::strongRef(*v11);
LABEL_8:
    WebKit::GPUConnectionToWebProcess::updateSharedPreferencesForWebProcess(v10, a3);
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::GPUConnectionToWebProcess,(WTF::DestructionThread)1>::deref(v11);
  }

  v7 = *a4;
  *a4 = 0;
  (*(*v7 + 16))(v7);
  v8 = *(*v7 + 8);

  return v8(v7);
}

IPC::Encoder *IPC::Connection::send<Messages::GPUProcessProxy::ProcessIsReadyToExit>(uint64_t *a1, void *a2)
{
  v3 = IPC::Encoder::operator new(0x238, a2);
  *v3 = 62;
  *(v3 + 68) = 0;
  *(v3 + 70) = 0;
  *(v3 + 69) = 0;
  *(v3 + 2) = 0;
  *(v3 + 3) = 0;
  *(v3 + 1) = 0;
  IPC::Encoder::encodeHeader(v3);
  v8 = v3;
  IPC::Connection::sendMessageImpl(a1, &v8, 0, 0);
  result = v8;
  v8 = 0;
  if (result)
  {
    IPC::Encoder::~Encoder(result, v4);
    return bmalloc::api::tzoneFree(v6, v7);
  }

  return result;
}

uint64_t WebKit::GPUProcess::lowMemoryHandler(WebKit::GPUProcess *a1, int a2, int a3)
{
  v26 = *MEMORY[0x1E69E9840];
  v6 = qword_1ED6416A0;
  if (os_log_type_enabled(qword_1ED6416A0, OS_LOG_TYPE_DEFAULT))
  {
    v23[0] = 67109376;
    v23[1] = a2;
    v24 = 1024;
    v25 = a3;
    _os_log_impl(&dword_19D52D000, v6, OS_LOG_TYPE_DEFAULT, "GPUProcess::lowMemoryHandler: critical=%d, synchronous=%d", v23, 0xEu);
  }

  WebKit::GPUProcess::tryExitIfUnused(a1);
  v7 = *(a1 + 18);
  v8 = WTF::HashTable<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::GPUConnectionToWebProcess,WTF::RawPtrTraits<WebKit::GPUConnectionToWebProcess>,WTF::DefaultRefDerefTraits<WebKit::GPUConnectionToWebProcess>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::GPUConnectionToWebProcess,WTF::RawPtrTraits<WebKit::GPUConnectionToWebProcess>,WTF::DefaultRefDerefTraits<WebKit::GPUConnectionToWebProcess>>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::GPUConnectionToWebProcess,WTF::RawPtrTraits<WebKit::GPUConnectionToWebProcess>,WTF::DefaultRefDerefTraits<WebKit::GPUConnectionToWebProcess>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::Ref<WebKit::GPUConnectionToWebProcess,WTF::RawPtrTraits<WebKit::GPUConnectionToWebProcess>,WTF::DefaultRefDerefTraits<WebKit::GPUConnectionToWebProcess>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::begin(v7);
  v9 = v8;
  v11 = v10;
  if (v7)
  {
    v12 = &v7[2 * *(v7 - 1)];
  }

  else
  {
    v12 = 0;
  }

  if (v12 != v8)
  {
    do
    {
      v13 = v9[1];
      v14 = *(v13 + 112);
      if (v14)
      {
        v15 = (v14 + 16);
        atomic_fetch_add((v14 + 16), 1u);
        v16 = *(v14 + 56);
        atomic_fetch_add(v16, 1u);
        WebCore::IOSurfacePool::discardAllSurfaces(v16);
        if (v16)
        {
          WTF::ThreadSafeRefCounted<WebCore::IOSurfacePool,(WTF::DestructionThread)0>::deref(v16);
        }

        WTF::ThreadSafeRefCounted<WebKit::RemoteSharedResourceCache,(WTF::DestructionThread)0>::deref(v15);
      }

      v17 = *(v13 + 192);
      v18 = (v17 + 8);
      while (1)
      {
        v19 = *v18;
        if ((*v18 & 1) == 0)
        {
          break;
        }

        v20 = *v18;
        atomic_compare_exchange_strong_explicit(v18, &v20, v19 + 2, memory_order_relaxed, memory_order_relaxed);
        if (v20 == v19)
        {
          goto LABEL_16;
        }
      }

      WTF::ThreadSafeWeakPtrControlBlock::strongRef(*v18);
LABEL_16:
      WebKit::RemoteVideoFrameObjectHeap::lowMemoryHandler(v17);
      WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::WorkQueueMessageReceiver<(WTF::DestructionThread)0>,(WTF::DestructionThread)0>::deref((v17 + 8), v21);
      do
      {
        v9 += 2;
      }

      while (v9 != v11 && (*v9 + 1) <= 1);
    }

    while (v9 != v12);
  }

  return WebCore::releaseGraphicsMemory();
}

void WebKit::GPUProcess::initializeGPUProcess(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v24 = *MEMORY[0x1E69E9840];
  v5 = *a3;
  *a3 = 0;
  v22 = v5;
  WebKit::AuxiliaryProcess::applyProcessCreationParameters(a1, a2);
  v6 = qword_1ED6416A0;
  if (os_log_type_enabled(qword_1ED6416A0, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    *&buf[4] = a1;
    _os_log_impl(&dword_19D52D000, v6, OS_LOG_TYPE_DEFAULT, "%p - GPUProcess::initializeGPUProcess:", buf, 0xCu);
  }

  IsUserInitiated = WTF::Thread::setCurrentThreadIsUserInitiated(0);
  v8 = WebCore::initializeCommonAtomStrings(IsUserInitiated);
  v9 = WTF::MemoryPressureHandler::singleton(v8);
  WTF::WeakPtrFactory<IPC::MessageReceiver,WTF::DefaultWeakPtrImpl>::initializeIfNeeded((a1 + 8), a1);
  v10 = *(a1 + 8);
  atomic_fetch_add(v10, 1u);
  v11 = WTF::fastMalloc(0x10);
  *v11 = &unk_1F10FAE80;
  v11[1] = v10;
  v12 = *(v9 + 6);
  *(v9 + 6) = v11;
  if (v12)
  {
    (*(*v12 + 8))(v12);
  }

  WTF::MemoryPressureHandler::install(v9);
  MEMORY[0x19EB0B7F0](1);
  v13 = WebCore::MockRealtimeMediaSourceCenter::setMockRealtimeMediaSourceCenterEnabled(*(a2 + 32));
  v14 = WebCore::CoreAudioSharedUnit::singleton(v13);
  WTF::WeakPtrFactory<IPC::MessageReceiver,WTF::DefaultWeakPtrImpl>::initializeIfNeeded((a1 + 8), a1);
  v15 = *(a1 + 8);
  atomic_fetch_add(v15, 1u);
  v16 = WTF::fastMalloc(0x10);
  *v16 = &unk_1F10FAEA8;
  v16[1] = v15;
  v17 = *(v14 + 584);
  *(v14 + 584) = v16;
  if (v17)
  {
    (*(*v17 + 8))(v17);
  }

  WebKit::SandboxExtension::consumePermanently((a2 + 40));
  WebKit::AuxiliaryProcess::grantAccessToContainerTempDirectory(a1, (a2 + 48));
  WebKit::AuxiliaryProcess::populateMobileGestaltCache(a1, a2 + 64);
  WebKit::SandboxExtension::consumePermanently(a2 + 80);
  *buf = 0uLL;
  WebCore::setImageSourceAllowableTypes();
  WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(buf, v18);
  v20 = *(a2 + 96);
  *(a2 + 96) = 0;
  v21 = *(a1 + 272);
  *(a1 + 272) = v20;
  if (v21 && atomic_fetch_add_explicit(v21, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v21, v19);
  }

  WTF::Thread::setCurrentThreadIsUserInteractive(0);
  if (*(a2 + 116))
  {
    WTF::overrideUserPreferredLanguages();
  }

  WebKit::AuxiliaryProcess::registerWithStateDumper();
  WebKit::GPUProcess::platformInitializeGPUProcess(a1, a2);
  WTF::CompletionHandlerCallingScope::~CompletionHandlerCallingScope(&v22);
}

uint64_t WebKit::GPUProcess::updateGPUProcessPreferences(uint64_t result, unsigned __int8 *a2)
{
  v3 = result;
  if ((a2[1] & 1) == 0)
  {
    if (*(result + 161))
    {
      goto LABEL_4;
    }

    LOBYTE(v6) = 0;
    *(result + 160) = 256;
LABEL_14:
    result = WebCore::MediaSessionManagerCocoa::setShouldUseModernAVContentKeySession((v6 & 1));
    goto LABEL_4;
  }

  if ((*(result + 161) & 1) == 0 || *(result + 160) != *a2)
  {
    v6 = *a2;
    *(result + 160) = *a2;
    if ((v6 & 0x100) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_14;
  }

LABEL_4:
  if (a2[3])
  {
    if ((v3[163] & 1) != 0 && v3[162] == a2[2])
    {
      goto LABEL_7;
    }

    v7 = *(a2 + 1);
  }

  else
  {
    if (v3[163])
    {
      goto LABEL_7;
    }

    v7 = 256;
  }

  *(v3 + 81) = v7;
  result = WebCore::VP9TestingOverrides::singleton(result);
  if ((v3[163] & 1) == 0)
  {
    goto LABEL_25;
  }

  result = WebCore::VP9TestingOverrides::setShouldEnableVP9Decoder(result);
  if ((v3[288] & 1) == 0)
  {
    if (v3[163])
    {
      if (v3[162] == 1)
      {
        v3[288] = 1;
        result = WebCore::registerSupplementalVP9Decoder(result);
      }

      goto LABEL_7;
    }

LABEL_25:
    __break(1u);
    return result;
  }

LABEL_7:
  v4 = a2[4];
  v5 = v3[164];
  v3[164] = v4;
  if (v4 != v5)
  {
    v8 = WebCore::VP9TestingOverrides::singleton(result);
    result = WebCore::VP9TestingOverrides::setSWVPDecodersAlwaysEnabled(v8);
  }

  if ((v3[289] & 1) == 0)
  {
    result = WebCore::shouldEnableSWVP9Decoder(result);
    if (result)
    {
      result = MEMORY[0x19EB0BC20]();
      v3[289] = 1;
    }
  }

  return result;
}

uint64_t WebKit::GPUProcess::prepareToSuspend(WebKit::GPUProcess *a1, int a2, uint64_t *a3)
{
  v13 = *MEMORY[0x1E69E9840];
  v6 = qword_1ED641030;
  if (os_log_type_enabled(qword_1ED641030, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 134218240;
    v10 = a1;
    v11 = 1024;
    v12 = a2;
    _os_log_impl(&dword_19D52D000, v6, OS_LOG_TYPE_DEFAULT, "%p - GPUProcess::prepareToSuspend(), isSuspensionImminent: %d", &v9, 0x12u);
  }

  WebKit::GPUProcess::lowMemoryHandler(a1, 1, 1);
  v7 = *a3;
  *a3 = 0;
  (*(*v7 + 16))(v7);
  return (*(*v7 + 8))(v7);
}

void WebKit::GPUProcess::processDidResume(WebKit::GPUProcess *this)
{
  v5 = *MEMORY[0x1E69E9840];
  v2 = qword_1ED641030;
  if (os_log_type_enabled(qword_1ED641030, OS_LOG_TYPE_DEFAULT))
  {
    v3 = 134217984;
    v4 = this;
    _os_log_impl(&dword_19D52D000, v2, OS_LOG_TYPE_DEFAULT, "%p - GPUProcess::processDidResume()", &v3, 0xCu);
  }
}

void WebKit::GPUProcess::updateSandboxAccess(uint64_t a1, uint64_t a2)
{
  v10 = *MEMORY[0x1E69E9840];
  v3 = qword_1ED641580;
  if (os_log_type_enabled(qword_1ED641580, OS_LOG_TYPE_DEFAULT))
  {
    v4 = *(a2 + 12);
    v8 = 134217984;
    v9 = v4;
    _os_log_impl(&dword_19D52D000, v3, OS_LOG_TYPE_DEFAULT, "GPUProcess::updateSandboxAccess: Adding %ld extensions", &v8, 0xCu);
  }

  v5 = *(a2 + 12);
  if (v5)
  {
    v6 = *a2;
    v7 = 8 * v5;
    do
    {
      WebKit::SandboxExtension::consumePermanently(v6++);
      v7 -= 8;
    }

    while (v7);
  }
}

atomic_ullong *WebKit::GPUProcess::didDrawRemoteToPDF(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13 = a2;
  v12 = a4;
  v5 = *(a1 + 40);
  if (v5)
  {
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
    v9 = &v13;
    v10 = a3;
    v11 = &v12;
    IPC::Connection::send<Messages::GPUProcessProxy::DidDrawRemoteToPDF>(v5, &v9, 0, 0, 0);
    return WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v5);
  }

  else
  {
    v9 = &v13;
    v10 = a3;
    v11 = &v12;
    return IPC::Connection::send<Messages::GPUProcessProxy::DidDrawRemoteToPDF>(0, &v9, 0, 0, 0);
  }
}

uint64_t IPC::Connection::send<Messages::GPUProcessProxy::DidDrawRemoteToPDF>(uint64_t *a1, void *a2, uint64_t a3, char a4, uint64_t a5)
{
  v10 = IPC::Encoder::operator new(0x238, a2);
  *v10 = 60;
  *(v10 + 2) = 0;
  *(v10 + 3) = 0;
  *(v10 + 1) = a3;
  *(v10 + 68) = 0;
  *(v10 + 70) = 0;
  *(v10 + 69) = 0;
  IPC::Encoder::encodeHeader(v10);
  v17 = v10;
  Messages::GPUProcessProxy::DidDrawRemoteToPDF::encode<IPC::Encoder>(a2, v10);
  v12 = IPC::Connection::sendMessageImpl(a1, &v17, a4, a5);
  v13 = v17;
  v17 = 0;
  if (v13)
  {
    IPC::Encoder::~Encoder(v13, v11);
    bmalloc::api::tzoneFree(v15, v16);
  }

  return v12;
}

void *WebKit::GPUProcess::setOrientationForMediaCapture(WebKit::GPUProcess *this, uint64_t a2)
{
  *(this + 46) = a2;
  v3 = *(this + 18);
  result = WTF::HashTable<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::GPUConnectionToWebProcess,WTF::RawPtrTraits<WebKit::GPUConnectionToWebProcess>,WTF::DefaultRefDerefTraits<WebKit::GPUConnectionToWebProcess>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::GPUConnectionToWebProcess,WTF::RawPtrTraits<WebKit::GPUConnectionToWebProcess>,WTF::DefaultRefDerefTraits<WebKit::GPUConnectionToWebProcess>>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::GPUConnectionToWebProcess,WTF::RawPtrTraits<WebKit::GPUConnectionToWebProcess>,WTF::DefaultRefDerefTraits<WebKit::GPUConnectionToWebProcess>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::Ref<WebKit::GPUConnectionToWebProcess,WTF::RawPtrTraits<WebKit::GPUConnectionToWebProcess>,WTF::DefaultRefDerefTraits<WebKit::GPUConnectionToWebProcess>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::begin(v3);
  v5 = result;
  v7 = v6;
  if (v3)
  {
    v3 += 2 * *(v3 - 1);
  }

  if (v3 != result)
  {
    do
    {
      result = WebKit::GPUConnectionToWebProcess::setOrientationForMediaCapture(*(v5 + 8), a2);
      do
      {
        v5 += 16;
      }

      while (v5 != v7 && (*v5 + 1) <= 1);
    }

    while (v5 != v3);
  }

  return result;
}

uint64_t WebKit::GPUProcess::enableMicrophoneMuteStatusAPI(WebKit::GPUProcess *this)
{
  WebCore::CoreAudioSharedUnit::singleton(this);
  WTF::WeakPtrFactory<IPC::MessageReceiver,WTF::DefaultWeakPtrImpl>::initializeIfNeeded(this + 2, this);
  v2 = *(this + 1);
  atomic_fetch_add(v2, 1u);
  v3 = WTF::fastMalloc(0x10);
  *v3 = &unk_1F10FAEF8;
  v3[1] = v2;
  v5 = v3;
  WebCore::CoreAudioSharedUnit::setMuteStatusChangedCallback();
  result = v5;
  if (v5)
  {
    return (*(*v5 + 8))(v5);
  }

  return result;
}

void *WebKit::GPUProcess::rotationAngleForCaptureDeviceChanged(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a1 + 144);
  result = WTF::HashTable<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::GPUConnectionToWebProcess,WTF::RawPtrTraits<WebKit::GPUConnectionToWebProcess>,WTF::DefaultRefDerefTraits<WebKit::GPUConnectionToWebProcess>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::GPUConnectionToWebProcess,WTF::RawPtrTraits<WebKit::GPUConnectionToWebProcess>,WTF::DefaultRefDerefTraits<WebKit::GPUConnectionToWebProcess>>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::GPUConnectionToWebProcess,WTF::RawPtrTraits<WebKit::GPUConnectionToWebProcess>,WTF::DefaultRefDerefTraits<WebKit::GPUConnectionToWebProcess>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::Ref<WebKit::GPUConnectionToWebProcess,WTF::RawPtrTraits<WebKit::GPUConnectionToWebProcess>,WTF::DefaultRefDerefTraits<WebKit::GPUConnectionToWebProcess>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::begin(v5);
  v7 = result;
  v9 = v8;
  if (v5)
  {
    v10 = &v5[2 * *(v5 - 1)];
  }

  else
  {
    v10 = 0;
  }

  if (v10 != result)
  {
    do
    {
      result = WebKit::GPUConnectionToWebProcess::userMediaCaptureManagerProxy(v7[1]);
      v11 = result;
      v12 = *(result + 4);
      *(result + 4) = v12 + 1;
      v13 = *(result + 15);
      if (v13)
      {
        v14 = result[6];
        v15 = 8 * v13;
        do
        {
          v16 = *v14++;
          result = (*(*v16 + 24))(v16, a2, a3);
          v15 -= 8;
        }

        while (v15);
        v12 = v11[4] - 1;
      }

      if (v12)
      {
        v11[4] = v12;
      }

      else
      {
        result = (*(*v11 + 24))(v11);
      }

      do
      {
        v7 += 2;
      }

      while (v7 != v9 && (*v7 + 1) <= 1);
    }

    while (v7 != v10);
  }

  return result;
}

atomic_ullong *WebKit::GPUProcess::updateCaptureAccess(uint64_t *a1, int a2, int a3, int a4, uint64_t a5, uint64_t *a6)
{
  v41 = *MEMORY[0x1E69E9840];
  v12 = qword_1ED641580;
  if (os_log_type_enabled(qword_1ED641580, OS_LOG_TYPE_DEFAULT))
  {
    v36[0] = 67109632;
    v36[1] = a2;
    v37 = 1024;
    v38 = a3;
    v39 = 1024;
    v40 = a4;
    _os_log_impl(&dword_19D52D000, v12, OS_LOG_TYPE_DEFAULT, "GPUProcess::updateCaptureAccess: Entering (audio=%d, video=%d, display=%d)", v36, 0x14u);
  }

  WebKit::GPUProcess::ensureAVCaptureServerConnection(a1);
  v13 = WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::GPUConnectionToWebProcess,WTF::RawPtrTraits<WebKit::GPUConnectionToWebProcess>,WTF::DefaultRefDerefTraits<WebKit::GPUConnectionToWebProcess>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::Ref<WebKit::GPUConnectionToWebProcess,WTF::RawPtrTraits<WebKit::GPUConnectionToWebProcess>,WTF::DefaultRefDerefTraits<WebKit::GPUConnectionToWebProcess>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::get<WTF::IdentityHashTranslator<WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::GPUConnectionToWebProcess,WTF::RawPtrTraits<WebKit::GPUConnectionToWebProcess>,WTF::DefaultRefDerefTraits<WebKit::GPUConnectionToWebProcess>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::Ref<WebKit::GPUConnectionToWebProcess,WTF::RawPtrTraits<WebKit::GPUConnectionToWebProcess>,WTF::DefaultRefDerefTraits<WebKit::GPUConnectionToWebProcess>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(a1 + 18, a5);
  if (!v13)
  {
    if (a5 == -1 || !a5)
    {
      __break(0xC471u);
      JUMPOUT(0x19DB45854);
    }

    v14 = a1[21];
    if (!v14)
    {
      WTF::HashTable<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WebKit::GPUProcess::MediaCaptureAccess>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WebKit::GPUProcess::MediaCaptureAccess>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WebKit::GPUProcess::MediaCaptureAccess,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WebKit::GPUProcess::MediaCaptureAccess>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::expand(a1 + 21, 0);
      v14 = a1[21];
    }

    v15 = *(v14 - 8);
    v16 = (~(a5 << 32) + a5) ^ ((~(a5 << 32) + a5) >> 22);
    v17 = 9 * ((v16 + ~(v16 << 13)) ^ ((v16 + ~(v16 << 13)) >> 8));
    v18 = (v17 ^ (v17 >> 15)) + ~((v17 ^ (v17 >> 15)) << 27);
    v19 = v15 & ((v18 >> 31) ^ v18);
    v20 = (v14 + 16 * v19);
    v21 = *v20;
    if (*v20)
    {
      v22 = 0;
      v23 = 1;
      while (v21 != a5)
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
            *(v22 + 10) = 0;
            *(v22 + 4) = 0;
            --*(a1[21] - 16);
            v20 = v22;
          }

          goto LABEL_16;
        }
      }

      goto LABEL_25;
    }

LABEL_16:
    *v20 = a5;
    if (a3)
    {
      v24 = 256;
    }

    else
    {
      v24 = 0;
    }

    *(v20 + 10) = a4 != 0;
    *(v20 + 4) = v24 | a2;
    v25 = a1[21];
    if (v25)
    {
      v26 = *(v25 - 12) + 1;
    }

    else
    {
      v26 = 1;
    }

    *(v25 - 12) = v26;
    v27 = (*(v25 - 16) + v26);
    v28 = *(v25 - 4);
    if (v28 > 0x400)
    {
      if (v28 > 2 * v27)
      {
        goto LABEL_25;
      }
    }

    else if (3 * v28 > 4 * v27)
    {
LABEL_25:
      *(v20 + 8) |= a2;
      *(v20 + 9) |= a3;
      *(v20 + 10) |= a4;
      v29 = *a6;
      *a6 = 0;
      (*(*v29 + 16))(v29);
      return (*(*v29 + 8))(v29);
    }

    v20 = WTF::HashTable<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WebKit::GPUProcess::MediaCaptureAccess>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WebKit::GPUProcess::MediaCaptureAccess>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WebKit::GPUProcess::MediaCaptureAccess,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WebKit::GPUProcess::MediaCaptureAccess>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::expand(a1 + 21, v20);
    goto LABEL_25;
  }

  v31 = v13;
  v32 = (v13 + 16);
  while (1)
  {
    v33 = *v32;
    if ((*v32 & 1) == 0)
    {
      break;
    }

    v34 = *v32;
    atomic_compare_exchange_strong_explicit(v32, &v34, v33 + 2, memory_order_relaxed, memory_order_relaxed);
    if (v34 == v33)
    {
      goto LABEL_33;
    }
  }

  WTF::ThreadSafeWeakPtrControlBlock::strongRef(*v32);
LABEL_33:
  v31[184] |= a2;
  v31[185] |= a3;
  v31[186] |= a4;
  v35 = *a6;
  *a6 = 0;
  (*(*v35 + 16))(v35);
  (*(*v35 + 8))(v35);
  return WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::GPUConnectionToWebProcess,(WTF::DestructionThread)1>::deref(v32);
}

atomic_ullong *WebKit::GPUProcess::updateCaptureOrigin(uint64_t a1, WebCore::SecurityOriginData *a2, uint64_t a3)
{
  result = WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::GPUConnectionToWebProcess,WTF::RawPtrTraits<WebKit::GPUConnectionToWebProcess>,WTF::DefaultRefDerefTraits<WebKit::GPUConnectionToWebProcess>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::Ref<WebKit::GPUConnectionToWebProcess,WTF::RawPtrTraits<WebKit::GPUConnectionToWebProcess>,WTF::DefaultRefDerefTraits<WebKit::GPUConnectionToWebProcess>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::get<WTF::IdentityHashTranslator<WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::GPUConnectionToWebProcess,WTF::RawPtrTraits<WebKit::GPUConnectionToWebProcess>,WTF::DefaultRefDerefTraits<WebKit::GPUConnectionToWebProcess>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::Ref<WebKit::GPUConnectionToWebProcess,WTF::RawPtrTraits<WebKit::GPUConnectionToWebProcess>,WTF::DefaultRefDerefTraits<WebKit::GPUConnectionToWebProcess>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>((a1 + 144), a3);
  if (result)
  {
    v5 = result;
    v6 = result + 2;
    while (1)
    {
      v7 = *v6;
      if ((*v6 & 1) == 0)
      {
        break;
      }

      v8 = *v6;
      atomic_compare_exchange_strong_explicit(v6, &v8, v7 + 2, memory_order_relaxed, memory_order_relaxed);
      if (v8 == v7)
      {
        goto LABEL_7;
      }
    }

    WTF::ThreadSafeWeakPtrControlBlock::strongRef(*v6);
LABEL_7:
    WebCore::SecurityOriginData::securityOrigin(&v14, a2);
    v10 = v14;
    v14 = 0;
    v11 = v5[22];
    v5[22] = v10;
    if (v11)
    {
      WTF::ThreadSafeRefCounted<WebCore::SecurityOrigin,(WTF::DestructionThread)0>::deref(v11, v9);
      v13 = v14;
      v14 = 0;
      if (v13)
      {
        WTF::ThreadSafeRefCounted<WebCore::SecurityOrigin,(WTF::DestructionThread)0>::deref(v13, v12);
      }
    }

    return WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::GPUConnectionToWebProcess,(WTF::DestructionThread)1>::deref(v6);
  }

  return result;
}

uint64_t WebKit::GPUProcess::clearMockMediaDevices(WebKit::GPUProcess *this)
{
  v3[0] = 0;
  v3[1] = 0;
  WebCore::MockRealtimeMediaSourceCenter::setDevices();
  return WTF::Vector<WebCore::MockMediaDevice,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v3, v1);
}

uint64_t WebKit::GPUProcess::triggerMockCaptureConfigurationChange(WebKit::GPUProcess *this)
{
  v1 = WebCore::MockRealtimeMediaSourceCenter::singleton(this);

  return WebCore::MockRealtimeMediaSourceCenter::triggerMockCaptureConfigurationChange(v1);
}

uint64_t WebKit::GPUProcess::setShouldListenToVoiceActivity(WebKit::GPUProcess *this, char a2)
{
  v3 = WebCore::RealtimeMediaSourceCenter::singleton(this);
  v4 = WebCore::RealtimeMediaSourceCenter::audioCaptureFactory(v3);
  v5 = v4;
  if (a2)
  {
    v6 = WTF::fastMalloc(0x10);
    *v6 = &unk_1F10FAF20;
    v9 = v6;
    (*(*v5 + 48))(v5, &v9);
    result = v9;
    v9 = 0;
    if (result)
    {
      return (*(*result + 8))(result);
    }
  }

  else
  {
    v8 = *(*v4 + 56);

    return v8();
  }

  return result;
}

WTF::StringImpl **WebKit::GPUProcess::addSession(uint64_t a1, uint64_t a2, WebKit::SandboxExtensionImpl **a3)
{
  v11 = a2;
  WebKit::SandboxExtension::consumePermanently(a3 + 1);
  WebKit::SandboxExtension::consumePermanently(a3 + 3);
  v5 = *a3;
  *a3 = 0;
  v6 = a3[2];
  a3[2] = 0;
  *&v10 = v5;
  *(&v10 + 1) = v6;
  WTF::HashMap<PAL::SessionID,WebKit::GPUProcess::GPUSession,WTF::DefaultHash<PAL::SessionID>,WTF::HashTraits<PAL::SessionID>,WTF::HashTraits<WebKit::GPUProcess::GPUSession>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::add<WebKit::GPUProcess::GPUSession>(&v9, (a1 + 200), &v11, &v10);
  return WTF::KeyValuePair<WTF::String,WTF::String>::~KeyValuePair(&v10, v7);
}

unint64_t WTF::HashMap<PAL::SessionID,WebKit::GPUProcess::GPUSession,WTF::DefaultHash<PAL::SessionID>,WTF::HashTraits<PAL::SessionID>,WTF::HashTraits<WebKit::GPUProcess::GPUSession>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::add<WebKit::GPUProcess::GPUSession>(uint64_t a1, uint64_t *a2, uint64_t *a3, __int128 *a4)
{
  WTF::checkHashTableKey<PAL::SessionID,WTF::KeyValuePair<PAL::SessionID,WebKit::GPUProcess::GPUSession>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<PAL::SessionID,WebKit::GPUProcess::GPUSession>>,WTF::DefaultHash<PAL::SessionID>,WTF::HashMap<PAL::SessionID,WebKit::GPUProcess::GPUSession,WTF::DefaultHash<PAL::SessionID>,WTF::HashTraits<PAL::SessionID>,WTF::HashTraits<WebKit::GPUProcess::GPUSession>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<PAL::SessionID>,WTF::HashMapTranslator<WTF::HashMap<PAL::SessionID,WebKit::GPUProcess::GPUSession,WTF::DefaultHash<PAL::SessionID>,WTF::HashTraits<PAL::SessionID>,WTF::HashTraits<WebKit::GPUProcess::GPUSession>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<PAL::SessionID>>,(WTF::ShouldValidateKey)1,PAL::SessionID>(*a3);
  v8 = *a2;
  if (*a2 || (WTF::HashTable<PAL::SessionID,WTF::KeyValuePair<PAL::SessionID,WebKit::GPUProcess::GPUSession>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<PAL::SessionID,WebKit::GPUProcess::GPUSession>>,WTF::DefaultHash<PAL::SessionID>,WTF::HashMap<PAL::SessionID,WebKit::GPUProcess::GPUSession,WTF::DefaultHash<PAL::SessionID>,WTF::HashTraits<PAL::SessionID>,WTF::HashTraits<WebKit::GPUProcess::GPUSession>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<PAL::SessionID>,WTF::FastMalloc>::expand(a2, 0), (v8 = *a2) != 0))
  {
    v9 = *(v8 - 8);
  }

  else
  {
    v9 = 0;
  }

  result = WTF::intHash(*a3);
  v11 = result & v9;
  v12 = (v8 + 24 * (result & v9));
  v13 = *v12;
  v14 = *a3;
  if (*v12)
  {
    v21 = 0;
    v22 = 1;
    do
    {
      if (v13 == v14)
      {
        v23 = *a2;
        if (*a2)
        {
          v24 = *(v23 - 4);
        }

        else
        {
          v24 = 0;
        }

        v20 = 0;
        v19 = v23 + 24 * v24;
        goto LABEL_10;
      }

      if (v13 == -1)
      {
        v21 = v12;
      }

      v11 = (v11 + v22) & v9;
      v12 = (v8 + 24 * v11);
      v13 = *v12;
      ++v22;
    }

    while (*v12);
    if (v21)
    {
      *v21 = 0;
      *(v21 + 1) = 0;
      *(v21 + 2) = 0;
      --*(*a2 - 16);
      v14 = *a3;
      v12 = v21;
    }
  }

  result = WTF::HashMapTranslator<WTF::HashMap<PAL::SessionID,WebKit::GPUProcess::GPUSession,WTF::DefaultHash<PAL::SessionID>,WTF::HashTraits<PAL::SessionID>,WTF::HashTraits<WebKit::GPUProcess::GPUSession>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<PAL::SessionID>>::translate<PAL::SessionID const&,WTF::KeyValuePair<PAL::SessionID,WebKit::GPUProcess::GPUSession>,WTF::HashTableAddResult<WTF::HashTableIterator<WTF::HashTable<PAL::SessionID,WTF::KeyValuePair<PAL::SessionID,WebKit::GPUProcess::GPUSession>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<PAL::SessionID,WebKit::GPUProcess::GPUSession>>,WTF::DefaultHash<PAL::SessionID>,WTF::HashMap<PAL::SessionID,WebKit::GPUProcess::GPUSession,WTF::DefaultHash<PAL::SessionID>,WTF::HashTraits<PAL::SessionID>,WTF::HashTraits<WebKit::GPUProcess::GPUSession>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<PAL::SessionID>,WTF::FastMalloc>,PAL::SessionID,WTF::KeyValuePair<PAL::SessionID,WebKit::GPUProcess::GPUSession>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<PAL::SessionID,WebKit::GPUProcess::GPUSession>>,WTF::DefaultHash<PAL::SessionID>,WTF::HashMap<PAL::SessionID,WebKit::GPUProcess::GPUSession,WTF::DefaultHash<PAL::SessionID>,WTF::HashTraits<PAL::SessionID>,WTF::HashTraits<WebKit::GPUProcess::GPUSession>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<PAL::SessionID>>> WTF::HashMap<PAL::SessionID,WebKit::GPUProcess::GPUSession,WTF::DefaultHash<PAL::SessionID>,WTF::HashTraits<PAL::SessionID>,WTF::HashTraits<WebKit::GPUProcess::GPUSession>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::inlineAdd<PAL::SessionID const&,WebKit::GPUProcess::GPUSession>(PAL::SessionID const&,WebKit::GPUProcess::GPUSession &&)::{lambda(void)#1}>(v12, v14, a4);
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

LABEL_21:
    result = WTF::HashTable<PAL::SessionID,WTF::KeyValuePair<PAL::SessionID,WebKit::GPUProcess::GPUSession>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<PAL::SessionID,WebKit::GPUProcess::GPUSession>>,WTF::DefaultHash<PAL::SessionID>,WTF::HashMap<PAL::SessionID,WebKit::GPUProcess::GPUSession,WTF::DefaultHash<PAL::SessionID>,WTF::HashTraits<PAL::SessionID>,WTF::HashTraits<WebKit::GPUProcess::GPUSession>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<PAL::SessionID>,WTF::FastMalloc>::expand(a2, v12);
    v12 = result;
    v15 = *a2;
    if (*a2)
    {
      LODWORD(v18) = *(v15 - 4);
    }

    else
    {
      LODWORD(v18) = 0;
    }

    goto LABEL_9;
  }

  if (3 * v18 <= 4 * v17)
  {
    goto LABEL_21;
  }

LABEL_9:
  v19 = v15 + 24 * v18;
  v20 = 1;
LABEL_10:
  *a1 = v12;
  *(a1 + 8) = v19;
  *(a1 + 16) = v20;
  return result;
}

uint64_t *WebKit::GPUProcess::removeSession(uint64_t *result, WTF::StringImpl *a2)
{
  v3 = result + 25;
  v2 = result[25];
  if (v2)
  {
    if (a2 == -1 || !a2)
    {
      __break(0xC471u);
      JUMPOUT(0x19DB45E74);
    }

    v4 = *(v2 - 8);
    v5 = (a2 + ~(a2 << 32)) ^ ((a2 + ~(a2 << 32)) >> 22);
    v6 = 9 * ((v5 + ~(v5 << 13)) ^ ((v5 + ~(v5 << 13)) >> 8));
    v7 = (v6 ^ (v6 >> 15)) + ~((v6 ^ (v6 >> 15)) << 27);
    v8 = v4 & ((v7 >> 31) ^ v7);
    v9 = (v2 + 24 * v8);
    v10 = *v9;
    if (*v9 != a2)
    {
      v11 = 1;
      while (v10)
      {
        v8 = (v8 + v11) & v4;
        v9 = (v2 + 24 * v8);
        v10 = *v9;
        ++v11;
        if (*v9 == a2)
        {
          goto LABEL_10;
        }
      }

      v9 = (v2 + 24 * *(v2 - 4));
    }

LABEL_10:
    if ((v2 + 24 * *(v2 - 4)) != v9)
    {
      *v9 = -1;
      v12 = v9[2];
      v9[2] = 0;
      if (v12 && atomic_fetch_add_explicit(v12, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v12, a2);
      }

      result = v9[1];
      v9[1] = 0;
      if (result && atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        result = WTF::StringImpl::destroy(result, a2);
      }

      v13 = *v3;
      v14 = vadd_s32(*(*v3 - 16), 0xFFFFFFFF00000001);
      *(v13 - 16) = v14;
      v15 = *(v13 - 4);
      if (6 * v14.i32[1] < v15 && v15 >= 9)
      {

        return WTF::HashTable<PAL::SessionID,WTF::KeyValuePair<PAL::SessionID,WebKit::GPUProcess::GPUSession>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<PAL::SessionID,WebKit::GPUProcess::GPUSession>>,WTF::DefaultHash<PAL::SessionID>,WTF::HashMap<PAL::SessionID,WebKit::GPUProcess::GPUSession,WTF::DefaultHash<PAL::SessionID>,WTF::HashTraits<PAL::SessionID>,WTF::HashTraits<WebKit::GPUProcess::GPUSession>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<PAL::SessionID>,WTF::FastMalloc>::rehash(v3, v15 >> 1, 0);
      }
    }
  }

  return result;
}

WebKit::RemoteAudioSessionProxyManager *WebKit::GPUProcess::audioSessionManager(WebKit::GPUProcess *this, void *a2)
{
  result = *(this + 35);
  if (!result)
  {
    v4 = WebKit::RemoteAudioSessionProxyManager::operator new(0x40, a2);
    result = WebKit::RemoteAudioSessionProxyManager::RemoteAudioSessionProxyManager(v4, this);
    v5 = *(this + 35);
    *(this + 35) = result;
    if (v5)
    {
      if (v5[4] == 1)
      {
        (*(*v5 + 8))(v5);
        return *(this + 35);
      }

      else
      {
        --v5[4];
      }
    }
  }

  return result;
}

uint64_t WebKit::GPUProcess::videoMediaStreamTrackRendererQueue(WebKit::GPUProcess *this)
{
  result = *(this + 22);
  if (!result)
  {
    WTF::WorkQueue::create();
    v3 = *(this + 22);
    *(this + 22) = v4;
    if (v3)
    {
      (*(*v3 + 40))(v3);
    }

    return *(this + 22);
  }

  return result;
}

uint64_t WebKit::GPUProcess::libWebRTCCodecsQueue(WebKit::GPUProcess *this)
{
  result = *(this + 24);
  if (!result)
  {
    WTF::WorkQueue::create();
    v3 = *(this + 24);
    *(this + 24) = v4;
    if (v3)
    {
      (*(*v3 + 40))(v3);
    }

    return *(this + 24);
  }

  return result;
}

uint64_t WebKit::GPUProcess::webProcessConnectionCountForTesting(uint64_t a1, uint64_t *a2)
{
  v2 = WebKit::GPUConnectionToWebProcess::gObjectCountForTesting;
  v3 = *a2;
  *a2 = 0;
  (*(*v3 + 16))(v3, v2);
  v4 = *(*v3 + 8);

  return v4(v3);
}

void WebKit::GPUProcess::requestBitmapImageForCurrentTime(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v6 = WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::GPUConnectionToWebProcess,WTF::RawPtrTraits<WebKit::GPUConnectionToWebProcess>,WTF::DefaultRefDerefTraits<WebKit::GPUConnectionToWebProcess>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::Ref<WebKit::GPUConnectionToWebProcess,WTF::RawPtrTraits<WebKit::GPUConnectionToWebProcess>,WTF::DefaultRefDerefTraits<WebKit::GPUConnectionToWebProcess>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::get<WTF::IdentityHashTranslator<WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::GPUConnectionToWebProcess,WTF::RawPtrTraits<WebKit::GPUConnectionToWebProcess>,WTF::DefaultRefDerefTraits<WebKit::GPUConnectionToWebProcess>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::Ref<WebKit::GPUConnectionToWebProcess,WTF::RawPtrTraits<WebKit::GPUConnectionToWebProcess>,WTF::DefaultRefDerefTraits<WebKit::GPUConnectionToWebProcess>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>((a1 + 144), a2);
  if (v6)
  {
    v9 = v6;
    v10 = (v6 + 16);
    while (1)
    {
      v11 = *v10;
      if ((*v10 & 1) == 0)
      {
        break;
      }

      v12 = *v10;
      atomic_compare_exchange_strong_explicit(v10, &v12, v11 + 2, memory_order_relaxed, memory_order_relaxed);
      if (v12 == v11)
      {
        goto LABEL_13;
      }
    }

    WTF::ThreadSafeWeakPtrControlBlock::strongRef(*v10);
LABEL_13:
    v13 = *(v9 + 128);
    ++v13[4];
    WebKit::RemoteMediaPlayerManagerProxy::bitmapImageForCurrentTime(v13, a3, v16);
    v14 = *a4;
    *a4 = 0;
    (*(*v14 + 16))(v14, v16);
    (*(*v14 + 8))(v14);
    if (v19 == 1)
    {
      if (v18 == 1)
      {
        v15 = cf;
        cf = 0;
        if (v15)
        {
          CFRelease(v15);
        }
      }

      WTF::MachSendRight::~MachSendRight(v16);
    }

    if (v13[4] == 1)
    {
      (*(*v13 + 24))(v13);
    }

    else
    {
      --v13[4];
    }

    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::GPUConnectionToWebProcess,(WTF::DestructionThread)1>::deref(v10);
  }

  else
  {
    v16[0] = 0;
    v19 = 0;
    v7 = *a4;
    *a4 = 0;
    (*(*v7 + 16))(v7, v16);
    (*(*v7 + 8))(v7);
    if (v19 == 1)
    {
      if (v18 == 1)
      {
        v8 = cf;
        cf = 0;
        if (v8)
        {
          CFRelease(v8);
        }
      }

      WTF::MachSendRight::~MachSendRight(v16);
    }
  }
}

uint64_t WebKit::RemoteSharedResourceCache::operator new(WebKit::RemoteSharedResourceCache *this, void *a2)
{
  if (this == 80 && WebKit::RemoteSharedResourceCache::s_heapRef)
  {
    return bmalloc::api::tzoneAllocateNonCompact(WebKit::RemoteSharedResourceCache::s_heapRef, a2);
  }

  else
  {
    return WebKit::RemoteSharedResourceCache::operatorNewSlow(this);
  }
}

WebKit::RemoteSharedResourceCache *WebKit::RemoteSharedResourceCache::RemoteSharedResourceCache(WebKit::RemoteSharedResourceCache *this, WebKit::GPUConnectionToWebProcess *a2)
{
  *(this + 4) = 1;
  *this = &unk_1F10FAC90;
  *(this + 1) = 0;
  *(this + 3) = &unk_1F10FAD50;
  *(this + 16) = 0;
  *(this + 5) = 0;
  v3 = WTF::MachSendRight::MachSendRight((this + 48), (a2 + 96));
  WebCore::IOSurfacePool::create(v3);
  *(this + 8) = 0;
  *(this + 9) = 0;
  return this;
}

void WebKit::RemoteSharedResourceCache::~RemoteSharedResourceCache(WebKit::RemoteSharedResourceCache *this)
{
  v2 = *(this + 7);
  *(this + 7) = 0;
  if (v2)
  {
    WTF::ThreadSafeRefCounted<WebCore::IOSurfacePool,(WTF::DestructionThread)0>::deref(v2);
  }

  WTF::MachSendRight::~MachSendRight((this + 48));
  *(this + 3) = &unk_1F10FAD50;
  v4 = *(this + 5);
  if (v4)
  {
    WTF::HashTable<IPC::ObjectIdentifierReference<WTF::ObjectIdentifierGeneric<WebKit::RemoteSerializedImageBufferIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::KeyValuePair<IPC::ObjectIdentifierReference<WTF::ObjectIdentifierGeneric<WebKit::RemoteSerializedImageBufferIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,IPC::ThreadSafeObjectHeap<WTF::ObjectIdentifierGeneric<WebKit::RemoteSerializedImageBufferIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::RefPtr<WebCore::ImageBuffer,WTF::RawPtrTraits<WebCore::ImageBuffer>,WTF::DefaultRefDerefTraits<WebCore::ImageBuffer>>>::ReferenceState>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<IPC::ObjectIdentifierReference<WTF::ObjectIdentifierGeneric<WebKit::RemoteSerializedImageBufferIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,IPC::ThreadSafeObjectHeap<WTF::ObjectIdentifierGeneric<WebKit::RemoteSerializedImageBufferIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::RefPtr<WebCore::ImageBuffer,WTF::RawPtrTraits<WebCore::ImageBuffer>,WTF::DefaultRefDerefTraits<WebCore::ImageBuffer>>>::ReferenceState>>,WTF::DefaultHash<IPC::ObjectIdentifierReference<WTF::ObjectIdentifierGeneric<WebKit::RemoteSerializedImageBufferIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashMap<IPC::ObjectIdentifierReference<WTF::ObjectIdentifierGeneric<WebKit::RemoteSerializedImageBufferIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,IPC::ThreadSafeObjectHeap<WTF::ObjectIdentifierGeneric<WebKit::RemoteSerializedImageBufferIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::RefPtr<WebCore::ImageBuffer,WTF::RawPtrTraits<WebCore::ImageBuffer>,WTF::DefaultRefDerefTraits<WebCore::ImageBuffer>>>::ReferenceState,WTF::DefaultHash<IPC::ObjectIdentifierReference<WTF::ObjectIdentifierGeneric<WebKit::RemoteSerializedImageBufferIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashTraits<IPC::ObjectIdentifierReference<WTF::ObjectIdentifierGeneric<WebKit::RemoteSerializedImageBufferIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashTraits<IPC::ThreadSafeObjectHeap<WTF::ObjectIdentifierGeneric<WebKit::RemoteSerializedImageBufferIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::RefPtr<WebCore::ImageBuffer,WTF::RawPtrTraits<WebCore::ImageBuffer>,WTF::DefaultRefDerefTraits<WebCore::ImageBuffer>>>::ReferenceState>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<IPC::ObjectIdentifierReference<WTF::ObjectIdentifierGeneric<WebKit::RemoteSerializedImageBufferIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,WTF::FastMalloc>::deallocateTable(v4, v3);
  }

  *this = &unk_1F10EA5E0;
  WTF::WeakPtrFactory<WebPushD::PushServiceConnection,WTF::DefaultWeakPtrImpl>::~WeakPtrFactory(this + 1, v3);
}

{
  WebKit::RemoteSharedResourceCache::~RemoteSharedResourceCache(this);

  bmalloc::api::tzoneFree(v1, v2);
}

void *IPC::ThreadSafeObjectHeap<WTF::ObjectIdentifierGeneric<WebKit::RemoteSerializedImageBufferIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::RefPtr<WebCore::ImageBuffer,WTF::RawPtrTraits<WebCore::ImageBuffer>,WTF::DefaultRefDerefTraits<WebCore::ImageBuffer>>>::~ThreadSafeObjectHeap(void *a1, void *a2)
{
  *a1 = &unk_1F10FAD50;
  v3 = a1[2];
  if (v3)
  {
    WTF::HashTable<IPC::ObjectIdentifierReference<WTF::ObjectIdentifierGeneric<WebKit::RemoteSerializedImageBufferIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::KeyValuePair<IPC::ObjectIdentifierReference<WTF::ObjectIdentifierGeneric<WebKit::RemoteSerializedImageBufferIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,IPC::ThreadSafeObjectHeap<WTF::ObjectIdentifierGeneric<WebKit::RemoteSerializedImageBufferIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::RefPtr<WebCore::ImageBuffer,WTF::RawPtrTraits<WebCore::ImageBuffer>,WTF::DefaultRefDerefTraits<WebCore::ImageBuffer>>>::ReferenceState>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<IPC::ObjectIdentifierReference<WTF::ObjectIdentifierGeneric<WebKit::RemoteSerializedImageBufferIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,IPC::ThreadSafeObjectHeap<WTF::ObjectIdentifierGeneric<WebKit::RemoteSerializedImageBufferIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::RefPtr<WebCore::ImageBuffer,WTF::RawPtrTraits<WebCore::ImageBuffer>,WTF::DefaultRefDerefTraits<WebCore::ImageBuffer>>>::ReferenceState>>,WTF::DefaultHash<IPC::ObjectIdentifierReference<WTF::ObjectIdentifierGeneric<WebKit::RemoteSerializedImageBufferIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashMap<IPC::ObjectIdentifierReference<WTF::ObjectIdentifierGeneric<WebKit::RemoteSerializedImageBufferIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,IPC::ThreadSafeObjectHeap<WTF::ObjectIdentifierGeneric<WebKit::RemoteSerializedImageBufferIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::RefPtr<WebCore::ImageBuffer,WTF::RawPtrTraits<WebCore::ImageBuffer>,WTF::DefaultRefDerefTraits<WebCore::ImageBuffer>>>::ReferenceState,WTF::DefaultHash<IPC::ObjectIdentifierReference<WTF::ObjectIdentifierGeneric<WebKit::RemoteSerializedImageBufferIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashTraits<IPC::ObjectIdentifierReference<WTF::ObjectIdentifierGeneric<WebKit::RemoteSerializedImageBufferIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashTraits<IPC::ThreadSafeObjectHeap<WTF::ObjectIdentifierGeneric<WebKit::RemoteSerializedImageBufferIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::RefPtr<WebCore::ImageBuffer,WTF::RawPtrTraits<WebCore::ImageBuffer>,WTF::DefaultRefDerefTraits<WebCore::ImageBuffer>>>::ReferenceState>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<IPC::ObjectIdentifierReference<WTF::ObjectIdentifierGeneric<WebKit::RemoteSerializedImageBufferIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,WTF::FastMalloc>::deallocateTable(v3, a2);
  }

  return a1;
}

uint64_t WebKit::RemoteSharedResourceCache::addSerializedImageBuffer(uint64_t a1, unint64_t a2, uint64_t *a3)
{
  v5 = *(*a3 + 48);
  if (*(*a3 + 42) == 1)
  {
    if (v5 == 1)
    {
      atomic_fetch_add((a1 + 64), 1uLL);
    }

    atomic_fetch_add(&WebKit::globalImageBufferForCanvasCount, 1uLL);
    atomic_fetch_add((a1 + 72), 1uLL);
  }

  if (v5 == 1)
  {
    atomic_fetch_add(&WebKit::globalAcceleratedImageBufferCount, 1uLL);
  }

  v12[4] = v3;
  v12[5] = v4;
  v12[0] = a2;
  v12[1] = 0;
  v6 = *a3;
  *a3 = 0;
  v11 = v6;
  v8 = IPC::ThreadSafeObjectHeap<WTF::ObjectIdentifierGeneric<WebKit::RemoteSerializedImageBufferIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::RefPtr<WebCore::ImageBuffer,WTF::RawPtrTraits<WebCore::ImageBuffer>,WTF::DefaultRefDerefTraits<WebCore::ImageBuffer>>>::add(a1 + 24, v12, &v11);
  v9 = v11;
  v11 = 0;
  if (v9)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebCore::ImageBuffer,(WTF::DestructionThread)0>::deref((v9 + 8), v7);
  }

  return v8;
}

uint64_t IPC::ThreadSafeObjectHeap<WTF::ObjectIdentifierGeneric<WebKit::RemoteSerializedImageBufferIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::RefPtr<WebCore::ImageBuffer,WTF::RawPtrTraits<WebCore::ImageBuffer>,WTF::DefaultRefDerefTraits<WebCore::ImageBuffer>>>::add(uint64_t a1, unint64_t *a2, uint64_t *a3)
{
  v6 = 0;
  v7 = (a1 + 8);
  atomic_compare_exchange_strong_explicit((a1 + 8), &v6, 1u, memory_order_acquire, memory_order_acquire);
  if (v6)
  {
    MEMORY[0x19EB01E30](a1 + 8);
  }

  v16 = a3;
  WTF::HashMap<IPC::ObjectIdentifierReference<WTF::ObjectIdentifierGeneric<WebKit::RemoteSerializedImageBufferIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,IPC::ThreadSafeObjectHeap<WTF::ObjectIdentifierGeneric<WebKit::RemoteSerializedImageBufferIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::RefPtr<WebCore::ImageBuffer,WTF::RawPtrTraits<WebCore::ImageBuffer>,WTF::DefaultRefDerefTraits<WebCore::ImageBuffer>>>::ReferenceState,WTF::DefaultHash<IPC::ObjectIdentifierReference<WTF::ObjectIdentifierGeneric<WebKit::RemoteSerializedImageBufferIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashTraits<IPC::ObjectIdentifierReference<WTF::ObjectIdentifierGeneric<WebKit::RemoteSerializedImageBufferIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashTraits<IPC::ThreadSafeObjectHeap<WTF::ObjectIdentifierGeneric<WebKit::RemoteSerializedImageBufferIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::RefPtr<WebCore::ImageBuffer,WTF::RawPtrTraits<WebCore::ImageBuffer>,WTF::DefaultRefDerefTraits<WebCore::ImageBuffer>>>::ReferenceState>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::ensure<IPC::ThreadSafeObjectHeap<WTF::ObjectIdentifierGeneric<WebKit::RemoteSerializedImageBufferIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::RefPtr<WebCore::ImageBuffer,WTF::RawPtrTraits<WebCore::ImageBuffer>,WTF::DefaultRefDerefTraits<WebCore::ImageBuffer>>>::add(IPC::ObjectIdentifierReference<WTF::ObjectIdentifierGeneric<WebKit::RemoteSerializedImageBufferIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>> const&,WTF::RefPtr<WebCore::ImageBuffer,WTF::RawPtrTraits<WebCore::ImageBuffer>,WTF::DefaultRefDerefTraits<WebCore::ImageBuffer>>)::{lambda(void)#1}>((a1 + 16), a2, &v16, &v17);
  if ((v18 & 1) == 0)
  {
    v8 = v17;
    if (*(v17 + 32) == 1 && !*(v17 + 3))
    {
      v15 = *(a1 + 16);
      if (!v15 || (v15 += 56 * *(v15 - 1), v15 != v17))
      {
        if (v15 != v17)
        {
          WTF::HashTable<IPC::ObjectIdentifierReference<WTF::ObjectIdentifierGeneric<WebKit::RemoteSerializedImageBufferIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::KeyValuePair<IPC::ObjectIdentifierReference<WTF::ObjectIdentifierGeneric<WebKit::RemoteSerializedImageBufferIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,IPC::ThreadSafeObjectHeap<WTF::ObjectIdentifierGeneric<WebKit::RemoteSerializedImageBufferIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::RefPtr<WebCore::ImageBuffer,WTF::RawPtrTraits<WebCore::ImageBuffer>,WTF::DefaultRefDerefTraits<WebCore::ImageBuffer>>>::ReferenceState>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<IPC::ObjectIdentifierReference<WTF::ObjectIdentifierGeneric<WebKit::RemoteSerializedImageBufferIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,IPC::ThreadSafeObjectHeap<WTF::ObjectIdentifierGeneric<WebKit::RemoteSerializedImageBufferIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::RefPtr<WebCore::ImageBuffer,WTF::RawPtrTraits<WebCore::ImageBuffer>,WTF::DefaultRefDerefTraits<WebCore::ImageBuffer>>>::ReferenceState>>,WTF::DefaultHash<IPC::ObjectIdentifierReference<WTF::ObjectIdentifierGeneric<WebKit::RemoteSerializedImageBufferIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashMap<IPC::ObjectIdentifierReference<WTF::ObjectIdentifierGeneric<WebKit::RemoteSerializedImageBufferIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,IPC::ThreadSafeObjectHeap<WTF::ObjectIdentifierGeneric<WebKit::RemoteSerializedImageBufferIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::RefPtr<WebCore::ImageBuffer,WTF::RawPtrTraits<WebCore::ImageBuffer>,WTF::DefaultRefDerefTraits<WebCore::ImageBuffer>>>::ReferenceState,WTF::DefaultHash<IPC::ObjectIdentifierReference<WTF::ObjectIdentifierGeneric<WebKit::RemoteSerializedImageBufferIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashTraits<IPC::ObjectIdentifierReference<WTF::ObjectIdentifierGeneric<WebKit::RemoteSerializedImageBufferIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashTraits<IPC::ThreadSafeObjectHeap<WTF::ObjectIdentifierGeneric<WebKit::RemoteSerializedImageBufferIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::RefPtr<WebCore::ImageBuffer,WTF::RawPtrTraits<WebCore::ImageBuffer>,WTF::DefaultRefDerefTraits<WebCore::ImageBuffer>>>::ReferenceState>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<IPC::ObjectIdentifierReference<WTF::ObjectIdentifierGeneric<WebKit::RemoteSerializedImageBufferIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,WTF::FastMalloc>::remove((a1 + 16), v17);
        }
      }

      goto LABEL_11;
    }

    if (*(v17 + 48))
    {
      v9 = 0;
      goto LABEL_12;
    }

    v10 = *a3;
    *a3 = 0;
    v8[5] = v10;
    *(v8 + 48) = 1;
  }

  v11 = (a1 + 9);
  v12 = atomic_load((a1 + 9));
  if (v12)
  {
    atomic_store(0, v11);
    WTF::ParkingLot::unparkAll(v11, v8);
  }

LABEL_11:
  v9 = 1;
LABEL_12:
  v13 = 1;
  atomic_compare_exchange_strong_explicit(v7, &v13, 0, memory_order_release, memory_order_relaxed);
  if (v13 != 1)
  {
    WTF::Lock::unlockSlow(v7);
  }

  return v9;
}

uint64_t WebKit::RemoteSharedResourceCache::takeSerializedImageBuffer@<X0>(atomic_ullong *a1@<X0>, unint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v10[1] = 0;
  v10[2] = 0;
  v10[0] = a2;
  WTF::ApproximateTime::now(a1);
  result = IPC::ThreadSafeObjectHeap<WTF::ObjectIdentifierGeneric<WebKit::RemoteSerializedImageBufferIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::RefPtr<WebCore::ImageBuffer,WTF::RawPtrTraits<WebCore::ImageBuffer>,WTF::DefaultRefDerefTraits<WebCore::ImageBuffer>>>::take((a1 + 3), v10, a3, v5 + 15.0);
  v7 = *a3;
  if (*a3)
  {
    v8 = *(v7 + 42);
    v9 = *(v7 + 48);
    if (v8 == 1)
    {
      if (v9 == 1)
      {
        atomic_fetch_add(a1 + 8, 0xFFFFFFFFFFFFFFFFLL);
      }

      atomic_fetch_add(&WebKit::globalImageBufferForCanvasCount, 0xFFFFFFFFFFFFFFFFLL);
      atomic_fetch_add(a1 + 9, 0xFFFFFFFFFFFFFFFFLL);
    }

    if (v9 == 1)
    {
      atomic_fetch_add(&WebKit::globalAcceleratedImageBufferCount, 0xFFFFFFFFFFFFFFFFLL);
    }
  }

  return result;
}

uint64_t IPC::ThreadSafeObjectHeap<WTF::ObjectIdentifierGeneric<WebKit::RemoteSerializedImageBufferIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::RefPtr<WebCore::ImageBuffer,WTF::RawPtrTraits<WebCore::ImageBuffer>,WTF::DefaultRefDerefTraits<WebCore::ImageBuffer>>>::take@<X0>(uint64_t a1@<X0>, unint64_t *a2@<X1>, void *a3@<X8>, double a4@<D0>)
{
  v7 = 0;
  v8 = (a1 + 8);
  atomic_compare_exchange_strong_explicit((a1 + 8), &v7, 1u, memory_order_acquire, memory_order_acquire);
  if (v7)
  {
    MEMORY[0x19EB01E30](a1 + 8);
  }

  v9 = a2[2];
  while (1)
  {
    v10 = *(a1 + 16);
    if (!v10)
    {
      goto LABEL_27;
    }

    v11 = *a2;
    v12 = a2[1];
    if (*a2 == 0)
    {
      __break(0xC471u);
      goto LABEL_40;
    }

    if (v11 == -1)
    {
      __break(0xC471u);
      goto LABEL_39;
    }

    v13 = *(v10 - 8);
    result = WTF::IdentityHashTranslator<WTF::HashTraits<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::DefaultHash<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>>::hash<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>(*a2, a2[1]);
    v15 = result & v13;
    v16 = (v10 + 56 * (result & v13));
    v17 = *v16;
    v18 = v16[1];
    if (v11 == *v16 && v12 == v18)
    {
LABEL_18:
      v22 = *(a1 + 16);
      if (!v22)
      {
        goto LABEL_23;
      }
    }

    else
    {
      v20 = 1;
      while (v17 | v18)
      {
        v15 = (v15 + v20) & v13;
        v16 = (v10 + 56 * v15);
        v17 = *v16;
        v18 = v16[1];
        ++v20;
        if (v11 == *v16 && v12 == v18)
        {
          goto LABEL_18;
        }
      }

      v22 = *(a1 + 16);
      if (!v22)
      {
        goto LABEL_27;
      }

      v16 = &v22[7 * *(v22 - 1)];
    }

    v22 += 7 * *(v22 - 1);
LABEL_23:
    if (v22 != v16)
    {
      if ((v16[4] & 1) != 0 || (v23 = v16[2], v23 > v9))
      {
LABEL_28:
        result = WTF::GenericHashTraits<WTF::RefPtr<WebCore::ImageBuffer,WTF::RawPtrTraits<WebCore::ImageBuffer>,WTF::DefaultRefDerefTraits<WebCore::ImageBuffer>>>::take<WebCore::ImageBuffer*>(a3, 0);
        goto LABEL_29;
      }

      if (v23 == v9)
      {
        break;
      }
    }

LABEL_27:
    v28 = a4;
    v29 = 2;
    if ((WTF::Condition::waitUntilUnchecked<WTF::Lock>(a1 + 9, v8, &v28) & 1) == 0)
    {
      goto LABEL_28;
    }
  }

  if ((v16[6] & 1) == 0)
  {
LABEL_39:
    __break(1u);
LABEL_40:
    JUMPOUT(0x19DB46930);
  }

  v25 = v16[5];
  v16[5] = 0;
  *a3 = v25;
  v26 = *(a1 + 16);
  if (!v26 || (v26 += 7 * *(v26 - 1), v26 != v16))
  {
    if (v26 != v16)
    {
      result = WTF::HashTable<IPC::ObjectIdentifierReference<WTF::ObjectIdentifierGeneric<WebKit::RemoteSerializedImageBufferIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::KeyValuePair<IPC::ObjectIdentifierReference<WTF::ObjectIdentifierGeneric<WebKit::RemoteSerializedImageBufferIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,IPC::ThreadSafeObjectHeap<WTF::ObjectIdentifierGeneric<WebKit::RemoteSerializedImageBufferIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::RefPtr<WebCore::ImageBuffer,WTF::RawPtrTraits<WebCore::ImageBuffer>,WTF::DefaultRefDerefTraits<WebCore::ImageBuffer>>>::ReferenceState>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<IPC::ObjectIdentifierReference<WTF::ObjectIdentifierGeneric<WebKit::RemoteSerializedImageBufferIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,IPC::ThreadSafeObjectHeap<WTF::ObjectIdentifierGeneric<WebKit::RemoteSerializedImageBufferIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::RefPtr<WebCore::ImageBuffer,WTF::RawPtrTraits<WebCore::ImageBuffer>,WTF::DefaultRefDerefTraits<WebCore::ImageBuffer>>>::ReferenceState>>,WTF::DefaultHash<IPC::ObjectIdentifierReference<WTF::ObjectIdentifierGeneric<WebKit::RemoteSerializedImageBufferIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashMap<IPC::ObjectIdentifierReference<WTF::ObjectIdentifierGeneric<WebKit::RemoteSerializedImageBufferIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,IPC::ThreadSafeObjectHeap<WTF::ObjectIdentifierGeneric<WebKit::RemoteSerializedImageBufferIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::RefPtr<WebCore::ImageBuffer,WTF::RawPtrTraits<WebCore::ImageBuffer>,WTF::DefaultRefDerefTraits<WebCore::ImageBuffer>>>::ReferenceState,WTF::DefaultHash<IPC::ObjectIdentifierReference<WTF::ObjectIdentifierGeneric<WebKit::RemoteSerializedImageBufferIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashTraits<IPC::ObjectIdentifierReference<WTF::ObjectIdentifierGeneric<WebKit::RemoteSerializedImageBufferIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashTraits<IPC::ThreadSafeObjectHeap<WTF::ObjectIdentifierGeneric<WebKit::RemoteSerializedImageBufferIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::RefPtr<WebCore::ImageBuffer,WTF::RawPtrTraits<WebCore::ImageBuffer>,WTF::DefaultRefDerefTraits<WebCore::ImageBuffer>>>::ReferenceState>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<IPC::ObjectIdentifierReference<WTF::ObjectIdentifierGeneric<WebKit::RemoteSerializedImageBufferIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,WTF::FastMalloc>::remove((a1 + 16), v16);
    }
  }

LABEL_29:
  v24 = 1;
  atomic_compare_exchange_strong_explicit(v8, &v24, 0, memory_order_release, memory_order_relaxed);
  if (v24 != 1)
  {
    return WTF::Lock::unlockSlow(v8);
  }

  return result;
}

atomic_uchar **WebKit::RemoteSharedResourceCache::releaseSerializedImageBuffer(atomic_ullong *a1, unint64_t a2)
{
  result = WebKit::RemoteSharedResourceCache::takeSerializedImageBuffer(a1, a2, &v5);
  v4 = v5;
  v5 = 0;
  if (v4)
  {
    return WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebCore::ImageBuffer,(WTF::DestructionThread)0>::deref((v4 + 8), v3);
  }

  return result;
}

uint64_t WebKit::RemoteBarcodeDetector::RemoteBarcodeDetector(uint64_t a1, uint64_t *a2, unsigned int *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *(a1 + 8) = 1;
  *a1 = &unk_1F10FACD8;
  v11 = *a2;
  *a2 = 0;
  *(a1 + 16) = v11;
  WTF::WeakPtrFactory<WebPushD::PushServiceConnection,WTF::DefaultWeakPtrImpl>::initializeIfNeeded(a3, a3);
  v12 = *a3;
  atomic_fetch_add(*a3, 1u);
  *(a1 + 24) = v12;
  WTF::WeakPtrFactory<WebPushD::PushServiceConnection,WTF::DefaultWeakPtrImpl>::initializeIfNeeded((a4 + 24), a4);
  v13 = *(a4 + 24);
  atomic_fetch_add(v13, 1u);
  *(a1 + 32) = v13;
  *(a1 + 40) = a5;
  *(a1 + 48) = a6;
  return a1;
}

void WebKit::RemoteBarcodeDetector::~RemoteBarcodeDetector(WebKit::RemoteBarcodeDetector *this, void *a2)
{
  *this = &unk_1F10FACD8;
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

  v5 = *(this + 2);
  *(this + 2) = 0;
  if (v5)
  {
    if (v5[2] == 1)
    {
      (*(*v5 + 8))(v5);
    }

    else
    {
      --v5[2];
    }
  }
}

{
  WebKit::RemoteBarcodeDetector::~RemoteBarcodeDetector(this, a2);

  bmalloc::api::tzoneFree(v2, v3);
}

uint64_t WebKit::RemoteBarcodeDetector::sharedPreferencesForWebProcess@<X0>(WebKit::RemoteBarcodeDetector *this@<X0>, uint64_t a2@<X8>)
{
  result = *(*(this + 4) + 8);
  if (result)
  {
    atomic_fetch_add((result + 16), 1u);
    v3 = *(result + 48);
    *a2 = *(v3 + 336);
    *(a2 + 16) = *(v3 + 352);
    *(a2 + 24) = 1;
    if (atomic_fetch_add((result + 16), 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, (result + 16));
      return (*(*(result + 8) + 8))();
    }
  }

  else
  {
    result = 103;
    __break(0xC471u);
  }

  return result;
}

uint64_t WebKit::RemoteBarcodeDetector::detect(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v3 = *(*(a1 + 32) + 8);
  if (v3)
  {
    atomic_fetch_add((v3 + 16), 1u);
    WebKit::RemoteRenderingBackend::imageBuffer(v3, a2, &v17);
    if (atomic_fetch_add((v3 + 16), 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, (v3 + 16));
      (*(*(v3 + 8) + 8))(v3 + 8);
    }

    v6 = v17;
    if (v17)
    {
      v7 = *(a1 + 16);
      ++v7[2];
      v8 = (v6 + 8);
      while (1)
      {
        v9 = *v8;
        if ((*v8 & 1) == 0)
        {
          break;
        }

        v10 = *v8;
        atomic_compare_exchange_strong_explicit(v8, &v10, v9 + 2, memory_order_relaxed, memory_order_relaxed);
        if (v10 == v9)
        {
          goto LABEL_8;
        }
      }

      WTF::ThreadSafeWeakPtrControlBlock::strongRef(*v8);
LABEL_8:
      v16[0] = v6;
      (*(*v7 + 16))(v7, v16, a3);
      v12 = v16[0];
      v16[0] = 0;
      if (v12)
      {
        WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebCore::ImageBuffer,(WTF::DestructionThread)0>::deref((v12 + 8), v11);
      }

      if (v7[2] == 1)
      {
        (*(*v7 + 8))(v7);
      }

      else
      {
        --v7[2];
      }

      return WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebCore::ImageBuffer,(WTF::DestructionThread)0>::deref((v6 + 8), v11);
    }

    else
    {
      v16[0] = 0;
      v16[1] = 0;
      v14 = *a3;
      *a3 = 0;
      (*(*v14 + 16))(v14, v16);
      (*(*v14 + 8))(v14);
      return WTF::Vector<WebCore::ShapeDetection::DetectedBarcode,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v16, v15);
    }
  }

  else
  {
    result = 103;
    __break(0xC471u);
  }

  return result;
}

uint64_t WebKit::RemoteFaceDetector::RemoteFaceDetector(uint64_t a1, uint64_t *a2, unsigned int *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *(a1 + 8) = 1;
  *a1 = &unk_1F10FAD00;
  v11 = *a2;
  *a2 = 0;
  *(a1 + 16) = v11;
  WTF::WeakPtrFactory<WebPushD::PushServiceConnection,WTF::DefaultWeakPtrImpl>::initializeIfNeeded(a3, a3);
  v12 = *a3;
  atomic_fetch_add(*a3, 1u);
  *(a1 + 24) = v12;
  WTF::WeakPtrFactory<WebPushD::PushServiceConnection,WTF::DefaultWeakPtrImpl>::initializeIfNeeded((a4 + 24), a4);
  v13 = *(a4 + 24);
  atomic_fetch_add(v13, 1u);
  *(a1 + 32) = v13;
  *(a1 + 40) = a5;
  *(a1 + 48) = a6;
  return a1;
}

void WebKit::RemoteFaceDetector::~RemoteFaceDetector(WebKit::RemoteFaceDetector *this, void *a2)
{
  *this = &unk_1F10FAD00;
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

  v5 = *(this + 2);
  *(this + 2) = 0;
  if (v5)
  {
    if (v5[2] == 1)
    {
      (*(*v5 + 8))(v5);
    }

    else
    {
      --v5[2];
    }
  }
}

{
  WebKit::RemoteFaceDetector::~RemoteFaceDetector(this, a2);

  bmalloc::api::tzoneFree(v2, v3);
}

uint64_t WebKit::RemoteFaceDetector::detect(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v3 = *(*(a1 + 32) + 8);
  if (v3)
  {
    atomic_fetch_add((v3 + 16), 1u);
    WebKit::RemoteRenderingBackend::imageBuffer(v3, a2, &v17);
    if (atomic_fetch_add((v3 + 16), 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, (v3 + 16));
      (*(*(v3 + 8) + 8))(v3 + 8);
    }

    v6 = v17;
    if (v17)
    {
      v7 = *(a1 + 16);
      ++v7[2];
      v8 = (v6 + 8);
      while (1)
      {
        v9 = *v8;
        if ((*v8 & 1) == 0)
        {
          break;
        }

        v10 = *v8;
        atomic_compare_exchange_strong_explicit(v8, &v10, v9 + 2, memory_order_relaxed, memory_order_relaxed);
        if (v10 == v9)
        {
          goto LABEL_8;
        }
      }

      WTF::ThreadSafeWeakPtrControlBlock::strongRef(*v8);
LABEL_8:
      v16[0] = v6;
      (*(*v7 + 16))(v7, v16, a3);
      v12 = v16[0];
      v16[0] = 0;
      if (v12)
      {
        WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebCore::ImageBuffer,(WTF::DestructionThread)0>::deref((v12 + 8), v11);
      }

      if (v7[2] == 1)
      {
        (*(*v7 + 8))(v7);
      }

      else
      {
        --v7[2];
      }

      return WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebCore::ImageBuffer,(WTF::DestructionThread)0>::deref((v6 + 8), v11);
    }

    else
    {
      v16[0] = 0;
      v16[1] = 0;
      v14 = *a3;
      *a3 = 0;
      (*(*v14 + 16))(v14, v16);
      (*(*v14 + 8))(v14);
      return WTF::Vector<WebCore::ShapeDetection::DetectedFace,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v16, v15);
    }
  }

  else
  {
    result = 103;
    __break(0xC471u);
  }

  return result;
}

uint64_t WebKit::RemoteTextDetector::RemoteTextDetector(uint64_t a1, uint64_t *a2, unsigned int *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *(a1 + 8) = 1;
  *a1 = &unk_1F10FAD28;
  v11 = *a2;
  *a2 = 0;
  *(a1 + 16) = v11;
  WTF::WeakPtrFactory<WebPushD::PushServiceConnection,WTF::DefaultWeakPtrImpl>::initializeIfNeeded(a3, a3);
  v12 = *a3;
  atomic_fetch_add(*a3, 1u);
  *(a1 + 24) = v12;
  WTF::WeakPtrFactory<WebPushD::PushServiceConnection,WTF::DefaultWeakPtrImpl>::initializeIfNeeded((a4 + 24), a4);
  v13 = *(a4 + 24);
  atomic_fetch_add(v13, 1u);
  *(a1 + 32) = v13;
  *(a1 + 40) = a5;
  *(a1 + 48) = a6;
  return a1;
}

void WebKit::RemoteTextDetector::~RemoteTextDetector(WebKit::RemoteTextDetector *this, void *a2)
{
  *this = &unk_1F10FAD28;
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

  v5 = *(this + 2);
  *(this + 2) = 0;
  if (v5)
  {
    if (v5[2] == 1)
    {
      (*(*v5 + 8))(v5);
    }

    else
    {
      --v5[2];
    }
  }
}

{
  WebKit::RemoteTextDetector::~RemoteTextDetector(this, a2);

  bmalloc::api::tzoneFree(v2, v3);
}

uint64_t WebKit::RemoteTextDetector::detect(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v3 = *(*(a1 + 32) + 8);
  if (v3)
  {
    atomic_fetch_add((v3 + 16), 1u);
    WebKit::RemoteRenderingBackend::imageBuffer(v3, a2, &v17);
    if (atomic_fetch_add((v3 + 16), 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, (v3 + 16));
      (*(*(v3 + 8) + 8))(v3 + 8);
    }

    v6 = v17;
    if (v17)
    {
      v7 = *(a1 + 16);
      ++v7[2];
      v8 = (v6 + 8);
      while (1)
      {
        v9 = *v8;
        if ((*v8 & 1) == 0)
        {
          break;
        }

        v10 = *v8;
        atomic_compare_exchange_strong_explicit(v8, &v10, v9 + 2, memory_order_relaxed, memory_order_relaxed);
        if (v10 == v9)
        {
          goto LABEL_8;
        }
      }

      WTF::ThreadSafeWeakPtrControlBlock::strongRef(*v8);
LABEL_8:
      v16[0] = v6;
      (*(*v7 + 16))(v7, v16, a3);
      v12 = v16[0];
      v16[0] = 0;
      if (v12)
      {
        WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebCore::ImageBuffer,(WTF::DestructionThread)0>::deref((v12 + 8), v11);
      }

      if (v7[2] == 1)
      {
        (*(*v7 + 8))(v7);
      }

      else
      {
        --v7[2];
      }

      return WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebCore::ImageBuffer,(WTF::DestructionThread)0>::deref((v6 + 8), v11);
    }

    else
    {
      v16[0] = 0;
      v16[1] = 0;
      v14 = *a3;
      *a3 = 0;
      (*(*v14 + 16))(v14, v16);
      (*(*v14 + 8))(v14);
      return WTF::Vector<WebCore::ShapeDetection::DetectedText,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v16, v15);
    }
  }

  else
  {
    result = 103;
    __break(0xC471u);
  }

  return result;
}

uint64_t WebKit::ShapeDetection::ObjectHeap::ObjectHeap(uint64_t this)
{
  *this = 0;
  *(this + 8) = 1;
  *(this + 24) = 0;
  *(this + 32) = 0;
  *(this + 16) = 0;
  return this;
}

void WebKit::ShapeDetection::ObjectHeap::~ObjectHeap(WebKit::ShapeDetection::ObjectHeap *this, void *a2)
{
  v3 = *(this + 4);
  if (v3)
  {
    WTF::HashTable<WTF::ObjectIdentifierGeneric<WebKit::ShapeDetectionIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::ShapeDetectionIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::RemoteTextDetector,WTF::RawPtrTraits<WebKit::RemoteTextDetector>,WTF::DefaultRefDerefTraits<WebKit::RemoteTextDetector>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::ShapeDetectionIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::RemoteTextDetector,WTF::RawPtrTraits<WebKit::RemoteTextDetector>,WTF::DefaultRefDerefTraits<WebKit::RemoteTextDetector>>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::ShapeDetectionIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::ShapeDetectionIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::RemoteTextDetector,WTF::RawPtrTraits<WebKit::RemoteTextDetector>,WTF::DefaultRefDerefTraits<WebKit::RemoteTextDetector>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::ShapeDetectionIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::ShapeDetectionIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::Ref<WebKit::RemoteTextDetector,WTF::RawPtrTraits<WebKit::RemoteTextDetector>,WTF::DefaultRefDerefTraits<WebKit::RemoteTextDetector>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::ShapeDetectionIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::deallocateTable(v3, a2);
  }

  v4 = *(this + 3);
  if (v4)
  {
    WTF::HashTable<WTF::ObjectIdentifierGeneric<WebKit::ShapeDetectionIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::ShapeDetectionIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::RemoteTextDetector,WTF::RawPtrTraits<WebKit::RemoteTextDetector>,WTF::DefaultRefDerefTraits<WebKit::RemoteTextDetector>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::ShapeDetectionIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::RemoteTextDetector,WTF::RawPtrTraits<WebKit::RemoteTextDetector>,WTF::DefaultRefDerefTraits<WebKit::RemoteTextDetector>>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::ShapeDetectionIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::ShapeDetectionIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::RemoteTextDetector,WTF::RawPtrTraits<WebKit::RemoteTextDetector>,WTF::DefaultRefDerefTraits<WebKit::RemoteTextDetector>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::ShapeDetectionIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::ShapeDetectionIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::Ref<WebKit::RemoteTextDetector,WTF::RawPtrTraits<WebKit::RemoteTextDetector>,WTF::DefaultRefDerefTraits<WebKit::RemoteTextDetector>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::ShapeDetectionIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::deallocateTable(v4, a2);
  }

  v5 = *(this + 2);
  if (v5)
  {
    WTF::HashTable<WTF::ObjectIdentifierGeneric<WebKit::ShapeDetectionIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::ShapeDetectionIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::RemoteTextDetector,WTF::RawPtrTraits<WebKit::RemoteTextDetector>,WTF::DefaultRefDerefTraits<WebKit::RemoteTextDetector>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::ShapeDetectionIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::RemoteTextDetector,WTF::RawPtrTraits<WebKit::RemoteTextDetector>,WTF::DefaultRefDerefTraits<WebKit::RemoteTextDetector>>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::ShapeDetectionIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::ShapeDetectionIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::RemoteTextDetector,WTF::RawPtrTraits<WebKit::RemoteTextDetector>,WTF::DefaultRefDerefTraits<WebKit::RemoteTextDetector>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::ShapeDetectionIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::ShapeDetectionIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::Ref<WebKit::RemoteTextDetector,WTF::RawPtrTraits<WebKit::RemoteTextDetector>,WTF::DefaultRefDerefTraits<WebKit::RemoteTextDetector>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::ShapeDetectionIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::deallocateTable(v5, a2);
  }

  WTF::RefCountedAndCanMakeWeakPtr<WebKit::ShapeDetection::ObjectHeap>::~RefCountedAndCanMakeWeakPtr(this, a2);
}

uint64_t WTF::RefCountedAndCanMakeWeakPtr<WebKit::ShapeDetection::ObjectHeap>::~RefCountedAndCanMakeWeakPtr(uint64_t a1, void *a2)
{
  if (*(a1 + 8) == 1)
  {
    return WTF::WeakPtrFactory<WebKit::SessionSet,WTF::DefaultWeakPtrImpl>::~WeakPtrFactory(a1, a2);
  }

  result = 191;
  __break(0xC471u);
  return result;
}

uint64_t *WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::ShapeDetectionIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::RemoteBarcodeDetector,WTF::RawPtrTraits<WebKit::RemoteBarcodeDetector>,WTF::DefaultRefDerefTraits<WebKit::RemoteBarcodeDetector>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::ShapeDetectionIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::ShapeDetectionIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::Ref<WebKit::RemoteBarcodeDetector,WTF::RawPtrTraits<WebKit::RemoteBarcodeDetector>,WTF::DefaultRefDerefTraits<WebKit::RemoteBarcodeDetector>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::add<WebKit::RemoteBarcodeDetector&>@<X0>(uint64_t *result@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v5 = *a2;
  if (*a2 == -1 || !v5)
  {
    __break(0xC471u);
    JUMPOUT(0x19DB477F4);
  }

  v8 = result;
  v9 = *result;
  if (!*result)
  {
    result = WTF::HashTable<WTF::ObjectIdentifierGeneric<WebKit::ShapeDetectionIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::ShapeDetectionIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::RemoteBarcodeDetector,WTF::RawPtrTraits<WebKit::RemoteBarcodeDetector>,WTF::DefaultRefDerefTraits<WebKit::RemoteBarcodeDetector>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::ShapeDetectionIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::RemoteBarcodeDetector,WTF::RawPtrTraits<WebKit::RemoteBarcodeDetector>,WTF::DefaultRefDerefTraits<WebKit::RemoteBarcodeDetector>>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::ShapeDetectionIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::ShapeDetectionIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::RemoteBarcodeDetector,WTF::RawPtrTraits<WebKit::RemoteBarcodeDetector>,WTF::DefaultRefDerefTraits<WebKit::RemoteBarcodeDetector>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::ShapeDetectionIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::ShapeDetectionIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::Ref<WebKit::RemoteBarcodeDetector,WTF::RawPtrTraits<WebKit::RemoteBarcodeDetector>,WTF::DefaultRefDerefTraits<WebKit::RemoteBarcodeDetector>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::ShapeDetectionIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::expand(result, 0);
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
        v21 = 0;
        v22 = v9 + 16 * *(v9 - 4);
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
  atomic_fetch_add((a3 + 8), 1u);
  result = v15[1];
  v15[1] = a3;
  if (result && atomic_fetch_add(result + 2, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, result + 2);
    result = (*(*result + 8))(result);
  }

  v19 = *v8;
  if (*v8)
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
LABEL_22:
      result = WTF::HashTable<WTF::ObjectIdentifierGeneric<WebKit::ShapeDetectionIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::ShapeDetectionIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::RemoteBarcodeDetector,WTF::RawPtrTraits<WebKit::RemoteBarcodeDetector>,WTF::DefaultRefDerefTraits<WebKit::RemoteBarcodeDetector>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::ShapeDetectionIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::RemoteBarcodeDetector,WTF::RawPtrTraits<WebKit::RemoteBarcodeDetector>,WTF::DefaultRefDerefTraits<WebKit::RemoteBarcodeDetector>>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::ShapeDetectionIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::ShapeDetectionIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::RemoteBarcodeDetector,WTF::RawPtrTraits<WebKit::RemoteBarcodeDetector>,WTF::DefaultRefDerefTraits<WebKit::RemoteBarcodeDetector>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::ShapeDetectionIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::ShapeDetectionIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::Ref<WebKit::RemoteBarcodeDetector,WTF::RawPtrTraits<WebKit::RemoteBarcodeDetector>,WTF::DefaultRefDerefTraits<WebKit::RemoteBarcodeDetector>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::ShapeDetectionIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::expand(v8, v15);
      v15 = result;
      v19 = *v8;
      if (*v8)
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
    goto LABEL_22;
  }

  v22 = v19 + 16 * v24;
  v21 = 1;
LABEL_26:
  *a4 = v15;
  *(a4 + 8) = v22;
  *(a4 + 16) = v21;
  return result;
}

uint64_t *WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::ShapeDetectionIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::RemoteFaceDetector,WTF::RawPtrTraits<WebKit::RemoteFaceDetector>,WTF::DefaultRefDerefTraits<WebKit::RemoteFaceDetector>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::ShapeDetectionIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::ShapeDetectionIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::Ref<WebKit::RemoteFaceDetector,WTF::RawPtrTraits<WebKit::RemoteFaceDetector>,WTF::DefaultRefDerefTraits<WebKit::RemoteFaceDetector>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::add<WebKit::RemoteFaceDetector&>@<X0>(uint64_t *result@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v5 = *a2;
  if (*a2 == -1 || !v5)
  {
    __break(0xC471u);
    JUMPOUT(0x19DB47A1CLL);
  }

  v8 = result;
  v9 = *result;
  if (!*result)
  {
    result = WTF::HashTable<WTF::ObjectIdentifierGeneric<WebKit::ShapeDetectionIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::ShapeDetectionIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::RemoteBarcodeDetector,WTF::RawPtrTraits<WebKit::RemoteBarcodeDetector>,WTF::DefaultRefDerefTraits<WebKit::RemoteBarcodeDetector>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::ShapeDetectionIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::RemoteBarcodeDetector,WTF::RawPtrTraits<WebKit::RemoteBarcodeDetector>,WTF::DefaultRefDerefTraits<WebKit::RemoteBarcodeDetector>>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::ShapeDetectionIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::ShapeDetectionIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::RemoteBarcodeDetector,WTF::RawPtrTraits<WebKit::RemoteBarcodeDetector>,WTF::DefaultRefDerefTraits<WebKit::RemoteBarcodeDetector>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::ShapeDetectionIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::ShapeDetectionIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::Ref<WebKit::RemoteBarcodeDetector,WTF::RawPtrTraits<WebKit::RemoteBarcodeDetector>,WTF::DefaultRefDerefTraits<WebKit::RemoteBarcodeDetector>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::ShapeDetectionIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::expand(result, 0);
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
        v21 = 0;
        v22 = v9 + 16 * *(v9 - 4);
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
  atomic_fetch_add((a3 + 8), 1u);
  result = v15[1];
  v15[1] = a3;
  if (result && atomic_fetch_add(result + 2, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, result + 2);
    result = (*(*result + 8))(result);
  }

  v19 = *v8;
  if (*v8)
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
LABEL_22:
      result = WTF::HashTable<WTF::ObjectIdentifierGeneric<WebKit::ShapeDetectionIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::ShapeDetectionIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::RemoteBarcodeDetector,WTF::RawPtrTraits<WebKit::RemoteBarcodeDetector>,WTF::DefaultRefDerefTraits<WebKit::RemoteBarcodeDetector>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::ShapeDetectionIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::RemoteBarcodeDetector,WTF::RawPtrTraits<WebKit::RemoteBarcodeDetector>,WTF::DefaultRefDerefTraits<WebKit::RemoteBarcodeDetector>>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::ShapeDetectionIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::ShapeDetectionIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::RemoteBarcodeDetector,WTF::RawPtrTraits<WebKit::RemoteBarcodeDetector>,WTF::DefaultRefDerefTraits<WebKit::RemoteBarcodeDetector>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::ShapeDetectionIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::ShapeDetectionIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::Ref<WebKit::RemoteBarcodeDetector,WTF::RawPtrTraits<WebKit::RemoteBarcodeDetector>,WTF::DefaultRefDerefTraits<WebKit::RemoteBarcodeDetector>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::ShapeDetectionIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::expand(v8, v15);
      v15 = result;
      v19 = *v8;
      if (*v8)
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
    goto LABEL_22;
  }

  v22 = v19 + 16 * v24;
  v21 = 1;
LABEL_26:
  *a4 = v15;
  *(a4 + 8) = v22;
  *(a4 + 16) = v21;
  return result;
}

uint64_t *WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::ShapeDetectionIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::RemoteTextDetector,WTF::RawPtrTraits<WebKit::RemoteTextDetector>,WTF::DefaultRefDerefTraits<WebKit::RemoteTextDetector>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::ShapeDetectionIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::ShapeDetectionIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::Ref<WebKit::RemoteTextDetector,WTF::RawPtrTraits<WebKit::RemoteTextDetector>,WTF::DefaultRefDerefTraits<WebKit::RemoteTextDetector>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::add<WebKit::RemoteTextDetector&>@<X0>(uint64_t *result@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v5 = *a2;
  if (*a2 == -1 || !v5)
  {
    __break(0xC471u);
    JUMPOUT(0x19DB47C44);
  }

  v8 = result;
  v9 = *result;
  if (!*result)
  {
    result = WTF::HashTable<WTF::ObjectIdentifierGeneric<WebKit::ShapeDetectionIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::ShapeDetectionIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::RemoteBarcodeDetector,WTF::RawPtrTraits<WebKit::RemoteBarcodeDetector>,WTF::DefaultRefDerefTraits<WebKit::RemoteBarcodeDetector>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::ShapeDetectionIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::RemoteBarcodeDetector,WTF::RawPtrTraits<WebKit::RemoteBarcodeDetector>,WTF::DefaultRefDerefTraits<WebKit::RemoteBarcodeDetector>>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::ShapeDetectionIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::ShapeDetectionIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::RemoteBarcodeDetector,WTF::RawPtrTraits<WebKit::RemoteBarcodeDetector>,WTF::DefaultRefDerefTraits<WebKit::RemoteBarcodeDetector>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::ShapeDetectionIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::ShapeDetectionIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::Ref<WebKit::RemoteBarcodeDetector,WTF::RawPtrTraits<WebKit::RemoteBarcodeDetector>,WTF::DefaultRefDerefTraits<WebKit::RemoteBarcodeDetector>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::ShapeDetectionIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::expand(result, 0);
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
        v21 = 0;
        v22 = v9 + 16 * *(v9 - 4);
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
  atomic_fetch_add((a3 + 8), 1u);
  result = v15[1];
  v15[1] = a3;
  if (result && atomic_fetch_add(result + 2, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, result + 2);
    result = (*(*result + 8))(result);
  }

  v19 = *v8;
  if (*v8)
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
LABEL_22:
      result = WTF::HashTable<WTF::ObjectIdentifierGeneric<WebKit::ShapeDetectionIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::ShapeDetectionIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::RemoteBarcodeDetector,WTF::RawPtrTraits<WebKit::RemoteBarcodeDetector>,WTF::DefaultRefDerefTraits<WebKit::RemoteBarcodeDetector>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::ShapeDetectionIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::RemoteBarcodeDetector,WTF::RawPtrTraits<WebKit::RemoteBarcodeDetector>,WTF::DefaultRefDerefTraits<WebKit::RemoteBarcodeDetector>>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::ShapeDetectionIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::ShapeDetectionIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::RemoteBarcodeDetector,WTF::RawPtrTraits<WebKit::RemoteBarcodeDetector>,WTF::DefaultRefDerefTraits<WebKit::RemoteBarcodeDetector>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::ShapeDetectionIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::ShapeDetectionIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::Ref<WebKit::RemoteBarcodeDetector,WTF::RawPtrTraits<WebKit::RemoteBarcodeDetector>,WTF::DefaultRefDerefTraits<WebKit::RemoteBarcodeDetector>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::ShapeDetectionIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::expand(v8, v15);
      v15 = result;
      v19 = *v8;
      if (*v8)
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
    goto LABEL_22;
  }

  v22 = v19 + 16 * v24;
  v21 = 1;
LABEL_26:
  *a4 = v15;
  *(a4 + 8) = v22;
  *(a4 + 16) = v21;
  return result;
}

unsigned int *WebKit::ShapeDetection::ObjectHeap::removeObject(uint64_t *a1, uint64_t a2)
{
  v12 = a2;
  v3 = WTF::HashTable<WTF::ObjectIdentifierGeneric<WebKit::ShapeDetectionIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::ShapeDetectionIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::RemoteBarcodeDetector,WTF::RawPtrTraits<WebKit::RemoteBarcodeDetector>,WTF::DefaultRefDerefTraits<WebKit::RemoteBarcodeDetector>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::ShapeDetectionIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::RemoteBarcodeDetector,WTF::RawPtrTraits<WebKit::RemoteBarcodeDetector>,WTF::DefaultRefDerefTraits<WebKit::RemoteBarcodeDetector>>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::ShapeDetectionIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::ShapeDetectionIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::RemoteBarcodeDetector,WTF::RawPtrTraits<WebKit::RemoteBarcodeDetector>,WTF::DefaultRefDerefTraits<WebKit::RemoteBarcodeDetector>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::ShapeDetectionIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::ShapeDetectionIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::Ref<WebKit::RemoteBarcodeDetector,WTF::RawPtrTraits<WebKit::RemoteBarcodeDetector>,WTF::DefaultRefDerefTraits<WebKit::RemoteBarcodeDetector>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::ShapeDetectionIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::find<WTF::IdentityHashTranslator<WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::ShapeDetectionIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::RemoteBarcodeDetector,WTF::RawPtrTraits<WebKit::RemoteBarcodeDetector>,WTF::DefaultRefDerefTraits<WebKit::RemoteBarcodeDetector>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::ShapeDetectionIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::ShapeDetectionIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::Ref<WebKit::RemoteBarcodeDetector,WTF::RawPtrTraits<WebKit::RemoteBarcodeDetector>,WTF::DefaultRefDerefTraits<WebKit::RemoteBarcodeDetector>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::ShapeDetectionIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,(WTF::ShouldValidateKey)1,WTF::ObjectIdentifierGeneric<WebKit::ShapeDetectionIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>( a1 + 2,  &v12);
  v4 = a1[2];
  if (v4)
  {
    v5 = (v4 + 16 * *(v4 - 4));
    if (v5 == v3)
    {
      goto LABEL_8;
    }
  }

  else
  {
    if (!v3)
    {
      goto LABEL_8;
    }

    v5 = 0;
  }

  if (v5 != v3)
  {
    WTF::HashTable<WTF::ObjectIdentifierGeneric<WebKit::ShapeDetectionIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::ShapeDetectionIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::RemoteBarcodeDetector,WTF::RawPtrTraits<WebKit::RemoteBarcodeDetector>,WTF::DefaultRefDerefTraits<WebKit::RemoteBarcodeDetector>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::ShapeDetectionIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::RemoteBarcodeDetector,WTF::RawPtrTraits<WebKit::RemoteBarcodeDetector>,WTF::DefaultRefDerefTraits<WebKit::RemoteBarcodeDetector>>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::ShapeDetectionIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::ShapeDetectionIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::RemoteBarcodeDetector,WTF::RawPtrTraits<WebKit::RemoteBarcodeDetector>,WTF::DefaultRefDerefTraits<WebKit::RemoteBarcodeDetector>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::ShapeDetectionIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::ShapeDetectionIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::Ref<WebKit::RemoteBarcodeDetector,WTF::RawPtrTraits<WebKit::RemoteBarcodeDetector>,WTF::DefaultRefDerefTraits<WebKit::RemoteBarcodeDetector>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::ShapeDetectionIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::remove(a1 + 2, v3);
  }

LABEL_8:
  v6 = WTF::HashTable<WTF::ObjectIdentifierGeneric<WebKit::ShapeDetectionIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::ShapeDetectionIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::RemoteFaceDetector,WTF::RawPtrTraits<WebKit::RemoteFaceDetector>,WTF::DefaultRefDerefTraits<WebKit::RemoteFaceDetector>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::ShapeDetectionIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::RemoteFaceDetector,WTF::RawPtrTraits<WebKit::RemoteFaceDetector>,WTF::DefaultRefDerefTraits<WebKit::RemoteFaceDetector>>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::ShapeDetectionIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::ShapeDetectionIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::RemoteFaceDetector,WTF::RawPtrTraits<WebKit::RemoteFaceDetector>,WTF::DefaultRefDerefTraits<WebKit::RemoteFaceDetector>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::ShapeDetectionIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::ShapeDetectionIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::Ref<WebKit::RemoteFaceDetector,WTF::RawPtrTraits<WebKit::RemoteFaceDetector>,WTF::DefaultRefDerefTraits<WebKit::RemoteFaceDetector>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::ShapeDetectionIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::find<WTF::IdentityHashTranslator<WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::ShapeDetectionIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::RemoteFaceDetector,WTF::RawPtrTraits<WebKit::RemoteFaceDetector>,WTF::DefaultRefDerefTraits<WebKit::RemoteFaceDetector>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::ShapeDetectionIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::ShapeDetectionIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::Ref<WebKit::RemoteFaceDetector,WTF::RawPtrTraits<WebKit::RemoteFaceDetector>,WTF::DefaultRefDerefTraits<WebKit::RemoteFaceDetector>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::ShapeDetectionIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,(WTF::ShouldValidateKey)1,WTF::ObjectIdentifierGeneric<WebKit::ShapeDetectionIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>( a1 + 3,  &v12);
  v7 = a1[3];
  if (v7)
  {
    v8 = (v7 + 16 * *(v7 - 4));
    if (v8 == v6)
    {
      goto LABEL_15;
    }
  }

  else
  {
    if (!v6)
    {
      goto LABEL_15;
    }

    v8 = 0;
  }

  if (v8 != v6)
  {
    WTF::HashTable<WTF::ObjectIdentifierGeneric<WebKit::ShapeDetectionIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::ShapeDetectionIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::RemoteBarcodeDetector,WTF::RawPtrTraits<WebKit::RemoteBarcodeDetector>,WTF::DefaultRefDerefTraits<WebKit::RemoteBarcodeDetector>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::ShapeDetectionIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::RemoteBarcodeDetector,WTF::RawPtrTraits<WebKit::RemoteBarcodeDetector>,WTF::DefaultRefDerefTraits<WebKit::RemoteBarcodeDetector>>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::ShapeDetectionIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::ShapeDetectionIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::RemoteBarcodeDetector,WTF::RawPtrTraits<WebKit::RemoteBarcodeDetector>,WTF::DefaultRefDerefTraits<WebKit::RemoteBarcodeDetector>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::ShapeDetectionIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::ShapeDetectionIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::Ref<WebKit::RemoteBarcodeDetector,WTF::RawPtrTraits<WebKit::RemoteBarcodeDetector>,WTF::DefaultRefDerefTraits<WebKit::RemoteBarcodeDetector>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::ShapeDetectionIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::remove(a1 + 3, v6);
  }

LABEL_15:
  result = WTF::HashTable<WTF::ObjectIdentifierGeneric<WebKit::ShapeDetectionIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::ShapeDetectionIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::RemoteTextDetector,WTF::RawPtrTraits<WebKit::RemoteTextDetector>,WTF::DefaultRefDerefTraits<WebKit::RemoteTextDetector>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::ShapeDetectionIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::RemoteTextDetector,WTF::RawPtrTraits<WebKit::RemoteTextDetector>,WTF::DefaultRefDerefTraits<WebKit::RemoteTextDetector>>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::ShapeDetectionIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::ShapeDetectionIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::RemoteTextDetector,WTF::RawPtrTraits<WebKit::RemoteTextDetector>,WTF::DefaultRefDerefTraits<WebKit::RemoteTextDetector>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::ShapeDetectionIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::ShapeDetectionIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::Ref<WebKit::RemoteTextDetector,WTF::RawPtrTraits<WebKit::RemoteTextDetector>,WTF::DefaultRefDerefTraits<WebKit::RemoteTextDetector>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::ShapeDetectionIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::find<WTF::IdentityHashTranslator<WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::ShapeDetectionIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::RemoteTextDetector,WTF::RawPtrTraits<WebKit::RemoteTextDetector>,WTF::DefaultRefDerefTraits<WebKit::RemoteTextDetector>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::ShapeDetectionIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::ShapeDetectionIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::Ref<WebKit::RemoteTextDetector,WTF::RawPtrTraits<WebKit::RemoteTextDetector>,WTF::DefaultRefDerefTraits<WebKit::RemoteTextDetector>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::ShapeDetectionIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,(WTF::ShouldValidateKey)1,WTF::ObjectIdentifierGeneric<WebKit::ShapeDetectionIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>( a1 + 4,  &v12);
  v10 = a1[4];
  if (v10)
  {
    v11 = (v10 + 16 * *(v10 - 4));
    if (v11 == result)
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

    v11 = 0;
  }

  if (v11 != result)
  {
    return WTF::HashTable<WTF::ObjectIdentifierGeneric<WebKit::ShapeDetectionIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::ShapeDetectionIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::RemoteBarcodeDetector,WTF::RawPtrTraits<WebKit::RemoteBarcodeDetector>,WTF::DefaultRefDerefTraits<WebKit::RemoteBarcodeDetector>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::ShapeDetectionIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::RemoteBarcodeDetector,WTF::RawPtrTraits<WebKit::RemoteBarcodeDetector>,WTF::DefaultRefDerefTraits<WebKit::RemoteBarcodeDetector>>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::ShapeDetectionIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::ShapeDetectionIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::RemoteBarcodeDetector,WTF::RawPtrTraits<WebKit::RemoteBarcodeDetector>,WTF::DefaultRefDerefTraits<WebKit::RemoteBarcodeDetector>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::ShapeDetectionIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::ShapeDetectionIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::Ref<WebKit::RemoteBarcodeDetector,WTF::RawPtrTraits<WebKit::RemoteBarcodeDetector>,WTF::DefaultRefDerefTraits<WebKit::RemoteBarcodeDetector>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::ShapeDetectionIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::remove(a1 + 4, result);
  }

  return result;
}

void WebKit::GPUConnectionToWebProcess::ref(WebKit::GPUConnectionToWebProcess *this)
{
  while (1)
  {
    v1 = *(this + 2);
    if ((v1 & 1) == 0)
    {
      break;
    }

    v2 = *(this + 2);
    atomic_compare_exchange_strong_explicit(this + 2, &v2, v1 + 2, memory_order_relaxed, memory_order_relaxed);
    if (v2 == v1)
    {
      return;
    }
  }

  WTF::ThreadSafeWeakPtrControlBlock::strongRef(*(this + 2));
}

uint64_t non-virtual thunk toWebKit::GPUConnectionToWebProcess::ref(uint64_t this)
{
  while (1)
  {
    v1 = *(this - 8);
    if ((v1 & 1) == 0)
    {
      break;
    }

    v2 = *(this - 8);
    atomic_compare_exchange_strong_explicit((this - 8), &v2, v1 + 2, memory_order_relaxed, memory_order_relaxed);
    if (v2 == v1)
    {
      return this;
    }
  }

  return WTF::ThreadSafeWeakPtrControlBlock::strongRef(*(this - 8));
}

unsigned int *WebKit::GPUProcess::deref(unsigned int *this)
{
  if (atomic_fetch_add(this + 34, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, this + 34);
    return (*(*this + 24))();
  }

  return this;
}

uint64_t WebKit::RemoteMediaPlayerManagerProxy::operator new(WebKit::RemoteMediaPlayerManagerProxy *this, void *a2)
{
  if (WebKit::RemoteMediaPlayerManagerProxy::s_heapRef)
  {
    return bmalloc::api::tzoneAllocateNonCompact(WebKit::RemoteMediaPlayerManagerProxy::s_heapRef, a2);
  }

  else
  {
    return WebKit::RemoteMediaPlayerManagerProxy::operatorNewSlow(0x48);
  }
}

uint64_t WebKit::RemoteSampleBufferDisplayLayerManager::operator new(WebKit::RemoteSampleBufferDisplayLayerManager *this, void *a2)
{
  if (WebKit::RemoteSampleBufferDisplayLayerManager::s_heapRef)
  {
    return bmalloc::api::tzoneAllocateNonCompact(WebKit::RemoteSampleBufferDisplayLayerManager::s_heapRef, a2);
  }

  else
  {
    return WebKit::RemoteSampleBufferDisplayLayerManager::operatorNewSlow(0x58);
  }
}

WebKit::RemoteAudioHardwareListenerProxy *std::unique_ptr<WebKit::RemoteAudioHardwareListenerProxy>::reset[abi:sn200100](WebKit::RemoteAudioHardwareListenerProxy **a1, WebKit::RemoteAudioHardwareListenerProxy *a2)
{
  result = *a1;
  *a1 = a2;
  if (result)
  {
    WebKit::RemoteAudioHardwareListenerProxy::~RemoteAudioHardwareListenerProxy(result, a2);

    return bmalloc::api::tzoneFree(v4, v5);
  }

  return result;
}

WebKit::RemoteMediaEngineConfigurationFactoryProxy *std::unique_ptr<WebKit::RemoteMediaEngineConfigurationFactoryProxy>::reset[abi:sn200100](WebKit::RemoteMediaEngineConfigurationFactoryProxy **a1, WebKit::RemoteMediaEngineConfigurationFactoryProxy *a2)
{
  result = *a1;
  *a1 = a2;
  if (result)
  {
    WebKit::RemoteMediaEngineConfigurationFactoryProxy::~RemoteMediaEngineConfigurationFactoryProxy(result, a2);

    return bmalloc::api::tzoneFree(v4, v5);
  }

  return result;
}

WebKit::RemoteGPU **IPC::ScopedActiveMessageReceiveQueue<WebKit::RemoteGPU,WTF::RefPtr<WebKit::RemoteGPU,WTF::RawPtrTraits<WebKit::RemoteGPU>,WTF::DefaultRefDerefTraits<WebKit::RemoteGPU>>>::~ScopedActiveMessageReceiveQueue(WebKit::RemoteGPU **a1)
{
  if (*a1)
  {
    IPC::ScopedActiveMessageReceiveQueue<WebKit::RemoteGPU,WTF::RefPtr<WebKit::RemoteGPU,WTF::RawPtrTraits<WebKit::RemoteGPU>,WTF::DefaultRefDerefTraits<WebKit::RemoteGPU>>>::stopListeningForIPCAndRelease<WTF::RefPtr<WebKit::RemoteGPU,WTF::RawPtrTraits<WebKit::RemoteGPU>,WTF::DefaultRefDerefTraits<WebKit::RemoteGPU>>>(a1);
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

WebKit::RemoteGPU *IPC::ScopedActiveMessageReceiveQueue<WebKit::RemoteGPU,WTF::RefPtr<WebKit::RemoteGPU,WTF::RawPtrTraits<WebKit::RemoteGPU>,WTF::DefaultRefDerefTraits<WebKit::RemoteGPU>>>::stopListeningForIPCAndRelease<WTF::RefPtr<WebKit::RemoteGPU,WTF::RawPtrTraits<WebKit::RemoteGPU>,WTF::DefaultRefDerefTraits<WebKit::RemoteGPU>>>(WebKit::RemoteGPU **a1)
{
  WebKit::RemoteGPU::stopListeningForIPC(*a1);
  result = *a1;
  *a1 = 0;
  if (result && atomic_fetch_add(result + 2, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, result + 2);
    v3 = *(*result + 8);

    return v3();
  }

  return result;
}

uint64_t WTF::HashTable<WTF::ObjectIdentifierGeneric<WebKit::GraphicsContextGLIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::GraphicsContextGLIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,IPC::ScopedActiveMessageReceiveQueue<WebKit::RemoteGraphicsContextGL,WTF::RefPtr<WebKit::RemoteGraphicsContextGL,WTF::RawPtrTraits<WebKit::RemoteGraphicsContextGL>,WTF::DefaultRefDerefTraits<WebKit::RemoteGraphicsContextGL>>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::GraphicsContextGLIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,IPC::ScopedActiveMessageReceiveQueue<WebKit::RemoteGraphicsContextGL,WTF::RefPtr<WebKit::RemoteGraphicsContextGL,WTF::RawPtrTraits<WebKit::RemoteGraphicsContextGL>,WTF::DefaultRefDerefTraits<WebKit::RemoteGraphicsContextGL>>>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::GraphicsContextGLIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::GraphicsContextGLIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,IPC::ScopedActiveMessageReceiveQueue<WebKit::RemoteGraphicsContextGL,WTF::RefPtr<WebKit::RemoteGraphicsContextGL,WTF::RawPtrTraits<WebKit::RemoteGraphicsContextGL>,WTF::DefaultRefDerefTraits<WebKit::RemoteGraphicsContextGL>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::GraphicsContextGLIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::GraphicsContextGLIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<IPC::ScopedActiveMessageReceiveQueue<WebKit::RemoteGraphicsContextGL,WTF::RefPtr<WebKit::RemoteGraphicsContextGL,WTF::RawPtrTraits<WebKit::RemoteGraphicsContextGL>,WTF::DefaultRefDerefTraits<WebKit::RemoteGraphicsContextGL>>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::GraphicsContextGLIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::deallocateTable(uint64_t a1, void *a2)
{
  v3 = *(a1 - 4);
  if (v3)
  {
    v4 = (a1 + 8);
    do
    {
      if (*(v4 - 1) != -1)
      {
        v4 = IPC::ScopedActiveMessageReceiveQueue<WebKit::RemoteGraphicsContextGL,WTF::RefPtr<WebKit::RemoteGraphicsContextGL,WTF::RawPtrTraits<WebKit::RemoteGraphicsContextGL>,WTF::DefaultRefDerefTraits<WebKit::RemoteGraphicsContextGL>>>::~ScopedActiveMessageReceiveQueue(v4);
      }

      v4 += 2;
      --v3;
    }

    while (v3);
  }

  return WTF::fastFree((a1 - 16), a2);
}

uint64_t *IPC::ScopedActiveMessageReceiveQueue<WebKit::RemoteGraphicsContextGL,WTF::RefPtr<WebKit::RemoteGraphicsContextGL,WTF::RawPtrTraits<WebKit::RemoteGraphicsContextGL>,WTF::DefaultRefDerefTraits<WebKit::RemoteGraphicsContextGL>>>::~ScopedActiveMessageReceiveQueue(uint64_t *a1)
{
  if (*a1)
  {
    IPC::ScopedActiveMessageReceiveQueue<WebKit::RemoteGraphicsContextGL,WTF::RefPtr<WebKit::RemoteGraphicsContextGL,WTF::RawPtrTraits<WebKit::RemoteGraphicsContextGL>,WTF::DefaultRefDerefTraits<WebKit::RemoteGraphicsContextGL>>>::stopListeningForIPCAndRelease<WTF::RefPtr<WebKit::RemoteGraphicsContextGL,WTF::RawPtrTraits<WebKit::RemoteGraphicsContextGL>,WTF::DefaultRefDerefTraits<WebKit::RemoteGraphicsContextGL>>>(a1);
    v2 = *a1;
    *a1 = 0;
    if (v2)
    {
      if (atomic_fetch_add((v2 + 16), 0xFFFFFFFF) == 1)
      {
        atomic_store(1u, (v2 + 16));
        (*(*(v2 + 8) + 8))();
      }
    }
  }

  return a1;
}

uint64_t IPC::ScopedActiveMessageReceiveQueue<WebKit::RemoteGraphicsContextGL,WTF::RefPtr<WebKit::RemoteGraphicsContextGL,WTF::RawPtrTraits<WebKit::RemoteGraphicsContextGL>,WTF::DefaultRefDerefTraits<WebKit::RemoteGraphicsContextGL>>>::stopListeningForIPCAndRelease<WTF::RefPtr<WebKit::RemoteGraphicsContextGL,WTF::RawPtrTraits<WebKit::RemoteGraphicsContextGL>,WTF::DefaultRefDerefTraits<WebKit::RemoteGraphicsContextGL>>>(uint64_t *a1)
{
  v4 = *a1;
  v1 = v4;
  *a1 = 0;
  WebKit::RemoteGraphicsContextGL::stopListeningForIPC(v1, &v4);
  result = v4;
  v4 = 0;
  if (result && atomic_fetch_add((result + 16), 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, (result + 16));
    v3 = *(*(result + 8) + 8);

    return v3();
  }

  return result;
}

uint64_t WTF::HashTable<WTF::ObjectIdentifierGeneric<WebKit::RenderingBackendIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::RenderingBackendIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,IPC::ScopedActiveMessageReceiveQueue<WebKit::RemoteRenderingBackend,WTF::RefPtr<WebKit::RemoteRenderingBackend,WTF::RawPtrTraits<WebKit::RemoteRenderingBackend>,WTF::DefaultRefDerefTraits<WebKit::RemoteRenderingBackend>>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::RenderingBackendIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,IPC::ScopedActiveMessageReceiveQueue<WebKit::RemoteRenderingBackend,WTF::RefPtr<WebKit::RemoteRenderingBackend,WTF::RawPtrTraits<WebKit::RemoteRenderingBackend>,WTF::DefaultRefDerefTraits<WebKit::RemoteRenderingBackend>>>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::RenderingBackendIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::RenderingBackendIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,IPC::ScopedActiveMessageReceiveQueue<WebKit::RemoteRenderingBackend,WTF::RefPtr<WebKit::RemoteRenderingBackend,WTF::RawPtrTraits<WebKit::RemoteRenderingBackend>,WTF::DefaultRefDerefTraits<WebKit::RemoteRenderingBackend>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::RenderingBackendIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::RenderingBackendIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<IPC::ScopedActiveMessageReceiveQueue<WebKit::RemoteRenderingBackend,WTF::RefPtr<WebKit::RemoteRenderingBackend,WTF::RawPtrTraits<WebKit::RemoteRenderingBackend>,WTF::DefaultRefDerefTraits<WebKit::RemoteRenderingBackend>>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::RenderingBackendIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::deallocateTable(uint64_t a1, void *a2)
{
  v3 = *(a1 - 4);
  if (v3)
  {
    v4 = (a1 + 8);
    do
    {
      if (*(v4 - 1) != -1)
      {
        v4 = IPC::ScopedActiveMessageReceiveQueue<WebKit::RemoteRenderingBackend,WTF::RefPtr<WebKit::RemoteRenderingBackend,WTF::RawPtrTraits<WebKit::RemoteRenderingBackend>,WTF::DefaultRefDerefTraits<WebKit::RemoteRenderingBackend>>>::~ScopedActiveMessageReceiveQueue(v4);
      }

      v4 += 2;
      --v3;
    }

    while (v3);
  }

  return WTF::fastFree((a1 - 16), a2);
}

WebKit::RemoteRenderingBackend **IPC::ScopedActiveMessageReceiveQueue<WebKit::RemoteRenderingBackend,WTF::RefPtr<WebKit::RemoteRenderingBackend,WTF::RawPtrTraits<WebKit::RemoteRenderingBackend>,WTF::DefaultRefDerefTraits<WebKit::RemoteRenderingBackend>>>::~ScopedActiveMessageReceiveQueue(WebKit::RemoteRenderingBackend **a1)
{
  if (*a1)
  {
    IPC::ScopedActiveMessageReceiveQueue<WebKit::RemoteRenderingBackend,WTF::RefPtr<WebKit::RemoteRenderingBackend,WTF::RawPtrTraits<WebKit::RemoteRenderingBackend>,WTF::DefaultRefDerefTraits<WebKit::RemoteRenderingBackend>>>::stopListeningForIPCAndRelease<WTF::RefPtr<WebKit::RemoteRenderingBackend,WTF::RawPtrTraits<WebKit::RemoteRenderingBackend>,WTF::DefaultRefDerefTraits<WebKit::RemoteRenderingBackend>>>(a1);
    v3 = *a1;
    *a1 = 0;
    if (v3)
    {
      if (atomic_fetch_add(v3 + 4, 0xFFFFFFFF) == 1)
      {
        atomic_store(1u, v3 + 4);
        (*(*(v3 + 1) + 8))();
      }
    }
  }

  return a1;
}

WebKit::RemoteRenderingBackend *IPC::ScopedActiveMessageReceiveQueue<WebKit::RemoteRenderingBackend,WTF::RefPtr<WebKit::RemoteRenderingBackend,WTF::RawPtrTraits<WebKit::RemoteRenderingBackend>,WTF::DefaultRefDerefTraits<WebKit::RemoteRenderingBackend>>>::stopListeningForIPCAndRelease<WTF::RefPtr<WebKit::RemoteRenderingBackend,WTF::RawPtrTraits<WebKit::RemoteRenderingBackend>,WTF::DefaultRefDerefTraits<WebKit::RemoteRenderingBackend>>>(WebKit::RemoteRenderingBackend **a1)
{
  WebKit::RemoteRenderingBackend::stopListeningForIPC(*a1);
  result = *a1;
  *a1 = 0;
  if (result && atomic_fetch_add(result + 4, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, result + 4);
    v3 = *(*(result + 1) + 8);

    return v3();
  }

  return result;
}

uint64_t WebKit::RemoteMediaResourceManager::operator new(WebKit::RemoteMediaResourceManager *this, void *a2)
{
  if (this == 40 && WebKit::RemoteMediaResourceManager::s_heapRef)
  {
    return bmalloc::api::tzoneAllocateNonCompact(WebKit::RemoteMediaResourceManager::s_heapRef, a2);
  }

  else
  {
    return WebKit::RemoteMediaResourceManager::operatorNewSlow(this);
  }
}

void WebKit::GPUProxyForCapture::~GPUProxyForCapture(WebKit::GPUProxyForCapture *this, void *a2)
{
  v3 = *(this + 2);
  *(this + 2) = 0;
  if (v3)
  {
    WTF::ThreadSafeWeakPtrControlBlock::weakDeref(v3, a2);
  }
}

{
  v3 = *(this + 2);
  *(this + 2) = 0;
  if (v3)
  {
    WTF::ThreadSafeWeakPtrControlBlock::weakDeref(v3, a2);
  }

  bmalloc::api::tzoneFree(this, a2);
}

uint64_t WebKit::RemoteCDMFactoryProxy::operator new(WebKit::RemoteCDMFactoryProxy *this, void *a2)
{
  if (this == 80 && WebKit::RemoteCDMFactoryProxy::s_heapRef)
  {
    return bmalloc::api::tzoneAllocateNonCompact(WebKit::RemoteCDMFactoryProxy::s_heapRef, a2);
  }

  else
  {
    return WebKit::RemoteCDMFactoryProxy::operatorNewSlow(this);
  }
}

uint64_t WebKit::RemoteLegacyCDMFactoryProxy::operator new(WebKit::RemoteLegacyCDMFactoryProxy *this, void *a2)
{
  if (this == 56 && WebKit::RemoteLegacyCDMFactoryProxy::s_heapRef)
  {
    return bmalloc::api::tzoneAllocateNonCompact(WebKit::RemoteLegacyCDMFactoryProxy::s_heapRef, a2);
  }

  else
  {
    return WebKit::RemoteLegacyCDMFactoryProxy::operatorNewSlow(this);
  }
}

void WTF::CompletionHandlerCallingScope::~CompletionHandlerCallingScope(WTF::CompletionHandlerCallingScope *this)
{
  v2 = *this;
  if (*this)
  {
    *this = 0;
    (*(*v2 + 16))(v2);
    (*(*v2 + 8))(v2);
    v3 = *this;
    *this = 0;
    if (v3)
    {
      (*(*v3 + 8))(v3);
    }
  }
}

uint64_t WebCore::NowPlayingManager::operator new(WebCore::NowPlayingManager *this, void *a2)
{
  if (this == 176 && *MEMORY[0x1E69E25E8])
  {
    return bmalloc::api::tzoneAllocateNonCompact(*MEMORY[0x1E69E25E8], a2);
  }

  else
  {
    return MEMORY[0x1EEE56CE8]();
  }
}

uint64_t WebKit::RemoteAudioSessionProxyManager::operator new(WebKit::RemoteAudioSessionProxyManager *this, void *a2)
{
  if (this == 64 && WebKit::RemoteAudioSessionProxyManager::s_heapRef)
  {
    return bmalloc::api::tzoneAllocateNonCompact(WebKit::RemoteAudioSessionProxyManager::s_heapRef, a2);
  }

  else
  {
    return WebKit::RemoteAudioSessionProxyManager::operatorNewSlow(this);
  }
}

void IPC::ThreadSafeObjectHeap<WTF::ObjectIdentifierGeneric<WebKit::RemoteSerializedImageBufferIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::RefPtr<WebCore::ImageBuffer,WTF::RawPtrTraits<WebCore::ImageBuffer>,WTF::DefaultRefDerefTraits<WebCore::ImageBuffer>>>::~ThreadSafeObjectHeap(void *a1, void *a2)
{
  *a1 = &unk_1F10FAD50;
  v2 = a1[2];
  if (v2)
  {
    WTF::HashTable<IPC::ObjectIdentifierReference<WTF::ObjectIdentifierGeneric<WebKit::RemoteSerializedImageBufferIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::KeyValuePair<IPC::ObjectIdentifierReference<WTF::ObjectIdentifierGeneric<WebKit::RemoteSerializedImageBufferIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,IPC::ThreadSafeObjectHeap<WTF::ObjectIdentifierGeneric<WebKit::RemoteSerializedImageBufferIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::RefPtr<WebCore::ImageBuffer,WTF::RawPtrTraits<WebCore::ImageBuffer>,WTF::DefaultRefDerefTraits<WebCore::ImageBuffer>>>::ReferenceState>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<IPC::ObjectIdentifierReference<WTF::ObjectIdentifierGeneric<WebKit::RemoteSerializedImageBufferIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,IPC::ThreadSafeObjectHeap<WTF::ObjectIdentifierGeneric<WebKit::RemoteSerializedImageBufferIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::RefPtr<WebCore::ImageBuffer,WTF::RawPtrTraits<WebCore::ImageBuffer>,WTF::DefaultRefDerefTraits<WebCore::ImageBuffer>>>::ReferenceState>>,WTF::DefaultHash<IPC::ObjectIdentifierReference<WTF::ObjectIdentifierGeneric<WebKit::RemoteSerializedImageBufferIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashMap<IPC::ObjectIdentifierReference<WTF::ObjectIdentifierGeneric<WebKit::RemoteSerializedImageBufferIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,IPC::ThreadSafeObjectHeap<WTF::ObjectIdentifierGeneric<WebKit::RemoteSerializedImageBufferIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::RefPtr<WebCore::ImageBuffer,WTF::RawPtrTraits<WebCore::ImageBuffer>,WTF::DefaultRefDerefTraits<WebCore::ImageBuffer>>>::ReferenceState,WTF::DefaultHash<IPC::ObjectIdentifierReference<WTF::ObjectIdentifierGeneric<WebKit::RemoteSerializedImageBufferIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashTraits<IPC::ObjectIdentifierReference<WTF::ObjectIdentifierGeneric<WebKit::RemoteSerializedImageBufferIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashTraits<IPC::ThreadSafeObjectHeap<WTF::ObjectIdentifierGeneric<WebKit::RemoteSerializedImageBufferIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::RefPtr<WebCore::ImageBuffer,WTF::RawPtrTraits<WebCore::ImageBuffer>,WTF::DefaultRefDerefTraits<WebCore::ImageBuffer>>>::ReferenceState>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<IPC::ObjectIdentifierReference<WTF::ObjectIdentifierGeneric<WebKit::RemoteSerializedImageBufferIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,WTF::FastMalloc>::deallocateTable(v2, a2);
  }

  JUMPOUT(0x19EB14CF0);
}

uint64_t WTF::HashTable<IPC::ObjectIdentifierReference<WTF::ObjectIdentifierGeneric<WebKit::RemoteSerializedImageBufferIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::KeyValuePair<IPC::ObjectIdentifierReference<WTF::ObjectIdentifierGeneric<WebKit::RemoteSerializedImageBufferIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,IPC::ThreadSafeObjectHeap<WTF::ObjectIdentifierGeneric<WebKit::RemoteSerializedImageBufferIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::RefPtr<WebCore::ImageBuffer,WTF::RawPtrTraits<WebCore::ImageBuffer>,WTF::DefaultRefDerefTraits<WebCore::ImageBuffer>>>::ReferenceState>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<IPC::ObjectIdentifierReference<WTF::ObjectIdentifierGeneric<WebKit::RemoteSerializedImageBufferIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,IPC::ThreadSafeObjectHeap<WTF::ObjectIdentifierGeneric<WebKit::RemoteSerializedImageBufferIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::RefPtr<WebCore::ImageBuffer,WTF::RawPtrTraits<WebCore::ImageBuffer>,WTF::DefaultRefDerefTraits<WebCore::ImageBuffer>>>::ReferenceState>>,WTF::DefaultHash<IPC::ObjectIdentifierReference<WTF::ObjectIdentifierGeneric<WebKit::RemoteSerializedImageBufferIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashMap<IPC::ObjectIdentifierReference<WTF::ObjectIdentifierGeneric<WebKit::RemoteSerializedImageBufferIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,IPC::ThreadSafeObjectHeap<WTF::ObjectIdentifierGeneric<WebKit::RemoteSerializedImageBufferIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::RefPtr<WebCore::ImageBuffer,WTF::RawPtrTraits<WebCore::ImageBuffer>,WTF::DefaultRefDerefTraits<WebCore::ImageBuffer>>>::ReferenceState,WTF::DefaultHash<IPC::ObjectIdentifierReference<WTF::ObjectIdentifierGeneric<WebKit::RemoteSerializedImageBufferIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashTraits<IPC::ObjectIdentifierReference<WTF::ObjectIdentifierGeneric<WebKit::RemoteSerializedImageBufferIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashTraits<IPC::ThreadSafeObjectHeap<WTF::ObjectIdentifierGeneric<WebKit::RemoteSerializedImageBufferIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::RefPtr<WebCore::ImageBuffer,WTF::RawPtrTraits<WebCore::ImageBuffer>,WTF::DefaultRefDerefTraits<WebCore::ImageBuffer>>>::ReferenceState>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<IPC::ObjectIdentifierReference<WTF::ObjectIdentifierGeneric<WebKit::RemoteSerializedImageBufferIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,WTF::FastMalloc>::deallocateTable(uint64_t a1, void *a2)
{
  v3 = *(a1 - 4);
  if (v3)
  {
    v4 = (a1 + 40);
    do
    {
      if (*(v4 - 5) != -1 && *(v4 + 8) == 1)
      {
        v5 = *v4;
        *v4 = 0;
        if (v5)
        {
          WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebCore::ImageBuffer,(WTF::DestructionThread)0>::deref((v5 + 8), a2);
        }
      }

      v4 += 7;
      --v3;
    }

    while (v3);
  }

  return WTF::fastFree((a1 - 16), a2);
}

uint64_t WTF::HashTable<WTF::ObjectIdentifierGeneric<WebKit::ShapeDetectionIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::ShapeDetectionIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::RemoteTextDetector,WTF::RawPtrTraits<WebKit::RemoteTextDetector>,WTF::DefaultRefDerefTraits<WebKit::RemoteTextDetector>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::ShapeDetectionIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::RemoteTextDetector,WTF::RawPtrTraits<WebKit::RemoteTextDetector>,WTF::DefaultRefDerefTraits<WebKit::RemoteTextDetector>>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::ShapeDetectionIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::ShapeDetectionIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::RemoteTextDetector,WTF::RawPtrTraits<WebKit::RemoteTextDetector>,WTF::DefaultRefDerefTraits<WebKit::RemoteTextDetector>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::ShapeDetectionIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::ShapeDetectionIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::Ref<WebKit::RemoteTextDetector,WTF::RawPtrTraits<WebKit::RemoteTextDetector>,WTF::DefaultRefDerefTraits<WebKit::RemoteTextDetector>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::ShapeDetectionIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::deallocateTable(uint64_t a1, void *a2)
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
          if (atomic_fetch_add(v5 + 2, 0xFFFFFFFF) == 1)
          {
            atomic_store(1u, v5 + 2);
            (*(*v5 + 8))(v5);
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

uint64_t *IPC::ScopedActiveMessageReceiveQueue<WebKit::LibWebRTCCodecsProxy,WTF::RefPtr<WebKit::LibWebRTCCodecsProxy,WTF::RawPtrTraits<WebKit::LibWebRTCCodecsProxy>,WTF::DefaultRefDerefTraits<WebKit::LibWebRTCCodecsProxy>>>::~ScopedActiveMessageReceiveQueue(uint64_t *a1)
{
  if (*a1)
  {
    IPC::ScopedActiveMessageReceiveQueue<WebKit::LibWebRTCCodecsProxy,WTF::RefPtr<WebKit::LibWebRTCCodecsProxy,WTF::RawPtrTraits<WebKit::LibWebRTCCodecsProxy>,WTF::DefaultRefDerefTraits<WebKit::LibWebRTCCodecsProxy>>>::stopListeningForIPCAndRelease<WTF::RefPtr<WebKit::LibWebRTCCodecsProxy,WTF::RawPtrTraits<WebKit::LibWebRTCCodecsProxy>,WTF::DefaultRefDerefTraits<WebKit::LibWebRTCCodecsProxy>>>(a1);
    v3 = *a1;
    *a1 = 0;
    if (v3)
    {
      WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::WorkQueueMessageReceiver<(WTF::DestructionThread)0>,(WTF::DestructionThread)0>::deref((v3 + 8), v2);
    }
  }

  return a1;
}

atomic_uchar **IPC::ScopedActiveMessageReceiveQueue<WebKit::LibWebRTCCodecsProxy,WTF::RefPtr<WebKit::LibWebRTCCodecsProxy,WTF::RawPtrTraits<WebKit::LibWebRTCCodecsProxy>,WTF::DefaultRefDerefTraits<WebKit::LibWebRTCCodecsProxy>>>::stopListeningForIPCAndRelease<WTF::RefPtr<WebKit::LibWebRTCCodecsProxy,WTF::RawPtrTraits<WebKit::LibWebRTCCodecsProxy>,WTF::DefaultRefDerefTraits<WebKit::LibWebRTCCodecsProxy>>>(uint64_t *a1)
{
  v5 = *a1;
  v1 = v5;
  *a1 = 0;
  result = WebKit::LibWebRTCCodecsProxy::stopListeningForIPC(v1, &v5);
  if (v5)
  {
    v4 = (v5 + 8);

    return WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::WorkQueueMessageReceiver<(WTF::DestructionThread)0>,(WTF::DestructionThread)0>::deref(v4, v3);
  }

  return result;
}

IPC::Encoder *IPC::MessageSender::send<Messages::GPUProcessProxy::SetHasVP9HardwareDecoder>(uint64_t a1, void *a2, uint64_t a3)
{
  v6 = IPC::Encoder::operator new(0x238, a2);
  *v6 = 64;
  *(v6 + 2) = 0;
  *(v6 + 3) = 0;
  *(v6 + 1) = a3;
  *(v6 + 68) = 0;
  *(v6 + 70) = 0;
  *(v6 + 69) = 0;
  IPC::Encoder::encodeHeader(v6);
  v11 = v6;
  IPC::Encoder::operator<<<BOOL &>(v6, a2);
  (*(*a1 + 32))(a1, &v11, 0);
  result = v11;
  v11 = 0;
  if (result)
  {
    IPC::Encoder::~Encoder(result, v7);
    return bmalloc::api::tzoneFree(v9, v10);
  }

  return result;
}

IPC::Encoder *IPC::MessageSender::send<Messages::GPUProcessProxy::SetHasAV1HardwareDecoder>(uint64_t a1, void *a2, uint64_t a3)
{
  v6 = IPC::Encoder::operator new(0x238, a2);
  *v6 = 63;
  *(v6 + 2) = 0;
  *(v6 + 3) = 0;
  *(v6 + 1) = a3;
  *(v6 + 68) = 0;
  *(v6 + 70) = 0;
  *(v6 + 69) = 0;
  IPC::Encoder::encodeHeader(v6);
  v11 = v6;
  IPC::Encoder::operator<<<BOOL &>(v6, a2);
  (*(*a1 + 32))(a1, &v11, 0);
  result = v11;
  v11 = 0;
  if (result)
  {
    IPC::Encoder::~Encoder(result, v7);
    return bmalloc::api::tzoneFree(v9, v10);
  }

  return result;
}

uint64_t IPC::ArgumentCoder<std::optional<WebKit::GPUProcessConnectionInfo>,void>::encode<IPC::Encoder,std::optional<WebKit::GPUProcessConnectionInfo> const&>(IPC::Encoder *a1, uint64_t a2)
{
  if (*(a2 + 40))
  {
    v6 = 1;
    IPC::Encoder::operator<<<BOOL>(a1, &v6);
    if (*(a2 + 40))
    {
      return IPC::ArgumentCoder<WebKit::GPUProcessConnectionInfo,void>::encode(a1, a2);
    }

    else
    {
      v5 = std::__throw_bad_optional_access[abi:sn200100]();
      return IPC::MessageSender::send<Messages::GPUProcessProxy::DidCreateContextForVisibilityPropagation>(v5);
    }
  }

  else
  {
    v7 = 0;
    return IPC::Encoder::operator<<<BOOL>(a1, &v7);
  }
}

IPC::Encoder *IPC::MessageSender::send<Messages::GPUProcessProxy::DidCreateContextForVisibilityPropagation>(uint64_t a1, void *a2, uint64_t a3)
{
  v6 = IPC::Encoder::operator new(0x238, a2);
  *v6 = 59;
  *(v6 + 2) = 0;
  *(v6 + 3) = 0;
  *(v6 + 1) = a3;
  *(v6 + 68) = 0;
  *(v6 + 70) = 0;
  *(v6 + 69) = 0;
  IPC::Encoder::encodeHeader(v6);
  v11 = v6;
  Messages::GPUProcessProxy::DidCreateContextForVisibilityPropagation::encode<IPC::Encoder>(a2, v6);
  (*(*a1 + 32))(a1, &v11, 0);
  result = v11;
  v11 = 0;
  if (result)
  {
    IPC::Encoder::~Encoder(result, v7);
    return bmalloc::api::tzoneFree(v9, v10);
  }

  return result;
}

uint64_t Messages::GPUProcessProxy::DidCreateContextForVisibilityPropagation::encode<IPC::Encoder>(uint64_t a1, IPC::Encoder *a2)
{
  IPC::ArgumentCoder<WebKit::CallbackID,void>::encode(a2, *a1);
  IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(a2, **(a1 + 8));
  v4 = **(a1 + 16);

  return IPC::ArgumentCoder<unsigned int,void>::encode<IPC::Encoder>(a2, v4);
}

uint64_t WTF::checkHashTableKey<std::pair<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::KeyValuePair<std::pair<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,std::unique_ptr<WebKit::LayerHostingContext>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<std::pair<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,std::unique_ptr<WebKit::LayerHostingContext>>>,WTF::DefaultHash<std::pair<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashMap<std::pair<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,std::unique_ptr<WebKit::LayerHostingContext>,WTF::DefaultHash<std::pair<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashTraits<std::pair<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashTraits<std::unique_ptr<WebKit::LayerHostingContext>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<std::pair<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashMapTranslator<WTF::HashMap<std::pair<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,std::unique_ptr<WebKit::LayerHostingContext>,WTF::DefaultHash<std::pair<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashTraits<std::pair<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashTraits<std::unique_ptr<WebKit::LayerHostingContext>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<std::pair<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>>,(WTF::ShouldValidateKey)1,std::pair<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>(uint64_t result, uint64_t a2)
{
  if (!(result | a2) || result == -1)
  {
    __break(0xC471u);
    JUMPOUT(0x19DB489C4);
  }

  return result;
}

uint64_t WTF::HashTable<std::pair<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::KeyValuePair<std::pair<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,std::unique_ptr<WebKit::LayerHostingContext>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<std::pair<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,std::unique_ptr<WebKit::LayerHostingContext>>>,WTF::DefaultHash<std::pair<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashMap<std::pair<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,std::unique_ptr<WebKit::LayerHostingContext>,WTF::DefaultHash<std::pair<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashTraits<std::pair<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashTraits<std::unique_ptr<WebKit::LayerHostingContext>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<std::pair<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::FastMalloc>::expand(uint64_t *a1, uint64_t a2)
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

  return WTF::HashTable<std::pair<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::KeyValuePair<std::pair<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,std::unique_ptr<WebKit::LayerHostingContext>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<std::pair<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,std::unique_ptr<WebKit::LayerHostingContext>>>,WTF::DefaultHash<std::pair<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashMap<std::pair<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,std::unique_ptr<WebKit::LayerHostingContext>,WTF::DefaultHash<std::pair<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashTraits<std::pair<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashTraits<std::unique_ptr<WebKit::LayerHostingContext>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<std::pair<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::FastMalloc>::rehash(a1, v5, a2);
}

id **WTF::HashMapTranslator<WTF::HashMap<std::pair<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,std::unique_ptr<WebKit::LayerHostingContext>,WTF::DefaultHash<std::pair<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashTraits<std::pair<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashTraits<std::unique_ptr<WebKit::LayerHostingContext>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<std::pair<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>>::translate<std::pair<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::KeyValuePair<std::pair<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,std::unique_ptr<WebKit::LayerHostingContext>>,WTF::HashTableAddResult<WTF::HashTableIterator<WTF::HashTable<std::pair<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::KeyValuePair<std::pair<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,std::unique_ptr<WebKit::LayerHostingContext>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<std::pair<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,std::unique_ptr<WebKit::LayerHostingContext>>>,WTF::DefaultHash<std::pair<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashMap<std::pair<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,std::unique_ptr<WebKit::LayerHostingContext>,WTF::DefaultHash<std::pair<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashTraits<std::pair<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashTraits<std::unique_ptr<WebKit::LayerHostingContext>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<std::pair<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::FastMalloc>,std::pair<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::KeyValuePair<std::pair<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,std::unique_ptr<WebKit::LayerHostingContext>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<std::pair<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,std::unique_ptr<WebKit::LayerHostingContext>>>,WTF::DefaultHash<std::pair<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashMap<std::pair<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,std::unique_ptr<WebKit::LayerHostingContext>,WTF::DefaultHash<std::pair<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashTraits<std::pair<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashTraits<std::unique_ptr<WebKit::LayerHostingContext>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<std::pair<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>>> WTF::HashMap<std::pair<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,std::unique_ptr<WebKit::LayerHostingContext>,WTF::DefaultHash<std::pair<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashTraits<std::pair<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashTraits<std::unique_ptr<WebKit::LayerHostingContext>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::inlineAdd<std::pair<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,std::unique_ptr<WebKit::LayerHostingContext>>(std::pair<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>> &&,std::unique_ptr<WebKit::LayerHostingContext> &&)::{lambda(void)#1}>(uint64_t a1, void *a2, id ***a3)
{
  *a1 = *a2;
  *(a1 + 8) = a2[1];
  v3 = **a3;
  **a3 = 0;
  v5 = v3;
  std::unique_ptr<WebKit::LayerHostingContext>::operator=[abi:sn200100]((a1 + 16), &v5);
  return std::unique_ptr<WebKit::LayerHostingContext>::~unique_ptr[abi:sn200100](&v5);
}

uint64_t WTF::HashTable<std::pair<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::KeyValuePair<std::pair<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,std::unique_ptr<WebKit::LayerHostingContext>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<std::pair<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,std::unique_ptr<WebKit::LayerHostingContext>>>,WTF::DefaultHash<std::pair<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashMap<std::pair<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,std::unique_ptr<WebKit::LayerHostingContext>,WTF::DefaultHash<std::pair<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashTraits<std::pair<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashTraits<std::unique_ptr<WebKit::LayerHostingContext>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<std::pair<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::FastMalloc>::rehash(uint64_t *a1, unsigned int a2, uint64_t a3)
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

  v9 = WTF::fastZeroedMalloc((24 * a2 + 16));
  *a1 = (v9 + 4);
  v9[2] = a2 - 1;
  v9[3] = a2;
  *v9 = 0;
  v9[1] = v8;
  v11 = 0;
  if (v7)
  {
    v13 = v7;
    v14 = v6;
    do
    {
      if (*v14 != -1)
      {
        if (*v14 == 0)
        {
          std::unique_ptr<WebKit::LayerHostingContext>::~unique_ptr[abi:sn200100]((v14 + 16));
        }

        else
        {
          v15 = WTF::HashTable<std::pair<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::KeyValuePair<std::pair<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,std::unique_ptr<WebKit::LayerHostingContext>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<std::pair<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,std::unique_ptr<WebKit::LayerHostingContext>>>,WTF::DefaultHash<std::pair<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashMap<std::pair<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,std::unique_ptr<WebKit::LayerHostingContext>,WTF::DefaultHash<std::pair<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashTraits<std::pair<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashTraits<std::unique_ptr<WebKit::LayerHostingContext>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<std::pair<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::FastMalloc>::reinsert(*a1, v14);
          std::unique_ptr<WebKit::LayerHostingContext>::~unique_ptr[abi:sn200100]((v14 + 16));
          if (v14 == a3)
          {
            v11 = v15;
          }
        }
      }

      v14 += 24;
      --v13;
    }

    while (v13);
    goto LABEL_14;
  }

  result = 0;
  if (v6)
  {
LABEL_14:
    WTF::fastFree((v6 - 16), v10);
    return v11;
  }

  return result;
}

uint64_t WTF::HashTable<std::pair<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::KeyValuePair<std::pair<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,std::unique_ptr<WebKit::LayerHostingContext>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<std::pair<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,std::unique_ptr<WebKit::LayerHostingContext>>>,WTF::DefaultHash<std::pair<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashMap<std::pair<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,std::unique_ptr<WebKit::LayerHostingContext>,WTF::DefaultHash<std::pair<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashTraits<std::pair<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashTraits<std::unique_ptr<WebKit::LayerHostingContext>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<std::pair<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::FastMalloc>::reinsert(uint64_t a1, void *a2)
{
  if (a1)
  {
    v4 = *(a1 - 8);
  }

  else
  {
    v4 = 0;
  }

  v5 = WTF::PairHash<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>::hash(a2);
  v6 = 0;
  do
  {
    v7 = a1 + 24 * (v5 & v4);
    v5 = ++v6 + (v5 & v4);
  }

  while (*v7 != 0);
  std::unique_ptr<WebKit::LayerHostingContext>::~unique_ptr[abi:sn200100]((v7 + 16));
  *v7 = *a2;
  v8 = a2[2];
  a2[2] = 0;
  *(v7 + 16) = v8;
  return v7;
}

uint64_t WTF::ObjectIdentifierGenericBaseHash<unsigned long long>::hash(void *a1)
{
  v1 = *a1 + ~(*a1 << 32);
  v2 = 9 * (((v1 ^ (v1 >> 22)) + ~((v1 ^ (v1 >> 22)) << 13)) ^ (((v1 ^ (v1 >> 22)) + ~((v1 ^ (v1 >> 22)) << 13)) >> 8));
  v3 = (v2 ^ (v2 >> 15)) + ~((v2 ^ (v2 >> 15)) << 27);
  return (v3 >> 31) ^ v3;
}

uint64_t *WTF::HashMap<std::pair<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,std::unique_ptr<WebKit::LayerHostingContext>,WTF::DefaultHash<std::pair<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashTraits<std::pair<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashTraits<std::unique_ptr<WebKit::LayerHostingContext>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::remove(uint64_t *a1, uint64_t a2)
{
  if (*a1)
  {
    v2 = *a1 + 24 * *(*a1 - 4);
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
    return WTF::HashTable<std::pair<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::KeyValuePair<std::pair<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,std::unique_ptr<WebKit::LayerHostingContext>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<std::pair<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,std::unique_ptr<WebKit::LayerHostingContext>>>,WTF::DefaultHash<std::pair<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashMap<std::pair<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,std::unique_ptr<WebKit::LayerHostingContext>,WTF::DefaultHash<std::pair<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashTraits<std::pair<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashTraits<std::unique_ptr<WebKit::LayerHostingContext>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<std::pair<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::FastMalloc>::remove(a1, a2);
  }

  return a1;
}

id **WTF::HashTable<std::pair<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::KeyValuePair<std::pair<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,std::unique_ptr<WebKit::LayerHostingContext>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<std::pair<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,std::unique_ptr<WebKit::LayerHostingContext>>>,WTF::DefaultHash<std::pair<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashMap<std::pair<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,std::unique_ptr<WebKit::LayerHostingContext>,WTF::DefaultHash<std::pair<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashTraits<std::pair<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashTraits<std::unique_ptr<WebKit::LayerHostingContext>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<std::pair<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::FastMalloc>::remove(uint64_t *a1, uint64_t a2)
{
  *a2 = -1;
  result = std::unique_ptr<WebKit::LayerHostingContext>::~unique_ptr[abi:sn200100]((a2 + 16));
  v4 = *a1;
  v5 = vadd_s32(*(*a1 - 16), 0xFFFFFFFF00000001);
  *(v4 - 16) = v5;
  v6 = *(v4 - 4);
  if (6 * v5.i32[1] < v6 && v6 >= 9)
  {

    return WTF::HashTable<std::pair<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::KeyValuePair<std::pair<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,std::unique_ptr<WebKit::LayerHostingContext>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<std::pair<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,std::unique_ptr<WebKit::LayerHostingContext>>>,WTF::DefaultHash<std::pair<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashMap<std::pair<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,std::unique_ptr<WebKit::LayerHostingContext>,WTF::DefaultHash<std::pair<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashTraits<std::pair<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashTraits<std::unique_ptr<WebKit::LayerHostingContext>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<std::pair<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::FastMalloc>::rehash(a1, v6 >> 1, 0);
  }

  return result;
}

uint64_t *WTF::HashTable<std::pair<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::KeyValuePair<std::pair<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,std::unique_ptr<WebKit::LayerHostingContext>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<std::pair<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,std::unique_ptr<WebKit::LayerHostingContext>>>,WTF::DefaultHash<std::pair<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashMap<std::pair<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,std::unique_ptr<WebKit::LayerHostingContext>,WTF::DefaultHash<std::pair<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashTraits<std::pair<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashTraits<std::unique_ptr<WebKit::LayerHostingContext>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<std::pair<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::FastMalloc>::find<WTF::IdentityHashTranslator<WTF::HashMap<std::pair<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,std::unique_ptr<WebKit::LayerHostingContext>,WTF::DefaultHash<std::pair<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashTraits<std::pair<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashTraits<std::unique_ptr<WebKit::LayerHostingContext>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<std::pair<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>>,(WTF::ShouldValidateKey)1,std::pair<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>(uint64_t *a1, uint64_t *a2)
{
  if (!*a1)
  {
    return 0;
  }

  result = WTF::HashTable<std::pair<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::KeyValuePair<std::pair<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,std::unique_ptr<WebKit::LayerHostingContext>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<std::pair<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,std::unique_ptr<WebKit::LayerHostingContext>>>,WTF::DefaultHash<std::pair<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashMap<std::pair<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,std::unique_ptr<WebKit::LayerHostingContext>,WTF::DefaultHash<std::pair<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashTraits<std::pair<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashTraits<std::unique_ptr<WebKit::LayerHostingContext>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<std::pair<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::FastMalloc>::lookup<WTF::IdentityHashTranslator<WTF::HashMap<std::pair<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,std::unique_ptr<WebKit::LayerHostingContext>,WTF::DefaultHash<std::pair<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashTraits<std::pair<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashTraits<std::unique_ptr<WebKit::LayerHostingContext>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<std::pair<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>>,(WTF::ShouldValidateKey)1,std::pair<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>( a1,  a2);
  v4 = *a1;
  if (!result)
  {
    if (v4)
    {
      return (v4 + 24 * *(v4 - 4));
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t *WTF::HashTable<std::pair<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::KeyValuePair<std::pair<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,std::unique_ptr<WebKit::LayerHostingContext>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<std::pair<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,std::unique_ptr<WebKit::LayerHostingContext>>>,WTF::DefaultHash<std::pair<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashMap<std::pair<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,std::unique_ptr<WebKit::LayerHostingContext>,WTF::DefaultHash<std::pair<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashTraits<std::pair<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashTraits<std::unique_ptr<WebKit::LayerHostingContext>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<std::pair<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::FastMalloc>::lookup<WTF::IdentityHashTranslator<WTF::HashMap<std::pair<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,std::unique_ptr<WebKit::LayerHostingContext>,WTF::DefaultHash<std::pair<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashTraits<std::pair<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashTraits<std::unique_ptr<WebKit::LayerHostingContext>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<std::pair<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>>,(WTF::ShouldValidateKey)1,std::pair<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>(uint64_t *a1, uint64_t *a2)
{
  WTF::checkHashTableKey<std::pair<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::KeyValuePair<std::pair<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,std::unique_ptr<WebKit::LayerHostingContext>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<std::pair<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,std::unique_ptr<WebKit::LayerHostingContext>>>,WTF::DefaultHash<std::pair<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashMap<std::pair<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,std::unique_ptr<WebKit::LayerHostingContext>,WTF::DefaultHash<std::pair<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashTraits<std::pair<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashTraits<std::unique_ptr<WebKit::LayerHostingContext>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<std::pair<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::IdentityHashTranslator<WTF::HashMap<std::pair<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,std::unique_ptr<WebKit::LayerHostingContext>,WTF::DefaultHash<std::pair<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashTraits<std::pair<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashTraits<std::unique_ptr<WebKit::LayerHostingContext>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<std::pair<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>>,(WTF::ShouldValidateKey)1,std::pair<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>( *a2,  a2[1]);
  v4 = *a1;
  if (!v4)
  {
    return 0;
  }

  v5 = *(v4 - 8);
  v6 = WTF::PairHash<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>::hash(a2);
  v7 = a2[1];
  v8 = v6 & v5;
  result = (v4 + 24 * (v6 & v5));
  v10 = *result;
  v11 = result[1];
  if (*result != *a2 || v11 != v7)
  {
    v13 = 1;
    while (v10 | v11)
    {
      v8 = (v8 + v13) & v5;
      result = (v4 + 24 * v8);
      v10 = *result;
      v11 = result[1];
      ++v13;
      if (*result == *a2 && v11 == v7)
      {
        return result;
      }
    }

    return 0;
  }

  return result;
}

uint64_t WTF::checkHashTableKey<std::pair<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::KeyValuePair<std::pair<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,std::unique_ptr<WebKit::LayerHostingContext>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<std::pair<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,std::unique_ptr<WebKit::LayerHostingContext>>>,WTF::DefaultHash<std::pair<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashMap<std::pair<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,std::unique_ptr<WebKit::LayerHostingContext>,WTF::DefaultHash<std::pair<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashTraits<std::pair<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashTraits<std::unique_ptr<WebKit::LayerHostingContext>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<std::pair<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::IdentityHashTranslator<WTF::HashMap<std::pair<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,std::unique_ptr<WebKit::LayerHostingContext>,WTF::DefaultHash<std::pair<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashTraits<std::pair<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashTraits<std::unique_ptr<WebKit::LayerHostingContext>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<std::pair<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>>,(WTF::ShouldValidateKey)1,std::pair<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>(uint64_t result, uint64_t a2)
{
  if (!(result | a2) || result == -1)
  {
    __break(0xC471u);
    JUMPOUT(0x19DB48E34);
  }

  return result;
}

atomic_uchar *WTF::makeUniqueRefWithoutFastMallocCheck<WebKit::GPUProxyForCapture,WebKit::GPUConnectionToWebProcess &>(WebKit::GPUProxyForCapture *a1, atomic_ullong *a2)
{
  v4 = WebKit::GPUProxyForCapture::operator new(a1, a2);
  *v4 = &unk_1F10FAD70;
  v4[1] = a2;
  v5 = WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::GPUConnectionToWebProcess,(WTF::DestructionThread)1>::controlBlock(a2 + 2);
  result = WTF::ThreadSafeWeakPtrControlBlock::weakRef(v5);
  v4[2] = result;
  *a1 = v4;
  return result;
}

uint64_t WebKit::GPUProxyForCapture::operator new(WebKit::GPUProxyForCapture *this, void *a2)
{
  if (WebKit::GPUProxyForCapture::operator new(unsigned long)::s_heapRef)
  {
    return bmalloc::api::tzoneAllocateNonCompact(WebKit::GPUProxyForCapture::operator new(unsigned long)::s_heapRef, a2);
  }

  else
  {
    return bmalloc::api::tzoneAllocateNonCompactSlow();
  }
}

uint64_t WebKit::GPUProxyForCapture::connection(WebKit::GPUProxyForCapture *this)
{
  WTF::ThreadSafeWeakPtrControlBlock::makeStrongReferenceIfPossible<WebKit::GPUConnectionToWebProcess>(*(this + 2), *(this + 1), &v4);
  v1 = v4;
  v2 = *(v4 + 56);
  v4 = 0;
  WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::GPUConnectionToWebProcess,(WTF::DestructionThread)1>::deref((v1 + 16));
  return v2;
}

uint64_t WebKit::GPUProxyForCapture::willStartCapture(uint64_t a1, int a2)
{
  v4 = *(a1 + 16);
  if (v4)
  {
    WTF::ThreadSafeWeakPtrControlBlock::makeStrongReferenceIfPossible<WebKit::GPUConnectionToWebProcess>(v4, *(a1 + 8), &v10);
    v5 = v10;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 15)
  {
    if (a2 == 16 || a2 == 32)
    {
      v6 = 186;
      goto LABEL_13;
    }
  }

  else
  {
    if (a2 == 2)
    {
      v6 = 184;
      goto LABEL_13;
    }

    if (a2 == 8)
    {
      v6 = 185;
LABEL_13:
      v7 = *(v5 + v6);
      v10 = 0;
LABEL_14:
      WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::GPUConnectionToWebProcess,(WTF::DestructionThread)1>::deref((v5 + 16));
      v8 = v7;
      return v8 & 1;
    }
  }

  v7 = 0;
  v8 = 0;
  v10 = 0;
  if (v5)
  {
    goto LABEL_14;
  }

  return v8 & 1;
}

uint64_t WebKit::GPUProxyForCapture::logger(WebKit::GPUProxyForCapture *this)
{
  v2 = *(this + 2);
  if (v2)
  {
    WTF::ThreadSafeWeakPtrControlBlock::makeStrongReferenceIfPossible<WebKit::GPUConnectionToWebProcess>(v2, *(this + 1), &v6);
    v2 = v6;
  }

  else
  {
    v6 = 0;
  }

  v3 = WebKit::GPUConnectionToWebProcess::logger(v2);
  v4 = v6;
  v6 = 0;
  if (v4)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::GPUConnectionToWebProcess,(WTF::DestructionThread)1>::deref(v4 + 2);
  }

  return v3;
}

uint64_t WebKit::GPUProxyForCapture::setCaptureAttributionString(WebKit::GPUProxyForCapture *this)
{
  v2 = *(this + 2);
  if (v2)
  {
    WTF::ThreadSafeWeakPtrControlBlock::makeStrongReferenceIfPossible<WebKit::GPUConnectionToWebProcess>(v2, *(this + 1), &v6);
    v2 = v6;
  }

  else
  {
    v6 = 0;
  }

  v3 = WebKit::GPUConnectionToWebProcess::setCaptureAttributionString(v2);
  v4 = v6;
  v6 = 0;
  if (v4)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::GPUConnectionToWebProcess,(WTF::DestructionThread)1>::deref(v4 + 2);
  }

  return v3;
}

uint64_t WebKit::GPUProxyForCapture::resourceOwner(WebKit::GPUProxyForCapture *this)
{
  v2 = *(this + 2);
  if (!v2)
  {
    return 96;
  }

  WTF::ThreadSafeWeakPtrControlBlock::makeStrongReferenceIfPossible<WebKit::GPUConnectionToWebProcess>(v2, *(this + 1), &v6);
  v5 = v6;
  v3 = v6 + 96;
  v6 = 0;
  if (v5)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::GPUConnectionToWebProcess,(WTF::DestructionThread)1>::deref((v5 + 16));
  }

  return v3;
}

void WebKit::GPUProxyForCapture::setTCCIdentity(WebKit::GPUProxyForCapture *this)
{
  v2 = *(this + 2);
  if (v2)
  {
    WTF::ThreadSafeWeakPtrControlBlock::makeStrongReferenceIfPossible<WebKit::GPUConnectionToWebProcess>(v2, *(this + 1), &v4);
    v2 = v4;
  }

  else
  {
    v4 = 0;
  }

  WebKit::GPUConnectionToWebProcess::setTCCIdentity(v2);
  v3 = v4;
  v4 = 0;
  if (v3)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::GPUConnectionToWebProcess,(WTF::DestructionThread)1>::deref(v3 + 2);
  }
}

BOOL WebKit::GPUProxyForCapture::setCurrentMediaEnvironment(uint64_t a1, uint64_t a2)
{
  WTF::ThreadSafeWeakPtrControlBlock::makeStrongReferenceIfPossible<WebKit::GPUConnectionToWebProcess>(*(a1 + 16), *(a1 + 8), &v9);
  v11 = a2;
  v3 = WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::String,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::get<WTF::IdentityHashTranslator<WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::String,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>((v9 + 328), &v11, &v10);
  v4 = v9;
  v9 = 0;
  if (v4)
  {
    v3 = WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::GPUConnectionToWebProcess,(WTF::DestructionThread)1>::deref((v4 + 16));
  }

  if (v10)
  {
    v5 = *(v10 + 1) != 0;
  }

  else
  {
    v5 = 0;
  }

  WebCore::RealtimeMediaSourceCenter::singleton(v3);
  WebCore::RealtimeMediaSourceCenter::setCurrentMediaEnvironment();
  v7 = v10;
  v10 = 0;
  if (v7 && atomic_fetch_add_explicit(v7, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v7, v6);
  }

  return v5;
}

atomic_ullong *WebKit::GPUProxyForCapture::providePresentingApplicationPID(uint64_t a1, uint64_t a2)
{
  result = *(a1 + 16);
  if (result)
  {
    WTF::ThreadSafeWeakPtrControlBlock::makeStrongReferenceIfPossible<WebKit::GPUConnectionToWebProcess>(result, *(a1 + 8), &v7);
    result = v7;
  }

  else
  {
    v7 = 0;
  }

  if ((*(result + 349) & 8) != 0)
  {
    v7 = 0;
  }

  else
  {
    v5 = WebKit::GPUConnectionToWebProcess::presentingApplicationPID(result, a2);
    v6 = WebCore::MediaSessionHelper::sharedHelper(v5);
    (*(*v6 + 24))(v6, v5);
    result = v7;
    v7 = 0;
    if (!result)
    {
      return result;
    }
  }

  return WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::GPUConnectionToWebProcess,(WTF::DestructionThread)1>::deref(result + 2);
}

atomic_uchar *WebKit::GPUProxyForCapture::startProducingData(uint64_t a1, int a2, uint64_t a3)
{
  result = *(a1 + 16);
  if (result)
  {
    result = WTF::ThreadSafeWeakPtrControlBlock::makeStrongReferenceIfPossible<WebKit::GPUConnectionToWebProcess>(result, *(a1 + 8), &v16);
  }

  else
  {
    v16 = 0;
  }

  if (a2 == 8)
  {
    WebKit::GPUProxyForCapture::providePresentingApplicationPID(a1, a3);
    result = WebCore::AVVideoCaptureSource::setUseAVCaptureDeviceRotationCoordinatorAPI(((*(v16 + 352) >> 3) & 1));
  }

  else if (a2 == 2)
  {
    v7 = v16;
    v8 = *(*(v16 + 80) + 144);
    result = WTF::HashTable<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::GPUConnectionToWebProcess,WTF::RawPtrTraits<WebKit::GPUConnectionToWebProcess>,WTF::DefaultRefDerefTraits<WebKit::GPUConnectionToWebProcess>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::GPUConnectionToWebProcess,WTF::RawPtrTraits<WebKit::GPUConnectionToWebProcess>,WTF::DefaultRefDerefTraits<WebKit::GPUConnectionToWebProcess>>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::GPUConnectionToWebProcess,WTF::RawPtrTraits<WebKit::GPUConnectionToWebProcess>,WTF::DefaultRefDerefTraits<WebKit::GPUConnectionToWebProcess>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::Ref<WebKit::GPUConnectionToWebProcess,WTF::RawPtrTraits<WebKit::GPUConnectionToWebProcess>,WTF::DefaultRefDerefTraits<WebKit::GPUConnectionToWebProcess>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::begin(v8);
    v9 = result;
    v11 = v10;
    v12 = v8 ? &v8[2 * *(v8 - 1)] : 0;
    if (v12 != result)
    {
      do
      {
        v13 = *(v9 + 1);
        *(v13 + 160) = v13 == v7;
        v14 = *(v13 + 152);
        if (v14)
        {
          WebKit::RemoteAudioMediaStreamTrackRendererInternalUnitManager::ref(*(v13 + 152));
          WebKit::RemoteAudioMediaStreamTrackRendererInternalUnitManager::notifyLastToCaptureAudioChanged(v14);
          result = WebKit::RemoteAudioMediaStreamTrackRendererInternalUnitManager::deref(v14);
        }

        do
        {
          v9 += 16;
        }

        while (v9 != v11 && (*v9 + 1) <= 1);
      }

      while (v9 != v12);
    }
  }

  v15 = v16;
  v16 = 0;
  if (v15)
  {
    return WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::GPUConnectionToWebProcess,(WTF::DestructionThread)1>::deref((v15 + 16));
  }

  return result;
}

uint64_t WebKit::GPUProxyForCapture::remoteVideoFrameObjectHeap(WebKit::GPUProxyForCapture *this)
{
  WTF::ThreadSafeWeakPtrControlBlock::makeStrongReferenceIfPossible<WebKit::GPUConnectionToWebProcess>(*(this + 2), *(this + 1), &v4);
  v1 = v4;
  v2 = *(v4 + 192);
  v4 = 0;
  WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::GPUConnectionToWebProcess,(WTF::DestructionThread)1>::deref((v1 + 16));
  return v2;
}

atomic_ullong *WebKit::GPUProxyForCapture::startMonitoringCaptureDeviceRotation(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WTF::ThreadSafeWeakPtrControlBlock::makeStrongReferenceIfPossible<WebKit::GPUConnectionToWebProcess>(*(a1 + 16), *(a1 + 8), &v10);
  v5 = *(*(v10 + 80) + 40);
  v13 = a2;
  if (v5)
  {
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
    v11 = &v13;
    v12 = a3;
    IPC::Connection::send<Messages::GPUProcessProxy::StartMonitoringCaptureDeviceRotation>(v5, &v11);
    result = WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v5);
  }

  else
  {
    v11 = &v13;
    v12 = a3;
    result = IPC::Connection::send<Messages::GPUProcessProxy::StartMonitoringCaptureDeviceRotation>(0, &v11);
  }

  v9 = v10;
  v10 = 0;
  if (v9)
  {
    return WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::GPUConnectionToWebProcess,(WTF::DestructionThread)1>::deref((v9 + 16));
  }

  return result;
}

atomic_ullong *WebKit::GPUProxyForCapture::stopMonitoringCaptureDeviceRotation(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WTF::ThreadSafeWeakPtrControlBlock::makeStrongReferenceIfPossible<WebKit::GPUConnectionToWebProcess>(*(a1 + 16), *(a1 + 8), &v10);
  v5 = *(*(v10 + 80) + 40);
  v13 = a2;
  if (v5)
  {
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
    v11 = &v13;
    v12 = a3;
    IPC::Connection::send<Messages::GPUProcessProxy::StopMonitoringCaptureDeviceRotation>(v5, &v11);
    result = WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v5);
  }

  else
  {
    v11 = &v13;
    v12 = a3;
    result = IPC::Connection::send<Messages::GPUProcessProxy::StopMonitoringCaptureDeviceRotation>(0, &v11);
  }

  v9 = v10;
  v10 = 0;
  if (v9)
  {
    return WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::GPUConnectionToWebProcess,(WTF::DestructionThread)1>::deref((v9 + 16));
  }

  return result;
}

atomic_uchar *WebKit::GPUProxyForCapture::sharedPreferencesForWebProcess@<X0>(WebKit::GPUProxyForCapture *this@<X0>, uint64_t a2@<X8>)
{
  result = *(this + 2);
  if (result && (result = WTF::ThreadSafeWeakPtrControlBlock::makeStrongReferenceIfPossible<WebKit::GPUConnectionToWebProcess>(result, *(this + 1), &v6), (v5 = v6) != 0))
  {
    *a2 = *(v6 + 336);
    *(a2 + 16) = *(v5 + 352);
    *(a2 + 24) = 1;
    v6 = 0;
    return WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::GPUConnectionToWebProcess,(WTF::DestructionThread)1>::deref((v5 + 16));
  }

  else
  {
    *a2 = 0;
    *(a2 + 24) = 0;
  }

  return result;
}

uint64_t WTF::checkHashTableKey<WTF::ObjectIdentifierGeneric<WebKit::RenderingBackendIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::RenderingBackendIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,IPC::ScopedActiveMessageReceiveQueue<WebKit::RemoteRenderingBackend,WTF::RefPtr<WebKit::RemoteRenderingBackend,WTF::RawPtrTraits<WebKit::RemoteRenderingBackend>,WTF::DefaultRefDerefTraits<WebKit::RemoteRenderingBackend>>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::RenderingBackendIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,IPC::ScopedActiveMessageReceiveQueue<WebKit::RemoteRenderingBackend,WTF::RefPtr<WebKit::RemoteRenderingBackend,WTF::RawPtrTraits<WebKit::RemoteRenderingBackend>,WTF::DefaultRefDerefTraits<WebKit::RemoteRenderingBackend>>>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::RenderingBackendIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::RenderingBackendIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,IPC::ScopedActiveMessageReceiveQueue<WebKit::RemoteRenderingBackend,WTF::RefPtr<WebKit::RemoteRenderingBackend,WTF::RawPtrTraits<WebKit::RemoteRenderingBackend>,WTF::DefaultRefDerefTraits<WebKit::RemoteRenderingBackend>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::RenderingBackendIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::RenderingBackendIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<IPC::ScopedActiveMessageReceiveQueue<WebKit::RemoteRenderingBackend,WTF::RefPtr<WebKit::RemoteRenderingBackend,WTF::RawPtrTraits<WebKit::RemoteRenderingBackend>,WTF::DefaultRefDerefTraits<WebKit::RemoteRenderingBackend>>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::RenderingBackendIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMapEnsureTranslator<WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::RenderingBackendIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,IPC::ScopedActiveMessageReceiveQueue<WebKit::RemoteRenderingBackend,WTF::RefPtr<WebKit::RemoteRenderingBackend,WTF::RawPtrTraits<WebKit::RemoteRenderingBackend>,WTF::DefaultRefDerefTraits<WebKit::RemoteRenderingBackend>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::RenderingBackendIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::RenderingBackendIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<IPC::ScopedActiveMessageReceiveQueue<WebKit::RemoteRenderingBackend,WTF::RefPtr<WebKit::RemoteRenderingBackend,WTF::RawPtrTraits<WebKit::RemoteRenderingBackend>,WTF::DefaultRefDerefTraits<WebKit::RemoteRenderingBackend>>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::RenderingBackendIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,(WTF::ShouldValidateKey)1,WTF::ObjectIdentifierGeneric<WebKit::RenderingBackendIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>(uint64_t result)
{
  if (result == -1 || !result)
  {
    __break(0xC471u);
    JUMPOUT(0x19DB496B4);
  }

  return result;
}

uint64_t WTF::HashTable<WTF::ObjectIdentifierGeneric<WebKit::RenderingBackendIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::RenderingBackendIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,IPC::ScopedActiveMessageReceiveQueue<WebKit::RemoteRenderingBackend,WTF::RefPtr<WebKit::RemoteRenderingBackend,WTF::RawPtrTraits<WebKit::RemoteRenderingBackend>,WTF::DefaultRefDerefTraits<WebKit::RemoteRenderingBackend>>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::RenderingBackendIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,IPC::ScopedActiveMessageReceiveQueue<WebKit::RemoteRenderingBackend,WTF::RefPtr<WebKit::RemoteRenderingBackend,WTF::RawPtrTraits<WebKit::RemoteRenderingBackend>,WTF::DefaultRefDerefTraits<WebKit::RemoteRenderingBackend>>>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::RenderingBackendIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::RenderingBackendIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,IPC::ScopedActiveMessageReceiveQueue<WebKit::RemoteRenderingBackend,WTF::RefPtr<WebKit::RemoteRenderingBackend,WTF::RawPtrTraits<WebKit::RemoteRenderingBackend>,WTF::DefaultRefDerefTraits<WebKit::RemoteRenderingBackend>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::RenderingBackendIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::RenderingBackendIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<IPC::ScopedActiveMessageReceiveQueue<WebKit::RemoteRenderingBackend,WTF::RefPtr<WebKit::RemoteRenderingBackend,WTF::RawPtrTraits<WebKit::RemoteRenderingBackend>,WTF::DefaultRefDerefTraits<WebKit::RemoteRenderingBackend>>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::RenderingBackendIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::expand(uint64_t *a1, uint64_t a2)
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

  return WTF::HashTable<WTF::ObjectIdentifierGeneric<WebKit::RenderingBackendIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::RenderingBackendIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,IPC::ScopedActiveMessageReceiveQueue<WebKit::RemoteRenderingBackend,WTF::RefPtr<WebKit::RemoteRenderingBackend,WTF::RawPtrTraits<WebKit::RemoteRenderingBackend>,WTF::DefaultRefDerefTraits<WebKit::RemoteRenderingBackend>>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::RenderingBackendIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,IPC::ScopedActiveMessageReceiveQueue<WebKit::RemoteRenderingBackend,WTF::RefPtr<WebKit::RemoteRenderingBackend,WTF::RawPtrTraits<WebKit::RemoteRenderingBackend>,WTF::DefaultRefDerefTraits<WebKit::RemoteRenderingBackend>>>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::RenderingBackendIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::RenderingBackendIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,IPC::ScopedActiveMessageReceiveQueue<WebKit::RemoteRenderingBackend,WTF::RefPtr<WebKit::RemoteRenderingBackend,WTF::RawPtrTraits<WebKit::RemoteRenderingBackend>,WTF::DefaultRefDerefTraits<WebKit::RemoteRenderingBackend>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::RenderingBackendIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::RenderingBackendIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<IPC::ScopedActiveMessageReceiveQueue<WebKit::RemoteRenderingBackend,WTF::RefPtr<WebKit::RemoteRenderingBackend,WTF::RawPtrTraits<WebKit::RemoteRenderingBackend>,WTF::DefaultRefDerefTraits<WebKit::RemoteRenderingBackend>>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::RenderingBackendIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::rehash(a1, v5, a2);
}

WebKit::RemoteRenderingBackend **WTF::HashMapEnsureTranslator<WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::RenderingBackendIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,IPC::ScopedActiveMessageReceiveQueue<WebKit::RemoteRenderingBackend,WTF::RefPtr<WebKit::RemoteRenderingBackend,WTF::RawPtrTraits<WebKit::RemoteRenderingBackend>,WTF::DefaultRefDerefTraits<WebKit::RemoteRenderingBackend>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::RenderingBackendIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::RenderingBackendIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<IPC::ScopedActiveMessageReceiveQueue<WebKit::RemoteRenderingBackend,WTF::RefPtr<WebKit::RemoteRenderingBackend,WTF::RawPtrTraits<WebKit::RemoteRenderingBackend>,WTF::DefaultRefDerefTraits<WebKit::RemoteRenderingBackend>>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::RenderingBackendIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>::translate<WTF::ObjectIdentifierGeneric<WebKit::RenderingBackendIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long> const&,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::RenderingBackendIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,IPC::ScopedActiveMessageReceiveQueue<WebKit::RemoteRenderingBackend,WTF::RefPtr<WebKit::RemoteRenderingBackend,WTF::RawPtrTraits<WebKit::RemoteRenderingBackend>,WTF::DefaultRefDerefTraits<WebKit::RemoteRenderingBackend>>>>,WebKit::GPUConnectionToWebProcess::createRenderingBackend(WTF::ObjectIdentifierGeneric<WebKit::RenderingBackendIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,IPC::StreamServerConnectionHandle &&)::$_0>(void *a1, uint64_t a2, atomic_ullong **a3)
{
  *a1 = a2;
  v3 = (a1 + 1);
  WebKit::GPUConnectionToWebProcess::createRenderingBackend(WTF::ObjectIdentifierGeneric<WebKit::RenderingBackendIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,IPC::StreamServerConnectionHandle &&)::$_0::operator()(&v5, a3);
  IPC::ScopedActiveMessageReceiveQueue<WebKit::RemoteRenderingBackend,WTF::RefPtr<WebKit::RemoteRenderingBackend,WTF::RawPtrTraits<WebKit::RemoteRenderingBackend>,WTF::DefaultRefDerefTraits<WebKit::RemoteRenderingBackend>>>::operator=(v3, &v5);
  return IPC::ScopedActiveMessageReceiveQueue<WebKit::RemoteRenderingBackend,WTF::RefPtr<WebKit::RemoteRenderingBackend,WTF::RawPtrTraits<WebKit::RemoteRenderingBackend>,WTF::DefaultRefDerefTraits<WebKit::RemoteRenderingBackend>>>::~ScopedActiveMessageReceiveQueue(&v5);
}

uint64_t WTF::HashTable<WTF::ObjectIdentifierGeneric<WebKit::RenderingBackendIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::RenderingBackendIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,IPC::ScopedActiveMessageReceiveQueue<WebKit::RemoteRenderingBackend,WTF::RefPtr<WebKit::RemoteRenderingBackend,WTF::RawPtrTraits<WebKit::RemoteRenderingBackend>,WTF::DefaultRefDerefTraits<WebKit::RemoteRenderingBackend>>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::RenderingBackendIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,IPC::ScopedActiveMessageReceiveQueue<WebKit::RemoteRenderingBackend,WTF::RefPtr<WebKit::RemoteRenderingBackend,WTF::RawPtrTraits<WebKit::RemoteRenderingBackend>,WTF::DefaultRefDerefTraits<WebKit::RemoteRenderingBackend>>>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::RenderingBackendIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::RenderingBackendIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,IPC::ScopedActiveMessageReceiveQueue<WebKit::RemoteRenderingBackend,WTF::RefPtr<WebKit::RemoteRenderingBackend,WTF::RawPtrTraits<WebKit::RemoteRenderingBackend>,WTF::DefaultRefDerefTraits<WebKit::RemoteRenderingBackend>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::RenderingBackendIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::RenderingBackendIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<IPC::ScopedActiveMessageReceiveQueue<WebKit::RemoteRenderingBackend,WTF::RefPtr<WebKit::RemoteRenderingBackend,WTF::RawPtrTraits<WebKit::RemoteRenderingBackend>,WTF::DefaultRefDerefTraits<WebKit::RemoteRenderingBackend>>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::RenderingBackendIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::rehash(uint64_t *a1, unsigned int a2, uint64_t a3)
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

  v9 = WTF::fastMalloc((16 * a2 + 16));
  v11 = v9;
  v12 = v9 + 16;
  if (a2)
  {
    bzero((v9 + 16), 16 * a2);
  }

  *a1 = v12;
  v11[2] = a2 - 1;
  v11[3] = a2;
  *v11 = 0;
  v11[1] = v8;
  v13 = 0;
  if (v7)
  {
    v15 = v7;
    v16 = v6;
    do
    {
      if (*v16 != -1)
      {
        if (*v16)
        {
          v17 = WTF::HashTable<WTF::ObjectIdentifierGeneric<WebKit::RenderingBackendIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::RenderingBackendIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,IPC::ScopedActiveMessageReceiveQueue<WebKit::RemoteRenderingBackend,WTF::RefPtr<WebKit::RemoteRenderingBackend,WTF::RawPtrTraits<WebKit::RemoteRenderingBackend>,WTF::DefaultRefDerefTraits<WebKit::RemoteRenderingBackend>>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::RenderingBackendIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,IPC::ScopedActiveMessageReceiveQueue<WebKit::RemoteRenderingBackend,WTF::RefPtr<WebKit::RemoteRenderingBackend,WTF::RawPtrTraits<WebKit::RemoteRenderingBackend>,WTF::DefaultRefDerefTraits<WebKit::RemoteRenderingBackend>>>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::RenderingBackendIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::RenderingBackendIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,IPC::ScopedActiveMessageReceiveQueue<WebKit::RemoteRenderingBackend,WTF::RefPtr<WebKit::RemoteRenderingBackend,WTF::RawPtrTraits<WebKit::RemoteRenderingBackend>,WTF::DefaultRefDerefTraits<WebKit::RemoteRenderingBackend>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::RenderingBackendIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::RenderingBackendIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<IPC::ScopedActiveMessageReceiveQueue<WebKit::RemoteRenderingBackend,WTF::RefPtr<WebKit::RemoteRenderingBackend,WTF::RawPtrTraits<WebKit::RemoteRenderingBackend>,WTF::DefaultRefDerefTraits<WebKit::RemoteRenderingBackend>>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::RenderingBackendIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::reinsert(*a1, v16);
          IPC::ScopedActiveMessageReceiveQueue<WebKit::RemoteRenderingBackend,WTF::RefPtr<WebKit::RemoteRenderingBackend,WTF::RawPtrTraits<WebKit::RemoteRenderingBackend>,WTF::DefaultRefDerefTraits<WebKit::RemoteRenderingBackend>>>::~ScopedActiveMessageReceiveQueue((v16 + 8));
          if (v16 == a3)
          {
            v13 = v17;
          }
        }

        else
        {
          IPC::ScopedActiveMessageReceiveQueue<WebKit::RemoteRenderingBackend,WTF::RefPtr<WebKit::RemoteRenderingBackend,WTF::RawPtrTraits<WebKit::RemoteRenderingBackend>,WTF::DefaultRefDerefTraits<WebKit::RemoteRenderingBackend>>>::~ScopedActiveMessageReceiveQueue((v16 + 8));
        }
      }

      v16 += 16;
      --v15;
    }

    while (v15);
    goto LABEL_16;
  }

  result = 0;
  if (v6)
  {
LABEL_16:
    WTF::fastFree((v6 - 16), v10);
    return v13;
  }

  return result;
}

uint64_t WTF::HashTable<WTF::ObjectIdentifierGeneric<WebKit::RenderingBackendIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::RenderingBackendIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,IPC::ScopedActiveMessageReceiveQueue<WebKit::RemoteRenderingBackend,WTF::RefPtr<WebKit::RemoteRenderingBackend,WTF::RawPtrTraits<WebKit::RemoteRenderingBackend>,WTF::DefaultRefDerefTraits<WebKit::RemoteRenderingBackend>>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::RenderingBackendIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,IPC::ScopedActiveMessageReceiveQueue<WebKit::RemoteRenderingBackend,WTF::RefPtr<WebKit::RemoteRenderingBackend,WTF::RawPtrTraits<WebKit::RemoteRenderingBackend>,WTF::DefaultRefDerefTraits<WebKit::RemoteRenderingBackend>>>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::RenderingBackendIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::RenderingBackendIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,IPC::ScopedActiveMessageReceiveQueue<WebKit::RemoteRenderingBackend,WTF::RefPtr<WebKit::RemoteRenderingBackend,WTF::RawPtrTraits<WebKit::RemoteRenderingBackend>,WTF::DefaultRefDerefTraits<WebKit::RemoteRenderingBackend>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::RenderingBackendIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::RenderingBackendIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<IPC::ScopedActiveMessageReceiveQueue<WebKit::RemoteRenderingBackend,WTF::RefPtr<WebKit::RemoteRenderingBackend,WTF::RawPtrTraits<WebKit::RemoteRenderingBackend>,WTF::DefaultRefDerefTraits<WebKit::RemoteRenderingBackend>>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::RenderingBackendIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::reinsert(uint64_t a1, void *a2)
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
  v11 = a1 + 16 * v9;
  IPC::ScopedActiveMessageReceiveQueue<WebKit::RemoteRenderingBackend,WTF::RefPtr<WebKit::RemoteRenderingBackend,WTF::RawPtrTraits<WebKit::RemoteRenderingBackend>,WTF::DefaultRefDerefTraits<WebKit::RemoteRenderingBackend>>>::~ScopedActiveMessageReceiveQueue((v11 + 8));
  *v11 = *a2;
  *(v11 + 8) = a2[1];
  a2[1] = 0;
  return v11;
}

unsigned int *WebKit::GPUConnectionToWebProcess::createRenderingBackend(WTF::ObjectIdentifierGeneric<WebKit::RenderingBackendIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,IPC::StreamServerConnectionHandle &&)::$_0::operator()(void *a1, atomic_ullong **a2)
{
  v3 = *a2;
  v4 = *a2[1];
  v5 = a2[2];
  v7 = *v5;
  *v5 = 0;
  WebKit::RemoteRenderingBackend::create(v3, v4, &v7, &v8);
  result = v7;
  *a1 = v8;
  v7 = 0;
  v8 = 0;
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