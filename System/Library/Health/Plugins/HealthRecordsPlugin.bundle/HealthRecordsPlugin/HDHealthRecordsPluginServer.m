@interface HDHealthRecordsPluginServer
- (HDHealthRecordsPluginServer)initWithUUID:(id)a3 configuration:(id)a4 client:(id)a5 delegate:(id)a6;
- (void)_notifyObserversAboutAccountsEvent:(unint64_t)a3;
- (void)accountManager:(id)a3 account:(id)a4 didChangeState:(int64_t)a5;
- (void)clinicalIngestionManager:(id)a3 willChangeIngestionState:(int64_t)a4;
- (void)remote_currentIngestionStatusWithCompletion:(id)a3;
- (void)remote_deregisterAppSourceFromClinicalUnlimitedAuthorizationModeConfirmation:(id)a3 completion:(id)a4;
- (void)remote_fetchClinicalConnectedAccountsWithCompletion:(id)a3;
- (void)remote_fetchClinicalOptInDataCollectionFilePathsWithCompletion:(id)a3;
- (void)remote_fetchCurrentDeviceSupportsImproveHealthRecordsDataSubmissionOptionWithCompletion:(id)a3;
- (void)remote_fetchExportedPropertiesForHealthRecord:(id)a3 completion:(id)a4;
- (void)remote_fetchFHIRJSONDocumentWithAccountIdentifier:(id)a3 completion:(id)a4;
- (void)remote_fetchIsImproveHealthRecordsDataSubmissionAllowedWithCompletion:(id)a3;
- (void)remote_fetchLogoForBrand:(id)a3 scale:(id)a4 completion:(id)a5;
- (void)remote_fetchRawSourceStringForHealthRecord:(id)a3 completion:(id)a4;
- (void)remote_fetchShouldPromptForImproveHealthRecordsDataSubmissionWithCompletion:(id)a3;
- (void)remote_fetchUserHasAgreedToHealthRecordsDataSubmissionWithCompletion:(id)a3;
- (void)remote_registerAppSourceForClinicalUnlimitedAuthorizationModeConfirmation:(id)a3 completion:(id)a4;
- (void)remote_resetClinicalContentAnalyticsAnchorsWithCompletion:(id)a3;
- (void)remote_resetClinicalOptInDataCollectionAnchorsWithCompletion:(id)a3;
- (void)remote_stringifyExtractionFailureReasonsForRecord:(id)a3 completion:(id)a4;
- (void)remote_triggerClinicalContentAnalyticsForReason:(int64_t)a3 options:(unint64_t)a4 completion:(id)a5;
- (void)remote_triggerClinicalOptInDataCollectionForReason:(int64_t)a3 completion:(id)a4;
- (void)remote_triggerHealthCloudUploadWithCompletion:(id)a3;
@end

@implementation HDHealthRecordsPluginServer

- (HDHealthRecordsPluginServer)initWithUUID:(id)a3 configuration:(id)a4 client:(id)a5 delegate:(id)a6
{
  v10 = a5;
  v21.receiver = self;
  v21.super_class = HDHealthRecordsPluginServer;
  v11 = [(HDHealthRecordsPluginServer *)&v21 initWithUUID:a3 configuration:a4 client:v10 delegate:a6];
  if (v11)
  {
    v12 = [v10 profile];
    v13 = [v12 profileExtensionWithIdentifier:HKHealthRecordsPluginIdentifier];
    profileExtension = v11->_profileExtension;
    v11->_profileExtension = v13;

    v11->_ingestionStatusLock._os_unfair_lock_opaque = 0;
    v15 = [(HDHealthRecordsProfileExtension *)v11->_profileExtension ingestionManager];
    v16 = [v15 currentIngestionState];
    if ((v16 - 1) > 2)
    {
      v17 = 0;
    }

    else
    {
      v17 = qword_E4018[(v16 - 1)];
    }

    v11->_lastKnownIngestionStatus = v17;

    v18 = [(HDHealthRecordsProfileExtension *)v11->_profileExtension ingestionManager];
    [v18 registerIngestionStateChangeObserver:v11];

    v19 = [(HDHealthRecordsProfileExtension *)v11->_profileExtension accountManager];
    [v19 addAccountStateObserver:v11];
  }

  return v11;
}

- (void)remote_fetchClinicalConnectedAccountsWithCompletion:(id)a3
{
  v4 = a3;
  v5 = [(HDHealthRecordsProfileExtension *)self->_profileExtension accountManager];
  v9 = 0;
  v6 = [v5 allAccountsWithError:&v9];
  v7 = v9;

  if (v6)
  {
    v8 = [v6 hk_map:&stru_105C58];
    v4[2](v4, v8, 0);
  }

  else
  {
    (v4)[2](v4, 0, v7);
  }
}

- (void)accountManager:(id)a3 account:(id)a4 didChangeState:(int64_t)a5
{
  if (a5 > 1)
  {
    if (a5 == 2)
    {
      v6 = 4;
      goto LABEL_13;
    }

    if (a5 == 3)
    {
      v6 = 5;
      goto LABEL_13;
    }

LABEL_8:
    v6 = 0;
    goto LABEL_13;
  }

  if (a5)
  {
    if (a5 == 1)
    {
      v6 = 3;
LABEL_13:

      [(HDHealthRecordsPluginServer *)self _notifyObserversAboutAccountsEvent:v6, a4];
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

- (void)remote_fetchLogoForBrand:(id)a3 scale:(id)a4 completion:(id)a5
{
  v13 = a3;
  v8 = a4;
  v9 = a5;
  v10 = [(HDHealthRecordsProfileExtension *)self->_profileExtension providerServiceManager];
  if (v10)
  {
    if ([v8 integerValue] <= 2)
    {
      if ([v8 intValue] <= 1)
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

    [v10 fetchLogoDataForBrand:v13 scaleKey:v11 completion:v9];
  }

  else
  {
    v12 = [NSError hk_error:127 description:@"provider service calls are not supported on this profile"];
    v9[2](v9, 0, v12);
  }
}

- (void)remote_currentIngestionStatusWithCompletion:(id)a3
{
  lastKnownIngestionStatus = self->_lastKnownIngestionStatus;
  v5 = a3;
  v6 = [NSNumber numberWithUnsignedInteger:lastKnownIngestionStatus];
  (*(a3 + 2))(v5, v6, 0);
}

- (void)clinicalIngestionManager:(id)a3 willChangeIngestionState:(int64_t)a4
{
  os_unfair_lock_lock(&self->_ingestionStatusLock);
  if ((a4 - 1) > 2)
  {
    v6 = 0;
  }

  else
  {
    v6 = qword_E4018[a4 - 1];
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
      v12 = self;
      v13 = 2114;
      v14 = v10;
      _os_log_impl(&dword_0, v9, OS_LOG_TYPE_DEFAULT, "%{public}@: ingestion manager will change ingestion state to %{public}@, notifying HKHealthRecordsStore", &v11, 0x16u);
    }

    [(HDHealthRecordsPluginServer *)self _notifyObserversAboutAccountsEvent:v6];
  }
}

- (void)_notifyObserversAboutAccountsEvent:(unint64_t)a3
{
  v5 = [(HDHealthRecordsPluginServer *)self client];
  v6 = [v5 connection];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_C774;
  v8[3] = &unk_105C38;
  v8[4] = self;
  v7 = [v6 remoteObjectProxyWithErrorHandler:v8];

  [v7 clientRemote_healthRecordsAccountsEventObserved:a3];
}

- (void)remote_fetchFHIRJSONDocumentWithAccountIdentifier:(id)a3 completion:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(HDHealthRecordsPluginServer *)self profile];
  v12 = 0;
  v9 = [HDOriginalFHIRResourceEntity fullResourceDocumentForAccountIdentifier:v7 profile:v8 error:&v12];

  v10 = v12;
  v11 = [v9 dictionaryRepresentation];
  v6[2](v6, v11, v10);
}

- (void)remote_fetchRawSourceStringForHealthRecord:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v6 sourceRevision];
  v9 = [v8 source];

  v10 = [v9 _deducedClinicalAccountIdentifier];
  if (v10)
  {
    v11 = [v6 originIdentifier];
    v12 = [v11 fhirIdentifier];

    if (v12)
    {
      v13 = [v6 FHIRIdentifier];
      v38 = 0;
      v14 = [v13 parentResourceIdentifierWithError:&v38];
      v15 = v38;

      if (!v14)
      {
        v7[2](v7, 0, v15);
LABEL_23:

        goto LABEL_24;
      }

      v16 = [(HDHealthRecordsPluginServer *)self profile];
      v37 = v15;
      v17 = [HDClinicalRecordEntity clinicalRecordWithResourceIdentifier:v14 source:v9 profile:v16 error:&v37];
      v18 = v37;

      if (v17)
      {
        v19 = [v17 FHIRResource];
        v20 = [v19 sourceString];
      }

      else
      {
        v31 = [(HDHealthRecordsPluginServer *)self profile];
        v36 = v18;
        v19 = [HDOriginalFHIRResourceEntity resourceObjectWithIdentifier:v14 accountIdentifier:v10 profile:v31 error:&v36];
        v32 = v36;

        if (v19)
        {
          v20 = [v19 sourceString];
        }

        else
        {
          v20 = 0;
        }

        v18 = v32;
      }
    }

    else
    {
      v22 = [v6 originIdentifier];
      v23 = [v22 signedClinicalDataRecordIdentifier];

      if (v23)
      {
        v24 = [(HDHealthRecordsProfileExtension *)self->_profileExtension signedClinicalDataManager];
        v35 = 0;
        v25 = [v24 signedClinicalDataGroupBackingMedicalRecord:v6 options:4 error:&v35];
        v18 = v35;

        if (v25)
        {
          v26 = [v25 clinicalRecords];
          v33[0] = _NSConcreteStackBlock;
          v33[1] = 3221225472;
          v33[2] = sub_CCC8;
          v33[3] = &unk_105C80;
          v27 = v6;
          v34 = v27;
          v28 = [v26 hk_firstObjectPassingTest:v33];

          if (v28)
          {
            v29 = [v28 FHIRResource];
            v30 = [v29 data];
            v20 = [NSJSONSerialization hk_stringForDisplayFromFHIRData:v30];
          }

          else
          {
            v29 = [v27 UUID];
            [NSError hk_error:118 format:@"There is no clinical record corresponding to medical record %@", v29];
            v20 = 0;
            v18 = v30 = v18;
          }
        }

        else
        {
          v20 = 0;
        }
      }

      else
      {
        v18 = [NSError hk_error:3 description:@"Cannot fetch raw FHIR data for record that is backed by neither a FHIR resource nor an SCD record"];
        v20 = 0;
      }
    }

    (v7)[2](v7, v20, v18);

    v15 = v18;
    goto LABEL_23;
  }

  v21 = [NSError hk_error:3 format:@"Unable to determine account identifier for source %@", v9];
  v7[2](v7, 0, v21);

LABEL_24:
}

- (void)remote_fetchExportedPropertiesForHealthRecord:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v6 sourceRevision];
  v9 = [v8 source];

  v10 = [v9 _deducedClinicalAccountIdentifier];
  if (v10)
  {
    v11 = [v6 FHIRIdentifier];
    v36 = 0;
    v12 = [v11 parentResourceIdentifierWithError:&v36];
    v13 = v36;

    if (v12)
    {
      v14 = [(HDHealthRecordsPluginServer *)self profile];
      v35 = v13;
      v15 = [HDOriginalFHIRResourceEntity resourceObjectWithIdentifier:v12 accountIdentifier:v10 profile:v14 error:&v35];
      v16 = v35;

      if (v15)
      {
        v37[0] = HKMedicalRecordExportedResourceTypeKey;
        v32 = [v15 identifier];
        v31 = [v32 resourceType];
        v38[0] = v31;
        v37[1] = HKMedicalRecordExportedResourceIdentifierKey;
        v30 = [v15 identifier];
        v29 = [v30 identifier];
        v38[1] = v29;
        v37[2] = HKMedicalRecordExportedSourceURLKey;
        v28 = [v15 sourceURL];
        v17 = [v28 absoluteString];
        v18 = v17;
        v19 = &stru_1090E8;
        if (v17)
        {
          v19 = v17;
        }

        v38[2] = v19;
        v37[3] = HKMedicalRecordExportedReceivedDateKey;
        v27 = [v15 receivedDate];
        v38[3] = v27;
        v37[4] = HKMedicalRecordExportedFHIRVersionKey;
        [v15 FHIRVersion];
        v20 = v33 = v16;
        [v20 stringRepresentation];
        v21 = v34 = v12;
        v38[4] = v21;
        v37[5] = HKMedicalRecordExportedJSONStringKey;
        v22 = [v15 sourceString];
        v23 = v22;
        v24 = @"{}";
        if (v22)
        {
          v24 = v22;
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

      v7[2](v7, v25, v16);
    }

    else
    {
      v7[2](v7, 0, v13);
      v16 = v13;
    }
  }

  else
  {
    v26 = [NSError hk_error:3 format:@"Unable to determine account identifier for source %@", v9];
    v7[2](v7, 0, v26);
  }
}

- (void)remote_stringifyExtractionFailureReasonsForRecord:(id)a3 completion:(id)a4
{
  v13 = a4;
  v5 = [a3 metadata];
  v6 = [v5 objectForKeyedSubscript:_HKPrivateMetadataKeyExtractionFailureInfo];

  if (v6)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [[NSKeyedUnarchiver alloc] initForReadingFromData:v6 error:0];
      v8 = [[HDHRSExtractionFailureInfo alloc] initWithCoder:v7];
      v9 = [v8 failureRecords];
      v10 = [v9 hk_map:&stru_105CC0];

      v13[2](v13, v10, 0);
    }

    else
    {
      v11 = objc_opt_class();
      v12 = NSStringFromClass(v11);
      v7 = [NSError hk_error:3 format:@"Expected NSData for private metadata key but received %@", v12];

      (v13)[2](v13, 0, v7);
    }
  }

  else
  {
    v13[2](v13, &__NSArray0__struct, 0);
  }
}

- (void)remote_fetchUserHasAgreedToHealthRecordsDataSubmissionWithCompletion:(id)a3
{
  profileExtension = self->_profileExtension;
  v4 = a3;
  v5 = [(HDHealthRecordsProfileExtension *)profileExtension analyticsManager];
  v6 = [v5 userHasAgreedToHealthRecordsDataSubmission];

  v7 = [NSNumber numberWithBool:v6];
  v4[2](v4, v7, 0);
}

- (void)remote_fetchIsImproveHealthRecordsDataSubmissionAllowedWithCompletion:(id)a3
{
  profileExtension = self->_profileExtension;
  v4 = a3;
  v5 = [(HDHealthRecordsProfileExtension *)profileExtension analyticsManager];
  v6 = [v5 isImproveHealthRecordsDataSubmissionAllowed];

  v7 = [NSNumber numberWithBool:v6];
  v4[2](v4, v7, 0);
}

- (void)remote_fetchShouldPromptForImproveHealthRecordsDataSubmissionWithCompletion:(id)a3
{
  profileExtension = self->_profileExtension;
  v4 = a3;
  v5 = [(HDHealthRecordsProfileExtension *)profileExtension analyticsManager];
  v6 = [v5 shouldPromptForImproveHealthRecordsDataSubmission];

  v7 = [NSNumber numberWithBool:v6];
  v4[2](v4, v7, 0);
}

- (void)remote_fetchCurrentDeviceSupportsImproveHealthRecordsDataSubmissionOptionWithCompletion:(id)a3
{
  profileExtension = self->_profileExtension;
  v4 = a3;
  v5 = [(HDHealthRecordsProfileExtension *)profileExtension analyticsManager];
  v6 = [v5 currentDeviceSupportsImproveHealthRecordsDataSubmissionOption];

  v7 = [NSNumber numberWithBool:v6];
  v4[2](v4, v7, 0);
}

- (void)remote_triggerClinicalOptInDataCollectionForReason:(int64_t)a3 completion:(id)a4
{
  profileExtension = self->_profileExtension;
  v6 = a4;
  v7 = [(HDHealthRecordsProfileExtension *)profileExtension optInDataCollectionManager];
  [v7 triggerClinicalOptInDataCollectionForReason:a3 completion:v6];
}

- (void)remote_resetClinicalOptInDataCollectionAnchorsWithCompletion:(id)a3
{
  profileExtension = self->_profileExtension;
  v4 = a3;
  v5 = [(HDHealthRecordsProfileExtension *)profileExtension optInDataCollectionManager];
  [v5 resetClinicalOptInDataCollectionAnchorsWithCompletion:v4];
}

- (void)remote_fetchClinicalOptInDataCollectionFilePathsWithCompletion:(id)a3
{
  v4 = a3;
  v5 = [(HDHealthRecordsPluginServer *)self client];
  v6 = [v5 process];
  v17 = 0;
  v7 = [v6 hasRequiredEntitlement:HKPrivateHealthKitEntitlement error:&v17];
  v8 = v17;

  if (v7)
  {
    v9 = [HDAnalyticsWriter alloc];
    v10 = [(HDHealthRecordsPluginServer *)self profile];
    v11 = [v9 initWithProfile:v10];

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

    v4[2](v4, v14, v15);
  }

  else
  {
    v4[2](v4, 0, v8);
  }
}

- (void)remote_triggerClinicalContentAnalyticsForReason:(int64_t)a3 options:(unint64_t)a4 completion:(id)a5
{
  v8 = a5;
  v9 = [(HDHealthRecordsProfileExtension *)self->_profileExtension analyticsManager];
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_D804;
  v11[3] = &unk_105CE8;
  v12 = v8;
  v10 = v8;
  [v9 triggerClinicalContentAnalyticsForReason:a3 options:a4 completion:v11];
}

- (void)remote_triggerHealthCloudUploadWithCompletion:(id)a3
{
  profileExtension = self->_profileExtension;
  v4 = a3;
  v5 = [(HDHealthRecordsProfileExtension *)profileExtension optInDataUploadManager];
  [v5 triggerClinicalOptInDataUploadWithCompletion:v4];
}

- (void)remote_resetClinicalContentAnalyticsAnchorsWithCompletion:(id)a3
{
  profileExtension = self->_profileExtension;
  v4 = a3;
  v5 = [(HDHealthRecordsProfileExtension *)profileExtension analyticsManager];
  [v5 resetClinicalContentAnalyticsAnchorsWithCompletion:v4];
}

- (void)remote_registerAppSourceForClinicalUnlimitedAuthorizationModeConfirmation:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(HDHealthRecordsPluginServer *)self client];
  v9 = [v8 process];
  v15 = 0;
  v10 = [v9 hasRequiredEntitlement:HKAuthorizationManagerEntitlement error:&v15];
  v11 = v15;

  if (v10)
  {
    v12 = [(HDHealthRecordsProfileExtension *)self->_profileExtension APIReminderRegistry];

    if (v12)
    {
      v13 = [(HDHealthRecordsProfileExtension *)self->_profileExtension APIReminderRegistry];
      [v13 registerAppSourceForUnlimitedAuthorizationModeConfirmation:v6 completion:v7];
    }

    else
    {
      v13 = [(HDHealthRecordsProfileExtension *)self->_profileExtension profile];
      v14 = [NSError hk_error:100 format:@"Unsupported profile %@", v13];
      v7[2](v7, 0, v14);
    }
  }

  else
  {
    v7[2](v7, 0, v11);
  }
}

- (void)remote_deregisterAppSourceFromClinicalUnlimitedAuthorizationModeConfirmation:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(HDHealthRecordsPluginServer *)self client];
  v9 = [v8 process];
  v15 = 0;
  v10 = [v9 hasRequiredEntitlement:HKAuthorizationManagerEntitlement error:&v15];
  v11 = v15;

  if (v10)
  {
    v12 = [(HDHealthRecordsProfileExtension *)self->_profileExtension APIReminderRegistry];

    if (v12)
    {
      v13 = [(HDHealthRecordsProfileExtension *)self->_profileExtension APIReminderRegistry];
      [v13 deregisterAppSourceFromUnlimitedAuthorizationModeConfirmation:v6 completion:v7];
    }

    else
    {
      v13 = [(HDHealthRecordsProfileExtension *)self->_profileExtension profile];
      v14 = [NSError hk_error:100 format:@"Unsupported profile %@", v13];
      v7[2](v7, 0, v14);
    }
  }

  else
  {
    v7[2](v7, 0, v11);
  }
}

@end