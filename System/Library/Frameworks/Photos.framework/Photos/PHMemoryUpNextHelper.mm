@interface PHMemoryUpNextHelper
+ (BOOL)_hasInvalidMemoryTriggerForMemory:(id)a3;
+ (BOOL)_isAcceptableUserFeedbackForMemory:(id)a3 keyAsset:(id)a4 userFeedbackCalculator:(id)a5;
+ (BOOL)_isMomentFetchResult:(id)a3 overlappingWithFetchResults:(id)a4;
+ (BOOL)isMomentFetchResult:(id)a3 overlappingWithFetchResult:(id)a4;
+ (id)_memoryTriggerTypesToAvoid;
+ (id)fetchFallbackMemoriesForMemory:(id)a3 targetCount:(unint64_t)a4 memoryLocalIdentifiersToAvoid:(id)a5 sharingFilter:(unsigned __int16)a6 error:(id *)a7;
+ (id)fetchFallbackMemoryCandidatesInPhotoLibrary:(id)a3 memoryLocalIdentifiersToAvoid:(id)a4 sharingFilter:(unsigned __int16)a5;
@end

@implementation PHMemoryUpNextHelper

+ (BOOL)_isAcceptableUserFeedbackForMemory:(id)a3 keyAsset:(id)a4 userFeedbackCalculator:(id)a5
{
  v30 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a4;
  v24 = a5;
  v9 = [v7 photoLibrary];
  v10 = [v9 librarySpecificFetchOptions];
  [v10 setIncludedDetectionTypes:&unk_1F102DE98];
  v11 = [PHPerson fetchPersonsInAsset:v8 options:v10];
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

        v18 = [*(*(&v25 + 1) + 8 * v17) uuid];
        [v12 addObject:v18];

        ++v17;
      }

      while (v15 != v17);
      v15 = [v13 countByEnumeratingWithState:&v25 objects:v29 count:16];
    }

    while (v15);
  }

  v19 = [v8 uuid];
  v20 = [v7 blockableFeatures];
  [v24 scoreForKeyAssetUUID:v19 personsUUIDsInKeyAsset:v12 memoryFeatures:v20];
  v22 = v21;

  LOBYTE(v19) = [PHUserFeedbackCalculator score:v22 meetsScoreThreshold:-0.1];
  return v19;
}

+ (id)fetchFallbackMemoryCandidatesInPhotoLibrary:(id)a3 memoryLocalIdentifiersToAvoid:(id)a4 sharingFilter:(unsigned __int16)a5
{
  v5 = a5;
  v25[2] = *MEMORY[0x1E69E9840];
  v7 = a4;
  v8 = [a3 librarySpecificFetchOptions];
  [v8 setWantsIncrementalChangeDetails:0];
  [v8 setIncludePendingMemories:1];
  v9 = [MEMORY[0x1E696AEB0] sortDescriptorWithKey:@"creationDate" ascending:0];
  v25[0] = v9;
  v10 = [MEMORY[0x1E696AEB0] sortDescriptorWithKey:@"objectID" ascending:0];
  v25[1] = v10;
  v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v25 count:2];
  [v8 setSortDescriptors:v11];

  [v8 setSharingFilter:v5];
  v12 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v13 = [MEMORY[0x1E696AE18] predicateWithFormat:@"NOT (localIdentifier IN %@)", v7];

  [v12 addObject:v13];
  v14 = [MEMORY[0x1E696AE18] predicateWithFormat:@"rejected == NO"];
  [v12 addObject:v14];

  v15 = [MEMORY[0x1E695DF00] date];
  v16 = [v15 dateByAddingTimeInterval:-31536000.0];

  v17 = [MEMORY[0x1E696AE18] predicateWithFormat:@"creationDate > %@", v16];
  [v12 addObject:v17];

  v18 = [MEMORY[0x1E696AE18] predicateWithFormat:@"NOT (category IN %@)", &unk_1F102DE80];
  [v12 addObject:v18];

  v19 = [MEMORY[0x1E696AB28] andPredicateWithSubpredicates:v12];
  [v8 setPredicate:v19];

  v20 = [PHAssetCollection fetchAssetCollectionsWithType:4 subtype:0x7FFFFFFFFFFFFFFFLL options:v8];
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

+ (BOOL)_hasInvalidMemoryTriggerForMemory:(id)a3
{
  v4 = a3;
  [v4 photosGraphVersion];
  if (PLMemoriesAlgorithmsVersionFromPhotosGraphVersion() >= 0x301)
  {
    v6 = [v4 photosGraphProperties];
    v7 = [v6 objectForKeyedSubscript:@"triggerTypes"];

    if ([v7 count])
    {
      v8 = [MEMORY[0x1E695DFD8] setWithArray:v7];
      v9 = [a1 _memoryTriggerTypesToAvoid];
      v5 = [v8 intersectsSet:v9];
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

+ (BOOL)_isMomentFetchResult:(id)a3 overlappingWithFetchResults:(id)a4
{
  v18 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v6 = a4;
  v7 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
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
          objc_enumerationMutation(v6);
        }

        if ([objc_opt_class() isMomentFetchResult:v5 overlappingWithFetchResult:{*(*(&v13 + 1) + 8 * i), v13}])
        {
          v11 = 1;
          goto LABEL_11;
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
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

+ (BOOL)isMomentFetchResult:(id)a3 overlappingWithFetchResult:(id)a4
{
  v23 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = a4;
  v7 = [v6 count];
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
  v9 = [v5 fetchedObjectIDs];
  v10 = [v9 countByEnumeratingWithState:&v18 objects:v22 count:16];
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
          objc_enumerationMutation(v9);
        }

        v15 = *(*(&v18 + 1) + 8 * i);
        v16 = [v6 fetchedObjectIDs];
        LODWORD(v15) = [v16 containsObject:v15];

        v11 += v15;
        if (v11 == v12)
        {
          LOBYTE(v10) = 1;
          goto LABEL_14;
        }
      }

      v10 = [v9 countByEnumeratingWithState:&v18 objects:v22 count:16];
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

+ (id)fetchFallbackMemoriesForMemory:(id)a3 targetCount:(unint64_t)a4 memoryLocalIdentifiersToAvoid:(id)a5 sharingFilter:(unsigned __int16)a6 error:(id *)a7
{
  v7 = a6;
  v132 = *MEMORY[0x1E69E9840];
  v10 = a3;
  v11 = a5;
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
  v17 = [v10 photoLibrary];
  v18 = objc_alloc(MEMORY[0x1E695DF70]);
  v106 = a1;
  v19 = [a1 fetchFallbackMemoryCandidatesInPhotoLibrary:v17 memoryLocalIdentifiersToAvoid:v11 sharingFilter:v7];
  v20 = [v19 fetchedObjects];
  v21 = [v18 initWithArray:v20];

  v22 = objc_alloc(MEMORY[0x1E69C0838]);
  v23 = [v10 localIdentifier];
  v24 = [v22 initWithSeed:{objc_msgSend(v23, "hash")}];

  v97 = v24;
  PFMutableArrayShuffleWithRandomNumberGenerator();
  v25 = [v17 librarySpecificFetchOptions];
  v26 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v92 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K != %d", @"category", 23];
  [v26 addObject:?];
  v91 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K != %d", @"category", 8];
  [v26 addObject:?];
  v95 = v26;
  v27 = [MEMORY[0x1E696AB28] andPredicateWithSubpredicates:v26];
  [v25 setPredicate:v27];

  v98 = v11;
  v96 = v25;
  v28 = [PHAssetCollection fetchAssetCollectionsWithLocalIdentifiers:v11 options:v25];
  v29 = [v28 count];
  v30 = [objc_alloc(MEMORY[0x1E695DFA8]) initWithCapacity:v29];
  v108 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  v104 = v17;
  v112 = [v17 librarySpecificFetchOptions];
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
        v37 = [PHAsset fetchKeyCuratedAssetInAssetCollection:v35 referenceAsset:0 options:v112];
        v38 = [v37 firstObject];

        if (v38)
        {
          v39 = [v38 localIdentifier];
          [v30 addObject:v39];
        }

        objc_autoreleasePoolPop(v36);
      }

      v32 = [obj countByEnumeratingWithState:&v117 objects:v131 count:16];
    }

    while (v32);
  }

  v107 = v30;

  v102 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:a4];
  v40 = [v104 librarySpecificFetchOptions];
  v99 = v10;
  v41 = [PHAssetCollection fetchMomentsBackingMemory:v10 options:v40];

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
  v44 = v106;
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
        v50 = [v48 title];
        v51 = [v50 lowercaseString];

        if ([v45 containsObject:v51])
        {
          v52 = PLMemoriesGetLog();
          if (!os_log_type_enabled(v52, OS_LOG_TYPE_DEFAULT))
          {
            goto LABEL_35;
          }

          v53 = [v48 localIdentifier];
          v54 = [v48 title];
          *buf = 138412546;
          v123 = v53;
          v124 = 2112;
          v125 = v54;
          v55 = v52;
          v56 = "[PHMemoryUpNextHelper] Same Title (ignoring case), skip memory:%@ - %@";
LABEL_26:
          _os_log_impl(&dword_19C86F000, v55, OS_LOG_TYPE_DEFAULT, v56, buf, 0x16u);

          goto LABEL_35;
        }

        if ([v44 _hasInvalidMemoryTriggerForMemory:v48])
        {
          v52 = PLMemoriesGetLog();
          if (!os_log_type_enabled(v52, OS_LOG_TYPE_DEFAULT))
          {
            goto LABEL_35;
          }

          v53 = [v48 localIdentifier];
          v54 = [v48 title];
          *buf = 138412546;
          v123 = v53;
          v124 = 2112;
          v125 = v54;
          v55 = v52;
          v56 = "[PHMemoryUpNextHelper] invalid trigger type, skip memory:%@ - %@";
          goto LABEL_26;
        }

        v57 = [v42 librarySpecificFetchOptions];
        v58 = [PHAsset fetchKeyCuratedAssetInAssetCollection:v48 referenceAsset:0 options:v57];
        v52 = [v58 firstObject];

        v59 = [v52 localIdentifier];
        if (v52 && ![v107 containsObject:v59])
        {
          if ([v44 _isAcceptableUserFeedbackForMemory:v48 keyAsset:v52 userFeedbackCalculator:v105])
          {
            v65 = [v42 librarySpecificFetchOptions];
            v66 = [PHAsset fetchAssetsInAssetCollection:v48 options:v65];
            v67 = [v66 count];

            if (v67 > 0xC)
            {
              v70 = [v104 librarySpecificFetchOptions];
              v71 = [PHAssetCollection fetchMomentsBackingMemory:v48 options:v70];

              v44 = v106;
              v103 = v71;
              if ([v106 _isMomentFetchResult:v71 overlappingWithFetchResults:v101])
              {
                v72 = PLMemoriesGetLog();
                if (os_log_type_enabled(v72, OS_LOG_TYPE_DEFAULT))
                {
                  v73 = [v48 localIdentifier];
                  v74 = [v48 title];
                  *buf = 138412546;
                  v123 = v73;
                  v124 = 2112;
                  v125 = v74;
                  _os_log_impl(&dword_19C86F000, v72, OS_LOG_TYPE_DEFAULT, "[PHMemoryUpNextHelper] Overlapped moments, skip memory:%@ - %@", buf, 0x16u);
                }

                v42 = v104;
              }

              else
              {
                [v107 addObject:v59];
                [v108 addObject:v51];
                [v102 addObject:v48];
                [v101 addObject:v71];
                v75 = PLMemoriesGetLog();
                if (os_log_type_enabled(v75, OS_LOG_TYPE_DEFAULT))
                {
                  v76 = [v48 localIdentifier];
                  v77 = [v48 title];
                  *buf = 138412546;
                  v123 = v76;
                  v124 = 2112;
                  v125 = v77;
                  _os_log_impl(&dword_19C86F000, v75, OS_LOG_TYPE_DEFAULT, "[PHMemoryUpNextHelper] Found 1 fallback memory:%@ - %@", buf, 0x16u);
                }

                v42 = v104;
                if ([v102 count] == a4)
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
              v68 = [v48 localIdentifier];
              v69 = [v48 title];
              *buf = 134218754;
              v123 = v67;
              v124 = 2048;
              v125 = 13;
              v126 = 2112;
              v127 = v68;
              v128 = 2112;
              v129 = v69;
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

          v61 = [v48 localIdentifier];
          v62 = [v48 title];
          *buf = 138412546;
          v123 = v61;
          v124 = 2112;
          v125 = v62;
          v63 = v60;
          v64 = "[PHMemoryUpNextHelper] UserFeedbackScore below threshold, skip memory:%@ - %@";
LABEL_31:
          _os_log_impl(&dword_19C86F000, v63, OS_LOG_TYPE_DEFAULT, v64, buf, 0x16u);

LABEL_32:
          v44 = v106;
          goto LABEL_33;
        }

        v60 = PLMemoriesGetLog();
        if (os_log_type_enabled(v60, OS_LOG_TYPE_DEFAULT))
        {
          v61 = [v48 localIdentifier];
          v62 = [v48 title];
          *buf = 138412546;
          v123 = v61;
          v124 = 2112;
          v125 = v62;
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