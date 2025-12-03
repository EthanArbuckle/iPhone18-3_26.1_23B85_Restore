@interface HealthSample
+ (BOOL)getIsICDPEnabledForDSIDWithAccountStore:(id)store;
+ (BOOL)getPasscodeEnabled;
+ (BOOL)testAccount;
+ (id)current;
+ (int)getSOSStatusWithError:(id *)error;
+ (int64_t)getOTCliqueStatusWithContext:(id)context error:(id *)error;
+ (int64_t)getWStatusWithController:(id)controller error:(id *)error;
+ (unint64_t)getAccountTypeWithAccountStore:(id)store accountManager:(id)manager;
- (BOOL)isNewerThanHealthSample:(id)sample;
- (BOOL)sameValueAndErrorAsHealthSample:(id)sample forType:(unint64_t)type;
- (HealthSample)initWithAuthKitManager:(id)manager accountStore:(id)store wController:(id)controller otConfigurationContext:(id)context;
- (HealthSample)initWithCoder:(id)coder;
- (id)errorForType:(unint64_t)type;
- (id)stateForType:(unint64_t)type;
- (void)encodeWithCoder:(id)coder;
- (void)logErrors;
@end

@implementation HealthSample

+ (unint64_t)getAccountTypeWithAccountStore:(id)store accountManager:(id)manager
{
  storeCopy = store;
  managerCopy = manager;
  v7 = objc_autoreleasePoolPush();
  if (objc_opt_class() && objc_opt_class())
  {
    aa_primaryAppleAccount = [storeCopy aa_primaryAppleAccount];
    v9 = aa_primaryAppleAccount;
    if (aa_primaryAppleAccount)
    {
      aa_altDSID = [aa_primaryAppleAccount aa_altDSID];
      if (aa_altDSID)
      {
        v16 = 0;
        v11 = [managerCopy authKitAccountWithAltDSID:aa_altDSID error:&v16];
        v12 = v16;
        if (v11)
        {
          v13 = [managerCopy securityLevelForAccount:v11];
        }

        else
        {
          v14 = CloudServicesLog();
          if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
          {
            sub_100007FDC(v12, v14);
          }

          v13 = 0;
        }
      }

      else
      {
        v13 = 0;
      }
    }

    else
    {
      v13 = 0;
    }
  }

  else
  {
    v13 = 0;
  }

  objc_autoreleasePoolPop(v7);

  return v13;
}

+ (int64_t)getWStatusWithController:(id)controller error:(id *)error
{
  v9 = 0;
  v5 = [controller walrusStatus:&v9];
  v6 = v9;
  if (error)
  {
    v6 = v6;
    *error = v6;
  }

  if (v6)
  {
    v7 = -1;
  }

  else
  {
    v7 = v5 == 1;
  }

  return v7;
}

+ (int64_t)getOTCliqueStatusWithContext:(id)context error:(id *)error
{
  contextCopy = context;
  v6 = [[OTClique alloc] initWithContextData:contextCopy];

  v7 = [v6 fetchCliqueStatus:error];
  return v7;
}

+ (int)getSOSStatusWithError:(id *)error
{
  v4 = SOSCCThisDeviceIsInCircle();
  *error = 0;
  return v4;
}

+ (BOOL)testAccount
{
  v2 = +[NSUserDefaults standardUserDefaults];
  v3 = [v2 BOOLForKey:@"_AKAddTestAccountHeader"];

  return v3;
}

+ (BOOL)getIsICDPEnabledForDSIDWithAccountStore:(id)store
{
  aa_primaryAppleAccount = [store aa_primaryAppleAccount];
  accountProperties = [aa_primaryAppleAccount accountProperties];
  v5 = [accountProperties objectForKeyedSubscript:@"personID"];

  LOBYTE(accountProperties) = [CDPAccount isICDPEnabledForDSID:v5];
  return accountProperties;
}

+ (BOOL)getPasscodeEnabled
{
  v2 = MGCopyAnswer();
  bOOLValue = [v2 BOOLValue];

  return bOOLValue;
}

- (HealthSample)initWithAuthKitManager:(id)manager accountStore:(id)store wController:(id)controller otConfigurationContext:(id)context
{
  managerCopy = manager;
  storeCopy = store;
  controllerCopy = controller;
  contextCopy = context;
  v30.receiver = self;
  v30.super_class = HealthSample;
  v14 = [(HealthSample *)&v30 init];
  if (v14)
  {
    v15 = +[NSDate date];
    timestamp = v14->_timestamp;
    v14->_timestamp = v15;

    v14->_internal = os_variant_has_internal_diagnostics();
    v17 = _CFCopySystemVersionDictionary();
    v18 = [v17 objectForKeyedSubscript:_kCFSystemVersionBuildVersionKey];
    build = v14->_build;
    v14->_build = v18;

    v14->_accountSecurityLevel = [HealthSample getAccountTypeWithAccountStore:storeCopy accountManager:managerCopy];
    v14->_wAvailable = -1;
    obj = 0;
    v20 = [HealthSample getWStatusWithController:controllerCopy error:&obj];
    v21 = obj;
    v14->_wAvailable = v20;
    objc_storeStrong(&v14->_wAvailableError, v21);
    v28 = 0;
    v22 = [HealthSample getOTCliqueStatusWithContext:contextCopy error:&v28];
    v23 = v28;
    v14->_otCliqueStatus = v22;
    objc_storeStrong(&v14->_otCliqueStatusError, v23);
    v27 = 0;
    v24 = [HealthSample getSOSStatusWithError:&v27];
    v25 = v27;
    v14->_sosStatus = v24;
    objc_storeStrong(&v14->_sosStatusError, v25);
    v14->_testAccount = +[HealthSample testAccount];
    v14->_iCDPEnabledForDSID = [HealthSample getIsICDPEnabledForDSIDWithAccountStore:storeCopy];
    v14->_passcodeEnabled = +[HealthSample getPasscodeEnabled];
  }

  return v14;
}

- (void)logErrors
{
  v3 = +[CloudServicesAnalytics logger];
  wAvailableError = [(HealthSample *)self wAvailableError];
  [v3 logResultForEvent:@"WAvailable" hardFailure:1 result:wAvailableError withAttributes:0];

  v5 = +[CloudServicesAnalytics logger];
  otCliqueStatusError = [(HealthSample *)self otCliqueStatusError];
  [v5 logResultForEvent:@"OTCliqueStatus" hardFailure:1 result:otCliqueStatusError withAttributes:0];

  v8 = +[CloudServicesAnalytics logger];
  sosStatusError = [(HealthSample *)self sosStatusError];
  [v8 logResultForEvent:@"SOSStatus" hardFailure:1 result:sosStatusError withAttributes:0];
}

+ (id)current
{
  v2 = [HealthSample alloc];
  v3 = +[AKAccountManager sharedInstance];
  v4 = +[ACAccountStore defaultStore];
  v5 = objc_alloc_init(CDPWalrusStateController);
  v6 = objc_alloc_init(OTConfigurationContext);
  v7 = [(HealthSample *)v2 initWithAuthKitManager:v3 accountStore:v4 wController:v5 otConfigurationContext:v6];

  return v7;
}

- (HealthSample)initWithCoder:(id)coder
{
  coderCopy = coder;
  v17.receiver = self;
  v17.super_class = HealthSample;
  v5 = [(HealthSample *)&v17 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"timestamp"];
    timestamp = v5->_timestamp;
    v5->_timestamp = v6;

    v5->_internal = [coderCopy decodeBoolForKey:@"internal"];
    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"build"];
    build = v5->_build;
    v5->_build = v8;

    v5->_accountSecurityLevel = [coderCopy decodeIntegerForKey:@"accountSecurityLevel"];
    v5->_wAvailable = [coderCopy decodeIntegerForKey:@"wAvailable"];
    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"wAvailableError"];
    wAvailableError = v5->_wAvailableError;
    v5->_wAvailableError = v10;

    v5->_otCliqueStatus = [coderCopy decodeIntegerForKey:@"otCliqueStatus"];
    v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"otCliqueStatusError"];
    otCliqueStatusError = v5->_otCliqueStatusError;
    v5->_otCliqueStatusError = v12;

    v5->_sosStatus = [coderCopy decodeIntForKey:@"sosStatus"];
    v14 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"sosStatusError"];
    sosStatusError = v5->_sosStatusError;
    v5->_sosStatusError = v14;

    v5->_testAccount = [coderCopy decodeBoolForKey:@"testAccount"];
    v5->_iCDPEnabledForDSID = [coderCopy decodeBoolForKey:@"iCDPEnabledForDSID"];
    v5->_passcodeEnabled = [coderCopy decodeBoolForKey:@"passcodeEnabled"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  timestamp = [(HealthSample *)self timestamp];
  [coderCopy encodeObject:timestamp forKey:@"timestamp"];

  [coderCopy encodeBool:-[HealthSample internal](self forKey:{"internal"), @"internal"}];
  build = [(HealthSample *)self build];
  [coderCopy encodeObject:build forKey:@"build"];

  [coderCopy encodeInteger:-[HealthSample accountSecurityLevel](self forKey:{"accountSecurityLevel"), @"accountSecurityLevel"}];
  [coderCopy encodeInteger:-[HealthSample wAvailable](self forKey:{"wAvailable"), @"wAvailable"}];
  wAvailableError = [(HealthSample *)self wAvailableError];
  [coderCopy encodeObject:wAvailableError forKey:@"wAvailableError"];

  [coderCopy encodeInteger:-[HealthSample otCliqueStatus](self forKey:{"otCliqueStatus"), @"otCliqueStatus"}];
  otCliqueStatusError = [(HealthSample *)self otCliqueStatusError];
  [coderCopy encodeObject:otCliqueStatusError forKey:@"otCliqueStatusError"];

  [coderCopy encodeInt:-[HealthSample sosStatus](self forKey:{"sosStatus"), @"sosStatus"}];
  sosStatusError = [(HealthSample *)self sosStatusError];
  [coderCopy encodeObject:sosStatusError forKey:@"sosStatusError"];

  [coderCopy encodeBool:-[HealthSample testAccount](self forKey:{"testAccount"), @"testAccount"}];
  [coderCopy encodeBool:-[HealthSample iCDPEnabledForDSID](self forKey:{"iCDPEnabledForDSID"), @"iCDPEnabledForDSID"}];
  [coderCopy encodeBool:-[HealthSample passcodeEnabled](self forKey:{"passcodeEnabled"), @"passcodeEnabled"}];
}

- (id)stateForType:(unint64_t)type
{
  if (type - 3 > 2)
  {
    v3 = 0;
  }

  else
  {
    v3 = *(&off_100010710 + type - 3);
  }

  return [(HealthSample *)self valueForKeyPath:v3];
}

- (id)errorForType:(unint64_t)type
{
  v4 = sub_1000061E8(type);
  v5 = [(HealthSample *)self valueForKeyPath:v4];

  return v5;
}

- (BOOL)sameValueAndErrorAsHealthSample:(id)sample forType:(unint64_t)type
{
  sampleCopy = sample;
  v7 = [(HealthSample *)self stateForType:type];
  v8 = [sampleCopy stateForType:type];
  v20 = [v7 isEqualToNumber:v8];
  v9 = [(HealthSample *)self errorForType:type];
  v10 = [sampleCopy errorForType:type];

  code = [v9 code];
  code2 = [v10 code];
  domain = [v9 domain];
  v14 = [domain hash];
  domain2 = [v10 domain];
  v16 = [domain2 hash];

  v17 = v20;
  if (code != code2)
  {
    v17 = 0;
  }

  if (v14 == v16)
  {
    v18 = v17;
  }

  else
  {
    v18 = 0;
  }

  return v18;
}

- (BOOL)isNewerThanHealthSample:(id)sample
{
  if (!sample)
  {
    return 1;
  }

  sampleCopy = sample;
  timestamp = [(HealthSample *)self timestamp];
  timestamp2 = [sampleCopy timestamp];

  v7 = [timestamp compare:timestamp2];
  return v7 != -1;
}

@end