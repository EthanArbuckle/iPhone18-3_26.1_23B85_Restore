@interface LPFetcherResponse
- (LPFetcherResponse)initWithState:(int64_t)state fetcher:(id)fetcher;
@end

@implementation LPFetcherResponse

- (LPFetcherResponse)initWithState:(int64_t)state fetcher:(id)fetcher
{
  fetcherCopy = fetcher;
  v13.receiver = self;
  v13.super_class = LPFetcherResponse;
  v7 = [(LPFetcherResponse *)&v13 init];
  v8 = v7;
  if (v7)
  {
    v7->_state = state;
    userData = [fetcherCopy userData];
    userData = v8->_userData;
    v8->_userData = userData;

    v11 = v8;
  }

  return v8;
}

@end