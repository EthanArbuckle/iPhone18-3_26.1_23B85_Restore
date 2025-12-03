@interface MPModelShimResponse
- (MPModelShimResponse)initWithRequest:(id)request middleware:(id)middleware;
@end

@implementation MPModelShimResponse

- (MPModelShimResponse)initWithRequest:(id)request middleware:(id)middleware
{
  middlewareCopy = middleware;
  v12.receiver = self;
  v12.super_class = MPModelShimResponse;
  v7 = [(MPResponse *)&v12 initWithRequest:request middleware:middlewareCopy];
  if (v7)
  {
    firstObject = [middlewareCopy firstObject];
    modelResponse = [firstObject modelResponse];
    modelResponse = v7->_modelResponse;
    v7->_modelResponse = modelResponse;
  }

  return v7;
}

@end