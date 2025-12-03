@interface WKGeolocationProviderIOS
- (WKGeolocationProviderIOS)initWithProcessPool:(void *)pool;
- (id).cxx_construct;
- (uint64_t)decidePolicyForGeolocationRequestFromOrigin:(WTF *)this completionHandler:(void *)handler view:;
- (uint64_t)decidePolicyForGeolocationRequestFromOrigin:(uint64_t)origin completionHandler:(int)handler view:;
- (void)_startUpdating;
- (void)_stopUpdating;
- (void)decidePolicyForGeolocationRequestFromOrigin:(void *)origin completionHandler:(void *)handler view:(id)view;
- (void)decidePolicyForGeolocationRequestFromOrigin:(void *)origin completionHandler:view:;
- (void)errorOccurred:(id)occurred;
- (void)geolocationAuthorizationDenied;
- (void)geolocationAuthorizationGranted;
- (void)positionChanged:(id)changed;
@end

@implementation WKGeolocationProviderIOS

- (void)_startUpdating
{
  self->_isWebCoreGeolocationActive = 1;
  [(_WKGeolocationCoreLocationProvider *)self->_coreLocationProvider.m_ptr start];
  m_ptr = self->_lastActivePosition.m_ptr;
  if (m_ptr)
  {
    v5 = self->_geolocationManager.m_ptr;

    WebKit::WebGeolocationManagerProxy::providerDidChangePosition(v5, m_ptr, v3);
  }
}

- (void)_stopUpdating
{
  self->_isWebCoreGeolocationActive = 0;
  [(_WKGeolocationCoreLocationProvider *)self->_coreLocationProvider.m_ptr stop];
  m_ptr = self->_lastActivePosition.m_ptr;
  self->_lastActivePosition.m_ptr = 0;
  if (m_ptr)
  {
    v4 = *(m_ptr + 1);

    CFRelease(v4);
  }
}

- (WKGeolocationProviderIOS)initWithProcessPool:(void *)pool
{
  v20.receiver = self;
  v20.super_class = WKGeolocationProviderIOS;
  v4 = [(WKGeolocationProviderIOS *)&v20 init];
  if (v4)
  {
    CFRetain(*(pool + 1));
    v5 = *(pool + 1);
    if (v5 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      __break(0xC471u);
    }

    else
    {
      if (![v5 _coreLocationProvider])
      {
LABEL_18:
        CFRelease(*(pool + 1));
        return v4;
      }

      v6 = WebKit::WebProcessPool::supplement<WebKit::WebGeolocationManagerProxy>(pool);
      v7 = v6;
      if (v6)
      {
        CFRetain(*(v6 + 8));
      }

      m_ptr = v4->_geolocationManager.m_ptr;
      v4->_geolocationManager.m_ptr = v7;
      if (m_ptr)
      {
        CFRelease(*(m_ptr + 1));
        v7 = v4->_geolocationManager.m_ptr;
      }

      *&v16 = 1;
      *(&v16 + 1) = v4;
      v17 = startUpdatingCallback;
      v18 = stopUpdatingCallback;
      v19 = setEnableHighAccuracy;
      if (v7)
      {
        v9 = *(v7 + 8);
      }

      else
      {
        v9 = 0;
      }

      WKGeolocationManagerSetProvider(v9, &v16);
      v10 = *(pool + 1);
      if (!v10 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
      {
        _coreLocationProvider = [v10 _coreLocationProvider];
        v12 = _coreLocationProvider;
        if (_coreLocationProvider)
        {
          v13 = _coreLocationProvider;
        }

        v14 = v4->_coreLocationProvider.m_ptr;
        v4->_coreLocationProvider.m_ptr = v12;
        if (v14)
        {

          v12 = v4->_coreLocationProvider.m_ptr;
        }

        [(_WKGeolocationCoreLocationProvider *)v12 setListener:v4];
        goto LABEL_18;
      }

      __break(0xC471u);
    }

    JUMPOUT(0x19DE55E64);
  }

  return v4;
}

- (void)decidePolicyForGeolocationRequestFromOrigin:(void *)origin completionHandler:(void *)handler view:(id)view
{
  v69 = *MEMORY[0x1E69E9840];
  WebCore::RegistrableDomain::RegistrableDomain(&v47, (origin + 208));
  MEMORY[0x19EB01DE0](v48, [view URL]);
  v49 = *origin;
  WebCore::ResourceRequestBase::RequestData::RequestData(v50, origin + 8);
  v9 = *(origin + 10);
  *(origin + 20) = 0;
  *(origin + 21) = 0;
  *&v50[152] = v9;
  v10 = *(origin + 22);
  v11 = *(origin + 23);
  *(origin + 22) = 0;
  v51 = v10;
  v52 = v11;
  v53 = *(origin + 192);
  v12 = *(origin + 25);
  *(origin + 25) = 0;
  v54 = v12;
  LOBYTE(v55) = 0;
  v57 = -1;
  v13 = *(origin + 232);
  if (!*(origin + 232))
  {
    v14 = *(origin + 13);
    *(origin + 26) = 0;
    *(origin + 27) = 0;
    v55 = v14;
    v56 = *(origin + 56);
LABEL_3:
    v57 = v13;
    goto LABEL_4;
  }

  if (v13 != 255)
  {
    v55 = *(origin + 13);
    goto LABEL_3;
  }

LABEL_4:
  v15 = *(origin + 30);
  *(origin + 30) = 0;
  v16 = *(origin + 264);
  v17 = *(origin + 280);
  v59 = *(origin + 248);
  v60 = v16;
  v61 = v17;
  v18 = *(origin + 37);
  v19 = *(origin + 38);
  v58 = v15;
  v62 = v18;
  v63 = v19;
  *(origin + 38) = 0;
  v20 = *(origin + 328);
  v64 = *(origin + 312);
  v65 = v20;
  v66 = *(origin + 86);
  v21 = *handler;
  *handler = 0;
  v67 = v21;
  viewCopy = view;
  if (view)
  {
    viewCopy2 = view;
  }

  m_start = self->_requestsWaitingForCoreLocationAuthorization.m_start;
  m_end = self->_requestsWaitingForCoreLocationAuthorization.m_end;
  if (m_start)
  {
    if (m_end + 1 != m_start)
    {
      goto LABEL_34;
    }

    LODWORD(m_capacity) = self->_requestsWaitingForCoreLocationAuthorization.m_buffer.m_capacity;
  }

  else
  {
    m_capacity = self->_requestsWaitingForCoreLocationAuthorization.m_buffer.m_capacity;
    if (m_end)
    {
      if (m_end != m_capacity - 1)
      {
        goto LABEL_34;
      }
    }

    else if (m_capacity)
    {
      m_end = 0;
      goto LABEL_34;
    }
  }

  v26 = m_capacity;
  v27 = (m_capacity >> 2) + m_capacity;
  if (v27 >= 0x9D89D8)
  {
    __break(0xC471u);
    return;
  }

  m_buffer = self->_requestsWaitingForCoreLocationAuthorization.m_buffer.m_buffer;
  if (v27 <= 0xF)
  {
    v27 = 15;
  }

  v29 = 416 * v27 + 416;
  v30 = WTF::fastMalloc((416 * v27 + 416));
  self->_requestsWaitingForCoreLocationAuthorization.m_buffer.m_capacity = v29 / 0x1A0;
  self->_requestsWaitingForCoreLocationAuthorization.m_buffer.m_buffer = v30;
  v31 = self->_requestsWaitingForCoreLocationAuthorization.m_start;
  v32 = self->_requestsWaitingForCoreLocationAuthorization.m_end;
  v33 = v32 - v31;
  if (v32 >= v31)
  {
    if (v26 < v31)
    {
      goto LABEL_48;
    }

    if (v33 == -1)
    {
      v33 = v26 - v31;
    }

    else if (v26 - v31 < v33)
    {
      goto LABEL_48;
    }

    if (v31 > v29 / 0x1A0)
    {
      goto LABEL_48;
    }

    WTF::VectorMover<false,GeolocationRequestData>::move((m_buffer + 416 * v31), (m_buffer + 416 * v31 + 416 * v33), v30 + 416 * v31);
    goto LABEL_29;
  }

  if (v32 > v26 || (WTF::VectorMover<false,GeolocationRequestData>::move(m_buffer, (m_buffer + 416 * v32), v30), v34 = self->_requestsWaitingForCoreLocationAuthorization.m_start, v26 < v34) || (v35 = self->_requestsWaitingForCoreLocationAuthorization.m_buffer.m_capacity, v35 < v26 - v34))
  {
LABEL_48:
    __break(1u);
  }

  v36 = v35 - (v26 - v34);
  WTF::VectorMover<false,GeolocationRequestData>::move((m_buffer + 416 * v34), (m_buffer + 416 * v26), self->_requestsWaitingForCoreLocationAuthorization.m_buffer.m_buffer + 416 * v36);
  self->_requestsWaitingForCoreLocationAuthorization.m_start = v36;
LABEL_29:
  if (m_buffer)
  {
    if (self->_requestsWaitingForCoreLocationAuthorization.m_buffer.m_buffer == m_buffer)
    {
      self->_requestsWaitingForCoreLocationAuthorization.m_buffer.m_buffer = 0;
      self->_requestsWaitingForCoreLocationAuthorization.m_buffer.m_capacity = 0;
    }

    WTF::fastFree(m_buffer, v37);
  }

  m_end = self->_requestsWaitingForCoreLocationAuthorization.m_end;
LABEL_34:
  if (m_end >= self->_requestsWaitingForCoreLocationAuthorization.m_buffer.m_capacity)
  {
    goto LABEL_48;
  }

  GeolocationRequestData::GeolocationRequestData(self->_requestsWaitingForCoreLocationAuthorization.m_buffer.m_buffer + 416 * m_end, v48);
  v38 = self->_requestsWaitingForCoreLocationAuthorization.m_end;
  if (v38 == self->_requestsWaitingForCoreLocationAuthorization.m_buffer.m_capacity - 1)
  {
    v39 = 0;
  }

  else
  {
    v39 = v38 + 1;
  }

  self->_requestsWaitingForCoreLocationAuthorization.m_end = v39;
  m_ptr = self->_coreLocationProvider.m_ptr;
  if (m_ptr)
  {
    [(_WKGeolocationCoreLocationProvider *)m_ptr requestGeolocationAuthorization];
  }

  else
  {
    selfCopy = self;
    v43 = WTF::fastMalloc(0x18);
    *v43 = &unk_1F110D840;
    v43[1] = self;
    v43[2] = self;
    v46 = v43;
    WebCore::CoreLocationGeolocationProvider::requestAuthorization();
    if (v46)
    {
      (*(*v46 + 8))(v46);
    }
  }

  GeolocationRequestData::~GeolocationRequestData(v48, v41);
  v45 = v47;
  v47 = 0;
  if (v45)
  {
    if (atomic_fetch_add_explicit(v45, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v45, v44);
    }
  }
}

- (id).cxx_construct
{
  *(self + 1) = 0;
  *(self + 2) = 0;
  *(self + 2) = 0u;
  *(self + 3) = 0u;
  *(self + 8) = 0;
  return self;
}

- (void)geolocationAuthorizationGranted
{
  v34 = *MEMORY[0x1E69E9840];
  m_start = self->_requestsWaitingForCoreLocationAuthorization.m_start;
  if (m_start == self->_requestsWaitingForCoreLocationAuthorization.m_end)
  {
    return;
  }

  if (m_start >= self->_requestsWaitingForCoreLocationAuthorization.m_buffer.m_capacity)
  {
    goto LABEL_28;
  }

  GeolocationRequestData::GeolocationRequestData(v30, self->_requestsWaitingForCoreLocationAuthorization.m_buffer.m_buffer + 416 * m_start);
  v5 = self->_requestsWaitingForCoreLocationAuthorization.m_start;
  if (v5 == self->_requestsWaitingForCoreLocationAuthorization.m_end)
  {
    __break(0xC471u);
    goto LABEL_31;
  }

  if (v5 >= self->_requestsWaitingForCoreLocationAuthorization.m_buffer.m_capacity)
  {
LABEL_28:
    __break(1u);
  }

  GeolocationRequestData::~GeolocationRequestData((self->_requestsWaitingForCoreLocationAuthorization.m_buffer.m_buffer + 416 * v5), v4);
  v6 = self->_requestsWaitingForCoreLocationAuthorization.m_start;
  if (v6 == self->_requestsWaitingForCoreLocationAuthorization.m_buffer.m_capacity - 1)
  {
    v7 = 0;
  }

  else
  {
    v7 = v6 + 1;
  }

  self->_requestsWaitingForCoreLocationAuthorization.m_start = v7;
  v8 = v32;
  v32 = 0;
  selfCopy = self;
  v10 = WTF::fastMalloc(0x18);
  *v10 = &unk_1F110D868;
  v10[1] = v8;
  v10[2] = self;
  v28 = v10;
  uIDelegate = [v33 UIDelegate];
  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    v14 = [[WKWebAllowDenyPolicyListener alloc] initWithCompletionHandler:&v28];
    v17 = +[WKWebGeolocationPolicyDecider sharedPolicyDecider];
    WebCore::SecurityOriginData::fromURLWithoutStrictOpaqueness(v29, v30, v18);
    WTF::URL::createCFURL(&v27, v30);
    [v17 decidePolicyForGeolocationRequestFromOrigin:v29 requestingURL:v27 view:v33 listener:v14];
    v19 = v27;
    v27 = 0;
    if (v19)
    {
    }

    mpark::detail::move_constructor<mpark::detail::traits<WebCore::SecurityOriginData::Tuple,WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::OpaqueOriginIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,(mpark::detail::Trait)1>::~move_constructor(v29);
    goto LABEL_22;
  }

  v12 = v33[52];
  if (v12)
  {
    CFRetain(*(v12 + 8));
  }

  v29[0] = v12;
  v13 = API::Object::newObject(0x180uLL, 59);
  v14 = *(API::FrameInfo::FrameInfo(v13, &v31, v29) + 8);
  if (!v14)
  {
    v16 = 0;
    goto LABEL_18;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    __break(0xC471u);
LABEL_31:
    JUMPOUT(0x19DE56A7CLL);
  }

  v15 = v14;
  v16 = *(v13 + 8);
LABEL_18:
  CFRelease(v16);
  if (v29[0])
  {
    CFRelease(*(v29[0] + 8));
  }

  WebKit::CompletionHandlerCallChecker::create(uIDelegate, sel__webView_requestGeolocationAuthorizationForURL_frame_decisionHandler_, v29);
  v21 = v33;
  WTF::URL::createCFURL(&v27, v30);
  v22 = v27;
  v28 = 0;
  v23 = v29[0];
  v24 = malloc_type_malloc(0x30uLL, 0x10E0040FAC56454uLL);
  *v24 = MEMORY[0x1E69E9818];
  v24[1] = 50331650;
  v24[2] = WTF::BlockPtr<void ()(BOOL)>::fromCallable<[WKGeolocationProviderIOS(WebGeolocationCoreLocationUpdateListener) geolocationAuthorizationGranted]::$_1>([WKGeolocationProviderIOS(WebGeolocationCoreLocationUpdateListener) geolocationAuthorizationGranted]::$_1)::{lambda(void *,BOOL)#1}::__invoke;
  v24[3] = &WTF::BlockPtr<void ()(BOOL)>::fromCallable<[WKGeolocationProviderIOS(WebGeolocationCoreLocationUpdateListener) geolocationAuthorizationGranted]::$_1>([WKGeolocationProviderIOS(WebGeolocationCoreLocationUpdateListener) geolocationAuthorizationGranted]::$_1)::descriptor;
  v24[4] = v10;
  v24[5] = v23;
  [(WebKit::CompletionHandlerCallChecker *)uIDelegate _webView:v21 requestGeolocationAuthorizationForURL:v22 frame:v14 decisionHandler:v24];
  _Block_release(v24);
  v25 = v27;
  v27 = 0;
  if (v25)
  {
  }

LABEL_22:
  if (v14)
  {
  }

  v26 = v28;
  v28 = 0;
  if (v26)
  {
    (*(*v26 + 8))(v26);
  }

  GeolocationRequestData::~GeolocationRequestData(v30, v20);
}

- (void)geolocationAuthorizationDenied
{
  m_start = self->_requestsWaitingForCoreLocationAuthorization.m_start;
  m_end = self->_requestsWaitingForCoreLocationAuthorization.m_end;
  self->_requestsWaitingForCoreLocationAuthorization.m_start = 0;
  self->_requestsWaitingForCoreLocationAuthorization.m_end = 0;
  m_buffer = self->_requestsWaitingForCoreLocationAuthorization.m_buffer.m_buffer;
  self->_requestsWaitingForCoreLocationAuthorization.m_buffer.m_buffer = 0;
  m_capacity = self->_requestsWaitingForCoreLocationAuthorization.m_buffer.m_capacity;
  self->_requestsWaitingForCoreLocationAuthorization.m_buffer.m_capacity = 0;
  if (m_end != m_start)
  {
    v6 = m_start;
    while (v6 < m_capacity)
    {
      (*(**(m_buffer + 52 * v6 + 50) + 16))(*(m_buffer + 52 * v6 + 50), 0);
      v6 += m_capacity + 1;
      do
      {
        v6 -= m_capacity;
      }

      while (v6 >= m_capacity);
      if (m_end == v6)
      {
        goto LABEL_7;
      }
    }

    goto LABEL_30;
  }

LABEL_7:
  v7 = m_end - m_start;
  if (m_end < m_start)
  {
    if (m_end <= m_capacity)
    {
      if (m_end)
      {
        v8 = 416 * m_end;
        v9 = m_buffer;
        do
        {
          GeolocationRequestData::~GeolocationRequestData(v9, a2);
          v9 = (v10 + 416);
          v8 -= 416;
        }

        while (v8);
      }

      if (m_capacity >= m_start)
      {
        if (m_capacity != m_start)
        {
          v11 = (m_buffer + 416 * m_start);
          v12 = 416 * m_capacity - 416 * m_start;
          do
          {
            GeolocationRequestData::~GeolocationRequestData(v11, a2);
            v11 = (v13 + 416);
            v12 -= 416;
          }

          while (v12);
        }

        goto LABEL_25;
      }
    }

LABEL_30:
    __break(1u);
    return;
  }

  v14 = m_capacity - m_start;
  if (m_capacity < m_start)
  {
    goto LABEL_30;
  }

  if (v7 == -1)
  {
    v7 = m_capacity - m_start;
    if (!v14)
    {
      goto LABEL_25;
    }

    goto LABEL_23;
  }

  if (v14 < v7)
  {
    goto LABEL_30;
  }

  if (v7)
  {
LABEL_23:
    v15 = (m_buffer + 416 * m_start);
    v16 = 416 * v7;
    do
    {
      GeolocationRequestData::~GeolocationRequestData(v15, a2);
      v15 = (v17 + 416);
      v16 -= 416;
    }

    while (v16);
  }

LABEL_25:
  if (m_buffer)
  {

    WTF::fastFree(m_buffer, a2);
  }
}

- (void)positionChanged:(id)changed
{
  v4 = (changed + 8);
  if (changed)
  {
    CFRetain(*(changed + 2));
  }

  m_ptr = self->_lastActivePosition.m_ptr;
  self->_lastActivePosition.m_ptr = v4;
  if (m_ptr)
  {
    CFRelease(*(m_ptr + 1));
    v4 = self->_lastActivePosition.m_ptr;
  }

  v6 = self->_geolocationManager.m_ptr;

  WebKit::WebGeolocationManagerProxy::providerDidChangePosition(v6, v4, changed);
}

- (void)errorOccurred:(id)occurred
{
  m_ptr = self->_geolocationManager.m_ptr;
  MEMORY[0x19EB02040](&v7, occurred);
  WebKit::WebGeolocationManagerProxy::providerDidFailToDeterminePosition(m_ptr, &v7, v4);
  v6 = v7;
  v7 = 0;
  if (v6)
  {
    if (atomic_fetch_add_explicit(v6, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v6, v5);
    }
  }
}

- (void)decidePolicyForGeolocationRequestFromOrigin:(void *)origin completionHandler:view:
{
  *origin = &unk_1F110D840;
  v2 = origin[2];
  origin[2] = 0;
  if (v2)
  {
  }

  return origin;
}

- (uint64_t)decidePolicyForGeolocationRequestFromOrigin:(WTF *)this completionHandler:(void *)handler view:
{
  *this = &unk_1F110D840;
  v3 = *(this + 2);
  *(this + 2) = 0;
  if (v3)
  {
  }

  return WTF::fastFree(this, handler);
}

- (uint64_t)decidePolicyForGeolocationRequestFromOrigin:(uint64_t)origin completionHandler:(int)handler view:
{
  v2 = *(origin + 8);
  if (handler)
  {
    return [v2 geolocationAuthorizationGranted];
  }

  else
  {
    return [v2 geolocationAuthorizationDenied];
  }
}

@end