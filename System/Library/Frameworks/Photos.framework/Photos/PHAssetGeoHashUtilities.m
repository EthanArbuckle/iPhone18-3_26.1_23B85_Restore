@interface PHAssetGeoHashUtilities
+ (id)_featureVectorDataWithOneHotAtIndex:(unint64_t)a3 featureVectorSize:(unint64_t)a4;
+ (id)_newSystemPhotoLibrary;
+ (id)_poiGeoHashForAsset:(id)a3 geoHashSize:(unint64_t)a4;
+ (id)_randomPublishedUUIDsFromPublishedUUIDs:(id)a3 sentUUIDs:(id)a4;
+ (id)_sceneLabelsForSceneClassifications:(id)a3;
+ (id)assetUUIDsFromBiomeStream;
+ (id)assetUUIDsFromBiomeStreamWithPhotoLibrary:(id)a3;
+ (id)featureVectorByGeoHashForAssetUUID:(id)a3 geoHashSize:(id)a4 geoHashKeySize:(id)a5 sceneLabelMapping:(id)a6 dryRun:(id)a7;
+ (id)featureVectorByGeoHashForAssetUUID:(id)a3 geoHashSize:(id)a4 geoHashKeySize:(id)a5 sceneLabelMapping:(id)a6 dryRun:(id)a7 photoLibrary:(id)a8;
+ (id)featureVectorByGeoHashForAssetUUIDs:(id)a3 geoHashSize:(id)a4 geoHashKeySize:(id)a5 sceneLabelMapping:(id)a6 dryRun:(id)a7;
+ (id)featureVectorByGeoHashForAssetUUIDs:(id)a3 geoHashSize:(id)a4 geoHashKeySize:(id)a5 sceneLabelMapping:(id)a6 dryRun:(id)a7 photoLibrary:(id)a8;
+ (id)mockReturnDataWithAssetUUIDs:(id)a3 geoHashKeySize:(id)a4;
+ (id)poiGeoHashWithGeoHashSize:(unint64_t)a3 latitude:(double)a4 longitude:(double)a5;
+ (id)sceneLabelExclusionList;
+ (unint64_t)_indexForPOIGeoHash:(id)a3 geoHashKeySize:(unint64_t)a4;
+ (unint64_t)_randomSceneIndexForAsset:(id)a3 sceneLabelMapping:(id)a4 orderedRemappedSceneLabels:(id)a5;
@end

@implementation PHAssetGeoHashUtilities

+ (id)_poiGeoHashForAsset:(id)a3 geoHashSize:(unint64_t)a4
{
  v18 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = [v5 location];
  [v6 coordinate];
  v8 = v7;

  v9 = [v5 location];
  [v9 coordinate];
  v11 = v10;

  if (v8 == 0.0 && v11 == 0.0)
  {
    v12 = PLBackendGetLog();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v13 = [v5 uuid];
      v16 = 138412290;
      v17 = v13;
      _os_log_impl(&dword_19C86F000, v12, OS_LOG_TYPE_DEFAULT, "[PHAssetGeoHashUtilities] Invalid coordinates for asset uuid %@", &v16, 0xCu);
    }

    v14 = 0;
  }

  else
  {
    v14 = [PHAssetGeoHashUtilities poiGeoHashWithGeoHashSize:a4 latitude:v8 longitude:v11];
  }

  return v14;
}

+ (id)poiGeoHashWithGeoHashSize:(unint64_t)a3 latitude:(double)a4 longitude:(double)a5
{
  v27 = *MEMORY[0x1E69E9840];
  if (a4 == 0.0 && a5 == 0.0)
  {
    v8 = PLBackendGetLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v23) = 0;
      _os_log_impl(&dword_19C86F000, v8, OS_LOG_TYPE_DEFAULT, "[PHAssetGeoHashUtilities] Invalid coordinates", &v23, 2u);
    }

    goto LABEL_22;
  }

  v8 = objc_alloc_init(MEMORY[0x1E696AD60]);
  if ([v8 length]>= a3)
  {
LABEL_18:
    v8 = v8;
    v20 = v8;
    goto LABEL_23;
  }

  v9 = 0;
  v10 = 0;
  v11 = 1;
  v12 = -180.0;
  v13 = 180.0;
  v14 = -90.0;
  v15 = 90.0;
  while (1)
  {
    if (v11)
    {
      v16 = (v12 + v13) * 0.5;
      v17 = v14;
      if (v16 >= a5)
      {
        v13 = (v12 + v13) * 0.5;
        goto LABEL_13;
      }

LABEL_11:
      v18 = [&unk_1F102E360 objectAtIndexedSubscript:v9];
      v10 |= [v18 integerValue];

      v12 = v16;
      v14 = v17;
      goto LABEL_13;
    }

    v17 = (v14 + v15) * 0.5;
    v16 = v12;
    if (v17 < a4)
    {
      goto LABEL_11;
    }

    v15 = (v14 + v15) * 0.5;
LABEL_13:
    if (v9 > 3)
    {
      break;
    }

    ++v9;
LABEL_17:
    v11 ^= 1u;
    if ([v8 length]>= a3)
    {
      goto LABEL_18;
    }
  }

  if (v10 < [@"0123456789bcdefghjkmnpqrstuvwxyz" length])
  {
    v19 = [@"0123456789bcdefghjkmnpqrstuvwxyz" substringWithRange:{v10, 1}];
    [v8 appendString:v19];

    v10 = 0;
    v9 = 0;
    goto LABEL_17;
  }

  v21 = PLBackendGetLog();
  if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
  {
    v23 = 134218240;
    v24 = v10;
    v25 = 2048;
    v26 = [@"0123456789bcdefghjkmnpqrstuvwxyz" length];
    _os_log_impl(&dword_19C86F000, v21, OS_LOG_TYPE_DEFAULT, "[PHAssetGeoHashUtilities] Character index (%lu) is larger than base32 length (%lu).", &v23, 0x16u);
  }

LABEL_22:
  v20 = 0;
LABEL_23:

  return v20;
}

+ (id)sceneLabelExclusionList
{
  v2 = [objc_alloc(MEMORY[0x1E695DFD8]) initWithArray:&unk_1F102E348];

  return v2;
}

+ (id)_randomPublishedUUIDsFromPublishedUUIDs:(id)a3 sentUUIDs:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = [v5 count];
  if (v7 > 0x64)
  {
    v10 = v7;
    v8 = [v5 allObjects];
    v11 = objc_alloc_init(MEMORY[0x1E696AD50]);
    for (i = 0; i != 100; ++i)
    {
      v13 = arc4random_uniform(v10);
      v14 = [v8 objectAtIndexedSubscript:v13];
      v15 = [v6 containsObject:v14];

      for (j = 0; j != 100; ++j)
      {
        if ((([v11 containsIndex:v13] | v15) & 1) == 0)
        {
          break;
        }

        v13 = arc4random_uniform(j);
      }

      [v11 addIndex:v13];
    }

    v9 = [v8 objectsAtIndexes:v11];
  }

  else
  {
    v8 = [v5 mutableCopy];
    [v8 minusSet:v6];
    v9 = [v8 allObjects];
  }

  return v9;
}

+ (id)_newSystemPhotoLibrary
{
  v2 = [PHPhotoLibrary alloc];
  v3 = +[PHPhotoLibrary systemPhotoLibraryURL];
  v4 = [(PHPhotoLibrary *)v2 initWithPhotoLibraryURL:v3];

  return v4;
}

+ (id)_featureVectorDataWithOneHotAtIndex:(unint64_t)a3 featureVectorSize:(unint64_t)a4
{
  if (a3 >= a4)
  {
    v11 = [MEMORY[0x1E696AAA8] currentHandler];
    [v11 handleFailureInMethod:a2 object:a1 file:@"PHAssetGeoHashUtilities.m" lineNumber:242 description:{@"Invalid parameter not satisfying: %@", @"oneHotIndex < featureVectorSize"}];
  }

  v6 = malloc_type_calloc(a4, 1uLL, 0x100004077774924uLL);
  v6[a3] = 1;
  v7 = MEMORY[0x1E695DEF0];

  return [v7 dataWithBytesNoCopy:v6 length:a4];
}

+ (unint64_t)_indexForPOIGeoHash:(id)a3 geoHashKeySize:(unint64_t)a4
{
  v5 = a3;
  v6 = [v5 substringWithRange:{a4, objc_msgSend(v5, "length") - a4}];
  v7 = 0;
  if ([v6 length])
  {
    v8 = 0;
    do
    {
      v9 = [v6 substringWithRange:{v8, 1}];
      v10 = [@"0123456789bcdefghjkmnpqrstuvwxyz" rangeOfString:v9];
      v7 = (v7 + exp2(v8 * 5.0) * v10);

      ++v8;
    }

    while (v8 < [v6 length]);
  }

  return v7;
}

+ (id)_sceneLabelsForSceneClassifications:(id)a3
{
  v30 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  v6 = [a1 sceneLabelExclusionList];
  v7 = objc_alloc_init(MEMORY[0x1E69C0850]);
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v8 = v4;
  v9 = [v8 countByEnumeratingWithState:&v25 objects:v29 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v26;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v26 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v25 + 1) + 8 * i);
        v14 = [v7 nodeRefForExtendedSceneClassId:{objc_msgSend(v13, "extendedSceneIdentifier", v25)}];
        v15 = PFSceneTaxonomyNodeNetworkId();
        if (v14)
        {
          v16 = v15 == 1;
        }

        else
        {
          v16 = 0;
        }

        if (v16)
        {
          [v13 confidence];
          v18 = v17;
          PFSceneTaxonomyNodeSearchThreshold();
          if (v18 >= v19)
          {
            v20 = PFSceneTaxonomyNodeName();
            v21 = v20;
            if (v20)
            {
              v22 = [v20 lowercaseString];
              v23 = [v6 containsObject:v22];

              if ((v23 & 1) == 0)
              {
                [v5 addObject:v21];
              }
            }
          }
        }
      }

      v10 = [v8 countByEnumeratingWithState:&v25 objects:v29 count:16];
    }

    while (v10);
  }

  return v5;
}

+ (unint64_t)_randomSceneIndexForAsset:(id)a3 sceneLabelMapping:(id)a4 orderedRemappedSceneLabels:(id)a5
{
  v37 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v27 = a5;
  v10 = [v8 sceneClassifications];
  v11 = [a1 _sceneLabelsForSceneClassifications:v10];

  v12 = PLBackendGetLog();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
  {
    v13 = [v8 uuid];
    *buf = 138412546;
    v34 = v13;
    v35 = 2112;
    v36 = v11;
    _os_log_impl(&dword_19C86F000, v12, OS_LOG_TYPE_INFO, "[PHAssetGeoHashUtilities] Scene labels for asset %@: %@", buf, 0x16u);
  }

  v14 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v15 = v11;
  v16 = [v15 countByEnumeratingWithState:&v28 objects:v32 count:16];
  if (v16)
  {
    v17 = v16;
    v18 = *v29;
    do
    {
      v19 = 0;
      do
      {
        if (*v29 != v18)
        {
          objc_enumerationMutation(v15);
        }

        v20 = [*(*(&v28 + 1) + 8 * v19) lowercaseString];
        v21 = [v9 objectForKeyedSubscript:v20];

        if (v21)
        {
          [v14 addObject:v21];
        }

        ++v19;
      }

      while (v17 != v19);
      v17 = [v15 countByEnumeratingWithState:&v28 objects:v32 count:16];
    }

    while (v17);
  }

  if ([v14 count])
  {
    v22 = [v14 objectAtIndexedSubscript:{objc_msgSend(a1, "_randomIndexFromCount:", objc_msgSend(v14, "count"))}];
    v23 = v27;
    v24 = [v27 indexOfObject:v22];
  }

  else
  {
    v22 = PLBackendGetLog();
    v23 = v27;
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      v25 = [v8 uuid];
      *buf = 138412546;
      v34 = v25;
      v35 = 2112;
      v36 = v15;
      _os_log_impl(&dword_19C86F000, v22, OS_LOG_TYPE_DEFAULT, "[PHAssetGeoHashUtilities] Scene labels for asset %@ are empty after remapping. Scene Labels: %@", buf, 0x16u);
    }

    v24 = 0x7FFFFFFFFFFFFFFFLL;
  }

  return v24;
}

+ (id)mockReturnDataWithAssetUUIDs:(id)a3 geoHashKeySize:(id)a4
{
  v26 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v6, "count")}];
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  obj = v6;
  v9 = [obj countByEnumeratingWithState:&v19 objects:v25 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v20;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v20 != v11)
        {
          objc_enumerationMutation(obj);
        }

        v13 = *(*(&v19 + 1) + 8 * i);
        v14 = [a1 _featureVectorDataWithOneHotAtIndex:1 featureVectorSize:3];
        v15 = [v13 substringWithRange:{0, objc_msgSend(v7, "integerValue")}];
        v23 = v15;
        v24 = v14;
        v16 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v24 forKeys:&v23 count:1];
        [v8 addObject:v16];
      }

      v10 = [obj countByEnumeratingWithState:&v19 objects:v25 count:16];
    }

    while (v10);
  }

  return v8;
}

+ (id)featureVectorByGeoHashForAssetUUIDs:(id)a3 geoHashSize:(id)a4 geoHashKeySize:(id)a5 sceneLabelMapping:(id)a6 dryRun:(id)a7 photoLibrary:(id)a8
{
  v88 = *MEMORY[0x1E69E9840];
  v14 = a3;
  v66 = a4;
  v15 = a5;
  v70 = a6;
  v16 = a7;
  v17 = a8;
  if ([v15 integerValue] >= 1 && objc_msgSend(v15, "integerValue") < 5)
  {
    if ([v16 BOOLValue])
    {
      v19 = [a1 mockReturnDataWithAssetUUIDs:v14 geoHashKeySize:v15];
    }

    else
    {
      v61 = v16;
      v65 = v15;
      v21 = MEMORY[0x1E695DFD8];
      v22 = [v70 allValues];
      v23 = [v21 setWithArray:v22];

      v64 = v23;
      v24 = [v23 allObjects];
      v25 = [v24 sortedArrayUsingSelector:sel_compare_];

      v60 = v17;
      v26 = [v17 librarySpecificFetchOptions];
      v83 = @"PHAssetPropertySetSceneAnalysis";
      v27 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v83 count:1];
      [v26 setFetchPropertySets:v27];

      v62 = v14;
      v59 = v26;
      v28 = [PHAsset fetchAssetsWithLocalIdentifiers:v14 options:v26];
      v29 = objc_alloc_init(MEMORY[0x1E695DF90]);
      v75 = 0u;
      v76 = 0u;
      v77 = 0u;
      v78 = 0u;
      obj = v28;
      v30 = v66;
      v63 = v25;
      v69 = [obj countByEnumeratingWithState:&v75 objects:v82 count:16];
      if (v69)
      {
        v31 = *v76;
        while (2)
        {
          for (i = 0; i != v69; ++i)
          {
            if (*v76 != v31)
            {
              objc_enumerationMutation(obj);
            }

            v33 = *(*(&v75 + 1) + 8 * i);
            v34 = objc_autoreleasePoolPush();
            v35 = [a1 _randomSceneIndexForAsset:v33 sceneLabelMapping:v70 orderedRemappedSceneLabels:v25];
            if (v35 != 0x7FFFFFFFFFFFFFFFLL)
            {
              v36 = v35;
              context = v34;
              [a1 _poiGeoHashForAsset:v33 geoHashSize:{objc_msgSend(v30, "integerValue")}];
              v38 = v37 = a1;
              if (v38)
              {
                v39 = [v37 _indexForPOIGeoHash:v38 geoHashKeySize:{objc_msgSend(v65, "integerValue")}];
                v40 = exp2(([v30 integerValue] - objc_msgSend(v65, "integerValue")) * 5.0);
                v41 = [v37 _featureVectorDataWithOneHotAtIndex:v39 + v36 * v40 featureVectorSize:{objc_msgSend(v64, "count") * v40}];
                v25 = v63;
                v42 = [v38 substringWithRange:{0, objc_msgSend(v65, "integerValue")}];
                v80 = v42;
                v81 = v41;
                v43 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v81 forKeys:&v80 count:1];
                v44 = [v33 uuid];
                [v29 setObject:v43 forKeyedSubscript:v44];

                v45 = [v29 count];
                v46 = v45 > 9;
                v30 = v66;
                if (v46)
                {

                  objc_autoreleasePoolPop(context);
                  goto LABEL_24;
                }
              }

              a1 = v37;
              v34 = context;
            }

            objc_autoreleasePoolPop(v34);
          }

          v69 = [obj countByEnumeratingWithState:&v75 objects:v82 count:16];
          if (v69)
          {
            continue;
          }

          break;
        }
      }

LABEL_24:

      v17 = v60;
      if ([v29 count])
      {
        v47 = MEMORY[0x1E69BE398];
        v48 = [v29 allKeys];
        v49 = [v60 photoLibraryBundle];
        v50 = [v49 pathManager];
        [v47 publishUUIDs:v48 stream:1 pathManager:v50];
      }

      v14 = v62;
      v19 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v62, "count")}];
      v71 = 0u;
      v72 = 0u;
      v73 = 0u;
      v74 = 0u;
      v51 = v62;
      v52 = [v51 countByEnumeratingWithState:&v71 objects:v79 count:16];
      if (v52)
      {
        v53 = v52;
        v54 = *v72;
        v55 = MEMORY[0x1E695E0F8];
        do
        {
          for (j = 0; j != v53; ++j)
          {
            if (*v72 != v54)
            {
              objc_enumerationMutation(v51);
            }

            v57 = [v29 objectForKeyedSubscript:*(*(&v71 + 1) + 8 * j)];
            if (v57)
            {
              v58 = v57;
            }

            else
            {
              v58 = v55;
            }

            [v19 addObject:v58];
          }

          v53 = [v51 countByEnumeratingWithState:&v71 objects:v79 count:16];
        }

        while (v53);
      }

      v15 = v65;
      v16 = v61;
    }
  }

  else
  {
    v18 = PLBackendGetLog();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412546;
      v85 = v15;
      v86 = 2048;
      v87 = 4;
      _os_log_impl(&dword_19C86F000, v18, OS_LOG_TYPE_ERROR, "[PHAssetGeoHashUtilities] geoHashKeySize %@ not supported. It should be a number between 1 and %tu (inclusive).", buf, 0x16u);
    }

    v19 = 0;
  }

  return v19;
}

+ (id)featureVectorByGeoHashForAssetUUIDs:(id)a3 geoHashSize:(id)a4 geoHashKeySize:(id)a5 sceneLabelMapping:(id)a6 dryRun:(id)a7
{
  v29 = *MEMORY[0x1E69E9840];
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  if ([v14 integerValue] >= 1 && objc_msgSend(v14, "integerValue") < 5)
  {
    if ([v16 BOOLValue])
    {
      v18 = [a1 mockReturnDataWithAssetUUIDs:v12 geoHashKeySize:v14];
    }

    else
    {
      v20 = [a1 _newSystemPhotoLibrary];
      v24 = 0;
      v21 = [v20 openAndWaitWithUpgrade:0 error:&v24];
      v22 = v24;
      if (v21)
      {
        v18 = [a1 featureVectorByGeoHashForAssetUUIDs:v12 geoHashSize:v13 geoHashKeySize:v14 sceneLabelMapping:v15 dryRun:v16 photoLibrary:v20];
        [v20 close];
      }

      else
      {
        v23 = PLBackendGetLog();
        if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412290;
          v26 = v22;
          _os_log_impl(&dword_19C86F000, v23, OS_LOG_TYPE_ERROR, "[PHAssetGeoHashUtilities] Error opening system photo library: %@", buf, 0xCu);
        }

        v18 = 0;
      }
    }
  }

  else
  {
    v17 = PLBackendGetLog();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412546;
      v26 = v14;
      v27 = 2048;
      v28 = 4;
      _os_log_impl(&dword_19C86F000, v17, OS_LOG_TYPE_ERROR, "[PHAssetGeoHashUtilities] geoHashKeySize %@ not supported. It should be a number between 1 and %tu (inclusive).", buf, 0x16u);
    }

    v18 = 0;
  }

  return v18;
}

+ (id)featureVectorByGeoHashForAssetUUID:(id)a3 geoHashSize:(id)a4 geoHashKeySize:(id)a5 sceneLabelMapping:(id)a6 dryRun:(id)a7 photoLibrary:(id)a8
{
  v26 = *MEMORY[0x1E69E9840];
  v25 = a3;
  v14 = MEMORY[0x1E695DEC8];
  v15 = a8;
  v16 = a7;
  v17 = a6;
  v18 = a5;
  v19 = a4;
  v20 = a3;
  v21 = [v14 arrayWithObjects:&v25 count:1];

  v22 = [a1 featureVectorByGeoHashForAssetUUIDs:v21 geoHashSize:v19 geoHashKeySize:v18 sceneLabelMapping:v17 dryRun:v16 photoLibrary:{v15, v25, v26}];

  v23 = [v22 firstObject];

  return v23;
}

+ (id)featureVectorByGeoHashForAssetUUID:(id)a3 geoHashSize:(id)a4 geoHashKeySize:(id)a5 sceneLabelMapping:(id)a6 dryRun:(id)a7
{
  v23 = *MEMORY[0x1E69E9840];
  v22 = a3;
  v12 = MEMORY[0x1E695DEC8];
  v13 = a7;
  v14 = a6;
  v15 = a5;
  v16 = a4;
  v17 = a3;
  v18 = [v12 arrayWithObjects:&v22 count:1];

  v19 = [a1 featureVectorByGeoHashForAssetUUIDs:v18 geoHashSize:v16 geoHashKeySize:v15 sceneLabelMapping:v14 dryRun:{v13, v22, v23}];

  v20 = [v19 firstObject];

  return v20;
}

+ (id)assetUUIDsFromBiomeStreamWithPhotoLibrary:(id)a3
{
  v4 = a3;
  v5 = MEMORY[0x1E69BE398];
  v6 = [v4 photoLibraryBundle];
  v7 = [v6 pathManager];
  v8 = [v5 publishedUUIDsInStream:0 pathManager:v7];

  if (v8)
  {
    v9 = [MEMORY[0x1E695DFD8] setWithArray:v8];
    v10 = MEMORY[0x1E69BE398];
    v11 = [v4 photoLibraryBundle];
    v12 = [v11 pathManager];
    v13 = [v10 publishedUUIDsInStream:1 pathManager:v12];

    if (v13)
    {
      v14 = [MEMORY[0x1E695DFD8] setWithArray:v13];
    }

    else
    {
      v16 = PLBackendGetLog();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        *v19 = 0;
        _os_log_impl(&dword_19C86F000, v16, OS_LOG_TYPE_ERROR, "[PHAssetGeoHashUtilities] Failed to retrieve sent UUIDs from Biome", v19, 2u);
      }

      v14 = objc_alloc_init(MEMORY[0x1E695DFD8]);
    }

    v17 = v14;
    v15 = [a1 _randomPublishedUUIDsFromPublishedUUIDs:v9 sentUUIDs:v14];
  }

  else
  {
    v9 = PLBackendGetLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_19C86F000, v9, OS_LOG_TYPE_ERROR, "[PHAssetGeoHashUtilities] Failed to retrieve published UUIDs from Biome", buf, 2u);
    }

    v15 = 0;
  }

  return v15;
}

+ (id)assetUUIDsFromBiomeStream
{
  v12 = *MEMORY[0x1E69E9840];
  v3 = [a1 _newSystemPhotoLibrary];
  v9 = 0;
  v4 = [v3 openAndWaitWithUpgrade:0 error:&v9];
  v5 = v9;
  if (v4)
  {
    v6 = [a1 assetUUIDsFromBiomeStreamWithPhotoLibrary:v3];
    [v3 close];
  }

  else
  {
    v7 = PLBackendGetLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v11 = v5;
      _os_log_impl(&dword_19C86F000, v7, OS_LOG_TYPE_ERROR, "[PHAssetGeoHashUtilities] Error opening system photo library: %@", buf, 0xCu);
    }

    v6 = 0;
  }

  return v6;
}

@end