@interface AKPrivateEmailRequestProvider
- (void)requestURLWithCompletion:(id)a3;
@end

@implementation AKPrivateEmailRequestProvider

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
  v8 = sub_1000D8EEC;
  v9 = &unk_100322D70;
  v10 = _objc_retain(v13);
  v11 = _objc_retain(location[0]);
  v4.receiver = v3;
  v4.super_class = AKPrivateEmailRequestProvider;
  [(AKURLRequestProviderImpl *)&v4 requestURLWithCompletion:?];
  objc_storeStrong(&v11, 0);
  objc_storeStrong(&v10, 0);
  objc_storeStrong(location, 0);
}

@end