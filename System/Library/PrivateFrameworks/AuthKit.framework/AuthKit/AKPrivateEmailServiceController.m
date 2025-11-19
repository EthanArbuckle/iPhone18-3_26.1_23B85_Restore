@interface AKPrivateEmailServiceController
- (AKPrivateEmailServiceController)initWithClient:(id)a3 altDSID:(id)a4;
- (id)_constructRequestProviderForClient:(id)a3 altDSID:(id)a4;
- (void)executeFetchHmeListRequestWithCompletion:(id)a3;
@end

@implementation AKPrivateEmailServiceController

- (AKPrivateEmailServiceController)initWithClient:(id)a3 altDSID:(id)a4
{
  v13 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v11 = 0;
  objc_storeStrong(&v11, a4);
  v10 = [v13 _constructRequestProviderForClient:location[0] altDSID:v11];
  if (v10 && (v4 = v13, v13 = 0, v9.receiver = v4, v9.super_class = AKPrivateEmailServiceController, v7 = [(AKServiceControllerImpl *)&v9 initWithRequestProvider:v10], v13 = v7, objc_storeStrong(&v13, v7), v7))
  {
    objc_storeStrong(v13 + 4, location[0]);
    objc_storeStrong(v13 + 5, v11);
    *(v13 + 48) = 0;
  }

  else
  {
    objc_storeStrong(&v13, 0);
  }

  v6 = _objc_retain(v13);
  objc_storeStrong(&v10, 0);
  objc_storeStrong(&v11, 0);
  objc_storeStrong(location, 0);
  objc_storeStrong(&v13, 0);
  return v6;
}

- (void)executeFetchHmeListRequestWithCompletion:(id)a3
{
  v12 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v3 = v12;
  v4 = _NSConcreteStackBlock;
  v5 = -1073741824;
  v6 = 0;
  v7 = sub_1000D92EC;
  v8 = &unk_100321898;
  v10 = _objc_retain(location[0]);
  v9 = _objc_retain(v12);
  [(AKServiceControllerImpl *)v3 executeRequestWithCompletion:?];
  objc_storeStrong(&v9, 0);
  objc_storeStrong(&v10, 0);
  objc_storeStrong(location, 0);
}

- (id)_constructRequestProviderForClient:(id)a3 altDSID:(id)a4
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v10 = 0;
  objc_storeStrong(&v10, a4);
  v9 = objc_opt_new();
  [v9 setAltDSID:v10];
  v4 = [AKPrivateEmailRequestProvider alloc];
  v8 = [(AKURLRequestProviderImpl *)v4 initWithContext:v9 urlBagKey:AKURLBagKeyPrivateEmailFetchList];
  [(AKURLRequestProviderImpl *)v8 setClient:location[0]];
  [(AKGrandSlamRequestProvider *)v8 setAuthenticatedRequest:1];
  [(AKGrandSlamRequestProvider *)v8 setExpectedResponseType:1];
  v7 = _objc_retain(v8);
  objc_storeStrong(&v8, 0);
  objc_storeStrong(&v9, 0);
  objc_storeStrong(&v10, 0);
  objc_storeStrong(location, 0);

  return v7;
}

@end