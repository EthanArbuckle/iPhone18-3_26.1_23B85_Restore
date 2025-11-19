@interface AKServiceControllerImpl
- (AKServiceControllerImpl)initWithRequestProvider:(id)a3;
- (void)executeRequestWithCompletion:(id)a3;
- (void)setAuthenticationDelegate:(id)a3;
@end

@implementation AKServiceControllerImpl

- (AKServiceControllerImpl)initWithRequestProvider:(id)a3
{
  v10 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v3 = v10;
  v10 = 0;
  v8 = [(AKServiceControllerImpl *)v3 init];
  v10 = v8;
  objc_storeStrong(&v10, v8);
  if (v8)
  {
    objc_storeStrong(&v10->_requestProvider, location[0]);
    v4 = +[AKRequestDispatcher sharedDispatcher];
    requestDispatcher = v10->_requestDispatcher;
    v10->_requestDispatcher = v4;
    _objc_release(requestDispatcher);
  }

  v7 = _objc_retain(v10);
  objc_storeStrong(location, 0);
  objc_storeStrong(&v10, 0);
  return v7;
}

- (void)setAuthenticationDelegate:(id)a3
{
  v4 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  objc_storeStrong(&v4->_reauthHandler, location[0]);
  objc_storeStrong(location, 0);
}

- (void)executeRequestWithCompletion:(id)a3
{
  v15 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v5 = [AKDispatchableURLRequest alloc];
  requestProvider = v15->_requestProvider;
  reauthHandler = v15->_reauthHandler;
  v7 = _NSConcreteStackBlock;
  v8 = -1073741824;
  v9 = 0;
  v10 = sub_1000D9DA8;
  v11 = &unk_100322DF8;
  v12 = _objc_retain(location[0]);
  v13 = [(AKDispatchableURLRequest *)v5 initWithURLRequestProvider:requestProvider authenticationHandler:reauthHandler completionHandler:&v7];
  v6 = [(AKServiceControllerImpl *)v15 requestDispatcher];
  [(AKRequestDispatcher *)v6 submitDispatchableRequest:v13];
  _objc_release(v6);
  objc_storeStrong(&v13, 0);
  objc_storeStrong(&v12, 0);
  objc_storeStrong(location, 0);
}

@end