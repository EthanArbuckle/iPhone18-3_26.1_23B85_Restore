@interface WKWebsiteDataStore
+ (BOOL)_defaultDataStoreExists;
+ (BOOL)_defaultNetworkProcessExists;
+ (BOOL)handleNotificationResponse:(id)a3;
+ (NSSet)allWebsiteDataTypes;
+ (WKWebsiteDataStore)dataStoreForIdentifier:(NSUUID *)identifier;
+ (WKWebsiteDataStore)defaultDataStore;
+ (id)_allWebsiteDataTypesIncludingPrivate;
+ (void)_fetchAllIdentifiers:(id)a3;
+ (void)_removeDataStoreWithIdentifier:(id)a3 completionHandler:(id)a4;
+ (void)_setWebPushActionHandler:(id)a3;
- (BOOL)_networkProcessHasEntitlementForTesting:(id)a3;
- (BOOL)_resourceLoadStatisticsEnabled;
- (NSArray)_persistedSites;
- (NSString)_webPushPartition;
- (NSUUID)_identifier;
- (WKHTTPCookieStore)httpCookieStore;
- (WKWebsiteDataStore)init;
- (WKWebsiteDataStore)initWithCoder:(id)a3;
- (_WKWebsiteDataStoreConfiguration)_configuration;
- (_WKWebsiteDataStoreDelegate)_delegate;
- (id)_initWithConfiguration:(id)a3;
- (int)_networkProcessIdentifier;
- (uint64_t)fetchDataOfTypes:()WTF::ShouldValidateKey completionHandler:;
- (uint64_t)fetchDataOfTypes:(uint64_t)a1 completionHandler:(WTF::StringImpl *)a2;
- (uint64_t)removeDataOfTypes:(const void *)a1 forDataRecords:completionHandler:;
- (uint64_t)removeDataOfTypes:(const void *)a1 modifiedSince:completionHandler:;
- (uint64_t)removeDataOfTypes:(uint64_t)a1 forDataRecords:completionHandler:;
- (uint64_t)removeDataOfTypes:(uint64_t)a1 modifiedSince:completionHandler:;
- (uint64_t)restoreData:(WTF *)this completionHandler:(void *)a2;
- (uint64_t)restoreData:(uint64_t)a1 completionHandler:(void *)a2;
- (void)_abortBackgroundFetch:(id)a3 completionHandler:(id)a4;
- (void)_appBoundDomains:(id)a3;
- (void)_appBoundSchemes:(id)a3;
- (void)_clearLoadedSubresourceDomainsFor:(id)a3;
- (void)_clearPrevalentDomain:(id)a3 completionHandler:(id)a4;
- (void)_clearResourceLoadStatistics:(id)a3;
- (void)_clickBackgroundFetch:(id)a3 completionHandler:(id)a4;
- (void)_closeDatabases:(id)a3;
- (void)_countNonDefaultSessionSets:(id)a3;
- (void)_fetchDataOfTypes:(id)a3 completionHandler:(id)a4;
- (void)_fetchDataRecordsOfTypes:(id)a3 withOptions:(unint64_t)a4 completionHandler:(id)a5;
- (void)_forceNetworkProcessToTaskSuspendForTesting;
- (void)_getAllBackgroundFetchIdentifiers:(id)a3;
- (void)_getAppBadgeForTesting:(id)a3;
- (void)_getBackgroundFetchState:(id)a3 completionHandler:(id)a4;
- (void)_getIsPrevalentDomain:(id)a3 completionHandler:(id)a4;
- (void)_getPendingPushMessage:(id)a3;
- (void)_getPendingPushMessages:(id)a3;
- (void)_getResourceLoadStatisticsDataSummary:(id)a3;
- (void)_grantStorageAccessForTesting:(id)a3 withSubFrameDomains:(id)a4 completionHandler:(id)a5;
- (void)_handleNextPushMessageWithCompletionHandler:(id)a3;
- (void)_handleWebPushAction:(id)a3;
- (void)_isRegisteredAsSubresourceUnderFirstParty:(id)a3 thirdParty:(id)a4 completionHandler:(id)a5;
- (void)_isRelationshipOnlyInDatabaseOnce:(id)a3 thirdParty:(id)a4 completionHandler:(id)a5;
- (void)_loadedSubresourceDomainsFor:(id)a3 completionHandler:(id)a4;
- (void)_logUserInteraction:(id)a3 completionHandler:(id)a4;
- (void)_originDirectoryForTesting:(id)a3 topOrigin:(id)a4 type:(id)a5 completionHandler:(id)a6;
- (void)_pauseBackgroundFetch:(id)a3 completionHandler:(id)a4;
- (void)_processPersistentNotificationClick:(id)a3 completionHandler:(id)a4;
- (void)_processPersistentNotificationClose:(id)a3 completionHandler:(id)a4;
- (void)_processPushMessage:(id)a3 completionHandler:(id)a4;
- (void)_processStatisticsAndDataRecords:(id)a3;
- (void)_processWebCorePersistentNotificationClick:(const void *)a3 completionHandler:(id)a4;
- (void)_processWebCorePersistentNotificationClose:(const void *)a3 completionHandler:(id)a4;
- (void)_renameOrigin:(id)a3 to:(id)a4 forDataOfTypes:(id)a5 completionHandler:(id)a6;
- (void)_restoreData:(id)a3 completionHandler:(id)a4;
- (void)_resumeBackgroundFetch:(id)a3 completionHandler:(id)a4;
- (void)_runningOrTerminatingServiceWorkerCountForTesting:(id)a3;
- (void)_scheduleCookieBlockingUpdate:(id)a3;
- (void)_scopeURL:(id)a3 hasPushSubscriptionForTesting:(id)a4;
- (void)_sendNetworkProcessPrepareToSuspend:(id)a3;
- (void)_setBackupExclusionPeriodForTesting:(double)a3 completionHandler:(id)a4;
- (void)_setCompletionHandlerForRemovalFromNetworkProcess:(id)a3;
- (void)_setPersistedSites:(id)a3;
- (void)_setPrevalentDomain:(id)a3 completionHandler:(id)a4;
- (void)_setResourceLoadStatisticsTestingCallback:(id)a3;
- (void)_setResourceLoadStatisticsTimeAdvanceForTesting:(double)a3 completionHandler:(id)a4;
- (void)_setRestrictedOpenerTypeForTesting:(unsigned __int8)a3 forDomain:(id)a4;
- (void)_setServiceWorkerOverridePreferences:(id)a3;
- (void)_setStorageAccessPromptQuirkForTesting:(id)a3 withSubFrameDomains:(id)a4 withTriggerPages:(id)a5 completionHandler:(id)a6;
- (void)_setThirdPartyCookieBlockingMode:(BOOL)a3 onlyOnSitesWithoutUserInteraction:(BOOL)a4 completionHandler:(id)a5;
- (void)_setUserAgentStringQuirkForTesting:(id)a3 withUserAgent:(id)a4 completionHandler:(id)a5;
- (void)_statisticsDatabaseHasAllTables:(id)a3;
- (void)_storeServiceWorkerRegistrations:(id)a3;
- (void)_synthesizeAppIsBackground:(BOOL)a3;
- (void)_trustServerForLocalPCMTesting:(__SecTrust *)a3;
- (void)dealloc;
- (void)encodeWithCoder:(id)a3;
- (void)fetchDataOfTypes:()WTF::ShouldValidateKey completionHandler:;
- (void)fetchDataOfTypes:(id)a3 completionHandler:(id)a4;
- (void)fetchDataOfTypes:(uint64_t)a1 completionHandler:;
- (void)removeDataOfTypes:(NSSet *)dataTypes forDataRecords:(NSArray *)dataRecords completionHandler:(void *)completionHandler;
- (void)removeDataOfTypes:(NSSet *)dataTypes modifiedSince:(NSDate *)date completionHandler:(void *)completionHandler;
- (void)restoreData:(id)a3 completionHandler:(id)a4;
- (void)restoreData:(uint64_t)a1 completionHandler:(char)a2;
- (void)restoreData:(void *)a1 completionHandler:(void *)a2;
- (void)setProxyConfigurations:(NSArray *)proxyConfigurations;
- (void)set_delegate:(id)a3;
@end

@implementation WKWebsiteDataStore

- (NSUUID)_identifier
{
  v13 = *MEMORY[0x1E69E9840];
  v2 = *&self->_anon_38[176];
  v4 = *(v2 + 32);
  v5 = *(v2 + 40);
  v3 = (v2 + 32);
  if (!(v4 | v5))
  {
    return 0;
  }

  v11 = *v3;
  v12 = 1;
  WTF::UUID::createNSUUID(&v10, &v11);
  v6 = v10;
  v10 = 0;
  if (v6)
  {
    v8 = v6;
    v9 = v10;
    v10 = 0;
    if (v9)
    {
    }
  }

  return v6;
}

+ (WKWebsiteDataStore)defaultDataStore
{
  WebKit::WebsiteDataStore::defaultDataStore(a1, &v8);
  v2 = v8;
  v3 = *(v8 + 8);
  if (!v3)
  {
    v6 = 0;
    goto LABEL_5;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = v3;
    v5 = v3;
    v6 = *(v2 + 8);
LABEL_5:
    CFRelease(v6);
    return v3;
  }

  result = 117;
  __break(0xC471u);
  return result;
}

- (WKWebsiteDataStore)init
{
  if (WTF::linkedOnOrAfterSDKWithBehavior())
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D920] format:@"Calling [WKWebsiteDataStore init] is not supported."];
  }

  v11.receiver = self;
  v11.super_class = WKWebsiteDataStore;
  v3 = [(WKWebsiteDataStore *)&v11 init];
  if (v3)
  {
    v4 = qword_1ED641350;
    if (os_log_type_enabled(qword_1ED641350, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_19D52D000, v4, OS_LOG_TYPE_ERROR, "Application is calling [WKWebsiteDataStore init], which is not supported", buf, 2u);
    }

    v5 = API::Object::newObject(0x230uLL, 125);
    v10 = WebKit::WebsiteDataStoreConfiguration::WebsiteDataStoreConfiguration(v5, 0, 1);
    EphemeralSessionID = PAL::SessionID::generateEphemeralSessionID(v10);
    v7 = API::Object::apiObjectsUnderConstruction(EphemeralSessionID);
    v8 = [(WKWebsiteDataStore *)v3 _apiObject];
    v13 = v3;
    v14 = v8;
    WTF::HashMap<API::Object *,void const*,WTF::DefaultHash<API::Object *>,WTF::HashTraits<API::Object *>,WTF::HashTraits<void const*>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::add<void const*>(v7, &v14, &v13, buf);
    WebKit::WebsiteDataStore::WebsiteDataStore([(WKWebsiteDataStore *)v3 _apiObject], &v10, EphemeralSessionID);
  }

  return 0;
}

- (void)dealloc
{
  v3 = objc_opt_class();
  if ((WebCoreObjCScheduleDeallocateOnMainRunLoop(v3, self) & 1) == 0)
  {
    WebKit::WebsiteDataStore::~WebsiteDataStore(&self->_websiteDataStore);
    v4.receiver = self;
    v4.super_class = WKWebsiteDataStore;
    [(WKWebsiteDataStore *)&v4 dealloc];
  }
}

- (WKWebsiteDataStore)initWithCoder:(id)a3
{
  if ([a3 decodeBoolForKey:@"isDefaultDataStore"])
  {
    v3 = +[WKWebsiteDataStore defaultDataStore];
  }

  else
  {
    v3 = +[WKWebsiteDataStore nonPersistentDataStore];
  }

  return v3;
}

- (void)encodeWithCoder:(id)a3
{
  if (+[WKWebsiteDataStore defaultDataStore]== self)
  {

    [a3 encodeBool:1 forKey:@"isDefaultDataStore"];
  }
}

+ (NSSet)allWebsiteDataTypes
{
  if ((_MergedGlobals_1160 & 1) == 0)
  {
    qword_1EB01D310 = 0;
    _MergedGlobals_1160 = 1;
  }

  if (qword_1EB01D308 != -1)
  {
    dispatch_once(&qword_1EB01D308, &__block_literal_global_2247);
  }

  return qword_1EB01D310;
}

void __41__WKWebsiteDataStore_allWebsiteDataTypes__block_invoke()
{
  v3[15] = *MEMORY[0x1E69E9840];
  v0 = objc_alloc(MEMORY[0x1E695DFD8]);
  v3[0] = @"WKWebsiteDataTypeDiskCache";
  v3[1] = @"WKWebsiteDataTypeFetchCache";
  v3[2] = @"WKWebsiteDataTypeMemoryCache";
  v3[3] = @"WKWebsiteDataTypeOfflineWebApplicationCache";
  v3[4] = @"WKWebsiteDataTypeCookies";
  v3[5] = @"WKWebsiteDataTypeSessionStorage";
  v3[6] = @"WKWebsiteDataTypeLocalStorage";
  v3[7] = @"WKWebsiteDataTypeIndexedDBDatabases";
  v3[8] = @"WKWebsiteDataTypeServiceWorkerRegistrations";
  v3[9] = @"WKWebsiteDataTypeWebSQLDatabases";
  v3[10] = @"WKWebsiteDataTypeFileSystem";
  v3[11] = @"WKWebsiteDataTypeSearchFieldRecentSearches";
  v3[12] = @"WKWebsiteDataTypeMediaKeys";
  v3[13] = @"WKWebsiteDataTypeScreenTime";
  v3[14] = @"WKWebsiteDataTypeHashSalt";
  v1 = [v0 initWithArray:{objc_msgSend(MEMORY[0x1E695DEC8], "arrayWithObjects:count:", v3, 15)}];
  v2 = qword_1EB01D310;
  qword_1EB01D310 = v1;
  if (v2)
  {
  }
}

- (WKHTTPCookieStore)httpCookieStore
{
  v2 = *(WebKit::WebsiteDataStore::cookieStore(&self->_websiteDataStore) + 1);
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

- (void)removeDataOfTypes:(NSSet *)dataTypes modifiedSince:(NSDate *)date completionHandler:(void *)completionHandler
{
  v25[16] = *MEMORY[0x1E69E9840];
  v8 = _Block_copy(completionHandler);
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v10 = [(NSSet *)dataTypes countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (!v10)
  {
    v11 = 0;
    if (date)
    {
      goto LABEL_15;
    }

    goto LABEL_14;
  }

  v11 = 0;
  v12 = *v22;
  do
  {
    for (i = 0; i != v10; ++i)
    {
      if (*v22 != v12)
      {
        objc_enumerationMutation(dataTypes);
      }

      v14 = WebKit::toWebsiteDataType(*(*(&v21 + 1) + 8 * i), v9);
      if (v14 <= 0x100000000)
      {
        v15 = 0;
      }

      else
      {
        v15 = v14;
      }

      v11 |= v15;
    }

    v10 = [(NSSet *)dataTypes countByEnumeratingWithState:&v21 objects:v25 count:16];
  }

  while (v10);
  if (!date)
  {
LABEL_14:
    date = [MEMORY[0x1E695DF00] distantPast];
  }

LABEL_15:
  [(NSDate *)date timeIntervalSince1970];
  v17 = v16;
  v18 = _Block_copy(v8);
  v19 = WTF::fastMalloc(0x10);
  *v19 = &unk_1F10FA128;
  v19[1] = v18;
  v25[0] = v19;
  WebKit::WebsiteDataStore::removeData(&self->_websiteDataStore, v11, v25, v17);
  v20 = v25[0];
  v25[0] = 0;
  if (v20)
  {
    (*(*v20 + 8))(v20);
  }

  _Block_release(0);
  _Block_release(v8);
}

- (void)removeDataOfTypes:(NSSet *)dataTypes forDataRecords:(NSArray *)dataRecords completionHandler:(void *)completionHandler
{
  v31[16] = *MEMORY[0x1E69E9840];
  v8 = _Block_copy(completionHandler);
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v10 = [(NSSet *)dataTypes countByEnumeratingWithState:&v27 objects:v31 count:16];
  if (v10)
  {
    v11 = 0;
    v12 = *v28;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v28 != v12)
        {
          objc_enumerationMutation(dataTypes);
        }

        v14 = WebKit::toWebsiteDataType(*(*(&v27 + 1) + 8 * i), v9);
        if (v14 <= 0x100000000)
        {
          v15 = 0;
        }

        else
        {
          v15 = v14;
        }

        v11 |= v15;
      }

      v10 = [(NSSet *)dataTypes countByEnumeratingWithState:&v27 objects:v31 count:16];
    }

    while (v10);
  }

  else
  {
    v11 = 0;
  }

  v26 = 0;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v16 = [(NSArray *)dataRecords countByEnumeratingWithState:&v27 objects:v31 count:16, 0];
  if (v16)
  {
    v17 = *v28;
    do
    {
      for (j = 0; j != v16; ++j)
      {
        if (*v28 != v17)
        {
          objc_enumerationMutation(dataRecords);
        }

        v19 = (*(*(&v27 + 1) + 8 * j) + 24);
        v20 = HIDWORD(v26);
        if (HIDWORD(v26) == v26)
        {
          v19 = WTF::Vector<WebKit::WebsiteDataRecord,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(&v25, HIDWORD(v26) + 1, v19);
          v20 = HIDWORD(v26);
        }

        WebKit::WebsiteDataRecord::WebsiteDataRecord((v25 + 80 * v20), v19);
        ++HIDWORD(v26);
      }

      v16 = [(NSArray *)dataRecords countByEnumeratingWithState:&v27 objects:v31 count:16];
    }

    while (v16);
  }

  v21 = _Block_copy(v8);
  v22 = WTF::fastMalloc(0x10);
  *v22 = &unk_1F10FA150;
  v22[1] = v21;
  v31[0] = v22;
  WebKit::WebsiteDataStore::removeData(&self->_websiteDataStore, v11, &v25, v31);
  v23 = v31[0];
  v31[0] = 0;
  if (v23)
  {
    (*(*v23 + 8))(v23);
  }

  _Block_release(0);
  WTF::Vector<WebKit::WebsiteDataRecord,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v25, v24);
  _Block_release(v8);
}

+ (WKWebsiteDataStore)dataStoreForIdentifier:(NSUUID *)identifier
{
  v19 = *MEMORY[0x1E69E9840];
  if (!identifier)
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:@"Identifier is nil"];
  }

  WTF::UUID::fromNSUUID(&v17, identifier, a2);
  if (v18 != 1 || v17 <= 1)
  {
    v4 = MEMORY[0x1E695DF30];
    MEMORY[0x19EB02040](&v15, [(NSUUID *)identifier UUIDString]);
    WTF::String::utf8();
    if (v16)
    {
      v5 = v16 + 16;
    }

    else
    {
      v5 = 0;
    }

    [v4 raise:*MEMORY[0x1E695D940] format:{@"Identifier (%s) is invalid for data store", v5}];
    v7 = v16;
    v16 = 0;
    if (v7)
    {
      if (*v7 == 1)
      {
        WTF::fastFree(v7, v6);
      }

      else
      {
        --*v7;
      }
    }

    v8 = v15;
    v15 = 0;
    if (v8 && atomic_fetch_add_explicit(v8, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v8, v6);
    }

    if ((v18 & 1) == 0)
    {
      __break(1u);
    }
  }

  WebKit::WebsiteDataStore::dataStoreForIdentifier(&v17, &v16);
  v9 = v16;
  v10 = *(v16 + 1);
  if (!v10)
  {
    v13 = 0;
    goto LABEL_19;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v11 = v10;
    v12 = v10;
    v13 = *(v9 + 1);
LABEL_19:
    CFRelease(v13);
    return v10;
  }

  result = 117;
  __break(0xC471u);
  return result;
}

- (void)setProxyConfigurations:(NSArray *)proxyConfigurations
{
  v41 = *MEMORY[0x1E69E9840];
  v5 = [(NSArray *)proxyConfigurations copy];
  m_ptr = self->_proxyConfigurations.m_ptr;
  self->_proxyConfigurations.m_ptr = v5;
  if (m_ptr)
  {

    v5 = self->_proxyConfigurations.m_ptr;
  }

  if (v5 && [(NSArray *)v5 count])
  {
    v25 = self;
    v32 = 0;
    v33 = 0;
    v28 = 0u;
    v29 = 0u;
    v30 = 0u;
    v31 = 0u;
    v8 = [(NSArray *)proxyConfigurations countByEnumeratingWithState:&v28 objects:v40 count:16];
    if (!v8)
    {
      goto LABEL_32;
    }

    v9 = *v29;
    while (1)
    {
      v10 = 0;
      do
      {
        if (*v29 != v9)
        {
          objc_enumerationMutation(proxyConfigurations);
        }

        v11 = nw_proxy_config_copy_agent_data();
        v38 = 0;
        v39 = 0;
        nw_proxy_config_get_identifier();
        v12 = v38;
        v13 = v39;
        if (v11)
        {
          v14 = [v11 bytes];
          v15 = [v11 length];
          v16 = v15;
          v26 = 0;
          LODWORD(v27) = 0;
          HIDWORD(v27) = v15;
          if (v15)
          {
            if (HIDWORD(v15))
            {
              __break(0xC471u);
              return;
            }

            v17 = WTF::fastMalloc(v15);
            LODWORD(v27) = v16;
            v26 = v17;
            do
            {
              v18 = *v14++;
              *v17 = v18;
              v17 = (v17 + 1);
              --v16;
            }

            while (v16);
          }
        }

        else
        {
          v26 = 0;
          v27 = 0;
        }

        if (__PAIR128__(v13, v12) < 2)
        {
          v19 = 0;
          LOBYTE(v34) = 0;
        }

        else
        {
          *&v34 = v12;
          *(&v34 + 1) = v13;
          v19 = 1;
        }

        v35 = v19;
        std::pair<WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,std::optional<WTF::UUID>>::pair[abi:sn200100]<WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,std::optional<WTF::UUID>,0>(&v36, &v26, &v34);
        if (HIDWORD(v33) == v33)
        {
          WTF::Vector<std::pair<WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,std::optional<WTF::UUID>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::appendSlowCase<(WTF::FailureAction)0,std::pair<WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,std::optional<WTF::UUID>>>(&v32, &v36);
        }

        else
        {
          std::pair<WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,std::optional<WTF::UUID>>::pair[abi:sn200100](v32 + 48 * HIDWORD(v33), &v36);
          ++HIDWORD(v33);
        }

        v21 = v36;
        if (v36)
        {
          v36 = 0;
          v37 = 0;
          WTF::fastFree(v21, v20);
        }

        v22 = v26;
        if (!v26)
        {
          if (!v11)
          {
            goto LABEL_26;
          }

LABEL_25:

          goto LABEL_26;
        }

        v26 = 0;
        LODWORD(v27) = 0;
        WTF::fastFree(v22, v20);
        if (v11)
        {
          goto LABEL_25;
        }

LABEL_26:
        ++v10;
      }

      while (v10 != v8);
      v23 = [(NSArray *)proxyConfigurations countByEnumeratingWithState:&v28 objects:v40 count:16];
      v8 = v23;
      if (!v23)
      {
LABEL_32:
        WebKit::WebsiteDataStore::setProxyConfigData(&v25->_websiteDataStore, &v32);
        WTF::Vector<std::pair<WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,std::optional<WTF::UUID>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v32, v24);
        return;
      }
    }
  }

  WebKit::WebsiteDataStore::clearProxyConfigData(&self->_websiteDataStore, v6);
}

- (void)fetchDataOfTypes:(id)a3 completionHandler:(id)a4
{
  v37 = *MEMORY[0x1E69E9840];
  v32 = 0;
  v33 = 0;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v6 = [a3 countByEnumeratingWithState:&v28 objects:v36 count:16];
  if (v6)
  {
    v7 = 0;
    v8 = 0;
    v9 = *v29;
    while (2)
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v29 != v9)
        {
          objc_enumerationMutation(a3);
        }

        v11 = *(*(&v28 + 1) + 8 * i);
        if (![v11 isEqualToString:@"WKWebsiteDataTypeLocalStorage"])
        {
          v13 = [@"This API does not support fetching: " stringByAppendingString:v11];
          v34 = *MEMORY[0x1E696A578];
          v35 = v13;
          v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v35 forKeys:&v34 count:1];
          v15 = [objc_alloc(MEMORY[0x1E696ABC0]) initWithDomain:@"WKErrorDomain" code:1 userInfo:v14];
          (*(a4 + 2))(a4, 0, v15);
          if (v15)
          {
          }

          goto LABEL_20;
        }

        LODWORD(v27) = 32;
        if (v8 == v33)
        {
          v12 = WTF::Vector<WebKit::WebViewDataType,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(&v32, v8 + 1, &v27);
          v8 = HIDWORD(v33);
          v7 = v32;
          *(v32 + HIDWORD(v33)) = *v12;
        }

        else
        {
          *(v7 + v8) = 32;
        }

        HIDWORD(v33) = ++v8;
      }

      v6 = [a3 countByEnumeratingWithState:&v28 objects:v36 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

  else
  {
    v8 = 0;
  }

  v17 = WTF::fastMalloc(0x18);
  *v17 = 1;
  *(v17 + 8) = 0;
  *(v17 + 16) = 0;
  v18 = _Block_copy(a4);
  v19 = v32;
  v20 = v33;
  v32 = 0;
  v33 = 0;
  atomic_fetch_add(v17, 1u);
  v21 = WTF::fastMalloc(0x28);
  *v21 = &unk_1F10FA178;
  *(v21 + 8) = v18;
  *(v21 + 16) = v19;
  *(v21 + 24) = v20;
  *(v21 + 28) = v8;
  *(v21 + 32) = v17;
  v22 = WTF::fastMalloc(0x10);
  *v22 = 1;
  *(v22 + 8) = v21;
  _Block_release(0);
  if ([a3 containsObject:@"WKWebsiteDataTypeLocalStorage"])
  {
    atomic_fetch_add(v22, 1u);
    atomic_fetch_add(v17, 1u);
    v23 = WTF::fastMalloc(0x18);
    *v23 = &unk_1F10FA1A0;
    v23[1] = v22;
    v23[2] = v17;
    v27 = v23;
    WebKit::WebsiteDataStore::fetchLocalStorage(&self->_websiteDataStore, &v27);
    v24 = v27;
    v27 = 0;
    if (v24)
    {
      (*(*v24 + 8))(v24);
    }
  }

  WTF::ThreadSafeRefCounted<WTF::CallbackAggregatorOnThread<(WTF::DestructionThread)0>,(WTF::DestructionThread)0>::deref(v22);
  WTF::ThreadSafeRefCounted<WTF::Box<WKWebViewData>::Data,(WTF::DestructionThread)0>::deref(v17, v25);
LABEL_20:
  if (v32)
  {
    WTF::fastFree(v32, v16);
  }
}

- (void)restoreData:(id)a3 completionHandler:(id)a4
{
  v10[1] = *MEMORY[0x1E69E9840];
  if (a3)
  {
    [a3 bytes];
    [a3 length];
  }

  WTF::Persistence::Decoder::Decoder();
  WTF::Persistence::Decoder::operator>>();
  v9 = *MEMORY[0x1E696A578];
  v10[0] = @"Version number is missing.";
  v6 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v10 forKeys:&v9 count:1];
  v7 = [objc_alloc(MEMORY[0x1E696ABC0]) initWithDomain:@"WKErrorDomain" code:1 userInfo:v6];
  (*(a4 + 2))(a4, v7);
  if (v7)
  {
  }

  WTF::Persistence::Decoder::~Decoder(v8);
}

+ (id)_allWebsiteDataTypesIncludingPrivate
{
  if ((byte_1EB01D2F9 & 1) == 0)
  {
    qword_1EB01D320 = 0;
    byte_1EB01D2F9 = 1;
  }

  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __69__WKWebsiteDataStore_WKPrivate___allWebsiteDataTypesIncludingPrivate__block_invoke;
  block[3] = &unk_1E7631230;
  block[4] = a1;
  if (qword_1EB01D318 != -1)
  {
    dispatch_once(&qword_1EB01D318, block);
  }

  return qword_1EB01D320;
}

void __69__WKWebsiteDataStore_WKPrivate___allWebsiteDataTypesIncludingPrivate__block_invoke(uint64_t a1)
{
  v5[6] = *MEMORY[0x1E69E9840];
  v5[0] = @"_WKWebsiteDataTypeHSTSCache";
  v5[1] = @"_WKWebsiteDataTypeResourceLoadStatistics";
  v5[2] = @"_WKWebsiteDataTypeCredentials";
  v5[3] = @"_WKWebsiteDataTypeAdClickAttributions";
  v5[4] = @"_WKWebsiteDataTypePrivateClickMeasurements";
  v5[5] = @"_WKWebsiteDataTypeAlternativeServices";
  v1 = [objc_msgSend(*(a1 + 32) "allWebsiteDataTypes")];
  v2 = v1;
  if (v1)
  {
    v3 = v1;
  }

  v4 = qword_1EB01D320;
  qword_1EB01D320 = v2;
  if (v4)
  {
  }
}

+ (BOOL)_defaultDataStoreExists
{
  {
    return WebKit::globalDefaultDataStore(void)::globalDefaultDataStore && *(WebKit::globalDefaultDataStore(void)::globalDefaultDataStore + 8) != 0;
  }

  else
  {
    result = 0;
    WebKit::globalDefaultDataStore(void)::globalDefaultDataStore = 0;
  }

  return result;
}

+ (void)_fetchAllIdentifiers:(id)a3
{
  v3 = _Block_copy(a3);
  v4 = _Block_copy(v3);
  v5 = WTF::fastMalloc(0x10);
  *v5 = &unk_1F10FA218;
  v5[1] = v4;
  v7 = v5;
  WebKit::WebsiteDataStore::fetchAllDataStoreIdentifiers(&v7);
  v6 = v7;
  v7 = 0;
  if (v6)
  {
    (*(*v6 + 8))(v6);
  }

  _Block_release(0);
  _Block_release(v3);
}

+ (void)_removeDataStoreWithIdentifier:(id)a3 completionHandler:(id)a4
{
  v21[1] = *MEMORY[0x1E69E9840];
  if (a3)
  {
    v6 = _Block_copy(a4);
    WTF::UUID::fromNSUUID(v18, a3, v7);
    if (v19)
    {
      v8 = _Block_copy(v6);
      v9 = WTF::fastMalloc(0x10);
      *v9 = &unk_1F10FA240;
      v9[1] = v8;
      v15 = v9;
      WebKit::WebsiteDataStore::removeDataStoreWithIdentifier(v18, &v15);
      v10 = v15;
      v15 = 0;
      if (v10)
      {
        (*(*v10 + 8))(v10);
      }

      _Block_release(0);
    }

    else
    {
      v13 = objc_alloc(MEMORY[0x1E696ABC0]);
      v16 = *MEMORY[0x1E696A578];
      v17 = @"Identifier is invalid";
      v14 = [v13 initWithDomain:@"WKWebSiteDataStore" code:1 userInfo:{objc_msgSend(MEMORY[0x1E695DF20], "dictionaryWithObjects:forKeys:count:", &v17, &v16, 1)}];
      (*(a4 + 2))(a4, v14);
      if (v14)
      {
      }
    }

    _Block_release(v6);
  }

  else
  {
    v11 = objc_alloc(MEMORY[0x1E696ABC0]);
    v20 = *MEMORY[0x1E696A578];
    v21[0] = @"Identifier is nil";
    v12 = [v11 initWithDomain:@"WKWebSiteDataStore" code:1 userInfo:{objc_msgSend(MEMORY[0x1E695DF20], "dictionaryWithObjects:forKeys:count:", v21, &v20, 1)}];
    (*(a4 + 2))(a4, v12);
    if (v12)
    {
    }
  }
}

- (id)_initWithConfiguration:(id)a3
{
  v12.receiver = self;
  v12.super_class = WKWebsiteDataStore;
  v4 = [(WKWebsiteDataStore *)&v12 init];
  if (v4)
  {
    v5 = [a3 isPersistent];
    if (v5)
    {
      PersistentSessionID = PAL::SessionID::generatePersistentSessionID(v5);
    }

    else
    {
      PersistentSessionID = PAL::SessionID::generateEphemeralSessionID(v5);
    }

    v7 = PersistentSessionID;
    WebKit::WebsiteDataStoreConfiguration::copy((a3 + 16), &v11);
    v9 = API::Object::apiObjectsUnderConstruction(v8);
    v15 = [(WKWebsiteDataStore *)v4 _apiObject];
    v14 = v4;
    WTF::HashMap<API::Object *,void const*,WTF::DefaultHash<API::Object *>,WTF::HashTraits<API::Object *>,WTF::HashTraits<void const*>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::add<void const*>(v9, &v15, &v14, v13);
    WebKit::WebsiteDataStore::WebsiteDataStore([(WKWebsiteDataStore *)v4 _apiObject], &v11, v7);
  }

  return 0;
}

- (void)_fetchDataRecordsOfTypes:(id)a3 withOptions:(unint64_t)a4 completionHandler:(id)a5
{
  v5 = a4;
  v21[16] = *MEMORY[0x1E69E9840];
  v8 = _Block_copy(a5);
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v10 = [a3 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v10)
  {
    v11 = 0;
    v12 = *v18;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v18 != v12)
        {
          objc_enumerationMutation(a3);
        }

        v14 = WebKit::toWebsiteDataType(*(*(&v17 + 1) + 8 * i), v9);
        if (v14 <= 0x100000000)
        {
          v15 = 0;
        }

        else
        {
          v15 = v14;
        }

        v11 |= v15;
      }

      v10 = [a3 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v10);
  }

  else
  {
    v11 = 0;
  }

  v16 = WTF::fastMalloc(0x10);
  *v16 = &unk_1F10FA268;
  v16[1] = v8;
  v21[0] = v16;
  WebKit::WebsiteDataStore::fetchData(&self->_websiteDataStore, v11, v5 & 1, v21);
  if (v21[0])
  {
    (*(*v21[0] + 8))(v21[0]);
  }

  _Block_release(0);
  _Block_release(0);
}

- (BOOL)_resourceLoadStatisticsEnabled
{
  if (self->_anon_38[241])
  {
    LOBYTE(v2) = self->_anon_38[241] == 2;
  }

  else
  {
    v2 = *(*&self->_anon_38[176] + 544);
    if ((v2 & 0x100) == 0)
    {
      return WebKit::doesAppHaveTrackingPreventionEnabled(self);
    }
  }

  return v2 & 1;
}

- (NSArray)_persistedSites
{
  v35 = 0;
  v2 = *&self->_anon_38[480];
  if (v2)
  {
    v3 = *(v2 - 12);
    if (v3)
    {
      v4 = &self->_anon_38[480];
      v5 = WTF::HashTable<Inspector::Protocol::Automation::VirtualKey,WTF::KeyValuePair<Inspector::Protocol::Automation::VirtualKey,Inspector::Protocol::Automation::VirtualKey>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<Inspector::Protocol::Automation::VirtualKey,Inspector::Protocol::Automation::VirtualKey>>,WTF::IntHash<Inspector::Protocol::Automation::VirtualKey>,WTF::HashMap<Inspector::Protocol::Automation::VirtualKey,Inspector::Protocol::Automation::VirtualKey,WTF::IntHash<Inspector::Protocol::Automation::VirtualKey>,WTF::StrongEnumHashTraits<Inspector::Protocol::Automation::VirtualKey>,WTF::HashTraits<Inspector::Protocol::Automation::VirtualKey>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::StrongEnumHashTraits<Inspector::Protocol::Automation::VirtualKey>,WTF::FastMalloc>::computeBestTableSize(*(v2 - 12));
      v6 = WTF::fastZeroedMalloc((40 * v5 + 16));
      v35 = (v6 + 16);
      *(v6 + 8) = v5 - 1;
      *(v6 + 12) = v5;
      *v6 = 0;
      *(v6 + 4) = v3;
      v7 = WTF::HashTable<WTF::URL,WTF::URL,WTF::IdentityExtractor,WTF::DefaultHash<WTF::URL>,WTF::HashTraits<WTF::URL>,WTF::HashTraits<WTF::URL>,WTF::FastMalloc>::begin(v4);
      v8 = v7;
      v10 = v9;
      v11 = *v4 ? *v4 + 40 * *(*v4 - 4) : 0;
      if (v11 != v7)
      {
        do
        {
          if (v35)
          {
            v12 = *(v35 - 2);
          }

          else
          {
            v12 = 0;
          }

          v13 = *(*v8 + 4);
          if (v13 < 0x100)
          {
            v14 = WTF::StringImpl::hashSlowCase(*v8);
          }

          else
          {
            v14 = v13 >> 8;
          }

          v15 = 0;
          do
          {
            v16 = v14 & v12;
            v17 = WTF::HashTraitsEmptyValueChecker<WTF::HashTraits<WTF::URL>,false>::isEmptyValue<WTF::URL>(&v35[5 * (v14 & v12)]);
            v14 = ++v15 + v16;
          }

          while (!v17);
          v18 = *v8;
          if (*v8)
          {
            atomic_fetch_add_explicit(v18, 2u, memory_order_relaxed);
          }

          v36 = v18;
          v19 = *(v8 + 3);
          v37 = *(v8 + 1);
          v38 = v19;
          WTF::URL::operator=(&v35[5 * v16], &v36);
          v21 = v36;
          v36 = 0;
          if (v21 && atomic_fetch_add_explicit(v21, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v21, v20);
          }

          do
          {
            v8 += 5;
          }

          while (v8 != v10 && ((WTF::HashTraitsEmptyValueChecker<WTF::HashTraits<WTF::URL>,false>::isEmptyValue<WTF::URL>(v8) & 1) != 0 || *v8 == -1));
        }

        while (v8 != v11);
      }
    }
  }

  v22 = objc_alloc(MEMORY[0x1E695DF70]);
  if (v35)
  {
    v23 = *(v35 - 3);
  }

  else
  {
    v23 = 0;
  }

  v24 = [v22 initWithCapacity:{v23, v35}];
  v25 = WTF::HashTable<WTF::URL,WTF::URL,WTF::IdentityExtractor,WTF::DefaultHash<WTF::URL>,WTF::HashTraits<WTF::URL>,WTF::HashTraits<WTF::URL>,WTF::FastMalloc>::begin(&v35);
  v27 = v25;
  v28 = v26;
  if (v35)
  {
    v29 = &v35[5 * *(v35 - 1)];
  }

  else
  {
    v29 = 0;
  }

  if (v29 != v25)
  {
    do
    {
      WTF::URL::createCFURL(&v36, v27);
      [(NSArray *)v24 addObject:v36];
      v30 = v36;
      v36 = 0;
      if (v30)
      {
      }

      do
      {
        v27 = (v27 + 40);
        if (v27 == v28)
        {
          break;
        }

        v31 = WTF::HashTraitsEmptyValueChecker<WTF::HashTraits<WTF::URL>,false>::isEmptyValue<WTF::URL>(v27);
        v32 = *v27 == -1 ? 1 : v31;
      }

      while (v32 == 1);
    }

    while (v27 != v29);
  }

  if (v24)
  {
    v33 = v24;
  }

  if (v35)
  {
    WTF::HashTable<WTF::URL,WTF::URL,WTF::IdentityExtractor,WTF::DefaultHash<WTF::URL>,WTF::HashTraits<WTF::URL>,WTF::HashTraits<WTF::URL>,WTF::FastMalloc>::deallocateTable(v35, v26);
  }

  return v24;
}

- (void)_setPersistedSites:(id)a3
{
  v20 = *MEMORY[0x1E69E9840];
  v18 = 0;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v5 = [a3 countByEnumeratingWithState:&v14 objects:v19 count:16];
  if (v5)
  {
    v6 = *v15;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v15 != v6)
        {
          objc_enumerationMutation(a3);
        }

        MEMORY[0x19EB01DE0](&v12, *(*(&v14 + 1) + 8 * i));
        if (v13)
        {
          WTF::HashTable<WTF::URL,WTF::URL,WTF::IdentityExtractor,WTF::DefaultHash<WTF::URL>,WTF::HashTraits<WTF::URL>,WTF::HashTraits<WTF::URL>,WTF::FastMalloc>::add<(WTF::ShouldValidateKey)1>(&v18, &v12, &v11);
        }

        v9 = v12;
        v12 = 0;
        if (v9 && atomic_fetch_add_explicit(v9, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v9, v8);
        }
      }

      v5 = [a3 countByEnumeratingWithState:&v14 objects:v19 count:16];
    }

    while (v5);
  }

  WebKit::WebsiteDataStore::setPersistedSiteURLs(&self->_websiteDataStore, &v18);
  if (v18)
  {
    WTF::HashTable<WTF::URL,WTF::URL,WTF::IdentityExtractor,WTF::DefaultHash<WTF::URL>,WTF::HashTraits<WTF::URL>,WTF::HashTraits<WTF::URL>,WTF::FastMalloc>::deallocateTable(v18, v10);
  }
}

- (void)_setResourceLoadStatisticsTestingCallback:(id)a3
{
  if (*&self->_websiteDataStore.m_storage.data[24] >= -1)
  {
    if (a3)
    {
      v4 = _Block_copy(a3);
      v5 = self;
      v6 = WTF::fastMalloc(0x18);
      *v6 = &unk_1F10FA290;
      v6[1] = v4;
      v6[2] = self;
      v7 = v6;
      WebKit::WebsiteDataStore::setStatisticsTestingCallback(&self->_websiteDataStore, &v7);
      if (v7)
      {
        (*(*v7 + 8))(v7);
      }

      _Block_release(0);
    }

    else
    {
      v7 = 0;
      WebKit::WebsiteDataStore::setStatisticsTestingCallback(&self->_websiteDataStore, &v7);
      if (v7)
      {
        (*(*v7 + 8))(v7);
      }
    }
  }
}

- (void)_setStorageAccessPromptQuirkForTesting:(id)a3 withSubFrameDomains:(id)a4 withTriggerPages:(id)a5 completionHandler:(id)a6
{
  if (*&self->_websiteDataStore.m_storage.data[24] <= -2)
  {
    v19 = *(a6 + 2);

    v19(a6);
  }

  else
  {
    MEMORY[0x19EB02040](&v22, a3);
    *v20 = a4;
    v10 = [a4 count];
    v24 = v20;
    WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::Vector<WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> WTF::makeVector<WTF::String>(NSArray *)::{lambda(unsigned long)#1}>(v21, v10, &v24, 0);
    v24 = a5;
    v11 = [a5 count];
    v23 = &v24;
    WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::Vector<WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> WTF::makeVector<WTF::String>(NSArray *)::{lambda(unsigned long)#1}>(v20, v11, &v23, 0);
    v12 = _Block_copy(a6);
    v13 = WTF::fastMalloc(0x10);
    *v13 = &unk_1F10F8FE8;
    *(v13 + 8) = v12;
    v24 = v13;
    WebKit::WebsiteDataStore::setStorageAccessPromptQuirkForTesting(&self->_websiteDataStore, &v22, v21, v20, &v24);
    v14 = v24;
    v24 = 0;
    if (v14)
    {
      (*(*v14 + 1))(v14);
    }

    _Block_release(0);
    WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v20, v15);
    WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v21, v16);
    v18 = v22;
    v22 = 0;
    if (v18)
    {
      if (atomic_fetch_add_explicit(v18, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v18, v17);
      }
    }
  }
}

- (void)_grantStorageAccessForTesting:(id)a3 withSubFrameDomains:(id)a4 completionHandler:(id)a5
{
  if (*&self->_websiteDataStore.m_storage.data[24] <= -2)
  {
    v15 = *(a5 + 2);

    v15(a5);
  }

  else
  {
    MEMORY[0x19EB02040](&v17, a3);
    v19 = a4;
    v8 = [a4 count];
    v18 = &v19;
    WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::Vector<WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> WTF::makeVector<WTF::String>(NSArray *)::{lambda(unsigned long)#1}>(v16, v8, &v18, 0);
    v9 = _Block_copy(a5);
    v10 = WTF::fastMalloc(0x10);
    *v10 = &unk_1F10F8FE8;
    v10[1] = v9;
    v19 = v10;
    WebKit::WebsiteDataStore::grantStorageAccessForTesting(&self->_websiteDataStore, &v17, v16, &v19);
    v11 = v19;
    v19 = 0;
    if (v11)
    {
      (*(*v11 + 8))(v11);
    }

    _Block_release(0);
    WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v16, v12);
    v14 = v17;
    v17 = 0;
    if (v14)
    {
      if (atomic_fetch_add_explicit(v14, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v14, v13);
      }
    }
  }
}

- (void)_setResourceLoadStatisticsTimeAdvanceForTesting:(double)a3 completionHandler:(id)a4
{
  v6 = _Block_copy(a4);
  v7 = WTF::fastMalloc(0x10);
  *v7 = &unk_1F10F8FE8;
  v7[1] = v6;
  v9 = v7;
  WebKit::WebsiteDataStore::setResourceLoadStatisticsTimeAdvanceForTesting(&self->_websiteDataStore, &v9, a3);
  v8 = v9;
  v9 = 0;
  if (v8)
  {
    (*(*v8 + 8))(v8);
  }

  _Block_release(0);
}

- (void)_loadedSubresourceDomainsFor:(id)a3 completionHandler:(id)a4
{
  if (a3)
  {
    [a3 _page];
    v5 = v11;
    if (v11)
    {
      v6 = _Block_copy(a4);
      v7 = WTF::fastMalloc(0x10);
      *v7 = &unk_1F10FA2B8;
      v7[1] = v6;
      v10 = v7;
      WebKit::WebPageProxy::sendWithAsyncReply<Messages::WebPage::GetLoadedSubresourceDomains,WTF::CompletionHandler<void ()(WTF::Vector<WebCore::RegistrableDomain,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&)>>(v5, &v12, &v10);
      v8 = v10;
      v10 = 0;
      if (v8)
      {
        (*(*v8 + 8))(v8);
      }

      _Block_release(0);
    }

    else
    {
      (*(a4 + 2))(a4, 0);
    }
  }

  else
  {
    v9 = *(a4 + 2);

    v9(a4, 0);
  }
}

- (void)_clearLoadedSubresourceDomainsFor:(id)a3
{
  if (a3)
  {
    [a3 _page];
    if (v3)
    {
      WebKit::WebPageProxy::send<Messages::WebPage::ClearLoadedSubresourceDomains>(v3, &v4);
    }
  }
}

- (void)_scheduleCookieBlockingUpdate:(id)a3
{
  v4 = _Block_copy(a3);
  v5 = WTF::fastMalloc(0x10);
  *v5 = &unk_1F10FA2E0;
  v5[1] = v4;
  v7 = v5;
  WebKit::WebsiteDataStore::scheduleCookieBlockingUpdate(&self->_websiteDataStore, &v7);
  v6 = v7;
  v7 = 0;
  if (v6)
  {
    (*(*v6 + 8))(v6);
  }

  _Block_release(0);
}

- (void)_logUserInteraction:(id)a3 completionHandler:(id)a4
{
  MEMORY[0x19EB01DE0](v12, a3);
  v6 = _Block_copy(a4);
  v7 = WTF::fastMalloc(0x10);
  *v7 = &unk_1F10FA308;
  v7[1] = v6;
  v11 = v7;
  WebKit::WebsiteDataStore::logUserInteraction(&self->_websiteDataStore, v12, &v11);
  v8 = v11;
  v11 = 0;
  if (v8)
  {
    (*(*v8 + 8))(v8);
  }

  _Block_release(0);
  v10 = v12[0];
  v12[0] = 0;
  if (v10)
  {
    if (atomic_fetch_add_explicit(v10, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v10, v9);
    }
  }
}

- (void)_setPrevalentDomain:(id)a3 completionHandler:(id)a4
{
  MEMORY[0x19EB01DE0](v12, a3);
  v6 = _Block_copy(a4);
  v7 = WTF::fastMalloc(0x10);
  *v7 = &unk_1F10FA330;
  v7[1] = v6;
  v11 = v7;
  WebKit::WebsiteDataStore::setPrevalentResource(&self->_websiteDataStore, v12, &v11);
  v8 = v11;
  v11 = 0;
  if (v8)
  {
    (*(*v8 + 8))(v8);
  }

  _Block_release(0);
  v10 = v12[0];
  v12[0] = 0;
  if (v10)
  {
    if (atomic_fetch_add_explicit(v10, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v10, v9);
    }
  }
}

- (void)_getIsPrevalentDomain:(id)a3 completionHandler:(id)a4
{
  MEMORY[0x19EB01DE0](v12, a3);
  v6 = _Block_copy(a4);
  v7 = WTF::fastMalloc(0x10);
  *v7 = &unk_1F10FA358;
  v7[1] = v6;
  v11 = v7;
  WebKit::WebsiteDataStore::isPrevalentResource(&self->_websiteDataStore, v12, &v11);
  v8 = v11;
  v11 = 0;
  if (v8)
  {
    (*(*v8 + 8))(v8);
  }

  _Block_release(0);
  v10 = v12[0];
  v12[0] = 0;
  if (v10)
  {
    if (atomic_fetch_add_explicit(v10, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v10, v9);
    }
  }
}

- (void)_clearPrevalentDomain:(id)a3 completionHandler:(id)a4
{
  MEMORY[0x19EB01DE0](v12, a3);
  v6 = _Block_copy(a4);
  v7 = WTF::fastMalloc(0x10);
  *v7 = &unk_1F10FA380;
  v7[1] = v6;
  v11 = v7;
  WebKit::WebsiteDataStore::clearPrevalentResource(&self->_websiteDataStore, v12, &v11);
  v8 = v11;
  v11 = 0;
  if (v8)
  {
    (*(*v8 + 8))(v8);
  }

  _Block_release(0);
  v10 = v12[0];
  v12[0] = 0;
  if (v10)
  {
    if (atomic_fetch_add_explicit(v10, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v10, v9);
    }
  }
}

- (void)_clearResourceLoadStatistics:(id)a3
{
  v4 = _Block_copy(a3);
  v5 = WTF::fastMalloc(0x10);
  *v5 = &unk_1F10FA3A8;
  v5[1] = v4;
  v7 = v5;
  WebKit::WebsiteDataStore::scheduleClearInMemoryAndPersistent(&self->_websiteDataStore, 0, &v7);
  v6 = v7;
  v7 = 0;
  if (v6)
  {
    (*(*v6 + 8))(v6);
  }

  _Block_release(0);
}

- (void)_closeDatabases:(id)a3
{
  v4 = _Block_copy(a3);
  v5 = WTF::fastMalloc(0x10);
  *v5 = &unk_1F10FA3D0;
  v5[1] = v4;
  v7 = v5;
  WebKit::WebsiteDataStore::closeDatabases(&self->_websiteDataStore, &v7);
  v6 = v7;
  v7 = 0;
  if (v6)
  {
    (*(*v6 + 8))(v6);
  }

  _Block_release(0);
}

- (void)_getResourceLoadStatisticsDataSummary:(id)a3
{
  v4 = _Block_copy(a3);
  v5 = WTF::fastMalloc(0x10);
  *v5 = &unk_1F10FA3F8;
  v5[1] = v4;
  v7 = v5;
  WebKit::WebsiteDataStore::getResourceLoadStatisticsDataSummary(&self->_websiteDataStore, &v7);
  v6 = v7;
  v7 = 0;
  if (v6)
  {
    (*(*v6 + 8))(v6);
  }

  _Block_release(0);
}

- (void)_isRelationshipOnlyInDatabaseOnce:(id)a3 thirdParty:(id)a4 completionHandler:(id)a5
{
  MEMORY[0x19EB01DE0](v16, a4);
  MEMORY[0x19EB01DE0](v15, a3);
  v8 = _Block_copy(a5);
  v9 = WTF::fastMalloc(0x10);
  *v9 = &unk_1F10FA448;
  v9[1] = v8;
  v14 = v9;
  WebKit::WebsiteDataStore::isRelationshipOnlyInDatabaseOnce(&self->_websiteDataStore, v16, v15, &v14);
  v10 = v14;
  v14 = 0;
  if (v10)
  {
    (*(*v10 + 8))(v10);
  }

  _Block_release(0);
  v12 = v15[0];
  v15[0] = 0;
  if (v12 && atomic_fetch_add_explicit(v12, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v12, v11);
  }

  v13 = v16[0];
  v16[0] = 0;
  if (v13)
  {
    if (atomic_fetch_add_explicit(v13, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v13, v11);
    }
  }
}

- (void)_isRegisteredAsSubresourceUnderFirstParty:(id)a3 thirdParty:(id)a4 completionHandler:(id)a5
{
  MEMORY[0x19EB01DE0](v16, a4);
  MEMORY[0x19EB01DE0](v15, a3);
  v8 = _Block_copy(a5);
  v9 = WTF::fastMalloc(0x10);
  *v9 = &unk_1F10FA470;
  v9[1] = v8;
  v14 = v9;
  WebKit::WebsiteDataStore::isRegisteredAsSubresourceUnder(&self->_websiteDataStore, v16, v15, &v14);
  v10 = v14;
  v14 = 0;
  if (v10)
  {
    (*(*v10 + 8))(v10);
  }

  _Block_release(0);
  v12 = v15[0];
  v15[0] = 0;
  if (v12 && atomic_fetch_add_explicit(v12, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v12, v11);
  }

  v13 = v16[0];
  v16[0] = 0;
  if (v13)
  {
    if (atomic_fetch_add_explicit(v13, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v13, v11);
    }
  }
}

- (void)_statisticsDatabaseHasAllTables:(id)a3
{
  v4 = _Block_copy(a3);
  v5 = WTF::fastMalloc(0x10);
  *v5 = &unk_1F10FA498;
  v5[1] = v4;
  v7 = v5;
  WebKit::WebsiteDataStore::statisticsDatabaseHasAllTables(&self->_websiteDataStore, &v7);
  v6 = v7;
  v7 = 0;
  if (v6)
  {
    (*(*v6 + 8))(v6);
  }

  _Block_release(0);
}

- (void)_processStatisticsAndDataRecords:(id)a3
{
  v4 = _Block_copy(a3);
  v5 = WTF::fastMalloc(0x10);
  *v5 = &unk_1F10FA4C0;
  v5[1] = v4;
  v7 = v5;
  WebKit::WebsiteDataStore::scheduleStatisticsAndDataRecordsProcessing(&self->_websiteDataStore, &v7);
  v6 = v7;
  v7 = 0;
  if (v6)
  {
    (*(*v6 + 8))(v6);
  }

  _Block_release(0);
}

- (void)_setThirdPartyCookieBlockingMode:(BOOL)a3 onlyOnSitesWithoutUserInteraction:(BOOL)a4 completionHandler:(id)a5
{
  v5 = a4;
  v6 = a3;
  v8 = _Block_copy(a5);
  v9 = WTF::fastMalloc(0x10);
  if (v5)
  {
    v10 = 4;
  }

  else
  {
    v10 = 0;
  }

  if (v6)
  {
    v11 = v10;
  }

  else
  {
    v11 = 5;
  }

  *v9 = &unk_1F10FA4E8;
  v9[1] = v8;
  v12 = v9;
  WebKit::WebsiteDataStore::setThirdPartyCookieBlockingMode(&self->_websiteDataStore, v11, &v12);
  if (v12)
  {
    (*(*v12 + 8))(v12);
  }

  _Block_release(0);
}

- (void)_renameOrigin:(id)a3 to:(id)a4 forDataOfTypes:(id)a5 completionHandler:(id)a6
{
  v34[16] = *MEMORY[0x1E69E9840];
  if ([a5 count])
  {
    if (([a5 isSubsetOfSet:{objc_msgSend(MEMORY[0x1E695DFD8], "setWithObjects:", @"WKWebsiteDataTypeLocalStorage", @"WKWebsiteDataTypeIndexedDBDatabases", 0)}] & 1) == 0)
    {
      [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:@"_renameOrigin can only be called with WKWebsiteDataTypeLocalStorage and WKWebsiteDataTypeIndexedDBDatabases right now."];
    }

    MEMORY[0x19EB01DE0](v34, a3);
    WebCore::SecurityOriginData::fromURLWithoutStrictOpaqueness(v33, v34, v11);
    v13 = v34[0];
    v34[0] = 0;
    if (v13 && atomic_fetch_add_explicit(v13, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v13, v12);
    }

    MEMORY[0x19EB01DE0](v34, a4);
    WebCore::SecurityOriginData::fromURLWithoutStrictOpaqueness(v32, v34, v14);
    v16 = v34[0];
    v34[0] = 0;
    if (v16 && atomic_fetch_add_explicit(v16, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v16, v15);
    }

    v28 = 0u;
    v29 = 0u;
    v30 = 0u;
    v31 = 0u;
    v18 = [a5 countByEnumeratingWithState:&v28 objects:v34 count:16];
    if (v18)
    {
      v19 = 0;
      v20 = *v29;
      do
      {
        for (i = 0; i != v18; ++i)
        {
          if (*v29 != v20)
          {
            objc_enumerationMutation(a5);
          }

          v22 = WebKit::toWebsiteDataType(*(*(&v28 + 1) + 8 * i), v17);
          if (v22 <= 0x100000000)
          {
            v23 = 0;
          }

          else
          {
            v23 = v22;
          }

          v19 |= v23;
        }

        v18 = [a5 countByEnumeratingWithState:&v28 objects:v34 count:16];
      }

      while (v18);
    }

    else
    {
      v19 = 0;
    }

    v25 = _Block_copy(a6);
    v26 = WTF::fastMalloc(0x10);
    *v26 = &unk_1F10FA510;
    *(v26 + 1) = v25;
    v34[0] = v26;
    WebKit::WebsiteDataStore::renameOriginInWebsiteData(&self->_websiteDataStore, v33, v32, v19, v34);
    v27 = v34[0];
    v34[0] = 0;
    if (v27)
    {
      (*(*v27 + 8))(v27);
    }

    _Block_release(0);
    mpark::detail::move_constructor<mpark::detail::traits<WebCore::SecurityOriginData::Tuple,WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::OpaqueOriginIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,(mpark::detail::Trait)1>::~move_constructor(v32);
    mpark::detail::move_constructor<mpark::detail::traits<WebCore::SecurityOriginData::Tuple,WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::OpaqueOriginIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,(mpark::detail::Trait)1>::~move_constructor(v33);
  }

  else
  {
    v24 = *(a6 + 2);

    v24(a6);
  }
}

- (BOOL)_networkProcessHasEntitlementForTesting:(id)a3
{
  MEMORY[0x19EB02040](&v8, a3);
  HasEntitlementForTesting = WebKit::WebsiteDataStore::networkProcessHasEntitlementForTesting(&self->_websiteDataStore, &v8);
  v6 = v8;
  v8 = 0;
  if (v6 && atomic_fetch_add_explicit(v6, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v6, v4);
  }

  return HasEntitlementForTesting;
}

- (void)_setUserAgentStringQuirkForTesting:(id)a3 withUserAgent:(id)a4 completionHandler:(id)a5
{
  v7 = self;
  MEMORY[0x19EB02040](&v15, a3);
  MEMORY[0x19EB02040](&v14, a4);
  v8 = _Block_copy(a5);
  v9 = WTF::fastMalloc(0x10);
  *v9 = &unk_1F10FA538;
  v9[1] = v8;
  v13 = v9;
  WebKit::WebsiteDataStore::setUserAgentStringQuirkForTesting(v7 + 8, &v15, &v14, &v13);
  if (v13)
  {
    (*(*v13 + 8))(v13);
  }

  _Block_release(0);
  v11 = v14;
  v14 = 0;
  if (v11 && atomic_fetch_add_explicit(v11, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v11, v10);
  }

  v12 = v15;
  v15 = 0;
  if (v12)
  {
    if (atomic_fetch_add_explicit(v12, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v12, v10);
    }
  }
}

- (_WKWebsiteDataStoreDelegate)_delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate.m_weakReference);
  v3 = WeakRetained;
  if (WeakRetained)
  {
  }

  return v3;
}

- (void)set_delegate:(id)a3
{
  objc_storeWeak(&self->_delegate.m_weakReference, a3);
  if (WebsiteDataStoreClient::operator new(unsigned long)::s_heapRef)
  {
    NonCompact = bmalloc::api::tzoneAllocateNonCompact(WebsiteDataStoreClient::operator new(unsigned long)::s_heapRef, v5);
  }

  else
  {
    NonCompact = bmalloc::api::tzoneAllocateNonCompactSlow();
  }

  v7 = NonCompact;
  *NonCompact = &unk_1F10FA560;
  *(NonCompact + 8) = 0;
  objc_initWeak((NonCompact + 8), self);
  *(v7 + 16) = 0;
  objc_initWeak((v7 + 16), a3);
  WeakRetained = objc_loadWeakRetained((v7 + 16));
  v9 = objc_opt_respondsToSelector();
  if (WeakRetained)
  {
  }

  *(v7 + 24) = v9 & 1;
  v10 = objc_loadWeakRetained((v7 + 16));
  v11 = objc_opt_respondsToSelector();
  if (v10)
  {
  }

  *(v7 + 25) = v11 & 1;
  v12 = objc_loadWeakRetained((v7 + 16));
  v13 = objc_opt_respondsToSelector();
  if (v12)
  {
  }

  *(v7 + 26) = v13 & 1;
  v14 = objc_loadWeakRetained((v7 + 16));
  v15 = objc_opt_respondsToSelector();
  if (v14)
  {
  }

  *(v7 + 27) = v15 & 1;
  v16 = objc_loadWeakRetained((v7 + 16));
  v17 = objc_opt_respondsToSelector();
  if (v16)
  {
  }

  *(v7 + 28) = v17 & 1;
  v18 = objc_loadWeakRetained((v7 + 16));
  v19 = objc_opt_respondsToSelector();
  if (v18)
  {
  }

  *(v7 + 29) = v19 & 1;
  v20 = objc_loadWeakRetained((v7 + 16));
  v21 = objc_opt_respondsToSelector();
  if (v20)
  {
  }

  *(v7 + 30) = v21 & 1;
  v22 = objc_loadWeakRetained((v7 + 16));
  v23 = objc_opt_respondsToSelector();
  if (v22)
  {
  }

  *(v7 + 31) = v23 & 1;
  v24 = objc_loadWeakRetained((v7 + 16));
  v25 = objc_opt_respondsToSelector();
  if (v24)
  {
  }

  *(v7 + 32) = v25 & 1;
  v26 = objc_loadWeakRetained((v7 + 16));
  v27 = objc_opt_respondsToSelector();
  if (v26)
  {
  }

  *(v7 + 33) = v27 & 1;
  v28 = objc_loadWeakRetained((v7 + 16));
  v29 = objc_opt_respondsToSelector();
  if (v28)
  {
  }

  *(v7 + 34) = v29 & 1;
  v30 = objc_loadWeakRetained((v7 + 16));
  v31 = objc_opt_respondsToSelector();
  if (v30)
  {
  }

  *(v7 + 35) = v31 & 1;
  v32 = objc_loadWeakRetained((v7 + 16));
  v33 = objc_opt_respondsToSelector();
  if (v32)
  {
  }

  *(v7 + 36) = v33 & 1;
  v34 = objc_loadWeakRetained((v7 + 16));
  v35 = objc_opt_respondsToSelector();
  if (v34)
  {
  }

  *(v7 + 37) = v35 & 1;
  v36 = *&self->_anon_38[368];
  *&self->_anon_38[368] = v7;
  if (v36)
  {
    v37 = *(*v36 + 8);

    v37();
  }
}

- (_WKWebsiteDataStoreConfiguration)_configuration
{
  WebKit::WebsiteDataStoreConfiguration::copy(*&self->_anon_38[176], &v8);
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

- (void)_trustServerForLocalPCMTesting:(__SecTrust *)a3
{
  if (a3)
  {
    CFRetain(a3);
  }

  cf = a3;
  WebKit::WebsiteDataStore::allowTLSCertificateChainForLocalPCMTesting(&self->_websiteDataStore, &cf);
  v5 = cf;
  cf = 0;
  if (v5)
  {
    CFRelease(v5);
  }
}

- (void)_appBoundDomains:(id)a3
{
  v4 = _Block_copy(a3);
  v5 = WTF::fastMalloc(0x10);
  *v5 = &unk_1F10FA6C0;
  v5[1] = v4;
  v6 = v5;
  WebKit::WebsiteDataStore::getAppBoundDomains(&self->_websiteDataStore, &v6);
  if (v6)
  {
    (*(*v6 + 8))(v6);
  }

  _Block_release(0);
}

- (void)_appBoundSchemes:(id)a3
{
  v4 = _Block_copy(a3);
  v5 = WTF::fastMalloc(0x10);
  *v5 = &unk_1F10FA6E8;
  v5[1] = v4;
  v6 = v5;
  WebKit::WebsiteDataStore::getAppBoundSchemes(&self->_websiteDataStore, &v6);
  if (v6)
  {
    (*(*v6 + 8))(v6);
  }

  _Block_release(0);
}

- (void)_sendNetworkProcessPrepareToSuspend:(id)a3
{
  v4 = _Block_copy(a3);
  v5 = WTF::fastMalloc(0x10);
  *v5 = &unk_1F10FA710;
  v5[1] = v4;
  v7 = v5;
  WebKit::WebsiteDataStore::sendNetworkProcessPrepareToSuspendForTesting(&self->_websiteDataStore, &v7);
  v6 = v7;
  v7 = 0;
  if (v6)
  {
    (*(*v6 + 8))(v6);
  }

  _Block_release(0);
}

- (void)_synthesizeAppIsBackground:(BOOL)a3
{
  v3 = a3;
  v4 = WebKit::WebsiteDataStore::networkProcess(&self->_websiteDataStore, a2);
  v5 = v4 + 4;
  atomic_fetch_add(v4 + 4, 1u);
  WebKit::NetworkProcessProxy::synthesizeAppIsBackground(v4, v3);

  WTF::ThreadSafeRefCounted<WebKit::AuxiliaryProcessProxy,(WTF::DestructionThread)2>::deref(v5);
}

- (int)_networkProcessIdentifier
{
  v2 = *(WebKit::WebsiteDataStore::networkProcess(&self->_websiteDataStore, a2) + 80);
  if (v2)
  {
    return *(v2 + 108);
  }

  else
  {
    return 0;
  }
}

- (void)_forceNetworkProcessToTaskSuspendForTesting
{
  v2 = *&self->_anon_38[384];
  if (v2)
  {
    atomic_fetch_add((v2 + 16), 1u);
    v3 = *(*(v2 + 160) + 8);
    if (v3)
    {
      atomic_fetch_add((v3 + 16), 1u);
      WebKit::ProcessThrottler::invalidateAllActivitiesAndDropAssertion((v2 + 144));
      WebKit::ProcessThrottler::deref((v2 + 144));

      WTF::ThreadSafeRefCounted<WebKit::AuxiliaryProcessProxy,(WTF::DestructionThread)2>::deref((v2 + 16));
    }

    else
    {
      __break(0xC471u);
    }
  }
}

+ (BOOL)_defaultNetworkProcessExists
{
  {
    return WebKit::NetworkProcessProxy::defaultNetworkProcess(void)::networkProcess && *(WebKit::NetworkProcessProxy::defaultNetworkProcess(void)::networkProcess + 8) != 0;
  }

  else
  {
    result = 0;
    WebKit::NetworkProcessProxy::defaultNetworkProcess(void)::networkProcess = 0;
  }

  return result;
}

- (void)_countNonDefaultSessionSets:(id)a3
{
  v4 = _Block_copy(a3);
  v5 = WTF::fastMalloc(0x10);
  *v5 = &unk_1F10FA738;
  v5[1] = v4;
  v7 = v5;
  WebKit::WebsiteDataStore::countNonDefaultSessionSets(self->_websiteDataStore.m_storage.data, &v7);
  v6 = v7;
  v7 = 0;
  if (v6)
  {
    (*(*v6 + 8))(v6);
  }

  _Block_release(0);
}

- (void)_getPendingPushMessage:(id)a3
{
  v5 = qword_1ED6410A8;
  if (os_log_type_enabled(qword_1ED6410A8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_19D52D000, v5, OS_LOG_TYPE_DEFAULT, "Getting pending push message", buf, 2u);
  }

  v7 = WebKit::WebsiteDataStore::networkProcess(&self->_websiteDataStore, v6);
  atomic_fetch_add((v7 + 16), 1u);
  v8 = *&self->_websiteDataStore.m_storage.data[24];
  v9 = _Block_copy(a3);
  v10 = WTF::fastMalloc(0x10);
  *v10 = &unk_1F10FA760;
  v10[1] = v9;
  *buf = v8;
  v12 = v10;
  v13 = buf;
  WebKit::AuxiliaryProcessProxy::sendWithAsyncReply<Messages::NetworkProcess::GetPendingPushMessage,WTF::CompletionHandler<void ()(std::optional<WebKit::WebPushMessage> const&)>>(v7, &v13, &v12, 0, 0, 1);
  v11 = v12;
  v12 = 0;
  if (v11)
  {
    (*(*v11 + 8))(v11);
  }

  _Block_release(0);
  WTF::ThreadSafeRefCounted<WebKit::AuxiliaryProcessProxy,(WTF::DestructionThread)2>::deref((v7 + 16));
}

- (void)_getPendingPushMessages:(id)a3
{
  v5 = qword_1ED6410A8;
  if (os_log_type_enabled(qword_1ED6410A8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_19D52D000, v5, OS_LOG_TYPE_DEFAULT, "Getting pending push messages", buf, 2u);
  }

  v7 = WebKit::WebsiteDataStore::networkProcess(&self->_websiteDataStore, v6);
  atomic_fetch_add((v7 + 16), 1u);
  v8 = *&self->_websiteDataStore.m_storage.data[24];
  v9 = _Block_copy(a3);
  v10 = WTF::fastMalloc(0x10);
  *v10 = &unk_1F10FA788;
  v10[1] = v9;
  *buf = v8;
  v12 = v10;
  v13 = buf;
  WebKit::AuxiliaryProcessProxy::sendWithAsyncReply<Messages::NetworkProcess::GetPendingPushMessages,WTF::CompletionHandler<void ()(WTF::Vector<WebKit::WebPushMessage,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> const&)>>(v7, &v13, &v12, 0, 0, 1);
  v11 = v12;
  v12 = 0;
  if (v11)
  {
    (*(*v11 + 8))(v11);
  }

  _Block_release(0);
  WTF::ThreadSafeRefCounted<WebKit::AuxiliaryProcessProxy,(WTF::DestructionThread)2>::deref((v7 + 16));
}

- (void)_processPushMessage:(id)a3 completionHandler:(id)a4
{
  WebKit::WebPushMessage::fromDictionary(a3, v12);
  if (v13)
  {
    v6 = _Block_copy(a4);
    v7 = WTF::fastMalloc(0x10);
    *v7 = &unk_1F10FA7B0;
    v7[1] = v6;
    v11[0] = v7;
    WebKit::WebsiteDataStore::processPushMessage(&self->_websiteDataStore, v12, v11);
    v8 = v11[0];
    v11[0] = 0;
    if (v8)
    {
      (*(*v8 + 8))(v8);
    }

    _Block_release(0);
  }

  else
  {
    v10 = qword_1ED6410A8;
    if (os_log_type_enabled(qword_1ED6410A8, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v11[0]) = 0;
      _os_log_error_impl(&dword_19D52D000, v10, OS_LOG_TYPE_ERROR, "Asked to handle an invalid push message", v11, 2u);
    }

    (*(a4 + 2))(a4, 0);
  }

  if (v13 == 1)
  {
    WebKit::WebPushMessage::~WebPushMessage(v12, v9);
  }
}

- (void)_processWebCorePersistentNotificationClick:(const void *)a3 completionHandler:(id)a4
{
  v17[33] = *MEMORY[0x1E69E9840];
  WebCore::NotificationData::NotificationData(v17, a3);
  if (v17[0] && *(v17[0] + 4) && *(*&self->_anon_38[176] + 491) == 1)
  {
    v6 = qword_1ED6410A8;
    if (os_log_type_enabled(qword_1ED6410A8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_19D52D000, v6, OS_LOG_TYPE_DEFAULT, "Sending persistent notification clicked with default action URL. Requesting navigation to it now.", buf, 2u);
    }

    (*(**&self->_anon_38[368] + 88))(*&self->_anon_38[368], v17);
    (*(a4 + 2))(a4, 1);
  }

  else
  {
    v8 = qword_1ED6410A8;
    if (os_log_type_enabled(qword_1ED6410A8, OS_LOG_TYPE_DEFAULT))
    {
      WTF::String::utf8();
      v10 = v15 ? v15 + 16 : 0;
      *buf = 136642819;
      *&buf[4] = v10;
      _os_log_impl(&dword_19D52D000, v8, OS_LOG_TYPE_DEFAULT, "Sending persistent notification click from origin %{sensitive}s to network process to handle", buf, 0xCu);
      if (v15)
      {
        if (*v15 == 1)
        {
          WTF::fastFree(v15, v9);
        }

        else
        {
          --*v15;
        }
      }
    }

    v17[26] = *&self->_websiteDataStore.m_storage.data[24];
    v11 = WebKit::WebsiteDataStore::networkProcess(&self->_websiteDataStore, v9);
    atomic_fetch_add((v11 + 16), 1u);
    v12 = _Block_copy(a4);
    v13 = WTF::fastMalloc(0x10);
    *v13 = &unk_1F10FA7D8;
    v13[1] = v12;
    *buf = v13;
    WebKit::NetworkProcessProxy::processNotificationEvent(v11, v17, 0, buf);
    v14 = *buf;
    *buf = 0;
    if (v14)
    {
      (*(*v14 + 8))(v14);
    }

    _Block_release(0);
    WTF::ThreadSafeRefCounted<WebKit::AuxiliaryProcessProxy,(WTF::DestructionThread)2>::deref((v11 + 16));
  }

  WebCore::NotificationData::~NotificationData(v17, v7);
}

- (void)_processPersistentNotificationClick:(id)a3 completionHandler:(id)a4
{
  v11 = *MEMORY[0x1E69E9840];
  WebCore::NotificationData::fromDictionary(v9, a3, a2);
  if (v10)
  {
    [(WKWebsiteDataStore *)self _processWebCorePersistentNotificationClick:v9 completionHandler:a4];
  }

  else
  {
    v7 = qword_1ED6410A8;
    if (os_log_type_enabled(qword_1ED6410A8, OS_LOG_TYPE_ERROR))
    {
      *v8 = 0;
      _os_log_error_impl(&dword_19D52D000, v7, OS_LOG_TYPE_ERROR, "Asked to handle a persistent notification click with an invalid notification dictionary representation", v8, 2u);
    }

    (*(a4 + 2))(a4, 0);
  }

  if (v10 == 1)
  {
    WebCore::NotificationData::~NotificationData(v9, v6);
  }
}

- (void)_processWebCorePersistentNotificationClose:(const void *)a3 completionHandler:(id)a4
{
  v16 = *MEMORY[0x1E69E9840];
  v7 = qword_1ED6410A8;
  if (os_log_type_enabled(qword_1ED6410A8, OS_LOG_TYPE_DEFAULT))
  {
    WTF::String::utf8();
    v9 = v14 ? v14 + 16 : 0;
    *buf = 136642819;
    *&buf[4] = v9;
    _os_log_impl(&dword_19D52D000, v7, OS_LOG_TYPE_DEFAULT, "Sending persistent notification close from origin %{sensitive}s to network process to handle", buf, 0xCu);
    if (v14)
    {
      if (*v14 == 1)
      {
        WTF::fastFree(v14, v8);
      }

      else
      {
        --*v14;
      }
    }
  }

  v10 = WebKit::WebsiteDataStore::networkProcess(&self->_websiteDataStore, v8);
  atomic_fetch_add((v10 + 16), 1u);
  v11 = _Block_copy(a4);
  v12 = WTF::fastMalloc(0x10);
  *v12 = &unk_1F10FA800;
  v12[1] = v11;
  *buf = v12;
  WebKit::NetworkProcessProxy::processNotificationEvent(v10, a3, 1, buf);
  v13 = *buf;
  *buf = 0;
  if (v13)
  {
    (*(*v13 + 8))(v13);
  }

  _Block_release(0);
  WTF::ThreadSafeRefCounted<WebKit::AuxiliaryProcessProxy,(WTF::DestructionThread)2>::deref((v10 + 16));
}

- (void)_processPersistentNotificationClose:(id)a3 completionHandler:(id)a4
{
  v11 = *MEMORY[0x1E69E9840];
  WebCore::NotificationData::fromDictionary(v9, a3, a2);
  if (v10)
  {
    [(WKWebsiteDataStore *)self _processWebCorePersistentNotificationClose:v9 completionHandler:a4];
  }

  else
  {
    v7 = qword_1ED6410A8;
    if (os_log_type_enabled(qword_1ED6410A8, OS_LOG_TYPE_ERROR))
    {
      *v8 = 0;
      _os_log_error_impl(&dword_19D52D000, v7, OS_LOG_TYPE_ERROR, "Asked to handle a persistent notification click with an invalid notification dictionary representation", v8, 2u);
    }

    (*(a4 + 2))(a4, 0);
  }

  if (v10 == 1)
  {
    WebCore::NotificationData::~NotificationData(v9, v6);
  }
}

- (void)_getAllBackgroundFetchIdentifiers:(id)a3
{
  v5 = WebKit::WebsiteDataStore::networkProcess(&self->_websiteDataStore, a2);
  atomic_fetch_add((v5 + 16), 1u);
  v6 = *&self->_websiteDataStore.m_storage.data[24];
  v7 = _Block_copy(a3);
  v8 = WTF::fastMalloc(0x10);
  *v8 = &unk_1F10FA828;
  v8[1] = v7;
  v10 = v8;
  WebKit::NetworkProcessProxy::getAllBackgroundFetchIdentifiers(v5, v6, &v10);
  v9 = v10;
  v10 = 0;
  if (v9)
  {
    (*(*v9 + 8))(v9);
  }

  _Block_release(0);
  WTF::ThreadSafeRefCounted<WebKit::AuxiliaryProcessProxy,(WTF::DestructionThread)2>::deref((v5 + 16));
}

- (void)_getBackgroundFetchState:(id)a3 completionHandler:(id)a4
{
  v7 = WebKit::WebsiteDataStore::networkProcess(&self->_websiteDataStore, a2);
  atomic_fetch_add((v7 + 16), 1u);
  v8 = *&self->_websiteDataStore.m_storage.data[24];
  MEMORY[0x19EB02040](&v15, a3);
  v9 = _Block_copy(a4);
  v10 = WTF::fastMalloc(0x10);
  *v10 = &unk_1F10FA850;
  v10[1] = v9;
  v14 = v10;
  WebKit::NetworkProcessProxy::getBackgroundFetchState(v7, v8, &v15, &v14);
  v11 = v14;
  v14 = 0;
  if (v11)
  {
    (*(*v11 + 8))(v11);
  }

  _Block_release(0);
  v13 = v15;
  v15 = 0;
  if (v13 && atomic_fetch_add_explicit(v13, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v13, v12);
  }

  WTF::ThreadSafeRefCounted<WebKit::AuxiliaryProcessProxy,(WTF::DestructionThread)2>::deref((v7 + 16));
}

- (void)_abortBackgroundFetch:(id)a3 completionHandler:(id)a4
{
  v4 = a4;
  if (!a4)
  {
    v4 = v16;
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3321888768;
    v16[2] = __73__WKWebsiteDataStore_WKPrivate___abortBackgroundFetch_completionHandler___block_invoke;
    v16[3] = &__block_descriptor_33_e8_32c88_ZTSKZ73__WKWebsiteDataStore_WKPrivate___abortBackgroundFetch_completionHandler__E5__177_e5_v8__0l;
  }

  v7 = WebKit::WebsiteDataStore::networkProcess(&self->_websiteDataStore, a2);
  atomic_fetch_add((v7 + 16), 1u);
  v8 = *&self->_websiteDataStore.m_storage.data[24];
  MEMORY[0x19EB02040](&v15, a3);
  v9 = _Block_copy(v4);
  v10 = WTF::fastMalloc(0x10);
  *v10 = &unk_1F10FA878;
  v10[1] = v9;
  v14 = v10;
  v18 = v8;
  v17[0] = &v18;
  v17[1] = &v15;
  WebKit::AuxiliaryProcessProxy::sendWithAsyncReply<Messages::NetworkProcess::AbortBackgroundFetch,WTF::CompletionHandler<void ()(void)>>(v7, v17, &v14, 0, 0, 1);
  v11 = v14;
  v14 = 0;
  if (v11)
  {
    (*(*v11 + 8))(v11);
  }

  _Block_release(0);
  v13 = v15;
  v15 = 0;
  if (v13 && atomic_fetch_add_explicit(v13, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v13, v12);
  }

  WTF::ThreadSafeRefCounted<WebKit::AuxiliaryProcessProxy,(WTF::DestructionThread)2>::deref((v7 + 16));
}

- (void)_pauseBackgroundFetch:(id)a3 completionHandler:(id)a4
{
  v4 = a4;
  if (!a4)
  {
    v4 = v16;
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3321888768;
    v16[2] = __73__WKWebsiteDataStore_WKPrivate___pauseBackgroundFetch_completionHandler___block_invoke;
    v16[3] = &__block_descriptor_33_e8_32c88_ZTSKZ73__WKWebsiteDataStore_WKPrivate___pauseBackgroundFetch_completionHandler__E5__179_e5_v8__0l;
  }

  v7 = WebKit::WebsiteDataStore::networkProcess(&self->_websiteDataStore, a2);
  atomic_fetch_add((v7 + 16), 1u);
  v8 = *&self->_websiteDataStore.m_storage.data[24];
  MEMORY[0x19EB02040](&v15, a3);
  v9 = _Block_copy(v4);
  v10 = WTF::fastMalloc(0x10);
  *v10 = &unk_1F10FA8A0;
  v10[1] = v9;
  v14 = v10;
  v18 = v8;
  v17[0] = &v18;
  v17[1] = &v15;
  WebKit::AuxiliaryProcessProxy::sendWithAsyncReply<Messages::NetworkProcess::PauseBackgroundFetch,WTF::CompletionHandler<void ()(void)>>(v7, v17, &v14, 0, 0, 1);
  v11 = v14;
  v14 = 0;
  if (v11)
  {
    (*(*v11 + 8))(v11);
  }

  _Block_release(0);
  v13 = v15;
  v15 = 0;
  if (v13 && atomic_fetch_add_explicit(v13, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v13, v12);
  }

  WTF::ThreadSafeRefCounted<WebKit::AuxiliaryProcessProxy,(WTF::DestructionThread)2>::deref((v7 + 16));
}

- (void)_resumeBackgroundFetch:(id)a3 completionHandler:(id)a4
{
  v4 = a4;
  if (!a4)
  {
    v4 = v16;
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3321888768;
    v16[2] = __74__WKWebsiteDataStore_WKPrivate___resumeBackgroundFetch_completionHandler___block_invoke;
    v16[3] = &__block_descriptor_33_e8_32c89_ZTSKZ74__WKWebsiteDataStore_WKPrivate___resumeBackgroundFetch_completionHandler__E5__181_e5_v8__0l;
  }

  v7 = WebKit::WebsiteDataStore::networkProcess(&self->_websiteDataStore, a2);
  atomic_fetch_add((v7 + 16), 1u);
  v8 = *&self->_websiteDataStore.m_storage.data[24];
  MEMORY[0x19EB02040](&v15, a3);
  v9 = _Block_copy(v4);
  v10 = WTF::fastMalloc(0x10);
  *v10 = &unk_1F10FA8C8;
  v10[1] = v9;
  v14 = v10;
  v18 = v8;
  v17[0] = &v18;
  v17[1] = &v15;
  WebKit::AuxiliaryProcessProxy::sendWithAsyncReply<Messages::NetworkProcess::ResumeBackgroundFetch,WTF::CompletionHandler<void ()(void)>>(v7, v17, &v14, 0, 0, 1);
  v11 = v14;
  v14 = 0;
  if (v11)
  {
    (*(*v11 + 8))(v11);
  }

  _Block_release(0);
  v13 = v15;
  v15 = 0;
  if (v13 && atomic_fetch_add_explicit(v13, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v13, v12);
  }

  WTF::ThreadSafeRefCounted<WebKit::AuxiliaryProcessProxy,(WTF::DestructionThread)2>::deref((v7 + 16));
}

- (void)_clickBackgroundFetch:(id)a3 completionHandler:(id)a4
{
  v4 = a4;
  if (!a4)
  {
    v4 = v16;
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3321888768;
    v16[2] = __73__WKWebsiteDataStore_WKPrivate___clickBackgroundFetch_completionHandler___block_invoke;
    v16[3] = &__block_descriptor_33_e8_32c88_ZTSKZ73__WKWebsiteDataStore_WKPrivate___clickBackgroundFetch_completionHandler__E5__183_e5_v8__0l;
  }

  v7 = WebKit::WebsiteDataStore::networkProcess(&self->_websiteDataStore, a2);
  atomic_fetch_add((v7 + 16), 1u);
  v8 = *&self->_websiteDataStore.m_storage.data[24];
  MEMORY[0x19EB02040](&v15, a3);
  v9 = _Block_copy(v4);
  v10 = WTF::fastMalloc(0x10);
  *v10 = &unk_1F10FA8F0;
  v10[1] = v9;
  v14 = v10;
  v18 = v8;
  v17[0] = &v18;
  v17[1] = &v15;
  WebKit::AuxiliaryProcessProxy::sendWithAsyncReply<Messages::NetworkProcess::ClickBackgroundFetch,WTF::CompletionHandler<void ()(void)>>(v7, v17, &v14, 0, 0, 1);
  v11 = v14;
  v14 = 0;
  if (v11)
  {
    (*(*v11 + 8))(v11);
  }

  _Block_release(0);
  v13 = v15;
  v15 = 0;
  if (v13 && atomic_fetch_add_explicit(v13, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v13, v12);
  }

  WTF::ThreadSafeRefCounted<WebKit::AuxiliaryProcessProxy,(WTF::DestructionThread)2>::deref((v7 + 16));
}

- (void)_storeServiceWorkerRegistrations:(id)a3
{
  v4 = _Block_copy(a3);
  v5 = WTF::fastMalloc(0x10);
  *v5 = &unk_1F10FA918;
  v5[1] = v4;
  v7 = v5;
  WebKit::WebsiteDataStore::storeServiceWorkerRegistrations(self->_websiteDataStore.m_storage.data, &v7);
  v6 = v7;
  v7 = 0;
  if (v6)
  {
    (*(*v6 + 8))(v6);
  }

  _Block_release(0);
}

- (void)_setServiceWorkerOverridePreferences:(id)a3
{
  if (a3)
  {
    v4 = a3 + 8;
  }

  else
  {
    v4 = 0;
  }

  if (a3)
  {
    CFRetain(*(a3 + 2));
  }

  v5 = *&self->_anon_38[416];
  *&self->_anon_38[416] = v4;
  if (v5)
  {
    v6 = *(v5 + 8);

    CFRelease(v6);
  }
}

- (void)_scopeURL:(id)a3 hasPushSubscriptionForTesting:(id)a4
{
  v6 = _Block_copy(a4);
  v8 = WebKit::WebsiteDataStore::networkProcess(&self->_websiteDataStore, v7);
  atomic_fetch_add((v8 + 16), 1u);
  v9 = *&self->_websiteDataStore.m_storage.data[24];
  MEMORY[0x19EB01DE0](v16, a3);
  v10 = _Block_copy(v6);
  v11 = WTF::fastMalloc(0x10);
  *v11 = &unk_1F10FA940;
  v11[1] = v10;
  v15 = v11;
  v18 = v9;
  v17[0] = &v18;
  v17[1] = v16;
  WebKit::AuxiliaryProcessProxy::sendWithAsyncReply<Messages::NetworkProcess::HasPushSubscriptionForTesting,WTF::CompletionHandler<void ()(BOOL)>>(v8, v17, &v15, 0, 0, 1);
  v12 = v15;
  v15 = 0;
  if (v12)
  {
    (*(*v12 + 8))(v12);
  }

  _Block_release(0);
  v14 = v16[0];
  v16[0] = 0;
  if (v14 && atomic_fetch_add_explicit(v14, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v14, v13);
  }

  WTF::ThreadSafeRefCounted<WebKit::AuxiliaryProcessProxy,(WTF::DestructionThread)2>::deref((v8 + 16));
  _Block_release(v6);
}

- (void)_originDirectoryForTesting:(id)a3 topOrigin:(id)a4 type:(id)a5 completionHandler:(id)a6
{
  v25[4] = *MEMORY[0x1E69E9840];
  v10 = WebKit::toWebsiteDataType(a5, a2);
  if (HIDWORD(v10))
  {
    v12 = v10;
    v13 = _Block_copy(a6);
    MEMORY[0x19EB01DE0](v23, a4);
    WebCore::SecurityOriginData::fromURLWithoutStrictOpaqueness(v24, v23, v14);
    MEMORY[0x19EB01DE0](v22, a3);
    WebCore::SecurityOriginData::fromURLWithoutStrictOpaqueness(v25, v22, v15);
    v16 = WTF::fastMalloc(0x10);
    *v16 = &unk_1F10FA968;
    v16[1] = v13;
    v21 = v16;
    WebKit::WebsiteDataStore::originDirectoryForTesting(&self->_websiteDataStore, v24, v12, &v21);
    v17 = v21;
    v21 = 0;
    if (v17)
    {
      (*(*v17 + 8))(v17);
    }

    _Block_release(0);
    mpark::detail::move_constructor<mpark::detail::traits<WebCore::SecurityOriginData::Tuple,WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::OpaqueOriginIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,(mpark::detail::Trait)1>::~move_constructor(v25);
    mpark::detail::move_constructor<mpark::detail::traits<WebCore::SecurityOriginData::Tuple,WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::OpaqueOriginIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,(mpark::detail::Trait)1>::~move_constructor(v24);
    v19 = v22[0];
    v22[0] = 0;
    if (v19 && atomic_fetch_add_explicit(v19, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v19, v18);
    }

    v20 = v23[0];
    v23[0] = 0;
    if (v20 && atomic_fetch_add_explicit(v20, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v20, v18);
    }

    _Block_release(0);
  }

  else
  {
    v11 = *(a6 + 2);

    v11(a6, 0);
  }
}

- (void)_setBackupExclusionPeriodForTesting:(double)a3 completionHandler:(id)a4
{
  v6 = _Block_copy(a4);
  v7 = WTF::fastMalloc(0x10);
  *v7 = &unk_1F10FA990;
  v7[1] = v6;
  v9 = v7;
  WebKit::WebsiteDataStore::setBackupExclusionPeriodForTesting(&self->_websiteDataStore, &v9, a3);
  v8 = v9;
  v9 = 0;
  if (v8)
  {
    (*(*v8 + 8))(v8);
  }

  _Block_release(0);
}

- (NSString)_webPushPartition
{
  v2 = *(*&self->_anon_38[176] + 512);
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

- (void)_setCompletionHandlerForRemovalFromNetworkProcess:(id)a3
{
  v4 = _Block_copy(a3);
  v5 = WTF::fastMalloc(0x10);
  *v5 = &unk_1F10FA9B8;
  v5[1] = v4;
  v6 = v5;
  WebKit::WebsiteDataStore::setCompletionHandlerForRemovalFromNetworkProcess(&self->_websiteDataStore, &v6);
  if (v6)
  {
    (*(*v6 + 8))(v6);
  }

  _Block_release(0);
}

- (void)_setRestrictedOpenerTypeForTesting:(unsigned __int8)a3 forDomain:(id)a4
{
  MEMORY[0x19EB02040](&v10, a4);
  v6 = v10;
  if (v10 && *(v10 + 1))
  {
    v10 = 0;
  }

  else
  {
    WTF::StringImpl::createWithoutCopyingNonEmpty();
    v6 = v11[1];
  }

  v11[0] = v6;
  WebKit::WebsiteDataStore::setRestrictedOpenerTypeForDomainForTesting(&self->_websiteDataStore, v11, a3);
  v8 = v11[0];
  v11[0] = 0;
  if (v8 && atomic_fetch_add_explicit(v8, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v8, v7);
  }

  v9 = v10;
  v10 = 0;
  if (v9)
  {
    if (atomic_fetch_add_explicit(v9, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v9, v7);
    }
  }
}

- (void)_getAppBadgeForTesting:(id)a3
{
  v4 = _Block_copy(a3);
  v5 = WTF::fastMalloc(0x10);
  *v5 = &unk_1F10FA9E0;
  v5[1] = v4;
  v7 = v5;
  WebKit::WebsiteDataStore::getAppBadgeForTesting(&self->_websiteDataStore, &v7);
  v6 = v7;
  v7 = 0;
  if (v6)
  {
    (*(*v6 + 8))(v6);
  }

  _Block_release(0);
}

+ (void)_setWebPushActionHandler:(id)a3
{
  if (+[WKWebsiteDataStore(WKPrivate) _setWebPushActionHandler:]::once != -1)
  {
    dispatch_once(&+[WKWebsiteDataStore(WKPrivate) _setWebPushActionHandler:]::once, &__block_literal_global_2308);
  }

  v4 = +[_WKWebsiteDataStoreBSActionHandler shared];

  [v4 setWebPushActionHandler:a3];
}

uint64_t __58__WKWebsiteDataStore_WKPrivate___setWebPushActionHandler___block_invoke()
{
  [objc_msgSend(MEMORY[0x1E69DC668] "sharedApplication")];
  result = [objc_msgSend(MEMORY[0x1E6983308] "currentNotificationCenter")];
  if (!result)
  {
    if (byte_1EB01D2FA == 1)
    {
      v1 = qword_1EB01D328;
    }

    else
    {
      v1 = objc_alloc_init(_WKWebsiteDataStoreNotificationCenterDelegate);
      qword_1EB01D328 = v1;
      byte_1EB01D2FA = 1;
    }

    v2 = [MEMORY[0x1E6983308] currentNotificationCenter];

    return [v2 setDelegate:v1];
  }

  return result;
}

+ (BOOL)handleNotificationResponse:(id)a3
{
  v4 = +[_WKWebsiteDataStoreBSActionHandler shared];

  return [v4 handleNotificationResponse:a3];
}

- (void)_handleNextPushMessageWithCompletionHandler:(id)a3
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __77__WKWebsiteDataStore_WKPrivate___handleNextPushMessageWithCompletionHandler___block_invoke;
  v3[3] = &unk_1E7631540;
  v3[4] = self;
  v3[5] = a3;
  [(WKWebsiteDataStore *)self _getPendingPushMessage:v3];
}

uint64_t __77__WKWebsiteDataStore_WKPrivate___handleNextPushMessageWithCompletionHandler___block_invoke(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __77__WKWebsiteDataStore_WKPrivate___handleNextPushMessageWithCompletionHandler___block_invoke_2;
    v5[3] = &unk_1E7631518;
    return [*(a1 + 32) _processPushMessage:a2 completionHandler:v5];
  }

  else
  {
    v4 = *(*(a1 + 40) + 16);

    return v4();
  }
}

- (void)_handleWebPushAction:(id)a3
{
  v19 = *MEMORY[0x1E69E9840];
  v5 = [a3 beginBackgroundTaskForHandling];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v13 = __54__WKWebsiteDataStore_WKPrivate___handleWebPushAction___block_invoke;
  v14 = &__block_descriptor_40_e5_v8__0l;
  v15 = v5;
  if ([objc_msgSend(a3 "type")])
  {
    [(WKWebsiteDataStore *)self _handleNextPushMessageWithCompletionHandler:v12];
    return;
  }

  if ([objc_msgSend(a3 "type")])
  {
    if (a3 && ([a3 coreNotificationData], (v18 & 1) != 0))
    {
      WebCore::NotificationData::~NotificationData(buf, v6);
      [a3 coreNotificationData];
      if (v18)
      {
        v11[0] = MEMORY[0x1E69E9820];
        v11[1] = 3221225472;
        v11[2] = __54__WKWebsiteDataStore_WKPrivate___handleWebPushAction___block_invoke_2;
        v11[3] = &unk_1E7631568;
        v11[4] = v12;
        [(WKWebsiteDataStore *)self _processWebCorePersistentNotificationClick:buf completionHandler:v11];
        goto LABEL_13;
      }
    }

    else
    {
      __break(0xC471u);
    }

    goto LABEL_20;
  }

  if ([objc_msgSend(a3 "type")])
  {
    if (!a3)
    {
      goto LABEL_21;
    }

    [a3 coreNotificationData];
    if ((v18 & 1) == 0)
    {
      goto LABEL_21;
    }

    WebCore::NotificationData::~NotificationData(buf, v8);
    [a3 coreNotificationData];
    if (v18)
    {
      v10[0] = MEMORY[0x1E69E9820];
      v10[1] = 3221225472;
      v10[2] = __54__WKWebsiteDataStore_WKPrivate___handleWebPushAction___block_invoke_3;
      v10[3] = &unk_1E7631568;
      v10[4] = v12;
      [(WKWebsiteDataStore *)self _processWebCorePersistentNotificationClose:buf completionHandler:v10];
LABEL_13:
      if (v18 == 1)
      {
        WebCore::NotificationData::~NotificationData(buf, v7);
      }

      return;
    }

LABEL_20:
    __break(1u);
LABEL_21:
    __break(0xC471u);
    return;
  }

  v9 = qword_1ED6410A8;
  if (os_log_type_enabled(qword_1ED6410A8, OS_LOG_TYPE_ERROR))
  {
    *buf = 138412290;
    v17 = a3;
    _os_log_error_impl(&dword_19D52D000, v9, OS_LOG_TYPE_ERROR, "Unhandled webPushAction: %@", buf, 0xCu);
  }

  v13(v12);
}

uint64_t __54__WKWebsiteDataStore_WKPrivate___handleWebPushAction___block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x1E69DC668] sharedApplication];
  v3 = *(a1 + 32);

  return [v2 endBackgroundTask:v3];
}

- (void)_runningOrTerminatingServiceWorkerCountForTesting:(id)a3
{
  v4 = _Block_copy(a3);
  v5 = WTF::fastMalloc(0x10);
  *v5 = &unk_1F10FAA08;
  v5[1] = v4;
  v7 = v5;
  WebKit::WebsiteDataStore::runningOrTerminatingServiceWorkerCountForTesting(&self->_websiteDataStore, &v7);
  v6 = v7;
  v7 = 0;
  if (v6)
  {
    (*(*v6 + 8))(v6);
  }

  _Block_release(0);
  _Block_release(0);
}

- (void)_fetchDataOfTypes:(id)a3 completionHandler:(id)a4
{
  v6 = _Block_copy(a4);
  v7 = malloc_type_malloc(0x28uLL, 0x10E0040799C3B1DuLL);
  *v7 = MEMORY[0x1E69E9818];
  v7[1] = 50331650;
  v7[2] = WTF::BlockPtr<void ()(NSData *,NSError *)>::fromCallable<[WKWebsiteDataStore(WKPrivate) _fetchDataOfTypes:completionHandler:]::$_145>([WKWebsiteDataStore(WKPrivate) _fetchDataOfTypes:completionHandler:]::$_145)::{lambda(void *,NSData *,NSError *)#1}::__invoke;
  v7[3] = &WTF::BlockPtr<void ()(NSData *,NSError *)>::fromCallable<[WKWebsiteDataStore(WKPrivate) _fetchDataOfTypes:completionHandler:]::$_145>([WKWebsiteDataStore(WKPrivate) _fetchDataOfTypes:completionHandler:]::$_145)::descriptor;
  v7[4] = v6;
  _Block_release(0);
  [(WKWebsiteDataStore *)self fetchDataOfTypes:a3 completionHandler:v7];
  _Block_release(v7);

  _Block_release(0);
}

- (void)_restoreData:(id)a3 completionHandler:(id)a4
{
  v6 = _Block_copy(a4);
  v7 = malloc_type_malloc(0x28uLL, 0x10E0040799C3B1DuLL);
  *v7 = MEMORY[0x1E69E9818];
  v7[1] = 50331650;
  v7[2] = WTF::BlockPtr<void ()(NSError *)>::fromCallable<[WKWebsiteDataStore(WKPrivate) _restoreData:completionHandler:]::$_146>([WKWebsiteDataStore(WKPrivate) _restoreData:completionHandler:]::$_146)::{lambda(void *,NSError *)#1}::__invoke;
  v7[3] = &WTF::BlockPtr<void ()(NSError *)>::fromCallable<[WKWebsiteDataStore(WKPrivate) _restoreData:completionHandler:]::$_146>([WKWebsiteDataStore(WKPrivate) _restoreData:completionHandler:]::$_146)::descriptor;
  v7[4] = v6;
  _Block_release(0);
  [(WKWebsiteDataStore *)self restoreData:a3 completionHandler:v7];
  _Block_release(v7);

  _Block_release(0);
}

- (uint64_t)removeDataOfTypes:(uint64_t)a1 modifiedSince:completionHandler:
{
  *a1 = &unk_1F10FA128;
  _Block_release(*(a1 + 8));
  return a1;
}

- (uint64_t)removeDataOfTypes:(const void *)a1 modifiedSince:completionHandler:
{
  *a1 = &unk_1F10FA128;
  _Block_release(a1[1]);

  return WTF::fastFree(a1, v2);
}

- (uint64_t)removeDataOfTypes:(uint64_t)a1 forDataRecords:completionHandler:
{
  *a1 = &unk_1F10FA150;
  _Block_release(*(a1 + 8));
  return a1;
}

- (uint64_t)removeDataOfTypes:(const void *)a1 forDataRecords:completionHandler:
{
  *a1 = &unk_1F10FA150;
  _Block_release(a1[1]);

  return WTF::fastFree(a1, v2);
}

- (uint64_t)fetchDataOfTypes:(uint64_t)a1 completionHandler:(WTF::StringImpl *)a2
{
  *a1 = &unk_1F10FA178;
  v3 = *(a1 + 32);
  *(a1 + 32) = 0;
  if (v3)
  {
    WTF::ThreadSafeRefCounted<WTF::Box<WKWebViewData>::Data,(WTF::DestructionThread)0>::deref(v3, a2);
  }

  v4 = *(a1 + 16);
  if (v4)
  {
    *(a1 + 16) = 0;
    *(a1 + 24) = 0;
    WTF::fastFree(v4, a2);
  }

  _Block_release(*(a1 + 8));
  return a1;
}

{
  *a1 = &unk_1F10FA178;
  v3 = *(a1 + 32);
  *(a1 + 32) = 0;
  if (v3)
  {
    WTF::ThreadSafeRefCounted<WTF::Box<WKWebViewData>::Data,(WTF::DestructionThread)0>::deref(v3, a2);
  }

  v4 = *(a1 + 16);
  if (v4)
  {
    *(a1 + 16) = 0;
    *(a1 + 24) = 0;
    WTF::fastFree(v4, a2);
  }

  _Block_release(*(a1 + 8));

  return WTF::fastFree(a1, v5);
}

- (void)fetchDataOfTypes:(uint64_t)a1 completionHandler:
{
  v1 = MEMORY[0x1EEE9AC00](a1);
  v12[1] = *MEMORY[0x1E69E9840];
  WTF::Persistence::Encoder::Encoder(&v9);
  WTF::Persistence::Encoder::operator<<();
  WTF::Persistence::Encoder::operator<<();
  if (!*(v1 + 28))
  {
    goto LABEL_10;
  }

  v2 = 0;
  do
  {
    WTF::Persistence::Encoder::operator<<();
    ++v2;
    v3 = *(v1 + 28);
  }

  while (v2 < v3);
  if (!v3)
  {
LABEL_10:
    v7 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBytes:v9 length:v10];
    (*(*(v1 + 8) + 16))();
    goto LABEL_11;
  }

  v4 = *(v1 + 16);
  v5 = 4 * v3;
  while (*v4 != 32)
  {
LABEL_9:
    ++v4;
    v5 -= 4;
    if (!v5)
    {
      goto LABEL_10;
    }
  }

  v6 = *(v1 + 32);
  if (*(v6 + 16))
  {
    WTF::Persistence::Coder<WTF::HashMap<WebCore::ClientOrigin,WTF::HashMap<WTF::String,WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>,WTF::DefaultHash<WebCore::ClientOrigin>,WTF::HashTraits<WebCore::ClientOrigin>,WTF::HashTraits<WTF::HashMap<WTF::String,WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>>::encodeForPersistence<WTF::Persistence::Encoder>(&v9, (v6 + 8));
    goto LABEL_9;
  }

  v11 = *MEMORY[0x1E696A578];
  v12[0] = @"Unknown error occurred while fetching data.";
  v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v12 forKeys:&v11 count:1];
  v7 = [objc_alloc(MEMORY[0x1E696ABC0]) initWithDomain:@"WKErrorDomain" code:1 userInfo:v8];
  (*(*(v1 + 8) + 16))();
LABEL_11:
  if (v7)
  {
  }

  WTF::Persistence::Encoder::~Encoder(&v9);
}

- (void)fetchDataOfTypes:()WTF::ShouldValidateKey completionHandler:
{
  *a1 = &unk_1F10FA1A0;
  v3 = a1[2];
  a1[2] = 0;
  if (v3)
  {
    WTF::ThreadSafeRefCounted<WTF::Box<WKWebViewData>::Data,(WTF::DestructionThread)0>::deref(v3, a2);
  }

  v4 = a1[1];
  a1[1] = 0;
  if (v4)
  {
    WTF::ThreadSafeRefCounted<WTF::CallbackAggregatorOnThread<(WTF::DestructionThread)0>,(WTF::DestructionThread)0>::deref(v4);
  }

  return a1;
}

- (uint64_t)fetchDataOfTypes:()WTF::ShouldValidateKey completionHandler:
{
  *this = &unk_1F10FA1A0;
  v3 = *(this + 2);
  *(this + 2) = 0;
  if (v3)
  {
    WTF::ThreadSafeRefCounted<WTF::Box<WKWebViewData>::Data,(WTF::DestructionThread)0>::deref(v3, a2);
  }

  v4 = *(this + 1);
  *(this + 1) = 0;
  if (v4)
  {
    WTF::ThreadSafeRefCounted<WTF::CallbackAggregatorOnThread<(WTF::DestructionThread)0>,(WTF::DestructionThread)0>::deref(v4);
  }

  return WTF::fastFree(this, a2);
}

- (uint64_t)restoreData:(uint64_t)a1 completionHandler:(void *)a2
{
  *a1 = &unk_1F10FA1C8;
  v3 = *(a1 + 16);
  *(a1 + 16) = 0;
  if (v3)
  {
    WTF::ThreadSafeRefCounted<WTF::Box<WTF::RetainPtr<NSError>>::Data,(WTF::DestructionThread)0>::deref(v3, a2);
  }

  _Block_release(*(a1 + 8));
  return a1;
}

{
  *a1 = &unk_1F10FA1C8;
  v3 = *(a1 + 16);
  *(a1 + 16) = 0;
  if (v3)
  {
    WTF::ThreadSafeRefCounted<WTF::Box<WTF::RetainPtr<NSError>>::Data,(WTF::DestructionThread)0>::deref(v3, a2);
  }

  _Block_release(*(a1 + 8));

  return WTF::fastFree(a1, v4);
}

- (void)restoreData:(void *)a1 completionHandler:(void *)a2
{
  *a1 = &unk_1F10FA1F0;
  v3 = a1[2];
  a1[2] = 0;
  if (v3)
  {
    WTF::ThreadSafeRefCounted<WTF::Box<WTF::RetainPtr<NSError>>::Data,(WTF::DestructionThread)0>::deref(v3, a2);
  }

  v4 = a1[1];
  a1[1] = 0;
  if (v4)
  {
    WTF::ThreadSafeRefCounted<WTF::CallbackAggregatorOnThread<(WTF::DestructionThread)0>,(WTF::DestructionThread)0>::deref(v4);
  }

  return a1;
}

- (uint64_t)restoreData:(WTF *)this completionHandler:(void *)a2
{
  *this = &unk_1F10FA1F0;
  v3 = *(this + 2);
  *(this + 2) = 0;
  if (v3)
  {
    WTF::ThreadSafeRefCounted<WTF::Box<WTF::RetainPtr<NSError>>::Data,(WTF::DestructionThread)0>::deref(v3, a2);
  }

  v4 = *(this + 1);
  *(this + 1) = 0;
  if (v4)
  {
    WTF::ThreadSafeRefCounted<WTF::CallbackAggregatorOnThread<(WTF::DestructionThread)0>,(WTF::DestructionThread)0>::deref(v4);
  }

  return WTF::fastFree(this, a2);
}

- (void)restoreData:(uint64_t)a1 completionHandler:(char)a2
{
  v6[1] = *MEMORY[0x1E69E9840];
  if ((a2 & 1) == 0)
  {
    v5 = *MEMORY[0x1E696A578];
    v6[0] = @"Unknown error occurred while restoring data.";
    v3 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v6 forKeys:&v5 count:1];
    v4 = [objc_alloc(MEMORY[0x1E696ABC0]) initWithDomain:@"WKErrorDomain" code:1 userInfo:v3];
    WTF::RetainPtr<NSError>::operator=((*(a1 + 16) + 8), v4);
    if (v4)
    {
    }
  }
}

@end