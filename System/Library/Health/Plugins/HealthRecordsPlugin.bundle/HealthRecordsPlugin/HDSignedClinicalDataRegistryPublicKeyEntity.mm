@interface HDSignedClinicalDataRegistryPublicKeyEntity
+ (id)entityForPublicKeyWithKeyID:(id)a3 database:(id)a4 error:(id *)a5;
+ (id)insertOrReplacePublicKeyWithKeyID:(id)a3 added:(id)a4 removed:(id)a5 source:(id)a6 jwk:(id)a7 database:(id)a8 error:(id *)a9;
+ (id)publicKeyWithKeyID:(id)a3 database:(id)a4;
+ (id)publicKeysInDatabase:(id)a3 error:(id *)a4;
+ (id)removePublicKeyWithKeyID:(id)a3 removedDate:(id)a4 database:(id)a5 error:(id *)a6;
@end

@implementation HDSignedClinicalDataRegistryPublicKeyEntity

+ (id)publicKeysInDatabase:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = objc_alloc_init(NSMutableArray);
  v18[0] = @"kid";
  v18[1] = @"added";
  v8 = [NSArray arrayWithObjects:v18 count:2];
  v9 = [a1 _predicateForNonRemovedPublicKeyEntities];
  v10 = kHDSQLiteQueryNoLimit;
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_B240;
  v15[3] = &unk_105B08;
  v16 = v7;
  v17 = a1;
  v11 = v7;
  LODWORD(a1) = [a1 enumerateQueryResultsFromColumns:v8 properties:v8 predicate:v9 groupBy:0 orderingTerms:0 limit:v10 database:v6 error:a4 enumerationHandler:v15];

  if (a1)
  {
    v12 = v11;
  }

  else
  {
    v12 = 0;
  }

  v13 = v12;

  return v12;
}

+ (id)entityForPublicKeyWithKeyID:(id)a3 database:(id)a4 error:(id *)a5
{
  v8 = a4;
  v9 = [a1 _predicateForPublicKeyEntityWithKeyID:a3];
  v10 = [a1 anyInDatabase:v8 predicate:v9 error:a5];

  return v10;
}

+ (id)publicKeyWithKeyID:(id)a3 database:(id)a4
{
  v6 = a3;
  v7 = a4;
  v39 = 0;
  v8 = [a1 entityForPublicKeyWithKeyID:v6 database:v7 error:&v39];
  v9 = v39;
  v10 = v9;
  if (v8)
  {
    *v46 = 0;
    *&v46[8] = v46;
    *&v46[16] = 0x3032000000;
    v47 = sub_B7E0;
    v48 = sub_B7F0;
    v49 = 0;
    v33 = 0;
    v34 = &v33;
    v35 = 0x3032000000;
    v36 = sub_B7E0;
    v37 = sub_B7F0;
    v38 = 0;
    v27 = 0;
    v28 = &v27;
    v29 = 0x3032000000;
    v30 = sub_B7E0;
    v31 = sub_B7F0;
    v32 = 0;
    v25[6] = &v27;
    v26 = v9;
    v25[0] = _NSConcreteStackBlock;
    v25[1] = 3221225472;
    v25[2] = sub_B7F8;
    v25[3] = &unk_105B30;
    v25[4] = v46;
    v25[5] = &v33;
    v11 = [v8 getValuesForProperties:&off_110648 database:v7 error:&v26 handler:v25];
    v12 = v26;

    if (v11)
    {
      if (v34[5])
      {
        v13 = [HKSignedClinicalDataRegistryPublicKeyFetchResult alloc];
        v14 = 0;
        v15 = 3;
      }

      else
      {
        v13 = [HKSignedClinicalDataRegistryPublicKeyFetchResult alloc];
        v14 = v28[5];
        v15 = 1;
      }
    }

    else
    {
      _HKInitializeLogging();
      v18 = HKLogHealthRecords;
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        v20 = objc_opt_class();
        v21 = NSStringFromClass(v20);
        *buf = 138543874;
        v41 = v21;
        v42 = 2114;
        v43 = v6;
        v44 = 2114;
        v45 = v12;
        _os_log_error_impl(&dword_0, v18, OS_LOG_TYPE_ERROR, "%{public}@ failed to get property values for kid %{public}@, error: %{public}@", buf, 0x20u);
      }

      v13 = [HKSignedClinicalDataRegistryPublicKeyFetchResult alloc];
      v14 = 0;
      v15 = 4;
    }

    v17 = [v13 initWithKeyID:v6 outcome:v15 jwkData:v14];
    _Block_object_dispose(&v27, 8);

    _Block_object_dispose(&v33, 8);
    _Block_object_dispose(v46, 8);
  }

  else if (v9)
  {
    _HKInitializeLogging();
    v16 = HKLogHealthRecords;
    if (os_log_type_enabled(HKLogHealthRecords, OS_LOG_TYPE_ERROR))
    {
      v22 = v16;
      v23 = objc_opt_class();
      v24 = NSStringFromClass(v23);
      *v46 = 138543874;
      *&v46[4] = v24;
      *&v46[12] = 2114;
      *&v46[14] = v6;
      *&v46[22] = 2114;
      v47 = v10;
      _os_log_error_impl(&dword_0, v22, OS_LOG_TYPE_ERROR, "%{public}@ failed to get entity for kid %{public}@, error: %{public}@", v46, 0x20u);
    }

    v17 = [[HKSignedClinicalDataRegistryPublicKeyFetchResult alloc] initWithKeyID:v6 outcome:4 jwkData:0];
  }

  else
  {
    v17 = [[HKSignedClinicalDataRegistryPublicKeyFetchResult alloc] initWithKeyID:v6 outcome:2 jwkData:0];
  }

  return v17;
}

+ (id)insertOrReplacePublicKeyWithKeyID:(id)a3 added:(id)a4 removed:(id)a5 source:(id)a6 jwk:(id)a7 database:(id)a8 error:(id *)a9
{
  v22[0] = _NSConcreteStackBlock;
  v22[1] = 3221225472;
  v22[2] = sub_BA0C;
  v22[3] = &unk_105B58;
  v23 = a3;
  v24 = a4;
  v25 = a5;
  v26 = a6;
  v27 = a7;
  v15 = v27;
  v16 = v26;
  v17 = v25;
  v18 = v24;
  v19 = v23;
  v20 = [a1 insertOrReplaceEntity:1 database:a8 properties:&off_110660 error:a9 bindingHandler:v22];

  return v20;
}

+ (id)removePublicKeyWithKeyID:(id)a3 removedDate:(id)a4 database:(id)a5 error:(id *)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v28 = 0;
  v13 = [a1 entityForPublicKeyWithKeyID:v10 database:v12 error:&v28];
  v14 = v28;
  if (v13)
  {
    v29[0] = @"removed";
    v29[1] = @"updated_locally";
    v29[2] = @"jwk";
    v15 = [NSArray arrayWithObjects:v29 count:3];
    v26[0] = _NSConcreteStackBlock;
    v26[1] = 3221225472;
    v26[2] = sub_BD80;
    v26[3] = &unk_105B80;
    v27 = v11;
    v16 = [v13 updateProperties:v15 database:v12 error:a6 bindingHandler:v26];

    if (v16)
    {
      v17 = v13;
    }

    else
    {
      v17 = 0;
    }

    v18 = v17;

    goto LABEL_16;
  }

  _HKInitializeLogging();
  v19 = HKLogHealthRecords;
  v20 = os_log_type_enabled(HKLogHealthRecords, OS_LOG_TYPE_ERROR);
  if (v14)
  {
    if (v20)
    {
      v23 = v19;
      v24 = objc_opt_class();
      v25 = NSStringFromClass(v24);
      *buf = 138543874;
      v31 = v25;
      v32 = 2114;
      v33 = v10;
      v34 = 2114;
      v35 = v14;
      _os_log_error_impl(&dword_0, v23, OS_LOG_TYPE_ERROR, "%{public}@ failed to get entity for kid %{public}@, error: %{public}@", buf, 0x20u);
    }

    if (a6)
    {
      v21 = v14;
      v18 = 0;
      *a6 = v14;
      goto LABEL_16;
    }

    _HKLogDroppedError();
  }

  else
  {
    if (v20)
    {
      sub_9C78C(v19, a1, v10);
    }

    [NSError hk_assignError:a6 code:118 format:@"there is no public key with kid %@", v10];
  }

  v18 = 0;
LABEL_16:

  return v18;
}

@end