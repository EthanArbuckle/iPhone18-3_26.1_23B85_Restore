@interface AASecondaryAuthenticationResponse
- (AASecondaryAuthenticationResponse)initWithHTTPResponse:(id)response data:(id)data;
@end

@implementation AASecondaryAuthenticationResponse

- (AASecondaryAuthenticationResponse)initWithHTTPResponse:(id)response data:(id)data
{
  responseCopy = response;
  dataCopy = data;
  v13.receiver = self;
  v13.super_class = AASecondaryAuthenticationResponse;
  v8 = [(AAResponse *)&v13 initWithHTTPResponse:responseCopy data:dataCopy];
  if (v8)
  {
    allHeaderFields = [responseCopy allHeaderFields];
    v10 = [allHeaderFields valueForKey:@"X-Apple-2SV-Authenticate"];
    secondFactorToken = v8->_secondFactorToken;
    v8->_secondFactorToken = v10;

    objc_storeStrong(&v8->_buddyML, data);
  }

  return v8;
}

@end