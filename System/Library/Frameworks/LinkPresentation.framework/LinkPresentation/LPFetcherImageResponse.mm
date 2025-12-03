@interface LPFetcherImageResponse
+ (id)imagePropertiesForFetcher:(id)fetcher;
+ (id)responseForFetcher:(id)fetcher withData:(id)data MIMEType:(id)type;
+ (id)responseForFetcher:(id)fetcher withImage:(id)image;
- (LPFetcherImageResponse)initWithImage:(id)image fetcher:(id)fetcher;
@end

@implementation LPFetcherImageResponse

+ (id)imagePropertiesForFetcher:(id)fetcher
{
  v3 = objc_alloc_init(LPImageProperties);

  return v3;
}

+ (id)responseForFetcher:(id)fetcher withImage:(id)image
{
  fetcherCopy = fetcher;
  imageCopy = image;
  if (imageCopy)
  {
    v8 = [LPImage alloc];
    v9 = [self imagePropertiesForFetcher:fetcherCopy];
    v10 = [(LPImage *)v8 initWithPlatformImage:imageCopy properties:v9];

    if (v10 && ![(LPImage *)v10 _isImperceptible])
    {
      v11 = [[LPFetcherImageResponse alloc] initWithImage:v10 fetcher:fetcherCopy];
    }

    else
    {
      v11 = 0;
    }
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

+ (id)responseForFetcher:(id)fetcher withData:(id)data MIMEType:(id)type
{
  fetcherCopy = fetcher;
  dataCopy = data;
  typeCopy = type;
  if ([dataCopy length])
  {
    v11 = [LPImage alloc];
    v12 = [self imagePropertiesForFetcher:fetcherCopy];
    v13 = [(LPImage *)v11 initWithData:dataCopy MIMEType:typeCopy properties:v12];

    if (v13 && ![(LPImage *)v13 _isImperceptible])
    {
      v14 = [[LPFetcherImageResponse alloc] initWithImage:v13 fetcher:fetcherCopy];
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

- (LPFetcherImageResponse)initWithImage:(id)image fetcher:(id)fetcher
{
  imageCopy = image;
  v12.receiver = self;
  v12.super_class = LPFetcherImageResponse;
  v8 = [(LPFetcherResponse *)&v12 initWithState:2 fetcher:fetcher];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_image, image);
    v10 = v9;
  }

  return v9;
}

@end