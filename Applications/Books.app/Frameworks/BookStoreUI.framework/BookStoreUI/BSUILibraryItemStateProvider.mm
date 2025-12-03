@interface BSUILibraryItemStateProvider
+ (id)sharedInstance;
- (BOOL)_hasRemainingDownloadsForIdentifier:(id)identifier;
- (BOOL)_itemIsBeingDownloaded:(id)downloaded;
- (BOOL)_itemIsPurchasedThisSession:(id)session;
- (BOOL)_updateItemStateFieldsFromBookLibrary:(id)library;
- (BOOL)_updateItemStateFieldsFromCache:(id)cache;
- (BOOL)_updateItemStateFieldsFromJalisco:(id)jalisco;
- (BOOL)_updateItemStateFieldsFromMediaLibrary:(id)library;
- (BSUILibraryItemStateProvider)init;
- (id)_stateForItemIdentifier:(id)identifier;
- (id)itemsOfInterest;
- (void)_cacheNewPurchaseWithIdentifier:(id)identifier isPreorder:(id)preorder;
- (void)_trackChildIdentifier:(id)identifier forParentIdentifier:(id)parentIdentifier;
- (void)_untrackChildIdentifier:(id)identifier forParentIdentifier:(id)parentIdentifier;
- (void)_updateStateToDownloadFinishedForIdentifier:(id)identifier;
- (void)_updateStateToDownloadingForIdentifier:(id)identifier;
- (void)dealloc;
- (void)downloadQueue:(id)queue downloadStates:(id)states didCompleteWithError:(id)error;
- (void)downloadQueue:(id)queue downloadStatesDidChange:(id)change;
- (void)downloadQueue:(id)queue purchaseAttemptForRequest:(id)request;
- (void)updateAllItemsOfInterest;
- (void)updateFinishedState:(BOOL)state identifier:(id)identifier;
- (void)updateInterest:(id)interest;
- (void)updateItemOfInterestForItemIdentifier:(id)identifier;
- (void)updateStateToDeletedForIdentifier:(id)identifier;
- (void)updateStateToPurchaseFailedForIdentifier:(id)identifier;
- (void)updateStateToPurchasingForIdentifier:(id)identifier;
- (void)updateWantToReadState:(BOOL)state identifier:(id)identifier;
@end

@implementation BSUILibraryItemStateProvider

+ (id)sharedInstance
{
  if (qword_3CA6D0 != -1)
  {
    sub_2BCE5C();
  }

  v3 = qword_3CA6C8;

  return v3;
}

- (BSUILibraryItemStateProvider)init
{
  v46.receiver = self;
  v46.super_class = BSUILibraryItemStateProvider;
  v2 = [(BSUILibraryItemStateProvider *)&v46 init];
  if (v2)
  {
    v3 = dispatch_queue_create("BSUILibraryItemStateProvider.access", 0);
    accessQ = v2->_accessQ;
    v2->_accessQ = v3;

    v5 = dispatch_queue_create("BSUILibraryItemStateProvider.fileWrites.monitoring", 0);
    fileChangesQ = v2->_fileChangesQ;
    v2->_fileChangesQ = v5;

    v7 = [[BSUILibraryItemStateCenter alloc] initWithProvider:v2];
    stateCenter = v2->_stateCenter;
    v2->_stateCenter = v7;

    v9 = +[BLDownloadQueue sharedInstance];
    [v9 addObserver:v2];

    v10 = +[NSMutableDictionary dictionary];
    itemStateCache = v2->_itemStateCache;
    v2->_itemStateCache = v10;

    v12 = +[NSMutableDictionary dictionary];
    itemWantToReadStateCache = v2->_itemWantToReadStateCache;
    v2->_itemWantToReadStateCache = v12;

    v14 = +[NSMutableDictionary dictionary];
    itemFinishedStateCache = v2->_itemFinishedStateCache;
    v2->_itemFinishedStateCache = v14;

    v16 = +[NSMutableSet set];
    downloadingItems = v2->_downloadingItems;
    v2->_downloadingItems = v16;

    v18 = +[NSMutableDictionary dictionary];
    purchasesMadeThisSession = v2->_purchasesMadeThisSession;
    v2->_purchasesMadeThisSession = v18;

    v20 = +[NSMutableDictionary dictionary];
    parentIdentifierForStoreIdentifierMap = v2->_parentIdentifierForStoreIdentifierMap;
    v2->_parentIdentifierForStoreIdentifierMap = v20;

    v22 = +[NSMutableDictionary dictionary];
    childIdentifiersForParentIdentifierMap = v2->_childIdentifiersForParentIdentifierMap;
    v2->_childIdentifiersForParentIdentifierMap = v22;

    v24 = +[BUAccountsProvider sharedProvider];
    [v24 addObserver:v2 accountTypes:1];

    v25 = +[MPMediaLibrary defaultMediaLibrary];
    v26 = [MPMediaPropertyPredicate predicateWithValue:&off_39B380 forProperty:MPMediaItemPropertyMediaType];
    [v25 addLibraryFilterPredicate:v26];

    v27 = +[NSRunLoop mainRunLoop];
    [MPMediaLibrary setRunLoopForNotifications:v27];

    v28 = +[NSNotificationCenter defaultCenter];
    [v28 addObserver:v2 selector:"_mediaLibraryDidChanged:" name:MPMediaLibraryDidChangeNotification object:0];

    v29 = +[MPMediaLibrary defaultMediaLibrary];
    [v29 beginGeneratingLibraryChangeNotifications];

    v30 = +[NSNotificationCenter defaultCenter];
    v31 = +[NSOperationQueue mainQueue];
    v32 = BLDownloadQueuePurchaseSucceededNotification;
    v44[0] = _NSConcreteStackBlock;
    v44[1] = 3221225472;
    v44[2] = sub_ACD4;
    v44[3] = &unk_386FB0;
    v33 = v2;
    v45 = v33;
    v34 = [v30 addObserverForName:v32 object:0 queue:v31 usingBlock:v44];
    [(BSUILibraryItemStateProvider *)v33 setPurchaseSucceededObserver:v34];

    v35 = BLDownloadQueuePurchaseFailedNotification;
    v39 = _NSConcreteStackBlock;
    v40 = 3221225472;
    v41 = sub_AFC8;
    v42 = &unk_386FB0;
    v36 = v33;
    v43 = v36;
    v37 = [v30 addObserverForName:v35 object:0 queue:v31 usingBlock:&v39];
    [(BSUILibraryItemStateProvider *)v36 setPurchaseFailedObserver:v37, v39, v40, v41, v42];
  }

  return v2;
}

- (void)dealloc
{
  accessQ = self->_accessQ;
  self->_accessQ = 0;

  fileChangesQ = self->_fileChangesQ;
  self->_fileChangesQ = 0;

  itemStateCache = self->_itemStateCache;
  self->_itemStateCache = 0;

  itemWantToReadStateCache = self->_itemWantToReadStateCache;
  self->_itemWantToReadStateCache = 0;

  itemFinishedStateCache = self->_itemFinishedStateCache;
  self->_itemFinishedStateCache = 0;

  itemIdentifiers = self->_itemIdentifiers;
  self->_itemIdentifiers = 0;

  v9 = +[BUAccountsProvider sharedProvider];
  [v9 removeObserver:self accountTypes:1];

  v10 = +[BLDownloadQueue sharedInstance];
  [v10 removeObserver:self];

  v11 = +[NSNotificationCenter defaultCenter];
  [v11 removeObserver:self->_purchaseSucceededObserver name:BLDownloadQueuePurchaseSucceededNotification object:0];
  [v11 removeObserver:self->_purchaseFailedObserver name:BLDownloadQueuePurchaseFailedNotification object:0];

  v12.receiver = self;
  v12.super_class = BSUILibraryItemStateProvider;
  [(BSUILibraryItemStateProvider *)&v12 dealloc];
}

- (void)updateStateToPurchasingForIdentifier:(id)identifier
{
  identifierCopy = identifier;
  accessQ = self->_accessQ;
  v8 = _NSConcreteStackBlock;
  v9 = 3221225472;
  v10 = sub_B2F8;
  v11 = &unk_386D98;
  selfCopy = self;
  v13 = identifierCopy;
  v6 = identifierCopy;
  dispatch_sync(accessQ, &v8);
  selfCopy = [(BSUILibraryItemStateProvider *)self _stateForItemIdentifier:v6, v8, v9, v10, v11, selfCopy];
  [(BSUILibraryItemStateCenter *)self->_stateCenter updateItemWithIdentifier:v6 state:selfCopy];
}

- (void)updateStateToPurchaseFailedForIdentifier:(id)identifier
{
  identifierCopy = identifier;
  accessQ = self->_accessQ;
  v8 = _NSConcreteStackBlock;
  v9 = 3221225472;
  v10 = sub_B3D4;
  v11 = &unk_386D98;
  selfCopy = self;
  v13 = identifierCopy;
  v6 = identifierCopy;
  dispatch_sync(accessQ, &v8);
  selfCopy = [(BSUILibraryItemStateProvider *)self _stateForItemIdentifier:v6, v8, v9, v10, v11, selfCopy];
  [(BSUILibraryItemStateCenter *)self->_stateCenter updateItemWithIdentifier:v6 state:selfCopy];
}

- (void)updateStateToDeletedForIdentifier:(id)identifier
{
  identifierCopy = identifier;
  accessQ = self->_accessQ;
  v8 = _NSConcreteStackBlock;
  v9 = 3221225472;
  v10 = sub_B4AC;
  v11 = &unk_386D98;
  selfCopy = self;
  v13 = identifierCopy;
  v6 = identifierCopy;
  dispatch_sync(accessQ, &v8);
  selfCopy = [(BSUILibraryItemStateProvider *)self _stateForItemIdentifier:v6, v8, v9, v10, v11, selfCopy];
  [(BSUILibraryItemStateCenter *)self->_stateCenter updateItemWithIdentifier:v6 state:selfCopy];
}

- (void)updateWantToReadState:(BOOL)state identifier:(id)identifier
{
  identifierCopy = identifier;
  accessQ = self->_accessQ;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_B564;
  block[3] = &unk_386FD8;
  block[4] = self;
  v10 = identifierCopy;
  stateCopy = state;
  v8 = identifierCopy;
  dispatch_sync(accessQ, block);
}

- (void)updateFinishedState:(BOOL)state identifier:(id)identifier
{
  identifierCopy = identifier;
  accessQ = self->_accessQ;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_B670;
  block[3] = &unk_386FD8;
  block[4] = self;
  v10 = identifierCopy;
  stateCopy = state;
  v8 = identifierCopy;
  dispatch_sync(accessQ, block);
}

- (void)_cacheNewPurchaseWithIdentifier:(id)identifier isPreorder:(id)preorder
{
  identifierCopy = identifier;
  preorderCopy = preorder;
  accessQ = self->_accessQ;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_B7E4;
  block[3] = &unk_387000;
  block[4] = self;
  v13 = identifierCopy;
  v14 = preorderCopy;
  v9 = preorderCopy;
  v10 = identifierCopy;
  dispatch_sync(accessQ, block);
  v11 = [(BSUILibraryItemStateProvider *)self _stateForItemIdentifier:v10];
  [(BSUILibraryItemStateCenter *)self->_stateCenter updateItemWithIdentifier:v10 state:v11];
}

- (BOOL)_itemIsPurchasedThisSession:(id)session
{
  sessionCopy = session;
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = 0;
  accessQ = self->_accessQ;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_B8C0;
  block[3] = &unk_387028;
  v9 = sessionCopy;
  v10 = &v11;
  block[4] = self;
  v6 = sessionCopy;
  dispatch_sync(accessQ, block);
  LOBYTE(accessQ) = *(v12 + 24);

  _Block_object_dispose(&v11, 8);
  return accessQ;
}

- (void)updateAllItemsOfInterest
{
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  itemsOfInterest = [(BSUILibraryItemStateProvider *)self itemsOfInterest];
  v4 = [itemsOfInterest countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v11;
    do
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v11 != v6)
        {
          objc_enumerationMutation(itemsOfInterest);
        }

        v8 = *(*(&v10 + 1) + 8 * i);
        v9 = [(BSUILibraryItemStateProvider *)self _stateForItemIdentifier:v8];
        [(BSUILibraryItemStateCenter *)self->_stateCenter updateItemWithIdentifier:v8 state:v9];
      }

      v5 = [itemsOfInterest countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v5);
  }
}

- (void)updateItemOfInterestForItemIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v5 = [(BSUILibraryItemStateProvider *)self _stateForItemIdentifier:identifierCopy];
  [(BSUILibraryItemStateCenter *)self->_stateCenter updateItemWithIdentifier:identifierCopy state:v5];
}

- (void)updateInterest:(id)interest
{
  interestCopy = interest;
  accessQ = self->_accessQ;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_BB38;
  v7[3] = &unk_386D98;
  v7[4] = self;
  v8 = interestCopy;
  v6 = interestCopy;
  dispatch_sync(accessQ, v7);
}

- (void)_updateStateToDownloadingForIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v5 = identifierCopy;
  v12 = 0;
  v13 = &v12;
  v14 = 0x2020000000;
  v15 = 0;
  if (identifierCopy)
  {
    accessQ = self->_accessQ;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_BD04;
    block[3] = &unk_387050;
    block[4] = self;
    v7 = identifierCopy;
    v10 = v7;
    v11 = &v12;
    dispatch_sync(accessQ, block);
    if (*(v13 + 24) == 1)
    {
      v8 = BKLibraryItemStateProviderLog();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v17 = v7;
        _os_log_impl(&dword_0, v8, OS_LOG_TYPE_DEFAULT, "=> DOWNLOADING: %@", buf, 0xCu);
      }
    }
  }

  _Block_object_dispose(&v12, 8);
}

- (void)_updateStateToDownloadFinishedForIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v5 = identifierCopy;
  v12 = 0;
  v13 = &v12;
  v14 = 0x2020000000;
  v15 = 0;
  if (identifierCopy)
  {
    accessQ = self->_accessQ;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_BEF0;
    block[3] = &unk_387050;
    block[4] = self;
    v7 = identifierCopy;
    v10 = v7;
    v11 = &v12;
    dispatch_sync(accessQ, block);
    if (*(v13 + 24) == 1)
    {
      v8 = BKLibraryItemStateProviderLog();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v17 = v7;
        _os_log_impl(&dword_0, v8, OS_LOG_TYPE_DEFAULT, "=> FINISHED DOWNLOAD: %@", buf, 0xCu);
      }
    }
  }

  _Block_object_dispose(&v12, 8);
}

- (BOOL)_itemIsBeingDownloaded:(id)downloaded
{
  downloadedCopy = downloaded;
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = 0;
  accessQ = self->_accessQ;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_C024;
  block[3] = &unk_387028;
  v9 = downloadedCopy;
  v10 = &v11;
  block[4] = self;
  v6 = downloadedCopy;
  dispatch_sync(accessQ, block);
  LOBYTE(accessQ) = *(v12 + 24);

  _Block_object_dispose(&v11, 8);
  return accessQ;
}

- (BOOL)_updateItemStateFieldsFromCache:(id)cache
{
  cacheCopy = cache;
  v28 = 0;
  v29 = &v28;
  v30 = 0x2020000000;
  v31 = 0;
  itemIdentifier = [cacheCopy itemIdentifier];
  v22 = 0;
  v23 = &v22;
  v24 = 0x3032000000;
  v25 = sub_C2B0;
  v26 = sub_C2C0;
  v27 = 0;
  accessQ = self->_accessQ;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_C2C8;
  block[3] = &unk_387028;
  v21 = &v22;
  block[4] = self;
  v7 = itemIdentifier;
  v20 = v7;
  dispatch_sync(accessQ, block);
  v8 = v23;
  *(v29 + 24) = v23[5] != 0;
  [cacheCopy setLibrary:{objc_msgSend(v8[5], "longLongValue")}];
  [cacheCopy setDownload:0];
  if (v29[3])
  {
    v9 = 1;
  }

  else
  {
    v10 = self->_accessQ;
    v12 = _NSConcreteStackBlock;
    v13 = 3221225472;
    v14 = sub_C318;
    v15 = &unk_387028;
    v18 = &v28;
    selfCopy = self;
    v17 = v7;
    dispatch_sync(v10, &v12);
    if (*(v29 + 24) == 1)
    {
      [cacheCopy setLibrary:{4, v12, v13, v14, v15, selfCopy}];
      [cacheCopy setIsPurchased:1];
      [cacheCopy setDownload:1];
    }

    v9 = *(v29 + 24);
  }

  _Block_object_dispose(&v22, 8);
  _Block_object_dispose(&v28, 8);

  return v9 & 1;
}

- (BOOL)_updateItemStateFieldsFromBookLibrary:(id)library
{
  libraryCopy = library;
  itemIdentifier = [libraryCopy itemIdentifier];
  v5 = +[BLLibrary defaultBookLibrary];
  allBookItems = [v5 allBookItems];

  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v7 = allBookItems;
  v8 = [v7 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v19;
    while (2)
    {
      for (i = 0; i != v9; i = i + 1)
      {
        if (*v19 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v18 + 1) + 8 * i);
        storeIdentifier = [v12 storeIdentifier];
        v14 = [storeIdentifier isEqualToString:itemIdentifier];

        if (v14)
        {
          if ([v12 isSample])
          {
            v16 = 1;
          }

          else
          {
            v16 = 4;
          }

          [libraryCopy setLibrary:v16];
          [libraryCopy setIsPurchased:{objc_msgSend(v12, "isSample") ^ 1}];
          [libraryCopy setDownload:2];
          [libraryCopy setIsInSamples:{objc_msgSend(v12, "isSample")}];
          [libraryCopy setIsSample:{objc_msgSend(v12, "isSample")}];
          v15 = 1;
          goto LABEL_14;
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v18 objects:v22 count:16];
      if (v9)
      {
        continue;
      }

      break;
    }
  }

  v15 = 0;
LABEL_14:

  return v15;
}

- (BOOL)_updateItemStateFieldsFromMediaLibrary:(id)library
{
  libraryCopy = library;
  itemIdentifier = [libraryCopy itemIdentifier];
  v6 = +[MPMediaQuery bk_audiobooksQuery];
  if (v6 && [itemIdentifier length])
  {
    v7 = [MPMediaPropertyPredicate predicateWithValue:itemIdentifier forProperty:MPMediaItemPropertyStorePlaylistID];
    v8 = [MPMediaPropertyPredicate predicateWithValue:itemIdentifier forProperty:MPMediaItemPropertyStoreID];
    v34[0] = v7;
    v34[1] = v8;
    v9 = [NSArray arrayWithObjects:v34 count:2];
    v10 = [MPMediaCompoundAnyPredicate predicateMatchingPredicates:v9];
    [v6 addFilterPredicate:v10];

    [v6 setGroupingType:1];
    [v6 collections];
    v29 = 0u;
    v30 = 0u;
    v31 = 0u;
    obj = v32 = 0u;
    v11 = [obj countByEnumeratingWithState:&v29 objects:v33 count:16];
    if (v11)
    {
      selfCopy = self;
      v24 = v8;
      v25 = v7;
      v26 = v6;
      v28 = itemIdentifier;
      v12 = *v30;
      while (2)
      {
        for (i = 0; i != v11; i = i + 1)
        {
          if (*v30 != v12)
          {
            objc_enumerationMutation(obj);
          }

          bk_representativeItem = [*(*(&v29 + 1) + 8 * i) bk_representativeItem];
          objc_opt_class();
          v15 = [bk_representativeItem valueForProperty:MPMediaItemPropertyAlbumPersistentID];
          v16 = BUDynamicCast();

          if (v16)
          {
            bk_storeID = [bk_representativeItem bk_storeID];
            stringValue = [bk_storeID stringValue];
            v19 = [v28 isEqualToString:stringValue];

            if (v19)
            {
              objc_opt_class();
              v20 = [bk_representativeItem valueForProperty:MPMediaItemPropertyIsCloudItem];
              v11 = BUDynamicCast();

              [libraryCopy setLibrary:4];
              [libraryCopy setIsPurchased:1];
              if ([v11 BOOLValue])
              {
                v21 = BLAudiobookStreamingEnabled();
                itemIdentifier = v28;
              }

              else
              {
                itemIdentifier = v28;
                [(BSUILibraryItemStateProvider *)selfCopy _updateStateToDownloadFinishedForIdentifier:v28];
                [libraryCopy setDownload:2];
                v21 = 0;
              }

              v7 = v25;
              v6 = v26;
              v8 = v24;
              [libraryCopy setStreamable:v21];

              LOBYTE(v11) = 1;
              goto LABEL_18;
            }
          }
        }

        v11 = [obj countByEnumeratingWithState:&v29 objects:v33 count:16];
        if (v11)
        {
          continue;
        }

        break;
      }

      v6 = v26;
      itemIdentifier = v28;
      v8 = v24;
      v7 = v25;
    }

LABEL_18:
  }

  else
  {
    LOBYTE(v11) = 0;
  }

  return v11;
}

- (BOOL)_updateItemStateFieldsFromJalisco:(id)jalisco
{
  jaliscoCopy = jalisco;
  v5 = +[BUAccountsProvider sharedProvider];
  activeStoreAccount = [v5 activeStoreAccount];
  ams_DSID = [activeStoreAccount ams_DSID];

  itemIdentifier = [jaliscoCopy itemIdentifier];
  v9 = itemIdentifier;
  if (ams_DSID)
  {
    v10 = itemIdentifier == 0;
  }

  else
  {
    v10 = 1;
  }

  if (v10)
  {
    if (!itemIdentifier)
    {
      goto LABEL_15;
    }

    goto LABEL_14;
  }

  v11 = +[BLJaliscoReadOnlyDAAPClient sharedClient];
  v12 = [NSSet setWithObject:v9];
  v25 = ams_DSID;
  v13 = [NSArray arrayWithObjects:&v25 count:1];
  v14 = [v11 fetchServerItemsForStoreIDs:v12 andDSIDS:v13];

  firstObject = [v14 firstObject];
  if (!firstObject)
  {

LABEL_14:
    accessQ = self->_accessQ;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_CAB8;
    block[3] = &unk_387000;
    block[4] = self;
    v23 = v9;
    v24 = jaliscoCopy;
    dispatch_sync(accessQ, block);

LABEL_15:
    v19 = 0;
    goto LABEL_16;
  }

  v16 = firstObject;
  expectedDate = [firstObject expectedDate];

  if (expectedDate)
  {
    v18 = 3;
  }

  else
  {
    v18 = 4;
  }

  [jaliscoCopy setLibrary:v18];
  v19 = 1;
  [jaliscoCopy setIsPurchased:1];
LABEL_16:

  return v19;
}

- (id)_stateForItemIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v5 = objc_alloc_init(PPLibraryItemState);
  [(PPLibraryItemState *)v5 setItemIdentifier:identifierCopy];
  [(PPLibraryItemState *)v5 setLibrary:0];
  [(PPLibraryItemState *)v5 setDownload:0];
  [(PPLibraryItemState *)v5 setIsInSamples:0];
  [(PPLibraryItemState *)v5 setIsSample:0];
  [(PPLibraryItemState *)v5 setUpdateAvailable:0];
  [(PPLibraryItemState *)v5 setAssetIsPreorderable:0];
  [(PPLibraryItemState *)v5 setIsPurchased:0];
  v44 = 0;
  v45 = &v44;
  v46 = 0x3032000000;
  v47 = sub_C2B0;
  v48 = sub_C2C0;
  v49 = 0;
  accessQ = self->_accessQ;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_D00C;
  block[3] = &unk_387028;
  v43 = &v44;
  block[4] = self;
  v7 = identifierCopy;
  v42 = v7;
  dispatch_sync(accessQ, block);
  if (!v45[5])
  {
    v8 = kBKCollectionDefaultIDWantToRead;
    v39[0] = _NSConcreteStackBlock;
    v39[1] = 3221225472;
    v39[2] = sub_D05C;
    v39[3] = &unk_387078;
    v39[4] = self;
    v40 = v7;
    [BDSServiceCenter fetchIsAssetID:v40 inCollectionID:v8 completion:v39];
  }

  v33 = 0;
  v34 = &v33;
  v35 = 0x3032000000;
  v36 = sub_C2B0;
  v37 = sub_C2C0;
  v38 = 0;
  v9 = self->_accessQ;
  v30[0] = _NSConcreteStackBlock;
  v30[1] = 3221225472;
  v30[2] = sub_D188;
  v30[3] = &unk_387028;
  v32 = &v33;
  v30[4] = self;
  v10 = v7;
  v31 = v10;
  dispatch_sync(v9, v30);
  if (!v34[5])
  {
    v11 = +[BCCloudAssetManager sharedManager];
    assetDetailManager = [v11 assetDetailManager];

    v28[0] = _NSConcreteStackBlock;
    v28[1] = 3221225472;
    v28[2] = sub_D1D8;
    v28[3] = &unk_3870A0;
    v28[4] = self;
    v29 = v10;
    [assetDetailManager assetDetailForAssetID:v29 completion:v28];
  }

  if (![(BSUILibraryItemStateProvider *)self _updateItemStateFieldsFromMediaLibrary:v5]&& ![(BSUILibraryItemStateProvider *)self _updateItemStateFieldsFromCache:v5]&& ![(BSUILibraryItemStateProvider *)self _updateItemStateFieldsFromBookLibrary:v5])
  {
    [(BSUILibraryItemStateProvider *)self _updateItemStateFieldsFromJalisco:v5];
  }

  v13 = self->_accessQ;
  v25[0] = _NSConcreteStackBlock;
  v25[1] = 3221225472;
  v25[2] = sub_D38C;
  v25[3] = &unk_387028;
  v27 = &v44;
  v25[4] = self;
  v14 = v10;
  v26 = v14;
  dispatch_sync(v13, v25);
  -[PPLibraryItemState setWantToRead:](v5, "setWantToRead:", [v45[5] BOOLValue]);
  v15 = self->_accessQ;
  v18 = _NSConcreteStackBlock;
  v19 = 3221225472;
  v20 = sub_D3DC;
  v21 = &unk_387028;
  v24 = &v33;
  selfCopy = self;
  v16 = v14;
  v23 = v16;
  dispatch_sync(v15, &v18);
  -[PPLibraryItemState setFinished:](v5, "setFinished:", [v34[5] isFinished]);
  -[PPLibraryItemState setHasSpecifiedFinishedDate:](v5, "setHasSpecifiedFinishedDate:", [v34[5] hasSpecifiedFinishedDate]);

  _Block_object_dispose(&v33, 8);
  _Block_object_dispose(&v44, 8);

  return v5;
}

- (id)itemsOfInterest
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = sub_C2B0;
  v10 = sub_C2C0;
  v11 = 0;
  accessQ = self->_accessQ;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_D51C;
  v5[3] = &unk_3870C8;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(accessQ, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

- (void)_trackChildIdentifier:(id)identifier forParentIdentifier:(id)parentIdentifier
{
  identifierCopy = identifier;
  parentIdentifierCopy = parentIdentifier;
  v8 = parentIdentifierCopy;
  if (identifierCopy && parentIdentifierCopy)
  {
    accessQ = self->_accessQ;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_D638;
    block[3] = &unk_387000;
    block[4] = self;
    v11 = identifierCopy;
    v12 = v8;
    dispatch_sync(accessQ, block);
  }
}

- (void)_untrackChildIdentifier:(id)identifier forParentIdentifier:(id)parentIdentifier
{
  identifierCopy = identifier;
  parentIdentifierCopy = parentIdentifier;
  v8 = parentIdentifierCopy;
  if (identifierCopy && parentIdentifierCopy)
  {
    accessQ = self->_accessQ;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_D7AC;
    block[3] = &unk_387000;
    block[4] = self;
    v11 = parentIdentifierCopy;
    v12 = identifierCopy;
    dispatch_sync(accessQ, block);
  }
}

- (BOOL)_hasRemainingDownloadsForIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v5 = identifierCopy;
  v12 = 0;
  v13 = &v12;
  v14 = 0x2020000000;
  v15 = 0;
  if (identifierCopy)
  {
    accessQ = self->_accessQ;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_D90C;
    block[3] = &unk_387050;
    block[4] = self;
    v10 = identifierCopy;
    v11 = &v12;
    dispatch_sync(accessQ, block);

    v7 = *(v13 + 24);
  }

  else
  {
    v7 = 0;
  }

  _Block_object_dispose(&v12, 8);

  return v7 & 1;
}

- (void)downloadQueue:(id)queue downloadStatesDidChange:(id)change
{
  changeCopy = change;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v6 = [changeCopy countByEnumeratingWithState:&v22 objects:v32 count:16];
  if (v6)
  {
    v8 = v6;
    v9 = *v23;
    *&v7 = 138412802;
    v21 = v7;
    do
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v23 != v9)
        {
          objc_enumerationMutation(changeCopy);
        }

        v11 = *(*(&v22 + 1) + 8 * i);
        storeID = [v11 storeID];
        stringValue = [storeID stringValue];

        storePlaylistID = [v11 storePlaylistID];
        stringValue2 = [storePlaylistID stringValue];

        downloadID = [v11 downloadID];
        v17 = BKLibraryItemStateProviderLog();
        if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
        {
          *buf = v21;
          v27 = stringValue;
          v28 = 2112;
          v29 = stringValue2;
          v30 = 2114;
          v31 = downloadID;
          _os_log_debug_impl(&dword_0, v17, OS_LOG_TYPE_DEBUG, "Processing download state change: %@, parent:%@, downloadID:%{public}@", buf, 0x20u);
        }

        if (stringValue2)
        {
          v18 = stringValue2;
        }

        else
        {
          v18 = stringValue;
        }

        v19 = v18;
        if (v19)
        {
          [(BSUILibraryItemStateProvider *)self _trackChildIdentifier:stringValue forParentIdentifier:stringValue2];
          if (![(BSUILibraryItemStateProvider *)self _itemIsBeingDownloaded:v19])
          {
            if ([(BSUILibraryItemStateProvider *)self _itemIsPurchasedThisSession:v19])
            {
              [(BSUILibraryItemStateProvider *)self _updateStateToDownloadingForIdentifier:v19];
              v20 = [(BSUILibraryItemStateProvider *)self _stateForItemIdentifier:v19];
              [(BSUILibraryItemStateCenter *)self->_stateCenter updateItemWithIdentifier:v19 state:v20];
            }
          }
        }
      }

      v8 = [changeCopy countByEnumeratingWithState:&v22 objects:v32 count:16];
    }

    while (v8);
  }
}

- (void)downloadQueue:(id)queue downloadStates:(id)states didCompleteWithError:(id)error
{
  statesCopy = states;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v7 = [statesCopy countByEnumeratingWithState:&v23 objects:v33 count:16];
  if (v7)
  {
    v9 = v7;
    v10 = *v24;
    *&v8 = 138412802;
    v22 = v8;
    do
    {
      for (i = 0; i != v9; i = i + 1)
      {
        if (*v24 != v10)
        {
          objc_enumerationMutation(statesCopy);
        }

        v12 = *(*(&v23 + 1) + 8 * i);
        storeID = [v12 storeID];
        stringValue = [storeID stringValue];

        storePlaylistID = [v12 storePlaylistID];
        stringValue2 = [storePlaylistID stringValue];

        if (stringValue2)
        {
          v17 = stringValue2;
        }

        else
        {
          v17 = stringValue;
        }

        v18 = v17;
        downloadID = [v12 downloadID];
        v20 = BKLibraryItemStateProviderLog();
        if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
        {
          *buf = v22;
          v28 = stringValue;
          v29 = 2112;
          v30 = stringValue2;
          v31 = 2114;
          v32 = downloadID;
          _os_log_impl(&dword_0, v20, OS_LOG_TYPE_DEFAULT, "Processing download complete: %@, parent:%@, downloadID:%{public}@", buf, 0x20u);
        }

        if (v18)
        {
          [(BSUILibraryItemStateProvider *)self _untrackChildIdentifier:stringValue forParentIdentifier:stringValue2];
          if (![(BSUILibraryItemStateProvider *)self _hasRemainingDownloadsForIdentifier:stringValue2])
          {
            [(BSUILibraryItemStateProvider *)self _updateStateToDownloadFinishedForIdentifier:v18];
            v21 = [(BSUILibraryItemStateProvider *)self _stateForItemIdentifier:v18];
            [(BSUILibraryItemStateCenter *)self->_stateCenter updateItemWithIdentifier:v18 state:v21];
          }
        }
      }

      v9 = [statesCopy countByEnumeratingWithState:&v23 objects:v33 count:16];
    }

    while (v9);
  }
}

- (void)downloadQueue:(id)queue purchaseAttemptForRequest:(id)request
{
  storeIdentifier = [request storeIdentifier];
  stringValue = [storeIdentifier stringValue];

  v6 = stringValue;
  if (stringValue)
  {
    [(BSUILibraryItemStateProvider *)self updateStateToPurchasingForIdentifier:stringValue];
    v6 = stringValue;
  }
}

@end