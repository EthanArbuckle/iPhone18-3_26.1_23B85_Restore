@interface GEOSiriSyncHandler
- (void)beginSyncWithAnchor:(id)a3 validity:(id)a4 forKey:(id)a5 beginInfo:(id)a6;
- (void)getChangeAfterAnchor:(id)a3 changeInfo:(id)a4;
- (void)syncDidEnd;
@end

@implementation GEOSiriSyncHandler

- (void)syncDidEnd
{
  v2 = *MEMORY[0x277D0E798];
  v3 = GEOFindOrCreateLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    *v4 = 0;
    _os_log_impl(&dword_2334D0000, v3, OS_LOG_TYPE_DEBUG, "syncDidEnd", v4, 2u);
  }
}

- (void)getChangeAfterAnchor:(id)a3 changeInfo:(id)a4
{
  v22 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = a4;
  v7 = *MEMORY[0x277D0E798];
  v8 = GEOFindOrCreateLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    v18 = 138477827;
    v19 = v5;
    _os_log_impl(&dword_2334D0000, v8, OS_LOG_TYPE_DEBUG, "getChangeAfterAnchor:%{private}@", &v18, 0xCu);
  }

  v9 = objc_alloc_init(MEMORY[0x277D0ED40]);
  v10 = [v9 postAnchor];
  if (objc_opt_class() && ([v10 isEqualToString:v5] & 1) == 0)
  {
    v11 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      v18 = 138478083;
      v19 = v10;
      v20 = 2113;
      v21 = v5;
      _os_log_impl(&dword_2334D0000, v11, OS_LOG_TYPE_DEBUG, "postAnchor:%{private}@ differs from preAnchor:%{private}@; will provide new domainObject", &v18, 0x16u);
    }

    v12 = objc_alloc_init(MEMORY[0x277D474A0]);
    v13 = [v9 additionalEnabledMarkets];
    [v12 setAdditionalEnabledTransitMarkets:v13];

    v14 = [v9 manifestEnvironment];
    [v12 setEnvironment:v14];

    v15 = [MEMORY[0x277CBEBC0] URLWithString:@"siri-sync://siri-maps-client-info"];
    [v12 setIdentifier:v15];

    v16 = [v9 clientMetadata];
    [v12 setClientMetadata:v16];

    [v6 setObject:v12];
  }

  [v6 setPostAnchor:v10];

  v17 = *MEMORY[0x277D85DE8];
}

- (void)beginSyncWithAnchor:(id)a3 validity:(id)a4 forKey:(id)a5 beginInfo:(id)a6
{
  v19 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a6;
  v11 = *MEMORY[0x277D0E798];
  v12 = GEOFindOrCreateLog();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
  {
    v15 = 138478083;
    v16 = v8;
    v17 = 2113;
    v18 = v9;
    _os_log_impl(&dword_2334D0000, v12, OS_LOG_TYPE_DEBUG, "beginSyncWithAnchor:%{private}@ validity:%{private}@", &v15, 0x16u);
  }

  if (([v9 isEqualToString:@"20180510"] & 1) == 0)
  {
    v13 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
    {
      v15 = 138478083;
      v16 = @"20180510";
      v17 = 2113;
      v18 = v9;
      _os_log_impl(&dword_2334D0000, v13, OS_LOG_TYPE_DEBUG, "local validity:%{private}@ differs from validity:%{private}@; will reset with local value", &v15, 0x16u);
    }

    [v10 resetWithValidity:@"20180510"];
  }

  v14 = *MEMORY[0x277D85DE8];
}

@end