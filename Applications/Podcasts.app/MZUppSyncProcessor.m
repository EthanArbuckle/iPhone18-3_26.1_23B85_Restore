@interface MZUppSyncProcessor
- (MZUppSyncProcessor)initWithStorageProviderDelegate:(id)a3;
- (MZUppSyncProcessorStorageProviding)storageProvider;
- (id)dataForSetTransaction:(id)a3 key:(id)a4 version:(id *)a5;
- (int)mergeMetadataItemFromSetResponse:(id)a3;
- (void)conflictForSetTransaction:(id)a3 withData:(id)a4 forKey:(id)a5 version:(id)a6 finishedBlock:(id)a7;
- (void)mergeMetadataItemsFromGetResponse;
- (void)successfulGetTransaction:(id)a3 withData:(id)a4 forKey:(id)a5 version:(id)a6 finishedBlock:(id)a7;
- (void)successfulSetTransaction:(id)a3 withData:(id)a4 forKey:(id)a5 version:(id)a6 finishedBlock:(id)a7;
- (void)transaction:(id)a3 willProcessResponseWithDomainVersion:(id)a4;
@end

@implementation MZUppSyncProcessor

- (MZUppSyncProcessor)initWithStorageProviderDelegate:(id)a3
{
  v4 = a3;
  v13.receiver = self;
  v13.super_class = MZUppSyncProcessor;
  v5 = [(MZUppSyncProcessor *)&v13 init];
  v6 = v5;
  if (v5)
  {
    [(MZUppSyncProcessor *)v5 setStorageProvider:v4];
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

- (int)mergeMetadataItemFromSetResponse:(id)a3
{
  v4 = a3;
  v5 = [(MZUppSyncProcessor *)self metadataItemsFromKVSStorage];
  v6 = [v4 itemIdentifier];
  [v5 setObject:v4 forKey:v6];

  v7 = [(MZUppSyncProcessor *)self storageProvider];
  v8 = [(MZUppSyncProcessor *)self metadataItemsFromKVSStorage];
  [v7 setNumMetadataItemsFromKVSStorage:{objc_msgSend(v8, "count")}];

  v9 = [(MZUppSyncProcessor *)self metadataItemsFromDataSource];
  v10 = [v4 itemIdentifier];
  v11 = [v9 objectForKey:v10];

  v27[0] = _NSConcreteStackBlock;
  v27[1] = 3221225472;
  v27[2] = sub_1000B7FA4;
  v27[3] = &unk_1004DB340;
  v27[4] = self;
  v12 = v4;
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
  v3 = [(MZUppSyncProcessor *)self metadataItemsFromDataSource];
  v4 = [(MZUppSyncProcessor *)self metadataItemsFromKVSStorage];
  [(MZUppSyncProcessor *)self metadataItemsToCommitToDataSource];
  v44 = v43 = self;
  v5 = [(MZUppSyncProcessor *)self metadataItemsToCommitToKVSStorage];
  v6 = _MTLogCategoryUPPSync();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    v56 = v3;
    v57 = 2114;
    v58 = v4;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Merging local and remote items\nlocal items = %{public}@\nremote items = %{public}@", buf, 0x16u);
  }

  v51 = 0u;
  v52 = 0u;
  v49 = 0u;
  v50 = 0u;
  v7 = [v3 allValues];
  v8 = [v7 countByEnumeratingWithState:&v49 objects:v54 count:16];
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
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v49 + 1) + 8 * i);
        v13 = [v12 itemIdentifier];
        v14 = [v4 objectForKey:v13];

        if (!v14 || ([v12 timestamp], v16 = v15, objc_msgSend(v14, "timestamp"), v16 > v17) || (objc_msgSend(v12, "timestamp"), v19 = v18, objc_msgSend(v14, "timestamp"), v19 == v20) && (objc_msgSend(v12, "isEqual:", v14) & 1) == 0)
        {
          v21 = [v12 itemIdentifier];
          [v5 setObject:v12 forKey:v21];
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v49 objects:v54 count:16];
    }

    while (v9);
  }

  v47 = 0u;
  v48 = 0u;
  v45 = 0u;
  v46 = 0u;
  v22 = [v4 allValues];
  v23 = [v22 countByEnumeratingWithState:&v45 objects:v53 count:16];
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
          objc_enumerationMutation(v22);
        }

        v27 = *(*(&v45 + 1) + 8 * j);
        v28 = [v27 itemIdentifier];
        v29 = [v5 objectForKey:v28];

        if (!v29)
        {
          v30 = [v27 itemIdentifier];
          v31 = [v3 objectForKey:v30];

          if (!v31 || ([v27 timestamp], v33 = v32, objc_msgSend(v31, "timestamp"), v33 > v34))
          {
            v35 = [v27 itemIdentifier];
            [v44 setObject:v27 forKey:v35];
          }
        }
      }

      v24 = [v22 countByEnumeratingWithState:&v45 objects:v53 count:16];
    }

    while (v24);
  }

  v36 = _MTLogCategoryUPPSync();
  if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
  {
    v37 = [(MZUppSyncProcessor *)v43 metadataItemsToCommitToDataSource];
    v38 = [(MZUppSyncProcessor *)v43 metadataItemsToCommitToKVSStorage];
    *buf = 138543618;
    v56 = v37;
    v57 = 2114;
    v58 = v38;
    _os_log_impl(&_mh_execute_header, v36, OS_LOG_TYPE_DEFAULT, "Merge result:\nmetadataItemsToCommitToDataSource = %{public}@\nmetadataItemsToCommitToKVSStorage = %{public}@", buf, 0x16u);
  }

  v39 = [(MZUppSyncProcessor *)v43 storageProvider];
  v40 = [(MZUppSyncProcessor *)v43 metadataItemsToCommitToDataSource];
  [v39 setNumMetadataItemsToCommitToDataSource:{objc_msgSend(v40, "count")}];

  v41 = [(MZUppSyncProcessor *)v43 storageProvider];
  v42 = [(MZUppSyncProcessor *)v43 metadataItemsToCommitToKVSStorage];
  [v41 setNumMetadataItemsToCommitToKVSStorage:{objc_msgSend(v42, "count")}];
}

- (id)dataForSetTransaction:(id)a3 key:(id)a4 version:(id *)a5
{
  v7 = a4;
  v8 = [(MZUppSyncProcessor *)self reportedItemVersionForIdentifier];
  *a5 = [v8 objectForKey:v7];

  v9 = [(MZUppSyncProcessor *)self metadataItemsToCommitToKVSStorage];
  v10 = [v9 objectForKey:v7];

  v11 = [v10 keyValueStorePayload];

  return v11;
}

- (void)transaction:(id)a3 willProcessResponseWithDomainVersion:(id)a4
{
  if (a4)
  {

    [(MZUppSyncProcessor *)self setResponseDomainVersion:a4];
  }

  else
  {
    v5 = [(MZUppSyncProcessor *)self responseDomainVersion];
    [(MZUppSyncProcessor *)self setResponseDomainVersion:v5];
  }
}

- (void)successfulGetTransaction:(id)a3 withData:(id)a4 forKey:(id)a5 version:(id)a6 finishedBlock:(id)a7
{
  v23 = a4;
  v11 = a5;
  v12 = a6;
  v13 = a7;
  v14 = [(MZUppSyncProcessor *)self storageProvider];
  v15 = [v14 wasCanceled];

  if (v15)
  {
    v13[2](v13, 0);
  }

  else
  {
    v16 = [MZUniversalPlaybackPositionMetadata metadataWithValuesItemIdentifier:v11 keyValueStorePayload:v23];
    if (v16)
    {
      v17 = [(MZUppSyncProcessor *)self metadataItemsFromKVSStorage];
      v18 = [v16 itemIdentifier];
      [v17 setObject:v16 forKey:v18];

      v19 = [(MZUppSyncProcessor *)self reportedItemVersionForIdentifier];
      v20 = [v16 itemIdentifier];
      [v19 setObject:v12 forKey:v20];

      v21 = [(MZUppSyncProcessor *)self storageProvider];
      v22 = [(MZUppSyncProcessor *)self metadataItemsFromKVSStorage];
      [v21 setNumMetadataItemsFromKVSStorage:{objc_msgSend(v22, "count")}];
    }

    v13[2](v13, 0);
  }
}

- (void)successfulSetTransaction:(id)a3 withData:(id)a4 forKey:(id)a5 version:(id)a6 finishedBlock:(id)a7
{
  v9 = a7;
  v8 = [(MZUppSyncProcessor *)self storageProvider];
  [v8 wasCanceled];

  v9[2](v9, 0);
}

- (void)conflictForSetTransaction:(id)a3 withData:(id)a4 forKey:(id)a5 version:(id)a6 finishedBlock:(id)a7
{
  v20 = a4;
  v11 = a5;
  v12 = a6;
  v13 = a7;
  v14 = [(MZUppSyncProcessor *)self storageProvider];
  v15 = [v14 wasCanceled];

  if (v15)
  {
    v13[2](v13, 0);
  }

  else
  {
    v16 = [MZUniversalPlaybackPositionMetadata metadataWithValuesItemIdentifier:v11 keyValueStorePayload:v20];
    if (v16)
    {
      v17 = [(MZUppSyncProcessor *)self reportedItemVersionForIdentifier];
      v18 = [v16 itemIdentifier];
      [v17 setObject:v12 forKey:v18];

      v19 = [(MZUppSyncProcessor *)self mergeMetadataItemFromSetResponse:v16]== 1;
    }

    else
    {
      v19 = 0;
    }

    v13[2](v13, v19);
  }
}

- (MZUppSyncProcessorStorageProviding)storageProvider
{
  WeakRetained = objc_loadWeakRetained(&self->_storageProvider);

  return WeakRetained;
}

@end