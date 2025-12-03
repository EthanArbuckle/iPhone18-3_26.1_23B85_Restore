@interface PHAssetResourceUploadJob
+ (id)entityKeyMap;
+ (id)fetchAssetResourceUploadJobsForConfiguration:(id)configuration options:(id)options;
+ (id)fetchAssetResourceUploadJobsWithOptions:(id)options;
+ (id)fetchJobsWithAction:(int64_t)action options:(id)options;
+ (id)propertiesToFetchWithHint:(unint64_t)hint;
+ (id)transformValueExpression:(id)expression forKeyPath:(id)path;
- (PHAssetResourceUploadJob)initWithFetchDictionary:(id)dictionary propertyHint:(unint64_t)hint photoLibrary:(id)library;
- (id)description;
@end

@implementation PHAssetResourceUploadJob

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v7.receiver = self;
  v7.super_class = PHAssetResourceUploadJob;
  v4 = [(PHObject *)&v7 description];
  v5 = [v3 stringWithFormat:@"%@, destination: %@ state: %ld clientStatus: %ld lastModifiedDate: %@ attemptCount: %hu", v4, self->_destination, self->_state, self->_clientStatus, self->_lastModifiedDate, self->_attemptCount];

  return v5;
}

- (PHAssetResourceUploadJob)initWithFetchDictionary:(id)dictionary propertyHint:(unint64_t)hint photoLibrary:(id)library
{
  dictionaryCopy = dictionary;
  v19.receiver = self;
  v19.super_class = PHAssetResourceUploadJob;
  v9 = [(PHObject *)&v19 initWithFetchDictionary:dictionaryCopy propertyHint:hint photoLibrary:library];
  if (v9)
  {
    v10 = [dictionaryCopy objectForKeyedSubscript:@"request.urlRequestData"];
    v11 = [MEMORY[0x1E69BE280] urlRequestForData:v10];
    destination = v9->_destination;
    v9->_destination = v11;

    v13 = [dictionaryCopy objectForKeyedSubscript:@"state"];
    v9->_state = [v13 unsignedIntegerValue];

    v14 = [dictionaryCopy objectForKeyedSubscript:@"clientStatus"];
    v9->_clientStatus = [v14 unsignedIntegerValue];

    v15 = [dictionaryCopy objectForKeyedSubscript:@"lastModifiedDate"];
    lastModifiedDate = v9->_lastModifiedDate;
    v9->_lastModifiedDate = v15;

    v17 = [dictionaryCopy objectForKeyedSubscript:@"attemptCount"];
    v9->_attemptCount = [v17 unsignedIntValue];
  }

  return v9;
}

+ (id)fetchJobsWithAction:(int64_t)action options:(id)options
{
  optionsCopy = options;
  v6 = objc_opt_new();
  photoLibrary = [optionsCopy photoLibrary];
  [v6 setPhotoLibrary:photoLibrary];

  v8 = [PHAssetResourceUploadJobConfiguration fetchAssetResourceUploadJobConfigurationsWithOptions:v6];
  firstObject = [v8 firstObject];

  if (action == 2)
  {
    v10 = [PHQuery queryForRetryableAssetResourceUploadJobsWithConfiguration:firstObject options:optionsCopy];
    goto LABEL_5;
  }

  if (action == 1)
  {
    v10 = [PHQuery queryForAcknowledgeableAssetResourceUploadJobsWithConfiguration:firstObject options:optionsCopy];
LABEL_5:
    v11 = v10;
    goto LABEL_7;
  }

  v11 = 0;
LABEL_7:
  executeQuery = [v11 executeQuery];

  return executeQuery;
}

+ (id)fetchAssetResourceUploadJobsForConfiguration:(id)configuration options:(id)options
{
  configurationCopy = configuration;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __81__PHAssetResourceUploadJob_fetchAssetResourceUploadJobsForConfiguration_options___block_invoke;
  v9[3] = &unk_1E75AB0E0;
  v10 = configurationCopy;
  v6 = configurationCopy;
  v7 = [PHObject authorizationAwareFetchResultWithOptions:options fetchBlock:v9];

  return v7;
}

id __81__PHAssetResourceUploadJob_fetchAssetResourceUploadJobsForConfiguration_options___block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = [PHQuery queryForAssetResourceUploadJobsWithConfiguration:*(a1 + 32) options:a2];
  v3 = [v2 executeQuery];

  return v3;
}

+ (id)fetchAssetResourceUploadJobsWithOptions:(id)options
{
  v4 = [options copy];
  v5 = [PHAssetResourceUploadJobConfiguration fetchAssetResourceUploadJobConfigurationsWithOptions:v4];
  firstObject = [v5 firstObject];

  v7 = [self fetchAssetResourceUploadJobsForConfiguration:firstObject options:v4];

  return v7;
}

+ (id)transformValueExpression:(id)expression forKeyPath:(id)path
{
  v18 = *MEMORY[0x1E69E9840];
  expressionCopy = expression;
  v6 = MEMORY[0x1E695DFD8];
  v13 = @"destination";
  v14 = @"state";
  v15 = @"clientStatus";
  v16 = @"lastModifiedDate";
  v17 = @"attemptCount";
  v7 = MEMORY[0x1E695DEC8];
  pathCopy = path;
  v9 = [v7 arrayWithObjects:&v13 count:5];
  v10 = [v6 setWithArray:{v9, v13, v14, v15, v16, v17, v18}];

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

+ (id)entityKeyMap
{
  pl_dispatch_once();
  v2 = entityKeyMap_pl_once_object_16_34607;

  return v2;
}

void __40__PHAssetResourceUploadJob_entityKeyMap__block_invoke()
{
  v17[6] = *MEMORY[0x1E69E9840];
  v0 = [PHEntityKeyMap alloc];
  v15 = @"uuid";
  v16[0] = @"uuid";
  v1 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v15 count:1];
  v17[0] = v1;
  v16[1] = @"request.urlRequestData";
  v14 = @"destination";
  v2 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v14 count:1];
  v17[1] = v2;
  v16[2] = @"state";
  v13 = @"state";
  v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v13 count:1];
  v17[2] = v3;
  v16[3] = @"clientStatus";
  v12 = @"clientStatus";
  v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v12 count:1];
  v17[3] = v4;
  v16[4] = @"lastModifiedDate";
  v11 = @"lastModifiedDate";
  v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v11 count:1];
  v17[4] = v5;
  v16[5] = @"attemptCount";
  v10 = @"attemptCount";
  v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v10 count:1];
  v17[5] = v6;
  v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v17 forKeys:v16 count:6];
  v8 = [(PHEntityKeyMap *)v0 initWithPropertyKeysByEntityKey:v7];
  v9 = entityKeyMap_pl_once_object_16_34607;
  entityKeyMap_pl_once_object_16_34607 = v8;
}

+ (id)propertiesToFetchWithHint:(unint64_t)hint
{
  pl_dispatch_once();
  v3 = propertiesToFetchWithHint__pl_once_object_15_34621;

  return v3;
}

void __54__PHAssetResourceUploadJob_propertiesToFetchWithHint___block_invoke()
{
  v4[9] = *MEMORY[0x1E69E9840];
  v0 = [MEMORY[0x1E69BE570] objectIDDescription];
  v4[0] = v0;
  v4[1] = @"uuid";
  v4[2] = @"request.urlRequestData";
  v4[3] = @"state";
  v4[4] = @"clientStatus";
  v4[5] = @"lastModifiedDate";
  v4[6] = @"attemptCount";
  v4[7] = @"assetResource";
  v4[8] = @"configuration";
  v1 = [MEMORY[0x1E695DEC8] arrayWithObjects:v4 count:9];
  v2 = [v1 copy];
  v3 = propertiesToFetchWithHint__pl_once_object_15_34621;
  propertiesToFetchWithHint__pl_once_object_15_34621 = v2;
}

@end