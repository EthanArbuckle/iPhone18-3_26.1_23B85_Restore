@interface NSMutableURLRequest(AuthKit)
+ (id)ak_anisetteHeadersWithCompanionData:()AuthKit;
+ (id)ak_anisetteHeadersWithData:()AuthKit;
+ (id)ak_clientInfoHeader;
+ (id)ak_clientTimeHeader;
+ (id)ak_deviceUDIDHeader;
+ (id)ak_localeHeader;
+ (id)ak_proxiedAnisetteHeadersWithData:()AuthKit;
+ (id)ak_proxiedClientInfoHeadersWithDevice:()AuthKit;
+ (id)ak_proxiedHeadersForDevice:()AuthKit anisetteData:;
+ (id)ak_timeZoneHeader;
- (id)ak_valueForEncodedHeaderWithKey:()AuthKit;
- (uint64_t)ak_addAcceptedSLAHeaderWithVersion:()AuthKit;
- (uint64_t)ak_addAppleIDUserModeHeaderWithValue:()AuthKit;
- (uint64_t)ak_addCircleStatusHeader;
- (uint64_t)ak_addCircleStatusHeaderForCircleStatus:()AuthKit;
- (uint64_t)ak_addClientInfoHeader;
- (uint64_t)ak_addClientTimeHeader;
- (uint64_t)ak_addDeviceModeHeader;
- (uint64_t)ak_addFeatureMaskHeader;
- (uint64_t)ak_addHeaderForSecurityCode:()AuthKit;
- (uint64_t)ak_addInternalBuildHeader;
- (uint64_t)ak_addProvisioningUDIDHeader;
- (uint64_t)ak_addSeedBuildHeader;
- (uint64_t)ak_addSupportedLanguageHeader;
- (void)_setAuthorizationHeaderWithToken:()AuthKit altDSID:key:;
- (void)ak_addAbsintheHeaderWithValue:()AuthKit;
- (void)ak_addAppProvidedContext:()AuthKit;
- (void)ak_addAppleIDHeaderWithValue:()AuthKit;
- (void)ak_addAttestationDataHeaders;
- (void)ak_addAuthorizationHeaderWithAltIdentityToken:()AuthKit forAltDSID:;
- (void)ak_addAuthorizationHeaderWithCustodianRecoveryToken:()AuthKit forAltDSID:;
- (void)ak_addAuthorizationHeaderWithHeartbeatToken:()AuthKit forAltDSID:;
- (void)ak_addAuthorizationHeaderWithIdentityToken:()AuthKit forAltDSID:;
- (void)ak_addAuthorizationHeaderWithServiceToken:()AuthKit forAltDSID:;
- (void)ak_addBiometryTypeHeaderWithValue:()AuthKit;
- (void)ak_addCDPStatusHeaderForDSID:()AuthKit;
- (void)ak_addCFUHeader:()AuthKit;
- (void)ak_addClientApp:()AuthKit;
- (void)ak_addClientBundleIDHeader:()AuthKit;
- (void)ak_addCompanionClientInfoHeader:()AuthKit;
- (void)ak_addContextHeaderForServiceType:()AuthKit;
- (void)ak_addContinutationKeyHeader:()AuthKit;
- (void)ak_addContinutationKeyPresenceHeader:()AuthKit;
- (void)ak_addCountryHeader;
- (void)ak_addCreateInformationHeaderWithValue:()AuthKit;
- (void)ak_addDataCenterHeaderWithIdentifier:()AuthKit;
- (void)ak_addDeviceConfigurationModeHeader;
- (void)ak_addDeviceConfigurationModeHeaderForAuthContext:()AuthKit;
- (void)ak_addDeviceMLBHeader;
- (void)ak_addDeviceModel;
- (void)ak_addDeviceROMHeader;
- (void)ak_addDeviceSerialNumberHeader;
- (void)ak_addDeviceUDIDHeader;
- (void)ak_addExecutionModeHeader:()AuthKit;
- (void)ak_addExperimentModeHeader;
- (void)ak_addFidoRecoveryTokenHeader:()AuthKit;
- (void)ak_addGuardianAuthorizationHeaderWithHeartbeatToken:()AuthKit forAltDSID:;
- (void)ak_addGuardianAuthorizationHeaderWithIdentityToken:()AuthKit forAltDSID:;
- (void)ak_addGuardianAuthorizationHeaderWithIdentityToken:()AuthKit heartbeatToken:serviceToken:forAltDSID:;
- (void)ak_addGuardianAuthorizationHeaderWithServiceToken:()AuthKit forAltDSID:;
- (void)ak_addHeaderForDCRT:()AuthKit;
- (void)ak_addHeaderForDeviceManagementState:()AuthKit;
- (void)ak_addHeaderForMDMOrganizationToken:()AuthKit;
- (void)ak_addHeaderForSourceAltDSID:()AuthKit;
- (void)ak_addICSCRecoveryHeaderWithIdentityToken:()AuthKit forAltDSID:;
- (void)ak_addLocalUserUUIDHashHeader;
- (void)ak_addLocaleHeader;
- (void)ak_addLoggedInServicesHeaderForServices:()AuthKit;
- (void)ak_addOTStatusHeaderForAltDSID:()AuthKit;
- (void)ak_addOfferSecurityUpgrade:()AuthKit;
- (void)ak_addPasswordResetKeyHeader:()AuthKit;
- (void)ak_addPhoneInformationHeaderWithValue:()AuthKit;
- (void)ak_addPhoneNumberCertificateHeaderWithValue:()AuthKit;
- (void)ak_addPhoneNumberHeader;
- (void)ak_addPreviousTransactionIdHeader:()AuthKit;
- (void)ak_addPrivateEmailAppBundleIdHeader:()AuthKit;
- (void)ak_addPrivateEmailAppNameHeader:()AuthKit;
- (void)ak_addPrivateEmailDomainHeader:()AuthKit;
- (void)ak_addPrivateEmailOriginHeader:()AuthKit;
- (void)ak_addProxiedAnisetteHeaders:()AuthKit;
- (void)ak_addProxiedAttestationHeaders:()AuthKit;
- (void)ak_addProxiedAuthorizationHeaderWithIdentityToken:()AuthKit forAltDSID:;
- (void)ak_addProxiedBundleIDHeader:()AuthKit;
- (void)ak_addProxiedClientInfoHeader:()AuthKit;
- (void)ak_addProxiedDeviceCountryHeader:()AuthKit;
- (void)ak_addProxiedDeviceSerialNumberHeader:()AuthKit;
- (void)ak_addProxiedDeviceUDIDHeader:()AuthKit;
- (void)ak_addProxyApp:()AuthKit;
- (void)ak_addRecoveryHeaderWithIdentityToken:()AuthKit forAltDSID:;
- (void)ak_addRequestContextHeader:()AuthKit;
- (void)ak_addRequestUUIDHeader:()AuthKit;
- (void)ak_addSKUCountryHeader;
- (void)ak_addServerBackoffInfoHeader:()AuthKit;
- (void)ak_addServerBackoffOptInHeader:()AuthKit;
- (void)ak_addServiceHeaderForServiceType:()AuthKit;
- (void)ak_addShortLivedTokenHeaderWithIdentityToken:()AuthKit forAltDSID:;
- (void)ak_addTelemetryDeviceSessionID:()AuthKit;
- (void)ak_addTelemetryFlowID:()AuthKit;
- (void)ak_addTimeZoneHeaders;
- (void)ak_addURLSwitchingHeaderWithURLKey:()AuthKit altDSID:;
- (void)ak_addWalrusStatusHeader;
- (void)ak_setBodyWithParameters:()AuthKit;
- (void)ak_setJSONBodyWithParameters:()AuthKit;
@end

@implementation NSMutableURLRequest(AuthKit)

+ (id)ak_localeHeader
{
  v9[1] = *MEMORY[0x1E69E9840];
  location[2] = a1;
  location[1] = a2;
  v5 = +[AKDevice currentDevice];
  v4 = [v5 locale];
  location[0] = [v4 localeIdentifier];
  MEMORY[0x1E69E5920](v4);
  MEMORY[0x1E69E5920](v5);
  if (location[0])
  {
    v8 = @"X-Apple-I-Locale";
    v9[0] = location[0];
    v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v9 forKeys:&v8 count:1];
  }

  else
  {
    v7 = MEMORY[0x1E69E5928](MEMORY[0x1E695E0F8]);
  }

  objc_storeStrong(location, 0);
  *MEMORY[0x1E69E9840];
  v2 = v7;

  return v2;
}

+ (id)ak_timeZoneHeader
{
  v8[1] = *MEMORY[0x1E69E9840];
  location[2] = a1;
  location[1] = a2;
  v4 = [MEMORY[0x1E695DFE8] localTimeZone];
  location[0] = [v4 abbreviation];
  MEMORY[0x1E69E5920](v4);
  if (location[0])
  {
    v7 = @"X-Apple-I-TimeZone";
    v8[0] = location[0];
    v6 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v8 forKeys:&v7 count:1];
  }

  else
  {
    v6 = MEMORY[0x1E69E5928](MEMORY[0x1E695E0F8]);
  }

  objc_storeStrong(location, 0);
  *MEMORY[0x1E69E9840];
  v2 = v6;

  return v2;
}

+ (id)ak_clientTimeHeader
{
  v8[1] = *MEMORY[0x1E69E9840];
  location[2] = a1;
  location[1] = a2;
  v4 = [MEMORY[0x1E695DF00] date];
  location[0] = [v4 ak_serverFriendlyString];
  MEMORY[0x1E69E5920](v4);
  if (location[0])
  {
    v7 = @"X-Apple-I-Client-Time";
    v8[0] = location[0];
    v6 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v8 forKeys:&v7 count:1];
  }

  else
  {
    v6 = MEMORY[0x1E69E5928](MEMORY[0x1E695E0F8]);
  }

  objc_storeStrong(location, 0);
  *MEMORY[0x1E69E9840];
  v2 = v6;

  return v2;
}

- (uint64_t)ak_addClientInfoHeader
{
  v4 = +[AKDevice currentDevice];
  v3 = [v4 serverFriendlyDescription];
  [a1 setValue:? forHTTPHeaderField:?];
  MEMORY[0x1E69E5920](v3);
  return MEMORY[0x1E69E5920](v4);
}

- (void)ak_addDeviceUDIDHeader
{
  v11 = a1;
  v10 = a2;
  *&v9[8] = 0;
  v8 = +[AKDevice currentDevice];
  *v9 = [v8 isVirtualMachine];
  MEMORY[0x1E69E5920](v8);
  if (v9[0])
  {
    v7 = +[AKDevice currentDevice];
    v2 = [v7 provisioningDeviceIdentifier];
    v3 = *&v9[4];
    *&v9[4] = v2;
    MEMORY[0x1E69E5920](v3);
    MEMORY[0x1E69E5920](v7);
  }

  else
  {
    v6 = +[AKDevice currentDevice];
    v4 = [v6 uniqueDeviceIdentifier];
    v5 = *&v9[4];
    *&v9[4] = v4;
    MEMORY[0x1E69E5920](v5);
    MEMORY[0x1E69E5920](v6);
  }

  [v11 setValue:*&v9[4] forHTTPHeaderField:@"X-Mme-Device-Id"];
  objc_storeStrong(&v9[4], 0);
}

- (uint64_t)ak_addInternalBuildHeader
{
  v2 = +[AKDevice currentDevice];
  v4 = 0;
  v3 = 0;
  if ([v2 isInternalBuild])
  {
    v5 = +[AKConfiguration sharedConfiguration];
    v4 = 1;
    v3 = [v5 shouldHideInternalBuildHeader] != 1;
  }

  if (v4)
  {
    MEMORY[0x1E69E5920](v5);
  }

  result = MEMORY[0x1E69E5920](v2);
  if (v3)
  {
    return [a1 setValue:@"true" forHTTPHeaderField:@"X-Apple-I-88CC-99DE-EE63-2736"];
  }

  return result;
}

- (uint64_t)ak_addSeedBuildHeader
{
  v2 = +[AKDevice currentDevice];
  v4 = 0;
  v3 = 0;
  if ([v2 isSeedBuild])
  {
    v5 = +[AKConfiguration sharedConfiguration];
    v4 = 1;
    v3 = [v5 shouldHideSeedBuildHeader] != 1;
  }

  if (v4)
  {
    MEMORY[0x1E69E5920](v5);
  }

  result = MEMORY[0x1E69E5920](v2);
  if (v3)
  {
    return [a1 setValue:@"true" forHTTPHeaderField:@"X-Apple-I-B636-170F-9E08-A4C3"];
  }

  return result;
}

- (uint64_t)ak_addFeatureMaskHeader
{
  v6 = +[AKDevice currentDevice];
  v7 = [v6 isInternalBuild];
  MEMORY[0x1E69E5920](v6);
  result = v7;
  if (v7)
  {
    v4 = +[AKConfiguration sharedConfiguration];
    v5 = [v4 internalFeaturesMaskValue];
    MEMORY[0x1E69E5920](v4);
    result = v5;
    if (v5)
    {
      v3 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v5];
      v2 = [v3 stringValue];
      [a1 setValue:? forHTTPHeaderField:?];
      MEMORY[0x1E69E5920](v2);
      return MEMORY[0x1E69E5920](v3);
    }
  }

  return result;
}

- (void)ak_addLocaleHeader
{
  v5 = a1;
  location[1] = a2;
  v3 = +[AKDevice currentDevice];
  location[0] = [v3 locale];
  MEMORY[0x1E69E5920](v3);
  if (location[0])
  {
    v2 = [location[0] localeIdentifier];
    [v5 setValue:? forHTTPHeaderField:?];
    MEMORY[0x1E69E5920](v2);
  }

  objc_storeStrong(location, 0);
}

- (void)ak_addTimeZoneHeaders
{
  v8 = a1;
  location[1] = a2;
  v6 = [MEMORY[0x1E695DFE8] localTimeZone];
  location[0] = [v6 name];
  MEMORY[0x1E69E5920](v6);
  if (location[0])
  {
    [v8 setValue:location[0] forHTTPHeaderField:@"X-Apple-I-TimeZone"];
  }

  v2 = [MEMORY[0x1E695DFE8] localTimeZone];
  v3 = [v2 secondsFromGMT];
  MEMORY[0x1E69E5920](v2);
  v5 = [MEMORY[0x1E696AD98] numberWithInteger:v3];
  v4 = [v5 stringValue];
  [v8 setValue:? forHTTPHeaderField:?];
  MEMORY[0x1E69E5920](v4);
  MEMORY[0x1E69E5920](v5);
  objc_storeStrong(location, 0);
}

- (void)ak_addDeviceROMHeader
{
  v4 = a1;
  location[1] = a2;
  v2 = +[AKDevice currentDevice];
  location[0] = [v2 ROMAddress];
  MEMORY[0x1E69E5920](v2);
  if (location[0])
  {
    [v4 setValue:location[0] forHTTPHeaderField:@"X-Apple-I-ROM"];
  }

  objc_storeStrong(location, 0);
}

- (void)ak_addDeviceSerialNumberHeader
{
  v4 = a1;
  location[1] = a2;
  v2 = +[AKDevice currentDevice];
  location[0] = [v2 serialNumber];
  MEMORY[0x1E69E5920](v2);
  if (location[0])
  {
    [v4 setValue:location[0] forHTTPHeaderField:@"X-Apple-I-SRL-NO"];
  }

  objc_storeStrong(location, 0);
}

- (void)ak_addDeviceMLBHeader
{
  v4 = a1;
  location[1] = a2;
  v2 = +[AKDevice currentDevice];
  location[0] = [v2 MLBSerialNumber];
  MEMORY[0x1E69E5920](v2);
  if (location[0])
  {
    [v4 setValue:location[0] forHTTPHeaderField:@"X-Apple-I-MLB"];
  }

  objc_storeStrong(location, 0);
}

- (uint64_t)ak_addDeviceModeHeader
{
  v2 = +[AKDevice currentDevice];
  v3 = [v2 isInRestrictedSharingMode];
  MEMORY[0x1E69E5920](v2);
  result = v3;
  if (v3)
  {
    return [a1 setValue:@"1" forHTTPHeaderField:@"X-Apple-I-Device-Mode"];
  }

  return result;
}

- (void)ak_addLocalUserUUIDHashHeader
{
  v5 = a1;
  location[1] = a2;
  v3 = +[AKDevice currentDevice];
  v2 = [v3 localUserUUID];
  location[0] = [v2 aaf_toSHA256String];
  MEMORY[0x1E69E5920](v2);
  MEMORY[0x1E69E5920](v3);
  if (location[0])
  {
    [v5 setValue:location[0] forHTTPHeaderField:@"X-Apple-I-MD-LU"];
  }

  objc_storeStrong(location, 0);
}

- (void)ak_addAppleIDHeaderWithValue:()AuthKit
{
  v4 = a1;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, obj);
  [v4 setValue:location[0] forHTTPHeaderField:@"X-Apple-I-AppleID"];
  objc_storeStrong(location, 0);
}

- (uint64_t)ak_addAppleIDUserModeHeaderWithValue:()AuthKit
{
  v6 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a3];
  v5 = [v6 stringValue];
  [a1 setValue:? forHTTPHeaderField:?];
  MEMORY[0x1E69E5920](v5);
  return MEMORY[0x1E69E5920](v6);
}

- (uint64_t)ak_addProvisioningUDIDHeader
{
  v4 = +[AKDevice currentDevice];
  v3 = [v4 provisioningDeviceIdentifier];
  [a1 setValue:? forHTTPHeaderField:?];
  MEMORY[0x1E69E5920](v3);
  return MEMORY[0x1E69E5920](v4);
}

- (void)ak_addProxiedDeviceUDIDHeader:()AuthKit
{
  v4 = a1;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, obj);
  [v4 setValue:location[0] forHTTPHeaderField:@"X-Mme-Proxied-Device-Id"];
  objc_storeStrong(location, 0);
}

- (uint64_t)ak_addClientTimeHeader
{
  v4 = [MEMORY[0x1E695DF00] date];
  v3 = [v4 ak_serverFriendlyString];
  [a1 setValue:? forHTTPHeaderField:?];
  MEMORY[0x1E69E5920](v3);
  return MEMORY[0x1E69E5920](v4);
}

- (uint64_t)ak_addCircleStatusHeader
{
  v3 = +[AKDevice currentDevice];
  if ([v3 isInCircle])
  {
    [a1 setValue:@"true" forHTTPHeaderField:{@"X-Apple-I-CDP-Circle-Status", @"true"}];
  }

  else
  {
    [a1 setValue:@"false" forHTTPHeaderField:{@"X-Apple-I-CDP-Circle-Status", @"false"}];
  }

  return MEMORY[0x1E69E5920](v3);
}

- (void)ak_addOTStatusHeaderForAltDSID:()AuthKit
{
  v5 = a1;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, obj);
  v3 = v5;
  if ([AKCDPFactory cdpAccountIsOTEnabledForAltDSID:location[0]])
  {
    [v3 setValue:@"true" forHTTPHeaderField:{@"X-Apple-I-OT-Status", @"true"}];
  }

  else
  {
    [v3 setValue:@"false" forHTTPHeaderField:{@"X-Apple-I-OT-Status", @"false"}];
  }

  objc_storeStrong(location, 0);
}

- (void)ak_addCDPStatusHeaderForDSID:()AuthKit
{
  v5 = a1;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, obj);
  v3 = v5;
  if ([AKCDPFactory cdpAccountIsICDPEnabledForDSID:location[0]])
  {
    [v3 setValue:@"true" forHTTPHeaderField:{@"X-Apple-I-CDP-Status", @"true"}];
  }

  else
  {
    [v3 setValue:@"false" forHTTPHeaderField:{@"X-Apple-I-CDP-Status", @"false"}];
  }

  objc_storeStrong(location, 0);
}

- (uint64_t)ak_addCircleStatusHeaderForCircleStatus:()AuthKit
{
  if (a3)
  {
    return [a1 setValue:@"true" forHTTPHeaderField:@"X-Apple-I-CDP-Circle-Status"];
  }

  else
  {
    return [a1 setValue:@"false" forHTTPHeaderField:@"X-Apple-I-CDP-Circle-Status"];
  }
}

- (void)ak_addCompanionClientInfoHeader:()AuthKit
{
  v4 = a1;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, obj);
  [v4 setValue:location[0] forHTTPHeaderField:@"X-MMe-Companion-Client-Info"];
  objc_storeStrong(location, 0);
}

- (void)ak_addProxiedClientInfoHeader:()AuthKit
{
  v4 = a1;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, obj);
  [v4 setValue:location[0] forHTTPHeaderField:@"X-MMe-Proxied-Client-Info"];
  objc_storeStrong(location, 0);
}

- (void)ak_addAttestationDataHeaders
{
  v17 = *MEMORY[0x1E69E9840];
  v15 = a1;
  v14[1] = a2;
  v14[0] = 0;
  v13 = objc_alloc_init(AKAnisetteProvisioningController);
  v2 = [AKAttestationRequestData alloc];
  v12 = [(AKAttestationRequestData *)v2 initWithRequest:v15 requiredHeaders:0];
  v10 = v14[0];
  v7 = [v13 attestationDataForRequestData:v12 error:&v10];
  objc_storeStrong(v14, v10);
  v11 = v7;
  if (v7)
  {
    v4 = [v15 allHTTPHeaderFields];
    v9 = [v4 mutableCopy];
    MEMORY[0x1E69E5920](v4);
    v5 = v9;
    v6 = [v11 attestationHeaders];
    [v5 addEntriesFromDictionary:?];
    MEMORY[0x1E69E5920](v6);
    [v15 setAllHTTPHeaderFields:v9];
    objc_storeStrong(&v9, 0);
  }

  else
  {
    v8 = _AKLogSystem();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v3 = [v15 URL];
      __os_log_helper_16_2_2_8_64_8_64(v16, v3, v14[0]);
      _os_log_error_impl(&dword_193225000, v8, OS_LOG_TYPE_ERROR, "Unable to get Attestation data for request %@! Error: %@", v16, 0x16u);
      MEMORY[0x1E69E5920](v3);
    }

    objc_storeStrong(&v8, 0);
  }

  objc_storeStrong(&v11, 0);
  objc_storeStrong(&v12, 0);
  objc_storeStrong(&v13, 0);
  objc_storeStrong(v14, 0);
  *MEMORY[0x1E69E9840];
}

- (void)ak_addProxiedAnisetteHeaders:()AuthKit
{
  v17 = *MEMORY[0x1E69E9840];
  v15 = a1;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, obj);
  v13 = [objc_opt_class() ak_proxiedAnisetteHeadersWithData:location[0]];
  memset(__b, 0, sizeof(__b));
  obja = MEMORY[0x1E69E5928](v13);
  v10 = [obja countByEnumeratingWithState:__b objects:v16 count:16];
  if (v10)
  {
    v6 = *__b[2];
    v7 = 0;
    v8 = v10;
    while (1)
    {
      v5 = v7;
      if (*__b[2] != v6)
      {
        objc_enumerationMutation(obja);
      }

      v12 = *(__b[1] + 8 * v7);
      v3 = v15;
      v4 = [v13 objectForKeyedSubscript:v12];
      [v3 setValue:? forHTTPHeaderField:?];
      MEMORY[0x1E69E5920](v4);
      ++v7;
      if (v5 + 1 >= v8)
      {
        v7 = 0;
        v8 = [obja countByEnumeratingWithState:__b objects:v16 count:16];
        if (!v8)
        {
          break;
        }
      }
    }
  }

  MEMORY[0x1E69E5920](obja);
  objc_storeStrong(&v13, 0);
  objc_storeStrong(location, 0);
  *MEMORY[0x1E69E9840];
}

- (void)ak_addProxiedAttestationHeaders:()AuthKit
{
  v16 = *MEMORY[0x1E69E9840];
  v14 = a1;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, obj);
  v12 = _AKLogSystem();
  v11 = OS_LOG_TYPE_DEBUG;
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
  {
    __os_log_helper_16_2_1_8_64(v15, location[0]);
    _os_log_debug_impl(&dword_193225000, v12, v11, "Adding proxied attestation headers - %@", v15, 0xCu);
  }

  objc_storeStrong(&v12, 0);
  v10 = [location[0] attestationHeaders];
  v3 = v10;
  v4 = MEMORY[0x1E69E9820];
  v5 = -1073741824;
  v6 = 0;
  v7 = __64__NSMutableURLRequest_AuthKit__ak_addProxiedAttestationHeaders___block_invoke;
  v8 = &unk_1E73D5E48;
  v9 = MEMORY[0x1E69E5928](v14);
  [v3 enumerateKeysAndObjectsUsingBlock:&v4];
  objc_storeStrong(&v9, 0);
  objc_storeStrong(&v10, 0);
  objc_storeStrong(location, 0);
  *MEMORY[0x1E69E9840];
}

- (void)ak_addAuthorizationHeaderWithIdentityToken:()AuthKit forAltDSID:
{
  v7 = a1;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, obj);
  v5 = 0;
  objc_storeStrong(&v5, a4);
  [v7 _setAuthorizationHeaderWithToken:location[0] altDSID:v5 key:@"X-Apple-Identity-Token"];
  objc_storeStrong(&v5, 0);
  objc_storeStrong(location, 0);
}

- (void)ak_addAuthorizationHeaderWithAltIdentityToken:()AuthKit forAltDSID:
{
  v7 = a1;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, obj);
  v5 = 0;
  objc_storeStrong(&v5, a4);
  [v7 _setAuthorizationHeaderWithToken:location[0] altDSID:v5 key:@"X-Apple-Alt-Identity-Token"];
  objc_storeStrong(&v5, 0);
  objc_storeStrong(location, 0);
}

- (void)ak_addProxiedAuthorizationHeaderWithIdentityToken:()AuthKit forAltDSID:
{
  v7 = a1;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, obj);
  v5 = 0;
  objc_storeStrong(&v5, a4);
  [v7 _setAuthorizationHeaderWithToken:location[0] altDSID:v5 key:@"X-Apple-Proxied-Identity-Token"];
  objc_storeStrong(&v5, 0);
  objc_storeStrong(location, 0);
}

- (void)ak_addAuthorizationHeaderWithServiceToken:()AuthKit forAltDSID:
{
  v7 = a1;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, obj);
  v5 = 0;
  objc_storeStrong(&v5, a4);
  [v7 _setAuthorizationHeaderWithToken:location[0] altDSID:v5 key:@"X-Apple-GS-Token"];
  objc_storeStrong(&v5, 0);
  objc_storeStrong(location, 0);
}

- (void)ak_addAuthorizationHeaderWithHeartbeatToken:()AuthKit forAltDSID:
{
  v7 = a1;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, obj);
  v5 = 0;
  objc_storeStrong(&v5, a4);
  [v7 _setAuthorizationHeaderWithToken:location[0] altDSID:v5 key:@"X-Apple-HB-Token"];
  objc_storeStrong(&v5, 0);
  objc_storeStrong(location, 0);
}

- (void)ak_addAuthorizationHeaderWithCustodianRecoveryToken:()AuthKit forAltDSID:
{
  v7 = a1;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, obj);
  v5 = 0;
  objc_storeStrong(&v5, a4);
  [v7 _setAuthorizationHeaderWithToken:location[0] altDSID:v5 key:@"X-Apple-CR-Token"];
  objc_storeStrong(&v5, 0);
  objc_storeStrong(location, 0);
}

- (void)ak_addICSCRecoveryHeaderWithIdentityToken:()AuthKit forAltDSID:
{
  v7 = a1;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, obj);
  v5 = 0;
  objc_storeStrong(&v5, a4);
  [v7 _setAuthorizationHeaderWithToken:location[0] altDSID:v5 key:@"X-Apple-iCSC-Identity-Token"];
  [v7 ak_addRecoveryHeaderWithIdentityToken:location[0] forAltDSID:v5];
  objc_storeStrong(&v5, 0);
  objc_storeStrong(location, 0);
}

- (void)ak_addRecoveryHeaderWithIdentityToken:()AuthKit forAltDSID:
{
  v7 = a1;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, obj);
  v5 = 0;
  objc_storeStrong(&v5, a4);
  [v7 _setAuthorizationHeaderWithToken:location[0] altDSID:v5 key:@"X-Apple-Recovery-Identity-Token"];
  objc_storeStrong(&v5, 0);
  objc_storeStrong(location, 0);
}

- (void)ak_addShortLivedTokenHeaderWithIdentityToken:()AuthKit forAltDSID:
{
  v7 = a1;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, obj);
  v5 = 0;
  objc_storeStrong(&v5, a4);
  [v7 _setAuthorizationHeaderWithToken:location[0] altDSID:v5 key:@"X-Apple-SL-Token"];
  objc_storeStrong(&v5, 0);
  objc_storeStrong(location, 0);
}

- (void)ak_addGuardianAuthorizationHeaderWithIdentityToken:()AuthKit forAltDSID:
{
  v7 = a1;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, obj);
  v5 = 0;
  objc_storeStrong(&v5, a4);
  [v7 _setAuthorizationHeaderWithToken:location[0] altDSID:v5 key:@"X-Apple-Guardian-Identity-Token"];
  objc_storeStrong(&v5, 0);
  objc_storeStrong(location, 0);
}

- (void)ak_addGuardianAuthorizationHeaderWithHeartbeatToken:()AuthKit forAltDSID:
{
  v7 = a1;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, obj);
  v5 = 0;
  objc_storeStrong(&v5, a4);
  [v7 _setAuthorizationHeaderWithToken:location[0] altDSID:v5 key:@"X-Apple-Guardian-HB-Token"];
  objc_storeStrong(&v5, 0);
  objc_storeStrong(location, 0);
}

- (void)ak_addGuardianAuthorizationHeaderWithServiceToken:()AuthKit forAltDSID:
{
  v7 = a1;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, obj);
  v5 = 0;
  objc_storeStrong(&v5, a4);
  [v7 _setAuthorizationHeaderWithToken:location[0] altDSID:v5 key:@"X-Apple-Guardian-GS-Token"];
  objc_storeStrong(&v5, 0);
  objc_storeStrong(location, 0);
}

- (void)ak_addGuardianAuthorizationHeaderWithIdentityToken:()AuthKit heartbeatToken:serviceToken:forAltDSID:
{
  v13 = a1;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, obj);
  v11 = 0;
  objc_storeStrong(&v11, a4);
  v10 = 0;
  objc_storeStrong(&v10, a5);
  v9 = 0;
  objc_storeStrong(&v9, a6);
  [v13 ak_addGuardianAuthorizationHeaderWithIdentityToken:location[0] forAltDSID:v9];
  [v13 ak_addGuardianAuthorizationHeaderWithHeartbeatToken:v11 forAltDSID:v9];
  [v13 ak_addGuardianAuthorizationHeaderWithServiceToken:v10 forAltDSID:v9];
  objc_storeStrong(&v9, 0);
  objc_storeStrong(&v10, 0);
  objc_storeStrong(&v11, 0);
  objc_storeStrong(location, 0);
}

- (void)ak_addURLSwitchingHeaderWithURLKey:()AuthKit altDSID:
{
  v13 = a1;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, obj);
  v11 = 0;
  objc_storeStrong(&v11, a4);
  v10 = 0;
  if (v11)
  {
    v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@:%@", v11, location[0]];
  }

  else
  {
    v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@":%@", location[0]];
  }

  v5 = v10;
  v10 = v4;
  MEMORY[0x1E69E5920](v5);
  v9 = [v10 dataUsingEncoding:4];
  v6 = v13;
  v7 = [v9 base64EncodedStringWithOptions:0];
  [v6 setValue:? forHTTPHeaderField:?];
  MEMORY[0x1E69E5920](v7);
  objc_storeStrong(&v9, 0);
  objc_storeStrong(&v10, 0);
  objc_storeStrong(&v11, 0);
  objc_storeStrong(location, 0);
}

- (void)ak_addDataCenterHeaderWithIdentifier:()AuthKit
{
  v4 = a1;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, obj);
  [v4 setValue:location[0] forHTTPHeaderField:@"X-Apple-I-DC"];
  objc_storeStrong(location, 0);
}

- (id)ak_valueForEncodedHeaderWithKey:()AuthKit
{
  v11 = a1;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, obj);
  v9 = [v11 valueForHTTPHeaderField:location[0]];
  if (v9)
  {
    v7 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBase64EncodedString:v9 options:0];
    v3 = objc_alloc(MEMORY[0x1E696AEC0]);
    v6 = [v3 initWithData:v7 encoding:4];
    v12 = MEMORY[0x1E69E5928](v6);
    v8 = 1;
    objc_storeStrong(&v6, 0);
    objc_storeStrong(&v7, 0);
  }

  else
  {
    v12 = 0;
    v8 = 1;
  }

  objc_storeStrong(&v9, 0);
  objc_storeStrong(location, 0);
  v4 = v12;

  return v4;
}

- (void)_setAuthorizationHeaderWithToken:()AuthKit altDSID:key:
{
  v14 = a1;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, obj);
  v12 = 0;
  objc_storeStrong(&v12, a4);
  v11 = 0;
  objc_storeStrong(&v11, a5);
  v10 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@:%@", v12, location[0]];
  v9 = [v10 dataUsingEncoding:4];
  v7 = v14;
  v8 = [v9 base64EncodedStringWithOptions:0];
  [v7 setValue:? forHTTPHeaderField:?];
  MEMORY[0x1E69E5920](v8);
  objc_storeStrong(&v9, 0);
  objc_storeStrong(&v10, 0);
  objc_storeStrong(&v11, 0);
  objc_storeStrong(&v12, 0);
  objc_storeStrong(location, 0);
}

- (void)ak_setBodyWithParameters:()AuthKit
{
  v11 = *MEMORY[0x1E69E9840];
  v9 = a1;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, obj);
  v7 = 0;
  obja = 0;
  v3 = [MEMORY[0x1E696AE40] dataWithPropertyList:location[0] format:100 options:0 error:&obja];
  objc_storeStrong(&v7, obja);
  v6 = v3;
  if (v7)
  {
    oslog = _AKLogSystem();
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_ERROR))
    {
      __os_log_helper_16_2_1_8_64(v10, v7);
      _os_log_error_impl(&dword_193225000, oslog, OS_LOG_TYPE_ERROR, "Unable to serialize request parameters! Error: %@", v10, 0xCu);
    }

    objc_storeStrong(&oslog, 0);
  }

  else
  {
    [v9 setHTTPBody:v6];
  }

  objc_storeStrong(&v6, 0);
  objc_storeStrong(&v7, 0);
  objc_storeStrong(location, 0);
  *MEMORY[0x1E69E9840];
}

- (void)ak_setJSONBodyWithParameters:()AuthKit
{
  v11 = *MEMORY[0x1E69E9840];
  v9 = a1;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, obj);
  v7 = 0;
  v5 = 0;
  v3 = [MEMORY[0x1E696ACB0] dataWithJSONObject:location[0] options:0 error:&v5];
  objc_storeStrong(&v7, v5);
  v6 = v3;
  if (v7)
  {
    v4 = _AKLogSystem();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __os_log_helper_16_2_1_8_64(v10, v7);
      _os_log_error_impl(&dword_193225000, v4, OS_LOG_TYPE_ERROR, "Unable to serialize request parameters! Error: %@", v10, 0xCu);
    }

    objc_storeStrong(&v4, 0);
  }

  else
  {
    [v9 setHTTPBody:v6];
  }

  objc_storeStrong(&v6, 0);
  objc_storeStrong(&v7, 0);
  objc_storeStrong(location, 0);
  *MEMORY[0x1E69E9840];
}

- (void)ak_addAbsintheHeaderWithValue:()AuthKit
{
  v4 = a1;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, obj);
  if (location[0])
  {
    [v4 setValue:location[0] forHTTPHeaderField:@"X-Mme-Nas-Qualify"];
  }

  objc_storeStrong(location, 0);
}

- (void)ak_addLoggedInServicesHeaderForServices:()AuthKit
{
  v8 = *MEMORY[0x1E69E9840];
  v6 = a1;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, obj);
  if ([location[0] count])
  {
    v4 = [location[0] componentsJoinedByString:{@", "}];
    oslog = _AKLogSystem();
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEBUG))
    {
      __os_log_helper_16_2_1_8_64(v7, v4);
      _os_log_debug_impl(&dword_193225000, oslog, OS_LOG_TYPE_DEBUG, "Adding header with services: %@", v7, 0xCu);
    }

    objc_storeStrong(&oslog, 0);
    [v6 setValue:v4 forHTTPHeaderField:@"X-Apple-I-Logged-In-Services"];
    objc_storeStrong(&v4, 0);
  }

  objc_storeStrong(location, 0);
  *MEMORY[0x1E69E9840];
}

- (void)ak_addContextHeaderForServiceType:()AuthKit
{
  v4 = a1;
  location[2] = a2;
  location[1] = a3;
  location[0] = 0;
  if (a3 == 1)
  {
    objc_storeStrong(location, @"icloud");
  }

  else if (a3 == 2)
  {
    objc_storeStrong(location, @"itunes");
  }

  else if (a3 == 4)
  {
    objc_storeStrong(location, @"imessage");
  }

  else if (a3 == 5)
  {
    objc_storeStrong(location, @"facetime");
  }

  else if (a3 == 6)
  {
    objc_storeStrong(location, @"gamecenter");
  }

  else if (a3 == 7)
  {
    objc_storeStrong(location, @"piggybacking");
  }

  if (location[0])
  {
    [v4 setValue:location[0] forHTTPHeaderField:@"X-Apple-AK-Context-Type"];
  }

  objc_storeStrong(location, 0);
}

- (void)ak_addContinutationKeyHeader:()AuthKit
{
  v7 = a1;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, obj);
  v5 = [location[0] dataUsingEncoding:4];
  v3 = v7;
  v4 = [v5 base64EncodedStringWithOptions:0];
  [v3 setValue:? forHTTPHeaderField:?];
  MEMORY[0x1E69E5920](v4);
  objc_storeStrong(&v5, 0);
  objc_storeStrong(location, 0);
}

- (void)ak_addContinutationKeyPresenceHeader:()AuthKit
{
  v4 = a1;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, obj);
  if (location[0])
  {
    [v4 setValue:@"true" forHTTPHeaderField:@"X-Apple-I-CK-Presence"];
  }

  else
  {
    [v4 setValue:@"false" forHTTPHeaderField:@"X-Apple-I-CK-Presence"];
  }

  objc_storeStrong(location, 0);
}

- (void)ak_addPasswordResetKeyHeader:()AuthKit
{
  v7 = a1;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, obj);
  v5 = [location[0] dataUsingEncoding:4];
  v3 = v7;
  v4 = [v5 base64EncodedStringWithOptions:0];
  [v3 setValue:? forHTTPHeaderField:?];
  MEMORY[0x1E69E5920](v4);
  objc_storeStrong(&v5, 0);
  objc_storeStrong(location, 0);
}

- (void)ak_addCountryHeader
{
  v5 = a1;
  location[1] = a2;
  v3 = [MEMORY[0x1E695DF58] currentLocale];
  v2 = [v3 objectForKey:*MEMORY[0x1E695D978]];
  location[0] = [v2 uppercaseString];
  MEMORY[0x1E69E5920](v2);
  MEMORY[0x1E69E5920](v3);
  if (location[0])
  {
    [v5 setValue:location[0] forHTTPHeaderField:@"X-MMe-Country"];
  }

  objc_storeStrong(location, 0);
}

- (void)ak_addSKUCountryHeader
{
  v3 = a1;
  location[1] = a2;
  location[0] = MGGetStringAnswer();
  if (location[0])
  {
    [v3 setValue:location[0] forHTTPHeaderField:@"X-Apple-I-SKU-Country"];
  }

  objc_storeStrong(location, 0);
}

- (void)ak_addProxiedDeviceCountryHeader:()AuthKit
{
  v6 = a1;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, obj);
  if (location[0])
  {
    v3 = v6;
    v4 = [location[0] uppercaseString];
    [v3 setValue:? forHTTPHeaderField:?];
    MEMORY[0x1E69E5920](v4);
  }

  objc_storeStrong(location, 0);
}

- (void)ak_addProxiedDeviceSerialNumberHeader:()AuthKit
{
  v4 = a1;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, obj);
  if (location[0])
  {
    [v4 setValue:location[0] forHTTPHeaderField:@"X-Apple-I-Proxied-SRL-NO"];
  }

  objc_storeStrong(location, 0);
}

- (void)ak_addPhoneNumberHeader
{
  v11 = a1;
  v10[1] = a2;
  v6 = +[AKDevice currentDevice];
  v5 = [v6 phoneNumber];
  v10[0] = [v5 dataUsingEncoding:4];
  MEMORY[0x1E69E5920](v5);
  MEMORY[0x1E69E5920](v6);
  if (v10[0])
  {
    v4 = [v10[0] base64EncodedStringWithOptions:0];
    [v11 setValue:? forHTTPHeaderField:?];
    MEMORY[0x1E69E5920](v4);
  }

  else
  {
    location = _AKLogSystem();
    v8 = 16;
    if (os_log_type_enabled(location, OS_LOG_TYPE_ERROR))
    {
      log = location;
      type = v8;
      __os_log_helper_16_0_0(v7);
      _os_log_error_impl(&dword_193225000, log, type, "Failed to attach PTN header", v7, 2u);
    }

    objc_storeStrong(&location, 0);
  }

  objc_storeStrong(v10, 0);
}

- (void)ak_addPhoneNumberCertificateHeaderWithValue:()AuthKit
{
  v4 = a1;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, obj);
  [v4 setValue:location[0] forHTTPHeaderField:@"X-Apple-IDS-PAC"];
  objc_storeStrong(location, 0);
}

- (void)ak_addPhoneInformationHeaderWithValue:()AuthKit
{
  v10 = a1;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, obj);
  if (location[0])
  {
    v8 = [MEMORY[0x1E696AEC0] ak_base64EncodedJsonFromObject:location[0]];
    if (v8)
    {
      [v10 setValue:v8 forHTTPHeaderField:@"X-Apple-I-Phone"];
    }

    else
    {
      oslog = _AKLogSystem();
      type = OS_LOG_TYPE_ERROR;
      if (os_log_type_enabled(oslog, OS_LOG_TYPE_ERROR))
      {
        log = oslog;
        v4 = type;
        __os_log_helper_16_0_0(v5);
        _os_log_error_impl(&dword_193225000, log, v4, "Failed to attach Phone Information header", v5, 2u);
      }

      objc_storeStrong(&oslog, 0);
    }

    objc_storeStrong(&v8, 0);
  }

  objc_storeStrong(location, 0);
}

- (uint64_t)ak_addAcceptedSLAHeaderWithVersion:()AuthKit
{
  v6 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a3];
  v5 = [v6 stringValue];
  [a1 setValue:? forHTTPHeaderField:?];
  MEMORY[0x1E69E5920](v5);
  return MEMORY[0x1E69E5920](v6);
}

- (void)ak_addClientApp:()AuthKit
{
  v4 = a1;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, obj);
  [v4 setValue:location[0] forHTTPHeaderField:@"X-Apple-Client-App-Name"];
  objc_storeStrong(location, 0);
}

- (void)ak_addProxyApp:()AuthKit
{
  v4 = a1;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, obj);
  [v4 setValue:location[0] forHTTPHeaderField:@"X-Apple-Proxied-App-Name"];
  objc_storeStrong(location, 0);
}

- (void)ak_addAppProvidedContext:()AuthKit
{
  v4 = a1;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, obj);
  [v4 setValue:location[0] forHTTPHeaderField:@"X-Apple-I-App-Provided-Context"];
  objc_storeStrong(location, 0);
}

- (void)ak_addOfferSecurityUpgrade:()AuthKit
{
  if (a3)
  {
    return [result setValue:@"1" forHTTPHeaderField:@"X-Apple-Offer-Security-Upgrade"];
  }

  return result;
}

+ (id)ak_clientInfoHeader
{
  v8[1] = *MEMORY[0x1E69E9840];
  location[2] = a1;
  location[1] = a2;
  v4 = +[AKDevice currentDevice];
  location[0] = [v4 serverFriendlyDescription];
  MEMORY[0x1E69E5920](v4);
  if (location[0])
  {
    v7 = @"X-MMe-Client-Info";
    v8[0] = location[0];
    v6 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v8 forKeys:&v7 count:1];
  }

  else
  {
    v6 = MEMORY[0x1E69E5928](MEMORY[0x1E695E0F8]);
  }

  objc_storeStrong(location, 0);
  *MEMORY[0x1E69E9840];
  v2 = v6;

  return v2;
}

+ (id)ak_deviceUDIDHeader
{
  v8[1] = *MEMORY[0x1E69E9840];
  location[2] = a1;
  location[1] = a2;
  v4 = +[AKDevice currentDevice];
  location[0] = [v4 uniqueDeviceIdentifier];
  MEMORY[0x1E69E5920](v4);
  if (location[0])
  {
    v7 = @"X-Mme-Device-Id";
    v8[0] = location[0];
    v6 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v8 forKeys:&v7 count:1];
  }

  else
  {
    v6 = MEMORY[0x1E69E5928](MEMORY[0x1E695E0F8]);
  }

  objc_storeStrong(location, 0);
  *MEMORY[0x1E69E9840];
  v2 = v6;

  return v2;
}

+ (id)ak_anisetteHeadersWithData:()AuthKit
{
  v19 = *MEMORY[0x1E69E9840];
  location[2] = a1;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, obj);
  v16 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v15 = [location[0] machineID];
  v14 = [location[0] oneTimePassword];
  v9 = objc_alloc(MEMORY[0x1E696AEC0]);
  v13 = [v9 initWithFormat:@"%llu", objc_msgSend(location[0], "routingInfo")];
  if (!v15 || !v14 || !v13)
  {
    v12 = _AKLogSystem();
    v11 = OS_LOG_TYPE_ERROR;
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      __os_log_helper_16_2_1_8_64(v18, location[0]);
      _os_log_error_impl(&dword_193225000, v12, v11, "Encountered incomplete Anisette data! %@", v18, 0xCu);
    }

    objc_storeStrong(&v12, 0);
  }

  if (v15)
  {
    [v16 setObject:v15 forKeyedSubscript:@"X-Apple-I-MD-M"];
  }

  if (v14)
  {
    [v16 setObject:v14 forKeyedSubscript:@"X-Apple-I-MD"];
  }

  if (v13)
  {
    [v16 setObject:v13 forKeyedSubscript:@"X-Apple-I-MD-RINFO"];
  }

  v8 = +[AKDevice currentDevice];
  v7 = [v8 localUserUUID];
  v10 = [v7 aaf_toSHA256String];
  MEMORY[0x1E69E5920](v7);
  MEMORY[0x1E69E5920](v8);
  if (v10)
  {
    [v16 setObject:v10 forKeyedSubscript:@"X-Apple-I-MD-LU"];
  }

  v5 = +[AKConfiguration sharedConfiguration];
  v6 = [v5 shouldAllowTestApplication] == 1;
  MEMORY[0x1E69E5920](v5);
  if (v6)
  {
    [v16 setObject:@"true" forKeyedSubscript:@"X-Apple-Test-Application"];
  }

  v4 = [v16 copy];
  objc_storeStrong(&v10, 0);
  objc_storeStrong(&v13, 0);
  objc_storeStrong(&v14, 0);
  objc_storeStrong(&v15, 0);
  objc_storeStrong(&v16, 0);
  objc_storeStrong(location, 0);
  *MEMORY[0x1E69E9840];

  return v4;
}

+ (id)ak_anisetteHeadersWithCompanionData:()AuthKit
{
  v13 = *MEMORY[0x1E69E9840];
  location[2] = a1;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, obj);
  v10 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v9 = [location[0] machineID];
  v8 = [location[0] oneTimePassword];
  v5 = objc_alloc(MEMORY[0x1E696AEC0]);
  v7 = [v5 initWithFormat:@"%llu", objc_msgSend(location[0], "routingInfo")];
  if (!v9 || !v8 || !v7)
  {
    oslog = _AKLogSystem();
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_ERROR))
    {
      __os_log_helper_16_2_1_8_64(v12, location[0]);
      _os_log_error_impl(&dword_193225000, oslog, OS_LOG_TYPE_ERROR, "Encountered incomplete companion Anisette data! %@", v12, 0xCu);
    }

    objc_storeStrong(&oslog, 0);
  }

  if (v9)
  {
    [v10 setObject:v9 forKeyedSubscript:@"X-Apple-I-Companion-MD-M"];
  }

  if (v8)
  {
    [v10 setObject:v8 forKeyedSubscript:@"X-Apple-I-Companion-MD"];
  }

  if (v7)
  {
    [v10 setObject:v7 forKeyedSubscript:@"X-Apple-I-Companion-MD-RINFO"];
  }

  v4 = MEMORY[0x1E69E5928](v10);
  objc_storeStrong(&v7, 0);
  objc_storeStrong(&v8, 0);
  objc_storeStrong(&v9, 0);
  objc_storeStrong(&v10, 0);
  objc_storeStrong(location, 0);
  *MEMORY[0x1E69E9840];

  return v4;
}

+ (id)ak_proxiedHeadersForDevice:()AuthKit anisetteData:
{
  v14 = a1;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, obj);
  v12 = 0;
  objc_storeStrong(&v12, a4);
  v11 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v6 = v11;
  v7 = [v14 ak_proxiedAnisetteHeadersWithData:v12];
  [v6 addEntriesFromDictionary:?];
  MEMORY[0x1E69E5920](v7);
  v8 = v11;
  v9 = [v14 ak_proxiedClientInfoHeadersWithDevice:location[0]];
  [v8 addEntriesFromDictionary:?];
  MEMORY[0x1E69E5920](v9);
  v10 = MEMORY[0x1E69E5928](v11);
  objc_storeStrong(&v11, 0);
  objc_storeStrong(&v12, 0);
  objc_storeStrong(location, 0);

  return v10;
}

+ (id)ak_proxiedAnisetteHeadersWithData:()AuthKit
{
  v13 = *MEMORY[0x1E69E9840];
  location[2] = a1;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, obj);
  v10 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v9 = [location[0] machineID];
  v8 = [location[0] oneTimePassword];
  v5 = objc_alloc(MEMORY[0x1E696AEC0]);
  v7 = [v5 initWithFormat:@"%llu", objc_msgSend(location[0], "routingInfo")];
  if (!v9 || !v8 || !v7)
  {
    oslog = _AKLogSystem();
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_ERROR))
    {
      __os_log_helper_16_2_1_8_64(v12, location[0]);
      _os_log_error_impl(&dword_193225000, oslog, OS_LOG_TYPE_ERROR, "Encountered incomplete Anisette data for proxied device! %@", v12, 0xCu);
    }

    objc_storeStrong(&oslog, 0);
  }

  if (v9)
  {
    [v10 setObject:v9 forKeyedSubscript:@"X-Apple-I-Proxied-MD-M"];
  }

  if (v8)
  {
    [v10 setObject:v8 forKeyedSubscript:@"X-Apple-I-Proxied-MD"];
  }

  if (v7)
  {
    [v10 setObject:v7 forKeyedSubscript:@"X-Apple-I-Proxied-MD-RINFO"];
  }

  v4 = MEMORY[0x1E69E5928](v10);
  objc_storeStrong(&v7, 0);
  objc_storeStrong(&v8, 0);
  objc_storeStrong(&v9, 0);
  objc_storeStrong(&v10, 0);
  objc_storeStrong(location, 0);
  *MEMORY[0x1E69E9840];

  return v4;
}

+ (id)ak_proxiedClientInfoHeadersWithDevice:()AuthKit
{
  location[2] = a1;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, obj);
  v9 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v8 = [location[0] serverFriendlyDescription];
  MEMORY[0x1E69E5920](v8);
  if (v8)
  {
    v7 = [location[0] serverFriendlyDescription];
    [v9 setObject:? forKeyedSubscript:?];
    MEMORY[0x1E69E5920](v7);
  }

  v6 = [location[0] uniqueDeviceIdentifier];
  MEMORY[0x1E69E5920](v6);
  if (v6)
  {
    v5 = [location[0] uniqueDeviceIdentifier];
    [v9 setObject:? forKeyedSubscript:?];
    MEMORY[0x1E69E5920](v5);
  }

  v4 = MEMORY[0x1E69E5928](v9);
  objc_storeStrong(&v9, 0);
  objc_storeStrong(location, 0);

  return v4;
}

- (void)ak_addDeviceModel
{
  v4 = a1;
  location[1] = a2;
  v2 = +[AKDevice currentDevice];
  location[0] = [v2 modelNumber];
  MEMORY[0x1E69E5920](v2);
  if (location[0])
  {
    [v4 setValue:location[0] forHTTPHeaderField:@"X-MMe-Device-Model"];
  }

  objc_storeStrong(location, 0);
}

- (void)ak_addCFUHeader:()AuthKit
{
  v4 = a1;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, obj);
  [v4 setValue:location[0] forHTTPHeaderField:@"X-Apple-I-CFU-State"];
  objc_storeStrong(location, 0);
}

- (void)ak_addDeviceConfigurationModeHeader
{
  v3 = a1;
  v2[1] = a2;
  v2[0] = [MEMORY[0x1E696AEC0] stringWithFormat:@"%lu", +[AKDevice currentDeviceAuthenticationMode](AKDevice, "currentDeviceAuthenticationMode")];
  [v3 setValue:v2[0] forHTTPHeaderField:@"X-Apple-I-Device-Configuration-Mode"];
  objc_storeStrong(v2, 0);
}

- (void)ak_addDeviceConfigurationModeHeaderForAuthContext:()AuthKit
{
  v5 = a1;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, obj);
  v3 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%lu", +[AKDevice currentDeviceAuthenticationModeForAuthContext:](AKDevice, "currentDeviceAuthenticationModeForAuthContext:", location[0])];
  [v5 setValue:v3 forHTTPHeaderField:@"X-Apple-I-Device-Configuration-Mode"];
  objc_storeStrong(&v3, 0);
  objc_storeStrong(location, 0);
}

- (void)ak_addRequestUUIDHeader:()AuthKit
{
  v4 = a1;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, obj);
  if (location[0])
  {
    [v4 setValue:location[0] forHTTPHeaderField:@"X-Apple-I-Request-UUID"];
  }

  objc_storeStrong(location, 0);
}

- (void)ak_addExecutionModeHeader:()AuthKit
{
  v10 = result;
  v9 = a2;
  v8 = a3;
  if (a3)
  {
    location = _AKLogSystem();
    v6 = 2;
    if (os_log_type_enabled(location, OS_LOG_TYPE_DEBUG))
    {
      log = location;
      type = v6;
      __os_log_helper_16_0_0(v5);
      _os_log_debug_impl(&dword_193225000, log, type, "Setting Execution mode header to CLI", v5, 2u);
    }

    objc_storeStrong(&location, 0);
    return [v10 setValue:@"cli" forHTTPHeaderField:@"X-Apple-I-Exec-Mode"];
  }

  return result;
}

- (void)ak_addClientBundleIDHeader:()AuthKit
{
  v4 = a1;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, obj);
  if (location[0])
  {
    [v4 setValue:location[0] forHTTPHeaderField:@"X-Apple-I-Client-Bundle-Id"];
  }

  objc_storeStrong(location, 0);
}

- (void)ak_addServerBackoffInfoHeader:()AuthKit
{
  v4 = a1;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, obj);
  if (location[0])
  {
    [v4 setValue:location[0] forHTTPHeaderField:@"X-Apple-S-Backoff-Server-Info"];
  }

  objc_storeStrong(location, 0);
}

- (void)ak_addServerBackoffOptInHeader:()AuthKit
{
  v6 = a1;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, obj);
  if (location[0])
  {
    v3 = v6;
    v4 = [location[0] stringValue];
    [v3 setValue:? forHTTPHeaderField:?];
    MEMORY[0x1E69E5920](v4);
  }

  objc_storeStrong(location, 0);
}

- (void)ak_addProxiedBundleIDHeader:()AuthKit
{
  v4 = a1;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, obj);
  if (location[0])
  {
    [v4 setValue:location[0] forHTTPHeaderField:@"X-Apple-I-Proxied-Bundle-Id"];
  }

  objc_storeStrong(location, 0);
}

- (void)ak_addFidoRecoveryTokenHeader:()AuthKit
{
  v4 = a1;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, obj);
  if (location[0])
  {
    [v4 setValue:location[0] forHTTPHeaderField:@"X-Apple-I-Fido-Recovery-Token"];
  }

  objc_storeStrong(location, 0);
}

- (void)ak_addWalrusStatusHeader
{
  v11 = a1;
  location[1] = a2;
  location[0] = 0;
  v4 = +[AKCDPFactory walrusStatusLiveValue];
  v9 = [v4 captureCurrentValue];
  MEMORY[0x1E69E5920](v4);
  v8 = [v9 unsignedIntegerValue];
  if (v8)
  {
    if (v8 == 1)
    {
      objc_storeStrong(location, @"0");
    }

    else if (v8 == 2)
    {
      objc_storeStrong(location, @"1");
    }
  }

  else
  {
    v7 = _AKLogSystem();
    v6 = 2;
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      log = v7;
      type = v6;
      __os_log_helper_16_0_0(v5);
      _os_log_debug_impl(&dword_193225000, log, type, "Got unknown Walrus status when setting header", v5, 2u);
    }

    objc_storeStrong(&v7, 0);
    objc_storeStrong(location, 0);
  }

  [v11 setValue:location[0] forHTTPHeaderField:@"X-Apple-AK-DataRecoveryService-Status"];
  objc_storeStrong(&v9, 0);
  objc_storeStrong(location, 0);
}

- (void)ak_addPrivateEmailDomainHeader:()AuthKit
{
  v4 = a1;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, obj);
  if (location[0])
  {
    [v4 setValue:location[0] forHTTPHeaderField:@"X-Apple-I-Private-Email-Domain"];
  }

  objc_storeStrong(location, 0);
}

- (void)ak_addPrivateEmailOriginHeader:()AuthKit
{
  v4 = a1;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, obj);
  if (location[0])
  {
    [v4 setValue:location[0] forHTTPHeaderField:@"X-Apple-I-Private-Email-Origin"];
  }

  objc_storeStrong(location, 0);
}

- (void)ak_addPrivateEmailAppBundleIdHeader:()AuthKit
{
  v6 = a1;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, obj);
  if (location[0])
  {
    v4 = [location[0] dataUsingEncoding:4];
    v3 = [v4 base64EncodedStringWithOptions:0];
    [v6 setValue:v3 forHTTPHeaderField:@"X-Apple-I-Private-Email-Client-Bundle"];
    objc_storeStrong(&v3, 0);
    objc_storeStrong(&v4, 0);
  }

  objc_storeStrong(location, 0);
}

- (void)ak_addPrivateEmailAppNameHeader:()AuthKit
{
  v6 = a1;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, obj);
  if (location[0])
  {
    v4 = [location[0] dataUsingEncoding:4];
    v3 = [v4 base64EncodedStringWithOptions:0];
    [v6 setValue:v3 forHTTPHeaderField:@"X-Apple-I-Private-Email-App-Name"];
    objc_storeStrong(&v3, 0);
    objc_storeStrong(&v4, 0);
  }

  objc_storeStrong(location, 0);
}

- (uint64_t)ak_addSupportedLanguageHeader
{
  v3 = [MEMORY[0x1E695DF58] _deviceLanguage];
  [a1 setValue:? forHTTPHeaderField:?];
  return MEMORY[0x1E69E5920](v3);
}

- (void)ak_addRequestContextHeader:()AuthKit
{
  v4 = a1;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, obj);
  if (location[0])
  {
    [v4 setValue:location[0] forHTTPHeaderField:@"X-Apple-I-Request-Context"];
  }

  objc_storeStrong(location, 0);
}

- (void)ak_addExperimentModeHeader
{
  v10 = *MEMORY[0x1E69E9840];
  v8 = a1;
  v7 = a2;
  v3 = +[AKConfiguration sharedConfiguration];
  v4 = [v3 shouldAllowExperimentalMode] == 1;
  MEMORY[0x1E69E5920](v3);
  v6 = v4;
  oslog = _AKLogSystem();
  if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEBUG))
  {
    if (v6)
    {
      v2 = @"YES";
    }

    else
    {
      v2 = @"NO";
    }

    __os_log_helper_16_2_1_8_64(v9, v2);
    _os_log_debug_impl(&dword_193225000, oslog, OS_LOG_TYPE_DEBUG, "AllowExperimentMode header state is %@", v9, 0xCu);
  }

  objc_storeStrong(&oslog, 0);
  if (v6)
  {
    [v8 setValue:@"true" forHTTPHeaderField:@"X-Apple-I-Experiment-Mode"];
  }

  *MEMORY[0x1E69E9840];
}

- (void)ak_addHeaderForSourceAltDSID:()AuthKit
{
  v4 = a1;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, obj);
  if (location[0])
  {
    [v4 setValue:location[0] forHTTPHeaderField:@"X-Apple-I-Source-Alternate-Id"];
  }

  objc_storeStrong(location, 0);
}

- (void)ak_addTelemetryDeviceSessionID:()AuthKit
{
  v4 = a1;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, obj);
  [v4 setValue:location[0] forHTTPHeaderField:@"X-Apple-I-Device-Session-Id"];
  objc_storeStrong(location, 0);
}

- (void)ak_addTelemetryFlowID:()AuthKit
{
  v4 = a1;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, obj);
  [v4 setValue:location[0] forHTTPHeaderField:@"X-Apple-I-Flow-Id"];
  objc_storeStrong(location, 0);
}

- (void)ak_addHeaderForDeviceManagementState:()AuthKit
{
  v4 = a1;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, obj);
  [v4 setValue:location[0] forHTTPHeaderField:@"X-Apple-I-MDM-Device-Posture"];
  objc_storeStrong(location, 0);
}

- (void)ak_addHeaderForMDMOrganizationToken:()AuthKit
{
  v4 = a1;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, obj);
  [v4 setValue:location[0] forHTTPHeaderField:@"X-Apple-I-MDM-Org-Token"];
  objc_storeStrong(location, 0);
}

- (uint64_t)ak_addHeaderForSecurityCode:()AuthKit
{
  v6 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a3];
  v5 = [v6 stringValue];
  [a1 setValue:? forHTTPHeaderField:?];
  MEMORY[0x1E69E5920](v5);
  return MEMORY[0x1E69E5920](v6);
}

- (void)ak_addHeaderForDCRT:()AuthKit
{
  v6 = a1;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, obj);
  v3 = v6;
  v4 = [location[0] base64EncodedStringWithOptions:0];
  [v3 setValue:? forHTTPHeaderField:?];
  MEMORY[0x1E69E5920](v4);
  objc_storeStrong(location, 0);
}

- (void)ak_addPreviousTransactionIdHeader:()AuthKit
{
  v4 = a1;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, obj);
  [v4 setValue:location[0] forHTTPHeaderField:@"X-Apple-I-Previous-PTXID"];
  objc_storeStrong(location, 0);
}

- (void)ak_addServiceHeaderForServiceType:()AuthKit
{
  v4 = a1;
  location[2] = a2;
  location[1] = a3;
  location[0] = AKStringFromServiceType(a3);
  if (location[0])
  {
    [v4 setValue:location[0] forHTTPHeaderField:@"X-Apple-I-Service-Type"];
  }

  objc_storeStrong(location, 0);
}

- (void)ak_addCreateInformationHeaderWithValue:()AuthKit
{
  v10 = a1;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, obj);
  if (location[0])
  {
    v8 = [MEMORY[0x1E696AEC0] ak_base64EncodedJsonFromObject:location[0]];
    if (v8)
    {
      [v10 setValue:v8 forHTTPHeaderField:@"X-Apple-I-Create-Context"];
    }

    else
    {
      oslog = _AKLogSystem();
      type = OS_LOG_TYPE_ERROR;
      if (os_log_type_enabled(oslog, OS_LOG_TYPE_ERROR))
      {
        log = oslog;
        v4 = type;
        __os_log_helper_16_0_0(v5);
        _os_log_error_impl(&dword_193225000, log, v4, "Failed to attach Proto Account Information header", v5, 2u);
      }

      objc_storeStrong(&oslog, 0);
    }

    objc_storeStrong(&v8, 0);
  }

  objc_storeStrong(location, 0);
}

- (void)ak_addBiometryTypeHeaderWithValue:()AuthKit
{
  v9 = *MEMORY[0x1E69E9840];
  v7 = a1;
  v6 = a2;
  v5 = a3;
  location = 0;
  if (a3)
  {
    switch(a3)
    {
      case 1:
        objc_storeStrong(&location, @"1");
        break;
      case 2:
        objc_storeStrong(&location, @"2");
        break;
      case 4:
        objc_storeStrong(&location, @"3");
        break;
    }
  }

  else
  {
    objc_storeStrong(&location, @"0");
  }

  if (location)
  {
    [v7 setValue:location forHTTPHeaderField:@"X-Apple-I-Bio-Type"];
  }

  else
  {
    oslog = _AKLogSystem();
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_ERROR))
    {
      __os_log_helper_16_0_1_8_0(v8, v5);
      _os_log_error_impl(&dword_193225000, oslog, OS_LOG_TYPE_ERROR, "Unexpected biometry type, cannot add header: %lu", v8, 0xCu);
    }

    objc_storeStrong(&oslog, 0);
  }

  objc_storeStrong(&location, 0);
  *MEMORY[0x1E69E9840];
}

@end