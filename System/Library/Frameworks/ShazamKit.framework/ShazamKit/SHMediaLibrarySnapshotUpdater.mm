@interface SHMediaLibrarySnapshotUpdater
- (SHMediaLibrarySnapshotUpdater)init;
- (SHMediaLibrarySnapshotUpdater)initWithMediaItemFetcher:(id)fetcher remoteConfiguration:(id)configuration;
- (void)updateChanges:(id)changes completionHandler:(id)handler;
- (void)updateSnapshot:(id)snapshot completionHandler:(id)handler;
@end

@implementation SHMediaLibrarySnapshotUpdater

- (SHMediaLibrarySnapshotUpdater)init
{
  v3 = [[SHMediaItemFetcher alloc] initWithBundleIdentifier:@"com.apple.shazamd" clientType:1];
  v4 = +[SHRemoteConfiguration sharedInstance];
  v5 = [(SHMediaLibrarySnapshotUpdater *)self initWithMediaItemFetcher:v3 remoteConfiguration:v4];

  return v5;
}

- (SHMediaLibrarySnapshotUpdater)initWithMediaItemFetcher:(id)fetcher remoteConfiguration:(id)configuration
{
  fetcherCopy = fetcher;
  configurationCopy = configuration;
  v12.receiver = self;
  v12.super_class = SHMediaLibrarySnapshotUpdater;
  v9 = [(SHMediaLibrarySnapshotUpdater *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_mediaItemFetcher, fetcher);
    objc_storeStrong(&v10->_remoteConfiguration, configuration);
  }

  return v10;
}

- (void)updateSnapshot:(id)snapshot completionHandler:(id)handler
{
  snapshotCopy = snapshot;
  handlerCopy = handler;
  changes = [snapshotCopy changes];
  v9 = [changes count];

  if (v9)
  {
    trackChanges = [snapshotCopy trackChanges];
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_10003266C;
    v12[3] = &unk_10007D3A0;
    v13 = handlerCopy;
    [(SHMediaLibrarySnapshotUpdater *)self updateChanges:trackChanges completionHandler:v12];
  }

  else
  {
    v11 = objc_alloc_init(SHMediaLibrarySnapshot);
    (*(handlerCopy + 2))(handlerCopy, v11, 0);
  }
}

- (void)updateChanges:(id)changes completionHandler:(id)handler
{
  changesCopy = changes;
  handlerCopy = handler;
  v7 = +[NSMutableSet setWithCapacity:](NSMutableSet, "setWithCapacity:", [changesCopy count]);
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v8 = changesCopy;
  v9 = [v8 countByEnumeratingWithState:&v28 objects:v34 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v29;
    do
    {
      for (i = 0; i != v10; i = i + 1)
      {
        if (*v29 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v28 + 1) + 8 * i);
        condition = [(SHMediaLibrarySnapshotUpdater *)self condition];
        if ((condition)[2](condition, v13))
        {
          libraryItem = [v13 libraryItem];
          shazamKey = [libraryItem shazamKey];

          if (!shazamKey)
          {
            continue;
          }

          condition = [v13 libraryItem];
          shazamKey2 = [condition shazamKey];
          validatedKey = [shazamKey2 validatedKey];
          [v7 addObject:validatedKey];
        }
      }

      v10 = [v8 countByEnumeratingWithState:&v28 objects:v34 count:16];
    }

    while (v10);
  }

  if ([v7 count])
  {
    v19 = sh_log_object();
    v20 = handlerCopy;
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
    {
      v21 = [v7 count];
      *buf = 134217984;
      v33 = v21;
      _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEBUG, "Trying to update %li tracks", buf, 0xCu);
    }

    mediaItemFetcher = [(SHMediaLibrarySnapshotUpdater *)self mediaItemFetcher];
    allObjects = [v7 allObjects];
    v25[0] = _NSConcreteStackBlock;
    v25[1] = 3221225472;
    v25[2] = sub_100032A20;
    v25[3] = &unk_10007DCB8;
    v26 = v8;
    v27 = handlerCopy;
    [mediaItemFetcher mediaItemsForShazamIDs:allObjects completionHandler:v25];
  }

  else
  {
    v20 = handlerCopy;
    (*(handlerCopy + 2))(handlerCopy, &__NSArray0__struct, 0);
  }
}

@end