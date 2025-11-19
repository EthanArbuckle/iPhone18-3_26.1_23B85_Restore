@interface AKSecureKey
+ (__SecKey)createOSVersionAttestationRefKeyWithContext:(id)a3 accessControl:(__SecAccessControl *)a4 error:(id *)a5;
+ (__SecKey)osVersionAttestationRefKeyForAltDSID:(id)a3 error:(id *)a4;
+ (id)OSAttestationRefKeyLabelForAltDSID:(id)a3;
+ (int)deleteOSVersionAttestationRefKeyForAltDSID:(id)a3;
+ (int)storeOSVersionAttestationRefKey:(__SecKey *)a3 forAltDSID:(id)a4;
@end

@implementation AKSecureKey

+ (__SecKey)createOSVersionAttestationRefKeyWithContext:(id)a3 accessControl:(__SecAccessControl *)a4 error:(id *)a5
{
  v37 = a4;
  v38 = a5;
  location[2] = a1;
  location[1] = a2;
  v39 = 0;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v62 = v37;
  v61 = v38;
  v60 = _objc_retain(kSecAttrKeyTypeECSECPrimeRandom);
  v59 = _objc_retain(&off_100339178);
  v58 = 0;
  v57 = 0;
  error = 0;
  v55 = [AAFAnalyticsEvent ak_analyticsEventWithContext:location[0] eventName:@"com.apple.authkit.generateOSBoundRefKey" error:0];
  [v55 setObject:&__kCFBooleanFalse forKeyedSubscript:kAAFDidSucceed];
  if (v37)
  {
    v57 = CFRetain(v62);
  }

  if (v57 || (v57 = SecAccessControlCreateWithFlags(0, kSecAttrAccessibleAfterFirstUnlockThisDeviceOnly, 0x40000000uLL, &error)) != 0)
  {
    v66[0] = kSecAttrIsPermanent;
    v67[0] = &__kCFBooleanFalse;
    v66[1] = kSecAttrTokenID;
    v67[1] = kSecAttrTokenIDAppleKeyStore;
    v66[2] = kSecAttrKeyType;
    v67[2] = v60;
    v66[3] = kSecAttrAccessControl;
    v67[3] = v57;
    v66[4] = kSecKeyOSBound;
    v67[4] = &__kCFBooleanTrue;
    v66[5] = kSecAttrKeySizeInBits;
    v67[5] = v59;
    v7 = [NSDictionary dictionaryWithObjects:v67 forKeys:v66 count:6];
    v8 = v58;
    v58 = v7;
    _objc_release(v8);
    v50 = SecKeyCreateRandomKey(v58, &error);
    if (v50)
    {
      v46 = _AKLogSystem();
      v45 = OS_LOG_TYPE_DEBUG;
      if (os_log_type_enabled(v46, OS_LOG_TYPE_DEBUG))
      {
        v24 = v46;
        *v25 = v45;
        v26 = v44;
        sub_10001CEEC(v44);
        _os_log_debug_impl(&_mh_execute_header, v24, v25[0], "Created OS bound RefKey successfully", v44, 2u);
      }

      v15 = 0;
      objc_storeStrong(&v46, 0);
      p_info = &OBJC_METACLASS___AKServerErrorGenerator.info;
      [AKSecureKey deleteOSVersionAttestationRefKeyForAltDSID:0];
      v12[3] = AKSecureKey;
      v13 = [location[0] altDSID];
      v14 = [AKSecureKey deleteOSVersionAttestationRefKeyForAltDSID:?];
      _objc_release(v13);
      v43 = v14;
      v21 = AKBiometricRatchetController_ptr;
      v22 = &AKAttestationErrorDomain;
      v42 = [NSError ak_generalErrorWithCode:v14 errorDomain:AKAttestationErrorDomain underlyingError:HIDWORD(v14)];
      v18 = AKSecureKey;
      v17 = v50;
      v19 = [location[0] altDSID];
      v20 = [AKSecureKey storeOSVersionAttestationRefKey:v17 forAltDSID:?];
      _objc_release(v19);
      v41 = v20;
      v40 = [NSError ak_generalErrorWithCode:v20 errorDomain:AKAttestationErrorDomain underlyingError:v42];
      [v55 setObject:&__kCFBooleanTrue forKeyedSubscript:kAAFDidSucceed];
      [v55 populateUnderlyingErrorsStartingWithRootError:v40];
      v23 = +[AKAnalyticsReporterRTC rtcAnalyticsReporter];
      [v23 sendEvent:v55];
      _objc_release(v23);
      if (v57)
      {
        CFRelease(v57);
      }

      v57 = 0;
      if (error)
      {
        CFRelease(error);
      }

      error = 0;
      v64 = v50;
      v51 = 1;
      v12[2] = 0;
      objc_storeStrong(&v40, 0);
      objc_storeStrong(&v42, 0);
    }

    else
    {
      v49 = _AKLogSystem();
      v48 = OS_LOG_TYPE_ERROR;
      if (os_log_type_enabled(v49, OS_LOG_TYPE_ERROR))
      {
        v29 = v49;
        *v30 = v48;
        v31 = v65;
        sub_1000194D4(v65, error);
        _os_log_error_impl(&_mh_execute_header, v49, v48, "Error %@ creating OS bound refKey", v65, 0xCu);
      }

      objc_storeStrong(&v49, 0);
      v47 = 0;
      if (error && v12 != -304)
      {
        v9 = v47;
        v47 = error;
        _objc_release(v9);
        error = 0;
      }

      if (v61)
      {
        v28 = [NSError ak_attestationErrorWithCode:-10004 underlyingError:v47];
        v10 = v28;
        *v61 = v28;
      }

      [v55 populateUnderlyingErrorsStartingWithRootError:*v61];
      v27 = +[AKAnalyticsReporterRTC rtcAnalyticsReporter];
      [v27 sendEvent:v55];
      _objc_release(v27);
      if (v57)
      {
        CFRelease(v57);
      }

      v57 = 0;
      v64 = 0;
      v51 = 1;
      objc_storeStrong(&v47, 0);
    }
  }

  else
  {
    oslog = _AKLogSystem();
    type = OS_LOG_TYPE_ERROR;
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_ERROR))
    {
      log = oslog;
      *v35 = type;
      buf = v68;
      sub_1000194D4(v68, error);
      _os_log_error_impl(&_mh_execute_header, oslog, type, "Error %@ creating access control for OS Bound RefKey", v68, 0xCu);
    }

    objc_storeStrong(&oslog, 0);
    v52 = 0;
    if (error && v12 != -344)
    {
      v5 = v52;
      v52 = error;
      _objc_release(v5);
      error = 0;
    }

    if (v61)
    {
      v33 = [NSError ak_attestationErrorWithCode:-10003 underlyingError:v52];
      v6 = v33;
      *v61 = v33;
    }

    [v55 populateUnderlyingErrorsStartingWithRootError:*v61];
    v32 = +[AKAnalyticsReporterRTC rtcAnalyticsReporter];
    [v32 sendEvent:v55];
    _objc_release(v32);
    v64 = 0;
    v51 = 1;
    objc_storeStrong(&v52, 0);
  }

  v12[0] = 0;
  objc_storeStrong(&v55, 0);
  objc_storeStrong(&v58, v12[0]);
  objc_storeStrong(&v59, v12[0]);
  objc_storeStrong(&v60, v12[0]);
  objc_storeStrong(location, v12[0]);
  return v64;
}

+ (id)OSAttestationRefKeyLabelForAltDSID:(id)a3
{
  location[2] = a1;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  if (location[0])
  {
    v6 = [@"com.apple.authkit.osVersionAttestationRefKey" stringByAppendingString:location[0]];
  }

  else
  {
    v6 = _objc_retain(@"com.apple.authkit.osVersionAttestationRefKey");
  }

  objc_storeStrong(location, 0);
  v3 = v6;

  return v3;
}

+ (int)storeOSVersionAttestationRefKey:(__SecKey *)a3 forAltDSID:(id)a4
{
  v19 = a1;
  v18 = a2;
  v17 = a3;
  location = 0;
  objc_storeStrong(&location, a4);
  oslog = _AKLogSystem();
  type = OS_LOG_TYPE_DEBUG;
  if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEBUG))
  {
    sub_1000194D4(v26, location);
    _os_log_debug_impl(&_mh_execute_header, oslog, type, "Trying to store OSVersionAttestationRefKey for altDSID: %@", v26, 0xCu);
  }

  objc_storeStrong(&oslog, 0);
  v13 = [AKSecureKey OSAttestationRefKeyLabelForAltDSID:location];
  if (v13)
  {
    v23[0] = kSecAttrLabel;
    v24[0] = v13;
    v23[1] = kSecClass;
    v24[1] = kSecClassKey;
    v23[2] = kSecValueRef;
    v24[2] = v17;
    v23[3] = kSecUseDataProtectionKeychain;
    v24[3] = &__kCFBooleanTrue;
    v23[4] = kSecAttrAccessible;
    v24[4] = kSecAttrAccessibleAlwaysThisDeviceOnlyPrivate;
    v9 = [NSDictionary dictionaryWithObjects:v24 forKeys:v23 count:5];
    v8 = [AKSecurityHelper secItemAddWithQuery:v9 result:0];
    if (v8)
    {
      v7 = _AKLogSystem();
      v6 = OS_LOG_TYPE_ERROR;
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        sub_10006A654(v22, v8);
        _os_log_error_impl(&_mh_execute_header, v7, v6, "Error %d storing OS Bound Key in the keychain", v22, 8u);
      }

      objc_storeStrong(&v7, 0);
    }

    v5 = _AKLogSystem();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      sub_10006A654(v21, v8);
      _os_log_debug_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEBUG, "Stored OS Bound refKey with error %d", v21, 8u);
    }

    objc_storeStrong(&v5, 0);
    v20 = v8;
    v10 = 1;
    objc_storeStrong(&v9, 0);
  }

  else
  {
    v12 = _AKLogSystem();
    v11 = OS_LOG_TYPE_ERROR;
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      sub_100091F70(v25, -67694, location);
      _os_log_error_impl(&_mh_execute_header, v12, v11, "Error %d storing OS bound key to keychain for altDSID %@", v25, 0x12u);
    }

    objc_storeStrong(&v12, 0);
    v20 = -67694;
    v10 = 1;
  }

  objc_storeStrong(&v13, 0);
  objc_storeStrong(&location, 0);
  return v20;
}

+ (__SecKey)osVersionAttestationRefKeyForAltDSID:(id)a3 error:(id *)a4
{
  location[2] = a1;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v19 = a4;
  oslog = _AKLogSystem();
  type = OS_LOG_TYPE_DEBUG;
  if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEBUG))
  {
    sub_1000194D4(v26, location[0]);
    _os_log_debug_impl(&_mh_execute_header, oslog, type, "Trying to get OSVersionAttestationRefKey for altDSID: %@", v26, 0xCu);
  }

  objc_storeStrong(&oslog, 0);
  v16 = [AKSecureKey OSAttestationRefKeyLabelForAltDSID:location[0]];
  if (v16)
  {
    v23[0] = kSecClass;
    v24[0] = kSecClassKey;
    v23[1] = kSecAttrLabel;
    v24[1] = v16;
    v23[2] = kSecUseDataProtectionKeychain;
    v24[2] = &__kCFBooleanTrue;
    v23[3] = kSecReturnRef;
    v24[3] = &__kCFBooleanTrue;
    v12 = [NSDictionary dictionaryWithObjects:v24 forKeys:v23 count:4];
    v11 = 0;
    v10 = [AKSecurityHelper secItemCopyMatchingWithQuery:v12 result:&v11];
    if (v10)
    {
      v9 = _AKLogSystem();
      v8 = OS_LOG_TYPE_ERROR;
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        sub_10006A654(v22, v10);
        _os_log_error_impl(&_mh_execute_header, v9, v8, "Error %d getting OS bound key from keychain", v22, 8u);
      }

      objc_storeStrong(&v9, 0);
      v7 = [NSError ak_generalErrorWithCode:v10 errorDomain:AKAttestationErrorDomain underlyingError:0];
      if (v19)
      {
        v4 = v7;
        *v19 = v7;
      }

      objc_storeStrong(&v7, 0);
    }

    v21 = v11;
    v13 = 1;
    objc_storeStrong(&v12, 0);
  }

  else
  {
    v15 = _AKLogSystem();
    v14 = OS_LOG_TYPE_ERROR;
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      sub_100091F70(v25, -67694, location[0]);
      _os_log_error_impl(&_mh_execute_header, v15, v14, "Error %d retrieving OS bound key from keychain for altDSID %@", v25, 0x12u);
    }

    objc_storeStrong(&v15, 0);
    v21 = 0;
    v13 = 1;
  }

  objc_storeStrong(&v16, 0);
  objc_storeStrong(location, 0);
  return v21;
}

+ (int)deleteOSVersionAttestationRefKeyForAltDSID:(id)a3
{
  location[2] = a1;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  oslog = _AKLogSystem();
  type = OS_LOG_TYPE_DEBUG;
  if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEBUG))
  {
    sub_1000194D4(v19, location[0]);
    _os_log_debug_impl(&_mh_execute_header, oslog, type, "Trying to delete OSVersionAttestationRefKey for altDSID: %@", v19, 0xCu);
  }

  objc_storeStrong(&oslog, 0);
  v10 = [AKSecureKey OSAttestationRefKeyLabelForAltDSID:location[0]];
  if (v10)
  {
    v16[0] = kSecClass;
    v17[0] = kSecClassKey;
    v16[1] = kSecAttrLabel;
    v17[1] = v10;
    v16[2] = kSecUseDataProtectionKeychain;
    v17[2] = &__kCFBooleanTrue;
    v6 = [NSDictionary dictionaryWithObjects:v17 forKeys:v16 count:3];
    v5 = [AKSecurityHelper secItemDeleteWithQuery:v6];
    if (v5)
    {
      v4 = _AKLogSystem();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
      {
        sub_10006A654(v15, v5);
        _os_log_error_impl(&_mh_execute_header, v4, OS_LOG_TYPE_ERROR, "Error %d deleting OS bound key from keychain", v15, 8u);
      }

      objc_storeStrong(&v4, 0);
    }

    v14 = v5;
    v7 = 1;
    objc_storeStrong(&v6, 0);
  }

  else
  {
    v9 = _AKLogSystem();
    v8 = OS_LOG_TYPE_ERROR;
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      sub_100091F70(v18, -67694, location[0]);
      _os_log_error_impl(&_mh_execute_header, v9, v8, "Error %d deleteing OS bound key from keychain for altDSID %@", v18, 0x12u);
    }

    objc_storeStrong(&v9, 0);
    v14 = -67694;
    v7 = 1;
  }

  objc_storeStrong(&v10, 0);
  objc_storeStrong(location, 0);
  return v14;
}

@end