@interface PHFetchOptions
+ (PHFetchOptions)fetchOptionsWithInclusiveDefaults;
+ (PHFetchOptions)fetchOptionsWithInclusiveDefaultsForPhotoLibrary:(id)a3;
+ (PHFetchOptions)fetchOptionsWithPhotoLibrary:(id)a3 orObject:(id)a4;
+ (id)effectivePhotoLibraryForFetchOptions:(id)a3 object:(id)a4;
+ (id)fetchOptionsCopyFromNullableFetchOptions:(id)a3 photoLibrary:(id)a4;
- (BOOL)hasAnySortDescriptors;
- (BOOL)includePlaceholderAssets;
- (NSDictionary)internalLoggingDescriptionDictionary;
- (NSString)shortDescription;
- (PHFetchOptions)init;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (unint64_t)minimumUnverifiedFaceCount;
- (unint64_t)minimumVerifiedFaceCount;
- (unint64_t)sharingStream;
- (unsigned)highlightCurationType;
- (unsigned)sharingFilter;
- (void)addFetchPropertySets:(id)a3;
- (void)mergeWithFetchOptions:(id)a3;
- (void)setCacheSizeForFetch:(int64_t)a3;
- (void)setChunkSizeForFetch:(int64_t)a3;
- (void)setCurationType:(int64_t)a3;
- (void)setExcludeDuplicateAssetVisibilityStateHidden:(BOOL)a3;
- (void)setExcludeMontageAssets:(BOOL)a3;
- (void)setExcludeNonVisibleStackedAssets:(BOOL)a3;
- (void)setExcludeScreenshotAssets:(BOOL)a3;
- (void)setExcludeSensitiveAndUnprocessedAssets:(BOOL)a3;
- (void)setFetchLimit:(NSUInteger)fetchLimit;
- (void)setFetchOffset:(unint64_t)a3;
- (void)setFetchPropertySets:(id)a3;
- (void)setHighlightCurationType:(unsigned __int16)a3;
- (void)setIncludeActionCamVideoSmartAlbum:(BOOL)a3;
- (void)setIncludeAllBurstAssets:(BOOL)includeAllBurstAssets;
- (void)setIncludeAllPhotosSmartAlbum:(BOOL)a3;
- (void)setIncludeAssetSourceTypes:(PHAssetSourceType)includeAssetSourceTypes;
- (void)setIncludeBothPrivateAssetsAndSharedContentContributedByCurrentUser:(BOOL)a3;
- (void)setIncludeCollectionShareAssets:(BOOL)a3;
- (void)setIncludeDuplicateAssetVisibilityStateMostRelevant:(BOOL)a3;
- (void)setIncludeDuplicateAssets:(BOOL)a3;
- (void)setIncludeDuplicatesAlbums:(BOOL)a3;
- (void)setIncludeExitingShares:(BOOL)a3;
- (void)setIncludeExpiredShares:(BOOL)a3;
- (void)setIncludeFavoriteMemoriesCollectionList:(BOOL)a3;
- (void)setIncludeGuestAssets:(BOOL)a3;
- (void)setIncludeHiddenAssets:(BOOL)includeHiddenAssets;
- (void)setIncludeLocalMemories:(BOOL)a3;
- (void)setIncludeMediaAnalysisProcessingRangeTypes:(int64_t)a3;
- (void)setIncludeNonvisibleFaces:(BOOL)a3;
- (void)setIncludeOnlyAssetsAllowedForAnalysis:(BOOL)a3;
- (void)setIncludeOnlyContentContributedByCurrentUser:(BOOL)a3;
- (void)setIncludeOnlyFacesInFaceGroups:(BOOL)a3;
- (void)setIncludeOnlyFacesNeedingFaceCrop:(BOOL)a3;
- (void)setIncludeOnlyFacesWithFaceprints:(BOOL)a3;
- (void)setIncludeOnlyPersonsWithVisibleKeyFaces:(BOOL)a3;
- (void)setIncludeOnlyTorsoDetectionData:(BOOL)a3;
- (void)setIncludePendingMemories:(BOOL)a3;
- (void)setIncludePendingShares:(BOOL)a3;
- (void)setIncludePlaceholderAssets:(BOOL)a3;
- (void)setIncludePlacesSmartAlbum:(BOOL)a3;
- (void)setIncludeProResSmartAlbum:(BOOL)a3;
- (void)setIncludeRecentlyEditedSmartAlbum:(BOOL)a3;
- (void)setIncludeRejectedMemories:(BOOL)a3;
- (void)setIncludeRootFolder:(BOOL)a3;
- (void)setIncludeScreenRecordingsSmartAlbum:(BOOL)a3;
- (void)setIncludeSharedLibrarySharingSuggestionsSmartAlbum:(BOOL)a3;
- (void)setIncludeSourceMemories:(BOOL)a3;
- (void)setIncludeStoryMemories:(BOOL)a3;
- (void)setIncludeTorsoAndFaceDetectionData:(BOOL)a3;
- (void)setIncludeTorsoOnlyPerson:(BOOL)a3;
- (void)setIncludeTrashBinAlbum:(BOOL)a3;
- (void)setIncludeTrashedAssets:(BOOL)a3;
- (void)setIncludeTrashedShares:(BOOL)a3;
- (void)setIncludeUserSmartAlbums:(BOOL)a3;
- (void)setIsExclusivePredicate:(BOOL)a3;
- (void)setMinimumUnverifiedFaceCount:(unint64_t)a3;
- (void)setMinimumVerifiedFaceCount:(unint64_t)a3;
- (void)setPersonContext:(int64_t)a3;
- (void)setReverseDefaultSortDescriptors:(BOOL)a3;
- (void)setReverseSortOrder:(BOOL)a3;
- (void)setSharingFilter:(unsigned __int16)a3;
- (void)setSharingStream:(unint64_t)a3;
- (void)setShouldPrefetchCount:(BOOL)a3;
- (void)setSocialGroupContext:(int64_t)a3;
- (void)setSuppressSlowFetchReports:(BOOL)a3;
- (void)setUseNoIndexOnSharingFilter:(BOOL)a3;
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
  v3 = [(PHFetchOptions *)self sortDescriptors];
  if ([v3 count])
  {
    v4 = 1;
  }

  else
  {
    v5 = [(PHFetchOptions *)self internalSortDescriptors];
    v4 = [v5 count] != 0;
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
      v9 = [v8 UTF8String];

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
              if (strcmp(v13, v9))
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
  v16 = [(PHFetchOptions *)self predicate];
  v15 = objc_opt_class();
  v4 = [(PHFetchOptions *)self internalPredicate];
  v14 = objc_opt_class();
  v5 = [(PHFetchOptions *)self fetchLimit];
  v6 = [(PHFetchOptions *)self sortDescriptors];
  v7 = [(PHFetchOptions *)self internalSortDescriptors];
  v8 = [(PHFetchOptions *)self customObjectIDSortOrder];
  v9 = [v8 count];
  if ([(PHFetchOptions *)self reverseSortOrder])
  {
    v10 = @"D";
  }

  else
  {
    v10 = @"A";
  }

  v11 = [(PHFetchOptions *)self transientIdentifier];
  v12 = [v3 stringByAppendingFormat:@" predicate=%@/%@[%ld], sort=%@/%@/%ld/%@, changes[%@]=%d", v15, v14, v5, v6, v7, v9, v10, v11, -[PHFetchOptions wantsIncrementalChangeDetails](self, "wantsIncrementalChangeDetails")];

  return v12;
}

- (id)description
{
  v8.receiver = self;
  v8.super_class = PHFetchOptions;
  v3 = [(PHFetchOptions *)&v8 description];
  v4 = [(PHFetchOptions *)self predicate];
  v5 = [(PHFetchOptions *)self sortDescriptors];
  v6 = [v3 stringByAppendingFormat:@" predicate=%@, sort=%@, wantsChangeDetails=%d", v4, v5, -[PHFetchOptions wantsIncrementalChangeDetails](self, "wantsIncrementalChangeDetails")];

  return v6;
}

- (void)setReverseDefaultSortDescriptors:(BOOL)a3
{
  self->_reverseDefaultSortDescriptorsNumber = [MEMORY[0x1E696AD98] numberWithBool:a3];

  MEMORY[0x1EEE66BB8]();
}

- (void)setSuppressSlowFetchReports:(BOOL)a3
{
  self->_suppressSlowFetchReportsNumber = [MEMORY[0x1E696AD98] numberWithBool:a3];

  MEMORY[0x1EEE66BB8]();
}

- (void)setUseNoIndexOnSharingFilter:(BOOL)a3
{
  self->_useNoIndexOnSharingFilter = [MEMORY[0x1E696AD98] numberWithBool:a3];

  MEMORY[0x1EEE66BB8]();
}

- (void)setSharingFilter:(unsigned __int16)a3
{
  self->_sharingFilterNumber = [MEMORY[0x1E696AD98] numberWithUnsignedShort:a3];

  MEMORY[0x1EEE66BB8]();
}

- (void)setIncludeBothPrivateAssetsAndSharedContentContributedByCurrentUser:(BOOL)a3
{
  self->_includeBothPrivateAssetsAndSharedContentContributedByCurrentUserNumber = [MEMORY[0x1E696AD98] numberWithBool:a3];

  MEMORY[0x1EEE66BB8]();
}

- (void)setIncludeOnlyContentContributedByCurrentUser:(BOOL)a3
{
  self->_includeOnlyContentContributedByCurrentUserNumber = [MEMORY[0x1E696AD98] numberWithBool:a3];

  MEMORY[0x1EEE66BB8]();
}

- (void)setIncludeOnlyAssetsAllowedForAnalysis:(BOOL)a3
{
  self->_includeOnlyAssetsAllowedForAnalysisNumber = [MEMORY[0x1E696AD98] numberWithBool:a3];

  MEMORY[0x1EEE66BB8]();
}

- (void)setIncludeUserSmartAlbums:(BOOL)a3
{
  self->_includeUserSmartAlbumsNumber = [MEMORY[0x1E696AD98] numberWithBool:a3];

  MEMORY[0x1EEE66BB8]();
}

- (void)setSharingStream:(unint64_t)a3
{
  self->_sharingStreamNumber = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a3];

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

- (void)setHighlightCurationType:(unsigned __int16)a3
{
  self->_highlightCurationTypeNumber = [MEMORY[0x1E696AD98] numberWithUnsignedShort:a3];

  MEMORY[0x1EEE66BB8]();
}

- (void)setIsExclusivePredicate:(BOOL)a3
{
  self->_isExclusivePredicateNumber = [MEMORY[0x1E696AD98] numberWithBool:a3];

  MEMORY[0x1EEE66BB8]();
}

- (void)setShouldPrefetchCount:(BOOL)a3
{
  self->_shouldPrefetchCountNumber = [MEMORY[0x1E696AD98] numberWithBool:a3];

  MEMORY[0x1EEE66BB8]();
}

- (void)setIncludeMediaAnalysisProcessingRangeTypes:(int64_t)a3
{
  self->_includeMediaAnalysisProcessingRangeTypesNumber = [MEMORY[0x1E696AD98] numberWithInteger:a3];

  MEMORY[0x1EEE66BB8]();
}

- (void)setIncludeOnlyFacesInFaceGroups:(BOOL)a3
{
  self->_includeOnlyFacesInFaceGroupsNumber = [MEMORY[0x1E696AD98] numberWithBool:a3];

  MEMORY[0x1EEE66BB8]();
}

- (void)setIncludeOnlyFacesWithFaceprints:(BOOL)a3
{
  self->_includeOnlyFacesWithFaceprintsNumber = [MEMORY[0x1E696AD98] numberWithBool:a3];

  MEMORY[0x1EEE66BB8]();
}

- (void)setIncludeOnlyFacesNeedingFaceCrop:(BOOL)a3
{
  self->_includeOnlyFacesNeedingFaceCropNumber = [MEMORY[0x1E696AD98] numberWithBool:a3];

  MEMORY[0x1EEE66BB8]();
}

- (void)setIncludeTorsoOnlyPerson:(BOOL)a3
{
  self->_includeTorsoOnlyPersonNumber = [MEMORY[0x1E696AD98] numberWithBool:a3];

  MEMORY[0x1EEE66BB8]();
}

- (void)setExcludeSensitiveAndUnprocessedAssets:(BOOL)a3
{
  self->_excludeSensitiveAndUnprocessedAssets = [MEMORY[0x1E696AD98] numberWithBool:a3];

  MEMORY[0x1EEE66BB8]();
}

- (void)setIncludeDuplicatesAlbums:(BOOL)a3
{
  self->_includeDuplicatesAlbumsNumber = [MEMORY[0x1E696AD98] numberWithBool:a3];

  MEMORY[0x1EEE66BB8]();
}

- (void)setIncludeOnlyTorsoDetectionData:(BOOL)a3
{
  self->_includeOnlyTorsoDetectionDataNumber = [MEMORY[0x1E696AD98] numberWithBool:a3];

  MEMORY[0x1EEE66BB8]();
}

- (void)setIncludeTorsoAndFaceDetectionData:(BOOL)a3
{
  self->_includeTorsoAndFaceDetectionDataNumber = [MEMORY[0x1E696AD98] numberWithBool:a3];

  MEMORY[0x1EEE66BB8]();
}

- (void)setIncludeOnlyPersonsWithVisibleKeyFaces:(BOOL)a3
{
  self->_includeOnlyPersonsWithVisibleKeyFacesNumber = [MEMORY[0x1E696AD98] numberWithBool:a3];

  MEMORY[0x1EEE66BB8]();
}

- (void)setIncludeNonvisibleFaces:(BOOL)a3
{
  self->_includeNonvisibleFacesNumber = [MEMORY[0x1E696AD98] numberWithBool:a3];

  MEMORY[0x1EEE66BB8]();
}

- (void)setMinimumUnverifiedFaceCount:(unint64_t)a3
{
  self->_minimumUnverifiedFaceCountNumber = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a3];

  MEMORY[0x1EEE66BB8]();
}

- (void)setMinimumVerifiedFaceCount:(unint64_t)a3
{
  self->_minimumVerifiedFaceCountNumber = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a3];

  MEMORY[0x1EEE66BB8]();
}

- (void)setExcludeScreenshotAssets:(BOOL)a3
{
  self->_excludeScreenshotAssetsNumber = [MEMORY[0x1E696AD98] numberWithBool:a3];

  MEMORY[0x1EEE66BB8]();
}

- (void)setExcludeMontageAssets:(BOOL)a3
{
  self->_excludeMontageAssetsNumber = [MEMORY[0x1E696AD98] numberWithBool:a3];

  MEMORY[0x1EEE66BB8]();
}

- (void)setIncludeRootFolder:(BOOL)a3
{
  self->_includeRootFolderNumber = [MEMORY[0x1E696AD98] numberWithBool:a3];

  MEMORY[0x1EEE66BB8]();
}

- (void)setIncludeTrashBinAlbum:(BOOL)a3
{
  self->_includeTrashBinAlbumNumber = [MEMORY[0x1E696AD98] numberWithBool:a3];

  MEMORY[0x1EEE66BB8]();
}

- (void)setIncludeProResSmartAlbum:(BOOL)a3
{
  self->_includeProResSmartAlbumNumber = [MEMORY[0x1E696AD98] numberWithBool:a3];

  MEMORY[0x1EEE66BB8]();
}

- (void)setIncludeActionCamVideoSmartAlbum:(BOOL)a3
{
  self->_includeActionCamVideoSmartAlbumNumber = [MEMORY[0x1E696AD98] numberWithBool:a3];

  MEMORY[0x1EEE66BB8]();
}

- (void)setIncludeSharedLibrarySharingSuggestionsSmartAlbum:(BOOL)a3
{
  self->_includeSharedLibrarySharingSuggestionsSmartAlbumNumber = [MEMORY[0x1E696AD98] numberWithBool:a3];

  MEMORY[0x1EEE66BB8]();
}

- (void)setIncludeScreenRecordingsSmartAlbum:(BOOL)a3
{
  self->_includeScreenRecordingsSmartAlbumNumber = [MEMORY[0x1E696AD98] numberWithBool:a3];

  MEMORY[0x1EEE66BB8]();
}

- (void)setIncludeRecentlyEditedSmartAlbum:(BOOL)a3
{
  self->_includeRecentlyEditedSmartAlbumNumber = [MEMORY[0x1E696AD98] numberWithBool:a3];

  MEMORY[0x1EEE66BB8]();
}

- (void)setIncludeAllPhotosSmartAlbum:(BOOL)a3
{
  self->_includeAllPhotosSmartAlbumNumber = [MEMORY[0x1E696AD98] numberWithBool:a3];

  MEMORY[0x1EEE66BB8]();
}

- (void)setIncludePlacesSmartAlbum:(BOOL)a3
{
  self->_includePlacesSmartAlbumNumber = [MEMORY[0x1E696AD98] numberWithBool:a3];

  MEMORY[0x1EEE66BB8]();
}

- (void)setIncludeFavoriteMemoriesCollectionList:(BOOL)a3
{
  self->_includeFavoriteMemoriesCollectionListNumber = [MEMORY[0x1E696AD98] numberWithBool:a3];

  MEMORY[0x1EEE66BB8]();
}

- (void)setIncludePendingShares:(BOOL)a3
{
  self->_includePendingSharesNumber = [MEMORY[0x1E696AD98] numberWithBool:a3];

  MEMORY[0x1EEE66BB8]();
}

- (void)setIncludeExitingShares:(BOOL)a3
{
  self->_includeExitingSharesNumber = [MEMORY[0x1E696AD98] numberWithBool:a3];

  MEMORY[0x1EEE66BB8]();
}

- (void)setIncludeExpiredShares:(BOOL)a3
{
  self->_includeExpiredSharesNumber = [MEMORY[0x1E696AD98] numberWithBool:a3];

  MEMORY[0x1EEE66BB8]();
}

- (void)setIncludeTrashedShares:(BOOL)a3
{
  self->_includeTrashedSharesNumber = [MEMORY[0x1E696AD98] numberWithBool:a3];

  MEMORY[0x1EEE66BB8]();
}

- (void)setIncludeTrashedAssets:(BOOL)a3
{
  self->_includeTrashedAssetsNumber = [MEMORY[0x1E696AD98] numberWithBool:a3];

  MEMORY[0x1EEE66BB8]();
}

- (void)setSocialGroupContext:(int64_t)a3
{
  self->_socialGroupContextNumber = [MEMORY[0x1E696AD98] numberWithInteger:a3];

  MEMORY[0x1EEE66BB8]();
}

- (void)setPersonContext:(int64_t)a3
{
  self->_personContextNumber = [MEMORY[0x1E696AD98] numberWithInteger:a3];

  MEMORY[0x1EEE66BB8]();
}

- (void)setCurationType:(int64_t)a3
{
  self->_curationTypeNumber = [MEMORY[0x1E696AD98] numberWithInteger:a3];

  MEMORY[0x1EEE66BB8]();
}

- (void)setIncludeSourceMemories:(BOOL)a3
{
  self->_includeSourceMemoriesNumber = [MEMORY[0x1E696AD98] numberWithBool:a3];

  MEMORY[0x1EEE66BB8]();
}

- (void)setIncludeStoryMemories:(BOOL)a3
{
  self->_includeStoryMemoriesNumber = [MEMORY[0x1E696AD98] numberWithBool:a3];

  MEMORY[0x1EEE66BB8]();
}

- (void)setIncludeLocalMemories:(BOOL)a3
{
  self->_includeLocalMemoriesNumber = [MEMORY[0x1E696AD98] numberWithBool:a3];

  MEMORY[0x1EEE66BB8]();
}

- (void)setIncludeRejectedMemories:(BOOL)a3
{
  self->_includeRejectedMemoriesNumber = [MEMORY[0x1E696AD98] numberWithBool:a3];

  MEMORY[0x1EEE66BB8]();
}

- (void)setIncludePendingMemories:(BOOL)a3
{
  self->_includePendingMemoriesNumber = [MEMORY[0x1E696AD98] numberWithBool:a3];

  MEMORY[0x1EEE66BB8]();
}

- (void)setIncludePlaceholderAssets:(BOOL)a3
{
  self->_includePlaceholderAssetsNumber = [MEMORY[0x1E696AD98] numberWithBool:a3];

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

- (void)setIncludeCollectionShareAssets:(BOOL)a3
{
  self->_includeCollectionShareAssetsNumber = [MEMORY[0x1E696AD98] numberWithBool:a3];

  MEMORY[0x1EEE66BB8]();
}

- (void)setIncludeGuestAssets:(BOOL)a3
{
  self->_includeGuestAssetsNumber = [MEMORY[0x1E696AD98] numberWithBool:a3];

  MEMORY[0x1EEE66BB8]();
}

- (void)setExcludeNonVisibleStackedAssets:(BOOL)a3
{
  self->_excludeNonVisibleStackedAssetsNumber = [MEMORY[0x1E696AD98] numberWithBool:a3];

  MEMORY[0x1EEE66BB8]();
}

- (void)setIncludeDuplicateAssetVisibilityStateMostRelevant:(BOOL)a3
{
  self->_includeDuplicateAssetVisibilityStateMostRelevantNumber = [MEMORY[0x1E696AD98] numberWithBool:a3];

  MEMORY[0x1EEE66BB8]();
}

- (void)setExcludeDuplicateAssetVisibilityStateHidden:(BOOL)a3
{
  self->_excludeDuplicateAssetVisibilityStateHiddenNumber = [MEMORY[0x1E696AD98] numberWithBool:a3];

  MEMORY[0x1EEE66BB8]();
}

- (void)setIncludeDuplicateAssets:(BOOL)a3
{
  self->_includeDuplicateAssetsNumber = [MEMORY[0x1E696AD98] numberWithBool:a3];

  MEMORY[0x1EEE66BB8]();
}

- (void)setReverseSortOrder:(BOOL)a3
{
  self->_reverseSortOrderNumber = [MEMORY[0x1E696AD98] numberWithBool:a3];

  MEMORY[0x1EEE66BB8]();
}

- (void)setCacheSizeForFetch:(int64_t)a3
{
  self->_cacheSizeForFetchNumber = [MEMORY[0x1E696AD98] numberWithInteger:a3];

  MEMORY[0x1EEE66BB8]();
}

- (void)setChunkSizeForFetch:(int64_t)a3
{
  self->_chunkSizeForFetchNumber = [MEMORY[0x1E696AD98] numberWithInteger:a3];

  MEMORY[0x1EEE66BB8]();
}

- (void)setWantsIncrementalChangeDetails:(BOOL)wantsIncrementalChangeDetails
{
  self->_wantsIncrementalChangeDetailsNumber = [MEMORY[0x1E696AD98] numberWithBool:wantsIncrementalChangeDetails];

  MEMORY[0x1EEE66BB8]();
}

- (void)setFetchOffset:(unint64_t)a3
{
  self->_fetchOffsetNumber = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a3];

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

- (void)addFetchPropertySets:(id)a3
{
  if (a3)
  {
    [(NSMutableSet *)self->_propertySets addObjectsFromArray:?];
  }
}

- (void)setFetchPropertySets:(id)a3
{
  propertySets = self->_propertySets;
  v5 = a3;
  [(NSMutableSet *)propertySets removeAllObjects];
  [(NSMutableSet *)self->_propertySets addObjectsFromArray:v5];
}

- (void)mergeWithFetchOptions:(id)a3
{
  v46 = a3;
  v4 = PHPredicateByCombiningPredicatesWithAnd;
  v5 = [(PHFetchOptions *)self predicate];
  v6 = [v46 predicate];
  v7 = v4[2](v4, v5, v6);

  v8 = PHPredicateByCombiningPredicatesWithAnd;
  v9 = [(PHFetchOptions *)self internalPredicate];
  v10 = [v46 internalPredicate];
  v11 = v8[2](v8, v9, v10);

  [(PHFetchOptions *)self setPredicate:v7];
  [(PHFetchOptions *)self setInternalPredicate:v11];
  v12 = PHPredicateByCombiningPredicatesWithOr;
  v13 = [(PHFetchOptions *)self internalInclusionPredicate];
  v14 = [v46 internalInclusionPredicate];
  v15 = v12[2](v12, v13, v14);

  [(PHFetchOptions *)self setInternalInclusionPredicate:v15];
  v16 = [v46 fetchPropertySets];
  v17 = [v16 count];

  if (v17)
  {
    v18 = [v46 fetchPropertySets];
    [(PHFetchOptions *)self addFetchPropertySets:v18];
  }

  v19 = [v46 sortDescriptors];

  if (v19)
  {
    v20 = [v46 sortDescriptors];
    [(PHFetchOptions *)self setSortDescriptors:v20];
  }

  v21 = [v46 internalSortDescriptors];

  if (v21)
  {
    v22 = [v46 internalSortDescriptors];
    [(PHFetchOptions *)self setInternalSortDescriptors:v22];
  }

  v23 = [v46 transientIdentifier];

  if (v23)
  {
    v24 = [v46 transientIdentifier];
    [(PHFetchOptions *)self setTransientIdentifier:v24];
  }

  v25 = [v46 customObjectIDSortOrder];

  if (v25)
  {
    v26 = [v46 customObjectIDSortOrder];
    [(PHFetchOptions *)self setCustomObjectIDSortOrder:v26];
  }

  v27 = v46;
  if (v46[42])
  {
    -[PHFetchOptions setMinimumVerifiedFaceCount:](self, "setMinimumVerifiedFaceCount:", [v46 minimumVerifiedFaceCount]);
    v27 = v46;
  }

  if (v27[43])
  {
    -[PHFetchOptions setMinimumUnverifiedFaceCount:](self, "setMinimumUnverifiedFaceCount:", [v46 minimumUnverifiedFaceCount]);
    v27 = v46;
  }

  if ([v27 includeOnlyFacesNeedingFaceCrop])
  {
    [(PHFetchOptions *)self setIncludeOnlyFacesNeedingFaceCrop:1];
  }

  v28 = [v46 photoLibrary];

  if (v28)
  {
    v29 = [v46 photoLibrary];
    [(PHFetchOptions *)self setPhotoLibrary:v29];
  }

  v30 = [v46 verifiedPersonTypes];

  if (v30)
  {
    v31 = [v46 verifiedPersonTypes];
    [(PHFetchOptions *)self setVerifiedPersonTypes:v31];
  }

  v32 = [v46 changeDetectionCriteria];

  if (v32)
  {
    v33 = [(PHFetchOptions *)self changeDetectionCriteria];
    v34 = [v46 changeDetectionCriteria];
    if (v33)
    {
      v35 = [v33 changeDetectionCriteriaByAddingChangeDetectionCriteria:v34];
      [(PHFetchOptions *)self setChangeDetectionCriteria:v35];
    }

    else
    {
      [(PHFetchOptions *)self setChangeDetectionCriteria:v34];
    }
  }

  v36 = v46;
  if (v46[6])
  {
    -[PHFetchOptions setCurationType:](self, "setCurationType:", [v46 curationType]);
    v36 = v46;
  }

  if (v36[7])
  {
    -[PHFetchOptions setWantsIncrementalChangeDetails:](self, "setWantsIncrementalChangeDetails:", [v46 wantsIncrementalChangeDetails]);
    v36 = v46;
  }

  if (v36[2])
  {
    -[PHFetchOptions setIncludeAllBurstAssets:](self, "setIncludeAllBurstAssets:", [v46 includeAllBurstAssets]);
    v36 = v46;
  }

  if (v36[1])
  {
    -[PHFetchOptions setIncludeHiddenAssets:](self, "setIncludeHiddenAssets:", [v46 includeHiddenAssets]);
    v36 = v46;
  }

  if (v36[8])
  {
    -[PHFetchOptions setChunkSizeForFetch:](self, "setChunkSizeForFetch:", [v46 chunkSizeForFetch]);
    v36 = v46;
  }

  if (v36[9])
  {
    -[PHFetchOptions setCacheSizeForFetch:](self, "setCacheSizeForFetch:", [v46 cacheSizeForFetch]);
    v36 = v46;
  }

  if (v36[4])
  {
    -[PHFetchOptions setFetchLimit:](self, "setFetchLimit:", [v46 fetchLimit]);
    v36 = v46;
  }

  if (v36[5])
  {
    -[PHFetchOptions setFetchOffset:](self, "setFetchOffset:", [v46 fetchOffset]);
    v36 = v46;
  }

  if (v36[3])
  {
    -[PHFetchOptions setIncludeAssetSourceTypes:](self, "setIncludeAssetSourceTypes:", [v46 includeAssetSourceTypes]);
    v36 = v46;
  }

  if (v36[11])
  {
    -[PHFetchOptions setIncludeDuplicateAssets:](self, "setIncludeDuplicateAssets:", [v46 includeDuplicateAssets]);
    v36 = v46;
  }

  if (v36[12])
  {
    -[PHFetchOptions setExcludeDuplicateAssetVisibilityStateHidden:](self, "setExcludeDuplicateAssetVisibilityStateHidden:", [v46 excludeDuplicateAssetVisibilityStateHidden]);
    v36 = v46;
  }

  if (v36[13])
  {
    -[PHFetchOptions setIncludeDuplicateAssetVisibilityStateMostRelevant:](self, "setIncludeDuplicateAssetVisibilityStateMostRelevant:", [v46 includeDuplicateAssetVisibilityStateMostRelevant]);
    v36 = v46;
  }

  if (v36[14])
  {
    -[PHFetchOptions setExcludeNonVisibleStackedAssets:](self, "setExcludeNonVisibleStackedAssets:", [v46 excludeNonVisibleStackedAssets]);
    v36 = v46;
  }

  if (v36[15])
  {
    -[PHFetchOptions setIncludeGuestAssets:](self, "setIncludeGuestAssets:", [v46 includeGuestAssets]);
    v36 = v46;
  }

  if (v36[16])
  {
    -[PHFetchOptions setIncludePlaceholderAssets:](self, "setIncludePlaceholderAssets:", [v46 includePlaceholderAssets]);
    v36 = v46;
  }

  if (v36[17])
  {
    -[PHFetchOptions setIncludeCollectionShareAssets:](self, "setIncludeCollectionShareAssets:", [v46 includeCollectionShareAssets]);
    v36 = v46;
  }

  if (v36[18])
  {
    -[PHFetchOptions setIncludePendingMemories:](self, "setIncludePendingMemories:", [v46 includePendingMemories]);
    v36 = v46;
  }

  if (v36[19])
  {
    -[PHFetchOptions setIncludeRejectedMemories:](self, "setIncludeRejectedMemories:", [v46 includeRejectedMemories]);
    v36 = v46;
  }

  if (v36[20])
  {
    -[PHFetchOptions setIncludeLocalMemories:](self, "setIncludeLocalMemories:", [v46 includeLocalMemories]);
    v36 = v46;
  }

  if (v36[21])
  {
    -[PHFetchOptions setIncludeStoryMemories:](self, "setIncludeStoryMemories:", [v46 includeStoryMemories]);
    v36 = v46;
  }

  if (v36[22])
  {
    -[PHFetchOptions setIncludeSourceMemories:](self, "setIncludeSourceMemories:", [v46 includeSourceMemories]);
    v36 = v46;
  }

  if (v36[23])
  {
    -[PHFetchOptions setPersonContext:](self, "setPersonContext:", [v46 personContext]);
    v36 = v46;
  }

  if (v36[24])
  {
    -[PHFetchOptions setSocialGroupContext:](self, "setSocialGroupContext:", [v46 socialGroupContext]);
    v36 = v46;
  }

  if (v36[10])
  {
    -[PHFetchOptions setReverseSortOrder:](self, "setReverseSortOrder:", [v46 reverseSortOrder]);
    v36 = v46;
  }

  if (v36[25])
  {
    -[PHFetchOptions setIncludeTrashedAssets:](self, "setIncludeTrashedAssets:", [v46 includeTrashedAssets]);
    v36 = v46;
  }

  if (v36[26])
  {
    -[PHFetchOptions setIncludeTrashedShares:](self, "setIncludeTrashedShares:", [v46 includeTrashedShares]);
    v36 = v46;
  }

  if (v36[27])
  {
    -[PHFetchOptions setIncludeExpiredShares:](self, "setIncludeExpiredShares:", [v46 includeExpiredShares]);
    v36 = v46;
  }

  if (v36[28])
  {
    -[PHFetchOptions setIncludeExitingShares:](self, "setIncludeExitingShares:", [v46 includeExitingShares]);
    v36 = v46;
  }

  if (v36[29])
  {
    -[PHFetchOptions setIncludePendingShares:](self, "setIncludePendingShares:", [v46 includePendingShares]);
    v36 = v46;
  }

  if (v36[30])
  {
    -[PHFetchOptions setIncludeFavoriteMemoriesCollectionList:](self, "setIncludeFavoriteMemoriesCollectionList:", [v46 includeFavoriteMemoriesCollectionList]);
    v36 = v46;
  }

  if (v36[31])
  {
    -[PHFetchOptions setIncludePlacesSmartAlbum:](self, "setIncludePlacesSmartAlbum:", [v46 includePlacesSmartAlbum]);
    v36 = v46;
  }

  if (v36[32])
  {
    -[PHFetchOptions setIncludeAllPhotosSmartAlbum:](self, "setIncludeAllPhotosSmartAlbum:", [v46 includeAllPhotosSmartAlbum]);
    v36 = v46;
  }

  if (v36[33])
  {
    -[PHFetchOptions setIncludeRecentlyEditedSmartAlbum:](self, "setIncludeRecentlyEditedSmartAlbum:", [v46 includeRecentlyEditedSmartAlbum]);
    v36 = v46;
  }

  if (v36[34])
  {
    -[PHFetchOptions setIncludeScreenRecordingsSmartAlbum:](self, "setIncludeScreenRecordingsSmartAlbum:", [v46 includeScreenRecordingsSmartAlbum]);
    v36 = v46;
  }

  if (v36[35])
  {
    -[PHFetchOptions setIncludeSharedLibrarySharingSuggestionsSmartAlbum:](self, "setIncludeSharedLibrarySharingSuggestionsSmartAlbum:", [v46 includeSharedLibrarySharingSuggestionsSmartAlbum]);
    v36 = v46;
  }

  if (v36[36])
  {
    -[PHFetchOptions setIncludeActionCamVideoSmartAlbum:](self, "setIncludeActionCamVideoSmartAlbum:", [v46 includeActionCamVideoSmartAlbum]);
    v36 = v46;
  }

  if (v36[37])
  {
    -[PHFetchOptions setIncludeProResSmartAlbum:](self, "setIncludeProResSmartAlbum:", [v46 includeProResSmartAlbum]);
    v36 = v46;
  }

  if (v36[38])
  {
    -[PHFetchOptions setIncludeTrashBinAlbum:](self, "setIncludeTrashBinAlbum:", [v46 includeTrashedAssets]);
    v36 = v46;
  }

  if (v36[39])
  {
    -[PHFetchOptions setIncludeRootFolder:](self, "setIncludeRootFolder:", [v46 includeRootFolder]);
    v36 = v46;
  }

  if (v36[40])
  {
    -[PHFetchOptions setExcludeMontageAssets:](self, "setExcludeMontageAssets:", [v46 excludeMontageAssets]);
    v36 = v46;
  }

  if (v36[41])
  {
    -[PHFetchOptions setExcludeScreenshotAssets:](self, "setExcludeScreenshotAssets:", [v46 excludeScreenshotAssets]);
    v36 = v46;
  }

  if (v36[51])
  {
    -[PHFetchOptions setShouldPrefetchCount:](self, "setShouldPrefetchCount:", [v46 shouldPrefetchCount]);
    v36 = v46;
  }

  if (v36[49])
  {
    -[PHFetchOptions setIsExclusivePredicate:](self, "setIsExclusivePredicate:", [v46 isExclusivePredicate]);
    v36 = v46;
  }

  if (v36[52])
  {
    -[PHFetchOptions setHighlightCurationType:](self, "setHighlightCurationType:", [v46 highlightCurationType]);
    v36 = v46;
  }

  if (v36[53])
  {
    -[PHFetchOptions setSharingStream:](self, "setSharingStream:", [v46 sharingStream]);
    v36 = v46;
  }

  if (v36[54])
  {
    -[PHFetchOptions setIncludeUserSmartAlbums:](self, "setIncludeUserSmartAlbums:", [v46 includeUserSmartAlbums]);
    v36 = v46;
  }

  if (v36[44])
  {
    -[PHFetchOptions setIncludeNonvisibleFaces:](self, "setIncludeNonvisibleFaces:", [v46 includeNonvisibleFaces]);
    v36 = v46;
  }

  if (v36[47])
  {
    -[PHFetchOptions setIncludeOnlyFacesWithFaceprints:](self, "setIncludeOnlyFacesWithFaceprints:", [v46 includeOnlyFacesWithFaceprints]);
    v36 = v46;
  }

  if (v36[48])
  {
    -[PHFetchOptions setIncludeOnlyFacesInFaceGroups:](self, "setIncludeOnlyFacesInFaceGroups:", [v46 includeOnlyFacesInFaceGroups]);
    v36 = v46;
  }

  if (v36[45])
  {
    -[PHFetchOptions setIncludeOnlyPersonsWithVisibleKeyFaces:](self, "setIncludeOnlyPersonsWithVisibleKeyFaces:", [v46 includeOnlyPersonsWithVisibleKeyFaces]);
    v36 = v46;
  }

  if (v36[55])
  {
    -[PHFetchOptions setIncludeOnlyAssetsAllowedForAnalysis:](self, "setIncludeOnlyAssetsAllowedForAnalysis:", [v46 includeOnlyAssetsAllowedForAnalysis]);
    v36 = v46;
  }

  if (v36[56])
  {
    -[PHFetchOptions setIncludeOnlyContentContributedByCurrentUser:](self, "setIncludeOnlyContentContributedByCurrentUser:", [v46 includeOnlyContentContributedByCurrentUser]);
    v36 = v46;
  }

  if (v36[57])
  {
    -[PHFetchOptions setIncludeBothPrivateAssetsAndSharedContentContributedByCurrentUser:](self, "setIncludeBothPrivateAssetsAndSharedContentContributedByCurrentUser:", [v46 includeBothPrivateAssetsAndSharedContentContributedByCurrentUser]);
    v36 = v46;
  }

  v37 = [v36 importantFetchName];

  if (v37)
  {
    v38 = [v46 importantFetchName];
    [(PHFetchOptions *)self setImportantFetchName:v38];
  }

  v39 = [v46 includedDetectionTypes];

  if (v39)
  {
    v40 = [v46 includedDetectionTypes];
    [(PHFetchOptions *)self setIncludedDetectionTypes:v40];
  }

  v41 = v46;
  if (v46[59])
  {
    -[PHFetchOptions setIncludeTorsoAndFaceDetectionData:](self, "setIncludeTorsoAndFaceDetectionData:", [v46 includeTorsoAndFaceDetectionData]);
    v41 = v46;
  }

  if (v41[60])
  {
    -[PHFetchOptions setIncludeOnlyTorsoDetectionData:](self, "setIncludeOnlyTorsoDetectionData:", [v46 includeOnlyTorsoDetectionData]);
    v41 = v46;
  }

  if (v41[61])
  {
    -[PHFetchOptions setIncludeTorsoOnlyPerson:](self, "setIncludeTorsoOnlyPerson:", [v46 includeTorsoOnlyPerson]);
    v41 = v46;
  }

  if (v41[62])
  {
    -[PHFetchOptions setIncludeDuplicatesAlbums:](self, "setIncludeDuplicatesAlbums:", [v46 includeDuplicatesAlbums]);
    v41 = v46;
  }

  if (v41[63])
  {
    -[PHFetchOptions setIncludeMediaAnalysisProcessingRangeTypes:](self, "setIncludeMediaAnalysisProcessingRangeTypes:", [v46 includeMediaAnalysisProcessingRangeTypes]);
    v41 = v46;
  }

  if (v41[66])
  {
    -[PHFetchOptions setSharingFilter:](self, "setSharingFilter:", [v46 sharingFilter]);
    v41 = v46;
  }

  if (v41[67])
  {
    -[PHFetchOptions setUseNoIndexOnSharingFilter:](self, "setUseNoIndexOnSharingFilter:", [v46 useNoIndexOnSharingFilter]);
    v41 = v46;
  }

  if (v41[64])
  {
    -[PHFetchOptions setSuppressSlowFetchReports:](self, "setSuppressSlowFetchReports:", [v46 suppressSlowFetchReports]);
    v41 = v46;
  }

  if (v41[65])
  {
    -[PHFetchOptions setReverseDefaultSortDescriptors:](self, "setReverseDefaultSortDescriptors:", [v46 reverseDefaultSortDescriptors]);
    v41 = v46;
  }

  v42 = [v41 relatedEntityName];

  if (v42)
  {
    v43 = [v46 relatedEntityName];
    [(PHFetchOptions *)self setRelatedEntityName:v43];
  }

  v44 = [v46 relatedRelationshipProperty];

  if (v44)
  {
    v45 = [v46 relatedRelationshipProperty];
    [(PHFetchOptions *)self setRelatedRelationshipProperty:v45];
  }

  if (v46[68])
  {
    -[PHFetchOptions setExcludeSensitiveAndUnprocessedAssets:](self, "setExcludeSensitiveAndUnprocessedAssets:", [v46 excludeSensitiveAndUnprocessedAssets]);
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  objc_opt_class();
  v4 = objc_opt_new();
  v5 = [(PHFetchOptions *)self predicate];
  v6 = [v5 copy];
  [v4 setPredicate:v6];

  v7 = [(PHFetchOptions *)self sortDescriptors];
  v8 = [v7 copy];
  [v4 setSortDescriptors:v8];

  v9 = [(PHFetchOptions *)self internalPredicate];
  v10 = [v9 copy];
  [v4 setInternalPredicate:v10];

  v11 = [(PHFetchOptions *)self internalInclusionPredicate];
  v12 = [v11 copy];
  [v4 setInternalInclusionPredicate:v12];

  v13 = [(PHFetchOptions *)self internalSortDescriptors];
  v14 = [v13 copy];
  [v4 setInternalSortDescriptors:v14];

  v15 = [(PHFetchOptions *)self fetchPropertySets];
  [v4 setFetchPropertySets:v15];

  v16 = [(PHFetchOptions *)self transientIdentifier];
  [v4 setTransientIdentifier:v16];

  v17 = [(PHFetchOptions *)self customObjectIDSortOrder];
  [v4 setCustomObjectIDSortOrder:v17];

  v18 = [(PHFetchOptions *)self photoLibrary];
  [v4 setPhotoLibrary:v18];

  v19 = [(PHFetchOptions *)self verifiedPersonTypes];
  v20 = [v19 copy];
  [v4 setVerifiedPersonTypes:v20];

  v21 = [(PHFetchOptions *)self changeDetectionCriteria];
  v22 = [v21 copy];
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

+ (id)fetchOptionsCopyFromNullableFetchOptions:(id)a3 photoLibrary:(id)a4
{
  v5 = a3;
  v6 = a4;
  if (v5)
  {
    v7 = [v5 copy];
  }

  else
  {
    v7 = objc_alloc_init(PHFetchOptions);
  }

  v8 = v7;
  if (v6)
  {
    [(PHFetchOptions *)v7 setPhotoLibrary:v6];
  }

  return v8;
}

+ (id)effectivePhotoLibraryForFetchOptions:(id)a3 object:(id)a4
{
  v5 = a3;
  v6 = [a4 photoLibrary];
  if (!v6)
  {
    v6 = [v5 photoLibrary];
    if (!v6)
    {
      v6 = +[PHPhotoLibrary sharedPhotoLibrary];
    }
  }

  v7 = v6;

  return v7;
}

+ (PHFetchOptions)fetchOptionsWithPhotoLibrary:(id)a3 orObject:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = objc_alloc_init(PHFetchOptions);
  v8 = v7;
  if (v5)
  {
    [(PHFetchOptions *)v7 setPhotoLibrary:v5];
  }

  else
  {
    v9 = [v6 photoLibrary];
    [(PHFetchOptions *)v8 setPhotoLibrary:v9];
  }

  return v8;
}

+ (PHFetchOptions)fetchOptionsWithInclusiveDefaultsForPhotoLibrary:(id)a3
{
  v3 = [a3 librarySpecificFetchOptions];
  [v3 setIncludeHiddenAssets:1];
  [v3 setIncludeAllBurstAssets:1];

  return v3;
}

+ (PHFetchOptions)fetchOptionsWithInclusiveDefaults
{
  v3 = +[PHPhotoLibrary sharedPhotoLibrary];
  v4 = [a1 fetchOptionsWithInclusiveDefaultsForPhotoLibrary:v3];

  return v4;
}

@end