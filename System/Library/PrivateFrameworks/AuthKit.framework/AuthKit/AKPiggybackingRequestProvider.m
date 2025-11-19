@interface AKPiggybackingRequestProvider
- (AKPiggybackingRequestProvider)initWithCircleContext:(id)a3;
- (BOOL)signRequest:(id)a3 error:(id *)a4;
- (id)authKitBody;
@end

@implementation AKPiggybackingRequestProvider

- (AKPiggybackingRequestProvider)initWithCircleContext:(id)a3
{
  v8 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v3 = v8;
  v8 = 0;
  v6 = [(AKURLRequestProviderImpl *)v3 initWithUrlBagKey:AKURLBagKeyCircle];
  v8 = v6;
  objc_storeStrong(&v8, v6);
  if (v6)
  {
    objc_storeStrong(&v8->_circleContext, location[0]);
  }

  v5 = _objc_retain(v8);
  objc_storeStrong(location, 0);
  objc_storeStrong(&v8, 0);
  return v5;
}

- (id)authKitBody
{
  v44 = self;
  v43[1] = a2;
  v43[0] = [&__NSDictionary0__struct mutableCopy];
  v33 = [(AKCircleRequestContext *)v44->_circleContext payload];
  v32 = [v33 clientInfo];
  v42 = [v32 base64EncodedStringWithOptions:0];
  _objc_release(v32);
  _objc_release(v33);
  if (v42)
  {
    [v43[0] setObject:v42 forKeyedSubscript:AKPakeDataKey];
  }

  else
  {
    location = _AKLogSystem();
    v40 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(location, OS_LOG_TYPE_DEFAULT))
    {
      v30 = location;
      v31 = v40;
      sub_10001CEEC(v39);
      _os_log_impl(&_mh_execute_header, v30, v31, "Missing client info for circle request", v39, 2u);
    }

    objc_storeStrong(&location, 0);
  }

  v29 = [(AKCircleRequestContext *)v44->_circleContext payload];
  v38 = [v29 presenceSID];
  _objc_release(v29);
  if (v38)
  {
    v28 = [v38 UUIDString];
    v27 = [v28 lowercaseString];
    [v43[0] setObject:? forKeyedSubscript:?];
    _objc_release(v27);
    _objc_release(v28);
  }

  v22 = [(AKCircleRequestContext *)v44->_circleContext payload];
  v21 = [v22 presenceCheckPassed];
  v20 = [v21 ak_BOOLeanAsInteger];
  [v43[0] setObject:? forKeyedSubscript:?];
  _objc_release(v20);
  _objc_release(v21);
  _objc_release(v22);
  v25 = [(AKCircleRequestContext *)v44->_circleContext payload];
  v24 = [v25 localPresenceFound];
  v23 = [v24 ak_BOOLeanAsInteger];
  [v43[0] setObject:? forKeyedSubscript:?];
  _objc_release(v23);
  _objc_release(v24);
  _objc_release(v25);
  v26 = [(AKCircleRequestContext *)v44->_circleContext pushToken];
  _objc_release(v26);
  if (v26)
  {
    v19 = [(AKCircleRequestContext *)v44->_circleContext pushToken];
    [v43[0] setObject:? forKeyedSubscript:?];
    _objc_release(v19);
  }

  else
  {
    v37 = _AKLogSystem();
    v36 = 16;
    if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
    {
      log = v37;
      type = v36;
      sub_10001CEEC(v35);
      _os_log_error_impl(&_mh_execute_header, log, type, "Missing push token for circle request", v35, 2u);
    }

    objc_storeStrong(&v37, 0);
  }

  v16 = [(AKCircleRequestContext *)v44->_circleContext payload];
  v34 = [v16 serverInfo];
  _objc_release(v16);
  if (v34)
  {
    [v43[0] setObject:v34 forKeyedSubscript:AKIdmsDataKey];
  }

  v14 = [(AKCircleRequestContext *)v44->_circleContext payload];
  v15 = [v14 transactionId];
  _objc_release(v15);
  _objc_release(v14);
  if (v15)
  {
    v13 = [(AKCircleRequestContext *)v44->_circleContext payload];
    v12 = [v13 transactionId];
    [v43[0] setObject:? forKeyedSubscript:?];
    _objc_release(v12);
    _objc_release(v13);
  }

  v10 = [(AKCircleRequestContext *)v44->_circleContext payload];
  v11 = [v10 clientErrorCode];
  _objc_release(v10);
  if (v11)
  {
    v9 = [(AKCircleRequestContext *)v44->_circleContext payload];
    v8 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [v9 clientErrorCode]);
    [v43[0] setObject:? forKeyedSubscript:?];
    _objc_release(v8);
    _objc_release(v9);
  }

  v4 = [(AKCircleRequestContext *)v44->_circleContext payload];
  v3 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v4 circleStep]);
  [v43[0] setObject:? forKeyedSubscript:?];
  _objc_release(v3);
  _objc_release(v4);
  v6 = [(AKCircleRequestContext *)v44->_circleContext payload];
  v5 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v6 piggybackingContext]);
  [v43[0] setObject:? forKeyedSubscript:?];
  _objc_release(v5);
  _objc_release(v6);
  v7 = [v43[0] copy];
  objc_storeStrong(&v34, 0);
  objc_storeStrong(&v38, 0);
  objc_storeStrong(&v42, 0);
  objc_storeStrong(v43, 0);

  return v7;
}

- (BOOL)signRequest:(id)a3 error:(id *)a4
{
  v33 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v31[1] = a4;
  v23 = [AKAppleIDServerResourceLoadDelegate alloc];
  v26 = [(AKCircleRequestContext *)v33->_circleContext payload];
  v25 = [v26 altDSID];
  v24 = [(AKCircleRequestContext *)v33->_circleContext identityTokenValue];
  v31[0] = [v23 initWithAltDSID:v25 identityToken:?];
  _objc_release(v24);
  _objc_release(v25);
  _objc_release(v26);
  [v31[0] setBagUrlKey:AKURLBagKeyCircle];
  v27 = [(AKCircleRequestContext *)v33->_circleContext heartbeatTokenValue];
  _objc_release(v27);
  if (v27)
  {
    v21 = [(AKCircleRequestContext *)v33->_circleContext heartbeatTokenValue];
    [v31[0] setHeartbeatToken:?];
    _objc_release(v21);
    v30 = +[NSXPCConnection currentConnection];
    if (v30)
    {
      v29 = [[AKClient alloc] initWithConnection:v30];
      v17 = v31[0];
      v18 = [(AKClient *)v29 name];
      [v17 setClientAppName:?];
      _objc_release(v18);
      v19 = v31[0];
      v20 = [(AKClient *)v29 bundleID];
      [v19 setClientBundleID:?];
      _objc_release(v20);
      objc_storeStrong(&v29, 0);
    }

    objc_storeStrong(&v30, 0);
  }

  v14 = +[AKAccountManager sharedInstance];
  v13 = [(AKCircleRequestContext *)v33->_circleContext payload];
  v12 = [v13 altDSID];
  v28 = [AKAccountManager authKitAccountWithAltDSID:v14 error:"authKitAccountWithAltDSID:error:"];
  _objc_release(v12);
  _objc_release(v13);
  _objc_release(v14);
  v15 = +[AKAccountManager sharedInstance];
  v16 = [(AKAccountManager *)v15 accountIdentifiableTelemetryForAccount:v28];
  _objc_release(v15);
  if (v16)
  {
    v6 = v31[0];
    v8 = [(AKCircleRequestContext *)v33->_circleContext authContext];
    v7 = [v8 telemetryFlowID];
    [v6 setTelemetryFlowID:?];
    _objc_release(v7);
    _objc_release(v8);
    v9 = v31[0];
    v11 = [(AKCircleRequestContext *)v33->_circleContext authContext];
    v10 = [v11 telemetryDeviceSessionID];
    [v9 setTelemetryDeviceSessionID:?];
    _objc_release(v10);
    _objc_release(v11);
  }

  [v31[0] decorateWithCircleRequestContext:{v33->_circleContext, v31}];
  [v31[0] signRequestWithCommonHeaders:location[0]];
  objc_storeStrong(&v28, 0);
  objc_storeStrong(v5, 0);
  objc_storeStrong(location, 0);
  return 1;
}

@end