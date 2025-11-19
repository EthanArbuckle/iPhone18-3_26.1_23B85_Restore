@interface AKAppleIDCheckInHelperService
+ (id)sharedService;
+ (void)_setCheckInAllowedToValue:(BOOL)a3 forAccount:(id)a4;
+ (void)setCheckInAllowedForAllAccountsToValue:(BOOL)a3;
- (AKAppleIDCheckInHelperService)init;
- (BOOL)_validateMachineID:(id)a3;
- (id)_livenessEligibleAccounts;
- (id)_serviceControllerWithProvider:(id)a3;
- (void)_checkInWithIDMSWithAccount:(id)a3 pushToken:(id)a4 event:(id)a5 reason:(unint64_t)a6 completion:(id)a7;
- (void)_clearBirthDayForAltDSID:(id)a3;
- (void)_clearDeviceListCacheForAccount:(id)a3;
- (void)_handleCheckInResponse:(id)a3 data:(id)a4 context:(id)a5 account:(id)a6 error:(id)a7 completion:(id)a8;
- (void)_performCheckInActionForAccount:(id)a3 withResponse:(id)a4;
- (void)_performLivenessCheckInForAllEligibleAccountsWithReason:(unint64_t)a3 completion:(id)a4;
- (void)_performLivenessCheckInForAllEligibleAccountsWithToken:(id)a3 reason:(unint64_t)a4 completion:(id)a5;
- (void)_performSignoutCleanupForAccount:(id)a3;
- (void)_sendAttestedOSVersionWithContext:(id)a3 attestationNonce:(id)a4;
- (void)ackWithPayload:(id)a3 account:(id)a4 completion:(id)a5;
- (void)didReceiveNewPublicToken:(id)a3;
- (void)didRespondToMessage:(id)a3 result:(unint64_t)a4 payload:(id)a5;
- (void)didRespondToMessage:(id)a3 withResult:(unint64_t)a4;
- (void)performCheckInForAccount:(id)a3 event:(id)a4 reason:(unint64_t)a5 completion:(id)a6;
- (void)performLivenessCheckInForAllEligibleAccountsWithReason:(unint64_t)a3 completion:(id)a4;
- (void)processPushMessage:(id)a3;
- (void)reportFinalSignOutEventForAccount:(id)a3 completion:(id)a4;
- (void)reportSignOutEventForService:(int64_t)a3 account:(id)a4 completion:(id)a5;
- (void)start;
- (void)storeLivenessNonce:(id)a3 nonce:(id)a4;
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

+ (void)setCheckInAllowedForAllAccountsToValue:(BOOL)a3
{
  v14 = a1;
  v13 = a2;
  v12 = a3;
  v4 = +[AKAccountManager sharedInstance];
  v3 = [(AKAccountManager *)v4 allAuthKitAccountsWithError:0];
  v5 = _NSConcreteStackBlock;
  v6 = -1073741824;
  v7 = 0;
  v8 = sub_10012E430;
  v9 = &unk_100324138;
  v10 = v14;
  v11 = v12;
  [v3 enumerateObjectsUsingBlock:?];
  _objc_release(v3);
  _objc_release(v4);
}

- (void)performLivenessCheckInForAllEligibleAccountsWithReason:(unint64_t)a3 completion:(id)a4
{
  v19 = self;
  v18 = a2;
  v17 = a3;
  location = 0;
  objc_storeStrong(&location, a4);
  v15 = os_transaction_create();
  v5 = v19;
  v7 = +[AKAppleIDPushHelperService sharedService];
  v6 = [v7 publicAPSTokenString];
  v4 = v17;
  v8 = _NSConcreteStackBlock;
  v9 = -1073741824;
  v10 = 0;
  v11 = sub_10012E650;
  v12 = &unk_100320878;
  v13 = _objc_retain(v15);
  v14 = _objc_retain(location);
  [(AKAppleIDCheckInHelperService *)v5 _performLivenessCheckInForAllEligibleAccountsWithToken:v6 reason:v4 completion:?];
  _objc_release(v6);
  _objc_release(v7);
  objc_storeStrong(&v14, 0);
  objc_storeStrong(&v13, 0);
  objc_storeStrong(&v15, 0);
  objc_storeStrong(&location, 0);
}

- (void)performCheckInForAccount:(id)a3 event:(id)a4 reason:(unint64_t)a5 completion:(id)a6
{
  v25 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v23 = 0;
  objc_storeStrong(&v23, a4);
  v22 = a5;
  v21 = 0;
  objc_storeStrong(&v21, a6);
  v20 = os_transaction_create();
  queue = v25->_checkInQueue;
  v10 = _NSConcreteStackBlock;
  v11 = -1073741824;
  v12 = 0;
  v13 = sub_10012E8C4;
  v14 = &unk_100324160;
  v15 = _objc_retain(v25);
  v16 = _objc_retain(location[0]);
  v17 = _objc_retain(v23);
  v19[1] = v22;
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

- (void)processPushMessage:(id)a3
{
  v17 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v11 = v17;
  v12 = [location[0] serverMachineId];
  v13 = [(AKAppleIDCheckInHelperService *)v11 _validateMachineID:?];
  _objc_release(v12);
  if (v13)
  {
    accountManager = v17->_accountManager;
    v10 = [location[0] altDSID];
    v15 = [AKAccountManager authKitAccountWithAltDSID:"authKitAccountWithAltDSID:error:" error:?];
    _objc_release(v10);
    if (v15)
    {
      v14 = +[NSMutableDictionary dictionary];
      v7 = [location[0] messageId];
      [v14 setObject:? forKeyedSubscript:?];
      _objc_release(v7);
      v8 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [location[0] command]);
      [v14 setObject:? forKeyedSubscript:?];
      _objc_release(v8);
      if ([location[0] command] == 1500)
      {
        [AKAppleIDCheckInHelperService _setCheckInAllowedToValue:0 forAccount:v15];
      }

      else if ([location[0] command] == 2200)
      {
        v6 = [location[0] idmsData];
        _objc_release(v6);
        if (v6)
        {
          v5 = [location[0] idmsData];
          [v14 setObject:? forKeyedSubscript:?];
          _objc_release(v5);
        }
      }

      [(AKAppleIDCheckInHelperService *)v17 ackWithPayload:v14 account:v15 completion:&v14, 0];
      objc_storeStrong(v3, obj);
    }

    objc_storeStrong(&v15, 0);
  }

  objc_storeStrong(location, 0);
}

- (void)didRespondToMessage:(id)a3 withResult:(unint64_t)a4
{
  v6 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  [(AKAppleIDCheckInHelperService *)v6 didRespondToMessage:location[0] result:a4 payload:0];
  objc_storeStrong(location, 0);
}

- (void)didRespondToMessage:(id)a3 result:(unint64_t)a4 payload:(id)a5
{
  v28 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v26 = a4;
  v25 = 0;
  objc_storeStrong(&v25, a5);
  if (v26 == 2)
  {
    v24 = 1;
  }

  else
  {
    v14 = [location[0] messageId];
    _objc_release(v14);
    if (v14)
    {
      v20 = 0;
      if (v26)
      {
        if (v26 == 1)
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

      accountManager = v28->_accountManager;
      v11 = [location[0] altDSID];
      v19 = [AKAccountManager authKitAccountWithAltDSID:"authKitAccountWithAltDSID:error:" error:?];
      _objc_release(v11);
      if (v19)
      {
        v18 = objc_alloc_init(NSMutableDictionary);
        if (v25)
        {
          [v18 addEntriesFromDictionary:v25];
        }

        v6 = [location[0] messageId];
        [v18 setObject:? forKeyedSubscript:?];
        _objc_release(v6);
        v7 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [location[0] command]);
        [v18 setObject:? forKeyedSubscript:?];
        _objc_release(v7);
        [v18 setObject:v20 forKeyedSubscript:@"action"];
        v8 = v28;
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
          v5 = [location[0] altDSID];
          sub_10001CE98(v29, 1752392040, v5);
          _os_log_error_impl(&_mh_execute_header, v17, OS_LOG_TYPE_ERROR, "Unable to respond to message without AK account for altDSID %{mask.hash}@", v29, 0x16u);
          _objc_release(v5);
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

- (void)didReceiveNewPublicToken:(id)a3
{
  v13 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v11 = os_transaction_create();
  v4 = v13;
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

- (void)ackWithPayload:(id)a3 account:(id)a4 completion:(id)a5
{
  v22 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v20 = 0;
  objc_storeStrong(&v20, a4);
  v19 = 0;
  objc_storeStrong(&v19, a5);
  v18 = os_transaction_create();
  queue = v22->_checkInQueue;
  v8 = _NSConcreteStackBlock;
  v9 = -1073741824;
  v10 = 0;
  v11 = sub_10012F5B4;
  v12 = &unk_100324188;
  v13 = _objc_retain(location[0]);
  v14 = _objc_retain(v20);
  v15 = _objc_retain(v22);
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
  v11 = self;
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
  v8 = _objc_retain(v11);
  xpc_activity_register(identifier, XPC_ACTIVITY_CHECK_IN, &v3);
  objc_storeStrong(&v8, 0);
}

- (void)reportFinalSignOutEventForAccount:(id)a3 completion:(id)a4
{
  v25 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v23 = 0;
  objc_storeStrong(&v23, a4);
  v21 = _os_activity_create(&_mh_execute_header, "authkit/sign-out", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
  v22 = v21;
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v21, &state);
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_100130218;
  v15[3] = &unk_1003217F8;
  v16 = _objc_retain(v25);
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
  v12 = _objc_retain(v25);
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

- (void)_performSignoutCleanupForAccount:(id)a3
{
  v30 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v11 = +[AKFeatureManager sharedManager];
  v12 = [v11 isDeviceListCacheEnableDryMode];
  _objc_release(v11);
  if (v12)
  {
    queue = dispatch_get_global_queue(9, 0);
    v22 = _NSConcreteStackBlock;
    v23 = -1073741824;
    v24 = 0;
    v25 = sub_100130C3C;
    v26 = &unk_10031F078;
    v27 = _objc_retain(v30);
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
  v9 = [v8 isTokenCacheEnabled];
  _objc_release(v8);
  if (v9)
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

  [(AKAppleIDCheckInHelperService *)v30 _clearBirthDayForAltDSID:v21];
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

- (void)_clearBirthDayForAltDSID:(id)a3
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
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

- (void)reportSignOutEventForService:(int64_t)a3 account:(id)a4 completion:(id)a5
{
  v35 = self;
  v34 = a2;
  v33 = a3;
  location = 0;
  objc_storeStrong(&location, a4);
  v31 = 0;
  objc_storeStrong(&v31, a5);
  v29 = _os_activity_create(&_mh_execute_header, "authkit/sign-out", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
  v30 = v29;
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v29, &state);
  v27 = _AKLogSystem();
  v26 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
  {
    v11 = [NSNumber numberWithInteger:v33];
    sub_10001B098(v37, v11, location);
    _os_log_impl(&_mh_execute_header, v27, v26, "Reporting signout for service %@ with account %@", v37, 0x16u);
    _objc_release(v11);
  }

  objc_storeStrong(&v27, 0);
  v25 = [AKAccountManager stringRepresentationForService:v33];
  if (v25)
  {
    v21 = [AKPostDataEventServiceSignOut stringByAppendingString:v25];
    v20 = os_transaction_create();
    v7 = v35;
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
      v10 = [NSNumber numberWithInteger:v33];
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

+ (void)_setCheckInAllowedToValue:(BOOL)a3 forAccount:(id)a4
{
  v13 = a1;
  v12 = a2;
  v11 = a3;
  location = 0;
  objc_storeStrong(&location, a4);
  v4 = location;
  v5 = [NSNumber numberWithBool:v11];
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

- (void)_performLivenessCheckInForAllEligibleAccountsWithReason:(unint64_t)a3 completion:(id)a4
{
  v17 = self;
  v16 = a2;
  v15 = a3;
  location = 0;
  objc_storeStrong(&location, a4);
  v13 = objc_opt_new();
  v4 = v13;
  v5 = _NSConcreteStackBlock;
  v6 = -1073741824;
  v7 = 0;
  v8 = sub_1001316B0;
  v9 = &unk_1003241D8;
  v10 = _objc_retain(v13);
  v11 = _objc_retain(v17);
  v12[1] = v15;
  v12[0] = _objc_retain(location);
  [v4 cleanupStaleAccountsWithCompletion:?];
  objc_storeStrong(v12, 0);
  objc_storeStrong(&v11, 0);
  objc_storeStrong(&v10, 0);
  objc_storeStrong(&v13, 0);
  objc_storeStrong(&location, 0);
}

- (void)_performLivenessCheckInForAllEligibleAccountsWithToken:(id)a3 reason:(unint64_t)a4 completion:(id)a5
{
  v47 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v45 = a4;
  v44 = 0;
  objc_storeStrong(&v44, a5);
  v43 = 0;
  if (v45 == 1)
  {
    v5 = [(AKAppleIDCheckInHelperService *)v47 _livenessEligibleAccounts];
  }

  else
  {
    v5 = [(AKAccountManager *)v47->_accountManager allAuthKitAccountsWithError:0];
  }

  v6 = v43;
  v43 = v5;
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
          sub_100131DBC(v48, v45, v34);
          _os_log_impl(&_mh_execute_header, v12, v13, "Performing liveness check-in %{public}lu with account: %@", v48, 0x16u);
        }

        objc_storeStrong(&v32, 0);
        dispatch_group_enter(group);
        v11 = v47;
        v7 = v34;
        v8 = location[0];
        v9 = AKPostDataEventLiveness;
        v10 = v45;
        v24 = _NSConcreteStackBlock;
        v25 = -1073741824;
        v26 = 0;
        v27 = sub_100131E0C;
        v28 = &unk_100324200;
        v30[1] = v45;
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
    dispatch_group_notify(group, v47->_checkInQueue, v44);
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

- (void)_checkInWithIDMSWithAccount:(id)a3 pushToken:(id)a4 event:(id)a5 reason:(unint64_t)a6 completion:(id)a7
{
  v35 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v33 = 0;
  objc_storeStrong(&v33, a4);
  v32 = 0;
  objc_storeStrong(&v32, a5);
  v31 = a6;
  v30 = 0;
  objc_storeStrong(&v30, a7);
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
  [v25 setLivenessReason:v31];
  v7 = [(AKAppleIDCheckInHelperService *)v35 _serviceControllerWithProvider:v25];
  v16 = _NSConcreteStackBlock;
  v17 = -1073741824;
  v18 = 0;
  v19 = sub_100132580;
  v20 = &unk_100323190;
  v21 = _objc_retain(location[0]);
  v22 = _objc_retain(v35);
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

- (void)_handleCheckInResponse:(id)a3 data:(id)a4 context:(id)a5 account:(id)a6 error:(id)a7 completion:(id)a8
{
  v47 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v45 = 0;
  objc_storeStrong(&v45, a4);
  v44 = 0;
  objc_storeStrong(&v44, a5);
  v43 = 0;
  objc_storeStrong(&v43, a6);
  v42 = 0;
  objc_storeStrong(&v42, a7);
  v41 = 0;
  objc_storeStrong(&v41, a8);
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
  v34 = [v15 aaf_base64Padded];
  _objc_release(v15);
  v16 = [v37 objectForKey:@"attestationNonce"];
  v33 = [v16 aaf_base64Padded];
  _objc_release(v16);
  v17 = [v37 objectForKey:@"sendAttestationOSVersion"];
  v18 = [v17 BOOLValue];
  _objc_release(v17);
  v32 = v18;
  v31 = _AKLogSystem();
  v30 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
  {
    sub_100132C88(v48, v34, v33, v32 & 1);
    _os_log_impl(&_mh_execute_header, v31, v30, "Received liveness nonce %@, attestation Nonce %@ sendAttestedOSVersion %d", v48, 0x1Cu);
  }

  objc_storeStrong(&v31, 0);
  if (v34)
  {
    [(AKAppleIDCheckInHelperService *)v47 storeLivenessNonce:v43 nonce:v34];
  }

  if ((v32 & 1) == 1 && v33)
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
    [(AKAppleIDCheckInHelperService *)v47 _sendAttestedOSVersionWithContext:v44 attestationNonce:v33];
    objc_storeStrong(&v29, 0);
  }

  v10 = +[AKFeatureManager sharedManager];
  v11 = [v10 isPRKHealingEnabled];
  _objc_release(v10);
  if (v11)
  {
    [(AKAppleIDCheckInHelperService *)v47 _performCheckInActionForAccount:v43 withResponse:v37];
  }

  v9 = +[AKBAATimeProvider sharedInstance];
  v8 = [location[0] allHeaderFields];
  [(AKBAATimeProvider *)v9 updateTimeFromResponseHeaders:?];
  _objc_release(v8);
  _objc_release(v9);
  if (v41)
  {
    (*(v41 + 2))(v41, 1, 0);
  }

  objc_storeStrong(&v33, 0);
  objc_storeStrong(&v34, 0);
  objc_storeStrong(&v37, 0);
  objc_storeStrong(&v41, 0);
  objc_storeStrong(&v42, 0);
  objc_storeStrong(&v43, 0);
  objc_storeStrong(&v44, 0);
  objc_storeStrong(&v45, 0);
  objc_storeStrong(location, 0);
}

- (void)_performCheckInActionForAccount:(id)a3 withResponse:(id)a4
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v34 = 0;
  objc_storeStrong(&v34, a4);
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

- (void)storeLivenessNonce:(id)a3 nonce:(id)a4
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
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

- (void)_sendAttestedOSVersionWithContext:(id)a3 attestationNonce:(id)a4
{
  v33 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v31 = 0;
  objc_storeStrong(&v31, a4);
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
  strongDeviceIdentitySigner = v33->_strongDeviceIdentitySigner;
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

- (id)_serviceControllerWithProvider:(id)a3
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v3 = [AKServiceControllerImpl alloc];
  v5 = [(AKServiceControllerImpl *)v3 initWithRequestProvider:location[0]];
  objc_storeStrong(location, 0);

  return v5;
}

- (BOOL)_validateMachineID:(id)a3
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v4 = objc_alloc_init(AKAnisetteProvisioningController);
  v9 = [v4 anisetteDataWithError:0];
  _objc_release(v4);
  v5 = [v9 machineID];
  v7 = 0;
  v6 = 0;
  if (v5)
  {
    v8 = [v9 machineID];
    v7 = 1;
    v6 = [v8 isEqualToString:location[0]];
  }

  v11 = v6 & 1;
  if (v7)
  {
    _objc_release(v8);
  }

  _objc_release(v5);
  objc_storeStrong(&v9, 0);
  objc_storeStrong(location, 0);
  return v11 & 1;
}

- (void)_clearDeviceListCacheForAccount:(id)a3
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
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