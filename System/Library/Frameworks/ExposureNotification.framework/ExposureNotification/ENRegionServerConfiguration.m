@interface ENRegionServerConfiguration
- (ENRegionServerConfiguration)initWithCoder:(id)a3;
- (ENRegionServerConfiguration)initWithServerResponseDictionary:(id)a3;
- (id)description;
- (id)preferredLocalizationsFromArray:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation ENRegionServerConfiguration

- (id)description
{
  v43 = MEMORY[0x277CCACA8];
  v44 = [(ENRegionServerConfiguration *)self region];
  v42 = [(ENRegionServerConfiguration *)self enVersion];
  v41 = [(ENRegionServerConfiguration *)self enEnabled];
  v3 = [(ENRegionServerConfiguration *)self associatedDomainsEnabled];
  v4 = [(ENRegionServerConfiguration *)self textMessageVerificationEnabled];
  v5 = [(ENRegionServerConfiguration *)self preArmTestVerificationEnabled];
  v6 = [(ENRegionServerConfiguration *)self variantOfConcernEnabled];
  v7 = [(ENRegionServerConfiguration *)self featureFlags];
  if (!v7)
  {
    v40 = "[ None ]";
    goto LABEL_14;
  }

  v8 = v7;
  v9 = [MEMORY[0x277CCAB68] stringWithFormat:@"(%lu) [", v7];
  v10 = v9;
  if (v8)
  {
    [v9 appendString:@" VaccinationStatusInTEK"];
    if ((v8 & 2) == 0)
    {
LABEL_4:
      if ((v8 & 4) == 0)
      {
        goto LABEL_5;
      }

      goto LABEL_37;
    }
  }

  else if ((v8 & 2) == 0)
  {
    goto LABEL_4;
  }

  [v10 appendString:@" Self-Report-Type"];
  if ((v8 & 4) == 0)
  {
LABEL_5:
    if ((v8 & 8) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_38;
  }

LABEL_37:
  [v10 appendString:@" Clinical-Report-Type"];
  if ((v8 & 8) == 0)
  {
LABEL_6:
    if ((v8 & 0x10) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_39;
  }

LABEL_38:
  [v10 appendString:@" Recursive-Report-Type"];
  if ((v8 & 0x10) == 0)
  {
LABEL_7:
    if ((v8 & 0x20) == 0)
    {
      goto LABEL_8;
    }

LABEL_40:
    [v10 appendString:@" Proxy-Disabled"];
    if ((v8 & 0x40) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

LABEL_39:
  [v10 appendString:@" Revoked-Report-Type"];
  if ((v8 & 0x20) != 0)
  {
    goto LABEL_40;
  }

LABEL_8:
  if ((v8 & 0x40) != 0)
  {
LABEL_9:
    [v10 appendString:@" Manual-Code-Disabled"];
  }

LABEL_10:
  [v10 appendString:@" ]"];
  v11 = [v10 cStringUsingEncoding:4];
  v12 = "?";
  if (v11)
  {
    v12 = v11;
  }

  v40 = v12;

LABEL_14:
  if (v6)
  {
    v13 = "yes";
  }

  else
  {
    v13 = "no";
  }

  if (v5)
  {
    v14 = "yes";
  }

  else
  {
    v14 = "no";
  }

  v38 = v14;
  v39 = v13;
  if (v4)
  {
    v15 = "yes";
  }

  else
  {
    v15 = "no";
  }

  if (v3)
  {
    v16 = "yes";
  }

  else
  {
    v16 = "no";
  }

  v36 = v16;
  v37 = v15;
  v35 = [(ENRegionServerConfiguration *)self hasSubdivisions];
  v17 = [(ENRegionServerConfiguration *)self subdivisions];
  [(ENRegionServerConfiguration *)self applicationBackgroundRuntimeInterval];
  v19 = v18;
  [(ENRegionServerConfiguration *)self rpiAdvertisementTolerance];
  v21 = v20;
  v22 = [(ENRegionServerConfiguration *)self dailyDetectExposureLimit];
  v23 = [(ENRegionServerConfiguration *)self appBundleID];
  v24 = [(ENRegionServerConfiguration *)self publicKey];
  v25 = [(ENRegionServerConfiguration *)self publicKeyVersion];
  [(ENRegionServerConfiguration *)self callbackInterval];
  v27 = v26;
  v28 = [(ENRegionServerConfiguration *)self legalConsentVersion];
  if ([(ENRegionServerConfiguration *)self telemetryAuthorization])
  {
    v29 = "yes";
  }

  else
  {
    v29 = "no";
  }

  [(ENRegionServerConfiguration *)self timeToResetAvailabilityAlert];
  v31 = v30;
  if ([(ENRegionServerConfiguration *)self resetAvailabilityAlertForDeclinedUsers])
  {
    v32 = "yes";
  }

  else
  {
    v32 = "no";
  }

  v33 = [v43 stringWithFormat:@"Server - %@, version: %lu enEnabled: %d, domains: %s, textVerify: %s, textPreArm: %s, variantOfConcern: %s, supportedFeatures: %s, hasSubdivisions: %d, subdivisions: %@, runtime: %lf, RPI Adv: %lf, API Rate Limit: %lu, appID: %@, publicKey: %@, publicKeyVersion: %@, callbackInterval: %f, Legal Consent Version: %@, telemetryAuthorization: %s, timeToResetAvailabilityAlert: %f, resetAvailabilityAlertForDeclinedUsers: %s", v44, v42, v41, v36, v37, v38, v39, v40, v35, v17, v19, v21, v22, v23, v24, v25, v27, v28, v29, v31, v32];

  return v33;
}

- (ENRegionServerConfiguration)initWithServerResponseDictionary:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_117;
  }

  v114.receiver = self;
  v114.super_class = ENRegionServerConfiguration;
  self = [(ENRegionServerConfiguration *)&v114 init];
  if (!self)
  {
    goto LABEL_117;
  }

  v113 = 0;
  CFStringGetTypeID();
  v5 = CFDictionaryGetTypedValue();
  appBundleID = self->_appBundleID;
  self->_appBundleID = v5;

  CFStringGetTypeID();
  v7 = CFDictionaryGetTypedValue();
  publicKey = self->_publicKey;
  self->_publicKey = v7;

  if (v113 || (CFStringGetTypeID(), CFDictionaryGetTypedValue(), v9 = objc_claimAutoreleasedReturnValue(), publicKeyVersion = self->_publicKeyVersion, self->_publicKeyVersion = v9, publicKeyVersion, v113))
  {
LABEL_117:
    v108 = 0;
  }

  else
  {
    v11 = [ENRegion regionFromServerResponseDictionary:v4];
    v12 = v11;
    if (v11)
    {
      v13 = [v11 copy];
      region = self->_region;
      self->_region = v13;

      CFDictionaryGetTypeID();
      v15 = CFDictionaryGetTypedValue();
      if (v113)
      {
        v108 = 0;
      }

      else
      {
        self->_enVersion = CFDictionaryGetInt64Ranged();
        Int64 = CFDictionaryGetInt64();
        if (v113)
        {
          v17 = 0;
        }

        else
        {
          v17 = Int64 == 0;
        }

        v18 = !v17;
        self->_enEnabled = v18;
        Int64Ranged = CFDictionaryGetInt64Ranged();
        if (v113)
        {
          v20 = 0;
        }

        else
        {
          v20 = Int64Ranged;
        }

        self->_featureFlags = v20;
        v21 = CFDictionaryGetInt64();
        if (v113)
        {
          v22 = 0;
        }

        else
        {
          v22 = v21 == 0;
        }

        v23 = !v22;
        self->_associatedDomainsEnabled = v23;
        v24 = CFDictionaryGetInt64();
        if (v113)
        {
          v25 = 1;
        }

        else
        {
          v25 = v24 == 0;
        }

        v26 = !v25;
        self->_textMessageVerificationEnabled = v26;
        v27 = CFDictionaryGetInt64();
        if (v113)
        {
          v28 = 1;
        }

        else
        {
          v28 = v27 == 0;
        }

        v29 = !v28;
        self->_preArmTestVerificationEnabled = v29;
        v30 = CFDictionaryGetInt64();
        if (v113)
        {
          v31 = 1;
        }

        else
        {
          v31 = v30 == 0;
        }

        v32 = !v31;
        self->_variantOfConcernEnabled = v32;
        v33 = CFDictionaryGetInt64();
        self->_hasSubdivisions = v33 != 0;
        if (v33)
        {
          CFDictionaryGetTypeID();
          v34 = CFDictionaryGetTypedValue();
          if (v34)
          {
            v35 = [(ENRegion *)self->_region countryCode];
            objc_opt_class();
            v36 = NSDictionaryGetNSArrayOfClass();
            subdivisions = self->_subdivisions;
            self->_subdivisions = v36;
          }
        }

        CFDictionaryGetDouble();
        if (v113)
        {
          v38 = 0.0;
        }

        self->_timeToResetAvailabilityAlert = v38;
        v39 = CFDictionaryGetInt64();
        if (v113)
        {
          v40 = 1;
        }

        else
        {
          v40 = v39 == 0;
        }

        v41 = !v40;
        self->_resetAvailabilityAlertForDeclinedUsers = v41;
        v42 = 3600 * CFDictionaryGetInt64Ranged();
        if (v113)
        {
          v43 = 14400;
        }

        else
        {
          v43 = v42;
        }

        self->_applicationBackgroundRuntimeInterval = v43;
        v44 = 60 * CFDictionaryGetInt64Ranged();
        if (v113)
        {
          v45 = 86400;
        }

        else
        {
          v45 = v44;
        }

        self->_callbackInterval = v45;
        v46 = CFDictionaryGetInt64Ranged();
        if (v113)
        {
          v47 = 15;
        }

        else
        {
          v47 = v46;
        }

        self->_dailyDetectExposureLimit = v47;
        v48 = CFDictionaryGetInt64Ranged();
        if (v113)
        {
          v49 = 1;
        }

        else
        {
          v49 = v48;
        }

        self->_numberOfAdvSamplesForRPIThreshold = v49;
        v50 = 60 * CFDictionaryGetInt64Ranged();
        if (v113)
        {
          v51 = 7200;
        }

        else
        {
          v51 = v50;
        }

        self->_rpiAdvertisementTolerance = v51;
        v52 = 60 * CFDictionaryGetInt64Ranged();
        if (v113)
        {
          v53 = 1200;
        }

        else
        {
          v53 = v52;
        }

        self->_rpiDuplicateAdvertisementTolerance = v53;
        v54 = CFDictionaryGetInt64Ranged();
        if (v113)
        {
          v55 = 300;
        }

        else
        {
          v55 = 60 * v54;
        }

        self->_forceAPWakeIntervalThreshold = v55;
        v56 = CFDictionaryGetInt64();
        if (v113)
        {
          v57 = 0;
        }

        else
        {
          v57 = v56 == 0;
        }

        v58 = !v57;
        self->_dynamicAlgorithmEnabled = v58;
        v59 = CFDictionaryGetInt64Ranged();
        if (v113)
        {
          v59 = 216.0;
        }

        self->_dynamicThrottleDownDuration = v59;
        v60 = CFDictionaryGetInt64Ranged();
        if (v113)
        {
          v61 = 6;
        }

        else
        {
          v61 = v60;
        }

        self->_dynamicThrottleDownAdvDensity = v61;
        v62 = CFDictionaryGetInt64Ranged();
        if (v113)
        {
          v63 = -55;
        }

        else
        {
          v63 = v62;
        }

        self->_dynamicThrottleDownRSSI = v63;
        v64 = 60 * CFDictionaryGetInt64Ranged();
        if (v113)
        {
          v65 = 54000;
        }

        else
        {
          v65 = v64;
        }

        self->_dynamicThrottleUpDuration = v65;
        v66 = CFDictionaryGetInt64Ranged();
        if (v113)
        {
          v67 = 20;
        }

        else
        {
          v67 = v66;
        }

        self->_dynamicThrottleUpAdvDensity = v67;
        v68 = CFDictionaryGetInt64Ranged();
        if (v113)
        {
          v68 = 300.0;
        }

        self->_osTriggeredAppRunInterval = v68;
        v69 = (60 * CFDictionaryGetInt64Ranged());
        if (v113)
        {
          v69 = 10800.0;
        }

        self->_regionTransitionGracePeriod = v69;
        v70 = (60 * CFDictionaryGetInt64Ranged());
        if (v113)
        {
          v70 = 86400.0;
        }

        self->_regionDisabledTransitionGracePeriod = v70;
        v71 = CFDictionaryGetInt64();
        if (v113)
        {
          v72 = 0;
        }

        else
        {
          v72 = v71 == 0;
        }

        v73 = !v72;
        self->_enableV1 = v73;
        v74 = CFDictionaryGetInt64Ranged();
        if (v113)
        {
          v75 = 6;
        }

        else
        {
          v75 = v74;
        }

        self->_detectExposureNKDLimit = v75;
        CFStringGetTypeID();
        v76 = CFDictionaryGetTypedValue();
        legalConsentVersion = self->_legalConsentVersion;
        self->_legalConsentVersion = v76;

        CFStringGetTypeID();
        v78 = CFDictionaryGetTypedValue();
        textMessagePublicKey = self->_textMessagePublicKey;
        self->_textMessagePublicKey = v78;

        CFStringGetTypeID();
        v80 = CFDictionaryGetTypedValue();
        textMessagePublicKeyVersion = self->_textMessagePublicKeyVersion;
        self->_textMessagePublicKeyVersion = v80;

        self->_isChaffingEnabled = CFDictionaryGetInt64() != 0;
        CFDictionaryGetDouble();
        self->_chaffingSelectionPercentage = v82;
        CFDictionaryGetDouble();
        self->_chaffingSelectionPercentageAlternative = v83;
        v84 = CFDictionaryGetInt64Ranged();
        if (v113)
        {
          v85 = 3;
        }

        else
        {
          v85 = v84;
        }

        self->_maximumChaffsAllowedPerDay = v85;
        v86 = CFDictionaryGetInt64Ranged();
        if (v113)
        {
          v87 = 90;
        }

        else
        {
          v87 = v86;
        }

        self->_selfReportTimeoutDays = v87;
        v110[0] = MEMORY[0x277D85DD0];
        v110[1] = 3221225472;
        v110[2] = __64__ENRegionServerConfiguration_initWithServerResponseDictionary___block_invoke;
        v110[3] = &unk_278A4B3B0;
        v111 = v15;
        v88 = self;
        v112 = v88;
        v89 = MEMORY[0x2383EE560](v110);
        CFStringGetTypeID();
        v90 = CFDictionaryGetTypedValue();
        phaTelemetryPublicCertificateChain = v88->_phaTelemetryPublicCertificateChain;
        v88->_phaTelemetryPublicCertificateChain = v90;

        CFStringGetTypeID();
        v92 = CFDictionaryGetTypedValue();
        phaTelemetryAppleCertificateChain = v88->_phaTelemetryAppleCertificateChain;
        v88->_phaTelemetryAppleCertificateChain = v92;

        CFStringGetTypeID();
        v94 = CFDictionaryGetTypedValue();
        phaTelemetryEndpoint = v88->_phaTelemetryEndpoint;
        v88->_phaTelemetryEndpoint = v94;

        CFStringGetTypeID();
        v96 = CFDictionaryGetTypedValue();
        partnerTelemetryPublicCertificateChain = v88->_partnerTelemetryPublicCertificateChain;
        v88->_partnerTelemetryPublicCertificateChain = v96;

        CFStringGetTypeID();
        v98 = CFDictionaryGetTypedValue();
        partnerTelemetryAppleCertificateChain = v88->_partnerTelemetryAppleCertificateChain;
        v88->_partnerTelemetryAppleCertificateChain = v98;

        CFStringGetTypeID();
        v100 = CFDictionaryGetTypedValue();
        partnerTelemetryEndpoint = v88->_partnerTelemetryEndpoint;
        v88->_partnerTelemetryEndpoint = v100;

        CFStringGetTypeID();
        v102 = CFDictionaryGetTypedValue();
        appleTelemetryEndpoint = v88->_appleTelemetryEndpoint;
        v88->_appleTelemetryEndpoint = v102;

        CFStringGetTypeID();
        v104 = CFDictionaryGetTypedValue();
        appleTelemetryEndpointCredentials = v88->_appleTelemetryEndpointCredentials;
        v88->_appleTelemetryEndpointCredentials = v104;

        v88->_telemetryAuthorization = CFDictionaryGetInt64() != 0;
        v106 = (v89)[2](v89, @"telemetryOptInMessage");
        phaTelemetryOptInMessage = v88->_phaTelemetryOptInMessage;
        v88->_phaTelemetryOptInMessage = v106;

        v108 = v88;
      }
    }

    else
    {
      v108 = 0;
    }
  }

  return v108;
}

id __64__ENRegionServerConfiguration_initWithServerResponseDictionary___block_invoke(uint64_t a1, void *a2)
{
  v36 = *MEMORY[0x277D85DE8];
  v28 = a2;
  v30 = [MEMORY[0x277CBEB18] array];
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v27 = a1;
  v3 = [*(a1 + 32) allKeys];
  v4 = [v3 countByEnumeratingWithState:&v31 objects:v35 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v32;
    v7 = @"agencyMessage";
    v29 = v3;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v32 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v9 = *(*(&v31 + 1) + 8 * i);
        if ([v9 hasPrefix:v7])
        {
          v10 = [v9 componentsSeparatedByString:@"_"];
          if ([v10 count] == 3)
          {
            v11 = MEMORY[0x277CCACA8];
            v12 = [v10 objectAtIndexedSubscript:1];
            v13 = [v12 lowercaseString];
            v14 = [v10 objectAtIndexedSubscript:2];
            [v14 uppercaseString];
            v15 = v5;
            v17 = v16 = v7;
            v18 = [v11 stringWithFormat:@"%@_%@", v13, v17];

            v7 = v16;
            v5 = v15;

            v3 = v29;
            [v30 addObject:v18];
          }
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v31 objects:v35 count:16];
    }

    while (v5);
  }

  v19 = [*(v27 + 40) preferredLocalizationsFromArray:v30];
  v20 = [v19 localeIdentifier];
  v21 = [v20 uppercaseString];

  v22 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"%@_%@", v28, v21];
  v23 = *(v27 + 32);
  CFStringGetTypeID();
  v24 = CFDictionaryGetTypedValue();

  v25 = *MEMORY[0x277D85DE8];

  return v24;
}

- (id)preferredLocalizationsFromArray:(id)a3
{
  v3 = a3;
  if (v3)
  {
    v4 = MEMORY[0x277CCA8D8];
    v5 = [MEMORY[0x277CBEAF8] preferredLanguages];
    v6 = [v4 preferredLocalizationsFromArray:v3 forPreferences:v5];
    v7 = [v6 firstObject];

    v8 = [MEMORY[0x277CBEAF8] localeWithLocaleIdentifier:v7];
  }

  else
  {
    v8 = [MEMORY[0x277CBEAF8] currentLocale];
  }

  return v8;
}

- (ENRegionServerConfiguration)initWithCoder:(id)a3
{
  v4 = a3;
  v50.receiver = self;
  v50.super_class = ENRegionServerConfiguration;
  v5 = [(ENRegionServerConfiguration *)&v50 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"enVersion"];
    v5->_enVersion = [v6 unsignedIntegerValue];

    v5->_enEnabled = [v4 decodeBoolForKey:@"enEnabled"];
    v51 = 0;
    if (NSDecodeSInt64RangedIfPresent())
    {
      v5->_featureFlags = v51;
    }

    v5->_associatedDomainsEnabled = [v4 decodeBoolForKey:@"enableAssociatedDomains"];
    v5->_textMessageVerificationEnabled = [v4 decodeBoolForKey:@"enableTextMessageVerification"];
    v5->_preArmTestVerificationEnabled = [v4 decodeBoolForKey:@"enablePreArmVerification"];
    v5->_variantOfConcernEnabled = [v4 decodeBoolForKey:@"variantOfConcernEnabled"];
    v7 = [v4 decodeBoolForKey:@"hasStateRegions"];
    v5->_hasSubdivisions = v7;
    if (v7)
    {
      v8 = [v4 decodeArrayOfObjectsOfClass:objc_opt_class() forKey:@"stateRegionConfigs"];
      subdivisions = v5->_subdivisions;
      v5->_subdivisions = v8;
    }

    [v4 decodeDoubleForKey:@"timeToResetAvailabilityAlert"];
    v5->_timeToResetAvailabilityAlert = v10;
    v5->_resetAvailabilityAlertForDeclinedUsers = [v4 decodeBoolForKey:@"resetAvailabilityAlertForDeclinedUsers"];
    v11 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"appBundleId"];
    objc_storeStrong(&v5->_appBundleID, v11);
    v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"region"];
    objc_storeStrong(&v5->_region, v12);
    v13 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"publicKey"];
    objc_storeStrong(&v5->_publicKey, v13);
    v14 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"publicKeyVersion"];
    objc_storeStrong(&v5->_publicKeyVersion, v14);
    [v4 decodeDoubleForKey:@"callbackInterval"];
    v5->_callbackInterval = v15;
    [v4 decodeDoubleForKey:@"applicationBackgroundRuntimeIntervalInHours"];
    v5->_applicationBackgroundRuntimeInterval = v16;
    [v4 decodeDoubleForKey:@"rpiAdvertisementToleranceInMinutes"];
    v5->_rpiAdvertisementTolerance = v17;
    [v4 decodeDoubleForKey:@"rpiDuplicateAdvertisementToleranceInMinutes"];
    v5->_rpiDuplicateAdvertisementTolerance = v18;
    v51 = 0;
    if (NSDecodeSInt64RangedIfPresent())
    {
      v5->_dailyDetectExposureLimit = v51;
    }

    v51 = 0;
    if (NSDecodeSInt64RangedIfPresent())
    {
      v5->_detectExposureNKDLimit = v51;
    }

    v51 = 0;
    if (NSDecodeSInt64RangedIfPresent())
    {
      v5->_numberOfAdvSamplesForRPIThreshold = v51;
    }

    [v4 decodeDoubleForKey:@"forceAPWakeIntervalInMinutesThreshold"];
    v5->_forceAPWakeIntervalThreshold = v19;
    v5->_dynamicAlgorithmEnabled = [v4 decodeBoolForKey:@"dynamicAlgorithmEnabled"];
    [v4 decodeDoubleForKey:@"dynamicThrottleDownDurationInSeconds"];
    v5->_dynamicThrottleDownDuration = v20;
    v51 = 0;
    if (NSDecodeSInt64RangedIfPresent())
    {
      v5->_dynamicThrottleDownAdvDensity = v51;
    }

    v51 = 0;
    if (NSDecodeSInt64RangedIfPresent())
    {
      v5->_dynamicThrottleDownRSSI = v51;
    }

    [v4 decodeDoubleForKey:@"dynamicThrottleUpDurationInMinutes"];
    v5->_dynamicThrottleUpDuration = v21;
    v51 = 0;
    if (NSDecodeSInt64RangedIfPresent())
    {
      v5->_dynamicThrottleUpAdvDensity = v51;
    }

    [v4 decodeDoubleForKey:@"osTriggeredAppRunTimeInSeconds"];
    v5->_osTriggeredAppRunInterval = v22;
    [v4 decodeDoubleForKey:@"regionTransitionGracePeriodInMinutes"];
    v5->_regionTransitionGracePeriod = v23;
    [v4 decodeDoubleForKey:@"regionDisabledTransitionGracePeriodMinutes"];
    v5->_regionDisabledTransitionGracePeriod = v24;
    v51 = 0;
    if (NSDecodeSInt64RangedIfPresent())
    {
      v5->_selfReportTimeoutDays = v51;
    }

    v5->_enableV1 = [v4 decodeBoolForKey:@"V1Enable"];
    v25 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"legalConsentVersion"];
    legalConsentVersion = v5->_legalConsentVersion;
    v5->_legalConsentVersion = v25;

    v27 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"textMessageVerificationPublicKey"];
    textMessagePublicKey = v5->_textMessagePublicKey;
    v5->_textMessagePublicKey = v27;

    v29 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"textMessageVerificationPublicKeyVersion"];
    textMessagePublicKeyVersion = v5->_textMessagePublicKeyVersion;
    v5->_textMessagePublicKeyVersion = v29;

    if ([v4 containsValueForKey:@"publicHealthAuthorityTelemetryPublicCertificateChain"])
    {
      v31 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"publicHealthAuthorityTelemetryPublicCertificateChain"];
      phaTelemetryPublicCertificateChain = v5->_phaTelemetryPublicCertificateChain;
      v5->_phaTelemetryPublicCertificateChain = v31;
    }

    if ([v4 containsValueForKey:@"publicHealthAuthorityTelemetryAppleCertificateChain"])
    {
      v33 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"publicHealthAuthorityTelemetryAppleCertificateChain"];
      phaTelemetryAppleCertificateChain = v5->_phaTelemetryAppleCertificateChain;
      v5->_phaTelemetryAppleCertificateChain = v33;
    }

    if ([v4 containsValueForKey:@"publicHealthAuthorityTelemetryEndpoint"])
    {
      v35 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"publicHealthAuthorityTelemetryEndpoint"];
      phaTelemetryEndpoint = v5->_phaTelemetryEndpoint;
      v5->_phaTelemetryEndpoint = v35;
    }

    if ([v4 containsValueForKey:@"telemetryOptInMessage"])
    {
      v37 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"telemetryOptInMessage"];
      phaTelemetryOptInMessage = v5->_phaTelemetryOptInMessage;
      v5->_phaTelemetryOptInMessage = v37;
    }

    if ([v4 containsValueForKey:@"partnerTelemetryPublicCertificateChain"])
    {
      v39 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"partnerTelemetryPublicCertificateChain"];
      partnerTelemetryPublicCertificateChain = v5->_partnerTelemetryPublicCertificateChain;
      v5->_partnerTelemetryPublicCertificateChain = v39;
    }

    if ([v4 containsValueForKey:@"partnerTelemetryAppleCertificateChain"])
    {
      v41 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"partnerTelemetryAppleCertificateChain"];
      partnerTelemetryAppleCertificateChain = v5->_partnerTelemetryAppleCertificateChain;
      v5->_partnerTelemetryAppleCertificateChain = v41;
    }

    if ([v4 containsValueForKey:@"partnerTelemetryEndpoint"])
    {
      v43 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"partnerTelemetryEndpoint"];
      partnerTelemetryEndpoint = v5->_partnerTelemetryEndpoint;
      v5->_partnerTelemetryEndpoint = v43;
    }

    if ([v4 containsValueForKey:@"appleTelemetryEndpoint"])
    {
      v45 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"appleTelemetryEndpoint"];
      appleTelemetryEndpoint = v5->_appleTelemetryEndpoint;
      v5->_appleTelemetryEndpoint = v45;
    }

    if ([v4 containsValueForKey:@"appleTelemetryEndpointCredentials"])
    {
      v47 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"appleTelemetryEndpointCredentials"];
      appleTelemetryEndpointCredentials = v5->_appleTelemetryEndpointCredentials;
      v5->_appleTelemetryEndpointCredentials = v47;
    }

    if ([v4 containsValueForKey:@"telemetryAuthorization"])
    {
      v5->_telemetryAuthorization = [v4 decodeBoolForKey:@"telemetryAuthorization"];
    }
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v30 = a3;
  v4 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:self->_enVersion];
  [v30 encodeObject:v4 forKey:@"enVersion"];

  [v30 encodeBool:self->_enEnabled forKey:@"enEnabled"];
  featureFlags = self->_featureFlags;
  if (featureFlags)
  {
    [v30 encodeInt64:featureFlags forKey:@"flags"];
  }

  [v30 encodeBool:self->_associatedDomainsEnabled forKey:@"enableAssociatedDomains"];
  [v30 encodeBool:self->_textMessageVerificationEnabled forKey:@"enableTextMessageVerification"];
  [v30 encodeBool:self->_preArmTestVerificationEnabled forKey:@"enablePreArmVerification"];
  [v30 encodeBool:self->_variantOfConcernEnabled forKey:@"variantOfConcernEnabled"];
  [v30 encodeBool:self->_hasSubdivisions forKey:@"hasStateRegions"];
  [v30 encodeObject:self->_subdivisions forKey:@"stateRegionConfigs"];
  [v30 encodeDouble:@"timeToResetAvailabilityAlert" forKey:self->_timeToResetAvailabilityAlert];
  [v30 encodeBool:self->_resetAvailabilityAlertForDeclinedUsers forKey:@"resetAvailabilityAlertForDeclinedUsers"];
  [v30 encodeObject:self->_region forKey:@"region"];
  [v30 encodeObject:self->_appBundleID forKey:@"appBundleId"];
  [v30 encodeObject:self->_publicKey forKey:@"publicKey"];
  [v30 encodeObject:self->_publicKeyVersion forKey:@"publicKeyVersion"];
  [v30 encodeObject:self->_textMessagePublicKey forKey:@"textMessageVerificationPublicKey"];
  [v30 encodeObject:self->_textMessagePublicKeyVersion forKey:@"textMessageVerificationPublicKeyVersion"];
  [v30 encodeDouble:@"callbackInterval" forKey:self->_callbackInterval];
  [v30 encodeDouble:@"applicationBackgroundRuntimeIntervalInHours" forKey:self->_applicationBackgroundRuntimeInterval];
  [v30 encodeDouble:@"rpiAdvertisementToleranceInMinutes" forKey:self->_rpiAdvertisementTolerance];
  [v30 encodeDouble:@"rpiDuplicateAdvertisementToleranceInMinutes" forKey:self->_rpiDuplicateAdvertisementTolerance];
  dailyDetectExposureLimit = self->_dailyDetectExposureLimit;
  if (dailyDetectExposureLimit)
  {
    [v30 encodeInt64:dailyDetectExposureLimit forKey:@"detectExposureDailyLimit"];
  }

  detectExposureNKDLimit = self->_detectExposureNKDLimit;
  if (detectExposureNKDLimit)
  {
    [v30 encodeInt64:detectExposureNKDLimit forKey:@"detectExposureNKDLimit"];
  }

  numberOfAdvSamplesForRPIThreshold = self->_numberOfAdvSamplesForRPIThreshold;
  v9 = v30;
  if (numberOfAdvSamplesForRPIThreshold)
  {
    [v30 encodeInt64:numberOfAdvSamplesForRPIThreshold forKey:@"numberOfAdvSamplesForRPIThreshold"];
    v9 = v30;
  }

  [v9 encodeDouble:@"forceAPWakeIntervalInMinutesThreshold" forKey:self->_forceAPWakeIntervalThreshold];
  [v30 encodeBool:self->_dynamicAlgorithmEnabled forKey:@"dynamicAlgorithmEnabled"];
  [v30 encodeDouble:@"dynamicThrottleDownDurationInSeconds" forKey:self->_dynamicThrottleDownDuration];
  dynamicThrottleDownAdvDensity = self->_dynamicThrottleDownAdvDensity;
  if (dynamicThrottleDownAdvDensity)
  {
    [v30 encodeInt64:dynamicThrottleDownAdvDensity forKey:@"dynamicThrottleDownAdvDensity"];
  }

  if (self->_dynamicThrottleDownRSSI)
  {
    [v30 encodeInteger:? forKey:?];
  }

  [v30 encodeDouble:@"dynamicThrottleUpDurationInMinutes" forKey:self->_dynamicThrottleUpDuration];
  dynamicThrottleUpAdvDensity = self->_dynamicThrottleUpAdvDensity;
  if (dynamicThrottleUpAdvDensity)
  {
    [v30 encodeInt64:dynamicThrottleUpAdvDensity forKey:@"dynamicThrottleUpAdvDensity"];
  }

  [v30 encodeDouble:@"osTriggeredAppRunTimeInSeconds" forKey:self->_osTriggeredAppRunInterval];
  [v30 encodeDouble:@"regionTransitionGracePeriodInMinutes" forKey:self->_regionTransitionGracePeriod];
  [v30 encodeDouble:@"regionDisabledTransitionGracePeriodMinutes" forKey:self->_regionDisabledTransitionGracePeriod];
  if (self->_selfReportTimeoutDays)
  {
    [v30 encodeInteger:? forKey:?];
  }

  [v30 encodeBool:self->_enableV1 forKey:@"V1Enable"];
  [v30 encodeObject:self->_legalConsentVersion forKey:@"legalConsentVersion"];
  v12 = [(ENRegionServerConfiguration *)self phaTelemetryPublicCertificateChain];

  if (v12)
  {
    v13 = [(ENRegionServerConfiguration *)self phaTelemetryPublicCertificateChain];
    [v30 encodeObject:v13 forKey:@"publicHealthAuthorityTelemetryPublicCertificateChain"];
  }

  v14 = [(ENRegionServerConfiguration *)self phaTelemetryAppleCertificateChain];

  if (v14)
  {
    v15 = [(ENRegionServerConfiguration *)self phaTelemetryAppleCertificateChain];
    [v30 encodeObject:v15 forKey:@"publicHealthAuthorityTelemetryAppleCertificateChain"];
  }

  v16 = [(ENRegionServerConfiguration *)self phaTelemetryEndpoint];

  if (v16)
  {
    v17 = [(ENRegionServerConfiguration *)self phaTelemetryEndpoint];
    [v30 encodeObject:v17 forKey:@"publicHealthAuthorityTelemetryEndpoint"];
  }

  v18 = [(ENRegionServerConfiguration *)self phaTelemetryOptInMessage];

  if (v18)
  {
    v19 = [(ENRegionServerConfiguration *)self phaTelemetryOptInMessage];
    [v30 encodeObject:v19 forKey:@"telemetryOptInMessage"];
  }

  v20 = [(ENRegionServerConfiguration *)self partnerTelemetryPublicCertificateChain];

  if (v20)
  {
    v21 = [(ENRegionServerConfiguration *)self partnerTelemetryPublicCertificateChain];
    [v30 encodeObject:v21 forKey:@"partnerTelemetryPublicCertificateChain"];
  }

  v22 = [(ENRegionServerConfiguration *)self partnerTelemetryAppleCertificateChain];

  if (v22)
  {
    v23 = [(ENRegionServerConfiguration *)self partnerTelemetryAppleCertificateChain];
    [v30 encodeObject:v23 forKey:@"partnerTelemetryAppleCertificateChain"];
  }

  v24 = [(ENRegionServerConfiguration *)self partnerTelemetryEndpoint];

  if (v24)
  {
    v25 = [(ENRegionServerConfiguration *)self partnerTelemetryEndpoint];
    [v30 encodeObject:v25 forKey:@"partnerTelemetryEndpoint"];
  }

  v26 = [(ENRegionServerConfiguration *)self appleTelemetryEndpoint];

  if (v26)
  {
    v27 = [(ENRegionServerConfiguration *)self appleTelemetryEndpoint];
    [v30 encodeObject:v27 forKey:@"appleTelemetryEndpoint"];
  }

  v28 = [(ENRegionServerConfiguration *)self appleTelemetryEndpointCredentials];

  if (v28)
  {
    v29 = [(ENRegionServerConfiguration *)self appleTelemetryEndpointCredentials];
    [v30 encodeObject:v29 forKey:@"appleTelemetryEndpointCredentials"];
  }

  [v30 encodeBool:-[ENRegionServerConfiguration telemetryAuthorization](self forKey:{"telemetryAuthorization"), @"telemetryAuthorization"}];
}

@end