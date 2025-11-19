@interface PHMoment
+ (id)_fetchMomentUUIDByAssetUUIDForAssetUUIDs:(id)a3 photoLibrary:(id)a4;
+ (id)entityKeyMap;
+ (id)fetchMomentUUIDByAssetUUIDForAssetUUIDs:(id)a3 options:(id)a4;
+ (id)fetchMomentUUIDByAssetUUIDForAssets:(id)a3 options:(id)a4;
+ (id)fetchMomentUUIDsByPersonUUIDForPersonsWithUUIDs:(id)a3 photoLibrary:(id)a4;
+ (id)fetchMomentUUIDsByPhotosHighlightUUIDForPhotosHighlightUUIDs:(id)a3 options:(id)a4;
+ (id)fetchPredicateForSharingFilter:(unsigned __int16)a3;
+ (id)propertiesToFetchWithHint:(unint64_t)a3;
+ (id)transformValueExpression:(id)a3 forKeyPath:(id)a4;
- (BOOL)hasNoThemesPlaceholder;
- (NSArray)themeAssignments;
- (PHMoment)initWithFetchDictionary:(id)a3 propertyHint:(unint64_t)a4 photoLibrary:(id)a5;
- (id)description;
- (void)_cacheLocationWithCoordinate:(CLLocationCoordinate2D)a3;
@end

@implementation PHMoment

- (id)description
{
  v8.receiver = self;
  v8.super_class = PHMoment;
  v3 = [(PHAssetCollection *)&v8 description];
  v4 = [(PHAssetCollection *)self startDate];
  v5 = [(PHAssetCollection *)self endDate];
  v6 = [v3 stringByAppendingFormat:@" [%@ - %@]", v4, v5];

  return v6;
}

- (void)_cacheLocationWithCoordinate:(CLLocationCoordinate2D)a3
{
  longitude = a3.longitude;
  latitude = a3.latitude;
  if ([MEMORY[0x1E69BE520] canUseCoordinate:?])
  {
    v6 = [objc_alloc(MEMORY[0x1E6985C40]) initWithLatitude:latitude longitude:longitude];
  }

  else
  {
    v6 = 0;
  }

  self->super._approximateLocation = v6;

  MEMORY[0x1EEE66BB8]();
}

- (BOOL)hasNoThemesPlaceholder
{
  v2 = self;
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = 0;
  v3 = [(PHObject *)self photoLibrary];
  v4 = [v3 objectFetchingContextForCurrentQueueQoS];

  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __34__PHMoment_hasNoThemesPlaceholder__block_invoke;
  v7[3] = &unk_1E75AA3F8;
  v5 = v4;
  v8 = v5;
  v9 = v2;
  v10 = &v11;
  [v5 performBlockAndWait:v7];
  LOBYTE(v2) = *(v12 + 24);

  _Block_object_dispose(&v11, 8);
  return v2;
}

void __34__PHMoment_hasNoThemesPlaceholder__block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) objectID];
  v6 = 0;
  v4 = [v2 existingObjectWithID:v3 error:&v6];
  v5 = v6;

  if (v4)
  {
    *(*(*(a1 + 48) + 8) + 24) = [v4 hasEmptyThemePlaceholder];
  }
}

- (NSArray)themeAssignments
{
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy__13624;
  v16 = __Block_byref_object_dispose__13625;
  v17 = 0;
  v3 = [(PHObject *)self photoLibrary];
  v4 = [v3 objectFetchingContextForCurrentQueueQoS];

  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __28__PHMoment_themeAssignments__block_invoke;
  v8[3] = &unk_1E75AA3F8;
  v5 = v4;
  v9 = v5;
  v10 = self;
  v11 = &v12;
  [v5 performBlockAndWait:v8];
  v6 = v13[5];

  _Block_object_dispose(&v12, 8);

  return v6;
}

void __28__PHMoment_themeAssignments__block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) objectID];
  v10 = 0;
  v4 = [v2 existingObjectWithID:v3 error:&v10];
  v5 = v10;

  if (v4)
  {
    v6 = [v4 themeAssignments];
    v7 = [v6 _pl_map:&__block_literal_global_13626];
    v8 = *(*(a1 + 48) + 8);
    v9 = *(v8 + 40);
    *(v8 + 40) = v7;
  }
}

PHMomentThemeAssignment *__28__PHMoment_themeAssignments__block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [PHMomentThemeAssignment alloc];
  v4 = [v2 themeName];
  v5 = [v2 confidence];
  v6 = [v2 adapterVersion];
  v7 = [v2 uemVersion];

  v8 = [(PHMomentThemeAssignment *)v3 initWithThemeName:v4 confidence:v5 adapterVersion:v6 uemVersion:v7];

  return v8;
}

- (PHMoment)initWithFetchDictionary:(id)a3 propertyHint:(unint64_t)a4 photoLibrary:(id)a5
{
  v8 = a3;
  v36.receiver = self;
  v36.super_class = PHMoment;
  v9 = [(PHAssetCollection *)&v36 initWithFetchDictionary:v8 propertyHint:a4 photoLibrary:a5];
  if (v9)
  {
    v10 = [v8 objectForKeyedSubscript:@"timeZoneOffset"];
    v9->_timeZoneOffset = [v10 intValue];

    v11 = [v8 objectForKeyedSubscript:@"representativeDate"];
    representativeDate = v9->_representativeDate;
    v9->_representativeDate = v11;

    v13 = [v8 objectForKeyedSubscript:@"approximateLatitude"];
    [v13 doubleValue];
    v9->_approximateLatitude = v14;

    v15 = [v8 objectForKeyedSubscript:@"approximateLongitude"];
    [v15 doubleValue];
    v9->_approximateLongitude = v16;

    v17 = CLLocationCoordinate2DMake(v9->_approximateLatitude, v9->_approximateLongitude);
    [(PHMoment *)v9 _cacheLocationWithCoordinate:v17.latitude, v17.longitude];
    v9->super._assetCollectionType = 3;
    v18 = [v8 objectForKeyedSubscript:@"modificationDate"];
    modificationDate = v9->_modificationDate;
    v9->_modificationDate = v18;

    v20 = [v8 objectForKeyedSubscript:@"aggregationScore"];
    [v20 floatValue];
    v9->_aggregationScore = v21;

    v22 = [v8 objectForKeyedSubscript:@"processedLocation"];
    v9->_processedLocation = [v22 unsignedShortValue];

    v23 = [v8 objectForKeyedSubscript:@"originatorState"];
    v9->_originatorState = [v23 shortValue];

    v24 = [v8 objectForKeyedSubscript:@"subtitle"];
    subtitle = v9->_subtitle;
    v9->_subtitle = v24;

    v26 = [v8 objectForKeyedSubscript:@"localizedLocationNames"];
    localizedLocationNames = v9->super._localizedLocationNames;
    v9->super._localizedLocationNames = v26;

    v28 = [v8 objectForKeyedSubscript:@"gpsHorizontalAccuracy"];
    [v28 doubleValue];
    v9->_gpsHorizontalAccuracy = v29;

    v30 = [v8 objectForKeyedSubscript:@"sharingComposition"];
    v9->_sharingComposition = [v30 integerValue];

    v31 = [v8 objectForKeyedSubscript:@"startDate"];
    startDate = v9->super._startDate;
    v9->super._startDate = v31;

    v33 = [v8 objectForKeyedSubscript:@"endDate"];
    endDate = v9->super._endDate;
    v9->super._endDate = v33;
  }

  return v9;
}

+ (id)fetchMomentUUIDsByPhotosHighlightUUIDForPhotosHighlightUUIDs:(id)a3 options:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = [v6 photoLibrary];
  v8 = v7;
  if (v7)
  {
    *buf = 0;
    v18 = buf;
    v19 = 0x3032000000;
    v20 = __Block_byref_object_copy__13624;
    v21 = __Block_byref_object_dispose__13625;
    v22 = 0;
    v9 = [v7 photoLibraryForCurrentQueueQoS];
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __81__PHMoment_fetchMomentUUIDsByPhotosHighlightUUIDForPhotosHighlightUUIDs_options___block_invoke;
    v13[3] = &unk_1E75AA3F8;
    v14 = v5;
    v15 = v8;
    v16 = buf;
    [v9 performBlockAndWait:v13];
    v10 = *(v18 + 5);

    _Block_object_dispose(buf, 8);
  }

  else
  {
    v11 = PLPhotoKitGetLog();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_FAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_19C86F000, v11, OS_LOG_TYPE_FAULT, "Can't fetch moment uuids by highlight uuid: no PHPhotoLibrary specified", buf, 2u);
    }

    v10 = 0;
  }

  return v10;
}

void __81__PHMoment_fetchMomentUUIDsByPhotosHighlightUUIDForPhotosHighlightUUIDs_options___block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x1E69E9840];
  v2 = MEMORY[0x1E69BE5C0];
  v3 = *(a1 + 32);
  v4 = [*(a1 + 40) photoLibraryForCurrentQueueQoS];
  v10 = 0;
  v5 = [v2 batchMomentUUIDsByPhotosHighlightUUIDForPhotosHighlightUUIDs:v3 library:v4 error:&v10];
  v6 = v10;

  if (v5)
  {
    v7 = *(*(a1 + 48) + 8);
    v8 = v5;
    v9 = *(v7 + 40);
    *(v7 + 40) = v8;
  }

  else
  {
    v9 = PLPhotoKitGetLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v12 = v6;
      _os_log_impl(&dword_19C86F000, v9, OS_LOG_TYPE_ERROR, "Error batch fetching moment uuids by highlight uuid: %@", buf, 0xCu);
    }
  }
}

+ (id)fetchMomentUUIDsByPersonUUIDForPersonsWithUUIDs:(id)a3 photoLibrary:(id)a4
{
  v33[2] = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = a4;
  v7 = [MEMORY[0x1E69BE3D0] fetchRequest];
  v8 = objc_alloc_init(MEMORY[0x1E695D5C8]);
  v9 = [MEMORY[0x1E696ABC8] expressionForKeyPath:@"assetForFace.moment.uuid"];
  [v8 setName:@"momentUUID"];
  [v8 setExpression:v9];
  [v8 setExpressionResultType:700];
  v10 = objc_alloc_init(MEMORY[0x1E695D5C8]);
  v11 = [MEMORY[0x1E696ABC8] expressionForKeyPath:@"personForFace.personUUID"];
  [v10 setName:@"personUUID"];
  [v10 setExpression:v11];
  [v10 setExpressionResultType:700];
  v33[0] = v8;
  v33[1] = v10;
  v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:v33 count:2];
  [v7 setPropertiesToFetch:v12];

  v32[0] = v8;
  v32[1] = v10;
  v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v32 count:2];
  [v7 setPropertiesToFetch:v13];

  v14 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K IN %@", @"personForFace.personUUID", v5];
  [v7 setPredicate:v14];
  [v7 setResultType:2];
  v26 = 0;
  v27 = &v26;
  v28 = 0x3032000000;
  v29 = __Block_byref_object_copy__13624;
  v30 = __Block_byref_object_dispose__13625;
  v31 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v15 = [v6 photoLibrary];
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __73__PHMoment_fetchMomentUUIDsByPersonUUIDForPersonsWithUUIDs_photoLibrary___block_invoke;
  v20[3] = &unk_1E75AAE68;
  v16 = v6;
  v21 = v16;
  v17 = v7;
  v22 = v17;
  v23 = @"personUUID";
  v24 = @"momentUUID";
  v25 = &v26;
  [v15 performBlockAndWait:v20];

  v18 = v27[5];
  _Block_object_dispose(&v26, 8);

  return v18;
}

void __73__PHMoment_fetchMomentUUIDsByPersonUUIDForPersonsWithUUIDs_photoLibrary___block_invoke(uint64_t a1)
{
  v17 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) photoLibrary];
  v3 = [v2 managedObjectContext];
  v4 = *(a1 + 40);
  v14 = 0;
  v5 = [v3 executeFetchRequest:v4 error:&v14];
  v6 = v14;

  if (v5)
  {
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __73__PHMoment_fetchMomentUUIDsByPersonUUIDForPersonsWithUUIDs_photoLibrary___block_invoke_2;
    v10[3] = &unk_1E75A5A70;
    v11 = *(a1 + 48);
    v7 = *(a1 + 56);
    v8 = *(a1 + 64);
    v12 = v7;
    v13 = v8;
    [v5 enumerateObjectsUsingBlock:v10];

    v9 = v11;
  }

  else
  {
    v9 = PLPhotoKitGetLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v16 = v6;
      _os_log_impl(&dword_19C86F000, v9, OS_LOG_TYPE_ERROR, "Error batch fetching moment uuids by person uuids: %@", buf, 0xCu);
    }
  }
}

void __73__PHMoment_fetchMomentUUIDsByPersonUUIDForPersonsWithUUIDs_photoLibrary___block_invoke_2(void *a1, void *a2)
{
  v3 = a1[4];
  v4 = a2;
  v9 = [v4 objectForKeyedSubscript:v3];
  v5 = [v4 objectForKeyedSubscript:a1[5]];

  if (v9)
  {
    v6 = v5 == 0;
  }

  else
  {
    v6 = 1;
  }

  if (!v6)
  {
    v7 = [*(*(a1[6] + 8) + 40) objectForKeyedSubscript:v9];
    if (v7)
    {
      v8 = v7;
      if ([v5 length])
      {
        [v8 addObject:v5];
      }
    }

    else
    {
      v8 = [MEMORY[0x1E695DF70] arrayWithObject:v5];
      [*(*(a1[6] + 8) + 40) setObject:v8 forKeyedSubscript:v9];
    }
  }
}

+ (id)_fetchMomentUUIDByAssetUUIDForAssetUUIDs:(id)a3 photoLibrary:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = v6;
  if (v6)
  {
    *buf = 0;
    v17 = buf;
    v18 = 0x3032000000;
    v19 = __Block_byref_object_copy__13624;
    v20 = __Block_byref_object_dispose__13625;
    v21 = 0;
    v8 = [v6 photoLibraryForCurrentQueueQoS];
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __66__PHMoment__fetchMomentUUIDByAssetUUIDForAssetUUIDs_photoLibrary___block_invoke;
    v12[3] = &unk_1E75AA3F8;
    v13 = v5;
    v14 = v7;
    v15 = buf;
    [v8 performBlockAndWait:v12];
    v9 = *(v17 + 5);

    _Block_object_dispose(buf, 8);
  }

  else
  {
    v10 = PLPhotoKitGetLog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_FAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_19C86F000, v10, OS_LOG_TYPE_FAULT, "Can't fetch moment uuids because input PHPhotoLibrary instance is nil", buf, 2u);
    }

    v9 = 0;
  }

  return v9;
}

void __66__PHMoment__fetchMomentUUIDByAssetUUIDForAssetUUIDs_photoLibrary___block_invoke(uint64_t a1)
{
  v2 = MEMORY[0x1E69BE5C0];
  v3 = *(a1 + 32);
  v4 = [*(a1 + 40) photoLibraryForCurrentQueueQoS];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __66__PHMoment__fetchMomentUUIDByAssetUUIDForAssetUUIDs_photoLibrary___block_invoke_2;
  v5[3] = &unk_1E75A7C48;
  v5[4] = *(a1 + 48);
  [v2 batchFetchMomentUUIDsByAssetUUIDsWithAssetUUIDs:v3 library:v4 completion:v5];
}

void __66__PHMoment__fetchMomentUUIDByAssetUUIDForAssetUUIDs_photoLibrary___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v11 = *MEMORY[0x1E69E9840];
  v6 = a2;
  v7 = a3;
  if (v6)
  {
    objc_storeStrong((*(*(a1 + 32) + 8) + 40), a2);
  }

  else
  {
    v8 = PLPhotoKitGetLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v9 = 138412290;
      v10 = v7;
      _os_log_impl(&dword_19C86F000, v8, OS_LOG_TYPE_ERROR, "Error batch fetching moments by assets: %@", &v9, 0xCu);
    }
  }
}

+ (id)fetchMomentUUIDByAssetUUIDForAssetUUIDs:(id)a3 options:(id)a4
{
  v6 = a3;
  v7 = [a4 photoLibrary];
  v8 = [a1 _fetchMomentUUIDByAssetUUIDForAssetUUIDs:v6 photoLibrary:v7];

  return v8;
}

+ (id)fetchMomentUUIDByAssetUUIDForAssets:(id)a3 options:(id)a4
{
  v24 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = [v7 photoLibrary];
  v9 = [MEMORY[0x1E695DF70] array];
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v10 = v6;
  v11 = [v10 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v20;
    do
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v20 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v15 = *(*(&v19 + 1) + 8 * i);
        v16 = [v15 uuid];
        [v9 addObject:v16];

        if (!v8)
        {
          v8 = [v15 photoLibrary];
        }
      }

      v12 = [v10 countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v12);
  }

  v17 = [a1 _fetchMomentUUIDByAssetUUIDForAssetUUIDs:v9 photoLibrary:v8];

  return v17;
}

+ (id)transformValueExpression:(id)a3 forKeyPath:(id)a4
{
  v6 = a3;
  v7 = a4;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __48__PHMoment_transformValueExpression_forKeyPath___block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (transformValueExpression_forKeyPath__onceToken_13718 != -1)
  {
    dispatch_once(&transformValueExpression_forKeyPath__onceToken_13718, block);
  }

  if ([transformValueExpression_forKeyPath___passThroughSet_13719 containsObject:v7])
  {
    v8 = v6;
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

void __48__PHMoment_transformValueExpression_forKeyPath___block_invoke()
{
  v4[14] = *MEMORY[0x1E69E9840];
  v0 = MEMORY[0x1E695DFD8];
  v4[0] = @"estimatedAssetCount";
  v4[1] = @"startDate";
  v4[2] = @"endDate";
  v4[3] = @"localStartDate";
  v4[4] = @"localEndDate";
  v4[5] = @"timeZoneOffset";
  v4[6] = @"modificationDate";
  v4[7] = @"aggregationScore";
  v4[8] = @"processedLocation";
  v4[9] = @"originatorState";
  v4[10] = @"title";
  v4[11] = @"subtitle";
  v4[12] = @"localizedLocationNames";
  v4[13] = @"sharingComposition";
  v1 = [MEMORY[0x1E695DEC8] arrayWithObjects:v4 count:14];
  v2 = [v0 setWithArray:v1];
  v3 = transformValueExpression_forKeyPath___passThroughSet_13719;
  transformValueExpression_forKeyPath___passThroughSet_13719 = v2;
}

+ (id)entityKeyMap
{
  pl_dispatch_once();
  v2 = entityKeyMap_pl_once_object_15_13734;

  return v2;
}

void __24__PHMoment_entityKeyMap__block_invoke()
{
  v37[16] = *MEMORY[0x1E69E9840];
  v16 = [PHEntityKeyMap alloc];
  v35 = @"uuid";
  v36[0] = @"uuid";
  v19 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v35 count:1];
  v37[0] = v19;
  v36[1] = @"startDate";
  v34 = @"startDate";
  v18 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v34 count:1];
  v37[1] = v18;
  v36[2] = @"endDate";
  v33 = @"endDate";
  v17 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v33 count:1];
  v37[2] = v17;
  v36[3] = @"timeZoneOffset";
  v32[0] = @"timeZoneOffset";
  v32[1] = @"localStartDate";
  v32[2] = @"localEndDate";
  v15 = [MEMORY[0x1E695DEC8] arrayWithObjects:v32 count:3];
  v37[3] = v15;
  v36[4] = @"modificationDate";
  v31 = @"modificationDate";
  v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v31 count:1];
  v37[4] = v14;
  v36[5] = @"cachedCount";
  v30 = @"estimatedAssetCount";
  v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v30 count:1];
  v37[5] = v13;
  v36[6] = @"aggregationScore";
  v29 = @"aggregationScore";
  v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v29 count:1];
  v37[6] = v12;
  v36[7] = @"processedLocation";
  v28 = @"processedLocation";
  v0 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v28 count:1];
  v37[7] = v0;
  v36[8] = @"originatorState";
  v27 = @"originatorState";
  v1 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v27 count:1];
  v37[8] = v1;
  v36[9] = @"title";
  v26[0] = @"title";
  v26[1] = @"localizedTitle";
  v2 = [MEMORY[0x1E695DEC8] arrayWithObjects:v26 count:2];
  v37[9] = v2;
  v36[10] = @"subtitle";
  v25[0] = @"subtitle";
  v25[1] = @"localizedSubtitle";
  v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:v25 count:2];
  v37[10] = v3;
  v36[11] = @"approximateLatitude";
  v24 = @"approximateLatitude";
  v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v24 count:1];
  v37[11] = v4;
  v36[12] = @"approximateLongitude";
  v23 = @"approximateLongitude";
  v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v23 count:1];
  v37[12] = v5;
  v36[13] = @"localizedLocationNames";
  v22 = @"localizedLocationNames";
  v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v22 count:1];
  v37[13] = v6;
  v36[14] = @"gpsHorizontalAccuracy";
  v21 = @"gpsHorizontalAccuracy";
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v21 count:1];
  v37[14] = v7;
  v36[15] = @"sharingComposition";
  v20 = @"sharingComposition";
  v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v20 count:1];
  v37[15] = v8;
  v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v37 forKeys:v36 count:16];
  v10 = [(PHEntityKeyMap *)v16 initWithPropertyKeysByEntityKey:v9];
  v11 = entityKeyMap_pl_once_object_15_13734;
  entityKeyMap_pl_once_object_15_13734 = v10;
}

+ (id)fetchPredicateForSharingFilter:(unsigned __int16)a3
{
  if (!a3)
  {
LABEL_4:
    v5 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K == %d", @"sharingComposition", a3, v3];

    return v5;
  }

  if (a3 == 1)
  {
    *&a3 = 1;
    goto LABEL_4;
  }

  v5 = 0;

  return v5;
}

+ (id)propertiesToFetchWithHint:(unint64_t)a3
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __38__PHMoment_propertiesToFetchWithHint___block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (propertiesToFetchWithHint__onceToken_13755 != -1)
  {
    dispatch_once(&propertiesToFetchWithHint__onceToken_13755, block);
  }

  v3 = propertiesToFetchWithHint__array_13756;

  return v3;
}

void __38__PHMoment_propertiesToFetchWithHint___block_invoke()
{
  v4[20] = *MEMORY[0x1E69E9840];
  v0 = objc_alloc_init(MEMORY[0x1E695D5C8]);
  [v0 setName:@"objectID"];
  v1 = [MEMORY[0x1E696ABC8] expressionForEvaluatedObject];
  [v0 setExpression:v1];

  [v0 setExpressionResultType:2000];
  v4[0] = v0;
  v4[1] = @"uuid";
  v4[2] = @"approximateLatitude";
  v4[3] = @"approximateLongitude";
  v4[4] = @"cachedCount";
  v4[5] = @"cachedPhotosCount";
  v4[6] = @"cachedVideosCount";
  v4[7] = @"startDate";
  v4[8] = @"endDate";
  v4[9] = @"timeZoneOffset";
  v4[10] = @"representativeDate";
  v4[11] = @"modificationDate";
  v4[12] = @"aggregationScore";
  v4[13] = @"title";
  v4[14] = @"subtitle";
  v4[15] = @"processedLocation";
  v4[16] = @"originatorState";
  v4[17] = @"localizedLocationNames";
  v4[18] = @"gpsHorizontalAccuracy";
  v4[19] = @"sharingComposition";
  v2 = [MEMORY[0x1E695DEC8] arrayWithObjects:v4 count:20];
  v3 = propertiesToFetchWithHint__array_13756;
  propertiesToFetchWithHint__array_13756 = v2;
}

@end