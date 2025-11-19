@interface HKHealthPrivacyServiceObjectPickerViewController
- (HKHealthPrivacyServiceObjectPickerViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (id)_pickerControllerForDocuments;
- (id)_pickerControllerForMedications;
- (id)_pickerControllerForObjectType:(id)a3;
- (id)_pickerControllerForSignedClinicalData;
- (id)_pickerControllerForVisionPrescriptions;
- (id)medicalRecordsForVerifiableClinicalRecord:(id)a3;
- (id)signedClinicalDataRecordForVerifiableClinicalRecord:(id)a3;
- (id)signedRecordsForClinicalRecords:(id)a3;
- (void)_beginAuthorizationSessionWithIdentifier:(id)a3;
- (void)_configureApplicationStateMonitor;
- (void)_configureNavigationController;
- (void)_finishWithError:(id)a3;
- (void)_hostApplicationStateDidChange:(unsigned int)a3;
- (void)_hostDidTerminate;
- (void)_queryMedicalRecordsWithQueryDescriptors:(id)a3 completion:(id)a4;
- (void)pickerControllerDidFinish:(id)a3 error:(id)a4;
- (void)setPromptSession:(id)a3 presentationRequests:(id)a4;
@end

@implementation HKHealthPrivacyServiceObjectPickerViewController

- (HKHealthPrivacyServiceObjectPickerViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  v10.receiver = self;
  v10.super_class = HKHealthPrivacyServiceObjectPickerViewController;
  v4 = [(HKHealthPrivacyServiceObjectPickerViewController *)&v10 initWithNibName:a3 bundle:a4];
  if (v4)
  {
    v5 = objc_alloc_init(HKHealthStore);
    healthStore = v4->_healthStore;
    v4->_healthStore = v5;

    v7 = [[HKAuthorizationStore alloc] initWithHealthStore:v4->_healthStore];
    authorizationStore = v4->_authorizationStore;
    v4->_authorizationStore = v7;
  }

  return v4;
}

- (void)setPromptSession:(id)a3 presentationRequests:(id)a4
{
  v7 = a3;
  v8 = a4;
  objc_storeStrong(&self->_promptSession, a3);
  objc_storeStrong(&self->_presentationRequests, a4);
  v9 = [v7 objectType];
  objectType = self->_objectType;
  self->_objectType = v9;

  v11 = self->_objectType;
  v12 = +[HKUserAnnotatedMedicationType userAnnotatedMedicationType];
  v13 = v12;
  if (v11 == v12)
  {
  }

  else
  {
    v14 = +[HKUserAnnotatedMedicationType userAnnotatedMedicationType];
    if (!v14)
    {

LABEL_9:
      authorizationStore = self->_authorizationStore;
      v30 = 0;
      v19 = [(HKAuthorizationStore *)authorizationStore fetchAuthorizationContextForPromptSession:v7 error:&v30];
      v20 = v30;
      if (v19)
      {
        v24 = [v19 samplesRequiringAuthorization];
        samplesRequiringAuthorization = self->_samplesRequiringAuthorization;
        self->_samplesRequiringAuthorization = v24;

        v21 = [v19 metadata];
        v22 = &OBJC_IVAR___HKHealthPrivacyServiceObjectPickerViewController__metadata;
        goto LABEL_11;
      }

      _HKInitializeLogging();
      v29 = HKLogAuthorization();
      if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
      {
        sub_100005E3C(v7);
      }

LABEL_16:

      [(HKHealthPrivacyServiceObjectPickerViewController *)self _finishWithError:v20];
      goto LABEL_17;
    }

    v15 = v14;
    v16 = self->_objectType;
    v17 = +[HKUserAnnotatedMedicationType userAnnotatedMedicationType];
    LODWORD(v16) = [(HKObjectType *)v16 isEqual:v17];

    if (!v16)
    {
      goto LABEL_9;
    }
  }

  v18 = self->_authorizationStore;
  v31 = 0;
  v19 = [(HKAuthorizationStore *)v18 fetchConceptAuthorizationContextForPromptSession:v7 error:&v31];
  v20 = v31;
  if (!v19)
  {
    _HKInitializeLogging();
    v29 = HKLogAuthorization();
    if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
    {
      sub_100005ED8(v7);
    }

    goto LABEL_16;
  }

  v21 = [v19 userAnnotatedMedications];
  v22 = &OBJC_IVAR___HKHealthPrivacyServiceObjectPickerViewController__medicationsRequiringAuthorization;
LABEL_11:
  v26 = *v22;
  v27 = *&self->HKViewController_opaque[v26];
  *&self->HKViewController_opaque[v26] = v21;

  v28 = [v7 sessionIdentifier];
  [(HKHealthPrivacyServiceObjectPickerViewController *)self _beginAuthorizationSessionWithIdentifier:v28];

LABEL_17:
}

- (id)_pickerControllerForObjectType:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [(HKHealthPrivacyServiceObjectPickerViewController *)self _pickerControllerForDocuments];
LABEL_18:
    v18 = v5;
    goto LABEL_19;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [(HKHealthPrivacyServiceObjectPickerViewController *)self _pickerControllerForSignedClinicalData];
    goto LABEL_18;
  }

  v6 = +[HKPrescriptionType visionPrescriptionType];
  v7 = v6;
  if (v6 == v4)
  {

    goto LABEL_10;
  }

  v8 = +[HKPrescriptionType visionPrescriptionType];
  if (!v8)
  {

    goto LABEL_12;
  }

  v9 = v8;
  v10 = +[HKPrescriptionType visionPrescriptionType];
  v11 = [v4 isEqual:v10];

  if (v11)
  {
LABEL_10:
    v5 = [(HKHealthPrivacyServiceObjectPickerViewController *)self _pickerControllerForVisionPrescriptions];
    goto LABEL_18;
  }

LABEL_12:
  v12 = +[HKUserAnnotatedMedicationType userAnnotatedMedicationType];
  v13 = v12;
  if (v12 == v4)
  {

    goto LABEL_17;
  }

  v14 = +[HKUserAnnotatedMedicationType userAnnotatedMedicationType];
  if (v14)
  {
    v15 = v14;
    v16 = +[HKUserAnnotatedMedicationType userAnnotatedMedicationType];
    v17 = [v4 isEqual:v16];

    if (!v17)
    {
      goto LABEL_23;
    }

LABEL_17:
    v5 = [(HKHealthPrivacyServiceObjectPickerViewController *)self _pickerControllerForMedications];
    goto LABEL_18;
  }

LABEL_23:
  v18 = 0;
LABEL_19:

  return v18;
}

- (id)_pickerControllerForDocuments
{
  v3 = [HKDocumentPickerViewController alloc];
  v4 = [(NSDictionary *)self->_samplesRequiringAuthorization allKeys];
  v5 = [v3 initWithDocuments:v4 presentationStyle:1];

  [v5 setDelegate:self];
  [v5 setSource:self->_currentSource];

  return v5;
}

- (id)_pickerControllerForSignedClinicalData
{
  v3 = [(NSDictionary *)self->_samplesRequiringAuthorization allKeys];
  v4 = [v3 sortedArrayUsingComparator:&stru_10000C478];

  v5 = [(HKHealthPrivacyServiceObjectPickerViewController *)self signedRecordsForClinicalRecords:v4];
  v6 = [HKVerifiableClinicalRecordPickerViewController alloc];
  v7 = [(HKObjectAuthorizationPromptSessionMetadata *)self->_metadata recordTypes];
  v8 = [v6 initWithClinicalRecords:v4 signedRecords:v5 recordTypes:v7];

  [v8 setDelegate:self];
  [v8 setSource:self->_currentSource];
  [v8 setSessionIdentifier:self->_sessionIdentifier];

  return v8;
}

- (id)_pickerControllerForVisionPrescriptions
{
  v3 = [(NSDictionary *)self->_samplesRequiringAuthorization allKeys];
  v4 = [v3 sortedArrayUsingComparator:&stru_10000C4B8];

  v5 = [(NSDictionary *)self->_samplesRequiringAuthorization hk_filter:&stru_10000C4F8];
  v6 = [v5 allKeys];

  v7 = [[HKPrescriptionPickerViewController alloc] initWithHealthStore:self->_healthStore samples:v4 enabledSamples:v6 source:self->_currentSource];
  [v7 setDelegate:self];

  return v7;
}

- (id)_pickerControllerForMedications
{
  v3 = [[HKHealthConceptPickerViewController alloc] initWithHealthStore:self->_healthStore source:self->_currentSource userAnnotatedMedications:self->_medicationsRequiringAuthorization];
  v4 = [(NSArray *)self->_presentationRequests firstObject];
  v5 = [v4 readUsageDescription];
  [v3 setReadUsageDescription:v5];

  [v3 setDelegate:self];

  return v3;
}

- (void)_configureNavigationController
{
  objectType = self->_objectType;
  if (!objectType)
  {
    v4 = [(NSDictionary *)self->_samplesRequiringAuthorization allKeys];
    v5 = [v4 firstObject];
    v6 = [v5 sampleType];
    v7 = v6;
    if (v6)
    {
      v8 = v6;
    }

    else
    {
      v8 = [(HKObjectAuthorizationPromptSessionMetadata *)self->_metadata expectedObjectType];
    }

    v9 = self->_objectType;
    self->_objectType = v8;

    objectType = self->_objectType;
  }

  v10 = [(HKHealthPrivacyServiceObjectPickerViewController *)self _pickerControllerForObjectType:objectType];
  pickerController = self->_pickerController;
  self->_pickerController = v10;

  if (self->_pickerController)
  {
    v13 = [[HKNavigationController alloc] initWithRootViewController:self->_pickerController];
    [v13 setModalInPresentation:1];
    [v13 setModalPresentationStyle:5];
    [(HKHealthPrivacyServiceObjectPickerViewController *)self presentViewController:v13 animated:0 completion:0];
  }

  else
  {
    v12 = [(HKObjectType *)self->_objectType identifier];
    v13 = [NSError hk_error:303 format:@"No picker view controller for object type: %@", v12];

    [(HKHealthPrivacyServiceObjectPickerViewController *)self _finishWithError:v13];
  }
}

- (void)_hostApplicationStateDidChange:(unsigned int)a3
{
  if (a3 <= 3)
  {
    block[9] = v3;
    block[10] = v4;
    _HKInitializeLogging();
    v7 = HKLogAuthorization();
    v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG);

    if (v8)
    {
      v9 = HKLogAuthorization();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
      {
        sub_100005F74(a3, v9);
      }
    }

    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100002810;
    block[3] = &unk_10000C370;
    block[4] = self;
    dispatch_async(&_dispatch_main_q, block);
  }
}

- (void)_configureApplicationStateMonitor
{
  objc_initWeak(&location, self);
  v3 = [BKSApplicationStateMonitor alloc];
  v4 = [(HKHealthPrivacyServiceObjectPickerViewController *)self _hostApplicationBundleIdentifier];
  v12 = v4;
  v5 = [NSArray arrayWithObjects:&v12 count:1];
  v6 = [v3 initWithBundleIDs:v5 states:BKSApplicationStateAll];
  applicationStateMonitor = self->_applicationStateMonitor;
  self->_applicationStateMonitor = v6;

  v8 = self->_applicationStateMonitor;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_100002990;
  v9[3] = &unk_10000C398;
  objc_copyWeak(&v10, &location);
  [(BKSApplicationStateMonitor *)v8 setHandler:v9];
  objc_destroyWeak(&v10);
  objc_destroyWeak(&location);
}

- (void)_beginAuthorizationSessionWithIdentifier:(id)a3
{
  v6 = a3;
  if (!v6)
  {
    sub_100005FF0(a2, self);
  }

  if (self->_sessionIdentifier)
  {
    sub_10000606C(a2, self);
  }

  _HKInitializeLogging();
  v7 = HKLogAuthorization();
  v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG);

  if (v8)
  {
    v9 = HKLogAuthorization();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      sub_1000060E8();
    }
  }

  objc_storeStrong(&self->_sessionIdentifier, a3);
  [(HKHealthPrivacyServiceObjectPickerViewController *)self _configureApplicationStateMonitor];
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_100002BD8;
  v14[3] = &unk_10000C548;
  v14[4] = self;
  v15 = v6;
  v10 = v6;
  v11 = objc_retainBlock(v14);
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_100002D00;
  v13[3] = &unk_10000C570;
  v13[4] = self;
  v12 = objc_retainBlock(v13);
  [(HKHealthStore *)self->_healthStore beginAuthorizationDelegateTransactionWithSessionIdentifier:v10 sourceHandler:v12 errorHandler:v11];
}

- (void)_hostDidTerminate
{
  applicationStateMonitor = self->_applicationStateMonitor;
  self->_applicationStateMonitor = 0;

  if (self->_sessionIdentifier)
  {
    v5 = [NSError errorWithDomain:HKErrorDomain code:5 userInfo:0];
    [(HKHealthPrivacyServiceObjectPickerViewController *)self _finishWithError:v5];
    [(HKHealthStore *)self->_healthStore endAuthorizationDelegateTransactionWithSessionIdentifier:self->_sessionIdentifier error:v5];
    sessionIdentifier = self->_sessionIdentifier;
    self->_sessionIdentifier = 0;
  }
}

- (id)signedRecordsForClinicalRecords:(id)a3
{
  v4 = a3;
  v5 = objc_alloc_init(NSMutableDictionary);
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v6 = v4;
  v7 = [v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v17;
    do
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v17 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v16 + 1) + 8 * i);
        v12 = [(HKHealthPrivacyServiceObjectPickerViewController *)self signedClinicalDataRecordForVerifiableClinicalRecord:v11, v16];
        v13 = [v11 originIdentifier];
        [v5 setObject:v12 forKeyedSubscript:v13];
      }

      v8 = [v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v8);
  }

  v14 = [v5 copy];

  return v14;
}

- (id)signedClinicalDataRecordForVerifiableClinicalRecord:(id)a3
{
  v4 = a3;
  v30 = 0;
  v31 = &v30;
  v32 = 0x3032000000;
  v33 = sub_100003494;
  v34 = sub_1000034A4;
  v35 = 0;
  v24 = 0;
  v25 = &v24;
  v26 = 0x3032000000;
  v27 = sub_100003494;
  v28 = sub_1000034A4;
  v29 = 0;
  v5 = dispatch_semaphore_create(0);
  v6 = +[HKSignedClinicalDataRecordType signedClinicalDataRecordType];
  v7 = [v4 originIdentifier];
  v8 = [HKQuery predicateForMedicalRecordsWithSignedClinicalDataOriginIdentifier:v7];

  v9 = [[HKQueryDescriptor alloc] initWithSampleType:v6 predicate:v8];
  v42 = v9;
  v10 = [NSArray arrayWithObjects:&v42 count:1];
  v20[0] = _NSConcreteStackBlock;
  v20[1] = 3221225472;
  v20[2] = sub_1000034AC;
  v20[3] = &unk_10000C598;
  v22 = &v30;
  v23 = &v24;
  v11 = v5;
  v21 = v11;
  [(HKHealthPrivacyServiceObjectPickerViewController *)self _queryMedicalRecordsWithQueryDescriptors:v10 completion:v20];

  v12 = dispatch_time(0, 10000000000);
  if (dispatch_semaphore_wait(v11, v12))
  {
    _HKInitializeLogging();
    v13 = HKLogAuthorization();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      sub_1000061F0();
    }
  }

  v14 = v31[5];
  if (!v14)
  {
    _HKInitializeLogging();
    v15 = HKLogAuthorization();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      v18 = [v4 originIdentifier];
      v19 = v25[5];
      *buf = 138543874;
      v37 = self;
      v38 = 2112;
      v39 = v18;
      v40 = 2112;
      v41 = v19;
      _os_log_error_impl(&_mh_execute_header, v15, OS_LOG_TYPE_ERROR, "%{public}@: Unable to find HKSignedClinicalDataRecord associated with sync identifier %@, error: %@", buf, 0x20u);
    }

    v14 = v31[5];
  }

  v16 = v14;

  _Block_object_dispose(&v24, 8);
  _Block_object_dispose(&v30, 8);

  return v16;
}

- (void)_queryMedicalRecordsWithQueryDescriptors:(id)a3 completion:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [HKSampleQuery alloc];
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_100003630;
  v12[3] = &unk_10000C5C0;
  v13 = v6;
  v9 = v6;
  v10 = [v8 initWithQueryDescriptors:v7 limit:0 resultsHandler:v12];

  v11 = [(HKHealthPrivacyServiceObjectPickerViewController *)self healthStore];
  [v11 executeQuery:v10];
}

- (id)medicalRecordsForVerifiableClinicalRecord:(id)a3
{
  v3 = a3;
  v38 = 0;
  v39 = &v38;
  v40 = 0x3032000000;
  v41 = sub_100003494;
  v42 = sub_1000034A4;
  v43 = 0;
  v32 = 0;
  v33 = &v32;
  v34 = 0x3032000000;
  v35 = sub_100003494;
  v36 = sub_1000034A4;
  v37 = 0;
  v4 = dispatch_semaphore_create(0);
  v5 = [v3 originIdentifier];
  v6 = [HKQuery predicateForMedicalRecordsWithSignedClinicalDataOriginIdentifier:v5];

  v7 = [HKSampleType medicalRecordTypesWithOptions:1];
  v8 = objc_alloc_init(NSMutableArray);
  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  v9 = v7;
  v10 = [v9 countByEnumeratingWithState:&v28 objects:v50 count:16];
  if (v10)
  {
    v11 = *v29;
    do
    {
      for (i = 0; i != v10; i = i + 1)
      {
        if (*v29 != v11)
        {
          objc_enumerationMutation(v9);
        }

        v13 = [[HKQueryDescriptor alloc] initWithSampleType:*(*(&v28 + 1) + 8 * i) predicate:v6];
        [v8 addObject:v13];
      }

      v10 = [v9 countByEnumeratingWithState:&v28 objects:v50 count:16];
    }

    while (v10);
  }

  v24[0] = _NSConcreteStackBlock;
  v24[1] = 3221225472;
  v24[2] = sub_100003A54;
  v24[3] = &unk_10000C598;
  v26 = &v38;
  v27 = &v32;
  v14 = v4;
  v25 = v14;
  [(HKHealthPrivacyServiceObjectPickerViewController *)self _queryMedicalRecordsWithQueryDescriptors:v8 completion:v24];
  v15 = dispatch_time(0, 10000000000);
  if (dispatch_semaphore_wait(v14, v15))
  {
    _HKInitializeLogging();
    v16 = HKLogAuthorization();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      sub_100006264();
    }
  }

  v17 = v39[5];
  if (!v17)
  {
    _HKInitializeLogging();
    v18 = HKLogAuthorization();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      v21 = [v3 originIdentifier];
      v22 = v33[5];
      *buf = 138543874;
      v45 = self;
      v46 = 2112;
      v47 = v21;
      v48 = 2112;
      v49 = v22;
      _os_log_error_impl(&_mh_execute_header, v18, OS_LOG_TYPE_ERROR, "%{public}@: Unable to find HKMedicalRecords associated with sync identifier %@, error: %@", buf, 0x20u);
    }

    v17 = v39[5];
  }

  v19 = v17;

  _Block_object_dispose(&v32, 8);
  _Block_object_dispose(&v38, 8);

  return v19;
}

- (void)pickerControllerDidFinish:(id)a3 error:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(HKHealthPrivacyServiceObjectPickerViewController *)self presentedViewController];
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_100003BCC;
  v11[3] = &unk_10000C520;
  v12 = v7;
  v13 = self;
  v14 = v6;
  v9 = v6;
  v10 = v7;
  [v8 dismissViewControllerAnimated:1 completion:v11];
}

- (void)_finishWithError:(id)a3
{
  v4 = a3;
  v5 = +[_HKBehavior sharedBehavior];
  if ([v5 isiPad])
  {
    v6 = [HKiPadHealthSyncEnablement isSyncPromptedForHealthKit:self->_healthStore];

    if ((v6 & 1) == 0)
    {
      v7 = [[HKHealthSyncDisplayController alloc] initWithHealthStore:self->_healthStore source:self->_currentSource];
      v8 = [(HKHealthPrivacyServiceObjectPickerViewController *)self _healthPrivacyHostViewController];
      [v7 setObjectPickerDelegate:v8];

      _HKInitializeLogging();
      v9 = HKLogAuthorization();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        v14 = 138412290;
        v15 = objc_opt_class();
        v10 = v15;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "%@: Prompting health sync view controller", &v14, 0xCu);
      }

      [(HKHealthPrivacyServiceObjectPickerViewController *)self presentViewController:v7 animated:1 completion:0];
      goto LABEL_12;
    }
  }

  else
  {
  }

  _HKInitializeLogging();
  v11 = HKLogAuthorization();
  v12 = os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG);

  if (v12)
  {
    v13 = HKLogAuthorization();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
    {
      sub_1000062D8();
    }
  }

  v7 = [(HKHealthPrivacyServiceObjectPickerViewController *)self _healthPrivacyHostViewController];
  [v7 didFinishWithError:v4];
LABEL_12:
}

@end