@interface SPCacheMessage
+ (id)fromProto:(id)proto;
+ (id)toProto:(id)proto;
- (SPCacheMessage)init;
- (SPCacheMessage)initWithDictionary:(id)dictionary;
@end

@implementation SPCacheMessage

- (SPCacheMessage)init
{
  v3.receiver = self;
  v3.super_class = SPCacheMessage;
  return [(SPCacheMessage *)&v3 init];
}

- (SPCacheMessage)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v25.receiver = self;
  v25.super_class = SPCacheMessage;
  v5 = [(SPCacheMessage *)&v25 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"cmsg"];

    if (v6)
    {
      v7 = [dictionaryCopy objectForKeyedSubscript:@"cmsg"];
      v5->_messageType = [v7 unsignedIntValue];
    }

    v8 = [dictionaryCopy objectForKeyedSubscript:@"t"];

    if (v8)
    {
      v9 = [dictionaryCopy objectForKeyedSubscript:@"t"];
      v5->_cacheType = [v9 unsignedIntValue];
    }

    v10 = [dictionaryCopy objectForKeyedSubscript:@"a"];

    if (v10)
    {
      v11 = [dictionaryCopy objectForKeyedSubscript:@"a"];
      assetKey = v5->_assetKey;
      v5->_assetKey = v11;
    }

    v13 = [dictionaryCopy objectForKeyedSubscript:@"d"];

    if (v13)
    {
      v14 = [dictionaryCopy objectForKeyedSubscript:@"d"];
      assetData = v5->_assetData;
      v5->_assetData = v14;
    }

    v16 = [dictionaryCopy objectForKeyedSubscript:@"i"];

    if (v16)
    {
      v17 = [dictionaryCopy objectForKeyedSubscript:@"i"];
      gizmoCacheIdentifier = v5->_gizmoCacheIdentifier;
      v5->_gizmoCacheIdentifier = v17;
    }

    v19 = [dictionaryCopy objectForKeyedSubscript:@"s"];

    if (v19)
    {
      v20 = [dictionaryCopy objectForKeyedSubscript:@"s"];
      syncData = v5->_syncData;
      v5->_syncData = v20;
    }

    v22 = [dictionaryCopy objectForKeyedSubscript:@"e"];

    if (v22)
    {
      v23 = [dictionaryCopy objectForKeyedSubscript:@"e"];
      v5->_error = [v23 integerValue];
    }
  }

  return v5;
}

+ (id)toProto:(id)proto
{
  protoCopy = proto;
  v4 = objc_alloc_init(SPProtoCacheMessage);
  -[SPProtoCacheMessage setMessageType:](v4, "setMessageType:", [protoCopy messageType]);
  -[SPProtoCacheMessage setCacheType:](v4, "setCacheType:", [protoCopy cacheType]);
  assetKey = [protoCopy assetKey];

  if (assetKey)
  {
    assetKey2 = [protoCopy assetKey];
    [(SPProtoCacheMessage *)v4 setAssetKey:assetKey2];
  }

  gizmoCacheIdentifier = [protoCopy gizmoCacheIdentifier];

  if (gizmoCacheIdentifier)
  {
    gizmoCacheIdentifier2 = [protoCopy gizmoCacheIdentifier];
    [(SPProtoCacheMessage *)v4 setGizmoCacheIdentifier:gizmoCacheIdentifier2];
  }

  assetData = [protoCopy assetData];

  if (assetData)
  {
    assetData2 = [protoCopy assetData];
    [(SPProtoCacheMessage *)v4 setAssetData:assetData2];
  }

  syncData = [protoCopy syncData];

  if (syncData)
  {
    syncData2 = [protoCopy syncData];
    v13 = [SPAssetCacheSyncData toProto:syncData2];
    [(SPProtoCacheMessage *)v4 setSyncData:v13];
  }

  return v4;
}

+ (id)fromProto:(id)proto
{
  protoCopy = proto;
  v4 = objc_alloc_init(SPCacheMessage);
  -[SPCacheMessage setMessageType:](v4, "setMessageType:", [protoCopy messageType]);
  -[SPCacheMessage setCacheType:](v4, "setCacheType:", [protoCopy cacheType]);
  assetKey = [protoCopy assetKey];

  if (assetKey)
  {
    assetKey2 = [protoCopy assetKey];
    [(SPCacheMessage *)v4 setAssetKey:assetKey2];
  }

  gizmoCacheIdentifier = [protoCopy gizmoCacheIdentifier];

  if (gizmoCacheIdentifier)
  {
    gizmoCacheIdentifier2 = [protoCopy gizmoCacheIdentifier];
    [(SPCacheMessage *)v4 setGizmoCacheIdentifier:gizmoCacheIdentifier2];
  }

  assetData = [protoCopy assetData];

  if (assetData)
  {
    assetData2 = [protoCopy assetData];
    [(SPCacheMessage *)v4 setAssetData:assetData2];
  }

  syncData = [protoCopy syncData];

  if (syncData)
  {
    syncData2 = [protoCopy syncData];
    v13 = [SPAssetCacheSyncData fromProto:syncData2];
    [(SPCacheMessage *)v4 setSyncData:v13];
  }

  return v4;
}

@end