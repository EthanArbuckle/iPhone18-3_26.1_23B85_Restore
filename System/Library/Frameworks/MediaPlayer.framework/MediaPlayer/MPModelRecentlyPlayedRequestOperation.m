@interface MPModelRecentlyPlayedRequestOperation
- (id)_produceResponseWithRecentlyPlayedArray:(id)a3 completion:(id)a4;
- (id)configurationForLoadingModelDataWithStoreURLBag:(id)a3 error:(id *)a4;
- (id)recentlyPlayedURLWithStoreURLBag:(id)a3;
- (void)produceResponseWithLoadedOutput:(id)a3 completion:(id)a4;
@end

@implementation MPModelRecentlyPlayedRequestOperation

- (id)recentlyPlayedURLWithStoreURLBag:(id)a3
{
  v3 = a3;
  v4 = MusicURLComponentsWithURLBag(v3, 0);
  [v4 setPath:@"/v1/me/recent/played"];
  v5 = [v3 stringForBagKey:*MEMORY[0x1E69E4300]];

  if (v5)
  {
    v6 = [MEMORY[0x1E696AF60] queryItemWithName:@"l" value:v5];
    v7 = [v4 queryItems];
    v8 = [v7 mutableCopy];
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

- (id)_produceResponseWithRecentlyPlayedArray:(id)a3 completion:(id)a4
{
  v5 = a3;
  v6 = objc_alloc_init(MPMutableSectionedCollection);
  v7 = objc_alloc_init(MPMutableSectionedCollection);
  v8 = [(MPStoreModelRequestOperation *)self request];
  v9 = [v8 sectionProperties];
  v10 = [v8 itemProperties];
  v11 = [[MPModelForYouRecommendationMusicKitGroupBuilder alloc] initWithRequestedGroupPropertySet:v9 requestedItemPropertySet:v10 storeItemMetadataResults:0 flatSectionedItems:v7 storeURLBag:self->_storeURLBag isListenNow:0];
  if ([v5 count])
  {
    v12 = [(MPAsyncOperation *)self userIdentity];
    v13 = [(MPModelForYouRecommendationMusicKitGroupBuilder *)v11 modelObjectForRecentlyPlayedArray:v5 userIdentity:v12];

    [(MPMutableSectionedCollection *)v6 appendSection:v13];
  }

  v14 = [MPModelRecentlyPlayedResponse alloc];
  v15 = [(MPStoreModelRequestOperation *)self request];
  v16 = [(MPModelResponse *)v14 initWithRequest:v15];

  [(MPModelResponse *)v16 setResults:v6];

  return v16;
}

- (void)produceResponseWithLoadedOutput:(id)a3 completion:(id)a4
{
  v9 = a3;
  v6 = a4;
  if (_NSIsNSDictionary())
  {
    v7 = [v9 objectForKey:@"data"];
    if (_NSIsNSArray())
    {
      v8 = [(MPModelRecentlyPlayedRequestOperation *)self _produceResponseWithRecentlyPlayedArray:v7 completion:v6];

      if (v8)
      {
        v6[2](v6, v8, 0);
        goto LABEL_7;
      }
    }

    else
    {
    }
  }

  v8 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E69E4198] code:-7102 userInfo:0];
  (v6)[2](v6, 0, v8);
LABEL_7:
}

- (id)configurationForLoadingModelDataWithStoreURLBag:(id)a3 error:(id *)a4
{
  objc_storeStrong(&self->_storeURLBag, a3);
  v6 = a3;
  v7 = [(MPModelRecentlyPlayedRequestOperation *)self recentlyPlayedURLWithStoreURLBag:v6];
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