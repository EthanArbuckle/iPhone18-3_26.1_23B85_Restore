@interface HDClinicalSharingManager
- (HDClinicalSharingManager)initWithProfileExtension:(id)a3;
- (id)_observedDataTypes;
- (void)_registerDataObservation;
- (void)_unregisterDataObservation;
- (void)dealloc;
- (void)didAddSamplesOfTypes:(id)a3 anchor:(id)a4;
- (void)scheduleSharing;
@end

@implementation HDClinicalSharingManager

- (HDClinicalSharingManager)initWithProfileExtension:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = HDClinicalSharingManager;
  v5 = [(HDClinicalSharingManager *)&v9 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_profileExtension, v4);
    v7 = [v4 profile];
    [v7 registerProfileReadyObserver:v6 queue:0];
  }

  return v6;
}

- (void)dealloc
{
  [(HDClinicalSharingManager *)self _unregisterDataObservation];
  v3.receiver = self;
  v3.super_class = HDClinicalSharingManager;
  [(HDClinicalSharingManager *)&v3 dealloc];
}

- (void)scheduleSharing
{
  WeakRetained = objc_loadWeakRetained(&self->_profileExtension);
  v4 = [WeakRetained createClinicalSharingClient];

  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_5015C;
  v5[3] = &unk_1078C8;
  v5[4] = self;
  [v4 scheduleSharingHealthDataWithReason:2 completion:v5];
}

- (id)_observedDataTypes
{
  v2 = [HKObjectType categoryTypeForIdentifier:HKCategoryTypeIdentifierHighHeartRateEvent];
  v12[0] = v2;
  v3 = [HKObjectType categoryTypeForIdentifier:HKCategoryTypeIdentifierIrregularHeartRhythmEvent];
  v12[1] = v3;
  v4 = [HKObjectType categoryTypeForIdentifier:HKCategoryTypeIdentifierLowHeartRateEvent];
  v12[2] = v4;
  v5 = +[HKObjectType electrocardiogramType];
  v12[3] = v5;
  v6 = [HKObjectType quantityTypeForIdentifier:HKQuantityTypeIdentifierBloodPressureDiastolic];
  v12[4] = v6;
  v7 = [HKObjectType quantityTypeForIdentifier:HKQuantityTypeIdentifierBloodPressureSystolic];
  v12[5] = v7;
  v8 = [HKObjectType quantityTypeForIdentifier:HKQuantityTypeIdentifierBodyMass];
  v12[6] = v8;
  v9 = [HKObjectType quantityTypeForIdentifier:HKQuantityTypeIdentifierNumberOfTimesFallen];
  v12[7] = v9;
  v10 = [NSArray arrayWithObjects:v12 count:8];

  return v10;
}

- (void)_registerDataObservation
{
  WeakRetained = objc_loadWeakRetained(&self->_profileExtension);
  v4 = [WeakRetained profile];
  v5 = [v4 dataManager];

  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v6 = [(HDClinicalSharingManager *)self _observedDataTypes];
  v7 = [v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v12;
    do
    {
      v10 = 0;
      do
      {
        if (*v12 != v9)
        {
          objc_enumerationMutation(v6);
        }

        [v5 addObserver:self forDataType:*(*(&v11 + 1) + 8 * v10)];
        v10 = v10 + 1;
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v8);
  }
}

- (void)_unregisterDataObservation
{
  WeakRetained = objc_loadWeakRetained(&self->_profileExtension);
  v4 = [WeakRetained profile];
  v5 = [v4 dataManager];

  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v6 = [(HDClinicalSharingManager *)self _observedDataTypes];
  v7 = [v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v12;
    do
    {
      v10 = 0;
      do
      {
        if (*v12 != v9)
        {
          objc_enumerationMutation(v6);
        }

        [v5 removeObserver:self forDataType:*(*(&v11 + 1) + 8 * v10)];
        v10 = v10 + 1;
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v8);
  }
}

- (void)didAddSamplesOfTypes:(id)a3 anchor:(id)a4
{
  _HKInitializeLogging();
  v5 = HKLogHealthRecords;
  if (os_log_type_enabled(HKLogHealthRecords, OS_LOG_TYPE_DEFAULT))
  {
    v6 = v5;
    *v8 = 138543362;
    *&v8[4] = objc_opt_class();
    v7 = *&v8[4];
    _os_log_impl(&dword_0, v6, OS_LOG_TYPE_DEFAULT, "%{public}@ scheduling clinical sharing for added samples", v8, 0xCu);
  }

  [(HDClinicalSharingManager *)self scheduleSharing];
}

@end