@interface HDHealthRecordsPluginServer
- (HDHealthRecordsPluginServer)initWithUUID:(id)d configuration:(id)configuration client:(id)client delegate:(id)delegate;
- (void)_notifyObserversAboutAccountsEvent:(unint64_t)event;
- (void)accountManager:(id)manager account:(id)account didChangeState:(int64_t)state;
- (void)clinicalIngestionManager:(id)manager willChangeIngestionState:(int64_t)state;
- (void)remote_currentIngestionStatusWithCompletion:(id)completion;
- (void)remote_deregisterAppSourceFromClinicalUnlimitedAuthorizationModeConfirmation:(id)confirmation completion:(id)completion;
- (void)remote_fetchClinicalConnectedAccountsWithCompletion:(id)completion;
- (void)remote_fetchClinicalOptInDataCollectionFilePathsWithCompletion:(id)completion;
- (void)remote_fetchCurrentDeviceSupportsImproveHealthRecordsDataSubmissionOptionWithCompletion:(id)completion;
- (void)remote_fetchExportedPropertiesForHealthRecord:(id)record completion:(id)completion;
- (void)remote_fetchFHIRJSONDocumentWithAccountIdentifier:(id)identifier completion:(id)completion;
- (void)remote_fetchIsImproveHealthRecordsDataSubmissionAllowedWithCompletion:(id)completion;
- (void)remote_fetchLogoForBrand:(id)brand scale:(id)scale completion:(id)completion;
- (void)remote_fetchRawSourceStringForHealthRecord:(id)record completion:(id)completion;
- (void)remote_fetchShouldPromptForImproveHealthRecordsDataSubmissionWithCompletion:(id)completion;
- (void)remote_fetchUserHasAgreedToHealthRecordsDataSubmissionWithCompletion:(id)completion;
- (void)remote_registerAppSourceForClinicalUnlimitedAuthorizationModeConfirmation:(id)confirmation completion:(id)completion;
- (void)remote_resetClinicalContentAnalyticsAnchorsWithCompletion:(id)completion;
- (void)remote_resetClinicalOptInDataCollectionAnchorsWithCompletion:(id)completion;
- (void)remote_stringifyExtractionFailureReasonsForRecord:(id)record completion:(id)completion;
- (void)remote_triggerClinicalContentAnalyticsForReason:(int64_t)reason options:(unint64_t)options completion:(id)completion;
- (void)remote_triggerClinicalOptInDataCollectionForReason:(int64_t)reason completion:(id)completion;
- (void)remote_triggerHealthCloudUploadWithCompletion:(id)completion;
@end

@implementation HDHealthRecordsPluginServer

- (HDHealthRecordsPluginServer)initWithUUID:(id)d configuration:(id)configuration client:(id)client delegate:(id)delegate
{
  clientCopy = client;
  v21.receiver = self;
  v21.super_class = HDHealthRecordsPluginServer;
  v11 = [(HDHealthRecordsPluginServer *)&v21 initWithUUID:d configuration:configuration client:clientCopy delegate:delegate];
  if (v11)
  {
    profile = [clientCopy profile];
    v13 = [profile profileExtensionWithIdentifier:HKHealthRecordsPluginIdentifier];
    profileExtension = v11->_profileExtension;
    v11->_profileExtension = v13;

    v11->_ingestionStatusLock._os_unfair_lock_opaque = 0;
    ingestionManager = [(HDHealthRecordsProfileExtension *)v11->_profileExtension ingestionManager];
    currentIngestionState = [ingestionManager currentIngestionState];
    if ((currentIngestionState - 1) > 2)
    {
      v17 = 0;
    }

    else
    {
      v17 = qword_E4018[(currentIngestionState - 1)];
    }

    v11->_lastKnownIngestionStatus = v17;

    ingestionManager2 = [(HDHealthRecordsProfileExtension *)v11->_profileExtension ingestionManager];
    [ingestionManager2 registerIngestionStateChangeObserver:v11];

    accountManager = [(HDHealthRecordsProfileExtension *)v11->_profileExtension accountManager];
    [accountManager addAccountStateObserver:v11];
  }

  return v11;
}

- (void)remote_fetchClinicalConnectedAccountsWithCompletion:(id)completion
{
  completionCopy = completion;
  accountManager = [(HDHealthRecordsProfileExtension *)self->_profileExtension accountManager];
  v9 = 0;
  v6 = [accountManager allAccountsWithError:&v9];
  v7 = v9;

  if (v6)
  {
    v8 = [v6 hk_map:&stru_105C58];
    completionCopy[2](completionCopy, v8, 0);
  }

  else
  {
    (completionCopy)[2](completionCopy, 0, v7);
  }
}

- (void)accountManager:(id)manager account:(id)account didChangeState:(int64_t)state
{
  if (state > 1)
  {
    if (state == 2)
    {
      v6 = 4;
      goto LABEL_13;
    }

    if (state == 3)
    {
      v6 = 5;
      goto LABEL_13;
    }

LABEL_8:
    v6 = 0;
    goto LABEL_13;
  }

  if (state)
  {
    if (state == 1)
    {
      v6 = 3;
LABEL_13:

      [(HDHealthRecordsPluginServer *)self _notifyObserversAboutAccountsEvent:v6, account];
      return;
    }

    goto LABEL_8;
  }

  _HKInitializeLogging();
  v7 = HKLogHealthRecords;
  if (os_log_type_enabled(HKLogHealthRecords, OS_LOG_TYPE_ERROR))
  {
    sub_9C8BC(self, v7);
  }
}

- (void)remote_fetchLogoForBrand:(id)brand scale:(id)scale completion:(id)completion
{
  brandCopy = brand;
  scaleCopy = scale;
  completionCopy = completion;
  providerServiceManager = [(HDHealthRecordsProfileExtension *)self->_profileExtension providerServiceManager];
  if (providerServiceManager)
  {
    if ([scaleCopy integerValue] <= 2)
    {
      if ([scaleCopy intValue] <= 1)
      {
        v11 = @"1x";
      }

      else
      {
        v11 = @"2x";
      }
    }

    else
    {
      v11 = @"3x";
    }

    [providerServiceManager fetchLogoDataForBrand:brandCopy scaleKey:v11 completion:completionCopy];
  }

  else
  {
    v12 = [NSError hk_error:127 description:@"provider service calls are not supported on this profile"];
    completionCopy[2](completionCopy, 0, v12);
  }
}

- (void)remote_currentIngestionStatusWithCompletion:(id)completion
{
  lastKnownIngestionStatus = self->_lastKnownIngestionStatus;
  completionCopy = completion;
  v6 = [NSNumber numberWithUnsignedInteger:lastKnownIngestionStatus];
  (*(completion + 2))(completionCopy, v6, 0);
}

- (void)clinicalIngestionManager:(id)manager willChangeIngestionState:(int64_t)state
{
  os_unfair_lock_lock(&self->_ingestionStatusLock);
  if ((state - 1) > 2)
  {
    v6 = 0;
  }

  else
  {
    v6 = qword_E4018[state - 1];
  }

  lastKnownIngestionStatus = self->_lastKnownIngestionStatus;
  self->_lastKnownIngestionStatus = v6;
  os_unfair_lock_unlock(&self->_ingestionStatusLock);
  if (v6 != lastKnownIngestionStatus)
  {
    _HKInitializeLogging();
    v8 = HKLogHealthRecords;
    if (os_log_type_enabled(HKLogHealthRecords, OS_LOG_TYPE_DEFAULT))
    {
      v9 = v8;
      v10 = HKStringFromHKClinicalIngestionState();
      v11 = 138543618;
      selfCopy = self;
      v13 = 2114;
      v14 = v10;
      _os_log_impl(&dword_0, v9, OS_LOG_TYPE_DEFAULT, "%{public}@: ingestion manager will change ingestion state to %{public}@, notifying HKHealthRecordsStore", &v11, 0x16u);
    }

    [(HDHealthRecordsPluginServer *)self _notifyObserversAboutAccountsEvent:v6];
  }
}

- (void)_notifyObserversAboutAccountsEvent:(unint64_t)event
{
  client = [(HDHealthRecordsPluginServer *)self client];
  connection = [client connection];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_C774;
  v8[3] = &unk_105C38;
  v8[4] = self;
  v7 = [connection remoteObjectProxyWithErrorHandler:v8];

  [v7 clientRemote_healthRecordsAccountsEventObserved:event];
}

- (void)remote_fetchFHIRJSONDocumentWithAccountIdentifier:(id)identifier completion:(id)completion
{
  completionCopy = completion;
  identifierCopy = identifier;
  profile = [(HDHealthRecordsPluginServer *)self profile];
  v12 = 0;
  v9 = [HDOriginalFHIRResourceEntity fullResourceDocumentForAccountIdentifier:identifierCopy profile:profile error:&v12];

  v10 = v12;
  dictionaryRepresentation = [v9 dictionaryRepresentation];
  completionCopy[2](completionCopy, dictionaryRepresentation, v10);
}

- (void)remote_fetchRawSourceStringForHealthRecord:(id)record completion:(id)completion
{
  recordCopy = record;
  completionCopy = completion;
  sourceRevision = [recordCopy sourceRevision];
  source = [sourceRevision source];

  _deducedClinicalAccountIdentifier = [source _deducedClinicalAccountIdentifier];
  if (_deducedClinicalAccountIdentifier)
  {
    originIdentifier = [recordCopy originIdentifier];
    fhirIdentifier = [originIdentifier fhirIdentifier];

    if (fhirIdentifier)
    {
      fHIRIdentifier = [recordCopy FHIRIdentifier];
      v38 = 0;
      v14 = [fHIRIdentifier parentResourceIdentifierWithError:&v38];
      v15 = v38;

      if (!v14)
      {
        completionCopy[2](completionCopy, 0, v15);
LABEL_23:

        goto LABEL_24;
      }

      profile = [(HDHealthRecordsPluginServer *)self profile];
      v37 = v15;
      v17 = [HDClinicalRecordEntity clinicalRecordWithResourceIdentifier:v14 source:source profile:profile error:&v37];
      v18 = v37;

      if (v17)
      {
        fHIRResource = [v17 FHIRResource];
        sourceString = [fHIRResource sourceString];
      }

      else
      {
        profile2 = [(HDHealthRecordsPluginServer *)self profile];
        v36 = v18;
        fHIRResource = [HDOriginalFHIRResourceEntity resourceObjectWithIdentifier:v14 accountIdentifier:_deducedClinicalAccountIdentifier profile:profile2 error:&v36];
        v32 = v36;

        if (fHIRResource)
        {
          sourceString = [fHIRResource sourceString];
        }

        else
        {
          sourceString = 0;
        }

        v18 = v32;
      }
    }

    else
    {
      originIdentifier2 = [recordCopy originIdentifier];
      signedClinicalDataRecordIdentifier = [originIdentifier2 signedClinicalDataRecordIdentifier];

      if (signedClinicalDataRecordIdentifier)
      {
        signedClinicalDataManager = [(HDHealthRecordsProfileExtension *)self->_profileExtension signedClinicalDataManager];
        v35 = 0;
        v25 = [signedClinicalDataManager signedClinicalDataGroupBackingMedicalRecord:recordCopy options:4 error:&v35];
        v18 = v35;

        if (v25)
        {
          clinicalRecords = [v25 clinicalRecords];
          v33[0] = _NSConcreteStackBlock;
          v33[1] = 3221225472;
          v33[2] = sub_CCC8;
          v33[3] = &unk_105C80;
          v27 = recordCopy;
          v34 = v27;
          v28 = [clinicalRecords hk_firstObjectPassingTest:v33];

          if (v28)
          {
            fHIRResource2 = [v28 FHIRResource];
            data = [fHIRResource2 data];
            sourceString = [NSJSONSerialization hk_stringForDisplayFromFHIRData:data];
          }

          else
          {
            fHIRResource2 = [v27 UUID];
            [NSError hk_error:118 format:@"There is no clinical record corresponding to medical record %@", fHIRResource2];
            sourceString = 0;
            v18 = data = v18;
          }
        }

        else
        {
          sourceString = 0;
        }
      }

      else
      {
        v18 = [NSError hk_error:3 description:@"Cannot fetch raw FHIR data for record that is backed by neither a FHIR resource nor an SCD record"];
        sourceString = 0;
      }
    }

    (completionCopy)[2](completionCopy, sourceString, v18);

    v15 = v18;
    goto LABEL_23;
  }

  v21 = [NSError hk_error:3 format:@"Unable to determine account identifier for source %@", source];
  completionCopy[2](completionCopy, 0, v21);

LABEL_24:
}

- (void)remote_fetchExportedPropertiesForHealthRecord:(id)record completion:(id)completion
{
  recordCopy = record;
  completionCopy = completion;
  sourceRevision = [recordCopy sourceRevision];
  source = [sourceRevision source];

  _deducedClinicalAccountIdentifier = [source _deducedClinicalAccountIdentifier];
  if (_deducedClinicalAccountIdentifier)
  {
    fHIRIdentifier = [recordCopy FHIRIdentifier];
    v36 = 0;
    v12 = [fHIRIdentifier parentResourceIdentifierWithError:&v36];
    v13 = v36;

    if (v12)
    {
      profile = [(HDHealthRecordsPluginServer *)self profile];
      v35 = v13;
      v15 = [HDOriginalFHIRResourceEntity resourceObjectWithIdentifier:v12 accountIdentifier:_deducedClinicalAccountIdentifier profile:profile error:&v35];
      v16 = v35;

      if (v15)
      {
        v37[0] = HKMedicalRecordExportedResourceTypeKey;
        identifier = [v15 identifier];
        resourceType = [identifier resourceType];
        v38[0] = resourceType;
        v37[1] = HKMedicalRecordExportedResourceIdentifierKey;
        identifier2 = [v15 identifier];
        v30Identifier = [identifier2 identifier];
        v38[1] = v30Identifier;
        v37[2] = HKMedicalRecordExportedSourceURLKey;
        sourceURL = [v15 sourceURL];
        absoluteString = [sourceURL absoluteString];
        v18 = absoluteString;
        v19 = &stru_1090E8;
        if (absoluteString)
        {
          v19 = absoluteString;
        }

        v38[2] = v19;
        v37[3] = HKMedicalRecordExportedReceivedDateKey;
        receivedDate = [v15 receivedDate];
        v38[3] = receivedDate;
        v37[4] = HKMedicalRecordExportedFHIRVersionKey;
        [v15 FHIRVersion];
        v20 = v33 = v16;
        [v20 stringRepresentation];
        v21 = v34 = v12;
        v38[4] = v21;
        v37[5] = HKMedicalRecordExportedJSONStringKey;
        sourceString = [v15 sourceString];
        v23 = sourceString;
        v24 = @"{}";
        if (sourceString)
        {
          v24 = sourceString;
        }

        v38[5] = v24;
        v25 = [NSDictionary dictionaryWithObjects:v38 forKeys:v37 count:6];

        v12 = v34;
        v16 = v33;
      }

      else
      {
        v25 = 0;
      }

      completionCopy[2](completionCopy, v25, v16);
    }

    else
    {
      completionCopy[2](completionCopy, 0, v13);
      v16 = v13;
    }
  }

  else
  {
    v26 = [NSError hk_error:3 format:@"Unable to determine account identifier for source %@", source];
    completionCopy[2](completionCopy, 0, v26);
  }
}

- (void)remote_stringifyExtractionFailureReasonsForRecord:(id)record completion:(id)completion
{
  completionCopy = completion;
  metadata = [record metadata];
  v6 = [metadata objectForKeyedSubscript:_HKPrivateMetadataKeyExtractionFailureInfo];

  if (v6)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [[NSKeyedUnarchiver alloc] initForReadingFromData:v6 error:0];
      v8 = [[HDHRSExtractionFailureInfo alloc] initWithCoder:v7];
      failureRecords = [v8 failureRecords];
      v10 = [failureRecords hk_map:&stru_105CC0];

      completionCopy[2](completionCopy, v10, 0);
    }

    else
    {
      v11 = objc_opt_class();
      v12 = NSStringFromClass(v11);
      v7 = [NSError hk_error:3 format:@"Expected NSData for private metadata key but received %@", v12];

      (completionCopy)[2](completionCopy, 0, v7);
    }
  }

  else
  {
    completionCopy[2](completionCopy, &__NSArray0__struct, 0);
  }
}

- (void)remote_fetchUserHasAgreedToHealthRecordsDataSubmissionWithCompletion:(id)completion
{
  profileExtension = self->_profileExtension;
  completionCopy = completion;
  analyticsManager = [(HDHealthRecordsProfileExtension *)profileExtension analyticsManager];
  userHasAgreedToHealthRecordsDataSubmission = [analyticsManager userHasAgreedToHealthRecordsDataSubmission];

  v7 = [NSNumber numberWithBool:userHasAgreedToHealthRecordsDataSubmission];
  completionCopy[2](completionCopy, v7, 0);
}

- (void)remote_fetchIsImproveHealthRecordsDataSubmissionAllowedWithCompletion:(id)completion
{
  profileExtension = self->_profileExtension;
  completionCopy = completion;
  analyticsManager = [(HDHealthRecordsProfileExtension *)profileExtension analyticsManager];
  isImproveHealthRecordsDataSubmissionAllowed = [analyticsManager isImproveHealthRecordsDataSubmissionAllowed];

  v7 = [NSNumber numberWithBool:isImproveHealthRecordsDataSubmissionAllowed];
  completionCopy[2](completionCopy, v7, 0);
}

- (void)remote_fetchShouldPromptForImproveHealthRecordsDataSubmissionWithCompletion:(id)completion
{
  profileExtension = self->_profileExtension;
  completionCopy = completion;
  analyticsManager = [(HDHealthRecordsProfileExtension *)profileExtension analyticsManager];
  shouldPromptForImproveHealthRecordsDataSubmission = [analyticsManager shouldPromptForImproveHealthRecordsDataSubmission];

  v7 = [NSNumber numberWithBool:shouldPromptForImproveHealthRecordsDataSubmission];
  completionCopy[2](completionCopy, v7, 0);
}

- (void)remote_fetchCurrentDeviceSupportsImproveHealthRecordsDataSubmissionOptionWithCompletion:(id)completion
{
  profileExtension = self->_profileExtension;
  completionCopy = completion;
  analyticsManager = [(HDHealthRecordsProfileExtension *)profileExtension analyticsManager];
  currentDeviceSupportsImproveHealthRecordsDataSubmissionOption = [analyticsManager currentDeviceSupportsImproveHealthRecordsDataSubmissionOption];

  v7 = [NSNumber numberWithBool:currentDeviceSupportsImproveHealthRecordsDataSubmissionOption];
  completionCopy[2](completionCopy, v7, 0);
}

- (void)remote_triggerClinicalOptInDataCollectionForReason:(int64_t)reason completion:(id)completion
{
  profileExtension = self->_profileExtension;
  completionCopy = completion;
  optInDataCollectionManager = [(HDHealthRecordsProfileExtension *)profileExtension optInDataCollectionManager];
  [optInDataCollectionManager triggerClinicalOptInDataCollectionForReason:reason completion:completionCopy];
}

- (void)remote_resetClinicalOptInDataCollectionAnchorsWithCompletion:(id)completion
{
  profileExtension = self->_profileExtension;
  completionCopy = completion;
  optInDataCollectionManager = [(HDHealthRecordsProfileExtension *)profileExtension optInDataCollectionManager];
  [optInDataCollectionManager resetClinicalOptInDataCollectionAnchorsWithCompletion:completionCopy];
}

- (void)remote_fetchClinicalOptInDataCollectionFilePathsWithCompletion:(id)completion
{
  completionCopy = completion;
  client = [(HDHealthRecordsPluginServer *)self client];
  process = [client process];
  v17 = 0;
  v7 = [process hasRequiredEntitlement:HKPrivateHealthKitEntitlement error:&v17];
  v8 = v17;

  if (v7)
  {
    v9 = [HDAnalyticsWriter alloc];
    profile = [(HDHealthRecordsPluginServer *)self profile];
    v11 = [v9 initWithProfile:profile];

    v16 = 0;
    v12 = [v11 analyticsFilePathsWithError:&v16];
    v13 = v16;
    if (v12)
    {
      v14 = v12;
      v15 = 0;
    }

    else
    {
      v14 = 0;
      v15 = v13;
    }

    completionCopy[2](completionCopy, v14, v15);
  }

  else
  {
    completionCopy[2](completionCopy, 0, v8);
  }
}

- (void)remote_triggerClinicalContentAnalyticsForReason:(int64_t)reason options:(unint64_t)options completion:(id)completion
{
  completionCopy = completion;
  analyticsManager = [(HDHealthRecordsProfileExtension *)self->_profileExtension analyticsManager];
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_D804;
  v11[3] = &unk_105CE8;
  v12 = completionCopy;
  v10 = completionCopy;
  [analyticsManager triggerClinicalContentAnalyticsForReason:reason options:options completion:v11];
}

- (void)remote_triggerHealthCloudUploadWithCompletion:(id)completion
{
  profileExtension = self->_profileExtension;
  completionCopy = completion;
  optInDataUploadManager = [(HDHealthRecordsProfileExtension *)profileExtension optInDataUploadManager];
  [optInDataUploadManager triggerClinicalOptInDataUploadWithCompletion:completionCopy];
}

- (void)remote_resetClinicalContentAnalyticsAnchorsWithCompletion:(id)completion
{
  profileExtension = self->_profileExtension;
  completionCopy = completion;
  analyticsManager = [(HDHealthRecordsProfileExtension *)profileExtension analyticsManager];
  [analyticsManager resetClinicalContentAnalyticsAnchorsWithCompletion:completionCopy];
}

- (void)remote_registerAppSourceForClinicalUnlimitedAuthorizationModeConfirmation:(id)confirmation completion:(id)completion
{
  confirmationCopy = confirmation;
  completionCopy = completion;
  client = [(HDHealthRecordsPluginServer *)self client];
  process = [client process];
  v15 = 0;
  v10 = [process hasRequiredEntitlement:HKAuthorizationManagerEntitlement error:&v15];
  v11 = v15;

  if (v10)
  {
    aPIReminderRegistry = [(HDHealthRecordsProfileExtension *)self->_profileExtension APIReminderRegistry];

    if (aPIReminderRegistry)
    {
      aPIReminderRegistry2 = [(HDHealthRecordsProfileExtension *)self->_profileExtension APIReminderRegistry];
      [aPIReminderRegistry2 registerAppSourceForUnlimitedAuthorizationModeConfirmation:confirmationCopy completion:completionCopy];
    }

    else
    {
      aPIReminderRegistry2 = [(HDHealthRecordsProfileExtension *)self->_profileExtension profile];
      v14 = [NSError hk_error:100 format:@"Unsupported profile %@", aPIReminderRegistry2];
      completionCopy[2](completionCopy, 0, v14);
    }
  }

  else
  {
    completionCopy[2](completionCopy, 0, v11);
  }
}

- (void)remote_deregisterAppSourceFromClinicalUnlimitedAuthorizationModeConfirmation:(id)confirmation completion:(id)completion
{
  confirmationCopy = confirmation;
  completionCopy = completion;
  client = [(HDHealthRecordsPluginServer *)self client];
  process = [client process];
  v15 = 0;
  v10 = [process hasRequiredEntitlement:HKAuthorizationManagerEntitlement error:&v15];
  v11 = v15;

  if (v10)
  {
    aPIReminderRegistry = [(HDHealthRecordsProfileExtension *)self->_profileExtension APIReminderRegistry];

    if (aPIReminderRegistry)
    {
      aPIReminderRegistry2 = [(HDHealthRecordsProfileExtension *)self->_profileExtension APIReminderRegistry];
      [aPIReminderRegistry2 deregisterAppSourceFromUnlimitedAuthorizationModeConfirmation:confirmationCopy completion:completionCopy];
    }

    else
    {
      aPIReminderRegistry2 = [(HDHealthRecordsProfileExtension *)self->_profileExtension profile];
      v14 = [NSError hk_error:100 format:@"Unsupported profile %@", aPIReminderRegistry2];
      completionCopy[2](completionCopy, 0, v14);
    }
  }

  else
  {
    completionCopy[2](completionCopy, 0, v11);
  }
}

@end