@interface MPModelShimResponse
- (MPModelShimResponse)initWithRequest:(id)a3 middleware:(id)a4;
@end

@implementation MPModelShimResponse

- (MPModelShimResponse)initWithRequest:(id)a3 middleware:(id)a4
{
  v6 = a4;
  v12.receiver = self;
  v12.super_class = MPModelShimResponse;
  v7 = [(MPResponse *)&v12 initWithRequest:a3 middleware:v6];
  if (v7)
  {
    v8 = [v6 firstObject];
    v9 = [v8 modelResponse];
    modelResponse = v7->_modelResponse;
    v7->_modelResponse = v9;
  }

  return v7;
}

@end