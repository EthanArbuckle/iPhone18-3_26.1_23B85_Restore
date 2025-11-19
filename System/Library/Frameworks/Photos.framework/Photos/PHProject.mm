@interface PHProject
+ (id)entityKeyMap;
+ (id)fetchProjectsWithLocalIdentifiers:(id)a3 options:(id)a4;
+ (id)localIdentifierWithUUID:(id)a3;
+ (id)propertiesToFetchWithHint:(unint64_t)a3;
+ (id)transformValueExpression:(id)a3 forKeyPath:(id)a4;
- (BOOL)hasProjectPreview;
- (NSData)projectExtensionData;
- (PHProject)initWithFetchDictionary:(id)a3 propertyHint:(unint64_t)a4 photoLibrary:(id)a5;
@end

@implementation PHProject

- (NSData)projectExtensionData
{
  v2 = self;
  objc_sync_enter(v2);
  if (!v2->_projectExtensionData)
  {
    v3 = [(PHObject *)v2 photoLibrary];
    v4 = [v3 assetsdClient];
    v5 = [v4 resourceClient];
    v6 = [(PHObject *)v2 uuid];
    v7 = [v5 projectExtensionDataForProjectUuid:v6];
    v8 = v7;
    if (v7)
    {
      v9 = v7;
    }

    else
    {
      v9 = [MEMORY[0x1E695DEF0] data];
    }

    projectExtensionData = v2->_projectExtensionData;
    v2->_projectExtensionData = v9;
  }

  objc_sync_exit(v2);

  v11 = v2->_projectExtensionData;

  return v11;
}

- (BOOL)hasProjectPreview
{
  v2 = [(PHProject *)self projectRenderUuid];
  v3 = v2 != 0;

  return v3;
}

- (PHProject)initWithFetchDictionary:(id)a3 propertyHint:(unint64_t)a4 photoLibrary:(id)a5
{
  v8 = a3;
  v21.receiver = self;
  v21.super_class = PHProject;
  v9 = [(PHAssetCollection *)&v21 initWithFetchDictionary:v8 propertyHint:a4 photoLibrary:a5];
  if (v9)
  {
    v10 = [v8 objectForKeyedSubscript:@"projectExtensionIdentifier"];
    projectExtensionIdentifier = v9->_projectExtensionIdentifier;
    v9->_projectExtensionIdentifier = v10;

    v12 = [v8 objectForKeyedSubscript:@"projectDocumentType"];
    projectDocumentType = v9->_projectDocumentType;
    v9->_projectDocumentType = v12;

    v14 = [v8 objectForKeyedSubscript:@"projectData"];
    projectExtensionData = v9->_projectExtensionData;
    v9->_projectExtensionData = v14;

    v16 = [v8 objectForKeyedSubscript:@"projectRenderUuid"];
    projectRenderUuid = v9->_projectRenderUuid;
    v9->_projectRenderUuid = v16;

    v18 = [v8 objectForKeyedSubscript:@"creationDate"];
    creationDate = v9->_creationDate;
    v9->_creationDate = v18;

    v9->super._assetCollectionType = 10;
  }

  return v9;
}

+ (id)fetchProjectsWithLocalIdentifiers:(id)a3 options:(id)a4
{
  v5 = a3;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __55__PHProject_fetchProjectsWithLocalIdentifiers_options___block_invoke;
  v9[3] = &unk_1E75AB0E0;
  v10 = v5;
  v6 = v5;
  v7 = [PHObject authorizationAwareFetchResultWithOptions:a4 fetchBlock:v9];

  return v7;
}

id __55__PHProject_fetchProjectsWithLocalIdentifiers_options___block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = [PHQuery queryForProjectsWithLocalIdentifiers:*(a1 + 32) options:a2];
  v3 = [v2 executeQuery];

  return v3;
}

id __38__PHProject_fetchProjectsWithOptions___block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = [PHQuery queryForAssetCollectionsWithType:10 subtype:0x7FFFFFFFFFFFFFFFLL options:a2];
  v3 = [v2 executeQuery];

  return v3;
}

+ (id)transformValueExpression:(id)a3 forKeyPath:(id)a4
{
  v6 = a3;
  v7 = a4;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __49__PHProject_transformValueExpression_forKeyPath___block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (transformValueExpression_forKeyPath__onceToken != -1)
  {
    dispatch_once(&transformValueExpression_forKeyPath__onceToken, block);
  }

  if ([transformValueExpression_forKeyPath___passThroughSet containsObject:v7])
  {
    v8 = v6;
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

void __49__PHProject_transformValueExpression_forKeyPath___block_invoke()
{
  v4[9] = *MEMORY[0x1E69E9840];
  v0 = MEMORY[0x1E695DFD8];
  v4[0] = @"projectExtensionIdentifier";
  v4[1] = @"projectDocumentType";
  v4[2] = @"projectExtensionData";
  v4[3] = @"projectRenderUuid";
  v4[4] = @"projectData";
  v4[5] = @"cloudGUID";
  v4[6] = @"title";
  v4[7] = @"uuid";
  v4[8] = @"creationDate";
  v1 = [MEMORY[0x1E695DEC8] arrayWithObjects:v4 count:9];
  v2 = [v0 setWithArray:v1];
  v3 = transformValueExpression_forKeyPath___passThroughSet;
  transformValueExpression_forKeyPath___passThroughSet = v2;
}

+ (id)entityKeyMap
{
  pl_dispatch_once();
  v2 = entityKeyMap_pl_once_object_15_1230;

  return v2;
}

void __25__PHProject_entityKeyMap__block_invoke()
{
  v21[8] = *MEMORY[0x1E69E9840];
  v0 = [PHEntityKeyMap alloc];
  v19 = @"projectExtensionIdentifier";
  v20[0] = @"projectExtensionIdentifier";
  v1 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v19 count:1];
  v21[0] = v1;
  v20[1] = @"projectDocumentType";
  v18 = @"projectDocumentType";
  v2 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v18 count:1];
  v21[1] = v2;
  v20[2] = @"projectData";
  v17[0] = @"projectExtensionData";
  v17[1] = @"projectData";
  v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:v17 count:2];
  v21[2] = v3;
  v20[3] = @"projectRenderUuid";
  v16 = @"projectRenderUuid";
  v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v16 count:1];
  v21[3] = v4;
  v20[4] = @"cloudGUID";
  v15 = @"cloudGUID";
  v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v15 count:1];
  v21[4] = v5;
  v20[5] = @"title";
  v14 = @"title";
  v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v14 count:1];
  v21[5] = v6;
  v20[6] = @"uuid";
  v13 = @"uuid";
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v13 count:1];
  v21[6] = v7;
  v20[7] = @"creationDate";
  v12 = @"creationDate";
  v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v12 count:1];
  v21[7] = v8;
  v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v21 forKeys:v20 count:8];
  v10 = [(PHEntityKeyMap *)v0 initWithPropertyKeysByEntityKey:v9];
  v11 = entityKeyMap_pl_once_object_15_1230;
  entityKeyMap_pl_once_object_15_1230 = v10;
}

+ (id)localIdentifierWithUUID:(id)a3
{
  v4 = MEMORY[0x1E696AEC0];
  v5 = a3;
  v6 = [a1 identifierCode];
  v7 = [v4 stringWithFormat:@"%@/L0/%@", v5, v6];

  return v7;
}

+ (id)propertiesToFetchWithHint:(unint64_t)a3
{
  if (propertiesToFetchWithHint__onceToken_1239 != -1)
  {
    dispatch_once(&propertiesToFetchWithHint__onceToken_1239, &__block_literal_global_1240);
  }

  v4 = propertiesToFetchWithHint__array;

  return v4;
}

void __39__PHProject_propertiesToFetchWithHint___block_invoke()
{
  v3[9] = *MEMORY[0x1E69E9840];
  v0 = [MEMORY[0x1E69BE570] objectIDDescription];
  v3[0] = v0;
  v3[1] = @"trashedState";
  v3[2] = @"projectExtensionIdentifier";
  v3[3] = @"projectDocumentType";
  v3[4] = @"projectRenderUuid";
  v3[5] = @"cloudGUID";
  v3[6] = @"title";
  v3[7] = @"uuid";
  v3[8] = @"creationDate";
  v1 = [MEMORY[0x1E695DEC8] arrayWithObjects:v3 count:9];
  v2 = propertiesToFetchWithHint__array;
  propertiesToFetchWithHint__array = v1;
}

@end