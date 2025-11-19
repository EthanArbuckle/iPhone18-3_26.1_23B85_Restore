@interface AKSRPContextHelper
- (AKSRPContextHelper)initWithContext:(id)a3;
- (BOOL)eligibleForContinuationKeyAuthentication;
- (BOOL)isContextSecretValidForSRP:(id *)a3;
- (NSString)altDSID;
- (NSString)passwordResetToken;
- (NSString)username;
- (id)_anisetteHeadersFromAttestationData:(id)a3;
- (id)_creationTimeStampForContinuationToken;
- (id)authKitAccount:(id *)a3;
- (id)continuationToken:(id *)a3;
- (void)_addExperimentalFeaturesInfoToClientProvidedData:(id)a3;
- (void)_clearDeviceListCacheForAltDSID:(id)a3;
- (void)authenticationParametersWithCompletion:(id)a3;
- (void)clearContinuationTokenIfSupportedWithError:(id)a3;
@end

@implementation AKSRPContextHelper

- (AKSRPContextHelper)initWithContext:(id)a3
{
  v9 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v3 = v9;
  v9 = 0;
  v7.receiver = v3;
  v7.super_class = AKSRPContextHelper;
  v6 = [(AKSRPContextHelper *)&v7 init];
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

- (BOOL)isContextSecretValidForSRP:(id *)a3
{
  v33 = self;
  v32 = a2;
  v31 = a3;
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

  else if (v33->_accountRecoveryMasterKey)
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

  else if (v33->_passwordlessToken)
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
    v8 = [(AKSRPContextHelper *)v33 continuationToken:&v20];
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
      if (v31)
      {
        v5 = v21;
        v3 = v21;
        *v31 = v5;
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

- (void)authenticationParametersWithCompletion:(id)a3
{
  v160 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v158 = objc_alloc_init(NSMutableDictionary);
  v157 = objc_alloc_init(NSMutableDictionary);
  v156 = objc_alloc_init(NSMutableDictionary);
  v74 = [(AKSRPContextHelper *)v160 username];
  _objc_release(v74);
  if (v74)
  {
    v73 = [(AKSRPContextHelper *)v160 username];
    [v158 setObject:? forKeyedSubscript:?];
    _objc_release(v73);
  }

  v72 = 0;
  if (v160->_passwordlessToken)
  {
    v72 = [(NSString *)v160->_passwordlessToken length]!= 0;
  }

  v155 = v72;
  v71 = 0;
  if (v160->_idmsDataToken)
  {
    v71 = [(NSString *)v160->_idmsDataToken length]!= 0;
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
  if (v160->_password)
  {
    [v158 setObject:v160->_password forKeyedSubscript:kAppleIDAuthSupportPassword];
  }

  else if (v155)
  {
    [v158 setObject:v160->_passwordlessToken forKeyedSubscript:kAppleIDAuthSupportPassword];
    if (v154)
    {
      [v157 setObject:v160->_idmsDataToken forKeyedSubscript:@"idmsdata"];
    }
  }

  else
  {
    v149 = [(AKSRPContextHelper *)v160 continuationToken:0];
    if (v149 && [(AKSRPContextHelper *)v160 eligibleForContinuationKeyAuthentication])
    {
      v151 = 1;
      [v158 setObject:v149 forKeyedSubscript:kAppleIDAuthSupportPassword];
      v148 = [(AKSRPContextHelper *)v160 _creationTimeStampForContinuationToken];
      if (v148)
      {
        [v157 setObject:v148 forKeyedSubscript:@"ckcts"];
      }

      objc_storeStrong(&v148, 0);
    }

    else if (v160->_accountRecoveryMasterKey)
    {
      v150 = 1;
      [v158 setObject:v160->_accountRecoveryMasterKey forKeyedSubscript:kAppleIDAuthSupportPassword];
    }

    objc_storeStrong(&v149, 0);
  }

  if (v160->_biometricAuth)
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

  else if (v160->_passcodeAuth)
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

  v65 = [(AKSRPContextHelper *)v160 altDSID];
  v140 = 0;
  v66 = 0;
  if (v65)
  {
    v141 = [(AKAuthenticationContext *)v160->_authContext appProvidedContext];
    v140 = 1;
    v66 = v141 == 0;
  }

  if (v140)
  {
    _objc_release(v141);
  }

  _objc_release(v65);
  if (v66)
  {
    oslog = _AKLogSystem();
    v138 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
    {
      v62 = oslog;
      v63 = v138;
      v64 = [(AKSRPContextHelper *)v160 altDSID];
      v137 = _objc_retain(v64);
      sub_10001CE98(v163, 1752392040, v137);
      _os_log_impl(&_mh_execute_header, v62, v63, "altDSID is available for auth: %{mask.hash}@", v163, 0x16u);
      _objc_release(v64);
      objc_storeStrong(&v137, 0);
    }

    objc_storeStrong(&oslog, 0);
    v61 = [(AKSRPContextHelper *)v160 altDSID];
    [v158 setObject:? forKeyedSubscript:?];
    _objc_release(v61);
  }

  if ([(AKSRPContextHelper *)v160 retryAuth])
  {
    [v157 setObject:&__kCFBooleanTrue forKeyedSubscript:@"retry"];
  }

  v60 = +[AKDevice currentDevice];
  v136 = [v60 serverFriendlyDescription];
  _objc_release(v60);
  if (v136)
  {
    [v158 setObject:v136 forKeyedSubscript:kAppleIDAuthSupportClientInfo];
  }

  v59 = [(AKAuthenticationContext *)v160->_authContext companionDevice];
  v135 = [v59 serverFriendlyDescription];
  _objc_release(v59);
  if (v135)
  {
    [v158 setObject:v135 forKeyedSubscript:kAppleIDAuthSupportCompanionClientInfo];
  }

  v58 = [(AKAuthenticationContext *)v160->_authContext proxiedDevice];
  v134 = [v58 serverFriendlyDescription];
  _objc_release(v58);
  if (v134)
  {
    [v158 setObject:v134 forKeyedSubscript:kAppleIDAuthSupportProxiedClientInfo];
  }

  v133 = [(AKAuthenticationContext *)v160->_authContext _proxiedAppName];
  if (v133)
  {
    [v157 setObject:v133 forKeyedSubscript:@"papp"];
    [v156 setObject:v133 forKeyedSubscript:AKProxiedAppNameHeader];
  }

  v132 = [(AKClient *)v160->_client name];
  if (v132)
  {
    [v157 setObject:v132 forKeyedSubscript:@"capp"];
    [v156 setObject:v132 forKeyedSubscript:AKClientAppNameHeader];
  }

  v54 = [(AKSRPContextHelper *)v160 client];
  v131 = [(AKClient *)v54 bundleID];
  _objc_release(v54);
  v56 = [(AKSRPContextHelper *)v160 client];
  v55 = [(AKClient *)v56 bundleID];
  v57 = [(NSString *)v55 length];
  _objc_release(v55);
  _objc_release(v56);
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
    [v156 setObject:v131 forKeyedSubscript:AKClientBundleIDHeader];
    [v157 setObject:v131 forKeyedSubscript:@"cbid"];
  }

  [(AKAuthenticationContext *)v160->_authContext serviceType];
  v127 = AKStringFromServiceType();
  if (v127)
  {
    [v157 setObject:v127 forKeyedSubscript:@"svct"];
    [v156 setObject:v127 forKeyedSubscript:AKContextTypeHeader];
  }

  v126 = +[AKDevice currentDevice];
  v125 = [v126 uniqueDeviceIdentifier];
  if (v125)
  {
    [v157 setObject:v125 forKeyedSubscript:?];
    [v156 setObject:v125 forKeyedSubscript:@"X-Mme-Device-Id"];
  }

  v124 = [v126 MLBSerialNumber];
  if (v124)
  {
    [v157 setObject:v124 forKeyedSubscript:@"X-Apple-I-MLB"];
  }

  v123 = [v126 ROMAddress];
  if (v123)
  {
    [v157 setObject:v123 forKeyedSubscript:@"X-Apple-I-ROM"];
  }

  v122 = [v126 serialNumber];
  if (v122)
  {
    [v157 setObject:v122 forKeyedSubscript:@"X-Apple-I-SRL-NO"];
  }

  v121 = [v126 color];
  if (v121)
  {
    [v157 setObject:v121 forKeyedSubscript:@"dec"];
  }

  v120 = [v126 enclosureColor];
  if (v120)
  {
    [v157 setObject:v120 forKeyedSubscript:@"dc"];
  }

  v119 = [v126 modelNumber];
  if (v119)
  {
    [v157 setObject:v119 forKeyedSubscript:@"prtn"];
  }

  v51 = [v126 locale];
  v118 = [v51 localeIdentifier];
  _objc_release(v51);
  if (v118)
  {
    [v157 setObject:v118 forKeyedSubscript:@"loc"];
  }

  v50 = [v126 locale];
  v49 = [v50 objectForKey:NSLocaleCountryCode];
  v117 = [v49 uppercaseString];
  _objc_release(v49);
  _objc_release(v50);
  if (v117)
  {
    [v157 setObject:v117 forKeyedSubscript:@"cou"];
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

  [(AKSRPContextHelper *)v160 _addExperimentalFeaturesInfoToClientProvidedData:v157];
  v43 = +[AKConfiguration sharedConfiguration];
  v44 = [v43 requestedCloudPartition];
  _objc_release(v43);
  v112[1] = v44;
  v112[0] = [NSString stringWithFormat:@"%lu", v44];
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

  v105 = [v126 isMultiUserMode];
  if (v105)
  {
    [v157 setObject:&__kCFBooleanTrue forKeyedSubscript:@"mu"];
  }

  v104 = [v126 isInternalBuild];
  v37 = +[AKConfiguration sharedConfiguration];
  v38 = [v37 shouldHideInternalBuildHeader] == 1;
  _objc_release(v37);
  v103 = v38;
  if ((v104 & 1) != 0 && !v103)
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
  v100 = [(NSDate *)v35 ak_serverFriendlyString];
  _objc_release(v35);
  if (v100)
  {
    [v157 setObject:v100 forKeyedSubscript:@"X-Apple-I-Client-Time"];
  }

  if (v160->_password)
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

  else if (v160->_passwordlessToken)
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
    v26 = [(AKSRPContextHelper *)v160 decodedRecoveryPET];
    _objc_release(v26);
    if (v26)
    {
      v25 = [(AKSRPContextHelper *)v160 decodedRecoveryPET];
      [v157 setObject:? forKeyedSubscript:?];
      _objc_release(v25);
    }

    v24 = [(AKSRPContextHelper *)v160 decodedRecoveryIdentityToken];
    _objc_release(v24);
    if (v24)
    {
      v23 = [(AKSRPContextHelper *)v160 decodedRecoveryIdentityToken];
      [v157 setObject:? forKeyedSubscript:?];
      _objc_release(v23);
    }
  }

  v87 = [(AKSRPContextHelper *)v160 passwordResetToken];
  if (v87)
  {
    [v157 setObject:v87 forKeyedSubscript:@"X-Apple-I-PRK"];
  }

  v22 = [(AKSRPContextHelper *)v160 proxiedToken];
  _objc_release(v22);
  if (v22)
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
    v19 = [(AKSRPContextHelper *)v160 proxiedToken];
    [v157 setObject:? forKeyedSubscript:?];
    _objc_release(v19);
  }

  v18 = [(AKSRPContextHelper *)v160 additionalHeaders];
  _objc_release(v18);
  if (v18)
  {
    v83 = _AKLogSystem();
    v82 = OS_LOG_TYPE_DEBUG;
    if (os_log_type_enabled(v83, OS_LOG_TYPE_DEBUG))
    {
      v16 = v160;
      v17 = [(AKSRPContextHelper *)v160 additionalHeaders];
      sub_10001B098(v161, v16, v17);
      _os_log_debug_impl(&_mh_execute_header, v83, v82, "%@: Attaching additional headers (%@) to SRP request", v161, 0x16u);
      _objc_release(v17);
    }

    objc_storeStrong(&v83, 0);
    v14 = v156;
    v15 = [(AKSRPContextHelper *)v160 additionalHeaders];
    [v14 addEntriesFromDictionary:?];
    _objc_release(v15);
  }

  v12 = [NSNumber numberWithBool:[(AKSRPContextHelper *)v160 walrusEnabled]];
  [v157 setObject:? forKeyedSubscript:?];
  _objc_release(v12);
  v13 = [NSNumber numberWithBool:[(AKSRPContextHelper *)v160 walrusWebAccessEnabled]];
  [v157 setObject:? forKeyedSubscript:?];
  _objc_release(v13);
  if ([(AKSRPContextHelper *)v160 passcodeAuthEnabled])
  {
    [v157 setObject:&__kCFBooleanTrue forKeyedSubscript:AKPasscodeAuthHeaderKey];
  }

  v11 = [(AKSRPContextHelper *)v160 idmsData];
  _objc_release(v11);
  if (v11)
  {
    v10 = [(AKSRPContextHelper *)v160 idmsData];
    [v157 setObject:? forKeyedSubscript:?];
    _objc_release(v10);
  }

  v6 = +[AKFeatureManager sharedManager];
  v7 = [v6 isServerBackoffOptInEnabled];
  _objc_release(v6);
  v81 = v7;
  v8 = [NSNumber numberWithBool:v7 & 1];
  [v156 setObject:? forKeyedSubscript:?];
  _objc_release(v8);
  v5 = [AKAnisetteProvisioningService alloc];
  v80 = [(AKAnisetteProvisioningService *)v5 initWithClient:v160->_client authenticationContext:v160->_authContext];
  v9 = v80;
  v79 = _objc_retain(location[0]);
  v75 = _objc_retain(v160);
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
  objc_storeStrong(&v87, 0);
  objc_storeStrong(&v100, 0);
  objc_storeStrong(&v117, 0);
  objc_storeStrong(&v118, 0);
  objc_storeStrong(&v119, 0);
  objc_storeStrong(&v120, 0);
  objc_storeStrong(&v121, 0);
  objc_storeStrong(&v122, 0);
  objc_storeStrong(&v123, 0);
  objc_storeStrong(&v124, 0);
  objc_storeStrong(&v125, 0);
  objc_storeStrong(&v126, 0);
  objc_storeStrong(&v127, 0);
  objc_storeStrong(&v131, 0);
  objc_storeStrong(&v132, 0);
  objc_storeStrong(&v133, 0);
  objc_storeStrong(&v134, 0);
  objc_storeStrong(&v135, 0);
  objc_storeStrong(&v136, 0);
  objc_storeStrong(&v156, 0);
  objc_storeStrong(&v157, 0);
  objc_storeStrong(&v158, 0);
  objc_storeStrong(location, 0);
}

- (id)_anisetteHeadersFromAttestationData:(id)a3
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
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
      v5 = [location[0] attestationHeaders];
      v12 = [v5 objectForKeyedSubscript:v14];
      _objc_release(v5);
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

- (void)_addExperimentalFeaturesInfoToClientProvidedData:(id)a3
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v7 = +[AKDevice currentDevice];
  v8 = [v7 isInternalBuild];
  _objc_release(v7);
  if (v8)
  {
    v5 = +[AKConfiguration sharedConfiguration];
    v6 = [v5 internalFeaturesMaskValue];
    _objc_release(v5);
    v10 = v6;
    if (v6)
    {
      v9 = _AKLogSystem();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        sub_100036FE8(v12, v10);
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Sending experimental features as %lu", v12, 0xCu);
      }

      objc_storeStrong(&v9, 0);
      v4 = [NSNumber numberWithUnsignedInteger:v10];
      v3 = [(NSNumber *)v4 stringValue];
      [location[0] setObject:? forKeyedSubscript:?];
      _objc_release(v3);
      _objc_release(v4);
    }
  }

  objc_storeStrong(location, 0);
}

- (void)clearContinuationTokenIfSupportedWithError:(id)a3
{
  v27 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  password = v27->_password;
  v24 = 0;
  v11 = 0;
  if (!password)
  {
    v25 = [(AKSRPContextHelper *)v27 continuationToken:0];
    v24 = 1;
    v11 = v25 != 0;
  }

  if (v24)
  {
    _objc_release(v25);
  }

  if (v11)
  {
    v23 = [(AKSRPContextHelper *)v27 authKitAccount:0];
    v22 = 0;
    v21 = _AKLogSystem();
    v20 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      sub_10001B098(v28, v27, v23);
      _os_log_impl(&_mh_execute_header, v21, v20, "%@: Attempting to clear continuation token for account (%@)", v28, 0x16u);
    }

    objc_storeStrong(&v21, 0);
    authContext = v27->_authContext;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v4 = [(AKAuthenticationContext *)v27->_authContext telemetryFlowID];
      v5 = v22;
      v22 = v4;
      _objc_release(v5);
    }

    v7 = +[AKAccountManager sharedInstance];
    [(AKAccountManager *)v7 removeContinuationTokenForAccount:v23 telemetryFlowID:v22 error:location[0]];
    _objc_release(v7);
    v8 = [(AKAuthenticationContext *)v27->_authContext altDSID];
    v18 = 0;
    v9 = 0;
    if (v8)
    {
      v19 = +[AKFeatureManager sharedManager];
      v18 = 1;
      v9 = [v19 isDeviceListCacheEnableDryMode];
    }

    if (v18)
    {
      _objc_release(v19);
    }

    _objc_release(v8);
    if (v9)
    {
      queue = dispatch_get_global_queue(9, 0);
      v12 = _NSConcreteStackBlock;
      v13 = -1073741824;
      v14 = 0;
      v15 = sub_10019A360;
      v16 = &unk_10031F8B0;
      v17 = _objc_retain(v27);
      dispatch_async(queue, &v12);
      _objc_release(queue);
      objc_storeStrong(&v17, 0);
    }

    objc_storeStrong(&v22, 0);
    objc_storeStrong(&v23, 0);
  }

  objc_storeStrong(location, 0);
}

- (void)_clearDeviceListCacheForAltDSID:(id)a3
{
  v18 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v4 = [AKDeviceListRequester alloc];
  v7 = +[AKDeviceListStoreManager sharedManager];
  v6 = objc_opt_new();
  v5 = +[AKAccountManager sharedInstance];
  client = v18->_client;
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

- (id)authKitAccount:(id *)a3
{
  v22 = self;
  v21 = a2;
  v20 = a3;
  if (self->_authKitAccount)
  {
    goto LABEL_11;
  }

  v16 = [(AKAuthenticationContext *)v22->_authContext altDSID];
  _objc_release(v16);
  if (v16)
  {
    v15 = +[AKAccountManager sharedInstance];
    v14 = [(AKAuthenticationContext *)v22->_authContext altDSID];
    v3 = [AKAccountManager authKitAccountWithAltDSID:v15 error:"authKitAccountWithAltDSID:error:"];
    authKitAccount = v22->_authKitAccount;
    v22->_authKitAccount = v3;
    _objc_release(authKitAccount);
    _objc_release(v14);
    _objc_release(v15);
LABEL_11:
    v23 = _objc_retain(v22->_authKitAccount);
    goto LABEL_12;
  }

  if (v22->_username)
  {
    v13 = +[AKAccountManager sharedInstance];
    v5 = [(AKAccountManager *)v13 authKitAccountWithAppleID:v22->_username error:v20];
    v6 = v22->_authKitAccount;
    v22->_authKitAccount = v5;
    _objc_release(v6);
    _objc_release(v13);
    goto LABEL_11;
  }

  if (v20)
  {
    v12 = [NSError ak_errorWithCode:-7050];
    v7 = v12;
    *v20 = v12;
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

- (id)continuationToken:(id *)a3
{
  v27 = self;
  v26 = a2;
  v25 = a3;
  if (self->_ignoreInternalTokens)
  {
    if (v25)
    {
      v16 = [NSError ak_errorWithCode:-7027];
      v3 = v16;
      *v25 = v16;
    }

    v28 = 0;
  }

  else
  {
    v14 = [(AKAuthenticationContext *)v27->_authContext companionKeyEnvelope];
    v23 = 0;
    v15 = 0;
    if (v14)
    {
      v24 = [(AKAuthenticationContext *)v27->_authContext companionDevice];
      v23 = 1;
      v15 = v24 != 0;
    }

    if (v23)
    {
      _objc_release(v24);
    }

    _objc_release(v14);
    if (v15)
    {
      location = _AKLogSystem();
      v21 = OS_LOG_TYPE_DEFAULT;
      if (os_log_type_enabled(location, OS_LOG_TYPE_DEFAULT))
      {
        v13 = [(AKAuthenticationContext *)v27->_authContext companionKeyEnvelope];
        sub_10001B098(v29, v27, v13);
        _os_log_impl(&_mh_execute_header, location, v21, "%@: Using continuation key provided by companion key envelope (%@)", v29, 0x16u);
        _objc_release(v13);
      }

      objc_storeStrong(&location, 0);
      v12 = [(AKAuthenticationContext *)v27->_authContext companionKeyEnvelope];
      v28 = [v12 continuationKey];
      _objc_release(v12);
    }

    else
    {
      if (v27->_continuationToken)
      {
        goto LABEL_20;
      }

      v20 = 0;
      v18 = 0;
      v11 = [(AKSRPContextHelper *)v27 authKitAccount:&v18];
      objc_storeStrong(&v20, v18);
      v19 = v11;
      if (v20)
      {
        if (v25)
        {
          v10 = v20;
          v4 = v20;
          *v25 = v10;
        }

        v28 = 0;
        v17 = 1;
      }

      else
      {
        v9 = +[AKAccountManager sharedInstance];
        v5 = [(AKAccountManager *)v9 continuationTokenForAccount:v19 error:v25];
        continuationToken = v27->_continuationToken;
        v27->_continuationToken = v5;
        _objc_release(continuationToken);
        _objc_release(v9);
        v17 = 0;
      }

      objc_storeStrong(&v19, 0);
      objc_storeStrong(&v20, 0);
      if (!v17)
      {
LABEL_20:
        v28 = _objc_retain(v27->_continuationToken);
      }
    }
  }

  v7 = v28;

  return v7;
}

- (id)_creationTimeStampForContinuationToken
{
  v16 = self;
  v15 = a2;
  v6 = [(AKAuthenticationContext *)self->_authContext companionKeyEnvelope];
  v13 = 0;
  v7 = 0;
  if (v6)
  {
    v14 = [(AKAuthenticationContext *)v16->_authContext companionDevice];
    v13 = 1;
    v7 = v14 != 0;
  }

  if (v13)
  {
    _objc_release(v14);
  }

  _objc_release(v6);
  if (v7)
  {
    v17 = 0;
  }

  else
  {
    v12 = 0;
    v10 = 0;
    v5 = [(AKSRPContextHelper *)v16 authKitAccount:&v10];
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
  v21 = self;
  v20 = a2;
  if (self->_ignoreInternalTokens)
  {
    v22 = 0;
  }

  else
  {
    v10 = [(AKAuthenticationContext *)v21->_authContext companionKeyEnvelope];
    v18 = 0;
    v11 = 0;
    if (v10)
    {
      v19 = [(AKAuthenticationContext *)v21->_authContext companionDevice];
      v18 = 1;
      v11 = v19 != 0;
    }

    if (v18)
    {
      _objc_release(v19);
    }

    _objc_release(v10);
    if (v11)
    {
      location = _AKLogSystem();
      v16 = OS_LOG_TYPE_DEFAULT;
      if (os_log_type_enabled(location, OS_LOG_TYPE_DEFAULT))
      {
        v9 = [(AKAuthenticationContext *)v21->_authContext companionKeyEnvelope];
        sub_10001B098(v23, v21, v9);
        _os_log_impl(&_mh_execute_header, location, v16, "%@: Using password reset key provided by companion key envelope (%@)", v23, 0x16u);
        _objc_release(v9);
      }

      objc_storeStrong(&location, 0);
      v8 = [(AKAuthenticationContext *)v21->_authContext companionKeyEnvelope];
      v22 = [v8 passwordResetKey];
      _objc_release(v8);
    }

    else
    {
      if (v21->_passwordResetToken)
      {
        goto LABEL_16;
      }

      v15 = 0;
      v13 = 0;
      v7 = [(AKSRPContextHelper *)v21 authKitAccount:&v13];
      objc_storeStrong(&v15, v13);
      v14 = v7;
      if (v15)
      {
        v22 = 0;
        v12 = 1;
      }

      else
      {
        v6 = +[AKAccountManager sharedInstance];
        v2 = [(AKAccountManager *)v6 passwordResetTokenForAccount:v14 error:0];
        passwordResetToken = v21->_passwordResetToken;
        v21->_passwordResetToken = v2;
        _objc_release(passwordResetToken);
        _objc_release(v6);
        v12 = 0;
      }

      objc_storeStrong(&v14, 0);
      objc_storeStrong(&v15, 0);
      if (!v12)
      {
LABEL_16:
        v22 = _objc_retain(v21->_passwordResetToken);
      }
    }
  }

  v4 = v22;

  return v4;
}

- (NSString)username
{
  v22 = self;
  v21 = a2;
  username = self->_username;
  v19 = 0;
  v17 = 0;
  v15 = 0;
  if (!username)
  {
    v20 = [(AKAuthenticationContext *)v22->_authContext companionKeyEnvelope];
    v19 = 1;
    v14 = 0;
    if (v20)
    {
      v18 = [(AKAuthenticationContext *)v22->_authContext companionDevice];
      v17 = 1;
      v14 = v18 != 0;
    }

    v15 = v14;
  }

  if (v17)
  {
    _objc_release(v18);
  }

  if (v19)
  {
    _objc_release(v20);
  }

  if (v15)
  {
    location = _AKLogSystem();
    if (os_log_type_enabled(location, OS_LOG_TYPE_DEFAULT))
    {
      v13 = [(AKAuthenticationContext *)v22->_authContext companionKeyEnvelope];
      v12 = [v13 username];
      v11 = [(AKAuthenticationContext *)v22->_authContext companionKeyEnvelope];
      sub_10004DCC8(v23, v22, v12, v11);
      _os_log_impl(&_mh_execute_header, location, OS_LOG_TYPE_DEFAULT, "%@: Using username (%@) from companion key envelope (%@)", v23, 0x20u);
      _objc_release(v11);
      _objc_release(v12);
      _objc_release(v13);
    }

    objc_storeStrong(&location, 0);
    v10 = [(AKAuthenticationContext *)v22->_authContext companionKeyEnvelope];
    v3 = [v10 username];
    v4 = v22->_username;
    v22->_username = v3;
    _objc_release(v4);
    _objc_release(v10);
  }

  if (!v22->_username)
  {
    v9 = [(AKSRPContextHelper *)v22 authKitAccount:0];
    v5 = [v9 username];
    v6 = v22->_username;
    v22->_username = v5;
    _objc_release(v6);
    _objc_release(v9);
  }

  v7 = v22->_username;

  return v7;
}

- (NSString)altDSID
{
  v23 = self;
  v22 = a2;
  if (!self->_altDSID)
  {
    v2 = [(AKAuthenticationContext *)v23->_authContext altDSID];
    altDSID = v23->_altDSID;
    v23->_altDSID = v2;
    _objc_release(altDSID);
    v4 = v23->_altDSID;
    v20 = 0;
    v18 = 0;
    v16 = 0;
    if (!v4)
    {
      v21 = [(AKAuthenticationContext *)v23->_authContext companionKeyEnvelope];
      v20 = 1;
      v15 = 0;
      if (v21)
      {
        v19 = [(AKAuthenticationContext *)v23->_authContext companionDevice];
        v18 = 1;
        v15 = v19 != 0;
      }

      v16 = v15;
    }

    if (v18)
    {
      _objc_release(v19);
    }

    if (v20)
    {
      _objc_release(v21);
    }

    if (v16)
    {
      location = _AKLogSystem();
      if (os_log_type_enabled(location, OS_LOG_TYPE_DEFAULT))
      {
        v14 = [(AKAuthenticationContext *)v23->_authContext companionKeyEnvelope];
        sub_10001B098(v24, v23, v14);
        _os_log_impl(&_mh_execute_header, location, OS_LOG_TYPE_DEFAULT, "%@: Using altDSID from companion key envelope (%@)", v24, 0x16u);
        _objc_release(v14);
      }

      objc_storeStrong(&location, 0);
      v13 = [(AKAuthenticationContext *)v23->_authContext companionKeyEnvelope];
      v5 = [v13 altDSID];
      v6 = v23->_altDSID;
      v23->_altDSID = v5;
      _objc_release(v6);
      _objc_release(v13);
    }

    if (!v23->_altDSID)
    {
      v12 = +[AKAccountManager sharedInstance];
      v11 = [(AKSRPContextHelper *)v23 authKitAccount:0];
      v7 = [(AKAccountManager *)v12 altDSIDForAccount:?];
      v8 = v23->_altDSID;
      v23->_altDSID = v7;
      _objc_release(v8);
      _objc_release(v11);
      _objc_release(v12);
    }
  }

  v9 = v23->_altDSID;

  return v9;
}

- (BOOL)eligibleForContinuationKeyAuthentication
{
  if ([(AKAuthenticationContext *)self->_authContext authenticationType]!= 3)
  {
    return 1;
  }

  v3 = 1;
  if (![(AKSRPContextHelper *)self biometricAuth])
  {
    v3 = [(AKSRPContextHelper *)self passcodeAuth];
  }

  return v3 & 1;
}

@end