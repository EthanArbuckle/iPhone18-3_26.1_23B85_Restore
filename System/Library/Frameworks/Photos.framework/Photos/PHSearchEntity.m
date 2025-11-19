@interface PHSearchEntity
+ (id)entityKeyMap;
- (PHSearchEntity)initWithNodeContainer:(id)a3 photoLibrary:(id)a4;
@end

@implementation PHSearchEntity

- (PHSearchEntity)initWithNodeContainer:(id)a3 photoLibrary:(id)a4
{
  v23[3] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v23[0] = MEMORY[0x1E695E110];
  v22[0] = @"deleted";
  v22[1] = @"uuid";
  v7 = a4;
  v8 = [v6 uuid];
  v23[1] = v8;
  v22[2] = @"objectID";
  v9 = [v6 sourceNode];
  v10 = [v9 objectID];
  v23[2] = v10;
  v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v23 forKeys:v22 count:3];

  v21.receiver = self;
  v21.super_class = PHSearchEntity;
  v12 = [(PHObject *)&v21 initWithFetchDictionary:v11 propertyHint:2 photoLibrary:v7];

  if (v12)
  {
    v13 = [v6 label];
    label = v12->_label;
    v12->_label = v13;

    v15 = [v6 identifier];
    searchEntityIdentifier = v12->_searchEntityIdentifier;
    v12->_searchEntityIdentifier = v15;

    v12->_type = [v6 type];
    [v6 rankingScore];
    v12->_rankingScore = v17;
    v18 = [v6 synonyms];
    synonyms = v12->_synonyms;
    v12->_synonyms = v18;
  }

  return v12;
}

+ (id)entityKeyMap
{
  pl_dispatch_once();
  v2 = entityKeyMap_pl_once_object_15_4673;

  return v2;
}

void __30__PHSearchEntity_entityKeyMap__block_invoke()
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
  v5 = entityKeyMap_pl_once_object_15_4673;
  entityKeyMap_pl_once_object_15_4673 = v4;
}

PHFetchResult *__49__PHSearchEntity_fetchSearchEntitiesWithOptions___block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = [PHGraphQuery queryForSearchEntitiesWithOptions:a2];
  v3 = v2;
  if (v2)
  {
    v4 = [v2 executeQuery];
  }

  else
  {
    v4 = objc_alloc_init(PHFetchResult);
  }

  v5 = v4;

  return v5;
}

@end