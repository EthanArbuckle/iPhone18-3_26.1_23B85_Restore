@interface PHSearchEntity
+ (id)entityKeyMap;
- (PHSearchEntity)initWithNodeContainer:(id)container photoLibrary:(id)library;
@end

@implementation PHSearchEntity

- (PHSearchEntity)initWithNodeContainer:(id)container photoLibrary:(id)library
{
  v23[3] = *MEMORY[0x1E69E9840];
  containerCopy = container;
  v23[0] = MEMORY[0x1E695E110];
  v22[0] = @"deleted";
  v22[1] = @"uuid";
  libraryCopy = library;
  uuid = [containerCopy uuid];
  v23[1] = uuid;
  v22[2] = @"objectID";
  sourceNode = [containerCopy sourceNode];
  objectID = [sourceNode objectID];
  v23[2] = objectID;
  v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v23 forKeys:v22 count:3];

  v21.receiver = self;
  v21.super_class = PHSearchEntity;
  v12 = [(PHObject *)&v21 initWithFetchDictionary:v11 propertyHint:2 photoLibrary:libraryCopy];

  if (v12)
  {
    label = [containerCopy label];
    label = v12->_label;
    v12->_label = label;

    identifier = [containerCopy identifier];
    searchEntityIdentifier = v12->_searchEntityIdentifier;
    v12->_searchEntityIdentifier = identifier;

    v12->_type = [containerCopy type];
    [containerCopy rankingScore];
    v12->_rankingScore = v17;
    synonyms = [containerCopy synonyms];
    synonyms = v12->_synonyms;
    v12->_synonyms = synonyms;
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