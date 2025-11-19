@interface WKProcessPool
+ (BOOL)_isMetalDebugDeviceEnabledInGPUProcessForTesting;
+ (BOOL)_isMetalShaderValidationEnabledInGPUProcessForTesting;
+ (BOOL)_lockdownModeEnabledGloballyForTesting;
+ (id)_allProcessPoolsForTesting;
+ (id)_gpuProcessInfo;
+ (id)_networkingProcessInfo;
+ (id)_sharedProcessPool;
+ (id)_webContentProcessInfo;
+ (id)_websiteDataURLForContainerWithURL:(id)a3 bundleIdentifierIfNotInContainer:(id)a4;
- (BOOL)_hasPrewarmedWebProcess;
- (BOOL)_isWebProcessSuspended:(int)a3;
- (BOOL)_requestWebProcessTermination:(int)a3;
- (NSString)description;
- (NSURL)_javaScriptConfigurationDirectory;
- (OpaqueWKNotificationManager)_notificationManagerForTesting;
- (WKGeolocationProviderIOS)_geolocationProvider;
- (WKProcessPool)init;
- (WKProcessPool)initWithCoder:(id)a3;
- (_WKProcessPoolConfiguration)_configuration;
- (id).cxx_construct;
- (id)_initWithConfiguration:(id)a3;
- (int)_gpuProcessIdentifier;
- (int)_prewarmedProcessIdentifier;
- (unint64_t)_numberOfConnectedGamepadsForTesting;
- (unint64_t)_processCacheSize;
- (unint64_t)_webPageContentProcessCount;
- (unint64_t)_webProcessCountIgnoringPrewarmedAndCached;
- (void)_addSupportedPlugin:(id)a3 named:(id)a4 withMimeTypes:(id)a5 withExtensions:(id)a6;
- (void)_automationCapabilitiesDidChange;
- (void)_clearPermanentCredentialsForProtectionSpace:(id)a3;
- (void)_getActivePagesOriginsInWebProcessForTesting:(int)a3 completionHandler:(id)a4;
- (void)_isJITDisabledInAllRemoteWorkerProcesses:(id)a3;
- (void)_registerURLSchemeAsBypassingContentSecurityPolicy:(id)a3;
- (void)_registerURLSchemeAsCanDisplayOnlyIfCanRequest:(id)a3;
- (void)_registerURLSchemeAsSecure:(id)a3;
- (void)_seedResourceLoadStatisticsForTestingWithFirstParty:(id)a3 thirdParty:(id)a4 shouldScheduleNotification:(BOOL)a5 completionHandler:(id)a6;
- (void)_setAutomationDelegate:(id)a3;
- (void)_setAutomationSession:(id)a3;
- (void)_setCoreLocationProvider:(id)a3;
- (void)_setDomainRelaxationForbiddenForURLScheme:(id)a3;
- (void)_setDownloadDelegate:(id)a3;
- (void)_setJavaScriptConfigurationDirectory:(id)a3;
- (void)_setObject:(id)a3 forBundleParameter:(id)a4;
- (void)_setObjectsForBundleParametersWithDictionary:(id)a3;
- (void)dealloc;
- (void)encodeWithCoder:(id)a3;
@end

@implementation WKProcessPool

- (id).cxx_construct
{
  *(self + 157) = 0;
  *(self + 1224) = 0u;
  *(self + 1240) = 0u;
  return self;
}

- (id)_initWithConfiguration:(id)a3
{
  v8.receiver = self;
  v8.super_class = WKProcessPool;
  v4 = [(WKProcessPool *)&v8 init];
  v5 = v4;
  if (v4)
  {
    v6 = API::Object::apiObjectsUnderConstruction(v4);
    v11 = [(WKProcessPool *)v5 _apiObject];
    v10 = v5;
    WTF::HashMap<API::Object *,void const*,WTF::DefaultHash<API::Object *>,WTF::HashTraits<API::Object *>,WTF::HashTraits<void const*>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::add<void const*>(v6, &v11, &v10, v9);
    WebKit::WebProcessPool::WebProcessPool([(WKProcessPool *)v5 _apiObject], (a3 + 8));
  }

  return 0;
}

- (WKProcessPool)init
{
  v3 = objc_alloc_init(_WKProcessPoolConfiguration);
  v4 = [(WKProcessPool *)self _initWithConfiguration:v3];
  if (v3)
  {
  }

  return v4;
}

- (void)dealloc
{
  v3 = objc_opt_class();
  if ((WebCoreObjCScheduleDeallocateOnMainRunLoop(v3, self) & 1) == 0)
  {
    WebKit::WebProcessPool::~WebProcessPool(&self->_processPool);
    v4.receiver = self;
    v4.super_class = WKProcessPool;
    [(WKProcessPool *)&v4 dealloc];
  }
}

- (void)encodeWithCoder:(id)a3
{
  if (_MergedGlobals_173 == 1)
  {
    v3 = qword_1EB01D2D8;
  }

  else
  {
    v3 = 0;
    qword_1EB01D2D8 = 0;
    _MergedGlobals_173 = 1;
  }

  if (v3 == self)
  {
    [a3 encodeBool:1 forKey:@"isSharedProcessPool"];
  }
}

- (WKProcessPool)initWithCoder:(id)a3
{
  v4 = [(WKProcessPool *)self init];
  if (!v4 || ![a3 decodeBoolForKey:@"isSharedProcessPool"])
  {
    return v4;
  }

  v5 = +[WKProcessPool _sharedProcessPool];

  return v5;
}

- (NSString)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = *(*self->_anon_38 + 8);
  if (!v6)
  {
    return [v3 stringWithFormat:@"<%@: %p; configuration = %@>", v5, self, v6];
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    return [v3 stringWithFormat:@"<%@: %p; configuration = %@>", v5, self, v6];
  }

  result = 117;
  __break(0xC471u);
  return result;
}

- (_WKProcessPoolConfiguration)_configuration
{
  API::ProcessPoolConfiguration::copy(*self->_anon_38, &v8);
  v2 = *(v8 + 1);
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

    v6 = *(v5 + 1);
LABEL_6:
    CFRelease(v6);
    return v2;
  }

  result = 117;
  __break(0xC471u);
  return result;
}

- (WKGeolocationProviderIOS)_geolocationProvider
{
  result = self->_geolocationProvider.m_ptr;
  if (!result)
  {
    result = [[WKGeolocationProviderIOS alloc] initWithProcessPool:&self->_processPool];
    m_ptr = self->_geolocationProvider.m_ptr;
    self->_geolocationProvider.m_ptr = result;
    if (m_ptr)
    {

      return self->_geolocationProvider.m_ptr;
    }
  }

  return result;
}

+ (id)_sharedProcessPool
{
  if (qword_1EB01D2D0 != -1)
  {
    dispatch_once(&qword_1EB01D2D0, &__block_literal_global_17);
  }

  if (_MergedGlobals_173 == 1)
  {
    return qword_1EB01D2D8;
  }

  result = 0;
  qword_1EB01D2D8 = 0;
  _MergedGlobals_173 = 1;
  return result;
}

void __46__WKProcessPool_WKPrivate___sharedProcessPool__block_invoke()
{
  v0 = objc_alloc_init(WKProcessPool);
  if (_MergedGlobals_173)
  {
    v1 = qword_1EB01D2D8;
    qword_1EB01D2D8 = v0;
    if (v1)
    {
    }
  }

  else
  {
    _MergedGlobals_173 = 1;
    qword_1EB01D2D8 = v0;
  }
}

+ (id)_allProcessPoolsForTesting
{
  WebKit::WebProcessPool::allProcessPools(&v10);
  v2 = objc_alloc(MEMORY[0x1E695DF70]);
  v4 = [v2 initWithCapacity:v11];
  if (v11)
  {
    v5 = v10;
    for (i = 8 * v11; i; i -= 8)
    {
      v7 = *(*v5 + 8);
      if (v7)
      {
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          result = 117;
          __break(0xC471u);
          return result;
        }

        [v4 addObject:v7];
      }

      v5 += 8;
    }
  }

  if (v4)
  {
    v8 = v4;
  }

  WTF::Vector<WTF::Ref<WebKit::WebProcessPool,WTF::RawPtrTraits<WebKit::WebProcessPool>,WTF::DefaultRefDerefTraits<WebKit::WebProcessPool>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v10, v3);
  return v4;
}

+ (id)_websiteDataURLForContainerWithURL:(id)a3 bundleIdentifierIfNotInContainer:(id)a4
{
  v5 = [objc_msgSend(a3 URLByAppendingPathComponent:@"Library" isDirectory:{1), "URLByAppendingPathComponent:isDirectory:", @"WebKit", 1}];
  HasContainer = WebKit::processHasContainer(v5);
  if (a4 && (HasContainer & 1) == 0)
  {
    v5 = [(WebKit *)v5 URLByAppendingPathComponent:a4 isDirectory:1];
  }

  return [(WebKit *)v5 URLByAppendingPathComponent:@"WebsiteData" isDirectory:1];
}

- (void)_registerURLSchemeAsCanDisplayOnlyIfCanRequest:(id)a3
{
  MEMORY[0x19EB02040](&v7, a3);
  WTF::HashTable<WTF::String,WTF::String,WTF::IdentityExtractor,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::add<(WTF::ShouldValidateKey)1>(&self->_anon_38[344], &v7, v4, v8);
  v8[0] = &v7;
  WebKit::WebProcessPool::sendToAllProcesses<Messages::WebProcess::RegisterURLSchemeAsCanDisplayOnlyIfCanRequest>(&self->_processPool, v8);
  v6 = v7;
  v7 = 0;
  if (v6)
  {
    if (atomic_fetch_add_explicit(v6, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v6, v5);
    }
  }
}

- (void)_registerURLSchemeAsSecure:(id)a3
{
  MEMORY[0x19EB02040](&v7, a3);
  WebKit::WebProcessPool::registerURLSchemeAsSecure(&self->_processPool, &v7, v4);
  v6 = v7;
  v7 = 0;
  if (v6)
  {
    if (atomic_fetch_add_explicit(v6, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v6, v5);
    }
  }
}

- (void)_registerURLSchemeAsBypassingContentSecurityPolicy:(id)a3
{
  MEMORY[0x19EB02040](&v7, a3);
  WebKit::WebProcessPool::registerURLSchemeAsBypassingContentSecurityPolicy(&self->_processPool, &v7, v4);
  v6 = v7;
  v7 = 0;
  if (v6)
  {
    if (atomic_fetch_add_explicit(v6, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v6, v5);
    }
  }
}

- (void)_setDomainRelaxationForbiddenForURLScheme:(id)a3
{
  MEMORY[0x19EB02040](&v7, a3);
  WTF::HashTable<WTF::String,WTF::String,WTF::IdentityExtractor,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::add<(WTF::ShouldValidateKey)1>(&self->_anon_38[304], &v7, v4, v8);
  v8[0] = &v7;
  WebKit::WebProcessPool::sendToAllProcesses<Messages::WebProcess::SetDomainRelaxationForbiddenForURLScheme>(&self->_processPool, v8);
  v6 = v7;
  v7 = 0;
  if (v6)
  {
    if (atomic_fetch_add_explicit(v6, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v6, v5);
    }
  }
}

- (void)_setObject:(id)a3 forBundleParameter:(id)a4
{
  v6 = [a3 copy];
  v7 = [objc_alloc(MEMORY[0x1E696ACC8]) initRequiringSecureCoding:1];
  [v7 encodeObject:v6 forKey:@"parameter"];
  [v7 finishEncoding];
  if (v6)
  {
    [WebKit::WebProcessPool::ensureBundleParameters(&self->_processPool) setObject:v6 forKey:a4];
  }

  else
  {
    [WebKit::WebProcessPool::ensureBundleParameters(&self->_processPool) removeObjectForKey:a4];
  }

  v8 = [v7 encodedData];
  MEMORY[0x19EB02040](&v23, a4);
  if (v8)
  {
    v10 = [v8 bytes];
    v11 = [v8 length];
  }

  else
  {
    v10 = 0;
    v11 = 0;
  }

  v12 = *&self->_anon_38[36];
  if (v12)
  {
    v13 = *&self->_anon_38[24];
    v14 = 8 * v12;
    do
    {
      v15 = *v13;
      v16 = *(*v13 + 80);
      if (v16 && (*(v16 + 104) & 1) != 0 || *(v15 + 88))
      {
        v17 = IPC::Encoder::operator new(0x238, v9);
        *v17 = 2999;
        *(v17 + 68) = 0;
        *(v17 + 70) = 0;
        *(v17 + 69) = 0;
        *(v17 + 2) = 0;
        *(v17 + 3) = 0;
        *(v17 + 1) = 0;
        IPC::Encoder::encodeHeader(v17);
        v26 = v17;
        IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(v17, &v23);
        IPC::ArgumentCoder<std::span<unsigned char const,18446744073709551615ul>,void>::encode<IPC::Encoder>(v17, v10, v11);
        LOBYTE(v24) = 0;
        v25 = 0;
        WebKit::AuxiliaryProcessProxy::sendMessage(v15, &v26, 0, &v24, 1);
        if (v25 == 1)
        {
          v18 = v24;
          v24 = 0;
          if (v18)
          {
            (*(*v18 + 8))(v18);
          }
        }

        v19 = v26;
        v26 = 0;
        if (v19)
        {
          IPC::Encoder::~Encoder(v19, v9);
          bmalloc::api::tzoneFree(v20, v21);
        }
      }

      ++v13;
      v14 -= 8;
    }

    while (v14);
  }

  v22 = v23;
  v23 = 0;
  if (!v22 || atomic_fetch_add_explicit(v22, 0xFFFFFFFE, memory_order_relaxed) != 2)
  {
    if (!v7)
    {
      goto LABEL_21;
    }

    goto LABEL_20;
  }

  WTF::StringImpl::destroy(v22, v9);
  if (v7)
  {
LABEL_20:
  }

LABEL_21:
  if (v6)
  {
  }
}

- (void)_setObjectsForBundleParametersWithDictionary:(id)a3
{
  v4 = [objc_alloc(MEMORY[0x1E695DF20]) initWithDictionary:a3 copyItems:1];
  v5 = [objc_alloc(MEMORY[0x1E696ACC8]) initRequiringSecureCoding:1];
  [v5 encodeObject:v4 forKey:@"parameters"];
  [v5 finishEncoding];
  [WebKit::WebProcessPool::ensureBundleParameters(&self->_processPool) setValuesForKeysWithDictionary:v4];
  v6 = [v5 encodedData];
  v8 = v6;
  if (v6)
  {
    v9 = [v6 bytes];
    v8 = [v8 length];
  }

  else
  {
    v9 = 0;
  }

  v10 = *&self->_anon_38[36];
  if (v10)
  {
    v11 = *&self->_anon_38[24];
    v12 = 8 * v10;
    do
    {
      v13 = *v11;
      v14 = *(*v11 + 80);
      if (v14 && (*(v14 + 104) & 1) != 0 || *(v13 + 88))
      {
        v15 = IPC::Encoder::operator new(0x238, v7);
        *v15 = 3000;
        *(v15 + 68) = 0;
        *(v15 + 70) = 0;
        *(v15 + 69) = 0;
        *(v15 + 2) = 0;
        *(v15 + 3) = 0;
        *(v15 + 1) = 0;
        IPC::Encoder::encodeHeader(v15);
        v22 = v15;
        IPC::ArgumentCoder<std::span<unsigned char const,18446744073709551615ul>,void>::encode<IPC::Encoder>(v15, v9, v8);
        LOBYTE(v20) = 0;
        v21 = 0;
        WebKit::AuxiliaryProcessProxy::sendMessage(v13, &v22, 0, &v20, 1);
        if (v21 == 1)
        {
          v16 = v20;
          v20 = 0;
          if (v16)
          {
            (*(*v16 + 8))(v16);
          }
        }

        v17 = v22;
        v22 = 0;
        if (v17)
        {
          IPC::Encoder::~Encoder(v17, v7);
          bmalloc::api::tzoneFree(v18, v19);
        }
      }

      ++v11;
      v12 -= 8;
    }

    while (v12);
  }

  if (v5)
  {
  }

  if (v4)
  {
  }
}

- (void)_setDownloadDelegate:(id)a3
{
  objc_storeWeak(&self->_downloadDelegate.m_weakReference, a3);
  if (WebKit::LegacyDownloadClient::s_heapRef)
  {
    NonCompact = bmalloc::api::tzoneAllocateNonCompact(WebKit::LegacyDownloadClient::s_heapRef, v5);
  }

  else
  {
    NonCompact = WebKit::LegacyDownloadClient::operatorNewSlow(0x20);
  }

  v7 = NonCompact;
  WebKit::LegacyDownloadClient::LegacyDownloadClient(NonCompact, a3);
  v8 = *&self->_anon_38[256];
  *&self->_anon_38[256] = v7;
  if (v8)
  {
    if (v8[2] == 1)
    {
      v9 = *(*v8 + 8);

      v9();
    }

    else
    {
      --v8[2];
    }
  }
}

- (void)_setAutomationDelegate:(id)a3
{
  objc_storeWeak(&self->_automationDelegate.m_weakReference, a3);
  if (WebKit::AutomationClient::s_heapRef)
  {
    NonCompact = bmalloc::api::tzoneAllocateNonCompact(WebKit::AutomationClient::s_heapRef, v5);
  }

  else
  {
    NonCompact = WebKit::AutomationClient::operatorNewSlow(0x28);
  }

  v7 = NonCompact;
  WebKit::AutomationClient::AutomationClient(NonCompact, self, a3);
  v9 = v7;
  WebKit::WebProcessPool::setAutomationClient(&self->_processPool, &v9);
  if (v9)
  {
    v8 = *(*v9 + 8);

    v8();
  }
}

- (void)_automationCapabilitiesDidChange
{
  v2 = Inspector::RemoteInspector::singleton(self);

  MEMORY[0x1EEDCB9D8](v2);
}

- (void)_setAutomationSession:(id)a3
{
  if (a3)
  {
    v5 = a3;
  }

  m_ptr = self->_automationSession.m_ptr;
  self->_automationSession.m_ptr = a3;
  if (m_ptr)
  {
  }

  if (a3)
  {
    v7 = a3 + 8;
    CFRetain(*(a3 + 2));
  }

  else
  {
    v7 = 0;
  }

  v9 = v7;
  WebKit::WebProcessPool::setAutomationSession(&self->_processPool, &v9);
  if (v9)
  {
    v8 = *(v9 + 1);

    CFRelease(v8);
  }
}

- (NSURL)_javaScriptConfigurationDirectory
{
  v2 = MEMORY[0x1E695DFF8];
  v3 = *&self->_anon_38[480];
  if (v3)
  {
    atomic_fetch_add_explicit(v3, 2u, memory_order_relaxed);
    MEMORY[0x19EB00B70](&v9, v3, a2);
    if (atomic_fetch_add_explicit(v3, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v3, v4);
    }
  }

  else
  {
    v9 = &stru_1F1147748;
    v5 = &stru_1F1147748;
  }

  v6 = [v2 fileURLWithPath:v9 isDirectory:1];
  v7 = v9;
  v9 = 0;
  if (v7)
  {
  }

  return v6;
}

- (void)_setJavaScriptConfigurationDirectory:(id)a3
{
  if (a3 && ([a3 isFileURL] & 1) == 0)
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:{@"%@ is not a file URL", a3}];
  }

  MEMORY[0x19EB02040](&v9, [a3 path]);
  v6 = v9;
  if (v9)
  {
    atomic_fetch_add_explicit(v9, 2u, memory_order_relaxed);
  }

  v7 = *&self->_anon_38[480];
  *&self->_anon_38[480] = v6;
  if (v7 && atomic_fetch_add_explicit(v7, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v7, v5);
  }

  v8 = v9;
  v9 = 0;
  if (v8)
  {
    if (atomic_fetch_add_explicit(v8, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v8, v5);
    }
  }
}

- (void)_addSupportedPlugin:(id)a3 named:(id)a4 withMimeTypes:(id)a5 withExtensions:(id)a6
{
  v40 = *MEMORY[0x1E69E9840];
  v37 = 0;
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v10 = [a5 countByEnumeratingWithState:&v33 objects:v39 count:16];
  if (v10)
  {
    v11 = *v34;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v34 != v11)
        {
          objc_enumerationMutation(a5);
        }

        MEMORY[0x19EB02040](&v32, *(*(&v33 + 1) + 8 * i));
        WTF::HashTable<WTF::String,WTF::String,WTF::IdentityExtractor,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::add<(WTF::ShouldValidateKey)1>(&v37, &v32, v13, v31);
        v15 = v32;
        v32 = 0;
        if (v15 && atomic_fetch_add_explicit(v15, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v15, v14);
        }
      }

      v10 = [a5 countByEnumeratingWithState:&v33 objects:v39 count:16];
    }

    while (v10);
  }

  v32 = 0;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v16 = [a6 countByEnumeratingWithState:&v27 objects:v38 count:16];
  if (v16)
  {
    v17 = *v28;
    do
    {
      for (j = 0; j != v16; ++j)
      {
        if (*v28 != v17)
        {
          objc_enumerationMutation(a6);
        }

        MEMORY[0x19EB02040](&v26, *(*(&v27 + 1) + 8 * j));
        WTF::HashTable<WTF::String,WTF::String,WTF::IdentityExtractor,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::add<(WTF::ShouldValidateKey)1>(&v32, &v26, v19, v31);
        v21 = v26;
        v26 = 0;
        if (v21 && atomic_fetch_add_explicit(v21, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v21, v20);
        }
      }

      v16 = [a6 countByEnumeratingWithState:&v27 objects:v38 count:16];
    }

    while (v16);
  }

  MEMORY[0x19EB02040](v31, a3);
  MEMORY[0x19EB02040](&v26, a4);
  v23 = v32;
  v32 = 0;
  if (v23)
  {
    WTF::HashTable<WTF::String,WTF::String,WTF::IdentityExtractor,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::deallocateTable(v23, v22);
  }

  v24 = v26;
  v26 = 0;
  if (v24 && atomic_fetch_add_explicit(v24, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v24, v22);
  }

  v25 = v31[0];
  v31[0] = 0;
  if (v25 && atomic_fetch_add_explicit(v25, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v25, v22);
  }

  if (v32)
  {
    WTF::HashTable<WTF::String,WTF::String,WTF::IdentityExtractor,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::deallocateTable(v32, v22);
  }

  if (v37)
  {
    WTF::HashTable<WTF::String,WTF::String,WTF::IdentityExtractor,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::deallocateTable(v37, v22);
  }
}

- (int)_prewarmedProcessIdentifier
{
  v2 = *&self->_anon_38[40];
  if (v2 && (v3 = *(v2 + 8)) != 0 && (v4 = *(v3 + 80)) != 0)
  {
    return *(v4 + 108);
  }

  else
  {
    return 0;
  }
}

- (int)_gpuProcessIdentifier
{
  v2 = *&self->_anon_38[128];
  if (!v2)
  {
    return 0;
  }

  v3 = (v2 + 16);
  atomic_fetch_add((v2 + 16), 1u);
  v4 = *(v2 + 80);
  if (v4)
  {
    v5 = *(v4 + 108);
  }

  else
  {
    v5 = 0;
  }

  WTF::ThreadSafeRefCounted<WebKit::AuxiliaryProcessProxy,(WTF::DestructionThread)2>::deref(v3);
  return v5;
}

- (BOOL)_requestWebProcessTermination:(int)a3
{
  v3 = *&self->_anon_38[36];
  if (v3)
  {
    v4 = **&self->_anon_38[24];
    v5 = (v4 + 16);
    atomic_fetch_add((v4 + 16), 1u);
    v6 = *(v4 + 80);
    if (v6)
    {
      LODWORD(v6) = *(v6 + 108);
    }

    if (v6 == a3)
    {
      WebKit::WebProcessProxy::requestTermination(v4, 2);
    }

    WTF::ThreadSafeRefCounted<WebKit::AuxiliaryProcessProxy,(WTF::DestructionThread)2>::deref(v5);
  }

  return v3 != 0;
}

- (BOOL)_isWebProcessSuspended:(int)a3
{
  v3 = *&self->_anon_38[36];
  if (!v3)
  {
    return 0;
  }

  v5 = *&self->_anon_38[24];
  v6 = 8 * v3;
  while (1)
  {
    v7 = *v5;
    v8 = (*v5 + 16);
    atomic_fetch_add(v8, 1u);
    v9 = *(v7 + 80);
    if (v9)
    {
      LODWORD(v9) = *(v9 + 108);
    }

    if (v9 == a3)
    {
      break;
    }

    WTF::ThreadSafeRefCounted<WebKit::AuxiliaryProcessProxy,(WTF::DestructionThread)2>::deref(v8);
    ++v5;
    v6 -= 8;
    if (!v6)
    {
      return 0;
    }
  }

  v10 = *(v7 + 381) == 1 && *(v7 + 168) == 0;
  WTF::ThreadSafeRefCounted<WebKit::AuxiliaryProcessProxy,(WTF::DestructionThread)2>::deref(v8);
  return v10;
}

- (BOOL)_hasPrewarmedWebProcess
{
  v2 = *&self->_anon_38[36];
  if (!v2)
  {
    return 0;
  }

  v3 = *&self->_anon_38[24];
  v4 = 8 * v2 - 8;
  do
  {
    v5 = *v3++;
    atomic_fetch_add((v5 + 16), 1u);
    v6 = *(v5 + 811);
    WTF::ThreadSafeRefCounted<WebKit::AuxiliaryProcessProxy,(WTF::DestructionThread)2>::deref((v5 + 16));
    if (v6)
    {
      break;
    }

    v7 = v4;
    v4 -= 8;
  }

  while (v7);
  return v6;
}

- (unint64_t)_webProcessCountIgnoringPrewarmedAndCached
{
  v2 = *&self->_anon_38[36];
  if (!v2)
  {
    return 0;
  }

  v3 = 0;
  v4 = *&self->_anon_38[24];
  v5 = 8 * v2;
  do
  {
    v6 = *v4;
    v7 = (*v4 + 16);
    atomic_fetch_add(v7, 1u);
    if ((*(v6 + 760) & 1) == 0)
    {
      v3 += *(v6 + 811) ^ 1;
    }

    WTF::ThreadSafeRefCounted<WebKit::AuxiliaryProcessProxy,(WTF::DestructionThread)2>::deref(v7);
    ++v4;
    v5 -= 8;
  }

  while (v5);
  return v3;
}

- (unint64_t)_webPageContentProcessCount
{
  v2 = *&self->_anon_38[36];
  if (WebKit::WebProcessPool::s_useSeparateServiceWorkerProcess == 1)
  {
    v2 -= WebKit::WebProcessPool::serviceWorkerProxiesCount(&self->_processPool);
  }

  return v2;
}

- (unint64_t)_processCacheSize
{
  v2 = *(*&self->_anon_38[768] + 40);
  if (v2)
  {
    return *(v2 - 12);
  }

  else
  {
    return 0;
  }
}

- (void)_isJITDisabledInAllRemoteWorkerProcesses:(id)a3
{
  v4 = _Block_copy(a3);
  v5 = WTF::fastMalloc(0x10);
  *v5 = &unk_1F10F87B0;
  v5[1] = v4;
  v6 = v5;
  WebKit::WebProcessPool::isJITDisabledInAllRemoteWorkerProcesses(&self->_processPool, &v6);
  if (v6)
  {
    (*(*v6 + 8))(v6);
  }

  _Block_release(0);
}

+ (BOOL)_lockdownModeEnabledGloballyForTesting
{
  if (HIBYTE(WebKit::cachedLockdownModeEnabledGlobally(void)::cachedLockdownModeEnabledGlobally) == 1)
  {
    LOBYTE(isLockdownModeEnabledBySystemIgnoringCaching) = WebKit::cachedLockdownModeEnabledGlobally(void)::cachedLockdownModeEnabledGlobally;
  }

  else
  {
    isLockdownModeEnabledBySystemIgnoringCaching = WebKit::isLockdownModeEnabledBySystemIgnoringCaching(a1);
    WebKit::cachedLockdownModeEnabledGlobally(void)::cachedLockdownModeEnabledGlobally = isLockdownModeEnabledBySystemIgnoringCaching | 0x100;
  }

  return isLockdownModeEnabledBySystemIgnoringCaching & 1;
}

+ (BOOL)_isMetalDebugDeviceEnabledInGPUProcessForTesting
{
  {
    WebKit::singleton(void)::singleton = 0;
LABEL_6:
    v3 = WebKit::GPUProcessProxy::s_enableMetalDebugDeviceInNewGPUProcessesForTesting;
    return v3 & 1;
  }

  if (!WebKit::singleton(void)::singleton)
  {
    goto LABEL_6;
  }

  v2 = *(WebKit::singleton(void)::singleton + 8);
  if (!v2)
  {
    goto LABEL_6;
  }

  atomic_fetch_add((v2 + 16), 1u);
  v3 = *(v2 + 470);
  WTF::ThreadSafeRefCounted<WebKit::AuxiliaryProcessProxy,(WTF::DestructionThread)2>::deref((v2 + 16));
  return v3 & 1;
}

+ (BOOL)_isMetalShaderValidationEnabledInGPUProcessForTesting
{
  {
    WebKit::singleton(void)::singleton = 0;
LABEL_6:
    v3 = WebKit::GPUProcessProxy::s_enableMetalShaderValidationInNewGPUProcessesForTesting;
    return v3 & 1;
  }

  if (!WebKit::singleton(void)::singleton)
  {
    goto LABEL_6;
  }

  v2 = *(WebKit::singleton(void)::singleton + 8);
  if (!v2)
  {
    goto LABEL_6;
  }

  atomic_fetch_add((v2 + 16), 1u);
  v3 = *(v2 + 471);
  WTF::ThreadSafeRefCounted<WebKit::AuxiliaryProcessProxy,(WTF::DestructionThread)2>::deref((v2 + 16));
  return v3 & 1;
}

- (void)_setCoreLocationProvider:(id)a3
{
  if (self->_geolocationProvider.m_ptr)
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D920] format:@"Changing the location provider is not supported after a web view in the process pool has begun servicing geolocation requests."];
  }

  if (a3)
  {
    v5 = a3;
  }

  m_ptr = self->_coreLocationProvider.m_ptr;
  self->_coreLocationProvider.m_ptr = a3;
  if (m_ptr)
  {
  }
}

- (void)_getActivePagesOriginsInWebProcessForTesting:(int)a3 completionHandler:(id)a4
{
  v6 = _Block_copy(a4);
  v7 = WTF::fastMalloc(0x10);
  *v7 = &unk_1F10F87D8;
  v7[1] = v6;
  v9 = v7;
  WebKit::WebProcessPool::activePagesOriginsInWebProcessForTesting(&self->_processPool, a3, &v9);
  v8 = v9;
  v9 = 0;
  if (v8)
  {
    (*(*v8 + 8))(v8);
  }

  _Block_release(0);
}

- (void)_clearPermanentCredentialsForProtectionSpace:(id)a3
{
  WebCore::ProtectionSpace::ProtectionSpace(&v8, a3);
  WebKit::WebProcessPool::clearPermanentCredentialsForProtectionSpace(&self->_processPool, &v8);
  v5 = v10;
  v10 = 0;
  if (v5)
  {
  }

  v6 = v9;
  v9 = 0;
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

- (void)_seedResourceLoadStatisticsForTestingWithFirstParty:(id)a3 thirdParty:(id)a4 shouldScheduleNotification:(BOOL)a5 completionHandler:(id)a6
{
  MEMORY[0x19EB01DE0](v20, a3);
  WebCore::RegistrableDomain::RegistrableDomain(&v21, v20);
  MEMORY[0x19EB01DE0](v18, a4);
  WebCore::RegistrableDomain::RegistrableDomain(&v19, v18);
  v10 = _Block_copy(a6);
  v11 = WTF::fastMalloc(0x10);
  *v11 = &unk_1F10F8800;
  v11[1] = v10;
  v17 = v11;
  WebKit::WebProcessPool::seedResourceLoadStatisticsForTesting(&self->_processPool, &v21, &v19, a5, &v17);
  if (v17)
  {
    (*(*v17 + 8))(v17);
  }

  _Block_release(0);
  v13 = v19;
  v19 = 0;
  if (v13 && atomic_fetch_add_explicit(v13, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v13, v12);
  }

  v14 = v18[0];
  v18[0] = 0;
  if (v14 && atomic_fetch_add_explicit(v14, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v14, v12);
  }

  v15 = v21;
  v21 = 0;
  if (v15 && atomic_fetch_add_explicit(v15, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v15, v12);
  }

  v16 = v20[0];
  v20[0] = 0;
  if (v16)
  {
    if (atomic_fetch_add_explicit(v16, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v16, v12);
    }
  }
}

- (unint64_t)_numberOfConnectedGamepadsForTesting
{
  {
    WebKit::UIGamepadProvider::UIGamepadProvider(&WebKit::UIGamepadProvider::singleton(void)::sharedProvider);
  }

  return dword_1EB01E3BC;
}

- (OpaqueWKNotificationManager)_notificationManagerForTesting
{
  result = WebKit::WebProcessPool::supplement<WebKit::WebNotificationManagerProxy>(&self->_processPool);
  if (result)
  {
    return *(result + 1);
  }

  return result;
}

+ (id)_gpuProcessInfo
{
  v2 = &qword_1ED643000;
  {
    goto LABEL_12;
  }

  if (!WebKit::singleton(void)::singleton)
  {
    return 0;
  }

  v3 = *(WebKit::singleton(void)::singleton + 8);
  if (!v3)
  {
    return 0;
  }

  v4 = (v3 + 16);
  atomic_fetch_add((v3 + 16), 1u);
  WebKit::AuxiliaryProcessProxy::taskInfo(v3, v9);
  if ((v10 & 1) == 0)
  {
    WTF::ThreadSafeRefCounted<WebKit::AuxiliaryProcessProxy,(WTF::DestructionThread)2>::deref(v4);
    return 0;
  }

  v5 = [_WKProcessInfo alloc];
  v2 = v10;
  if ((v10 & 1) == 0)
  {
    __break(1u);
LABEL_12:
    v6 = 0;
    WebKit::singleton(void)::singleton = 0;
    *(v2 + 1816) = 1;
    return v6;
  }

  v6 = [(_WKProcessInfo *)v5 initWithTaskInfo:v9];
  WTF::ThreadSafeRefCounted<WebKit::AuxiliaryProcessProxy,(WTF::DestructionThread)2>::deref(v4);
  if (v6)
  {
    v7 = v6;
  }

  return v6;
}

+ (id)_networkingProcessInfo
{
  v2 = objc_opt_new();
  WebKit::NetworkProcessProxy::allNetworkProcesses(v3, &v12);
  if (v13)
  {
    v5 = v12;
    for (i = 8 * v13; i; i -= 8)
    {
      WebKit::AuxiliaryProcessProxy::taskInfo(*v5, v10);
      if (v11 == 1)
      {
        result = [_WKProcessInfo alloc];
        if ((v11 & 1) == 0)
        {
          __break(1u);
          return result;
        }

        v8 = [result initWithTaskInfo:v10];
        [v2 addObject:v8];
        if (v8)
        {
        }
      }

      ++v5;
    }
  }

  WTF::Vector<WTF::Ref<WebKit::NetworkProcessProxy,WTF::RawPtrTraits<WebKit::NetworkProcessProxy>,WTF::DefaultRefDerefTraits<WebKit::NetworkProcessProxy>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v12, v4);
  if (v2)
  {
    v9 = v2;
  }

  return v2;
}

+ (id)_webContentProcessInfo
{
  v2 = objc_opt_new();
  WebKit::WebProcessPool::allProcessPools(&v14);
  if (v15)
  {
    v4 = v14;
    v5 = v14 + 8 * v15;
    do
    {
      v6 = *(*v4 + 84);
      if (v6)
      {
        v7 = *(*v4 + 72);
        for (i = 8 * v6; i; i -= 8)
        {
          WebKit::AuxiliaryProcessProxy::taskInfo(*v7, v12);
          if (v13 == 1)
          {
            result = [_WKWebContentProcessInfo alloc];
            if ((v13 & 1) == 0)
            {
              __break(1u);
              return result;
            }

            v10 = [result initWithTaskInfo:v12 process:*v7];
            [v2 addObject:v10];
            if (v10)
            {
            }
          }

          ++v7;
        }
      }

      v4 += 8;
    }

    while (v4 != v5);
  }

  WTF::Vector<WTF::Ref<WebKit::WebProcessPool,WTF::RawPtrTraits<WebKit::WebProcessPool>,WTF::DefaultRefDerefTraits<WebKit::WebProcessPool>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v14, v3);
  if (v2)
  {
    v11 = v2;
  }

  return v2;
}

@end