@interface FrequentlyVisitedSitesController
+ (FrequentlyVisitedSitesController)sharedController;
- (FrequentlyVisitedSitesController)initWithBookmarkCollection:(id)collection history:(id)history bannedURLStore:(id)store tabCollection:(id)tabCollection profileIdentifier:(id)identifier;
- (id)_canonicalizedFavoritesURLStringSet;
- (id)_frequentlyVisitedSitesURLStringSet;
- (id)frequentlyVisitedSites;
- (void)_associateHistoryToFrequentlyVisitedSites;
- (void)_deleteFrequentlyVisistedSiteInCurrentPofile:(id)pofile;
- (void)_historyWasLoaded:(id)loaded;
- (void)_saveFrequentlyVisitedSites:(id)sites completionHandler:(id)handler;
- (void)_updateCachedFrequentlyVisitedSitesIfNecessary:(id)necessary;
- (void)banFrequentlyVisitedSite:(id)site inMemoryBookmarkChangeTrackingAvailable:(BOOL)available;
- (void)clearFrequentlyVisitedSites;
- (void)dealloc;
- (void)openNewRadarProblemURLForFrequentlyVisitedSite:(id)site;
- (void)promoteFrequentlyVisitedSite:(id)site toFavoriteAtIndex:(unint64_t)index;
- (void)saveFrequentlyVisitedSitesToBookmarksDBWithCompletion:(id)completion;
@end

@implementation FrequentlyVisitedSitesController

+ (FrequentlyVisitedSitesController)sharedController
{
  nSClassFromString(@"Application") = [NSClassFromString(@"Application") sharedApplication];
  historyController = [nSClassFromString(@"Application") historyController];

  v4 = [historyController frequentlyVisitedSitesControllerForProfileIdentifier:WBSDefaultProfileIdentifier loadIfNeeded:1];

  return v4;
}

- (FrequentlyVisitedSitesController)initWithBookmarkCollection:(id)collection history:(id)history bannedURLStore:(id)store tabCollection:(id)tabCollection profileIdentifier:(id)identifier
{
  collectionCopy = collection;
  tabCollectionCopy = tabCollection;
  v25.receiver = self;
  v25.super_class = FrequentlyVisitedSitesController;
  v15 = [(FrequentlyVisitedSitesController *)&v25 initWithHistory:history bannedURLStore:store profileIdentifier:identifier];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_bookmarkCollection, collection);
    objc_storeStrong(&v16->_tabCollection, tabCollection);
    if ([*&v16->WBSFrequentlyVisitedSitesController_opaque[OBJC_IVAR___WBSFrequentlyVisitedSitesController__profileIdentifier] isEqualToString:WBSDefaultProfileIdentifier])
    {
      frequentlyVisitedSitesList = [(WebBookmarkCollection *)v16->_bookmarkCollection frequentlyVisitedSitesList];
      v18 = frequentlyVisitedSitesList;
      if (frequentlyVisitedSitesList)
      {
        bookmarkArray = [frequentlyVisitedSitesList bookmarkArray];
        v20 = [bookmarkArray mutableCopy];
        cachedFrequentlyVisitedBookmarks = v16->_cachedFrequentlyVisitedBookmarks;
        v16->_cachedFrequentlyVisitedBookmarks = v20;

        v16->_bookmarksNeedToSave = 1;
        [(WebBookmarkCollection *)v16->_bookmarkCollection deleteFrequentlyVisitedSitesFolder];
        [(FrequentlyVisitedSitesController *)v16 _postFrequentlyVisitedSitesDidChangeNotification];
      }
    }

    v22 = +[NSNotificationCenter defaultCenter];
    [v22 addObserver:v16 selector:"_historyWasLoaded:" name:WBSHistoryWasLoadedNotification object:0];

    v23 = v16;
  }

  return v16;
}

- (void)dealloc
{
  v3 = +[NSNotificationCenter defaultCenter];
  [v3 removeObserver:self];

  if (+[_SFSiteMetadataManager hasSharedSiteMetadataManager])
  {
    v4 = +[_SFSiteMetadataManager sharedSiteMetadataManager];
    lastSeenFrequentlyVisitedSites = self->_lastSeenFrequentlyVisitedSites;
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = __43__FrequentlyVisitedSitesController_dealloc__block_invoke;
    v8[3] = &unk_89D20;
    v9 = v4;
    v6 = v4;
    [(NSArray *)lastSeenFrequentlyVisitedSites enumerateObjectsUsingBlock:v8];
  }

  v7.receiver = self;
  v7.super_class = FrequentlyVisitedSitesController;
  [(FrequentlyVisitedSitesController *)&v7 dealloc];
}

void __43__FrequentlyVisitedSitesController_dealloc__block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v5 = [v2 linkPresentationMetadataProvider];
  v4 = [v3 address];

  [v5 releaseResponseForURLString:v4];
}

- (id)frequentlyVisitedSites
{
  [(FrequentlyVisitedSitesController *)self _updateCachedFrequentlyVisitedSitesIfNecessary:0];
  cachedFrequentlyVisitedBookmarks = self->_cachedFrequentlyVisitedBookmarks;

  return cachedFrequentlyVisitedBookmarks;
}

- (void)_updateCachedFrequentlyVisitedSitesIfNecessary:(id)necessary
{
  if (necessary)
  {
    necessaryCopy = necessary;
  }

  else
  {
    necessaryCopy = &__block_literal_global_4;
  }

  v5 = objc_retainBlock(necessaryCopy);
  v6 = v5;
  if (self->_cachedFrequentlyVisitedBookmarks)
  {
    v5->invoke(v5);
  }

  else
  {
    v7 = +[NSMutableArray array];
    cachedFrequentlyVisitedBookmarks = self->_cachedFrequentlyVisitedBookmarks;
    self->_cachedFrequentlyVisitedBookmarks = v7;

    tabCollection = self->_tabCollection;
    v10 = *&self->WBSFrequentlyVisitedSitesController_opaque[OBJC_IVAR___WBSFrequentlyVisitedSitesController__profileIdentifier];
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = __83__FrequentlyVisitedSitesController__updateCachedFrequentlyVisitedSitesIfNecessary___block_invoke_2;
    v11[3] = &unk_89D90;
    v11[4] = self;
    v12 = v6;
    [(WBTabCollection *)tabCollection frequentlyVisitedSitesForProfileWithIdentifier:v10 completionHandler:v11];
  }
}

void __83__FrequentlyVisitedSitesController__updateCachedFrequentlyVisitedSitesIfNecessary___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (v3)
  {
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = __83__FrequentlyVisitedSitesController__updateCachedFrequentlyVisitedSitesIfNecessary___block_invoke_3;
    block[3] = &unk_89D68;
    block[4] = *(a1 + 32);
    v6 = v3;
    v7 = *(a1 + 40);
    dispatch_async(&_dispatch_main_q, block);
  }

  else
  {
    (*(*(a1 + 40) + 16))();
  }
}

id __83__FrequentlyVisitedSitesController__updateCachedFrequentlyVisitedSitesIfNecessary___block_invoke_3(uint64_t a1)
{
  v2 = [*(a1 + 40) mutableCopy];
  v3 = *(a1 + 32);
  v4 = *(v3 + 56);
  *(v3 + 56) = v2;

  [*(a1 + 32) _associateHistoryToFrequentlyVisitedSites];
  (*(*(a1 + 48) + 16))();
  v5 = *(a1 + 32);

  return [v5 _postFrequentlyVisitedSitesDidChangeNotification];
}

- (void)clearFrequentlyVisitedSites
{
  cachedFrequentlyVisitedBookmarks = self->_cachedFrequentlyVisitedBookmarks;
  self->_cachedFrequentlyVisitedBookmarks = 0;

  [(FrequentlyVisitedSitesController *)self _clearFrequentlyVisitedSitesInBookmarksDB];
  v4.receiver = self;
  v4.super_class = FrequentlyVisitedSitesController;
  [(FrequentlyVisitedSitesController *)&v4 clearFrequentlyVisitedSites];
}

- (void)promoteFrequentlyVisitedSite:(id)site toFavoriteAtIndex:(unint64_t)index
{
  siteCopy = site;
  v7 = [WebBookmark alloc];
  title = [siteCopy title];
  address = [siteCopy address];
  configuration = [(WebBookmarkCollection *)self->_bookmarkCollection configuration];
  v14 = [v7 initWithTitle:title address:address collectionType:{objc_msgSend(configuration, "collectionType")}];

  iconData = [siteCopy iconData];
  [v14 setIconData:iconData];

  [v14 setFetchedIconData:{objc_msgSend(siteCopy, "fetchedIconData")}];
  [(FrequentlyVisitedSitesController *)self _deleteFrequentlyVisistedSiteInCurrentPofile:siteCopy];
  bookmarkCollection = self->_bookmarkCollection;
  favoritesFolder = [(WebBookmarkCollection *)bookmarkCollection favoritesFolder];
  -[WebBookmarkCollection moveBookmark:toFolderWithID:](bookmarkCollection, "moveBookmark:toFolderWithID:", v14, [favoritesFolder identifier]);

  [(WebBookmarkCollection *)self->_bookmarkCollection saveBookmark:v14];
  [(WebBookmarkCollection *)self->_bookmarkCollection reorderBookmark:v14 toIndex:index];
  LOBYTE(index) = [siteCopy isInserted];

  if ((index & 1) == 0)
  {
    [(FrequentlyVisitedSitesController *)self _postFrequentlyVisitedSitesDidChangeNotification];
  }
}

- (void)_deleteFrequentlyVisistedSiteInCurrentPofile:(id)pofile
{
  [(NSMutableArray *)self->_cachedFrequentlyVisitedBookmarks removeObject:pofile];
  [(WBTabCollection *)self->_tabCollection setFrequentlyVisitedSites:self->_cachedFrequentlyVisitedBookmarks forProfileWithIdentifier:*&self->WBSFrequentlyVisitedSitesController_opaque[OBJC_IVAR___WBSFrequentlyVisitedSitesController__profileIdentifier] completionHandler:0];

  [(FrequentlyVisitedSitesController *)self _postFrequentlyVisitedSitesDidChangeNotification];
}

- (void)banFrequentlyVisitedSite:(id)site inMemoryBookmarkChangeTrackingAvailable:(BOOL)available
{
  v5 = *&self->WBSFrequentlyVisitedSitesController_opaque[OBJC_IVAR___WBSFrequentlyVisitedSitesController__bannedURLStore];
  siteCopy = site;
  address = [siteCopy address];
  [v5 addURLString:address];

  [(FrequentlyVisitedSitesController *)self _deleteFrequentlyVisistedSiteInCurrentPofile:siteCopy];
}

- (id)_canonicalizedFavoritesURLStringSet
{
  bookmarksInFavoritesList = [(WebBookmarkCollection *)self->_bookmarkCollection bookmarksInFavoritesList];
  v3 = [[NSMutableSet alloc] initWithCapacity:{objc_msgSend(bookmarksInFavoritesList, "count")}];
  v4 = +[WBSTrialManager shared];
  isAllowFavoritesInFrequentlyVisitedEnabled = [v4 isAllowFavoritesInFrequentlyVisitedEnabled];

  if ((isAllowFavoritesInFrequentlyVisitedEnabled & 1) == 0)
  {
    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    v6 = bookmarksInFavoritesList;
    v7 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v15;
      do
      {
        for (i = 0; i != v8; i = i + 1)
        {
          if (*v15 != v9)
          {
            objc_enumerationMutation(v6);
          }

          address = [*(*(&v14 + 1) + 8 * i) address];
          safari_canonicalURLStringForFrequentlyVisitedSites = [address safari_canonicalURLStringForFrequentlyVisitedSites];

          if ([safari_canonicalURLStringForFrequentlyVisitedSites length])
          {
            [v3 addObject:safari_canonicalURLStringForFrequentlyVisitedSites];
          }
        }

        v8 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
      }

      while (v8);
    }
  }

  return v3;
}

- (id)_frequentlyVisitedSitesURLStringSet
{
  frequentlyVisitedSites = [(FrequentlyVisitedSitesController *)self frequentlyVisitedSites];
  v3 = [frequentlyVisitedSites safari_setByApplyingBlock:&__block_literal_global_17];

  return v3;
}

- (void)saveFrequentlyVisitedSitesToBookmarksDBWithCompletion:(id)completion
{
  completionCopy = completion;
  v5 = completionCopy;
  if (self->_bookmarksNeedToSave)
  {
    tabCollection = self->_tabCollection;
    cachedFrequentlyVisitedBookmarks = self->_cachedFrequentlyVisitedBookmarks;
    v8 = *&self->WBSFrequentlyVisitedSitesController_opaque[OBJC_IVAR___WBSFrequentlyVisitedSitesController__profileIdentifier];
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = __90__FrequentlyVisitedSitesController_saveFrequentlyVisitedSitesToBookmarksDBWithCompletion___block_invoke;
    v9[3] = &unk_89DF8;
    v10 = completionCopy;
    [(WBTabCollection *)tabCollection setFrequentlyVisitedSites:cachedFrequentlyVisitedBookmarks forProfileWithIdentifier:v8 completionHandler:v9];
    self->_bookmarksNeedToSave = 0;
  }

  else
  {
    completionCopy[2](completionCopy);
  }
}

- (void)_saveFrequentlyVisitedSites:(id)sites completionHandler:(id)handler
{
  sitesCopy = sites;
  handlerCopy = handler;
  v8 = [(WBTabCollection *)self->_tabCollection frequentlyVisitedSitesFolderIDForProfileWithIdentifier:*&self->WBSFrequentlyVisitedSitesController_opaque[OBJC_IVAR___WBSFrequentlyVisitedSitesController__profileIdentifier]];
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = __82__FrequentlyVisitedSitesController__saveFrequentlyVisitedSites_completionHandler___block_invoke;
  v11[3] = &unk_89E20;
  v12 = sitesCopy;
  selfCopy = self;
  v15 = v8;
  v14 = handlerCopy;
  v9 = handlerCopy;
  v10 = sitesCopy;
  dispatch_async(&_dispatch_main_q, v11);
}

void __82__FrequentlyVisitedSitesController__saveFrequentlyVisitedSites_completionHandler___block_invoke(uint64_t a1)
{
  v32 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [*(a1 + 32) count]);
  v2 = +[NSMutableDictionary dictionaryWithCapacity:](NSMutableDictionary, "dictionaryWithCapacity:", [*(*(a1 + 40) + 56) count]);
  v43 = 0u;
  v44 = 0u;
  v45 = 0u;
  v46 = 0u;
  v33 = a1;
  v3 = *(*(a1 + 40) + 56);
  v4 = [v3 countByEnumeratingWithState:&v43 objects:v48 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v44;
    do
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v44 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v43 + 1) + 8 * i);
        v9 = [v8 address];
        [v2 setObject:v8 forKeyedSubscript:v9];
      }

      v5 = [v3 countByEnumeratingWithState:&v43 objects:v48 count:16];
    }

    while (v5);
  }

  v41 = 0u;
  v42 = 0u;
  v39 = 0u;
  v40 = 0u;
  v10 = v33;
  obj = *(v33 + 32);
  v11 = v32;
  v38 = [obj countByEnumeratingWithState:&v39 objects:v47 count:16];
  if (v38)
  {
    v36 = *v40;
    v35 = WebBookmarksFrequentlyVisitedSiteScoreKey;
    v37 = v2;
    do
    {
      for (j = 0; j != v38; j = j + 1)
      {
        if (*v40 != v36)
        {
          objc_enumerationMutation(obj);
        }

        v13 = *(*(&v39 + 1) + 8 * j);
        v14 = [v13 title];
        v15 = [v13 urlString];
        v16 = [v2 objectForKeyedSubscript:v15];
        if (v16)
        {
          [v13 score];
          v17 = [NSNumber numberWithFloat:?];
          [v16 setLocalAttributesValue:v17 forKey:v35];

          v18 = v16;
        }

        else
        {
          v19 = [WebBookmark alloc];
          v20 = *(v10 + 56);
          v21 = [*(*(v10 + 40) + 40) configuration];
          v22 = [v21 collectionType];
          [v13 score];
          v23 = [NSNumber numberWithFloat:?];
          v18 = [v19 initWithTitle:v14 address:v15 parentID:v20 subtype:5 deviceIdentifier:0 collectionType:v22 score:v23];

          v11 = v32;
          v10 = v33;
        }

        v24 = *(*(v10 + 40) + OBJC_IVAR___WBSFrequentlyVisitedSitesController__history);
        v25 = [v18 address];
        v26 = [NSURL URLWithString:v25];
        v27 = [v24 itemForURL:v26];
        [v18 setHistoryItem:v27];

        [v11 addObject:v18];
        v2 = v37;
      }

      v38 = [obj countByEnumeratingWithState:&v39 objects:v47 count:16];
    }

    while (v38);
  }

  v28 = *(v10 + 40);
  v29 = *(v28 + 56);
  *(v28 + 56) = v11;
  v30 = v11;

  *(*(v10 + 40) + 48) = 1;
  v31 = +[_SFSiteMetadataManager sharedSiteMetadataManager];
  [v31 scheduleLowPriorityRequestForBookmarks:*(*(v10 + 40) + 56)];

  (*(*(v10 + 48) + 16))();
}

- (void)_historyWasLoaded:(id)loaded
{
  [(FrequentlyVisitedSitesController *)self _associateHistoryToFrequentlyVisitedSites];

  [(FrequentlyVisitedSitesController *)self _frequentlyVisitedSitesDidLoadHistory];
}

- (void)_associateHistoryToFrequentlyVisitedSites
{
  cachedFrequentlyVisitedBookmarks = self->_cachedFrequentlyVisitedBookmarks;
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = __77__FrequentlyVisitedSitesController__associateHistoryToFrequentlyVisitedSites__block_invoke;
  v3[3] = &unk_89D20;
  v3[4] = self;
  [(NSMutableArray *)cachedFrequentlyVisitedBookmarks enumerateObjectsUsingBlock:v3];
}

void __77__FrequentlyVisitedSitesController__associateHistoryToFrequentlyVisitedSites__block_invoke(uint64_t a1, void *a2)
{
  v2 = *(*(a1 + 32) + OBJC_IVAR___WBSFrequentlyVisitedSitesController__history);
  v3 = a2;
  v6 = [v3 address];
  v4 = [NSURL URLWithString:v6];
  v5 = [v2 itemForURL:v4];
  [v3 setHistoryItem:v5];
}

- (void)openNewRadarProblemURLForFrequentlyVisitedSite:(id)site
{
  address = [site address];
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = __83__FrequentlyVisitedSitesController_openNewRadarProblemURLForFrequentlyVisitedSite___block_invoke;
  v5[3] = &unk_89E48;
  v5[4] = self;
  [(FrequentlyVisitedSitesController *)self descriptionOfAllFrequentlyVisitedSitesForProblematicSiteURLString:address completionHandler:v5];
}

void __83__FrequentlyVisitedSitesController_openNewRadarProblemURLForFrequentlyVisitedSite___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);
  v6 = a3;
  v7 = a2;
  v9 = [objc_opt_class() newRadarProblemURLWithInformationForProblematicFrequentlyVisitedSite:v7 informationForOtherFrequentlyVisitedSites:v6 inProfile:*(*(a1 + 32) + OBJC_IVAR___WBSFrequentlyVisitedSitesController__profileIdentifier)];

  v8 = +[LSApplicationWorkspace defaultWorkspace];
  [v8 openURL:v9 withOptions:0];
}

@end