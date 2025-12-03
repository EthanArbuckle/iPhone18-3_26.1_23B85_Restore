@interface MusicKit_SoftLinking_MPMediaLibrary
+ (MusicKit_SoftLinking_MPMediaLibrary)deviceLibrary;
+ (NSArray)sharedLibraries;
+ (void)_handleAvailableLibrariesDidChangeNotification:(id)notification;
+ (void)beginDiscoveringMediaLibraries;
+ (void)endDiscoveringMediaLibraries;
- (BOOL)isEqual:(id)equal;
- (id)_initWithUnderlyingMediaLibrary:(id)library;
- (int64_t)downloadSizeForModelObject:(id)object includingNonLibraryContent:(BOOL)content;
- (int64_t)status;
- (void)_handleLibraryConnectionProgressDidChangeNotification:(id)notification;
- (void)_handleLibraryDidChangeNotification:(id)notification;
- (void)_handleLibraryDynamicPropertiesDidChangeNotification:(id)notification;
- (void)_handleLibraryStatusDidChangeNotification:(id)notification;
- (void)dealloc;
- (void)sdk_addItemToLibraryWithStoreID:(id)d completionHandler:(id)handler;
- (void)setUserRating:(double)rating forItemWithPersistentID:(id)d completionHandler:(id)handler;
@end

@implementation MusicKit_SoftLinking_MPMediaLibrary

+ (MusicKit_SoftLinking_MPMediaLibrary)deviceLibrary
{
  if (deviceLibrary_sOnceToken != -1)
  {
    +[MusicKit_SoftLinking_MPMediaLibrary deviceLibrary];
  }

  v3 = deviceLibrary_sDeviceMediaLibrary;

  return v3;
}

- (id)_initWithUnderlyingMediaLibrary:(id)library
{
  libraryCopy = library;
  v16.receiver = self;
  v16.super_class = MusicKit_SoftLinking_MPMediaLibrary;
  v6 = [(MusicKit_SoftLinking_MPMediaLibrary *)&v16 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_underlyingMediaLibrary, library);
    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    v9 = getMPMediaLibraryDidChangeNotification();
    [defaultCenter addObserver:v7 selector:sel__handleLibraryDidChangeNotification_ name:v9 object:v7->_underlyingMediaLibrary];

    v10 = getMPMediaLibraryDynamicPropertiesDidChangeNotification();
    [defaultCenter addObserver:v7 selector:sel__handleLibraryDynamicPropertiesDidChangeNotification_ name:v10 object:v7->_underlyingMediaLibrary];

    v11 = getMPMediaLibraryConnectionProgressDidChange();
    [defaultCenter addObserver:v7 selector:sel__handleLibraryConnectionProgressDidChangeNotification_ name:v11 object:v7->_underlyingMediaLibrary];

    v12 = getMPMediaLibraryStatusDidChangeNotification();
    [defaultCenter addObserver:v7 selector:sel__handleLibraryStatusDidChangeNotification_ name:v12 object:v7->_underlyingMediaLibrary];

    v13 = objc_alloc_init(MEMORY[0x277CCABD8]);
    operationQueue = v7->_operationQueue;
    v7->_operationQueue = v13;

    [(NSOperationQueue *)v7->_operationQueue setMaxConcurrentOperationCount:1];
    [(NSOperationQueue *)v7->_operationQueue setName:@"com.apple.MusicKit.Library.operationQueue"];
    [(NSOperationQueue *)v7->_operationQueue setQualityOfService:25];
  }

  return v7;
}

- (void)dealloc
{
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  v4 = getMPMediaLibraryDidChangeNotification();
  [defaultCenter removeObserver:self name:v4 object:self->_underlyingMediaLibrary];

  v5 = getMPMediaLibraryDynamicPropertiesDidChangeNotification();
  [defaultCenter removeObserver:self name:v5 object:self->_underlyingMediaLibrary];

  v6 = getMPMediaLibraryConnectionProgressDidChange();
  [defaultCenter removeObserver:self name:v6 object:self->_underlyingMediaLibrary];

  v7 = getMPMediaLibraryStatusDidChangeNotification();
  [defaultCenter removeObserver:self name:v7 object:self->_underlyingMediaLibrary];

  v8.receiver = self;
  v8.super_class = MusicKit_SoftLinking_MPMediaLibrary;
  [(MusicKit_SoftLinking_MPMediaLibrary *)&v8 dealloc];
}

- (void)sdk_addItemToLibraryWithStoreID:(id)d completionHandler:(id)handler
{
  handlerCopy = handler;
  underlyingMediaLibrary = self->_underlyingMediaLibrary;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __89__MusicKit_SoftLinking_MPMediaLibrary_sdk_addItemToLibraryWithStoreID_completionHandler___block_invoke;
  v9[3] = &unk_278229DE8;
  v10 = handlerCopy;
  v8 = handlerCopy;
  [(MPMediaLibrary *)underlyingMediaLibrary addItemWithProductID:d completionHandler:v9];
}

- (int64_t)downloadSizeForModelObject:(id)object includingNonLibraryContent:(BOOL)content
{
  contentCopy = content;
  v78[2] = *MEMORY[0x277D85DE8];
  objectCopy = object;
  _underlyingModelObject = [objectCopy _underlyingModelObject];
  identifiers = [_underlyingModelObject identifiers];
  modelKind = [identifiers modelKind];
  identityKind = [modelKind identityKind];
  v74 = 0;
  v75 = &v74;
  v76 = 0x2050000000;
  v10 = getMPModelAlbumKindClass_softClass;
  v77 = getMPModelAlbumKindClass_softClass;
  if (!getMPModelAlbumKindClass_softClass)
  {
    v69 = MEMORY[0x277D85DD0];
    v70 = 3221225472;
    v71 = __getMPModelAlbumKindClass_block_invoke;
    v72 = &unk_278229610;
    v73 = &v74;
    __getMPModelAlbumKindClass_block_invoke(&v69);
    v10 = v75[3];
  }

  v11 = v10;
  _Block_object_dispose(&v74, 8);
  identityKind2 = [v10 identityKind];
  v13 = [identityKind isEqual:identityKind2];

  if (v13)
  {
    MPMediaPropertyPredicateClass = getMPMediaPropertyPredicateClass();
    v15 = MEMORY[0x277CCABB0];
    library = [identifiers library];
    v17 = [v15 numberWithLongLong:{objc_msgSend(library, "persistentID")}];
    v74 = 0;
    v75 = &v74;
    v76 = 0x2020000000;
    v18 = getMPMediaItemPropertyAlbumPersistentIDSymbolLoc_ptr;
    v77 = getMPMediaItemPropertyAlbumPersistentIDSymbolLoc_ptr;
    if (!getMPMediaItemPropertyAlbumPersistentIDSymbolLoc_ptr)
    {
      v69 = MEMORY[0x277D85DD0];
      v70 = 3221225472;
      v71 = __getMPMediaItemPropertyAlbumPersistentIDSymbolLoc_block_invoke;
      v72 = &unk_278229610;
      v73 = &v74;
      v19 = MediaPlayerLibrary_7();
      v20 = dlsym(v19, "MPMediaItemPropertyAlbumPersistentID");
      *(v73[1] + 24) = v20;
      getMPMediaItemPropertyAlbumPersistentIDSymbolLoc_ptr = *(v73[1] + 24);
      v18 = v75[3];
    }

    _Block_object_dispose(&v74, 8);
    if (!v18)
    {
LABEL_32:
      +[MusicKit_SoftLinking_MPModelLibrarySearchScope _topResultsRelationshipKeyForSpecificModelObjectType:];
      __break(1u);
    }

    v21 = [MPMediaPropertyPredicateClass predicateWithValue:v17 forProperty:*v18];

    v74 = 0;
    v75 = &v74;
    v76 = 0x2050000000;
    v22 = getMPMediaQueryClass_softClass;
    v77 = getMPMediaQueryClass_softClass;
    if (!getMPMediaQueryClass_softClass)
    {
      v69 = MEMORY[0x277D85DD0];
      v70 = 3221225472;
      v71 = __getMPMediaQueryClass_block_invoke;
      v72 = &unk_278229610;
      v73 = &v74;
      __getMPMediaQueryClass_block_invoke(&v69);
      v22 = v75[3];
    }

    v23 = v22;
    _Block_object_dispose(&v74, 8);
    v24 = [v22 alloc];
    itemsQuery = [MEMORY[0x277CBEB98] setWithObject:v21];
    v26 = [v24 initWithFilterPredicates:itemsQuery];
  }

  else
  {
    modelKind2 = [identifiers modelKind];
    identityKind3 = [modelKind2 identityKind];
    v74 = 0;
    v75 = &v74;
    v76 = 0x2050000000;
    v29 = getMPModelPlaylistKindClass_softClass_0;
    v77 = getMPModelPlaylistKindClass_softClass_0;
    if (!getMPModelPlaylistKindClass_softClass_0)
    {
      v69 = MEMORY[0x277D85DD0];
      v70 = 3221225472;
      v71 = __getMPModelPlaylistKindClass_block_invoke_0;
      v72 = &unk_278229610;
      v73 = &v74;
      __getMPModelPlaylistKindClass_block_invoke_0(&v69);
      v29 = v75[3];
    }

    v30 = v29;
    _Block_object_dispose(&v74, 8);
    identityKind4 = [v29 identityKind];
    v32 = [identityKind3 isEqual:identityKind4];

    if (!v32)
    {
      v65 = 0;
      goto LABEL_31;
    }

    defaultMediaLibrary = [getMPMediaLibraryClass() defaultMediaLibrary];
    library2 = [identifiers library];
    v21 = [defaultMediaLibrary playlistWithPersistentID:{objc_msgSend(library2, "persistentID")}];

    itemsQuery = [v21 itemsQuery];
    v26 = [itemsQuery copy];
  }

  v35 = v26;

  [v35 setMediaLibrary:self->_underlyingMediaLibrary];
  v74 = 0;
  v75 = &v74;
  v76 = 0x2050000000;
  v36 = getMPMediaCompoundAllPredicateClass_softClass;
  v77 = getMPMediaCompoundAllPredicateClass_softClass;
  if (!getMPMediaCompoundAllPredicateClass_softClass)
  {
    v69 = MEMORY[0x277D85DD0];
    v70 = 3221225472;
    v71 = __getMPMediaCompoundAllPredicateClass_block_invoke;
    v72 = &unk_278229610;
    v73 = &v74;
    __getMPMediaCompoundAllPredicateClass_block_invoke(&v69);
    v36 = v75[3];
  }

  v37 = v36;
  _Block_object_dispose(&v74, 8);
  v38 = getMPMediaPropertyPredicateClass();
  v74 = 0;
  v75 = &v74;
  v76 = 0x2020000000;
  v39 = getMPMediaEntityPropertyKeepLocalSymbolLoc_ptr;
  v77 = getMPMediaEntityPropertyKeepLocalSymbolLoc_ptr;
  if (!getMPMediaEntityPropertyKeepLocalSymbolLoc_ptr)
  {
    v69 = MEMORY[0x277D85DD0];
    v70 = 3221225472;
    v71 = __getMPMediaEntityPropertyKeepLocalSymbolLoc_block_invoke;
    v72 = &unk_278229610;
    v73 = &v74;
    v40 = MediaPlayerLibrary_7();
    v41 = dlsym(v40, "MPMediaEntityPropertyKeepLocal");
    *(v73[1] + 24) = v41;
    getMPMediaEntityPropertyKeepLocalSymbolLoc_ptr = *(v73[1] + 24);
    v39 = v75[3];
  }

  _Block_object_dispose(&v74, 8);
  if (!v39)
  {
    goto LABEL_32;
  }

  v42 = *v39;
  v43 = [v38 predicateWithValue:&unk_282988FE8 forProperty:v42 comparisonType:100];
  v78[0] = v43;
  v44 = getMPMediaPropertyPredicateClass();
  v74 = 0;
  v75 = &v74;
  v76 = 0x2020000000;
  v45 = getMPMediaEntityPropertyKeepLocalStatusSymbolLoc_ptr;
  v77 = getMPMediaEntityPropertyKeepLocalStatusSymbolLoc_ptr;
  if (!getMPMediaEntityPropertyKeepLocalStatusSymbolLoc_ptr)
  {
    v69 = MEMORY[0x277D85DD0];
    v70 = 3221225472;
    v71 = __getMPMediaEntityPropertyKeepLocalStatusSymbolLoc_block_invoke;
    v72 = &unk_278229610;
    v73 = &v74;
    v46 = MediaPlayerLibrary_7();
    v47 = dlsym(v46, "MPMediaEntityPropertyKeepLocalStatus");
    *(v73[1] + 24) = v47;
    getMPMediaEntityPropertyKeepLocalStatusSymbolLoc_ptr = *(v73[1] + 24);
    v45 = v75[3];
  }

  _Block_object_dispose(&v74, 8);
  if (!v45)
  {
    goto LABEL_32;
  }

  v48 = *v45;
  v49 = [v44 predicateWithValue:&unk_282989000 forProperty:v48 comparisonType:100];
  v78[1] = v49;
  v50 = [MEMORY[0x277CBEA60] arrayWithObjects:v78 count:2];
  v51 = [v36 predicateMatchingPredicates:v50];

  v52 = [v35 copy];
  [v52 addFilterPredicate:v51];
  if (contentCopy)
  {
    [v52 setShouldIncludeNonLibraryEntities:1];
  }

  v74 = 0;
  v75 = &v74;
  v76 = 0x2020000000;
  v53 = getMPMediaQueryAggregateFunctionTotalSymbolLoc_ptr;
  v77 = getMPMediaQueryAggregateFunctionTotalSymbolLoc_ptr;
  if (!getMPMediaQueryAggregateFunctionTotalSymbolLoc_ptr)
  {
    v69 = MEMORY[0x277D85DD0];
    v70 = 3221225472;
    v71 = __getMPMediaQueryAggregateFunctionTotalSymbolLoc_block_invoke;
    v72 = &unk_278229610;
    v73 = &v74;
    v54 = MediaPlayerLibrary_7();
    v55 = dlsym(v54, "MPMediaQueryAggregateFunctionTotal");
    *(v73[1] + 24) = v55;
    getMPMediaQueryAggregateFunctionTotalSymbolLoc_ptr = *(v73[1] + 24);
    v53 = v75[3];
  }

  _Block_object_dispose(&v74, 8);
  if (!v53)
  {
    goto LABEL_32;
  }

  v56 = *v53;
  v57 = getMPMediaItemPropertyFileSize();
  v58 = [v52 valueForAggregateFunction:v56 onItemsForProperty:v57];

  longLongValue = [v58 longLongValue];
  v60 = getMPMediaPropertyPredicateClass();
  v61 = getMPMediaItemPropertyFileSize();
  v62 = [v60 predicateWithValue:&unk_282989018 forProperty:v61];

  v63 = [v35 copy];
  [v63 addFilterPredicate:v62];
  if (contentCopy)
  {
    [v63 setShouldIncludeNonLibraryEntities:1];
  }

  _countOfItems = [v63 _countOfItems];

  v65 = longLongValue + 7000000 * _countOfItems;
LABEL_31:

  v66 = *MEMORY[0x277D85DE8];
  return v65;
}

- (void)setUserRating:(double)rating forItemWithPersistentID:(id)d completionHandler:(id)handler
{
  dCopy = d;
  handlerCopy = handler;
  v10 = -[MPMediaLibrary itemWithPersistentID:](self->_underlyingMediaLibrary, "itemWithPersistentID:", [dCopy integerValue]);
  v11 = [MEMORY[0x277CCABB0] numberWithDouble:rating * 5.0];
  v24 = 0;
  v25 = &v24;
  v26 = 0x2020000000;
  v12 = getMPMediaItemPropertyRatingSymbolLoc_ptr;
  v27 = getMPMediaItemPropertyRatingSymbolLoc_ptr;
  if (!getMPMediaItemPropertyRatingSymbolLoc_ptr)
  {
    v19 = MEMORY[0x277D85DD0];
    v20 = 3221225472;
    v21 = __getMPMediaItemPropertyRatingSymbolLoc_block_invoke;
    v22 = &unk_278229610;
    v23 = &v24;
    v13 = MediaPlayerLibrary_7();
    v25[3] = dlsym(v13, "MPMediaItemPropertyRating");
    getMPMediaItemPropertyRatingSymbolLoc_ptr = *(v23[1] + 24);
    v12 = v25[3];
  }

  _Block_object_dispose(&v24, 8);
  if (!v12)
  {
    v16 = +[MusicKit_SoftLinking_MPModelLibrarySearchScope _topResultsRelationshipKeyForSpecificModelObjectType:];
    _Block_object_dispose(&v24, 8);
    _Unwind_Resume(v16);
  }

  v14 = *v12;
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __95__MusicKit_SoftLinking_MPMediaLibrary_setUserRating_forItemWithPersistentID_completionHandler___block_invoke;
  v17[3] = &unk_278229E10;
  v18 = handlerCopy;
  v15 = handlerCopy;
  [v10 setValue:v11 forProperty:v14 withCompletionBlock:v17];
}

+ (void)beginDiscoveringMediaLibraries
{
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  v3 = getMPMediaLibraryAvailableMediaLibrariesDidChangeNotification();
  [defaultCenter addObserver:self selector:sel__handleAvailableLibrariesDidChangeNotification_ name:v3 object:0];

  [getMPMediaLibraryClass() beginDiscoveringMediaLibraries];
}

+ (void)endDiscoveringMediaLibraries
{
  [getMPMediaLibraryClass() endDiscoveringMediaLibraries];
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  v3 = getMPMediaLibraryAvailableMediaLibrariesDidChangeNotification();
  [defaultCenter removeObserver:self name:v3 object:0];
}

+ (NSArray)sharedLibraries
{
  v18 = *MEMORY[0x277D85DE8];
  v3 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  sharedMediaLibraries = [getMPMediaLibraryClass() sharedMediaLibraries];
  v5 = [sharedMediaLibraries countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v14;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v14 != v7)
        {
          objc_enumerationMutation(sharedMediaLibraries);
        }

        v9 = [[self alloc] _initWithUnderlyingMediaLibrary:*(*(&v13 + 1) + 8 * i)];
        [v3 addObject:v9];
      }

      v6 = [sharedMediaLibraries countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v6);
  }

  v10 = [v3 copy];
  v11 = *MEMORY[0x277D85DE8];

  return v10;
}

- (int64_t)status
{
  result = [(MPMediaLibrary *)self->_underlyingMediaLibrary status];
  if ((result - 1) >= 3)
  {
    return 0;
  }

  return result;
}

- (void)_handleLibraryDidChangeNotification:(id)notification
{
  v4 = MEMORY[0x277CCAB98];
  notificationCopy = notification;
  defaultCenter = [v4 defaultCenter];
  userInfo = [notificationCopy userInfo];

  [defaultCenter postNotificationName:@"MusicKit_SoftLinking_MPMediaLibraryDidChangeNotification" object:self userInfo:userInfo];
}

- (void)_handleLibraryDynamicPropertiesDidChangeNotification:(id)notification
{
  v4 = MEMORY[0x277CCAB98];
  notificationCopy = notification;
  defaultCenter = [v4 defaultCenter];
  userInfo = [notificationCopy userInfo];

  [defaultCenter postNotificationName:@"MusicKit_SoftLinking_MPMediaLibraryDynamicPropertiesDidChangeNotification" object:self userInfo:userInfo];
}

+ (void)_handleAvailableLibrariesDidChangeNotification:(id)notification
{
  v3 = MEMORY[0x277CCAB98];
  notificationCopy = notification;
  defaultCenter = [v3 defaultCenter];
  userInfo = [notificationCopy userInfo];

  [defaultCenter postNotificationName:@"MusicKit_SoftLinking_MPMediaLibraryAvailableMediaLibrariesDidChangeNotification" object:0 userInfo:userInfo];
}

- (void)_handleLibraryConnectionProgressDidChangeNotification:(id)notification
{
  v4 = MEMORY[0x277CCAB98];
  notificationCopy = notification;
  defaultCenter = [v4 defaultCenter];
  userInfo = [notificationCopy userInfo];

  [defaultCenter postNotificationName:@"MusicKit_SoftLinking_MPMediaLibraryConnectionProgressDidChangeNotification" object:self userInfo:userInfo];
}

- (void)_handleLibraryStatusDidChangeNotification:(id)notification
{
  v4 = MEMORY[0x277CCAB98];
  notificationCopy = notification;
  defaultCenter = [v4 defaultCenter];
  userInfo = [notificationCopy userInfo];

  [defaultCenter postNotificationName:@"MusicKit_SoftLinking_MPMediaLibraryStatusDidChangeNotification" object:self userInfo:userInfo];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v7 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      underlyingMediaLibrary = self->_underlyingMediaLibrary;
      _underlyingMediaLibrary = [(MusicKit_SoftLinking_MPMediaLibrary *)equalCopy _underlyingMediaLibrary];
      v7 = [(MPMediaLibrary *)underlyingMediaLibrary isEqual:_underlyingMediaLibrary];
    }

    else
    {
      v7 = 0;
    }
  }

  return v7;
}

@end