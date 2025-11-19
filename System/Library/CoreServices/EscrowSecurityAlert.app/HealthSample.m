@interface HealthSample
+ (BOOL)getIsICDPEnabledForDSIDWithAccountStore:(id)a3;
+ (BOOL)getPasscodeEnabled;
+ (BOOL)testAccount;
+ (id)current;
+ (int)getSOSStatusWithError:(id *)a3;
+ (int64_t)getOTCliqueStatusWithContext:(id)a3 error:(id *)a4;
+ (int64_t)getWStatusWithController:(id)a3 error:(id *)a4;
+ (unint64_t)getAccountTypeWithAccountStore:(id)a3 accountManager:(id)a4;
- (BOOL)isNewerThanHealthSample:(id)a3;
- (BOOL)sameValueAndErrorAsHealthSample:(id)a3 forType:(unint64_t)a4;
- (HealthSample)initWithAuthKitManager:(id)a3 accountStore:(id)a4 wController:(id)a5 otConfigurationContext:(id)a6;
- (HealthSample)initWithCoder:(id)a3;
- (id)errorForType:(unint64_t)a3;
- (id)stateForType:(unint64_t)a3;
- (void)encodeWithCoder:(id)a3;
- (void)logErrors;
@end

@implementation HealthSample

+ (unint64_t)getAccountTypeWithAccountStore:(id)a3 accountManager:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = objc_autoreleasePoolPush();
  if (objc_opt_class() && objc_opt_class())
  {
    v8 = [v5 aa_primaryAppleAccount];
    v9 = v8;
    if (v8)
    {
      v10 = [v8 aa_altDSID];
      if (v10)
      {
        v16 = 0;
        v11 = [v6 authKitAccountWithAltDSID:v10 error:&v16];
        v12 = v16;
        if (v11)
        {
          v13 = [v6 securityLevelForAccount:v11];
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

+ (int64_t)getWStatusWithController:(id)a3 error:(id *)a4
{
  v9 = 0;
  v5 = [a3 walrusStatus:&v9];
  v6 = v9;
  if (a4)
  {
    v6 = v6;
    *a4 = v6;
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

+ (int64_t)getOTCliqueStatusWithContext:(id)a3 error:(id *)a4
{
  v5 = a3;
  v6 = [[OTClique alloc] initWithContextData:v5];

  v7 = [v6 fetchCliqueStatus:a4];
  return v7;
}

+ (int)getSOSStatusWithError:(id *)a3
{
  v4 = SOSCCThisDeviceIsInCircle();
  *a3 = 0;
  return v4;
}

+ (BOOL)testAccount
{
  v2 = +[NSUserDefaults standardUserDefaults];
  v3 = [v2 BOOLForKey:@"_AKAddTestAccountHeader"];

  return v3;
}

+ (BOOL)getIsICDPEnabledForDSIDWithAccountStore:(id)a3
{
  v3 = [a3 aa_primaryAppleAccount];
  v4 = [v3 accountProperties];
  v5 = [v4 objectForKeyedSubscript:@"personID"];

  LOBYTE(v4) = [CDPAccount isICDPEnabledForDSID:v5];
  return v4;
}

+ (BOOL)getPasscodeEnabled
{
  v2 = MGCopyAnswer();
  v3 = [v2 BOOLValue];

  return v3;
}

- (HealthSample)initWithAuthKitManager:(id)a3 accountStore:(id)a4 wController:(id)a5 otConfigurationContext:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
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

    v14->_accountSecurityLevel = [HealthSample getAccountTypeWithAccountStore:v11 accountManager:v10];
    v14->_wAvailable = -1;
    obj = 0;
    v20 = [HealthSample getWStatusWithController:v12 error:&obj];
    v21 = obj;
    v14->_wAvailable = v20;
    objc_storeStrong(&v14->_wAvailableError, v21);
    v28 = 0;
    v22 = [HealthSample getOTCliqueStatusWithContext:v13 error:&v28];
    v23 = v28;
    v14->_otCliqueStatus = v22;
    objc_storeStrong(&v14->_otCliqueStatusError, v23);
    v27 = 0;
    v24 = [HealthSample getSOSStatusWithError:&v27];
    v25 = v27;
    v14->_sosStatus = v24;
    objc_storeStrong(&v14->_sosStatusError, v25);
    v14->_testAccount = +[HealthSample testAccount];
    v14->_iCDPEnabledForDSID = [HealthSample getIsICDPEnabledForDSIDWithAccountStore:v11];
    v14->_passcodeEnabled = +[HealthSample getPasscodeEnabled];
  }

  return v14;
}

- (void)logErrors
{
  v3 = +[CloudServicesAnalytics logger];
  v4 = [(HealthSample *)self wAvailableError];
  [v3 logResultForEvent:@"WAvailable" hardFailure:1 result:v4 withAttributes:0];

  v5 = +[CloudServicesAnalytics logger];
  v6 = [(HealthSample *)self otCliqueStatusError];
  [v5 logResultForEvent:@"OTCliqueStatus" hardFailure:1 result:v6 withAttributes:0];

  v8 = +[CloudServicesAnalytics logger];
  v7 = [(HealthSample *)self sosStatusError];
  [v8 logResultForEvent:@"SOSStatus" hardFailure:1 result:v7 withAttributes:0];
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

- (HealthSample)initWithCoder:(id)a3
{
  v4 = a3;
  v17.receiver = self;
  v17.super_class = HealthSample;
  v5 = [(HealthSample *)&v17 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"timestamp"];
    timestamp = v5->_timestamp;
    v5->_timestamp = v6;

    v5->_internal = [v4 decodeBoolForKey:@"internal"];
    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"build"];
    build = v5->_build;
    v5->_build = v8;

    v5->_accountSecurityLevel = [v4 decodeIntegerForKey:@"accountSecurityLevel"];
    v5->_wAvailable = [v4 decodeIntegerForKey:@"wAvailable"];
    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"wAvailableError"];
    wAvailableError = v5->_wAvailableError;
    v5->_wAvailableError = v10;

    v5->_otCliqueStatus = [v4 decodeIntegerForKey:@"otCliqueStatus"];
    v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"otCliqueStatusError"];
    otCliqueStatusError = v5->_otCliqueStatusError;
    v5->_otCliqueStatusError = v12;

    v5->_sosStatus = [v4 decodeIntForKey:@"sosStatus"];
    v14 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"sosStatusError"];
    sosStatusError = v5->_sosStatusError;
    v5->_sosStatusError = v14;

    v5->_testAccount = [v4 decodeBoolForKey:@"testAccount"];
    v5->_iCDPEnabledForDSID = [v4 decodeBoolForKey:@"iCDPEnabledForDSID"];
    v5->_passcodeEnabled = [v4 decodeBoolForKey:@"passcodeEnabled"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v9 = a3;
  v4 = [(HealthSample *)self timestamp];
  [v9 encodeObject:v4 forKey:@"timestamp"];

  [v9 encodeBool:-[HealthSample internal](self forKey:{"internal"), @"internal"}];
  v5 = [(HealthSample *)self build];
  [v9 encodeObject:v5 forKey:@"build"];

  [v9 encodeInteger:-[HealthSample accountSecurityLevel](self forKey:{"accountSecurityLevel"), @"accountSecurityLevel"}];
  [v9 encodeInteger:-[HealthSample wAvailable](self forKey:{"wAvailable"), @"wAvailable"}];
  v6 = [(HealthSample *)self wAvailableError];
  [v9 encodeObject:v6 forKey:@"wAvailableError"];

  [v9 encodeInteger:-[HealthSample otCliqueStatus](self forKey:{"otCliqueStatus"), @"otCliqueStatus"}];
  v7 = [(HealthSample *)self otCliqueStatusError];
  [v9 encodeObject:v7 forKey:@"otCliqueStatusError"];

  [v9 encodeInt:-[HealthSample sosStatus](self forKey:{"sosStatus"), @"sosStatus"}];
  v8 = [(HealthSample *)self sosStatusError];
  [v9 encodeObject:v8 forKey:@"sosStatusError"];

  [v9 encodeBool:-[HealthSample testAccount](self forKey:{"testAccount"), @"testAccount"}];
  [v9 encodeBool:-[HealthSample iCDPEnabledForDSID](self forKey:{"iCDPEnabledForDSID"), @"iCDPEnabledForDSID"}];
  [v9 encodeBool:-[HealthSample passcodeEnabled](self forKey:{"passcodeEnabled"), @"passcodeEnabled"}];
}

- (id)stateForType:(unint64_t)a3
{
  if (a3 - 3 > 2)
  {
    v3 = 0;
  }

  else
  {
    v3 = *(&off_100010710 + a3 - 3);
  }

  return [(HealthSample *)self valueForKeyPath:v3];
}

- (id)errorForType:(unint64_t)a3
{
  v4 = sub_1000061E8(a3);
  v5 = [(HealthSample *)self valueForKeyPath:v4];

  return v5;
}

- (BOOL)sameValueAndErrorAsHealthSample:(id)a3 forType:(unint64_t)a4
{
  v6 = a3;
  v7 = [(HealthSample *)self stateForType:a4];
  v8 = [v6 stateForType:a4];
  v20 = [v7 isEqualToNumber:v8];
  v9 = [(HealthSample *)self errorForType:a4];
  v10 = [v6 errorForType:a4];

  v11 = [v9 code];
  v12 = [v10 code];
  v13 = [v9 domain];
  v14 = [v13 hash];
  v15 = [v10 domain];
  v16 = [v15 hash];

  v17 = v20;
  if (v11 != v12)
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

- (BOOL)isNewerThanHealthSample:(id)a3
{
  if (!a3)
  {
    return 1;
  }

  v4 = a3;
  v5 = [(HealthSample *)self timestamp];
  v6 = [v4 timestamp];

  v7 = [v5 compare:v6];
  return v7 != -1;
}

@end