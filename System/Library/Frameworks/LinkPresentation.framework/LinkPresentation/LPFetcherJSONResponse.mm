@interface LPFetcherJSONResponse
+ (id)responseForFetcher:(id)fetcher withData:(id)data MIMEType:(id)type;
- (LPFetcherJSONResponse)initWithRootObject:(id)object fetcher:(id)fetcher;
@end

@implementation LPFetcherJSONResponse

+ (id)responseForFetcher:(id)fetcher withData:(id)data MIMEType:(id)type
{
  fetcherCopy = fetcher;
  v12 = 0;
  v7 = [MEMORY[0x1E696ACB0] JSONObjectWithData:data options:0 error:&v12];
  v8 = v12;
  if (v8)
  {
    v9 = [[LPFetcherErrorResponse alloc] initWithError:v8 fetcher:fetcherCopy];
LABEL_5:
    v10 = v9;
    goto LABEL_6;
  }

  if (v7)
  {
    v9 = [[LPFetcherJSONResponse alloc] initWithRootObject:v7 fetcher:fetcherCopy];
    goto LABEL_5;
  }

  v10 = 0;
LABEL_6:

  return v10;
}

- (LPFetcherJSONResponse)initWithRootObject:(id)object fetcher:(id)fetcher
{
  objectCopy = object;
  v12.receiver = self;
  v12.super_class = LPFetcherJSONResponse;
  v8 = [(LPFetcherResponse *)&v12 initWithState:2 fetcher:fetcher];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_rootObject, object);
    v10 = v9;
  }

  return v9;
}

@end