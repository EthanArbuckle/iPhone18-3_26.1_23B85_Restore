@interface PHKeyword
+ (id)entityKeyMap;
+ (id)fetchKeywordsForAsset:(id)asset options:(id)options;
+ (id)fetchKeywordsWithLocalIdentifiers:(id)identifiers options:(id)options;
+ (id)fetchKeywordsWithTitles:(id)titles options:(id)options;
+ (id)localIdentifierWithUUID:(id)d;
+ (id)propertiesToFetchWithHint:(unint64_t)hint;
- (PHKeyword)initWithFetchDictionary:(id)dictionary propertyHint:(unint64_t)hint photoLibrary:(id)library;
- (id)description;
@end

@implementation PHKeyword

- (id)description
{
  v6.receiver = self;
  v6.super_class = PHKeyword;
  v3 = [(PHObject *)&v6 description];
  v4 = [v3 stringByAppendingFormat:@" title=%@, shortcut=%@", self->_title, self->_shortcut];

  return v4;
}

- (PHKeyword)initWithFetchDictionary:(id)dictionary propertyHint:(unint64_t)hint photoLibrary:(id)library
{
  dictionaryCopy = dictionary;
  v15.receiver = self;
  v15.super_class = PHKeyword;
  v9 = [(PHObject *)&v15 initWithFetchDictionary:dictionaryCopy propertyHint:hint photoLibrary:library];
  if (v9)
  {
    v10 = [dictionaryCopy objectForKeyedSubscript:@"title"];
    title = v9->_title;
    v9->_title = v10;

    v12 = [dictionaryCopy objectForKeyedSubscript:@"shortcut"];
    shortcut = v9->_shortcut;
    v9->_shortcut = v12;
  }

  return v9;
}

+ (id)fetchKeywordsForAsset:(id)asset options:(id)options
{
  assetCopy = asset;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __43__PHKeyword_fetchKeywordsForAsset_options___block_invoke;
  v9[3] = &unk_1E75AB0E0;
  v10 = assetCopy;
  v6 = assetCopy;
  v7 = [PHObject authorizationAwareFetchResultWithOptions:options fetchBlock:v9];

  return v7;
}

id __43__PHKeyword_fetchKeywordsForAsset_options___block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = [PHQuery queryForKeywordsForAsset:*(a1 + 32) options:a2];
  v3 = [v2 executeQuery];

  return v3;
}

+ (id)fetchKeywordsWithTitles:(id)titles options:(id)options
{
  titlesCopy = titles;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __45__PHKeyword_fetchKeywordsWithTitles_options___block_invoke;
  v9[3] = &unk_1E75AB0E0;
  v10 = titlesCopy;
  v6 = titlesCopy;
  v7 = [PHObject authorizationAwareFetchResultWithOptions:options fetchBlock:v9];

  return v7;
}

id __45__PHKeyword_fetchKeywordsWithTitles_options___block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = [PHQuery queryForKeywordsWithTitles:*(a1 + 32) options:a2];
  v3 = [v2 executeQuery];

  return v3;
}

+ (id)fetchKeywordsWithLocalIdentifiers:(id)identifiers options:(id)options
{
  identifiersCopy = identifiers;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __55__PHKeyword_fetchKeywordsWithLocalIdentifiers_options___block_invoke;
  v9[3] = &unk_1E75AB0E0;
  v10 = identifiersCopy;
  v6 = identifiersCopy;
  v7 = [PHObject authorizationAwareFetchResultWithOptions:options fetchBlock:v9];

  return v7;
}

id __55__PHKeyword_fetchKeywordsWithLocalIdentifiers_options___block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = [PHQuery queryForKeywordsWithLocalIdentifiers:*(a1 + 32) options:a2];
  v3 = [v2 executeQuery];

  return v3;
}

id __38__PHKeyword_fetchKeywordsWithOptions___block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = [PHQuery queryForKeywordsWithOptions:a2];
  v3 = [v2 executeQuery];

  return v3;
}

+ (id)localIdentifierWithUUID:(id)d
{
  v4 = MEMORY[0x1E696AEC0];
  dCopy = d;
  identifierCode = [self identifierCode];
  v7 = [v4 stringWithFormat:@"%@/L0/%@", dCopy, identifierCode];

  return v7;
}

+ (id)entityKeyMap
{
  pl_dispatch_once();
  v2 = entityKeyMap_pl_once_object_16_47324;

  return v2;
}

void __25__PHKeyword_entityKeyMap__block_invoke()
{
  v11[3] = *MEMORY[0x1E69E9840];
  v0 = [PHEntityKeyMap alloc];
  v9 = @"uuid";
  v10[0] = @"uuid";
  v1 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v9 count:1];
  v11[0] = v1;
  v10[1] = @"title";
  v8 = @"title";
  v2 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v8 count:1];
  v11[1] = v2;
  v10[2] = @"shortcut";
  v7 = @"shortcut";
  v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v7 count:1];
  v11[2] = v3;
  v4 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v11 forKeys:v10 count:3];
  v5 = [(PHEntityKeyMap *)v0 initWithPropertyKeysByEntityKey:v4];
  v6 = entityKeyMap_pl_once_object_16_47324;
  entityKeyMap_pl_once_object_16_47324 = v5;
}

+ (id)propertiesToFetchWithHint:(unint64_t)hint
{
  pl_dispatch_once();
  v3 = propertiesToFetchWithHint__pl_once_object_15_47337;

  return v3;
}

void __39__PHKeyword_propertiesToFetchWithHint___block_invoke()
{
  v4[4] = *MEMORY[0x1E69E9840];
  v0 = [MEMORY[0x1E69BE570] objectIDDescription];
  v4[0] = v0;
  v4[1] = @"uuid";
  v4[2] = @"title";
  v4[3] = @"shortcut";
  v1 = [MEMORY[0x1E695DEC8] arrayWithObjects:v4 count:4];
  v2 = [v1 copy];
  v3 = propertiesToFetchWithHint__pl_once_object_15_47337;
  propertiesToFetchWithHint__pl_once_object_15_47337 = v2;
}

@end