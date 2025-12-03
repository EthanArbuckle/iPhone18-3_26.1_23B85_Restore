@interface LPFetcherARAssetResponse
+ (id)arAssetPropertiesForFetcher:(id)fetcher;
+ (id)responseForFetcher:(id)fetcher withData:(id)data MIMEType:(id)type;
- (LPFetcherARAssetResponse)initWithARAsset:(id)asset fetcher:(id)fetcher;
@end

@implementation LPFetcherARAssetResponse

+ (id)arAssetPropertiesForFetcher:(id)fetcher
{
  v3 = objc_alloc_init(LPARAssetProperties);

  return v3;
}

+ (id)responseForFetcher:(id)fetcher withData:(id)data MIMEType:(id)type
{
  fetcherCopy = fetcher;
  dataCopy = data;
  typeCopy = type;
  if ([dataCopy length])
  {
    v11 = [LPARAsset alloc];
    v12 = [self arAssetPropertiesForFetcher:fetcherCopy];
    v13 = [(LPARAsset *)v11 initWithData:dataCopy MIMEType:typeCopy properties:v12];

    if (v13)
    {
      v14 = [[LPFetcherARAssetResponse alloc] initWithARAsset:v13 fetcher:fetcherCopy];
    }

    else
    {
      v14 = 0;
    }
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

- (LPFetcherARAssetResponse)initWithARAsset:(id)asset fetcher:(id)fetcher
{
  assetCopy = asset;
  v12.receiver = self;
  v12.super_class = LPFetcherARAssetResponse;
  v8 = [(LPFetcherResponse *)&v12 initWithState:2 fetcher:fetcher];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_arAsset, asset);
    v10 = v9;
  }

  return v9;
}

@end