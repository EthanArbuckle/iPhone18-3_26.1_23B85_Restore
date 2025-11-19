@interface AKDeviceListRequestProvider
- (BOOL)signRequest:(id)a3 error:(id *)a4;
- (void)requestURLWithCompletion:(id)a3;
@end

@implementation AKDeviceListRequestProvider

- (BOOL)signRequest:(id)a3 error:(id *)a4
{
  v15 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v13 = a4;
  v10 = [(AKDeviceListRequestProvider *)v15 deviceRequestContext];
  v11 = [(AKDeviceListRequestContext *)v10 proxiedBundleID];
  _objc_release(v11);
  _objc_release(v10);
  if (v11)
  {
    v6 = location[0];
    v8 = [(AKDeviceListRequestProvider *)v15 deviceRequestContext];
    v7 = [(AKDeviceListRequestContext *)v8 proxiedBundleID];
    [v6 ak_addProxiedBundleIDHeader:?];
    _objc_release(v7);
    _objc_release(v8);
  }

  v12.receiver = v15;
  v12.super_class = AKDeviceListRequestProvider;
  v5 = [(AKGrandSlamRequestProvider *)&v12 signRequest:location[0] error:v13];
  objc_storeStrong(location, 0);
  return v5;
}

- (void)requestURLWithCompletion:(id)a3
{
  v13 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v3 = v13;
  v5 = _NSConcreteStackBlock;
  v6 = -1073741824;
  v7 = 0;
  v8 = sub_1000E4348;
  v9 = &unk_100322D70;
  v10 = _objc_retain(v13);
  v11 = _objc_retain(location[0]);
  v4.receiver = v3;
  v4.super_class = AKDeviceListRequestProvider;
  [(AKURLRequestProviderImpl *)&v4 requestURLWithCompletion:?];
  objc_storeStrong(&v11, 0);
  objc_storeStrong(&v10, 0);
  objc_storeStrong(location, 0);
}

@end