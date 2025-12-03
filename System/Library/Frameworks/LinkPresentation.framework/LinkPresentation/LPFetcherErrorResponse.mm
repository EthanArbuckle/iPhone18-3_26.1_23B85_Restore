@interface LPFetcherErrorResponse
- (LPFetcherErrorResponse)initWithError:(id)error fetcher:(id)fetcher;
@end

@implementation LPFetcherErrorResponse

- (LPFetcherErrorResponse)initWithError:(id)error fetcher:(id)fetcher
{
  errorCopy = error;
  v12.receiver = self;
  v12.super_class = LPFetcherErrorResponse;
  v8 = [(LPFetcherResponse *)&v12 initWithState:1 fetcher:fetcher];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_error, error);
    v10 = v9;
  }

  return v9;
}

@end