@interface PHUserFeedbackDataCache
+ (id)_emptyUserFeedbackDataCache;
- (NSDictionary)userFeedbackTypeByPersonUUID;
- (NSSet)areaNamesWithNegativeFeedback;
- (NSSet)dateIntervalsWithNegativeFeedback;
- (NSSet)datesWithNegativeFeedback;
- (NSSet)deniedFeaturedPhotoUUIDs;
- (NSSet)holidayNamesWithNegativeFeedback;
- (NSSet)locationsWithNegativeFeedback;
- (PHUserFeedbackDataCache)initWithPhotoLibrary:(id)library importantPersons:(id)persons;
- (id)_confidentMergeCandidateUUIDsForPerson:(id)person;
- (void)_loadDeniedFeaturedPhotoUUIDsWithPhotoLibrary:(id)library;
- (void)_loadMemoryFeedbackDataWithPhotoLibrary:(id)library;
- (void)_loadPersonFeedbackDataWithPhotoLibrary:(id)library;
- (void)loadDataWithPhotoLibrary:(id)library;
@end

@implementation PHUserFeedbackDataCache

- (void)_loadDeniedFeaturedPhotoUUIDsWithPhotoLibrary:(id)library
{
  v57 = *MEMORY[0x1E69E9840];
  libraryCopy = library;
  selfCopy = self;
  v4 = self->_userFeedbackLogging;
  v5 = os_signpost_id_generate(v4);
  info = 0;
  mach_timebase_info(&info);
  v6 = v4;
  v7 = v6;
  v38 = v5 - 1;
  if (v5 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v6))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_19C86F000, v7, OS_SIGNPOST_INTERVAL_BEGIN, v5, "LoadDeniedFeaturedPhotoUUIDs", byte_19CB567AE, buf, 2u);
  }

  spid = v5;
  v37 = v7;

  v35 = mach_absolute_time();
  librarySpecificFetchOptions = [libraryCopy librarySpecificFetchOptions];
  v9 = [MEMORY[0x1E696AE18] predicateWithFormat:@"state == %d", 4];
  [librarySpecificFetchOptions setPredicate:v9];

  v39 = librarySpecificFetchOptions;
  v10 = [PHSuggestion fetchAllFeaturedStateEnabledSuggestionsWithOptions:librarySpecificFetchOptions];
  v11 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  v46 = 0u;
  v47 = 0u;
  v48 = 0u;
  v49 = 0u;
  obj = v10;
  v12 = [obj countByEnumeratingWithState:&v46 objects:v56 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v47;
    do
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v47 != v14)
        {
          objc_enumerationMutation(obj);
        }

        v16 = *(*(&v46 + 1) + 8 * i);
        v17 = objc_autoreleasePoolPush();
        librarySpecificFetchOptions2 = [libraryCopy librarySpecificFetchOptions];
        v19 = [PHAsset fetchKeyAssetsInAssetCollection:v16 options:librarySpecificFetchOptions2];

        v44 = 0u;
        v45 = 0u;
        v42 = 0u;
        v43 = 0u;
        v20 = v19;
        v21 = [v20 countByEnumeratingWithState:&v42 objects:v55 count:16];
        if (v21)
        {
          v22 = v21;
          v23 = *v43;
          do
          {
            for (j = 0; j != v22; ++j)
            {
              if (*v43 != v23)
              {
                objc_enumerationMutation(v20);
              }

              uuid = [*(*(&v42 + 1) + 8 * j) uuid];
              [v11 addObject:uuid];
            }

            v22 = [v20 countByEnumeratingWithState:&v42 objects:v55 count:16];
          }

          while (v22);
        }

        objc_autoreleasePoolPop(v17);
      }

      v13 = [obj countByEnumeratingWithState:&v46 objects:v56 count:16];
    }

    while (v13);
  }

  [(PHUserFeedbackDataCache *)selfCopy setDeniedFeaturedPhotoUUIDs:v11];
  v26 = PLPhotoKitGetLog();
  if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
  {
    deniedFeaturedPhotoUUIDs = [(PHUserFeedbackDataCache *)selfCopy deniedFeaturedPhotoUUIDs];
    v28 = [deniedFeaturedPhotoUUIDs count];
    *buf = 134217984;
    v52 = v28;
    _os_log_impl(&dword_19C86F000, v26, OS_LOG_TYPE_DEFAULT, "PHUserFeedbackDataCache: Finished loading denied featured photos, negative feedback added for %lu assets.", buf, 0xCu);
  }

  v29 = mach_absolute_time();
  numer = info.numer;
  denom = info.denom;
  v32 = v37;
  v33 = v32;
  if (v38 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v32))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_19C86F000, v33, OS_SIGNPOST_INTERVAL_END, spid, "LoadDeniedFeaturedPhotoUUIDs", byte_19CB567AE, buf, 2u);
  }

  if (os_log_type_enabled(v33, OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v52 = "LoadDeniedFeaturedPhotoUUIDs";
    v53 = 2048;
    v54 = ((((v29 - v35) * numer) / denom) / 1000000.0);
    _os_log_impl(&dword_19C86F000, v33, OS_LOG_TYPE_INFO, "[Performance] %s: %f ms", buf, 0x16u);
  }
}

- (NSSet)deniedFeaturedPhotoUUIDs
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if (!selfCopy->_deniedFeaturedPhotoUUIDs)
  {
    [(PHUserFeedbackDataCache *)selfCopy _loadDeniedFeaturedPhotoUUIDsWithPhotoLibrary:selfCopy->_photoLibrary];
  }

  objc_sync_exit(selfCopy);

  deniedFeaturedPhotoUUIDs = selfCopy->_deniedFeaturedPhotoUUIDs;

  return deniedFeaturedPhotoUUIDs;
}

- (id)_confidentMergeCandidateUUIDsForPerson:(id)person
{
  v40[1] = *MEMORY[0x1E69E9840];
  personCopy = person;
  v5 = self->_userFeedbackLogging;
  v6 = os_signpost_id_generate(v5);
  info = 0;
  mach_timebase_info(&info);
  v7 = v5;
  v8 = v7;
  v9 = v6 - 1;
  if (v6 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v7))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_19C86F000, v8, OS_SIGNPOST_INTERVAL_BEGIN, v6, "MergeCandidateUUIDsForPerson", byte_19CB567AE, buf, 2u);
  }

  v29 = mach_absolute_time();
  v10 = objc_alloc_init(MEMORY[0x1E695DF70]);
  photoLibrary = [personCopy photoLibrary];
  librarySpecificFetchOptions = [photoLibrary librarySpecificFetchOptions];

  v13 = [MEMORY[0x1E696AD98] numberWithShort:{objc_msgSend(personCopy, "detectionType")}];
  v40[0] = v13;
  v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:v40 count:1];
  [librarySpecificFetchOptions setIncludedDetectionTypes:v14];

  [librarySpecificFetchOptions setIncludeOnlyPersonsWithVisibleKeyFaces:1];
  spid = v6;
  if ([personCopy detectionType] == 1)
  {
    v15 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K >= %f", @"mergeCandidateConfidence", 0x3FEA8F5C28F5C28FLL, v6];
    [librarySpecificFetchOptions setPredicate:v15];

    [PHPerson fetchMergeCandidateWithConfidencePersonsForPerson:personCopy options:librarySpecificFetchOptions];
  }

  else
  {
    [PHPerson fetchMergeCandidatePersonsForPerson:personCopy options:librarySpecificFetchOptions];
  }

  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v16 = v31 = 0u;
  v17 = [v16 countByEnumeratingWithState:&v30 objects:v39 count:16];
  if (v17)
  {
    v18 = v17;
    v19 = *v31;
    do
    {
      for (i = 0; i != v18; ++i)
      {
        if (*v31 != v19)
        {
          objc_enumerationMutation(v16);
        }

        uuid = [*(*(&v30 + 1) + 8 * i) uuid];
        [v10 addObject:uuid];
      }

      v18 = [v16 countByEnumeratingWithState:&v30 objects:v39 count:16];
    }

    while (v18);
  }

  v22 = mach_absolute_time();
  numer = info.numer;
  denom = info.denom;
  v25 = v8;
  v26 = v25;
  if (v9 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v25))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_19C86F000, v26, OS_SIGNPOST_INTERVAL_END, spid, "MergeCandidateUUIDsForPerson", byte_19CB567AE, buf, 2u);
  }

  if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v36 = "MergeCandidateUUIDsForPerson";
    v37 = 2048;
    v38 = ((((v22 - v29) * numer) / denom) / 1000000.0);
    _os_log_impl(&dword_19C86F000, v26, OS_LOG_TYPE_INFO, "[Performance] %s: %f ms", buf, 0x16u);
  }

  return v10;
}

- (void)_loadMemoryFeedbackDataWithPhotoLibrary:(id)library
{
  v77 = *MEMORY[0x1E69E9840];
  libraryCopy = library;
  selfCopy = self;
  v5 = self->_userFeedbackLogging;
  v6 = os_signpost_id_generate(v5);
  info = 0;
  mach_timebase_info(&info);
  v7 = v5;
  v8 = v7;
  v50 = v6 - 1;
  if (v6 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v7))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_19C86F000, v8, OS_SIGNPOST_INTERVAL_BEGIN, v6, "LoadMemoryFeedbackData", byte_19CB567AE, buf, 2u);
  }

  spid = v6;
  v49 = v8;

  v47 = mach_absolute_time();
  v55 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  v53 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  v9 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  v10 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  v54 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  librarySpecificFetchOptions = [libraryCopy librarySpecificFetchOptions];
  v12 = [PHMemory fetchBlockedMemoriesWithOptions:librarySpecificFetchOptions];

  v67 = 0u;
  v68 = 0u;
  v65 = 0u;
  v66 = 0u;
  v13 = v12;
  v14 = [v13 countByEnumeratingWithState:&v65 objects:v76 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v66;
    do
    {
      for (i = 0; i != v15; ++i)
      {
        if (*v66 != v16)
        {
          objc_enumerationMutation(v13);
        }

        blacklistedFeature = [*(*(&v65 + 1) + 8 * i) blacklistedFeature];
        if ([blacklistedFeature type] == 16)
        {
          date = [blacklistedFeature date];
          v20 = v9;
        }

        else if ([blacklistedFeature type] == 512)
        {
          date = [blacklistedFeature dateInterval];
          v20 = v10;
        }

        else if ([blacklistedFeature type] == 32)
        {
          date = [blacklistedFeature holidayName];
          v20 = v55;
        }

        else if ([blacklistedFeature type] == 4096)
        {
          date = [blacklistedFeature location];
          v20 = v54;
        }

        else
        {
          if ([blacklistedFeature type] != 0x20000)
          {
            goto LABEL_20;
          }

          date = [blacklistedFeature areaName];
          v20 = v53;
        }

        [v20 addObject:date];

LABEL_20:
      }

      v15 = [v13 countByEnumeratingWithState:&v65 objects:v76 count:16];
    }

    while (v15);
  }

  v21 = PLPhotoKitGetLog();
  if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
  {
    v22 = [v13 count];
    *buf = 134217984;
    v71 = v22;
    _os_log_impl(&dword_19C86F000, v21, OS_LOG_TYPE_DEFAULT, "PHUserFeedbackDataCache: Finished loading memory user feedback data from legacy storage, %tu found.", buf, 0xCu);
  }

  v52 = libraryCopy;
  librarySpecificFetchOptions2 = [libraryCopy librarySpecificFetchOptions];
  v75 = @"PHMemoryPropertySetUserFeedback";
  v24 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v75 count:1];
  [librarySpecificFetchOptions2 setFetchPropertySets:v24];

  v48 = librarySpecificFetchOptions2;
  v25 = [PHMemory fetchMemoriesWithUserFeedbackWithOptions:librarySpecificFetchOptions2];
  v61 = 0u;
  v62 = 0u;
  v63 = 0u;
  v64 = 0u;
  v26 = [v25 countByEnumeratingWithState:&v61 objects:v74 count:16];
  if (v26)
  {
    v27 = v26;
    v28 = *v62;
    do
    {
      for (j = 0; j != v27; ++j)
      {
        if (*v62 != v28)
        {
          objc_enumerationMutation(v25);
        }

        userFeedbackProperties = [*(*(&v61 + 1) + 8 * j) userFeedbackProperties];
        userFeedback = [userFeedbackProperties userFeedback];

        feature = [userFeedback feature];
        if (feature <= 2)
        {
          if (feature == 1)
          {
            v60 = 0;
            v33 = [userFeedback contextAsDateWithError:&v60];
            v34 = v60;
            if (!v33)
            {
              v36 = PLPhotoKitGetLog();
              if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
              {
                *buf = 138412290;
                v71 = v34;
                v37 = v36;
                v38 = "PHUserFeedbackDataCache: Error parsing user feedback context as date: %@";
                goto LABEL_56;
              }

              goto LABEL_57;
            }

            v35 = v9;
          }

          else
          {
            if (feature != 2)
            {
              goto LABEL_59;
            }

            v58 = 0;
            v33 = [userFeedback contextAsStringWithError:&v58];
            v34 = v58;
            if (!v33)
            {
              v36 = PLPhotoKitGetLog();
              if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
              {
                *buf = 138412290;
                v71 = v34;
                v37 = v36;
                v38 = "PHUserFeedbackDataCache: Error parsing user feedback context as holiday name: %@";
LABEL_56:
                _os_log_impl(&dword_19C86F000, v37, OS_LOG_TYPE_ERROR, v38, buf, 0xCu);
              }

LABEL_57:

              v33 = 0;
              goto LABEL_58;
            }

            v35 = v55;
          }
        }

        else
        {
          switch(feature)
          {
            case 3:
              v57 = 0;
              v33 = [userFeedback contextAsLocationWithError:&v57];
              v34 = v57;
              if (!v33)
              {
                v36 = PLPhotoKitGetLog();
                if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
                {
                  *buf = 138412290;
                  v71 = v34;
                  v37 = v36;
                  v38 = "PHUserFeedbackDataCache: Error parsing user feedback context as location: %@";
                  goto LABEL_56;
                }

                goto LABEL_57;
              }

              v35 = v54;
              break;
            case 4:
              v56 = 0;
              v33 = [userFeedback contextAsStringWithError:&v56];
              v34 = v56;
              if (!v33)
              {
                v36 = PLPhotoKitGetLog();
                if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
                {
                  *buf = 138412290;
                  v71 = v34;
                  v37 = v36;
                  v38 = "PHUserFeedbackDataCache: Error parsing user feedback context as area name: %@";
                  goto LABEL_56;
                }

                goto LABEL_57;
              }

              v35 = v53;
              break;
            case 5:
              v59 = 0;
              v33 = [userFeedback contextAsDateIntervalWithError:&v59];
              v34 = v59;
              if (!v33)
              {
                v36 = PLPhotoKitGetLog();
                if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
                {
                  *buf = 138412290;
                  v71 = v34;
                  v37 = v36;
                  v38 = "PHUserFeedbackDataCache: Error parsing user feedback context as date interval: %@";
                  goto LABEL_56;
                }

                goto LABEL_57;
              }

              v35 = v10;
              break;
            default:
              goto LABEL_59;
          }
        }

        [v35 addObject:v33];
LABEL_58:

LABEL_59:
      }

      v27 = [v25 countByEnumeratingWithState:&v61 objects:v74 count:16];
    }

    while (v27);
  }

  v39 = PLPhotoKitGetLog();
  if (os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
  {
    v40 = [v25 count];
    *buf = 134217984;
    v71 = v40;
    _os_log_impl(&dword_19C86F000, v39, OS_LOG_TYPE_DEFAULT, "PHUserFeedbackDataCache: Finished loading memory user feedback data from PHMemory storage, %tu found.", buf, 0xCu);
  }

  [(PHUserFeedbackDataCache *)selfCopy setHolidayNamesWithNegativeFeedback:v55];
  [(PHUserFeedbackDataCache *)selfCopy setAreaNamesWithNegativeFeedback:v53];
  [(PHUserFeedbackDataCache *)selfCopy setDatesWithNegativeFeedback:v9];
  [(PHUserFeedbackDataCache *)selfCopy setDateIntervalsWithNegativeFeedback:v10];
  [(PHUserFeedbackDataCache *)selfCopy setLocationsWithNegativeFeedback:v54];
  v41 = mach_absolute_time();
  numer = info.numer;
  denom = info.denom;
  v44 = v49;
  v45 = v44;
  if (v50 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v44))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_19C86F000, v45, OS_SIGNPOST_INTERVAL_END, spid, "LoadMemoryFeedbackData", byte_19CB567AE, buf, 2u);
  }

  if (os_log_type_enabled(v45, OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v71 = "LoadMemoryFeedbackData";
    v72 = 2048;
    v73 = ((((v41 - v47) * numer) / denom) / 1000000.0);
    _os_log_impl(&dword_19C86F000, v45, OS_LOG_TYPE_INFO, "[Performance] %s: %f ms", buf, 0x16u);
  }
}

- (NSSet)locationsWithNegativeFeedback
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if (!selfCopy->_locationsWithNegativeFeedback)
  {
    [(PHUserFeedbackDataCache *)selfCopy _loadMemoryFeedbackDataWithPhotoLibrary:selfCopy->_photoLibrary];
  }

  objc_sync_exit(selfCopy);

  locationsWithNegativeFeedback = selfCopy->_locationsWithNegativeFeedback;

  return locationsWithNegativeFeedback;
}

- (NSSet)dateIntervalsWithNegativeFeedback
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if (!selfCopy->_dateIntervalsWithNegativeFeedback)
  {
    [(PHUserFeedbackDataCache *)selfCopy _loadMemoryFeedbackDataWithPhotoLibrary:selfCopy->_photoLibrary];
  }

  objc_sync_exit(selfCopy);

  dateIntervalsWithNegativeFeedback = selfCopy->_dateIntervalsWithNegativeFeedback;

  return dateIntervalsWithNegativeFeedback;
}

- (NSSet)datesWithNegativeFeedback
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if (!selfCopy->_datesWithNegativeFeedback)
  {
    [(PHUserFeedbackDataCache *)selfCopy _loadMemoryFeedbackDataWithPhotoLibrary:selfCopy->_photoLibrary];
  }

  objc_sync_exit(selfCopy);

  datesWithNegativeFeedback = selfCopy->_datesWithNegativeFeedback;

  return datesWithNegativeFeedback;
}

- (NSSet)areaNamesWithNegativeFeedback
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if (!selfCopy->_areaNamesWithNegativeFeedback)
  {
    [(PHUserFeedbackDataCache *)selfCopy _loadMemoryFeedbackDataWithPhotoLibrary:selfCopy->_photoLibrary];
  }

  objc_sync_exit(selfCopy);

  areaNamesWithNegativeFeedback = selfCopy->_areaNamesWithNegativeFeedback;

  return areaNamesWithNegativeFeedback;
}

- (NSSet)holidayNamesWithNegativeFeedback
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if (!selfCopy->_holidayNamesWithNegativeFeedback)
  {
    [(PHUserFeedbackDataCache *)selfCopy _loadMemoryFeedbackDataWithPhotoLibrary:selfCopy->_photoLibrary];
  }

  objc_sync_exit(selfCopy);

  holidayNamesWithNegativeFeedback = selfCopy->_holidayNamesWithNegativeFeedback;

  return holidayNamesWithNegativeFeedback;
}

- (void)_loadPersonFeedbackDataWithPhotoLibrary:(id)library
{
  v136 = *MEMORY[0x1E69E9840];
  libraryCopy = library;
  selfCopy = self;
  v4 = self->_userFeedbackLogging;
  v5 = os_signpost_id_generate(v4);
  info = 0;
  mach_timebase_info(&info);
  v6 = v4;
  v7 = v6;
  v85 = v5 - 1;
  if (v5 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v6))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_19C86F000, v7, OS_SIGNPOST_INTERVAL_BEGIN, v5, "LoadPersonFeedbackData", byte_19CB567AE, buf, 2u);
  }

  spid = v5;
  v84 = v7;

  v81 = mach_absolute_time();
  v8 = objc_alloc_init(MEMORY[0x1E695DF90]);
  [PHMemory blockedPersonLocalIdentifiersInPhotoLibrary:libraryCopy];
  v120 = 0u;
  v121 = 0u;
  v122 = 0u;
  v9 = v123 = 0u;
  v10 = [v9 countByEnumeratingWithState:&v120 objects:v135 count:16];
  obj = v9;
  if (v10)
  {
    v11 = v10;
    v12 = *v121;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v121 != v12)
        {
          objc_enumerationMutation(obj);
        }

        v14 = *(*(&v120 + 1) + 8 * i);
        spid = [PHObject uuidFromLocalIdentifier:v14, spid];
        if (spid)
        {
          [v8 setObject:&unk_1F102C128 forKeyedSubscript:spid];
        }

        else
        {
          v16 = PLPhotoKitGetLog();
          if (os_log_type_enabled(v16, OS_LOG_TYPE_FAULT))
          {
            *buf = 138543362;
            v126 = v14;
            _os_log_impl(&dword_19C86F000, v16, OS_LOG_TYPE_FAULT, "PHUserFeedbackDataCache: person UUID is nil for local identifier %{public}@. Will not add this person on the list of people with negative feedback.", buf, 0xCu);
          }
        }
      }

      v9 = obj;
      v11 = [obj countByEnumeratingWithState:&v120 objects:v135 count:16];
    }

    while (v11);
  }

  v17 = PLPhotoKitGetLog();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    v18 = [v9 count];
    *buf = 134217984;
    v126 = v18;
    _os_log_impl(&dword_19C86F000, v17, OS_LOG_TYPE_DEFAULT, "PHUserFeedbackDataCache: Finished loading person user feedback data from legacy storage, %tu people found.", buf, 0xCu);
  }

  v19 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  if ([v9 count])
  {
    librarySpecificFetchOptions = [libraryCopy librarySpecificFetchOptions];
    [librarySpecificFetchOptions setIncludedDetectionTypes:&unk_1F102DDA8];
    allObjects = [obj allObjects];
    v22 = [PHPerson fetchPersonsWithLocalIdentifiers:allObjects options:librarySpecificFetchOptions];

    fetchedObjects = [v22 fetchedObjects];
    [v19 addObjectsFromArray:fetchedObjects];

    v24 = PLPhotoKitGetLog();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
    {
      v25 = [v19 count];
      *buf = 134217984;
      v126 = v25;
      _os_log_impl(&dword_19C86F000, v24, OS_LOG_TYPE_DEFAULT, "PHUserFeedbackDataCache: Finished loading persons for checking merge candidates, %tu people found.", buf, 0xCu);
    }
  }

  v98 = v19;
  librarySpecificFetchOptions2 = [libraryCopy librarySpecificFetchOptions];
  v134 = @"PHPersonPropertySetUserFeedback";
  v27 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v134 count:1];
  [librarySpecificFetchOptions2 setFetchPropertySets:v27];

  [librarySpecificFetchOptions2 setIncludedDetectionTypes:&unk_1F102DDC0];
  context = librarySpecificFetchOptions2;
  [PHPerson fetchPersonsWithUserFeedbackWithOptions:librarySpecificFetchOptions2];
  v116 = 0u;
  v117 = 0u;
  v118 = 0u;
  v89 = v119 = 0u;
  v28 = [v89 countByEnumeratingWithState:&v116 objects:v133 count:16];
  if (v28)
  {
    v29 = v28;
    v96 = *v117;
    do
    {
      for (j = 0; j != v29; ++j)
      {
        if (*v117 != v96)
        {
          objc_enumerationMutation(v89);
        }

        v31 = *(*(&v116 + 1) + 8 * j);
        userFeedbackProperties = [v31 userFeedbackProperties];
        userFeedback = [userFeedbackProperties userFeedback];
        type = [userFeedback type];

        uuid = [v31 uuid];
        v36 = [v8 objectForKeyedSubscript:uuid];
        unsignedIntegerValue = [v36 unsignedIntegerValue];

        v38 = [PHUserFeedback sumFeedbackType:unsignedIntegerValue withOtherFeedbackType:type];
        v39 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v38];
        uuid2 = [v31 uuid];
        [v8 setObject:v39 forKeyedSubscript:uuid2];

        [v98 addObject:v31];
      }

      v29 = [v89 countByEnumeratingWithState:&v116 objects:v133 count:16];
    }

    while (v29);
  }

  v41 = PLPhotoKitGetLog();
  if (os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT))
  {
    v42 = [v89 count];
    *buf = 134217984;
    v126 = v42;
    _os_log_impl(&dword_19C86F000, v41, OS_LOG_TYPE_DEFAULT, "PHUserFeedbackDataCache: Finished loading person user feedback data from PHPerson storage, %tu people found.", buf, 0xCu);
  }

  librarySpecificFetchOptions3 = [libraryCopy librarySpecificFetchOptions];

  [librarySpecificFetchOptions3 setIncludedDetectionTypes:&unk_1F102DDD8];
  v83 = librarySpecificFetchOptions3;
  [PHPerson fetchPersonsWithType:-1 options:librarySpecificFetchOptions3];
  v112 = 0u;
  v113 = 0u;
  v114 = 0u;
  v44 = v115 = 0u;
  v45 = [v44 countByEnumeratingWithState:&v112 objects:v132 count:16];
  if (v45)
  {
    v46 = v45;
    v47 = *v113;
    do
    {
      for (k = 0; k != v46; ++k)
      {
        if (*v113 != v47)
        {
          objc_enumerationMutation(v44);
        }

        v49 = *(*(&v112 + 1) + 8 * k);
        uuid3 = [v49 uuid];
        [v8 setObject:&unk_1F102C170 forKeyedSubscript:uuid3];

        [v98 addObject:v49];
      }

      v46 = [v44 countByEnumeratingWithState:&v112 objects:v132 count:16];
    }

    while (v46);
  }

  v51 = PLPhotoKitGetLog();
  if (os_log_type_enabled(v51, OS_LOG_TYPE_DEFAULT))
  {
    v52 = [v44 count];
    *buf = 134217984;
    v126 = v52;
    _os_log_impl(&dword_19C86F000, v51, OS_LOG_TYPE_DEFAULT, "PHUserFeedbackDataCache: Finished loading person user feedback data from hidden people. %tu persons found.", buf, 0xCu);
  }

  v82 = v44;

  v110 = 0u;
  v111 = 0u;
  v108 = 0u;
  v109 = 0u;
  v88 = v98;
  v92 = [v88 countByEnumeratingWithState:&v108 objects:v131 count:16];
  v53 = 0;
  if (v92)
  {
    v90 = *v109;
    do
    {
      v54 = 0;
      do
      {
        if (*v109 != v90)
        {
          objc_enumerationMutation(v88);
        }

        v97 = v54;
        v99 = v53;
        v55 = *(*(&v108 + 1) + 8 * v54);
        contexta = objc_autoreleasePoolPush();
        uuid4 = [v55 uuid];
        v57 = [v8 objectForKeyedSubscript:uuid4];
        unsignedIntegerValue2 = [v57 unsignedIntegerValue];

        v93 = [(PHUserFeedbackDataCache *)selfCopy _confidentMergeCandidateUUIDsForPerson:v55];
        v59 = [v8 objectsForKeys:? notFoundMarker:?];
        v104 = 0u;
        v105 = 0u;
        v106 = 0u;
        v107 = 0u;
        v60 = [v59 countByEnumeratingWithState:&v104 objects:v130 count:16];
        if (v60)
        {
          v61 = v60;
          v62 = *v105;
          do
          {
            for (m = 0; m != v61; ++m)
            {
              if (*v105 != v62)
              {
                objc_enumerationMutation(v59);
              }

              unsignedIntegerValue2 = +[PHUserFeedback mergeFeedbackType:withOtherFeedbackType:](PHUserFeedback, "mergeFeedbackType:withOtherFeedbackType:", unsignedIntegerValue2, [*(*(&v104 + 1) + 8 * m) unsignedIntegerValue]);
            }

            v61 = [v59 countByEnumeratingWithState:&v104 objects:v130 count:16];
          }

          while (v61);
        }

        v64 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:unsignedIntegerValue2];
        uuid5 = [v55 uuid];
        [v8 setObject:v64 forKeyedSubscript:uuid5];

        v102 = 0u;
        v103 = 0u;
        v100 = 0u;
        v101 = 0u;
        v66 = v93;
        v67 = [v66 countByEnumeratingWithState:&v100 objects:v129 count:16];
        if (v67)
        {
          v68 = v67;
          v69 = *v101;
          do
          {
            for (n = 0; n != v68; ++n)
            {
              if (*v101 != v69)
              {
                objc_enumerationMutation(v66);
              }

              v71 = *(*(&v100 + 1) + 8 * n);
              v72 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:unsignedIntegerValue2];
              [v8 setObject:v72 forKeyedSubscript:v71];
            }

            v68 = [v66 countByEnumeratingWithState:&v100 objects:v129 count:16];
          }

          while (v68);
        }

        v53 = &v99[[v66 count]];
        objc_autoreleasePoolPop(contexta);
        v54 = v97 + 1;
      }

      while (v97 + 1 != v92);
      v92 = [v88 countByEnumeratingWithState:&v108 objects:v131 count:16];
    }

    while (v92);
  }

  v73 = PLPhotoKitGetLog();
  if (os_log_type_enabled(v73, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    v126 = v53;
    _os_log_impl(&dword_19C86F000, v73, OS_LOG_TYPE_DEFAULT, "PHUserFeedbackDataCache: Finished loading merge candidates, %tu found.", buf, 0xCu);
  }

  v74 = mach_absolute_time();
  numer = info.numer;
  denom = info.denom;
  v77 = v84;
  v78 = v77;
  if (v85 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v77))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_19C86F000, v78, OS_SIGNPOST_INTERVAL_END, spida, "LoadPersonFeedbackData", byte_19CB567AE, buf, 2u);
  }

  if (os_log_type_enabled(v78, OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v126 = "LoadPersonFeedbackData";
    v127 = 2048;
    v128 = ((((v74 - v81) * numer) / denom) / 1000000.0);
    _os_log_impl(&dword_19C86F000, v78, OS_LOG_TYPE_INFO, "[Performance] %s: %f ms", buf, 0x16u);
  }

  [(PHUserFeedbackDataCache *)selfCopy setUserFeedbackTypeByPersonUUID:v8];
}

- (NSDictionary)userFeedbackTypeByPersonUUID
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if (!selfCopy->_userFeedbackTypeByPersonUUID)
  {
    [(PHUserFeedbackDataCache *)selfCopy _loadPersonFeedbackDataWithPhotoLibrary:selfCopy->_photoLibrary];
  }

  objc_sync_exit(selfCopy);

  userFeedbackTypeByPersonUUID = selfCopy->_userFeedbackTypeByPersonUUID;

  return userFeedbackTypeByPersonUUID;
}

- (void)loadDataWithPhotoLibrary:(id)library
{
  libraryCopy = library;
  [(PHUserFeedbackDataCache *)self _loadPersonFeedbackDataWithPhotoLibrary:libraryCopy];
  [(PHUserFeedbackDataCache *)self _loadMemoryFeedbackDataWithPhotoLibrary:libraryCopy];
  [(PHUserFeedbackDataCache *)self _loadDeniedFeaturedPhotoUUIDsWithPhotoLibrary:libraryCopy];
}

- (PHUserFeedbackDataCache)initWithPhotoLibrary:(id)library importantPersons:(id)persons
{
  libraryCopy = library;
  personsCopy = persons;
  v14.receiver = self;
  v14.super_class = PHUserFeedbackDataCache;
  v9 = [(PHUserFeedbackDataCache *)&v14 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_photoLibrary, library);
    objc_storeStrong(&v10->_importantPersons, persons);
    v11 = PLUserFeedbackGetLog();
    userFeedbackLogging = v10->_userFeedbackLogging;
    v10->_userFeedbackLogging = v11;
  }

  return v10;
}

+ (id)_emptyUserFeedbackDataCache
{
  v2 = objc_alloc_init(PHUserFeedbackDataCache);

  return v2;
}

@end