@interface AKAttestationDataProvider
- (BOOL)signRequest:(id)a3 error:(id *)a4;
- (id)authKitBody;
@end

@implementation AKAttestationDataProvider

- (id)authKitBody
{
  v9 = self;
  v8[1] = a2;
  v8[0] = [&__NSDictionary0__struct mutableCopy];
  [v8[0] setObject:v9->_attestationNonce forKeyedSubscript:@"attestationNonce"];
  v5 = +[AKDevice currentDevice];
  v7 = [v5 sfrManifest];
  _objc_release(v5);
  if (CFPreferencesGetAppBooleanValue(@"tamperImage4M", @"com.apple.authkit", 0))
  {
    [v8[0] setObject:@"overrideImage4MForTesting" forKeyedSubscript:@"image4Manifest"];
  }

  else
  {
    v6 = [v7 base64EncodedStringWithOptions:0];
    [v8[0] setObject:v6 forKeyedSubscript:@"image4Manifest"];
    objc_storeStrong(&v6, 0);
  }

  if (CFPreferencesGetAppBooleanValue(@"tamperAttestedDataForOSVersion", @"com.apple.authkit", 0))
  {
    [v8[0] setObject:@"overrideAttestedDataForOSVersionForTesting" forKeyedSubscript:@"attestedData"];
  }

  else
  {
    v4 = [(NSData *)v9->_attestedData base64EncodedStringWithOptions:0];
    [v8[0] setObject:? forKeyedSubscript:?];
    _objc_release(v4);
  }

  v3 = _objc_retain(v8[0]);
  objc_storeStrong(&v7, 0);
  objc_storeStrong(v8, 0);

  return v3;
}

- (BOOL)signRequest:(id)a3 error:(id *)a4
{
  v11 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v9 = a4;
  v8.receiver = v11;
  v8.super_class = AKAttestationDataProvider;
  if ([(AKGrandSlamRequestProvider *)&v8 signRequest:location[0] error:a4])
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
      [location[0] ak_addHeaderForDCRT:v11->_certs];
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