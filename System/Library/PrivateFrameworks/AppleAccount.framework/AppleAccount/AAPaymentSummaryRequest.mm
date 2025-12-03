@interface AAPaymentSummaryRequest
- (id)urlRequest;
- (id)urlString;
@end

@implementation AAPaymentSummaryRequest

- (id)urlString
{
  v2 = +[AAURLConfiguration urlConfiguration];
  paymentSummaryURL = [v2 paymentSummaryURL];

  return paymentSummaryURL;
}

- (id)urlRequest
{
  v9.receiver = self;
  v9.super_class = AAPaymentSummaryRequest;
  urlRequest = [(AAAppleIDSettingsRequest *)&v9 urlRequest];
  v4 = [urlRequest mutableCopy];

  secondaryAuthToken = self->_secondaryAuthToken;
  if (secondaryAuthToken)
  {
    [v4 addValue:secondaryAuthToken forHTTPHeaderField:@"X-Apple-2SV-Authenticate"];
  }

  grandSlamAccount = [(AAAppleIDSettingsRequest *)self grandSlamAccount];
  aida_alternateDSID = [grandSlamAccount aida_alternateDSID];
  [v4 aa_addGrandslamAuthorizationheaderWithAltDSID:aida_alternateDSID heartbeatToken:self->_heartbeatToken];

  [v4 aa_addContentTypeHeaders:@"application/json"];

  return v4;
}

@end