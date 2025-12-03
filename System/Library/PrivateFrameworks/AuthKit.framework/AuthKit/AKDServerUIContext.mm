@interface AKDServerUIContext
+ (id)serverUIContextFromResponse:(id)response authContext:(id)context urlRequest:(id)request urlConfiguration:(id)configuration;
@end

@implementation AKDServerUIContext

+ (id)serverUIContextFromResponse:(id)response authContext:(id)context urlRequest:(id)request urlConfiguration:(id)configuration
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, response);
  v18 = 0;
  objc_storeStrong(&v18, context);
  v17 = 0;
  objc_storeStrong(&v17, request);
  v16 = 0;
  objc_storeStrong(&v16, configuration);
  v15 = objc_alloc_init(selfCopy);
  [v15 setInitiatingServerResponse:location[0]];
  [v15 setAuthContext:v18];
  v6 = [AKServerRequestConfiguration alloc];
  v11 = [v6 initWithRequest:v17 requestType:0];
  [v15 setRequestConfiguration:?];
  _objc_release(v11);
  v12 = v16;
  requestConfiguration = [v15 requestConfiguration];
  [requestConfiguration setUrlConfiguration:v12];
  _objc_release(requestConfiguration);
  v14 = _objc_retain(v15);
  objc_storeStrong(&v15, 0);
  objc_storeStrong(&v16, 0);
  objc_storeStrong(&v17, 0);
  objc_storeStrong(&v18, 0);
  objc_storeStrong(location, 0);

  return v14;
}

@end