@interface WKNavigation
- (BOOL)_isUserInitiated;
- (WKContentMode)effectiveContentMode;
- (id)_initiatingFrame;
- (void)dealloc;
@end

@implementation WKNavigation

- (void)dealloc
{
  v3 = objc_opt_class();
  if ((WebCoreObjCScheduleDeallocateOnMainRunLoop(v3, self) & 1) == 0)
  {
    CFRetain(*&self->_navigation.m_storage.data[8]);
    (**self->_navigation.m_storage.data)();
    CFRelease(*&self->_navigation.m_storage.data[8]);
    v4.receiver = self;
    v4.super_class = WKNavigation;
    [(WKNavigation *)&v4 dealloc];
  }
}

- (BOOL)_isUserInitiated
{
  if (self[53]._navigation.m_storage.data[32] == 1)
  {
    v2 = self[8]._navigation.m_storage.data[24];
  }

  else
  {
    v2 = 0;
  }

  return v2 & 1;
}

- (id)_initiatingFrame
{
  v22 = *MEMORY[0x1E69E9840];
  if (self[59]._navigation.m_storage.data[16] != 1)
  {
    return 0;
  }

  v2 = self;
  v3 = WebKit::WebFrameProxy::webFrame(*&self[57]._navigation.m_storage.data[40], 1);
  v4 = v3;
  if (v3)
  {
    v3 = CFRetain(v3[1]);
  }

  if ((v2[59]._navigation.m_storage.data[16] & 1) == 0)
  {
    __break(1u);
LABEL_27:
    CFRelease(v3);
LABEL_18:
    v12 = v20;
    v20 = 0;
    if (v12 && atomic_fetch_add_explicit(v12, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v12, v11);
    }

    mpark::detail::move_constructor<mpark::detail::traits<WebCore::SecurityOriginData::Tuple,WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::OpaqueOriginIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,(mpark::detail::Trait)1>::~move_constructor(&v19);
    v13 = v18;
    v18 = 0;
    if (v13)
    {
    }

    WebCore::ResourceRequestBase::~ResourceRequestBase(&v17);
    if (v4)
    {
      CFRelease(v4[1]);
    }

    return v2;
  }

  WebKit::FrameInfoData::FrameInfoData(&v16, &v2[54]);
  if (!v4)
  {
    goto LABEL_10;
  }

  v5 = v4[4];
  if (!v5)
  {
    goto LABEL_11;
  }

  v6 = *(v5 + 8);
  if (v6)
  {
    CFRetain(*(v6 - 8));
    v5 = v6 - 16;
  }

  else
  {
LABEL_10:
    v5 = 0;
  }

LABEL_11:
  v15 = v5;
  v7 = API::Object::newObject(0x180uLL, 59);
  v2 = *(API::FrameInfo::FrameInfo(v7, &v16, &v15) + 8);
  if (!v2)
  {
    v10 = 0;
LABEL_15:
    CFRelease(v10);
    if (v15)
    {
      CFRelease(*(v15 + 8));
    }

    v3 = cf;
    cf = 0;
    if (!v3)
    {
      goto LABEL_18;
    }

    goto LABEL_27;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = v2;
    v9 = v2;
    v10 = *(v7 + 8);
    goto LABEL_15;
  }

  result = 117;
  __break(0xC471u);
  return result;
}

- (WKContentMode)effectiveContentMode
{
  v2 = self[60]._navigation.m_storage.data[0];
  if (v2 == 2)
  {
    return 2;
  }

  else
  {
    return (v2 == 1);
  }
}

@end