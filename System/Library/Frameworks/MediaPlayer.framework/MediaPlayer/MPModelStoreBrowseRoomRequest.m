@interface MPModelStoreBrowseRoomRequest
- (MPModelStoreBrowseRoomRequest)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)newOperationWithResponseHandler:(id)a3;
- (void)configureWithParentSection:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation MPModelStoreBrowseRoomRequest

- (void)configureWithParentSection:(id)a3
{
  v4 = a3;
  v5 = [v4 loadAdditionalContentURL];
  [(MPModelStoreBrowseRoomRequest *)self setLoadAdditionalContentURL:v5];

  v6 = [v4 previouslyRetrievedNestedResponse];

  [(MPModelStoreBrowseRoomRequest *)self setPreviousRetrievedNestedResponse:v6];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v7.receiver = self;
  v7.super_class = MPModelStoreBrowseRoomRequest;
  v4 = [(MPStoreModelRequest *)&v7 copyWithZone:a3];
  v5 = v4;
  if (v4)
  {
    objc_storeStrong(v4 + 14, self->_loadAdditionalContentURL);
    objc_storeStrong(v5 + 16, self->_previousRetrievedNestedResponse);
    objc_storeStrong(v5 + 17, self->_previousResponse);
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v5.receiver = self;
  v5.super_class = MPModelStoreBrowseRoomRequest;
  v4 = a3;
  [(MPStoreModelRequest *)&v5 encodeWithCoder:v4];
  [v4 encodeObject:self->_loadAdditionalContentURL forKey:{@"MPModelStoreBrowseRequestLoadAdditionalContentURL", v5.receiver, v5.super_class}];
}

- (MPModelStoreBrowseRoomRequest)initWithCoder:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = MPModelStoreBrowseRoomRequest;
  v5 = [(MPStoreModelRequest *)&v9 initWithCoder:v4];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"MPModelStoreBrowseRequestLoadAdditionalContentURL"];
    loadAdditionalContentURL = v5->_loadAdditionalContentURL;
    v5->_loadAdditionalContentURL = v6;
  }

  return v5;
}

- (id)newOperationWithResponseHandler:(id)a3
{
  v4 = a3;
  v5 = [MPModelStoreBrowseRoomMusicKitRequestOperation alloc];
  v6 = [(MPModelStoreBrowseRoomRequest *)self copy];
  v7 = [(MPStoreModelRequestOperation *)v5 initWithRequest:v6 responseHandler:v4];

  return v7;
}

@end