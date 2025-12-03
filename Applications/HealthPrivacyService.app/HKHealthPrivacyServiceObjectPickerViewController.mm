@interface HKHealthPrivacyServiceObjectPickerViewController
- (HKHealthPrivacyServiceObjectPickerViewController)initWithNibName:(id)name bundle:(id)bundle;
- (id)_pickerControllerForDocuments;
- (id)_pickerControllerForMedications;
- (id)_pickerControllerForObjectType:(id)type;
- (id)_pickerControllerForSignedClinicalData;
- (id)_pickerControllerForVisionPrescriptions;
- (id)medicalRecordsForVerifiableClinicalRecord:(id)record;
- (id)signedClinicalDataRecordForVerifiableClinicalRecord:(id)record;
- (id)signedRecordsForClinicalRecords:(id)records;
- (void)_beginAuthorizationSessionWithIdentifier:(id)identifier;
- (void)_configureApplicationStateMonitor;
- (void)_configureNavigationController;
- (void)_finishWithError:(id)error;
- (void)_hostApplicationStateDidChange:(unsigned int)change;
- (void)_hostDidTerminate;
- (void)_queryMedicalRecordsWithQueryDescriptors:(id)descriptors completion:(id)completion;
- (void)pickerControllerDidFinish:(id)finish error:(id)error;
- (void)setPromptSession:(id)session presentationRequests:(id)requests;
@end

@implementation HKHealthPrivacyServiceObjectPickerViewController

- (HKHealthPrivacyServiceObjectPickerViewController)initWithNibName:(id)name bundle:(id)bundle
{
  v10.receiver = self;
  v10.super_class = HKHealthPrivacyServiceObjectPickerViewController;
  v4 = [(HKHealthPrivacyServiceObjectPickerViewController *)&v10 initWithNibName:name bundle:bundle];
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

- (void)setPromptSession:(id)session presentationRequests:(id)requests
{
  sessionCopy = session;
  requestsCopy = requests;
  objc_storeStrong(&self->_promptSession, session);
  objc_storeStrong(&self->_presentationRequests, requests);
  objectType = [sessionCopy objectType];
  objectType = self->_objectType;
  self->_objectType = objectType;

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
      v19 = [(HKAuthorizationStore *)authorizationStore fetchAuthorizationContextForPromptSession:sessionCopy error:&v30];
      v20 = v30;
      if (v19)
      {
        samplesRequiringAuthorization = [v19 samplesRequiringAuthorization];
        samplesRequiringAuthorization = self->_samplesRequiringAuthorization;
        self->_samplesRequiringAuthorization = samplesRequiringAuthorization;

        metadata = [v19 metadata];
        v22 = &OBJC_IVAR___HKHealthPrivacyServiceObjectPickerViewController__metadata;
        goto LABEL_11;
      }

      _HKInitializeLogging();
      v29 = HKLogAuthorization();
      if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
      {
        sub_100005E3C(sessionCopy);
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
  v19 = [(HKAuthorizationStore *)v18 fetchConceptAuthorizationContextForPromptSession:sessionCopy error:&v31];
  v20 = v31;
  if (!v19)
  {
    _HKInitializeLogging();
    v29 = HKLogAuthorization();
    if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
    {
      sub_100005ED8(sessionCopy);
    }

    goto LABEL_16;
  }

  metadata = [v19 userAnnotatedMedications];
  v22 = &OBJC_IVAR___HKHealthPrivacyServiceObjectPickerViewController__medicationsRequiringAuthorization;
LABEL_11:
  v26 = *v22;
  v27 = *&self->HKViewController_opaque[v26];
  *&self->HKViewController_opaque[v26] = metadata;

  sessionIdentifier = [sessionCopy sessionIdentifier];
  [(HKHealthPrivacyServiceObjectPickerViewController *)self _beginAuthorizationSessionWithIdentifier:sessionIdentifier];

LABEL_17:
}

- (id)_pickerControllerForObjectType:(id)type
{
  typeCopy = type;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    _pickerControllerForDocuments = [(HKHealthPrivacyServiceObjectPickerViewController *)self _pickerControllerForDocuments];
LABEL_18:
    v18 = _pickerControllerForDocuments;
    goto LABEL_19;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    _pickerControllerForDocuments = [(HKHealthPrivacyServiceObjectPickerViewController *)self _pickerControllerForSignedClinicalData];
    goto LABEL_18;
  }

  v6 = +[HKPrescriptionType visionPrescriptionType];
  v7 = v6;
  if (v6 == typeCopy)
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
  v11 = [typeCopy isEqual:v10];

  if (v11)
  {
LABEL_10:
    _pickerControllerForDocuments = [(HKHealthPrivacyServiceObjectPickerViewController *)self _pickerControllerForVisionPrescriptions];
    goto LABEL_18;
  }

LABEL_12:
  v12 = +[HKUserAnnotatedMedicationType userAnnotatedMedicationType];
  v13 = v12;
  if (v12 == typeCopy)
  {

    goto LABEL_17;
  }

  v14 = +[HKUserAnnotatedMedicationType userAnnotatedMedicationType];
  if (v14)
  {
    v15 = v14;
    v16 = +[HKUserAnnotatedMedicationType userAnnotatedMedicationType];
    v17 = [typeCopy isEqual:v16];

    if (!v17)
    {
      goto LABEL_23;
    }

LABEL_17:
    _pickerControllerForDocuments = [(HKHealthPrivacyServiceObjectPickerViewController *)self _pickerControllerForMedications];
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
  allKeys = [(NSDictionary *)self->_samplesRequiringAuthorization allKeys];
  v5 = [v3 initWithDocuments:allKeys presentationStyle:1];

  [v5 setDelegate:self];
  [v5 setSource:self->_currentSource];

  return v5;
}

- (id)_pickerControllerForSignedClinicalData
{
  allKeys = [(NSDictionary *)self->_samplesRequiringAuthorization allKeys];
  v4 = [allKeys sortedArrayUsingComparator:&stru_10000C478];

  v5 = [(HKHealthPrivacyServiceObjectPickerViewController *)self signedRecordsForClinicalRecords:v4];
  v6 = [HKVerifiableClinicalRecordPickerViewController alloc];
  recordTypes = [(HKObjectAuthorizationPromptSessionMetadata *)self->_metadata recordTypes];
  v8 = [v6 initWithClinicalRecords:v4 signedRecords:v5 recordTypes:recordTypes];

  [v8 setDelegate:self];
  [v8 setSource:self->_currentSource];
  [v8 setSessionIdentifier:self->_sessionIdentifier];

  return v8;
}

- (id)_pickerControllerForVisionPrescriptions
{
  allKeys = [(NSDictionary *)self->_samplesRequiringAuthorization allKeys];
  v4 = [allKeys sortedArrayUsingComparator:&stru_10000C4B8];

  v5 = [(NSDictionary *)self->_samplesRequiringAuthorization hk_filter:&stru_10000C4F8];
  allKeys2 = [v5 allKeys];

  v7 = [[HKPrescriptionPickerViewController alloc] initWithHealthStore:self->_healthStore samples:v4 enabledSamples:allKeys2 source:self->_currentSource];
  [v7 setDelegate:self];

  return v7;
}

- (id)_pickerControllerForMedications
{
  v3 = [[HKHealthConceptPickerViewController alloc] initWithHealthStore:self->_healthStore source:self->_currentSource userAnnotatedMedications:self->_medicationsRequiringAuthorization];
  firstObject = [(NSArray *)self->_presentationRequests firstObject];
  readUsageDescription = [firstObject readUsageDescription];
  [v3 setReadUsageDescription:readUsageDescription];

  [v3 setDelegate:self];

  return v3;
}

- (void)_configureNavigationController
{
  objectType = self->_objectType;
  if (!objectType)
  {
    allKeys = [(NSDictionary *)self->_samplesRequiringAuthorization allKeys];
    firstObject = [allKeys firstObject];
    sampleType = [firstObject sampleType];
    v7 = sampleType;
    if (sampleType)
    {
      expectedObjectType = sampleType;
    }

    else
    {
      expectedObjectType = [(HKObjectAuthorizationPromptSessionMetadata *)self->_metadata expectedObjectType];
    }

    v9 = self->_objectType;
    self->_objectType = expectedObjectType;

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
    identifier = [(HKObjectType *)self->_objectType identifier];
    v13 = [NSError hk_error:303 format:@"No picker view controller for object type: %@", identifier];

    [(HKHealthPrivacyServiceObjectPickerViewController *)self _finishWithError:v13];
  }
}

- (void)_hostApplicationStateDidChange:(unsigned int)change
{
  if (change <= 3)
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
        sub_100005F74(change, v9);
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
  _hostApplicationBundleIdentifier = [(HKHealthPrivacyServiceObjectPickerViewController *)self _hostApplicationBundleIdentifier];
  v12 = _hostApplicationBundleIdentifier;
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

- (void)_beginAuthorizationSessionWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  if (!identifierCopy)
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

  objc_storeStrong(&self->_sessionIdentifier, identifier);
  [(HKHealthPrivacyServiceObjectPickerViewController *)self _configureApplicationStateMonitor];
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_100002BD8;
  v14[3] = &unk_10000C548;
  v14[4] = self;
  v15 = identifierCopy;
  v10 = identifierCopy;
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

- (id)signedRecordsForClinicalRecords:(id)records
{
  recordsCopy = records;
  v5 = objc_alloc_init(NSMutableDictionary);
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v6 = recordsCopy;
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
        originIdentifier = [v11 originIdentifier];
        [v5 setObject:v12 forKeyedSubscript:originIdentifier];
      }

      v8 = [v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v8);
  }

  v14 = [v5 copy];

  return v14;
}

- (id)signedClinicalDataRecordForVerifiableClinicalRecord:(id)record
{
  recordCopy = record;
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
  originIdentifier = [recordCopy originIdentifier];
  v8 = [HKQuery predicateForMedicalRecordsWithSignedClinicalDataOriginIdentifier:originIdentifier];

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
      originIdentifier2 = [recordCopy originIdentifier];
      v19 = v25[5];
      *buf = 138543874;
      selfCopy = self;
      v38 = 2112;
      v39 = originIdentifier2;
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

- (void)_queryMedicalRecordsWithQueryDescriptors:(id)descriptors completion:(id)completion
{
  completionCopy = completion;
  descriptorsCopy = descriptors;
  v8 = [HKSampleQuery alloc];
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_100003630;
  v12[3] = &unk_10000C5C0;
  v13 = completionCopy;
  v9 = completionCopy;
  v10 = [v8 initWithQueryDescriptors:descriptorsCopy limit:0 resultsHandler:v12];

  healthStore = [(HKHealthPrivacyServiceObjectPickerViewController *)self healthStore];
  [healthStore executeQuery:v10];
}

- (id)medicalRecordsForVerifiableClinicalRecord:(id)record
{
  recordCopy = record;
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
  originIdentifier = [recordCopy originIdentifier];
  v6 = [HKQuery predicateForMedicalRecordsWithSignedClinicalDataOriginIdentifier:originIdentifier];

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
      originIdentifier2 = [recordCopy originIdentifier];
      v22 = v33[5];
      *buf = 138543874;
      selfCopy = self;
      v46 = 2112;
      v47 = originIdentifier2;
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

- (void)pickerControllerDidFinish:(id)finish error:(id)error
{
  finishCopy = finish;
  errorCopy = error;
  presentedViewController = [(HKHealthPrivacyServiceObjectPickerViewController *)self presentedViewController];
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_100003BCC;
  v11[3] = &unk_10000C520;
  v12 = errorCopy;
  selfCopy = self;
  v14 = finishCopy;
  v9 = finishCopy;
  v10 = errorCopy;
  [presentedViewController dismissViewControllerAnimated:1 completion:v11];
}

- (void)_finishWithError:(id)error
{
  errorCopy = error;
  v5 = +[_HKBehavior sharedBehavior];
  if ([v5 isiPad])
  {
    v6 = [HKiPadHealthSyncEnablement isSyncPromptedForHealthKit:self->_healthStore];

    if ((v6 & 1) == 0)
    {
      _healthPrivacyHostViewController2 = [[HKHealthSyncDisplayController alloc] initWithHealthStore:self->_healthStore source:self->_currentSource];
      _healthPrivacyHostViewController = [(HKHealthPrivacyServiceObjectPickerViewController *)self _healthPrivacyHostViewController];
      [_healthPrivacyHostViewController2 setObjectPickerDelegate:_healthPrivacyHostViewController];

      _HKInitializeLogging();
      v9 = HKLogAuthorization();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        v14 = 138412290;
        v15 = objc_opt_class();
        v10 = v15;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "%@: Prompting health sync view controller", &v14, 0xCu);
      }

      [(HKHealthPrivacyServiceObjectPickerViewController *)self presentViewController:_healthPrivacyHostViewController2 animated:1 completion:0];
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

  _healthPrivacyHostViewController2 = [(HKHealthPrivacyServiceObjectPickerViewController *)self _healthPrivacyHostViewController];
  [_healthPrivacyHostViewController2 didFinishWithError:errorCopy];
LABEL_12:
}

@end