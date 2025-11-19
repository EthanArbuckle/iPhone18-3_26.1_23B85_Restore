@interface MPMediaQuery
+ (BOOL)isFilteringDisabled;
+ (MPMediaQuery)albumsQuery;
+ (MPMediaQuery)artistsQuery;
+ (MPMediaQuery)audiobooksQuery;
+ (MPMediaQuery)compilationsQuery;
+ (MPMediaQuery)composersQuery;
+ (MPMediaQuery)genresQuery;
+ (MPMediaQuery)playlistsQuery;
+ (MPMediaQuery)podcastsQuery;
+ (MPMediaQuery)songsQuery;
+ (id)ITunesUAudioQuery;
+ (id)ITunesUQuery;
+ (id)activeGeniusPlaylist;
+ (id)albumArtistsQuery;
+ (id)audibleAudiobooksQuery;
+ (id)audioPodcastsQuery;
+ (id)currentDevicePurchasesPlaylist;
+ (id)favoriteSongsPlaylist;
+ (id)geniusMixesQuery;
+ (id)homeVideosQuery;
+ (id)movieRentalsQuery;
+ (id)moviesQuery;
+ (id)musicVideosQuery;
+ (id)playbackHistoryPlaylist;
+ (id)playlistsRecentlyAddedQuery;
+ (id)tvShowsQuery;
+ (id)videoITunesUQuery;
+ (id)videoPodcastsQuery;
+ (id)videosQuery;
+ (void)initFilteringDisabled;
+ (void)setFilteringDisabled:(BOOL)a3;
- (BOOL)MPSD_hasDownloadableEntities;
- (BOOL)MPSD_hasDownloadingEntities;
- (BOOL)_hasCollections;
- (BOOL)_hasItems;
- (BOOL)_isFilteringDisabled;
- (BOOL)_updatePredicateForProperty:(id)a3 withPropertyPredicate:(id)a4;
- (BOOL)isEqual:(id)a3;
- (BOOL)isPlaylistItemsQuery;
- (BOOL)willGroupEntities;
- (MPMediaItemCollection)_representativeCollection;
- (MPMediaItemCollection)collectionByJoiningCollections;
- (MPMediaPlaylist)containingPlaylist;
- (MPMediaQuery)initWithCoder:(id)a3;
- (MPMediaQuery)initWithCriteria:(id)a3 library:(id)a4;
- (MPMediaQuery)initWithEntities:(id)a3 entityType:(int64_t)a4;
- (MPMediaQuery)initWithFilterPredicates:(NSSet *)filterPredicates;
- (MPMediaQuery)initWithFilterPredicates:(id)a3 library:(id)a4;
- (MPMediaQuery)initWithProtobufferDecodableObject:(id)a3 library:(id)a4;
- (MPMediaQuerySectionInfo)collectionSectionInfo;
- (MPMediaQuerySectionInfo)itemSectionInfo;
- (NSArray)collectionSections;
- (NSArray)collections;
- (NSArray)itemSections;
- (NSArray)items;
- (NSSet)filterPredicates;
- (NSString)description;
- (id)MPSD_mediaQueryForDownloadableEntities;
- (id)MPSD_mediaQueryForDownloadingEntities;
- (id)_valueForAggregateFunction:(id)a3 onProperty:(id)a4 entityType:(int64_t)a5;
- (id)copyByRemovingStaticEntities;
- (id)copyBySanitizingStaticEntities;
- (id)copyWithZone:(_NSZone *)a3;
- (id)predicateForProperty:(id)a3;
- (id)protobufferEncodableObjectFromLibrary:(id)a3;
- (int64_t)_representativeCollectionGroupingType;
- (unint64_t)_countOfCollections;
- (unint64_t)_countOfItems;
- (unint64_t)_playlistItemPersistentIDForItemPersistentID:(unint64_t)a3;
- (void)_enumerateCollectionPersistentIDsInOrder:(BOOL)a3 usingBlock:(id)a4;
- (void)_enumerateCollectionsInOrder:(BOOL)a3 usingBlock:(id)a4;
- (void)_enumerateItemPersistentIDsInOrder:(BOOL)a3 usingBlock:(id)a4;
- (void)_enumerateItemsInOrder:(BOOL)a3 usingBlock:(id)a4;
- (void)_getRepresentativeCollectionGrouping:(int64_t *)a3 propertyPredicate:(id *)a4;
- (void)_setOrderingDirectionMappings:(id)a3;
- (void)_setOrderingProperties:(id)a3;
- (void)addFilterPredicate:(MPMediaPredicate *)predicate;
- (void)encodeWithCoder:(id)a3;
- (void)removeFilterPredicate:(MPMediaPredicate *)predicate;
- (void)removePredicatesForProperty:(id)a3;
- (void)setCollectionPropertiesToFetch:(id)a3;
- (void)setCriteria:(id)a3;
- (void)setFilterPredicate:(id)a3 forProperty:(id)a4;
- (void)setFilterPredicates:(NSSet *)filterPredicates;
- (void)setFilterPropertyPredicate:(id)a3;
- (void)setGroupingType:(MPMediaGrouping)groupingType;
- (void)setItemPropertiesToFetch:(id)a3;
- (void)setMediaLibrary:(id)a3;
- (void)setSortItems:(BOOL)a3;
- (void)setStaticEntities:(id)a3 entityType:(int64_t)a4;
- (void)setUseSections:(BOOL)a3;
@end

@implementation MPMediaQuery

+ (void)initFilteringDisabled
{
  if (initFilteringDisabled_onceToken != -1)
  {
    dispatch_once(&initFilteringDisabled_onceToken, &__block_literal_global_20064);
  }
}

void __37__MPMediaQuery_initFilteringDisabled__block_invoke()
{
  v0 = dispatch_queue_create("filtering_disabled", 0);
  v1 = __filteringDisabledQueue;
  __filteringDisabledQueue = v0;
}

+ (BOOL)isFilteringDisabled
{
  +[MPMediaQuery initFilteringDisabled];
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v8 = 0;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __35__MPMediaQuery_isFilteringDisabled__block_invoke;
  block[3] = &unk_1E7680410;
  block[4] = &v5;
  dispatch_sync(__filteringDisabledQueue, block);
  v2 = *(v6 + 24);
  _Block_object_dispose(&v5, 8);
  return v2;
}

+ (MPMediaQuery)playlistsQuery
{
  v2 = objc_alloc_init(MPMediaQuery);
  [(MPMediaQuery *)v2 setGroupingType:6];

  return v2;
}

+ (MPMediaQuery)songsQuery
{
  v2 = [MPMediaQuery alloc];
  v3 = MEMORY[0x1E695DFD8];
  v4 = [MPMediaPropertyPredicate predicateWithValue:&unk_1F1509940 forProperty:@"mediaType"];
  v5 = [v3 setWithObjects:{v4, 0}];
  v6 = [(MPMediaQuery *)v2 initWithFilterPredicates:v5];

  [(MPMediaQuery *)v6 setSortItems:1];

  return v6;
}

- (BOOL)_hasItems
{
  staticEntities = self->_staticEntities;
  if (staticEntities)
  {
    if (self->_staticEntityType)
    {
      v9 = 0;
      v10 = &v9;
      v11 = 0x2020000000;
      v12 = 0;
      v8[0] = MEMORY[0x1E69E9820];
      v8[1] = 3221225472;
      v8[2] = __25__MPMediaQuery__hasItems__block_invoke;
      v8[3] = &unk_1E7679C70;
      v8[4] = &v9;
      [(NSArray *)staticEntities enumerateObjectsUsingBlock:v8];
      v4 = *(v10 + 24);
      _Block_object_dispose(&v9, 8);
    }

    else
    {
      v4 = [(NSArray *)staticEntities count]!= 0;
    }

    return v4 & 1;
  }

  else
  {
    mediaLibrary = self->_mediaLibrary;
    criteria = self->_criteria;

    return [(MPMediaLibrary *)mediaLibrary _hasItemsForQueryCriteria:criteria];
  }
}

- (BOOL)_hasCollections
{
  staticEntities = self->_staticEntities;
  if (staticEntities && self->_staticEntityType == 1)
  {
    return [(NSArray *)staticEntities count:v2]!= 0;
  }

  mediaLibrary = self->_mediaLibrary;
  criteria = self->_criteria;

  return [(MPMediaLibrary *)mediaLibrary _hasCollectionsForQueryCriteria:criteria];
}

+ (MPMediaQuery)audiobooksQuery
{
  v2 = [MPMediaQuery alloc];
  v3 = MEMORY[0x1E695DFD8];
  v4 = [MEMORY[0x1E696AD98] numberWithInteger:4];
  v5 = [MPMediaPropertyPredicate predicateWithValue:v4 forProperty:@"mediaType"];
  v6 = [v3 setWithObject:v5];
  v7 = [(MPMediaQuery *)v2 initWithFilterPredicates:v6];

  [(MPMediaQuery *)v7 setGroupingType:1];
  [(MPMediaQuery *)v7 setShouldIncludeNonLibraryEntities:1];

  return v7;
}

- (NSArray)collections
{
  staticEntities = self->_staticEntities;
  if (staticEntities && self->_staticEntityType == 1)
  {
    v3 = staticEntities;
  }

  else
  {
    v3 = [(MPMediaLibrary *)self->_mediaLibrary _collectionsForQueryCriteria:self->_criteria];
  }

  return v3;
}

- (NSArray)items
{
  staticEntities = self->_staticEntities;
  if (staticEntities)
  {
    if (self->_staticEntityType)
    {
      v4 = [MEMORY[0x1E695DF70] array];
      v5 = self->_staticEntities;
      v9[0] = MEMORY[0x1E69E9820];
      v9[1] = 3221225472;
      v9[2] = __21__MPMediaQuery_items__block_invoke;
      v9[3] = &unk_1E7679C08;
      v6 = v4;
      v10 = v6;
      [(NSArray *)v5 enumerateObjectsUsingBlock:v9];

      goto LABEL_7;
    }

    v7 = staticEntities;
  }

  else
  {
    v7 = [(MPMediaLibrary *)self->_mediaLibrary _itemsForQueryCriteria:self->_criteria];
  }

  v6 = v7;
LABEL_7:

  return v6;
}

+ (id)movieRentalsQuery
{
  v2 = [MPMediaQuery alloc];
  v3 = MEMORY[0x1E695DFD8];
  v4 = [MPMediaPropertyPredicate predicateWithValue:&unk_1F1509970 forProperty:@"mediaType"];
  v5 = [v3 setWithObject:v4];
  v6 = [(MPMediaQuery *)v2 initWithFilterPredicates:v5];

  v7 = [MPMediaPropertyPredicate predicateWithValue:MEMORY[0x1E695E118] forProperty:@"isRental"];
  [(MPMediaQuery *)v6 addFilterPredicate:v7];

  return v6;
}

- (unint64_t)_countOfItems
{
  staticEntities = self->_staticEntities;
  if (staticEntities)
  {
    if (self->_staticEntityType)
    {
      v9 = 0;
      v10 = &v9;
      v11 = 0x2020000000;
      v12 = 0;
      v8[0] = MEMORY[0x1E69E9820];
      v8[1] = 3221225472;
      v8[2] = __29__MPMediaQuery__countOfItems__block_invoke;
      v8[3] = &unk_1E7679C70;
      v8[4] = &v9;
      [(NSArray *)staticEntities enumerateObjectsUsingBlock:v8];
      v4 = v10[3];
      _Block_object_dispose(&v9, 8);
      return v4;
    }

    else
    {

      return [(NSArray *)staticEntities count];
    }
  }

  else
  {
    mediaLibrary = self->_mediaLibrary;
    criteria = self->_criteria;

    return [(MPMediaLibrary *)mediaLibrary _countOfItemsForQueryCriteria:criteria];
  }
}

- (id)MPSD_mediaQueryForDownloadingEntities
{
  v38 = *MEMORY[0x1E69E9840];
  v3 = +[MPStoreDownloadManager sharedManager];
  v4 = [v3 userDownloads];

  v34 = 0u;
  v35 = 0u;
  v32 = 0u;
  v33 = 0u;
  v5 = v4;
  v6 = [v5 countByEnumeratingWithState:&v32 objects:v37 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = 0;
    v9 = *v33;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v33 != v9)
        {
          objc_enumerationMutation(v5);
        }

        v11 = *(*(&v32 + 1) + 8 * i);
        if (([v11 isFinished] & 1) == 0)
        {
          if (!v8)
          {
            v8 = objc_alloc_init(MEMORY[0x1E695DF70]);
          }

          v12 = [v11 libraryItemIdentifier];
          if (v12)
          {
            v13 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:v12];
            [v8 addObject:v13];
          }
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v32 objects:v37 count:16];
    }

    while (v7);
  }

  else
  {
    v8 = 0;
  }

  v14 = [v8 count];
  if (v14)
  {
    v15 = v14;
    v27 = self;
    v16 = malloc_type_malloc(8 * v14, 0x100004000313F17uLL);
    v28 = 0u;
    v29 = 0u;
    v30 = 0u;
    v31 = 0u;
    v17 = v8;
    v18 = [v17 countByEnumeratingWithState:&v28 objects:v36 count:16];
    if (v18)
    {
      v19 = v18;
      v20 = 0;
      v21 = *v29;
      do
      {
        v22 = 0;
        v23 = v20;
        do
        {
          if (*v29 != v21)
          {
            objc_enumerationMutation(v17);
          }

          v20 = v23 + 1;
          v16[v23++] = [*(*(&v28 + 1) + 8 * v22++) longLongValue];
        }

        while (v19 != v22);
        v19 = [v17 countByEnumeratingWithState:&v28 objects:v36 count:16];
      }

      while (v19);
    }

    v24 = [MPMediaPersistentIDsPredicate predicateWithPersistentIDs:v16 count:v15 shouldContain:1];
    free(v16);
    v25 = [(MPMediaQuery *)v27 copy];
    [v25 addFilterPredicate:v24];
  }

  else
  {
    v25 = 0;
  }

  return v25;
}

- (id)MPSD_mediaQueryForDownloadableEntities
{
  v46 = *MEMORY[0x1E69E9840];
  v2 = [(MPMediaQuery *)self copy];
  v3 = +[MPStoreDownloadManager sharedManager];
  v4 = [v3 userDownloads];

  v41 = 0u;
  v42 = 0u;
  v39 = 0u;
  v40 = 0u;
  v5 = v4;
  v6 = [v5 countByEnumeratingWithState:&v39 objects:v45 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = 0;
    v9 = *v40;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v40 != v9)
        {
          objc_enumerationMutation(v5);
        }

        v11 = *(*(&v39 + 1) + 8 * i);
        if (([v11 isFinished] & 1) == 0)
        {
          if (!v8)
          {
            v8 = objc_alloc_init(MEMORY[0x1E695DF70]);
          }

          v12 = [v11 libraryItemIdentifier];
          if (v12)
          {
            v13 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:v12];
            [v8 addObject:v13];
          }
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v39 objects:v45 count:16];
    }

    while (v7);
  }

  else
  {
    v8 = 0;
  }

  v14 = [v8 count];
  if (v14)
  {
    v33 = v14;
    v34 = v2;
    v15 = malloc_type_malloc(8 * v14, 0x100004000313F17uLL);
    v35 = 0u;
    v36 = 0u;
    v37 = 0u;
    v38 = 0u;
    v16 = v8;
    v17 = [v16 countByEnumeratingWithState:&v35 objects:v44 count:16];
    if (v17)
    {
      v18 = v17;
      v19 = 0;
      v20 = *v36;
      do
      {
        v21 = 0;
        v22 = v19;
        do
        {
          if (*v36 != v20)
          {
            objc_enumerationMutation(v16);
          }

          v19 = v22 + 1;
          v15[v22++] = [*(*(&v35 + 1) + 8 * v21++) longLongValue];
        }

        while (v18 != v21);
        v18 = [v16 countByEnumeratingWithState:&v35 objects:v44 count:16];
      }

      while (v18);
    }

    v23 = [MPMediaPersistentIDsPredicate predicateWithPersistentIDs:v15 count:v33 shouldContain:0];
    free(v15);
    v2 = v34;
  }

  else
  {
    v23 = 0;
  }

  v24 = [MPMediaPropertyPredicate predicateWithValue:MEMORY[0x1E695E110] forProperty:@"isLocal" comparisonType:0, v33];
  v25 = [MEMORY[0x1E696AD98] numberWithBool:1];
  v26 = [MPMediaPropertyPredicate predicateWithValue:v25 forProperty:@"isTemporaryCloudDownload" comparisonType:0];

  v43[0] = v24;
  v43[1] = v26;
  v27 = [MEMORY[0x1E695DEC8] arrayWithObjects:v43 count:2];
  v28 = [(MPMediaCompoundPredicate *)MPMediaCompoundAnyPredicate predicateMatchingPredicates:v27];
  [v2 addFilterPredicate:v28];

  v29 = [MEMORY[0x1E696AD98] numberWithBool:1];
  v30 = [MPMediaPropertyPredicate predicateWithValue:v29 forProperty:@"isStoreRedownloadable" comparisonType:0];
  [v2 addFilterPredicate:v30];

  if (v23)
  {
    [v2 addFilterPredicate:v23];
  }

  v31 = v2;

  return v2;
}

- (BOOL)MPSD_hasDownloadingEntities
{
  v2 = [(MPMediaQuery *)self MPSD_mediaQueryForDownloadingEntities];
  v3 = [v2 _hasItems];

  return v3;
}

- (BOOL)MPSD_hasDownloadableEntities
{
  v2 = [(MPMediaQuery *)self MPSD_mediaQueryForDownloadableEntities];
  v3 = [v2 _hasItems];

  return v3;
}

- (MPMediaItemCollection)collectionByJoiningCollections
{
  v2 = [(MPMediaQuery *)self copy];
  [v2 setGroupingType:0];
  v3 = [[MPMediaItemCollection alloc] initWithItemsQuery:v2];

  return v3;
}

- (BOOL)_updatePredicateForProperty:(id)a3 withPropertyPredicate:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(MPMediaQuery *)self predicateForProperty:v6];
  v9 = v8;
  if (!v7)
  {
    if (v8)
    {
      [(MPMediaQuery *)self removePredicatesForProperty:v6];
      goto LABEL_6;
    }

LABEL_7:
    v10 = 0;
    goto LABEL_8;
  }

  if ([v7 isEqual:v8])
  {
    goto LABEL_7;
  }

  [(MPMediaQuery *)self removePredicatesForProperty:v6];
  [(MPMediaQuery *)self addFilterPredicate:v7];
LABEL_6:
  v10 = 1;
LABEL_8:

  return v10;
}

- (void)setFilterPropertyPredicate:(id)a3
{
  v4 = a3;
  v5 = [v4 property];
  [(MPMediaQuery *)self setFilterPredicate:v4 forProperty:v5];
}

- (void)setFilterPredicate:(id)a3 forProperty:(id)a4
{
  v7 = a3;
  [(MPMediaQuery *)self removePredicatesForProperty:a4];
  v6 = v7;
  if (v7)
  {
    [(MPMediaQuery *)self addFilterPredicate:v7];
    v6 = v7;
  }
}

- (void)removePredicatesForProperty:(id)a3
{
  v18 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = [(MPMediaQuery *)self filterPredicates];
  v6 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v14;
    do
    {
      v9 = 0;
      do
      {
        if (*v14 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v13 + 1) + 8 * v9);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v11 = [v10 property];
          v12 = [v11 isEqualToString:v4];

          if (v12)
          {
            [(MPMediaQuery *)self removeFilterPredicate:v10];
          }
        }

        ++v9;
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v7);
  }
}

- (id)predicateForProperty:(id)a3
{
  v18 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = [(MPMediaQuery *)self filterPredicates];
  v6 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = *v14;
    while (2)
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v14 != v7)
        {
          objc_enumerationMutation(v5);
        }

        v9 = *(*(&v13 + 1) + 8 * i);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v10 = [v9 property];
          v11 = [v10 isEqualToString:v4];

          if (v11)
          {
            v6 = v9;
            goto LABEL_12;
          }
        }
      }

      v6 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

LABEL_12:

  return v6;
}

- (MPMediaPlaylist)containingPlaylist
{
  v2 = [(MPMediaQuery *)self predicateForProperty:@"playlistPersistentID"];
  v3 = [v2 value];

  if (v3)
  {
    v4 = -[MPMediaPlaylist initWithPersistentID:]([MPMediaPlaylist alloc], "initWithPersistentID:", [v3 unsignedLongLongValue]);
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

+ (id)favoriteSongsPlaylist
{
  v2 = +[MPMediaLibrary deviceMediaLibrary];
  v3 = [v2 favoriteSongsPlaylist];

  return v3;
}

+ (id)playbackHistoryPlaylist
{
  v2 = +[MPMediaLibrary deviceMediaLibrary];
  v3 = [v2 playbackHistoryPlaylist];

  return v3;
}

+ (id)currentDevicePurchasesPlaylist
{
  v2 = +[MPMediaQuery playlistsQuery];
  v3 = [MPMediaPropertyPredicate predicateWithValue:MEMORY[0x1E695E118] forProperty:@"isCurrentDevicePurchasesPlaylist"];
  [v2 addFilterPredicate:v3];

  v4 = [v2 collections];
  if ([v4 count])
  {
    v5 = [v4 objectAtIndex:0];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

+ (id)activeGeniusPlaylist
{
  v2 = +[MPMediaLibrary defaultMediaLibrary];
  v3 = [v2 isHomeSharingLibrary];

  if (v3)
  {
    v4 = 0;
    goto LABEL_9;
  }

  v5 = +[MPMediaQuery playlistsQuery];
  v6 = [MEMORY[0x1E696AD98] numberWithBool:1];
  v7 = [MPMediaPropertyPredicate predicateWithValue:v6 forProperty:@"isActiveGeniusPlaylist"];
  [v5 addFilterPredicate:v7];

  v8 = [v5 collections];
  v9 = [v8 count];

  if (v9)
  {
    v10 = [v5 collections];
    v4 = [v10 objectAtIndex:0];
  }

  else
  {
    v11 = +[MPMediaLibrary defaultMediaLibrary];
    v12 = [v11 writable];

    if (!v12)
    {
      v4 = 0;
      goto LABEL_8;
    }

    v10 = +[MPMediaLibrary defaultMediaLibrary];
    v13 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.MediaPlayer"];
    v14 = [v13 localizedStringForKey:@"DEFAULT_GENIUS_PLAYLIST_NAME" value:&stru_1F149ECA8 table:@"MediaPlayer"];
    v4 = [v10 addPlaylistWithName:v14 activeGeniusPlaylist:1];
  }

LABEL_8:
LABEL_9:

  return v4;
}

- (void)setCriteria:(id)a3
{
  if (self->_criteria != a3)
  {
    v5 = [a3 copy];
    criteria = self->_criteria;
    self->_criteria = v5;
  }
}

- (unint64_t)_playlistItemPersistentIDForItemPersistentID:(unint64_t)a3
{
  v19[2] = *MEMORY[0x1E69E9840];
  v5 = [(MPMediaQuery *)self copy];
  [v5 setGroupingType:6];
  v6 = [v5 collections];
  v7 = [v6 firstObject];

  if (v7)
  {
    if (([v7 playlistAttributes] & 2) != 0)
    {
      v17 = a3 | 0x8000000000000000;
    }

    else
    {
      v8 = [(MPMediaQuery *)self mediaLibrary];
      v9 = [v8 ml3Library];

      v10 = MEMORY[0x1E69B34A8];
      v11 = MEMORY[0x1E69B3428];
      v12 = [MEMORY[0x1E69B3488] predicateWithProperty:*MEMORY[0x1E69B2A98] equalToInt64:{objc_msgSend(v7, "persistentID")}];
      v19[0] = v12;
      v13 = [MEMORY[0x1E69B3488] predicateWithProperty:*MEMORY[0x1E69B2AA0] equalToInt64:a3];
      v19[1] = v13;
      v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:v19 count:2];
      v15 = [v11 predicateMatchingPredicates:v14];
      v16 = [v10 anyInLibrary:v9 predicate:v15];

      v17 = [v16 persistentID];
    }
  }

  else
  {
    v17 = 0;
  }

  return v17;
}

- (BOOL)isPlaylistItemsQuery
{
  if ([(MPMediaQuery *)self groupingType])
  {
    return 0;
  }

  v4 = [(MPMediaQuery *)self predicateForProperty:@"playlistPersistentID"];
  if (v4)
  {
    v3 = 1;
  }

  else
  {
    v5 = [(MPMediaQuery *)self predicateForProperty:@"name"];
    if (v5)
    {
      v3 = 1;
    }

    else
    {
      v6 = [(MPMediaQuery *)self predicateForProperty:@"cloudPlaylistUniversalLibraryID"];
      v3 = v6 != 0;
    }
  }

  return v3;
}

- (void)setStaticEntities:(id)a3 entityType:(int64_t)a4
{
  if (self->_staticEntities != a3)
  {
    v6 = [a3 copy];
    staticEntities = self->_staticEntities;
    self->_staticEntities = v6;

    self->_staticEntityType = a4;
  }
}

- (void)_enumerateCollectionsInOrder:(BOOL)a3 usingBlock:(id)a4
{
  v4 = a3;
  v6 = a4;
  v7 = self->_mediaLibrary;
  v8 = [(MPMediaLibrary *)v7 libraryDataProvider];
  criteria = self->_criteria;
  v10 = criteria->_groupingType == 6;
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __56__MPMediaQuery__enumerateCollectionsInOrder_usingBlock___block_invoke;
  v18[3] = &unk_1E7679CD0;
  v19 = v6;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __56__MPMediaQuery__enumerateCollectionsInOrder_usingBlock___block_invoke_2;
  v13[3] = &unk_1E7679D90;
  v17 = v10;
  v15 = self;
  v16 = v19;
  v14 = v7;
  v11 = v19;
  v12 = v7;
  [v8 enumerateCollectionIdentifiersForQueryCriteria:criteria ordered:v4 cancelBlock:v18 usingBlock:v13];
}

uint64_t __56__MPMediaQuery__enumerateCollectionsInOrder_usingBlock___block_invoke(uint64_t a1)
{
  v2 = 0;
  (*(*(a1 + 32) + 16))();
  return v2;
}

void __56__MPMediaQuery__enumerateCollectionsInOrder_usingBlock___block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  v11 = a3;
  if (*(a1 + 56) == 1)
  {
    v5 = [*(a1 + 32) playlistWithPersistentID:a2];
    (*(*(a1 + 48) + 16))();
  }

  else
  {
    v5 = [MPMediaItem persistentIDPropertyForGroupingType:*(*(*(a1 + 40) + 16) + 24)];
    v6 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:a2];
    v7 = [MPMediaPropertyPredicate predicateWithValue:v6 forProperty:v5];

    v8 = [*(*(a1 + 40) + 16) copy];
    [v8 addFilterPredicate:v7];
    [v8 setGroupingType:0];
    [v8 setEntityLimit:0];
    v9 = [[MPMediaQuery alloc] initWithCriteria:v8 library:*(*(a1 + 40) + 8)];
    v10 = [[MPConcreteMediaItemCollection alloc] initWithIdentifier:a2 valuesForProperties:v11 itemsQuery:v9 grouping:*(*(*(a1 + 40) + 16) + 24) representativeItemIdentifier:0];
    (*(*(a1 + 48) + 16))();
  }
}

- (void)_enumerateCollectionPersistentIDsInOrder:(BOOL)a3 usingBlock:(id)a4
{
  v4 = a3;
  v6 = a4;
  v7 = self->_mediaLibrary;
  v8 = [(MPMediaLibrary *)v7 libraryDataProvider];
  criteria = self->_criteria;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __68__MPMediaQuery__enumerateCollectionPersistentIDsInOrder_usingBlock___block_invoke_2;
  v11[3] = &unk_1E7679D68;
  v12 = v6;
  v10 = v6;
  [v8 enumerateCollectionIdentifiersForQueryCriteria:criteria ordered:v4 cancelBlock:&__block_literal_global_108_19937 usingBlock:v11];
}

- (void)_enumerateItemPersistentIDsInOrder:(BOOL)a3 usingBlock:(id)a4
{
  v4 = a3;
  v6 = a4;
  v7 = self->_mediaLibrary;
  v8 = [(MPMediaLibrary *)v7 libraryDataProvider];
  criteria = self->_criteria;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __62__MPMediaQuery__enumerateItemPersistentIDsInOrder_usingBlock___block_invoke_2;
  v11[3] = &unk_1E7679D40;
  v12 = v6;
  v10 = v6;
  [v8 enumerateItemIdentifiersForQueryCriteria:criteria ordered:v4 cancelBlock:&__block_literal_global_106 usingBlock:v11];
}

- (void)_enumerateItemsInOrder:(BOOL)a3 usingBlock:(id)a4
{
  v4 = a3;
  v6 = a4;
  v7 = self->_mediaLibrary;
  v8 = [(MPMediaLibrary *)v7 libraryDataProvider];
  criteria = self->_criteria;
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __50__MPMediaQuery__enumerateItemsInOrder_usingBlock___block_invoke;
  v15[3] = &unk_1E7679CD0;
  v16 = v6;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __50__MPMediaQuery__enumerateItemsInOrder_usingBlock___block_invoke_2;
  v12[3] = &unk_1E7679CF8;
  v13 = v7;
  v14 = v16;
  v10 = v16;
  v11 = v7;
  [v8 enumerateItemIdentifiersForQueryCriteria:criteria ordered:v4 cancelBlock:v15 usingBlock:v12];
}

uint64_t __50__MPMediaQuery__enumerateItemsInOrder_usingBlock___block_invoke(uint64_t a1)
{
  v2 = 0;
  (*(*(a1 + 32) + 16))();
  return v2;
}

void __50__MPMediaQuery__enumerateItemsInOrder_usingBlock___block_invoke_2(uint64_t a1, uint64_t a2)
{
  v3 = [MPConcreteMediaItem concreteMediaItemWithPersistentID:a2 library:*(a1 + 32)];
  (*(*(a1 + 40) + 16))();
}

- (BOOL)_isFilteringDisabled
{
  isFilteringDisabled = self->_isFilteringDisabled;
  if (isFilteringDisabled == -1)
  {
    return +[MPMediaQuery isFilteringDisabled];
  }

  else
  {
    return isFilteringDisabled != 0;
  }
}

- (id)_valueForAggregateFunction:(id)a3 onProperty:(id)a4 entityType:(int64_t)a5
{
  v42 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  if (_valueForAggregateFunction_onProperty_entityType__onceToken != -1)
  {
    dispatch_once(&_valueForAggregateFunction_onProperty_entityType__onceToken, &__block_literal_global_97_19941);
  }

  v35 = 0;
  v36 = &v35;
  v37 = 0x3032000000;
  v38 = __Block_byref_object_copy__19942;
  v39 = __Block_byref_object_dispose__19943;
  v40 = 0;
  if ([__supportedAggregateFunctions containsObject:v8])
  {
    v10 = self->_staticEntities;
    v27 = v10;
    if (v10)
    {
      v33 = 0u;
      v34 = 0u;
      v31 = 0u;
      v32 = 0u;
      v11 = v10;
      v12 = 0;
      v13 = [(NSArray *)v11 countByEnumeratingWithState:&v31 objects:v41 count:16];
      if (v13)
      {
        v14 = *v32;
        do
        {
          for (i = 0; i != v13; ++i)
          {
            if (*v32 != v14)
            {
              objc_enumerationMutation(v11);
            }

            v16 = [*(*(&v31 + 1) + 8 * i) valueForProperty:v9];
            v17 = v36[5];
            v36[5] = v16;

            if (objc_opt_respondsToSelector())
            {
              v12 += [v36[5] intValue];
            }
          }

          v13 = [(NSArray *)v11 countByEnumeratingWithState:&v31 objects:v41 count:16];
        }

        while (v13);
      }

      v18 = [objc_alloc(MEMORY[0x1E696AD98]) initWithInteger:v12];
      v19 = v36[5];
      v36[5] = v18;
    }

    else
    {
      v20 = dispatch_semaphore_create(0);
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 3221225472;
      aBlock[2] = __65__MPMediaQuery__valueForAggregateFunction_onProperty_entityType___block_invoke_100;
      aBlock[3] = &unk_1E7679CA8;
      v30 = &v35;
      v19 = v20;
      v29 = v19;
      v21 = _Block_copy(aBlock);
      v22 = [(MPMediaLibrary *)self->_mediaLibrary libraryDataProvider];
      v23 = v22;
      criteria = self->_criteria;
      if (a5 == 1)
      {
        [v22 loadValueForAggregateFunction:v8 onCollectionsForProperty:v9 queryCriteria:criteria completionBlock:v21];
      }

      else
      {
        [v22 loadValueForAggregateFunction:v8 onItemsForProperty:v9 queryCriteria:criteria completionBlock:v21];
      }

      dispatch_semaphore_wait(v19, 0xFFFFFFFFFFFFFFFFLL);
    }
  }

  v25 = v36[5];
  _Block_object_dispose(&v35, 8);

  return v25;
}

void __65__MPMediaQuery__valueForAggregateFunction_onProperty_entityType___block_invoke_100(uint64_t a1, void *a2)
{
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  v4 = a2;
  dispatch_semaphore_signal(*(a1 + 32));
}

void __65__MPMediaQuery__valueForAggregateFunction_onProperty_entityType___block_invoke()
{
  v0 = [objc_alloc(MEMORY[0x1E695DFD8]) initWithObjects:{@"MAX", @"MIN", @"TOTAL", 0}];
  v1 = __supportedAggregateFunctions;
  __supportedAggregateFunctions = v0;
}

- (NSArray)collectionSections
{
  v2 = [(MPMediaQuery *)self collectionSectionInfo];
  v3 = [v2 sections];

  return v3;
}

- (NSArray)itemSections
{
  v2 = [(MPMediaQuery *)self itemSectionInfo];
  v3 = [v2 sections];

  return v3;
}

- (BOOL)willGroupEntities
{
  if ([(MPMediaQuery *)self groupingType])
  {
    return 1;
  }

  if (![(MPMediaQuery *)self groupingThreshold])
  {
    return 0;
  }

  v4 = [(MPMediaQuery *)self items];
  v5 = [v4 count];
  v3 = v5 >= [(MPMediaQuery *)self groupingThreshold];

  return v3;
}

- (void)setUseSections:(BOOL)a3
{
  criteria = self->_criteria;
  if (criteria->_useSections != a3)
  {
    v6 = [(MPMediaQueryCriteria *)criteria copy];
    v7 = self->_criteria;
    self->_criteria = v6;

    self->_criteria->_useSections = a3;
  }
}

- (void)setSortItems:(BOOL)a3
{
  if (a3)
  {
    v4 = 2;
  }

  else
  {
    v4 = 1;
  }

  criteria = self->_criteria;
  if (criteria->_entityOrder != v4)
  {
    v6 = [(MPMediaQueryCriteria *)criteria copy];
    v7 = self->_criteria;
    self->_criteria = v6;

    self->_criteria->_entityOrder = v4;
  }
}

- (int64_t)_representativeCollectionGroupingType
{
  v3 = 0;
  [(MPMediaQuery *)self _getRepresentativeCollectionGrouping:&v3 propertyPredicate:0];
  return v3;
}

- (MPMediaItemCollection)_representativeCollection
{
  v3 = [(MPMediaQuery *)self predicateForProperty:@"persistentID"];

  if (v3)
  {
    v4 = 0;
    goto LABEL_15;
  }

  v5 = [(MPMediaQuery *)self predicateForProperty:@"playlistPersistentID"];
  if (!v5)
  {
    v10 = [(MPMediaQuery *)self predicateForProperty:@"cloudPlaylistUniversalLibraryID"];
    if (v10)
    {
      v6 = v10;
      v11 = MEMORY[0x1E69B34A0];
      v12 = [(MPMediaQuery *)self mediaLibrary];
      v13 = [v12 ml3Library];
      v14 = MEMORY[0x1E69B3488];
      v15 = MEMORY[0x1E69B2B10];
    }

    else
    {
      v16 = [(MPMediaQuery *)self predicateForProperty:@"cloudGlobalID"];
      if (v16)
      {
        v6 = v16;
        v11 = MEMORY[0x1E69B34A0];
        v12 = [(MPMediaQuery *)self mediaLibrary];
        v13 = [v12 ml3Library];
        v14 = MEMORY[0x1E69B3488];
        v15 = MEMORY[0x1E69B2AD0];
      }

      else
      {
        v17 = [(MPMediaQuery *)self predicateForProperty:@"name"];
        if (!v17)
        {
          v24 = [(MPMediaQuery *)self predicateForProperty:@"storeCloudAlbumID"];
          if (!v24)
          {
            v36 = 0;
            v37 = 0;
            [(MPMediaQuery *)self _getRepresentativeCollectionGrouping:&v37 propertyPredicate:&v36];
            v32 = v36;
            v6 = v32;
            if (v32 && ([v32 value], v33 = objc_claimAutoreleasedReturnValue(), v34 = objc_msgSend(v33, "longLongValue"), v33, v34))
            {
              v35 = [MPConcreteMediaItemCollection alloc];
              v4 = [(MPConcreteMediaItemCollection *)v35 initWithIdentifier:v34 itemsQuery:self grouping:v37];
            }

            else
            {
              v4 = 0;
            }

            goto LABEL_14;
          }

          v6 = v24;
          v25 = MEMORY[0x1E69B3418];
          v26 = [(MPMediaQuery *)self mediaLibrary];
          v27 = [v26 ml3Library];
          v28 = MEMORY[0x1E69B3488];
          v29 = *MEMORY[0x1E69B29C0];
          v30 = [v6 value];
          v31 = [v28 predicateWithProperty:v29 equalToValue:v30];
          v9 = [v25 anyInLibrary:v27 predicate:v31];

          v21 = [(MPMediaQuery *)self mediaLibrary];
          v22 = [v21 collectionWithPersistentID:objc_msgSend(v9 groupingType:{"persistentID"), 1}];
          goto LABEL_12;
        }

        v6 = v17;
        v11 = MEMORY[0x1E69B34A0];
        v12 = [(MPMediaQuery *)self mediaLibrary];
        v13 = [v12 ml3Library];
        v14 = MEMORY[0x1E69B3488];
        v15 = MEMORY[0x1E69B2C58];
      }
    }

    v18 = *v15;
    v19 = [v6 value];
    v20 = [v14 predicateWithProperty:v18 equalToValue:v19];
    v9 = [v11 anyInLibrary:v13 predicate:v20];

    v21 = [(MPMediaQuery *)self mediaLibrary];
    v22 = [v21 newPlaylistWithPersistentID:{objc_msgSend(v9, "persistentID")}];
LABEL_12:
    v4 = v22;

    goto LABEL_13;
  }

  v6 = v5;
  v7 = [v5 value];
  v8 = [v7 unsignedLongLongValue];

  v9 = [(MPMediaQuery *)self mediaLibrary];
  v4 = [v9 newPlaylistWithPersistentID:v8];
LABEL_13:

LABEL_14:
LABEL_15:

  return v4;
}

- (void)_getRepresentativeCollectionGrouping:(int64_t *)a3 propertyPredicate:(id *)a4
{
  v7 = [(MPMediaQuery *)self predicateForProperty:@"albumPID"];
  if (v7)
  {
    v8 = 1;
    if (!a3)
    {
      goto LABEL_13;
    }

    goto LABEL_12;
  }

  v7 = [(MPMediaQuery *)self predicateForProperty:@"artistPID"];
  if (v7)
  {
    v8 = 2;
    if (a3)
    {
      goto LABEL_12;
    }
  }

  else
  {
    v7 = [(MPMediaQuery *)self predicateForProperty:@"albumArtistPID"];
    if (v7)
    {
      v8 = 3;
      if (a3)
      {
        goto LABEL_12;
      }
    }

    else
    {
      v7 = [(MPMediaQuery *)self predicateForProperty:@"composerPID"];
      if (v7)
      {
        v8 = 4;
        if (!a3)
        {
          goto LABEL_13;
        }

        goto LABEL_12;
      }

      v7 = [(MPMediaQuery *)self predicateForProperty:@"genrePID"];
      v8 = 5;
      if (!v7)
      {
        v8 = 0;
      }

      if (a3)
      {
LABEL_12:
        *a3 = v8;
      }
    }
  }

LABEL_13:
  if (a4)
  {
    v7 = v7;
    *a4 = v7;
  }
}

- (void)_setOrderingDirectionMappings:(id)a3
{
  criteria = self->_criteria;
  if (criteria->_orderingDirectionMappings != a3)
  {
    v5 = a3;
    v6 = [(MPMediaQueryCriteria *)criteria copy];
    v7 = self->_criteria;
    self->_criteria = v6;

    v8 = [v5 copy];
    v9 = self->_criteria;
    orderingDirectionMappings = v9->_orderingDirectionMappings;
    v9->_orderingDirectionMappings = v8;
  }
}

- (void)_setOrderingProperties:(id)a3
{
  criteria = self->_criteria;
  if (criteria->_orderingProperties != a3)
  {
    v5 = a3;
    v6 = [(MPMediaQueryCriteria *)criteria copy];
    v7 = self->_criteria;
    self->_criteria = v6;

    v8 = [v5 copy];
    v9 = self->_criteria;
    orderingProperties = v9->_orderingProperties;
    v9->_orderingProperties = v8;
  }
}

- (MPMediaQuerySectionInfo)collectionSectionInfo
{
  v2 = [(MPMediaQuery *)self collections];
  v3 = [v2 sectionInfo];

  return v3;
}

- (MPMediaQuerySectionInfo)itemSectionInfo
{
  v2 = [(MPMediaQuery *)self items];
  v3 = [v2 sectionInfo];

  return v3;
}

- (unint64_t)_countOfCollections
{
  if (self->_staticEntities && self->_staticEntityType == 1)
  {
    return [(NSArray *)self->_staticEntities count];
  }

  else
  {
    return [(MPMediaLibrary *)self->_mediaLibrary _countOfCollectionsForQueryCriteria:self->_criteria];
  }
}

uint64_t __29__MPMediaQuery__countOfItems__block_invoke(uint64_t a1, void *a2)
{
  result = [a2 count];
  *(*(*(a1 + 32) + 8) + 24) += result;
  return result;
}

uint64_t __25__MPMediaQuery__hasItems__block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  result = [a2 count];
  *(*(*(a1 + 32) + 8) + 24) = result != 0;
  *a4 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

- (void)setCollectionPropertiesToFetch:(id)a3
{
  criteria = self->_criteria;
  if (criteria->_collectionPropertiesToFetch != a3)
  {
    v5 = a3;
    v6 = [(MPMediaQueryCriteria *)criteria copy];
    v7 = self->_criteria;
    self->_criteria = v6;

    v8 = [v5 copy];
    v9 = self->_criteria;
    collectionPropertiesToFetch = v9->_collectionPropertiesToFetch;
    v9->_collectionPropertiesToFetch = v8;
  }
}

- (void)setItemPropertiesToFetch:(id)a3
{
  criteria = self->_criteria;
  if (criteria->_itemPropertiesToFetch != a3)
  {
    v5 = a3;
    v6 = [(MPMediaQueryCriteria *)criteria copy];
    v7 = self->_criteria;
    self->_criteria = v6;

    v8 = [v5 copy];
    v9 = self->_criteria;
    itemPropertiesToFetch = v9->_itemPropertiesToFetch;
    v9->_itemPropertiesToFetch = v8;
  }
}

- (void)setGroupingType:(MPMediaGrouping)groupingType
{
  criteria = self->_criteria;
  if (criteria->_groupingType != groupingType)
  {
    v6 = [(MPMediaQueryCriteria *)criteria copy];
    v7 = self->_criteria;
    self->_criteria = v6;

    self->_criteria->_groupingType = groupingType;
    v8 = 1;
    if (groupingType != MPMediaGroupingPlaylist)
    {
      v8 = 2;
    }

    self->_criteria->_entityOrder = v8;
  }
}

void __21__MPMediaQuery_items__block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 items];
  if (v3)
  {
    v4 = v3;
    [*(a1 + 32) addObjectsFromArray:v3];
    v3 = v4;
  }
}

- (void)setMediaLibrary:(id)a3
{
  v5 = a3;
  mediaLibrary = self->_mediaLibrary;
  p_mediaLibrary = &self->_mediaLibrary;
  if (mediaLibrary != v5)
  {
    v8 = v5;
    objc_storeStrong(p_mediaLibrary, a3);
    v5 = v8;
  }
}

- (void)removeFilterPredicate:(MPMediaPredicate *)predicate
{
  v9 = predicate;
  if ([(NSMutableSet *)self->_criteria->_filterPredicates containsObject:?])
  {
    v4 = [(MPMediaQueryCriteria *)self->_criteria copy];
    criteria = self->_criteria;
    self->_criteria = v4;

    v6 = [(NSMutableSet *)self->_criteria->_filterPredicates count];
    v7 = self->_criteria;
    filterPredicates = v7->_filterPredicates;
    if (v6 == 1)
    {
      v7->_filterPredicates = 0;
    }

    else
    {
      [(NSMutableSet *)filterPredicates removeObject:v9];
    }
  }
}

- (void)addFilterPredicate:(MPMediaPredicate *)predicate
{
  v15 = *MEMORY[0x1E69E9840];
  v4 = predicate;
  if (v4)
  {
    criteria = self->_criteria;
    filterPredicates = criteria->_filterPredicates;
    v7 = [(MPMediaQueryCriteria *)criteria copy];
    v8 = self->_criteria;
    self->_criteria = v7;

    if (filterPredicates)
    {
      [(NSMutableSet *)self->_criteria->_filterPredicates addObject:v4];
    }

    else
    {
      v10 = [objc_alloc(MEMORY[0x1E695DFA8]) initWithObjects:{v4, 0}];
      v11 = self->_criteria;
      v12 = v11->_filterPredicates;
      v11->_filterPredicates = v10;
    }
  }

  else
  {
    v9 = os_log_create("com.apple.amp.mediaplayer", "Library");
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v14 = self;
      _os_log_impl(&dword_1A238D000, v9, OS_LOG_TYPE_ERROR, "attempt to *nil* filter predicate to query: %@", buf, 0xCu);
    }
  }
}

- (void)setFilterPredicates:(NSSet *)filterPredicates
{
  criteria = self->_criteria;
  if (criteria->_filterPredicates != filterPredicates)
  {
    v5 = filterPredicates;
    v6 = [(MPMediaQueryCriteria *)criteria copy];
    v7 = self->_criteria;
    self->_criteria = v6;

    v8 = [(NSSet *)v5 mutableCopy];
    v9 = self->_criteria;
    v10 = v9->_filterPredicates;
    v9->_filterPredicates = v8;
  }
}

- (NSSet)filterPredicates
{
  v2 = [(NSMutableSet *)self->_criteria->_filterPredicates copy];

  return v2;
}

- (id)protobufferEncodableObjectFromLibrary:(id)a3
{
  v37 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = objc_alloc_init(MPPMediaQuery);
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v6 = self->_criteria->_filterPredicates;
  v7 = [(NSMutableSet *)v6 countByEnumeratingWithState:&v31 objects:v36 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v32;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v32 != v9)
        {
          objc_enumerationMutation(v6);
        }

        mediaLibrary = v4;
        if (!v4)
        {
          mediaLibrary = self->_mediaLibrary;
        }

        v12 = [*(*(&v31 + 1) + 8 * i) protobufferEncodableObjectFromLibrary:mediaLibrary];
        [(MPPMediaQuery *)v5 addFilterPredicates:v12];
      }

      v8 = [(NSMutableSet *)v6 countByEnumeratingWithState:&v31 objects:v36 count:16];
    }

    while (v8);
  }

  groupingType = self->_criteria->_groupingType;
  if (groupingType > 0xC)
  {
    v14 = 0;
  }

  else
  {
    v14 = dword_1A273E610[groupingType];
  }

  [(MPPMediaQuery *)v5 setGroupingType:v14];
  [(MPPMediaQuery *)v5 setFilteringDisabled:self->_isFilteringDisabled != 0];
  [(MPPMediaQuery *)v5 setIncludeNonLibraryEntities:self->_criteria->_includeNonLibraryEntities];
  entityOrder = self->_criteria->_entityOrder;
  if (entityOrder == 2)
  {
    v16 = 3;
  }

  else
  {
    v16 = 1;
  }

  if (entityOrder == 1)
  {
    v17 = 2;
  }

  else
  {
    v17 = v16;
  }

  [(MPPMediaQuery *)v5 setEntityOrder:v17];
  if (self->_staticEntities)
  {
    staticEntityType = self->_staticEntityType;
    if (staticEntityType)
    {
      v19 = 2 * (staticEntityType == 1);
    }

    else
    {
      v19 = 1;
    }

    [(MPPMediaQuery *)v5 setStaticEntityType:v19];
    v29 = 0u;
    v30 = 0u;
    v27 = 0u;
    v28 = 0u;
    v20 = self->_staticEntities;
    v21 = [(NSArray *)v20 countByEnumeratingWithState:&v27 objects:v35 count:16];
    if (v21)
    {
      v22 = v21;
      v23 = *v28;
      do
      {
        for (j = 0; j != v22; ++j)
        {
          if (*v28 != v23)
          {
            objc_enumerationMutation(v20);
          }

          v25 = [*(*(&v27 + 1) + 8 * j) multiverseIdentifier];
          [(MPPMediaQuery *)v5 addStaticEntityIdentifiers:v25];
        }

        v22 = [(NSArray *)v20 countByEnumeratingWithState:&v27 objects:v35 count:16];
      }

      while (v22);
    }
  }

  return v5;
}

- (MPMediaQuery)initWithProtobufferDecodableObject:(id)a3 library:(id)a4
{
  v76 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a4;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v48 = [MEMORY[0x1E696AAA8] currentHandler];
    [v48 handleFailureInMethod:a2 object:self file:@"MPMediaQuery.m" lineNumber:262 description:{@"Cannot decode protobuf object of type %@", objc_opt_class()}];
  }

  v9 = v7;
  v10 = [objc_alloc(MEMORY[0x1E695DFA8]) initWithCapacity:{objc_msgSend(v9, "filterPredicatesCount")}];
  v65 = 0u;
  v66 = 0u;
  v67 = 0u;
  v68 = 0u;
  v50 = v9;
  v11 = [v9 filterPredicates];
  v12 = [v11 countByEnumeratingWithState:&v65 objects:v75 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v66;
    do
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v66 != v14)
        {
          objc_enumerationMutation(v11);
        }

        v16 = MPPCreateMediaPredicateFromProtocolPredicateAndLibrary(*(*(&v65 + 1) + 8 * i), v8);
        [v10 addObject:v16];
      }

      v13 = [v11 countByEnumeratingWithState:&v65 objects:v75 count:16];
    }

    while (v13);
  }

  v17 = [(MPMediaQuery *)self initWithFilterPredicates:v10];
  v18 = v50;
  if (v17)
  {
    v19 = [v50 groupingType];
    v20 = 0;
    if (v19 > 7)
    {
      if (v19 > 101)
      {
        switch(v19)
        {
          case 'f':
            v20 = 10;
            break;
          case 'g':
            v20 = 11;
            break;
          case 'h':
            v20 = 12;
            break;
        }
      }

      else
      {
        switch(v19)
        {
          case 8:
            v20 = 7;
            break;
          case 100:
            v20 = 8;
            break;
          case 101:
            v20 = 9;
            break;
        }
      }
    }

    else if (v19 > 4)
    {
      if (v19 == 5)
      {
        v20 = 4;
      }

      else
      {
        v20 = v19 == 6 ? 5 : 6;
      }
    }

    else
    {
      switch(v19)
      {
        case 2:
          v20 = 1;
          break;
        case 3:
          v20 = 2;
          break;
        case 4:
          v20 = 3;
          break;
      }
    }

    v17->_criteria->_groupingType = v20;
    v21 = [v50 entityOrder];
    v22 = 2 * (v21 == 3);
    if (v21 == 2)
    {
      v22 = 1;
    }

    v17->_criteria->_entityOrder = v22;
    v17->_criteria->_includeNonLibraryEntities = [v50 includeNonLibraryEntities];
    v17->_isFilteringDisabled = [v50 filteringDisabled];
    v23 = [v50 staticEntityIdentifiersCount];
    if (v23)
    {
      v49 = v17;
      v56 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:v23];
      v61 = 0u;
      v62 = 0u;
      v63 = 0u;
      v64 = 0u;
      v24 = [v50 staticEntityIdentifiers];
      v25 = [v24 countByEnumeratingWithState:&v61 objects:v74 count:16];
      if (!v25)
      {
        goto LABEL_78;
      }

      v26 = v25;
      v27 = *v62;
      v52 = v24;
      v53 = v10;
      v51 = *v62;
      while (1)
      {
        v28 = 0;
        v54 = v26;
        do
        {
          if (*v62 != v27)
          {
            objc_enumerationMutation(v24);
          }

          v29 = *(*(&v61 + 1) + 8 * v28);
          if (v8)
          {
            v30 = [v8 entityWithMultiverseIdentifier:*(*(&v61 + 1) + 8 * v28)];
            if (v30)
            {
              v31 = v30;
              [(NSArray *)v56 addObject:v30];
              goto LABEL_75;
            }

            v32 = os_log_create("com.apple.amp.mediaplayer", "Library");
            if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
            {
              *buf = 138543618;
              v71 = v8;
              v72 = 2114;
              v73 = v29;
              _os_log_impl(&dword_1A238D000, v32, OS_LOG_TYPE_ERROR, "No static entity found for provided library: %{public}@ multiverseID: %{public}@", buf, 0x16u);
            }
          }

          if (![v29 libraryIdentifiersCount])
          {
            goto LABEL_73;
          }

          v55 = v28;
          v59 = 0u;
          v60 = 0u;
          v57 = 0u;
          v58 = 0u;
          v33 = [v29 libraryIdentifiers];
          v34 = [v33 countByEnumeratingWithState:&v57 objects:v69 count:16];
          if (!v34)
          {

            v26 = v54;
            v28 = v55;
LABEL_73:
            v31 = os_log_create("com.apple.amp.mediaplayer", "Library");
            if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
            {
              *buf = 138543362;
              v71 = v29;
              _os_log_impl(&dword_1A238D000, v31, OS_LOG_TYPE_ERROR, "Unable to find static entity in any library: %{public}@", buf, 0xCu);
            }

LABEL_75:

            goto LABEL_76;
          }

          v35 = v34;
          v36 = 0;
          v37 = *v58;
          do
          {
            for (j = 0; j != v35; ++j)
            {
              if (*v58 != v37)
              {
                objc_enumerationMutation(v33);
              }

              v39 = *(*(&v57 + 1) + 8 * j);
              v40 = v8;
              if ([v39 hasLibraryName])
              {
                v41 = [v39 libraryName];
                v42 = [MPMediaLibrary mediaLibraryWithUniqueIdentifier:v41];

                v40 = v42;
              }

              v43 = [v40 entityWithMultiverseIdentifier:v29];
              if (v43)
              {
                if (v8)
                {
                  v44 = os_log_create("com.apple.amp.mediaplayer", "Library");
                  if (os_log_type_enabled(v44, OS_LOG_TYPE_DEFAULT))
                  {
                    *buf = 138543618;
                    v71 = v40;
                    v72 = 2114;
                    v73 = v29;
                    _os_log_impl(&dword_1A238D000, v44, OS_LOG_TYPE_DEFAULT, "Static entity recovered from included library: %{public}@ multiverseID: %{public}@", buf, 0x16u);
                  }
                }

                [(NSArray *)v56 addObject:v43];
                v36 = 1;
              }

              else
              {
                v45 = os_log_create("com.apple.amp.mediaplayer", "Library");
                if (os_log_type_enabled(v45, OS_LOG_TYPE_ERROR))
                {
                  *buf = 138543618;
                  v71 = v40;
                  v72 = 2114;
                  v73 = v29;
                  _os_log_impl(&dword_1A238D000, v45, OS_LOG_TYPE_ERROR, "No static entity found in library: %{public}@ multiverseID: %{public}@", buf, 0x16u);
                }
              }
            }

            v35 = [v33 countByEnumeratingWithState:&v57 objects:v69 count:16];
          }

          while (v35);

          v24 = v52;
          v10 = v53;
          v27 = v51;
          v26 = v54;
          v28 = v55;
          if ((v36 & 1) == 0)
          {
            goto LABEL_73;
          }

LABEL_76:
          ++v28;
        }

        while (v28 != v26);
        v26 = [v24 countByEnumeratingWithState:&v61 objects:v74 count:16];
        if (!v26)
        {
LABEL_78:

          v17 = v49;
          staticEntities = v49->_staticEntities;
          v49->_staticEntities = v56;

          v18 = v50;
          v49->_staticEntityType = [v50 staticEntityType] == 2;
          break;
        }
      }
    }
  }

  return v17;
}

- (id)copyBySanitizingStaticEntities
{
  v23 = *MEMORY[0x1E69E9840];
  if (self->_staticEntities)
  {
    v2 = [MEMORY[0x1E695DF70] array];
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    v3 = self->_staticEntities;
    v4 = [(NSArray *)v3 countByEnumeratingWithState:&v18 objects:v22 count:16];
    if (!v4)
    {
      goto LABEL_15;
    }

    v5 = v4;
    v6 = *v19;
    while (1)
    {
      v7 = 0;
      do
      {
        if (*v19 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v18 + 1) + 8 * v7);
        staticEntityType = self->_staticEntityType;
        v10 = [v8 mediaLibrary];
        v11 = [v8 persistentID];
        if (staticEntityType)
        {
          v12 = [v10 collectionExistsWithPersistentID:v11 groupingType:{objc_msgSend(v8, "groupingType")}];

          if (!v12)
          {
            goto LABEL_10;
          }

LABEL_9:
          [v2 addObject:v8];
          goto LABEL_10;
        }

        v13 = [v10 itemExistsWithPersistentID:v11];

        if (v13)
        {
          goto LABEL_9;
        }

LABEL_10:
        ++v7;
      }

      while (v5 != v7);
      v14 = [(NSArray *)v3 countByEnumeratingWithState:&v18 objects:v22 count:16];
      v5 = v14;
      if (!v14)
      {
LABEL_15:

        v15 = [(MPMediaQuery *)self copy];
        [v15 setStaticEntities:v2 entityType:self->_staticEntityType];

        return v15;
      }
    }
  }

  return self;
}

- (id)copyByRemovingStaticEntities
{
  if (self->_staticEntities)
  {
    v3 = [(MPMediaQuery *)self copy];
    [v3 setStaticEntities:0 entityType:self->_staticEntityType];
    return v3;
  }

  else
  {

    return self;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [[MPMediaQuery allocWithZone:?]library:"initWithCriteria:library:", self->_criteria, self->_mediaLibrary];
  v5 = [(NSArray *)self->_staticEntities copy];
  staticEntities = v4->_staticEntities;
  v4->_staticEntities = v5;

  v4->_staticEntityType = self->_staticEntityType;
  return v4;
}

- (void)encodeWithCoder:(id)a3
{
  mediaLibrary = self->_mediaLibrary;
  v5 = a3;
  [v5 encodeObject:mediaLibrary forKey:@"MPMediaLibrary"];
  [v5 encodeObject:self->_criteria->_filterPredicates forKey:@"MPFilterPredicates"];
  [v5 encodeInteger:self->_criteria->_groupingType forKey:@"MPGroupingType"];
  [v5 encodeInteger:self->_criteria->_entityOrder forKey:@"MPEntityOrder"];
  [v5 encodeBool:self->_criteria->_ignoreSystemFilterPredicates forKey:@"MPIgnoreSystemFilterPredicates"];
  [v5 encodeBool:self->_criteria->_ignoreRestrictionsPredicates forKey:@"MPIgnoreRestrictionsPredicates"];
  [v5 encodeBool:self->_criteria->_includeNonLibraryEntities forKey:@"MPIncludeNonLibraryEntities"];
  [v5 encodeBool:self->_criteria->_includeEntitiesWithBlankNames forKey:@"MPIncludeEntitiesWithBlankNames"];
  [v5 encodeBool:-[MPMediaQuery _isFilteringDisabled](self forKey:{"_isFilteringDisabled"), @"MLIsFilteringDisabled"}];
  [v5 encodeObject:self->_staticEntities forKey:@"MPStaticEntities"];
  [v5 encodeInteger:self->_staticEntityType forKey:@"MPStaticEntityType"];
}

- (MPMediaQuery)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"MPMediaLibrary"];
  v6 = MEMORY[0x1E695DFD8];
  v7 = objc_opt_class();
  v8 = [v6 setWithObjects:{v7, objc_opt_class(), 0}];
  v9 = [v4 decodeObjectOfClasses:v8 forKey:@"MPFilterPredicates"];

  v10 = [(MPMediaQuery *)self initWithFilterPredicates:v9 library:v5];
  if (v10)
  {
    v10->_criteria->_groupingType = [v4 decodeIntegerForKey:@"MPGroupingType"];
    v10->_criteria->_ignoreSystemFilterPredicates = [v4 decodeBoolForKey:@"MPIgnoreSystemFilterPredicates"];
    v10->_criteria->_ignoreRestrictionsPredicates = [v4 decodeBoolForKey:@"MPIgnoreRestrictionsPredicates"];
    v10->_criteria->_includeNonLibraryEntities = [v4 decodeBoolForKey:@"MPIncludeNonLibraryEntities"];
    v10->_criteria->_includeEntitiesWithBlankNames = [v4 decodeBoolForKey:@"MPIncludeEntitiesWithBlankNames"];
    if ([v4 containsValueForKey:@"MPEntityOrder"])
    {
      v10->_criteria->_entityOrder = [v4 decodeIntegerForKey:@"MPEntityOrder"];
    }

    else
    {
      v11 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"MLEntityOrder"];
      v12 = [v11 isEqualToString:@"MLEntityOrderSorted"];
      v13 = 1;
      if (v12)
      {
        v13 = 2;
      }

      v10->_criteria->_entityOrder = v13;
    }

    v10->_isFilteringDisabled = [v4 decodeBoolForKey:@"MLIsFilteringDisabled"];
    v14 = MEMORY[0x1E695DFD8];
    v15 = objc_opt_class();
    v16 = [v14 setWithObjects:{v15, objc_opt_class(), 0}];
    v17 = [v4 decodeObjectOfClasses:v16 forKey:@"MPStaticEntities"];
    staticEntities = v10->_staticEntities;
    v10->_staticEntities = v17;

    v10->_staticEntityType = [v4 decodeIntegerForKey:@"MPStaticEntityType"];
  }

  return v10;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = objc_opt_class();
  v6 = 0;
  if (v5 == objc_opt_class())
  {
    staticEntities = self->_staticEntities;
    if (staticEntities == v4[4] || [(NSArray *)staticEntities isEqualToArray:?])
    {
      criteria = self->_criteria;
      if (criteria == v4[2] || [(MPMediaQueryCriteria *)criteria isEqual:?])
      {
        mediaLibrary = self->_mediaLibrary;
        if (mediaLibrary == v4[1] || [(MPMediaLibrary *)mediaLibrary isEqual:?])
        {
          v6 = 1;
        }
      }
    }
  }

  return v6;
}

- (NSString)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  groupingType = self->_criteria->_groupingType;
  if (groupingType > 0x16)
  {
    v6 = @"(unknown grouping type)";
  }

  else
  {
    v6 = off_1E7679DB0[groupingType];
  }

  mediaLibrary = self->_mediaLibrary;
  v8 = v6;
  v9 = v8;
  criteria = self->_criteria;
  filterPredicates = criteria->_filterPredicates;
  if (!filterPredicates)
  {
    filterPredicates = self->_staticEntities;
  }

  if (criteria->_ignoreSystemFilterPredicates)
  {
    v12 = @"DISABLED";
  }

  else
  {
    v12 = @"enabled";
  }

  v13 = [v3 stringWithFormat:@"<%@:%p [%@] %@, %@, SystemFilters=%@>", v4, self, mediaLibrary, v8, filterPredicates, v12];

  if ([(NSArray *)self->_criteria->_orderingProperties count])
  {
    v14 = [(NSArray *)self->_criteria->_orderingProperties componentsJoinedByString:@", "];
    v15 = [v13 stringByAppendingFormat:@" ordered by %@", v14];

    v13 = v15;
  }

  return v13;
}

- (MPMediaQuery)initWithEntities:(id)a3 entityType:(int64_t)a4
{
  v6 = a3;
  v7 = [(MPMediaQuery *)self initWithFilterPredicates:0];
  if (v7)
  {
    v8 = [v6 copy];
    staticEntities = v7->_staticEntities;
    v7->_staticEntities = v8;

    v7->_staticEntityType = a4;
  }

  return v7;
}

- (MPMediaQuery)initWithCriteria:(id)a3 library:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(MPMediaQuery *)self initWithFilterPredicates:0];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_mediaLibrary, a4);
    v10 = [v6 copy];
    criteria = v9->_criteria;
    v9->_criteria = v10;
  }

  return v9;
}

- (MPMediaQuery)initWithFilterPredicates:(id)a3 library:(id)a4
{
  v7 = a4;
  v8 = [(MPMediaQuery *)self initWithFilterPredicates:a3];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_mediaLibrary, a4);
  }

  return v9;
}

- (MPMediaQuery)initWithFilterPredicates:(NSSet *)filterPredicates
{
  v4 = filterPredicates;
  v12.receiver = self;
  v12.super_class = MPMediaQuery;
  v5 = [(MPMediaQuery *)&v12 init];
  if (v5)
  {
    v6 = +[MPMediaLibrary defaultMediaLibrary];
    mediaLibrary = v5->_mediaLibrary;
    v5->_mediaLibrary = v6;

    v5->_isFilteringDisabled = -1;
    v8 = objc_alloc_init(MPMediaQueryCriteria);
    v9 = v8;
    if (v4)
    {
      [(MPMediaQueryCriteria *)v8 setFilterPredicates:v4];
    }

    criteria = v5->_criteria;
    v5->_criteria = v9;
  }

  return v5;
}

+ (id)playlistsRecentlyAddedQuery
{
  v12[2] = *MEMORY[0x1E69E9840];
  v2 = +[MPMediaQuery playlistsQuery];
  v3 = MEMORY[0x1E695E110];
  v4 = [MPMediaPropertyPredicate predicateWithValue:MEMORY[0x1E695E110] forProperty:@"isHidden"];
  [v2 addFilterPredicate:v4];

  v5 = [MPMediaPropertyPredicate predicateWithValue:v3 forProperty:@"isGeniusMix"];
  [v2 addFilterPredicate:v5];

  v6 = [MPMediaPropertyPredicate predicateWithValue:v3 forProperty:@"isFolder"];
  [v2 addFilterPredicate:v6];

  v12[0] = @"dateCreated";
  v12[1] = @"name";
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v12 count:2];
  [v2 _setOrderingProperties:v7];

  v10 = @"dateCreated";
  v11 = &unk_1F1509988;
  v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v11 forKeys:&v10 count:1];
  [v2 _setOrderingDirectionMappings:v8];

  return v2;
}

+ (id)geniusMixesQuery
{
  v2 = objc_alloc_init(MPMediaQuery);
  [(MPMediaQuery *)v2 setGroupingType:6];
  v3 = [MEMORY[0x1E696AD98] numberWithBool:1];
  v4 = [MPMediaPropertyPredicate predicateWithValue:v3 forProperty:@"isHidden"];
  [(MPMediaQuery *)v2 addFilterPredicate:v4];

  v5 = [MEMORY[0x1E696AD98] numberWithBool:1];
  v6 = [MPMediaPropertyPredicate predicateWithValue:v5 forProperty:@"isGeniusMix"];
  [(MPMediaQuery *)v2 addFilterPredicate:v6];

  return v2;
}

+ (id)videoPodcastsQuery
{
  v2 = [MPMediaQuery alloc];
  v3 = MEMORY[0x1E695DFD8];
  v4 = [MEMORY[0x1E696AD98] numberWithInteger:1024];
  v5 = [MPMediaPropertyPredicate predicateWithValue:v4 forProperty:@"mediaType"];
  v6 = [v3 setWithObject:v5];
  v7 = [(MPMediaQuery *)v2 initWithFilterPredicates:v6];

  return v7;
}

+ (id)audioPodcastsQuery
{
  v2 = [MPMediaQuery alloc];
  v3 = MEMORY[0x1E695DFD8];
  v4 = [MPMediaPropertyPredicate predicateWithValue:&unk_1F1509988 forProperty:@"mediaType"];
  v5 = [v3 setWithObject:v4];
  v6 = [(MPMediaQuery *)v2 initWithFilterPredicates:v5];

  return v6;
}

+ (id)moviesQuery
{
  v2 = [MPMediaQuery alloc];
  v3 = MEMORY[0x1E695DFD8];
  v4 = [MPMediaPropertyPredicate predicateWithValue:&unk_1F1509970 forProperty:@"mediaType"];
  v5 = MEMORY[0x1E695E110];
  v6 = [MPMediaPropertyPredicate predicateWithValue:MEMORY[0x1E695E110] forProperty:@"isRental"];
  v7 = [MPMediaPropertyPredicate predicateWithValue:v5 forProperty:@"isITunesU"];
  v8 = [v3 setWithObjects:{v4, v6, v7, 0}];
  v9 = [(MPMediaQuery *)v2 initWithFilterPredicates:v8];

  return v9;
}

+ (id)homeVideosQuery
{
  v2 = [MPMediaQuery alloc];
  v3 = MEMORY[0x1E695DFD8];
  v4 = [MEMORY[0x1E696AD98] numberWithInteger:0x2000];
  v5 = [MPMediaPropertyPredicate predicateWithValue:v4 forProperty:@"mediaType"];
  v6 = [v3 setWithObject:v5];
  v7 = [(MPMediaQuery *)v2 initWithFilterPredicates:v6];

  return v7;
}

+ (id)tvShowsQuery
{
  v2 = [MPMediaQuery alloc];
  v3 = MEMORY[0x1E695DFD8];
  v4 = [MEMORY[0x1E696AD98] numberWithInteger:512];
  v5 = [MPMediaPropertyPredicate predicateWithValue:v4 forProperty:@"mediaType"];
  v6 = [v3 setWithObject:v5];
  v7 = [(MPMediaQuery *)v2 initWithFilterPredicates:v6];

  return v7;
}

+ (id)musicVideosQuery
{
  v2 = [MPMediaQuery alloc];
  v3 = MEMORY[0x1E695DFD8];
  v4 = [MPMediaPropertyPredicate predicateWithValue:&unk_1F1509958 forProperty:@"mediaType"];
  v5 = [v3 setWithObject:v4];
  v6 = [(MPMediaQuery *)v2 initWithFilterPredicates:v5];

  return v6;
}

+ (id)videosQuery
{
  v2 = [MPMediaQuery alloc];
  v3 = MEMORY[0x1E695DFD8];
  v4 = [MEMORY[0x1E696AD98] numberWithInteger:65280];
  v5 = [MPMediaPropertyPredicate predicateWithValue:v4 forProperty:@"mediaType"];
  v6 = [v3 setWithObject:v5];
  v7 = [(MPMediaQuery *)v2 initWithFilterPredicates:v6];

  return v7;
}

+ (id)albumArtistsQuery
{
  v2 = [MPMediaQuery alloc];
  v3 = MEMORY[0x1E695DFD8];
  v4 = [MPMediaPropertyPredicate predicateWithValue:&unk_1F1509940 forProperty:@"mediaType"];
  v5 = [v3 setWithObject:v4];
  v6 = [(MPMediaQuery *)v2 initWithFilterPredicates:v5];

  [(MPMediaQuery *)v6 setGroupingType:3];

  return v6;
}

+ (void)setFilteringDisabled:(BOOL)a3
{
  +[MPMediaQuery initFilteringDisabled];
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v10 = 0;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __37__MPMediaQuery_setFilteringDisabled___block_invoke;
  v5[3] = &unk_1E7679C30;
  v6 = a3;
  v5[4] = &v7;
  dispatch_sync(__filteringDisabledQueue, v5);
  if (*(v8 + 24) == 1)
  {
    v4 = [MEMORY[0x1E696AD88] defaultCenter];
    [v4 postNotificationName:@"MPMediaLibraryFilteringDidChangeNotification" object:0];
  }

  _Block_object_dispose(&v7, 8);
}

uint64_t __37__MPMediaQuery_setFilteringDisabled___block_invoke(uint64_t result)
{
  if (*(result + 40) != __filteringDisabled)
  {
    __filteringDisabled = *(result + 40);
    *(*(*(result + 32) + 8) + 24) = 1;
  }

  return result;
}

+ (MPMediaQuery)genresQuery
{
  v2 = [MPMediaQuery alloc];
  v3 = MEMORY[0x1E695DFD8];
  v4 = [MPMediaPropertyPredicate predicateWithValue:&unk_1F1509940 forProperty:@"mediaType"];
  v5 = [v3 setWithObjects:{v4, 0}];
  v6 = [(MPMediaQuery *)v2 initWithFilterPredicates:v5];

  [(MPMediaQuery *)v6 setGroupingType:5];

  return v6;
}

+ (MPMediaQuery)composersQuery
{
  v2 = [MPMediaQuery alloc];
  v3 = MEMORY[0x1E695DFD8];
  v4 = [MPMediaPropertyPredicate predicateWithValue:&unk_1F1509940 forProperty:@"mediaType"];
  v5 = [v3 setWithObjects:{v4, 0}];
  v6 = [(MPMediaQuery *)v2 initWithFilterPredicates:v5];

  [(MPMediaQuery *)v6 setGroupingType:4];

  return v6;
}

+ (MPMediaQuery)compilationsQuery
{
  v2 = [MPMediaQuery alloc];
  v3 = MEMORY[0x1E695DFD8];
  v4 = [MPMediaPropertyPredicate predicateWithValue:&unk_1F1509940 forProperty:@"mediaType"];
  v5 = [MPMediaPropertyPredicate predicateWithValue:MEMORY[0x1E695E118] forProperty:@"isCompilation" comparisonType:109];
  v6 = [v3 setWithObjects:{v4, v5, 0}];
  v7 = [(MPMediaQuery *)v2 initWithFilterPredicates:v6];

  [(MPMediaQuery *)v7 setGroupingType:1];

  return v7;
}

+ (id)audibleAudiobooksQuery
{
  v2 = [a1 audiobooksQuery];
  v3 = [MEMORY[0x1E696AD98] numberWithInteger:1];
  v4 = [MPMediaPropertyPredicate predicateWithValue:v3 forProperty:@"isAudible"];
  [v2 addFilterPredicate:v4];

  return v2;
}

+ (id)videoITunesUQuery
{
  v2 = [MPMediaQuery alloc];
  v3 = MEMORY[0x1E695DFD8];
  v4 = [MEMORY[0x1E696AD98] numberWithInteger:4096];
  v5 = [MPMediaPropertyPredicate predicateWithValue:v4 forProperty:@"mediaType"];
  v6 = [v3 setWithObject:v5];
  v7 = [(MPMediaQuery *)v2 initWithFilterPredicates:v6];

  [(MPMediaQuery *)v7 setGroupingType:1];

  return v7;
}

+ (id)ITunesUAudioQuery
{
  v2 = [MPMediaQuery alloc];
  v3 = MEMORY[0x1E695DFD8];
  v4 = [MEMORY[0x1E696AD98] numberWithInteger:8];
  v5 = [MPMediaPropertyPredicate predicateWithValue:v4 forProperty:@"mediaType"];
  v6 = [v3 setWithObject:v5];
  v7 = [(MPMediaQuery *)v2 initWithFilterPredicates:v6];

  v8 = [MEMORY[0x1E696AD98] numberWithBool:1];
  v9 = [MPMediaPropertyPredicate predicateWithValue:v8 forProperty:@"isITunesU"];
  [(MPMediaQuery *)v7 addFilterPredicate:v9];

  [(MPMediaQuery *)v7 setGroupingType:1];

  return v7;
}

+ (id)ITunesUQuery
{
  v2 = [MPMediaQuery alloc];
  v3 = MEMORY[0x1E695DFD8];
  v4 = [MEMORY[0x1E696AD98] numberWithBool:1];
  v5 = [MPMediaPropertyPredicate predicateWithValue:v4 forProperty:@"isITunesU"];
  v6 = [v3 setWithObject:v5];
  v7 = [(MPMediaQuery *)v2 initWithFilterPredicates:v6];

  [(MPMediaQuery *)v7 setGroupingType:1];

  return v7;
}

+ (MPMediaQuery)podcastsQuery
{
  v2 = [MPMediaQuery alloc];
  v3 = MEMORY[0x1E695DFD8];
  v4 = [MEMORY[0x1E696AD98] numberWithInteger:1026];
  v5 = [MPMediaPropertyPredicate predicateWithValue:v4 forProperty:@"mediaType"];
  v6 = [v3 setWithObject:v5];
  v7 = [(MPMediaQuery *)v2 initWithFilterPredicates:v6];

  [(MPMediaQuery *)v7 setGroupingType:7];

  return v7;
}

+ (MPMediaQuery)artistsQuery
{
  v2 = [MPMediaQuery alloc];
  v3 = MEMORY[0x1E695DFD8];
  v4 = [MPMediaPropertyPredicate predicateWithValue:&unk_1F1509940 forProperty:@"mediaType"];
  v5 = [MPMediaPropertyPredicate predicateWithValue:MEMORY[0x1E695E110] forProperty:@"isCompilation" comparisonType:109];
  v6 = [v3 setWithObjects:{v4, v5, 0}];
  v7 = [(MPMediaQuery *)v2 initWithFilterPredicates:v6];

  [(MPMediaQuery *)v7 setGroupingType:2];

  return v7;
}

+ (MPMediaQuery)albumsQuery
{
  v2 = [MPMediaQuery alloc];
  v3 = MEMORY[0x1E695DFD8];
  v4 = [MPMediaPropertyPredicate predicateWithValue:&unk_1F1509940 forProperty:@"mediaType"];
  v5 = [v3 setWithObjects:{v4, 0}];
  v6 = [(MPMediaQuery *)v2 initWithFilterPredicates:v5];

  [(MPMediaQuery *)v6 setGroupingType:1];

  return v6;
}

@end