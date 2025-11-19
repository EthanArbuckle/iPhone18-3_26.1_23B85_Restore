@interface LPFetcherVideoResponse
+ (id)videoPropertiesForFetcher:(id)a3;
- (LPFetcherVideoResponse)initWithVideo:(id)a3 fetcher:(id)a4;
@end

@implementation LPFetcherVideoResponse

+ (id)videoPropertiesForFetcher:(id)a3
{
  v3 = objc_alloc_init(LPVideoProperties);

  return v3;
}

- (LPFetcherVideoResponse)initWithVideo:(id)a3 fetcher:(id)a4
{
  v7 = a3;
  v12.receiver = self;
  v12.super_class = LPFetcherVideoResponse;
  v8 = [(LPFetcherResponse *)&v12 initWithState:2 fetcher:a4];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_video, a3);
    v10 = v9;
  }

  return v9;
}

@end