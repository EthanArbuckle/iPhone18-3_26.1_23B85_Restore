@interface MusicKit_SoftLinking_MPMediaLibrary
+ (MusicKit_SoftLinking_MPMediaLibrary)deviceLibrary;
+ (NSArray)sharedLibraries;
+ (void)_handleAvailableLibrariesDidChangeNotification:(id)a3;
+ (void)beginDiscoveringMediaLibraries;
+ (void)endDiscoveringMediaLibraries;
- (BOOL)isEqual:(id)a3;
- (id)_initWithUnderlyingMediaLibrary:(id)a3;
- (int64_t)downloadSizeForModelObject:(id)a3 includingNonLibraryContent:(BOOL)a4;
- (int64_t)status;
- (void)_handleLibraryConnectionProgressDidChangeNotification:(id)a3;
- (void)_handleLibraryDidChangeNotification:(id)a3;
- (void)_handleLibraryDynamicPropertiesDidChangeNotification:(id)a3;
- (void)_handleLibraryStatusDidChangeNotification:(id)a3;
- (void)dealloc;
- (void)sdk_addItemToLibraryWithStoreID:(id)a3 completionHandler:(id)a4;
- (void)setUserRating:(double)a3 forItemWithPersistentID:(id)a4 completionHandler:(id)a5;
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

- (id)_initWithUnderlyingMediaLibrary:(id)a3
{
  v5 = a3;
  v16.receiver = self;
  v16.super_class = MusicKit_SoftLinking_MPMediaLibrary;
  v6 = [(MusicKit_SoftLinking_MPMediaLibrary *)&v16 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_underlyingMediaLibrary, a3);
    v8 = [MEMORY[0x277CCAB98] defaultCenter];
    v9 = getMPMediaLibraryDidChangeNotification();
    [v8 addObserver:v7 selector:sel__handleLibraryDidChangeNotification_ name:v9 object:v7->_underlyingMediaLibrary];

    v10 = getMPMediaLibraryDynamicPropertiesDidChangeNotification();
    [v8 addObserver:v7 selector:sel__handleLibraryDynamicPropertiesDidChangeNotification_ name:v10 object:v7->_underlyingMediaLibrary];

    v11 = getMPMediaLibraryConnectionProgressDidChange();
    [v8 addObserver:v7 selector:sel__handleLibraryConnectionProgressDidChangeNotification_ name:v11 object:v7->_underlyingMediaLibrary];

    v12 = getMPMediaLibraryStatusDidChangeNotification();
    [v8 addObserver:v7 selector:sel__handleLibraryStatusDidChangeNotification_ name:v12 object:v7->_underlyingMediaLibrary];

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
  v3 = [MEMORY[0x277CCAB98] defaultCenter];
  v4 = getMPMediaLibraryDidChangeNotification();
  [v3 removeObserver:self name:v4 object:self->_underlyingMediaLibrary];

  v5 = getMPMediaLibraryDynamicPropertiesDidChangeNotification();
  [v3 removeObserver:self name:v5 object:self->_underlyingMediaLibrary];

  v6 = getMPMediaLibraryConnectionProgressDidChange();
  [v3 removeObserver:self name:v6 object:self->_underlyingMediaLibrary];

  v7 = getMPMediaLibraryStatusDidChangeNotification();
  [v3 removeObserver:self name:v7 object:self->_underlyingMediaLibrary];

  v8.receiver = self;
  v8.super_class = MusicKit_SoftLinking_MPMediaLibrary;
  [(MusicKit_SoftLinking_MPMediaLibrary *)&v8 dealloc];
}

- (void)sdk_addItemToLibraryWithStoreID:(id)a3 completionHandler:(id)a4
{
  v6 = a4;
  underlyingMediaLibrary = self->_underlyingMediaLibrary;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __89__MusicKit_SoftLinking_MPMediaLibrary_sdk_addItemToLibraryWithStoreID_completionHandler___block_invoke;
  v9[3] = &unk_278229DE8;
  v10 = v6;
  v8 = v6;
  [(MPMediaLibrary *)underlyingMediaLibrary addItemWithProductID:a3 completionHandler:v9];
}

- (int64_t)downloadSizeForModelObject:(id)a3 includingNonLibraryContent:(BOOL)a4
{
  v68 = a4;
  v78[2] = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = [v5 _underlyingModelObject];
  v7 = [v6 identifiers];
  v8 = [v7 modelKind];
  v9 = [v8 identityKind];
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
  v12 = [v10 identityKind];
  v13 = [v9 isEqual:v12];

  if (v13)
  {
    MPMediaPropertyPredicateClass = getMPMediaPropertyPredicateClass();
    v15 = MEMORY[0x277CCABB0];
    v16 = [v7 library];
    v17 = [v15 numberWithLongLong:{objc_msgSend(v16, "persistentID")}];
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
    v25 = [MEMORY[0x277CBEB98] setWithObject:v21];
    v26 = [v24 initWithFilterPredicates:v25];
  }

  else
  {
    v27 = [v7 modelKind];
    v28 = [v27 identityKind];
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
    v31 = [v29 identityKind];
    v32 = [v28 isEqual:v31];

    if (!v32)
    {
      v65 = 0;
      goto LABEL_31;
    }

    v33 = [getMPMediaLibraryClass() defaultMediaLibrary];
    v34 = [v7 library];
    v21 = [v33 playlistWithPersistentID:{objc_msgSend(v34, "persistentID")}];

    v25 = [v21 itemsQuery];
    v26 = [v25 copy];
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
  if (v68)
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

  v59 = [v58 longLongValue];
  v60 = getMPMediaPropertyPredicateClass();
  v61 = getMPMediaItemPropertyFileSize();
  v62 = [v60 predicateWithValue:&unk_282989018 forProperty:v61];

  v63 = [v35 copy];
  [v63 addFilterPredicate:v62];
  if (v68)
  {
    [v63 setShouldIncludeNonLibraryEntities:1];
  }

  v64 = [v63 _countOfItems];

  v65 = v59 + 7000000 * v64;
LABEL_31:

  v66 = *MEMORY[0x277D85DE8];
  return v65;
}

- (void)setUserRating:(double)a3 forItemWithPersistentID:(id)a4 completionHandler:(id)a5
{
  v8 = a4;
  v9 = a5;
  v10 = -[MPMediaLibrary itemWithPersistentID:](self->_underlyingMediaLibrary, "itemWithPersistentID:", [v8 integerValue]);
  v11 = [MEMORY[0x277CCABB0] numberWithDouble:a3 * 5.0];
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
  v18 = v9;
  v15 = v9;
  [v10 setValue:v11 forProperty:v14 withCompletionBlock:v17];
}

+ (void)beginDiscoveringMediaLibraries
{
  v4 = [MEMORY[0x277CCAB98] defaultCenter];
  v3 = getMPMediaLibraryAvailableMediaLibrariesDidChangeNotification();
  [v4 addObserver:a1 selector:sel__handleAvailableLibrariesDidChangeNotification_ name:v3 object:0];

  [getMPMediaLibraryClass() beginDiscoveringMediaLibraries];
}

+ (void)endDiscoveringMediaLibraries
{
  [getMPMediaLibraryClass() endDiscoveringMediaLibraries];
  v4 = [MEMORY[0x277CCAB98] defaultCenter];
  v3 = getMPMediaLibraryAvailableMediaLibrariesDidChangeNotification();
  [v4 removeObserver:a1 name:v3 object:0];
}

+ (NSArray)sharedLibraries
{
  v18 = *MEMORY[0x277D85DE8];
  v3 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v4 = [getMPMediaLibraryClass() sharedMediaLibraries];
  v5 = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
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
          objc_enumerationMutation(v4);
        }

        v9 = [[a1 alloc] _initWithUnderlyingMediaLibrary:*(*(&v13 + 1) + 8 * i)];
        [v3 addObject:v9];
      }

      v6 = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
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

- (void)_handleLibraryDidChangeNotification:(id)a3
{
  v4 = MEMORY[0x277CCAB98];
  v5 = a3;
  v7 = [v4 defaultCenter];
  v6 = [v5 userInfo];

  [v7 postNotificationName:@"MusicKit_SoftLinking_MPMediaLibraryDidChangeNotification" object:self userInfo:v6];
}

- (void)_handleLibraryDynamicPropertiesDidChangeNotification:(id)a3
{
  v4 = MEMORY[0x277CCAB98];
  v5 = a3;
  v7 = [v4 defaultCenter];
  v6 = [v5 userInfo];

  [v7 postNotificationName:@"MusicKit_SoftLinking_MPMediaLibraryDynamicPropertiesDidChangeNotification" object:self userInfo:v6];
}

+ (void)_handleAvailableLibrariesDidChangeNotification:(id)a3
{
  v3 = MEMORY[0x277CCAB98];
  v4 = a3;
  v6 = [v3 defaultCenter];
  v5 = [v4 userInfo];

  [v6 postNotificationName:@"MusicKit_SoftLinking_MPMediaLibraryAvailableMediaLibrariesDidChangeNotification" object:0 userInfo:v5];
}

- (void)_handleLibraryConnectionProgressDidChangeNotification:(id)a3
{
  v4 = MEMORY[0x277CCAB98];
  v5 = a3;
  v7 = [v4 defaultCenter];
  v6 = [v5 userInfo];

  [v7 postNotificationName:@"MusicKit_SoftLinking_MPMediaLibraryConnectionProgressDidChangeNotification" object:self userInfo:v6];
}

- (void)_handleLibraryStatusDidChangeNotification:(id)a3
{
  v4 = MEMORY[0x277CCAB98];
  v5 = a3;
  v7 = [v4 defaultCenter];
  v6 = [v5 userInfo];

  [v7 postNotificationName:@"MusicKit_SoftLinking_MPMediaLibraryStatusDidChangeNotification" object:self userInfo:v6];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v7 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      underlyingMediaLibrary = self->_underlyingMediaLibrary;
      v6 = [(MusicKit_SoftLinking_MPMediaLibrary *)v4 _underlyingMediaLibrary];
      v7 = [(MPMediaLibrary *)underlyingMediaLibrary isEqual:v6];
    }

    else
    {
      v7 = 0;
    }
  }

  return v7;
}

@end