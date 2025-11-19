uint64_t sub_1BDC()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1C14()
{
  v1 = sub_A9F88();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 23) & 0xFFFFFFFFFFFFFFF8;
  v7 = *(v0 + 16);
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v4, v1);
  v8 = *(v0 + v5 + 8);

  v9 = *(v0 + v6 + 8);

  return _swift_deallocObject(v0, v6 + 16, v3 | 7);
}

uint64_t sub_1D14()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1D4C()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  v2 = *(v0 + 56);

  return _swift_deallocObject(v0, 64, 7);
}

uint64_t sub_1D9C()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  if (*(v0 + 56))
  {
    v2 = *(v0 + 64);
  }

  return _swift_deallocObject(v0, 72, 7);
}

void sub_21B4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id sub_21D8(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v6 = +[HDSignedClinicalDataIssuerEntity propertiesForCodable];
  v7 = *(*(a1 + 56) + 8) + 24;
  v8 = *(a1 + 32);
  v9 = [*(a1 + 40) database];
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_231C;
  v15[3] = &unk_105720;
  v16 = *(a1 + 40);
  v17 = v5;
  v18 = *(a1 + 48);
  v11 = *(a1 + 64);
  v10 = *(a1 + 72);
  v12 = v5;
  v13 = [HDSignedClinicalDataIssuerEntity enumerateEntitiesForSyncWithProperties:v6 predicate:0 session:v8 syncAnchorRange:v11 limit:v10 lastSyncAnchor:0 healthDatabase:v7 error:v9 block:a3, v15];

  return v13;
}

BOOL sub_231C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10 = [HDSignedClinicalDataIssuerEntity codableWithRow:a4 error:a8];
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

BOOL sub_2670(id a1, HDSyncCodable *a2)
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
      sub_9BD98(v4, v5);
    }
  }

  return v3 != 0;
}

intptr_t sub_3A48(uint64_t a1)
{
  v2 = [*(a1 + 32) context];
  v3 = [v2 shouldSkipFetch];

  v4 = *(a1 + 32);
  if (v3)
  {
    v5 = [v4 context];
    v6 = [v5 inputFileHandle];

    _HKInitializeLogging();
    v7 = HKLogHealthRecords;
    v8 = os_log_type_enabled(HKLogHealthRecords, OS_LOG_TYPE_DEFAULT);
    if (v6)
    {
      if (v8)
      {
        v10 = *(a1 + 32);
        v9 = *(a1 + 40);
        v11 = v7;
        v12 = [v9 identifier];
        v21 = 138543618;
        v22 = v10;
        v23 = 2114;
        v24 = v12;
        _os_log_impl(&dword_0, v11, OS_LOG_TYPE_DEFAULT, "%{public}@ Account %{public}@: performing file import", &v21, 0x16u);
      }

      [*(a1 + 32) _performFileImportWithAccount:*(a1 + 40)];
    }

    else if (v8)
    {
      v17 = *(a1 + 32);
      v16 = *(a1 + 40);
      v18 = v7;
      v19 = [v16 identifier];
      v21 = 138543618;
      v22 = v17;
      v23 = 2114;
      v24 = v19;
      _os_log_impl(&dword_0, v18, OS_LOG_TYPE_DEFAULT, "%{public}@ Account %{public}@: ingestion skipping fetch", &v21, 0x16u);
    }
  }

  else
  {
    [v4 _performFetchWithAccount:*(a1 + 40) batchingSemaphore:*(a1 + 48)];
    v13 = [*(a1 + 32) context];
    v14 = [v13 inputFileHandle];

    if (v14)
    {
      _HKInitializeLogging();
      v15 = HKLogHealthRecords;
      if (os_log_type_enabled(HKLogHealthRecords, OS_LOG_TYPE_FAULT))
      {
        sub_9BE98(v15);
      }
    }
  }

  result = dispatch_semaphore_signal(*(a1 + 48));
  atomic_store(0, (*(*(a1 + 56) + 8) + 32));
  return result;
}

void sub_3C58(uint64_t a1)
{
  [*(a1 + 32) _prepareExtractionOfAccount:*(a1 + 40)];
  while ((atomic_exchange((*(*(a1 + 56) + 8) + 32), 1u) & 1) != 0)
  {
    v2 = dispatch_time(0, 10000000000);
    dispatch_semaphore_wait(*(a1 + 48), v2);
    [*(a1 + 32) _performExtractionWithAccount:*(a1 + 40)];
  }

  [*(a1 + 32) _performExtractionWithAccount:*(a1 + 40)];
  _HKInitializeLogging();
  v3 = HKLogHealthRecords;
  if (os_log_type_enabled(HKLogHealthRecords, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 32);
    v4 = *(a1 + 40);
    v6 = v3;
    v7 = [v4 identifier];
    v8 = 138543618;
    v9 = v5;
    v10 = 2114;
    v11 = v7;
    _os_log_impl(&dword_0, v6, OS_LOG_TYPE_DEFAULT, "%{public}@ Account %{public}@: extraction finished", &v8, 0x16u);
  }
}

void sub_59C8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, char a44, uint64_t a45, uint64_t a46, uint64_t a47, char a48)
{
  _Block_object_dispose(&a44, 8);
  _Block_object_dispose(&a48, 8);
  _Unwind_Resume(a1);
}

void sub_5A64(void *a1, uint64_t a2)
{
  v4 = *(a1[5] + 8);
  v5 = *(a1[6] + 8);
  os_unfair_lock_lock(v4 + 8);
  v6 = *(v5 + 24) + a2;
  if (v6 <= 0x31)
  {
    v7 = v6;
  }

  else
  {
    v7 = 0;
  }

  *(v5 + 24) = v7;
  os_unfair_lock_unlock(v4 + 8);
  if (v6 >= 0x32)
  {
    v8 = a1[4];

    dispatch_semaphore_signal(v8);
  }
}

BOOL sub_5AEC(id a1, HKClinicalGatewayEndpointSchema *a2)
{
  v2 = [(HKClinicalGatewayEndpointSchema *)a2 name];
  v3 = [v2 isEqualToString:@"Observation"];

  return v3;
}

id sub_6A70(void *a1)
{
  v2 = a1[6];
  if (v2)
  {
    (*(v2 + 16))(v2, a1[4], a1[5]);
  }

  v3 = *(a1[4] + 56);

  return [v3 invalidate];
}

id sub_6CE8(id a1, HDClinicalIngestionTaskPerAccountInfo *a2)
{
  v2 = a2;
  v3 = [HKClinicalIngestionPerAccountOutcome alloc];
  v4 = [(HDClinicalIngestionTaskPerAccountInfo *)v2 accountIdentifier];
  v5 = [(HDClinicalIngestionTaskPerAccountInfo *)v2 outcomeInfo];

  v6 = [v3 initWithAccountIdentifier:v4 info:v5];

  return v6;
}

void sub_723C(id a1, HDClinicalAccount *a2, id a3)
{
  v5 = a3;
  v6 = a2;
  v10 = [(HDClinicalAccount *)v6 identifier];
  v7 = [HDClinicalIngestionTaskPerAccountInfo alloc];
  v8 = [(HDClinicalAccount *)v6 identifier];

  v9 = [(HDClinicalIngestionTaskPerAccountInfo *)v7 initWithAccountIdentifier:v8];
  (*(a3 + 2))(v5, v10, v9);
}

void sub_83A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_83BC(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_83D4(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_84AC;
  v8[3] = &unk_1059D8;
  v6 = *(a1 + 48);
  v12 = *(a1 + 56);
  v13 = *(a1 + 64);
  v9 = v6;
  v10 = *(a1 + 32);
  v11 = v3;
  v7 = v3;
  [v4 consumeMetricsFromHandler:v5 completion:v8];
}

void sub_84AC(uint64_t a1, void *a2)
{
  v4 = a2;
  objc_storeStrong((*(*(a1 + 56) + 8) + 40), a2);
  if (*(a1 + 64) == 1)
  {
    v5 = *(a1 + 32);
    v6 = *(a1 + 40);
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_858C;
    v7[3] = &unk_1059B0;
    v8 = *(a1 + 48);
    [v5 submitClinicalIngestionAnalyticsFromAccumulator:v6 completion:v7];
  }

  else
  {
    (*(*(a1 + 48) + 16))();
  }
}

BOOL sub_874C(id a1, NSError *a2)
{
  v2 = a2;
  v3 = [(NSError *)v2 domain];
  v4 = [v3 isEqualToString:HKHTTPErrorDomain];

  if (v4)
  {
    v5 = [(NSError *)v2 code]!= &stru_158.nreloc;
  }

  else
  {
    v5 = 1;
  }

  return v5;
}

void sub_8CA4(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_debug_impl(a1, v9, OS_LOG_TYPE_DEBUG, a4, &a9, 0x16u);
}

void sub_95E8(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  if (!v9)
  {
    v10 = [v8 statusCode];
    _HKInitializeLogging();
    v11 = HKLogHealthRecords;
    if (os_log_type_enabled(HKLogHealthRecords, OS_LOG_TYPE_INFO))
    {
      *buf = 134217984;
      v21 = v10;
      _os_log_impl(&dword_0, v11, OS_LOG_TYPE_INFO, "Received response for opt-in study device registration with status code %ld", buf, 0xCu);
    }

    if ((v10 - 200) >= 0x64)
    {
      v14 = [[NSString alloc] initWithData:v7 encoding:4];
      _HKInitializeLogging();
      v18 = HKLogHealthRecords;
      if (os_log_type_enabled(HKLogHealthRecords, OS_LOG_TYPE_ERROR))
      {
        sub_9C3D8(v14, v10, v18);
      }

      goto LABEL_27;
    }

    v19 = 0;
    v12 = [NSJSONSerialization JSONObjectWithData:v7 options:1 error:&v19];
    v13 = v19;
    v14 = v13;
    if (!v12 || v13)
    {
      _HKInitializeLogging();
      if (os_log_type_enabled(HKLogHealthRecords, OS_LOG_TYPE_ERROR))
      {
        sub_9C510();
      }

      goto LABEL_26;
    }

    v15 = [v12 objectForKeyedSubscript:@"subjectId"];
    v16 = [v12 objectForKeyedSubscript:@"token"];
    if (v15)
    {
      v17 = [[NSUUID alloc] initWithUUIDString:v15];
      if (v17)
      {
LABEL_20:
        if (v16)
        {
          if (v17)
          {
            os_unfair_lock_lock((*(a1 + 32) + 24));
            [*(a1 + 32) setSubjectID:v15];
            [*(a1 + 32) setSubjectToken:v16];
            os_unfair_lock_unlock((*(a1 + 32) + 24));
            [*(a1 + 32) enableDataCollection];
          }
        }

        else
        {
          _HKInitializeLogging();
          if (os_log_type_enabled(HKLogHealthRecords, OS_LOG_TYPE_ERROR))
          {
            sub_9C4D0();
          }
        }

LABEL_26:
LABEL_27:

        goto LABEL_28;
      }

      _HKInitializeLogging();
      if (os_log_type_enabled(HKLogHealthRecords, OS_LOG_TYPE_ERROR))
      {
        sub_9C450();
      }
    }

    else
    {
      _HKInitializeLogging();
      if (os_log_type_enabled(HKLogHealthRecords, OS_LOG_TYPE_ERROR))
      {
        sub_9C490();
      }
    }

    v17 = 0;
    goto LABEL_20;
  }

  _HKInitializeLogging();
  if (os_log_type_enabled(HKLogHealthRecords, OS_LOG_TYPE_ERROR))
  {
    sub_9C368();
  }

LABEL_28:
}

void sub_B074(void *a1, uint64_t a2, os_log_t log, const char *a4, ...)
{
  va_start(va, a4);

  _os_log_error_impl(a1, log, OS_LOG_TYPE_ERROR, a4, va, 0x16u);
}

uint64_t sub_B240(uint64_t a1)
{
  v2 = HDSQLiteColumnWithNameAsString();
  v3 = HDSQLiteColumnWithNameAsDate();
  v4 = v3;
  if (v2)
  {
    v5 = v3 == 0;
  }

  else
  {
    v5 = 1;
  }

  if (v5)
  {
    _HKInitializeLogging();
    v6 = HKLogHealthRecords;
    if (os_log_type_enabled(HKLogHealthRecords, OS_LOG_TYPE_ERROR))
    {
      sub_9C6E0(a1, v6);
    }
  }

  else
  {
    v7 = [[HKSignedClinicalDataRegistryPublicKeyEntry alloc] initWithKeyID:v2 added:v3 removed:0 source:0 jwkData:0];
    [*(a1 + 32) addObject:v7];
  }

  return 1;
}

void sub_B7A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va1, a10);
  va_start(va, a10);
  v12 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  v17 = va_arg(va1, void);
  v18 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Block_object_dispose((v10 - 144), 8);
  _Unwind_Resume(a1);
}

uint64_t sub_B7E0(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_B7F8(void *a1)
{
  v2 = HDSQLiteColumnWithNameAsDate();
  v3 = *(a1[4] + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  v5 = HDSQLiteColumnWithNameAsDate();
  v6 = *(a1[5] + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;

  v8 = HDSQLiteColumnWithNameAsData();
  v9 = *(a1[6] + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v8;

  return _objc_release_x1();
}

uint64_t sub_BA0C(void *a1)
{
  v2 = a1[4];
  HDSQLiteBindStringToProperty();
  v3 = a1[5];
  HDSQLiteBindDateToProperty();
  v4 = a1[6];
  HDSQLiteBindDateToProperty();
  v5 = +[NSDate now];
  HDSQLiteBindDateToProperty();

  v6 = a1[7];
  HDSQLiteBindStringToProperty();
  if (!a1[6])
  {
    v7 = a1[8];
  }

  return HDSQLiteBindDataToProperty();
}

uint64_t sub_BD80(uint64_t a1)
{
  v1 = *(a1 + 32);
  HDSQLiteBindDateToProperty();
  v2 = +[NSDate now];
  HDSQLiteBindDateToProperty();

  return HDSQLiteBindNullToProperty();
}

uint64_t _ingestionStatusFromHKClinicalIngestionState(uint64_t a1)
{
  if ((a1 - 1) > 2)
  {
    return 0;
  }

  else
  {
    return qword_E4018[a1 - 1];
  }
}

void sub_C0D8(uint64_t a1, void *a2)
{
  v3 = a2;
  _HKInitializeLogging();
  if (os_log_type_enabled(HKLogHealthRecords, OS_LOG_TYPE_ERROR))
  {
    sub_9C850(a1);
  }
}

id sub_C22C(id a1, HDClinicalAccount *a2)
{
  v2 = a2;
  v3 = [[HKClinicalAccount alloc] initWithDaemonClinicalAccount:v2];

  v4 = [[HKClinicalConnectedAccount alloc] initWithClinicalAccount:v3];

  return v4;
}

uint64_t _accountsEventFromHKClinicalAccountStateChangeType(uint64_t a1)
{
  if ((a1 - 1) >= 3)
  {
    return 0;
  }

  else
  {
    return a1 + 2;
  }
}

void sub_C774(uint64_t a1, void *a2)
{
  v3 = a2;
  _HKInitializeLogging();
  if (os_log_type_enabled(HKLogHealthRecords, OS_LOG_TYPE_ERROR))
  {
    sub_9C9AC(a1);
  }
}

id sub_CCC8(uint64_t a1, void *a2)
{
  v3 = [a2 metadata];
  v4 = [v3 objectForKeyedSubscript:_HKPrivateMetadataKeyMedicalRecordUUID];
  v5 = [*(a1 + 32) UUID];
  v6 = [v5 UUIDString];
  v7 = [v4 isEqual:v6];

  return v7;
}

void sub_D804(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  if (a2)
  {
    v5 = [a2 analyticsString];
    (*(v2 + 16))(v2, v5, 0);
  }

  else
  {
    v3 = *(v2 + 16);
    v4 = *(a1 + 32);

    v3(v4);
  }
}

BOOL sub_E2AC(id a1, HKClinicalGatewayEndpointSchemaParameter *a2)
{
  v2 = [(HKClinicalGatewayEndpointSchemaParameter *)a2 param];
  v3 = [v2 isEqualToString:@"redirect_uri"];

  return v3;
}

void sub_E4E4(uint64_t a1)
{
  v2 = *(a1 + 32);
  HDSQLiteBindStringToProperty();
  v3 = *(a1 + 40);
  HDSQLiteBindStringToProperty();
  v4 = [*(a1 + 48) absoluteString];
  HDSQLiteBindStringToProperty();

  v5 = [*(a1 + 56) absoluteString];
  HDSQLiteBindStringToProperty();
}

uint64_t sub_E66C(uint64_t a1, sqlite3_stmt *a2)
{
  v3 = [*(a1 + 32) UTF8String];

  return sqlite3_bind_text(a2, 1, v3, -1, 0xFFFFFFFFFFFFFFFFLL);
}

void sub_F524(uint64_t a1)
{
  v2 = [*(a1 + 32) debugDescription];
  v3 = *(a1 + 48);
  v4 = HKClinicalContentAnalyticsTriggerReasonToString();
  v5 = *(a1 + 56);
  v6 = HKClinicalContentAnalyticsTriggerOptionsToString();
  v7 = [NSString stringWithFormat:@"%@ content analytics collection (%@: %@)", v2, v4, v6];

  _HKInitializeLogging();
  v8 = HKLogHealthRecords;
  if (os_log_type_enabled(HKLogHealthRecords, OS_LOG_TYPE_INFO))
  {
    *buf = 138543362;
    v19 = v7;
    _os_log_impl(&dword_0, v8, OS_LOG_TYPE_INFO, "%{public}@ triggered", buf, 0xCu);
  }

  v9 = *(a1 + 32);
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_F6CC;
  v13[3] = &unk_105E40;
  v14 = v7;
  v15 = v9;
  v10 = *(a1 + 56);
  v11 = *(a1 + 40);
  v17 = *(a1 + 48);
  v16 = v11;
  v12 = v7;
  [v9 _queue_triggerClinicalContentAnalyticsWithOptions:v10 completion:v13];
}

void sub_F6CC(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = a2;
  _HKInitializeLogging();
  v7 = HKLogHealthRecords;
  if (a2)
  {
    if (os_log_type_enabled(HKLogHealthRecords, OS_LOG_TYPE_INFO))
    {
      v8 = *(a1 + 32);
      v9 = 138543362;
      v10 = v8;
      _os_log_impl(&dword_0, v7, OS_LOG_TYPE_INFO, "%{public}@ successful", &v9, 0xCu);
    }
  }

  else if (os_log_type_enabled(HKLogHealthRecords, OS_LOG_TYPE_ERROR))
  {
    sub_9CC30(a1, v5, v7);
  }

  [*(a1 + 40) _queue_didTriggerClinicalAnalyticsForReason:*(a1 + 56) success:a2 != 0 error:v5];
  (*(*(a1 + 48) + 16))();
}

void sub_F894(uint64_t a1)
{
  v2 = [*(a1 + 32) _clinicalAnalyticsKeyValueDomain];
  v10 = 0;
  v3 = [v2 setNumber:0 forKey:@"contentAnalyticsAnchor" error:&v10];
  v4 = v10;
  if (v3)
  {
    _HKInitializeLogging();
    v5 = HKLogHealthRecords;
    if (os_log_type_enabled(HKLogHealthRecords, OS_LOG_TYPE_INFO))
    {
      v6 = *(a1 + 32);
      v7 = v5;
      v8 = [v6 debugDescription];
      *buf = 138543362;
      v12 = v8;
      _os_log_impl(&dword_0, v7, OS_LOG_TYPE_INFO, "%{public}@ content analytics anchors were reset", buf, 0xCu);
    }

    v9 = *(*(a1 + 40) + 16);
  }

  else
  {
    v9 = *(*(a1 + 40) + 16);
  }

  v9();
}

id sub_FCC8(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v10 = [*(*(a1 + 32) + 64) containsObject:v7];
  if (v10)
  {
    [*(a1 + 32) _submitPayload:v9 forEvent:v8 usingCoordinator:*(a1 + 40)];
  }

  else
  {
    _HKInitializeLogging();
    v11 = HKLogHealthRecords;
    if (os_log_type_enabled(HKLogHealthRecords, OS_LOG_TYPE_INFO))
    {
      v12 = *(a1 + 32);
      v13 = v11;
      v15 = 138543618;
      v16 = objc_opt_class();
      v17 = 2114;
      v18 = v7;
      _os_log_impl(&dword_0, v13, OS_LOG_TYPE_INFO, "%{public}@: metric on gateway from %{public}@ may not be submitted, discarding", &v15, 0x16u);
    }
  }

  return v10;
}

uint64_t sub_FE00(uint64_t a1, uint64_t a2)
{
  _HKInitializeLogging();
  v4 = HKLogHealthRecords;
  if (os_log_type_enabled(HKLogHealthRecords, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 32);
    v6 = v4;
    v8 = 138543618;
    v9 = objc_opt_class();
    v10 = 2048;
    v11 = a2;
    _os_log_impl(&dword_0, v6, OS_LOG_TYPE_DEFAULT, "%{public}@: %ld ingestion analytics submitted", &v8, 0x16u);
  }

  return (*(*(a1 + 40) + 16))();
}

void sub_103DC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_10404(uint64_t a1, void *a2)
{
  v4 = *(a1 + 64);
  if (v4 != 1)
  {
    v10 = 0;
    v8 = 0;
    v6 = &off_110018;
LABEL_9:
    _HKInitializeLogging();
    v11 = HKLogHealthRecords;
    if (os_log_type_enabled(HKLogHealthRecords, OS_LOG_TYPE_INFO))
    {
      v12 = *(a1 + 40);
      v13 = v11;
      v14 = [v12 debugDescription];
      v15 = [*(a1 + 48) batchCount];
      v16 = [v6 integerValue];
      *buf = 138543874;
      v64 = v14;
      v65 = 2048;
      v66 = v15;
      v67 = 2048;
      v68 = v16;
      _os_log_impl(&dword_0, v13, OS_LOG_TYPE_INFO, "%{public}@: content analytics batch %ld starting at anchor %ld", buf, 0x20u);
    }

    v61 = 0;
    v17 = *(a1 + 40);
    v60 = v8;
    v18 = [v17 _queue_fetchRecordsForContentAnalyticsWithStartAnchor:objc_msgSend(v6 limitCount:"longLongValue") finalAnchor:v10 error:{&v61, &v60}];
    v19 = v60;

    if (v18)
    {
      if (v4)
      {
        v20 = [v18 count] >= v10;
      }

      else
      {
        v20 = 0;
      }

      *(*(*(a1 + 56) + 8) + 24) = v20;
      v58 = 0u;
      v59 = 0u;
      v56 = 0u;
      v57 = 0u;
      v51 = v18;
      v27 = v18;
      v28 = [v27 countByEnumeratingWithState:&v56 objects:v71 count:16];
      if (v28)
      {
        v29 = v28;
        v30 = *v57;
        do
        {
          for (i = 0; i != v29; i = i + 1)
          {
            if (*v57 != v30)
            {
              objc_enumerationMutation(v27);
            }

            v32 = *(*(&v56 + 1) + 8 * i);
            v55 = 0;
            v52[1] = _NSConcreteStackBlock;
            v52[2] = 3221225472;
            v52[3] = sub_10960;
            v52[4] = &unk_105F30;
            v53 = *(a1 + 48);
            v54 = v32;
            HKWithAutoreleasePool();
            v33 = 0;
          }

          v29 = [v27 countByEnumeratingWithState:&v56 objects:v71 count:16];
        }

        while (v29);
      }

      if (*(a1 + 65) == 1)
      {
        v34 = *(a1 + 48);
        WeakRetained = objc_loadWeakRetained((*(a1 + 40) + 48));
        v36 = [WeakRetained daemon];
        v37 = [v36 analyticsSubmissionCoordinator];
        [v34 submitMetricsWithCoordinator:v37];
      }

      if (*(a1 + 64) != 1 || (v38 = v61, v38 == [v6 integerValue]))
      {
        v18 = v51;
LABEL_35:
        _HKInitializeLogging();
        v39 = HKLogHealthRecords;
        if (os_log_type_enabled(HKLogHealthRecords, OS_LOG_TYPE_INFO))
        {
          v40 = *(a1 + 40);
          v41 = v39;
          v42 = [v40 debugDescription];
          v43 = [*(a1 + 48) batchCount];
          v44 = v61;
          v45 = [*(a1 + 48) debugDescription];
          *buf = 138544130;
          v64 = v42;
          v65 = 2048;
          v66 = v43;
          v67 = 2048;
          v68 = v44;
          v69 = 2114;
          v70 = v45;
          _os_log_impl(&dword_0, v41, OS_LOG_TYPE_INFO, "%{public}@: content analytics batch %ld finished at anchor %lld. Result: %{public}@", buf, 0x2Au);
        }

        if (*(*(*(a1 + 56) + 8) + 24) == 1)
        {
          [*(a1 + 48) incrementBatchCount];
          if (*(a1 + 65) == 1)
          {
            [*(a1 + 48) resetMetrics];
          }
        }

        v26 = 1;
LABEL_46:

        v8 = v19;
        goto LABEL_47;
      }

      v46 = *(a1 + 32);
      v47 = [NSNumber numberWithLongLong:v61];
      v52[0] = v19;
      v48 = [v46 setNumber:v47 forKey:@"contentAnalyticsAnchor" error:v52];
      v49 = v52[0];

      v18 = v51;
      if (v48)
      {
        v19 = v49;
        goto LABEL_35;
      }

      v21 = v49;
    }

    else
    {
      v21 = v19;
    }

    v19 = v21;
    if (v21)
    {
      if (a2)
      {
        v22 = v21;
        *a2 = v19;
      }

      else
      {
        _HKLogDroppedError();
      }
    }

    v26 = 0;
    goto LABEL_46;
  }

  v5 = *(a1 + 32);
  v62 = 0;
  v6 = [v5 numberForKey:@"contentAnalyticsAnchor" error:&v62];
  v7 = v62;
  v8 = v7;
  if (v6)
  {
    v9 = 1;
  }

  else
  {
    v9 = v7 == 0;
  }

  if (v9)
  {
    v10 = 200;
    goto LABEL_9;
  }

  _HKInitializeLogging();
  v23 = HKLogHealthRecords;
  if (os_log_type_enabled(HKLogHealthRecords, OS_LOG_TYPE_ERROR))
  {
    sub_9CCBC(a1, v23);
  }

  if (a2)
  {
    v25 = v8;
    v26 = 0;
    *a2 = v8;
  }

  else
  {
    _HKLogDroppedError();
    v26 = 0;
  }

LABEL_47:

  return v26;
}

void sub_10B9C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id sub_10BB4(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v6 = [v5 databaseForEntityClass:objc_opt_class()];
  v7 = *(a1 + 32);
  v8 = *(a1 + 64);
  v9 = [HDSQLiteOrderingTerm orderingTermWithProperty:HDSQLEntityPropertyPersistentID entityClass:objc_opt_class() ascending:1];
  v22 = v9;
  v10 = [NSArray arrayWithObjects:&v22 count:1];
  v11 = [HDMedicalRecordEntity queryWithDatabase:v6 predicate:v7 limit:v8 orderingTerms:v10 groupBy:0];

  v21 = HDSampleEntityPropertyDataType;
  v12 = [NSArray arrayWithObjects:&v21 count:1];
  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = sub_10DB4;
  v18[3] = &unk_105F80;
  v18[4] = *(a1 + 40);
  v19 = v5;
  v17 = *(a1 + 48);
  v13 = v17;
  v20 = v17;
  v14 = v5;
  v15 = [v11 enumeratePersistentIDsAndProperties:v12 error:a3 enumerationHandler:v18];

  return v15;
}

BOOL sub_10DB4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(*(*(a1 + 56) + 8) + 24) = a2;
  v6 = (a1 + 32);
  v7 = [*(a1 + 32) _medicalRecordForObjectID:a2 dataTypeCode:HDSQLiteColumnAsInt64() error:a5];
  v8 = v7;
  if (v7)
  {
    v9 = [v7 sampleType];
    v10 = +[HKUnknownRecordType unknownRecordType];
    v11 = [v9 isEqual:v10];

    if (v11)
    {
      v12 = [v8 sourceRevision];
      v13 = [v12 source];
      v14 = [v13 _deducedClinicalAccountIdentifier];

      if (v14)
      {
        v15 = [*(a1 + 40) databaseForEntityClass:objc_opt_class()];
        v31 = 0;
        v16 = [HDClinicalAccountEntity accountWithIdentifier:v14 database:v15 error:&v31];
        v17 = v31;

        if (v16)
        {
          v18 = [v16 gateway];
          v19 = [v18 baseURL];
          v20 = v19;
          if (v19)
          {
            v21 = v19;
          }

          else
          {
            v21 = [NSURL URLWithString:@"http://localhost/gateway-without-baseURL"];
          }

          v23 = v21;
        }

        else
        {
          _HKInitializeLogging();
          v24 = HKLogHealthRecords;
          if (os_log_type_enabled(HKLogHealthRecords, OS_LOG_TYPE_ERROR))
          {
            v27 = *v6;
            v28 = v24;
            v29 = [v27 debugDescription];
            v30 = HKSensitiveLogItem();
            *buf = 138413058;
            v33 = v29;
            v34 = 2112;
            v35 = v14;
            v36 = 2112;
            v37 = v30;
            v38 = 2112;
            v39 = v17;
            _os_log_error_impl(&dword_0, v28, OS_LOG_TYPE_ERROR, "%@ failed to retrieve account %@ for record %@: %@", buf, 0x2Au);
          }

          v23 = [NSURL URLWithString:@"http://localhost/error-retrieving-account-for-resource"];
        }
      }

      else
      {
        _HKInitializeLogging();
        v22 = HKLogHealthRecords;
        if (os_log_type_enabled(HKLogHealthRecords, OS_LOG_TYPE_ERROR))
        {
          sub_9CD54(v6, v22, v8);
        }

        v23 = [NSURL URLWithString:@"http://localhost/unable-to-retrieve-account-for-resource"];
      }

      v25 = [[HDClinicalContentAnalyticsItem alloc] initWithSourceURL:v23 medicalRecord:v8];
      [*(a1 + 48) addObject:v25];
    }
  }

  return v8 != 0;
}

void sub_1160C(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, v9, OS_LOG_TYPE_ERROR, a4, &a9, 0xCu);
}

HKClinicalGateway *__cdecl sub_130E8(id a1, HDClinicalGateway *a2)
{
  v2 = a2;
  v3 = [[HKClinicalGateway alloc] initWithDaemonClinicalGateway:v2];

  return v3;
}

HDClinicalGateway *__cdecl sub_131A0(id a1, id a2)
{
  v2 = a2;
  v3 = [[HDClinicalGateway alloc] initWithContent:v2];

  return v3;
}

uint64_t sub_14390(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v6 = *(a1 + 32);
  v7 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v14;
    while (2)
    {
      v10 = 0;
      do
      {
        if (*v14 != v9)
        {
          objc_enumerationMutation(v6);
        }

        if (![*(a1 + 40) insertOrReplaceIssuer:*(*(&v13 + 1) + 8 * v10) database:v5 error:{a3, v13}])
        {
          v11 = 0;
          goto LABEL_11;
        }

        v10 = v10 + 1;
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
      if (v8)
      {
        continue;
      }

      break;
    }
  }

  v11 = 1;
LABEL_11:

  return v11;
}

uint64_t sub_14770(uint64_t a1, void *a2, uint64_t a3)
{
  v19 = a2;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  obj = *(a1 + 32);
  v4 = [obj countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v21;
    while (2)
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v21 != v6)
        {
          objc_enumerationMutation(obj);
        }

        v8 = *(*(&v20 + 1) + 8 * i);
        v9 = *(a1 + 40);
        v10 = [v8 kid];
        v11 = [v8 added];
        v12 = [v8 removed];
        v13 = [v8 source];
        v14 = [v8 jwk];
        LODWORD(v9) = [v9 insertOrReplacePublicKeyWithKeyID:v10 added:v11 removed:v12 source:v13 jwk:v14 database:v19 error:a3];

        if (!v9)
        {
          v15 = 0;
          goto LABEL_11;
        }
      }

      v5 = [obj countByEnumeratingWithState:&v20 objects:v24 count:16];
      if (v5)
      {
        continue;
      }

      break;
    }
  }

  v15 = 1;
LABEL_11:

  return v15;
}

void sub_14B34(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_14B4C(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

BOOL sub_14B64(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = [*(a1 + 32) fetchPublicKeysWithDatabase:a2 error:a3];
  v5 = *(*(a1 + 40) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v4;

  return *(*(*(a1 + 40) + 8) + 40) != 0;
}

uint64_t sub_14CE4(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v6 = +[NSDate now];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v7 = *(a1 + 32);
  v8 = [v7 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v15;
    while (2)
    {
      v11 = 0;
      do
      {
        if (*v15 != v10)
        {
          objc_enumerationMutation(v7);
        }

        if (![*(a1 + 40) removePublicKeyWithKeyID:*(*(&v14 + 1) + 8 * v11) removedDate:v6 database:v5 error:{a3, v14}])
        {
          v12 = 0;
          goto LABEL_11;
        }

        v11 = v11 + 1;
      }

      while (v9 != v11);
      v9 = [v7 countByEnumeratingWithState:&v14 objects:v18 count:16];
      if (v9)
      {
        continue;
      }

      break;
    }
  }

  v12 = 1;
LABEL_11:

  return v12;
}

void sub_15374(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v8 = *(a1 + 32);
  v7 = *(a1 + 40);
  v9 = *(v8 + 80);
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_15498;
  v12[3] = &unk_106198;
  v12[4] = v8;
  v19 = *(a1 + 72);
  v13 = v7;
  v14 = v5;
  v15 = *(a1 + 48);
  v16 = *(a1 + 56);
  v17 = v6;
  v18 = *(a1 + 64);
  v10 = v6;
  v11 = v5;
  dispatch_async(v9, v12);
}

intptr_t sub_15498(uint64_t a1)
{
  _HKInitializeLogging();
  v2 = HKLogHealthRecords;
  if (os_log_type_enabled(HKLogHealthRecords, OS_LOG_TYPE_DEBUG))
  {
    sub_9D214(a1, v2);
  }

  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v5 = *(a1 + 48);
  v6 = [*(a1 + 56) highestRowID];
  v7 = [*(a1 + 56) rulesVersion];
  [v3 _didCompleteExtractionWithRequest:v4 result:v5 highestRowID:v6 extractionRulesVersion:v7 profile:*(a1 + 64) error:*(a1 + 72)];

  return dispatch_semaphore_signal(*(a1 + 80));
}

id sub_161A4(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 originalFHIRResource];
  v5 = [v3 providedResource];

  v6 = [v4 isEqual:v5];
  return v6;
}

id sub_16214(id a1, HDFHIRResourceObjectPair *a2)
{
  v2 = [(HDFHIRResourceObjectPair *)a2 providedResource];
  v3 = HKSensitiveLogItem();

  return v3;
}

void sub_168D8(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_debug_impl(a1, v9, OS_LOG_TYPE_DEBUG, a4, &a9, 0xCu);
}

id HDHealthRecordsPluginBundle()
{
  if (qword_128808 != -1)
  {
    sub_9D578();
  }

  v1 = qword_128810;

  return v1;
}

void sub_169E8(id a1)
{
  qword_128810 = [NSBundle bundleForClass:objc_opt_class()];

  _objc_release_x1();
}

id sub_16F28(void *a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v6 = a1;
  v7 = objc_alloc_init(NSMutableArray);
  [v7 addObject:@"PRAGMA encoding=UTF-8;"];
  v8 = +[HDSignedClinicalDataRegistryMetadataEntity createTableSQL];
  [v7 addObject:v8];

  v9 = +[HDSignedClinicalDataRegistryIssuerEntity createTableSQL];
  [v7 addObject:v9];

  v10 = [v6 executeStatements:v7 database:v5 error:a3];
  return v10;
}

id sub_16FFC(void *a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v6 = a1;
  v7 = +[HDSignedClinicalDataRegistryPublicKeyEntity createTableSQL];
  v11 = v7;
  v8 = [NSArray arrayWithObjects:&v11 count:1];
  v9 = [v6 executeStatements:v8 database:v5 error:a3];

  return v9;
}

void sub_172A4(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, v9, OS_LOG_TYPE_ERROR, a4, &a9, 0x16u);
}

void sub_179C4(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 error];

  _HKInitializeLogging();
  v5 = HKLogHealthRecords;
  if (v4)
  {
    if (os_log_type_enabled(HKLogHealthRecords, OS_LOG_TYPE_ERROR))
    {
      sub_9DB00(a1, v5, v3);
    }
  }

  else if (os_log_type_enabled(HKLogHealthRecords, OS_LOG_TYPE_DEFAULT))
  {
    v6 = *(a1 + 32);
    v7 = v5;
    v8 = [v6 logPrefix];
    v9 = 138543362;
    v10 = v8;
    _os_log_impl(&dword_0, v7, OS_LOG_TYPE_DEFAULT, "%{public}@: finished", &v9, 0xCu);
  }

  (*(*(a1 + 40) + 16))();
}

void sub_17E5C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_17E74(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

BOOL sub_17E8C(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v6 = [*(a1 + 64) predicateForObjectsFromLocalSourceWithBundleIdentifier:*(a1 + 32) profile:*(a1 + 40) error:a3];
  if (v6)
  {
    v7 = *(a1 + 48);
    v8 = HDMedicalRecordEntityPredicateForFHIRIdentifier();
    v9 = [HDSQLitePredicate compoundPredicateWithPredicate:v6 otherPredicate:v8];
    v10 = *(a1 + 64);
    v11 = [v5 databaseForEntityClass:v10];
    v12 = [v10 _medicalRecordsWithPredicate:v9 withoutConceptIndex:0 excludeSignedClinicalDataRecords:0 database:v11 profile:*(a1 + 40) error:a3];

    v13 = v12 != 0;
    if (v12)
    {
      v14 = [v12 firstObject];
      v15 = *(*(a1 + 56) + 8);
      v16 = *(v15 + 40);
      *(v15 + 40) = v14;
    }
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

void sub_18264(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_18284(uint64_t a1, void *a2, uint64_t a3)
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

        v11 = [*(a1 + 64) processMedicalRecordsInExtractionResultItem:*(*(&v15 + 1) + 8 * v10) accountIdentifier:*(a1 + 40) database:v5 profile:*(a1 + 48) error:a3];
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

id sub_183EC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = [[HDMedicalRecordsInExtractionResultJournalEntry alloc] initWithExtractionResult:*(a1 + 32) accountIdentifier:*(a1 + 40)];
  v6 = [*(a1 + 48) database];
  v7 = [v6 addJournalEntry:v5 error:a3];

  return v7;
}

void sub_1893C(id a1, HKMedicalRecord *a2, id a3)
{
  v5 = a3;
  v6 = a2;
  v7 = [(HKMedicalRecord *)v6 FHIRIdentifier];
  (*(a3 + 2))(v5, v7, v6);
}

uint64_t sub_190E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v7 = [NSNumber numberWithLongLong:a2];
  v8 = [HDMedicalRecordEntity entityWithPersistentID:v7];

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

uint64_t sub_192F4(uint64_t a1)
{
  if (*(a1 + 32))
  {
    v1 = *(a1 + 32);
  }

  return HDSQLiteBindNumberToProperty();
}

void sub_1938C(id a1)
{
  v3[0] = &off_110078;
  v4[0] = objc_opt_class();
  v3[1] = &off_110090;
  v4[1] = objc_opt_class();
  v3[2] = &off_1100A8;
  v4[2] = objc_opt_class();
  v3[3] = &off_1100C0;
  v4[3] = objc_opt_class();
  v3[4] = &off_1100D8;
  v4[4] = objc_opt_class();
  v3[5] = &off_1100F0;
  v4[5] = objc_opt_class();
  v3[6] = &off_110108;
  v4[6] = objc_opt_class();
  v3[7] = &off_110120;
  v4[7] = objc_opt_class();
  v3[8] = &off_110138;
  v4[8] = objc_opt_class();
  v3[9] = &off_110150;
  v4[9] = objc_opt_class();
  v3[10] = &off_110168;
  v4[10] = objc_opt_class();
  v3[11] = &off_110180;
  v4[11] = objc_opt_class();
  v3[12] = &off_110198;
  v4[12] = objc_opt_class();
  v3[13] = &off_1101B0;
  v4[13] = objc_opt_class();
  v1 = [NSDictionary dictionaryWithObjects:v4 forKeys:v3 count:14];
  v2 = qword_128818;
  qword_128818 = v1;
}

uint64_t sub_199A0(uint64_t a1)
{
  if (HDSQLiteColumnWithNameAsInteger() != 2)
  {
    v2 = HDSQLiteColumnWithNameAsNumber();
    v3 = v2;
    if (v2)
    {
      v4 = v2;
    }

    else
    {
      v4 = &off_110060;
    }

    v5 = v4;

    if (*(a1 + 40) != 1 || [v5 integerValue] != &stru_B8.reserved1)
    {
      v6 = HDSQLiteColumnWithNameAsNumber();
      v7 = v6;
      if (v6)
      {
        v8 = v6;
      }

      else
      {
        v8 = &off_110060;
      }

      v9 = v8;

      v10 = [*(a1 + 32) objectForKeyedSubscript:v5];
      v11 = v10;
      if (v10)
      {
        [v10 addObject:v9];
      }

      else
      {
        v12 = [[NSMutableArray alloc] initWithObjects:{v9, 0}];
        [*(a1 + 32) setObject:v12 forKeyedSubscript:v5];
      }
    }
  }

  return 1;
}

id sub_1A388(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = [a2 databaseForEntityClass:*(a1 + 48)];
  v6 = [HDClinicalAccountEntity existingAccountEntityWithIdentifier:*(a1 + 32) database:v5 error:a3];
  v7 = v6;
  if (v6)
  {
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_1A5E4;
    v12[3] = &unk_105DB8;
    v13 = v6;
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_1A628;
    v10[3] = &unk_1064D8;
    v11 = *(a1 + 40);
    v8 = [v5 executeCachedStatementForKey:&unk_E4070 error:a3 SQLGenerator:&stru_1064B0 bindingHandler:v12 enumerationHandler:v10];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

NSString *__cdecl sub_1A4DC(id a1)
{
  v1 = HDOriginalFHIRResourceEntityPropertyType;
  v2 = HDOriginalFHIRResourceEntityPropertyResourceID;
  v3 = HDOriginalFHIRResourceEntityPropertySourceURL;
  v4 = HDOriginalFHIRResourceLastSeenEntityLastSeenDate;
  v5 = +[HDOriginalFHIRResourceEntity disambiguatedDatabaseTable];
  v6 = +[HDOriginalFHIRResourceLastSeenEntity disambiguatedDatabaseTable];
  v7 = [NSString stringWithFormat:@"SELECT res.%@, res.%@, res.%@, last.%@                     FROM %@ AS res                     LEFT JOIN %@ AS last ON res.%@ = last.%@                     WHERE res.%@ LIKE ?", v1, v2, v3, v4, v5, v6, HDSQLEntityPropertyPersistentID, HDOriginalFHIRResourceLastSeenEntityResourceID, HDOriginalFHIRResourceEntityPropertyAccountID, 0];

  return v7;
}

uint64_t sub_1A5E4(uint64_t a1, sqlite3_stmt *a2)
{
  v3 = [*(a1 + 32) persistentID];

  return sqlite3_bind_int64(a2, 1, v3);
}

uint64_t sub_1A628(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = HDSQLiteColumnAsString();
  v6 = HDSQLiteColumnAsString();
  v7 = HDSQLiteColumnAsURL();
  v8 = HDSQLiteColumnAsDate();
  if (v5)
  {
    v9 = v6 == 0;
  }

  else
  {
    v9 = 1;
  }

  v10 = !v9;
  if (v9)
  {
    [NSError hk_assignError:a3 code:3 description:@"Resource without resource type or resource id present"];
  }

  else
  {
    v11 = [[HKFHIRIdentifier alloc] initWithResourceType:v5 identifier:v6];
    v12 = [[HDFHIRResourceLastSeenObject alloc] initWithResourceIdentifier:v11 sourceURL:v7 lastSeenDate:v8];
    [*(a1 + 32) addObject:v12];
  }

  return v10;
}

id sub_1A8A4(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v6 = *(a1 + 32);
  v7 = [v5 protectedDatabase];
  v8 = [HDClinicalAccountEntity existingAccountEntityWithIdentifier:v6 database:v7 error:a3];

  if (v8)
  {
    v9 = [v5 protectedDatabase];
    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = sub_1AB08;
    v14[3] = &unk_106548;
    v15 = v8;
    v16 = *(a1 + 40);
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_1AB60;
    v12[3] = &unk_1064D8;
    v13 = *(a1 + 48);
    v10 = [v9 executeCachedStatementForKey:&unk_E4071 error:a3 SQLGenerator:&stru_106520 bindingHandler:v14 enumerationHandler:v12];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

NSString *__cdecl sub_1AA34(id a1)
{
  v1 = HDSQLEntityPropertyPersistentID;
  v2 = +[HDOriginalFHIRResourceEntity disambiguatedDatabaseTable];
  v3 = +[HDOriginalFHIRResourceLastSeenEntity disambiguatedDatabaseTable];
  v4 = [NSString stringWithFormat:@"SELECT res.%@                     FROM %@ AS res                     LEFT JOIN %@ AS last ON res.%@ = last.%@                     WHERE res.%@ LIKE ? AND (last.%@ < ? OR last.%@ IS NULL)", v1, v2, v3, v1, HDOriginalFHIRResourceLastSeenEntityResourceID, HDOriginalFHIRResourceEntityPropertyAccountID, HDOriginalFHIRResourceLastSeenEntityLastSeenDate, HDOriginalFHIRResourceLastSeenEntityLastSeenDate, 0];

  return v4;
}

uint64_t sub_1AB08(uint64_t a1, sqlite3_stmt *a2)
{
  sqlite3_bind_int64(a2, 1, [*(a1 + 32) persistentID]);
  v3 = *(a1 + 40);

  return HDSQLiteBindFoundationValueToStatement();
}

uint64_t sub_1AB60(uint64_t a1)
{
  v2 = HDSQLiteColumnAsNumber();
  v3 = [HDOriginalFHIRResourceEntity entityWithPersistentID:v2];
  [*(a1 + 32) addObject:v3];

  return 1;
}

void sub_1B054(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, char a38)
{
  _Block_object_dispose(&a38, 8);
  _Block_object_dispose((v38 - 184), 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1B090(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

id sub_1B0A8(uint64_t a1)
{
  v1 = HDSQLEntityPropertyPersistentID;
  v2 = HDOriginalFHIRResourceLastSeenEntityLastSeenDate;
  v3 = [*(a1 + 32) disambiguatedDatabaseTable];
  v4 = [NSString stringWithFormat:@"SELECT %@, %@ FROM %@ WHERE %@ = ?", v1, v2, v3, HDOriginalFHIRResourceLastSeenEntityResourceID, 0];

  return v4;
}

uint64_t sub_1B15C(uint64_t a1)
{
  v2 = HDSQLiteColumnAsNumber();
  v3 = *(*(a1 + 32) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  v5 = HDSQLiteColumnAsDate();
  v6 = *(*(a1 + 40) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;

  return 1;
}

uint64_t sub_1B1CC(uint64_t a1)
{
  v2 = *(a1 + 32);
  HDSQLiteBindNumberToProperty();
  v3 = *(a1 + 40);

  return HDSQLiteBindDateToProperty();
}

id sub_1B45C(uint64_t a1)
{
  v1 = HDOriginalFHIRResourceLastSeenEntityLastSeenDate;
  v2 = [*(a1 + 32) disambiguatedDatabaseTable];
  v3 = [NSString stringWithFormat:@"SELECT %@ FROM %@ WHERE %@ = ?", v1, v2, HDOriginalFHIRResourceLastSeenEntityResourceID];

  return v3;
}

uint64_t sub_1B500(uint64_t a1)
{
  v2 = HDSQLiteColumnAsDate();
  v3 = *(*(a1 + 32) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return 1;
}

void sub_1BDBC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1BDD4(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

BOOL sub_1BDEC(void *a1, uint64_t a2)
{
  v3 = [*(a1[4] + 8) accountForSource:a1[5] error:a2];
  v4 = *(a1[6] + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;

  return *(*(a1[6] + 8) + 40) != 0;
}

void sub_1C000(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

BOOL sub_1C018(void *a1, uint64_t a2)
{
  v3 = [*(a1[4] + 8) accountWithIdentifier:a1[5] error:a2];
  v4 = *(a1[6] + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;

  return *(*(a1[6] + 8) + 40) != 0;
}

void sub_1CDD8(uint64_t a1, void *a2)
{
  v3 = a2;
  _HKInitializeLogging();
  v4 = HKLogHealthRecords;
  if (os_log_type_enabled(HKLogHealthRecords, OS_LOG_TYPE_ERROR))
  {
    sub_9E224(a1, v3, v4);
  }
}

uint64_t sub_1D6EC(id *a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = [a1[4] _privateSourceBundleIdentifiersByPublicWithError:a3];
  if (v6)
  {
    v26 = 0u;
    v27 = 0u;
    v24 = 0u;
    v25 = 0u;
    v7 = a1[5];
    v8 = [v7 countByEnumeratingWithState:&v24 objects:v30 count:16];
    if (v8)
    {
      v9 = v8;
      v21 = a3;
      v22 = v5;
      v10 = *v25;
      while (2)
      {
        for (i = 0; i != v9; i = i + 1)
        {
          if (*v25 != v10)
          {
            objc_enumerationMutation(v7);
          }

          v12 = *(*(&v24 + 1) + 8 * i);
          v13 = objc_autoreleasePoolPush();
          v14 = a1[4];
          v23 = 0;
          v15 = [v14 _medicalRecordForClinicalRecordWithUUID:v12 privateSourceBundleIdentifiersByPublic:v6 error:&v23];
          v16 = v23;
          objc_autoreleasePoolPop(v13);
          if (v15)
          {
            [a1[6] addObject:v15];
          }

          else
          {
            _HKInitializeLogging();
            v17 = HKLogDatabase;
            if (v16)
            {
              if (os_log_type_enabled(HKLogDatabase, OS_LOG_TYPE_ERROR))
              {
                sub_9E2D4(v12, v16, v17);
              }

              if (v21)
              {
                v19 = v16;
                *v21 = v16;
              }

              else
              {
                _HKLogDroppedError();
              }

              v5 = v22;

              v18 = 0;
              goto LABEL_23;
            }

            if (os_log_type_enabled(HKLogDatabase, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138543362;
              v29 = v12;
              _os_log_impl(&dword_0, v17, OS_LOG_TYPE_DEFAULT, "Failed to find  medical record for clinical record with UUID %{public}@", buf, 0xCu);
            }
          }
        }

        v9 = [v7 countByEnumeratingWithState:&v24 objects:v30 count:16];
        if (v9)
        {
          continue;
        }

        break;
      }

      v18 = 1;
      v5 = v22;
    }

    else
    {
      v18 = 1;
    }

LABEL_23:
  }

  else
  {
    v18 = 0;
  }

  return v18;
}

void sub_1DC6C(id a1, HDClinicalAccount *a2, id a3)
{
  v4 = a3;
  v5 = a2;
  v6 = [(HDClinicalAccount *)v5 gateway];
  v7 = [v6 externalID];
  v12 = [HKSource _publicSourceForClinicalExternalIdentifier:v7 name:&stru_1090E8];

  v8 = [(HDClinicalAccount *)v5 identifier];

  v9 = [HKSource _privateSourceForClinicalAccountIdentifier:v8 name:&stru_1090E8];

  v10 = [v12 bundleIdentifier];
  v11 = [v9 bundleIdentifier];
  v4[2](v4, v10, v11);
}

void sub_1F5E0(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_debug_impl(a1, v9, OS_LOG_TYPE_DEBUG, a4, &a9, 0x20u);
}

id sub_1F618(uint64_t a1, void *a2)
{
  v3 = *(a1 + 56);

  return a2;
}

id sub_1F630()
{

  return [v0 count];
}

void sub_1FAE8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1FB0C(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_1FB24(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a1 + 32);
  v5 = [objc_opt_class() _issuerWithRow:a3];
  v6 = *(*(a1 + 40) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;

  return _objc_release_x1();
}

void sub_1FCDC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

BOOL sub_1FCF4(void *a1, void *a2, void *a3)
{
  v5 = [a2 databaseForEntityClass:a1[6]];
  v6 = a1[6];
  v7 = a1[4];
  v15 = 0;
  v8 = [v6 issuerWithIdentifier:v7 database:v5 error:&v15];
  v9 = v15;
  v10 = *(a1[5] + 8);
  v11 = *(v10 + 40);
  *(v10 + 40) = v8;

  v12 = *(*(a1[5] + 8) + 40);
  if (!v12)
  {
    if (v9)
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

    else
    {
      [NSError hk_assignError:a3 code:118 format:@"Issuer %@ not found", a1[4]];
    }
  }

  return v12 != 0;
}

uint64_t sub_202DC(uint64_t a1, void *a2)
{
  v3 = a2;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v4 = *(a1 + 32);
  v5 = [v4 countByEnumeratingWithState:&v28 objects:v38 count:16];
  if (v5)
  {
    v7 = v5;
    v8 = *v29;
    *&v6 = 138543874;
    v25 = v6;
    v26 = v4;
    do
    {
      v9 = 0;
      do
      {
        if (*v29 != v8)
        {
          objc_enumerationMutation(v4);
        }

        v10 = *(*(&v28 + 1) + 8 * v9);
        v11 = *(a1 + 48);
        v12 = *(a1 + 56);
        v13 = *(a1 + 40);
        v27 = 0;
        v14 = [v11 insertCodableIssuer:v10 syncProvenance:v12 profile:v13 transaction:v3 error:{&v27, v25, v26}];
        v15 = v27;

        if (!v14)
        {
          v16 = [v15 hd_isConstraintViolation];
          _HKInitializeLogging();
          v17 = HKLogHealthRecords;
          if (v16)
          {
            if (!os_log_type_enabled(HKLogHealthRecords, OS_LOG_TYPE_DEFAULT))
            {
              goto LABEL_12;
            }

            v18 = *(a1 + 48);
            v19 = v17;
            v20 = [v10 identifier];
            v21 = HKSensitiveLogItem();
            *buf = v25;
            v33 = v18;
            v4 = v26;
            v34 = 2114;
            v35 = v21;
            v36 = 2114;
            v37 = v15;
            _os_log_impl(&dword_0, v19, OS_LOG_TYPE_DEFAULT, "%{public}@ unable to insert codable signed clinical data issuer %{public}@ because of a constraint violation, likely because the issuer already exists. Ignoring error: %{public}@", buf, 0x20u);
            goto LABEL_10;
          }

          if (os_log_type_enabled(HKLogHealthRecords, OS_LOG_TYPE_ERROR))
          {
            v22 = *(a1 + 48);
            v19 = v17;
            v20 = [v10 identifier];
            v21 = HKSensitiveLogItem();
            *buf = v25;
            v33 = v22;
            v4 = v26;
            v34 = 2114;
            v35 = v21;
            v36 = 2114;
            v37 = v15;
            _os_log_error_impl(&dword_0, v19, OS_LOG_TYPE_ERROR, "%{public}@ failed to insert codable signed clinical data issuer %{public}@, ignoring. Error: %{public}@", buf, 0x20u);
LABEL_10:
          }
        }

LABEL_12:

        v9 = v9 + 1;
      }

      while (v7 != v9);
      v23 = [v4 countByEnumeratingWithState:&v28 objects:v38 count:16];
      v7 = v23;
    }

    while (v23);
  }

  return 1;
}

id sub_20568(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = [[HDSignedClinicalDataIssuerInsertCodableJournalEntry alloc] initWithIssuers:*(a1 + 32) syncProvenance:*(a1 + 48)];
  v6 = [*(a1 + 40) database];
  v7 = [v6 addJournalEntry:v5 error:a3];

  return v7;
}

void sub_20BF0(uint64_t a1)
{
  v2 = *(a1 + 48);
  HDSQLiteBindInt64ToProperty();
  v3 = [*(a1 + 32) identifier];
  HDSQLiteBindStringToProperty();

  v4 = [*(a1 + 32) title];
  HDSQLiteBindStringToProperty();

  v5 = [*(a1 + 32) subtitle];
  HDSQLiteBindStringToProperty();

  v6 = [*(a1 + 32) wellKnownURL];
  HDSQLiteBindStringToProperty();

  v7 = [*(a1 + 40) entity];
  [v7 persistentID];
  HDSQLiteBindInt64ToProperty();
}

id sub_20F60(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = [a2 databaseForEntityClass:*(a1 + 48)];
  v6 = *(a1 + 48);
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_21050;
  v12[3] = &unk_106850;
  v13 = *(a1 + 32);
  v14 = v5;
  v7 = *(a1 + 40);
  v8 = *(a1 + 48);
  v15 = v7;
  v16 = v8;
  v9 = v5;
  v10 = [v6 enumerateEntitiesInDatabase:v9 predicate:0 error:a3 enumerationHandler:v12];

  return v10;
}

uint64_t sub_21050(void *a1, void *a2)
{
  v3 = a1[4];
  v4 = a1[5];
  v5 = a1[6];
  v10 = 0;
  v6 = [a2 updateTitleUsingRegistry:v3 database:v4 profile:v5 error:&v10];
  v7 = v10;
  if ((v6 & 1) == 0)
  {
    _HKInitializeLogging();
    v8 = HKLogHealthRecords;
    if (os_log_type_enabled(HKLogHealthRecords, OS_LOG_TYPE_ERROR))
    {
      sub_9EB58(a1, v8);
    }
  }

  return 1;
}

id sub_210E8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = objc_alloc_init(HDSignedClinicalDataIssuerTitleUpdateJournalEntry);
  v6 = [*(a1 + 32) database];
  v7 = [v6 addJournalEntry:v5 error:a3];

  return v7;
}

void sub_226CC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_226F0(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = objc_autoreleasePoolPush();
  state = xpc_activity_get_state(v3);
  if (state)
  {
    if (state == 2)
    {
      _HKInitializeLogging();
      v6 = HKLogHealthRecords;
      if (os_log_type_enabled(HKLogHealthRecords, OS_LOG_TYPE_DEBUG))
      {
        sub_9EF94(a1, v6, v7, v8, v9, v10, v11, v12);
      }

      WeakRetained = objc_loadWeakRetained((a1 + 48));
      [WeakRetained _dispatchBlock];

      if (!xpc_activity_set_state(v3, 5))
      {
        _HKInitializeLogging();
        v14 = HKLogHealthRecords;
        if (os_log_type_enabled(HKLogHealthRecords, OS_LOG_TYPE_FAULT))
        {
          sub_9F004(a1, v14);
        }
      }
    }
  }

  else
  {
    _HKInitializeLogging();
    v15 = HKLogHealthRecords;
    if (os_log_type_enabled(HKLogHealthRecords, OS_LOG_TYPE_DEBUG))
    {
      sub_9EF24(a1, v15, v16, v17, v18, v19, v20, v21);
    }
  }

  objc_autoreleasePoolPop(v4);
}

void sub_229AC(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_debug_impl(a1, a2, OS_LOG_TYPE_DEBUG, a4, &a9, 0xCu);
}

void sub_22C88(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id sub_22CAC(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v6 = +[HDFHIRCredentialEntity allProperties];
  v7 = *(*(a1 + 56) + 8) + 24;
  v8 = *(a1 + 32);
  v9 = [*(a1 + 40) database];
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_22DFC;
  v17[3] = &unk_1068C8;
  v18 = v5;
  v10 = *(a1 + 40);
  v11 = *(a1 + 80);
  v19 = v10;
  v21 = v11;
  v20 = *(a1 + 48);
  v13 = *(a1 + 64);
  v12 = *(a1 + 72);
  v14 = v5;
  v15 = [HDFHIRCredentialEntity enumerateEntitiesForSyncWithProperties:v6 predicate:0 session:v8 syncAnchorRange:v13 limit:v12 lastSyncAnchor:0 healthDatabase:v7 error:v9 block:a3, v17];

  return v15;
}

BOOL sub_22DFC(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, _BYTE *a7, void *a8)
{
  v12 = *(a1 + 32);
  v13 = a2;
  v14 = [v12 databaseForEntityClass:objc_opt_class()];
  v15 = [v13 persistentID];

  v16 = [NSNumber numberWithLongLong:v15];
  v17 = [HDClinicalAccountEntity accountEntityWithCredentialID:v16 database:v14 error:a8];

  if (*a8)
  {
    v18 = 0;
    *a7 = 1;
  }

  else if (v17)
  {
    v19 = [v17 UUIDForProperty:HDClinicalAccountEntityPropertySyncIdentifier database:v14];
    v20 = [HDFHIRCredentialEntity codableWithRow:a4 accountSyncIdentifier:v19];
    v21 = HDSQLiteColumnWithNameAsInt64();
    v22 = [*(a1 + 40) syncIdentityManager];
    v23 = [v22 identityForEntityID:v21 transaction:*(a1 + 32) error:a8];

    if (v23)
    {
      v24 = [v23 identity];
      v25 = [v24 codableSyncIdentity];
      [v20 setSyncIdentity:v25];

      v26 = [*(a1 + 40) healthRecordsExtension];
      v27 = [v26 accountManager];

      v18 = v27 != 0;
      if (v27)
      {
        v28 = [v27 credentialFromCodableCredential:v20];
        v51 = 0;
        v29 = [HDFHIRCredential validateSyncableCodableCredential:v20 error:&v51];
        v48 = v51;
        if (v29)
        {
          v50 = 0;
          v30 = v28;
          v31 = [v28 hasRefreshTokenWithError:&v50];
          v32 = v50;
          if (v31)
          {
            v49 = v32;
            v45 = v32;
            log = v30;
            v33 = [v30 makeRefreshTokenSynchronizableIfNeededWithError:&v49];
            v34 = v49;

            if ((v33 & 1) == 0)
            {
              _HKInitializeLogging();
              v35 = HKLogHealthRecords;
              if (os_log_type_enabled(HKLogHealthRecords, OS_LOG_TYPE_ERROR))
              {
                v43 = *(a1 + 56);
                v44 = *(a1 + 40);
                *buf = 138543874;
                v53 = v43;
                v54 = 2114;
                v55 = v44;
                v56 = 2114;
                v57 = v34;
                _os_log_error_impl(&dword_0, v35, OS_LOG_TYPE_ERROR, "%{public}@ %{public}@ failed to ensure that refresh token for the credential is synchronizable. Error: %{public}@", buf, 0x20u);
              }
            }

            [*(a1 + 48) addObject:v20];

            v28 = log;
          }

          else
          {
            v39 = v32;
            _HKInitializeLogging();
            loga = HKLogHealthRecords;
            if (os_log_type_enabled(HKLogHealthRecords, OS_LOG_TYPE_DEFAULT))
            {
              v40 = *(a1 + 56);
              v41 = *(a1 + 40);
              *buf = 138543874;
              v53 = v40;
              v54 = 2114;
              v55 = v41;
              v56 = 2114;
              v57 = v39;
              _os_log_impl(&dword_0, loga, OS_LOG_TYPE_DEFAULT, "%{public}@ %{public}@ retrieved codable with no refresh token in the keychain, skipping. Error: %{public}@", buf, 0x20u);
            }

            v28 = v30;
          }
        }

        else
        {
          _HKInitializeLogging();
          v36 = HKLogHealthRecords;
          if (os_log_type_enabled(HKLogHealthRecords, OS_LOG_TYPE_ERROR))
          {
            v37 = *(a1 + 56);
            v38 = *(a1 + 40);
            *buf = 138543874;
            v53 = v37;
            v54 = 2114;
            v55 = v38;
            v56 = 2114;
            v57 = v48;
            _os_log_error_impl(&dword_0, v36, OS_LOG_TYPE_ERROR, "%{public}@ %{public}@ retrieved codable which is invalid for sync, skipping. Error: %{public}@", buf, 0x20u);
          }
        }
      }

      else
      {
        [NSError hk_assignError:a8 code:127 format:@"Credential sync is not supported for profiles without a clinical account manager."];
        *a7 = 1;
      }
    }

    else
    {
      v18 = 0;
    }
  }

  else
  {
    v18 = 1;
  }

  return v18;
}

BOOL sub_234C8(id a1, HDSyncCodable *a2)
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
      sub_9F0FC(v4, v5);
    }
  }

  return v3 != 0;
}

void sub_24230(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v9 - 144), 8);
  _Unwind_Resume(a1);
}

uint64_t sub_24274(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_2428C(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(*(a1 + 40) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v5;
  v12 = v5;

  v9 = *(*(a1 + 48) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v6;
  v11 = v6;

  dispatch_group_leave(*(a1 + 32));
}

void sub_2479C(uint64_t a1, void *a2)
{
  v3 = a2;
  _HKInitializeLogging();
  v4 = HKLogHealthRecords;
  if (os_log_type_enabled(HKLogHealthRecords, OS_LOG_TYPE_ERROR))
  {
    sub_9F458(a1, v3, v4);
  }
}

uint64_t sub_249E4(uint64_t a1, uint64_t a2)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, a2, 0);
  }

  return result;
}

uint64_t sub_25030(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = *(a1 + 40);
  v6 = a2;
  v7 = [v6 databaseForEntityClass:v5];
  v9 = *(a1 + 32);
  v8 = *(a1 + 40);
  v10 = [v6 databaseForEntityClass:v8];

  LODWORD(v6) = [v8 insertEvent:v9 database:v10 error:a3];
  LODWORD(a3) = [*(a1 + 40) _pruneEventsIfNeededInDatabase:v7 error:a3];

  return v6 & a3;
}

id sub_250DC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a1 + 32);
  v5 = *(a1 + 48);
  v6 = [*(a1 + 40) database];
  v7 = [v5 journalEvent:v4 database:v6 error:a3];

  return v7;
}

void sub_25230(uint64_t a1)
{
  v2 = [*(a1 + 32) accountIdentifier];
  HDSQLiteBindUUIDToProperty();

  [*(a1 + 32) type];
  HDSQLiteBindInt64ToProperty();
  v3 = [*(a1 + 32) caller];
  HDSQLiteBindStringToProperty();

  v4 = [*(a1 + 32) timestamp];
  HDSQLiteBindDateToProperty();

  v5 = [*(a1 + 32) eventDescription];
  HDSQLiteBindStringToProperty();

  v7 = +[HDClinicalAccountEventEntity _wrapHKOptionalClinicalAccountCredentialStateInNSNumber:](HDClinicalAccountEventEntity, "_wrapHKOptionalClinicalAccountCredentialStateInNSNumber:", [*(a1 + 32) credentialStateBefore]);
  HDSQLiteBindNumberToProperty();
  v6 = +[HDClinicalAccountEventEntity _wrapHKOptionalClinicalAccountCredentialStateInNSNumber:](HDClinicalAccountEventEntity, "_wrapHKOptionalClinicalAccountCredentialStateInNSNumber:", [*(a1 + 32) credentialStateAfter]);
  HDSQLiteBindNumberToProperty();
}

void sub_255CC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_255E4(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_255FC(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = objc_opt_class();
  v4 = HDSQLiteColumnWithNameAsNumber();
  v5 = [v3 _unwrapHKClinicalAccountCredentialStateFromNSNumber:v4];

  v6 = *(a1 + 32);
  v7 = objc_opt_class();
  v8 = HDSQLiteColumnWithNameAsNumber();
  v9 = [v7 _unwrapHKClinicalAccountCredentialStateFromNSNumber:v8];

  v10 = [HKClinicalAccountEvent alloc];
  v18 = HDSQLiteColumnWithNameAsUUID();
  v11 = HDSQLiteColumnWithNameAsInteger();
  v12 = HDSQLiteColumnWithNameAsString();
  v13 = HDSQLiteColumnWithNameAsDate();
  v14 = HDSQLiteColumnWithNameAsString();
  v15 = [v10 initWithAccountIdentifier:v18 type:v11 caller:v12 timestamp:v13 eventDescription:v14 credentialStateBefore:v5 credentialStateAfter:v9];
  v16 = *(*(a1 + 40) + 8);
  v17 = *(v16 + 40);
  *(v16 + 40) = v15;
}

void sub_25904(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

BOOL sub_2591C(void *a1, void *a2, uint64_t a3)
{
  v5 = a1[6];
  v6 = a1[4];
  v7 = [a2 databaseForEntityClass:v5];
  v8 = [v5 _fetchEventsForAccountWithIdentifier:v6 database:v7 error:a3];
  v9 = *(a1[5] + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v8;

  return *(*(a1[5] + 8) + 40) != 0;
}

void sub_25BFC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va1, a13);
  va_start(va, a13);
  v14 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  v17 = va_arg(va1, void);
  v18 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

BOOL sub_25C24(uint64_t a1, void *a2)
{
  v3 = a2;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    sub_9F4E4(a1);
  }

  v4 = *(a1 + 32);
  v9 = 0;
  v5 = [v3 _eventInDatabase:v4 error:&v9];
  v6 = v9;
  v7 = v9;
  if (v5)
  {
    [*(a1 + 40) addObject:v5];
  }

  else
  {
    objc_storeStrong((*(*(a1 + 48) + 8) + 40), v6);
    *(*(*(a1 + 56) + 8) + 24) = 0;
  }

  return v5 != 0;
}

uint64_t sub_26114(uint64_t a1)
{
  v2 = HDSQLiteColumnAsUUID();
  if (v2)
  {
    [*(a1 + 32) addObject:v2];
  }

  return 1;
}

void sub_27FD0(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 endStates];
  v5 = [v4 objects];
  v6 = [v5 firstObject];
  v7 = [v6 requestedURL];
  v8 = [v7 copy];
  v9 = *(a1 + 32);
  v10 = *(v9 + 96);
  *(v9 + 96) = v8;

  v11 = *(a1 + 32);
  v12 = [v3 endStates];
  [v11 _accumulateMetricsFromTaskStates:v12];

  v13 = [v3 resourceBundleData];

  v14 = *(a1 + 32);
  if (v13)
  {
    v15 = [v3 resourceBundleData];

    [v14 _handleTaskCompletedWithData:v15];
  }

  else
  {
    v15 = [v3 error];

    [v14 _handleTaskError:v15];
  }
}

void sub_28100(uint64_t a1, void *a2)
{
  v6 = a2;
  v3 = [v6 refreshResult];

  if (v3)
  {
    v4 = *(a1 + 32);
    v5 = [v6 refreshResult];
    [v4 _handleTokenRefreshResult:v5];
  }

  (*(*(a1 + 48) + 16))();
  dispatch_semaphore_signal(*(a1 + 40));
}

uint64_t sub_28DD8(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v6 = [HDSQLiteComparisonPredicate predicateWithProperty:HDDataEntityPropertyCreationDate greaterThanValue:*(*(a1 + 32) + 72)];
  v7 = [*(a1 + 32) profile];
  v8 = [v7 daemon];
  v9 = [v8 behavior];
  if ([v9 futureMigrationsEnabled])
  {
    v10 = 8;
  }

  else
  {
    v10 = 0;
  }

  v11 = [HKSampleType medicalRecordTypesWithOptions:v10];
  v12 = HDSampleEntityPredicateForDataTypes();
  v34[0] = v12;
  v34[1] = v6;
  v13 = [NSArray arrayWithObjects:v34 count:2];
  v14 = [HDSQLiteCompoundPredicate predicateMatchingAllPredicates:v13];

  v15 = HDSQLEntityPropertyStar;
  v16 = [v5 databaseForEntityClass:objc_opt_class()];
  v17 = [HDMedicalRecordEntity countValueForProperty:v15 predicate:v14 database:v16 error:a3];

  if (!v17)
  {
    goto LABEL_12;
  }

  *(*(a1 + 32) + 64) = [v17 unsignedIntegerValue] != 0;
  if (*(*(a1 + 32) + 64) == 1)
  {
    _HKInitializeLogging();
    v18 = HKLogHealthRecords;
    if (os_log_type_enabled(HKLogHealthRecords, OS_LOG_TYPE_DEFAULT))
    {
      v19 = *(a1 + 32);
      v20 = v18;
      v21 = [v17 unsignedIntegerValue];
      v22 = *(*(a1 + 32) + 72);
      *buf = 138543874;
      *&buf[4] = v19;
      v30 = 2048;
      v31 = v21;
      v32 = 2114;
      v33 = v22;
      _os_log_impl(&dword_0, v20, OS_LOG_TYPE_DEFAULT, "%{public}@ Detected new records, there are %lu records that are newer than %{public}@", buf, 0x20u);
    }

    v23 = [*(a1 + 32) task];
    [v23 markDidProduceNewRecords];

    v28 = 0;
    *buf = 0;
    if ([*(a1 + 32) _countOfNewLabsFromStartTimePredicate:v6 transaction:v5 count:buf error:a3] && objc_msgSend(*(a1 + 32), "_countOfPinnedLabsFromStartTimePredicate:transaction:count:error:", v6, v5, &v28, a3))
    {
      v24 = [*(a1 + 32) task];
      v25 = [v17 unsignedIntegerValue];
      [v24 recordCountOfAllRecords:v25 allLabs:*buf pinnedLabs:v28];

      goto LABEL_11;
    }

LABEL_12:
    v26 = 0;
    goto LABEL_13;
  }

LABEL_11:
  v26 = 1;
LABEL_13:

  return v26;
}

void sub_29704(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_29734(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_2A464(uint64_t a1)
{
  _HKInitializeLogging();
  v2 = HKLogHealthRecords;
  if (os_log_type_enabled(HKLogHealthRecords, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4 = v2;
    v5 = [v3 debugDescription];
    v6 = *(a1 + 40);
    v12 = 138543618;
    v13 = v5;
    v14 = 2048;
    v15 = v6;
    _os_log_impl(&dword_0, v4, OS_LOG_TYPE_DEFAULT, "%{public}@: triggering opt-in data upload <%p>", &v12, 0x16u);
  }

  [*(a1 + 40) triggerUpload];
  _HKInitializeLogging();
  v7 = HKLogHealthRecords;
  if (os_log_type_enabled(HKLogHealthRecords, OS_LOG_TYPE_DEFAULT))
  {
    v8 = *(a1 + 32);
    v9 = v7;
    v10 = [v8 debugDescription];
    v11 = *(a1 + 40);
    v12 = 138543618;
    v13 = v10;
    v14 = 2048;
    v15 = v11;
    _os_log_impl(&dword_0, v9, OS_LOG_TYPE_DEFAULT, "%{public}@: opt-in data upload trigger <%p> completed", &v12, 0x16u);
  }

  os_unfair_lock_lock((*(a1 + 32) + 8));
  [*(*(a1 + 32) + 48) removeObject:*(a1 + 40)];
  os_unfair_lock_unlock((*(a1 + 32) + 8));
}

void sub_2A7CC(uint64_t a1, int a2, void *a3, void *a4)
{
  v7 = a3;
  v8 = a4;
  v9 = v8;
  if (a2)
  {
    _HKInitializeLogging();
    v10 = HKLogHealthRecords;
    if (os_log_type_enabled(HKLogHealthRecords, OS_LOG_TYPE_INFO))
    {
      v12 = *(a1 + 32);
      v13 = v10;
      v14 = [v12 debugDescription];
      v22 = 138543362;
      v23 = v14;
      _os_log_impl(&dword_0, v13, OS_LOG_TYPE_INFO, "%{public}@: opt-in data upload triggered successfully", &v22, 0xCu);
    }

    v11.n128_u64[0] = 0;
    (*(*(a1 + 40) + 16))(v11);
  }

  else
  {
    v15 = [v8 code];
    _HKInitializeLogging();
    v16 = HKLogHealthRecords;
    if (v15)
    {
      if (os_log_type_enabled(HKLogHealthRecords, OS_LOG_TYPE_ERROR))
      {
        sub_9FA2C(a1, v16);
      }

      v18 = *(*(a1 + 40) + 16);
      v17.n128_u64[0] = 0;
    }

    else
    {
      if (os_log_type_enabled(HKLogHealthRecords, OS_LOG_TYPE_INFO))
      {
        v19 = *(a1 + 32);
        v20 = v16;
        v21 = [v19 debugDescription];
        v22 = 138543362;
        v23 = v21;
        _os_log_impl(&dword_0, v20, OS_LOG_TYPE_INFO, "%{public}@: opt-in data upload triggered before registration finishes", &v22, 0xCu);
      }

      v17.n128_f64[0] = XPC_ACTIVITY_INTERVAL_1_MIN;
      v18 = *(*(a1 + 40) + 16);
    }

    v18(v17);
  }
}

void sub_2B4BC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v11 - 96), 8);
  _Unwind_Resume(a1);
}

uint64_t sub_2B4E4(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_2B4FC(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_2B5AC;
  v8[3] = &unk_106BB8;
  v6 = *(a1 + 48);
  v10 = *(a1 + 56);
  v8[4] = v6;
  v9 = v3;
  v7 = v3;
  [v4 fetchOrRefreshCredentialForAccount:v5 completion:v8];
}

void sub_2B5AC(uint64_t a1, void *a2)
{
  v3 = a2;
  _HKInitializeLogging();
  v4 = HKLogHealthRecords;
  if (os_log_type_enabled(HKLogHealthRecords, OS_LOG_TYPE_DEBUG))
  {
    sub_9FFE8(a1, v4);
  }

  v5 = [v3 error];

  if (v5)
  {
    v6 = [v3 error];
    v7 = 56;
  }

  else
  {
    v6 = [v3 credential];
    v7 = 48;
  }

  v8 = *(*(a1 + v7) + 8);
  v9 = *(v8 + 40);
  *(v8 + 40) = v6;

  (*(*(a1 + 40) + 16))();
}

void sub_2CB1C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_2CB44(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

BOOL sub_2CB5C(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v6 = [v5 databaseForEntityClass:objc_opt_class()];

  v15 = 0;
  v7 = [HDClinicalAuthorizationSessionEntity pruneAuthorizationSessionsInDatabase:v6 error:&v15];
  v8 = v15;
  if ((v7 & 1) == 0)
  {
    _HKInitializeLogging();
    v9 = HKLogHealthRecords;
    if (os_log_type_enabled(HKLogHealthRecords, OS_LOG_TYPE_ERROR))
    {
      sub_A0610(a1, v9);
    }
  }

  v10 = [HDClinicalAuthorizationSessionEntity createInitialLoginSessionForGatewayWithExternalID:*(a1 + 40) database:v6 error:a3];
  v11 = *(*(a1 + 48) + 8);
  v12 = *(v11 + 40);
  *(v11 + 40) = v10;

  v13 = *(*(*(a1 + 48) + 8) + 40) != 0;
  return v13;
}

void sub_2CFE8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

BOOL sub_2D010(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v6 = [v5 databaseForEntityClass:objc_opt_class()];

  v7 = [HDClinicalAuthorizationSessionEntity createReloginSessionForAccountWithIdentifier:*(a1 + 32) database:v6 error:a3];
  v8 = *(*(a1 + 40) + 8);
  v9 = *(v8 + 40);
  *(v8 + 40) = v7;

  v10 = *(*(*(a1 + 40) + 8) + 40) != 0;
  return v10;
}

void sub_2D76C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, char a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, char a49)
{
  _Block_object_dispose(&a43, 8);
  _Block_object_dispose(&a49, 8);
  _Block_object_dispose((v49 - 176), 8);
  _Unwind_Resume(a1);
}

BOOL sub_2D7B0(void *a1, void *a2, void **a3)
{
  v5 = a2;
  v6 = [v5 databaseForEntityClass:objc_opt_class()];

  v7 = [HDClinicalAuthorizationSessionEntity existingEntityWithState:a1[4] database:v6 error:a3];
  if ([v7 updateWithCode:a1[5] database:v6 error:a3])
  {
    v8 = [v7 tokenSessionInDatabase:v6 error:a3];
    v9 = *(a1[7] + 8);
    v10 = *(v9 + 40);
    *(v9 + 40) = v8;

    if (*(*(a1[7] + 8) + 40))
    {
      v11 = [v7 accountIdentifierInDatabase:v6];
      v12 = [v7 gatewayExternalIDInDatabase:v6];
      v13 = v12;
      if (v11)
      {
        _HKInitializeLogging();
        v14 = HKLogHealthRecords;
        if (os_log_type_enabled(HKLogHealthRecords, OS_LOG_TYPE_DEFAULT))
        {
          v15 = a1[6];
          v16 = v14;
          v17 = [v15 debugDescription];
          *buf = 138543618;
          v42 = v17;
          v43 = 2114;
          v44 = v11;
          _os_log_impl(&dword_0, v16, OS_LOG_TYPE_DEFAULT, "%{public}@ account %{public}@ is re-logging in", buf, 0x16u);
        }

        v18 = [HDClinicalAccountEntity existingAccountEntityWithIdentifier:v11 database:v6 error:a3];
        if (v18)
        {
          if (![HDClinicalGatewayEntity pruneUnusedGatewaysInDatabase:v6 error:a3])
          {
            _HKInitializeLogging();
            v19 = HKLogHealthRecords;
            if (os_log_type_enabled(HKLogHealthRecords, OS_LOG_TYPE_INFO))
            {
              v20 = a1[6];
              v21 = v19;
              v22 = [v20 debugDescription];
              v23 = *a3;
              *buf = 138543618;
              v42 = v22;
              v43 = 2114;
              v44 = v23;
              _os_log_impl(&dword_0, v21, OS_LOG_TYPE_INFO, "%{public}@ non-Fatal Error: Unable to prune unreferenced clinical account gateways: %{public}@", buf, 0x16u);
            }
          }

          v24 = [v18 accountInDatabase:v6 error:a3];
          v25 = *(a1[8] + 8);
          v26 = *(v25 + 40);
          *(v25 + 40) = v24;

          v27 = [*(*(a1[8] + 8) + 40) gateway];
          v28 = *(a1[9] + 8);
          v29 = *(v28 + 40);
          *(v28 + 40) = v27;

          v30 = a1[8];
          goto LABEL_17;
        }
      }

      else
      {
        if (!v12)
        {
          [NSError hk_assignError:a3 code:100 format:@"Missing both accountIdentifier and gatewayExternalID for authorization session with state %@", a1[4]];
          v31 = 0;
          goto LABEL_20;
        }

        _HKInitializeLogging();
        v32 = HKLogHealthRecords;
        if (os_log_type_enabled(HKLogHealthRecords, OS_LOG_TYPE_DEFAULT))
        {
          v33 = a1[6];
          v34 = v32;
          v35 = [v33 debugDescription];
          *buf = 138543362;
          v42 = v35;
          _os_log_impl(&dword_0, v34, OS_LOG_TYPE_DEFAULT, "%{public}@ logged in to a new account", buf, 0xCu);
        }

        v36 = [HDClinicalGatewayEntity existingGatewayEntityWithExternalID:v13 database:v6 error:a3];
        v18 = v36;
        if (v36)
        {
          v37 = [v36 gatewayInDatabase:v6 error:a3];
          v38 = *(a1[9] + 8);
          v39 = *(v38 + 40);
          *(v38 + 40) = v37;

          v30 = a1[9];
LABEL_17:
          v31 = *(*(v30 + 8) + 40) != 0;
LABEL_19:

LABEL_20:
          goto LABEL_21;
        }
      }

      v31 = 0;
      goto LABEL_19;
    }
  }

  v31 = 0;
LABEL_21:

  return v31;
}

id sub_2DBB4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = [[HDClinicalAccountManagerEndLoginSessionJournalEntry alloc] initWithCode:*(a1 + 32) state:*(a1 + 40)];
  v6 = [*(a1 + 48) addJournalEntry:v5 error:a3];

  return v6;
}

void sub_2DC14(uint64_t a1, int a2, void *a3, void *a4)
{
  v7 = a3;
  v8 = a4;
  v9 = *(*(a1 + 64) + 8);
  v10 = *(v9 + 40);
  if (v10)
  {
    v11 = *(a1 + 32);
    v12 = [*(v9 + 40) identifier];
    v58 = 0;
    v13 = [v11 accountWithIdentifier:v12 error:&v58];
    v14 = v58;

    if (v13)
    {
      objc_storeStrong((*(*(a1 + 64) + 8) + 40), v13);
    }

    else
    {
      _HKInitializeLogging();
      v16 = HKLogHealthRecords;
      if (os_log_type_enabled(HKLogHealthRecords, OS_LOG_TYPE_ERROR))
      {
        sub_A0704((a1 + 32), v16);
      }
    }

    v15 = *(*(*(a1 + 64) + 8) + 40);
  }

  else
  {
    v15 = 0;
  }

  v17 = [v15 hkAccount];
  v18 = v17;
  if (v17)
  {
    v19 = v17;
  }

  else
  {
    v20 = [HKClinicalEphemeralAccount alloc];
    v21 = [*(*(*(a1 + 72) + 8) + 40) hkGateway];
    v22 = [v7 asAuthResponse];
    v23 = [*(*(*(a1 + 80) + 8) + 40) requestedScope];
    v19 = [v20 initWithGateway:v21 authResponse:v22 requestedScopeString:v23];
  }

  _HKInitializeLogging();
  v24 = HKLogHealthRecords;
  if (a2)
  {
    if (os_log_type_enabled(HKLogHealthRecords, OS_LOG_TYPE_DEFAULT))
    {
      v25 = *(a1 + 32);
      v26 = v24;
      v27 = [v25 debugDescription];
      v28 = [v19 identifier];
      *buf = 138543618;
      v60 = v27;
      v61 = 2114;
      v62 = v28;
      _os_log_impl(&dword_0, v26, OS_LOG_TYPE_DEFAULT, "%{public}@ successfully completed token fetch for account %{public}@", buf, 0x16u);
    }

    v29 = [*(*(*(a1 + 80) + 8) + 40) state];
    v30 = *(a1 + 40);
    v57 = 0;
    v31 = [HDClinicalAuthorizationSessionEntity deleteSessionWithState:v29 profile:v30 error:&v57];
    v32 = v57;

    if ((v31 & 1) == 0 && (_HKInitializeLogging(), v33 = HKLogHealthRecords, os_log_type_enabled(HKLogHealthRecords, OS_LOG_TYPE_ERROR)))
    {
      sub_A084C(a1, v33, v32);
      if (v10)
      {
        goto LABEL_17;
      }
    }

    else if (v10)
    {
LABEL_17:
      _HKInitializeLogging();
      v34 = HKLogHealthRecords;
      if (os_log_type_enabled(HKLogHealthRecords, OS_LOG_TYPE_INFO))
      {
        v35 = *(a1 + 32);
        v36 = v34;
        v37 = [v35 debugDescription];
        *buf = 138543362;
        v60 = v37;
        _os_log_impl(&dword_0, v36, OS_LOG_TYPE_INFO, "%{public}@ token fetch succeeded after re-login, triggering ingestion automatically", buf, 0xCu);
      }

      v38 = *(a1 + 32);
      v39 = [v19 identifier];
      [v38 _performIngestionForNewCredentialsWithReason:@"account re-login" accountIdentifier:v39];
    }

    v40 = 0;
LABEL_21:

    v32 = v40;
LABEL_32:
    v46 = [HKClinicalAccountLoginCompletionState alloc];
    v47 = v19;
    v48 = v32;
    v49 = v10 != 0;
    v50 = v8;
    goto LABEL_33;
  }

  if (os_log_type_enabled(HKLogHealthRecords, OS_LOG_TYPE_ERROR))
  {
    v51 = *(a1 + 32);
    v52 = v24;
    v53 = [v51 debugDescription];
    v54 = [v19 identifier];
    *buf = 138543874;
    v60 = v53;
    v61 = 2114;
    v62 = v54;
    v63 = 2114;
    v64 = v8;
    _os_log_error_impl(&dword_0, v52, OS_LOG_TYPE_ERROR, "%{public}@ unable to complete token fetch for account %{public}@: %{public}@", buf, 0x20u);

    if (v8)
    {
      goto LABEL_24;
    }

LABEL_31:
    v32 = 0;
    goto LABEL_32;
  }

  if (!v8)
  {
    goto LABEL_31;
  }

LABEL_24:
  v41 = [v8 hk_OAuth2_isOAuth2ErrorWithCode:13];
  v32 = 0;
  if (!v7 || !v41)
  {
    goto LABEL_32;
  }

  v42 = *(a1 + 32);
  v43 = [v7 asAuthResponse];
  v44 = [*(*(*(a1 + 80) + 8) + 40) requestedScope];
  v56 = 0;
  v40 = [v42 _savePatientMismatchedCredentialFromAuthResponse:v43 requestedScope:v44 error:&v56];
  v32 = v56;

  if (v40)
  {
    goto LABEL_21;
  }

  _HKInitializeLogging();
  v45 = HKLogHealthRecords;
  if (os_log_type_enabled(HKLogHealthRecords, OS_LOG_TYPE_ERROR))
  {
    sub_A07B0((a1 + 32), v45);
  }

  v46 = [HKClinicalAccountLoginCompletionState alloc];
  v47 = v19;
  v48 = 0;
  v49 = v10 != 0;
  v50 = v32;
LABEL_33:
  v55 = [v46 initWithAccount:v47 alternateCredentialPersistentID:v48 wasRelogin:v49 error:v50];
  (*(*(a1 + 56) + 16))();
}

BOOL sub_2E23C(id a1, HDDatabaseTransaction *a2, id *a3)
{
  v4 = a2;
  v5 = [(HDDatabaseTransaction *)v4 databaseForEntityClass:objc_opt_class()];

  LOBYTE(v4) = [HDClinicalGatewayEntity pruneUnusedGatewaysInDatabase:v5 error:a3];
  LOBYTE(a3) = [HDClinicalAuthorizationSessionEntity pruneAuthorizationSessionsInDatabase:v5 error:a3];

  return v4 & a3;
}

void sub_2E480(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  if (v8)
  {
    v10 = *(a1 + 32);
    v11 = [[HKFHIRRequestTaskEndStates alloc] initWithEndState:v8];
    [v10 _accumulateMetricsFromTaskEndStates:v11 gateway:*(a1 + 40)];
  }

  if (!v7)
  {
    v26 = *(*(a1 + 64) + 16);
    goto LABEL_13;
  }

  v12 = *(a1 + 48);
  if (v12)
  {
    v13 = [v12 patientHash];
    v14 = [v7 patientID];
    v15 = [HDFHIRCredential patientHashForPatientID:v14];

    if (!v13 || v13 == v15 || v15 && ([v13 isEqualToString:v15] & 1) != 0)
    {
      v33 = v15;
      v16 = [HKClinicalAccountEvent alloc];
      v17 = [*(a1 + 48) identifier];
      v18 = [NSString stringWithFormat:@"%s:%d (%s)", "[HDClinicalAccountManager _fetchAccessTokenForTokenSession:existingAccount:gateway:completion:]_block_invoke", 393, "/Library/Caches/com.apple.xbs/Sources/HealthKit/HealthRecords/HealthRecordsPlugin/Managers/HDClinicalAccountManager.m"];
      v19 = +[NSDate date];
      v20 = [v16 initWithAccountIdentifier:v17 type:1 caller:v18 timestamp:v19 eventDescription:@"Updating existing account credential state from auth response after fetching access token based on OAuth2 authorization code."];

      v21 = *(a1 + 32);
      v22 = [v7 asAuthResponse];
      v23 = *(a1 + 48);
      v24 = [*(a1 + 56) requestedScope];
      v34 = 0;
      LOBYTE(v23) = [v21 _createOrUpdateCredentialFromAuthResponse:v22 account:v23 requestedScope:v24 event:v20 error:&v34];
      v25 = v34;

      if (v23)
      {

        goto LABEL_11;
      }

      (*(*(a1 + 64) + 16))();
    }

    else
    {
      _HKInitializeLogging();
      v27 = HKLogHealthRecords;
      if (os_log_type_enabled(HKLogHealthRecords, OS_LOG_TYPE_DEFAULT))
      {
        v28 = *(a1 + 32);
        v29 = v27;
        v30 = [v28 debugDescription];
        *buf = 138543874;
        v36 = v30;
        v37 = 2114;
        v38 = v13;
        v39 = 2114;
        v40 = v15;
        _os_log_impl(&dword_0, v29, OS_LOG_TYPE_DEFAULT, "%{public}@ patient hash mismatch, had %{public}@, now have %{public}@", buf, 0x20u);
      }

      v31 = *(a1 + 64);
      v32 = [NSError hk_OAuth2_error:13];
      (*(v31 + 16))(v31, 0, v7, v32);
    }

    goto LABEL_19;
  }

LABEL_11:
  v26 = *(*(a1 + 64) + 16);
LABEL_13:
  v26();
LABEL_19:
}

void sub_2EA14(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v7 = 0;
  v5 = [v3 finalizeAfterRunningRefreshAccountInformationTask:v4 refreshResult:a2 finalizationError:&v7];
  v6 = v7;
  (*(*(a1 + 56) + 16))();
  [*(a1 + 48) invalidate];
}

void sub_2F2E4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

BOOL sub_2F2FC(uint64_t a1, void *a2, uint64_t *a3)
{
  v5 = a2;
  v6 = [v5 databaseForEntityClass:objc_opt_class()];

  v7 = *(a1 + 32);
  v8 = [*(a1 + 40) gateway];
  v9 = [v8 externalID];
  v10 = [v7 _createAccountForGatewayWithExternalID:v9 database:v6 profile:*(a1 + 48) error:a3];

  if (v10)
  {
    [v10 identifierInDatabase:v6];
    v12 = v11 = a3;
    v13 = [HKClinicalAccountEvent alloc];
    v14 = [NSString stringWithFormat:@"%s:%d (%s)", "[HDClinicalAccountManager persistEphemeralAccount:triggerIngestion:error:]_block_invoke", 518, "/Library/Caches/com.apple.xbs/Sources/HealthKit/HealthRecords/HealthRecordsPlugin/Managers/HDClinicalAccountManager.m"];
    +[NSDate date];
    v15 = v33 = v6;
    v16 = [v13 initWithAccountIdentifier:v12 type:1 caller:v14 timestamp:v15 eventDescription:@"Persisting an ephemeral account and creating a credential from auth response."];

    v17 = [*(a1 + 40) authResponse];
    v18 = [*(a1 + 40) requestedScopeString];
    v19 = *(a1 + 48);
    v20 = [v19 database];
    v34 = v12;
    LODWORD(v14) = [HDClinicalAccountEntity createAccountCredentialFromAuthResponse:v17 accountIdentifier:v12 requestedScope:v18 profile:v19 healthDatabase:v20 event:v16 createdCredential:0 error:v11];

    if (v14)
    {
      v6 = v33;
      if (![HDClinicalGatewayEntity pruneUnusedGatewaysInDatabase:v33 error:v11])
      {
        _HKInitializeLogging();
        v21 = HKLogHealthRecords;
        if (os_log_type_enabled(HKLogHealthRecords, OS_LOG_TYPE_INFO))
        {
          v22 = *(a1 + 32);
          v23 = v21;
          v24 = [v22 debugDescription];
          v25 = *v11;
          *buf = 138543618;
          v36 = v24;
          v37 = 2114;
          v38 = v25;
          _os_log_impl(&dword_0, v23, OS_LOG_TYPE_INFO, "%{public}@ non-fatal error: unable to prune unreferenced clinical account gateways: %{public}@", buf, 0x16u);
        }
      }

      v26 = [v10 accountInDatabase:v33 error:v11];
      v27 = v26;
      if (v26)
      {
        v28 = [v26 hkAccount];
        v29 = *(*(a1 + 56) + 8);
        v30 = *(v29 + 40);
        *(v29 + 40) = v28;

        v31 = *(*(*(a1 + 56) + 8) + 40) != 0;
      }

      else
      {
        v31 = 0;
      }
    }

    else
    {
      v31 = 0;
      v6 = v33;
    }
  }

  else
  {
    v31 = 0;
  }

  return v31;
}

id sub_2F7D8(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = [*(a1 + 32) credential];

  v7 = *(a1 + 40);
  v8 = *(a1 + 48);
  v9 = *(a1 + 56);
  WeakRetained = objc_loadWeakRetained((*(a1 + 64) + 24));
  v12 = *(a1 + 72);
  v11 = *(a1 + 80);
  if (v6)
  {
    v13 = [v11 eventWithAppendedEventDescription:@"update credential"];
    v24 = 0;
    v14 = [HDClinicalAccountEntity updateAccountCredentialFromAuthResponse:v7 accountIdentifier:v8 requestedScope:v9 profile:WeakRetained healthDatabase:v12 event:v13 updatedCredential:0 error:&v24];
    v15 = v24;
  }

  else
  {
    v13 = [v11 eventWithAppendedEventDescription:@"create credential"];
    v23 = 0;
    v14 = [HDClinicalAccountEntity createAccountCredentialFromAuthResponse:v7 accountIdentifier:v8 requestedScope:v9 profile:WeakRetained healthDatabase:v12 event:v13 createdCredential:0 error:&v23];
    v15 = v23;
  }

  v16 = v15;

  if ((v14 & 1) == 0)
  {
    v17 = v16;
    if (v17)
    {
      if (a3)
      {
        v21 = v17;
        v20 = 0;
        *a3 = v17;
LABEL_11:
        v16 = v17;
        goto LABEL_12;
      }

      _HKLogDroppedError();
    }

    v20 = 0;
    goto LABEL_11;
  }

  v17 = [v5 databaseForEntityClass:objc_opt_class()];
  v18 = [HDClinicalAccountEntity existingAccountEntityWithIdentifier:*(a1 + 48) database:v17 error:a3];
  v19 = objc_loadWeakRetained((*(a1 + 64) + 24));
  v20 = [v18 resetFetchFailureInformationWithProfile:v19 transaction:v5 error:a3];

LABEL_12:
  return v20;
}

void sub_2FBC4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

BOOL sub_2FBDC(void *a1, void *a2, uint64_t a3)
{
  v5 = a1[4];
  v6 = a1[5];
  v7 = a2;
  WeakRetained = objc_loadWeakRetained((v6 + 24));
  v9 = [HDFHIRCredentialEntity insertCredential:v5 profile:WeakRetained transaction:v7 error:a3];

  v10 = +[NSNumber numberWithLongLong:](NSNumber, "numberWithLongLong:", [v9 persistentID]);
  v11 = *(a1[6] + 8);
  v12 = *(v11 + 40);
  *(v11 + 40) = v10;

  return v9 != 0;
}

void sub_2FE40(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

BOOL sub_2FE58(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v6 = *(a1 + 32);
  v7 = [v5 protectedDatabase];
  v8 = [HDClinicalAccountEntity existingAccountEntityWithIdentifier:v6 database:v7 error:a3];

  if (v8)
  {
    v9 = HDClinicalAccountEntityPropertyGatewayExternalID;
    v10 = [v5 protectedDatabase];
    v11 = [v8 stringForProperty:v9 database:v10];

    if (!v11)
    {
      [NSError hk_assignError:a3 code:3 format:@"Unable to replace account %@ with a new account: no gateway id found on account", *(a1 + 32)];
      v21 = 0;
LABEL_19:

      goto LABEL_20;
    }

    v12 = [v5 protectedDatabase];
    v13 = [v8 syncIdentifierInDatabase:v12];

    if (v13)
    {
      if ([*(a1 + 40) _deleteAccountWithSyncIdentifier:v13 deletionReason:1 transaction:v5 error:a3])
      {
        v14 = *(a1 + 40);
        v15 = [v5 protectedDatabase];
        v16 = [v14 _createAccountForGatewayWithExternalID:v11 database:v15 profile:*(a1 + 48) error:a3];

        if (v16)
        {
          v17 = *(a1 + 56);
          WeakRetained = objc_loadWeakRetained((*(a1 + 40) + 24));
          v19 = [v16 assignCredentialWithPersistentID:v17 profile:WeakRetained transaction:v5 error:a3];

          if (v19)
          {
            v17 = [v5 protectedDatabase];
            v20 = [v16 identifierInDatabase:v17];
          }

          else
          {
            v20 = 0;
          }

          objc_storeStrong((*(*(a1 + 64) + 8) + 40), v20);
          if (v19)
          {
          }

          v21 = *(*(*(a1 + 64) + 8) + 40) != 0;
        }

        else
        {
          v21 = 0;
        }

        goto LABEL_18;
      }
    }

    else
    {
      [NSError hk_assignError:a3 code:100 format:@"Unable to replace account %@ with a new account: failed to retrieve sync identifier", *(a1 + 32)];
    }

    v21 = 0;
LABEL_18:

    goto LABEL_19;
  }

  v21 = 0;
LABEL_20:

  return v21;
}

void sub_303B4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

BOOL sub_303CC(uint64_t a1, uint64_t a2)
{
  v4 = [*(a1 + 32) profile];
  v5 = [v4 database];
  *(*(*(a1 + 40) + 8) + 24) = [HDClinicalAccountEntity hasGatewayBackedAccountsInHealthDatabase:v5 error:a2];

  return *(*(*(a1 + 40) + 8) + 24) != 0;
}

void sub_3054C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

BOOL sub_30564(uint64_t a1, uint64_t a2)
{
  v4 = [*(a1 + 32) profile];
  v5 = [v4 database];
  *(*(*(a1 + 40) + 8) + 24) = [HDClinicalAccountEntity hasIssuerBackedAccountsInHealthDatabase:v5 error:a2];

  return *(*(*(a1 + 40) + 8) + 24) != 0;
}

void sub_308C0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

BOOL sub_30988(id a1, HDClinicalAccount *a2)
{
  v2 = a2;
  v3 = [(HDClinicalAccount *)v2 gateway];

  if (v3)
  {
    v3 = [(HDClinicalAccount *)v2 gateway];
    v4 = [v3 hkGateway];

    v5 = [v4 features];
    v6 = [v5 hk_firstObjectPassingTest:&stru_106E80];
    LOBYTE(v3) = v6 != 0;
  }

  return v3;
}

BOOL sub_30A24(id a1, HKClinicalGatewayFeature *a2)
{
  v2 = [(HKClinicalGatewayFeature *)a2 name];
  v3 = [v2 isEqualToString:HKClinicalGatewayFeatureNameClinicalSharing];

  return v3;
}

void sub_319D4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_319F4(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v6 = *(a1 + 32);
  v7 = [v5 protectedDatabase];
  v8 = [HDClinicalAccountEntity existingAccountEntityWithIdentifier:v6 database:v7 error:a3];

  if (v8)
  {
    v9 = [v5 protectedDatabase];
    v10 = [v8 syncIdentifierInDatabase:v9];

    if (v10)
    {
      *(*(*(a1 + 48) + 8) + 24) = [*(a1 + 40) _deleteAccountWithSyncIdentifier:v10 deletionReason:*(a1 + 56) transaction:v5 error:a3];
      v11 = *(*(*(a1 + 48) + 8) + 24);
    }

    else
    {
      v12 = [*(a1 + 32) UUIDString];
      [NSError hk_assignError:a3 code:100 format:@"Failed to retrieve sync identifier for account with identifier %@", v12];

      v11 = 0;
    }
  }

  else
  {
    v11 = 0;
  }

  return v11 & 1;
}

id sub_31B28(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(*(*(a1 + 48) + 8) + 24) = 0;
  v5 = [[HDClinicalAccountManagerDeleteAccountByIdentifierJournalEntry alloc] initWithAccountIdentifier:*(a1 + 32) deletionReason:*(a1 + 56)];
  v6 = [*(a1 + 40) addJournalEntry:v5 error:a3];

  return v6;
}

id sub_31DEC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = [[HDClinicalAccountManagerDeleteAccountBySyncIdentifierJournalEntry alloc] initWithAccountSyncIdentifier:*(a1 + 32) deletionReason:*(a1 + 48)];
  v6 = [*(a1 + 40) addJournalEntry:v5 error:a3];

  return v6;
}

id sub_32B20(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = [v5 databaseForEntityClass:objc_opt_class()];
  v7 = [*(a1 + 32) identifier];
  v8 = [HDClinicalAccountEntity existingAccountEntityWithIdentifier:v7 database:v6 error:a3];

  v9 = [v8 updateCredentialState:*(a1 + 56) profile:*(a1 + 40) transaction:v5 error:a3];
  v12 = *(a1 + 48);
  v10 = (a1 + 48);
  v11 = v12;
  if ((v9 & 1) == 0)
  {
    v11 = [v11 eventMarkedAsFailedWithError:*a3];
  }

  v17 = 0;
  v13 = [HDClinicalAccountEventEntity insertEvent:v11 database:v6 error:&v17];
  v14 = v17;
  if ((v9 & 1) == 0)
  {
  }

  if ((v13 & 1) == 0)
  {
    _HKInitializeLogging();
    v15 = HKLogHealthRecords;
    if (os_log_type_enabled(HKLogHealthRecords, OS_LOG_TYPE_FAULT))
    {
      sub_A0D70(v10, v15);
    }
  }

  return v9;
}

uint64_t sub_32C7C(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v8 = *(a1 + 32);
  v6 = *(a1 + 40);
  v7 = (a1 + 32);
  v9 = [v6 database];
  v15 = 0;
  LOBYTE(v8) = [HDClinicalAccountEventEntity journalEvent:v8 database:v9 error:&v15];
  v10 = v15;

  if ((v8 & 1) == 0)
  {
    _HKInitializeLogging();
    v11 = HKLogHealthRecords;
    if (os_log_type_enabled(HKLogHealthRecords, OS_LOG_TYPE_FAULT))
    {
      sub_A0D70(v7, v11);
    }
  }

  v12 = v5;
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

  return 0;
}

id sub_32F14(void *a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v6 = [v5 databaseForEntityClass:objc_opt_class()];
  v7 = [HDClinicalAccountEntity existingAccountEntityWithIdentifier:a1[4] database:v6 error:a3];
  if (v7)
  {
    WeakRetained = objc_loadWeakRetained((a1[5] + 24));
    v9 = [v7 updateClinicalSharingStatusWithProfile:WeakRetained transaction:v5 firstSharedDate:a1[6] lastSharedDate:a1[7] userStatus:a1[8] multiDeviceStatus:a1[9] primaryDeviceName:a1[10] error:a3];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

void sub_336E4(uint64_t a1, uint64_t a2)
{
  v2 = (a1 + 40);
  v3 = *(a1 + 40);
  v4 = *(a1 + 32);
  v5 = [*(a1 + 48) eventMarkedAsFailedWithError:a2];
  v7 = 0;
  LOBYTE(v4) = [v4 _setAccountWithIdentifierNeedsRelogin:v3 event:v5 error:&v7];
  v6 = v7;

  if ((v4 & 1) == 0)
  {
    _HKInitializeLogging();
    if (os_log_type_enabled(HKLogHealthRecords, OS_LOG_TYPE_FAULT))
    {
      sub_A0EB8(v2);
    }
  }
}

BOOL sub_3404C(uint64_t a1, void *a2, uint64_t a3)
{
  if (*(a1 + 96))
  {
    v6 = @"SIMULATOR_FAKECLIENTID";
  }

  else
  {
    v6 = @"QAUSEONLY_FAKECLIENTID";
  }

  v7 = v6;
  if (*(a1 + 96))
  {
    v8 = @"SIMULATOR_FAKECLIENTSECRET";
  }

  else
  {
    v8 = @"QAUSEONLY_FAKECLIENTSECRET";
  }

  v9 = v8;
  if (*(a1 + 96))
  {
    v10 = @"SIMULATOR_FAKEGATEWAYBATCHID";
  }

  else
  {
    v10 = @"QAUSEONLY_FAKEGATEWAYBATCHID";
  }

  v11 = v10;
  if (*(a1 + 96))
  {
    v12 = @"SIMULATOR_FAKEBRANDID";
  }

  else
  {
    v12 = @"QAUSEONLY_FAKEBRANDID";
  }

  v13 = v12;
  if (*(a1 + 96))
  {
    v14 = @"SIMULATOR_FAKEBRANDBATCHID";
  }

  else
  {
    v14 = @"QAUSEONLY_FAKEBRANDBATCHID";
  }

  v15 = v14;
  v45[0] = @"authSchemas";
  v45[1] = @"baseURL";
  v46[0] = &__NSArray0__struct;
  v46[1] = @"https://localhost:9090/resource";
  v45[2] = @"clientID";
  v45[3] = @"clientSecret";
  v16 = *(a1 + 32);
  v17 = *(a1 + 40);
  v46[3] = v9;
  v46[4] = v16;
  v45[4] = @"country";
  v45[5] = @"fhirVersion";
  v41 = v9;
  v42 = v7;
  v46[2] = v7;
  v18 = a2;
  v19 = [v17 stringRepresentation];
  v46[5] = v19;
  v46[6] = v11;
  v40 = v11;
  v20 = a3;
  v21 = v15;
  v45[6] = @"gatewayBatchID";
  v45[7] = @"gatewayID";
  v22 = *(a1 + 56);
  v46[7] = *(a1 + 48);
  v46[8] = &off_110228;
  v45[8] = @"minCompatibleApiVersion";
  v45[9] = @"title";
  v23 = *(a1 + 64);
  if (!v23)
  {
    v23 = @"Static Gateway";
  }

  v46[9] = v22;
  v46[10] = v23;
  v45[10] = @"subtitle";
  v45[11] = @"phoneNumber";
  v46[11] = @"4085551212";
  v45[12] = @"brand";
  v43[0] = @"brandID";
  v43[1] = @"brandBatchID";
  v44[0] = v13;
  v44[1] = v15;
  v24 = [NSDictionary dictionaryWithObjects:v44 forKeys:v43 count:2];
  v46[12] = v24;
  v46[13] = &off_110750;
  v45[13] = @"urls";
  v45[14] = @"displayableDescription";
  v25 = *(a1 + 72);
  if (!v25)
  {
    v25 = @"Gateway paired with static local account";
  }

  v46[14] = v25;
  v45[15] = @"resourceSchemas";
  v45[16] = @"status";
  v46[15] = &__NSArray0__struct;
  v46[16] = @"Disabled";
  v45[17] = @"type";
  v45[18] = @"updated";
  v46[17] = @"FHIR";
  v46[18] = &off_110240;
  v26 = [NSDictionary dictionaryWithObjects:v46 forKeys:v45 count:19];

  v27 = [v18 databaseForEntityClass:objc_opt_class()];

  v28 = [[HDClinicalGateway alloc] initWithContent:v26];
  v29 = [*(a1 + 80) profile];
  v30 = [HDClinicalGatewayEntity insertOrUpdateGateway:v28 database:v27 profile:v29 error:v20];

  if (v30)
  {
    v31 = *(a1 + 80);
    v32 = *(a1 + 48);
    v33 = [v31 profile];
    v34 = [v31 _createAccountForGatewayWithExternalID:v32 database:v27 profile:v33 error:v20];

    if (v34)
    {
      v35 = [v34 accountInDatabase:v27 error:v20];
      v36 = *(*(a1 + 88) + 8);
      v37 = *(v36 + 40);
      *(v36 + 40) = v35;

      v38 = *(*(*(a1 + 88) + 8) + 40) != 0;
    }

    else
    {
      v38 = 0;
    }
  }

  else
  {
    v38 = 0;
  }

  return v38;
}

void sub_346C4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

BOOL sub_346DC(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v6 = *(a1 + 32);
  v7 = [*(a1 + 40) externalID];
  v8 = [v5 protectedDatabase];
  v9 = [v6 _createAccountForGatewayWithExternalID:v7 database:v8 profile:*(a1 + 48) error:a3];

  if (v9)
  {
    v10 = [v5 protectedDatabase];
    v11 = [v9 accountInDatabase:v10 error:a3];
    v12 = *(*(a1 + 56) + 8);
    v13 = *(v12 + 40);
    *(v12 + 40) = v11;

    v14 = *(*(*(a1 + 56) + 8) + 40) != 0;
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

void sub_3499C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

BOOL sub_349B4(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v6 = *(a1 + 32);
  v7 = [*(a1 + 40) externalID];
  v8 = [v5 protectedDatabase];
  v9 = [v6 _createAccountForGatewayWithExternalID:v7 database:v8 profile:*(a1 + 48) error:a3];

  if (v9)
  {
    v10 = [HKFHIRCredential from:*(a1 + 56) requestedScope:*(a1 + 64)];
    v11 = [v10 createCredentialWithIdentifier:0 error:a3];
    if (v11)
    {
      v12 = [HDFHIRCredentialEntity insertCredential:v11 profile:*(a1 + 48) transaction:v5 error:a3];
      v13 = v12;
      if (v12)
      {
        v14 = +[NSNumber numberWithLongLong:](NSNumber, "numberWithLongLong:", [v12 persistentID]);
        [v9 assignCredentialWithPersistentID:v14 profile:*(a1 + 48) transaction:v5 error:a3];

        v15 = [v5 protectedDatabase];
        v16 = [v9 accountInDatabase:v15 error:a3];
        v17 = *(*(a1 + 72) + 8);
        v18 = *(v17 + 40);
        *(v17 + 40) = v16;

        v19 = *(*(*(a1 + 72) + 8) + 40) != 0;
      }

      else
      {
        v19 = 0;
      }
    }

    else
    {
      v19 = 0;
    }
  }

  else
  {
    v19 = 0;
  }

  return v19;
}

void sub_3538C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

BOOL sub_353B4(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = [v5 databaseForEntityClass:objc_opt_class()];
  v7 = *(a1 + 32);
  v42 = 0;
  v8 = [HDClinicalAccountEntity accountEntityForSignedClinicalDataIssuerWithIdentifier:v7 database:v6 error:&v42];
  v9 = v42;
  v10 = *(*(a1 + 56) + 8);
  v11 = *(v10 + 40);
  *(v10 + 40) = v8;

  if (!*(*(*(a1 + 56) + 8) + 40))
  {
    if (v9)
    {
      _HKInitializeLogging();
      v13 = HKLogHealthRecords;
      if (os_log_type_enabled(HKLogHealthRecords, OS_LOG_TYPE_DEBUG))
      {
        v35 = *(a1 + 40);
        v36 = v13;
        v37 = [v35 debugDescription];
        v38 = *(a1 + 32);
        v39 = HKSensitiveLogItem();
        *buf = 138543874;
        v44 = v37;
        v45 = 2114;
        v46 = v39;
        v47 = 2114;
        v48 = v9;
        _os_log_debug_impl(&dword_0, v36, OS_LOG_TYPE_DEBUG, "%{public}@ failed to check for existing account for ID %{public}@: %{public}@", buf, 0x20u);
      }

      if (a3)
      {
        v14 = v9;
        v12 = 0;
        *a3 = v9;
        goto LABEL_26;
      }

      _HKLogDroppedError();
    }

    else
    {
      v15 = *(a1 + 64);
      _HKInitializeLogging();
      v16 = HKLogHealthRecords;
      if (v15)
      {
        if (os_log_type_enabled(HKLogHealthRecords, OS_LOG_TYPE_DEFAULT))
        {
          v17 = *(a1 + 40);
          v18 = v16;
          v19 = [v17 debugDescription];
          v20 = *(a1 + 32);
          v21 = HKSensitiveLogItem();
          *buf = 138543618;
          v44 = v19;
          v45 = 2114;
          v46 = v21;
          _os_log_impl(&dword_0, v18, OS_LOG_TYPE_DEFAULT, "%{public}@ creating account & issuer with identifier %{public}@", buf, 0x16u);
        }

        v22 = (a1 + 40);
        v23 = [*(a1 + 40) profileExtension];
        v24 = [v23 createSignedClinicalDataRegistry];

        v25 = [HKSignedClinicalDataIssuer makeIssuerForIdentifier:*(a1 + 32) label:*(a1 + 48) isWellKnown:*(a1 + 65) usingRegistry:v24];
        v26 = *(a1 + 40);
        v41 = 0;
        v27 = [v26 createAccountForIssuer:v25 databaseTransaction:v5 error:&v41];
        v28 = v41;
        v29 = *(*(a1 + 56) + 8);
        v30 = *(v29 + 40);
        *(v29 + 40) = v27;

        if (*(*(*(a1 + 56) + 8) + 40))
        {

          v12 = *(*(*(a1 + 56) + 8) + 40) != 0;
          goto LABEL_26;
        }

        _HKInitializeLogging();
        v32 = HKLogHealthRecords;
        if (os_log_type_enabled(HKLogHealthRecords, OS_LOG_TYPE_ERROR))
        {
          sub_A10F8(v22, v32);
        }

        v33 = v28;
        if (v33)
        {
          if (a3)
          {
            v34 = v33;
            *a3 = v33;
          }

          else
          {
            _HKLogDroppedError();
          }
        }
      }

      else
      {
        if (os_log_type_enabled(HKLogHealthRecords, OS_LOG_TYPE_ERROR))
        {
          sub_A1048(a1, v16, (a1 + 32));
        }

        v31 = *(a1 + 32);
        v24 = HKSensitiveLogItem();
        [NSError hk_assignError:a3 code:118 format:@"no account and issuer with identifier %@", v24];
      }
    }

    v12 = 0;
    goto LABEL_26;
  }

  v12 = 1;
LABEL_26:

  return v12;
}

BOOL sub_357AC(id a1, NSError *a2, id *a3)
{
  v4 = a2;
  if (v4)
  {
    if (a3)
    {
      v5 = v4;
      *a3 = v4;
    }

    else
    {
      _HKLogDroppedError();
    }
  }

  return 0;
}

void sub_359A4(uint64_t a1, void *a2)
{
  v3 = a2;
  if (([v3 taskSuccess] & 1) == 0)
  {
    _HKInitializeLogging();
    v4 = HKLogHealthRecords;
    if (os_log_type_enabled(HKLogHealthRecords, OS_LOG_TYPE_ERROR))
    {
      sub_A11A4(a1, v4, v3);
    }
  }

  [*(a1 + 56) invalidate];
}

void sub_35BAC(uint64_t a1, int a2, void *a3)
{
  v5 = a3;
  v6 = v5;
  if (a2)
  {
    _HKInitializeLogging();
    v7 = HKLogHealthRecords;
    if (os_log_type_enabled(HKLogHealthRecords, OS_LOG_TYPE_DEFAULT))
    {
      v8 = *(a1 + 32);
      v9 = *(a1 + 40);
      v11 = 138543618;
      v12 = v8;
      v13 = 2114;
      v14 = v9;
      _os_log_impl(&dword_0, v7, OS_LOG_TYPE_DEFAULT, "%{public}@ successfully requested changes cloud sync for reason: %{public}@", &v11, 0x16u);
    }
  }

  else if (([v5 hk_isHealthKitErrorWithCode:701] & 1) != 0 || objc_msgSend(v6, "hk_isHealthKitErrorWithCode:", 111))
  {
    _HKInitializeLogging();
    v10 = HKLogHealthRecords;
    if (os_log_type_enabled(HKLogHealthRecords, OS_LOG_TYPE_DEBUG))
    {
      sub_A1324(a1, v10);
    }
  }

  else
  {
    _HKInitializeLogging();
    if (os_log_type_enabled(HKLogHealthRecords, OS_LOG_TYPE_ERROR))
    {
      sub_A1294(a1);
    }
  }
}

void sub_360B8(uint64_t a1, void *a2)
{
  v3 = a2;
  if (([v3 didSucceed] & 1) == 0)
  {
    _HKInitializeLogging();
    v4 = HKLogDatabase;
    if (os_log_type_enabled(HKLogDatabase, OS_LOG_TYPE_FAULT))
    {
      sub_A144C(a1, v4);
    }
  }
}

uint64_t sub_36C88(uint64_t result, uint64_t a2, uint64_t a3, float a4)
{
  *a3 = a4;
  *(a3 + 4) = result;
  *(a3 + 12) = 2114;
  *(a3 + 14) = a2;
  return result;
}

void sub_36CA0(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_fault_impl(a1, a2, OS_LOG_TYPE_FAULT, a4, &a9, 0xCu);
}

void sub_3708C(void *a1)
{
  objc_begin_catch(a1);
  os_unfair_lock_unlock((v1 + v2));
  objc_exception_rethrow();
}

void sub_37198(void *a1)
{
  objc_begin_catch(a1);
  os_unfair_lock_unlock((v1 + v2));
  objc_exception_rethrow();
}

void sub_37358(void *a1)
{
  objc_begin_catch(a1);
  os_unfair_lock_unlock((v1 + v2));
  objc_exception_rethrow();
}

void sub_37464(void *a1)
{
  objc_begin_catch(a1);
  os_unfair_lock_unlock((v1 + v2));
  objc_exception_rethrow();
}

void sub_38C94(uint64_t a1)
{
  v7 = [*(a1 + 32) error];
  if ([*(a1 + 32) isCancelled])
  {
    v2 = [NSError hk_error:7 description:@"Search operation cancelled"];

    (*(*(a1 + 48) + 16))();
    v3 = v2;
  }

  else
  {
    v4 = *(a1 + 40);
    v5 = [*(a1 + 32) page];
    v6 = [v4 _searchResultsPageWithOnlySupportedSearchResultsInSearchResultsPage:v5];

    (*(*(a1 + 48) + 16))();
    v3 = v7;
  }
}

void sub_38F54(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(*(a1 + 40) + 64);
  v19 = 0;
  v4 = [HDProviderServiceSpecification URLForProvidersWithBatchID:v2 searchSessionID:v3 error:&v19];
  v5 = v19;
  if (v4)
  {
    v6 = [NSURLRequest requestWithURL:v4];
    v7 = [[HDCPSFetchJSONTask alloc] initWithSession:*(*(a1 + 40) + 24) request:v6];
    [(HDCPSFetchJSONTask *)v7 resume];
    [(HDCPSFetchJSONTask *)v7 waitUntilFinished];
    v8 = [(HDCPSFetchJSONTask *)v7 JSONObject];

    if (v8)
    {
      v9 = [(HDCPSFetchJSONTask *)v7 JSONObject];
      v10 = *(a1 + 48);
      v15[0] = _NSConcreteStackBlock;
      v15[1] = 3221225472;
      v15[2] = sub_39120;
      v15[3] = &unk_1070F0;
      v11 = v10;
      v12 = *(a1 + 40);
      v16 = v11;
      v17 = v12;
      v18 = *(a1 + 56);
      [HDProviderServiceSpecification providerAndGatewaysFromFetchedJSONObject:v9 matchingProviderExternalID:v11 completion:v15];

      v13 = v16;
    }

    else
    {
      v14 = *(a1 + 56);
      v13 = [(HDCPSFetchJSONTask *)v7 error];
      (*(v14 + 16))(v14, 0, v13);
    }
  }

  else
  {
    (*(*(a1 + 56) + 16))();
  }
}

void sub_39120(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  if (!v7)
  {
    _HKInitializeLogging();
    v10 = HKLogHealthRecords;
    if (os_log_type_enabled(HKLogHealthRecords, OS_LOG_TYPE_ERROR))
    {
      sub_A1994(a1, v10, v9);
    }
  }

  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  v11 = v8;
  v12 = [v11 countByEnumeratingWithState:&v22 objects:v26 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v23;
    while (2)
    {
      v15 = 0;
      do
      {
        if (*v23 != v14)
        {
          objc_enumerationMutation(v11);
        }

        v16 = *(*(&v22 + 1) + 8 * v15);
        v17 = *(a1 + 40);
        v21 = 0;
        v18 = [v17 _insertOrUpdateGatewayIfSupported:v16 error:&v21];
        v19 = v21;
        v20 = v19;
        if ((v18 & 1) == 0)
        {
          (*(*(a1 + 48) + 16))();

          goto LABEL_14;
        }

        v15 = v15 + 1;
      }

      while (v13 != v15);
      v13 = [v11 countByEnumeratingWithState:&v22 objects:v26 count:16];
      if (v13)
      {
        continue;
      }

      break;
    }
  }

  (*(*(a1 + 48) + 16))();
LABEL_14:
}

void sub_393C0(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_3945C;
  v4[3] = &unk_107140;
  v3 = *(a1 + 48);
  v5 = *(a1 + 56);
  [v1 _fetchRemoteGatewayWithExternalID:v2 batchID:v3 completion:v4];
}

void sub_3945C(uint64_t a1, void *a2)
{
  v4 = a2;
  if (v4)
  {
    v3 = [[HKClinicalGateway alloc] initWithDaemonClinicalGateway:v4];
    (*(*(a1 + 32) + 16))();
  }

  else
  {
    (*(*(a1 + 32) + 16))();
  }
}

void sub_395B8(uint64_t a1)
{
  v2 = [*(a1 + 32) profile];
  v3 = *(a1 + 40);
  v4 = [v2 database];
  v12 = 0;
  v5 = [HDClinicalGatewayEntity gatewayWithExternalID:v3 healthDatabase:v4 error:&v12];
  v6 = v12;

  if (v5)
  {
    v7 = *(a1 + 32);
    v8 = *(a1 + 40);
    v9 = [v5 batchID];
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_39700;
    v10[3] = &unk_107140;
    v11 = *(a1 + 48);
    [v7 _fetchRemoteGatewayWithExternalID:v8 batchID:v9 completion:v10];
  }

  else
  {
    (*(*(a1 + 48) + 16))();
  }
}

void sub_39800(void *a1)
{
  v2 = a1[4];
  v17 = 0;
  v3 = [HDProviderServiceSpecification URLForGatewaysWithBatchID:v2 error:&v17];
  v4 = v17;
  if (v3)
  {
    v5 = [NSURLRequest requestWithURL:v3];
    v6 = [[HDCPSFetchJSONTask alloc] initWithSession:*(a1[5] + 24) request:v5];
    [(HDCPSFetchJSONTask *)v6 resume];
    [(HDCPSFetchJSONTask *)v6 waitUntilFinished];
    v7 = [(HDCPSFetchJSONTask *)v6 JSONObject];

    if (v7)
    {
      v8 = [(HDCPSFetchJSONTask *)v6 JSONObject];
      v9 = a1[6];
      v16 = v4;
      v10 = [HDProviderServiceSpecification gatewayFromFetchedJSONObject:v8 matchingExternalID:v9 error:&v16];
      v11 = v16;

      if (!v10)
      {
        (*(a1[7] + 16))();
        v4 = v11;
LABEL_9:

        goto LABEL_10;
      }

      v12 = a1[5];
      v15 = v11;
      [v12 _insertOrUpdateGatewayIfSupported:v10 error:&v15];
      v4 = v15;

      v13 = *(a1[7] + 16);
    }

    else
    {
      v14 = a1[7];
      v10 = [(HDCPSFetchJSONTask *)v6 error];
      v13 = *(v14 + 16);
    }

    v13();
    goto LABEL_9;
  }

  (*(a1[7] + 16))();
LABEL_10:
}

uint64_t sub_39BF8(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = [v3 countryCode];
  if ([v4 _isCountryCodeSupported:v5])
  {
    [v3 minCompatibleAPIVersion];
    IsMinCompatibleAPIVersionSupported = HKProviderServiceIsMinCompatibleAPIVersionSupported();
  }

  else
  {
    IsMinCompatibleAPIVersionSupported = 0;
  }

  return IsMinCompatibleAPIVersionSupported;
}

uint64_t sub_39D28(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = [v3 country];
  if ([v4 _isCountryCodeSupported:v5])
  {
    [v3 minCompatibleAPIVersion];
    IsMinCompatibleAPIVersionSupported = HKProviderServiceIsMinCompatibleAPIVersionSupported();
  }

  else
  {
    IsMinCompatibleAPIVersionSupported = 0;
  }

  if (v3)
  {
    v7 = IsMinCompatibleAPIVersionSupported;
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

void sub_3A148(uint64_t a1)
{
  v2 = [*(a1 + 32) batchID];
  v3 = *(a1 + 40);
  v19 = 0;
  v4 = [HDProviderServiceSpecification URLForBrandLogosWithBatchID:v2 scaleKey:v3 error:&v19];
  v5 = v19;

  if (v4)
  {
    v6 = [NSURLRequest requestWithURL:v4];
    v7 = [[HDCPSFetchJSONTask alloc] initWithSession:*(*(a1 + 48) + 24) request:v6];
    [(HDCPSFetchJSONTask *)v7 resume];
    [(HDCPSFetchJSONTask *)v7 waitUntilFinished];
    v8 = [(HDCPSFetchJSONTask *)v7 JSONObject];

    if (v8)
    {
      v9 = [(HDCPSFetchJSONTask *)v7 JSONObject];
      v18 = v5;
      v10 = [HDProviderServiceSpecification brandLogosFromFetchedJSONObject:v9 error:&v18];
      v11 = v18;

      if (v10)
      {
        v12 = [*(a1 + 32) externalID];
        v13 = [v10 objectForKeyedSubscript:v12];

        v14 = *(a1 + 56);
        if (v13)
        {
          v15 = [*(a1 + 32) externalID];
          v16 = [v10 objectForKeyedSubscript:v15];
          (*(v14 + 16))(v14, v16, 0);
        }

        else
        {
          v15 = [NSError hk_error:1 format:@"Data was returned but we couldn't find a matching externalID so no image will be returned"];
          (*(v14 + 16))(v14, 0, v15);
        }
      }

      else
      {
        (*(*(a1 + 56) + 16))();
      }

      v5 = v11;
    }

    else
    {
      v17 = *(a1 + 56);
      v10 = [(HDCPSFetchJSONTask *)v7 error];
      (*(v17 + 16))(v17, 0, v10);
    }
  }

  else
  {
    (*(*(a1 + 56) + 16))();
  }
}

void sub_3CE38(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_3CE50(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_3CE68(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = a1[4];
  v5 = [objc_opt_class() _populateAccountWithRow:a3 credential:a1[5] gateway:a1[6] signedClinicalDataIssuer:a1[7]];
  v6 = *(a1[8] + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;

  return _objc_release_x1();
}

void sub_3D0AC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

BOOL sub_3D0C4(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = [a2 databaseForEntity:*(a1 + 32)];
  v6 = [*(a1 + 32) _codableInDatabase:v5 error:a3];
  v7 = *(*(a1 + 40) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v6;

  v9 = *(*(*(a1 + 40) + 8) + 40) != 0;
  return v9;
}

void sub_3D35C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v9 - 96), 8);
  _Unwind_Resume(a1);
}

void sub_3D384(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = a1[4];
  v6 = objc_opt_class();
  v7 = *(a1[6] + 8);
  obj = *(v7 + 40);
  v8 = [v6 _codableWithRow:a3 error:&obj];
  objc_storeStrong((v7 + 40), obj);
  v9 = *(a1[5] + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v8;
}

void sub_3DE54(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

BOOL sub_3DE6C(void *a1, void *a2, uint64_t a3)
{
  v5 = a1[6];
  v6 = a1[4];
  v7 = [a2 databaseForEntityClass:v5];
  v8 = [v5 accountWithIdentifier:v6 database:v7 error:a3];
  v9 = *(a1[5] + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v8;

  return *(*(a1[5] + 8) + 40) != 0;
}

void sub_3E120(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va1, a13);
  va_start(va, a13);
  v14 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  v17 = va_arg(va1, void);
  v18 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

BOOL sub_3E144(uint64_t a1, void *a2)
{
  v3 = a2;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    sub_A1E98(a1);
  }

  v4 = *(a1 + 32);
  v9 = 0;
  v5 = [v3 accountInDatabase:v4 error:&v9];
  v6 = v9;
  v7 = v9;
  if (v5)
  {
    [*(a1 + 40) addObject:v5];
  }

  else
  {
    objc_storeStrong((*(*(a1 + 48) + 8) + 40), v6);
    *(*(*(a1 + 56) + 8) + 24) = 0;
  }

  return v5 != 0;
}

void sub_3E35C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

BOOL sub_3E374(void *a1, void *a2, uint64_t a3)
{
  v5 = a1[6];
  v6 = [a2 databaseForEntityClass:v5];
  v7 = [v5 accountsInDatabase:v6 predicate:a1[4] errorOut:a3];
  v8 = *(a1[5] + 8);
  v9 = *(v8 + 40);
  *(v8 + 40) = v7;

  return *(*(a1[5] + 8) + 40) != 0;
}

void sub_3E774(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

BOOL sub_3E78C(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = *(a1 + 40);
  v6 = a2;
  v7 = [v5 _predicateForAccountsWithIssuers];
  v8 = *(a1 + 40);
  v9 = HDSQLEntityPropertyStar;
  v10 = [v6 databaseForEntityClass:v8];

  v11 = [v8 countValueForProperty:v9 predicate:v7 database:v10 error:a3];
  v12 = *(*(a1 + 32) + 8);
  v13 = *(v12 + 40);
  *(v12 + 40) = v11;

  v14 = *(*(*(a1 + 32) + 8) + 40) != 0;
  return v14;
}

void sub_3E9A8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

BOOL sub_3E9C4(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = *(a1 + 40);
  v6 = a2;
  v7 = [v5 _predicateForAccountsWithGateways];
  v8 = *(a1 + 40);
  v9 = HDSQLEntityPropertyStar;
  v10 = [v6 databaseForEntityClass:v8];

  v11 = [v8 countValueForProperty:v9 predicate:v7 database:v10 error:a3];
  v12 = *(*(a1 + 32) + 8);
  v13 = *(v12 + 40);
  *(v12 + 40) = v11;

  v14 = *(*(*(a1 + 32) + 8) + 40) != 0;
  return v14;
}

void sub_3EF00(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id sub_3EF18(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = [a2 databaseForEntityClass:*(a1 + 40)];
  v6 = [*(a1 + 40) accountsNeedExtractionSQL];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_3EFEC;
  v9[3] = &unk_106608;
  v9[4] = *(a1 + 32);
  v7 = [v5 executeSQL:v6 error:a3 bindingHandler:&stru_107360 enumerationHandler:v9];

  return v7;
}

uint64_t sub_3EFEC(uint64_t a1)
{
  v1 = *(*(a1 + 32) + 8);
  if (*(v1 + 24))
  {
    v2 = 1;
  }

  else
  {
    v2 = HDSQLiteColumnAsBoolean();
    v1 = *(*(a1 + 32) + 8);
  }

  *(v1 + 24) = v2;
  return 1;
}

void sub_3F15C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

BOOL sub_3F174(uint64_t a1, void *a2, void *a3)
{
  v5 = [a2 databaseForEntityClass:*(a1 + 40)];
  v6 = *(a1 + 40);
  v7 = [v6 _predicateForActiveNeedsRelogin];
  v15 = 0;
  v8 = [v6 anyInDatabase:v5 predicate:v7 error:&v15];
  v9 = v15;

  if (v9)
  {
    if (a3)
    {
      v10 = v9;
      *a3 = v9;
    }

    else
    {
      _HKLogDroppedError();
    }
  }

  else
  {
    v11 = [NSNumber numberWithInt:v8 != 0];
    v12 = *(*(a1 + 32) + 8);
    v13 = *(v12 + 40);
    *(v12 + 40) = v11;
  }

  return v9 == 0;
}

void sub_3F5B4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, char a34)
{
  _Block_object_dispose(&a34, 8);
  _Block_object_dispose((v34 - 152), 8);
  _Unwind_Resume(a1);
}

id sub_3F5E0(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v6 = [v5 databaseForEntityClass:*(a1 + 80)];
  v7 = [*(a1 + 80) existingAccountEntityWithIdentifier:*(a1 + 32) database:v6 error:a3];
  v8 = [v7 _updateCredentialFromAuthResponse:*(a1 + 40) requestedScope:*(a1 + 48) profile:*(a1 + 56) transaction:v5 error:a3];
  v9 = *(*(a1 + 64) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v8;

  v11 = *(*(*(a1 + 64) + 8) + 40);
  if (v11)
  {
    v13 = *(a1 + 80);
    v12 = *(a1 + 88);
    v14 = *(a1 + 32);
    v15 = *(a1 + 56);
    v16 = *(*(*(a1 + 72) + 8) + 40);
    v17 = [v11 fetchRefreshTokenWithError:0];
    v18 = [v16 eventWithAppendedRefreshToken:v17 description:@"Updated credential refresh token"];
    v19 = [v13 _updateAccountCredentialState:v12 identifier:v14 profile:v15 transaction:v5 event:v18 alwaysRecordEvent:1 error:a3];
  }

  else
  {
    v19 = 0;
  }

  return v19;
}

id sub_3F728(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a1 + 80);
  v6 = [*(*(*(a1 + 72) + 8) + 40) eventMarkedAsFailedWithError:a2];
  [v5 _journalAccountEvent:v6 database:*(a1 + 32)];

  v7 = [[HDClinicalAccountUpdateCredentialJournalEntry alloc] initWithAuthResponse:*(a1 + 40) accountIdentifier:*(a1 + 48) requestedScope:*(a1 + 56) event:*(a1 + 64)];
  v8 = [*(a1 + 32) addJournalEntry:v7 error:a3];

  return v8;
}

void sub_3FC68(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, char a34)
{
  _Block_object_dispose(&a34, 8);
  _Block_object_dispose((v34 - 152), 8);
  _Unwind_Resume(a1);
}

id sub_3FC94(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v6 = [v5 databaseForEntityClass:*(a1 + 80)];
  v7 = [*(a1 + 80) existingAccountEntityWithIdentifier:*(a1 + 32) database:v6 error:a3];
  v8 = v7;
  if (v7 && ([v7 _createCredentialFromAuthResponse:*(a1 + 40) credentialIdentifier:0 requestedScope:*(a1 + 48) profile:*(a1 + 56) transaction:v5 error:a3], v9 = objc_claimAutoreleasedReturnValue(), v10 = *(*(a1 + 64) + 8), v11 = *(v10 + 40), *(v10 + 40) = v9, v11, (v12 = *(*(*(a1 + 64) + 8) + 40)) != 0))
  {
    v14 = *(a1 + 80);
    v13 = *(a1 + 88);
    v15 = *(a1 + 32);
    v16 = *(a1 + 56);
    v17 = *(*(*(a1 + 72) + 8) + 40);
    v18 = [v12 fetchRefreshTokenWithError:0];
    v19 = [v17 eventWithAppendedRefreshToken:v18 description:@"Created credential refresh token"];
    v20 = [v14 _updateAccountCredentialState:v13 identifier:v15 profile:v16 transaction:v5 event:v19 alwaysRecordEvent:1 error:a3];
  }

  else
  {
    v20 = 0;
  }

  return v20;
}

id sub_3FDE8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a1 + 80);
  v6 = [*(*(*(a1 + 72) + 8) + 40) eventMarkedAsFailedWithError:a2];
  [v5 _journalAccountEvent:v6 database:*(a1 + 32)];

  v7 = [(HDClinicalAccountUpdateCredentialJournalEntry *)[HDClinicalAccountCreateCredentialJournalEntry alloc] initWithAuthResponse:*(a1 + 40) accountIdentifier:*(a1 + 48) requestedScope:*(a1 + 56) event:*(a1 + 64)];
  v8 = [*(a1 + 32) addJournalEntry:v7 error:a3];

  return v8;
}

void sub_4027C(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [NSNumber numberWithInteger:*(a1 + 40)];
  HDSQLiteBindNumberToProperty();
}

void sub_40720(void *a1)
{
  v2 = a1[4];
  v3 = a1[5];
  HDSQLiteBindNumberToProperty();
  v4 = a1[6];
  if (a1[7])
  {
    v6 = [HDFHIRCredential patientHashForPatientID:?];
    HDSQLiteBindStringToProperty();
  }

  else
  {
    v5 = a1[6];

    HDSQLiteBindStringToProperty();
  }
}

uint64_t sub_40928(uint64_t a1)
{
  v2 = *(a1 + 32);
  HDSQLiteBindDateToProperty();
  v3 = *(a1 + 40);

  return HDSQLiteBindNumberToProperty();
}

uint64_t sub_40DD0(uint64_t a1)
{
  if (([*(a1 + 32) containsObject:HDClinicalAccountEntityPropertyModificationDate] & 1) == 0)
  {
    v2 = *(a1 + 40);
    HDSQLiteBindDateToProperty();
  }

  if (([*(a1 + 32) containsObject:HDClinicalAccountEntityPropertySyncAnchor] & 1) == 0)
  {
    [*(a1 + 48) longLongValue];
    HDSQLiteBindInt64ToProperty();
  }

  if (([*(a1 + 32) containsObject:HDClinicalAccountEntityPropertySyncProvenance] & 1) == 0)
  {
    HDSQLiteBindInt64ToProperty();
  }

  result = [*(a1 + 32) containsObject:HDClinicalAccountEntityPropertySyncIdentity];
  if ((result & 1) == 0)
  {
    [*(a1 + 56) currentSyncIdentityPersistentID];

    return HDSQLiteBindInt64ToProperty();
  }

  return result;
}

id sub_41008(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v7 = a3;
  v8 = *(a1 + 32);
  v9 = *(a1 + 40);
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_410FC;
  v14[3] = &unk_107440;
  v15 = v7;
  v16 = *(a1 + 48);
  v13.receiver = v9;
  v13.super_class = HDClinicalAccountEntity;
  v10 = v7;
  v11 = objc_msgSendSuper2(&v13, "updateProperties:database:error:bindingHandler:", a2, v8, a4, v14);

  return v11;
}

uint64_t sub_410FC(uint64_t a1)
{
  (*(*(a1 + 32) + 16))();
  v2 = *(*(a1 + 40) + 16);

  return v2();
}

uint64_t sub_412B8(uint64_t a1, void *a2, void *a3)
{
  v72 = a2;
  v5 = [v72 databaseForEntityClass:*(a1 + 48)];
  v73 = objc_alloc_init(NSMutableDictionary);
  v92 = 0u;
  v93 = 0u;
  v94 = 0u;
  v95 = 0u;
  obj = *(a1 + 32);
  v6 = [obj countByEnumeratingWithState:&v92 objects:v104 count:16];
  if (!v6)
  {
    goto LABEL_70;
  }

  v7 = v6;
  v8 = *v93;
  v71 = a3;
  v84 = a1;
  v74 = v5;
  v82 = *v93;
  do
  {
    v9 = 0;
    do
    {
      if (*v93 != v8)
      {
        objc_enumerationMutation(obj);
      }

      v10 = *(*(&v92 + 1) + 8 * v9);
      v11 = *(a1 + 48);
      v91 = 0;
      v12 = [v11 _validateCodableAccount:v10 error:&v91];
      v13 = v91;
      v14 = v13;
      if ((v12 & 1) == 0)
      {
        _HKInitializeLogging();
        v21 = HKLogHealthRecords;
        if (os_log_type_enabled(HKLogHealthRecords, OS_LOG_TYPE_ERROR))
        {
          v51 = *(a1 + 48);
          *buf = 138543618;
          v99 = v51;
          v100 = 2114;
          v101 = v14;
          _os_log_error_impl(&dword_0, v21, OS_LOG_TYPE_ERROR, "%{public}@ invalid codable clinical account: %{public}@", buf, 0x16u);
        }

        goto LABEL_14;
      }

      v85 = v13;
      v15 = v7;
      v16 = [v10 syncIdentifier];
      v17 = [NSUUID hk_UUIDWithData:v16];

      v18 = [HDClinicalDeletedAccountEntity tombstoneExistsWithSyncIdentifier:v17 database:v5 error:a3];
      if (!v18)
      {

LABEL_72:
        v69 = 0;
        goto LABEL_73;
      }

      v19 = v18;
      if ([v18 BOOLValue])
      {
        _HKInitializeLogging();
        v20 = HKLogHealthRecords;
        if (os_log_type_enabled(HKLogHealthRecords, OS_LOG_TYPE_DEBUG))
        {
          v60 = *(a1 + 48);
          *buf = 138543618;
          v99 = v60;
          v100 = 2114;
          v101 = v17;
          _os_log_debug_impl(&dword_0, v20, OS_LOG_TYPE_DEBUG, "%{public}@ received deleted account from sync with sync identifier %{public}@. Skipping.", buf, 0x16u);
        }

        v7 = v15;
        v8 = v82;
        v14 = v85;
LABEL_14:

        goto LABEL_15;
      }

      v22 = [v10 gatewayExternalID];
      v23 = [v10 signedClinicalDataIssuerIdentifier];
      v80 = v22;
      v81 = v23;
      if (v22)
      {
        v75 = [v73 objectForKeyedSubscript:v22];
        if (v75)
        {
          log = 0;
          v24 = 0;
          goto LABEL_26;
        }

        v26 = v5;
        v27 = a3;
        v90 = 0;
        [HDClinicalGatewayEntity gatewayEntityWithExternalID:v22 database:v26 error:&v90];
        v25 = v28 = v22;
        v24 = v90;
        if (!v25)
        {
          _HKInitializeLogging();
          v55 = HKLogHealthRecords;
          if (v24)
          {
            if (os_log_type_enabled(HKLogHealthRecords, OS_LOG_TYPE_ERROR))
            {
              v56 = *(v84 + 48);
              v57 = v55;
              v58 = HKSensitiveLogItem();
              *buf = 138543874;
              v99 = v56;
              v27 = v71;
              v100 = 2112;
              v101 = v58;
              v102 = 2114;
              v103 = v24;
              _os_log_error_impl(&dword_0, v57, OS_LOG_TYPE_ERROR, "%{public}@ failed to find gateway with external ID %@: %{public}@", buf, 0x20u);
            }
          }

          else if (os_log_type_enabled(HKLogHealthRecords, OS_LOG_TYPE_DEFAULT))
          {
            v64 = *(v84 + 48);
            loga = v55;
            v65 = v28;
            v66 = HKSensitiveLogItem();
            v67 = [v10 accountIdentifier];
            *buf = 138543874;
            v99 = v64;
            v100 = 2112;
            v101 = v66;
            v102 = 2114;
            v103 = v67;
            _os_log_impl(&dword_0, loga, OS_LOG_TYPE_DEFAULT, "%{public}@ there is no gateway with external ID %@, dropping account %{public}@", buf, 0x20u);

            v27 = v71;
            v28 = v65;
          }

          v42 = 3;
          goto LABEL_57;
        }

        v75 = +[NSNumber numberWithLongLong:](NSNumber, "numberWithLongLong:", [v25 persistentID]);
        [v73 setObject:? forKeyedSubscript:?];
        log = 0;
      }

      else
      {
        if (!v23)
        {
          _HKInitializeLogging();
          v48 = HKLogHealthRecords;
          if (os_log_type_enabled(HKLogHealthRecords, OS_LOG_TYPE_FAULT))
          {
            sub_A2014(v96, v48, v10, &v97);
          }

          v49 = [v10 accountIdentifier];
          v27 = a3;
          [NSError hk_assignError:a3 code:3 format:@"Received an account (%@) with neither gatewayExternalID nor signedClinicalDataIssuerIdentifier", v49];

          v24 = 0;
          v42 = 1;
          goto LABEL_56;
        }

        v89 = 0;
        v25 = [HDSignedClinicalDataIssuerEntity issuerEntityWithIdentifier:v23 database:v5 error:&v89];
        v24 = v89;
        if (!v25)
        {
          _HKInitializeLogging();
          v52 = HKLogHealthRecords;
          if (v24)
          {
            v27 = a3;
            if (os_log_type_enabled(HKLogHealthRecords, OS_LOG_TYPE_ERROR))
            {
              v53 = *(v84 + 48);
              *buf = 138543874;
              v99 = v53;
              v100 = 2112;
              v101 = v81;
              v102 = 2114;
              v103 = v24;
              _os_log_error_impl(&dword_0, v52, OS_LOG_TYPE_ERROR, "%{public}@ failed to find issuer %@: %{public}@", buf, 0x20u);
              v54 = v81;
LABEL_63:
              v42 = 3;
              v28 = 0;
              goto LABEL_58;
            }
          }

          else
          {
            if (os_log_type_enabled(HKLogHealthRecords, OS_LOG_TYPE_DEFAULT))
            {
              v61 = *(v84 + 48);
              v62 = v52;
              v63 = [v10 accountIdentifier];
              *buf = 138543874;
              v99 = v61;
              v27 = v71;
              v100 = 2112;
              v101 = v81;
              v102 = 2114;
              v103 = v63;
              _os_log_impl(&dword_0, v62, OS_LOG_TYPE_DEFAULT, "%{public}@ there is no issuer %@, dropping account %{public}@", buf, 0x20u);

              v54 = v81;
              goto LABEL_63;
            }

            v27 = a3;
          }

          v42 = 3;
          goto LABEL_56;
        }

        log = +[NSNumber numberWithLongLong:](NSNumber, "numberWithLongLong:", [v25 persistentID]);
        v75 = 0;
      }

LABEL_26:
      v29 = [*(v84 + 40) syncIdentityManager];
      v30 = [v29 legacySyncIdentity];

      if ([v10 hasSyncIdentity])
      {
        v76 = v30;
        v31 = [v10 syncIdentity];
        v88 = v24;
        v32 = [HDSyncIdentity syncIdentityWithCodable:v31 error:&v88];
        v33 = v88;

        if (!v32)
        {
          _HKInitializeLogging();
          v50 = HKLogHealthRecords;
          if (os_log_type_enabled(HKLogHealthRecords, OS_LOG_TYPE_FAULT))
          {
            *buf = 138543362;
            v99 = v33;
            _os_log_fault_impl(&dword_0, v50, OS_LOG_TYPE_FAULT, "HDClinicalAccountEntity SyncIdentity from received codable is nil %{public}@", buf, 0xCu);
          }

          v42 = 3;
          v41 = v75;
          v43 = v76;
          goto LABEL_54;
        }

        v34 = [*(v84 + 40) syncIdentityManager];
        v87 = v33;
        v30 = [v34 concreteIdentityForIdentity:v32 shouldCreate:1 transaction:v72 error:&v87];
        v24 = v87;

        if (!v30)
        {
          _HKInitializeLogging();
          v59 = HKLogHealthRecords;
          if (os_log_type_enabled(HKLogHealthRecords, OS_LOG_TYPE_FAULT))
          {
            *buf = 138543362;
            v99 = v24;
            _os_log_fault_impl(&dword_0, v59, OS_LOG_TYPE_FAULT, "HDClinicalAccountEntity ConcreteSyncIdentity from received codable is nil %{public}@", buf, 0xCu);
          }

          v43 = 0;
          v42 = 3;
          v33 = v24;
          v41 = v75;
          goto LABEL_54;
        }
      }

      v35 = *(v84 + 48);
      v36 = *(v84 + 56);
      v77 = v30;
      v37 = [v30 entity];
      v38 = [v37 persistentID];
      v39 = *(v84 + 40);
      v86 = v24;
      v40 = v10;
      v41 = v75;
      LOBYTE(v35) = [v35 _insertOrUpdateAccountWithCodableAccount:v40 gatewayID:v75 signedClinicalDataIssuerID:log syncProvenance:v36 syncIdentity:v38 transaction:v72 profile:v39 error:&v86];
      v33 = v86;

      if ((v35 & 1) == 0)
      {
        _HKInitializeLogging();
        v44 = HKLogHealthRecords;
        if (os_log_type_enabled(HKLogHealthRecords, OS_LOG_TYPE_INFO))
        {
          v45 = *(v84 + 48);
          *buf = 138543618;
          v99 = v45;
          v100 = 2114;
          v101 = v33;
          _os_log_impl(&dword_0, v44, OS_LOG_TYPE_INFO, "%{public}@ failed to insert codable clinical account: %{public}@", buf, 0x16u);
        }

        v46 = v33;
        v32 = v46;
        v43 = v77;
        if (v46)
        {
          if (v71)
          {
            v47 = v46;
            *v71 = v32;
          }

          else
          {
            _HKLogDroppedError();
          }
        }

        v42 = 1;
        v33 = v32;
LABEL_54:

        goto LABEL_55;
      }

      v42 = 0;
      v43 = v77;
LABEL_55:

      v24 = v33;
      v27 = v71;
LABEL_56:
      v28 = v80;
LABEL_57:
      v54 = v81;
LABEL_58:

      a1 = v84;
      v7 = v15;
      v8 = v82;
      a3 = v27;
      v5 = v74;
      if (v42 && v42 != 3)
      {
        goto LABEL_72;
      }

LABEL_15:
      v9 = v9 + 1;
    }

    while (v7 != v9);
    v68 = [obj countByEnumeratingWithState:&v92 objects:v104 count:16];
    v7 = v68;
  }

  while (v68);
LABEL_70:
  v69 = 1;
LABEL_73:

  return v69;
}

id sub_41D14(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = [[HDClinicalAccountInsertCodableJournalEntry alloc] initWithCodableAccounts:*(a1 + 32) syncProvenance:*(a1 + 48)];
  v6 = [*(a1 + 40) database];
  v7 = [v6 addJournalEntry:v5 error:a3];

  return v7;
}

id sub_42DAC(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  if (*(a1 + 32))
  {
    v6 = [HDClinicalGatewayEntity entityWithPersistentID:?];
    v7 = v6;
    if (v6 && ![v6 setNeedsSyncWithProfile:*(a1 + 40) transaction:v5 error:a3])
    {

      v32 = 0;
      goto LABEL_23;
    }
  }

  v8 = *(a1 + 48);
  v9 = *(a1 + 56);
  v10 = HKDateMax();
  v11 = *(a1 + 176);
  v12 = [v11 _propertiesForEntity];
  v13 = *(a1 + 40);
  v44[0] = _NSConcreteStackBlock;
  v44[1] = 3221225472;
  v44[2] = sub_43258;
  v44[3] = &unk_1074B8;
  v62 = *(a1 + 168);
  v14 = v5;
  v45 = v14;
  v46 = *(a1 + 64);
  v15 = *(a1 + 72);
  v66 = *(a1 + 208);
  v16 = *(a1 + 184);
  v47 = v15;
  v63 = v16;
  v48 = *(a1 + 80);
  v17 = v10;
  v49 = v17;
  v50 = *(a1 + 56);
  v51 = *(a1 + 88);
  v52 = *(a1 + 96);
  v53 = *(a1 + 104);
  v54 = *(a1 + 112);
  v55 = *(a1 + 120);
  v56 = *(a1 + 128);
  v57 = *(a1 + 136);
  v18 = *(a1 + 32);
  v19 = *(a1 + 192);
  v58 = v18;
  v64 = v19;
  v59 = *(a1 + 144);
  v20 = *(a1 + 152);
  v21 = *(a1 + 200);
  v60 = v20;
  v65 = v21;
  v61 = *(a1 + 160);
  LODWORD(v10) = [v11 _bindPropertiesForSync:v12 profile:v13 transaction:v14 error:a3 mutationHandler:v44];

  if (v10)
  {
    v22 = *(*(*(a1 + 168) + 8) + 40);
    v23 = [v14 databaseForEntity:v22];
    v24 = [v22 accountInDatabase:v23 error:a3];

    if (v24)
    {
      v40 = v17;
      v41[0] = _NSConcreteStackBlock;
      v41[1] = 3221225472;
      v41[2] = sub_43880;
      v41[3] = &unk_1074E0;
      v43 = *(a1 + 176);
      v25 = v24;
      v42 = v25;
      [v14 onCommit:v41 orRollback:0];
      v26 = *(a1 + 176);
      v38 = *(a1 + 64);
      v39 = [v25 gateway];
      v27 = [v39 externalID];
      v28 = v27;
      if (!v27)
      {
        v36 = [v25 signedClinicalDataIssuer];
        v28 = [v36 identifier];
      }

      v29 = [v25 gateway];
      v30 = [v29 title];
      if (v30)
      {
        v31 = [v26 updateSourcesForAccountWithIdentifier:v38 wasAccountInsert:1 clinicalExternalID:v28 externalTitle:v30 profile:*(a1 + 40) error:a3];
      }

      else
      {
        v33 = [v25 signedClinicalDataIssuer];
        [v33 title];
        v34 = v37 = v5;
        v31 = [v26 updateSourcesForAccountWithIdentifier:v38 wasAccountInsert:1 clinicalExternalID:v28 externalTitle:v34 profile:*(a1 + 40) error:a3];

        v5 = v37;
      }

      if (!v27)
      {
      }

      if (v31)
      {
        v32 = [*(a1 + 176) _updateCountOfGatewayBackedAccountsWithProfile:*(a1 + 40) error:a3];
      }

      else
      {
        v32 = 0;
      }

      v17 = v40;
    }

    else
    {
      v32 = 0;
    }
  }

  else
  {
    v32 = 0;
  }

LABEL_23:
  return v32;
}

BOOL sub_43258(uint64_t a1, void *a2, void *a3, uint64_t a4)
{
  v7 = a3;
  v8 = *(a1 + 176);
  v9 = *(a1 + 32);
  v10 = a2;
  v11 = [v9 protectedDatabase];
  v43[0] = _NSConcreteStackBlock;
  v43[1] = 3221225472;
  v43[2] = sub_43534;
  v43[3] = &unk_107490;
  v12 = *(a1 + 40);
  v13 = *(a1 + 48);
  v56 = *(a1 + 208);
  v53 = *(a1 + 184);
  v14 = *(a1 + 56);
  v15 = *(a1 + 64);
  *&v16 = v14;
  *(&v16 + 1) = v15;
  *&v17 = v12;
  *(&v17 + 1) = v13;
  v44 = v17;
  v45 = v16;
  v18 = *(a1 + 72);
  v19 = *(a1 + 80);
  v20 = *(a1 + 88);
  v21 = *(a1 + 96);
  *&v22 = v20;
  *(&v22 + 1) = v21;
  *&v23 = v18;
  *(&v23 + 1) = v19;
  v46 = v23;
  v47 = v22;
  v24 = *(a1 + 104);
  v25 = *(a1 + 112);
  v26 = *(a1 + 120);
  v27 = *(a1 + 128);
  *&v28 = v26;
  *(&v28 + 1) = v27;
  *&v29 = v24;
  *(&v29 + 1) = v25;
  v48 = v29;
  v49 = v28;
  v30 = *(a1 + 136);
  v54 = *(a1 + 192);
  v31 = *(a1 + 144);
  v32 = *(a1 + 152);
  v33 = *(a1 + 200);
  v52 = v7;
  v55 = v33;
  v34 = *(a1 + 160);
  *&v35 = v32;
  *(&v35 + 1) = v34;
  *&v36 = v30;
  *(&v36 + 1) = v31;
  v50 = v36;
  v51 = v35;
  v37 = v7;
  v38 = [v8 insertOrReplaceEntity:0 database:v11 properties:v10 error:a4 bindingHandler:v43];

  v39 = *(*(a1 + 168) + 8);
  v40 = *(v39 + 40);
  *(v39 + 40) = v38;

  v41 = *(*(*(a1 + 168) + 8) + 40) != 0;
  return v41;
}

uint64_t sub_43534(uint64_t a1)
{
  v2 = *(a1 + 32);
  HDSQLiteBindUUIDToProperty();
  v3 = *(a1 + 40);
  HDSQLiteBindUUIDToProperty();
  v4 = *(a1 + 192);
  HDSQLiteBindBooleanToProperty();
  v5 = [NSNumber numberWithInteger:*(a1 + 168)];
  HDSQLiteBindNumberToProperty();

  v6 = *(a1 + 48);
  HDSQLiteBindDateToProperty();
  v7 = *(a1 + 56);
  HDSQLiteBindDateToProperty();
  v8 = *(a1 + 64);
  HDSQLiteBindDateToProperty();
  v9 = *(a1 + 72);
  HDSQLiteBindDateToProperty();
  v10 = *(a1 + 80);
  HDSQLiteBindNumberToProperty();
  v11 = *(a1 + 88);
  HDSQLiteBindNumberToProperty();
  v12 = *(a1 + 96);
  HDSQLiteBindNumberToProperty();
  v13 = *(a1 + 104);
  HDSQLiteBindNumberToProperty();
  v14 = *(a1 + 112);
  HDSQLiteBindNumberToProperty();
  v15 = *(a1 + 120);
  HDSQLiteBindStringToProperty();
  v16 = *(a1 + 128);
  HDSQLiteBindNumberToProperty();
  v17 = *(a1 + 176);
  HDSQLiteBindInt64ToProperty();
  v18 = *(a1 + 136);
  HDSQLiteBindNumberToProperty();
  v19 = [*(a1 + 144) lastSharedDate];
  HDSQLiteBindDateToProperty();

  v20 = [*(a1 + 144) firstSharedDate];
  HDSQLiteBindDateToProperty();

  v21 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [*(a1 + 144) userStatus]);
  HDSQLiteBindNumberToProperty();

  v22 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [*(a1 + 144) multiDeviceStatus]);
  HDSQLiteBindNumberToProperty();

  v23 = [*(a1 + 144) primaryDeviceName];
  HDSQLiteBindStringToProperty();

  (*(*(a1 + 160) + 16))();
  v24 = *(a1 + 184);
  HDSQLiteBindInt64ToProperty();
  v25 = *(a1 + 152);

  return HDSQLiteBindDateToProperty();
}

void sub_43880(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = [*(a1 + 32) hkAccount];
  [v1 _postAccountChangeNotificationForAccount:v2 changeType:1];
}

void sub_43C90(uint64_t a1)
{
  [*(a1 + 32) modificationDate];
  v12 = [NSDate dateWithTimeIntervalSinceReferenceDate:?];
  if ([*(a1 + 32) hasLastFetchDate])
  {
    [*(a1 + 32) lastFetchDate];
    v2 = [NSDate dateWithTimeIntervalSinceReferenceDate:?];
  }

  else
  {
    v2 = 0;
  }

  if ([*(a1 + 32) hasLastFullFetchDate])
  {
    [*(a1 + 32) lastFullFetchDate];
    v3 = [NSDate dateWithTimeIntervalSinceReferenceDate:?];
  }

  else
  {
    v3 = 0;
  }

  v4 = HKDateMax();
  if ([*(a1 + 32) hasLastFailedFetchDate])
  {
    [*(a1 + 32) lastFailedFetchDate];
    v5 = [NSDate dateWithTimeIntervalSinceReferenceDate:?];
  }

  else
  {
    v5 = 0;
  }

  HDSQLiteBindDateToProperty();
  [*(a1 + 32) userEnabled];
  HDSQLiteBindBooleanToProperty();
  HDSQLiteBindDateToProperty();
  HDSQLiteBindDateToProperty();
  HDSQLiteBindDateToProperty();
  v6 = +[NSNumber numberWithLongLong:](NSNumber, "numberWithLongLong:", [*(a1 + 32) failedFetchAttemptsCount]);
  HDSQLiteBindNumberToProperty();

  v7 = [*(a1 + 32) patientHash];
  HDSQLiteBindStringToProperty();

  if ([*(a1 + 32) hasClinicalSharingFirstSharedDate])
  {
    [*(a1 + 32) clinicalSharingFirstSharedDate];
    v8 = [NSDate dateWithTimeIntervalSinceReferenceDate:?];
  }

  else
  {
    v8 = 0;
  }

  if ([*(a1 + 32) hasClinicalSharingLastSharedDate])
  {
    [*(a1 + 32) clinicalSharingLastSharedDate];
    v9 = [NSDate dateWithTimeIntervalSinceReferenceDate:?];
  }

  else
  {
    v9 = 0;
  }

  HDSQLiteBindDateToProperty();
  HDSQLiteBindDateToProperty();
  v10 = +[NSNumber numberWithLongLong:](NSNumber, "numberWithLongLong:", [*(a1 + 32) clinicalSharingUserStatus]);
  HDSQLiteBindNumberToProperty();

  v11 = [*(a1 + 32) clinicalSharingPrimaryDeviceName];
  HDSQLiteBindStringToProperty();
}

void sub_43FC4(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = objc_opt_class();
  v4 = [*(a1 + 40) hkAccount];
  [v3 _postAccountChangeNotificationForAccount:v4 changeType:2];
}

uint64_t sub_442F4(uint64_t result)
{
  v1 = result;
  v2 = *(result + 32);
  if (v2)
  {
    v3 = +[NSDate distantPast];
    v4 = [v2 isEqual:v3];

    if (v4)
    {
      result = HDSQLiteBindNullToProperty();
    }

    else
    {
      v5 = v1[4];
      result = HDSQLiteBindDateToProperty();
    }
  }

  v6 = v1[5];
  if (v6)
  {
    v7 = +[NSDate distantPast];
    v8 = [v6 isEqual:v7];

    if (v8)
    {
      result = HDSQLiteBindNullToProperty();
    }

    else
    {
      v9 = v1[5];
      result = HDSQLiteBindDateToProperty();
    }
  }

  if (v1[6])
  {
    result = HDSQLiteBindNumberToProperty();
  }

  if (v1[7])
  {
    result = HDSQLiteBindNumberToProperty();
  }

  if (v1[8])
  {

    return HDSQLiteBindStringToProperty();
  }

  return result;
}

void sub_44448(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = objc_opt_class();
  v4 = [*(a1 + 40) hkAccount];
  [v3 _postAccountChangeNotificationForAccount:v4 changeType:2];
}

uint64_t sub_445F8(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);
  return HDSQLiteBindBooleanToProperty();
}

uint64_t sub_4476C(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);
  return HDSQLiteBindStringToProperty();
}

id sub_449B8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a1 + 64);
  v6 = [*(a1 + 32) eventMarkedAsFailedWithError:a2];
  [v5 _journalAccountEvent:v6 database:*(a1 + 40)];

  v7 = [[HDClinicalAccountUpdateCredentialStateJournalEntry alloc] initWithCredentialState:*(a1 + 72) accountIdentifier:*(a1 + 48) event:*(a1 + 56)];
  v8 = [*(a1 + 40) addJournalEntry:v7 error:a3];

  return v8;
}

void sub_44D74(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = [*(a1 + 32) hkAccount];
  [v1 _postAccountChangeNotificationForAccount:v2 changeType:2];
}

BOOL sub_44FF4(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v6 = *(a1 + 48);
  v7 = *(a1 + 32);
  v8 = [v5 protectedDatabase];
  v9 = [v6 existingAccountEntityWithIdentifier:v7 database:v8 error:a3];

  if ([v9 updateUserEnabled:*(a1 + 56) profile:*(a1 + 40) transaction:v5 error:a3])
  {
    v10 = [v5 protectedDatabase];
    v11 = [v9 accountInDatabase:v10 error:a3];
  }

  else
  {
    v11 = 0;
  }

  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_45140;
  v15[3] = &unk_1074E0;
  v12 = *(a1 + 48);
  v16 = v11;
  v17 = v12;
  v13 = v11;
  [v5 onCommit:v15 orRollback:0];

  return v13 != 0;
}

void sub_45140(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = [*(a1 + 32) hkAccount];
  [v1 _postAccountChangeNotificationForAccount:v2 changeType:2];
}

id sub_45198(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = [[HDClinicalAccountUpdateUserEnabledJournalEntry alloc] initWithUserEnabled:*(a1 + 48) accountIdentifier:*(a1 + 32)];
  v6 = [*(a1 + 40) addJournalEntry:v5 error:a3];

  return v6;
}

uint64_t sub_453C0(uint64_t a1)
{
  v1 = *(a1 + 32);
  HDSQLiteBindDateToProperty();
  HDSQLiteBindDateToProperty();

  return HDSQLiteBindNumberToProperty();
}

uint64_t sub_4570C(uint64_t a1)
{
  v2 = *(a1 + 32);
  HDSQLiteBindDateToProperty();
  v3 = *(a1 + 40);
  HDSQLiteBindDateToProperty();
  HDSQLiteBindDateToProperty();

  return HDSQLiteBindNumberToProperty();
}

uint64_t sub_459F0(uint64_t a1)
{
  v2 = *(a1 + 32);
  HDSQLiteBindDateToProperty();
  v3 = *(a1 + 40);

  return HDSQLiteBindNumberToProperty();
}

BOOL sub_45E88(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v6 = *(a1 + 56);
  v7 = *(a1 + 32);
  v8 = [v5 protectedDatabase];
  v9 = [v6 existingAccountEntityWithIdentifier:v7 database:v8 error:a3];

  if ([v9 _updateLastFetchDate:*(a1 + 40) wasFullFetch:*(a1 + 64) profile:*(a1 + 48) transaction:v5 error:a3])
  {
    v10 = [v5 protectedDatabase];
    v11 = [v9 accountInDatabase:v10 error:a3];
  }

  else
  {
    v11 = 0;
  }

  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_45FD4;
  v15[3] = &unk_1074E0;
  v12 = *(a1 + 56);
  v16 = v11;
  v17 = v12;
  v13 = v11;
  [v5 onCommit:v15 orRollback:0];

  return v13 != 0;
}

void sub_45FD4(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = [*(a1 + 32) hkAccount];
  [v1 _postAccountChangeNotificationForAccount:v2 changeType:2];
}

id sub_4602C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = [[HDClinicalAccountUpdateLastFetchDateJournalEntry alloc] initWithLastFetchDate:*(a1 + 32) wasFullFetch:*(a1 + 56) accountIdentifier:*(a1 + 40)];
  v6 = [*(a1 + 48) addJournalEntry:v5 error:a3];

  return v6;
}

uint64_t sub_46198(void *a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v6 = a1[7];
  v7 = a1[4];
  v8 = [v5 protectedDatabase];
  v9 = [v6 existingAccountEntityWithIdentifier:v7 database:v8 error:a3];

  if (v9)
  {
    if (![v9 _updateLastFullFetchDateWithLastFetchDate:a1[5] lastFullFetchDate:a1[5] profile:a1[6] transaction:v5 error:a3])
    {
      v14 = 0;
      goto LABEL_6;
    }

    v10 = [v5 protectedDatabase];
    v11 = [v9 accountInDatabase:v10 error:a3];

    v16[0] = _NSConcreteStackBlock;
    v16[1] = 3221225472;
    v16[2] = sub_462E4;
    v16[3] = &unk_1074E0;
    v12 = a1[7];
    v17 = v11;
    v18 = v12;
    v13 = v11;
    [v5 onCommit:v16 orRollback:0];
  }

  v14 = 1;
LABEL_6:

  return v14;
}

void sub_462E4(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = [*(a1 + 32) hkAccount];
  [v1 _postAccountChangeNotificationForAccount:v2 changeType:2];
}

BOOL sub_46514(void *a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v6 = a1[8];
  v7 = a1[4];
  v8 = [v5 protectedDatabase];
  v9 = [v6 existingAccountEntityWithIdentifier:v7 database:v8 error:a3];

  if ([v9 _updateLastFailedFetchDate:a1[5] overrideFailedAttemptsCount:a1[6] profile:a1[7] transaction:v5 error:a3])
  {
    v10 = [v5 protectedDatabase];
    v11 = [v9 accountInDatabase:v10 error:a3];
  }

  else
  {
    v11 = 0;
  }

  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_46660;
  v15[3] = &unk_1074E0;
  v12 = a1[8];
  v16 = v11;
  v17 = v12;
  v13 = v11;
  [v5 onCommit:v15 orRollback:0];

  return v13 != 0;
}

void sub_46660(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = [*(a1 + 32) hkAccount];
  [v1 _postAccountChangeNotificationForAccount:v2 changeType:2];
}

id sub_466B8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = [[HDClinicalAccountUpdateLastFailedFetchDateJournalEntry alloc] initWithLastFailedFetchDate:*(a1 + 32) overrideFailedAttemptsCount:*(a1 + 40) accountIdentifier:*(a1 + 48)];
  v6 = [*(a1 + 56) addJournalEntry:v5 error:a3];

  return v6;
}

id sub_4688C(void *a1, void *a2, uint64_t a3)
{
  v5 = a1[7];
  v6 = a1[4];
  v7 = a2;
  v8 = [v7 protectedDatabase];
  v9 = [v5 existingAccountEntityWithIdentifier:v6 database:v8 error:a3];

  v10 = [v9 updateProperties:a1[5] profile:a1[6] transaction:v7 error:a3 bindingHandler:&stru_1076B0];
  return v10;
}

void sub_46928(id a1, HDSQLiteStatementBinder *a2)
{
  HDSQLiteBindDateToProperty();

  HDSQLiteBindDateToProperty();
}

uint64_t sub_46AFC(uint64_t a1)
{
  v2 = *(a1 + 32);
  HDSQLiteBindNumberToProperty();
  v3 = *(a1 + 40);

  return HDSQLiteBindNumberToProperty();
}

BOOL sub_46D2C(void *a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v6 = a1[8];
  v7 = a1[4];
  v8 = [v5 protectedDatabase];
  v9 = [v6 existingAccountEntityWithIdentifier:v7 database:v8 error:a3];

  if ([v9 _updateLastExtractedRowID:a1[5] rulesVersion:a1[6] profile:a1[7] transaction:v5 error:a3])
  {
    v10 = [v5 protectedDatabase];
    v11 = [v9 accountInDatabase:v10 error:a3];
  }

  else
  {
    v11 = 0;
  }

  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_46E78;
  v15[3] = &unk_1074E0;
  v12 = a1[8];
  v16 = v11;
  v17 = v12;
  v13 = v11;
  [v5 onCommit:v15 orRollback:0];

  return v13 != 0;
}

void sub_46E78(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = [*(a1 + 32) hkAccount];
  [v1 _postAccountChangeNotificationForAccount:v2 changeType:2];
}

id sub_46ED0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = [[HDClinicalAccountUpdateLastExtractedJournalEntry alloc] initWithLastExtractedRowID:*(a1 + 32) rulesVersion:*(a1 + 40) accountIdentifier:*(a1 + 48)];
  v6 = [*(a1 + 56) addJournalEntry:v5 error:a3];

  return v6;
}

id sub_47274(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = [a2 databaseForEntityClass:*(a1 + 56)];
  v6 = [*(a1 + 56) existingAccountEntityWithIdentifier:*(a1 + 32) database:v5 error:a3];
  v7 = [v6 updateLastSubmittedRowID:*(a1 + 40) expectedRulesVersion:*(a1 + 48) database:v5 error:a3];

  return v7;
}

id sub_472F0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = [[HDClinicalAccountUpdateLastSubmittedJournalEntry alloc] initWithLastSubmittedRowID:*(a1 + 32) expectedRulesVersion:*(a1 + 40) accountIdentifier:*(a1 + 48)];
  v6 = [*(a1 + 56) addJournalEntry:v5 error:a3];

  return v6;
}

id sub_474E8(void *a1, void *a2, uint64_t a3)
{
  v5 = a1[7];
  v6 = a2;
  v7 = [v6 databaseForEntityClass:v5];
  v8 = [a1[7] existingAccountEntityWithIdentifier:a1[4] database:v7 error:a3];
  v9 = [v8 _updateLastExtractedRowID:0 rulesVersion:a1[5] profile:a1[6] transaction:v6 error:a3];

  return v9;
}

id sub_4757C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = [[HDClinicalAccountUpdateLastExtractedJournalEntry alloc] initWithLastExtractedRowID:0 rulesVersion:*(a1 + 32) accountIdentifier:*(a1 + 40)];
  v6 = [[HDClinicalAccountUpdateLastSubmittedJournalEntry alloc] initWithLastSubmittedRowID:0 expectedRulesVersion:*(a1 + 32) accountIdentifier:*(a1 + 40)];
  if ([*(a1 + 48) addJournalEntry:v5 error:a3])
  {
    v7 = [*(a1 + 48) addJournalEntry:v6 error:a3];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

id sub_47728(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = *(a1 + 48);
  v7 = *(a1 + 32);
  v8 = [v5 protectedDatabase];
  v9 = [v6 existingAccountEntityWithIdentifier:v7 database:v8 error:a3];

  if (v9 && [v9 deleteCredentialWithProfile:*(a1 + 40) transaction:v5 deleteTokens:1 credentialIdentifier:0 error:a3])
  {
    v10 = HDClinicalAccountEntityPropertyGatewayExternalID;
    v11 = [v5 protectedDatabase];
    v12 = [v9 stringForProperty:v10 database:v11];

    v13 = HDClinicalAccountEntityPropertySignedClinicalDataIssuerROWID;
    v14 = [v5 protectedDatabase];
    v15 = [v9 numberForProperty:v13 database:v14];

    if (v15)
    {
      v16 = [HDSignedClinicalDataIssuerEntity entityWithPersistentID:v15];
      v17 = HDSignedClinicalDataIssuerEntityPropertyIdentifier;
      v18 = [v5 protectedDatabase];
      v74 = v16;
      v19 = [v16 stringForProperty:v17 database:v18];
    }

    else
    {
      v74 = 0;
      v19 = 0;
    }

    v77[0] = _NSConcreteStackBlock;
    v77[1] = 3221225472;
    v77[2] = sub_47E74;
    v77[3] = &unk_1076D8;
    v81 = *(a1 + 48);
    v78 = *(a1 + 32);
    v21 = v12;
    v79 = v21;
    v22 = v19;
    v80 = v22;
    [v5 onCommit:v77 orRollback:0];
    v23 = [*(a1 + 40) sourceManager];
    v24 = *(a1 + 32);
    v76 = 0;
    v25 = [v23 privateSourceForClinicalAccountIdentifier:v24 provenance:0 createOrUpdateIfNecessary:0 nameOnCreateOrUpdate:0 error:&v76];
    v26 = v76;

    v73 = v26;
    if (v25)
    {
      v20 = [v25 sourceWithProfile:*(a1 + 40) error:a3];
      if (v20)
      {
        v70 = v15;
        v71 = v25;
        v27 = v21;
        v28 = v22;
        v29 = [*(a1 + 40) sourceManager];
        v30 = [v20 bundleIdentifier];
        v31 = [v29 deleteSourceWithBundleIdentifier:v30 error:a3];

        if (!v31)
        {
          v20 = 0;
          v32 = v74;
          v22 = v28;
          v15 = v70;
          v25 = v71;
LABEL_51:
          v33 = v73;
          goto LABEL_52;
        }

LABEL_17:
        v22 = v28;
        if (v27)
        {
          v38 = v27;
        }

        else
        {
          v38 = v28;
        }

        v39 = v38;
        v25 = v71;
        v69 = v39;
        if (v39)
        {
          v40 = v39;
          v41 = [*(a1 + 40) sourceManager];
          v75 = 0;
          v42 = [v41 publicSourceForClinicalExternalIdentifier:v40 provenance:0 createOrUpdateIfNecessary:0 nameOnCreateOrUpdate:0 error:&v75];
          v43 = v75;

          v68 = v43;
          if (v42)
          {
            v44 = [v42 sourceWithProfile:*(a1 + 40) error:a3];
            if (!v44)
            {
              goto LABEL_41;
            }

            v45 = v44;
            [*(a1 + 40) sourceManager];
            v46 = v67 = v42;
            [v45 bundleIdentifier];
            v47 = v27;
            v49 = v48 = v22;
            v66 = [v46 deleteSourceWithBundleIdentifier:v49 error:a3];

            v22 = v48;
            v27 = v47;
            v25 = v71;

            v42 = v67;
            if (!v66)
            {
LABEL_41:

              v20 = 0;
              v15 = v70;
              goto LABEL_42;
            }
          }

          else
          {
            if (v43)
            {
              if (a3)
              {
                v50 = v43;
                *a3 = v43;
              }

              else
              {
                _HKLogDroppedError();
              }

              goto LABEL_41;
            }

            _HKInitializeLogging();
            v51 = HKLogHealthRecords;
            if (os_log_type_enabled(HKLogHealthRecords, OS_LOG_TYPE_DEFAULT))
            {
              v52 = *(a1 + 48);
              v53 = *(a1 + 32);
              *buf = 138543618;
              v83 = v52;
              v84 = 2114;
              v85 = v53;
              _os_log_impl(&dword_0, v51, OS_LOG_TYPE_DEFAULT, "%{public}@: asked to delete account with identifier %{public}@, but no corresponding public source entity to delete. Continuing.", buf, 0x16u);
            }
          }
        }

        v54 = [v5 protectedDatabase];
        v20 = [v9 deleteFromDatabase:v54 error:a3];

        v32 = v74;
        if (!v20)
        {
          v15 = v70;
LABEL_50:

          goto LABEL_51;
        }

        if (v27 && *(a1 + 56) == 1)
        {
          v72 = v25;
          v55 = v27;
          v56 = v22;
          v57 = HDClinicalAccountEntityPropertyGatewayID;
          v58 = [v5 protectedDatabase];
          v59 = [v9 numberForProperty:v57 database:v58];

          if (v59)
          {
            v60 = [HDClinicalGatewayEntity entityWithPersistentID:v59];
            v61 = [v5 protectedDatabase];
            v62 = [v60 deleteFromDatabase:v61 error:a3];

            v22 = v56;
            v27 = v55;
            if (!v62)
            {

              v20 = 0;
              v15 = v70;
              v25 = v72;
LABEL_42:
              v32 = v74;
              goto LABEL_50;
            }
          }

          else
          {
            _HKInitializeLogging();
            v63 = HKLogHealthRecords;
            v22 = v56;
            v27 = v55;
            if (os_log_type_enabled(HKLogHealthRecords, OS_LOG_TYPE_FAULT))
            {
              sub_A22B8(v63);
            }
          }

          v32 = v74;
          v25 = v72;
        }

        v15 = v70;
        if (!v32 || *(a1 + 57) != 1 || ([v5 protectedDatabase], v64 = objc_claimAutoreleasedReturnValue(), v20 = objc_msgSend(v32, "deleteFromDatabase:error:", v64, a3), v64, v15 = v70, v20))
        {
          v20 = [*(a1 + 48) _updateCountOfGatewayBackedAccountsWithProfile:*(a1 + 40) error:a3];
        }

        goto LABEL_50;
      }

      v33 = v26;
    }

    else
    {
      if (!v26)
      {
        v70 = v15;
        v71 = 0;
        v27 = v21;
        v28 = v22;
        _HKInitializeLogging();
        v35 = HKLogHealthRecords;
        if (os_log_type_enabled(HKLogHealthRecords, OS_LOG_TYPE_DEFAULT))
        {
          v36 = *(a1 + 48);
          v37 = *(a1 + 32);
          *buf = 138543618;
          v83 = v36;
          v84 = 2114;
          v85 = v37;
          _os_log_impl(&dword_0, v35, OS_LOG_TYPE_DEFAULT, "%{public}@: asked to delete account with identifier %{public}@, but no corresponding account source entity to delete. Continuing.", buf, 0x16u);
        }

        goto LABEL_17;
      }

      v33 = v26;
      if (a3)
      {
        v34 = v26;
        v20 = 0;
        *a3 = v26;
      }

      else
      {
        _HKLogDroppedError();
        v20 = 0;
      }
    }

    v27 = v21;
    v32 = v74;
LABEL_52:

    goto LABEL_53;
  }

  v20 = 0;
LABEL_53:

  return v20;
}

void sub_47E74(uint64_t a1)
{
  v2 = [*(a1 + 56) _hkAccountRepresentingDeletedAccountWithIdentifier:*(a1 + 32) gatewayExternalID:*(a1 + 40) signedClinicalDataIssuerID:*(a1 + 48)];
  [*(a1 + 56) _postAccountChangeNotificationForAccount:v2 changeType:3];
}

void sub_48670(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id sub_48694(uint64_t a1, void *a2, uint64_t a3)
{
  v4 = a2;
  v16 = +[HDClinicalAccountEntity _propertiesForCodable];
  v5 = [v16 arrayByAddingObject:HDClinicalAccountEntityPropertySyncIdentity];
  v6 = [*(a1 + 64) _syncObjectsGenerationPredicate];
  v7 = *(*(a1 + 56) + 8) + 24;
  v8 = *(a1 + 32);
  v9 = [*(a1 + 40) database];
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_48810;
  v17[3] = &unk_105720;
  v18 = *(a1 + 40);
  v19 = v4;
  v20 = *(a1 + 48);
  v11 = *(a1 + 72);
  v10 = *(a1 + 80);
  v12 = v4;
  v13 = [HDClinicalAccountEntity enumerateEntitiesForSyncWithProperties:v5 predicate:v6 session:v8 syncAnchorRange:v11 limit:v10 lastSyncAnchor:0 healthDatabase:v7 error:v9 block:a3, v17];

  return v13;
}

BOOL sub_48810(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10 = [HDClinicalAccountEntity _codableWithRow:a4 error:a8];
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

id sub_48BF8(uint64_t a1, void *a2)
{
  v3 = a2;
  objc_opt_class();
  v4 = HKSafeObject();

  v5 = 0;
  if (v4)
  {
    v6 = [*(a1 + 32) _shouldInsertReceivedCodableAccount:v4];
  }

  else
  {
    _HKInitializeLogging();
    v7 = HKLogHealthRecords;
    if (os_log_type_enabled(HKLogHealthRecords, OS_LOG_TYPE_FAULT))
    {
      sub_A234C(a1, v7, v5);
    }

    v6 = 0;
  }

  return v6;
}

void sub_48D9C(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_fault_impl(a1, v9, OS_LOG_TYPE_FAULT, a4, &a9, 0xCu);
}

void sub_49BE8(uint64_t a1)
{
  v1 = a1 + 32;
  v2 = [*(a1 + 32) createHealthRecordsIngestionServiceClient];
  v3 = *(v1 + 8);
  v4 = [*v1 profile];
  v10 = 0;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_49D10;
  v8[3] = &unk_107770;
  v5 = v2;
  v9 = v5;
  LOBYTE(v3) = [HDOriginalSignedClinicalDataRecordEntity enumerateActiveRecordsForAccountIdentifier:v3 profile:v4 error:&v10 block:v8];
  v6 = v10;

  if ((v3 & 1) == 0)
  {
    _HKInitializeLogging();
    v7 = HKLogHealthRecords;
    if (os_log_type_enabled(HKLogHealthRecords, OS_LOG_TYPE_ERROR))
    {
      sub_A2740(v1, v6, v7);
    }
  }
}

void sub_4AD58(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, v9, OS_LOG_TYPE_ERROR, a4, &a9, 0x16u);
}

uint64_t sub_4B334(void *a1)
{
  v2 = a1[4];
  HDSQLiteBindUUIDToProperty();
  v3 = a1[5];
  HDSQLiteBindDateToProperty();
  v4 = a1[6];
  HDSQLiteBindInt64ToProperty();
  v5 = a1[7];
  HDSQLiteBindInt64ToProperty();
  v6 = a1[8];

  return HDSQLiteBindInt64ToProperty();
}

id sub_4B738(uint64_t a1, uint64_t a2)
{
  v3 = (a1 + 32);
  v2 = *(a1 + 32);
  v8 = 0;
  v4 = [v2 _validateCodableDeletedAccount:a2 error:&v8];
  v5 = v8;
  if ((v4 & 1) == 0)
  {
    _HKInitializeLogging();
    v6 = HKLogHealthRecords;
    if (os_log_type_enabled(HKLogHealthRecords, OS_LOG_TYPE_ERROR))
    {
      sub_A2B50(v3, v6, v5);
    }
  }

  return v4;
}

uint64_t sub_4B7CC(uint64_t a1, void *a2, uint64_t a3)
{
  v28 = a2;
  v4 = [v28 databaseForEntityClass:*(a1 + 48)];
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  obj = *(a1 + 32);
  v33 = [obj countByEnumeratingWithState:&v36 objects:v42 count:16];
  if (!v33)
  {
    goto LABEL_20;
  }

  v32 = *v37;
  v27 = v4;
  v31 = a1;
  do
  {
    for (i = 0; i != v33; i = i + 1)
    {
      if (*v37 != v32)
      {
        objc_enumerationMutation(obj);
      }

      v6 = *(*(&v36 + 1) + 8 * i);
      v7 = [v6 syncIdentifier];
      v8 = [NSUUID hk_UUIDWithData:v7];

      [v6 deletionDate];
      v9 = [NSDate dateWithTimeIntervalSinceReferenceDate:?];
      v10 = [v6 safeDeletionReason];
      v11 = [*(a1 + 40) syncIdentityManager];
      v12 = [v11 legacySyncIdentity];

      if ([v6 hasSyncIdentity])
      {
        v13 = [v6 syncIdentity];
        v35 = 0;
        v14 = [HDSyncIdentity syncIdentityWithCodable:v13 error:&v35];
        v15 = v35;

        if (v14)
        {
          v16 = [*(v31 + 40) syncIdentityManager];
          v34 = v15;
          v17 = [v16 concreteIdentityForIdentity:v14 shouldCreate:1 transaction:v28 error:&v34];
          v18 = v34;

          if (v17)
          {

            v12 = v17;
            v4 = v27;
            a1 = v31;
            goto LABEL_10;
          }

          _HKInitializeLogging();
          v24 = HKLogHealthRecords;
          v4 = v27;
          if (os_log_type_enabled(HKLogHealthRecords, OS_LOG_TYPE_FAULT))
          {
            *buf = 138543362;
            v41 = v18;
            _os_log_fault_impl(&dword_0, v24, OS_LOG_TYPE_FAULT, "HDClinicalDeletedAccountEntity ConcreteSyncIdentity from received codable is nil %{public}@", buf, 0xCu);
          }

          v12 = 0;
          v15 = v18;
        }

        else
        {
          _HKInitializeLogging();
          v23 = HKLogHealthRecords;
          if (os_log_type_enabled(HKLogHealthRecords, OS_LOG_TYPE_FAULT))
          {
            *buf = 138543362;
            v41 = v15;
            _os_log_fault_impl(&dword_0, v23, OS_LOG_TYPE_FAULT, "HDClinicalDeletedAccountEntity SyncIdentity from received codable is nil %{public}@", buf, 0xCu);
          }
        }

        a1 = v31;
        goto LABEL_18;
      }

LABEL_10:
      v19 = *(a1 + 48);
      v20 = *(a1 + 56);
      v21 = [v12 entity];
      v22 = [v19 _insertOrUpdateTombstoneWithSyncIdentifier:v8 deletionDate:v9 deletionReason:v10 syncProvenance:v20 syncIdentity:objc_msgSend(v21 database:"persistentID") error:{v4, a3}];

      if ((v22 & 1) == 0)
      {

        v25 = 0;
        goto LABEL_21;
      }

LABEL_18:
    }

    v33 = [obj countByEnumeratingWithState:&v36 objects:v42 count:16];
  }

  while (v33);
LABEL_20:
  v25 = 1;
LABEL_21:

  return v25;
}

id sub_4BB84(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = [[HDClinicalDeletedAccountJournalEntry alloc] initWithCodableDeletedAccounts:*(a1 + 32) syncProvenance:*(a1 + 48)];
  v6 = [*(a1 + 40) addJournalEntry:v5 error:a3];

  return v6;
}

void sub_4C17C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id sub_4C1A0(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v6 = +[HDClinicalDeletedAccountEntity _propertiesForEntity];
  v7 = *(*(a1 + 56) + 8) + 24;
  v8 = *(a1 + 32);
  v9 = [*(a1 + 40) database];
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_4C2E4;
  v15[3] = &unk_105720;
  v16 = *(a1 + 40);
  v17 = v5;
  v18 = *(a1 + 48);
  v11 = *(a1 + 64);
  v10 = *(a1 + 72);
  v12 = v5;
  v13 = [HDClinicalDeletedAccountEntity enumerateEntitiesForSyncWithProperties:v6 predicate:0 session:v8 syncAnchorRange:v11 limit:v10 lastSyncAnchor:0 healthDatabase:v7 error:v9 block:a3, v15];

  return v13;
}

BOOL sub_4C2E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10 = [HDClinicalDeletedAccountEntity _codableWithRow:a4 error:a8];
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

id sub_4C9AC(uint64_t a1, void *a2)
{
  v3 = a2;
  objc_opt_class();
  v4 = HKSafeObject();

  v5 = 0;
  if (v4)
  {
    v6 = [*(a1 + 32) _shouldInsertReceivedCodableAccount:v4];
  }

  else
  {
    _HKInitializeLogging();
    v7 = HKLogHealthRecords;
    if (os_log_type_enabled(HKLogHealthRecords, OS_LOG_TYPE_FAULT))
    {
      sub_A2C7C(v5, v7);
    }

    v6 = 0;
  }

  return v6;
}

void sub_4D464(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_4D47C(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_4D494(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = a1[6];
  v5 = [objc_opt_class() codableWithRow:a3 accountSyncIdentifier:a1[4]];
  v6 = *(a1[5] + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;

  return _objc_release_x1();
}

void sub_4D660(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_4D678(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a1 + 32);
  v5 = [objc_opt_class() _credentialWithRow:a3];
  v6 = *(*(a1 + 40) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;

  return _objc_release_x1();
}

id sub_4DBCC(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = (a1 + 64);
  v7 = [v5 databaseForEntityClass:*(a1 + 64)];
  v8 = objc_opt_self();
  v9 = [v5 databaseForEntityClass:v8];

  v10 = [HDClinicalAccountEntity existingAccountEntityWithSyncIdentifier:*(a1 + 32) database:v9 error:a3];
  v11 = v10;
  if (v10)
  {
    v12 = [v10 accountInDatabase:v9 error:a3];
    if (!v12)
    {
      v15 = 0;
LABEL_49:

      goto LABEL_50;
    }

    v13 = [v11 credentialIDInDatabase:v9];
    if (v13)
    {
      v14 = [HDFHIRCredentialEntity codableCredentialWithAccountSyncIdentifier:*(a1 + 32) persistentID:v13 database:v7 error:a3];
      if (*a3)
      {
        v15 = 0;
LABEL_48:

        goto LABEL_49;
      }
    }

    else
    {
      v14 = 0;
    }

    v16 = *(a1 + 64);
    v17 = *(a1 + 40);
    v18 = *(a1 + 48);
    v68 = 0;
    v64 = v14;
    v19 = [v16 _shouldReplaceCurrentCredential:v14 withIncomingCredential:v17 account:v12 profile:v18 recordEvent:&v68 error:a3];
    v20 = v68;
    v21 = v20;
    if (*a3)
    {
      v15 = 0;
LABEL_47:

      v14 = v64;
      goto LABEL_48;
    }

    v63 = v20;
    if (!v19)
    {
      v43 = *(a1 + 48);
      v65 = 0;
      v44 = [HDClinicalAccountEventEntity insertEvent:v20 profile:v43 error:&v65];
      v45 = v65;
      if ((v44 & 1) == 0)
      {
        _HKInitializeLogging();
        v46 = HKLogHealthRecords;
        if (os_log_type_enabled(HKLogHealthRecords, OS_LOG_TYPE_ERROR))
        {
          sub_A2EDC(v6, v46, v45);
        }
      }

      v15 = &dword_0 + 1;
      goto LABEL_45;
    }

    _HKInitializeLogging();
    v22 = HKLogHealthRecords;
    if (os_log_type_enabled(HKLogHealthRecords, OS_LOG_TYPE_DEFAULT))
    {
      v23 = *(a1 + 64);
      v24 = v22;
      v25 = objc_opt_class();
      v26 = NSStringFromClass(v25);
      v27 = *(a1 + 32);
      *buf = 138543618;
      v70 = v26;
      v71 = 2114;
      v72 = v27;
      _os_log_impl(&dword_0, v24, OS_LOG_TYPE_DEFAULT, "%{public}@ will use incoming credential for account with sync identifier %{public}@ and delete the existing one", buf, 0x16u);
    }

    if (v64)
    {
      v61 = *(a1 + 48);
      v53 = [*(a1 + 56) identifier];
      v57 = [v64 identifier];
      v28 = [NSUUID hk_UUIDWithData:v57];
      v29 = [v11 deleteCredentialWithProfile:v61 transaction:v5 deleteTokens:objc_msgSend(v53 credentialIdentifier:"isEqual:" error:{v28) ^ 1, 0, a3}];

      if (!v29)
      {
        v15 = 0;
LABEL_46:
        v21 = v63;
        goto LABEL_47;
      }
    }

    v30 = [*(a1 + 48) syncIdentityManager];
    v62 = [v30 legacySyncIdentity];

    if (![*(a1 + 40) hasSyncIdentity])
    {
      goto LABEL_20;
    }

    v31 = [*(a1 + 40) syncIdentity];
    v67 = 0;
    v32 = [HDSyncIdentity syncIdentityWithCodable:v31 error:&v67];
    v58 = v67;

    if (v32)
    {
      v51 = [*(a1 + 48) syncIdentityManager];
      v66 = v58;
      v49 = [v51 concreteIdentityForIdentity:v32 shouldCreate:1 transaction:v5 error:&v66];
      v54 = v66;

      if (v49)
      {

        v62 = v49;
LABEL_20:
        v34 = *(a1 + 64);
        v33 = *(a1 + 72);
        v55 = v33;
        v59 = *(a1 + 40);
        v35 = [v62 entity];
        v36 = [v34 _insertCodableCredential:v59 syncProvenance:v55 syncIdentity:objc_msgSend(v35 transaction:"persistentID") error:{v5, a3}];

        if (!v36)
        {
          v15 = 0;
LABEL_43:
          v45 = v62;
          goto LABEL_44;
        }

        v60 = v36;
        v37 = +[NSNumber numberWithLongLong:](NSNumber, "numberWithLongLong:", [v36 persistentID]);
        v38 = [v11 assignCredentialWithPersistentID:v37 profile:*(a1 + 48) transaction:v5 error:a3];

        if (!v38)
        {
          v15 = 0;
          v36 = v60;
          v45 = v62;
LABEL_44:

LABEL_45:
          goto LABEL_46;
        }

        v39 = [v12 credentialHasOutdatedScopes:*(a1 + 56)];
        v40 = 2;
        if (!v39)
        {
          v40 = 0;
        }

        v56 = v40;
        [v12 credentialState];
        v41 = [v63 eventWithUpdatedCredentialStateBefore:HKOptionalClinicalAccountCredentialStateFromHKClinicalAccountCredentialState()];
        v52 = [v41 eventWithUpdatedCredentialStateAfter:HKOptionalClinicalAccountCredentialStateFromHKClinicalAccountCredentialState()];

        v50 = [*(a1 + 48) healthRecordsExtension];
        v42 = [v50 accountManager];
        v15 = [v42 updateCredentialStateForAccount:v12 state:v56 force:1 event:v52 error:a3];

        v63 = v52;
        v32 = v50;
        v36 = v60;
LABEL_42:

        goto LABEL_43;
      }

      v36 = v54;
      _HKInitializeLogging();
      if (os_log_type_enabled(HKLogHealthRecords, OS_LOG_TYPE_FAULT))
      {
        sub_A2F9C();
      }

      v62 = 0;
      v47 = v54;
      if (!v54)
      {
        v15 = 0;
        v36 = 0;
        goto LABEL_42;
      }

LABEL_38:
      v15 = 0;
      *a3 = v47;
      goto LABEL_42;
    }

    _HKInitializeLogging();
    v36 = v58;
    if (os_log_type_enabled(HKLogHealthRecords, OS_LOG_TYPE_FAULT))
    {
      sub_A3010();
      if (v58)
      {
        goto LABEL_34;
      }
    }

    else if (v58)
    {
LABEL_34:
      v47 = v58;
      goto LABEL_38;
    }

    v15 = 0;
    goto LABEL_42;
  }

  v15 = 0;
LABEL_50:

  return v15;
}

id sub_4E220(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = [[HDFHIRCredentialInsertCodableJournalEntry alloc] initWithCodableCredential:*(a1 + 32) syncProvenance:*(a1 + 48)];
  v6 = [*(a1 + 40) database];
  v7 = [v6 addJournalEntry:v5 error:a3];

  return v7;
}

uint64_t sub_4EE48(uint64_t a1)
{
  v2 = *(a1 + 32);
  HDSQLiteBindUUIDToProperty();
  v3 = *(a1 + 48);
  HDSQLiteBindInt64ToProperty();
  [*(a1 + 40) receivedDate];
  v4 = HDDecodeDateForValue();
  HDSQLiteBindDateToProperty();

  [*(a1 + 40) expirationDate];
  v5 = HDDecodeDateForValue();
  HDSQLiteBindDateToProperty();

  v6 = [*(a1 + 40) requestedScopeString];
  HDSQLiteBindStringToProperty();

  v7 = [*(a1 + 40) scopeString];
  HDSQLiteBindStringToProperty();

  v8 = [*(a1 + 40) patientID];
  HDSQLiteBindStringToProperty();

  [*(a1 + 40) deleted];
  HDSQLiteBindBooleanToProperty();
  v9 = *(a1 + 56);

  return HDSQLiteBindInt64ToProperty();
}

void sub_4F998(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_4F9C0(void *a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v6 = a1[4];
  v7 = [v5 protectedDatabase];
  v8 = [HDClinicalAccountEntity existingAccountEntityWithIdentifier:v6 database:v7 error:a3];

  if (v8)
  {
    v9 = [v5 databaseForEntityClass:objc_opt_class()];
    v10 = [HDOriginalFHIRResourceEntity maxPersistentIDWithPredicate:0 database:v9 error:a3];
    if (v10)
    {
      v11 = HDOriginalFHIRResourceEntityPropertyAccountID;
      v12 = +[NSNumber numberWithLongLong:](NSNumber, "numberWithLongLong:", [v8 persistentID]);
      v13 = [HDSQLiteComparisonPredicate predicateWithProperty:v11 equalToValue:v12];

      v14 = [HDOriginalFHIRResourceEntity countValueForProperty:HDSQLEntityPropertyStar predicate:v13 database:v9 error:a3];
      if (v14)
      {
        v32 = v14;
        v15 = HDSQLEntityPropertyPersistentID;
        v30 = v10;
        v28 = [HDSQLiteComparisonPredicate predicateWithProperty:HDSQLEntityPropertyPersistentID lessThanOrEqualToValue:v10];
        v29 = v13;
        v37[0] = v13;
        v37[1] = v28;
        v16 = [NSArray arrayWithObjects:v37 count:2];
        v31 = [HDSQLiteCompoundPredicate predicateMatchingAllPredicates:v16];

        v17 = [[HDSQLiteOrderingTerm alloc] initWithExpression:@"RANDOM()" ascending:0];
        v26 = objc_alloc_init(NSMutableArray);
        v36[0] = v15;
        v36[1] = HDOriginalFHIRResourceEntityPropertyExtractionHints;
        v18 = [NSArray arrayWithObjects:v36 count:2];
        v27 = v17;
        v35 = v17;
        v19 = [NSArray arrayWithObjects:&v35 count:1];
        [v32 floatValue];
        v21 = vcvtms_s32_f32(v20 * 0.5);
        v33[0] = _NSConcreteStackBlock;
        v33[1] = 3221225472;
        v33[2] = sub_4FD78;
        v33[3] = &unk_1078A0;
        v22 = v26;
        v34 = v22;
        LODWORD(v21) = [HDOriginalFHIRResourceEntity enumerateQueryResultsFromColumns:v18 properties:v18 predicate:v31 groupBy:0 orderingTerms:v19 limit:v21 database:v9 error:a3 enumerationHandler:v33];

        if (v21 && ([HDOriginalFHIRResourceEntity addExtractionHints:4 toResourceEntities:v22 profile:a1[5] error:a3], v23 = objc_claimAutoreleasedReturnValue(), v23, v23))
        {
          *(*(a1[6] + 8) + 24) = [v22 count];
          v24 = 1;
        }

        else
        {
          v24 = 0;
        }

        v13 = v29;
        v10 = v30;

        v14 = v32;
      }

      else
      {
        v24 = 0;
      }
    }

    else
    {
      v24 = 0;
    }
  }

  else
  {
    v24 = 0;
  }

  return v24;
}

BOOL sub_4FD78(uint64_t a1)
{
  v2 = HDSQLiteColumnWithNameAsInt64();
  if ((v2 & 4) == 0)
  {
    v3 = HDSQLiteColumnWithNameAsNumber();
    if (v3)
    {
      v4 = v3;
    }

    else
    {
      v4 = &off_1102A0;
    }

    v5 = [HDOriginalFHIRResourceEntity entityWithPersistentID:v4];
    [*(a1 + 32) addObject:v5];
  }

  return (v2 & 4) == 0;
}

void sub_5015C(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  if ((a2 & 1) == 0)
  {
    _HKInitializeLogging();
    v6 = HKLogHealthRecords;
    if (os_log_type_enabled(HKLogHealthRecords, OS_LOG_TYPE_ERROR))
    {
      sub_A30EC(a1, v6, v5);
    }
  }
}

void sub_511EC(uint64_t a1, void *a2)
{
  v3 = a2;
  _HKInitializeLogging();
  v4 = HKLogHealthRecords;
  if (os_log_type_enabled(HKLogHealthRecords, OS_LOG_TYPE_ERROR))
  {
    sub_A328C(a1, v3, v4);
  }
}

uint64_t sub_52AF4(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_52B0C(uint64_t a1)
{
  v2 = HDSQLiteColumnAsString();
  [*(*(*(a1 + 32) + 8) + 40) addObject:v2];

  return 1;
}

void sub_52E38(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
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

void sub_52E6C(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = a1[4];
  v11 = 0;
  v5 = [objc_opt_class() _gatewayWithRow:a3 error:&v11];
  v6 = v11;
  v7 = *(a1[5] + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v5;

  v9 = *(a1[6] + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v6;
}

void sub_5303C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

BOOL sub_53054(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = [a2 databaseForEntityClass:*(a1 + 48)];
  v6 = [*(a1 + 48) existingGatewayEntityWithExternalID:*(a1 + 32) database:v5 error:a3];
  v7 = [v6 gatewayInDatabase:v5 error:a3];
  v8 = *(*(a1 + 40) + 8);
  v9 = *(v8 + 40);
  *(v8 + 40) = v7;

  v10 = *(*(*(a1 + 40) + 8) + 40) != 0;
  return v10;
}

uint64_t sub_534E0(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = [a2 databaseForEntityClass:*(a1 + 48)];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v6 = *(a1 + 32);
  v7 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v14;
    while (2)
    {
      v10 = 0;
      do
      {
        if (*v14 != v9)
        {
          objc_enumerationMutation(v6);
        }

        if (![*(a1 + 48) insertOrUpdateGateway:*(*(&v13 + 1) + 8 * v10) database:v5 profile:*(a1 + 40) error:{a3, v13}])
        {
          v11 = 0;
          goto LABEL_11;
        }

        v10 = v10 + 1;
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
      if (v8)
      {
        continue;
      }

      break;
    }
  }

  v11 = 1;
LABEL_11:

  return v11;
}

id sub_53614(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a1 + 32);
  v6 = *(a1 + 48);
  v7 = [*(a1 + 40) syncIdentityManager];
  v8 = [v7 currentSyncIdentity];
  v9 = [v8 identity];
  v10 = [v6 _codableGatewaysFromGateways:v5 syncIdentity:v9 error:a3];

  if (v10)
  {
    v11 = [*(a1 + 48) _insertCodableGateways:v10 syncProvenance:0 profile:*(a1 + 40) error:a3];
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

uint64_t sub_53830(id *a1, void *a2, uint64_t a3)
{
  v5 = [a2 databaseForEntityClass:a1[6]];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v6 = a1[4];
  v7 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v14;
    while (2)
    {
      v10 = 0;
      do
      {
        if (*v14 != v9)
        {
          objc_enumerationMutation(v6);
        }

        if (![a1[6] _updateGatewayIfExists:*(*(&v13 + 1) + 8 * v10) syncProvenance:0 syncIdentity:objc_msgSend(a1[5] database:"currentSyncIdentityPersistentID" profile:v13) error:{v5, a1[5], a3}])
        {
          v11 = 0;
          goto LABEL_11;
        }

        v10 = v10 + 1;
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
      if (v8)
      {
        continue;
      }

      break;
    }
  }

  v11 = 1;
LABEL_11:

  return v11;
}

id sub_53984(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a1 + 32);
  v6 = *(a1 + 48);
  v7 = [*(a1 + 40) syncIdentityManager];
  v8 = [v7 currentSyncIdentity];
  v9 = [v8 identity];
  v10 = [v6 _codableGatewaysFromGateways:v5 syncIdentity:v9 error:a3];

  if (v10)
  {
    v11 = [(HDClinicalGatewayCodableGatewaysJournalEntry *)[HDClinicalGatewayUpdateCodableGatewaysJournalEntry alloc] initWithCodableResources:v10 syncProvencance:0];
    v12 = [*(a1 + 40) database];
    v13 = [v12 addJournalEntry:v11 error:a3];
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

id sub_53F14(uint64_t a1, uint64_t a2)
{
  v4 = [*(a1 + 32) externalID];
  HDSQLiteBindStringToProperty();

  [*(a1 + 32) lastReportedStatus];
  HDSQLiteBindInt64ToProperty();
  [*(a1 + 32) revision];
  HDSQLiteBindInt64ToProperty();
  v5 = *(a1 + 40);
  HDSQLiteBindDataToProperty();
  v7 = *(a1 + 48);
  v6 = *(a1 + 56);
  v8 = *(a1 + 64);
  v9 = *(a1 + 72);

  return [v6 _bindSyncAnchor:v7 syncProvenance:v8 syncIdentity:v9 binder:a2];
}

id sub_54360(uint64_t a1, uint64_t a2)
{
  [*(a1 + 32) lastReportedStatus];
  HDSQLiteBindInt64ToProperty();
  [*(a1 + 32) revision];
  HDSQLiteBindInt64ToProperty();
  v4 = *(a1 + 40);
  HDSQLiteBindDataToProperty();
  v6 = *(a1 + 48);
  v5 = *(a1 + 56);
  v7 = *(a1 + 64);
  v8 = *(a1 + 72);

  return [v5 _bindSyncAnchor:v6 syncProvenance:v7 syncIdentity:v8 binder:a2];
}

uint64_t sub_54624(uint64_t a1, void *a2, uint64_t a3)
{
  v4 = a2;
  v5 = [*(a1 + 48) _gatewaysFromCodableGateways:*(a1 + 32) profile:*(a1 + 40) transaction:v4];
  v6 = [v4 databaseForEntityClass:*(a1 + 48)];
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  obj = v5;
  v7 = [obj countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v7)
  {
    v8 = v7;
    v18 = v4;
    v9 = *v22;
    while (2)
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v22 != v9)
        {
          objc_enumerationMutation(obj);
        }

        v11 = *(*(&v21 + 1) + 8 * i);
        v12 = *(a1 + 48);
        v13 = *(a1 + 56);
        v14 = [v11 syncIdentity];
        v15 = [v14 entity];
        LODWORD(v11) = [v12 _insertOrUpdateGateway:v11 syncProvenance:v13 syncIdentity:objc_msgSend(v15 database:"persistentID") profile:v6 error:{*(a1 + 40), a3}];

        if (!v11)
        {
          v16 = 0;
          goto LABEL_11;
        }
      }

      v8 = [obj countByEnumeratingWithState:&v21 objects:v25 count:16];
      if (v8)
      {
        continue;
      }

      break;
    }

    v16 = 1;
LABEL_11:
    v4 = v18;
  }

  else
  {
    v16 = 1;
  }

  return v16;
}

id sub_547D8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = [(HDClinicalGatewayCodableGatewaysJournalEntry *)[HDClinicalGatewayInsertCodableGatewaysJournalEntry alloc] initWithCodableResources:*(a1 + 32) syncProvencance:*(a1 + 48)];
  v6 = [*(a1 + 40) database];
  v7 = [v6 addJournalEntry:v5 error:a3];

  return v7;
}

uint64_t sub_549B4(uint64_t a1, void *a2, uint64_t a3)
{
  v4 = a2;
  v5 = [v4 databaseForEntityClass:*(a1 + 48)];
  [*(a1 + 48) _gatewaysFromCodableGateways:*(a1 + 32) profile:*(a1 + 40) transaction:v4];
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  obj = v23 = 0u;
  v6 = [obj countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v6)
  {
    v7 = v6;
    v17 = v4;
    v8 = *v21;
    while (2)
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v21 != v8)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v20 + 1) + 8 * i);
        v11 = *(a1 + 48);
        v12 = *(a1 + 56);
        v13 = [v10 syncIdentity];
        v14 = [v13 entity];
        LODWORD(v10) = [v11 _updateGatewayIfExists:v10 syncProvenance:v12 syncIdentity:objc_msgSend(v14 database:"persistentID") profile:v5 error:{*(a1 + 40), a3}];

        if (!v10)
        {
          v15 = 0;
          goto LABEL_11;
        }
      }

      v7 = [obj countByEnumeratingWithState:&v20 objects:v24 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }

    v15 = 1;
LABEL_11:
    v4 = v17;
  }

  else
  {
    v15 = 1;
  }

  return v15;
}

id sub_54B60(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = [(HDClinicalGatewayCodableGatewaysJournalEntry *)[HDClinicalGatewayUpdateCodableGatewaysJournalEntry alloc] initWithCodableResources:*(a1 + 32) syncProvencance:*(a1 + 48)];
  v6 = [*(a1 + 40) database];
  v7 = [v6 addJournalEntry:v5 error:a3];

  return v7;
}

uint64_t sub_54D00(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [objc_opt_class() propertyForSyncAnchor];
  v4 = *(a1 + 40);
  HDSQLiteBindNumberToProperty();

  v5 = *(a1 + 32);
  v6 = [objc_opt_class() propertyForSyncProvenance];
  HDSQLiteBindInt64ToProperty();

  [*(a1 + 48) currentSyncIdentityPersistentID];

  return HDSQLiteBindInt64ToProperty();
}

void sub_56178(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id sub_5619C(uint64_t a1, void *a2, uint64_t a3)
{
  v4 = a2;
  v5 = +[HDClinicalGatewayEntity _propertiesForCodable];
  v6 = [*(a1 + 64) _syncObjectsGenerationPredicate];
  v7 = *(*(a1 + 56) + 8) + 24;
  v8 = *(a1 + 32);
  v9 = [*(a1 + 40) database];
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_562F8;
  v16[3] = &unk_105720;
  v17 = *(a1 + 40);
  v18 = v4;
  v19 = *(a1 + 48);
  v11 = *(a1 + 72);
  v10 = *(a1 + 80);
  v12 = v4;
  v13 = [HDClinicalGatewayEntity enumerateEntitiesForSyncWithProperties:v5 predicate:v6 session:v8 syncAnchorRange:v11 limit:v10 lastSyncAnchor:0 healthDatabase:v7 error:v9 block:a3, v16];

  return v13;
}

BOOL sub_562F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10 = [HDClinicalGatewayEntity _codableGatewayWithRow:a4 error:a8];
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

id sub_566F0(uint64_t a1, void *a2)
{
  v3 = a2;
  objc_opt_class();
  v4 = HKSafeObject();

  v5 = 0;
  if (v4)
  {
    v6 = [*(a1 + 40) _shouldInsertReceivedCodableGateway:v4 profile:*(a1 + 32)];
  }

  else
  {
    _HKInitializeLogging();
    v7 = HKLogHealthRecords;
    if (os_log_type_enabled(HKLogHealthRecords, OS_LOG_TYPE_FAULT))
    {
      sub_A3618(a1, v7, v5);
    }

    v6 = 0;
  }

  return v6;
}

void sub_57084(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, v9, OS_LOG_TYPE_ERROR, a4, &a9, 0x20u);
}

void sub_57334(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  _HKInitializeLogging();
  v7 = HKLogHealthRecords;
  if (v6)
  {
    if (os_log_type_enabled(HKLogHealthRecords, OS_LOG_TYPE_ERROR))
    {
      sub_A3998(a1, v7);
    }

    v8 = *(*(a1 + 40) + 16);
  }

  else
  {
    if (os_log_type_enabled(HKLogHealthRecords, OS_LOG_TYPE_DEBUG))
    {
      sub_A3A40(a1, v7);
    }

    v9 = [v5 signedClinicalData];

    if (v9)
    {
      v10 = *(a1 + 32);
      v11 = [v5 signedClinicalData];
      v12 = [v10 resultWithUpdatedSignedClinicalDataRecordsInParsingResult:v11];

      v13 = *(a1 + 40);
      v14 = [v12 muxed];
      (*(v13 + 16))(v13, v14, 0);

      goto LABEL_10;
    }

    v8 = *(*(a1 + 40) + 16);
  }

  v8();
LABEL_10:
}

void sub_5756C(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  _HKInitializeLogging();
  v7 = HKLogHealthRecords;
  if (!v6)
  {
    if (os_log_type_enabled(HKLogHealthRecords, OS_LOG_TYPE_DEBUG))
    {
      sub_A3C30(a1, v7);
    }

    v18 = 0;
    v8 = *(a1 + 32);
    v9 = [v5 signedClinicalData];
    v17 = 0;
    v10 = [v8 storeDataFromParsingResult:v9 existingAccountIdentifier:0 insertOriginalRecords:1 allRecordsWereDuplicates:&v18 error:&v17];
    v11 = v17;

    _HKInitializeLogging();
    v12 = HKLogHealthRecords;
    if (os_log_type_enabled(HKLogHealthRecords, OS_LOG_TYPE_DEBUG))
    {
      sub_A3CCC((a1 + 32), v12);
      if (v10)
      {
        goto LABEL_9;
      }
    }

    else if (v10)
    {
LABEL_9:
      v13 = v18;
      v14 = *(a1 + 40);
      v15 = [v10 muxed];
      if (v13 == 1)
      {
        v16 = [NSError hk_error:115 description:@"All stored records were duplicates of existing records"];
        (*(v14 + 16))(v14, v15, v16);
      }

      else
      {
        (*(v14 + 16))(v14, v15, 0);
      }

      goto LABEL_15;
    }

    (*(*(a1 + 40) + 16))();
LABEL_15:

    goto LABEL_16;
  }

  if (os_log_type_enabled(HKLogHealthRecords, OS_LOG_TYPE_ERROR))
  {
    sub_A3B88(a1, v7);
  }

  (*(*(a1 + 40) + 16))();
LABEL_16:
}

void sub_57EBC(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  _HKInitializeLogging();
  v7 = HKLogHealthRecords;
  if (v6)
  {
    if (os_log_type_enabled(HKLogHealthRecords, OS_LOG_TYPE_ERROR))
    {
      sub_A3E94(a1, v7);
    }

    v8 = *(*(a1 + 64) + 8);
    v23[1] = _NSConcreteStackBlock;
    v23[2] = 3221225472;
    v23[3] = sub_58180;
    v23[4] = &unk_106B68;
    v24 = *(a1 + 48);
    v25 = v6;
    HKWithUnfairLock();

    v9 = v24;
  }

  else
  {
    if (os_log_type_enabled(HKLogHealthRecords, OS_LOG_TYPE_DEBUG))
    {
      sub_A3F7C(a1, v7);
    }

    v10 = *(a1 + 32);
    v11 = *(a1 + 40);
    v23[0] = 0;
    v12 = [v10 storeDataFromParsingResult:v5 existingAccountIdentifier:v11 insertOriginalRecords:0 allRecordsWereDuplicates:0 error:v23];
    v9 = v23[0];
    if (!v12)
    {
      _HKInitializeLogging();
      v13 = HKLogHealthRecords;
      if (os_log_type_enabled(HKLogHealthRecords, OS_LOG_TYPE_ERROR))
      {
        v15 = *(a1 + 32);
        v16 = v13;
        v17 = objc_opt_class();
        v18 = NSStringFromClass(v17);
        v19 = *(a1 + 40);
        v20 = HKSensitiveLogItem();
        *buf = 138543874;
        v27 = v18;
        v28 = 2114;
        v29 = v19;
        v30 = 2114;
        v31 = v20;
        _os_log_error_impl(&dword_0, v16, OS_LOG_TYPE_ERROR, "%{public}@: reextractOriginalSignedClinicalDataRecords failed to store parsed records for account %{public}@ with error %{public}@", buf, 0x20u);
      }

      v14 = *(*(a1 + 64) + 8);
      v21 = *(a1 + 48);
      v22 = v9;
      HKWithUnfairLock();
    }
  }

  dispatch_group_leave(*(a1 + 56));
}

id sub_5847C(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 mainRecord];
  v5 = [v4 sourceRevision];

  if (v5)
  {
    goto LABEL_2;
  }

  v7 = *(a1 + 32);
  v8 = [v4 issuerIdentifier];
  v9 = [v7 objectForKeyedSubscript:v8];

  if (!v9)
  {
    v12 = *(a1 + 40);
    v13 = [v4 issuerIdentifier];
    v14 = [v12 titleForIssuerWithIdentifier:v13];

    if ([v14 length])
    {
      v15 = +[NSUUID UUID];
      v16 = [HKSource _privateSourceForClinicalAccountIdentifier:v15 name:v14];

      v9 = [[HKSourceRevision alloc] initWithSource:v16 version:0];
      v17 = *(a1 + 32);
      v18 = [v4 issuerIdentifier];
      [v17 setObject:v9 forKeyedSubscript:v18];

      if (v9)
      {
        goto LABEL_4;
      }
    }

    else
    {
    }

LABEL_2:
    v6 = v3;
    goto LABEL_5;
  }

LABEL_4:
  [v4 _setSourceRevision:v9];
  v10 = [v3 originalRecord];
  v6 = [v3 copyWithOriginalRecord:v10 mainRecord:v4];

LABEL_5:

  return v6;
}

void sub_58A20(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27)
{
  _Block_object_dispose(&a23, 8);
  _Block_object_dispose(&a27, 8);
  _Unwind_Resume(a1);
}

void *sub_58A54(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v6 = objc_alloc_init(NSMutableDictionary);
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v7 = [*(a1 + 32) items];
  v8 = [v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v16;
    while (2)
    {
      for (i = 0; i != v9; i = i + 1)
      {
        if (*v16 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v15 + 1) + 8 * i);
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          [NSError hk_assignError:a3 code:125 format:@"storage of %@ items is not implemented", v12];
          v13 = 0;
          goto LABEL_13;
        }

        v13 = [*(a1 + 40) _storeDataFromClinicalItem:v12 existingAccountIdentifier:*(a1 + 48) insertOriginalRecords:*(a1 + 80) accountEntityMap:v6 numOriginalRecordsInserted:*(*(a1 + 64) + 8) + 24 numDuplicateRecords:*(*(a1 + 72) + 8) + 24 transaction:v5 error:a3];
        if (!v13)
        {
          goto LABEL_13;
        }

        [*(a1 + 56) hk_addNonNilObject:v13];
      }

      v9 = [v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
      v13 = &dword_0 + 1;
      if (v9)
      {
        continue;
      }

      break;
    }
  }

  else
  {
    v13 = &dword_0 + 1;
  }

LABEL_13:

  return v13;
}

BOOL sub_58C14(id a1, NSError *a2, id *a3)
{
  v4 = a2;
  if (v4)
  {
    if (a3)
    {
      v5 = v4;
      *a3 = v4;
    }

    else
    {
      _HKLogDroppedError();
    }
  }

  return 0;
}

void sub_5AF88(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v5)
  {
    v7 = [v5 items];
    v8 = [v7 count];

    if (v8)
    {
      v9 = [v5 items];
      v10 = [v9 objectAtIndexedSubscript:0];

      if (!v10)
      {
        v11 = [NSError hk_error:100 format:@"reverifySignatureForRecord attempted on invalid data type"];
        _HKInitializeLogging();
        if (os_log_type_enabled(HKLogHealthRecords, OS_LOG_TYPE_ERROR))
        {
          sub_A4358();
        }

        (*(*(a1 + 64) + 16))();
      }

      v12 = [v10 originalRecord];
      v13 = [v12 signatureStatus];

      v14 = [*(a1 + 40) signatureStatus];
      _HKInitializeLogging();
      v15 = HKLogHealthRecords;
      v16 = os_log_type_enabled(HKLogHealthRecords, OS_LOG_TYPE_DEFAULT);
      if (v14 == v13)
      {
        if (v16)
        {
          v17 = *(a1 + 32);
          *buf = 138543362;
          v32 = v17;
          _os_log_impl(&dword_0, v15, OS_LOG_TYPE_DEFAULT, "%{public}@ reverifySignatureForRecord result produced the same signature status that the record already has, skipping database update.", buf, 0xCu);
        }

        (*(*(a1 + 64) + 16))(*(a1 + 64), 1, [*(a1 + 40) signatureStatus], 0);
      }

      else
      {
        if (v16)
        {
          v19 = *(a1 + 32);
          v20 = v15;
          v21 = objc_opt_class();
          v22 = NSStringFromClass(v21);
          v23 = NSStringForSignedClinicalDataRecordSignatureStatus();
          *buf = 138543618;
          v32 = v22;
          v33 = 2114;
          v34 = v23;
          _os_log_impl(&dword_0, v20, OS_LOG_TYPE_DEFAULT, "%{public}@: reverifySignatureForRecord, signature verification complete result was: %{public}@", buf, 0x16u);
        }

        v24 = [*(a1 + 48) syncIdentifier];
        v25 = [NSUUID hk_UUIDWithData:v24];
        v26 = *(a1 + 56);
        v30 = 0;
        v27 = [HDOriginalSignedClinicalDataRecordEntity replaceOriginalRecordWithSyncIdentifier:v25 newSignatureStatus:v13 profile:v26 error:&v30];
        v28 = v30;

        if (v27)
        {
          [*(a1 + 32) _scheduleExtractionWithReason:@"replaced record after signature reverification"];
        }

        else
        {
          _HKInitializeLogging();
          v29 = HKLogHealthRecords;
          if (os_log_type_enabled(HKLogHealthRecords, OS_LOG_TYPE_ERROR))
          {
            sub_A43CC(a1, v29);
          }
        }

        (*(*(a1 + 64) + 16))();
      }
    }

    else
    {
      v10 = [NSError hk_error:100 format:@"reverifySignatureForRecord returned a parsing result with no items"];
      _HKInitializeLogging();
      if (os_log_type_enabled(HKLogHealthRecords, OS_LOG_TYPE_ERROR))
      {
        sub_A4358();
      }

      (*(*(a1 + 64) + 16))(*(a1 + 64), 0, 1, v10);
    }
  }

  else
  {
    _HKInitializeLogging();
    v18 = HKLogHealthRecords;
    if (os_log_type_enabled(HKLogHealthRecords, OS_LOG_TYPE_ERROR))
    {
      sub_A4474(a1, v18);
    }

    (*(*(a1 + 64) + 16))();
  }
}

uint64_t sub_5B54C(uint64_t a1, void *a2, uint64_t a3)
{
  v4 = a2;
  v5 = [v4 databaseForEntityClass:objc_opt_class()];
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  obj = *(a1 + 32);
  v6 = [obj countByEnumeratingWithState:&v24 objects:v28 count:16];
  if (!v6)
  {
    v18 = 1;
    goto LABEL_20;
  }

  v7 = v6;
  v21 = v4;
  v8 = *v25;
  while (2)
  {
    for (i = 0; i != v7; i = i + 1)
    {
      if (*v25 != v8)
      {
        objc_enumerationMutation(obj);
      }

      v10 = *(*(&v24 + 1) + 8 * i);
      v11 = [HDOriginalSignedClinicalDataRecordEntity accountEntityForCodableRecord:v10 issuerIdentifierToAccountMap:*(a1 + 40) gatewayExternalIDToAccountMap:*(a1 + 48) database:v5 error:a3];
      if (!v11)
      {
        _HKInitializeLogging();
        v12 = HKLogHealthRecords;
        if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
        {
          sub_A451C(a1, v10, v12);
        }

        goto LABEL_19;
      }

      v12 = v11;
      v13 = [NSNumber numberWithLongLong:[v11 persistentID]];
      v14 = [*(a1 + 64) objectForKeyedSubscript:v13];
      if (v14)
      {
        goto LABEL_10;
      }

      v15 = [v12 identifierInDatabase:v5];
      if (!v15)
      {
        v19 = [NSError hk_error:100 description:@"found an account without an identifier, which is impossible"];

LABEL_19:
        v4 = v21;

        v18 = 0;
        goto LABEL_20;
      }

      v14 = v15;
      [*(a1 + 64) setObject:v15 forKeyedSubscript:v13];
LABEL_10:
      v16 = [*(a1 + 72) objectForKeyedSubscript:v14];
      if (!v16)
      {
        v16 = objc_alloc_init(NSMutableArray);
        [*(a1 + 72) setObject:v16 forKeyedSubscript:v14];
      }

      v17 = [v10 asOriginalSignedClinicalDataRecord];
      [v16 addObject:v17];
    }

    v7 = [obj countByEnumeratingWithState:&v24 objects:v28 count:16];
    if (v7)
    {
      continue;
    }

    break;
  }

  v18 = 1;
  v4 = v21;
LABEL_20:

  return v18;
}

void sub_5BE6C(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  _HKInitializeLogging();
  v10 = HKLogHealthRecords;
  if (v9)
  {
    if (os_log_type_enabled(HKLogHealthRecords, OS_LOG_TYPE_ERROR))
    {
      sub_A481C(a1, v10);
    }

    v11 = *(*(a1 + 40) + 16);
  }

  else
  {
    if (os_log_type_enabled(HKLogHealthRecords, OS_LOG_TYPE_DEFAULT))
    {
      v12 = *(a1 + 32);
      v13 = v10;
      v14 = objc_opt_class();
      v15 = NSStringFromClass(v14);
      v16 = 138543362;
      v17 = v15;
      _os_log_impl(&dword_0, v13, OS_LOG_TYPE_DEFAULT, "%{public}@.triggerDownloadIssuerRegistryWithOptions received result, returning version and entries", &v16, 0xCu);
    }

    v11 = *(*(a1 + 40) + 16);
  }

  v11();
}

void sub_5C12C(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  _HKInitializeLogging();
  v10 = HKLogHealthRecords;
  if (v9)
  {
    if (os_log_type_enabled(HKLogHealthRecords, OS_LOG_TYPE_ERROR))
    {
      sub_A48C4(a1, v10);
    }

    v11 = *(*(a1 + 40) + 16);
  }

  else
  {
    if (os_log_type_enabled(HKLogHealthRecords, OS_LOG_TYPE_DEFAULT))
    {
      v12 = *(a1 + 32);
      v13 = v10;
      v14 = objc_opt_class();
      v15 = NSStringFromClass(v14);
      v16 = 138543362;
      v17 = v15;
      _os_log_impl(&dword_0, v13, OS_LOG_TYPE_DEFAULT, "%{public}@.triggerDownloadPublicKeysWithOptions received result, returning version and entries", &v16, 0xCu);
    }

    v11 = *(*(a1 + 40) + 16);
  }

  v11();
}

void sub_5C7B8(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint8_t *a5)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, a5, 0x16u);
}

id sub_5C7E0(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  return a2;
}

void sub_5E710(id *a1, void *a2)
{
  v3 = a2;
  v4 = [a1[4] ingestQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_5E818;
  block[3] = &unk_107C50;
  v12 = v3;
  *&v5 = a1[5];
  *(&v5 + 1) = a1[4];
  v10 = v5;
  v6 = a1[6];
  v7 = a1[7];
  *&v8 = v6;
  *(&v8 + 1) = v7;
  v13 = v10;
  v14 = v8;
  v9 = v3;
  dispatch_async(v4, block);
}

void sub_5E818(uint64_t a1)
{
  v2 = [*(a1 + 32) taskError];

  if (v2)
  {
    v3 = *(a1 + 40);
    v4 = [*(a1 + 32) taskError];
    [v3 addObject:v4];
  }

  _HKInitializeLogging();
  v5 = HKLogHealthRecords;
  if (os_log_type_enabled(HKLogHealthRecords, OS_LOG_TYPE_DEFAULT))
  {
    v6 = *(a1 + 48);
    v7 = v5;
    v8 = [v6 logPrefix];
    v9 = *(a1 + 56);
    v10 = 138543618;
    v11 = v8;
    v12 = 2114;
    v13 = v9;
    _os_log_impl(&dword_0, v7, OS_LOG_TYPE_DEFAULT, "%{public}@ finished background ingestion on profile %{public}@", &v10, 0x16u);
  }

  dispatch_group_leave(*(a1 + 64));
}

void sub_5E93C(uint64_t a1)
{
  _HKInitializeLogging();
  v2 = HKLogHealthRecords;
  if (os_log_type_enabled(HKLogHealthRecords, OS_LOG_TYPE_DEBUG))
  {
    sub_A4D7C(a1, v2);
  }

  if ([*(a1 + 40) count])
  {
    v3 = [*(a1 + 40) firstObject];
    if ([*(a1 + 40) count] >= 2)
    {
      v4 = *(a1 + 40);
      v7 = NSMultipleUnderlyingErrorsKey;
      v8 = v4;
      v5 = [NSDictionary dictionaryWithObjects:&v8 forKeys:&v7 count:1];
      v6 = [NSError hk_error:100 userInfo:v5];

      v3 = v6;
    }

    (*(*(a1 + 48) + 16))();
  }

  else
  {
    (*(*(a1 + 48) + 16))();
  }
}