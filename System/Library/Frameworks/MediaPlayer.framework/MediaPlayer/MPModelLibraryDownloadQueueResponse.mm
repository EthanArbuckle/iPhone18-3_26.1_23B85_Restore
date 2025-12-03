@interface MPModelLibraryDownloadQueueResponse
- (MPModelLibraryDownloadQueueResponse)initWithRequest:(id)request;
- (void)dealloc;
- (void)getChangeDetailsFromPreviousResponse:(id)response completion:(id)completion;
@end

@implementation MPModelLibraryDownloadQueueResponse

- (void)getChangeDetailsFromPreviousResponse:(id)response completion:(id)completion
{
  responseCopy = response;
  completionCopy = completion;
  if (responseCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v8 = dispatch_get_global_queue(33, 0);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __87__MPModelLibraryDownloadQueueResponse_getChangeDetailsFromPreviousResponse_completion___block_invoke;
    block[3] = &unk_1E7681568;
    v10 = responseCopy;
    selfCopy = self;
    v12 = completionCopy;
    dispatch_async(v8, block);
  }

  else
  {
    v13.receiver = self;
    v13.super_class = MPModelLibraryDownloadQueueResponse;
    [(MPModelResponse *)&v13 getChangeDetailsFromPreviousResponse:responseCopy completion:completionCopy];
  }
}

void __87__MPModelLibraryDownloadQueueResponse_getChangeDetailsFromPreviousResponse_completion___block_invoke(id *a1)
{
  v2 = a1[4];
  v3 = [v2 results];
  v4 = [a1[5] results];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __87__MPModelLibraryDownloadQueueResponse_getChangeDetailsFromPreviousResponse_completion___block_invoke_2;
  v13[3] = &unk_1E767A7E8;
  v5 = v3;
  v14 = v5;
  v15 = v4;
  v6 = v4;
  v7 = [v5 changeDetailsToSectionedCollection:v6 isEqualBlock:v13 isUpdatedBlock:&__block_literal_global_28734];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __87__MPModelLibraryDownloadQueueResponse_getChangeDetailsFromPreviousResponse_completion___block_invoke_4;
  v10[3] = &unk_1E76824C8;
  v8 = a1[6];
  v11 = v7;
  v12 = v8;
  v9 = v7;
  dispatch_async(MEMORY[0x1E69E96A0], v10);
}

uint64_t __87__MPModelLibraryDownloadQueueResponse_getChangeDetailsFromPreviousResponse_completion___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if ([v5 length] >= 2)
  {
    v8 = [*(a1 + 32) identifiersForItemAtIndexPath:v5];
    v9 = [*(a1 + 40) identifiersForItemAtIndexPath:v6];
    v7 = [v8 isEqual:v9];
  }

  else
  {
    v7 = 1;
  }

  return v7;
}

- (void)dealloc
{
  v3 = +[MPMediaDownloadManager sharedManager];
  [v3 unregisterObserver:self];

  v4.receiver = self;
  v4.super_class = MPModelLibraryDownloadQueueResponse;
  [(MPModelLibraryDownloadQueueResponse *)&v4 dealloc];
}

- (MPModelLibraryDownloadQueueResponse)initWithRequest:(id)request
{
  requestCopy = request;
  v8.receiver = self;
  v8.super_class = MPModelLibraryDownloadQueueResponse;
  v5 = [(MPModelResponse *)&v8 initWithRequest:requestCopy];
  if (v5)
  {
    v6 = +[MPMediaDownloadManager sharedManager];
    [v6 registerObserver:v5];
  }

  return v5;
}

@end