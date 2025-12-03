@interface WKWebsiteDataStore(WKPrivate)
+ (uint64_t)_fetchAllIdentifiers:()WKPrivate;
+ (uint64_t)_removeDataStoreWithIdentifier:()WKPrivate completionHandler:;
+ (void)_removeDataStoreWithIdentifier:()WKPrivate completionHandler:;
- (uint64_t)_abortBackgroundFetch:()WKPrivate completionHandler:;
- (uint64_t)_appBoundDomains:()WKPrivate;
- (uint64_t)_appBoundSchemes:()WKPrivate;
- (uint64_t)_clearPrevalentDomain:()WKPrivate completionHandler:;
- (uint64_t)_clearResourceLoadStatistics:()WKPrivate;
- (uint64_t)_clickBackgroundFetch:()WKPrivate completionHandler:;
- (uint64_t)_closeDatabases:()WKPrivate;
- (uint64_t)_countNonDefaultSessionSets:()WKPrivate;
- (uint64_t)_fetchDataRecordsOfTypes:()WKPrivate withOptions:completionHandler:;
- (uint64_t)_getAllBackgroundFetchIdentifiers:()WKPrivate;
- (uint64_t)_getAppBadgeForTesting:()WKPrivate;
- (uint64_t)_getBackgroundFetchState:()WKPrivate completionHandler:;
- (uint64_t)_getIsPrevalentDomain:()WKPrivate completionHandler:;
- (uint64_t)_getPendingPushMessage:()WKPrivate;
- (uint64_t)_getPendingPushMessages:()WKPrivate;
- (uint64_t)_getResourceLoadStatisticsDataSummary:()WKPrivate;
- (uint64_t)_isRegisteredAsSubresourceUnderFirstParty:()WKPrivate thirdParty:completionHandler:;
- (uint64_t)_isRelationshipOnlyInDatabaseOnce:()WKPrivate thirdParty:completionHandler:;
- (uint64_t)_loadedSubresourceDomainsFor:()WKPrivate completionHandler:;
- (uint64_t)_logUserInteraction:()WKPrivate completionHandler:;
- (uint64_t)_originDirectoryForTesting:()WKPrivate topOrigin:type:completionHandler:;
- (uint64_t)_pauseBackgroundFetch:()WKPrivate completionHandler:;
- (uint64_t)_processPushMessage:()WKPrivate completionHandler:;
- (uint64_t)_processStatisticsAndDataRecords:()WKPrivate;
- (uint64_t)_processWebCorePersistentNotificationClick:()WKPrivate completionHandler:;
- (uint64_t)_processWebCorePersistentNotificationClose:()WKPrivate completionHandler:;
- (uint64_t)_renameOrigin:()WKPrivate to:forDataOfTypes:completionHandler:;
- (uint64_t)_resumeBackgroundFetch:()WKPrivate completionHandler:;
- (uint64_t)_runningOrTerminatingServiceWorkerCountForTesting:()WKPrivate;
- (uint64_t)_scheduleCookieBlockingUpdate:()WKPrivate;
- (uint64_t)_scopeURL:()WKPrivate hasPushSubscriptionForTesting:;
- (uint64_t)_sendNetworkProcessPrepareToSuspend:()WKPrivate;
- (uint64_t)_setBackupExclusionPeriodForTesting:()WKPrivate completionHandler:;
- (uint64_t)_setCompletionHandlerForRemovalFromNetworkProcess:()WKPrivate;
- (uint64_t)_setPrevalentDomain:()WKPrivate completionHandler:;
- (uint64_t)_setResourceLoadStatisticsTestingCallback:()WKPrivate;
- (uint64_t)_setThirdPartyCookieBlockingMode:()WKPrivate onlyOnSitesWithoutUserInteraction:completionHandler:;
- (uint64_t)_setUserAgentStringQuirkForTesting:()WKPrivate withUserAgent:completionHandler:;
- (uint64_t)_statisticsDatabaseHasAllTables:()WKPrivate;
- (uint64_t)_storeServiceWorkerRegistrations:()WKPrivate;
- (void)_getPendingPushMessage:()WKPrivate;
- (void)_getPendingPushMessages:()WKPrivate;
- (void)_getResourceLoadStatisticsDataSummary:()WKPrivate;
- (void)_originDirectoryForTesting:()WKPrivate topOrigin:type:completionHandler:;
- (void)_setCompletionHandlerForRemovalFromNetworkProcess:()WKPrivate;
- (void)_setResourceLoadStatisticsTestingCallback:()WKPrivate;
@end

@implementation WKWebsiteDataStore(WKPrivate)

+ (uint64_t)_fetchAllIdentifiers:()WKPrivate
{
  v4 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:*(a2 + 12)];
  v5 = *(a2 + 12);
  if (v5)
  {
    v6 = *a2;
    v7 = 16 * v5;
    do
    {
      v12 = *v6;
      WTF::UUID::createNSUUID(&v11, &v12);
      [v4 addObject:v11];
      v8 = v11;
      v11 = 0;
      if (v8)
      {
      }

      ++v6;
      v7 -= 16;
    }

    while (v7);
  }

  if (v4)
  {
    v9 = v4;
  }

  return (*(*(self + 8) + 16))();
}

+ (uint64_t)_removeDataStoreWithIdentifier:()WKPrivate completionHandler:
{
  *self = &unk_1F10FA240;
  _Block_release(self[1]);

  return WTF::fastFree(self, v2);
}

+ (void)_removeDataStoreWithIdentifier:()WKPrivate completionHandler:
{
  v13[1] = *MEMORY[0x1E69E9840];
  if (*a2 && (*a2)[1])
  {
    v4 = objc_alloc(MEMORY[0x1E696ABC0]);
    v12 = *MEMORY[0x1E696A578];
    v5 = *a2;
    if (v5)
    {
      atomic_fetch_add_explicit(v5, 2u, memory_order_relaxed);
      MEMORY[0x19EB00B70](&v11, v5);
      if (atomic_fetch_add_explicit(v5, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v5, v6);
      }
    }

    else
    {
      v11 = &stru_1F1147748;
      v8 = &stru_1F1147748;
    }

    v13[0] = v11;
    v9 = [v4 initWithDomain:@"WKWebSiteDataStore" code:1 userInfo:{objc_msgSend(MEMORY[0x1E695DF20], "dictionaryWithObjects:forKeys:count:", v13, &v12, 1, v11)}];
    (*(*(self + 8) + 16))();
    if (v9)
    {
    }

    v10 = v11;
    v11 = 0;
    if (v10)
    {
    }
  }

  else
  {
    v7 = *(*(self + 8) + 16);

    v7();
  }
}

- (uint64_t)_fetchDataRecordsOfTypes:()WKPrivate withOptions:completionHandler:
{
  v16 = *a2;
  v3 = *(a2 + 8);
  v4 = *(a2 + 12);
  *a2 = 0;
  *(a2 + 8) = 0;
  v17 = v3;
  v18 = v4;
  v20 = 0;
  v21 = 0;
  if (v4)
  {
    if (v4 >> 29)
    {
      __break(0xC471u);
LABEL_15:
      JUMPOUT(0x19DB39704);
    }

    v5 = WTF::fastMalloc((8 * v4));
    LODWORD(v21) = v4;
    v20 = v5;
    v6 = v18;
    if (v18)
    {
      v7 = v16;
      v8 = 80 * v18;
      do
      {
        v9 = API::Object::newObject(0x60uLL, 123);
        *v5++ = API::WebsiteDataRecord::WebsiteDataRecord(v9, v7);
        v7 += 10;
        v8 -= 80;
      }

      while (v8);
      HIDWORD(v21) = v6;
    }
  }

  API::Array::create(&v20, &v19);
  v10 = v19;
  v11 = *(v19 + 1);
  if (!v11)
  {
    goto LABEL_10;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    __break(0xC471u);
    goto LABEL_15;
  }

  v12 = v11;
LABEL_10:
  (*(*(self + 8) + 16))();
  if (v11)
  {
  }

  CFRelease(*(v10 + 1));
  WTF::Vector<WTF::RefPtr<API::Object,WTF::RawPtrTraits<API::Object>,WTF::DefaultRefDerefTraits<API::Object>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v20, v13);
  return WTF::Vector<WebKit::WebsiteDataRecord,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v16, v14);
}

- (uint64_t)_setResourceLoadStatisticsTestingCallback:()WKPrivate
{
  *self = &unk_1F10FA290;
  v2 = *(self + 16);
  *(self + 16) = 0;
  if (v2)
  {
  }

  _Block_release(*(self + 8));
  return self;
}

- (void)_setResourceLoadStatisticsTestingCallback:()WKPrivate
{
  v3 = *a2;
  if (*a2)
  {
    atomic_fetch_add_explicit(v3, 2u, memory_order_relaxed);
    MEMORY[0x19EB00B70](&v7, v3);
    if (atomic_fetch_add_explicit(v3, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v3, v4);
    }
  }

  else
  {
    v7 = &stru_1F1147748;
    v5 = &stru_1F1147748;
  }

  (*(*(self + 8) + 16))();
  v6 = v7;
  v7 = 0;
  if (v6)
  {
  }
}

- (uint64_t)_loadedSubresourceDomainsFor:()WKPrivate completionHandler:
{
  v20 = 0;
  v21 = 0;
  v3 = *(a2 + 3);
  if (v3)
  {
    if (v3 >> 29)
    {
      __break(0xC471u);
LABEL_20:
      JUMPOUT(0x19DB39AE8);
    }

    v5 = WTF::fastMalloc((8 * v3));
    LODWORD(v21) = v3;
    v20 = v5;
    v6 = *(a2 + 3);
    if (v6)
    {
      v7 = 0;
      v8 = *a2;
      v9 = 8 * v6;
      do
      {
        v10 = *(v8 + 8 * v7);
        if (v10)
        {
          atomic_fetch_add_explicit(v10, 2u, memory_order_relaxed);
        }

        v22 = v10;
        API::String::create(&v22, &v23);
        v12 = v22;
        v13 = v23;
        v22 = 0;
        v23 = 0;
        if (v12 && atomic_fetch_add_explicit(v12, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v12, v11);
        }

        *(v5 + 8 * v7++) = v13;
        v9 -= 8;
      }

      while (v9);
      HIDWORD(v21) = v6;
    }
  }

  API::Array::create(&v20, &v23);
  v15 = v23;
  v16 = *(v23 + 1);
  if (!v16)
  {
    goto LABEL_15;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    __break(0xC471u);
    goto LABEL_20;
  }

  v17 = v16;
LABEL_15:
  (*(*(self + 8) + 16))(*(self + 8), v16, v14);
  if (v16)
  {
  }

  CFRelease(*(v15 + 1));
  return WTF::Vector<WTF::RefPtr<API::Object,WTF::RawPtrTraits<API::Object>,WTF::DefaultRefDerefTraits<API::Object>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v20, v18);
}

- (uint64_t)_scheduleCookieBlockingUpdate:()WKPrivate
{
  *self = &unk_1F10FA2E0;
  _Block_release(self[1]);

  return WTF::fastFree(self, v2);
}

- (uint64_t)_logUserInteraction:()WKPrivate completionHandler:
{
  *self = &unk_1F10FA308;
  _Block_release(self[1]);

  return WTF::fastFree(self, v2);
}

- (uint64_t)_setPrevalentDomain:()WKPrivate completionHandler:
{
  *self = &unk_1F10FA330;
  _Block_release(self[1]);

  return WTF::fastFree(self, v2);
}

- (uint64_t)_getIsPrevalentDomain:()WKPrivate completionHandler:
{
  *self = &unk_1F10FA358;
  _Block_release(self[1]);

  return WTF::fastFree(self, v2);
}

- (uint64_t)_clearPrevalentDomain:()WKPrivate completionHandler:
{
  *self = &unk_1F10FA380;
  _Block_release(self[1]);

  return WTF::fastFree(self, v2);
}

- (uint64_t)_clearResourceLoadStatistics:()WKPrivate
{
  *self = &unk_1F10FA3A8;
  _Block_release(self[1]);

  return WTF::fastFree(self, v2);
}

- (uint64_t)_closeDatabases:()WKPrivate
{
  *self = &unk_1F10FA3D0;
  _Block_release(self[1]);

  return WTF::fastFree(self, v2);
}

- (uint64_t)_getResourceLoadStatisticsDataSummary:()WKPrivate
{
  *self = &unk_1F10FA3F8;
  _Block_release(self[1]);

  return WTF::fastFree(self, v2);
}

- (void)_getResourceLoadStatisticsDataSummary:()WKPrivate
{
  v4 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:*(a2 + 12)];
  v15 = v4;
  v5 = *(a2 + 12);
  if (v5)
  {
    v6 = *a2;
    v7 = &v6[3 * v5];
    do
    {
      v8 = WTF::RunLoop::mainSingleton(v4);
      if ((WTF::RunLoop::isCurrent(v8) & 1) == 0)
      {
LABEL_14:
        __break(0xC471u);
        JUMPOUT(0x19DB3A23CLL);
      }

      v9 = API::Object::newObject(0x28uLL, 95);
      v10 = API::Object::Object(v9);
      v11 = *v6;
      *v6 = 0;
      v12 = v6 + 1;
      *v10 = &unk_1F10FA420;
      *(v10 + 2) = v11;
      *(v10 + 4) = 0;
      *(v10 + 3) = 0;
      WTF::VectorBuffer<WebCore::HTTPHeaderField,0ul,WTF::FastMalloc>::adopt(v10 + 24, v12);
      v13 = v9[1];
      if (v13)
      {
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          goto LABEL_14;
        }

        v14 = v13;
        CFRelease(v9[1]);
        [(WTF::RunLoop *)v15 addObject:v13];
      }

      else
      {
        CFRelease(0);
      }

      v6 = v12 + 4;
    }

    while (v6 != v7);
  }

  (*(*(self + 8) + 16))();
  if (v15)
  {
  }
}

- (uint64_t)_isRelationshipOnlyInDatabaseOnce:()WKPrivate thirdParty:completionHandler:
{
  *self = &unk_1F10FA448;
  _Block_release(self[1]);

  return WTF::fastFree(self, v2);
}

- (uint64_t)_isRegisteredAsSubresourceUnderFirstParty:()WKPrivate thirdParty:completionHandler:
{
  *self = &unk_1F10FA470;
  _Block_release(self[1]);

  return WTF::fastFree(self, v2);
}

- (uint64_t)_statisticsDatabaseHasAllTables:()WKPrivate
{
  *self = &unk_1F10FA498;
  _Block_release(self[1]);

  return WTF::fastFree(self, v2);
}

- (uint64_t)_processStatisticsAndDataRecords:()WKPrivate
{
  *self = &unk_1F10FA4C0;
  _Block_release(self[1]);

  return WTF::fastFree(self, v2);
}

- (uint64_t)_setThirdPartyCookieBlockingMode:()WKPrivate onlyOnSitesWithoutUserInteraction:completionHandler:
{
  *self = &unk_1F10FA4E8;
  _Block_release(self[1]);

  return WTF::fastFree(self, v2);
}

- (uint64_t)_renameOrigin:()WKPrivate to:forDataOfTypes:completionHandler:
{
  *self = &unk_1F10FA510;
  _Block_release(self[1]);

  return WTF::fastFree(self, v2);
}

- (uint64_t)_setUserAgentStringQuirkForTesting:()WKPrivate withUserAgent:completionHandler:
{
  *self = &unk_1F10FA538;
  _Block_release(self[1]);

  return WTF::fastFree(self, v2);
}

- (uint64_t)_appBoundDomains:()WKPrivate
{
  v18 = 0;
  v19 = 0;
  if (*a2 && (v5 = *(*a2 - 12), v5))
  {
    if (v5 >> 29)
    {
      __break(0xC471u);
      goto LABEL_21;
    }

    v6 = WTF::fastMalloc((8 * v5));
    LODWORD(v19) = v5;
    v18 = v6;
  }

  else
  {
    v6 = 0;
  }

  v7 = WTF::HashTable<WebCore::RegistrableDomain,WebCore::RegistrableDomain,WTF::IdentityExtractor,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::FastMalloc>::begin(a2, a2, a3);
  v20[0] = v7;
  v20[1] = v8;
  if (*a2)
  {
    v9 = (*a2 + 8 * *(*a2 - 4));
  }

  else
  {
    v9 = 0;
  }

  if (v9 != v7)
  {
    v10 = 0;
    do
    {
      API::String::create(&v21);
      *(v6 + 8 * v10) = v21;
      v20[0] = (v20[0] + 8);
      WTF::HashTableConstIterator<WTF::HashTable<WebCore::RegistrableDomain,WebCore::RegistrableDomain,WTF::IdentityExtractor,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::FastMalloc>,WebCore::RegistrableDomain,WebCore::RegistrableDomain,WTF::IdentityExtractor,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>>::skipEmptyBuckets(v20, v11, v12);
      ++v10;
    }

    while (v20[0] != v9);
    HIDWORD(v19) = v10;
  }

  API::Array::create(&v18, v20);
  v13 = v20[0];
  v14 = *(v20[0] + 1);
  if (v14)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v15 = v14;
      goto LABEL_16;
    }

    __break(0xC471u);
LABEL_21:
    JUMPOUT(0x19DB3D338);
  }

LABEL_16:
  (*(*(self + 8) + 16))();
  if (v14)
  {
  }

  CFRelease(*(v13 + 1));
  return WTF::Vector<WTF::RefPtr<API::Object,WTF::RawPtrTraits<API::Object>,WTF::DefaultRefDerefTraits<API::Object>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v18, v16);
}

- (uint64_t)_appBoundSchemes:()WKPrivate
{
  v17 = 0;
  v18 = 0;
  if (*a2)
  {
    v4 = *(*a2 - 3);
    if (v4)
    {
      if (v4 >> 29)
      {
        __break(0xC471u);
        goto LABEL_23;
      }

      LODWORD(v18) = *(*a2 - 3);
      v17 = WTF::fastMalloc((8 * v4));
    }
  }

  v5 = WTF::HashTable<WTF::String,WTF::String,WTF::IdentityExtractor,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::begin(a2);
  v6 = v5;
  v8 = v7;
  if (*a2)
  {
    v9 = &(*a2)[*(*a2 - 1)];
  }

  else
  {
    v9 = 0;
  }

  if (v9 != v5)
  {
    v10 = 0;
    v11 = v17;
    do
    {
      API::String::create(&v19);
      *(v11 + 8 * v10) = v19;
      do
      {
        ++v6;
      }

      while (v6 != v8 && (*v6 + 1) <= 1);
      ++v10;
    }

    while (v6 != v9);
    HIDWORD(v18) = v10;
  }

  API::Array::create(&v17, &v19);
  v12 = v19;
  v13 = *(v19 + 1);
  if (v13)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v14 = v13;
      goto LABEL_17;
    }

    __break(0xC471u);
LABEL_23:
    JUMPOUT(0x19DB3D590);
  }

LABEL_17:
  (*(*(self + 8) + 16))();
  if (v13)
  {
  }

  CFRelease(*(v12 + 1));
  return WTF::Vector<WTF::RefPtr<API::Object,WTF::RawPtrTraits<API::Object>,WTF::DefaultRefDerefTraits<API::Object>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v17, v15);
}

- (uint64_t)_sendNetworkProcessPrepareToSuspend:()WKPrivate
{
  *self = &unk_1F10FA710;
  _Block_release(self[1]);

  return WTF::fastFree(self, v2);
}

- (uint64_t)_countNonDefaultSessionSets:()WKPrivate
{
  *self = &unk_1F10FA738;
  _Block_release(self[1]);

  return WTF::fastFree(self, v2);
}

- (uint64_t)_getPendingPushMessage:()WKPrivate
{
  *self = &unk_1F10FA760;
  _Block_release(self[1]);

  return WTF::fastFree(self, v2);
}

- (void)_getPendingPushMessage:()WKPrivate
{
  v8 = *MEMORY[0x1E69E9840];
  if (*(this + 216) == 1)
  {
    v3 = WebKit::WebPushMessage::toDictionary(this);
    v4 = v3;
    if (v3)
    {
      v5 = v3;
    }
  }

  else
  {
    v4 = 0;
  }

  v6 = qword_1ED6410A8;
  if (os_log_type_enabled(qword_1ED6410A8, OS_LOG_TYPE_DEFAULT))
  {
    v7[0] = 67109120;
    v7[1] = v4 != 0;
    _os_log_impl(&dword_19D52D000, v6, OS_LOG_TYPE_DEFAULT, "Giving application %d pending push messages", v7, 8u);
  }

  (*(*(self + 8) + 16))();
  if (v4)
  {
  }
}

- (uint64_t)_getPendingPushMessages:()WKPrivate
{
  *self = &unk_1F10FA788;
  _Block_release(self[1]);

  return WTF::fastFree(self, v2);
}

- (void)_getPendingPushMessages:()WKPrivate
{
  v12 = *MEMORY[0x1E69E9840];
  v4 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:*(a2 + 12)];
  v5 = *(a2 + 12);
  if (v5)
  {
    v6 = *a2;
    v7 = 216 * v5;
    do
    {
      [v4 addObject:WebKit::WebPushMessage::toDictionary(v6)];
      v6 = (v6 + 216);
      v7 -= 216;
    }

    while (v7);
  }

  v8 = qword_1ED6410A8;
  if (os_log_type_enabled(qword_1ED6410A8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = *(a2 + 12);
    v10 = 134217984;
    v11 = v9;
    _os_log_impl(&dword_19D52D000, v8, OS_LOG_TYPE_DEFAULT, "Giving application %zu pending push messages", &v10, 0xCu);
  }

  (*(*(self + 8) + 16))();
  if (v4)
  {
  }
}

- (uint64_t)_processPushMessage:()WKPrivate completionHandler:
{
  v7 = *MEMORY[0x1E69E9840];
  v4 = qword_1ED6410A8;
  if (os_log_type_enabled(qword_1ED6410A8, OS_LOG_TYPE_DEFAULT))
  {
    v6[0] = 67109120;
    v6[1] = a2;
    _os_log_impl(&dword_19D52D000, v4, OS_LOG_TYPE_DEFAULT, "Push message processing complete. Callback result: %d", v6, 8u);
  }

  return (*(*(self + 8) + 16))();
}

- (uint64_t)_processWebCorePersistentNotificationClick:()WKPrivate completionHandler:
{
  v7 = *MEMORY[0x1E69E9840];
  v4 = qword_1ED6410A8;
  if (os_log_type_enabled(qword_1ED6410A8, OS_LOG_TYPE_DEFAULT))
  {
    v6[0] = 67109120;
    v6[1] = a2;
    _os_log_impl(&dword_19D52D000, v4, OS_LOG_TYPE_DEFAULT, "Notification click event processing complete. Callback result: %d", v6, 8u);
  }

  return (*(*(self + 8) + 16))();
}

- (uint64_t)_processWebCorePersistentNotificationClose:()WKPrivate completionHandler:
{
  v7 = *MEMORY[0x1E69E9840];
  v4 = qword_1ED6410A8;
  if (os_log_type_enabled(qword_1ED6410A8, OS_LOG_TYPE_DEFAULT))
  {
    v6[0] = 67109120;
    v6[1] = a2;
    _os_log_impl(&dword_19D52D000, v4, OS_LOG_TYPE_DEFAULT, "Notification close event processing complete. Callback result: %d", v6, 8u);
  }

  return (*(*(self + 8) + 16))();
}

- (uint64_t)_getAllBackgroundFetchIdentifiers:()WKPrivate
{
  v15 = *a2;
  v3 = a2[1];
  *a2 = 0;
  a2[1] = 0;
  v16 = v3;
  v4 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:HIDWORD(v3)];
  if (HIDWORD(v16))
  {
    v5 = v15;
    v6 = 8 * HIDWORD(v16);
    do
    {
      v7 = *v5;
      if (*v5)
      {
        atomic_fetch_add_explicit(v7, 2u, memory_order_relaxed);
        atomic_fetch_add_explicit(v7, 2u, memory_order_relaxed);
        MEMORY[0x19EB00B70](&v17, v7);
        if (atomic_fetch_add_explicit(v7, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v7, v8);
        }
      }

      else
      {
        v17 = &stru_1F1147748;
        v9 = &stru_1F1147748;
      }

      [v4 addObject:v17];
      v11 = v17;
      v17 = 0;
      if (v11)
      {
      }

      if (v7 && atomic_fetch_add_explicit(v7, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v7, v10);
      }

      ++v5;
      v6 -= 8;
    }

    while (v6);
  }

  if (v4)
  {
    v12 = v4;
  }

  (*(*(self + 8) + 16))();
  return WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v15, v13);
}

- (uint64_t)_getBackgroundFetchState:()WKPrivate completionHandler:
{
  v15 = *MEMORY[0x1E69E9840];
  LOBYTE(v9[0]) = 0;
  v14 = 0;
  if (*(a2 + 152) == 1)
  {
    WebKit::BackgroundFetchState::BackgroundFetchState(v9, a2);
    v14 = 1;
    WebKit::BackgroundFetchState::toDictionary(v9);
  }

  result = (*(*(self + 8) + 16))();
  if (v14 == 1)
  {
    v5 = v13;
    v13 = 0;
    if (v5 && atomic_fetch_add_explicit(v5, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v5, v4);
    }

    WTF::Vector<WebCore::ImageResource,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v12, v4);
    v7 = v11;
    v11 = 0;
    if (v7 && atomic_fetch_add_explicit(v7, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v7, v6);
    }

    v8 = v10;
    v10 = 0;
    if (v8)
    {
      if (atomic_fetch_add_explicit(v8, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v8, v6);
      }
    }

    return mpark::detail::move_constructor<mpark::detail::traits<WebCore::SecurityOriginData::Tuple,WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::OpaqueOriginIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,(mpark::detail::Trait)1>::~move_constructor(v9);
  }

  return result;
}

- (uint64_t)_abortBackgroundFetch:()WKPrivate completionHandler:
{
  *self = &unk_1F10FA878;
  _Block_release(self[1]);

  return WTF::fastFree(self, v2);
}

- (uint64_t)_pauseBackgroundFetch:()WKPrivate completionHandler:
{
  *self = &unk_1F10FA8A0;
  _Block_release(self[1]);

  return WTF::fastFree(self, v2);
}

- (uint64_t)_resumeBackgroundFetch:()WKPrivate completionHandler:
{
  *self = &unk_1F10FA8C8;
  _Block_release(self[1]);

  return WTF::fastFree(self, v2);
}

- (uint64_t)_clickBackgroundFetch:()WKPrivate completionHandler:
{
  *self = &unk_1F10FA8F0;
  _Block_release(self[1]);

  return WTF::fastFree(self, v2);
}

- (uint64_t)_storeServiceWorkerRegistrations:()WKPrivate
{
  *self = &unk_1F10FA918;
  _Block_release(self[1]);

  return WTF::fastFree(self, v2);
}

- (uint64_t)_scopeURL:()WKPrivate hasPushSubscriptionForTesting:
{
  *self = &unk_1F10FA940;
  _Block_release(self[1]);

  return WTF::fastFree(self, v2);
}

- (uint64_t)_originDirectoryForTesting:()WKPrivate topOrigin:type:completionHandler:
{
  *self = &unk_1F10FA968;
  _Block_release(self[1]);

  return WTF::fastFree(self, v2);
}

- (void)_originDirectoryForTesting:()WKPrivate topOrigin:type:completionHandler:
{
  v3 = *a2;
  if (*a2)
  {
    atomic_fetch_add_explicit(v3, 2u, memory_order_relaxed);
    atomic_fetch_add_explicit(v3, 2u, memory_order_relaxed);
    MEMORY[0x19EB00B70](&v8, v3);
    if (atomic_fetch_add_explicit(v3, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v3, v4);
    }
  }

  else
  {
    v8 = &stru_1F1147748;
    v5 = &stru_1F1147748;
  }

  (*(*(self + 8) + 16))();
  v7 = v8;
  v8 = 0;
  if (v7)
  {
  }

  if (v3)
  {
    if (atomic_fetch_add_explicit(v3, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v3, v6);
    }
  }
}

- (uint64_t)_setBackupExclusionPeriodForTesting:()WKPrivate completionHandler:
{
  *self = &unk_1F10FA990;
  _Block_release(self[1]);

  return WTF::fastFree(self, v2);
}

- (uint64_t)_setCompletionHandlerForRemovalFromNetworkProcess:()WKPrivate
{
  *self = &unk_1F10FA9B8;
  _Block_release(self[1]);

  return WTF::fastFree(self, v2);
}

- (void)_setCompletionHandlerForRemovalFromNetworkProcess:()WKPrivate
{
  v11[1] = *MEMORY[0x1E69E9840];
  v3 = *a2;
  *a2 = 0;
  if (v3 && v3[1])
  {
    v4 = objc_alloc(MEMORY[0x1E696ABC0]);
    v10 = *MEMORY[0x1E696A578];
    atomic_fetch_add_explicit(v3, 2u, memory_order_relaxed);
    MEMORY[0x19EB00B70](&v9, v3);
    if (atomic_fetch_add_explicit(v3, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v3, v5);
    }

    v11[0] = v9;
    v6 = [v4 initWithDomain:@"WKWebSiteDataStore" code:1 userInfo:{objc_msgSend(MEMORY[0x1E695DF20], "dictionaryWithObjects:forKeys:count:", v11, &v10, 1)}];
    (*(*(self + 8) + 16))();
    if (v6)
    {
    }

    v8 = v9;
    v9 = 0;
    if (v8)
    {
    }
  }

  else
  {
    (*(*(self + 8) + 16))();
    if (!v3)
    {
      return;
    }
  }

  if (atomic_fetch_add_explicit(v3, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v3, v7);
  }
}

- (uint64_t)_getAppBadgeForTesting:()WKPrivate
{
  if (a3)
  {
    [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:a2];
  }

  v4 = *(*(self + 8) + 16);

  return v4();
}

- (uint64_t)_runningOrTerminatingServiceWorkerCountForTesting:()WKPrivate
{
  *self = &unk_1F10FAA08;
  _Block_release(self[1]);

  return WTF::fastFree(self, v2);
}

@end