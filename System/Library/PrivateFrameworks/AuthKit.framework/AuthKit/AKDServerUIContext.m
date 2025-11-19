@interface AKDServerUIContext
+ (id)serverUIContextFromResponse:(id)a3 authContext:(id)a4 urlRequest:(id)a5 urlConfiguration:(id)a6;
@end

@implementation AKDServerUIContext

+ (id)serverUIContextFromResponse:(id)a3 authContext:(id)a4 urlRequest:(id)a5 urlConfiguration:(id)a6
{
  v20 = a1;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v18 = 0;
  objc_storeStrong(&v18, a4);
  v17 = 0;
  objc_storeStrong(&v17, a5);
  v16 = 0;
  objc_storeStrong(&v16, a6);
  v15 = objc_alloc_init(v20);
  [v15 setInitiatingServerResponse:location[0]];
  [v15 setAuthContext:v18];
  v6 = [AKServerRequestConfiguration alloc];
  v11 = [v6 initWithRequest:v17 requestType:0];
  [v15 setRequestConfiguration:?];
  _objc_release(v11);
  v12 = v16;
  v13 = [v15 requestConfiguration];
  [v13 setUrlConfiguration:v12];
  _objc_release(v13);
  v14 = _objc_retain(v15);
  objc_storeStrong(&v15, 0);
  objc_storeStrong(&v16, 0);
  objc_storeStrong(&v17, 0);
  objc_storeStrong(&v18, 0);
  objc_storeStrong(location, 0);

  return v14;
}

@end