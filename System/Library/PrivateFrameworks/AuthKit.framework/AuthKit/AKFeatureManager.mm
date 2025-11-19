@interface AKFeatureManager
+ (id)sharedManager;
- (AKFeatureManager)init;
- (BOOL)isSilentAuthenticationRequestSerializationEnabled;
@end

@implementation AKFeatureManager

uint64_t __33__AKFeatureManager_sharedManager__block_invoke()
{
  v0 = objc_alloc_init(AKFeatureManager);
  v1 = sharedManager_sharedManager;
  sharedManager_sharedManager = v0;
  return MEMORY[0x1E69E5920](v1);
}

- (AKFeatureManager)init
{
  v139 = *MEMORY[0x1E69E9840];
  v103 = a2;
  v104 = 0;
  v102.receiver = self;
  v102.super_class = AKFeatureManager;
  v104 = [(AKFeatureManager *)&v102 init];
  objc_storeStrong(&v104, v104);
  if (v104)
  {
    *(v104 + 8) = _os_feature_enabled_impl();
    v100 = _AKLogSystem();
    type = OS_LOG_TYPE_DEBUG;
    if (os_log_type_enabled(v100, OS_LOG_TYPE_DEBUG))
    {
      if (*(v104 + 8))
      {
        v2 = @"YES";
      }

      else
      {
        v2 = @"NO";
      }

      __os_log_helper_16_2_1_8_64(v138, v2);
      _os_log_debug_impl(&dword_193225000, v100, type, "Feature Lisbon is supported. Is Lisbon available - %@", v138, 0xCu);
    }

    objc_storeStrong(&v100, 0);
    *(v104 + 9) = _os_feature_enabled_impl();
    v98 = _AKLogSystem();
    v97 = OS_LOG_TYPE_DEBUG;
    if (os_log_type_enabled(v98, OS_LOG_TYPE_DEBUG))
    {
      if (*(v104 + 9))
      {
        v3 = @"YES";
      }

      else
      {
        v3 = @"NO";
      }

      __os_log_helper_16_2_1_8_64(v137, v3);
      _os_log_debug_impl(&dword_193225000, v98, v97, "Feature AppleIDPasskey is supported. Is AppleIDPasskey enabled - %@", v137, 0xCu);
    }

    objc_storeStrong(&v98, 0);
    *(v104 + 10) = _os_feature_enabled_impl();
    v96 = _AKLogSystem();
    v95 = OS_LOG_TYPE_DEBUG;
    if (os_log_type_enabled(v96, OS_LOG_TYPE_DEBUG))
    {
      if (*(v104 + 10))
      {
        v4 = @"YES";
      }

      else
      {
        v4 = @"NO";
      }

      __os_log_helper_16_2_1_8_64(v136, v4);
      _os_log_debug_impl(&dword_193225000, v96, v95, "Feature TiburonU13 is supported. Is TiburonU13 enabled - %@", v136, 0xCu);
    }

    objc_storeStrong(&v96, 0);
    *(v104 + 11) = _os_feature_enabled_impl();
    v94 = _AKLogSystem();
    v93 = OS_LOG_TYPE_DEBUG;
    if (os_log_type_enabled(v94, OS_LOG_TYPE_DEBUG))
    {
      if (*(v104 + 11))
      {
        v5 = @"YES";
      }

      else
      {
        v5 = @"NO";
      }

      __os_log_helper_16_2_1_8_64(v135, v5);
      _os_log_debug_impl(&dword_193225000, v94, v93, "Feature Hawksbill is supported. Is Hawksbill enabled - %@", v135, 0xCu);
    }

    objc_storeStrong(&v94, 0);
    *(v104 + 12) = _os_feature_enabled_impl();
    v92 = _AKLogSystem();
    v91 = OS_LOG_TYPE_DEBUG;
    if (os_log_type_enabled(v92, OS_LOG_TYPE_DEBUG))
    {
      if (*(v104 + 12))
      {
        v6 = @"YES";
      }

      else
      {
        v6 = @"NO";
      }

      __os_log_helper_16_2_1_8_64(v134, v6);
      _os_log_debug_impl(&dword_193225000, v92, v91, "Feature ChildPasscode is supported. Is ChildPasscode enabled - %@", v134, 0xCu);
    }

    objc_storeStrong(&v92, 0);
    *(v104 + 14) = _os_feature_enabled_impl();
    v90 = _AKLogSystem();
    v89 = OS_LOG_TYPE_DEBUG;
    if (os_log_type_enabled(v90, OS_LOG_TYPE_DEBUG))
    {
      if (*(v104 + 14))
      {
        v7 = @"YES";
      }

      else
      {
        v7 = @"NO";
      }

      __os_log_helper_16_2_1_8_64(v133, v7);
      _os_log_debug_impl(&dword_193225000, v90, v89, "Feature DTO is supported. Is DTO enabled - %@", v133, 0xCu);
    }

    objc_storeStrong(&v90, 0);
    *(v104 + 15) = _os_feature_enabled_impl();
    v88 = _AKLogSystem();
    v87 = OS_LOG_TYPE_DEBUG;
    if (os_log_type_enabled(v88, OS_LOG_TYPE_DEBUG))
    {
      if (*(v104 + 15))
      {
        v8 = @"YES";
      }

      else
      {
        v8 = @"NO";
      }

      __os_log_helper_16_2_1_8_64(v132, v8);
      _os_log_debug_impl(&dword_193225000, v88, v87, "Forgot password native takeover is supported. Is ForgotPasswordNativeTakeover is enabled - %@", v132, 0xCu);
    }

    objc_storeStrong(&v88, 0);
    *(v104 + 40) = _os_feature_enabled_impl();
    v86 = _AKLogSystem();
    v85 = OS_LOG_TYPE_DEBUG;
    if (os_log_type_enabled(v86, OS_LOG_TYPE_DEBUG))
    {
      if (*(v104 + 40))
      {
        v9 = @"YES";
      }

      else
      {
        v9 = @"NO";
      }

      __os_log_helper_16_2_1_8_64(v131, v9);
      _os_log_debug_impl(&dword_193225000, v86, v85, "Feature AppleIDSessionTelemetry is supported. Is AppleIDSessionTelemetry enabled - %@", v131, 0xCu);
    }

    objc_storeStrong(&v86, 0);
    *(v104 + 16) = _os_feature_enabled_impl();
    v84 = _AKLogSystem();
    v83 = OS_LOG_TYPE_DEBUG;
    if (os_log_type_enabled(v84, OS_LOG_TYPE_DEBUG))
    {
      if (*(v104 + 16))
      {
        v10 = @"YES";
      }

      else
      {
        v10 = @"NO";
      }

      __os_log_helper_16_2_1_8_64(v130, v10);
      _os_log_debug_impl(&dword_193225000, v84, v83, "Feature DeviceListCache is supported. Is DeviceListCache enabled - %@", v130, 0xCu);
    }

    objc_storeStrong(&v84, 0);
    *(v104 + 17) = _os_feature_enabled_impl();
    v82 = _AKLogSystem();
    v81 = OS_LOG_TYPE_DEBUG;
    if (os_log_type_enabled(v82, OS_LOG_TYPE_DEBUG))
    {
      if (*(v104 + 17))
      {
        v11 = @"YES";
      }

      else
      {
        v11 = @"NO";
      }

      __os_log_helper_16_2_1_8_64(v129, v11);
      _os_log_debug_impl(&dword_193225000, v82, v81, "Feature DeviceListCacheEnableDryMode is supported. Is DeviceListCacheEnableDryMode enabled - %@", v129, 0xCu);
    }

    objc_storeStrong(&v82, 0);
    *(v104 + 13) = _os_feature_enabled_impl();
    v80 = _AKLogSystem();
    v79 = OS_LOG_TYPE_DEBUG;
    if (os_log_type_enabled(v80, OS_LOG_TYPE_DEBUG))
    {
      if (*(v104 + 13))
      {
        v12 = @"YES";
      }

      else
      {
        v12 = @"NO";
      }

      __os_log_helper_16_2_1_8_64(v128, v12);
      _os_log_debug_impl(&dword_193225000, v80, v79, "Feature SiwaCredentialSharing is supported. Is CredentialSharing enabled - %@", v128, 0xCu);
    }

    objc_storeStrong(&v80, 0);
    *(v104 + 18) = _os_feature_enabled_impl();
    v78 = _AKLogSystem();
    v77 = OS_LOG_TYPE_DEBUG;
    if (os_log_type_enabled(v78, OS_LOG_TYPE_DEBUG))
    {
      if (*(v104 + 18))
      {
        v13 = @"YES";
      }

      else
      {
        v13 = @"NO";
      }

      __os_log_helper_16_2_1_8_64(v127, v13);
      _os_log_debug_impl(&dword_193225000, v78, v77, "Feature SiwaInPasswords is supported. Is SiwaInPasswords enabled - %@", v127, 0xCu);
    }

    objc_storeStrong(&v78, 0);
    *(v104 + 19) = _os_feature_enabled_impl();
    v76 = _AKLogSystem();
    v75 = OS_LOG_TYPE_DEBUG;
    if (os_log_type_enabled(v76, OS_LOG_TYPE_DEBUG))
    {
      if (*(v104 + 19))
      {
        v14 = @"YES";
      }

      else
      {
        v14 = @"NO";
      }

      __os_log_helper_16_2_1_8_64(v126, v14);
      _os_log_debug_impl(&dword_193225000, v76, v75, "Feature AuthKit-Solarium is supported. Is AuthKit-Solarium enabled - %@", v126, 0xCu);
    }

    objc_storeStrong(&v76, 0);
    *(v104 + 20) = _os_feature_enabled_impl();
    v74 = _AKLogSystem();
    v73 = OS_LOG_TYPE_DEBUG;
    if (os_log_type_enabled(v74, OS_LOG_TYPE_DEBUG))
    {
      if (*(v104 + 20))
      {
        v15 = @"YES";
      }

      else
      {
        v15 = @"NO";
      }

      __os_log_helper_16_2_1_8_64(v125, v15);
      _os_log_debug_impl(&dword_193225000, v74, v73, "Feature ConvertToMAID is supported. Is ConvertToMAID enabled - %@", v125, 0xCu);
    }

    objc_storeStrong(&v74, 0);
    *(v104 + 21) = _os_feature_enabled_impl();
    v72 = _AKLogSystem();
    v71 = OS_LOG_TYPE_DEBUG;
    if (os_log_type_enabled(v72, OS_LOG_TYPE_DEBUG))
    {
      if (*(v104 + 21))
      {
        v16 = @"YES";
      }

      else
      {
        v16 = @"NO";
      }

      __os_log_helper_16_2_1_8_64(v124, v16);
      _os_log_debug_impl(&dword_193225000, v72, v71, "Feature PltUpgrade is enabled – %@", v124, 0xCu);
    }

    objc_storeStrong(&v72, 0);
    *(v104 + 22) = _os_feature_enabled_impl();
    v70 = _AKLogSystem();
    v69 = OS_LOG_TYPE_DEBUG;
    if (os_log_type_enabled(v70, OS_LOG_TYPE_DEBUG))
    {
      if (*(v104 + 22))
      {
        v17 = @"YES";
      }

      else
      {
        v17 = @"NO";
      }

      __os_log_helper_16_2_1_8_64(v123, v17);
      _os_log_debug_impl(&dword_193225000, v70, v69, "Feature AuthenticatedRequestSerialization is enabled – %@", v123, 0xCu);
    }

    objc_storeStrong(&v70, 0);
    *(v104 + 23) = _os_feature_enabled_impl();
    v68 = _AKLogSystem();
    v67 = OS_LOG_TYPE_DEBUG;
    if (os_log_type_enabled(v68, OS_LOG_TYPE_DEBUG))
    {
      if (*(v104 + 22))
      {
        v18 = @"YES";
      }

      else
      {
        v18 = @"NO";
      }

      __os_log_helper_16_2_1_8_64(v122, v18);
      _os_log_debug_impl(&dword_193225000, v68, v67, "Feature SilentAuthenticationRequestSerialization is enabled – %@", v122, 0xCu);
    }

    objc_storeStrong(&v68, 0);
    *(v104 + 24) = _os_feature_enabled_impl();
    v66 = _AKLogSystem();
    v65 = OS_LOG_TYPE_DEBUG;
    if (os_log_type_enabled(v66, OS_LOG_TYPE_DEBUG))
    {
      if (*(v104 + 24))
      {
        v19 = @"YES";
      }

      else
      {
        v19 = @"NO";
      }

      __os_log_helper_16_2_1_8_64(v121, v19);
      _os_log_debug_impl(&dword_193225000, v66, v65, "Feature ADPExpansionViaCFU enabled = %@", v121, 0xCu);
    }

    objc_storeStrong(&v66, 0);
    *(v104 + 25) = _os_feature_enabled_impl();
    v64 = _AKLogSystem();
    v63 = OS_LOG_TYPE_DEBUG;
    if (os_log_type_enabled(v64, OS_LOG_TYPE_DEBUG))
    {
      if (*(v104 + 25))
      {
        v20 = @"YES";
      }

      else
      {
        v20 = @"NO";
      }

      __os_log_helper_16_2_1_8_64(v120, v20);
      _os_log_debug_impl(&dword_193225000, v64, v63, "Feature VMBAA enabled = %@", v120, 0xCu);
    }

    objc_storeStrong(&v64, 0);
    *(v104 + 26) = _os_feature_enabled_impl();
    v62 = _AKLogSystem();
    v61 = OS_LOG_TYPE_DEBUG;
    if (os_log_type_enabled(v62, OS_LOG_TYPE_DEBUG))
    {
      if (*(v104 + 26))
      {
        v21 = @"YES";
      }

      else
      {
        v21 = @"NO";
      }

      __os_log_helper_16_2_1_8_64(v119, v21);
      _os_log_debug_impl(&dword_193225000, v62, v61, "Feature SignInSecurityRedesign enabled - %@", v119, 0xCu);
    }

    objc_storeStrong(&v62, 0);
    *(v104 + 27) = _os_feature_enabled_impl();
    v60 = _AKLogSystem();
    v59 = OS_LOG_TYPE_DEBUG;
    if (os_log_type_enabled(v60, OS_LOG_TYPE_DEBUG))
    {
      if (*(v104 + 27))
      {
        v22 = @"YES";
      }

      else
      {
        v22 = @"NO";
      }

      __os_log_helper_16_2_1_8_64(v118, v22);
      _os_log_debug_impl(&dword_193225000, v60, v59, "Feature ServerBackoff enabled - %@", v118, 0xCu);
    }

    objc_storeStrong(&v60, 0);
    *(v104 + 28) = _os_feature_enabled_impl();
    v58 = _AKLogSystem();
    v57 = OS_LOG_TYPE_DEBUG;
    if (os_log_type_enabled(v58, OS_LOG_TYPE_DEBUG))
    {
      if (*(v104 + 28))
      {
        v23 = @"YES";
      }

      else
      {
        v23 = @"NO";
      }

      __os_log_helper_16_2_1_8_64(v117, v23);
      _os_log_debug_impl(&dword_193225000, v58, v57, "Feature AgeAttestationPhase1 enabled - %@", v117, 0xCu);
    }

    objc_storeStrong(&v58, 0);
    *(v104 + 29) = _os_feature_enabled_impl();
    v56 = _AKLogSystem();
    v55 = OS_LOG_TYPE_DEBUG;
    if (os_log_type_enabled(v56, OS_LOG_TYPE_DEBUG))
    {
      if (*(v104 + 29))
      {
        v24 = @"YES";
      }

      else
      {
        v24 = @"NO";
      }

      __os_log_helper_16_2_1_8_64(v116, v24);
      _os_log_debug_impl(&dword_193225000, v56, v55, "Feature AgeMigration enabled - %@", v116, 0xCu);
    }

    objc_storeStrong(&v56, 0);
    *(v104 + 30) = _os_feature_enabled_impl();
    v54 = _AKLogSystem();
    v53 = OS_LOG_TYPE_DEBUG;
    if (os_log_type_enabled(v54, OS_LOG_TYPE_DEBUG))
    {
      if (*(v104 + 30))
      {
        v25 = @"YES";
      }

      else
      {
        v25 = @"NO";
      }

      __os_log_helper_16_2_1_8_64(v115, v25);
      _os_log_debug_impl(&dword_193225000, v54, v53, "Feature AgeBasedAccountSupport enabled - %@", v115, 0xCu);
    }

    objc_storeStrong(&v54, 0);
    *(v104 + 31) = _os_feature_enabled_impl();
    v52 = _AKLogSystem();
    v51 = OS_LOG_TYPE_DEBUG;
    if (os_log_type_enabled(v52, OS_LOG_TYPE_DEBUG))
    {
      if (*(v104 + 31))
      {
        v26 = @"YES";
      }

      else
      {
        v26 = @"NO";
      }

      __os_log_helper_16_2_1_8_64(v114, v26);
      _os_log_debug_impl(&dword_193225000, v52, v51, "Feature ThreatNotificationCFU enabled - %@", v114, 0xCu);
    }

    objc_storeStrong(&v52, 0);
    *(v104 + 32) = _os_feature_enabled_impl();
    oslog = _AKLogSystem();
    v49 = OS_LOG_TYPE_DEBUG;
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEBUG))
    {
      if (*(v104 + 32))
      {
        v27 = @"YES";
      }

      else
      {
        v27 = @"NO";
      }

      __os_log_helper_16_2_1_8_64(v113, v27);
      _os_log_debug_impl(&dword_193225000, oslog, v49, "Feature LiveOnServerBackoffOptIn enabled - %@", v113, 0xCu);
    }

    objc_storeStrong(&oslog, 0);
    *(v104 + 33) = _os_feature_enabled_impl();
    v48 = _AKLogSystem();
    v47 = OS_LOG_TYPE_DEBUG;
    if (os_log_type_enabled(v48, OS_LOG_TYPE_DEBUG))
    {
      if (*(v104 + 33))
      {
        v28 = @"YES";
      }

      else
      {
        v28 = @"NO";
      }

      __os_log_helper_16_2_1_8_64(v112, v28);
      _os_log_debug_impl(&dword_193225000, v48, v47, "Feature PRK Generation new flag enabled - %@", v112, 0xCu);
    }

    objc_storeStrong(&v48, 0);
    *(v104 + 34) = _os_feature_enabled_impl();
    v46 = _AKLogSystem();
    v45 = OS_LOG_TYPE_DEBUG;
    if (os_log_type_enabled(v46, OS_LOG_TYPE_DEBUG))
    {
      if (*(v104 + 34))
      {
        v29 = @"YES";
      }

      else
      {
        v29 = @"NO";
      }

      __os_log_helper_16_2_1_8_64(v111, v29);
      _os_log_debug_impl(&dword_193225000, v46, v45, "Feature PRKHealing enabled - %@", v111, 0xCu);
    }

    objc_storeStrong(&v46, 0);
    *(v104 + 35) = _os_feature_enabled_impl();
    v44 = _AKLogSystem();
    v43 = OS_LOG_TYPE_DEBUG;
    if (os_log_type_enabled(v44, OS_LOG_TYPE_DEBUG))
    {
      if (*(v104 + 35))
      {
        v30 = @"YES";
      }

      else
      {
        v30 = @"NO";
      }

      __os_log_helper_16_2_1_8_64(v110, v30);
      _os_log_debug_impl(&dword_193225000, v44, v43, "Feature AccountImprovementProgram enabled = %@", v110, 0xCu);
    }

    objc_storeStrong(&v44, 0);
    *(v104 + 36) = _os_feature_enabled_impl();
    v42 = _AKLogSystem();
    v41 = OS_LOG_TYPE_DEBUG;
    if (os_log_type_enabled(v42, OS_LOG_TYPE_DEBUG))
    {
      if (*(v104 + 36))
      {
        v31 = @"YES";
      }

      else
      {
        v31 = @"NO";
      }

      __os_log_helper_16_2_1_8_64(v109, v31);
      _os_log_debug_impl(&dword_193225000, v42, v41, "Feature RUI Telemetry enabled - %@", v109, 0xCu);
    }

    objc_storeStrong(&v42, 0);
    *(v104 + 37) = _os_feature_enabled_impl();
    v40 = _AKLogSystem();
    v39 = OS_LOG_TYPE_DEBUG;
    if (os_log_type_enabled(v40, OS_LOG_TYPE_DEBUG))
    {
      if (*(v104 + 37))
      {
        v32 = @"YES";
      }

      else
      {
        v32 = @"NO";
      }

      __os_log_helper_16_2_1_8_64(v108, v32);
      _os_log_debug_impl(&dword_193225000, v40, v39, "Feature Authentication Telemetry enabled - %@", v108, 0xCu);
    }

    objc_storeStrong(&v40, 0);
    *(v104 + 38) = _os_feature_enabled_impl();
    v38 = _AKLogSystem();
    v37 = OS_LOG_TYPE_DEBUG;
    if (os_log_type_enabled(v38, OS_LOG_TYPE_DEBUG))
    {
      if (*(v104 + 38))
      {
        v33 = @"YES";
      }

      else
      {
        v33 = @"NO";
      }

      __os_log_helper_16_2_1_8_64(v107, v33);
      _os_log_debug_impl(&dword_193225000, v38, v37, "Feature SIWALandscapeMode enabled - %@", v107, 0xCu);
    }

    objc_storeStrong(&v38, 0);
    *(v104 + 39) = _os_feature_enabled_impl();
    v36 = _AKLogSystem();
    if (os_log_type_enabled(v36, OS_LOG_TYPE_DEBUG))
    {
      if (*(v104 + 39))
      {
        v34 = @"YES";
      }

      else
      {
        v34 = @"NO";
      }

      __os_log_helper_16_2_1_8_64(v106, v34);
      _os_log_debug_impl(&dword_193225000, v36, OS_LOG_TYPE_DEBUG, "Feature AgeAssurance enabled - %@", v106, 0xCu);
    }

    objc_storeStrong(&v36, 0);
    v105 = MEMORY[0x1E69E5928](v104);
    v101 = 1;
  }

  else
  {
    v105 = 0;
    v101 = 1;
  }

  objc_storeStrong(&v104, 0);
  *MEMORY[0x1E69E9840];
  return v105;
}

+ (id)sharedManager
{
  v5 = &sharedManager_onceToken;
  location = 0;
  objc_storeStrong(&location, &__block_literal_global_35);
  if (*v5 != -1)
  {
    dispatch_once(v5, location);
  }

  objc_storeStrong(&location, 0);
  v2 = sharedManager_sharedManager;

  return v2;
}

- (BOOL)isSilentAuthenticationRequestSerializationEnabled
{
  v3 = 1;
  if (([MEMORY[0x1E6985DD8] deviceIsAudioAccessory] & 1) == 0)
  {
    return self->_cachedSilentAuthenticationRequestSerializationEnabled;
  }

  return v3;
}

@end