@interface MPModelRecentlyPlayedRequestOperation
- (id)_produceResponseWithRecentlyPlayedArray:(id)array completion:(id)completion;
- (id)configurationForLoadingModelDataWithStoreURLBag:(id)bag error:(id *)error;
- (id)recentlyPlayedURLWithStoreURLBag:(id)bag;
- (void)produceResponseWithLoadedOutput:(id)output completion:(id)completion;
@end

@implementation MPModelRecentlyPlayedRequestOperation

- (id)recentlyPlayedURLWithStoreURLBag:(id)bag
{
  bagCopy = bag;
  v4 = MusicURLComponentsWithURLBag(bagCopy, 0);
  [v4 setPath:@"/v1/me/recent/played"];
  v5 = [bagCopy stringForBagKey:*MEMORY[0x1E69E4300]];

  if (v5)
  {
    v6 = [MEMORY[0x1E696AF60] queryItemWithName:@"l" value:v5];
    queryItems = [v4 queryItems];
    v8 = [queryItems mutableCopy];
    v9 = v8;
    if (v8)
    {
      v10 = v8;
    }

    else
    {
      v10 = objc_alloc_init(MEMORY[0x1E695DF70]);
    }

    v11 = v10;

    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __74__MPModelRecentlyPlayedRequestOperation_recentlyPlayedURLWithStoreURLBag___block_invoke;
    v16[3] = &unk_1E767D028;
    v12 = v6;
    v17 = v12;
    v13 = [v11 indexOfObjectPassingTest:v16];
    if (v13 == 0x7FFFFFFFFFFFFFFFLL)
    {
      [v11 addObject:v12];
    }

    else
    {
      [v11 replaceObjectAtIndex:v13 withObject:v12];
    }

    [v4 setQueryItems:v11];
  }

  v14 = [v4 URL];

  return v14;
}

uint64_t __74__MPModelRecentlyPlayedRequestOperation_recentlyPlayedURLWithStoreURLBag___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 name];
  v4 = [*(a1 + 32) name];
  v5 = [v3 isEqualToString:v4];

  return v5;
}

- (id)_produceResponseWithRecentlyPlayedArray:(id)array completion:(id)completion
{
  arrayCopy = array;
  v6 = objc_alloc_init(MPMutableSectionedCollection);
  v7 = objc_alloc_init(MPMutableSectionedCollection);
  request = [(MPStoreModelRequestOperation *)self request];
  sectionProperties = [request sectionProperties];
  itemProperties = [request itemProperties];
  v11 = [[MPModelForYouRecommendationMusicKitGroupBuilder alloc] initWithRequestedGroupPropertySet:sectionProperties requestedItemPropertySet:itemProperties storeItemMetadataResults:0 flatSectionedItems:v7 storeURLBag:self->_storeURLBag isListenNow:0];
  if ([arrayCopy count])
  {
    userIdentity = [(MPAsyncOperation *)self userIdentity];
    v13 = [(MPModelForYouRecommendationMusicKitGroupBuilder *)v11 modelObjectForRecentlyPlayedArray:arrayCopy userIdentity:userIdentity];

    [(MPMutableSectionedCollection *)v6 appendSection:v13];
  }

  v14 = [MPModelRecentlyPlayedResponse alloc];
  request2 = [(MPStoreModelRequestOperation *)self request];
  v16 = [(MPModelResponse *)v14 initWithRequest:request2];

  [(MPModelResponse *)v16 setResults:v6];

  return v16;
}

- (void)produceResponseWithLoadedOutput:(id)output completion:(id)completion
{
  outputCopy = output;
  completionCopy = completion;
  if (_NSIsNSDictionary())
  {
    v7 = [outputCopy objectForKey:@"data"];
    if (_NSIsNSArray())
    {
      v8 = [(MPModelRecentlyPlayedRequestOperation *)self _produceResponseWithRecentlyPlayedArray:v7 completion:completionCopy];

      if (v8)
      {
        completionCopy[2](completionCopy, v8, 0);
        goto LABEL_7;
      }
    }

    else
    {
    }
  }

  v8 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E69E4198] code:-7102 userInfo:0];
  (completionCopy)[2](completionCopy, 0, v8);
LABEL_7:
}

- (id)configurationForLoadingModelDataWithStoreURLBag:(id)bag error:(id *)error
{
  objc_storeStrong(&self->_storeURLBag, bag);
  bagCopy = bag;
  v7 = [(MPModelRecentlyPlayedRequestOperation *)self recentlyPlayedURLWithStoreURLBag:bagCopy];
  v8 = [objc_alloc(MEMORY[0x1E696AD68]) initWithURL:v7];
  [v8 setHTTPMethod:@"GET"];
  [(MPStoreModelRequestOperation *)self remainingTimeInterval];
  [v8 setTimeoutInterval:?];
  [v8 setCachePolicy:1];
  v9 = [MPStoreModelRequestConfiguration alloc];

  v10 = [(MPStoreModelRequestConfiguration *)v9 initWithURLRequest:v8];

  return v10;
}

@end