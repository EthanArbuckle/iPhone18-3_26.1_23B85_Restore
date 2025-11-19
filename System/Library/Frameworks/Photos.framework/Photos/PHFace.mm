@interface PHFace
+ (Class)propertySetClassForPropertySet:(id)a3;
+ (NSArray)sortByAddedDateDescending;
+ (id)_composePropertiesToFetchWithHint:(unint64_t)a3;
+ (id)analyticsPropertiesToFetch;
+ (id)corePropertiesToFetch;
+ (id)croppingPropertiesToFetch;
+ (id)entityKeyMap;
+ (id)fetchFacesForFaceCrop:(id)a3 options:(id)a4;
+ (id)fetchFacesForPerson:(id)a3 options:(id)a4;
+ (id)fetchFacesGroupedByAssetLocalIdentifierForAssets:(id)a3 options:(id)a4;
+ (id)fetchFacesInAsset:(id)a3 options:(id)a4;
+ (id)fetchFacesInAssets:(id)a3 options:(id)a4;
+ (id)fetchFacesInFaceGroup:(id)a3 options:(id)a4;
+ (id)fetchFacesOnAssetWithFace:(id)a3 options:(id)a4;
+ (id)fetchFacesWithLocalIdentifiers:(id)a3 options:(id)a4;
+ (id)fetchFacesWithVuObservationIDs:(id)a3 options:(id)a4;
+ (id)fetchKeyFaceByPersonLocalIdentifierForPersons:(id)a3 options:(id)a4;
+ (id)fetchKeyFaceForFaceGroup:(id)a3 options:(id)a4;
+ (id)fetchKeyFaceForPerson:(id)a3 options:(id)a4;
+ (id)fetchRejectedFacesForPerson:(id)a3 options:(id)a4;
+ (id)fetchSingletonFacesWithOptions:(id)a3;
+ (id)fetchSuggestedFacesForPerson:(id)a3 options:(id)a4;
+ (id)genderAgePropertiesToFetch;
+ (id)personBuilderPropertiesToFetch;
+ (id)propertiesToFetchWithHint:(unint64_t)a3;
+ (id)propertySetAccessorsByPropertySet;
+ (id)propertySetsForPropertyFetchHints:(unint64_t)a3;
+ (id)transformValueExpression:(id)a3 forKeyPath:(id)a4;
+ (int64_t)faceFetchTypeForOptions:(id)a3;
+ (unint64_t)propertyFetchHintsForPropertySets:(id)a3;
- (BOOL)isTorsoOnly;
- (CGRect)gazeRect;
- (NSString)personLocalIdentifier;
- (PHFace)initWithFetchDictionary:(id)a3 propertyHint:(unint64_t)a4 photoLibrary:(id)a5;
- (id)_createPropertyObjectOfClass:(Class)a3 preFetchedProperties:(id)a4;
- (id)faceClusteringProperties;
@end

@implementation PHFace

- (CGRect)gazeRect
{
  x = self->_gazeRect.origin.x;
  y = self->_gazeRect.origin.y;
  width = self->_gazeRect.size.width;
  height = self->_gazeRect.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (id)faceClusteringProperties
{
  [(PHObject *)self assertRequiredFetchPropertyHints:4];
  v3 = objc_opt_class();

  return [(PHFace *)self _createPropertyObjectOfClass:v3];
}

- (id)_createPropertyObjectOfClass:(Class)a3 preFetchedProperties:(id)a4
{
  v6 = a4;
  v37 = 0;
  v38 = &v37;
  v39 = 0x3032000000;
  v40 = __Block_byref_object_copy__33921;
  v41 = __Block_byref_object_dispose__33922;
  v42 = ph_objc_getAssociatedObject(self, a3);
  v7 = v38[5];
  if (!v7)
  {
    v8 = [(objc_class *)a3 keyPathToPrimaryObject];
    if (v6)
    {
      v9 = [[a3 alloc] initWithFetchDictionary:v6 face:self prefetched:1];
      v10 = v38[5];
      v38[5] = v9;
    }

    else
    {
      v11 = [(objc_class *)a3 entityName];
      v12 = v11;
      v13 = @"DetectedFace";
      if (v11)
      {
        v13 = v11;
      }

      v14 = v13;

      v15 = MEMORY[0x1E696AE18];
      v16 = [(PHObject *)self objectID];
      if (v8)
      {
        [v15 predicateWithFormat:@"%K == %@", v8, v16];
      }

      else
      {
        [v15 predicateWithFormat:@"self == %@", v16];
      }
      v17 = ;

      v18 = [(objc_class *)a3 propertiesToFetch];
      v19 = [(PHObject *)self photoLibrary];
      v20 = [(objc_class *)a3 propertySetName];
      v21 = [v19 objectFetchingManagedObjectContextForObject:self propertySet:v20];

      v29[0] = MEMORY[0x1E69E9820];
      v29[1] = 3221225472;
      v29[2] = __60__PHFace__createPropertyObjectOfClass_preFetchedProperties___block_invoke;
      v29[3] = &unk_1E75A8840;
      v10 = v14;
      v30 = v10;
      v22 = v17;
      v31 = v22;
      v23 = v18;
      v32 = v23;
      v24 = v21;
      v35 = &v37;
      v36 = a3;
      v33 = v24;
      v34 = self;
      [v24 performBlockAndWait:v29];
    }

    v25 = ph_objc_setAssociatedObjectIfNotSet(self, a3, v38[5]);
    v26 = v38[5];
    v38[5] = v25;

    v7 = v38[5];
  }

  v27 = v7;
  _Block_object_dispose(&v37, 8);

  return v27;
}

void __60__PHFace__createPropertyObjectOfClass_preFetchedProperties___block_invoke(uint64_t a1)
{
  v7 = [MEMORY[0x1E695D5E0] fetchRequestWithEntityName:*(a1 + 32)];
  [v7 setPredicate:*(a1 + 40)];
  [v7 setPropertiesToFetch:*(a1 + 48)];
  [v7 setResultType:2];
  v2 = [*(a1 + 56) executeFetchRequest:v7 error:0];
  v3 = [v2 firstObject];
  v4 = [objc_alloc(*(a1 + 80)) initWithFetchDictionary:v3 face:*(a1 + 64) prefetched:0];
  v5 = *(*(a1 + 72) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v4;
}

- (PHFace)initWithFetchDictionary:(id)a3 propertyHint:(unint64_t)a4 photoLibrary:(id)a5
{
  v8 = a3;
  v96.receiver = self;
  v96.super_class = PHFace;
  v9 = [(PHObject *)&v96 initWithFetchDictionary:v8 propertyHint:a4 photoLibrary:a5];
  if (!v9)
  {
    goto LABEL_8;
  }

  v10 = [v8 objectForKeyedSubscript:@"size"];
  [v10 doubleValue];
  v9->_size = v11;

  v12 = [v8 objectForKeyedSubscript:@"centerX"];
  [v12 doubleValue];
  v9->_centerX = v13;

  v14 = [v8 objectForKeyedSubscript:@"centerY"];
  [v14 doubleValue];
  v9->_centerY = v15;

  v16 = [v8 objectForKeyedSubscript:@"bodyCenterX"];
  [v16 doubleValue];
  v9->_bodyCenterX = v17;

  v18 = [v8 objectForKeyedSubscript:@"bodyCenterY"];
  [v18 doubleValue];
  v9->_bodyCenterY = v19;

  v20 = [v8 objectForKeyedSubscript:@"bodyWidth"];
  [v20 doubleValue];
  v9->_bodyWidth = v21;

  v22 = [v8 objectForKeyedSubscript:@"bodyHeight"];
  [v22 doubleValue];
  v9->_bodyHeight = v23;

  v24 = [v8 objectForKeyedSubscript:@"detectionType"];
  v9->_detectionType = [v24 intValue];

  v25 = [v8 objectForKeyedSubscript:@"sourceWidth"];
  v9->_sourceWidth = [v25 longLongValue];

  v26 = [v8 objectForKeyedSubscript:@"sourceHeight"];
  v9->_sourceHeight = [v26 longLongValue];

  v27 = [v8 objectForKeyedSubscript:@"roll"];
  [v27 doubleValue];
  v9->_roll = v28;

  v29 = [v8 objectForKeyedSubscript:@"hidden"];
  v9->_hidden = [v29 BOOLValue];

  v30 = [v8 objectForKeyedSubscript:@"isInTrash"];
  v9->_inTrash = [v30 BOOLValue];

  v31 = [v8 objectForKeyedSubscript:@"manual"];
  v9->_manual = [v31 BOOLValue];

  v32 = [v8 objectForKeyedSubscript:@"hasSmile"];
  v9->_hasSmile = [v32 BOOLValue];

  v33 = [v8 objectForKeyedSubscript:@"blurScore"];
  [v33 doubleValue];
  v9->_blurScore = v34;

  v35 = [v8 objectForKeyedSubscript:@"isLeftEyeClosed"];
  v9->_leftEyeClosed = [v35 BOOLValue];

  v36 = [v8 objectForKeyedSubscript:@"isRightEyeClosed"];
  v9->_rightEyeClosed = [v36 BOOLValue];

  v37 = [v8 objectForKeyedSubscript:@"adjustmentVersion"];
  adjustmentVersion = v9->_adjustmentVersion;
  v9->_adjustmentVersion = v37;

  v39 = [v8 objectForKeyedSubscript:@"nameSource"];
  v9->_nameSource = [v39 integerValue];

  v40 = [v8 objectForKeyedSubscript:@"trainingType"];
  v9->_trainingType = [v40 intValue];

  v41 = [v8 objectForKeyedSubscript:@"confirmedFaceCropGenerationState"];
  v9->_confirmedFaceCropGenerationState = [v41 intValue];

  v42 = [v8 objectForKeyedSubscript:@"poseYaw"];
  [v42 doubleValue];
  v9->_poseYaw = v43;

  v44 = [v8 objectForKeyedSubscript:@"faceAlgorithmVersion"];
  v9->_faceAlgorithmVersion = [v44 integerValue];

  v45 = [v8 objectForKeyedSubscript:@"clusterSequenceNumber"];
  v9->_clusterSequenceNumber = [v45 integerValue];

  v46 = [v8 objectForKeyedSubscript:@"qualityMeasure"];
  v9->_qualityMeasure = [v46 integerValue];

  v47 = [v8 objectForKeyedSubscript:@"quality"];
  [v47 doubleValue];
  v9->_quality = v48;

  v49 = [v8 objectForKeyedSubscript:@"vuObservationID"];
  v9->_vuObservationID = [v49 integerValue];

  v50 = [v8 objectForKeyedSubscript:@"ageType"];
  v9->_ageType = [v50 integerValue];

  v51 = [v8 objectForKeyedSubscript:@"genderType"];
  v9->_sexType = [v51 integerValue];

  v52 = [v8 objectForKeyedSubscript:@"eyesState"];
  v9->_eyesState = [v52 integerValue];

  v53 = [v8 objectForKeyedSubscript:@"smileType"];
  v9->_smileType = [v53 integerValue];

  v54 = [v8 objectForKeyedSubscript:@"facialHairType"];
  v9->_facialHairType = [v54 integerValue];

  v55 = [v8 objectForKeyedSubscript:@"hairColorType"];
  v9->_hairColorType = [v55 integerValue];

  v56 = [v8 objectForKeyedSubscript:@"glassesType"];
  v9->_glassesType = [v56 integerValue];

  v57 = [v8 objectForKeyedSubscript:@"eyeMakeupType"];
  v9->_eyeMakeupType = [v57 integerValue];

  v58 = [v8 objectForKeyedSubscript:@"lipMakeupType"];
  v9->_lipMakeupType = [v58 integerValue];

  v59 = [v8 objectForKeyedSubscript:@"faceExpressionType"];
  v9->_faceExpressionType = [v59 integerValue];

  v60 = [v8 objectForKeyedSubscript:@"headgearType"];
  v9->_headgearType = [v60 integerValue];

  v61 = [v8 objectForKeyedSubscript:@"hairType"];
  v9->_hairType = [v61 integerValue];

  v62 = [v8 objectForKeyedSubscript:@"poseType"];
  v9->_poseType = [v62 integerValue];

  v63 = [v8 objectForKeyedSubscript:@"skintoneType"];
  v9->_skintoneType = [v63 integerValue];

  v64 = [v8 objectForKeyedSubscript:@"ethnicityType"];
  v9->_ethnicityType = [v64 integerValue];

  v65 = [v8 objectForKeyedSubscript:@"hasFaceMask"];
  v9->_hasFaceMask = [v65 BOOLValue];

  v66 = [v8 objectForKeyedSubscript:@"gazeType"];
  v9->_gazeType = [v66 integerValue];

  v67 = [v8 objectForKeyedSubscript:@"gazeCenterX"];
  [v67 doubleValue];
  v9->_gazeCenterX = v68;

  v69 = [v8 objectForKeyedSubscript:@"gazeCenterY"];
  [v69 doubleValue];
  v9->_gazeCenterY = v70;

  v71 = MEMORY[0x1E69BE3D0];
  v72 = [v8 objectForKeyedSubscript:@"gazeRectString"];
  [v71 cgRectFromGazeRectString:v72];
  v9->_gazeRect.origin.x = v73;
  v9->_gazeRect.origin.y = v74;
  v9->_gazeRect.size.width = v75;
  v9->_gazeRect.size.height = v76;

  v77 = [v8 objectForKeyedSubscript:@"gazeAngle"];
  [v77 floatValue];
  v9->_gazeAngle = v78;

  v79 = [v8 objectForKeyedSubscript:@"gazeConfidence"];
  [v79 floatValue];
  v9->_gazeConfidence = v80;

  v81 = [v8 objectForKeyedSubscript:@"startTime"];
  [v81 doubleValue];
  v9->_startTime = v82;

  v83 = [v8 objectForKeyedSubscript:@"duration"];
  [v83 doubleValue];
  v9->_duration = v84;

  v85 = [v8 objectForKeyedSubscript:@"thumbnailIdentifier"];
  thumbnailIdentifier = v9->_thumbnailIdentifier;
  v9->_thumbnailIdentifier = v85;

  v87 = [v8 objectForKeyedSubscript:@"personForFace.personUUID"];
  personUUID = v9->_personUUID;
  v9->_personUUID = v87;

  if (!v9->_personUUID)
  {
    v89 = [v8 objectForKeyedSubscript:@"personForTemporalDetectedFaces.personUUID"];
    v90 = v9->_personUUID;
    v9->_personUUID = v89;
  }

  v91 = [v8 objectForKeyedSubscript:@"vipModelType"];
  v92 = [v91 integerValue];

  if (!v92)
  {
    v93 = 0;
LABEL_10:
    v9->_isInVIPModel = v93;
    if ((a4 & 4) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  v93 = v92;
  if (v92 == 1)
  {
    goto LABEL_10;
  }

  if ((a4 & 4) != 0)
  {
LABEL_7:
    v94 = [(PHFace *)v9 _createPropertyObjectOfClass:objc_opt_class() preFetchedProperties:v8];
  }

LABEL_8:

  return v9;
}

- (NSString)personLocalIdentifier
{
  if (self->_personUUID)
  {
    v3 = [(PHObject *)PHPerson localIdentifierWithUUID:?];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (BOOL)isTorsoOnly
{
  [(PHFace *)self centerX];
  if (v3 != 0.0)
  {
    return 0;
  }

  [(PHFace *)self bodyCenterX];
  return v4 != 0.0;
}

+ (id)fetchSuggestedFacesForPerson:(id)a3 options:(id)a4
{
  v124[2] = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = a4;
  [MEMORY[0x1E695DF00] timeIntervalSinceReferenceDate];
  v79 = v7;
  v8 = [v6 photoLibrary];
  v9 = [PHFetchOptions fetchOptionsWithPhotoLibrary:v8 orObject:v5];

  [v9 setFetchLimit:250];
  v10 = [MEMORY[0x1E696AEB0] sortDescriptorWithKey:@"creationDate" ascending:0];
  v124[0] = v10;
  v11 = [MEMORY[0x1E696AEB0] sortDescriptorWithKey:@"uuid" ascending:0];
  v124[1] = v11;
  v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:v124 count:2];
  [v9 setSortDescriptors:v12];

  [v9 setWantsIncrementalChangeDetails:0];
  v80 = v9;
  v13 = [PHAsset fetchAssetsForPerson:v5 options:v9];
  v81 = v6;
  v14 = [v6 copy];
  v93 = [PHFace fetchFacesGroupedByAssetLocalIdentifierForAssets:v13 options:v14];

  v86 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:{objc_msgSend(v13, "count")}];
  v89 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:{objc_msgSend(v13, "count")}];
  v82 = v5;
  v15 = [v5 localIdentifier];
  v88 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v13, "count")}];
  v110 = 0u;
  v111 = 0u;
  v112 = 0u;
  v113 = 0u;
  obj = v13;
  v94 = [obj countByEnumeratingWithState:&v110 objects:v123 count:16];
  if (v94)
  {
    v91 = *v111;
    v16 = 0.75;
    do
    {
      for (i = 0; i != v94; ++i)
      {
        if (*v111 != v91)
        {
          objc_enumerationMutation(obj);
        }

        v18 = *(*(&v110 + 1) + 8 * i);
        v19 = objc_autoreleasePoolPush();
        v20 = [v18 localIdentifier];
        v21 = [v93 objectForKeyedSubscript:v20];
        v106 = 0u;
        v107 = 0u;
        v108 = 0u;
        v109 = 0u;
        v22 = v21;
        v23 = [v22 countByEnumeratingWithState:&v106 objects:v122 count:16];
        v24 = v22;
        if (v23)
        {
          v25 = v23;
          v96 = v20;
          v98 = v19;
          v26 = *v107;
LABEL_8:
          v27 = 0;
          while (1)
          {
            if (*v107 != v26)
            {
              objc_enumerationMutation(v22);
            }

            v28 = *(*(&v106 + 1) + 8 * v27);
            v29 = [v28 personLocalIdentifier];
            v30 = [v29 isEqualToString:v15];

            if (v30)
            {
              break;
            }

            if (v25 == ++v27)
            {
              v25 = [v22 countByEnumeratingWithState:&v106 objects:v122 count:16];
              if (v25)
              {
                goto LABEL_8;
              }

              v24 = v22;
              v20 = v96;
              v19 = v98;
              goto LABEL_30;
            }
          }

          v24 = v28;

          v20 = v96;
          v19 = v98;
          if (!v24)
          {
            goto LABEL_31;
          }

          [v88 addObject:v18];
          [v89 setObject:v24 forKeyedSubscript:v96];
          [v24 roll];
          if (v31 < 0.0)
          {
            v31 = -v31;
          }

          if (v31 <= 3.142)
          {
            v32 = v31;
          }

          else
          {
            v32 = 3.142;
          }

          [v24 size];
          v34 = 0.0;
          if (v33 >= 0.05 && v33 <= v16)
          {
            v36 = 0.4;
            if (v33 > 0.4)
            {
              v16 = 0.75;
              v33 = 0.75 - fmin(v33, 0.75);
              v36 = 0.35;
            }

            v34 = v33 / v36;
          }

          v37 = 3.142 - v32;
          v38 = ceil(v34 * 4.0) * 0.25;
          v39 = v37 / 3.142;
          [v18 overallAestheticScore];
          v41 = ceil(v40 * 10.0) / 10.0;
          [v18 curationScore];
          v43 = 1.0 / [v22 count] + v39 * 10.0 + v38 * 0.1 + v41 * 0.01 + ceil(v42 * 10.0) / 10.0 * 0.01;
          [v24 quality];
          v45 = [MEMORY[0x1E696AD98] numberWithDouble:{v43 + fmax(v44, 0.0) * 0.001}];
          [v86 setObject:v45 forKeyedSubscript:v96];
        }

LABEL_30:

LABEL_31:
        objc_autoreleasePoolPop(v19);
      }

      v94 = [obj countByEnumeratingWithState:&v110 objects:v123 count:16];
    }

    while (v94);
  }

  v104[0] = MEMORY[0x1E69E9820];
  v104[1] = 3221225472;
  v104[2] = __47__PHFace_fetchSuggestedFacesForPerson_options___block_invoke;
  v104[3] = &unk_1E75A88B8;
  v87 = v86;
  v105 = v87;
  v46 = [v88 sortedArrayUsingComparator:v104];
  if (v81 && [v81 fetchLimit])
  {
    v47 = [v81 fetchLimit];
  }

  else
  {
    v47 = 4;
  }

  v95 = [MEMORY[0x1E695DF70] arrayWithCapacity:v47];
  v48 = [v82 photoLibrary];
  v49 = [v48 librarySpecificFetchOptions];

  [v49 setFetchLimit:1];
  [v49 setWantsIncrementalChangeDetails:0];
  v85 = v49;
  v84 = [PHFace fetchKeyFaceForPerson:v82 options:v49];
  v50 = [v84 firstObject];
  v97 = [v50 localIdentifier];
  v92 = v47;
  v51 = [MEMORY[0x1E695DFA8] setWithCapacity:v47];
  v52 = [MEMORY[0x1E695DEE8] currentCalendar];
  if (v50)
  {
    [v95 addObject:v50];
    v121 = v50;
    v53 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v121 count:1];
    v54 = [PHAsset fetchAssetsForFaces:v53 options:0];
    v55 = [v54 firstObject];

    if (v55)
    {
      v56 = [v55 creationDate];
      v57 = [v52 pl_startOfDayForDate:v56];

      [v51 addObject:v57];
    }
  }

  v83 = v50;
  v102 = 0u;
  v103 = 0u;
  v100 = 0u;
  v101 = 0u;
  v99 = v46;
  v58 = [v99 countByEnumeratingWithState:&v100 objects:v120 count:16];
  if (v58)
  {
    v59 = v58;
    v60 = *v101;
    while (2)
    {
      for (j = 0; j != v59; ++j)
      {
        if (*v101 != v60)
        {
          objc_enumerationMutation(v99);
        }

        v62 = *(*(&v100 + 1) + 8 * j);
        v63 = [v62 creationDate];
        v64 = [v52 pl_startOfDayForDate:v63];

        if (([v51 containsObject:v64] & 1) == 0)
        {
          [v51 addObject:v64];
          v65 = [v62 localIdentifier];
          v66 = [v89 objectForKeyedSubscript:v65];

          if (v66)
          {
            v67 = [v66 localIdentifier];
            v68 = [v67 isEqualToString:v97];

            if ((v68 & 1) == 0)
            {
              [v95 addObject:v66];
              if ([v95 count] >= v92)
              {

                goto LABEL_55;
              }
            }
          }
        }
      }

      v59 = [v99 countByEnumeratingWithState:&v100 objects:v120 count:16];
      if (v59)
      {
        continue;
      }

      break;
    }
  }

LABEL_55:

  v69 = [PHManualFetchResult alloc];
  v70 = v80;
  v71 = [v80 photoLibrary];
  v72 = +[PHFace fetchType];
  v73 = [v81 fetchPropertySetsAsSet];
  v74 = [(PHManualFetchResult *)v69 initWithObjects:v95 photoLibrary:v71 fetchType:v72 fetchPropertySets:v73 identifier:0 registerIfNeeded:0];

  v75 = PLPhotoKitGetLog();
  if (os_log_type_enabled(v75, OS_LOG_TYPE_DEFAULT))
  {
    v76 = [(PHFetchResult *)v74 count];
    [MEMORY[0x1E695DF00] timeIntervalSinceReferenceDate];
    *buf = 138412802;
    v115 = v15;
    v116 = 2048;
    v117 = v76;
    v70 = v80;
    v118 = 2048;
    v119 = (v77 - v79) * 1000.0;
    _os_log_impl(&dword_19C86F000, v75, OS_LOG_TYPE_DEFAULT, "Finished running suggested faces for: %@. Found %lu assets, took %f ms", buf, 0x20u);
  }

  return v74;
}

uint64_t __47__PHFace_fetchSuggestedFacesForPerson_options___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);
  v6 = a2;
  v7 = [a3 localIdentifier];
  v8 = [v5 objectForKeyedSubscript:v7];
  v9 = *(a1 + 32);
  v10 = [v6 localIdentifier];

  v11 = [v9 objectForKeyedSubscript:v10];
  v12 = [v8 compare:v11];

  return v12;
}

+ (id)fetchFacesGroupedByAssetLocalIdentifierForAssets:(id)a3 options:(id)a4
{
  v48 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = a4;
  v34 = 0;
  v35 = &v34;
  v36 = 0x3032000000;
  v37 = __Block_byref_object_copy__33921;
  v38 = __Block_byref_object_dispose__33922;
  v39 = 0;
  v7 = [v6 photoLibrary];
  if (!v7)
  {
    memset(v33, 0, sizeof(v33));
    v8 = v5;
    if ([v8 countByEnumeratingWithState:v33 objects:v47 count:16])
    {
      v7 = [**(&v33[0] + 1) photoLibrary];
      v9 = [PHFetchOptions fetchOptionsCopyFromNullableFetchOptions:v6 photoLibrary:v7];

      v6 = v9;
    }

    else
    {
      v7 = 0;
    }
  }

  v10 = [MEMORY[0x1E695DF70] array];
  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  v11 = v5;
  v12 = 0;
  v13 = [v11 countByEnumeratingWithState:&v29 objects:v46 count:16];
  if (v13)
  {
    v14 = *v30;
    do
    {
      v15 = 0;
      v12 += v13;
      do
      {
        if (*v30 != v14)
        {
          objc_enumerationMutation(v11);
        }

        v16 = [*(*(&v29 + 1) + 8 * v15) uuid];
        [v10 addObject:v16];

        ++v15;
      }

      while (v13 != v15);
      v13 = [v11 countByEnumeratingWithState:&v29 objects:v46 count:16];
    }

    while (v13);
  }

  if (v7)
  {
    v17 = [v7 photoLibraryForCurrentQueueQoS];
    if (v17)
    {
      if (v6)
      {
        v18 = [PHQuery queryForFacesWithOptions:v6];
        v19 = [v18 fetchRequest];
      }

      else
      {
        v19 = 0;
      }

      v21 = [PHFace faceFetchTypeForOptions:v6];
      v22 = MEMORY[0x1E69BE3D0];
      v23 = [v19 predicate];
      v25[0] = MEMORY[0x1E69E9820];
      v25[1] = 3221225472;
      v25[2] = __67__PHFace_fetchFacesGroupedByAssetLocalIdentifierForAssets_options___block_invoke;
      v25[3] = &unk_1E75A8890;
      v28 = &v34;
      v26 = v7;
      v27 = v6;
      [v22 batchFetchDetectedFacesByAssetUUIDWithAssetUUIDs:v10 predicate:v23 fetchType:v21 library:v17 completion:v25];

      v20 = v35[5];
    }

    else
    {
      v19 = PLPhotoKitGetLog();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412802;
        v41 = 0;
        v42 = 2112;
        v43 = v6;
        v44 = 2048;
        v45 = v12;
        _os_log_impl(&dword_19C86F000, v19, OS_LOG_TYPE_ERROR, "No photolibrary to use for executing the batch fetching person groups: %@, options: %@, assets: %ld", buf, 0x20u);
      }

      v20 = MEMORY[0x1E695E0F8];
    }
  }

  else
  {
    v17 = PLPhotoKitGetLog();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412802;
      v41 = 0;
      v42 = 2112;
      v43 = v6;
      v44 = 2048;
      v45 = v12;
      _os_log_impl(&dword_19C86F000, v17, OS_LOG_TYPE_ERROR, "No photolibrary to use for executing the batch fetching person groups: %@, options: %@, assets: %ld", buf, 0x20u);
    }

    v20 = MEMORY[0x1E695E0F8];
  }

  _Block_object_dispose(&v34, 8);

  return v20;
}

void __67__PHFace_fetchFacesGroupedByAssetLocalIdentifierForAssets_options___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v19 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if (v5)
  {
    v7 = [MEMORY[0x1E695DF90] dictionary];
    v8 = *(*(a1 + 48) + 8);
    v9 = *(v8 + 40);
    *(v8 + 40) = v7;

    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __67__PHFace_fetchFacesGroupedByAssetLocalIdentifierForAssets_options___block_invoke_2;
    v13[3] = &unk_1E75A8868;
    v14 = *(a1 + 32);
    v10 = *(a1 + 40);
    v11 = *(a1 + 48);
    v15 = v10;
    v16 = v11;
    [v5 enumerateKeysAndObjectsUsingBlock:v13];

    v12 = v14;
  }

  else
  {
    v12 = PLPhotoKitGetLog();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v18 = v6;
      _os_log_impl(&dword_19C86F000, v12, OS_LOG_TYPE_ERROR, "Error batch fetching person groups by asset: %@", buf, 0xCu);
    }
  }
}

void __67__PHFace_fetchFacesGroupedByAssetLocalIdentifierForAssets_options___block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  v25 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v19 = [(PHObject *)PHAsset localIdentifierWithUUID:a2];
  v6 = [MEMORY[0x1E695DF70] array];
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v7 = v5;
  v8 = [v7 countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v21;
    do
    {
      v11 = 0;
      do
      {
        if (*v21 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = [(PHObjectPLAdapter *)[PHFacePLAdapter alloc] initWithPLManagedObject:*(*(&v20 + 1) + 8 * v11) photoLibrary:*(a1 + 32)];
        v13 = [*(a1 + 40) fetchPropertySets];
        v14 = [(PHFacePLAdapter *)v12 newObjectWithPropertySets:v13];

        [v6 addObject:v14];
        ++v11;
      }

      while (v9 != v11);
      v9 = [v7 countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v9);
  }

  v15 = [PHManualFetchResult alloc];
  v16 = *(a1 + 32);
  v17 = [*(a1 + 40) fetchPropertySetsAsSet];
  v18 = [(PHManualFetchResult *)v15 initWithObjects:v6 photoLibrary:v16 fetchType:@"PHFace" fetchPropertySets:v17 identifier:0 registerIfNeeded:0];

  [*(*(*(a1 + 48) + 8) + 40) setObject:v18 forKeyedSubscript:v19];
}

+ (NSArray)sortByAddedDateDescending
{
  v5[1] = *MEMORY[0x1E69E9840];
  v2 = [MEMORY[0x1E696AEB0] sortDescriptorWithKey:@"assetForFace.addedDate" ascending:0];
  v5[0] = v2;
  v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:v5 count:1];

  return v3;
}

+ (id)propertySetAccessorsByPropertySet
{
  if (propertySetAccessorsByPropertySet_onceToken_34174 != -1)
  {
    dispatch_once(&propertySetAccessorsByPropertySet_onceToken_34174, &__block_literal_global_272);
  }

  v3 = propertySetAccessorsByPropertySet_accessorByPropertySetName_34175;

  return v3;
}

void __43__PHFace_propertySetAccessorsByPropertySet__block_invoke()
{
  v3[4] = *MEMORY[0x1E69E9840];
  v2[0] = @"PHFacePropertySetIdentifier";
  v2[1] = @"PHFacePropertySetCore";
  v3[0] = @"self";
  v3[1] = @"self";
  v2[2] = @"PHFacePropertySetClustering";
  v2[3] = @"PHFacePropertySetCropping";
  v3[2] = @"faceClusteringProperties";
  v3[3] = @"self";
  v0 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v3 forKeys:v2 count:4];
  v1 = propertySetAccessorsByPropertySet_accessorByPropertySetName_34175;
  propertySetAccessorsByPropertySet_accessorByPropertySetName_34175 = v0;
}

+ (Class)propertySetClassForPropertySet:(id)a3
{
  v3 = propertySetClassForPropertySet__onceToken_34183;
  v4 = a3;
  if (v3 != -1)
  {
    dispatch_once(&propertySetClassForPropertySet__onceToken_34183, &__block_literal_global_269);
  }

  v5 = [propertySetClassForPropertySet__propertySetClassByPropertySetName_34184 objectForKey:v4];

  return v5;
}

void __41__PHFace_propertySetClassForPropertySet___block_invoke()
{
  v3[4] = *MEMORY[0x1E69E9840];
  v2[0] = @"PHFacePropertySetIdentifier";
  v3[0] = objc_opt_class();
  v2[1] = @"PHFacePropertySetCore";
  v3[1] = objc_opt_class();
  v2[2] = @"PHFacePropertySetClustering";
  v3[2] = objc_opt_class();
  v2[3] = @"PHFacePropertySetCropping";
  v3[3] = objc_opt_class();
  v0 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v3 forKeys:v2 count:4];
  v1 = propertySetClassForPropertySet__propertySetClassByPropertySetName_34184;
  propertySetClassForPropertySet__propertySetClassByPropertySetName_34184 = v0;
}

+ (int64_t)faceFetchTypeForOptions:(id)a3
{
  v3 = a3;
  v4 = v3;
  if (!v3)
  {
    goto LABEL_5;
  }

  if ([v3 includeTorsoAndFaceDetectionData] && !objc_msgSend(v4, "includeOnlyTorsoDetectionData"))
  {
    v5 = 2;
    goto LABEL_8;
  }

  if (([v4 includeTorsoAndFaceDetectionData] & 1) == 0)
  {
    v5 = [v4 includeOnlyTorsoDetectionData];
  }

  else
  {
LABEL_5:
    v5 = 0;
  }

LABEL_8:

  return v5;
}

+ (id)fetchKeyFaceByPersonLocalIdentifierForPersons:(id)a3 options:(id)a4
{
  v38 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v26 = a4;
  v6 = [MEMORY[0x1E695DF70] array];
  v7 = [MEMORY[0x1E695DF90] dictionary];
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v8 = v5;
  v9 = [v8 countByEnumeratingWithState:&v32 objects:v37 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = 0;
    v12 = *v33;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v33 != v12)
        {
          objc_enumerationMutation(v8);
        }

        v14 = *(*(&v32 + 1) + 8 * i);
        v15 = [v14 objectID];
        [v6 addObject:v15];
        v16 = [v14 localIdentifier];
        [v7 setObject:v16 forKeyedSubscript:v15];

        if (!v11)
        {
          v11 = [v14 photoLibrary];
        }
      }

      v10 = [v8 countByEnumeratingWithState:&v32 objects:v37 count:16];
    }

    while (v10);
  }

  else
  {
    v11 = 0;
  }

  if ([v6 count])
  {
    v17 = [v26 fetchPropertySets];
    if (!v17)
    {
      v36 = @"PHFacePropertySetCore";
      v17 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v36 count:1];
    }

    v18 = [MEMORY[0x1E695DF90] dictionary];
    v19 = MEMORY[0x1E69BE3D0];
    v20 = [v11 photoLibrary];
    v27[0] = MEMORY[0x1E69E9820];
    v27[1] = 3221225472;
    v27[2] = __64__PHFace_fetchKeyFaceByPersonLocalIdentifierForPersons_options___block_invoke;
    v27[3] = &unk_1E75A8818;
    v28 = v11;
    v29 = v17;
    v30 = v7;
    v21 = v18;
    v31 = v21;
    v22 = v17;
    [v19 batchFetchKeyFaceByPersonObjectIDWithPersonObjectIDs:v6 library:v20 completion:v27];

    v23 = v31;
    v24 = v21;
  }

  else
  {
    v24 = MEMORY[0x1E695E0F8];
  }

  return v24;
}

void __64__PHFace_fetchKeyFaceByPersonLocalIdentifierForPersons_options___block_invoke(id *a1, void *a2)
{
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __64__PHFace_fetchKeyFaceByPersonLocalIdentifierForPersons_options___block_invoke_2;
  v10[3] = &unk_1E75A87F0;
  v4 = a1[4];
  v5 = a1[5];
  v6 = a1[6];
  v7 = a1[7];
  *&v8 = v6;
  *(&v8 + 1) = v7;
  *&v9 = v4;
  *(&v9 + 1) = v5;
  v11 = v9;
  v12 = v8;
  [a2 enumerateKeysAndObjectsUsingBlock:v10];
}

void __64__PHFace_fetchKeyFaceByPersonLocalIdentifierForPersons_options___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = a2;
  v9 = [(PHObjectPLAdapter *)[PHFacePLAdapter alloc] initWithPLManagedObject:v5 photoLibrary:*(a1 + 32)];

  v7 = [(PHFacePLAdapter *)v9 newObjectWithPropertySets:*(a1 + 40)];
  v8 = [*(a1 + 48) objectForKeyedSubscript:v6];

  if (v8 && v7)
  {
    [*(a1 + 56) setObject:v7 forKeyedSubscript:v8];
  }
}

+ (id)fetchFacesForFaceCrop:(id)a3 options:(id)a4
{
  v4 = [PHQuery queryForFacesOnFaceCrop:a3 options:a4];
  v5 = [v4 executeQuery];

  return v5;
}

+ (id)fetchRejectedFacesForPerson:(id)a3 options:(id)a4
{
  if (a3)
  {
    v4 = [PHQuery queryForRejectedFacesOnPerson:a3 options:a4];
    v5 = [v4 executeQuery];
  }

  else
  {
    v5 = objc_alloc_init(PHFetchResult);
  }

  return v5;
}

+ (id)fetchSingletonFacesWithOptions:(id)a3
{
  v3 = [PHQuery queryForSingletonFacesWithOptions:a3];
  v4 = [v3 executeQuery];

  return v4;
}

+ (id)fetchKeyFaceForFaceGroup:(id)a3 options:(id)a4
{
  if (a3)
  {
    v4 = [PHQuery queryForKeyFaceForFaceGroup:a3 options:a4];
    v5 = [v4 executeQuery];
  }

  else
  {
    v5 = objc_alloc_init(PHFetchResult);
  }

  return v5;
}

+ (id)fetchFacesInFaceGroup:(id)a3 options:(id)a4
{
  if (a3)
  {
    v4 = [PHQuery queryForFacesInFaceGroup:a3 options:a4];
    v5 = [v4 executeQuery];
  }

  else
  {
    v5 = objc_alloc_init(PHFetchResult);
  }

  return v5;
}

+ (id)fetchFacesOnAssetWithFace:(id)a3 options:(id)a4
{
  if (a3)
  {
    v4 = [PHQuery queryForFacesOnAssetWithFace:a3 options:a4];
    v5 = [v4 executeQuery];
  }

  else
  {
    v5 = objc_alloc_init(PHFetchResult);
  }

  return v5;
}

+ (id)fetchKeyFaceForPerson:(id)a3 options:(id)a4
{
  if (a3)
  {
    v4 = [PHQuery queryForKeyFaceOnPerson:a3 options:a4];
    v5 = [v4 executeQuery];
  }

  else
  {
    v5 = objc_alloc_init(PHFetchResult);
  }

  return v5;
}

+ (id)fetchFacesForPerson:(id)a3 options:(id)a4
{
  if (a3)
  {
    v4 = [PHQuery queryForFacesForPerson:a3 options:a4];
    v5 = [v4 executeQuery];
  }

  else
  {
    v5 = objc_alloc_init(PHFetchResult);
  }

  return v5;
}

+ (id)fetchFacesInAssets:(id)a3 options:(id)a4
{
  v5 = a3;
  v6 = a4;
  if ([v5 count])
  {
    v7 = [PHQuery queryForFacesInAssets:v5 options:v6];
    v8 = [v7 executeQuery];
  }

  else
  {
    v8 = objc_alloc_init(PHFetchResult);
  }

  return v8;
}

+ (id)fetchFacesInAsset:(id)a3 options:(id)a4
{
  if (a3)
  {
    v4 = [PHQuery queryForFacesInAsset:a3 options:a4];
    v5 = [v4 executeQuery];
  }

  else
  {
    v5 = objc_alloc_init(PHFetchResult);
  }

  return v5;
}

+ (id)fetchFacesWithVuObservationIDs:(id)a3 options:(id)a4
{
  v5 = a3;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __49__PHFace_fetchFacesWithVuObservationIDs_options___block_invoke;
  v9[3] = &unk_1E75AB0E0;
  v10 = v5;
  v6 = v5;
  v7 = [PHObject authorizationAwareFetchResultWithOptions:a4 fetchBlock:v9];

  return v7;
}

id __49__PHFace_fetchFacesWithVuObservationIDs_options___block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = [PHQuery queryForFacesWithVuObservationIDs:*(a1 + 32) options:a2];
  v3 = [v2 executeQuery];

  return v3;
}

+ (id)fetchFacesWithLocalIdentifiers:(id)a3 options:(id)a4
{
  v5 = a3;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __49__PHFace_fetchFacesWithLocalIdentifiers_options___block_invoke;
  v9[3] = &unk_1E75AB0E0;
  v10 = v5;
  v6 = v5;
  v7 = [PHObject authorizationAwareFetchResultWithOptions:a4 fetchBlock:v9];

  return v7;
}

id __49__PHFace_fetchFacesWithLocalIdentifiers_options___block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = [PHQuery queryForFacesWithLocalIdentifiers:*(a1 + 32) options:a2];
  v3 = [v2 executeQuery];

  return v3;
}

id __32__PHFace_fetchFacesWithOptions___block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = [PHQuery queryForFacesWithOptions:a2];
  v3 = [v2 executeQuery];

  return v3;
}

+ (id)transformValueExpression:(id)a3 forKeyPath:(id)a4
{
  v6 = a3;
  v7 = a4;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __46__PHFace_transformValueExpression_forKeyPath___block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (transformValueExpression_forKeyPath__onceToken_34187 != -1)
  {
    dispatch_once(&transformValueExpression_forKeyPath__onceToken_34187, block);
  }

  if ([transformValueExpression_forKeyPath___passThroughSet_34188 containsObject:v7])
  {
    v8 = v6;
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

void __46__PHFace_transformValueExpression_forKeyPath___block_invoke()
{
  v4[53] = *MEMORY[0x1E69E9840];
  v0 = MEMORY[0x1E695DFD8];
  v4[0] = @"uuid";
  v4[1] = @"size";
  v4[2] = @"centerX";
  v4[3] = @"centerY";
  v4[4] = @"detectionType";
  v4[5] = @"bodyCenterX";
  v4[6] = @"bodyCenterY";
  v4[7] = @"bodyWidth";
  v4[8] = @"bodyHeight";
  v4[9] = @"sourceWidth";
  v4[10] = @"sourceHeight";
  v4[11] = @"roll";
  v4[12] = @"hidden";
  v4[13] = @"manual";
  v4[14] = @"isInVIPModel";
  v4[15] = @"hasSmile";
  v4[16] = @"blurScore";
  v4[17] = @"isLeftEyeClosed";
  v4[18] = @"isRightEyeClosed";
  v4[19] = @"nameSource";
  v4[20] = @"adjustmentVersion";
  v4[21] = @"poseYaw";
  v4[22] = @"faceAlgorithmVersion";
  v4[23] = @"clusterSequenceNumber";
  v4[24] = @"qualityMeasure";
  v4[25] = @"quality";
  v4[26] = @"vuObservationID";
  v4[27] = @"confirmedFaceCropGenerationState";
  v4[28] = @"trainingType";
  v4[29] = @"ageType";
  v4[30] = @"sexType";
  v4[31] = @"eyesState";
  v4[32] = @"smileType";
  v4[33] = @"facialHairType";
  v4[34] = @"hairColorType";
  v4[35] = @"glassesType";
  v4[36] = @"eyeMakeupType";
  v4[37] = @"lipMakeupType";
  v4[38] = @"faceExpressionType";
  v4[39] = @"headgearType";
  v4[40] = @"hairType";
  v4[41] = @"poseType";
  v4[42] = @"skintoneType";
  v4[43] = @"ethnicityType";
  v4[44] = @"hasFaceMask";
  v4[45] = @"gazeType";
  v4[46] = @"gazeCenterX";
  v4[47] = @"gazeCenterY";
  v4[48] = @"gazeAngle";
  v4[49] = @"gazeConfidence";
  v4[50] = @"startTime";
  v4[51] = @"duration";
  v4[52] = @"personUUID";
  v1 = [MEMORY[0x1E695DEC8] arrayWithObjects:v4 count:53];
  v2 = [v0 setWithArray:v1];
  v3 = transformValueExpression_forKeyPath___passThroughSet_34188;
  transformValueExpression_forKeyPath___passThroughSet_34188 = v2;
}

+ (id)entityKeyMap
{
  pl_dispatch_once();
  v2 = entityKeyMap_pl_once_object_16_34200;

  return v2;
}

void __22__PHFace_entityKeyMap__block_invoke()
{
  v113[54] = *MEMORY[0x1E69E9840];
  v45 = [PHEntityKeyMap alloc];
  v112[0] = @"uuid";
  v111 = @"uuid";
  v57 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v111 count:1];
  v113[0] = v57;
  v112[1] = @"size";
  v110 = @"size";
  v56 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v110 count:1];
  v113[1] = v56;
  v112[2] = @"centerX";
  v109 = @"centerX";
  v55 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v109 count:1];
  v113[2] = v55;
  v112[3] = @"centerY";
  v108 = @"centerY";
  v54 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v108 count:1];
  v113[3] = v54;
  v112[4] = @"detectionType";
  v107 = @"detectionType";
  v53 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v107 count:1];
  v113[4] = v53;
  v112[5] = @"bodyCenterX";
  v106 = @"bodyCenterX";
  v52 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v106 count:1];
  v113[5] = v52;
  v112[6] = @"bodyCenterY";
  v105 = @"bodyCenterY";
  v51 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v105 count:1];
  v113[6] = v51;
  v112[7] = @"bodyWidth";
  v104 = @"bodyWidth";
  v50 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v104 count:1];
  v113[7] = v50;
  v112[8] = @"bodyHeight";
  v103 = @"bodyHeight";
  v49 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v103 count:1];
  v113[8] = v49;
  v112[9] = @"sourceWidth";
  v102 = @"sourceWidth";
  v48 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v102 count:1];
  v113[9] = v48;
  v112[10] = @"sourceHeight";
  v101 = @"sourceHeight";
  v47 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v101 count:1];
  v113[10] = v47;
  v112[11] = @"roll";
  v100 = @"roll";
  v46 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v100 count:1];
  v113[11] = v46;
  v112[12] = @"hidden";
  v99 = @"hidden";
  v44 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v99 count:1];
  v113[12] = v44;
  v112[13] = @"manual";
  v98 = @"manual";
  v43 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v98 count:1];
  v113[13] = v43;
  v112[14] = @"vipModelType";
  v97 = @"isInVIPModel";
  v42 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v97 count:1];
  v113[14] = v42;
  v112[15] = @"hasSmile";
  v96 = @"hasSmile";
  v41 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v96 count:1];
  v113[15] = v41;
  v112[16] = @"blurScore";
  v95 = @"blurScore";
  v40 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v95 count:1];
  v113[16] = v40;
  v112[17] = @"isLeftEyeClosed";
  v94 = @"isLeftEyeClosed";
  v39 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v94 count:1];
  v113[17] = v39;
  v112[18] = @"isRightEyeClosed";
  v93 = @"isRightEyeClosed";
  v38 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v93 count:1];
  v113[18] = v38;
  v112[19] = @"nameSource";
  v92 = @"nameSource";
  v37 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v92 count:1];
  v113[19] = v37;
  v112[20] = @"adjustmentVersion";
  v91 = @"adjustmentVersion";
  v36 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v91 count:1];
  v113[20] = v36;
  v112[21] = @"poseYaw";
  v90 = @"poseYaw";
  v35 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v90 count:1];
  v113[21] = v35;
  v112[22] = @"faceAlgorithmVersion";
  v89 = @"faceAlgorithmVersion";
  v34 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v89 count:1];
  v113[22] = v34;
  v112[23] = @"clusterSequenceNumber";
  v88 = @"clusterSequenceNumber";
  v33 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v88 count:1];
  v113[23] = v33;
  v112[24] = @"qualityMeasure";
  v87 = @"qualityMeasure";
  v32 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v87 count:1];
  v113[24] = v32;
  v112[25] = @"quality";
  v86 = @"quality";
  v31 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v86 count:1];
  v113[25] = v31;
  v112[26] = @"vuObservationID";
  v85 = @"vuObservationID";
  v30 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v85 count:1];
  v113[26] = v30;
  v112[27] = @"confirmedFaceCropGenerationState";
  v84 = @"confirmedFaceCropGenerationState";
  v29 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v84 count:1];
  v113[27] = v29;
  v112[28] = @"trainingType";
  v83 = @"trainingType";
  v28 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v83 count:1];
  v113[28] = v28;
  v112[29] = @"ageType";
  v82 = @"ageType";
  v27 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v82 count:1];
  v113[29] = v27;
  v112[30] = @"genderType";
  v81 = @"sexType";
  v26 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v81 count:1];
  v113[30] = v26;
  v112[31] = @"eyesState";
  v80 = @"eyesState";
  v25 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v80 count:1];
  v113[31] = v25;
  v112[32] = @"smileType";
  v79 = @"smileType";
  v24 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v79 count:1];
  v113[32] = v24;
  v112[33] = @"facialHairType";
  v78 = @"facialHairType";
  v23 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v78 count:1];
  v113[33] = v23;
  v112[34] = @"hairColorType";
  v77 = @"hairColorType";
  v22 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v77 count:1];
  v113[34] = v22;
  v112[35] = @"glassesType";
  v76 = @"glassesType";
  v21 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v76 count:1];
  v113[35] = v21;
  v112[36] = @"eyeMakeupType";
  v75 = @"eyeMakeupType";
  v20 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v75 count:1];
  v113[36] = v20;
  v112[37] = @"lipMakeupType";
  v74 = @"lipMakeupType";
  v19 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v74 count:1];
  v113[37] = v19;
  v112[38] = @"faceExpressionType";
  v73 = @"faceExpressionType";
  v18 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v73 count:1];
  v113[38] = v18;
  v112[39] = @"headgearType";
  v72 = @"headgearType";
  v17 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v72 count:1];
  v113[39] = v17;
  v112[40] = @"hairType";
  v71 = @"hairType";
  v16 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v71 count:1];
  v113[40] = v16;
  v112[41] = @"poseType";
  v70 = @"poseType";
  v15 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v70 count:1];
  v113[41] = v15;
  v112[42] = @"skintoneType";
  v69 = @"skintoneType";
  v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v69 count:1];
  v113[42] = v14;
  v112[43] = @"ethnicityType";
  v68 = @"ethnicityType";
  v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v68 count:1];
  v113[43] = v13;
  v112[44] = @"hasFaceMask";
  v67 = @"hasFaceMask";
  v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v67 count:1];
  v113[44] = v12;
  v112[45] = @"gazeType";
  v66 = @"gazeType";
  v0 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v66 count:1];
  v113[45] = v0;
  v112[46] = @"gazeCenterX";
  v65 = @"gazeCenterX";
  v1 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v65 count:1];
  v113[46] = v1;
  v112[47] = @"gazeCenterY";
  v64 = @"gazeCenterY";
  v2 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v64 count:1];
  v113[47] = v2;
  v112[48] = @"gazeRectString";
  v63 = @"gazeRect";
  v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v63 count:1];
  v113[48] = v3;
  v112[49] = @"gazeAngle";
  v62 = @"gazeAngle";
  v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v62 count:1];
  v113[49] = v4;
  v112[50] = @"gazeConfidence";
  v61 = @"gazeConfidence";
  v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v61 count:1];
  v113[50] = v5;
  v112[51] = @"startTime";
  v60 = @"startTime";
  v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v60 count:1];
  v113[51] = v6;
  v112[52] = @"duration";
  v59 = @"duration";
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v59 count:1];
  v113[52] = v7;
  v112[53] = @"personForFace.personUUID";
  v58 = @"personUUID";
  v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v58 count:1];
  v113[53] = v8;
  v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v113 forKeys:v112 count:54];
  v10 = [(PHEntityKeyMap *)v45 initWithPropertyKeysByEntityKey:v9];
  v11 = entityKeyMap_pl_once_object_16_34200;
  entityKeyMap_pl_once_object_16_34200 = v10;
}

+ (id)propertiesToFetchWithHint:(unint64_t)a3
{
  if (propertiesToFetchWithHint__onceToken_34204 != -1)
  {
    dispatch_once(&propertiesToFetchWithHint__onceToken_34204, &__block_literal_global_237);
  }

  v5 = 0;
  v6 = &v5;
  v7 = 0x3032000000;
  v8 = __Block_byref_object_copy__33921;
  v9 = __Block_byref_object_dispose__33922;
  v10 = 0;
  pl_dispatch_sync();
  v3 = v6[5];
  _Block_object_dispose(&v5, 8);

  return v3;
}

void __36__PHFace_propertiesToFetchWithHint___block_invoke_240(uint64_t a1)
{
  v2 = propertiesToFetchWithHint__propertiesToFetchByHint_34206;
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

    v10 = propertiesToFetchWithHint__propertiesToFetchByHint_34206;
    v12 = [MEMORY[0x1E695DEC8] arrayWithArray:*(*(*(a1 + 32) + 8) + 40)];
    v11 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:*(a1 + 40)];
    [v10 setObject:v12 forKey:v11];
  }
}

uint64_t __36__PHFace_propertiesToFetchWithHint___block_invoke()
{
  v0 = [MEMORY[0x1E695DF90] dictionary];
  v1 = propertiesToFetchWithHint__propertiesToFetchByHint_34206;
  propertiesToFetchWithHint__propertiesToFetchByHint_34206 = v0;

  propertiesToFetchWithHint__propertyQueue_34205 = dispatch_queue_create("com.apple.photos.facepropertyhints", 0);

  return MEMORY[0x1EEE66BB8]();
}

+ (id)_composePropertiesToFetchWithHint:(unint64_t)a3
{
  v3 = a3;
  v5 = [MEMORY[0x1E695DF70] array];
  if (v3)
  {
    v8 = [a1 identifierPropertiesToFetch];
    [a1 extendPropertiesToFetch:v5 withProperties:v8];

    if ((v3 & 2) == 0)
    {
LABEL_3:
      if ((v3 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_14;
    }
  }

  else if ((v3 & 2) == 0)
  {
    goto LABEL_3;
  }

  v9 = [a1 corePropertiesToFetch];
  [a1 extendPropertiesToFetch:v5 withProperties:v9];

  if ((v3 & 4) == 0)
  {
LABEL_4:
    if ((v3 & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_15;
  }

LABEL_14:
  [a1 extendPropertiesToFetch:v5 withPropertySetClass:objc_opt_class()];
  if ((v3 & 8) == 0)
  {
LABEL_5:
    if ((v3 & 0x10) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_16;
  }

LABEL_15:
  v10 = [a1 croppingPropertiesToFetch];
  [a1 extendPropertiesToFetch:v5 withProperties:v10];

  if ((v3 & 0x10) == 0)
  {
LABEL_6:
    if ((v3 & 0x20) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_17;
  }

LABEL_16:
  v11 = [a1 personBuilderPropertiesToFetch];
  [a1 extendPropertiesToFetch:v5 withProperties:v11];

  if ((v3 & 0x20) == 0)
  {
LABEL_7:
    if ((v3 & 0x40) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

LABEL_17:
  v12 = [a1 genderAgePropertiesToFetch];
  [a1 extendPropertiesToFetch:v5 withProperties:v12];

  if ((v3 & 0x40) != 0)
  {
LABEL_8:
    v6 = [a1 analyticsPropertiesToFetch];
    [a1 extendPropertiesToFetch:v5 withProperties:v6];
  }

LABEL_9:

  return v5;
}

+ (id)analyticsPropertiesToFetch
{
  pl_dispatch_once();
  v2 = analyticsPropertiesToFetch_pl_once_object_15;

  return v2;
}

void __36__PHFace_analyticsPropertiesToFetch__block_invoke()
{
  v3[2] = *MEMORY[0x1E69E9840];
  v3[0] = @"ageType";
  v3[1] = @"size";
  v0 = [MEMORY[0x1E695DEC8] arrayWithObjects:v3 count:2];
  v1 = [v0 copy];
  v2 = analyticsPropertiesToFetch_pl_once_object_15;
  analyticsPropertiesToFetch_pl_once_object_15 = v1;
}

+ (id)genderAgePropertiesToFetch
{
  if (genderAgePropertiesToFetch_onceToken != -1)
  {
    dispatch_once(&genderAgePropertiesToFetch_onceToken, &__block_literal_global_232);
  }

  v3 = genderAgePropertiesToFetch_array;

  return v3;
}

void __36__PHFace_genderAgePropertiesToFetch__block_invoke()
{
  v2[4] = *MEMORY[0x1E69E9840];
  v2[0] = @"genderType";
  v2[1] = @"ageType";
  v2[2] = @"personForFace.personUUID";
  v2[3] = @"personForTemporalDetectedFaces.personUUID";
  v0 = [MEMORY[0x1E695DEC8] arrayWithObjects:v2 count:4];
  v1 = genderAgePropertiesToFetch_array;
  genderAgePropertiesToFetch_array = v0;
}

+ (id)personBuilderPropertiesToFetch
{
  if (personBuilderPropertiesToFetch_onceToken != -1)
  {
    dispatch_once(&personBuilderPropertiesToFetch_onceToken, &__block_literal_global_230);
  }

  v3 = personBuilderPropertiesToFetch_array;

  return v3;
}

void __40__PHFace_personBuilderPropertiesToFetch__block_invoke()
{
  v2[7] = *MEMORY[0x1E69E9840];
  v2[0] = @"clusterSequenceNumber";
  v2[1] = @"vuObservationID";
  v2[2] = @"confirmedFaceCropGenerationState";
  v2[3] = @"trainingType";
  v2[4] = @"nameSource";
  v2[5] = @"personForFace.personUUID";
  v2[6] = @"personForTemporalDetectedFaces.personUUID";
  v0 = [MEMORY[0x1E695DEC8] arrayWithObjects:v2 count:7];
  v1 = personBuilderPropertiesToFetch_array;
  personBuilderPropertiesToFetch_array = v0;
}

+ (id)croppingPropertiesToFetch
{
  if (croppingPropertiesToFetch_onceToken != -1)
  {
    dispatch_once(&croppingPropertiesToFetch_onceToken, &__block_literal_global_228);
  }

  v3 = croppingPropertiesToFetch_array;

  return v3;
}

void __35__PHFace_croppingPropertiesToFetch__block_invoke()
{
  v2[5] = *MEMORY[0x1E69E9840];
  v2[0] = @"size";
  v2[1] = @"centerX";
  v2[2] = @"centerY";
  v2[3] = @"sourceWidth";
  v2[4] = @"sourceHeight";
  v0 = [MEMORY[0x1E695DEC8] arrayWithObjects:v2 count:5];
  v1 = croppingPropertiesToFetch_array;
  croppingPropertiesToFetch_array = v0;
}

+ (id)corePropertiesToFetch
{
  if (corePropertiesToFetch_onceToken_34210 != -1)
  {
    dispatch_once(&corePropertiesToFetch_onceToken_34210, &__block_literal_global_34211);
  }

  v3 = corePropertiesToFetch_array_34212;

  return v3;
}

void __31__PHFace_corePropertiesToFetch__block_invoke()
{
  v2[54] = *MEMORY[0x1E69E9840];
  v2[0] = @"size";
  v2[1] = @"centerX";
  v2[2] = @"centerY";
  v2[3] = @"detectionType";
  v2[4] = @"bodyCenterX";
  v2[5] = @"bodyCenterY";
  v2[6] = @"bodyWidth";
  v2[7] = @"bodyHeight";
  v2[8] = @"sourceWidth";
  v2[9] = @"sourceHeight";
  v2[10] = @"roll";
  v2[11] = @"hidden";
  v2[12] = @"isInTrash";
  v2[13] = @"vipModelType";
  v2[14] = @"manual";
  v2[15] = @"hasSmile";
  v2[16] = @"blurScore";
  v2[17] = @"isLeftEyeClosed";
  v2[18] = @"isRightEyeClosed";
  v2[19] = @"nameSource";
  v2[20] = @"adjustmentVersion";
  v2[21] = @"poseYaw";
  v2[22] = @"faceAlgorithmVersion";
  v2[23] = @"clusterSequenceNumber";
  v2[24] = @"qualityMeasure";
  v2[25] = @"quality";
  v2[26] = @"vuObservationID";
  v2[27] = @"ageType";
  v2[28] = @"genderType";
  v2[29] = @"eyesState";
  v2[30] = @"smileType";
  v2[31] = @"facialHairType";
  v2[32] = @"hairColorType";
  v2[33] = @"glassesType";
  v2[34] = @"eyeMakeupType";
  v2[35] = @"lipMakeupType";
  v2[36] = @"faceExpressionType";
  v2[37] = @"headgearType";
  v2[38] = @"hairType";
  v2[39] = @"poseType";
  v2[40] = @"skintoneType";
  v2[41] = @"ethnicityType";
  v2[42] = @"hasFaceMask";
  v2[43] = @"gazeType";
  v2[44] = @"gazeCenterX";
  v2[45] = @"gazeCenterY";
  v2[46] = @"gazeRectString";
  v2[47] = @"gazeAngle";
  v2[48] = @"gazeConfidence";
  v2[49] = @"startTime";
  v2[50] = @"duration";
  v2[51] = @"thumbnailIdentifier";
  v2[52] = @"personForFace.personUUID";
  v2[53] = @"personForTemporalDetectedFaces.personUUID";
  v0 = [MEMORY[0x1E695DEC8] arrayWithObjects:v2 count:54];
  v1 = corePropertiesToFetch_array_34212;
  corePropertiesToFetch_array_34212 = v0;
}

+ (id)propertySetsForPropertyFetchHints:(unint64_t)a3
{
  v3 = a3;
  v4 = [MEMORY[0x1E695DFA8] set];
  v5 = [@"PHFacePropertySetIdentifier" length];
  if ((v3 & 1) != 0 && v5)
  {
    [v4 addObject:@"PHFacePropertySetIdentifier"];
  }

  v6 = [@"PHFacePropertySetCore" length];
  if ((v3 & 2) != 0 && v6)
  {
    [v4 addObject:@"PHFacePropertySetCore"];
  }

  v7 = [@"PHFacePropertySetClustering" length];
  if ((v3 & 4) != 0 && v7)
  {
    [v4 addObject:@"PHFacePropertySetClustering"];
  }

  v8 = [@"PHFacePropertySetCropping" length];
  if ((v3 & 8) != 0 && v8)
  {
    [v4 addObject:@"PHFacePropertySetCropping"];
  }

  v9 = [@"PHFacePropertySetPersonBuilder" length];
  if ((v3 & 0x10) != 0 && v9)
  {
    [v4 addObject:@"PHFacePropertySetPersonBuilder"];
  }

  v10 = [@"PHFacePropertySetSexAge" length];
  if ((v3 & 0x20) != 0 && v10)
  {
    [v4 addObject:@"PHFacePropertySetSexAge"];
  }

  v11 = [@"PHFacePropertySetAnalytics" length];
  if ((v3 & 0x40) != 0 && v11)
  {
    [v4 addObject:@"PHFacePropertySetAnalytics"];
  }

  v12 = [MEMORY[0x1E695DFD8] setWithSet:v4];

  return v12;
}

+ (unint64_t)propertyFetchHintsForPropertySets:(id)a3
{
  v3 = a3;
  if ([@"PHFacePropertySetIdentifier" length])
  {
    v4 = [v3 containsObject:@"PHFacePropertySetIdentifier"];
  }

  else
  {
    v4 = 0;
  }

  if ([@"PHFacePropertySetCore" length] && objc_msgSend(v3, "containsObject:", @"PHFacePropertySetCore"))
  {
    v4 |= 2uLL;
  }

  if ([@"PHFacePropertySetClustering" length] && objc_msgSend(v3, "containsObject:", @"PHFacePropertySetClustering"))
  {
    v4 |= 4uLL;
  }

  if ([@"PHFacePropertySetCropping" length] && objc_msgSend(v3, "containsObject:", @"PHFacePropertySetCropping"))
  {
    v4 |= 8uLL;
  }

  if ([@"PHFacePropertySetPersonBuilder" length] && objc_msgSend(v3, "containsObject:", @"PHFacePropertySetPersonBuilder"))
  {
    v4 |= 0x10uLL;
  }

  if ([@"PHFacePropertySetSexAge" length] && objc_msgSend(v3, "containsObject:", @"PHFacePropertySetSexAge"))
  {
    v4 |= 0x20uLL;
  }

  if ([@"PHFacePropertySetAnalytics" length] && objc_msgSend(v3, "containsObject:", @"PHFacePropertySetAnalytics"))
  {
    v4 |= 0x40uLL;
  }

  if (![v3 containsObject:@"PHFacePropertySetIdentifier"])
  {
    v4 |= 2uLL;
  }

  return v4;
}

@end