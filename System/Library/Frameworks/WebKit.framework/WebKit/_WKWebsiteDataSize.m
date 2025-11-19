@interface _WKWebsiteDataSize
- (_WKWebsiteDataSize)initWithSize:(const void *)a3;
- (unint64_t)sizeOfDataTypes:(id)a3;
@end

@implementation _WKWebsiteDataSize

- (_WKWebsiteDataSize)initWithSize:(const void *)a3
{
  v9.receiver = self;
  v9.super_class = _WKWebsiteDataSize;
  v4 = [(_WKWebsiteDataSize *)&v9 init];
  v5 = v4;
  if (v4)
  {
    v4->_size = *a3;
    WTF::HashTable<unsigned int,WTF::KeyValuePair<unsigned int,unsigned long long>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<unsigned int,unsigned long long>>,WTF::DefaultHash<unsigned int>,WTF::HashMap<unsigned int,unsigned long long,WTF::DefaultHash<unsigned int>,WTF::HashTraits<unsigned int>,WTF::HashTraits<unsigned long long>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<unsigned int>,WTF::FastMalloc>::HashTable(&v10, a3 + 1);
    isa = v5[1].super.isa;
    v5[1].super.isa = v10;
    v10 = isa;
    if (isa)
    {
      WTF::fastFree((isa - 16), v6);
    }
  }

  return v5;
}

- (unint64_t)sizeOfDataTypes:(id)a3
{
  v27 = *MEMORY[0x1E69E9840];
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v5 = [a3 countByEnumeratingWithState:&v22 objects:v26 count:16];
  if (!v5)
  {
    return 0;
  }

  v6 = v5;
  v7 = 0;
  v8 = *v23;
  do
  {
    v9 = 0;
    do
    {
      if (*v23 != v8)
      {
        objc_enumerationMutation(a3);
      }

      v10 = *(*(&v22 + 1) + 8 * v9);
      if ([v10 isEqualToString:@"WKWebsiteDataTypeCookies"])
      {
        v11 = 1;
        goto LABEL_43;
      }

      if ([v10 isEqualToString:@"WKWebsiteDataTypeFetchCache"])
      {
        v11 = 0x8000;
        goto LABEL_43;
      }

      if ([v10 isEqualToString:@"WKWebsiteDataTypeDiskCache"])
      {
        v11 = 2;
        goto LABEL_43;
      }

      if ([v10 isEqualToString:@"WKWebsiteDataTypeMemoryCache"])
      {
        v11 = 4;
        goto LABEL_43;
      }

      if ([v10 isEqualToString:@"WKWebsiteDataTypeOfflineWebApplicationCache"])
      {
        v11 = 8;
        goto LABEL_43;
      }

      if ([v10 isEqualToString:@"WKWebsiteDataTypeSessionStorage"])
      {
        v11 = 16;
        goto LABEL_43;
      }

      if ([v10 isEqualToString:@"WKWebsiteDataTypeLocalStorage"])
      {
        v11 = 32;
        goto LABEL_43;
      }

      if ([v10 isEqualToString:@"WKWebsiteDataTypeWebSQLDatabases"])
      {
        v11 = 64;
        goto LABEL_43;
      }

      if ([v10 isEqualToString:@"WKWebsiteDataTypeIndexedDBDatabases"])
      {
        v11 = 128;
        goto LABEL_43;
      }

      if ([v10 isEqualToString:@"WKWebsiteDataTypeServiceWorkerRegistrations"])
      {
        v11 = 0x4000;
        goto LABEL_43;
      }

      if ([v10 isEqualToString:@"WKWebsiteDataTypeFileSystem"])
      {
        v11 = 0x80000;
        goto LABEL_43;
      }

      if ([v10 isEqualToString:@"_WKWebsiteDataTypeHSTSCache"])
      {
        v11 = 512;
        goto LABEL_43;
      }

      if ([v10 isEqualToString:@"WKWebsiteDataTypeMediaKeys"])
      {
        v11 = 256;
        goto LABEL_43;
      }

      if ([v10 isEqualToString:@"WKWebsiteDataTypeHashSalt"])
      {
        v11 = 0x10000;
        goto LABEL_43;
      }

      if ([v10 isEqualToString:@"WKWebsiteDataTypeSearchFieldRecentSearches"])
      {
        v11 = 1024;
        goto LABEL_43;
      }

      if ([v10 isEqualToString:@"_WKWebsiteDataTypeResourceLoadStatistics"])
      {
        v11 = 4096;
        goto LABEL_43;
      }

      if ([v10 isEqualToString:@"_WKWebsiteDataTypeCredentials"])
      {
        v11 = 0x2000;
        goto LABEL_43;
      }

      if ([v10 isEqualToString:@"_WKWebsiteDataTypeAdClickAttributions"] & 1) != 0 || (objc_msgSend(v10, "isEqualToString:", @"_WKWebsiteDataTypePrivateClickMeasurements"))
      {
        v11 = 0x20000;
        goto LABEL_43;
      }

      if ([v10 isEqualToString:@"_WKWebsiteDataTypeAlternativeServices"])
      {
        v11 = 0x40000;
        goto LABEL_43;
      }

      if ([v10 isEqualToString:@"WKWebsiteDataTypeScreenTime"])
      {
        v11 = 0x200000;
LABEL_43:
        isa = self[1].super.isa;
        if (isa)
        {
          v13 = *(isa - 2);
          v14 = 9 * ((v11 + ~(v11 << 15)) ^ ((v11 + ~(v11 << 15)) >> 10));
          v15 = (v14 ^ (v14 >> 6)) + ~((v14 ^ (v14 >> 6)) << 11);
          v16 = v13 & (v15 ^ HIWORD(v15));
          v17 = *(isa + 4 * v16);
          if (v17 != v11)
          {
            v18 = 1;
            while (v17)
            {
              v16 = (v16 + v18) & v13;
              v17 = *(isa + 4 * v16);
              ++v18;
              if (v17 == v11)
              {
                goto LABEL_48;
              }
            }

            goto LABEL_49;
          }

LABEL_48:
          v19 = *(isa + 2 * v16 + 1);
        }

        else
        {
LABEL_49:
          v19 = 0;
        }

        v7 += v19;
      }

      ++v9;
    }

    while (v9 != v6);
    v20 = [a3 countByEnumeratingWithState:&v22 objects:v26 count:16];
    v6 = v20;
  }

  while (v20);
  return v7;
}

@end