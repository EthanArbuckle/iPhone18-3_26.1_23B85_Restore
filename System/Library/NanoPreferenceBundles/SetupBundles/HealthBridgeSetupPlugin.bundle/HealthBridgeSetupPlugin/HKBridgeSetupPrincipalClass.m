@interface HKBridgeSetupPrincipalClass
+ (void)getDeviceProfileIdentifierWithCompletion:(id)a3;
- (HKBridgeSetupPrincipalClass)init;
- (id)viewController;
- (void)_configurationWithCompletion:(id)a3;
- (void)miniFlowStepComplete:(id)a3;
- (void)miniFlowStepComplete:(id)a3 nextControllerClass:(Class)a4;
@end

@implementation HKBridgeSetupPrincipalClass

- (HKBridgeSetupPrincipalClass)init
{
  v7.receiver = self;
  v7.super_class = HKBridgeSetupPrincipalClass;
  v2 = [(HKBridgeSetupPrincipalClass *)&v7 init];
  v3 = v2;
  if (v2)
  {
    v2->_loadingConfiguration = 1;
    v5[0] = _NSConcreteStackBlock;
    v5[1] = 3221225472;
    v5[2] = sub_1154;
    v5[3] = &unk_C2D8;
    v6 = v2;
    [(HKBridgeSetupPrincipalClass *)v6 _configurationWithCompletion:v5];
  }

  return v3;
}

- (void)_configurationWithCompletion:(id)a3
{
  v4 = a3;
  v5 = objc_opt_class();
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_13B8;
  v7[3] = &unk_C328;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  [v5 getDeviceProfileIdentifierWithCompletion:v7];
}

+ (void)getDeviceProfileIdentifierWithCompletion:(id)a3
{
  v3 = a3;
  v4 = +[NRPairedDeviceRegistry sharedInstance];
  v5 = +[NRPairedDeviceRegistry activeDeviceSelectorBlock];
  v6 = [v4 getAllDevicesWithArchivedAltAccountDevicesMatching:v5];
  v7 = [v6 firstObject];

  v8 = [v7 valueForProperty:NRDevicePropertyIsAltAccount];
  [v8 BOOLValue];

  v9 = [HKProfileStore alloc];
  v10 = objc_alloc_init(HKHealthStore);
  v11 = [v9 initWithHealthStore:v10];

  v12 = [v7 pairingID];
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_177C;
  v15[3] = &unk_C350;
  v16 = v7;
  v17 = v3;
  v13 = v7;
  v14 = v3;
  [v11 fetchProfileIdentifierForNRDeviceUUID:v12 completion:v15];
}

- (id)viewController
{
  firstController = self->_firstController;
  if (firstController)
  {
    v3 = firstController;
  }

  else
  {
    v3 = objc_alloc_init(HKBridgeSetupEmergencyCallAccessController);
    v5 = [(HKBridgeSetupPrincipalClass *)self delegate];
    [(HKBridgeSetupEmergencyCallAccessController *)v3 setDelegate:v5];

    [(HKBridgeSetupEmergencyCallAccessController *)v3 setMiniFlowDelegate:self];
  }

  return v3;
}

- (void)miniFlowStepComplete:(id)a3
{
  v8 = a3;
  v4 = [v8 isMemberOfClass:objc_opt_class()];
  v5 = HKBridgeSetupMedicalIDController;
  if (v4 || (v6 = [v8 isMemberOfClass:objc_opt_class()], v5 = HKBridgeSetupEmergencyCallAccessController, v6))
  {
    v7 = [[v5 alloc] initWithConfiguration:self->_configuration];
    [v7 setMiniFlowDelegate:self];
    [(HKBridgeSetupPrincipalClass *)self pushController:v7 animated:1];
  }

  else
  {
    [v8 isMemberOfClass:objc_opt_class()];
    v7 = [(HKBridgeSetupPrincipalClass *)self delegate];
    [v7 buddyControllerDone:self];
  }
}

- (void)miniFlowStepComplete:(id)a3 nextControllerClass:(Class)a4
{
  v5 = objc_alloc_init(a4);
  [v5 setMiniFlowDelegate:self];
  [(HKBridgeSetupPrincipalClass *)self pushController:v5 animated:1];
}

@end