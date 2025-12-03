@interface AKDeviceListRequestProvider
- (BOOL)signRequest:(id)request error:(id *)error;
- (void)requestURLWithCompletion:(id)completion;
@end

@implementation AKDeviceListRequestProvider

- (BOOL)signRequest:(id)request error:(id *)error
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, request);
  errorCopy = error;
  deviceRequestContext = [(AKDeviceListRequestProvider *)selfCopy deviceRequestContext];
  proxiedBundleID = [(AKDeviceListRequestContext *)deviceRequestContext proxiedBundleID];
  _objc_release(proxiedBundleID);
  _objc_release(deviceRequestContext);
  if (proxiedBundleID)
  {
    v6 = location[0];
    deviceRequestContext2 = [(AKDeviceListRequestProvider *)selfCopy deviceRequestContext];
    proxiedBundleID2 = [(AKDeviceListRequestContext *)deviceRequestContext2 proxiedBundleID];
    [v6 ak_addProxiedBundleIDHeader:?];
    _objc_release(proxiedBundleID2);
    _objc_release(deviceRequestContext2);
  }

  v12.receiver = selfCopy;
  v12.super_class = AKDeviceListRequestProvider;
  v5 = [(AKGrandSlamRequestProvider *)&v12 signRequest:location[0] error:errorCopy];
  objc_storeStrong(location, 0);
  return v5;
}

- (void)requestURLWithCompletion:(id)completion
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, completion);
  v3 = selfCopy;
  v5 = _NSConcreteStackBlock;
  v6 = -1073741824;
  v7 = 0;
  v8 = sub_1000E4348;
  v9 = &unk_100322D70;
  v10 = _objc_retain(selfCopy);
  v11 = _objc_retain(location[0]);
  v4.receiver = v3;
  v4.super_class = AKDeviceListRequestProvider;
  [(AKURLRequestProviderImpl *)&v4 requestURLWithCompletion:?];
  objc_storeStrong(&v11, 0);
  objc_storeStrong(&v10, 0);
  objc_storeStrong(location, 0);
}

@end