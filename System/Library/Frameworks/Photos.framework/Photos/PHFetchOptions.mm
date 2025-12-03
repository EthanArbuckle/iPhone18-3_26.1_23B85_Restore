@interface PHFetchOptions
+ (PHFetchOptions)fetchOptionsWithInclusiveDefaults;
+ (PHFetchOptions)fetchOptionsWithInclusiveDefaultsForPhotoLibrary:(id)library;
+ (PHFetchOptions)fetchOptionsWithPhotoLibrary:(id)library orObject:(id)object;
+ (id)effectivePhotoLibraryForFetchOptions:(id)options object:(id)object;
+ (id)fetchOptionsCopyFromNullableFetchOptions:(id)options photoLibrary:(id)library;
- (BOOL)hasAnySortDescriptors;
- (BOOL)includePlaceholderAssets;
- (NSDictionary)internalLoggingDescriptionDictionary;
- (NSString)shortDescription;
- (PHFetchOptions)init;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (unint64_t)minimumUnverifiedFaceCount;
- (unint64_t)minimumVerifiedFaceCount;
- (unint64_t)sharingStream;
- (unsigned)highlightCurationType;
- (unsigned)sharingFilter;
- (void)addFetchPropertySets:(id)sets;
- (void)mergeWithFetchOptions:(id)options;
- (void)setCacheSizeForFetch:(int64_t)fetch;
- (void)setChunkSizeForFetch:(int64_t)fetch;
- (void)setCurationType:(int64_t)type;
- (void)setExcludeDuplicateAssetVisibilityStateHidden:(BOOL)hidden;
- (void)setExcludeMontageAssets:(BOOL)assets;
- (void)setExcludeNonVisibleStackedAssets:(BOOL)assets;
- (void)setExcludeScreenshotAssets:(BOOL)assets;
- (void)setExcludeSensitiveAndUnprocessedAssets:(BOOL)assets;
- (void)setFetchLimit:(NSUInteger)fetchLimit;
- (void)setFetchOffset:(unint64_t)offset;
- (void)setFetchPropertySets:(id)sets;
- (void)setHighlightCurationType:(unsigned __int16)type;
- (void)setIncludeActionCamVideoSmartAlbum:(BOOL)album;
- (void)setIncludeAllBurstAssets:(BOOL)includeAllBurstAssets;
- (void)setIncludeAllPhotosSmartAlbum:(BOOL)album;
- (void)setIncludeAssetSourceTypes:(PHAssetSourceType)includeAssetSourceTypes;
- (void)setIncludeBothPrivateAssetsAndSharedContentContributedByCurrentUser:(BOOL)user;
- (void)setIncludeCollectionShareAssets:(BOOL)assets;
- (void)setIncludeDuplicateAssetVisibilityStateMostRelevant:(BOOL)relevant;
- (void)setIncludeDuplicateAssets:(BOOL)assets;
- (void)setIncludeDuplicatesAlbums:(BOOL)albums;
- (void)setIncludeExitingShares:(BOOL)shares;
- (void)setIncludeExpiredShares:(BOOL)shares;
- (void)setIncludeFavoriteMemoriesCollectionList:(BOOL)list;
- (void)setIncludeGuestAssets:(BOOL)assets;
- (void)setIncludeHiddenAssets:(BOOL)includeHiddenAssets;
- (void)setIncludeLocalMemories:(BOOL)memories;
- (void)setIncludeMediaAnalysisProcessingRangeTypes:(int64_t)types;
- (void)setIncludeNonvisibleFaces:(BOOL)faces;
- (void)setIncludeOnlyAssetsAllowedForAnalysis:(BOOL)analysis;
- (void)setIncludeOnlyContentContributedByCurrentUser:(BOOL)user;
- (void)setIncludeOnlyFacesInFaceGroups:(BOOL)groups;
- (void)setIncludeOnlyFacesNeedingFaceCrop:(BOOL)crop;
- (void)setIncludeOnlyFacesWithFaceprints:(BOOL)faceprints;
- (void)setIncludeOnlyPersonsWithVisibleKeyFaces:(BOOL)faces;
- (void)setIncludeOnlyTorsoDetectionData:(BOOL)data;
- (void)setIncludePendingMemories:(BOOL)memories;
- (void)setIncludePendingShares:(BOOL)shares;
- (void)setIncludePlaceholderAssets:(BOOL)assets;
- (void)setIncludePlacesSmartAlbum:(BOOL)album;
- (void)setIncludeProResSmartAlbum:(BOOL)album;
- (void)setIncludeRecentlyEditedSmartAlbum:(BOOL)album;
- (void)setIncludeRejectedMemories:(BOOL)memories;
- (void)setIncludeRootFolder:(BOOL)folder;
- (void)setIncludeScreenRecordingsSmartAlbum:(BOOL)album;
- (void)setIncludeSharedLibrarySharingSuggestionsSmartAlbum:(BOOL)album;
- (void)setIncludeSourceMemories:(BOOL)memories;
- (void)setIncludeStoryMemories:(BOOL)memories;
- (void)setIncludeTorsoAndFaceDetectionData:(BOOL)data;
- (void)setIncludeTorsoOnlyPerson:(BOOL)person;
- (void)setIncludeTrashBinAlbum:(BOOL)album;
- (void)setIncludeTrashedAssets:(BOOL)assets;
- (void)setIncludeTrashedShares:(BOOL)shares;
- (void)setIncludeUserSmartAlbums:(BOOL)albums;
- (void)setIsExclusivePredicate:(BOOL)predicate;
- (void)setMinimumUnverifiedFaceCount:(unint64_t)count;
- (void)setMinimumVerifiedFaceCount:(unint64_t)count;
- (void)setPersonContext:(int64_t)context;
- (void)setReverseDefaultSortDescriptors:(BOOL)descriptors;
- (void)setReverseSortOrder:(BOOL)order;
- (void)setSharingFilter:(unsigned __int16)filter;
- (void)setSharingStream:(unint64_t)stream;
- (void)setShouldPrefetchCount:(BOOL)count;
- (void)setSocialGroupContext:(int64_t)context;
- (void)setSuppressSlowFetchReports:(BOOL)reports;
- (void)setUseNoIndexOnSharingFilter:(BOOL)filter;
- (void)setWantsIncrementalChangeDetails:(BOOL)wantsIncrementalChangeDetails;
@end

@implementation PHFetchOptions

- (PHFetchOptions)init
{
  v10.receiver = self;
  v10.super_class = PHFetchOptions;
  v2 = [(PHFetchOptions *)&v10 init];
  if (v2)
  {
    v3 = [MEMORY[0x1E695DFA8] set];
    propertySets = v2->_propertySets;
    v2->_propertySets = v3;

    v5 = +[PHFetchOptions defaultDetectionTypes];
    includedDetectionTypes = v2->_includedDetectionTypes;
    v2->_includedDetectionTypes = v5;

    v7 = [MEMORY[0x1E696AD98] numberWithInteger:{+[PHFetchOptions defaultMediaAnalysisProcessingRangeTypes](PHFetchOptions, "defaultMediaAnalysisProcessingRangeTypes")}];
    includeMediaAnalysisProcessingRangeTypesNumber = v2->_includeMediaAnalysisProcessingRangeTypesNumber;
    v2->_includeMediaAnalysisProcessingRangeTypesNumber = v7;
  }

  return v2;
}

- (BOOL)hasAnySortDescriptors
{
  sortDescriptors = [(PHFetchOptions *)self sortDescriptors];
  if ([sortDescriptors count])
  {
    v4 = 1;
  }

  else
  {
    internalSortDescriptors = [(PHFetchOptions *)self internalSortDescriptors];
    v4 = [internalSortDescriptors count] != 0;
  }

  return v4;
}

- (unsigned)sharingFilter
{
  sharingFilterNumber = self->_sharingFilterNumber;
  if (sharingFilterNumber)
  {
    return [(NSNumber *)sharingFilterNumber unsignedShortValue];
  }

  else
  {
    return 2;
  }
}

- (unint64_t)minimumVerifiedFaceCount
{
  minimumVerifiedFaceCountNumber = self->_minimumVerifiedFaceCountNumber;
  if (minimumVerifiedFaceCountNumber)
  {
    return [(NSNumber *)minimumVerifiedFaceCountNumber unsignedIntegerValue];
  }

  else
  {
    return 1;
  }
}

- (unint64_t)minimumUnverifiedFaceCount
{
  minimumUnverifiedFaceCountNumber = self->_minimumUnverifiedFaceCountNumber;
  if (minimumUnverifiedFaceCountNumber)
  {
    return [(NSNumber *)minimumUnverifiedFaceCountNumber unsignedIntegerValue];
  }

  else
  {
    return 2;
  }
}

- (unsigned)highlightCurationType
{
  highlightCurationTypeNumber = self->_highlightCurationTypeNumber;
  if (highlightCurationTypeNumber)
  {
    LOWORD(highlightCurationTypeNumber) = [(NSNumber *)highlightCurationTypeNumber integerValue];
  }

  return highlightCurationTypeNumber;
}

- (NSDictionary)internalLoggingDescriptionDictionary
{
  v4 = objc_alloc_init(MEMORY[0x1E695DF90]);
  if (PFOSVariantHasInternalDiagnostics())
  {
    outCount = 0;
    v5 = objc_opt_class();
    v6 = class_copyPropertyList(v5, &outCount);
    if (v6)
    {
      v7 = v6;
      v8 = NSStringFromSelector(a2);
      uTF8String = [v8 UTF8String];

      if (outCount)
      {
        for (i = 0; i < outCount; ++i)
        {
          v11 = objc_autoreleasePoolPush();
          Name = property_getName(v7[i]);
          if (Name)
          {
            v13 = Name;
            if (strcmp(Name, "shortDescription"))
            {
              if (strcmp(v13, uTF8String))
              {
                v14 = [MEMORY[0x1E696AEC0] stringWithCString:v13 encoding:{objc_msgSend(MEMORY[0x1E696AEC0], "defaultCStringEncoding")}];
                v15 = [(PHFetchOptions *)self valueForKey:v14];
                v16 = v15;
                if (v15)
                {
                  v17 = [v15 debugDescription];
                  [v4 setObject:v17 forKeyedSubscript:v14];
                }

                else
                {
                  [v4 setObject:@"(null)" forKeyedSubscript:v14];
                }
              }
            }
          }

          objc_autoreleasePoolPop(v11);
        }
      }

      free(v7);
    }
  }

  return v4;
}

- (NSString)shortDescription
{
  v17.receiver = self;
  v17.super_class = PHFetchOptions;
  v3 = [(PHFetchOptions *)&v17 description];
  predicate = [(PHFetchOptions *)self predicate];
  v15 = objc_opt_class();
  internalPredicate = [(PHFetchOptions *)self internalPredicate];
  v14 = objc_opt_class();
  fetchLimit = [(PHFetchOptions *)self fetchLimit];
  sortDescriptors = [(PHFetchOptions *)self sortDescriptors];
  internalSortDescriptors = [(PHFetchOptions *)self internalSortDescriptors];
  customObjectIDSortOrder = [(PHFetchOptions *)self customObjectIDSortOrder];
  v9 = [customObjectIDSortOrder count];
  if ([(PHFetchOptions *)self reverseSortOrder])
  {
    v10 = @"D";
  }

  else
  {
    v10 = @"A";
  }

  transientIdentifier = [(PHFetchOptions *)self transientIdentifier];
  v12 = [v3 stringByAppendingFormat:@" predicate=%@/%@[%ld], sort=%@/%@/%ld/%@, changes[%@]=%d", v15, v14, fetchLimit, sortDescriptors, internalSortDescriptors, v9, v10, transientIdentifier, -[PHFetchOptions wantsIncrementalChangeDetails](self, "wantsIncrementalChangeDetails")];

  return v12;
}

- (id)description
{
  v8.receiver = self;
  v8.super_class = PHFetchOptions;
  v3 = [(PHFetchOptions *)&v8 description];
  predicate = [(PHFetchOptions *)self predicate];
  sortDescriptors = [(PHFetchOptions *)self sortDescriptors];
  v6 = [v3 stringByAppendingFormat:@" predicate=%@, sort=%@, wantsChangeDetails=%d", predicate, sortDescriptors, -[PHFetchOptions wantsIncrementalChangeDetails](self, "wantsIncrementalChangeDetails")];

  return v6;
}

- (void)setReverseDefaultSortDescriptors:(BOOL)descriptors
{
  self->_reverseDefaultSortDescriptorsNumber = [MEMORY[0x1E696AD98] numberWithBool:descriptors];

  MEMORY[0x1EEE66BB8]();
}

- (void)setSuppressSlowFetchReports:(BOOL)reports
{
  self->_suppressSlowFetchReportsNumber = [MEMORY[0x1E696AD98] numberWithBool:reports];

  MEMORY[0x1EEE66BB8]();
}

- (void)setUseNoIndexOnSharingFilter:(BOOL)filter
{
  self->_useNoIndexOnSharingFilter = [MEMORY[0x1E696AD98] numberWithBool:filter];

  MEMORY[0x1EEE66BB8]();
}

- (void)setSharingFilter:(unsigned __int16)filter
{
  self->_sharingFilterNumber = [MEMORY[0x1E696AD98] numberWithUnsignedShort:filter];

  MEMORY[0x1EEE66BB8]();
}

- (void)setIncludeBothPrivateAssetsAndSharedContentContributedByCurrentUser:(BOOL)user
{
  self->_includeBothPrivateAssetsAndSharedContentContributedByCurrentUserNumber = [MEMORY[0x1E696AD98] numberWithBool:user];

  MEMORY[0x1EEE66BB8]();
}

- (void)setIncludeOnlyContentContributedByCurrentUser:(BOOL)user
{
  self->_includeOnlyContentContributedByCurrentUserNumber = [MEMORY[0x1E696AD98] numberWithBool:user];

  MEMORY[0x1EEE66BB8]();
}

- (void)setIncludeOnlyAssetsAllowedForAnalysis:(BOOL)analysis
{
  self->_includeOnlyAssetsAllowedForAnalysisNumber = [MEMORY[0x1E696AD98] numberWithBool:analysis];

  MEMORY[0x1EEE66BB8]();
}

- (void)setIncludeUserSmartAlbums:(BOOL)albums
{
  self->_includeUserSmartAlbumsNumber = [MEMORY[0x1E696AD98] numberWithBool:albums];

  MEMORY[0x1EEE66BB8]();
}

- (void)setSharingStream:(unint64_t)stream
{
  self->_sharingStreamNumber = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:stream];

  MEMORY[0x1EEE66BB8]();
}

- (unint64_t)sharingStream
{
  sharingStreamNumber = self->_sharingStreamNumber;
  if (sharingStreamNumber)
  {
    return [(NSNumber *)sharingStreamNumber unsignedIntegerValue];
  }

  else
  {
    return 1;
  }
}

- (void)setHighlightCurationType:(unsigned __int16)type
{
  self->_highlightCurationTypeNumber = [MEMORY[0x1E696AD98] numberWithUnsignedShort:type];

  MEMORY[0x1EEE66BB8]();
}

- (void)setIsExclusivePredicate:(BOOL)predicate
{
  self->_isExclusivePredicateNumber = [MEMORY[0x1E696AD98] numberWithBool:predicate];

  MEMORY[0x1EEE66BB8]();
}

- (void)setShouldPrefetchCount:(BOOL)count
{
  self->_shouldPrefetchCountNumber = [MEMORY[0x1E696AD98] numberWithBool:count];

  MEMORY[0x1EEE66BB8]();
}

- (void)setIncludeMediaAnalysisProcessingRangeTypes:(int64_t)types
{
  self->_includeMediaAnalysisProcessingRangeTypesNumber = [MEMORY[0x1E696AD98] numberWithInteger:types];

  MEMORY[0x1EEE66BB8]();
}

- (void)setIncludeOnlyFacesInFaceGroups:(BOOL)groups
{
  self->_includeOnlyFacesInFaceGroupsNumber = [MEMORY[0x1E696AD98] numberWithBool:groups];

  MEMORY[0x1EEE66BB8]();
}

- (void)setIncludeOnlyFacesWithFaceprints:(BOOL)faceprints
{
  self->_includeOnlyFacesWithFaceprintsNumber = [MEMORY[0x1E696AD98] numberWithBool:faceprints];

  MEMORY[0x1EEE66BB8]();
}

- (void)setIncludeOnlyFacesNeedingFaceCrop:(BOOL)crop
{
  self->_includeOnlyFacesNeedingFaceCropNumber = [MEMORY[0x1E696AD98] numberWithBool:crop];

  MEMORY[0x1EEE66BB8]();
}

- (void)setIncludeTorsoOnlyPerson:(BOOL)person
{
  self->_includeTorsoOnlyPersonNumber = [MEMORY[0x1E696AD98] numberWithBool:person];

  MEMORY[0x1EEE66BB8]();
}

- (void)setExcludeSensitiveAndUnprocessedAssets:(BOOL)assets
{
  self->_excludeSensitiveAndUnprocessedAssets = [MEMORY[0x1E696AD98] numberWithBool:assets];

  MEMORY[0x1EEE66BB8]();
}

- (void)setIncludeDuplicatesAlbums:(BOOL)albums
{
  self->_includeDuplicatesAlbumsNumber = [MEMORY[0x1E696AD98] numberWithBool:albums];

  MEMORY[0x1EEE66BB8]();
}

- (void)setIncludeOnlyTorsoDetectionData:(BOOL)data
{
  self->_includeOnlyTorsoDetectionDataNumber = [MEMORY[0x1E696AD98] numberWithBool:data];

  MEMORY[0x1EEE66BB8]();
}

- (void)setIncludeTorsoAndFaceDetectionData:(BOOL)data
{
  self->_includeTorsoAndFaceDetectionDataNumber = [MEMORY[0x1E696AD98] numberWithBool:data];

  MEMORY[0x1EEE66BB8]();
}

- (void)setIncludeOnlyPersonsWithVisibleKeyFaces:(BOOL)faces
{
  self->_includeOnlyPersonsWithVisibleKeyFacesNumber = [MEMORY[0x1E696AD98] numberWithBool:faces];

  MEMORY[0x1EEE66BB8]();
}

- (void)setIncludeNonvisibleFaces:(BOOL)faces
{
  self->_includeNonvisibleFacesNumber = [MEMORY[0x1E696AD98] numberWithBool:faces];

  MEMORY[0x1EEE66BB8]();
}

- (void)setMinimumUnverifiedFaceCount:(unint64_t)count
{
  self->_minimumUnverifiedFaceCountNumber = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:count];

  MEMORY[0x1EEE66BB8]();
}

- (void)setMinimumVerifiedFaceCount:(unint64_t)count
{
  self->_minimumVerifiedFaceCountNumber = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:count];

  MEMORY[0x1EEE66BB8]();
}

- (void)setExcludeScreenshotAssets:(BOOL)assets
{
  self->_excludeScreenshotAssetsNumber = [MEMORY[0x1E696AD98] numberWithBool:assets];

  MEMORY[0x1EEE66BB8]();
}

- (void)setExcludeMontageAssets:(BOOL)assets
{
  self->_excludeMontageAssetsNumber = [MEMORY[0x1E696AD98] numberWithBool:assets];

  MEMORY[0x1EEE66BB8]();
}

- (void)setIncludeRootFolder:(BOOL)folder
{
  self->_includeRootFolderNumber = [MEMORY[0x1E696AD98] numberWithBool:folder];

  MEMORY[0x1EEE66BB8]();
}

- (void)setIncludeTrashBinAlbum:(BOOL)album
{
  self->_includeTrashBinAlbumNumber = [MEMORY[0x1E696AD98] numberWithBool:album];

  MEMORY[0x1EEE66BB8]();
}

- (void)setIncludeProResSmartAlbum:(BOOL)album
{
  self->_includeProResSmartAlbumNumber = [MEMORY[0x1E696AD98] numberWithBool:album];

  MEMORY[0x1EEE66BB8]();
}

- (void)setIncludeActionCamVideoSmartAlbum:(BOOL)album
{
  self->_includeActionCamVideoSmartAlbumNumber = [MEMORY[0x1E696AD98] numberWithBool:album];

  MEMORY[0x1EEE66BB8]();
}

- (void)setIncludeSharedLibrarySharingSuggestionsSmartAlbum:(BOOL)album
{
  self->_includeSharedLibrarySharingSuggestionsSmartAlbumNumber = [MEMORY[0x1E696AD98] numberWithBool:album];

  MEMORY[0x1EEE66BB8]();
}

- (void)setIncludeScreenRecordingsSmartAlbum:(BOOL)album
{
  self->_includeScreenRecordingsSmartAlbumNumber = [MEMORY[0x1E696AD98] numberWithBool:album];

  MEMORY[0x1EEE66BB8]();
}

- (void)setIncludeRecentlyEditedSmartAlbum:(BOOL)album
{
  self->_includeRecentlyEditedSmartAlbumNumber = [MEMORY[0x1E696AD98] numberWithBool:album];

  MEMORY[0x1EEE66BB8]();
}

- (void)setIncludeAllPhotosSmartAlbum:(BOOL)album
{
  self->_includeAllPhotosSmartAlbumNumber = [MEMORY[0x1E696AD98] numberWithBool:album];

  MEMORY[0x1EEE66BB8]();
}

- (void)setIncludePlacesSmartAlbum:(BOOL)album
{
  self->_includePlacesSmartAlbumNumber = [MEMORY[0x1E696AD98] numberWithBool:album];

  MEMORY[0x1EEE66BB8]();
}

- (void)setIncludeFavoriteMemoriesCollectionList:(BOOL)list
{
  self->_includeFavoriteMemoriesCollectionListNumber = [MEMORY[0x1E696AD98] numberWithBool:list];

  MEMORY[0x1EEE66BB8]();
}

- (void)setIncludePendingShares:(BOOL)shares
{
  self->_includePendingSharesNumber = [MEMORY[0x1E696AD98] numberWithBool:shares];

  MEMORY[0x1EEE66BB8]();
}

- (void)setIncludeExitingShares:(BOOL)shares
{
  self->_includeExitingSharesNumber = [MEMORY[0x1E696AD98] numberWithBool:shares];

  MEMORY[0x1EEE66BB8]();
}

- (void)setIncludeExpiredShares:(BOOL)shares
{
  self->_includeExpiredSharesNumber = [MEMORY[0x1E696AD98] numberWithBool:shares];

  MEMORY[0x1EEE66BB8]();
}

- (void)setIncludeTrashedShares:(BOOL)shares
{
  self->_includeTrashedSharesNumber = [MEMORY[0x1E696AD98] numberWithBool:shares];

  MEMORY[0x1EEE66BB8]();
}

- (void)setIncludeTrashedAssets:(BOOL)assets
{
  self->_includeTrashedAssetsNumber = [MEMORY[0x1E696AD98] numberWithBool:assets];

  MEMORY[0x1EEE66BB8]();
}

- (void)setSocialGroupContext:(int64_t)context
{
  self->_socialGroupContextNumber = [MEMORY[0x1E696AD98] numberWithInteger:context];

  MEMORY[0x1EEE66BB8]();
}

- (void)setPersonContext:(int64_t)context
{
  self->_personContextNumber = [MEMORY[0x1E696AD98] numberWithInteger:context];

  MEMORY[0x1EEE66BB8]();
}

- (void)setCurationType:(int64_t)type
{
  self->_curationTypeNumber = [MEMORY[0x1E696AD98] numberWithInteger:type];

  MEMORY[0x1EEE66BB8]();
}

- (void)setIncludeSourceMemories:(BOOL)memories
{
  self->_includeSourceMemoriesNumber = [MEMORY[0x1E696AD98] numberWithBool:memories];

  MEMORY[0x1EEE66BB8]();
}

- (void)setIncludeStoryMemories:(BOOL)memories
{
  self->_includeStoryMemoriesNumber = [MEMORY[0x1E696AD98] numberWithBool:memories];

  MEMORY[0x1EEE66BB8]();
}

- (void)setIncludeLocalMemories:(BOOL)memories
{
  self->_includeLocalMemoriesNumber = [MEMORY[0x1E696AD98] numberWithBool:memories];

  MEMORY[0x1EEE66BB8]();
}

- (void)setIncludeRejectedMemories:(BOOL)memories
{
  self->_includeRejectedMemoriesNumber = [MEMORY[0x1E696AD98] numberWithBool:memories];

  MEMORY[0x1EEE66BB8]();
}

- (void)setIncludePendingMemories:(BOOL)memories
{
  self->_includePendingMemoriesNumber = [MEMORY[0x1E696AD98] numberWithBool:memories];

  MEMORY[0x1EEE66BB8]();
}

- (void)setIncludePlaceholderAssets:(BOOL)assets
{
  self->_includePlaceholderAssetsNumber = [MEMORY[0x1E696AD98] numberWithBool:assets];

  MEMORY[0x1EEE66BB8]();
}

- (BOOL)includePlaceholderAssets
{
  result = MEMORY[0x19EAF1E00](self, a2);
  if (self->_includePlaceholderAssetsNumber)
  {
    includePlaceholderAssetsNumber = self->_includePlaceholderAssetsNumber;

    return [(NSNumber *)includePlaceholderAssetsNumber BOOLValue];
  }

  return result;
}

- (void)setIncludeCollectionShareAssets:(BOOL)assets
{
  self->_includeCollectionShareAssetsNumber = [MEMORY[0x1E696AD98] numberWithBool:assets];

  MEMORY[0x1EEE66BB8]();
}

- (void)setIncludeGuestAssets:(BOOL)assets
{
  self->_includeGuestAssetsNumber = [MEMORY[0x1E696AD98] numberWithBool:assets];

  MEMORY[0x1EEE66BB8]();
}

- (void)setExcludeNonVisibleStackedAssets:(BOOL)assets
{
  self->_excludeNonVisibleStackedAssetsNumber = [MEMORY[0x1E696AD98] numberWithBool:assets];

  MEMORY[0x1EEE66BB8]();
}

- (void)setIncludeDuplicateAssetVisibilityStateMostRelevant:(BOOL)relevant
{
  self->_includeDuplicateAssetVisibilityStateMostRelevantNumber = [MEMORY[0x1E696AD98] numberWithBool:relevant];

  MEMORY[0x1EEE66BB8]();
}

- (void)setExcludeDuplicateAssetVisibilityStateHidden:(BOOL)hidden
{
  self->_excludeDuplicateAssetVisibilityStateHiddenNumber = [MEMORY[0x1E696AD98] numberWithBool:hidden];

  MEMORY[0x1EEE66BB8]();
}

- (void)setIncludeDuplicateAssets:(BOOL)assets
{
  self->_includeDuplicateAssetsNumber = [MEMORY[0x1E696AD98] numberWithBool:assets];

  MEMORY[0x1EEE66BB8]();
}

- (void)setReverseSortOrder:(BOOL)order
{
  self->_reverseSortOrderNumber = [MEMORY[0x1E696AD98] numberWithBool:order];

  MEMORY[0x1EEE66BB8]();
}

- (void)setCacheSizeForFetch:(int64_t)fetch
{
  self->_cacheSizeForFetchNumber = [MEMORY[0x1E696AD98] numberWithInteger:fetch];

  MEMORY[0x1EEE66BB8]();
}

- (void)setChunkSizeForFetch:(int64_t)fetch
{
  self->_chunkSizeForFetchNumber = [MEMORY[0x1E696AD98] numberWithInteger:fetch];

  MEMORY[0x1EEE66BB8]();
}

- (void)setWantsIncrementalChangeDetails:(BOOL)wantsIncrementalChangeDetails
{
  self->_wantsIncrementalChangeDetailsNumber = [MEMORY[0x1E696AD98] numberWithBool:wantsIncrementalChangeDetails];

  MEMORY[0x1EEE66BB8]();
}

- (void)setFetchOffset:(unint64_t)offset
{
  self->_fetchOffsetNumber = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:offset];

  MEMORY[0x1EEE66BB8]();
}

- (void)setFetchLimit:(NSUInteger)fetchLimit
{
  self->_fetchLimitNumber = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:fetchLimit];

  MEMORY[0x1EEE66BB8]();
}

- (void)setIncludeAssetSourceTypes:(PHAssetSourceType)includeAssetSourceTypes
{
  self->_includeAssetSourceTypesNumber = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:includeAssetSourceTypes];

  MEMORY[0x1EEE66BB8]();
}

- (void)setIncludeAllBurstAssets:(BOOL)includeAllBurstAssets
{
  self->_includeAllBurstAssetsNumber = [MEMORY[0x1E696AD98] numberWithBool:includeAllBurstAssets];

  MEMORY[0x1EEE66BB8]();
}

- (void)setIncludeHiddenAssets:(BOOL)includeHiddenAssets
{
  self->_includeHiddenAssetsNumber = [MEMORY[0x1E696AD98] numberWithBool:includeHiddenAssets];

  MEMORY[0x1EEE66BB8]();
}

- (void)addFetchPropertySets:(id)sets
{
  if (sets)
  {
    [(NSMutableSet *)self->_propertySets addObjectsFromArray:?];
  }
}

- (void)setFetchPropertySets:(id)sets
{
  propertySets = self->_propertySets;
  setsCopy = sets;
  [(NSMutableSet *)propertySets removeAllObjects];
  [(NSMutableSet *)self->_propertySets addObjectsFromArray:setsCopy];
}

- (void)mergeWithFetchOptions:(id)options
{
  optionsCopy = options;
  v4 = PHPredicateByCombiningPredicatesWithAnd;
  predicate = [(PHFetchOptions *)self predicate];
  predicate2 = [optionsCopy predicate];
  v7 = v4[2](v4, predicate, predicate2);

  v8 = PHPredicateByCombiningPredicatesWithAnd;
  internalPredicate = [(PHFetchOptions *)self internalPredicate];
  internalPredicate2 = [optionsCopy internalPredicate];
  v11 = v8[2](v8, internalPredicate, internalPredicate2);

  [(PHFetchOptions *)self setPredicate:v7];
  [(PHFetchOptions *)self setInternalPredicate:v11];
  v12 = PHPredicateByCombiningPredicatesWithOr;
  internalInclusionPredicate = [(PHFetchOptions *)self internalInclusionPredicate];
  internalInclusionPredicate2 = [optionsCopy internalInclusionPredicate];
  v15 = v12[2](v12, internalInclusionPredicate, internalInclusionPredicate2);

  [(PHFetchOptions *)self setInternalInclusionPredicate:v15];
  fetchPropertySets = [optionsCopy fetchPropertySets];
  v17 = [fetchPropertySets count];

  if (v17)
  {
    fetchPropertySets2 = [optionsCopy fetchPropertySets];
    [(PHFetchOptions *)self addFetchPropertySets:fetchPropertySets2];
  }

  sortDescriptors = [optionsCopy sortDescriptors];

  if (sortDescriptors)
  {
    sortDescriptors2 = [optionsCopy sortDescriptors];
    [(PHFetchOptions *)self setSortDescriptors:sortDescriptors2];
  }

  internalSortDescriptors = [optionsCopy internalSortDescriptors];

  if (internalSortDescriptors)
  {
    internalSortDescriptors2 = [optionsCopy internalSortDescriptors];
    [(PHFetchOptions *)self setInternalSortDescriptors:internalSortDescriptors2];
  }

  transientIdentifier = [optionsCopy transientIdentifier];

  if (transientIdentifier)
  {
    transientIdentifier2 = [optionsCopy transientIdentifier];
    [(PHFetchOptions *)self setTransientIdentifier:transientIdentifier2];
  }

  customObjectIDSortOrder = [optionsCopy customObjectIDSortOrder];

  if (customObjectIDSortOrder)
  {
    customObjectIDSortOrder2 = [optionsCopy customObjectIDSortOrder];
    [(PHFetchOptions *)self setCustomObjectIDSortOrder:customObjectIDSortOrder2];
  }

  v27 = optionsCopy;
  if (optionsCopy[42])
  {
    -[PHFetchOptions setMinimumVerifiedFaceCount:](self, "setMinimumVerifiedFaceCount:", [optionsCopy minimumVerifiedFaceCount]);
    v27 = optionsCopy;
  }

  if (v27[43])
  {
    -[PHFetchOptions setMinimumUnverifiedFaceCount:](self, "setMinimumUnverifiedFaceCount:", [optionsCopy minimumUnverifiedFaceCount]);
    v27 = optionsCopy;
  }

  if ([v27 includeOnlyFacesNeedingFaceCrop])
  {
    [(PHFetchOptions *)self setIncludeOnlyFacesNeedingFaceCrop:1];
  }

  photoLibrary = [optionsCopy photoLibrary];

  if (photoLibrary)
  {
    photoLibrary2 = [optionsCopy photoLibrary];
    [(PHFetchOptions *)self setPhotoLibrary:photoLibrary2];
  }

  verifiedPersonTypes = [optionsCopy verifiedPersonTypes];

  if (verifiedPersonTypes)
  {
    verifiedPersonTypes2 = [optionsCopy verifiedPersonTypes];
    [(PHFetchOptions *)self setVerifiedPersonTypes:verifiedPersonTypes2];
  }

  changeDetectionCriteria = [optionsCopy changeDetectionCriteria];

  if (changeDetectionCriteria)
  {
    changeDetectionCriteria2 = [(PHFetchOptions *)self changeDetectionCriteria];
    changeDetectionCriteria3 = [optionsCopy changeDetectionCriteria];
    if (changeDetectionCriteria2)
    {
      v35 = [changeDetectionCriteria2 changeDetectionCriteriaByAddingChangeDetectionCriteria:changeDetectionCriteria3];
      [(PHFetchOptions *)self setChangeDetectionCriteria:v35];
    }

    else
    {
      [(PHFetchOptions *)self setChangeDetectionCriteria:changeDetectionCriteria3];
    }
  }

  v36 = optionsCopy;
  if (optionsCopy[6])
  {
    -[PHFetchOptions setCurationType:](self, "setCurationType:", [optionsCopy curationType]);
    v36 = optionsCopy;
  }

  if (v36[7])
  {
    -[PHFetchOptions setWantsIncrementalChangeDetails:](self, "setWantsIncrementalChangeDetails:", [optionsCopy wantsIncrementalChangeDetails]);
    v36 = optionsCopy;
  }

  if (v36[2])
  {
    -[PHFetchOptions setIncludeAllBurstAssets:](self, "setIncludeAllBurstAssets:", [optionsCopy includeAllBurstAssets]);
    v36 = optionsCopy;
  }

  if (v36[1])
  {
    -[PHFetchOptions setIncludeHiddenAssets:](self, "setIncludeHiddenAssets:", [optionsCopy includeHiddenAssets]);
    v36 = optionsCopy;
  }

  if (v36[8])
  {
    -[PHFetchOptions setChunkSizeForFetch:](self, "setChunkSizeForFetch:", [optionsCopy chunkSizeForFetch]);
    v36 = optionsCopy;
  }

  if (v36[9])
  {
    -[PHFetchOptions setCacheSizeForFetch:](self, "setCacheSizeForFetch:", [optionsCopy cacheSizeForFetch]);
    v36 = optionsCopy;
  }

  if (v36[4])
  {
    -[PHFetchOptions setFetchLimit:](self, "setFetchLimit:", [optionsCopy fetchLimit]);
    v36 = optionsCopy;
  }

  if (v36[5])
  {
    -[PHFetchOptions setFetchOffset:](self, "setFetchOffset:", [optionsCopy fetchOffset]);
    v36 = optionsCopy;
  }

  if (v36[3])
  {
    -[PHFetchOptions setIncludeAssetSourceTypes:](self, "setIncludeAssetSourceTypes:", [optionsCopy includeAssetSourceTypes]);
    v36 = optionsCopy;
  }

  if (v36[11])
  {
    -[PHFetchOptions setIncludeDuplicateAssets:](self, "setIncludeDuplicateAssets:", [optionsCopy includeDuplicateAssets]);
    v36 = optionsCopy;
  }

  if (v36[12])
  {
    -[PHFetchOptions setExcludeDuplicateAssetVisibilityStateHidden:](self, "setExcludeDuplicateAssetVisibilityStateHidden:", [optionsCopy excludeDuplicateAssetVisibilityStateHidden]);
    v36 = optionsCopy;
  }

  if (v36[13])
  {
    -[PHFetchOptions setIncludeDuplicateAssetVisibilityStateMostRelevant:](self, "setIncludeDuplicateAssetVisibilityStateMostRelevant:", [optionsCopy includeDuplicateAssetVisibilityStateMostRelevant]);
    v36 = optionsCopy;
  }

  if (v36[14])
  {
    -[PHFetchOptions setExcludeNonVisibleStackedAssets:](self, "setExcludeNonVisibleStackedAssets:", [optionsCopy excludeNonVisibleStackedAssets]);
    v36 = optionsCopy;
  }

  if (v36[15])
  {
    -[PHFetchOptions setIncludeGuestAssets:](self, "setIncludeGuestAssets:", [optionsCopy includeGuestAssets]);
    v36 = optionsCopy;
  }

  if (v36[16])
  {
    -[PHFetchOptions setIncludePlaceholderAssets:](self, "setIncludePlaceholderAssets:", [optionsCopy includePlaceholderAssets]);
    v36 = optionsCopy;
  }

  if (v36[17])
  {
    -[PHFetchOptions setIncludeCollectionShareAssets:](self, "setIncludeCollectionShareAssets:", [optionsCopy includeCollectionShareAssets]);
    v36 = optionsCopy;
  }

  if (v36[18])
  {
    -[PHFetchOptions setIncludePendingMemories:](self, "setIncludePendingMemories:", [optionsCopy includePendingMemories]);
    v36 = optionsCopy;
  }

  if (v36[19])
  {
    -[PHFetchOptions setIncludeRejectedMemories:](self, "setIncludeRejectedMemories:", [optionsCopy includeRejectedMemories]);
    v36 = optionsCopy;
  }

  if (v36[20])
  {
    -[PHFetchOptions setIncludeLocalMemories:](self, "setIncludeLocalMemories:", [optionsCopy includeLocalMemories]);
    v36 = optionsCopy;
  }

  if (v36[21])
  {
    -[PHFetchOptions setIncludeStoryMemories:](self, "setIncludeStoryMemories:", [optionsCopy includeStoryMemories]);
    v36 = optionsCopy;
  }

  if (v36[22])
  {
    -[PHFetchOptions setIncludeSourceMemories:](self, "setIncludeSourceMemories:", [optionsCopy includeSourceMemories]);
    v36 = optionsCopy;
  }

  if (v36[23])
  {
    -[PHFetchOptions setPersonContext:](self, "setPersonContext:", [optionsCopy personContext]);
    v36 = optionsCopy;
  }

  if (v36[24])
  {
    -[PHFetchOptions setSocialGroupContext:](self, "setSocialGroupContext:", [optionsCopy socialGroupContext]);
    v36 = optionsCopy;
  }

  if (v36[10])
  {
    -[PHFetchOptions setReverseSortOrder:](self, "setReverseSortOrder:", [optionsCopy reverseSortOrder]);
    v36 = optionsCopy;
  }

  if (v36[25])
  {
    -[PHFetchOptions setIncludeTrashedAssets:](self, "setIncludeTrashedAssets:", [optionsCopy includeTrashedAssets]);
    v36 = optionsCopy;
  }

  if (v36[26])
  {
    -[PHFetchOptions setIncludeTrashedShares:](self, "setIncludeTrashedShares:", [optionsCopy includeTrashedShares]);
    v36 = optionsCopy;
  }

  if (v36[27])
  {
    -[PHFetchOptions setIncludeExpiredShares:](self, "setIncludeExpiredShares:", [optionsCopy includeExpiredShares]);
    v36 = optionsCopy;
  }

  if (v36[28])
  {
    -[PHFetchOptions setIncludeExitingShares:](self, "setIncludeExitingShares:", [optionsCopy includeExitingShares]);
    v36 = optionsCopy;
  }

  if (v36[29])
  {
    -[PHFetchOptions setIncludePendingShares:](self, "setIncludePendingShares:", [optionsCopy includePendingShares]);
    v36 = optionsCopy;
  }

  if (v36[30])
  {
    -[PHFetchOptions setIncludeFavoriteMemoriesCollectionList:](self, "setIncludeFavoriteMemoriesCollectionList:", [optionsCopy includeFavoriteMemoriesCollectionList]);
    v36 = optionsCopy;
  }

  if (v36[31])
  {
    -[PHFetchOptions setIncludePlacesSmartAlbum:](self, "setIncludePlacesSmartAlbum:", [optionsCopy includePlacesSmartAlbum]);
    v36 = optionsCopy;
  }

  if (v36[32])
  {
    -[PHFetchOptions setIncludeAllPhotosSmartAlbum:](self, "setIncludeAllPhotosSmartAlbum:", [optionsCopy includeAllPhotosSmartAlbum]);
    v36 = optionsCopy;
  }

  if (v36[33])
  {
    -[PHFetchOptions setIncludeRecentlyEditedSmartAlbum:](self, "setIncludeRecentlyEditedSmartAlbum:", [optionsCopy includeRecentlyEditedSmartAlbum]);
    v36 = optionsCopy;
  }

  if (v36[34])
  {
    -[PHFetchOptions setIncludeScreenRecordingsSmartAlbum:](self, "setIncludeScreenRecordingsSmartAlbum:", [optionsCopy includeScreenRecordingsSmartAlbum]);
    v36 = optionsCopy;
  }

  if (v36[35])
  {
    -[PHFetchOptions setIncludeSharedLibrarySharingSuggestionsSmartAlbum:](self, "setIncludeSharedLibrarySharingSuggestionsSmartAlbum:", [optionsCopy includeSharedLibrarySharingSuggestionsSmartAlbum]);
    v36 = optionsCopy;
  }

  if (v36[36])
  {
    -[PHFetchOptions setIncludeActionCamVideoSmartAlbum:](self, "setIncludeActionCamVideoSmartAlbum:", [optionsCopy includeActionCamVideoSmartAlbum]);
    v36 = optionsCopy;
  }

  if (v36[37])
  {
    -[PHFetchOptions setIncludeProResSmartAlbum:](self, "setIncludeProResSmartAlbum:", [optionsCopy includeProResSmartAlbum]);
    v36 = optionsCopy;
  }

  if (v36[38])
  {
    -[PHFetchOptions setIncludeTrashBinAlbum:](self, "setIncludeTrashBinAlbum:", [optionsCopy includeTrashedAssets]);
    v36 = optionsCopy;
  }

  if (v36[39])
  {
    -[PHFetchOptions setIncludeRootFolder:](self, "setIncludeRootFolder:", [optionsCopy includeRootFolder]);
    v36 = optionsCopy;
  }

  if (v36[40])
  {
    -[PHFetchOptions setExcludeMontageAssets:](self, "setExcludeMontageAssets:", [optionsCopy excludeMontageAssets]);
    v36 = optionsCopy;
  }

  if (v36[41])
  {
    -[PHFetchOptions setExcludeScreenshotAssets:](self, "setExcludeScreenshotAssets:", [optionsCopy excludeScreenshotAssets]);
    v36 = optionsCopy;
  }

  if (v36[51])
  {
    -[PHFetchOptions setShouldPrefetchCount:](self, "setShouldPrefetchCount:", [optionsCopy shouldPrefetchCount]);
    v36 = optionsCopy;
  }

  if (v36[49])
  {
    -[PHFetchOptions setIsExclusivePredicate:](self, "setIsExclusivePredicate:", [optionsCopy isExclusivePredicate]);
    v36 = optionsCopy;
  }

  if (v36[52])
  {
    -[PHFetchOptions setHighlightCurationType:](self, "setHighlightCurationType:", [optionsCopy highlightCurationType]);
    v36 = optionsCopy;
  }

  if (v36[53])
  {
    -[PHFetchOptions setSharingStream:](self, "setSharingStream:", [optionsCopy sharingStream]);
    v36 = optionsCopy;
  }

  if (v36[54])
  {
    -[PHFetchOptions setIncludeUserSmartAlbums:](self, "setIncludeUserSmartAlbums:", [optionsCopy includeUserSmartAlbums]);
    v36 = optionsCopy;
  }

  if (v36[44])
  {
    -[PHFetchOptions setIncludeNonvisibleFaces:](self, "setIncludeNonvisibleFaces:", [optionsCopy includeNonvisibleFaces]);
    v36 = optionsCopy;
  }

  if (v36[47])
  {
    -[PHFetchOptions setIncludeOnlyFacesWithFaceprints:](self, "setIncludeOnlyFacesWithFaceprints:", [optionsCopy includeOnlyFacesWithFaceprints]);
    v36 = optionsCopy;
  }

  if (v36[48])
  {
    -[PHFetchOptions setIncludeOnlyFacesInFaceGroups:](self, "setIncludeOnlyFacesInFaceGroups:", [optionsCopy includeOnlyFacesInFaceGroups]);
    v36 = optionsCopy;
  }

  if (v36[45])
  {
    -[PHFetchOptions setIncludeOnlyPersonsWithVisibleKeyFaces:](self, "setIncludeOnlyPersonsWithVisibleKeyFaces:", [optionsCopy includeOnlyPersonsWithVisibleKeyFaces]);
    v36 = optionsCopy;
  }

  if (v36[55])
  {
    -[PHFetchOptions setIncludeOnlyAssetsAllowedForAnalysis:](self, "setIncludeOnlyAssetsAllowedForAnalysis:", [optionsCopy includeOnlyAssetsAllowedForAnalysis]);
    v36 = optionsCopy;
  }

  if (v36[56])
  {
    -[PHFetchOptions setIncludeOnlyContentContributedByCurrentUser:](self, "setIncludeOnlyContentContributedByCurrentUser:", [optionsCopy includeOnlyContentContributedByCurrentUser]);
    v36 = optionsCopy;
  }

  if (v36[57])
  {
    -[PHFetchOptions setIncludeBothPrivateAssetsAndSharedContentContributedByCurrentUser:](self, "setIncludeBothPrivateAssetsAndSharedContentContributedByCurrentUser:", [optionsCopy includeBothPrivateAssetsAndSharedContentContributedByCurrentUser]);
    v36 = optionsCopy;
  }

  importantFetchName = [v36 importantFetchName];

  if (importantFetchName)
  {
    importantFetchName2 = [optionsCopy importantFetchName];
    [(PHFetchOptions *)self setImportantFetchName:importantFetchName2];
  }

  includedDetectionTypes = [optionsCopy includedDetectionTypes];

  if (includedDetectionTypes)
  {
    includedDetectionTypes2 = [optionsCopy includedDetectionTypes];
    [(PHFetchOptions *)self setIncludedDetectionTypes:includedDetectionTypes2];
  }

  v41 = optionsCopy;
  if (optionsCopy[59])
  {
    -[PHFetchOptions setIncludeTorsoAndFaceDetectionData:](self, "setIncludeTorsoAndFaceDetectionData:", [optionsCopy includeTorsoAndFaceDetectionData]);
    v41 = optionsCopy;
  }

  if (v41[60])
  {
    -[PHFetchOptions setIncludeOnlyTorsoDetectionData:](self, "setIncludeOnlyTorsoDetectionData:", [optionsCopy includeOnlyTorsoDetectionData]);
    v41 = optionsCopy;
  }

  if (v41[61])
  {
    -[PHFetchOptions setIncludeTorsoOnlyPerson:](self, "setIncludeTorsoOnlyPerson:", [optionsCopy includeTorsoOnlyPerson]);
    v41 = optionsCopy;
  }

  if (v41[62])
  {
    -[PHFetchOptions setIncludeDuplicatesAlbums:](self, "setIncludeDuplicatesAlbums:", [optionsCopy includeDuplicatesAlbums]);
    v41 = optionsCopy;
  }

  if (v41[63])
  {
    -[PHFetchOptions setIncludeMediaAnalysisProcessingRangeTypes:](self, "setIncludeMediaAnalysisProcessingRangeTypes:", [optionsCopy includeMediaAnalysisProcessingRangeTypes]);
    v41 = optionsCopy;
  }

  if (v41[66])
  {
    -[PHFetchOptions setSharingFilter:](self, "setSharingFilter:", [optionsCopy sharingFilter]);
    v41 = optionsCopy;
  }

  if (v41[67])
  {
    -[PHFetchOptions setUseNoIndexOnSharingFilter:](self, "setUseNoIndexOnSharingFilter:", [optionsCopy useNoIndexOnSharingFilter]);
    v41 = optionsCopy;
  }

  if (v41[64])
  {
    -[PHFetchOptions setSuppressSlowFetchReports:](self, "setSuppressSlowFetchReports:", [optionsCopy suppressSlowFetchReports]);
    v41 = optionsCopy;
  }

  if (v41[65])
  {
    -[PHFetchOptions setReverseDefaultSortDescriptors:](self, "setReverseDefaultSortDescriptors:", [optionsCopy reverseDefaultSortDescriptors]);
    v41 = optionsCopy;
  }

  relatedEntityName = [v41 relatedEntityName];

  if (relatedEntityName)
  {
    relatedEntityName2 = [optionsCopy relatedEntityName];
    [(PHFetchOptions *)self setRelatedEntityName:relatedEntityName2];
  }

  relatedRelationshipProperty = [optionsCopy relatedRelationshipProperty];

  if (relatedRelationshipProperty)
  {
    relatedRelationshipProperty2 = [optionsCopy relatedRelationshipProperty];
    [(PHFetchOptions *)self setRelatedRelationshipProperty:relatedRelationshipProperty2];
  }

  if (optionsCopy[68])
  {
    -[PHFetchOptions setExcludeSensitiveAndUnprocessedAssets:](self, "setExcludeSensitiveAndUnprocessedAssets:", [optionsCopy excludeSensitiveAndUnprocessedAssets]);
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  objc_opt_class();
  v4 = objc_opt_new();
  predicate = [(PHFetchOptions *)self predicate];
  v6 = [predicate copy];
  [v4 setPredicate:v6];

  sortDescriptors = [(PHFetchOptions *)self sortDescriptors];
  v8 = [sortDescriptors copy];
  [v4 setSortDescriptors:v8];

  internalPredicate = [(PHFetchOptions *)self internalPredicate];
  v10 = [internalPredicate copy];
  [v4 setInternalPredicate:v10];

  internalInclusionPredicate = [(PHFetchOptions *)self internalInclusionPredicate];
  v12 = [internalInclusionPredicate copy];
  [v4 setInternalInclusionPredicate:v12];

  internalSortDescriptors = [(PHFetchOptions *)self internalSortDescriptors];
  v14 = [internalSortDescriptors copy];
  [v4 setInternalSortDescriptors:v14];

  fetchPropertySets = [(PHFetchOptions *)self fetchPropertySets];
  [v4 setFetchPropertySets:fetchPropertySets];

  transientIdentifier = [(PHFetchOptions *)self transientIdentifier];
  [v4 setTransientIdentifier:transientIdentifier];

  customObjectIDSortOrder = [(PHFetchOptions *)self customObjectIDSortOrder];
  [v4 setCustomObjectIDSortOrder:customObjectIDSortOrder];

  photoLibrary = [(PHFetchOptions *)self photoLibrary];
  [v4 setPhotoLibrary:photoLibrary];

  verifiedPersonTypes = [(PHFetchOptions *)self verifiedPersonTypes];
  v20 = [verifiedPersonTypes copy];
  [v4 setVerifiedPersonTypes:v20];

  changeDetectionCriteria = [(PHFetchOptions *)self changeDetectionCriteria];
  v22 = [changeDetectionCriteria copy];
  [v4 setChangeDetectionCriteria:v22];

  v23 = [(NSNumber *)self->_curationTypeNumber copy];
  v24 = v4[6];
  v4[6] = v23;

  v25 = [(NSNumber *)self->_wantsIncrementalChangeDetailsNumber copy];
  v26 = v4[7];
  v4[7] = v25;

  v27 = [(NSNumber *)self->_includeAllBurstAssetsNumber copy];
  v28 = v4[2];
  v4[2] = v27;

  v29 = [(NSNumber *)self->_includeHiddenAssetsNumber copy];
  v30 = v4[1];
  v4[1] = v29;

  v31 = [(NSNumber *)self->_chunkSizeForFetchNumber copy];
  v32 = v4[8];
  v4[8] = v31;

  v33 = [(NSNumber *)self->_cacheSizeForFetchNumber copy];
  v34 = v4[9];
  v4[9] = v33;

  v35 = [(NSNumber *)self->_fetchLimitNumber copy];
  v36 = v4[4];
  v4[4] = v35;

  v37 = [(NSNumber *)self->_fetchOffsetNumber copy];
  v38 = v4[5];
  v4[5] = v37;

  v39 = [(NSNumber *)self->_includeAssetSourceTypesNumber copy];
  v40 = v4[3];
  v4[3] = v39;

  v41 = [(NSNumber *)self->_includeDuplicateAssetsNumber copy];
  v42 = v4[11];
  v4[11] = v41;

  v43 = [(NSNumber *)self->_excludeDuplicateAssetVisibilityStateHiddenNumber copy];
  v44 = v4[12];
  v4[12] = v43;

  v45 = [(NSNumber *)self->_includeDuplicateAssetVisibilityStateMostRelevantNumber copy];
  v46 = v4[13];
  v4[13] = v45;

  v47 = [(NSNumber *)self->_excludeNonVisibleStackedAssetsNumber copy];
  v48 = v4[14];
  v4[14] = v47;

  v49 = [(NSNumber *)self->_includeGuestAssetsNumber copy];
  v50 = v4[15];
  v4[15] = v49;

  v51 = [(NSNumber *)self->_includePlaceholderAssetsNumber copy];
  v52 = v4[16];
  v4[16] = v51;

  v53 = [(NSNumber *)self->_includeCollectionShareAssetsNumber copy];
  v54 = v4[17];
  v4[17] = v53;

  v55 = [(NSNumber *)self->_includePendingMemoriesNumber copy];
  v56 = v4[18];
  v4[18] = v55;

  v57 = [(NSNumber *)self->_includeRejectedMemoriesNumber copy];
  v58 = v4[19];
  v4[19] = v57;

  v59 = [(NSNumber *)self->_includeLocalMemoriesNumber copy];
  v60 = v4[20];
  v4[20] = v59;

  v61 = [(NSNumber *)self->_includeStoryMemoriesNumber copy];
  v62 = v4[21];
  v4[21] = v61;

  v63 = [(NSNumber *)self->_personContextNumber copy];
  v64 = v4[23];
  v4[23] = v63;

  v65 = [(NSNumber *)self->_includeSourceMemoriesNumber copy];
  v66 = v4[22];
  v4[22] = v65;

  v67 = [(NSNumber *)self->_socialGroupContextNumber copy];
  v68 = v4[24];
  v4[24] = v67;

  v69 = [(NSNumber *)self->_reverseSortOrderNumber copy];
  v70 = v4[10];
  v4[10] = v69;

  v71 = [(NSNumber *)self->_includeTrashedAssetsNumber copy];
  v72 = v4[25];
  v4[25] = v71;

  v73 = [(NSNumber *)self->_includeTrashedSharesNumber copy];
  v74 = v4[26];
  v4[26] = v73;

  v75 = [(NSNumber *)self->_includeExpiredSharesNumber copy];
  v76 = v4[27];
  v4[27] = v75;

  v77 = [(NSNumber *)self->_includeExitingSharesNumber copy];
  v78 = v4[28];
  v4[28] = v77;

  v79 = [(NSNumber *)self->_includePendingSharesNumber copy];
  v80 = v4[29];
  v4[29] = v79;

  v81 = [(NSNumber *)self->_includeFavoriteMemoriesCollectionListNumber copy];
  v82 = v4[30];
  v4[30] = v81;

  v83 = [(NSNumber *)self->_includePlacesSmartAlbumNumber copy];
  v84 = v4[31];
  v4[31] = v83;

  v85 = [(NSNumber *)self->_includeAllPhotosSmartAlbumNumber copy];
  v86 = v4[32];
  v4[32] = v85;

  v87 = [(NSNumber *)self->_includeRecentlyEditedSmartAlbumNumber copy];
  v88 = v4[33];
  v4[33] = v87;

  v89 = [(NSNumber *)self->_includeScreenRecordingsSmartAlbumNumber copy];
  v90 = v4[34];
  v4[34] = v89;

  v91 = [(NSNumber *)self->_includeSharedLibrarySharingSuggestionsSmartAlbumNumber copy];
  v92 = v4[35];
  v4[35] = v91;

  v93 = [(NSNumber *)self->_includeActionCamVideoSmartAlbumNumber copy];
  v94 = v4[36];
  v4[36] = v93;

  v95 = [(NSNumber *)self->_includeProResSmartAlbumNumber copy];
  v96 = v4[37];
  v4[37] = v95;

  v97 = [(NSNumber *)self->_includeTrashBinAlbumNumber copy];
  v98 = v4[38];
  v4[38] = v97;

  v99 = [(NSNumber *)self->_includeRootFolderNumber copy];
  v100 = v4[39];
  v4[39] = v99;

  v101 = [(NSNumber *)self->_excludeMontageAssetsNumber copy];
  v102 = v4[40];
  v4[40] = v101;

  v103 = [(NSNumber *)self->_excludeScreenshotAssetsNumber copy];
  v104 = v4[41];
  v4[41] = v103;

  v105 = [(NSNumber *)self->_minimumVerifiedFaceCountNumber copy];
  v106 = v4[42];
  v4[42] = v105;

  v107 = [(NSNumber *)self->_minimumUnverifiedFaceCountNumber copy];
  v108 = v4[43];
  v4[43] = v107;

  v109 = [(NSNumber *)self->_includeNonvisibleFacesNumber copy];
  v110 = v4[44];
  v4[44] = v109;

  v111 = [(NSNumber *)self->_includeOnlyPersonsWithVisibleKeyFacesNumber copy];
  v112 = v4[45];
  v4[45] = v111;

  v113 = [(NSNumber *)self->_includeOnlyFacesNeedingFaceCropNumber copy];
  v114 = v4[46];
  v4[46] = v113;

  v115 = [(NSNumber *)self->_includeOnlyFacesWithFaceprintsNumber copy];
  v116 = v4[47];
  v4[47] = v115;

  v117 = [(NSNumber *)self->_includeOnlyFacesInFaceGroupsNumber copy];
  v118 = v4[48];
  v4[48] = v117;

  v119 = [(NSNumber *)self->_shouldPrefetchCountNumber copy];
  v120 = v4[51];
  v4[51] = v119;

  v121 = [(NSNumber *)self->_isExclusivePredicateNumber copy];
  v122 = v4[49];
  v4[49] = v121;

  v123 = [(NSNumber *)self->_highlightCurationTypeNumber copy];
  v124 = v4[52];
  v4[52] = v123;

  v125 = [(NSNumber *)self->_sharingStreamNumber copy];
  v126 = v4[53];
  v4[53] = v125;

  v127 = [(NSNumber *)self->_includeUserSmartAlbumsNumber copy];
  v128 = v4[54];
  v4[54] = v127;

  v129 = [(NSNumber *)self->_includeOnlyAssetsAllowedForAnalysisNumber copy];
  v130 = v4[55];
  v4[55] = v129;

  v131 = [(NSNumber *)self->_includeOnlyContentContributedByCurrentUserNumber copy];
  v132 = v4[56];
  v4[56] = v131;

  v133 = [(NSNumber *)self->_includeBothPrivateAssetsAndSharedContentContributedByCurrentUserNumber copy];
  v134 = v4[57];
  v4[57] = v133;

  v135 = [(NSString *)self->_importantFetchName copy];
  v136 = v4[79];
  v4[79] = v135;

  v137 = [(NSArray *)self->_includedDetectionTypes copy];
  v138 = v4[58];
  v4[58] = v137;

  v139 = [(NSNumber *)self->_includeTorsoAndFaceDetectionDataNumber copy];
  v140 = v4[59];
  v4[59] = v139;

  v141 = [(NSNumber *)self->_includeOnlyTorsoDetectionDataNumber copy];
  v142 = v4[60];
  v4[60] = v141;

  v143 = [(NSNumber *)self->_includeTorsoOnlyPersonNumber copy];
  v144 = v4[61];
  v4[61] = v143;

  v145 = [(NSNumber *)self->_includeDuplicatesAlbumsNumber copy];
  v146 = v4[62];
  v4[62] = v145;

  v147 = [(NSNumber *)self->_includeMediaAnalysisProcessingRangeTypesNumber copy];
  v148 = v4[63];
  v4[63] = v147;

  v149 = [(NSNumber *)self->_sharingFilterNumber copy];
  v150 = v4[66];
  v4[66] = v149;

  v151 = [(NSNumber *)self->_useNoIndexOnSharingFilter copy];
  v152 = v4[67];
  v4[67] = v151;

  v153 = [(NSNumber *)self->_suppressSlowFetchReportsNumber copy];
  v154 = v4[64];
  v4[64] = v153;

  v155 = [(NSNumber *)self->_reverseDefaultSortDescriptorsNumber copy];
  v156 = v4[65];
  v4[65] = v155;

  v157 = [(NSString *)self->_relatedEntityName copy];
  v158 = v4[80];
  v4[80] = v157;

  v159 = [(NSString *)self->_relatedRelationshipProperty copy];
  v160 = v4[81];
  v4[81] = v159;

  v161 = [(NSNumber *)self->_excludeSensitiveAndUnprocessedAssets copy];
  v162 = v4[68];
  v4[68] = v161;

  return v4;
}

+ (id)fetchOptionsCopyFromNullableFetchOptions:(id)options photoLibrary:(id)library
{
  optionsCopy = options;
  libraryCopy = library;
  if (optionsCopy)
  {
    v7 = [optionsCopy copy];
  }

  else
  {
    v7 = objc_alloc_init(PHFetchOptions);
  }

  v8 = v7;
  if (libraryCopy)
  {
    [(PHFetchOptions *)v7 setPhotoLibrary:libraryCopy];
  }

  return v8;
}

+ (id)effectivePhotoLibraryForFetchOptions:(id)options object:(id)object
{
  optionsCopy = options;
  photoLibrary = [object photoLibrary];
  if (!photoLibrary)
  {
    photoLibrary = [optionsCopy photoLibrary];
    if (!photoLibrary)
    {
      photoLibrary = +[PHPhotoLibrary sharedPhotoLibrary];
    }
  }

  v7 = photoLibrary;

  return v7;
}

+ (PHFetchOptions)fetchOptionsWithPhotoLibrary:(id)library orObject:(id)object
{
  libraryCopy = library;
  objectCopy = object;
  v7 = objc_alloc_init(PHFetchOptions);
  v8 = v7;
  if (libraryCopy)
  {
    [(PHFetchOptions *)v7 setPhotoLibrary:libraryCopy];
  }

  else
  {
    photoLibrary = [objectCopy photoLibrary];
    [(PHFetchOptions *)v8 setPhotoLibrary:photoLibrary];
  }

  return v8;
}

+ (PHFetchOptions)fetchOptionsWithInclusiveDefaultsForPhotoLibrary:(id)library
{
  librarySpecificFetchOptions = [library librarySpecificFetchOptions];
  [librarySpecificFetchOptions setIncludeHiddenAssets:1];
  [librarySpecificFetchOptions setIncludeAllBurstAssets:1];

  return librarySpecificFetchOptions;
}

+ (PHFetchOptions)fetchOptionsWithInclusiveDefaults
{
  v3 = +[PHPhotoLibrary sharedPhotoLibrary];
  v4 = [self fetchOptionsWithInclusiveDefaultsForPhotoLibrary:v3];

  return v4;
}

@end