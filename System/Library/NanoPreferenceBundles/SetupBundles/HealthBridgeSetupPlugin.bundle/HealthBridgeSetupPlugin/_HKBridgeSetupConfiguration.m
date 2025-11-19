@interface _HKBridgeSetupConfiguration
- (_HKBridgeSetupConfiguration)init;
- (_HKBridgeSetupConfiguration)initWithFamilyMember:(id)a3 device:(id)a4 healthStore:(id)a5;
@end

@implementation _HKBridgeSetupConfiguration

- (_HKBridgeSetupConfiguration)init
{
  v3 = NSStringFromSelector(a2);
  [NSException raise:NSInvalidArgumentException format:@"The -%@ method is not available on %@", v3, objc_opt_class()];

  return 0;
}

- (_HKBridgeSetupConfiguration)initWithFamilyMember:(id)a3 device:(id)a4 healthStore:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v17.receiver = self;
  v17.super_class = _HKBridgeSetupConfiguration;
  v12 = [(_HKBridgeSetupConfiguration *)&v17 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_familyMember, a3);
    objc_storeStrong(&v13->_device, a4);
    objc_storeStrong(&v13->_healthStore, a5);
    v14 = [[HKMedicalIDStore alloc] initWithHealthStore:v13->_healthStore];
    medicalIDStore = v13->_medicalIDStore;
    v13->_medicalIDStore = v14;
  }

  return v13;
}

@end