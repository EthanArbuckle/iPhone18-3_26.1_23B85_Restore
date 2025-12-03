@interface MPModelRecentlyPlayedRequest
- (id)newOperationWithResponseHandler:(id)handler;
@end

@implementation MPModelRecentlyPlayedRequest

- (id)newOperationWithResponseHandler:(id)handler
{
  handlerCopy = handler;
  v5 = [MPModelRecentlyPlayedRequestOperation alloc];
  v6 = [(MPModelRecentlyPlayedRequest *)self copy];
  v7 = [(MPStoreModelRequestOperation *)v5 initWithRequest:v6 responseHandler:handlerCopy];

  return v7;
}

@end