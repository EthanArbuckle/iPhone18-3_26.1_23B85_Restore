@interface AKSRPAuthenticationContextHelper
- (AKSRPAuthenticationContextHelper)initWithContext:(id)a3;
- (BOOL)canPresentRemoteUI;
- (id)_identityAuthorizationPayload;
- (id)_passwordResetBackupToken;
- (void)_authenticationParameters:(id)a3;
- (void)_updateHeadersWithCompanionAnisetteData:(id)a3 clientProvidedData:(id)a4 completion:(id)a5;
- (void)_updateHeadersWithProxiedDeviceAnisetteData:(id)a3 clientProvidedData:(id)a4 completion:(id)a5;
- (void)authenticationParametersWithCompletion:(id)a3;
- (void)clientProvidedDataHelper:(id)a3;
@end

@implementation AKSRPAuthenticationContextHelper

- (AKSRPAuthenticationContextHelper)initWithContext:(id)a3
{
  v9 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v3 = v9;
  v9 = 0;
  v7.receiver = v3;
  v7.super_class = AKSRPAuthenticationContextHelper;
  v6 = [(AKSRPContextHelper *)&v7 initWithContext:location[0]];
  v9 = v6;
  objc_storeStrong(&v9, v6);
  if (v6)
  {
    objc_storeStrong(&v9->_authContext, location[0]);
  }

  v5 = _objc_retain(v9);
  objc_storeStrong(location, 0);
  objc_storeStrong(&v9, 0);
  return v5;
}

- (void)authenticationParametersWithCompletion:(id)a3
{
  v12 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v3 = v12;
  v4 = _NSConcreteStackBlock;
  v5 = -1073741824;
  v6 = 0;
  v7 = sub_10004D538;
  v8 = &unk_1003202D8;
  v10 = _objc_retain(location[0]);
  v9 = _objc_retain(v12);
  [(AKSRPAuthenticationContextHelper *)v3 _authenticationParameters:&v4];
  objc_storeStrong(&v9, 0);
  objc_storeStrong(&v10, 0);
  objc_storeStrong(location, 0);
}

- (void)_authenticationParameters:(id)a3
{
  v19 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v12[0] = 0;
  v12[1] = v12;
  v13 = 838860800;
  v14 = 48;
  v15 = sub_1000037CC;
  v16 = sub_1000110B0;
  v17 = 0;
  v3 = v19;
  v5 = _NSConcreteStackBlock;
  v6 = -1073741824;
  v7 = 0;
  v8 = sub_10004DEF8;
  v9 = &unk_100320350;
  v11[0] = _objc_retain(location[0]);
  v11[1] = v12;
  v10 = _objc_retain(v19);
  v4.receiver = v3;
  v4.super_class = AKSRPAuthenticationContextHelper;
  [(AKSRPContextHelper *)&v4 authenticationParametersWithCompletion:&v5];
  objc_storeStrong(&v10, 0);
  objc_storeStrong(v11, 0);
  _Block_object_dispose(v12, 8);
  objc_storeStrong(&v17, 0);
  objc_storeStrong(location, 0);
}

- (void)_updateHeadersWithProxiedDeviceAnisetteData:(id)a3 clientProvidedData:(id)a4 completion:(id)a5
{
  v38 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v36 = 0;
  objc_storeStrong(&v36, a4);
  v35 = 0;
  objc_storeStrong(&v35, a5);
  v34 = [(AKAppleIDAuthenticationContext *)v38->_authContext proxiedDeviceAnisetteData];
  if (v34)
  {
    v33 = _AKLogSystem();
    v32 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
    {
      log = v33;
      type = v32;
      sub_10001CEEC(v31);
      _os_log_impl(&_mh_execute_header, log, type, "Context has provided Anisette data for proxied device.", v31, 2u);
    }

    objc_storeStrong(&v33, 0);
    v30 = [NSMutableURLRequest ak_proxiedAnisetteHeadersWithData:v34];
    [v36 addEntriesFromDictionary:v30];
    [location[0] addEntriesFromDictionary:v30];
    (*(v35 + 2))(v35, 1, 0);
    objc_storeStrong(&v30, 0);
  }

  else
  {
    v12 = [(AKAppleIDAuthenticationContext *)v38->_authContext proxiedDevice];
    _objc_release(v12);
    if (v12)
    {
      v29 = _AKLogSystem();
      v28 = OS_LOG_TYPE_DEFAULT;
      if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
      {
        v10 = v29;
        v11 = v28;
        sub_10001CEEC(v27);
        _os_log_impl(&_mh_execute_header, v10, v11, "Grabbing Anisette data from proxied device.", v27, 2u);
      }

      objc_storeStrong(&v29, 0);
      v6 = [AKAnisetteProvisioningService alloc];
      v7 = [(AKSRPContextHelper *)v38 client];
      authContext = v38->_authContext;
      v26 = [AKAnisetteProvisioningService initWithClient:v6 context:"initWithClient:context:"];
      _objc_release(v7);
      v8 = v26;
      v9 = [(AKAppleIDAuthenticationContext *)v38->_authContext proxiedDevice];
      v17 = _NSConcreteStackBlock;
      v18 = -1073741824;
      v19 = 0;
      v20 = sub_100050688;
      v21 = &unk_100320378;
      v22 = _objc_retain(v36);
      v23 = _objc_retain(location[0]);
      v25 = _objc_retain(v35);
      v24 = _objc_retain(v38);
      [(AKAnisetteProvisioningService *)v8 fetchAnisetteDataAndProvisionIfNecessary:1 device:v9 completion:&v17];
      _objc_release(v9);
      objc_storeStrong(&v24, 0);
      objc_storeStrong(&v25, 0);
      objc_storeStrong(&v23, 0);
      objc_storeStrong(&v22, 0);
      objc_storeStrong(&v26, 0);
    }

    else
    {
      (*(v35 + 2))(v35, 1, 0);
    }
  }

  objc_storeStrong(&v34, 0);
  objc_storeStrong(&v35, 0);
  objc_storeStrong(&v36, 0);
  objc_storeStrong(location, 0);
}

- (void)_updateHeadersWithCompanionAnisetteData:(id)a3 clientProvidedData:(id)a4 completion:(id)a5
{
  v43 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v41 = 0;
  objc_storeStrong(&v41, a4);
  v40 = 0;
  objc_storeStrong(&v40, a5);
  v16 = [AKAnisetteProvisioningService alloc];
  v17 = [(AKSRPContextHelper *)v43 client];
  authContext = v43->_authContext;
  v39 = [AKAnisetteProvisioningService initWithClient:v16 context:"initWithClient:context:"];
  _objc_release(v17);
  v38 = [(AKAppleIDAuthenticationContext *)v43->_authContext companionDeviceAnisetteData];
  if (v38)
  {
    v37 = _AKLogSystem();
    v36 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
    {
      log = v37;
      type = v36;
      sub_10001CEEC(v35);
      _os_log_impl(&_mh_execute_header, log, type, "Context has provided Anisette data for companion device.", v35, 2u);
    }

    objc_storeStrong(&v37, 0);
    v34 = [NSMutableURLRequest ak_anisetteHeadersWithCompanionData:v38];
    [v41 addEntriesFromDictionary:v34];
    [location[0] addEntriesFromDictionary:v34];
    (*(v40 + 2))(v40, 1, 0);
    objc_storeStrong(&v34, 0);
  }

  else
  {
    v10 = [(AKAppleIDAuthenticationContext *)v43->_authContext companionDevice];
    v32 = 0;
    v30 = 0;
    v11 = 0;
    if (v10)
    {
      v33 = [(AKAppleIDAuthenticationContext *)v43->_authContext companionDevice];
      v32 = 1;
      v31 = [v33 uniqueDeviceIdentifier];
      v30 = 1;
      v11 = v31 != 0;
    }

    if (v30)
    {
      _objc_release(v31);
    }

    if (v32)
    {
      _objc_release(v33);
    }

    _objc_release(v10);
    if (v11)
    {
      v29 = _AKLogSystem();
      v28 = OS_LOG_TYPE_DEFAULT;
      if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
      {
        v8 = v29;
        v9 = v28;
        sub_10001CEEC(v27);
        _os_log_impl(&_mh_execute_header, v8, v9, "Looking to set companion Anisette data in CPD.", v27, 2u);
      }

      objc_storeStrong(&v29, 0);
      v6 = v39;
      v7 = [(AKAppleIDAuthenticationContext *)v43->_authContext companionDevice];
      v18 = _NSConcreteStackBlock;
      v19 = -1073741824;
      v20 = 0;
      v21 = sub_100050DE8;
      v22 = &unk_100320378;
      v23 = _objc_retain(v41);
      v24 = _objc_retain(location[0]);
      v26 = _objc_retain(v40);
      v25 = _objc_retain(v43);
      [v6 fetchAnisetteDataAndProvisionIfNecessary:1 device:v7 completion:&v18];
      _objc_release(v7);
      objc_storeStrong(&v25, 0);
      objc_storeStrong(&v26, 0);
      objc_storeStrong(&v24, 0);
      objc_storeStrong(&v23, 0);
    }

    else
    {
      (*(v40 + 2))(v40, 1, 0);
    }
  }

  objc_storeStrong(&v38, 0);
  objc_storeStrong(&v39, 0);
  objc_storeStrong(&v40, 0);
  objc_storeStrong(&v41, 0);
  objc_storeStrong(location, 0);
}

- (void)clientProvidedDataHelper:(id)a3
{
  v86 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v51 = [(AKAppleIDAuthenticationContext *)v86->_authContext appProvidedData];
  _objc_release(v51);
  if (v51)
  {
    v50 = [(AKAppleIDAuthenticationContext *)v86->_authContext appProvidedData];
    [location[0] setObject:? forKeyedSubscript:?];
    _objc_release(v50);
  }

  else
  {
    v84 = 0;
    v49 = [(AKAppleIDAuthenticationContext *)v86->_authContext verifyCredentialReason];
    if (v49 == 1)
    {
      v80 = _AKLogSystem();
      v79 = OS_LOG_TYPE_DEFAULT;
      if (os_log_type_enabled(v80, OS_LOG_TYPE_DEFAULT))
      {
        v45 = v80;
        v46 = v79;
        sub_10001CEEC(v78);
        _os_log_impl(&_mh_execute_header, v45, v46, "Client has request a beneficiary setup token.", v78, 2u);
      }

      objc_storeStrong(&v80, 0);
      v88 = @"addBeneficiaryToken";
      v89 = @"true";
      v5 = [NSDictionary dictionaryWithObjects:&v89 forKeys:&v88 count:1];
      v6 = v84;
      v84 = v5;
      _objc_release(v6);
      [location[0] setObject:v84 forKeyedSubscript:@"apd"];
    }

    else if (v49 == 2)
    {
      v83 = _AKLogSystem();
      v82 = OS_LOG_TYPE_DEFAULT;
      if (os_log_type_enabled(v83, OS_LOG_TYPE_DEFAULT))
      {
        log = v83;
        type = v82;
        sub_10001CEEC(v81);
        _os_log_impl(&_mh_execute_header, log, type, "Client has request a custodian setup token.", v81, 2u);
      }

      objc_storeStrong(&v83, 0);
      v90 = @"addCustodianToken";
      v91 = @"true";
      v3 = [NSDictionary dictionaryWithObjects:&v91 forKeys:&v90 count:1];
      v4 = v84;
      v84 = v3;
      _objc_release(v4);
      [location[0] setObject:v84 forKeyedSubscript:@"apd"];
    }

    objc_storeStrong(&v84, 0);
  }

  v44 = [(AKAppleIDAuthenticationContext *)v86->_authContext appProvidedContext];
  _objc_release(v44);
  if (v44)
  {
    v43 = [(AKAppleIDAuthenticationContext *)v86->_authContext appProvidedContext];
    [location[0] setObject:? forKeyedSubscript:?];
    _objc_release(v43);
  }

  v42 = [(AKAppleIDAuthenticationContext *)v86->_authContext proxiedDevice];
  _objc_release(v42);
  if (v42)
  {
    [location[0] setObject:? forKeyedSubscript:?];
    [location[0] setObject:&__kCFBooleanTrue forKeyedSubscript:@"X-Apple-I-Proxied-PRK-Gen"];
    v39 = [(AKAppleIDAuthenticationContext *)v86->_authContext proxiedDevice];
    v38 = [v39 serverFriendlyDescription];
    [location[0] setObject:? forKeyedSubscript:?];
    _objc_release(v38);
    _objc_release(v39);
    v77 = 0;
    v40 = [(AKAppleIDAuthenticationContext *)v86->_authContext appProvidedContext];
    v74 = 0;
    v41 = 0;
    if ([v40 isEqualToString:AKAppleIDAuthenticationAppProvidedContextConnectDependent])
    {
      v75 = [(AKAppleIDAuthenticationContext *)v86->_authContext proxiedDevice];
      v74 = 1;
      v41 = v75 != 0;
    }

    if (v74)
    {
      _objc_release(v75);
    }

    _objc_release(v40);
    v76 = v41;
    v73 = _AKLogSystem();
    v72 = OS_LOG_TYPE_DEBUG;
    if (os_log_type_enabled(v73, OS_LOG_TYPE_DEBUG))
    {
      v7 = [(AKAppleIDAuthenticationContext *)v86->_authContext appProvidedContext];
      v37 = v7;
      if (v76)
      {
        v8 = @"YES";
      }

      else
      {
        v8 = @"NO";
      }

      sub_10004DCC8(v87, v7, @"NO", v8);
      _os_log_debug_impl(&_mh_execute_header, v73, v72, "APC=%@, isLDO=%@, isInAgeMigrationFlow=%@", v87, 0x20u);
      _objc_release(v37);
    }

    objc_storeStrong(&v73, 0);
    v35 = [(AKAppleIDAuthenticationContext *)v86->_authContext appProvidedContext];
    v36 = 0;
    if ([v35 length])
    {
      v36 = 0;
      if ((v77 & 1) == 0)
      {
        v36 = !v76;
      }
    }

    _objc_release(v35);
    if (v36)
    {
      v34 = [(AKSRPAuthenticationContextHelper *)v86 _identityAuthorizationPayload];
      [location[0] setObject:? forKeyedSubscript:?];
      _objc_release(v34);
    }
  }

  v33 = [(AKAppleIDAuthenticationContext *)v86->_authContext _masterKey];
  _objc_release(v33);
  if (v33)
  {
    v71 = _AKLogSystem();
    v70 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(v71, OS_LOG_TYPE_DEFAULT))
    {
      v31 = v71;
      v32 = v70;
      sub_10001CEEC(v69);
      _os_log_impl(&_mh_execute_header, v31, v32, "Context has masterKey set! Setting masterKeyIsEligible", v69, 2u);
    }

    objc_storeStrong(&v71, 0);
    [location[0] setObject:&__kCFBooleanTrue forKeyedSubscript:@"mke"];
  }

  v30 = [(AKSRPAuthenticationContextHelper *)v86 authContext];
  v68 = [(AKAppleIDAuthenticationContext *)v30 _proxiedAppBundleID];
  _objc_release(v30);
  if ([v68 length])
  {
    v67 = _AKLogSystem();
    v66 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(v67, OS_LOG_TYPE_DEFAULT))
    {
      v28 = v67;
      v29 = v66;
      sub_10001CEEC(v65);
      _os_log_impl(&_mh_execute_header, v28, v29, "Context has a proxied bundle id set!", v65, 2u);
    }

    objc_storeStrong(&v67, 0);
    [location[0] setObject:v68 forKeyedSubscript:@"pbid"];
  }

  if ([(AKSRPAuthenticationContextHelper *)v86 _masterKeyAsSecondFactor])
  {
    oslog = _AKLogSystem();
    v63 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
    {
      v26 = oslog;
      v27 = v63;
      sub_10001CEEC(v62);
      _os_log_impl(&_mh_execute_header, v26, v27, "Context has set masterKeyAsSecondFactor", v62, 2u);
    }

    objc_storeStrong(&oslog, 0);
    [location[0] setObject:&__kCFBooleanTrue forKeyedSubscript:@"mk2fa"];
    v25 = [(AKAppleIDAuthenticationContext *)v86->_authContext _identityToken];
    [location[0] setObject:? forKeyedSubscript:?];
    _objc_release(v25);
  }

  v24 = [(AKAppleIDAuthenticationContext *)v86->_authContext dependentAltDSID];
  _objc_release(v24);
  if (v24)
  {
    v61 = _AKLogSystem();
    v60 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(v61, OS_LOG_TYPE_DEFAULT))
    {
      v22 = v61;
      v23 = v60;
      sub_10001CEEC(v59);
      _os_log_impl(&_mh_execute_header, v22, v23, "Context indicates that dependent tokens are being requested by parent account", v59, 2u);
    }

    objc_storeStrong(&v61, 0);
    v21 = [(AKAppleIDAuthenticationContext *)v86->_authContext dependentAltDSID];
    [location[0] setObject:? forKeyedSubscript:?];
    _objc_release(v21);
  }

  if ((+[AKFeatureManager isEnforceMDMPolicyEnabled]& 1) != 0)
  {
    v19 = objc_alloc_init(AKMDMInformationProvider);
    v58 = [(AKMDMInformationProvider *)v19 fetchMDMInformationIfNecessaryForAuthContext:v86->_authContext];
    _objc_release(v19);
    v20 = [v58 deviceManagedState];
    _objc_release(v20);
    if (v20)
    {
      v18 = [v58 deviceManagedState];
      [location[0] setObject:? forKeyedSubscript:?];
      _objc_release(v18);
    }

    v17 = [v58 organizationToken];
    _objc_release(v17);
    if (v17)
    {
      v16 = [v58 organizationToken];
      [location[0] setObject:? forKeyedSubscript:?];
      _objc_release(v16);
    }

    objc_storeStrong(&v58, 0);
  }

  v15 = [NSString stringWithFormat:@"%lu", [AKDevice currentDeviceAuthenticationModeForAuthContext:v86->_authContext]];
  [location[0] setObject:? forKeyedSubscript:?];
  _objc_release(v15);
  if (([(AKAppleIDAuthenticationContext *)v86->_authContext isContextRequestingReauthForExistingService]& 1) != 0)
  {
    v57 = _AKLogSystem();
    v56 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(v57, OS_LOG_TYPE_DEFAULT))
    {
      v13 = v57;
      v14 = v56;
      sub_10001CEEC(v55);
      _os_log_impl(&_mh_execute_header, v13, v14, "Context indicates we are performing reauth for existing service", v55, 2u);
    }

    objc_storeStrong(&v57, 0);
    [location[0] setObject:&__kCFBooleanTrue forKeyedSubscript:@"X-Apple-I-ReAuth"];
  }

  v12 = [(AKAppleIDAuthenticationContext *)v86->_authContext proxiedAppleID];
  _objc_release(v12);
  if (v12)
  {
    v54 = _AKLogSystem();
    v53 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(v54, OS_LOG_TYPE_DEFAULT))
    {
      v10 = v54;
      v11 = v53;
      sub_10001CEEC(v52);
      _os_log_impl(&_mh_execute_header, v10, v11, "Context has set proxiedAppleID", v52, 2u);
    }

    objc_storeStrong(&v54, 0);
    v9 = [(AKAppleIDAuthenticationContext *)v86->_authContext proxiedAppleID];
    [location[0] setObject:? forKeyedSubscript:?];
    _objc_release(v9);
  }

  objc_storeStrong(&v68, 0);
  objc_storeStrong(location, 0);
}

- (BOOL)canPresentRemoteUI
{
  v4 = 1;
  if ([(AKAppleIDAuthenticationContext *)self->_authContext _capabilityForUIDisplay]!= 2)
  {
    v4 = 1;
    if ([(AKAppleIDAuthenticationContext *)self->_authContext _capabilityForUIDisplay]!= 3)
    {
      v3 = 0;
      if ([(AKAppleIDAuthenticationContext *)self->_authContext _capabilityForUIDisplay]== 1)
      {
        v3 = [(AKAppleIDAuthenticationContext *)self->_authContext _performUIOutOfProcess];
      }

      v4 = v3;
    }
  }

  return v4 & 1;
}

- (id)_passwordResetBackupToken
{
  if ([(AKSRPContextHelper *)self ignoreInternalTokens])
  {
    v8 = 0;
  }

  else
  {
    if (!self->_passwordResetBackupToken)
    {
      v6 = +[AKAccountManager sharedInstance];
      v5 = [(AKAppleIDAuthenticationContext *)self->_authContext authKitAccount:0];
      v2 = [(AKAccountManager *)v6 passwordResetTokenBackupForAccount:?];
      passwordResetBackupToken = self->_passwordResetBackupToken;
      self->_passwordResetBackupToken = v2;
      _objc_release(passwordResetBackupToken);
      _objc_release(v5);
      _objc_release(v6);
    }

    v8 = _objc_retain(self->_passwordResetBackupToken);
  }

  return v8;
}

- (id)_identityAuthorizationPayload
{
  v12[2] = self;
  v12[1] = a2;
  v3 = +[AKAccountManager sharedInstance];
  v12[0] = [(AKAccountManager *)v3 altDSIDforPrimaryiCloudAccount];
  _objc_release(v3);
  v4 = +[AKAccountManager sharedInstance];
  v11 = [(AKAccountManager *)v4 authKitAccountWithAltDSID:v12[0] error:?];
  _objc_release(v4);
  v6 = +[AKAccountManager sharedInstance];
  v5 = [(AKAccountManager *)v6 masterTokenForAccount:v11];
  v10 = [v5 stringValue];
  _objc_release(v5);
  _objc_release(v6);
  v9 = [NSString stringWithFormat:@"%@:%@", v12[0], v10];
  v8 = [(NSString *)v9 dataUsingEncoding:4];
  v7 = [(NSData *)v8 base64EncodedStringWithOptions:0];
  objc_storeStrong(&v8, 0);
  objc_storeStrong(&v9, 0);
  objc_storeStrong(&v10, 0);
  objc_storeStrong(&v11, 0);
  objc_storeStrong(v12, 0);

  return v7;
}

@end