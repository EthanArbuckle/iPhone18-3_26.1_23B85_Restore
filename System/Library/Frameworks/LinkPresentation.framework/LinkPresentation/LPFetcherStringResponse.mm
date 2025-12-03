@interface LPFetcherStringResponse
- (LPFetcherStringResponse)initWithString:(id)string fetcher:(id)fetcher;
@end

@implementation LPFetcherStringResponse

- (LPFetcherStringResponse)initWithString:(id)string fetcher:(id)fetcher
{
  stringCopy = string;
  v12.receiver = self;
  v12.super_class = LPFetcherStringResponse;
  v8 = [(LPFetcherResponse *)&v12 initWithState:2 fetcher:fetcher];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_string, string);
    v10 = v9;
  }

  return v9;
}

@end