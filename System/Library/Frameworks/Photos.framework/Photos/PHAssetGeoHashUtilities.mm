@interface PHAssetGeoHashUtilities
+ (id)_featureVectorDataWithOneHotAtIndex:(unint64_t)index featureVectorSize:(unint64_t)size;
+ (id)_newSystemPhotoLibrary;
+ (id)_poiGeoHashForAsset:(id)asset geoHashSize:(unint64_t)size;
+ (id)_randomPublishedUUIDsFromPublishedUUIDs:(id)ds sentUUIDs:(id)iDs;
+ (id)_sceneLabelsForSceneClassifications:(id)classifications;
+ (id)assetUUIDsFromBiomeStream;
+ (id)assetUUIDsFromBiomeStreamWithPhotoLibrary:(id)library;
+ (id)featureVectorByGeoHashForAssetUUID:(id)d geoHashSize:(id)size geoHashKeySize:(id)keySize sceneLabelMapping:(id)mapping dryRun:(id)run;
+ (id)featureVectorByGeoHashForAssetUUID:(id)d geoHashSize:(id)size geoHashKeySize:(id)keySize sceneLabelMapping:(id)mapping dryRun:(id)run photoLibrary:(id)library;
+ (id)featureVectorByGeoHashForAssetUUIDs:(id)ds geoHashSize:(id)size geoHashKeySize:(id)keySize sceneLabelMapping:(id)mapping dryRun:(id)run;
+ (id)featureVectorByGeoHashForAssetUUIDs:(id)ds geoHashSize:(id)size geoHashKeySize:(id)keySize sceneLabelMapping:(id)mapping dryRun:(id)run photoLibrary:(id)library;
+ (id)mockReturnDataWithAssetUUIDs:(id)ds geoHashKeySize:(id)size;
+ (id)poiGeoHashWithGeoHashSize:(unint64_t)size latitude:(double)latitude longitude:(double)longitude;
+ (id)sceneLabelExclusionList;
+ (unint64_t)_indexForPOIGeoHash:(id)hash geoHashKeySize:(unint64_t)size;
+ (unint64_t)_randomSceneIndexForAsset:(id)asset sceneLabelMapping:(id)mapping orderedRemappedSceneLabels:(id)labels;
@end

@implementation PHAssetGeoHashUtilities

+ (id)_poiGeoHashForAsset:(id)asset geoHashSize:(unint64_t)size
{
  v18 = *MEMORY[0x1E69E9840];
  assetCopy = asset;
  location = [assetCopy location];
  [location coordinate];
  v8 = v7;

  location2 = [assetCopy location];
  [location2 coordinate];
  v11 = v10;

  if (v8 == 0.0 && v11 == 0.0)
  {
    v12 = PLBackendGetLog();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      uuid = [assetCopy uuid];
      v16 = 138412290;
      v17 = uuid;
      _os_log_impl(&dword_19C86F000, v12, OS_LOG_TYPE_DEFAULT, "[PHAssetGeoHashUtilities] Invalid coordinates for asset uuid %@", &v16, 0xCu);
    }

    v14 = 0;
  }

  else
  {
    v14 = [PHAssetGeoHashUtilities poiGeoHashWithGeoHashSize:size latitude:v8 longitude:v11];
  }

  return v14;
}

+ (id)poiGeoHashWithGeoHashSize:(unint64_t)size latitude:(double)latitude longitude:(double)longitude
{
  v27 = *MEMORY[0x1E69E9840];
  if (latitude == 0.0 && longitude == 0.0)
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
  if ([v8 length]>= size)
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
      if (v16 >= longitude)
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
    if (v17 < latitude)
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
    if ([v8 length]>= size)
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

+ (id)_randomPublishedUUIDsFromPublishedUUIDs:(id)ds sentUUIDs:(id)iDs
{
  dsCopy = ds;
  iDsCopy = iDs;
  v7 = [dsCopy count];
  if (v7 > 0x64)
  {
    v10 = v7;
    allObjects = [dsCopy allObjects];
    v11 = objc_alloc_init(MEMORY[0x1E696AD50]);
    for (i = 0; i != 100; ++i)
    {
      v13 = arc4random_uniform(v10);
      v14 = [allObjects objectAtIndexedSubscript:v13];
      v15 = [iDsCopy containsObject:v14];

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

    v8AllObjects = [allObjects objectsAtIndexes:v11];
  }

  else
  {
    allObjects = [dsCopy mutableCopy];
    [allObjects minusSet:iDsCopy];
    v8AllObjects = [allObjects allObjects];
  }

  return v8AllObjects;
}

+ (id)_newSystemPhotoLibrary
{
  v2 = [PHPhotoLibrary alloc];
  v3 = +[PHPhotoLibrary systemPhotoLibraryURL];
  v4 = [(PHPhotoLibrary *)v2 initWithPhotoLibraryURL:v3];

  return v4;
}

+ (id)_featureVectorDataWithOneHotAtIndex:(unint64_t)index featureVectorSize:(unint64_t)size
{
  if (index >= size)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PHAssetGeoHashUtilities.m" lineNumber:242 description:{@"Invalid parameter not satisfying: %@", @"oneHotIndex < featureVectorSize"}];
  }

  v6 = malloc_type_calloc(size, 1uLL, 0x100004077774924uLL);
  v6[index] = 1;
  v7 = MEMORY[0x1E695DEF0];

  return [v7 dataWithBytesNoCopy:v6 length:size];
}

+ (unint64_t)_indexForPOIGeoHash:(id)hash geoHashKeySize:(unint64_t)size
{
  hashCopy = hash;
  v6 = [hashCopy substringWithRange:{size, objc_msgSend(hashCopy, "length") - size}];
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

+ (id)_sceneLabelsForSceneClassifications:(id)classifications
{
  v30 = *MEMORY[0x1E69E9840];
  classificationsCopy = classifications;
  v5 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  sceneLabelExclusionList = [self sceneLabelExclusionList];
  v7 = objc_alloc_init(MEMORY[0x1E69C0850]);
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v8 = classificationsCopy;
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
              lowercaseString = [v20 lowercaseString];
              v23 = [sceneLabelExclusionList containsObject:lowercaseString];

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

+ (unint64_t)_randomSceneIndexForAsset:(id)asset sceneLabelMapping:(id)mapping orderedRemappedSceneLabels:(id)labels
{
  v37 = *MEMORY[0x1E69E9840];
  assetCopy = asset;
  mappingCopy = mapping;
  labelsCopy = labels;
  sceneClassifications = [assetCopy sceneClassifications];
  v11 = [self _sceneLabelsForSceneClassifications:sceneClassifications];

  v12 = PLBackendGetLog();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
  {
    uuid = [assetCopy uuid];
    *buf = 138412546;
    v34 = uuid;
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

        lowercaseString = [*(*(&v28 + 1) + 8 * v19) lowercaseString];
        v21 = [mappingCopy objectForKeyedSubscript:lowercaseString];

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
    v22 = [v14 objectAtIndexedSubscript:{objc_msgSend(self, "_randomIndexFromCount:", objc_msgSend(v14, "count"))}];
    v23 = labelsCopy;
    v24 = [labelsCopy indexOfObject:v22];
  }

  else
  {
    v22 = PLBackendGetLog();
    v23 = labelsCopy;
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      uuid2 = [assetCopy uuid];
      *buf = 138412546;
      v34 = uuid2;
      v35 = 2112;
      v36 = v15;
      _os_log_impl(&dword_19C86F000, v22, OS_LOG_TYPE_DEFAULT, "[PHAssetGeoHashUtilities] Scene labels for asset %@ are empty after remapping. Scene Labels: %@", buf, 0x16u);
    }

    v24 = 0x7FFFFFFFFFFFFFFFLL;
  }

  return v24;
}

+ (id)mockReturnDataWithAssetUUIDs:(id)ds geoHashKeySize:(id)size
{
  v26 = *MEMORY[0x1E69E9840];
  dsCopy = ds;
  sizeCopy = size;
  v8 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(dsCopy, "count")}];
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  obj = dsCopy;
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
        v14 = [self _featureVectorDataWithOneHotAtIndex:1 featureVectorSize:3];
        v15 = [v13 substringWithRange:{0, objc_msgSend(sizeCopy, "integerValue")}];
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

+ (id)featureVectorByGeoHashForAssetUUIDs:(id)ds geoHashSize:(id)size geoHashKeySize:(id)keySize sceneLabelMapping:(id)mapping dryRun:(id)run photoLibrary:(id)library
{
  v88 = *MEMORY[0x1E69E9840];
  dsCopy = ds;
  sizeCopy = size;
  keySizeCopy = keySize;
  mappingCopy = mapping;
  runCopy = run;
  libraryCopy = library;
  if ([keySizeCopy integerValue] >= 1 && objc_msgSend(keySizeCopy, "integerValue") < 5)
  {
    if ([runCopy BOOLValue])
    {
      v19 = [self mockReturnDataWithAssetUUIDs:dsCopy geoHashKeySize:keySizeCopy];
    }

    else
    {
      v61 = runCopy;
      v65 = keySizeCopy;
      v21 = MEMORY[0x1E695DFD8];
      allValues = [mappingCopy allValues];
      v23 = [v21 setWithArray:allValues];

      v64 = v23;
      allObjects = [v23 allObjects];
      v25 = [allObjects sortedArrayUsingSelector:sel_compare_];

      v60 = libraryCopy;
      librarySpecificFetchOptions = [libraryCopy librarySpecificFetchOptions];
      v83 = @"PHAssetPropertySetSceneAnalysis";
      v27 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v83 count:1];
      [librarySpecificFetchOptions setFetchPropertySets:v27];

      v62 = dsCopy;
      v59 = librarySpecificFetchOptions;
      v28 = [PHAsset fetchAssetsWithLocalIdentifiers:dsCopy options:librarySpecificFetchOptions];
      v29 = objc_alloc_init(MEMORY[0x1E695DF90]);
      v75 = 0u;
      v76 = 0u;
      v77 = 0u;
      v78 = 0u;
      obj = v28;
      v30 = sizeCopy;
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
            v35 = [self _randomSceneIndexForAsset:v33 sceneLabelMapping:mappingCopy orderedRemappedSceneLabels:v25];
            if (v35 != 0x7FFFFFFFFFFFFFFFLL)
            {
              v36 = v35;
              context = v34;
              [self _poiGeoHashForAsset:v33 geoHashSize:{objc_msgSend(v30, "integerValue")}];
              v38 = v37 = self;
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
                uuid = [v33 uuid];
                [v29 setObject:v43 forKeyedSubscript:uuid];

                v45 = [v29 count];
                v46 = v45 > 9;
                v30 = sizeCopy;
                if (v46)
                {

                  objc_autoreleasePoolPop(context);
                  goto LABEL_24;
                }
              }

              self = v37;
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

      libraryCopy = v60;
      if ([v29 count])
      {
        v47 = MEMORY[0x1E69BE398];
        allKeys = [v29 allKeys];
        photoLibraryBundle = [v60 photoLibraryBundle];
        pathManager = [photoLibraryBundle pathManager];
        [v47 publishUUIDs:allKeys stream:1 pathManager:pathManager];
      }

      dsCopy = v62;
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

      keySizeCopy = v65;
      runCopy = v61;
    }
  }

  else
  {
    v18 = PLBackendGetLog();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412546;
      v85 = keySizeCopy;
      v86 = 2048;
      v87 = 4;
      _os_log_impl(&dword_19C86F000, v18, OS_LOG_TYPE_ERROR, "[PHAssetGeoHashUtilities] geoHashKeySize %@ not supported. It should be a number between 1 and %tu (inclusive).", buf, 0x16u);
    }

    v19 = 0;
  }

  return v19;
}

+ (id)featureVectorByGeoHashForAssetUUIDs:(id)ds geoHashSize:(id)size geoHashKeySize:(id)keySize sceneLabelMapping:(id)mapping dryRun:(id)run
{
  v29 = *MEMORY[0x1E69E9840];
  dsCopy = ds;
  sizeCopy = size;
  keySizeCopy = keySize;
  mappingCopy = mapping;
  runCopy = run;
  if ([keySizeCopy integerValue] >= 1 && objc_msgSend(keySizeCopy, "integerValue") < 5)
  {
    if ([runCopy BOOLValue])
    {
      v18 = [self mockReturnDataWithAssetUUIDs:dsCopy geoHashKeySize:keySizeCopy];
    }

    else
    {
      _newSystemPhotoLibrary = [self _newSystemPhotoLibrary];
      v24 = 0;
      v21 = [_newSystemPhotoLibrary openAndWaitWithUpgrade:0 error:&v24];
      v22 = v24;
      if (v21)
      {
        v18 = [self featureVectorByGeoHashForAssetUUIDs:dsCopy geoHashSize:sizeCopy geoHashKeySize:keySizeCopy sceneLabelMapping:mappingCopy dryRun:runCopy photoLibrary:_newSystemPhotoLibrary];
        [_newSystemPhotoLibrary close];
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
      v26 = keySizeCopy;
      v27 = 2048;
      v28 = 4;
      _os_log_impl(&dword_19C86F000, v17, OS_LOG_TYPE_ERROR, "[PHAssetGeoHashUtilities] geoHashKeySize %@ not supported. It should be a number between 1 and %tu (inclusive).", buf, 0x16u);
    }

    v18 = 0;
  }

  return v18;
}

+ (id)featureVectorByGeoHashForAssetUUID:(id)d geoHashSize:(id)size geoHashKeySize:(id)keySize sceneLabelMapping:(id)mapping dryRun:(id)run photoLibrary:(id)library
{
  v26 = *MEMORY[0x1E69E9840];
  dCopy = d;
  v14 = MEMORY[0x1E695DEC8];
  libraryCopy = library;
  runCopy = run;
  mappingCopy = mapping;
  keySizeCopy = keySize;
  sizeCopy = size;
  dCopy2 = d;
  v21 = [v14 arrayWithObjects:&dCopy count:1];

  v22 = [self featureVectorByGeoHashForAssetUUIDs:v21 geoHashSize:sizeCopy geoHashKeySize:keySizeCopy sceneLabelMapping:mappingCopy dryRun:runCopy photoLibrary:{libraryCopy, dCopy, v26}];

  firstObject = [v22 firstObject];

  return firstObject;
}

+ (id)featureVectorByGeoHashForAssetUUID:(id)d geoHashSize:(id)size geoHashKeySize:(id)keySize sceneLabelMapping:(id)mapping dryRun:(id)run
{
  v23 = *MEMORY[0x1E69E9840];
  dCopy = d;
  v12 = MEMORY[0x1E695DEC8];
  runCopy = run;
  mappingCopy = mapping;
  keySizeCopy = keySize;
  sizeCopy = size;
  dCopy2 = d;
  v18 = [v12 arrayWithObjects:&dCopy count:1];

  v19 = [self featureVectorByGeoHashForAssetUUIDs:v18 geoHashSize:sizeCopy geoHashKeySize:keySizeCopy sceneLabelMapping:mappingCopy dryRun:{runCopy, dCopy, v23}];

  firstObject = [v19 firstObject];

  return firstObject;
}

+ (id)assetUUIDsFromBiomeStreamWithPhotoLibrary:(id)library
{
  libraryCopy = library;
  v5 = MEMORY[0x1E69BE398];
  photoLibraryBundle = [libraryCopy photoLibraryBundle];
  pathManager = [photoLibraryBundle pathManager];
  v8 = [v5 publishedUUIDsInStream:0 pathManager:pathManager];

  if (v8)
  {
    v9 = [MEMORY[0x1E695DFD8] setWithArray:v8];
    v10 = MEMORY[0x1E69BE398];
    photoLibraryBundle2 = [libraryCopy photoLibraryBundle];
    pathManager2 = [photoLibraryBundle2 pathManager];
    v13 = [v10 publishedUUIDsInStream:1 pathManager:pathManager2];

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
    v15 = [self _randomPublishedUUIDsFromPublishedUUIDs:v9 sentUUIDs:v14];
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
  _newSystemPhotoLibrary = [self _newSystemPhotoLibrary];
  v9 = 0;
  v4 = [_newSystemPhotoLibrary openAndWaitWithUpgrade:0 error:&v9];
  v5 = v9;
  if (v4)
  {
    v6 = [self assetUUIDsFromBiomeStreamWithPhotoLibrary:_newSystemPhotoLibrary];
    [_newSystemPhotoLibrary close];
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