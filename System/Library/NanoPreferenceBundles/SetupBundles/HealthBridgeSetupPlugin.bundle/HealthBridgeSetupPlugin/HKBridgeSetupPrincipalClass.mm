@interface HKBridgeSetupPrincipalClass
+ (void)getDeviceProfileIdentifierWithCompletion:(id)completion;
- (HKBridgeSetupPrincipalClass)init;
- (id)viewController;
- (void)_configurationWithCompletion:(id)completion;
- (void)miniFlowStepComplete:(id)complete;
- (void)miniFlowStepComplete:(id)complete nextControllerClass:(Class)class;
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

- (void)_configurationWithCompletion:(id)completion
{
  completionCopy = completion;
  v5 = objc_opt_class();
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_13B8;
  v7[3] = &unk_C328;
  v7[4] = self;
  v8 = completionCopy;
  v6 = completionCopy;
  [v5 getDeviceProfileIdentifierWithCompletion:v7];
}

+ (void)getDeviceProfileIdentifierWithCompletion:(id)completion
{
  completionCopy = completion;
  v4 = +[NRPairedDeviceRegistry sharedInstance];
  v5 = +[NRPairedDeviceRegistry activeDeviceSelectorBlock];
  v6 = [v4 getAllDevicesWithArchivedAltAccountDevicesMatching:v5];
  firstObject = [v6 firstObject];

  v8 = [firstObject valueForProperty:NRDevicePropertyIsAltAccount];
  [v8 BOOLValue];

  v9 = [HKProfileStore alloc];
  v10 = objc_alloc_init(HKHealthStore);
  v11 = [v9 initWithHealthStore:v10];

  pairingID = [firstObject pairingID];
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_177C;
  v15[3] = &unk_C350;
  v16 = firstObject;
  v17 = completionCopy;
  v13 = firstObject;
  v14 = completionCopy;
  [v11 fetchProfileIdentifierForNRDeviceUUID:pairingID completion:v15];
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
    delegate = [(HKBridgeSetupPrincipalClass *)self delegate];
    [(HKBridgeSetupEmergencyCallAccessController *)v3 setDelegate:delegate];

    [(HKBridgeSetupEmergencyCallAccessController *)v3 setMiniFlowDelegate:self];
  }

  return v3;
}

- (void)miniFlowStepComplete:(id)complete
{
  completeCopy = complete;
  v4 = [completeCopy isMemberOfClass:objc_opt_class()];
  v5 = HKBridgeSetupMedicalIDController;
  if (v4 || (v6 = [completeCopy isMemberOfClass:objc_opt_class()], v5 = HKBridgeSetupEmergencyCallAccessController, v6))
  {
    delegate = [[v5 alloc] initWithConfiguration:self->_configuration];
    [delegate setMiniFlowDelegate:self];
    [(HKBridgeSetupPrincipalClass *)self pushController:delegate animated:1];
  }

  else
  {
    [completeCopy isMemberOfClass:objc_opt_class()];
    delegate = [(HKBridgeSetupPrincipalClass *)self delegate];
    [delegate buddyControllerDone:self];
  }
}

- (void)miniFlowStepComplete:(id)complete nextControllerClass:(Class)class
{
  v5 = objc_alloc_init(class);
  [v5 setMiniFlowDelegate:self];
  [(HKBridgeSetupPrincipalClass *)self pushController:v5 animated:1];
}

@end