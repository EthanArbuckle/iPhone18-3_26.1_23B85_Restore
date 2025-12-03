@interface HKBridgeSetupEmergencyCallAccessController
- (BPSSetupMiniFlowControllerDelegate)miniFlowDelegate;
- (HKBridgeSetupEmergencyCallAccessController)init;
- (HKBridgeSetupEmergencyCallAccessController)initWithConfiguration:(id)configuration;
- (id)alternateButtonTitle;
- (id)detailString;
- (id)imageResourceBundleIdentifier;
- (id)learnMoreButtonTitle;
- (id)okayButtonTitle;
- (id)suggestedButtonTitle;
- (id)termsOfAddress;
- (id)titleString;
- (void)completeMiniFlowStep;
- (void)learnMoreButtonPressed:(id)pressed;
- (void)okayButtonPressed:(id)pressed;
- (void)updateMedicalIDShareDuringEmergencyInSkippedPane:(BOOL)pane;
@end

@implementation HKBridgeSetupEmergencyCallAccessController

- (HKBridgeSetupEmergencyCallAccessController)initWithConfiguration:(id)configuration
{
  configurationCopy = configuration;
  v20.receiver = self;
  v20.super_class = HKBridgeSetupEmergencyCallAccessController;
  v5 = [(HKBridgeSetupEmergencyCallAccessController *)&v20 init];
  v6 = v5;
  if (v5)
  {
    [(HKBridgeSetupEmergencyCallAccessController *)v5 setStyle:58];
    v7 = [configurationCopy copy];
    configuration = v6->_configuration;
    v6->_configuration = v7;

    healthStore = [(_HKBridgeSetupConfiguration *)v6->_configuration healthStore];
    healthStore = v6->_healthStore;
    v6->_healthStore = healthStore;

    medicalIDStore = [(_HKBridgeSetupConfiguration *)v6->_configuration medicalIDStore];
    medicalIDStore = v6->_medicalIDStore;
    v6->_medicalIDStore = medicalIDStore;

    familyMember = [(_HKBridgeSetupConfiguration *)v6->_configuration familyMember];
    firstName = [familyMember firstName];
    firstName = v6->_firstName;
    v6->_firstName = firstName;

    v16 = v6->_medicalIDStore;
    v18[0] = _NSConcreteStackBlock;
    v18[1] = 3221225472;
    v18[2] = sub_3ADC;
    v18[3] = &unk_C3C8;
    v19 = v6;
    [(HKMedicalIDStore *)v16 fetchMedicalIDDataWithCompletion:v18];
  }

  return v6;
}

- (HKBridgeSetupEmergencyCallAccessController)init
{
  v5.receiver = self;
  v5.super_class = HKBridgeSetupEmergencyCallAccessController;
  v2 = [(HKBridgeSetupEmergencyCallAccessController *)&v5 init];
  v3 = v2;
  if (v2)
  {
    [(HKBridgeSetupEmergencyCallAccessController *)v2 setStyle:26];
  }

  return v3;
}

- (id)titleString
{
  if (!self->_firstName)
  {
    delegate = [(HKBridgeSetupEmergencyCallAccessController *)self delegate];
    setupFlowUserInfo = [delegate setupFlowUserInfo];
    v5 = [setupFlowUserInfo objectForKeyedSubscript:BPSPairingFlowFamilyMember];

    firstName = [v5 firstName];
    firstName = self->_firstName;
    self->_firstName = firstName;
  }

  v8 = [NSBundle bundleForClass:objc_opt_class()];
  v9 = [v8 localizedStringForKey:@"eed_onboarding_share_emergency_call_title_%@" value:&stru_C4D8 table:@"Localizable-tinker"];

  v10 = [NSString localizedStringWithFormat:v9, self->_firstName];

  return v10;
}

- (id)detailString
{
  if (!self->_firstName)
  {
    delegate = [(HKBridgeSetupEmergencyCallAccessController *)self delegate];
    setupFlowUserInfo = [delegate setupFlowUserInfo];
    v5 = [setupFlowUserInfo objectForKeyedSubscript:BPSPairingFlowFamilyMember];

    firstName = [v5 firstName];
    firstName = self->_firstName;
    self->_firstName = firstName;
  }

  v8 = [NSBundle bundleForClass:objc_opt_class()];
  v9 = [v8 localizedAttributedStringForKey:@"eed_onboarding_share_emergency_call_detail_watch_%@" value:&stru_C4D8 table:@"Localizable-tinker"];

  v10 = [NSAttributedString alloc];
  v18 = NSInflectionConceptsKey;
  termsOfAddress = [(HKBridgeSetupEmergencyCallAccessController *)self termsOfAddress];
  v17 = termsOfAddress;
  v12 = [NSArray arrayWithObjects:&v17 count:1];
  v19 = v12;
  v13 = [NSDictionary dictionaryWithObjects:&v19 forKeys:&v18 count:1];
  v14 = [v10 initWithFormat:v9 options:0 locale:0 context:v13, self->_firstName];

  string = [v14 string];

  return string;
}

- (id)suggestedButtonTitle
{
  v2 = [NSBundle bundleForClass:objc_opt_class()];
  v3 = [v2 localizedStringForKey:@"eed_onboarding_share_emergency_call_share_button" value:&stru_C4D8 table:@"Localizable-tinker"];

  return v3;
}

- (id)alternateButtonTitle
{
  v2 = [NSBundle bundleForClass:objc_opt_class()];
  v3 = [v2 localizedStringForKey:@"eed_onboarding_share_emergency_call_dont_share_button" value:&stru_C4D8 table:@"Localizable-tinker"];

  return v3;
}

- (id)okayButtonTitle
{
  v2 = [NSBundle bundleForClass:objc_opt_class()];
  v3 = [v2 localizedStringForKey:@"eed_onboarding_share_emergency_call_set_up_later" value:&stru_C4D8 table:@"Localizable-tinker"];

  return v3;
}

- (id)learnMoreButtonTitle
{
  v2 = [NSBundle bundleForClass:objc_opt_class()];
  v3 = [v2 localizedStringForKey:@"eed_onboarding_share_emergency_call_learn_more" value:&stru_C4D8 table:@"Localizable-tinker"];

  return v3;
}

- (id)imageResourceBundleIdentifier
{
  v2 = [NSBundle bundleForClass:objc_opt_class()];
  bundleIdentifier = [v2 bundleIdentifier];

  return bundleIdentifier;
}

- (id)termsOfAddress
{
  delegate = [(HKBridgeSetupEmergencyCallAccessController *)self delegate];
  setupFlowUserInfo = [delegate setupFlowUserInfo];
  v4 = [setupFlowUserInfo objectForKeyedSubscript:BPSPairingFlowFamilyMember];

  v10 = CNContactAddressingGrammarKey;
  v5 = [NSArray arrayWithObjects:&v10 count:1];
  v6 = objc_alloc_init(CNContactStore);
  v7 = [v4 contactWithKeys:v5 contactStore:v6];

  if (v7)
  {
    termsOfAddress = [v7 termsOfAddress];
  }

  else
  {
    termsOfAddress = &__NSArray0__struct;
  }

  return termsOfAddress;
}

- (void)learnMoreButtonPressed:(id)pressed
{
  v4 = +[MIUIMedicalIDLearnMoreNavigationViewControllerFactory makeViewController];
  [(HKBridgeSetupEmergencyCallAccessController *)self presentViewController:v4 animated:1 completion:0];
}

- (void)updateMedicalIDShareDuringEmergencyInSkippedPane:(BOOL)pane
{
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_452C;
  v3[3] = &unk_C478;
  v3[4] = self;
  paneCopy = pane;
  [HKBridgeSetupPrincipalClass getDeviceProfileIdentifierWithCompletion:v3];
}

- (void)okayButtonPressed:(id)pressed
{
  v4 = objc_opt_class();
  device = [(_HKBridgeSetupConfiguration *)self->_configuration device];
  [BPSFollowUpController markSkippedSetupPaneClass:v4 forDevice:device];

  [(HKBridgeSetupEmergencyCallAccessController *)self completeMiniFlowStep];
}

- (void)completeMiniFlowStep
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_49BC;
  block[3] = &unk_C400;
  block[4] = self;
  dispatch_async(&_dispatch_main_q, block);
}

- (BPSSetupMiniFlowControllerDelegate)miniFlowDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->miniFlowDelegate);

  return WeakRetained;
}

@end