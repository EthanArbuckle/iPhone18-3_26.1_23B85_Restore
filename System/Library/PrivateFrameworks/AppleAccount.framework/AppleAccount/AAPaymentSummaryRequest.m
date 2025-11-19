@interface AAPaymentSummaryRequest
- (id)urlRequest;
- (id)urlString;
@end

@implementation AAPaymentSummaryRequest

- (id)urlString
{
  v2 = +[AAURLConfiguration urlConfiguration];
  v3 = [v2 paymentSummaryURL];

  return v3;
}

- (id)urlRequest
{
  v9.receiver = self;
  v9.super_class = AAPaymentSummaryRequest;
  v3 = [(AAAppleIDSettingsRequest *)&v9 urlRequest];
  v4 = [v3 mutableCopy];

  secondaryAuthToken = self->_secondaryAuthToken;
  if (secondaryAuthToken)
  {
    [v4 addValue:secondaryAuthToken forHTTPHeaderField:@"X-Apple-2SV-Authenticate"];
  }

  v6 = [(AAAppleIDSettingsRequest *)self grandSlamAccount];
  v7 = [v6 aida_alternateDSID];
  [v4 aa_addGrandslamAuthorizationheaderWithAltDSID:v7 heartbeatToken:self->_heartbeatToken];

  [v4 aa_addContentTypeHeaders:@"application/json"];

  return v4;
}

@end