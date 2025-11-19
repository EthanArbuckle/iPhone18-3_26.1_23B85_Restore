@interface _WKTextRun
- (CGRect)rectInWebView;
- (NSString)text;
- (void)dealloc;
@end

@implementation _WKTextRun

- (void)dealloc
{
  v3 = objc_opt_class();
  if ((WebCoreObjCScheduleDeallocateOnMainRunLoop(v3, self) & 1) == 0)
  {
    v5 = *&self->_textRun.m_storage.data[24];
    *&self->_textRun.m_storage.data[24] = 0;
    if (v5 && atomic_fetch_add_explicit(v5, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v5, v4);
    }

    v6 = *&self->_textRun.m_storage.data[16];
    *&self->_textRun.m_storage.data[16] = 0;
    if (v6)
    {
      if (atomic_fetch_add(v6, 0xFFFFFFFF) == 1)
      {
        atomic_store(1u, v6);
        WTF::fastFree(v6, v4);
      }
    }

    v7.receiver = self;
    v7.super_class = _WKTextRun;
    [(_WKTextRun *)&v7 dealloc];
  }
}

- (NSString)text
{
  v2 = *&self->_textRun.m_storage.data[24];
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

- (CGRect)rectInWebView
{
  CFRetain(*&self->_textRun.m_storage.data[8]);
  API::TextRun::rectInWebView(&self->_textRun);
  WebCore::FloatRect::operator CGRect();
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  CFRelease(*&self->_textRun.m_storage.data[8]);
  v11 = v4;
  v12 = v6;
  v13 = v8;
  v14 = v10;
  result.size.height = v14;
  result.size.width = v13;
  result.origin.y = v12;
  result.origin.x = v11;
  return result;
}

@end