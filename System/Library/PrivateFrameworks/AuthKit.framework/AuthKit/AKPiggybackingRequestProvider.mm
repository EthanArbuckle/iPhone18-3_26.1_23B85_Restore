@interface AKPiggybackingRequestProvider
- (AKPiggybackingRequestProvider)initWithCircleContext:(id)context;
- (BOOL)signRequest:(id)request error:(id *)error;
- (id)authKitBody;
@end

@implementation AKPiggybackingRequestProvider

- (AKPiggybackingRequestProvider)initWithCircleContext:(id)context
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, context);
  v3 = selfCopy;
  selfCopy = 0;
  v6 = [(AKURLRequestProviderImpl *)v3 initWithUrlBagKey:AKURLBagKeyCircle];
  selfCopy = v6;
  objc_storeStrong(&selfCopy, v6);
  if (v6)
  {
    objc_storeStrong(&selfCopy->_circleContext, location[0]);
  }

  v5 = _objc_retain(selfCopy);
  objc_storeStrong(location, 0);
  objc_storeStrong(&selfCopy, 0);
  return v5;
}

- (id)authKitBody
{
  selfCopy = self;
  v43[1] = a2;
  v43[0] = [&__NSDictionary0__struct mutableCopy];
  payload = [(AKCircleRequestContext *)selfCopy->_circleContext payload];
  clientInfo = [payload clientInfo];
  v42 = [clientInfo base64EncodedStringWithOptions:0];
  _objc_release(clientInfo);
  _objc_release(payload);
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

  payload2 = [(AKCircleRequestContext *)selfCopy->_circleContext payload];
  presenceSID = [payload2 presenceSID];
  _objc_release(payload2);
  if (presenceSID)
  {
    uUIDString = [presenceSID UUIDString];
    lowercaseString = [uUIDString lowercaseString];
    [v43[0] setObject:? forKeyedSubscript:?];
    _objc_release(lowercaseString);
    _objc_release(uUIDString);
  }

  payload3 = [(AKCircleRequestContext *)selfCopy->_circleContext payload];
  presenceCheckPassed = [payload3 presenceCheckPassed];
  ak_BOOLeanAsInteger = [presenceCheckPassed ak_BOOLeanAsInteger];
  [v43[0] setObject:? forKeyedSubscript:?];
  _objc_release(ak_BOOLeanAsInteger);
  _objc_release(presenceCheckPassed);
  _objc_release(payload3);
  payload4 = [(AKCircleRequestContext *)selfCopy->_circleContext payload];
  localPresenceFound = [payload4 localPresenceFound];
  ak_BOOLeanAsInteger2 = [localPresenceFound ak_BOOLeanAsInteger];
  [v43[0] setObject:? forKeyedSubscript:?];
  _objc_release(ak_BOOLeanAsInteger2);
  _objc_release(localPresenceFound);
  _objc_release(payload4);
  pushToken = [(AKCircleRequestContext *)selfCopy->_circleContext pushToken];
  _objc_release(pushToken);
  if (pushToken)
  {
    pushToken2 = [(AKCircleRequestContext *)selfCopy->_circleContext pushToken];
    [v43[0] setObject:? forKeyedSubscript:?];
    _objc_release(pushToken2);
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

  payload5 = [(AKCircleRequestContext *)selfCopy->_circleContext payload];
  serverInfo = [payload5 serverInfo];
  _objc_release(payload5);
  if (serverInfo)
  {
    [v43[0] setObject:serverInfo forKeyedSubscript:AKIdmsDataKey];
  }

  payload6 = [(AKCircleRequestContext *)selfCopy->_circleContext payload];
  transactionId = [payload6 transactionId];
  _objc_release(transactionId);
  _objc_release(payload6);
  if (transactionId)
  {
    payload7 = [(AKCircleRequestContext *)selfCopy->_circleContext payload];
    transactionId2 = [payload7 transactionId];
    [v43[0] setObject:? forKeyedSubscript:?];
    _objc_release(transactionId2);
    _objc_release(payload7);
  }

  payload8 = [(AKCircleRequestContext *)selfCopy->_circleContext payload];
  clientErrorCode = [payload8 clientErrorCode];
  _objc_release(payload8);
  if (clientErrorCode)
  {
    payload9 = [(AKCircleRequestContext *)selfCopy->_circleContext payload];
    v8 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [payload9 clientErrorCode]);
    [v43[0] setObject:? forKeyedSubscript:?];
    _objc_release(v8);
    _objc_release(payload9);
  }

  payload10 = [(AKCircleRequestContext *)selfCopy->_circleContext payload];
  v3 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [payload10 circleStep]);
  [v43[0] setObject:? forKeyedSubscript:?];
  _objc_release(v3);
  _objc_release(payload10);
  payload11 = [(AKCircleRequestContext *)selfCopy->_circleContext payload];
  v5 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [payload11 piggybackingContext]);
  [v43[0] setObject:? forKeyedSubscript:?];
  _objc_release(v5);
  _objc_release(payload11);
  v7 = [v43[0] copy];
  objc_storeStrong(&serverInfo, 0);
  objc_storeStrong(&presenceSID, 0);
  objc_storeStrong(&v42, 0);
  objc_storeStrong(v43, 0);

  return v7;
}

- (BOOL)signRequest:(id)request error:(id *)error
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, request);
  v31[1] = error;
  v23 = [AKAppleIDServerResourceLoadDelegate alloc];
  payload = [(AKCircleRequestContext *)selfCopy->_circleContext payload];
  altDSID = [payload altDSID];
  identityTokenValue = [(AKCircleRequestContext *)selfCopy->_circleContext identityTokenValue];
  v31[0] = [v23 initWithAltDSID:altDSID identityToken:?];
  _objc_release(identityTokenValue);
  _objc_release(altDSID);
  _objc_release(payload);
  [v31[0] setBagUrlKey:AKURLBagKeyCircle];
  heartbeatTokenValue = [(AKCircleRequestContext *)selfCopy->_circleContext heartbeatTokenValue];
  _objc_release(heartbeatTokenValue);
  if (heartbeatTokenValue)
  {
    heartbeatTokenValue2 = [(AKCircleRequestContext *)selfCopy->_circleContext heartbeatTokenValue];
    [v31[0] setHeartbeatToken:?];
    _objc_release(heartbeatTokenValue2);
    v30 = +[NSXPCConnection currentConnection];
    if (v30)
    {
      v29 = [[AKClient alloc] initWithConnection:v30];
      v17 = v31[0];
      name = [(AKClient *)v29 name];
      [v17 setClientAppName:?];
      _objc_release(name);
      v19 = v31[0];
      bundleID = [(AKClient *)v29 bundleID];
      [v19 setClientBundleID:?];
      _objc_release(bundleID);
      objc_storeStrong(&v29, 0);
    }

    objc_storeStrong(&v30, 0);
  }

  v14 = +[AKAccountManager sharedInstance];
  payload2 = [(AKCircleRequestContext *)selfCopy->_circleContext payload];
  altDSID2 = [payload2 altDSID];
  v28 = [AKAccountManager authKitAccountWithAltDSID:v14 error:"authKitAccountWithAltDSID:error:"];
  _objc_release(altDSID2);
  _objc_release(payload2);
  _objc_release(v14);
  v15 = +[AKAccountManager sharedInstance];
  v16 = [(AKAccountManager *)v15 accountIdentifiableTelemetryForAccount:v28];
  _objc_release(v15);
  if (v16)
  {
    v6 = v31[0];
    authContext = [(AKCircleRequestContext *)selfCopy->_circleContext authContext];
    telemetryFlowID = [authContext telemetryFlowID];
    [v6 setTelemetryFlowID:?];
    _objc_release(telemetryFlowID);
    _objc_release(authContext);
    v9 = v31[0];
    authContext2 = [(AKCircleRequestContext *)selfCopy->_circleContext authContext];
    telemetryDeviceSessionID = [authContext2 telemetryDeviceSessionID];
    [v9 setTelemetryDeviceSessionID:?];
    _objc_release(telemetryDeviceSessionID);
    _objc_release(authContext2);
  }

  [v31[0] decorateWithCircleRequestContext:{selfCopy->_circleContext, v31}];
  [v31[0] signRequestWithCommonHeaders:location[0]];
  objc_storeStrong(&v28, 0);
  objc_storeStrong(v5, 0);
  objc_storeStrong(location, 0);
  return 1;
}

@end