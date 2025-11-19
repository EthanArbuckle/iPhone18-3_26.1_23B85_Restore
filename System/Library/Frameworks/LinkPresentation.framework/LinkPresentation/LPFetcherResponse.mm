@interface LPFetcherResponse
- (LPFetcherResponse)initWithState:(int64_t)a3 fetcher:(id)a4;
@end

@implementation LPFetcherResponse

- (LPFetcherResponse)initWithState:(int64_t)a3 fetcher:(id)a4
{
  v6 = a4;
  v13.receiver = self;
  v13.super_class = LPFetcherResponse;
  v7 = [(LPFetcherResponse *)&v13 init];
  v8 = v7;
  if (v7)
  {
    v7->_state = a3;
    v9 = [v6 userData];
    userData = v8->_userData;
    v8->_userData = v9;

    v11 = v8;
  }

  return v8;
}

@end