@interface _WKUserStyleSheet
- (NSString)source;
- (NSURL)baseURL;
- (_WKUserStyleSheet)initWithSource:(id)source forMainFrameOnly:(BOOL)only;
- (_WKUserStyleSheet)initWithSource:(id)source forWKWebView:(id)view forMainFrameOnly:(BOOL)only includeMatchPatternStrings:(id)strings excludeMatchPatternStrings:(id)patternStrings baseURL:(id)l level:(int64_t)level contentWorld:(id)self0;
- (void)dealloc;
@end

@implementation _WKUserStyleSheet

- (_WKUserStyleSheet)initWithSource:(id)source forMainFrameOnly:(BOOL)only
{
  v27.receiver = self;
  v27.super_class = _WKUserStyleSheet;
  v5 = [(_WKUserStyleSheet *)&v27 init];
  v6 = v5;
  if (v5)
  {
    WebKit::InitializeWebKit2(v5);
    MEMORY[0x19EB02040](&v22, source);
    WTF::URL::URL(&v21);
    v20[0] = 0;
    v20[1] = 0;
    v19[0] = 0;
    v19[1] = 0;
    v7 = WebCore::UserStyleSheet::UserStyleSheet();
    v8 = API::ContentWorld::pageContentWorldSingleton(v7);
    API::Object::constructInWrapper<API::UserStyleSheet,WebCore::UserStyleSheet,API::ContentWorld &>(v6, &v23, v8);
    WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v26, v9);
    WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v25, v10);
    v12 = v24;
    v24 = 0;
    if (v12 && atomic_fetch_add_explicit(v12, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v12, v11);
    }

    v13 = v23;
    v23 = 0;
    if (v13 && atomic_fetch_add_explicit(v13, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v13, v11);
    }

    WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v19, v11);
    WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v20, v14);
    v16 = v21;
    v21 = 0;
    if (v16 && atomic_fetch_add_explicit(v16, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v16, v15);
    }

    v17 = v22;
    v22 = 0;
    if (v17 && atomic_fetch_add_explicit(v17, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v17, v15);
    }
  }

  return v6;
}

- (_WKUserStyleSheet)initWithSource:(id)source forWKWebView:(id)view forMainFrameOnly:(BOOL)only includeMatchPatternStrings:(id)strings excludeMatchPatternStrings:(id)patternStrings baseURL:(id)l level:(int64_t)level contentWorld:(id)self0
{
  WebKit::InitializeWebKit2(self);
  MEMORY[0x19EB02040](&v33, source);
  MEMORY[0x19EB01DE0](&v32, l);
  *v30 = strings;
  v16 = [strings count];
  patternStringsCopy = v30;
  WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::Vector<WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> WTF::makeVector<WTF::String>(NSArray *)::{lambda(unsigned long)#1}>(v31, v16, &patternStringsCopy, 0);
  patternStringsCopy = patternStrings;
  v17 = [patternStrings count];
  v38 = &patternStringsCopy;
  WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::Vector<WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> WTF::makeVector<WTF::String>(NSArray *)::{lambda(unsigned long)#1}>(v30, v17, &v38, 0);
  if (view)
  {
    [view _page];
  }

  v18 = WebCore::UserStyleSheet::UserStyleSheet();
  if (world)
  {
    v19 = (world + 8);
  }

  else
  {
    v19 = API::ContentWorld::pageContentWorldSingleton(v18);
  }

  API::Object::constructInWrapper<API::UserStyleSheet,WebCore::UserStyleSheet,API::ContentWorld &>(self, &v34, v19);
  WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v37, v20);
  WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v36, v21);
  v23 = v35;
  v35 = 0;
  if (v23 && atomic_fetch_add_explicit(v23, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v23, v22);
  }

  v24 = v34;
  v34 = 0;
  if (v24 && atomic_fetch_add_explicit(v24, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v24, v22);
  }

  WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v30, v22);
  WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v31, v25);
  v27 = v32;
  v32 = 0;
  if (v27 && atomic_fetch_add_explicit(v27, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v27, v26);
  }

  v28 = v33;
  v33 = 0;
  if (v28 && atomic_fetch_add_explicit(v28, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v28, v26);
  }

  return self;
}

- (void)dealloc
{
  v3 = objc_opt_class();
  if ((WebCoreObjCScheduleDeallocateOnMainRunLoop(v3, self) & 1) == 0)
  {
    v5 = *&self[2]._userStyleSheet.m_storage.data[16];
    *&self[2]._userStyleSheet.m_storage.data[16] = 0;
    if (v5)
    {
      CFRelease(*(v5 + 8));
    }

    WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&self[1]._userStyleSheet.m_storage.data[32], v4);
    WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&self[1]._userStyleSheet.m_storage.data[16], v6);
    v8 = *&self->_userStyleSheet.m_storage.data[32];
    *&self->_userStyleSheet.m_storage.data[32] = 0;
    if (v8 && atomic_fetch_add_explicit(v8, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v8, v7);
    }

    v9 = *&self->_userStyleSheet.m_storage.data[24];
    *&self->_userStyleSheet.m_storage.data[24] = 0;
    if (v9)
    {
      if (atomic_fetch_add_explicit(v9, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v9, v7);
      }
    }

    v10.receiver = self;
    v10.super_class = _WKUserStyleSheet;
    [(_WKUserStyleSheet *)&v10 dealloc];
  }
}

- (NSString)source
{
  v2 = *&self->_userStyleSheet.m_storage.data[24];
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

- (NSURL)baseURL
{
  WTF::URL::createCFURL(&v6, &self->_userStyleSheet.m_storage.data[32]);
  v2 = v6;
  v6 = 0;
  if (v2)
  {
    v3 = v2;
    v4 = v6;
    v6 = 0;
    if (v4)
    {
    }
  }

  return v2;
}

@end