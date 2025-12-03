@interface PHAssetResourceUploadJobConfiguration
+ (id)entityKeyMap;
+ (id)fetchAssetResourceUploadJobConfigurationWithLocalIdentifiers:(id)identifiers options:(id)options;
+ (id)propertiesToFetchWithHint:(unint64_t)hint;
+ (id)transformValueExpression:(id)expression forKeyPath:(id)path;
- (PHAssetResourceUploadJobConfiguration)initWithFetchDictionary:(id)dictionary propertyHint:(unint64_t)hint photoLibrary:(id)library;
- (id)description;
@end

@implementation PHAssetResourceUploadJobConfiguration

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v7.receiver = self;
  v7.super_class = PHAssetResourceUploadJobConfiguration;
  v4 = [(PHObject *)&v7 description];
  v5 = [v3 stringWithFormat:@"%@, state: %hu", v4, self->_state];

  return v5;
}

- (PHAssetResourceUploadJobConfiguration)initWithFetchDictionary:(id)dictionary propertyHint:(unint64_t)hint photoLibrary:(id)library
{
  dictionaryCopy = dictionary;
  v14.receiver = self;
  v14.super_class = PHAssetResourceUploadJobConfiguration;
  v9 = [(PHObject *)&v14 initWithFetchDictionary:dictionaryCopy propertyHint:hint photoLibrary:library];
  if (v9)
  {
    v10 = [dictionaryCopy objectForKeyedSubscript:@"state"];
    v9->_state = [v10 unsignedIntegerValue];

    v11 = [dictionaryCopy objectForKeyedSubscript:@"bundleIdentifier"];
    bundleIdentifier = v9->_bundleIdentifier;
    v9->_bundleIdentifier = v11;
  }

  return v9;
}

+ (id)transformValueExpression:(id)expression forKeyPath:(id)path
{
  v14 = *MEMORY[0x1E69E9840];
  expressionCopy = expression;
  v6 = MEMORY[0x1E695DFD8];
  v13 = @"state";
  v7 = MEMORY[0x1E695DEC8];
  pathCopy = path;
  v9 = [v7 arrayWithObjects:&v13 count:1];
  v10 = [v6 setWithArray:{v9, v13, v14}];

  LODWORD(v6) = [v10 containsObject:pathCopy];
  if (v6)
  {
    v11 = expressionCopy;
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

+ (id)fetchAssetResourceUploadJobConfigurationWithLocalIdentifiers:(id)identifiers options:(id)options
{
  identifiersCopy = identifiers;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __110__PHAssetResourceUploadJobConfiguration_fetchAssetResourceUploadJobConfigurationWithLocalIdentifiers_options___block_invoke;
  v9[3] = &unk_1E75AB0E0;
  v10 = identifiersCopy;
  v6 = identifiersCopy;
  v7 = [PHObject authorizationAwareFetchResultWithOptions:options fetchBlock:v9];

  return v7;
}

id __110__PHAssetResourceUploadJobConfiguration_fetchAssetResourceUploadJobConfigurationWithLocalIdentifiers_options___block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = [PHQuery queryForAssetResourceUploadJobConfigurationsWithLocalIdentifiers:*(a1 + 32) options:a2];
  v3 = [v2 executeQuery];

  return v3;
}

id __94__PHAssetResourceUploadJobConfiguration_fetchAssetResourceUploadJobConfigurationsWithOptions___block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = [PHQuery queryForAssetResourceUploadJobConfigurationsWithOptions:a2];
  v3 = [v2 executeQuery];

  return v3;
}

+ (id)entityKeyMap
{
  pl_dispatch_once();
  v2 = entityKeyMap_pl_once_object_16_40488;

  return v2;
}

void __53__PHAssetResourceUploadJobConfiguration_entityKeyMap__block_invoke()
{
  v9[2] = *MEMORY[0x1E69E9840];
  v0 = [PHEntityKeyMap alloc];
  v7 = @"uuid";
  v8[0] = @"uuid";
  v1 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v7 count:1];
  v8[1] = @"state";
  v9[0] = v1;
  v6 = @"state";
  v2 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v6 count:1];
  v9[1] = v2;
  v3 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v9 forKeys:v8 count:2];
  v4 = [(PHEntityKeyMap *)v0 initWithPropertyKeysByEntityKey:v3];
  v5 = entityKeyMap_pl_once_object_16_40488;
  entityKeyMap_pl_once_object_16_40488 = v4;
}

+ (id)propertiesToFetchWithHint:(unint64_t)hint
{
  pl_dispatch_once();
  v3 = propertiesToFetchWithHint__pl_once_object_15_40502;

  return v3;
}

void __67__PHAssetResourceUploadJobConfiguration_propertiesToFetchWithHint___block_invoke()
{
  v4[4] = *MEMORY[0x1E69E9840];
  v0 = [MEMORY[0x1E69BE570] objectIDDescription];
  v4[0] = v0;
  v4[1] = @"uuid";
  v4[2] = @"bundleIdentifier";
  v4[3] = @"state";
  v1 = [MEMORY[0x1E695DEC8] arrayWithObjects:v4 count:4];
  v2 = [v1 copy];
  v3 = propertiesToFetchWithHint__pl_once_object_15_40502;
  propertiesToFetchWithHint__pl_once_object_15_40502 = v2;
}

@end