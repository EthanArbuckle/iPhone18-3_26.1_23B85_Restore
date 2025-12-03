@interface MPModelStoreBrowseRoomRequest
- (MPModelStoreBrowseRoomRequest)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (id)newOperationWithResponseHandler:(id)handler;
- (void)configureWithParentSection:(id)section;
- (void)encodeWithCoder:(id)coder;
@end

@implementation MPModelStoreBrowseRoomRequest

- (void)configureWithParentSection:(id)section
{
  sectionCopy = section;
  loadAdditionalContentURL = [sectionCopy loadAdditionalContentURL];
  [(MPModelStoreBrowseRoomRequest *)self setLoadAdditionalContentURL:loadAdditionalContentURL];

  previouslyRetrievedNestedResponse = [sectionCopy previouslyRetrievedNestedResponse];

  [(MPModelStoreBrowseRoomRequest *)self setPreviousRetrievedNestedResponse:previouslyRetrievedNestedResponse];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v7.receiver = self;
  v7.super_class = MPModelStoreBrowseRoomRequest;
  v4 = [(MPStoreModelRequest *)&v7 copyWithZone:zone];
  v5 = v4;
  if (v4)
  {
    objc_storeStrong(v4 + 14, self->_loadAdditionalContentURL);
    objc_storeStrong(v5 + 16, self->_previousRetrievedNestedResponse);
    objc_storeStrong(v5 + 17, self->_previousResponse);
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = MPModelStoreBrowseRoomRequest;
  coderCopy = coder;
  [(MPStoreModelRequest *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeObject:self->_loadAdditionalContentURL forKey:{@"MPModelStoreBrowseRequestLoadAdditionalContentURL", v5.receiver, v5.super_class}];
}

- (MPModelStoreBrowseRoomRequest)initWithCoder:(id)coder
{
  coderCopy = coder;
  v9.receiver = self;
  v9.super_class = MPModelStoreBrowseRoomRequest;
  v5 = [(MPStoreModelRequest *)&v9 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"MPModelStoreBrowseRequestLoadAdditionalContentURL"];
    loadAdditionalContentURL = v5->_loadAdditionalContentURL;
    v5->_loadAdditionalContentURL = v6;
  }

  return v5;
}

- (id)newOperationWithResponseHandler:(id)handler
{
  handlerCopy = handler;
  v5 = [MPModelStoreBrowseRoomMusicKitRequestOperation alloc];
  v6 = [(MPModelStoreBrowseRoomRequest *)self copy];
  v7 = [(MPStoreModelRequestOperation *)v5 initWithRequest:v6 responseHandler:handlerCopy];

  return v7;
}

@end