@interface WKFrameInfo
- (CGSize)_contentSize;
- (CGSize)_visibleContentSize;
- (CGSize)_visibleContentSizeExcludingScrollbars;
- (NSString)_title;
- (NSString)description;
- (NSURLRequest)request;
- (NSUUID)_documentIdentifier;
- (WKSecurityOrigin)securityOrigin;
- (WKWebView)webView;
- (_WKFrameHandle)_handle;
- (_WKFrameHandle)_parentFrameHandle;
- (void)dealloc;
@end

@implementation WKFrameInfo

- (void)dealloc
{
  v3 = objc_opt_class();
  if ((WebCoreObjCScheduleDeallocateOnMainRunLoop(v3, self) & 1) == 0)
  {
    API::FrameInfo::~FrameInfo(&self->_frameInfo);
    v4.receiver = self;
    v4.super_class = WKFrameInfo;
    [(WKFrameInfo *)&v4 dealloc];
  }
}

- (NSString)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [(WKFrameInfo *)self webView];
  if ([(WKFrameInfo *)self isMainFrame])
  {
    v7 = "YES";
  }

  else
  {
    v7 = "NO";
  }

  return [v3 stringWithFormat:@"<%@: %p; webView = %p; isMainFrame = %s; request = %@>", v5, self, v6, v7, -[WKFrameInfo request](self, "request")];
}

- (NSURLRequest)request
{
  v2 = WebCore::ResourceRequest::nsURLRequest();
  if (!v2)
  {
    v3 = MEMORY[0x1E695AC68];
    v4 = [objc_alloc(MEMORY[0x1E695DFF8]) initWithString:&stru_1F1147748];
    v2 = [v3 requestWithURL:v4];
    if (v4)
    {
    }
  }

  return v2;
}

- (WKSecurityOrigin)securityOrigin
{
  API::SecurityOrigin::create(&v8);
  v2 = *(v8 + 8);
  if (!v2)
  {
    v6 = 0;
    v8 = 0;
    goto LABEL_6;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = v2;
    v4 = v2;
    v5 = v8;
    v8 = 0;
    if (!v5)
    {
      return v2;
    }

    v6 = *(v5 + 8);
LABEL_6:
    CFRelease(v6);
    return v2;
  }

  result = 117;
  __break(0xC471u);
  return result;
}

- (WKWebView)webView
{
  isa = self[6].super.isa;
  if (!isa)
  {
    return 0;
  }

  CFRetain(*(isa + 1));
  WeakRetained = objc_loadWeakRetained((*(isa + 4) + 2248));
  v4 = WeakRetained;
  if (WeakRetained)
  {
    v5 = WeakRetained;
  }

  CFRelease(*(isa + 1));
  return v4;
}

- (_WKFrameHandle)_handle
{
  API::FrameHandle::create(*&self[4]._frameInfo.m_storage.data[8], 1, &v7);
  WebKit::wrapper<API::FrameHandle>(&v7, &v8);
  v2 = v8;
  v8 = 0;
  if (v2)
  {
    v3 = v2;
    v4 = v8;
    v8 = 0;
    if (v4)
    {
    }
  }

  v5 = v7;
  v7 = 0;
  if (v5)
  {
    CFRelease(*(v5 + 1));
  }

  return v2;
}

- (_WKFrameHandle)_parentFrameHandle
{
  v2 = *&self[4]._frameInfo.m_storage.data[16];
  if (!v2)
  {
    return 0;
  }

  API::FrameHandle::create(v2, 1, &v9);
  if (!v9)
  {
    return 0;
  }

  WebKit::wrapper<API::FrameHandle>(&v9, &v8);
  v3 = v9;
  v9 = 0;
  if (v3)
  {
    CFRelease(*(v3 + 1));
  }

  v4 = v8;
  v8 = 0;
  if (v4)
  {
    v5 = v4;
    v6 = v8;
    v8 = 0;
    if (v6)
    {
    }
  }

  return v4;
}

- (NSUUID)_documentIdentifier
{
  v9 = *MEMORY[0x1E69E9840];
  v2 = *&self[5].super.isa;
  v8[0] = *&self[4]._frameInfo.m_storage.data[32];
  v8[1] = v2;
  if (v8[0] == 0)
  {
    result = 155;
    __break(0xC471u);
  }

  else
  {
    WTF::UUID::createNSUUID(&v7, v8);
    v3 = v7;
    v7 = 0;
    if (v3)
    {
      v4 = v3;
      v5 = v7;
      v7 = 0;
      if (v5)
      {
      }
    }

    return v3;
  }

  return result;
}

- (NSString)_title
{
  API::FrameInfo::title(&self->_frameInfo, &v9);
  v2 = v9;
  if (v9)
  {
    atomic_fetch_add_explicit(v9, 2u, memory_order_relaxed);
    MEMORY[0x19EB00B70](&v10, v2);
    if (atomic_fetch_add_explicit(v2, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v2, v3);
    }
  }

  else
  {
    v10 = &stru_1F1147748;
    v4 = &stru_1F1147748;
  }

  v5 = v10;
  v10 = 0;
  if (v5)
  {
    v6 = v5;
    v7 = v10;
    v10 = 0;
    if (v7)
    {
    }
  }

  if (v2 && atomic_fetch_add_explicit(v2, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v2, v3);
  }

  return v5;
}

- (CGSize)_contentSize
{
  WebCore::IntSize::operator CGSize();
  result.height = v3;
  result.width = v2;
  return result;
}

- (CGSize)_visibleContentSize
{
  WebCore::IntSize::operator CGSize();
  result.height = v3;
  result.width = v2;
  return result;
}

- (CGSize)_visibleContentSizeExcludingScrollbars
{
  WebCore::IntSize::operator CGSize();
  result.height = v3;
  result.width = v2;
  return result;
}

@end