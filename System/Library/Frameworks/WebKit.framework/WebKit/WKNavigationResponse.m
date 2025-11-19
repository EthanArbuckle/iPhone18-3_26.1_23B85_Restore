@interface WKNavigationResponse
- (NSString)_downloadAttribute;
- (NSString)_proxyName;
- (NSString)description;
- (WKFrameInfo)_frame;
- (WKFrameInfo)_navigationInitiatingFrame;
- (WKNavigation)_navigation;
- (void)dealloc;
@end

@implementation WKNavigationResponse

- (void)dealloc
{
  v3 = objc_opt_class();
  if ((WebCoreObjCScheduleDeallocateOnMainRunLoop(v3, self) & 1) == 0)
  {
    CFRetain(*&self->_navigationResponse.m_storage.data[8]);
    API::NavigationResponse::~NavigationResponse(&self->_navigationResponse, v4);
    CFRelease(*&self->_navigationResponse.m_storage.data[8]);
    v5.receiver = self;
    v5.super_class = WKNavigationResponse;
    [(WKNavigationResponse *)&v5 dealloc];
  }
}

- (NSString)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  return [v3 stringWithFormat:@"<%@: %p; response = %@>", NSStringFromClass(v4), self, -[WKNavigationResponse response](self, "response")];
}

- (WKFrameInfo)_frame
{
  CFRetain(*&self->_navigationResponse.m_storage.data[8]);
  v3 = *&self->_navigationResponse.m_storage.data[16];
  CFRetain(*(v3 + 8));
  v4 = *(v3 + 8);
  if (!v4)
  {
    v5 = 0;
    goto LABEL_5;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = *(v3 + 8);
LABEL_5:
    CFRelease(v5);
    CFRelease(*&self->_navigationResponse.m_storage.data[8]);
    return v4;
  }

  result = 117;
  __break(0xC471u);
  return result;
}

- (WKFrameInfo)_navigationInitiatingFrame
{
  CFRetain(*&self->_navigationResponse.m_storage.data[8]);
  v3 = API::NavigationResponse::navigationInitiatingFrame(&self->_navigationResponse);
  if (v3)
  {
    v4 = *(v3 + 8);
    if (v4)
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        __break(0xC471u);
        JUMPOUT(0x19DADD134);
      }
    }
  }

  else
  {
    v4 = 0;
  }

  CFRelease(*&self->_navigationResponse.m_storage.data[8]);
  return v4;
}

- (WKNavigation)_navigation
{
  v2 = *self[9]._navigationResponse.m_storage.data;
  if (!v2)
  {
    return 0;
  }

  v3 = *(v2 + 8);
  if (v3)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      __break(0xC471u);
      JUMPOUT(0x19DADD1C0);
    }
  }

  return v3;
}

- (NSString)_downloadAttribute
{
  isa = self[9].super.isa;
  if (isa)
  {
    atomic_fetch_add_explicit(isa, 2u, memory_order_relaxed);
    MEMORY[0x19EB00B70](&v7, isa, a2);
    if (atomic_fetch_add_explicit(isa, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(isa, v3);
    }

    isa = v7;
    v7 = 0;
    if (isa)
    {
      v4 = isa;
      v5 = v7;
      v7 = 0;
      if (v5)
      {
      }
    }
  }

  return isa;
}

- (NSString)_proxyName
{
  v2 = *&self[6]._navigationResponse.m_storage.data[32];
  if (!v2)
  {
    v4 = &stru_1F1147748;
    v5 = &stru_1F1147748;
    v9 = 0;
LABEL_7:
    v6 = v4;
    v7 = v9;
    v9 = 0;
    if (v7)
    {
    }

    return &v4->isa;
  }

  atomic_fetch_add_explicit(v2, 2u, memory_order_relaxed);
  MEMORY[0x19EB00B70](&v9, v2, a2);
  if (atomic_fetch_add_explicit(v2, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v2, v3);
  }

  v4 = v9;
  v9 = 0;
  if (v4)
  {
    goto LABEL_7;
  }

  return &v4->isa;
}

@end