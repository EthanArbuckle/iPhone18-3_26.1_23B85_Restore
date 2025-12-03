@interface LPFetcherVideoResponse
+ (id)videoPropertiesForFetcher:(id)fetcher;
- (LPFetcherVideoResponse)initWithVideo:(id)video fetcher:(id)fetcher;
@end

@implementation LPFetcherVideoResponse

+ (id)videoPropertiesForFetcher:(id)fetcher
{
  v3 = objc_alloc_init(LPVideoProperties);

  return v3;
}

- (LPFetcherVideoResponse)initWithVideo:(id)video fetcher:(id)fetcher
{
  videoCopy = video;
  v12.receiver = self;
  v12.super_class = LPFetcherVideoResponse;
  v8 = [(LPFetcherResponse *)&v12 initWithState:2 fetcher:fetcher];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_video, video);
    v10 = v9;
  }

  return v9;
}

@end