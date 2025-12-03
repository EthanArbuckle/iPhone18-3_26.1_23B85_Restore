@interface WKWebpagePreferences
+ (WKWebpagePreferences)defaultPreferences;
- (BOOL)_captivePortalModeEnabled;
- (BOOL)isLockdownModeEnabled;
- (WKContentMode)preferredContentMode;
- (WKWebpagePreferences)init;
- (id)_activeContentRuleListActionPatterns;
- (id)_applicationNameForUserAgentWithModernCompatibility;
- (id)_customHeaderFields;
- (id)_customNavigatorPlatform;
- (id)_customUserAgent;
- (id)_customUserAgentAsSiteSpecificQuirks;
- (id)_userContentController;
- (id)_visibilityAdjustmentSelectors;
- (id)_visibilityAdjustmentSelectorsIncludingShadowHosts;
- (id)_websiteDataStore;
- (int64_t)_autoplayPolicy;
- (int64_t)preferredHTTPSNavigationPolicy;
- (unint64_t)_colorSchemePreference;
- (unint64_t)_deviceOrientationAndMotionAccessPolicy;
- (unint64_t)_popUpPolicy;
- (void)_setActiveContentRuleListActionPatterns:(id)patterns;
- (void)_setApplicationNameForUserAgentWithModernCompatibility:(id)compatibility;
- (void)_setAutoplayPolicy:(int64_t)policy;
- (void)_setCaptivePortalModeEnabled:(BOOL)enabled;
- (void)_setColorSchemePreference:(unint64_t)preference;
- (void)_setContentBlockersEnabled:(BOOL)enabled;
- (void)_setContentRuleListsEnabled:(BOOL)enabled exceptions:(id)exceptions;
- (void)_setCustomHeaderFields:(id)fields;
- (void)_setCustomNavigatorPlatform:(id)platform;
- (void)_setCustomUserAgent:(id)agent;
- (void)_setCustomUserAgentAsSiteSpecificQuirks:(id)quirks;
- (void)_setDeviceOrientationAndMotionAccessPolicy:(unint64_t)policy;
- (void)_setNetworkConnectionIntegrityEnabled:(BOOL)enabled;
- (void)_setPopUpPolicy:(unint64_t)policy;
- (void)_setPushAndNotificationAPIEnabled:(BOOL)enabled;
- (void)_setUserContentController:(id)controller;
- (void)_setVisibilityAdjustmentSelectors:(id)selectors;
- (void)_setVisibilityAdjustmentSelectorsIncludingShadowHosts:(id)hosts;
- (void)_setWebsiteDataStore:(id)store;
- (void)dealloc;
- (void)setLockdownModeEnabled:(BOOL)lockdownModeEnabled;
- (void)setPreferredContentMode:(WKContentMode)preferredContentMode;
- (void)setPreferredHTTPSNavigationPolicy:(int64_t)policy;
@end

@implementation WKWebpagePreferences

- (BOOL)_captivePortalModeEnabled
{
  if (BYTE1(self[3].super.isa) == 1)
  {
    LOBYTE(self) = self[3].super.isa;
  }

  else if (HIBYTE(WebKit::cachedLockdownModeEnabledGlobally(void)::cachedLockdownModeEnabledGlobally) == 1)
  {
    LOBYTE(self) = WebKit::cachedLockdownModeEnabledGlobally(void)::cachedLockdownModeEnabledGlobally;
  }

  else
  {
    LOWORD(self) = WebKit::isLockdownModeEnabledBySystemIgnoringCaching(self);
    WebKit::cachedLockdownModeEnabledGlobally(void)::cachedLockdownModeEnabledGlobally = self | 0x100;
  }

  return self & 1;
}

- (void)dealloc
{
  v3 = objc_opt_class();
  if ((WebCoreObjCScheduleDeallocateOnMainRunLoop(v3, self) & 1) == 0)
  {
    API::WebsitePolicies::~WebsitePolicies(&self->_websitePolicies, v4);
    v5.receiver = self;
    v5.super_class = WKWebpagePreferences;
    [(WKWebpagePreferences *)&v5 dealloc];
  }
}

+ (WKWebpagePreferences)defaultPreferences
{
  v2 = objc_alloc_init(self);
  v3 = v2;
  if (v2)
  {
    v4 = v2;
  }

  return v3;
}

- (WKWebpagePreferences)init
{
  v7.receiver = self;
  v7.super_class = WKWebpagePreferences;
  v2 = [(WKWebpagePreferences *)&v7 init];
  v3 = v2;
  if (v2)
  {
    v4 = API::Object::apiObjectsUnderConstruction(v2);
    _apiObject = [(WKWebpagePreferences *)v3 _apiObject];
    v9 = v3;
    v10 = _apiObject;
    WTF::HashMap<API::Object *,void const*,WTF::DefaultHash<API::Object *>,WTF::HashTraits<API::Object *>,WTF::HashTraits<void const*>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::add<void const*>(v4, &v10, &v9, v8);
    API::WebsitePolicies::WebsitePolicies([(WKWebpagePreferences *)v3 _apiObject]);
  }

  return v3;
}

- (void)_setContentBlockersEnabled:(BOOL)enabled
{
  LOBYTE(self[2].super.isa) = enabled;
  v4 = *self[2]._websitePolicies.m_storage.data;
  *self[2]._websitePolicies.m_storage.data = 0;
  if (v4)
  {
    WTF::HashTable<WTF::String,WTF::String,WTF::IdentityExtractor,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::deallocateTable(v4, a2);
  }
}

- (void)_setContentRuleListsEnabled:(BOOL)enabled exceptions:(id)exceptions
{
  v27 = *MEMORY[0x1E69E9840];
  v7 = WTF::HashTable<WTF::String,WTF::String,WTF::IdentityExtractor,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::computeBestTableSize([exceptions count]);
  v8 = WTF::fastZeroedMalloc((8 * v7 + 16));
  v9 = (v8 + 16);
  v25 = (v8 + 16);
  *(v8 + 8) = v7 - 1;
  *(v8 + 12) = v7;
  *v8 = 0;
  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v11 = [exceptions countByEnumeratingWithState:&v21 objects:v26 count:16];
  if (v11)
  {
    v12 = *v22;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v22 != v12)
        {
          objc_enumerationMutation(exceptions);
        }

        MEMORY[0x19EB02040](&v20, *(*(&v21 + 1) + 8 * i));
        WTF::HashTable<WTF::String,WTF::String,WTF::IdentityExtractor,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::add<(WTF::ShouldValidateKey)1>(&v25, &v20, v14, &v19);
        v16 = v20;
        v20 = 0;
        if (v16 && atomic_fetch_add_explicit(v16, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v16, v15);
        }
      }

      v11 = [exceptions countByEnumeratingWithState:&v21 objects:v26 count:16];
    }

    while (v11);
    v9 = v25;
  }

  v25 = 0;
  LOBYTE(self[2].super.isa) = enabled;
  v17 = *self[2]._websitePolicies.m_storage.data;
  *self[2]._websitePolicies.m_storage.data = v9;
  if (v17)
  {
    WTF::HashTable<WTF::String,WTF::String,WTF::IdentityExtractor,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::deallocateTable(v17, v10);
    if (v25)
    {
      WTF::HashTable<WTF::String,WTF::String,WTF::IdentityExtractor,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::deallocateTable(v25, v18);
    }
  }
}

- (void)_setActiveContentRuleListActionPatterns:(id)patterns
{
  v9 = 0;
  v10 = &v9;
  v11 = 0x3812000000;
  v12 = __Block_byref_object_copy__5;
  v13 = __Block_byref_object_dispose__5;
  v14 = &unk_19EA2799F;
  v15 = 0;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __64__WKWebpagePreferences__setActiveContentRuleListActionPatterns___block_invoke;
  v8[3] = &unk_1E76314D8;
  v8[4] = &v9;
  [patterns enumerateKeysAndObjectsUsingBlock:v8];
  v5 = v10[6];
  v10[6] = 0;
  v6 = *&self->_websitePolicies.m_storage.data[24];
  *&self->_websitePolicies.m_storage.data[24] = v5;
  if (v6)
  {
    WTF::HashTable<WTF::String,WTF::KeyValuePair<WTF::String,WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::deallocateTable(v6, v4);
  }

  _Block_object_dispose(&v9, 8);
  if (v15)
  {
    WTF::HashTable<WTF::String,WTF::KeyValuePair<WTF::String,WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::deallocateTable(v15, v7);
  }
}

unint64_t __64__WKWebpagePreferences__setActiveContentRuleListActionPatterns___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v22 = *MEMORY[0x1E69E9840];
  v19 = 0;
  v20 = 0;
  result = [a3 count];
  if (result)
  {
    if (result >> 29)
    {
      __break(0xC471u);
      return result;
    }

    LODWORD(v20) = result;
    v19 = WTF::fastMalloc((8 * result));
  }

  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v7 = [a3 countByEnumeratingWithState:&v15 objects:v21 count:16];
  if (v7)
  {
    v8 = *v16;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v16 != v8)
        {
          objc_enumerationMutation(a3);
        }

        v13[0] = 0;
        v13[0] = *(*(&v15 + 1) + 8 * i);
        if (HIDWORD(v20) == v20)
        {
          WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::appendSlowCase<(WTF::FailureAction)0,NSString *&>(&v19, v13);
        }

        else
        {
          MEMORY[0x19EB02040](v19 + 8 * HIDWORD(v20));
          ++HIDWORD(v20);
        }
      }

      v7 = [a3 countByEnumeratingWithState:&v15 objects:v21 count:{16, v13[0]}];
    }

    while (v7);
  }

  v10 = *(*(a1 + 32) + 8);
  MEMORY[0x19EB02040](&v14, a2);
  WTF::HashMap<WTF::String,WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::add<WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>((v10 + 48), &v14, &v19, v13);
  v12 = v14;
  v14 = 0;
  if (v12)
  {
    if (atomic_fetch_add_explicit(v12, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v12, v11);
    }
  }

  return WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v19, v11);
}

- (id)_activeContentRuleListActionPatterns
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  v3 = WTF::HashTable<WTF::String,WTF::KeyValuePair<WTF::String,mpark::variant<WTF::String,unsigned long long,long long,BOOL,double>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,mpark::variant<WTF::String,unsigned long long,long long,BOOL,double>>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,mpark::variant<WTF::String,unsigned long long,long long,BOOL,double>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<mpark::variant<WTF::String,unsigned long long,long long,BOOL,double>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::begin(&self->_websitePolicies.m_storage.data[24]);
  v4 = v3;
  v6 = v5;
  v7 = *&self->_websitePolicies.m_storage.data[24];
  if (v7)
  {
    v8 = (v7 + 24 * *(v7 - 4));
  }

  else
  {
    v8 = 0;
  }

  if (v8 != v3)
  {
    do
    {
      v9 = [MEMORY[0x1E695DFA8] set];
      v10 = *(v4 + 5);
      if (v10)
      {
        v11 = v4[1];
        v12 = 8 * v10;
        do
        {
          v13 = *v11;
          if (*v11)
          {
            atomic_fetch_add_explicit(v13, 2u, memory_order_relaxed);
            MEMORY[0x19EB00B70](&v23, v13);
            if (atomic_fetch_add_explicit(v13, 0xFFFFFFFE, memory_order_relaxed) == 2)
            {
              WTF::StringImpl::destroy(v13, v14);
            }
          }

          else
          {
            v23 = &stru_1F1147748;
            v15 = &stru_1F1147748;
          }

          [v9 addObject:v23];
          v16 = v23;
          v23 = 0;
          if (v16)
          {
          }

          ++v11;
          v12 -= 8;
        }

        while (v12);
      }

      v17 = *v4;
      if (*v4)
      {
        atomic_fetch_add_explicit(v17, 2u, memory_order_relaxed);
        MEMORY[0x19EB00B70](&v23, v17);
        if (atomic_fetch_add_explicit(v17, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v17, v18);
        }
      }

      else
      {
        v23 = &stru_1F1147748;
        v19 = &stru_1F1147748;
      }

      [dictionary setObject:v9 forKey:v23];
      v20 = v23;
      v23 = 0;
      if (v20)
      {
      }

      do
      {
        v4 += 3;
      }

      while (v4 != v6 && *v4 + 1 <= 1);
    }

    while (v4 != v8);
  }

  return dictionary;
}

- (void)_setAutoplayPolicy:(int64_t)policy
{
  if (policy <= 3)
  {
    self[2]._websitePolicies.m_storage.data[10] = policy;
  }
}

- (int64_t)_autoplayPolicy
{
  if (self[2]._websitePolicies.m_storage.data[10] - 1 < 3)
  {
    return (self[2]._websitePolicies.m_storage.data[10] - 1) + 1;
  }

  else
  {
    return 0;
  }
}

- (void)_setDeviceOrientationAndMotionAccessPolicy:(unint64_t)policy
{
  if (policy == 1)
  {
    v3 = 256;
  }

  else
  {
    v3 = 257;
  }

  if (!policy)
  {
    v3 = 258;
  }

  *&self[2]._websitePolicies.m_storage.data[21] = v3;
}

- (unint64_t)_deviceOrientationAndMotionAccessPolicy
{
  v2 = 1;
  if (*&self[2]._websitePolicies.m_storage.data[21])
  {
    v2 = 2;
  }

  if (*&self[2]._websitePolicies.m_storage.data[21] == 2 || (*&self[2]._websitePolicies.m_storage.data[21] & 0x100) == 0)
  {
    return 0;
  }

  else
  {
    return v2;
  }
}

- (void)_setPopUpPolicy:(unint64_t)policy
{
  if (policy <= 2)
  {
    self[2]._websitePolicies.m_storage.data[11] = policy;
  }
}

- (unint64_t)_popUpPolicy
{
  v2 = self[2]._websitePolicies.m_storage.data[11];
  if (v2 == 2)
  {
    return 2;
  }

  else
  {
    return v2 == 1;
  }
}

- (id)_customHeaderFields
{
  v3 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:*&self->_websitePolicies.m_storage.data[44]];
  v4 = *&self->_websitePolicies.m_storage.data[44];
  if (v4)
  {
    v5 = *&self->_websitePolicies.m_storage.data[32];
    for (i = 32 * v4; i; i -= 32)
    {
      v7 = API::Object::newObject(0x30uLL, 52);
      v8 = API::Object::Object(v7);
      *v8 = &unk_1F10E5F30;
      WTF::Vector<WebCore::HTTPHeaderField,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::Vector(v8 + 16, v5);
      WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::Vector((v7 + 4), v5 + 16);
      v9 = v7[1];
      if (v9)
      {
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          result = 117;
          __break(0xC471u);
          return result;
        }

        v10 = v9;
        CFRelease(v7[1]);
        [v3 addObject:v9];
      }

      else
      {
        CFRelease(0);
      }

      v5 += 32;
    }
  }

  if (v3)
  {
    v11 = v3;
  }

  return v3;
}

- (void)_setCustomHeaderFields:(id)fields
{
  v5 = [fields count];
  v8 = v5;
  v19 = 0uLL;
  if (v5)
  {
    if (v5 >> 27)
    {
      __break(0xC471u);
    }

    else
    {
      v10 = WTF::fastMalloc((32 * v5));
      v9 = 0;
      DWORD2(v19) = v8;
      *&v19 = v10;
      v13 = v10 + 16;
      while (1)
      {
        v14 = [objc_msgSend(fields objectAtIndexedSubscript:{v9, v19), "_apiObject"}];
        if ((*(*v14 + 16))(v14) != 52)
        {
          break;
        }

        WTF::Vector<WebCore::HTTPHeaderField,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::Vector(&v20, v14 + 16);
        WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::Vector(&v23, v14 + 32);
        v15 = v20;
        v20 = 0;
        *(v13 - 16) = v15;
        LODWORD(v15) = v21;
        v21 = 0;
        *(v13 - 8) = v15;
        LODWORD(v15) = v22;
        v22 = 0;
        *(v13 - 4) = v15;
        v16 = v23;
        v23 = 0;
        *v13 = v16;
        LODWORD(v16) = v24;
        v24 = 0;
        *(v13 + 8) = v16;
        LODWORD(v16) = v25;
        v25 = 0;
        *(v13 + 12) = v16;
        HIDWORD(v19) = ++v9;
        WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v23, v17);
        WTF::Vector<WebCore::HTTPHeaderField,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v20, v18);
        v13 += 32;
        if (v8 == v9)
        {
          goto LABEL_3;
        }
      }

      __break(0xC471u);
    }

    JUMPOUT(0x19DB1ECB8);
  }

  LODWORD(v9) = 0;
  v10 = 0;
LABEL_3:
  v11 = *&self->_websitePolicies.m_storage.data[44];
  if (v11)
  {
    WTF::VectorDestructor<true,WebCore::CustomHeaderFields>::destruct(*&self->_websitePolicies.m_storage.data[32], (*&self->_websitePolicies.m_storage.data[32] + 32 * v11));
  }

  v12 = *&self->_websitePolicies.m_storage.data[32];
  if (v12)
  {
    *&self->_websitePolicies.m_storage.data[32] = 0;
    *&self->_websitePolicies.m_storage.data[40] = 0;
    WTF::fastFree(v12, v6);
    v10 = v19;
    LODWORD(v8) = DWORD2(v19);
    LODWORD(v9) = HIDWORD(v19);
  }

  *&v7 = 0;
  v19 = v7;
  *&self->_websitePolicies.m_storage.data[32] = v10;
  *&self->_websitePolicies.m_storage.data[40] = v8;
  *&self->_websitePolicies.m_storage.data[44] = v9;
  WTF::Vector<WebCore::CustomHeaderFields,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v19, v6);
}

- (id)_websiteDataStore
{
  v2 = *&self[2]._websitePolicies.m_storage.data[32];
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
      JUMPOUT(0x19DB1ED50);
    }
  }

  return v3;
}

- (void)_setWebsiteDataStore:(id)store
{
  v4 = store + 8;
  CFRetain(*(store + 2));
  v5 = *&self[2]._websitePolicies.m_storage.data[32];
  *&self[2]._websitePolicies.m_storage.data[32] = v4;
  if (v5)
  {
    v6 = *(v5 + 8);

    CFRelease(v6);
  }
}

- (id)_userContentController
{
  v2 = *&self[2]._websitePolicies.m_storage.data[40];
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
      JUMPOUT(0x19DB1EE18);
    }
  }

  return v3;
}

- (void)_setUserContentController:(id)controller
{
  v4 = controller + 8;
  if (controller)
  {
    CFRetain(*(controller + 2));
  }

  v5 = *&self[2]._websitePolicies.m_storage.data[40];
  *&self[2]._websitePolicies.m_storage.data[40] = v4;
  if (v5)
  {
    v6 = *(v5 + 8);

    CFRelease(v6);
  }
}

- (void)_setCustomUserAgent:(id)agent
{
  MEMORY[0x19EB02040](&v8, agent);
  v5 = v8;
  v8 = 0;
  v6 = *&self[1]._websitePolicies.m_storage.data[8];
  *&self[1]._websitePolicies.m_storage.data[8] = v5;
  if (v6)
  {
    if (atomic_fetch_add_explicit(v6, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v6, v4);
    }

    v7 = v8;
    v8 = 0;
    if (v7)
    {
      if (atomic_fetch_add_explicit(v7, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v7, v4);
      }
    }
  }
}

- (id)_customUserAgent
{
  v2 = *&self[1]._websitePolicies.m_storage.data[8];
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

    return v4;
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

  return v4;
}

- (void)_setCustomUserAgentAsSiteSpecificQuirks:(id)quirks
{
  MEMORY[0x19EB02040](&v8, quirks);
  v5 = v8;
  v8 = 0;
  v6 = *&self[1]._websitePolicies.m_storage.data[16];
  *&self[1]._websitePolicies.m_storage.data[16] = v5;
  if (v6)
  {
    if (atomic_fetch_add_explicit(v6, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v6, v4);
    }

    v7 = v8;
    v8 = 0;
    if (v7)
    {
      if (atomic_fetch_add_explicit(v7, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v7, v4);
      }
    }
  }
}

- (id)_customUserAgentAsSiteSpecificQuirks
{
  v2 = *&self[1]._websitePolicies.m_storage.data[16];
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

    return v4;
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

  return v4;
}

- (void)_setCustomNavigatorPlatform:(id)platform
{
  MEMORY[0x19EB02040](&v8, platform);
  v5 = v8;
  v8 = 0;
  v6 = *&self[1]._websitePolicies.m_storage.data[24];
  *&self[1]._websitePolicies.m_storage.data[24] = v5;
  if (v6)
  {
    if (atomic_fetch_add_explicit(v6, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v6, v4);
    }

    v7 = v8;
    v8 = 0;
    if (v7)
    {
      if (atomic_fetch_add_explicit(v7, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v7, v4);
      }
    }
  }
}

- (id)_customNavigatorPlatform
{
  v2 = *&self[1]._websitePolicies.m_storage.data[24];
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

    return v4;
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

  return v4;
}

- (id)_applicationNameForUserAgentWithModernCompatibility
{
  v2 = *&self[1]._websitePolicies.m_storage.data[32];
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

  return v4;
}

- (void)_setApplicationNameForUserAgentWithModernCompatibility:(id)compatibility
{
  MEMORY[0x19EB02040](&v8, compatibility);
  v5 = v8;
  if (v8)
  {
    atomic_fetch_add_explicit(v8, 2u, memory_order_relaxed);
  }

  v6 = *&self[1]._websitePolicies.m_storage.data[32];
  *&self[1]._websitePolicies.m_storage.data[32] = v5;
  if (v6 && atomic_fetch_add_explicit(v6, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v6, v4);
  }

  v7 = v8;
  v8 = 0;
  if (v7)
  {
    if (atomic_fetch_add_explicit(v7, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v7, v4);
    }
  }
}

- (void)_setCaptivePortalModeEnabled:(BOOL)enabled
{
  enabledCopy = enabled;
  if (!enabled && (WTF::processHasEntitlement() & 1) == 0 && (WTF::processHasEntitlement() & 1) == 0)
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D930] format:@"The 'com.apple.developer.web-browser' restricted entitlement is required to disable Lockdown mode"];
  }

  LOWORD(self[3].super.isa) = enabledCopy | 0x100;
}

- (unint64_t)_colorSchemePreference
{
  v2 = self[2]._websitePolicies.m_storage.data[19];
  if (v2 == 2)
  {
    return 2;
  }

  else
  {
    return v2 == 1;
  }
}

- (void)_setColorSchemePreference:(unint64_t)preference
{
  if (preference <= 2)
  {
    self[2]._websitePolicies.m_storage.data[19] = preference;
  }
}

- (void)setPreferredContentMode:(WKContentMode)preferredContentMode
{
  v3 = preferredContentMode == WKContentModeMobile;
  if (preferredContentMode == WKContentModeDesktop)
  {
    v3 = 2;
  }

  self[2]._websitePolicies.m_storage.data[20] = v3;
}

- (WKContentMode)preferredContentMode
{
  v2 = self[2]._websitePolicies.m_storage.data[20];
  if (v2 == 2)
  {
    return 2;
  }

  else
  {
    return (v2 == 1);
  }
}

- (BOOL)isLockdownModeEnabled
{
  if (BYTE1(self[3].super.isa) == 1)
  {
    LOBYTE(self) = self[3].super.isa;
  }

  else if (HIBYTE(WebKit::cachedLockdownModeEnabledGlobally(void)::cachedLockdownModeEnabledGlobally) == 1)
  {
    LOBYTE(self) = WebKit::cachedLockdownModeEnabledGlobally(void)::cachedLockdownModeEnabledGlobally;
  }

  else
  {
    LOWORD(self) = WebKit::isLockdownModeEnabledBySystemIgnoringCaching(self);
    WebKit::cachedLockdownModeEnabledGlobally(void)::cachedLockdownModeEnabledGlobally = self | 0x100;
  }

  return self & 1;
}

- (void)setLockdownModeEnabled:(BOOL)lockdownModeEnabled
{
  v3 = lockdownModeEnabled;
  if (!lockdownModeEnabled && (WTF::processHasEntitlement() & 1) == 0 && (WTF::processHasEntitlement() & 1) == 0)
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D930] format:@"The 'com.apple.developer.web-browser' restricted entitlement is required to disable lockdown mode"];
  }

  LOWORD(self[3].super.isa) = v3 | 0x100;
}

- (void)setPreferredHTTPSNavigationPolicy:(int64_t)policy
{
  if (policy >= 4)
  {
    policyCopy = 0;
  }

  else
  {
    policyCopy = policy;
  }

  self[2]._websitePolicies.m_storage.data[23] = policyCopy;
}

- (int64_t)preferredHTTPSNavigationPolicy
{
  if (self[2]._websitePolicies.m_storage.data[23] - 1 < 3)
  {
    return (self[2]._websitePolicies.m_storage.data[23] - 1) + 1;
  }

  else
  {
    return 0;
  }
}

- (void)_setNetworkConnectionIntegrityEnabled:(BOOL)enabled
{
  if (enabled)
  {
    v3 = 449;
  }

  else
  {
    v3 = 0;
  }

  *&self[1]._websitePolicies.m_storage.data[40] = *&self[1]._websitePolicies.m_storage.data[40] & 0xFE3E | v3;
}

- (void)_setVisibilityAdjustmentSelectorsIncludingShadowHosts:(id)hosts
{
  v59 = *MEMORY[0x1E69E9840];
  v54 = 0;
  v55 = 0;
  v5 = [hosts count];
  if (v5)
  {
    if (v5 >> 28)
    {
      __break(0xC471u);
LABEL_42:
      JUMPOUT(0x19DB1FA58);
    }

    LODWORD(v55) = v5;
    v54 = WTF::fastMalloc((16 * v5));
  }

  v52 = 0u;
  v53 = 0u;
  v50 = 0u;
  v51 = 0u;
  v6 = [hosts countByEnumeratingWithState:&v50 objects:v58 count:16];
  if (v6)
  {
    v36 = *v51;
    selfCopy = self;
    obj = hosts;
    do
    {
      v7 = 0;
      v35 = v6;
      do
      {
        if (*v51 != v36)
        {
          objc_enumerationMutation(obj);
        }

        v8 = *(*(&v50 + 1) + 8 * v7);
        v48 = 0;
        v49 = 0;
        v9 = [v8 count];
        v10 = v9;
        if (v9)
        {
          if (v9 >> 29)
          {
            __break(0xC471u);
            goto LABEL_42;
          }

          v11 = WTF::fastMalloc((8 * v9));
          LODWORD(v49) = v10;
          v48 = v11;
        }

        v46 = 0u;
        v47 = 0u;
        v44 = 0u;
        v45 = 0u;
        v13 = [v8 countByEnumeratingWithState:&v44 objects:v57 count:16];
        if (v13)
        {
          v14 = *v45;
          do
          {
            v15 = 0;
            do
            {
              if (*v45 != v14)
              {
                objc_enumerationMutation(v8);
              }

              v16 = *(*(&v44 + 1) + 8 * v15);
              v43 = 0;
              v17 = WTF::HashTable<WTF::String,WTF::String,WTF::IdentityExtractor,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::computeBestTableSize([v16 count]);
              v18 = WTF::fastZeroedMalloc((8 * v17 + 16));
              v43 = (v18 + 16);
              *(v18 + 8) = v17 - 1;
              *(v18 + 12) = v17;
              *v18 = 0;
              v41 = 0u;
              v42 = 0u;
              v39 = 0u;
              v40 = 0u;
              v20 = [v16 countByEnumeratingWithState:&v39 objects:v56 count:16];
              if (v20)
              {
                v21 = *v40;
                do
                {
                  for (i = 0; i != v20; ++i)
                  {
                    if (*v40 != v21)
                    {
                      objc_enumerationMutation(v16);
                    }

                    MEMORY[0x19EB02040](&v38, *(*(&v39 + 1) + 8 * i));
                    WTF::HashTable<WTF::String,WTF::String,WTF::IdentityExtractor,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::add<(WTF::ShouldValidateKey)1>(&v43, &v38, v23, v37);
                    v25 = v38;
                    v38 = 0;
                    if (v25 && atomic_fetch_add_explicit(v25, 0xFFFFFFFE, memory_order_relaxed) == 2)
                    {
                      WTF::StringImpl::destroy(v25, v24);
                    }
                  }

                  v20 = [v16 countByEnumeratingWithState:&v39 objects:v56 count:16];
                }

                while (v20);
              }

              v26 = HIDWORD(v49);
              if (HIDWORD(v49) == v49)
              {
                v27 = WTF::Vector<WTF::HashSet<WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(&v48, HIDWORD(v49) + 1, &v43);
                v26 = HIDWORD(v49);
                v28 = v48;
                *(v48 + 8 * HIDWORD(v49)) = 0;
                v29 = *v27;
                *v27 = 0;
              }

              else
              {
                v28 = v48;
                *(v48 + 8 * HIDWORD(v49)) = 0;
                v29 = v43;
                v43 = 0;
              }

              *(v28 + 8 * v26) = v29;
              HIDWORD(v49) = v26 + 1;
              if (v43)
              {
                WTF::HashTable<WTF::String,WTF::String,WTF::IdentityExtractor,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::deallocateTable(v43, v19);
              }

              ++v15;
            }

            while (v15 != v13);
            v13 = [v8 countByEnumeratingWithState:&v44 objects:v57 count:16];
          }

          while (v13);
        }

        if (HIDWORD(v55) == v55)
        {
          WTF::Vector<WTF::Vector<WTF::HashSet<WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::appendSlowCase<(WTF::FailureAction)0,WTF::Vector<WTF::HashSet<WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>(&v54, &v48);
        }

        else
        {
          v30 = v54 + 16 * HIDWORD(v55);
          *v30 = 0;
          *(v30 + 8) = 0;
          v31 = v48;
          v48 = 0;
          *v30 = v31;
          LODWORD(v31) = v49;
          LODWORD(v49) = 0;
          *(v30 + 8) = v31;
          LODWORD(v31) = HIDWORD(v49);
          HIDWORD(v49) = 0;
          *(v30 + 12) = v31;
          ++HIDWORD(v55);
        }

        WTF::Vector<WTF::HashSet<WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v48, v12);
        ++v7;
      }

      while (v7 != v35);
      v6 = [obj countByEnumeratingWithState:&v50 objects:v58 count:16];
      self = selfCopy;
    }

    while (v6);
  }

  API::WebsitePolicies::setVisibilityAdjustmentSelectors(&self->_websitePolicies, &v54);
  WTF::Vector<WTF::Vector<WTF::HashSet<WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v54, v32);
}

- (id)_visibilityAdjustmentSelectorsIncludingShadowHosts
{
  v23 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:*&self[1]._websitePolicies.m_storage.data[4]];
  v3 = *&self[1]._websitePolicies.m_storage.data[4];
  if (v3)
  {
    isa = self[1].super.isa;
    v22 = isa + 16 * v3;
    do
    {
      v5 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:*(isa + 3)];
      v24 = isa;
      v6 = *(isa + 3);
      if (v6)
      {
        v7 = *isa;
        v25 = *isa + 8 * v6;
        do
        {
          v8 = objc_alloc(MEMORY[0x1E695DFA8]);
          if (*v7)
          {
            v9 = *(*v7 - 3);
          }

          else
          {
            v9 = 0;
          }

          v10 = [v8 initWithCapacity:v9];
          v11 = WTF::HashTable<WTF::String,WTF::String,WTF::IdentityExtractor,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::begin(v7);
          v12 = v11;
          v14 = v13;
          if (*v7)
          {
            v15 = &(*v7)[*(*v7 - 1)];
          }

          else
          {
            v15 = 0;
          }

          if (v15 != v11)
          {
            do
            {
              v16 = *v12;
              if (*v12)
              {
                atomic_fetch_add_explicit(v16, 2u, memory_order_relaxed);
                MEMORY[0x19EB00B70](&v26, v16);
                if (atomic_fetch_add_explicit(v16, 0xFFFFFFFE, memory_order_relaxed) == 2)
                {
                  WTF::StringImpl::destroy(v16, v17);
                }
              }

              else
              {
                v26 = &stru_1F1147748;
                v18 = &stru_1F1147748;
              }

              [v10 addObject:v26];
              v19 = v26;
              v26 = 0;
              if (v19)
              {
              }

              do
              {
                ++v12;
              }

              while (v12 != v14 && *v12 + 1 <= 1);
            }

            while (v12 != v15);
          }

          [v5 addObject:v10];
          if (v10)
          {
          }

          ++v7;
        }

        while (v7 != v25);
      }

      [v23 addObject:v5];
      if (v5)
      {
      }

      isa = (v24 + 16);
    }

    while (v24 + 16 != v22);
  }

  result = v23;
  if (v23)
  {
    v21 = v23;
    return v23;
  }

  return result;
}

- (void)_setVisibilityAdjustmentSelectors:(id)selectors
{
  v15 = *MEMORY[0x1E69E9840];
  v5 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(selectors, "count")}];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v6 = [selectors countByEnumeratingWithState:&v9 objects:v14 count:16];
  if (v6)
  {
    v7 = *v10;
    do
    {
      v8 = 0;
      do
      {
        if (*v10 != v7)
        {
          objc_enumerationMutation(selectors);
        }

        v13 = [MEMORY[0x1E695DFD8] setWithObject:*(*(&v9 + 1) + 8 * v8)];
        [v5 addObject:{objc_msgSend(MEMORY[0x1E695DEC8], "arrayWithObjects:count:", &v13, 1)}];
        ++v8;
      }

      while (v6 != v8);
      v6 = [selectors countByEnumeratingWithState:&v9 objects:v14 count:16];
    }

    while (v6);
  }

  [(WKWebpagePreferences *)self _setVisibilityAdjustmentSelectorsIncludingShadowHosts:v5];
  if (v5)
  {
  }
}

- (id)_visibilityAdjustmentSelectors
{
  v3 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  v4 = *&self[1]._websitePolicies.m_storage.data[4];
  if (v4)
  {
    isa = self[1].super.isa;
    v6 = (isa + 16 * v4);
    do
    {
      if (*(isa + 3) == 1)
      {
        v7 = *isa;
        v8 = WTF::HashTable<WTF::String,WTF::String,WTF::IdentityExtractor,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::begin(*isa);
        v9 = v8;
        v11 = v10;
        v12 = *v7 ? *v7 + 8 * *(*v7 - 4) : 0;
        if (v12 != v8)
        {
          do
          {
            v13 = *v9;
            if (*v9)
            {
              atomic_fetch_add_explicit(v13, 2u, memory_order_relaxed);
              MEMORY[0x19EB00B70](&v19, v13);
              if (atomic_fetch_add_explicit(v13, 0xFFFFFFFE, memory_order_relaxed) == 2)
              {
                WTF::StringImpl::destroy(v13, v14);
              }
            }

            else
            {
              v19 = &stru_1F1147748;
              v15 = &stru_1F1147748;
            }

            [v3 addObject:v19];
            v16 = v19;
            v19 = 0;
            if (v16)
            {
            }

            do
            {
              ++v9;
            }

            while (v9 != v11 && *v9 + 1 <= 1);
          }

          while (v9 != v12);
        }
      }

      isa = (isa + 16);
    }

    while (isa != v6);
  }

  if (v3)
  {
    v17 = v3;
  }

  return v3;
}

- (void)_setPushAndNotificationAPIEnabled:(BOOL)enabled
{
  if (enabled)
  {
    v3 = 2;
  }

  else
  {
    v3 = 1;
  }

  self[2]._websitePolicies.m_storage.data[27] = v3;
}

@end