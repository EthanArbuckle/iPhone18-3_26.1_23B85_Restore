@interface PHGeneratedAssetDescription
+ (id)entityKeyMap;
+ (id)fetchGeneratedAssetDescriptionsGroupedByAssetLocalIdentifierWithType:(int64_t)a3 forAssets:(id)a4;
- (PHGeneratedAssetDescription)initWithNodeContainer:(id)a3 photoLibrary:(id)a4;
- (id)debugDescription;
- (id)description;
@end

@implementation PHGeneratedAssetDescription

- (id)debugDescription
{
  v3 = [MEMORY[0x1E696AD60] string];
  v4 = [(PHObject *)self uuid];
  [v3 appendFormat:@"UUID: %@, ", v4];

  v5 = [(PHGeneratedAssetDescription *)self descriptionText];
  [v3 appendFormat:@"descriptionText: %@, ", v5];

  [v3 appendFormat:@"analysisVersion: %d, ", -[PHGeneratedAssetDescription analysisVersion](self, "analysisVersion")];
  [v3 appendFormat:@"sourceType: %ld, ", -[PHGeneratedAssetDescription analysisSourceType](self, "analysisSourceType")];

  return v3;
}

- (id)description
{
  v2 = MEMORY[0x1E696AEC0];
  v3 = [(PHObject *)self objectID];
  v4 = [v2 stringWithFormat:@"<%@>", v3];

  return v4;
}

- (PHGeneratedAssetDescription)initWithNodeContainer:(id)a3 photoLibrary:(id)a4
{
  v18[3] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v18[0] = MEMORY[0x1E695E110];
  v17[0] = @"deleted";
  v17[1] = @"uuid";
  v7 = a4;
  v8 = [v6 uuid];
  v18[1] = v8;
  v17[2] = @"objectID";
  v9 = [v6 sourceNode];
  v10 = [v9 objectID];
  v18[2] = v10;
  v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v18 forKeys:v17 count:3];

  v16.receiver = self;
  v16.super_class = PHGeneratedAssetDescription;
  v12 = [(PHObject *)&v16 initWithFetchDictionary:v11 propertyHint:2 photoLibrary:v7];

  if (v12)
  {
    v13 = [v6 descriptionText];
    descriptionText = v12->_descriptionText;
    v12->_descriptionText = v13;

    v12->_analysisVersion = [v6 analysisVersion];
    v12->_analysisSourceType = [v6 analysisSourceType];
  }

  return v12;
}

+ (id)entityKeyMap
{
  pl_dispatch_once();
  v2 = entityKeyMap_pl_once_object_15_46665;

  return v2;
}

void __43__PHGeneratedAssetDescription_entityKeyMap__block_invoke()
{
  v9[2] = *MEMORY[0x1E69E9840];
  v0 = [PHEntityKeyMap alloc];
  v7 = @"uuid";
  v8[0] = @"uuid";
  v1 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v7 count:1];
  v8[1] = @"objectID";
  v9[0] = v1;
  v6 = @"objectID";
  v2 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v6 count:1];
  v9[1] = v2;
  v3 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v9 forKeys:v8 count:2];
  v4 = [(PHEntityKeyMap *)v0 initWithPropertyKeysByEntityKey:v3];
  v5 = entityKeyMap_pl_once_object_15_46665;
  entityKeyMap_pl_once_object_15_46665 = v4;
}

+ (id)fetchGeneratedAssetDescriptionsGroupedByAssetLocalIdentifierWithType:(int64_t)a3 forAssets:(id)a4
{
  v5 = a4;
  v6 = [MEMORY[0x1E695DF90] dictionary];
  if ([v5 count])
  {
    v7 = [v5 _pl_indexBy:&__block_literal_global_46673];
    v8 = [v7 allKeys];
    v9 = [v5 firstObject];
    v10 = [v9 photoLibrary];

    v11 = [v10 photoLibraryForCurrentQueueQoS];
    v12 = [MEMORY[0x1E69BE450] fetchGeneratedAssetDescriptionsGroupedByAssetIdWithType:a3 forAssetsIDs:v8 inLibrary:v11];
    v20[0] = MEMORY[0x1E69E9820];
    v20[1] = 3221225472;
    v20[2] = __110__PHGeneratedAssetDescription_fetchGeneratedAssetDescriptionsGroupedByAssetLocalIdentifierWithType_forAssets___block_invoke_2;
    v20[3] = &unk_1E75A9E40;
    v21 = v12;
    v22 = v7;
    v13 = v6;
    v23 = v13;
    v24 = v10;
    v14 = v10;
    v15 = v7;
    v16 = v12;
    [v11 performBlockAndWait:v20];
    v17 = v24;
    v18 = v13;
  }

  return v6;
}

void __110__PHGeneratedAssetDescription_fetchGeneratedAssetDescriptionsGroupedByAssetLocalIdentifierWithType_forAssets___block_invoke_2(uint64_t a1)
{
  v19 = *MEMORY[0x1E69E9840];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  obj = *(a1 + 32);
  v2 = [obj countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v2)
  {
    v3 = v2;
    v4 = *v15;
    do
    {
      for (i = 0; i != v3; ++i)
      {
        if (*v15 != v4)
        {
          objc_enumerationMutation(obj);
        }

        v6 = *(*(&v14 + 1) + 8 * i);
        v7 = [*(a1 + 40) objectForKeyedSubscript:v6];
        v8 = [v7 uuid];
        v9 = [(PHObject *)PHAsset localIdentifierWithUUID:v8];

        v10 = [PHGeneratedAssetDescription alloc];
        v11 = [*(a1 + 32) objectForKeyedSubscript:v6];
        v12 = [(PHGeneratedAssetDescription *)v10 initWithNodeContainer:v11 photoLibrary:*(a1 + 56)];
        [*(a1 + 48) setObject:v12 forKeyedSubscript:v9];
      }

      v3 = [obj countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v3);
  }
}

@end