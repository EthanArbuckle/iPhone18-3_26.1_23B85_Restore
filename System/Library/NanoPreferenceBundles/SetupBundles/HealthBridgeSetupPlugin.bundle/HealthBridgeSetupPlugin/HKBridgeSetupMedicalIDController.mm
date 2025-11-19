@interface HKBridgeSetupMedicalIDController
- (BPSSetupMiniFlowControllerDelegate)miniFlowDelegate;
- (HKBridgeSetupMedicalIDController)initWithConfiguration:(id)a3;
- (id)detailString;
- (id)imageResourceBundleIdentifier;
- (id)suggestedButtonTitle;
- (id)titleString;
- (void)_dismissMedicalID;
- (void)_loadMedicalIDDataFromHealthStore;
- (void)_presentMedicalID;
- (void)_updateHealthProfileInformationFromMedicalIDData;
- (void)medicalIDViewControllerDidCancel:(id)a3;
- (void)medicalIDViewControllerDidSave:(id)a3;
@end

@implementation HKBridgeSetupMedicalIDController

- (HKBridgeSetupMedicalIDController)initWithConfiguration:(id)a3
{
  v4 = a3;
  v14.receiver = self;
  v14.super_class = HKBridgeSetupMedicalIDController;
  v5 = [(HKBridgeSetupMedicalIDController *)&v14 init];
  v6 = v5;
  if (v5)
  {
    [(HKBridgeSetupMedicalIDController *)v5 setStyle:2];
    v7 = [v4 copy];
    configuration = v6->_configuration;
    v6->_configuration = v7;

    v9 = [(_HKBridgeSetupConfiguration *)v6->_configuration healthStore];
    healthStore = v6->_healthStore;
    v6->_healthStore = v9;

    v11 = [(_HKBridgeSetupConfiguration *)v6->_configuration medicalIDStore];
    medicalIDStore = v6->_medicalIDStore;
    v6->_medicalIDStore = v11;

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
  v5 = [v3 navigationItem];
  [v5 setRightBarButtonItem:v4];

  v6 = [[HKNavigationController alloc] initWithRootViewController:v3];
  v7 = [(HKBridgeSetupMedicalIDController *)self navigationController];
  [v7 presentViewController:v6 animated:1 completion:0];
}

- (void)_dismissMedicalID
{
  [(HKBridgeSetupMedicalIDController *)self dismissViewControllerAnimated:1 completion:0];
  v3 = [(HKBridgeSetupMedicalIDController *)self miniFlowDelegate];
  [v3 miniFlowStepComplete:self];
}

- (void)medicalIDViewControllerDidCancel:(id)a3
{
  v4 = [(HKBridgeSetupMedicalIDController *)self presentedViewController];

  if (v4)
  {

    [(HKBridgeSetupMedicalIDController *)self dismissViewControllerAnimated:1 completion:0];
  }
}

- (void)medicalIDViewControllerDidSave:(id)a3
{
  v8 = a3;
  v4 = [(HKBridgeSetupMedicalIDController *)self presentedViewController];

  if (v4)
  {
    [(HKBridgeSetupMedicalIDController *)self dismissViewControllerAnimated:1 completion:0];
  }

  v5 = [v8 medicalID];
  medicalIDData = self->_medicalIDData;
  self->_medicalIDData = v5;

  [(HKBridgeSetupMedicalIDController *)self _updateHealthProfileInformationFromMedicalIDData];
  v7 = [(HKBridgeSetupMedicalIDController *)self miniFlowDelegate];
  [v7 miniFlowStepComplete:self];
}

- (id)titleString
{
  v3 = [NSBundle bundleForClass:objc_opt_class()];
  v4 = [v3 localizedStringForKey:@"TINKER_MEDICAL_ID_TITLE_%@" value:&stru_C4D8 table:@"Localizable-tinker"];
  v5 = [(_HKBridgeSetupConfiguration *)self->_configuration familyMember];
  v6 = [v5 firstName];
  v7 = [NSString stringWithFormat:v4, v6];

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
  v3 = [v2 bundleIdentifier];

  return v3;
}

- (void)_updateHealthProfileInformationFromMedicalIDData
{
  v3 = [(_HKMedicalIDData *)self->_medicalIDData gregorianBirthday];

  if (v3)
  {
    healthStore = self->_healthStore;
    v5 = [(_HKMedicalIDData *)self->_medicalIDData gregorianBirthday];
    v28 = 0;
    LOBYTE(healthStore) = [(HKHealthStore *)healthStore _setDateOfBirthComponents:v5 error:&v28];
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

  v8 = [(_HKMedicalIDData *)self->_medicalIDData weight];

  if (v8)
  {
    v9 = self->_healthStore;
    v10 = [(_HKMedicalIDData *)self->_medicalIDData weight];
    v27 = v6;
    v11 = [(HKHealthStore *)v9 _setBodyMassCharacteristicQuantity:v10 error:&v27];
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

  v14 = [(_HKMedicalIDData *)self->_medicalIDData height];

  if (v14)
  {
    v15 = self->_healthStore;
    v16 = [(_HKMedicalIDData *)self->_medicalIDData height];
    v26 = v12;
    v17 = [(HKHealthStore *)v15 _setHeightCharacteristicQuantity:v16 error:&v26];
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
    v21 = [(_HKMedicalIDData *)self->_medicalIDData bloodType];
    v25 = v18;
    v22 = [(HKHealthStore *)v20 _setBloodType:v21 error:&v25];
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