@interface MPModelStoreBrowseRequest
- (MPModelStoreBrowseRequest)init;
- (MPModelStoreBrowseRequest)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)newOperationWithResponseHandler:(id)a3;
- (void)configureWithParentSection:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation MPModelStoreBrowseRequest

- (void)configureWithParentSection:(id)a3
{
  v4 = a3;
  v5 = [v4 loadAdditionalContentURL];
  [(MPModelStoreBrowseRequest *)self setLoadAdditionalContentURL:v5];

  v6 = [v4 previouslyRetrievedNestedResponse];

  [(MPModelStoreBrowseRequest *)self setPreviousRetrievedNestedResponse:v6];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v7.receiver = self;
  v7.super_class = MPModelStoreBrowseRequest;
  v4 = [(MPStoreModelRequest *)&v7 copyWithZone:a3];
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

- (void)encodeWithCoder:(id)a3
{
  v5.receiver = self;
  v5.super_class = MPModelStoreBrowseRequest;
  v4 = a3;
  [(MPStoreModelRequest *)&v5 encodeWithCoder:v4];
  [v4 encodeObject:self->_loadAdditionalContentURL forKey:{@"MPModelStoreBrowseRequestLoadAdditionalContentURL", v5.receiver, v5.super_class}];
  [v4 encodeInteger:self->_domain forKey:@"MPModelStoreBrowseRequestDomain"];
  [v4 encodeInteger:self->_filteringPolicy forKey:@"MPModelStoreBrowseRequestFilteringPolicy"];
  [v4 encodeInteger:self->_requestEndpoint forKey:@"MPModelStoreBrowseRequestEndpoint"];
  [v4 encodeInteger:self->_subscriptionStatus forKey:@"MPModelStoreBrowseRequestSubscriptionStatus"];
  [v4 encodeInteger:self->_additionalContent forKey:@"MPModelStoreBrowseRequestAdditionalContent"];
  [v4 encodeInteger:self->_options forKey:@"MPModelStoreBrowseRequestOptions"];
}

- (MPModelStoreBrowseRequest)initWithCoder:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = MPModelStoreBrowseRequest;
  v5 = [(MPStoreModelRequest *)&v9 initWithCoder:v4];
  if (v5)
  {
    v5->_domain = [v4 decodeIntegerForKey:@"MPModelStoreBrowseRequestDomain"];
    v5->_filteringPolicy = [v4 decodeIntegerForKey:@"MPModelStoreBrowseRequestFilteringPolicy"];
    v5->_requestEndpoint = [v4 decodeIntegerForKey:@"MPModelStoreBrowseRequestEndpoint"];
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"MPModelStoreBrowseRequestLoadAdditionalContentURL"];
    loadAdditionalContentURL = v5->_loadAdditionalContentURL;
    v5->_loadAdditionalContentURL = v6;

    v5->_subscriptionStatus = [v4 decodeIntegerForKey:@"MPModelStoreBrowseRequestSubscriptionStatus"];
    v5->_additionalContent = [v4 decodeIntegerForKey:@"MPModelStoreBrowseRequestAdditionalContent"];
    v5->_options = [v4 decodeIntegerForKey:@"MPModelStoreBrowseRequestOptions"];
  }

  return v5;
}

- (id)newOperationWithResponseHandler:(id)a3
{
  v4 = a3;
  v5 = [(MPModelStoreBrowseRequest *)self copy];
  if ([(MPModelStoreBrowseRequest *)self requestEndpoint]== 1)
  {
    v6 = [(MPModelStoreBrowseRequest *)self domain];
    v7 = off_1E7672718;
    if (v6 == 1)
    {
      v7 = off_1E7672748;
    }
  }

  else
  {
    v7 = off_1E7672728;
  }

  v8 = [objc_alloc(*v7) initWithRequest:v5 responseHandler:v4];

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