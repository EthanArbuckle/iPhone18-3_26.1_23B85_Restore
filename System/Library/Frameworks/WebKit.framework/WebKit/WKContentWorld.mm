@interface WKContentWorld
+ (WKContentWorld)defaultClientWorld;
+ (WKContentWorld)pageWorld;
+ (WKContentWorld)worldWithName:(NSString *)name;
+ (id)_worldWithConfiguration:(id)configuration;
- (NSString)name;
- (_WKUserContentWorld)_userContentWorld;
- (void)dealloc;
@end

@implementation WKContentWorld

+ (WKContentWorld)pageWorld
{
  v2 = *(API::ContentWorld::pageContentWorldSingleton(self) + 1);
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

+ (WKContentWorld)defaultClientWorld
{
  v2 = *(API::ContentWorld::defaultClientWorldSingleton(self) + 8);
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

+ (WKContentWorld)worldWithName:(NSString *)name
{
  MEMORY[0x19EB02040](&v12, name);
  API::ContentWorld::sharedWorldWithName(&v12, 0, v3, &v13);
  v5 = v12;
  v12 = 0;
  if (v5)
  {
    if (atomic_fetch_add_explicit(v5, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v5, v4);
    }
  }

  checkContentWorldOptions(v13, 0);
  v6 = *(v13 + 8);
  if (!v6)
  {
    v10 = 0;
    v13 = 0;
    goto LABEL_9;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = v6;
    v8 = v6;
    v9 = v13;
    v13 = 0;
    if (!v9)
    {
      return v6;
    }

    v10 = *(v9 + 8);
LABEL_9:
    CFRelease(v10);
    return v6;
  }

  result = 117;
  __break(0xC471u);
  return result;
}

- (void)dealloc
{
  v3 = objc_opt_class();
  if ((WebCoreObjCScheduleDeallocateOnMainRunLoop(v3, self) & 1) == 0)
  {
    API::ContentWorld::~ContentWorld(&self->_contentWorld, v4, v5);
    v6.receiver = self;
    v6.super_class = WKContentWorld;
    [(WKContentWorld *)&v6 dealloc];
  }
}

- (NSString)name
{
  v2 = *&self->_contentWorld.m_storage.data[32];
  if (v2)
  {
    atomic_fetch_add_explicit(v2, 2u, memory_order_relaxed);
    MEMORY[0x19EB00B70](&v7, v2, a2);
    if (atomic_fetch_add_explicit(v2, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v2, v3);
    }

    v2 = v7;
    v7 = 0;
    if (v2)
    {
      v4 = v2;
      v5 = v7;
      v7 = 0;
      if (v5)
      {
      }
    }
  }

  return v2;
}

- (_WKUserContentWorld)_userContentWorld
{
  v2 = [[_WKUserContentWorld alloc] _initWithContentWorld:self];
  v3 = v2;
  if (v2)
  {
    v4 = v2;
  }

  return v3;
}

+ (id)_worldWithConfiguration:(id)configuration
{
  allowAccessToClosedShadowRoots = [configuration allowAccessToClosedShadowRoots];
  if ([configuration allowAutofill])
  {
    allowAccessToClosedShadowRoots |= 2u;
  }

  if ([configuration allowElementUserInfo])
  {
    allowAccessToClosedShadowRoots |= 4u;
  }

  if ([configuration disableLegacyBuiltinOverrides])
  {
    allowAccessToClosedShadowRoots |= 8u;
  }

  MEMORY[0x19EB02040](&v14, [configuration name]);
  API::ContentWorld::sharedWorldWithName(&v14, allowAccessToClosedShadowRoots, v5, &v15);
  v7 = v14;
  v14 = 0;
  if (v7)
  {
    if (atomic_fetch_add_explicit(v7, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v7, v6);
    }
  }

  checkContentWorldOptions(v15, configuration);
  v8 = *(v15 + 8);
  if (!v8)
  {
    v12 = 0;
    v15 = 0;
    goto LABEL_15;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v9 = v8;
    v10 = v8;
    v11 = v15;
    v15 = 0;
    if (!v11)
    {
      return v8;
    }

    v12 = *(v11 + 8);
LABEL_15:
    CFRelease(v12);
    return v8;
  }

  result = 117;
  __break(0xC471u);
  return result;
}

@end