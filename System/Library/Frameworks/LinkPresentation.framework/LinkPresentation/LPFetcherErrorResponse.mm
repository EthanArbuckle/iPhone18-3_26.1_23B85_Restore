@interface LPFetcherErrorResponse
- (LPFetcherErrorResponse)initWithError:(id)a3 fetcher:(id)a4;
@end

@implementation LPFetcherErrorResponse

- (LPFetcherErrorResponse)initWithError:(id)a3 fetcher:(id)a4
{
  v7 = a3;
  v12.receiver = self;
  v12.super_class = LPFetcherErrorResponse;
  v8 = [(LPFetcherResponse *)&v12 initWithState:1 fetcher:a4];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_error, a3);
    v10 = v9;
  }

  return v9;
}

@end