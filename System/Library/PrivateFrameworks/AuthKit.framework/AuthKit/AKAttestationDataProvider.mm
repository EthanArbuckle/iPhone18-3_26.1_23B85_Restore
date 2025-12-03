@interface AKAttestationDataProvider
- (BOOL)signRequest:(id)request error:(id *)error;
- (id)authKitBody;
@end

@implementation AKAttestationDataProvider

- (id)authKitBody
{
  selfCopy = self;
  v8[1] = a2;
  v8[0] = [&__NSDictionary0__struct mutableCopy];
  [v8[0] setObject:selfCopy->_attestationNonce forKeyedSubscript:@"attestationNonce"];
  v5 = +[AKDevice currentDevice];
  sfrManifest = [v5 sfrManifest];
  _objc_release(v5);
  if (CFPreferencesGetAppBooleanValue(@"tamperImage4M", @"com.apple.authkit", 0))
  {
    [v8[0] setObject:@"overrideImage4MForTesting" forKeyedSubscript:@"image4Manifest"];
  }

  else
  {
    v6 = [sfrManifest base64EncodedStringWithOptions:0];
    [v8[0] setObject:v6 forKeyedSubscript:@"image4Manifest"];
    objc_storeStrong(&v6, 0);
  }

  if (CFPreferencesGetAppBooleanValue(@"tamperAttestedDataForOSVersion", @"com.apple.authkit", 0))
  {
    [v8[0] setObject:@"overrideAttestedDataForOSVersionForTesting" forKeyedSubscript:@"attestedData"];
  }

  else
  {
    v4 = [(NSData *)selfCopy->_attestedData base64EncodedStringWithOptions:0];
    [v8[0] setObject:? forKeyedSubscript:?];
    _objc_release(v4);
  }

  v3 = _objc_retain(v8[0]);
  objc_storeStrong(&sfrManifest, 0);
  objc_storeStrong(v8, 0);

  return v3;
}

- (BOOL)signRequest:(id)request error:(id *)error
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, request);
  errorCopy = error;
  v8.receiver = selfCopy;
  v8.super_class = AKAttestationDataProvider;
  if ([(AKGrandSlamRequestProvider *)&v8 signRequest:location[0] error:error])
  {
    if (CFPreferencesGetAppBooleanValue(@"tamperDCRT", @"com.apple.authkit", 0))
    {
      v5 = location[0];
      v6 = [@"overrideDCRTCertForTesting" dataUsingEncoding:4];
      [v5 ak_addHeaderForDCRT:?];
      _objc_release(v6);
    }

    else
    {
      [location[0] ak_addHeaderForDCRT:selfCopy->_certs];
    }

    [location[0] ak_addAttestationDataHeaders];
    v12 = 1;
  }

  else
  {
    v12 = 0;
  }

  objc_storeStrong(location, 0);
  return v12 & 1;
}

@end