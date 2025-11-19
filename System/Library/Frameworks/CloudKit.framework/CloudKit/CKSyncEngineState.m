@interface CKSyncEngineState
+ (id)emptyState;
- (BOOL)containsInFlightRecordZoneChange:(id)a3;
- (BOOL)containsPendingRecordZoneChange:(id)a3;
- (BOOL)hasInFlightUntrackedChanges;
- (BOOL)hasPendingUntrackedChanges;
- (BOOL)needsToDeleteZoneID:(id)a3;
- (BOOL)needsToFetchChangesForZoneID:(id)a3;
- (BOOL)needsToFetchDatabaseChanges;
- (BOOL)needsToSaveDatabaseSubscription;
- (BOOL)needsToSaveZoneID:(id)a3;
- (BOOL)scheduledSyncInProgress;
- (CKRecordID)lastKnownUserRecordID;
- (CKServerChangeToken)serverChangeTokenForDatabase;
- (CKSyncEngineAccount)lastAccount;
- (CKSyncEngineState)init;
- (CKSyncEngineState)initWithCoder:(id)a3;
- (CKSyncEngineState)initWithData:(id)a3 error:(id *)a4;
- (CKSyncEngineState)initWithStateSerialization:(id)a3 error:(id *)a4;
- (NSArray)inFlightAssetSyncs_fetch_Assets;
- (NSArray)inFlightRecordChanges;
- (NSArray)pendingAssetSyncs;
- (NSArray)pendingAssetSyncs_fetch_Assets;
- (NSArray)pendingAutomaticSyncAssetSyncs;
- (NSArray)pendingAutomaticSyncAssetSyncs_fetch_Assets;
- (NSArray)pendingAutomaticSyncZoneIDs;
- (NSArray)pendingDatabaseChanges;
- (NSArray)pendingRecordZoneChanges;
- (NSArray)zoneIDsWithUnfetchedServerChanges;
- (NSArray)zoneState;
- (NSDate)lastFetchDatabaseChangesDate;
- (NSString)existingDatabaseSubscriptionID;
- (id)fetchChangesZoneConfigurationForZoneID:(id)a3;
- (id)initInternal;
- (id)serverChangeTokenForZoneID:(id)a3 exists:(BOOL *)a4;
- (id)serverChangeTokensByZoneID;
- (id)shortDescription;
- (unint64_t)changeCount;
- (unint64_t)weight;
- (void)addPendingAssetSyncs:(id)a3;
- (void)addPendingAssetSyncs_fetch:(id)a3;
- (void)addPendingDatabaseChanges:(NSArray *)changes;
- (void)addPendingRecordZoneChanges:(NSArray *)changes;
- (void)encodeWithCoder:(id)a3;
- (void)getDataRepresentation:(id)a3;
- (void)markAssetSync:(id)a3 inFlight:(BOOL)a4;
- (void)markDatabaseChanges:(id)a3 inFlight:(BOOL)a4;
- (void)markRecordZoneChanges:(id)a3 inFlight:(BOOL)a4;
- (void)moveInFlightAssetSyncsToPending;
- (void)moveInFlightDatabaseChangesToPending;
- (void)moveInFlightRecordZoneChangesToPending;
- (void)purgeLegacyLastKnownUserRecordIDIfNecessary;
- (void)purgePendingAutomaticSyncAssetSyncs;
- (void)purgePendingAutomaticSyncZoneIDs;
- (void)removeInFlightAssetSync:(id)a3;
- (void)removeInFlightDatabaseChanges:(id)a3;
- (void)removeInFlightRecordZoneChanges:(id)a3;
- (void)removePendingAssetSyncs:(id)a3;
- (void)removePendingAssetSyncs_fetch:(id)a3;
- (void)removePendingDatabaseChanges:(NSArray *)changes;
- (void)removePendingRecordZoneChanges:(NSArray *)changes;
- (void)removeRecordZoneWithZoneID:(id)a3;
- (void)reset;
- (void)setExistingDatabaseSubscriptionID:(id)a3;
- (void)setHasInFlightUntrackedChanges:(BOOL)a3;
- (void)setHasPendingUntrackedChanges:(BOOL)hasPendingUntrackedChanges;
- (void)setInitialValues;
- (void)setLastAccount:(id)a3;
- (void)setLastFetchDatabaseChangesDate:(id)a3;
- (void)setLastKnownUserRecordID:(id)a3;
- (void)setNeedsToFetchChanges:(BOOL)a3 forRecordZoneID:(id)a4;
- (void)setNeedsToFetchDatabaseChanges:(BOOL)a3 postStateUpdate:(BOOL)a4;
- (void)setNeedsToSaveDatabaseSubscription:(BOOL)a3;
- (void)setPendingAssetSyncs:(id)a3;
- (void)setPendingDatabaseChanges:(id)a3;
- (void)setPendingRecordZoneChanges:(id)a3;
- (void)setScheduledSyncInProgress:(BOOL)a3;
- (void)setServerChangeToken:(id)a3 forZoneID:(id)a4;
- (void)setServerChangeTokenForDatabase:(id)a3;
- (void)trackPendingAssetSyncDuringAutomaticSync:(id)a3;
- (void)trackPendingZoneIDDuringAutomaticSync:(id)a3;
- (void)unTrackPendingAssetSyncDuringAutomaticSync:(id)a3;
- (void)unTrackPendingZoneIDDuringAutomaticSync:(id)a3;
@end

@implementation CKSyncEngineState

- (BOOL)needsToFetchDatabaseChanges
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x2020000000;
  v11 = 0;
  if (self)
  {
    queue = self->_queue;
  }

  else
  {
    queue = 0;
  }

  v4 = queue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = sub_18840305C;
  v7[3] = &unk_1E70BE500;
  v7[4] = self;
  v7[5] = &v8;
  ck_call_or_dispatch_sync_if_not_key(v4, &self->_queue, v7);

  v5 = *(v9 + 24);
  _Block_object_dispose(&v8, 8);
  return v5;
}

- (CKRecordID)lastKnownUserRecordID
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x3032000000;
  v11 = sub_1883EE1BC;
  v12 = sub_1883EF784;
  v13 = 0;
  if (self)
  {
    queue = self->_queue;
  }

  else
  {
    queue = 0;
  }

  v4 = queue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = sub_188403A3C;
  v7[3] = &unk_1E70BE500;
  v7[4] = self;
  v7[5] = &v8;
  ck_call_or_dispatch_sync_if_not_key(v4, &self->_queue, v7);

  v5 = v9[5];
  _Block_object_dispose(&v8, 8);

  return v5;
}

- (unint64_t)changeCount
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x2020000000;
  if (self)
  {
    queue = self->_queue;
  }

  else
  {
    queue = 0;
  }

  v11 = 0;
  v4 = queue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = sub_188412360;
  v7[3] = &unk_1E70BE500;
  v7[4] = self;
  v7[5] = &v8;
  ck_call_or_dispatch_sync_if_not_key(v4, &self->_queue, v7);

  v5 = v9[3];
  _Block_object_dispose(&v8, 8);
  return v5;
}

- (CKServerChangeToken)serverChangeTokenForDatabase
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x3032000000;
  v11 = sub_1883EE1BC;
  v12 = sub_1883EF784;
  v13 = 0;
  if (self)
  {
    queue = self->_queue;
  }

  else
  {
    queue = 0;
  }

  v4 = queue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = sub_1884178E8;
  v7[3] = &unk_1E70BE500;
  v7[4] = self;
  v7[5] = &v8;
  ck_call_or_dispatch_sync_if_not_key(v4, &self->_queue, v7);

  v5 = v9[5];
  _Block_object_dispose(&v8, 8);

  return v5;
}

- (NSDate)lastFetchDatabaseChangesDate
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x3032000000;
  v11 = sub_1883EE1BC;
  v12 = sub_1883EF784;
  v13 = 0;
  if (self)
  {
    queue = self->_queue;
  }

  else
  {
    queue = 0;
  }

  v4 = queue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = sub_1884177D8;
  v7[3] = &unk_1E70BE500;
  v7[4] = self;
  v7[5] = &v8;
  ck_call_or_dispatch_sync_if_not_key(v4, &self->_queue, v7);

  v5 = v9[5];
  _Block_object_dispose(&v8, 8);

  return v5;
}

- (BOOL)needsToSaveDatabaseSubscription
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x2020000000;
  v11 = 0;
  if (self)
  {
    queue = self->_queue;
  }

  else
  {
    queue = 0;
  }

  v4 = queue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = sub_1884178D4;
  v7[3] = &unk_1E70BE500;
  v7[4] = self;
  v7[5] = &v8;
  ck_call_or_dispatch_sync_if_not_key(v4, &self->_queue, v7);

  v5 = *(v9 + 24);
  _Block_object_dispose(&v8, 8);
  return v5;
}

- (NSArray)pendingDatabaseChanges
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x3032000000;
  v11 = sub_1883EE1BC;
  v12 = sub_1883EF784;
  v13 = 0;
  if (self)
  {
    queue = self->_queue;
  }

  else
  {
    queue = 0;
  }

  v4 = queue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = sub_1884194CC;
  v7[3] = &unk_1E70BE500;
  v7[4] = self;
  v7[5] = &v8;
  ck_call_or_dispatch_sync_if_not_key(v4, &self->_queue, v7);

  v5 = v9[5];
  _Block_object_dispose(&v8, 8);

  return v5;
}

- (NSArray)pendingRecordZoneChanges
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x3032000000;
  v11 = sub_1883EE1BC;
  v12 = sub_1883EF784;
  v13 = 0;
  if (self)
  {
    queue = self->_queue;
  }

  else
  {
    queue = 0;
  }

  v4 = queue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = sub_188419670;
  v7[3] = &unk_1E70BE500;
  v7[4] = self;
  v7[5] = &v8;
  ck_call_or_dispatch_sync_if_not_key(v4, &self->_queue, v7);

  v5 = v9[5];
  _Block_object_dispose(&v8, 8);

  return v5;
}

- (BOOL)hasPendingUntrackedChanges
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x2020000000;
  v11 = 0;
  if (self)
  {
    queue = self->_queue;
  }

  else
  {
    queue = 0;
  }

  v4 = queue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = sub_1884197D0;
  v7[3] = &unk_1E70BE500;
  v7[4] = self;
  v7[5] = &v8;
  ck_call_or_dispatch_sync_if_not_key(v4, &self->_queue, v7);

  v5 = *(v9 + 24);
  _Block_object_dispose(&v8, 8);
  return v5;
}

- (id)serverChangeTokensByZoneID
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x3032000000;
  v11 = sub_1883EE1BC;
  v12 = sub_1883EF784;
  v13 = 0;
  if (self)
  {
    queue = self->_queue;
  }

  else
  {
    queue = 0;
  }

  v4 = queue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = sub_18841A970;
  v7[3] = &unk_1E70BE500;
  v7[4] = self;
  v7[5] = &v8;
  ck_call_or_dispatch_sync_if_not_key(v4, &self->_queue, v7);

  v5 = v9[5];
  _Block_object_dispose(&v8, 8);

  return v5;
}

- (NSArray)zoneState
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x3032000000;
  v11 = sub_1883EE1BC;
  v12 = sub_1883EF784;
  v13 = 0;
  if (self)
  {
    queue = self->_queue;
  }

  else
  {
    queue = 0;
  }

  v4 = queue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = sub_18841B30C;
  v7[3] = &unk_1E70BE500;
  v7[4] = self;
  v7[5] = &v8;
  ck_call_or_dispatch_sync_if_not_key(v4, &self->_queue, v7);

  v5 = v9[5];
  _Block_object_dispose(&v8, 8);

  return v5;
}

- (id)shortDescription
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_msgSend_loggingID(self, a2, v2);
  v6 = objc_msgSend_stringWithFormat_(v3, v5, @"<CKSyncEngine.State %@>", v4);

  return v6;
}

- (void)moveInFlightDatabaseChangesToPending
{
  v2 = self;
  if (self)
  {
    self = self->_queue;
  }

  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = sub_18841BB9C;
  v4[3] = &unk_1E70BC388;
  v4[4] = v2;
  ck_call_or_dispatch_sync_if_not_key(self, &v2->_queue, v4);
  objc_msgSend_notifyChangeHandlerWithCoalescing_scheduleSync_(v2, v3, 1, 0);
}

- (void)moveInFlightRecordZoneChangesToPending
{
  v2 = self;
  if (self)
  {
    self = self->_queue;
  }

  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = sub_18841D26C;
  v4[3] = &unk_1E70BC388;
  v4[4] = v2;
  ck_call_or_dispatch_sync_if_not_key(self, &v2->_queue, v4);
  objc_msgSend_notifyChangeHandlerWithCoalescing_scheduleSync_(v2, v3, 1, 0);
}

- (BOOL)hasInFlightUntrackedChanges
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x2020000000;
  v11 = 0;
  if (self)
  {
    queue = self->_queue;
  }

  else
  {
    queue = 0;
  }

  v4 = queue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = sub_18841F184;
  v7[3] = &unk_1E70BE500;
  v7[4] = self;
  v7[5] = &v8;
  ck_call_or_dispatch_sync_if_not_key(v4, &self->_queue, v7);

  v5 = *(v9 + 24);
  _Block_object_dispose(&v8, 8);
  return v5;
}

- (void)moveInFlightAssetSyncsToPending
{
  v2 = self;
  if (self)
  {
    self = self->_queue;
  }

  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = sub_18841D550;
  v4[3] = &unk_1E70BC388;
  v4[4] = v2;
  ck_call_or_dispatch_sync_if_not_key(self, &v2->_queue, v4);
  objc_msgSend_notifyChangeHandlerWithCoalescing_scheduleSync_(v2, v3, 1, 0);
}

+ (id)emptyState
{
  v2 = [CKSyncEngineState alloc];
  inited = objc_msgSend_initInternal(v2, v3, v4);

  return inited;
}

- (void)setInitialValues
{
  if (self)
  {
    queue = self->_queue;
  }

  else
  {
    queue = 0;
  }

  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_18841EC60;
  block[3] = &unk_1E70BC388;
  block[4] = self;
  dispatch_sync(queue, block);
}

- (id)initInternal
{
  v7.receiver = self;
  v7.super_class = CKSyncEngineState;
  v2 = [(CKSyncEngineState *)&v7 init];
  v3 = v2;
  if (v2)
  {
    sub_18841B828(v2);
    objc_msgSend_setInitialValues(v3, v4, v5);
  }

  return v3;
}

- (NSString)existingDatabaseSubscriptionID
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x3032000000;
  v11 = sub_1883EE1BC;
  v12 = sub_1883EF784;
  v13 = 0;
  if (self)
  {
    queue = self->_queue;
  }

  else
  {
    queue = 0;
  }

  v4 = queue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = sub_18841F818;
  v7[3] = &unk_1E70BE500;
  v7[4] = self;
  v7[5] = &v8;
  ck_call_or_dispatch_sync_if_not_key(v4, &self->_queue, v7);

  v5 = v9[5];
  _Block_object_dispose(&v8, 8);

  return v5;
}

- (NSArray)zoneIDsWithUnfetchedServerChanges
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x3032000000;
  v11 = sub_1883EE1BC;
  v12 = sub_1883EF784;
  v13 = 0;
  if (self)
  {
    queue = self->_queue;
  }

  else
  {
    queue = 0;
  }

  v4 = queue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = sub_18842699C;
  v7[3] = &unk_1E70BE500;
  v7[4] = self;
  v7[5] = &v8;
  ck_call_or_dispatch_sync_if_not_key(v4, &self->_queue, v7);

  v5 = v9[5];
  _Block_object_dispose(&v8, 8);

  return v5;
}

- (CKSyncEngineState)initWithStateSerialization:(id)a3 error:(id *)a4
{
  v21 = *MEMORY[0x1E69E9840];
  v7 = objc_msgSend_data(a3, a2, a3);
  if (v7)
  {
    v18 = 0;
    self = objc_msgSend_initWithData_error_(self, v6, v7, &v18);
    v8 = v18;
    if (v8)
    {
      if (ck_log_initialization_predicate != -1)
      {
        dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
      }

      v9 = ck_log_facility_engine;
      if (os_log_type_enabled(ck_log_facility_engine, OS_LOG_TYPE_FAULT))
      {
        *buf = 138412290;
        v20 = v8;
        _os_log_fault_impl(&dword_1883EA000, v9, OS_LOG_TYPE_FAULT, "BUG IN CLOUDKIT: Error initializing sync engine state: %@", buf, 0xCu);
      }
    }
  }

  else
  {
    v10 = objc_opt_class();
    v11 = NSStringFromClass(v10);
    v12 = objc_opt_class();
    v13 = NSStringFromClass(v12);
    v8 = objc_msgSend_errorWithDomain_code_format_(CKPrettyError, v14, @"CKErrorDomain", 12, @"Cannot initialize %@ from %@ with no data", v11, v13);
  }

  if (a4)
  {
    v15 = v8;
    *a4 = v8;
  }

  v16 = *MEMORY[0x1E69E9840];
  return self;
}

- (CKSyncEngineState)initWithData:(id)a3 error:(id *)a4
{
  v77 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v9 = v6;
  if (v6)
  {
    if (!objc_msgSend_length(v6, v7, v8))
    {
      if (ck_log_initialization_predicate != -1)
      {
        dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
      }

      v10 = ck_log_facility_engine;
      if (os_log_type_enabled(ck_log_facility_engine, OS_LOG_TYPE_FAULT))
      {
        v11 = v10;
        v12 = objc_opt_class();
        v13 = NSStringFromClass(v12);
        *buf = 138412290;
        v76 = v13;
        v14 = "BUG IN CLIENT OF CLOUDKIT: Initializing %@ with a zero-length state data.";
LABEL_36:
        _os_log_fault_impl(&dword_1883EA000, v11, OS_LOG_TYPE_FAULT, v14, buf, 0xCu);
      }
    }
  }

  else
  {
    if (ck_log_initialization_predicate != -1)
    {
      dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
    }

    v15 = ck_log_facility_engine;
    if (os_log_type_enabled(ck_log_facility_engine, OS_LOG_TYPE_FAULT))
    {
      v11 = v15;
      v71 = objc_opt_class();
      v13 = NSStringFromClass(v71);
      *buf = 138412290;
      v76 = v13;
      v14 = "BUG IN CLOUDKIT: Initializing %@ with a nil state data.";
      goto LABEL_36;
    }
  }

  v72 = os_transaction_create();
  v16 = objc_autoreleasePoolPush();
  v17 = v9;
  v19 = objc_msgSend_dataUsingEncoding_(@"CompressedStatePrefix-278ba12eed31", v18, 4);
  v22 = objc_msgSend_length(v17, v20, v21);
  if (v22 > objc_msgSend_length(v19, v23, v24) && (v27 = objc_msgSend_length(v19, v25, v26), objc_msgSend_subdataWithRange_(v17, v28, 0, v27), v29 = objc_claimAutoreleasedReturnValue(), isEqualToData = objc_msgSend_isEqualToData_(v29, v30, v19), v29, isEqualToData))
  {
    if (ck_log_initialization_predicate != -1)
    {
      dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
    }

    v32 = ck_log_facility_engine;
    if (os_log_type_enabled(ck_log_facility_engine, OS_LOG_TYPE_DEFAULT))
    {
      v35 = v32;
      v38 = objc_msgSend_shortDescription(self, v36, v37);
      *buf = 138543362;
      v76 = v38;
      _os_log_impl(&dword_1883EA000, v35, OS_LOG_TYPE_DEFAULT, "%{public}@ decompressing state data", buf, 0xCu);
    }

    v39 = objc_msgSend_length(v19, v33, v34);
    v42 = objc_msgSend_length(v17, v40, v41);
    v45 = objc_msgSend_length(v19, v43, v44);
    v47 = objc_msgSend_subdataWithRange_(v17, v46, v39, v42 - v45);
    v74 = 0;
    v49 = objc_msgSend_decompressedDataUsingAlgorithm_error_(v47, v48, 0, &v74);
    v50 = v74;

    if (!v49 || v50)
    {
      if (ck_log_initialization_predicate != -1)
      {
        dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
      }

      v51 = ck_log_facility_engine;
      if (os_log_type_enabled(ck_log_facility_engine, OS_LOG_TYPE_FAULT))
      {
        *buf = 138412290;
        v76 = v50;
        _os_log_fault_impl(&dword_1883EA000, v51, OS_LOG_TYPE_FAULT, "BUG IN CLOUDKIT: Failed to decompress sync engine state serialization: %@", buf, 0xCu);
      }
    }

    v52 = a4;
  }

  else
  {
    v52 = a4;
    v50 = 0;
    v49 = v17;
  }

  v53 = MEMORY[0x1E696ACD0];
  v54 = objc_opt_class();
  objc_msgSend_setClass_forClassName_(v53, v55, v54, @"CKSyncEngineMetadata");
  v56 = MEMORY[0x1E696ACD0];
  v57 = objc_opt_class();
  objc_msgSend_setClass_forClassName_(v56, v58, v57, @"CKSyncEngineRecordModification");
  v59 = MEMORY[0x1E696ACD0];
  v60 = objc_opt_class();
  objc_msgSend_setClass_forClassName_(v59, v61, v60, @"CKSyncEnginePendingRecordChange");
  v62 = MEMORY[0x1E696ACD0];
  v63 = objc_opt_class();
  v73 = v50;
  v65 = objc_msgSend_unarchivedObjectOfClass_fromData_error_(v62, v64, v63, v49, &v73);
  v66 = v73;

  if (v66 || !v65)
  {
    if (ck_log_initialization_predicate != -1)
    {
      dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
    }

    v67 = ck_log_facility_engine;
    if (os_log_type_enabled(ck_log_facility_engine, OS_LOG_TYPE_FAULT))
    {
      *buf = 138412290;
      v76 = v66;
      _os_log_fault_impl(&dword_1883EA000, v67, OS_LOG_TYPE_FAULT, "Failed to unarchive sync engine state serialization: %@", buf, 0xCu);
    }
  }

  objc_autoreleasePoolPop(v16);
  if (v52)
  {
    v68 = v66;
    *v52 = v66;
  }

  if (v66)
  {

    v65 = 0;
  }

  v69 = *MEMORY[0x1E69E9840];
  return v65;
}

- (CKSyncEngineState)init
{
  v2 = [CKException alloc];
  v4 = objc_msgSend_initWithName_format_(v2, v3, *MEMORY[0x1E695D940], @"%s is unavailable", "[CKSyncEngineState init]");
  objc_exception_throw(v4);
}

- (unint64_t)weight
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  if (self)
  {
    queue = self->_queue;
  }

  else
  {
    queue = 0;
  }

  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = sub_18865B0F8;
  v5[3] = &unk_1E70BE500;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(queue, v5);
  v3 = v7[3];
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (void)reset
{
  v17 = *MEMORY[0x1E69E9840];
  if (ck_log_initialization_predicate != -1)
  {
    dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
  }

  v3 = ck_log_facility_engine;
  if (os_log_type_enabled(ck_log_facility_engine, OS_LOG_TYPE_DEFAULT))
  {
    v6 = v3;
    v9 = objc_msgSend_shortDescription(self, v7, v8);
    v13 = 138543618;
    v14 = v9;
    v15 = 2048;
    v16 = objc_msgSend_weight(self, v10, v11);
    _os_log_impl(&dword_1883EA000, v6, OS_LOG_TYPE_DEFAULT, "%{public}@ resetting state with weight=%tu", &v13, 0x16u);
  }

  objc_msgSend_setInitialValues(self, v4, v5);
  v12 = *MEMORY[0x1E69E9840];
}

- (void)encodeWithCoder:(id)a3
{
  v96 = a3;
  v6 = objc_msgSend_identifier(self, v4, v5);
  objc_msgSend_encodeObject_forKey_(v96, v7, v6, @"identifier");

  DatabaseChanges = objc_msgSend_needsToFetchDatabaseChanges(self, v8, v9);
  objc_msgSend_encodeBool_forKey_(v96, v11, DatabaseChanges, @"needsToFetchDatabaseChanges");
  v14 = objc_msgSend_needsToSaveDatabaseSubscription(self, v12, v13);
  objc_msgSend_encodeBool_forKey_(v96, v15, v14, @"needsToSaveDatabaseSubscription");
  hasPendingUntrackedChanges = objc_msgSend_hasPendingUntrackedChanges(self, v16, v17);
  objc_msgSend_encodeBool_forKey_(v96, v19, hasPendingUntrackedChanges, @"hasPendingUntrackedChanges");
  v22 = objc_msgSend_hasInFlightUntrackedChanges(self, v20, v21);
  objc_msgSend_encodeBool_forKey_(v96, v23, v22, @"hasInFlightUntrackedChanges");
  v26 = objc_msgSend_serverChangeTokenForDatabase(self, v24, v25);
  objc_msgSend_encodeObject_forKey_(v96, v27, v26, @"serverChangeTokenForDatabase");

  if (self)
  {
    objc_msgSend_encodeObject_forKey_(v96, v28, self->_zoneIDsNeedingToFetchChangesSet, @"zoneIDsNeedingToFetchChanges");
    objc_msgSend_encodeObject_forKey_(v96, v29, self->_pendingDatabaseChangesSet, @"pendingZoneChanges");
    objc_msgSend_encodeObject_forKey_(v96, v30, self->_inFlightDatabaseChangesSet, @"inFlightZoneChanges");
    objc_msgSend_encodeObject_forKey_(v96, v31, self->_pendingRecordZoneChangesSet, @"pendingRecordModifications");
    objc_msgSend_encodeObject_forKey_(v96, v32, self->_inFlightRecordChangesSet, @"inFlightRecordModifications");
    objc_msgSend_encodeObject_forKey_(v96, v33, self->_pendingAssetSyncsSet, @"pendingAssetSyncs");
    objc_msgSend_encodeObject_forKey_(v96, v34, self->_inFlightAssetSyncSet, @"inFlightAssetSyncs");
  }

  else
  {
    objc_msgSend_encodeObject_forKey_(v96, v28, 0, @"zoneIDsNeedingToFetchChanges");
    objc_msgSend_encodeObject_forKey_(v96, v90, 0, @"pendingZoneChanges");
    objc_msgSend_encodeObject_forKey_(v96, v91, 0, @"inFlightZoneChanges");
    objc_msgSend_encodeObject_forKey_(v96, v92, 0, @"pendingRecordModifications");
    objc_msgSend_encodeObject_forKey_(v96, v93, 0, @"inFlightRecordModifications");
    objc_msgSend_encodeObject_forKey_(v96, v94, 0, @"pendingAssetSyncs");
    objc_msgSend_encodeObject_forKey_(v96, v95, 0, @"inFlightAssetSyncs");
  }

  v37 = objc_msgSend_lastAccount(self, v35, v36);
  objc_msgSend_encodeObject_forKey_(v96, v38, v37, @"lastAccount");

  v41 = objc_msgSend_lastKnownUserRecordID(self, v39, v40);
  objc_msgSend_encodeObject_forKey_(v96, v42, v41, @"lastKnownUserRecordID");

  v45 = objc_msgSend_lastFetchDatabaseChangesDate(self, v43, v44);
  objc_msgSend_encodeObject_forKey_(v96, v46, v45, @"lastFetchDatabaseChangesDate");

  v49 = objc_msgSend_existingDatabaseSubscriptionID(self, v47, v48);
  objc_msgSend_encodeObject_forKey_(v96, v50, v49, @"existingDatabaseSubscriptionID");

  v53 = objc_msgSend_zoneState(self, v51, v52);
  objc_msgSend_encodeObject_forKey_(v96, v54, v53, @"zoneState");

  v57 = objc_msgSend_serverChangeTokensByZoneID(self, v55, v56);
  objc_msgSend_encodeObject_forKey_(v96, v58, v57, @"serverChangeTokensByZoneID");

  v61 = objc_msgSend_fakeRecordIDsToSaveForSerializationTests(self, v59, v60);
  v64 = objc_msgSend_mutableCopy(v61, v62, v63);

  if (v64)
  {
    objc_msgSend_encodeObject_forKey_(v96, v65, v64, @"recordIDsToSave");
  }

  v67 = objc_msgSend_fakeRecordIDsToDeleteForSerializationTests(self, v65, v66);
  v70 = objc_msgSend_mutableCopy(v67, v68, v69);

  if (v70)
  {
    objc_msgSend_encodeObject_forKey_(v96, v71, v70, @"recordIDsToDelete");
  }

  v73 = objc_msgSend_fakeZonesToSaveForSerializationTests(self, v71, v72);
  v76 = objc_msgSend_mutableCopy(v73, v74, v75);

  if (v76)
  {
    objc_msgSend_encodeObject_forKey_(v96, v77, v76, @"zonesToSave");
  }

  v79 = objc_msgSend_fakeZoneIDsToSaveForSerializationTests(self, v77, v78);
  v82 = objc_msgSend_mutableCopy(v79, v80, v81);

  if (v82)
  {
    objc_msgSend_encodeObject_forKey_(v96, v83, v82, @"zoneIDsToSave");
  }

  v85 = objc_msgSend_fakeZoneIDsToDeleteForSerializationTests(self, v83, v84);
  v88 = objc_msgSend_mutableCopy(v85, v86, v87);

  if (v88)
  {
    objc_msgSend_encodeObject_forKey_(v96, v89, v88, @"zoneIDsToDelete");
  }
}

- (CKSyncEngineState)initWithCoder:(id)a3
{
  v232 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v229.receiver = self;
  v229.super_class = CKSyncEngineState;
  v5 = [(CKSyncEngineState *)&v229 init];
  v6 = v5;
  if (!v5)
  {
    goto LABEL_55;
  }

  sub_18841B828(v5);
  if (objc_msgSend_containsValueForKey_(v4, v7, @"identifier"))
  {
    v9 = objc_opt_class();
    v11 = objc_msgSend_decodeObjectOfClass_forKey_(v4, v10, v9, @"identifier");
    identifier = v6->_identifier;
    v6->_identifier = v11;
  }

  v6->_needsToFetchDatabaseChanges = objc_msgSend_decodeBoolForKey_(v4, v8, @"needsToFetchDatabaseChanges");
  v6->_needsToSaveDatabaseSubscription = objc_msgSend_decodeBoolForKey_(v4, v13, @"needsToSaveDatabaseSubscription");
  v15 = objc_msgSend_decodeBoolForKey_(v4, v14, @"hasPendingUntrackedChanges");
  v6->_hasPendingUntrackedChanges = v15;
  if ((v15 & 1) == 0)
  {
    v6->_hasPendingUntrackedChanges = objc_msgSend_decodeBoolForKey_(v4, v16, @"hasAdopterTrackedPendingModifications");
  }

  v17 = objc_msgSend_decodeBoolForKey_(v4, v16, @"hasInFlightUntrackedChanges");
  v6->_hasInFlightUntrackedChanges = v17;
  if ((v17 & 1) == 0)
  {
    v6->_hasInFlightUntrackedChanges = objc_msgSend_decodeBoolForKey_(v4, v18, @"hasInFlightAdopterTrackedModifications");
  }

  v19 = objc_opt_class();
  v21 = objc_msgSend_decodeObjectOfClass_forKey_(v4, v20, v19, @"serverChangeTokenForDatabase");
  serverChangeTokenForDatabase = v6->_serverChangeTokenForDatabase;
  v6->_serverChangeTokenForDatabase = v21;

  v23 = MEMORY[0x1E695DFD8];
  v24 = objc_opt_class();
  v25 = objc_opt_class();
  v27 = objc_msgSend_setWithObjects_(v23, v26, v24, v25, 0);
  v29 = objc_msgSend_decodeObjectOfClasses_forKey_(v4, v28, v27, @"zoneState");

  v220 = v29;
  if (v29)
  {
    v31 = objc_msgSend_CKMapToDictionary_(v29, v30, &unk_1EFA2FD48);
    v34 = objc_msgSend_mutableCopy(v31, v32, v33);
LABEL_10:
    zoneStateByZoneID = v6->_zoneStateByZoneID;
    v6->_zoneStateByZoneID = v34;
    goto LABEL_13;
  }

  v36 = MEMORY[0x1E695DFD8];
  v37 = objc_opt_class();
  v38 = objc_opt_class();
  v39 = objc_opt_class();
  v41 = objc_msgSend_setWithObjects_(v36, v40, v37, v38, v39, 0);
  v31 = objc_msgSend_decodeObjectOfClasses_forKey_(v4, v42, v41, @"serverChangeTokensByZoneID");

  if (!v31)
  {
    v34 = objc_alloc_init(MEMORY[0x1E695DF90]);
    goto LABEL_10;
  }

  zoneStateByZoneID = objc_msgSend_CKMapValues_(v31, v43, &unk_1EFA2FD68);
  v46 = objc_msgSend_mutableCopy(zoneStateByZoneID, v44, v45);
  v47 = v6->_zoneStateByZoneID;
  v6->_zoneStateByZoneID = v46;

LABEL_13:
  v48 = MEMORY[0x1E695DFD8];
  v49 = objc_opt_class();
  v50 = objc_opt_class();
  v51 = objc_opt_class();
  v53 = objc_msgSend_setWithObjects_(v48, v52, v49, v50, v51, 0);
  v55 = objc_msgSend_decodeObjectOfClasses_forKey_(v4, v54, v53, @"zoneIDsNeedingToFetchChanges");

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v56 = objc_alloc(MEMORY[0x1E695DFA0]);
    v58 = objc_msgSend_initWithSet_(v56, v57, v55);
LABEL_17:
    zoneIDsNeedingToFetchChangesSet = v6->_zoneIDsNeedingToFetchChangesSet;
    v6->_zoneIDsNeedingToFetchChangesSet = v58;

    goto LABEL_18;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v58 = v55;
    goto LABEL_17;
  }

LABEL_18:
  if (!v6->_zoneIDsNeedingToFetchChangesSet)
  {
    v60 = objc_alloc_init(MEMORY[0x1E695DFA0]);
    v61 = v6->_zoneIDsNeedingToFetchChangesSet;
    v6->_zoneIDsNeedingToFetchChangesSet = v60;
  }

  v62 = MEMORY[0x1E695DFD8];
  v63 = objc_opt_class();
  v64 = objc_opt_class();
  v66 = objc_msgSend_setWithObjects_(v62, v65, v63, v64, 0);
  v68 = objc_msgSend_decodeObjectOfClasses_forKey_(v4, v67, v66, @"pendingRecordModifications");
  pendingRecordZoneChangesSet = v6->_pendingRecordZoneChangesSet;
  v6->_pendingRecordZoneChangesSet = v68;

  if (!v6->_pendingRecordZoneChangesSet)
  {
    v70 = objc_alloc_init(MEMORY[0x1E695DFA0]);
    v71 = v6->_pendingRecordZoneChangesSet;
    v6->_pendingRecordZoneChangesSet = v70;
  }

  v72 = MEMORY[0x1E695DFD8];
  v73 = objc_opt_class();
  v74 = objc_opt_class();
  v76 = objc_msgSend_setWithObjects_(v72, v75, v73, v74, 0);
  v78 = objc_msgSend_decodeObjectOfClasses_forKey_(v4, v77, v76, @"inFlightRecordModifications");
  inFlightRecordChangesSet = v6->_inFlightRecordChangesSet;
  v6->_inFlightRecordChangesSet = v78;

  if (!v6->_inFlightRecordChangesSet)
  {
    v80 = objc_alloc_init(MEMORY[0x1E695DFA0]);
    v81 = v6->_inFlightRecordChangesSet;
    v6->_inFlightRecordChangesSet = v80;
  }

  v82 = MEMORY[0x1E695DFD8];
  v83 = objc_opt_class();
  v84 = objc_opt_class();
  v86 = objc_msgSend_setWithObjects_(v82, v85, v83, v84, 0);
  v88 = objc_msgSend_decodeObjectOfClasses_forKey_(v4, v87, v86, @"pendingAssetSyncs");
  pendingAssetSyncsSet = v6->_pendingAssetSyncsSet;
  v6->_pendingAssetSyncsSet = v88;

  if (!v6->_pendingAssetSyncsSet)
  {
    v90 = objc_alloc_init(MEMORY[0x1E695DFA0]);
    v91 = v6->_pendingAssetSyncsSet;
    v6->_pendingAssetSyncsSet = v90;
  }

  v92 = MEMORY[0x1E695DFD8];
  v93 = objc_opt_class();
  v94 = objc_opt_class();
  v96 = objc_msgSend_setWithObjects_(v92, v95, v93, v94, 0);
  v98 = objc_msgSend_decodeObjectOfClasses_forKey_(v4, v97, v96, @"inFlightAssetSyncs");
  inFlightAssetSyncSet = v6->_inFlightAssetSyncSet;
  v6->_inFlightAssetSyncSet = v98;

  if (!v6->_inFlightAssetSyncSet)
  {
    v100 = objc_alloc_init(MEMORY[0x1E695DFA0]);
    v101 = v6->_inFlightAssetSyncSet;
    v6->_inFlightAssetSyncSet = v100;
  }

  v102 = MEMORY[0x1E695DFD8];
  v103 = objc_opt_class();
  v104 = objc_opt_class();
  v106 = objc_msgSend_setWithObjects_(v102, v105, v103, v104, 0);
  v108 = objc_msgSend_decodeObjectOfClasses_forKey_(v4, v107, v106, @"recordIDsToSave");

  v227 = 0u;
  v228 = 0u;
  v225 = 0u;
  v226 = 0u;
  v109 = v108;
  v111 = objc_msgSend_countByEnumeratingWithState_objects_count_(v109, v110, &v225, v231, 16);
  if (v111)
  {
    v112 = v111;
    v113 = *v226;
    do
    {
      for (i = 0; i != v112; ++i)
      {
        if (*v226 != v113)
        {
          objc_enumerationMutation(v109);
        }

        v115 = *(*(&v225 + 1) + 8 * i);
        v116 = [CKSyncEnginePendingRecordZoneChange alloc];
        v118 = objc_msgSend_initWithRecordID_type_(v116, v117, v115, 0);
        objc_msgSend_addObject_(v6->_pendingRecordZoneChangesSet, v119, v118);
      }

      v112 = objc_msgSend_countByEnumeratingWithState_objects_count_(v109, v120, &v225, v231, 16);
    }

    while (v112);
  }

  v121 = MEMORY[0x1E695DFD8];
  v122 = objc_opt_class();
  v123 = objc_opt_class();
  v125 = objc_msgSend_setWithObjects_(v121, v124, v122, v123, 0);
  v127 = objc_msgSend_decodeObjectOfClasses_forKey_(v4, v126, v125, @"recordIDsToDelete");

  v223 = 0u;
  v224 = 0u;
  v221 = 0u;
  v222 = 0u;
  v128 = v127;
  v130 = objc_msgSend_countByEnumeratingWithState_objects_count_(v128, v129, &v221, v230, 16);
  if (v130)
  {
    v131 = v130;
    v132 = *v222;
    do
    {
      for (j = 0; j != v131; ++j)
      {
        if (*v222 != v132)
        {
          objc_enumerationMutation(v128);
        }

        v134 = *(*(&v221 + 1) + 8 * j);
        v135 = [CKSyncEnginePendingRecordZoneChange alloc];
        v137 = objc_msgSend_initWithRecordID_type_(v135, v136, v134, 1);
        objc_msgSend_addObject_(v6->_pendingRecordZoneChangesSet, v138, v137);
      }

      v131 = objc_msgSend_countByEnumeratingWithState_objects_count_(v128, v139, &v221, v230, 16);
    }

    while (v131);
  }

  v219 = v55;

  v140 = MEMORY[0x1E695DFD8];
  v141 = objc_opt_class();
  v142 = objc_opt_class();
  v143 = objc_opt_class();
  v145 = objc_msgSend_setWithObjects_(v140, v144, v141, v142, v143, 0);
  v147 = objc_msgSend_decodeObjectOfClasses_forKey_(v4, v146, v145, @"pendingZoneChanges");
  pendingDatabaseChangesSet = v6->_pendingDatabaseChangesSet;
  v6->_pendingDatabaseChangesSet = v147;

  if (!v6->_pendingDatabaseChangesSet)
  {
    v149 = objc_alloc_init(MEMORY[0x1E695DFA0]);
    v150 = v6->_pendingDatabaseChangesSet;
    v6->_pendingDatabaseChangesSet = v149;
  }

  v151 = MEMORY[0x1E695DFD8];
  v152 = objc_opt_class();
  v153 = objc_opt_class();
  v154 = objc_opt_class();
  v156 = objc_msgSend_setWithObjects_(v151, v155, v152, v153, v154, 0);
  v158 = objc_msgSend_decodeObjectOfClasses_forKey_(v4, v157, v156, @"inFlightZoneChanges");
  inFlightDatabaseChangesSet = v6->_inFlightDatabaseChangesSet;
  v6->_inFlightDatabaseChangesSet = v158;

  if (!v6->_inFlightDatabaseChangesSet)
  {
    v160 = objc_alloc_init(MEMORY[0x1E695DFA0]);
    v161 = v6->_inFlightDatabaseChangesSet;
    v6->_inFlightDatabaseChangesSet = v160;
  }

  v162 = MEMORY[0x1E695DFD8];
  v163 = objc_opt_class();
  v164 = objc_opt_class();
  v166 = objc_msgSend_setWithObjects_(v162, v165, v163, v164, 0);
  v168 = objc_msgSend_decodeObjectOfClasses_forKey_(v4, v167, v166, @"zoneIDsToSave");

  v169 = MEMORY[0x1E695DFD8];
  v170 = objc_opt_class();
  v171 = objc_opt_class();
  v172 = objc_opt_class();
  v174 = objc_msgSend_setWithObjects_(v169, v173, v170, v171, v172, 0);
  v176 = objc_msgSend_decodeObjectOfClasses_forKey_(v4, v175, v174, @"zonesToSave");

  if (v176)
  {
    if (!v168)
    {
      v168 = objc_opt_new();
    }

    v179 = objc_msgSend_allKeys(v176, v177, v178);
    objc_msgSend_addObjectsFromArray_(v168, v180, v179);
  }

  v181 = 0x1E695D000;
  if (v168)
  {
    v182 = v6->_pendingDatabaseChangesSet;
    v183 = objc_msgSend_array(v168, v177, v178);
    v185 = objc_msgSend_CKMap_(v183, v184, &unk_1EFA2FD88);
    objc_msgSend_addObjectsFromArray_(v182, v186, v185);

    v181 = 0x1E695D000uLL;
  }

  v187 = *(v181 + 4056);
  v188 = objc_opt_class();
  v189 = objc_opt_class();
  v191 = objc_msgSend_setWithObjects_(v187, v190, v188, v189, 0);
  v193 = objc_msgSend_decodeObjectOfClasses_forKey_(v4, v192, v191, @"zoneIDsToDelete");

  if (v193)
  {
    v196 = v6->_pendingDatabaseChangesSet;
    v197 = objc_msgSend_array(v193, v194, v195);
    v199 = objc_msgSend_CKMap_(v197, v198, &unk_1EFA2FDA8);
    objc_msgSend_addObjectsFromArray_(v196, v200, v199);
  }

  v201 = objc_opt_class();
  v203 = objc_msgSend_decodeObjectOfClass_forKey_(v4, v202, v201, @"lastAccount");
  lastAccount = v6->_lastAccount;
  v6->_lastAccount = v203;

  v205 = objc_opt_class();
  v207 = objc_msgSend_decodeObjectOfClass_forKey_(v4, v206, v205, @"lastKnownUserRecordID");
  lastKnownUserRecordID = v6->_lastKnownUserRecordID;
  v6->_lastKnownUserRecordID = v207;

  v209 = objc_opt_class();
  v211 = objc_msgSend_decodeObjectOfClass_forKey_(v4, v210, v209, @"lastFetchDatabaseChangesDate");
  lastFetchDatabaseChangesDate = v6->_lastFetchDatabaseChangesDate;
  v6->_lastFetchDatabaseChangesDate = v211;

  v213 = objc_opt_class();
  v215 = objc_msgSend_decodeObjectOfClass_forKey_(v4, v214, v213, @"existingDatabaseSubscriptionID");
  existingDatabaseSubscriptionID = v6->_existingDatabaseSubscriptionID;
  v6->_existingDatabaseSubscriptionID = v215;

LABEL_55:
  v217 = *MEMORY[0x1E69E9840];
  return v6;
}

- (void)getDataRepresentation:(id)a3
{
  v22 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (ck_log_initialization_predicate != -1)
  {
    dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
  }

  v5 = ck_log_facility_engine;
  if (os_log_type_enabled(ck_log_facility_engine, OS_LOG_TYPE_DEBUG))
  {
    v9 = v5;
    v12 = objc_msgSend_shortDescription(self, v10, v11);
    *buf = 138543618;
    *&buf[4] = v12;
    *&buf[12] = 2112;
    *&buf[14] = self;
    _os_log_debug_impl(&dword_1883EA000, v9, OS_LOG_TYPE_DEBUG, "%{public}@ serializing sync engine state %@", buf, 0x16u);
  }

  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x3032000000;
  v19 = sub_1883EE1BC;
  v20 = sub_1883EF784;
  v21 = 0;
  v14 = 0;
  v15 = &v14;
  v16 = 0x2020000000;
  v17 = 0;
  if (self)
  {
    queue = self->_queue;
  }

  else
  {
    queue = 0;
  }

  v7 = queue;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = sub_18865CF9C;
  v13[3] = &unk_1E70C03A8;
  v13[4] = self;
  v13[5] = &v14;
  v13[6] = buf;
  ck_call_or_dispatch_sync_if_not_key(v7, &self->_queue, v13);

  v4[2](v4, *(*&buf[8] + 40), v15[3]);
  _Block_object_dispose(&v14, 8);
  _Block_object_dispose(buf, 8);

  v8 = *MEMORY[0x1E69E9840];
}

- (void)addPendingRecordZoneChanges:(NSArray *)changes
{
  v4 = changes;
  if (objc_msgSend_count(v4, v5, v6))
  {
    v14 = 0;
    v15 = &v14;
    v16 = 0x2020000000;
    v17 = 0;
    if (self)
    {
      queue = self->_queue;
    }

    else
    {
      queue = 0;
    }

    v8 = queue;
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = sub_18865D328;
    v10[3] = &unk_1E70BF4B0;
    v11 = v4;
    v12 = self;
    v13 = &v14;
    ck_call_or_dispatch_sync_if_not_key(v8, &self->_queue, v10);

    if (*(v15 + 24) == 1)
    {
      objc_msgSend_notifyChangeHandlerWithCoalescing_scheduleSync_(self, v9, 1, 1);
    }

    _Block_object_dispose(&v14, 8);
  }
}

- (void)markRecordZoneChanges:(id)a3 inFlight:(BOOL)a4
{
  v6 = a3;
  if (objc_msgSend_count(v6, v7, v8))
  {
    if (self)
    {
      queue = self->_queue;
    }

    else
    {
      queue = 0;
    }

    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = sub_18865D770;
    v11[3] = &unk_1E70BF5F0;
    v11[4] = self;
    v13 = a4;
    v12 = v6;
    ck_call_or_dispatch_sync_if_not_key(queue, &self->_queue, v11);
    objc_msgSend_notifyChangeHandlerWithCoalescing_scheduleSync_(self, v10, 1, 0);
  }
}

- (void)removePendingRecordZoneChanges:(NSArray *)changes
{
  v23 = *MEMORY[0x1E69E9840];
  v4 = changes;
  if (objc_msgSend_count(v4, v5, v6))
  {
    *&buf = 0;
    *(&buf + 1) = &buf;
    v21 = 0x2020000000;
    v22 = 0;
    if (self)
    {
      queue = self->_queue;
    }

    else
    {
      queue = 0;
    }

    v8 = queue;
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = sub_18865DDAC;
    v16[3] = &unk_1E70BF4B0;
    v17 = v4;
    v18 = self;
    p_buf = &buf;
    ck_call_or_dispatch_sync_if_not_key(v8, &self->_queue, v16);

    if (*(*(&buf + 1) + 24) == 1)
    {
      objc_msgSend_notifyChangeHandlerWithCoalescing_scheduleSync_(self, v9, 1, 0);
    }

    _Block_object_dispose(&buf, 8);
  }

  else
  {
    if (ck_log_initialization_predicate != -1)
    {
      dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
    }

    v10 = ck_log_facility_engine;
    if (os_log_type_enabled(ck_log_facility_engine, OS_LOG_TYPE_DEBUG))
    {
      v12 = v10;
      v15 = objc_msgSend_shortDescription(self, v13, v14);
      LODWORD(buf) = 138543362;
      *(&buf + 4) = v15;
      _os_log_debug_impl(&dword_1883EA000, v12, OS_LOG_TYPE_DEBUG, "%{public}@ no record zone changes to remove", &buf, 0xCu);
    }
  }

  v11 = *MEMORY[0x1E69E9840];
}

- (void)removeInFlightRecordZoneChanges:(id)a3
{
  v4 = a3;
  if (objc_msgSend_count(v4, v5, v6))
  {
    if (self)
    {
      queue = self->_queue;
    }

    else
    {
      queue = 0;
    }

    v9 = MEMORY[0x1E69E9820];
    v10 = 3221225472;
    v11 = sub_18865E0F8;
    v12 = &unk_1E70BEEC0;
    v13 = self;
    v14 = v4;
    ck_call_or_dispatch_sync_if_not_key(queue, &self->_queue, &v9);
    objc_msgSend_notifyChangeHandlerWithCoalescing_scheduleSync_(self, v8, 1, 0, v9, v10, v11, v12, v13);
  }
}

- (BOOL)containsInFlightRecordZoneChange:(id)a3
{
  v4 = a3;
  v13 = 0;
  v14 = &v13;
  v15 = 0x2020000000;
  v16 = 0;
  if (self)
  {
    queue = self->_queue;
  }

  else
  {
    queue = 0;
  }

  v6 = queue;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = sub_18865E34C;
  v10[3] = &unk_1E70BFF08;
  v12 = &v13;
  v10[4] = self;
  v7 = v4;
  v11 = v7;
  ck_call_or_dispatch_sync_if_not_key(v6, &self->_queue, v10);

  v8 = *(v14 + 24);
  _Block_object_dispose(&v13, 8);

  return v8;
}

- (BOOL)containsPendingRecordZoneChange:(id)a3
{
  v4 = a3;
  v13 = 0;
  v14 = &v13;
  v15 = 0x2020000000;
  v16 = 0;
  if (self)
  {
    queue = self->_queue;
  }

  else
  {
    queue = 0;
  }

  v6 = queue;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = sub_18865E4C4;
  v10[3] = &unk_1E70BFF08;
  v12 = &v13;
  v10[4] = self;
  v7 = v4;
  v11 = v7;
  ck_call_or_dispatch_sync_if_not_key(v6, &self->_queue, v10);

  v8 = *(v14 + 24);
  _Block_object_dispose(&v13, 8);

  return v8;
}

- (void)setPendingRecordZoneChanges:(id)a3
{
  v20 = *MEMORY[0x1E69E9840];
  v4 = MEMORY[0x1E695E0F0];
  if (a3)
  {
    v4 = a3;
  }

  v5 = v4;
  if (!objc_msgSend_count(v5, v6, v7))
  {
    if (ck_log_initialization_predicate != -1)
    {
      dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
    }

    v8 = ck_log_facility_engine;
    if (os_log_type_enabled(ck_log_facility_engine, OS_LOG_TYPE_DEBUG))
    {
      v12 = v8;
      v15 = objc_msgSend_shortDescription(self, v13, v14);
      *buf = 138543362;
      v19 = v15;
      _os_log_debug_impl(&dword_1883EA000, v12, OS_LOG_TYPE_DEBUG, "%{public}@ no new pending record zone changes to add", buf, 0xCu);

      if (self)
      {
        goto LABEL_8;
      }

LABEL_11:
      queue = 0;
      goto LABEL_9;
    }
  }

  if (!self)
  {
    goto LABEL_11;
  }

LABEL_8:
  queue = self->_queue;
LABEL_9:
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = sub_18865E6C8;
  v16[3] = &unk_1E70BEEC0;
  v16[4] = self;
  v17 = v5;
  v10 = v5;
  ck_call_or_dispatch_sync_if_not_key(queue, &self->_queue, v16);

  v11 = *MEMORY[0x1E69E9840];
}

- (NSArray)inFlightRecordChanges
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x3032000000;
  v11 = sub_1883EE1BC;
  v12 = sub_1883EF784;
  v13 = 0;
  if (self)
  {
    queue = self->_queue;
  }

  else
  {
    queue = 0;
  }

  v4 = queue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = sub_18865EA00;
  v7[3] = &unk_1E70BE500;
  v7[4] = self;
  v7[5] = &v8;
  ck_call_or_dispatch_sync_if_not_key(v4, &self->_queue, v7);

  v5 = v9[5];
  _Block_object_dispose(&v8, 8);

  return v5;
}

- (void)setServerChangeToken:(id)a3 forZoneID:(id)a4
{
  v6 = a3;
  v7 = a4;
  v21 = 0;
  v22 = &v21;
  v23 = 0x2020000000;
  v24 = 0;
  if (self)
  {
    queue = self->_queue;
  }

  else
  {
    queue = 0;
  }

  v9 = queue;
  v13 = MEMORY[0x1E69E9820];
  v14 = 3221225472;
  v15 = sub_18865EBC4;
  v16 = &unk_1E70BFEE0;
  v17 = self;
  v10 = v7;
  v18 = v10;
  v11 = v6;
  v19 = v11;
  v20 = &v21;
  ck_call_or_dispatch_sync_if_not_key(v9, &self->_queue, &v13);

  if (*(v22 + 24) == 1)
  {
    objc_msgSend_notifyChangeHandlerWithCoalescing_scheduleSync_(self, v12, 0, 0, v13, v14, v15, v16, v17, v18);
  }

  _Block_object_dispose(&v21, 8);
}

- (id)serverChangeTokenForZoneID:(id)a3 exists:(BOOL *)a4
{
  v6 = a3;
  if (a4)
  {
    *a4 = 0;
  }

  v16 = 0;
  v17 = &v16;
  v18 = 0x3032000000;
  v19 = sub_1883EE1BC;
  v20 = sub_1883EF784;
  v21 = 0;
  if (self)
  {
    queue = self->_queue;
  }

  else
  {
    queue = 0;
  }

  v8 = queue;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = sub_18865EFA8;
  v12[3] = &unk_1E70C03F0;
  v12[4] = self;
  v9 = v6;
  v14 = &v16;
  v15 = a4;
  v13 = v9;
  ck_call_or_dispatch_sync_if_not_key(v8, &self->_queue, v12);

  v10 = v17[5];
  _Block_object_dispose(&v16, 8);

  return v10;
}

- (id)fetchChangesZoneConfigurationForZoneID:(id)a3
{
  v16 = 0;
  v4 = a3;
  v5 = objc_alloc_init(CKFetchRecordZoneChangesConfiguration);
  v7 = objc_msgSend_serverChangeTokenForZoneID_exists_(self, v6, v4, &v16);

  objc_msgSend_setPreviousServerChangeToken_(v5, v8, v7);
  v11 = objc_msgSend_sharedOptions(CKBehaviorOptions, v9, v10);
  LODWORD(v4) = objc_msgSend_fetchNewestChangesFirst(v11, v12, v13);

  if (v4)
  {
    objc_msgSend_setFetchNewestChangesFirst_(v5, v14, (v16 & 1) == 0);
  }

  return v5;
}

- (void)setNeedsToFetchChanges:(BOOL)a3 forRecordZoneID:(id)a4
{
  v6 = a4;
  if (self)
  {
    queue = self->_queue;
  }

  else
  {
    queue = 0;
  }

  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = sub_18865F1B8;
  v10[3] = &unk_1E70BF5F0;
  v12 = a3;
  v10[4] = self;
  v11 = v6;
  v8 = v6;
  ck_call_or_dispatch_sync_if_not_key(queue, &self->_queue, v10);
  objc_msgSend_notifyChangeHandlerWithCoalescing_scheduleSync_(self, v9, 1, 0);
}

- (BOOL)needsToFetchChangesForZoneID:(id)a3
{
  v4 = a3;
  v13 = 0;
  v14 = &v13;
  v15 = 0x2020000000;
  v16 = 0;
  if (self)
  {
    queue = self->_queue;
  }

  else
  {
    queue = 0;
  }

  v6 = queue;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = sub_18865F4C0;
  v10[3] = &unk_1E70BFF08;
  v12 = &v13;
  v10[4] = self;
  v7 = v4;
  v11 = v7;
  ck_call_or_dispatch_sync_if_not_key(v6, &self->_queue, v10);

  v8 = *(v14 + 24);
  _Block_object_dispose(&v13, 8);

  return v8;
}

- (void)removeRecordZoneWithZoneID:(id)a3
{
  v4 = a3;
  v12 = 0;
  v13 = &v12;
  v14 = 0x2020000000;
  v15 = 0;
  if (self)
  {
    queue = self->_queue;
  }

  else
  {
    queue = 0;
  }

  v6 = queue;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = sub_18865F648;
  v9[3] = &unk_1E70BF4B0;
  v9[4] = self;
  v7 = v4;
  v10 = v7;
  v11 = &v12;
  ck_call_or_dispatch_sync_if_not_key(v6, &self->_queue, v9);

  if (*(v13 + 24) == 1)
  {
    objc_msgSend_notifyChangeHandlerWithCoalescing_scheduleSync_(self, v8, 0, 0);
  }

  _Block_object_dispose(&v12, 8);
}

- (void)setPendingDatabaseChanges:(id)a3
{
  v20 = *MEMORY[0x1E69E9840];
  v4 = MEMORY[0x1E695E0F0];
  if (a3)
  {
    v4 = a3;
  }

  v5 = v4;
  if (!objc_msgSend_count(v5, v6, v7))
  {
    if (ck_log_initialization_predicate != -1)
    {
      dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
    }

    v8 = ck_log_facility_engine;
    if (os_log_type_enabled(ck_log_facility_engine, OS_LOG_TYPE_DEBUG))
    {
      v12 = v8;
      v15 = objc_msgSend_shortDescription(self, v13, v14);
      *buf = 138543362;
      v19 = v15;
      _os_log_debug_impl(&dword_1883EA000, v12, OS_LOG_TYPE_DEBUG, "%{public}@ no new pending database changes to add", buf, 0xCu);

      if (self)
      {
        goto LABEL_8;
      }

LABEL_11:
      queue = 0;
      goto LABEL_9;
    }
  }

  if (!self)
  {
    goto LABEL_11;
  }

LABEL_8:
  queue = self->_queue;
LABEL_9:
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = sub_18865F95C;
  v16[3] = &unk_1E70BEEC0;
  v16[4] = self;
  v17 = v5;
  v10 = v5;
  ck_call_or_dispatch_sync_if_not_key(queue, &self->_queue, v16);

  v11 = *MEMORY[0x1E69E9840];
}

- (void)addPendingDatabaseChanges:(NSArray *)changes
{
  v23 = *MEMORY[0x1E69E9840];
  v4 = changes;
  if (objc_msgSend_count(v4, v5, v6))
  {
    *&buf = 0;
    *(&buf + 1) = &buf;
    v21 = 0x2020000000;
    v22 = 0;
    if (self)
    {
      queue = self->_queue;
    }

    else
    {
      queue = 0;
    }

    v8 = queue;
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = sub_18865FD68;
    v16[3] = &unk_1E70BF4B0;
    v17 = v4;
    v18 = self;
    p_buf = &buf;
    ck_call_or_dispatch_sync_if_not_key(v8, &self->_queue, v16);

    if (*(*(&buf + 1) + 24) == 1)
    {
      objc_msgSend_notifyChangeHandlerWithCoalescing_scheduleSync_(self, v9, 1, 1);
    }

    _Block_object_dispose(&buf, 8);
  }

  else
  {
    if (ck_log_initialization_predicate != -1)
    {
      dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
    }

    v10 = ck_log_facility_engine;
    if (os_log_type_enabled(ck_log_facility_engine, OS_LOG_TYPE_DEBUG))
    {
      v12 = v10;
      v15 = objc_msgSend_shortDescription(self, v13, v14);
      LODWORD(buf) = 138543362;
      *(&buf + 4) = v15;
      _os_log_debug_impl(&dword_1883EA000, v12, OS_LOG_TYPE_DEBUG, "%{public}@ no new pending database changes to add", &buf, 0xCu);
    }
  }

  v11 = *MEMORY[0x1E69E9840];
}

- (void)removePendingDatabaseChanges:(NSArray *)changes
{
  v23 = *MEMORY[0x1E69E9840];
  v4 = changes;
  if (objc_msgSend_count(v4, v5, v6))
  {
    *&buf = 0;
    *(&buf + 1) = &buf;
    v21 = 0x2020000000;
    v22 = 0;
    if (self)
    {
      queue = self->_queue;
    }

    else
    {
      queue = 0;
    }

    v8 = queue;
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = sub_188660230;
    v16[3] = &unk_1E70BF4B0;
    v17 = v4;
    v18 = self;
    p_buf = &buf;
    ck_call_or_dispatch_sync_if_not_key(v8, &self->_queue, v16);

    if (*(*(&buf + 1) + 24) == 1)
    {
      objc_msgSend_notifyChangeHandlerWithCoalescing_scheduleSync_(self, v9, 1, 0);
    }

    _Block_object_dispose(&buf, 8);
  }

  else
  {
    if (ck_log_initialization_predicate != -1)
    {
      dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
    }

    v10 = ck_log_facility_engine;
    if (os_log_type_enabled(ck_log_facility_engine, OS_LOG_TYPE_DEBUG))
    {
      v12 = v10;
      v15 = objc_msgSend_shortDescription(self, v13, v14);
      LODWORD(buf) = 138543362;
      *(&buf + 4) = v15;
      _os_log_debug_impl(&dword_1883EA000, v12, OS_LOG_TYPE_DEBUG, "%{public}@ no pending database changes to remove", &buf, 0xCu);
    }
  }

  v11 = *MEMORY[0x1E69E9840];
}

- (void)markDatabaseChanges:(id)a3 inFlight:(BOOL)a4
{
  v6 = a3;
  if (self)
  {
    queue = self->_queue;
  }

  else
  {
    queue = 0;
  }

  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = sub_188660568;
  v10[3] = &unk_1E70BF5F0;
  v12 = a4;
  v10[4] = self;
  v11 = v6;
  v8 = v6;
  ck_call_or_dispatch_sync_if_not_key(queue, &self->_queue, v10);
  objc_msgSend_notifyChangeHandlerWithCoalescing_scheduleSync_(self, v9, 1, 0);
}

- (void)removeInFlightDatabaseChanges:(id)a3
{
  v4 = a3;
  if (self)
  {
    queue = self->_queue;
  }

  else
  {
    queue = 0;
  }

  v8 = MEMORY[0x1E69E9820];
  v9 = 3221225472;
  v10 = sub_188660A64;
  v11 = &unk_1E70BEEC0;
  v12 = self;
  v13 = v4;
  v6 = v4;
  ck_call_or_dispatch_sync_if_not_key(queue, &self->_queue, &v8);
  objc_msgSend_notifyChangeHandlerWithCoalescing_scheduleSync_(self, v7, 1, 0, v8, v9, v10, v11, v12);
}

- (BOOL)needsToSaveZoneID:(id)a3
{
  v25 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v7 = objc_msgSend_pendingDatabaseChanges(self, v5, v6, 0);
  v11 = objc_msgSend_countByEnumeratingWithState_objects_count_(v7, v8, &v20, v24, 16);
  if (v11)
  {
    v12 = *v21;
    while (2)
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v21 != v12)
        {
          objc_enumerationMutation(v7);
        }

        v14 = *(*(&v20 + 1) + 8 * i);
        if (!objc_msgSend_type(v14, v9, v10))
        {
          v15 = objc_msgSend_zoneID(v14, v9, v10);
          isEqual = objc_msgSend_isEqual_(v15, v16, v4);

          if (isEqual)
          {
            LOBYTE(v11) = 1;
            goto LABEL_12;
          }
        }
      }

      v11 = objc_msgSend_countByEnumeratingWithState_objects_count_(v7, v9, &v20, v24, 16);
      if (v11)
      {
        continue;
      }

      break;
    }
  }

LABEL_12:

  v18 = *MEMORY[0x1E69E9840];
  return v11;
}

- (BOOL)needsToDeleteZoneID:(id)a3
{
  v25 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v7 = objc_msgSend_pendingDatabaseChanges(self, v5, v6, 0);
  v11 = objc_msgSend_countByEnumeratingWithState_objects_count_(v7, v8, &v20, v24, 16);
  if (v11)
  {
    v12 = *v21;
    while (2)
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v21 != v12)
        {
          objc_enumerationMutation(v7);
        }

        v14 = *(*(&v20 + 1) + 8 * i);
        if (objc_msgSend_type(v14, v9, v10) == 1)
        {
          v15 = objc_msgSend_zoneID(v14, v9, v10);
          isEqual = objc_msgSend_isEqual_(v15, v16, v4);

          if (isEqual)
          {
            LOBYTE(v11) = 1;
            goto LABEL_12;
          }
        }
      }

      v11 = objc_msgSend_countByEnumeratingWithState_objects_count_(v7, v9, &v20, v24, 16);
      if (v11)
      {
        continue;
      }

      break;
    }
  }

LABEL_12:

  v18 = *MEMORY[0x1E69E9840];
  return v11;
}

- (NSArray)pendingAssetSyncs
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x3032000000;
  v11 = sub_1883EE1BC;
  v12 = sub_1883EF784;
  v13 = 0;
  if (self)
  {
    queue = self->_queue;
  }

  else
  {
    queue = 0;
  }

  v4 = queue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = sub_188660F58;
  v7[3] = &unk_1E70BE500;
  v7[4] = self;
  v7[5] = &v8;
  ck_call_or_dispatch_sync_if_not_key(v4, &self->_queue, v7);

  v5 = v9[5];
  _Block_object_dispose(&v8, 8);

  return v5;
}

- (void)setPendingAssetSyncs:(id)a3
{
  v4 = MEMORY[0x1E695E0F0];
  if (a3)
  {
    v4 = a3;
  }

  v5 = v4;
  if (self)
  {
    queue = self->_queue;
  }

  else
  {
    queue = 0;
  }

  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = sub_188661090;
  v8[3] = &unk_1E70BEEC0;
  v8[4] = self;
  v9 = v5;
  v7 = v5;
  ck_call_or_dispatch_sync_if_not_key(queue, &self->_queue, v8);
}

- (void)addPendingAssetSyncs:(id)a3
{
  v23 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (objc_msgSend_count(v4, v5, v6))
  {
    *&buf = 0;
    *(&buf + 1) = &buf;
    v21 = 0x2020000000;
    v22 = 0;
    if (self)
    {
      queue = self->_queue;
    }

    else
    {
      queue = 0;
    }

    v8 = queue;
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = sub_1886613C8;
    v16[3] = &unk_1E70BF4B0;
    v17 = v4;
    v18 = self;
    p_buf = &buf;
    ck_call_or_dispatch_sync_if_not_key(v8, &self->_queue, v16);

    if (*(*(&buf + 1) + 24) == 1)
    {
      objc_msgSend_notifyChangeHandlerWithCoalescing_scheduleSync_(self, v9, 1, 1);
    }

    _Block_object_dispose(&buf, 8);
  }

  else
  {
    if (ck_log_initialization_predicate != -1)
    {
      dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
    }

    v10 = ck_log_facility_engine;
    if (os_log_type_enabled(ck_log_facility_engine, OS_LOG_TYPE_DEBUG))
    {
      v12 = v10;
      v15 = objc_msgSend_shortDescription(self, v13, v14);
      LODWORD(buf) = 138543362;
      *(&buf + 4) = v15;
      _os_log_debug_impl(&dword_1883EA000, v12, OS_LOG_TYPE_DEBUG, "%{public}@ no new pending asset syncs to add", &buf, 0xCu);
    }
  }

  v11 = *MEMORY[0x1E69E9840];
}

- (void)removePendingAssetSyncs:(id)a3
{
  v23 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (objc_msgSend_count(v4, v5, v6))
  {
    *&buf = 0;
    *(&buf + 1) = &buf;
    v21 = 0x2020000000;
    v22 = 0;
    if (self)
    {
      queue = self->_queue;
    }

    else
    {
      queue = 0;
    }

    v8 = queue;
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = sub_1886618BC;
    v16[3] = &unk_1E70BF4B0;
    v17 = v4;
    v18 = self;
    p_buf = &buf;
    ck_call_or_dispatch_sync_if_not_key(v8, &self->_queue, v16);

    if (*(*(&buf + 1) + 24) == 1)
    {
      objc_msgSend_notifyChangeHandlerWithCoalescing_scheduleSync_(self, v9, 1, 0);
    }

    _Block_object_dispose(&buf, 8);
  }

  else
  {
    if (ck_log_initialization_predicate != -1)
    {
      dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
    }

    v10 = ck_log_facility_engine;
    if (os_log_type_enabled(ck_log_facility_engine, OS_LOG_TYPE_DEBUG))
    {
      v12 = v10;
      v15 = objc_msgSend_shortDescription(self, v13, v14);
      LODWORD(buf) = 138543362;
      *(&buf + 4) = v15;
      _os_log_debug_impl(&dword_1883EA000, v12, OS_LOG_TYPE_DEBUG, "%{public}@ no pending asset syncs to remove", &buf, 0xCu);
    }
  }

  v11 = *MEMORY[0x1E69E9840];
}

- (void)markAssetSync:(id)a3 inFlight:(BOOL)a4
{
  v6 = a3;
  if (self)
  {
    queue = self->_queue;
  }

  else
  {
    queue = 0;
  }

  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = sub_188661BD4;
  v10[3] = &unk_1E70BF5F0;
  v12 = a4;
  v10[4] = self;
  v11 = v6;
  v8 = v6;
  ck_call_or_dispatch_sync_if_not_key(queue, &self->_queue, v10);
  objc_msgSend_notifyChangeHandlerWithCoalescing_scheduleSync_(self, v9, 1, 0);
}

- (void)removeInFlightAssetSync:(id)a3
{
  v17 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (ck_log_initialization_predicate != -1)
  {
    dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
  }

  v5 = ck_log_facility_engine;
  if (os_log_type_enabled(ck_log_facility_engine, OS_LOG_TYPE_DEBUG))
  {
    v9 = v5;
    v12 = objc_msgSend_shortDescription(self, v10, v11);
    v13 = 138543618;
    v14 = v12;
    v15 = 2112;
    v16 = v4;
    _os_log_debug_impl(&dword_1883EA000, v9, OS_LOG_TYPE_DEBUG, "%{public}@ removing in flight asset sync: %@", &v13, 0x16u);

    if (self)
    {
      goto LABEL_5;
    }

LABEL_8:
    objc_msgSend_removeObject_(0, v6, v4);
    goto LABEL_6;
  }

  if (!self)
  {
    goto LABEL_8;
  }

LABEL_5:
  objc_msgSend_removeObject_(self->_inFlightAssetSyncSet, v6, v4);
  ++self->_internalChangeCount;
LABEL_6:
  objc_msgSend_notifyChangeHandlerWithCoalescing_scheduleSync_(self, v7, 1, 0);

  v8 = *MEMORY[0x1E69E9840];
}

- (NSArray)pendingAutomaticSyncAssetSyncs_fetch_Assets
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x3032000000;
  v11 = sub_1883EE1BC;
  v12 = sub_1883EF784;
  v13 = 0;
  if (self)
  {
    queue = self->_queue;
  }

  else
  {
    queue = 0;
  }

  v4 = queue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = sub_18866200C;
  v7[3] = &unk_1E70BF378;
  v7[4] = self;
  v7[5] = &v8;
  ck_call_or_dispatch_sync_if_not_key(v4, &self->_queue, v7);

  v5 = v9[5];
  _Block_object_dispose(&v8, 8);

  return v5;
}

- (NSArray)pendingAssetSyncs_fetch_Assets
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x3032000000;
  v11 = sub_1883EE1BC;
  v12 = sub_1883EF784;
  v13 = 0;
  if (self)
  {
    queue = self->_queue;
  }

  else
  {
    queue = 0;
  }

  v4 = queue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = sub_1886622A4;
  v7[3] = &unk_1E70BF378;
  v7[4] = self;
  v7[5] = &v8;
  ck_call_or_dispatch_sync_if_not_key(v4, &self->_queue, v7);

  v5 = v9[5];
  _Block_object_dispose(&v8, 8);

  return v5;
}

- (NSArray)inFlightAssetSyncs_fetch_Assets
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x3032000000;
  v11 = sub_1883EE1BC;
  v12 = sub_1883EF784;
  v13 = 0;
  if (self)
  {
    queue = self->_queue;
  }

  else
  {
    queue = 0;
  }

  v4 = queue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = sub_18866253C;
  v7[3] = &unk_1E70BF378;
  v7[4] = self;
  v7[5] = &v8;
  ck_call_or_dispatch_sync_if_not_key(v4, &self->_queue, v7);

  v5 = v9[5];
  _Block_object_dispose(&v8, 8);

  return v5;
}

- (void)addPendingAssetSyncs_fetch:(id)a3
{
  v25 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v6 = v4;
  v8 = objc_msgSend_countByEnumeratingWithState_objects_count_(v6, v7, &v20, v24, 16);
  if (v8)
  {
    v9 = v8;
    v10 = *v21;
    do
    {
      v11 = 0;
      do
      {
        if (*v21 != v10)
        {
          objc_enumerationMutation(v6);
        }

        v12 = *(*(&v20 + 1) + 8 * v11);
        v13 = [CKSyncEnginePendingAssetSync alloc];
        v15 = objc_msgSend_initWithAsset_type_(v13, v14, v12, 0, v20);
        objc_msgSend_addObject_(v5, v16, v15);

        ++v11;
      }

      while (v9 != v11);
      v9 = objc_msgSend_countByEnumeratingWithState_objects_count_(v6, v17, &v20, v24, 16);
    }

    while (v9);
  }

  objc_msgSend_addPendingAssetSyncs_(self, v18, v5);
  v19 = *MEMORY[0x1E69E9840];
}

- (void)removePendingAssetSyncs_fetch:(id)a3
{
  v25 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v6 = objc_msgSend_countByEnumeratingWithState_objects_count_(v4, v5, &v19, v24, 16);
  if (v6)
  {
    v7 = v6;
    v8 = *v20;
    do
    {
      v9 = 0;
      do
      {
        if (*v20 != v8)
        {
          objc_enumerationMutation(v4);
        }

        v10 = *(*(&v19 + 1) + 8 * v9);
        v11 = [CKSyncEnginePendingAssetSync alloc];
        v13 = objc_msgSend_initWithAsset_type_(v11, v12, v10, 0);
        v23 = v13;
        v15 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x1E695DEC8], v14, &v23, 1);
        objc_msgSend_removePendingAssetSyncs_(self, v16, v15);

        ++v9;
      }

      while (v7 != v9);
      v7 = objc_msgSend_countByEnumeratingWithState_objects_count_(v4, v17, &v19, v24, 16);
    }

    while (v7);
  }

  v18 = *MEMORY[0x1E69E9840];
}

- (void)setServerChangeTokenForDatabase:(id)a3
{
  v4 = a3;
  if (self)
  {
    queue = self->_queue;
  }

  else
  {
    queue = 0;
  }

  v8 = MEMORY[0x1E69E9820];
  v9 = 3221225472;
  v10 = sub_188662B30;
  v11 = &unk_1E70BEEC0;
  v12 = self;
  v13 = v4;
  v6 = v4;
  ck_call_or_dispatch_sync_if_not_key(queue, &self->_queue, &v8);
  objc_msgSend_notifyChangeHandlerWithCoalescing_scheduleSync_(self, v7, 0, 0, v8, v9, v10, v11, v12);
}

- (void)setNeedsToFetchDatabaseChanges:(BOOL)a3 postStateUpdate:(BOOL)a4
{
  v4 = a4;
  v5 = self;
  if (self)
  {
    self = self->_queue;
  }

  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = sub_188662D34;
  v7[3] = &unk_1E70C0418;
  v8 = a3;
  v7[4] = v5;
  v9 = a4;
  ck_call_or_dispatch_sync_if_not_key(self, &v5->_queue, v7);
  if (v4)
  {
    objc_msgSend_notifyChangeHandlerWithCoalescing_scheduleSync_(v5, v6, 1, 0);
  }
}

- (void)setNeedsToSaveDatabaseSubscription:(BOOL)a3
{
  v3 = self;
  if (self)
  {
    self = self->_queue;
  }

  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = sub_188662F28;
  v5[3] = &unk_1E70BFE40;
  v6 = a3;
  v5[4] = v3;
  ck_call_or_dispatch_sync_if_not_key(self, &v3->_queue, v5);
  objc_msgSend_notifyChangeHandlerWithCoalescing_scheduleSync_(v3, v4, 1, 0);
}

- (void)setLastAccount:(id)a3
{
  v4 = a3;
  if (self)
  {
    queue = self->_queue;
  }

  else
  {
    queue = 0;
  }

  v8 = MEMORY[0x1E69E9820];
  v9 = 3221225472;
  v10 = sub_188663130;
  v11 = &unk_1E70BEEC0;
  v12 = self;
  v13 = v4;
  v6 = v4;
  ck_call_or_dispatch_sync_if_not_key(queue, &self->_queue, &v8);
  objc_msgSend_notifyChangeHandlerWithCoalescing_scheduleSync_(self, v7, 1, 0, v8, v9, v10, v11, v12);
}

- (CKSyncEngineAccount)lastAccount
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x3032000000;
  v11 = sub_1883EE1BC;
  v12 = sub_1883EF784;
  v13 = 0;
  if (self)
  {
    queue = self->_queue;
  }

  else
  {
    queue = 0;
  }

  v4 = queue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = sub_1886633C0;
  v7[3] = &unk_1E70BE500;
  v7[4] = self;
  v7[5] = &v8;
  ck_call_or_dispatch_sync_if_not_key(v4, &self->_queue, v7);

  v5 = v9[5];
  _Block_object_dispose(&v8, 8);

  return v5;
}

- (void)purgeLegacyLastKnownUserRecordIDIfNecessary
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v10 = 0;
  if (self)
  {
    queue = self->_queue;
  }

  else
  {
    queue = 0;
  }

  v4 = queue;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = sub_1886634C4;
  v6[3] = &unk_1E70BF378;
  v6[4] = self;
  v6[5] = &v7;
  ck_call_or_dispatch_sync_if_not_key(v4, &self->_queue, v6);

  objc_msgSend_notifyChangeHandlerWithCoalescing_scheduleSync_(self, v5, *(v8 + 24), 0);
  _Block_object_dispose(&v7, 8);
}

- (void)setLastKnownUserRecordID:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (__sTestOverridesAvailable[0] == 1)
  {
    if (self)
    {
      queue = self->_queue;
    }

    else
    {
      queue = 0;
    }

    v8 = MEMORY[0x1E69E9820];
    v9 = 3221225472;
    v10 = sub_1886636F4;
    v11 = &unk_1E70BEEC0;
    v12 = self;
    v13 = v4;
    ck_call_or_dispatch_sync_if_not_key(queue, &self->_queue, &v8);
    objc_msgSend_notifyChangeHandlerWithCoalescing_scheduleSync_(self, v7, 1, 0, v8, v9, v10, v11, v12);
  }
}

- (void)setHasPendingUntrackedChanges:(BOOL)hasPendingUntrackedChanges
{
  v10 = 0;
  v11 = &v10;
  v12 = 0x2020000000;
  v13 = 0;
  if (self)
  {
    queue = self->_queue;
  }

  else
  {
    queue = 0;
  }

  v6 = queue;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = sub_188663950;
  v8[3] = &unk_1E70C0440;
  v9 = hasPendingUntrackedChanges;
  v8[4] = self;
  v8[5] = &v10;
  ck_call_or_dispatch_sync_if_not_key(v6, &self->_queue, v8);

  objc_msgSend_notifyChangeHandlerWithCoalescing_scheduleSync_(self, v7, 1, *(v11 + 24));
  _Block_object_dispose(&v10, 8);
}

- (void)setHasInFlightUntrackedChanges:(BOOL)a3
{
  v3 = self;
  if (self)
  {
    self = self->_queue;
  }

  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = sub_188663B38;
  v5[3] = &unk_1E70BFE40;
  v6 = a3;
  v5[4] = v3;
  ck_call_or_dispatch_sync_if_not_key(self, &v3->_queue, v5);
  objc_msgSend_notifyChangeHandlerWithCoalescing_scheduleSync_(v3, v4, 1, 0);
}

- (void)setLastFetchDatabaseChangesDate:(id)a3
{
  v4 = a3;
  if (self)
  {
    queue = self->_queue;
  }

  else
  {
    queue = 0;
  }

  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = sub_188663D30;
  v7[3] = &unk_1E70BEEC0;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  ck_call_or_dispatch_sync_if_not_key(queue, &self->_queue, v7);
}

- (void)setExistingDatabaseSubscriptionID:(id)a3
{
  v4 = a3;
  if (self)
  {
    queue = self->_queue;
  }

  else
  {
    queue = 0;
  }

  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = sub_188663E20;
  v7[3] = &unk_1E70BEEC0;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  ck_call_or_dispatch_sync_if_not_key(queue, &self->_queue, v7);
}

- (void)setScheduledSyncInProgress:(BOOL)a3
{
  if (self)
  {
    queue = self->_queue;
  }

  else
  {
    queue = 0;
  }

  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = sub_188663EB4;
  v4[3] = &unk_1E70BFE40;
  v5 = a3;
  v4[4] = self;
  ck_call_or_dispatch_sync_if_not_key(queue, &self->_queue, v4);
}

- (BOOL)scheduledSyncInProgress
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x2020000000;
  v11 = 0;
  if (self)
  {
    queue = self->_queue;
  }

  else
  {
    queue = 0;
  }

  v4 = queue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = sub_1886640E4;
  v7[3] = &unk_1E70BE500;
  v7[4] = self;
  v7[5] = &v8;
  ck_call_or_dispatch_sync_if_not_key(v4, &self->_queue, v7);

  v5 = *(v9 + 24);
  _Block_object_dispose(&v8, 8);
  return v5;
}

- (NSArray)pendingAutomaticSyncZoneIDs
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x3032000000;
  v11 = sub_1883EE1BC;
  v12 = sub_1883EF784;
  v13 = 0;
  if (self)
  {
    queue = self->_queue;
  }

  else
  {
    queue = 0;
  }

  v4 = queue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = sub_188664224;
  v7[3] = &unk_1E70BE500;
  v7[4] = self;
  v7[5] = &v8;
  ck_call_or_dispatch_sync_if_not_key(v4, &self->_queue, v7);

  v5 = v9[5];
  _Block_object_dispose(&v8, 8);

  return v5;
}

- (void)trackPendingZoneIDDuringAutomaticSync:(id)a3
{
  v6 = a3;
  if (objc_msgSend_scheduledSyncInProgress(self, v4, v5))
  {
    if (self)
    {
      objc_msgSend_addObject_(self->_pendingAutomaticSyncZoneIDsSet, v6, v6);
    }

    else
    {
      objc_msgSend_addObject_(0, v6, v6);
    }
  }
}

- (void)unTrackPendingZoneIDDuringAutomaticSync:(id)a3
{
  v6 = a3;
  if (objc_msgSend_scheduledSyncInProgress(self, v4, v5))
  {
    if (self)
    {
      objc_msgSend_removeObject_(self->_pendingAutomaticSyncZoneIDsSet, v6, v6);
    }

    else
    {
      objc_msgSend_removeObject_(0, v6, v6);
    }
  }
}

- (void)purgePendingAutomaticSyncZoneIDs
{
  if (self)
  {
    queue = self->_queue;
  }

  else
  {
    queue = 0;
  }

  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = sub_1886643F8;
  v3[3] = &unk_1E70BC388;
  v3[4] = self;
  ck_call_or_dispatch_sync_if_not_key(queue, &self->_queue, v3);
}

- (NSArray)pendingAutomaticSyncAssetSyncs
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x3032000000;
  v11 = sub_1883EE1BC;
  v12 = sub_1883EF784;
  v13 = 0;
  if (self)
  {
    queue = self->_queue;
  }

  else
  {
    queue = 0;
  }

  v4 = queue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = sub_18866453C;
  v7[3] = &unk_1E70BE500;
  v7[4] = self;
  v7[5] = &v8;
  ck_call_or_dispatch_sync_if_not_key(v4, &self->_queue, v7);

  v5 = v9[5];
  _Block_object_dispose(&v8, 8);

  return v5;
}

- (void)trackPendingAssetSyncDuringAutomaticSync:(id)a3
{
  v6 = a3;
  if (objc_msgSend_scheduledSyncInProgress(self, v4, v5))
  {
    if (self)
    {
      objc_msgSend_addObject_(self->_pendingAutomaticSyncAssetsSyncsSet, v6, v6);
    }

    else
    {
      objc_msgSend_addObject_(0, v6, v6);
    }
  }
}

- (void)unTrackPendingAssetSyncDuringAutomaticSync:(id)a3
{
  v6 = a3;
  if (objc_msgSend_scheduledSyncInProgress(self, v4, v5))
  {
    if (self)
    {
      objc_msgSend_removeObject_(self->_pendingAutomaticSyncAssetsSyncsSet, v6, v6);
    }

    else
    {
      objc_msgSend_removeObject_(0, v6, v6);
    }
  }
}

- (void)purgePendingAutomaticSyncAssetSyncs
{
  if (self)
  {
    queue = self->_queue;
  }

  else
  {
    queue = 0;
  }

  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = sub_188664710;
  v3[3] = &unk_1E70BC388;
  v3[4] = self;
  ck_call_or_dispatch_sync_if_not_key(queue, &self->_queue, v3);
}

@end