@interface AKSRPContext
- (AKMasterToken)masterToken;
- (NSDictionary)serverProvidedData;
- (NSDictionary)status;
- (id)configureWithParameters:(id)a3;
- (void)dealloc;
@end

@implementation AKSRPContext

- (void)dealloc
{
  v4 = self;
  v3 = a2;
  if (self->_underlyingContext)
  {
    CFRelease(v4->_underlyingContext);
    v4->_underlyingContext = 0;
  }

  v2.receiver = v4;
  v2.super_class = AKSRPContext;
  [(AKSRPContext *)&v2 dealloc];
}

- (id)configureWithParameters:(id)a3
{
  v11 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v9 = 0;
  v3 = [location[0] copy];
  configurationParameters = v11->_configurationParameters;
  v11->_configurationParameters = v3;
  _objc_release(configurationParameters);
  v11->_underlyingContext = AppleIDAuthSupportCreate();
  v8 = v9;
  if (v11->_underlyingContext)
  {
    v12 = 0;
  }

  else
  {
    v7 = _objc_retain(v8);
    v12 = _objc_retain(v7);
    objc_storeStrong(&v7, 0);
  }

  objc_storeStrong(&v8, 0);
  objc_storeStrong(location, 0);
  v5 = v12;

  return v5;
}

- (NSDictionary)serverProvidedData
{
  if (self->_underlyingContext)
  {
    underlyingContext = self->_underlyingContext;
    v4 = AppleIDAuthSupportCopyProvidedData();
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (AKMasterToken)masterToken
{
  v12 = self;
  v11 = a2;
  if (self->_underlyingContext)
  {
    underlyingContext = v12->_underlyingContext;
    v10 = AppleIDAuthSupportCopyToken();
    if (v10)
    {
      v9 = AppleIDAuthSupportTokenCopyExternalizedVersion();
      v5 = v9;
      v7 = [(AKSRPContext *)v12 serverProvidedData];
      v6 = [(NSDictionary *)v7 objectForKeyedSubscript:@"duration"];
      v8 = [AKMasterToken tokenWithExternalizedVersion:v5 lifetime:?];
      _objc_release(v6);
      _objc_release(v7);
      CFRelease(v10);
      v13 = _objc_retain(v8);
      objc_storeStrong(&v8, 0);
      objc_storeStrong(&v9, 0);
    }

    else
    {
      v13 = 0;
    }
  }

  else
  {
    v13 = 0;
  }

  v3 = v13;

  return v3;
}

- (NSDictionary)status
{
  if (self->_underlyingContext)
  {
    underlyingContext = self->_underlyingContext;
    v4 = AppleIDAuthSupportGetStatus();
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

@end