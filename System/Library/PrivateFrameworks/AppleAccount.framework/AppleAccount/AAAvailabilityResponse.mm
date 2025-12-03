@interface AAAvailabilityResponse
- (AAAvailabilityResponse)initWithHTTPResponse:(id)response data:(id)data;
@end

@implementation AAAvailabilityResponse

- (AAAvailabilityResponse)initWithHTTPResponse:(id)response data:(id)data
{
  v16.receiver = self;
  v16.super_class = AAAvailabilityResponse;
  v4 = [(AAResponse *)&v16 initWithHTTPResponse:response data:data];
  v5 = v4;
  if (v4)
  {
    responseDictionary = [(AAResponse *)v4 responseDictionary];
    v7 = [responseDictionary objectForKeyedSubscript:@"status"];
    status = v5->_status;
    v5->_status = v7;

    responseDictionary2 = [(AAResponse *)v5 responseDictionary];
    v10 = [responseDictionary2 objectForKeyedSubscript:@"eta"];
    eta = v5->_eta;
    v5->_eta = v10;

    responseDictionary3 = [(AAResponse *)v5 responseDictionary];
    v13 = [responseDictionary3 objectForKeyedSubscript:@"feature"];
    feature = v5->_feature;
    v5->_feature = v13;
  }

  return v5;
}

@end