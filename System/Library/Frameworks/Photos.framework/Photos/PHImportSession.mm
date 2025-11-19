@interface PHImportSession
+ (id)entityKeyMap;
+ (id)propertiesToFetchWithHint:(unint64_t)a3;
+ (id)transformValueExpression:(id)a3 forKeyPath:(id)a4;
- (PHImportSession)initWithFetchDictionary:(id)a3 propertyHint:(unint64_t)a4 photoLibrary:(id)a5;
- (id)description;
@end

@implementation PHImportSession

- (id)description
{
  v9.receiver = self;
  v9.super_class = PHImportSession;
  v3 = [(PHAssetCollection *)&v9 description];
  v4 = [(PHImportSession *)self importSessionID];
  v5 = [(PHAssetCollection *)self startDate];
  v6 = [(PHAssetCollection *)self endDate];
  v7 = [v3 stringByAppendingFormat:@" %@ (%@ - %@)", v4, v5, v6];

  return v7;
}

- (PHImportSession)initWithFetchDictionary:(id)a3 propertyHint:(unint64_t)a4 photoLibrary:(id)a5
{
  v8 = a3;
  v17.receiver = self;
  v17.super_class = PHImportSession;
  v9 = [(PHAssetCollection *)&v17 initWithFetchDictionary:v8 propertyHint:a4 photoLibrary:a5];
  if (v9)
  {
    v10 = [v8 objectForKeyedSubscript:@"importSessionID"];
    importSessionID = v9->_importSessionID;
    v9->_importSessionID = v10;

    v12 = [v8 objectForKeyedSubscript:@"startDate"];
    startDate = v9->super._startDate;
    v9->super._startDate = v12;

    v14 = [v8 objectForKeyedSubscript:@"endDate"];
    endDate = v9->super._endDate;
    v9->super._endDate = v14;

    v9->super._assetCollectionType = 9;
  }

  return v9;
}

id __50__PHImportSession_fetchImportSessionsWithOptions___block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = [PHQuery queryForImportSessionsWithOptions:a2];
  v3 = [v2 executeQuery];

  return v3;
}

+ (id)transformValueExpression:(id)a3 forKeyPath:(id)a4
{
  v6 = a3;
  v7 = a4;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __55__PHImportSession_transformValueExpression_forKeyPath___block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (transformValueExpression_forKeyPath__onceToken_11832 != -1)
  {
    dispatch_once(&transformValueExpression_forKeyPath__onceToken_11832, block);
  }

  if ([transformValueExpression_forKeyPath___passThroughSet_11833 containsObject:v7])
  {
    v8 = v6;
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

void __55__PHImportSession_transformValueExpression_forKeyPath___block_invoke()
{
  v4[3] = *MEMORY[0x1E69E9840];
  v0 = MEMORY[0x1E695DFD8];
  v4[0] = @"importSessionID";
  v4[1] = @"startDate";
  v4[2] = @"endDate";
  v1 = [MEMORY[0x1E695DEC8] arrayWithObjects:v4 count:3];
  v2 = [v0 setWithArray:v1];
  v3 = transformValueExpression_forKeyPath___passThroughSet_11833;
  transformValueExpression_forKeyPath___passThroughSet_11833 = v2;
}

+ (id)entityKeyMap
{
  pl_dispatch_once();
  v2 = entityKeyMap_pl_once_object_15_11837;

  return v2;
}

void __31__PHImportSession_entityKeyMap__block_invoke()
{
  v13[4] = *MEMORY[0x1E69E9840];
  v0 = [PHEntityKeyMap alloc];
  v11 = @"uuid";
  v12[0] = @"uuid";
  v1 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v11 count:1];
  v13[0] = v1;
  v12[1] = @"importSessionID";
  v10 = @"importSessionID";
  v2 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v10 count:1];
  v13[1] = v2;
  v12[2] = @"startDate";
  v9 = @"startDate";
  v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v9 count:1];
  v13[2] = v3;
  v12[3] = @"endDate";
  v8 = @"endDate";
  v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v8 count:1];
  v13[3] = v4;
  v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v13 forKeys:v12 count:4];
  v6 = [(PHEntityKeyMap *)v0 initWithPropertyKeysByEntityKey:v5];
  v7 = entityKeyMap_pl_once_object_15_11837;
  entityKeyMap_pl_once_object_15_11837 = v6;
}

+ (id)propertiesToFetchWithHint:(unint64_t)a3
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __45__PHImportSession_propertiesToFetchWithHint___block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (propertiesToFetchWithHint__onceToken_11843 != -1)
  {
    dispatch_once(&propertiesToFetchWithHint__onceToken_11843, block);
  }

  v3 = propertiesToFetchWithHint__array_11844;

  return v3;
}

void __45__PHImportSession_propertiesToFetchWithHint___block_invoke()
{
  v4[6] = *MEMORY[0x1E69E9840];
  v0 = objc_alloc_init(MEMORY[0x1E695D5C8]);
  [v0 setName:@"objectID"];
  v1 = [MEMORY[0x1E696ABC8] expressionForEvaluatedObject];
  [v0 setExpression:v1];

  [v0 setExpressionResultType:2000];
  v4[0] = v0;
  v4[1] = @"uuid";
  v4[2] = @"importSessionID";
  v4[3] = @"startDate";
  v4[4] = @"endDate";
  v4[5] = @"cachedCount";
  v2 = [MEMORY[0x1E695DEC8] arrayWithObjects:v4 count:6];
  v3 = propertiesToFetchWithHint__array_11844;
  propertiesToFetchWithHint__array_11844 = v2;
}

@end