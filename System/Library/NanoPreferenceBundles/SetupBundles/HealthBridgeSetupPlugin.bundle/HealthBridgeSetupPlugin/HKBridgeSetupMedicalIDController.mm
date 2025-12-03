@interface HKBridgeSetupMedicalIDController
- (BPSSetupMiniFlowControllerDelegate)miniFlowDelegate;
- (HKBridgeSetupMedicalIDController)initWithConfiguration:(id)configuration;
- (id)detailString;
- (id)imageResourceBundleIdentifier;
- (id)suggestedButtonTitle;
- (id)titleString;
- (void)_dismissMedicalID;
- (void)_loadMedicalIDDataFromHealthStore;
- (void)_presentMedicalID;
- (void)_updateHealthProfileInformationFromMedicalIDData;
- (void)medicalIDViewControllerDidCancel:(id)cancel;
- (void)medicalIDViewControllerDidSave:(id)save;
@end

@implementation HKBridgeSetupMedicalIDController

- (HKBridgeSetupMedicalIDController)initWithConfiguration:(id)configuration
{
  configurationCopy = configuration;
  v14.receiver = self;
  v14.super_class = HKBridgeSetupMedicalIDController;
  v5 = [(HKBridgeSetupMedicalIDController *)&v14 init];
  v6 = v5;
  if (v5)
  {
    [(HKBridgeSetupMedicalIDController *)v5 setStyle:2];
    v7 = [configurationCopy copy];
    configuration = v6->_configuration;
    v6->_configuration = v7;

    healthStore = [(_HKBridgeSetupConfiguration *)v6->_configuration healthStore];
    healthStore = v6->_healthStore;
    v6->_healthStore = healthStore;

    medicalIDStore = [(_HKBridgeSetupConfiguration *)v6->_configuration medicalIDStore];
    medicalIDStore = v6->_medicalIDStore;
    v6->_medicalIDStore = medicalIDStore;

    v6->_loadingMedicalIDData = 1;
    [(HKBridgeSetupMedicalIDController *)v6 _loadMedicalIDDataFromHealthStore];
  }

  return v6;
}

- (void)_loadMedicalIDDataFromHealthStore
{
  medicalIDStore = self->_medicalIDStore;
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_1B3C;
  v3[3] = &unk_C3C8;
  v3[4] = self;
  [(HKMedicalIDStore *)medicalIDStore fetchMedicalIDDataWithCompletion:v3];
}

- (void)_presentMedicalID
{
  v8 = +[MIUIDisplayConfiguration standardConfiguration];
  [v8 setAccessPoint:8];
  [v8 setIsShareDuringEmergencyCallVisible:0];
  [v8 setShouldSaveDataToHealthDetails:1];
  v3 = [[MIUIMedicalIDViewController alloc] initWithHealthStore:self->_healthStore medicalIDData:self->_medicalIDData displayConfiguration:v8];
  v4 = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:0 target:self action:"_dismissMedicalID"];
  navigationItem = [v3 navigationItem];
  [navigationItem setRightBarButtonItem:v4];

  v6 = [[HKNavigationController alloc] initWithRootViewController:v3];
  navigationController = [(HKBridgeSetupMedicalIDController *)self navigationController];
  [navigationController presentViewController:v6 animated:1 completion:0];
}

- (void)_dismissMedicalID
{
  [(HKBridgeSetupMedicalIDController *)self dismissViewControllerAnimated:1 completion:0];
  miniFlowDelegate = [(HKBridgeSetupMedicalIDController *)self miniFlowDelegate];
  [miniFlowDelegate miniFlowStepComplete:self];
}

- (void)medicalIDViewControllerDidCancel:(id)cancel
{
  presentedViewController = [(HKBridgeSetupMedicalIDController *)self presentedViewController];

  if (presentedViewController)
  {

    [(HKBridgeSetupMedicalIDController *)self dismissViewControllerAnimated:1 completion:0];
  }
}

- (void)medicalIDViewControllerDidSave:(id)save
{
  saveCopy = save;
  presentedViewController = [(HKBridgeSetupMedicalIDController *)self presentedViewController];

  if (presentedViewController)
  {
    [(HKBridgeSetupMedicalIDController *)self dismissViewControllerAnimated:1 completion:0];
  }

  medicalID = [saveCopy medicalID];
  medicalIDData = self->_medicalIDData;
  self->_medicalIDData = medicalID;

  [(HKBridgeSetupMedicalIDController *)self _updateHealthProfileInformationFromMedicalIDData];
  miniFlowDelegate = [(HKBridgeSetupMedicalIDController *)self miniFlowDelegate];
  [miniFlowDelegate miniFlowStepComplete:self];
}

- (id)titleString
{
  v3 = [NSBundle bundleForClass:objc_opt_class()];
  v4 = [v3 localizedStringForKey:@"TINKER_MEDICAL_ID_TITLE_%@" value:&stru_C4D8 table:@"Localizable-tinker"];
  familyMember = [(_HKBridgeSetupConfiguration *)self->_configuration familyMember];
  firstName = [familyMember firstName];
  v7 = [NSString stringWithFormat:v4, firstName];

  return v7;
}

- (id)detailString
{
  v2 = [NSBundle bundleForClass:objc_opt_class()];
  v3 = [v2 localizedStringForKey:@"TINKER_MEDICAL_ID_DETAIL" value:&stru_C4D8 table:@"Localizable-tinker"];
  v4 = [NSString stringWithFormat:v3];

  return v4;
}

- (id)suggestedButtonTitle
{
  v2 = [NSBundle bundleForClass:objc_opt_class()];
  v3 = [v2 localizedStringForKey:@"TINKER_MEDICAL_ID_SUGGESTED_BUTTON" value:&stru_C4D8 table:@"Localizable-tinker"];

  return v3;
}

- (id)imageResourceBundleIdentifier
{
  v2 = [NSBundle bundleForClass:objc_opt_class()];
  bundleIdentifier = [v2 bundleIdentifier];

  return bundleIdentifier;
}

- (void)_updateHealthProfileInformationFromMedicalIDData
{
  gregorianBirthday = [(_HKMedicalIDData *)self->_medicalIDData gregorianBirthday];

  if (gregorianBirthday)
  {
    healthStore = self->_healthStore;
    gregorianBirthday2 = [(_HKMedicalIDData *)self->_medicalIDData gregorianBirthday];
    v28 = 0;
    LOBYTE(healthStore) = [(HKHealthStore *)healthStore _setDateOfBirthComponents:gregorianBirthday2 error:&v28];
    v6 = v28;

    if ((healthStore & 1) == 0)
    {
      _HKInitializeLogging();
      v7 = HKLogMedicalID;
      if (os_log_type_enabled(HKLogMedicalID, OS_LOG_TYPE_ERROR))
      {
        sub_4D88(&self->_medicalIDData, v7);
      }
    }
  }

  else
  {
    v6 = 0;
  }

  weight = [(_HKMedicalIDData *)self->_medicalIDData weight];

  if (weight)
  {
    v9 = self->_healthStore;
    weight2 = [(_HKMedicalIDData *)self->_medicalIDData weight];
    v27 = v6;
    v11 = [(HKHealthStore *)v9 _setBodyMassCharacteristicQuantity:weight2 error:&v27];
    v12 = v27;

    if ((v11 & 1) == 0)
    {
      _HKInitializeLogging();
      v13 = HKLogMedicalID;
      if (os_log_type_enabled(HKLogMedicalID, OS_LOG_TYPE_ERROR))
      {
        sub_4E1C(&self->_medicalIDData, v13);
      }
    }
  }

  else
  {
    v12 = v6;
  }

  height = [(_HKMedicalIDData *)self->_medicalIDData height];

  if (height)
  {
    v15 = self->_healthStore;
    height2 = [(_HKMedicalIDData *)self->_medicalIDData height];
    v26 = v12;
    v17 = [(HKHealthStore *)v15 _setHeightCharacteristicQuantity:height2 error:&v26];
    v18 = v26;

    if ((v17 & 1) == 0)
    {
      _HKInitializeLogging();
      v19 = HKLogMedicalID;
      if (os_log_type_enabled(HKLogMedicalID, OS_LOG_TYPE_ERROR))
      {
        sub_4EB0(&self->_medicalIDData, v19);
      }
    }
  }

  else
  {
    v18 = v12;
  }

  if ([(_HKMedicalIDData *)self->_medicalIDData bloodType])
  {
    v20 = self->_healthStore;
    bloodType = [(_HKMedicalIDData *)self->_medicalIDData bloodType];
    v25 = v18;
    v22 = [(HKHealthStore *)v20 _setBloodType:bloodType error:&v25];
    v23 = v25;

    if ((v22 & 1) == 0)
    {
      _HKInitializeLogging();
      v24 = HKLogMedicalID;
      if (os_log_type_enabled(HKLogMedicalID, OS_LOG_TYPE_ERROR))
      {
        sub_4F44(&self->_medicalIDData, v24);
      }
    }
  }

  else
  {
    v23 = v18;
  }
}

- (BPSSetupMiniFlowControllerDelegate)miniFlowDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->miniFlowDelegate);

  return WeakRetained;
}

@end