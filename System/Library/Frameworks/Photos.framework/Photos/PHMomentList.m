@interface PHMomentList
+ (id)entityKeyMap;
+ (id)transformValueExpression:(id)a3 forKeyPath:(id)a4;
- (BOOL)hasLocalizedTitle;
- (PHMomentList)initWithFetchDictionary:(id)a3 propertyHint:(unint64_t)a4 photoLibrary:(id)a5;
- (id)description;
@end

@implementation PHMomentList

- (id)description
{
  v16.receiver = self;
  v16.super_class = PHMomentList;
  v3 = [(PHCollectionList *)&v16 description];
  v4 = [MEMORY[0x1E695DEE8] currentCalendar];
  collectionListSubtype = self->super._collectionListSubtype;
  if (collectionListSubtype == 2)
  {
    v9 = [(PHCollectionList *)self startDate];
    v10 = [v4 components:4 fromDate:v9];
    v11 = [v10 year];

    v12 = [(PHCollectionList *)self endDate];
    v13 = [v4 components:4 fromDate:v12];
    v14 = [v13 year];

    v8 = [v3 stringByAppendingFormat:@" [%ld - %ld]", v11, v14];
  }

  else
  {
    if (collectionListSubtype != 1)
    {
      goto LABEL_6;
    }

    v6 = [(PHCollectionList *)self startDate];
    v7 = [(PHCollectionList *)self endDate];
    v8 = [v3 stringByAppendingFormat:@" [%@ - %@]", v6, v7];

    v3 = v6;
  }

  v3 = v8;
LABEL_6:

  return v3;
}

- (BOOL)hasLocalizedTitle
{
  if ([(NSString *)self->super._localizedTitle length])
  {
    return 1;
  }

  return [(PHMomentList *)self hasLocationInfo];
}

- (PHMomentList)initWithFetchDictionary:(id)a3 propertyHint:(unint64_t)a4 photoLibrary:(id)a5
{
  v9 = a3;
  v20.receiver = self;
  v20.super_class = PHMomentList;
  v10 = [(PHCollectionList *)&v20 initWithFetchDictionary:v9 propertyHint:a4 photoLibrary:a5];
  if (v10)
  {
    v11 = [v9 objectForKeyedSubscript:@"startDate"];
    startDate = v10->super._startDate;
    v10->super._startDate = v11;

    v13 = [v9 objectForKeyedSubscript:@"endDate"];
    endDate = v10->super._endDate;
    v10->super._endDate = v13;

    v10->super._collectionListType = 1;
    v15 = [v9 objectForKeyedSubscript:@"kind"];
    v16 = [v15 integerValue];

    if (v16 == 2)
    {
      v17 = 2;
    }

    else
    {
      if (v16 != 1)
      {
        v18 = [MEMORY[0x1E696AAA8] currentHandler];
        [v18 handleFailureInMethod:a2 object:v10 file:@"PHMomentList.m" lineNumber:94 description:@"invalid kind"];

        goto LABEL_8;
      }

      v17 = 1;
    }

    v10->super._collectionListSubtype = v17;
  }

LABEL_8:

  return v10;
}

+ (id)transformValueExpression:(id)a3 forKeyPath:(id)a4
{
  v6 = a3;
  v7 = a4;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __52__PHMomentList_transformValueExpression_forKeyPath___block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (transformValueExpression_forKeyPath__onceToken_1849 != -1)
  {
    dispatch_once(&transformValueExpression_forKeyPath__onceToken_1849, block);
  }

  if ([transformValueExpression_forKeyPath___passThroughSet_1850 containsObject:v7])
  {
    v8 = v6;
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

void __52__PHMomentList_transformValueExpression_forKeyPath___block_invoke()
{
  v4[2] = *MEMORY[0x1E69E9840];
  v0 = MEMORY[0x1E695DFD8];
  v4[0] = @"startDate";
  v4[1] = @"endDate";
  v1 = [MEMORY[0x1E695DEC8] arrayWithObjects:v4 count:2];
  v2 = [v0 setWithArray:v1];
  v3 = transformValueExpression_forKeyPath___passThroughSet_1850;
  transformValueExpression_forKeyPath___passThroughSet_1850 = v2;
}

+ (id)entityKeyMap
{
  pl_dispatch_once();
  v2 = entityKeyMap_pl_once_object_15_1854;

  return v2;
}

void __28__PHMomentList_entityKeyMap__block_invoke()
{
  v13[4] = *MEMORY[0x1E69E9840];
  v0 = [PHEntityKeyMap alloc];
  v11 = @"uuid";
  v12[0] = @"uuid";
  v1 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v11 count:1];
  v13[0] = v1;
  v12[1] = @"startDate";
  v10 = @"startDate";
  v2 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v10 count:1];
  v13[1] = v2;
  v12[2] = @"endDate";
  v9 = @"endDate";
  v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v9 count:1];
  v13[2] = v3;
  v12[3] = @"title";
  v8 = @"localizedTitle";
  v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v8 count:1];
  v13[3] = v4;
  v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v13 forKeys:v12 count:4];
  v6 = [(PHEntityKeyMap *)v0 initWithPropertyKeysByEntityKey:v5];
  v7 = entityKeyMap_pl_once_object_15_1854;
  entityKeyMap_pl_once_object_15_1854 = v6;
}

@end