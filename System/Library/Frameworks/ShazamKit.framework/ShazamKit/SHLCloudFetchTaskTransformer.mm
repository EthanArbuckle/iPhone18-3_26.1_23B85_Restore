@interface SHLCloudFetchTaskTransformer
- (SHLCloudFetchTaskTransformer)initWithConfiguration:(id)configuration;
- (id)cloudBackedDatabaseChangesOperationFromFetchTask:(id)task container:(id)container completion:(id)completion;
- (id)cloudBackedZoneChangesOperationFromFetchTask:(id)task forChangedZones:(id)zones container:(id)container;
- (id)configurationsByRecordZoneIDForTask:(id)task usingCache:(id)cache;
- (id)recordIDsFromCloudBackedZones:(id)zones;
@end

@implementation SHLCloudFetchTaskTransformer

- (SHLCloudFetchTaskTransformer)initWithConfiguration:(id)configuration
{
  configurationCopy = configuration;
  v13.receiver = self;
  v13.super_class = SHLCloudFetchTaskTransformer;
  v6 = [(SHLCloudFetchTaskTransformer *)&v13 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_configuration, configuration);
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

- (id)cloudBackedDatabaseChangesOperationFromFetchTask:(id)task container:(id)container completion:(id)completion
{
  taskCopy = task;
  completionCopy = completion;
  containerCopy = container;
  container = [containerCopy container];
  privateCloudDatabase = [container privateCloudDatabase];
  databaseChangesOperation = [(SHLCloudFetchTaskTransformer *)self databaseChangesOperation];
  [databaseChangesOperation setDatabase:privateCloudDatabase];

  v13 = [SHLCloudLibraryCache alloc];
  configuration = [(SHLCloudFetchTaskTransformer *)self configuration];
  callingProcessIdentifier = [configuration callingProcessIdentifier];
  container2 = [containerCopy container];

  containerIdentifier = [container2 containerIdentifier];
  configuration2 = [(SHLCloudFetchTaskTransformer *)self configuration];
  sessionIdentifier = [configuration2 sessionIdentifier];
  v20 = [(SHLCloudLibraryCache *)v13 initWithCallingProcessIdentifier:callingProcessIdentifier containerIdentifier:containerIdentifier transactionIdentifier:sessionIdentifier];

  if ([taskCopy fetchType] == 1)
  {
    databaseToken = [(SHLCloudLibraryCache *)v20 databaseToken];
    serverChangeToken = [databaseToken serverChangeToken];
    databaseChangesOperation2 = [(SHLCloudFetchTaskTransformer *)self databaseChangesOperation];
    [databaseChangesOperation2 setPreviousServerChangeToken:serverChangeToken];

    v24 = sub_1000317DC();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG))
    {
      databaseChangesOperation3 = [(SHLCloudFetchTaskTransformer *)self databaseChangesOperation];
      previousServerChangeToken = [databaseChangesOperation3 previousServerChangeToken];
      *buf = 138412290;
      v66 = previousServerChangeToken;
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
  databaseChangesOperation4 = [(SHLCloudFetchTaskTransformer *)self databaseChangesOperation];
  [databaseChangesOperation4 setRecordZoneWithIDChangedBlock:v62];

  v59[0] = _NSConcreteStackBlock;
  v59[1] = 3221225472;
  v59[2] = sub_10003E92C;
  v59[3] = &unk_10007DEE8;
  v31 = v28;
  v60 = v31;
  v32 = taskCopy;
  v61 = v32;
  databaseChangesOperation5 = [(SHLCloudFetchTaskTransformer *)self databaseChangesOperation];
  [databaseChangesOperation5 setRecordZoneWithIDWasDeletedBlock:v59];

  v56[0] = _NSConcreteStackBlock;
  v56[1] = 3221225472;
  v56[2] = sub_10003EB30;
  v56[3] = &unk_10007DEE8;
  v34 = v31;
  v57 = v34;
  v35 = v32;
  v58 = v35;
  databaseChangesOperation6 = [(SHLCloudFetchTaskTransformer *)self databaseChangesOperation];
  [databaseChangesOperation6 setRecordZoneWithIDWasPurgedBlock:v56];

  v51[0] = _NSConcreteStackBlock;
  v51[1] = 3221225472;
  v51[2] = sub_10003ED34;
  v51[3] = &unk_10007DF10;
  v52 = v34;
  v53 = v29;
  v54 = v35;
  v55 = completionCopy;
  v37 = v35;
  v38 = completionCopy;
  v39 = v29;
  v40 = v34;
  databaseChangesOperation7 = [(SHLCloudFetchTaskTransformer *)self databaseChangesOperation];
  [databaseChangesOperation7 setFetchDatabaseChangesCompletionBlock:v51];

  v42 = objc_alloc_init(CKOperationGroup);
  [v42 setExpectedReceiveSize:1];
  [v42 setQuantity:1];
  syncStartCondition = [v37 syncStartCondition];
  v44 = [NSString stringWithFormat:@"%@_%@", syncStartCondition, @"FetchDatabaseChanges"];
  [v42 setName:v44];

  databaseChangesOperation8 = [(SHLCloudFetchTaskTransformer *)self databaseChangesOperation];
  [databaseChangesOperation8 setGroup:v42];

  v46 = [SHLCloudBackedOperation alloc];
  databaseChangesOperation9 = [(SHLCloudFetchTaskTransformer *)self databaseChangesOperation];
  v48 = [(SHLCloudBackedOperation *)v46 initWithOperation:databaseChangesOperation9];

  return v48;
}

- (id)cloudBackedZoneChangesOperationFromFetchTask:(id)task forChangedZones:(id)zones container:(id)container
{
  taskCopy = task;
  zonesCopy = zones;
  containerCopy = container;
  container = [containerCopy container];
  privateCloudDatabase = [container privateCloudDatabase];
  recordZoneChangesOperation = [(SHLCloudFetchTaskTransformer *)self recordZoneChangesOperation];
  [recordZoneChangesOperation setDatabase:privateCloudDatabase];

  v51 = zonesCopy;
  v13 = [(SHLCloudFetchTaskTransformer *)self recordIDsFromCloudBackedZones:zonesCopy];
  recordZoneChangesOperation2 = [(SHLCloudFetchTaskTransformer *)self recordZoneChangesOperation];
  [recordZoneChangesOperation2 setRecordZoneIDs:v13];

  v15 = [SHLCloudLibraryCache alloc];
  configuration = [(SHLCloudFetchTaskTransformer *)self configuration];
  callingProcessIdentifier = [configuration callingProcessIdentifier];
  container2 = [containerCopy container];
  containerIdentifier = [container2 containerIdentifier];
  configuration2 = [(SHLCloudFetchTaskTransformer *)self configuration];
  sessionIdentifier = [configuration2 sessionIdentifier];
  v22 = [(SHLCloudLibraryCache *)v15 initWithCallingProcessIdentifier:callingProcessIdentifier containerIdentifier:containerIdentifier transactionIdentifier:sessionIdentifier];

  v23 = [(SHLCloudFetchTaskTransformer *)self configurationsByRecordZoneIDForTask:taskCopy usingCache:v22];
  recordZoneChangesOperation3 = [(SHLCloudFetchTaskTransformer *)self recordZoneChangesOperation];
  [recordZoneChangesOperation3 setConfigurationsByRecordZoneID:v23];

  v25 = +[NSMutableArray array];
  v26 = +[NSMutableArray array];
  v69[0] = _NSConcreteStackBlock;
  v69[1] = 3221225472;
  v69[2] = sub_10003F5D4;
  v69[3] = &unk_10007DF38;
  v27 = v25;
  v70 = v27;
  v28 = containerCopy;
  v71 = v28;
  v29 = v26;
  v72 = v29;
  recordZoneChangesOperation4 = [(SHLCloudFetchTaskTransformer *)self recordZoneChangesOperation];
  [recordZoneChangesOperation4 setRecordWasChangedBlock:v69];

  +[NSMutableArray array];
  v67[0] = _NSConcreteStackBlock;
  v67[1] = 3221225472;
  v67[2] = sub_10003F790;
  v31 = v67[3] = &unk_10007DF60;
  v68 = v31;
  recordZoneChangesOperation5 = [(SHLCloudFetchTaskTransformer *)self recordZoneChangesOperation];
  [recordZoneChangesOperation5 setRecordWithIDWasDeletedBlock:v67];

  v65[0] = _NSConcreteStackBlock;
  v65[1] = 3221225472;
  v65[2] = sub_10003F7E8;
  v65[3] = &unk_10007DF88;
  v33 = v22;
  v66 = v33;
  recordZoneChangesOperation6 = [(SHLCloudFetchTaskTransformer *)self recordZoneChangesOperation];
  [recordZoneChangesOperation6 setRecordZoneChangeTokensUpdatedBlock:v65];

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
  recordZoneChangesOperation7 = [(SHLCloudFetchTaskTransformer *)self recordZoneChangesOperation];
  [recordZoneChangesOperation7 setRecordZoneFetchCompletionBlock:v60];

  v53[0] = _NSConcreteStackBlock;
  v53[1] = 3221225472;
  v53[2] = sub_10003FA98;
  v53[3] = &unk_10007DFD8;
  v37 = v35;
  v54 = v37;
  v38 = taskCopy;
  v55 = v38;
  v39 = v27;
  v56 = v39;
  v40 = v29;
  v57 = v40;
  v41 = v31;
  v58 = v41;
  v59 = v63;
  recordZoneChangesOperation8 = [(SHLCloudFetchTaskTransformer *)self recordZoneChangesOperation];
  [recordZoneChangesOperation8 setFetchRecordZoneChangesCompletionBlock:v53];

  v43 = objc_alloc_init(CKOperationGroup);
  [v43 setExpectedReceiveSize:1];
  [v43 setQuantity:1];
  syncStartCondition = [v38 syncStartCondition];
  v45 = [NSString stringWithFormat:@"%@_%@", syncStartCondition, @"FetchZoneChanges"];
  [v43 setName:v45];

  recordZoneChangesOperation9 = [(SHLCloudFetchTaskTransformer *)self recordZoneChangesOperation];
  [recordZoneChangesOperation9 setGroup:v43];

  v47 = [SHLCloudBackedOperation alloc];
  recordZoneChangesOperation10 = [(SHLCloudFetchTaskTransformer *)self recordZoneChangesOperation];
  v49 = [(SHLCloudBackedOperation *)v47 initWithOperation:recordZoneChangesOperation10];

  _Block_object_dispose(v63, 8);

  return v49;
}

- (id)recordIDsFromCloudBackedZones:(id)zones
{
  zonesCopy = zones;
  v4 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [zonesCopy count]);
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v5 = zonesCopy;
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
        zoneID = [v10 zoneID];
        [v4 addObject:zoneID];
      }

      v7 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v7);
  }

  v12 = [v4 copy];

  return v12;
}

- (id)configurationsByRecordZoneIDForTask:(id)task usingCache:(id)cache
{
  taskCopy = task;
  cacheCopy = cache;
  recordZoneChangesOperation = [(SHLCloudFetchTaskTransformer *)self recordZoneChangesOperation];
  recordZoneIDs = [recordZoneChangesOperation recordZoneIDs];
  v10 = +[NSMutableDictionary dictionaryWithCapacity:](NSMutableDictionary, "dictionaryWithCapacity:", [recordZoneIDs count]);

  v38 = 0u;
  v39 = 0u;
  v36 = 0u;
  v37 = 0u;
  recordZoneChangesOperation2 = [(SHLCloudFetchTaskTransformer *)self recordZoneChangesOperation];
  recordZoneIDs2 = [recordZoneChangesOperation2 recordZoneIDs];

  obj = recordZoneIDs2;
  v13 = [recordZoneIDs2 countByEnumeratingWithState:&v36 objects:v42 count:16];
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
        zoneName = [v19 zoneName];
        v21 = [cacheCopy zoneTokenForZoneIdentifier:zoneName];

        v22 = objc_alloc_init(v17[173]);
        if ([taskCopy fetchType] == 1 && v21)
        {
          [v21 serverChangeToken];
          v35 = v21;
          v23 = v15;
          v24 = v16;
          v25 = v10;
          v26 = cacheCopy;
          v27 = taskCopy;
          v29 = v28 = v17;
          [v22 setPreviousServerChangeToken:v29];

          v17 = v28;
          taskCopy = v27;
          cacheCopy = v26;
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