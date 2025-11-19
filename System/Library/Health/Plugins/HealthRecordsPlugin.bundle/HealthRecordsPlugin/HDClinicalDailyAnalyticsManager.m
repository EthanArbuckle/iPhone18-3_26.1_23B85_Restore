@interface HDClinicalDailyAnalyticsManager
+ (id)_queryDescriptorForType:(id)a3 predicate:(id)a4;
+ (id)_recordAnalyticsDescriptions;
- (BOOL)_submitHealthRecordsDailyAnalyticsWithCoordinator:(id)a3 error:(id *)a4;
- (HDClinicalDailyAnalyticsManager)initWithProfileExtension:(id)a3;
- (id)_countWithRecordCategoryAnalyticsDescription:(id)a3 timeScope:(int64_t)a4 nowDate:(id)a5 transaction:(id)a6 error:(id *)a7;
- (id)_fetchAccountAnalyticsCollectsClinicalOptInData:(BOOL)a3 collectsImproveHealthAndActivityData:(BOOL)a4 error:(id *)a5;
- (id)_fetchAnalyticsDictionaryWithError:(id *)a3;
- (id)_fetchDeviceContextAnalyticsWithProfile:(id)a3 transaction:(id)a4 error:(id *)a5;
- (id)_fetchRecordAndUserDomainConceptAnalyticsHealthDataSubmissionAllowed:(BOOL)a3 collectsClinicalOptInData:(BOOL)a4 transaction:(id)a5 error:(id *)a6;
- (id)_recordCategoryAnalyticsWithDescription:(id)a3 nowDate:(id)a4 transaction:(id)a5 error:(id *)a6;
- (id)_recordCountAnalyticsWithNowDate:(id)a3 transaction:(id)a4 error:(id *)a5;
- (int64_t)_hasMedicalRecordsOfType:(id)a3 medicalRecordEntitySubclass:(Class)a4 predicate:(id)a5 database:(id)a6 error:(id *)a7;
- (void)dealloc;
- (void)profileDidBecomeReady:(id)a3;
- (void)reportDailyAnalyticsWithCoordinator:(id)a3 completion:(id)a4;
@end

@implementation HDClinicalDailyAnalyticsManager

- (HDClinicalDailyAnalyticsManager)initWithProfileExtension:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = HDClinicalDailyAnalyticsManager;
  v5 = [(HDClinicalDailyAnalyticsManager *)&v10 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_profileExtension, v4);
    v7 = [v4 profile];
    [v7 registerProfileReadyObserver:v6 queue:0];

    profileConnectionOverride = v6->_profileConnectionOverride;
    v6->_profileConnectionOverride = 0;
  }

  return v6;
}

- (void)dealloc
{
  WeakRetained = objc_loadWeakRetained(&self->_profileExtension);
  v4 = [WeakRetained profile];
  v5 = [v4 daemon];
  v6 = [v5 analyticsSubmissionCoordinator];
  [v6 removeObserver:self];

  v7.receiver = self;
  v7.super_class = HDClinicalDailyAnalyticsManager;
  [(HDClinicalDailyAnalyticsManager *)&v7 dealloc];
}

- (void)profileDidBecomeReady:(id)a3
{
  WeakRetained = objc_loadWeakRetained(&self->_profileExtension);
  v4 = [WeakRetained profile];
  v5 = [v4 daemon];
  v6 = [v5 analyticsSubmissionCoordinator];
  [v6 addObserver:self queue:0];
}

- (BOOL)_submitHealthRecordsDailyAnalyticsWithCoordinator:(id)a3 error:(id *)a4
{
  v6 = a3;
  if ([v6 isEventUsed:@"com.apple.HealthRecords.DailyAnalytics"])
  {
    v7 = [(HDClinicalDailyAnalyticsManager *)self _fetchAnalyticsDictionaryWithError:a4];
    v8 = v7;
    v9 = v7 != 0;
    if (v7)
    {
      v11[0] = _NSConcreteStackBlock;
      v11[1] = 3221225472;
      v11[2] = sub_979C8;
      v11[3] = &unk_105F08;
      v12 = v7;
      [v6 sendEvent:@"com.apple.HealthRecords.DailyAnalytics" block:v11];
    }
  }

  else
  {
    v9 = 1;
  }

  return v9;
}

- (id)_fetchAnalyticsDictionaryWithError:(id *)a3
{
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = sub_97B40;
  v16 = sub_97B50;
  v17 = 0;
  WeakRetained = objc_loadWeakRetained(&self->_profileExtension);
  v6 = [WeakRetained profile];
  v7 = [v6 database];
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_97B58;
  v11[3] = &unk_1072A8;
  v11[4] = self;
  v11[5] = &v12;
  LODWORD(a3) = [HDMedicalRecordEntity performReadTransactionWithHealthDatabase:v7 error:a3 block:v11];

  if (a3)
  {
    v8 = v13[5];
  }

  else
  {
    v8 = 0;
  }

  v9 = v8;
  _Block_object_dispose(&v12, 8);

  return v9;
}

- (id)_fetchAccountAnalyticsCollectsClinicalOptInData:(BOOL)a3 collectsImproveHealthAndActivityData:(BOOL)a4 error:(id *)a5
{
  v6 = a4;
  v7 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_profileExtension);
  v10 = [WeakRetained accountManager];
  v11 = [v10 allAccountsWithError:a5];

  if (v11)
  {
    v59 = self;
    v58 = __PAIR64__(v7, v6);
    v60 = v11;
    v61 = objc_alloc_init(NSMutableSet);
    v68 = 0u;
    v69 = 0u;
    v70 = 0u;
    v71 = 0u;
    obj = v11;
    v12 = [obj countByEnumeratingWithState:&v68 objects:v75 count:16];
    if (v12)
    {
      v13 = v12;
      v64 = 0;
      v65 = 0x8000000000000001;
      v63 = *v69;
      v66 = 0x7FFFFFFFFFFFFFFFLL;
      v67 = 0;
      v14 = 0x7FFFFFFFFFFFFFFFLL;
      v15 = 0x8000000000000001;
      v16 = 0x7FFFFFFFFFFFFFFFLL;
      do
      {
        for (i = 0; i != v13; i = i + 1)
        {
          if (*v69 != v63)
          {
            objc_enumerationMutation(obj);
          }

          v18 = *(*(&v68 + 1) + 8 * i);
          v19 = +[NSCalendar currentCalendar];
          v20 = [v18 creationDate];
          v21 = +[NSDate date];
          v22 = [v19 components:0x2000 fromDate:v20 toDate:v21 options:0];

          v23 = [v22 weekOfYear];
          v24 = v23;
          if (v23 < v16)
          {
            v16 = v23;
          }

          if ([v18 isUserEnabled])
          {
            ++v67;
            v25 = [v18 signedClinicalDataIssuer];

            if (v24 <= v15)
            {
              v26 = v15;
            }

            else
            {
              v26 = v24;
            }

            if (v24 >= v14)
            {
              v27 = v14;
            }

            else
            {
              v27 = v24;
            }

            v29 = v65;
            v28 = v66;
            if (v24 <= v65)
            {
              v30 = v65;
            }

            else
            {
              v30 = v24;
            }

            if (v24 >= v66)
            {
              v31 = v66;
            }

            else
            {
              v31 = v24;
            }

            v32 = v64;
            if (v25)
            {
              v32 = v64 + 1;
              v28 = v31;
            }

            v66 = v28;
            if (v25)
            {
              v29 = v30;
            }

            v64 = v32;
            v65 = v29;
            if (!v25)
            {
              v14 = v27;
              v15 = v26;
            }

            v33 = [v18 gateway];

            if (v33)
            {
              v34 = [v18 gateway];
              v35 = [v34 externalID];
              v36 = v35;
              if (v35)
              {
                v37 = v35;
              }

              else
              {
                v37 = @"Nil";
              }

              [v61 addObject:v37];
            }
          }
        }

        v13 = [obj countByEnumeratingWithState:&v68 objects:v75 count:16];
      }

      while (v13);
    }

    else
    {
      v64 = 0;
      v65 = 0x8000000000000001;
      v66 = 0x7FFFFFFFFFFFFFFFLL;
      v67 = 0;
      v14 = 0x7FFFFFFFFFFFFFFFLL;
      v15 = 0x8000000000000001;
      v16 = 0x7FFFFFFFFFFFFFFFLL;
    }

    v39 = objc_loadWeakRetained(&v59->_profileExtension);
    v40 = [v39 analyticsManager];
    v41 = [v40 acceptedVersionForImproveHealthRecords];

    if (v16 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v38 = &off_110778;
      v11 = v60;
    }

    else
    {
      v73[0] = @"weeksSinceOnboarded";
      v42 = [NSNumber numberWithInteger:v16];
      v74[0] = v42;
      v74[1] = &__kCFBooleanTrue;
      v73[1] = @"isOnboarded";
      v73[2] = @"isImproveHealthRecordsAllowed";
      v43 = [NSNumber numberWithInteger:v41];
      v74[2] = v43;
      v44 = [NSDictionary dictionaryWithObjects:v74 forKeys:v73 count:3];
      v45 = [v44 mutableCopy];

      v46 = HIDWORD(v58);
      if (v58)
      {
        v47 = [NSNumber numberWithInt:v64 == v67];
        [v45 setObject:v47 forKeyedSubscript:@"hasSignedClinicalDataWithNoCHRAccount"];

        if (v15 == 0x8000000000000001)
        {
          +[NSNull null];
        }

        else
        {
          [NSNumber numberWithInteger:v15];
        }
        v48 = ;
        [v45 setObject:v48 forKeyedSubscript:{@"weeksSinceFirstOnboardedCHR", v58}];

        if (v14 == 0x7FFFFFFFFFFFFFFFLL)
        {
          +[NSNull null];
        }

        else
        {
          [NSNumber numberWithInteger:v14];
        }
        v49 = ;
        [v45 setObject:v49 forKeyedSubscript:@"weeksSinceLastOnboardedCHR"];

        if (v65 == 0x8000000000000001)
        {
          +[NSNull null];
        }

        else
        {
          [NSNumber numberWithInteger:?];
        }
        v50 = ;
        [v45 setObject:v50 forKeyedSubscript:@"weeksSinceFirstOnboardedVHR"];

        if (v66 == 0x7FFFFFFFFFFFFFFFLL)
        {
          +[NSNull null];
        }

        else
        {
          [NSNumber numberWithInteger:?];
        }
        v51 = ;
        [v45 setObject:v51 forKeyedSubscript:@"weeksSinceLastOnboardedVHR"];
      }

      v11 = v60;
      if (v46)
      {
        v52 = [NSSortDescriptor sortDescriptorWithKey:@"self" ascending:1];
        v53 = [NSNumber numberWithInteger:v67];
        [v45 setObject:v53 forKeyedSubscript:@"enabledAccounts"];

        v72 = v52;
        v54 = [NSArray arrayWithObjects:&v72 count:1];
        v55 = [v61 sortedArrayUsingDescriptors:v54];
        v56 = [v55 componentsJoinedByString:{@", "}];
        [v45 setObject:v56 forKeyedSubscript:@"gatewayID"];
      }

      v38 = [v45 copy];
    }
  }

  else
  {
    v38 = 0;
  }

  return v38;
}

- (id)_fetchDeviceContextAnalyticsWithProfile:(id)a3 transaction:(id)a4 error:(id *)a5
{
  v6 = [a3 deviceContextManager];
  v7 = [v6 numberOfDeviceContextsPerDeviceType:a5];

  if (v7)
  {
    v8 = [v7 objectForKeyedSubscript:&off_110420];
    v9 = v8;
    if (v8)
    {
      v10 = v8;
    }

    else
    {
      v10 = &off_110438;
    }

    v11 = v10;

    v12 = [v7 objectForKeyedSubscript:&off_110450];
    v13 = v12;
    if (v12)
    {
      v14 = v12;
    }

    else
    {
      v14 = &off_110438;
    }

    v15 = v14;

    v16 = [v7 objectForKeyedSubscript:&off_110468];
    v17 = v16;
    if (v16)
    {
      v18 = v16;
    }

    else
    {
      v18 = &off_110438;
    }

    v19 = v18;

    v20 = [v7 objectForKeyedSubscript:&off_110480];
    v21 = v20;
    if (v20)
    {
      v22 = v20;
    }

    else
    {
      v22 = &off_110438;
    }

    v23 = v22;

    v26[0] = @"countPairediPhone";
    v26[1] = @"countPairedWatch";
    v27[0] = v11;
    v27[1] = v19;
    v26[2] = @"countPairediPad";
    v26[3] = @"countPairedVisionPro";
    v27[2] = v15;
    v27[3] = v23;
    v24 = [NSDictionary dictionaryWithObjects:v27 forKeys:v26 count:4];
  }

  else
  {
    v24 = 0;
  }

  return v24;
}

- (id)_fetchRecordAndUserDomainConceptAnalyticsHealthDataSubmissionAllowed:(BOOL)a3 collectsClinicalOptInData:(BOOL)a4 transaction:(id)a5 error:(id *)a6
{
  v7 = a4;
  v8 = a3;
  v10 = a5;
  v11 = objc_alloc_init(NSMutableDictionary);
  if (v7)
  {
    WeakRetained = objc_loadWeakRetained(&self->_profileExtension);
    v13 = [WeakRetained profile];
    v14 = [v13 userDomainConceptManager];
    v15 = [v14 userDomainConceptAnalyticsWithError:a6];

    if (!v15)
    {
      goto LABEL_15;
    }

    [v11 addEntriesFromDictionary:v15];
    v16 = +[NSDate date];
    v17 = [(HDClinicalDailyAnalyticsManager *)self _recordCountAnalyticsWithNowDate:v16 transaction:v10 error:a6];

    if (!v17)
    {

      goto LABEL_15;
    }

    [v11 addEntriesFromDictionary:v17];
  }

  if (v8)
  {
    v18 = [HKObjectType signedClinicalDataRecordTypeForIdentifier:HKSignedClinicalDataRecordTypeIdentifierSignedClinicalDataRecord];
    v19 = objc_opt_class();
    v20 = [v10 protectedDatabase];
    v21 = [(HDClinicalDailyAnalyticsManager *)self _hasMedicalRecordsOfType:v18 medicalRecordEntitySubclass:v19 predicate:0 database:v20 error:a6];

    if (!v21)
    {

      goto LABEL_15;
    }

    v22 = [NSNumber numberWithBool:v21 == 1];
    [v11 setObject:v22 forKeyedSubscript:@"hasSignedClinicalData"];
  }

  if (!v7)
  {
LABEL_11:
    v30 = v11;
    goto LABEL_16;
  }

  v23 = [HKObjectType medicalTypeForIdentifier:HKClinicalNoteRecordTypeIdentifierClinicalNoteRecord];
  v24 = objc_opt_class();
  v25 = [v10 protectedDatabase];
  v26 = [(HDClinicalDailyAnalyticsManager *)self _hasMedicalRecordsOfType:v23 medicalRecordEntitySubclass:v24 predicate:0 database:v25 error:a6];

  if (v26)
  {
    v27 = [NSNumber numberWithBool:v26 == 1];
    [v11 setObject:v27 forKeyedSubscript:@"hasClinicalNotes"];

    v28 = [v10 protectedDatabase];
    v29 = [(HDClinicalDailyAnalyticsManager *)self _countClinicalNoteAttachmentsInDatabase:v28 error:a6];

    [v11 setObject:v29 forKeyedSubscript:@"countNumberClinicalNoteAttachments"];
    goto LABEL_11;
  }

LABEL_15:
  v30 = 0;
LABEL_16:

  return v30;
}

- (id)_recordCountAnalyticsWithNowDate:(id)a3 transaction:(id)a4 error:(id *)a5
{
  v6 = a3;
  v7 = a4;
  v8 = objc_alloc_init(NSMutableDictionary);
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  obj = [objc_opt_class() _recordAnalyticsDescriptions];
  v9 = [obj countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v22;
    while (2)
    {
      for (i = 0; i != v10; i = i + 1)
      {
        if (*v22 != v11)
        {
          objc_enumerationMutation(obj);
        }

        v17 = *(*(&v21 + 1) + 8 * i);
        v18 = v6;
        v19 = v7;
        v20 = v8;
        v13 = HKWithAutoreleasePool();

        if (!v13)
        {

          v14 = 0;
          goto LABEL_11;
        }
      }

      v10 = [obj countByEnumeratingWithState:&v21 objects:v25 count:16];
      if (v10)
      {
        continue;
      }

      break;
    }
  }

  v14 = v8;
LABEL_11:

  return v14;
}

- (id)_recordCategoryAnalyticsWithDescription:(id)a3 nowDate:(id)a4 transaction:(id)a5 error:(id *)a6
{
  v8 = a3;
  v19 = a4;
  v9 = a5;
  v10 = objc_alloc_init(NSMutableDictionary);
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  obj = [v8 timeScopes];
  v11 = [obj countByEnumeratingWithState:&v25 objects:v29 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v26;
    while (2)
    {
      for (i = 0; i != v12; i = i + 1)
      {
        if (*v26 != v13)
        {
          objc_enumerationMutation(obj);
        }

        v20 = *(*(&v25 + 1) + 8 * i);
        v21 = v8;
        v22 = v19;
        v23 = v9;
        v24 = v10;
        v15 = HKWithAutoreleasePool();

        if (!v15)
        {

          v16 = 0;
          goto LABEL_11;
        }
      }

      v12 = [obj countByEnumeratingWithState:&v25 objects:v29 count:16];
      if (v12)
      {
        continue;
      }

      break;
    }
  }

  v16 = v10;
LABEL_11:

  return v16;
}

- (id)_countWithRecordCategoryAnalyticsDescription:(id)a3 timeScope:(int64_t)a4 nowDate:(id)a5 transaction:(id)a6 error:(id *)a7
{
  v29 = a5;
  v31 = a6;
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  obj = [a3 queryDescriptors];
  v10 = [obj countByEnumeratingWithState:&v32 objects:v36 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = 0;
    v13 = *v33;
    v14 = HDSQLEntityPropertyStar;
    while (2)
    {
      for (i = 0; i != v11; i = i + 1)
      {
        if (*v33 != v13)
        {
          objc_enumerationMutation(obj);
        }

        v16 = *(*(&v32 + 1) + 8 * i);
        v17 = [v16 samplePredicate];
        if (a4)
        {
          v18 = [v29 dateByAddingTimeInterval:-a4];
          v19 = HDMedicalRecordEntityPredicateForSortDate();

          v20 = [HDSQLitePredicate compoundPredicateWithPredicate:v17 otherPredicate:v19];

          v17 = v20;
        }

        v21 = [v16 sampleTypes];
        v22 = [v21 anyObject];
        v23 = [objc_msgSend(v22 "dataObjectClass")];

        v24 = [v31 protectedDatabase];
        v25 = [v23 countValueForProperty:v14 predicate:v17 database:v24 error:a7];

        if (!v25)
        {

          v26 = 0;
          goto LABEL_15;
        }

        v12 += [v25 integerValue];
      }

      v11 = [obj countByEnumeratingWithState:&v32 objects:v36 count:16];
      if (v11)
      {
        continue;
      }

      break;
    }
  }

  else
  {
    v12 = 0;
  }

  v26 = [NSNumber numberWithInteger:v12];
LABEL_15:

  return v26;
}

- (int64_t)_hasMedicalRecordsOfType:(id)a3 medicalRecordEntitySubclass:(Class)a4 predicate:(id)a5 database:(id)a6 error:(id *)a7
{
  v7 = [(objc_class *)a4 countValueForProperty:HDSQLEntityPropertyStar predicate:a5 database:a6 error:a7];
  v8 = v7;
  if (!v7 || ([v7 longLongValue] & 0x8000000000000000) != 0)
  {
    v9 = 0;
  }

  else if ([v8 longLongValue])
  {
    v9 = 1;
  }

  else
  {
    v9 = 2;
  }

  return v9;
}

+ (id)_recordAnalyticsDescriptions
{
  v3 = [_HDRecordCategoryAnalyticsDescription alloc];
  v48 = +[HKAllergyRecordType allergyRecordType];
  v47 = [HDQueryDescriptor queryDescriptorWithSampleType:v48];
  v55 = v47;
  v46 = [NSArray arrayWithObjects:&v55 count:1];
  v45 = [(_HDRecordCategoryAnalyticsDescription *)v3 initWithCategoryType:7 baseAnalyticKey:@"countNumberAllergyRecords" timeScopes:&off_1106A8 queryDescriptors:v46];
  v56[0] = v45;
  v4 = [_HDRecordCategoryAnalyticsDescription alloc];
  v44 = +[HKDiagnosticTestResultType diagnosticTestResultType];
  v5 = HDDiagnosticTestResultEntityPropertyCategory;
  v43 = [HDSQLiteComparisonPredicate predicateWithProperty:HDDiagnosticTestResultEntityPropertyCategory equalToValue:HKDiagnosticTestResultCategoryVitalSigns];
  v42 = [a1 _queryDescriptorForType:v44 predicate:v43];
  v54 = v42;
  v41 = [NSArray arrayWithObjects:&v54 count:1];
  v40 = [(_HDRecordCategoryAnalyticsDescription *)v4 initWithCategoryType:3 baseAnalyticKey:@"countNumberVitalRecords" timeScopes:&off_1106C0 queryDescriptors:v41];
  v56[1] = v40;
  v6 = [_HDRecordCategoryAnalyticsDescription alloc];
  v39 = +[HKConditionRecordType conditionRecordType];
  v38 = [HDQueryDescriptor queryDescriptorWithSampleType:v39];
  v53 = v38;
  v37 = [NSArray arrayWithObjects:&v53 count:1];
  v36 = [(_HDRecordCategoryAnalyticsDescription *)v6 initWithCategoryType:4 baseAnalyticKey:@"countNumberConditionRecords" timeScopes:&off_1106D8 queryDescriptors:v37];
  v56[2] = v36;
  v7 = [_HDRecordCategoryAnalyticsDescription alloc];
  v35 = +[HKDiagnosticTestReportType diagnosticTestReportType];
  v34 = [HDQueryDescriptor queryDescriptorWithSampleType:v35];
  v52[0] = v34;
  v33 = +[HKDiagnosticTestResultType diagnosticTestResultType];
  v32 = [HDSQLiteComparisonPredicate predicateWithProperty:v5 equalToValue:HKDiagnosticTestResultCategoryLaboratory];
  v31 = [a1 _queryDescriptorForType:v33 predicate:v32];
  v52[1] = v31;
  v30 = [NSArray arrayWithObjects:v52 count:2];
  v29 = [(_HDRecordCategoryAnalyticsDescription *)v7 initWithCategoryType:2 baseAnalyticKey:@"countNumberLabRecords" timeScopes:&off_1106F0 queryDescriptors:v30];
  v56[3] = v29;
  v8 = [_HDRecordCategoryAnalyticsDescription alloc];
  v28 = +[HKMedicationOrderType medicationOrderType];
  v27 = [HDQueryDescriptor queryDescriptorWithSampleType:v28];
  v51[0] = v27;
  v26 = +[HKMedicationDispenseRecordType medicationDispenseRecordType];
  v25 = [HDQueryDescriptor queryDescriptorWithSampleType:v26];
  v51[1] = v25;
  v24 = +[HKMedicationRecordType medicationRecordType];
  v23 = [HDQueryDescriptor queryDescriptorWithSampleType:v24];
  v51[2] = v23;
  v22 = [NSArray arrayWithObjects:v51 count:3];
  v9 = [(_HDRecordCategoryAnalyticsDescription *)v8 initWithCategoryType:1 baseAnalyticKey:@"countNumberMedicationRecords" timeScopes:&off_110708 queryDescriptors:v22];
  v56[4] = v9;
  v10 = [_HDRecordCategoryAnalyticsDescription alloc];
  v11 = +[HKProcedureRecordType procedureRecordType];
  v12 = [HDQueryDescriptor queryDescriptorWithSampleType:v11];
  v50 = v12;
  v13 = [NSArray arrayWithObjects:&v50 count:1];
  v14 = [(_HDRecordCategoryAnalyticsDescription *)v10 initWithCategoryType:5 baseAnalyticKey:@"countNumberProcedureRecords" timeScopes:&off_110720 queryDescriptors:v13];
  v56[5] = v14;
  v15 = [_HDRecordCategoryAnalyticsDescription alloc];
  v16 = +[HKVaccinationRecordType vaccinationRecordType];
  v17 = [HDQueryDescriptor queryDescriptorWithSampleType:v16];
  v49 = v17;
  v18 = [NSArray arrayWithObjects:&v49 count:1];
  v19 = [(_HDRecordCategoryAnalyticsDescription *)v15 initWithCategoryType:6 baseAnalyticKey:@"countNumberImmunizationRecords" timeScopes:&off_110738 queryDescriptors:v18];
  v56[6] = v19;
  v21 = [NSArray arrayWithObjects:v56 count:7];

  return v21;
}

+ (id)_queryDescriptorForType:(id)a3 predicate:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = [HDQueryDescriptor alloc];
  v8 = [NSSet setWithObject:v6];

  v9 = [v7 initWithSampleTypes:v8 encodingOptions:0 restrictedSourceEntities:0 authorizationFilter:0 samplePredicate:v5];

  return v9;
}

- (void)reportDailyAnalyticsWithCoordinator:(id)a3 completion:(id)a4
{
  v6 = a4;
  v13 = 0;
  v7 = [(HDClinicalDailyAnalyticsManager *)self _submitHealthRecordsDailyAnalyticsWithCoordinator:a3 error:&v13];
  v8 = v13;
  if (v7)
  {
    v9 = objc_alloc_init(HKClinicalSharingClient);
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_998D4;
    v11[3] = &unk_108D10;
    v11[4] = self;
    v12 = v6;
    [v9 submitDailyAnalyticsWithCompletion:v11];
  }

  else
  {
    _HKInitializeLogging();
    v10 = HKLogHealthRecords;
    if (os_log_type_enabled(HKLogHealthRecords, OS_LOG_TYPE_ERROR))
    {
      sub_A9B50(v10);
    }

    (*(v6 + 2))(v6, 0, 2, v8);
  }
}

@end