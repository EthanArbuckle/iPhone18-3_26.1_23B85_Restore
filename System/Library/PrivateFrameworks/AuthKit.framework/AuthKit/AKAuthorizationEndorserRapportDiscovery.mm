@interface AKAuthorizationEndorserRapportDiscovery
- (AKAuthorizationEndorserRapportDiscovery)initWithClient:(id)client;
- (BOOL)activateWithError:(id *)error;
- (void)_handleFoundDevice:(id)device;
- (void)authorizationEndorserRapportClientDidFinish:(id)finish;
- (void)deactivate;
@end

@implementation AKAuthorizationEndorserRapportDiscovery

- (AKAuthorizationEndorserRapportDiscovery)initWithClient:(id)client
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, client);
  v3 = selfCopy;
  selfCopy = 0;
  v6.receiver = v3;
  v6.super_class = AKAuthorizationEndorserRapportDiscovery;
  selfCopy = [(AKAuthorizationEndorserRapportDiscovery *)&v6 init];
  objc_storeStrong(&selfCopy, selfCopy);
  if (selfCopy)
  {
    objc_storeStrong(&selfCopy->_client, location[0]);
  }

  v5 = _objc_retain(selfCopy);
  objc_storeStrong(location, 0);
  objc_storeStrong(&selfCopy, 0);
  return v5;
}

- (BOOL)activateWithError:(id *)error
{
  selfCopy = self;
  v31 = a2;
  errorCopy = error;
  if ([(AKClient *)self->_client hasOwnerAccess])
  {
    if (selfCopy->_deviceDiscovery)
    {
      if (errorCopy)
      {
        v11 = [NSError ak_errorWithCode:-7071];
        v4 = v11;
        *errorCopy = v11;
      }

      v33 = 0;
    }

    else
    {
      location = _AKLogSiwa();
      v28 = OS_LOG_TYPE_DEFAULT;
      if (os_log_type_enabled(location, OS_LOG_TYPE_DEFAULT))
      {
        log = location;
        type = v28;
        sub_10001CEEC(v27);
        _os_log_impl(&_mh_execute_header, log, type, "Authorization Endorser discovery activated.", v27, 2u);
      }

      objc_storeStrong(&location, 0);
      if (sub_100102A40(0))
      {
        v5 = objc_alloc_init(sub_100102C90());
      }

      else
      {
        v5 = objc_alloc_init(0);
      }

      v26 = v5;
      [v5 setControlFlags:0x4000000];
      objc_storeStrong(&selfCopy->_deviceDiscovery, v26);
      objc_initWeak(&v25, selfCopy);
      v8 = v26;
      v19 = _NSConcreteStackBlock;
      v20 = -1073741824;
      v21 = 0;
      v22 = sub_1000C5138;
      v23 = &unk_100322500;
      objc_copyWeak(&v24, &v25);
      [v8 setDeviceFoundHandler:&v19];
      v7 = v26;
      v13 = _NSConcreteStackBlock;
      v14 = -1073741824;
      v15 = 0;
      v16 = sub_1000C51B0;
      v17 = &unk_100322528;
      objc_copyWeak(&v18, &v25);
      [v7 activateWithCompletion:&v13];
      v33 = 1;
      objc_destroyWeak(&v18);
      objc_destroyWeak(&v24);
      objc_destroyWeak(&v25);
      objc_storeStrong(&v26, 0);
    }
  }

  else
  {
    if (errorCopy)
    {
      v12 = [NSError ak_errorWithCode:-7026];
      v3 = v12;
      *errorCopy = v12;
    }

    v33 = 0;
  }

  return v33 & 1;
}

- (void)deactivate
{
  selfCopy = self;
  location[1] = a2;
  [(RPCompanionLinkClient *)self->_deviceDiscovery invalidate];
  objc_storeStrong(&selfCopy->_deviceDiscovery, 0);
  if (selfCopy->_didDeactivateBlock)
  {
    (*(selfCopy->_didDeactivateBlock + 2))();
  }

  location[0] = _AKLogSiwa();
  v5 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(location[0], OS_LOG_TYPE_DEFAULT))
  {
    log = location[0];
    type = v5;
    sub_10001CEEC(v4);
    _os_log_impl(&_mh_execute_header, log, type, "Authorization Endorser discovery deactivated.", v4, 2u);
  }

  objc_storeStrong(location, 0);
}

- (void)authorizationEndorserRapportClientDidFinish:(id)finish
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, finish);
  [(AKAuthorizationEndorserRapportDiscovery *)selfCopy deactivate];
  objc_storeStrong(location, 0);
}

- (void)_handleFoundDevice:(id)device
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, device);
  if (selfCopy->_authorizationEndorser)
  {
    oslog = _AKLogSiwa();
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
    {
      sub_1000194D4(v10, location[0]);
      _os_log_impl(&_mh_execute_header, oslog, OS_LOG_TYPE_DEFAULT, "Authorization Endorser already in progress, ignoring device found. {device=%@}", v10, 0xCu);
    }

    objc_storeStrong(&oslog, 0);
  }

  else
  {
    v5 = [AKAuthorizationEndorserRapportClient alloc];
    identifier = [location[0] identifier];
    v3 = [(AKAuthorizationEndorserRapportClient *)v5 initWithDeviceID:?];
    authorizationEndorser = selfCopy->_authorizationEndorser;
    selfCopy->_authorizationEndorser = v3;
    _objc_release(authorizationEndorser);
    _objc_release(identifier);
    [(AKAuthorizationEndorserRapportClient *)selfCopy->_authorizationEndorser setDelegate:selfCopy];
    [(AKAuthorizationEndorserRapportClient *)selfCopy->_authorizationEndorser startAuthorization];
    [(RPCompanionLinkClient *)selfCopy->_deviceDiscovery invalidate];
  }

  objc_storeStrong(location, 0);
}

@end