@interface GEOSiriSyncHandler
- (void)beginSyncWithAnchor:(id)anchor validity:(id)validity forKey:(id)key beginInfo:(id)info;
- (void)getChangeAfterAnchor:(id)anchor changeInfo:(id)info;
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

- (void)getChangeAfterAnchor:(id)anchor changeInfo:(id)info
{
  v22 = *MEMORY[0x277D85DE8];
  anchorCopy = anchor;
  infoCopy = info;
  v7 = *MEMORY[0x277D0E798];
  v8 = GEOFindOrCreateLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    v18 = 138477827;
    v19 = anchorCopy;
    _os_log_impl(&dword_2334D0000, v8, OS_LOG_TYPE_DEBUG, "getChangeAfterAnchor:%{private}@", &v18, 0xCu);
  }

  v9 = objc_alloc_init(MEMORY[0x277D0ED40]);
  postAnchor = [v9 postAnchor];
  if (objc_opt_class() && ([postAnchor isEqualToString:anchorCopy] & 1) == 0)
  {
    v11 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      v18 = 138478083;
      v19 = postAnchor;
      v20 = 2113;
      v21 = anchorCopy;
      _os_log_impl(&dword_2334D0000, v11, OS_LOG_TYPE_DEBUG, "postAnchor:%{private}@ differs from preAnchor:%{private}@; will provide new domainObject", &v18, 0x16u);
    }

    v12 = objc_alloc_init(MEMORY[0x277D474A0]);
    additionalEnabledMarkets = [v9 additionalEnabledMarkets];
    [v12 setAdditionalEnabledTransitMarkets:additionalEnabledMarkets];

    manifestEnvironment = [v9 manifestEnvironment];
    [v12 setEnvironment:manifestEnvironment];

    v15 = [MEMORY[0x277CBEBC0] URLWithString:@"siri-sync://siri-maps-client-info"];
    [v12 setIdentifier:v15];

    clientMetadata = [v9 clientMetadata];
    [v12 setClientMetadata:clientMetadata];

    [infoCopy setObject:v12];
  }

  [infoCopy setPostAnchor:postAnchor];

  v17 = *MEMORY[0x277D85DE8];
}

- (void)beginSyncWithAnchor:(id)anchor validity:(id)validity forKey:(id)key beginInfo:(id)info
{
  v19 = *MEMORY[0x277D85DE8];
  anchorCopy = anchor;
  validityCopy = validity;
  infoCopy = info;
  v11 = *MEMORY[0x277D0E798];
  v12 = GEOFindOrCreateLog();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
  {
    v15 = 138478083;
    v16 = anchorCopy;
    v17 = 2113;
    v18 = validityCopy;
    _os_log_impl(&dword_2334D0000, v12, OS_LOG_TYPE_DEBUG, "beginSyncWithAnchor:%{private}@ validity:%{private}@", &v15, 0x16u);
  }

  if (([validityCopy isEqualToString:@"20180510"] & 1) == 0)
  {
    v13 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
    {
      v15 = 138478083;
      v16 = @"20180510";
      v17 = 2113;
      v18 = validityCopy;
      _os_log_impl(&dword_2334D0000, v13, OS_LOG_TYPE_DEBUG, "local validity:%{private}@ differs from validity:%{private}@; will reset with local value", &v15, 0x16u);
    }

    [infoCopy resetWithValidity:@"20180510"];
  }

  v14 = *MEMORY[0x277D85DE8];
}

@end