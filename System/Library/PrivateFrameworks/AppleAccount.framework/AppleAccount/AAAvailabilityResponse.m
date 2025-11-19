@interface AAAvailabilityResponse
- (AAAvailabilityResponse)initWithHTTPResponse:(id)a3 data:(id)a4;
@end

@implementation AAAvailabilityResponse

- (AAAvailabilityResponse)initWithHTTPResponse:(id)a3 data:(id)a4
{
  v16.receiver = self;
  v16.super_class = AAAvailabilityResponse;
  v4 = [(AAResponse *)&v16 initWithHTTPResponse:a3 data:a4];
  v5 = v4;
  if (v4)
  {
    v6 = [(AAResponse *)v4 responseDictionary];
    v7 = [v6 objectForKeyedSubscript:@"status"];
    status = v5->_status;
    v5->_status = v7;

    v9 = [(AAResponse *)v5 responseDictionary];
    v10 = [v9 objectForKeyedSubscript:@"eta"];
    eta = v5->_eta;
    v5->_eta = v10;

    v12 = [(AAResponse *)v5 responseDictionary];
    v13 = [v12 objectForKeyedSubscript:@"feature"];
    feature = v5->_feature;
    v5->_feature = v13;
  }

  return v5;
}

@end