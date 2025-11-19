@interface WKUserScript
- (NSString)source;
- (WKContentWorld)_contentWorld;
- (WKUserScript)initWithSource:(NSString *)source injectionTime:(WKUserScriptInjectionTime)injectionTime forMainFrameOnly:(BOOL)forMainFrameOnly;
- (WKUserScript)initWithSource:(NSString *)source injectionTime:(WKUserScriptInjectionTime)injectionTime forMainFrameOnly:(BOOL)forMainFrameOnly inContentWorld:(WKContentWorld *)contentWorld;
- (_WKUserContentWorld)_userContentWorld;
- (id)_initWithSource:(id)a3 injectionTime:(int64_t)a4 forMainFrameOnly:(BOOL)a5 includeMatchPatternStrings:(id)a6 excludeMatchPatternStrings:(id)a7 associatedURL:(id)a8 contentWorld:(id)a9;
- (id)_initWithSource:(id)a3 injectionTime:(int64_t)a4 forMainFrameOnly:(BOOL)a5 includeMatchPatternStrings:(id)a6 excludeMatchPatternStrings:(id)a7 associatedURL:(id)a8 contentWorld:(id)a9 deferRunningUntilNotification:(BOOL)a10;
- (void)dealloc;
@end

@implementation WKUserScript

- (WKUserScript)initWithSource:(NSString *)source injectionTime:(WKUserScriptInjectionTime)injectionTime forMainFrameOnly:(BOOL)forMainFrameOnly
{
  v5 = forMainFrameOnly;
  v9 = +[WKContentWorld pageWorld];

  return [(WKUserScript *)self initWithSource:source injectionTime:injectionTime forMainFrameOnly:v5 inContentWorld:v9];
}

- (WKUserScript)initWithSource:(NSString *)source injectionTime:(WKUserScriptInjectionTime)injectionTime forMainFrameOnly:(BOOL)forMainFrameOnly inContentWorld:(WKContentWorld *)contentWorld
{
  v7 = forMainFrameOnly;
  v23.receiver = self;
  v23.super_class = WKUserScript;
  v10 = [(WKUserScript *)&v23 init];
  if (v10)
  {
    MEMORY[0x19EB02040](&v21, source);
    WTF::URL::URL(v20);
    v19[0] = 0;
    v19[1] = 0;
    v18[0] = 0;
    v18[1] = 0;
    MEMORY[0x19EB02F10](v22, &v21, v20, v19, v18, injectionTime != WKUserScriptInjectionTimeAtDocumentStart, v7, 0);
    API::Object::constructInWrapper<API::UserScript,WebCore::UserScript,API::ContentWorld &>(v10, v22, &contentWorld->_contentWorld);
    WebCore::UserScript::~UserScript(v22, v11);
    WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v18, v12);
    WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v19, v13);
    v15 = v20[0];
    v20[0] = 0;
    if (v15 && atomic_fetch_add_explicit(v15, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v15, v14);
    }

    v16 = v21;
    v21 = 0;
    if (v16 && atomic_fetch_add_explicit(v16, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v16, v14);
    }
  }

  return v10;
}

- (void)dealloc
{
  v3 = objc_opt_class();
  if ((WebCoreObjCScheduleDeallocateOnMainRunLoop(v3, self) & 1) == 0)
  {
    v5 = *self[2]._userScript.m_storage.data;
    *self[2]._userScript.m_storage.data = 0;
    if (v5)
    {
      CFRelease(*(v5 + 8));
    }

    WebCore::UserScript::~UserScript(&self->_userScript.m_storage.data[24], v4);
    v6.receiver = self;
    v6.super_class = WKUserScript;
    [(WKUserScript *)&v6 dealloc];
  }
}

- (NSString)source
{
  v2 = *&self->_userScript.m_storage.data[24];
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

- (_WKUserContentWorld)_userContentWorld
{
  v3 = [_WKUserContentWorld alloc];
  v4 = *(*self[2]._userScript.m_storage.data + 8);
  if (v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    result = 117;
    __break(0xC471u);
  }

  else
  {
    v5 = [(_WKUserContentWorld *)v3 _initWithContentWorld:v4];
    v6 = v5;
    if (v5)
    {
      v7 = v5;
    }

    return v6;
  }

  return result;
}

- (id)_initWithSource:(id)a3 injectionTime:(int64_t)a4 forMainFrameOnly:(BOOL)a5 includeMatchPatternStrings:(id)a6 excludeMatchPatternStrings:(id)a7 associatedURL:(id)a8 contentWorld:(id)a9 deferRunningUntilNotification:(BOOL)a10
{
  v13 = a5;
  if (a10)
  {
    [objc_msgSend(MEMORY[0x1E696AAA8] "currentHandler")];
  }

  return [(WKUserScript *)self _initWithSource:a3 injectionTime:a4 forMainFrameOnly:v13 includeMatchPatternStrings:a6 excludeMatchPatternStrings:a7 associatedURL:a8 contentWorld:?];
}

- (id)_initWithSource:(id)a3 injectionTime:(int64_t)a4 forMainFrameOnly:(BOOL)a5 includeMatchPatternStrings:(id)a6 excludeMatchPatternStrings:(id)a7 associatedURL:(id)a8 contentWorld:(id)a9
{
  v12 = a5;
  v32.receiver = self;
  v32.super_class = WKUserScript;
  v15 = [(WKUserScript *)&v32 init];
  if (v15)
  {
    MEMORY[0x19EB02040](&v30, a3);
    MEMORY[0x19EB01DE0](v29, a8);
    *v27 = a6;
    v16 = [a6 count];
    v34 = v27;
    WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::Vector<WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> WTF::makeVector<WTF::String>(NSArray *)::{lambda(unsigned long)#1}>(v28, v16, &v34, 0);
    v34 = a7;
    v17 = [a7 count];
    v33 = &v34;
    WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::Vector<WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> WTF::makeVector<WTF::String>(NSArray *)::{lambda(unsigned long)#1}>(v27, v17, &v33, 0);
    v18 = MEMORY[0x19EB02F10](v31, &v30, v29, v28, v27, a4 != 0, v12, 0);
    if (a9)
    {
      v19 = (a9 + 8);
    }

    else
    {
      v19 = API::ContentWorld::pageContentWorldSingleton(v18);
    }

    API::Object::constructInWrapper<API::UserScript,WebCore::UserScript,API::ContentWorld &>(v15, v31, v19);
    WebCore::UserScript::~UserScript(v31, v20);
    WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v27, v21);
    WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v28, v22);
    v24 = v29[0];
    v29[0] = 0;
    if (v24 && atomic_fetch_add_explicit(v24, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v24, v23);
    }

    v25 = v30;
    v30 = 0;
    if (v25 && atomic_fetch_add_explicit(v25, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v25, v23);
    }
  }

  return v15;
}

- (WKContentWorld)_contentWorld
{
  v2 = *(*self[2]._userScript.m_storage.data + 8);
  if (!v2)
  {
    return v2;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    return v2;
  }

  result = 117;
  __break(0xC471u);
  return result;
}

@end