@interface AKSRPContextHelper
- (AKSRPContextHelper)initWithContext:(id)context;
- (BOOL)eligibleForContinuationKeyAuthentication;
- (BOOL)isContextSecretValidForSRP:(id *)p;
- (NSString)altDSID;
- (NSString)passwordResetToken;
- (NSString)username;
- (id)_anisetteHeadersFromAttestationData:(id)data;
- (id)_creationTimeStampForContinuationToken;
- (id)authKitAccount:(id *)account;
- (id)continuationToken:(id *)token;
- (void)_addExperimentalFeaturesInfoToClientProvidedData:(id)data;
- (void)_clearDeviceListCacheForAltDSID:(id)d;
- (void)authenticationParametersWithCompletion:(id)completion;
- (void)clearContinuationTokenIfSupportedWithError:(id)error;
@end

@implementation AKSRPContextHelper

- (AKSRPContextHelper)initWithContext:(id)context
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, context);
  v3 = selfCopy;
  selfCopy = 0;
  v7.receiver = v3;
  v7.super_class = AKSRPContextHelper;
  v6 = [(AKSRPContextHelper *)&v7 init];
  selfCopy = v6;
  objc_storeStrong(&selfCopy, v6);
  if (v6)
  {
    objc_storeStrong(&selfCopy->_authContext, location[0]);
  }

  v5 = _objc_retain(selfCopy);
  objc_storeStrong(location, 0);
  objc_storeStrong(&selfCopy, 0);
  return v5;
}

- (BOOL)isContextSecretValidForSRP:(id *)p
{
  selfCopy = self;
  v32 = a2;
  pCopy = p;
  if (self->_password)
  {
    location = _AKLogSystem();
    v29 = 2;
    if (os_log_type_enabled(location, OS_LOG_TYPE_DEBUG))
    {
      log = location;
      type = v29;
      sub_10001CEEC(v28);
      _os_log_debug_impl(&_mh_execute_header, log, type, "Context eligible for PW based SRP auth...", v28, 2u);
    }

    objc_storeStrong(&location, 0);
    v34 = 1;
  }

  else if (selfCopy->_accountRecoveryMasterKey)
  {
    v27 = _AKLogSystem();
    v26 = 2;
    if (os_log_type_enabled(v27, OS_LOG_TYPE_DEBUG))
    {
      v11 = v27;
      v12 = v26;
      sub_10001CEEC(v25);
      _os_log_debug_impl(&_mh_execute_header, v11, v12, "Context eligible for MRK based SRP auth...", v25, 2u);
    }

    objc_storeStrong(&v27, 0);
    v34 = 1;
  }

  else if (selfCopy->_passwordlessToken)
  {
    v24 = _AKLogSystem();
    v23 = 2;
    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG))
    {
      v9 = v24;
      v10 = v23;
      sub_10001CEEC(v22);
      _os_log_debug_impl(&_mh_execute_header, v9, v10, "Context eligible for PLT based SRP auth...", v22, 2u);
    }

    objc_storeStrong(&v24, 0);
    v34 = 1;
  }

  else
  {
    v21 = 0;
    v20 = 0;
    v8 = [(AKSRPContextHelper *)selfCopy continuationToken:&v20];
    objc_storeStrong(&v21, v20);
    _objc_release(v8);
    if (v8)
    {
      v19 = _AKLogSystem();
      v18 = 2;
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
      {
        v6 = v19;
        v7 = v18;
        sub_10001CEEC(v17);
        _os_log_debug_impl(&_mh_execute_header, v6, v7, "Context eligible for CK based SRP auth...", v17, 2u);
      }

      objc_storeStrong(&v19, 0);
      v34 = 1;
      v16 = 1;
    }

    else
    {
      if (pCopy)
      {
        v5 = v21;
        v3 = v21;
        *pCopy = v5;
      }

      oslog = _AKLogSystem();
      if (os_log_type_enabled(oslog, OS_LOG_TYPE_ERROR))
      {
        sub_1000194D4(v35, v21);
        _os_log_error_impl(&_mh_execute_header, oslog, OS_LOG_TYPE_ERROR, "Context not eligible for SRP auth... %@", v35, 0xCu);
      }

      objc_storeStrong(&oslog, 0);
      v34 = 0;
      v16 = 1;
    }

    objc_storeStrong(&v21, 0);
  }

  return v34 & 1;
}

- (void)authenticationParametersWithCompletion:(id)completion
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, completion);
  v158 = objc_alloc_init(NSMutableDictionary);
  v157 = objc_alloc_init(NSMutableDictionary);
  v156 = objc_alloc_init(NSMutableDictionary);
  username = [(AKSRPContextHelper *)selfCopy username];
  _objc_release(username);
  if (username)
  {
    username2 = [(AKSRPContextHelper *)selfCopy username];
    [v158 setObject:? forKeyedSubscript:?];
    _objc_release(username2);
  }

  v72 = 0;
  if (selfCopy->_passwordlessToken)
  {
    v72 = [(NSString *)selfCopy->_passwordlessToken length]!= 0;
  }

  v155 = v72;
  v71 = 0;
  if (selfCopy->_idmsDataToken)
  {
    v71 = [(NSString *)selfCopy->_idmsDataToken length]!= 0;
  }

  v154 = v71;
  v153 = _AKLogSystem();
  v152 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(v153, OS_LOG_TYPE_DEFAULT))
  {
    if (v155)
    {
      v3 = @"YES";
    }

    else
    {
      v3 = @"NO";
    }

    if (v154)
    {
      v4 = @"YES";
    }

    else
    {
      v4 = @"NO";
    }

    sub_10001B098(v164, v3, v4);
    _os_log_impl(&_mh_execute_header, v153, v152, "Adding passwordlessToken: %@, and idmsDataToken: %@, to auth-params", v164, 0x16u);
  }

  objc_storeStrong(&v153, 0);
  v151 = 0;
  v150 = 0;
  if (selfCopy->_password)
  {
    [v158 setObject:selfCopy->_password forKeyedSubscript:kAppleIDAuthSupportPassword];
  }

  else if (v155)
  {
    [v158 setObject:selfCopy->_passwordlessToken forKeyedSubscript:kAppleIDAuthSupportPassword];
    if (v154)
    {
      [v157 setObject:selfCopy->_idmsDataToken forKeyedSubscript:@"idmsdata"];
    }
  }

  else
  {
    v149 = [(AKSRPContextHelper *)selfCopy continuationToken:0];
    if (v149 && [(AKSRPContextHelper *)selfCopy eligibleForContinuationKeyAuthentication])
    {
      v151 = 1;
      [v158 setObject:v149 forKeyedSubscript:kAppleIDAuthSupportPassword];
      _creationTimeStampForContinuationToken = [(AKSRPContextHelper *)selfCopy _creationTimeStampForContinuationToken];
      if (_creationTimeStampForContinuationToken)
      {
        [v157 setObject:_creationTimeStampForContinuationToken forKeyedSubscript:@"ckcts"];
      }

      objc_storeStrong(&_creationTimeStampForContinuationToken, 0);
    }

    else if (selfCopy->_accountRecoveryMasterKey)
    {
      v150 = 1;
      [v158 setObject:selfCopy->_accountRecoveryMasterKey forKeyedSubscript:kAppleIDAuthSupportPassword];
    }

    objc_storeStrong(&v149, 0);
  }

  if (selfCopy->_biometricAuth)
  {
    v147 = _AKLogSystem();
    v146 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(v147, OS_LOG_TYPE_DEFAULT))
    {
      v69 = v147;
      v70 = v146;
      sub_10001CEEC(v145);
      _os_log_impl(&_mh_execute_header, v69, v70, "bio metric PET requested.", v145, 2u);
    }

    objc_storeStrong(&v147, 0);
    [v157 setObject:&__kCFBooleanTrue forKeyedSubscript:@"biopet"];
  }

  else if (selfCopy->_passcodeAuth)
  {
    v144 = _AKLogSystem();
    v143 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(v144, OS_LOG_TYPE_DEFAULT))
    {
      v67 = v144;
      v68 = v143;
      sub_10001CEEC(v142);
      _os_log_impl(&_mh_execute_header, v67, v68, "passcode PET requested.", v142, 2u);
    }

    objc_storeStrong(&v144, 0);
    [v157 setObject:&__kCFBooleanTrue forKeyedSubscript:@"passcodepet"];
  }

  altDSID = [(AKSRPContextHelper *)selfCopy altDSID];
  v140 = 0;
  v66 = 0;
  if (altDSID)
  {
    appProvidedContext = [(AKAuthenticationContext *)selfCopy->_authContext appProvidedContext];
    v140 = 1;
    v66 = appProvidedContext == 0;
  }

  if (v140)
  {
    _objc_release(appProvidedContext);
  }

  _objc_release(altDSID);
  if (v66)
  {
    oslog = _AKLogSystem();
    v138 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
    {
      v62 = oslog;
      v63 = v138;
      altDSID2 = [(AKSRPContextHelper *)selfCopy altDSID];
      v137 = _objc_retain(altDSID2);
      sub_10001CE98(v163, 1752392040, v137);
      _os_log_impl(&_mh_execute_header, v62, v63, "altDSID is available for auth: %{mask.hash}@", v163, 0x16u);
      _objc_release(altDSID2);
      objc_storeStrong(&v137, 0);
    }

    objc_storeStrong(&oslog, 0);
    altDSID3 = [(AKSRPContextHelper *)selfCopy altDSID];
    [v158 setObject:? forKeyedSubscript:?];
    _objc_release(altDSID3);
  }

  if ([(AKSRPContextHelper *)selfCopy retryAuth])
  {
    [v157 setObject:&__kCFBooleanTrue forKeyedSubscript:@"retry"];
  }

  v60 = +[AKDevice currentDevice];
  serverFriendlyDescription = [v60 serverFriendlyDescription];
  _objc_release(v60);
  if (serverFriendlyDescription)
  {
    [v158 setObject:serverFriendlyDescription forKeyedSubscript:kAppleIDAuthSupportClientInfo];
  }

  companionDevice = [(AKAuthenticationContext *)selfCopy->_authContext companionDevice];
  serverFriendlyDescription2 = [companionDevice serverFriendlyDescription];
  _objc_release(companionDevice);
  if (serverFriendlyDescription2)
  {
    [v158 setObject:serverFriendlyDescription2 forKeyedSubscript:kAppleIDAuthSupportCompanionClientInfo];
  }

  proxiedDevice = [(AKAuthenticationContext *)selfCopy->_authContext proxiedDevice];
  serverFriendlyDescription3 = [proxiedDevice serverFriendlyDescription];
  _objc_release(proxiedDevice);
  if (serverFriendlyDescription3)
  {
    [v158 setObject:serverFriendlyDescription3 forKeyedSubscript:kAppleIDAuthSupportProxiedClientInfo];
  }

  _proxiedAppName = [(AKAuthenticationContext *)selfCopy->_authContext _proxiedAppName];
  if (_proxiedAppName)
  {
    [v157 setObject:_proxiedAppName forKeyedSubscript:@"papp"];
    [v156 setObject:_proxiedAppName forKeyedSubscript:AKProxiedAppNameHeader];
  }

  name = [(AKClient *)selfCopy->_client name];
  if (name)
  {
    [v157 setObject:name forKeyedSubscript:@"capp"];
    [v156 setObject:name forKeyedSubscript:AKClientAppNameHeader];
  }

  client = [(AKSRPContextHelper *)selfCopy client];
  bundleID = [(AKClient *)client bundleID];
  _objc_release(client);
  client2 = [(AKSRPContextHelper *)selfCopy client];
  bundleID2 = [(AKClient *)client2 bundleID];
  v57 = [(NSString *)bundleID2 length];
  _objc_release(bundleID2);
  _objc_release(client2);
  if (v57)
  {
    v130 = _AKLogSystem();
    v129 = OS_LOG_TYPE_DEBUG;
    if (os_log_type_enabled(v130, OS_LOG_TYPE_DEBUG))
    {
      v52 = v130;
      v53 = v129;
      sub_10001CEEC(v128);
      _os_log_debug_impl(&_mh_execute_header, v52, v53, "Client Bundle ID is available", v128, 2u);
    }

    objc_storeStrong(&v130, 0);
    [v156 setObject:bundleID forKeyedSubscript:AKClientBundleIDHeader];
    [v157 setObject:bundleID forKeyedSubscript:@"cbid"];
  }

  [(AKAuthenticationContext *)selfCopy->_authContext serviceType];
  v127 = AKStringFromServiceType();
  if (v127)
  {
    [v157 setObject:v127 forKeyedSubscript:@"svct"];
    [v156 setObject:v127 forKeyedSubscript:AKContextTypeHeader];
  }

  v126 = +[AKDevice currentDevice];
  uniqueDeviceIdentifier = [v126 uniqueDeviceIdentifier];
  if (uniqueDeviceIdentifier)
  {
    [v157 setObject:uniqueDeviceIdentifier forKeyedSubscript:?];
    [v156 setObject:uniqueDeviceIdentifier forKeyedSubscript:@"X-Mme-Device-Id"];
  }

  mLBSerialNumber = [v126 MLBSerialNumber];
  if (mLBSerialNumber)
  {
    [v157 setObject:mLBSerialNumber forKeyedSubscript:@"X-Apple-I-MLB"];
  }

  rOMAddress = [v126 ROMAddress];
  if (rOMAddress)
  {
    [v157 setObject:rOMAddress forKeyedSubscript:@"X-Apple-I-ROM"];
  }

  serialNumber = [v126 serialNumber];
  if (serialNumber)
  {
    [v157 setObject:serialNumber forKeyedSubscript:@"X-Apple-I-SRL-NO"];
  }

  color = [v126 color];
  if (color)
  {
    [v157 setObject:color forKeyedSubscript:@"dec"];
  }

  enclosureColor = [v126 enclosureColor];
  if (enclosureColor)
  {
    [v157 setObject:enclosureColor forKeyedSubscript:@"dc"];
  }

  modelNumber = [v126 modelNumber];
  if (modelNumber)
  {
    [v157 setObject:modelNumber forKeyedSubscript:@"prtn"];
  }

  locale = [v126 locale];
  localeIdentifier = [locale localeIdentifier];
  _objc_release(locale);
  if (localeIdentifier)
  {
    [v157 setObject:localeIdentifier forKeyedSubscript:@"loc"];
  }

  locale2 = [v126 locale];
  v49 = [locale2 objectForKey:NSLocaleCountryCode];
  uppercaseString = [v49 uppercaseString];
  _objc_release(v49);
  _objc_release(locale2);
  if (uppercaseString)
  {
    [v157 setObject:uppercaseString forKeyedSubscript:@"cou"];
  }

  v47 = +[AKConfiguration sharedConfiguration];
  v48 = [v47 shouldAllowExperimentalMode] == 1;
  _objc_release(v47);
  v116 = v48;
  if (v48 && ([v126 isInternalBuild] & 1) != 0)
  {
    v115 = _AKLogSystem();
    v114 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(v115, OS_LOG_TYPE_DEFAULT))
    {
      v45 = v115;
      v46 = v114;
      sub_10001CEEC(v113);
      _os_log_impl(&_mh_execute_header, v45, v46, "Opting into Experimental Mode through SRP", v113, 2u);
    }

    objc_storeStrong(&v115, 0);
    [v157 setObject:&__kCFBooleanTrue forKeyedSubscript:AKExperimentalModeHeaderKey];
  }

  [(AKSRPContextHelper *)selfCopy _addExperimentalFeaturesInfoToClientProvidedData:v157];
  v43 = +[AKConfiguration sharedConfiguration];
  requestedCloudPartition = [v43 requestedCloudPartition];
  _objc_release(v43);
  v112[1] = requestedCloudPartition;
  v112[0] = [NSString stringWithFormat:@"%lu", requestedCloudPartition];
  v111 = _AKLogSystem();
  v110 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(v111, OS_LOG_TYPE_DEFAULT))
  {
    sub_1000194D4(v162, v112[0]);
    _os_log_impl(&_mh_execute_header, v111, v110, "Sending requested cloud partition: %@", v162, 0xCu);
  }

  objc_storeStrong(&v111, 0);
  [v157 setObject:v112[0] forKeyedSubscript:AKRequestedCloudPartitionHeaderKey];
  objc_storeStrong(v112, 0);
  v41 = +[AKConfiguration sharedConfiguration];
  v42 = [v41 shouldEnableTestAccountMode] == 1;
  _objc_release(v41);
  v109 = v42;
  if (v42 && ([v126 isInternalBuild] & 1) != 0)
  {
    v108 = _AKLogSystem();
    v107 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(v108, OS_LOG_TYPE_DEFAULT))
    {
      v39 = v108;
      v40 = v107;
      sub_10001CEEC(v106);
      _os_log_impl(&_mh_execute_header, v39, v40, "Test Account Header Attached", v106, 2u);
    }

    objc_storeStrong(&v108, 0);
    [v157 setObject:&__kCFBooleanTrue forKeyedSubscript:AKTestAccountHeaderKey];
  }

  isMultiUserMode = [v126 isMultiUserMode];
  if (isMultiUserMode)
  {
    [v157 setObject:&__kCFBooleanTrue forKeyedSubscript:@"mu"];
  }

  isInternalBuild = [v126 isInternalBuild];
  v37 = +[AKConfiguration sharedConfiguration];
  v38 = [v37 shouldHideInternalBuildHeader] == 1;
  _objc_release(v37);
  v103 = v38;
  if ((isInternalBuild & 1) != 0 && !v103)
  {
    [v157 setObject:&__kCFBooleanTrue forKeyedSubscript:AKInternalBuildHeaderKey];
  }

  v101 = 0;
  v36 = 0;
  if ([v126 isSeedBuild])
  {
    v102 = +[AKConfiguration sharedConfiguration];
    v101 = 1;
    v36 = [v102 shouldHideSeedBuildHeader] != 1;
  }

  if (v101)
  {
    _objc_release(v102);
  }

  if (v36)
  {
    [v157 setObject:&__kCFBooleanTrue forKeyedSubscript:AKSeedBuildHeaderKey];
  }

  v35 = +[NSDate date];
  ak_serverFriendlyString = [(NSDate *)v35 ak_serverFriendlyString];
  _objc_release(v35);
  if (ak_serverFriendlyString)
  {
    [v157 setObject:ak_serverFriendlyString forKeyedSubscript:@"X-Apple-I-Client-Time"];
  }

  if (selfCopy->_password)
  {
    v99 = _AKLogSystem();
    v98 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(v99, OS_LOG_TYPE_DEFAULT))
    {
      v33 = v99;
      v34 = v98;
      sub_10001CEEC(v97);
      _os_log_impl(&_mh_execute_header, v33, v34, "Password available. Will ask for bootstrap password-based auth.", v97, 2u);
    }

    objc_storeStrong(&v99, 0);
    [v157 setObject:&__kCFBooleanTrue forKeyedSubscript:@"bootstrap"];
  }

  else if (selfCopy->_passwordlessToken)
  {
    v96 = _AKLogSystem();
    v95 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(v96, OS_LOG_TYPE_DEFAULT))
    {
      v31 = v96;
      v32 = v95;
      sub_10001CEEC(v94);
      _os_log_impl(&_mh_execute_header, v31, v32, "PasswordlessToken available. Will ask for passwordlessToken-based auth.", v94, 2u);
    }

    objc_storeStrong(&v96, 0);
    [v157 setObject:&__kCFBooleanTrue forKeyedSubscript:@"pltauth"];
  }

  else if (v151)
  {
    v93 = _AKLogSystem();
    v92 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(v93, OS_LOG_TYPE_DEFAULT))
    {
      v29 = v93;
      v30 = v92;
      sub_10001CEEC(v91);
      _os_log_impl(&_mh_execute_header, v29, v30, "No password, but CK is available. Will ask for ck-based auth.", v91, 2u);
    }

    objc_storeStrong(&v93, 0);
    [v157 setObject:&__kCFBooleanTrue forKeyedSubscript:@"ckauth"];
  }

  else if (v150)
  {
    v90 = _AKLogSystem();
    v89 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(v90, OS_LOG_TYPE_DEFAULT))
    {
      v27 = v90;
      v28 = v89;
      sub_10001CEEC(v88);
      _os_log_impl(&_mh_execute_header, v27, v28, "Master Key avalable.  Will ask for mk-based auth.", v88, 2u);
    }

    objc_storeStrong(&v90, 0);
    [v157 setObject:&__kCFBooleanTrue forKeyedSubscript:@"mrkauth"];
    decodedRecoveryPET = [(AKSRPContextHelper *)selfCopy decodedRecoveryPET];
    _objc_release(decodedRecoveryPET);
    if (decodedRecoveryPET)
    {
      decodedRecoveryPET2 = [(AKSRPContextHelper *)selfCopy decodedRecoveryPET];
      [v157 setObject:? forKeyedSubscript:?];
      _objc_release(decodedRecoveryPET2);
    }

    decodedRecoveryIdentityToken = [(AKSRPContextHelper *)selfCopy decodedRecoveryIdentityToken];
    _objc_release(decodedRecoveryIdentityToken);
    if (decodedRecoveryIdentityToken)
    {
      decodedRecoveryIdentityToken2 = [(AKSRPContextHelper *)selfCopy decodedRecoveryIdentityToken];
      [v157 setObject:? forKeyedSubscript:?];
      _objc_release(decodedRecoveryIdentityToken2);
    }
  }

  passwordResetToken = [(AKSRPContextHelper *)selfCopy passwordResetToken];
  if (passwordResetToken)
  {
    [v157 setObject:passwordResetToken forKeyedSubscript:@"X-Apple-I-PRK"];
  }

  proxiedToken = [(AKSRPContextHelper *)selfCopy proxiedToken];
  _objc_release(proxiedToken);
  if (proxiedToken)
  {
    v86 = _AKLogSystem();
    v85 = OS_LOG_TYPE_DEBUG;
    if (os_log_type_enabled(v86, OS_LOG_TYPE_DEBUG))
    {
      v20 = v86;
      v21 = v85;
      sub_10001CEEC(v84);
      _os_log_debug_impl(&_mh_execute_header, v20, v21, "Proxied token is available. Attaching to SRP request.", v84, 2u);
    }

    objc_storeStrong(&v86, 0);
    proxiedToken2 = [(AKSRPContextHelper *)selfCopy proxiedToken];
    [v157 setObject:? forKeyedSubscript:?];
    _objc_release(proxiedToken2);
  }

  additionalHeaders = [(AKSRPContextHelper *)selfCopy additionalHeaders];
  _objc_release(additionalHeaders);
  if (additionalHeaders)
  {
    v83 = _AKLogSystem();
    v82 = OS_LOG_TYPE_DEBUG;
    if (os_log_type_enabled(v83, OS_LOG_TYPE_DEBUG))
    {
      v16 = selfCopy;
      additionalHeaders2 = [(AKSRPContextHelper *)selfCopy additionalHeaders];
      sub_10001B098(v161, v16, additionalHeaders2);
      _os_log_debug_impl(&_mh_execute_header, v83, v82, "%@: Attaching additional headers (%@) to SRP request", v161, 0x16u);
      _objc_release(additionalHeaders2);
    }

    objc_storeStrong(&v83, 0);
    v14 = v156;
    additionalHeaders3 = [(AKSRPContextHelper *)selfCopy additionalHeaders];
    [v14 addEntriesFromDictionary:?];
    _objc_release(additionalHeaders3);
  }

  v12 = [NSNumber numberWithBool:[(AKSRPContextHelper *)selfCopy walrusEnabled]];
  [v157 setObject:? forKeyedSubscript:?];
  _objc_release(v12);
  v13 = [NSNumber numberWithBool:[(AKSRPContextHelper *)selfCopy walrusWebAccessEnabled]];
  [v157 setObject:? forKeyedSubscript:?];
  _objc_release(v13);
  if ([(AKSRPContextHelper *)selfCopy passcodeAuthEnabled])
  {
    [v157 setObject:&__kCFBooleanTrue forKeyedSubscript:AKPasscodeAuthHeaderKey];
  }

  idmsData = [(AKSRPContextHelper *)selfCopy idmsData];
  _objc_release(idmsData);
  if (idmsData)
  {
    idmsData2 = [(AKSRPContextHelper *)selfCopy idmsData];
    [v157 setObject:? forKeyedSubscript:?];
    _objc_release(idmsData2);
  }

  v6 = +[AKFeatureManager sharedManager];
  isServerBackoffOptInEnabled = [v6 isServerBackoffOptInEnabled];
  _objc_release(v6);
  v81 = isServerBackoffOptInEnabled;
  v8 = [NSNumber numberWithBool:isServerBackoffOptInEnabled & 1];
  [v156 setObject:? forKeyedSubscript:?];
  _objc_release(v8);
  v5 = [AKAnisetteProvisioningService alloc];
  v80 = [(AKAnisetteProvisioningService *)v5 initWithClient:selfCopy->_client authenticationContext:selfCopy->_authContext];
  v9 = v80;
  v79 = _objc_retain(location[0]);
  v75 = _objc_retain(selfCopy);
  v76 = _objc_retain(v157);
  v77 = _objc_retain(v156);
  v78 = _objc_retain(v158);
  [AKAnisetteProvisioningService _attestationDataForRequestData:v9 completion:"_attestationDataForRequestData:completion:"];
  objc_storeStrong(&v78, 0);
  objc_storeStrong(&v77, 0);
  objc_storeStrong(&v76, 0);
  objc_storeStrong(&v75, 0);
  objc_storeStrong(&v79, 0);
  objc_storeStrong(&v80, 0);
  objc_storeStrong(&passwordResetToken, 0);
  objc_storeStrong(&ak_serverFriendlyString, 0);
  objc_storeStrong(&uppercaseString, 0);
  objc_storeStrong(&localeIdentifier, 0);
  objc_storeStrong(&modelNumber, 0);
  objc_storeStrong(&enclosureColor, 0);
  objc_storeStrong(&color, 0);
  objc_storeStrong(&serialNumber, 0);
  objc_storeStrong(&rOMAddress, 0);
  objc_storeStrong(&mLBSerialNumber, 0);
  objc_storeStrong(&uniqueDeviceIdentifier, 0);
  objc_storeStrong(&v126, 0);
  objc_storeStrong(&v127, 0);
  objc_storeStrong(&bundleID, 0);
  objc_storeStrong(&name, 0);
  objc_storeStrong(&_proxiedAppName, 0);
  objc_storeStrong(&serverFriendlyDescription3, 0);
  objc_storeStrong(&serverFriendlyDescription2, 0);
  objc_storeStrong(&serverFriendlyDescription, 0);
  objc_storeStrong(&v156, 0);
  objc_storeStrong(&v157, 0);
  objc_storeStrong(&v158, 0);
  objc_storeStrong(location, 0);
}

- (id)_anisetteHeadersFromAttestationData:(id)data
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, data);
  v16 = +[NSMutableDictionary dictionary];
  v19[0] = AKHTTPHeaderMID;
  v19[1] = AKHTTPHeaderOTP;
  v19[2] = AKHTTPHeaderRoutingInfo;
  v19[3] = AKHTTPHeaderLocalUserUUID;
  v15 = [NSArray arrayWithObjects:v19 count:4];
  memset(__b, 0, sizeof(__b));
  obj = _objc_retain(v15);
  v11 = [obj countByEnumeratingWithState:__b objects:v18 count:16];
  if (v11)
  {
    v7 = *__b[2];
    v8 = 0;
    v9 = v11;
    while (1)
    {
      v6 = v8;
      if (*__b[2] != v7)
      {
        objc_enumerationMutation(obj);
      }

      v14 = *(__b[1] + 8 * v8);
      attestationHeaders = [location[0] attestationHeaders];
      v12 = [attestationHeaders objectForKeyedSubscript:v14];
      _objc_release(attestationHeaders);
      if (v12)
      {
        [v16 setObject:v12 forKey:v14];
      }

      objc_storeStrong(&v12, 0);
      ++v8;
      if (v6 + 1 >= v9)
      {
        v8 = 0;
        v9 = [obj countByEnumeratingWithState:__b objects:v18 count:16];
        if (!v9)
        {
          break;
        }
      }
    }
  }

  _objc_release(obj);
  v4 = _objc_retain(v16);
  objc_storeStrong(&v15, 0);
  objc_storeStrong(&v16, 0);
  objc_storeStrong(location, 0);

  return v4;
}

- (void)_addExperimentalFeaturesInfoToClientProvidedData:(id)data
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, data);
  v7 = +[AKDevice currentDevice];
  isInternalBuild = [v7 isInternalBuild];
  _objc_release(v7);
  if (isInternalBuild)
  {
    v5 = +[AKConfiguration sharedConfiguration];
    internalFeaturesMaskValue = [v5 internalFeaturesMaskValue];
    _objc_release(v5);
    v10 = internalFeaturesMaskValue;
    if (internalFeaturesMaskValue)
    {
      v9 = _AKLogSystem();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        sub_100036FE8(v12, v10);
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Sending experimental features as %lu", v12, 0xCu);
      }

      objc_storeStrong(&v9, 0);
      v4 = [NSNumber numberWithUnsignedInteger:v10];
      stringValue = [(NSNumber *)v4 stringValue];
      [location[0] setObject:? forKeyedSubscript:?];
      _objc_release(stringValue);
      _objc_release(v4);
    }
  }

  objc_storeStrong(location, 0);
}

- (void)clearContinuationTokenIfSupportedWithError:(id)error
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, error);
  password = selfCopy->_password;
  v24 = 0;
  v11 = 0;
  if (!password)
  {
    v25 = [(AKSRPContextHelper *)selfCopy continuationToken:0];
    v24 = 1;
    v11 = v25 != 0;
  }

  if (v24)
  {
    _objc_release(v25);
  }

  if (v11)
  {
    v23 = [(AKSRPContextHelper *)selfCopy authKitAccount:0];
    v22 = 0;
    v21 = _AKLogSystem();
    v20 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      sub_10001B098(v28, selfCopy, v23);
      _os_log_impl(&_mh_execute_header, v21, v20, "%@: Attempting to clear continuation token for account (%@)", v28, 0x16u);
    }

    objc_storeStrong(&v21, 0);
    authContext = selfCopy->_authContext;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      telemetryFlowID = [(AKAuthenticationContext *)selfCopy->_authContext telemetryFlowID];
      v5 = v22;
      v22 = telemetryFlowID;
      _objc_release(v5);
    }

    v7 = +[AKAccountManager sharedInstance];
    [(AKAccountManager *)v7 removeContinuationTokenForAccount:v23 telemetryFlowID:v22 error:location[0]];
    _objc_release(v7);
    altDSID = [(AKAuthenticationContext *)selfCopy->_authContext altDSID];
    v18 = 0;
    isDeviceListCacheEnableDryMode = 0;
    if (altDSID)
    {
      v19 = +[AKFeatureManager sharedManager];
      v18 = 1;
      isDeviceListCacheEnableDryMode = [v19 isDeviceListCacheEnableDryMode];
    }

    if (v18)
    {
      _objc_release(v19);
    }

    _objc_release(altDSID);
    if (isDeviceListCacheEnableDryMode)
    {
      queue = dispatch_get_global_queue(9, 0);
      v12 = _NSConcreteStackBlock;
      v13 = -1073741824;
      v14 = 0;
      v15 = sub_10019A360;
      v16 = &unk_10031F8B0;
      v17 = _objc_retain(selfCopy);
      dispatch_async(queue, &v12);
      _objc_release(queue);
      objc_storeStrong(&v17, 0);
    }

    objc_storeStrong(&v22, 0);
    objc_storeStrong(&v23, 0);
  }

  objc_storeStrong(location, 0);
}

- (void)_clearDeviceListCacheForAltDSID:(id)d
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, d);
  v4 = [AKDeviceListRequester alloc];
  v7 = +[AKDeviceListStoreManager sharedManager];
  v6 = objc_opt_new();
  v5 = +[AKAccountManager sharedInstance];
  client = selfCopy->_client;
  v16 = [AKDeviceListRequester initWithStoreManager:v4 cdpFactory:"initWithStoreManager:cdpFactory:accountManager:client:" accountManager:v7 client:v6];
  _objc_release(v5);
  _objc_release(v6);
  _objc_release(v7);
  v15 = objc_alloc_init(AKDeviceListRequestContext);
  [v15 setAltDSID:location[0]];
  v9 = v16;
  v8 = v15;
  v10 = _NSConcreteStackBlock;
  v11 = 3221225472;
  v12 = sub_10019A5B8;
  v13 = &unk_100320EA0;
  v14 = _objc_retain(v15);
  [(AKDeviceListRequester *)v9 clearDeviceListCacheWithContext:v8 completionHandler:?];
  objc_storeStrong(&v14, 0);
  objc_storeStrong(&v15, 0);
  objc_storeStrong(&v16, 0);
  objc_storeStrong(location, 0);
}

- (id)authKitAccount:(id *)account
{
  selfCopy = self;
  v21 = a2;
  accountCopy = account;
  if (self->_authKitAccount)
  {
    goto LABEL_11;
  }

  altDSID = [(AKAuthenticationContext *)selfCopy->_authContext altDSID];
  _objc_release(altDSID);
  if (altDSID)
  {
    v15 = +[AKAccountManager sharedInstance];
    altDSID2 = [(AKAuthenticationContext *)selfCopy->_authContext altDSID];
    v3 = [AKAccountManager authKitAccountWithAltDSID:v15 error:"authKitAccountWithAltDSID:error:"];
    authKitAccount = selfCopy->_authKitAccount;
    selfCopy->_authKitAccount = v3;
    _objc_release(authKitAccount);
    _objc_release(altDSID2);
    _objc_release(v15);
LABEL_11:
    v23 = _objc_retain(selfCopy->_authKitAccount);
    goto LABEL_12;
  }

  if (selfCopy->_username)
  {
    v13 = +[AKAccountManager sharedInstance];
    v5 = [(AKAccountManager *)v13 authKitAccountWithAppleID:selfCopy->_username error:accountCopy];
    v6 = selfCopy->_authKitAccount;
    selfCopy->_authKitAccount = v5;
    _objc_release(v6);
    _objc_release(v13);
    goto LABEL_11;
  }

  if (accountCopy)
  {
    v12 = [NSError ak_errorWithCode:-7050];
    v7 = v12;
    *accountCopy = v12;
  }

  location = _AKLogSystem();
  v18 = 16;
  if (os_log_type_enabled(location, OS_LOG_TYPE_ERROR))
  {
    log = location;
    type = v18;
    sub_10001CEEC(v17);
    _os_log_error_impl(&_mh_execute_header, log, type, "SRP Context: AuthKit account fetch attempted with invalid context and we didn't check for DSID...", v17, 2u);
  }

  objc_storeStrong(&location, 0);
  v23 = 0;
LABEL_12:
  v8 = v23;

  return v8;
}

- (id)continuationToken:(id *)token
{
  selfCopy = self;
  v26 = a2;
  tokenCopy = token;
  if (self->_ignoreInternalTokens)
  {
    if (tokenCopy)
    {
      v16 = [NSError ak_errorWithCode:-7027];
      v3 = v16;
      *tokenCopy = v16;
    }

    continuationKey = 0;
  }

  else
  {
    companionKeyEnvelope = [(AKAuthenticationContext *)selfCopy->_authContext companionKeyEnvelope];
    v23 = 0;
    v15 = 0;
    if (companionKeyEnvelope)
    {
      companionDevice = [(AKAuthenticationContext *)selfCopy->_authContext companionDevice];
      v23 = 1;
      v15 = companionDevice != 0;
    }

    if (v23)
    {
      _objc_release(companionDevice);
    }

    _objc_release(companionKeyEnvelope);
    if (v15)
    {
      location = _AKLogSystem();
      v21 = OS_LOG_TYPE_DEFAULT;
      if (os_log_type_enabled(location, OS_LOG_TYPE_DEFAULT))
      {
        companionKeyEnvelope2 = [(AKAuthenticationContext *)selfCopy->_authContext companionKeyEnvelope];
        sub_10001B098(v29, selfCopy, companionKeyEnvelope2);
        _os_log_impl(&_mh_execute_header, location, v21, "%@: Using continuation key provided by companion key envelope (%@)", v29, 0x16u);
        _objc_release(companionKeyEnvelope2);
      }

      objc_storeStrong(&location, 0);
      companionKeyEnvelope3 = [(AKAuthenticationContext *)selfCopy->_authContext companionKeyEnvelope];
      continuationKey = [companionKeyEnvelope3 continuationKey];
      _objc_release(companionKeyEnvelope3);
    }

    else
    {
      if (selfCopy->_continuationToken)
      {
        goto LABEL_20;
      }

      v20 = 0;
      v18 = 0;
      v11 = [(AKSRPContextHelper *)selfCopy authKitAccount:&v18];
      objc_storeStrong(&v20, v18);
      v19 = v11;
      if (v20)
      {
        if (tokenCopy)
        {
          v10 = v20;
          v4 = v20;
          *tokenCopy = v10;
        }

        continuationKey = 0;
        v17 = 1;
      }

      else
      {
        v9 = +[AKAccountManager sharedInstance];
        v5 = [(AKAccountManager *)v9 continuationTokenForAccount:v19 error:tokenCopy];
        continuationToken = selfCopy->_continuationToken;
        selfCopy->_continuationToken = v5;
        _objc_release(continuationToken);
        _objc_release(v9);
        v17 = 0;
      }

      objc_storeStrong(&v19, 0);
      objc_storeStrong(&v20, 0);
      if (!v17)
      {
LABEL_20:
        continuationKey = _objc_retain(selfCopy->_continuationToken);
      }
    }
  }

  v7 = continuationKey;

  return v7;
}

- (id)_creationTimeStampForContinuationToken
{
  selfCopy = self;
  v15 = a2;
  companionKeyEnvelope = [(AKAuthenticationContext *)self->_authContext companionKeyEnvelope];
  v13 = 0;
  v7 = 0;
  if (companionKeyEnvelope)
  {
    companionDevice = [(AKAuthenticationContext *)selfCopy->_authContext companionDevice];
    v13 = 1;
    v7 = companionDevice != 0;
  }

  if (v13)
  {
    _objc_release(companionDevice);
  }

  _objc_release(companionKeyEnvelope);
  if (v7)
  {
    v17 = 0;
  }

  else
  {
    v12 = 0;
    v10 = 0;
    v5 = [(AKSRPContextHelper *)selfCopy authKitAccount:&v10];
    objc_storeStrong(&v12, v10);
    v11 = v5;
    if (v12)
    {
      v17 = 0;
      v9 = 1;
    }

    else
    {
      v4 = +[AKAccountManager sharedInstance];
      v8 = [(AKAccountManager *)v4 tokenCreationTimeStampWithIdentifier:ACContinuationTokenKey forAccount:v11 error:?];
      _objc_release(v4);
      v17 = _objc_retain(v8);
      v9 = 1;
      objc_storeStrong(&v8, 0);
    }

    objc_storeStrong(&v11, 0);
    objc_storeStrong(&v12, 0);
  }

  v2 = v17;

  return v2;
}

- (NSString)passwordResetToken
{
  selfCopy = self;
  v20 = a2;
  if (self->_ignoreInternalTokens)
  {
    passwordResetKey = 0;
  }

  else
  {
    companionKeyEnvelope = [(AKAuthenticationContext *)selfCopy->_authContext companionKeyEnvelope];
    v18 = 0;
    v11 = 0;
    if (companionKeyEnvelope)
    {
      companionDevice = [(AKAuthenticationContext *)selfCopy->_authContext companionDevice];
      v18 = 1;
      v11 = companionDevice != 0;
    }

    if (v18)
    {
      _objc_release(companionDevice);
    }

    _objc_release(companionKeyEnvelope);
    if (v11)
    {
      location = _AKLogSystem();
      v16 = OS_LOG_TYPE_DEFAULT;
      if (os_log_type_enabled(location, OS_LOG_TYPE_DEFAULT))
      {
        companionKeyEnvelope2 = [(AKAuthenticationContext *)selfCopy->_authContext companionKeyEnvelope];
        sub_10001B098(v23, selfCopy, companionKeyEnvelope2);
        _os_log_impl(&_mh_execute_header, location, v16, "%@: Using password reset key provided by companion key envelope (%@)", v23, 0x16u);
        _objc_release(companionKeyEnvelope2);
      }

      objc_storeStrong(&location, 0);
      companionKeyEnvelope3 = [(AKAuthenticationContext *)selfCopy->_authContext companionKeyEnvelope];
      passwordResetKey = [companionKeyEnvelope3 passwordResetKey];
      _objc_release(companionKeyEnvelope3);
    }

    else
    {
      if (selfCopy->_passwordResetToken)
      {
        goto LABEL_16;
      }

      v15 = 0;
      v13 = 0;
      v7 = [(AKSRPContextHelper *)selfCopy authKitAccount:&v13];
      objc_storeStrong(&v15, v13);
      v14 = v7;
      if (v15)
      {
        passwordResetKey = 0;
        v12 = 1;
      }

      else
      {
        v6 = +[AKAccountManager sharedInstance];
        v2 = [(AKAccountManager *)v6 passwordResetTokenForAccount:v14 error:0];
        passwordResetToken = selfCopy->_passwordResetToken;
        selfCopy->_passwordResetToken = v2;
        _objc_release(passwordResetToken);
        _objc_release(v6);
        v12 = 0;
      }

      objc_storeStrong(&v14, 0);
      objc_storeStrong(&v15, 0);
      if (!v12)
      {
LABEL_16:
        passwordResetKey = _objc_retain(selfCopy->_passwordResetToken);
      }
    }
  }

  v4 = passwordResetKey;

  return v4;
}

- (NSString)username
{
  selfCopy = self;
  v21 = a2;
  username = self->_username;
  v19 = 0;
  v17 = 0;
  v15 = 0;
  if (!username)
  {
    companionKeyEnvelope = [(AKAuthenticationContext *)selfCopy->_authContext companionKeyEnvelope];
    v19 = 1;
    v14 = 0;
    if (companionKeyEnvelope)
    {
      companionDevice = [(AKAuthenticationContext *)selfCopy->_authContext companionDevice];
      v17 = 1;
      v14 = companionDevice != 0;
    }

    v15 = v14;
  }

  if (v17)
  {
    _objc_release(companionDevice);
  }

  if (v19)
  {
    _objc_release(companionKeyEnvelope);
  }

  if (v15)
  {
    location = _AKLogSystem();
    if (os_log_type_enabled(location, OS_LOG_TYPE_DEFAULT))
    {
      companionKeyEnvelope2 = [(AKAuthenticationContext *)selfCopy->_authContext companionKeyEnvelope];
      username = [companionKeyEnvelope2 username];
      companionKeyEnvelope3 = [(AKAuthenticationContext *)selfCopy->_authContext companionKeyEnvelope];
      sub_10004DCC8(v23, selfCopy, username, companionKeyEnvelope3);
      _os_log_impl(&_mh_execute_header, location, OS_LOG_TYPE_DEFAULT, "%@: Using username (%@) from companion key envelope (%@)", v23, 0x20u);
      _objc_release(companionKeyEnvelope3);
      _objc_release(username);
      _objc_release(companionKeyEnvelope2);
    }

    objc_storeStrong(&location, 0);
    companionKeyEnvelope4 = [(AKAuthenticationContext *)selfCopy->_authContext companionKeyEnvelope];
    username2 = [companionKeyEnvelope4 username];
    v4 = selfCopy->_username;
    selfCopy->_username = username2;
    _objc_release(v4);
    _objc_release(companionKeyEnvelope4);
  }

  if (!selfCopy->_username)
  {
    v9 = [(AKSRPContextHelper *)selfCopy authKitAccount:0];
    username3 = [v9 username];
    v6 = selfCopy->_username;
    selfCopy->_username = username3;
    _objc_release(v6);
    _objc_release(v9);
  }

  v7 = selfCopy->_username;

  return v7;
}

- (NSString)altDSID
{
  selfCopy = self;
  v22 = a2;
  if (!self->_altDSID)
  {
    altDSID = [(AKAuthenticationContext *)selfCopy->_authContext altDSID];
    altDSID = selfCopy->_altDSID;
    selfCopy->_altDSID = altDSID;
    _objc_release(altDSID);
    v4 = selfCopy->_altDSID;
    v20 = 0;
    v18 = 0;
    v16 = 0;
    if (!v4)
    {
      companionKeyEnvelope = [(AKAuthenticationContext *)selfCopy->_authContext companionKeyEnvelope];
      v20 = 1;
      v15 = 0;
      if (companionKeyEnvelope)
      {
        companionDevice = [(AKAuthenticationContext *)selfCopy->_authContext companionDevice];
        v18 = 1;
        v15 = companionDevice != 0;
      }

      v16 = v15;
    }

    if (v18)
    {
      _objc_release(companionDevice);
    }

    if (v20)
    {
      _objc_release(companionKeyEnvelope);
    }

    if (v16)
    {
      location = _AKLogSystem();
      if (os_log_type_enabled(location, OS_LOG_TYPE_DEFAULT))
      {
        companionKeyEnvelope2 = [(AKAuthenticationContext *)selfCopy->_authContext companionKeyEnvelope];
        sub_10001B098(v24, selfCopy, companionKeyEnvelope2);
        _os_log_impl(&_mh_execute_header, location, OS_LOG_TYPE_DEFAULT, "%@: Using altDSID from companion key envelope (%@)", v24, 0x16u);
        _objc_release(companionKeyEnvelope2);
      }

      objc_storeStrong(&location, 0);
      companionKeyEnvelope3 = [(AKAuthenticationContext *)selfCopy->_authContext companionKeyEnvelope];
      altDSID2 = [companionKeyEnvelope3 altDSID];
      v6 = selfCopy->_altDSID;
      selfCopy->_altDSID = altDSID2;
      _objc_release(v6);
      _objc_release(companionKeyEnvelope3);
    }

    if (!selfCopy->_altDSID)
    {
      v12 = +[AKAccountManager sharedInstance];
      v11 = [(AKSRPContextHelper *)selfCopy authKitAccount:0];
      v7 = [(AKAccountManager *)v12 altDSIDForAccount:?];
      v8 = selfCopy->_altDSID;
      selfCopy->_altDSID = v7;
      _objc_release(v8);
      _objc_release(v11);
      _objc_release(v12);
    }
  }

  v9 = selfCopy->_altDSID;

  return v9;
}

- (BOOL)eligibleForContinuationKeyAuthentication
{
  if ([(AKAuthenticationContext *)self->_authContext authenticationType]!= 3)
  {
    return 1;
  }

  passcodeAuth = 1;
  if (![(AKSRPContextHelper *)self biometricAuth])
  {
    passcodeAuth = [(AKSRPContextHelper *)self passcodeAuth];
  }

  return passcodeAuth & 1;
}

@end