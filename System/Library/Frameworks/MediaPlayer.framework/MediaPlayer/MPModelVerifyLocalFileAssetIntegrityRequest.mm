@interface MPModelVerifyLocalFileAssetIntegrityRequest
+ (id)_operationQueue;
- (MPModelVerifyLocalFileAssetIntegrityRequest)initWithFileAsset:(id)a3 sourceItemIdentifiers:(id)a4;
- (id)mediaLibraryForItemIdentifiers:(id)a3;
- (void)performWithResponseHandler:(id)a3;
@end

@implementation MPModelVerifyLocalFileAssetIntegrityRequest

- (id)mediaLibraryForItemIdentifiers:(id)a3
{
  v3 = a3;
  v4 = [v3 library];
  v5 = [v4 databaseID];
  v6 = [v5 length];

  if (!v6 || ([v3 library], v7 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v7, "databaseID"), v8 = objc_claimAutoreleasedReturnValue(), +[MPMediaLibrary mediaLibraryWithUniqueIdentifier:](MPMediaLibrary, "mediaLibraryWithUniqueIdentifier:", v8), v9 = objc_claimAutoreleasedReturnValue(), v8, v7, !v9))
  {
    v10 = [v3 personalizedStore];
    v11 = [v10 personID];
    v12 = [v11 longLongValue];

    if (v12 < 1 || (v13 = MEMORY[0x1E69E4680], v14 = MEMORY[0x1E696AD98], [v3 personalizedStore], v15 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v15, "personID"), v16 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v14, "numberWithLongLong:", objc_msgSend(v16, "longLongValue")), v17 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v13, "specificAccountWithDSID:", v17), v18 = objc_claimAutoreleasedReturnValue(), v17, v16, v15, +[MPMediaLibrary deviceMediaLibraryWithUserIdentity:](MPMediaLibrary, "deviceMediaLibraryWithUserIdentity:", v18), v9 = objc_claimAutoreleasedReturnValue(), v18, !v9))
    {
      v9 = +[MPMediaLibrary deviceMediaLibrary];
    }
  }

  return v9;
}

- (void)performWithResponseHandler:(id)a3
{
  v4 = a3;
  v5 = [(MPIdentifierSet *)self->_sourceItemIdentifiers library];
  v6 = [v5 persistentID];

  if (v6)
  {
    v7 = [(MPModelVerifyLocalFileAssetIntegrityRequest *)self mediaLibraryForItemIdentifiers:self->_sourceItemIdentifiers];
    v8 = [objc_opt_class() _operationQueue];
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __74__MPModelVerifyLocalFileAssetIntegrityRequest_performWithResponseHandler___block_invoke;
    v10[3] = &unk_1E7681358;
    v11 = v7;
    v13 = v6;
    v12 = v4;
    v9 = v7;
    [v8 addOperationWithBlock:v10];
  }

  else
  {
    (*(v4 + 2))(v4, 1, 0);
  }
}

void __74__MPModelVerifyLocalFileAssetIntegrityRequest_performWithResponseHandler___block_invoke(uint64_t a1)
{
  v3 = [*(a1 + 32) itemWithPersistentID:*(a1 + 48) verifyExistence:0];
  v2 = [v3 valueForProperty:@"verifiedIntegrity"];
  [v2 BOOLValue];

  (*(*(a1 + 40) + 16))();
}

- (MPModelVerifyLocalFileAssetIntegrityRequest)initWithFileAsset:(id)a3 sourceItemIdentifiers:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = MPModelVerifyLocalFileAssetIntegrityRequest;
  v9 = [(MPModelVerifyLocalFileAssetIntegrityRequest *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_fileAsset, a3);
    objc_storeStrong(&v10->_sourceItemIdentifiers, a4);
  }

  return v10;
}

+ (id)_operationQueue
{
  if (_operationQueue_sOnceToken != -1)
  {
    dispatch_once(&_operationQueue_sOnceToken, &__block_literal_global_29085);
  }

  v3 = _operationQueue_sOperationQueue;

  return v3;
}

uint64_t __62__MPModelVerifyLocalFileAssetIntegrityRequest__operationQueue__block_invoke()
{
  v0 = objc_alloc_init(MEMORY[0x1E696ADC8]);
  v1 = _operationQueue_sOperationQueue;
  _operationQueue_sOperationQueue = v0;

  [_operationQueue_sOperationQueue setName:@"com.apple.MediaPlayer.MPModelVerifyLocalFileAssetIntegrityRequest.operationQueue"];
  [_operationQueue_sOperationQueue setQualityOfService:25];
  v2 = _operationQueue_sOperationQueue;

  return [v2 setMaxConcurrentOperationCount:2];
}

@end