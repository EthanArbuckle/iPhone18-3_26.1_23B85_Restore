void sub_19DA37B38(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, void *a35)
{
  v36 = a35;
  a35 = 0;
  if (v36)
  {
  }

  WebCore::ResourceRequestBase::~ResourceRequestBase(&a11);
  _Unwind_Resume(a1);
}

uint64_t WKPageLoadFileReturningNavigation(void *a1, void *a2, void *a3)
{
  v5 = WebKit::toImpl<OpaqueWKPage const*,WebKit::WebPageProxy>(a1);
  if (a2)
  {
    v6 = WebKit::toImpl<OpaqueWKURL const*,API::URL>(a2);
    v7 = v6;
    if (v6)
    {
      CFRetain(*(v6 + 8));
    }

    v8 = *(v7 + 16);
    if (v8)
    {
      atomic_fetch_add_explicit(v8, 2u, memory_order_relaxed);
    }

    v22 = v8;
    CFRelease(*(v7 + 8));
    if (a3)
    {
      goto LABEL_7;
    }

LABEL_13:
    v21 = 0;
    goto LABEL_14;
  }

  v22 = 0;
  if (!a3)
  {
    goto LABEL_13;
  }

LABEL_7:
  v9 = WebKit::toImpl<OpaqueWKURL const*,API::URL>(a3);
  v10 = v9;
  if (v9)
  {
    CFRetain(*(v9 + 8));
  }

  v11 = *(v10 + 16);
  if (v11)
  {
    atomic_fetch_add_explicit(v11, 2u, memory_order_relaxed);
  }

  v21 = v11;
  CFRelease(*(v10 + 8));
LABEL_14:
  WebKit::WebPageProxy::loadFile(v5, &v22, &v21, 0, 1, &v23);
  v13 = v23;
  if (v23)
  {
    v23 = 0;
    v14 = *(v13 + 8);
    if (v14)
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        result = 117;
        __break(0xC471u);
        return result;
      }

      v15 = v14;
      CFRelease(*(v13 + 8));
      v16 = v14;
    }

    else
    {
      CFRelease(0);
    }

    v17 = v23;
    v23 = 0;
    if (v17)
    {
      CFRelease(*(v17 + 8));
    }
  }

  else
  {
    v14 = 0;
  }

  v18 = v21;
  v21 = 0;
  if (v18 && atomic_fetch_add_explicit(v18, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v18, v12);
  }

  v19 = v22;
  v22 = 0;
  if (v19)
  {
    if (atomic_fetch_add_explicit(v19, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v19, v12);
    }
  }

  return v14;
}

void sub_19DA37D20(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, WTF::StringImpl *a10, WTF::StringImpl *a11, uint64_t a12)
{
  if (a12)
  {
    CFRelease(*(a12 + 8));
  }

  if (a10 && atomic_fetch_add_explicit(a10, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(a10, a2);
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

id WKPageGetWebView(void *a1)
{
  if (!a1)
  {
    return 0;
  }

  v1 = WebKit::toImpl<OpaqueWKPage const*,WebKit::WebPageProxy>(a1);
  WebKit::WebPageProxy::cocoaView(v1, &v5);
  v2 = v5;
  if (v5)
  {
    v3 = v5;
  }

  return v2;
}

uint64_t WKPageSetFullscreenDelegate(void *a1, void *a2)
{
  v3 = *(WebKit::toImpl<OpaqueWKPage const*,WebKit::WebPageProxy>(a1) + 512);
  if ((**v3)(v3, 1))
  {

    return WebKit::FullscreenClient::setDelegate(v3, a2);
  }

  else
  {
    result = 96;
    __break(0xC471u);
  }

  return result;
}

uint64_t WKPageGetFullscreenDelegate(void *a1)
{
  v1 = *(WebKit::toImpl<OpaqueWKPage const*,WebKit::WebPageProxy>(a1) + 512);
  if ((**v1)(v1, 1))
  {
    WebKit::FullscreenClient::delegate(v1, &v5);
    v2 = v5;
    if (v5)
    {
      v3 = v5;
    }

    return v2;
  }

  else
  {
    result = 96;
    __break(0xC471u);
  }

  return result;
}

uint64_t WKProtectionSpaceCopyNSURLProtectionSpace(void *a1)
{
  v1 = [a1 _apiObject];
  if ((*(*v1 + 16))(v1) == 14)
  {
    v2 = WebCore::ProtectionSpace::nsSpace((v1 + 16));

    return [v2 copy];
  }

  else
  {
    result = 105;
    __break(0xC471u);
  }

  return result;
}

CFTypeRef WKWebsiteDataStoreGetDataStore(void *a1)
{
  if (a1)
  {
    v1 = [a1 _apiObject];
    if ((*(*v1 + 2))(v1) == 124)
    {
      CFRetain(v1[1]);
      v2 = v1[1];
      if (!v2)
      {
        v3 = 0;
        goto LABEL_8;
      }

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v3 = v1[1];
LABEL_8:
        CFRelease(v3);
        return v2;
      }
    }

    __break(0xC471u);
    JUMPOUT(0x19DA38068);
  }

  return 0;
}

uint64_t WTF::ScopedLambdaRefFunctor<long ()(WTF::ParkingLot::UnparkResult),WTF::Condition::notifyOne(void)::{lambda(WTF::ParkingLot::UnparkResult)#1}>::implFunction(uint64_t a1, __int16 a2)
{
  v2 = *(a1 + 16);
  if ((a2 & 0x100) == 0)
  {
    atomic_store(0, *v2);
  }

  *v2[1] = a2 & 1;
  return 0;
}

uint64_t WTF::Condition::waitUntilUnchecked<WTF::Lock>(uint64_t a1, atomic_uchar *a2, WTF::TimeWithDynamicClockType *this)
{
  v13 = WTF::TimeWithDynamicClockType::nowWithSameClock(this);
  LODWORD(v14) = v5;
  if (WTF::operator<=>() == 0xFF)
  {
    v6 = 0;
    v9 = 1;
    atomic_compare_exchange_strong_explicit(a2, &v9, 0, memory_order_release, memory_order_relaxed);
    if (v9 != 1)
    {
      WTF::Lock::unlockSlow(a2);
      v6 = 0;
    }
  }

  else
  {
    v10 = a2;
    v11 = a1;
    v13 = WTF::ScopedLambdaRefFunctor<BOOL ()(void),BOOL WTF::Condition::waitUntilUnchecked<WTF::Lock>(WTF::Lock &,WTF::TimeWithDynamicClockType const&)::{lambda(void)#1}>::implFunction;
    v14 = &v13;
    v15 = &v11;
    v12[0] = WTF::ScopedLambdaRefFunctor<void ()(void),BOOL WTF::Condition::waitUntilUnchecked<WTF::Lock>(WTF::Lock &,WTF::TimeWithDynamicClockType const&)::{lambda(void)#2}>::implFunction;
    v12[1] = v12;
    v12[2] = &v10;
    v6 = WTF::ParkingLot::parkConditionallyImpl();
  }

  v7 = 0;
  atomic_compare_exchange_strong_explicit(a2, &v7, 1u, memory_order_acquire, memory_order_acquire);
  if (v7)
  {
    MEMORY[0x19EB01E30](a2);
  }

  return v6 & 1;
}

atomic_uchar *WTF::ScopedLambdaRefFunctor<void ()(void),BOOL WTF::Condition::waitUntilUnchecked<WTF::Lock>(WTF::Lock &,WTF::TimeWithDynamicClockType const&)::{lambda(void)#2}>::implFunction(uint64_t a1)
{
  result = **(a1 + 16);
  v2 = 1;
  atomic_compare_exchange_strong_explicit(result, &v2, 0, memory_order_release, memory_order_relaxed);
  if (v2 != 1)
  {
    return WTF::Lock::unlockSlow(result);
  }

  return result;
}

uint64_t WebKit::toProtectedImpl<OpaqueWKString const*,API::String>@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  if (a1)
  {
    a1 = [a1 _apiObject];
  }

  result = WTF::downcast<API::String,API::Object>(a1);
  v4 = result;
  if (result)
  {
    result = CFRetain(*(result + 8));
  }

  *a2 = v4;
  return result;
}

unsigned int *WebKit::PageLoadStateObserver::deref(unsigned int *this)
{
  if (atomic_fetch_add(this + 4, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, this + 4);
    return (*(*this + 24))();
  }

  return this;
}

void WebKit::PageLoadStateObserver::~PageLoadStateObserver(WebKit::PageLoadStateObserver *this)
{
  *this = &unk_1F10F3160;
  v2 = *(this + 4);
  *(this + 4) = 0;
  if (v2)
  {
  }

  objc_destroyWeak(this + 3);
  WTF::WeakPtrFactory<WebPushD::PushServiceConnection,WTF::DefaultWeakPtrImpl>::~WeakPtrFactory(this + 1, v3);
}

{
  *this = &unk_1F10F3160;
  v2 = *(this + 4);
  *(this + 4) = 0;
  if (v2)
  {
  }

  objc_destroyWeak(this + 3);
  WTF::WeakPtrFactory<WebPushD::PushServiceConnection,WTF::DefaultWeakPtrImpl>::~WeakPtrFactory(this + 1, v3);

  bmalloc::api::tzoneFree(this, v4);
}

void WebKit::PageLoadStateObserver::willChangeIsLoading(id *this)
{
  WeakRetained = objc_loadWeakRetained(this + 3);
  [WeakRetained willChangeValueForKey:@"loading"];
  if (WeakRetained)
  {
  }
}

void sub_19DA383BC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  if (a10)
  {
  }

  _Unwind_Resume(exception_object);
}

void WebKit::PageLoadStateObserver::didChangeIsLoading(id *this)
{
  WeakRetained = objc_loadWeakRetained(this + 3);
  [WeakRetained didChangeValueForKey:@"loading"];
  if (WeakRetained)
  {
  }
}

void sub_19DA3843C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  if (a10)
  {
  }

  _Unwind_Resume(exception_object);
}

void WebKit::PageLoadStateObserver::willChangeTitle(id *this)
{
  WeakRetained = objc_loadWeakRetained(this + 3);
  [WeakRetained willChangeValueForKey:@"title"];
  if (WeakRetained)
  {
  }
}

void sub_19DA384BC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  if (a10)
  {
  }

  _Unwind_Resume(exception_object);
}

void WebKit::PageLoadStateObserver::didChangeTitle(id *this)
{
  WeakRetained = objc_loadWeakRetained(this + 3);
  [WeakRetained didChangeValueForKey:@"title"];
  if (WeakRetained)
  {
  }
}

void sub_19DA3853C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  if (a10)
  {
  }

  _Unwind_Resume(exception_object);
}

void WebKit::PageLoadStateObserver::willChangeActiveURL(id *this)
{
  WeakRetained = objc_loadWeakRetained(this + 3);
  [WeakRetained willChangeValueForKey:this[4]];
  if (WeakRetained)
  {
  }
}

void sub_19DA385BC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  if (a10)
  {
  }

  _Unwind_Resume(exception_object);
}

void WebKit::PageLoadStateObserver::didChangeActiveURL(id *this)
{
  WeakRetained = objc_loadWeakRetained(this + 3);
  [WeakRetained didChangeValueForKey:this[4]];
  if (WeakRetained)
  {
  }
}

void sub_19DA3863C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  if (a10)
  {
  }

  _Unwind_Resume(exception_object);
}

void WebKit::PageLoadStateObserver::willChangeHasOnlySecureContent(id *this)
{
  WeakRetained = objc_loadWeakRetained(this + 3);
  [WeakRetained willChangeValueForKey:@"hasOnlySecureContent"];
  if (WeakRetained)
  {
  }
}

void sub_19DA386BC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  if (a10)
  {
  }

  _Unwind_Resume(exception_object);
}

void WebKit::PageLoadStateObserver::didChangeHasOnlySecureContent(id *this)
{
  WeakRetained = objc_loadWeakRetained(this + 3);
  [WeakRetained didChangeValueForKey:@"hasOnlySecureContent"];
  if (WeakRetained)
  {
  }
}

void sub_19DA3873C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  if (a10)
  {
  }

  _Unwind_Resume(exception_object);
}

void WebKit::PageLoadStateObserver::willChangeEstimatedProgress(id *this)
{
  WeakRetained = objc_loadWeakRetained(this + 3);
  [WeakRetained willChangeValueForKey:@"estimatedProgress"];
  if (WeakRetained)
  {
  }
}

void sub_19DA387CC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  if (a10)
  {
  }

  _Unwind_Resume(exception_object);
}

void WebKit::PageLoadStateObserver::didChangeEstimatedProgress(id *this)
{
  WeakRetained = objc_loadWeakRetained(this + 3);
  [WeakRetained didChangeValueForKey:@"estimatedProgress"];
  if (WeakRetained)
  {
  }
}

void sub_19DA3884C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  if (a10)
  {
  }

  _Unwind_Resume(exception_object);
}

void WebKit::PageLoadStateObserver::willChangeWebProcessIsResponsive(id *this)
{
  WeakRetained = objc_loadWeakRetained(this + 3);
  [WeakRetained willChangeValueForKey:@"_webProcessIsResponsive"];
  if (WeakRetained)
  {
  }
}

void sub_19DA388EC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  if (a10)
  {
  }

  _Unwind_Resume(exception_object);
}

void WebKit::PageLoadStateObserver::didChangeWebProcessIsResponsive(id *this)
{
  WeakRetained = objc_loadWeakRetained(this + 3);
  [WeakRetained didChangeValueForKey:@"_webProcessIsResponsive"];
  if (WeakRetained)
  {
  }
}

void sub_19DA3896C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  if (a10)
  {
  }

  _Unwind_Resume(exception_object);
}

void WebKit::VisitedLinkTableController::didReceiveMessage(WebKit::VisitedLinkTableController *this, IPC::Connection *a2, IPC::Decoder *a3)
{
  v15 = *MEMORY[0x1E69E9840];
  ++*(this + 2);
  v5 = *(a3 + 25);
  switch(v5)
  {
    case 0x71Au:
      IPC::ArgumentCoder<std::tuple<WTF::Vector<unsigned int,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,void>::decode<IPC::Decoder>(a3, v12);
      if ((v14 & 0x10000) != 0 || (IPC::Decoder::markInvalid(a3), (v14 & 0x10000) != 0))
      {
        WebKit::VisitedLinkTableController::visitedLinkStateChanged(this, v12);
        if ((v14 & 0x10000) != 0)
        {
          v7 = *v12;
          if (*v12)
          {
            memset(v12, 0, sizeof(v12));
            WTF::fastFree(v7, v6);
          }
        }
      }

      break;
    case 0x719u:
      IPC::handleMessage<Messages::VisitedLinkTableController::SetVisitedLinkTable,IPC::Connection,WebKit::VisitedLinkTableController,WebKit::VisitedLinkTableController,void ()(WebCore::SharedMemoryHandle &&)>(a3, this);
      break;
    case 0x717u:
      WebKit::VisitedLinkTableController::allVisitedLinkStateChanged(this);
      break;
    case 0x718u:
      WebKit::VisitedLinkTableController::removeAllVisitedLinks(this);
      break;
    default:
      v8 = qword_1ED6416C8;
      if (os_log_type_enabled(qword_1ED6416C8, OS_LOG_TYPE_ERROR))
      {
        if (v5 >= 0x107F)
        {
          v9 = 4223;
        }

        else
        {
          v9 = v5;
        }

        v10 = (&IPC::Detail::messageDescriptions)[3 * v9];
        v11 = *(a3 + 7);
        *v12 = 136315394;
        *&v12[4] = v10;
        v13 = 2048;
        v14 = v11;
        _os_log_error_impl(&dword_19D52D000, v8, OS_LOG_TYPE_ERROR, "Unhandled message %s to %llu", v12, 0x16u);
      }

      IPC::Decoder::markInvalid(a3);
      break;
  }

  if (*(this + 2) == 1)
  {
    (*(*this + 8))(this);
  }

  else
  {
    --*(this + 2);
  }
}

void IPC::handleMessage<Messages::VisitedLinkTableController::SetVisitedLinkTable,IPC::Connection,WebKit::VisitedLinkTableController,WebKit::VisitedLinkTableController,void ()(WebCore::SharedMemoryHandle &&)>(IPC::Decoder *a1, WebCore::VisitedLinkStore *a2)
{
  IPC::Decoder::decode<std::tuple<WebCore::SharedMemoryHandle>>(a1, v3);
  if (v4 == 1)
  {
    WebKit::VisitedLinkTableController::setVisitedLinkTable(a2);
    if (v4)
    {
      WTF::MachSendRight::~MachSendRight(v3);
    }
  }
}

void WebKit::WebAuthenticatorCoordinatorProxy::didReceiveMessage(WebKit::WebAuthenticatorCoordinatorProxy *this, atomic_ullong *a2, IPC::Decoder *a3)
{
  v228 = *MEMORY[0x1E69E9840];
  WebKit::WebAuthenticatorCoordinatorProxy::sharedPreferencesForWebProcess(this, v164);
  if (v164[24] != 1 || (v164[16] & 0x80) == 0)
  {
    v6 = qword_1ED6416C8;
    if (os_log_type_enabled(qword_1ED6416C8, OS_LOG_TYPE_ERROR))
    {
      v40 = *(a3 + 25);
      if (v40 >= 0x107F)
      {
        v40 = 4223;
      }

      v41 = (&IPC::Detail::messageDescriptions)[3 * v40];
      *buf = 136315138;
      *&buf[4] = v41;
      _os_log_error_impl(&dword_19D52D000, v6, OS_LOG_TYPE_ERROR, "Message %s received by a disabled message receiver WebAuthenticatorCoordinatorProxy", buf, 0xCu);
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

  ++*(this + 4);
  v10 = *(a3 + 25);
  if (*(a3 + 25) <= 0x71Eu)
  {
    if (*(a3 + 25) > 0x71Cu)
    {
      if (v10 == 1821)
      {
        IPC::Decoder::decode<std::tuple<WebCore::SecurityOriginData>>(a3, buf);
        if (LOBYTE(v167[0]) != 1)
        {
          goto LABEL_170;
        }

        v46 = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(a3);
        if ((v11 & 1) == 0)
        {
          goto LABEL_170;
        }

        a3 = v46;
        while (1)
        {
          v47 = *a2;
          if ((*a2 & 1) == 0)
          {
            break;
          }

          v48 = *a2;
          atomic_compare_exchange_strong_explicit(a2, &v48, v47 + 2, memory_order_relaxed, memory_order_relaxed);
          if (v48 == v47)
          {
            goto LABEL_162;
          }
        }

        WTF::ThreadSafeWeakPtrControlBlock::strongRef(*a2);
LABEL_162:
        v85 = WTF::fastMalloc(0x18);
        *v85 = &unk_1F10F3348;
        *(v85 + 1) = a3;
        *(v85 + 2) = a2;
        v213[0] = v85;
        if ((v167[0] & 1) == 0)
        {
          goto LABEL_327;
        }

        WebKit::WebAuthenticatorCoordinatorProxy::getClientCapabilities(this, buf, v213);
        v86 = v213[0];
        v213[0] = 0;
        if (!v86)
        {
          goto LABEL_170;
        }

LABEL_169:
        (*(*v86 + 8))(v86);
        goto LABEL_170;
      }

      if (v10 == 1822)
      {
        IPC::Decoder::decode<std::tuple<WebCore::SecurityOriginData>>(a3, buf);
        if (LOBYTE(v167[0]) == 1)
        {
          v25 = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(a3);
          if (v11)
          {
            a3 = v25;
            while (1)
            {
              v26 = *a2;
              if ((*a2 & 1) == 0)
              {
                break;
              }

              v27 = *a2;
              atomic_compare_exchange_strong_explicit(a2, &v27, v26 + 2, memory_order_relaxed, memory_order_relaxed);
              if (v27 == v26)
              {
                goto LABEL_145;
              }
            }

            WTF::ThreadSafeWeakPtrControlBlock::strongRef(*a2);
LABEL_145:
            v80 = WTF::fastMalloc(0x18);
            *v80 = &unk_1F10F3320;
            *(v80 + 1) = a3;
            *(v80 + 2) = a2;
            v213[0] = v80;
            if ((v167[0] & 1) == 0)
            {
              goto LABEL_327;
            }

            WebKit::WebAuthenticatorCoordinatorProxy::isUserVerifyingPlatformAuthenticatorAvailable(this, buf, v213);
LABEL_168:
            v86 = v213[0];
            v213[0] = 0;
            if (!v86)
            {
              goto LABEL_170;
            }

            goto LABEL_169;
          }
        }

LABEL_170:
        if (LOBYTE(v167[0]) != 1)
        {
          goto LABEL_309;
        }

        goto LABEL_184;
      }
    }

    else
    {
      if (v10 == 1819)
      {
        v42 = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(a3);
        if ((v11 & 1) == 0)
        {
          goto LABEL_309;
        }

        v43 = v42;
        while (1)
        {
          v44 = *a2;
          if ((*a2 & 1) == 0)
          {
            break;
          }

          v45 = *a2;
          atomic_compare_exchange_strong_explicit(a2, &v45, v44 + 2, memory_order_relaxed, memory_order_relaxed);
          if (v45 == v44)
          {
            goto LABEL_136;
          }
        }

        WTF::ThreadSafeWeakPtrControlBlock::strongRef(*a2);
LABEL_136:
        v76 = WTF::fastMalloc(0x18);
        *v76 = &unk_1F10F33E8;
        v76[1] = v43;
        v76[2] = a2;
        *buf = v76;
        WebKit::WebAuthenticatorCoordinatorProxy::cancel(this, buf);
        v77 = *buf;
        *buf = 0;
        if (v77)
        {
          (*(*v77 + 8))(v77);
        }

        goto LABEL_309;
      }

      if (v10 == 1820)
      {
        v16 = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(a3);
        if (v17)
        {
          v10 = v16;
          IPC::ArgumentCoder<WebKit::FrameInfoData,void>::decode(a3, v213);
          if ((v222 & 1) == 0)
          {
            goto LABEL_328;
          }

          goto LABEL_23;
        }

        buf[0] = 0;
        v195 = 0;
        goto LABEL_335;
      }
    }

    goto LABEL_131;
  }

  if (*(a3 + 25) > 0x720u)
  {
    if (v10 != 1825)
    {
      if (v10 != 1826)
      {
        if (v10 == 1827)
        {
          IPC::Decoder::decode<std::tuple<WebCore::SecurityOriginData>>(a3, buf);
          if (LOBYTE(v167[0]) == 1)
          {
            v13 = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(a3);
            if (v11)
            {
              a3 = v13;
              while (1)
              {
                v14 = *a2;
                if ((*a2 & 1) == 0)
                {
                  break;
                }

                v15 = *a2;
                atomic_compare_exchange_strong_explicit(a2, &v15, v14 + 2, memory_order_relaxed, memory_order_relaxed);
                if (v15 == v14)
                {
                  goto LABEL_166;
                }
              }

              WTF::ThreadSafeWeakPtrControlBlock::strongRef(*a2);
LABEL_166:
              v87 = WTF::fastMalloc(0x18);
              *v87 = &unk_1F10F32F8;
              *(v87 + 1) = a3;
              *(v87 + 2) = a2;
              v213[0] = v87;
              if ((v167[0] & 1) == 0)
              {
                goto LABEL_327;
              }

              WebKit::WebAuthenticatorCoordinatorProxy::isConditionalMediationAvailable(this, buf, v213);
              goto LABEL_168;
            }
          }

          goto LABEL_170;
        }

        goto LABEL_131;
      }

      IPC::ArgumentCoder<WebCore::SecurityOriginData,void>::decode(a3, v213);
      if (v216)
      {
        IPC::ArgumentCoder<WebCore::UnknownCredentialOptions,void>::decode(a3, v198);
        if ((v199[0] & 1) == 0)
        {
          v64 = *a3;
          v151 = *(a3 + 1);
          *a3 = 0;
          *(a3 + 1) = 0;
          v152 = *(a3 + 3);
          if (v152 && v151)
          {
            (*(*v152 + 16))(v152, v64);
          }

          v67 = 0;
          buf[0] = 0;
          v65 = v215;
LABEL_118:
          LOBYTE(v168) = v67;
          if (!v65)
          {
            v68 = v213[1];
            if (v213[1] && atomic_fetch_add_explicit(v213[1], 0xFFFFFFFE, memory_order_relaxed) == 2)
            {
              WTF::StringImpl::destroy(v68, v64);
            }

            v69 = v213[0];
            if (v213[0] && atomic_fetch_add_explicit(v213[0], 0xFFFFFFFE, memory_order_relaxed) == 2)
            {
              WTF::StringImpl::destroy(v69, v64);
            }
          }

          if ((v67 & 1) == 0)
          {
            goto LABEL_132;
          }

          v70 = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(a3);
          if (v11)
          {
            v71 = v70;
            while (1)
            {
              v72 = *a2;
              if ((*a2 & 1) == 0)
              {
                break;
              }

              v73 = *a2;
              atomic_compare_exchange_strong_explicit(a2, &v73, v72 + 2, memory_order_relaxed, memory_order_relaxed);
              if (v73 == v72)
              {
                goto LABEL_173;
              }
            }

            WTF::ThreadSafeWeakPtrControlBlock::strongRef(*a2);
LABEL_173:
            v88 = WTF::fastMalloc(0x18);
            *v88 = &unk_1F10F3370;
            *(v88 + 1) = v71;
            *(v88 + 2) = a2;
            v213[0] = v88;
            WebKit::WebAuthenticatorCoordinatorProxy::signalUnknownCredential(this, buf, v167, v213);
            v89 = v213[0];
            v213[0] = 0;
            if (v89)
            {
              (*(*v89 + 8))(v89);
            }

            if ((v168 & 1) == 0)
            {
              goto LABEL_309;
            }

            v10 = v167[1];
          }

          v167[1] = 0;
          if (v10 && atomic_fetch_add_explicit(v10, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            v84 = v10;
LABEL_180:
            WTF::StringImpl::destroy(v84, v11);
          }

LABEL_181:
          v90 = v167[0];
          v167[0] = 0;
          if (v90 && atomic_fetch_add_explicit(v90, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v90, v11);
          }

LABEL_184:
          if (!v166[0])
          {
            v91 = *&buf[8];
            *&buf[8] = 0;
            if (v91 && atomic_fetch_add_explicit(v91, 0xFFFFFFFE, memory_order_relaxed) == 2)
            {
              WTF::StringImpl::destroy(v91, v11);
            }

            v92 = *buf;
            *buf = 0;
            if (v92 && atomic_fetch_add_explicit(v92, 0xFFFFFFFE, memory_order_relaxed) == 2)
            {
              WTF::StringImpl::destroy(v92, v11);
            }
          }

          goto LABEL_309;
        }

        buf[0] = 0;
        v166[0] = -1;
        v65 = v215;
        if (v215)
        {
          if (v215 == 255)
          {
            goto LABEL_117;
          }

          *buf = *v213;
        }

        else
        {
          v66 = *v213;
          v213[1] = 0;
          v213[0] = 0;
          *buf = v66;
          *&buf[16] = v214;
        }

        v166[0] = v215;
LABEL_117:
        v10 = v198[1];
        v167[0] = v198[0];
        v167[1] = v198[1];
        v67 = 1;
        goto LABEL_118;
      }

LABEL_357:
      v157 = *a3;
      v158 = *(a3 + 1);
      *a3 = 0;
      *(a3 + 1) = 0;
      v159 = *(a3 + 3);
      if (v159 && v158)
      {
        (*(*v159 + 16))(v159, v157);
      }

      goto LABEL_132;
    }

    IPC::ArgumentCoder<WebCore::SecurityOriginData,void>::decode(a3, v198);
    if ((v199[2] & 1) == 0)
    {
      goto LABEL_357;
    }

    IPC::ArgumentCoder<WebCore::CurrentUserDetailsOptions,void>::decode(a3, v213);
    if ((v216 & 1) == 0)
    {
      v49 = *a3;
      v149 = *(a3 + 1);
      *a3 = 0;
      *(a3 + 1) = 0;
      v150 = *(a3 + 3);
      if (!v150 || !v149 || ((*(*v150 + 16))(v150, v49), (v216 & 1) == 0))
      {
        v52 = 0;
        buf[0] = 0;
        v50 = LOBYTE(v199[1]);
        goto LABEL_94;
      }
    }

    buf[0] = 0;
    v166[0] = -1;
    v50 = LOBYTE(v199[1]);
    if (LOBYTE(v199[1]))
    {
      if (LOBYTE(v199[1]) == 255)
      {
        goto LABEL_93;
      }

      *buf = *v198;
    }

    else
    {
      v51 = *v198;
      v198[1] = 0;
      v198[0] = 0;
      *buf = v51;
      *&buf[16] = v199[0];
    }

    v166[0] = v199[1];
LABEL_93:
    *v167 = *v213;
    v10 = v215;
    v168 = v214;
    v169 = v215;
    v52 = 1;
LABEL_94:
    v170 = v52;
    if (!v50)
    {
      v53 = v198[1];
      if (v198[1] && atomic_fetch_add_explicit(v198[1], 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v53, v49);
      }

      v54 = v198[0];
      if (v198[0] && atomic_fetch_add_explicit(v198[0], 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v54, v49);
      }
    }

    if ((v52 & 1) == 0)
    {
      goto LABEL_132;
    }

    v55 = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(a3);
    if (v11)
    {
      v56 = v55;
      while (1)
      {
        v57 = *a2;
        if ((*a2 & 1) == 0)
        {
          break;
        }

        v58 = *a2;
        atomic_compare_exchange_strong_explicit(a2, &v58, v57 + 2, memory_order_relaxed, memory_order_relaxed);
        if (v58 == v57)
        {
          goto LABEL_148;
        }
      }

      WTF::ThreadSafeWeakPtrControlBlock::strongRef(*a2);
LABEL_148:
      v81 = WTF::fastMalloc(0x18);
      *v81 = &unk_1F10F33C0;
      *(v81 + 1) = v56;
      *(v81 + 2) = a2;
      v213[0] = v81;
      WebKit::WebAuthenticatorCoordinatorProxy::signalCurrentUserDetails(this, buf, v167, v213);
      v82 = v213[0];
      v213[0] = 0;
      if (v82)
      {
        (*(*v82 + 8))(v82);
      }

      if ((v170 & 1) == 0)
      {
        goto LABEL_309;
      }

      v10 = v169;
    }

    v169 = 0;
    if (v10 && atomic_fetch_add_explicit(v10, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v10, v11);
    }

    v83 = v168;
    v168 = 0;
    if (v83 && atomic_fetch_add_explicit(v83, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v83, v11);
    }

LABEL_158:
    v84 = v167[1];
    v167[1] = 0;
    if (v84 && atomic_fetch_add_explicit(v84, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      goto LABEL_180;
    }

    goto LABEL_181;
  }

  if (v10 != 1823)
  {
    if (v10 != 1824)
    {
LABEL_131:
      v74 = qword_1ED6416C8;
      if (os_log_type_enabled(qword_1ED6416C8, OS_LOG_TYPE_ERROR))
      {
        if (v10 >= 0x107F)
        {
          v135 = 4223;
        }

        else
        {
          v135 = v10;
        }

        v136 = (&IPC::Detail::messageDescriptions)[3 * v135];
        v137 = *(a3 + 7);
        *buf = 136315394;
        *&buf[4] = v136;
        *&buf[12] = 2048;
        *&buf[14] = v137;
        _os_log_error_impl(&dword_19D52D000, v74, OS_LOG_TYPE_ERROR, "Unhandled message %s to %llu", buf, 0x16u);
      }

LABEL_132:
      v11 = *a3;
      v12 = *(a3 + 1);
      *a3 = 0;
      *(a3 + 1) = 0;
      v75 = *(a3 + 3);
      if (v75 && v12)
      {
        (*(*v75 + 16))(v75, v11);
      }

      goto LABEL_309;
    }

    IPC::ArgumentCoder<WebCore::SecurityOriginData,void>::decode(a3, v198);
    if ((v199[2] & 1) == 0)
    {
      v160 = *a3;
      v161 = *(a3 + 1);
      *a3 = 0;
      *(a3 + 1) = 0;
      v162 = *(a3 + 3);
      if (v162 && v161)
      {
        (*(*v162 + 16))(v162, v160);
      }

      buf[0] = 0;
      v170 = 0;
      goto LABEL_364;
    }

    IPC::ArgumentCoder<WebCore::AllAcceptedCredentialsOptions,void>::decode(a3, v213);
    if ((v216 & 1) == 0)
    {
      v28 = *a3;
      v147 = *(a3 + 1);
      *a3 = 0;
      *(a3 + 1) = 0;
      v148 = *(a3 + 3);
      if (!v148 || !v147 || ((*(*v148 + 16))(v148, v28), (v216 & 1) == 0))
      {
        v34 = 0;
        buf[0] = 0;
        v170 = 0;
        v10 = LOBYTE(v199[1]);
        if (LOBYTE(v199[1]))
        {
          goto LABEL_68;
        }

        goto LABEL_62;
      }
    }

    buf[0] = 0;
    v166[0] = -1;
    v10 = LOBYTE(v199[1]);
    if (LOBYTE(v199[1]))
    {
      if (LOBYTE(v199[1]) == 255)
      {
        goto LABEL_55;
      }

      *buf = *v198;
    }

    else
    {
      v29 = *v198;
      v198[1] = 0;
      v198[0] = 0;
      *buf = v29;
      *&buf[16] = v199[0];
    }

    v166[0] = v199[1];
LABEL_55:
    v30 = *v213;
    v213[1] = 0;
    v213[0] = 0;
    *v167 = v30;
    v31 = v214;
    v214 = 0;
    v168 = v31;
    *&v30 = v215;
    v215 = 0;
    v169 = v30;
    v170 = 1;
    WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v214, v28);
    v32 = v213[1];
    v213[1] = 0;
    if (v32 && atomic_fetch_add_explicit(v32, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v32, v28);
    }

    v33 = v213[0];
    v213[0] = 0;
    if (v33 && atomic_fetch_add_explicit(v33, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v33, v28);
    }

    v34 = 1;
    if (v10)
    {
LABEL_68:
      if (v34)
      {
LABEL_69:
        v37 = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(a3);
        if (v11)
        {
          a3 = v37;
          while (1)
          {
            v38 = *a2;
            if ((*a2 & 1) == 0)
            {
              break;
            }

            v39 = *a2;
            atomic_compare_exchange_strong_explicit(a2, &v39, v38 + 2, memory_order_relaxed, memory_order_relaxed);
            if (v39 == v38)
            {
              goto LABEL_139;
            }
          }

          WTF::ThreadSafeWeakPtrControlBlock::strongRef(*a2);
LABEL_139:
          v78 = WTF::fastMalloc(0x18);
          *v78 = &unk_1F10F3398;
          *(v78 + 1) = a3;
          *(v78 + 2) = a2;
          v213[0] = v78;
          if (v170)
          {
            WebKit::WebAuthenticatorCoordinatorProxy::signalAllAcceptedCredentials(this, buf, v167, v213);
            v79 = v213[0];
            v213[0] = 0;
            if (v79)
            {
              (*(*v79 + 8))(v79);
            }

            goto LABEL_142;
          }

          while (1)
          {
LABEL_327:
            while (1)
            {
              __break(1u);
LABEL_328:
              v139 = *a3;
              v140 = *(a3 + 1);
              *a3 = 0;
              *(a3 + 1) = 0;
              v141 = *(a3 + 3);
              if (v141)
              {
                if (v140)
                {
                  (*(*v141 + 16))(v141, v139);
                  if (v222)
                  {
                    break;
                  }
                }
              }

              buf[0] = 0;
              v195 = 0;
LABEL_252:
              if ((v195 & 1) == 0)
              {
LABEL_335:
                v11 = *a3;
                v12 = *(a3 + 1);
                *a3 = 0;
                *(a3 + 1) = 0;
                v145 = *(a3 + 3);
                if (!v145)
                {
                  goto LABEL_271;
                }

                if (!v12)
                {
                  goto LABEL_271;
                }

                (*(*v145 + 16))(v145, v11);
                if ((v195 & 1) == 0)
                {
                  goto LABEL_271;
                }
              }

              v119 = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(a3);
              if ((v11 & 1) == 0)
              {
                goto LABEL_271;
              }

              a3 = v119;
              while (1)
              {
                v120 = *a2;
                if ((*a2 & 1) == 0)
                {
                  break;
                }

                v121 = *a2;
                atomic_compare_exchange_strong_explicit(a2, &v121, v120 + 2, memory_order_relaxed, memory_order_relaxed);
                if (v121 == v120)
                {
                  goto LABEL_259;
                }
              }

              WTF::ThreadSafeWeakPtrControlBlock::strongRef(*a2);
LABEL_259:
              v122 = WTF::fastMalloc(0x18);
              *v122 = &unk_1F10F32D0;
              *(v122 + 1) = a3;
              *(v122 + 2) = a2;
              v198[0] = v122;
              if (v195)
              {
                LOBYTE(v213[0]) = 0;
                v216 = 0;
                if (v194 != 1)
                {
                  goto LABEL_261;
                }

                LOBYTE(v215) = -1;
                if (!v193)
                {
                  v130 = *v191;
                  *v191 = 0u;
                  *v213 = v130;
                  LODWORD(v214) = v192;
                  goto LABEL_290;
                }

                if (v193 != 255)
                {
                  *v213 = *v191;
LABEL_290:
                  LOBYTE(v215) = v193;
                }

                v216 = 1;
LABEL_261:
                WebKit::WebAuthenticatorCoordinatorProxy::getAssertion(this, *buf, &buf[16], &v176, v190, v213, v198);
                if (v216 == 1 && !v215)
                {
                  v123 = v213[1];
                  v213[1] = 0;
                  if (v123 && atomic_fetch_add_explicit(v123, 0xFFFFFFFE, memory_order_relaxed) == 2)
                  {
                    WTF::StringImpl::destroy(v123, v11);
                  }

                  v124 = v213[0];
                  v213[0] = 0;
                  if (v124 && atomic_fetch_add_explicit(v124, 0xFFFFFFFE, memory_order_relaxed) == 2)
                  {
                    WTF::StringImpl::destroy(v124, v11);
                  }
                }

                v125 = v198[0];
                v198[0] = 0;
                if (v125)
                {
                  (*(*v125 + 8))(v125);
                }

LABEL_271:
                if (v195 == 1)
                {
                  if (v194 == 1)
                  {
                    if (!v193)
                    {
                      v126 = v191[1];
                      v191[1] = 0;
                      if (v126 && atomic_fetch_add_explicit(v126, 0xFFFFFFFE, memory_order_relaxed) == 2)
                      {
                        WTF::StringImpl::destroy(v126, v11);
                      }

                      v127 = v191[0];
                      v191[0] = 0;
                      if (v127 && atomic_fetch_add_explicit(v127, 0xFFFFFFFE, memory_order_relaxed) == 2)
                      {
                        WTF::StringImpl::destroy(v127, v11);
                      }
                    }

                    v193 = -1;
                  }

                  std::optional<WebCore::AuthenticationExtensionsClientInputs>::~optional(&v180);
                  WTF::Vector<WebCore::PublicKeyCredentialDescriptor,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v177[16]);
                  v128 = *&v177[8];
                  *&v177[8] = 0;
                  if (v128 && atomic_fetch_add_explicit(v128, 0xFFFFFFFE, memory_order_relaxed) == 2)
                  {
                    WTF::StringImpl::destroy(v128, v114);
                  }

                  if (BYTE8(v176) != 255)
                  {
                    v129 = v176;
                    *&v176 = 0;
                    if (BYTE8(v176))
                    {
                      if (v129)
                      {
                        WTF::DeferrableRefCounted<JSC::ArrayBuffer>::deref(v129);
                      }
                    }

                    else if (v129)
                    {
                      if (*v129 == 1)
                      {
                        JSC::ArrayBufferView::operator delete();
                      }

                      else
                      {
                        --*v129;
                      }
                    }
                  }

                  BYTE8(v176) = -1;
LABEL_296:
                  v131 = cf;
                  cf = 0;
                  if (v131)
                  {
                    CFRelease(v131);
                  }

                  v132 = v174;
                  v174 = 0;
                  if (v132 && atomic_fetch_add_explicit(v132, 0xFFFFFFFE, memory_order_relaxed) == 2)
                  {
                    WTF::StringImpl::destroy(v132, v114);
                  }

                  if (!v173)
                  {
                    v133 = v172;
                    v172 = 0;
                    if (v133 && atomic_fetch_add_explicit(v133, 0xFFFFFFFE, memory_order_relaxed) == 2)
                    {
                      WTF::StringImpl::destroy(v133, v114);
                    }

                    v134 = v171;
                    v171 = 0;
                    if (v134 && atomic_fetch_add_explicit(v134, 0xFFFFFFFE, memory_order_relaxed) == 2)
                    {
                      WTF::StringImpl::destroy(v134, v114);
                    }
                  }

                  v173 = -1;
                  WebCore::ResourceRequest::~ResourceRequest(v166);
                }

                goto LABEL_309;
              }
            }

LABEL_23:
            IPC::ArgumentCoder<WebCore::PublicKeyCredentialRequestOptions,void>::decode(a3, v198);
            if ((v211 & 1) == 0)
            {
              v19 = *a3;
              v153 = *(a3 + 1);
              *a3 = 0;
              *(a3 + 1) = 0;
              v154 = *(a3 + 3);
              if (!v154)
              {
                break;
              }

              if (!v153)
              {
                break;
              }

              (*(*v154 + 16))(v154, v19);
              if ((v211 & 1) == 0)
              {
                break;
              }
            }

            v18 = IPC::Decoder::decode<WebCore::VideoCodecType>(a3);
            if (v18 <= 0xFFu || (v20 = v18, IPC::Decoder::decode<std::optional<WebCore::SecurityOriginData>>(a3, &v223), v227 != 1))
            {
              buf[0] = 0;
              v195 = 0;
              goto LABEL_192;
            }

            if (v222 & 1) != 0 && (v211)
            {
              *buf = v10;
              v10 = buf;
              std::__tuple_leaf<1ul,WebKit::FrameInfoData,false>::__tuple_leaf[abi:sn200100]<WebKit::FrameInfoData,0>(&buf[16], v213);
              LOBYTE(v176) = 0;
              BYTE8(v176) = -1;
              if (LOBYTE(v198[1]) != 255)
              {
                v21 = v198[0];
                v198[0] = 0;
                *&v176 = v21;
                BYTE8(v176) = v198[1];
              }

              *v177 = v199[0];
              v22 = *&v199[1];
              v199[1] = 0;
              v199[2] = 0;
              *&v177[8] = v22;
              *&v22 = v200;
              v200 = 0;
              v178 = v22;
              v179 = v201;
              std::optional<WebCore::AuthenticationExtensionsClientInputs>::optional[abi:sn200100](&v180, &v202);
              v189 = v210[36];
              v190 = v20;
              LOBYTE(v191[0]) = 0;
              v194 = 0;
              if (v226 != 1)
              {
                goto LABEL_31;
              }

              v193 = -1;
              if (!v225)
              {
                v138 = v223;
                v223 = 0uLL;
                *v191 = v138;
                v192 = v224;
                goto LABEL_319;
              }

              if (v225 != 255)
              {
                *v191 = v223;
LABEL_319:
                v193 = v225;
              }

              v194 = 1;
LABEL_31:
              v195 = 1;
              if ((v227 & 1) != 0 && v226 && !v225)
              {
                v23 = *(&v223 + 1);
                *(&v223 + 1) = 0;
                if (v23 && atomic_fetch_add_explicit(v23, 0xFFFFFFFE, memory_order_relaxed) == 2)
                {
                  WTF::StringImpl::destroy(v23, v19);
                }

                v24 = v223;
                *&v223 = 0;
                if (v24 && atomic_fetch_add_explicit(v24, 0xFFFFFFFE, memory_order_relaxed) == 2)
                {
                  WTF::StringImpl::destroy(v24, v19);
                }
              }

LABEL_192:
              if (v211)
              {
                v10 = v198;
                std::optional<WebCore::AuthenticationExtensionsClientInputs>::~optional(&v202);
                WTF::Vector<WebCore::PublicKeyCredentialDescriptor,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v199[2]);
                v93 = v199[1];
                v199[1] = 0;
                if (v93 && atomic_fetch_add_explicit(v93, 0xFFFFFFFE, memory_order_relaxed) == 2)
                {
                  WTF::StringImpl::destroy(v93, v19);
                }

                if (LOBYTE(v198[1]) != 255)
                {
                  v94 = v198[0];
                  v198[0] = 0;
                  if (LOBYTE(v198[1]))
                  {
                    if (v94)
                    {
                      WTF::DeferrableRefCounted<JSC::ArrayBuffer>::deref(v94);
                    }
                  }

                  else if (v94)
                  {
                    if (*v94 == 1)
                    {
                      JSC::ArrayBufferView::operator delete();
                    }

                    else
                    {
                      --*v94;
                    }
                  }
                }
              }

LABEL_238:
              if (v222)
              {
                v115 = v221;
                v221 = 0;
                if (v115)
                {
                  CFRelease(v115);
                }

                v116 = v220;
                v220 = 0;
                if (v116 && atomic_fetch_add_explicit(v116, 0xFFFFFFFE, memory_order_relaxed) == 2)
                {
                  WTF::StringImpl::destroy(v116, v19);
                }

                if (!v219)
                {
                  v117 = v218;
                  v218 = 0;
                  if (v117 && atomic_fetch_add_explicit(v117, 0xFFFFFFFE, memory_order_relaxed) == 2)
                  {
                    WTF::StringImpl::destroy(v117, v19);
                  }

                  v118 = v217;
                  v217 = 0;
                  if (v118 && atomic_fetch_add_explicit(v118, 0xFFFFFFFE, memory_order_relaxed) == 2)
                  {
                    WTF::StringImpl::destroy(v118, v19);
                  }
                }

                v219 = -1;
                WebCore::ResourceRequest::~ResourceRequest(&v213[1]);
              }

              goto LABEL_252;
            }
          }

          buf[0] = 0;
          v195 = 0;
          goto LABEL_238;
        }

LABEL_142:
        if (v170 != 1)
        {
          goto LABEL_309;
        }

        WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v168, v11);
        goto LABEL_158;
      }

LABEL_364:
      v11 = *a3;
      v12 = *(a3 + 1);
      *a3 = 0;
      *(a3 + 1) = 0;
      v163 = *(a3 + 3);
      if (!v163)
      {
        goto LABEL_142;
      }

      if (!v12)
      {
        goto LABEL_142;
      }

      (*(*v163 + 16))(v163, v11);
      if ((v170 & 1) == 0)
      {
        goto LABEL_142;
      }

      goto LABEL_69;
    }

LABEL_62:
    v35 = v198[1];
    if (v198[1] && atomic_fetch_add_explicit(v198[1], 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v35, v28);
    }

    v36 = v198[0];
    if (v198[0] && atomic_fetch_add_explicit(v198[0], 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v36, v28);
    }

    goto LABEL_68;
  }

  v59 = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(a3);
  if (v60)
  {
    v10 = v59;
    IPC::ArgumentCoder<WebKit::FrameInfoData,void>::decode(a3, v213);
    if (v222 & 1) != 0 || (v142 = *a3, v143 = *(a3 + 1), *a3 = 0, *(a3 + 1) = 0, (v144 = *(a3 + 3)) != 0) && v143 && ((*(*v144 + 16))(v144, v142), (v222))
    {
      IPC::ArgumentCoder<WebCore::PublicKeyCredentialCreationOptions,void>::decode(a3, v198);
      if (v212 & 1) != 0 || (v62 = *a3, v155 = *(a3 + 1), *a3 = 0, *(a3 + 1) = 0, (v156 = *(a3 + 3)) != 0) && v155 && ((*(*v156 + 16))(v156, v62), (v212))
      {
        v61 = IPC::Decoder::decode<WebCore::VideoCodecType>(a3);
        if (v61 > 0xFFu)
        {
          if ((v222 & 1) == 0 || (v212 & 1) == 0)
          {
            goto LABEL_327;
          }

          v95 = v61;
          *buf = v10;
          std::__tuple_leaf<1ul,WebKit::FrameInfoData,false>::__tuple_leaf[abi:sn200100]<WebKit::FrameInfoData,0>(&buf[16], v213);
          *(&v96 + 1) = 0;
          v97 = *v198;
          v98 = *v199;
          *v198 = 0u;
          memset(v199, 0, sizeof(v199));
          v176 = v97;
          *v177 = v98;
          *&v177[16] = v199[2];
          LOBYTE(v178) = 0;
          v179 = -1;
          if (v201 != 255)
          {
            v99 = v200;
            v200 = 0;
            v178 = v99;
            v179 = v201;
          }

          v100 = v202;
          v202 = 0;
          v180 = v100;
          LOBYTE(v181) = 0;
          v182 = -1;
          if (v204 != 255)
          {
            v101 = v203;
            v203 = 0;
            v181 = v101;
            v182 = v204;
          }

          *&v96 = 0;
          v103 = *(&v205 + 1);
          v102 = v205;
          v205 = v96;
          v104 = v207;
          v207 = v96;
          v183 = __PAIR128__(v103, v102);
          v184 = v206;
          v185 = v104;
          v186 = v208;
          v187 = v209;
          std::optional<WebCore::AuthenticationExtensionsClientInputs>::optional[abi:sn200100](v188, v210);
          v196 = v95;
          v63 = 1;
        }

        else
        {
          v63 = 0;
          buf[0] = 0;
        }

        v197 = v63;
        if (v212)
        {
          WebCore::PublicKeyCredentialCreationOptions::~PublicKeyCredentialCreationOptions(v198);
        }
      }

      else
      {
        buf[0] = 0;
        v197 = 0;
      }

      if (v222)
      {
        v105 = v221;
        v221 = 0;
        if (v105)
        {
          CFRelease(v105);
        }

        v106 = v220;
        v220 = 0;
        if (v106 && atomic_fetch_add_explicit(v106, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v106, v62);
        }

        if (!v219)
        {
          v107 = v218;
          v218 = 0;
          if (v107 && atomic_fetch_add_explicit(v107, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v107, v62);
          }

          v108 = v217;
          v217 = 0;
          if (v108 && atomic_fetch_add_explicit(v108, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v108, v62);
          }
        }

        v219 = -1;
        WebCore::ResourceRequest::~ResourceRequest(&v213[1]);
      }
    }

    else
    {
      buf[0] = 0;
      v197 = 0;
    }

    if (v197)
    {
LABEL_224:
      v109 = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(a3);
      if (v11)
      {
        a3 = v109;
        while (1)
        {
          v110 = *a2;
          if ((*a2 & 1) == 0)
          {
            break;
          }

          v111 = *a2;
          atomic_compare_exchange_strong_explicit(a2, &v111, v110 + 2, memory_order_relaxed, memory_order_relaxed);
          if (v111 == v110)
          {
            goto LABEL_230;
          }
        }

        WTF::ThreadSafeWeakPtrControlBlock::strongRef(*a2);
LABEL_230:
        v112 = WTF::fastMalloc(0x18);
        *v112 = &unk_1F10F32A8;
        *(v112 + 1) = a3;
        *(v112 + 2) = a2;
        v213[0] = v112;
        if ((v197 & 1) == 0)
        {
          goto LABEL_327;
        }

        WebKit::WebAuthenticatorCoordinatorProxy::makeCredential(this, *buf, &buf[16], &v176, v196, v213);
        v113 = v213[0];
        v213[0] = 0;
        if (v113)
        {
          (*(*v113 + 8))(v113);
        }
      }

      goto LABEL_233;
    }
  }

  else
  {
    buf[0] = 0;
    v197 = 0;
  }

  v11 = *a3;
  v12 = *(a3 + 1);
  *a3 = 0;
  *(a3 + 1) = 0;
  v146 = *(a3 + 3);
  if (v146)
  {
    if (v12)
    {
      (*(*v146 + 16))(v146, v11);
      if (v197)
      {
        goto LABEL_224;
      }
    }
  }

LABEL_233:
  if (v197 == 1)
  {
    WebCore::PublicKeyCredentialCreationOptions::~PublicKeyCredentialCreationOptions(&v176);
    goto LABEL_296;
  }

LABEL_309:
  if (*(this + 4) == 1)
  {
    (*(*this + 24))(this, v11, v12);
  }

  else
  {
    --*(this + 4);
  }
}

WTF::StringImpl *WebKit::WebAutomationSessionProxy::didReceiveMessage(atomic_uint *this, atomic_ullong *a2, IPC::Decoder *a3)
{
  v8 = a3;
  v216 = *MEMORY[0x1E69E9840];
  atomic_fetch_add(this + 8, 1u);
  v10 = *(a3 + 25);
  switch(*(a3 + 25))
  {
    case 0x724:
      v12 = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(a3);
      if ((v13 & 1) == 0)
      {
        goto LABEL_228;
      }

      v10 = v12;
      IPC::ArgumentCoder<std::optional<WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,void>::decode<IPC::Decoder>(v8, buf);
      if ((buf[16] & 1) == 0)
      {
        v158 = *v8;
        v159 = *(v8 + 1);
        *v8 = 0;
        *(v8 + 1) = 0;
        v160 = *(v8 + 3);
        if (!v160)
        {
          goto LABEL_228;
        }

        if (!v159)
        {
          goto LABEL_228;
        }

        (*(*v160 + 16))(v160, v158);
        if ((buf[16] & 1) == 0)
        {
          goto LABEL_228;
        }
      }

      IPC::ArgumentCoder<WTF::String,void>::decode<IPC::Decoder>(v8, v206);
      if ((v206[1] & 1) == 0)
      {
        v174 = *v8;
        v175 = *(v8 + 1);
        *v8 = 0;
        *(v8 + 1) = 0;
        v176 = *(v8 + 3);
        if (!v176)
        {
          goto LABEL_228;
        }

        if (!v175)
        {
          goto LABEL_228;
        }

        (*(*v176 + 16))(v176, v174);
        if ((v206[1] & 1) == 0)
        {
          goto LABEL_228;
        }
      }

      v14 = *(v8 + 1);
      v15 = *(v8 + 2);
      v16 = *v8;
      if (v14 <= &v15[-*v8])
      {
        *v8 = 0;
        *(v8 + 1) = 0;
        v186 = *(v8 + 3);
        if (v186)
        {
          if (v14)
          {
            (*(*v186 + 16))(v186);
            v14 = *(v8 + 1);
          }
        }

        else
        {
          v14 = 0;
        }
      }

      else
      {
        v17 = v15 + 1;
        *(v8 + 2) = v15 + 1;
        if (v15)
        {
          v6 = *v15;
          if (v6 >= 2)
          {
            goto LABEL_298;
          }

          if (v14 <= v17 - v16)
          {
            v188 = 0;
            v189 = 0;
            *v8 = 0;
            *(v8 + 1) = 0;
            v190 = *(v8 + 3);
            if (v190)
            {
              (*(*v190 + 16))(v190);
              v189 = *v8;
              v188 = *(v8 + 1);
            }
          }

          else
          {
            *(v8 + 2) = v15 + 2;
            if (v15 != -1)
            {
              v7 = *v17;
              if (v7 < 2)
              {
                if ((buf[16] & 1) == 0)
                {
                  goto LABEL_210;
                }

                v5 = *buf;
                v4 = buf[8];
                v3 = v206[0];
                v18 = 1;
                v206[0] = 0;
LABEL_300:
                if (v206[1])
                {
                  v193 = v206[0];
                  v206[0] = 0;
                  if (v193)
                  {
                    if (atomic_fetch_add_explicit(v193, 0xFFFFFFFE, memory_order_relaxed) == 2)
                    {
                      WTF::StringImpl::destroy(v193, v16);
                    }
                  }
                }

                if ((v18 & 1) == 0)
                {
                  goto LABEL_228;
                }

                result = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(v8);
                if (v21)
                {
                  v194 = result;
                  while (1)
                  {
                    v195 = *a2;
                    if ((*a2 & 1) == 0)
                    {
                      break;
                    }

                    v196 = *a2;
                    atomic_compare_exchange_strong_explicit(a2, &v196, v195 + 2, memory_order_relaxed, memory_order_relaxed);
                    if (v196 == v195)
                    {
                      goto LABEL_311;
                    }
                  }

                  WTF::ThreadSafeWeakPtrControlBlock::strongRef(*a2);
LABEL_311:
                  v197 = WTF::fastMalloc(0x18);
                  *v197 = &unk_1F10F3500;
                  *(v197 + 1) = v194;
                  *(v197 + 2) = a2;
                  v206[0] = v197;
                  *buf = v3;
                  WebKit::WebAutomationSessionProxy::computeElementLayout(this, v10, v5, v4, buf, v6 & 1, v7, v206);
                  v199 = *buf;
                  *buf = 0;
                  if (v199 && atomic_fetch_add_explicit(v199, 0xFFFFFFFE, memory_order_relaxed) == 2)
                  {
                    WTF::StringImpl::destroy(v199, v198);
                  }

                  result = v206[0];
                  v206[0] = 0;
                  if (result)
                  {
                    goto LABEL_315;
                  }
                }

                else if (v3 && atomic_fetch_add_explicit(v3, 0xFFFFFFFE, memory_order_relaxed) == 2)
                {
                  result = v3;
                  goto LABEL_201;
                }

                goto LABEL_233;
              }

LABEL_298:
              *v8 = 0;
              *(v8 + 1) = 0;
              v192 = *(v8 + 3);
              if (v192 && v14)
              {
                (*(*v192 + 16))(v192, v16);
              }

              v10 = 0;
              v18 = 0;
              goto LABEL_300;
            }

            v188 = v14;
            v189 = v16;
          }

          *v8 = 0;
          *(v8 + 1) = 0;
          v191 = *(v8 + 3);
          if (v191 && v188)
          {
            (*(*v191 + 16))(v191, v189, v188);
            goto LABEL_334;
          }

          goto LABEL_296;
        }
      }

      *v8 = 0;
      *(v8 + 1) = 0;
      v187 = *(v8 + 3);
      if (v187)
      {
        if (v14)
        {
          (*(*v187 + 16))(v187);
LABEL_334:
          v16 = *v8;
          v14 = *(v8 + 1);
          goto LABEL_298;
        }

LABEL_297:
        v16 = 0;
        goto LABEL_298;
      }

LABEL_296:
      v14 = 0;
      goto LABEL_297;
    case 0x725:
      result = IPC::Decoder::decode<std::tuple<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,std::optional<WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::String>>(buf, a3);
      if (v210 != 1)
      {
        goto LABEL_233;
      }

      v89 = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(v8);
      if ((v21 & 1) == 0)
      {
        goto LABEL_164;
      }

      v90 = v89;
      while (1)
      {
        v91 = *a2;
        if ((*a2 & 1) == 0)
        {
          break;
        }

        v92 = *a2;
        atomic_compare_exchange_strong_explicit(a2, &v92, v91 + 2, memory_order_relaxed, memory_order_relaxed);
        if (v92 == v91)
        {
          goto LABEL_156;
        }
      }

      WTF::ThreadSafeWeakPtrControlBlock::strongRef(*a2);
LABEL_156:
      v121 = WTF::fastMalloc(0x18);
      *v121 = &unk_1F10F3640;
      *(v121 + 1) = v90;
      *(v121 + 2) = a2;
      v206[0] = v121;
      v117 = WebKit::WebAutomationSessionProxy::deleteCookie;
      goto LABEL_157;
    case 0x726:
      v58 = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(a3);
      if ((v59 & 1) == 0 || (v10 = v58, IPC::ArgumentCoder<std::optional<WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,void>::decode<IPC::Decoder>(v8, v200), (v201 & 1) == 0) && ((v151 = *v8, v152 = *(v8 + 1), *v8 = 0, *(v8 + 1) = 0, (v153 = *(v8 + 3)) == 0) || !v152 || ((*(*v153 + 16))(v153, v151), (v201 & 1) == 0)) || (IPC::ArgumentCoder<WTF::String,void>::decode<IPC::Decoder>(v8, &v202), (v203 & 1) == 0) && ((v171 = *v8, v172 = *(v8 + 1), *v8 = 0, *(v8 + 1) = 0, (v173 = *(v8 + 3)) == 0) || !v172 || ((*(*v173 + 16))(v173, v171), (v203 & 1) == 0)))
      {
        buf[0] = 0;
        v215 = 0;
        goto LABEL_219;
      }

      IPC::VectorArgumentCoder<false,WTF::String,0ul,WTF::CrashOnOverflow,16ul>::decode<IPC::Decoder>(v8, &v204);
      if ((v205 & 1) == 0)
      {
        v62 = *v8;
        v166 = *(v8 + 1);
        *v8 = 0;
        *(v8 + 1) = 0;
        v167 = *(v8 + 3);
        if (!v167 || !v166 || ((*(*v167 + 16))(v167, v62), (v205 & 1) == 0))
        {
          v10 = 0;
          buf[0] = 0;
          v215 = 0;
          goto LABEL_79;
        }
      }

      v60 = *(v8 + 1);
      v61 = *(v8 + 2);
      v62 = *v8;
      if (v60 <= &v61[-*v8])
      {
        *v8 = 0;
        *(v8 + 1) = 0;
        v179 = *(v8 + 3);
        if (v179)
        {
          if (v60)
          {
            (*(*v179 + 16))(v179);
            v60 = *(v8 + 1);
          }
        }

        else
        {
          v60 = 0;
        }

LABEL_278:
        *v8 = 0;
        *(v8 + 1) = 0;
        v180 = *(v8 + 3);
        if (v180)
        {
          if (v60)
          {
            (*(*v180 + 16))(v180);
LABEL_329:
            v62 = *v8;
            v60 = *(v8 + 1);
LABEL_286:
            *v8 = 0;
            *(v8 + 1) = 0;
            v185 = *(v8 + 3);
            if (v185 && v60)
            {
              (*(*v185 + 16))(v185, v62);
            }

            v10 = 0;
            buf[0] = 0;
            v215 = 0;
            goto LABEL_77;
          }

LABEL_285:
          v62 = 0;
          goto LABEL_286;
        }

LABEL_284:
        v60 = 0;
        goto LABEL_285;
      }

      v63 = v61 + 1;
      *(v8 + 2) = v61 + 1;
      if (!v61)
      {
        goto LABEL_278;
      }

      v64 = *v61;
      if (v64 >= 2)
      {
        goto LABEL_286;
      }

      if (v60 <= v63 - v62)
      {
        v181 = 0;
        v182 = 0;
        *v8 = 0;
        *(v8 + 1) = 0;
        v183 = *(v8 + 3);
        if (v183)
        {
          (*(*v183 + 16))(v183);
          v182 = *v8;
          v181 = *(v8 + 1);
        }

LABEL_283:
        *v8 = 0;
        *(v8 + 1) = 0;
        v184 = *(v8 + 3);
        if (v184 && v181)
        {
          (*(*v184 + 16))(v184, v182, v181);
          goto LABEL_329;
        }

        goto LABEL_284;
      }

      *(v8 + 2) = v61 + 2;
      if (v61 == -1)
      {
        v181 = v60;
        v182 = v62;
        goto LABEL_283;
      }

      v65 = *v63;
      if (v65 >= 2)
      {
        goto LABEL_286;
      }

      IPC::ArgumentCoder<std::optional<double>,void>::decode<IPC::Decoder>(v8, v206);
      if (v207 & 1) != 0 || (v62 = *v8, v145 = *(v8 + 1), *v8 = 0, *(v8 + 1) = 0, (v146 = *(v8 + 3)) != 0) && v145 && ((*(*v146 + 16))(v146, v62), (v207))
      {
        if ((v201 & 1) == 0 || (v203 & 1) == 0 || (v205 & 1) == 0)
        {
          goto LABEL_210;
        }

        *buf = v10;
        *&buf[8] = *v200;
        v66 = v202;
        v202 = 0;
        v209 = v66;
        v67 = *(&v204 + 1);
        v210 = v204;
        v204 = 0uLL;
        v211 = v67;
        v212 = v64;
        v213 = v65;
        v10 = 1;
        v214 = *v206;
      }

      else
      {
        v10 = 0;
        buf[0] = 0;
      }

      v215 = v10;
LABEL_77:
      if (v205)
      {
        WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v204, v62);
      }

LABEL_79:
      if (v203)
      {
        v68 = v202;
        v202 = 0;
        if (v68)
        {
          if (atomic_fetch_add_explicit(v68, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v68, v62);
          }
        }
      }

      if (v10)
      {
        goto LABEL_84;
      }

LABEL_219:
      v39 = *v8;
      v154 = *(v8 + 1);
      *v8 = 0;
      *(v8 + 1) = 0;
      result = *(v8 + 3);
      if (!result)
      {
        goto LABEL_196;
      }

      if (!v154)
      {
        goto LABEL_196;
      }

      result = (*(*result + 16))(result, v39);
      if ((v215 & 1) == 0)
      {
        goto LABEL_196;
      }

LABEL_84:
      result = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(v8);
      if ((v39 & 1) == 0)
      {
        goto LABEL_196;
      }

      v8 = result;
      while (1)
      {
        v69 = *a2;
        if ((*a2 & 1) == 0)
        {
          break;
        }

        v70 = *a2;
        atomic_compare_exchange_strong_explicit(a2, &v70, v69 + 2, memory_order_relaxed, memory_order_relaxed);
        if (v70 == v69)
        {
          goto LABEL_193;
        }
      }

      WTF::ThreadSafeWeakPtrControlBlock::strongRef(*a2);
LABEL_193:
      v133 = WTF::fastMalloc(0x18);
      *v133 = &unk_1F10F3410;
      v133[1] = v8;
      v133[2] = a2;
      *&v204 = v133;
      if ((v215 & 1) == 0)
      {
        while (1)
        {
LABEL_210:
          __break(1u);
LABEL_211:
          v147 = *v8;
          v148 = *(v8 + 1);
          *v8 = 0;
          *(v8 + 1) = 0;
          v149 = *(v8 + 3);
          if (!v149 || !v148 || ((*(*v149 + 16))(v149, v147), (v205 & 1) == 0))
          {
LABEL_212:
            buf[0] = 0;
            v212 = 0;
LABEL_213:
            v39 = *v8;
            v150 = *(v8 + 1);
            *v8 = 0;
            *(v8 + 1) = 0;
            result = *(v8 + 3);
            if (!result)
            {
              goto LABEL_191;
            }

            if (!v150)
            {
              goto LABEL_191;
            }

            result = (*(*result + 16))(result, v39);
            if ((v212 & 1) == 0)
            {
              goto LABEL_191;
            }

            goto LABEL_43;
          }

LABEL_33:
          IPC::ArgumentCoder<WTF::String,void>::decode<IPC::Decoder>(v8, v200);
          if ((v200[1] & 1) == 0)
          {
            v168 = *v8;
            v169 = *(v8 + 1);
            *v8 = 0;
            *(v8 + 1) = 0;
            v170 = *(v8 + 3);
            if (!v170)
            {
              goto LABEL_212;
            }

            if (!v169)
            {
              goto LABEL_212;
            }

            (*(*v170 + 16))(v170, v168);
            if ((v200[1] & 1) == 0)
            {
              goto LABEL_212;
            }
          }

          IPC::VectorArgumentCoder<false,WTF::String,0ul,WTF::CrashOnOverflow,16ul>::decode<IPC::Decoder>(v8, v206);
          if ((v207 & 1) == 0)
          {
            v35 = *v8;
            v164 = *(v8 + 1);
            *v8 = 0;
            *(v8 + 1) = 0;
            v165 = *(v8 + 3);
            if (!v165)
            {
              break;
            }

            if (!v164)
            {
              break;
            }

            (*(*v165 + 16))(v165, v35);
            if ((v207 & 1) == 0)
            {
              break;
            }
          }

          if (v205 & 1) != 0 && (v200[1])
          {
            *buf = v10;
            *&buf[8] = v204;
            v36 = v200[0];
            v200[0] = 0;
            v209 = v36;
            v210 = v206[0];
            v37 = v206[1];
            v206[0] = 0;
            v206[1] = 0;
            v211 = v37;
            v10 = 1;
            v212 = 1;
            WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v206, v35);
LABEL_38:
            if (v200[1])
            {
              v38 = v200[0];
              v200[0] = 0;
              if (v38)
              {
                if (atomic_fetch_add_explicit(v38, 0xFFFFFFFE, memory_order_relaxed) == 2)
                {
                  WTF::StringImpl::destroy(v38, v35);
                }
              }
            }

            if ((v10 & 1) == 0)
            {
              goto LABEL_213;
            }

LABEL_43:
            result = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(v8);
            if ((v39 & 1) == 0)
            {
              goto LABEL_191;
            }

            v8 = result;
            while (1)
            {
              v40 = *a2;
              if ((*a2 & 1) == 0)
              {
                break;
              }

              v41 = *a2;
              atomic_compare_exchange_strong_explicit(a2, &v41, v40 + 2, memory_order_relaxed, memory_order_relaxed);
              if (v41 == v40)
              {
                goto LABEL_185;
              }
            }

            WTF::ThreadSafeWeakPtrControlBlock::strongRef(*a2);
LABEL_185:
            v129 = WTF::fastMalloc(0x18);
            *v129 = &unk_1F10F35A0;
            v129[1] = v8;
            v129[2] = a2;
            *&v204 = v129;
            if (v212)
            {
              v130 = v209;
              v209 = 0;
              v206[0] = v130;
              WebKit::WebAutomationSessionProxy::setFilesForInputFileUpload(this, *buf, *&buf[8], buf[16], v206, &v210, &v204);
              v131 = v206[0];
              v206[0] = 0;
              if (v131 && atomic_fetch_add_explicit(v131, 0xFFFFFFFE, memory_order_relaxed) == 2)
              {
                WTF::StringImpl::destroy(v131, v39);
              }

              result = v204;
              *&v204 = 0;
              if (result)
              {
                result = (*(*result + 8))(result);
              }

LABEL_191:
              v132 = v212;
              goto LABEL_197;
            }
          }
        }

        v10 = 0;
        buf[0] = 0;
        v212 = 0;
        goto LABEL_38;
      }

      v206[0] = v210;
      v141 = v211;
      v210 = 0;
      v211 = 0;
      v206[1] = v141;
      WebKit::WebAutomationSessionProxy::evaluateJavaScriptFunction(this, *buf, *&buf[8], buf[16], &v209, v206, v212, v213, *&v141, v134, v135, v136, v137, v138, v139, v140, *&v214, SBYTE8(v214), &v204);
      WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v206, v142);
      result = v204;
      *&v204 = 0;
      if (result)
      {
        result = (*(*result + 8))(result);
      }

LABEL_196:
      v132 = v215;
LABEL_197:
      if (v132 == 1)
      {
        WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v210, v39);
LABEL_199:
        result = v209;
        v209 = 0;
        if (result)
        {
LABEL_200:
          if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
LABEL_201:
            result = WTF::StringImpl::destroy(result, v21);
          }
        }
      }

LABEL_233:
      if (this)
      {
        if (atomic_fetch_add(this + 8, 0xFFFFFFFF) == 1)
        {
          atomic_store(1u, this + 8);
          return (*(*this + 24))(this);
        }
      }

      return result;
    case 0x727:
      v75 = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(a3);
      if ((v76 & 1) == 0)
      {
        goto LABEL_228;
      }

      v77 = v75;
      v78 = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(v8);
      if ((v79 & 1) == 0)
      {
        goto LABEL_228;
      }

      v80 = v78;
      result = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(v8);
      if ((v81 & 1) == 0)
      {
        goto LABEL_233;
      }

      v82 = result;
      while (1)
      {
        v83 = *a2;
        if ((*a2 & 1) == 0)
        {
          break;
        }

        v84 = *a2;
        atomic_compare_exchange_strong_explicit(a2, &v84, v83 + 2, memory_order_relaxed, memory_order_relaxed);
        if (v84 == v83)
        {
          goto LABEL_206;
        }
      }

      WTF::ThreadSafeWeakPtrControlBlock::strongRef(*a2);
LABEL_206:
      v144 = WTF::fastMalloc(0x18);
      *v144 = &unk_1F10F34D8;
      v144[1] = v82;
      v144[2] = a2;
      *buf = v144;
      WebKit::WebAutomationSessionProxy::focusFrame(this, v77, v80, buf);
      result = *buf;
      *buf = 0;
      if (result)
      {
        result = (*(*result + 8))(result);
      }

      goto LABEL_233;
    case 0x728:
      result = IPC::Decoder::decode<std::tuple<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,std::optional<WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::String>>(buf, a3);
      if (v210 != 1)
      {
        goto LABEL_233;
      }

      v29 = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(v8);
      if ((v21 & 1) == 0)
      {
        goto LABEL_164;
      }

      v30 = v29;
      while (1)
      {
        v31 = *a2;
        if ((*a2 & 1) == 0)
        {
          break;
        }

        v32 = *a2;
        atomic_compare_exchange_strong_explicit(a2, &v32, v31 + 2, memory_order_relaxed, memory_order_relaxed);
        if (v32 == v31)
        {
          goto LABEL_152;
        }
      }

      WTF::ThreadSafeWeakPtrControlBlock::strongRef(*a2);
LABEL_152:
      v118 = WTF::fastMalloc(0x18);
      *v118 = &unk_1F10F3550;
      *(v118 + 1) = v30;
      *(v118 + 2) = a2;
      v206[0] = v118;
      v119 = WebKit::WebAutomationSessionProxy::getComputedLabel;
      goto LABEL_161;
    case 0x729:
      result = IPC::Decoder::decode<std::tuple<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,std::optional<WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::String>>(buf, a3);
      if (v210 != 1)
      {
        goto LABEL_233;
      }

      v93 = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(v8);
      if ((v21 & 1) == 0)
      {
        goto LABEL_164;
      }

      v94 = v93;
      while (1)
      {
        v95 = *a2;
        if ((*a2 & 1) == 0)
        {
          break;
        }

        v96 = *a2;
        atomic_compare_exchange_strong_explicit(a2, &v96, v95 + 2, memory_order_relaxed, memory_order_relaxed);
        if (v96 == v95)
        {
          goto LABEL_160;
        }
      }

      WTF::ThreadSafeWeakPtrControlBlock::strongRef(*a2);
LABEL_160:
      v122 = WTF::fastMalloc(0x18);
      *v122 = &unk_1F10F3528;
      *(v122 + 1) = v94;
      *(v122 + 2) = a2;
      v206[0] = v122;
      v119 = WebKit::WebAutomationSessionProxy::getComputedRole;
LABEL_161:
      IPC::callMemberFunction<WebKit::WebAutomationSessionProxy,WebKit::WebAutomationSessionProxy,void ()(WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,std::optional<WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::String,WTF::CompletionHandler<void ()(std::optional<WTF::String>,std::optional<WTF::String>)> &&),std::tuple<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,std::optional<WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::String>,void ()(std::optional<WTF::String>,std::optional<WTF::String>)>(this, v119, 0, buf, v206);
      result = v206[0];
      v206[0] = 0;
      if (result)
      {
        goto LABEL_162;
      }

      goto LABEL_163;
    case 0x72A:
      result = IPC::Decoder::decode<std::tuple<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,std::optional<WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>>(buf, a3);
      if (v209 != 1)
      {
        goto LABEL_233;
      }

      result = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(v8);
      if ((v101 & 1) == 0)
      {
        goto LABEL_233;
      }

      v102 = result;
      while (1)
      {
        v103 = *a2;
        if ((*a2 & 1) == 0)
        {
          break;
        }

        v104 = *a2;
        atomic_compare_exchange_strong_explicit(a2, &v104, v103 + 2, memory_order_relaxed, memory_order_relaxed);
        if (v104 == v103)
        {
          goto LABEL_173;
        }
      }

      WTF::ThreadSafeWeakPtrControlBlock::strongRef(*a2);
LABEL_173:
      v126 = WTF::fastMalloc(0x18);
      *v126 = &unk_1F10F3618;
      *(v126 + 1) = v102;
      *(v126 + 2) = a2;
      v206[0] = v126;
      WebKit::WebAutomationSessionProxy::getCookiesForFrame(this, *buf, *&buf[8], buf[16], v206);
      result = v206[0];
      v206[0] = 0;
      if (result)
      {
        goto LABEL_315;
      }

      goto LABEL_233;
    case 0x72B:
      result = IPC::Decoder::decode<std::tuple<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,std::optional<WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::String>>(buf, a3);
      if (v210 != 1)
      {
        goto LABEL_233;
      }

      v85 = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(v8);
      if ((v21 & 1) == 0)
      {
        goto LABEL_199;
      }

      v86 = v85;
      while (1)
      {
        v87 = *a2;
        if ((*a2 & 1) == 0)
        {
          break;
        }

        v88 = *a2;
        atomic_compare_exchange_strong_explicit(a2, &v88, v87 + 2, memory_order_relaxed, memory_order_relaxed);
        if (v88 == v87)
        {
          goto LABEL_154;
        }
      }

      WTF::ThreadSafeWeakPtrControlBlock::strongRef(*a2);
LABEL_154:
      v120 = WTF::fastMalloc(0x18);
      *v120 = &unk_1F10F3488;
      *(v120 + 1) = v86;
      *(v120 + 2) = a2;
      v206[0] = v120;
      WebKit::WebAutomationSessionProxy::resolveChildFrameWithName(this, *buf, *&buf[8], buf[16], &v209, v206);
      goto LABEL_180;
    case 0x72C:
      result = IPC::Decoder::decode<std::tuple<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,std::optional<WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::String>>(buf, a3);
      if (v210 != 1)
      {
        goto LABEL_233;
      }

      v109 = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(v8);
      if ((v21 & 1) == 0)
      {
        goto LABEL_199;
      }

      v110 = v109;
      while (1)
      {
        v111 = *a2;
        if ((*a2 & 1) == 0)
        {
          break;
        }

        v112 = *a2;
        atomic_compare_exchange_strong_explicit(a2, &v112, v111 + 2, memory_order_relaxed, memory_order_relaxed);
        if (v112 == v111)
        {
          goto LABEL_179;
        }
      }

      WTF::ThreadSafeWeakPtrControlBlock::strongRef(*a2);
LABEL_179:
      v128 = WTF::fastMalloc(0x18);
      *v128 = &unk_1F10F3460;
      *(v128 + 1) = v110;
      *(v128 + 2) = a2;
      v206[0] = v128;
      WebKit::WebAutomationSessionProxy::resolveChildFrameWithNodeHandle(this, *buf, *&buf[8], buf[16], &v209, v206);
LABEL_180:
      result = v206[0];
      v206[0] = 0;
      if (result)
      {
        result = (*(*result + 8))(result);
      }

      if ((v210 & 1) == 0)
      {
        goto LABEL_233;
      }

      goto LABEL_199;
    case 0x72D:
      v42 = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(a3);
      if ((v43 & 1) == 0)
      {
        goto LABEL_228;
      }

      v44 = v42;
      IPC::ArgumentCoder<std::optional<WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,void>::decode<IPC::Decoder>(v8, buf);
      if ((buf[16] & 1) == 0)
      {
        v155 = *v8;
        v156 = *(v8 + 1);
        *v8 = 0;
        *(v8 + 1) = 0;
        v157 = *(v8 + 3);
        if (!v157)
        {
          goto LABEL_228;
        }

        if (!v156)
        {
          goto LABEL_228;
        }

        (*(*v157 + 16))(v157, v155);
        if ((buf[16] & 1) == 0)
        {
          goto LABEL_228;
        }
      }

      v45 = *(v8 + 1);
      v46 = ((*(v8 + 2) + 3) & 0xFFFFFFFFFFFFFFFCLL);
      v47 = v46 - *v8;
      v48 = v45 >= v47;
      v49 = v45 - v47;
      if (v48 && v49 > 3)
      {
        *(v8 + 2) = v46 + 1;
        if (v46)
        {
          v51 = *v46;
          v52 = *buf;
          v53 = buf[8];
          result = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(v8);
          if ((v54 & 1) == 0)
          {
            goto LABEL_233;
          }

          v55 = result;
          while (1)
          {
            v56 = *a2;
            if ((*a2 & 1) == 0)
            {
              break;
            }

            v57 = *a2;
            atomic_compare_exchange_strong_explicit(a2, &v57, v56 + 2, memory_order_relaxed, memory_order_relaxed);
            if (v57 == v56)
            {
              goto LABEL_203;
            }
          }

          WTF::ThreadSafeWeakPtrControlBlock::strongRef(*a2);
LABEL_203:
          v143 = WTF::fastMalloc(0x18);
          *v143 = &unk_1F10F3438;
          v143[1] = v55;
          v143[2] = a2;
          *buf = v143;
          WebKit::WebAutomationSessionProxy::resolveChildFrameWithOrdinal(this, v44, v52, v53, v51, buf);
          result = *buf;
          *buf = 0;
          if (!result)
          {
            goto LABEL_233;
          }

LABEL_315:
          result = (*(*result + 8))(result);
          goto LABEL_233;
        }
      }

      else
      {
        *v8 = 0;
        *(v8 + 1) = 0;
        v177 = *(v8 + 3);
        if (v177)
        {
          if (v45)
          {
            (*(*v177 + 16))(v177);
            v45 = *(v8 + 1);
          }
        }

        else
        {
          v45 = 0;
        }
      }

      *v8 = 0;
      *(v8 + 1) = 0;
      v178 = *(v8 + 3);
      if (v178 && v45)
      {
        (*(*v178 + 16))(v178);
      }

LABEL_228:
      v161 = *v8;
      v162 = *(v8 + 1);
      *v8 = 0;
      *(v8 + 1) = 0;
      result = *(v8 + 3);
      if (result)
      {
        v163 = v162 == 0;
      }

      else
      {
        v163 = 1;
      }

      if (!v163)
      {
        result = (*(*result + 16))(result, v161);
      }

      goto LABEL_233;
    case 0x72E:
      result = IPC::Decoder::decode<std::tuple<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,std::optional<WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>>(buf, a3);
      if (v209 != 1)
      {
        goto LABEL_233;
      }

      result = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(v8);
      if ((v105 & 1) == 0)
      {
        goto LABEL_233;
      }

      v106 = result;
      while (1)
      {
        v107 = *a2;
        if ((*a2 & 1) == 0)
        {
          break;
        }

        v108 = *a2;
        atomic_compare_exchange_strong_explicit(a2, &v108, v107 + 2, memory_order_relaxed, memory_order_relaxed);
        if (v108 == v107)
        {
          goto LABEL_176;
        }
      }

      WTF::ThreadSafeWeakPtrControlBlock::strongRef(*a2);
LABEL_176:
      v127 = WTF::fastMalloc(0x18);
      *v127 = &unk_1F10F34B0;
      *(v127 + 1) = v106;
      *(v127 + 2) = a2;
      v206[0] = v127;
      WebKit::WebAutomationSessionProxy::resolveParentFrame(this, *buf, *&buf[8], buf[16], v206);
      result = v206[0];
      v206[0] = 0;
      if (!result)
      {
        goto LABEL_233;
      }

      goto LABEL_315;
    case 0x72F:
      result = IPC::Decoder::decode<std::tuple<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,std::optional<WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::String>>(buf, a3);
      if (v210 != 1)
      {
        goto LABEL_233;
      }

      v25 = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(v8);
      if ((v21 & 1) == 0)
      {
        goto LABEL_164;
      }

      v26 = v25;
      while (1)
      {
        v27 = *a2;
        if ((*a2 & 1) == 0)
        {
          break;
        }

        v28 = *a2;
        atomic_compare_exchange_strong_explicit(a2, &v28, v27 + 2, memory_order_relaxed, memory_order_relaxed);
        if (v28 == v27)
        {
          goto LABEL_150;
        }
      }

      WTF::ThreadSafeWeakPtrControlBlock::strongRef(*a2);
LABEL_150:
      v116 = WTF::fastMalloc(0x18);
      *v116 = &unk_1F10F3578;
      *(v116 + 1) = v26;
      *(v116 + 2) = a2;
      v206[0] = v116;
      v117 = WebKit::WebAutomationSessionProxy::selectOptionElement;
LABEL_157:
      IPC::callMemberFunction<WebKit::WebAutomationSessionProxy,WebKit::WebAutomationSessionProxy,void ()(WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,std::optional<WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::String,WTF::CompletionHandler<void ()(std::optional<WTF::String>)> &&),std::tuple<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,std::optional<WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::String>,void ()(std::optional<WTF::String>)>(this, v117, 0, buf, v206);
      result = v206[0];
      v206[0] = 0;
      if (result)
      {
LABEL_162:
        result = (*(*result + 8))(result);
      }

LABEL_163:
      if ((v210 & 1) == 0)
      {
        goto LABEL_233;
      }

LABEL_164:
      result = v209;
      if (v209)
      {
        goto LABEL_200;
      }

      goto LABEL_233;
    case 0x730:
      v33 = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(a3);
      if ((v34 & 1) == 0)
      {
        goto LABEL_212;
      }

      v10 = v33;
      IPC::ArgumentCoder<std::optional<WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,void>::decode<IPC::Decoder>(v8, &v204);
      if (v205)
      {
        goto LABEL_33;
      }

      goto LABEL_211;
    case 0x731:
      result = IPC::Decoder::decode<std::tuple<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,std::optional<WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::String,BOOL,BOOL>>(buf, a3);
      if (v211 != 1)
      {
        goto LABEL_233;
      }

      v97 = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(v8);
      if ((v21 & 1) == 0)
      {
        goto LABEL_164;
      }

      v98 = v97;
      while (1)
      {
        v99 = *a2;
        if ((*a2 & 1) == 0)
        {
          break;
        }

        v100 = *a2;
        atomic_compare_exchange_strong_explicit(a2, &v100, v99 + 2, memory_order_relaxed, memory_order_relaxed);
        if (v100 == v99)
        {
          goto LABEL_167;
        }
      }

      WTF::ThreadSafeWeakPtrControlBlock::strongRef(*a2);
LABEL_167:
      v123 = WTF::fastMalloc(0x18);
      *v123 = &unk_1F10F35F0;
      v123[1] = v98;
      v123[2] = a2;
      *&v204 = v123;
      v206[0] = v209;
      WebKit::WebAutomationSessionProxy::snapshotRectForScreenshot(this, *buf, *&buf[8], buf[16], v206, v210, BYTE1(v210), &v204);
      v125 = v206[0];
      v206[0] = 0;
      if (v125 && atomic_fetch_add_explicit(v125, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v125, v124);
      }

      result = v204;
      *&v204 = 0;
      if (result)
      {
        goto LABEL_148;
      }

      goto LABEL_233;
    case 0x732:
      result = IPC::Decoder::decode<std::tuple<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,std::optional<WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::String,BOOL,BOOL>>(buf, a3);
      if (v211 != 1)
      {
        goto LABEL_233;
      }

      v20 = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(v8);
      if ((v21 & 1) == 0)
      {
        goto LABEL_164;
      }

      v22 = v20;
      while (1)
      {
        v23 = *a2;
        if ((*a2 & 1) == 0)
        {
          break;
        }

        v24 = *a2;
        atomic_compare_exchange_strong_explicit(a2, &v24, v23 + 2, memory_order_relaxed, memory_order_relaxed);
        if (v24 == v23)
        {
          goto LABEL_144;
        }
      }

      WTF::ThreadSafeWeakPtrControlBlock::strongRef(*a2);
LABEL_144:
      v113 = WTF::fastMalloc(0x18);
      *v113 = &unk_1F10F35C8;
      v113[1] = v22;
      v113[2] = a2;
      *&v204 = v113;
      v206[0] = v209;
      WebKit::WebAutomationSessionProxy::takeScreenshot(this, *buf, *&buf[8], buf[16], v206, v210, BYTE1(v210), &v204);
      v115 = v206[0];
      v206[0] = 0;
      if (v115 && atomic_fetch_add_explicit(v115, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v115, v114);
      }

      result = v204;
      *&v204 = 0;
      if (result)
      {
LABEL_148:
        result = (*(*result + 8))(result);
      }

      goto LABEL_233;
    default:
      v71 = qword_1ED6416C8;
      if (os_log_type_enabled(qword_1ED6416C8, OS_LOG_TYPE_ERROR))
      {
        if (v10 >= 0x107F)
        {
          v72 = 4223;
        }

        else
        {
          v72 = v10;
        }

        v73 = (&IPC::Detail::messageDescriptions)[3 * v72];
        v74 = *(v8 + 7);
        *buf = 136315394;
        *&buf[4] = v73;
        *&buf[12] = 2048;
        *&buf[14] = v74;
        _os_log_error_impl(&dword_19D52D000, v71, OS_LOG_TYPE_ERROR, "Unhandled message %s to %llu", buf, 0x16u);
      }

      goto LABEL_228;
  }
}

void WebKit::WebCookieManager::didReceiveMessage(WebKit::WebCookieManager *this, atomic_ullong *a2, IPC::Decoder *a3)
{
  v19 = *MEMORY[0x1E69E9840];
  WebKit::WebCookieManager::ref(this);
  v6 = *(a3 + 25);
  switch(*(a3 + 25))
  {
    case 0x735:
      IPC::handleMessageAsync<Messages::WebCookieManager::DeleteAllCookies,IPC::Connection,WebKit::WebCookieManager,WebKit::WebCookieManager,void ()(PAL::SessionID,WTF::CompletionHandler<void ()(void)> &&)>(a2, a3, this);
      break;
    case 0x736:
      IPC::handleMessageAsync<Messages::WebCookieManager::DeleteAllCookiesModifiedSince,IPC::Connection,WebKit::WebCookieManager,WebKit::WebCookieManager,void ()(PAL::SessionID,WTF::WallTime,WTF::CompletionHandler<void ()(void)> &&)>(a2, a3, this);
      break;
    case 0x737:
      IPC::handleMessageAsync<Messages::WebCookieManager::DeleteCookie,IPC::Connection,WebKit::WebCookieManager,WebKit::WebCookieManager,void ()(PAL::SessionID,WebCore::Cookie const&,WTF::CompletionHandler<void ()(void)> &&)>(a2, a3, this);
      break;
    case 0x738:
      IPC::handleMessageAsync<Messages::WebCookieManager::DeleteCookiesForHostnames,IPC::Connection,WebKit::WebCookieManager,WebKit::WebCookieManager,void ()(PAL::SessionID,WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> const&,WTF::CompletionHandler<void ()(void)> &&)>(a2, a3, this);
      break;
    case 0x739:
      IPC::handleMessageAsync<Messages::WebCookieManager::GetAllCookies,IPC::Connection,WebKit::WebCookieManager,WebKit::WebCookieManager,void ()(PAL::SessionID,WTF::CompletionHandler<void ()(WTF::Vector<WebCore::Cookie,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&)> &&)>(a2, a3, this);
      break;
    case 0x73A:
      IPC::handleMessageAsync<Messages::WebCookieManager::GetCookies,IPC::Connection,WebKit::WebCookieManager,WebKit::WebCookieManager,void ()(PAL::SessionID,WTF::URL const&,WTF::CompletionHandler<void ()(WTF::Vector<WebCore::Cookie,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&)> &&)>(a2, a3, this);
      break;
    case 0x73B:
      IPC::handleMessageAsync<Messages::WebCookieManager::GetHTTPCookieAcceptPolicy,IPC::Connection,WebKit::WebCookieManager,WebKit::WebCookieManager,void ()(PAL::SessionID,WTF::CompletionHandler<void ()(WebCore::HTTPCookieAcceptPolicy)> &&)>(a2, a3, this);
      break;
    case 0x73C:
      IPC::handleMessageAsync<Messages::WebCookieManager::GetHostnamesWithCookies,IPC::Connection,WebKit::WebCookieManager,WebKit::WebCookieManager,void ()(PAL::SessionID,WTF::CompletionHandler<void ()(WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&)> &&)>(a2, a3, this);
      break;
    case 0x73D:
      IPC::handleMessageAsync<Messages::WebCookieManager::SetCookie,IPC::Connection,WebKit::WebCookieManager,WebKit::WebCookieManager,void ()(PAL::SessionID,WTF::Vector<WebCore::Cookie,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> const&,unsigned long long,WTF::CompletionHandler<void ()(void)> &&)>(a2, a3, this);
      break;
    case 0x73E:
      IPC::handleMessageAsync<Messages::WebCookieManager::SetCookies,IPC::Connection,WebKit::WebCookieManager,WebKit::WebCookieManager,void ()(PAL::SessionID,WTF::Vector<WebCore::Cookie,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> const&,WTF::URL const&,WTF::URL const&,WTF::CompletionHandler<void ()(void)> &&)>(a2, a3, this);
      break;
    case 0x73F:
      IPC::handleMessageAsync<Messages::WebCookieManager::SetHTTPCookieAcceptPolicy,IPC::Connection,WebKit::WebCookieManager,WebKit::WebCookieManager,void ()(PAL::SessionID,WebCore::HTTPCookieAcceptPolicy,WTF::CompletionHandler<void ()(void)> &&)>(a2, a3, this);
      break;
    case 0x740:
      v7 = IPC::Decoder::decode<std::tuple<PAL::SessionID>>(a3);
      if (v8)
      {
        WebKit::WebCookieManager::startObservingCookieChanges(this, v7);
      }

      break;
    case 0x741:
      v9 = IPC::Decoder::decode<std::tuple<PAL::SessionID>>(a3);
      if (v10)
      {
        WebKit::WebCookieManager::stopObservingCookieChanges(this, v9);
      }

      break;
    default:
      v11 = qword_1ED6416C8;
      if (os_log_type_enabled(qword_1ED6416C8, OS_LOG_TYPE_ERROR))
      {
        if (v6 >= 0x107F)
        {
          v12 = 4223;
        }

        else
        {
          v12 = v6;
        }

        v13 = (&IPC::Detail::messageDescriptions)[3 * v12];
        v14 = *(a3 + 7);
        v15 = 136315394;
        v16 = v13;
        v17 = 2048;
        v18 = v14;
        _os_log_error_impl(&dword_19D52D000, v11, OS_LOG_TYPE_ERROR, "Unhandled message %s to %llu", &v15, 0x16u);
      }

      IPC::Decoder::markInvalid(a3);
      break;
  }

  if (this)
  {
    WebKit::WebCookieManager::deref(this);
  }
}

uint64_t IPC::handleMessageAsync<Messages::WebCookieManager::GetHostnamesWithCookies,IPC::Connection,WebKit::WebCookieManager,WebKit::WebCookieManager,void ()(PAL::SessionID,WTF::CompletionHandler<void ()(WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&)> &&)>(atomic_ullong *a1, IPC::Decoder *a2, uint64_t a3)
{
  result = IPC::Decoder::decode<std::tuple<PAL::SessionID>>(a2);
  if (v7)
  {
    v8 = result;
    result = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(a2);
    if (v9)
    {
      v10 = result;
      while (1)
      {
        v11 = *a1;
        if ((*a1 & 1) == 0)
        {
          break;
        }

        v12 = *a1;
        atomic_compare_exchange_strong_explicit(a1, &v12, v11 + 2, memory_order_relaxed, memory_order_relaxed);
        if (v12 == v11)
        {
          goto LABEL_8;
        }
      }

      WTF::ThreadSafeWeakPtrControlBlock::strongRef(*a1);
LABEL_8:
      v13 = WTF::fastMalloc(0x18);
      *v13 = &unk_1F10F3668;
      v13[1] = v10;
      v13[2] = a1;
      v14 = v13;
      WebKit::WebCookieManager::getHostnamesWithCookies(a3, v8, &v14);
      result = v14;
      v14 = 0;
      if (result)
      {
        return (*(*result + 8))(result);
      }
    }
  }

  return result;
}

uint64_t IPC::handleMessageAsync<Messages::WebCookieManager::DeleteCookiesForHostnames,IPC::Connection,WebKit::WebCookieManager,WebKit::WebCookieManager,void ()(PAL::SessionID,WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> const&,WTF::CompletionHandler<void ()(void)> &&)>(atomic_ullong *a1, IPC::Decoder *a2, uint64_t a3)
{
  v5 = a2;
  v7 = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(a2);
  if ((v8 & 1) == 0)
  {
    goto LABEL_18;
  }

  v3 = v7;
  IPC::VectorArgumentCoder<false,WTF::String,0ul,WTF::CrashOnOverflow,16ul>::decode<IPC::Decoder>(v5, &v24);
  if ((v26 & 1) == 0)
  {
    goto LABEL_17;
  }

LABEL_3:
  v21 = v3;
  v22[0] = v24;
  v10 = v25;
  v24 = 0;
  v25 = 0;
  v22[1] = v10;
  v23 = 1;
  WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v24, v9);
  while (1)
  {
    result = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(v5);
    if ((v12 & 1) == 0)
    {
      break;
    }

    v5 = result;
    while (1)
    {
      v13 = *a1;
      if ((*a1 & 1) == 0)
      {
        break;
      }

      v14 = *a1;
      atomic_compare_exchange_strong_explicit(a1, &v14, v13 + 2, memory_order_relaxed, memory_order_relaxed);
      if (v14 == v13)
      {
        goto LABEL_10;
      }
    }

    WTF::ThreadSafeWeakPtrControlBlock::strongRef(*a1);
LABEL_10:
    v15 = WTF::fastMalloc(0x18);
    *v15 = &unk_1F10F3690;
    v15[1] = v5;
    v15[2] = a1;
    v24 = v15;
    if (v23)
    {
      WebKit::WebCookieManager::deleteCookiesForHostnames(a3, v21, v22, &v24);
      result = v24;
      v24 = 0;
      if (result)
      {
        result = (*(*result + 8))(result);
      }

      break;
    }

    __break(1u);
LABEL_17:
    v16 = *v5;
    v17 = *(v5 + 1);
    *v5 = 0;
    *(v5 + 1) = 0;
    v18 = *(v5 + 3);
    if (v18)
    {
      if (v17)
      {
        (*(*v18 + 16))(v18, v16);
        if (v26)
        {
          goto LABEL_3;
        }
      }
    }

LABEL_18:
    LOBYTE(v21) = 0;
    v23 = 0;
    v12 = *v5;
    v19 = *(v5 + 1);
    *v5 = 0;
    *(v5 + 1) = 0;
    result = *(v5 + 3);
    if (result)
    {
      v20 = v19 == 0;
    }

    else
    {
      v20 = 1;
    }

    if (!v20)
    {
      result = (*(*result + 16))(result, v12);
      if (v23)
      {
        continue;
      }
    }

    break;
  }

  if (v23 == 1)
  {
    return WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v22, v12);
  }

  return result;
}

uint64_t IPC::handleMessageAsync<Messages::WebCookieManager::DeleteAllCookies,IPC::Connection,WebKit::WebCookieManager,WebKit::WebCookieManager,void ()(PAL::SessionID,WTF::CompletionHandler<void ()(void)> &&)>(atomic_ullong *a1, IPC::Decoder *a2, uint64_t a3)
{
  result = IPC::Decoder::decode<std::tuple<PAL::SessionID>>(a2);
  if (v7)
  {
    v8 = result;
    result = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(a2);
    if (v9)
    {
      v10 = result;
      while (1)
      {
        v11 = *a1;
        if ((*a1 & 1) == 0)
        {
          break;
        }

        v12 = *a1;
        atomic_compare_exchange_strong_explicit(a1, &v12, v11 + 2, memory_order_relaxed, memory_order_relaxed);
        if (v12 == v11)
        {
          goto LABEL_8;
        }
      }

      WTF::ThreadSafeWeakPtrControlBlock::strongRef(*a1);
LABEL_8:
      v13 = WTF::fastMalloc(0x18);
      *v13 = &unk_1F10F36B8;
      v13[1] = v10;
      v13[2] = a1;
      v14 = v13;
      WebKit::WebCookieManager::deleteAllCookies(a3, v8, &v14);
      result = v14;
      v14 = 0;
      if (result)
      {
        return (*(*result + 8))(result);
      }
    }
  }

  return result;
}

uint64_t IPC::handleMessageAsync<Messages::WebCookieManager::SetCookie,IPC::Connection,WebKit::WebCookieManager,WebKit::WebCookieManager,void ()(PAL::SessionID,WTF::Vector<WebCore::Cookie,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> const&,unsigned long long,WTF::CompletionHandler<void ()(void)> &&)>(atomic_ullong *a1, IPC::Decoder *a2, uint64_t a3)
{
  v4 = a2;
  v6 = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(a2);
  if ((v8 & 1) == 0 || (v9 = v6, IPC::Decoder::decode<WTF::Vector<WebCore::Cookie,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>(v4, &v32, v7), v34 != 1))
  {
    LOBYTE(v28) = 0;
    v31 = 0;
    goto LABEL_23;
  }

  v10 = *(v4 + 1);
  v11 = ((*(v4 + 2) + 7) & 0xFFFFFFFFFFFFFFF8);
  v12 = *v4;
  v13 = v11 - *v4;
  v14 = v10 >= v13;
  v15 = v10 - v13;
  if (v14 && v15 > 7)
  {
    *(v4 + 2) = v11 + 1;
    if (!v11)
    {
      goto LABEL_33;
    }

    v17 = *v11;
    v28 = v9;
    v29[0] = v32;
    v18 = v33;
    v32 = 0;
    v33 = 0;
    v29[1] = v18;
    v30 = v17;
    v31 = 1;
    WTF::Vector<WebCore::Cookie,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v32, v12);
    goto LABEL_10;
  }

  while (1)
  {
    *v4 = 0;
    *(v4 + 1) = 0;
    v26 = *(v4 + 3);
    if (!v26)
    {
      v10 = 0;
LABEL_32:
      v12 = 0;
      goto LABEL_33;
    }

    if (!v10)
    {
      goto LABEL_32;
    }

    (*(*v26 + 16))(v26);
    v12 = *v4;
    v10 = *(v4 + 1);
LABEL_33:
    *v4 = 0;
    *(v4 + 1) = 0;
    v27 = *(v4 + 3);
    if (v27 && v10)
    {
      (*(*v27 + 16))(v27);
    }

    LOBYTE(v28) = 0;
    v31 = 0;
    if (v34)
    {
      WTF::Vector<WebCore::Cookie,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v32, v12);
    }

LABEL_23:
    v20 = *v4;
    v24 = *(v4 + 1);
    *v4 = 0;
    *(v4 + 1) = 0;
    result = *(v4 + 3);
    if (result)
    {
      v25 = v24 == 0;
    }

    else
    {
      v25 = 1;
    }

    if (v25)
    {
      goto LABEL_19;
    }

    result = (*(*result + 16))(result, v20);
    if ((v31 & 1) == 0)
    {
      goto LABEL_19;
    }

LABEL_10:
    result = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(v4);
    if ((v20 & 1) == 0)
    {
      goto LABEL_19;
    }

    v4 = result;
    while (1)
    {
      v21 = *a1;
      if ((*a1 & 1) == 0)
      {
        break;
      }

      v22 = *a1;
      atomic_compare_exchange_strong_explicit(a1, &v22, v21 + 2, memory_order_relaxed, memory_order_relaxed);
      if (v22 == v21)
      {
        goto LABEL_16;
      }
    }

    WTF::ThreadSafeWeakPtrControlBlock::strongRef(*a1);
LABEL_16:
    v23 = WTF::fastMalloc(0x18);
    *v23 = &unk_1F10F36E0;
    v23[1] = v4;
    v23[2] = a1;
    v32 = v23;
    if (v31)
    {
      break;
    }

    __break(1u);
  }

  WebKit::WebCookieManager::setCookie(a3, v28, v29, v30, &v32);
  result = v32;
  v32 = 0;
  if (result)
  {
    result = (*(*result + 8))(result);
  }

LABEL_19:
  if (v31 == 1)
  {
    return WTF::Vector<WebCore::Cookie,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v29, v20);
  }

  return result;
}

WTF::StringImpl *IPC::handleMessageAsync<Messages::WebCookieManager::SetCookies,IPC::Connection,WebKit::WebCookieManager,WebKit::WebCookieManager,void ()(PAL::SessionID,WTF::Vector<WebCore::Cookie,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> const&,WTF::URL const&,WTF::URL const&,WTF::CompletionHandler<void ()(void)> &&)>(atomic_ullong *a1, IPC::Decoder *a2, uint64_t a3)
{
  v4 = a2;
  v6 = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(a2);
  if ((v8 & 1) == 0)
  {
    goto LABEL_33;
  }

  v9 = v6;
  IPC::Decoder::decode<WTF::Vector<WebCore::Cookie,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>(v4, &v37, v7);
  if (v39 != 1)
  {
    goto LABEL_33;
  }

  IPC::ArgumentCoder<WTF::URL,void>::decode(v4, &v40);
  if ((v43 & 1) == 0)
  {
    v10 = *v4;
    v24 = *(v4 + 1);
    *v4 = 0;
    *(v4 + 1) = 0;
    v25 = *(v4 + 3);
    if (!v25 || !v24 || ((*(*v25 + 16))(v25, v10), (v43 & 1) == 0))
    {
      v13 = 0;
      LOBYTE(v28) = 0;
      v36 = 0;
      goto LABEL_11;
    }
  }

  IPC::ArgumentCoder<WTF::URL,void>::decode(v4, &v44);
  if (v47 & 1) != 0 || (v10 = *v4, v26 = *(v4 + 1), *v4 = 0, *(v4 + 1) = 0, (v27 = *(v4 + 3)) != 0) && v26 && ((*(*v27 + 16))(v27, v10), (v47))
  {
    if ((v39 & 1) == 0 || (v43 & 1) == 0)
    {
      goto LABEL_32;
    }

    v28 = v9;
    v29[0] = v37;
    v11 = v38;
    v37 = 0;
    v38 = 0;
    v29[1] = v11;
    v12 = v40;
    v40 = 0;
    v30 = v12;
    v31 = v41;
    v32 = v42;
    LODWORD(v41) = v41 & 0xFFFFFFFE;
    v33 = v44;
    v34 = v45;
    v35 = v46;
    v13 = 1;
    v36 = 1;
  }

  else
  {
    v13 = 0;
    LOBYTE(v28) = 0;
    v36 = 0;
    if ((v43 & 1) == 0)
    {
      goto LABEL_11;
    }
  }

  v14 = v40;
  v40 = 0;
  if (v14 && atomic_fetch_add_explicit(v14, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v14, v10);
  }

LABEL_11:
  if (v39)
  {
    WTF::Vector<WebCore::Cookie,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v37, v10);
  }

  if ((v13 & 1) == 0)
  {
    goto LABEL_34;
  }

  while (1)
  {
    result = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(v4);
    if ((v16 & 1) == 0)
    {
      break;
    }

    v4 = result;
    while (1)
    {
      v17 = *a1;
      if ((*a1 & 1) == 0)
      {
        break;
      }

      v18 = *a1;
      atomic_compare_exchange_strong_explicit(a1, &v18, v17 + 2, memory_order_relaxed, memory_order_relaxed);
      if (v18 == v17)
      {
        goto LABEL_20;
      }
    }

    WTF::ThreadSafeWeakPtrControlBlock::strongRef(*a1);
LABEL_20:
    v19 = WTF::fastMalloc(0x18);
    *v19 = &unk_1F10F3708;
    *(v19 + 1) = v4;
    *(v19 + 2) = a1;
    v44 = v19;
    if (v36)
    {
      WebKit::WebCookieManager::setCookies(a3, v28, v29, &v30, &v33, &v44);
      result = v44;
      v44 = 0;
      if (result)
      {
        result = (*(*result + 8))(result);
      }

      break;
    }

LABEL_32:
    __break(1u);
LABEL_33:
    LOBYTE(v28) = 0;
    v36 = 0;
LABEL_34:
    v16 = *v4;
    v22 = *(v4 + 1);
    *v4 = 0;
    *(v4 + 1) = 0;
    result = *(v4 + 3);
    if (result)
    {
      v23 = v22 == 0;
    }

    else
    {
      v23 = 1;
    }

    if (!v23)
    {
      result = (*(*result + 16))(result, v16);
      if (v36)
      {
        continue;
      }
    }

    break;
  }

  if (v36 == 1)
  {
    v20 = v33;
    v33 = 0;
    if (v20 && atomic_fetch_add_explicit(v20, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v20, v16);
    }

    v21 = v30;
    v30 = 0;
    if (v21)
    {
      if (atomic_fetch_add_explicit(v21, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v21, v16);
      }
    }

    return WTF::Vector<WebCore::Cookie,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v29, v16);
  }

  return result;
}

uint64_t IPC::handleMessageAsync<Messages::WebCookieManager::GetAllCookies,IPC::Connection,WebKit::WebCookieManager,WebKit::WebCookieManager,void ()(PAL::SessionID,WTF::CompletionHandler<void ()(WTF::Vector<WebCore::Cookie,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&)> &&)>(atomic_ullong *a1, IPC::Decoder *a2, uint64_t a3)
{
  result = IPC::Decoder::decode<std::tuple<PAL::SessionID>>(a2);
  if (v7)
  {
    v8 = result;
    result = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(a2);
    if (v9)
    {
      v10 = result;
      while (1)
      {
        v11 = *a1;
        if ((*a1 & 1) == 0)
        {
          break;
        }

        v12 = *a1;
        atomic_compare_exchange_strong_explicit(a1, &v12, v11 + 2, memory_order_relaxed, memory_order_relaxed);
        if (v12 == v11)
        {
          goto LABEL_8;
        }
      }

      WTF::ThreadSafeWeakPtrControlBlock::strongRef(*a1);
LABEL_8:
      v13 = WTF::fastMalloc(0x18);
      *v13 = &unk_1F10F3730;
      v13[1] = v10;
      v13[2] = a1;
      v14 = v13;
      WebKit::WebCookieManager::getAllCookies(a3, v8, &v14);
      result = v14;
      v14 = 0;
      if (result)
      {
        return (*(*result + 8))(result);
      }
    }
  }

  return result;
}

WTF::StringImpl *IPC::handleMessageAsync<Messages::WebCookieManager::GetCookies,IPC::Connection,WebKit::WebCookieManager,WebKit::WebCookieManager,void ()(PAL::SessionID,WTF::URL const&,WTF::CompletionHandler<void ()(WTF::Vector<WebCore::Cookie,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&)> &&)>(atomic_ullong *a1, IPC::Decoder *a2, uint64_t a3)
{
  IPC::ArgumentCoder<std::tuple<PAL::SessionID,WTF::URL>,void>::decode<IPC::Decoder>(a2, &v14);
  if (v16 & 1) != 0 || ((v7 = *a2, v11 = *(a2 + 1), *a2 = 0, *(a2 + 1) = 0, (result = *(a2 + 3)) != 0) ? (v12 = v11 == 0) : (v12 = 1), !v12 && (result = (*(*result + 16))(result, v7), (v16)))
  {
    result = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(a2);
    if (v7)
    {
      v8 = result;
      while (1)
      {
        v9 = *a1;
        if ((*a1 & 1) == 0)
        {
          break;
        }

        v10 = *a1;
        atomic_compare_exchange_strong_explicit(a1, &v10, v9 + 2, memory_order_relaxed, memory_order_relaxed);
        if (v10 == v9)
        {
          goto LABEL_8;
        }
      }

      WTF::ThreadSafeWeakPtrControlBlock::strongRef(*a1);
LABEL_8:
      result = WTF::fastMalloc(0x18);
      *result = &unk_1F10F3758;
      *(result + 1) = v8;
      *(result + 2) = a1;
      v13 = result;
      if ((v16 & 1) == 0)
      {
        __break(1u);
        return result;
      }

      WebKit::WebCookieManager::getCookies(a3, v14, &v15, &v13);
      result = v13;
      v13 = 0;
      if (result)
      {
        result = (*(*result + 8))(result);
      }
    }
  }

  if (v16 == 1)
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

  return result;
}

void IPC::handleMessageAsync<Messages::WebCookieManager::DeleteCookie,IPC::Connection,WebKit::WebCookieManager,WebKit::WebCookieManager,void ()(PAL::SessionID,WebCore::Cookie const&,WTF::CompletionHandler<void ()(void)> &&)>(atomic_ullong *a1, IPC::Decoder *a2, uint64_t a3)
{
  v6 = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(a2);
  if ((v7 & 1) != 0 && (v8 = v6, IPC::Decoder::decode<WebCore::Cookie>(a2, &v30), v40 == 1))
  {
    v22 = v8;
    v24 = v32;
    v23[0] = v30;
    v23[1] = v31;
    v10 = v34;
    v25[0] = v33[0];
    *(v25 + 11) = *(v33 + 11);
    v30 = 0u;
    v31 = 0u;
    v32 = 0;
    v34 = 0u;
    v25[2] = v10;
    v25[3] = v35;
    v25[4] = v36;
    LODWORD(v35) = v35 & 0xFFFFFFFE;
    v26 = v37;
    v11 = v38;
    v37 = 0;
    v38 = 0;
    v27 = v11;
    v28 = v39;
    v29 = 1;
    WebCore::Cookie::~Cookie(&v30, v9);
  }

  else
  {
    LOBYTE(v22) = 0;
    v29 = 0;
    v13 = *a2;
    v19 = *(a2 + 1);
    *a2 = 0;
    *(a2 + 1) = 0;
    v20 = *(a2 + 3);
    if (v20)
    {
      v21 = v19 == 0;
    }

    else
    {
      v21 = 1;
    }

    if (v21)
    {
      goto LABEL_13;
    }

    (*(*v20 + 16))(v20, v13);
    if ((v29 & 1) == 0)
    {
      goto LABEL_13;
    }
  }

  v12 = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(a2);
  if (v13)
  {
    v14 = v12;
    while (1)
    {
      v15 = *a1;
      if ((*a1 & 1) == 0)
      {
        break;
      }

      v16 = *a1;
      atomic_compare_exchange_strong_explicit(a1, &v16, v15 + 2, memory_order_relaxed, memory_order_relaxed);
      if (v16 == v15)
      {
        goto LABEL_10;
      }
    }

    WTF::ThreadSafeWeakPtrControlBlock::strongRef(*a1);
LABEL_10:
    v17 = WTF::fastMalloc(0x18);
    *v17 = &unk_1F10F3780;
    v17[1] = v14;
    v17[2] = a1;
    *&v30 = v17;
    if ((v29 & 1) == 0)
    {
      __break(1u);
      return;
    }

    WebKit::WebCookieManager::deleteCookie(a3, v22, v23, &v30);
    v18 = v30;
    *&v30 = 0;
    if (v18)
    {
      (*(*v18 + 8))(v18);
    }
  }

LABEL_13:
  if (v29 == 1)
  {
    WebCore::Cookie::~Cookie(v23, v13);
  }
}

uint64_t IPC::handleMessageAsync<Messages::WebCookieManager::DeleteAllCookiesModifiedSince,IPC::Connection,WebKit::WebCookieManager,WebKit::WebCookieManager,void ()(PAL::SessionID,WTF::WallTime,WTF::CompletionHandler<void ()(void)> &&)>(atomic_ullong *a1, IPC::Decoder *a2, uint64_t a3)
{
  v6 = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(a2);
  if (v7 & 1) != 0 && (v8 = v6, IPC::Decoder::decode<WTF::Seconds>(a2), (v9))
  {
    result = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(a2);
    if (v11)
    {
      v12 = result;
      while (1)
      {
        v13 = *a1;
        if ((*a1 & 1) == 0)
        {
          break;
        }

        v14 = *a1;
        atomic_compare_exchange_strong_explicit(a1, &v14, v13 + 2, memory_order_relaxed, memory_order_relaxed);
        if (v14 == v13)
        {
          goto LABEL_16;
        }
      }

      WTF::ThreadSafeWeakPtrControlBlock::strongRef(*a1);
LABEL_16:
      v18 = WTF::fastMalloc(0x18);
      *v18 = &unk_1F10F37A8;
      v18[1] = v12;
      v18[2] = a1;
      v19 = v18;
      WebKit::WebCookieManager::deleteAllCookiesModifiedSince(a3, v8, &v19);
      result = v19;
      v19 = 0;
      if (result)
      {
        return (*(*result + 8))(result);
      }
    }
  }

  else
  {
    v15 = *(a2 + 1);
    *a2 = 0;
    *(a2 + 1) = 0;
    result = *(a2 + 3);
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
      v17 = *(*result + 16);

      return v17();
    }
  }

  return result;
}

uint64_t IPC::handleMessageAsync<Messages::WebCookieManager::SetHTTPCookieAcceptPolicy,IPC::Connection,WebKit::WebCookieManager,WebKit::WebCookieManager,void ()(PAL::SessionID,WebCore::HTTPCookieAcceptPolicy,WTF::CompletionHandler<void ()(void)> &&)>(atomic_ullong *a1, IPC::Decoder *a2, uint64_t a3)
{
  v6 = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(a2);
  if ((v7 & 1) != 0 && (v8 = v6, PartyWebsiteDataRemoval = IPC::Decoder::decode<WebCore::FirstPartyWebsiteDataRemovalMode>(a2), (PartyWebsiteDataRemoval & 0x100) != 0))
  {
    v14 = PartyWebsiteDataRemoval;
    result = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(a2);
    if (v15)
    {
      v16 = result;
      while (1)
      {
        v17 = *a1;
        if ((*a1 & 1) == 0)
        {
          break;
        }

        v18 = *a1;
        atomic_compare_exchange_strong_explicit(a1, &v18, v17 + 2, memory_order_relaxed, memory_order_relaxed);
        if (v18 == v17)
        {
          goto LABEL_16;
        }
      }

      WTF::ThreadSafeWeakPtrControlBlock::strongRef(*a1);
LABEL_16:
      v19 = WTF::fastMalloc(0x18);
      *v19 = &unk_1F10F37D0;
      v19[1] = v16;
      v19[2] = a1;
      v20 = v19;
      WebKit::WebCookieManager::setHTTPCookieAcceptPolicy(a3, v8, v14, &v20);
      result = v20;
      v20 = 0;
      if (result)
      {
        return (*(*result + 8))(result);
      }
    }
  }

  else
  {
    v10 = *(a2 + 1);
    *a2 = 0;
    *(a2 + 1) = 0;
    result = *(a2 + 3);
    if (result)
    {
      v12 = v10 == 0;
    }

    else
    {
      v12 = 1;
    }

    if (!v12)
    {
      v13 = *(*result + 16);

      return v13();
    }
  }

  return result;
}

uint64_t IPC::handleMessageAsync<Messages::WebCookieManager::GetHTTPCookieAcceptPolicy,IPC::Connection,WebKit::WebCookieManager,WebKit::WebCookieManager,void ()(PAL::SessionID,WTF::CompletionHandler<void ()(WebCore::HTTPCookieAcceptPolicy)> &&)>(atomic_ullong *a1, IPC::Decoder *a2, uint64_t a3)
{
  result = IPC::Decoder::decode<std::tuple<PAL::SessionID>>(a2);
  if (v7)
  {
    v8 = result;
    result = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(a2);
    if (v9)
    {
      v10 = result;
      while (1)
      {
        v11 = *a1;
        if ((*a1 & 1) == 0)
        {
          break;
        }

        v12 = *a1;
        atomic_compare_exchange_strong_explicit(a1, &v12, v11 + 2, memory_order_relaxed, memory_order_relaxed);
        if (v12 == v11)
        {
          goto LABEL_8;
        }
      }

      WTF::ThreadSafeWeakPtrControlBlock::strongRef(*a1);
LABEL_8:
      v13 = WTF::fastMalloc(0x18);
      *v13 = &unk_1F10F37F8;
      v13[1] = v10;
      v13[2] = a1;
      v14 = v13;
      WebKit::WebCookieManager::getHTTPCookieAcceptPolicy(a3, v8, &v14);
      result = v14;
      v14 = 0;
      if (result)
      {
        return (*(*result + 8))(result);
      }
    }
  }

  return result;
}

uint64_t WebKit::WebDeviceOrientationUpdateProvider::didReceiveMessage(WebKit::WebDeviceOrientationUpdateProvider *this, IPC::Connection *a2, IPC::Decoder *a3)
{
  v59 = *MEMORY[0x1E69E9840];
  ++*(this + 2);
  v5 = *(a3 + 25);
  if (v5 != 1862)
  {
    if (v5 == 1863)
    {
      v6 = IPC::Decoder::decode<unsigned long long>(a3);
      if (v7)
      {
        v8 = *&v6;
        v9 = IPC::Decoder::decode<unsigned long long>(a3);
        if (v10)
        {
          v11 = *&v9;
          v12 = IPC::Decoder::decode<unsigned long long>(a3);
          if (v13)
          {
            v14 = *&v12;
            v15 = IPC::Decoder::decode<unsigned long long>(a3);
            if (v16)
            {
              v17 = *&v15;
              v18 = IPC::Decoder::decode<unsigned long long>(a3);
              if (v19)
              {
                result = (*(*this + 48))(this, v8, v11, v14, v17, *&v18);
                goto LABEL_23;
              }
            }
          }
        }
      }
    }

    else
    {
      v41 = qword_1ED6416C8;
      if (os_log_type_enabled(qword_1ED6416C8, OS_LOG_TYPE_ERROR))
      {
        if (v5 >= 0x107F)
        {
          v42 = 4223;
        }

        else
        {
          v42 = v5;
        }

        v43 = (&IPC::Detail::messageDescriptions)[3 * v42];
        v44 = *(a3 + 7);
        *buf = 136315394;
        *&buf[4] = v43;
        *&buf[12] = 2048;
        *&buf[14] = v44;
        _os_log_error_impl(&dword_19D52D000, v41, OS_LOG_TYPE_ERROR, "Unhandled message %s to %llu", buf, 0x16u);
      }
    }

    goto LABEL_22;
  }

  v23 = IPC::Decoder::decode<unsigned long long>(a3);
  if ((v24 & 1) == 0 || (v25 = *&v23, v26 = IPC::Decoder::decode<unsigned long long>(a3), (v27 & 1) == 0) || (v28 = *&v26, v29 = IPC::Decoder::decode<unsigned long long>(a3), (v30 & 1) == 0) || (v31 = *&v29, v32 = IPC::Decoder::decode<unsigned long long>(a3), (v33 & 1) == 0) || (v34 = *&v32, v35 = IPC::Decoder::decode<unsigned long long>(a3), (v36 & 1) == 0) || (v37 = *&v35, v38 = IPC::Decoder::decode<unsigned long long>(a3), (v39 & 1) == 0) || (v40 = *&v38, IPC::ArgumentCoder<std::optional<double>,void>::decode<IPC::Decoder>(a3, v54), (v55 & 1) == 0) && ((v45 = *a3, v46 = *(a3 + 1), *a3 = 0, *(a3 + 1) = 0, (v47 = *(a3 + 3)) == 0) || !v46 || ((*(*v47 + 16))(v47, v45), (v55 & 1) == 0)) || (IPC::ArgumentCoder<std::optional<double>,void>::decode<IPC::Decoder>(a3, v56), (v57 & 1) == 0) && ((v48 = *a3, v49 = *(a3 + 1), *a3 = 0, *(a3 + 1) = 0, (v50 = *(a3 + 3)) == 0) || !v49 || ((*(*v50 + 16))(v50, v48), (v57 & 1) == 0)) || (IPC::ArgumentCoder<std::optional<double>,void>::decode<IPC::Decoder>(a3, buf), (buf[16] & 1) == 0) && ((v51 = *a3, v52 = *(a3 + 1), *a3 = 0, *(a3 + 1) = 0, (v53 = *(a3 + 3)) == 0) || !v52 || ((*(*v53 + 16))(v53, v51), (buf[16] & 1) == 0)))
  {
LABEL_22:
    v21 = *a3;
    v22 = *(a3 + 1);
    *a3 = 0;
    *(a3 + 1) = 0;
    result = *(a3 + 3);
    if (result && v22)
    {
      result = (*(*result + 16))(result, v21);
    }

    goto LABEL_23;
  }

  if ((v55 & 1) == 0 || (v57 & 1) == 0)
  {
    __break(1u);
  }

  result = (*(*this + 56))(this, v54[0], v54[1], v56[0], v56[1], *buf, *&buf[8], v25, v28, v31, v34, v37, v40);
LABEL_23:
  if (*(this + 2) == 1)
  {
    return (*(*this + 8))(this, v21, v22);
  }

  --*(this + 2);
  return result;
}

void WebKit::WebDeviceOrientationUpdateProviderProxy::didReceiveMessage(WebKit::WebDeviceOrientationUpdateProviderProxy *this, IPC::Connection *a2, IPC::Decoder *a3)
{
  v25 = *MEMORY[0x1E69E9840];
  WebKit::WebProcessProxy::fromConnection(a2, a2, v22);
  v5 = *(*v22 + 1104);
  WTF::ThreadSafeRefCounted<WebKit::AuxiliaryProcessProxy,(WTF::DestructionThread)2>::deref((*v22 + 16));
  if ((v5 & 0x400) != 0)
  {
    ++*(this + 8);
    v10 = *(a3 + 25);
    if (v10 > 0x743)
    {
      if (v10 == 1860)
      {
        WebKit::WebDeviceOrientationUpdateProviderProxy::stopUpdatingDeviceMotion(this);
        goto LABEL_29;
      }

      if (v10 == 1861)
      {
        WebKit::WebDeviceOrientationUpdateProviderProxy::stopUpdatingDeviceOrientation(this);
        goto LABEL_29;
      }
    }

    else
    {
      if (v10 == 1858)
      {
        IPC::Decoder::decode<std::tuple<WebCore::SecurityOriginData>>(a3, v22);
        if (v24 == 1)
        {
          WebKit::WebDeviceOrientationUpdateProviderProxy::startUpdatingDeviceMotion(this, v22);
          goto LABEL_20;
        }

LABEL_29:
        if (*(this + 8) == 1)
        {
          (*(*this + 8))(this, v11, v12);
        }

        else
        {
          --*(this + 8);
        }

        return;
      }

      if (v10 == 1859)
      {
        IPC::Decoder::decode<std::tuple<WebCore::SecurityOriginData>>(a3, v22);
        if (v24 == 1)
        {
          WebKit::WebDeviceOrientationUpdateProviderProxy::startUpdatingDeviceOrientation(this, v22);
LABEL_20:
          if ((v24 & 1) != 0 && !v23)
          {
            v15 = *&v22[8];
            *&v22[8] = 0;
            if (v15 && atomic_fetch_add_explicit(v15, 0xFFFFFFFE, memory_order_relaxed) == 2)
            {
              WTF::StringImpl::destroy(v15, v11);
            }

            v16 = *v22;
            *v22 = 0;
            if (v16 && atomic_fetch_add_explicit(v16, 0xFFFFFFFE, memory_order_relaxed) == 2)
            {
              WTF::StringImpl::destroy(v16, v11);
            }
          }

          goto LABEL_29;
        }

        goto LABEL_29;
      }
    }

    v13 = qword_1ED6416C8;
    if (os_log_type_enabled(qword_1ED6416C8, OS_LOG_TYPE_ERROR))
    {
      if (v10 >= 0x107F)
      {
        v19 = 4223;
      }

      else
      {
        v19 = v10;
      }

      v20 = (&IPC::Detail::messageDescriptions)[3 * v19];
      v21 = *(a3 + 7);
      *v22 = 136315394;
      *&v22[4] = v20;
      *&v22[12] = 2048;
      *&v22[14] = v21;
      _os_log_error_impl(&dword_19D52D000, v13, OS_LOG_TYPE_ERROR, "Unhandled message %s to %llu", v22, 0x16u);
    }

    v11 = *a3;
    v12 = *(a3 + 1);
    *a3 = 0;
    *(a3 + 1) = 0;
    v14 = *(a3 + 3);
    if (v14 && v12)
    {
      (*(*v14 + 16))(v14, v11);
    }

    goto LABEL_29;
  }

  v6 = qword_1ED6416C8;
  if (os_log_type_enabled(qword_1ED6416C8, OS_LOG_TYPE_ERROR))
  {
    v17 = *(a3 + 25);
    if (v17 >= 0x107F)
    {
      v17 = 4223;
    }

    v18 = (&IPC::Detail::messageDescriptions)[3 * v17];
    *v22 = 136315138;
    *&v22[4] = v18;
    _os_log_error_impl(&dword_19D52D000, v6, OS_LOG_TYPE_ERROR, "Message %s received by a disabled message receiver WebDeviceOrientationUpdateProviderProxy", v22, 0xCu);
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

void WebKit::WebExtensionContext::didReceiveMessage(CFTypeRef *this, atomic_ullong *a2, unsigned __int8 **a3)
{
  v1116 = *MEMORY[0x1E69E9840];
  CFRetain(this[1]);
  v10 = *(a3 + 25);
  v11 = buf;
  switch(*(a3 + 25))
  {
    case 0x76E:
      if (!WebKit::WebExtensionContext::isActionMessageAllowed(this, a3))
      {
        v668 = qword_1ED6416C8;
        if (!os_log_type_enabled(qword_1ED6416C8, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_1167;
        }

        v717 = *(a3 + 25);
        if (v717 >= 0x107F)
        {
          v717 = 4223;
        }

        v718 = (&IPC::Detail::messageDescriptions)[3 * v717];
        *buf = 136315138;
        *&buf[4] = v718;
        v366 = "Message %s fails validation";
        goto LABEL_1165;
      }

      IPC::Decoder::decode<std::tuple<std::optional<WTF::ObjectIdentifierGeneric<WebKit::WebExtensionWindowIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,std::optional<WTF::ObjectIdentifierGeneric<WebKit::WebExtensionTabIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>>(buf, a3);
      if (buf[32] == 1)
      {
        v12 = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(a3);
        if (v13)
        {
          v14 = v12;
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
              goto LABEL_1238;
            }
          }

          WTF::ThreadSafeWeakPtrControlBlock::strongRef(*a2);
LABEL_1238:
          v786 = WTF::fastMalloc(0x18);
          *v786 = &unk_1F10F3910;
          v786[1] = v14;
          v786[2] = a2;
          *&v1109 = v786;
          WebKit::WebExtensionContext::actionGetBadgeText(this, *buf, buf[8], *&buf[16], buf[24], &v1109);
          goto LABEL_1239;
        }
      }

      goto LABEL_1735;
    case 0x76F:
      if (!WebKit::WebExtensionContext::isActionMessageAllowed(this, a3))
      {
        v668 = qword_1ED6416C8;
        if (!os_log_type_enabled(qword_1ED6416C8, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_1167;
        }

        v719 = *(a3 + 25);
        if (v719 >= 0x107F)
        {
          v719 = 4223;
        }

        v720 = (&IPC::Detail::messageDescriptions)[3 * v719];
        *buf = 136315138;
        *&buf[4] = v720;
        v366 = "Message %s fails validation";
        goto LABEL_1165;
      }

      IPC::Decoder::decode<std::tuple<std::optional<WTF::ObjectIdentifierGeneric<WebKit::WebExtensionWindowIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,std::optional<WTF::ObjectIdentifierGeneric<WebKit::WebExtensionTabIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>>(buf, a3);
      if (buf[32] != 1)
      {
        goto LABEL_1735;
      }

      v338 = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(a3);
      if ((v339 & 1) == 0)
      {
        goto LABEL_1735;
      }

      v340 = v338;
      while (1)
      {
        v341 = *a2;
        if ((*a2 & 1) == 0)
        {
          break;
        }

        v342 = *a2;
        atomic_compare_exchange_strong_explicit(a2, &v342, v341 + 2, memory_order_relaxed, memory_order_relaxed);
        if (v342 == v341)
        {
          goto LABEL_1242;
        }
      }

      WTF::ThreadSafeWeakPtrControlBlock::strongRef(*a2);
LABEL_1242:
      v787 = WTF::fastMalloc(0x18);
      *v787 = &unk_1F10F3960;
      v787[1] = v340;
      v787[2] = a2;
      *&v1109 = v787;
      WebKit::WebExtensionContext::actionGetEnabled(this, *buf, buf[8], *&buf[16], buf[24], &v1109);
      v766 = v1109;
      *&v1109 = 0;
      if (!v766)
      {
        goto LABEL_1735;
      }

      goto LABEL_1734;
    case 0x770:
      if (!WebKit::WebExtensionContext::isActionMessageAllowed(this, a3))
      {
        v668 = qword_1ED6416C8;
        if (!os_log_type_enabled(qword_1ED6416C8, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_1167;
        }

        v708 = *(a3 + 25);
        if (v708 >= 0x107F)
        {
          v708 = 4223;
        }

        v709 = (&IPC::Detail::messageDescriptions)[3 * v708];
        *buf = 136315138;
        *&buf[4] = v709;
        v366 = "Message %s fails validation";
        goto LABEL_1165;
      }

      IPC::Decoder::decode<std::tuple<std::optional<WTF::ObjectIdentifierGeneric<WebKit::WebExtensionWindowIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,std::optional<WTF::ObjectIdentifierGeneric<WebKit::WebExtensionTabIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>>(buf, a3);
      if (buf[32] == 1)
      {
        v316 = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(a3);
        if (v317)
        {
          v318 = v316;
          while (1)
          {
            v319 = *a2;
            if ((*a2 & 1) == 0)
            {
              break;
            }

            v320 = *a2;
            atomic_compare_exchange_strong_explicit(a2, &v320, v319 + 2, memory_order_relaxed, memory_order_relaxed);
            if (v320 == v319)
            {
              goto LABEL_1228;
            }
          }

          WTF::ThreadSafeWeakPtrControlBlock::strongRef(*a2);
LABEL_1228:
          v782 = WTF::fastMalloc(0x18);
          *v782 = &unk_1F10F3898;
          v782[1] = v318;
          v782[2] = a2;
          *&v1109 = v782;
          WebKit::WebExtensionContext::actionGetPopup(this, *buf, buf[8], *&buf[16], buf[24], &v1109);
          goto LABEL_1239;
        }
      }

      goto LABEL_1735;
    case 0x771:
      if (!WebKit::WebExtensionContext::isActionMessageAllowed(this, a3))
      {
        v668 = qword_1ED6416C8;
        if (!os_log_type_enabled(qword_1ED6416C8, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_1167;
        }

        v713 = *(a3 + 25);
        if (v713 >= 0x107F)
        {
          v713 = 4223;
        }

        v714 = (&IPC::Detail::messageDescriptions)[3 * v713];
        *buf = 136315138;
        *&buf[4] = v714;
        v366 = "Message %s fails validation";
        goto LABEL_1165;
      }

      IPC::Decoder::decode<std::tuple<std::optional<WTF::ObjectIdentifierGeneric<WebKit::WebExtensionWindowIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,std::optional<WTF::ObjectIdentifierGeneric<WebKit::WebExtensionTabIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>>(buf, a3);
      if (buf[32] != 1)
      {
        goto LABEL_1735;
      }

      v329 = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(a3);
      if ((v330 & 1) == 0)
      {
        goto LABEL_1735;
      }

      v331 = v329;
      while (1)
      {
        v332 = *a2;
        if ((*a2 & 1) == 0)
        {
          break;
        }

        v333 = *a2;
        atomic_compare_exchange_strong_explicit(a2, &v333, v332 + 2, memory_order_relaxed, memory_order_relaxed);
        if (v333 == v332)
        {
          goto LABEL_1234;
        }
      }

      WTF::ThreadSafeWeakPtrControlBlock::strongRef(*a2);
LABEL_1234:
      v784 = WTF::fastMalloc(0x18);
      *v784 = &unk_1F10F3820;
      v784[1] = v331;
      v784[2] = a2;
      *&v1109 = v784;
      WebKit::WebExtensionContext::actionGetTitle(this, *buf, buf[8], *&buf[16], buf[24], &v1109);
LABEL_1239:
      v766 = v1109;
      *&v1109 = 0;
      if (!v766)
      {
        goto LABEL_1735;
      }

      goto LABEL_1734;
    case 0x772:
      if (!WebKit::WebExtensionContext::isActionMessageAllowed(this, a3))
      {
        v668 = qword_1ED6416C8;
        if (!os_log_type_enabled(qword_1ED6416C8, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_1167;
        }

        v696 = *(a3 + 25);
        if (v696 >= 0x107F)
        {
          v696 = 4223;
        }

        v697 = (&IPC::Detail::messageDescriptions)[3 * v696];
        *buf = 136315138;
        *&buf[4] = v697;
        v366 = "Message %s fails validation";
        goto LABEL_1165;
      }

      v261 = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(a3);
      if ((v262 & 1) == 0)
      {
        goto LABEL_1167;
      }

      v263 = v261;
      IPC::Decoder::decode<std::optional<WTF::ObjectIdentifierGeneric<WebKit::WebExtensionTabIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>(a3, &v1109);
      if ((v1110[0] & 1) == 0)
      {
        goto LABEL_1167;
      }

      IPC::Decoder::decode<std::optional<WTF::ObjectIdentifierGeneric<WebKit::WebExtensionTabIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>(a3, buf);
      if (buf[16] != 1)
      {
        goto LABEL_1167;
      }

      if ((v1110[0] & 1) == 0)
      {
        goto LABEL_1802;
      }

      v264 = v1109;
      v265 = BYTE8(v1109);
      v266 = *buf;
      v267 = buf[8];
      v268 = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(a3);
      if (v269)
      {
        v270 = v268;
        while (1)
        {
          v271 = *a2;
          if ((*a2 & 1) == 0)
          {
            break;
          }

          v272 = *a2;
          atomic_compare_exchange_strong_explicit(a2, &v272, v271 + 2, memory_order_relaxed, memory_order_relaxed);
          if (v272 == v271)
          {
            goto LABEL_1732;
          }
        }

        WTF::ThreadSafeWeakPtrControlBlock::strongRef(*a2);
LABEL_1732:
        v956 = WTF::fastMalloc(0x18);
        *v956 = &unk_1F10F38E8;
        v956[1] = v270;
        v956[2] = a2;
        *buf = v956;
        WebKit::WebExtensionContext::actionOpenPopup(this, v263, v264, v265, v266, v267, buf);
        goto LABEL_1733;
      }

      goto LABEL_1736;
    case 0x773:
      if (!WebKit::WebExtensionContext::isActionMessageAllowed(this, a3))
      {
        v668 = qword_1ED6416C8;
        if (!os_log_type_enabled(qword_1ED6416C8, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_1167;
        }

        v726 = *(a3 + 25);
        if (v726 >= 0x107F)
        {
          v726 = 4223;
        }

        v727 = (&IPC::Detail::messageDescriptions)[3 * v726];
        *buf = 136315138;
        *&buf[4] = v727;
        v366 = "Message %s fails validation";
        goto LABEL_1165;
      }

      IPC::Decoder::decode<std::tuple<std::optional<WTF::ObjectIdentifierGeneric<WebKit::WebExtensionWindowIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,std::optional<WTF::ObjectIdentifierGeneric<WebKit::WebExtensionTabIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::String>>(buf, a3);
      if (buf[40] != 1)
      {
        goto LABEL_1735;
      }

      v392 = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(a3);
      if (v220)
      {
        v393 = v392;
        while (1)
        {
          v394 = *a2;
          if ((*a2 & 1) == 0)
          {
            break;
          }

          v395 = *a2;
          atomic_compare_exchange_strong_explicit(a2, &v395, v394 + 2, memory_order_relaxed, memory_order_relaxed);
          if (v395 == v394)
          {
            goto LABEL_1262;
          }
        }

        WTF::ThreadSafeWeakPtrControlBlock::strongRef(*a2);
LABEL_1262:
        v794 = WTF::fastMalloc(0x18);
        *v794 = &unk_1F10F3938;
        v794[1] = v393;
        v794[2] = a2;
        *&v1109 = v794;
        WebKit::WebExtensionContext::actionSetBadgeText(this, *buf, buf[8], *&buf[16], buf[24], &buf[32], &v1109);
        goto LABEL_1268;
      }

      goto LABEL_1271;
    case 0x774:
      if (!WebKit::WebExtensionContext::isActionMessageAllowed(this, a3))
      {
        v668 = qword_1ED6416C8;
        if (!os_log_type_enabled(qword_1ED6416C8, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_1167;
        }

        v734 = *(a3 + 25);
        if (v734 >= 0x107F)
        {
          v734 = 4223;
        }

        v735 = (&IPC::Detail::messageDescriptions)[3 * v734];
        *buf = 136315138;
        *&buf[4] = v735;
        v366 = "Message %s fails validation";
        goto LABEL_1165;
      }

      IPC::Decoder::decode<std::optional<WTF::ObjectIdentifierGeneric<WebKit::WebExtensionTabIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>(a3, buf);
      if (buf[16] != 1)
      {
        goto LABEL_1167;
      }

      v430 = a3[1];
      v431 = a3[2];
      if (v430 <= v431 - *a3)
      {
        *a3 = 0;
        a3[1] = 0;
        v1071 = a3[3];
        if (v1071)
        {
          if (v430)
          {
            (*(*v1071 + 16))(v1071);
            v430 = a3[1];
          }
        }

        else
        {
          v430 = 0;
        }

LABEL_1929:
        *a3 = 0;
        a3[1] = 0;
        v1072 = a3[3];
        if (v1072)
        {
          if (v430)
          {
            (*(*v1072 + 16))(v1072);
            v430 = a3[1];
          }
        }

        else
        {
          v430 = 0;
        }
      }

      else
      {
        a3[2] = v431 + 1;
        if (!v431)
        {
          goto LABEL_1929;
        }

        v432 = *v431;
        if (v432 < 2)
        {
          v433 = *buf;
          v434 = buf[8];
          v435 = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(a3);
          if ((v436 & 1) == 0)
          {
            goto LABEL_1736;
          }

          v437 = v435;
          while (1)
          {
            v438 = *a2;
            if ((*a2 & 1) == 0)
            {
              break;
            }

            v439 = *a2;
            atomic_compare_exchange_strong_explicit(a2, &v439, v438 + 2, memory_order_relaxed, memory_order_relaxed);
            if (v439 == v438)
            {
              goto LABEL_1451;
            }
          }

          WTF::ThreadSafeWeakPtrControlBlock::strongRef(*a2);
LABEL_1451:
          v860 = WTF::fastMalloc(0x18);
          *v860 = &unk_1F10F3988;
          v860[1] = v437;
          v860[2] = a2;
          *buf = v860;
          WebKit::WebExtensionContext::actionSetEnabled(this, v433, v434, v432 & 1, buf);
          goto LABEL_1733;
        }
      }

LABEL_1931:
      *a3 = 0;
      a3[1] = 0;
      v1073 = a3[3];
      if (v1073 && v430)
      {
        (*(*v1073 + 16))(v1073);
      }

      goto LABEL_1167;
    case 0x775:
      if (!WebKit::WebExtensionContext::isActionMessageAllowed(this, a3))
      {
        v668 = qword_1ED6416C8;
        if (!os_log_type_enabled(qword_1ED6416C8, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_1167;
        }

        v715 = *(a3 + 25);
        if (v715 >= 0x107F)
        {
          v715 = 4223;
        }

        v716 = (&IPC::Detail::messageDescriptions)[3 * v715];
        *buf = 136315138;
        *&buf[4] = v716;
        v366 = "Message %s fails validation";
        goto LABEL_1165;
      }

      IPC::Decoder::decode<std::tuple<std::optional<WTF::ObjectIdentifierGeneric<WebKit::WebExtensionWindowIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,std::optional<WTF::ObjectIdentifierGeneric<WebKit::WebExtensionTabIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::String>>(buf, a3);
      if (buf[40] != 1)
      {
        goto LABEL_1735;
      }

      v334 = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(a3);
      if (v220)
      {
        v335 = v334;
        while (1)
        {
          v336 = *a2;
          if ((*a2 & 1) == 0)
          {
            break;
          }

          v337 = *a2;
          atomic_compare_exchange_strong_explicit(a2, &v337, v336 + 2, memory_order_relaxed, memory_order_relaxed);
          if (v337 == v336)
          {
            goto LABEL_1236;
          }
        }

        WTF::ThreadSafeWeakPtrControlBlock::strongRef(*a2);
LABEL_1236:
        v785 = WTF::fastMalloc(0x18);
        *v785 = &unk_1F10F3870;
        v785[1] = v335;
        v785[2] = a2;
        *&v1109 = v785;
        WebKit::WebExtensionContext::actionSetIcon(this, *buf, buf[8], *&buf[16], buf[24], &buf[32], &v1109);
        goto LABEL_1268;
      }

      goto LABEL_1271;
    case 0x776:
      if (!WebKit::WebExtensionContext::isActionMessageAllowed(this, a3))
      {
        v668 = qword_1ED6416C8;
        if (!os_log_type_enabled(qword_1ED6416C8, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_1167;
        }

        v738 = *(a3 + 25);
        if (v738 >= 0x107F)
        {
          v738 = 4223;
        }

        v739 = (&IPC::Detail::messageDescriptions)[3 * v738];
        *buf = 136315138;
        *&buf[4] = v739;
        v366 = "Message %s fails validation";
        goto LABEL_1165;
      }

      IPC::Decoder::decode<std::tuple<std::optional<WTF::ObjectIdentifierGeneric<WebKit::WebExtensionWindowIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,std::optional<WTF::ObjectIdentifierGeneric<WebKit::WebExtensionTabIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::String>>(buf, a3);
      if (buf[40] != 1)
      {
        goto LABEL_1735;
      }

      v452 = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(a3);
      if (v220)
      {
        v453 = v452;
        while (1)
        {
          v454 = *a2;
          if ((*a2 & 1) == 0)
          {
            break;
          }

          v455 = *a2;
          atomic_compare_exchange_strong_explicit(a2, &v455, v454 + 2, memory_order_relaxed, memory_order_relaxed);
          if (v455 == v454)
          {
            goto LABEL_1267;
          }
        }

        WTF::ThreadSafeWeakPtrControlBlock::strongRef(*a2);
LABEL_1267:
        v796 = WTF::fastMalloc(0x18);
        *v796 = &unk_1F10F38C0;
        v796[1] = v453;
        v796[2] = a2;
        *&v1109 = v796;
        WebKit::WebExtensionContext::actionSetPopup(this, *buf, buf[8], *&buf[16], buf[24], &buf[32], &v1109);
        goto LABEL_1268;
      }

      goto LABEL_1271;
    case 0x777:
      if (!WebKit::WebExtensionContext::isActionMessageAllowed(this, a3))
      {
        v668 = qword_1ED6416C8;
        if (!os_log_type_enabled(qword_1ED6416C8, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_1167;
        }

        v702 = *(a3 + 25);
        if (v702 >= 0x107F)
        {
          v702 = 4223;
        }

        v703 = (&IPC::Detail::messageDescriptions)[3 * v702];
        *buf = 136315138;
        *&buf[4] = v703;
        v366 = "Message %s fails validation";
        goto LABEL_1165;
      }

      IPC::Decoder::decode<std::tuple<std::optional<WTF::ObjectIdentifierGeneric<WebKit::WebExtensionWindowIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,std::optional<WTF::ObjectIdentifierGeneric<WebKit::WebExtensionTabIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::String>>(buf, a3);
      if (buf[40] != 1)
      {
        goto LABEL_1735;
      }

      v298 = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(a3);
      if ((v220 & 1) == 0)
      {
        goto LABEL_1271;
      }

      v299 = v298;
      while (1)
      {
        v300 = *a2;
        if ((*a2 & 1) == 0)
        {
          break;
        }

        v301 = *a2;
        atomic_compare_exchange_strong_explicit(a2, &v301, v300 + 2, memory_order_relaxed, memory_order_relaxed);
        if (v301 == v300)
        {
          goto LABEL_1226;
        }
      }

      WTF::ThreadSafeWeakPtrControlBlock::strongRef(*a2);
LABEL_1226:
      v781 = WTF::fastMalloc(0x18);
      *v781 = &unk_1F10F3848;
      v781[1] = v299;
      v781[2] = a2;
      *&v1109 = v781;
      WebKit::WebExtensionContext::actionSetTitle(this, *buf, buf[8], *&buf[16], buf[24], &buf[32], &v1109);
LABEL_1268:
      v797 = v1109;
      *&v1109 = 0;
      if (v797)
      {
        (*(*v797 + 8))(v797);
      }

      if ((buf[40] & 1) == 0)
      {
        goto LABEL_1735;
      }

LABEL_1271:
      v798 = *&buf[32];
      *&buf[32] = 0;
      if (v798)
      {
        goto LABEL_1533;
      }

      goto LABEL_1735;
    case 0x778:
      v445 = this[10];
      if (v445 && v445[1])
      {
        v446 = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(a3);
        if (v447)
        {
          v448 = v446;
          v449 = IPC::Decoder::decode<WebKit::WebExtensionEventListenerType>(a3);
          if (v449 >= 0x100u)
          {
            v450 = v449;
            v451 = IPC::Decoder::decode<WebKit::WebExtensionContentWorldType>(a3);
            if ((v451 & 0x100) != 0)
            {
              WebKit::WebExtensionContext::addListener(this, v448, v450, v451);
              goto LABEL_1736;
            }
          }
        }

        goto LABEL_1167;
      }

      v668 = qword_1ED6416C8;
      if (!os_log_type_enabled(qword_1ED6416C8, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_1167;
      }

      *buf = 136315138;
      *&buf[4] = "WebExtensionContext_AddListener";
      v366 = "Message %s fails validation";
      goto LABEL_1165;
    case 0x779:
      if (!WebKit::WebExtensionContext::isAlarmsMessageAllowed(this, a3))
      {
        v668 = qword_1ED6416C8;
        if (!os_log_type_enabled(qword_1ED6416C8, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_1167;
        }

        v694 = *(a3 + 25);
        if (v694 >= 0x107F)
        {
          v694 = 4223;
        }

        v695 = (&IPC::Detail::messageDescriptions)[3 * v694];
        *buf = 136315138;
        *&buf[4] = v695;
        v366 = "Message %s fails validation";
        goto LABEL_1165;
      }

      IPC::ArgumentCoder<std::tuple<WTF::String>,void>::decode<IPC::Decoder>(a3, buf);
      if ((buf[8] & 1) == 0)
      {
        v220 = *a3;
        v1003 = a3[1];
        *a3 = 0;
        a3[1] = 0;
        v1004 = a3[3];
        if (!v1004)
        {
          goto LABEL_1350;
        }

        if (!v1003)
        {
          goto LABEL_1350;
        }

        (*(*v1004 + 16))(v1004, v220);
        if ((buf[8] & 1) == 0)
        {
          goto LABEL_1350;
        }
      }

      v248 = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(a3);
      if ((v220 & 1) == 0)
      {
        goto LABEL_1350;
      }

      a3 = v248;
      while (1)
      {
        v249 = *a2;
        if ((*a2 & 1) == 0)
        {
          break;
        }

        v250 = *a2;
        atomic_compare_exchange_strong_explicit(a2, &v250, v249 + 2, memory_order_relaxed, memory_order_relaxed);
        if (v250 == v249)
        {
          goto LABEL_1347;
        }
      }

      WTF::ThreadSafeWeakPtrControlBlock::strongRef(*a2);
LABEL_1347:
      v824 = WTF::fastMalloc(0x18);
      *v824 = &unk_1F10F39D8;
      v824[1] = a3;
      v824[2] = a2;
      *&v1109 = v824;
      if ((buf[8] & 1) == 0)
      {
        goto LABEL_1802;
      }

      WebKit::WebExtensionContext::alarmsClear(this, buf, &v1109);
      v823 = v1109;
      *&v1109 = 0;
      if (v823)
      {
        goto LABEL_1349;
      }

      goto LABEL_1350;
    case 0x77A:
      if (!WebKit::WebExtensionContext::isAlarmsMessageAllowed(this, a3))
      {
        v668 = qword_1ED6416C8;
        if (!os_log_type_enabled(qword_1ED6416C8, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_1167;
        }

        v700 = *(a3 + 25);
        if (v700 >= 0x107F)
        {
          v700 = 4223;
        }

        v701 = (&IPC::Detail::messageDescriptions)[3 * v700];
        *buf = 136315138;
        *&buf[4] = v701;
        v366 = "Message %s fails validation";
        goto LABEL_1165;
      }

      v293 = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(a3);
      if ((v294 & 1) == 0)
      {
        goto LABEL_1736;
      }

      v295 = v293;
      while (1)
      {
        v296 = *a2;
        if ((*a2 & 1) == 0)
        {
          break;
        }

        v297 = *a2;
        atomic_compare_exchange_strong_explicit(a2, &v297, v296 + 2, memory_order_relaxed, memory_order_relaxed);
        if (v297 == v296)
        {
          goto LABEL_1188;
        }
      }

      WTF::ThreadSafeWeakPtrControlBlock::strongRef(*a2);
LABEL_1188:
      v767 = WTF::fastMalloc(0x18);
      *v767 = &unk_1F10F3A28;
      v767[1] = v295;
      v767[2] = a2;
      *buf = v767;
      WebKit::WebExtensionContext::alarmsClearAll(this, buf);
      v766 = *buf;
      *buf = 0;
      if (!v766)
      {
        goto LABEL_1735;
      }

      goto LABEL_1734;
    case 0x77B:
      if (!WebKit::WebExtensionContext::isAlarmsMessageAllowed(this, a3))
      {
        v668 = qword_1ED6416C8;
        if (!os_log_type_enabled(qword_1ED6416C8, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_1167;
        }

        v732 = *(a3 + 25);
        if (v732 >= 0x107F)
        {
          v732 = 4223;
        }

        v733 = (&IPC::Detail::messageDescriptions)[3 * v732];
        *buf = 136315138;
        *&buf[4] = v733;
        v366 = "Message %s fails validation";
        goto LABEL_1165;
      }

      IPC::ArgumentCoder<WTF::String,void>::decode<IPC::Decoder>(a3, &v1109);
      if (BYTE8(v1109) & 1) != 0 || (v1053 = *a3, v1054 = a3[1], *a3 = 0, a3[1] = 0, (v1055 = a3[3]) != 0) && v1054 && ((*(*v1055 + 16))(v1055, v1053), (BYTE8(v1109)))
      {
        v425 = IPC::Decoder::decode<WTF::Seconds>(a3);
        if (v426 & 1) != 0 && (a2 = v425, v427 = IPC::Decoder::decode<WTF::Seconds>(a3), (v426))
        {
          if ((BYTE8(v1109) & 1) == 0)
          {
            goto LABEL_1802;
          }

          v428 = v1109;
          *&v1109 = 0;
          *buf = v428;
          *&buf[8] = a2;
          *&buf[16] = v427;
          v6 = a2;
          v5 = *&v427;
          v429 = 1;
        }

        else
        {
          v429 = 0;
          buf[0] = 0;
        }

        buf[24] = v429;
        if (BYTE8(v1109))
        {
          v844 = v1109;
          *&v1109 = 0;
          if (v844)
          {
            if (atomic_fetch_add_explicit(v844, 0xFFFFFFFE, memory_order_relaxed) == 2)
            {
              WTF::StringImpl::destroy(v844, v426);
            }
          }
        }

        if (v429)
        {
          WebKit::WebExtensionContext::alarmsCreate(this, buf, *&v6, v5);
          goto LABEL_1430;
        }
      }

      goto LABEL_1167;
    case 0x77C:
      if (WebKit::WebExtensionContext::isAlarmsMessageAllowed(this, a3))
      {
        IPC::ArgumentCoder<std::tuple<WTF::String>,void>::decode<IPC::Decoder>(a3, buf);
        if ((buf[8] & 1) == 0)
        {
          goto LABEL_1803;
        }

        goto LABEL_268;
      }

      v668 = qword_1ED6416C8;
      if (!os_log_type_enabled(qword_1ED6416C8, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_1167;
      }

      v689 = *(a3 + 25);
      if (v689 >= 0x107F)
      {
        v689 = 4223;
      }

      v690 = (&IPC::Detail::messageDescriptions)[3 * v689];
      *buf = 136315138;
      *&buf[4] = v690;
      v366 = "Message %s fails validation";
      goto LABEL_1165;
    case 0x77D:
      if (!WebKit::WebExtensionContext::isAlarmsMessageAllowed(this, a3))
      {
        v668 = qword_1ED6416C8;
        if (!os_log_type_enabled(qword_1ED6416C8, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_1167;
        }

        v710 = *(a3 + 25);
        if (v710 >= 0x107F)
        {
          v710 = 4223;
        }

        v711 = (&IPC::Detail::messageDescriptions)[3 * v710];
        *buf = 136315138;
        *&buf[4] = v711;
        v366 = "Message %s fails validation";
        goto LABEL_1165;
      }

      v321 = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(a3);
      if ((v322 & 1) == 0)
      {
        goto LABEL_1736;
      }

      v323 = v321;
      while (1)
      {
        v324 = *a2;
        if ((*a2 & 1) == 0)
        {
          break;
        }

        v325 = *a2;
        atomic_compare_exchange_strong_explicit(a2, &v325, v324 + 2, memory_order_relaxed, memory_order_relaxed);
        if (v325 == v324)
        {
          goto LABEL_1194;
        }
      }

      WTF::ThreadSafeWeakPtrControlBlock::strongRef(*a2);
LABEL_1194:
      v769 = WTF::fastMalloc(0x18);
      *v769 = &unk_1F10F3A00;
      v769[1] = v323;
      v769[2] = a2;
      *buf = v769;
      WebKit::WebExtensionContext::alarmsGetAll(this, buf);
      v766 = *buf;
      *buf = 0;
      if (!v766)
      {
        goto LABEL_1735;
      }

      goto LABEL_1734;
    case 0x77E:
      if (!WebKit::WebExtensionContext::isCommandsMessageAllowed(this, a3))
      {
        v668 = qword_1ED6416C8;
        if (!os_log_type_enabled(qword_1ED6416C8, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_1167;
        }

        v687 = *(a3 + 25);
        if (v687 >= 0x107F)
        {
          v687 = 4223;
        }

        v688 = (&IPC::Detail::messageDescriptions)[3 * v687];
        *buf = 136315138;
        *&buf[4] = v688;
        v366 = "Message %s fails validation";
        goto LABEL_1165;
      }

      v194 = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(a3);
      if ((v195 & 1) == 0)
      {
        goto LABEL_1736;
      }

      v196 = v194;
      while (1)
      {
        v197 = *a2;
        if ((*a2 & 1) == 0)
        {
          break;
        }

        v198 = *a2;
        atomic_compare_exchange_strong_explicit(a2, &v198, v197 + 2, memory_order_relaxed, memory_order_relaxed);
        if (v198 == v197)
        {
          goto LABEL_1185;
        }
      }

      WTF::ThreadSafeWeakPtrControlBlock::strongRef(*a2);
LABEL_1185:
      v765 = WTF::fastMalloc(0x18);
      *v765 = &unk_1F10F3A50;
      v765[1] = v196;
      v765[2] = a2;
      *buf = v765;
      WebKit::WebExtensionContext::commandsGetAll(this, buf);
      v766 = *buf;
      *buf = 0;
      if (!v766)
      {
        goto LABEL_1735;
      }

      goto LABEL_1734;
    case 0x77F:
      if (!WebKit::WebExtensionContext::isCookiesMessageAllowed(this, a3))
      {
        v668 = qword_1ED6416C8;
        if (!os_log_type_enabled(qword_1ED6416C8, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_1167;
        }

        v721 = *(a3 + 25);
        if (v721 >= 0x107F)
        {
          v721 = 4223;
        }

        v722 = (&IPC::Detail::messageDescriptions)[3 * v721];
        *buf = 136315138;
        *&buf[4] = v722;
        v366 = "Message %s fails validation";
        goto LABEL_1165;
      }

      IPC::Decoder::decode<std::tuple<std::optional<PAL::SessionID>,WTF::String,WTF::URL>>(buf, a3);
      if (buf[64] != 1)
      {
        goto LABEL_1252;
      }

      v359 = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(a3);
      if ((v220 & 1) == 0)
      {
        goto LABEL_1252;
      }

      a3 = v359;
      while (1)
      {
        v360 = *a2;
        if ((*a2 & 1) == 0)
        {
          break;
        }

        v361 = *a2;
        atomic_compare_exchange_strong_explicit(a2, &v361, v360 + 2, memory_order_relaxed, memory_order_relaxed);
        if (v361 == v360)
        {
          goto LABEL_1245;
        }
      }

      WTF::ThreadSafeWeakPtrControlBlock::strongRef(*a2);
LABEL_1245:
      v788 = WTF::fastMalloc(0x18);
      *v788 = &unk_1F10F3A78;
      v788[1] = a3;
      v788[2] = a2;
      *&v1109 = v788;
      if ((buf[64] & 1) == 0)
      {
        goto LABEL_1802;
      }

      WebKit::WebExtensionContext::cookiesGet(this, *buf, buf[8], &buf[16], &buf[24], &v1109);
      goto LABEL_1250;
    case 0x780:
      if (!WebKit::WebExtensionContext::isCookiesMessageAllowed(this, a3))
      {
        v668 = qword_1ED6416C8;
        if (!os_log_type_enabled(qword_1ED6416C8, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_1167;
        }

        v736 = *(a3 + 25);
        if (v736 >= 0x107F)
        {
          v736 = 4223;
        }

        v737 = (&IPC::Detail::messageDescriptions)[3 * v736];
        *buf = 136315138;
        *&buf[4] = v737;
        v366 = "Message %s fails validation";
        goto LABEL_1165;
      }

      IPC::Decoder::decode<std::optional<PAL::SessionID>>(v1090, a3);
      if ((v1091 & 1) == 0)
      {
        goto LABEL_1880;
      }

      IPC::ArgumentCoder<WTF::URL,void>::decode(a3, v1107);
      if ((v1107[40] & 1) == 0)
      {
        v1042 = *a3;
        v1043 = a3[1];
        *a3 = 0;
        a3[1] = 0;
        v1044 = a3[3];
        if (!v1044)
        {
          goto LABEL_1880;
        }

        if (!v1043)
        {
          goto LABEL_1880;
        }

        (*(*v1044 + 16))(v1044, v1042);
        if ((v1107[40] & 1) == 0)
        {
          goto LABEL_1880;
        }
      }

      IPC::ArgumentCoder<WebKit::WebExtensionCookieFilterParameters,void>::decode(a3, &v1109);
      if (v1110[40] & 1) != 0 || (v440 = *a3, v1022 = a3[1], *a3 = 0, a3[1] = 0, (v1023 = a3[3]) != 0) && v1022 && ((*(*v1023 + 16))(v1023, v440), (v1110[40]))
      {
        if ((v1091 & 1) == 0 || (v1107[40] & 1) == 0)
        {
          goto LABEL_1802;
        }

        *buf = *v1090;
        v441 = *v1107;
        *v1107 = 0;
        *&buf[16] = v441;
        *&buf[24] = *&v1107[8];
        *&buf[40] = *&v1107[24];
        *&v1107[8] &= ~1u;
        buf[56] = 0;
        buf[64] = 0;
        if (BYTE8(v1109) == 1)
        {
          v442 = v1109;
          *&v1109 = 0;
          *&buf[56] = v442;
          buf[64] = 1;
        }

        buf[72] = 0;
        buf[80] = 0;
        if (v1110[8] == 1)
        {
          v443 = *v1110;
          *v1110 = 0;
          *&buf[72] = v443;
          buf[80] = 1;
        }

        buf[88] = 0;
        buf[96] = 0;
        if (v1110[24])
        {
          *&buf[88] = *&v1110[16];
          buf[96] = 1;
          v444 = *&v1110[32];
          *&v1110[16] = 0;
        }

        else
        {
          v444 = *&v1110[32];
        }

        LODWORD(v1093) = v444;
        BYTE8(v1093) = 1;
        if (v1110[8])
        {
          v876 = *v1110;
          *v1110 = 0;
          if (v876)
          {
            if (atomic_fetch_add_explicit(v876, 0xFFFFFFFE, memory_order_relaxed) == 2)
            {
              WTF::StringImpl::destroy(v876, v440);
            }
          }
        }

        if (BYTE8(v1109) == 1)
        {
          v877 = v1109;
          *&v1109 = 0;
          if (v877)
          {
            if (atomic_fetch_add_explicit(v877, 0xFFFFFFFE, memory_order_relaxed) == 2)
            {
              WTF::StringImpl::destroy(v877, v440);
            }
          }
        }

        v878 = 1;
      }

      else
      {
        v878 = 0;
        buf[0] = 0;
        BYTE8(v1093) = 0;
      }

      if (v1107[40])
      {
        v879 = *v1107;
        *v1107 = 0;
        if (v879)
        {
          if (atomic_fetch_add_explicit(v879, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v879, v440);
          }
        }
      }

      if ((v878 & 1) == 0)
      {
        goto LABEL_1880;
      }

      v880 = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(a3);
      if ((v220 & 1) == 0)
      {
        goto LABEL_1520;
      }

      v881 = v880;
      while (1)
      {
        v882 = *a2;
        if ((*a2 & 1) == 0)
        {
          break;
        }

        v883 = *a2;
        atomic_compare_exchange_strong_explicit(a2, &v883, v882 + 2, memory_order_relaxed, memory_order_relaxed);
        if (v883 == v882)
        {
          goto LABEL_1517;
        }
      }

      WTF::ThreadSafeWeakPtrControlBlock::strongRef(*a2);
LABEL_1517:
      v884 = WTF::fastMalloc(0x18);
      *v884 = &unk_1F10F3AA0;
      v884[1] = v881;
      v884[2] = a2;
      *&v1109 = v884;
      WebKit::WebExtensionContext::cookiesGetAll(this, *buf, buf[8], &buf[16], &buf[56], &v1109);
      v885 = v1109;
      *&v1109 = 0;
      if (v885)
      {
        (*(*v885 + 8))(v885);
      }

      if ((BYTE8(v1093) & 1) == 0)
      {
        goto LABEL_1735;
      }

LABEL_1520:
      if (buf[96] == 1)
      {
        v886 = *&buf[88];
        *&buf[88] = 0;
        if (v886)
        {
          if (atomic_fetch_add_explicit(v886, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v886, v220);
          }
        }
      }

      if (buf[80] == 1)
      {
        v887 = *&buf[72];
        *&buf[72] = 0;
        if (v887)
        {
          if (atomic_fetch_add_explicit(v887, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v887, v220);
          }
        }
      }

      if (buf[64] != 1)
      {
        goto LABEL_1532;
      }

      v791 = *&buf[56];
      *&buf[56] = 0;
      if (!v791)
      {
        goto LABEL_1532;
      }

      goto LABEL_1530;
    case 0x781:
      if (!WebKit::WebExtensionContext::isCookiesMessageAllowed(this, a3))
      {
        v668 = qword_1ED6416C8;
        if (!os_log_type_enabled(qword_1ED6416C8, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_1167;
        }

        v747 = *(a3 + 25);
        if (v747 >= 0x107F)
        {
          v747 = 4223;
        }

        v748 = (&IPC::Detail::messageDescriptions)[3 * v747];
        *buf = 136315138;
        *&buf[4] = v748;
        v366 = "Message %s fails validation";
        goto LABEL_1165;
      }

      v499 = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(a3);
      if ((v500 & 1) == 0)
      {
        goto LABEL_1736;
      }

      v501 = v499;
      while (1)
      {
        v502 = *a2;
        if ((*a2 & 1) == 0)
        {
          break;
        }

        v503 = *a2;
        atomic_compare_exchange_strong_explicit(a2, &v503, v502 + 2, memory_order_relaxed, memory_order_relaxed);
        if (v503 == v502)
        {
          goto LABEL_1197;
        }
      }

      WTF::ThreadSafeWeakPtrControlBlock::strongRef(*a2);
LABEL_1197:
      v770 = WTF::fastMalloc(0x18);
      *v770 = &unk_1F10F3B18;
      v770[1] = v501;
      v770[2] = a2;
      *buf = v770;
      WebKit::WebExtensionContext::cookiesGetAllCookieStores(this, buf);
      v766 = *buf;
      *buf = 0;
      if (!v766)
      {
        goto LABEL_1735;
      }

      goto LABEL_1734;
    case 0x782:
      if (!WebKit::WebExtensionContext::isCookiesMessageAllowed(this, a3))
      {
        v668 = qword_1ED6416C8;
        if (!os_log_type_enabled(qword_1ED6416C8, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_1167;
        }

        v723 = *(a3 + 25);
        if (v723 >= 0x107F)
        {
          v723 = 4223;
        }

        v724 = (&IPC::Detail::messageDescriptions)[3 * v723];
        *buf = 136315138;
        *&buf[4] = v724;
        v366 = "Message %s fails validation";
        goto LABEL_1165;
      }

      IPC::Decoder::decode<std::tuple<std::optional<PAL::SessionID>,WTF::String,WTF::URL>>(buf, a3);
      if (buf[64] != 1)
      {
        goto LABEL_1252;
      }

      v386 = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(a3);
      if ((v220 & 1) == 0)
      {
        goto LABEL_1252;
      }

      a3 = v386;
      while (1)
      {
        v387 = *a2;
        if ((*a2 & 1) == 0)
        {
          break;
        }

        v388 = *a2;
        atomic_compare_exchange_strong_explicit(a2, &v388, v387 + 2, memory_order_relaxed, memory_order_relaxed);
        if (v388 == v387)
        {
          goto LABEL_1248;
        }
      }

      WTF::ThreadSafeWeakPtrControlBlock::strongRef(*a2);
LABEL_1248:
      v789 = WTF::fastMalloc(0x18);
      *v789 = &unk_1F10F3AF0;
      v789[1] = a3;
      v789[2] = a2;
      *&v1109 = v789;
      if ((buf[64] & 1) == 0)
      {
        goto LABEL_1802;
      }

      WebKit::WebExtensionContext::cookiesRemove(this, *buf, buf[8], &buf[16], &buf[24], &v1109);
LABEL_1250:
      v790 = v1109;
      *&v1109 = 0;
      if (v790)
      {
        (*(*v790 + 8))(v790);
      }

LABEL_1252:
      if (buf[64] == 1)
      {
        v791 = *&buf[24];
        *&buf[24] = 0;
        if (v791)
        {
LABEL_1530:
          if (atomic_fetch_add_explicit(v791, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v791, v220);
          }
        }

LABEL_1532:
        v798 = *&buf[16];
        *&buf[16] = 0;
        if (v798)
        {
          goto LABEL_1533;
        }
      }

      goto LABEL_1735;
    case 0x783:
      if (WebKit::WebExtensionContext::isCookiesMessageAllowed(this, a3))
      {
        IPC::Decoder::decode<std::optional<PAL::SessionID>>(v1107, a3);
        if (v1107[16] & 1) != 0 && ((IPC::ArgumentCoder<WebKit::WebExtensionCookieParameters,void>::decode(a3, &v1109), (v1111[16]) || (v1017 = *a3, v1018 = a3[1], *a3 = 0, a3[1] = 0, (v1019 = a3[3]) != 0) && v1018 && ((*(*v1019 + 16))(v1019, v1017), (v1111[16])))
        {
          if ((v1107[16] & 1) == 0)
          {
            goto LABEL_1802;
          }

          v416 = *v1110;
          *buf = *v1107;
          *&buf[16] = v1109;
          v417 = *&v1110[120];
          *&buf[64] = *&v1110[32];
          v418 = *&v1110[16];
          memset(v1110, 0, 40);
          *&buf[32] = v416;
          *&buf[48] = v418;
          *&buf[72] = *&v1110[40];
          *&buf[83] = *&v1110[51];
          v419 = *&v1110[72];
          *&v1110[72] = 0u;
          v1093 = v419;
          v1094 = *&v1110[88];
          v1095 = *&v1110[104];
          *&v1110[88] &= ~1u;
          *&v1110[120] = 0;
          *&v1096 = v417;
          v420 = *v1111;
          *v1111 = 0;
          *(&v1096 + 1) = v420;
          v1097[0] = v1111[8];
          v1097[8] = 1;
          WebCore::Cookie::~Cookie(v1110, v415);
        }

        else
        {
          buf[0] = 0;
          v1097[8] = 0;
          v422 = *a3;
          v1020 = a3[1];
          *a3 = 0;
          a3[1] = 0;
          v1021 = a3[3];
          if (!v1021)
          {
            goto LABEL_1336;
          }

          if (!v1020)
          {
            goto LABEL_1336;
          }

          (*(*v1021 + 16))(v1021, v422);
          if ((v1097[8] & 1) == 0)
          {
            goto LABEL_1336;
          }
        }

        v421 = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(a3);
        if (v422)
        {
          a3 = v421;
          while (1)
          {
            v423 = *a2;
            if ((*a2 & 1) == 0)
            {
              break;
            }

            v424 = *a2;
            atomic_compare_exchange_strong_explicit(a2, &v424, v423 + 2, memory_order_relaxed, memory_order_relaxed);
            if (v424 == v423)
            {
              goto LABEL_1333;
            }
          }

          WTF::ThreadSafeWeakPtrControlBlock::strongRef(*a2);
LABEL_1333:
          v818 = WTF::fastMalloc(0x18);
          *v818 = &unk_1F10F3AC8;
          v818[1] = a3;
          v818[2] = a2;
          *&v1109 = v818;
          if ((v1097[8] & 1) == 0)
          {
            goto LABEL_1802;
          }

          WebKit::WebExtensionContext::cookiesSet(this, *buf, buf[8], &buf[16], &v1109);
          v819 = v1109;
          *&v1109 = 0;
          if (v819)
          {
            (*(*v819 + 8))(v819);
          }
        }

LABEL_1336:
        if (v1097[8] == 1)
        {
          WebCore::Cookie::~Cookie(&buf[32], v422);
        }

        goto LABEL_1735;
      }

      v668 = qword_1ED6416C8;
      if (!os_log_type_enabled(qword_1ED6416C8, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_1167;
      }

      v730 = *(a3 + 25);
      if (v730 >= 0x107F)
      {
        v730 = 4223;
      }

      v731 = (&IPC::Detail::messageDescriptions)[3 * v730];
      *buf = 136315138;
      *&buf[4] = v731;
      v366 = "Message %s fails validation";
      goto LABEL_1165;
    case 0x784:
      if (!WebKit::WebExtensionContext::isDeclarativeNetRequestMessageAllowed(this, a3))
      {
        v668 = qword_1ED6416C8;
        if (!os_log_type_enabled(qword_1ED6416C8, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_1167;
        }

        v744 = *(a3 + 25);
        if (v744 >= 0x107F)
        {
          v744 = 4223;
        }

        v745 = (&IPC::Detail::messageDescriptions)[3 * v744];
        *buf = 136315138;
        *&buf[4] = v745;
        v366 = "Message %s fails validation";
        goto LABEL_1165;
      }

      v479 = IPC::Decoder::decode<std::tuple<BOOL>>(a3);
      if ((v479 & 0x100) != 0)
      {
        v480 = v479;
        v481 = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(a3);
        if (v482)
        {
          v483 = v481;
          while (1)
          {
            v484 = *a2;
            if ((*a2 & 1) == 0)
            {
              break;
            }

            v485 = *a2;
            atomic_compare_exchange_strong_explicit(a2, &v485, v484 + 2, memory_order_relaxed, memory_order_relaxed);
            if (v485 == v484)
            {
              goto LABEL_1276;
            }
          }

          WTF::ThreadSafeWeakPtrControlBlock::strongRef(*a2);
LABEL_1276:
          v800 = WTF::fastMalloc(0x18);
          *v800 = &unk_1F10F3B90;
          v800[1] = v483;
          v800[2] = a2;
          *buf = v800;
          WebKit::WebExtensionContext::declarativeNetRequestDisplayActionCountAsBadgeText(this, v480 & 1, buf);
          goto LABEL_1733;
        }
      }

      goto LABEL_1736;
    case 0x785:
      if (!WebKit::WebExtensionContext::isDeclarativeNetRequestMessageAllowed(this, a3))
      {
        v668 = qword_1ED6416C8;
        if (!os_log_type_enabled(qword_1ED6416C8, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_1167;
        }

        v751 = *(a3 + 25);
        if (v751 >= 0x107F)
        {
          v751 = 4223;
        }

        v752 = (&IPC::Detail::messageDescriptions)[3 * v751];
        *buf = 136315138;
        *&buf[4] = v752;
        v366 = "Message %s fails validation";
        goto LABEL_1165;
      }

      IPC::Decoder::decode<std::tuple<WTF::Vector<double,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>>(buf, a3);
      if (buf[16] != 1)
      {
        goto LABEL_1735;
      }

      v523 = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(a3);
      if (v524)
      {
        v525 = v523;
        while (1)
        {
          v526 = *a2;
          if ((*a2 & 1) == 0)
          {
            break;
          }

          v527 = *a2;
          atomic_compare_exchange_strong_explicit(a2, &v527, v526 + 2, memory_order_relaxed, memory_order_relaxed);
          if (v527 == v526)
          {
            goto LABEL_1291;
          }
        }

        WTF::ThreadSafeWeakPtrControlBlock::strongRef(*a2);
LABEL_1291:
        v804 = WTF::fastMalloc(0x18);
        *v804 = &unk_1F10F3C08;
        v804[1] = v525;
        v804[2] = a2;
        *&v1109 = v804;
        WebKit::WebExtensionContext::declarativeNetRequestGetDynamicRules(this, buf, &v1109);
        goto LABEL_1301;
      }

      goto LABEL_1304;
    case 0x786:
      if (!WebKit::WebExtensionContext::isDeclarativeNetRequestMessageAllowed(this, a3))
      {
        v668 = qword_1ED6416C8;
        if (!os_log_type_enabled(qword_1ED6416C8, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_1167;
        }

        v706 = *(a3 + 25);
        if (v706 >= 0x107F)
        {
          v706 = 4223;
        }

        v707 = (&IPC::Detail::messageDescriptions)[3 * v706];
        *buf = 136315138;
        *&buf[4] = v707;
        v366 = "Message %s fails validation";
        goto LABEL_1165;
      }

      v311 = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(a3);
      if ((v312 & 1) == 0)
      {
        goto LABEL_1736;
      }

      v313 = v311;
      while (1)
      {
        v314 = *a2;
        if ((*a2 & 1) == 0)
        {
          break;
        }

        v315 = *a2;
        atomic_compare_exchange_strong_explicit(a2, &v315, v314 + 2, memory_order_relaxed, memory_order_relaxed);
        if (v315 == v314)
        {
          goto LABEL_1191;
        }
      }

      WTF::ThreadSafeWeakPtrControlBlock::strongRef(*a2);
LABEL_1191:
      v768 = WTF::fastMalloc(0x18);
      *v768 = &unk_1F10F3B40;
      v768[1] = v313;
      v768[2] = a2;
      *buf = v768;
      WebKit::WebExtensionContext::declarativeNetRequestGetEnabledRulesets(this, buf);
      v766 = *buf;
      *buf = 0;
      if (!v766)
      {
        goto LABEL_1735;
      }

      goto LABEL_1734;
    case 0x787:
      if (!WebKit::WebExtensionContext::isDeclarativeNetRequestMessageAllowed(this, a3))
      {
        v668 = qword_1ED6416C8;
        if (!os_log_type_enabled(qword_1ED6416C8, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_1167;
        }

        v704 = *(a3 + 25);
        if (v704 >= 0x107F)
        {
          v704 = 4223;
        }

        v705 = (&IPC::Detail::messageDescriptions)[3 * v704];
        *buf = 136315138;
        *&buf[4] = v705;
        v366 = "Message %s fails validation";
        goto LABEL_1165;
      }

      IPC::Decoder::decode<std::optional<WTF::ObjectIdentifierGeneric<WebKit::WebExtensionTabIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>(a3, &v1109);
      if ((v1110[0] & 1) == 0)
      {
        goto LABEL_1167;
      }

      IPC::ArgumentCoder<std::optional<WTF::WallTime>,void>::decode<IPC::Decoder>(a3, buf);
      if ((buf[16] & 1) == 0)
      {
        v1028 = *a3;
        v1029 = a3[1];
        *a3 = 0;
        a3[1] = 0;
        v1030 = a3[3];
        if (!v1030)
        {
          goto LABEL_1167;
        }

        if (!v1029)
        {
          goto LABEL_1167;
        }

        (*(*v1030 + 16))(v1030, v1028);
        if ((buf[16] & 1) == 0)
        {
          goto LABEL_1167;
        }
      }

      if ((v1110[0] & 1) == 0)
      {
        goto LABEL_1802;
      }

      v302 = v1109;
      v303 = BYTE8(v1109);
      v304 = *buf;
      v305 = buf[8];
      v306 = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(a3);
      if ((v307 & 1) == 0)
      {
        goto LABEL_1736;
      }

      v308 = v306;
      while (1)
      {
        v309 = *a2;
        if ((*a2 & 1) == 0)
        {
          break;
        }

        v310 = *a2;
        atomic_compare_exchange_strong_explicit(a2, &v310, v309 + 2, memory_order_relaxed, memory_order_relaxed);
        if (v310 == v309)
        {
          goto LABEL_1453;
        }
      }

      WTF::ThreadSafeWeakPtrControlBlock::strongRef(*a2);
LABEL_1453:
      v861 = WTF::fastMalloc(0x18);
      *v861 = &unk_1F10F3BE0;
      v861[1] = v308;
      v861[2] = a2;
      *buf = v861;
      WebKit::WebExtensionContext::declarativeNetRequestGetMatchedRules(this, v302, v303, v304, v305, buf);
      v766 = *buf;
      *buf = 0;
      if (!v766)
      {
        goto LABEL_1735;
      }

      goto LABEL_1734;
    case 0x788:
      if (!WebKit::WebExtensionContext::isDeclarativeNetRequestMessageAllowed(this, a3))
      {
        v668 = qword_1ED6416C8;
        if (!os_log_type_enabled(qword_1ED6416C8, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_1167;
        }

        v757 = *(a3 + 25);
        if (v757 >= 0x107F)
        {
          v757 = 4223;
        }

        v758 = (&IPC::Detail::messageDescriptions)[3 * v757];
        *buf = 136315138;
        *&buf[4] = v758;
        v366 = "Message %s fails validation";
        goto LABEL_1165;
      }

      IPC::Decoder::decode<std::tuple<WTF::Vector<double,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>>(buf, a3);
      if (buf[16] != 1)
      {
        goto LABEL_1735;
      }

      v541 = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(a3);
      if ((v524 & 1) == 0)
      {
        goto LABEL_1304;
      }

      v542 = v541;
      while (1)
      {
        v543 = *a2;
        if ((*a2 & 1) == 0)
        {
          break;
        }

        v544 = *a2;
        atomic_compare_exchange_strong_explicit(a2, &v544, v543 + 2, memory_order_relaxed, memory_order_relaxed);
        if (v544 == v543)
        {
          goto LABEL_1300;
        }
      }

      WTF::ThreadSafeWeakPtrControlBlock::strongRef(*a2);
LABEL_1300:
      v808 = WTF::fastMalloc(0x18);
      *v808 = &unk_1F10F3C58;
      v808[1] = v542;
      v808[2] = a2;
      *&v1109 = v808;
      WebKit::WebExtensionContext::declarativeNetRequestGetSessionRules(this, buf, &v1109);
LABEL_1301:
      v809 = v1109;
      *&v1109 = 0;
      if (v809)
      {
        (*(*v809 + 8))(v809);
      }

      if ((buf[16] & 1) == 0)
      {
        goto LABEL_1735;
      }

LABEL_1304:
      v810 = *buf;
      if (*buf)
      {
        *buf = 0;
        *&buf[8] = 0;
        WTF::fastFree(v810, v524);
      }

      goto LABEL_1735;
    case 0x789:
      if (!WebKit::WebExtensionContext::isDeclarativeNetRequestMessageAllowed(this, a3))
      {
        v668 = qword_1ED6416C8;
        if (!os_log_type_enabled(qword_1ED6416C8, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_1167;
        }

        v683 = *(a3 + 25);
        if (v683 >= 0x107F)
        {
          v683 = 4223;
        }

        v684 = (&IPC::Detail::messageDescriptions)[3 * v683];
        *buf = 136315138;
        *&buf[4] = v684;
        v366 = "Message %s fails validation";
        goto LABEL_1165;
      }

      v178 = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::RemoteVideoFrameIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>(a3);
      if (v179)
      {
        v180 = v178;
        v181 = IPC::Decoder::decode<unsigned long long>(a3);
        if (v182)
        {
          v183 = *&v181;
          v184 = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(a3);
          if ((v185 & 1) == 0)
          {
            goto LABEL_1736;
          }

          v186 = v184;
          while (1)
          {
            v187 = *a2;
            if ((*a2 & 1) == 0)
            {
              break;
            }

            v188 = *a2;
            atomic_compare_exchange_strong_explicit(a2, &v188, v187 + 2, memory_order_relaxed, memory_order_relaxed);
            if (v188 == v187)
            {
              goto LABEL_1609;
            }
          }

          WTF::ThreadSafeWeakPtrControlBlock::strongRef(*a2);
LABEL_1609:
          v910 = WTF::fastMalloc(0x18);
          *v910 = &unk_1F10F3BB8;
          v910[1] = v186;
          v910[2] = a2;
          *buf = v910;
          WebKit::WebExtensionContext::declarativeNetRequestIncrementActionCount(this, v180, buf, v183);
          goto LABEL_1733;
        }
      }

      goto LABEL_1167;
    case 0x78A:
      if (!WebKit::WebExtensionContext::isDeclarativeNetRequestMessageAllowed(this, a3))
      {
        v668 = qword_1ED6416C8;
        if (!os_log_type_enabled(qword_1ED6416C8, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_1167;
        }

        v753 = *(a3 + 25);
        if (v753 >= 0x107F)
        {
          v753 = 4223;
        }

        v754 = (&IPC::Detail::messageDescriptions)[3 * v753];
        *buf = 136315138;
        *&buf[4] = v754;
        v366 = "Message %s fails validation";
        goto LABEL_1165;
      }

      IPC::Decoder::decode<std::tuple<WTF::String,WTF::Vector<double,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>>(buf, a3);
      if (buf[24] != 1)
      {
        goto LABEL_1735;
      }

      v528 = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(a3);
      if (v220)
      {
        v529 = v528;
        while (1)
        {
          v530 = *a2;
          if ((*a2 & 1) == 0)
          {
            break;
          }

          v531 = *a2;
          atomic_compare_exchange_strong_explicit(a2, &v531, v530 + 2, memory_order_relaxed, memory_order_relaxed);
          if (v531 == v530)
          {
            goto LABEL_1293;
          }
        }

        WTF::ThreadSafeWeakPtrControlBlock::strongRef(*a2);
LABEL_1293:
        v805 = WTF::fastMalloc(0x18);
        *v805 = &unk_1F10F3C30;
        v805[1] = v529;
        v805[2] = a2;
        *&v1109 = v805;
        WebKit::WebExtensionContext::declarativeNetRequestUpdateDynamicRules(this, buf, &buf[8], &v1109);
        goto LABEL_1294;
      }

      goto LABEL_1297;
    case 0x78B:
      if (!WebKit::WebExtensionContext::isDeclarativeNetRequestMessageAllowed(this, a3))
      {
        v668 = qword_1ED6416C8;
        if (!os_log_type_enabled(qword_1ED6416C8, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_1167;
        }

        v755 = *(a3 + 25);
        if (v755 >= 0x107F)
        {
          v755 = 4223;
        }

        v756 = (&IPC::Detail::messageDescriptions)[3 * v755];
        *buf = 136315138;
        *&buf[4] = v756;
        v366 = "Message %s fails validation";
        goto LABEL_1165;
      }

      IPC::ArgumentCoder<std::tuple<WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,void>::decode<IPC::Decoder>(a3, buf);
      if ((buf[32] & 1) == 0)
      {
        v533 = *a3;
        v1015 = a3[1];
        *a3 = 0;
        a3[1] = 0;
        v1016 = a3[3];
        if (!v1016)
        {
          goto LABEL_1209;
        }

        if (!v1015)
        {
          goto LABEL_1209;
        }

        (*(*v1016 + 16))(v1016, v533);
        if ((buf[32] & 1) == 0)
        {
          goto LABEL_1209;
        }
      }

      v532 = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(a3);
      if ((v533 & 1) == 0)
      {
        goto LABEL_1209;
      }

      a3 = v532;
      while (1)
      {
        v534 = *a2;
        if ((*a2 & 1) == 0)
        {
          break;
        }

        v535 = *a2;
        atomic_compare_exchange_strong_explicit(a2, &v535, v534 + 2, memory_order_relaxed, memory_order_relaxed);
        if (v535 == v534)
        {
          goto LABEL_1206;
        }
      }

      WTF::ThreadSafeWeakPtrControlBlock::strongRef(*a2);
LABEL_1206:
      v773 = WTF::fastMalloc(0x18);
      *v773 = &unk_1F10F3B68;
      v773[1] = a3;
      v773[2] = a2;
      *&v1109 = v773;
      if ((buf[32] & 1) == 0)
      {
        goto LABEL_1802;
      }

      WebKit::WebExtensionContext::declarativeNetRequestUpdateEnabledRulesets(this, buf, &buf[16], &v1109);
      v774 = v1109;
      *&v1109 = 0;
      if (v774)
      {
        (*(*v774 + 8))(v774);
      }

LABEL_1209:
      if (buf[32] != 1)
      {
        goto LABEL_1735;
      }

      WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&buf[16], v533);
      goto LABEL_1285;
    case 0x78C:
      if (!WebKit::WebExtensionContext::isDeclarativeNetRequestMessageAllowed(this, a3))
      {
        v668 = qword_1ED6416C8;
        if (!os_log_type_enabled(qword_1ED6416C8, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_1167;
        }

        v740 = *(a3 + 25);
        if (v740 >= 0x107F)
        {
          v740 = 4223;
        }

        v741 = (&IPC::Detail::messageDescriptions)[3 * v740];
        *buf = 136315138;
        *&buf[4] = v741;
        v366 = "Message %s fails validation";
        goto LABEL_1165;
      }

      IPC::Decoder::decode<std::tuple<WTF::String,WTF::Vector<double,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>>(buf, a3);
      if (buf[24] != 1)
      {
        goto LABEL_1735;
      }

      v456 = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(a3);
      if ((v220 & 1) == 0)
      {
        goto LABEL_1297;
      }

      v457 = v456;
      while (1)
      {
        v458 = *a2;
        if ((*a2 & 1) == 0)
        {
          break;
        }

        v459 = *a2;
        atomic_compare_exchange_strong_explicit(a2, &v459, v458 + 2, memory_order_relaxed, memory_order_relaxed);
        if (v459 == v458)
        {
          goto LABEL_1274;
        }
      }

      WTF::ThreadSafeWeakPtrControlBlock::strongRef(*a2);
LABEL_1274:
      v799 = WTF::fastMalloc(0x18);
      *v799 = &unk_1F10F3C80;
      v799[1] = v457;
      v799[2] = a2;
      *&v1109 = v799;
      WebKit::WebExtensionContext::declarativeNetRequestUpdateSessionRules(this, buf, &buf[8], &v1109);
LABEL_1294:
      v806 = v1109;
      *&v1109 = 0;
      if (v806)
      {
        (*(*v806 + 8))(v806);
      }

      if ((buf[24] & 1) == 0)
      {
        goto LABEL_1735;
      }

LABEL_1297:
      v807 = *&buf[8];
      if (*&buf[8])
      {
        *&buf[8] = 0;
        *&buf[16] = 0;
        WTF::fastFree(v807, v220);
      }

      goto LABEL_1351;
    case 0x78D:
      v353 = this[10];
      if (!v353 || !v353[1])
      {
        v668 = qword_1ED6416C8;
        if (!os_log_type_enabled(qword_1ED6416C8, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_1167;
        }

        *buf = 136315138;
        *&buf[4] = "WebExtensionContext_ExtensionIsAllowedIncognitoAccess";
        v366 = "Message %s fails validation";
        goto LABEL_1165;
      }

      v354 = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(a3);
      if ((v355 & 1) == 0)
      {
        goto LABEL_1736;
      }

      v356 = v354;
      while (1)
      {
        v357 = *a2;
        if ((*a2 & 1) == 0)
        {
          break;
        }

        v358 = *a2;
        atomic_compare_exchange_strong_explicit(a2, &v358, v357 + 2, memory_order_relaxed, memory_order_relaxed);
        if (v358 == v357)
        {
          goto LABEL_1357;
        }
      }

      WTF::ThreadSafeWeakPtrControlBlock::strongRef(*a2);
LABEL_1357:
      v827 = WTF::fastMalloc(0x18);
      *v827 = &unk_1F10F3CA8;
      v827[1] = v356;
      v827[2] = a2;
      *buf = v827;
      WebKit::WebExtensionContext::extensionIsAllowedIncognitoAccess(this, buf);
      v826 = *buf;
      *buf = 0;
      if (!v826)
      {
        goto LABEL_1736;
      }

      goto LABEL_1794;
    case 0x78E:
      if (WebKit::WebExtensionContext::isMenusMessageAllowed(this, a3))
      {
        IPC::Decoder::decode<WebKit::WebExtensionMenuItemParameters>(buf, a3);
        if (v1094 == 1)
        {
          std::__tuple_leaf<0ul,WebKit::WebExtensionMenuItemParameters,false>::__tuple_leaf[abi:sn200100]<WebKit::WebExtensionMenuItemParameters,0>(&v1109, buf);
          v1110[104] = 1;
          if (v1094 & 1) == 0 || (WebKit::WebExtensionMenuItemParameters::~WebExtensionMenuItemParameters(buf, v460), (v1110[104]))
          {
LABEL_598:
            v461 = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(a3);
            if (v462)
            {
              a3 = v461;
              while (1)
              {
                v463 = *a2;
                if ((*a2 & 1) == 0)
                {
                  break;
                }

                v464 = *a2;
                atomic_compare_exchange_strong_explicit(a2, &v464, v463 + 2, memory_order_relaxed, memory_order_relaxed);
                if (v464 == v463)
                {
                  goto LABEL_1200;
                }
              }

              WTF::ThreadSafeWeakPtrControlBlock::strongRef(*a2);
LABEL_1200:
              v771 = WTF::fastMalloc(0x18);
              *v771 = &unk_1F10F3CD0;
              v771[1] = a3;
              v771[2] = a2;
              *buf = v771;
              if ((v1110[104] & 1) == 0)
              {
                goto LABEL_1802;
              }

              WebKit::WebExtensionContext::menusCreate(this, &v1109, buf);
              v772 = *buf;
              *buf = 0;
              if (v772)
              {
                (*(*v772 + 8))(v772);
              }
            }

LABEL_1203:
            if (v1110[104] == 1)
            {
              WebKit::WebExtensionMenuItemParameters::~WebExtensionMenuItemParameters(&v1109, v462);
            }

            goto LABEL_1735;
          }
        }

        else
        {
          LOBYTE(v1109) = 0;
          v1110[104] = 0;
        }

        v462 = *a3;
        v1013 = a3[1];
        *a3 = 0;
        a3[1] = 0;
        v1014 = a3[3];
        if (!v1014)
        {
          goto LABEL_1203;
        }

        if (!v1013)
        {
          goto LABEL_1203;
        }

        (*(*v1014 + 16))(v1014, v462);
        if ((v1110[104] & 1) == 0)
        {
          goto LABEL_1203;
        }

        goto LABEL_598;
      }

      v668 = qword_1ED6416C8;
      if (!os_log_type_enabled(qword_1ED6416C8, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_1167;
      }

      v742 = *(a3 + 25);
      if (v742 >= 0x107F)
      {
        v742 = 4223;
      }

      v743 = (&IPC::Detail::messageDescriptions)[3 * v742];
      *buf = 136315138;
      *&buf[4] = v743;
      v366 = "Message %s fails validation";
LABEL_1165:
      v367 = v668;
      v368 = 12;
LABEL_1166:
      _os_log_error_impl(&dword_19D52D000, v367, OS_LOG_TYPE_ERROR, v366, buf, v368);
LABEL_1167:
      v636 = *a3;
      v759 = a3[1];
      *a3 = 0;
      a3[1] = 0;
      v638 = a3[3];
      if (!v638 || !v759)
      {
        goto LABEL_1736;
      }

      goto LABEL_1967;
    case 0x78F:
      if (!WebKit::WebExtensionContext::isMenusMessageAllowed(this, a3))
      {
        v668 = qword_1ED6416C8;
        if (!os_log_type_enabled(qword_1ED6416C8, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_1167;
        }

        v691 = *(a3 + 25);
        if (v691 >= 0x107F)
        {
          v691 = 4223;
        }

        v692 = (&IPC::Detail::messageDescriptions)[3 * v691];
        *buf = 136315138;
        *&buf[4] = v692;
        v366 = "Message %s fails validation";
        goto LABEL_1165;
      }

      IPC::ArgumentCoder<std::tuple<WTF::String>,void>::decode<IPC::Decoder>(a3, buf);
      if ((buf[8] & 1) == 0)
      {
        v220 = *a3;
        v1001 = a3[1];
        *a3 = 0;
        a3[1] = 0;
        v1002 = a3[3];
        if (!v1002)
        {
          goto LABEL_1350;
        }

        if (!v1001)
        {
          goto LABEL_1350;
        }

        (*(*v1002 + 16))(v1002, v220);
        if ((buf[8] & 1) == 0)
        {
          goto LABEL_1350;
        }
      }

      v223 = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(a3);
      if ((v220 & 1) == 0)
      {
        goto LABEL_1350;
      }

      a3 = v223;
      while (1)
      {
        v224 = *a2;
        if ((*a2 & 1) == 0)
        {
          break;
        }

        v225 = *a2;
        atomic_compare_exchange_strong_explicit(a2, &v225, v224 + 2, memory_order_relaxed, memory_order_relaxed);
        if (v225 == v224)
        {
          goto LABEL_1343;
        }
      }

      WTF::ThreadSafeWeakPtrControlBlock::strongRef(*a2);
LABEL_1343:
      v822 = WTF::fastMalloc(0x18);
      *v822 = &unk_1F10F3D20;
      v822[1] = a3;
      v822[2] = a2;
      *&v1109 = v822;
      if ((buf[8] & 1) == 0)
      {
        goto LABEL_1802;
      }

      WebKit::WebExtensionContext::menusRemove(this, buf, &v1109);
      v823 = v1109;
      *&v1109 = 0;
      if (v823)
      {
LABEL_1349:
        (*(*v823 + 8))(v823);
      }

LABEL_1350:
      if (buf[8] == 1)
      {
        goto LABEL_1351;
      }

      goto LABEL_1735;
    case 0x790:
      if (WebKit::WebExtensionContext::isMenusMessageAllowed(this, a3))
      {
        v189 = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(a3);
        if ((v190 & 1) == 0)
        {
          goto LABEL_1736;
        }

        v191 = v189;
        while (1)
        {
          v192 = *a2;
          if ((*a2 & 1) == 0)
          {
            break;
          }

          v193 = *a2;
          atomic_compare_exchange_strong_explicit(a2, &v193, v192 + 2, memory_order_relaxed, memory_order_relaxed);
          if (v193 == v192)
          {
            goto LABEL_1183;
          }
        }

        WTF::ThreadSafeWeakPtrControlBlock::strongRef(*a2);
LABEL_1183:
        v764 = WTF::fastMalloc(0x18);
        *v764 = &unk_1F10F3D48;
        v764[1] = v191;
        v764[2] = a2;
        *buf = v764;
        WebKit::WebExtensionContext::menusRemoveAll(this, buf);
        goto LABEL_1733;
      }

      v668 = qword_1ED6416C8;
      if (!os_log_type_enabled(qword_1ED6416C8, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_1167;
      }

      v685 = *(a3 + 25);
      if (v685 >= 0x107F)
      {
        v685 = 4223;
      }

      v686 = (&IPC::Detail::messageDescriptions)[3 * v685];
      *buf = 136315138;
      *&buf[4] = v686;
      v366 = "Message %s fails validation";
      goto LABEL_1165;
    case 0x791:
      if (!WebKit::WebExtensionContext::isMenusMessageAllowed(this, a3))
      {
        v668 = qword_1ED6416C8;
        if (!os_log_type_enabled(qword_1ED6416C8, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_1167;
        }

        v681 = *(a3 + 25);
        if (v681 >= 0x107F)
        {
          v681 = 4223;
        }

        v682 = (&IPC::Detail::messageDescriptions)[3 * v681];
        *buf = 136315138;
        *&buf[4] = v682;
        v366 = "Message %s fails validation";
        goto LABEL_1165;
      }

      IPC::ArgumentCoder<WTF::String,void>::decode<IPC::Decoder>(a3, v1107);
      if (v1107[8] & 1) != 0 || (v1048 = *a3, v1049 = a3[1], *a3 = 0, a3[1] = 0, (v1050 = a3[3]) != 0) && v1049 && ((*(*v1050 + 16))(v1050, v1048), (v1107[8]))
      {
        IPC::Decoder::decode<WebKit::WebExtensionMenuItemParameters>(&v1109, a3);
        v156 = v1110[104];
        if (v1110[104] == 1)
        {
          if ((v1107[8] & 1) == 0)
          {
            goto LABEL_1802;
          }

          v157 = *v1107;
          *v1107 = 0;
          v158 = v1109;
          *&v1109 = 0;
          *buf = v157;
          *&buf[8] = v158;
          buf[16] = 0;
          buf[24] = 0;
          if (v1110[0] == 1)
          {
            v159 = *(&v1109 + 1);
            *(&v1109 + 1) = 0;
            *&buf[16] = v159;
            buf[24] = 1;
          }

          *&buf[32] = *&v1110[8];
          v160 = *&v1110[16];
          memset(&v1110[16], 0, 24);
          *&buf[40] = v160;
          *&buf[56] = *&v1110[32];
          *&buf[64] = *&v1110[40];
          *&buf[68] = *&v1110[44];
          buf[72] = 0;
          buf[88] = 0;
          if (v1110[64] == 1)
          {
            v161 = *&v1110[48];
            *&v1110[48] = 0;
            *&buf[72] = v161;
            v162 = *&v1110[56];
            *&v1110[56] = 0;
            *&buf[80] = v162;
            buf[88] = 1;
          }

          buf[96] = 0;
          BYTE8(v1093) = 0;
          if (v1110[88] == 1)
          {
            v163 = *&v1110[72];
            *&v1110[72] = 0;
            *&buf[96] = v163;
            v164 = *&v1110[80];
            *&v1110[80] = 0;
            *&v1093 = v164;
            BYTE8(v1093) = 1;
          }

          LODWORD(v1094) = *&v1110[96];
          BYTE8(v1094) = 1;
          WebKit::WebExtensionMenuItemParameters::~WebExtensionMenuItemParameters(&v1109, v155);
        }

        else
        {
          buf[0] = 0;
          BYTE8(v1094) = 0;
        }

        if (v1107[8])
        {
          v853 = *v1107;
          *v1107 = 0;
          if (v853)
          {
            if (atomic_fetch_add_explicit(v853, 0xFFFFFFFE, memory_order_relaxed) == 2)
            {
              WTF::StringImpl::destroy(v853, v155);
            }
          }
        }

        if (v156)
        {
          goto LABEL_1439;
        }
      }

      else
      {
        buf[0] = 0;
        BYTE8(v1094) = 0;
      }

      v855 = *a3;
      v1051 = a3[1];
      *a3 = 0;
      a3[1] = 0;
      v1052 = a3[3];
      if (!v1052)
      {
        goto LABEL_1448;
      }

      if (!v1051)
      {
        goto LABEL_1448;
      }

      (*(*v1052 + 16))(v1052, v855);
      if ((BYTE8(v1094) & 1) == 0)
      {
        goto LABEL_1448;
      }

LABEL_1439:
      v854 = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(a3);
      if ((v855 & 1) == 0)
      {
        goto LABEL_1448;
      }

      a3 = v854;
      while (1)
      {
        v856 = *a2;
        if ((*a2 & 1) == 0)
        {
          break;
        }

        v857 = *a2;
        atomic_compare_exchange_strong_explicit(a2, &v857, v856 + 2, memory_order_relaxed, memory_order_relaxed);
        if (v857 == v856)
        {
          goto LABEL_1445;
        }
      }

      WTF::ThreadSafeWeakPtrControlBlock::strongRef(*a2);
LABEL_1445:
      v858 = WTF::fastMalloc(0x18);
      *v858 = &unk_1F10F3CF8;
      v858[1] = a3;
      v858[2] = a2;
      *&v1109 = v858;
      if ((BYTE8(v1094) & 1) == 0)
      {
        goto LABEL_1802;
      }

      WebKit::WebExtensionContext::menusUpdate(this, buf, &buf[8], &v1109);
      v859 = v1109;
      *&v1109 = 0;
      if (v859)
      {
        (*(*v859 + 8))(v859);
      }

LABEL_1448:
      if (BYTE8(v1094) != 1)
      {
        goto LABEL_1735;
      }

      WebKit::WebExtensionMenuItemParameters::~WebExtensionMenuItemParameters(&buf[8], v855);
LABEL_1351:
      v798 = *buf;
      *buf = 0;
      if (v798)
      {
LABEL_1533:
        if (atomic_fetch_add_explicit(v798, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
LABEL_1534:
          WTF::StringImpl::destroy(v798, v220);
        }
      }

      goto LABEL_1735;
    case 0x792:
      v165 = this[10];
      if (!v165 || !v165[1])
      {
        v668 = qword_1ED6416C8;
        if (!os_log_type_enabled(qword_1ED6416C8, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_1167;
        }

        *buf = 136315138;
        *&buf[4] = "WebExtensionContext_PermissionsContains";
        v366 = "Message %s fails validation";
        goto LABEL_1165;
      }

      IPC::Decoder::decode<std::tuple<WTF::HashSet<WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>,WTF::HashSet<WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>>>(buf, a3);
      if (buf[16] != 1)
      {
        goto LABEL_1736;
      }

      v166 = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(a3);
      if (v167)
      {
        v168 = v166;
        while (1)
        {
          v169 = *a2;
          if ((*a2 & 1) == 0)
          {
            break;
          }

          v170 = *a2;
          atomic_compare_exchange_strong_explicit(a2, &v170, v169 + 2, memory_order_relaxed, memory_order_relaxed);
          if (v170 == v169)
          {
            goto LABEL_1383;
          }
        }

        WTF::ThreadSafeWeakPtrControlBlock::strongRef(*a2);
LABEL_1383:
        v836 = WTF::fastMalloc(0x18);
        *v836 = &unk_1F10F3D98;
        v836[1] = v168;
        v836[2] = a2;
        *&v1109 = v836;
        v837 = WebKit::WebExtensionContext::permissionsContains;
        goto LABEL_1391;
      }

      goto LABEL_1394;
    case 0x793:
      v133 = this[10];
      if (!v133 || !v133[1])
      {
        v668 = qword_1ED6416C8;
        if (!os_log_type_enabled(qword_1ED6416C8, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_1167;
        }

        *buf = 136315138;
        *&buf[4] = "WebExtensionContext_PermissionsGetAll";
        v366 = "Message %s fails validation";
        goto LABEL_1165;
      }

      v134 = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(a3);
      if ((v135 & 1) == 0)
      {
        goto LABEL_1736;
      }

      v136 = v134;
      while (1)
      {
        v137 = *a2;
        if ((*a2 & 1) == 0)
        {
          break;
        }

        v138 = *a2;
        atomic_compare_exchange_strong_explicit(a2, &v138, v137 + 2, memory_order_relaxed, memory_order_relaxed);
        if (v138 == v137)
        {
          goto LABEL_1354;
        }
      }

      WTF::ThreadSafeWeakPtrControlBlock::strongRef(*a2);
LABEL_1354:
      v825 = WTF::fastMalloc(0x18);
      *v825 = &unk_1F10F3D70;
      v825[1] = v136;
      v825[2] = a2;
      *buf = v825;
      WebKit::WebExtensionContext::permissionsGetAll(this, buf);
      v826 = *buf;
      *buf = 0;
      if (!v826)
      {
        goto LABEL_1736;
      }

      goto LABEL_1794;
    case 0x794:
      v536 = this[10];
      if (v536 && v536[1])
      {
        IPC::Decoder::decode<std::tuple<WTF::HashSet<WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>,WTF::HashSet<WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>>>(buf, a3);
        if (buf[16] != 1)
        {
          goto LABEL_1736;
        }

        v537 = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(a3);
        if (v167)
        {
          v538 = v537;
          while (1)
          {
            v539 = *a2;
            if ((*a2 & 1) == 0)
            {
              break;
            }

            v540 = *a2;
            atomic_compare_exchange_strong_explicit(a2, &v540, v539 + 2, memory_order_relaxed, memory_order_relaxed);
            if (v540 == v539)
            {
              goto LABEL_1390;
            }
          }

          WTF::ThreadSafeWeakPtrControlBlock::strongRef(*a2);
LABEL_1390:
          v840 = WTF::fastMalloc(0x18);
          *v840 = &unk_1F10F3DE8;
          v840[1] = v538;
          v840[2] = a2;
          *&v1109 = v840;
          v837 = WebKit::WebExtensionContext::permissionsRemove;
          goto LABEL_1391;
        }

        goto LABEL_1394;
      }

      v676 = qword_1ED6416C8;
      if (os_log_type_enabled(qword_1ED6416C8, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315138;
        *&buf[4] = "WebExtensionContext_PermissionsRemove";
        _os_log_error_impl(&dword_19D52D000, v676, OS_LOG_TYPE_ERROR, "Message %s fails validation", buf, 0xCu);
      }

      v636 = *a3;
      v666 = a3[1];
      *a3 = 0;
      a3[1] = 0;
      v638 = a3[3];
      if (!v638)
      {
        goto LABEL_1736;
      }

      goto LABEL_1947;
    case 0x795:
      v494 = this[10];
      if (!v494 || !v494[1])
      {
        v668 = qword_1ED6416C8;
        if (!os_log_type_enabled(qword_1ED6416C8, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_1167;
        }

        *buf = 136315138;
        *&buf[4] = "WebExtensionContext_PermissionsRequest";
        v366 = "Message %s fails validation";
        goto LABEL_1165;
      }

      IPC::Decoder::decode<std::tuple<WTF::HashSet<WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>,WTF::HashSet<WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>>>(buf, a3);
      if (buf[16] != 1)
      {
        goto LABEL_1736;
      }

      v495 = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(a3);
      if ((v167 & 1) == 0)
      {
        goto LABEL_1394;
      }

      v496 = v495;
      while (1)
      {
        v497 = *a2;
        if ((*a2 & 1) == 0)
        {
          break;
        }

        v498 = *a2;
        atomic_compare_exchange_strong_explicit(a2, &v498, v497 + 2, memory_order_relaxed, memory_order_relaxed);
        if (v498 == v497)
        {
          goto LABEL_1388;
        }
      }

      WTF::ThreadSafeWeakPtrControlBlock::strongRef(*a2);
LABEL_1388:
      v839 = WTF::fastMalloc(0x18);
      *v839 = &unk_1F10F3DC0;
      v839[1] = v496;
      v839[2] = a2;
      *&v1109 = v839;
      v837 = WebKit::WebExtensionContext::permissionsRequest;
LABEL_1391:
      IPC::callMemberFunction<WebKit::WebExtensionContext,WebKit::WebExtensionContext,void ()(WTF::HashSet<WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>,WTF::HashSet<WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>,WTF::CompletionHandler<void ()(BOOL)> &&),std::tuple<WTF::HashSet<WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>,WTF::HashSet<WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>>,void ()(BOOL)>(this, v837, 0, buf, &v1109);
      v841 = v1109;
      *&v1109 = 0;
      if (v841)
      {
        (*(*v841 + 8))(v841);
      }

      if ((buf[16] & 1) == 0)
      {
        goto LABEL_1736;
      }

LABEL_1394:
      if (*&buf[8])
      {
        WTF::HashTable<WTF::String,WTF::String,WTF::IdentityExtractor,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::deallocateTable(*&buf[8], v167);
      }

      if (*buf)
      {
        WTF::HashTable<WTF::String,WTF::String,WTF::IdentityExtractor,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::deallocateTable(*buf, v167);
      }

      goto LABEL_1736;
    case 0x796:
      v273 = this[10];
      if (!v273 || !v273[1])
      {
        v673 = qword_1ED6416C8;
        if (os_log_type_enabled(qword_1ED6416C8, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315138;
          *&buf[4] = "WebExtensionContext_PortPostMessage";
          _os_log_error_impl(&dword_19D52D000, v673, OS_LOG_TYPE_ERROR, "Message %s fails validation", buf, 0xCu);
        }

        v636 = *a3;
        v666 = a3[1];
        *a3 = 0;
        a3[1] = 0;
        v638 = a3[3];
        if (!v638)
        {
          goto LABEL_1736;
        }

        goto LABEL_1947;
      }

      v274 = IPC::Decoder::decode<WebKit::WebExtensionContentWorldType>(a3);
      if ((v274 & 0x100) == 0)
      {
        goto LABEL_1167;
      }

      a2 = v274;
      v275 = IPC::Decoder::decode<WebKit::WebExtensionContentWorldType>(a3);
      if ((v275 & 0x100) == 0)
      {
        goto LABEL_1167;
      }

      v276 = v275;
      IPC::ArgumentCoder<std::optional<WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,void>::decode<IPC::Decoder>(a3, &v1109);
      if ((v1110[0] & 1) == 0)
      {
        v1005 = *a3;
        v1006 = a3[1];
        *a3 = 0;
        a3[1] = 0;
        v1007 = a3[3];
        if (!v1007)
        {
          goto LABEL_1167;
        }

        if (!v1006)
        {
          goto LABEL_1167;
        }

        (*(*v1007 + 16))(v1007, v1005);
        if ((v1110[0] & 1) == 0)
        {
          goto LABEL_1167;
        }
      }

      v277 = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::RemoteVideoFrameIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>(a3);
      if ((v278 & 1) == 0)
      {
        goto LABEL_1167;
      }

      v279 = v277;
      IPC::ArgumentCoder<WTF::String,void>::decode<IPC::Decoder>(a3, v1107);
      if ((v1107[8] & 1) == 0)
      {
        v1062 = *a3;
        v1063 = a3[1];
        *a3 = 0;
        a3[1] = 0;
        v1064 = a3[3];
        if (!v1064)
        {
          goto LABEL_1167;
        }

        if (!v1063)
        {
          goto LABEL_1167;
        }

        (*(*v1064 + 16))(v1064, v1062);
        if ((v1107[8] & 1) == 0)
        {
          goto LABEL_1167;
        }
      }

      if ((v1110[0] & 1) == 0)
      {
        goto LABEL_1802;
      }

      buf[0] = a2;
      buf[1] = v276;
      *&buf[8] = v1109;
      *&buf[24] = v279;
      *&buf[32] = *v1107;
      buf[40] = 1;
      WebKit::WebExtensionContext::portPostMessage(this, a2, v276, v1109, *(&v1109 + 1), v279, &buf[32]);
      if ((buf[40] & 1) == 0)
      {
        goto LABEL_1736;
      }

      goto LABEL_1687;
    case 0x797:
      v369 = this[10];
      if (v369 && v369[1])
      {
        v370 = IPC::Decoder::decode<WebKit::WebExtensionContentWorldType>(a3);
        if ((v370 & 0x100) != 0)
        {
          v371 = v370;
          v372 = IPC::Decoder::decode<WebKit::WebExtensionContentWorldType>(a3);
          if ((v372 & 0x100) != 0)
          {
            v373 = v372;
            v374 = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(a3);
            if (v375)
            {
              v376 = v374;
              v377 = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::RemoteVideoFrameIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>(a3);
              if (v378)
              {
                WebKit::WebExtensionContext::portRemoved(this, v371, v373, v376, v377);
                goto LABEL_1736;
              }
            }
          }
        }

        v636 = *a3;
        v666 = a3[1];
        *a3 = 0;
        a3[1] = 0;
        v638 = a3[3];
        if (!v638)
        {
          goto LABEL_1736;
        }
      }

      else
      {
        v674 = qword_1ED6416C8;
        if (os_log_type_enabled(qword_1ED6416C8, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315138;
          *&buf[4] = "WebExtensionContext_PortRemoved";
          _os_log_error_impl(&dword_19D52D000, v674, OS_LOG_TYPE_ERROR, "Message %s fails validation", buf, 0xCu);
        }

        v636 = *a3;
        v666 = a3[1];
        *a3 = 0;
        a3[1] = 0;
        v638 = a3[3];
        if (!v638)
        {
          goto LABEL_1736;
        }
      }

      goto LABEL_1947;
    case 0x798:
      v507 = this[10];
      if (!v507 || !v507[1])
      {
        v668 = qword_1ED6416C8;
        if (!os_log_type_enabled(qword_1ED6416C8, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_1167;
        }

        *buf = 136315138;
        *&buf[4] = "WebExtensionContext_RemoveListener";
        v366 = "Message %s fails validation";
        goto LABEL_1165;
      }

      v508 = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(a3);
      if ((v509 & 1) == 0)
      {
        goto LABEL_1167;
      }

      v510 = v508;
      v511 = IPC::Decoder::decode<WebKit::WebExtensionEventListenerType>(a3);
      if (v511 < 0x100u)
      {
        goto LABEL_1167;
      }

      v512 = v511;
      v513 = IPC::Decoder::decode<WebKit::WebExtensionContentWorldType>(a3);
      if ((v513 & 0x100) == 0)
      {
        goto LABEL_1167;
      }

      v430 = a3[1];
      v514 = ((a3[2] + 7) & 0xFFFFFFFFFFFFFFF8);
      v515 = (v514 - *a3);
      v516 = v430 >= v515;
      v517 = v430 - v515;
      if (!v516 || v517 <= 7)
      {
        goto LABEL_1929;
      }

      a3[2] = (v514 + 1);
      if (!v514)
      {
        goto LABEL_1931;
      }

      WebKit::WebExtensionContext::removeListener(this, v510, v512, v513, *v514);
      goto LABEL_1736;
    case 0x799:
      v97 = this[10];
      if (v97 && v97[1])
      {
        IPC::Decoder::decode<std::tuple<WTF::String,WTF::ObjectIdentifierGeneric<WebKit::WebExtensionPortChannelIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::String,WebKit::WebExtensionMessageSenderParameters>>(buf, a3);
        if (v1104 != 1)
        {
          goto LABEL_1380;
        }

        v98 = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(a3);
        if ((v89 & 1) == 0)
        {
          goto LABEL_1380;
        }

        a3 = v98;
        while (1)
        {
          v99 = *a2;
          if ((*a2 & 1) == 0)
          {
            break;
          }

          v100 = *a2;
          atomic_compare_exchange_strong_explicit(a2, &v100, v99 + 2, memory_order_relaxed, memory_order_relaxed);
          if (v100 == v99)
          {
            goto LABEL_1376;
          }
        }

        WTF::ThreadSafeWeakPtrControlBlock::strongRef(*a2);
LABEL_1376:
        v834 = WTF::fastMalloc(0x18);
        *v834 = &unk_1F10F3E88;
        v834[1] = a3;
        v834[2] = a2;
        *&v1109 = v834;
        if ((v1104 & 1) == 0)
        {
          goto LABEL_1802;
        }

        WebKit::WebExtensionContext::runtimeConnect(this, buf, *&buf[8], &buf[16], &buf[32], &v1109);
        goto LABEL_1378;
      }

      v667 = qword_1ED6416C8;
      if (os_log_type_enabled(qword_1ED6416C8, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315138;
        *&buf[4] = "WebExtensionContext_RuntimeConnect";
        _os_log_error_impl(&dword_19D52D000, v667, OS_LOG_TYPE_ERROR, "Message %s fails validation", buf, 0xCu);
      }

      v636 = *a3;
      v666 = a3[1];
      *a3 = 0;
      a3[1] = 0;
      v638 = a3[3];
      if (!v638)
      {
        goto LABEL_1736;
      }

      goto LABEL_1947;
    case 0x79A:
      v213 = this[10];
      if (!v213 || !v213[1])
      {
        v670 = qword_1ED6416C8;
        if (os_log_type_enabled(qword_1ED6416C8, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315138;
          *&buf[4] = "WebExtensionContext_RuntimeConnectNative";
          _os_log_error_impl(&dword_19D52D000, v670, OS_LOG_TYPE_ERROR, "Message %s fails validation", buf, 0xCu);
        }

        v636 = *a3;
        v666 = a3[1];
        *a3 = 0;
        a3[1] = 0;
        v638 = a3[3];
        if (!v638)
        {
          goto LABEL_1736;
        }

        goto LABEL_1947;
      }

      IPC::ArgumentCoder<WTF::String,void>::decode<IPC::Decoder>(a3, &v1109);
      if ((BYTE8(v1109) & 1) == 0)
      {
        v1059 = *a3;
        v1060 = a3[1];
        *a3 = 0;
        a3[1] = 0;
        v1061 = a3[3];
        if (!v1061)
        {
          goto LABEL_1167;
        }

        if (!v1060)
        {
          goto LABEL_1167;
        }

        (*(*v1061 + 16))(v1061, v1059);
        if ((BYTE8(v1109) & 1) == 0)
        {
          goto LABEL_1167;
        }
      }

      v215 = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::RemoteVideoFrameIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>(a3);
      if (v214 & 1) != 0 && (v216 = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(a3), (v214))
      {
        if ((BYTE8(v1109) & 1) == 0)
        {
          goto LABEL_1802;
        }

        v11 = v216;
        v217 = v1109;
        *&v1109 = 0;
        *buf = v217;
        *&buf[8] = v215;
        *&buf[16] = v216;
        v218 = 1;
      }

      else
      {
        v218 = 0;
        buf[0] = 0;
      }

      buf[24] = v218;
      if (BYTE8(v1109))
      {
        v845 = v1109;
        *&v1109 = 0;
        if (v845)
        {
          if (atomic_fetch_add_explicit(v845, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v845, v214);
          }
        }
      }

      if ((v218 & 1) == 0)
      {
        goto LABEL_1167;
      }

      v846 = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(a3);
      if ((v258 & 1) == 0)
      {
        goto LABEL_1431;
      }

      v847 = v846;
      while (1)
      {
        v848 = *a2;
        if ((*a2 & 1) == 0)
        {
          break;
        }

        v849 = *a2;
        atomic_compare_exchange_strong_explicit(a2, &v849, v848 + 2, memory_order_relaxed, memory_order_relaxed);
        if (v849 == v848)
        {
          goto LABEL_1428;
        }
      }

      WTF::ThreadSafeWeakPtrControlBlock::strongRef(*a2);
LABEL_1428:
      v850 = WTF::fastMalloc(0x18);
      *v850 = &unk_1F10F3ED8;
      v850[1] = v847;
      v850[2] = a2;
      *&v1109 = v850;
      WebKit::WebExtensionContext::runtimeConnectNative(this, buf, v215, v11, &v1109);
      v851 = v1109;
      *&v1109 = 0;
      if (v851)
      {
        (*(*v851 + 8))(v851);
      }

LABEL_1430:
      if ((buf[24] & 1) == 0)
      {
        goto LABEL_1736;
      }

LABEL_1431:
      v852 = *buf;
      *buf = 0;
      if (v852)
      {
LABEL_1727:
        if (atomic_fetch_add_explicit(v852, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v852, v258);
        }
      }

      goto LABEL_1736;
    case 0x79B:
      v465 = this[10];
      if (v465 && v465[1])
      {
        v466 = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(a3);
        if ((v467 & 1) == 0)
        {
          goto LABEL_1736;
        }

        v468 = v466;
        while (1)
        {
          v469 = *a2;
          if ((*a2 & 1) == 0)
          {
            break;
          }

          v470 = *a2;
          atomic_compare_exchange_strong_explicit(a2, &v470, v469 + 2, memory_order_relaxed, memory_order_relaxed);
          if (v470 == v469)
          {
            goto LABEL_1360;
          }
        }

        WTF::ThreadSafeWeakPtrControlBlock::strongRef(*a2);
LABEL_1360:
        v828 = WTF::fastMalloc(0x18);
        *v828 = &unk_1F10F3E10;
        v828[1] = v468;
        v828[2] = a2;
        *buf = v828;
        WebKit::WebExtensionContext::runtimeGetBackgroundPage(this, buf);
        v826 = *buf;
        *buf = 0;
        if (!v826)
        {
          goto LABEL_1736;
        }

        goto LABEL_1794;
      }

      v675 = qword_1ED6416C8;
      if (os_log_type_enabled(qword_1ED6416C8, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315138;
        *&buf[4] = "WebExtensionContext_RuntimeGetBackgroundPage";
        _os_log_error_impl(&dword_19D52D000, v675, OS_LOG_TYPE_ERROR, "Message %s fails validation", buf, 0xCu);
      }

      v636 = *a3;
      v666 = a3[1];
      *a3 = 0;
      a3[1] = 0;
      v638 = a3[3];
      if (!v638)
      {
        goto LABEL_1736;
      }

      goto LABEL_1947;
    case 0x79C:
      v566 = this[10];
      if (v566 && v566[1])
      {
        v567 = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(a3);
        if ((v568 & 1) == 0)
        {
          goto LABEL_1736;
        }

        v569 = v567;
        while (1)
        {
          v570 = *a2;
          if ((*a2 & 1) == 0)
          {
            break;
          }

          v571 = *a2;
          atomic_compare_exchange_strong_explicit(a2, &v571, v570 + 2, memory_order_relaxed, memory_order_relaxed);
          if (v571 == v570)
          {
            goto LABEL_1363;
          }
        }

        WTF::ThreadSafeWeakPtrControlBlock::strongRef(*a2);
LABEL_1363:
        v829 = WTF::fastMalloc(0x18);
        *v829 = &unk_1F10F3E38;
        v829[1] = v569;
        v829[2] = a2;
        *buf = v829;
        WebKit::WebExtensionContext::runtimeOpenOptionsPage(this, buf);
        goto LABEL_1793;
      }

      v677 = qword_1ED6416C8;
      if (os_log_type_enabled(qword_1ED6416C8, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315138;
        *&buf[4] = "WebExtensionContext_RuntimeOpenOptionsPage";
        _os_log_error_impl(&dword_19D52D000, v677, OS_LOG_TYPE_ERROR, "Message %s fails validation", buf, 0xCu);
      }

      v636 = *a3;
      v666 = a3[1];
      *a3 = 0;
      a3[1] = 0;
      v638 = a3[3];
      if (v638)
      {
        goto LABEL_1947;
      }

      goto LABEL_1736;
    case 0x79D:
      v143 = this[10];
      if (v143 && v143[1])
      {
        WebKit::WebExtensionContext::reload(this, 0);
        goto LABEL_1736;
      }

      v669 = qword_1ED6416C8;
      if (os_log_type_enabled(qword_1ED6416C8, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315138;
        *&buf[4] = "WebExtensionContext_RuntimeReload";
        _os_log_error_impl(&dword_19D52D000, v669, OS_LOG_TYPE_ERROR, "Message %s fails validation", buf, 0xCu);
      }

      v636 = *a3;
      v666 = a3[1];
      *a3 = 0;
      a3[1] = 0;
      v638 = a3[3];
      if (v638)
      {
        goto LABEL_1947;
      }

      goto LABEL_1736;
    case 0x79E:
      v226 = this[10];
      if (v226 && v226[1])
      {
        IPC::Decoder::decode<std::tuple<WTF::String,WTF::String,WebKit::WebExtensionMessageSenderParameters>>(buf, a3);
        if (v1102 != 1)
        {
          goto LABEL_1403;
        }

        v228 = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(a3);
        if ((v227 & 1) == 0)
        {
          goto LABEL_1403;
        }

        a3 = v228;
        while (1)
        {
          v229 = *a2;
          if ((*a2 & 1) == 0)
          {
            break;
          }

          v230 = *a2;
          atomic_compare_exchange_strong_explicit(a2, &v230, v229 + 2, memory_order_relaxed, memory_order_relaxed);
          if (v230 == v229)
          {
            goto LABEL_1385;
          }
        }

        WTF::ThreadSafeWeakPtrControlBlock::strongRef(*a2);
LABEL_1385:
        v838 = WTF::fastMalloc(0x18);
        *v838 = &unk_1F10F3E60;
        v838[1] = a3;
        v838[2] = a2;
        *&v1109 = v838;
        if ((v1102 & 1) == 0)
        {
          goto LABEL_1802;
        }

        WebKit::WebExtensionContext::runtimeSendMessage(this, buf, &buf[8], &buf[16], &v1109);
        goto LABEL_1401;
      }

      v671 = qword_1ED6416C8;
      if (os_log_type_enabled(qword_1ED6416C8, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315138;
        *&buf[4] = "WebExtensionContext_RuntimeSendMessage";
        _os_log_error_impl(&dword_19D52D000, v671, OS_LOG_TYPE_ERROR, "Message %s fails validation", buf, 0xCu);
      }

      v636 = *a3;
      v666 = a3[1];
      *a3 = 0;
      a3[1] = 0;
      v638 = a3[3];
      if (!v638)
      {
        goto LABEL_1736;
      }

      goto LABEL_1947;
    case 0x79F:
      v256 = this[10];
      if (v256 && v256[1])
      {
        IPC::ArgumentCoder<std::tuple<WTF::String,WTF::String>,void>::decode<IPC::Decoder>(a3, buf);
        if (buf[16] & 1) != 0 || (v258 = *a3, v1024 = a3[1], *a3 = 0, a3[1] = 0, (v1025 = a3[3]) != 0) && v1024 && ((*(*v1025 + 16))(v1025, v258), (buf[16]))
        {
          v257 = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(a3);
          if (v258)
          {
            a3 = v257;
            while (1)
            {
              v259 = *a2;
              if ((*a2 & 1) == 0)
              {
                break;
              }

              v260 = *a2;
              atomic_compare_exchange_strong_explicit(a2, &v260, v259 + 2, memory_order_relaxed, memory_order_relaxed);
              if (v260 == v259)
              {
                goto LABEL_1365;
              }
            }

            WTF::ThreadSafeWeakPtrControlBlock::strongRef(*a2);
LABEL_1365:
            v830 = WTF::fastMalloc(0x18);
            *v830 = &unk_1F10F3EB0;
            v830[1] = a3;
            v830[2] = a2;
            *&v1109 = v830;
            if ((buf[16] & 1) == 0)
            {
              goto LABEL_1802;
            }

            WebKit::WebExtensionContext::runtimeSendNativeMessage(this, buf, &buf[8], &v1109);
            v831 = v1109;
            *&v1109 = 0;
            if (v831)
            {
              (*(*v831 + 8))(v831);
            }
          }
        }

        if (buf[16] != 1)
        {
          goto LABEL_1736;
        }

        v832 = *&buf[8];
        *&buf[8] = 0;
        if (v832 && atomic_fetch_add_explicit(v832, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v832, v258);
        }

        goto LABEL_1431;
      }

      v672 = qword_1ED6416C8;
      if (os_log_type_enabled(qword_1ED6416C8, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315138;
        *&buf[4] = "WebExtensionContext_RuntimeSendNativeMessage";
        _os_log_error_impl(&dword_19D52D000, v672, OS_LOG_TYPE_ERROR, "Message %s fails validation", buf, 0xCu);
      }

      v636 = *a3;
      v666 = a3[1];
      *a3 = 0;
      a3[1] = 0;
      v638 = a3[3];
      if (!v638)
      {
        goto LABEL_1736;
      }

      goto LABEL_1947;
    case 0x7A0:
      v88 = this[10];
      if (v88 && v88[1])
      {
        IPC::Decoder::decode<std::tuple<WTF::String,WTF::ObjectIdentifierGeneric<WebKit::WebExtensionPortChannelIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::String,WebKit::WebExtensionMessageSenderParameters>>(buf, a3);
        if (v1104 == 1)
        {
          v90 = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(a3);
          if (v89)
          {
            a3 = v90;
            while (1)
            {
              v91 = *a2;
              if ((*a2 & 1) == 0)
              {
                break;
              }

              v92 = *a2;
              atomic_compare_exchange_strong_explicit(a2, &v92, v91 + 2, memory_order_relaxed, memory_order_relaxed);
              if (v92 == v91)
              {
                goto LABEL_1373;
              }
            }

            WTF::ThreadSafeWeakPtrControlBlock::strongRef(*a2);
LABEL_1373:
            v833 = WTF::fastMalloc(0x18);
            *v833 = &unk_1F10F3F28;
            v833[1] = a3;
            v833[2] = a2;
            *&v1109 = v833;
            if ((v1104 & 1) == 0)
            {
              goto LABEL_1802;
            }

            WebKit::WebExtensionContext::runtimeWebPageConnect(this, buf, *&buf[8], &buf[16], &buf[32], &v1109);
LABEL_1378:
            v835 = v1109;
            *&v1109 = 0;
            if (v835)
            {
              (*(*v835 + 8))(v835);
            }
          }
        }

LABEL_1380:
        if (v1104 == 1)
        {
          std::__tuple_impl<std::__tuple_indices<0ul,1ul,2ul,3ul>,WTF::String,WTF::ObjectIdentifierGeneric<WebKit::WebExtensionPortChannelIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::String,WebKit::WebExtensionMessageSenderParameters>::~__tuple_impl(buf, v89);
        }

        goto LABEL_1736;
      }

      v665 = qword_1ED6416C8;
      if (os_log_type_enabled(qword_1ED6416C8, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315138;
        *&buf[4] = "WebExtensionContext_RuntimeWebPageConnect";
        _os_log_error_impl(&dword_19D52D000, v665, OS_LOG_TYPE_ERROR, "Message %s fails validation", buf, 0xCu);
      }

      v636 = *a3;
      v666 = a3[1];
      *a3 = 0;
      a3[1] = 0;
      v638 = a3[3];
      if (v638)
      {
        goto LABEL_1947;
      }

      goto LABEL_1736;
    case 0x7A1:
      v600 = this[10];
      if (v600 && v600[1])
      {
        IPC::Decoder::decode<std::tuple<WTF::String,WTF::String,WebKit::WebExtensionMessageSenderParameters>>(buf, a3);
        if (v1102 == 1)
        {
          v601 = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(a3);
          if (v227)
          {
            a3 = v601;
            while (1)
            {
              v602 = *a2;
              if ((*a2 & 1) == 0)
              {
                break;
              }

              v603 = *a2;
              atomic_compare_exchange_strong_explicit(a2, &v603, v602 + 2, memory_order_relaxed, memory_order_relaxed);
              if (v603 == v602)
              {
                goto LABEL_1399;
              }
            }

            WTF::ThreadSafeWeakPtrControlBlock::strongRef(*a2);
LABEL_1399:
            v842 = WTF::fastMalloc(0x18);
            *v842 = &unk_1F10F3F00;
            v842[1] = a3;
            v842[2] = a2;
            *&v1109 = v842;
            if ((v1102 & 1) == 0)
            {
              goto LABEL_1802;
            }

            WebKit::WebExtensionContext::runtimeWebPageSendMessage(this, buf, &buf[8], &buf[16], &v1109);
LABEL_1401:
            v843 = v1109;
            *&v1109 = 0;
            if (v843)
            {
              (*(*v843 + 8))(v843);
            }
          }
        }

LABEL_1403:
        if (v1102 == 1)
        {
          std::__tuple_impl<std::__tuple_indices<0ul,1ul,2ul>,WTF::String,WTF::String,WebKit::WebExtensionMessageSenderParameters>::~__tuple_impl(buf, v227);
        }

        goto LABEL_1736;
      }

      v678 = qword_1ED6416C8;
      if (os_log_type_enabled(qword_1ED6416C8, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315138;
        *&buf[4] = "WebExtensionContext_RuntimeWebPageSendMessage";
        _os_log_error_impl(&dword_19D52D000, v678, OS_LOG_TYPE_ERROR, "Message %s fails validation", buf, 0xCu);
      }

      v636 = *a3;
      v666 = a3[1];
      *a3 = 0;
      a3[1] = 0;
      v638 = a3[3];
      if (v638)
      {
        goto LABEL_1947;
      }

      goto LABEL_1736;
    case 0x7A2:
      if (!WebKit::WebExtensionContext::isScriptingMessageAllowed(this, a3))
      {
        v762 = qword_1ED6416C8;
        if (os_log_type_enabled(qword_1ED6416C8, OS_LOG_TYPE_ERROR))
        {
          v986 = *(a3 + 25);
          if (v986 >= 0x107F)
          {
            v986 = 4223;
          }

          v987 = (&IPC::Detail::messageDescriptions)[3 * v986];
          *buf = 136315138;
          *&buf[4] = v987;
          _os_log_error_impl(&dword_19D52D000, v762, OS_LOG_TYPE_ERROR, "Message %s fails validation", buf, 0xCu);
        }

        v636 = *a3;
        v666 = a3[1];
        *a3 = 0;
        a3[1] = 0;
        v638 = a3[3];
        if (!v638)
        {
          goto LABEL_1736;
        }

        goto LABEL_1947;
      }

      IPC::Decoder::decode<std::tuple<WebKit::WebExtensionScriptInjectionParameters>>(buf, a3);
      if (BYTE8(v1096) != 1)
      {
        goto LABEL_1322;
      }

      v563 = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(a3);
      if ((v144 & 1) == 0)
      {
        goto LABEL_1322;
      }

      a3 = v563;
      while (1)
      {
        v564 = *a2;
        if ((*a2 & 1) == 0)
        {
          break;
        }

        v565 = *a2;
        atomic_compare_exchange_strong_explicit(a2, &v565, v564 + 2, memory_order_relaxed, memory_order_relaxed);
        if (v565 == v564)
        {
          goto LABEL_1319;
        }
      }

      WTF::ThreadSafeWeakPtrControlBlock::strongRef(*a2);
LABEL_1319:
      v815 = WTF::fastMalloc(0x18);
      *v815 = &unk_1F10F3F50;
      v815[1] = a3;
      v815[2] = a2;
      *&v1109 = v815;
      if ((BYTE8(v1096) & 1) == 0)
      {
        goto LABEL_1802;
      }

      WebKit::WebExtensionContext::scriptingExecuteScript(this, buf, &v1109);
      v812 = v1109;
      *&v1109 = 0;
      if (!v812)
      {
        goto LABEL_1322;
      }

      goto LABEL_1321;
    case 0x7A3:
      if (!WebKit::WebExtensionContext::isScriptingMessageAllowed(this, a3))
      {
        v679 = qword_1ED6416C8;
        if (os_log_type_enabled(qword_1ED6416C8, OS_LOG_TYPE_ERROR))
        {
          v958 = *(a3 + 25);
          if (v958 >= 0x107F)
          {
            v958 = 4223;
          }

          v959 = (&IPC::Detail::messageDescriptions)[3 * v958];
          *buf = 136315138;
          *&buf[4] = v959;
          _os_log_error_impl(&dword_19D52D000, v679, OS_LOG_TYPE_ERROR, "Message %s fails validation", buf, 0xCu);
        }

        v636 = *a3;
        v666 = a3[1];
        *a3 = 0;
        a3[1] = 0;
        v638 = a3[3];
        if (!v638)
        {
          goto LABEL_1736;
        }

        goto LABEL_1947;
      }

      IPC::Decoder::decode<std::tuple<WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>>(a3, buf);
      if (buf[16] != 1)
      {
        goto LABEL_1284;
      }

      v140 = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(a3);
      if ((v139 & 1) == 0)
      {
        goto LABEL_1284;
      }

      a3 = v140;
      while (1)
      {
        v141 = *a2;
        if ((*a2 & 1) == 0)
        {
          break;
        }

        v142 = *a2;
        atomic_compare_exchange_strong_explicit(a2, &v142, v141 + 2, memory_order_relaxed, memory_order_relaxed);
        if (v142 == v141)
        {
          goto LABEL_1212;
        }
      }

      WTF::ThreadSafeWeakPtrControlBlock::strongRef(*a2);
LABEL_1212:
      v775 = WTF::fastMalloc(0x18);
      *v775 = &unk_1F10F4018;
      v775[1] = a3;
      v775[2] = a2;
      *&v1109 = v775;
      if ((buf[16] & 1) == 0)
      {
        goto LABEL_1802;
      }

      WebKit::WebExtensionContext::scriptingGetRegisteredScripts(this, buf, &v1109);
      v776 = v1109;
      *&v1109 = 0;
      if (!v776)
      {
        goto LABEL_1284;
      }

      goto LABEL_1283;
    case 0x7A4:
      if (WebKit::WebExtensionContext::isScriptingMessageAllowed(this, a3))
      {
        IPC::Decoder::decode<std::tuple<WebKit::WebExtensionScriptInjectionParameters>>(buf, a3);
        if (BYTE8(v1096) != 1)
        {
          goto LABEL_1322;
        }

        v545 = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(a3);
        if ((v144 & 1) == 0)
        {
          goto LABEL_1322;
        }

        a3 = v545;
        while (1)
        {
          v546 = *a2;
          if ((*a2 & 1) == 0)
          {
            break;
          }

          v547 = *a2;
          atomic_compare_exchange_strong_explicit(a2, &v547, v546 + 2, memory_order_relaxed, memory_order_relaxed);
          if (v547 == v546)
          {
            goto LABEL_1307;
          }
        }

        WTF::ThreadSafeWeakPtrControlBlock::strongRef(*a2);
LABEL_1307:
        v811 = WTF::fastMalloc(0x18);
        *v811 = &unk_1F10F3F78;
        v811[1] = a3;
        v811[2] = a2;
        *&v1109 = v811;
        if ((BYTE8(v1096) & 1) == 0)
        {
          goto LABEL_1802;
        }

        WebKit::WebExtensionContext::scriptingInsertCSS(this, buf, &v1109);
        goto LABEL_1309;
      }

      v760 = qword_1ED6416C8;
      if (os_log_type_enabled(qword_1ED6416C8, OS_LOG_TYPE_ERROR))
      {
        v982 = *(a3 + 25);
        if (v982 >= 0x107F)
        {
          v982 = 4223;
        }

        v983 = (&IPC::Detail::messageDescriptions)[3 * v982];
        *buf = 136315138;
        *&buf[4] = v983;
        _os_log_error_impl(&dword_19D52D000, v760, OS_LOG_TYPE_ERROR, "Message %s fails validation", buf, 0xCu);
      }

      v636 = *a3;
      v666 = a3[1];
      *a3 = 0;
      a3[1] = 0;
      v638 = a3[3];
      if (!v638)
      {
        goto LABEL_1736;
      }

      goto LABEL_1947;
    case 0x7A5:
      if (WebKit::WebExtensionContext::isScriptingMessageAllowed(this, a3))
      {
        IPC::Decoder::decode<std::tuple<WTF::Vector<WebKit::WebExtensionRegisteredScriptParameters,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>>(buf, a3, v558, v559);
        if (buf[16] != 1)
        {
          goto LABEL_1735;
        }

        v560 = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(a3);
        if ((v234 & 1) == 0)
        {
          goto LABEL_1317;
        }

        a3 = v560;
        while (1)
        {
          v561 = *a2;
          if ((*a2 & 1) == 0)
          {
            break;
          }

          v562 = *a2;
          atomic_compare_exchange_strong_explicit(a2, &v562, v561 + 2, memory_order_relaxed, memory_order_relaxed);
          if (v562 == v561)
          {
            goto LABEL_1312;
          }
        }

        WTF::ThreadSafeWeakPtrControlBlock::strongRef(*a2);
LABEL_1312:
        v813 = WTF::fastMalloc(0x18);
        *v813 = &unk_1F10F3FC8;
        v813[1] = a3;
        v813[2] = a2;
        *&v1109 = v813;
        if ((buf[16] & 1) == 0)
        {
          goto LABEL_1802;
        }

        WebKit::WebExtensionContext::scriptingRegisterContentScripts(this, buf, &v1109);
        goto LABEL_1314;
      }

      v761 = qword_1ED6416C8;
      if (os_log_type_enabled(qword_1ED6416C8, OS_LOG_TYPE_ERROR))
      {
        v984 = *(a3 + 25);
        if (v984 >= 0x107F)
        {
          v984 = 4223;
        }

        v985 = (&IPC::Detail::messageDescriptions)[3 * v984];
        *buf = 136315138;
        *&buf[4] = v985;
        _os_log_error_impl(&dword_19D52D000, v761, OS_LOG_TYPE_ERROR, "Message %s fails validation", buf, 0xCu);
      }

      v636 = *a3;
      v666 = a3[1];
      *a3 = 0;
      a3[1] = 0;
      v638 = a3[3];
      if (!v638)
      {
        goto LABEL_1736;
      }

      goto LABEL_1947;
    case 0x7A6:
      if (!WebKit::WebExtensionContext::isScriptingMessageAllowed(this, a3))
      {
        v680 = qword_1ED6416C8;
        if (os_log_type_enabled(qword_1ED6416C8, OS_LOG_TYPE_ERROR))
        {
          v960 = *(a3 + 25);
          if (v960 >= 0x107F)
          {
            v960 = 4223;
          }

          v961 = (&IPC::Detail::messageDescriptions)[3 * v960];
          *buf = 136315138;
          *&buf[4] = v961;
          _os_log_error_impl(&dword_19D52D000, v680, OS_LOG_TYPE_ERROR, "Message %s fails validation", buf, 0xCu);
        }

        v636 = *a3;
        v666 = a3[1];
        *a3 = 0;
        a3[1] = 0;
        v638 = a3[3];
        if (!v638)
        {
          goto LABEL_1736;
        }

        goto LABEL_1947;
      }

      IPC::Decoder::decode<std::tuple<WebKit::WebExtensionScriptInjectionParameters>>(buf, a3);
      if (BYTE8(v1096) != 1)
      {
        goto LABEL_1322;
      }

      v145 = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(a3);
      if ((v144 & 1) == 0)
      {
        goto LABEL_1322;
      }

      a3 = v145;
      while (1)
      {
        v146 = *a2;
        if ((*a2 & 1) == 0)
        {
          break;
        }

        v147 = *a2;
        atomic_compare_exchange_strong_explicit(a2, &v147, v146 + 2, memory_order_relaxed, memory_order_relaxed);
        if (v147 == v146)
        {
          goto LABEL_1216;
        }
      }

      WTF::ThreadSafeWeakPtrControlBlock::strongRef(*a2);
LABEL_1216:
      v777 = WTF::fastMalloc(0x18);
      *v777 = &unk_1F10F3FA0;
      v777[1] = a3;
      v777[2] = a2;
      *&v1109 = v777;
      if ((BYTE8(v1096) & 1) == 0)
      {
        goto LABEL_1802;
      }

      WebKit::WebExtensionContext::scriptingRemoveCSS(this, buf, &v1109);
LABEL_1309:
      v812 = v1109;
      *&v1109 = 0;
      if (!v812)
      {
        goto LABEL_1322;
      }

LABEL_1321:
      (*(*v812 + 8))(v812);
LABEL_1322:
      if (BYTE8(v1096) == 1)
      {
        WebKit::WebExtensionScriptInjectionParameters::~WebExtensionScriptInjectionParameters(buf, v144);
      }

      goto LABEL_1735;
    case 0x7A7:
      if (!WebKit::WebExtensionContext::isScriptingMessageAllowed(this, a3))
      {
        v749 = qword_1ED6416C8;
        if (os_log_type_enabled(qword_1ED6416C8, OS_LOG_TYPE_ERROR))
        {
          v978 = *(a3 + 25);
          if (v978 >= 0x107F)
          {
            v978 = 4223;
          }

          v979 = (&IPC::Detail::messageDescriptions)[3 * v978];
          *buf = 136315138;
          *&buf[4] = v979;
          _os_log_error_impl(&dword_19D52D000, v749, OS_LOG_TYPE_ERROR, "Message %s fails validation", buf, 0xCu);
        }

        v636 = *a3;
        v666 = a3[1];
        *a3 = 0;
        a3[1] = 0;
        v638 = a3[3];
        if (!v638)
        {
          goto LABEL_1736;
        }

        goto LABEL_1947;
      }

      IPC::Decoder::decode<std::tuple<WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>>(a3, buf);
      if (buf[16] != 1)
      {
        goto LABEL_1284;
      }

      v504 = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(a3);
      if ((v139 & 1) == 0)
      {
        goto LABEL_1284;
      }

      a3 = v504;
      while (1)
      {
        v505 = *a2;
        if ((*a2 & 1) == 0)
        {
          break;
        }

        v506 = *a2;
        atomic_compare_exchange_strong_explicit(a2, &v506, v505 + 2, memory_order_relaxed, memory_order_relaxed);
        if (v506 == v505)
        {
          goto LABEL_1281;
        }
      }

      WTF::ThreadSafeWeakPtrControlBlock::strongRef(*a2);
LABEL_1281:
      v802 = WTF::fastMalloc(0x18);
      *v802 = &unk_1F10F4040;
      v802[1] = a3;
      v802[2] = a2;
      *&v1109 = v802;
      if ((buf[16] & 1) == 0)
      {
        goto LABEL_1802;
      }

      WebKit::WebExtensionContext::scriptingUnregisterContentScripts(this, buf, &v1109);
      v776 = v1109;
      *&v1109 = 0;
      if (!v776)
      {
        goto LABEL_1284;
      }

LABEL_1283:
      (*(*v776 + 8))(v776);
LABEL_1284:
      if (buf[16] != 1)
      {
        goto LABEL_1735;
      }

LABEL_1285:
      v793 = buf;
      goto LABEL_1286;
    case 0x7A8:
      if (WebKit::WebExtensionContext::isScriptingMessageAllowed(this, a3))
      {
        IPC::Decoder::decode<std::tuple<WTF::Vector<WebKit::WebExtensionRegisteredScriptParameters,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>>(buf, a3, v231, v232);
        if (buf[16] != 1)
        {
          goto LABEL_1735;
        }

        v233 = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(a3);
        if ((v234 & 1) == 0)
        {
          goto LABEL_1317;
        }

        a3 = v233;
        while (1)
        {
          v235 = *a2;
          if ((*a2 & 1) == 0)
          {
            break;
          }

          v236 = *a2;
          atomic_compare_exchange_strong_explicit(a2, &v236, v235 + 2, memory_order_relaxed, memory_order_relaxed);
          if (v236 == v235)
          {
            goto LABEL_1219;
          }
        }

        WTF::ThreadSafeWeakPtrControlBlock::strongRef(*a2);
LABEL_1219:
        v778 = WTF::fastMalloc(0x18);
        *v778 = &unk_1F10F3FF0;
        v778[1] = a3;
        v778[2] = a2;
        *&v1109 = v778;
        if ((buf[16] & 1) == 0)
        {
          goto LABEL_1802;
        }

        WebKit::WebExtensionContext::scriptingUpdateRegisteredScripts(this, buf, &v1109);
LABEL_1314:
        v814 = v1109;
        *&v1109 = 0;
        if (v814)
        {
          (*(*v814 + 8))(v814);
        }

        if (buf[16])
        {
LABEL_1317:
          WTF::Vector<WebKit::WebExtensionRegisteredScriptParameters,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(buf, v234);
          goto LABEL_1735;
        }

        goto LABEL_1735;
      }

      v693 = qword_1ED6416C8;
      if (os_log_type_enabled(qword_1ED6416C8, OS_LOG_TYPE_ERROR))
      {
        v962 = *(a3 + 25);
        if (v962 >= 0x107F)
        {
          v962 = 4223;
        }

        v963 = (&IPC::Detail::messageDescriptions)[3 * v962];
        *buf = 136315138;
        *&buf[4] = v963;
        _os_log_error_impl(&dword_19D52D000, v693, OS_LOG_TYPE_ERROR, "Message %s fails validation", buf, 0xCu);
      }

      v636 = *a3;
      v666 = a3[1];
      *a3 = 0;
      a3[1] = 0;
      v638 = a3[3];
      if (!v638)
      {
        goto LABEL_1736;
      }

      goto LABEL_1947;
    case 0x7A9:
      if (WebKit::WebExtensionContext::isStorageMessageAllowed(this, a3))
      {
        IPC::Decoder::decode<std::tuple<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WebKit::WebExtensionDataType>>(buf, a3);
        if (buf[16] != 1)
        {
          goto LABEL_1735;
        }

        v518 = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(a3);
        if ((v519 & 1) == 0)
        {
          goto LABEL_1735;
        }

        v520 = v518;
        while (1)
        {
          v521 = *a2;
          if ((*a2 & 1) == 0)
          {
            break;
          }

          v522 = *a2;
          atomic_compare_exchange_strong_explicit(a2, &v522, v521 + 2, memory_order_relaxed, memory_order_relaxed);
          if (v522 == v521)
          {
            goto LABEL_1288;
          }
        }

        WTF::ThreadSafeWeakPtrControlBlock::strongRef(*a2);
LABEL_1288:
        v803 = WTF::fastMalloc(0x18);
        *v803 = &unk_1F10F4130;
        v803[1] = v520;
        v803[2] = a2;
        *&v1109 = v803;
        WebKit::WebExtensionContext::storageClear(this, *buf, buf[8], &v1109);
        v766 = v1109;
        *&v1109 = 0;
        if (v766)
        {
          goto LABEL_1734;
        }

        goto LABEL_1735;
      }

      v750 = qword_1ED6416C8;
      if (os_log_type_enabled(qword_1ED6416C8, OS_LOG_TYPE_ERROR))
      {
        v980 = *(a3 + 25);
        if (v980 >= 0x107F)
        {
          v980 = 4223;
        }

        v981 = (&IPC::Detail::messageDescriptions)[3 * v980];
        *buf = 136315138;
        *&buf[4] = v981;
        _os_log_error_impl(&dword_19D52D000, v750, OS_LOG_TYPE_ERROR, "Message %s fails validation", buf, 0xCu);
      }

      v636 = *a3;
      v666 = a3[1];
      *a3 = 0;
      a3[1] = 0;
      v638 = a3[3];
      if (!v638)
      {
        goto LABEL_1736;
      }

      goto LABEL_1947;
    case 0x7AA:
      if (!WebKit::WebExtensionContext::isStorageMessageAllowed(this, a3))
      {
        v698 = qword_1ED6416C8;
        if (os_log_type_enabled(qword_1ED6416C8, OS_LOG_TYPE_ERROR))
        {
          v964 = *(a3 + 25);
          if (v964 >= 0x107F)
          {
            v964 = 4223;
          }

          v965 = (&IPC::Detail::messageDescriptions)[3 * v964];
          *buf = 136315138;
          *&buf[4] = v965;
          _os_log_error_impl(&dword_19D52D000, v698, OS_LOG_TYPE_ERROR, "Message %s fails validation", buf, 0xCu);
        }

        v636 = *a3;
        v666 = a3[1];
        *a3 = 0;
        a3[1] = 0;
        v638 = a3[3];
        if (!v638)
        {
          goto LABEL_1736;
        }

        goto LABEL_1947;
      }

      IPC::Decoder::decode<std::tuple<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WebKit::WebExtensionDataType,WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>>(buf, a3);
      if (buf[32] != 1)
      {
        goto LABEL_1735;
      }

      v280 = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(a3);
      if ((v139 & 1) == 0)
      {
        goto LABEL_1260;
      }

      a3 = v280;
      while (1)
      {
        v281 = *a2;
        if ((*a2 & 1) == 0)
        {
          break;
        }

        v282 = *a2;
        atomic_compare_exchange_strong_explicit(a2, &v282, v281 + 2, memory_order_relaxed, memory_order_relaxed);
        if (v282 == v281)
        {
          goto LABEL_1222;
        }
      }

      WTF::ThreadSafeWeakPtrControlBlock::strongRef(*a2);
LABEL_1222:
      v779 = WTF::fastMalloc(0x18);
      *v779 = &unk_1F10F4068;
      v779[1] = a3;
      v779[2] = a2;
      *&v1109 = v779;
      if ((buf[32] & 1) == 0)
      {
        goto LABEL_1802;
      }

      WebKit::WebExtensionContext::storageGet(this, *buf, buf[8], &buf[16], &v1109);
      v780 = v1109;
      *&v1109 = 0;
      if (!v780)
      {
        goto LABEL_1259;
      }

      goto LABEL_1258;
    case 0x7AB:
      if (!WebKit::WebExtensionContext::isStorageMessageAllowed(this, a3))
      {
        v725 = qword_1ED6416C8;
        if (os_log_type_enabled(qword_1ED6416C8, OS_LOG_TYPE_ERROR))
        {
          v970 = *(a3 + 25);
          if (v970 >= 0x107F)
          {
            v970 = 4223;
          }

          v971 = (&IPC::Detail::messageDescriptions)[3 * v970];
          *buf = 136315138;
          *&buf[4] = v971;
          _os_log_error_impl(&dword_19D52D000, v725, OS_LOG_TYPE_ERROR, "Message %s fails validation", buf, 0xCu);
        }

        v636 = *a3;
        v666 = a3[1];
        *a3 = 0;
        a3[1] = 0;
        v638 = a3[3];
        if (!v638)
        {
          goto LABEL_1736;
        }

        goto LABEL_1947;
      }

      IPC::Decoder::decode<std::tuple<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WebKit::WebExtensionDataType,WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>>(buf, a3);
      if (buf[32] != 1)
      {
        goto LABEL_1735;
      }

      v389 = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(a3);
      if ((v139 & 1) == 0)
      {
        goto LABEL_1260;
      }

      a3 = v389;
      while (1)
      {
        v390 = *a2;
        if ((*a2 & 1) == 0)
        {
          break;
        }

        v391 = *a2;
        atomic_compare_exchange_strong_explicit(a2, &v391, v390 + 2, memory_order_relaxed, memory_order_relaxed);
        if (v391 == v390)
        {
          goto LABEL_1256;
        }
      }

      WTF::ThreadSafeWeakPtrControlBlock::strongRef(*a2);
LABEL_1256:
      v792 = WTF::fastMalloc(0x18);
      *v792 = &unk_1F10F40B8;
      v792[1] = a3;
      v792[2] = a2;
      *&v1109 = v792;
      if ((buf[32] & 1) == 0)
      {
        goto LABEL_1802;
      }

      WebKit::WebExtensionContext::storageGetBytesInUse(this, *buf, buf[8], &buf[16], &v1109);
      v780 = v1109;
      *&v1109 = 0;
      if (!v780)
      {
        goto LABEL_1259;
      }

      goto LABEL_1258;
    case 0x7AC:
      if (WebKit::WebExtensionContext::isStorageMessageAllowed(this, a3))
      {
        IPC::Decoder::decode<std::tuple<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WebKit::WebExtensionDataType>>(buf, a3);
        if (buf[16] != 1)
        {
          goto LABEL_1735;
        }

        v410 = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(a3);
        if ((v411 & 1) == 0)
        {
          goto LABEL_1735;
        }

        v412 = v410;
        while (1)
        {
          v413 = *a2;
          if ((*a2 & 1) == 0)
          {
            break;
          }

          v414 = *a2;
          atomic_compare_exchange_strong_explicit(a2, &v414, v413 + 2, memory_order_relaxed, memory_order_relaxed);
          if (v414 == v413)
          {
            goto LABEL_1264;
          }
        }

        WTF::ThreadSafeWeakPtrControlBlock::strongRef(*a2);
LABEL_1264:
        v795 = WTF::fastMalloc(0x18);
        *v795 = &unk_1F10F4090;
        v795[1] = v412;
        v795[2] = a2;
        *&v1109 = v795;
        WebKit::WebExtensionContext::storageGetKeys(this, *buf, buf[8], &v1109);
        v766 = v1109;
        *&v1109 = 0;
        if (!v766)
        {
          goto LABEL_1735;
        }

        goto LABEL_1734;
      }

      v729 = qword_1ED6416C8;
      if (os_log_type_enabled(qword_1ED6416C8, OS_LOG_TYPE_ERROR))
      {
        v974 = *(a3 + 25);
        if (v974 >= 0x107F)
        {
          v974 = 4223;
        }

        v975 = (&IPC::Detail::messageDescriptions)[3 * v974];
        *buf = 136315138;
        *&buf[4] = v975;
        _os_log_error_impl(&dword_19D52D000, v729, OS_LOG_TYPE_ERROR, "Message %s fails validation", buf, 0xCu);
      }

      v636 = *a3;
      v666 = a3[1];
      *a3 = 0;
      a3[1] = 0;
      v638 = a3[3];
      if (!v638)
      {
        goto LABEL_1736;
      }

      goto LABEL_1947;
    case 0x7AD:
      if (!WebKit::WebExtensionContext::isStorageMessageAllowed(this, a3))
      {
        v712 = qword_1ED6416C8;
        if (os_log_type_enabled(qword_1ED6416C8, OS_LOG_TYPE_ERROR))
        {
          v968 = *(a3 + 25);
          if (v968 >= 0x107F)
          {
            v968 = 4223;
          }

          v969 = (&IPC::Detail::messageDescriptions)[3 * v968];
          *buf = 136315138;
          *&buf[4] = v969;
          _os_log_error_impl(&dword_19D52D000, v712, OS_LOG_TYPE_ERROR, "Message %s fails validation", buf, 0xCu);
        }

        v636 = *a3;
        v666 = a3[1];
        *a3 = 0;
        a3[1] = 0;
        v638 = a3[3];
        if (!v638)
        {
          goto LABEL_1736;
        }

        goto LABEL_1947;
      }

      IPC::Decoder::decode<std::tuple<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WebKit::WebExtensionDataType,WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>>(buf, a3);
      if (buf[32] != 1)
      {
        goto LABEL_1735;
      }

      v326 = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(a3);
      if ((v139 & 1) == 0)
      {
        goto LABEL_1260;
      }

      a3 = v326;
      while (1)
      {
        v327 = *a2;
        if ((*a2 & 1) == 0)
        {
          break;
        }

        v328 = *a2;
        atomic_compare_exchange_strong_explicit(a2, &v328, v327 + 2, memory_order_relaxed, memory_order_relaxed);
        if (v328 == v327)
        {
          goto LABEL_1230;
        }
      }

      WTF::ThreadSafeWeakPtrControlBlock::strongRef(*a2);
LABEL_1230:
      v783 = WTF::fastMalloc(0x18);
      *v783 = &unk_1F10F4108;
      v783[1] = a3;
      v783[2] = a2;
      *&v1109 = v783;
      if ((buf[32] & 1) == 0)
      {
        goto LABEL_1802;
      }

      WebKit::WebExtensionContext::storageRemove(this, *buf, buf[8], &buf[16], &v1109);
      v780 = v1109;
      *&v1109 = 0;
      if (!v780)
      {
        goto LABEL_1259;
      }

LABEL_1258:
      (*(*v780 + 8))(v780);
LABEL_1259:
      if (buf[32])
      {
LABEL_1260:
        v793 = &buf[16];
LABEL_1286:
        WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v793, v139);
      }

      goto LABEL_1735;
    case 0x7AE:
      if (WebKit::WebExtensionContext::isStorageMessageAllowed(this, a3))
      {
        v283 = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(a3);
        if ((v284 & 1) == 0 || (v285 = v283, v286 = IPC::Decoder::decode<WebKit::WebExtensionDataType>(a3), v286 < 0x100u) || (v287 = v286, IPC::ArgumentCoder<WTF::String,void>::decode<IPC::Decoder>(a3, &v1109), (BYTE8(v1109) & 1) == 0) && ((v1056 = *a3, v1057 = a3[1], *a3 = 0, a3[1] = 0, (v1058 = a3[3]) == 0) || !v1057 || ((*(*v1058 + 16))(v1058, v1056), (BYTE8(v1109) & 1) == 0)))
        {
LABEL_1880:
          v1045 = *a3;
          v1046 = a3[1];
          *a3 = 0;
          a3[1] = 0;
          v1047 = a3[3];
          if (v1047 && v1046)
          {
            (*(*v1047 + 16))(v1047, v1045);
          }

          goto LABEL_1735;
        }

        *buf = v285;
        buf[8] = v287;
        v288 = v1109;
        *&buf[16] = v1109;
        buf[24] = 1;
        v289 = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(a3);
        if (v220)
        {
          v290 = v289;
          while (1)
          {
            v291 = *a2;
            if ((*a2 & 1) == 0)
            {
              break;
            }

            v292 = *a2;
            atomic_compare_exchange_strong_explicit(a2, &v292, v291 + 2, memory_order_relaxed, memory_order_relaxed);
            if (v292 == v291)
            {
              goto LABEL_1325;
            }
          }

          WTF::ThreadSafeWeakPtrControlBlock::strongRef(*a2);
LABEL_1325:
          v816 = WTF::fastMalloc(0x18);
          *v816 = &unk_1F10F40E0;
          v816[1] = v290;
          v816[2] = a2;
          *&v1109 = v816;
          WebKit::WebExtensionContext::storageSet(this, v285, v287, &buf[16], &v1109);
          v817 = v1109;
          *&v1109 = 0;
          if (v817)
          {
            (*(*v817 + 8))(v817);
          }

          if ((buf[24] & 1) == 0)
          {
            goto LABEL_1735;
          }

          v288 = *&buf[16];
        }

        *&buf[16] = 0;
        if (v288 && atomic_fetch_add_explicit(v288, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          v798 = v288;
          goto LABEL_1534;
        }

        goto LABEL_1735;
      }

      v699 = qword_1ED6416C8;
      if (os_log_type_enabled(qword_1ED6416C8, OS_LOG_TYPE_ERROR))
      {
        v966 = *(a3 + 25);
        if (v966 >= 0x107F)
        {
          v966 = 4223;
        }

        v967 = (&IPC::Detail::messageDescriptions)[3 * v966];
        *buf = 136315138;
        *&buf[4] = v967;
        _os_log_error_impl(&dword_19D52D000, v699, OS_LOG_TYPE_ERROR, "Message %s fails validation", buf, 0xCu);
      }

      v636 = *a3;
      v666 = a3[1];
      *a3 = 0;
      a3[1] = 0;
      v638 = a3[3];
      if (!v638)
      {
        goto LABEL_1736;
      }

      goto LABEL_1947;
    case 0x7AF:
      if (!WebKit::WebExtensionContext::isStorageMessageAllowed(this, a3))
      {
        v728 = qword_1ED6416C8;
        if (os_log_type_enabled(qword_1ED6416C8, OS_LOG_TYPE_ERROR))
        {
          v972 = *(a3 + 25);
          if (v972 >= 0x107F)
          {
            v972 = 4223;
          }

          v973 = (&IPC::Detail::messageDescriptions)[3 * v972];
          *buf = 136315138;
          *&buf[4] = v973;
          _os_log_error_impl(&dword_19D52D000, v728, OS_LOG_TYPE_ERROR, "Message %s fails validation", buf, 0xCu);
        }

        v636 = *a3;
        v666 = a3[1];
        *a3 = 0;
        a3[1] = 0;
        v638 = a3[3];
        if (!v638)
        {
          goto LABEL_1736;
        }

LABEL_1947:
        if (!v666)
        {
          goto LABEL_1736;
        }

        goto LABEL_1967;
      }

      v396 = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(a3);
      if ((v397 & 1) == 0)
      {
        goto LABEL_1946;
      }

      v398 = v396;
      v399 = IPC::Decoder::decode<WebKit::WebExtensionDataType>(a3);
      if (v399 < 0x100u)
      {
        goto LABEL_1946;
      }

      v400 = a3[1];
      v401 = a3[2];
      v402 = *a3;
      if (v400 <= v401 - *a3)
      {
        *a3 = 0;
        a3[1] = 0;
        v1074 = a3[3];
        if (v1074)
        {
          if (v400)
          {
            (*(*v1074 + 16))(v1074);
            v400 = a3[1];
          }
        }

        else
        {
          v400 = 0;
        }

        goto LABEL_1942;
      }

      a3[2] = v401 + 1;
      if (!v401)
      {
LABEL_1942:
        *a3 = 0;
        a3[1] = 0;
        v1075 = a3[3];
        if (v1075)
        {
          if (v400)
          {
            (*(*v1075 + 16))(v1075);
            v402 = *a3;
            v400 = a3[1];
            goto LABEL_1945;
          }
        }

        else
        {
          v400 = 0;
        }

        v402 = 0;
LABEL_1945:
        *a3 = 0;
        a3[1] = 0;
        v1076 = a3[3];
        if (v1076 && v400)
        {
          (*(*v1076 + 16))(v1076, v402);
        }

LABEL_1946:
        v636 = *a3;
        v666 = a3[1];
        *a3 = 0;
        a3[1] = 0;
        v638 = a3[3];
        if (!v638)
        {
          goto LABEL_1736;
        }

        goto LABEL_1947;
      }

      v403 = *v401;
      if (v403 >= 2)
      {
        goto LABEL_1945;
      }

      v404 = v399;
      v405 = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(a3);
      if ((v406 & 1) == 0)
      {
        goto LABEL_1736;
      }

      v407 = v405;
      while (1)
      {
        v408 = *a2;
        if ((*a2 & 1) == 0)
        {
          break;
        }

        v409 = *a2;
        atomic_compare_exchange_strong_explicit(a2, &v409, v408 + 2, memory_order_relaxed, memory_order_relaxed);
        if (v409 == v408)
        {
          goto LABEL_1730;
        }
      }

      WTF::ThreadSafeWeakPtrControlBlock::strongRef(*a2);
LABEL_1730:
      v955 = WTF::fastMalloc(0x18);
      *v955 = &unk_1F10F4158;
      v955[1] = v407;
      v955[2] = a2;
      *buf = v955;
      WebKit::WebExtensionContext::storageSetAccessLevel(this, v398, v404, v403, buf);
LABEL_1733:
      v766 = *buf;
      *buf = 0;
      if (!v766)
      {
        goto LABEL_1735;
      }

LABEL_1734:
      (*(*v766 + 8))(v766);
LABEL_1735:
      if (this)
      {
        goto LABEL_1736;
      }

      return;
    case 0x7B0:
      v101 = this[10];
      if (v101)
      {
        if (v101[1])
        {
          v102 = this[5];
          if (v102)
          {
            if (v102 == a3[7])
            {
              v103 = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(a3);
              if ((v104 & 1) == 0)
              {
                goto LABEL_1965;
              }

              v105 = v103;
              IPC::Decoder::decode<std::optional<WTF::ObjectIdentifierGeneric<WebKit::WebExtensionTabIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>(a3, buf);
              if (buf[16] != 1)
              {
                goto LABEL_1965;
              }

              v106 = a3[1];
              v107 = a3[2];
              v108 = *a3;
              if (v106 <= v107 - *a3)
              {
                *a3 = 0;
                a3[1] = 0;
                v1080 = a3[3];
                if (v1080)
                {
                  if (v106)
                  {
                    (*(*v1080 + 16))(v1080);
                    v106 = a3[1];
                  }
                }

                else
                {
                  v106 = 0;
                }
              }

              else
              {
                v109 = v107 + 1;
                a3[2] = v107 + 1;
                if (v107)
                {
                  v110 = *v107;
                  if (v110 < 2)
                  {
                    if (v106 <= v109 - v108)
                    {
                      v1083 = 0;
                      v1084 = 0;
                      *a3 = 0;
                      a3[1] = 0;
                      v1085 = a3[3];
                      if (v1085)
                      {
                        (*(*v1085 + 16))(v1085);
                        v1084 = *a3;
                        v1083 = a3[1];
                      }
                    }

                    else
                    {
                      a3[2] = v107 + 2;
                      if (v107 != -1)
                      {
                        v111 = *v109;
                        v112 = *buf;
                        v113 = buf[8];
                        v114 = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(a3);
                        if ((v115 & 1) == 0)
                        {
                          goto LABEL_1736;
                        }

                        v116 = v114;
                        while (1)
                        {
                          v117 = *a2;
                          if ((*a2 & 1) == 0)
                          {
                            break;
                          }

                          v118 = *a2;
                          atomic_compare_exchange_strong_explicit(a2, &v118, v117 + 2, memory_order_relaxed, memory_order_relaxed);
                          if (v118 == v117)
                          {
                            goto LABEL_1789;
                          }
                        }

                        WTF::ThreadSafeWeakPtrControlBlock::strongRef(*a2);
LABEL_1789:
                        v990 = WTF::fastMalloc(0x18);
                        *v990 = &unk_1F10F4338;
                        v990[1] = v116;
                        v990[2] = a2;
                        *buf = v990;
                        WebKit::WebExtensionContext::tabsCaptureVisibleTab(this, v105, v112, v113, v110, v111, buf);
                        v826 = *buf;
                        *buf = 0;
                        if (!v826)
                        {
                          goto LABEL_1736;
                        }

                        goto LABEL_1794;
                      }

                      v1083 = v106;
                      v1084 = v108;
                    }

                    *a3 = 0;
                    a3[1] = 0;
                    v1086 = a3[3];
                    if (v1086 && v1083)
                    {
                      (*(*v1086 + 16))(v1086, v1084, v1083);
                    }

                    goto LABEL_1965;
                  }

                  goto LABEL_1964;
                }
              }

              *a3 = 0;
              a3[1] = 0;
              v1081 = a3[3];
              if (v1081)
              {
                if (v106)
                {
                  (*(*v1081 + 16))(v1081);
                  v108 = *a3;
                  v106 = a3[1];
                  goto LABEL_1964;
                }
              }

              else
              {
                v106 = 0;
              }

              v108 = 0;
LABEL_1964:
              *a3 = 0;
              a3[1] = 0;
              v1082 = a3[3];
              if (v1082 && v106)
              {
                (*(*v1082 + 16))(v1082, v108);
              }

LABEL_1965:
              v636 = *a3;
              v637 = a3[1];
              *a3 = 0;
              a3[1] = 0;
              v638 = a3[3];
              if (!v638)
              {
                goto LABEL_1736;
              }

              goto LABEL_1966;
            }
          }
        }
      }

      v647 = qword_1ED6416C8;
      if (os_log_type_enabled(qword_1ED6416C8, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315138;
        *&buf[4] = "WebExtensionContext_TabsCaptureVisibleTab";
        _os_log_error_impl(&dword_19D52D000, v647, OS_LOG_TYPE_ERROR, "Message %s fails validation", buf, 0xCu);
      }

      v636 = *a3;
      v637 = a3[1];
      *a3 = 0;
      a3[1] = 0;
      v638 = a3[3];
      if (!v638)
      {
        goto LABEL_1736;
      }

      goto LABEL_1966;
    case 0x7B1:
      v199 = this[10];
      if (v199)
      {
        if (v199[1])
        {
          v200 = this[5];
          if (v200)
          {
            if (v200 == a3[7])
            {
              v201 = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::RemoteVideoFrameIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>(a3);
              if (v202 & 1) != 0 && (v203 = v201, v204 = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::RemoteVideoFrameIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>(a3), (v205))
              {
                v206 = v204;
                IPC::ArgumentCoder<WTF::String,void>::decode<IPC::Decoder>(a3, v1090);
                if (v1090[1] & 1) != 0 || (v1068 = *a3, v1069 = a3[1], *a3 = 0, a3[1] = 0, (v1070 = a3[3]) != 0) && v1069 && ((*(*v1070 + 16))(v1070, v1068), (v1090[1]))
                {
                  IPC::Decoder::decode<WebKit::WebExtensionMessageTargetParameters>(v1107, a3);
                  if ((v1108 & 1) != 0 && (IPC::Decoder::decode<WebKit::WebExtensionMessageSenderParameters>(&v1109, a3), v1115 == 1))
                  {
                    if ((v1090[1] & 1) == 0)
                    {
                      goto LABEL_1802;
                    }

                    *buf = v203;
                    *&buf[8] = v206;
                    v208 = v1090[0];
                    v1090[0] = 0;
                    *&buf[16] = v208;
                    *&buf[32] = *v1107;
                    *&buf[48] = *&v1107[16];
                    *&buf[64] = *&v1107[32];
                    std::__tuple_leaf<3ul,WebKit::WebExtensionMessageSenderParameters,false>::__tuple_leaf[abi:sn200100]<WebKit::WebExtensionMessageSenderParameters,0>(&buf[80], &v1109);
                    v1106 = 1;
                    if (v1115)
                    {
                      v209 = v1114;
                      v1114 = 0;
                      if (v209 && atomic_fetch_add_explicit(v209, 0xFFFFFFFE, memory_order_relaxed) == 2)
                      {
                        WTF::StringImpl::destroy(v209, v207);
                      }

                      if (v1113 == 1)
                      {
                        if (v1110[72] == 1)
                        {
                          v210 = *&v1110[64];
                          *&v1110[64] = 0;
                          if (v210)
                          {
                            if (atomic_fetch_add_explicit(v210, 0xFFFFFFFE, memory_order_relaxed) == 2)
                            {
                              WTF::StringImpl::destroy(v210, v207);
                            }
                          }
                        }

                        if (v1110[56] == 1)
                        {
                          v211 = *&v1110[16];
                          *&v1110[16] = 0;
                          if (v211)
                          {
                            if (atomic_fetch_add_explicit(v211, 0xFFFFFFFE, memory_order_relaxed) == 2)
                            {
                              WTF::StringImpl::destroy(v211, v207);
                            }
                          }
                        }
                      }

                      if (BYTE8(v1109) == 1)
                      {
                        v212 = v1109;
                        *&v1109 = 0;
                        if (v212)
                        {
                          if (atomic_fetch_add_explicit(v212, 0xFFFFFFFE, memory_order_relaxed) == 2)
                          {
                            WTF::StringImpl::destroy(v212, v207);
                          }
                        }
                      }
                    }
                  }

                  else
                  {
                    buf[0] = 0;
                    v1106 = 0;
                  }

                  if (v1090[1])
                  {
                    v898 = v1090[0];
                    v1090[0] = 0;
                    if (v898)
                    {
                      if (atomic_fetch_add_explicit(v898, 0xFFFFFFFE, memory_order_relaxed) == 2)
                      {
                        WTF::StringImpl::destroy(v898, v207);
                      }
                    }
                  }
                }

                else
                {
                  buf[0] = 0;
                  v1106 = 0;
                }

                if (v1106)
                {
LABEL_1577:
                  v899 = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(a3);
                  if (v258)
                  {
                    a3 = v899;
                    while (1)
                    {
                      v900 = *a2;
                      if ((*a2 & 1) == 0)
                      {
                        break;
                      }

                      v901 = *a2;
                      atomic_compare_exchange_strong_explicit(a2, &v901, v900 + 2, memory_order_relaxed, memory_order_relaxed);
                      if (v901 == v900)
                      {
                        goto LABEL_1583;
                      }
                    }

                    WTF::ThreadSafeWeakPtrControlBlock::strongRef(*a2);
LABEL_1583:
                    v902 = WTF::fastMalloc(0x18);
                    *v902 = &unk_1F10F4388;
                    v902[1] = a3;
                    v902[2] = a2;
                    *v1107 = v902;
                    if ((v1106 & 1) == 0)
                    {
                      goto LABEL_1802;
                    }

                    v903 = *&buf[16];
                    *&buf[16] = 0;
                    *&v1109 = v903;
                    WebKit::WebExtensionContext::tabsConnect(this, *buf, *&buf[8], &v1109, &buf[32], &buf[80], v1107);
                    v904 = v1109;
                    *&v1109 = 0;
                    if (v904 && atomic_fetch_add_explicit(v904, 0xFFFFFFFE, memory_order_relaxed) == 2)
                    {
                      WTF::StringImpl::destroy(v904, v258);
                    }

                    v905 = *v1107;
                    *v1107 = 0;
                    if (v905)
                    {
                      (*(*v905 + 8))(v905);
                    }
                  }

LABEL_1589:
                  if (v1106 != 1)
                  {
                    goto LABEL_1736;
                  }

                  v906 = v1103;
                  v1103 = 0;
                  if (v906 && atomic_fetch_add_explicit(v906, 0xFFFFFFFE, memory_order_relaxed) == 2)
                  {
                    WTF::StringImpl::destroy(v906, v258);
                  }

                  if (v1100 == 1)
                  {
                    if (v1097[0] == 1)
                    {
                      v907 = *(&v1096 + 1);
                      *(&v1096 + 1) = 0;
                      if (v907)
                      {
                        if (atomic_fetch_add_explicit(v907, 0xFFFFFFFE, memory_order_relaxed) == 2)
                        {
                          WTF::StringImpl::destroy(v907, v258);
                        }
                      }
                    }

                    if (v1096 == 1)
                    {
                      v908 = *(&v1093 + 1);
                      *(&v1093 + 1) = 0;
                      if (v908)
                      {
                        if (atomic_fetch_add_explicit(v908, 0xFFFFFFFE, memory_order_relaxed) == 2)
                        {
                          WTF::StringImpl::destroy(v908, v258);
                        }
                      }
                    }
                  }

                  if (buf[88] == 1)
                  {
                    v909 = *&buf[80];
                    *&buf[80] = 0;
                    if (v909)
                    {
                      if (atomic_fetch_add_explicit(v909, 0xFFFFFFFE, memory_order_relaxed) == 2)
                      {
                        WTF::StringImpl::destroy(v909, v258);
                      }
                    }
                  }

                  v852 = *&buf[16];
                  *&buf[16] = 0;
                  if (!v852)
                  {
                    goto LABEL_1736;
                  }

                  goto LABEL_1727;
                }
              }

              else
              {
                buf[0] = 0;
                v1106 = 0;
              }

              v258 = *a3;
              v1026 = a3[1];
              *a3 = 0;
              a3[1] = 0;
              v1027 = a3[3];
              if (!v1027)
              {
                goto LABEL_1589;
              }

              if (!v1026)
              {
                goto LABEL_1589;
              }

              (*(*v1027 + 16))(v1027, v258);
              if ((v1106 & 1) == 0)
              {
                goto LABEL_1589;
              }

              goto LABEL_1577;
            }
          }
        }
      }

      v652 = qword_1ED6416C8;
      if (os_log_type_enabled(qword_1ED6416C8, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315138;
        *&buf[4] = "WebExtensionContext_TabsConnect";
        _os_log_error_impl(&dword_19D52D000, v652, OS_LOG_TYPE_ERROR, "Message %s fails validation", buf, 0xCu);
      }

      v636 = *a3;
      v637 = a3[1];
      *a3 = 0;
      a3[1] = 0;
      v638 = a3[3];
      if (!v638)
      {
        goto LABEL_1736;
      }

      goto LABEL_1966;
    case 0x7B2:
      v611 = this[10];
      if (v611)
      {
        if (v611[1])
        {
          v612 = this[5];
          if (v612)
          {
            if (v612 == a3[7])
            {
              IPC::ArgumentCoder<std::optional<WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,void>::decode<IPC::Decoder>(a3, v1107);
              if (v1107[16] & 1) != 0 || (v1008 = *a3, v1009 = a3[1], *a3 = 0, a3[1] = 0, (v1010 = a3[3]) != 0) && v1009 && ((*(*v1010 + 16))(v1010, v1008), (v1107[16]))
              {
                IPC::Decoder::decode<WebKit::WebExtensionTabParameters>(a3, &v1109);
                if (v1112 == 1)
                {
                  if ((v1107[16] & 1) == 0)
                  {
                    goto LABEL_1802;
                  }

                  *buf = *v1107;
                  std::__tuple_leaf<1ul,WebKit::WebExtensionTabParameters,false>::__tuple_leaf[abi:sn200100]<WebKit::WebExtensionTabParameters,0>(&buf[16], &v1109);
                  v1097[24] = 1;
                  if (v1112)
                  {
                    if (v1110[56] == 1)
                    {
                      v614 = *&v1110[48];
                      *&v1110[48] = 0;
                      if (v614)
                      {
                        if (atomic_fetch_add_explicit(v614, 0xFFFFFFFE, memory_order_relaxed) == 2)
                        {
                          WTF::StringImpl::destroy(v614, v613);
                        }
                      }
                    }

                    if (v1110[40] == 1)
                    {
                      v615 = *v1110;
                      *v1110 = 0;
                      if (v615)
                      {
                        if (atomic_fetch_add_explicit(v615, 0xFFFFFFFE, memory_order_relaxed) == 2)
                        {
                          WTF::StringImpl::destroy(v615, v613);
                        }
                      }
                    }
                  }
                }

                else
                {
                  buf[0] = 0;
                  v1097[24] = 0;
                }

                if (v1097[24])
                {
LABEL_1672:
                  v934 = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(a3);
                  if (v258)
                  {
                    a3 = v934;
                    while (1)
                    {
                      v935 = *a2;
                      if ((*a2 & 1) == 0)
                      {
                        break;
                      }

                      v936 = *a2;
                      atomic_compare_exchange_strong_explicit(a2, &v936, v935 + 2, memory_order_relaxed, memory_order_relaxed);
                      if (v936 == v935)
                      {
                        goto LABEL_1678;
                      }
                    }

                    WTF::ThreadSafeWeakPtrControlBlock::strongRef(*a2);
LABEL_1678:
                    v937 = WTF::fastMalloc(0x18);
                    *v937 = &unk_1F10F4180;
                    v937[1] = a3;
                    v937[2] = a2;
                    *&v1109 = v937;
                    if ((v1097[24] & 1) == 0)
                    {
                      goto LABEL_1802;
                    }

                    WebKit::WebExtensionContext::tabsCreate(this, *buf, buf[8], &buf[16], &v1109);
                    v938 = v1109;
                    *&v1109 = 0;
                    if (v938)
                    {
                      (*(*v938 + 8))(v938);
                    }
                  }

LABEL_1681:
                  if (v1097[24] != 1)
                  {
                    goto LABEL_1736;
                  }

                  if (buf[88] == 1)
                  {
                    v939 = *&buf[80];
                    *&buf[80] = 0;
                    if (v939)
                    {
                      if (atomic_fetch_add_explicit(v939, 0xFFFFFFFE, memory_order_relaxed) == 2)
                      {
                        WTF::StringImpl::destroy(v939, v258);
                      }
                    }
                  }

                  if (buf[72] != 1)
                  {
                    goto LABEL_1736;
                  }

LABEL_1687:
                  v852 = *&buf[32];
                  *&buf[32] = 0;
                  if (!v852)
                  {
                    goto LABEL_1736;
                  }

                  goto LABEL_1727;
                }
              }

              else
              {
                buf[0] = 0;
                v1097[24] = 0;
              }

              v258 = *a3;
              v1011 = a3[1];
              *a3 = 0;
              a3[1] = 0;
              v1012 = a3[3];
              if (!v1012)
              {
                goto LABEL_1681;
              }

              if (!v1011)
              {
                goto LABEL_1681;
              }

              (*(*v1012 + 16))(v1012, v258);
              if ((v1097[24] & 1) == 0)
              {
                goto LABEL_1681;
              }

              goto LABEL_1672;
            }
          }
        }
      }

      v662 = qword_1ED6416C8;
      if (os_log_type_enabled(qword_1ED6416C8, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315138;
        *&buf[4] = "WebExtensionContext_TabsCreate";
        _os_log_error_impl(&dword_19D52D000, v662, OS_LOG_TYPE_ERROR, "Message %s fails validation", buf, 0xCu);
      }

      v636 = *a3;
      v637 = a3[1];
      *a3 = 0;
      a3[1] = 0;
      v638 = a3[3];
      if (!v638)
      {
        goto LABEL_1736;
      }

      goto LABEL_1966;
    case 0x7B3:
      v171 = this[10];
      if (v171)
      {
        if (v171[1])
        {
          v172 = this[5];
          if (v172)
          {
            if (v172 == a3[7])
            {
              IPC::Decoder::decode<std::tuple<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,std::optional<WTF::ObjectIdentifierGeneric<WebKit::WebExtensionTabIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>>(buf, a3);
              if (buf[24] != 1)
              {
                goto LABEL_1736;
              }

              v173 = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(a3);
              if ((v174 & 1) == 0)
              {
                goto LABEL_1736;
              }

              v175 = v173;
              while (1)
              {
                v176 = *a2;
                if ((*a2 & 1) == 0)
                {
                  break;
                }

                v177 = *a2;
                atomic_compare_exchange_strong_explicit(a2, &v177, v176 + 2, memory_order_relaxed, memory_order_relaxed);
                if (v177 == v176)
                {
                  goto LABEL_1471;
                }
              }

              WTF::ThreadSafeWeakPtrControlBlock::strongRef(*a2);
LABEL_1471:
              v868 = WTF::fastMalloc(0x18);
              *v868 = &unk_1F10F42E8;
              v868[1] = v175;
              v868[2] = a2;
              *&v1109 = v868;
              WebKit::WebExtensionContext::tabsDetectLanguage(this, *buf, *&buf[8], buf[16], &v1109);
              v826 = v1109;
              *&v1109 = 0;
              if (!v826)
              {
                goto LABEL_1736;
              }

              goto LABEL_1794;
            }
          }
        }
      }

      v651 = qword_1ED6416C8;
      if (os_log_type_enabled(qword_1ED6416C8, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315138;
        *&buf[4] = "WebExtensionContext_TabsDetectLanguage";
        _os_log_error_impl(&dword_19D52D000, v651, OS_LOG_TYPE_ERROR, "Message %s fails validation", buf, 0xCu);
      }

      v636 = *a3;
      v637 = a3[1];
      *a3 = 0;
      a3[1] = 0;
      v638 = a3[3];
      if (!v638)
      {
        goto LABEL_1736;
      }

      goto LABEL_1966;
    case 0x7B4:
      v64 = this[10];
      if (v64)
      {
        if (v64[1])
        {
          v65 = this[5];
          if (v65)
          {
            if (v65 == a3[7])
            {
              v66 = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::RemoteVideoFrameIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>(a3);
              if (v67)
              {
                v68 = v66;
                IPC::Decoder::decode<WebKit::WebExtensionTabParameters>(a3, &v1109);
                if (v1112 == 1)
                {
                  *buf = v68;
                  std::__tuple_leaf<1ul,WebKit::WebExtensionTabParameters,false>::__tuple_leaf[abi:sn200100]<WebKit::WebExtensionTabParameters,0>(&buf[8], &v1109);
                  v1097[16] = 1;
                  if (v1112)
                  {
                    if (v1110[56] == 1)
                    {
                      v70 = *&v1110[48];
                      *&v1110[48] = 0;
                      if (v70)
                      {
                        if (atomic_fetch_add_explicit(v70, 0xFFFFFFFE, memory_order_relaxed) == 2)
                        {
                          WTF::StringImpl::destroy(v70, v69);
                        }
                      }
                    }

                    if (v1110[40] == 1)
                    {
                      v71 = *v1110;
                      *v1110 = 0;
                      if (v71)
                      {
                        if (atomic_fetch_add_explicit(v71, 0xFFFFFFFE, memory_order_relaxed) == 2)
                        {
                          WTF::StringImpl::destroy(v71, v69);
                        }
                      }
                    }
                  }
                }

                else
                {
                  buf[0] = 0;
                  v1097[16] = 0;
                }

                if (v1097[16])
                {
LABEL_1617:
                  v912 = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(a3);
                  if (v258)
                  {
                    a3 = v912;
                    while (1)
                    {
                      v913 = *a2;
                      if ((*a2 & 1) == 0)
                      {
                        break;
                      }

                      v914 = *a2;
                      atomic_compare_exchange_strong_explicit(a2, &v914, v913 + 2, memory_order_relaxed, memory_order_relaxed);
                      if (v914 == v913)
                      {
                        goto LABEL_1623;
                      }
                    }

                    WTF::ThreadSafeWeakPtrControlBlock::strongRef(*a2);
LABEL_1623:
                    v915 = WTF::fastMalloc(0x18);
                    *v915 = &unk_1F10F41D0;
                    v915[1] = a3;
                    v915[2] = a2;
                    *&v1109 = v915;
                    if ((v1097[16] & 1) == 0)
                    {
                      goto LABEL_1802;
                    }

                    WebKit::WebExtensionContext::tabsDuplicate(this, *buf, &buf[8], &v1109);
                    v916 = v1109;
                    *&v1109 = 0;
                    if (v916)
                    {
                      (*(*v916 + 8))(v916);
                    }
                  }

LABEL_1626:
                  if (v1097[16] != 1)
                  {
                    goto LABEL_1736;
                  }

                  if (buf[80] == 1)
                  {
                    v917 = *&buf[72];
                    *&buf[72] = 0;
                    if (v917)
                    {
                      if (atomic_fetch_add_explicit(v917, 0xFFFFFFFE, memory_order_relaxed) == 2)
                      {
                        WTF::StringImpl::destroy(v917, v258);
                      }
                    }
                  }

                  if (buf[64] != 1)
                  {
                    goto LABEL_1736;
                  }

                  v852 = *&buf[24];
                  *&buf[24] = 0;
                  if (!v852)
                  {
                    goto LABEL_1736;
                  }

                  goto LABEL_1727;
                }
              }

              else
              {
                buf[0] = 0;
                v1097[16] = 0;
              }

              v258 = *a3;
              v1031 = a3[1];
              *a3 = 0;
              a3[1] = 0;
              v1032 = a3[3];
              if (!v1032)
              {
                goto LABEL_1626;
              }

              if (!v1031)
              {
                goto LABEL_1626;
              }

              (*(*v1032 + 16))(v1032, v258);
              if ((v1097[16] & 1) == 0)
              {
                goto LABEL_1626;
              }

              goto LABEL_1617;
            }
          }
        }
      }

      v643 = qword_1ED6416C8;
      if (os_log_type_enabled(qword_1ED6416C8, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315138;
        *&buf[4] = "WebExtensionContext_TabsDuplicate";
        _os_log_error_impl(&dword_19D52D000, v643, OS_LOG_TYPE_ERROR, "Message %s fails validation", buf, 0xCu);
      }

      v636 = *a3;
      v637 = a3[1];
      *a3 = 0;
      a3[1] = 0;
      v638 = a3[3];
      if (!v638)
      {
        goto LABEL_1736;
      }

      goto LABEL_1966;
    case 0x7B5:
      v128 = this[10];
      if (!v128 || !v128[1] || (v129 = this[5]) == 0 || v129 != a3[7])
      {
        v649 = qword_1ED6416C8;
        if (os_log_type_enabled(qword_1ED6416C8, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315138;
          *&buf[4] = "WebExtensionContext_TabsExecuteScript";
          _os_log_error_impl(&dword_19D52D000, v649, OS_LOG_TYPE_ERROR, "Message %s fails validation", buf, 0xCu);
        }

        v636 = *a3;
        v637 = a3[1];
        *a3 = 0;
        a3[1] = 0;
        v638 = a3[3];
        if (!v638)
        {
          goto LABEL_1736;
        }

        goto LABEL_1966;
      }

      IPC::Decoder::decode<std::tuple<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,std::optional<WTF::ObjectIdentifierGeneric<WebKit::WebExtensionTabIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WebKit::WebExtensionScriptInjectionParameters>>(buf, a3);
      if (v1097[16] != 1)
      {
        goto LABEL_1478;
      }

      v130 = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(a3);
      if ((v74 & 1) == 0)
      {
        goto LABEL_1478;
      }

      a3 = v130;
      while (1)
      {
        v131 = *a2;
        if ((*a2 & 1) == 0)
        {
          break;
        }

        v132 = *a2;
        atomic_compare_exchange_strong_explicit(a2, &v132, v131 + 2, memory_order_relaxed, memory_order_relaxed);
        if (v132 == v131)
        {
          goto LABEL_1465;
        }
      }

      WTF::ThreadSafeWeakPtrControlBlock::strongRef(*a2);
LABEL_1465:
      v865 = WTF::fastMalloc(0x18);
      *v865 = &unk_1F10F4428;
      v865[1] = a3;
      v865[2] = a2;
      *&v1109 = v865;
      if ((v1097[16] & 1) == 0)
      {
        goto LABEL_1802;
      }

      WebKit::WebExtensionContext::tabsExecuteScript(this, *buf, *&buf[8], buf[16], &buf[24], &v1109);
      v866 = v1109;
      *&v1109 = 0;
      if (!v866)
      {
        goto LABEL_1478;
      }

      goto LABEL_1477;
    case 0x7B6:
      v548 = this[10];
      if (v548)
      {
        if (v548[1])
        {
          v549 = this[5];
          if (v549)
          {
            if (v549 == a3[7])
            {
              v550 = IPC::Decoder::decode<std::tuple<WTF::ObjectIdentifierGeneric<WebKit::AudioMediaStreamTrackRendererInternalUnitIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>(a3);
              if (v551)
              {
                v552 = v550;
                v553 = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(a3);
                if (v554)
                {
                  v555 = v553;
                  while (1)
                  {
                    v556 = *a2;
                    if ((*a2 & 1) == 0)
                    {
                      break;
                    }

                    v557 = *a2;
                    atomic_compare_exchange_strong_explicit(a2, &v557, v556 + 2, memory_order_relaxed, memory_order_relaxed);
                    if (v557 == v556)
                    {
                      goto LABEL_1485;
                    }
                  }

                  WTF::ThreadSafeWeakPtrControlBlock::strongRef(*a2);
LABEL_1485:
                  v872 = WTF::fastMalloc(0x18);
                  *v872 = &unk_1F10F41F8;
                  v872[1] = v555;
                  v872[2] = a2;
                  *buf = v872;
                  WebKit::WebExtensionContext::tabsGet(this, v552, buf);
                  goto LABEL_1488;
                }
              }

              goto LABEL_1736;
            }
          }
        }
      }

      v658 = qword_1ED6416C8;
      if (os_log_type_enabled(qword_1ED6416C8, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315138;
        *&buf[4] = "WebExtensionContext_TabsGet";
        _os_log_error_impl(&dword_19D52D000, v658, OS_LOG_TYPE_ERROR, "Message %s fails validation", buf, 0xCu);
      }

      v636 = *a3;
      v637 = a3[1];
      *a3 = 0;
      a3[1] = 0;
      v638 = a3[3];
      if (!v638)
      {
        goto LABEL_1736;
      }

      goto LABEL_1966;
    case 0x7B7:
      v572 = this[10];
      if (!v572 || !v572[1] || (v573 = this[5]) == 0 || v573 != a3[7])
      {
        v659 = qword_1ED6416C8;
        if (os_log_type_enabled(qword_1ED6416C8, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315138;
          *&buf[4] = "WebExtensionContext_TabsGetCurrent";
          _os_log_error_impl(&dword_19D52D000, v659, OS_LOG_TYPE_ERROR, "Message %s fails validation", buf, 0xCu);
        }

        v636 = *a3;
        v637 = a3[1];
        *a3 = 0;
        a3[1] = 0;
        v638 = a3[3];
        if (!v638)
        {
          goto LABEL_1736;
        }

        goto LABEL_1966;
      }

      v574 = IPC::Decoder::decode<std::tuple<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>(a3);
      if ((v575 & 1) == 0)
      {
        goto LABEL_1736;
      }

      v576 = v574;
      v577 = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(a3);
      if ((v578 & 1) == 0)
      {
        goto LABEL_1736;
      }

      v579 = v577;
      while (1)
      {
        v580 = *a2;
        if ((*a2 & 1) == 0)
        {
          break;
        }

        v581 = *a2;
        atomic_compare_exchange_strong_explicit(a2, &v581, v580 + 2, memory_order_relaxed, memory_order_relaxed);
        if (v581 == v580)
        {
          goto LABEL_1487;
        }
      }

      WTF::ThreadSafeWeakPtrControlBlock::strongRef(*a2);
LABEL_1487:
      v873 = WTF::fastMalloc(0x18);
      *v873 = &unk_1F10F4220;
      v873[1] = v579;
      v873[2] = a2;
      *buf = v873;
      WebKit::WebExtensionContext::tabsGetCurrent(this, v576, buf);
LABEL_1488:
      v826 = *buf;
      *buf = 0;
      if (!v826)
      {
        goto LABEL_1736;
      }

      goto LABEL_1794;
    case 0x7B8:
      v593 = this[10];
      if (v593)
      {
        if (v593[1])
        {
          v594 = this[5];
          if (v594)
          {
            if (v594 == a3[7])
            {
              IPC::Decoder::decode<std::tuple<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,std::optional<WTF::ObjectIdentifierGeneric<WebKit::WebExtensionTabIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>>(buf, a3);
              if (buf[24] != 1)
              {
                goto LABEL_1736;
              }

              v595 = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(a3);
              if ((v596 & 1) == 0)
              {
                goto LABEL_1736;
              }

              v597 = v595;
              while (1)
              {
                v598 = *a2;
                if ((*a2 & 1) == 0)
                {
                  break;
                }

                v599 = *a2;
                atomic_compare_exchange_strong_explicit(a2, &v599, v598 + 2, memory_order_relaxed, memory_order_relaxed);
                if (v599 == v598)
                {
                  goto LABEL_1491;
                }
              }

              WTF::ThreadSafeWeakPtrControlBlock::strongRef(*a2);
LABEL_1491:
              v874 = WTF::fastMalloc(0x18);
              *v874 = &unk_1F10F43B0;
              v874[1] = v597;
              v874[2] = a2;
              *&v1109 = v874;
              WebKit::WebExtensionContext::tabsGetZoom(this, *buf, *&buf[8], buf[16], &v1109);
              v826 = v1109;
              *&v1109 = 0;
              if (!v826)
              {
                goto LABEL_1736;
              }

              goto LABEL_1794;
            }
          }
        }
      }

      v660 = qword_1ED6416C8;
      if (os_log_type_enabled(qword_1ED6416C8, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315138;
        *&buf[4] = "WebExtensionContext_TabsGetZoom";
        _os_log_error_impl(&dword_19D52D000, v660, OS_LOG_TYPE_ERROR, "Message %s fails validation", buf, 0xCu);
      }

      v636 = *a3;
      v637 = a3[1];
      *a3 = 0;
      a3[1] = 0;
      v638 = a3[3];
      if (!v638)
      {
        goto LABEL_1736;
      }

      goto LABEL_1966;
    case 0x7B9:
      v148 = this[10];
      if (v148)
      {
        if (v148[1])
        {
          v149 = this[5];
          if (v149)
          {
            if (v149 == a3[7])
            {
              IPC::Decoder::decode<std::tuple<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,std::optional<WTF::ObjectIdentifierGeneric<WebKit::WebExtensionTabIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>>(buf, a3);
              if (buf[24] == 1)
              {
                v150 = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(a3);
                if (v151)
                {
                  v152 = v150;
                  while (1)
                  {
                    v153 = *a2;
                    if ((*a2 & 1) == 0)
                    {
                      break;
                    }

                    v154 = *a2;
                    atomic_compare_exchange_strong_explicit(a2, &v154, v153 + 2, memory_order_relaxed, memory_order_relaxed);
                    if (v154 == v153)
                    {
                      goto LABEL_1469;
                    }
                  }

                  WTF::ThreadSafeWeakPtrControlBlock::strongRef(*a2);
LABEL_1469:
                  v867 = WTF::fastMalloc(0x18);
                  *v867 = &unk_1F10F4298;
                  v867[1] = v152;
                  v867[2] = a2;
                  *&v1109 = v867;
                  WebKit::WebExtensionContext::tabsGoBack(this, *buf, *&buf[8], buf[16], &v1109);
                  goto LABEL_1666;
                }
              }

              goto LABEL_1736;
            }
          }
        }
      }

      v650 = qword_1ED6416C8;
      if (os_log_type_enabled(qword_1ED6416C8, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315138;
        *&buf[4] = "WebExtensionContext_TabsGoBack";
        _os_log_error_impl(&dword_19D52D000, v650, OS_LOG_TYPE_ERROR, "Message %s fails validation", buf, 0xCu);
      }

      v636 = *a3;
      v637 = a3[1];
      *a3 = 0;
      a3[1] = 0;
      v638 = a3[3];
      if (!v638)
      {
        goto LABEL_1736;
      }

      goto LABEL_1966;
    case 0x7BA:
      v379 = this[10];
      if (v379)
      {
        if (v379[1])
        {
          v380 = this[5];
          if (v380)
          {
            if (v380 == a3[7])
            {
              IPC::Decoder::decode<std::tuple<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,std::optional<WTF::ObjectIdentifierGeneric<WebKit::WebExtensionTabIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>>(buf, a3);
              if (buf[24] == 1)
              {
                v381 = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(a3);
                if (v382)
                {
                  v383 = v381;
                  while (1)
                  {
                    v384 = *a2;
                    if ((*a2 & 1) == 0)
                    {
                      break;
                    }

                    v385 = *a2;
                    atomic_compare_exchange_strong_explicit(a2, &v385, v384 + 2, memory_order_relaxed, memory_order_relaxed);
                    if (v385 == v384)
                    {
                      goto LABEL_1483;
                    }
                  }

                  WTF::ThreadSafeWeakPtrControlBlock::strongRef(*a2);
LABEL_1483:
                  v871 = WTF::fastMalloc(0x18);
                  *v871 = &unk_1F10F42C0;
                  v871[1] = v383;
                  v871[2] = a2;
                  *&v1109 = v871;
                  WebKit::WebExtensionContext::tabsGoForward(this, *buf, *&buf[8], buf[16], &v1109);
                  goto LABEL_1666;
                }
              }

              goto LABEL_1736;
            }
          }
        }
      }

      v656 = qword_1ED6416C8;
      if (os_log_type_enabled(qword_1ED6416C8, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315138;
        *&buf[4] = "WebExtensionContext_TabsGoForward";
        _os_log_error_impl(&dword_19D52D000, v656, OS_LOG_TYPE_ERROR, "Message %s fails validation", buf, 0xCu);
      }

      v636 = *a3;
      v637 = a3[1];
      *a3 = 0;
      a3[1] = 0;
      v638 = a3[3];
      if (!v638)
      {
        goto LABEL_1736;
      }

      goto LABEL_1966;
    case 0x7BB:
      v72 = this[10];
      if (v72)
      {
        if (v72[1])
        {
          v73 = this[5];
          if (v73)
          {
            if (v73 == a3[7])
            {
              IPC::Decoder::decode<std::tuple<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,std::optional<WTF::ObjectIdentifierGeneric<WebKit::WebExtensionTabIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WebKit::WebExtensionScriptInjectionParameters>>(buf, a3);
              if (v1097[16] != 1)
              {
                goto LABEL_1478;
              }

              v75 = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(a3);
              if ((v74 & 1) == 0)
              {
                goto LABEL_1478;
              }

              a3 = v75;
              while (1)
              {
                v76 = *a2;
                if ((*a2 & 1) == 0)
                {
                  break;
                }

                v77 = *a2;
                atomic_compare_exchange_strong_explicit(a2, &v77, v76 + 2, memory_order_relaxed, memory_order_relaxed);
                if (v77 == v76)
                {
                  goto LABEL_1462;
                }
              }

              WTF::ThreadSafeWeakPtrControlBlock::strongRef(*a2);
LABEL_1462:
              v864 = WTF::fastMalloc(0x18);
              *v864 = &unk_1F10F4450;
              v864[1] = a3;
              v864[2] = a2;
              *&v1109 = v864;
              if ((v1097[16] & 1) == 0)
              {
                goto LABEL_1802;
              }

              WebKit::WebExtensionContext::tabsInsertCSS(this, *buf, *&buf[8], buf[16], &buf[24], &v1109);
              goto LABEL_1476;
            }
          }
        }
      }

      v644 = qword_1ED6416C8;
      if (os_log_type_enabled(qword_1ED6416C8, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315138;
        *&buf[4] = "WebExtensionContext_TabsInsertCSS";
        _os_log_error_impl(&dword_19D52D000, v644, OS_LOG_TYPE_ERROR, "Message %s fails validation", buf, 0xCu);
      }

      v636 = *a3;
      v637 = a3[1];
      *a3 = 0;
      a3[1] = 0;
      v638 = a3[3];
      if (!v638)
      {
        goto LABEL_1736;
      }

      goto LABEL_1966;
    case 0x7BC:
      v604 = this[10];
      if (v604)
      {
        if (v604[1])
        {
          v605 = this[5];
          if (v605)
          {
            if (v605 == a3[7])
            {
              v606 = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(a3);
              if ((v607 & 1) == 0 || (v608 = v606, IPC::ArgumentCoder<WebKit::WebExtensionTabQueryParameters,void>::decode(a3, &v1109), (v1110[80] & 1) == 0) && ((v1037 = *a3, v1038 = a3[1], *a3 = 0, a3[1] = 0, (v1039 = a3[3]) == 0) || !v1038 || ((*(*v1039 + 16))(v1039, v1037), (v1110[80] & 1) == 0)))
              {
                buf[0] = 0;
                LOBYTE(v1093) = 0;
                v941 = *a3;
                v1040 = a3[1];
                *a3 = 0;
                a3[1] = 0;
                v1041 = a3[3];
                if (!v1041)
                {
                  goto LABEL_1700;
                }

                if (!v1040)
                {
                  goto LABEL_1700;
                }

                (*(*v1041 + 16))(v1041, v941);
                if ((v1093 & 1) == 0)
                {
                  goto LABEL_1700;
                }

                goto LABEL_1691;
              }

              *buf = v608;
              buf[8] = 0;
              buf[24] = 0;
              if (v1110[0] == 1)
              {
                v610 = *(&v1109 + 1);
                *&buf[8] = v1109;
                v1109 = 0uLL;
                *&buf[16] = v610;
                buf[24] = 1;
                buf[32] = 0;
                buf[40] = 0;
                if ((v1110[16] & 1) == 0)
                {
                  *&buf[48] = *&v1110[24];
                  *&buf[64] = *&v1110[40];
                  *&buf[80] = *&v1110[56];
                  *&buf[94] = *&v1110[70];
                  LOBYTE(v1093) = 1;
LABEL_1690:
                  WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v1109, v609);
LABEL_1691:
                  v940 = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(a3);
                  if (v941)
                  {
                    a3 = v940;
                    while (1)
                    {
                      v942 = *a2;
                      if ((*a2 & 1) == 0)
                      {
                        break;
                      }

                      v943 = *a2;
                      atomic_compare_exchange_strong_explicit(a2, &v943, v942 + 2, memory_order_relaxed, memory_order_relaxed);
                      if (v943 == v942)
                      {
                        goto LABEL_1697;
                      }
                    }

                    WTF::ThreadSafeWeakPtrControlBlock::strongRef(*a2);
LABEL_1697:
                    v944 = WTF::fastMalloc(0x18);
                    *v944 = &unk_1F10F4248;
                    v944[1] = a3;
                    v944[2] = a2;
                    *&v1109 = v944;
                    if ((v1093 & 1) == 0)
                    {
                      goto LABEL_1802;
                    }

                    WebKit::WebExtensionContext::tabsQuery(this, *buf, &buf[8], &v1109);
                    v945 = v1109;
                    *&v1109 = 0;
                    if (v945)
                    {
                      (*(*v945 + 8))(v945);
                    }
                  }

LABEL_1700:
                  if (v1093 == 1)
                  {
                    if (buf[40] == 1)
                    {
                      v946 = *&buf[32];
                      *&buf[32] = 0;
                      if (v946)
                      {
                        if (atomic_fetch_add_explicit(v946, 0xFFFFFFFE, memory_order_relaxed) == 2)
                        {
                          WTF::StringImpl::destroy(v946, v941);
                        }
                      }
                    }

                    if (buf[24] == 1)
                    {
                      WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&buf[8], v941);
                    }
                  }

                  goto LABEL_1736;
                }
              }

              else
              {
                buf[32] = 0;
                buf[40] = 0;
                if ((v1110[16] & 1) == 0)
                {
                  *&buf[48] = *&v1110[24];
                  *&buf[64] = *&v1110[40];
                  *&buf[80] = *&v1110[56];
                  *&buf[94] = *&v1110[70];
                  LOBYTE(v1093) = 1;
                  goto LABEL_1691;
                }
              }

              *&buf[32] = *&v1110[8];
              buf[40] = 1;
              *&buf[48] = *&v1110[24];
              *&buf[64] = *&v1110[40];
              *&buf[80] = *&v1110[56];
              *&buf[94] = *&v1110[70];
              LOBYTE(v1093) = 1;
              *&v1110[8] = 0;
              if (!v1110[0])
              {
                goto LABEL_1691;
              }

              goto LABEL_1690;
            }
          }
        }
      }

      v661 = qword_1ED6416C8;
      if (os_log_type_enabled(qword_1ED6416C8, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315138;
        *&buf[4] = "WebExtensionContext_TabsQuery";
        _os_log_error_impl(&dword_19D52D000, v661, OS_LOG_TYPE_ERROR, "Message %s fails validation", buf, 0xCu);
      }

      v636 = *a3;
      v637 = a3[1];
      *a3 = 0;
      a3[1] = 0;
      v638 = a3[3];
      if (!v638)
      {
        goto LABEL_1736;
      }

      goto LABEL_1966;
    case 0x7BD:
      v48 = this[10];
      if (v48)
      {
        if (v48[1])
        {
          v49 = this[5];
          if (v49)
          {
            if (v49 == a3[7])
            {
              v50 = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(a3);
              if ((v51 & 1) == 0)
              {
                goto LABEL_1957;
              }

              v52 = v50;
              IPC::Decoder::decode<std::optional<WTF::ObjectIdentifierGeneric<WebKit::WebExtensionTabIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>(a3, buf);
              if (buf[16] != 1)
              {
                goto LABEL_1957;
              }

              v53 = a3[1];
              v54 = a3[2];
              v55 = *a3;
              if (v53 <= v54 - *a3)
              {
                *a3 = 0;
                a3[1] = 0;
                v1077 = a3[3];
                if (v1077)
                {
                  if (v53)
                  {
                    (*(*v1077 + 16))(v1077);
                    v53 = a3[1];
                  }
                }

                else
                {
                  v53 = 0;
                }
              }

              else
              {
                a3[2] = v54 + 1;
                if (v54)
                {
                  v56 = *v54;
                  if (v56 < 2)
                  {
                    v57 = *buf;
                    v58 = buf[8];
                    v59 = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(a3);
                    if ((v60 & 1) == 0)
                    {
                      goto LABEL_1736;
                    }

                    v61 = v59;
                    while (1)
                    {
                      v62 = *a2;
                      if ((*a2 & 1) == 0)
                      {
                        break;
                      }

                      v63 = *a2;
                      atomic_compare_exchange_strong_explicit(a2, &v63, v62 + 2, memory_order_relaxed, memory_order_relaxed);
                      if (v63 == v62)
                      {
                        goto LABEL_1739;
                      }
                    }

                    WTF::ThreadSafeWeakPtrControlBlock::strongRef(*a2);
LABEL_1739:
                    v957 = WTF::fastMalloc(0x18);
                    *v957 = &unk_1F10F4270;
                    v957[1] = v61;
                    v957[2] = a2;
                    *buf = v957;
                    WebKit::WebExtensionContext::tabsReload(this, v52, v57, v58, v56 & 1, buf);
                    goto LABEL_1793;
                  }

                  goto LABEL_1956;
                }
              }

              *a3 = 0;
              a3[1] = 0;
              v1078 = a3[3];
              if (v1078)
              {
                if (v53)
                {
                  (*(*v1078 + 16))(v1078);
                  v55 = *a3;
                  v53 = a3[1];
                  goto LABEL_1956;
                }
              }

              else
              {
                v53 = 0;
              }

              v55 = 0;
LABEL_1956:
              *a3 = 0;
              a3[1] = 0;
              v1079 = a3[3];
              if (v1079)
              {
                if (v53)
                {
                  (*(*v1079 + 16))(v1079, v55);
                  v1087 = a3[3];
                  v1088 = *a3;
                  v1089 = a3[1];
                  *a3 = 0;
                  a3[1] = 0;
                  if (v1087)
                  {
                    if (v1089)
                    {
                      (*(*v1087 + 16))(v1087, v1088);
                    }
                  }
                }
              }

LABEL_1957:
              v636 = *a3;
              v637 = a3[1];
              *a3 = 0;
              a3[1] = 0;
              v638 = a3[3];
              if (!v638)
              {
                goto LABEL_1736;
              }

              goto LABEL_1966;
            }
          }
        }
      }

      v642 = qword_1ED6416C8;
      if (os_log_type_enabled(qword_1ED6416C8, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315138;
        *&buf[4] = "WebExtensionContext_TabsReload";
        _os_log_error_impl(&dword_19D52D000, v642, OS_LOG_TYPE_ERROR, "Message %s fails validation", buf, 0xCu);
      }

      v636 = *a3;
      v637 = a3[1];
      *a3 = 0;
      a3[1] = 0;
      v638 = a3[3];
      if (!v638)
      {
        goto LABEL_1736;
      }

      goto LABEL_1966;
    case 0x7BE:
      v119 = this[10];
      if (!v119 || !v119[1] || (v120 = this[5]) == 0 || v120 != a3[7])
      {
        v648 = qword_1ED6416C8;
        if (os_log_type_enabled(qword_1ED6416C8, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315138;
          *&buf[4] = "WebExtensionContext_TabsRemove";
          _os_log_error_impl(&dword_19D52D000, v648, OS_LOG_TYPE_ERROR, "Message %s fails validation", buf, 0xCu);
        }

        v636 = *a3;
        v637 = a3[1];
        *a3 = 0;
        a3[1] = 0;
        v638 = a3[3];
        if (!v638)
        {
          goto LABEL_1736;
        }

        goto LABEL_1966;
      }

      IPC::Decoder::decode<WTF::Vector<WTF::ObjectIdentifierGeneric<WebKit::WebExtensionTabIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>(a3, buf);
      if ((buf[16] & 1) == 0)
      {
        v636 = *a3;
        v637 = a3[1];
        *a3 = 0;
        a3[1] = 0;
        v638 = a3[3];
        if (!v638)
        {
          goto LABEL_1736;
        }

        goto LABEL_1966;
      }

      v121 = *buf;
      v122 = *&buf[8];
      v123 = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(a3);
      if (v124)
      {
        v125 = v123;
        while (1)
        {
          v126 = *a2;
          if ((*a2 & 1) == 0)
          {
            break;
          }

          v127 = *a2;
          atomic_compare_exchange_strong_explicit(a2, &v127, v126 + 2, memory_order_relaxed, memory_order_relaxed);
          if (v127 == v126)
          {
            goto LABEL_1664;
          }
        }

        WTF::ThreadSafeWeakPtrControlBlock::strongRef(*a2);
LABEL_1664:
        v931 = WTF::fastMalloc(0x18);
        *v931 = &unk_1F10F4400;
        v931[1] = v125;
        v931[2] = a2;
        *&v1109 = v931;
        *buf = v121;
        *&buf[8] = v122;
        WebKit::WebExtensionContext::tabsRemove(this, buf, &v1109);
        v933 = *buf;
        if (*buf)
        {
          *buf = 0;
          *&buf[8] = 0;
          WTF::fastFree(v933, v932);
        }

        goto LABEL_1666;
      }

      if (v121)
      {
        WTF::fastFree(v121, v124);
      }

      goto LABEL_1736;
    case 0x7BF:
      v251 = this[10];
      if (!v251 || !v251[1] || (v252 = this[5]) == 0 || v252 != a3[7])
      {
        v654 = qword_1ED6416C8;
        if (os_log_type_enabled(qword_1ED6416C8, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315138;
          *&buf[4] = "WebExtensionContext_TabsRemoveCSS";
          _os_log_error_impl(&dword_19D52D000, v654, OS_LOG_TYPE_ERROR, "Message %s fails validation", buf, 0xCu);
        }

        v636 = *a3;
        v637 = a3[1];
        *a3 = 0;
        a3[1] = 0;
        v638 = a3[3];
        if (!v638)
        {
          goto LABEL_1736;
        }

        goto LABEL_1966;
      }

      IPC::Decoder::decode<std::tuple<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,std::optional<WTF::ObjectIdentifierGeneric<WebKit::WebExtensionTabIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WebKit::WebExtensionScriptInjectionParameters>>(buf, a3);
      if (v1097[16] != 1)
      {
        goto LABEL_1478;
      }

      v253 = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(a3);
      if ((v74 & 1) == 0)
      {
        goto LABEL_1478;
      }

      a3 = v253;
      while (1)
      {
        v254 = *a2;
        if ((*a2 & 1) == 0)
        {
          break;
        }

        v255 = *a2;
        atomic_compare_exchange_strong_explicit(a2, &v255, v254 + 2, memory_order_relaxed, memory_order_relaxed);
        if (v255 == v254)
        {
          goto LABEL_1474;
        }
      }

      WTF::ThreadSafeWeakPtrControlBlock::strongRef(*a2);
LABEL_1474:
      v869 = WTF::fastMalloc(0x18);
      *v869 = &unk_1F10F4478;
      v869[1] = a3;
      v869[2] = a2;
      *&v1109 = v869;
      if ((v1097[16] & 1) == 0)
      {
        goto LABEL_1802;
      }

      WebKit::WebExtensionContext::tabsRemoveCSS(this, *buf, *&buf[8], buf[16], &buf[24], &v1109);
LABEL_1476:
      v866 = v1109;
      *&v1109 = 0;
      if (!v866)
      {
        goto LABEL_1478;
      }

LABEL_1477:
      (*(*v866 + 8))(v866);
LABEL_1478:
      if (v1097[16] == 1)
      {
        WebKit::WebExtensionScriptInjectionParameters::~WebExtensionScriptInjectionParameters(&buf[24], v74);
      }

      goto LABEL_1736;
    case 0x7C0:
      v237 = this[10];
      if (v237)
      {
        if (v237[1])
        {
          v238 = this[5];
          if (v238)
          {
            if (v238 == a3[7])
            {
              v239 = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::RemoteVideoFrameIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>(a3);
              if (v240)
              {
                v241 = v239;
                IPC::ArgumentCoder<WTF::String,void>::decode<IPC::Decoder>(a3, v1090);
                if (v1090[1] & 1) != 0 || (v1065 = *a3, v1066 = a3[1], *a3 = 0, a3[1] = 0, (v1067 = a3[3]) != 0) && v1066 && ((*(*v1067 + 16))(v1067, v1065), (v1090[1]))
                {
                  IPC::Decoder::decode<WebKit::WebExtensionMessageTargetParameters>(v1107, a3);
                  if ((v1108 & 1) != 0 && (IPC::Decoder::decode<WebKit::WebExtensionMessageSenderParameters>(&v1109, a3), v1115 == 1))
                  {
                    if ((v1090[1] & 1) == 0)
                    {
                      goto LABEL_1802;
                    }

                    v243 = v1090[0];
                    v1090[0] = 0;
                    *buf = v241;
                    *&buf[8] = v243;
                    *&buf[16] = *v1107;
                    *&buf[32] = *&v1107[16];
                    *&buf[48] = *&v1107[32];
                    std::__tuple_leaf<3ul,WebKit::WebExtensionMessageSenderParameters,false>::__tuple_leaf[abi:sn200100]<WebKit::WebExtensionMessageSenderParameters,0>(&buf[64], &v1109);
                    v1105 = 1;
                    if (v1115)
                    {
                      v244 = v1114;
                      v1114 = 0;
                      if (v244 && atomic_fetch_add_explicit(v244, 0xFFFFFFFE, memory_order_relaxed) == 2)
                      {
                        WTF::StringImpl::destroy(v244, v242);
                      }

                      if (v1113 == 1)
                      {
                        if (v1110[72] == 1)
                        {
                          v245 = *&v1110[64];
                          *&v1110[64] = 0;
                          if (v245)
                          {
                            if (atomic_fetch_add_explicit(v245, 0xFFFFFFFE, memory_order_relaxed) == 2)
                            {
                              WTF::StringImpl::destroy(v245, v242);
                            }
                          }
                        }

                        if (v1110[56] == 1)
                        {
                          v246 = *&v1110[16];
                          *&v1110[16] = 0;
                          if (v246)
                          {
                            if (atomic_fetch_add_explicit(v246, 0xFFFFFFFE, memory_order_relaxed) == 2)
                            {
                              WTF::StringImpl::destroy(v246, v242);
                            }
                          }
                        }
                      }

                      if (BYTE8(v1109) == 1)
                      {
                        v247 = v1109;
                        *&v1109 = 0;
                        if (v247)
                        {
                          if (atomic_fetch_add_explicit(v247, 0xFFFFFFFE, memory_order_relaxed) == 2)
                          {
                            WTF::StringImpl::destroy(v247, v242);
                          }
                        }
                      }
                    }
                  }

                  else
                  {
                    buf[0] = 0;
                    v1105 = 0;
                  }

                  if (v1090[1])
                  {
                    v888 = v1090[0];
                    v1090[0] = 0;
                    if (v888)
                    {
                      if (atomic_fetch_add_explicit(v888, 0xFFFFFFFE, memory_order_relaxed) == 2)
                      {
                        WTF::StringImpl::destroy(v888, v242);
                      }
                    }
                  }
                }

                else
                {
                  buf[0] = 0;
                  v1105 = 0;
                }

                if (v1105)
                {
LABEL_1543:
                  v889 = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(a3);
                  if (v258)
                  {
                    a3 = v889;
                    while (1)
                    {
                      v890 = *a2;
                      if ((*a2 & 1) == 0)
                      {
                        break;
                      }

                      v891 = *a2;
                      atomic_compare_exchange_strong_explicit(a2, &v891, v890 + 2, memory_order_relaxed, memory_order_relaxed);
                      if (v891 == v890)
                      {
                        goto LABEL_1549;
                      }
                    }

                    WTF::ThreadSafeWeakPtrControlBlock::strongRef(*a2);
LABEL_1549:
                    v892 = WTF::fastMalloc(0x18);
                    *v892 = &unk_1F10F4360;
                    v892[1] = a3;
                    v892[2] = a2;
                    *&v1109 = v892;
                    if ((v1105 & 1) == 0)
                    {
                      goto LABEL_1802;
                    }

                    WebKit::WebExtensionContext::tabsSendMessage(this, *buf, &buf[8], &buf[16], &buf[64], &v1109);
                    v893 = v1109;
                    *&v1109 = 0;
                    if (v893)
                    {
                      (*(*v893 + 8))(v893);
                    }
                  }

LABEL_1552:
                  if (v1105 != 1)
                  {
                    goto LABEL_1736;
                  }

                  v894 = v1101;
                  v1101 = 0;
                  if (v894 && atomic_fetch_add_explicit(v894, 0xFFFFFFFE, memory_order_relaxed) == 2)
                  {
                    WTF::StringImpl::destroy(v894, v258);
                  }

                  if (v1099 == 1)
                  {
                    if (v1096 == 1)
                    {
                      v895 = *(&v1095 + 1);
                      *(&v1095 + 1) = 0;
                      if (v895)
                      {
                        if (atomic_fetch_add_explicit(v895, 0xFFFFFFFE, memory_order_relaxed) == 2)
                        {
                          WTF::StringImpl::destroy(v895, v258);
                        }
                      }
                    }

                    if (v1095 == 1)
                    {
                      v896 = *&buf[96];
                      *&buf[96] = 0;
                      if (v896)
                      {
                        if (atomic_fetch_add_explicit(v896, 0xFFFFFFFE, memory_order_relaxed) == 2)
                        {
                          WTF::StringImpl::destroy(v896, v258);
                        }
                      }
                    }
                  }

                  if (buf[72] == 1)
                  {
                    v897 = *&buf[64];
                    *&buf[64] = 0;
                    if (v897)
                    {
                      if (atomic_fetch_add_explicit(v897, 0xFFFFFFFE, memory_order_relaxed) == 2)
                      {
                        WTF::StringImpl::destroy(v897, v258);
                      }
                    }
                  }

                  v852 = *&buf[8];
                  *&buf[8] = 0;
                  if (!v852)
                  {
                    goto LABEL_1736;
                  }

                  goto LABEL_1727;
                }
              }

              else
              {
                buf[0] = 0;
                v1105 = 0;
              }

              v258 = *a3;
              v1035 = a3[1];
              *a3 = 0;
              a3[1] = 0;
              v1036 = a3[3];
              if (!v1036)
              {
                goto LABEL_1552;
              }

              if (!v1035)
              {
                goto LABEL_1552;
              }

              (*(*v1036 + 16))(v1036, v258);
              if ((v1105 & 1) == 0)
              {
                goto LABEL_1552;
              }

              goto LABEL_1543;
            }
          }
        }
      }

      v653 = qword_1ED6416C8;
      if (os_log_type_enabled(qword_1ED6416C8, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315138;
        *&buf[4] = "WebExtensionContext_TabsSendMessage";
        _os_log_error_impl(&dword_19D52D000, v653, OS_LOG_TYPE_ERROR, "Message %s fails validation", buf, 0xCu);
      }

      v636 = *a3;
      v637 = a3[1];
      *a3 = 0;
      a3[1] = 0;
      v638 = a3[3];
      if (!v638)
      {
        goto LABEL_1736;
      }

      goto LABEL_1966;
    case 0x7C1:
      v24 = this[10];
      if (!v24 || !v24[1] || (v25 = this[5]) == 0 || v25 != a3[7])
      {
        v640 = qword_1ED6416C8;
        if (os_log_type_enabled(qword_1ED6416C8, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315138;
          *&buf[4] = "WebExtensionContext_TabsSetZoom";
          _os_log_error_impl(&dword_19D52D000, v640, OS_LOG_TYPE_ERROR, "Message %s fails validation", buf, 0xCu);
        }

        v636 = *a3;
        v637 = a3[1];
        *a3 = 0;
        a3[1] = 0;
        v638 = a3[3];
        if (!v638)
        {
          goto LABEL_1736;
        }

        goto LABEL_1966;
      }

      v26 = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(a3);
      if ((v27 & 1) == 0 || (v28 = v26, IPC::Decoder::decode<std::optional<WTF::ObjectIdentifierGeneric<WebKit::WebExtensionTabIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>(a3, buf), buf[16] != 1) || (v29 = IPC::Decoder::decode<unsigned long long>(a3), (v30 & 1) == 0))
      {
        v636 = *a3;
        v637 = a3[1];
        *a3 = 0;
        a3[1] = 0;
        v638 = a3[3];
        if (!v638)
        {
          goto LABEL_1736;
        }

        goto LABEL_1966;
      }

      if ((buf[16] & 1) == 0)
      {
        goto LABEL_1802;
      }

      v31 = *&v29;
      v32 = *buf;
      v33 = buf[8];
      v34 = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(a3);
      if (v35)
      {
        v36 = v34;
        while (1)
        {
          v37 = *a2;
          if ((*a2 & 1) == 0)
          {
            break;
          }

          v38 = *a2;
          atomic_compare_exchange_strong_explicit(a2, &v38, v37 + 2, memory_order_relaxed, memory_order_relaxed);
          if (v38 == v37)
          {
            goto LABEL_1792;
          }
        }

        WTF::ThreadSafeWeakPtrControlBlock::strongRef(*a2);
LABEL_1792:
        v991 = WTF::fastMalloc(0x18);
        *v991 = &unk_1F10F43D8;
        v991[1] = v36;
        v991[2] = a2;
        *buf = v991;
        WebKit::WebExtensionContext::tabsSetZoom(this, v28, v32, v33, buf, v31);
        goto LABEL_1793;
      }

      goto LABEL_1736;
    case 0x7C2:
      v17 = this[10];
      if (!v17 || !v17[1] || (v18 = this[5]) == 0 || v18 != a3[7])
      {
        v639 = qword_1ED6416C8;
        if (os_log_type_enabled(qword_1ED6416C8, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315138;
          *&buf[4] = "WebExtensionContext_TabsToggleReaderMode";
          _os_log_error_impl(&dword_19D52D000, v639, OS_LOG_TYPE_ERROR, "Message %s fails validation", buf, 0xCu);
        }

        v636 = *a3;
        v637 = a3[1];
        *a3 = 0;
        a3[1] = 0;
        v638 = a3[3];
        if (!v638)
        {
          goto LABEL_1736;
        }

        goto LABEL_1966;
      }

      IPC::Decoder::decode<std::tuple<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,std::optional<WTF::ObjectIdentifierGeneric<WebKit::WebExtensionTabIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>>(buf, a3);
      if (buf[24] != 1)
      {
        goto LABEL_1736;
      }

      v19 = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(a3);
      if ((v20 & 1) == 0)
      {
        goto LABEL_1736;
      }

      v21 = v19;
      while (1)
      {
        v22 = *a2;
        if ((*a2 & 1) == 0)
        {
          break;
        }

        v23 = *a2;
        atomic_compare_exchange_strong_explicit(a2, &v23, v22 + 2, memory_order_relaxed, memory_order_relaxed);
        if (v23 == v22)
        {
          goto LABEL_1456;
        }
      }

      WTF::ThreadSafeWeakPtrControlBlock::strongRef(*a2);
LABEL_1456:
      v862 = WTF::fastMalloc(0x18);
      *v862 = &unk_1F10F4310;
      v862[1] = v21;
      v862[2] = a2;
      *&v1109 = v862;
      WebKit::WebExtensionContext::tabsToggleReaderMode(this, *buf, *&buf[8], buf[16], &v1109);
LABEL_1666:
      v826 = v1109;
      *&v1109 = 0;
      if (v826)
      {
        goto LABEL_1794;
      }

      goto LABEL_1736;
    case 0x7C3:
      v471 = this[10];
      if (v471)
      {
        if (v471[1])
        {
          v472 = this[5];
          if (v472)
          {
            if (v472 == a3[7])
            {
              v473 = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(a3);
              if ((v474 & 1) == 0)
              {
                goto LABEL_1167;
              }

              v475 = v473;
              IPC::Decoder::decode<std::optional<WTF::ObjectIdentifierGeneric<WebKit::WebExtensionTabIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>(a3, v1107);
              if ((v1107[16] & 1) == 0)
              {
                goto LABEL_1167;
              }

              IPC::Decoder::decode<WebKit::WebExtensionTabParameters>(a3, &v1109);
              if (v1112 != 1)
              {
                goto LABEL_1167;
              }

              if ((v1107[16] & 1) == 0)
              {
                goto LABEL_1802;
              }

              *buf = v475;
              *&buf[8] = *v1107;
              *&buf[24] = v1109;
              buf[40] = 0;
              buf[80] = 0;
              if (v1110[40] == 1)
              {
                v477 = *v1110;
                *v1110 = 0;
                *&buf[40] = v477;
                *&buf[48] = *&v1110[8];
                *&buf[64] = *&v1110[24];
                *&v1110[8] &= ~1u;
                buf[80] = 1;
              }

              buf[88] = 0;
              buf[96] = 0;
              v478 = v1110[56];
              v1095 = *&v1110[96];
              v1096 = *&v1110[112];
              *v1097 = *v1111;
              *&v1097[10] = *&v1111[10];
              v1093 = *&v1110[64];
              if (v1110[56])
              {
                *&buf[88] = *&v1110[48];
                buf[96] = 1;
                v1094 = *&v1110[80];
                *&v1110[48] = 0;
              }

              else
              {
                v1094 = *&v1110[80];
              }

              v1098 = 1;
              if (v1110[40])
              {
                v947 = *v1110;
                *v1110 = 0;
                if (v947)
                {
                  if (atomic_fetch_add_explicit(v947, 0xFFFFFFFE, memory_order_relaxed) == 2)
                  {
                    WTF::StringImpl::destroy(v947, v476);
                  }
                }
              }

              v948 = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(a3);
              if (v258)
              {
                v949 = v948;
                while (1)
                {
                  v950 = *a2;
                  if ((*a2 & 1) == 0)
                  {
                    break;
                  }

                  v951 = *a2;
                  atomic_compare_exchange_strong_explicit(a2, &v951, v950 + 2, memory_order_relaxed, memory_order_relaxed);
                  if (v951 == v950)
                  {
                    goto LABEL_1718;
                  }
                }

                WTF::ThreadSafeWeakPtrControlBlock::strongRef(*a2);
LABEL_1718:
                v952 = WTF::fastMalloc(0x18);
                *v952 = &unk_1F10F41A8;
                v952[1] = v949;
                v952[2] = a2;
                *&v1109 = v952;
                WebKit::WebExtensionContext::tabsUpdate(this, v475, *&buf[8], buf[16], &buf[24], &v1109);
                v953 = v1109;
                *&v1109 = 0;
                if (v953)
                {
                  (*(*v953 + 8))(v953);
                }

                if ((v1098 & 1) == 0)
                {
                  goto LABEL_1736;
                }

                if ((buf[96] & 1) == 0)
                {
LABEL_1725:
                  if (buf[80] != 1)
                  {
                    goto LABEL_1736;
                  }

                  v852 = *&buf[40];
                  *&buf[40] = 0;
                  if (!v852)
                  {
                    goto LABEL_1736;
                  }

                  goto LABEL_1727;
                }
              }

              else if (!v478)
              {
                goto LABEL_1725;
              }

              v954 = *&buf[88];
              *&buf[88] = 0;
              if (v954 && atomic_fetch_add_explicit(v954, 0xFFFFFFFE, memory_order_relaxed) == 2)
              {
                WTF::StringImpl::destroy(v954, v258);
              }

              goto LABEL_1725;
            }
          }
        }
      }

      v657 = qword_1ED6416C8;
      if (os_log_type_enabled(qword_1ED6416C8, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315138;
        *&buf[4] = "WebExtensionContext_TabsUpdate";
        _os_log_error_impl(&dword_19D52D000, v657, OS_LOG_TYPE_ERROR, "Message %s fails validation", buf, 0xCu);
      }

      v636 = *a3;
      v637 = a3[1];
      *a3 = 0;
      a3[1] = 0;
      v638 = a3[3];
      if (!v638)
      {
        goto LABEL_1736;
      }

      goto LABEL_1966;
    case 0x7C4:
      if (WebKit::WebExtensionContext::isWebNavigationMessageAllowed(this, a3))
      {
        v486 = IPC::Decoder::decode<std::tuple<WTF::ObjectIdentifierGeneric<WebKit::AudioMediaStreamTrackRendererInternalUnitIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>(a3);
        if ((v487 & 1) == 0)
        {
          goto LABEL_1736;
        }

        v488 = v486;
        v489 = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(a3);
        if ((v490 & 1) == 0)
        {
          goto LABEL_1736;
        }

        v491 = v489;
        while (1)
        {
          v492 = *a2;
          if ((*a2 & 1) == 0)
          {
            break;
          }

          v493 = *a2;
          atomic_compare_exchange_strong_explicit(a2, &v493, v492 + 2, memory_order_relaxed, memory_order_relaxed);
          if (v493 == v492)
          {
            goto LABEL_1278;
          }
        }

        WTF::ThreadSafeWeakPtrControlBlock::strongRef(*a2);
LABEL_1278:
        v801 = WTF::fastMalloc(0x18);
        *v801 = &unk_1F10F44A0;
        v801[1] = v491;
        v801[2] = a2;
        *buf = v801;
        WebKit::WebExtensionContext::webNavigationGetAllFrames(this, v488, buf);
        v766 = *buf;
        *buf = 0;
        if (!v766)
        {
          goto LABEL_1735;
        }

        goto LABEL_1734;
      }

      v746 = qword_1ED6416C8;
      if (os_log_type_enabled(qword_1ED6416C8, OS_LOG_TYPE_ERROR))
      {
        v976 = *(a3 + 25);
        if (v976 >= 0x107F)
        {
          v976 = 4223;
        }

        v977 = (&IPC::Detail::messageDescriptions)[3 * v976];
        *buf = 136315138;
        *&buf[4] = v977;
        _os_log_error_impl(&dword_19D52D000, v746, OS_LOG_TYPE_ERROR, "Message %s fails validation", buf, 0xCu);
      }

      v636 = *a3;
      v637 = a3[1];
      *a3 = 0;
      a3[1] = 0;
      v638 = a3[3];
      if (!v638)
      {
        goto LABEL_1736;
      }

      goto LABEL_1966;
    case 0x7C5:
      if (WebKit::WebExtensionContext::isWebNavigationMessageAllowed(this, a3))
      {
        v582 = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::RemoteVideoFrameIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>(a3);
        if ((v583 & 1) == 0 || (v584 = v582, v585 = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::RemoteVideoFrameIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>(a3), (v586 & 1) == 0))
        {
          v636 = *a3;
          v637 = a3[1];
          *a3 = 0;
          a3[1] = 0;
          v638 = a3[3];
          if (!v638)
          {
            goto LABEL_1736;
          }

          goto LABEL_1966;
        }

        v587 = v585;
        v588 = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(a3);
        if ((v589 & 1) == 0)
        {
          goto LABEL_1736;
        }

        v590 = v588;
        while (1)
        {
          v591 = *a2;
          if ((*a2 & 1) == 0)
          {
            break;
          }

          v592 = *a2;
          atomic_compare_exchange_strong_explicit(a2, &v592, v591 + 2, memory_order_relaxed, memory_order_relaxed);
          if (v592 == v591)
          {
            goto LABEL_1611;
          }
        }

        WTF::ThreadSafeWeakPtrControlBlock::strongRef(*a2);
LABEL_1611:
        v911 = WTF::fastMalloc(0x18);
        *v911 = &unk_1F10F44C8;
        v911[1] = v590;
        v911[2] = a2;
        *buf = v911;
        WebKit::WebExtensionContext::webNavigationGetFrame(this, v584, v587, buf);
        v766 = *buf;
        *buf = 0;
        if (!v766)
        {
          goto LABEL_1735;
        }

        goto LABEL_1734;
      }

      v763 = qword_1ED6416C8;
      if (os_log_type_enabled(qword_1ED6416C8, OS_LOG_TYPE_ERROR))
      {
        v988 = *(a3 + 25);
        if (v988 >= 0x107F)
        {
          v988 = 4223;
        }

        v989 = (&IPC::Detail::messageDescriptions)[3 * v988];
        *buf = 136315138;
        *&buf[4] = v989;
        _os_log_error_impl(&dword_19D52D000, v763, OS_LOG_TYPE_ERROR, "Message %s fails validation", buf, 0xCu);
      }

      v636 = *a3;
      v637 = a3[1];
      *a3 = 0;
      a3[1] = 0;
      v638 = a3[3];
      if (!v638)
      {
        goto LABEL_1736;
      }

      goto LABEL_1966;
    case 0x7C6:
      v93 = this[10];
      if (!v93 || !v93[1] || (v94 = this[5]) == 0 || v94 != a3[7])
      {
        v646 = qword_1ED6416C8;
        if (os_log_type_enabled(qword_1ED6416C8, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315138;
          *&buf[4] = "WebExtensionContext_WindowsCreate";
          _os_log_error_impl(&dword_19D52D000, v646, OS_LOG_TYPE_ERROR, "Message %s fails validation", buf, 0xCu);
        }

        v636 = *a3;
        v637 = a3[1];
        *a3 = 0;
        a3[1] = 0;
        v638 = a3[3];
        if (!v638)
        {
          goto LABEL_1736;
        }

LABEL_1966:
        if (!v637)
        {
LABEL_1736:
          CFRelease(this[1]);
          return;
        }

LABEL_1967:
        (*(*v638 + 16))(v638, v636);
        goto LABEL_1736;
      }

      IPC::Decoder::decode<WebKit::WebExtensionWindowParameters>(a3, buf);
      if (buf[96] == 1)
      {
        v1109 = *buf;
        *v1110 = *&buf[16];
        v1110[8] = 0;
        v1110[24] = 0;
        if (buf[40])
        {
          *&v1110[8] = *&buf[24];
          v96 = *&buf[32];
          *&buf[24] = 0;
          *&buf[32] = 0;
          *&v1110[16] = v96;
          v1110[24] = 1;
          *&v1110[32] = *&buf[48];
          *&v1110[48] = *&buf[64];
          *&v1110[60] = *&buf[76];
          WTF::Vector<WebKit::WebExtensionTabParameters,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&buf[24], v95);
        }

        else
        {
          *&v1110[32] = *&buf[48];
          *&v1110[48] = *&buf[64];
          *&v1110[60] = *&buf[76];
        }

        v1110[80] = 1;
      }

      else
      {
        LOBYTE(v1109) = 0;
        v1110[80] = 0;
        v86 = *a3;
        v1033 = a3[1];
        *a3 = 0;
        a3[1] = 0;
        v1034 = a3[3];
        if (!v1034)
        {
          goto LABEL_1659;
        }

        if (!v1033)
        {
          goto LABEL_1659;
        }

        (*(*v1034 + 16))(v1034, v86);
        if ((v1110[80] & 1) == 0)
        {
          goto LABEL_1659;
        }
      }

      v926 = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(a3);
      if (v86)
      {
        a3 = v926;
        while (1)
        {
          v927 = *a2;
          if ((*a2 & 1) == 0)
          {
            break;
          }

          v928 = *a2;
          atomic_compare_exchange_strong_explicit(a2, &v928, v927 + 2, memory_order_relaxed, memory_order_relaxed);
          if (v928 == v927)
          {
            goto LABEL_1656;
          }
        }

        WTF::ThreadSafeWeakPtrControlBlock::strongRef(*a2);
LABEL_1656:
        v929 = WTF::fastMalloc(0x18);
        *v929 = &unk_1F10F44F0;
        v929[1] = a3;
        v929[2] = a2;
        *buf = v929;
        if ((v1110[80] & 1) == 0)
        {
          while (1)
          {
LABEL_1802:
            __break(1u);
LABEL_1803:
            v220 = *a3;
            v999 = a3[1];
            *a3 = 0;
            a3[1] = 0;
            v1000 = a3[3];
            if (!v1000)
            {
              goto LABEL_1350;
            }

            if (!v999)
            {
              goto LABEL_1350;
            }

            (*(*v1000 + 16))(v1000, v220);
            if ((buf[8] & 1) == 0)
            {
              goto LABEL_1350;
            }

LABEL_268:
            v219 = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(a3);
            if ((v220 & 1) == 0)
            {
              goto LABEL_1350;
            }

            a3 = v219;
            while (1)
            {
              v221 = *a2;
              if ((*a2 & 1) == 0)
              {
                break;
              }

              v222 = *a2;
              atomic_compare_exchange_strong_explicit(a2, &v222, v221 + 2, memory_order_relaxed, memory_order_relaxed);
              if (v222 == v221)
              {
                goto LABEL_1339;
              }
            }

            WTF::ThreadSafeWeakPtrControlBlock::strongRef(*a2);
LABEL_1339:
            v820 = WTF::fastMalloc(0x18);
            *v820 = &unk_1F10F39B0;
            v820[1] = a3;
            v820[2] = a2;
            *&v1109 = v820;
            if (buf[8])
            {
              WebKit::WebExtensionContext::alarmsGet(this, buf, &v1109);
              v821 = v1109;
              *&v1109 = 0;
              if (v821)
              {
                (*(*v821 + 8))(v821);
              }

              goto LABEL_1350;
            }
          }
        }

        WebKit::WebExtensionContext::windowsCreate(this, &v1109, buf);
        v930 = *buf;
        *buf = 0;
        if (v930)
        {
          (*(*v930 + 8))(v930);
        }
      }

LABEL_1659:
      if (v1110[80] == 1 && v1110[24] == 1)
      {
        v925 = &v1110[8];
        goto LABEL_1662;
      }

      goto LABEL_1736;
    case 0x7C7:
      v625 = this[10];
      if (v625 && v625[1] && (v626 = this[5]) != 0 && v626 == a3[7])
      {
        v627 = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(a3);
        if (v628)
        {
          v629 = v627;
          v630 = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::RemoteVideoFrameIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>(a3);
          if (v631)
          {
            v632 = v630;
            v633 = IPC::Decoder::decode<WebKit::WebExtensionContentWorldType>(a3);
            if ((v633 & 0x100) != 0)
            {
              v634 = v633;
              v635 = IPC::Decoder::decode<WebCore::GraphicsContextGLSurfaceBuffer>(a3);
              if (v635 > 0xFFu)
              {
                v992 = v635;
                v993 = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(a3);
                if ((v994 & 1) == 0)
                {
                  goto LABEL_1736;
                }

                v995 = v993;
                while (1)
                {
                  v996 = *a2;
                  if ((*a2 & 1) == 0)
                  {
                    break;
                  }

                  v997 = *a2;
                  atomic_compare_exchange_strong_explicit(a2, &v997, v996 + 2, memory_order_relaxed, memory_order_relaxed);
                  if (v997 == v996)
                  {
                    goto LABEL_1801;
                  }
                }

                WTF::ThreadSafeWeakPtrControlBlock::strongRef(*a2);
LABEL_1801:
                v998 = WTF::fastMalloc(0x18);
                *v998 = &unk_1F10F4518;
                v998[1] = v995;
                v998[2] = a2;
                *buf = v998;
                WebKit::WebExtensionContext::windowsGet(this, v629, v632, v634, v992 & 1, buf);
                goto LABEL_1459;
              }
            }
          }
        }

        v636 = *a3;
        v637 = a3[1];
        *a3 = 0;
        a3[1] = 0;
        v638 = a3[3];
        if (!v638)
        {
          goto LABEL_1736;
        }
      }

      else
      {
        v664 = qword_1ED6416C8;
        if (os_log_type_enabled(qword_1ED6416C8, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315138;
          *&buf[4] = "WebExtensionContext_WindowsGet";
          _os_log_error_impl(&dword_19D52D000, v664, OS_LOG_TYPE_ERROR, "Message %s fails validation", buf, 0xCu);
        }

        v636 = *a3;
        v637 = a3[1];
        *a3 = 0;
        a3[1] = 0;
        v638 = a3[3];
        if (!v638)
        {
          goto LABEL_1736;
        }
      }

      goto LABEL_1966;
    case 0x7C8:
      v616 = this[10];
      if (v616)
      {
        if (v616[1])
        {
          v617 = this[5];
          if (v617)
          {
            if (v617 == a3[7])
            {
              v618 = IPC::Decoder::decode<std::tuple<WTF::OptionSet<WebKit::WebExtensionWindowTypeFilter>,WebKit::WebExtensionWindow::PopulateTabs>>(a3);
              if ((v618 & 0xFFFFFF) < 0x10000)
              {
                goto LABEL_1736;
              }

              v619 = v618;
              v620 = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(a3);
              if ((v621 & 1) == 0)
              {
                goto LABEL_1736;
              }

              v622 = v620;
              while (1)
              {
                v623 = *a2;
                if ((*a2 & 1) == 0)
                {
                  break;
                }

                v624 = *a2;
                atomic_compare_exchange_strong_explicit(a2, &v624, v623 + 2, memory_order_relaxed, memory_order_relaxed);
                if (v624 == v623)
                {
                  goto LABEL_1494;
                }
              }

              WTF::ThreadSafeWeakPtrControlBlock::strongRef(*a2);
LABEL_1494:
              v875 = WTF::fastMalloc(0x18);
              *v875 = &unk_1F10F4568;
              v875[1] = v622;
              v875[2] = a2;
              *buf = v875;
              WebKit::WebExtensionContext::windowsGetAll(this, v619, (v619 >> 8) & 1, buf);
              v826 = *buf;
              *buf = 0;
              if (!v826)
              {
                goto LABEL_1736;
              }

              goto LABEL_1794;
            }
          }
        }
      }

      v663 = qword_1ED6416C8;
      if (os_log_type_enabled(qword_1ED6416C8, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315138;
        *&buf[4] = "WebExtensionContext_WindowsGetAll";
        _os_log_error_impl(&dword_19D52D000, v663, OS_LOG_TYPE_ERROR, "Message %s fails validation", buf, 0xCu);
      }

      v636 = *a3;
      v637 = a3[1];
      *a3 = 0;
      a3[1] = 0;
      v638 = a3[3];
      if (!v638)
      {
        goto LABEL_1736;
      }

      goto LABEL_1966;
    case 0x7C9:
      v39 = this[10];
      if (!v39 || !v39[1] || (v40 = this[5]) == 0 || v40 != a3[7])
      {
        v641 = qword_1ED6416C8;
        if (os_log_type_enabled(qword_1ED6416C8, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315138;
          *&buf[4] = "WebExtensionContext_WindowsGetLastFocused";
          _os_log_error_impl(&dword_19D52D000, v641, OS_LOG_TYPE_ERROR, "Message %s fails validation", buf, 0xCu);
        }

        v636 = *a3;
        v637 = a3[1];
        *a3 = 0;
        a3[1] = 0;
        v638 = a3[3];
        if (!v638)
        {
          goto LABEL_1736;
        }

        goto LABEL_1966;
      }

      v41 = IPC::Decoder::decode<std::tuple<WTF::OptionSet<WebKit::WebExtensionWindowTypeFilter>,WebKit::WebExtensionWindow::PopulateTabs>>(a3);
      if ((v41 & 0xFFFFFF) < 0x10000)
      {
        goto LABEL_1736;
      }

      v42 = v41;
      v43 = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(a3);
      if ((v44 & 1) == 0)
      {
        goto LABEL_1736;
      }

      v45 = v43;
      while (1)
      {
        v46 = *a2;
        if ((*a2 & 1) == 0)
        {
          break;
        }

        v47 = *a2;
        atomic_compare_exchange_strong_explicit(a2, &v47, v46 + 2, memory_order_relaxed, memory_order_relaxed);
        if (v47 == v46)
        {
          goto LABEL_1458;
        }
      }

      WTF::ThreadSafeWeakPtrControlBlock::strongRef(*a2);
LABEL_1458:
      v863 = WTF::fastMalloc(0x18);
      *v863 = &unk_1F10F4540;
      v863[1] = v45;
      v863[2] = a2;
      *buf = v863;
      WebKit::WebExtensionContext::windowsGetLastFocused(this, v42, (v42 >> 8) & 1, buf);
LABEL_1459:
      v826 = *buf;
      *buf = 0;
      if (!v826)
      {
        goto LABEL_1736;
      }

      goto LABEL_1794;
    case 0x7CA:
      v343 = this[10];
      if (!v343 || !v343[1] || (v344 = this[5]) == 0 || v344 != a3[7])
      {
        v655 = qword_1ED6416C8;
        if (os_log_type_enabled(qword_1ED6416C8, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315138;
          *&buf[4] = "WebExtensionContext_WindowsRemove";
          _os_log_error_impl(&dword_19D52D000, v655, OS_LOG_TYPE_ERROR, "Message %s fails validation", buf, 0xCu);
        }

        v636 = *a3;
        v637 = a3[1];
        *a3 = 0;
        a3[1] = 0;
        v638 = a3[3];
        if (!v638)
        {
          goto LABEL_1736;
        }

        goto LABEL_1966;
      }

      v345 = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::RemoteVideoFrameIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>(a3);
      if ((v346 & 1) == 0)
      {
        v636 = *a3;
        v637 = a3[1];
        *a3 = 0;
        a3[1] = 0;
        v638 = a3[3];
        if (!v638)
        {
          goto LABEL_1736;
        }

        goto LABEL_1966;
      }

      v347 = v345;
      v348 = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(a3);
      if ((v349 & 1) == 0)
      {
        goto LABEL_1736;
      }

      v350 = v348;
      while (1)
      {
        v351 = *a2;
        if ((*a2 & 1) == 0)
        {
          break;
        }

        v352 = *a2;
        atomic_compare_exchange_strong_explicit(a2, &v352, v351 + 2, memory_order_relaxed, memory_order_relaxed);
        if (v352 == v351)
        {
          goto LABEL_1481;
        }
      }

      WTF::ThreadSafeWeakPtrControlBlock::strongRef(*a2);
LABEL_1481:
      v870 = WTF::fastMalloc(0x18);
      *v870 = &unk_1F10F45B8;
      v870[1] = v350;
      v870[2] = a2;
      *buf = v870;
      WebKit::WebExtensionContext::windowsRemove(this, v347, buf);
LABEL_1793:
      v826 = *buf;
      *buf = 0;
      if (!v826)
      {
        goto LABEL_1736;
      }

LABEL_1794:
      (*(*v826 + 8))(v826);
      goto LABEL_1736;
    case 0x7CB:
      v78 = this[10];
      if (v78)
      {
        if (v78[1])
        {
          v79 = this[5];
          if (v79)
          {
            if (v79 == a3[7])
            {
              v80 = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::RemoteVideoFrameIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>(a3);
              if ((v81 & 1) == 0)
              {
                goto LABEL_1167;
              }

              v82 = v80;
              IPC::Decoder::decode<WebKit::WebExtensionWindowParameters>(a3, &v1109);
              if (v1110[80] != 1)
              {
                goto LABEL_1167;
              }

              *buf = v82;
              *&buf[8] = v1109;
              *&buf[24] = *v1110;
              buf[32] = 0;
              buf[48] = 0;
              v84 = v1110[24];
              if (v1110[24])
              {
                *&buf[56] = *&v1110[32];
                *&buf[32] = *&v1110[8];
                v3 = *&v1110[16];
                v4 = *&v1110[20];
                *&v1110[8] = 0;
                *&v1110[16] = 0;
                *&buf[40] = v3;
                *&buf[44] = v4;
                buf[48] = 1;
                *&buf[72] = *&v1110[48];
                *&buf[84] = *&v1110[60];
                LOBYTE(v1093) = 1;
                WTF::Vector<WebKit::WebExtensionTabParameters,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v1110[8], v83);
                v85 = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(a3);
                if (v86)
                {
                  v87 = v85;
                  goto LABEL_1636;
                }
              }

              else
              {
                *&buf[56] = *&v1110[32];
                *&buf[72] = *&v1110[48];
                *&buf[84] = *&v1110[60];
                LOBYTE(v1093) = 1;
                v918 = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(a3);
                if ((v919 & 1) == 0)
                {
                  goto LABEL_1736;
                }

                v87 = v918;
LABEL_1636:
                while (1)
                {
                  v920 = *a2;
                  if ((*a2 & 1) == 0)
                  {
                    break;
                  }

                  v921 = *a2;
                  atomic_compare_exchange_strong_explicit(a2, &v921, v920 + 2, memory_order_relaxed, memory_order_relaxed);
                  if (v921 == v920)
                  {
                    goto LABEL_1640;
                  }
                }

                WTF::ThreadSafeWeakPtrControlBlock::strongRef(*a2);
LABEL_1640:
                v922 = WTF::fastMalloc(0x18);
                *v922 = &unk_1F10F4590;
                v922[1] = v87;
                v922[2] = a2;
                *v1107 = v922;
                v1109 = *&buf[8];
                *v1110 = *&buf[24];
                v1110[8] = 0;
                v1110[24] = 0;
                if (v84)
                {
                  v923 = *&buf[32];
                  *&buf[32] = 0;
                  *&buf[40] = 0;
                  *&v1110[8] = v923;
                  *&v1110[16] = v3;
                  *&v1110[20] = v4;
                  v1110[24] = 1;
                }

                *&v1110[32] = *&buf[56];
                *&v1110[48] = *&buf[72];
                *&v1110[60] = *&buf[84];
                WebKit::WebExtensionContext::windowsUpdate(this, v82, &v1109, v1107);
                if (v1110[24] == 1)
                {
                  WTF::Vector<WebKit::WebExtensionTabParameters,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v1110[8], v86);
                }

                v924 = *v1107;
                *v1107 = 0;
                if (v924)
                {
                  (*(*v924 + 8))(v924);
                }

                if (!v84)
                {
                  goto LABEL_1736;
                }
              }

              v925 = &buf[32];
LABEL_1662:
              WTF::Vector<WebKit::WebExtensionTabParameters,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v925, v86);
              goto LABEL_1736;
            }
          }
        }
      }

      v645 = qword_1ED6416C8;
      if (os_log_type_enabled(qword_1ED6416C8, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315138;
        *&buf[4] = "WebExtensionContext_WindowsUpdate";
        _os_log_error_impl(&dword_19D52D000, v645, OS_LOG_TYPE_ERROR, "Message %s fails validation", buf, 0xCu);
      }

      v636 = *a3;
      v637 = a3[1];
      *a3 = 0;
      a3[1] = 0;
      v638 = a3[3];
      if (!v638)
      {
        goto LABEL_1736;
      }

      goto LABEL_1966;
    default:
      v362 = qword_1ED6416C8;
      if (!os_log_type_enabled(qword_1ED6416C8, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_1167;
      }

      if (v10 >= 0x107F)
      {
        v363 = 4223;
      }

      else
      {
        v363 = v10;
      }

      v364 = (&IPC::Detail::messageDescriptions)[3 * v363];
      v365 = a3[7];
      *buf = 136315394;
      *&buf[4] = v364;
      *&buf[12] = 2048;
      *&buf[14] = v365;
      v366 = "Unhandled message %s to %llu";
      v367 = v362;
      v368 = 22;
      goto LABEL_1166;
  }
}