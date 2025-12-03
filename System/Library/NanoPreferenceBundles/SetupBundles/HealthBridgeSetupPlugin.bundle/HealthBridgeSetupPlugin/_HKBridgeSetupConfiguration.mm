@interface _HKBridgeSetupConfiguration
- (_HKBridgeSetupConfiguration)init;
- (_HKBridgeSetupConfiguration)initWithFamilyMember:(id)member device:(id)device healthStore:(id)store;
@end

@implementation _HKBridgeSetupConfiguration

- (_HKBridgeSetupConfiguration)init
{
  v3 = NSStringFromSelector(a2);
  [NSException raise:NSInvalidArgumentException format:@"The -%@ method is not available on %@", v3, objc_opt_class()];

  return 0;
}

- (_HKBridgeSetupConfiguration)initWithFamilyMember:(id)member device:(id)device healthStore:(id)store
{
  memberCopy = member;
  deviceCopy = device;
  storeCopy = store;
  v17.receiver = self;
  v17.super_class = _HKBridgeSetupConfiguration;
  v12 = [(_HKBridgeSetupConfiguration *)&v17 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_familyMember, member);
    objc_storeStrong(&v13->_device, device);
    objc_storeStrong(&v13->_healthStore, store);
    v14 = [[HKMedicalIDStore alloc] initWithHealthStore:v13->_healthStore];
    medicalIDStore = v13->_medicalIDStore;
    v13->_medicalIDStore = v14;
  }

  return v13;
}

@end