void sub_5EE3C(uint64_t a1)
{
  _HKInitializeLogging();
  v2 = HKLogHealthRecords;
  if (os_log_type_enabled(HKLogHealthRecords, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4 = v2;
    v5 = [v3 logPrefix];
    v6 = *(a1 + 40);
    *buf = 138543618;
    v13 = v5;
    v14 = 2114;
    v15 = v6;
    _os_log_impl(&dword_0, v4, OS_LOG_TYPE_DEFAULT, "%{public}@ performing periodic activity %{public}@", buf, 0x16u);
  }

  v7 = *(a1 + 32);
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_5EFA4;
  v9[3] = &unk_107C78;
  v9[4] = v7;
  v8 = *(a1 + 48);
  v10 = *(a1 + 40);
  v11 = *(a1 + 56);
  [v7 _ingestQueue_triggerBackgroundIngestionOnAllProfilesWithProfileManager:v8 completion:v9];
}

void sub_5EFA4(void *a1, uint64_t a2, void *a3)
{
  v5 = a3;
  _HKInitializeLogging();
  v6 = HKLogHealthRecords;
  if (a2)
  {
    if (os_log_type_enabled(HKLogHealthRecords, OS_LOG_TYPE_ERROR))
    {
      sub_A4FEC(a1, v6);
    }
  }

  else if (os_log_type_enabled(HKLogHealthRecords, OS_LOG_TYPE_DEFAULT))
  {
    v7 = a1[4];
    v8 = v6;
    v9 = [v7 logPrefix];
    v10 = a1[5];
    v11 = 138543618;
    v12 = v9;
    v13 = 2114;
    v14 = v10;
    _os_log_impl(&dword_0, v8, OS_LOG_TYPE_DEFAULT, "%{public}@ periodic activity %{public}@ completed successfully", &v11, 0x16u);
  }

  (*(a1[6] + 16))(0.0);
}

void sub_5F9A0(void *a1)
{
  _HKInitializeLogging();
  v2 = HKLogHealthRecords;
  if (os_log_type_enabled(HKLogHealthRecords, OS_LOG_TYPE_INFO))
  {
    v3 = a1[4];
    v4 = v2;
    v5 = [v3 debugDescription];
    v6 = a1[6];
    v7 = HKClinicalDataCollectionReasonToString();
    *buf = 138543618;
    v15 = v5;
    v16 = 2114;
    v17 = v7;
    _os_log_impl(&dword_0, v4, OS_LOG_TYPE_INFO, "%{public}@ opt-in data collection (%{public}@) triggered", buf, 0x16u);
  }

  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_5FB04;
  v10[3] = &unk_107CA0;
  v8 = a1[6];
  v9 = a1[5];
  v11 = a1[4];
  v13 = v8;
  v12 = v9;
  [v11 _queue_triggerClinicalOptInDataCollectionWithCompletion:v10];
}

void sub_5FB04(void *a1, int a2, void *a3)
{
  v5 = a3;
  _HKInitializeLogging();
  v6 = HKLogHealthRecords;
  if (a2)
  {
    if (os_log_type_enabled(HKLogHealthRecords, OS_LOG_TYPE_INFO))
    {
      v7 = a1[4];
      v8 = v6;
      v9 = [v7 debugDescription];
      v10 = a1[6];
      v11 = HKClinicalDataCollectionReasonToString();
      v12 = 138543618;
      v13 = v9;
      v14 = 2114;
      v15 = v11;
      _os_log_impl(&dword_0, v8, OS_LOG_TYPE_INFO, "%{public}@: opt-in data collection (%{public}@) successful", &v12, 0x16u);
    }
  }

  else if (os_log_type_enabled(HKLogHealthRecords, OS_LOG_TYPE_ERROR))
  {
    sub_A5098(a1, v6, v5);
  }

  (*(a1[5] + 16))();
}

void sub_5FCE8(uint64_t a1)
{
  v1 = a1;
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 40));
  v3 = [WeakRetained database];
  v37 = 0;
  v4 = [HDClinicalAccountEntity allAccountsInHealthDatabase:v3 error:&v37];
  v5 = v37;

  if (!v4)
  {
    v22 = *(*(v1 + 40) + 16);
LABEL_23:
    v22();
    goto LABEL_24;
  }

  v35 = 0u;
  v36 = 0u;
  v33 = 0u;
  v34 = 0u;
  v6 = v4;
  v30 = [v6 countByEnumeratingWithState:&v33 objects:v44 count:16];
  if (!v30)
  {

LABEL_20:
    _HKInitializeLogging();
    v23 = HKLogHealthRecords;
    if (os_log_type_enabled(HKLogHealthRecords, OS_LOG_TYPE_INFO))
    {
      v24 = *(v1 + 32);
      v25 = v23;
      v26 = [v24 debugDescription];
      *buf = 138543362;
      v39 = v26;
      _os_log_impl(&dword_0, v25, OS_LOG_TYPE_INFO, "%{public}@ opt-in data collection anchors were reset", buf, 0xCu);
    }

    v22 = *(*(v1 + 40) + 16);
    goto LABEL_23;
  }

  v27 = v4;
  v7 = 0;
  v28 = *v34;
  v29 = v6;
  do
  {
    for (i = 0; i != v30; i = i + 1)
    {
      v31 = v7;
      v9 = v5;
      if (*v34 != v28)
      {
        objc_enumerationMutation(v6);
      }

      v10 = *(*(&v33 + 1) + 8 * i);
      v11 = [v10 lastExtractedRulesVersion];
      v12 = [v10 identifier];
      v13 = v1;
      v14 = objc_loadWeakRetained((*(v1 + 32) + 40));
      v15 = [v14 database];
      v32 = v5;
      v16 = [HDClinicalAccountEntity updateAccountLastSubmittedRowID:0 expectedRulesVersion:v11 identifier:v12 healthDatabase:v15 error:&v32];
      v5 = v32;

      v1 = v13;
      if (v16)
      {
        v7 = v31;
      }

      else
      {
        v7 = v31;
        if (!v31)
        {
          _HKInitializeLogging();
          v17 = HKLogHealthRecords;
          if (os_log_type_enabled(HKLogHealthRecords, OS_LOG_TYPE_ERROR))
          {
            v18 = *(v1 + 32);
            v19 = v17;
            v20 = [v18 debugDescription];
            v21 = [v10 identifier];
            *buf = 138543874;
            v39 = v20;
            v40 = 2114;
            v41 = v21;
            v42 = 2114;
            v43 = v5;
            _os_log_error_impl(&dword_0, v19, OS_LOG_TYPE_ERROR, "%{public}@: unable to reset last subbmitted row ID for account %{public}@: %{public}@", buf, 0x20u);
          }

          v7 = v5;
        }
      }

      v6 = v29;
    }

    v30 = [v29 countByEnumeratingWithState:&v33 objects:v44 count:16];
  }

  while (v30);

  if (!v7)
  {
    v4 = v27;
    goto LABEL_20;
  }

  (*(*(v1 + 40) + 16))();

  v4 = v27;
LABEL_24:
}

void sub_60340(uint64_t a1, uint64_t a2, void *a3)
{
  v7 = a3;
  v4 = *(*(a1 + 32) + 24);
  if (v4)
  {
    [v4 invalidate];
    v5 = *(a1 + 32);
    v6 = *(v5 + 24);
    *(v5 + 24) = 0;
  }

  (*(*(a1 + 40) + 16))();
}

void sub_60AD8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, char a59)
{
  _Block_object_dispose(&a59, 8);
  _Block_object_dispose((v59 - 160), 8);
  _Unwind_Resume(a1);
}

BOOL sub_60B24(uint64_t a1, void *a2, void *a3)
{
  v5 = [a2 protectedDatabase];
  v6 = [*(a1 + 32) identifier];
  v48 = 0;
  v7 = [HDClinicalAccountEntity existingAccountEntityWithIdentifier:v6 database:v5 error:&v48];
  v8 = v48;

  if (v7)
  {
    v47 = 0;
    v9 = [v7 gatewayInDatabase:v5 error:&v47];
    v10 = v47;
    if (v9)
    {
      v11 = *(a1 + 48);
      v12 = [v9 country];
      LOBYTE(v11) = [v11 containsObject:v12];

      if (v11)
      {
        v13 = [*(a1 + 32) lastSubmittedRowID];
        v38 = [v13 longLongValue];
        v14 = [*(a1 + 32) lastExtractedRowID];
        v15 = [v14 longLongValue];
        v39[0] = _NSConcreteStackBlock;
        v39[1] = 3221225472;
        v39[2] = sub_60F64;
        v39[3] = &unk_107D58;
        v16 = *(a1 + 56);
        v17 = *(a1 + 32);
        v40 = v16;
        v41 = v17;
        v18 = *(a1 + 64);
        v19 = *(a1 + 40);
        v42 = v18;
        v43 = v19;
        v37 = *(a1 + 72);
        v20 = v37;
        v44 = v37;
        v46 = *(a1 + 96);
        v45 = *(a1 + 88);
        v21 = [HDOriginalFHIRResourceEntity enumerateFHIRResourceObjectsWithLocalProvenanceForAccountEntity:v7 startAnchor:v38 endAnchor:v15 database:v5 error:a3 enumerationHandler:v39];

LABEL_16:
        goto LABEL_19;
      }

      _HKInitializeLogging();
      v30 = HKLogHealthRecords;
      if (os_log_type_enabled(HKLogHealthRecords, OS_LOG_TYPE_DEFAULT))
      {
        v31 = *(a1 + 40);
        v26 = v30;
        v27 = [v31 debugDescription];
        v28 = [*(a1 + 32) identifier];
        *buf = 138543618;
        v50 = v27;
        v51 = 2114;
        v52 = v28;
        v29 = "%{public}@ gateway for account %{public}@ has Opt-In data upload disabled, skipping";
        goto LABEL_14;
      }
    }

    else
    {
      _HKInitializeLogging();
      v24 = HKLogHealthRecords;
      if (os_log_type_enabled(HKLogHealthRecords, OS_LOG_TYPE_DEFAULT))
      {
        v25 = *(a1 + 40);
        v26 = v24;
        v27 = [v25 debugDescription];
        v28 = [*(a1 + 32) identifier];
        *buf = 138543618;
        v50 = v27;
        v51 = 2114;
        v52 = v28;
        v29 = "%{public}@ account %{public}@ is missing a gateway, skipping Opt-in data";
LABEL_14:
        _os_log_impl(&dword_0, v26, OS_LOG_TYPE_DEFAULT, v29, buf, 0x16u);
      }
    }

    v21 = 1;
    goto LABEL_16;
  }

  _HKInitializeLogging();
  v22 = HKLogHealthRecords;
  if (os_log_type_enabled(HKLogHealthRecords, OS_LOG_TYPE_ERROR))
  {
    v33 = *(a1 + 40);
    v34 = v22;
    v35 = [v33 debugDescription];
    v36 = [*(a1 + 32) identifier];
    *buf = 138543874;
    v50 = v35;
    v51 = 2114;
    v52 = v36;
    v53 = 2114;
    v54 = v8;
    _os_log_error_impl(&dword_0, v34, OS_LOG_TYPE_ERROR, "%{public}@: Unable to get account enity for account %{public}@: %{public}@", buf, 0x20u);
  }

  v10 = v8;
  if (!v10)
  {
LABEL_18:
    v21 = 0;
    goto LABEL_19;
  }

  if (!a3)
  {
    _HKLogDroppedError();
    goto LABEL_18;
  }

  v23 = v10;
  v21 = 0;
  *a3 = v10;
LABEL_19:

  return v21;
}

uint64_t sub_60F64(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, _BYTE *a5)
{
  v9 = a3;
  v10 = [NSNumber numberWithLongLong:a2];
  v11 = *(a1 + 32);
  v12 = [*(a1 + 40) identifier];
  [v11 setObject:v10 forKeyedSubscript:v12];

  v13 = *(a1 + 40);
  v14 = *(a1 + 48);
  v15 = [v13 identifier];
  [v14 setObject:v13 forKeyedSubscript:v15];

  if (v9)
  {
    *(*(*(a1 + 72) + 8) + 24) += a4;
    [*(a1 + 64) addObject:v9];
    if (*(a1 + 88) && [*(a1 + 64) count] >= *(a1 + 88) || (v16 = *(a1 + 96)) != 0 && *(*(*(a1 + 72) + 8) + 24) >= v16)
    {
      *(*(*(a1 + 80) + 8) + 24) = 1;
      *a5 = 1;
    }
  }

  else
  {
    _HKInitializeLogging();
    v17 = HKLogHealthRecords;
    if (os_log_type_enabled(HKLogHealthRecords, OS_LOG_TYPE_ERROR))
    {
      sub_A5338(a1, a2, v17);
    }
  }

  return 1;
}

void sub_610C8(uint64_t a1, char a2)
{
  if (a2)
  {
    v3 = *(a1 + 32);
    v4 = *(a1 + 40);
    v5 = *(a1 + 48);
    v16 = 0;
    v6 = [v3 _queue_updateSubmittedAnchors:v4 accounts:v5 error:&v16];
    v7 = v16;
    if (v6)
    {
      if (*(*(*(a1 + 72) + 8) + 24))
      {
        v8 = [*(a1 + 56) allObjects];
        WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 40));
        v15 = 0;
        v10 = [HDClinicalAccountEntity accountsWithIdentifiers:v8 profile:WeakRetained error:&v15];
        v11 = v15;

        if (v10)
        {
          [*(a1 + 32) _queue_submitOptInResourcesForAccounts:v10 batchCountLimit:*(a1 + 80) batchSizeLimit:*(a1 + 88) completion:*(a1 + 64)];
        }

        else
        {
          (*(*(a1 + 64) + 16))();
        }

        goto LABEL_14;
      }

      v14 = *(*(a1 + 64) + 16);
    }

    else
    {
      v14 = *(*(a1 + 64) + 16);
    }

    v14();
LABEL_14:

    return;
  }

  v12 = *(a1 + 64);
  v13 = *(*(a1 + 64) + 16);

  v13();
}

void sub_613EC(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(*(a1 + 32) + 16);
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_614D0;
  v12[3] = &unk_1071B8;
  v13 = v5;
  v8 = *(a1 + 40);
  v9 = *(a1 + 32);
  v14 = v6;
  v15 = v9;
  v16 = v8;
  v10 = v6;
  v11 = v5;
  dispatch_async(v7, v12);
}

id sub_614D0(uint64_t a1)
{
  if (!*(a1 + 32))
  {
    return (*(*(a1 + 56) + 16))(*(a1 + 56), 0, *(a1 + 40));
  }

  v1 = *(a1 + 56);
  return [*(a1 + 48) _queue_submitAnalyticsForResult:? completion:?];
}

id sub_61748(void *a1, void *a2)
{
  v3 = a1[4];
  v4 = a2;
  v5 = objc_opt_class();
  v7 = a1[5];
  v6 = a1[6];
  v8 = [v4 FHIRVersion];
  v9 = [v8 stringRepresentation];
  v10 = [v4 JSONObject];

  v11 = [v5 _optInJSONForBuild:v7 extractionRulesVersion:v6 FHIRVersion:v9 resource:v10];

  return v11;
}

void sub_61CEC(uint64_t a1, int a2, void *a3)
{
  v5 = a3;
  v7 = v5;
  if (a2)
  {
    (*(*(a1 + 32) + 16))(0.0);
  }

  else
  {
    if ([v5 code])
    {
      v6.n128_u64[0] = 0;
    }

    else
    {
      v6.n128_f64[0] = XPC_ACTIVITY_INTERVAL_1_MIN;
    }

    (*(*(a1 + 32) + 16))(v6);
  }
}

void sub_62E9C(uint64_t a1)
{
  v2 = *(a1 + 32);
  HDSQLiteBindUUIDToProperty();
  v3 = [*(a1 + 40) issuerIdentifier];
  HDSQLiteBindStringToProperty();

  v4 = [*(a1 + 40) sourceURL];
  HDSQLiteBindStringToProperty();

  [*(a1 + 40) sourceType];
  HDSQLiteBindInt64ToProperty();
  v5 = [*(a1 + 40) rawContent];
  HDSQLiteBindDataToProperty();

  v6 = [*(a1 + 40) uniquenessChecksum];
  HDSQLiteBindDataToProperty();

  v7 = *(a1 + 48);
  HDSQLiteBindStringToProperty();
  v8 = [*(a1 + 40) metadata];
  v9 = [v8 data];
  HDSQLiteBindDataToProperty();

  [*(a1 + 40) receivedDate];
  HDSQLiteBindDoubleToProperty();
  v10 = [*(a1 + 40) receivedDateTimeZoneName];
  HDSQLiteBindStringToProperty();

  [*(a1 + 40) firstSeenDate];
  HDSQLiteBindDoubleToProperty();
  v11 = [*(a1 + 40) firstSeenDateTimeZoneName];
  HDSQLiteBindStringToProperty();

  [*(a1 + 40) signatureStatus];
  HDSQLiteBindInt64ToProperty();
  v12 = *(a1 + 64);
  HDSQLiteBindInt64ToProperty();
  v13 = *(a1 + 72);
  HDSQLiteBindInt64ToProperty();
  [*(a1 + 40) lastModifiedDate];
  HDSQLiteBindDoubleToProperty();
  v14 = *(a1 + 80);
  HDSQLiteBindBooleanToProperty();
  v15 = [*(a1 + 56) entity];
  [v15 persistentID];
  HDSQLiteBindInt64ToProperty();
}

id sub_6332C(uint64_t a1, void *a2, uint64_t a3)
{
  v4 = &BiomeLibrary_ptr;
  v46 = a2;
  v53 = [v46 databaseForEntityClass:objc_opt_class()];
  v49 = objc_alloc_init(NSMutableArray);
  v50 = objc_alloc_init(NSMutableArray);
  v56 = 0u;
  v57 = 0u;
  v58 = 0u;
  v59 = 0u;
  obj = *(a1 + 32);
  v5 = [obj countByEnumeratingWithState:&v56 objects:v70 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v57;
    v52 = HDOriginalSignedClinicalDataRecordEntityPropertyLastModifiedDate;
    do
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v57 != v7)
        {
          objc_enumerationMutation(obj);
        }

        v9 = *(*(&v56 + 1) + 8 * i);
        v10 = [v9 messageVersion];
        v11 = [v10 entityVersion];

        if (v11 <= 0)
        {
          [v9 setSourceType:1];
        }

        v12 = [v9 syncIdentifier];
        v13 = [NSUUID hk_UUIDWithData:v12];

        v14 = v4[505];
        v15 = *(a1 + 40);
        v55 = 0;
        v16 = [v14 entityWithSyncIdentifier:v13 profile:v15 error:&v55];
        v17 = v55;
        v18 = v17;
        if (v16)
        {
          v19 = [v16 dateForProperty:v52 database:v53];
          [v9 lastModifiedDate];
          v21 = v20;
          [v19 timeIntervalSinceReferenceDate];
          if (v21 > v22)
          {
            [v49 addObject:v9];
            if ([v9 deleted])
            {
              v23 = *(a1 + 40);
              v54 = 0;
              v24 = [v16 deleteDerivedRecordsOnProfile:v23 error:&v54];
              v25 = v54;
              if ((v24 & 1) == 0)
              {
                _HKInitializeLogging();
                v26 = HKLogHealthRecords;
                if (os_log_type_enabled(HKLogHealthRecords, OS_LOG_TYPE_ERROR))
                {
                  v47 = *(a1 + 48);
                  v32 = v26;
                  v33 = objc_opt_class();
                  v48 = NSStringFromClass(v33);
                  *buf = 138543618;
                  v61 = v48;
                  v62 = 2114;
                  v63 = v25;
                  _os_log_error_impl(&dword_0, v32, OS_LOG_TYPE_ERROR, "%{public}@ error deleting derived records for existing, deleted original SCD record entity, unable to recover. Error: %{public}@", buf, 0x16u);
                }
              }
            }
          }

          v4 = &BiomeLibrary_ptr;
        }

        else
        {
          if (v17)
          {
            _HKInitializeLogging();
            v27 = HKLogHealthRecords;
            if (os_log_type_enabled(HKLogHealthRecords, OS_LOG_TYPE_ERROR))
            {
              v28 = *(a1 + 48);
              v29 = v27;
              v30 = objc_opt_class();
              v31 = NSStringFromClass(v30);
              *buf = 138543618;
              v61 = v31;
              v62 = 2114;
              v63 = v18;
              _os_log_error_impl(&dword_0, v29, OS_LOG_TYPE_ERROR, "%{public}@ error checking for existing original SCD record entity, will insert instead. Error: %{public}@", buf, 0x16u);

              v4 = &BiomeLibrary_ptr;
            }
          }

          [v50 addObject:v9];
        }
      }

      v6 = [obj countByEnumeratingWithState:&v56 objects:v70 count:16];
    }

    while (v6);
  }

  _HKInitializeLogging();
  v34 = HKLogHealthRecords;
  if (os_log_type_enabled(HKLogHealthRecords, OS_LOG_TYPE_DEBUG))
  {
    v37 = *(a1 + 48);
    v38 = v34;
    v39 = objc_opt_class();
    v40 = NSStringFromClass(v39);
    v41 = *(a1 + 40);
    v42 = [*(a1 + 32) count];
    v43 = [v49 count];
    v44 = [v50 count];
    *buf = 138544386;
    v61 = v40;
    v62 = 2114;
    v63 = v41;
    v4 = &BiomeLibrary_ptr;
    v64 = 2048;
    v65 = v42;
    v66 = 2048;
    v67 = v43;
    v68 = 2048;
    v69 = v44;
    _os_log_debug_impl(&dword_0, v38, OS_LOG_TYPE_DEBUG, "%{public}@ %{public}@ received %lu sync objects, will upsert %lu and insert %lu", buf, 0x34u);
  }

  if ([v4[505] insertCodableOriginalRecords:v49 shouldReplace:1 syncProvenance:*(a1 + 56) profile:*(a1 + 40) error:a3])
  {
    v35 = [v4[505] insertCodableOriginalRecords:v50 shouldReplace:0 syncProvenance:*(a1 + 56) profile:*(a1 + 40) error:a3];
  }

  else
  {
    v35 = 0;
  }

  return v35;
}

id sub_63824(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = [[HDOriginalSignedClinicalDataInsertCodableFromSyncJournalEntry alloc] initWithCodableRecords:*(a1 + 32) syncProvenance:*(a1 + 48)];
  v6 = [*(a1 + 40) database];
  v7 = [v6 addJournalEntry:v5 error:a3];

  return v7;
}

uint64_t sub_63B14(uint64_t a1, void *a2)
{
  v3 = a2;
  v45 = objc_alloc_init(NSMutableDictionary);
  v44 = objc_alloc_init(NSMutableDictionary);
  v4 = [v3 databaseForEntityClass:*(a1 + 48)];
  v42 = v3;
  v43 = [v3 databaseForEntityClass:objc_opt_class()];
  v50 = 0u;
  v51 = 0u;
  v52 = 0u;
  v53 = 0u;
  v5 = *(a1 + 32);
  v6 = [v5 countByEnumeratingWithState:&v50 objects:v60 count:16];
  if (!v6)
  {
    v8 = 0;
    goto LABEL_19;
  }

  v7 = v6;
  obj = v5;
  v40 = v4;
  v8 = 0;
  v9 = *v51;
  do
  {
    for (i = 0; i != v7; i = i + 1)
    {
      if (*v51 != v9)
      {
        objc_enumerationMutation(obj);
      }

      v11 = *(*(&v50 + 1) + 8 * i);
      v12 = *(a1 + 48);
      v49 = 0;
      v13 = [v12 accountEntityForCodableRecord:v11 issuerIdentifierToAccountMap:v45 gatewayExternalIDToAccountMap:v44 database:v43 error:&v49];
      v14 = v49;
      if (v13)
      {
        v15 = *(a1 + 48);
        v16 = *(a1 + 64);
        v17 = [v13 persistentID];
        v18 = *(a1 + 56);
        v19 = *(a1 + 40);
        v48 = 0;
        v20 = [v15 insertCodableRecord:v11 shouldReplace:v16 accountPersistentID:v17 syncProvenance:v18 profile:v19 transaction:v42 error:&v48];
        v21 = v48;

        if (v20)
        {
          ++v8;
        }

        else
        {
          _HKInitializeLogging();
          v27 = HKLogHealthRecords;
          if (os_log_type_enabled(HKLogHealthRecords, OS_LOG_TYPE_ERROR))
          {
            v28 = *(a1 + 48);
            v29 = v27;
            v30 = objc_opt_class();
            v31 = NSStringFromClass(v30);
            *buf = 138543618;
            v55 = v31;
            v56 = 2114;
            v57 = v21;
            _os_log_error_impl(&dword_0, v29, OS_LOG_TYPE_ERROR, "%{public}@ failed to insert codable original signed clinical data record: %{public}@", buf, 0x16u);
          }
        }
      }

      else
      {
        _HKInitializeLogging();
        v22 = HKLogHealthRecords;
        if (os_log_type_enabled(HKLogHealthRecords, OS_LOG_TYPE_ERROR))
        {
          v23 = *(a1 + 48);
          v24 = v22;
          v25 = objc_opt_class();
          v26 = NSStringFromClass(v25);
          *buf = 138543618;
          v55 = v26;
          v56 = 2114;
          v57 = v14;
          _os_log_error_impl(&dword_0, v24, OS_LOG_TYPE_ERROR, "%{public}@ unable to insert codable original signed clinical data record because I can't find the appropriate account, dropping record. Error: %{public}@", buf, 0x16u);
        }
      }
    }

    v7 = [obj countByEnumeratingWithState:&v50 objects:v60 count:16];
  }

  while (v7);

  if (v8)
  {
    v46[0] = _NSConcreteStackBlock;
    v46[1] = 3221225472;
    v46[2] = sub_63F98;
    v46[3] = &unk_107A88;
    v47 = *(a1 + 40);
    v32 = objc_retainBlock(v46);
    v4 = v40;
    [v40 onCommit:v32 orRollback:0];

    v5 = v47;
LABEL_19:

    goto LABEL_21;
  }

  v4 = v40;
LABEL_21:
  _HKInitializeLogging();
  v33 = HKLogHealthRecords;
  if (os_log_type_enabled(HKLogHealthRecords, OS_LOG_TYPE_DEFAULT))
  {
    v34 = *(a1 + 48);
    v35 = v33;
    v36 = objc_opt_class();
    v37 = NSStringFromClass(v36);
    v38 = [*(a1 + 32) count];
    *buf = 138543874;
    v55 = v37;
    v56 = 2048;
    v57 = v8;
    v58 = 2048;
    v59 = v38;
    _os_log_impl(&dword_0, v35, OS_LOG_TYPE_DEFAULT, "%{public}@ inserted %lu of %lu codable original signed clinical data records", buf, 0x20u);
  }

  return 1;
}

void sub_63F98(uint64_t a1)
{
  v2 = [*(a1 + 32) healthRecordsExtension];
  v1 = [v2 signedClinicalDataManager];
  [v1 didReceiveOriginalSignedClinicalDataRecordSyncEntities];
}

id sub_63FF4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = [[HDOriginalSignedClinicalDataInsertCodableJournalEntry alloc] initWithCodableRecords:*(a1 + 32) shouldReplace:*(a1 + 56) syncProvenance:*(a1 + 48)];
  v6 = [*(a1 + 40) database];
  v7 = [v6 addJournalEntry:v5 error:a3];

  return v7;
}

BOOL sub_65330(uint64_t a1, void *a2)
{
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_653F8;
  v8[3] = &unk_107EC0;
  v9 = a2;
  v3 = *(a1 + 32);
  v10 = *(a1 + 40);
  v4 = v9;
  v5 = [v3 hk_firstObjectPassingTest:v8];
  v6 = v5 == 0;

  return v6;
}

id sub_653F8(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 isEquivalent:*(a1 + 32)];
  if (v4)
  {
    v5 = [v3 UUID];
    v6 = [*(a1 + 32) UUID];
    v7 = [v5 isEqual:v6];

    if ((v7 & 1) == 0)
    {
      v8 = [*(a1 + 32) UUID];
      v9 = *(a1 + 40);
      v10 = [v3 UUID];
      [v9 setObject:v8 forKeyedSubscript:v10];
    }
  }

  return v4;
}

BOOL sub_654C0(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_6556C;
  v9[3] = &unk_107EE8;
  v10 = v3;
  v5 = v3;
  v6 = [v4 hk_firstObjectPassingTest:v9];
  v7 = v6 == 0;

  return v7;
}

BOOL sub_65578(id a1, HKMedicalRecord *a2)
{
  v2 = a2;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

BOOL sub_655C4(id a1, HKMedicalRecord *a2)
{
  v2 = a2;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

id sub_65610(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = [v3 medicalRecordSampleID];
  v6 = [v4 objectForKeyedSubscript:v5];

  if (v6)
  {
    v7 = [v3 copyWithMedicalRecordSampleID:v6];
  }

  else
  {
    v7 = v3;
  }

  v8 = v7;

  return v8;
}

uint64_t sub_656AC(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v3 verifiableClinicalRecord];
  v6 = [v4 isEquivalent:v5];

  if (v6)
  {
    *(*(*(a1 + 40) + 8) + 24) = 0;
  }

  return v6 ^ 1;
}

void sub_659B4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_659CC(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_659E4(void *a1, void *a2, void *a3)
{
  v5 = [a2 databaseForEntityClass:a1[6]];
  v6 = a1[6];
  v7 = a1[4];
  v16 = 0;
  v8 = [v6 entityWithSyncIdentifier:v7 database:v5 error:&v16];
  v9 = v16;
  v10 = *(a1[5] + 8);
  v11 = *(v10 + 40);
  *(v10 + 40) = v8;

  if (*(*(a1[5] + 8) + 40))
  {
    v12 = 1;
  }

  else
  {
    v12 = v9 == 0;
  }

  v13 = v12;
  if (!v12)
  {
    if (a3)
    {
      v14 = v9;
      *a3 = v9;
    }

    else
    {
      _HKLogDroppedError();
    }
  }

  return v13;
}

id sub_6655C(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = [a2 databaseForEntityClass:*(a1 + 40)];
  v6 = [*(a1 + 40) propertiesForCodable];
  v7 = *(a1 + 40);
  v8 = [v7 _predicateForUnextractedOriginalRecordsWithExtractionVersion:*(a1 + 48) ignoreExtractionVersion:*(a1 + 56)];
  v9 = kHDSQLiteQueryNoLimit;
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_66688;
  v14[3] = &unk_105B08;
  v13 = *(a1 + 32);
  v10 = v13;
  v15 = v13;
  v11 = [v7 enumerateQueryResultsFromColumns:v6 properties:v6 predicate:v8 groupBy:0 orderingTerms:0 limit:v9 database:v5 error:a3 enumerationHandler:v14];

  return v11;
}

BOOL sub_66688(uint64_t a1)
{
  v2 = [*(a1 + 40) codableWithRow:? error:?];
  if (v2)
  {
    [*(a1 + 32) addObject:v2];
  }

  return v2 != 0;
}

void sub_669A0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

BOOL sub_669B8(void *a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v6 = [HDOriginalSignedClinicalDataRecordEntity existingEntityBackingMedicalRecord:a1[4] profile:a1[5] error:a3];
  if (v6)
  {
    v7 = [v5 databaseForEntityClass:objc_opt_class()];
    v8 = [v6 codableInDatabase:v7 error:a3];
    v9 = *(a1[6] + 8);
    v10 = *(v9 + 40);
    *(v9 + 40) = v8;

    v11 = v8 != 0;
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

void sub_66CC0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va1, a9);
  va_start(va, a9);
  v10 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

void sub_66CF0(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = a1[4];
  v6 = objc_opt_class();
  v7 = *(a1[6] + 8);
  obj = *(v7 + 40);
  v8 = [v6 codableWithRow:a3 error:&obj];
  objc_storeStrong((v7 + 40), obj);
  v9 = *(a1[5] + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v8;
}

id sub_66F94(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = *(a1 + 32);
  v7 = [v5 databaseForEntityClass:objc_opt_class()];
  v8 = [HDClinicalAccountEntity existingAccountEntityWithIdentifier:v6 database:v7 error:a3];

  if (v8)
  {
    v22 = 0;
    v23 = &v22;
    v24 = 0x3032000000;
    v25 = sub_659CC;
    v26 = sub_659DC;
    v27 = 0;
    v9 = [v5 databaseForEntityClass:*(a1 + 48)];
    v10 = *(a1 + 48);
    v11 = [v10 _predicateForUndeletedRecordsOnAccountEntity:v8];
    v18[0] = _NSConcreteStackBlock;
    v18[1] = 3221225472;
    v18[2] = sub_671A8;
    v18[3] = &unk_108010;
    v20 = *(a1 + 40);
    v12 = v9;
    v19 = v12;
    v21 = &v22;
    v13 = [v10 enumerateEntitiesInDatabase:v12 predicate:v11 error:a3 enumerationHandler:v18];

    if ((v13 & 1) == 0)
    {
      v14 = v23[5];
      v15 = v14;
      if (v14)
      {
        if (a3)
        {
          v16 = v14;
          *a3 = v15;
        }

        else
        {
          _HKLogDroppedError();
        }
      }
    }

    _Block_object_dispose(&v22, 8);
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

void sub_6718C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_671A8(void *a1)
{
  v2 = a1[5];
  v3 = a1[4];
  v11 = 0;
  v4 = (*(v2 + 16))();
  v5 = v11;
  v6 = v11;
  v7 = v6;
  if ((v4 & 1) == 0 && v6)
  {
    v8 = *(a1[6] + 8);
    v9 = v6;
    objc_storeStrong((v8 + 40), v5);
  }

  return v4;
}

BOOL sub_67310(uint64_t a1, void *a2)
{
  v3 = [a2 signedClinicalDataRecordWithProfile:*(a1 + 32) error:?];
  if (v3)
  {
    (*(*(a1 + 40) + 16))();
  }

  return v3 != 0;
}

BOOL sub_67430(uint64_t a1, void *a2)
{
  v3 = [a2 codableInDatabase:? error:?];
  if (v3)
  {
    (*(*(a1 + 32) + 16))();
  }

  return v3 != 0;
}

BOOL sub_675FC(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v6 = [v5 databaseForEntityClass:objc_opt_class()];
  v7 = [HDOriginalSignedClinicalDataRecordEntity existingEntityWithSyncIdentifier:*(a1 + 32) profile:*(a1 + 40) error:a3];
  v8 = v7;
  if (v7)
  {
    v9 = [v7 codableInDatabase:v6 error:a3];
    if ([v9 signatureStatus] == *(a1 + 48))
    {
      _HKInitializeLogging();
      v10 = HKLogHealthRecords;
      if (os_log_type_enabled(HKLogHealthRecords, OS_LOG_TYPE_DEBUG))
      {
        sub_A5760(a1, v10);
      }

      v11 = 1;
    }

    else if ([v8 deleteOriginalAndDerivedRecordsOnProfile:*(a1 + 40) error:a3])
    {
      v12 = [*(a1 + 56) accountEntityForCodableRecord:v9 issuerIdentifierToAccountMap:0 gatewayExternalIDToAccountMap:0 database:v6 error:a3];
      if (v12)
      {
        +[NSUUID UUID];
        v13 = v21 = v12;
        v14 = [v13 hk_dataForUUIDBytes];
        [v9 setSyncIdentifier:v14];

        [v9 setSignatureStatus:*(a1 + 48)];
        v15 = [*(a1 + 40) syncIdentityManager];
        v16 = [v15 currentSyncIdentity];
        v17 = [v16 identity];
        v18 = [v17 codableSyncIdentity];
        [v9 setSyncIdentity:v18];

        v12 = v21;
        v19 = [*(a1 + 56) insertCodableRecord:v9 shouldReplace:0 accountPersistentID:objc_msgSend(v21 syncProvenance:"persistentID") profile:0 transaction:*(a1 + 40) error:{v5, a3}];
        v11 = v19 != 0;
      }

      else
      {
        v11 = 0;
      }
    }

    else
    {
      v11 = 0;
    }
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

id sub_67830(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = [[HDOriginalSignedClinicalDataReplaceSignatureStatusJournalEntry alloc] initWithCodableRecordSyncIdentifier:*(a1 + 32) signatureStatus:*(a1 + 48)];
  v6 = [*(a1 + 40) database];
  v7 = [v6 addJournalEntry:v5 error:a3];

  return v7;
}

void sub_67AA0(uint64_t a1)
{
  v1 = [*(a1 + 32) uniquenessChecksum];
  HDSQLiteBindDataToProperty();
}

id sub_67E20(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  if ([*(a1 + 32) _deleteDerivedRecordsWithTransaction:v5 profile:*(a1 + 40) error:a3])
  {
    v6 = [v5 databaseForEntity:*(a1 + 32)];
    v7 = [*(a1 + 32) codableInDatabase:v6 error:a3];
    if (v7 && [*(a1 + 32) deleteFromDatabase:v6 error:a3])
    {
      v8 = [v7 asTombstone];
      v9 = [*(a1 + 40) syncIdentityManager];
      v10 = [v9 currentSyncIdentity];
      v11 = [v10 identity];
      v12 = [v11 codableSyncIdentity];
      [v8 setSyncIdentity:v12];

      v13 = *(a1 + 32);
      v14 = objc_opt_class();
      v18 = v8;
      v15 = [NSArray arrayWithObjects:&v18 count:1];
      v16 = [v14 insertCodableOriginalRecords:v15 shouldReplace:0 syncProvenance:0 profile:*(a1 + 40) error:a3];
    }

    else
    {
      v16 = 0;
    }
  }

  else
  {
    v16 = 0;
  }

  return v16;
}

void sub_681B4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

BOOL sub_681CC(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = *(a1 + 64);
  v6 = *(a1 + 32);
  v7 = [a2 databaseForEntity:*(a1 + 40)];
  v8 = [HDMedicalRecordEntity _medicalRecordsWithPredicate:v6 withoutConceptIndex:1 excludeSignedClinicalDataRecords:v5 database:v7 profile:*(a1 + 48) error:a3];
  v9 = *(*(a1 + 56) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v8;

  return *(*(*(a1 + 56) + 8) + 40) != 0;
}

void sub_699E4(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_69A84;
  v6[3] = &unk_105F08;
  v7 = v3;
  v5 = v3;
  [v4 sendEvent:@"com.apple.HealthRecords.ProcessingExtractionFailureEvent" block:v6];
}

void sub_6A3A4(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  if (v8)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      sub_A5BB8(a1);
    }
  }

  v10 = v8;
  _HKInitializeLogging();
  v11 = HKLogHealthRecords;
  if (os_log_type_enabled(HKLogHealthRecords, OS_LOG_TYPE_DEFAULT))
  {
    v12 = *(a1 + 32);
    log = v11;
    v13 = objc_opt_class();
    v14 = *(a1 + 40);
    v36 = v13;
    v15 = [v14 URL];
    v16 = [v15 absoluteString];
    HKSensitiveLogItem();
    v17 = v37 = v7;
    if (v9)
    {
      v18 = "error";
    }

    else
    {
      v18 = "response";
    }

    v19 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [v10 statusCode]);
    *buf = 138544130;
    v42 = v13;
    v43 = 2112;
    v44 = v17;
    v45 = 2080;
    v46 = v18;
    v47 = 2114;
    v48 = v19;
    _os_log_impl(&dword_0, loga, OS_LOG_TYPE_DEFAULT, "%{public}@ completed fetch for %@ with %s: %{public}@", buf, 0x2Au);

    v7 = v37;
  }

  v20 = v9;
  v21 = v20;
  if (v8)
  {
    v21 = [*(a1 + 32) _errorFromResponse:v10];

    if (v21)
    {
      v22 = [v21 userInfo];
      v23 = [v22 objectForKeyedSubscript:NSUnderlyingErrorKey];

      v24 = [v23 code];
      v25 = *(a1 + 32);
      v26 = *(a1 + 64);
      v38[0] = _NSConcreteStackBlock;
      v38[1] = 3221225472;
      v38[2] = sub_6A758;
      v38[3] = &unk_105EE0;
      v38[4] = v25;
      v39 = *(a1 + 48);
      LOBYTE(v24) = [v25 _performRetryIfNeededForStatusCode:v24 retryCount:v26 retryHandler:v38];

      if (v24)
      {
        goto LABEL_20;
      }

      goto LABEL_17;
    }

    if (v7)
    {
      v40 = 0;
      v27 = [NSJSONSerialization JSONObjectWithData:v7 options:0 error:&v40];
      v21 = v40;
      v28 = *(a1 + 32);
      v29 = *(v28 + 48);
      *(v28 + 48) = v27;
    }

    else
    {
      v21 = [NSError hk_error:3 description:@"empty response data"];
    }
  }

  if (v21)
  {
LABEL_17:
    _HKInitializeLogging();
    v30 = HKLogHealthRecords;
    if (os_log_type_enabled(HKLogHealthRecords, OS_LOG_TYPE_ERROR))
    {
      sub_A5C30(a1, v30);
    }
  }

  v31 = [v21 copy];
  v32 = *(a1 + 32);
  v33 = *(v32 + 40);
  *(v32 + 40) = v31;

  (*(*(a1 + 48) + 16))();
LABEL_20:
}

void sub_6AFD0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id sub_6AFF4(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v6 = +[HDOriginalSignedClinicalDataRecordEntity propertiesForCodable];
  v7 = *(*(a1 + 56) + 8) + 24;
  v8 = *(a1 + 32);
  v9 = [*(a1 + 40) database];
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_6B138;
  v15[3] = &unk_105720;
  v16 = *(a1 + 40);
  v17 = v5;
  v18 = *(a1 + 48);
  v11 = *(a1 + 64);
  v10 = *(a1 + 72);
  v12 = v5;
  v13 = [HDOriginalSignedClinicalDataRecordEntity enumerateEntitiesForSyncWithProperties:v6 predicate:0 session:v8 syncAnchorRange:v11 limit:v10 lastSyncAnchor:0 healthDatabase:v7 error:v9 block:a3, v15];

  return v13;
}

BOOL sub_6B138(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10 = [HDOriginalSignedClinicalDataRecordEntity codableWithRow:a4 error:a8];
  if (v10)
  {
    v11 = HDSQLiteColumnWithNameAsInt64();
    v12 = [*(a1 + 32) syncIdentityManager];
    v13 = [v12 identityForEntityID:v11 transaction:*(a1 + 40) error:a8];

    v14 = v13 != 0;
    if (v13)
    {
      v15 = [v13 identity];
      v16 = [v15 codableSyncIdentity];
      [v10 setSyncIdentity:v16];

      [*(a1 + 48) addObject:v10];
    }
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

BOOL sub_6B2D4(id a1, HDSyncCodable *a2)
{
  v2 = a2;
  objc_opt_class();
  v3 = HKSafeObject();

  v4 = 0;
  if (!v3)
  {
    _HKInitializeLogging();
    v5 = HKLogHealthRecords;
    if (os_log_type_enabled(HKLogHealthRecords, OS_LOG_TYPE_FAULT))
    {
      sub_A5DBC(v4, v5);
    }
  }

  return v3 != 0;
}

void sub_6B8D8(uint64_t a1, void *a2, uint64_t a3)
{
  v4 = [a2 payloadForCoreAnalyticsWithEventCount:a3 deviceContext:*(a1 + 32)];
  (*(*(a1 + 40) + 16))();
}

BOOL sub_6D42C(id a1, HKClinicalGatewayFeature *a2)
{
  [(HKClinicalGatewayFeature *)a2 minCompatibleAPIVersion];

  return HKProviderServiceIsMinCompatibleAPIVersionSupported();
}

BOOL sub_6D4AC(id a1, HKClinicalGatewayFeature *a2)
{
  v2 = [(HKClinicalGatewayFeature *)a2 name];
  v3 = [v2 isEqualToString:HKClinicalGatewayFeatureNameClinicalSharing];

  return v3;
}

id sub_6DA38(void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v6 = a2;
  v7 = [a1 objectForKeyedSubscript:v6];
  if (v7)
  {
    v8 = HKSafeObject();
  }

  else
  {
    [NSError hk_assignError:a4 code:3 format:@"Unexpectedly found nil for dictionary key %@", v6];
    v8 = 0;
  }

  return v8;
}

id sub_6DAF0(void *a1, void *a2)
{
  v3 = a2;
  v4 = [a1 objectForKeyedSubscript:v3];
  if (v4)
  {
    v5 = HKSafeObject();
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

id sub_6DED4(id a1, id a2, id *a3)
{
  v3 = a2;
  objc_opt_class();
  v4 = HKSafeObject();

  return v4;
}

void sub_6EA2C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_6EA4C(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = [a2 databaseForEntityClass:*(a1 + 64)];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v6 = [*(a1 + 32) items];
  v7 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v16;
    while (2)
    {
      v10 = 0;
      do
      {
        if (*v16 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = [*(a1 + 64) processClinicalRecordsInExtractionResultItem:*(*(&v15 + 1) + 8 * v10) clinicalExternalID:*(a1 + 40) database:v5 profile:*(a1 + 48) error:a3];
        if (!v11)
        {
          v13 = 0;
          goto LABEL_11;
        }

        v12 = v11;
        *(*(*(a1 + 56) + 8) + 24) += [v11 integerValue];

        v10 = v10 + 1;
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
      if (v8)
      {
        continue;
      }

      break;
    }
  }

  v13 = 1;
LABEL_11:

  return v13;
}

id sub_6EBB4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = [[HDClinicalRecordsInExtractionResultJournalEntry alloc] initWithExtractionResult:*(a1 + 32) clinicalExternalID:*(a1 + 40)];
  v6 = [*(a1 + 48) database];
  v7 = [v6 addJournalEntry:v5 error:a3];

  return v7;
}

BOOL sub_6F164(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v6 = [v5 _fetchIdentifierFromDatabase:*(a1 + 32) error:a3];
  if (v6)
  {
    [*(a1 + 40) setObject:v5 forKeyedSubscript:v6];
  }

  return v6 != 0;
}

id sub_6F1D4(id a1, HDClinicalRecordEntity *a2)
{
  v2 = [(HDClinicalRecordEntity *)a2 persistentID];

  return [NSNumber numberWithLongLong:v2];
}

void sub_6F9D8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va1, a8);
  va_start(va, a8);
  v9 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_6FA04(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_6FA1C(uint64_t a1)
{
  v7 = HDSQLiteColumnWithNameAsString();
  v2 = HDSQLiteColumnWithNameAsString();
  if ([v7 length] && objc_msgSend(v2, "length"))
  {
    v3 = [[HKFHIRIdentifier alloc] initWithResourceType:v7 identifier:v2];
    v4 = 32;
  }

  else
  {
    v3 = [NSError hk_error:100 format:@"unable to construct FHIR identifier from type %@ and identifier %@", v7, v2];
    v4 = 40;
  }

  v5 = *(*(a1 + v4) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v3;
}

uint64_t sub_7036C(uint64_t a1)
{
  if (*(a1 + 32))
  {
    v1 = *(a1 + 32);
  }

  return HDSQLiteBindNumberToProperty();
}

uint64_t sub_7049C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v7 = [NSNumber numberWithLongLong:a2];
  v8 = [HDClinicalRecordEntity entityWithPersistentID:v7];

  if (v8)
  {
    v9 = *(a1 + 32);
    v16 = 0;
    v10 = (*(v9 + 16))();
    v11 = v16;
    v12 = v11;
    if ((v10 & 1) == 0)
    {
      v13 = v11;
      if (v13)
      {
        if (a5)
        {
          v14 = v13;
          *a5 = v13;
        }

        else
        {
          _HKLogDroppedError();
        }
      }
    }
  }

  else
  {
    v10 = 1;
  }

  return v10;
}

id sub_70FB8(void *a1)
{
  v1 = [a1 mutableCopy];
  v2 = [v1 objectForKeyedSubscript:@"clientSecret"];
  v3 = [v2 dataUsingEncoding:4];
  v4 = [v3 mutableCopy];

  if (!v4)
  {
    sub_A614C();
  }

  v5 = sub_7218C(v4);
  v6 = [v5 base64EncodedStringWithOptions:0];
  if (!v6)
  {
    sub_A61D4();
  }

  [v1 setObject:v6 forKeyedSubscript:@"clientSecret"];

  return v1;
}

BOOL sub_712AC(id a1, HKClinicalGatewayEndpointSchema *a2)
{
  v2 = [(HKClinicalGatewayEndpointSchema *)a2 name];
  v3 = [v2 caseInsensitiveCompare:@"authorize"] == 0;

  return v3;
}

id sub_7218C(void *a1)
{
  v1 = a1;
  v2 = [v1 mutableCopy];
  if (!v1)
  {
    sub_A65C4();
  }

  v3 = [v2 mutableBytes];
  if ([v1 length])
  {
    v4 = 0;
    do
    {
      v3[v4] ^= byte_E40C8[v4 + -100 * (v4 / 0x64)];
      ++v4;
    }

    while (v4 < [v1 length]);
  }

  return v2;
}

id HDMedicalDownloadAttachmentPredicateForStatus(uint64_t a1)
{
  v1 = HDMedicalDownloadableAttachmentEntityPropertyStatus;
  v2 = [NSNumber numberWithInteger:a1];
  v3 = [HDSQLiteComparisonPredicate predicateWithProperty:v1 equalToValue:v2];

  return v3;
}

id HDMedicalDownloadAttachmentPredicateForErrorStatus(uint64_t a1)
{
  v1 = HDMedicalDownloadableAttachmentEntityPropertyErrorStatus;
  v2 = [NSNumber numberWithInteger:a1];
  v3 = [HDSQLiteComparisonPredicate predicateWithProperty:v1 equalToValue:v2];

  return v3;
}

void sub_726F4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_72714(void *a1, void *a2, uint64_t a3)
{
  v85 = a2;
  v108 = 0u;
  v109 = 0u;
  v110 = 0u;
  v111 = 0u;
  obj = [a1[4] items];
  v82 = [obj countByEnumeratingWithState:&v108 objects:v120 count:16];
  if (v82)
  {
    v81 = *v109;
    v95 = a1;
    do
    {
      v4 = 0;
      do
      {
        if (*v109 != v81)
        {
          objc_enumerationMutation(obj);
        }

        v83 = v4;
        v5 = *(*(&v108 + 1) + 8 * v4);
        v104 = 0u;
        v105 = 0u;
        v106 = 0u;
        v107 = 0u;
        v87 = v5;
        v6 = [v5 units];
        v89 = [v6 countByEnumeratingWithState:&v104 objects:v119 count:16];
        if (v89)
        {
          v7 = *v105;
          v86 = v6;
          v88 = *v105;
          do
          {
            for (i = 0; i != v89; i = i + 1)
            {
              if (*v105 != v7)
              {
                objc_enumerationMutation(v6);
              }

              v9 = *(*(&v104 + 1) + 8 * i);
              v10 = [v9 downloadableAttachments];
              if (v10)
              {
                v11 = v10;
                [v9 medicalRecord];
                v12 = v90 = v9;
                v91 = i;
                v13 = [v12 state];

                v14 = v13 == &dword_0 + 1;
                i = v91;
                if (!v14)
                {
                  v15 = [v90 medicalRecord];
                  v16 = [v15 enteredInError];

                  if (v16)
                  {
                    v17 = a1[8];
                    v18 = [v90 medicalRecord];
                    v19 = [v18 UUID];
                    v20 = a1[5];
                    v103 = 0;
                    v21 = [v17 _deleteAttachmentsWithMedicalRecordIdentifier:v19 profile:v20 error:&v103];
                    v22 = v103;

                    if ((v21 & 1) == 0)
                    {
                      _HKInitializeLogging();
                      v23 = HKLogHealthRecords;
                      if (os_log_type_enabled(HKLogHealthRecords, OS_LOG_TYPE_ERROR))
                      {
                        v78 = a1[8];
                        *buf = 138543619;
                        v114 = v78;
                        v115 = 2113;
                        v116 = v22;
                        _os_log_error_impl(&dword_0, v23, OS_LOG_TYPE_ERROR, "%{public}@ Failed to delete MedicalDownloadableAttachments for medical record entered-in-error with error: %{private}@", buf, 0x16u);
                      }
                    }

                    v7 = v88;
                    i = v91;
                    goto LABEL_56;
                  }

                  v24 = [v90 medicalRecord];
                  v25 = [v87 originalFHIRResource];
                  v26 = [v25 existingRowID];
                  v27 = [v85 databaseForEntityClass:a1[8]];
                  v28 = a1[5];
                  v102 = 0;
                  v93 = [HDMedicalRecordEntity _existingMedicalRecord:v24 originalFHIRResourceRowID:v26 database:v27 profile:v28 error:&v102];
                  v22 = v102;

                  if (v22)
                  {
                    _HKInitializeLogging();
                    v29 = HKLogHealthRecords;
                    if (os_log_type_enabled(HKLogHealthRecords, OS_LOG_TYPE_ERROR))
                    {
                      v74 = a1[8];
                      v75 = v29;
                      v76 = [v87 originalFHIRResource];
                      v77 = [v76 existingRowID];
                      *buf = 138543875;
                      v114 = v74;
                      v115 = 2114;
                      v116 = v77;
                      v117 = 2113;
                      v118 = v22;
                      _os_log_error_impl(&dword_0, v75, OS_LOG_TYPE_ERROR, "%{public}@ Failed to find _existingMedicalRecord for FHIR row id %{public}@ with error: %{private}@", buf, 0x20u);
                    }

                    v6 = v86;
                    v7 = v88;
                    i = v91;
                    goto LABEL_55;
                  }

                  v30 = [v90 clinicalRecord];

                  if (v30)
                  {
                    v31 = [v90 clinicalRecord];
                    v32 = [v87 originalFHIRResource];
                    v33 = [v32 existingRowID];
                    v34 = a1[5];
                    v101 = 0;
                    v35 = [HDClinicalRecordEntity _existingClinicalRecord:v31 originalFHIRResourceRowID:v33 profile:v34 error:&v101];
                    v22 = v101;

                    if (v22)
                    {
                      _HKInitializeLogging();
                      v36 = HKLogHealthRecords;
                      v6 = v86;
                      v7 = v88;
                      if (os_log_type_enabled(HKLogHealthRecords, OS_LOG_TYPE_ERROR))
                      {
                        v37 = v95[8];
                        v38 = v36;
                        v39 = [v87 originalFHIRResource];
                        v40 = [v39 existingRowID];
                        *buf = 138543875;
                        v114 = v37;
                        v115 = 2114;
                        v116 = v40;
                        v117 = 2113;
                        v118 = v22;
                        _os_log_error_impl(&dword_0, v38, OS_LOG_TYPE_ERROR, "%{public}@ Failed to find _existingClinicalRecord for FHIR row id %{public}@ with error: %{private}@", buf, 0x20u);

                        v6 = v86;
                        goto LABEL_53;
                      }

                      goto LABEL_54;
                    }
                  }

                  else
                  {
                    v35 = 0;
                  }

                  v99 = 0u;
                  v100 = 0u;
                  v97 = 0u;
                  v98 = 0u;
                  v94 = [v90 downloadableAttachments];
                  v41 = [v94 countByEnumeratingWithState:&v97 objects:v112 count:16];
                  if (v41)
                  {
                    v42 = v41;
                    v22 = 0;
                    v43 = *v98;
                    v92 = *v98;
                    do
                    {
                      for (j = 0; j != v42; j = j + 1)
                      {
                        if (*v98 != v43)
                        {
                          objc_enumerationMutation(v94);
                        }

                        v45 = *(*(&v97 + 1) + 8 * j);
                        if ([v45 type])
                        {
                          _HKInitializeLogging();
                          v46 = HKLogHealthRecords;
                          if (os_log_type_enabled(HKLogHealthRecords, OS_LOG_TYPE_DEFAULT))
                          {
                            v47 = v95[8];
                            v48 = v46;
                            v49 = NSStringFromClass(v47);
                            v50 = [v45 type];
                            *buf = 138543618;
                            v114 = v49;
                            v115 = 2048;
                            v116 = v50;
                            _os_log_impl(&dword_0, v48, OS_LOG_TYPE_DEFAULT, "%{public}@ MedicalDownloadableAttachment type not supported: %ld", buf, 0x16u);
                          }
                        }

                        else
                        {
                          v51 = [v93 UUID];
                          v52 = v51;
                          if (v51)
                          {
                            v53 = v51;
                          }

                          else
                          {
                            v53 = [v45 medicalRecordIdentifier];
                          }

                          v54 = v53;

                          v55 = v35;
                          v56 = [v35 UUID];
                          v57 = v56;
                          if (v56)
                          {
                            v58 = v56;
                          }

                          else
                          {
                            v58 = [v45 clinicalRecordIdentifier];
                          }

                          v59 = v58;

                          v60 = [v45 copyForAccountWithIdentifier:v95[6] medicalRecordIdentifier:v54 clinicalRecordIdentifier:v59];
                          v61 = v95[8];
                          v62 = v95[5];
                          v96 = v22;
                          v63 = [v61 _processClinicalNotesType:v60 medicalRecord:v93 clinicalRecord:v55 profile:v62 error:&v96];
                          v64 = v96;

                          if (v63)
                          {
                            ++*(*(v95[7] + 8) + 24);
                          }

                          else
                          {
                            _HKInitializeLogging();
                            v65 = HKLogHealthRecords;
                            if (os_log_type_enabled(HKLogHealthRecords, OS_LOG_TYPE_ERROR))
                            {
                              v66 = v95[8];
                              v67 = v65;
                              v68 = [v93 UUID];
                              *buf = 138543875;
                              v114 = v66;
                              v115 = 2114;
                              v116 = v68;
                              v117 = 2113;
                              v118 = v64;
                              _os_log_error_impl(&dword_0, v67, OS_LOG_TYPE_ERROR, "%{public}@ Failed in _processClinicalNotesType for MedicalRecord with UUID %{public}@ with error: %{private}@", buf, 0x20u);
                            }
                          }

                          v22 = v64;
                          v35 = v55;
                          v43 = v92;
                        }
                      }

                      v42 = [v94 countByEnumeratingWithState:&v97 objects:v112 count:16];
                    }

                    while (v42);
                  }

                  else
                  {
                    v22 = 0;
                  }

                  if (v93)
                  {
                    v69 = v95[8];
                    v70 = [v93 UUID];
                    v71 = [v90 downloadableAttachments];
                    v72 = [v93 attachmentObjectIdentifier];
                    v73 = [v35 attachmentObjectIdentifier];
                    [v69 _checkForObsoleteDownloadableAttachmentsForMedicalRecord:v70 extractedDownloadableAttachments:v71 medicalObjectIdentifier:v72 clinicalObjectIdentifier:v73 profile:v95[5] error:a3];
                  }

                  v6 = v86;
LABEL_53:
                  v7 = v88;
LABEL_54:
                  i = v91;

                  a1 = v95;
LABEL_55:

LABEL_56:
                  continue;
                }
              }
            }

            v89 = [v6 countByEnumeratingWithState:&v104 objects:v119 count:16];
          }

          while (v89);
        }

        v4 = v83 + 1;
      }

      while ((v83 + 1) != v82);
      v82 = [obj countByEnumeratingWithState:&v108 objects:v120 count:16];
    }

    while (v82);
  }

  return 1;
}

id sub_73034(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = [[HDMedicalDownloadableAttachmentsInExtractionResultJournalEntry alloc] initWithExtractionResult:*(a1 + 32) accountIdentifier:*(a1 + 40)];
  v6 = [*(a1 + 48) database];
  v7 = [v6 addJournalEntry:v5 error:a3];

  return v7;
}

void sub_73734(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_73758(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

int64_t sub_73D6C(id a1, HDAttachment *a2, HDAttachment *a3)
{
  v4 = a2;
  v5 = [(HDAttachment *)a3 creationDate];
  v6 = [(HDAttachment *)v4 creationDate];

  v7 = [v5 compare:v6];
  return v7;
}

uint64_t sub_73F38(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  if ([*(a1 + 48) _attachmentMatchesDownloadableAttachment:*(a1 + 32) hdAttachment:v4])
  {
    [*(a1 + 40) addObject:v4];
  }

  return 1;
}

uint64_t sub_740E4(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  if ([*(a1 + 48) _attachmentMatchesDownloadableAttachment:*(a1 + 32) hdAttachment:a3])
  {
    [*(a1 + 40) addObject:v5];
  }

  return 1;
}

void sub_7455C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_74B70(uint64_t a1, void *a2)
{
  v3 = a2;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v4 = *(a1 + 32);
  v5 = [v4 countByEnumeratingWithState:&v26 objects:v30 count:16];
  if (v5)
  {
    v6 = v5;
    v23 = a1;
    obj = v4;
    v25 = 0;
    v7 = *v27;
    while (1)
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v27 != v7)
        {
          objc_enumerationMutation(obj);
        }

        v9 = *(*(&v26 + 1) + 8 * i);
        v10 = [v3 webURL];
        if (v10)
        {
          v11 = v10;
          v12 = [v9 webURL];
          if (v12)
          {
            v13 = v12;
            v14 = [v3 webURL];
            v15 = [v9 webURL];
            v16 = [v14 isEqual:v15];

            if (v16)
            {
              v25 = 1;
              continue;
            }
          }

          else
          {
          }
        }

        v17 = [v3 inlineDataChecksum];
        if (v17)
        {
          v18 = [v9 inlineDataChecksum];
          if (v18)
          {
            v19 = [v3 inlineDataChecksum];
            v20 = [v9 inlineDataChecksum];
            v21 = [v19 isEqual:v20];

            v25 |= v21;
          }
        }
      }

      v6 = [obj countByEnumeratingWithState:&v26 objects:v30 count:16];
      if (!v6)
      {

        a1 = v23;
        if (v25)
        {
          goto LABEL_22;
        }

        goto LABEL_21;
      }
    }
  }

LABEL_21:
  [*(*(*(a1 + 40) + 8) + 40) addObject:v3];
LABEL_22:

  return 1;
}

uint64_t sub_74F3C(uint64_t a1)
{
  v1 = *(a1 + 32);
  HDSQLiteBindUUIDToProperty();
  HDSQLiteBindInt64ToProperty();
  HDSQLiteBindInt64ToProperty();
  HDSQLiteBindNullToProperty();
  HDSQLiteBindNullToProperty();
  HDSQLiteBindInt64ToProperty();

  return HDSQLiteBindNullToProperty();
}

void sub_75388(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_753B4(uint64_t a1, void *a2)
{
  v2 = *(*(*(a1 + 32) + 8) + 40);
  v3 = [a2 identifier];
  [v2 addObject:v3];

  return 1;
}

uint64_t sub_75A40(uint64_t a1)
{
  v2 = [*(a1 + 32) UUID];
  HDSQLiteBindUUIDToProperty();

  v3 = *(a1 + 40);

  return HDSQLiteBindSecureCodingObjectToProperty();
}

void sub_75EC4(uint64_t a1)
{
  v1 = [*(a1 + 32) UUID];
  HDSQLiteBindUUIDToProperty();
}

void sub_76094(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id sub_760AC(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v6 = [*(a1 + 48) _attachmentEntityForIdentifier:*(a1 + 32) databaseTransaction:v5 error:a3];
  if (v6)
  {
    v7 = [*(a1 + 48) _propertiesForEntity];
    v8 = [v5 databaseForEntityClass:*(a1 + 48)];
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_761B4;
    v11[3] = &unk_1084C8;
    v12 = *(a1 + 40);
    v9 = [v6 getValuesForProperties:v7 database:v8 handler:v11];
  }

  else
  {
    v9 = &dword_0 + 1;
  }

  return v9;
}

uint64_t sub_761B4(uint64_t a1)
{
  v2 = [*(a1 + 40) attachmentForRow:?];
  v3 = *(*(a1 + 32) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return _objc_release_x1();
}

uint64_t sub_76314(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v7 = [*(a1 + 40) attachmentForRow:a4];
  if (v7)
  {
    v8 = (*(*(a1 + 32) + 16))();
  }

  else
  {
    v9 = [NSError hk_error:129 description:@"Failed to decode HKMedicalDownloadableAttachment from row"];
    if (v9)
    {
      if (a5)
      {
        v10 = v9;
        *a5 = v9;
      }

      else
      {
        _HKLogDroppedError();
      }
    }

    v8 = 0;
  }

  return v8;
}

void sub_76518(uint64_t a1)
{
  (*(*(a1 + 32) + 16))();
  v1 = +[NSDate now];
  HDSQLiteBindDateToProperty();
}

void sub_769D0(uint64_t a1)
{
  v2 = [*(a1 + 32) identifier];
  HDSQLiteBindUUIDToProperty();

  v3 = [*(a1 + 32) medicalRecordIdentifier];
  HDSQLiteBindUUIDToProperty();

  v4 = [*(a1 + 32) clinicalRecordIdentifier];
  HDSQLiteBindUUIDToProperty();

  v5 = [*(a1 + 32) accountIdentifier];
  HDSQLiteBindUUIDToProperty();

  v6 = [*(a1 + 32) FHIRVersion];
  v7 = [v6 stringRepresentation];
  HDSQLiteBindStringToProperty();

  [*(a1 + 32) type];
  HDSQLiteBindInt64ToProperty();
  [*(a1 + 32) status];
  HDSQLiteBindInt64ToProperty();
  [*(a1 + 32) errorStatus];
  HDSQLiteBindInt64ToProperty();
  v8 = [*(a1 + 32) title];
  HDSQLiteBindStringToProperty();

  v9 = [*(a1 + 32) webURL];
  v10 = [v9 absoluteString];
  HDSQLiteBindStringToProperty();

  v11 = [*(a1 + 32) sizeInBytes];
  HDSQLiteBindNumberToProperty();

  v12 = [*(a1 + 32) contentType];
  HDSQLiteBindStringToProperty();

  v13 = [*(a1 + 32) locale];
  v14 = [v13 localeIdentifier];
  HDSQLiteBindStringToProperty();

  v15 = [*(a1 + 32) expectedHash];
  HDSQLiteBindDataToProperty();

  v16 = [*(a1 + 32) creationDate];
  HDSQLiteBindDateToProperty();

  [*(a1 + 32) retryCount];
  HDSQLiteBindInt64ToProperty();
  v17 = [*(a1 + 32) nextRetryDate];
  HDSQLiteBindDateToProperty();

  v18 = [*(a1 + 32) lastUpdatedDate];
  HDSQLiteBindDateToProperty();

  v19 = [*(a1 + 32) lastError];
  HDSQLiteBindSecureCodingObjectToProperty();

  v20 = [*(a1 + 32) fileURL];
  v21 = [v20 path];
  HDSQLiteBindStringToProperty();

  v22 = [*(a1 + 32) inlineData];
  HDSQLiteBindDataToProperty();

  v23 = [*(a1 + 32) inlineDataChecksum];
  HDSQLiteBindDataToProperty();

  v24 = [*(a1 + 32) attachmentIdentifier];
  HDSQLiteBindUUIDToProperty();

  v25 = [*(a1 + 32) metadata];
  HDSQLiteBindSecureCodingObjectToProperty();
}

void sub_774BC(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_fault_impl(a1, v9, OS_LOG_TYPE_FAULT, a4, &a9, 0x16u);
}

void *sub_784BC(uint64_t a1)
{
  result = *(a1 + 32);
  v3 = result[6];
  if (!v3)
  {
    [result _queue_setIngestionState:2];
    result = *(a1 + 32);
    v3 = result[6];
  }

  result[6] = v3 + 1;
  return result;
}

id sub_78840(uint64_t a1)
{
  if (*(a1 + 80) == 1)
  {
    [*(a1 + 32) _enableCHRNotificationsIfNeeded];
    [*(a1 + 32) _badgeForNewHealthRecordsFromTask:*(a1 + 40)];
    v2 = *(a1 + 56);
    v3 = *(a1 + 72);
    if (*(a1 + 64) > v3 || v2 == 0)
    {
      [*(a1 + 32) _notifyForNewHealthRecordsFromTask:*(a1 + 40)];
      if (!v2)
      {
        goto LABEL_10;
      }

      v3 = *(a1 + 72);
      v2 = *(a1 + 56);
    }

    [*(a1 + 32) _notifyForNewHealthLabRecordsFromTask:*(a1 + 40) countOfAllLabs:v3 countOfPinnedLabs:v2];
  }

LABEL_10:
  --*(*(a1 + 32) + 48);
  v5 = *(a1 + 32);
  if (!v5[6])
  {
    [v5 _queue_setIngestionState:1];
  }

  v6 = *(a1 + 48);

  return [v6 invalidate];
}

void sub_78BD8(uint64_t a1)
{
  if ([*(a1 + 32) _queue_shouldScheduleIngestion])
  {
    v2 = [NSDate dateWithTimeIntervalSinceNow:3600.0];
    v3 = *(a1 + 32);
    v4 = *(v3 + 64);
    *(v3 + 64) = v2;

    [*(a1 + 32) scheduleIngestionWithReason:@"querying for health records samples"];
    v5 = objc_retainBlock(*(*(a1 + 32) + 112));
    if (v5)
    {
      v6 = v5;
      v5[2]();
      v5 = v6;
    }
  }
}

void sub_78D64(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(v1 + 64);
  *(v1 + 64) = 0;
}

void sub_78E40(uint64_t a1, void *a2)
{
  v3 = a2;
  if (([v3 taskSuccess] & 1) == 0)
  {
    _HKInitializeLogging();
    v4 = HKLogHealthRecords;
    if (os_log_type_enabled(HKLogHealthRecords, OS_LOG_TYPE_ERROR))
    {
      sub_A6A18(v4);
    }
  }

  (*(*(a1 + 32) + 16))();
}

void sub_78FA8(uint64_t a1, void *a2)
{
  v3 = a2;
  if (([v3 taskSuccess] & 1) == 0)
  {
    _HKInitializeLogging();
    v4 = HKLogHealthRecords;
    if (os_log_type_enabled(HKLogHealthRecords, OS_LOG_TYPE_ERROR))
    {
      sub_A6AB0(a1, v4);
    }
  }

  (*(*(a1 + 40) + 16))();
}

void sub_79110(uint64_t a1, void *a2)
{
  v3 = a2;
  if (([v3 taskSuccess] & 1) == 0)
  {
    _HKInitializeLogging();
    v4 = HKLogHealthRecords;
    if (os_log_type_enabled(HKLogHealthRecords, OS_LOG_TYPE_ERROR))
    {
      sub_A6B54(a1, v4);
    }
  }

  v5 = *(a1 + 40);
  v6 = [v3 taskError];
  (*(v5 + 16))(v5, v6);
}

void sub_792E4(uint64_t a1, void *a2)
{
  v3 = a2;
  objc_initWeak(&location, *(a1 + 32));
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_793D8;
  v7[3] = &unk_108658;
  objc_copyWeak(&v9, &location);
  v6 = v3;
  v8 = v6;
  [v4 _performExtractionWithReason:v5 completion:v7];

  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
}

void sub_793BC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_793D8(uint64_t a1, void *a2)
{
  v5 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v4 = [WeakRetained unitTesting_didCompleteScheduledExtraction];

  if (v4)
  {
    (v4)[2](v4, v5);
  }

  (*(*(a1 + 32) + 16))();
}

void sub_79AEC(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  if ((a2 & 1) == 0)
  {
    _HKInitializeLogging();
    v6 = HKLogHealthRecords;
    if (os_log_type_enabled(HKLogHealthRecords, OS_LOG_TYPE_ERROR))
    {
      sub_A6F34(a1, v6, v5);
    }
  }
}

void sub_79DA0(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  if ((a2 & 1) == 0)
  {
    _HKInitializeLogging();
    v6 = HKLogHealthRecords;
    if (os_log_type_enabled(HKLogHealthRecords, OS_LOG_TYPE_ERROR))
    {
      sub_A7000(a1, v5, v6);
    }
  }
}

void sub_7A384(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_7A39C(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

BOOL sub_7A3B4(void *a1, void *a2, void *a3)
{
  v5 = a1[6];
  v6 = a2;
  v7 = [v5 _queryForNextScheduledReminderInTransaction:v6];
  v8 = a1[6];
  v9 = a1[4];
  v17 = 0;
  v10 = [v8 _firstQueryResultAsReminder:v7 profile:v9 transaction:v6 error:&v17];

  v11 = v17;
  v12 = *(a1[5] + 8);
  v13 = *(v12 + 40);
  *(v12 + 40) = v10;

  v14 = v11;
  if (v14)
  {
    if (a3)
    {
      v15 = v14;
      *a3 = v14;
    }

    else
    {
      _HKLogDroppedError();
    }
  }

  return v14 == 0;
}

void sub_7A5E0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

BOOL sub_7A5F8(void *a1, void *a2, void *a3)
{
  v5 = a1[6];
  v6 = a2;
  v7 = [v5 _queryForLastPostedReminderInTransaction:v6];
  v8 = a1[6];
  v9 = a1[4];
  v17 = 0;
  v10 = [v8 _firstQueryResultAsReminder:v7 profile:v9 transaction:v6 error:&v17];

  v11 = v17;
  v12 = *(a1[5] + 8);
  v13 = *(v12 + 40);
  *(v12 + 40) = v10;

  v14 = v11;
  if (v14)
  {
    if (a3)
    {
      v15 = v14;
      *a3 = v14;
    }

    else
    {
      _HKLogDroppedError();
    }
  }

  return v14 == 0;
}

void sub_7A9C4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va1, a11);
  va_start(va, a11);
  v12 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  v17 = va_arg(va1, void);
  v18 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

void sub_7A9E8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a1 + 32);
  v6 = [*(a1 + 40) persistentID];
  v12 = 0;
  v7 = [v5 objectForPersistentID:v6 row:a3 error:&v12];
  v8 = v12;
  v9 = v12;
  v10 = *(*(a1 + 48) + 8);
  v11 = *(v10 + 40);
  *(v10 + 40) = v7;

  if (!*(*(*(a1 + 48) + 8) + 40))
  {
    objc_storeStrong((*(*(a1 + 56) + 8) + 40), v8);
  }
}

void sub_7AD50(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

BOOL sub_7AD68(void *a1, uint64_t a2, void *a3)
{
  v5 = a1[7];
  v6 = a1[4];
  v7 = a1[5];
  v15 = 0;
  v8 = [v5 _reminderForSource:v6 profile:v7 transaction:a2 error:&v15];
  v9 = v15;
  v10 = *(a1[6] + 8);
  v11 = *(v10 + 40);
  *(v10 + 40) = v8;

  v12 = v9;
  if (v12)
  {
    if (a3)
    {
      v13 = v12;
      *a3 = v12;
    }

    else
    {
      _HKLogDroppedError();
    }
  }

  return v12 == 0;
}

void sub_7B15C(uint64_t a1)
{
  [*(a1 + 32) persistentID];
  HDSQLiteBindInt64ToProperty();
  v2 = [*(a1 + 40) creationDate];
  HDSQLiteBindDateToProperty();

  v3 = [*(a1 + 40) postDate];
  HDSQLiteBindDateToProperty();
}

void sub_7B3A0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id sub_7B3B8(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = *(a1 + 56);
  v7 = *(a1 + 32);
  v8 = *(a1 + 40);
  v21 = 0;
  v9 = [v6 _reminderForSource:v7 profile:v8 transaction:v5 error:&v21];
  v10 = v21;
  v11 = *(*(a1 + 48) + 8);
  v12 = *(v11 + 40);
  *(v11 + 40) = v9;

  if (*(*(*(a1 + 48) + 8) + 40))
  {
    v13 = &dword_0 + 1;
  }

  else
  {
    v14 = v10;
    if (v14)
    {
      v15 = v14;
      if (a3)
      {
        v16 = v14;
        v13 = 0;
        *a3 = v15;
      }

      else
      {
        _HKLogDroppedError();
        v13 = 0;
      }
    }

    else
    {
      v15 = objc_alloc_init(NSDate);
      v17 = [[HDClinicalAPIReminder alloc] initWithSource:*(a1 + 32) creationDate:v15 postDate:0];
      v18 = *(*(a1 + 48) + 8);
      v19 = *(v18 + 40);
      *(v18 + 40) = v17;

      v13 = [*(a1 + 56) _insertReminder:*(*(*(a1 + 48) + 8) + 40) profile:*(a1 + 40) transaction:v5 error:a3];
    }
  }

  return v13;
}

void sub_7B690(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

BOOL sub_7B6A8(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = *(a1 + 64);
  v7 = *(a1 + 32);
  v24 = 0;
  v8 = [v6 _entityForReminder:v7 transaction:v5 error:&v24];
  v9 = v24;
  v10 = v9;
  if (v8)
  {
    v25 = @"date_posted";
    v11 = [NSArray arrayWithObjects:&v25 count:1];
    v12 = [v5 unprotectedDatabase];
    v22[0] = _NSConcreteStackBlock;
    v22[1] = 3221225472;
    v22[2] = sub_7B8E4;
    v22[3] = &unk_105B80;
    v23 = *(a1 + 40);
    v13 = [v8 updateProperties:v11 database:v12 error:a3 bindingHandler:v22];

    if (v13)
    {
      v14 = [v8 _instantiateObjectWithProfile:*(a1 + 48) transaction:v5 error:a3];
      v15 = *(*(a1 + 56) + 8);
      v16 = *(v15 + 40);
      *(v15 + 40) = v14;

      v17 = *(*(*(a1 + 56) + 8) + 40) != 0;
    }

    else
    {
      v17 = 0;
    }

    a1 = v23;
    goto LABEL_15;
  }

  if (v9)
  {
    v18 = v9;
  }

  else
  {
    v19 = *(a1 + 32);
    a1 = HKSensitiveLogItem();
    v18 = [NSError hk_error:100 format:@"No entity for reminder %@", a1];
    if (!v18)
    {
LABEL_14:

      v17 = 0;
LABEL_15:

      goto LABEL_16;
    }
  }

  if (a3)
  {
    v20 = v18;
    *a3 = v18;
  }

  else
  {
    _HKLogDroppedError();
  }

  if (!v10)
  {
    goto LABEL_14;
  }

  v17 = 0;
LABEL_16:

  return v17;
}

unint64_t sub_7BA70(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = [*(a1 + 32) sourceManager];
  v7 = *(a1 + 40);
  v16 = 0;
  v8 = [v6 localSourceForBundleIdentifier:v7 error:&v16];
  v9 = v16;

  if (v8)
  {
    v10 = *(a1 + 48);
    v11 = [v5 unprotectedDatabase];
    v12 = [*(a1 + 48) _predicateForReminderWithSourceEntity:v8];
    v13 = [v10 deleteEntitiesInDatabase:v11 predicate:v12 error:a3];
  }

  else
  {
    v11 = v9;
    v13 = v11 == 0;
    if (v11)
    {
      if (a3)
      {
        v15 = v11;
        v13 = 0;
        *a3 = v11;
      }

      else
      {
        _HKLogDroppedError();
        v13 = 0;
      }
    }
  }

  return v13;
}

void sub_7BFE4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_7C000(uint64_t a1, uint64_t a2)
{
  v3 = [*(a1 + 32) objectForPersistentID:a2 row:? error:?];
  v4 = *(*(a1 + 40) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;

  return 0;
}

void sub_7C640(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  _HKInitializeLogging();
  v6 = HKLogHealthRecords;
  if (a2)
  {
    if (os_log_type_enabled(HKLogHealthRecords, OS_LOG_TYPE_DEFAULT))
    {
      v7 = *(a1 + 32);
      v8 = 138543362;
      v9 = v7;
      _os_log_impl(&dword_0, v6, OS_LOG_TYPE_DEFAULT, "%{public}@ Completed runMedicalDownloadableAttachmentPipelineWithCompletion successfully", &v8, 0xCu);
    }
  }

  else if (os_log_type_enabled(HKLogHealthRecords, OS_LOG_TYPE_ERROR))
  {
    sub_A7108(a1, v5, v6);
  }
}

uint64_t sub_7D610(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    [*(a1 + 32) addObject:a2];
  }

  return 1;
}

uint64_t sub_7D7F4(uint64_t a1)
{
  v2 = HDSQLiteColumnWithNameAsUUID();
  if (v2)
  {
    [*(a1 + 32) addObject:v2];
  }

  return 1;
}

uint64_t sub_7E318(uint64_t a1)
{
  v2 = *(a1 + 40);
  HDSQLiteBindInt64ToProperty();
  v3 = *(a1 + 32);

  return HDSQLiteBindDateToProperty();
}

uint64_t sub_7E514(uint64_t a1)
{
  v1 = [*(a1 + 32) path];
  HDSQLiteBindStringToProperty();

  HDSQLiteBindInt64ToProperty();
  HDSQLiteBindInt64ToProperty();
  HDSQLiteBindNullToProperty();
  HDSQLiteBindInt64ToProperty();

  return HDSQLiteBindNullToProperty();
}

uint64_t sub_7E794(uint64_t a1)
{
  v2 = [*(a1 + 32) content];
  HDSQLiteBindDataToProperty();

  v3 = [*(a1 + 32) contentType];
  HDSQLiteBindStringToProperty();

  HDSQLiteBindInt64ToProperty();
  HDSQLiteBindInt64ToProperty();
  HDSQLiteBindNullToProperty();
  HDSQLiteBindInt64ToProperty();

  return HDSQLiteBindNullToProperty();
}

uint64_t sub_7EA10(uint64_t a1)
{
  v1 = *(a1 + 32);
  HDSQLiteBindInt64ToProperty();
  HDSQLiteBindInt64ToProperty();
  HDSQLiteBindNullToProperty();
  HDSQLiteBindInt64ToProperty();

  return HDSQLiteBindNullToProperty();
}

uint64_t sub_7ECC4(void *a1)
{
  v2 = a1[6];
  HDSQLiteBindInt64ToProperty();
  v3 = a1[4];
  HDSQLiteBindSecureCodingObjectToProperty();
  v4 = a1[7];
  HDSQLiteBindInt64ToProperty();
  v5 = a1[5];

  return HDSQLiteBindDateToProperty();
}

void sub_7FB68(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  if ((a2 & 1) == 0)
  {
    _HKInitializeLogging();
    v6 = HKLogHealthRecords;
    if (os_log_type_enabled(HKLogHealthRecords, OS_LOG_TYPE_ERROR))
    {
      sub_A75E0(a1, v6, v5);
    }
  }

  _HKInitializeLogging();
  v7 = HKLogHealthRecords;
  if (os_log_type_enabled(HKLogHealthRecords, OS_LOG_TYPE_DEFAULT))
  {
    v8 = *(a1 + 32);
    v9 = 138543362;
    v10 = v8;
    _os_log_impl(&dword_0, v7, OS_LOG_TYPE_DEFAULT, "%{public}@: downloading batch completed", &v9, 0xCu);
  }
}

void sub_80C9C(uint64_t a1)
{
  v1 = [*(a1 + 32) path];
  HDSQLiteBindStringToProperty();
}

void sub_81D68(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (v5)
  {
    v8 = [v5 attachmentIdentifiers];
    v9 = (a1 + 48);
    v10 = [*(a1 + 48) attachmentIdentifier];
    v11 = [v8 containsObject:v10];

    if (v11)
    {
      v12 = *(a1 + 32);
      v13 = *(a1 + 40);
      v35 = 0;
      v14 = [v12 updateStatusAndClearErrorForAttachmentWithIdentifier:v13 status:6 error:&v35];
      v15 = v35;
      if (v14)
      {
        v16 = [*(a1 + 32) unitTesting_didFinishIndexingNotification];
        v17 = v16;
        if (v16)
        {
          (*(v16 + 16))(v16);
        }
      }

      else
      {
        _HKInitializeLogging();
        v25 = HKLogHealthRecords;
        if (!os_log_type_enabled(HKLogHealthRecords, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_16;
        }

        v31 = *(a1 + 32);
        v32 = *(a1 + 40);
        v17 = v25;
        v33 = [v15 localizedDescription];
        v34 = HKSensitiveLogItem();
        *buf = 138543874;
        v38 = v31;
        v39 = 2114;
        v40 = v32;
        v41 = 2114;
        v42 = v34;
        _os_log_error_impl(&dword_0, v17, OS_LOG_TYPE_ERROR, "%{public}@: Failed update status for attachment %{public}@. Error: %{public}@", buf, 0x20u);
      }

LABEL_16:
      goto LABEL_17;
    }

    _HKInitializeLogging();
    v24 = HKLogHealthRecords;
    if (os_log_type_enabled(HKLogHealthRecords, OS_LOG_TYPE_ERROR))
    {
      sub_A7868(v9, v24);
    }
  }

  else
  {
    v18 = v6;
    if (!v18)
    {
      v18 = [NSError hk_error:2000 format:@"Indexing failed for unknown reason."];
    }

    v19 = *(a1 + 32);
    v20 = *(a1 + 40);
    v21 = [*(a1 + 48) retryCount];
    v36 = 0;
    LOBYTE(v20) = [v19 updateErrorStatusAndRetryCountForAttachmentWithIdentifier:v20 errorStatus:4 lastError:v18 retryCount:v21 + 1 error:&v36];
    v22 = v36;
    if ((v20 & 1) == 0)
    {
      _HKInitializeLogging();
      v23 = HKLogHealthRecords;
      if (os_log_type_enabled(HKLogHealthRecords, OS_LOG_TYPE_ERROR))
      {
        v26 = *(a1 + 32);
        v27 = *(a1 + 40);
        v28 = v23;
        v29 = [v22 localizedDescription];
        v30 = HKSensitiveLogItem();
        *buf = 138543874;
        v38 = v26;
        v39 = 2114;
        v40 = v27;
        v41 = 2114;
        v42 = v30;
        _os_log_error_impl(&dword_0, v28, OS_LOG_TYPE_ERROR, "%{public}@: Failed update error status for attachment %{public}@. Error: %{public}@", buf, 0x20u);
      }
    }
  }

LABEL_17:
}

uint64_t sub_82544(uint64_t a1)
{
  v2 = HDSQLiteColumnWithNameAsUUID();
  if (v2)
  {
    [*(a1 + 32) addObject:v2];
  }

  return 1;
}

void sub_88BA4(uint64_t a1)
{
  HDSQLiteBindNullToProperty();
  v2 = [*(a1 + 32) loginURL];
  v3 = [v2 query];
  HDSQLiteBindStringToProperty();

  v4 = [*(a1 + 32) state];
  HDSQLiteBindUUIDToProperty();

  v5 = [*(a1 + 32) pkceVerifier];
  HDSQLiteBindStringToProperty();

  v6 = *(a1 + 40);
  HDSQLiteBindDateToProperty();
  v7 = *(a1 + 48);
  HDSQLiteBindNumberToProperty();
  v8 = *(a1 + 56);
  HDSQLiteBindNumberToProperty();
  v9 = [*(a1 + 32) requestedScope];
  HDSQLiteBindStringToProperty();
}

uint64_t sub_8915C(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);
  return HDSQLiteBindStringToProperty();
}

id sub_892BC(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = *(a1 + 40);
  v6 = [a2 databaseForEntityClass:v5];
  v7 = [v5 deleteEntitiesInDatabase:v6 predicate:*(a1 + 32) error:a3];

  return v7;
}

id sub_89320(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = [(HDClinicalAuthorizationSessionJournalEntry *)[HDClinicalAuthorizationSessionDeleteJournalEntry alloc] initWithState:*(a1 + 32)];
  v6 = [*(a1 + 40) addJournalEntry:v5 error:a3];

  return v6;
}

void sub_89688(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_896A0(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_896B8(uint64_t a1)
{
  v2 = HDSQLiteColumnWithNameAsString();
  if (v2)
  {
    v11 = v2;
    v3 = [HKOAuth2TokenSession alloc];
    v4 = HDSQLiteColumnWithNameAsString();
    v5 = HDSQLiteColumnWithNameAsString();
    v6 = HDSQLiteColumnWithNameAsUUID();
    v7 = HDSQLiteColumnWithNameAsString();
    v8 = [v3 initWithCode:v11 query:v4 requestedScope:v5 state:v6 pkceVerifier:v7];
    v9 = *(*(a1 + 32) + 8);
    v10 = *(v9 + 40);
    *(v9 + 40) = v8;

    v2 = v11;
  }
}

uint64_t sub_8A8D4(uint64_t a1)
{
  v2 = *(a1 + 32);
  HDSQLiteBindStringToProperty();
  v3 = *(a1 + 40);

  return HDSQLiteBindNumberToProperty();
}

void sub_8AC14(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_8AC34(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _scheduleTriggers];
}

id sub_8AD54(uint64_t a1)
{
  [*(a1 + 32) _queue_scheduleTriggers];
  v2 = *(a1 + 40);

  return [v2 invalidate];
}

void sub_8BEB0(uint64_t a1)
{
  v2 = [*(a1 + 32) _unitTesting_testingEventListener];
  [v2 launchedClinicalSettingsForSource:*(a1 + 40)];

  v3 = [*(a1 + 40) bundleIdentifier];
  v4 = _HKCreateActivityForCHRAPIAppSettings();

  v11 = 0;
  v5 = [LSApplicationRecord bundleRecordWithApplicationIdentifier:kHKHealthAppBundleIdentifier error:&v11];
  v6 = v11;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    if (v5)
    {
      v7 = objc_alloc_init(_LSOpenConfiguration);
      v8 = +[LSApplicationWorkspace defaultWorkspace];
      v9[0] = _NSConcreteStackBlock;
      v9[1] = 3221225472;
      v9[2] = sub_8C07C;
      v9[3] = &unk_1078C8;
      v10 = v4;
      [v8 openUserActivity:v10 usingApplicationRecord:v5 configuration:v7 completionHandler:v9];
    }

    else
    {
      _HKInitializeLogging();
      if (os_log_type_enabled(HKLogHealthRecords, OS_LOG_TYPE_FAULT))
      {
        sub_A898C();
      }
    }
  }

  else
  {
    _HKInitializeLogging();
    if (os_log_type_enabled(HKLogHealthRecords, OS_LOG_TYPE_FAULT))
    {
      sub_A8924();
    }
  }
}

void sub_8C07C(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  if ((a2 & 1) == 0)
  {
    _HKInitializeLogging();
    v6 = HKLogHealthRecords;
    if (os_log_type_enabled(HKLogHealthRecords, OS_LOG_TYPE_ERROR))
    {
      sub_A89F4(a1, v5, v6);
    }
  }
}

id sub_8C1E0(uint64_t a1)
{
  [*(a1 + 32) _queue_scheduleTriggers];
  _HKInitializeLogging();
  if (os_log_type_enabled(HKLogHealthRecords, OS_LOG_TYPE_DEBUG))
  {
    sub_A8A70(a1);
  }

  return [*(a1 + 48) invalidate];
}

void sub_8C3E0(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) profile];
  v6 = 0;
  v4 = [HDClinicalAPIReminderEntity reminderForSource:v2 createIfNecessary:1 profile:v3 error:&v6];
  v5 = v6;

  [*(a1 + 40) _queue_scheduleTriggers];
  (*(*(a1 + 48) + 16))(*(a1 + 48), v4 != 0, v5);
}

void sub_8C628(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) bundleIdentifier];
  v5 = 0;
  [v2 _queue_deregisterAppWithBundleIdentifier:v3 error:&v5];
  v4 = v5;

  [*(a1 + 32) _queue_scheduleTriggers];
  (*(*(a1 + 48) + 16))();
}

void sub_8CE88(id *a1)
{
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v2 = a1[4];
  v3 = [v2 countByEnumeratingWithState:&v18 objects:v26 count:16];
  if (v3)
  {
    v5 = v3;
    v6 = *v19;
    *&v4 = 138412546;
    v16 = v4;
    do
    {
      v7 = 0;
      do
      {
        if (*v19 != v6)
        {
          objc_enumerationMutation(v2);
        }

        v8 = *(*(&v18 + 1) + 8 * v7);
        v9 = a1[5];
        v17 = 0;
        v10 = [v9 _queue_deregisterAppWithBundleIdentifier:v8 error:{&v17, v16}];
        v11 = v17;
        if ((v10 & 1) == 0)
        {
          _HKInitializeLogging();
          v12 = HKLogHealthRecords;
          if (os_log_type_enabled(HKLogHealthRecords, OS_LOG_TYPE_ERROR))
          {
            v13 = v12;
            v14 = HKSensitiveLogItem();
            *buf = v16;
            v23 = v14;
            v24 = 2114;
            v25 = v11;
            _os_log_error_impl(&dword_0, v13, OS_LOG_TYPE_ERROR, "Failed to deregister app with bundle ID %@ from unlimited auth confirmation: %{public}@", buf, 0x16u);
          }
        }

        v7 = v7 + 1;
      }

      while (v5 != v7);
      v5 = [v2 countByEnumeratingWithState:&v18 objects:v26 count:16];
    }

    while (v5);
  }

  [a1[6] invalidate];
  v15 = [a1[5] _unitTesting_testingEventListener];
  [v15 handledApplicationsUninstalled];
}

void sub_8D53C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 56));
  objc_destroyWeak((v2 - 56));
  _Unwind_Resume(a1);
}

void sub_8D560(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = objc_autoreleasePoolPush();
  state = xpc_activity_get_state(v3);
  if (state == 2)
  {
    _HKInitializeLogging();
    v9 = HKLogHealthRecords;
    if (os_log_type_enabled(HKLogHealthRecords, OS_LOG_TYPE_DEFAULT))
    {
      v10 = *(a1 + 32);
      v21 = 138543362;
      v22 = v10;
      _os_log_impl(&dword_0, v9, OS_LOG_TYPE_DEFAULT, "Running XPC activity %{public}@", &v21, 0xCu);
    }

    WeakRetained = objc_loadWeakRetained((a1 + 56));
    [WeakRetained _handleFirstUnlock];

    xpc_activity_set_criteria(v3, *(a1 + 48));
    if (!xpc_activity_set_state(v3, 3))
    {
      _HKInitializeLogging();
      v12 = HKLogHealthRecords;
      if (os_log_type_enabled(HKLogHealthRecords, OS_LOG_TYPE_ERROR))
      {
        sub_A90E4(a1, v12, v13, v14, v15, v16, v17, v18);
      }
    }
  }

  else if (!state)
  {
    _HKInitializeLogging();
    v6 = HKLogHealthRecords;
    if (os_log_type_enabled(HKLogHealthRecords, OS_LOG_TYPE_INFO))
    {
      v7 = *(a1 + 32);
      v21 = 138543362;
      v22 = v7;
      _os_log_impl(&dword_0, v6, OS_LOG_TYPE_INFO, "Checking in for XPC activity %{public}@", &v21, 0xCu);
    }

    v8 = xpc_activity_copy_criteria(v3);
    if (v8)
    {
    }

    else
    {
      _HKInitializeLogging();
      v19 = HKLogHealthRecords;
      if (os_log_type_enabled(HKLogHealthRecords, OS_LOG_TYPE_DEFAULT))
      {
        v20 = *(a1 + 32);
        v21 = 138543362;
        v22 = v20;
        _os_log_impl(&dword_0, v19, OS_LOG_TYPE_DEFAULT, "Updating XPC activity criteria for %{public}@", &v21, 0xCu);
      }

      xpc_activity_set_criteria(v3, *(a1 + 40));
    }
  }

  objc_autoreleasePoolPop(v4);
}

void sub_8E29C(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &a9, 0xCu);
}

void sub_8E840(id a1)
{
  v3[0] = HDOriginalFHIRResourceEntityPropertyType;
  v3[1] = HDOriginalFHIRResourceEntityPropertyAccountID;
  v3[2] = HDOriginalFHIRResourceEntityPropertyClinicalLinkROWID;
  v3[3] = HDOriginalFHIRResourceEntityPropertyResourceID;
  v3[4] = HDOriginalFHIRResourceEntityPropertySyncProvenance;
  v3[5] = HDOriginalFHIRResourceEntityPropertyRawContent;
  v3[6] = HDOriginalFHIRResourceEntityPropertyUniquenessChecksum;
  v3[7] = HDOriginalFHIRResourceEntityPropertyReceivedDate;
  v3[8] = HDOriginalFHIRResourceEntityPropertyReceivedDateTimeZone;
  v3[9] = HDOriginalFHIRResourceEntityPropertyFirstSeenDate;
  v3[10] = HDOriginalFHIRResourceEntityPropertyFirstSeenDateTimeZone;
  v3[11] = HDOriginalFHIRResourceEntityPropertyFHIRVersion;
  v3[12] = HDOriginalFHIRResourceEntityPropertySourceURL;
  v3[13] = HDOriginalFHIRResourceEntityPropertyExtractionHints;
  v3[14] = HDOriginalFHIRResourceEntityPropertyOriginMajorVersion;
  v3[15] = HDOriginalFHIRResourceEntityPropertyOriginMinorVersion;
  v3[16] = HDOriginalFHIRResourceEntityPropertyOriginPatchVersion;
  v3[17] = HDOriginalFHIRResourceEntityPropertyOriginBuild;
  v3[18] = HDOriginalFHIRResourceEntityPropertySyncIdentity;
  v1 = [NSArray arrayWithObjects:v3 count:19];
  v2 = qword_128838;
  qword_128838 = v1;
}

void sub_8EA00(id a1)
{
  v3[0] = HDOriginalFHIRResourceEntityPropertyRawContent;
  v3[1] = HDOriginalFHIRResourceEntityPropertyFHIRVersion;
  v3[2] = HDOriginalFHIRResourceEntityPropertySourceURL;
  v1 = [NSArray arrayWithObjects:v3 count:3];
  v2 = qword_128848;
  qword_128848 = v1;
}

void sub_8EE4C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, char a22, uint64_t a23, uint64_t a24, uint64_t a25, char a26)
{
  _Block_object_dispose(&a22, 8);
  _Block_object_dispose(&a26, 8);
  _Block_object_dispose((v26 - 120), 8);
  _Unwind_Resume(a1);
}

BOOL sub_8EE84(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = [a2 databaseForEntityClass:*(a1 + 80)];
  v6 = [HDClinicalAccountEntity existingAccountEntityWithIdentifier:*(a1 + 32) database:v5 error:a3];
  v7 = [v6 accountInDatabase:v5 error:a3];
  if (v7)
  {
    v8 = HDOriginalFHIRResourceEntityPropertyAccountID;
    v9 = +[NSNumber numberWithLongLong:](NSNumber, "numberWithLongLong:", [v6 persistentID]);
    v10 = [HDSQLiteComparisonPredicate predicateWithProperty:v8 equalToValue:v9];

    v11 = [*(a1 + 40) integerValue];
    v12 = [v7 lastExtractedRulesVersion];
    v13 = [v12 integerValue];

    if (v11 <= v13)
    {
      v15 = [v7 lastExtractedRowID];

      if (v15)
      {
        v16 = HDSQLEntityPropertyPersistentID;
        v17 = [v7 lastExtractedRowID];
        v18 = [HDSQLiteComparisonPredicate predicateWithProperty:v16 greaterThanValue:v17];

        v19 = [HDSQLitePredicate compoundPredicateWithPredicate:v18 otherPredicate:v10];

        v20 = [v7 lastExtractedRowID];
        *(*(*(a1 + 64) + 8) + 24) = [v20 longValue];

        v10 = v19;
      }
    }

    else
    {
      *(*(*(a1 + 56) + 8) + 24) = 1;
    }

    v21 = [v7 gateway];
    v22 = [v21 country];
    v23 = v22;
    v24 = HKCountryCodeUnknownCountry;
    if (v22)
    {
      v24 = v22;
    }

    v25 = v24;

    v26 = [*(a1 + 80) _resourceObjectsInDatabase:v5 withPredicate:v10 limitCount:*(a1 + 88) highestPersistentID:*(*(a1 + 72) + 8) + 24 assignCountry:v25 error:a3];

    v14 = v26 != 0;
    if (v26)
    {
      v27 = [v26 hk_filter:&stru_1089A0];
      [*(a1 + 48) addObjectsFromArray:v27];
    }
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

BOOL sub_8F110(id a1, HDOriginalFHIRResourceObject *a2)
{
  v2 = a2;
  if (([(HDOriginalFHIRResourceObject *)v2 extractionHints]& 0x10) != 0)
  {
    v3 = [(HDOriginalFHIRResourceObject *)v2 ingestedOnLocalDevice]^ 1;
  }

  else
  {
    LOBYTE(v3) = 1;
  }

  return v3;
}

uint64_t sub_8F280(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = [a2 databaseForEntityClass:*(a1 + 56)];
  v6 = [HDClinicalAccountEntity existingAccountEntityWithIdentifier:*(a1 + 32) database:v5 error:a3];
  v7 = v6;
  if (v6)
  {
    v8 = [v6 accountInDatabase:v5 error:a3];
    if (v8)
    {
      v9 = HDOriginalFHIRResourceEntityPropertyAccountID;
      v10 = +[NSNumber numberWithLongLong:](NSNumber, "numberWithLongLong:", [v7 persistentID]);
      v11 = [HDSQLiteComparisonPredicate predicateWithProperty:v9 equalToValue:v10];

      v12 = [v8 gateway];
      v13 = [v12 country];
      v14 = v13;
      v15 = HKCountryCodeUnknownCountry;
      if (v13)
      {
        v15 = v13;
      }

      v16 = v15;

      if ([*(a1 + 40) count])
      {
        v33 = v16;
        v34 = v5;
        v30 = v8;
        v31 = v7;
        v37 = 0u;
        v38 = 0u;
        v35 = 0u;
        v36 = 0u;
        obj = *(a1 + 40);
        v17 = [obj countByEnumeratingWithState:&v35 objects:v39 count:16];
        if (v17)
        {
          v18 = v17;
          v19 = *v36;
          v20 = kHDSQLiteQueryNoLimit;
          while (2)
          {
            for (i = 0; i != v18; i = i + 1)
            {
              if (*v36 != v19)
              {
                objc_enumerationMutation(obj);
              }

              v22 = [*(a1 + 56) _predicateForResourceWithIdentifier:*(*(&v35 + 1) + 8 * i)];
              v23 = [HDSQLitePredicate compoundPredicateWithPredicate:v11 otherPredicate:v22];
              v24 = [*(a1 + 56) _resourceObjectsInDatabase:v34 withPredicate:v23 limitCount:v20 highestPersistentID:0 assignCountry:v33 error:a3];
              if (!v24)
              {

                v26 = 0;
                goto LABEL_18;
              }

              v25 = v24;
              [*(a1 + 48) addObjectsFromArray:v24];
            }

            v18 = [obj countByEnumeratingWithState:&v35 objects:v39 count:16];
            if (v18)
            {
              continue;
            }

            break;
          }
        }

        v26 = 1;
LABEL_18:
        v8 = v30;
        v7 = v31;
        v16 = v33;
        v5 = v34;
      }

      else
      {
        v27 = [*(a1 + 56) _resourceObjectsInDatabase:v5 withPredicate:v11 limitCount:kHDSQLiteQueryNoLimit highestPersistentID:0 assignCountry:v16 error:a3];
        if (v27)
        {
          v28 = v27;
          [*(a1 + 48) addObjectsFromArray:v27];

          v26 = 1;
        }

        else
        {
          v26 = 0;
        }
      }
    }

    else
    {
      v26 = 0;
    }
  }

  else
  {
    v26 = 0;
  }

  return v26;
}

void sub_8F850(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va, a10);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_8F878(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(*(a1 + 48) + 8);
  v7 = *(v6 + 24);
  if (v7 <= a2)
  {
    v7 = a2;
  }

  *(v6 + 24) = v7;
  v8 = *(a1 + 56);
  v9 = *(a1 + 32);
  v18 = 0;
  v10 = [v8 _resourceObjectWithRow:a4 rowID:a2 assignCountry:v9 error:&v18];
  v11 = v18;
  if (v10)
  {
    [*(a1 + 40) addObject:v10];
  }

  else
  {
    _HKInitializeLogging();
    v12 = HKLogHealthRecords;
    if (os_log_type_enabled(HKLogHealthRecords, OS_LOG_TYPE_ERROR))
    {
      v14 = *(a1 + 56);
      v15 = v12;
      v16 = objc_opt_class();
      *buf = 138544130;
      v20 = v14;
      v21 = 2114;
      v22 = v16;
      v23 = 2048;
      v24 = a2;
      v25 = 2112;
      v26 = v11;
      v17 = v16;
      _os_log_error_impl(&dword_0, v15, OS_LOG_TYPE_ERROR, "%{public}@ Failed to create %{public}@ from data for entity %lld: %@", buf, 0x2Au);
    }
  }

  return 1;
}

NSString *__cdecl sub_8FDE0(id a1)
{
  v1 = HDSQLEntityPropertyPersistentID;
  v18 = HDOriginalFHIRResourceEntityPropertyRawContent;
  v17 = HDOriginalFHIRResourceEntityPropertyUniquenessChecksum;
  v16 = HDOriginalFHIRResourceEntityPropertyReceivedDate;
  v15 = HDOriginalFHIRResourceEntityPropertyReceivedDateTimeZone;
  v14 = HDOriginalFHIRResourceEntityPropertyFirstSeenDate;
  v13 = HDOriginalFHIRResourceEntityPropertyFirstSeenDateTimeZone;
  v2 = HDOriginalFHIRResourceEntityPropertyFHIRVersion;
  v3 = HDOriginalFHIRResourceEntityPropertySourceURL;
  v4 = HDOriginalFHIRResourceEntityPropertyExtractionHints;
  v5 = HDOriginalFHIRResourceEntityPropertyOriginMajorVersion;
  v6 = HDOriginalFHIRResourceEntityPropertyOriginMinorVersion;
  v7 = HDOriginalFHIRResourceEntityPropertyOriginPatchVersion;
  v8 = HDOriginalFHIRResourceEntityPropertyOriginBuild;
  v9 = HDOriginalFHIRResourceEntityPropertySyncProvenance;
  v10 = +[HDOriginalFHIRResourceEntity disambiguatedDatabaseTable];
  v11 = [NSString stringWithFormat:@"SELECT %@, %@, %@, %@, %@, %@, %@, %@, %@, %@, %@, %@, %@, %@, %@ FROM %@ WHERE %@ = ? AND %@ > ? AND %@ <= ? AND %@ = ?", v1, v18, v17, v16, v15, v14, v13, v2, v3, v4, v5, v6, v7, v8, v9, v10, HDOriginalFHIRResourceEntityPropertyAccountID, v1, v1, v9, 0];

  return v11;
}

uint64_t sub_8FF98(uint64_t a1, sqlite3_stmt *a2)
{
  sqlite3_bind_int64(a2, 1, [*(a1 + 32) persistentID]);
  sqlite3_bind_int64(a2, 2, *(a1 + 40));
  sqlite3_bind_int64(a2, 3, *(a1 + 48));

  return sqlite3_bind_int64(a2, 4, 0);
}

uint64_t sub_90010(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = HDSQLiteColumnWithNameAsInt64();
  v7 = *(a1 + 48);
  v8 = [*(a1 + 32) gateway];
  v9 = [v8 country];
  v25 = 0;
  v10 = [v7 _resourceObjectWithRow:a2 rowID:v6 assignCountry:v9 error:&v25];
  v11 = v25;

  if (!v10)
  {
    _HKInitializeLogging();
    v12 = HKLogHealthRecords;
    if (os_log_type_enabled(HKLogHealthRecords, OS_LOG_TYPE_ERROR))
    {
      v20 = *(a1 + 48);
      v21 = v12;
      v22 = objc_opt_class();
      *buf = 138544130;
      v27 = v20;
      v28 = 2114;
      v29 = v22;
      v30 = 2048;
      v31 = v6;
      v32 = 2112;
      v33 = v11;
      v23 = v22;
      _os_log_error_impl(&dword_0, v21, OS_LOG_TYPE_ERROR, "%{public}@ Failed to create %{public}@ from data for entity %lld: %@", buf, 0x2Au);
    }
  }

  v13 = HDSQLiteColumnWithNameAsData();
  buf[0] = 0;
  v14 = *(a1 + 40);
  v24 = v11;
  LOBYTE(v14) = (*(v14 + 16))(v14, v6, v10, [v13 length], buf, &v24);
  v15 = v24;

  if (v14)
  {
    v16 = buf[0] ^ 1;
  }

  else
  {
    v17 = v15;
    if (v17)
    {
      if (a3)
      {
        v18 = v17;
        *a3 = v17;
      }

      else
      {
        _HKLogDroppedError();
      }
    }

    v16 = 0;
  }

  return v16 & 1;
}

void sub_9043C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_90454(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

id sub_9046C(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = *(a1 + 48);
  v6 = [a2 databaseForEntityClass:v5];
  v7 = [v5 queryWithDatabase:v6 predicate:*(a1 + 32)];

  v8 = [v7 queryDescriptor];
  [v8 setLimitCount:1];

  v9 = [*(a1 + 48) _propertiesForResourceData];
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_90570;
  v12[3] = &unk_108A88;
  v13 = *(a1 + 40);
  v10 = [v7 enumeratePersistentIDsAndProperties:v9 error:a3 enumerationHandler:v12];

  return v10;
}

uint64_t sub_90570(uint64_t a1, uint64_t a2)
{
  v3 = [*(a1 + 40) _resourceDataWithROWID:a2 row:? error:?];
  v4 = *(*(a1 + 32) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;

  return 1;
}

void sub_907A0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id sub_907B8(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = *(a1 + 48);
  v6 = [a2 databaseForEntityClass:v5];
  v7 = [v5 queryWithDatabase:v6 predicate:*(a1 + 32)];

  v8 = [v7 queryDescriptor];
  [v8 setLimitCount:1];

  v9 = [*(a1 + 48) _propertiesForResourceData];
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_908BC;
  v12[3] = &unk_108A88;
  v13 = *(a1 + 40);
  v10 = [v7 enumeratePersistentIDsAndProperties:v9 error:a3 enumerationHandler:v12];

  return v10;
}

uint64_t sub_908BC(uint64_t a1, uint64_t a2)
{
  v3 = [*(a1 + 40) _resourceDataWithROWID:a2 row:? error:?];
  v4 = *(*(a1 + 32) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;

  return 1;
}

uint64_t sub_913F8(uint64_t a1, void *a2, void *a3)
{
  v94 = a2;
  v111 = [v94 databaseForEntityClass:*(a1 + 48)];
  if ([*(a1 + 48) _ensureForeignKeysAreDeferredInDatabase:? error:?])
  {
    v92 = a3;
    v5 = objc_alloc_init(NSMutableDictionary);
    v125 = objc_alloc_init(NSMutableDictionary);
    v136 = 0u;
    v137 = 0u;
    v138 = 0u;
    v139 = 0u;
    v6 = *(a1 + 32);
    v7 = [v6 countByEnumeratingWithState:&v136 objects:v148 count:16];
    if (v7)
    {
      v8 = v7;
      v128 = *v137;
      v93 = HDClinicalAccountEntityPropertyIdentifier;
      v109 = a1;
      v116 = v6;
      v97 = v5;
      do
      {
        v9 = 0;
        v124 = v8;
        do
        {
          if (*v137 != v128)
          {
            objc_enumerationMutation(v6);
          }

          v10 = *(*(&v136 + 1) + 8 * v9);
          v11 = *(a1 + 48);
          v135 = 0;
          v12 = [v11 _validateCodableFHIRResourceFromSync:v10 error:&v135];
          v13 = v135;
          if ((v12 & 1) == 0)
          {
            _HKInitializeLogging();
            v18 = HKLogHealthRecords;
            if (os_log_type_enabled(HKLogHealthRecords, OS_LOG_TYPE_DEFAULT))
            {
              v19 = *(a1 + 48);
              v20 = v18;
              [v13 localizedDescription];
              v22 = v21 = v13;
              *buf = 138543618;
              *&buf[4] = v19;
              *&buf[12] = 2114;
              *&buf[14] = v22;
              _os_log_impl(&dword_0, v20, OS_LOG_TYPE_DEFAULT, "%{public}@ dropping invalid codable FHIR resource: %{public}@", buf, 0x16u);

              v13 = v21;
            }

            goto LABEL_65;
          }

          v14 = [v10 gatewayExternalID];
          v15 = [v5 objectForKeyedSubscript:v14];
          v16 = [v125 objectForKeyedSubscript:v14];
          if (v15)
          {
            v17 = 0;
            if ([v15 isEqualToNumber:&off_110408])
            {
              goto LABEL_64;
            }
          }

          else
          {
            v134 = 0;
            v23 = [HDClinicalAccountEntity accountEntityForGatewayWithExternalID:v14 database:v111 error:&v134];
            v24 = v134;
            v17 = v24;
            if (!v23)
            {
              _HKInitializeLogging();
              v58 = HKLogHealthRecords;
              if (v17)
              {
                if (os_log_type_enabled(HKLogHealthRecords, OS_LOG_TYPE_ERROR))
                {
                  v59 = *(a1 + 48);
                  v60 = v58;
                  HKSensitiveLogItem();
                  v62 = v61 = v13;
                  *buf = 138543874;
                  *&buf[4] = v59;
                  *&buf[12] = 2112;
                  *&buf[14] = v62;
                  *&buf[22] = 2114;
                  v141 = v17;
                  _os_log_error_impl(&dword_0, v60, OS_LOG_TYPE_ERROR, "%{public}@ failed to retrieve account for gateway external ID %@: %{public}@", buf, 0x20u);

                  v13 = v61;
                }
              }

              else
              {
                if (os_log_type_enabled(HKLogHealthRecords, OS_LOG_TYPE_DEFAULT))
                {
                  v77 = *(a1 + 48);
                  v78 = v58;
                  HKSensitiveLogItem();
                  v80 = v79 = v13;
                  *buf = 138543618;
                  *&buf[4] = v77;
                  *&buf[12] = 2112;
                  *&buf[14] = v80;
                  _os_log_impl(&dword_0, v78, OS_LOG_TYPE_DEFAULT, "%{public}@ there is no account for gateway external ID %@, dropping resources", buf, 0x16u);

                  v13 = v79;
                }

                [v5 setObject:&off_110408 forKeyedSubscript:v14];
              }

              v15 = 0;
              goto LABEL_64;
            }

            v120 = v24;
            v126 = v13;
            v25 = +[NSNumber numberWithLongLong:](NSNumber, "numberWithLongLong:", [v23 persistentID]);
            v26 = v5;
            v27 = v5;
            v28 = v25;
            [v27 setObject:? forKeyedSubscript:?];
            v29 = v16;
            if (!v16)
            {
              v30 = [v23 UUIDForProperty:v93 database:v111];
              v29 = [v30 UUIDString];
              [v125 setObject:? forKeyedSubscript:?];
            }

            v13 = v126;
            v31 = v26;
            v16 = v29;
            a1 = v109;
            v15 = v28;
            v5 = v31;
            v17 = v120;
          }

          v127 = v13;
          if (v16)
          {
            v32 = [v10 accountIdentifier];
            v33 = [v16 isEqualToString:v32];

            if ((v33 & 1) == 0)
            {
              _HKInitializeLogging();
              v49 = HKLogHealthRecords;
              if (os_log_type_enabled(HKLogHealthRecords, OS_LOG_TYPE_DEFAULT))
              {
                v108 = v14;
                v50 = *(a1 + 48);
                v51 = v49;
                v119 = [v10 resourceType];
                v52 = [v10 resourceID];
                HKSensitiveLogItem();
                v54 = v53 = v16;
                [v10 accountIdentifier];
                v55 = v123 = v17;
                v56 = [v10 gatewayExternalID];
                *buf = 138544642;
                *&buf[4] = v50;
                v14 = v108;
                *&buf[12] = 2114;
                *&buf[14] = v119;
                *&buf[22] = 2114;
                v141 = v54;
                v142 = 2114;
                v143 = v53;
                v144 = 2114;
                v145 = v55;
                v146 = 2114;
                v147 = v56;
                v57 = v51;
                _os_log_impl(&dword_0, v51, OS_LOG_TYPE_DEFAULT, "%{public}@ will not insert received codable resource %{public}@/%{public}@ because expected account UUID %{public}@ does not match declared account UUID %{public}@ (gateway external ID: %{public}@)", buf, 0x3Eu);

                v17 = v123;
                v5 = v97;
                a1 = v109;

                v16 = v53;
              }

              v13 = v127;
LABEL_64:

              v8 = v124;
              v6 = v116;
LABEL_65:

              goto LABEL_66;
            }
          }

          v110 = v16;
          v34 = [v10 fhirVersion];
          v118 = [HKFHIRVersion versionFromVersionString:v34];

          v35 = [HKFHIRIdentifier alloc];
          v36 = [v10 resourceType];
          v37 = [v10 resourceID];
          v117 = [v35 initWithResourceType:v36 identifier:v37];

          if ([v10 hasOriginVersionMajor])
          {
            v106 = [v10 originVersionMajor];
          }

          else
          {
            v106 = &dword_8 + 3;
          }

          if ([v10 hasOriginVersionMinor])
          {
            v105 = [v10 originVersionMinor];
          }

          else
          {
            v105 = &dword_0 + 3;
          }

          if ([v10 hasOriginVersionPatch])
          {
            v104 = [v10 originVersionPatch];
          }

          else
          {
            v104 = 0;
          }

          v38 = [*(a1 + 40) syncIdentityManager];
          v39 = [v38 legacySyncIdentity];

          if ([v10 hasSyncIdentity])
          {
            v115 = v39;
            v121 = v17;
            v40 = [v10 syncIdentity];
            v133 = 0;
            v41 = [HDSyncIdentity syncIdentityWithCodable:v40 error:&v133];
            v42 = v133;

            if (!v41)
            {
              _HKInitializeLogging();
              v76 = HKLogHealthRecords;
              if (os_log_type_enabled(HKLogHealthRecords, OS_LOG_TYPE_FAULT))
              {
                *buf = 138543362;
                *&buf[4] = v42;
                _os_log_fault_impl(&dword_0, v76, OS_LOG_TYPE_FAULT, "HDFHIRResourceEntity SyncIdentity from received codable is nil %{public}@", buf, 0xCu);
              }

              v71 = 3;
              goto LABEL_71;
            }

            v43 = v5;
            v44 = [*(a1 + 40) syncIdentityManager];
            v132 = v42;
            v39 = [v44 concreteIdentityForIdentity:v41 shouldCreate:1 transaction:v94 error:&v132];
            v45 = v132;

            if (!v39)
            {
              _HKInitializeLogging();
              v81 = HKLogHealthRecords;
              v5 = v43;
              if (os_log_type_enabled(HKLogHealthRecords, OS_LOG_TYPE_FAULT))
              {
                *buf = 138543362;
                *&buf[4] = v45;
                _os_log_fault_impl(&dword_0, v81, OS_LOG_TYPE_FAULT, "HDFHIRResourceEntity ConcreteSyncIdentity from received codable is nil %{public}@", buf, 0xCu);
              }

              v115 = 0;
              v71 = 3;
              v42 = v45;
              a1 = v109;
LABEL_71:
              v70 = v121;
              goto LABEL_74;
            }

            a1 = v109;
            v17 = v121;
          }

          v101 = *(a1 + 48);
          v46 = [v15 longLongValue];
          v99 = *(a1 + 56);
          v100 = v46;
          v115 = v39;
          v103 = [v39 entity];
          v98 = [v103 persistentID];
          v102 = [v10 rawContent];
          v122 = [v10 safeUniquenessChecksum];
          v114 = [v10 sourceURL];
          [v10 receivedDate];
          v113 = [NSDate dateWithTimeIntervalSinceReferenceDate:?];
          v112 = [v10 receivedDateTimeZoneName];
          v47 = [v10 hasFirstSeenDate];
          v107 = v14;
          if (v47)
          {
            [v10 firstSeenDate];
            v48 = [NSDate dateWithTimeIntervalSinceReferenceDate:?];
            v95 = v48;
          }

          else
          {
            v48 = 0;
          }

          v63 = [v10 hasFirstSeenDate];
          v64 = v17;
          if (v63)
          {
            v65 = [v10 firstSeenDateTimeZoneName];
            v96 = v65;
          }

          else
          {
            v65 = 0;
          }

          v66 = [v10 extractionHints];
          v67 = [v10 originVersionBuild];
          v68 = v67;
          v131 = v64;
          v69 = @"15E216";
          if (v67)
          {
            v69 = v67;
          }

          *buf = v106;
          *&buf[8] = v105;
          *&buf[16] = v104;
          v42 = [v101 _insertResourceObjectWithIdentifier:v117 accountID:v100 syncProvenance:v99 syncIdentity:v98 rawContent:v102 uniquenessChecksum:v122 sourceURL:v114 FHIRVersion:v118 receivedDate:v113 receivedDateTimeZoneName:v112 firstSeenDate:v48 firstSeenDateOut:0 firstSeenDateTimeZoneName:v65 extractionHints:v66 originVersion:buf originBuild:v69 database:v111 error:&v131];
          v70 = v131;

          if (v63)
          {
          }

          v5 = v97;
          a1 = v109;
          if (v47)
          {
          }

          v14 = v107;
          if (v42)
          {
            v71 = 0;
            goto LABEL_75;
          }

          _HKInitializeLogging();
          v72 = HKLogHealthRecords;
          if (os_log_type_enabled(HKLogHealthRecords, OS_LOG_TYPE_INFO))
          {
            v73 = *(v109 + 48);
            *buf = 138543618;
            *&buf[4] = v73;
            *&buf[12] = 2114;
            *&buf[14] = v70;
            _os_log_impl(&dword_0, v72, OS_LOG_TYPE_INFO, "%{public}@ failed to insert codable FHIR resource: %{public}@", buf, 0x16u);
          }

          v74 = v70;
          v41 = v74;
          if (v74)
          {
            if (v92)
            {
              v75 = v74;
              *v92 = v41;
            }

            else
            {
              _HKLogDroppedError();
            }
          }

          v71 = 1;
          v70 = v41;
LABEL_74:

LABEL_75:
          if (v71)
          {
            v82 = v71 == 3;
            v6 = v116;
            v8 = v124;
            if (!v82)
            {
              v90 = 0;
              goto LABEL_84;
            }
          }

          else
          {
            v6 = v116;
            v8 = v124;
          }

LABEL_66:
          v9 = v9 + 1;
        }

        while (v8 != v9);
        v83 = [v6 countByEnumeratingWithState:&v136 objects:v148 count:16];
        v8 = v83;
      }

      while (v83);
    }

    v129[0] = _NSConcreteStackBlock;
    v129[1] = 3221225472;
    v129[2] = sub_92100;
    v129[3] = &unk_107A88;
    v130 = *(a1 + 40);
    v84 = objc_retainBlock(v129);
    [v111 onCommit:v84 orRollback:0];
    _HKInitializeLogging();
    v85 = HKLogHealthRecords;
    if (os_log_type_enabled(HKLogHealthRecords, OS_LOG_TYPE_DEFAULT))
    {
      v86 = *(a1 + 48);
      v87 = *(a1 + 64);
      v88 = v85;
      v89 = NSStringFromSelector(v87);
      *buf = 138543618;
      *&buf[4] = v86;
      *&buf[12] = 2114;
      *&buf[14] = v89;
      _os_log_impl(&dword_0, v88, OS_LOG_TYPE_DEFAULT, "%{public}@ %{public}@ successfully inserted CodableFHIRResources", buf, 0x16u);
    }

    v90 = 1;
    v6 = v130;
LABEL_84:
  }

  else
  {
    v90 = 0;
  }

  return v90;
}

void sub_92100(uint64_t a1)
{
  v2 = [*(a1 + 32) healthRecordsExtension];
  v1 = [v2 ingestionManager];
  [v1 didReceiveFHIRResourceSyncEntities];
}

id sub_9215C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = [[HDFHIRResourcesJournalEntry alloc] initWithCodableResources:*(a1 + 32) syncProvencance:*(a1 + 48)];
  v6 = [*(a1 + 40) database];
  v7 = [v6 addJournalEntry:v5 error:a3];

  return v7;
}

id sub_92350(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = [*(a1 + 32) daemon];
  v6 = [v5 behavior];
  v7 = [v6 localTimeZone];

  v16 = _NSConcreteStackBlock;
  v17 = 3221225472;
  v18 = sub_924B0;
  v19 = &unk_108AD8;
  v8 = *(a1 + 40);
  v20 = *(a1 + 48);
  v21 = *(a1 + 56);
  v22 = v7;
  v23 = *(a1 + 32);
  v9 = v7;
  v10 = [v8 hk_map:&v16];
  v11 = [HDFHIRResourcesJournalEntry alloc];
  v12 = [(HDFHIRResourcesJournalEntry *)v11 initWithCodableResources:v10 syncProvencance:0, v16, v17, v18, v19];
  v13 = [*(a1 + 32) database];
  v14 = [v13 addJournalEntry:v12 error:a3];

  return v14;
}

id sub_924B0(void *a1, void *a2)
{
  v2 = a1[4];
  v3 = a1[5];
  v4 = a1[6];
  v5 = a1[7];
  v6 = a2;
  v7 = [v5 daemon];
  v8 = [v7 behavior];
  v9 = [v6 codableFHIRResourceForNewlyIngestedResourceWithGatewayExternalID:v2 accountID:v3 receivedDateTimeZone:v4 behavior:v8];

  return v9;
}

uint64_t sub_9287C(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v6 = [v5 databaseForEntityClass:*(a1 + 80)];
  if ([*(a1 + 80) _ensureForeignKeysAreDeferredInDatabase:v6 error:a3])
  {
    v35 = [HDClinicalAccountEntity existingAccountEntityForGatewayWithExternalID:*(a1 + 32) database:v6 error:a3];
    if (v35)
    {
      v47 = 0u;
      v48 = 0u;
      v45 = 0u;
      v46 = 0u;
      obj = *(a1 + 40);
      v33 = [obj countByEnumeratingWithState:&v45 objects:v49 count:16];
      if (v33)
      {
        v34 = v6;
        v27 = v5;
        v31 = *v46;
        v32 = a3;
        v30 = a1;
        while (2)
        {
          v7 = 0;
          do
          {
            if (*v46 != v31)
            {
              objc_enumerationMutation(obj);
            }

            v36 = v7;
            v8 = *(*(&v45 + 1) + 8 * v7);
            v9 = [v8 extractionHints];
            v10 = *(a1 + 80);
            v42 = [v8 identifier];
            v11 = [v35 persistentID];
            v38 = *(a1 + 88);
            v39 = v11;
            v37 = *(a1 + 96);
            v12 = [v8 data];
            v13 = [v8 uniquenessChecksum];
            v41 = [v8 sourceURL];
            v14 = [v41 absoluteString];
            v15 = [v8 FHIRVersion];
            v16 = [v8 receivedDate];
            v17 = [*(a1 + 48) name];
            v44 = 0;
            v18 = *(a1 + 56);
            if (v18)
            {
              [v18 operatingSystemVersion];
              v18 = *(a1 + 56);
            }

            else
            {
              memset(v43, 0, sizeof(v43));
            }

            v19 = [v18 operatingSystemBuild];
            [v10 _insertResourceObjectWithIdentifier:v42 accountID:v39 syncProvenance:v38 syncIdentity:v37 rawContent:v12 uniquenessChecksum:v13 sourceURL:v14 FHIRVersion:v15 receivedDate:v16 receivedDateTimeZoneName:v17 firstSeenDate:0 firstSeenDateOut:&v44 firstSeenDateTimeZoneName:0 extractionHints:v9 & 0xFFFFFFFFFFFFFFFBLL originVersion:v43 originBuild:v19 database:v34 error:v32];
            v20 = v40 = v13;
            v21 = v44;

            if (!v20)
            {

              v25 = 0;
              goto LABEL_23;
            }

            a1 = v30;
            if (*(v30 + 64))
            {
              v22 = v21;
              if (!v21)
              {
                v28 = +[NSDate now];
                v22 = v28;
              }

              v23 = [v8 copyAsOriginalResourceObjectWithFirstSeenDate:v22 originInformation:*(v30 + 56) existingRowID:v20 ingestedOnLocalDevice:*(v30 + 88) == 0 country:*(v30 + 72)];
              if (!v21)
              {
              }

              v24 = [[HDFHIRResourceObjectPair alloc] initWithProvidedResource:v8 databaseResource:v23];
              [*(v30 + 64) addObject:v24];
            }

            v7 = v36 + 1;
          }

          while (v33 != (v36 + 1));
          v33 = [obj countByEnumeratingWithState:&v45 objects:v49 count:16];
          if (v33)
          {
            continue;
          }

          break;
        }

        v25 = 1;
LABEL_23:
        v5 = v27;
        v6 = v34;
      }

      else
      {
        v25 = 1;
      }
    }

    else
    {
      v25 = 0;
    }
  }

  else
  {
    v25 = 0;
  }

  return v25;
}

void sub_93798(_Unwind_Exception *a1)
{
  _Block_object_dispose(&STACK[0x280], 8);
  _Block_object_dispose(&STACK[0x2A0], 8);
  _Block_object_dispose(&STACK[0x2D0], 8);
  _Block_object_dispose(&STACK[0x300], 8);
  _Block_object_dispose((v1 - 256), 8);
  _Unwind_Resume(a1);
}

id sub_93808(uint64_t a1)
{
  v1 = HDSQLEntityPropertyPersistentID;
  v2 = HDOriginalFHIRResourceEntityPropertyFirstSeenDate;
  v3 = HDOriginalFHIRResourceEntityPropertyFirstSeenDateTimeZone;
  v4 = HDOriginalFHIRResourceEntityPropertyReceivedDate;
  v5 = HDOriginalFHIRResourceEntityPropertyExtractionHints;
  v6 = [*(a1 + 32) disambiguatedDatabaseTable];
  v7 = [NSString stringWithFormat:@"SELECT %@, %@, %@, %@, %@ FROM %@ WHERE %@ LIKE ? AND %@ LIKE ? AND %@ = ? AND %@ LIKE ? AND (%@ = ? OR %@ > ?)", v1, v2, v3, v4, v5, v6, HDOriginalFHIRResourceEntityPropertyType, HDOriginalFHIRResourceEntityPropertyResourceID, HDOriginalFHIRResourceEntityPropertyAccountID, HDOriginalFHIRResourceEntityPropertyFHIRVersion, HDOriginalFHIRResourceEntityPropertyUniquenessChecksum, v4, 0];

  return v7;
}

uint64_t sub_93920(void *a1, sqlite3_stmt *a2)
{
  v4 = a1[4];
  HDSQLiteBindFoundationValueToStatement();
  v5 = a1[5];
  HDSQLiteBindFoundationValueToStatement();
  sqlite3_bind_int64(a2, 3, a1[9]);
  v6 = a1[6];
  HDSQLiteBindFoundationValueToStatement();
  v7 = a1[7];
  HDSQLiteBindFoundationValueToStatement();
  v8 = a1[8];

  return HDSQLiteBindFoundationValueToStatement();
}

uint64_t sub_939B0(void *a1)
{
  v2 = HDSQLiteColumnWithNameAsNumber();
  v3 = *(a1[4] + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  v5 = HDSQLiteColumnWithNameAsDate();
  v6 = *(a1[5] + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;

  v8 = HDSQLiteColumnWithNameAsString();
  v9 = *(a1[6] + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v8;

  *(*(a1[7] + 8) + 24) = HDSQLiteColumnWithNameAsInt64();
  v11 = HDSQLiteColumnWithNameAsDate();
  v12 = *(a1[8] + 8);
  v13 = *(v12 + 40);
  *(v12 + 40) = v11;

  return 1;
}

id sub_93AA8(uint64_t a1)
{
  v1 = HDSQLEntityPropertyPersistentID;
  v2 = HDOriginalFHIRResourceEntityPropertyFirstSeenDate;
  v3 = HDOriginalFHIRResourceEntityPropertyFirstSeenDateTimeZone;
  v4 = [*(a1 + 32) disambiguatedDatabaseTable];
  v5 = [NSString stringWithFormat:@"SELECT %@, %@, %@ FROM %@ WHERE %@ LIKE ? AND %@ LIKE ? AND %@ = ?", v1, v2, v3, v4, HDOriginalFHIRResourceEntityPropertyType, HDOriginalFHIRResourceEntityPropertyResourceID, HDOriginalFHIRResourceEntityPropertyAccountID, 0];

  return v5;
}

uint64_t sub_93B7C(void *a1, sqlite3_stmt *a2)
{
  v4 = a1[4];
  HDSQLiteBindFoundationValueToStatement();
  v5 = a1[5];
  HDSQLiteBindFoundationValueToStatement();
  v6 = a1[6];

  return sqlite3_bind_int64(a2, 3, v6);
}

uint64_t sub_93BDC(void *a1)
{
  v2 = HDSQLiteColumnAsNumber();
  v3 = *(a1[4] + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  v5 = HDSQLiteColumnAsDate();
  v6 = *(a1[5] + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;

  v8 = HDSQLiteColumnAsString();
  v9 = *(a1[6] + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v8;

  return 1;
}

id sub_94528(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  [*(a1 + 32) addObject:v5];
  v6 = *(a1 + 40);
  v15 = 0;
  v7 = [v5 _updateOriginalFHIRResourceROWID:0 database:v6 error:&v15];
  v8 = v15;
  if ((v7 & 1) == 0)
  {
    _HKInitializeLogging();
    v9 = HKLogHealthRecords;
    if (os_log_type_enabled(HKLogHealthRecords, OS_LOG_TYPE_ERROR))
    {
      v14 = *(a1 + 48);
      v13 = *(a1 + 56);
      *buf = 138544130;
      v17 = v13;
      v18 = 2114;
      v19 = v5;
      v20 = 2114;
      v21 = v14;
      v22 = 2114;
      v23 = v8;
      _os_log_error_impl(&dword_0, v9, OS_LOG_TYPE_ERROR, "%{public}@ Failed to un-associate clinical record %{public}@ from the resource with originalFHIRResourceROWID %{public}@: %{public}@", buf, 0x2Au);
    }

    v10 = v8;
    if (v10)
    {
      if (a3)
      {
        v11 = v10;
        *a3 = v10;
      }

      else
      {
        _HKLogDroppedError();
      }
    }
  }

  return v7;
}

id sub_9467C(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  [*(a1 + 32) addObject:v5];
  v6 = *(a1 + 40);
  v15 = 0;
  v7 = [v5 _updateOriginalFHIRResourceROWID:0 database:v6 error:&v15];
  v8 = v15;
  if ((v7 & 1) == 0)
  {
    _HKInitializeLogging();
    v9 = HKLogHealthRecords;
    if (os_log_type_enabled(HKLogHealthRecords, OS_LOG_TYPE_ERROR))
    {
      v14 = *(a1 + 48);
      v13 = *(a1 + 56);
      *buf = 138544130;
      v17 = v13;
      v18 = 2114;
      v19 = v5;
      v20 = 2114;
      v21 = v14;
      v22 = 2114;
      v23 = v8;
      _os_log_error_impl(&dword_0, v9, OS_LOG_TYPE_ERROR, "%{public}@ Failed to un-associate medical record %{public}@ from the resource with originalFHIRResourceROWID %{public}@: %{public}@", buf, 0x2Au);
    }

    v10 = v8;
    if (v10)
    {
      if (a3)
      {
        v11 = v10;
        *a3 = v10;
      }

      else
      {
        _HKLogDroppedError();
      }
    }
  }

  return v7;
}

id sub_94AFC(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [v1 _propertiesForEntity];
  v3 = [v1 insertSQLForProperties:v2 shouldReplace:1];

  return v3;
}

uint64_t sub_94B5C(void *a1, sqlite3_stmt *a2)
{
  v4 = a1[4];
  HDSQLiteBindFoundationValueToStatement();
  sqlite3_bind_int64(a2, 2, a1[15]);
  sqlite3_bind_null(a2, 3);
  v5 = a1[5];
  HDSQLiteBindFoundationValueToStatement();
  sqlite3_bind_int64(a2, 5, a1[16]);
  v6 = a1[6];
  HDSQLiteBindFoundationValueToStatement();
  v7 = a1[7];
  HDSQLiteBindFoundationValueToStatement();
  v8 = a1[8];
  HDSQLiteBindFoundationValueToStatement();
  v9 = a1[9];
  HDSQLiteBindFoundationValueToStatement();
  v10 = a1[10];
  HDSQLiteBindFoundationValueToStatement();
  v11 = a1[11];
  HDSQLiteBindFoundationValueToStatement();
  v12 = a1[12];
  HDSQLiteBindFoundationValueToStatement();
  v13 = a1[13];
  HDSQLiteBindFoundationValueToStatement();
  sqlite3_bind_int64(a2, 14, a1[17]);
  sqlite3_bind_int64(a2, 15, a1[18]);
  sqlite3_bind_int64(a2, 16, a1[19]);
  sqlite3_bind_int64(a2, 17, a1[20]);
  v14 = a1[14];
  HDSQLiteBindFoundationValueToStatement();
  v15 = a1[21];

  return sqlite3_bind_int64(a2, 19, v15);
}

uint64_t sub_94E70(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v6 = [v5 databaseForEntityClass:*(a1 + 48)];
  if ([*(a1 + 48) _ensureForeignKeysAreDeferredInDatabase:v6 error:a3])
  {
    v21 = 0u;
    v22 = 0u;
    v19 = 0u;
    v20 = 0u;
    v7 = *(a1 + 32);
    v8 = [v7 countByEnumeratingWithState:&v19 objects:v23 count:16];
    if (v8)
    {
      v9 = v8;
      v18 = v6;
      v10 = *v20;
      while (2)
      {
        for (i = 0; i != v9; i = i + 1)
        {
          if (*v20 != v10)
          {
            objc_enumerationMutation(v7);
          }

          v12 = *(*(&v19 + 1) + 8 * i);
          v13 = *(a1 + 56);
          v14 = [v5 protectedDatabase];
          v15 = [v12 entityByAddingExtractionHints:v13 database:v14 error:a3];

          if (!v15)
          {
            v16 = 0;
            goto LABEL_13;
          }

          [*(a1 + 40) addObject:v15];
        }

        v9 = [v7 countByEnumeratingWithState:&v19 objects:v23 count:16];
        if (v9)
        {
          continue;
        }

        break;
      }

      v16 = 1;
LABEL_13:
      v6 = v18;
    }

    else
    {
      v16 = 1;
    }
  }

  else
  {
    v16 = 0;
  }

  return v16;
}

void sub_957C8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, char a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, char a53)
{
  _Block_object_dispose(&a47, 8);
  _Block_object_dispose(&a53, 8);
  _Block_object_dispose((v53 - 256), 8);
  _Block_object_dispose((v53 - 224), 8);
  _Block_object_dispose((v53 - 192), 8);
  _Unwind_Resume(a1);
}

void sub_95840(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = HDSQLiteColumnWithNameAsNumber();
  v6 = *(a1[5] + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;

  *(*(a1[6] + 8) + 24) = HDSQLiteColumnWithNameAsInt64();
  *(*(a1[7] + 8) + 24) = HDSQLiteColumnWithNameAsInt64();
  v8 = a1[4];
  v9 = *(a1[9] + 8);
  obj = *(v9 + 40);
  v10 = [v8 _codableWithRow:a3 gatewayExternalID:@"TEMPORARY_GATEWAY_EXTERNAL_ID_WHILE_REPLACING_RESOURCE" accountUUID:@"TEMPORARY_ACCOUNT_ID_WHILE_REPLACING_RESOURCE" error:&obj];
  objc_storeStrong((v9 + 40), obj);
  v11 = *(a1[8] + 8);
  v12 = *(v11 + 40);
  *(v11 + 40) = v10;
}

void sub_961EC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, char a31, uint64_t a32, uint64_t a33, uint64_t a34, char a35)
{
  _Block_object_dispose(&a31, 8);
  _Block_object_dispose(&a35, 8);
  _Block_object_dispose((v35 - 176), 8);
  _Unwind_Resume(a1);
}

id sub_96228(uint64_t a1, void *a2, uint64_t a3)
{
  v4 = a2;
  v5 = +[HDOriginalFHIRResourceEntity _propertiesForEntity];
  v6 = [*(a1 + 96) _syncObjectsGenerationPredicate];
  v7 = *(*(a1 + 72) + 8) + 24;
  v8 = *(a1 + 32);
  v9 = *(a1 + 40);
  v19[0] = _NSConcreteStackBlock;
  v19[1] = 3221225472;
  v19[2] = sub_963BC;
  v19[3] = &unk_108C68;
  v27 = *(a1 + 96);
  v20 = *(a1 + 48);
  v21 = *(a1 + 40);
  v22 = *(a1 + 56);
  v23 = v4;
  v10 = *(a1 + 120);
  v25 = *(a1 + 80);
  v28 = v10;
  v11 = *(a1 + 64);
  v12 = *(a1 + 88);
  v24 = v11;
  v26 = v12;
  v14 = *(a1 + 104);
  v13 = *(a1 + 112);
  v15 = v4;
  v16 = [HDOriginalFHIRResourceEntity enumerateEntitiesForSyncWithProperties:v5 predicate:v6 session:v8 syncAnchorRange:v14 limit:v13 lastSyncAnchor:0 healthDatabase:v7 error:v9 block:a3, v19];

  return v16;
}

BOOL sub_963BC(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, _BYTE *a7, uint64_t a8)
{
  v13 = a2;
  v14 = HDSQLiteColumnWithNameAsNumber();
  if (v14)
  {
    v35 = a5;
    v15 = [*(a1 + 32) objectForKeyedSubscript:v14];
    if (v15)
    {
LABEL_3:
      v16 = [v15 gatewayExternalID];
      v17 = [v15 accountIdentifier];
      v18 = [v13 _codableWithRow:a4 gatewayExternalID:v16 accountUUID:v17 error:a8];

      if (!v18)
      {
        v22 = 0;
LABEL_25:

        goto LABEL_26;
      }

      v19 = HDSQLiteColumnWithNameAsInt64();
      v20 = [*(a1 + 48) syncIdentityManager];
      v21 = [v20 identityForEntityID:v19 transaction:*(a1 + 56) error:a8];

      v22 = v21 != 0;
      if (!v21)
      {
LABEL_24:

        goto LABEL_25;
      }

      v23 = [v21 identity];
      v24 = [v23 codableSyncIdentity];
      [v18 setSyncIdentity:v24];

      *(*(*(a1 + 72) + 8) + 24) += [v18 encodedByteCount];
      if (*(*(*(a1 + 72) + 8) + 24) > *(a1 + 96))
      {
        v22 = 1;
        *a7 = 1;
        goto LABEL_24;
      }

      [*(a1 + 64) addObject:v18];
      *(*(*(a1 + 80) + 8) + 24) = v35;
LABEL_23:
      v22 = 1;
      goto LABEL_24;
    }

    v21 = [HDClinicalAccountEntity entityWithPersistentID:v14];
    v26 = *(a1 + 40);
    v36 = 0;
    v15 = [v21 codableInHealthDatabase:v26 error:&v36];
    v18 = v36;
    if (v15)
    {
      v27 = [v15 accountIdentifier];

      if (v27)
      {
        v28 = [v15 gatewayExternalID];

        if (v28)
        {
          [*(a1 + 32) setObject:v15 forKeyedSubscript:v14];

          goto LABEL_3;
        }

        _HKInitializeLogging();
        v29 = HKLogHealthRecords;
        if (!os_log_type_enabled(HKLogHealthRecords, OS_LOG_TYPE_FAULT))
        {
          goto LABEL_23;
        }

        v33 = *(a1 + 88);
        *buf = 138544130;
        v38 = v33;
        v39 = 2114;
        v40 = v14;
        v41 = 2048;
        v42 = v35;
        v43 = 2114;
        v44 = v18;
        v31 = "%{public}@ retrieved a codable account with a nil gateway external ID for account at row %{public}@. Skipping resource at anchor %lld: %{public}@";
      }

      else
      {
        _HKInitializeLogging();
        v29 = HKLogHealthRecords;
        if (!os_log_type_enabled(HKLogHealthRecords, OS_LOG_TYPE_FAULT))
        {
          goto LABEL_23;
        }

        v32 = *(a1 + 88);
        *buf = 138544130;
        v38 = v32;
        v39 = 2114;
        v40 = v14;
        v41 = 2048;
        v42 = v35;
        v43 = 2114;
        v44 = v18;
        v31 = "%{public}@ retrieved a codable account with a nil account ID for account at row %{public}@. Skipping resource at anchor %lld: %{public}@";
      }
    }

    else
    {
      _HKInitializeLogging();
      v29 = HKLogHealthRecords;
      if (!os_log_type_enabled(HKLogHealthRecords, OS_LOG_TYPE_FAULT))
      {
        goto LABEL_23;
      }

      v30 = *(a1 + 88);
      *buf = 138544130;
      v38 = v30;
      v39 = 2114;
      v40 = v14;
      v41 = 2048;
      v42 = v35;
      v43 = 2114;
      v44 = v18;
      v31 = "%{public}@ failed to retrieve codable account for account %{public}@. Skipping resource at anchor %lld: %{public}@";
    }

    _os_log_fault_impl(&dword_0, v29, OS_LOG_TYPE_FAULT, v31, buf, 0x2Au);
    goto LABEL_23;
  }

  _HKInitializeLogging();
  v25 = HKLogHealthRecords;
  if (os_log_type_enabled(HKLogHealthRecords, OS_LOG_TYPE_FAULT))
  {
    sub_A99A4(a1, a5, v25);
  }

  v22 = 1;
LABEL_26:

  return v22;
}

id sub_96AE0(uint64_t a1, void *a2)
{
  v3 = a2;
  objc_opt_class();
  v4 = HKSafeObject();

  v5 = 0;
  if (v4)
  {
    v6 = [*(a1 + 32) _shouldInsertReceivedCodableResource:v4];
  }

  else
  {
    _HKInitializeLogging();
    v7 = HKLogHealthRecords;
    if (os_log_type_enabled(HKLogHealthRecords, OS_LOG_TYPE_FAULT))
    {
      sub_A9A20(a1, v7);
    }

    v6 = 0;
  }

  return v6;
}

void sub_970AC(void *a1, uint64_t a2, os_log_t log, const char *a4, ...)
{
  va_start(va, a4);

  _os_log_fault_impl(a1, log, OS_LOG_TYPE_FAULT, a4, va, 0x16u);
}

void sub_97B28(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_97B40(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

BOOL sub_97B58(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v6 = *(*(a1 + 32) + 16);
  if (v6)
  {
    v7 = [v6 isHealthDataSubmissionAllowed];
  }

  else
  {
    v7 = HKImproveHealthAndActivityAnalyticsAllowed();
  }

  v8 = v7;
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 8));
  v10 = [WeakRetained analyticsManager];
  v11 = [v10 isImproveHealthRecordsDataSubmissionAllowedWithTransaction:v5];

  v25 = @"isImproveHealthAndActivityAllowed";
  v12 = [NSNumber numberWithBool:v8];
  v26 = v12;
  v13 = [NSDictionary dictionaryWithObjects:&v26 forKeys:&v25 count:1];

  v14 = [*(a1 + 32) _fetchAccountAnalyticsCollectsClinicalOptInData:v11 collectsImproveHealthAndActivityData:v8 error:a3];
  if (v14)
  {
    v15 = [v13 hk_dictionaryByAddingEntriesFromDictionary:v14];

    v16 = *(a1 + 32);
    v17 = objc_loadWeakRetained(v16 + 1);
    v18 = [v17 profile];
    v19 = [v16 _fetchDeviceContextAnalyticsWithProfile:v18 transaction:v5 error:a3];

    if (v19)
    {
      v20 = [v15 hk_dictionaryByAddingEntriesFromDictionary:v19];

      v21 = [*(a1 + 32) _fetchRecordAndUserDomainConceptAnalyticsHealthDataSubmissionAllowed:v8 collectsClinicalOptInData:v11 transaction:v5 error:a3];
      v22 = v21 != 0;
      if (v21)
      {
        v23 = [v20 hk_dictionaryByAddingEntriesFromDictionary:v21];

        objc_storeStrong((*(*(a1 + 40) + 8) + 40), v23);
        v20 = v23;
      }

      v15 = v20;
    }

    else
    {
      v22 = 0;
    }

    v13 = v15;
  }

  else
  {
    v22 = 0;
  }

  return v22;
}

BOOL sub_98A34(uint64_t a1, uint64_t a2)
{
  v3 = [*(a1 + 32) _recordCategoryAnalyticsWithDescription:*(a1 + 40) nowDate:*(a1 + 48) transaction:*(a1 + 56) error:a2];
  if (v3)
  {
    [*(a1 + 64) addEntriesFromDictionary:v3];
  }

  return v3 != 0;
}

BOOL sub_98CB4(uint64_t a1, uint64_t a2)
{
  v4 = [*(a1 + 32) integerValue];
  v5 = [*(a1 + 40) _countWithRecordCategoryAnalyticsDescription:*(a1 + 48) timeScope:v4 nowDate:*(a1 + 56) transaction:*(a1 + 64) error:a2];
  if (v5)
  {
    v6 = [*(a1 + 48) baseAnalyticKey];
    v7 = v6;
    if (v4 <= 2591999)
    {
      if (!v4)
      {
LABEL_14:
        [*(a1 + 72) setObject:v5 forKeyedSubscript:v7];

        goto LABEL_15;
      }

      if (v4 == 604800)
      {
        v8 = @"LastWeek";
        goto LABEL_13;
      }
    }

    else
    {
      switch(v4)
      {
        case 157680000:
          v8 = @"Last5Years";
          goto LABEL_13;
        case 31536000:
          v8 = @"LastYear";
          goto LABEL_13;
        case 2592000:
          v8 = @"LastMonth";
LABEL_13:
          v9 = [v6 stringByAppendingString:v8];

          v7 = v9;
          goto LABEL_14;
      }
    }

    v8 = &stru_1090E8;
    goto LABEL_13;
  }

LABEL_15:

  return v5 != 0;
}

void sub_998D4(uint64_t a1, int a2, void *a3)
{
  v5 = a3;
  if (a2)
  {
    v6 = *(*(a1 + 40) + 16);
  }

  else
  {
    _HKInitializeLogging();
    v7 = HKLogHealthRecords;
    if (os_log_type_enabled(HKLogHealthRecords, OS_LOG_TYPE_ERROR))
    {
      sub_A9BE4(a1, v7);
    }

    v6 = *(*(a1 + 40) + 16);
  }

  v6();
}

void sub_99D98(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  if (a2)
  {
    v6 = [a2 copy];
    v7 = *(a1 + 32);
    v8 = *(v7 + 88);
    *(v7 + 88) = v6;
  }

  else
  {
    _HKInitializeLogging();
    v9 = HKLogHealthRecords;
    if (os_log_type_enabled(HKLogHealthRecords, OS_LOG_TYPE_ERROR))
    {
      sub_A9DA8(a1, v9);
    }

    [*(a1 + 32) setOperationError:v5];
  }

  dispatch_semaphore_signal(*(a1 + 40));
}

uint64_t sub_99FA8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[5] = a7;
  v8[6] = a8;
  v8[3] = a5;
  v8[4] = a6;
  v8[2] = a4;
  return _swift_task_switch(sub_99FD0, 0, 0);
}

uint64_t sub_99FD0()
{
  *(v0 + 56) = *(*(v0 + 16) + OBJC_IVAR___HDClinicalIngestionAnalyticsAccumulator_accumulator);
  sub_A9F58();
  sub_9BAD8();
  v2 = sub_A9FD8();

  return _swift_task_switch(sub_9A068, v2, v1);
}

uint64_t sub_9A068()
{
  v1 = v0[7];
  v2 = v0[3];
  v3 = v0[4];
  sub_A9F18();

  return _swift_task_switch(sub_9A0D4, 0, 0);
}

uint64_t sub_9A0D4()
{
  v1 = v0[5];
  if (v1)
  {
    v2 = v0[6];
    v1();
  }

  v3 = v0[1];

  return v3();
}

uint64_t sub_9A140(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_9B394(0, &qword_1287E8, &type metadata accessor for TaskPriority, &type metadata accessor for Optional);
  v10 = (*(*(v9 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v12 = v27 - v11;
  sub_9B558(a3, v27 - v11);
  v13 = sub_A9FF8();
  v14 = *(v13 - 8);
  v15 = (*(v14 + 48))(v12, 1, v13);

  if (v15 == 1)
  {
    sub_9B5EC(v12);
  }

  else
  {
    sub_A9FE8();
    (*(v14 + 8))(v12, v13);
  }

  v17 = *(a5 + 16);
  v16 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v17)
  {
    swift_getObjectType();
    v18 = sub_A9FD8();
    v20 = v19;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v21 = sub_A9FC8() + 32;
      v22 = swift_allocObject();
      *(v22 + 16) = a4;
      *(v22 + 24) = a5;

      if (v20 | v18)
      {
        v28[0] = 0;
        v28[1] = 0;
        v23 = v28;
        v28[2] = v18;
        v28[3] = v20;
      }

      else
      {
        v23 = 0;
      }

      v27[1] = 7;
      v27[2] = v23;
      v27[3] = v21;
      v25 = swift_task_create();

      sub_9B5EC(a3);

      return v25;
    }
  }

  else
  {
    v18 = 0;
    v20 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_9B5EC(a3);
  v24 = swift_allocObject();
  *(v24 + 16) = a4;
  *(v24 + 24) = a5;
  if (v20 | v18)
  {
    v28[4] = 0;
    v28[5] = 0;
    v28[6] = v18;
    v28[7] = v20;
  }

  return swift_task_create();
}

uint64_t sub_9A5C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[4] = a6;
  v7[5] = a7;
  v7[2] = a4;
  v7[3] = a5;
  return _swift_task_switch(sub_9A5E8, 0, 0);
}

uint64_t sub_9A5E8()
{
  v1 = v0[2];
  v2 = v0[3];
  if (v1)
  {
    v3 = *(v2 + OBJC_IVAR___HDClinicalIngestionAnalyticsAccumulator_accumulator);
    v4 = *&v1[OBJC_IVAR___HDClinicalIngestionAnalyticsAccumulator_accumulator];
    v0[6] = v4;
    v5 = *(&async function pointer to dispatch thunk of IngestionAnalyticsAccumulator.consume(from:) + 1);
    v11 = (&async function pointer to dispatch thunk of IngestionAnalyticsAccumulator.consume(from:) + async function pointer to dispatch thunk of IngestionAnalyticsAccumulator.consume(from:));
    v6 = v1;

    v7 = swift_task_alloc();
    v0[7] = v7;
    *v7 = v0;
    v7[1] = sub_9A730;

    return v11(v4);
  }

  else
  {
    v0[8] = *(v2 + OBJC_IVAR___HDClinicalIngestionAnalyticsAccumulator_accumulator);
    sub_A9F58();
    sub_9BAD8();
    v10 = sub_A9FD8();

    return _swift_task_switch(sub_9A8E8, v10, v9);
  }
}

uint64_t sub_9A730()
{
  v1 = *(*v0 + 56);
  v2 = *(*v0 + 48);
  v4 = *v0;

  return _swift_task_switch(sub_9A848, 0, 0);
}

uint64_t sub_9A848()
{
  *(v0 + 64) = *(*(v0 + 24) + OBJC_IVAR___HDClinicalIngestionAnalyticsAccumulator_accumulator);
  sub_A9F58();
  sub_9BAD8();
  v2 = sub_A9FD8();

  return _swift_task_switch(sub_9A8E8, v2, v1);
}

uint64_t sub_9A8E8()
{
  v1 = v0[8];
  v0[9] = sub_A9F28();
  v0[10] = v2;

  return _swift_task_switch(sub_9A954, 0, 0);
}

uint64_t sub_9A954()
{
  v1 = *(v0 + 40);
  (*(v0 + 32))(*(v0 + 72), *(v0 + 80));

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_9AB44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v39 = a1;
  v41 = a3;
  v42 = a4;
  v40 = a2;
  sub_9B394(0, &qword_1287E8, &type metadata accessor for TaskPriority, &type metadata accessor for Optional);
  v5 = (*(*(v4 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  (__chkstk_darwin)();
  v7 = &v35 - v6;
  v37 = sub_A9F88();
  v8 = *(v37 - 8);
  v9 = *(v8 + 64);
  v10 = (__chkstk_darwin)();
  v36 = &v35 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = &v35 - v11;
  sub_9B394(0, &qword_1287F0, &type metadata accessor for AnalyticsReportingConfiguration.OptInStatus, &type metadata accessor for _ContiguousArrayStorage);
  v13 = sub_A9F78();
  v14 = *(v13 - 8);
  v15 = *(v14 + 72);
  v16 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_E4190;
  v18 = v17 + v16;
  v19 = *(v14 + 104);
  v19(v18, enum case for AnalyticsReportingConfiguration.OptInStatus.ihaAccepted(_:), v13);
  v19(v18 + v15, enum case for AnalyticsReportingConfiguration.OptInStatus.ihrAccepted(_:), v13);
  v20 = v12;
  v35 = v12;
  sub_A9F68();

  v21 = sub_A9FF8();
  (*(*(v21 - 8) + 56))(v7, 1, 1, v21);
  v23 = v36;
  v22 = v37;
  (*(v8 + 16))(v36, v20, v37);
  v24 = (*(v8 + 80) + 40) & ~*(v8 + 80);
  v25 = (v9 + v24 + 7) & 0xFFFFFFFFFFFFFFF8;
  v26 = (v25 + 23) & 0xFFFFFFFFFFFFFFF8;
  v27 = swift_allocObject();
  *(v27 + 2) = 0;
  *(v27 + 3) = 0;
  v28 = v38;
  *(v27 + 4) = v38;
  (*(v8 + 32))(&v27[v24], v23, v22);
  v29 = &v27[v25];
  v30 = v40;
  *v29 = v39;
  *(v29 + 1) = v30;
  v31 = &v27[v26];
  v32 = v42;
  *v31 = v41;
  *(v31 + 1) = v32;
  v33 = v28;

  sub_9A140(0, 0, v7, &unk_E41F0, v27);

  return (*(v8 + 8))(v35, v22);
}

uint64_t sub_9AEF8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[7] = a8;
  v8[8] = v10;
  v8[5] = a6;
  v8[6] = a7;
  v8[3] = a4;
  v8[4] = a5;
  return _swift_task_switch(sub_9AF28, 0, 0);
}

uint64_t sub_9AF28()
{
  *(v0 + 16) = 0;
  *(v0 + 72) = *(*(v0 + 24) + OBJC_IVAR___HDClinicalIngestionAnalyticsAccumulator_accumulator);
  v1 = swift_task_alloc();
  *(v0 + 80) = v1;
  *(v1 + 16) = *(v0 + 40);
  *(v1 + 32) = v0 + 16;
  sub_A9F58();
  sub_9BAD8();
  v3 = sub_A9FD8();

  return _swift_task_switch(sub_9AFE0, v3, v2);
}

uint64_t sub_9AFE0()
{
  v2 = v0[9];
  v1 = v0[10];
  v3 = v0[4];
  sub_A9F38();

  return _swift_task_switch(sub_9B06C, 0, 0);
}

uint64_t sub_9B06C()
{
  v1 = *(v0 + 64);
  (*(v0 + 56))(*(v0 + 16));
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_9B0D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t), uint64_t a6, void *a7)
{
  v12 = sub_A9F08();
  v13 = sub_A9FB8();
  v15 = v14;

  LOBYTE(v12) = a5(v13, v15, a2, a3, a4);

  if (v12)
  {
    if (__OFADD__(*a7, 1))
    {
      __break(1u);
    }

    else
    {
      ++*a7;
    }
  }

  return result;
}

uint64_t sub_9B260(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = sub_A9FA8();
  v8 = sub_A9FA8();
  sub_9BB30();
  isa = sub_A9F98().super.isa;
  v10 = (*(a6 + 16))(a6, v7, v8, isa);

  return v10;
}

id sub_9B30C()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, "dealloc");
}

void sub_9B394(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

uint64_t sub_9B3F8(uint64_t a1)
{
  v3 = v2;
  v4 = *(sub_A9F88() - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = (*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  v7 = (v6 + 23) & 0xFFFFFFFFFFFFFFF8;
  v8 = v1[2];
  v9 = v1[3];
  v10 = v1[4];
  v11 = (v1 + v6);
  v12 = *v11;
  v13 = v11[1];
  v15 = *(v1 + v7);
  v14 = *(v1 + v7 + 8);
  v16 = swift_task_alloc();
  *(v3 + 16) = v16;
  *v16 = v3;
  v16[1] = sub_9BD94;

  return sub_9AEF8(a1, v8, v9, v10, v1 + v5, v12, v13, v15);
}

uint64_t sub_9B558(uint64_t a1, uint64_t a2)
{
  sub_9B394(0, &qword_1287E8, &type metadata accessor for TaskPriority, &type metadata accessor for Optional);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_9B5EC(uint64_t a1)
{
  sub_9B394(0, &qword_1287E8, &type metadata accessor for TaskPriority, &type metadata accessor for Optional);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_9B678(uint64_t a1, int *a2)
{
  v7 = (a2 + *a2);
  v4 = a2[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_9B770;

  return v7(a1);
}

uint64_t sub_9B770()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_9B868(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_9BD94;

  return sub_9B678(a1, v5);
}

uint64_t sub_9B920(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_9B9D8;

  return sub_9B678(a1, v5);
}

uint64_t sub_9B9D8()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

unint64_t sub_9BAD8()
{
  result = qword_1287F8;
  if (!qword_1287F8)
  {
    sub_A9F58();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1287F8);
  }

  return result;
}

unint64_t sub_9BB30()
{
  result = qword_128800;
  if (!qword_128800)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_128800);
  }

  return result;
}

void sub_9BB7C()
{
  v1 = *(v0 + 16);
  v2 = sub_A9FA8();
  (*(v1 + 16))(v1, v2);
}

uint64_t sub_9BBD4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v9 = v1[6];
  v8 = v1[7];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_9BD94;

  return sub_9A5C4(a1, v4, v5, v6, v7, v9, v8);
}

uint64_t sub_9BCA8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = v1[7];
  v10 = v1[8];
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_9B9D8;

  return sub_99FA8(a1, v4, v5, v6, v7, v8, v9, v10);
}

void sub_9BD98(uint64_t a1, NSObject *a2)
{
  v2 = 138543362;
  v3 = a1;
  _os_log_fault_impl(&dword_0, a2, OS_LOG_TYPE_FAULT, "HDSignedClinicalDataIssuerSyncEntity expects HDCodableSignedClinicalDataIssuer, error: %{public}@", &v2, 0xCu);
}

void sub_9BE10(uint64_t a1, uint64_t a2, os_log_t log)
{
  v3 = 138543618;
  v4 = a1;
  v5 = 2114;
  v6 = a2;
  _os_log_error_impl(&dword_0, log, OS_LOG_TYPE_ERROR, "%{public}@ will not perform ingestion because account preparation failed: %{public}@", &v3, 0x16u);
}

void sub_9BEDC(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = [a3 identifier];
  sub_8C8C();
  sub_8CA4(&dword_0, v6, v7, "%{public}@ Account %{public}@: fileImportOperation is complete", v8, v9, v10, v11, v12);
}

void sub_9BF7C(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = [a3 account];
  v6 = [v5 identifier];
  sub_8C8C();
  sub_8CA4(&dword_0, v7, v8, "%{public}@ Account %{public}@: retrieving existing Patient resource", v9, v10, v11, v12, v13);
}

void sub_9C02C(uint64_t a1, NSObject *a2)
{
  v2 = 138543362;
  v3 = a1;
  _os_log_error_impl(&dword_0, a2, OS_LOG_TYPE_ERROR, "%{public}@ ending never finish ingestion task", &v2, 0xCu);
}

void sub_9C0A4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = +[NSAssertionHandler currentHandler];
  [v6 handleFailureInMethod:a1 object:a2 file:@"HDClinicalIngestionTask.m" lineNumber:906 description:{@"Gateway feature handler classes must be subclasses of HDClinicalIngestionGatewayFeatureOperation, but %@ is not", a3}];
}

void sub_9C118(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = +[NSAssertionHandler currentHandler];
  [v6 handleFailureInMethod:a1 object:a2 file:@"HDClinicalIngestionTask.m" lineNumber:1028 description:{@"%@ There is no account outcome info object to track info for account %@", a2, a3}];
}

void sub_9C19C(uint64_t a1, uint64_t a2)
{
  v4 = +[NSAssertionHandler currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"HDClinicalIngestionTask.m" lineNumber:1043 description:{@"Invalid parameter not satisfying: %@", @"[accumulationError.domain isEqualToString:HRSAccumulatedIngestionErrorDomain]"}];
}

void sub_9C218()
{
  sub_B068();
  sub_B05C();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_9C288()
{
  sub_B068();
  sub_B05C();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_9C2F8()
{
  sub_B068();
  sub_B05C();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_9C368()
{
  sub_B068();
  sub_B05C();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_9C3D8(uint64_t a1, uint64_t a2, NSObject *a3)
{
  *v3 = 134218242;
  *&v3[4] = a2;
  *&v3[12] = 2112;
  *&v3[14] = a1;
  sub_B074(&dword_0, a2, a3, "Failed to register for opt-in study: received status code %ld, response: %@", *v3, *&v3[8], *&v3[16]);
}

void sub_9C510()
{
  sub_B068();
  sub_B05C();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_9C580()
{
  sub_B068();
  sub_B05C();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_9C664(uint64_t a1, uint64_t a2)
{
  v4 = +[NSAssertionHandler currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"HDClinicalOptInStudy.m" lineNumber:559 description:{@"Invalid parameter not satisfying: %@", @"profile != nil"}];
}

void sub_9C6E0(uint64_t a1, void *a2)
{
  v2 = *(a1 + 40);
  v3 = a2;
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = 138543362;
  v7 = v5;
  _os_log_error_impl(&dword_0, v3, OS_LOG_TYPE_ERROR, "%{public}@ got no kid or added date for one entry while iterating over all keys, which is surprising", &v6, 0xCu);
}

void sub_9C78C(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = a1;
  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  v7 = 138543618;
  v8 = v6;
  v9 = 2114;
  v10 = a3;
  _os_log_error_impl(&dword_0, v4, OS_LOG_TYPE_ERROR, "%{public}@ there is no public key entry with kid %{public}@", &v7, 0x16u);
}

void sub_9C850(uint64_t a1)
{
  v1 = *(a1 + 32);
  sub_DCB0();
  sub_B074(&dword_0, v2, v3, "%{public}@: Error notifying health record store about health records supported change with error: %{public}@");
}

void sub_9C8BC(uint64_t a1, NSObject *a2)
{
  v2 = 138543362;
  v3 = a1;
  _os_log_error_impl(&dword_0, a2, OS_LOG_TYPE_ERROR, "%{public}@: received unknown account state change type", &v2, 0xCu);
}

void sub_9C934(uint64_t a1, NSObject *a2)
{
  v2 = 138543362;
  v3 = a1;
}

void sub_9C9AC(uint64_t a1)
{
  v1 = *(a1 + 32);
  sub_DCB0();
  sub_B074(&dword_0, v2, v3, "%{public}@: unable to retrieve HKHealthRecordsStore client, error: %{public}@");
}

void sub_9CA18(void *a1, void *a2, uint64_t a3)
{
  v5 = a1;
  v6 = [a2 debugDescription];
  v7 = 138543618;
  v8 = v6;
  v9 = 2114;
  v10 = a3;
  _os_log_error_impl(&dword_0, v5, OS_LOG_TYPE_ERROR, "%{public}@ failed to create a PKCE challenge from verifier, will not use PKCE. Error: %{public}@", &v7, 0x16u);
}

void sub_9CAD8(void *a1, void *a2)
{
  v3 = a1;
  v4 = [a2 debugDescription];
  sub_1160C(&dword_0, v5, v6, "%{public}@ failed to determine current IHR opt-in version from disk", v7, v8, v9, v10, 2u);
}

void sub_9CB70(void *a1, void *a2, uint64_t a3)
{
  v5 = a1;
  v6 = [a2 debugDescription];
  v7 = 138543618;
  v8 = v6;
  v9 = 2114;
  v10 = a3;
  _os_log_error_impl(&dword_0, v5, OS_LOG_TYPE_ERROR, "%{public}@ failed to determine whether we have gateway backed account: %{public}@", &v7, 0x16u);
}

void sub_9CC30(uint64_t a1, uint64_t a2, os_log_t log)
{
  v3 = *(a1 + 32);
  v4 = 138543618;
  v5 = v3;
  v6 = 2114;
  v7 = a2;
  _os_log_error_impl(&dword_0, log, OS_LOG_TYPE_ERROR, "%{public}@ error: %{public}@", &v4, 0x16u);
}

void sub_9CCBC(uint64_t a1, void *a2)
{
  v2 = *(a1 + 40);
  v3 = a2;
  v4 = [v2 debugDescription];
  sub_1160C(&dword_0, v5, v6, "%{public}@: cannot read the content analytics start anchor", v7, v8, v9, v10, 2u);
}

void sub_9CD54(void **a1, void *a2, void *a3)
{
  v4 = *a1;
  v5 = a2;
  v6 = [v4 debugDescription];
  v7 = HKSensitiveLogItem();
  v8 = [a3 sourceRevision];
  v9 = HKSensitiveLogItem();
  v10 = 138412802;
  v11 = v6;
  v12 = 2112;
  v13 = v7;
  v14 = 2112;
  v15 = v9;
  _os_log_error_impl(&dword_0, v5, OS_LOG_TYPE_ERROR, "%@ unable to determine the account identifier for %@ from %@", &v10, 0x20u);
}

void sub_9CE5C(uint8_t *a1, void *a2, uint64_t a3, void *a4)
{
  v6 = a2;
  v7 = HKSensitiveLogItem();
  *a1 = 138412290;
  *a4 = v7;
  _os_log_error_impl(&dword_0, v6, OS_LOG_TYPE_ERROR, "Service returned search result without title, skipping: %@", a1, 0xCu);
}

void sub_9CFB8(uint64_t a1, NSObject *a2)
{
  v2 = 138543362;
  v3 = a1;
  _os_log_error_impl(&dword_0, a2, OS_LOG_TYPE_ERROR, "%{public}@ gateway parsing: failed to find the requested gateway within a batch result.", &v2, 0xCu);
}

void sub_9D030(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = a1;
  objc_opt_class();
  sub_13D18();
  v8 = a3;
  v6 = v5;
  _os_log_error_impl(&dword_0, v4, OS_LOG_TYPE_ERROR, "%{public}@ gateways from fetched JSON: failed to obtain results from provider response: %{public}@", v7, 0x16u);
}

void sub_9D0E4(void *a1, void *a2)
{
  v3 = a1;
  v4 = [a2 debugDescription];
  sub_168D8(&dword_0, v5, v6, "%{public}@ extraction beginning", v7, v8, v9, v10, 2u);
}

void sub_9D17C(void *a1, void *a2)
{
  v3 = a1;
  v4 = [a2 debugDescription];
  sub_168D8(&dword_0, v5, v6, "%{public}@ no more resources to extract", v7, v8, v9, v10, 2u);
}

void sub_9D214(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v3 debugDescription];
  +[NSDate timeIntervalSinceReferenceDate];
  v13 = v6 - *(a1 + 88);
  sub_8CA4(&dword_0, v7, v8, "%{public}@ extraction took %.3f seconds", v9, v10, v11, v12, 2u);
}

void sub_9D2D8(void *a1, void *a2, void *a3)
{
  v5 = a1;
  v6 = [a2 debugDescription];
  v7 = [a3 debugDescription];
  v8 = HKSensitiveLogItem();
  v9 = 138543618;
  v10 = v6;
  v11 = 2114;
  v12 = v8;
  _os_log_debug_impl(&dword_0, v5, OS_LOG_TYPE_DEBUG, "%{public}@ is calling didCompleteExtractionWithRequest with %{public}@", &v9, 0x16u);
}

void sub_9D3BC(void *a1, void *a2, void *a3)
{
  v5 = a1;
  v6 = [a2 originalFHIRResource];
  v7 = HKSensitiveLogItem();
  v8 = [a3 hk_map:&stru_106268];
  v9 = [v8 componentsJoinedByString:@" "];;
  v10 = 138543618;
  v11 = v7;
  v12 = 2114;
  v13 = v9;
  _os_log_fault_impl(&dword_0, v5, OS_LOG_TYPE_FAULT, "HDClinicalIngestionExtractionOperation._processFHIRResourcesInExtractionResult failed to re-associate provided to processed FHIR resource. item resource: %{public}@, pairs provided: %{public}@", &v10, 0x16u);
}

void sub_9D4C8(void *a1, void *a2)
{
  v3 = a1;
  v4 = [a2 debugDescription];
  sub_8CA4(&dword_0, v5, v6, "%{public}@ extraction produced %@ medical downloadable attachments that were saved", v7, v8, v9, v10, 2u);
}

void sub_9D58C(uint64_t a1, uint64_t a2)
{
  v4 = +[NSAssertionHandler currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"HDSignedClinicalDataRegistryMigrator.m" lineNumber:22 description:{@"Invalid parameter not satisfying: %@", @"from < to"}];
}

void sub_9D608(void *a1)
{
  v1 = a1;
  v2 = objc_opt_class();
  v3 = NSStringFromClass(v2);
  sub_1728C();
  sub_172A4(&dword_0, v4, v5, "%{public}@ Migration from version 0 to 1 failed with error: %{public}@", v6, v7, v8, v9, v10);
}

void sub_9D6AC(void *a1)
{
  v1 = a1;
  v2 = objc_opt_class();
  v3 = NSStringFromClass(v2);
  sub_1728C();
  sub_172A4(&dword_0, v4, v5, "%{public}@ Migration from version 1 to 2 failed with error: %{public}@", v6, v7, v8, v9, v10);
}

void sub_9D750(void *a1)
{
  v1 = a1;
  v2 = objc_opt_class();
  v3 = NSStringFromClass(v2);
  sub_1728C();
  sub_172A4(&dword_0, v4, v5, "%{public}@ Migration succeeded but failed to set user version, ignoring. Error: %{public}@", v6, v7, v8, v9, v10);
}

void sub_9D7F4(uint64_t a1, uint64_t a2)
{
  v4 = +[NSAssertionHandler currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"HDRefreshAccountInformationTask.m" lineNumber:31 description:{@"Invalid parameter not satisfying: %@", @"accountIdentifier"}];
}

void sub_9D870(void *a1, uint64_t a2, void *a3)
{
  v5 = a1;
  v6 = [sub_17CB4() logPrefix];
  v7 = [a3 error];
  sub_8C8C();
  sub_172A4(&dword_0, v8, v9, "%{public}@: refresh gateway operation failed: %{public}@.", v10, v11, v12, v13, v14);
}

void sub_9D920(void *a1, void *a2)
{
  v3 = a1;
  v4 = [a2 logPrefix];
  v5 = 138543362;
  v6 = v4;
  _os_log_error_impl(&dword_0, v3, OS_LOG_TYPE_ERROR, "%{public}@: running on a profile without provider service manager, cannot update gateway", &v5, 0xCu);
}

void sub_9D9C8(void *a1)
{
  v2 = a1;
  v3 = [sub_17CB4() logPrefix];
  sub_1728C();
  sub_172A4(&dword_0, v4, v5, "%{public}@: failed to generate account connection information: %{public}@.", v6, v7, v8, v9, v10);
}

void sub_9DA64(void *a1)
{
  v2 = a1;
  v3 = [sub_17CB4() logPrefix];
  sub_1728C();
  sub_172A4(&dword_0, v4, v5, "%{public}@: failed to retrive fetch-eligible account: %{public}@.", v6, v7, v8, v9, v10);
}

void sub_9DB00(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);
  v6 = a2;
  v7 = [sub_17CB4() logPrefix];
  v8 = [a3 error];
  sub_8C8C();
  sub_172A4(&dword_0, v9, v10, "%{public}@: failed to fetch fresh credential: %{public}@.", v11, v12, v13, v14, v15);
}

void sub_9DC80(uint64_t a1, uint64_t a2)
{
  v4 = +[NSAssertionHandler currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"HDMedicalRecordEntity+HealthRecordsPlugin.m" lineNumber:247 description:@"Medical records without the original FHIR resource ROWID in their metadata cannot be inserted"];
}

void sub_9DCF8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = +[NSAssertionHandler currentHandler];
  [v6 handleFailureInMethod:a1 object:a2 file:@"HDMedicalRecordEntity+HealthRecordsPlugin.m" lineNumber:428 description:{@"Unmapped data type code %@", a3}];
}

void sub_9DD6C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = +[NSAssertionHandler currentHandler];
  [v6 handleFailureInMethod:a1 object:a2 file:@"HDMedicalRecordEntity+HealthRecordsPlugin.m" lineNumber:431 description:{@"Should not have an empty row ID array for data type code %@", a3}];
}

void sub_9DDE0(void *a1)
{
  v1 = a1;
  v3 = 138543362;
  v4 = objc_opt_class();
  v2 = v4;
  _os_log_error_impl(&dword_0, v1, OS_LOG_TYPE_ERROR, "%{public}@ journal entries are no longer supported", &v3, 0xCu);
}

void sub_9DE88(uint64_t a1, uint64_t a2)
{
  v4 = +[NSAssertionHandler currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"HDOriginalFHIRResourceLastSeenEntity+HealthRecordsPlugin.m" lineNumber:89 description:{@"Invalid parameter not satisfying: %@", @"notSeenSince"}];
}

void sub_9DF04(uint64_t a1, uint64_t a2)
{
  v4 = +[NSAssertionHandler currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"HDOriginalFHIRResourceLastSeenEntity+HealthRecordsPlugin.m" lineNumber:141 description:{@"Invalid parameter not satisfying: %@", @"resourcePersistentID != nil"}];
}

void sub_9DF80(uint64_t a1, void *a2, uint8_t *buf, os_log_t log)
{
  *buf = 138543618;
  *(buf + 4) = a1;
  *(buf + 6) = 2112;
  *(buf + 14) = a2;
  _os_log_error_impl(&dword_0, log, OS_LOG_TYPE_ERROR, "%{public}@ Failed to query existing last seen entry, will try to insert. Error: %@", buf, 0x16u);
}

void sub_9DFE8(uint64_t a1, uint64_t a2)
{
  v4 = +[NSAssertionHandler currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"HDOriginalFHIRResourceLastSeenEntity+HealthRecordsPlugin.m" lineNumber:201 description:{@"Invalid parameter not satisfying: %@", @"resourcePersistentID != nil"}];
}

void sub_9E064(uint64_t a1, NSObject *a2)
{
  v2 = 138543362;
  v3 = a1;
  _os_log_fault_impl(&dword_0, a2, OS_LOG_TYPE_FAULT, "HDSignedClinicalDataIssuerTitleUpdateJournalEntry failed to apply journal entry: %{public}@", &v2, 0xCu);
}

void sub_9E0DC(void *a1)
{
  v1 = a1;
  v2 = objc_opt_class();
  v3 = NSStringFromClass(v2);
  sub_1728C();
  sub_8CA4(&dword_0, v4, v5, "%{public}@ remote_updateClinicalSharingStatusForAccountWithIdentifier: will update clinical sharing status on account %{public}@", v6, v7, v8, v9, v10);
}

void sub_9E180(void *a1)
{
  v1 = a1;
  v2 = objc_opt_class();
  v3 = NSStringFromClass(v2);
  sub_1728C();
  sub_8CA4(&dword_0, v4, v5, "%{public}@ remote_updateClinicalSharingStatusForAccountWithIdentifier: did update clinical sharing status on account %{public}@", v6, v7, v8, v9, v10);
}

void sub_9E224(uint64_t a1, uint64_t a2, os_log_t log)
{
  v3 = *(a1 + 32);
  v4 = 138543618;
  v5 = v3;
  v6 = 2114;
  v7 = a2;
  _os_log_error_impl(&dword_0, log, OS_LOG_TYPE_ERROR, "%{public}@: Error notifying health record store about account state changes with error: %{public}@", &v4, 0x16u);
}

void sub_9E2D4(uint64_t a1, uint64_t a2, os_log_t log)
{
  v3 = 138543618;
  v4 = a1;
  v5 = 2114;
  v6 = a2;
  _os_log_error_impl(&dword_0, log, OS_LOG_TYPE_ERROR, "Failed to look up medical record for clinical record with UUID %{public}@: %{public}@", &v3, 0x16u);
}

void sub_9E35C(uint64_t a1, NSObject *a2)
{
  v2 = 138543362;
  v3 = a1;
  _os_log_error_impl(&dword_0, a2, OS_LOG_TYPE_ERROR, "Failed to get private source bundle identifier for public identifier: %{public}@", &v2, 0xCu);
}

void sub_9E3D4(uint64_t a1, uint64_t a2)
{
  v4 = +[NSAssertionHandler currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"HDClinicalIngestionTaskResourceSchemaOperation.m" lineNumber:73 description:{@"Invalid parameter not satisfying: %@", @"url"}];
}

void sub_9E450(uint64_t a1, uint64_t a2)
{
  v4 = +[NSAssertionHandler currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"HDClinicalIngestionTaskResourceSchemaOperation.m" lineNumber:85 description:{@"Invalid parameter not satisfying: %@", @"operation"}];
}

void sub_9E4CC(uint64_t a1, uint64_t a2)
{
  v4 = +[NSAssertionHandler currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"HDClinicalBiomeSignalsManager.m" lineNumber:20 description:{@"Invalid parameter not satisfying: %@", @"eventIdentifier.length > 0"}];
}

void sub_9E548(uint64_t a1, uint64_t a2)
{
  v4 = +[NSAssertionHandler currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"HDFHIRResourceExtractionBatch.m" lineNumber:32 description:{@"Invalid parameter not satisfying: %@", @"document"}];
}

void sub_9E5C4(uint64_t a1, uint64_t a2)
{
  v4 = +[NSAssertionHandler currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"HDFHIRResourceExtractionBatch.m" lineNumber:33 description:{@"Invalid parameter not satisfying: %@", @"rulesVersion != nil"}];
}

void sub_9E640()
{
  sub_1F600();
  sub_1F618(v2, v3);
  [sub_1F60C() identifier];
  objc_claimAutoreleasedReturnValue();
  sub_1F630();
  sub_1F5BC();
  sub_1F5E0(&dword_0, v4, v5, "%{public}@ Account %{public}@: starting %lu schema operations", v6, v7, v8, v9, v10);
}

void sub_9E6D4()
{
  sub_1F600();
  sub_1F618(v2, v3);
  [sub_1F60C() identifier];
  objc_claimAutoreleasedReturnValue();
  sub_1F630();
  sub_1F5BC();
  sub_1F5E0(&dword_0, v4, v5, "%{public}@ Account %{public}@: finished running %lu schema operations", v6, v7, v8, v9, v10);
}

void sub_9E768(uint64_t a1, uint64_t a2)
{
  v4 = +[NSAssertionHandler currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"HDClinicalIngestionTaskAccountContext.m" lineNumber:93 description:@"Should have waited until all operations are finished"];
}

void sub_9E7CC()
{
  sub_1F600();
  sub_1F618(v2, v3);
  [sub_1F60C() identifier];
  objc_claimAutoreleasedReturnValue();
  sub_1F630();
  sub_1F5BC();
  sub_1F5E0(&dword_0, v4, v5, "%{public}@ Account %{public}@: starting %lu feature operations", v6, v7, v8, v9, v10);
}

void sub_9E860()
{
  sub_1F600();
  sub_1F618(v2, v3);
  [sub_1F60C() identifier];
  objc_claimAutoreleasedReturnValue();
  sub_1F630();
  sub_1F5BC();
  sub_1F5E0(&dword_0, v4, v5, "%{public}@ Account %{public}@: finished running %lu feature operations", v6, v7, v8, v9, v10);
}

void sub_9E8F4(uint64_t a1, uint64_t a2)
{
  v4 = +[NSAssertionHandler currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"HDClinicalIngestionTaskAccountContext.m" lineNumber:136 description:{@"Invalid parameter not satisfying: %@", @"error"}];
}

void sub_9E970(uint64_t a1, uint64_t a2)
{
  v4 = +[NSAssertionHandler currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"HDSignedClinicalDataIssuerEntity+HealthRecordsPlugin.m" lineNumber:153 description:{@"Invalid parameter not satisfying: %@", @"row != NULL"}];
}

void sub_9E9EC(uint64_t a1, uint64_t a2)
{
  v4 = +[NSAssertionHandler currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"HDSignedClinicalDataIssuerEntity+HealthRecordsPlugin.m" lineNumber:164 description:{@"Invalid parameter not satisfying: %@", @"row != NULL"}];
}

void sub_9EA68(uint64_t a1, NSObject *a2)
{
  v2 = 138543362;
  v3 = a1;
  _os_log_fault_impl(&dword_0, a2, OS_LOG_TYPE_FAULT, "HDSignedClinicalDataIssuer ConcreteSyncIdentity from received codable is nil %{public}@", &v2, 0xCu);
}

void sub_9EAE0(uint64_t a1, NSObject *a2)
{
  v2 = 138543362;
  v3 = a1;
  _os_log_fault_impl(&dword_0, a2, OS_LOG_TYPE_FAULT, "HDSignedClinicalDataIssuer SyncIdentity from received codable is nil %{public}@", &v2, 0xCu);
}

void sub_9EB58(uint64_t a1, void *a2)
{
  v2 = *(a1 + 56);
  v3 = a2;
  v4 = HKSensitiveLogItem();
  v5 = 138543618;
  v6 = v2;
  v7 = 2114;
  v8 = v4;
  _os_log_error_impl(&dword_0, v3, OS_LOG_TYPE_ERROR, "%{public}@ updateIssuerTitlesUsingRegistry failed to update title for issuer, continuing. Error: %{public}@", &v5, 0x16u);
}

void sub_9EC5C(uint64_t a1, uint64_t a2)
{
  v4 = +[NSAssertionHandler currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"HDClinicalProviderServiceModel.m" lineNumber:33 description:{@"Invalid parameter not satisfying: %@", @"[self.class validateContent:content error:nil]"}];
}

void sub_9ECD8(uint64_t a1, uint64_t a2)
{
  v4 = +[NSAssertionHandler currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"HDCPSSearchOperation.m" lineNumber:63 description:@"Operation must be finished to access results"];
}

void sub_9ED4C(uint64_t a1, uint64_t a2)
{
  v4 = +[NSAssertionHandler currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"HDCPSSearchOperation.m" lineNumber:68 description:@"Operation must be finished to access results"];
}

void sub_9EDC0(uint64_t a1, uint64_t a2)
{
  v4 = +[NSAssertionHandler currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"HDXPCScheduler.m" lineNumber:45 description:{@"Invalid parameter not satisfying: %@", @"gracePeriod > 0"}];
}

void sub_9EE3C(uint64_t a1, uint64_t a2)
{
  v4 = +[NSAssertionHandler currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"HDXPCScheduler.m" lineNumber:46 description:{@"Invalid parameter not satisfying: %@", @"interval > 0"}];
}

void sub_9F004(uint64_t a1, NSObject *a2)
{
  v2 = *(a1 + 40);
  v3 = 138543362;
  v4 = v2;
  _os_log_fault_impl(&dword_0, a2, OS_LOG_TYPE_FAULT, "Failed to set state of activity %{public}@ to DONE", &v3, 0xCu);
}

void sub_9F080(uint64_t a1, uint64_t a2)
{
  v4 = +[NSAssertionHandler currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"HDXPCScheduler.m" lineNumber:107 description:{@"Invalid parameter not satisfying: %@", @"interval > 0"}];
}

void sub_9F0FC(uint64_t a1, NSObject *a2)
{
  v2 = 138543362;
  v3 = a1;
  _os_log_fault_impl(&dword_0, a2, OS_LOG_TYPE_FAULT, "HDFHIRCredentialSyncEntity expects HDCodableFHIRCredential, error: %{public}@", &v2, 0xCu);
}

void sub_9F174(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = +[NSAssertionHandler currentHandler];
  [v5 handleFailureInMethod:a2 object:a3 file:@"HDProfile+HealthRecordsPlugin.m" lineNumber:22 description:{@"Unexpected class for health records profile extension: %@", objc_opt_class()}];
}

void sub_9F204(uint64_t a1, NSObject *a2)
{
  v2 = 138543362;
  v3 = a1;
  _os_log_error_impl(&dword_0, a2, OS_LOG_TYPE_ERROR, "Encountered error fetching display name for secondary profiles %{public}@", &v2, 0xCu);
}

void sub_9F27C(void *a1, uint8_t *buf, os_log_t log)
{
  *buf = 138543362;
  *(buf + 4) = a1;
  _os_log_error_impl(&dword_0, log, OS_LOG_TYPE_ERROR, "%{public}@ unable to extract references because there is no extraction service client", buf, 0xCu);
}

void sub_9F2D4(void *a1, uint8_t *buf, os_log_t log)
{
  *buf = 138543362;
  *(buf + 4) = a1;
  _os_log_error_impl(&dword_0, log, OS_LOG_TYPE_ERROR, "%{public}@ failed to instantiate a reference extraction request. Are all resources of the same FHIR release?", buf, 0xCu);
}

void sub_9F32C(void *a1, uint64_t a2, uint8_t *buf, os_log_t log)
{
  v5 = *(*a2 + 40);
  *buf = 138543618;
  *(buf + 4) = a1;
  *(buf + 6) = 2112;
  *(buf + 14) = v5;
  _os_log_error_impl(&dword_0, log, OS_LOG_TYPE_ERROR, "%{public}@ error: %@", buf, 0x16u);
}

void sub_9F39C(void *a1, void *a2)
{
  v3 = a2;
  v4 = [a1 profile];
  v5 = 138543618;
  v6 = a1;
  v7 = 2114;
  v8 = v4;
  _os_log_error_impl(&dword_0, v3, OS_LOG_TYPE_ERROR, "%{public}@ cannot register for ingestion state changes on profile %{public}@ without ingestion manager", &v5, 0x16u);
}

void sub_9F458(uint64_t a1, uint64_t a2, os_log_t log)
{
  v3 = *(a1 + 32);
  v4 = 138543618;
  v5 = v3;
  v6 = 2114;
  v7 = a2;
  _os_log_error_impl(&dword_0, log, OS_LOG_TYPE_ERROR, "%{public}@: Error notifying health record store about ingestion state changes with error: %{public}@", &v4, 0x16u);
}

void sub_9F4E4(uint64_t a1)
{
  v2 = +[NSAssertionHandler currentHandler];
  [v2 handleFailureInMethod:*(a1 + 64) object:*(a1 + 72) file:@"HDClinicalAccountEventEntity+HealthRecordsPlugin.m" lineNumber:162 description:{@"Invalid parameter not satisfying: %@", @"[entity isKindOfClass:[HDClinicalAccountEventEntity class]]"}];
}

void sub_9F558(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = a1;
  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  v7 = 138543618;
  v8 = v6;
  v9 = 2114;
  v10 = a3;
  _os_log_error_impl(&dword_0, v4, OS_LOG_TYPE_ERROR, "%{public}@ failed to open database: %{public}@", &v7, 0x16u);
}

void sub_9F61C(uint64_t a1, uint64_t a2)
{
  v4 = +[NSAssertionHandler currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"HDSignedClinicalDataRegistry.m" lineNumber:268 description:{@"Invalid parameter not satisfying: %@", @"database"}];
}

void sub_9F698(uint64_t a1, uint64_t a2)
{
  v4 = +[NSAssertionHandler currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"HDFHIRIngestionResourceFetchOperation.m" lineNumber:64 description:@"Must have legacy XPC ingestion service client"];
}

void sub_9F6FC(uint64_t a1, uint64_t a2)
{
  v4 = +[NSAssertionHandler currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"HDFHIRIngestionResourceFetchOperation.m" lineNumber:83 description:{@"Invalid parameter not satisfying: %@", @"error"}];
}

void sub_9F778(void *a1, id *a2)
{
  v3 = a1;
  v4 = [a2 debugDescription];
  v5 = [a2[10] name];
  v6 = HKSensitiveLogItem();
  v7 = 138543874;
  v8 = v4;
  v9 = 2114;
  v10 = v5;
  v11 = 2112;
  v12 = v6;
  _os_log_error_impl(&dword_0, v3, OS_LOG_TYPE_ERROR, "%{public}@ fetching %{public}@ resources failed with error: %@", &v7, 0x20u);
}

void sub_9F874(uint64_t a1, NSObject *a2)
{
  v2 = 138543362;
  v3 = a1;
  _os_log_error_impl(&dword_0, a2, OS_LOG_TYPE_ERROR, "Failed to delete access token after failing to store refresh tokens: %{public}@", &v2, 0xCu);
}

void sub_9F8EC(void *a1, void *a2)
{
  v3 = a1;
  v4 = [a2 debugDescription];
  sub_1728C();
  sub_172A4(&dword_0, v5, v6, "%{public}@ failed to retrieve access token from keychain: %{public}@", v7, v8, v9, v10, v11);
}

void sub_9F98C(void *a1, void *a2)
{
  v3 = a1;
  v4 = [a2 debugDescription];
  sub_1728C();
  sub_172A4(&dword_0, v5, v6, "%{public}@ failed to retrieve refresh token from keychain: %{public}@", v7, v8, v9, v10, v11);
}

void sub_9FA2C(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 debugDescription];
  sub_1160C(&dword_0, v5, v6, "%{public}@: opt-in data upload triggered unsuccessfully", v7, v8, v9, v10, 2u);
}

void sub_9FAC4(void *a1, void *a2, uint64_t a3)
{
  v5 = a1;
  v6 = [a2 debugDescription];
  v7 = 138543618;
  v8 = v6;
  v9 = 2114;
  v10 = a3;
  _os_log_error_impl(&dword_0, v5, OS_LOG_TYPE_ERROR, "%{public}@: Error %{public}@, while uploading opt-in data", &v7, 0x16u);
}

void sub_9FB84(void *a1, void *a2)
{
  v3 = a1;
  v4 = [a2 debugDescription];
  sub_1160C(&dword_0, v5, v6, "%{public}@: already triggered, ignoring, do not trigger more than once", v7, v8, v9, v10, 2u);
}

void sub_9FC1C()
{
  sub_2BC5C();
  v3 = v2;
  [sub_17CB4() debugDescription];
  objc_claimAutoreleasedReturnValue();
  sub_2BC40();
  v4 = HKSensitiveLogItem();
  sub_2BC20();
  sub_172A4(&dword_0, v5, v6, "%{public}@ failure running the feature operation. Error: %{public}@", v7, v8, v9, v10, 2u);
}

void sub_9FCCC()
{
  sub_2BC5C();
  v3 = v2;
  [sub_17CB4() debugDescription];
  objc_claimAutoreleasedReturnValue();
  sub_2BC40();
  v4 = HKSensitiveLogItem();
  sub_2BC20();
  sub_172A4(&dword_0, v5, v6, "%{public}@ did not get a fresh credential. Error: %{public}@", v7, v8, v9, v10, 2u);
}

void sub_9FD7C(uint64_t a1, uint64_t a2)
{
  v4 = +[NSAssertionHandler currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"HDClinicalIngestionSignedClinicalDataOperation.m" lineNumber:60 description:{@"Invalid parameter not satisfying: %@", @"error"}];
}

void sub_9FDF8()
{
  sub_2BC5C();
  v3 = v2;
  [sub_17CB4() debugDescription];
  objc_claimAutoreleasedReturnValue();
  sub_2BC40();
  v4 = HKSensitiveLogItem();
  sub_2BC20();
  sub_172A4(&dword_0, v5, v6, "%{public}@ canceling with error: %{public}@", v7, v8, v9, v10, 2u);
}

void sub_9FEA8(void *a1, void *a2)
{
  v3 = a1;
  v4 = [a2 debugDescription];
  sub_B068();
  sub_2BC4C();
  _os_log_debug_impl(v5, v6, v7, v8, v9, 0xCu);
}

void sub_9FF48(void *a1, void *a2)
{
  v3 = a1;
  v4 = [a2 debugDescription];
  sub_B068();
  sub_2BC4C();
  _os_log_debug_impl(v5, v6, v7, v8, v9, 0xCu);
}

void sub_9FFE8(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [sub_2BC40() debugDescription];
  sub_B068();
  sub_2BC30();
  _os_log_debug_impl(v6, v7, v8, v9, v10, 0xCu);
}

void sub_A0080(void *a1)
{
  v2 = a1;
  v3 = [sub_2BC40() debugDescription];
  sub_B068();
  sub_2BC30();
  _os_log_debug_impl(v4, v5, v6, v7, v8, 0xCu);
}

void sub_A0118(void *a1)
{
  v2 = a1;
  v3 = [sub_2BC40() debugDescription];
  v4 = [objc_opt_class() featureName];
  sub_2BC20();
  sub_2BC30();
  _os_log_debug_impl(v5, v6, v7, v8, v9, 0x16u);
}

void sub_A01D8(void *a1, void *a2)
{
  v4 = a1;
  [a2 debugDescription];
  objc_claimAutoreleasedReturnValue();
  v5 = [sub_17CB4() gateway];
  v6 = [v5 country];
  sub_2BC20();
  sub_2BC4C();
  _os_log_debug_impl(v7, v8, v9, v10, v11, 0x16u);
}

void sub_A02A4(void *a1)
{
  v2 = a1;
  v3 = [sub_2BC40() debugDescription];
  v4 = [objc_opt_class() featureName];
  sub_2BC20();
  sub_2BC30();
  _os_log_debug_impl(v5, v6, v7, v8, v9, 0x16u);
}

void sub_A0364()
{
  sub_2BC5C();
  v3 = v2;
  v4 = [sub_17CB4() debugDescription];
  sub_B068();
  v6 = 2114;
  v7 = v0;
  _os_log_debug_impl(&dword_0, v1, OS_LOG_TYPE_DEBUG, "%{public}@ asking SCD manager to store parsed data for account %{public}@", v5, 0x16u);
}

void sub_A0418(void *a1)
{
  v2 = a1;
  v3 = [sub_2BC40() profile];
  sub_B068();
  _os_log_fault_impl(&dword_0, v1, OS_LOG_TYPE_FAULT, "HDClinicalIngestionSignedClinicalDataOperation has no signed clinical data manager on profile %{public}@, cannot store parsing result", v4, 0xCu);
}

void sub_A04B8(void *a1)
{
  v2 = a1;
  v3 = [sub_2BC40() debugDescription];
  sub_B068();
  sub_2BC30();
  _os_log_debug_impl(v4, v5, v6, v7, v8, 0xCu);
}

void sub_A0550(uint64_t a1, uint64_t a2)
{
  v4 = +[NSAssertionHandler currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"HDHRSOriginalSignedClinicalDataRecord+HealthRecordsPlugin.m" lineNumber:45 description:{@"Invalid parameter not satisfying: %@", @"uniquenessChecksum"}];
}

void sub_A0610(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [sub_17CB4() debugDescription];
  sub_1728C();
  sub_172A4(&dword_0, v6, v7, "%{public}@ failed to prune auth sessions: %{public}@", v8, v9, v10, v11, v12);
}

void sub_A06AC(void *a1, uint64_t a2, uint64_t a3)
{
  sub_36C88(a1, a2, a3, 5.8382e-34);
  _os_log_error_impl(&dword_0, v5, OS_LOG_TYPE_ERROR, "%{public}@: %{public}@", v4, 0x16u);
}

void sub_A0704(void **a1, void *a2)
{
  v3 = *a1;
  v4 = a2;
  [sub_17CB4() debugDescription];
  objc_claimAutoreleasedReturnValue();
  sub_2BC40();
  v5 = HKSensitiveLogItem();
  sub_8C8C();
  sub_172A4(&dword_0, v6, v7, "%{public}@ failed to refresh account after token exchange, trying to proceed with in-memory account. Error: %{public}@", v8, v9, v10, v11, v12);
}

void sub_A07B0(uint64_t *a1, void *a2)
{
  v3 = *a1;
  v4 = a2;
  v5 = [sub_17CB4() debugDescription];
  sub_1728C();
  sub_172A4(&dword_0, v6, v7, "%{public}@ unable to store patient ID mismatched credential: %{public}@", v8, v9, v10, v11, v12);
}

void sub_A084C(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = *(a1 + 32);
  v6 = a2;
  v7 = [v5 debugDescription];
  v8 = *(a1 + 48);
  sub_B068();
  v11 = 2114;
  v12 = v9;
  v13 = 2114;
  v14 = a3;
  _os_log_error_impl(&dword_0, v6, OS_LOG_TYPE_ERROR, "%{public}@ unable to delete session with state %{public}@: %{public}@", v10, 0x20u);
}

void sub_A095C()
{
  sub_2BC5C();
  v2 = v1;
  v3 = [sub_17CB4() debugDescription];
  sub_1728C();
  sub_172A4(&dword_0, v4, v5, "%{public}@ unable to count number of remaining accounts, ignoring. Error: %{public}@", v6, v7, v8, v9, v10);
}

void sub_A09F4()
{
  sub_2BC5C();
  v2 = v1;
  v3 = [sub_17CB4() debugDescription];
  sub_1728C();
  sub_172A4(&dword_0, v4, v5, "%{public}@ unable to delete account with sync identifier %{public}@, failed to retrieve identifier for account", v6, v7, v8, v9, v10);
}

void sub_A0A8C()
{
  sub_2BC5C();
  v2 = v1;
  v3 = [sub_17CB4() identifier];
  sub_1728C();
}

void sub_A0B24()
{
  sub_2BC5C();
  v2 = v1;
  v3 = [sub_17CB4() identifier];
  sub_1728C();
}

void sub_A0BBC()
{
  sub_2BC5C();
  v2 = v1;
  v3 = [sub_17CB4() identifier];
  sub_1728C();
  sub_172A4(&dword_0, v4, v5, "Account %{public}@: failed to prepare for extraction, error: %{public}@", v6, v7, v8, v9, v10);
}

void sub_A0C54(void *a1)
{
  v2 = a1;
  v3 = [sub_2BC40() identifier];
  sub_B068();
  _os_log_debug_impl(&dword_0, v1, OS_LOG_TYPE_DEBUG, "Account %{public}@: encountered account with no external ID", v4, 0xCu);
}

void sub_A0CF4(uint64_t *a1, NSObject *a2)
{
  v2 = *a1;
  v3 = 138543362;
  v4 = v2;
  _os_log_error_impl(&dword_0, a2, OS_LOG_TYPE_ERROR, "%{public}@", &v3, 0xCu);
}

void sub_A0D70(uint64_t *a1, void *a2)
{
  v3 = *a1;
  v4 = a2;
  sub_2BC40();
  v5 = HKSensitiveLogItem();
  sub_B068();
  sub_36C78();
  _os_log_fault_impl(v6, v7, v8, v9, v10, 0xCu);
}

void sub_A0E08(void *a1)
{
  v2 = a1;
  v3 = [sub_2BC40() debugDescription];
  v4 = HKSensitiveLogItem();
  sub_B068();
  sub_36C78();
  _os_log_fault_impl(v5, v6, v7, v8, v9, 0xCu);
}

void sub_A0EB8(uint64_t *a1)
{
  v1 = *a1;
  v4 = 138543618;
  v5 = v1;
  sub_36C6C();
  v6 = v2;
  _os_log_fault_impl(&dword_0, v3, OS_LOG_TYPE_FAULT, "HDClinicalAccountManager failed to mark account %{public}@ as needing relogin: %{public}@", &v4, 0x16u);
}

void sub_A0F40()
{
  sub_2BC5C();
  v3 = v2;
  [sub_17CB4() debugDescription];
  objc_claimAutoreleasedReturnValue();
  v4 = [sub_2BC40() object];
  sub_8C8C();
  sub_172A4(&dword_0, v5, v6, "%{public}@ got HDClinicalAccountEntityDidChangeEventNotificationChangeNotification with object expected to be HKClinicalAccount but is %{public}@, dropping", v7, v8, v9, v10, v11);
}

void sub_A0FE8(void *a1, void *a2, uint64_t a3)
{
  sub_36C88(a1, a2, a3, 5.8382e-34);
  _os_log_error_impl(&dword_0, v6, OS_LOG_TYPE_ERROR, "%{public}@ failed to create account for issuer %{public}@", v5, 0x16u);
}

void sub_A1048(uint64_t a1, void *a2, uint64_t *a3)
{
  v5 = *(a1 + 40);
  v6 = a2;
  v7 = [sub_17CB4() debugDescription];
  v8 = *a3;
  v9 = HKSensitiveLogItem();
  sub_8C8C();
  sub_172A4(&dword_0, v10, v11, "%{public}@ there is no account or issuer %{public}@", v12, v13, v14, v15, v16);
}

void sub_A10F8(void **a1, void *a2)
{
  v3 = *a1;
  v4 = a2;
  [sub_17CB4() debugDescription];
  objc_claimAutoreleasedReturnValue();
  sub_2BC40();
  v5 = HKSensitiveLogItem();
  sub_8C8C();
  sub_172A4(&dword_0, v6, v7, "%{public}@ failed to create account & issuer: %{public}@", v8, v9, v10, v11, v12);
}

void sub_A11A4(void *a1, void *a2, void *a3)
{
  v5 = a1[4];
  v6 = a2;
  v7 = [v5 debugDescription];
  v9 = a1[5];
  v8 = a1[6];
  v10 = [a3 taskError];
  v13 = 138544130;
  v14 = v7;
  sub_36C6C();
  v15 = v9;
  v16 = v11;
  v17 = v8;
  v18 = v11;
  v19 = v12;
  _os_log_error_impl(&dword_0, v6, OS_LOG_TYPE_ERROR, "%{public}@ failed ingestion with reason %{public}@ for account %{public}@: %{public}@", &v13, 0x2Au);
}

void sub_A1294(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);
  v7 = 138543874;
  v8 = v1;
  sub_36C6C();
  v9 = v3;
  v10 = v4;
  v11 = v5;
  _os_log_error_impl(&dword_0, v6, OS_LOG_TYPE_ERROR, "%{public}@ failed to request changes cloud sync for reason: %{public}@ with error: %{public}@", &v7, 0x20u);
}

void sub_A1324(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v5 = a2;
  v6 = [sub_2BC40() localizedDescription];
  v9 = 138543874;
  v10 = v3;
  sub_36C6C();
  v11 = v4;
  v12 = v7;
  v13 = v8;
  _os_log_debug_impl(&dword_0, v2, OS_LOG_TYPE_DEBUG, "%{public}@ failed to request changes cloud sync for reason: %{public}@ because %{public}@", &v9, 0x20u);
}

void sub_A144C(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [sub_2BC40() error];
  sub_36C6C();
  sub_36C78();
  _os_log_fault_impl(v6, v7, v8, v9, v10, 0x16u);
}

void sub_A1564(uint64_t a1, uint64_t a2)
{
  v4 = +[NSAssertionHandler currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"HDFHIRCredential.m" lineNumber:216 description:{@"Invalid parameter not satisfying: %@", @"receivedDate"}];
}

void sub_A15E0(void *a1, void *a2)
{
  v3 = a2;
  v4 = [a1 profile];
  v5 = 138543618;
  v6 = a1;
  v7 = 2114;
  v8 = v4;
  _os_log_error_impl(&dword_0, v3, OS_LOG_TYPE_ERROR, "%{public}@ attempting to run on profile %{public}@ which does not have a sharing manager", &v5, 0x16u);
}

void sub_A169C(void *a1, uint64_t a2)
{
  v4 = a1;
  v5 = [sub_2BC40() debugDescription];
  v6 = *(a2 + 72);
  v7 = 138543618;
  v8 = v5;
  v9 = 2114;
  v10 = v6;
  _os_log_debug_impl(&dword_0, v2, OS_LOG_TYPE_DEBUG, "%{public}@ stale resources operation beginning with ingest start date %{public}@", &v7, 0x16u);
}

void sub_A1760(void *a1, void *a2)
{
  v4 = a1;
  v5 = [sub_2BC40() debugDescription];
  v6 = [a2 operationError];
  v7 = 138543618;
  v8 = v5;
  v9 = 2114;
  v10 = v6;
  _os_log_error_impl(&dword_0, v2, OS_LOG_TYPE_ERROR, "%{public}@ stale resources operation failed with error %{public}@", &v7, 0x16u);
}

void sub_A182C(void *a1)
{
  v2 = a1;
  v3 = [sub_2BC40() debugDescription];
  v4 = 138543362;
  v5 = v3;
  _os_log_debug_impl(&dword_0, v1, OS_LOG_TYPE_DEBUG, "%{public}@ stale resources operation finished successfully", &v4, 0xCu);
}

void sub_A18D0(void *a1, void *a2)
{
  v3 = a1;
  [a2 debugDescription];
  objc_claimAutoreleasedReturnValue();
  v4 = 138543618;
  v5 = a2;
  v6 = 2050;
  v7 = [sub_2BC40() count];
  _os_log_debug_impl(&dword_0, v3, OS_LOG_TYPE_DEBUG, "%{public}@ stale resources operation found %{public}lu stale resources", &v4, 0x16u);
}

void sub_A1994(uint64_t a1, void *a2, uint64_t a3)
{
  v4 = *(a1 + 32);
  v5 = a2;
  v6 = HKSensitiveLogItem();
  v7 = 138412546;
  v8 = v6;
  v9 = 2114;
  v10 = a3;
  _os_log_error_impl(&dword_0, v5, OS_LOG_TYPE_ERROR, "Could not parse provider with external id: %@, error: %{public}@", &v7, 0x16u);
}

void sub_A1A54(void *a1, uint64_t a2, id *a3)
{
  v4 = a1;
  v5 = objc_opt_class();
  WeakRetained = objc_loadWeakRetained(a3);
  v7 = [WeakRetained daemon];
  v8 = [v7 primaryProfile];
  v9 = objc_loadWeakRetained(a3);
  sub_3AB4C();
  sub_3AB6C();
  _os_log_fault_impl(v10, v11, OS_LOG_TYPE_FAULT, v12, v13, 0x20u);
}

void sub_A1B54(void *a1, uint64_t a2, void *a3)
{
  v4 = a1;
  v5 = objc_opt_class();
  v6 = [a3 externalID];
  v11 = HKSensitiveLogItem();
  sub_3AB6C();
  _os_log_debug_impl(v7, v8, OS_LOG_TYPE_DEBUG, v9, v10, 0x16u);
}

void sub_A1C40(void *a1, uint64_t a2, void *a3)
{
  v4 = a1;
  v5 = objc_opt_class();
  v6 = [a3 externalID];
  v11 = HKSensitiveLogItem();
  sub_3AB6C();
  _os_log_debug_impl(v7, v8, OS_LOG_TYPE_DEBUG, v9, v10, 0x16u);
}

void sub_A1D2C(uint64_t a1, uint64_t a2)
{
  v4 = +[NSAssertionHandler currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"HDClinicalProviderServiceManager.m" lineNumber:426 description:{@"Invalid parameter not satisfying: %@", @"operation"}];
}

void sub_A1DA8(uint64_t a1, uint64_t a2)
{
  v4 = +[NSAssertionHandler currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"HDClinicalAccountEntity+HealthRecordsPlugin.m" lineNumber:500 description:{@"Invalid parameter not satisfying: %@", @"database"}];
}

void sub_A1E24(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = +[NSAssertionHandler currentHandler];
  [v6 handleFailureInMethod:a1 object:a2 file:@"HDClinicalAccountEntity+HealthRecordsPlugin.m" lineNumber:726 description:{@"Invalid codable created from clinical account: %@", a3}];
}

void sub_A1E98(uint64_t a1)
{
  v2 = +[NSAssertionHandler currentHandler];
  [v2 handleFailureInMethod:*(a1 + 64) object:*(a1 + 72) file:@"HDClinicalAccountEntity+HealthRecordsPlugin.m" lineNumber:782 description:{@"Invalid parameter not satisfying: %@", @"[entity isKindOfClass:[HDClinicalAccountEntity class]]"}];
}

void sub_A1F0C()
{
  sub_B068();
  v3 = 2114;
  v4 = v0;
  _os_log_error_impl(&dword_0, v1, OS_LOG_TYPE_ERROR, "%{public}@ Error determining whether resources need extraction: %{public}@", v2, 0x16u);
}

void sub_A1F90()
{
  sub_B068();
  v3 = 2114;
  v4 = v0;
  _os_log_fault_impl(&dword_0, v1, OS_LOG_TYPE_FAULT, "%{public}@ Failed to delete tokens from keychain when deleting credential from database: %{public}@", v2, 0x16u);
}

void sub_A2014(uint8_t *a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = [a3 accountIdentifier];
  *a1 = 138543362;
  *a4 = v8;
  _os_log_fault_impl(&dword_0, v7, OS_LOG_TYPE_FAULT, "HDClinicalAccount._insertCodableAcounts received an account (%{public}@) with neither gatewayExternalID nor signedClinicalDataIssuerIdentifier", a1, 0xCu);
}

void sub_A2098(uint64_t a1, uint64_t a2)
{
  v4 = +[NSAssertionHandler currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"HDClinicalAccountEntity+HealthRecordsPlugin.m" lineNumber:1556 description:{@"Invalid parameter not satisfying: %@", @"(gatewayID == nil) != (signedClinicalDataIssuerID == nil)"}];
}

void sub_A2114(uint64_t a1, uint64_t a2)
{
  v4 = +[NSAssertionHandler currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"HDClinicalAccountEntity+HealthRecordsPlugin.m" lineNumber:1741 description:{@"Invalid parameter not satisfying: %@", @"(gatewayID == nil) != (signedClinicalDataIssuerID == nil)"}];
}

void sub_A2190(void *a1)
{
  v1 = a1;
  v2 = HKSensitiveLogItem();
  sub_B068();
  sub_48D9C(&dword_0, v3, v4, "HDClinicalAccountEntity failed to record account state event for account: %{public}@", v5, v6, v7, v8, v9);
}

void sub_A2224(void *a1)
{
  v1 = a1;
  v2 = HKSensitiveLogItem();
  sub_B068();
  sub_48D9C(&dword_0, v3, v4, "HDClinicalAccountEntity failed to journal account state event for account: %{public}@", v5, v6, v7, v8, v9);
}

void sub_A22B8(void *a1)
{
  v1 = a1;
  v2 = HKSensitiveLogItem();
  sub_B068();
  sub_48D9C(&dword_0, v3, v4, "HDClinicalAccountEntity.deleteAccountWithIdentifier has gateway external ID %{public}@ but not the associated ROWID", v5, v6, v7, v8, v9);
}

void sub_A234C(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = *(a1 + 32);
  v4 = *(a1 + 40);
  v6 = a2;
  v7 = NSStringFromSelector(v4);
  v8 = 138543874;
  v9 = v5;
  v10 = 2114;
  v11 = v7;
  v12 = 2114;
  v13 = a3;
  _os_log_fault_impl(&dword_0, v6, OS_LOG_TYPE_FAULT, "%{public}@ %{public}@ %{public}@", &v8, 0x20u);
}

void sub_A2414(void *a1, void *a2, uint64_t a3)
{
  v5 = a1;
  v6 = [a2 debugDescription];
  v7 = [a2 account];
  v8 = [v7 identifier];
  v9 = 138543874;
  v10 = v6;
  v11 = 2114;
  v12 = v8;
  v13 = 2112;
  v14 = a3;
  _os_log_error_impl(&dword_0, v5, OS_LOG_TYPE_ERROR, "%{public}@ account %{public}@ is not fetchable: %@", &v9, 0x20u);
}

void sub_A250C(void *a1, void *a2)
{
  v3 = a1;
  v4 = [a2 debugDescription];
  v5 = [a2 task];
  v6 = [v5 profile];
  v7 = 138543618;
  v8 = v4;
  v9 = 2112;
  v10 = v6;
  _os_log_error_impl(&dword_0, v3, OS_LOG_TYPE_ERROR, "%{public}@ running on profile %@ which does not have an ingestion manager", &v7, 0x16u);
}

void sub_A25EC(uint64_t a1, uint64_t a2)
{
  v4 = +[NSAssertionHandler currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"HDHealthRecordsProfileExtension.m" lineNumber:149 description:{@"Invalid parameter not satisfying: %@", @"supportsHealthRecords"}];
}

void sub_A2740(void *a1, uint64_t a2, NSObject *a3)
{
  *v3 = 138543618;
  *&v3[4] = *a1;
  *&v3[12] = 2114;
  *&v3[14] = a2;
  sub_B074(&dword_0, a2, a3, "%{public}@ failed to enumerate SCD records after updating account sources, error: %{public}@", *v3, *&v3[8], *&v3[16]);
}

void sub_A27BC(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  sub_4AD40();
  sub_4AD58(&dword_0, v5, v6, "%{public}@ attempting to register a CHR supported change observer on an unsupported profile: %{public}@", v7, v8, v9, v10, v11);
}

void sub_A2854(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  sub_4AD40();
  sub_4AD58(&dword_0, v5, v6, "%{public}@ attempting to register an account event observer on an unsupported profile: %{public}@", v7, v8, v9, v10, v11);
}

void sub_A28EC(void *a1)
{
  v1 = a1;
  v2 = objc_opt_class();
  sub_172A4(&dword_0, v3, v4, "[%{public}@] Unexpected notification instruction received: %ld", v5, v6, v7, v8, 2u);
}

void sub_A299C(void *a1)
{
  v1 = a1;
  objc_opt_class();
  sub_13D18();
  v3 = v2;
  sub_172A4(&dword_0, v4, v5, "[%{public}@] Mark pending notification instruction as processed failed with error: [%{public}@]", v6, v7, v8, v9, v10);
}

void sub_A2A40(void *a1)
{
  v1 = a1;
  objc_opt_class();
  sub_13D18();
  v3 = v2;
  sub_172A4(&dword_0, v4, v5, "[%{public}@] Pending notification dismiss instructions returned nil with error = [%{public}@]", v6, v7, v8, v9, v10);
}

void sub_A2B50(uint64_t *a1, void *a2, uint64_t a3)
{
  v4 = *a1;
  v5 = a2;
  v6 = 138543618;
  v7 = objc_opt_class();
  v8 = 2114;
  v9 = a3;
  _os_log_error_impl(&dword_0, v5, OS_LOG_TYPE_ERROR, "%{public}@: invalid codable clinical deleted account: %{public}@", &v6, 0x16u);
}

void sub_A2C04(uint64_t a1, NSObject *a2)
{
  v2 = 138543362;
  v3 = a1;
  _os_log_fault_impl(&dword_0, a2, OS_LOG_TYPE_FAULT, "%{public}@ Unable to retrieve account manager from profile", &v2, 0xCu);
}

void sub_A2C7C(uint64_t a1, NSObject *a2)
{
  v2 = 138543362;
  v3 = a1;
  _os_log_fault_impl(&dword_0, a2, OS_LOG_TYPE_FAULT, "HDClinicalDeletedAccountSyncEntity received an invalid sync object: %{public}@", &v2, 0xCu);
}

void sub_A2CF4(uint64_t a1, uint64_t a2)
{
  v4 = +[NSAssertionHandler currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"HDFHIRCredentialEntity+HealthRecordsPlugin.m" lineNumber:61 description:{@"Invalid parameter not satisfying: %@", @"row != NULL"}];
}

void sub_A2D70(uint64_t a1, uint64_t a2)
{
  v4 = +[NSAssertionHandler currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"HDFHIRCredentialEntity+HealthRecordsPlugin.m" lineNumber:79 description:{@"Invalid parameter not satisfying: %@", @"row != NULL"}];
}

void sub_A2DEC(uint64_t a1, uint64_t a2)
{
  v4 = +[NSAssertionHandler currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"HDFHIRCredentialEntity+HealthRecordsPlugin.m" lineNumber:80 description:{@"Invalid parameter not satisfying: %@", @"accountSyncIdentifier != nil"}];
}

void sub_A2EDC(uint64_t *a1, void *a2, uint64_t a3)
{
  v4 = *a1;
  v5 = a2;
  v6 = objc_opt_class();
  v7 = NSStringFromClass(v6);
  sub_B068();
  v9 = 2114;
  v10 = a3;
  _os_log_error_impl(&dword_0, v5, OS_LOG_TYPE_ERROR, "%{public}@ failed to record account event. Error: %{public}@", v8, 0x16u);
}

void sub_A3084(void *a1, uint64_t a2, uint8_t *buf, os_log_t log)
{
  *buf = 138543618;
  *(buf + 4) = a1;
  *(buf + 6) = 2114;
  *(buf + 14) = a2;
  _os_log_error_impl(&dword_0, log, OS_LOG_TYPE_ERROR, "%{public}@ failed to randomly mark resources as stale, error: %{public}@", buf, 0x16u);
}

void sub_A30EC(uint64_t a1, void *a2, uint64_t a3)
{
  v4 = *(a1 + 32);
  v5 = a2;
  v7 = 138543618;
  v8 = objc_opt_class();
  v9 = 2114;
  v10 = a3;
  v6 = v8;
  _os_log_error_impl(&dword_0, v5, OS_LOG_TYPE_ERROR, "%{public}@ failed to schedule clinical sharing: %{public}@", &v7, 0x16u);
}

void sub_A31AC(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = [a3 identifier];
  [a3 status];
  v7 = NSStringFromAttachmentStatus();
  v8 = 138543874;
  v9 = a1;
  v10 = 2114;
  v11 = v6;
  v12 = 2114;
  v13 = v7;
  _os_log_debug_impl(&dword_0, v5, OS_LOG_TYPE_DEBUG, "%{public}@: downloadable attachment with identifier %{public}@ did change, status: %{public}@", &v8, 0x20u);
}

void sub_A328C(uint64_t a1, uint64_t a2, os_log_t log)
{
  v3 = *(a1 + 32);
  v4 = 138543618;
  v5 = v3;
  v6 = 2114;
  v7 = a2;
  _os_log_error_impl(&dword_0, log, OS_LOG_TYPE_ERROR, "%{public}@: Error notifying document store about attachment changes with error: %{public}@", &v4, 0x16u);
}

void sub_A3318(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_fault_impl(&dword_0, a2, OS_LOG_TYPE_FAULT, "HDCodableFHIRResource.safeUniquenessChecksum failed to convert codable FHIR resource to resource object: %@", &v2, 0xCu);
}

void sub_A3390(void *a1, void *a2)
{
  v3 = a1;
  v4 = [a2 debugDescription];
  v5 = 138543362;
  v6 = v4;
  _os_log_debug_impl(&dword_0, v3, OS_LOG_TYPE_DEBUG, "%{public}@ reference range status operation beginning", &v5, 0xCu);
}

void sub_A3438(uint64_t a1, uint64_t a2)
{
  v4 = +[NSAssertionHandler currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"HDClinicalGatewayEntity+HealthRecordsPlugin.m" lineNumber:157 description:{@"Invalid parameter not satisfying: %@", @"row != NULL"}];
}

void sub_A34B4(uint64_t a1, uint64_t a2)
{
  v4 = +[NSAssertionHandler currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"HDClinicalGatewayEntity+HealthRecordsPlugin.m" lineNumber:160 description:{@"Invalid parameter not satisfying: %@", @"data != nil"}];
}

void sub_A3530(uint64_t a1, uint8_t *buf, uint64_t a3, os_log_t log)
{
  v4 = *(*a1 + 40);
  *buf = 134218242;
  *(buf + 4) = a3;
  *(buf + 6) = 2114;
  *(buf + 14) = v4;
  _os_log_fault_impl(&dword_0, log, OS_LOG_TYPE_FAULT, "HDClinicalGatewayEntity was unable to retrieve gateway entity %lld: %{public}@", buf, 0x16u);
}

void sub_A3590(uint64_t a1, uint64_t a2, os_log_t log)
{
  v3 = 138543619;
  v4 = a1;
  v5 = 2113;
  v6 = a2;
  _os_log_error_impl(&dword_0, log, OS_LOG_TYPE_ERROR, "%{public}@ Failed to update gateway source with error %{private}@", &v3, 0x16u);
}

void sub_A3618(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = *(a1 + 40);
  v4 = *(a1 + 48);
  v6 = a2;
  v7 = NSStringFromSelector(v4);
  v8 = 138543874;
  v9 = v5;
  v10 = 2114;
  v11 = v7;
  v12 = 2114;
  v13 = a3;
  _os_log_fault_impl(&dword_0, v6, OS_LOG_TYPE_FAULT, "%{public}@ %{public}@ %{public}@", &v8, 0x20u);
}

void sub_A36E0(uint64_t a1, uint64_t a2, os_log_t log)
{
  v3 = 138543618;
  v4 = a1;
  v5 = 2114;
  v6 = a2;
  _os_log_fault_impl(&dword_0, log, OS_LOG_TYPE_FAULT, "%{public}@ there is no ontology configuration provider on profile %{public}@", &v3, 0x16u);
}

void sub_A3768(uint64_t a1, uint64_t a2)
{
  v4 = +[NSAssertionHandler currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"HDClinicalGatewayEntity+HealthRecordsPlugin.m" lineNumber:1028 description:{@"Invalid parameter not satisfying: %@", @"keyName.length > 0"}];
}

void sub_A37E4(void *a1, uint64_t a2, void *a3)
{
  v4 = a1;
  v5 = objc_opt_class();
  v6 = [a3 localizedDescription];
  v7 = [a3 userInfo];
  v8 = [v7 objectForKeyedSubscript:NSUnderlyingErrorKey];
  sub_5706C();
  sub_57084(&dword_0, v9, v10, "%{public}@ %{public}@. Underlying error: %{public}@", v11, v12, v13, v14, 2u);
}

void sub_A38EC(void *a1, uint64_t a2)
{
  v4 = a1;
  sub_2BC40();
  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  v7 = *(a2 + 40);
  sub_B068();
  sub_5C7D0();
  sub_2BC30();
  _os_log_debug_impl(v8, v9, v10, v11, v12, 0x16u);
}

void sub_A3998(uint64_t a1, void *a2)
{
  sub_5C7E0(a1, a2);
  sub_17CB4();
  v4 = objc_opt_class();
  NSStringFromClass(v4);
  objc_claimAutoreleasedReturnValue();
  sub_2BC40();
  v5 = HKSensitiveLogItem();
  sub_8C8C();
  sub_172A4(&dword_0, v6, v7, "%{public}@: parseSignedClinicalData received error %{public}@", v8, v9, v10, v11, v12);
}

void sub_A3A40(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  sub_2BC40();
  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  sub_B068();
  sub_2BC30();
  _os_log_debug_impl(v7, v8, v9, v10, v11, 0xCu);
}

void sub_A3ADC(void *a1, uint64_t a2)
{
  v4 = a1;
  sub_2BC40();
  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  v7 = *(a2 + 40);
  sub_B068();
  sub_5C7D0();
  sub_2BC30();
  _os_log_debug_impl(v8, v9, v10, v11, v12, 0x16u);
}

void sub_A3B88(uint64_t a1, void *a2)
{
  sub_5C7E0(a1, a2);
  sub_17CB4();
  v4 = objc_opt_class();
  NSStringFromClass(v4);
  objc_claimAutoreleasedReturnValue();
  sub_2BC40();
  v5 = HKSensitiveLogItem();
  sub_8C8C();
  sub_172A4(&dword_0, v6, v7, "%{public}@: storeSignedClinicalData received error %{public}@", v8, v9, v10, v11, v12);
}

void sub_A3C30(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  sub_2BC40();
  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  sub_B068();
  sub_2BC30();
  _os_log_debug_impl(v7, v8, v9, v10, v11, 0xCu);
}

void sub_A3CCC(uint64_t *a1, void *a2)
{
  v3 = *a1;
  v4 = a2;
  sub_2BC40();
  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  sub_B068();
  sub_2BC30();
  _os_log_debug_impl(v7, v8, v9, v10, v11, 0xCu);
}

void sub_A3D68()
{
  sub_5C804();
  *v2 = 138543618;
  *(v2 + 4) = v3;
  *(v2 + 12) = 2114;
  *(v2 + 14) = v4;
  sub_5C7B8(&dword_0, v6, v2, "%{public}@: reextractOriginalSignedClinicalDataRecords finished with error %{public}@", v5);
}

void sub_A3DD0(void *a1)
{
  v1 = a1;
  v2 = objc_opt_class();
  v3 = NSStringFromClass(v2);
  v4 = HKSensitiveLogItem();
  sub_8C8C();
  sub_5C7B8(&dword_0, v1, v5, "%{public}@: reextractOriginalSignedClinicalDataRecords failed to look up accounts with error %{public}@", v6);
}

void sub_A3E94(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  v7 = *(a1 + 40);
  v8 = HKSensitiveLogItem();
  v9 = 138543874;
  v10 = v6;
  v11 = 2114;
  v12 = v7;
  v13 = 2114;
  v14 = v8;
  _os_log_error_impl(&dword_0, v4, OS_LOG_TYPE_ERROR, "%{public}@: reextractOriginalSignedClinicalDataRecords failed to process records for account %{public}@ via XPC client with error %{public}@", &v9, 0x20u);
}

void sub_A3F7C(uint64_t a1, void *a2)
{
  sub_5C7E0(a1, a2);
  sub_17CB4();
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = *(a1 + 40);
  sub_B068();
  sub_5C7D0();
  sub_8CA4(&dword_0, v7, v8, "%{public}@: reextractOriginalSignedClinicalDataRecords received result from XCP client for account %{public}@, storing data", v9, v10, v11, v12, v13);
}

void sub_A401C()
{
  sub_5C804();
  v2 = +[NSAssertionHandler currentHandler];
  [v2 handleFailureInMethod:v1 object:v0 file:@"HDSignedClinicalDataManager.m" lineNumber:235 description:{@"Invalid parameter not satisfying: %@", @"syncIdentifier"}];
}

void sub_A4094()
{
  sub_5C804();
  v2 = +[NSAssertionHandler currentHandler];
  [v2 handleFailureInMethod:v1 object:v0 file:@"HDSignedClinicalDataManager.m" lineNumber:375 description:{@"Invalid parameter not satisfying: %@", @"numOriginalRecordsInserted != NULL"}];
}

void sub_A410C()
{
  sub_5C804();
  v2 = +[NSAssertionHandler currentHandler];
  [v2 handleFailureInMethod:v1 object:v0 file:@"HDSignedClinicalDataManager.m" lineNumber:376 description:{@"Invalid parameter not satisfying: %@", @"numDuplicateRecords != NULL"}];
}

void sub_A4184(void *a1)
{
  v2 = a1;
  [sub_17CB4() persistentID];
  sub_2BC40();
  v3 = HKSensitiveLogItem();
  sub_8C8C();
  _os_log_fault_impl(&dword_0, v1, OS_LOG_TYPE_FAULT, "HDSignedClinicalDataManager._storeDataFromClinicalItem failed to retrieve HDClinicalAccount for HDClinicalAccountEntity with persistentID %lld, error: %{public}@", v4, 0x16u);
}

void sub_A4238(void *a1)
{
  v2 = a1;
  sub_2BC40();
  v3 = HKSensitiveLogItem();
  sub_B068();
  sub_48D9C(&dword_0, v4, v5, "HDSignedClinicalDataManager.storeDataFromParsingResult failed to retrieve account for record with error: %{public}@", v6, v7, v8, v9, v10);
}

void sub_A42C8(void *a1)
{
  v2 = a1;
  sub_2BC40();
  v3 = HKSensitiveLogItem();
  sub_B068();
  sub_48D9C(&dword_0, v4, v5, "HDSignedClinicalDataManager.deleteSignedClinicalDataRecord cannot delete record %{public}@ because it doesn't have a sync identifier", v6, v7, v8, v9, v10);
}

void sub_A43CC(uint64_t a1, void *a2)
{
  sub_5C7E0(a1, a2);
  sub_17CB4();
  v4 = objc_opt_class();
  NSStringFromClass(v4);
  objc_claimAutoreleasedReturnValue();
  sub_2BC40();
  v5 = HKSensitiveLogItem();
  sub_8C8C();
  sub_172A4(&dword_0, v6, v7, "%{public}@: reverifySignatureForRecord failed to update record after verifying signature %{public}@", v8, v9, v10, v11, v12);
}

void sub_A4474(uint64_t a1, void *a2)
{
  sub_5C7E0(a1, a2);
  sub_17CB4();
  v4 = objc_opt_class();
  NSStringFromClass(v4);
  objc_claimAutoreleasedReturnValue();
  sub_2BC40();
  v5 = HKSensitiveLogItem();
  sub_8C8C();
  sub_172A4(&dword_0, v6, v7, "%{public}@: reverifySignatureForRecord failed to process records via XPC client with error %{public}@", v8, v9, v10, v11, v12);
}

void sub_A451C(uint64_t a1, void *a2, NSObject *a3)
{
  v5 = *(a1 + 56);
  v6 = objc_opt_class();
  v7 = NSStringFromClass(v6);
  v8 = [a2 gatewayExternalID];
  if (v8)
  {
    v9 = @"gateway";
  }

  else
  {
    v9 = @"issuer";
  }

  v10 = [a2 gatewayExternalID];
  v11 = v10;
  if (!v10)
  {
    v11 = [a2 issuerIdentifier];
  }

  v12 = 138543874;
  v13 = v7;
  v14 = 2114;
  v15 = v9;
  v16 = 2114;
  v17 = v11;
  _os_log_error_impl(&dword_0, a3, OS_LOG_TYPE_ERROR, "%{public}@: failed to find account for codable record with %{public}@ %{public}@", &v12, 0x20u);
  if (!v10)
  {
  }
}

void sub_A464C()
{
  sub_13D18();
  sub_5C7F8();
  _os_log_fault_impl(v0, v1, OS_LOG_TYPE_FAULT, v2, v3, 0x16u);
}

void sub_A46C4()
{
  sub_13D18();
  sub_5C7F8();
  sub_5C7B8(v0, v1, v2, v3, v4);
}

void sub_A4734()
{
  sub_13D18();
  sub_5C7F8();
  _os_log_fault_impl(v0, v1, OS_LOG_TYPE_FAULT, v2, v3, 0x16u);
}

void sub_A47AC()
{
  sub_13D18();
  sub_5C7F8();
  sub_5C7B8(v0, v1, v2, v3, v4);
}

void sub_A481C(uint64_t a1, void *a2)
{
  sub_5C7E0(a1, a2);
  sub_17CB4();
  v4 = objc_opt_class();
  NSStringFromClass(v4);
  objc_claimAutoreleasedReturnValue();
  sub_2BC40();
  v5 = HKSensitiveLogItem();
  sub_8C8C();
  sub_172A4(&dword_0, v6, v7, "%{public}@.triggerDownloadIssuerRegistryWithOptions received error %{public}@", v8, v9, v10, v11, v12);
}

void sub_A48C4(uint64_t a1, void *a2)
{
  sub_5C7E0(a1, a2);
  sub_17CB4();
  v4 = objc_opt_class();
  NSStringFromClass(v4);
  objc_claimAutoreleasedReturnValue();
  sub_2BC40();
  v5 = HKSensitiveLogItem();
  sub_8C8C();
  sub_172A4(&dword_0, v6, v7, "%{public}@.triggerDownloadPublicKeysWithOptions received error %{public}@", v8, v9, v10, v11, v12);
}

void sub_A496C(void *a1, void *a2)
{
  v4 = a1;
  sub_17CB4();
  v5 = objc_opt_class();
  NSStringFromClass(v5);
  objc_claimAutoreleasedReturnValue();
  sub_2BC40();
  v6 = HKSensitiveLogItem();
  sub_8C8C();
  sub_172A4(&dword_0, v7, v8, "%{public}@: updateIssuerTitlesUsingRegistry failed with error: %{public}@", v9, v10, v11, v12, v13);
}

void sub_A4A1C(void *a1)
{
  v2 = a1;
  sub_2BC40();
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  sub_B068();
  sub_2BC30();
  _os_log_debug_impl(v5, v6, v7, v8, v9, 0xCu);
}

void sub_A4AB8(void *a1)
{
  v2 = a1;
  sub_17CB4();
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  sub_13D18();
  sub_8CA4(&dword_0, v5, v6, "%{public}@: Scheduling SCD extraction on maintenance coordinator with reason: %{public}@", v7, v8, v9, v10, v11);
}

void sub_A4B5C(uint64_t a1, uint64_t a2)
{
  v4 = +[NSAssertionHandler currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"HDClinicalIngestionTaskWorkItem.m" lineNumber:72 description:{@"Invalid parameter not satisfying: %@", @"(resourceFetchOperation == nil) != (targetResourceURLsBySourceResource == nil)"}];
}

void sub_A4BD8(uint64_t a1, uint64_t a2)
{
  v4 = +[NSAssertionHandler currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"HDHealthRecordsPeriodicIngestionManager.m" lineNumber:47 description:{@"Invalid parameter not satisfying: %@", @"[profile isKindOfClass:[HDPrimaryProfile class]]"}];
}

void sub_A4C54(void *a1, void *a2)
{
  v3 = a1;
  v4 = [a2 logPrefix];
  sub_B068();
  sub_168D8(&dword_0, v5, v6, "%{public}@ triggering background ingestion on all profiles", v7, v8, v9, v10, v11);
}

void sub_A4CE8(void *a1, void *a2)
{
  v3 = a1;
  v4 = [a2 logPrefix];
  sub_B068();
  sub_168D8(&dword_0, v5, v6, "%{public}@ waiting on background ingestions to finish", v7, v8, v9, v10, v11);
}

void sub_A4D7C(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v5 = a2;
  v6 = [sub_17CB4() logPrefix];
  v7 = [*(a1 + 40) count];
  v8 = 138543618;
  v9 = v6;
  v10 = 2048;
  v11 = v7;
  _os_log_debug_impl(&dword_0, v2, OS_LOG_TYPE_DEBUG, "%{public}@ all background ingestions have completed, %lu with errors", &v8, 0x16u);
}

void sub_A4E40(void *a1, uint64_t a2, void *a3)
{
  v5 = a1;
  v6 = [sub_17CB4() logPrefix];
  v13 = [a3 name];
  sub_172A4(&dword_0, v7, v8, "%{public}@ periodic activity %{public}@ is not an expected activity, not configuring", v9, v10, v11, v12, 2u);
}

void sub_A4F00(void *a1)
{
  v2 = a1;
  v3 = [sub_17CB4() logPrefix];
  sub_B068();
  sub_172A4(&dword_0, v4, v5, "%{public}@ periodic activity %{public}@ is not an expected activity, not performing", v6, v7, v8, v9, v10);
}

void sub_A4FEC(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v5 = a2;
  v6 = [sub_17CB4() logPrefix];
  v7 = *(a1 + 40);
  sub_B068();
  sub_172A4(&dword_0, v8, v9, "%{public}@ periodic activity %{public}@ completed with an error case", v10, v11, v12, v13, v14);
}

void sub_A5098(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = *(a1 + 32);
  v6 = a2;
  v7 = [v5 debugDescription];
  v8 = *(a1 + 48);
  v9 = HKClinicalDataCollectionReasonToString();
  v10 = 138543874;
  v11 = v7;
  v12 = 2114;
  v13 = v9;
  v14 = 2114;
  v15 = a3;
  _os_log_error_impl(&dword_0, v6, OS_LOG_TYPE_ERROR, "%{public}@: opt-in data collection (%{public}@) error: %{public}@", &v10, 0x20u);
}

void sub_A5178(void *a1, void *a2)
{
  v3 = a1;
  v4 = [a2 debugDescription];
  v5 = 138543362;
  v6 = v4;
  _os_log_error_impl(&dword_0, v3, OS_LOG_TYPE_ERROR, "%{public}@: Cannot begin opt-in data collection without access to protected data", &v5, 0xCu);
}

void sub_A5220(void *a1, void *a2)
{
  v3 = a1;
  v4 = [a2 debugDescription];
  v5 = [a2 profile];
  v6 = [v5 daemon];
  v7 = [v6 primaryProfile];
  v8 = [a2 profile];
  v9 = 138543874;
  v10 = v4;
  v11 = 2114;
  v12 = v7;
  v13 = 2114;
  v14 = v8;
  _os_log_fault_impl(&dword_0, v3, OS_LOG_TYPE_FAULT, "%{public}@ does not have an ontology configuration provider on primary profile %{public}@ of profile %{public}@", &v9, 0x20u);
}

void sub_A5338(uint64_t a1, uint64_t a2, os_log_t log)
{
  v3 = *(a1 + 56);
  v4 = 138543618;
  v5 = v3;
  v6 = 2048;
  v7 = a2;
  _os_log_error_impl(&dword_0, log, OS_LOG_TYPE_ERROR, "%{public}@: Error getting resource %llu", &v4, 0x16u);
}

void sub_A53C4(void *a1, void *a2)
{
  v3 = a1;
  v4 = [a2 debugDescription];
  sub_1728C();
  sub_172A4(&dword_0, v5, v6, "%{public}@: Couldn't initialize a PII redactor: %{public}@", v7, v8, v9, v10, v11);
}

void sub_A5464(void *a1, void *a2)
{
  v3 = a1;
  v4 = [a2 debugDescription];
  sub_1728C();
  sub_172A4(&dword_0, v5, v6, "%{public}@: Error %{public}@, while submitting opt-in data", v7, v8, v9, v10, v11);
}

void sub_A5504(uint64_t a1, uint64_t a2)
{
  v4 = +[NSAssertionHandler currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"HDOriginalSignedClinicalDataRecordEntity+HealthRecordsPlugin.m" lineNumber:85 description:{@"Invalid parameter not satisfying: %@", @"row != NULL"}];
}

void sub_A5668(void *a1, void *a2)
{
  v3 = a1;
  [a2 persistentID];
  sub_B068();
  _os_log_fault_impl(&dword_0, v3, OS_LOG_TYPE_FAULT, "HDOriginalSignedClinicalDataRecordEntity found more than one HKSignedClinicalDataRecord associated with persistent ID %lu", v4, 0xCu);
}

void sub_A5700(uint64_t a1, uint8_t *buf, uint64_t a3, os_log_t log)
{
  v4 = *(*a1 + 40);
  *buf = 134218242;
  *(buf + 4) = a3;
  *(buf + 6) = 2114;
  *(buf + 14) = v4;
  _os_log_fault_impl(&dword_0, log, OS_LOG_TYPE_FAULT, "HDOriginalSignedClinicalDataRecordEntity: unable to retrieve original SCD codable from db %lld: %{public}@", buf, 0x16u);
}

void sub_A5760(uint64_t a1, NSObject *a2)
{
  v2 = *(a1 + 56);
  v3 = 138543362;
  v4 = v2;
  _os_log_debug_impl(&dword_0, a2, OS_LOG_TYPE_DEBUG, "%{public}@ replaceOriginalRecordWithSyncIdentifier attempted to replace signature status for record but record already had that signature status. Skipping.", &v3, 0xCu);
}

void sub_A57DC(void *a1, void *a2, uint64_t a3)
{
  v5 = a1;
  v6 = [a2 UUID];
  sub_B068();
  v8 = 2114;
  v9 = a3;
  _os_log_fault_impl(&dword_0, v5, OS_LOG_TYPE_FAULT, "HDOriginalSignedClinicalDataRecordEntity did process a clinical record with an invalid _HKPrivateMetadataKeyMedicalRecordUUID metadata entry. Record: %{public}@, metadata entry: %{public}@", v7, 0x16u);
}

void sub_A5898(uint64_t a1, uint64_t a2)
{
  v4 = +[NSAssertionHandler currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"HDOriginalSignedClinicalDataRecordEntity+HealthRecordsPlugin.m" lineNumber:1595 description:{@"Invalid parameter not satisfying: %@", @"medicalRecordUUID"}];
}

void sub_A5914(uint64_t a1, uint64_t a2)
{
  v4 = +[NSAssertionHandler currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"HDClinicalContentAnalyticsAccumulator.m" lineNumber:50 description:{@"Invalid parameter not satisfying: %@", @"coordinator"}];
}

void sub_A5990(uint64_t a1, NSObject *a2)
{
  v4 = objc_opt_class();
  v5 = *(a1 + 8);
  v6 = v4;
  v7 = 138412546;
  v8 = v4;
  v9 = 2048;
  v10 = [v5 count];
  _os_log_debug_impl(&dword_0, a2, OS_LOG_TYPE_DEBUG, "%@ submitting %zd unknown records metrics as com.apple.HealthRecords.ProcessingExtractionFailureEvent to CoreAnalytics", &v7, 0x16u);
}

void sub_A5A50(uint64_t a1, uint64_t a2)
{
  v4 = +[NSAssertionHandler currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"HDCPSFetchJSONTask.m" lineNumber:77 description:@"Task must be resumed before waiting"];
}

void sub_A5AC4(void *a1, uint64_t a2, void *a3)
{
  v4 = a1;
  v5 = objc_opt_class();
  v6 = [a3 URL];
  v7 = [v6 absoluteString];
  v8 = HKSensitiveLogItem();
  v9 = 138543618;
  v10 = v5;
  v11 = 2112;
  v12 = v8;
  _os_log_debug_impl(&dword_0, v4, OS_LOG_TYPE_DEBUG, "%{public}@ starting at %@", &v9, 0x16u);
}

void sub_A5BB8(uint64_t a1)
{
  v2 = +[NSAssertionHandler currentHandler];
  [v2 handleFailureInMethod:*(a1 + 56) object:*(a1 + 32) file:@"HDCPSFetchJSONTask.m" lineNumber:99 description:{@"Invalid parameter not satisfying: %@", @"response == nil || (response != nil && [response isKindOfClass:NSHTTPURLResponse.class])"}];
}

void sub_A5C30(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = objc_opt_class();
  v6 = [*(a1 + 40) URL];
  v7 = [v6 absoluteString];
  v8 = HKSensitiveLogItem();
  v9 = HKSensitiveLogItem();
  v10 = 138543874;
  v11 = v5;
  v12 = 2112;
  v13 = v8;
  v14 = 2112;
  v15 = v9;
  _os_log_error_impl(&dword_0, v4, OS_LOG_TYPE_ERROR, "%{public}@ error response for %@: %@", &v10, 0x20u);
}

void sub_A5D44(uint64_t a1, NSObject *a2)
{
  v2 = 138543362;
  v3 = a1;
  _os_log_error_impl(&dword_0, a2, OS_LOG_TYPE_ERROR, "Provider Service response error: %{public}@", &v2, 0xCu);
}

void sub_A5DBC(uint64_t a1, NSObject *a2)
{
  v2 = 138543362;
  v3 = a1;
  _os_log_fault_impl(&dword_0, a2, OS_LOG_TYPE_FAULT, "HDOriginalSignedClinicalDataRecordSyncEntity expects HDCodableOriginalSignedClinicalDataRecord, error: %{public}@", &v2, 0xCu);
}

void sub_A5E34(uint64_t a1, uint64_t a2)
{
  v4 = +[NSAssertionHandler currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"HDClinicalContentAnalyticsUnknownRecordsMetric.m" lineNumber:43 description:{@"Invalid parameter not satisfying: %@", @"[item.medicalRecord isKindOfClass:[HKUnknownRecord class]]"}];
}

void sub_A5EB0(uint64_t a1, uint64_t a2)
{
  v4 = +[NSAssertionHandler currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"HDClinicalContentAnalyticsUnknownRecordsMetric.m" lineNumber:147 description:{@"Invalid parameter not satisfying: %@", @"host"}];
}

void sub_A5F2C(uint64_t a1, uint64_t a2)
{
  v4 = +[NSAssertionHandler currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"HDClinicalContentAnalyticsUnknownRecordsMetric.m" lineNumber:148 description:{@"Invalid parameter not satisfying: %@", @"resourceType"}];
}

void sub_A5FA8(void *a1, void *a2)
{
  v3 = a1;
  v4 = [a2 debugDescription];
  v5 = 138543362;
  v6 = v4;
  _os_log_debug_impl(&dword_0, v3, OS_LOG_TYPE_DEBUG, "%{public}@ skipping file import", &v5, 0xCu);
}

void sub_A6050(uint64_t a1, uint64_t a2)
{
  v4 = +[NSAssertionHandler currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"HDClinicalRecordEntity+HealthRecordsPlugin.m" lineNumber:166 description:@"Clinical records without the original FHIR resource ROWID in their metadata cannot be inserted"];
}

void sub_A60C4(uint64_t a1, uint64_t a2, os_log_t log)
{
  v3 = 138543618;
  v4 = a1;
  v5 = 2114;
  v6 = a2;
  _os_log_error_impl(&dword_0, log, OS_LOG_TYPE_ERROR, "%{public}@ Failed to update MedicalDownloadableAttachments for medical records being re-inserted with error: %{public}@", &v3, 0x16u);
}

void sub_A614C()
{
  v7 = +[NSAssertionHandler currentHandler];
  v0 = [NSString stringWithUTF8String:"NSString * _Nonnull _encryptClientSecret(NSString * _Nonnull __strong)"];
  [sub_72264(v0 v1];
}

void sub_A61D4()
{
  v7 = +[NSAssertionHandler currentHandler];
  v0 = [NSString stringWithUTF8String:"NSString * _Nonnull _encryptClientSecret(NSString * _Nonnull __strong)"];
  [sub_72264(v0 v1];
}

void sub_A625C(void *a1)
{
  v1 = a1;
  objc_opt_class();
  sub_B068();
  v3 = v2;
  sub_1160C(&dword_0, v4, v5, "%{public}@ gatewayScopeWithError failed to get the scope string from the authorize schema (authorizationScopeString == nil)", v6, v7, v8, v9, v10);
}

void sub_A62F0(void *a1)
{
  v1 = a1;
  objc_opt_class();
  sub_B068();
  v3 = v2;
  sub_1160C(&dword_0, v4, v5, "%{public}@ gatewayScopeWithError failed to get the authorize schema (authorizeSchema == nil)", v6, v7, v8, v9, v10);
}

void sub_A6384()
{
  v7 = +[NSAssertionHandler currentHandler];
  v0 = [NSString stringWithUTF8String:"NSString * _Nonnull _decryptClientSecret(NSString * _Nonnull __strong)"];
  [sub_72264(v0 v1];
}

void sub_A640C()
{
  v7 = +[NSAssertionHandler currentHandler];
  v0 = [NSString stringWithUTF8String:"NSString * _Nonnull _decryptClientSecret(NSString * _Nonnull __strong)"];
  [sub_72264(v0 v1];
}

void sub_A6508(void *a1, void *a2, uint64_t a3)
{
  v5 = a1;
  v6 = [a2 debugDescription];
  sub_B068();
  v8 = 2114;
  v9 = a3;
  _os_log_error_impl(&dword_0, v5, OS_LOG_TYPE_ERROR, "%{public}@ found PKCE algorithm but was not a string: %{public}@", v7, 0x16u);
}

void sub_A65C4()
{
  v7 = +[NSAssertionHandler currentHandler];
  v0 = [NSString stringWithUTF8String:"NSData * _Nonnull _encryptWithClientSecretKey(NSData * _Nonnull __strong)"];
  [sub_72264(v0 v1];
}

void sub_A664C(void *a1, uint8_t *buf, os_log_t log, void *a4)
{
  *buf = 138477827;
  *(buf + 4) = a1;
  _os_log_fault_impl(&dword_0, log, OS_LOG_TYPE_FAULT, "HDMedicalDownloadableAttachmentEntity found more than one HKMedicalDownloadableAttachment with matching webURL: %{private}@", buf, 0xCu);
}

void sub_A66F0(void *a1, void *a2)
{
  v3 = a1;
  v4 = [a2 debugDescription];
  sub_774A4();
  sub_774BC(&dword_0, v5, v6, "%{public}@ downloadable attachment %{public}@, has neither a webURL nor an inlineDataChecksum", v7, v8, v9, v10, v11);
}

void sub_A6794(void *a1, void *a2)
{
  v3 = a1;
  v4 = [a2 debugDescription];
  sub_774A4();
  sub_774BC(&dword_0, v5, v6, "%{public}@ downloadable attachment %{public}@, has no accountIdentifier", v7, v8, v9, v10, v11);
}

void sub_A6928(void *a1, void *a2)
{
  v3 = a2;
  v4 = [a1 profile];
  v5 = [v4 healthRecordsExtension];
  v6 = [a1 profile];
  v7 = 138543874;
  v8 = a1;
  v9 = 2114;
  v10 = v5;
  v11 = 2114;
  v12 = v6;
  _os_log_fault_impl(&dword_0, v3, OS_LOG_TYPE_FAULT, "%{public}@ unable to find account manager on health records extension %{public}@ for profile %{public}@", &v7, 0x20u);
}

void sub_A6A18(void *a1)
{
  v2 = a1;
  v3 = [sub_2BC40() taskError];
  sub_B068();
  sub_79F38();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0xCu);
}

void sub_A6AB0(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [sub_2BC40() taskError];
  sub_79F48();
  sub_79F38();
  _os_log_error_impl(v6, v7, v8, v9, v10, 0x16u);
}

void sub_A6B54(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [sub_2BC40() taskError];
  sub_79F48();
  sub_79F38();
  _os_log_error_impl(v6, v7, v8, v9, v10, 0x16u);
}

void sub_A6BF8()
{
  sub_2BC5C();
  v2 = v1;
  v3 = [sub_17CB4() logDescription];
  sub_B068();
  sub_79F60();
  _os_log_debug_impl(v4, v5, OS_LOG_TYPE_DEBUG, v6, v7, 0x16u);
}

void sub_A6CA8()
{
  sub_2BC5C();
  v2 = v1;
  v3 = [sub_17CB4() logDescription];
  sub_1728C();
  sub_79F60();
  _os_log_error_impl(v4, v5, OS_LOG_TYPE_ERROR, v6, v7, 0x16u);
}

void sub_A6D4C()
{
  sub_2BC5C();
  v2 = v1;
  v3 = [sub_17CB4() logDescription];
  sub_1728C();
  sub_79F60();
  _os_log_error_impl(v4, v5, OS_LOG_TYPE_ERROR, v6, v7, 0x16u);
}

void sub_A6DF0()
{
  sub_2BC5C();
  v2 = v1;
  v3 = [sub_17CB4() logDescription];
  sub_1728C();
  sub_79F60();
  _os_log_debug_impl(v4, v5, OS_LOG_TYPE_DEBUG, v6, v7, 0x16u);
}

void sub_A6E94(void *a1)
{
  v2 = a1;
  v3 = [sub_2BC40() logDescription];
  sub_B068();
  _os_log_fault_impl(&dword_0, v1, OS_LOG_TYPE_FAULT, "%{public}@: missing notification manager. Can't post notification", v4, 0xCu);
}

void sub_A6F34(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = *(a1 + 32);
  v6 = a2;
  v7 = [v5 logDescription];
  v8 = *(a1 + 40);
  sub_B068();
  v11 = 2114;
  v12 = v9;
  v13 = 2114;
  v14 = a3;
  _os_log_error_impl(&dword_0, v6, OS_LOG_TYPE_ERROR, "%{public}@: posting new health records notification for task %{public}@ failed: %{public}@", v10, 0x20u);
}

void sub_A7000(uint64_t a1, uint64_t a2, os_log_t log)
{
  v3 = *(a1 + 32);
  v4 = 138543618;
  v5 = v3;
  v6 = 2114;
  v7 = a2;
  _os_log_error_impl(&dword_0, log, OS_LOG_TYPE_ERROR, "Posting new health lab records notification for task %{public}@ failed: %{public}@", &v4, 0x16u);
}

void sub_A708C(uint64_t a1, uint64_t a2)
{
  v4 = +[NSAssertionHandler currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"HDClinicalAPIReminderEntity.m" lineNumber:448 description:{@"Invalid parameter not satisfying: %@", @"self.superclassEncoder == nil"}];
}

void sub_A7108(uint64_t a1, uint64_t a2, os_log_t log)
{
  v3 = *(a1 + 32);
  v4 = 138543619;
  v5 = v3;
  v6 = 2113;
  v7 = a2;
  _os_log_error_impl(&dword_0, log, OS_LOG_TYPE_ERROR, "%{public}@ Completed runMedicalDownloadableAttachmentPipelineWithCompletion with error %{private}@", &v4, 0x16u);
}

void sub_A71FC()
{
  sub_1F600();
  v2 = v1;
  v3 = [sub_83060() localizedDescription];
  v4 = HKSensitiveLogItem();
  sub_8C8C();
  sub_83050();
  _os_log_error_impl(v5, v6, v7, v8, v9, 0x16u);
}

void sub_A72AC()
{
  sub_1F600();
  v2 = v1;
  v3 = [sub_83060() localizedDescription];
  v4 = HKSensitiveLogItem();
  sub_8C8C();
  sub_83050();
  _os_log_error_impl(v5, v6, v7, v8, v9, 0x16u);
}

void sub_A735C()
{
  sub_1F600();
  v2 = v1;
  v3 = [sub_83060() localizedDescription];
  v4 = HKSensitiveLogItem();
  sub_8C8C();
  sub_83050();
  _os_log_error_impl(v5, v6, v7, v8, v9, 0x16u);
}

void sub_A740C()
{
  sub_1F600();
  v2 = v1;
  v3 = [sub_83060() localizedDescription];
  v4 = HKSensitiveLogItem();
  sub_8C8C();
  sub_83050();
  _os_log_error_impl(v5, v6, v7, v8, v9, 0x16u);
}

void sub_A7530()
{
  sub_1F600();
  v2 = v1;
  v3 = [sub_83060() localizedDescription];
  v4 = HKSensitiveLogItem();
  sub_8C8C();
  sub_83050();
  _os_log_error_impl(v5, v6, v7, v8, v9, 0x16u);
}

void sub_A75E0(uint64_t a1, void *a2, void *a3)
{
  v4 = *(a1 + 32);
  v5 = a2;
  v6 = [a3 localizedDescription];
  v7 = HKSensitiveLogItem();
  v8 = 138543618;
  v9 = v4;
  v10 = 2114;
  v11 = v7;
  _os_log_error_impl(&dword_0, v5, OS_LOG_TYPE_ERROR, "%{public}@: downloading batch failed with error: %{public}@", &v8, 0x16u);
}

void sub_A76B0()
{
  sub_1F600();
  v2 = v1;
  sub_83060();
  v3 = HKSensitiveLogItem();
  sub_8C8C();
  _os_log_fault_impl(&dword_0, v0, OS_LOG_TYPE_FAULT, "%{public}@: Failed to remove local file after handing off to HKAttachment. Error: %{public}@", v4, 0x16u);
}