@interface MPModelForYouRecommendationsRequest
- (MPModelForYouRecommendationsRequest)init;
- (MPModelForYouRecommendationsRequest)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)newOperationWithResponseHandler:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation MPModelForYouRecommendationsRequest

- (id)copyWithZone:(_NSZone *)a3
{
  v7.receiver = self;
  v7.super_class = MPModelForYouRecommendationsRequest;
  v4 = [(MPStoreModelRequest *)&v7 copyWithZone:a3];
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

- (void)encodeWithCoder:(id)a3
{
  v5.receiver = self;
  v5.super_class = MPModelForYouRecommendationsRequest;
  v4 = a3;
  [(MPStoreModelRequest *)&v5 encodeWithCoder:v4];
  [v4 encodeObject:self->_customForYouURL forKey:{@"customForYouURL", v5.receiver, v5.super_class}];
  [v4 encodeInteger:self->_filteringPolicy forKey:@"MPModelStoreForYouRequestFilteringPolicy"];
  [v4 encodeInteger:self->_requestEndpoint forKey:@"MPModelStoreForYouRequestEndpoint"];
  [v4 encodeInteger:self->_mode forKey:@"MPModelStoreForYouRequestMode"];
  [v4 encodeBool:self->_withRecentlyPlayed forKey:@"withRecentlyPlayed"];
  [v4 encodeBool:self->_withSocial forKey:@"withSocial"];
  [v4 encodeInteger:self->_types forKey:@"types"];
  [v4 encodeBool:self->_withPlainEditorialNotes forKey:@"withPlainEditorialNotes"];
  [v4 encodeInteger:self->_displayFilterKinds forKey:@"MPModelStoreForYouDisplayFilterKind"];
  [v4 encodeBool:self->_refreshRequest forKey:@"refreshRequest"];
}

- (MPModelForYouRecommendationsRequest)initWithCoder:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = MPModelForYouRecommendationsRequest;
  v5 = [(MPStoreModelRequest *)&v9 initWithCoder:v4];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"customForYouURL"];
    customForYouURL = v5->_customForYouURL;
    v5->_customForYouURL = v6;

    v5->_filteringPolicy = [v4 decodeIntegerForKey:@"MPModelStoreForYouRequestFilteringPolicy"];
    v5->_requestEndpoint = [v4 decodeIntegerForKey:@"MPModelStoreForYouRequestEndpoint"];
    v5->_mode = [v4 decodeIntegerForKey:@"MPModelStoreForYouRequestMode"];
    v5->_withRecentlyPlayed = [v4 decodeBoolForKey:@"withRecentlyPlayed"];
    v5->_withSocial = [v4 decodeBoolForKey:@"withSocial"];
    v5->_types = [v4 decodeIntegerForKey:@"types"];
    v5->_withPlainEditorialNotes = [v4 decodeBoolForKey:@"withPlainEditorialNotes"];
    v5->_displayFilterKinds = [v4 decodeIntegerForKey:@"MPModelStoreForYouDisplayFilterKind"];
    v5->_refreshRequest = [v4 decodeBoolForKey:@"refreshRequest"];
  }

  return v5;
}

- (id)newOperationWithResponseHandler:(id)a3
{
  v4 = a3;
  v5 = [(MPModelForYouRecommendationsRequest *)self requestEndpoint];
  v6 = off_1E76724C8;
  if (v5 != 1)
  {
    v6 = off_1E76724D0;
  }

  v7 = objc_alloc(*v6);
  v8 = [(MPModelForYouRecommendationsRequest *)self copy];
  v9 = [v7 initWithRequest:v8 responseHandler:v4];

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