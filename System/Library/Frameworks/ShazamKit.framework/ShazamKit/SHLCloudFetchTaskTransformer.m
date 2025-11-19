@interface SHLCloudFetchTaskTransformer
- (SHLCloudFetchTaskTransformer)initWithConfiguration:(id)a3;
- (id)cloudBackedDatabaseChangesOperationFromFetchTask:(id)a3 container:(id)a4 completion:(id)a5;
- (id)cloudBackedZoneChangesOperationFromFetchTask:(id)a3 forChangedZones:(id)a4 container:(id)a5;
- (id)configurationsByRecordZoneIDForTask:(id)a3 usingCache:(id)a4;
- (id)recordIDsFromCloudBackedZones:(id)a3;
@end

@implementation SHLCloudFetchTaskTransformer

- (SHLCloudFetchTaskTransformer)initWithConfiguration:(id)a3
{
  v5 = a3;
  v13.receiver = self;
  v13.super_class = SHLCloudFetchTaskTransformer;
  v6 = [(SHLCloudFetchTaskTransformer *)&v13 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_configuration, a3);
    v8 = objc_alloc_init(CKFetchDatabaseChangesOperation);
    databaseChangesOperation = v7->_databaseChangesOperation;
    v7->_databaseChangesOperation = v8;

    [(CKFetchDatabaseChangesOperation *)v7->_databaseChangesOperation setFetchAllChanges:1];
    v10 = objc_alloc_init(CKFetchRecordZoneChangesOperation);
    recordZoneChangesOperation = v7->_recordZoneChangesOperation;
    v7->_recordZoneChangesOperation = v10;

    [(CKFetchRecordZoneChangesOperation *)v7->_recordZoneChangesOperation setFetchAllChanges:0];
  }

  return v7;
}

- (id)cloudBackedDatabaseChangesOperationFromFetchTask:(id)a3 container:(id)a4 completion:(id)a5
{
  v8 = a3;
  v50 = a5;
  v9 = a4;
  v10 = [v9 container];
  v11 = [v10 privateCloudDatabase];
  v12 = [(SHLCloudFetchTaskTransformer *)self databaseChangesOperation];
  [v12 setDatabase:v11];

  v13 = [SHLCloudLibraryCache alloc];
  v14 = [(SHLCloudFetchTaskTransformer *)self configuration];
  v15 = [v14 callingProcessIdentifier];
  v16 = [v9 container];

  v17 = [v16 containerIdentifier];
  v18 = [(SHLCloudFetchTaskTransformer *)self configuration];
  v19 = [v18 sessionIdentifier];
  v20 = [(SHLCloudLibraryCache *)v13 initWithCallingProcessIdentifier:v15 containerIdentifier:v17 transactionIdentifier:v19];

  if ([v8 fetchType] == 1)
  {
    v21 = [(SHLCloudLibraryCache *)v20 databaseToken];
    v22 = [v21 serverChangeToken];
    v23 = [(SHLCloudFetchTaskTransformer *)self databaseChangesOperation];
    [v23 setPreviousServerChangeToken:v22];

    v24 = sub_1000317DC();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG))
    {
      v25 = [(SHLCloudFetchTaskTransformer *)self databaseChangesOperation];
      v26 = [v25 previousServerChangeToken];
      *buf = 138412290;
      v66 = v26;
      _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEBUG, "Using <token: %@> for database fetch", buf, 0xCu);
    }
  }

  v27 = +[NSMutableArray array];
  v62[0] = _NSConcreteStackBlock;
  v62[1] = 3221225472;
  v62[2] = sub_10003E738;
  v62[3] = &unk_10007DEE8;
  v28 = v20;
  v63 = v28;
  v29 = v27;
  v64 = v29;
  v30 = [(SHLCloudFetchTaskTransformer *)self databaseChangesOperation];
  [v30 setRecordZoneWithIDChangedBlock:v62];

  v59[0] = _NSConcreteStackBlock;
  v59[1] = 3221225472;
  v59[2] = sub_10003E92C;
  v59[3] = &unk_10007DEE8;
  v31 = v28;
  v60 = v31;
  v32 = v8;
  v61 = v32;
  v33 = [(SHLCloudFetchTaskTransformer *)self databaseChangesOperation];
  [v33 setRecordZoneWithIDWasDeletedBlock:v59];

  v56[0] = _NSConcreteStackBlock;
  v56[1] = 3221225472;
  v56[2] = sub_10003EB30;
  v56[3] = &unk_10007DEE8;
  v34 = v31;
  v57 = v34;
  v35 = v32;
  v58 = v35;
  v36 = [(SHLCloudFetchTaskTransformer *)self databaseChangesOperation];
  [v36 setRecordZoneWithIDWasPurgedBlock:v56];

  v51[0] = _NSConcreteStackBlock;
  v51[1] = 3221225472;
  v51[2] = sub_10003ED34;
  v51[3] = &unk_10007DF10;
  v52 = v34;
  v53 = v29;
  v54 = v35;
  v55 = v50;
  v37 = v35;
  v38 = v50;
  v39 = v29;
  v40 = v34;
  v41 = [(SHLCloudFetchTaskTransformer *)self databaseChangesOperation];
  [v41 setFetchDatabaseChangesCompletionBlock:v51];

  v42 = objc_alloc_init(CKOperationGroup);
  [v42 setExpectedReceiveSize:1];
  [v42 setQuantity:1];
  v43 = [v37 syncStartCondition];
  v44 = [NSString stringWithFormat:@"%@_%@", v43, @"FetchDatabaseChanges"];
  [v42 setName:v44];

  v45 = [(SHLCloudFetchTaskTransformer *)self databaseChangesOperation];
  [v45 setGroup:v42];

  v46 = [SHLCloudBackedOperation alloc];
  v47 = [(SHLCloudFetchTaskTransformer *)self databaseChangesOperation];
  v48 = [(SHLCloudBackedOperation *)v46 initWithOperation:v47];

  return v48;
}

- (id)cloudBackedZoneChangesOperationFromFetchTask:(id)a3 forChangedZones:(id)a4 container:(id)a5
{
  v52 = a3;
  v8 = a4;
  v9 = a5;
  v10 = [v9 container];
  v11 = [v10 privateCloudDatabase];
  v12 = [(SHLCloudFetchTaskTransformer *)self recordZoneChangesOperation];
  [v12 setDatabase:v11];

  v51 = v8;
  v13 = [(SHLCloudFetchTaskTransformer *)self recordIDsFromCloudBackedZones:v8];
  v14 = [(SHLCloudFetchTaskTransformer *)self recordZoneChangesOperation];
  [v14 setRecordZoneIDs:v13];

  v15 = [SHLCloudLibraryCache alloc];
  v16 = [(SHLCloudFetchTaskTransformer *)self configuration];
  v17 = [v16 callingProcessIdentifier];
  v18 = [v9 container];
  v19 = [v18 containerIdentifier];
  v20 = [(SHLCloudFetchTaskTransformer *)self configuration];
  v21 = [v20 sessionIdentifier];
  v22 = [(SHLCloudLibraryCache *)v15 initWithCallingProcessIdentifier:v17 containerIdentifier:v19 transactionIdentifier:v21];

  v23 = [(SHLCloudFetchTaskTransformer *)self configurationsByRecordZoneIDForTask:v52 usingCache:v22];
  v24 = [(SHLCloudFetchTaskTransformer *)self recordZoneChangesOperation];
  [v24 setConfigurationsByRecordZoneID:v23];

  v25 = +[NSMutableArray array];
  v26 = +[NSMutableArray array];
  v69[0] = _NSConcreteStackBlock;
  v69[1] = 3221225472;
  v69[2] = sub_10003F5D4;
  v69[3] = &unk_10007DF38;
  v27 = v25;
  v70 = v27;
  v28 = v9;
  v71 = v28;
  v29 = v26;
  v72 = v29;
  v30 = [(SHLCloudFetchTaskTransformer *)self recordZoneChangesOperation];
  [v30 setRecordWasChangedBlock:v69];

  +[NSMutableArray array];
  v67[0] = _NSConcreteStackBlock;
  v67[1] = 3221225472;
  v67[2] = sub_10003F790;
  v31 = v67[3] = &unk_10007DF60;
  v68 = v31;
  v32 = [(SHLCloudFetchTaskTransformer *)self recordZoneChangesOperation];
  [v32 setRecordWithIDWasDeletedBlock:v67];

  v65[0] = _NSConcreteStackBlock;
  v65[1] = 3221225472;
  v65[2] = sub_10003F7E8;
  v65[3] = &unk_10007DF88;
  v33 = v22;
  v66 = v33;
  v34 = [(SHLCloudFetchTaskTransformer *)self recordZoneChangesOperation];
  [v34 setRecordZoneChangeTokensUpdatedBlock:v65];

  v63[0] = 0;
  v63[1] = v63;
  v63[2] = 0x2020000000;
  v64 = 0;
  v60[0] = _NSConcreteStackBlock;
  v60[1] = 3221225472;
  v60[2] = sub_10003F89C;
  v60[3] = &unk_10007DFB0;
  v62 = v63;
  v35 = v33;
  v61 = v35;
  v36 = [(SHLCloudFetchTaskTransformer *)self recordZoneChangesOperation];
  [v36 setRecordZoneFetchCompletionBlock:v60];

  v53[0] = _NSConcreteStackBlock;
  v53[1] = 3221225472;
  v53[2] = sub_10003FA98;
  v53[3] = &unk_10007DFD8;
  v37 = v35;
  v54 = v37;
  v38 = v52;
  v55 = v38;
  v39 = v27;
  v56 = v39;
  v40 = v29;
  v57 = v40;
  v41 = v31;
  v58 = v41;
  v59 = v63;
  v42 = [(SHLCloudFetchTaskTransformer *)self recordZoneChangesOperation];
  [v42 setFetchRecordZoneChangesCompletionBlock:v53];

  v43 = objc_alloc_init(CKOperationGroup);
  [v43 setExpectedReceiveSize:1];
  [v43 setQuantity:1];
  v44 = [v38 syncStartCondition];
  v45 = [NSString stringWithFormat:@"%@_%@", v44, @"FetchZoneChanges"];
  [v43 setName:v45];

  v46 = [(SHLCloudFetchTaskTransformer *)self recordZoneChangesOperation];
  [v46 setGroup:v43];

  v47 = [SHLCloudBackedOperation alloc];
  v48 = [(SHLCloudFetchTaskTransformer *)self recordZoneChangesOperation];
  v49 = [(SHLCloudBackedOperation *)v47 initWithOperation:v48];

  _Block_object_dispose(v63, 8);

  return v49;
}

- (id)recordIDsFromCloudBackedZones:(id)a3
{
  v3 = a3;
  v4 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [v3 count]);
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v5 = v3;
  v6 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v15;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v15 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = [*(*(&v14 + 1) + 8 * i) zone];
        v11 = [v10 zoneID];
        [v4 addObject:v11];
      }

      v7 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v7);
  }

  v12 = [v4 copy];

  return v12;
}

- (id)configurationsByRecordZoneIDForTask:(id)a3 usingCache:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(SHLCloudFetchTaskTransformer *)self recordZoneChangesOperation];
  v9 = [v8 recordZoneIDs];
  v10 = +[NSMutableDictionary dictionaryWithCapacity:](NSMutableDictionary, "dictionaryWithCapacity:", [v9 count]);

  v38 = 0u;
  v39 = 0u;
  v36 = 0u;
  v37 = 0u;
  v11 = [(SHLCloudFetchTaskTransformer *)self recordZoneChangesOperation];
  v12 = [v11 recordZoneIDs];

  obj = v12;
  v13 = [v12 countByEnumeratingWithState:&v36 objects:v42 count:16];
  if (v13)
  {
    v15 = v13;
    v16 = *v37;
    v17 = &cblas_sasum_NEWLAPACK_ptr;
    *&v14 = 138412290;
    v33 = v14;
    do
    {
      for (i = 0; i != v15; i = i + 1)
      {
        if (*v37 != v16)
        {
          objc_enumerationMutation(obj);
        }

        v19 = *(*(&v36 + 1) + 8 * i);
        v20 = [v19 zoneName];
        v21 = [v7 zoneTokenForZoneIdentifier:v20];

        v22 = objc_alloc_init(v17[173]);
        if ([v6 fetchType] == 1 && v21)
        {
          [v21 serverChangeToken];
          v35 = v21;
          v23 = v15;
          v24 = v16;
          v25 = v10;
          v26 = v7;
          v27 = v6;
          v29 = v28 = v17;
          [v22 setPreviousServerChangeToken:v29];

          v17 = v28;
          v6 = v27;
          v7 = v26;
          v10 = v25;
          v16 = v24;
          v15 = v23;
          v21 = v35;
        }

        [v22 setFetchNewestChangesFirst:1];
        [v10 setObject:v22 forKeyedSubscript:v19];
        v30 = sub_1000317DC();
        if (os_log_type_enabled(v30, OS_LOG_TYPE_DEBUG))
        {
          *buf = v33;
          v41 = v22;
          _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_DEBUG, "Using <zone changes configuration: %@> for fetch", buf, 0xCu);
        }
      }

      v15 = [obj countByEnumeratingWithState:&v36 objects:v42 count:16];
    }

    while (v15);
  }

  v31 = [v10 copy];

  return v31;
}

@end