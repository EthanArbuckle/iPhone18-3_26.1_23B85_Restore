@interface ADCoreSettings
+ (id)sharedInstance;
- (ACAccount)iCloudAccount;
- (ACAccount)iTunesStoreAccount;
- (ADCoreSettings)init;
- (BOOL)educationModeEnabled;
- (BOOL)isAccountRestricted;
- (BOOL)isManagedAppleID;
- (BOOL)isManagediCloudAccount;
- (BOOL)isManagediTunesAccount;
- (BOOL)isPersonalizedAdsEnabled;
- (BOOL)isProtoTeenState;
- (BOOL)isRestrictedByScreenTime;
- (BOOL)unitTesting;
- (NSString)bundleIdentifier;
- (NSString)customJinglePayload;
- (NSString)iCloudAccountIdentifier;
- (NSString)iCloudDSID;
- (NSString)iTunesAccountDSID;
- (NSString)iTunesStorefront;
- (NSString)localeIdentifier;
- (NSString)longBuildVersion;
- (NSString)shortBuildVersion;
- (NSString)shortModelType;
- (NSString)storefrontLocalizationLanguage;
- (NSURL)defaultConfigurationServerURL;
- (NSURL)defaultServerURL;
- (float)timezone;
- (id)adprivacydBag;
- (id)deviceDescription;
- (int)connectionType;
- (int)deviceRunStateForBundleIdentifier:(id)identifier;
- (int)maxSegmentSendInterval;
- (int)segmentRetrievalInterval;
- (void)reloadNoServicesRestrictions;
- (void)reloadStorefront:(id)storefront;
- (void)setBundleIdentifier:(id)identifier;
- (void)setITunesStorefront:(id)storefront;
- (void)setStorefrontLocalizationLanguage:(id)language;
@end

@implementation ADCoreSettings

- (void)reloadNoServicesRestrictions
{
  adprivacydBag = [(ADCoreSettings *)self adprivacydBag];
  iTunesStoreAccount = [(ADCoreSettings *)self iTunesStoreAccount];
  v5 = [iTunesStoreAccount ams_isInRestrictedRegionWithBag:adprivacydBag waitForSync:0];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __46__ADCoreSettings_reloadNoServicesRestrictions__block_invoke;
  v6[3] = &unk_278C55438;
  v6[4] = self;
  [v5 addFinishBlock:v6];
}

uint64_t __32__ADCoreSettings_sharedInstance__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  sharedInstance__instance_4 = objc_alloc_init(objc_opt_class());

  return MEMORY[0x2821F96F8]();
}

- (ADCoreSettings)init
{
  v19.receiver = self;
  v19.super_class = ADCoreSettings;
  v2 = [(ADCoreSettings *)&v19 init];
  if (v2)
  {
    processInfo = [MEMORY[0x277CCAC38] processInfo];
    operatingSystemVersionString = [processInfo operatingSystemVersionString];
    osVersionAndBuild = v2->_osVersionAndBuild;
    v2->_osVersionAndBuild = operatingSystemVersionString;

    v2->_runState = 1;
    deviceDescription = [(ADCoreSettings *)v2 deviceDescription];
    deviceModel = v2->_deviceModel;
    v2->_deviceModel = deviceDescription;

    iTunesStorefront = v2->_iTunesStorefront;
    v2->_iTunesStorefront = @"NONE";

    iTunesStoreAccount = [(ADCoreSettings *)v2 iTunesStoreAccount];
    adprivacydBag = [(ADCoreSettings *)v2 adprivacydBag];
    v11 = [iTunesStoreAccount ams_isInRestrictedRegionWithBag:adprivacydBag waitForSync:0];
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = __22__ADCoreSettings_init__block_invoke;
    v17[3] = &unk_278C55438;
    v12 = v2;
    v18 = v12;
    [v11 addFinishBlock:v17];

    v12->_jingleTimeoutInterval = 60.0;
    v12->_adServerTimeoutInterval = 30.0;
    v12->_NSURLConnectionTimeout = 30.0;
    v12->_NSURLTransactionTimeout = 60.0;
    mainBundle = [MEMORY[0x277CCA8D8] mainBundle];
    bundleIdentifier = [mainBundle bundleIdentifier];
    bundleIdentifier = v12->_bundleIdentifier;
    v12->_bundleIdentifier = bundleIdentifier;

    if (!v12->_bundleIdentifier)
    {
      v12->_bundleIdentifier = @"com.apple.adplatforms.AdCore";
    }
  }

  return v2;
}

- (id)deviceDescription
{
  v6[1] = *MEMORY[0x277D85DE8];
  v6[0] = 0;
  sysctlbyname("hw.machine", 0, v6, 0, 0);
  v2 = v6 - ((v6[0] + 15) & 0xFFFFFFFFFFFFFFF0);
  sysctlbyname("hw.machine", v2, v6, 0, 0);
  v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:v2];
  v4 = *MEMORY[0x277D85DE8];

  return v3;
}

+ (id)sharedInstance
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __32__ADCoreSettings_sharedInstance__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (sharedInstance__onceToken_4 != -1)
  {
    dispatch_once(&sharedInstance__onceToken_4, block);
  }

  v2 = sharedInstance__instance_4;

  return v2;
}

- (NSString)iTunesAccountDSID
{
  iTunesStoreAccount = [(ADCoreSettings *)self iTunesStoreAccount];
  ams_DSID = [iTunesStoreAccount ams_DSID];
  stringValue = [ams_DSID stringValue];

  if (stringValue)
  {
    v5 = stringValue;
  }

  else
  {
    v5 = @"0";
  }

  v6 = v5;

  return &v5->isa;
}

- (ACAccount)iTunesStoreAccount
{
  ams_sharedAccountStore = [MEMORY[0x277CB8F48] ams_sharedAccountStore];
  ams_activeiTunesAccount = [ams_sharedAccountStore ams_activeiTunesAccount];

  return ams_activeiTunesAccount;
}

- (id)adprivacydBag
{
  if (adprivacydBag_onceToken != -1)
  {
    [ADCoreSettings adprivacydBag];
  }

  v3 = adprivacydBag_bag;

  return v3;
}

uint64_t __31__ADCoreSettings_adprivacydBag__block_invoke()
{
  adprivacydBag_bag = [MEMORY[0x277CEE3F8] bagForProfile:@"adprivacyd" profileVersion:@"1"];

  return MEMORY[0x2821F96F8]();
}

void __22__ADCoreSettings_init__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v7 = a2;
  v5 = a3;
  v6 = *(a1 + 32);
  objc_sync_enter(v6);
  if (!v5)
  {
    *(*(a1 + 32) + 8) = [v7 BOOLValue];
  }

  objc_sync_exit(v6);
}

- (NSString)longBuildVersion
{
  v2 = [MEMORY[0x277CCAC30] predicateWithFormat:@"SELF MATCHES%@", @"([0-9]+)([A-Z])([0-9]{1, 4})([a-z]*)"];
  v3 = MGGetStringAnswer();
  if ([v2 evaluateWithObject:v3])
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (NSString)shortBuildVersion
{
  longBuildVersion = [(ADCoreSettings *)self longBuildVersion];
  if (longBuildVersion)
  {
    v10 = 0;
    v3 = [MEMORY[0x277CCAC68] regularExpressionWithPattern:@"([0-9]+)([A-Z])" options:1 error:&v10];
    v4 = v10;
    v5 = [v3 rangeOfFirstMatchInString:longBuildVersion options:0 range:{0, objc_msgSend(longBuildVersion, "length")}];
    if (!v4 && (v5 != 0x7FFFFFFFFFFFFFFFLL || v6 != 0))
    {
      v8 = [longBuildVersion substringWithRange:{v5, v6}];

      longBuildVersion = v8;
    }
  }

  return longBuildVersion;
}

- (NSString)shortModelType
{
  deviceModel = [(ADCoreSettings *)self deviceModel];
  lowercaseString = [deviceModel lowercaseString];

  v4 = [MEMORY[0x277CCAC30] predicateWithFormat:@"SELF MATCHES %@", @"([a-z]+)([0-9]{1, 2})([, ])([0-9]{1, 2})"];
  if ([v4 evaluateWithObject:lowercaseString])
  {
    v13 = 0;
    v5 = [MEMORY[0x277CCAC68] regularExpressionWithPattern:@"([a-z]+)" options:1 error:&v13];
    v6 = v13;
    v7 = [v5 rangeOfFirstMatchInString:lowercaseString options:0 range:{0, objc_msgSend(lowercaseString, "length")}];
    if (!v6 && (v7 != 0x7FFFFFFFFFFFFFFFLL || v8 != 0))
    {
      v10 = [lowercaseString substringWithRange:{v7, v8}];

      lowercaseString = v10;
    }

    lowercaseString = lowercaseString;
    v11 = lowercaseString;
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (NSURL)defaultServerURL
{
  v2 = objc_alloc(MEMORY[0x277CBEBC0]);
  v3 = +[ADCoreDefaults sharedInstance];
  v4 = [v3 stringForKey:@"AdServerURL"];
  v5 = [v2 initWithString:v4];

  return v5;
}

- (NSURL)defaultConfigurationServerURL
{
  v2 = objc_alloc(MEMORY[0x277CBEBC0]);
  v3 = +[ADCoreDefaults sharedInstance];
  v4 = [v3 stringForKey:@"ConfigurationAdServerURL"];
  v5 = [v2 initWithString:v4];

  return v5;
}

- (NSString)iTunesStorefront
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v3 = selfCopy->_iTunesStorefront;
  objc_sync_exit(selfCopy);

  return v3;
}

- (void)setITunesStorefront:(id)storefront
{
  storefrontCopy = storefront;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if (storefrontCopy)
  {
    objc_storeStrong(&selfCopy->_iTunesStorefront, storefront);
  }

  else
  {
    v6 = [MEMORY[0x277CCACA8] stringWithFormat:@"No iTunes Storefront provided. Updating Storefront information via the bag. This will incur a performance hit."];
    _ADLog(@"iAdSettingsLogging", v6, 0);

    [(ADCoreSettings *)selfCopy reloadStorefront:0];
  }

  objc_sync_exit(selfCopy);
}

- (NSString)storefrontLocalizationLanguage
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v3 = selfCopy->_storefrontLocalizationLanguage;
  objc_sync_exit(selfCopy);

  return v3;
}

- (void)setStorefrontLocalizationLanguage:(id)language
{
  languageCopy = language;
  obj = self;
  objc_sync_enter(obj);
  storefrontLocalizationLanguage = obj->_storefrontLocalizationLanguage;
  obj->_storefrontLocalizationLanguage = languageCopy;

  objc_sync_exit(obj);
}

- (ACAccount)iCloudAccount
{
  ams_sharedAccountStore = [MEMORY[0x277CB8F48] ams_sharedAccountStore];
  ams_activeiCloudAccount = [ams_sharedAccountStore ams_activeiCloudAccount];

  return ams_activeiCloudAccount;
}

- (NSString)iCloudAccountIdentifier
{
  iCloudAccount = [(ADCoreSettings *)self iCloudAccount];
  identifier = [iCloudAccount identifier];

  return identifier;
}

- (NSString)iCloudDSID
{
  iCloudAccount = [(ADCoreSettings *)self iCloudAccount];
  ams_DSID = [iCloudAccount ams_DSID];
  stringValue = [ams_DSID stringValue];

  return stringValue;
}

- (NSString)customJinglePayload
{
  v2 = +[ADCoreDefaults sharedInstance];
  v3 = [v2 stringForKey:@"SegmentCountry"];

  v4 = +[ADCoreDefaults sharedInstance];
  v5 = [v4 stringForKey:@"SegmentGender"];

  v6 = +[ADCoreDefaults sharedInstance];
  v7 = [v6 stringForKey:@"SegmentAge"];

  v8 = +[ADCoreDefaults sharedInstance];
  v9 = [v8 stringForKey:@"SegmentZipCode"];

  v10 = +[ADCoreDefaults sharedInstance];
  v11 = [v10 stringForKey:@"SegmentStorefront"];

  v12 = +[ADCoreDefaults sharedInstance];
  v13 = [v12 stringForKey:@"SegmentAppDownload"];

  if (v3)
  {
    v14 = [(__CFString *)v3 isEqualToString:&stru_2850FB348]^ 1;
  }

  else
  {
    v14 = 0;
  }

  v50 = v3;
  if (v5)
  {
    v15 = [v5 isEqualToString:&stru_2850FB348] ^ 1;
    if (v7)
    {
LABEL_6:
      v16 = [(__CFString *)v7 isEqualToString:&stru_2850FB348]^ 1;
      goto LABEL_9;
    }
  }

  else
  {
    v15 = 0;
    if (v7)
    {
      goto LABEL_6;
    }
  }

  v16 = 0;
LABEL_9:
  v49 = v5;
  if (v9)
  {
    v17 = [v9 isEqualToString:&stru_2850FB348] ^ 1;
    if (v11)
    {
LABEL_11:
      v41 = [(__CFString *)v11 isEqualToString:&stru_2850FB348]^ 1;
      goto LABEL_14;
    }
  }

  else
  {
    v17 = 0;
    if (v11)
    {
      goto LABEL_11;
    }
  }

  v41 = 0;
LABEL_14:
  v47 = v9;
  v48 = v7;
  v45 = v13;
  v46 = v11;
  if (v13)
  {
    v42 = [v13 isEqualToString:&stru_2850FB348] ^ 1;
  }

  else
  {
    LOBYTE(v42) = 0;
  }

  v18 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v19 = objc_alloc_init(MEMORY[0x277CBEB38]);
  [v19 setValue:@"20170429142657" forKey:@"gt"];
  v44 = v19;
  [v18 setValue:v19 forKey:@"mt"];
  v20 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v21 = objc_alloc_init(MEMORY[0x277CBEB38]);
  [v21 setValue:@"0" forKey:@"24"];
  [v21 setValue:@"0" forKey:@"31048"];
  [v21 setValue:@"0" forKey:@"31052"];
  [v20 setValue:v21 forKey:@"sf"];
  v22 = objc_alloc_init(MEMORY[0x277CBEB38]);
  [v22 setValue:@"ITC_7001 forKey:{ITC_7017, ITC_7009, ITC_7015, ITC_7003, ITC_7012, ITC_7010", @"21047"}];
  [v22 setValue:@"ITC_6002 forKey:{ITC_6016, ITC_6014, ITC_6018, ITC_6005, ITC_6007, ITC_6009, ITC_6003, ITC_6008, ITC_6024", @"20"}];
  v43 = v22;
  [v20 setValue:v22 forKey:@"pr"];
  v23 = objc_alloc_init(MEMORY[0x277CBEB38]);
  [v23 setValue:@"20150303" forKey:@"4"];
  [v23 setValue:@"17:0.84" forKey:@"15"];
  if (v14)
  {
    v24 = v23;
    v25 = v50;
  }

  else
  {
    v25 = @"USA";
    v24 = v23;
  }

  [v24 setValue:v25 forKey:@"48"];
  if (v15)
  {
    v26 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@:0.92", v49];
    [v23 setValue:v26 forKey:@"14"];

    if (!v16)
    {
LABEL_22:
      v27 = @"1976";
      v28 = v23;
      goto LABEL_25;
    }
  }

  else
  {
    [v23 setValue:@"10:0.92" forKey:@"14"];
    if (!v16)
    {
      goto LABEL_22;
    }
  }

  v28 = v23;
  v27 = v48;
LABEL_25:
  [v28 setValue:v27 forKey:@"13"];
  if (v17)
  {
    v29 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@:0.99", v9];
    [v23 setValue:v29 forKey:@"2"];
  }

  else
  {
    [v23 setValue:@"95014-2083" forKey:@"2"];
  }

  if (v41)
  {
    v30 = v23;
    v31 = v46;
  }

  else
  {
    v31 = @"143441";
    v30 = v23;
  }

  [v30 setValue:v31 forKey:@"35"];
  [v20 setValue:v23 forKey:@"dm"];
  [v18 setValue:v20 forKey:@"it"];
  v32 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v33 = objc_alloc_init(MEMORY[0x277CBEB38]);
  [v32 setValue:v33 forKey:@"cs"];
  [v32 setValue:&unk_285104E70 forKey:@"bl"];
  v34 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v35 = v34;
  if (v42)
  {
    v36 = v45;
    v37 = [MEMORY[0x277CCACA8] stringWithFormat:@"1:%@", v45];
    [v35 setValue:&stru_2850FB348 forKey:v37];
  }

  else
  {
    [v34 setValue:&stru_2850FB348 forKey:@"1:284910350"];
    v36 = v45;
  }

  [v32 setValue:v35 forKey:@"is"];
  [v18 setValue:v32 forKey:@"sg"];
  [v18 setValue:@"Basel-Display-v1" forKey:@"ver"];
  v38 = objc_alloc_init(MEMORY[0x277CBEB38]);
  [v38 setValue:&unk_285104B48 forKey:@"o"];
  [v18 setValue:v38 forKey:@"st"];
  v39 = [v18 AD_jsonStringWithPrettyPrint:0];

  return v39;
}

- (BOOL)isManagedAppleID
{
  if ([(ADCoreSettings *)self isManagediTunesAccount])
  {
    return 1;
  }

  return [(ADCoreSettings *)self isManagediCloudAccount];
}

- (BOOL)isManagediTunesAccount
{
  iTunesStoreAccount = [(ADCoreSettings *)self iTunesStoreAccount];
  ams_isManagedAppleID = [iTunesStoreAccount ams_isManagedAppleID];

  return ams_isManagedAppleID;
}

- (BOOL)isManagediCloudAccount
{
  iCloudAccount = [(ADCoreSettings *)self iCloudAccount];
  ams_isManagedAppleID = [iCloudAccount ams_isManagedAppleID];

  return ams_isManagedAppleID;
}

- (BOOL)educationModeEnabled
{
  mEMORY[0x277D77BF8] = [MEMORY[0x277D77BF8] sharedManager];
  isSharedIPad = [mEMORY[0x277D77BF8] isSharedIPad];

  v4 = MEMORY[0x277CCACA8];
  v5 = [MEMORY[0x277CCABB0] numberWithBool:isSharedIPad];
  v6 = [v4 stringWithFormat:@"educationModeEnabled %@", v5];
  _ADLog(@"iAdSettingsLogging", v6, 0);

  return isSharedIPad;
}

- (BOOL)isProtoTeenState
{
  v2 = [objc_alloc(MEMORY[0x277CBEBD0]) initWithSuiteName:@"com.apple.AdPlatforms"];
  v3 = [v2 BOOLForKey:@"ProtoAccount"];

  return v3;
}

- (int)deviceRunStateForBundleIdentifier:(id)identifier
{
  v3 = [MEMORY[0x277CC1E70] bundleRecordWithBundleIdentifier:identifier allowPlaceholder:0 error:0];
  signerIdentity = [v3 signerIdentity];
  v5 = signerIdentity;
  if (signerIdentity)
  {
    [signerIdentity rangeOfString:@"Apple iPhone OS Application Signing"];
    v7 = v6 == 0;
  }

  else
  {
    v7 = MGGetBoolAnswer();
  }

  if (v7)
  {
    v8 = 1;
  }

  else
  {
    v8 = 2;
  }

  return v8;
}

- (NSString)bundleIdentifier
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v3 = selfCopy->_bundleIdentifier;
  objc_sync_exit(selfCopy);

  return v3;
}

- (void)setBundleIdentifier:(id)identifier
{
  identifierCopy = identifier;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  objc_storeStrong(&selfCopy->_bundleIdentifier, identifier);
  selfCopy->_runState = [(ADCoreSettings *)selfCopy deviceRunStateForBundleIdentifier:identifierCopy];
  objc_sync_exit(selfCopy);
}

- (float)timezone
{
  date = [MEMORY[0x277CBEAA8] date];
  systemTimeZone = [MEMORY[0x277CBEBB0] systemTimeZone];
  v4 = [systemTimeZone secondsFromGMTForDate:date] / 3600.0;

  return v4;
}

void __46__ADCoreSettings_reloadNoServicesRestrictions__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v9 = a2;
  v5 = a3;
  v6 = *(a1 + 32);
  objc_sync_enter(v6);
  if (!v5)
  {
    v7 = [v9 BOOLValue];
    v8 = [MEMORY[0x277CCACA8] stringWithFormat:@"The no services regional restriction is: %d", v7];
    _ADLog(@"iAdSettingsLogging", v8, 0);

    *(*(a1 + 32) + 8) = v7;
  }

  objc_sync_exit(v6);
}

- (void)reloadStorefront:(id)storefront
{
  storefrontCopy = storefront;
  v5 = objc_autoreleasePoolPush();
  v6 = [MEMORY[0x277CCACA8] stringWithFormat:@"Loading the storefront from the AMS framework."];
  _ADLog(@"iAdSettingsLogging", v6, 0);

  iTunesStoreAccount = [(ADCoreSettings *)self iTunesStoreAccount];
  if (!iTunesStoreAccount)
  {
    v8 = [MEMORY[0x277CCACA8] stringWithFormat:@"No active account. Getting storefront from local account."];
    _ADLog(@"iAdSettingsLogging", v8, 0);

    ams_sharedAccountStore = [MEMORY[0x277CB8F48] ams_sharedAccountStore];
    iTunesStoreAccount = [ams_sharedAccountStore ams_localiTunesAccount];
  }

  ams_storefront = [iTunesStoreAccount ams_storefront];
  v11 = ams_storefront;
  if (ams_storefront && ([ams_storefront isEqualToString:&stru_2850FB348] & 1) == 0)
  {
    [(ADCoreSettings *)self setITunesStorefront:v11];
    ADSaveToPromotedContentKeychain(v11, @"APIDAccountsSettings.storefront");
    defaultCenter = [MEMORY[0x277CCA9A0] defaultCenter];
    [defaultCenter postNotificationName:@"kADIDManager_ChangedNotification" object:@"com.apple.AdLib"];

    if (!storefrontCopy)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  v12 = [MEMORY[0x277CCACA8] stringWithFormat:@"No storefront was found: %@. Forcing a bag fetch", v11];
  _ADLog(@"iAdSettingsLogging", v12, 16);

  [(ADCoreSettings *)self setITunesStorefront:@"NONE"];
  adprivacydBag = [(ADCoreSettings *)self adprivacydBag];
  v14 = [adprivacydBag URLForKey:@"partiality-segment"];
  valuePromise = [v14 valuePromise];

  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __35__ADCoreSettings_reloadStorefront___block_invoke;
  v17[3] = &unk_278C55460;
  v18 = iTunesStoreAccount;
  selfCopy = self;
  [valuePromise addFinishBlock:v17];

  if (storefrontCopy)
  {
LABEL_6:
    storefrontCopy[2](storefrontCopy);
  }

LABEL_7:

  objc_autoreleasePoolPop(v5);
}

void __35__ADCoreSettings_reloadStorefront___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v11 = a2;
  v5 = a3;
  if (v5)
  {
    v6 = [MEMORY[0x277CCACA8] stringWithFormat:@"Error fetching bag with promise: %@", v5];
    _ADLog(@"iAdSettingsLogging", v6, 16);
  }

  if (v11)
  {
    v7 = [*(a1 + 32) ams_storefront];
    v8 = v7;
    if (v7 && ([v7 isEqualToString:&stru_2850FB348] & 1) == 0)
    {
      v9 = [MEMORY[0x277CCACA8] stringWithFormat:@"Received updated storefront from forced bag fetch. Posting change notification for APIDAccounts."];
      _ADLog(@"iAdSettingsLogging", v9, 0);

      [*(a1 + 40) setITunesStorefront:v8];
      ADSaveToPromotedContentKeychain(v8, @"APIDAccountsSettings.storefront");
      v10 = [MEMORY[0x277CCA9A0] defaultCenter];
      [v10 postNotificationName:@"kADIDManager_ChangedNotification" object:@"com.apple.AdLib"];
    }
  }

  else
  {
    v8 = [MEMORY[0x277CCACA8] stringWithFormat:@"No storefront was found after forced bag fetch"];
    _ADLog(@"iAdSettingsLogging", v8, 16);
  }
}

- (BOOL)isAccountRestricted
{
  v3 = +[ADIDManager sharedInstance];
  activeDSIDRecord = [v3 activeDSIDRecord];

  v5 = +[ADCoreSettings sharedInstance];
  educationModeEnabled = [v5 educationModeEnabled];

  v7 = +[ADCoreSettings sharedInstance];
  isManagedAppleID = [v7 isManagedAppleID];

  v9 = +[ADCoreSettings sharedInstance];
  isProtoU13state = [v9 isProtoU13state];

  v11 = +[ADCoreSettings sharedInstance];
  isProtoTeenState = [v11 isProtoTeenState];

  v13 = educationModeEnabled | isManagedAppleID | isProtoU13state | isProtoTeenState;
  if (!activeDSIDRecord)
  {
    goto LABEL_6;
  }

  if (([activeDSIDRecord accountIsU13] & 1) == 0 && (objc_msgSend(activeDSIDRecord, "accountIsU18") & 1) == 0)
  {
    v13 |= [activeDSIDRecord accountAgeUnknown] | isProtoU13state | isProtoTeenState;
LABEL_6:
    v14 = v13 ^ 1;
    goto LABEL_7;
  }

  v14 = 0;
  LOBYTE(v13) = 1;
LABEL_7:
  [(ADCoreSettings *)self setIdentifierForAdvertisingAllowed:v14 & 1];

  return v13 & 1;
}

- (BOOL)isRestrictedByScreenTime
{
  v2 = CFPreferencesCopyAppValue(@"SBParentalControlsCapabilities", @"com.apple.springboard");
  v3 = [v2 containsObject:@"advertising"];

  return v3;
}

- (BOOL)isPersonalizedAdsEnabled
{
  if ([(ADCoreSettings *)self isRestrictedByScreenTime])
  {
    return 0;
  }

  mEMORY[0x277D262A0] = [MEMORY[0x277D262A0] sharedConnection];
  v4 = *MEMORY[0x277D25D28];
  v5 = [mEMORY[0x277D262A0] isBoolSettingLockedDownByRestrictions:*MEMORY[0x277D25D28]];

  if ((v5 & 1) != 0 || [(ADCoreSettings *)self isAccountRestricted])
  {
    return 0;
  }

  mEMORY[0x277D262A0]2 = [MEMORY[0x277D262A0] sharedConnection];
  v6 = [mEMORY[0x277D262A0]2 effectiveBoolValueForSetting:v4] == 1;

  return v6;
}

- (int)connectionType
{
  v2 = +[ADNetworkController sharedNetworkController];
  networkType = [v2 networkType];

  return networkType;
}

- (NSString)localeIdentifier
{
  currentLocale = [MEMORY[0x277CBEAF8] currentLocale];
  localeIdentifier = [currentLocale localeIdentifier];

  return localeIdentifier;
}

- (int)segmentRetrievalInterval
{
  if (!MGGetBoolAnswer() || (+[ADCoreDefaults sharedInstance](ADCoreDefaults, "sharedInstance"), v2 = objc_claimAutoreleasedReturnValue(), [v2 stringForKey:@"adprivacydSegmentIntervalOverride"], v3 = objc_claimAutoreleasedReturnValue(), v4 = objc_msgSend(v3, "integerValue"), v3, v2, v4 <= 0))
  {
    v5 = +[ADCoreDefaults sharedInstance];
    v6 = [v5 stringForKey:@"adprivacydSegmentInterval"];
    integerValue = [v6 integerValue];

    if (integerValue)
    {
      return integerValue;
    }

    else
    {
      return 86400;
    }
  }

  return v4;
}

- (int)maxSegmentSendInterval
{
  if (!MGGetBoolAnswer() || (+[ADCoreDefaults sharedInstance](ADCoreDefaults, "sharedInstance"), v2 = objc_claimAutoreleasedReturnValue(), [v2 stringForKey:@"adprivacydMaxSegmentSendIntervalOverride"], v3 = objc_claimAutoreleasedReturnValue(), v4 = objc_msgSend(v3, "integerValue"), v3, v2, v4 <= 0))
  {
    v5 = +[ADCoreDefaults sharedInstance];
    v6 = [v5 stringForKey:@"adprivacydMaxSegmentSendInterval"];
    integerValue = [v6 integerValue];

    if (integerValue)
    {
      return integerValue;
    }

    else
    {
      return 259200;
    }
  }

  return v4;
}

- (BOOL)unitTesting
{
  if (unitTesting_onceToken != -1)
  {
    [ADCoreSettings unitTesting];
  }

  return unitTesting_areWeUnitTesting;
}

void __29__ADCoreSettings_unitTesting__block_invoke()
{
  if (MGGetBoolAnswer())
  {
    v1 = [MEMORY[0x277CCAC38] processInfo];
    v0 = [v1 arguments];
    unitTesting_areWeUnitTesting = [v0 containsObject:@"-ADUnitTestingScheme"];
  }

  else
  {
    unitTesting_areWeUnitTesting = 0;
  }
}

@end