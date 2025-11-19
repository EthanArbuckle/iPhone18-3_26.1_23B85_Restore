@interface WKNavigationData
- (NSString)title;
- (NSURL)destinationURL;
- (void)dealloc;
@end

@implementation WKNavigationData

- (void)dealloc
{
  v3 = objc_opt_class();
  if ((WebCoreObjCScheduleDeallocateOnMainRunLoop(v3, self) & 1) == 0)
  {
    CFRetain(*&self->_data.m_storage.data[8]);
    (**self->_data.m_storage.data)();
    CFRelease(*&self->_data.m_storage.data[8]);
    v4.receiver = self;
    v4.super_class = WKNavigationData;
    [(WKNavigationData *)&v4 dealloc];
  }
}

- (NSString)title
{
  v2 = *&self->_data.m_storage.data[24];
  if (v2)
  {
    atomic_fetch_add_explicit(v2, 2u, memory_order_relaxed);
    atomic_fetch_add_explicit(v2, 2u, memory_order_relaxed);
    MEMORY[0x19EB00B70](&v9, v2, a2);
    if (atomic_fetch_add_explicit(v2, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v2, v3);
    }

    v4 = v9;
    v9 = 0;
    if (!v4)
    {
      goto LABEL_10;
    }
  }

  else
  {
    v4 = &stru_1F1147748;
    v5 = &stru_1F1147748;
    v9 = 0;
  }

  v6 = v4;
  v7 = v9;
  v9 = 0;
  if (v7)
  {
  }

  if (v2)
  {
LABEL_10:
    if (atomic_fetch_add_explicit(v2, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v2, v3);
    }
  }

  return &v4->isa;
}

- (NSURL)destinationURL
{
  v3 = MEMORY[0x1E695DFF8];
  v4 = *&self->_data.m_storage.data[16];
  if (v4)
  {
    atomic_fetch_add_explicit(v4, 2u, memory_order_relaxed);
  }

  v9 = v4;
  v6 = [v3 _web_URLWithWTFString:&v9];
  v7 = v9;
  v9 = 0;
  if (v7 && atomic_fetch_add_explicit(v7, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v7, v5);
  }

  return v6;
}

@end