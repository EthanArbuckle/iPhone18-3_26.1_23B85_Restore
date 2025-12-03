@interface AKGrandSlamResponseHandler
- (AKGrandSlamResponseHandler)initWithContext:(id)context;
- (void)_handleInvalidMasterTokenWithSubErrorCode:(int64_t)code;
- (void)_revokeDeviceTrust;
- (void)handleResponseError:(id)error;
@end

@implementation AKGrandSlamResponseHandler

- (AKGrandSlamResponseHandler)initWithContext:(id)context
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, context);
  v3 = selfCopy;
  selfCopy = 0;
  v6 = [(AKGrandSlamResponseHandler *)v3 init];
  selfCopy = v6;
  objc_storeStrong(&selfCopy, v6);
  if (v6)
  {
    objc_storeStrong(&selfCopy->_context, location[0]);
  }

  v5 = _objc_retain(selfCopy);
  objc_storeStrong(location, 0);
  objc_storeStrong(&selfCopy, 0);
  return v5;
}

- (void)handleResponseError:(id)error
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, error);
  userInfo = [location[0] userInfo];
  v8 = [userInfo objectForKeyedSubscript:AKErrorStatusCodeKey];
  _objc_release(userInfo);
  userInfo2 = [location[0] userInfo];
  v7 = [userInfo2 objectForKeyedSubscript:AKSubErrorStatusCodeKey];
  _objc_release(userInfo2);
  domain = [location[0] domain];
  v6 = 0;
  if (domain == AKAppleIDAuthenticationErrorDomain)
  {
    v6 = 0;
    if (v8)
    {
      v6 = v7 != 0;
    }
  }

  _objc_release(domain);
  if (v6 && [v8 integerValue] == -22411)
  {
    -[AKGrandSlamResponseHandler _handleInvalidMasterTokenWithSubErrorCode:](selfCopy, "_handleInvalidMasterTokenWithSubErrorCode:", [v7 integerValue]);
  }

  objc_storeStrong(&v7, 0);
  objc_storeStrong(&v8, 0);
  objc_storeStrong(location, 0);
}

- (void)_handleInvalidMasterTokenWithSubErrorCode:(int64_t)code
{
  if (code == -42333 || code == -22423)
  {
    [(AKGrandSlamResponseHandler *)self _revokeDeviceTrust];
  }
}

- (void)_revokeDeviceTrust
{
  selfCopy = self;
  v5[1] = a2;
  v5[0] = +[AKAccountManager sharedInstance];
  context = [(AKGrandSlamResponseHandler *)selfCopy context];
  altDSID = [(AKAuthenticatedServerRequest *)context altDSID];
  location = [v5[0] authKitAccountWithAltDSID:? error:?];
  _objc_release(altDSID);
  _objc_release(context);
  if (location)
  {
    [v5[0] setDeviceRemovalReason:0 onAccount:location];
    [v5[0] saveAccount:location error:0];
  }

  objc_storeStrong(&location, 0);
  objc_storeStrong(v5, 0);
}

@end