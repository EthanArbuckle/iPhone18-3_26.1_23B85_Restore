@interface AKAppleIDCheckInHelperService
+ (id)sharedService;
+ (void)_setCheckInAllowedToValue:(BOOL)value forAccount:(id)account;
+ (void)setCheckInAllowedForAllAccountsToValue:(BOOL)value;
- (AKAppleIDCheckInHelperService)init;
- (BOOL)_validateMachineID:(id)d;
- (id)_livenessEligibleAccounts;
- (id)_serviceControllerWithProvider:(id)provider;
- (void)_checkInWithIDMSWithAccount:(id)account pushToken:(id)token event:(id)event reason:(unint64_t)reason completion:(id)completion;
- (void)_clearBirthDayForAltDSID:(id)d;
- (void)_clearDeviceListCacheForAccount:(id)account;
- (void)_handleCheckInResponse:(id)response data:(id)data context:(id)context account:(id)account error:(id)error completion:(id)completion;
- (void)_performCheckInActionForAccount:(id)account withResponse:(id)response;
- (void)_performLivenessCheckInForAllEligibleAccountsWithReason:(unint64_t)reason completion:(id)completion;
- (void)_performLivenessCheckInForAllEligibleAccountsWithToken:(id)token reason:(unint64_t)reason completion:(id)completion;
- (void)_performSignoutCleanupForAccount:(id)account;
- (void)_sendAttestedOSVersionWithContext:(id)context attestationNonce:(id)nonce;
- (void)ackWithPayload:(id)payload account:(id)account completion:(id)completion;
- (void)didReceiveNewPublicToken:(id)token;
- (void)didRespondToMessage:(id)message result:(unint64_t)result payload:(id)payload;
- (void)didRespondToMessage:(id)message withResult:(unint64_t)result;
- (void)performCheckInForAccount:(id)account event:(id)event reason:(unint64_t)reason completion:(id)completion;
- (void)performLivenessCheckInForAllEligibleAccountsWithReason:(unint64_t)reason completion:(id)completion;
- (void)processPushMessage:(id)message;
- (void)reportFinalSignOutEventForAccount:(id)account completion:(id)completion;
- (void)reportSignOutEventForService:(int64_t)service account:(id)account completion:(id)completion;
- (void)start;
- (void)storeLivenessNonce:(id)nonce nonce:(id)a4;
@end

@implementation AKAppleIDCheckInHelperService

- (AKAppleIDCheckInHelperService)init
{
  v12 = a2;
  v13 = 0;
  v11.receiver = self;
  v11.super_class = AKAppleIDCheckInHelperService;
  v13 = [(AKAppleIDCheckInHelperService *)&v11 init];
  objc_storeStrong(&v13, v13);
  if (v13)
  {
    v2 = +[AKAccountManager sharedInstance];
    accountManager = v13->_accountManager;
    v13->_accountManager = v2;
    _objc_release(accountManager);
    v10 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v4 = dispatch_queue_create("AKCheckInQueue", v10);
    checkInQueue = v13->_checkInQueue;
    v13->_checkInQueue = v4;
    _objc_release(checkInQueue);
    _objc_release(v10);
    v6 = +[AKStrongDeviceIdentitySigner sharedSigner];
    strongDeviceIdentitySigner = v13->_strongDeviceIdentitySigner;
    v13->_strongDeviceIdentitySigner = v6;
    _objc_release(strongDeviceIdentitySigner);
  }

  v9 = _objc_retain(v13);
  objc_storeStrong(&v13, 0);
  return v9;
}

+ (id)sharedService
{
  v5 = &unk_100374810;
  location = 0;
  objc_storeStrong(&location, &stru_100324118);
  if (*v5 != -1)
  {
    dispatch_once(v5, location);
  }

  objc_storeStrong(&location, 0);
  v2 = qword_100374808;

  return v2;
}

+ (void)setCheckInAllowedForAllAccountsToValue:(BOOL)value
{
  selfCopy = self;
  v13 = a2;
  valueCopy = value;
  v4 = +[AKAccountManager sharedInstance];
  v3 = [(AKAccountManager *)v4 allAuthKitAccountsWithError:0];
  v5 = _NSConcreteStackBlock;
  v6 = -1073741824;
  v7 = 0;
  v8 = sub_10012E430;
  v9 = &unk_100324138;
  v10 = selfCopy;
  v11 = valueCopy;
  [v3 enumerateObjectsUsingBlock:?];
  _objc_release(v3);
  _objc_release(v4);
}

- (void)performLivenessCheckInForAllEligibleAccountsWithReason:(unint64_t)reason completion:(id)completion
{
  selfCopy = self;
  v18 = a2;
  reasonCopy = reason;
  location = 0;
  objc_storeStrong(&location, completion);
  v15 = os_transaction_create();
  v5 = selfCopy;
  v7 = +[AKAppleIDPushHelperService sharedService];
  publicAPSTokenString = [v7 publicAPSTokenString];
  v4 = reasonCopy;
  v8 = _NSConcreteStackBlock;
  v9 = -1073741824;
  v10 = 0;
  v11 = sub_10012E650;
  v12 = &unk_100320878;
  v13 = _objc_retain(v15);
  v14 = _objc_retain(location);
  [(AKAppleIDCheckInHelperService *)v5 _performLivenessCheckInForAllEligibleAccountsWithToken:publicAPSTokenString reason:v4 completion:?];
  _objc_release(publicAPSTokenString);
  _objc_release(v7);
  objc_storeStrong(&v14, 0);
  objc_storeStrong(&v13, 0);
  objc_storeStrong(&v15, 0);
  objc_storeStrong(&location, 0);
}

- (void)performCheckInForAccount:(id)account event:(id)event reason:(unint64_t)reason completion:(id)completion
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, account);
  v23 = 0;
  objc_storeStrong(&v23, event);
  reasonCopy = reason;
  v21 = 0;
  objc_storeStrong(&v21, completion);
  v20 = os_transaction_create();
  queue = selfCopy->_checkInQueue;
  v10 = _NSConcreteStackBlock;
  v11 = -1073741824;
  v12 = 0;
  v13 = sub_10012E8C4;
  v14 = &unk_100324160;
  v15 = _objc_retain(selfCopy);
  v16 = _objc_retain(location[0]);
  v17 = _objc_retain(v23);
  v19[1] = reasonCopy;
  v19[0] = _objc_retain(v21);
  v18 = _objc_retain(v20);
  dispatch_async(queue, &v10);
  objc_storeStrong(&v18, 0);
  objc_storeStrong(v19, 0);
  objc_storeStrong(&v17, 0);
  objc_storeStrong(&v16, 0);
  objc_storeStrong(&v15, 0);
  objc_storeStrong(&v20, 0);
  objc_storeStrong(&v21, 0);
  objc_storeStrong(&v23, 0);
  objc_storeStrong(location, 0);
}

- (void)processPushMessage:(id)message
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, message);
  v11 = selfCopy;
  serverMachineId = [location[0] serverMachineId];
  v13 = [(AKAppleIDCheckInHelperService *)v11 _validateMachineID:?];
  _objc_release(serverMachineId);
  if (v13)
  {
    accountManager = selfCopy->_accountManager;
    altDSID = [location[0] altDSID];
    v15 = [AKAccountManager authKitAccountWithAltDSID:"authKitAccountWithAltDSID:error:" error:?];
    _objc_release(altDSID);
    if (v15)
    {
      v14 = +[NSMutableDictionary dictionary];
      messageId = [location[0] messageId];
      [v14 setObject:? forKeyedSubscript:?];
      _objc_release(messageId);
      v8 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [location[0] command]);
      [v14 setObject:? forKeyedSubscript:?];
      _objc_release(v8);
      if ([location[0] command] == 1500)
      {
        [AKAppleIDCheckInHelperService _setCheckInAllowedToValue:0 forAccount:v15];
      }

      else if ([location[0] command] == 2200)
      {
        idmsData = [location[0] idmsData];
        _objc_release(idmsData);
        if (idmsData)
        {
          idmsData2 = [location[0] idmsData];
          [v14 setObject:? forKeyedSubscript:?];
          _objc_release(idmsData2);
        }
      }

      [(AKAppleIDCheckInHelperService *)selfCopy ackWithPayload:v14 account:v15 completion:&v14, 0];
      objc_storeStrong(v3, obj);
    }

    objc_storeStrong(&v15, 0);
  }

  objc_storeStrong(location, 0);
}

- (void)didRespondToMessage:(id)message withResult:(unint64_t)result
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, message);
  [(AKAppleIDCheckInHelperService *)selfCopy didRespondToMessage:location[0] result:result payload:0];
  objc_storeStrong(location, 0);
}

- (void)didRespondToMessage:(id)message result:(unint64_t)result payload:(id)payload
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, message);
  resultCopy = result;
  v25 = 0;
  objc_storeStrong(&v25, payload);
  if (resultCopy == 2)
  {
    v24 = 1;
  }

  else
  {
    messageId = [location[0] messageId];
    _objc_release(messageId);
    if (messageId)
    {
      v20 = 0;
      if (resultCopy)
      {
        if (resultCopy == 1)
        {
          objc_storeStrong(&v20, @"defbtn");
        }

        else
        {
          objc_storeStrong(&v20, @"none");
        }
      }

      else
      {
        objc_storeStrong(&v20, @"albtn");
      }

      accountManager = selfCopy->_accountManager;
      altDSID = [location[0] altDSID];
      v19 = [AKAccountManager authKitAccountWithAltDSID:"authKitAccountWithAltDSID:error:" error:?];
      _objc_release(altDSID);
      if (v19)
      {
        v18 = objc_alloc_init(NSMutableDictionary);
        if (v25)
        {
          [v18 addEntriesFromDictionary:v25];
        }

        messageId2 = [location[0] messageId];
        [v18 setObject:? forKeyedSubscript:?];
        _objc_release(messageId2);
        v7 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [location[0] command]);
        [v18 setObject:? forKeyedSubscript:?];
        _objc_release(v7);
        [v18 setObject:v20 forKeyedSubscript:@"action"];
        v8 = selfCopy;
        v9 = [v18 copy];
        [AKAppleIDCheckInHelperService ackWithPayload:v8 account:"ackWithPayload:account:completion:" completion:?];
        _objc_release(v9);
        objc_storeStrong(&v18, 0);
      }

      else
      {
        v17 = _AKLogSystem();
        if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
        {
          altDSID2 = [location[0] altDSID];
          sub_10001CE98(v29, 1752392040, altDSID2);
          _os_log_error_impl(&_mh_execute_header, v17, OS_LOG_TYPE_ERROR, "Unable to respond to message without AK account for altDSID %{mask.hash}@", v29, 0x16u);
          _objc_release(altDSID2);
        }

        objc_storeStrong(&v17, 0);
      }

      objc_storeStrong(&v19, 0);
      objc_storeStrong(&v20, 0);
      v24 = 0;
    }

    else
    {
      v23 = _AKLogSystem();
      v22 = 16;
      if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
      {
        log = v23;
        type = v22;
        sub_10001CEEC(v21);
        _os_log_error_impl(&_mh_execute_header, log, type, "Unable to respond to message with invalid id", v21, 2u);
      }

      objc_storeStrong(&v23, 0);
      v24 = 1;
    }
  }

  objc_storeStrong(&v25, 0);
  objc_storeStrong(location, 0);
}

- (void)didReceiveNewPublicToken:(id)token
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, token);
  v11 = os_transaction_create();
  v4 = selfCopy;
  v3 = location[0];
  v5 = _NSConcreteStackBlock;
  v6 = -1073741824;
  v7 = 0;
  v8 = sub_10012F390;
  v9 = &unk_10031F8B0;
  v10 = _objc_retain(v11);
  [(AKAppleIDCheckInHelperService *)v4 _performLivenessCheckInForAllEligibleAccountsWithToken:v3 reason:2 completion:?];
  objc_storeStrong(&v10, 0);
  objc_storeStrong(&v11, 0);
  objc_storeStrong(location, 0);
}

- (void)ackWithPayload:(id)payload account:(id)account completion:(id)completion
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, payload);
  v20 = 0;
  objc_storeStrong(&v20, account);
  v19 = 0;
  objc_storeStrong(&v19, completion);
  v18 = os_transaction_create();
  queue = selfCopy->_checkInQueue;
  v8 = _NSConcreteStackBlock;
  v9 = -1073741824;
  v10 = 0;
  v11 = sub_10012F5B4;
  v12 = &unk_100324188;
  v13 = _objc_retain(location[0]);
  v14 = _objc_retain(v20);
  v15 = _objc_retain(selfCopy);
  v17 = _objc_retain(v19);
  v16 = _objc_retain(v18);
  dispatch_async(queue, &v8);
  objc_storeStrong(&v16, 0);
  objc_storeStrong(&v17, 0);
  objc_storeStrong(&v15, 0);
  objc_storeStrong(&v14, 0);
  objc_storeStrong(&v13, 0);
  objc_storeStrong(&v18, 0);
  objc_storeStrong(&v19, 0);
  objc_storeStrong(&v20, 0);
  objc_storeStrong(location, 0);
}

- (void)start
{
  selfCopy = self;
  location[1] = a2;
  location[0] = _AKLogSystem();
  v9 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(location[0], OS_LOG_TYPE_DEFAULT))
  {
    sub_100038C7C(v12, off_1003715E0);
    _os_log_impl(&_mh_execute_header, location[0], v9, "Registering for XPC activity: %s...", v12, 0xCu);
  }

  objc_storeStrong(location, 0);
  identifier = off_1003715E0;
  v3 = _NSConcreteStackBlock;
  v4 = -1073741824;
  v5 = 0;
  v6 = sub_10012FB9C;
  v7 = &unk_100320E78;
  v8 = _objc_retain(selfCopy);
  xpc_activity_register(identifier, XPC_ACTIVITY_CHECK_IN, &v3);
  objc_storeStrong(&v8, 0);
}

- (void)reportFinalSignOutEventForAccount:(id)account completion:(id)completion
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, account);
  v23 = 0;
  objc_storeStrong(&v23, completion);
  v21 = _os_activity_create(&_mh_execute_header, "authkit/sign-out", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
  v22 = v21;
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v21, &state);
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_100130218;
  v15[3] = &unk_1003217F8;
  v16 = _objc_retain(selfCopy);
  v17 = _objc_retain(location[0]);
  v18 = _objc_retain(v23);
  v19 = objc_retainBlock(v15);
  v5 = +[AKURLBag sharedBag];
  v4 = AKURLBagKeySignout;
  v7 = _NSConcreteStackBlock;
  v8 = -1073741824;
  v9 = 0;
  v10 = sub_1001302B0;
  v11 = &unk_100323998;
  v12 = _objc_retain(selfCopy);
  v13 = _objc_retain(location[0]);
  v14 = _objc_retain(v19);
  [v5 urlForKey:v4 completion:&v7];
  _objc_release(v5);
  objc_storeStrong(&v14, 0);
  objc_storeStrong(&v13, 0);
  objc_storeStrong(&v12, 0);
  objc_storeStrong(&v19, 0);
  objc_storeStrong(&v18, 0);
  objc_storeStrong(&v17, 0);
  objc_storeStrong(&v16, 0);
  os_activity_scope_leave(&state);
  objc_storeStrong(&v22, 0);
  objc_storeStrong(&v23, 0);
  objc_storeStrong(location, 0);
}

- (void)_performSignoutCleanupForAccount:(id)account
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, account);
  v11 = +[AKFeatureManager sharedManager];
  isDeviceListCacheEnableDryMode = [v11 isDeviceListCacheEnableDryMode];
  _objc_release(v11);
  if (isDeviceListCacheEnableDryMode)
  {
    queue = dispatch_get_global_queue(9, 0);
    v22 = _NSConcreteStackBlock;
    v23 = -1073741824;
    v24 = 0;
    v25 = sub_100130C3C;
    v26 = &unk_10031F078;
    v27 = _objc_retain(selfCopy);
    v28 = _objc_retain(location[0]);
    dispatch_async(queue, &v22);
    _objc_release(queue);
    objc_storeStrong(&v28, 0);
    objc_storeStrong(&v27, 0);
  }

  v7 = +[AKAccountManager sharedInstance];
  v21 = [(AKAccountManager *)v7 altDSIDForAccount:location[0]];
  _objc_release(v7);
  v8 = +[AKFeatureManager sharedManager];
  isTokenCacheEnabled = [v8 isTokenCacheEnabled];
  _objc_release(v8);
  if (isTokenCacheEnabled)
  {
    if (v21)
    {
      v20 = 0;
      v6 = +[AKTokenManager sharedInstance];
      v19 = v20;
      [(AKTokenManager *)v6 deleteTokenFromCacheWithIdentifer:0 altDSID:v21 error:&v19];
      objc_storeStrong(&v20, v19);
      _objc_release(v6);
      objc_storeStrong(&v20, 0);
    }

    else
    {
      v18 = _AKLogSystem();
      v17 = 2;
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
      {
        log = v18;
        type = v17;
        sub_10001CEEC(v16);
        _os_log_debug_impl(&_mh_execute_header, log, type, "No adsid found on the account. Won't delete tokens via AKTokenManager.", v16, 2u);
      }

      objc_storeStrong(&v18, 0);
    }
  }

  [(AKAppleIDCheckInHelperService *)selfCopy _clearBirthDayForAltDSID:v21];
  v15 = 0;
  v3 = +[AKSecurePakeManager sharedManager];
  v14 = v15;
  [(AKSecurePakeManager *)v3 clearSharedKeyWithError:&v14];
  objc_storeStrong(&v15, v14);
  _objc_release(v3);
  if (v15)
  {
    v13 = _AKLogSystem();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
    {
      sub_1000831E0(v31, v15);
      _os_log_debug_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEBUG, "Failed to clear shared key with error %{private}@", v31, 0xCu);
    }

    objc_storeStrong(&v13, 0);
  }

  objc_storeStrong(&v15, 0);
  objc_storeStrong(&v21, 0);
  objc_storeStrong(location, 0);
}

- (void)_clearBirthDayForAltDSID:(id)d
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, d);
  v6 = 0;
  v5 = objc_alloc_init(AKBirthDayKeychain);
  obj = v6;
  [v5 deleteBirthdayForAltDSID:location[0] error:&obj];
  objc_storeStrong(&v6, obj);
  if (v6)
  {
    oslog = _AKLogSystem();
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEBUG))
    {
      sub_1000194D4(v8, v6);
      _os_log_debug_impl(&_mh_execute_header, oslog, OS_LOG_TYPE_DEBUG, "Unable to delete birthday from keychain due to error: %@.", v8, 0xCu);
    }

    objc_storeStrong(&oslog, 0);
  }

  objc_storeStrong(&v5, 0);
  objc_storeStrong(&v6, 0);
  objc_storeStrong(location, 0);
}

- (void)reportSignOutEventForService:(int64_t)service account:(id)account completion:(id)completion
{
  selfCopy = self;
  v34 = a2;
  serviceCopy = service;
  location = 0;
  objc_storeStrong(&location, account);
  v31 = 0;
  objc_storeStrong(&v31, completion);
  v29 = _os_activity_create(&_mh_execute_header, "authkit/sign-out", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
  v30 = v29;
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v29, &state);
  v27 = _AKLogSystem();
  v26 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
  {
    v11 = [NSNumber numberWithInteger:serviceCopy];
    sub_10001B098(v37, v11, location);
    _os_log_impl(&_mh_execute_header, v27, v26, "Reporting signout for service %@ with account %@", v37, 0x16u);
    _objc_release(v11);
  }

  objc_storeStrong(&v27, 0);
  v25 = [AKAccountManager stringRepresentationForService:serviceCopy];
  if (v25)
  {
    v21 = [AKPostDataEventServiceSignOut stringByAppendingString:v25];
    v20 = os_transaction_create();
    v7 = selfCopy;
    v5 = location;
    v6 = v21;
    v13 = _NSConcreteStackBlock;
    v14 = -1073741824;
    v15 = 0;
    v16 = sub_1001312FC;
    v17 = &unk_10031FB38;
    v19 = _objc_retain(v31);
    v18 = _objc_retain(v20);
    [(AKAppleIDCheckInHelperService *)v7 _checkInWithIDMSWithAccount:v5 pushToken:0 event:v6 reason:0 completion:&v13];
    objc_storeStrong(&v18, 0);
    objc_storeStrong(&v19, 0);
    objc_storeStrong(&v20, 0);
    objc_storeStrong(&v21, 0);
    v22 = 0;
  }

  else
  {
    v24 = _AKLogSystem();
    v23 = OS_LOG_TYPE_ERROR;
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      v10 = [NSNumber numberWithInteger:serviceCopy];
      sub_1000194D4(v36, v10);
      _os_log_error_impl(&_mh_execute_header, v24, v23, "Invalid service %@ for reporting", v36, 0xCu);
      _objc_release(v10);
    }

    objc_storeStrong(&v24, 0);
    v9 = v31;
    v8 = [NSError ak_errorWithCode:-7049];
    v9[2](v9, 0);
    _objc_release(v8);
    v22 = 1;
  }

  objc_storeStrong(&v25, 0);
  os_activity_scope_leave(&state);
  objc_storeStrong(&v30, 0);
  objc_storeStrong(&v31, 0);
  objc_storeStrong(&location, 0);
}

+ (void)_setCheckInAllowedToValue:(BOOL)value forAccount:(id)account
{
  selfCopy = self;
  v12 = a2;
  valueCopy = value;
  location = 0;
  objc_storeStrong(&location, account);
  v4 = location;
  v5 = [NSNumber numberWithBool:valueCopy];
  [v4 setAccountProperty:? forKey:?];
  _objc_release(v5);
  v9 = 0;
  v6 = +[AKAccountManager sharedInstance];
  v8 = v9;
  [(AKAccountManager *)v6 saveAccount:location error:&v8];
  objc_storeStrong(&v9, v8);
  _objc_release(v6);
  if (v9)
  {
    oslog = _AKLogSystem();
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_ERROR))
    {
      sub_1000333DC(v14, v9);
      _os_log_error_impl(&_mh_execute_header, oslog, OS_LOG_TYPE_ERROR, "Unable to reset check in bit due to Accounts error: %{public}@", v14, 0xCu);
    }

    objc_storeStrong(&oslog, 0);
  }

  objc_storeStrong(&v9, 0);
  objc_storeStrong(&location, 0);
}

- (void)_performLivenessCheckInForAllEligibleAccountsWithReason:(unint64_t)reason completion:(id)completion
{
  selfCopy = self;
  v16 = a2;
  reasonCopy = reason;
  location = 0;
  objc_storeStrong(&location, completion);
  v13 = objc_opt_new();
  v4 = v13;
  v5 = _NSConcreteStackBlock;
  v6 = -1073741824;
  v7 = 0;
  v8 = sub_1001316B0;
  v9 = &unk_1003241D8;
  v10 = _objc_retain(v13);
  v11 = _objc_retain(selfCopy);
  v12[1] = reasonCopy;
  v12[0] = _objc_retain(location);
  [v4 cleanupStaleAccountsWithCompletion:?];
  objc_storeStrong(v12, 0);
  objc_storeStrong(&v11, 0);
  objc_storeStrong(&v10, 0);
  objc_storeStrong(&v13, 0);
  objc_storeStrong(&location, 0);
}

- (void)_performLivenessCheckInForAllEligibleAccountsWithToken:(id)token reason:(unint64_t)reason completion:(id)completion
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, token);
  reasonCopy = reason;
  v44 = 0;
  objc_storeStrong(&v44, completion);
  v43 = 0;
  if (reasonCopy == 1)
  {
    _livenessEligibleAccounts = [(AKAppleIDCheckInHelperService *)selfCopy _livenessEligibleAccounts];
  }

  else
  {
    _livenessEligibleAccounts = [(AKAccountManager *)selfCopy->_accountManager allAuthKitAccountsWithError:0];
  }

  v6 = v43;
  v43 = _livenessEligibleAccounts;
  _objc_release(v6);
  v41 = _os_activity_create(&_mh_execute_header, "authkit/check-in", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
  v42 = v41;
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v41, &state);
  if ([v43 count])
  {
    group = dispatch_group_create();
    memset(__b, 0, sizeof(__b));
    v18 = _objc_retain(v43);
    v19 = [v18 countByEnumeratingWithState:__b objects:v49 count:16];
    if (v19)
    {
      v15 = *__b[2];
      v16 = 0;
      v17 = v19;
      while (1)
      {
        v14 = v16;
        if (*__b[2] != v15)
        {
          objc_enumerationMutation(v18);
        }

        v34 = *(__b[1] + 8 * v16);
        v32 = _AKLogSystem();
        v31 = OS_LOG_TYPE_DEFAULT;
        if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
        {
          v12 = v32;
          v13 = v31;
          sub_100131DBC(v48, reasonCopy, v34);
          _os_log_impl(&_mh_execute_header, v12, v13, "Performing liveness check-in %{public}lu with account: %@", v48, 0x16u);
        }

        objc_storeStrong(&v32, 0);
        dispatch_group_enter(group);
        v11 = selfCopy;
        v7 = v34;
        v8 = location[0];
        v9 = AKPostDataEventLiveness;
        v10 = reasonCopy;
        v24 = _NSConcreteStackBlock;
        v25 = -1073741824;
        v26 = 0;
        v27 = sub_100131E0C;
        v28 = &unk_100324200;
        v30[1] = reasonCopy;
        v29 = _objc_retain(v34);
        v30[0] = _objc_retain(group);
        [(AKAppleIDCheckInHelperService *)v11 _checkInWithIDMSWithAccount:v7 pushToken:v8 event:v9 reason:v10 completion:&v24];
        objc_storeStrong(v30, 0);
        objc_storeStrong(&v29, 0);
        ++v16;
        if (v14 + 1 >= v17)
        {
          v16 = 0;
          v17 = [v18 countByEnumeratingWithState:__b objects:v49 count:16];
          if (!v17)
          {
            break;
          }
        }
      }
    }

    _objc_release(v18);
    dispatch_group_notify(group, selfCopy->_checkInQueue, v44);
    objc_storeStrong(&group, 0);
    v36 = 0;
  }

  else
  {
    oslog = _AKLogSystem();
    type = OS_LOG_TYPE_ERROR;
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_ERROR))
    {
      log = oslog;
      v21 = type;
      sub_10001CEEC(v37);
      _os_log_error_impl(&_mh_execute_header, log, v21, "We do not have any IDMS accounts to check in with.", v37, 2u);
    }

    objc_storeStrong(&oslog, 0);
    if (v44)
    {
      (*(v44 + 2))();
    }

    v36 = 1;
  }

  os_activity_scope_leave(&state);
  objc_storeStrong(&v42, 0);
  objc_storeStrong(&v43, 0);
  objc_storeStrong(&v44, 0);
  objc_storeStrong(location, 0);
}

- (id)_livenessEligibleAccounts
{
  v6[2] = self;
  v6[1] = a2;
  v6[0] = [(AKAccountManager *)self->_accountManager allAuthKitAccountsWithError:?];
  v2 = [v6[0] aaf_filter:&stru_100324220];
  v3 = v6[0];
  v6[0] = v2;
  _objc_release(v3);
  v5 = _objc_retain(v6[0]);
  objc_storeStrong(v6, 0);

  return v5;
}

- (void)_checkInWithIDMSWithAccount:(id)account pushToken:(id)token event:(id)event reason:(unint64_t)reason completion:(id)completion
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, account);
  v33 = 0;
  objc_storeStrong(&v33, token);
  v32 = 0;
  objc_storeStrong(&v32, event);
  reasonCopy = reason;
  v30 = 0;
  objc_storeStrong(&v30, completion);
  v28 = _os_activity_create(&_mh_execute_header, "authkit/check-in", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
  v29 = v28;
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v28, &state);
  v26 = objc_alloc_init(AKAppleIDAuthenticationContext);
  v11 = +[AKAccountManager sharedInstance];
  v10 = [(AKAccountManager *)v11 altDSIDForAccount:location[0]];
  [v26 setAltDSID:?];
  _objc_release(v10);
  _objc_release(v11);
  v9 = [AKLivenessRequestProvider alloc];
  v25 = [(AKURLRequestProviderImpl *)v9 initWithContext:v26 urlBagKey:AKURLBagKeyCheckIn];
  v8 = +[AKFollowUpProviderFactory sharedAuthKitFollowupProvider];
  [v25 setFollowUpProvider:?];
  _objc_release(v8);
  [v25 setPushToken:v33];
  [v25 setEvent:v32];
  [v25 setLivenessReason:reasonCopy];
  v7 = [(AKAppleIDCheckInHelperService *)selfCopy _serviceControllerWithProvider:v25];
  v16 = _NSConcreteStackBlock;
  v17 = -1073741824;
  v18 = 0;
  v19 = sub_100132580;
  v20 = &unk_100323190;
  v21 = _objc_retain(location[0]);
  v22 = _objc_retain(selfCopy);
  v23 = _objc_retain(v26);
  v24 = _objc_retain(v30);
  [v7 executeRequestWithCompletion:&v16];
  _objc_release(v7);
  objc_storeStrong(&v24, 0);
  objc_storeStrong(&v23, 0);
  objc_storeStrong(&v22, 0);
  objc_storeStrong(&v21, 0);
  objc_storeStrong(&v25, 0);
  objc_storeStrong(&v26, 0);
  os_activity_scope_leave(&state);
  objc_storeStrong(&v29, 0);
  objc_storeStrong(&v30, 0);
  objc_storeStrong(&v32, 0);
  objc_storeStrong(&v33, 0);
  objc_storeStrong(location, 0);
}

- (void)_handleCheckInResponse:(id)response data:(id)data context:(id)context account:(id)account error:(id)error completion:(id)completion
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, response);
  v45 = 0;
  objc_storeStrong(&v45, data);
  v44 = 0;
  objc_storeStrong(&v44, context);
  v43 = 0;
  objc_storeStrong(&v43, account);
  v42 = 0;
  objc_storeStrong(&v42, error);
  v41 = 0;
  objc_storeStrong(&v41, completion);
  v40 = _AKLogSystem();
  v39 = 2;
  if (os_log_type_enabled(v40, OS_LOG_TYPE_DEBUG))
  {
    log = v40;
    type = v39;
    sub_10001CEEC(v38);
    _os_log_debug_impl(&_mh_execute_header, log, type, "Checking if device should report attested data", v38, 2u);
  }

  objc_storeStrong(&v40, 0);
  v37 = [AAFSerialization dictionaryFromObject:v45 ofType:@"application/xml"];
  v36 = _AKLogSystem();
  v35 = OS_LOG_TYPE_DEBUG;
  if (os_log_type_enabled(v36, OS_LOG_TYPE_DEBUG))
  {
    sub_1000194D4(v49, v37);
    _os_log_debug_impl(&_mh_execute_header, v36, v35, "Received response parameters: %@", v49, 0xCu);
  }

  objc_storeStrong(&v36, 0);
  v15 = [v37 objectForKey:@"livenessNonce"];
  aaf_base64Padded = [v15 aaf_base64Padded];
  _objc_release(v15);
  v16 = [v37 objectForKey:@"attestationNonce"];
  aaf_base64Padded2 = [v16 aaf_base64Padded];
  _objc_release(v16);
  v17 = [v37 objectForKey:@"sendAttestationOSVersion"];
  bOOLValue = [v17 BOOLValue];
  _objc_release(v17);
  v32 = bOOLValue;
  v31 = _AKLogSystem();
  v30 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
  {
    sub_100132C88(v48, aaf_base64Padded, aaf_base64Padded2, v32 & 1);
    _os_log_impl(&_mh_execute_header, v31, v30, "Received liveness nonce %@, attestation Nonce %@ sendAttestedOSVersion %d", v48, 0x1Cu);
  }

  objc_storeStrong(&v31, 0);
  if (aaf_base64Padded)
  {
    [(AKAppleIDCheckInHelperService *)selfCopy storeLivenessNonce:v43 nonce:aaf_base64Padded];
  }

  if ((v32 & 1) == 1 && aaf_base64Padded2)
  {
    v29 = [AAFAnalyticsEvent ak_analyticsEventWithContext:v44 eventName:@"com.apple.authkit.osVersionAttestationReq" error:0];
    v14 = +[AKAnalyticsReporterRTC rtcAnalyticsReporter];
    [v14 sendEvent:v29];
    _objc_release(v14);
    v28 = _AKLogSystem();
    v27 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
    {
      v12 = v28;
      v13 = v27;
      sub_10001CEEC(v26);
      _os_log_impl(&_mh_execute_header, v12, v13, "Received IdMS indicator to send attested OS version", v26, 2u);
    }

    objc_storeStrong(&v28, 0);
    [(AKAppleIDCheckInHelperService *)selfCopy _sendAttestedOSVersionWithContext:v44 attestationNonce:aaf_base64Padded2];
    objc_storeStrong(&v29, 0);
  }

  v10 = +[AKFeatureManager sharedManager];
  isPRKHealingEnabled = [v10 isPRKHealingEnabled];
  _objc_release(v10);
  if (isPRKHealingEnabled)
  {
    [(AKAppleIDCheckInHelperService *)selfCopy _performCheckInActionForAccount:v43 withResponse:v37];
  }

  v9 = +[AKBAATimeProvider sharedInstance];
  allHeaderFields = [location[0] allHeaderFields];
  [(AKBAATimeProvider *)v9 updateTimeFromResponseHeaders:?];
  _objc_release(allHeaderFields);
  _objc_release(v9);
  if (v41)
  {
    (*(v41 + 2))(v41, 1, 0);
  }

  objc_storeStrong(&aaf_base64Padded2, 0);
  objc_storeStrong(&aaf_base64Padded, 0);
  objc_storeStrong(&v37, 0);
  objc_storeStrong(&v41, 0);
  objc_storeStrong(&v42, 0);
  objc_storeStrong(&v43, 0);
  objc_storeStrong(&v44, 0);
  objc_storeStrong(&v45, 0);
  objc_storeStrong(location, 0);
}

- (void)_performCheckInActionForAccount:(id)account withResponse:(id)response
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, account);
  v34 = 0;
  objc_storeStrong(&v34, response);
  v33 = [v34 valueForKey:@"actionNeeded"];
  if (v33)
  {
    v32 = _AKLogSystem();
    v31 = 2;
    if (os_log_type_enabled(v32, OS_LOG_TYPE_DEBUG))
    {
      log = v32;
      type = v31;
      sub_10001CEEC(v30);
      _os_log_debug_impl(&_mh_execute_header, log, type, "Received action needed for liveness", v30, 2u);
    }

    objc_storeStrong(&v32, 0);
    v29 = [v33 valueForKey:@"actionKey"];
    v28 = [v33 valueForKey:@"idmsdata"];
    v27 = [v33 valueForKey:@"ec"];
    if (([v29 isEqualToString:AKURLBagKeyBasicAuthKey] & 1) != 0 && v28)
    {
      v26 = os_transaction_create();
      v25 = _AKLogSystem();
      v24 = OS_LOG_TYPE_DEFAULT;
      if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
      {
        sub_1000194D4(v36, v27);
        _os_log_impl(&_mh_execute_header, v25, v24, "Attempting to perform healing for error: %@", v36, 0xCu);
      }

      objc_storeStrong(&v25, 0);
      v23 = objc_alloc_init(AKAppleIDAuthenticationContext);
      [v23 setAuthenticationType:1];
      v9 = +[AKAccountManager sharedInstance];
      v8 = [(AKAccountManager *)v9 altDSIDForAccount:location[0]];
      [v23 setAltDSID:?];
      _objc_release(v8);
      _objc_release(v9);
      [v23 setAppProvidedContext:AKAppleIDAuthenticationContextTokenHealing];
      if (v28)
      {
        [v23 setIdmsData:v28];
      }

      v22 = objc_alloc_init(AKAppleIDAuthenticationController);
      v7 = v22;
      v6 = v23;
      v16 = _NSConcreteStackBlock;
      v17 = -1073741824;
      v18 = 0;
      v19 = sub_1001331C8;
      v20 = &unk_1003230F8;
      v21 = _objc_retain(v26);
      [v7 authenticateWithContext:v6 completion:&v16];
      objc_storeStrong(&v21, 0);
      objc_storeStrong(&v22, 0);
      objc_storeStrong(&v23, 0);
      objc_storeStrong(&v26, 0);
    }

    else
    {
      oslog = _AKLogSystem();
      v14 = OS_LOG_TYPE_ERROR;
      if (os_log_type_enabled(oslog, OS_LOG_TYPE_ERROR))
      {
        v4 = oslog;
        v5 = v14;
        sub_10001CEEC(v13);
        _os_log_error_impl(&_mh_execute_header, v4, v5, "Check in response missing critical info", v13, 2u);
      }

      objc_storeStrong(&oslog, 0);
    }

    objc_storeStrong(&v27, 0);
    objc_storeStrong(&v28, 0);
    objc_storeStrong(&v29, 0);
  }

  objc_storeStrong(&v33, 0);
  objc_storeStrong(&v34, 0);
  objc_storeStrong(location, 0);
}

- (void)storeLivenessNonce:(id)nonce nonce:(id)a4
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, nonce);
  v14 = 0;
  objc_storeStrong(&v14, a4);
  v13 = 0;
  v7 = +[AKAccountManager sharedInstance];
  [(AKAccountManager *)v7 setNextLivenessNonce:location[0] nonce:v14];
  _objc_release(v7);
  v8 = +[AKAccountManager sharedInstance];
  v12 = v13;
  [(AKAccountManager *)v8 saveAccount:location[0] error:&v12];
  objc_storeStrong(&v13, v12);
  _objc_release(v8);
  if (v13)
  {
    v11 = _AKLogSystem();
    v10 = 17;
    if (os_log_type_enabled(v11, OS_LOG_TYPE_FAULT))
    {
      log = v11;
      type = v10;
      sub_10001CEEC(v9);
      _os_log_fault_impl(&_mh_execute_header, log, type, "Failed to save nextLivenessNonce in the account", v9, 2u);
    }

    objc_storeStrong(&v11, 0);
  }

  objc_storeStrong(&v13, 0);
  objc_storeStrong(&v14, 0);
  objc_storeStrong(location, 0);
}

- (void)_sendAttestedOSVersionWithContext:(id)context attestationNonce:(id)nonce
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, context);
  v31 = 0;
  objc_storeStrong(&v31, nonce);
  v30 = 0uLL;
  v12 = _AKSignpostLogSystem();
  *&v29 = _AKSignpostCreate();
  *(&v29 + 1) = v4;
  _objc_release(v12);
  v28 = _AKSignpostLogSystem();
  v27 = 1;
  v26 = v29;
  if (v29 && v26 != -1 && os_signpost_enabled(v28))
  {
    log = v28;
    type = v27;
    spid = v26;
    sub_10001CEEC(v25);
    _os_signpost_emit_with_name_impl(&_mh_execute_header, log, type, spid, "OSVersionAttestation", " enableTelemetry=YES ", v25, 2u);
  }

  objc_storeStrong(&v28, 0);
  v24 = _AKSignpostLogSystem();
  v23 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
  {
    sub_100036FE8(v34, v29);
    _os_log_impl(&_mh_execute_header, v24, v23, "BEGIN [%lld]: OSVersionAttestation  enableTelemetry=YES ", v34, 0xCu);
  }

  objc_storeStrong(&v24, 0);
  v30 = v29;
  v22 = [AAFAnalyticsEvent ak_analyticsEventWithContext:location[0] eventName:@"com.apple.authkit.sendAttestedOSVersion" error:0];
  strongDeviceIdentitySigner = selfCopy->_strongDeviceIdentitySigner;
  v5 = location[0];
  v6 = v31;
  v13 = _NSConcreteStackBlock;
  v14 = -1073741824;
  v15 = 0;
  v16 = sub_10013390C;
  v17 = &unk_100324270;
  v18 = _objc_retain(location[0]);
  v19 = _objc_retain(v31);
  v21 = v30;
  v20 = _objc_retain(v22);
  [(AKStrongDeviceIdentitySigner *)strongDeviceIdentitySigner attestationDataForOSVersionWithContext:v5 attestationNonce:v6 completion:&v13];
  objc_storeStrong(&v20, 0);
  objc_storeStrong(&v19, 0);
  objc_storeStrong(&v18, 0);
  objc_storeStrong(&v22, 0);
  objc_storeStrong(&v31, 0);
  objc_storeStrong(location, 0);
}

- (id)_serviceControllerWithProvider:(id)provider
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, provider);
  v3 = [AKServiceControllerImpl alloc];
  v5 = [(AKServiceControllerImpl *)v3 initWithRequestProvider:location[0]];
  objc_storeStrong(location, 0);

  return v5;
}

- (BOOL)_validateMachineID:(id)d
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, d);
  v4 = objc_alloc_init(AKAnisetteProvisioningController);
  v9 = [v4 anisetteDataWithError:0];
  _objc_release(v4);
  machineID = [v9 machineID];
  v7 = 0;
  v6 = 0;
  if (machineID)
  {
    machineID2 = [v9 machineID];
    v7 = 1;
    v6 = [machineID2 isEqualToString:location[0]];
  }

  v11 = v6 & 1;
  if (v7)
  {
    _objc_release(machineID2);
  }

  _objc_release(machineID);
  objc_storeStrong(&v9, 0);
  objc_storeStrong(location, 0);
  return v11 & 1;
}

- (void)_clearDeviceListCacheForAccount:(id)account
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, account);
  v20 = +[AKAccountManager sharedInstance];
  v19 = [v20 altDSIDForAccount:location[0]];
  if (v19)
  {
    v3 = [AKDeviceListRequester alloc];
    v5 = +[AKDeviceListStoreManager sharedManager];
    v4 = objc_opt_new();
    v15 = [AKDeviceListRequester initWithStoreManager:v3 cdpFactory:"initWithStoreManager:cdpFactory:accountManager:client:" accountManager:v5 client:?];
    _objc_release(v4);
    _objc_release(v5);
    v14 = objc_alloc_init(AKDeviceListRequestContext);
    [v14 setAltDSID:v19];
    v7 = v15;
    v6 = v14;
    v8 = _NSConcreteStackBlock;
    v9 = -1073741824;
    v10 = 0;
    v11 = sub_100134640;
    v12 = &unk_100320EA0;
    v13 = _objc_retain(v14);
    [(AKDeviceListRequester *)v7 clearDeviceListCacheWithContext:v6 completionHandler:&v8];
    objc_storeStrong(&v13, 0);
    objc_storeStrong(&v14, 0);
    objc_storeStrong(&v15, 0);
    v16 = 0;
  }

  else
  {
    v18 = _AKLogSystem();
    v17 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      sub_1000194D4(v22, location[0]);
      _os_log_impl(&_mh_execute_header, v18, v17, "Clear device list cache failed. Missing altDSID for account - %@", v22, 0xCu);
    }

    objc_storeStrong(&v18, 0);
    v16 = 1;
  }

  objc_storeStrong(&v19, 0);
  objc_storeStrong(&v20, 0);
  objc_storeStrong(location, 0);
}

@end