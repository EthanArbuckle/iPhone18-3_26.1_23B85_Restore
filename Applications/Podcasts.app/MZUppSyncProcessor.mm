@interface MZUppSyncProcessor
- (MZUppSyncProcessor)initWithStorageProviderDelegate:(id)delegate;
- (MZUppSyncProcessorStorageProviding)storageProvider;
- (id)dataForSetTransaction:(id)transaction key:(id)key version:(id *)version;
- (int)mergeMetadataItemFromSetResponse:(id)response;
- (void)conflictForSetTransaction:(id)transaction withData:(id)data forKey:(id)key version:(id)version finishedBlock:(id)block;
- (void)mergeMetadataItemsFromGetResponse;
- (void)successfulGetTransaction:(id)transaction withData:(id)data forKey:(id)key version:(id)version finishedBlock:(id)block;
- (void)successfulSetTransaction:(id)transaction withData:(id)data forKey:(id)key version:(id)version finishedBlock:(id)block;
- (void)transaction:(id)transaction willProcessResponseWithDomainVersion:(id)version;
@end

@implementation MZUppSyncProcessor

- (MZUppSyncProcessor)initWithStorageProviderDelegate:(id)delegate
{
  delegateCopy = delegate;
  v13.receiver = self;
  v13.super_class = MZUppSyncProcessor;
  v5 = [(MZUppSyncProcessor *)&v13 init];
  v6 = v5;
  if (v5)
  {
    [(MZUppSyncProcessor *)v5 setStorageProvider:delegateCopy];
    v7 = +[NSMutableDictionary dictionary];
    [(MZUppSyncProcessor *)v6 setMetadataItemsFromDataSource:v7];

    v8 = +[NSMutableDictionary dictionary];
    [(MZUppSyncProcessor *)v6 setMetadataItemsFromKVSStorage:v8];

    v9 = +[NSMutableDictionary dictionary];
    [(MZUppSyncProcessor *)v6 setMetadataItemsToCommitToDataSource:v9];

    v10 = +[NSMutableDictionary dictionary];
    [(MZUppSyncProcessor *)v6 setMetadataItemsToCommitToKVSStorage:v10];

    v11 = +[NSMutableDictionary dictionary];
    [(MZUppSyncProcessor *)v6 setReportedItemVersionForIdentifier:v11];
  }

  return v6;
}

- (int)mergeMetadataItemFromSetResponse:(id)response
{
  responseCopy = response;
  metadataItemsFromKVSStorage = [(MZUppSyncProcessor *)self metadataItemsFromKVSStorage];
  itemIdentifier = [responseCopy itemIdentifier];
  [metadataItemsFromKVSStorage setObject:responseCopy forKey:itemIdentifier];

  storageProvider = [(MZUppSyncProcessor *)self storageProvider];
  metadataItemsFromKVSStorage2 = [(MZUppSyncProcessor *)self metadataItemsFromKVSStorage];
  [storageProvider setNumMetadataItemsFromKVSStorage:{objc_msgSend(metadataItemsFromKVSStorage2, "count")}];

  metadataItemsFromDataSource = [(MZUppSyncProcessor *)self metadataItemsFromDataSource];
  itemIdentifier2 = [responseCopy itemIdentifier];
  v11 = [metadataItemsFromDataSource objectForKey:itemIdentifier2];

  v27[0] = _NSConcreteStackBlock;
  v27[1] = 3221225472;
  v27[2] = sub_1000B7FA4;
  v27[3] = &unk_1004DB340;
  v27[4] = self;
  v12 = responseCopy;
  v28 = v12;
  v13 = v11;
  v29 = v13;
  v14 = objc_retainBlock(v27);
  if (!v13)
  {
    goto LABEL_6;
  }

  [v13 timestamp];
  v16 = v15;
  [v12 timestamp];
  if (v16 <= v17)
  {
    [v13 timestamp];
    v22 = v21;
    [v12 timestamp];
    if (v22 >= v23)
    {
      v26 = [v13 isEqual:v12];
      v18 = v14[2];
      if (!v26)
      {
        goto LABEL_4;
      }

LABEL_7:
      v19 = v14;
      v20 = 2;
      goto LABEL_8;
    }

LABEL_6:
    v18 = v14[2];
    goto LABEL_7;
  }

  v18 = v14[2];
LABEL_4:
  v19 = v14;
  v20 = 1;
LABEL_8:
  v24 = v18(v19, v20);

  return v24;
}

- (void)mergeMetadataItemsFromGetResponse
{
  metadataItemsFromDataSource = [(MZUppSyncProcessor *)self metadataItemsFromDataSource];
  metadataItemsFromKVSStorage = [(MZUppSyncProcessor *)self metadataItemsFromKVSStorage];
  [(MZUppSyncProcessor *)self metadataItemsToCommitToDataSource];
  v44 = v43 = self;
  metadataItemsToCommitToKVSStorage = [(MZUppSyncProcessor *)self metadataItemsToCommitToKVSStorage];
  v6 = _MTLogCategoryUPPSync();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    v56 = metadataItemsFromDataSource;
    v57 = 2114;
    v58 = metadataItemsFromKVSStorage;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Merging local and remote items\nlocal items = %{public}@\nremote items = %{public}@", buf, 0x16u);
  }

  v51 = 0u;
  v52 = 0u;
  v49 = 0u;
  v50 = 0u;
  allValues = [metadataItemsFromDataSource allValues];
  v8 = [allValues countByEnumeratingWithState:&v49 objects:v54 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v50;
    do
    {
      for (i = 0; i != v9; i = i + 1)
      {
        if (*v50 != v10)
        {
          objc_enumerationMutation(allValues);
        }

        v12 = *(*(&v49 + 1) + 8 * i);
        itemIdentifier = [v12 itemIdentifier];
        v14 = [metadataItemsFromKVSStorage objectForKey:itemIdentifier];

        if (!v14 || ([v12 timestamp], v16 = v15, objc_msgSend(v14, "timestamp"), v16 > v17) || (objc_msgSend(v12, "timestamp"), v19 = v18, objc_msgSend(v14, "timestamp"), v19 == v20) && (objc_msgSend(v12, "isEqual:", v14) & 1) == 0)
        {
          itemIdentifier2 = [v12 itemIdentifier];
          [metadataItemsToCommitToKVSStorage setObject:v12 forKey:itemIdentifier2];
        }
      }

      v9 = [allValues countByEnumeratingWithState:&v49 objects:v54 count:16];
    }

    while (v9);
  }

  v47 = 0u;
  v48 = 0u;
  v45 = 0u;
  v46 = 0u;
  allValues2 = [metadataItemsFromKVSStorage allValues];
  v23 = [allValues2 countByEnumeratingWithState:&v45 objects:v53 count:16];
  if (v23)
  {
    v24 = v23;
    v25 = *v46;
    do
    {
      for (j = 0; j != v24; j = j + 1)
      {
        if (*v46 != v25)
        {
          objc_enumerationMutation(allValues2);
        }

        v27 = *(*(&v45 + 1) + 8 * j);
        itemIdentifier3 = [v27 itemIdentifier];
        v29 = [metadataItemsToCommitToKVSStorage objectForKey:itemIdentifier3];

        if (!v29)
        {
          itemIdentifier4 = [v27 itemIdentifier];
          v31 = [metadataItemsFromDataSource objectForKey:itemIdentifier4];

          if (!v31 || ([v27 timestamp], v33 = v32, objc_msgSend(v31, "timestamp"), v33 > v34))
          {
            itemIdentifier5 = [v27 itemIdentifier];
            [v44 setObject:v27 forKey:itemIdentifier5];
          }
        }
      }

      v24 = [allValues2 countByEnumeratingWithState:&v45 objects:v53 count:16];
    }

    while (v24);
  }

  v36 = _MTLogCategoryUPPSync();
  if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
  {
    metadataItemsToCommitToDataSource = [(MZUppSyncProcessor *)v43 metadataItemsToCommitToDataSource];
    metadataItemsToCommitToKVSStorage2 = [(MZUppSyncProcessor *)v43 metadataItemsToCommitToKVSStorage];
    *buf = 138543618;
    v56 = metadataItemsToCommitToDataSource;
    v57 = 2114;
    v58 = metadataItemsToCommitToKVSStorage2;
    _os_log_impl(&_mh_execute_header, v36, OS_LOG_TYPE_DEFAULT, "Merge result:\nmetadataItemsToCommitToDataSource = %{public}@\nmetadataItemsToCommitToKVSStorage = %{public}@", buf, 0x16u);
  }

  storageProvider = [(MZUppSyncProcessor *)v43 storageProvider];
  metadataItemsToCommitToDataSource2 = [(MZUppSyncProcessor *)v43 metadataItemsToCommitToDataSource];
  [storageProvider setNumMetadataItemsToCommitToDataSource:{objc_msgSend(metadataItemsToCommitToDataSource2, "count")}];

  storageProvider2 = [(MZUppSyncProcessor *)v43 storageProvider];
  metadataItemsToCommitToKVSStorage3 = [(MZUppSyncProcessor *)v43 metadataItemsToCommitToKVSStorage];
  [storageProvider2 setNumMetadataItemsToCommitToKVSStorage:{objc_msgSend(metadataItemsToCommitToKVSStorage3, "count")}];
}

- (id)dataForSetTransaction:(id)transaction key:(id)key version:(id *)version
{
  keyCopy = key;
  reportedItemVersionForIdentifier = [(MZUppSyncProcessor *)self reportedItemVersionForIdentifier];
  *version = [reportedItemVersionForIdentifier objectForKey:keyCopy];

  metadataItemsToCommitToKVSStorage = [(MZUppSyncProcessor *)self metadataItemsToCommitToKVSStorage];
  v10 = [metadataItemsToCommitToKVSStorage objectForKey:keyCopy];

  keyValueStorePayload = [v10 keyValueStorePayload];

  return keyValueStorePayload;
}

- (void)transaction:(id)transaction willProcessResponseWithDomainVersion:(id)version
{
  if (version)
  {

    [(MZUppSyncProcessor *)self setResponseDomainVersion:version];
  }

  else
  {
    responseDomainVersion = [(MZUppSyncProcessor *)self responseDomainVersion];
    [(MZUppSyncProcessor *)self setResponseDomainVersion:responseDomainVersion];
  }
}

- (void)successfulGetTransaction:(id)transaction withData:(id)data forKey:(id)key version:(id)version finishedBlock:(id)block
{
  dataCopy = data;
  keyCopy = key;
  versionCopy = version;
  blockCopy = block;
  storageProvider = [(MZUppSyncProcessor *)self storageProvider];
  wasCanceled = [storageProvider wasCanceled];

  if (wasCanceled)
  {
    blockCopy[2](blockCopy, 0);
  }

  else
  {
    v16 = [MZUniversalPlaybackPositionMetadata metadataWithValuesItemIdentifier:keyCopy keyValueStorePayload:dataCopy];
    if (v16)
    {
      metadataItemsFromKVSStorage = [(MZUppSyncProcessor *)self metadataItemsFromKVSStorage];
      itemIdentifier = [v16 itemIdentifier];
      [metadataItemsFromKVSStorage setObject:v16 forKey:itemIdentifier];

      reportedItemVersionForIdentifier = [(MZUppSyncProcessor *)self reportedItemVersionForIdentifier];
      itemIdentifier2 = [v16 itemIdentifier];
      [reportedItemVersionForIdentifier setObject:versionCopy forKey:itemIdentifier2];

      storageProvider2 = [(MZUppSyncProcessor *)self storageProvider];
      metadataItemsFromKVSStorage2 = [(MZUppSyncProcessor *)self metadataItemsFromKVSStorage];
      [storageProvider2 setNumMetadataItemsFromKVSStorage:{objc_msgSend(metadataItemsFromKVSStorage2, "count")}];
    }

    blockCopy[2](blockCopy, 0);
  }
}

- (void)successfulSetTransaction:(id)transaction withData:(id)data forKey:(id)key version:(id)version finishedBlock:(id)block
{
  blockCopy = block;
  storageProvider = [(MZUppSyncProcessor *)self storageProvider];
  [storageProvider wasCanceled];

  blockCopy[2](blockCopy, 0);
}

- (void)conflictForSetTransaction:(id)transaction withData:(id)data forKey:(id)key version:(id)version finishedBlock:(id)block
{
  dataCopy = data;
  keyCopy = key;
  versionCopy = version;
  blockCopy = block;
  storageProvider = [(MZUppSyncProcessor *)self storageProvider];
  wasCanceled = [storageProvider wasCanceled];

  if (wasCanceled)
  {
    blockCopy[2](blockCopy, 0);
  }

  else
  {
    v16 = [MZUniversalPlaybackPositionMetadata metadataWithValuesItemIdentifier:keyCopy keyValueStorePayload:dataCopy];
    if (v16)
    {
      reportedItemVersionForIdentifier = [(MZUppSyncProcessor *)self reportedItemVersionForIdentifier];
      itemIdentifier = [v16 itemIdentifier];
      [reportedItemVersionForIdentifier setObject:versionCopy forKey:itemIdentifier];

      v19 = [(MZUppSyncProcessor *)self mergeMetadataItemFromSetResponse:v16]== 1;
    }

    else
    {
      v19 = 0;
    }

    blockCopy[2](blockCopy, v19);
  }
}

- (MZUppSyncProcessorStorageProviding)storageProvider
{
  WeakRetained = objc_loadWeakRetained(&self->_storageProvider);

  return WeakRetained;
}

@end