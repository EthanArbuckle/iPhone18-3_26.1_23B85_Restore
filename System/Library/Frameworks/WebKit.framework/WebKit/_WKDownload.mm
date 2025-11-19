@interface _WKDownload
+ (id)downloadWithDownload:(id)a3;
- (NSArray)redirectChain;
- (NSData)resumeData;
- (WKFrameInfo)originatingFrame;
- (WKWebView)originatingWebView;
- (_WKDownload)initWithDownload2:(id)a3;
- (uint64_t)cancel;
- (void)cancel;
- (void)publishProgressAtURL:(id)a3;
@end

@implementation _WKDownload

- (_WKDownload)initWithDownload2:(id)a3
{
  v8.receiver = self;
  v8.super_class = _WKDownload;
  v4 = [(_WKDownload *)&v8 init];
  if (v4)
  {
    if (a3)
    {
      v5 = a3;
    }

    m_ptr = v4->_download.m_ptr;
    v4->_download.m_ptr = a3;
    if (m_ptr)
    {
    }
  }

  return v4;
}

+ (id)downloadWithDownload:(id)a3
{
  v4 = [downloadWrapperMap() objectForKey:a3];
  if (!v4)
  {
    v4 = [[_WKDownload alloc] initWithDownload2:a3];
    [downloadWrapperMap() setObject:v4 forKey:a3];
    if (v4)
    {
      v5 = v4;
    }
  }

  return v4;
}

- (void)cancel
{
  v2 = a1[1];
  *a1 = &unk_1F10FB3D8;
  a1[1] = 0;
  if (v2)
  {
    CFRelease(*(v2 + 8));
  }

  return a1;
}

- (void)publishProgressAtURL:(id)a3
{
  m_ptr = self->_download.m_ptr;
  MEMORY[0x19EB01DE0](v6, a3);
  WebKit::DownloadProxy::publishProgress(&m_ptr->_download, v6);
  v5 = v6[0];
  v6[0] = 0;
  if (v5)
  {
    if (atomic_fetch_add_explicit(v5, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v5, v4);
    }
  }
}

- (WKWebView)originatingWebView
{
  v2 = *&self->_download.m_ptr->_anon_38[240];
  if (!v2)
  {
    return 0;
  }

  v3 = *(v2 + 8);
  if (!v3)
  {
    return 0;
  }

  CFRetain(*(v3 - 8));
  WeakRetained = objc_loadWeakRetained((*(v3 + 16) + 2248));
  v5 = WeakRetained;
  if (WeakRetained)
  {
    v6 = WeakRetained;
  }

  CFRelease(*(v3 - 8));
  return v5;
}

- (NSArray)redirectChain
{
  m_ptr = self->_download.m_ptr;
  v3 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:*&m_ptr->_anon_38[260]];
  v4 = *&m_ptr->_anon_38[260];
  if (v4)
  {
    v5 = *&m_ptr->_anon_38[248];
    v6 = 40 * v4;
    do
    {
      WTF::URL::createCFURL(&v10, v5);
      if (v10)
      {
        [(NSArray *)v3 addObject:?];
        v7 = v10;
        v10 = 0;
        if (v7)
        {
        }
      }

      v5 = (v5 + 40);
      v6 -= 40;
    }

    while (v6);
  }

  if (v3)
  {
    v8 = v3;
  }

  return v3;
}

- (NSData)resumeData
{
  v2 = *&self->_download.m_ptr->_anon_38[16];
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
      JUMPOUT(0x19DB637E4);
    }
  }

  return v3;
}

- (WKFrameInfo)originatingFrame
{
  v2 = *&self->_download.m_ptr->_anon_38[272];
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
      JUMPOUT(0x19DB63858);
    }
  }

  return v3;
}

- (uint64_t)cancel
{
  v3 = *(this + 1);
  *this = &unk_1F10FB3D8;
  *(this + 1) = 0;
  if (v3)
  {
    CFRelease(*(v3 + 8));
  }

  return WTF::fastFree(this, a2);
}

@end