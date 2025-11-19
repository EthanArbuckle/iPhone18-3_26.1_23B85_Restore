@interface AASecondaryAuthenticationResponse
- (AASecondaryAuthenticationResponse)initWithHTTPResponse:(id)a3 data:(id)a4;
@end

@implementation AASecondaryAuthenticationResponse

- (AASecondaryAuthenticationResponse)initWithHTTPResponse:(id)a3 data:(id)a4
{
  v6 = a3;
  v7 = a4;
  v13.receiver = self;
  v13.super_class = AASecondaryAuthenticationResponse;
  v8 = [(AAResponse *)&v13 initWithHTTPResponse:v6 data:v7];
  if (v8)
  {
    v9 = [v6 allHeaderFields];
    v10 = [v9 valueForKey:@"X-Apple-2SV-Authenticate"];
    secondFactorToken = v8->_secondFactorToken;
    v8->_secondFactorToken = v10;

    objc_storeStrong(&v8->_buddyML, a4);
  }

  return v8;
}

@end