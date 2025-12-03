@interface MPModelStoreBrowseRequest
- (MPModelStoreBrowseRequest)init;
- (MPModelStoreBrowseRequest)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (id)newOperationWithResponseHandler:(id)handler;
- (void)configureWithParentSection:(id)section;
- (void)encodeWithCoder:(id)coder;
@end

@implementation MPModelStoreBrowseRequest

- (void)configureWithParentSection:(id)section
{
  sectionCopy = section;
  loadAdditionalContentURL = [sectionCopy loadAdditionalContentURL];
  [(MPModelStoreBrowseRequest *)self setLoadAdditionalContentURL:loadAdditionalContentURL];

  previouslyRetrievedNestedResponse = [sectionCopy previouslyRetrievedNestedResponse];

  [(MPModelStoreBrowseRequest *)self setPreviousRetrievedNestedResponse:previouslyRetrievedNestedResponse];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v7.receiver = self;
  v7.super_class = MPModelStoreBrowseRequest;
  v4 = [(MPStoreModelRequest *)&v7 copyWithZone:zone];
  v5 = v4;
  if (v4)
  {
    objc_storeStrong(v4 + 14, self->_loadAdditionalContentURL);
    v5[16] = self->_domain;
    v5[19] = self->_filteringPolicy;
    v5[22] = self->_requestEndpoint;
    objc_storeStrong(v5 + 15, self->_previousRetrievedNestedResponse);
    objc_storeStrong(v5 + 21, self->_previousResponse);
    v5[20] = self->_subscriptionStatus;
    v5[17] = self->_additionalContent;
    v5[18] = self->_options;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = MPModelStoreBrowseRequest;
  coderCopy = coder;
  [(MPStoreModelRequest *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeObject:self->_loadAdditionalContentURL forKey:{@"MPModelStoreBrowseRequestLoadAdditionalContentURL", v5.receiver, v5.super_class}];
  [coderCopy encodeInteger:self->_domain forKey:@"MPModelStoreBrowseRequestDomain"];
  [coderCopy encodeInteger:self->_filteringPolicy forKey:@"MPModelStoreBrowseRequestFilteringPolicy"];
  [coderCopy encodeInteger:self->_requestEndpoint forKey:@"MPModelStoreBrowseRequestEndpoint"];
  [coderCopy encodeInteger:self->_subscriptionStatus forKey:@"MPModelStoreBrowseRequestSubscriptionStatus"];
  [coderCopy encodeInteger:self->_additionalContent forKey:@"MPModelStoreBrowseRequestAdditionalContent"];
  [coderCopy encodeInteger:self->_options forKey:@"MPModelStoreBrowseRequestOptions"];
}

- (MPModelStoreBrowseRequest)initWithCoder:(id)coder
{
  coderCopy = coder;
  v9.receiver = self;
  v9.super_class = MPModelStoreBrowseRequest;
  v5 = [(MPStoreModelRequest *)&v9 initWithCoder:coderCopy];
  if (v5)
  {
    v5->_domain = [coderCopy decodeIntegerForKey:@"MPModelStoreBrowseRequestDomain"];
    v5->_filteringPolicy = [coderCopy decodeIntegerForKey:@"MPModelStoreBrowseRequestFilteringPolicy"];
    v5->_requestEndpoint = [coderCopy decodeIntegerForKey:@"MPModelStoreBrowseRequestEndpoint"];
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"MPModelStoreBrowseRequestLoadAdditionalContentURL"];
    loadAdditionalContentURL = v5->_loadAdditionalContentURL;
    v5->_loadAdditionalContentURL = v6;

    v5->_subscriptionStatus = [coderCopy decodeIntegerForKey:@"MPModelStoreBrowseRequestSubscriptionStatus"];
    v5->_additionalContent = [coderCopy decodeIntegerForKey:@"MPModelStoreBrowseRequestAdditionalContent"];
    v5->_options = [coderCopy decodeIntegerForKey:@"MPModelStoreBrowseRequestOptions"];
  }

  return v5;
}

- (id)newOperationWithResponseHandler:(id)handler
{
  handlerCopy = handler;
  v5 = [(MPModelStoreBrowseRequest *)self copy];
  if ([(MPModelStoreBrowseRequest *)self requestEndpoint]== 1)
  {
    domain = [(MPModelStoreBrowseRequest *)self domain];
    v7 = off_1E7672718;
    if (domain == 1)
    {
      v7 = off_1E7672748;
    }
  }

  else
  {
    v7 = off_1E7672728;
  }

  v8 = [objc_alloc(*v7) initWithRequest:v5 responseHandler:handlerCopy];

  return v8;
}

- (MPModelStoreBrowseRequest)init
{
  v3.receiver = self;
  v3.super_class = MPModelStoreBrowseRequest;
  result = [(MPStoreModelRequest *)&v3 init];
  if (result)
  {
    result->_domain = 0;
    result->_filteringPolicy = 0;
    result->_requestEndpoint = 0;
    result->_subscriptionStatus = 0;
    result->_additionalContent = 0;
    result->_options = 0;
  }

  return result;
}

@end