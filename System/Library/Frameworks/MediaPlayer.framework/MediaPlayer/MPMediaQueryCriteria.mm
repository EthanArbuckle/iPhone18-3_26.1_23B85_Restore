@interface MPMediaQueryCriteria
- (BOOL)excludesEntitiesWithBlankNames;
- (BOOL)isEqual:(id)a3;
- (BOOL)specifiesPlaylistItems;
- (MPMediaQueryCriteria)init;
- (id)ML3CollectionsQueryInLibrary:(id)a3;
- (id)ML3ItemsQueryInLibrary:(id)a3;
- (id)ML3ItemsQueryInLibrary:(id)a3 orderingTerms:(id)a4 nameBlankProperty:(id)a5;
- (id)ML3OrderingTermsForGroupingType:(int64_t)a3;
- (id)ML3OrderingTermsForMPOrderingProperties:(id)a3 directionalityMapping:(id)a4 entityClass:(Class)a5;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)predicateForProperty:(id)a3;
- (unint64_t)hash;
- (void)addFilterPredicate:(id)a3;
- (void)addFilterPredicates:(id)a3;
- (void)removeFilterPredicate:(id)a3;
- (void)removePredicatesForProperty:(id)a3;
- (void)setFilterPredicates:(id)a3;
@end

@implementation MPMediaQueryCriteria

- (MPMediaQueryCriteria)init
{
  v3.receiver = self;
  v3.super_class = MPMediaQueryCriteria;
  result = [(MPMediaQueryCriteria *)&v3 init];
  if (result)
  {
    result->_entityOrder = 2;
    result->_useSections = 1;
  }

  return result;
}

- (unint64_t)hash
{
  v45 = *MEMORY[0x1E69E9840];
  v3 = self->_entityLimit + 29 * self->_groupingType;
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  v40 = 0u;
  v4 = self->_orderingProperties;
  v5 = [(NSArray *)v4 countByEnumeratingWithState:&v37 objects:v44 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v38;
    do
    {
      v8 = 0;
      do
      {
        if (*v38 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v3 ^= [*(*(&v37 + 1) + 8 * v8++) hash];
      }

      while (v6 != v8);
      v6 = [(NSArray *)v4 countByEnumeratingWithState:&v37 objects:v44 count:16];
    }

    while (v6);
  }

  v35 = 0u;
  v36 = 0u;
  v33 = 0u;
  v34 = 0u;
  v9 = self->_filterPredicates;
  v10 = [(NSMutableSet *)v9 countByEnumeratingWithState:&v33 objects:v43 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v34;
    do
    {
      v13 = 0;
      do
      {
        if (*v34 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v3 ^= [*(*(&v33 + 1) + 8 * v13++) hash];
      }

      while (v11 != v13);
      v11 = [(NSMutableSet *)v9 countByEnumeratingWithState:&v33 objects:v43 count:16];
    }

    while (v11);
  }

  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  v14 = self->_itemPropertiesToFetch;
  v15 = [(NSSet *)v14 countByEnumeratingWithState:&v29 objects:v42 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = *v30;
    do
    {
      v18 = 0;
      do
      {
        if (*v30 != v17)
        {
          objc_enumerationMutation(v14);
        }

        v3 ^= [*(*(&v29 + 1) + 8 * v18++) hash];
      }

      while (v16 != v18);
      v16 = [(NSSet *)v14 countByEnumeratingWithState:&v29 objects:v42 count:16];
    }

    while (v16);
  }

  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  v19 = self->_collectionPropertiesToFetch;
  v20 = [(NSSet *)v19 countByEnumeratingWithState:&v25 objects:v41 count:16];
  if (v20)
  {
    v21 = v20;
    v22 = *v26;
    do
    {
      v23 = 0;
      do
      {
        if (*v26 != v22)
        {
          objc_enumerationMutation(v19);
        }

        v3 ^= [*(*(&v25 + 1) + 8 * v23++) hash];
      }

      while (v21 != v23);
      v21 = [(NSSet *)v19 countByEnumeratingWithState:&v25 objects:v41 count:16];
    }

    while (v21);
  }

  return v3;
}

- (BOOL)excludesEntitiesWithBlankNames
{
  v20 = *MEMORY[0x1E69E9840];
  if (self->_includeEntitiesWithBlankNames)
  {
    return 0;
  }

  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v3 = self->_filterPredicates;
  v4 = [(NSMutableSet *)v3 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v16;
    while (2)
    {
      v7 = 0;
      do
      {
        if (*v16 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v15 + 1) + 8 * v7);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          if (excludesEntitiesWithBlankNames_once != -1)
          {
            dispatch_once(&excludesEntitiesWithBlankNames_once, &__block_literal_global_20342);
          }

          v9 = [v8 property];
          if ([excludesEntitiesWithBlankNames_allowedBlankNameProperties containsObject:v9] & 1) != 0 || objc_msgSend(v9, "isEqualToString:", @"mediaType") && (objc_msgSend(v8, "value"), v10 = objc_claimAutoreleasedReturnValue(), objc_opt_class(), isKindOfClass = objc_opt_isKindOfClass(), v10, (isKindOfClass) && (objc_msgSend(v8, "value"), v12 = objc_claimAutoreleasedReturnValue(), v13 = objc_msgSend(v12, "integerValue"), v12, v13) && (v13 == 4 || (v13 & 0xFFFFFFFFFFFF00FFLL) == 0))
          {

            v2 = 0;
            goto LABEL_22;
          }
        }

        ++v7;
      }

      while (v5 != v7);
      v5 = [(NSMutableSet *)v3 countByEnumeratingWithState:&v15 objects:v19 count:16];
      if (v5)
      {
        continue;
      }

      break;
    }
  }

  v2 = 1;
LABEL_22:

  return v2;
}

void __54__MPMediaQueryCriteria_excludesEntitiesWithBlankNames__block_invoke()
{
  v0 = [objc_alloc(MEMORY[0x1E695DFD8]) initWithObjects:{@"artist", @"artistPID", @"albumArtist", @"albumArtistPID", @"albumTitle", @"albumPID", @"composer", @"composerPID", @"seriesName", @"seasonName", @"podcastTitle", @"podcastPID", @"podcastURL", @"persistentID", 0}];
  v1 = excludesEntitiesWithBlankNames_allowedBlankNameProperties;
  excludesEntitiesWithBlankNames_allowedBlankNameProperties = v0;
}

- (id)ML3CollectionsQueryInLibrary:(id)a3
{
  v40 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(MPMediaQueryCriteria *)self groupingType];
  v6 = 0;
  v7 = MEMORY[0x1E69B2D98];
  switch(v5)
  {
    case 0:
    case 22:
      v7 = MEMORY[0x1E69B3388];
      goto LABEL_7;
    case 1:
    case 7:
    case 9:
    case 10:
    case 12:
    case 17:
    case 21:
      goto LABEL_7;
    case 2:
    case 8:
      v7 = MEMORY[0x1E69B2DC0];
      goto LABEL_7;
    case 3:
    case 14:
    case 18:
      v7 = MEMORY[0x1E69B2D70];
      goto LABEL_7;
    case 4:
    case 15:
    case 19:
      v7 = MEMORY[0x1E69B2E78];
      goto LABEL_7;
    case 5:
    case 16:
    case 20:
      v7 = MEMORY[0x1E69B2F88];
LABEL_7:
      v6 = *v7;
      goto LABEL_8;
    case 6:
      v6 = [MEMORY[0x1E695DF70] array];
      v33 = 0u;
      v34 = 0u;
      v35 = 0u;
      v36 = 0u;
      v17 = [(MPMediaQueryCriteria *)self filterPredicates];
      v18 = [v17 countByEnumeratingWithState:&v33 objects:v39 count:16];
      if (v18)
      {
        v19 = v18;
        v20 = *v34;
        do
        {
          for (i = 0; i != v19; ++i)
          {
            if (*v34 != v20)
            {
              objc_enumerationMutation(v17);
            }

            v22 = [*(*(&v33 + 1) + 8 * i) ML3PredicateForContainer];
            if (v22)
            {
              [v6 addObject:v22];
            }
          }

          v19 = [v17 countByEnumeratingWithState:&v33 objects:v39 count:16];
        }

        while (v19);
      }

      v13 = [MEMORY[0x1E69B3428] predicateMatchingPredicates:v6];
      v23 = [(MPMediaQueryCriteria *)self orderingProperties];
      v24 = [(MPMediaQueryCriteria *)self orderingDirectionMappings];
      v14 = [(MPMediaQueryCriteria *)self ML3OrderingTermsForMPOrderingProperties:v23 directionalityMapping:v24 entityClass:objc_opt_class()];

      if (!v14)
      {
        v14 = [MEMORY[0x1E69B34A0] defaultOrderingTerms];
      }

      if ([(MPMediaQueryCriteria *)self includeNonLibraryEntities])
      {
        [MEMORY[0x1E69B34A0] unrestrictedAllItemsQueryWithlibrary:v4 predicate:v13 orderingTerms:v14];
      }

      else
      {
        [MEMORY[0x1E69B34A0] queryWithLibrary:v4 predicate:v13 orderingTerms:v14];
      }
      v25 = ;
      v30 = v25;
      if (v25)
      {
        if (self->_entityLimit)
        {
          [v25 setLimit:?];
        }

        if ([(MPMediaQueryCriteria *)self ignoreSystemFilterPredicates])
        {
          [v30 setIgnoreSystemFilterPredicates:1];
        }

        if ([(MPMediaQueryCriteria *)self ignoreRestrictionsPredicates])
        {
          [v30 setIgnoreRestrictionsPredicates:1];
        }
      }

      goto LABEL_38;
    default:
LABEL_8:
      v8 = [(MPMediaQueryCriteria *)self orderingProperties];
      v9 = [(MPMediaQueryCriteria *)self orderingDirectionMappings];
      v10 = [(MPMediaQueryCriteria *)self ML3OrderingTermsForMPOrderingProperties:v8 directionalityMapping:v9 entityClass:objc_opt_class()];
      v11 = v10;
      if (v10)
      {
        v12 = v10;
      }

      else
      {
        v12 = [(MPMediaQueryCriteria *)self ML3OrderingTermsForGroupingType:v5];
      }

      v13 = v12;

      v14 = [(MPMediaQueryCriteria *)self ML3ItemsQueryInLibrary:v4 orderingTerms:v13 nameBlankProperty:v6];
      switch(v5)
      {
        case 0:
        case 22:
          goto LABEL_52;
        case 1:
        case 7:
        case 10:
        case 12:
        case 13:
        case 17:
        case 21:
          v15 = MEMORY[0x1E69B3418];
          v16 = MEMORY[0x1E69B2DA0];
          goto LABEL_34;
        case 2:
        case 8:
          v15 = MEMORY[0x1E69B3438];
          v16 = MEMORY[0x1E69B2DD0];
          goto LABEL_34;
        case 3:
        case 14:
        case 18:
          v15 = MEMORY[0x1E69B3420];
          v16 = MEMORY[0x1E69B2D78];
          goto LABEL_34;
        case 4:
        case 15:
        case 19:
          v15 = MEMORY[0x1E69B3490];
          v16 = MEMORY[0x1E69B2E80];
          goto LABEL_34;
        case 5:
        case 16:
        case 20:
          v15 = MEMORY[0x1E69B34C8];
          v16 = MEMORY[0x1E69B2F78];
          goto LABEL_34;
        case 9:
          v15 = MEMORY[0x1E69B3418];
          v16 = MEMORY[0x1E69B31F0];
LABEL_34:
          v29 = [v15 aggregateQueryWithUnitQuery:v14 foreignPersistentIDProperty:*v16];
          break;
        default:
          v26 = os_log_create("com.apple.amp.mediaplayer", "Library");
          if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
          {
            v27 = [(MPMediaQueryCriteria *)self groupingType];
            if (v27 > 0x16)
            {
              v28 = @"(unknown grouping type)";
            }

            else
            {
              v28 = off_1E7679DB0[v27];
            }

            v32 = v28;
            *buf = 138412290;
            v38 = v32;
            _os_log_impl(&dword_1A238D000, v26, OS_LOG_TYPE_ERROR, "no ML3 collection query for grouping type %@, using items query", buf, 0xCu);
          }

LABEL_52:
          v29 = v14;
          break;
      }

      v30 = v29;
      if (v29 && self->_entityLimit)
      {
        [v29 setLimit:?];
      }

LABEL_38:

      return v30;
  }
}

- (id)ML3ItemsQueryInLibrary:(id)a3 orderingTerms:(id)a4 nameBlankProperty:(id)a5
{
  v54 = *MEMORY[0x1E69E9840];
  v47 = a3;
  v40 = a4;
  v43 = a5;
  v48 = [MEMORY[0x1E695DF70] array];
  v49 = 0u;
  v50 = 0u;
  v51 = 0u;
  v52 = 0u;
  v42 = self;
  v8 = [(MPMediaQueryCriteria *)self filterPredicates];
  v9 = [v8 countByEnumeratingWithState:&v49 objects:v53 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = 0;
    v12 = 0;
    v13 = *v50;
    v44 = *MEMORY[0x1E69B2AD0];
    v45 = *MEMORY[0x1E69B2B10];
    v46 = *MEMORY[0x1E69B2C58];
    while (1)
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v50 != v13)
        {
          objc_enumerationMutation(v8);
        }

        v15 = *(*(&v49 + 1) + 8 * i);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v16 = [v15 property];
          if ([v16 isEqualToString:@"playlistPersistentID"])
          {
            v17 = [v15 value];
            v18 = [v17 longLongValue];
            goto LABEL_17;
          }

          if ([v16 isEqualToString:@"name"])
          {
            v19 = MEMORY[0x1E69B34A0];
            v20 = MEMORY[0x1E69B3488];
            v21 = [v15 value];
            v22 = [v20 predicateWithProperty:v46 equalToValue:v21];
            v17 = [v19 anyInLibrary:v47 predicate:v22];

            goto LABEL_16;
          }

          if ([v16 isEqualToString:@"cloudPlaylistUniversalLibraryID"])
          {
            v23 = MEMORY[0x1E69B34A0];
            v24 = MEMORY[0x1E69B3488];
            v25 = [v15 value];
            v26 = v24;
            v27 = v45;
            goto LABEL_15;
          }

          if ([v16 isEqualToString:@"cloudGlobalID"])
          {
            v23 = MEMORY[0x1E69B34A0];
            v28 = MEMORY[0x1E69B3488];
            v25 = [v15 value];
            v26 = v28;
            v27 = v44;
LABEL_15:
            v29 = [v26 predicateWithProperty:v27 equalToValue:{v25, v40}];
            v17 = [v23 anyInLibrary:v47 predicate:v29];

LABEL_16:
            v18 = [v17 persistentID];
LABEL_17:
            v11 = v18;

            v12 = 1;
            goto LABEL_21;
          }
        }

        v16 = [v15 ML3PredicateForTrack];
        if (v16)
        {
          [v48 addObject:v16];
        }

LABEL_21:
      }

      v10 = [v8 countByEnumeratingWithState:&v49 objects:v53 count:16];
      if (!v10)
      {
        goto LABEL_25;
      }
    }
  }

  v11 = 0;
  v12 = 0;
LABEL_25:

  if (v43 && [(MPMediaQueryCriteria *)v42 excludesEntitiesWithBlankNames])
  {
    v30 = [MEMORY[0x1E69B3508] predicateWithProperty:v43];
    [v48 addObject:v30];
  }

  v31 = [MEMORY[0x1E69B3428] predicateMatchingPredicates:{v48, v40}];
  v32 = [(MPMediaQueryCriteria *)v42 groupingType];
  v33 = v32;
  if (v12)
  {
    v34 = v41;
    if (!v41 && v32)
    {
      v34 = [(MPMediaQueryCriteria *)v42 ML3OrderingTermsForGroupingType:v32];
    }

    v35 = [MEMORY[0x1E69B34A0] newWithPersistentID:v11 inLibrary:v47];
    v36 = [MEMORY[0x1E69B3538] containerQueryWithContainer:v35 predicate:v31 orderingTerms:v34];

    if (!v36)
    {
      goto LABEL_48;
    }

LABEL_42:
    if ([(MPMediaQueryCriteria *)v42 ignoreSystemFilterPredicates])
    {
      [v36 setIgnoreSystemFilterPredicates:1];
    }

    if ([(MPMediaQueryCriteria *)v42 ignoreRestrictionsPredicates])
    {
      [v36 setIgnoreRestrictionsPredicates:1];
    }

    if (v42->_entityLimit)
    {
      [v36 setLimit:?];
    }

    goto LABEL_48;
  }

  v34 = v41;
  if (!v41)
  {
    if ([(MPMediaQueryCriteria *)v42 entityOrder]== 2)
    {
      v34 = [(MPMediaQueryCriteria *)v42 ML3OrderingTermsForGroupingType:v33];
    }

    else
    {
      v34 = 0;
    }
  }

  v37 = [(MPMediaQueryCriteria *)v42 includeNonLibraryEntities];
  useSections = v42->_useSections;
  if (v37)
  {
    [MEMORY[0x1E69B3538] allItemsQueryWithLibrary:v47 predicate:v31 orderingTerms:v34 usingSections:useSections];
  }

  else
  {
    [MEMORY[0x1E69B3538] queryWithLibrary:v47 predicate:v31 orderingTerms:v34 usingSections:useSections];
  }
  v36 = ;
  if (v36)
  {
    goto LABEL_42;
  }

LABEL_48:

  return v36;
}

- (id)ML3ItemsQueryInLibrary:(id)a3
{
  v4 = a3;
  v5 = [(MPMediaQueryCriteria *)self orderingProperties];
  v6 = [(MPMediaQueryCriteria *)self orderingDirectionMappings];
  v7 = [(MPMediaQueryCriteria *)self ML3OrderingTermsForMPOrderingProperties:v5 directionalityMapping:v6 entityClass:objc_opt_class()];

  v8 = [(MPMediaQueryCriteria *)self ML3ItemsQueryInLibrary:v4 orderingTerms:v7 nameBlankProperty:*MEMORY[0x1E69B3388]];

  return v8;
}

- (id)ML3OrderingTermsForGroupingType:(int64_t)a3
{
  v41[6] = *MEMORY[0x1E69E9840];
  v3 = 0;
  switch(a3)
  {
    case 0:
      v19 = [(MPMediaQueryCriteria *)self predicateForProperty:@"mediaType"];
      v20 = [v19 value];
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();

      if (isKindOfClass)
      {
        v22 = [(MPMediaQueryCriteria *)self predicateForProperty:@"mediaType"];
        v23 = [v22 value];
        v24 = [v23 integerValue];

        if ((v24 & 0xFFFFFFFFFFFFFEFFLL) == 0x200)
        {
          goto LABEL_17;
        }

        v27 = [(MPMediaQueryCriteria *)self predicateForProperty:@"isITunesU"];
        v28 = [v27 value];
        v29 = [v28 integerValue];

        if (v29 || (v24 & 1) == 0 && (v24 & 0x140A) != 0 && (v24 & 0xFFFFFFFFFFFFEAF4) == 0)
        {
          v4 = [MEMORY[0x1E69B3538] podcastsEpisodesDefaultOrderingTerms];
          goto LABEL_37;
        }
      }

      v30 = [(MPMediaQueryCriteria *)self predicateForProperty:@"albumPID"];
      if (v30)
      {
      }

      else
      {
        v31 = [(MPMediaQueryCriteria *)self predicateForProperty:@"albumTitle"];

        if (!v31)
        {
          goto LABEL_36;
        }
      }

      v4 = [MEMORY[0x1E69B3538] albumAllArtistsDefaultOrderingTerms];
      goto LABEL_37;
    case 1:
    case 10:
      v4 = [MEMORY[0x1E69B3538] albumsDefaultOrderingTerms];
      goto LABEL_37;
    case 2:
      v4 = [MEMORY[0x1E69B3538] artistsDefaultOrderingTerms];
      goto LABEL_37;
    case 3:
      v5 = [MEMORY[0x1E69B34F8] orderingTermWithProperty:*MEMORY[0x1E69B2D70]];
      v39[0] = v5;
      v6 = [MEMORY[0x1E69B34F8] orderingTermWithProperty:*MEMORY[0x1E69B2D78]];
      v39[1] = v6;
      v7 = [MEMORY[0x1E69B34F8] orderingTermWithProperty:*MEMORY[0x1E69B2DA0]];
      v39[2] = v7;
      v13 = MEMORY[0x1E695DEC8];
      v14 = v39;
      goto LABEL_22;
    case 4:
      v4 = [MEMORY[0x1E69B3538] composersDefaultOrderingTerms];
      goto LABEL_37;
    case 5:
      v4 = [MEMORY[0x1E69B3538] genresDefaultOrderingTerms];
      goto LABEL_37;
    case 6:
      break;
    case 7:
      v4 = [MEMORY[0x1E69B3538] podcastsDefaultOrderingTerms];
      goto LABEL_37;
    case 8:
    case 9:
LABEL_17:
      v4 = [MEMORY[0x1E69B3538] TVShowEpisodesDefaultOrderingTerms];
      goto LABEL_37;
    case 12:
    case 21:
      v5 = [MEMORY[0x1E69B34F8] orderingTermWithProperty:*MEMORY[0x1E69B2DA8] direction:2];
      v41[0] = v5;
      v6 = [MEMORY[0x1E69B34F8] orderingTermWithProperty:*MEMORY[0x1E69B2D98]];
      v41[1] = v6;
      v7 = [MEMORY[0x1E69B34F8] orderingTermWithProperty:*MEMORY[0x1E69B2DA0]];
      v41[2] = v7;
      v8 = [MEMORY[0x1E69B34F8] orderingTermWithProperty:*MEMORY[0x1E69B2ED8]];
      v41[3] = v8;
      v9 = [MEMORY[0x1E69B34F8] orderingTermWithProperty:*MEMORY[0x1E69B33A8]];
      v41[4] = v9;
      v10 = [MEMORY[0x1E69B34F8] orderingTermWithProperty:*MEMORY[0x1E69B3388]];
      v41[5] = v10;
      v11 = MEMORY[0x1E695DEC8];
      v12 = v41;
      goto LABEL_6;
    case 13:
      v5 = [MEMORY[0x1E69B34F8] orderingTermWithProperty:*MEMORY[0x1E69B2EA0] direction:2];
      v40[0] = v5;
      v6 = [MEMORY[0x1E69B34F8] orderingTermWithProperty:*MEMORY[0x1E69B2D98]];
      v40[1] = v6;
      v7 = [MEMORY[0x1E69B34F8] orderingTermWithProperty:*MEMORY[0x1E69B2DA0]];
      v40[2] = v7;
      v8 = [MEMORY[0x1E69B34F8] orderingTermWithProperty:*MEMORY[0x1E69B2ED8]];
      v40[3] = v8;
      v9 = [MEMORY[0x1E69B34F8] orderingTermWithProperty:*MEMORY[0x1E69B33A8]];
      v40[4] = v9;
      v10 = [MEMORY[0x1E69B34F8] orderingTermWithProperty:*MEMORY[0x1E69B3388]];
      v40[5] = v10;
      v11 = MEMORY[0x1E695DEC8];
      v12 = v40;
LABEL_6:
      v3 = [v11 arrayWithObjects:v12 count:6];
      goto LABEL_14;
    case 14:
      v5 = [MEMORY[0x1E69B34F8] orderingTermWithProperty:*MEMORY[0x1E69B2EA0] direction:2];
      v38[0] = v5;
      v6 = [MEMORY[0x1E69B34F8] orderingTermWithProperty:*MEMORY[0x1E69B2D70]];
      v38[1] = v6;
      v7 = [MEMORY[0x1E69B34F8] orderingTermWithProperty:*MEMORY[0x1E69B2D78]];
      v38[2] = v7;
      v8 = [MEMORY[0x1E69B34F8] orderingTermWithProperty:*MEMORY[0x1E69B2DA0]];
      v38[3] = v8;
      v9 = [MEMORY[0x1E69B34F8] orderingTermWithProperty:*MEMORY[0x1E69B2ED8]];
      v38[4] = v9;
      v10 = [MEMORY[0x1E69B34F8] orderingTermWithProperty:*MEMORY[0x1E69B33A8]];
      v38[5] = v10;
      v15 = [MEMORY[0x1E69B34F8] orderingTermWithProperty:*MEMORY[0x1E69B3388]];
      v38[6] = v15;
      v16 = MEMORY[0x1E695DEC8];
      v17 = v38;
      goto LABEL_13;
    case 15:
      v5 = [MEMORY[0x1E69B34F8] orderingTermWithProperty:*MEMORY[0x1E69B2EA0] direction:2];
      v36[0] = v5;
      v6 = [MEMORY[0x1E69B34F8] orderingTermWithProperty:*MEMORY[0x1E69B2E78]];
      v36[1] = v6;
      v7 = [MEMORY[0x1E69B34F8] orderingTermWithProperty:*MEMORY[0x1E69B2E80]];
      v36[2] = v7;
      v8 = [MEMORY[0x1E69B34F8] orderingTermWithProperty:*MEMORY[0x1E69B2D98]];
      v36[3] = v8;
      v9 = [MEMORY[0x1E69B34F8] orderingTermWithProperty:*MEMORY[0x1E69B3388]];
      v36[4] = v9;
      v25 = MEMORY[0x1E695DEC8];
      v26 = v36;
      goto LABEL_24;
    case 16:
      v5 = [MEMORY[0x1E69B34F8] orderingTermWithProperty:*MEMORY[0x1E69B2EA0] direction:2];
      v34[0] = v5;
      v6 = [MEMORY[0x1E69B34F8] orderingTermWithProperty:*MEMORY[0x1E69B2F88]];
      v34[1] = v6;
      v7 = [MEMORY[0x1E69B34F8] orderingTermWithProperty:*MEMORY[0x1E69B2F78]];
      v34[2] = v7;
      v13 = MEMORY[0x1E695DEC8];
      v14 = v34;
      goto LABEL_22;
    case 17:
    case 22:
      v4 = [MEMORY[0x1E69B3538] albumsByAlbumArtistDefaultOrderingTerms];
      goto LABEL_37;
    case 18:
      v5 = [MEMORY[0x1E69B34F8] orderingTermWithProperty:*MEMORY[0x1E69B2EB0] direction:2];
      v37[0] = v5;
      v6 = [MEMORY[0x1E69B34F8] orderingTermWithProperty:*MEMORY[0x1E69B2D70]];
      v37[1] = v6;
      v7 = [MEMORY[0x1E69B34F8] orderingTermWithProperty:*MEMORY[0x1E69B2D78]];
      v37[2] = v7;
      v8 = [MEMORY[0x1E69B34F8] orderingTermWithProperty:*MEMORY[0x1E69B2DA0]];
      v37[3] = v8;
      v9 = [MEMORY[0x1E69B34F8] orderingTermWithProperty:*MEMORY[0x1E69B2ED8]];
      v37[4] = v9;
      v10 = [MEMORY[0x1E69B34F8] orderingTermWithProperty:*MEMORY[0x1E69B33A8]];
      v37[5] = v10;
      v15 = [MEMORY[0x1E69B34F8] orderingTermWithProperty:*MEMORY[0x1E69B3388]];
      v37[6] = v15;
      v16 = MEMORY[0x1E695DEC8];
      v17 = v37;
LABEL_13:
      v3 = [v16 arrayWithObjects:v17 count:7];

LABEL_14:
      goto LABEL_25;
    case 19:
      v5 = [MEMORY[0x1E69B34F8] orderingTermWithProperty:*MEMORY[0x1E69B2EB0] direction:2];
      v35[0] = v5;
      v6 = [MEMORY[0x1E69B34F8] orderingTermWithProperty:*MEMORY[0x1E69B2E78]];
      v35[1] = v6;
      v7 = [MEMORY[0x1E69B34F8] orderingTermWithProperty:*MEMORY[0x1E69B2E80]];
      v35[2] = v7;
      v8 = [MEMORY[0x1E69B34F8] orderingTermWithProperty:*MEMORY[0x1E69B2D98]];
      v35[3] = v8;
      v9 = [MEMORY[0x1E69B34F8] orderingTermWithProperty:*MEMORY[0x1E69B3388]];
      v35[4] = v9;
      v25 = MEMORY[0x1E695DEC8];
      v26 = v35;
LABEL_24:
      v3 = [v25 arrayWithObjects:v26 count:5];
LABEL_25:

      goto LABEL_26;
    case 20:
      v5 = [MEMORY[0x1E69B34F8] orderingTermWithProperty:*MEMORY[0x1E69B2EB0] direction:2];
      v6 = [MEMORY[0x1E69B34F8] orderingTermWithProperty:{*MEMORY[0x1E69B2F88], v5}];
      v33[1] = v6;
      v7 = [MEMORY[0x1E69B34F8] orderingTermWithProperty:*MEMORY[0x1E69B2F78]];
      v33[2] = v7;
      v13 = MEMORY[0x1E695DEC8];
      v14 = v33;
LABEL_22:
      v3 = [v13 arrayWithObjects:v14 count:3];
LABEL_26:

      break;
    default:
LABEL_36:
      v4 = [MEMORY[0x1E69B3538] defaultOrderingTerms];
LABEL_37:
      v3 = v4;
      break;
  }

  return v3;
}

- (id)ML3OrderingTermsForMPOrderingProperties:(id)a3 directionalityMapping:(id)a4 entityClass:(Class)a5
{
  v36 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  if (ML3OrderingTermsForMPOrderingProperties_directionalityMapping_entityClass__onceToken != -1)
  {
    dispatch_once(&ML3OrderingTermsForMPOrderingProperties_directionalityMapping_entityClass__onceToken, &__block_literal_global_10141);
  }

  if (![v6 count])
  {
    v28 = 0;
    goto LABEL_31;
  }

  v28 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v6, "count")}];
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v26 = v6;
  v8 = v6;
  v9 = [v8 countByEnumeratingWithState:&v29 objects:v35 count:16];
  if (!v9)
  {
    goto LABEL_25;
  }

  v10 = v9;
  v11 = *v30;
  do
  {
    v12 = 0;
    do
    {
      if (*v30 != v11)
      {
        objc_enumerationMutation(v8);
      }

      v13 = *(*(&v29 + 1) + 8 * v12);
      v14 = [v7 objectForKeyedSubscript:v13];
      v15 = [ML3OrderingTermsForMPOrderingProperties_directionalityMapping_entityClass__orderingTermMap objectForKeyedSubscript:v13];
      v16 = v15;
      if (v14)
      {
        if (v15)
        {
          v17 = MEMORY[0x1E69B34F8];
          v18 = [v15 property];
          v19 = [v17 orderingTermWithProperty:v18 direction:{objc_msgSend(v14, "intValue")}];

          v16 = v19;
          goto LABEL_18;
        }

        v22 = [(objc_class *)a5 propertyForMPMediaEntityProperty:v13];
        if (!v22)
        {
LABEL_23:
          v16 = 0;
          goto LABEL_20;
        }

        v18 = v22;
        v21 = [MEMORY[0x1E69B34F8] orderingTermWithProperty:v22 direction:{objc_msgSend(v14, "intValue")}];
LABEL_17:
        v16 = v21;
LABEL_18:

        if (!v16)
        {
          goto LABEL_21;
        }

        goto LABEL_19;
      }

      if (!v15)
      {
        v20 = [(objc_class *)a5 propertyForMPMediaEntityProperty:v13];
        if (!v20)
        {
          goto LABEL_23;
        }

        v18 = v20;
        v21 = [MEMORY[0x1E69B34F8] orderingTermWithProperty:v20];
        goto LABEL_17;
      }

LABEL_19:
      [v28 addObject:v16];
LABEL_20:

LABEL_21:
      ++v12;
    }

    while (v10 != v12);
    v23 = [v8 countByEnumeratingWithState:&v29 objects:v35 count:16];
    v10 = v23;
  }

  while (v23);
LABEL_25:

  if (![v28 count])
  {
    v24 = os_log_create("com.apple.amp.mediaplayer", "Library");
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v34 = v8;
      _os_log_impl(&dword_1A238D000, v24, OS_LOG_TYPE_ERROR, "Unable to create orderingTerms for properties: %@", buf, 0xCu);
    }

    v28 = 0;
  }

  v6 = v26;
LABEL_31:

  return v28;
}

void __112__MPMediaQueryCriteria_ML3Additions__ML3OrderingTermsForMPOrderingProperties_directionalityMapping_entityClass___block_invoke()
{
  v15[12] = *MEMORY[0x1E69E9840];
  v14[0] = @"albumArtist";
  v13 = [MEMORY[0x1E69B34F8] orderingTermWithProperty:*MEMORY[0x1E69B2D70]];
  v15[0] = v13;
  v14[1] = @"albumTitle";
  v12 = [MEMORY[0x1E69B34F8] orderingTermWithProperty:*MEMORY[0x1E69B2D98]];
  v15[1] = v12;
  v14[2] = @"artist";
  v0 = [MEMORY[0x1E69B34F8] orderingTermWithProperty:*MEMORY[0x1E69B2DC0]];
  v15[2] = v0;
  v14[3] = @"composer";
  v1 = [MEMORY[0x1E69B34F8] orderingTermWithProperty:*MEMORY[0x1E69B2E78]];
  v15[3] = v1;
  v14[4] = @"genre";
  v2 = [MEMORY[0x1E69B34F8] orderingTermWithProperty:*MEMORY[0x1E69B2F88]];
  v15[4] = v2;
  v14[5] = @"seriesName";
  v3 = [MEMORY[0x1E69B34F8] orderingTermWithProperty:*MEMORY[0x1E69B3200]];
  v15[5] = v3;
  v14[6] = @"title";
  v4 = [MEMORY[0x1E69B34F8] orderingTermWithProperty:*MEMORY[0x1E69B3388]];
  v15[6] = v4;
  v14[7] = @"albumTrackNumber";
  v5 = [MEMORY[0x1E69B34F8] orderingTermWithProperty:*MEMORY[0x1E69B33A8]];
  v15[7] = v5;
  v14[8] = @"discNumber";
  v6 = [MEMORY[0x1E69B34F8] orderingTermWithProperty:*MEMORY[0x1E69B2ED8]];
  v15[8] = v6;
  v14[9] = @"playCount";
  v7 = [MEMORY[0x1E69B34F8] orderingTermWithProperty:*MEMORY[0x1E69B3158]];
  v15[9] = v7;
  v14[10] = @"seasonNumber";
  v8 = [MEMORY[0x1E69B34F8] orderingTermWithProperty:*MEMORY[0x1E69B31F0]];
  v15[10] = v8;
  v14[11] = @"name";
  v9 = [MEMORY[0x1E69B34F8] orderingTermWithProperty:*MEMORY[0x1E69B2C60]];
  v15[11] = v9;
  v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v15 forKeys:v14 count:12];
  v11 = ML3OrderingTermsForMPOrderingProperties_directionalityMapping_entityClass__orderingTermMap;
  ML3OrderingTermsForMPOrderingProperties_directionalityMapping_entityClass__orderingTermMap = v10;
}

- (BOOL)specifiesPlaylistItems
{
  v17 = *MEMORY[0x1E69E9840];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v2 = self->_filterPredicates;
  v3 = [(NSMutableSet *)v2 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v13;
    while (2)
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v13 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v12 + 1) + 8 * i);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v8 = [v7 property];
          v9 = [v8 isEqualToString:@"playlistPersistentID"];

          if (v9)
          {
            v10 = 1;
            goto LABEL_12;
          }
        }
      }

      v4 = [(NSMutableSet *)v2 countByEnumeratingWithState:&v12 objects:v16 count:16];
      if (v4)
      {
        continue;
      }

      break;
    }
  }

  v10 = 0;
LABEL_12:

  return v10;
}

- (void)removePredicatesForProperty:(id)a3
{
  v29 = *MEMORY[0x1E69E9840];
  v18 = a3;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v4 = self->_filterPredicates;
  v5 = [(NSMutableSet *)v4 countByEnumeratingWithState:&v23 objects:v28 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = 0;
    v8 = *v24;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v24 != v8)
        {
          objc_enumerationMutation(v4);
        }

        v10 = *(*(&v23 + 1) + 8 * i);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v11 = [v10 property];
          v12 = [v11 isEqualToString:v18];

          if (v12)
          {
            if (!v7)
            {
              v7 = objc_alloc_init(MEMORY[0x1E695DF70]);
            }

            [v7 addObject:v10];
          }
        }
      }

      v6 = [(NSMutableSet *)v4 countByEnumeratingWithState:&v23 objects:v28 count:16];
    }

    while (v6);
  }

  else
  {
    v7 = 0;
  }

  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v13 = v7;
  v14 = [v13 countByEnumeratingWithState:&v19 objects:v27 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v20;
    do
    {
      for (j = 0; j != v15; ++j)
      {
        if (*v20 != v16)
        {
          objc_enumerationMutation(v13);
        }

        [(MPMediaQueryCriteria *)self removeFilterPredicate:*(*(&v19 + 1) + 8 * j)];
      }

      v15 = [v13 countByEnumeratingWithState:&v19 objects:v27 count:16];
    }

    while (v15);
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
  v5 = self->_filterPredicates;
  v6 = [(NSMutableSet *)v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
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

      v6 = [(NSMutableSet *)v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
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

- (void)setFilterPredicates:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_filterPredicates != v4)
  {
    v9 = v4;
    if (v4)
    {
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();
      v5 = v9;
      if ((isKindOfClass & 1) == 0)
      {
        [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:@"filter predicates must be an NSSet"];
        v5 = v9;
      }
    }

    v7 = [(NSMutableSet *)v5 mutableCopy];
    filterPredicates = self->_filterPredicates;
    self->_filterPredicates = v7;

    v5 = v9;
  }
}

- (void)removeFilterPredicate:(id)a3
{
  [(NSMutableSet *)self->_filterPredicates removeObject:a3];
  if (![(NSMutableSet *)self->_filterPredicates count])
  {
    filterPredicates = self->_filterPredicates;
    self->_filterPredicates = 0;
  }
}

- (void)addFilterPredicates:(id)a3
{
  v7 = a3;
  if ([v7 count])
  {
    filterPredicates = self->_filterPredicates;
    if (filterPredicates)
    {
      v5 = filterPredicates;
    }

    else
    {
      v5 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    }

    v6 = self->_filterPredicates;
    self->_filterPredicates = v5;

    [(NSMutableSet *)self->_filterPredicates addObjectsFromArray:v7];
  }
}

- (void)addFilterPredicate:(id)a3
{
  filterPredicates = self->_filterPredicates;
  if (filterPredicates)
  {
    v5 = filterPredicates;
    v6 = self->_filterPredicates;
    self->_filterPredicates = v5;
    v7 = a3;
  }

  else
  {
    v8 = MEMORY[0x1E695DFA8];
    v9 = a3;
    v10 = objc_alloc_init(v8);
    v6 = self->_filterPredicates;
    self->_filterPredicates = v10;
  }

  [(NSMutableSet *)self->_filterPredicates addObject:a3];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  *(v4 + 16) = self->_entityOrder;
  *(v4 + 24) = self->_groupingType;
  *(v4 + 32) = self->_entityLimit;
  v5 = [(NSArray *)self->_orderingProperties copy];
  v6 = *(v4 + 40);
  *(v4 + 40) = v5;

  v7 = [(NSDictionary *)self->_orderingDirectionMappings copy];
  v8 = *(v4 + 72);
  *(v4 + 72) = v7;

  v9 = [(NSMutableSet *)self->_filterPredicates mutableCopy];
  v10 = *(v4 + 8);
  *(v4 + 8) = v9;

  v11 = [(NSSet *)self->_itemPropertiesToFetch copy];
  v12 = *(v4 + 48);
  *(v4 + 48) = v11;

  v13 = [(NSSet *)self->_collectionPropertiesToFetch copy];
  v14 = *(v4 + 56);
  *(v4 + 56) = v13;

  *(v4 + 64) = self->_useSections;
  *(v4 + 65) = self->_ignoreSystemFilterPredicates;
  *(v4 + 66) = self->_ignoreRestrictionsPredicates;
  *(v4 + 67) = self->_includeNonLibraryEntities;
  *(v4 + 68) = self->_includeEntitiesWithBlankNames;
  return v4;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v9 = [v4 isMemberOfClass:objc_opt_class()] && *(v4 + 2) == self->_entityOrder && *(v4 + 3) == self->_groupingType && *(v4 + 4) == self->_entityLimit && ((v5 = *(v4 + 5), v5 == self->_orderingProperties) || -[NSArray isEqualToArray:](v5, "isEqualToArray:")) && ((v6 = *(v4 + 1), v6 == self->_filterPredicates) || -[NSMutableSet isEqualToSet:](v6, "isEqualToSet:")) && ((v7 = *(v4 + 6), v7 == self->_itemPropertiesToFetch) || -[NSSet isEqualToSet:](v7, "isEqualToSet:")) && ((v8 = *(v4 + 7), v8 == self->_collectionPropertiesToFetch) || -[NSSet isEqualToSet:](v8, "isEqualToSet:")) && v4[64] == self->_useSections && v4[65] == self->_ignoreSystemFilterPredicates && v4[66] == self->_ignoreRestrictionsPredicates && v4[67] == self->_includeNonLibraryEntities && v4[68] == self->_includeEntitiesWithBlankNames && *(v4 + 9) == self->_orderingDirectionMappings;

  return v9;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  groupingType = self->_groupingType;
  if (groupingType > 0x16)
  {
    v6 = @"(unknown grouping type)";
  }

  else
  {
    v6 = off_1E7679DB0[groupingType];
  }

  v7 = v6;
  v8 = [v3 stringWithFormat:@"<%@: %p> %@, %@", v4, self, v7, self->_filterPredicates];

  if ([(NSArray *)self->_orderingProperties count])
  {
    v9 = [(NSArray *)self->_orderingProperties componentsJoinedByString:@", "];
    v10 = [v8 stringByAppendingFormat:@" ordered by %@", v9];

    v8 = v10;
  }

  if (self->_orderingDirectionMappings)
  {
    v11 = [v8 stringByAppendingFormat:@" with sort direction=%@", self->_orderingDirectionMappings];

    v8 = v11;
  }

  return v8;
}

@end