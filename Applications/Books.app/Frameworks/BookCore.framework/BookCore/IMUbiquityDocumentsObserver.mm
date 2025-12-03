@interface IMUbiquityDocumentsObserver
- (BCICloudIdentityToken)identity;
- (IMUbiquityDocumentsObserver)initWithDelegate:(id)delegate ubquityStatusMonitor:(id)monitor directoriesSubpath:(id)subpath;
- (IMUbiquityDocumentsObserverDelegate)delegate;
- (IMUbiquityStatusMonitor)ubiquityStatusMonitor;
- (NSString)description;
- (id)_dataURL;
- (id)_documentsURL;
- (id)_identityData;
- (id)_itemsForMetadataItems:(id)items;
- (id)_noSyncURL;
- (id)_replacementObjectForResultObject:(id)object;
- (void)dealloc;
- (void)documentsURL:(id)l;
- (void)mq_queryDidFinish:(id)finish;
- (void)mq_queryDidStart:(id)start;
- (void)mq_queryDidUpdate:(id)update;
- (void)mq_setupQuery:(id)query;
- (void)mq_tearDownQuery;
- (void)q_createSubpathDirectories;
- (void)restartQuery;
- (void)tearDownQuery;
- (void)ubiquityStatusChangedToAvailableWithNewIdentity:(id)identity oldIdentity:(id)oldIdentity;
@end

@implementation IMUbiquityDocumentsObserver

- (IMUbiquityDocumentsObserver)initWithDelegate:(id)delegate ubquityStatusMonitor:(id)monitor directoriesSubpath:(id)subpath
{
  delegateCopy = delegate;
  monitorCopy = monitor;
  subpathCopy = subpath;
  v20.receiver = self;
  v20.super_class = IMUbiquityDocumentsObserver;
  v11 = [(IMUbiquityDocumentsObserver *)&v20 init];
  v12 = v11;
  if (v11)
  {
    objc_storeWeak(&v11->_delegate, delegateCopy);
    objc_storeWeak(&v12->_ubiquityStatusMonitor, monitorCopy);
    objc_storeStrong(&v12->_directoriesSubpath, subpath);
    v13 = dispatch_queue_create("com.apple.iBooks.IMUbiquityDocumentsObserver", &_dispatch_queue_attr_concurrent);
    queue = v12->_queue;
    v12->_queue = v13;

    [monitorCopy addObserver:v12];
    v15 = v12->_queue;
    v17[0] = _NSConcreteStackBlock;
    v17[1] = 3221225472;
    v17[2] = sub_15520C;
    v17[3] = &unk_2C7BE8;
    v18 = v12;
    v19 = monitorCopy;
    dispatch_barrier_async(v15, v17);
  }

  return v12;
}

- (void)dealloc
{
  if (self->_query)
  {
    v3 = BKLibraryDataSourceUbiquityLog();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
    {
      sub_1EBBFC();
    }
  }

  v4.receiver = self;
  v4.super_class = IMUbiquityDocumentsObserver;
  [(IMUbiquityDocumentsObserver *)&v4 dealloc];
}

- (void)ubiquityStatusChangedToAvailableWithNewIdentity:(id)identity oldIdentity:(id)oldIdentity
{
  identityCopy = identity;
  queue = [(IMUbiquityDocumentsObserver *)self queue];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_155500;
  v8[3] = &unk_2C7BE8;
  v8[4] = self;
  v9 = identityCopy;
  v7 = identityCopy;
  dispatch_barrier_async(queue, v8);
}

- (void)restartQuery
{
  v3 = BKLibraryDataSourceUbiquityLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_0, v3, OS_LOG_TYPE_DEFAULT, "Starting new query", buf, 2u);
  }

  [(IMUbiquityDocumentsObserver *)self tearDownQuery];
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_1556B0;
  v4[3] = &unk_2C9960;
  v4[4] = self;
  [(IMUbiquityDocumentsObserver *)self documentsURL:v4];
}

- (void)tearDownQuery
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_15591C;
  block[3] = &unk_2C7D40;
  block[4] = self;
  dispatch_async(&_dispatch_main_q, block);
}

- (BCICloudIdentityToken)identity
{
  identity = self->_identity;
  if (!identity)
  {
    WeakRetained = objc_loadWeakRetained(&self->_ubiquityStatusMonitor);
    ubiquityIdentityToken = [WeakRetained ubiquityIdentityToken];
    v6 = self->_identity;
    self->_identity = ubiquityIdentityToken;

    identity = self->_identity;
  }

  return identity;
}

- (void)documentsURL:(id)l
{
  lCopy = l;
  if (lCopy)
  {
    queue = [(IMUbiquityDocumentsObserver *)self queue];
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_155A38;
    v6[3] = &unk_2C8790;
    v6[4] = self;
    v7 = lCopy;
    dispatch_async(queue, v6);
  }
}

- (void)mq_setupQuery:(id)query
{
  queryCopy = query;
  v5 = BKLibraryDataSourceUbiquityLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *v10 = 0;
    _os_log_impl(&dword_0, v5, OS_LOG_TYPE_DEFAULT, "Setting up query", v10, 2u);
  }

  if (!+[NSThread isMainThread])
  {
    v6 = BKLibraryDataSourceUbiquityLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      sub_1EBCA4();
    }
  }

  [(IMUbiquityDocumentsObserver *)self setQuery:queryCopy];
  v7 = +[NSNotificationCenter defaultCenter];
  [v7 addObserver:self selector:"mq_queryDidStart:" name:NSMetadataQueryDidStartGatheringNotification object:queryCopy];

  v8 = +[NSNotificationCenter defaultCenter];
  [v8 addObserver:self selector:"mq_queryDidFinish:" name:NSMetadataQueryDidFinishGatheringNotification object:queryCopy];

  v9 = +[NSNotificationCenter defaultCenter];
  [v9 addObserver:self selector:"mq_queryDidUpdate:" name:NSMetadataQueryDidUpdateNotification object:queryCopy];

  [queryCopy startQuery];
}

- (void)mq_tearDownQuery
{
  if (!+[NSThread isMainThread])
  {
    v3 = BKLibraryDataSourceUbiquityLog();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      sub_1EBCA4();
    }
  }

  query = [(IMUbiquityDocumentsObserver *)self query];
  if (query)
  {
    v5 = BKLibraryDataSourceUbiquityLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      sub_1EBCE4();
    }

    [(IMUbiquityDocumentsObserver *)self setQuery:0];
    [query stopQuery];
    v6 = +[NSNotificationCenter defaultCenter];
    [v6 removeObserver:self name:NSMetadataQueryDidStartGatheringNotification object:query];

    v7 = +[NSNotificationCenter defaultCenter];
    [v7 removeObserver:self name:NSMetadataQueryDidFinishGatheringNotification object:query];

    v8 = +[NSNotificationCenter defaultCenter];
    [v8 removeObserver:self name:NSMetadataQueryDidUpdateNotification object:query];
  }
}

- (void)mq_queryDidStart:(id)start
{
  v3 = BKLibraryDataSourceUbiquityLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_0, v3, OS_LOG_TYPE_DEFAULT, "Query did start", v4, 2u);
  }
}

- (void)mq_queryDidFinish:(id)finish
{
  v4 = BKLibraryDataSourceUbiquityLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_0, v4, OS_LOG_TYPE_DEFAULT, "Query did finish", buf, 2u);
  }

  query = [(IMUbiquityDocumentsObserver *)self query];
  [query disableUpdates];

  v6 = objc_alloc_init(NSMutableArray);
  query2 = [(IMUbiquityDocumentsObserver *)self query];
  v13 = _NSConcreteStackBlock;
  v14 = 3221225472;
  v15 = sub_155F84;
  v16 = &unk_2CE578;
  v8 = v6;
  v17 = v8;
  selfCopy = self;
  [query2 enumerateResultsUsingBlock:&v13];

  v9 = BKLibraryDataSourceUbiquityLog();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = [v8 count];
    *buf = 134218242;
    v20 = v10;
    v21 = 2112;
    v22 = v8;
    _os_log_impl(&dword_0, v9, OS_LOG_TYPE_DEFAULT, "Found %lu downloaded items:%@", buf, 0x16u);
  }

  delegate = [(IMUbiquityDocumentsObserver *)self delegate];
  [delegate ubiquityDocumentsObserver:self didLoadWithItems:v8];

  query3 = [(IMUbiquityDocumentsObserver *)self query];
  [query3 enableUpdates];
}

- (void)mq_queryDidUpdate:(id)update
{
  updateCopy = update;
  v5 = BKLibraryDataSourceUbiquityLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v18 = 138412290;
    v19 = updateCopy;
    _os_log_impl(&dword_0, v5, OS_LOG_TYPE_DEFAULT, "mq_queryDidUpdate %@", &v18, 0xCu);
  }

  userInfo = [updateCopy userInfo];
  v7 = [userInfo objectForKeyedSubscript:NSMetadataQueryUpdateAddedItemsKey];
  v8 = [(IMUbiquityDocumentsObserver *)self _itemsForMetadataItems:v7];

  v9 = [userInfo objectForKeyedSubscript:NSMetadataQueryUpdateChangedItemsKey];
  v10 = [(IMUbiquityDocumentsObserver *)self _itemsForMetadataItems:v9];

  v11 = [userInfo objectForKeyedSubscript:NSMetadataQueryUpdateRemovedItemsKey];
  v12 = [(IMUbiquityDocumentsObserver *)self _itemsForMetadataItems:v11];

  v13 = BKLibraryDataSourceUbiquityLog();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
  {
    v14 = [v8 count];
    v15 = [v10 count];
    v16 = [v12 count];
    v18 = 134219266;
    v19 = v14;
    v20 = 2112;
    v21 = v8;
    v22 = 2048;
    v23 = v15;
    v24 = 2112;
    v25 = v10;
    v26 = 2048;
    v27 = v16;
    v28 = 2112;
    v29 = v12;
    _os_log_impl(&dword_0, v13, OS_LOG_TYPE_INFO, "mq_queryDidUpdate added %lu:(%@) changed %lu:(%@) removed %lu:(%@)", &v18, 0x3Eu);
  }

  delegate = [(IMUbiquityDocumentsObserver *)self delegate];
  if ([v8 count])
  {
    [delegate ubiquityDocumentsObserver:self itemsDidBecomeAvailable:v8];
  }

  if ([v12 count])
  {
    [delegate ubiquityDocumentsObserver:self itemsDidBecomeUnavailable:v12];
  }

  if ([v10 count])
  {
    [delegate ubiquityDocumentsObserver:self itemsDidChange:v10];
  }
}

- (id)_identityData
{
  identity = [(IMUbiquityDocumentsObserver *)self identity];
  if (identity)
  {
    v3 = [NSKeyedArchiver archivedDataWithRootObject:identity requiringSecureCoding:1 error:0];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (id)_documentsURL
{
  containerURL = [(IMUbiquityDocumentsObserver *)self containerURL];
  v4 = [containerURL URLByAppendingPathComponent:@"Documents"];

  directoriesSubpath = [(IMUbiquityDocumentsObserver *)self directoriesSubpath];

  if (directoriesSubpath)
  {
    directoriesSubpath2 = [(IMUbiquityDocumentsObserver *)self directoriesSubpath];
    v7 = [v4 URLByAppendingPathComponent:directoriesSubpath2];

    v4 = v7;
  }

  return v4;
}

- (id)_dataURL
{
  containerURL = [(IMUbiquityDocumentsObserver *)self containerURL];
  v4 = [containerURL URLByAppendingPathComponent:@"Data"];

  directoriesSubpath = [(IMUbiquityDocumentsObserver *)self directoriesSubpath];

  if (directoriesSubpath)
  {
    directoriesSubpath2 = [(IMUbiquityDocumentsObserver *)self directoriesSubpath];
    v7 = [v4 URLByAppendingPathComponent:directoriesSubpath2];

    v4 = v7;
  }

  return v4;
}

- (id)_noSyncURL
{
  noSyncURL = self->_noSyncURL;
  if (!noSyncURL)
  {
    containerURL = [(IMUbiquityDocumentsObserver *)self containerURL];
    v5 = containerURL;
    if (containerURL)
    {
      v6 = [containerURL URLByAppendingPathComponent:@"metadata.nosync"];
      v7 = +[NSFileManager defaultManager];
      path = [v6 path];
      v9 = [v7 fileExistsAtPath:path];

      if (v9)
      {
        v10 = BKLibraryDataSourceUbiquityLog();
        if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
        {
          sub_1EBDBC();
        }

        v11 = v6;
        v12 = self->_noSyncURL;
        self->_noSyncURL = v11;
      }

      else
      {
        v22 = 0;
        v13 = [v7 createDirectoryAtURL:v6 withIntermediateDirectories:0 attributes:0 error:&v22];
        v12 = v22;
        v14 = BKLibraryDataSourceUbiquityLog();
        v15 = v14;
        if (v13)
        {
          if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
          {
            sub_1EBD88();
          }

          v16 = v6;
          v15 = self->_noSyncURL;
          self->_noSyncURL = v16;
        }

        else if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
        {
          sub_1EBD18();
        }
      }
    }

    noSyncURL = self->_noSyncURL;
  }

  v17 = noSyncURL;
  directoriesSubpath = [(IMUbiquityDocumentsObserver *)self directoriesSubpath];

  if (directoriesSubpath)
  {
    directoriesSubpath2 = [(IMUbiquityDocumentsObserver *)self directoriesSubpath];
    v20 = [(NSURL *)v17 URLByAppendingPathComponent:directoriesSubpath2];

    v17 = v20;
  }

  return v17;
}

- (void)q_createSubpathDirectories
{
  _documentsURL = [(IMUbiquityDocumentsObserver *)self _documentsURL];
  _dataURL = [(IMUbiquityDocumentsObserver *)self _dataURL];
  _noSyncURL = [(IMUbiquityDocumentsObserver *)self _noSyncURL];
  +[NSFileManager defaultManager];
  v11[0] = 0;
  v11[1] = v11;
  v11[2] = 0x2020000000;
  v12 = 1;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_156770;
  v6 = v8[3] = &unk_2CE5A0;
  v9 = v6;
  v10 = v11;
  v7 = objc_retainBlock(v8);
  (v7[2])(v7, _documentsURL);
  (v7[2])(v7, _dataURL);
  (v7[2])(v7, _noSyncURL);

  _Block_object_dispose(v11, 8);
}

- (id)_itemsForMetadataItems:(id)items
{
  itemsCopy = items;
  +[NSMutableArray array];
  v8 = _NSConcreteStackBlock;
  v9 = 3221225472;
  v10 = sub_156924;
  v12 = v11 = &unk_2CE578;
  selfCopy = self;
  v5 = v12;
  [itemsCopy enumerateObjectsUsingBlock:&v8];

  v6 = [v5 copy];

  return v6;
}

- (id)_replacementObjectForResultObject:(id)object
{
  objectCopy = object;
  v4 = objc_opt_new();
  v5 = [objectCopy valueForAttribute:NSMetadataItemURLKey];
  [v4 setUrl:v5];

  v6 = [objectCopy valueForAttribute:NSMetadataUbiquitousItemDownloadingStatusKey];
  if ([v6 isEqualToString:NSMetadataUbiquitousItemDownloadingStatusCurrent])
  {
    v7 = 1;
  }

  else
  {
    v7 = [v6 isEqualToString:NSMetadataUbiquitousItemDownloadingStatusDownloaded];
  }

  v8 = [v6 isEqualToString:NSMetadataUbiquitousItemDownloadingStatusNotDownloaded];
  [v4 setIsLocal:v7];
  [v4 setIsNotLocal:v8];
  if ((v7 & 1) != 0 || !v8)
  {
    [v4 setIsDownloading:0];
  }

  else
  {
    v9 = [objectCopy valueForAttribute:NSMetadataUbiquitousItemIsDownloadingKey];
    bOOLValue = [v9 BOOLValue];

    [v4 setIsDownloading:bOOLValue];
    if (bOOLValue)
    {
      v11 = [objectCopy valueForAttribute:NSMetadataUbiquitousItemPercentDownloadedKey];
      [v4 setDownloadingPercent:v11];
    }
  }

  v12 = [objectCopy valueForAttribute:NSMetadataUbiquitousItemUploadingErrorKey];
  v13 = [objectCopy valueForAttribute:NSMetadataUbiquitousItemIsUploadingKey];
  v14 = [objectCopy valueForAttribute:NSMetadataUbiquitousItemIsUploadedKey];
  if (![v13 BOOLValue] || v12)
  {
    if ([v14 BOOLValue])
    {
      [v4 setIsUploaded:1];
    }

    else
    {
      [v4 setUploadingError:v12];
    }
  }

  else
  {
    [v4 setIsUploading:1];
    v15 = [objectCopy valueForAttribute:NSMetadataUbiquitousItemPercentUploadedKey];
    [v4 setUploadingPercent:v15];
  }

  objc_opt_class();
  v16 = [objectCopy valueForAttribute:@"kMDItemFSContentChangeDate"];
  v17 = BUDynamicCast();
  [v4 setContentChangedDate:v17];

  objc_opt_class();
  v18 = [objectCopy valueForAttribute:@"kMDItemFSCreationDate"];
  v19 = BUDynamicCast();
  [v4 setContentCreationDate:v19];

  objc_opt_class();
  v20 = [objectCopy valueForAttribute:@"kMDItemFSSize"];
  v21 = BUDynamicCast();
  [v4 setContentFileSize:v21];

  v22 = [objectCopy valueForAttribute:NSMetadataUbiquitousItemHasUnresolvedConflictsKey];
  [v4 setUnresolvedConflict:v22];

  return v4;
}

- (NSString)description
{
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  identity = [(IMUbiquityDocumentsObserver *)self identity];
  containerURL = [(IMUbiquityDocumentsObserver *)self containerURL];
  noSyncURL = [(IMUbiquityDocumentsObserver *)self noSyncURL];
  ubiquityStatusMonitor = [(IMUbiquityDocumentsObserver *)self ubiquityStatusMonitor];
  v9 = [NSString stringWithFormat:@"<%@(%p) identity='%@' containerURL='%@' noSyncURL='%@'>\n\tubiquityStatusMonitor = %@", v4, self, identity, containerURL, noSyncURL, ubiquityStatusMonitor];

  return v9;
}

- (IMUbiquityDocumentsObserverDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (IMUbiquityStatusMonitor)ubiquityStatusMonitor
{
  WeakRetained = objc_loadWeakRetained(&self->_ubiquityStatusMonitor);

  return WeakRetained;
}

@end