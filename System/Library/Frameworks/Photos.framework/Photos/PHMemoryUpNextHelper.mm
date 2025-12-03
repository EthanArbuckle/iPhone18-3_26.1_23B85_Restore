@interface PHMemoryUpNextHelper
+ (BOOL)_hasInvalidMemoryTriggerForMemory:(id)memory;
+ (BOOL)_isAcceptableUserFeedbackForMemory:(id)memory keyAsset:(id)asset userFeedbackCalculator:(id)calculator;
+ (BOOL)_isMomentFetchResult:(id)result overlappingWithFetchResults:(id)results;
+ (BOOL)isMomentFetchResult:(id)result overlappingWithFetchResult:(id)fetchResult;
+ (id)_memoryTriggerTypesToAvoid;
+ (id)fetchFallbackMemoriesForMemory:(id)memory targetCount:(unint64_t)count memoryLocalIdentifiersToAvoid:(id)avoid sharingFilter:(unsigned __int16)filter error:(id *)error;
+ (id)fetchFallbackMemoryCandidatesInPhotoLibrary:(id)library memoryLocalIdentifiersToAvoid:(id)avoid sharingFilter:(unsigned __int16)filter;
@end

@implementation PHMemoryUpNextHelper

+ (BOOL)_isAcceptableUserFeedbackForMemory:(id)memory keyAsset:(id)asset userFeedbackCalculator:(id)calculator
{
  v30 = *MEMORY[0x1E69E9840];
  memoryCopy = memory;
  assetCopy = asset;
  calculatorCopy = calculator;
  photoLibrary = [memoryCopy photoLibrary];
  librarySpecificFetchOptions = [photoLibrary librarySpecificFetchOptions];
  [librarySpecificFetchOptions setIncludedDetectionTypes:&unk_1F102DE98];
  v11 = [PHPerson fetchPersonsInAsset:assetCopy options:librarySpecificFetchOptions];
  v12 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v11, "count")}];
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v13 = v11;
  v14 = [v13 countByEnumeratingWithState:&v25 objects:v29 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v26;
    do
    {
      v17 = 0;
      do
      {
        if (*v26 != v16)
        {
          objc_enumerationMutation(v13);
        }

        uuid = [*(*(&v25 + 1) + 8 * v17) uuid];
        [v12 addObject:uuid];

        ++v17;
      }

      while (v15 != v17);
      v15 = [v13 countByEnumeratingWithState:&v25 objects:v29 count:16];
    }

    while (v15);
  }

  uuid2 = [assetCopy uuid];
  blockableFeatures = [memoryCopy blockableFeatures];
  [calculatorCopy scoreForKeyAssetUUID:uuid2 personsUUIDsInKeyAsset:v12 memoryFeatures:blockableFeatures];
  v22 = v21;

  LOBYTE(uuid2) = [PHUserFeedbackCalculator score:v22 meetsScoreThreshold:-0.1];
  return uuid2;
}

+ (id)fetchFallbackMemoryCandidatesInPhotoLibrary:(id)library memoryLocalIdentifiersToAvoid:(id)avoid sharingFilter:(unsigned __int16)filter
{
  filterCopy = filter;
  v25[2] = *MEMORY[0x1E69E9840];
  avoidCopy = avoid;
  librarySpecificFetchOptions = [library librarySpecificFetchOptions];
  [librarySpecificFetchOptions setWantsIncrementalChangeDetails:0];
  [librarySpecificFetchOptions setIncludePendingMemories:1];
  v9 = [MEMORY[0x1E696AEB0] sortDescriptorWithKey:@"creationDate" ascending:0];
  v25[0] = v9;
  v10 = [MEMORY[0x1E696AEB0] sortDescriptorWithKey:@"objectID" ascending:0];
  v25[1] = v10;
  v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v25 count:2];
  [librarySpecificFetchOptions setSortDescriptors:v11];

  [librarySpecificFetchOptions setSharingFilter:filterCopy];
  v12 = objc_alloc_init(MEMORY[0x1E695DF70]);
  avoidCopy = [MEMORY[0x1E696AE18] predicateWithFormat:@"NOT (localIdentifier IN %@)", avoidCopy];

  [v12 addObject:avoidCopy];
  v14 = [MEMORY[0x1E696AE18] predicateWithFormat:@"rejected == NO"];
  [v12 addObject:v14];

  date = [MEMORY[0x1E695DF00] date];
  v16 = [date dateByAddingTimeInterval:-31536000.0];

  v17 = [MEMORY[0x1E696AE18] predicateWithFormat:@"creationDate > %@", v16];
  [v12 addObject:v17];

  v18 = [MEMORY[0x1E696AE18] predicateWithFormat:@"NOT (category IN %@)", &unk_1F102DE80];
  [v12 addObject:v18];

  v19 = [MEMORY[0x1E696AB28] andPredicateWithSubpredicates:v12];
  [librarySpecificFetchOptions setPredicate:v19];

  v20 = [PHAssetCollection fetchAssetCollectionsWithType:4 subtype:0x7FFFFFFFFFFFFFFFLL options:librarySpecificFetchOptions];
  v21 = PLMemoriesGetLog();
  if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    v24 = [v20 count];
    _os_log_impl(&dword_19C86F000, v21, OS_LOG_TYPE_DEFAULT, "[PHMemoryUpNextHelper] Found %lu fallback memory candidates", buf, 0xCu);
  }

  return v20;
}

+ (id)_memoryTriggerTypesToAvoid
{
  if (_memoryTriggerTypesToAvoid_onceToken != -1)
  {
    dispatch_once(&_memoryTriggerTypesToAvoid_onceToken, &__block_literal_global_9380);
  }

  v3 = _memoryTriggerTypesToAvoid_triggerTypesToAvoid;

  return v3;
}

uint64_t __50__PHMemoryUpNextHelper__memoryTriggerTypesToAvoid__block_invoke()
{
  _memoryTriggerTypesToAvoid_triggerTypesToAvoid = [MEMORY[0x1E695DFD8] setWithObjects:{&unk_1F102C638, &unk_1F102C650, &unk_1F102C668, 0}];

  return MEMORY[0x1EEE66BB8]();
}

+ (BOOL)_hasInvalidMemoryTriggerForMemory:(id)memory
{
  memoryCopy = memory;
  [memoryCopy photosGraphVersion];
  if (PLMemoriesAlgorithmsVersionFromPhotosGraphVersion() >= 0x301)
  {
    photosGraphProperties = [memoryCopy photosGraphProperties];
    v7 = [photosGraphProperties objectForKeyedSubscript:@"triggerTypes"];

    if ([v7 count])
    {
      v8 = [MEMORY[0x1E695DFD8] setWithArray:v7];
      _memoryTriggerTypesToAvoid = [self _memoryTriggerTypesToAvoid];
      v5 = [v8 intersectsSet:_memoryTriggerTypesToAvoid];
    }

    else
    {
      v5 = 0;
    }
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

+ (BOOL)_isMomentFetchResult:(id)result overlappingWithFetchResults:(id)results
{
  v18 = *MEMORY[0x1E69E9840];
  resultCopy = result;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  resultsCopy = results;
  v7 = [resultsCopy countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v14;
    while (2)
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v14 != v9)
        {
          objc_enumerationMutation(resultsCopy);
        }

        if ([objc_opt_class() isMomentFetchResult:resultCopy overlappingWithFetchResult:{*(*(&v13 + 1) + 8 * i), v13}])
        {
          v11 = 1;
          goto LABEL_11;
        }
      }

      v8 = [resultsCopy countByEnumeratingWithState:&v13 objects:v17 count:16];
      if (v8)
      {
        continue;
      }

      break;
    }
  }

  v11 = 0;
LABEL_11:

  return v11;
}

+ (BOOL)isMomentFetchResult:(id)result overlappingWithFetchResult:(id)fetchResult
{
  v23 = *MEMORY[0x1E69E9840];
  resultCopy = result;
  fetchResultCopy = fetchResult;
  v7 = [fetchResultCopy count];
  v18 = 0u;
  v19 = 0u;
  if ((v7 - 1) / 3uLL >= 2)
  {
    v8 = 2;
  }

  else
  {
    v8 = (v7 - 1) / 3uLL;
  }

  v20 = 0uLL;
  v21 = 0uLL;
  fetchedObjectIDs = [resultCopy fetchedObjectIDs];
  v10 = [fetchedObjectIDs countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v10)
  {
    v11 = 0;
    v12 = v8 + 1;
    v13 = *v19;
    while (2)
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v19 != v13)
        {
          objc_enumerationMutation(fetchedObjectIDs);
        }

        v15 = *(*(&v18 + 1) + 8 * i);
        fetchedObjectIDs2 = [fetchResultCopy fetchedObjectIDs];
        LODWORD(v15) = [fetchedObjectIDs2 containsObject:v15];

        v11 += v15;
        if (v11 == v12)
        {
          LOBYTE(v10) = 1;
          goto LABEL_14;
        }
      }

      v10 = [fetchedObjectIDs countByEnumeratingWithState:&v18 objects:v22 count:16];
      if (v10)
      {
        continue;
      }

      break;
    }
  }

LABEL_14:

  return v10;
}

+ (id)fetchFallbackMemoriesForMemory:(id)memory targetCount:(unint64_t)count memoryLocalIdentifiersToAvoid:(id)avoid sharingFilter:(unsigned __int16)filter error:(id *)error
{
  filterCopy = filter;
  v132 = *MEMORY[0x1E69E9840];
  memoryCopy = memory;
  avoidCopy = avoid;
  v12 = PLMemoriesGetLog();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_19C86F000, v12, OS_LOG_TYPE_DEFAULT, "[PHMemoryUpNextHelper] Start fetching fallback memories", buf, 2u);
  }

  v13 = PLUpNextGetLog();
  v14 = os_signpost_id_generate(v13);
  info = 0;
  mach_timebase_info(&info);
  v15 = v13;
  v16 = v15;
  v94 = v14 - 1;
  if (v14 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v15))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_19C86F000, v16, OS_SIGNPOST_INTERVAL_BEGIN, v14, "PHMemoryUpNextFallbackGenerate", byte_19CB567AE, buf, 2u);
  }

  spid = v14;
  v93 = v16;

  v89 = mach_absolute_time();
  photoLibrary = [memoryCopy photoLibrary];
  v18 = objc_alloc(MEMORY[0x1E695DF70]);
  selfCopy = self;
  v19 = [self fetchFallbackMemoryCandidatesInPhotoLibrary:photoLibrary memoryLocalIdentifiersToAvoid:avoidCopy sharingFilter:filterCopy];
  fetchedObjects = [v19 fetchedObjects];
  v21 = [v18 initWithArray:fetchedObjects];

  v22 = objc_alloc(MEMORY[0x1E69C0838]);
  localIdentifier = [memoryCopy localIdentifier];
  v24 = [v22 initWithSeed:{objc_msgSend(localIdentifier, "hash")}];

  v97 = v24;
  PFMutableArrayShuffleWithRandomNumberGenerator();
  librarySpecificFetchOptions = [photoLibrary librarySpecificFetchOptions];
  v26 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v92 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K != %d", @"category", 23];
  [v26 addObject:?];
  v91 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K != %d", @"category", 8];
  [v26 addObject:?];
  v95 = v26;
  v27 = [MEMORY[0x1E696AB28] andPredicateWithSubpredicates:v26];
  [librarySpecificFetchOptions setPredicate:v27];

  v98 = avoidCopy;
  v96 = librarySpecificFetchOptions;
  v28 = [PHAssetCollection fetchAssetCollectionsWithLocalIdentifiers:avoidCopy options:librarySpecificFetchOptions];
  v29 = [v28 count];
  v30 = [objc_alloc(MEMORY[0x1E695DFA8]) initWithCapacity:v29];
  v108 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  v104 = photoLibrary;
  librarySpecificFetchOptions2 = [photoLibrary librarySpecificFetchOptions];
  v117 = 0u;
  v118 = 0u;
  v119 = 0u;
  v120 = 0u;
  obj = v28;
  v31 = [obj countByEnumeratingWithState:&v117 objects:v131 count:16];
  if (v31)
  {
    v32 = v31;
    v33 = *v118;
    do
    {
      for (i = 0; i != v32; ++i)
      {
        if (*v118 != v33)
        {
          objc_enumerationMutation(obj);
        }

        v35 = *(*(&v117 + 1) + 8 * i);
        v36 = objc_autoreleasePoolPush();
        v37 = [PHAsset fetchKeyCuratedAssetInAssetCollection:v35 referenceAsset:0 options:librarySpecificFetchOptions2];
        firstObject = [v37 firstObject];

        if (firstObject)
        {
          localIdentifier2 = [firstObject localIdentifier];
          [v30 addObject:localIdentifier2];
        }

        objc_autoreleasePoolPop(v36);
      }

      v32 = [obj countByEnumeratingWithState:&v117 objects:v131 count:16];
    }

    while (v32);
  }

  v107 = v30;

  v102 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:count];
  librarySpecificFetchOptions3 = [v104 librarySpecificFetchOptions];
  v99 = memoryCopy;
  v41 = [PHAssetCollection fetchMomentsBackingMemory:memoryCopy options:librarySpecificFetchOptions3];

  v42 = v104;
  v90 = v41;
  v101 = [objc_alloc(MEMORY[0x1E695DF70]) initWithObjects:{v41, 0}];
  v105 = [[PHUserFeedbackCalculator alloc] initWithPhotoLibrary:v104];
  v113 = 0u;
  v114 = 0u;
  v115 = 0u;
  v116 = 0u;
  v109 = v21;
  v43 = [v109 countByEnumeratingWithState:&v113 objects:v130 count:16];
  v44 = selfCopy;
  v45 = v108;
  if (v43)
  {
    v46 = v43;
    v111 = *v114;
    do
    {
      v47 = 0;
      do
      {
        if (*v114 != v111)
        {
          objc_enumerationMutation(v109);
        }

        v48 = *(*(&v113 + 1) + 8 * v47);
        v49 = objc_autoreleasePoolPush();
        title = [v48 title];
        lowercaseString = [title lowercaseString];

        if ([v45 containsObject:lowercaseString])
        {
          firstObject2 = PLMemoriesGetLog();
          if (!os_log_type_enabled(firstObject2, OS_LOG_TYPE_DEFAULT))
          {
            goto LABEL_35;
          }

          localIdentifier3 = [v48 localIdentifier];
          title2 = [v48 title];
          *buf = 138412546;
          v123 = localIdentifier3;
          v124 = 2112;
          v125 = title2;
          v55 = firstObject2;
          v56 = "[PHMemoryUpNextHelper] Same Title (ignoring case), skip memory:%@ - %@";
LABEL_26:
          _os_log_impl(&dword_19C86F000, v55, OS_LOG_TYPE_DEFAULT, v56, buf, 0x16u);

          goto LABEL_35;
        }

        if ([v44 _hasInvalidMemoryTriggerForMemory:v48])
        {
          firstObject2 = PLMemoriesGetLog();
          if (!os_log_type_enabled(firstObject2, OS_LOG_TYPE_DEFAULT))
          {
            goto LABEL_35;
          }

          localIdentifier3 = [v48 localIdentifier];
          title2 = [v48 title];
          *buf = 138412546;
          v123 = localIdentifier3;
          v124 = 2112;
          v125 = title2;
          v55 = firstObject2;
          v56 = "[PHMemoryUpNextHelper] invalid trigger type, skip memory:%@ - %@";
          goto LABEL_26;
        }

        librarySpecificFetchOptions4 = [v42 librarySpecificFetchOptions];
        v58 = [PHAsset fetchKeyCuratedAssetInAssetCollection:v48 referenceAsset:0 options:librarySpecificFetchOptions4];
        firstObject2 = [v58 firstObject];

        localIdentifier4 = [firstObject2 localIdentifier];
        if (firstObject2 && ![v107 containsObject:localIdentifier4])
        {
          if ([v44 _isAcceptableUserFeedbackForMemory:v48 keyAsset:firstObject2 userFeedbackCalculator:v105])
          {
            librarySpecificFetchOptions5 = [v42 librarySpecificFetchOptions];
            v66 = [PHAsset fetchAssetsInAssetCollection:v48 options:librarySpecificFetchOptions5];
            v67 = [v66 count];

            if (v67 > 0xC)
            {
              librarySpecificFetchOptions6 = [v104 librarySpecificFetchOptions];
              v71 = [PHAssetCollection fetchMomentsBackingMemory:v48 options:librarySpecificFetchOptions6];

              v44 = selfCopy;
              v103 = v71;
              if ([selfCopy _isMomentFetchResult:v71 overlappingWithFetchResults:v101])
              {
                v72 = PLMemoriesGetLog();
                if (os_log_type_enabled(v72, OS_LOG_TYPE_DEFAULT))
                {
                  localIdentifier5 = [v48 localIdentifier];
                  title3 = [v48 title];
                  *buf = 138412546;
                  v123 = localIdentifier5;
                  v124 = 2112;
                  v125 = title3;
                  _os_log_impl(&dword_19C86F000, v72, OS_LOG_TYPE_DEFAULT, "[PHMemoryUpNextHelper] Overlapped moments, skip memory:%@ - %@", buf, 0x16u);
                }

                v42 = v104;
              }

              else
              {
                [v107 addObject:localIdentifier4];
                [v108 addObject:lowercaseString];
                [v102 addObject:v48];
                [v101 addObject:v71];
                v75 = PLMemoriesGetLog();
                if (os_log_type_enabled(v75, OS_LOG_TYPE_DEFAULT))
                {
                  localIdentifier6 = [v48 localIdentifier];
                  title4 = [v48 title];
                  *buf = 138412546;
                  v123 = localIdentifier6;
                  v124 = 2112;
                  v125 = title4;
                  _os_log_impl(&dword_19C86F000, v75, OS_LOG_TYPE_DEFAULT, "[PHMemoryUpNextHelper] Found 1 fallback memory:%@ - %@", buf, 0x16u);
                }

                v42 = v104;
                if ([v102 count] == count)
                {

                  objc_autoreleasePoolPop(v49);
                  goto LABEL_55;
                }
              }

              goto LABEL_34;
            }

            v60 = PLMemoriesGetLog();
            if (os_log_type_enabled(v60, OS_LOG_TYPE_DEFAULT))
            {
              localIdentifier7 = [v48 localIdentifier];
              title5 = [v48 title];
              *buf = 134218754;
              v123 = v67;
              v124 = 2048;
              v125 = 13;
              v126 = 2112;
              v127 = localIdentifier7;
              v128 = 2112;
              v129 = title5;
              _os_log_impl(&dword_19C86F000, v60, OS_LOG_TYPE_DEFAULT, "[PHMemoryUpNextHelper] Number of assets (%lu) below threshold (%lu), skip memory:%@ - %@", buf, 0x2Au);
            }

            v42 = v104;
            goto LABEL_32;
          }

          v60 = PLMemoriesGetLog();
          if (!os_log_type_enabled(v60, OS_LOG_TYPE_DEFAULT))
          {
            goto LABEL_33;
          }

          localIdentifier8 = [v48 localIdentifier];
          title6 = [v48 title];
          *buf = 138412546;
          v123 = localIdentifier8;
          v124 = 2112;
          v125 = title6;
          v63 = v60;
          v64 = "[PHMemoryUpNextHelper] UserFeedbackScore below threshold, skip memory:%@ - %@";
LABEL_31:
          _os_log_impl(&dword_19C86F000, v63, OS_LOG_TYPE_DEFAULT, v64, buf, 0x16u);

LABEL_32:
          v44 = selfCopy;
          goto LABEL_33;
        }

        v60 = PLMemoriesGetLog();
        if (os_log_type_enabled(v60, OS_LOG_TYPE_DEFAULT))
        {
          localIdentifier8 = [v48 localIdentifier];
          title6 = [v48 title];
          *buf = 138412546;
          v123 = localIdentifier8;
          v124 = 2112;
          v125 = title6;
          v63 = v60;
          v64 = "[PHMemoryUpNextHelper] nil or same keyAsset, skip memory:%@ - %@";
          goto LABEL_31;
        }

LABEL_33:

LABEL_34:
        v45 = v108;
LABEL_35:

        objc_autoreleasePoolPop(v49);
        ++v47;
      }

      while (v46 != v47);
      v78 = [v109 countByEnumeratingWithState:&v113 objects:v130 count:16];
      v46 = v78;
    }

    while (v78);
  }

LABEL_55:

  v79 = PLMemoriesGetLog();
  if (os_log_type_enabled(v79, OS_LOG_TYPE_DEFAULT))
  {
    v80 = [v102 count];
    *buf = 134218242;
    v123 = v80;
    v124 = 2112;
    v125 = v102;
    _os_log_impl(&dword_19C86F000, v79, OS_LOG_TYPE_DEFAULT, "[PHMemoryUpNextHelper] Found %lu Fallback memories:%@", buf, 0x16u);
  }

  v81 = [[PHManualFetchResult alloc] initWithObjects:v102 photoLibrary:v42 fetchType:@"PHMemory" fetchPropertySets:0 identifier:0 registerIfNeeded:1];
  v82 = mach_absolute_time();
  numer = info.numer;
  denom = info.denom;
  v85 = v93;
  v86 = v85;
  if (v94 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v85))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_19C86F000, v86, OS_SIGNPOST_INTERVAL_END, spid, "PHMemoryUpNextFallbackGenerate", byte_19CB567AE, buf, 2u);
  }

  if (os_log_type_enabled(v86, OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v123 = "PHMemoryUpNextFallbackGenerate";
    v124 = 2048;
    *&v125 = ((((v82 - v89) * numer) / denom) / 1000000.0);
    _os_log_impl(&dword_19C86F000, v86, OS_LOG_TYPE_INFO, "[Performance] %s: %f ms", buf, 0x16u);
  }

  return v81;
}

@end