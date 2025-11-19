@interface LPFetcherJSONResponse
+ (id)responseForFetcher:(id)a3 withData:(id)a4 MIMEType:(id)a5;
- (LPFetcherJSONResponse)initWithRootObject:(id)a3 fetcher:(id)a4;
@end

@implementation LPFetcherJSONResponse

+ (id)responseForFetcher:(id)a3 withData:(id)a4 MIMEType:(id)a5
{
  v6 = a3;
  v12 = 0;
  v7 = [MEMORY[0x1E696ACB0] JSONObjectWithData:a4 options:0 error:&v12];
  v8 = v12;
  if (v8)
  {
    v9 = [[LPFetcherErrorResponse alloc] initWithError:v8 fetcher:v6];
LABEL_5:
    v10 = v9;
    goto LABEL_6;
  }

  if (v7)
  {
    v9 = [[LPFetcherJSONResponse alloc] initWithRootObject:v7 fetcher:v6];
    goto LABEL_5;
  }

  v10 = 0;
LABEL_6:

  return v10;
}

- (LPFetcherJSONResponse)initWithRootObject:(id)a3 fetcher:(id)a4
{
  v7 = a3;
  v12.receiver = self;
  v12.super_class = LPFetcherJSONResponse;
  v8 = [(LPFetcherResponse *)&v12 initWithState:2 fetcher:a4];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_rootObject, a3);
    v10 = v9;
  }

  return v9;
}

@end