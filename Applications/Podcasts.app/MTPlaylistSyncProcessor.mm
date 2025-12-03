@interface MTPlaylistSyncProcessor
- (BOOL)hasLocalChanges;
- (BOOL)mergeData:(id)data forKey:(id)key version:(id)version mismatch:(BOOL)mismatch isGetTransaction:(BOOL)transaction;
- (MTPlaylistSyncProcessor)initWithStorageProvider:(id)provider;
- (id)dataForSetTransaction:(id)transaction key:(id)key version:(id *)version;
- (id)versionForGetTransaction:(id)transaction key:(id)key;
- (void)completeTransactionWithNewVersion:(id)version isGetTransaction:(BOOL)transaction mismatch:(BOOL)mismatch finishedBlock:(id)block;
- (void)conflictForSetTransaction:(id)transaction withData:(id)data forKey:(id)key version:(id)version finishedBlock:(id)block;
- (void)successfulGetTransaction:(id)transaction withData:(id)data forKey:(id)key version:(id)version finishedBlock:(id)block;
- (void)transaction:(id)transaction didProcessResponseWithDomainVersion:(id)version;
@end

@implementation MTPlaylistSyncProcessor

- (MTPlaylistSyncProcessor)initWithStorageProvider:(id)provider
{
  providerCopy = provider;
  v13.receiver = self;
  v13.super_class = MTPlaylistSyncProcessor;
  v5 = [(MTPlaylistSyncProcessor *)&v13 init];
  v6 = v5;
  if (v5)
  {
    [(MTPlaylistSyncProcessor *)v5 setStorageProvider:providerCopy];
    v7 = _MTLogCategoryCloudSync();
    v6->_signpostID = os_signpost_id_generate(v7);

    v8 = _MTLogCategoryCloudSync();
    v9 = v8;
    signpostID = v6->_signpostID;
    if (signpostID - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v8))
    {
      *v12 = 0;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v9, OS_SIGNPOST_EVENT, signpostID, "MTPlaylistSyncProcessor.created", "", v12, 2u);
    }
  }

  return v6;
}

- (BOOL)hasLocalChanges
{
  storageProvider = [(MTPlaylistSyncProcessor *)self storageProvider];
  playlistSyncDirtyFlag = [storageProvider playlistSyncDirtyFlag];

  return playlistSyncDirtyFlag;
}

- (id)versionForGetTransaction:(id)transaction key:(id)key
{
  keyCopy = key;
  v6 = _MTLogCategoryCloudSync();
  v7 = v6;
  signpostID = self->_signpostID;
  if (signpostID - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v6))
  {
    v12 = 138412290;
    v13 = keyCopy;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v7, OS_SIGNPOST_INTERVAL_BEGIN, signpostID, "MTPlaylistSyncProcessor.GET", "key: %@", &v12, 0xCu);
  }

  storageProvider = [(MTPlaylistSyncProcessor *)self storageProvider];
  playlistSyncVersion = [storageProvider playlistSyncVersion];

  return playlistSyncVersion;
}

- (id)dataForSetTransaction:(id)transaction key:(id)key version:(id *)version
{
  keyCopy = key;
  v8 = _MTLogCategoryCloudSync();
  v9 = v8;
  signpostID = self->_signpostID;
  if (signpostID - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v8))
  {
    *buf = 138412290;
    v28 = keyCopy;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v9, OS_SIGNPOST_INTERVAL_BEGIN, signpostID, "MTPlaylistSyncProcessor.SET", "key: %@", buf, 0xCu);
  }

  storageProvider = [(MTPlaylistSyncProcessor *)self storageProvider];
  if ([storageProvider playlistSyncDirtyFlag])
  {

LABEL_8:
    storageProvider2 = [(MTPlaylistSyncProcessor *)self storageProvider];
    *version = [storageProvider2 playlistSyncVersion];

    storageProvider3 = [(MTPlaylistSyncProcessor *)self storageProvider];
    importContext = [storageProvider3 importContext];

    v18 = objc_opt_new();
    v23[0] = _NSConcreteStackBlock;
    v23[1] = 3221225472;
    v23[2] = sub_100160D30;
    v23[3] = &unk_1004D94C8;
    v19 = importContext;
    v24 = v19;
    selfCopy = self;
    v20 = v18;
    v26 = v20;
    [v19 performBlockAndWait:v23];
    if (v20)
    {
      v21 = objc_alloc_init(MZKeyValueStoreNode);
      [(MZKeyValueStoreNode *)v21 setArrayValue:v20];
      value = [(MZKeyValueStoreNode *)v21 value];
    }

    else
    {
      value = 0;
    }

    goto LABEL_12;
  }

  storageProvider4 = [(MTPlaylistSyncProcessor *)self storageProvider];
  playlistSyncVersion = [storageProvider4 playlistSyncVersion];

  if (!playlistSyncVersion)
  {
    goto LABEL_8;
  }

  value = 0;
LABEL_12:

  return value;
}

- (void)transaction:(id)transaction didProcessResponseWithDomainVersion:(id)version
{
  versionCopy = version;
  storageProvider = [(MTPlaylistSyncProcessor *)self storageProvider];
  [storageProvider setPodcastsDomainVersion:versionCopy];
}

- (void)successfulGetTransaction:(id)transaction withData:(id)data forKey:(id)key version:(id)version finishedBlock:(id)block
{
  blockCopy = block;
  versionCopy = version;
  [(MTPlaylistSyncProcessor *)self completeTransactionWithNewVersion:versionCopy isGetTransaction:1 mismatch:[(MTPlaylistSyncProcessor *)self mergeData:data forKey:key version:versionCopy mismatch:0 isGetTransaction:1] finishedBlock:blockCopy];
}

- (void)conflictForSetTransaction:(id)transaction withData:(id)data forKey:(id)key version:(id)version finishedBlock:(id)block
{
  blockCopy = block;
  versionCopy = version;
  [(MTPlaylistSyncProcessor *)self completeTransactionWithNewVersion:versionCopy isGetTransaction:0 mismatch:[(MTPlaylistSyncProcessor *)self mergeData:data forKey:key version:versionCopy mismatch:1 isGetTransaction:0] finishedBlock:blockCopy];
}

- (BOOL)mergeData:(id)data forKey:(id)key version:(id)version mismatch:(BOOL)mismatch isGetTransaction:(BOOL)transaction
{
  keyCopy = key;
  dataCopy = data;
  storageProvider = [(MTPlaylistSyncProcessor *)self storageProvider];
  playlistSyncVersion = [storageProvider playlistSyncVersion];

  if (!playlistSyncVersion)
  {
    storageProvider2 = [(MTPlaylistSyncProcessor *)self storageProvider];
    [storageProvider2 setPlaylistSyncDirtyFlag:1];
  }

  v15 = objc_alloc_init(MZKeyValueStoreNode);
  [(MZKeyValueStoreNode *)v15 setKey:keyCopy];

  [(MZKeyValueStoreNode *)v15 setValue:dataCopy];
  if ([(MZKeyValueStoreNode *)v15 hasData])
  {
    arrayValue = [(MZKeyValueStoreNode *)v15 arrayValue];
    storageProvider3 = [(MTPlaylistSyncProcessor *)self storageProvider];
    importContext = [storageProvider3 importContext];

    v19 = [MTPlaylistSyncDictionaryMerge alloc];
    v20 = _MTLogCategoryCloudSync();
    v21 = [(MTPlaylistSyncDictionaryMerge *)v19 initWithLoggingCategory:v20 dictionariesToMerge:arrayValue];

    v23[0] = _NSConcreteStackBlock;
    v23[1] = 3221225472;
    v23[2] = sub_10016190C;
    v23[3] = &unk_1004DD3E8;
    v23[4] = self;
    [(MTPlaylistSyncDictionaryMerge *)v21 setCanDeletePlaylistUUIDBlock:v23];
    [(MTPlaylistSyncDictionaryMerge *)v21 performAndWaitWithContext:importContext save:1];
  }

  return mismatch;
}

- (void)completeTransactionWithNewVersion:(id)version isGetTransaction:(BOOL)transaction mismatch:(BOOL)mismatch finishedBlock:(id)block
{
  mismatchCopy = mismatch;
  blockCopy = block;
  versionCopy = version;
  v11 = _MTLogCategoryCloudSync();
  v12 = v11;
  signpostID = self->_signpostID;
  if (signpostID - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v11))
  {
    v14 = @"NO";
    if (mismatchCopy)
    {
      v14 = @"YES";
    }

    v17 = 138412290;
    v18 = v14;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v12, OS_SIGNPOST_INTERVAL_END, signpostID, "MTPlaylistSyncProcessor.completed", "mismatch %@", &v17, 0xCu);
  }

  storageProvider = [(MTPlaylistSyncProcessor *)self storageProvider];
  [storageProvider setPlaylistSyncDirtyFlag:mismatchCopy];

  blockCopy[2](blockCopy, mismatchCopy);
  storageProvider2 = [(MTPlaylistSyncProcessor *)self storageProvider];
  [storageProvider2 setPlaylistSyncVersion:versionCopy];
}

@end