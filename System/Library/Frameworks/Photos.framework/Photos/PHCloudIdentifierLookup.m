@interface PHCloudIdentifierLookup
- (BOOL)supportsIdentifierCode:(id)a3;
- (PHCloudIdentifierLookup)initWithPhotoLibrary:(id)a3;
- (id)_computeStableHashesForAssetsWithObjectIDsByUUID:(id)a3;
- (id)_getAssetLocalIdentifiersByStableHashForStableHashes:(id)a3;
- (id)_stableHashesForAssetUUIDs:(id)a3;
- (id)fetchOptionsForResolvingIdentifiersInLibrary:(id)a3 fetchType:(id)a4;
- (id)lookupCloudIdentifiersForLocalIdentifiers:(id)a3;
- (id)lookupLocalIdentifiersForCloudIdentifiers:(id)a3;
- (void)_lookupCloudIdentifiersForIdentifierCode:(id)a3 codeSpecificLocalIdentifiers:(id)a4;
- (void)_lookupCodeSpecificCloudIdentifierStrings:(id)a3 forIdentifierCode:(id)a4;
- (void)_lookupLocalIdentifiersForIdentifierCode:(id)a3 codeSpecificCloudIdentifierStrings:(id)a4;
@end

@implementation PHCloudIdentifierLookup

- (id)_stableHashesForAssetUUIDs:(id)a3
{
  v4 = a3;
  v5 = [MEMORY[0x1E695DF90] dictionary];
  if ([v4 count])
  {
    v6 = [MEMORY[0x1E695DF90] dictionary];
    v7 = [(PHPhotoLibrary *)self->_photoLibrary managedObjectContext];
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __54__PHCloudIdentifierLookup__stableHashesForAssetUUIDs___block_invoke;
    v13[3] = &unk_1E75AA130;
    v14 = v4;
    v15 = @"additionalAttributes.originalStableHash";
    v16 = v7;
    v8 = v5;
    v17 = v8;
    v9 = v6;
    v18 = v9;
    v10 = v7;
    [v10 performBlockAndWait:v13];
    if ([v9 count])
    {
      v11 = [(PHCloudIdentifierLookup *)self _computeStableHashesForAssetsWithObjectIDsByUUID:v9];
      if ([v11 count])
      {
        [v8 addEntriesFromDictionary:v11];
      }
    }
  }

  return v5;
}

void __54__PHCloudIdentifierLookup__stableHashesForAssetUUIDs___block_invoke(uint64_t a1)
{
  v20 = *MEMORY[0x1E69E9840];
  v2 = MEMORY[0x1E695D5E0];
  v3 = +[PHAsset managedEntityName];
  v4 = [v2 fetchRequestWithEntityName:v3];

  v5 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K IN %@", @"uuid", *(a1 + 32)];
  [v4 setPredicate:v5];

  v6 = +[(PHObject *)PHAsset];
  v7 = [v6 arrayByAddingObject:*(a1 + 40)];

  [v4 setPropertiesToFetch:v7];
  [v4 setResultType:2];
  v8 = *(a1 + 48);
  v17 = 0;
  v9 = [v8 executeFetchRequest:v4 error:&v17];
  v10 = v17;
  if (v9)
  {
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __54__PHCloudIdentifierLookup__stableHashesForAssetUUIDs___block_invoke_2;
    v13[3] = &unk_1E75A64A8;
    v14 = *(a1 + 40);
    v15 = *(a1 + 56);
    v16 = *(a1 + 64);
    [v9 enumerateObjectsUsingBlock:v13];

    v11 = v14;
  }

  else
  {
    v11 = PLPhotoKitGetLog();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v12 = *(a1 + 32);
      *buf = 138543362;
      v19 = v12;
      _os_log_impl(&dword_19C86F000, v11, OS_LOG_TYPE_ERROR, "Failed to fetch identifier information for cloud identifier fingerprints: %{public}@", buf, 0xCu);
    }
  }
}

void __54__PHCloudIdentifierLookup__stableHashesForAssetUUIDs___block_invoke_2(uint64_t a1, void *a2)
{
  v6 = a2;
  v3 = [v6 objectForKeyedSubscript:*(a1 + 32)];
  v4 = [v6 objectForKeyedSubscript:@"uuid"];
  if (v3)
  {
    [*(a1 + 40) setObject:v3 forKeyedSubscript:v4];
  }

  else
  {
    v5 = [v6 objectForKeyedSubscript:@"objectID"];
    [*(a1 + 48) setObject:v5 forKeyedSubscript:v4];
  }
}

- (id)_computeStableHashesForAssetsWithObjectIDsByUUID:(id)a3
{
  v19 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [MEMORY[0x1E695DF90] dictionary];
  v6 = [(PHPhotoLibrary *)self->_photoLibrary assetsdClient];
  v7 = [v6 cloudClient];

  v8 = PLPhotoKitGetLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    *buf = 134217984;
    v18 = [v4 count];
    _os_log_impl(&dword_19C86F000, v8, OS_LOG_TYPE_INFO, "Generating fingerprints on demand for %ld assets", buf, 0xCu);
  }

  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __76__PHCloudIdentifierLookup__computeStableHashesForAssetsWithObjectIDsByUUID___block_invoke;
  v14[3] = &unk_1E75A6480;
  v15 = v7;
  v9 = v5;
  v16 = v9;
  v10 = v7;
  [v4 enumerateKeysAndObjectsUsingBlock:v14];
  v11 = v16;
  v12 = v9;

  return v9;
}

void __76__PHCloudIdentifierLookup__computeStableHashesForAssetsWithObjectIDsByUUID___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __76__PHCloudIdentifierLookup__computeStableHashesForAssetsWithObjectIDsByUUID___block_invoke_2;
  v8[3] = &unk_1E75A6458;
  v6 = *(a1 + 32);
  v9 = *(a1 + 40);
  v10 = v5;
  v7 = v5;
  [v6 computeStableHashesOfAsset:a3 synchronously:1 completionHandler:v8];
}

void __76__PHCloudIdentifierLookup__computeStableHashesForAssetsWithObjectIDsByUUID___block_invoke_2(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v13 = *MEMORY[0x1E69E9840];
  v6 = a4;
  if (a2)
  {
    [*(a1 + 32) setObject:a2 forKeyedSubscript:*(a1 + 40)];
  }

  else
  {
    v7 = PLPhotoKitGetLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v8 = *(a1 + 40);
      v9 = 138543618;
      v10 = v8;
      v11 = 2112;
      v12 = v6;
      _os_log_impl(&dword_19C86F000, v7, OS_LOG_TYPE_ERROR, "Failed to generate fingerprint for asset %{public}@: %@", &v9, 0x16u);
    }
  }
}

- (void)_lookupCloudIdentifiersForIdentifierCode:(id)a3 codeSpecificLocalIdentifiers:(id)a4
{
  v56 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a4;
  v9 = [PHPhotoLibrary fetchTypeForLocalIdentifierCode:v7];
  v45 = [(NSDictionary *)self->_cloudIdentifierKeysByFetchType objectForKeyedSubscript:v9];
  if (!v45)
  {
    v38 = [MEMORY[0x1E696AAA8] currentHandler];
    [v38 handleFailureInMethod:a2 object:self file:@"PHCloudIdentifierLookup.m" lineNumber:308 description:{@"Unsupported identifier code: %@", v7}];
  }

  v10 = self;
  v40 = [(PHCloudIdentifierLookup *)self fetchOptionsForResolvingIdentifiersInLibrary:self->_photoLibrary fetchType:v9];
  v41 = v9;
  v39 = [PHQuery queryForType:v9 withLocalIdentifiers:v8 options:?];
  v11 = [v39 executeQuery];
  v12 = +[PHAsset identifierCode];
  v13 = [v7 isEqualToString:v12];

  v42 = v8;
  v44 = v7;
  if (v13)
  {
    v14 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v8, "count")}];
    v50 = 0u;
    v51 = 0u;
    v52 = 0u;
    v53 = 0u;
    v15 = v8;
    v16 = [v15 countByEnumeratingWithState:&v50 objects:v55 count:16];
    if (v16)
    {
      v17 = v16;
      v18 = *v51;
      do
      {
        for (i = 0; i != v17; ++i)
        {
          if (*v51 != v18)
          {
            objc_enumerationMutation(v15);
          }

          v20 = [PHObject uuidFromLocalIdentifier:*(*(&v50 + 1) + 8 * i)];
          if (v20)
          {
            [v14 addObject:v20];
          }
        }

        v17 = [v15 countByEnumeratingWithState:&v50 objects:v55 count:16];
      }

      while (v17);
    }

    v21 = v10;
    v22 = [(PHCloudIdentifierLookup *)v10 _stableHashesForAssetUUIDs:v14];
  }

  else
  {
    v22 = 0;
    v21 = self;
  }

  v48 = 0u;
  v49 = 0u;
  v46 = 0u;
  v47 = 0u;
  obj = v11;
  v23 = [obj countByEnumeratingWithState:&v46 objects:v54 count:16];
  if (v23)
  {
    v24 = v23;
    v25 = *v47;
    do
    {
      for (j = 0; j != v24; ++j)
      {
        if (*v47 != v25)
        {
          objc_enumerationMutation(obj);
        }

        v27 = *(*(&v46 + 1) + 8 * j);
        v28 = [v27 valueForKeyPath:v45];
        if (![v28 length])
        {
          if (v21->_excludeUnsyncedItems)
          {
            goto LABEL_27;
          }

          v29 = [v27 uuid];

          v28 = v29;
        }

        v30 = [v27 uuid];
        v31 = [v22 objectForKeyedSubscript:v30];

        v32 = [PHCloudIdentifier alloc];
        if (v31)
        {
          v33 = v31;
        }

        else
        {
          v33 = &stru_1F0FC60C8;
        }

        v34 = [(PHCloudIdentifier *)v32 initWithLocalCloudIdentifier:v28 identifierCode:v44 stableHash:v33];
        cloudIdentifiersByLocalIdentifiers = v10->_cloudIdentifiersByLocalIdentifiers;
        v36 = [v27 localIdentifier];
        v37 = cloudIdentifiersByLocalIdentifiers;
        v21 = v10;
        [(NSMutableDictionary *)v37 setObject:v34 forKeyedSubscript:v36];

LABEL_27:
      }

      v24 = [obj countByEnumeratingWithState:&v46 objects:v54 count:16];
    }

    while (v24);
  }
}

- (id)lookupCloudIdentifiersForLocalIdentifiers:(id)a3
{
  v29 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (self->_excludeUnsyncedItems)
  {
    v5 = PLBackendGetLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      *buf = 136315138;
      v28 = "[PHCloudIdentifierLookup lookupCloudIdentifiersForLocalIdentifiers:]";
      _os_log_impl(&dword_19C86F000, v5, OS_LOG_TYPE_INFO, "%s skipping unsynced items", buf, 0xCu);
    }
  }

  v6 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:{objc_msgSend(v4, "count")}];
  cloudIdentifiersByLocalIdentifiers = self->_cloudIdentifiersByLocalIdentifiers;
  v20 = self;
  self->_cloudIdentifiersByLocalIdentifiers = v6;

  v8 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v9 = v4;
  v10 = [v9 countByEnumeratingWithState:&v22 objects:v26 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v23;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v23 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v22 + 1) + 8 * i);
        v15 = [PHObject identifierCodeFromLocalIdentifier:v14, v20];
        if (v15)
        {
          v16 = [v8 objectForKeyedSubscript:v15];
          if (!v16)
          {
            v16 = objc_alloc_init(MEMORY[0x1E695DF70]);
            [v8 setObject:v16 forKeyedSubscript:v15];
          }

          [v16 addObject:v14];
        }
      }

      v11 = [v9 countByEnumeratingWithState:&v22 objects:v26 count:16];
    }

    while (v11);
  }

  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 3221225472;
  v21[2] = __69__PHCloudIdentifierLookup_lookupCloudIdentifiersForLocalIdentifiers___block_invoke;
  v21[3] = &unk_1E75A63B8;
  v21[4] = v20;
  [v8 enumerateKeysAndObjectsUsingBlock:v21];
  v17 = v20->_cloudIdentifiersByLocalIdentifiers;
  v18 = v17;

  return v17;
}

void __69__PHCloudIdentifierLookup_lookupCloudIdentifiersForLocalIdentifiers___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v7 = a2;
  v5 = a3;
  if ([*(a1 + 32) supportsIdentifierCode:v7])
  {
    v6 = objc_autoreleasePoolPush();
    [*(a1 + 32) _lookupCloudIdentifiersForIdentifierCode:v7 codeSpecificLocalIdentifiers:v5];
    objc_autoreleasePoolPop(v6);
  }
}

- (id)_getAssetLocalIdentifiersByStableHashForStableHashes:(id)a3
{
  v4 = a3;
  v5 = [MEMORY[0x1E695DF90] dictionary];
  if ([v4 count])
  {
    v6 = [(PHPhotoLibrary *)self->_photoLibrary managedObjectContext];
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __80__PHCloudIdentifierLookup__getAssetLocalIdentifiersByStableHashForStableHashes___block_invoke;
    v9[3] = &unk_1E75A9E40;
    v10 = @"additionalAttributes.originalStableHash";
    v11 = v4;
    v12 = v6;
    v13 = v5;
    v7 = v6;
    [v7 performBlockAndWait:v9];
  }

  return v5;
}

void __80__PHCloudIdentifierLookup__getAssetLocalIdentifiersByStableHashForStableHashes___block_invoke(uint64_t a1)
{
  v19 = *MEMORY[0x1E69E9840];
  v2 = MEMORY[0x1E695D5E0];
  v3 = +[PHAsset managedEntityName];
  v4 = [v2 fetchRequestWithEntityName:v3];

  v5 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K IN %@", *(a1 + 32), *(a1 + 40)];
  [v4 setPredicate:v5];

  v6 = +[(PHObject *)PHAsset];
  v7 = [v6 arrayByAddingObject:*(a1 + 32)];

  [v4 setPropertiesToFetch:v7];
  [v4 setResultType:2];
  v8 = *(a1 + 48);
  v16 = 0;
  v9 = [v8 executeFetchRequest:v4 error:&v16];
  v10 = v16;
  if (v9)
  {
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __80__PHCloudIdentifierLookup__getAssetLocalIdentifiersByStableHashForStableHashes___block_invoke_2;
    v13[3] = &unk_1E75A6430;
    v14 = *(a1 + 32);
    v15 = *(a1 + 56);
    [v9 enumerateObjectsUsingBlock:v13];

    v11 = v14;
  }

  else
  {
    v11 = PLPhotoKitGetLog();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v12 = *(a1 + 40);
      *buf = 138543362;
      v18 = v12;
      _os_log_impl(&dword_19C86F000, v11, OS_LOG_TYPE_ERROR, "Failed to fetch identifier information for cloud identifier fingerprints: %{public}@", buf, 0xCu);
    }
  }
}

void __80__PHCloudIdentifierLookup__getAssetLocalIdentifiersByStableHashForStableHashes___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v10 = [v4 objectForKeyedSubscript:v3];
  v5 = [v4 objectForKeyedSubscript:@"uuid"];

  v6 = [(PHObject *)PHAsset localIdentifierWithUUID:v5];
  v7 = [*(a1 + 40) objectForKeyedSubscript:v10];
  v8 = v7;
  if (v7)
  {
    [v7 addObject:v6];
  }

  else
  {
    v9 = [MEMORY[0x1E695DF70] arrayWithObject:v6];
    [*(a1 + 40) setObject:v9 forKeyedSubscript:v10];
  }
}

- (void)_lookupCodeSpecificCloudIdentifierStrings:(id)a3 forIdentifierCode:(id)a4
{
  v38 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a4;
  v9 = [PHPhotoLibrary fetchTypeForLocalIdentifierCode:v8];
  if (!v9 || ([(NSDictionary *)self->_cloudIdentifierKeysByFetchType objectForKeyedSubscript:v9], (v10 = objc_claimAutoreleasedReturnValue()) == 0))
  {
    v11 = [MEMORY[0x1E696AAA8] currentHandler];
    [v11 handleFailureInMethod:a2 object:self file:@"PHCloudIdentifierLookup.m" lineNumber:213 description:{@"Unsupported identifier code: %@", v8}];

    v10 = 0;
  }

  v31 = v8;
  v29 = [(PHCloudIdentifierLookup *)self fetchOptionsForResolvingIdentifiersInLibrary:self->_photoLibrary fetchType:v9];
  v30 = v9;
  v28 = [PHQuery queryForType:v9 withIdentifiers:v7 identifierKeyPath:v10 options:?];
  v12 = [v28 executeQuery];
  v13 = [v12 count];
  if (v13 != [v7 count])
  {
    unresolvedCloudIdentifierStrings = self->_unresolvedCloudIdentifierStrings;
    if (unresolvedCloudIdentifierStrings)
    {
      v15 = [MEMORY[0x1E695DFD8] setWithArray:v7];
      [(NSMutableSet *)unresolvedCloudIdentifierStrings unionSet:v15];
    }

    else
    {
      v16 = [MEMORY[0x1E695DFA8] setWithArray:v7];
      v15 = self->_unresolvedCloudIdentifierStrings;
      self->_unresolvedCloudIdentifierStrings = v16;
    }
  }

  v32 = v7;
  [v7 removeAllObjects];
  v35 = 0u;
  v36 = 0u;
  v33 = 0u;
  v34 = 0u;
  v17 = v12;
  v18 = [v17 countByEnumeratingWithState:&v33 objects:v37 count:16];
  if (v18)
  {
    v19 = v18;
    v20 = *v34;
    do
    {
      for (i = 0; i != v19; ++i)
      {
        if (*v34 != v20)
        {
          objc_enumerationMutation(v17);
        }

        v22 = *(*(&v33 + 1) + 8 * i);
        v23 = [v22 valueForKeyPath:v10];
        [(NSMutableSet *)self->_unresolvedCloudIdentifierStrings removeObject:v23];
        v24 = [(NSMutableDictionary *)self->_resolvedCloudIdentifiersForLocalCloudIdentifiers objectForKeyedSubscript:v23];
        v25 = v24;
        if (v24)
        {
          v26 = v24;

          v23 = v26;
        }

        v27 = [v22 localIdentifier];
        [(NSMutableDictionary *)self->_localIdentifersByCloudIdentiferStrings setObject:v27 forKeyedSubscript:v23];
      }

      v19 = [v17 countByEnumeratingWithState:&v33 objects:v37 count:16];
    }

    while (v19);
  }
}

- (void)_lookupLocalIdentifiersForIdentifierCode:(id)a3 codeSpecificCloudIdentifierStrings:(id)a4
{
  v81 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v57 = a4;
  [PHCloudIdentifierLookup _lookupCodeSpecificCloudIdentifierStrings:"_lookupCodeSpecificCloudIdentifierStrings:forIdentifierCode:" forIdentifierCode:?];
  if ([(NSMutableSet *)self->_unresolvedCloudIdentifierStrings count])
  {
    v7 = [(PHPhotoLibrary *)self->_photoLibrary assetsdClient];
    v8 = [v7 photoKitClient];
    unresolvedCloudIdentifierStrings = self->_unresolvedCloudIdentifierStrings;
    v75 = 0;
    v10 = [v8 resolveLocalIdentifiersForCloudIdentifiers:unresolvedCloudIdentifierStrings error:&v75];
    v11 = v75;

    if (v10)
    {
      v12 = objc_alloc_init(MEMORY[0x1E695DF90]);
      resolvedCloudIdentifiersForLocalCloudIdentifiers = self->_resolvedCloudIdentifiersForLocalCloudIdentifiers;
      self->_resolvedCloudIdentifiersForLocalCloudIdentifiers = v12;

      v73[0] = MEMORY[0x1E69E9820];
      v73[1] = 3221225472;
      v73[2] = __103__PHCloudIdentifierLookup__lookupLocalIdentifiersForIdentifierCode_codeSpecificCloudIdentifierStrings___block_invoke;
      v73[3] = &unk_1E75A63E0;
      v73[4] = self;
      v14 = v57;
      v74 = v14;
      [v10 enumerateKeysAndObjectsUsingBlock:v73];
      if ([v14 count])
      {
        [(PHCloudIdentifierLookup *)self _lookupCodeSpecificCloudIdentifierStrings:v14 forIdentifierCode:v6];
      }
    }

    else
    {
      v15 = PLPhotoKitGetLog();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v80 = v11;
        _os_log_impl(&dword_19C86F000, v15, OS_LOG_TYPE_ERROR, "failed to get identifier conversion from CPL with error: %@", buf, 0xCu);
      }
    }
  }

  v55 = v6;
  if ([(NSMutableSet *)self->_unresolvedCloudIdentifierStrings count])
  {
    v16 = [PHPhotoLibrary fetchTypeForLocalIdentifierCode:v6];
    v17 = [(PHCloudIdentifierLookup *)self fetchOptionsForResolvingIdentifiersInLibrary:self->_photoLibrary fetchType:v16];
    v18 = [(NSMutableSet *)self->_unresolvedCloudIdentifierStrings allObjects];
    v19 = [PHQuery queryForType:v16 withLocalIdentifiers:v18 options:v17];

    v20 = [v19 executeQuery];
    v69 = 0u;
    v70 = 0u;
    v71 = 0u;
    v72 = 0u;
    v21 = [v20 countByEnumeratingWithState:&v69 objects:v78 count:16];
    if (v21)
    {
      v22 = v21;
      v23 = *v70;
      do
      {
        for (i = 0; i != v22; ++i)
        {
          if (*v70 != v23)
          {
            objc_enumerationMutation(v20);
          }

          v25 = *(*(&v69 + 1) + 8 * i);
          v26 = [v25 uuid];
          v27 = [v25 localIdentifier];
          [(NSMutableDictionary *)self->_localIdentifersByCloudIdentiferStrings setObject:v27 forKeyedSubscript:v26];

          [(NSMutableSet *)self->_unresolvedCloudIdentifierStrings removeObject:v26];
        }

        v22 = [v20 countByEnumeratingWithState:&v69 objects:v78 count:16];
      }

      while (v22);
    }

    v6 = v55;
  }

  if ([(NSMutableSet *)self->_unresolvedCloudIdentifierStrings count])
  {
    v28 = +[PHAssetCollection identifierCode];
    v29 = [v6 isEqualToString:v28];

    if (v29)
    {
      v30 = [(PHPhotoLibrary *)self->_photoLibrary librarySpecificFetchOptions];
      v31 = [(NSMutableSet *)self->_unresolvedCloudIdentifierStrings allObjects];
      v32 = [PHCollectionShare fetchCollectionSharesWithScopeIdentifiers:v31 options:v30];
      v65 = 0u;
      v66 = 0u;
      v67 = 0u;
      v68 = 0u;
      v33 = [v32 countByEnumeratingWithState:&v65 objects:v77 count:16];
      if (v33)
      {
        v34 = v33;
        v35 = *v66;
        do
        {
          for (j = 0; j != v34; ++j)
          {
            if (*v66 != v35)
            {
              objc_enumerationMutation(v32);
            }

            v37 = *(*(&v65 + 1) + 8 * j);
            v38 = [v37 scopeIdentifier];
            v39 = [v37 localIdentifier];
            [(NSMutableDictionary *)self->_localIdentifersByCloudIdentiferStrings setObject:v39 forKeyedSubscript:v38];

            [(NSMutableSet *)self->_unresolvedCloudIdentifierStrings removeObject:v38];
          }

          v34 = [v32 countByEnumeratingWithState:&v65 objects:v77 count:16];
        }

        while (v34);
      }
    }
  }

  if ([(NSMutableSet *)self->_unresolvedCloudIdentifierStrings count])
  {
    v40 = +[PHAsset identifierCode];
    v41 = [v6 isEqualToString:v40];

    if (v41)
    {
      v42 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{-[NSMutableSet count](self->_unresolvedCloudIdentifierStrings, "count")}];
      v43 = [MEMORY[0x1E695DF70] arrayWithCapacity:{-[NSMutableSet count](self->_unresolvedCloudIdentifierStrings, "count")}];
      v61 = 0u;
      v62 = 0u;
      v63 = 0u;
      v64 = 0u;
      v44 = self->_cloudIdentifiers;
      v45 = [(NSArray *)v44 countByEnumeratingWithState:&v61 objects:v76 count:16];
      if (!v45)
      {
        goto LABEL_42;
      }

      v46 = v45;
      v47 = *v62;
      while (1)
      {
        for (k = 0; k != v46; ++k)
        {
          if (*v62 != v47)
          {
            objc_enumerationMutation(v44);
          }

          v49 = *(*(&v61 + 1) + 8 * k);
          v50 = self->_unresolvedCloudIdentifierStrings;
          v51 = [v49 localCloudIdentifier];
          if ([(NSMutableSet *)v50 containsObject:v51])
          {
            v52 = [v49 stableHash];

            if (!v52)
            {
              continue;
            }

            [v42 addObject:v49];
            [v43 addObject:v52];
            v51 = v52;
          }
        }

        v46 = [(NSArray *)v44 countByEnumeratingWithState:&v61 objects:v76 count:16];
        if (!v46)
        {
LABEL_42:

          v53 = [(PHCloudIdentifierLookup *)self _getAssetLocalIdentifiersByStableHashForStableHashes:v43];
          v58[0] = MEMORY[0x1E69E9820];
          v58[1] = 3221225472;
          v58[2] = __103__PHCloudIdentifierLookup__lookupLocalIdentifiersForIdentifierCode_codeSpecificCloudIdentifierStrings___block_invoke_82;
          v58[3] = &unk_1E75A6408;
          v59 = v53;
          v60 = self;
          v54 = v53;
          [v42 enumerateObjectsUsingBlock:v58];

          v6 = v56;
          break;
        }
      }
    }
  }
}

void __103__PHCloudIdentifierLookup__lookupLocalIdentifiersForIdentifierCode_codeSpecificCloudIdentifierStrings___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v12 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if ([*(*(a1 + 32) + 40) containsObject:v5])
  {
    [*(*(a1 + 32) + 48) setObject:v5 forKeyedSubscript:v6];
    [*(a1 + 40) addObject:v6];
    [*(*(a1 + 32) + 40) removeObject:v5];
  }

  else
  {
    v7 = PLPhotoKitGetLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v8 = 138412546;
      v9 = v5;
      v10 = 2112;
      v11 = v6;
      _os_log_impl(&dword_19C86F000, v7, OS_LOG_TYPE_ERROR, "PHCloudIdentifier cloud->local translation received unexpected result from assetsd: cloudIdentifier = %@, localIdentifier = %@", &v8, 0x16u);
    }
  }
}

void __103__PHCloudIdentifierLookup__lookupLocalIdentifiersForIdentifierCode_codeSpecificCloudIdentifierStrings___block_invoke_82(uint64_t a1, void *a2)
{
  v7 = a2;
  v3 = [v7 stableHash];
  v4 = [*(a1 + 32) objectForKeyedSubscript:v3];
  if (v4)
  {
    v5 = [v7 localCloudIdentifier];
    [*(*(a1 + 40) + 40) removeObject:v5];
    if ([v4 count] == 1)
    {
      v6 = [v4 firstObject];
      [*(*(a1 + 40) + 32) setObject:v6 forKeyedSubscript:v5];
    }

    else
    {
      [*(*(a1 + 40) + 32) setObject:v4 forKeyedSubscript:v5];
    }
  }
}

- (id)lookupLocalIdentifiersForCloudIdentifiers:(id)a3
{
  v28 = *MEMORY[0x1E69E9840];
  v5 = a3;
  objc_storeStrong(&self->_cloudIdentifiers, a3);
  v6 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:{objc_msgSend(v5, "count")}];
  localIdentifersByCloudIdentiferStrings = self->_localIdentifersByCloudIdentiferStrings;
  self->_localIdentifersByCloudIdentiferStrings = v6;

  v8 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v9 = v5;
  v10 = [v9 countByEnumeratingWithState:&v23 objects:v27 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v24;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v24 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v23 + 1) + 8 * i);
        v15 = [v14 identifierCode];
        v16 = [v8 objectForKeyedSubscript:v15];

        if (!v16)
        {
          v16 = objc_alloc_init(MEMORY[0x1E695DF70]);
          v17 = [v14 identifierCode];
          [v8 setObject:v16 forKeyedSubscript:v17];
        }

        v18 = [v14 localCloudIdentifier];
        [v16 addObject:v18];
      }

      v11 = [v9 countByEnumeratingWithState:&v23 objects:v27 count:16];
    }

    while (v11);
  }

  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 3221225472;
  v22[2] = __69__PHCloudIdentifierLookup_lookupLocalIdentifiersForCloudIdentifiers___block_invoke;
  v22[3] = &unk_1E75A63B8;
  v22[4] = self;
  [v8 enumerateKeysAndObjectsUsingBlock:v22];
  v19 = self->_localIdentifersByCloudIdentiferStrings;
  v20 = v19;

  return v19;
}

void __69__PHCloudIdentifierLookup_lookupLocalIdentifiersForCloudIdentifiers___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v7 = a2;
  v5 = a3;
  if ([*(a1 + 32) supportsIdentifierCode:v7])
  {
    v6 = objc_autoreleasePoolPush();
    [*(a1 + 32) _lookupLocalIdentifiersForIdentifierCode:v7 codeSpecificCloudIdentifierStrings:v5];
    objc_autoreleasePoolPop(v6);
  }
}

- (BOOL)supportsIdentifierCode:(id)a3
{
  v4 = [PHPhotoLibrary fetchTypeForLocalIdentifierCode:a3];
  if (v4)
  {
    v5 = [(NSDictionary *)self->_cloudIdentifierKeysByFetchType objectForKeyedSubscript:v4];
    v6 = v5 != 0;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (PHCloudIdentifierLookup)initWithPhotoLibrary:(id)a3
{
  v5 = a3;
  v11.receiver = self;
  v11.super_class = PHCloudIdentifierLookup;
  v6 = [(PHCloudIdentifierLookup *)&v11 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_photoLibrary, a3);
    v8 = [objc_opt_class() cloudIdentifierKeysByFetchType];
    cloudIdentifierKeysByFetchType = v7->_cloudIdentifierKeysByFetchType;
    v7->_cloudIdentifierKeysByFetchType = v8;

    v7->_excludeUnsyncedItems = 0;
  }

  return v7;
}

- (id)fetchOptionsForResolvingIdentifiersInLibrary:(id)a3 fetchType:(id)a4
{
  v15[7] = *MEMORY[0x1E69E9840];
  v6 = a4;
  v7 = [PHFetchOptions fetchOptionsWithPhotoLibrary:a3 orObject:0];
  if (self->_excludeUnsyncedItems)
  {
    v14[0] = @"PHAsset";
    v14[1] = @"PHProject";
    v15[0] = @"cloudLocalState";
    v15[1] = @"cloudLocalState";
    v14[2] = @"PHAssetCollection";
    v14[3] = @"PHCollectionList";
    v15[2] = @"cloudLocalState";
    v15[3] = @"cloudLocalState";
    v14[4] = @"PHPerson";
    v14[5] = @"PHSocialGroup";
    v15[4] = @"cloudLocalState";
    v15[5] = @"cloudLocalState";
    v14[6] = @"PHMemory";
    v15[6] = @"cloudLocalState";
    v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v15 forKeys:v14 count:7];
    v9 = [v8 objectForKeyedSubscript:v6];
    if (v9)
    {
      v10 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K == %d", v9, 1];
      [v7 setInternalPredicate:v10];
    }

    else
    {
      v10 = PLPhotoKitGetLog();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v13 = v6;
        _os_log_impl(&dword_19C86F000, v10, OS_LOG_TYPE_ERROR, "unexpected fetch type: %@", buf, 0xCu);
      }
    }
  }

  [v7 setIsExclusivePredicate:1];

  return v7;
}

@end