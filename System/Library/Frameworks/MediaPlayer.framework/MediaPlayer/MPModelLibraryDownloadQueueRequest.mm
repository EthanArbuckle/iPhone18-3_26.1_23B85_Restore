@interface MPModelLibraryDownloadQueueRequest
- (id)newOperationWithResponseHandler:(id)a3;
@end

@implementation MPModelLibraryDownloadQueueRequest

- (id)newOperationWithResponseHandler:(id)a3
{
  v4 = a3;
  v5 = MEMORY[0x1E696AAE0];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __70__MPModelLibraryDownloadQueueRequest_newOperationWithResponseHandler___block_invoke;
  v9[3] = &unk_1E76824C8;
  v9[4] = self;
  v10 = v4;
  v6 = v4;
  v7 = [v5 blockOperationWithBlock:v9];

  return v7;
}

void __70__MPModelLibraryDownloadQueueRequest_newOperationWithResponseHandler___block_invoke(uint64_t a1)
{
  v4 = [[_MPModelLibraryDownloadQueueDataSource alloc] initWithRequest:*(a1 + 32)];
  v2 = [[MPLazySectionedCollection alloc] initWithDataSource:v4];
  v3 = [[MPModelLibraryDownloadQueueResponse alloc] initWithRequest:*(a1 + 32)];
  [(MPModelResponse *)v3 setResults:v2];
  (*(*(a1 + 40) + 16))();
}

@end