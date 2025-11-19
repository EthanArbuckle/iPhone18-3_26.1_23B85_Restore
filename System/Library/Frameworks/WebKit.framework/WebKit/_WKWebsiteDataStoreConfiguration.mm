@interface _WKWebsiteDataStoreConfiguration
- (NSNumber)defaultTrackingPreventionEnabledOverride;
- (NSNumber)originQuotaRatio;
- (NSNumber)standardVolumeCapacity;
- (NSNumber)totalQuotaRatio;
- (NSNumber)volumeCapacityOverride;
- (NSString)applicationCacheFlatFileSubdirectoryName;
- (NSString)boundInterfaceIdentifier;
- (NSString)dataConnectionServiceType;
- (NSString)pcmMachServiceName;
- (NSString)sourceApplicationBundleIdentifier;
- (NSString)sourceApplicationSecondaryIdentifier;
- (NSString)webPushMachServiceName;
- (NSString)webPushPartitionString;
- (NSURL)_cacheStorageDirectory;
- (NSURL)_cookieStorageFile;
- (NSURL)_indexedDBDatabaseDirectory;
- (NSURL)_resourceLoadStatisticsDirectory;
- (NSURL)_resourceMonitorThrottlerDirectory;
- (NSURL)_serviceWorkerRegistrationDirectory;
- (NSURL)_webSQLDatabaseDirectory;
- (NSURL)_webStorageDirectory;
- (NSURL)alternativeServicesStorageDirectory;
- (NSURL)applicationCacheDirectory;
- (NSURL)deviceIdHashSaltsStorageDirectory;
- (NSURL)generalStorageDirectory;
- (NSURL)hstsStorageDirectory;
- (NSURL)httpProxy;
- (NSURL)httpsProxy;
- (NSURL)mediaCacheDirectory;
- (NSURL)mediaKeysStorageDirectory;
- (NSURL)networkCacheDirectory;
- (NSURL)standaloneApplicationURL;
- (NSUUID)identifier;
- (_WKWebsiteDataStoreConfiguration)init;
- (_WKWebsiteDataStoreConfiguration)initWithDirectory:(id)a3;
- (_WKWebsiteDataStoreConfiguration)initWithIdentifier:(id)a3;
- (id)initNonPersistentConfiguration;
- (int64_t)unifiedOriginStorageLevel;
- (void)_setCacheStorageDirectory:(id)a3;
- (void)_setCookieStorageFile:(id)a3;
- (void)_setIndexedDBDatabaseDirectory:(id)a3;
- (void)_setResourceLoadStatisticsDirectory:(id)a3;
- (void)_setResourceMonitorThrottlerDirectory:(id)a3;
- (void)_setServiceWorkerRegistrationDirectory:(id)a3;
- (void)_setWebSQLDatabaseDirectory:(id)a3;
- (void)_setWebStorageDirectory:(id)a3;
- (void)dealloc;
- (void)setAlternativeServicesStorageDirectory:(id)a3;
- (void)setApplicationCacheDirectory:(id)a3;
- (void)setApplicationCacheFlatFileSubdirectoryName:(id)a3;
- (void)setBoundInterfaceIdentifier:(id)a3;
- (void)setDataConnectionServiceType:(id)a3;
- (void)setDefaultTrackingPreventionEnabledOverride:(id)a3;
- (void)setDeviceIdHashSaltsStorageDirectory:(id)a3;
- (void)setGeneralStorageDirectory:(id)a3;
- (void)setHSTSStorageDirectory:(id)a3;
- (void)setHTTPProxy:(id)a3;
- (void)setHTTPSProxy:(id)a3;
- (void)setMediaCacheDirectory:(id)a3;
- (void)setMediaKeysStorageDirectory:(id)a3;
- (void)setNetworkCacheDirectory:(id)a3;
- (void)setOriginQuotaRatio:(id)a3;
- (void)setPCMMachServiceName:(id)a3;
- (void)setProxyConfiguration:(id)a3;
- (void)setSourceApplicationBundleIdentifier:(id)a3;
- (void)setSourceApplicationSecondaryIdentifier:(id)a3;
- (void)setStandaloneApplicationURL:(id)a3;
- (void)setStandardVolumeCapacity:(id)a3;
- (void)setTotalQuotaRatio:(id)a3;
- (void)setUnifiedOriginStorageLevel:(int64_t)a3;
- (void)setVolumeCapacityOverride:(id)a3;
- (void)setWebContentRestrictionsConfigurationURL:(id)a3;
- (void)setWebPushMachServiceName:(id)a3;
- (void)setWebPushPartitionString:(id)a3;
@end

@implementation _WKWebsiteDataStoreConfiguration

- (_WKWebsiteDataStoreConfiguration)init
{
  v6.receiver = self;
  v6.super_class = _WKWebsiteDataStoreConfiguration;
  v2 = [(_WKWebsiteDataStoreConfiguration *)&v6 init];
  v3 = v2;
  if (v2)
  {
    v5 = 1;
    API::Object::constructInWrapper<WebKit::WebsiteDataStoreConfiguration,WebKit::IsPersistent>(v2, &v5);
  }

  return v3;
}

- (void)dealloc
{
  v3 = objc_opt_class();
  if ((WebCoreObjCScheduleDeallocateOnMainRunLoop(v3, self) & 1) == 0)
  {
    (**self->_configuration.m_storage.data)();
    v4.receiver = self;
    v4.super_class = _WKWebsiteDataStoreConfiguration;
    [(_WKWebsiteDataStoreConfiguration *)&v4 dealloc];
  }
}

- (id)initNonPersistentConfiguration
{
  v6.receiver = self;
  v6.super_class = _WKWebsiteDataStoreConfiguration;
  v2 = [(_WKWebsiteDataStoreConfiguration *)&v6 init];
  v3 = v2;
  if (v2)
  {
    v5 = 0;
    API::Object::constructInWrapper<WebKit::WebsiteDataStoreConfiguration,WebKit::IsPersistent>(v2, &v5);
  }

  return v3;
}

- (_WKWebsiteDataStoreConfiguration)initWithIdentifier:(id)a3
{
  v20 = *MEMORY[0x1E69E9840];
  v14.receiver = self;
  v14.super_class = _WKWebsiteDataStoreConfiguration;
  v5 = [(_WKWebsiteDataStoreConfiguration *)&v14 init];
  if (v5)
  {
    if (!a3)
    {
      [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:@"Identifier is nil"];
    }

    v6 = WTF::UUID::fromNSUUID(&v18, a3, v4);
    if (v19 != 1 || v18 <= 1)
    {
      v7 = MEMORY[0x1E695DF30];
      MEMORY[0x19EB02040](&v17, [a3 UUIDString]);
      WTF::String::utf8();
      if (v15)
      {
        v8 = v15 + 16;
      }

      else
      {
        v8 = 0;
      }

      [v7 raise:*MEMORY[0x1E695D940] format:{@"Identifier (%s) is invalid for data store", v8}];
      v10 = v15;
      v15 = 0;
      if (v10)
      {
        if (*v10 == 1)
        {
          WTF::fastFree(v10, v9);
        }

        else
        {
          --*v10;
        }
      }

      v6 = v17;
      v17 = 0;
      if (v6 && atomic_fetch_add_explicit(v6, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        v6 = WTF::StringImpl::destroy(v6, v9);
      }

      if ((v19 & 1) == 0)
      {
        __break(1u);
      }
    }

    v11 = API::Object::apiObjectsUnderConstruction(v6);
    v12 = [(_WKWebsiteDataStoreConfiguration *)v5 _apiObject];
    v16 = v5;
    v17 = v12;
    WTF::HashMap<API::Object *,void const*,WTF::DefaultHash<API::Object *>,WTF::HashTraits<API::Object *>,WTF::HashTraits<void const*>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::add<void const*>(v11, &v17, &v16, &v15);
    WebKit::WebsiteDataStoreConfiguration::WebsiteDataStoreConfiguration([(_WKWebsiteDataStoreConfiguration *)v5 _apiObject], &v18);
  }

  return v5;
}

- (_WKWebsiteDataStoreConfiguration)initWithDirectory:(id)a3
{
  v12.receiver = self;
  v12.super_class = _WKWebsiteDataStoreConfiguration;
  v4 = [(_WKWebsiteDataStoreConfiguration *)&v12 init];
  if (v4)
  {
    if (!a3)
    {
      [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:@"Directory is nil"];
    }

    v5 = [a3 path];
    v6 = API::Object::apiObjectsUnderConstruction(v5);
    v15 = [(_WKWebsiteDataStoreConfiguration *)v4 _apiObject];
    v14 = v4;
    WTF::HashMap<API::Object *,void const*,WTF::DefaultHash<API::Object *>,WTF::HashTraits<API::Object *>,WTF::HashTraits<void const*>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::add<void const*>(v6, &v15, &v14, v13);
    v7 = [(_WKWebsiteDataStoreConfiguration *)v4 _apiObject];
    MEMORY[0x19EB02040](v13, v5);
    MEMORY[0x19EB02040](&v15, v5);
    WebKit::WebsiteDataStoreConfiguration::WebsiteDataStoreConfiguration(v7, v13, &v15);
    v9 = v15;
    v15 = 0;
    if (v9 && atomic_fetch_add_explicit(v9, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v9, v8);
    }

    v10 = v13[0];
    v13[0] = 0;
    if (v10 && atomic_fetch_add_explicit(v10, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v10, v8);
    }
  }

  return v4;
}

- (NSURL)_webStorageDirectory
{
  v2 = MEMORY[0x1E695DFF8];
  v3 = *&self[2]._configuration.m_storage.data[24];
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

- (void)_setWebStorageDirectory:(id)a3
{
  if ((self->_configuration.m_storage.data[16] & 1) == 0)
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:@"Cannot set _webStorageDirectory on a non-persistent _WKWebsiteDataStoreConfiguration."];
  }

  if (*&self->_configuration.m_storage.data[32] == 0)
  {
    if (!a3)
    {
      goto LABEL_7;
    }
  }

  else
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D920] format:@"Cannot set _webStorageDirectory on a _WKWebsiteDataStoreConfiguration created with identifier"];
    if (!a3)
    {
      goto LABEL_7;
    }
  }

  if (([a3 isFileURL] & 1) == 0)
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:{@"%@ is not a file URL", a3}];
  }

LABEL_7:
  MEMORY[0x19EB02040](&v9, [a3 path]);
  v6 = v9;
  v9 = 0;
  v7 = *&self[2]._configuration.m_storage.data[24];
  *&self[2]._configuration.m_storage.data[24] = v6;
  if (v7)
  {
    if (atomic_fetch_add_explicit(v7, 0xFFFFFFFE, memory_order_relaxed) == 2)
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
}

- (NSURL)_indexedDBDatabaseDirectory
{
  v2 = MEMORY[0x1E695DFF8];
  v3 = *&self[2]._configuration.m_storage.data[8];
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

- (void)_setIndexedDBDatabaseDirectory:(id)a3
{
  if ((self->_configuration.m_storage.data[16] & 1) == 0)
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:@"Cannot set _indexedDBDatabaseDirectory on a non-persistent _WKWebsiteDataStoreConfiguration."];
  }

  if (*&self->_configuration.m_storage.data[32] == 0)
  {
    if (!a3)
    {
      goto LABEL_7;
    }
  }

  else
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D920] format:@"Cannot set _indexedDBDatabaseDirectory on a _WKWebsiteDataStoreConfiguration created with identifier"];
    if (!a3)
    {
      goto LABEL_7;
    }
  }

  if (([a3 isFileURL] & 1) == 0)
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:{@"%@ is not a file URL", a3}];
  }

LABEL_7:
  MEMORY[0x19EB02040](&v9, [a3 path]);
  v6 = v9;
  v9 = 0;
  v7 = *&self[2]._configuration.m_storage.data[8];
  *&self[2]._configuration.m_storage.data[8] = v6;
  if (v7)
  {
    if (atomic_fetch_add_explicit(v7, 0xFFFFFFFE, memory_order_relaxed) == 2)
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
}

- (NSURL)networkCacheDirectory
{
  v2 = MEMORY[0x1E695DFF8];
  isa = self[3].super.isa;
  if (isa)
  {
    atomic_fetch_add_explicit(isa, 2u, memory_order_relaxed);
    MEMORY[0x19EB00B70](&v9, isa, a2);
    if (atomic_fetch_add_explicit(isa, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(isa, v4);
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

- (void)setNetworkCacheDirectory:(id)a3
{
  if ((self->_configuration.m_storage.data[16] & 1) == 0)
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:@"Cannot set networkCacheDirectory on a non-persistent _WKWebsiteDataStoreConfiguration."];
  }

  if (*&self->_configuration.m_storage.data[32] == 0)
  {
    if (!a3)
    {
      goto LABEL_7;
    }
  }

  else
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D920] format:@"Cannot set networkCacheDirectory on a _WKWebsiteDataStoreConfiguration created with identifier"];
    if (!a3)
    {
      goto LABEL_7;
    }
  }

  if (([a3 isFileURL] & 1) == 0)
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:{@"%@ is not a file URL", a3}];
  }

LABEL_7:
  MEMORY[0x19EB02040](&v9, [a3 path]);
  v6 = v9;
  v9 = 0;
  isa = self[3].super.isa;
  self[3].super.isa = v6;
  if (isa)
  {
    if (atomic_fetch_add_explicit(isa, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(isa, v5);
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
}

- (NSURL)deviceIdHashSaltsStorageDirectory
{
  v2 = MEMORY[0x1E695DFF8];
  v3 = *&self[1]._configuration.m_storage.data[40];
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

- (void)setDeviceIdHashSaltsStorageDirectory:(id)a3
{
  if ((self->_configuration.m_storage.data[16] & 1) == 0)
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:@"Cannot set deviceIdHashSaltsStorageDirectory on a non-persistent _WKWebsiteDataStoreConfiguration."];
  }

  if (*&self->_configuration.m_storage.data[32] == 0)
  {
    if (!a3)
    {
      goto LABEL_7;
    }
  }

  else
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D920] format:@"Cannot set deviceIdHashSaltsStorageDirectory on a _WKWebsiteDataStoreConfiguration created with identifier"];
    if (!a3)
    {
      goto LABEL_7;
    }
  }

  if (([a3 isFileURL] & 1) == 0)
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:{@"%@ is not a file URL", a3}];
  }

LABEL_7:
  MEMORY[0x19EB02040](&v9, [a3 path]);
  v6 = v9;
  v9 = 0;
  v7 = *&self[1]._configuration.m_storage.data[40];
  *&self[1]._configuration.m_storage.data[40] = v6;
  if (v7)
  {
    if (atomic_fetch_add_explicit(v7, 0xFFFFFFFE, memory_order_relaxed) == 2)
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
}

- (NSURL)_webSQLDatabaseDirectory
{
  v2 = MEMORY[0x1E695DFF8];
  v3 = *&self[3]._configuration.m_storage.data[16];
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

- (void)_setWebSQLDatabaseDirectory:(id)a3
{
  if ((self->_configuration.m_storage.data[16] & 1) == 0)
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:@"Cannot set _webSQLDatabaseDirectory on a non-persistent _WKWebsiteDataStoreConfiguration."];
  }

  if (*&self->_configuration.m_storage.data[32] == 0)
  {
    if (!a3)
    {
      goto LABEL_7;
    }
  }

  else
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D920] format:@"Cannot set _webSQLDatabaseDirectory on a _WKWebsiteDataStoreConfiguration created with identifier"];
    if (!a3)
    {
      goto LABEL_7;
    }
  }

  if (([a3 isFileURL] & 1) == 0)
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:{@"%@ is not a file URL", a3}];
  }

LABEL_7:
  MEMORY[0x19EB02040](&v9, [a3 path]);
  v6 = v9;
  v9 = 0;
  v7 = *&self[3]._configuration.m_storage.data[16];
  *&self[3]._configuration.m_storage.data[16] = v6;
  if (v7)
  {
    if (atomic_fetch_add_explicit(v7, 0xFFFFFFFE, memory_order_relaxed) == 2)
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
}

- (NSURL)httpProxy
{
  WTF::URL::createCFURL(&v6, &self[5]._configuration.m_storage.data[24]);
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

- (void)setHTTPProxy:(id)a3
{
  MEMORY[0x19EB01DE0](v6, a3);
  WTF::URL::operator=(&self[5]._configuration.m_storage.data[24], v6);
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

- (NSURL)httpsProxy
{
  WTF::URL::createCFURL(&v6, &self[6]._configuration);
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

- (void)setHTTPSProxy:(id)a3
{
  MEMORY[0x19EB01DE0](v6, a3);
  WTF::URL::operator=(&self[6]._configuration, v6);
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

- (NSURL)_cookieStorageFile
{
  v2 = MEMORY[0x1E695DFF8];
  v3 = *&self[1]._configuration.m_storage.data[32];
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

  v6 = [v2 fileURLWithPath:v9 isDirectory:0];
  v7 = v9;
  v9 = 0;
  if (v7)
  {
  }

  return v6;
}

- (void)_setCookieStorageFile:(id)a3
{
  v5 = MEMORY[0x1E695D940];
  if ((self->_configuration.m_storage.data[16] & 1) == 0)
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:@"Cannot set _cookieStorageFile on a non-persistent _WKWebsiteDataStoreConfiguration."];
  }

  if (*&self->_configuration.m_storage.data[32] == 0)
  {
    if (!a3)
    {
      goto LABEL_7;
    }
  }

  else
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D920] format:@"Cannot set _cookieStorageFile on a _WKWebsiteDataStoreConfiguration created with identifier"];
    if (!a3)
    {
      goto LABEL_7;
    }
  }

  if (([a3 isFileURL] & 1) == 0)
  {
    [MEMORY[0x1E695DF30] raise:*v5 format:{@"%@ is not a file URL", a3}];
  }

LABEL_7:
  if ([a3 hasDirectoryPath])
  {
    [MEMORY[0x1E695DF30] raise:*v5 format:{@"The cookie storage path must point to a file, not a directory."}];
  }

  MEMORY[0x19EB02040](&v10, [a3 path]);
  v7 = v10;
  v10 = 0;
  v8 = *&self[1]._configuration.m_storage.data[32];
  *&self[1]._configuration.m_storage.data[32] = v7;
  if (v8)
  {
    if (atomic_fetch_add_explicit(v8, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v8, v6);
    }

    v9 = v10;
    v10 = 0;
    if (v9)
    {
      if (atomic_fetch_add_explicit(v9, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v9, v6);
      }
    }
  }
}

- (NSURL)_resourceLoadStatisticsDirectory
{
  v2 = MEMORY[0x1E695DFF8];
  v3 = *self[3]._anon_8;
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

- (void)_setResourceLoadStatisticsDirectory:(id)a3
{
  if ((self->_configuration.m_storage.data[16] & 1) == 0)
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:@"Cannot set _resourceLoadStatisticsDirectory on a non-persistent _WKWebsiteDataStoreConfiguration."];
  }

  if (*&self->_configuration.m_storage.data[32] == 0)
  {
    if (!a3)
    {
      goto LABEL_7;
    }
  }

  else
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D920] format:@"Cannot set _resourceLoadStatisticsDirectory on a _WKWebsiteDataStoreConfiguration created with identifier"];
    if (!a3)
    {
      goto LABEL_7;
    }
  }

  if (([a3 isFileURL] & 1) == 0)
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:{@"%@ is not a file URL", a3}];
  }

LABEL_7:
  MEMORY[0x19EB02040](&v9, [a3 path]);
  v6 = v9;
  v9 = 0;
  v7 = *self[3]._anon_8;
  *self[3]._anon_8 = v6;
  if (v7)
  {
    if (atomic_fetch_add_explicit(v7, 0xFFFFFFFE, memory_order_relaxed) == 2)
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
}

- (NSURL)_cacheStorageDirectory
{
  v2 = MEMORY[0x1E695DFF8];
  v3 = *&self[1]._configuration.m_storage.data[24];
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

- (void)_setCacheStorageDirectory:(id)a3
{
  if ((self->_configuration.m_storage.data[16] & 1) == 0)
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:@"Cannot set _cacheStorageDirectory on a non-persistent _WKWebsiteDataStoreConfiguration."];
  }

  if (*&self->_configuration.m_storage.data[32] == 0)
  {
    if (!a3)
    {
      goto LABEL_7;
    }
  }

  else
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D920] format:@"Cannot set _cacheStorageDirectory on a _WKWebsiteDataStoreConfiguration created with identifier"];
    if (!a3)
    {
      goto LABEL_7;
    }
  }

  if (([a3 isFileURL] & 1) == 0)
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:{@"%@ is not a file URL", a3}];
  }

LABEL_7:
  MEMORY[0x19EB02040](&v9, [a3 path]);
  v6 = v9;
  v9 = 0;
  v7 = *&self[1]._configuration.m_storage.data[24];
  *&self[1]._configuration.m_storage.data[24] = v6;
  if (v7)
  {
    if (atomic_fetch_add_explicit(v7, 0xFFFFFFFE, memory_order_relaxed) == 2)
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
}

- (NSURL)_serviceWorkerRegistrationDirectory
{
  v2 = MEMORY[0x1E695DFF8];
  v3 = *&self[3]._configuration.m_storage.data[8];
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

- (void)_setServiceWorkerRegistrationDirectory:(id)a3
{
  if ((self->_configuration.m_storage.data[16] & 1) == 0)
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:@"Cannot set _serviceWorkerRegistrationDirectory on a non-persistent _WKWebsiteDataStoreConfiguration."];
  }

  if (*&self->_configuration.m_storage.data[32] == 0)
  {
    if (!a3)
    {
      goto LABEL_7;
    }
  }

  else
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D920] format:@"Cannot set _serviceWorkerRegistrationDirectory on a _WKWebsiteDataStoreConfiguration created with identifier"];
    if (!a3)
    {
      goto LABEL_7;
    }
  }

  if (([a3 isFileURL] & 1) == 0)
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:{@"%@ is not a file URL", a3}];
  }

LABEL_7:
  MEMORY[0x19EB02040](&v9, [a3 path]);
  v6 = v9;
  v9 = 0;
  v7 = *&self[3]._configuration.m_storage.data[8];
  *&self[3]._configuration.m_storage.data[8] = v6;
  if (v7)
  {
    if (atomic_fetch_add_explicit(v7, 0xFFFFFFFE, memory_order_relaxed) == 2)
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
}

- (void)setSourceApplicationBundleIdentifier:(id)a3
{
  MEMORY[0x19EB02040](&v8, a3);
  v5 = v8;
  v8 = 0;
  v6 = *self[5]._anon_8;
  *self[5]._anon_8 = v5;
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

- (NSString)sourceApplicationBundleIdentifier
{
  v2 = *self[5]._anon_8;
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

- (NSString)sourceApplicationSecondaryIdentifier
{
  v2 = *self[5]._configuration.m_storage.data;
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

- (void)setSourceApplicationSecondaryIdentifier:(id)a3
{
  MEMORY[0x19EB02040](&v8, a3);
  v5 = v8;
  v8 = 0;
  v6 = *self[5]._configuration.m_storage.data;
  *self[5]._configuration.m_storage.data = v5;
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

- (NSURL)applicationCacheDirectory
{
  v2 = MEMORY[0x1E695DFF8];
  v3 = *&self[1]._configuration.m_storage.data[8];
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

- (void)setApplicationCacheDirectory:(id)a3
{
  if ((self->_configuration.m_storage.data[16] & 1) == 0)
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:@"Cannot set applicationCacheDirectory on a non-persistent _WKWebsiteDataStoreConfiguration."];
  }

  if (*&self->_configuration.m_storage.data[32] == 0)
  {
    if (!a3)
    {
      goto LABEL_7;
    }
  }

  else
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D920] format:@"Cannot set applicationCacheDirectory on a _WKWebsiteDataStoreConfiguration created with identifier"];
    if (!a3)
    {
      goto LABEL_7;
    }
  }

  if (([a3 isFileURL] & 1) == 0)
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:{@"%@ is not a file URL", a3}];
  }

LABEL_7:
  MEMORY[0x19EB02040](&v9, [a3 path]);
  v6 = v9;
  v9 = 0;
  v7 = *&self[1]._configuration.m_storage.data[8];
  *&self[1]._configuration.m_storage.data[8] = v6;
  if (v7)
  {
    if (atomic_fetch_add_explicit(v7, 0xFFFFFFFE, memory_order_relaxed) == 2)
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
}

- (NSString)applicationCacheFlatFileSubdirectoryName
{
  v2 = *self[1]._configuration.m_storage.data;
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

- (void)setApplicationCacheFlatFileSubdirectoryName:(id)a3
{
  if ((self->_configuration.m_storage.data[16] & 1) == 0)
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:@"Cannot set applicationCacheFlatFileSubdirectoryName on a non-persistent _WKWebsiteDataStoreConfiguration."];
  }

  if (*&self->_configuration.m_storage.data[32] != 0)
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D920] format:@"Cannot set applicationCacheFlatFileSubdirectoryName on a _WKWebsiteDataStoreConfiguration created with identifier"];
  }

  MEMORY[0x19EB02040](&v9, a3);
  v6 = v9;
  v9 = 0;
  v7 = *self[1]._configuration.m_storage.data;
  *self[1]._configuration.m_storage.data = v6;
  if (v7)
  {
    if (atomic_fetch_add_explicit(v7, 0xFFFFFFFE, memory_order_relaxed) == 2)
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
}

- (NSURL)mediaCacheDirectory
{
  v2 = MEMORY[0x1E695DFF8];
  v3 = *&self[2]._configuration.m_storage.data[32];
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

- (void)setMediaCacheDirectory:(id)a3
{
  if ((self->_configuration.m_storage.data[16] & 1) == 0)
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:@"Cannot set mediaCacheDirectory on a non-persistent _WKWebsiteDataStoreConfiguration."];
  }

  if (*&self->_configuration.m_storage.data[32] == 0)
  {
    if (!a3)
    {
      goto LABEL_7;
    }
  }

  else
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D920] format:@"Cannot set mediaCacheDirectory on a _WKWebsiteDataStoreConfiguration created with identifier"];
    if (!a3)
    {
      goto LABEL_7;
    }
  }

  if (([a3 isFileURL] & 1) == 0)
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:{@"%@ is not a file URL", a3}];
  }

LABEL_7:
  MEMORY[0x19EB02040](&v9, [a3 path]);
  v6 = v9;
  v9 = 0;
  v7 = *&self[2]._configuration.m_storage.data[32];
  *&self[2]._configuration.m_storage.data[32] = v6;
  if (v7)
  {
    if (atomic_fetch_add_explicit(v7, 0xFFFFFFFE, memory_order_relaxed) == 2)
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
}

- (NSURL)mediaKeysStorageDirectory
{
  v2 = MEMORY[0x1E695DFF8];
  v3 = *&self[2]._configuration.m_storage.data[40];
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

- (void)setMediaKeysStorageDirectory:(id)a3
{
  if ((self->_configuration.m_storage.data[16] & 1) == 0)
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:@"Cannot set mediaKeysStorageDirectory on a non-persistent _WKWebsiteDataStoreConfiguration."];
  }

  if (*&self->_configuration.m_storage.data[32] == 0)
  {
    if (!a3)
    {
      goto LABEL_7;
    }
  }

  else
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D920] format:@"Cannot set mediaKeysStorageDirectory on a _WKWebsiteDataStoreConfiguration created with identifier"];
    if (!a3)
    {
      goto LABEL_7;
    }
  }

  if (([a3 isFileURL] & 1) == 0)
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:{@"%@ is not a file URL", a3}];
  }

LABEL_7:
  MEMORY[0x19EB02040](&v9, [a3 path]);
  v6 = v9;
  v9 = 0;
  v7 = *&self[2]._configuration.m_storage.data[40];
  *&self[2]._configuration.m_storage.data[40] = v6;
  if (v7)
  {
    if (atomic_fetch_add_explicit(v7, 0xFFFFFFFE, memory_order_relaxed) == 2)
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
}

- (NSURL)hstsStorageDirectory
{
  v2 = MEMORY[0x1E695DFF8];
  v3 = *self[2]._configuration.m_storage.data;
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

- (void)setHSTSStorageDirectory:(id)a3
{
  if ((self->_configuration.m_storage.data[16] & 1) == 0)
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:@"Cannot set hstsStorageDirectory on a non-persistent _WKWebsiteDataStoreConfiguration."];
  }

  if (*&self->_configuration.m_storage.data[32] == 0)
  {
    if (!a3)
    {
      goto LABEL_7;
    }
  }

  else
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D920] format:@"Cannot set hstsStorageDirectory on a _WKWebsiteDataStoreConfiguration created with identifier"];
    if (!a3)
    {
      goto LABEL_7;
    }
  }

  if (([a3 isFileURL] & 1) == 0)
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:{@"%@ is not a file URL", a3}];
  }

LABEL_7:
  MEMORY[0x19EB02040](&v9, [a3 path]);
  v6 = v9;
  v9 = 0;
  v7 = *self[2]._configuration.m_storage.data;
  *self[2]._configuration.m_storage.data = v6;
  if (v7)
  {
    if (atomic_fetch_add_explicit(v7, 0xFFFFFFFE, memory_order_relaxed) == 2)
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
}

- (NSURL)alternativeServicesStorageDirectory
{
  v2 = MEMORY[0x1E695DFF8];
  v3 = *&self[1]._configuration.m_storage.data[16];
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

- (void)setAlternativeServicesStorageDirectory:(id)a3
{
  if ((self->_configuration.m_storage.data[16] & 1) == 0)
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:@"Cannot set alternativeServicesDirectory on a non-persistent _WKWebsiteDataStoreConfiguration."];
  }

  if (*&self->_configuration.m_storage.data[32] == 0)
  {
    if (!a3)
    {
      goto LABEL_7;
    }
  }

  else
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D920] format:@"Cannot set alternativeServicesStorageDirectory on a _WKWebsiteDataStoreConfiguration created with identifier"];
    if (!a3)
    {
      goto LABEL_7;
    }
  }

  if (([a3 isFileURL] & 1) == 0)
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:{@"%@ is not a file URL", a3}];
  }

LABEL_7:
  MEMORY[0x19EB02040](&v9, [a3 path]);
  v6 = v9;
  v9 = 0;
  v7 = *&self[1]._configuration.m_storage.data[16];
  *&self[1]._configuration.m_storage.data[16] = v6;
  if (v7)
  {
    if (atomic_fetch_add_explicit(v7, 0xFFFFFFFE, memory_order_relaxed) == 2)
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
}

- (NSURL)generalStorageDirectory
{
  v2 = *self[2]._anon_8;
  if (v2)
  {
    v3 = MEMORY[0x1E695DFF8];
    atomic_fetch_add_explicit(v2, 2u, memory_order_relaxed);
    MEMORY[0x19EB00B70](&v7, v2, a2);
    if (atomic_fetch_add_explicit(v2, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v2, v4);
    }

    v2 = [v3 fileURLWithPath:v7 isDirectory:1];
    v5 = v7;
    v7 = 0;
    if (v5)
    {
    }
  }

  return v2;
}

- (void)setGeneralStorageDirectory:(id)a3
{
  if ((self->_configuration.m_storage.data[16] & 1) == 0)
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:@"Cannot set generalStorageDirectory on a non-persistent _WKWebsiteDataStoreConfiguration."];
  }

  if (*&self->_configuration.m_storage.data[32] == 0)
  {
    if (!a3)
    {
      goto LABEL_7;
    }
  }

  else
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D920] format:@"Cannot set generalStorageDirectory on a _WKWebsiteDataStoreConfiguration created with identifier"];
    if (!a3)
    {
      goto LABEL_7;
    }
  }

  if (([a3 isFileURL] & 1) == 0)
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:{@"%@ is not a file URL", a3}];
  }

LABEL_7:
  MEMORY[0x19EB02040](&v9, [a3 path]);
  v6 = v9;
  v9 = 0;
  v7 = *self[2]._anon_8;
  *self[2]._anon_8 = v6;
  if (v7)
  {
    if (atomic_fetch_add_explicit(v7, 0xFFFFFFFE, memory_order_relaxed) == 2)
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
}

- (int64_t)unifiedOriginStorageLevel
{
  v2 = self->_configuration.m_storage.data[17];
  if (v2 == 2)
  {
    return 2;
  }

  else
  {
    return v2 == 1;
  }
}

- (void)setUnifiedOriginStorageLevel:(int64_t)a3
{
  v3 = a3 == 1;
  if (a3 == 2)
  {
    v3 = 2;
  }

  self->_configuration.m_storage.data[17] = v3;
}

- (NSString)webPushPartitionString
{
  v2 = *self[8]._configuration.m_storage.data;
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

- (void)setWebPushPartitionString:(id)a3
{
  MEMORY[0x19EB02040](&v8, a3);
  v5 = v8;
  v8 = 0;
  v6 = *self[8]._configuration.m_storage.data;
  *self[8]._configuration.m_storage.data = v5;
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

- (NSNumber)originQuotaRatio
{
  if (*self[4]._anon_8)
  {
    return [MEMORY[0x1E696AD98] numberWithDouble:*&self[4].super.isa];
  }

  else
  {
    return 0;
  }
}

- (void)setOriginQuotaRatio:(id)a3
{
  if (a3)
  {
    [a3 doubleValue];
    v5 = *&v4;
    if (v4 < 0.0 || v4 > 1.0)
    {
      [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:{@"OriginQuotaRatio must be in the range [0.0, 1]"}];
    }

    v7 = 1;
  }

  else
  {
    v7 = 0;
    v5 = 0;
  }

  self[4].super.isa = v5;
  self[4]._anon_8[0] = v7;
}

- (NSNumber)totalQuotaRatio
{
  if (*&self[4]._configuration.m_storage.data[8])
  {
    return [MEMORY[0x1E696AD98] numberWithDouble:*self[4]._configuration.m_storage.data];
  }

  else
  {
    return 0;
  }
}

- (void)setTotalQuotaRatio:(id)a3
{
  if (a3)
  {
    [a3 doubleValue];
    v5 = v4;
    if (v4 < 0.0 || v4 > 1.0)
    {
      [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:{@"TotalQuotaRatio must be in the range [0.0, 1]"}];
    }

    v7 = 1;
  }

  else
  {
    v7 = 0;
    v5 = 0.0;
  }

  *self[4]._configuration.m_storage.data = v5;
  self[4]._configuration.m_storage.data[8] = v7;
}

- (NSNumber)standardVolumeCapacity
{
  if (*&self[4]._configuration.m_storage.data[24])
  {
    return [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:*&self[4]._configuration.m_storage.data[16]];
  }

  else
  {
    return 0;
  }
}

- (void)setStandardVolumeCapacity:(id)a3
{
  if (a3)
  {
    v4 = [a3 unsignedLongLongValue];
    v5 = 1;
  }

  else
  {
    v4 = 0;
    v5 = 0;
  }

  *&self[4]._configuration.m_storage.data[16] = v4;
  self[4]._configuration.m_storage.data[24] = v5;
}

- (NSNumber)volumeCapacityOverride
{
  if (*&self[4]._configuration.m_storage.data[40])
  {
    return [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:*&self[4]._configuration.m_storage.data[32]];
  }

  else
  {
    return 0;
  }
}

- (void)setVolumeCapacityOverride:(id)a3
{
  if (a3)
  {
    v4 = [a3 unsignedLongLongValue];
    v5 = 1;
  }

  else
  {
    v4 = 0;
    v5 = 0;
  }

  *&self[4]._configuration.m_storage.data[32] = v4;
  self[4]._configuration.m_storage.data[40] = v5;
}

- (NSURL)_resourceMonitorThrottlerDirectory
{
  v2 = MEMORY[0x1E695DFF8];
  v3 = *&self[3]._configuration.m_storage.data[32];
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

- (void)_setResourceMonitorThrottlerDirectory:(id)a3
{
  if ((self->_configuration.m_storage.data[16] & 1) == 0)
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:@"Cannot set _resourceMonitorThrottlerDirectory on a non-persistent _WKWebsiteDataStoreConfiguration."];
  }

  if (*&self->_configuration.m_storage.data[32] == 0)
  {
    if (!a3)
    {
      goto LABEL_7;
    }
  }

  else
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D920] format:@"Cannot set _resourceMonitorThrottlerDirectory on a _WKWebsiteDataStoreConfiguration created with identifier"];
    if (!a3)
    {
      goto LABEL_7;
    }
  }

  if (([a3 isFileURL] & 1) == 0)
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:{@"%@ is not a file URL", a3}];
  }

LABEL_7:
  MEMORY[0x19EB02040](&v9, [a3 path]);
  v6 = v9;
  v9 = 0;
  v7 = *&self[3]._configuration.m_storage.data[32];
  *&self[3]._configuration.m_storage.data[32] = v6;
  if (v7)
  {
    if (atomic_fetch_add_explicit(v7, 0xFFFFFFFE, memory_order_relaxed) == 2)
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
}

- (void)setWebContentRestrictionsConfigurationURL:(id)a3
{
  if (a3)
  {
    if (([a3 isFileURL] & 1) == 0)
    {
      [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:{@"%@ is not a file URL", a3}];
    }
  }
}

- (NSString)boundInterfaceIdentifier
{
  v2 = *&self[5]._configuration.m_storage.data[8];
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

- (void)setBoundInterfaceIdentifier:(id)a3
{
  MEMORY[0x19EB02040](&v8, a3);
  v5 = v8;
  v8 = 0;
  v6 = *&self[5]._configuration.m_storage.data[8];
  *&self[5]._configuration.m_storage.data[8] = v5;
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

- (NSString)dataConnectionServiceType
{
  v2 = *&self[5]._configuration.m_storage.data[16];
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

- (void)setDataConnectionServiceType:(id)a3
{
  MEMORY[0x19EB02040](&v8, a3);
  v5 = v8;
  v8 = 0;
  v6 = *&self[5]._configuration.m_storage.data[16];
  *&self[5]._configuration.m_storage.data[16] = v5;
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

- (void)setProxyConfiguration:(id)a3
{
  v4 = [a3 copy];
  WTF::RetainPtr<void const*>::operator=(&self[8]._configuration.m_storage.data[8], v4);
  if (v4)
  {
  }
}

- (NSURL)standaloneApplicationURL
{
  WTF::URL::createCFURL(&v6, &self[7]._configuration);
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

- (void)setStandaloneApplicationURL:(id)a3
{
  MEMORY[0x19EB01DE0](v6, a3);
  WTF::URL::operator=(&self[7]._configuration, v6);
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

- (NSString)pcmMachServiceName
{
  isa = self[8].super.isa;
  if (!isa)
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

  atomic_fetch_add_explicit(isa, 2u, memory_order_relaxed);
  MEMORY[0x19EB00B70](&v9, isa, a2);
  if (atomic_fetch_add_explicit(isa, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(isa, v3);
  }

  v4 = v9;
  v9 = 0;
  if (v4)
  {
    goto LABEL_7;
  }

  return &v4->isa;
}

- (void)setPCMMachServiceName:(id)a3
{
  MEMORY[0x19EB02040](&v8, a3);
  v5 = v8;
  v8 = 0;
  isa = self[8].super.isa;
  self[8].super.isa = v5;
  if (isa)
  {
    if (atomic_fetch_add_explicit(isa, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(isa, v4);
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

- (NSString)webPushMachServiceName
{
  v2 = *self[8]._anon_8;
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

- (void)setWebPushMachServiceName:(id)a3
{
  MEMORY[0x19EB02040](&v8, a3);
  v5 = v8;
  v8 = 0;
  v6 = *self[8]._anon_8;
  *self[8]._anon_8 = v5;
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

- (NSNumber)defaultTrackingPreventionEnabledOverride
{
  v2 = *&self[8]._configuration.m_storage.data[32];
  if ((v2 & 0x100) != 0)
  {
    return [MEMORY[0x1E696AD98] numberWithBool:v2 & 1];
  }

  else
  {
    return 0;
  }
}

- (void)setDefaultTrackingPreventionEnabledOverride:(id)a3
{
  if (a3)
  {
    v4 = [a3 BOOLValue];
    v5 = 1;
  }

  else
  {
    v4 = 0;
    v5 = 0;
  }

  *&self[8]._configuration.m_storage.data[32] = v4 | (v5 << 8);
}

- (NSUUID)identifier
{
  v12 = *MEMORY[0x1E69E9840];
  v3 = *&self->_configuration.m_storage.data[32];
  v4 = *&self->_configuration.m_storage.data[40];
  v2 = &self->_configuration.m_storage.data[32];
  if (!(v3 | v4))
  {
    return 0;
  }

  v10 = *v2;
  v11 = 1;
  WTF::UUID::createNSUUID(&v9, &v10);
  v5 = v9;
  v9 = 0;
  if (v5)
  {
    v7 = v5;
    v8 = v9;
    v9 = 0;
    if (v8)
    {
    }
  }

  return v5;
}

@end