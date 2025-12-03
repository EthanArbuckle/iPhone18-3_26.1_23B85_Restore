@interface AMSDevice
+ (AMSBagKeySet)bagKeySet;
+ (BOOL)_deviceIsBundleWithMobileActivationFlag:(BOOL)flag storage:(id)storage canHonorLasset:(BOOL)lasset defaultsFlag:(BOOL)defaultsFlag;
+ (BOOL)_setRawDeviceOffers:(id)offers offersStore:(id)store;
+ (BOOL)_shouldPostOffersUpdatedNotification:(id)notification oldOffers:(id)offers;
+ (BOOL)deviceIsBundle;
+ (BOOL)deviceIsChinaSKU;
+ (BOOL)deviceIsPersistentAirPlayEnabled;
+ (BOOL)deviceOffersContainType:(unint64_t)type;
+ (BOOL)expressedIntent;
+ (BOOL)isEligibleForOffers;
+ (BOOL)isGift;
+ (BOOL)isRunningInStoreDemoMode;
+ (BOOL)isSecureElementAvailable;
+ (BOOL)isWalletBiometricsEnabled;
+ (BOOL)postAllDeviceOfferFollowUpsForAccount:(id)account priority:(int64_t)priority bag:(id)bag logKey:(id)key;
+ (BOOL)postAllDeviceOfferFollowUpsForAccount:(id)account priority:(int64_t)priority bagContract:(id)contract logKey:(id)key;
+ (BOOL)postDeviceOfferFollowUpWithIdentifier:(id)identifier account:(id)account priority:(int64_t)priority bag:(id)bag logKey:(id)key;
+ (BOOL)postDeviceOfferFollowUpWithIdentifier:(id)identifier account:(id)account priority:(int64_t)priority bagContract:(id)contract logKey:(id)key;
+ (BOOL)saveDeviceOffersForAccount:(id)account response:(id)response logKey:(id)key;
+ (BOOL)shouldPresentSetupOffersForAccount:(id)account issues:(int64_t *)issues;
+ (BOOL)tearDownAllDeviceOfferFollowUpsForAccount:(id)account logKey:(id)key;
+ (BOOL)tearDownDeviceOfferFollowUpWithIdentifier:(id)identifier account:(id)account logKey:(id)key;
+ (NSArray)carrierNames;
+ (NSData)macAddressData;
+ (NSNumber)screenHeight;
+ (NSNumber)screenScale;
+ (NSNumber)screenWidth;
+ (NSSet)deviceOffers;
+ (NSString)bagSubProfile;
+ (NSString)bagSubProfileVersion;
+ (NSString)buildVersion;
+ (NSString)compatibleProductType;
+ (NSString)deviceName;
+ (NSString)hardwareFamily;
+ (NSString)hardwarePlatform;
+ (NSString)language;
+ (NSString)localIPAddress;
+ (NSString)macAddress;
+ (NSString)modelPartNumber;
+ (NSString)name;
+ (NSString)phoneNumber;
+ (NSString)productType;
+ (NSString)productVersion;
+ (NSString)regionCode;
+ (NSString)regionIdentifier;
+ (NSString)secureElementID;
+ (NSString)serialNumber;
+ (NSString)thinnedAppVariantId;
+ (NSString)uniqueDeviceId;
+ (id)_followUpItemWithIdentifier:(id)identifier account:(id)account priority:(int64_t)priority bag:(id)bag;
+ (id)_mgStringForCFKey:(__CFString *)key;
+ (id)_voicePreferredPhoneNumberContext;
+ (id)cachedRegistrationGroups;
+ (id)carrierNamesPromise;
+ (id)createBagForSubProfile;
+ (id)deviceOffersForType:(unint64_t)type;
+ (id)registrationDenyList;
+ (id)voicePreferredPACToken;
+ (unint64_t)buildVariant;
+ (void)_performAuth;
+ (void)_setDeviceEligibilityKeepingExistingDeviceOffers:(id)offers offersStore:(id)store;
+ (void)clearRegistrationDenyList;
+ (void)registerCompanionWithSerialNumber:(id)number;
+ (void)registerCompanionWithSerialNumber:(id)number bag:(id)bag;
+ (void)removeDeviceOfferRegistrationItem:(id)item;
+ (void)removeDeviceOfferWithIdentifier:(id)identifier account:(id)account bag:(id)bag logKey:(id)key;
+ (void)removeDeviceOfferWithIdentifier:(id)identifier account:(id)account bagContract:(id)contract logKey:(id)key;
+ (void)saveDeviceOfferEligibility:(id)eligibility;
+ (void)saveDeviceOffers:(id)offers;
+ (void)setDeviceOffersCheckEncodingForRequestParameters:(id)parameters;
@end

@implementation AMSDevice

+ (NSString)productVersion
{
  processInfo = [MEMORY[0x1E696AE30] processInfo];
  v3 = processInfo;
  if (processInfo)
  {
    [processInfo operatingSystemVersion];
  }

  v4 = [objc_alloc(MEMORY[0x1E696AD60]) initWithFormat:@"%ld.%ld", 0, 0];

  return v4;
}

+ (NSString)buildVersion
{
  v14 = *MEMORY[0x1E69E9840];
  v2 = MGCopyAnswerWithError();
  if (!v2)
  {
    v3 = +[AMSLogConfig sharedConfig];
    if (!v3)
    {
      v3 = +[AMSLogConfig sharedConfig];
    }

    oSLogObject = [v3 OSLogObject];
    if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_ERROR))
    {
      v5 = objc_opt_class();
      v6 = AMSLogKey();
      *buf = 138543874;
      v9 = v5;
      v10 = 2114;
      v11 = v6;
      v12 = 1026;
      v13 = 0;
      _os_log_impl(&dword_192869000, oSLogObject, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] Failed to obtain build version: %{public}d", buf, 0x1Cu);
    }

    v2 = @"1A0";
  }

  return v2;
}

+ (NSString)productType
{
  v14 = *MEMORY[0x1E69E9840];
  v2 = MGCopyAnswerWithError();
  if (!v2)
  {
    v3 = +[AMSLogConfig sharedConfig];
    if (!v3)
    {
      v3 = +[AMSLogConfig sharedConfig];
    }

    oSLogObject = [v3 OSLogObject];
    if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_ERROR))
    {
      v5 = objc_opt_class();
      v6 = AMSLogKey();
      *buf = 138543874;
      v9 = v5;
      v10 = 2114;
      v11 = v6;
      v12 = 1026;
      v13 = 0;
      _os_log_impl(&dword_192869000, oSLogObject, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] Failed to obtain product type: %{public}d", buf, 0x1Cu);
    }
  }

  return v2;
}

+ (NSString)hardwarePlatform
{
  v14 = *MEMORY[0x1E69E9840];
  v2 = MGCopyAnswerWithError();
  if (!v2)
  {
    v3 = +[AMSLogConfig sharedConfig];
    if (!v3)
    {
      v3 = +[AMSLogConfig sharedConfig];
    }

    oSLogObject = [v3 OSLogObject];
    if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_ERROR))
    {
      v5 = objc_opt_class();
      v6 = AMSLogKey();
      *buf = 138543874;
      v9 = v5;
      v10 = 2114;
      v11 = v6;
      v12 = 1026;
      v13 = 0;
      _os_log_impl(&dword_192869000, oSLogObject, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] Failed to obtain hardware platform: %{public}d", buf, 0x1Cu);
    }
  }

  return v2;
}

+ (AMSBagKeySet)bagKeySet
{
  v2 = objc_alloc_init(AMSBagKeySet);

  return v2;
}

+ (BOOL)isRunningInStoreDemoMode
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2050000000;
  v2 = qword_1ED6E28D0;
  v9 = qword_1ED6E28D0;
  if (!qword_1ED6E28D0)
  {
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __getUIApplicationClass_block_invoke;
    v5[3] = &unk_1E73B3880;
    v5[4] = &v6;
    __getUIApplicationClass_block_invoke(v5);
    v2 = v7[3];
  }

  v3 = v2;
  _Block_object_dispose(&v6, 8);
  return [v2 isRunningInStoreDemoMode];
}

+ (NSString)language
{
  if (!+[AMSDevice deviceIsAudioAccessory](AMSDevice, "deviceIsAudioAccessory") || ([MEMORY[0x1E695E000] standardUserDefaults], v2 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v2, "objectForKey:", @"AppleLanguageCodeSetup"), v3 = objc_claimAutoreleasedReturnValue(), v2, !v3))
  {
    _deviceLanguage = [MEMORY[0x1E695DF58] _deviceLanguage];
    if (_deviceLanguage)
    {
      v3 = _deviceLanguage;
    }

    else
    {
      v3 = @"en";
    }
  }

  return v3;
}

+ (NSString)hardwareFamily
{
  v14 = *MEMORY[0x1E69E9840];
  v2 = MGCopyAnswerWithError();
  if (!v2)
  {
    v3 = +[AMSLogConfig sharedConfig];
    if (!v3)
    {
      v3 = +[AMSLogConfig sharedConfig];
    }

    oSLogObject = [v3 OSLogObject];
    if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_ERROR))
    {
      v5 = objc_opt_class();
      v6 = AMSLogKey();
      *buf = 138543874;
      v9 = v5;
      v10 = 2114;
      v11 = v6;
      v12 = 1026;
      v13 = 0;
      _os_log_impl(&dword_192869000, oSLogObject, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] Failed to obtain hardware family: %{public}d", buf, 0x1Cu);
    }
  }

  return v2;
}

+ (NSString)localIPAddress
{
  v8 = 0;
  v2 = 0;
  if (!getifaddrs(&v8))
  {
    v3 = v8;
    if (v8)
    {
      while (1)
      {
        if (v3->ifa_addr->sa_family == 2)
        {
          v4 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v3->ifa_name];
          v5 = [v4 isEqualToString:@"en0"];

          if (v5)
          {
            break;
          }
        }

        v3 = v3->ifa_next;
        if (!v3)
        {
          v2 = 0;
          goto LABEL_8;
        }
      }

      v6.s_addr = *&v3->ifa_addr->sa_data[2];
      v2 = [MEMORY[0x1E696AEC0] stringWithUTF8String:inet_ntoa(v6)];
    }
  }

LABEL_8:
  MEMORY[0x193B12EF0](v8);

  return v2;
}

void __25__AMSDevice_buildVariant__block_invoke()
{
  if (os_variant_has_internal_content())
  {
    v4 = [objc_alloc(MEMORY[0x1E695E000]) initWithSuiteName:@"com.apple.da"];
    v0 = [v4 stringForKey:@"ExperimentGroup"];
    v1 = v0;
    if (v0)
    {
      if ([v0 isEqual:@"carry"])
      {
        v2 = 3;
      }

      else
      {
        v3 = [v1 isEqual:@"walkabout"];
        v2 = 2;
        if (v3)
        {
          v2 = 3;
        }
      }
    }

    else
    {
      v2 = 1;
    }

    qword_1ED6E28B8 = v2;
  }
}

+ (unint64_t)buildVariant
{
  if (qword_1ED6E28C0 != -1)
  {
    dispatch_once(&qword_1ED6E28C0, &__block_literal_global_39);
  }

  return qword_1ED6E28B8;
}

+ (NSString)uniqueDeviceId
{
  v19 = *MEMORY[0x1E69E9840];
  v2 = MGCopyAnswerWithError();
  if (v2)
  {
    v3 = v2;
    v4 = CFGetTypeID(v2);
    if (v4 == CFStringGetTypeID())
    {
      if (!+[AMSDevice deviceIsAppleTV])
      {
        uppercaseString = v3;
        CFRelease(uppercaseString);
        goto LABEL_17;
      }

      uppercaseString = [v3 uppercaseString];
      CFRelease(v3);
      if (uppercaseString)
      {
        goto LABEL_17;
      }
    }

    else
    {
      CFRelease(v3);
    }
  }

  else
  {
    v6 = +[AMSLogConfig sharedConfig];
    if (!v6)
    {
      v6 = +[AMSLogConfig sharedConfig];
    }

    oSLogObject = [v6 OSLogObject];
    if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_ERROR))
    {
      v8 = objc_opt_class();
      v9 = AMSLogKey();
      *buf = 138543874;
      v14 = v8;
      v15 = 2114;
      v16 = v9;
      v17 = 1026;
      v18 = 0;
      _os_log_impl(&dword_192869000, oSLogObject, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] Failed to obtain unique device identifier: %{public}d", buf, 0x1Cu);
    }
  }

  v10 = +[AMSLogConfig sharedConfig];
  if (!v10)
  {
    v10 = +[AMSLogConfig sharedConfig];
  }

  oSLogObject2 = [v10 OSLogObject];
  if (os_log_type_enabled(oSLogObject2, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_impl(&dword_192869000, oSLogObject2, OS_LOG_TYPE_ERROR, "AMSDevice: Failed to obtain UUID.", buf, 2u);
  }

  uppercaseString = objc_alloc_init(MEMORY[0x1E696AEC0]);
LABEL_17:

  return uppercaseString;
}

+ (NSString)regionIdentifier
{
  currentLocale = [MEMORY[0x1E695DF58] currentLocale];
  regionCode = [currentLocale regionCode];

  return regionCode;
}

+ (NSSet)deviceOffers
{
  v2 = +[AMSDefaults deviceOfferEligibility];
  v3 = [v2 objectForKeyedSubscript:@"deviceOffers"];
  if ([v3 count])
  {
    v4 = [AMSDeviceOffer offersSetFromArray:v3];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

+ (BOOL)expressedIntent
{
  v2 = +[AMSDefaults deviceOfferEligibility];
  v3 = v2;
  if (v2)
  {
    v4 = [v2 objectForKeyedSubscript:@"expressedIntent"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      bOOLValue = [v4 BOOLValue];
    }

    else
    {
      bOOLValue = 0;
    }
  }

  else
  {
    bOOLValue = 0;
  }

  return bOOLValue;
}

+ (BOOL)isEligibleForOffers
{
  v2 = +[AMSDefaults deviceOfferEligibility];
  v3 = v2;
  if (v2)
  {
    v4 = [v2 objectForKeyedSubscript:@"isDeviceEligible"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      bOOLValue = [v4 BOOLValue];
    }

    else
    {
      bOOLValue = 0;
    }
  }

  else
  {
    bOOLValue = 0;
  }

  return bOOLValue;
}

+ (BOOL)isGift
{
  v2 = +[AMSDefaults deviceOfferEligibility];
  v3 = v2;
  if (v2)
  {
    v4 = [v2 objectForKeyedSubscript:@"isGift"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      bOOLValue = [v4 BOOLValue];
    }

    else
    {
      bOOLValue = 0;
    }
  }

  else
  {
    bOOLValue = 0;
  }

  return bOOLValue;
}

+ (void)clearRegistrationDenyList
{
  v2 = objc_alloc_init(AMSDeviceOffersStore);
  [(AMSDeviceOffersStore *)v2 setDeviceRegistrationDenyList:0];

  v3 = +[AMSLogConfig sharedConfig];
  if (!v3)
  {
    v3 = +[AMSLogConfig sharedConfig];
  }

  oSLogObject = [v3 OSLogObject];
  if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&dword_192869000, oSLogObject, OS_LOG_TYPE_DEFAULT, "AMSDevice+Offers: Cleared the device S/N denylist.", v5, 2u);
  }
}

+ (BOOL)deviceOffersContainType:(unint64_t)type
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v10 = 0;
  v4 = +[AMSDevice deviceOffers];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __45__AMSDevice_Offers__deviceOffersContainType___block_invoke;
  v6[3] = &unk_1E73B6AD8;
  v6[4] = &v7;
  v6[5] = type;
  [v4 enumerateObjectsUsingBlock:v6];

  LOBYTE(type) = *(v8 + 24);
  _Block_object_dispose(&v7, 8);
  return type;
}

uint64_t __45__AMSDevice_Offers__deviceOffersContainType___block_invoke(uint64_t a1, void *a2, _BYTE *a3)
{
  result = [a2 offerType];
  if (result == *(a1 + 40))
  {
    *(*(*(a1 + 32) + 8) + 24) = 1;
    *a3 = 1;
  }

  return result;
}

+ (id)deviceOffersForType:(unint64_t)type
{
  v21 = *MEMORY[0x1E69E9840];
  v4 = +[AMSDevice deviceOffers];
  v5 = [v4 count];

  if (v5)
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    v7 = +[AMSDevice deviceOffers];
    v13 = MEMORY[0x1E69E9820];
    v14 = 3221225472;
    v15 = __41__AMSDevice_Offers__deviceOffersForType___block_invoke;
    v16 = &unk_1E73B6B00;
    v17 = v6;
    typeCopy = type;
    v8 = v6;
    [v7 enumerateObjectsUsingBlock:&v13];

    v9 = [MEMORY[0x1E695DFD8] setWithSet:{v8, v13, v14, v15, v16}];
    oSLogObject = v17;
  }

  else
  {
    v8 = +[AMSLogConfig sharedConfig];
    if (!v8)
    {
      v8 = +[AMSLogConfig sharedConfig];
    }

    oSLogObject = [v8 OSLogObject];
    if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEFAULT))
    {
      v11 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:type];
      *buf = 138412290;
      v20 = v11;
      _os_log_impl(&dword_192869000, oSLogObject, OS_LOG_TYPE_DEFAULT, "AMSDevice+Offers: Failed to find device offers of type: %@", buf, 0xCu);
    }

    v9 = 0;
  }

  return v9;
}

void __41__AMSDevice_Offers__deviceOffersForType___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 offerType] == *(a1 + 40))
  {
    [*(a1 + 32) addObject:v3];
  }
}

+ (BOOL)postAllDeviceOfferFollowUpsForAccount:(id)account priority:(int64_t)priority bag:(id)bag logKey:(id)key
{
  v53 = *MEMORY[0x1E69E9840];
  accountCopy = account;
  bagCopy = bag;
  keyCopy = key;
  v11 = +[AMSLogConfig sharedConfig];
  if (!v11)
  {
    v11 = +[AMSLogConfig sharedConfig];
  }

  oSLogObject = [v11 OSLogObject];
  if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEFAULT))
  {
    v13 = AMSLogKey();
    hashedDescription = [accountCopy hashedDescription];
    *buf = 138543618;
    v46 = v13;
    v47 = 2114;
    v48 = hashedDescription;
    _os_log_impl(&dword_192869000, oSLogObject, OS_LOG_TYPE_DEFAULT, "AMSDevice+Offers: [%{public}@] Posting all follow ups for account: %{public}@", buf, 0x16u);
  }

  v15 = +[AMSDevice deviceOffers];
  v16 = [v15 count];
  if (v16)
  {
    v17 = v16;
    v43 = keyCopy;
    v44 = bagCopy;
    v18 = [v15 ams_filterUsingTest:&__block_literal_global_38];
    v19 = [v18 count];
    oSLogObject4 = [v15 ams_filterUsingTest:&__block_literal_global_29];
    v21 = [oSLogObject4 count];
    v22 = +[AMSLogConfig sharedConfig];
    if (!v22)
    {
      v22 = +[AMSLogConfig sharedConfig];
    }

    oSLogObject2 = [v22 OSLogObject];
    if (os_log_type_enabled(oSLogObject2, OS_LOG_TYPE_DEFAULT))
    {
      AMSLogKey();
      v41 = v15;
      v24 = v42 = v18;
      v25 = oSLogObject4;
      v26 = accountCopy;
      v27 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v17];
      v28 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v19];
      v29 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v21];
      *buf = 138544130;
      v46 = v24;
      v47 = 2114;
      v48 = v27;
      v49 = 2114;
      v50 = v28;
      v51 = 2114;
      v52 = v29;
      _os_log_impl(&dword_192869000, oSLogObject2, OS_LOG_TYPE_DEFAULT, "AMSDevice+Offers: [%{public}@] Offers count - Total: %{public}@, iCloud: %{public}@, Apple Music: %{public}@", buf, 0x2Au);

      accountCopy = v26;
      oSLogObject4 = v25;
      v15 = v41;

      v18 = v42;
    }

    if (v19 && v21)
    {
      v30 = +[AMSLogConfig sharedAccountsAuthenticationPluginConfig];
      if (!v30)
      {
        v30 = +[AMSLogConfig sharedConfig];
      }

      oSLogObject3 = [v30 OSLogObject];
      if (os_log_type_enabled(oSLogObject3, OS_LOG_TYPE_DEFAULT))
      {
        v32 = AMSLogKey();
        *buf = 138543362;
        v46 = v32;
        _os_log_impl(&dword_192869000, oSLogObject3, OS_LOG_TYPE_DEFAULT, "AMSDevice+Offers: [%{public}@] Posting unified followup for iCloud and Apple Music", buf, 0xCu);
      }

      v33 = &AMSDeviceOfferFollowUpIdentifierAppleMusicAndiCloud;
    }

    else if (v19)
    {
      v30 = +[AMSLogConfig sharedAccountsAuthenticationPluginConfig];
      if (!v30)
      {
        v30 = +[AMSLogConfig sharedConfig];
      }

      oSLogObject3 = [v30 OSLogObject];
      if (os_log_type_enabled(oSLogObject3, OS_LOG_TYPE_DEFAULT))
      {
        v36 = AMSLogKey();
        v37 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(v18, "count")}];
        *buf = 138543618;
        v46 = v36;
        v47 = 2114;
        v48 = v37;
        _os_log_impl(&dword_192869000, oSLogObject3, OS_LOG_TYPE_DEFAULT, "AMSDevice+Offers: [%{public}@] Found %{public}@ iCloud offers, posting follow-up", buf, 0x16u);
      }

      v33 = &AMSDeviceOfferFollowUpIdentifieriCloud;
    }

    else
    {
      if (!v21)
      {
        v35 = 0;
        keyCopy = v43;
        bagCopy = v44;
        goto LABEL_35;
      }

      v30 = +[AMSLogConfig sharedAccountsAuthenticationPluginConfig];
      if (!v30)
      {
        v30 = +[AMSLogConfig sharedConfig];
      }

      oSLogObject3 = [v30 OSLogObject];
      if (os_log_type_enabled(oSLogObject3, OS_LOG_TYPE_DEFAULT))
      {
        v38 = AMSLogKey();
        v39 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[NSObject count](oSLogObject4, "count")}];
        *buf = 138543618;
        v46 = v38;
        v47 = 2114;
        v48 = v39;
        _os_log_impl(&dword_192869000, oSLogObject3, OS_LOG_TYPE_DEFAULT, "AMSDevice+Offers: [%{public}@] Found %{public}@ AppleMusic offers, posting follow-up", buf, 0x16u);
      }

      v33 = &AMSDeviceOfferFollowUpIdentifierAppleMusic;
    }

    keyCopy = v43;
    bagCopy = v44;
    v35 = [AMSDevice postDeviceOfferFollowUpWithIdentifier:*v33 account:accountCopy priority:0 bag:v44 logKey:v43];
  }

  else
  {
    v18 = +[AMSLogConfig sharedConfig];
    if (!v18)
    {
      v18 = +[AMSLogConfig sharedConfig];
    }

    oSLogObject4 = [v18 OSLogObject];
    if (os_log_type_enabled(oSLogObject4, OS_LOG_TYPE_DEFAULT))
    {
      v34 = AMSLogKey();
      *buf = 138543362;
      v46 = v34;
      _os_log_impl(&dword_192869000, oSLogObject4, OS_LOG_TYPE_DEFAULT, "AMSDevice+Offers: [%{public}@] No offers were found for which to post follow-up(s)", buf, 0xCu);
    }

    v35 = 0;
  }

LABEL_35:

  return v35;
}

+ (BOOL)postDeviceOfferFollowUpWithIdentifier:(id)identifier account:(id)account priority:(int64_t)priority bag:(id)bag logKey:(id)key
{
  v39 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  accountCopy = account;
  bagCopy = bag;
  ams_DSID = [accountCopy ams_DSID];

  if (ams_DSID)
  {
    oSLogObject2 = objc_alloc_init(AMSFollowUp);
    v31 = bagCopy;
    v15 = [AMSDevice _followUpItemWithIdentifier:identifierCopy account:accountCopy priority:priority bag:bagCopy];
    v16 = AMSLogKey();
    [v15 setLogKey:v16];

    v17 = [(AMSFollowUp *)oSLogObject2 postFollowUpItem:v15];
    v32 = 0;
    v18 = [v17 resultWithTimeout:&v32 error:5.0];
    v19 = v32;
    v20 = v19 == 0;
    v21 = +[AMSLogConfig sharedConfig];
    v22 = v21;
    if (v19)
    {
      if (!v21)
      {
        v22 = +[AMSLogConfig sharedConfig];
      }

      oSLogObject = [v22 OSLogObject];
      if (!os_log_type_enabled(oSLogObject, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_17;
      }

      v24 = AMSLogKey();
      *buf = 138543874;
      v34 = v24;
      v35 = 2114;
      v36 = identifierCopy;
      v37 = 2114;
      v38 = v19;
      v25 = "AMSDevice+Offers: [%{public}@] Failed to post follow up with identifier: %{public}@, error: %{public}@";
      v26 = oSLogObject;
      v27 = OS_LOG_TYPE_ERROR;
      v28 = 32;
    }

    else
    {
      if (!v21)
      {
        v22 = +[AMSLogConfig sharedConfig];
      }

      oSLogObject = [v22 OSLogObject];
      if (!os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEBUG))
      {
        goto LABEL_17;
      }

      v24 = AMSLogKey();
      *buf = 138543618;
      v34 = v24;
      v35 = 2114;
      v36 = identifierCopy;
      v25 = "AMSDevice+Offers: [%{public}@] Posted follow up with identifier: %{public}@";
      v26 = oSLogObject;
      v27 = OS_LOG_TYPE_DEBUG;
      v28 = 22;
    }

    _os_log_impl(&dword_192869000, v26, v27, v25, buf, v28);

LABEL_17:
    bagCopy = v31;
    goto LABEL_18;
  }

  v19 = +[AMSLogConfig sharedConfig];
  if (!v19)
  {
    v19 = +[AMSLogConfig sharedConfig];
  }

  oSLogObject2 = [v19 OSLogObject];
  if (os_log_type_enabled(&oSLogObject2->super, OS_LOG_TYPE_INFO))
  {
    v29 = AMSLogKey();
    *buf = 138543362;
    v34 = v29;
    _os_log_impl(&dword_192869000, &oSLogObject2->super, OS_LOG_TYPE_INFO, "AMSDevice+Offers: [%{public}@] Failed to post device offer for account with <nil> DSID", buf, 0xCu);
  }

  v20 = 0;
LABEL_18:

  return v20;
}

+ (void)registerCompanionWithSerialNumber:(id)number bag:(id)bag
{
  v31 = *MEMORY[0x1E69E9840];
  numberCopy = number;
  bagCopy = bag;
  v7 = +[AMSLogConfig sharedConfig];
  if (!v7)
  {
    v7 = +[AMSLogConfig sharedConfig];
  }

  oSLogObject = [v7 OSLogObject];
  if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v30 = numberCopy;
    _os_log_impl(&dword_192869000, oSLogObject, OS_LOG_TYPE_DEFAULT, "AMSDevice+Offers: Attempting to register companion serial number: %@", buf, 0xCu);
  }

  if (numberCopy)
  {
    v9 = +[AMSDefaults deviceOfferEligibility];
    v10 = [v9 mutableCopy];

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v11 = v10;
    }

    else
    {
      v11 = 0;
    }

    v13 = +[AMSLogConfig sharedConfig];
    v14 = v13;
    if (!v11)
    {
      if (!v13)
      {
        v14 = +[AMSLogConfig sharedConfig];
      }

      oSLogObject2 = [v14 OSLogObject];
      if (os_log_type_enabled(oSLogObject2, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_192869000, oSLogObject2, OS_LOG_TYPE_DEFAULT, "AMSDevice+Offers: Failed to find device offer eligibility dictionary, creating new instance", buf, 2u);
      }

      v11 = objc_alloc_init(MEMORY[0x1E695DF90]);
      v28 = numberCopy;
      v18 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v28 count:1];
      [v11 setObject:v18 forKeyedSubscript:@"companionSerialNumbers"];
      goto LABEL_33;
    }

    if (!v13)
    {
      v14 = +[AMSLogConfig sharedConfig];
    }

    oSLogObject3 = [v14 OSLogObject];
    if (os_log_type_enabled(oSLogObject3, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_192869000, oSLogObject3, OS_LOG_TYPE_DEFAULT, "AMSDevice+Offers: Found device offer eligibility dictionary", buf, 2u);
    }

    v16 = [v11 objectForKeyedSubscript:@"companionSerialNumbers"];
    v17 = [v16 mutableCopy];

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v18 = v17;

      if (v18)
      {
LABEL_32:
        [v18 addObject:numberCopy];
        v22 = [v18 copy];
        [v11 setObject:v22 forKeyedSubscript:@"companionSerialNumbers"];

LABEL_33:
        v23 = [v11 copy];
        [AMSDefaults setDeviceOfferEligibility:v23];

        [AMSDefaults setDidRetrieveDeviceOffers:0];
        ams_sharedAccountStore = [MEMORY[0x1E6959A48] ams_sharedAccountStore];
        ams_activeiTunesAccount = [ams_sharedAccountStore ams_activeiTunesAccount];

        if (ams_activeiTunesAccount)
        {
          v25 = [[AMSDeviceOfferRegistrationTask alloc] initWithAccount:ams_activeiTunesAccount bag:bagCopy];
          perform = [(AMSDeviceOfferRegistrationTask *)v25 perform];
        }

        else
        {
          v25 = +[AMSLogConfig sharedConfig];
          if (!v25)
          {
            v25 = +[AMSLogConfig sharedConfig];
          }

          oSLogObject4 = [(AMSDeviceOfferRegistrationTask *)v25 OSLogObject];
          if (os_log_type_enabled(oSLogObject4, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&dword_192869000, oSLogObject4, OS_LOG_TYPE_DEFAULT, "AMSDevice+Offers: Device offer registration could not be performed - no account", buf, 2u);
          }
        }

        goto LABEL_41;
      }
    }

    else
    {
    }

    v20 = +[AMSLogConfig sharedConfig];
    if (!v20)
    {
      v20 = +[AMSLogConfig sharedConfig];
    }

    oSLogObject5 = [v20 OSLogObject];
    if (os_log_type_enabled(oSLogObject5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_192869000, oSLogObject5, OS_LOG_TYPE_DEFAULT, "AMSDevice+Offers: Failed to find companion serial number array, creating new instance", buf, 2u);
    }

    v18 = objc_alloc_init(MEMORY[0x1E695DF70]);
    goto LABEL_32;
  }

  v11 = +[AMSLogConfig sharedConfig];
  if (!v11)
  {
    v11 = +[AMSLogConfig sharedConfig];
  }

  ams_activeiTunesAccount = [v11 OSLogObject];
  if (os_log_type_enabled(ams_activeiTunesAccount, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_impl(&dword_192869000, ams_activeiTunesAccount, OS_LOG_TYPE_ERROR, "AMSDevice+Offers: Failed to register companion serial number for nil serial number", buf, 2u);
  }

LABEL_41:
}

+ (void)removeDeviceOfferRegistrationItem:(id)item
{
  itemCopy = item;
  v5 = objc_opt_new();
  [self _removeDeviceOfferRegistrationItem:itemCopy fromDeviceOfferStore:v5];
}

+ (void)removeDeviceOfferWithIdentifier:(id)identifier account:(id)account bag:(id)bag logKey:(id)key
{
  v49 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  accountCopy = account;
  bagCopy = bag;
  keyCopy = key;
  if (![AMSDevice tearDownAllDeviceOfferFollowUpsForAccount:accountCopy logKey:keyCopy])
  {
    v13 = +[AMSLogConfig sharedConfig];
    if (!v13)
    {
      v13 = +[AMSLogConfig sharedConfig];
    }

    oSLogObject = [v13 OSLogObject];
    if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_ERROR))
    {
      hashedDescription = [accountCopy hashedDescription];
      *buf = 138543874;
      *&buf[4] = keyCopy;
      *&buf[12] = 2114;
      *&buf[14] = identifierCopy;
      *&buf[22] = 2114;
      v46 = hashedDescription;
      _os_log_impl(&dword_192869000, oSLogObject, OS_LOG_TYPE_ERROR, "AMSDevice+Offers: [%{public}@] Failed to tear down all follow ups while removing device offer: %{public}@ for account: %{public}@", buf, 0x20u);
    }
  }

  v16 = +[AMSDefaults deviceOfferEligibility];
  v17 = [v16 mutableCopy];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v18 = v17;
  }

  else
  {
    v18 = 0;
  }

  v19 = [v18 objectForKeyedSubscript:@"deviceOffers"];
  v20 = [v19 mutableCopy];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v21 = v20;
  }

  else
  {
    v21 = 0;
  }

  if ([v21 count])
  {
    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x3032000000;
    v46 = __Block_byref_object_copy__22;
    v47 = __Block_byref_object_dispose__22;
    v48 = 0;
    v33 = MEMORY[0x1E69E9820];
    v34 = 3221225472;
    v35 = __72__AMSDevice_Offers__removeDeviceOfferWithIdentifier_account_bag_logKey___block_invoke;
    v36 = &unk_1E73B6B48;
    v22 = identifierCopy;
    v37 = v22;
    v38 = buf;
    [v21 enumerateObjectsUsingBlock:&v33];
    if (*(*&buf[8] + 40))
    {
      [v21 removeObject:{v33, v34, v35, v36}];
      v23 = [v21 copy];
      [v18 setObject:v23 forKeyedSubscript:@"deviceOffers"];

      v24 = [v18 copy];
      [AMSDefaults setDeviceOfferEligibility:v24];
    }

    else
    {
      v24 = [AMSLogConfig sharedConfig:v33];
      if (!v24)
      {
        v24 = +[AMSLogConfig sharedConfig];
      }

      oSLogObject2 = [v24 OSLogObject];
      if (os_log_type_enabled(oSLogObject2, OS_LOG_TYPE_ERROR))
      {
        hashedDescription2 = [accountCopy hashedDescription];
        *v39 = 138543874;
        v40 = keyCopy;
        v41 = 2114;
        v42 = v22;
        v43 = 2114;
        v44 = hashedDescription2;
        _os_log_impl(&dword_192869000, oSLogObject2, OS_LOG_TYPE_ERROR, "AMSDevice+Offers: [%{public}@] Failed to find device offer: %{public}@ for account: %{public}@", v39, 0x20u);
      }
    }

    _Block_object_dispose(buf, 8);
  }

  else
  {
    v25 = +[AMSLogConfig sharedConfig];
    if (!v25)
    {
      v25 = +[AMSLogConfig sharedConfig];
    }

    oSLogObject3 = [v25 OSLogObject];
    if (os_log_type_enabled(oSLogObject3, OS_LOG_TYPE_ERROR))
    {
      hashedDescription3 = [accountCopy hashedDescription];
      *buf = 138543874;
      *&buf[4] = keyCopy;
      *&buf[12] = 2114;
      *&buf[14] = identifierCopy;
      *&buf[22] = 2114;
      v46 = hashedDescription3;
      _os_log_impl(&dword_192869000, oSLogObject3, OS_LOG_TYPE_ERROR, "AMSDevice+Offers: [%{public}@] Failed to find any offers to remove while removing device offer: %{public}@ for account: %{public}@", buf, 0x20u);
    }
  }

  [AMSDefaults setDidRetrieveDeviceOffers:0];
  v30 = +[AMSLogConfig sharedConfig];
  if (!v30)
  {
    v30 = +[AMSLogConfig sharedConfig];
  }

  oSLogObject4 = [v30 OSLogObject];
  if (os_log_type_enabled(oSLogObject4, OS_LOG_TYPE_DEFAULT))
  {
    hashedDescription4 = [accountCopy hashedDescription];
    *buf = 138543618;
    *&buf[4] = keyCopy;
    *&buf[12] = 2114;
    *&buf[14] = hashedDescription4;
    _os_log_impl(&dword_192869000, oSLogObject4, OS_LOG_TYPE_DEFAULT, "AMSDevice+Offers: [%{public}@] Posting device offer followups for account: %{public}@", buf, 0x16u);
  }

  [AMSDevice postAllDeviceOfferFollowUpsForAccount:accountCopy priority:0 bag:bagCopy logKey:keyCopy];
}

void __72__AMSDevice_Offers__removeDeviceOfferWithIdentifier_account_bag_logKey___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v10 = a2;
  v7 = [[AMSDeviceOffer alloc] initWithDictionary:v10];
  v8 = [(AMSDeviceOffer *)v7 offerIdentifier];
  v9 = [v8 isEqualToString:*(a1 + 32)];

  if (v9)
  {
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
    *a4 = 1;
  }
}

+ (BOOL)saveDeviceOffersForAccount:(id)account response:(id)response logKey:(id)key
{
  v50 = *MEMORY[0x1E69E9840];
  accountCopy = account;
  responseCopy = response;
  keyCopy = key;
  [AMSDefaults setDidRetrieveDeviceOffersEligibility:1];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v11 = [responseCopy objectForKeyedSubscript:@"deviceEligibility"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v12 = v11;
    }

    else
    {
      v12 = 0;
    }
  }

  else
  {
    v12 = 0;
  }

  v13 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v47 = +[AMSDefaults deviceOfferEligibility];
  v14 = [v47 objectForKeyedSubscript:@"companionSerialNumbers"];
  if (v14)
  {
    [v13 setObject:v14 forKeyedSubscript:@"companionSerialNumbers"];
  }

  if (v12)
  {
    v15 = +[AMSLogConfig sharedConfig];
    if (!v15)
    {
      v15 = +[AMSLogConfig sharedConfig];
    }

    oSLogObject = [v15 OSLogObject];
    if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v49 = keyCopy;
      _os_log_impl(&dword_192869000, oSLogObject, OS_LOG_TYPE_DEFAULT, "AMSDevice+Offers: [%{public}@] Device is eligible, saving offers", buf, 0xCu);
    }

    v17 = [v12 objectForKeyedSubscript:@"isDeviceEligible"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      bOOLValue = [v17 BOOLValue];
    }

    else
    {
      bOOLValue = 0;
    }

    v18 = [v12 objectForKeyedSubscript:@"eligibilityCriteria"];

    objc_opt_class();
    v45 = v18;
    selfCopy = self;
    v43 = v14;
    if (objc_opt_isKindOfClass())
    {
      v19 = v18;
      v20 = [v19 objectForKeyedSubscript:@"agreedToTerms"];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        bOOLValue2 = [v20 BOOLValue];
      }

      else
      {
        bOOLValue2 = 0;
      }

      v28 = [v19 objectForKeyedSubscript:@"expressedIntent"];

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        bOOLValue3 = [v28 BOOLValue];
      }

      else
      {
        bOOLValue3 = 0;
      }

      v29 = [v19 objectForKeyedSubscript:@"goodStanding"];

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        bOOLValue4 = [v29 BOOLValue];
      }

      else
      {
        bOOLValue4 = 0;
      }

      v30 = [v19 objectForKeyedSubscript:@"isGift"];

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        bOOLValue5 = [v30 BOOLValue];
      }

      else
      {
        bOOLValue5 = 0;
      }

      v42 = keyCopy;
      v31 = [v19 objectForKeyedSubscript:@"isICloudFamily"];

      objc_opt_class();
      v32 = responseCopy;
      if (objc_opt_isKindOfClass())
      {
        bOOLValue6 = [v31 BOOLValue];
      }

      else
      {
        bOOLValue6 = 0;
      }

      v33 = [v19 objectForKeyedSubscript:@"validPayment"];

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        bOOLValue7 = [v33 BOOLValue];
      }

      else
      {
        bOOLValue7 = 0;
      }

      responseCopy = v32;
      v21 = v42;
      v23 = bOOLValue3;
      v22 = bOOLValue2;
      v25 = bOOLValue5;
    }

    else
    {
      v21 = keyCopy;
      v22 = 0;
      v23 = 0;
      bOOLValue4 = 0;
      v25 = 0;
      bOOLValue6 = 0;
      bOOLValue7 = 0;
    }

    [accountCopy ams_setAgreedToTerms:v22];
    [accountCopy ams_setInGoodStanding:bOOLValue4];
    [accountCopy ams_setiCloudFamily:bOOLValue6];
    [accountCopy ams_setValidPayment:bOOLValue7];
    v34 = [MEMORY[0x1E696AD98] numberWithBool:v23];
    [v13 setObject:v34 forKeyedSubscript:@"expressedIntent"];

    v35 = [MEMORY[0x1E696AD98] numberWithBool:bOOLValue];
    [v13 setObject:v35 forKeyedSubscript:@"isDeviceEligible"];

    v36 = [MEMORY[0x1E696AD98] numberWithBool:v25];
    [v13 setObject:v36 forKeyedSubscript:@"isGift"];

    self = selfCopy;
    keyCopy = v21;
    v14 = v43;
  }

  v37 = objc_opt_new();
  [self _setDeviceEligibilityKeepingExistingDeviceOffers:v13 offersStore:v37];

  return v12 != 0;
}

+ (void)saveDeviceOfferEligibility:(id)eligibility
{
  eligibilityCopy = eligibility;
  v6 = objc_opt_new();
  v5 = [eligibilityCopy objectForKeyedSubscript:@"deviceOffers"];
  [self _setDeviceEligibilityKeepingExistingDeviceOffers:eligibilityCopy offersStore:v6];

  [self saveDeviceOffers:v5];
}

+ (void)saveDeviceOffers:(id)offers
{
  v14 = *MEMORY[0x1E69E9840];
  offersCopy = offers;
  if (+[AMSDefaults didRetrieveTVOffers])
  {
    v5 = [offersCopy ams_filterUsingTest:&__block_literal_global_61];

    offersCopy = v5;
  }

  else if ([offersCopy ams_anyWithTest:&__block_literal_global_63])
  {
    [AMSDefaults setDidRetrieveTVOffers:1];
  }

  v6 = objc_opt_new();
  v7 = [self _setRawDeviceOffers:offersCopy offersStore:v6];

  if (v7)
  {
    v8 = +[AMSLogConfig sharedConfig];
    if (!v8)
    {
      v8 = +[AMSLogConfig sharedConfig];
    }

    oSLogObject = [v8 OSLogObject];
    if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEFAULT))
    {
      v10 = AMSLogKey();
      v12 = 138543362;
      v13 = v10;
      _os_log_impl(&dword_192869000, oSLogObject, OS_LOG_TYPE_DEFAULT, "AMSDevice+Offer: [%{public}@] Posting offers changed notification", &v12, 0xCu);
    }

    DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterPostNotification(DarwinNotifyCenter, @"com.apple.AppleMediaServices.deviceOffersChanged", 0, 0, 1u);
  }
}

uint64_t __38__AMSDevice_Offers__saveDeviceOffers___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [[AMSDeviceOffer alloc] initWithDictionary:v2];

  v4 = [(AMSDeviceOffer *)v3 offerIdentifier];
  v5 = [v4 isEqualToString:@"com.apple.TV"];

  return v5 ^ 1u;
}

uint64_t __38__AMSDevice_Offers__saveDeviceOffers___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [[AMSDeviceOffer alloc] initWithDictionary:v2];

  v4 = [(AMSDeviceOffer *)v3 offerIdentifier];
  v5 = [v4 isEqualToString:@"com.apple.TV"];

  return v5;
}

+ (void)setDeviceOffersCheckEncodingForRequestParameters:(id)parameters
{
  v26 = *MEMORY[0x1E69E9840];
  parametersCopy = parameters;
  v4 = +[AMSDefaults didRetrieveDeviceOffersEligibility];
  if (parametersCopy)
  {
    v5 = v4;
    v6 = +[AMSProcessInfo isBuddyRunning];
    v7 = +[AMSLogConfig sharedConfig];
    v8 = v7;
    if (v6 || !v5)
    {
      if (!v7)
      {
        v8 = +[AMSLogConfig sharedConfig];
      }

      oSLogObject = [v8 OSLogObject];
      if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v24) = 0;
        _os_log_impl(&dword_192869000, oSLogObject, OS_LOG_TYPE_DEFAULT, "AMSDevice+Offers: Will decorate request parameters with serial number", &v24, 2u);
      }

      [parametersCopy ams_setNullableObject:@"true" forKey:@"deviceOffersCheck"];
      v12 = +[AMSDefaults deviceOfferEligibility];
      v13 = [v12 objectForKeyedSubscript:@"companionSerialNumbers"];
      v14 = [v13 mutableCopy];

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v8 = v14;
      }

      else
      {
        v8 = 0;
      }

      v15 = +[AMSDevice serialNumber];
      oSLogObject5 = v15;
      if (v8)
      {
        if (v15)
        {
          [v8 addObject:v15];
        }

        v16 = +[AMSLogConfig sharedConfig];
        if (!v16)
        {
          v16 = +[AMSLogConfig sharedConfig];
        }

        oSLogObject2 = [v16 OSLogObject];
        if (os_log_type_enabled(oSLogObject2, OS_LOG_TYPE_DEFAULT))
        {
          v24 = 138412290;
          v25 = v8;
          _os_log_impl(&dword_192869000, oSLogObject2, OS_LOG_TYPE_DEFAULT, "AMSDevice+Offers: Decorating request parameters with serial numbers: %@", &v24, 0xCu);
        }

        [parametersCopy ams_setNullableObject:v8 forKey:@"serialNumber"];
      }

      else
      {
        if (os_variant_has_internal_content())
        {
          v18 = +[AMSDefaults deviceOffersSerialNumber];
          if (v18)
          {
            v19 = +[AMSLogConfig sharedConfig];
            if (!v19)
            {
              v19 = +[AMSLogConfig sharedConfig];
            }

            oSLogObject3 = [v19 OSLogObject];
            if (os_log_type_enabled(oSLogObject3, OS_LOG_TYPE_DEFAULT))
            {
              v24 = 138412290;
              v25 = v18;
              _os_log_impl(&dword_192869000, oSLogObject3, OS_LOG_TYPE_DEFAULT, "AMSDevice+Offers: Internal deviceOffer serial number override found: %@", &v24, 0xCu);
            }

            v21 = v18;
            oSLogObject5 = v21;
          }
        }

        v22 = +[AMSLogConfig sharedConfig];
        if (!v22)
        {
          v22 = +[AMSLogConfig sharedConfig];
        }

        oSLogObject4 = [v22 OSLogObject];
        if (os_log_type_enabled(oSLogObject4, OS_LOG_TYPE_DEFAULT))
        {
          v24 = 138412290;
          v25 = oSLogObject5;
          _os_log_impl(&dword_192869000, oSLogObject4, OS_LOG_TYPE_DEFAULT, "AMSDevice+Offers: Decorating request parameters with serial number: %@", &v24, 0xCu);
        }

        [parametersCopy ams_setNullableObject:oSLogObject5 forKey:@"serialNumber"];
        v8 = 0;
      }
    }

    else
    {
      if (!v7)
      {
        v8 = +[AMSLogConfig sharedConfig];
      }

      oSLogObject5 = [v8 OSLogObject];
      if (os_log_type_enabled(oSLogObject5, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v24) = 0;
        v10 = "AMSDevice+Offers: Skipping decoration of request parameters with serial number";
LABEL_12:
        _os_log_impl(&dword_192869000, oSLogObject5, OS_LOG_TYPE_DEFAULT, v10, &v24, 2u);
      }
    }
  }

  else
  {
    v8 = +[AMSLogConfig sharedConfig];
    if (!v8)
    {
      v8 = +[AMSLogConfig sharedConfig];
    }

    oSLogObject5 = [v8 OSLogObject];
    if (os_log_type_enabled(oSLogObject5, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v24) = 0;
      v10 = "AMSDevice+Offers: Skipping decoration of request parameters with serial number for no request parameters";
      goto LABEL_12;
    }
  }
}

+ (BOOL)shouldPresentSetupOffersForAccount:(id)account issues:(int64_t *)issues
{
  v41 = *MEMORY[0x1E69E9840];
  if (account)
  {
    issuesCopy = issues;
    v5 = +[AMSDevice isEligibleForOffers];
    ams_sharedAccountStore = [MEMORY[0x1E6959A48] ams_sharedAccountStore];
    ams_activeiCloudAccount = [ams_sharedAccountStore ams_activeiCloudAccount];
    ams_activeiTunesAccount = [ams_sharedAccountStore ams_activeiTunesAccount];
    ams_DSID = [ams_activeiCloudAccount ams_DSID];
    if (ams_DSID && (v10 = ams_DSID, [ams_activeiTunesAccount ams_DSID], v11 = objc_claimAutoreleasedReturnValue(), v11, v10, v11))
    {
      ams_DSID2 = [ams_activeiCloudAccount ams_DSID];
      ams_DSID3 = [ams_activeiTunesAccount ams_DSID];
      v30 = [ams_DSID2 isEqualToNumber:ams_DSID3];
    }

    else
    {
      v30 = 0;
    }

    v14 = +[AMSDevice deviceOffers];
    v15 = [v14 count];

    hashedDescription = [ams_activeiCloudAccount hashedDescription];
    hashedDescription2 = [ams_activeiTunesAccount hashedDescription];
    v16 = +[AMSLogConfig sharedConfig];
    if (!v16)
    {
      v16 = +[AMSLogConfig sharedConfig];
    }

    oSLogObject = [v16 OSLogObject];
    if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEFAULT))
    {
      v27 = issuesCopy;
      [MEMORY[0x1E696AD98] numberWithBool:v5];
      v18 = v26 = ams_sharedAccountStore;
      v19 = [MEMORY[0x1E696AD98] numberWithBool:v30];
      v20 = [MEMORY[0x1E696AD98] numberWithBool:v15 != 0];
      *buf = 138413314;
      v32 = hashedDescription;
      v33 = 2112;
      v34 = hashedDescription2;
      v35 = 2112;
      v36 = v18;
      v37 = 2112;
      v38 = v19;
      v39 = 2112;
      v40 = v20;
      _os_log_impl(&dword_192869000, oSLogObject, OS_LOG_TYPE_DEFAULT, "AMSDevice+Offers: Determining setup device offer eligibility for iCloud account: %@, iTunes account: %@, isEligible: %@, isCombinedAccount: %@, hasOffers: %@", buf, 0x34u);

      issuesCopy = v27;
      ams_sharedAccountStore = v26;
    }

    v21 = v5 & v30;
    if (v15)
    {
      v22 = v5 & v30;
    }

    else
    {
      v22 = 0;
    }

    if (issuesCopy)
    {
      *issuesCopy = 0;
      if (!v15)
      {
        v21 = 0;
      }

      if (!v21)
      {
        v23 = 2;
        if (v5)
        {
          v23 = 0;
        }

        v24 = v23 | v30 ^ 1;
        if (!v15)
        {
          v24 |= 4uLL;
        }

        *issuesCopy = v24;
      }
    }
  }

  else
  {
    ams_sharedAccountStore = [AMSLogConfig sharedConfig:0];
    if (!ams_sharedAccountStore)
    {
      ams_sharedAccountStore = +[AMSLogConfig sharedConfig];
    }

    ams_activeiCloudAccount = [ams_sharedAccountStore OSLogObject];
    if (os_log_type_enabled(ams_activeiCloudAccount, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_192869000, ams_activeiCloudAccount, OS_LOG_TYPE_DEFAULT, "AMSDevice+Offers: No account specified for offer check", buf, 2u);
    }

    v22 = 0;
  }

  return v22;
}

+ (BOOL)tearDownAllDeviceOfferFollowUpsForAccount:(id)account logKey:(id)key
{
  v18 = *MEMORY[0x1E69E9840];
  accountCopy = account;
  keyCopy = key;
  v7 = +[AMSLogConfig sharedConfig];
  if (!v7)
  {
    v7 = +[AMSLogConfig sharedConfig];
  }

  oSLogObject = [v7 OSLogObject];
  if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEFAULT))
  {
    hashedDescription = [accountCopy hashedDescription];
    v14 = 138543618;
    v15 = keyCopy;
    v16 = 2114;
    v17 = hashedDescription;
    _os_log_impl(&dword_192869000, oSLogObject, OS_LOG_TYPE_DEFAULT, "AMSDevice+Offer: [%{public}@] Tearing down all follow ups for account: %{public}@", &v14, 0x16u);
  }

  v10 = [AMSDevice tearDownDeviceOfferFollowUpWithIdentifier:AMSDeviceOfferFollowUpIdentifierAppleMusic account:accountCopy logKey:keyCopy];
  v11 = [AMSDevice tearDownDeviceOfferFollowUpWithIdentifier:AMSDeviceOfferFollowUpIdentifierAppleMusicAndiCloud account:accountCopy logKey:keyCopy];
  v12 = [AMSDevice tearDownDeviceOfferFollowUpWithIdentifier:AMSDeviceOfferFollowUpIdentifieriCloud account:accountCopy logKey:keyCopy];

  return v10 && v11 && v12;
}

+ (BOOL)tearDownDeviceOfferFollowUpWithIdentifier:(id)identifier account:(id)account logKey:(id)key
{
  v54 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  accountCopy = account;
  keyCopy = key;
  v9 = +[AMSLogConfig sharedConfig];
  if (!v9)
  {
    v9 = +[AMSLogConfig sharedConfig];
  }

  oSLogObject = [v9 OSLogObject];
  v36 = identifierCopy;
  if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEFAULT))
  {
    hashedDescription = [accountCopy hashedDescription];
    *buf = 138543874;
    v49 = keyCopy;
    v50 = 2114;
    v51 = v36;
    v52 = 2114;
    v53 = hashedDescription;
    _os_log_impl(&dword_192869000, oSLogObject, OS_LOG_TYPE_DEFAULT, "AMSDevice+Offer: [%{public}@] Tearing down follow up with identifier: %{public}@, for account: %{public}@", buf, 0x20u);

    identifierCopy = v36;
  }

  v39 = objc_alloc_init(AMSFollowUp);
  pendingFollowUps = [(AMSFollowUp *)v39 pendingFollowUps];
  v46 = 0;
  v13 = [pendingFollowUps resultWithError:&v46];
  v14 = v46;

  v15 = v14 == 0;
  v35 = accountCopy;
  if (v14)
  {

    v16 = +[AMSLogConfig sharedConfig];
    if (!v16)
    {
      v16 = +[AMSLogConfig sharedConfig];
    }

    oSLogObject2 = [v16 OSLogObject];
    if (os_log_type_enabled(oSLogObject2, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543618;
      v49 = keyCopy;
      v50 = 2114;
      v51 = identifierCopy;
      _os_log_impl(&dword_192869000, oSLogObject2, OS_LOG_TYPE_ERROR, "AMSDevice+Offers: [%{public}@] Failed to locate pending items to tear down followup with identifier: %{public}@", buf, 0x16u);
    }

    v13 = 0;
  }

  v44 = 0u;
  v45 = 0u;
  v42 = 0u;
  v43 = 0u;
  obj = v13;
  v18 = [obj countByEnumeratingWithState:&v42 objects:v47 count:16];
  if (v18)
  {
    v19 = v18;
    v20 = *v43;
    do
    {
      v21 = 0;
      v38 = v19;
      do
      {
        if (*v43 != v20)
        {
          objc_enumerationMutation(obj);
        }

        v22 = *(*(&v42 + 1) + 8 * v21);
        identifier = [v22 identifier];
        v24 = [identifier isEqualToString:identifierCopy];

        if (v24)
        {
          v25 = [(AMSFollowUp *)v39 clearFollowUpItem:v22];
          v41 = v14;
          v26 = [v25 resultWithTimeout:&v41 error:5.0];
          v27 = v41;

          if (v27)
          {
            v28 = v20;
            v29 = v15;
            v30 = +[AMSLogConfig sharedConfig];
            if (!v30)
            {
              v30 = +[AMSLogConfig sharedConfig];
            }

            oSLogObject3 = [v30 OSLogObject];
            if (os_log_type_enabled(oSLogObject3, OS_LOG_TYPE_ERROR))
            {
              identifier2 = [v22 identifier];
              account = [v22 account];
              *buf = 138543874;
              v49 = keyCopy;
              v50 = 2114;
              v51 = identifier2;
              v52 = 2114;
              v53 = account;
              _os_log_impl(&dword_192869000, oSLogObject3, OS_LOG_TYPE_ERROR, "AMSDevice+Offers: [%{public}@] Failed to tear down followup with identifier: %{public}@ account: %{public}@", buf, 0x20u);

              identifierCopy = v36;
            }

            v15 = v29;
            v20 = v28;
            v19 = v38;
          }

          v15 &= v26;

          v14 = v27;
        }

        ++v21;
      }

      while (v19 != v21);
      v19 = [obj countByEnumeratingWithState:&v42 objects:v47 count:16];
    }

    while (v19);
  }

  return v15 & 1;
}

+ (NSString)bagSubProfile
{
  if (_MergedGlobals_100 != -1)
  {
    dispatch_once(&_MergedGlobals_100, &__block_literal_global_76);
  }

  v3 = qword_1ED6E2898;

  return v3;
}

void __34__AMSDevice_Offers__bagSubProfile__block_invoke()
{
  v0 = qword_1ED6E2898;
  qword_1ED6E2898 = @"AMSDeviceOffers";
}

+ (NSString)bagSubProfileVersion
{
  if (qword_1ED6E28A0 != -1)
  {
    dispatch_once(&qword_1ED6E28A0, &__block_literal_global_81);
  }

  v3 = qword_1ED6E28A8;

  return v3;
}

void __41__AMSDevice_Offers__bagSubProfileVersion__block_invoke()
{
  v0 = qword_1ED6E28A8;
  qword_1ED6E28A8 = @"1";
}

+ (id)createBagForSubProfile
{
  bagSubProfile = [objc_opt_class() bagSubProfile];
  bagSubProfileVersion = [objc_opt_class() bagSubProfileVersion];
  v4 = [AMSBag bagForProfile:bagSubProfile profileVersion:bagSubProfileVersion];

  return v4;
}

+ (id)cachedRegistrationGroups
{
  v2 = objc_opt_new();
  cachedRegistrationGroups = [v2 cachedRegistrationGroups];

  return cachedRegistrationGroups;
}

+ (id)registrationDenyList
{
  v2 = objc_opt_new();
  deviceRegistrationDenyList = [v2 deviceRegistrationDenyList];

  return deviceRegistrationDenyList;
}

+ (id)_followUpItemWithIdentifier:(id)identifier account:(id)account priority:(int64_t)priority bag:(id)bag
{
  v57[1] = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  bagCopy = bag;
  accountCopy = account;
  v10 = [[AMSFollowUpItem alloc] initWithIdentifier:identifierCopy account:accountCopy priority:priority];
  [(AMSFollowUpItem *)v10 setShouldPostNotification:0];
  v11 = [[AMSMetricsEvent alloc] initWithTopic:@"xp_amp_retail_sub"];
  [(AMSMetricsEvent *)v11 setEventType:@"page"];
  [(AMSMetricsEvent *)v11 setProperty:@"AccountFollowUp" forBodyKey:@"pageId"];
  [(AMSMetricsEvent *)v11 setProperty:@"Picker" forBodyKey:@"pageType"];
  [(AMSMetricsEvent *)v11 setProperty:@"Settings" forBodyKey:@"pageContext"];
  v53 = v11;
  [(AMSFollowUpItem *)v10 setMetricsEvent:v11];
  v12 = [[AMSMetricsEvent alloc] initWithTopic:@"xp_amp_retail_sub"];
  [(AMSMetricsEvent *)v12 setEventType:@"click"];
  [(AMSMetricsEvent *)v12 setProperty:@"AccountFollowUp" forBodyKey:@"pageId"];
  [(AMSMetricsEvent *)v12 setProperty:@"open" forBodyKey:@"actionType"];
  [(AMSMetricsEvent *)v12 setProperty:@"button" forBodyKey:@"targetType"];
  [(AMSMetricsEvent *)v12 setProperty:@"SetUpAppleMusic" forBodyKey:@"targetId"];
  v13 = [[AMSMetricsEvent alloc] initWithTopic:@"xp_amp_retail_sub"];
  [(AMSMetricsEvent *)v13 setEventType:@"click"];
  [(AMSMetricsEvent *)v13 setProperty:@"AccountFollowUp" forBodyKey:@"pageId"];
  [(AMSMetricsEvent *)v13 setProperty:@"open" forBodyKey:@"actionType"];
  [(AMSMetricsEvent *)v13 setProperty:@"button" forBodyKey:@"targetType"];
  v54 = v13;
  [(AMSMetricsEvent *)v13 setProperty:@"SetUpIcloud" forBodyKey:@"targetId"];
  username = [accountCopy username];

  if ([identifierCopy isEqualToString:AMSDeviceOfferFollowUpIdentifierAppleMusic])
  {
    v15 = MEMORY[0x1E696AEC0];
    v16 = bagCopy;
    v17 = AMSLocalizedString(@"DEVICE_OFFERS_FOLLOWUP_APPLE_MUSIC_DESC_APPLE_ACCOUNT", bagCopy);
    v18 = [v15 stringWithValidatedFormat:v17 validFormatSpecifiers:@"%@" error:0, username];
    [(AMSFollowUpItem *)v10 setInformativeText:v18];

    v19 = AMSLocalizedString(@"DEVICE_OFFERS_FOLLOWUP_APPLE_MUSIC_TITLE", bagCopy);
    [(AMSFollowUpItem *)v10 setTitle:v19];

    v20 = [AMSFollowUpAction alloc];
    v21 = AMSLocalizedString(@"DEVICE_OFFERS_FOLLOWUP_CONTINUE_LABEL", bagCopy);
    v22 = [(AMSFollowUpAction *)v20 initWithLabel:v21 parentIdentifier:identifierCopy];

    [(AMSFollowUpAction *)v22 setPreferredClient:@"com.apple.Music"];
    v23 = [bagCopy URLForKey:@"appleMusicDeviceOfferDeepLink"];
    v24 = [v23 valueWithError:0];
    [(AMSFollowUpAction *)v22 setUrl:v24];

    [(AMSFollowUpAction *)v22 setMetricsEvent:v12];
    v57[0] = v22;
    v25 = [MEMORY[0x1E695DEC8] arrayWithObjects:v57 count:1];
    [(AMSFollowUpItem *)v10 setActions:v25];
    v26 = v10;
    v27 = v12;
    v28 = v54;
  }

  else
  {
    v16 = bagCopy;
    if ([identifierCopy isEqualToString:AMSDeviceOfferFollowUpIdentifieriCloud])
    {
      v29 = MEMORY[0x1E696AEC0];
      v30 = AMSLocalizedString(@"DEVICE_OFFERS_FOLLOWUP_ICLOUD_STORAGE_DESC_APPLE_ACCOUNT", bagCopy);
      v31 = [v29 stringWithValidatedFormat:v30 validFormatSpecifiers:@"%@" error:0, username];
      v26 = v10;
      [(AMSFollowUpItem *)v10 setInformativeText:v31];

      v32 = AMSLocalizedString(@"DEVICE_OFFERS_FOLLOWUP_ICLOUD_STORAGE_TITLE", bagCopy);
      [(AMSFollowUpItem *)v10 setTitle:v32];

      v33 = [AMSFollowUpAction alloc];
      v34 = AMSLocalizedString(@"DEVICE_OFFERS_FOLLOWUP_CONTINUE_LABEL", bagCopy);
      v22 = [(AMSFollowUpAction *)v33 initWithLabel:v34 parentIdentifier:identifierCopy];

      v35 = [bagCopy URLForKey:@"iCloudDeviceOfferDeepLink"];
      v36 = [v35 valueWithError:0];
      [(AMSFollowUpAction *)v22 setUrl:v36];

      v28 = v13;
      [(AMSFollowUpAction *)v22 setMetricsEvent:v13];
      v56 = v22;
      v25 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v56 count:1];
      [(AMSFollowUpItem *)v26 setActions:v25];
    }

    else
    {
      v26 = v10;
      v27 = v12;
      v28 = v13;
      if (![identifierCopy isEqualToString:AMSDeviceOfferFollowUpIdentifierAppleMusicAndiCloud])
      {
        goto LABEL_9;
      }

      v37 = MEMORY[0x1E696AEC0];
      v38 = AMSLocalizedString(@"DEVICE_OFFERS_FOLLOWUP_UNIFIED_DESC_APPLE_ACCOUNT", bagCopy);
      v39 = [v37 stringWithValidatedFormat:v38 validFormatSpecifiers:@"%@" error:0, username];
      [(AMSFollowUpItem *)v26 setInformativeText:v39];

      v40 = AMSLocalizedString(@"DEVICE_OFFERS_FOLLOWUP_UNIFIED_TITLE", bagCopy);
      [(AMSFollowUpItem *)v26 setTitle:v40];

      v41 = [AMSFollowUpAction alloc];
      v42 = AMSLocalizedString(@"DEVICE_OFFERS_FOLLOWUP_APPLE_MUSIC_LABEL", bagCopy);
      v22 = [(AMSFollowUpAction *)v41 initWithLabel:v42 parentIdentifier:identifierCopy];

      [(AMSFollowUpAction *)v22 setPreferredClient:@"com.apple.Music"];
      v43 = [bagCopy URLForKey:@"appleMusicDeviceOfferDeepLink"];
      v44 = [v43 valueWithError:0];
      [(AMSFollowUpAction *)v22 setUrl:v44];

      [(AMSFollowUpAction *)v22 setMetricsEvent:v12];
      v28 = v13;
      v45 = [AMSFollowUpAction alloc];
      v46 = AMSLocalizedString(@"DEVICE_OFFERS_FOLLOWUP_ICLOUD_STORAGE_LABEL", bagCopy);
      v25 = [(AMSFollowUpAction *)v45 initWithLabel:v46 parentIdentifier:identifierCopy];

      v47 = [bagCopy URLForKey:@"iCloudDeviceOfferDeepLink"];
      v48 = [v47 valueWithError:0];
      [(AMSFollowUpAction *)v25 setUrl:v48];

      [(AMSFollowUpAction *)v25 setMetricsEvent:v54];
      [(AMSFollowUpAction *)v25 setShouldClear:1];
      v55[0] = v22;
      v55[1] = v25;
      v49 = [MEMORY[0x1E695DEC8] arrayWithObjects:v55 count:2];
      [(AMSFollowUpItem *)v26 setActions:v49];
    }

    v27 = v12;
  }

LABEL_9:

  return v26;
}

+ (void)_performAuth
{
  v2 = +[AMSLogConfig sharedConfig];
  if (!v2)
  {
    v2 = +[AMSLogConfig sharedConfig];
  }

  oSLogObject = [v2 OSLogObject];
  if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_192869000, oSLogObject, OS_LOG_TYPE_DEFAULT, "AMSDevice+Offers: Attempting to perform silent auth.", buf, 2u);
  }

  ams_sharedAccountStore = [MEMORY[0x1E6959A48] ams_sharedAccountStore];
  ams_activeiTunesAccount = [ams_sharedAccountStore ams_activeiTunesAccount];

  if (ams_activeiTunesAccount)
  {
    v6 = objc_alloc_init(AMSAuthenticateOptions);
    [(AMSAuthenticateOptions *)v6 setDebugReason:@"device offers"];
    [(AMSAuthenticateOptions *)v6 setAuthenticationType:1];
    [(AMSAuthenticateOptions *)v6 setCanMakeAccountActive:0];
    oSLogObject2 = [[AMSAuthenticateTask alloc] initWithAccount:ams_activeiTunesAccount options:v6];
    performAuthentication = [(AMSAuthenticateTask *)oSLogObject2 performAuthentication];
    [performAuthentication addSuccessBlock:&__block_literal_global_178];
    [performAuthentication addErrorBlock:&__block_literal_global_182];
  }

  else
  {
    v6 = +[AMSLogConfig sharedConfig];
    if (!v6)
    {
      v6 = +[AMSLogConfig sharedConfig];
    }

    oSLogObject2 = [(AMSAuthenticateOptions *)v6 OSLogObject];
    if (os_log_type_enabled(&oSLogObject2->super.super, OS_LOG_TYPE_DEFAULT))
    {
      *v9 = 0;
      _os_log_impl(&dword_192869000, &oSLogObject2->super.super, OS_LOG_TYPE_DEFAULT, "AMSDevice+Offers: Silent auth attempt failed for no account", v9, 2u);
    }
  }
}

void __33__AMSDevice_Offers___performAuth__block_invoke(uint64_t a1, void *a2)
{
  v7 = *MEMORY[0x1E69E9840];
  v2 = a2;
  v3 = +[AMSLogConfig sharedConfig];
  if (!v3)
  {
    v3 = +[AMSLogConfig sharedConfig];
  }

  v4 = [v3 OSLogObject];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 138543362;
    v6 = v2;
    _os_log_impl(&dword_192869000, v4, OS_LOG_TYPE_DEFAULT, "AMSDevice+Offers: Register Serial: Silent auth did succeed with result: %{public}@", &v5, 0xCu);
  }
}

void __33__AMSDevice_Offers___performAuth__block_invoke_179(uint64_t a1, void *a2)
{
  v7 = *MEMORY[0x1E69E9840];
  v2 = a2;
  v3 = +[AMSLogConfig sharedConfig];
  if (!v3)
  {
    v3 = +[AMSLogConfig sharedConfig];
  }

  v4 = [v3 OSLogObject];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 138543362;
    v6 = v2;
    _os_log_impl(&dword_192869000, v4, OS_LOG_TYPE_DEFAULT, "AMSDevice+Offers: Register Serial: Silent auth failed with error: %{public}@", &v5, 0xCu);
  }
}

+ (void)_setDeviceEligibilityKeepingExistingDeviceOffers:(id)offers offersStore:(id)store
{
  v5 = MEMORY[0x1E695DF90];
  storeCopy = store;
  v9 = [v5 dictionaryWithDictionary:offers];
  deviceOffers = [storeCopy deviceOffers];
  [v9 setObject:deviceOffers forKeyedSubscript:@"deviceOffers"];

  v8 = [v9 copy];
  [storeCopy setDeviceOfferEligibility:v8];
}

+ (BOOL)_setRawDeviceOffers:(id)offers offersStore:(id)store
{
  storeCopy = store;
  offersCopy = offers;
  deviceOffers = [storeCopy deviceOffers];
  v9 = deviceOffers;
  v10 = MEMORY[0x1E695E0F0];
  if (deviceOffers)
  {
    v10 = deviceOffers;
  }

  v11 = v10;

  v12 = [self _shouldPostOffersUpdatedNotification:offersCopy oldOffers:v11];
  [storeCopy setDeviceOffers:offersCopy];

  return v12;
}

+ (BOOL)_shouldPostOffersUpdatedNotification:(id)notification oldOffers:(id)offers
{
  notificationCopy = notification;
  v6 = __68__AMSDevice_Offers___shouldPostOffersUpdatedNotification_oldOffers___block_invoke(offers);
  v7 = __68__AMSDevice_Offers___shouldPostOffersUpdatedNotification_oldOffers___block_invoke(notificationCopy);

  LOBYTE(notificationCopy) = [v6 isEqualToDictionary:v7];
  return notificationCopy ^ 1;
}

id __68__AMSDevice_Offers___shouldPostOffersUpdatedNotification_oldOffers___block_invoke(uint64_t a1)
{
  v1 = [AMSDeviceOffer offersSetFromArray:a1];
  v2 = [v1 allObjects];
  v3 = [v2 ams_dictionaryUsingTransform:&__block_literal_global_188];

  return v3;
}

__CFString *__68__AMSDevice_Offers___shouldPostOffersUpdatedNotification_oldOffers___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = [a2 offerIdentifier];
  v3 = v2;
  if (v2)
  {
    v4 = v2;
  }

  else
  {
    v4 = &stru_1F071BA78;
  }

  v5 = v4;

  return v4;
}

+ (BOOL)postAllDeviceOfferFollowUpsForAccount:(id)account priority:(int64_t)priority bagContract:(id)contract logKey:(id)key
{
  keyCopy = key;
  contractCopy = contract;
  accountCopy = account;
  v13 = AMSSetLogKey(keyCopy);
  v14 = [[AMSContractBagShim alloc] initWithBagContract:contractCopy];

  LOBYTE(contractCopy) = [self postAllDeviceOfferFollowUpsForAccount:accountCopy priority:priority bag:v14 logKey:keyCopy];
  return contractCopy;
}

+ (BOOL)postDeviceOfferFollowUpWithIdentifier:(id)identifier account:(id)account priority:(int64_t)priority bagContract:(id)contract logKey:(id)key
{
  keyCopy = key;
  contractCopy = contract;
  accountCopy = account;
  identifierCopy = identifier;
  v16 = AMSSetLogKey(keyCopy);
  v17 = [[AMSContractBagShim alloc] initWithBagContract:contractCopy];

  LOBYTE(contractCopy) = [self postDeviceOfferFollowUpWithIdentifier:identifierCopy account:accountCopy priority:priority bag:v17 logKey:keyCopy];
  return contractCopy;
}

+ (void)registerCompanionWithSerialNumber:(id)number
{
  numberCopy = number;
  v5 = +[AMSDeviceOfferRegistrationTask bagSubProfile];
  v6 = +[AMSDeviceOfferRegistrationTask bagSubProfileVersion];
  v7 = [AMSBag bagForProfile:v5 profileVersion:v6];

  [self registerCompanionWithSerialNumber:numberCopy bag:v7];
}

+ (void)removeDeviceOfferWithIdentifier:(id)identifier account:(id)account bagContract:(id)contract logKey:(id)key
{
  keyCopy = key;
  contractCopy = contract;
  accountCopy = account;
  identifierCopy = identifier;
  v14 = AMSSetLogKey(keyCopy);
  v15 = [[AMSContractBagShim alloc] initWithBagContract:contractCopy];

  [self removeDeviceOfferWithIdentifier:identifierCopy account:accountCopy bag:v15 logKey:keyCopy];
}

+ (NSArray)carrierNames
{
  v2 = +[AMSTelephonyDataCache sharedCache];
  carrierNames = [v2 carrierNames];

  return carrierNames;
}

+ (id)carrierNamesPromise
{
  v2 = +[AMSTelephonyDataCache sharedCache];
  carrierNamesPromise = [v2 carrierNamesPromise];

  return carrierNamesPromise;
}

+ (NSString)compatibleProductType
{
  v17 = *MEMORY[0x1E69E9840];
  v2 = MGCopyAnswerWithError();
  if (v2)
  {
    v3 = v2;
    Value = CFDictionaryGetValue(v2, @"CompatibleDeviceFallback");
    v5 = Value;
    if (Value)
    {
      if (CFStringCompare(Value, @"0", 0))
      {
        v5 = [(__CFString *)v5 copy];
      }

      else
      {
        v5 = 0;
      }
    }

    CFRelease(v3);
  }

  else
  {
    v6 = +[AMSLogConfig sharedConfig];
    if (!v6)
    {
      v6 = +[AMSLogConfig sharedConfig];
    }

    oSLogObject = [v6 OSLogObject];
    if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_ERROR))
    {
      v8 = objc_opt_class();
      v9 = AMSLogKey();
      *buf = 138543874;
      v12 = v8;
      v13 = 2114;
      v14 = v9;
      v15 = 1026;
      v16 = 0;
      _os_log_impl(&dword_192869000, oSLogObject, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] Failed to obtain artwork traits: %{public}d", buf, 0x1Cu);
    }

    v5 = 0;
  }

  return v5;
}

+ (NSString)deviceName
{
  v14 = *MEMORY[0x1E69E9840];
  v2 = MGCopyAnswerWithError();
  if (!v2)
  {
    v3 = +[AMSLogConfig sharedConfig];
    if (!v3)
    {
      v3 = +[AMSLogConfig sharedConfig];
    }

    oSLogObject = [v3 OSLogObject];
    if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_ERROR))
    {
      v5 = objc_opt_class();
      v6 = AMSLogKey();
      *buf = 138543874;
      v9 = v5;
      v10 = 2114;
      v11 = v6;
      v12 = 1026;
      v13 = 0;
      _os_log_impl(&dword_192869000, oSLogObject, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] Failed to obtain user assigned device name: %{public}d", buf, 0x1Cu);
    }

    v2 = @"Unknown";
  }

  return v2;
}

+ (BOOL)isSecureElementAvailable
{
  v17 = *MEMORY[0x1E69E9840];
  v2 = MGCopyAnswerWithError();
  if (v2)
  {
    v3 = v2;
    v4 = CFBooleanGetValue(v2) != 0;
    CFRelease(v3);
  }

  else
  {
    v5 = +[AMSLogConfig sharedConfig];
    if (!v5)
    {
      v5 = +[AMSLogConfig sharedConfig];
    }

    oSLogObject = [v5 OSLogObject];
    if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_ERROR))
    {
      v7 = objc_opt_class();
      v8 = v7;
      v9 = AMSSetLogKeyIfNeeded();
      *buf = 138543874;
      v12 = v7;
      v13 = 2112;
      v14 = v9;
      v15 = 1026;
      v16 = 0;
      _os_log_impl(&dword_192869000, oSLogObject, OS_LOG_TYPE_ERROR, "%{public}@: [%@] Failed to determine Secure Element availability: %{public}d", buf, 0x1Cu);
    }

    return 0;
  }

  return v4;
}

+ (NSString)macAddress
{
  v2 = +[AMSLogConfig sharedConfig];
  if (!v2)
  {
    v2 = +[AMSLogConfig sharedConfig];
  }

  oSLogObject = [v2 OSLogObject];
  if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_ERROR))
  {
    *v5 = 0;
    _os_log_impl(&dword_192869000, oSLogObject, OS_LOG_TYPE_ERROR, "AMSDevice: Failed to obtain MAC address for unsupported platform.", v5, 2u);
  }

  return &stru_1F071BA78;
}

+ (NSData)macAddressData
{
  v2 = +[AMSLogConfig sharedConfig];
  if (!v2)
  {
    v2 = +[AMSLogConfig sharedConfig];
  }

  oSLogObject = [v2 OSLogObject];
  if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_ERROR))
  {
    *v6 = 0;
    _os_log_impl(&dword_192869000, oSLogObject, OS_LOG_TYPE_ERROR, "AMSDevice: Failed to obtain MAC address data for unsupported platform.", v6, 2u);
  }

  v4 = objc_opt_new();

  return v4;
}

+ (NSString)modelPartNumber
{
  _regionInfo = [self _regionInfo];
  _modelNumber = [self _modelNumber];
  v5 = _modelNumber;
  v6 = 0;
  if (_regionInfo && _modelNumber)
  {
    v6 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@%@", _modelNumber, _regionInfo];
  }

  return v6;
}

+ (NSString)name
{
  v11 = *MEMORY[0x1E69E9840];
  if (+[AMSDevice deviceIsiPad](AMSDevice, "deviceIsiPad") || +[AMSDevice deviceIsiPadSimulator])
  {
    return @"iPad";
  }

  if (!+[AMSDevice deviceIsiPhone](AMSDevice, "deviceIsiPhone") && !+[AMSDevice deviceIsiPhoneSimulator])
  {
    v4 = +[AMSLogConfig sharedConfig];
    if (!v4)
    {
      v4 = +[AMSLogConfig sharedConfig];
    }

    oSLogObject = [v4 OSLogObject];
    if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_ERROR))
    {
      v6 = AMSLogKey();
      v7 = 138543618;
      selfCopy = self;
      v9 = 2112;
      v10 = v6;
      _os_log_impl(&dword_192869000, oSLogObject, OS_LOG_TYPE_ERROR, "%{public}@: [%@] unable to determine iOS device family", &v7, 0x16u);
    }
  }

  return @"iPhone";
}

+ (NSString)phoneNumber
{
  v32 = *MEMORY[0x1E69E9840];
  v3 = +[AMSLogConfig sharedConfig];
  if (!v3)
  {
    v3 = +[AMSLogConfig sharedConfig];
  }

  oSLogObject = [v3 OSLogObject];
  if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEFAULT))
  {
    v5 = objc_opt_class();
    v6 = AMSLogKey();
    *buf = 138543618;
    v29 = v5;
    v30 = 2114;
    v31 = v6;
    _os_log_impl(&dword_192869000, oSLogObject, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Fetching the device's phone number.", buf, 0x16u);
  }

  _voicePreferredPhoneNumberContext = [self _voicePreferredPhoneNumberContext];
  phoneNumber = [_voicePreferredPhoneNumberContext phoneNumber];
  v9 = [phoneNumber length];
  v10 = +[AMSLogConfig sharedConfig];
  v11 = v10;
  if (v9)
  {
    if (!v10)
    {
      v11 = +[AMSLogConfig sharedConfig];
    }

    oSLogObject2 = [v11 OSLogObject];
    if (os_log_type_enabled(oSLogObject2, OS_LOG_TYPE_DEFAULT))
    {
      v13 = AMSLogKey();
      v14 = MEMORY[0x1E696AEC0];
      v15 = objc_opt_class();
      v16 = v15;
      if (v13)
      {
        self = AMSLogKey();
        [v14 stringWithFormat:@"%@: [%@] ", v16, self];
      }

      else
      {
        [v14 stringWithFormat:@"%@: ", v15];
      }
      selfCopy = ;
      v24 = AMSHashIfNeeded(phoneNumber);
      *buf = 138543618;
      v29 = selfCopy;
      v30 = 2114;
      v31 = v24;
      _os_log_impl(&dword_192869000, oSLogObject2, OS_LOG_TYPE_DEFAULT, "%{public}@Successfully fetched the device's phone number. phoneNumber = %{public}@", buf, 0x16u);
      if (v13)
      {

        selfCopy = self;
      }
    }

    v25 = phoneNumber;
  }

  else
  {
    if (!v10)
    {
      v11 = +[AMSLogConfig sharedConfig];
    }

    oSLogObject3 = [v11 OSLogObject];
    if (os_log_type_enabled(oSLogObject3, OS_LOG_TYPE_ERROR))
    {
      v19 = AMSLogKey();
      v20 = MEMORY[0x1E696AEC0];
      v21 = objc_opt_class();
      v22 = v21;
      if (v19)
      {
        self = AMSLogKey();
        [v20 stringWithFormat:@"%@: [%@] ", v22, self];
      }

      else
      {
        [v20 stringWithFormat:@"%@: ", v21];
      }
      selfCopy2 = ;
      v26 = AMSHashIfNeeded(_voicePreferredPhoneNumberContext);
      *buf = 138543618;
      v29 = selfCopy2;
      v30 = 2112;
      v31 = v26;
      _os_log_impl(&dword_192869000, oSLogObject3, OS_LOG_TYPE_ERROR, "%{public}@Failed to fetch the device's phone number. phoneNumberInfo = %@", buf, 0x16u);
      if (v19)
      {

        selfCopy2 = self;
      }
    }

    v25 = 0;
  }

  return v25;
}

+ (NSString)regionCode
{
  v14 = *MEMORY[0x1E69E9840];
  v2 = MGCopyAnswerWithError();
  if (!v2)
  {
    v3 = +[AMSLogConfig sharedConfig];
    if (!v3)
    {
      v3 = +[AMSLogConfig sharedConfig];
    }

    oSLogObject = [v3 OSLogObject];
    if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_ERROR))
    {
      v5 = objc_opt_class();
      v6 = AMSLogKey();
      *buf = 138543874;
      v9 = v5;
      v10 = 2114;
      v11 = v6;
      v12 = 1026;
      v13 = 0;
      _os_log_impl(&dword_192869000, oSLogObject, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] Failed to obtain regionCode: %{public}d", buf, 0x1Cu);
    }
  }

  return v2;
}

+ (NSNumber)screenScale
{
  v2 = MEMORY[0x1E696AD98];
  MGGetFloat32Answer();

  return [v2 numberWithFloat:?];
}

+ (NSNumber)screenHeight
{
  v2 = MGGetSInt64Answer();
  if (v2)
  {
    v2 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:v2];
  }

  return v2;
}

+ (NSNumber)screenWidth
{
  v2 = MGGetSInt64Answer();
  if (v2)
  {
    v2 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:v2];
  }

  return v2;
}

+ (NSString)secureElementID
{
  v22 = *MEMORY[0x1E69E9840];
  v14 = 0;
  v15 = &v14;
  v16 = 0x2050000000;
  v2 = getNFSecureElementClass_softClass;
  v17 = getNFSecureElementClass_softClass;
  if (!getNFSecureElementClass_softClass)
  {
    *&buf = MEMORY[0x1E69E9820];
    *(&buf + 1) = 3221225472;
    v19 = __getNFSecureElementClass_block_invoke;
    v20 = &unk_1E73B3880;
    v21 = &v14;
    __getNFSecureElementClass_block_invoke(&buf);
    v2 = v15[3];
  }

  v3 = v2;
  _Block_object_dispose(&v14, 8);
  if (v2 && getNFHardwareManagerClass())
  {
    v4 = xpc_copy_entitlement_for_self();
    v5 = v4;
    if (v4 && xpc_BOOL_get_value(v4))
    {
      sharedHardwareManager = [getNFHardwareManagerClass() sharedHardwareManager];
      secureElements = [sharedHardwareManager secureElements];

      v8 = [secureElements objectAtIndex:0];
      serialNumber = [v8 serialNumber];

      v10 = serialNumber;
    }

    else
    {
      serialNumber = +[AMSLogConfig sharedConfig];
      if (!serialNumber)
      {
        serialNumber = +[AMSLogConfig sharedConfig];
      }

      secureElements = [serialNumber OSLogObject];
      if (os_log_type_enabled(secureElements, OS_LOG_TYPE_ERROR))
      {
        v12 = objc_opt_class();
        LODWORD(buf) = 138543362;
        *(&buf + 4) = v12;
        _os_log_impl(&dword_192869000, secureElements, OS_LOG_TYPE_ERROR, "%{public}@: The current process is missing the entitlement com.apple.nfcd.hwmanager", &buf, 0xCu);
      }

      v10 = 0;
    }
  }

  else
  {
    v5 = +[AMSLogConfig sharedConfig];
    if (!v5)
    {
      v5 = +[AMSLogConfig sharedConfig];
    }

    serialNumber = [v5 OSLogObject];
    if (os_log_type_enabled(serialNumber, OS_LOG_TYPE_ERROR))
    {
      v11 = objc_opt_class();
      LODWORD(buf) = 138543362;
      *(&buf + 4) = v11;
      _os_log_impl(&dword_192869000, serialNumber, OS_LOG_TYPE_ERROR, "%{public}@: NearField classes unavailable", &buf, 0xCu);
    }

    v10 = 0;
  }

  return v10;
}

+ (NSString)serialNumber
{
  v14 = *MEMORY[0x1E69E9840];
  v2 = MGCopyAnswerWithError();
  if (!v2)
  {
    v3 = +[AMSLogConfig sharedConfig];
    if (!v3)
    {
      v3 = +[AMSLogConfig sharedConfig];
    }

    oSLogObject = [v3 OSLogObject];
    if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_ERROR))
    {
      v5 = objc_opt_class();
      v6 = AMSLogKey();
      *buf = 138543874;
      v9 = v5;
      v10 = 2114;
      v11 = v6;
      v12 = 1026;
      v13 = 0;
      _os_log_impl(&dword_192869000, oSLogObject, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] Failed to obtain serial number: %{public}d", buf, 0x1Cu);
    }
  }

  return v2;
}

+ (NSString)thinnedAppVariantId
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
  productType = [self productType];
  if (productType)
  {
    [v3 addObject:productType];
  }

  compatibleProductType = [self compatibleProductType];
  if (compatibleProductType)
  {
    [v3 addObject:compatibleProductType];
  }

  v6 = [v3 componentsJoinedByString:@" "];

  return v6;
}

+ (id)voicePreferredPACToken
{
  voicePreferredPhoneNumberContextInfo = [self voicePreferredPhoneNumberContextInfo];
  v3 = [AMSPACTokenTask alloc];
  simLabel = [voicePreferredPhoneNumberContextInfo simLabel];
  v5 = [(AMSPACTokenTask *)v3 initWithSimLabelID:simLabel];
  perform = [(AMSPACTokenTask *)v5 perform];

  return perform;
}

+ (BOOL)deviceIsChinaSKU
{
  if (qword_1ED6E28C8 != -1)
  {
    dispatch_once(&qword_1ED6E28C8, &__block_literal_global_129);
  }

  return _MergedGlobals_101;
}

uint64_t __29__AMSDevice_deviceIsChinaSKU__block_invoke()
{
  result = os_eligibility_get_domain_answer();
  _MergedGlobals_101 = 0;
  return result;
}

+ (BOOL)deviceIsBundle
{
  v26 = *MEMORY[0x1E69E9840];
  v19 = 0;
  v3 = MEMORY[0x193B12820](&v19, a2);
  v4 = v19;
  v5 = [v3 objectForKeyedSubscript:@"DeviceConfigurationFlags"];
  integerValue = [v5 integerValue];

  v7 = +[AMSLogConfig sharedConfig];
  v8 = v7;
  if (v4)
  {
    if (!v7)
    {
      v8 = +[AMSLogConfig sharedConfig];
    }

    oSLogObject = [v8 OSLogObject];
    if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_ERROR))
    {
      v10 = objc_opt_class();
      v11 = AMSLogKey();
      *buf = 138543874;
      v21 = v10;
      v22 = 2114;
      v23 = v11;
      v24 = 2114;
      v25 = v4;
      v12 = "%{public}@: [%{public}@] Failed to retrieve activation record with error: %{public}@";
      v13 = oSLogObject;
      v14 = OS_LOG_TYPE_ERROR;
LABEL_10:
      _os_log_impl(&dword_192869000, v13, v14, v12, buf, 0x20u);
    }
  }

  else
  {
    if (!v7)
    {
      v8 = +[AMSLogConfig sharedConfig];
    }

    oSLogObject = [v8 OSLogObject];
    if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEFAULT))
    {
      v15 = objc_opt_class();
      v11 = AMSLogKey();
      *buf = 138543874;
      v21 = v15;
      v22 = 2114;
      v23 = v11;
      v24 = 2114;
      v25 = v3;
      v12 = "%{public}@: [%{public}@] Fetched activation record: %{public}@";
      v13 = oSLogObject;
      v14 = OS_LOG_TYPE_DEFAULT;
      goto LABEL_10;
    }
  }

  v16 = [[AMSStorageDatabase alloc] initWithDomain:@"com.apple.AppleMediaServices"];
  v17 = [self _deviceIsBundleWithMobileActivationFlag:(integerValue >> 6) & 1 storage:v16 canHonorLasset:+[AMSAcknowledgePrivacyTask hasPreviouslyAcknowledgedAnyBundlePrivacyAcknowledgements](AMSAcknowledgePrivacyTask defaultsFlag:{"hasPreviouslyAcknowledgedAnyBundlePrivacyAcknowledgements"), +[AMSDefaults deviceIsBundleOverride](AMSDefaults, "deviceIsBundleOverride")}];

  return v17;
}

+ (BOOL)deviceIsPersistentAirPlayEnabled
{
  v2 = [objc_alloc(MEMORY[0x1E695E000]) initWithSuiteName:@"com.apple.airplay"];
  v3 = [v2 valueForKey:@"persistentGroupUUID"];
  v4 = v3 != 0;

  return v4;
}

+ (BOOL)isWalletBiometricsEnabled
{
  mEMORY[0x1E69ADFB8] = [MEMORY[0x1E69ADFB8] sharedConnection];
  v3 = [mEMORY[0x1E69ADFB8] effectiveBoolValueForSetting:*MEMORY[0x1E69ADE88]] == 1;

  return v3;
}

+ (id)_voicePreferredPhoneNumberContext
{
  v27 = *MEMORY[0x1E69E9840];
  v2 = +[AMSTelephonyDataCache sharedCache];
  activeContexts = [v2 activeContexts];

  voicePreferred = [activeContexts voicePreferred];
  if (voicePreferred)
  {
    v5 = [activeContexts findForUuid:voicePreferred];
    if (v5)
    {
      v6 = [AMSPhoneNumberContextInfo alloc];
      phoneNumber = [v5 phoneNumber];
      labelID = [v5 labelID];
      uuid = [v5 uuid];
      v10 = [(AMSPhoneNumberContextInfo *)v6 initWithPhoneNumber:phoneNumber simLabel:labelID uuid:uuid isVoicePreferred:1];

      oSLogObject2 = +[AMSLogConfig sharedConfig];
      if (!oSLogObject2)
      {
        oSLogObject2 = +[AMSLogConfig sharedConfig];
      }

      oSLogObject = [oSLogObject2 OSLogObject];
      if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEFAULT))
      {
        v13 = objc_opt_class();
        v14 = AMSLogKey();
        v15 = AMSHashIfNeeded(v10);
        v21 = 138543874;
        v22 = v13;
        v23 = 2114;
        v24 = v14;
        v25 = 2114;
        v26 = v15;
        _os_log_impl(&dword_192869000, oSLogObject, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Successfully fetched the device's phone number context. info = %{public}@", &v21, 0x20u);
      }
    }

    else
    {
      oSLogObject2 = +[AMSLogConfig sharedConfig];
      if (!oSLogObject2)
      {
        oSLogObject2 = +[AMSLogConfig sharedConfig];
      }

      oSLogObject = [oSLogObject2 OSLogObject];
      if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_ERROR))
      {
        v18 = objc_opt_class();
        v19 = AMSLogKey();
        v21 = 138543618;
        v22 = v18;
        v23 = 2114;
        v24 = v19;
        _os_log_impl(&dword_192869000, oSLogObject, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] Failed to fetch the device's phone number. Unable to get the preferred context.", &v21, 0x16u);
      }

      v10 = 0;
    }
  }

  else
  {
    v5 = +[AMSLogConfig sharedConfig];
    if (!v5)
    {
      v5 = +[AMSLogConfig sharedConfig];
    }

    oSLogObject2 = [v5 OSLogObject];
    if (os_log_type_enabled(oSLogObject2, OS_LOG_TYPE_DEFAULT))
    {
      v16 = objc_opt_class();
      v17 = AMSLogKey();
      v21 = 138543618;
      v22 = v16;
      v23 = 2114;
      v24 = v17;
      _os_log_impl(&dword_192869000, oSLogObject2, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Failed to fetch the device's phone number. Unable to get the preferred context's identifier.", &v21, 0x16u);
    }

    v10 = 0;
  }

  return v10;
}

+ (BOOL)_deviceIsBundleWithMobileActivationFlag:(BOOL)flag storage:(id)storage canHonorLasset:(BOOL)lasset defaultsFlag:(BOOL)defaultsFlag
{
  defaultsFlagCopy = defaultsFlag;
  lassetCopy = lasset;
  v31[2] = *MEMORY[0x1E69E9840];
  v25 = 0;
  v9 = [storage isLassetAndReturnError:&v25];
  v10 = v25;
  bOOLValue = [v9 BOOLValue];

  v12 = +[AMSLogConfig sharedConfig];
  v13 = v12;
  if (v10)
  {
    if (!v12)
    {
      v13 = +[AMSLogConfig sharedConfig];
    }

    oSLogObject = [v13 OSLogObject];
    if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_ERROR))
    {
      v15 = objc_opt_class();
      v16 = AMSLogKey();
      *buf = 138543874;
      v27 = v15;
      v28 = 2114;
      v29 = v16;
      v30 = 2114;
      v31[0] = v10;
      _os_log_impl(&dword_192869000, oSLogObject, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] Failed to retrieve lasset storage property: %{public}@", buf, 0x20u);
    }

    if (!defaultsFlagCopy)
    {
      goto LABEL_18;
    }

LABEL_13:
    v20 = +[AMSLogConfig sharedConfig];
    if (!v20)
    {
      v20 = +[AMSLogConfig sharedConfig];
    }

    oSLogObject2 = [v20 OSLogObject];
    if (os_log_type_enabled(oSLogObject2, OS_LOG_TYPE_DEFAULT))
    {
      v22 = objc_opt_class();
      v23 = AMSLogKey();
      *buf = 138543618;
      v27 = v22;
      v28 = 2114;
      v29 = v23;
      _os_log_impl(&dword_192869000, oSLogObject2, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Using defaults is bundle override@", buf, 0x16u);
    }

    flag = 1;
    goto LABEL_18;
  }

  if (!v12)
  {
    v13 = +[AMSLogConfig sharedConfig];
  }

  oSLogObject3 = [v13 OSLogObject];
  if (os_log_type_enabled(oSLogObject3, OS_LOG_TYPE_DEFAULT))
  {
    v18 = objc_opt_class();
    v19 = AMSLogKey();
    *buf = 138544130;
    v27 = v18;
    v28 = 2114;
    v29 = v19;
    v30 = 1024;
    LODWORD(v31[0]) = bOOLValue;
    WORD2(v31[0]) = 1024;
    *(v31 + 6) = lassetCopy;
    _os_log_impl(&dword_192869000, oSLogObject3, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Considering lasset storage property: %d, canHonor: %d@", buf, 0x22u);
  }

  flag = (flag || lassetCopy) & bOOLValue;
  if (defaultsFlagCopy)
  {
    goto LABEL_13;
  }

LABEL_18:

  return flag;
}

+ (id)_mgStringForCFKey:(__CFString *)key
{
  v18 = *MEMORY[0x1E69E9840];
  v4 = MGCopyAnswerWithError();
  if (!v4)
  {
    v5 = +[AMSLogConfig sharedConfig];
    if (!v5)
    {
      v5 = +[AMSLogConfig sharedConfig];
    }

    oSLogObject = [v5 OSLogObject];
    if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_ERROR))
    {
      v7 = objc_opt_class();
      v8 = AMSLogKey();
      *buf = 138544130;
      v11 = v7;
      v12 = 2114;
      v13 = v8;
      v14 = 2114;
      keyCopy = key;
      v16 = 1026;
      v17 = 0;
      _os_log_impl(&dword_192869000, oSLogObject, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] Failed to obtain answer for key %{public}@: %{public}d", buf, 0x26u);
    }
  }

  return v4;
}

@end