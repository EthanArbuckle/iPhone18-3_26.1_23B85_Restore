@interface AKGrandSlamResponseHandler
- (AKGrandSlamResponseHandler)initWithContext:(id)a3;
- (void)_handleInvalidMasterTokenWithSubErrorCode:(int64_t)a3;
- (void)_revokeDeviceTrust;
- (void)handleResponseError:(id)a3;
@end

@implementation AKGrandSlamResponseHandler

- (AKGrandSlamResponseHandler)initWithContext:(id)a3
{
  v8 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v3 = v8;
  v8 = 0;
  v6 = [(AKGrandSlamResponseHandler *)v3 init];
  v8 = v6;
  objc_storeStrong(&v8, v6);
  if (v6)
  {
    objc_storeStrong(&v8->_context, location[0]);
  }

  v5 = _objc_retain(v8);
  objc_storeStrong(location, 0);
  objc_storeStrong(&v8, 0);
  return v5;
}

- (void)handleResponseError:(id)a3
{
  v10 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v3 = [location[0] userInfo];
  v8 = [v3 objectForKeyedSubscript:AKErrorStatusCodeKey];
  _objc_release(v3);
  v4 = [location[0] userInfo];
  v7 = [v4 objectForKeyedSubscript:AKSubErrorStatusCodeKey];
  _objc_release(v4);
  v5 = [location[0] domain];
  v6 = 0;
  if (v5 == AKAppleIDAuthenticationErrorDomain)
  {
    v6 = 0;
    if (v8)
    {
      v6 = v7 != 0;
    }
  }

  _objc_release(v5);
  if (v6 && [v8 integerValue] == -22411)
  {
    -[AKGrandSlamResponseHandler _handleInvalidMasterTokenWithSubErrorCode:](v10, "_handleInvalidMasterTokenWithSubErrorCode:", [v7 integerValue]);
  }

  objc_storeStrong(&v7, 0);
  objc_storeStrong(&v8, 0);
  objc_storeStrong(location, 0);
}

- (void)_handleInvalidMasterTokenWithSubErrorCode:(int64_t)a3
{
  if (a3 == -42333 || a3 == -22423)
  {
    [(AKGrandSlamResponseHandler *)self _revokeDeviceTrust];
  }
}

- (void)_revokeDeviceTrust
{
  v6 = self;
  v5[1] = a2;
  v5[0] = +[AKAccountManager sharedInstance];
  v3 = [(AKGrandSlamResponseHandler *)v6 context];
  v2 = [(AKAuthenticatedServerRequest *)v3 altDSID];
  location = [v5[0] authKitAccountWithAltDSID:? error:?];
  _objc_release(v2);
  _objc_release(v3);
  if (location)
  {
    [v5[0] setDeviceRemovalReason:0 onAccount:location];
    [v5[0] saveAccount:location error:0];
  }

  objc_storeStrong(&location, 0);
  objc_storeStrong(v5, 0);
}

@end