@interface WKWebsiteDataRecord
- (NSSet)dataTypes;
- (NSString)description;
- (NSString)displayName;
- (_WKWebsiteDataSize)_dataSize;
- (id)_originsStrings;
- (void)dealloc;
@end

@implementation WKWebsiteDataRecord

- (void)dealloc
{
  v3 = objc_opt_class();
  if ((WebCoreObjCScheduleDeallocateOnMainRunLoop(v3, self) & 1) == 0)
  {
    WebKit::WebsiteDataRecord::~WebsiteDataRecord(&self->_websiteDataRecord.m_storage.data[16], v4);
    v5.receiver = self;
    v5.super_class = WKWebsiteDataRecord;
    [(WKWebsiteDataRecord *)&v5 dealloc];
  }
}

- (NSString)description
{
  v3 = objc_alloc(MEMORY[0x1E696AD60]);
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [(WKWebsiteDataRecord *)self displayName];
  v7 = [(WKWebsiteDataRecord *)self dataTypes];
  v8 = objc_alloc_init(MEMORY[0x1E695DF70]);
  if ([(NSSet *)v7 containsObject:@"WKWebsiteDataTypeDiskCache"])
  {
    [v8 addObject:@"Disk Cache"];
  }

  if ([(NSSet *)v7 containsObject:@"WKWebsiteDataTypeFetchCache"])
  {
    [v8 addObject:@"Fetch Cache"];
  }

  if ([(NSSet *)v7 containsObject:@"WKWebsiteDataTypeMemoryCache"])
  {
    [v8 addObject:@"Memory Cache"];
  }

  if ([(NSSet *)v7 containsObject:@"WKWebsiteDataTypeOfflineWebApplicationCache"])
  {
    [v8 addObject:@"Offline Web Application Cache"];
  }

  if ([(NSSet *)v7 containsObject:@"WKWebsiteDataTypeCookies"])
  {
    [v8 addObject:@"Cookies"];
  }

  if ([(NSSet *)v7 containsObject:@"WKWebsiteDataTypeSessionStorage"])
  {
    [v8 addObject:@"Session Storage"];
  }

  if ([(NSSet *)v7 containsObject:@"WKWebsiteDataTypeLocalStorage"])
  {
    [v8 addObject:@"Local Storage"];
  }

  if ([(NSSet *)v7 containsObject:@"WKWebsiteDataTypeWebSQLDatabases"])
  {
    [v8 addObject:@"Web SQL"];
  }

  if ([(NSSet *)v7 containsObject:@"WKWebsiteDataTypeIndexedDBDatabases"])
  {
    [v8 addObject:@"IndexedDB"];
  }

  if ([(NSSet *)v7 containsObject:@"WKWebsiteDataTypeServiceWorkerRegistrations"])
  {
    [v8 addObject:@"Service Worker Registrations"];
  }

  if ([(NSSet *)v7 containsObject:@"_WKWebsiteDataTypeHSTSCache"])
  {
    [v8 addObject:@"HSTS Cache"];
  }

  if ([(NSSet *)v7 containsObject:@"WKWebsiteDataTypeMediaKeys"])
  {
    [v8 addObject:@"Media Keys"];
  }

  if ([(NSSet *)v7 containsObject:@"WKWebsiteDataTypeHashSalt"])
  {
    [v8 addObject:@"Hash Salt"];
  }

  if ([(NSSet *)v7 containsObject:@"WKWebsiteDataTypeSearchFieldRecentSearches"])
  {
    [v8 addObject:@"Search Field Recent Searches"];
  }

  if ([(NSSet *)v7 containsObject:@"WKWebsiteDataTypeFileSystem"])
  {
    [v8 addObject:@"File System"];
  }

  if ([(NSSet *)v7 containsObject:@"_WKWebsiteDataTypeResourceLoadStatistics"])
  {
    [v8 addObject:@"Resource Load Statistics"];
  }

  if ([(NSSet *)v7 containsObject:@"_WKWebsiteDataTypeCredentials"])
  {
    [v8 addObject:@"Credentials"];
  }

  if ([(NSSet *)v7 containsObject:@"_WKWebsiteDataTypeAdClickAttributions"]|| [(NSSet *)v7 containsObject:@"_WKWebsiteDataTypePrivateClickMeasurements"])
  {
    [v8 addObject:@"Private Click Measurements"];
  }

  if ([(NSSet *)v7 containsObject:@"_WKWebsiteDataTypeAlternativeServices"])
  {
    [v8 addObject:@"Alternative Services"];
  }

  if ([(NSSet *)v7 containsObject:@"WKWebsiteDataTypeScreenTime"])
  {
    [v8 addObject:@"Screen Time"];
  }

  v9 = [v8 componentsJoinedByString:{@", "}];
  if (v8)
  {
  }

  v10 = [v3 initWithFormat:@"<%@: %p; displayName = %@; dataTypes = { %@ }", v5, self, v6, v9];
  v11 = [(WKWebsiteDataRecord *)self _dataSize];
  if (v11)
  {
    [v10 appendFormat:@"; _dataSize = { %llu bytes }", -[_WKWebsiteDataSize totalSize](v11, "totalSize")];
  }

  [v10 appendString:@">"];
  if (v10)
  {
    v12 = v10;
  }

  return v10;
}

- (NSString)displayName
{
  v2 = *&self->_websiteDataRecord.m_storage.data[16];
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

- (NSSet)dataTypes
{
  v2 = *&self->_websiteDataRecord.m_storage.data[24];
  v3 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  v4 = v3;
  if (v2)
  {
    [(NSSet *)v3 addObject:@"WKWebsiteDataTypeCookies"];
  }

  if ((v2 & 2) != 0)
  {
    [(NSSet *)v4 addObject:@"WKWebsiteDataTypeDiskCache"];
  }

  if ((v2 & 0x8000) != 0)
  {
    [(NSSet *)v4 addObject:@"WKWebsiteDataTypeFetchCache"];
  }

  if ((v2 & 4) != 0)
  {
    [(NSSet *)v4 addObject:@"WKWebsiteDataTypeMemoryCache"];
  }

  if ((v2 & 8) != 0)
  {
    [(NSSet *)v4 addObject:@"WKWebsiteDataTypeOfflineWebApplicationCache"];
  }

  if ((v2 & 0x10) != 0)
  {
    [(NSSet *)v4 addObject:@"WKWebsiteDataTypeSessionStorage"];
  }

  if ((v2 & 0x20) != 0)
  {
    [(NSSet *)v4 addObject:@"WKWebsiteDataTypeLocalStorage"];
  }

  if ((v2 & 0x40) != 0)
  {
    [(NSSet *)v4 addObject:@"WKWebsiteDataTypeWebSQLDatabases"];
  }

  if ((v2 & 0x80) != 0)
  {
    [(NSSet *)v4 addObject:@"WKWebsiteDataTypeIndexedDBDatabases"];
  }

  if ((v2 & 0x4000) != 0)
  {
    [(NSSet *)v4 addObject:@"WKWebsiteDataTypeServiceWorkerRegistrations"];
  }

  if ((v2 & 0x80000) != 0)
  {
    [(NSSet *)v4 addObject:@"WKWebsiteDataTypeFileSystem"];
  }

  if ((v2 & 0x200) != 0)
  {
    [(NSSet *)v4 addObject:@"_WKWebsiteDataTypeHSTSCache"];
  }

  if ((v2 & 0x100) != 0)
  {
    [(NSSet *)v4 addObject:@"WKWebsiteDataTypeMediaKeys"];
  }

  if ((v2 & 0x400) != 0)
  {
    [(NSSet *)v4 addObject:@"WKWebsiteDataTypeSearchFieldRecentSearches"];
  }

  if ((v2 & 0x10000) != 0)
  {
    [(NSSet *)v4 addObject:@"WKWebsiteDataTypeHashSalt"];
  }

  if ((v2 & 0x1000) != 0)
  {
    [(NSSet *)v4 addObject:@"_WKWebsiteDataTypeResourceLoadStatistics"];
  }

  if ((v2 & 0x2000) != 0)
  {
    [(NSSet *)v4 addObject:@"_WKWebsiteDataTypeCredentials"];
  }

  if ((v2 & 0x20000) != 0)
  {
    [(NSSet *)v4 addObject:@"_WKWebsiteDataTypePrivateClickMeasurements"];
  }

  if ((v2 & 0x40000) != 0)
  {
    [(NSSet *)v4 addObject:@"_WKWebsiteDataTypeAlternativeServices"];
  }

  if ((v2 & 0x200000) != 0)
  {
    [(NSSet *)v4 addObject:@"WKWebsiteDataTypeScreenTime"];
  }

  if (v4)
  {
    v5 = v4;
  }

  return v4;
}

- (_WKWebsiteDataSize)_dataSize
{
  if (LOBYTE(self[1].super.isa) != 1)
  {
    return 0;
  }

  result = [_WKWebsiteDataSize alloc];
  if (self[1].super.isa)
  {
    v4 = [(_WKWebsiteDataSize *)result initWithSize:&self->_websiteDataRecord.m_storage.data[32]];
    v5 = v4;
    if (v4)
    {
      v6 = v4;
    }

    return v5;
  }

  __break(1u);
  return result;
}

- (id)_originsStrings
{
  v3 = objc_alloc(MEMORY[0x1E695DF70]);
  v6 = *self[1]._websiteDataRecord.m_storage.data;
  p_websiteDataRecord = &self[1]._websiteDataRecord;
  v4 = v6;
  if (v6)
  {
    v7 = *(v4 - 12);
  }

  else
  {
    v7 = 0;
  }

  v8 = [v3 initWithCapacity:v7];
  v9 = WTF::HashTable<WebCore::SecurityOriginData,WebCore::SecurityOriginData,WTF::IdentityExtractor,WTF::DefaultHash<WebCore::SecurityOriginData>,WTF::HashTraits<WebCore::SecurityOriginData>,WTF::HashTraits<WebCore::SecurityOriginData>,WTF::FastMalloc>::begin(p_websiteDataRecord);
  v10 = v9;
  v12 = v11;
  if (*p_websiteDataRecord)
  {
    v13 = *p_websiteDataRecord + 32 * *(*p_websiteDataRecord - 4);
  }

  else
  {
    v13 = 0;
  }

  if (v13 != v9)
  {
    do
    {
      WebCore::SecurityOriginData::toString(&v22, v10);
      v14 = v22;
      if (v22)
      {
        atomic_fetch_add_explicit(v22, 2u, memory_order_relaxed);
        MEMORY[0x19EB00B70](&v21, v14);
        if (atomic_fetch_add_explicit(v14, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v14, v15);
        }
      }

      else
      {
        v21 = &stru_1F1147748;
        v16 = &stru_1F1147748;
      }

      v17 = v22;
      v22 = 0;
      if (v17 && atomic_fetch_add_explicit(v17, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v17, v15);
      }

      if (v21)
      {
        [v8 addObject:?];
        v18 = v21;
        v21 = 0;
        if (v18)
        {
        }
      }

      do
      {
        v10 = (v10 + 32);
      }

      while (v10 != v12 && WTF::HashTable<WebCore::SecurityOriginData,WebCore::SecurityOriginData,WTF::IdentityExtractor,WTF::DefaultHash<WebCore::SecurityOriginData>,WTF::HashTraits<WebCore::SecurityOriginData>,WTF::HashTraits<WebCore::SecurityOriginData>,WTF::FastMalloc>::isEmptyOrDeletedBucket(v10));
    }

    while (v10 != v13);
  }

  if (v8)
  {
    v19 = v8;
  }

  return v8;
}

@end