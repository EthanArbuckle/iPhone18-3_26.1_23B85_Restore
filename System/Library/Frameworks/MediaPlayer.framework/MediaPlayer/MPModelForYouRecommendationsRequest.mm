@interface MPModelForYouRecommendationsRequest
- (MPModelForYouRecommendationsRequest)init;
- (MPModelForYouRecommendationsRequest)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (id)newOperationWithResponseHandler:(id)handler;
- (void)encodeWithCoder:(id)coder;
@end

@implementation MPModelForYouRecommendationsRequest

- (id)copyWithZone:(_NSZone *)zone
{
  v7.receiver = self;
  v7.super_class = MPModelForYouRecommendationsRequest;
  v4 = [(MPStoreModelRequest *)&v7 copyWithZone:zone];
  v5 = v4;
  if (v4)
  {
    objc_storeStrong(v4 + 20, self->_customForYouURL);
    v5[15] = self->_filteringPolicy;
    v5[16] = self->_requestEndpoint;
    v5[17] = self->_mode;
    *(v5 + 114) = self->_withRecentlyPlayed;
    *(v5 + 112) = self->_withSocial;
    v5[18] = self->_types;
    *(v5 + 113) = self->_withPlainEditorialNotes;
    v5[19] = self->_displayFilterKinds;
    *(v5 + 115) = self->_refreshRequest;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = MPModelForYouRecommendationsRequest;
  coderCopy = coder;
  [(MPStoreModelRequest *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeObject:self->_customForYouURL forKey:{@"customForYouURL", v5.receiver, v5.super_class}];
  [coderCopy encodeInteger:self->_filteringPolicy forKey:@"MPModelStoreForYouRequestFilteringPolicy"];
  [coderCopy encodeInteger:self->_requestEndpoint forKey:@"MPModelStoreForYouRequestEndpoint"];
  [coderCopy encodeInteger:self->_mode forKey:@"MPModelStoreForYouRequestMode"];
  [coderCopy encodeBool:self->_withRecentlyPlayed forKey:@"withRecentlyPlayed"];
  [coderCopy encodeBool:self->_withSocial forKey:@"withSocial"];
  [coderCopy encodeInteger:self->_types forKey:@"types"];
  [coderCopy encodeBool:self->_withPlainEditorialNotes forKey:@"withPlainEditorialNotes"];
  [coderCopy encodeInteger:self->_displayFilterKinds forKey:@"MPModelStoreForYouDisplayFilterKind"];
  [coderCopy encodeBool:self->_refreshRequest forKey:@"refreshRequest"];
}

- (MPModelForYouRecommendationsRequest)initWithCoder:(id)coder
{
  coderCopy = coder;
  v9.receiver = self;
  v9.super_class = MPModelForYouRecommendationsRequest;
  v5 = [(MPStoreModelRequest *)&v9 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"customForYouURL"];
    customForYouURL = v5->_customForYouURL;
    v5->_customForYouURL = v6;

    v5->_filteringPolicy = [coderCopy decodeIntegerForKey:@"MPModelStoreForYouRequestFilteringPolicy"];
    v5->_requestEndpoint = [coderCopy decodeIntegerForKey:@"MPModelStoreForYouRequestEndpoint"];
    v5->_mode = [coderCopy decodeIntegerForKey:@"MPModelStoreForYouRequestMode"];
    v5->_withRecentlyPlayed = [coderCopy decodeBoolForKey:@"withRecentlyPlayed"];
    v5->_withSocial = [coderCopy decodeBoolForKey:@"withSocial"];
    v5->_types = [coderCopy decodeIntegerForKey:@"types"];
    v5->_withPlainEditorialNotes = [coderCopy decodeBoolForKey:@"withPlainEditorialNotes"];
    v5->_displayFilterKinds = [coderCopy decodeIntegerForKey:@"MPModelStoreForYouDisplayFilterKind"];
    v5->_refreshRequest = [coderCopy decodeBoolForKey:@"refreshRequest"];
  }

  return v5;
}

- (id)newOperationWithResponseHandler:(id)handler
{
  handlerCopy = handler;
  requestEndpoint = [(MPModelForYouRecommendationsRequest *)self requestEndpoint];
  v6 = off_1E76724C8;
  if (requestEndpoint != 1)
  {
    v6 = off_1E76724D0;
  }

  v7 = objc_alloc(*v6);
  v8 = [(MPModelForYouRecommendationsRequest *)self copy];
  v9 = [v7 initWithRequest:v8 responseHandler:handlerCopy];

  return v9;
}

- (MPModelForYouRecommendationsRequest)init
{
  v3.receiver = self;
  v3.super_class = MPModelForYouRecommendationsRequest;
  result = [(MPStoreModelRequest *)&v3 init];
  if (result)
  {
    result->_filteringPolicy = 0;
    result->_requestEndpoint = 0;
    result->_mode = 0;
    result->_withRecentlyPlayed = 1;
    result->_withSocial = 0;
    result->_types = 106622;
    result->_withPlainEditorialNotes = 1;
    result->_displayFilterKinds = 102;
    result->_refreshRequest = 0;
  }

  return result;
}

@end