@interface AKServiceControllerImpl
- (AKServiceControllerImpl)initWithRequestProvider:(id)provider;
- (void)executeRequestWithCompletion:(id)completion;
- (void)setAuthenticationDelegate:(id)delegate;
@end

@implementation AKServiceControllerImpl

- (AKServiceControllerImpl)initWithRequestProvider:(id)provider
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, provider);
  v3 = selfCopy;
  selfCopy = 0;
  v8 = [(AKServiceControllerImpl *)v3 init];
  selfCopy = v8;
  objc_storeStrong(&selfCopy, v8);
  if (v8)
  {
    objc_storeStrong(&selfCopy->_requestProvider, location[0]);
    v4 = +[AKRequestDispatcher sharedDispatcher];
    requestDispatcher = selfCopy->_requestDispatcher;
    selfCopy->_requestDispatcher = v4;
    _objc_release(requestDispatcher);
  }

  v7 = _objc_retain(selfCopy);
  objc_storeStrong(location, 0);
  objc_storeStrong(&selfCopy, 0);
  return v7;
}

- (void)setAuthenticationDelegate:(id)delegate
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, delegate);
  objc_storeStrong(&selfCopy->_reauthHandler, location[0]);
  objc_storeStrong(location, 0);
}

- (void)executeRequestWithCompletion:(id)completion
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, completion);
  v5 = [AKDispatchableURLRequest alloc];
  requestProvider = selfCopy->_requestProvider;
  reauthHandler = selfCopy->_reauthHandler;
  v7 = _NSConcreteStackBlock;
  v8 = -1073741824;
  v9 = 0;
  v10 = sub_1000D9DA8;
  v11 = &unk_100322DF8;
  v12 = _objc_retain(location[0]);
  v13 = [(AKDispatchableURLRequest *)v5 initWithURLRequestProvider:requestProvider authenticationHandler:reauthHandler completionHandler:&v7];
  requestDispatcher = [(AKServiceControllerImpl *)selfCopy requestDispatcher];
  [(AKRequestDispatcher *)requestDispatcher submitDispatchableRequest:v13];
  _objc_release(requestDispatcher);
  objc_storeStrong(&v13, 0);
  objc_storeStrong(&v12, 0);
  objc_storeStrong(location, 0);
}

@end