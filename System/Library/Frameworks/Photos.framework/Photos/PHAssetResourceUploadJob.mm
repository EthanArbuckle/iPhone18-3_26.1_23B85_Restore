@interface PHAssetResourceUploadJob
+ (id)entityKeyMap;
+ (id)fetchAssetResourceUploadJobsForConfiguration:(id)a3 options:(id)a4;
+ (id)fetchAssetResourceUploadJobsWithOptions:(id)a3;
+ (id)fetchJobsWithAction:(int64_t)a3 options:(id)a4;
+ (id)propertiesToFetchWithHint:(unint64_t)a3;
+ (id)transformValueExpression:(id)a3 forKeyPath:(id)a4;
- (PHAssetResourceUploadJob)initWithFetchDictionary:(id)a3 propertyHint:(unint64_t)a4 photoLibrary:(id)a5;
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

- (PHAssetResourceUploadJob)initWithFetchDictionary:(id)a3 propertyHint:(unint64_t)a4 photoLibrary:(id)a5
{
  v8 = a3;
  v19.receiver = self;
  v19.super_class = PHAssetResourceUploadJob;
  v9 = [(PHObject *)&v19 initWithFetchDictionary:v8 propertyHint:a4 photoLibrary:a5];
  if (v9)
  {
    v10 = [v8 objectForKeyedSubscript:@"request.urlRequestData"];
    v11 = [MEMORY[0x1E69BE280] urlRequestForData:v10];
    destination = v9->_destination;
    v9->_destination = v11;

    v13 = [v8 objectForKeyedSubscript:@"state"];
    v9->_state = [v13 unsignedIntegerValue];

    v14 = [v8 objectForKeyedSubscript:@"clientStatus"];
    v9->_clientStatus = [v14 unsignedIntegerValue];

    v15 = [v8 objectForKeyedSubscript:@"lastModifiedDate"];
    lastModifiedDate = v9->_lastModifiedDate;
    v9->_lastModifiedDate = v15;

    v17 = [v8 objectForKeyedSubscript:@"attemptCount"];
    v9->_attemptCount = [v17 unsignedIntValue];
  }

  return v9;
}

+ (id)fetchJobsWithAction:(int64_t)a3 options:(id)a4
{
  v5 = a4;
  v6 = objc_opt_new();
  v7 = [v5 photoLibrary];
  [v6 setPhotoLibrary:v7];

  v8 = [PHAssetResourceUploadJobConfiguration fetchAssetResourceUploadJobConfigurationsWithOptions:v6];
  v9 = [v8 firstObject];

  if (a3 == 2)
  {
    v10 = [PHQuery queryForRetryableAssetResourceUploadJobsWithConfiguration:v9 options:v5];
    goto LABEL_5;
  }

  if (a3 == 1)
  {
    v10 = [PHQuery queryForAcknowledgeableAssetResourceUploadJobsWithConfiguration:v9 options:v5];
LABEL_5:
    v11 = v10;
    goto LABEL_7;
  }

  v11 = 0;
LABEL_7:
  v12 = [v11 executeQuery];

  return v12;
}

+ (id)fetchAssetResourceUploadJobsForConfiguration:(id)a3 options:(id)a4
{
  v5 = a3;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __81__PHAssetResourceUploadJob_fetchAssetResourceUploadJobsForConfiguration_options___block_invoke;
  v9[3] = &unk_1E75AB0E0;
  v10 = v5;
  v6 = v5;
  v7 = [PHObject authorizationAwareFetchResultWithOptions:a4 fetchBlock:v9];

  return v7;
}

id __81__PHAssetResourceUploadJob_fetchAssetResourceUploadJobsForConfiguration_options___block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = [PHQuery queryForAssetResourceUploadJobsWithConfiguration:*(a1 + 32) options:a2];
  v3 = [v2 executeQuery];

  return v3;
}

+ (id)fetchAssetResourceUploadJobsWithOptions:(id)a3
{
  v4 = [a3 copy];
  v5 = [PHAssetResourceUploadJobConfiguration fetchAssetResourceUploadJobConfigurationsWithOptions:v4];
  v6 = [v5 firstObject];

  v7 = [a1 fetchAssetResourceUploadJobsForConfiguration:v6 options:v4];

  return v7;
}

+ (id)transformValueExpression:(id)a3 forKeyPath:(id)a4
{
  v18 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = MEMORY[0x1E695DFD8];
  v13 = @"destination";
  v14 = @"state";
  v15 = @"clientStatus";
  v16 = @"lastModifiedDate";
  v17 = @"attemptCount";
  v7 = MEMORY[0x1E695DEC8];
  v8 = a4;
  v9 = [v7 arrayWithObjects:&v13 count:5];
  v10 = [v6 setWithArray:{v9, v13, v14, v15, v16, v17, v18}];

  LODWORD(v6) = [v10 containsObject:v8];
  if (v6)
  {
    v11 = v5;
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

+ (id)propertiesToFetchWithHint:(unint64_t)a3
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