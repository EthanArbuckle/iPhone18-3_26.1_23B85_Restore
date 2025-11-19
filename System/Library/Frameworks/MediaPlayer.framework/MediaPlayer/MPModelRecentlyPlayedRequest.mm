@interface MPModelRecentlyPlayedRequest
- (id)newOperationWithResponseHandler:(id)a3;
@end

@implementation MPModelRecentlyPlayedRequest

- (id)newOperationWithResponseHandler:(id)a3
{
  v4 = a3;
  v5 = [MPModelRecentlyPlayedRequestOperation alloc];
  v6 = [(MPModelRecentlyPlayedRequest *)self copy];
  v7 = [(MPStoreModelRequestOperation *)v5 initWithRequest:v6 responseHandler:v4];

  return v7;
}

@end