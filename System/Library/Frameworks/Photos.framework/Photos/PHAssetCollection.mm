@interface PHAssetCollection
+ (BOOL)_defaultKeyAssetsAtEndForType:(int64_t)type subtype:(int64_t)subtype;
+ (NSArray)defaultTitleFontNames;
+ (PHAssetCollection)transientAssetCollectionWithAssetFetchResult:(PHFetchResult *)fetchResult title:(NSString *)title;
+ (PHAssetCollection)transientAssetCollectionWithAssets:(NSArray *)assets title:(NSString *)title;
+ (PHFetchResult)fetchAssetCollectionsContainingAsset:(PHAsset *)asset withType:(PHAssetCollectionType)type options:(PHFetchOptions *)options;
+ (PHFetchResult)fetchAssetCollectionsWithALAssetGroupURLs:(NSArray *)assetGroupURLs options:(PHFetchOptions *)options;
+ (PHFetchResult)fetchAssetCollectionsWithLocalIdentifiers:(NSArray *)identifiers options:(PHFetchOptions *)options;
+ (PHFetchResult)fetchAssetCollectionsWithType:(PHAssetCollectionType)type subtype:(PHAssetCollectionSubtype)subtype options:(PHFetchOptions *)options;
+ (PHFetchResult)fetchMomentsInMomentList:(PHCollectionList *)momentList options:(PHFetchOptions *)options;
+ (id)_composePropertiesToFetchWithHint:(unint64_t)hint;
+ (id)assetCollectionDuplicateTypeMappingForAssetCollectionUUIDs:(id)ds photoLibrary:(id)library error:(id *)error;
+ (id)assetsMetadataFromAssets:(id)assets;
+ (id)corePropertiesToFetch;
+ (id)descriptionForSubtype:(int64_t)subtype;
+ (id)descriptionForType:(int64_t)type;
+ (id)descriptionOfTitleCategory:(int64_t)category;
+ (id)entityKeyMap;
+ (id)fetchAlbumIdentifiersContainingAsset:(id)asset options:(id)options;
+ (id)fetchAllTripHighlightsContainingAssetsWithUUIDs:(id)ds options:(id)options;
+ (id)fetchAssetCollectionsContainingAssets:(id)assets withType:(int64_t)type options:(id)options;
+ (id)fetchAssetCollectionsForReferences:(id)references photoLibrary:(id)library;
+ (id)fetchAssetCollectionsWithObjectIDs:(id)ds options:(id)options;
+ (id)fetchAssetCollectionsWithType:(int64_t)type localIdentifiers:(id)identifiers options:(id)options;
+ (id)fetchMomentsBackingMemory:(id)memory options:(id)options;
+ (id)fetchMomentsBackingSuggestion:(id)suggestion options:(id)options;
+ (id)fetchMomentsInHighlight:(id)highlight options:(id)options;
+ (id)fetchMomentsNeedingThemeAnalysisWithAdapterVersion:(int64_t)version uemVersion:(int64_t)uemVersion options:(id)options;
+ (id)fetchPhotosHighlightsContainingMoments:(id)moments options:(id)options;
+ (id)fetchRecentContentSyndicationAssetCollectionsWithOptions:(id)options maxNumberOfStacks:(int64_t)stacks maxNumberOfAssetsPerStack:(int64_t)stack;
+ (id)fetchSuggestedContributionsForAssetsFetchResult:(id)result options:(id)options;
+ (id)fetchSuggestedContributionsForAssetsMetadata:(id)metadata options:(id)options;
+ (id)fetchSuggestedContributionsForFileURLs:(id)ls options:(id)options;
+ (id)fetchUtilityCollectionsWithOptions:(id)options;
+ (id)fetchUtilityCollectionsWithType:(unsigned __int16)type options:(id)options;
+ (id)graphOptionsForTransientAssetCollection:(id)collection needsCompleteMomentsInfo:(BOOL)info options:(id)options;
+ (id)pl_PHAssetCollectionForAssetContainer:(id)container photoLibrary:(id)library includeTrash:(BOOL)trash;
+ (id)pl_albumsForAssetCollections:(id)collections;
+ (id)posterImageForAssetCollection:(id)collection;
+ (id)propertiesToFetchWithHint:(unint64_t)hint;
+ (id)titleFontNameForTitleCategory:(int64_t)category;
+ (id)transformValueExpression:(id)expression forKeyPath:(id)path;
+ (id)transientAssetCollectionWithAssetFetchResult:(id)result title:(id)title identifier:(id)identifier;
+ (id)transientAssetCollectionWithAssetFetchResult:(id)result title:(id)title subtitle:(id)subtitle identifier:(id)identifier startDate:(id)date endDate:(id)endDate;
+ (id)transientAssetCollectionWithAssetFetchResult:(id)result title:(id)title subtype:(int64_t)subtype;
+ (id)transientAssetCollectionWithAssetFetchResult:(id)result type:(int64_t)type subtype:(int64_t)subtype title:(id)title subtitle:(id)subtitle titleFontName:(id)name;
+ (id)transientAssetCollectionWithAssets:(id)assets subtype:(int64_t)subtype identifier:(id)identifier startDate:(id)date endDate:(id)endDate title:(id)title;
+ (id)transientAssetCollectionWithAssets:(id)assets title:(id)title identifier:(id)identifier photoLibrary:(id)library;
+ (id)transientAssetCollectionWithFetchOptions:(id)options title:(id)title subtitle:(id)subtitle titleFontName:(id)name identifier:(id)identifier;
+ (id)transientAssetCollectionWithOptions:(id)options;
+ (int64_t)titleCategoryForTitleFontName:(id)name;
+ (unint64_t)titleFontNameHashFromString:(id)string;
- (BOOL)alwaysRecalculateCounts;
- (BOOL)canContainCustomKeyAssets;
- (BOOL)canPerformEditOperation:(int64_t)operation;
- (BOOL)canShowComments;
- (BOOL)collectionHasFixedOrder;
- (BOOL)containsPrivateContent;
- (BOOL)hasLocationInfo;
- (BOOL)isPrivacySensitiveAlbum;
- (BOOL)keyAssetsAtEnd;
- (NSDate)endDate;
- (NSDate)startDate;
- (NSString)titleFontName;
- (PHAssetCollection)initWithFetchDictionary:(id)dictionary propertyHint:(unint64_t)hint photoLibrary:(id)library;
- (id)_fetchAggregateDatesForSmartAlbum;
- (id)_fetchedEndDate;
- (id)_fetchedStartDate;
- (id)_initTransientWithAssets:(id)assets orFetchResult:(id)result orQuery:(id)query title:(id)title subtitle:(id)subtitle titleFontName:(id)name identifier:(id)identifier keyAssetsAtEnd:(BOOL)self0 albumKind:(int)self1 type:(int64_t)self2 subtype:(int64_t)self3 startDate:(id)self4 endDate:(id)self5 photoLibrary:(id)self6;
- (id)description;
- (id)effectiveCustomSortDescriptors;
- (id)identifier;
- (id)initTransientWithAssets:(id)assets orFetchResult:(id)result orQuery:(id)query title:(id)title subtitle:(id)subtitle titleFontName:(id)name identifier:(id)identifier albumKind:(int)self0 subtype:(int64_t)self1 startDate:(id)self2 endDate:(id)self3 photoLibrary:(id)self4;
- (id)localizedSubtitle;
- (id)localizedTitle;
- (id)pl_assetContainer;
- (unint64_t)collectionFixedOrderPriority;
- (unint64_t)titleFontNameHash;
- (void)_datesLock_fetchDatesIfNeeded;
@end

@implementation PHAssetCollection

+ (id)corePropertiesToFetch
{
  pl_dispatch_once();
  v2 = corePropertiesToFetch_pl_once_object_15;

  return v2;
}

void __42__PHAssetCollection_corePropertiesToFetch__block_invoke()
{
  v3[18] = *MEMORY[0x1E69E9840];
  v3[0] = @"cloudGUID";
  v3[1] = @"cachedCount";
  v3[2] = @"cachedPhotosCount";
  v3[3] = @"cachedVideosCount";
  v3[4] = @"customSortAscending";
  v3[5] = @"customSortKey";
  v3[6] = @"importSessionID";
  v3[7] = @"kind";
  v3[8] = @"pendingItemsCount";
  v3[9] = @"pendingItemsType";
  v3[10] = @"trashedState";
  v3[11] = @"title";
  v3[12] = @"userQueryData";
  v3[13] = @"parentFolder";
  v3[14] = @"startDate";
  v3[15] = @"endDate";
  v3[16] = @"privacyState";
  v3[17] = @"lastModifiedDate";
  v0 = [MEMORY[0x1E695DEC8] arrayWithObjects:v3 count:18];
  v1 = [v0 copy];
  v2 = corePropertiesToFetch_pl_once_object_15;
  corePropertiesToFetch_pl_once_object_15 = v1;
}

- (BOOL)alwaysRecalculateCounts
{
  isTransient = [(PHObject *)self isTransient];
  if (isTransient)
  {
    LOBYTE(isTransient) = self->_query != 0;
  }

  return isTransient;
}

- (id)identifier
{
  transientIdentifier = self->_transientIdentifier;
  if (transientIdentifier)
  {
    identifier = transientIdentifier;
  }

  else
  {
    v5.receiver = self;
    v5.super_class = PHAssetCollection;
    identifier = [(PHObject *)&v5 identifier];
  }

  return identifier;
}

- (BOOL)keyAssetsAtEnd
{
  if ([(PHObject *)self isTransient])
  {
    return self->_transientKeyAssetsAtEnd;
  }

  v4 = objc_opt_class();
  assetCollectionType = [(PHAssetCollection *)self assetCollectionType];
  assetCollectionSubtype = [(PHAssetCollection *)self assetCollectionSubtype];

  return [v4 _defaultKeyAssetsAtEndForType:assetCollectionType subtype:assetCollectionSubtype];
}

- (BOOL)isPrivacySensitiveAlbum
{
  assetCollectionSubtype = self->_assetCollectionSubtype;
  if (assetCollectionSubtype == 205 || assetCollectionSubtype == 1000000201)
  {
    return 1;
  }

  return assetCollectionSubtype == 1000000219 || self->_privacyState == 1;
}

- (BOOL)canContainCustomKeyAssets
{
  v2 = MEMORY[0x1E69BE458];
  plAlbumKind = [(PHAssetCollection *)self plAlbumKind];

  return [v2 supportsCustomKeyAssetWithAlbumKind:plAlbumKind];
}

- (id)description
{
  v6.receiver = self;
  v6.super_class = PHAssetCollection;
  v3 = [(PHCollection *)&v6 description];
  v4 = [v3 stringByAppendingFormat:@" assetCollectionType=%ld/%ld", -[PHAssetCollection assetCollectionType](self, "assetCollectionType"), -[PHAssetCollection assetCollectionSubtype](self, "assetCollectionSubtype")];

  return v4;
}

- (unint64_t)titleFontNameHash
{
  v12[1] = *MEMORY[0x1E69E9840];
  if (![(PHAssetCollection *)self _shouldFetchDatesIfNeeded]&& ([(PHAssetCollection *)self startDate], (v3 = objc_claimAutoreleasedReturnValue()) != 0) || ([(PHCollection *)self creationDate], (v3 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    creationDate = v3;
  }

  else if ([(PHAssetCollection *)self assetCollectionType]== PHAssetCollectionTypeSmartAlbum)
  {
    assetCollectionSubtype = [(PHAssetCollection *)self assetCollectionSubtype];
    if (assetCollectionSubtype)
    {
      return assetCollectionSubtype;
    }

    creationDate = 0;
  }

  else
  {
    v7 = [PHFetchOptions fetchOptionsWithPhotoLibrary:0 orObject:self];
    v8 = [MEMORY[0x1E696AEB0] sortDescriptorWithKey:@"creationDate" ascending:1];
    v12[0] = v8;
    v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v12 count:1];
    [v7 setSortDescriptors:v9];

    [v7 setFetchLimit:1];
    v10 = [PHAsset fetchAssetsInAssetCollection:self options:v7];
    firstObject = [v10 firstObject];

    creationDate = [firstObject creationDate];
  }

  assetCollectionSubtype = [PHAssetCollection titleFontNameHashFromDate:creationDate];

  return assetCollectionSubtype;
}

- (NSString)titleFontName
{
  titleFontName = self->_titleFontName;
  if (!titleFontName)
  {
    v4 = [objc_opt_class() titleFontNameForTitleCategory:{-[PHAssetCollection titleCategory](self, "titleCategory")}];
    v5 = self->_titleFontName;
    self->_titleFontName = v4;

    titleFontName = self->_titleFontName;
    if (!titleFontName)
    {
      defaultTitleFontNames = [objc_opt_class() defaultTitleFontNames];
      v7 = [defaultTitleFontNames objectAtIndexedSubscript:{-[PHAssetCollection titleFontNameHash](self, "titleFontNameHash") % objc_msgSend(defaultTitleFontNames, "count")}];
      v8 = self->_titleFontName;
      self->_titleFontName = v7;

      titleFontName = self->_titleFontName;
    }
  }

  return titleFontName;
}

- (id)_initTransientWithAssets:(id)assets orFetchResult:(id)result orQuery:(id)query title:(id)title subtitle:(id)subtitle titleFontName:(id)name identifier:(id)identifier keyAssetsAtEnd:(BOOL)self0 albumKind:(int)self1 type:(int64_t)self2 subtype:(int64_t)self3 startDate:(id)self4 endDate:(id)self5 photoLibrary:(id)self6
{
  v96 = *MEMORY[0x1E69E9840];
  assetsCopy = assets;
  resultCopy = result;
  queryCopy = query;
  titleCopy = title;
  subtitleCopy = subtitle;
  nameCopy = name;
  v25 = resultCopy;
  identifierCopy = identifier;
  dateCopy = date;
  endDateCopy = endDate;
  libraryCopy = library;
  query = [v25 query];
  v28 = query;
  if (query)
  {
    v29 = query;
  }

  else
  {
    v29 = queryCopy;
  }

  v30 = v29;

  v83 = queryCopy;
  v86 = nameCopy;
  if (v30)
  {
    fetchType = [v30 fetchType];
    v32 = [fetchType isEqualToString:@"PHAsset"];

    if (v32)
    {
      v33 = v25 != 0;
      goto LABEL_12;
    }

LABEL_56:
    v74 = MEMORY[0x1E695DF30];
    v75 = *MEMORY[0x1E695D940];
    v76 = @"The fetch result must return PHAsset objects";
LABEL_57:
    v77 = [v74 exceptionWithName:v75 reason:v76 userInfo:0];
    objc_exception_throw(v77);
  }

  if (v25)
  {
    firstObject = [v25 firstObject];
    if (firstObject)
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        goto LABEL_56;
      }
    }

    fetchedObjects = [v25 fetchedObjects];

    v33 = 1;
    assetsCopy = fetchedObjects;
  }

  else
  {
    v33 = 0;
  }

LABEL_12:
  v89 = v30;
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  v37 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:kind];
  [dictionary setObject:v37 forKeyedSubscript:@"kind"];

  uUID = [MEMORY[0x1E696AFB0] UUID];
  uUIDString = [uUID UUIDString];
  [dictionary setObject:uUIDString forKeyedSubscript:@"uuid"];

  v40 = titleCopy;
  if (titleCopy)
  {
    [dictionary setObject:titleCopy forKeyedSubscript:@"title"];
  }

  firstObject2 = [assetsCopy firstObject];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0 || ([firstObject2 photoLibrary], (v42 = objc_claimAutoreleasedReturnValue()) == 0))
  {
    photoLibrary = [v25 photoLibrary];
    v44 = photoLibrary;
    if (photoLibrary)
    {
      photoLibrary2 = photoLibrary;
    }

    else
    {
      photoLibrary2 = [v89 photoLibrary];
    }

    v42 = photoLibrary2;
  }

  if (libraryCopy && v42 && v42 != libraryCopy)
  {
    v74 = MEMORY[0x1E695DF30];
    v75 = *MEMORY[0x1E695D940];
    v76 = @"The photoLibrary parameter doesn't match the library associated with the assets or fetch result";
    goto LABEL_57;
  }

  v46 = v42;
  v80 = v46;
  if (!v42)
  {
    v47 = libraryCopy;
    if (!libraryCopy)
    {
      v47 = +[PHPhotoLibrary sharedPhotoLibrary];
    }

    v46 = v47;
  }

  v81 = firstObject2;
  v48 = [(PHAssetCollection *)self initWithFetchDictionary:dictionary propertyHint:2 photoLibrary:v46];
  if (v48)
  {
    v49 = [v89 copy];
    query = v48->_query;
    v48->_query = v49;

    if (!v89)
    {
      if (v33)
      {
        fetchedObjectIDs = [v25 fetchedObjectIDs];
        assetOids = v48->_assetOids;
        v48->_assetOids = fetchedObjectIDs;
LABEL_33:

        goto LABEL_34;
      }

      if (assetsCopy)
      {
        assetOids = NSStringFromSelector(sel_objectID);
        v53 = [assetsCopy valueForKey:assetOids];
        v54 = v48->_assetOids;
        v48->_assetOids = v53;

        goto LABEL_33;
      }
    }

LABEL_34:
    v55 = [assetsCopy copy];
    assets = v48->_assets;
    v48->_assets = v55;

    v57 = [identifierCopy copy];
    transientIdentifier = v48->_transientIdentifier;
    v48->_transientIdentifier = v57;

    v59 = [subtitleCopy copy];
    transientSubtitle = v48->_transientSubtitle;
    v48->_transientSubtitle = v59;

    if (v86)
    {
      v61 = [v86 copy];
      titleFontName = v48->_titleFontName;
      v48->_titleFontName = v61;
    }

    v48->_transientKeyAssetsAtEnd = end;
    v48->_assetCollectionType = type;
    v48->_assetCollectionSubtype = subtype;
    if (dateCopy && endDateCopy)
    {
      objc_storeStrong(&v48->_startDate, date);
      objc_storeStrong(&v48->_endDate, endDate);
    }

    if (v48->_query)
    {
      v63 = 0x7FFFFFFFFFFFFFFFLL;
      if (v33)
      {
        v63 = [v25 count];
      }

      v48->_approximateCount = v63;
      v48->_approximatePhotosCount = 0x7FFFFFFFFFFFFFFFLL;
      v48->_approximateVideosCount = 0x7FFFFFFFFFFFFFFFLL;
      v40 = titleCopy;
    }

    else
    {
      obj = v25;
      v48->_approximateCount = [assetsCopy count];
      v48->_approximatePhotosCount = 0;
      v48->_approximateVideosCount = 0;
      v93 = 0u;
      v94 = 0u;
      v91 = 0u;
      v92 = 0u;
      v79 = assetsCopy;
      v64 = assetsCopy;
      v65 = [v64 countByEnumeratingWithState:&v91 objects:v95 count:16];
      if (v65)
      {
        v66 = v65;
        v67 = *v92;
        do
        {
          for (i = 0; i != v66; ++i)
          {
            if (*v92 != v67)
            {
              objc_enumerationMutation(v64);
            }

            v69 = *(*(&v91 + 1) + 8 * i);
            isPhoto = [v69 isPhoto];
            p_approximatePhotosCount = &v48->_approximatePhotosCount;
            if ((isPhoto & 1) == 0)
            {
              isVideo = [v69 isVideo];
              p_approximatePhotosCount = &v48->_approximateVideosCount;
              if (!isVideo)
              {
                continue;
              }
            }

            ++*p_approximatePhotosCount;
          }

          v66 = [v64 countByEnumeratingWithState:&v91 objects:v95 count:16];
        }

        while (v66);
      }

      v25 = obj;
      assetsCopy = v79;
      v40 = titleCopy;
    }
  }

  return v48;
}

- (id)initTransientWithAssets:(id)assets orFetchResult:(id)result orQuery:(id)query title:(id)title subtitle:(id)subtitle titleFontName:(id)name identifier:(id)identifier albumKind:(int)self0 subtype:(int64_t)self1 startDate:(id)self2 endDate:(id)self3 photoLibrary:(id)self4
{
  libraryCopy = library;
  endDateCopy = endDate;
  dateCopy = date;
  identifierCopy = identifier;
  nameCopy = name;
  subtitleCopy = subtitle;
  titleCopy = title;
  queryCopy = query;
  resultCopy = result;
  assetsCopy = assets;
  HIDWORD(v25) = kind;
  LOBYTE(v25) = [objc_opt_class() _defaultKeyAssetsAtEndForType:2 subtype:subtype];
  v33 = [(PHAssetCollection *)self _initTransientWithAssets:assetsCopy orFetchResult:resultCopy orQuery:queryCopy title:titleCopy subtitle:subtitleCopy titleFontName:nameCopy identifier:identifierCopy keyAssetsAtEnd:v25 albumKind:2 type:subtype subtype:dateCopy startDate:endDateCopy endDate:libraryCopy photoLibrary:?];

  return v33;
}

- (BOOL)containsPrivateContent
{
  isPrivacySensitiveAlbum = [(PHAssetCollection *)self isPrivacySensitiveAlbum];
  if (isPrivacySensitiveAlbum)
  {

    LOBYTE(isPrivacySensitiveAlbum) = PLIsContentPrivacyEnabled();
  }

  return isPrivacySensitiveAlbum;
}

- (BOOL)hasLocationInfo
{
  localizedLocationNames = [(PHAssetCollection *)self localizedLocationNames];
  v3 = [localizedLocationNames count] != 0;

  return v3;
}

- (BOOL)canShowComments
{
  assetCollectionSubtype = self->_assetCollectionSubtype;
  result = [(PHAssetCollection *)self _canShowCloudComments];
  if (assetCollectionSubtype == 101)
  {
    return 1;
  }

  return result;
}

- (BOOL)canPerformEditOperation:(int64_t)operation
{
  assetCollectionType = self->_assetCollectionType;
  if ((assetCollectionType - 8) < 2)
  {
    return operation == 1;
  }

  if (assetCollectionType != 1)
  {
    if (assetCollectionType != 2)
    {
      return 0;
    }

    if (self->_assetCollectionSubtype == 1000000204)
    {
      return (operation & 0xFFFFFFFFFFFFFFFELL) == 6;
    }

    return operation == 1;
  }

  result = 0;
  assetCollectionSubtype = self->_assetCollectionSubtype;
  if (assetCollectionSubtype <= 99)
  {
    if (assetCollectionSubtype == 2)
    {
      return 1;
    }

    if (assetCollectionSubtype == 6)
    {
      return operation == 1;
    }
  }

  else
  {
    if (assetCollectionSubtype == 100)
    {
      return operation == 1;
    }

    if (assetCollectionSubtype == 1000000212 || assetCollectionSubtype == 1000000601)
    {
      return operation == 1;
    }
  }

  return result;
}

- (id)effectiveCustomSortDescriptors
{
  customSortKey = [(PHCollection *)self customSortKey];
  if (customSortKey)
  {
    v4 = [MEMORY[0x1E69BE458] sortDescriptorsForAssetsInAlbumWithSortKey:customSortKey ascending:{-[PHCollection customSortAscending](self, "customSortAscending")}];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (unint64_t)collectionFixedOrderPriority
{
  v2 = MEMORY[0x1E69BE538];
  plAlbumKind = [(PHAssetCollection *)self plAlbumKind];

  return [v2 priorityForAlbumKind:plAlbumKind];
}

- (BOOL)collectionHasFixedOrder
{
  v2 = MEMORY[0x1E69BE538];
  plAlbumKind = [(PHAssetCollection *)self plAlbumKind];

  return [v2 albumKindHasFixedOrder:plAlbumKind];
}

- (NSDate)endDate
{
  if ([(PHAssetCollection *)self _shouldFetchDatesIfNeeded])
  {
    _fetchedEndDate = [(PHAssetCollection *)self _fetchedEndDate];
  }

  else
  {
    _fetchedEndDate = self->_endDate;
  }

  return _fetchedEndDate;
}

- (NSDate)startDate
{
  if ([(PHAssetCollection *)self _shouldFetchDatesIfNeeded])
  {
    _fetchedStartDate = [(PHAssetCollection *)self _fetchedStartDate];
  }

  else
  {
    _fetchedStartDate = self->_startDate;
  }

  return _fetchedStartDate;
}

- (void)_datesLock_fetchDatesIfNeeded
{
  os_unfair_lock_assert_owner(&self->_datesLock);
  if (!self->_datesLock_didFetchDates && [(PHAssetCollection *)self _shouldFetchDatesIfNeeded])
  {
    self->_datesLock_didFetchDates = 1;
    _fetchAggregateDatesForSmartAlbum = [(PHAssetCollection *)self _fetchAggregateDatesForSmartAlbum];
    v3 = [_fetchAggregateDatesForSmartAlbum objectForKeyedSubscript:@"startDate"];
    datesLock_fetchedStartDate = self->_datesLock_fetchedStartDate;
    self->_datesLock_fetchedStartDate = v3;

    v5 = [_fetchAggregateDatesForSmartAlbum objectForKeyedSubscript:@"endDate"];
    datesLock_fetchedEndDate = self->_datesLock_fetchedEndDate;
    self->_datesLock_fetchedEndDate = v5;
  }
}

- (id)_fetchedEndDate
{
  os_unfair_lock_lock(&self->_datesLock);
  datesLock_fetchedEndDate = self->_datesLock_fetchedEndDate;
  if (!datesLock_fetchedEndDate)
  {
    [(PHAssetCollection *)self _datesLock_fetchDatesIfNeeded];
    datesLock_fetchedEndDate = self->_datesLock_fetchedEndDate;
  }

  v4 = datesLock_fetchedEndDate;
  os_unfair_lock_unlock(&self->_datesLock);

  return v4;
}

- (id)_fetchedStartDate
{
  os_unfair_lock_lock(&self->_datesLock);
  datesLock_fetchedStartDate = self->_datesLock_fetchedStartDate;
  if (!datesLock_fetchedStartDate)
  {
    [(PHAssetCollection *)self _datesLock_fetchDatesIfNeeded];
    datesLock_fetchedStartDate = self->_datesLock_fetchedStartDate;
  }

  v4 = datesLock_fetchedStartDate;
  os_unfair_lock_unlock(&self->_datesLock);

  return v4;
}

- (id)_fetchAggregateDatesForSmartAlbum
{
  v53 = *MEMORY[0x1E69E9840];
  if ([(PHObject *)self isTransient]&& ([(PHAssetCollection *)self query], v4 = objc_claimAutoreleasedReturnValue(), v4, v4))
  {
    query = [(PHAssetCollection *)self query];
    fetchRequest = [query fetchRequest];
  }

  else
  {
    if ([(PHObject *)self isTransient]&& ([(PHAssetCollection *)self assetOids], v7 = objc_claimAutoreleasedReturnValue(), v7, v7))
    {
      photoLibrary = [(PHObject *)self photoLibrary];
      query = [photoLibrary librarySpecificFetchOptions];

      assetOids = [(PHAssetCollection *)self assetOids];
      v10 = [PHQuery queryForAssetsWithObjectIDs:assetOids options:query];

      fetchRequest2 = [v10 fetchRequest];
    }

    else
    {
      photoLibrary2 = [(PHObject *)self photoLibrary];
      query = [photoLibrary2 librarySpecificFetchOptions];

      v10 = [PHQuery queryForAssetsInAssetCollection:self options:query];
      fetchRequest2 = [v10 fetchRequest];
    }

    fetchRequest = fetchRequest2;
  }

  v38 = 0;
  v39 = &v38;
  v40 = 0x3032000000;
  v41 = __Block_byref_object_copy__3951;
  v42 = __Block_byref_object_dispose__3952;
  v43 = MEMORY[0x1E695E0F8];
  if (fetchRequest)
  {
    v13 = MEMORY[0x1E695D5E0];
    entityName = [fetchRequest entityName];
    v15 = [v13 fetchRequestWithEntityName:entityName];

    predicate = [fetchRequest predicate];
    [v15 setPredicate:predicate];

    v17 = [MEMORY[0x1E696ABC8] expressionWithFormat:@"@min.%K", @"dateCreated"];
    v18 = objc_alloc_init(MEMORY[0x1E695D5C8]);
    [v18 setName:@"startDate"];
    [v18 setExpression:v17];
    [v18 setExpressionResultType:900];
    v19 = [MEMORY[0x1E696ABC8] expressionWithFormat:@"@max.%K", @"dateCreated"];
    v20 = objc_alloc_init(MEMORY[0x1E695D5C8]);
    [v20 setName:@"endDate"];
    [v20 setExpression:v19];
    [v20 setExpressionResultType:900];
    [v15 setResultType:2];
    v44[0] = v18;
    v44[1] = v20;
    v21 = [MEMORY[0x1E695DEC8] arrayWithObjects:v44 count:2];
    [v15 setPropertiesToFetch:v21];

    photoLibrary3 = [(PHObject *)self photoLibrary];
    managedObjectContextForCurrentQueueQoS = [photoLibrary3 managedObjectContextForCurrentQueueQoS];

    v32[0] = MEMORY[0x1E69E9820];
    v32[1] = 3221225472;
    v32[2] = __54__PHAssetCollection__fetchAggregateDatesForSmartAlbum__block_invoke;
    v32[3] = &unk_1E75A9B78;
    v24 = managedObjectContextForCurrentQueueQoS;
    v33 = v24;
    v25 = v15;
    v36 = &v38;
    v37 = a2;
    v34 = v25;
    selfCopy = self;
    [v24 performBlockAndWait:v32];
  }

  else
  {
    v17 = PLPhotoKitGetLog();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      isTransient = [(PHObject *)self isTransient];
      query2 = [(PHAssetCollection *)self query];
      v28 = query2;
      v29 = @"NO";
      *buf = 138413058;
      v46 = 0;
      v47 = 2112;
      if (isTransient)
      {
        v29 = @"YES";
      }

      selfCopy2 = self;
      v49 = 2112;
      v50 = v29;
      v51 = 2112;
      v52 = query2;
      _os_log_impl(&dword_19C86F000, v17, OS_LOG_TYPE_ERROR, "queryFetchRequest is nil. fetchRequest: %@ self : %@ isTransient : %@ query: %@", buf, 0x2Au);
    }

    v25 = 0;
  }

  v30 = v39[5];
  _Block_object_dispose(&v38, 8);

  return v30;
}

void __54__PHAssetCollection__fetchAggregateDatesForSmartAlbum__block_invoke(uint64_t a1)
{
  v18 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v11 = 0;
  v4 = [v2 executeFetchRequest:v3 error:&v11];
  v5 = v11;
  if (v4)
  {
    v6 = [v4 firstObject];
    v7 = *(*(a1 + 56) + 8);
    v8 = *(v7 + 40);
    *(v7 + 40) = v6;
  }

  else
  {
    v8 = PLPhotoKitGetLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v9 = NSStringFromSelector(*(a1 + 64));
      v10 = *(a1 + 48);
      *buf = 138412802;
      v13 = v9;
      v14 = 2112;
      v15 = v10;
      v16 = 2112;
      v17 = v5;
      _os_log_impl(&dword_19C86F000, v8, OS_LOG_TYPE_ERROR, "%@ failed to fetch aggregate dates for %@ %@", buf, 0x20u);
    }
  }
}

- (id)localizedSubtitle
{
  transientSubtitle = [(PHAssetCollection *)self transientSubtitle];
  if (!transientSubtitle)
  {
    v5.receiver = self;
    v5.super_class = PHAssetCollection;
    transientSubtitle = [(PHCollection *)&v5 localizedSubtitle];
  }

  return transientSubtitle;
}

- (id)localizedTitle
{
  title = [(PHAssetCollection *)self title];
  if (!title)
  {
    v4 = MEMORY[0x1E69BE458];
    plAlbumKind = [(PHAssetCollection *)self plAlbumKind];
    photoLibrary = [(PHObject *)self photoLibrary];
    title = [v4 localizedTitleForAlbumKind:plAlbumKind cplEnabled:{objc_msgSend(photoLibrary, "isCloudPhotoLibraryEnabled")}];
  }

  return title;
}

- (PHAssetCollection)initWithFetchDictionary:(id)dictionary propertyHint:(unint64_t)hint photoLibrary:(id)library
{
  dictionaryCopy = dictionary;
  v41.receiver = self;
  v41.super_class = PHAssetCollection;
  v9 = [(PHCollection *)&v41 initWithFetchDictionary:dictionaryCopy propertyHint:hint photoLibrary:library];
  if (!v9)
  {
    goto LABEL_61;
  }

  v10 = [dictionaryCopy objectForKeyedSubscript:@"importSessionID"];
  importSessionID = v9->_importSessionID;
  v9->_importSessionID = v10;

  v12 = [dictionaryCopy objectForKeyedSubscript:@"cloudGUID"];
  cloudGUID = v9->_cloudGUID;
  v9->_cloudGUID = v12;

  v14 = [dictionaryCopy objectForKeyedSubscript:@"kind"];
  v9->_plAlbumKind = [v14 shortValue];

  plAlbumKind = v9->_plAlbumKind;
  if (plAlbumKind <= 1549)
  {
    if (plAlbumKind > 1499)
    {
      if (plAlbumKind > 1506)
      {
        if (plAlbumKind == 1507)
        {
          v9->_assetCollectionType = 2;
          v16 = 1000000204;
        }

        else
        {
          if (plAlbumKind != 1510)
          {
            goto LABEL_55;
          }

          v9->_assetCollectionType = 1;
          v16 = 1000000601;
        }
      }

      else if (plAlbumKind == 1500)
      {
        v9->_assetCollectionType = 1;
        v16 = 100;
      }

      else
      {
        if (plAlbumKind != 1505)
        {
          goto LABEL_55;
        }

        v9->_assetCollectionType = 1;
        v16 = 101;
      }
    }

    else if (plAlbumKind > 14)
    {
      if (plAlbumKind == 15)
      {
        v9->_assetCollectionType = 1;
        v16 = 4;
      }

      else
      {
        if (plAlbumKind != 1000)
        {
          goto LABEL_55;
        }

        v9->_assetCollectionType = 1;
        v16 = 1000000001;
      }
    }

    else if (plAlbumKind == 2)
    {
      v9->_assetCollectionType = 1;
      v16 = 2;
    }

    else
    {
      if (plAlbumKind != 12)
      {
        goto LABEL_55;
      }

LABEL_9:
      v9->_assetCollectionType = 1;
      v16 = 6;
    }
  }

  else
  {
    switch(plAlbumKind)
    {
      case 1603:
      case 1604:
        goto LABEL_9;
      case 1605:
        v9->_assetCollectionType = 2;
        v16 = 201;
        break;
      case 1606:
        v9->_assetCollectionType = 2;
        v16 = 202;
        break;
      case 1607:
      case 1608:
      case 1625:
      case 1629:
      case 1633:
      case 1635:
      case 1637:
      case 1638:
        goto LABEL_55;
      case 1609:
        v9->_assetCollectionType = 2;
        v16 = 203;
        break;
      case 1610:
        v9->_assetCollectionType = 2;
        v16 = 204;
        break;
      case 1611:
        v9->_assetCollectionType = 2;
        v16 = 205;
        break;
      case 1612:
        v9->_assetCollectionType = 2;
        v17 = 200;
        goto LABEL_53;
      case 1613:
        v9->_assetCollectionType = 2;
        v16 = 209;
        break;
      case 1614:
        v9->_assetCollectionType = 2;
        v16 = 207;
        break;
      case 1615:
        v9->_assetCollectionType = 2;
        v16 = 208;
        break;
      case 1616:
        v9->_assetCollectionType = 2;
        v16 = 206;
        break;
      case 1617:
        v9->_assetCollectionType = 2;
        v16 = 210;
        break;
      case 1618:
        v9->_assetCollectionType = 2;
        v16 = 211;
        break;
      case 1619:
        v9->_assetCollectionType = 2;
        v17 = 202;
        goto LABEL_53;
      case 1620:
        v9->_assetCollectionType = 2;
        v16 = 212;
        break;
      case 1621:
        v9->_assetCollectionType = 2;
        v16 = 213;
        break;
      case 1622:
        v9->_assetCollectionType = 2;
        v16 = 214;
        break;
      case 1623:
        v9->_assetCollectionType = 2;
        v16 = 215;
        break;
      case 1624:
        v9->_assetCollectionType = 2;
        v16 = 216;
        break;
      case 1626:
        v9->_assetCollectionType = 2;
        v16 = 1000000206;
        break;
      case 1627:
        v9->_assetCollectionType = 2;
        v16 = 220;
        break;
      case 1628:
        v9->_assetCollectionType = 2;
        v17 = 204;
        goto LABEL_53;
      case 1630:
        v9->_assetCollectionType = 2;
        v16 = 217;
        break;
      case 1631:
        v9->_assetCollectionType = 2;
        v16 = 218;
        break;
      case 1632:
        v9->_assetCollectionType = 2;
        v17 = 210;
        goto LABEL_53;
      case 1634:
        v9->_assetCollectionType = 2;
        v16 = 1000000212;
        break;
      case 1636:
        v9->_assetCollectionType = 2;
        v16 = 1000000214;
        break;
      case 1639:
        v9->_assetCollectionType = 2;
        v16 = 219;
        break;
      case 1640:
        v9->_assetCollectionType = 2;
        v16 = 1000000218;
        break;
      case 1641:
        v9->_assetCollectionType = 2;
        v17 = 218;
LABEL_53:
        v16 = v17 | 0x3B9ACA01;
        break;
      case 1642:
        v9->_assetCollectionType = 2;
        v16 = 221;
        break;
      default:
        if (plAlbumKind == 1550)
        {
          v9->_assetCollectionType = 1;
          v16 = 5;
        }

        else
        {
          if (plAlbumKind != 1551)
          {
            goto LABEL_55;
          }

          v9->_assetCollectionType = 1;
          v16 = 3;
        }

        break;
    }
  }

  v9->_assetCollectionSubtype = v16;
LABEL_55:
  if (v9->_assetCollectionType == 2)
  {
    v9->_approximateCount = 0x7FFFFFFFFFFFFFFFLL;
    v9->_approximatePhotosCount = 0x7FFFFFFFFFFFFFFFLL;
    v9->_approximateVideosCount = 0x7FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v18 = [dictionaryCopy objectForKeyedSubscript:@"cachedCount"];
    v9->_approximateCount = [v18 unsignedIntegerValue];

    v19 = [dictionaryCopy objectForKeyedSubscript:@"cachedPhotosCount"];
    v9->_approximatePhotosCount = [v19 unsignedIntegerValue];

    v20 = [dictionaryCopy objectForKeyedSubscript:@"cachedVideosCount"];
    v9->_approximateVideosCount = [v20 unsignedIntegerValue];
  }

  v21 = [dictionaryCopy objectForKeyedSubscript:@"pendingItemsCount"];
  v9->_pendingItemsCount = [v21 intValue];

  v22 = [dictionaryCopy objectForKeyedSubscript:@"pendingItemsType"];
  v9->_pendingItemsType = [v22 intValue];

  if ([(PHAssetCollection *)v9 plAlbumKind]!= 1500)
  {
    v23 = [dictionaryCopy objectForKeyedSubscript:@"title"];
    title = v9->_title;
    v9->_title = v23;
  }

  localizedLocationNames = v9->_localizedLocationNames;
  v9->_localizedLocationNames = MEMORY[0x1E695E0F0];

  v26 = [dictionaryCopy objectForKeyedSubscript:@"userQueryData"];
  v27 = [MEMORY[0x1E69BE708] constructQueryFromData:v26];
  userQuery = v9->_userQuery;
  v9->_userQuery = v27;

  v29 = [dictionaryCopy objectForKeyedSubscript:@"parentFolder"];
  parentFolderObjectID = v9->_parentFolderObjectID;
  v9->_parentFolderObjectID = v29;

  v31 = [dictionaryCopy objectForKeyedSubscript:@"startDate"];
  startDate = v9->_startDate;
  v9->_startDate = v31;

  v33 = [dictionaryCopy objectForKeyedSubscript:@"endDate"];
  endDate = v9->_endDate;
  v9->_endDate = v33;

  v35 = [dictionaryCopy objectForKeyedSubscript:@"lastModifiedDate"];
  modificationDate = v9->_modificationDate;
  v9->_modificationDate = v35;

  v9->_datesLock._os_unfair_lock_opaque = 0;
  v9->_datesLock_didFetchDates = 0;
  datesLock_fetchedStartDate = v9->_datesLock_fetchedStartDate;
  v9->_datesLock_fetchedStartDate = 0;

  datesLock_fetchedEndDate = v9->_datesLock_fetchedEndDate;
  v9->_datesLock_fetchedEndDate = 0;

  v39 = [dictionaryCopy objectForKeyedSubscript:@"privacyState"];
  v9->_privacyState = [v39 intValue];

LABEL_61:
  return v9;
}

+ (id)descriptionOfTitleCategory:(int64_t)category
{
  if (category >= 7)
  {
    category = [MEMORY[0x1E696AEC0] stringWithFormat:@"? (%i)", category];
  }

  else
  {
    category = off_1E75A40B8[category];
  }

  return category;
}

+ (id)descriptionForSubtype:(int64_t)subtype
{
  if (subtype > 1000000000)
  {
    if (subtype > 1000000217)
    {
      if (subtype <= 1000000303)
      {
        if (subtype <= 1000000300)
        {
          if (subtype == 1000000218)
          {
            subtype = @"recentlySaved";
          }

          else
          {
            if (subtype != 1000000219)
            {
              goto LABEL_93;
            }

            subtype = @"smartAlbumRecovered";
          }
        }

        else if (subtype == 1000000301)
        {
          subtype = @"photosHighlightDay";
        }

        else if (subtype == 1000000302)
        {
          subtype = @"photosHighlightMonth";
        }

        else
        {
          subtype = @"photosHighlightYear";
        }

        return subtype;
      }

      if (subtype <= 1000000500)
      {
        if (subtype == 1000000304)
        {
          subtype = @"photosHighlightDayGroup";
        }

        else
        {
          if (subtype != 1000000401)
          {
            goto LABEL_93;
          }

          subtype = @"screenSaverActivityCollection";
        }

        return subtype;
      }

      if (subtype == 1000000501)
      {
        subtype = @"contentSyndication";

        return subtype;
      }

      if (subtype != 1000000601)
      {
        if (subtype != 0x7FFFFFFFFFFFFFFFLL)
        {
          goto LABEL_93;
        }

        subtype = @"any";

        return subtype;
      }
    }

    else
    {
      if (subtype <= 1000000205)
      {
        if (subtype <= 1000000202)
        {
          if (subtype == 1000000001)
          {
            subtype = @"albumCameraRoll";
          }

          else
          {
            if (subtype != 1000000201)
            {
              goto LABEL_93;
            }

            subtype = @"smartAlbumTrashBin";
          }
        }

        else if (subtype == 1000000203)
        {
          subtype = @"smartAlbumPlaces";
        }

        else if (subtype == 1000000204)
        {
          subtype = @"smartAlbumUserSmartAlbum";
        }

        else
        {
          subtype = @"smartAlbumAllPhotos";
        }

        return subtype;
      }

      if (subtype <= 1000000211)
      {
        if (subtype == 1000000206)
        {
          subtype = @"smartAlbumRecentlyEdited";
        }

        else
        {
          if (subtype != 1000000211)
          {
            goto LABEL_93;
          }

          subtype = @"smartAlbumProRes";
        }

        return subtype;
      }

      if (subtype != 1000000212)
      {
        if (subtype == 1000000214)
        {
          subtype = @"smartAlbumSharedLibrarySharingSuggestions";
        }

        else
        {
          if (subtype != 1000000215)
          {
            goto LABEL_93;
          }

          subtype = @"smartAlbumActionCam";
        }

        return subtype;
      }
    }

    subtype = @"duplicates";

    return subtype;
  }

  if (subtype > 101)
  {
    switch(subtype)
    {
      case 200:
        subtype = @"smartAlbumGeneric";

        break;
      case 201:
        subtype = @"smartAlbumPanoramas";

        break;
      case 202:
        subtype = @"smartAlbumVideos";

        break;
      case 203:
        subtype = @"smartAlbumFavorites";

        break;
      case 204:
        subtype = @"smartAlbumTimelapses";

        break;
      case 205:
        subtype = @"smartAlbumAllHidden";

        break;
      case 206:
        subtype = @"smartAlbumRecentlyAdded";

        break;
      case 207:
        subtype = @"smartAlbumBursts";

        break;
      case 208:
        subtype = @"smartAlbumSlomoVideos";

        break;
      case 209:
        subtype = @"smartAlbumUserLibrary";

        break;
      case 210:
        subtype = @"smartAlbumSelfPortraits";

        break;
      case 211:
        subtype = @"smartAlbumScreenshots";

        break;
      case 212:
        subtype = @"smartAlbumDepthEffect";

        break;
      case 213:
        subtype = @"smartAlbumLivePhotos";

        break;
      case 214:
        subtype = @"smartAlbumAnimated";

        break;
      case 215:
        subtype = @"smartAlbumLongExposures";

        break;
      case 216:
        subtype = @"smartAlbumUnableToUpload";

        break;
      case 217:
        subtype = @"smartAlbumRAW";

        break;
      case 218:
        subtype = @"smartAlbumCinematic";

        break;
      case 219:
        subtype = @"smartAlbumSpatial";

        break;
      case 220:
        subtype = @"smartAlbumScreenRecordings";

        break;
      case 221:
        subtype = @"smartAlbumFrontBack";

        break;
      default:
        if (subtype == 102)
        {
          subtype = @"albumCollectionShareSharedStream";
        }

        else
        {
          if (subtype != 103)
          {
            goto LABEL_93;
          }

          subtype = @"albumCollectionShareCPL";
        }

        break;
    }

    return subtype;
  }

  if (subtype <= 4)
  {
    switch(subtype)
    {
      case 2:
        subtype = @"albumRegular";

        break;
      case 3:
        subtype = @"albumSyncedEvent";

        break;
      case 4:
        subtype = @"albumSyncedFaces";

        break;
      default:
        goto LABEL_93;
    }
  }

  else if (subtype > 99)
  {
    if (subtype == 100)
    {
      subtype = @"albumMyPhotoStream";
    }

    else
    {
      subtype = @"albumCloudShared";
    }
  }

  else
  {
    if (subtype != 5)
    {
      if (subtype == 6)
      {
        subtype = @"albumImported";

        return subtype;
      }

LABEL_93:
      subtype = [MEMORY[0x1E696AEC0] stringWithFormat:@"unexpectedSubtype_%li", subtype];

      return subtype;
    }

    subtype = @"albumSyncedAlbum";
  }

  return subtype;
}

+ (id)descriptionForType:(int64_t)type
{
  if (type < 0xE && ((0x3FDFu >> type) & 1) != 0)
  {
    type = off_1E75A4048[type];
  }

  else
  {
    type = [MEMORY[0x1E696AEC0] stringWithFormat:@"unexpectedType_%li", type];
  }

  return type;
}

+ (id)fetchUtilityCollectionsWithType:(unsigned __int16)type options:(id)options
{
  typeCopy = type;
  v12[1] = *MEMORY[0x1E69E9840];
  optionsCopy = options;
  v6 = [[PHUtilityCollection alloc] initWithType:typeCopy fetchOptions:optionsCopy];
  v7 = [PHManualFetchResult alloc];
  v12[0] = v6;
  v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v12 count:1];
  photoLibrary = [optionsCopy photoLibrary];

  v10 = [(PHManualFetchResult *)v7 initWithObjects:v8 photoLibrary:photoLibrary fetchType:0 fetchPropertySets:0 identifier:0 registerIfNeeded:0];

  return v10;
}

+ (id)fetchUtilityCollectionsWithOptions:(id)options
{
  optionsCopy = options;
  array = [MEMORY[0x1E695DF70] array];
  v5 = 1;
  do
  {
    v6 = v5;
    v7 = [[PHUtilityCollection alloc] initWithType:v5 fetchOptions:optionsCopy];
    if (v7)
    {
      [array addObject:v7];
    }

    ++v5;
  }

  while (v6 < 6);
  v8 = [PHManualFetchResult alloc];
  photoLibrary = [optionsCopy photoLibrary];
  v10 = [(PHManualFetchResult *)v8 initWithObjects:array photoLibrary:photoLibrary fetchType:0 fetchPropertySets:0 identifier:0 registerIfNeeded:0];

  return v10;
}

+ (id)assetCollectionDuplicateTypeMappingForAssetCollectionUUIDs:(id)ds photoLibrary:(id)library error:(id *)error
{
  v41[2] = *MEMORY[0x1E69E9840];
  dsCopy = ds;
  libraryCopy = library;
  v35 = 0;
  v36 = &v35;
  v37 = 0x3032000000;
  v38 = __Block_byref_object_copy__3951;
  v39 = __Block_byref_object_dispose__3952;
  v40 = 0;
  v29 = 0;
  v30 = &v29;
  v31 = 0x3032000000;
  v32 = __Block_byref_object_copy__3951;
  v33 = __Block_byref_object_dispose__3952;
  v34 = 0;
  if ([dsCopy count])
  {
    v10 = MEMORY[0x1E695D5E0];
    entityName = [MEMORY[0x1E69BE3F8] entityName];
    v12 = [v10 fetchRequestWithEntityName:entityName];

    dsCopy = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K IN %@", @"uuid", dsCopy];
    [v12 setPredicate:dsCopy];

    [v12 setResultType:2];
    v41[0] = @"uuid";
    v41[1] = @"duplicateType";
    v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:v41 count:2];
    [v12 setPropertiesToFetch:v14];

    managedObjectContextForCurrentQueueQoS = [libraryCopy managedObjectContextForCurrentQueueQoS];
    v23[0] = MEMORY[0x1E69E9820];
    v23[1] = 3221225472;
    v23[2] = __99__PHAssetCollection_assetCollectionDuplicateTypeMappingForAssetCollectionUUIDs_photoLibrary_error___block_invoke;
    v23[3] = &unk_1E75AA420;
    v16 = managedObjectContextForCurrentQueueQoS;
    v24 = v16;
    v17 = v12;
    v25 = v17;
    v26 = &v29;
    v27 = &v35;
    v28 = a2;
    [v16 performBlockAndWait:v23];
  }

  v18 = v30[5];
  v19 = v18;
  if (v18)
  {
    v20 = error == 0;
  }

  else
  {
    v20 = 1;
  }

  if (!v20)
  {
    v19 = v19;
    *error = v19;
  }

  v21 = v36[5];
  _Block_object_dispose(&v29, 8);

  _Block_object_dispose(&v35, 8);

  return v21;
}

void __99__PHAssetCollection_assetCollectionDuplicateTypeMappingForAssetCollectionUUIDs_photoLibrary_error___block_invoke(uint64_t a1)
{
  v18 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = *(*(a1 + 48) + 8);
  obj = *(v4 + 40);
  v5 = [v2 executeFetchRequest:v3 error:&obj];
  objc_storeStrong((v4 + 40), obj);
  if (v5)
  {
    v6 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:{objc_msgSend(v5, "count")}];
    v7 = *(*(a1 + 56) + 8);
    v8 = *(v7 + 40);
    *(v7 + 40) = v6;

    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __99__PHAssetCollection_assetCollectionDuplicateTypeMappingForAssetCollectionUUIDs_photoLibrary_error___block_invoke_2;
    v12[3] = &unk_1E75A3FF8;
    v12[4] = *(a1 + 56);
    [v5 enumerateObjectsUsingBlock:v12];
  }

  else
  {
    v9 = PLPhotoKitGetLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v10 = NSStringFromSelector(*(a1 + 64));
      v11 = *(*(*(a1 + 48) + 8) + 40);
      *buf = 138543618;
      v15 = v10;
      v16 = 2112;
      v17 = v11;
      _os_log_impl(&dword_19C86F000, v9, OS_LOG_TYPE_ERROR, "%{public}@ failed to fetch duplicate album types. Error: %@", buf, 0x16u);
    }
  }
}

void __99__PHAssetCollection_assetCollectionDuplicateTypeMappingForAssetCollectionUUIDs_photoLibrary_error___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v6 = [v3 objectForKeyedSubscript:@"duplicateType"];
  v4 = [v3 objectForKeyedSubscript:@"uuid"];

  if (v6 && v4)
  {
    v5 = [*(*(*(a1 + 32) + 8) + 40) objectForKeyedSubscript:v6];
    if (!v5)
    {
      v5 = objc_alloc_init(MEMORY[0x1E695DFA8]);
      [*(*(*(a1 + 32) + 8) + 40) setObject:v5 forKeyedSubscript:v6];
    }

    [v5 addObject:v4];
  }
}

+ (unint64_t)titleFontNameHashFromString:(id)string
{
  *&v19[54] = *MEMORY[0x1E69E9840];
  stringCopy = string;
  v4 = [stringCopy length];
  v5 = v4;
  if (v4 >= 0x1E)
  {
    v6 = 30;
  }

  else
  {
    v6 = v4;
  }

  [stringCopy getCharacters:v18 range:{0, v6}];
  v7 = 0;
  v8 = 0;
  if (v5 >= 5)
  {
    v7 = 0;
    v9 = v19;
    v10 = 4;
    do
    {
      v11 = 67503105 * v7 + 16974593 * *(v9 - 3) + 66049 * *(v9 - 2);
      v12 = 257 * *(v9 - 1);
      v13 = *v9;
      v9 += 4;
      v7 = v11 + v12 + v13;
      v10 += 4;
    }

    while (v10 < v6);
    v8 = v10 - 4;
  }

  if ((v8 | 1) < v6)
  {
    v14 = ~v8 + v6;
    v15 = &v18[v8];
    do
    {
      v16 = *v15++;
      v7 = 257 * v7 + v16;
      --v14;
    }

    while (v14);
  }

  return v7;
}

+ (int64_t)titleCategoryForTitleFontName:(id)name
{
  nameCopy = name;
  if ([nameCopy isEqualToString:@"Baskerville-Bold"])
  {
    v4 = 5;
  }

  else if ([nameCopy isEqualToString:@"FaktSlabStencilPro-Medium"])
  {
    v4 = 1;
  }

  else if ([nameCopy isEqualToString:@"Rockwell-Bold"])
  {
    v4 = 3;
  }

  else if ([nameCopy isEqualToString:@"BebasNeue"])
  {
    v4 = 4;
  }

  else if ([nameCopy isEqualToString:@"AmericanTypewriter-Semibold"])
  {
    v4 = 2;
  }

  else if ([nameCopy isEqualToString:@".SFUIDisplay-Semibold"])
  {
    v4 = 6;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

+ (id)titleFontNameForTitleCategory:(int64_t)category
{
  if ((category - 1) > 5)
  {
    return 0;
  }

  else
  {
    return off_1E75A4018[category - 1];
  }
}

+ (NSArray)defaultTitleFontNames
{
  if (defaultTitleFontNames_onceToken != -1)
  {
    dispatch_once(&defaultTitleFontNames_onceToken, &__block_literal_global_215);
  }

  v3 = defaultTitleFontNames_defaultTitleFontNames;

  return v3;
}

void __42__PHAssetCollection_defaultTitleFontNames__block_invoke()
{
  v0 = defaultTitleFontNames_defaultTitleFontNames;
  defaultTitleFontNames_defaultTitleFontNames = &unk_1F102DE38;
}

+ (id)graphOptionsForTransientAssetCollection:(id)collection needsCompleteMomentsInfo:(BOOL)info options:(id)options
{
  infoCopy = info;
  v54[1] = *MEMORY[0x1E69E9840];
  collectionCopy = collection;
  optionsCopy = options;
  v9 = objc_opt_new();
  photoLibrary = [collectionCopy photoLibrary];
  v43 = optionsCopy;
  v11 = [PHFetchOptions fetchOptionsCopyFromNullableFetchOptions:optionsCopy photoLibrary:photoLibrary];

  v54[0] = @"PHAssetPropertySetIdentifier";
  v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:v54 count:1];
  [v11 setFetchPropertySets:v12];

  [v11 setWantsIncrementalChangeDetails:0];
  [v11 setSortDescriptors:MEMORY[0x1E695E0F0]];
  [v11 setChunkSizeForFetch:2000];
  v13 = [PHAsset fetchAssetsInAssetCollection:collectionCopy options:v11];
  v14 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v13, "count")}];
  v48 = 0u;
  v49 = 0u;
  v50 = 0u;
  v51 = 0u;
  v15 = v13;
  v16 = [v15 countByEnumeratingWithState:&v48 objects:v53 count:16];
  if (v16)
  {
    v17 = v16;
    v18 = *v49;
    do
    {
      for (i = 0; i != v17; ++i)
      {
        if (*v49 != v18)
        {
          objc_enumerationMutation(v15);
        }

        localIdentifier = [*(*(&v48 + 1) + 8 * i) localIdentifier];
        [v14 addObject:localIdentifier];
      }

      v17 = [v15 countByEnumeratingWithState:&v48 objects:v53 count:16];
    }

    while (v17);
  }

  if ([v14 count])
  {
    [v9 setObject:v14 forKeyedSubscript:@"PHPhotosGraphOptionAssetIdentifiers"];
  }

  if (infoCopy)
  {
    assetCollectionType = [collectionCopy assetCollectionType];
    v22 = 0x1E696A000;
    if (assetCollectionType != 1)
    {
      v23 = assetCollectionType;
      if (assetCollectionType == 3)
      {
        bOOLValue = 1;
        goto LABEL_38;
      }

      if (assetCollectionType != 2 || [collectionCopy assetCollectionSubtype] == 200)
      {
        v24 = objc_getAssociatedObject(collectionCopy, "phIsCompleteMoments");
        v25 = v24;
        if (v24)
        {
          bOOLValue = [v24 BOOLValue];
LABEL_37:

          goto LABEL_38;
        }

        if (v23 == 4)
        {
          photosGraphProperties = [collectionCopy photosGraphProperties];
          if (photosGraphProperties)
          {
            v28 = photosGraphProperties;
            v29 = [photosGraphProperties objectForKeyedSubscript:@"info"];
            v30 = [v29 objectForKeyedSubscript:@"sourceType"];

            if (v30)
            {
              v42 = v28;
              if ([v30 isEqualToString:@"Moment"] & 1) != 0 || (objc_msgSend(v30, "isEqualToString:", @"Contiguous Moments"))
              {
                bOOLValue = 1;
              }

              else
              {
                bOOLValue = [v30 isEqualToString:@"Disjoint Moments"] ^ 1;
              }

LABEL_36:

              v39 = [*(v22 + 3480) numberWithBool:bOOLValue];
              objc_setAssociatedObject(collectionCopy, "phIsCompleteMoments", v39, 1);

              goto LABEL_37;
            }
          }
        }

        photoLibrary2 = [v15 photoLibrary];
        firstObject = [v15 firstObject];
        v33 = [PHFetchOptions fetchOptionsWithPhotoLibrary:photoLibrary2 orObject:firstObject];

        v42 = v33;
        v30 = [PHAssetCollection fetchAssetCollectionsContainingAssets:v15 withType:3 options:v33];
        v44 = 0u;
        v45 = 0u;
        v46 = 0u;
        v47 = 0u;
        v34 = [v30 countByEnumeratingWithState:&v44 objects:v52 count:16];
        if (v34)
        {
          v35 = v34;
          v36 = 0;
          v37 = *v45;
          do
          {
            for (j = 0; j != v35; ++j)
            {
              if (*v45 != v37)
              {
                objc_enumerationMutation(v30);
              }

              v36 += [*(*(&v44 + 1) + 8 * j) estimatedAssetCount];
            }

            v35 = [v30 countByEnumeratingWithState:&v44 objects:v52 count:16];
          }

          while (v35);
        }

        else
        {
          v36 = 0;
        }

        bOOLValue = v36 == [v15 count];
        v22 = 0x1E696A000uLL;
        v25 = 0;
        goto LABEL_36;
      }
    }

    bOOLValue = 0;
LABEL_38:
    v40 = [*(v22 + 3480) numberWithBool:bOOLValue];
    [v9 setObject:v40 forKeyedSubscript:@"PHPhotosGraphOptionIsCompleteMoments"];
  }

  return v9;
}

+ (id)transientAssetCollectionWithAssetFetchResult:(id)result title:(id)title identifier:(id)identifier
{
  identifierCopy = identifier;
  titleCopy = title;
  resultCopy = result;
  v10 = [[PHAssetCollection alloc] initTransientWithAssets:0 orFetchResult:resultCopy title:titleCopy identifier:identifierCopy];

  return v10;
}

+ (id)transientAssetCollectionWithAssets:(id)assets title:(id)title identifier:(id)identifier photoLibrary:(id)library
{
  libraryCopy = library;
  identifierCopy = identifier;
  titleCopy = title;
  assetsCopy = assets;
  LODWORD(v15) = 2;
  v13 = [[PHAssetCollection alloc] initTransientWithAssets:assetsCopy orFetchResult:0 title:titleCopy subtitle:0 titleFontName:0 identifier:identifierCopy albumKind:v15 subtype:200 photoLibrary:libraryCopy];

  return v13;
}

+ (id)transientAssetCollectionWithAssetFetchResult:(id)result title:(id)title subtype:(int64_t)subtype
{
  titleCopy = title;
  resultCopy = result;
  v9 = [[PHAssetCollection alloc] initTransientWithAssets:0 orFetchResult:resultCopy title:titleCopy identifier:0 albumKind:2 subtype:subtype];

  return v9;
}

+ (id)transientAssetCollectionWithFetchOptions:(id)options title:(id)title subtitle:(id)subtitle titleFontName:(id)name identifier:(id)identifier
{
  identifierCopy = identifier;
  nameCopy = name;
  subtitleCopy = subtitle;
  titleCopy = title;
  v15 = [PHQuery queryForAssetsWithOptions:options];
  LODWORD(v18) = 2;
  v16 = [[PHAssetCollection alloc] initTransientWithAssets:0 orFetchResult:0 orQuery:v15 title:titleCopy subtitle:subtitleCopy titleFontName:nameCopy identifier:identifierCopy albumKind:v18 subtype:200 photoLibrary:0];

  return v16;
}

+ (id)transientAssetCollectionWithAssetFetchResult:(id)result type:(int64_t)type subtype:(int64_t)subtype title:(id)title subtitle:(id)subtitle titleFontName:(id)name
{
  nameCopy = name;
  subtitleCopy = subtitle;
  titleCopy = title;
  resultCopy = result;
  HIDWORD(v19) = 2;
  LOBYTE(v19) = [objc_opt_class() _defaultKeyAssetsAtEndForType:type subtype:subtype];
  v17 = [[PHAssetCollection alloc] _initTransientWithAssets:0 orFetchResult:resultCopy orQuery:0 title:titleCopy subtitle:subtitleCopy titleFontName:nameCopy identifier:0 keyAssetsAtEnd:v19 albumKind:type type:subtype subtype:0 startDate:0 endDate:0 photoLibrary:?];

  return v17;
}

+ (id)transientAssetCollectionWithAssetFetchResult:(id)result title:(id)title subtitle:(id)subtitle identifier:(id)identifier startDate:(id)date endDate:(id)endDate
{
  endDateCopy = endDate;
  dateCopy = date;
  identifierCopy = identifier;
  subtitleCopy = subtitle;
  titleCopy = title;
  resultCopy = result;
  v19 = [objc_opt_class() _defaultKeyAssetsAtEndForType:1 subtype:2];
  v20 = [PHAssetCollection alloc];
  photoLibrary = [resultCopy photoLibrary];
  HIDWORD(v24) = 2;
  LOBYTE(v24) = v19;
  v22 = [(PHAssetCollection *)v20 _initTransientWithAssets:0 orFetchResult:resultCopy orQuery:0 title:titleCopy subtitle:subtitleCopy titleFontName:0 identifier:identifierCopy keyAssetsAtEnd:v24 albumKind:1 type:2 subtype:dateCopy startDate:endDateCopy endDate:photoLibrary photoLibrary:?];

  return v22;
}

+ (PHAssetCollection)transientAssetCollectionWithAssetFetchResult:(PHFetchResult *)fetchResult title:(NSString *)title
{
  v5 = title;
  v6 = fetchResult;
  v7 = [[PHAssetCollection alloc] initTransientWithAssets:0 orFetchResult:v6 title:v5 identifier:0];

  return v7;
}

+ (id)transientAssetCollectionWithOptions:(id)options
{
  optionsCopy = options;
  type = [optionsCopy type];
  subtype = [optionsCopy subtype];
  keyAssetsPosition = [optionsCopy keyAssetsPosition];
  v21 = subtype;
  if (keyAssetsPosition == 2)
  {
    v20 = 1;
  }

  else if (keyAssetsPosition)
  {
    v20 = 0;
  }

  else
  {
    v20 = [objc_opt_class() _defaultKeyAssetsAtEndForType:type subtype:subtype];
  }

  v19 = objc_alloc([optionsCopy assetCollectionClass]);
  fetchResult = [optionsCopy fetchResult];
  query = [optionsCopy query];
  title = [optionsCopy title];
  subtitle = [optionsCopy subtitle];
  titleFontName = [optionsCopy titleFontName];
  identifier = [optionsCopy identifier];
  startDate = [optionsCopy startDate];
  endDate = [optionsCopy endDate];
  photoLibrary = [optionsCopy photoLibrary];
  HIDWORD(v17) = 2;
  LOBYTE(v17) = v20;
  v15 = [v19 _initTransientWithAssets:0 orFetchResult:fetchResult orQuery:query title:title subtitle:subtitle titleFontName:titleFontName identifier:identifier keyAssetsAtEnd:v17 albumKind:type type:v21 subtype:startDate startDate:endDate endDate:photoLibrary photoLibrary:?];

  return v15;
}

+ (id)transientAssetCollectionWithAssets:(id)assets subtype:(int64_t)subtype identifier:(id)identifier startDate:(id)date endDate:(id)endDate title:(id)title
{
  titleCopy = title;
  endDateCopy = endDate;
  dateCopy = date;
  identifierCopy = identifier;
  assetsCopy = assets;
  LODWORD(v20) = 2;
  v18 = [[PHAssetCollection alloc] initTransientWithAssets:assetsCopy orFetchResult:0 orQuery:0 title:titleCopy subtitle:0 titleFontName:0 identifier:identifierCopy albumKind:v20 subtype:subtype startDate:dateCopy endDate:endDateCopy photoLibrary:0];

  return v18;
}

+ (PHAssetCollection)transientAssetCollectionWithAssets:(NSArray *)assets title:(NSString *)title
{
  v5 = title;
  v6 = assets;
  v7 = [[PHAssetCollection alloc] initTransientWithAssets:v6 orFetchResult:0 title:v5 identifier:0];

  return v7;
}

+ (id)fetchMomentsNeedingThemeAnalysisWithAdapterVersion:(int64_t)version uemVersion:(int64_t)uemVersion options:(id)options
{
  optionsCopy = options;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __91__PHAssetCollection_fetchMomentsNeedingThemeAnalysisWithAdapterVersion_uemVersion_options___block_invoke;
  v11[3] = &unk_1E75A3FD0;
  versionCopy = version;
  uemVersionCopy = uemVersion;
  v12 = optionsCopy;
  v8 = optionsCopy;
  v9 = [PHObject authorizationAwareFetchResultWithOptions:v8 fetchBlock:v11];

  return v9;
}

id __91__PHAssetCollection_fetchMomentsNeedingThemeAnalysisWithAdapterVersion_uemVersion_options___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [PHFetchOptions effectivePhotoLibraryForFetchOptions:v3 object:0];
  v5 = [v4 photoLibraryForCurrentQueueQoS];
  v15 = 0;
  v16 = &v15;
  v17 = 0x3032000000;
  v18 = __Block_byref_object_copy__3951;
  v19 = __Block_byref_object_dispose__3952;
  v20 = 0;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __91__PHAssetCollection_fetchMomentsNeedingThemeAnalysisWithAdapterVersion_uemVersion_options___block_invoke_2;
  v11[3] = &unk_1E75A3FA8;
  v13 = &v15;
  v6 = v5;
  v12 = v6;
  v14 = *(a1 + 40);
  [v6 performBlockAndWait:v11];
  if (v16[5])
  {
    v7 = [MEMORY[0x1E696AE18] predicateWithFormat:@"self in %@", v16[5]];
    v8 = [PHQuery queryForType:@"PHMoment" withBasePredicate:v7 seedOIDs:0 inLibrary:v4];

    [v8 setFetchOptions:*(a1 + 32)];
  }

  else
  {
    v8 = 0;
  }

  v9 = [v8 executeQuery];

  _Block_object_dispose(&v15, 8);

  return v9;
}

void __91__PHAssetCollection_fetchMomentsNeedingThemeAnalysisWithAdapterVersion_uemVersion_options___block_invoke_2(uint64_t a1)
{
  v2 = MEMORY[0x1E69BE5C0];
  v6 = [*(a1 + 32) managedObjectContext];
  v3 = [v2 fetchMomentIDsNotAnalyzedForThemesInContext:v6 adapterVersion:*(a1 + 48) uemVersion:*(a1 + 56)];
  v4 = *(*(a1 + 40) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;
}

+ (id)fetchMomentsInHighlight:(id)highlight options:(id)options
{
  optionsCopy = options;
  v6 = [PHQuery queryForMomentsInPhotosHighlight:highlight];
  [v6 setFetchOptions:optionsCopy];

  executeQuery = [v6 executeQuery];

  return executeQuery;
}

+ (id)fetchPhotosHighlightsContainingMoments:(id)moments options:(id)options
{
  optionsCopy = options;
  v6 = [PHQuery queryForPhotosHighlightsContainingMoments:moments];
  [v6 setFetchOptions:optionsCopy];

  executeQuery = [v6 executeQuery];

  return executeQuery;
}

+ (id)fetchMomentsBackingSuggestion:(id)suggestion options:(id)options
{
  optionsCopy = options;
  v6 = [PHQuery queryForMomentsBackingSuggestion:suggestion];
  [v6 setFetchOptions:optionsCopy];

  executeQuery = [v6 executeQuery];

  return executeQuery;
}

+ (id)fetchMomentsBackingMemory:(id)memory options:(id)options
{
  optionsCopy = options;
  v6 = [PHQuery queryForMomentsBackingMemory:memory];
  [v6 setFetchOptions:optionsCopy];

  executeQuery = [v6 executeQuery];

  return executeQuery;
}

id __45__PHAssetCollection_fetchMomentsWithOptions___block_invoke(uint64_t a1, void *a2)
{
  v13[1] = *MEMORY[0x1E69E9840];
  v2 = a2;
  v3 = [v2 sortDescriptors];
  if (!v3 || (v4 = v3, v5 = [v2 chunkSizeForFetch], v4, !v5))
  {
    if (v2)
    {
      v6 = [v2 copy];

      v2 = v6;
    }

    else
    {
      v2 = objc_opt_new();
    }

    v7 = [v2 sortDescriptors];

    if (!v7)
    {
      v8 = [MEMORY[0x1E696AEB0] sortDescriptorWithKey:@"startDate" ascending:1];
      v13[0] = v8;
      v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v13 count:1];
      [v2 setSortDescriptors:v9];
    }

    if (![v2 chunkSizeForFetch])
    {
      [v2 setChunkSizeForFetch:2000];
    }
  }

  v10 = [PHQuery queryForMomentsWithOptions:v2];
  v11 = [v10 executeQuery];

  return v11;
}

+ (PHFetchResult)fetchMomentsInMomentList:(PHCollectionList *)momentList options:(PHFetchOptions *)options
{
  v5 = momentList;
  v6 = options;
  v7 = v6;
  if (v5)
  {
    if (![(PHFetchOptions *)v6 chunkSizeForFetch])
    {
      photoLibrary = [(PHObject *)v5 photoLibrary];
      v9 = [PHFetchOptions fetchOptionsCopyFromNullableFetchOptions:v7 photoLibrary:photoLibrary];

      [(PHFetchOptions *)v9 setChunkSizeForFetch:2000];
      v7 = v9;
    }

    v10 = [PHQuery queryForMomentsInMomentList:v5 options:v7];
    executeQuery = [v10 executeQuery];
  }

  else
  {
    executeQuery = 0;
  }

  return executeQuery;
}

+ (id)fetchSuggestedContributionsForAssetsMetadata:(id)metadata options:(id)options
{
  v21 = *MEMORY[0x1E69E9840];
  metadataCopy = metadata;
  optionsCopy = options;
  photoLibrary = [optionsCopy photoLibrary];
  if (!photoLibrary)
  {
    v15 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:@"You must specify a PHPhotoLibrary in the fetch options" userInfo:0];
    objc_exception_throw(v15);
  }

  v8 = photoLibrary;
  photoAnalysisClient = [photoLibrary photoAnalysisClient];
  v16 = 0;
  v10 = [photoAnalysisClient requestSuggestedContributionsForAssetsMetadata:metadataCopy error:&v16];
  v11 = v16;
  if (v11)
  {
    v12 = PLPhotoKitGetLog();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412546;
      v18 = metadataCopy;
      v19 = 2112;
      v20 = v11;
      _os_log_impl(&dword_19C86F000, v12, OS_LOG_TYPE_ERROR, "Can't request suggestion contributions for assets metadata %@: %@", buf, 0x16u);
    }

    goto LABEL_6;
  }

  if (![v10 count])
  {
LABEL_6:
    v13 = 0;
    goto LABEL_9;
  }

  v13 = [PHAssetCollection fetchAssetCollectionsWithLocalIdentifiers:v10 options:optionsCopy];
LABEL_9:

  return v13;
}

+ (id)fetchSuggestedContributionsForFileURLs:(id)ls options:(id)options
{
  v50 = *MEMORY[0x1E69E9840];
  lsCopy = ls;
  optionsCopy = options;
  v36 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(lsCopy, "count")}];
  v7 = objc_alloc_init(PHValidator);
  v43 = 0u;
  v44 = 0u;
  v45 = 0u;
  v46 = 0u;
  obj = lsCopy;
  v39 = [obj countByEnumeratingWithState:&v43 objects:v49 count:16];
  if (v39)
  {
    selfCopy = self;
    v8 = 0;
    v38 = *v44;
    while (1)
    {
      v9 = 0;
      do
      {
        if (*v44 != v38)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v43 + 1) + 8 * v9);
        v42 = v8;
        v11 = [(PHValidator *)v7 validateURL:v10 withOptions:16 error:&v42];
        v12 = v42;

        if (v11)
        {
          v8 = v12;
LABEL_11:
          dictionary = [MEMORY[0x1E695DF90] dictionary];
          v17 = objc_alloc(MEMORY[0x1E69C0718]);
          photoLibrary = [optionsCopy photoLibrary];
          photoLibraryBundle = [photoLibrary photoLibraryBundle];
          timeZoneLookup = [photoLibraryBundle timeZoneLookup];
          v21 = [v17 initWithMediaURL:v10 timeZoneLookup:timeZoneLookup];

          utcCreationDate = [v21 utcCreationDate];
          if (utcCreationDate)
          {
            [dictionary setObject:utcCreationDate forKeyedSubscript:@"PHSuggestedContributionsAssetsMetadataCreationDateKey"];
          }

          gpsLocation = [v21 gpsLocation];
          v24 = gpsLocation;
          if (gpsLocation)
          {
            v25 = MEMORY[0x1E696AD98];
            [gpsLocation coordinate];
            v26 = [v25 numberWithDouble:?];
            [dictionary setObject:v26 forKeyedSubscript:@"PHSuggestedContributionsAssetsMetadataLatitudeKey"];

            v27 = MEMORY[0x1E696AD98];
            [v24 coordinate];
            v29 = [v27 numberWithDouble:v28];
            [dictionary setObject:v29 forKeyedSubscript:@"PHSuggestedContributionsAssetsMetadataLongitudeKey"];
          }

          if ([dictionary count])
          {
            [v36 addObject:dictionary];
          }

          else
          {
            v30 = PLPhotoKitGetLog();
            if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138412290;
              v48 = v10;
              _os_log_impl(&dword_19C86F000, v30, OS_LOG_TYPE_DEFAULT, "+[PHAssetCollection() fetchSuggestedContributionsForFileURLs:options:]: No metadata (date or location) found for asset at url: %@", buf, 0xCu);
            }
          }

          goto LABEL_21;
        }

        v41 = v12;
        v13 = [(PHValidator *)v7 validateURL:v10 withOptions:32 error:&v41];
        v14 = v41;

        if (v13)
        {
          v8 = v14;
          goto LABEL_11;
        }

        v40 = v14;
        v15 = [(PHValidator *)v7 validateURL:v10 withOptions:64 error:&v40];
        v8 = v40;

        if (v15)
        {
          goto LABEL_11;
        }

        dictionary = PLPhotoKitGetLog();
        if (os_log_type_enabled(dictionary, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412290;
          v48 = v10;
          _os_log_impl(&dword_19C86F000, dictionary, OS_LOG_TYPE_ERROR, "+[PHAssetCollection() fetchSuggestedContributionsForFileURLs:options:]: No valid asset for url: %@", buf, 0xCu);
        }

LABEL_21:

        ++v9;
      }

      while (v39 != v9);
      v31 = [obj countByEnumeratingWithState:&v43 objects:v49 count:16];
      v39 = v31;
      if (!v31)
      {

        self = selfCopy;
        break;
      }
    }
  }

  v32 = [self fetchSuggestedContributionsForAssetsMetadata:v36 options:optionsCopy];

  return v32;
}

+ (id)assetsMetadataFromAssets:(id)assets
{
  v33 = *MEMORY[0x1E69E9840];
  assetsCopy = assets;
  array = [MEMORY[0x1E695DF70] array];
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  obj = assetsCopy;
  v4 = [obj countByEnumeratingWithState:&v28 objects:v32 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = 0x1E695D000uLL;
    v7 = *v29;
    v8 = @"PHSuggestedContributionsAssetsMetadataCreationDateKey";
    do
    {
      v9 = 0;
      v25 = v5;
      do
      {
        if (*v29 != v7)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v28 + 1) + 8 * v9);
        dictionary = [*(v6 + 3984) dictionary];
        location = [v10 location];
        v13 = location;
        if (location)
        {
          [location coordinate];
          latitude = v35.latitude;
          longitude = v35.longitude;
          if (CLLocationCoordinate2DIsValid(v35))
          {
            v16 = [MEMORY[0x1E696AD98] numberWithDouble:latitude];
            [dictionary setObject:v16 forKeyedSubscript:@"PHSuggestedContributionsAssetsMetadataLatitudeKey"];

            v17 = [MEMORY[0x1E696AD98] numberWithDouble:longitude];
            [dictionary setObject:v17 forKeyedSubscript:@"PHSuggestedContributionsAssetsMetadataLongitudeKey"];

            v18 = MEMORY[0x1E696AD98];
            [v10 coarseLocationProperties];
            v19 = v8;
            v21 = v20 = v6;
            [v21 gpsHorizontalAccuracy];
            v22 = [v18 numberWithDouble:?];
            [dictionary setObject:v22 forKeyedSubscript:@"PHSuggestedContributionsAssetsMetadataHorizontalAccuracyKey"];

            v6 = v20;
            v8 = v19;
            v5 = v25;
          }
        }

        creationDate = [v10 creationDate];
        [dictionary setObject:creationDate forKeyedSubscript:v8];
        [array addObject:dictionary];

        ++v9;
      }

      while (v5 != v9);
      v5 = [obj countByEnumeratingWithState:&v28 objects:v32 count:16];
    }

    while (v5);
  }

  return array;
}

+ (id)fetchSuggestedContributionsForAssetsFetchResult:(id)result options:(id)options
{
  optionsCopy = options;
  v7 = [self assetsMetadataFromAssets:result];
  v8 = [self fetchSuggestedContributionsForAssetsMetadata:v7 options:optionsCopy];

  return v8;
}

+ (id)fetchRecentContentSyndicationAssetCollectionsWithOptions:(id)options maxNumberOfStacks:(int64_t)stacks maxNumberOfAssetsPerStack:(int64_t)stack
{
  v77[3] = *MEMORY[0x1E69E9840];
  optionsCopy = options;
  stacksCopy = stacks;
  v8 = stack * stacks;
  v53 = [PHFetchOptions effectivePhotoLibraryForFetchOptions:optionsCopy object:0];
  v54 = optionsCopy;
  v9 = [PHFetchOptions fetchOptionsCopyFromNullableFetchOptions:optionsCopy photoLibrary:?];
  v10 = +[PHAsset filterPredicateToExcludeNoSyndicationAssets];
  v11 = +[PHAsset filterPredicateToIncludeOnlyReceivedSyndicatedAssets];
  internalPredicate = [v9 internalPredicate];
  v13 = MEMORY[0x1E696AB28];
  v50 = v10;
  if (internalPredicate)
  {
    v14 = internalPredicate;
    v77[0] = internalPredicate;
    v77[1] = v10;
    v77[2] = v11;
    v15 = [MEMORY[0x1E695DEC8] arrayWithObjects:v77 count:3];
    v16 = [v13 andPredicateWithSubpredicates:v15];
  }

  else
  {
    v76[0] = v10;
    v76[1] = v11;
    v15 = [MEMORY[0x1E695DEC8] arrayWithObjects:v76 count:2];
    v16 = [v13 andPredicateWithSubpredicates:v15];
  }

  v49 = v11;

  v48 = v16;
  [v9 setInternalPredicate:v16];
  if (v8 >= 2)
  {
    v17 = [MEMORY[0x1E696AEB0] sortDescriptorWithKey:@"addedDate" ascending:0];
    v75 = v17;
    v18 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v75 count:1];
    [v9 setInternalSortDescriptors:v18];
  }

  v74 = @"PHAssetPropertySetCuration";
  v19 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v74 count:1];
  [v9 addFetchPropertySets:v19];

  [v9 setFetchLimit:v8];
  v52 = v9;
  v47 = [PHQuery queryForAssetsWithOptions:v9];
  executeQuery = [v47 executeQuery];
  v61 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:stacksCopy];
  v59 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v21 = [MEMORY[0x1E695DF70] arrayWithCapacity:stacksCopy];
  v68 = 0u;
  v69 = 0u;
  v70 = 0u;
  v71 = 0u;
  obj = executeQuery;
  v22 = [obj countByEnumeratingWithState:&v68 objects:v73 count:16];
  if (v22)
  {
    v23 = v22;
    v24 = *v69;
    do
    {
      for (i = 0; i != v23; ++i)
      {
        if (*v69 != v24)
        {
          objc_enumerationMutation(obj);
        }

        v26 = *(*(&v68 + 1) + 8 * i);
        curationProperties = [v26 curationProperties];
        syndicationIdentifier = [curationProperties syndicationIdentifier];

        v29 = PLSearchableIdentifierFromMessagesSyndicationID();
        if (v29)
        {
          v30 = [v61 objectForKeyedSubscript:v29];
          if (v30)
          {
            v31 = v30;
LABEL_14:
            if ([v31 count] < stack)
            {
              [v31 addObject:v26];
            }
          }

          else if ([v61 count] >= stacksCopy)
          {
            v31 = 0;
          }

          else
          {
            v31 = [objc_alloc(MEMORY[0x1E695DFA8]) initWithCapacity:stack];
            [v61 setObject:v31 forKeyedSubscript:v29];
            [v21 addObject:v29];
            if (v31)
            {
              goto LABEL_14;
            }
          }
        }
      }

      v23 = [obj countByEnumeratingWithState:&v68 objects:v73 count:16];
    }

    while (v23);
  }

  stackCopy = stack;

  v66 = 0u;
  v67 = 0u;
  v64 = 0u;
  v65 = 0u;
  v56 = v21;
  v60 = [v56 countByEnumeratingWithState:&v64 objects:v72 count:16];
  if (v60)
  {
    v58 = *v65;
    do
    {
      for (j = 0; j != v60; ++j)
      {
        if (*v65 != v58)
        {
          objc_enumerationMutation(v56);
        }

        v33 = *(*(&v64 + 1) + 8 * j);
        v34 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:PLSearchableUniqueIdentifierHashFromSearchableIdentifier()];
        stringValue = [v34 stringValue];

        v63 = [v61 objectForKeyedSubscript:v33];
        allObjects = [v63 allObjects];
        v36 = [allObjects sortedArrayUsingComparator:&__block_literal_global_155];

        firstObject = [v36 firstObject];
        lastObject = [v36 lastObject];
        curationProperties2 = [firstObject curationProperties];
        addedDate = [curationProperties2 addedDate];
        curationProperties3 = [lastObject curationProperties];
        addedDate2 = [curationProperties3 addedDate];
        v43 = [PHAssetCollection transientAssetCollectionWithAssets:v36 subtype:1000000501 identifier:stringValue startDate:addedDate endDate:addedDate2 title:0];

        [v59 addObject:v43];
      }

      v60 = [v56 countByEnumeratingWithState:&v64 objects:v72 count:16];
    }

    while (v60);
  }

  LOBYTE(v46) = 1;
  v44 = [[PHRecentContentSyndicationCollectionsResult alloc] initWithObjects:v59 photoLibrary:v53 fetchOptions:v52 maxNumberOfStacks:stacksCopy maxNumberOfAssetsPerStack:stackCopy fetchType:@"PHAssetCollection" fetchPropertySets:0 identifier:0 registerIfNeeded:v46];

  return v44;
}

uint64_t __122__PHAssetCollection_fetchRecentContentSyndicationAssetCollectionsWithOptions_maxNumberOfStacks_maxNumberOfAssetsPerStack___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = [a2 curationProperties];
  v6 = [v5 syndicationIdentifier];
  v7 = PLAttachmentIndexFromMessagesSyndicationID();

  v8 = [v4 curationProperties];

  v9 = [v8 syndicationIdentifier];
  v10 = PLAttachmentIndexFromMessagesSyndicationID();

  v11 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v7];
  v12 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v10];
  v13 = [v11 compare:v12];

  return v13;
}

+ (id)fetchAssetCollectionsWithObjectIDs:(id)ds options:(id)options
{
  dsCopy = ds;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __64__PHAssetCollection_fetchAssetCollectionsWithObjectIDs_options___block_invoke;
  v9[3] = &unk_1E75AB0E0;
  v10 = dsCopy;
  v6 = dsCopy;
  v7 = [PHObject authorizationAwareFetchResultWithOptions:options fetchBlock:v9];

  return v7;
}

id __64__PHAssetCollection_fetchAssetCollectionsWithObjectIDs_options___block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = [PHQuery queryForAssetCollectionsWithObjectIDs:*(a1 + 32) options:a2];
  v3 = [v2 executeQuery];

  return v3;
}

+ (PHFetchResult)fetchAssetCollectionsWithALAssetGroupURLs:(NSArray *)assetGroupURLs options:(PHFetchOptions *)options
{
  v5 = assetGroupURLs;
  v6 = options;
  if (![(NSArray *)v5 count]|| (v9[0] = MEMORY[0x1E69E9820], v9[1] = 3221225472, v9[2] = __71__PHAssetCollection_fetchAssetCollectionsWithALAssetGroupURLs_options___block_invoke, v9[3] = &unk_1E75AB0E0, v10 = v5, [PHObject authorizationAwareFetchResultWithOptions:v6 fetchBlock:v9], v7 = objc_claimAutoreleasedReturnValue(), v10, !v7))
  {
    v7 = objc_alloc_init(PHFetchResult);
  }

  return v7;
}

id __71__PHAssetCollection_fetchAssetCollectionsWithALAssetGroupURLs_options___block_invoke(uint64_t a1, void *a2)
{
  v18 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(*(a1 + 32), "count")}];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = *(a1 + 32);
  v6 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v14;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v14 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = [MEMORY[0x1E69BE458] uuidFromGroupURL:{*(*(&v13 + 1) + 8 * i), v13}];
        if (v10)
        {
          [v4 addObject:v10];
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v7);
  }

  if ([v4 count])
  {
    v11 = [PHAssetCollection fetchAssetCollectionsWithLocalIdentifiers:v4 options:v3];
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

+ (PHFetchResult)fetchAssetCollectionsWithType:(PHAssetCollectionType)type subtype:(PHAssetCollectionSubtype)subtype options:(PHFetchOptions *)options
{
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __67__PHAssetCollection_fetchAssetCollectionsWithType_subtype_options___block_invoke;
  v7[3] = &__block_descriptor_56_e39___PHFetchResult_16__0__PHFetchOptions_8l;
  v7[4] = type;
  v7[5] = subtype;
  v7[6] = self;
  v5 = [PHObject authorizationAwareFetchResultWithOptions:options fetchBlock:v7];

  return v5;
}

id __67__PHAssetCollection_fetchAssetCollectionsWithType_subtype_options___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [PHFetchOptions effectivePhotoLibraryForFetchOptions:v3 object:0];
  v5 = [PHFetchOptions fetchOptionsCopyFromNullableFetchOptions:v3 photoLibrary:v4];

  [v5 setChunkSizeForFetch:2000];
  v6 = [PHQuery queryForAssetCollectionsWithType:*(a1 + 32) subtype:*(a1 + 40) options:v5];
  v7 = [v6 executeQuery];
  if (*(a1 + 32) == 1 && *(a1 + 40) == 0x7FFFFFFFFFFFFFFFLL && ([MEMORY[0x1E69BF2F0] clientIsAllowedToFetchCollectionShares] & 1) == 0)
  {
    v8 = [*(a1 + 48) fetchAssetCollectionsWithType:12 subtype:102 options:v5];
    v9 = [v7 fetchedObjectIDs];
    v10 = [v8 fetchedObjectIDs];
    v11 = [v9 arrayByAddingObjectsFromArray:v10];

    v12 = [PHManualFetchResult alloc];
    v13 = [v5 photoLibrary];
    v14 = [(PHManualFetchResult *)v12 initWithOids:v11 photoLibrary:v13 fetchType:@"PHAlbum" fetchPropertySets:0 identifier:@"combined album + collectionshare fetch" registerIfNeeded:1];

    v7 = v14;
  }

  return v7;
}

+ (PHFetchResult)fetchAssetCollectionsWithLocalIdentifiers:(NSArray *)identifiers options:(PHFetchOptions *)options
{
  v5 = identifiers;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __71__PHAssetCollection_fetchAssetCollectionsWithLocalIdentifiers_options___block_invoke;
  v9[3] = &unk_1E75AB0E0;
  v10 = v5;
  v6 = v5;
  v7 = [PHObject authorizationAwareFetchResultWithOptions:options fetchBlock:v9];

  return v7;
}

id __71__PHAssetCollection_fetchAssetCollectionsWithLocalIdentifiers_options___block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = [PHQuery queryForAssetCollectionsWithLocalIdentifiers:*(a1 + 32) options:a2];
  v3 = [v2 executeQuery];

  return v3;
}

+ (id)fetchAssetCollectionsWithType:(int64_t)type localIdentifiers:(id)identifiers options:(id)options
{
  identifiersCopy = identifiers;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __76__PHAssetCollection_fetchAssetCollectionsWithType_localIdentifiers_options___block_invoke;
  v11[3] = &unk_1E75A3F40;
  v12 = identifiersCopy;
  typeCopy = type;
  v8 = identifiersCopy;
  v9 = [PHObject authorizationAwareFetchResultWithOptions:options fetchBlock:v11];

  return v9;
}

id __76__PHAssetCollection_fetchAssetCollectionsWithType_localIdentifiers_options___block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = [PHQuery queryForAssetCollectionsWithType:*(a1 + 40) localIdentifiers:*(a1 + 32) options:a2];
  v3 = [v2 executeQuery];

  return v3;
}

+ (id)fetchAssetCollectionsContainingAssets:(id)assets withType:(int64_t)type options:(id)options
{
  if (assets)
  {
    v5 = [PHQuery queryForAssetCollectionsContainingAssets:assets withType:type options:options];
    executeQuery = [v5 executeQuery];
  }

  else
  {
    executeQuery = 0;
  }

  return executeQuery;
}

+ (id)fetchAlbumIdentifiersContainingAsset:(id)asset options:(id)options
{
  assetCopy = asset;
  optionsCopy = options;
  array = [MEMORY[0x1E695DF70] array];
  v9 = [self fetchAssetCollectionsContainingAsset:assetCopy withType:1 options:optionsCopy];
  if ([v9 count])
  {
    v10 = 0;
    do
    {
      v11 = [v9 objectAtIndexedSubscript:v10];
      localIdentifier = [v11 localIdentifier];
      [array addObject:localIdentifier];

      ++v10;
    }

    while ([v9 count] > v10);
  }

  return array;
}

+ (PHFetchResult)fetchAssetCollectionsContainingAsset:(PHAsset *)asset withType:(PHAssetCollectionType)type options:(PHFetchOptions *)options
{
  if (asset)
  {
    v5 = [PHQuery queryForAssetCollectionsContainingAsset:asset withType:type options:options];
    executeQuery = [v5 executeQuery];
  }

  else
  {
    executeQuery = 0;
  }

  return executeQuery;
}

+ (id)fetchAllTripHighlightsContainingAssetsWithUUIDs:(id)ds options:(id)options
{
  if (ds)
  {
    v4 = [PHQuery queryForAllTripHighlightsContainingAssetUUIDs:ds options:options];
    executeQuery = [v4 executeQuery];
  }

  else
  {
    executeQuery = 0;
  }

  return executeQuery;
}

+ (BOOL)_defaultKeyAssetsAtEndForType:(int64_t)type subtype:(int64_t)subtype
{
  result = 0;
  if (type <= 8)
  {
    if (type == 1)
    {
      return (subtype & 0xFFFFFFFFFFFFFFFELL) == 100;
    }

    if (type != 2)
    {
      return result;
    }

    return subtype != 200;
  }

  if (type == 9)
  {
    return 1;
  }

  if (type == 12)
  {
    return subtype != 200;
  }

  return result;
}

+ (id)transformValueExpression:(id)expression forKeyPath:(id)path
{
  expressionCopy = expression;
  pathCopy = path;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __57__PHAssetCollection_transformValueExpression_forKeyPath___block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (transformValueExpression_forKeyPath__onceToken_4265 != -1)
  {
    dispatch_once(&transformValueExpression_forKeyPath__onceToken_4265, block);
  }

  if ([transformValueExpression_forKeyPath___passThroughSet_4266 containsObject:pathCopy])
  {
    v8 = expressionCopy;
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

void __57__PHAssetCollection_transformValueExpression_forKeyPath___block_invoke()
{
  v4[7] = *MEMORY[0x1E69E9840];
  v0 = MEMORY[0x1E695DFD8];
  v4[0] = @"localizedTitle";
  v4[1] = @"title";
  v4[2] = @"estimatedAssetCount";
  v4[3] = @"startDate";
  v4[4] = @"endDate";
  v4[5] = @"cloudGUID";
  v4[6] = @"modificationDate";
  v1 = [MEMORY[0x1E695DEC8] arrayWithObjects:v4 count:7];
  v2 = [v0 setWithArray:v1];
  v3 = transformValueExpression_forKeyPath___passThroughSet_4266;
  transformValueExpression_forKeyPath___passThroughSet_4266 = v2;
}

+ (id)entityKeyMap
{
  pl_dispatch_once();
  v2 = entityKeyMap_pl_once_object_16_4274;

  return v2;
}

void __33__PHAssetCollection_entityKeyMap__block_invoke()
{
  v25[10] = *MEMORY[0x1E69E9840];
  v12 = [PHEntityKeyMap alloc];
  v23 = @"uuid";
  v24[0] = @"uuid";
  v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v23 count:1];
  v25[0] = v13;
  v24[1] = @"title";
  v22[0] = @"localizedTitle";
  v22[1] = @"title";
  v0 = [MEMORY[0x1E695DEC8] arrayWithObjects:v22 count:2];
  v25[1] = v0;
  v24[2] = @"cachedCount";
  v21 = @"estimatedAssetCount";
  v1 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v21 count:1];
  v25[2] = v1;
  v24[3] = @"customSortAscending";
  v20 = @"customSortAscending";
  v2 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v20 count:1];
  v25[3] = v2;
  v24[4] = @"customSortKey";
  v19 = @"customSortKey";
  v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v19 count:1];
  v25[4] = v3;
  v24[5] = @"startDate";
  v18 = @"startDate";
  v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v18 count:1];
  v25[5] = v4;
  v24[6] = @"endDate";
  v17 = @"endDate";
  v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v17 count:1];
  v25[6] = v5;
  v24[7] = @"cloudGUID";
  v16 = @"cloudGUID";
  v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v16 count:1];
  v25[7] = v6;
  v24[8] = @"privacyState";
  v15 = @"privacyState";
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v15 count:1];
  v25[8] = v7;
  v24[9] = @"lastModifiedDate";
  v14 = @"modificationDate";
  v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v14 count:1];
  v25[9] = v8;
  v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v25 forKeys:v24 count:10];
  v10 = [(PHEntityKeyMap *)v12 initWithPropertyKeysByEntityKey:v9];
  v11 = entityKeyMap_pl_once_object_16_4274;
  entityKeyMap_pl_once_object_16_4274 = v10;
}

+ (id)propertiesToFetchWithHint:(unint64_t)hint
{
  if (propertiesToFetchWithHint__onceToken_4284 != -1)
  {
    dispatch_once(&propertiesToFetchWithHint__onceToken_4284, &__block_literal_global_85);
  }

  v5 = 0;
  v6 = &v5;
  v7 = 0x3032000000;
  v8 = __Block_byref_object_copy__3951;
  v9 = __Block_byref_object_dispose__3952;
  v10 = 0;
  pl_dispatch_sync();
  v3 = v6[5];
  _Block_object_dispose(&v5, 8);

  return v3;
}

void __47__PHAssetCollection_propertiesToFetchWithHint___block_invoke_88(uint64_t a1)
{
  v2 = propertiesToFetchWithHint__propertiesToFetchByHint;
  v3 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:*(a1 + 40)];
  v4 = [v2 objectForKey:v3];
  v5 = *(*(a1 + 32) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v4;

  if (!*(*(*(a1 + 32) + 8) + 40))
  {
    v7 = [*(a1 + 48) _composePropertiesToFetchWithHint:*(a1 + 40)];
    v8 = *(*(a1 + 32) + 8);
    v9 = *(v8 + 40);
    *(v8 + 40) = v7;

    v10 = propertiesToFetchWithHint__propertiesToFetchByHint;
    v12 = [MEMORY[0x1E695DEC8] arrayWithArray:*(*(*(a1 + 32) + 8) + 40)];
    v11 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:*(a1 + 40)];
    [v10 setObject:v12 forKey:v11];
  }
}

uint64_t __47__PHAssetCollection_propertiesToFetchWithHint___block_invoke()
{
  v0 = [MEMORY[0x1E695DF90] dictionary];
  v1 = propertiesToFetchWithHint__propertiesToFetchByHint;
  propertiesToFetchWithHint__propertiesToFetchByHint = v0;

  propertiesToFetchWithHint__propertyQueue = dispatch_queue_create("com.apple.photos.assetcollectionpropertyhints", 0);

  return MEMORY[0x1EEE66BB8]();
}

+ (id)_composePropertiesToFetchWithHint:(unint64_t)hint
{
  hintCopy = hint;
  array = [MEMORY[0x1E695DF70] array];
  if (hintCopy)
  {
    identifierPropertiesToFetch = [self identifierPropertiesToFetch];
    [array addObjectsFromArray:identifierPropertiesToFetch];
  }

  if ((hintCopy & 2) != 0)
  {
    corePropertiesToFetch = [self corePropertiesToFetch];
    [array addObjectsFromArray:corePropertiesToFetch];
  }

  return array;
}

- (id)pl_assetContainer
{
  v26 = *MEMORY[0x1E69E9840];
  if (([MEMORY[0x1E696AF00] isMainThread] & 1) == 0)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PHAdoptionUtilities.m" lineNumber:70 description:@"This is only callable on the main thread"];
  }

  if ([(PHAssetCollection *)self assetCollectionType]== PHAssetCollectionTypeMoment)
  {
    v4 = objc_autoreleasePoolPush();
    photoLibrary = [(PHObject *)self photoLibrary];
    mainQueueConcurrencyPhotoLibrary = [photoLibrary mainQueueConcurrencyPhotoLibrary];
    managedObjectContext = [mainQueueConcurrencyPhotoLibrary managedObjectContext];

    objectID = [(PHObject *)self objectID];
    v23 = 0;
    pl_photoLibraryObject = [managedObjectContext existingObjectWithID:objectID error:&v23];
    v10 = v23;

    if (!pl_photoLibraryObject && v10)
    {
      v11 = PLPhotoKitGetLog();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v25 = v10;
        _os_log_impl(&dword_19C86F000, v11, OS_LOG_TYPE_DEFAULT, "Failed to fetch moment: %@", buf, 0xCu);
      }
    }

    objc_autoreleasePoolPop(v4);
  }

  else if ([(PHObject *)self isTransient])
  {
    photoLibrary2 = [(PHObject *)self photoLibrary];
    librarySpecificFetchOptions = [photoLibrary2 librarySpecificFetchOptions];

    [librarySpecificFetchOptions setIncludeHiddenAssets:1];
    v14 = [PHAsset fetchAssetsInAssetCollection:self options:librarySpecificFetchOptions];
    if ([v14 count])
    {
      pl_photoLibraryObject = [v14 pl_photoLibraryObject];
    }

    else
    {
      v19 = objc_alloc(MEMORY[0x1E69BE7E0]);
      orderedSet = [MEMORY[0x1E695DFB8] orderedSet];
      pl_photoLibraryObject = [v19 initWithTitle:&stru_1F0FC60C8 assets:orderedSet];
    }
  }

  else
  {
    v15 = MEMORY[0x1E69BE458];
    objectID2 = [(PHObject *)self objectID];
    photoLibrary3 = [(PHObject *)self photoLibrary];
    mainQueueConcurrencyPhotoLibrary2 = [photoLibrary3 mainQueueConcurrencyPhotoLibrary];
    pl_photoLibraryObject = [v15 albumWithObjectID:objectID2 inLibrary:mainQueueConcurrencyPhotoLibrary2];
  }

  return pl_photoLibraryObject;
}

+ (id)posterImageForAssetCollection:(id)collection
{
  collectionCopy = collection;
  assetCollectionType = [collectionCopy assetCollectionType];
  assetCollectionSubtype = [collectionCopy assetCollectionSubtype];
  if ((assetCollectionType & 0xFFFFFFFFFFFFFFFBLL) == 3)
  {
    posterImage = 0;
    goto LABEL_20;
  }

  if (assetCollectionType == 1)
  {
    if ((assetCollectionSubtype - 100) < 2)
    {
      if (![collectionCopy estimatedAssetCount])
      {
        v7 = PLPhotoLibraryServicesFrameworkBundle();
        pl_assetContainer = v7;
        v9 = @"PLEmptyPhotoStream";
        goto LABEL_10;
      }
    }

    else
    {
      if (assetCollectionSubtype == 4)
      {
        pl_assetContainer = [collectionCopy pl_assetContainer];
        posterImage = [pl_assetContainer posterImage];
LABEL_12:

        if (posterImage)
        {
          goto LABEL_20;
        }

        goto LABEL_13;
      }

      if (assetCollectionSubtype == 205)
      {
        v7 = PLPhotoLibraryServicesFrameworkBundle();
        pl_assetContainer = v7;
        v9 = @"PLEmptyAlbum";
LABEL_10:
        v10 = [v7 pathForResource:v9 ofType:@"png"];
        posterImage = DCIM_newPLImageWithContentsOfFile();

        goto LABEL_12;
      }
    }
  }

LABEL_13:
  if ([collectionCopy estimatedAssetCount] || (PLPhotoLibraryServicesFrameworkBundle(), v21 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v21, "pathForResource:ofType:", @"PLEmptyAlbum", @"png"), v22 = objc_claimAutoreleasedReturnValue(), DCIM_newPLImageWithContentsOfFile(), posterImage = objc_claimAutoreleasedReturnValue(), v22, v21, !posterImage))
  {
    photoLibrary = [collectionCopy photoLibrary];
    v12 = [PHFetchOptions fetchOptionsWithInclusiveDefaultsForPhotoLibrary:photoLibrary];
    v13 = [PHAsset fetchKeyAssetsInAssetCollection:collectionCopy options:v12];
    firstObject = [v13 firstObject];

    if (firstObject)
    {
      defaultFormatChooser = [MEMORY[0x1E69BF248] defaultFormatChooser];
      [defaultFormatChooser posterThumbnailSize];
      v17 = v16;
      v19 = v18;

      v20 = +[PHImageManager defaultManager];
      posterImage = [v20 synchronousImageForAsset:firstObject targetSize:0 contentMode:0 options:{v17, v19}];
    }

    else
    {
      posterImage = 0;
    }
  }

LABEL_20:

  return posterImage;
}

+ (id)pl_PHAssetCollectionForAssetContainer:(id)container photoLibrary:(id)library includeTrash:(BOOL)trash
{
  v5 = [PHFetchResult pl_fetchResultContainingAssetContainer:container photoLibrary:library includeTrash:trash];
  firstObject = [v5 firstObject];

  return firstObject;
}

+ (id)pl_albumsForAssetCollections:(id)collections
{
  v25 = *MEMORY[0x1E69E9840];
  collectionsCopy = collections;
  if (([MEMORY[0x1E696AF00] isMainThread] & 1) == 0)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PHAdoptionUtilities.m" lineNumber:100 description:{@"Invalid parameter not satisfying: %@", @"NSThread.isMainThread"}];
  }

  if ([collectionsCopy count])
  {
    firstObject = [collectionsCopy firstObject];
    photoLibrary = [firstObject photoLibrary];
    mainQueueConcurrencyPhotoLibrary = [photoLibrary mainQueueConcurrencyPhotoLibrary];

    v9 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v20 = 0u;
    v21 = 0u;
    v22 = 0u;
    v23 = 0u;
    v10 = collectionsCopy;
    v11 = [v10 countByEnumeratingWithState:&v20 objects:v24 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v21;
      do
      {
        for (i = 0; i != v12; ++i)
        {
          if (*v21 != v13)
          {
            objc_enumerationMutation(v10);
          }

          v15 = MEMORY[0x1E69BE458];
          objectID = [*(*(&v20 + 1) + 8 * i) objectID];
          v17 = [v15 albumWithObjectID:objectID inLibrary:mainQueueConcurrencyPhotoLibrary];

          if (v17)
          {
            [v9 addObject:v17];
          }
        }

        v12 = [v10 countByEnumeratingWithState:&v20 objects:v24 count:16];
      }

      while (v12);
    }
  }

  else
  {
    v9 = MEMORY[0x1E695E0F0];
  }

  return v9;
}

+ (id)fetchAssetCollectionsForReferences:(id)references photoLibrary:(id)library
{
  libraryCopy = library;
  referencesCopy = references;
  v7 = +[PHAssetCollection fetchType];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __88__PHAssetCollection_PHObjectReference__fetchAssetCollectionsForReferences_photoLibrary___block_invoke;
  v11[3] = &unk_1E75A8B48;
  v12 = libraryCopy;
  v8 = libraryCopy;
  v9 = PHCollectionReferenceFetchCollectionsForReferences(referencesCopy, v8, v7, v11);

  return v9;
}

id __88__PHAssetCollection_PHObjectReference__fetchAssetCollectionsForReferences_photoLibrary___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 librarySpecificFetchOptions];
  [v4 setIncludeDuplicatesAlbums:1];
  [v4 setIncludeUserSmartAlbums:1];
  [v4 setIncludeTrashedAssets:1];
  v5 = [PHAssetCollection fetchAssetCollectionsWithLocalIdentifiers:v3 options:v4];

  return v5;
}

@end