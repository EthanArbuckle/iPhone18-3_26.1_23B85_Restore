@interface CKSQLiteDatabaseManager
+ (id)managerInDatabase:(id)a3 error:(id *)a4;
- (id)activityEntryForTarget:(id)a3 error:(id *)a4;
- (id)addActivityTriggerWithTarget:(id)a3 date:(id)a4 coalescingInterval:(double)a5 minimumSeparation:(double)a6;
- (id)earliestActivityDate;
- (id)finishInitializing;
- (id)nextActivityDateForTarget:(id)a3;
- (id)target:(id)a3 group:(id)a4 willRunActivity:(id)a5;
- (void)createTables;
- (void)databaseWasRemoved:(id)a3;
- (void)flush;
- (void)runActivities:(id)a3;
- (void)setSchedulingDataInActivity:(id)a3 date:(id)a4 coalescingInterval:(double)a5 minimumSeparation:(double)a6;
- (void)target:(id)a3 group:(id)a4 didRunActivity:(id)a5;
- (void)waitForComplete;
- (void)waitForTargetActivityComplete:(id)a3;
@end

@implementation CKSQLiteDatabaseManager

- (void)createTables
{
  v13.receiver = self;
  v13.super_class = CKSQLiteDatabaseManager;
  [(CKSQLiteTableGroup *)&v13 createTables];
  v3 = [CKSQLiteDatabaseRegistry alloc];
  v5 = objc_msgSend_initWithLogicalTableName_(v3, v4, @"Registry");
  registry = self->_registry;
  self->_registry = v5;

  objc_msgSend_addTable_(self, v7, self->_registry);
  v8 = [CKSQLiteDatabaseActivities alloc];
  v10 = objc_msgSend_initWithLogicalTableName_(v8, v9, @"Activities");
  activities = self->_activities;
  self->_activities = v10;

  objc_msgSend_addTable_(self, v12, self->_activities);
}

- (id)finishInitializing
{
  v23.receiver = self;
  v23.super_class = CKSQLiteDatabaseManager;
  v3 = [(CKSQLiteTableGroup *)&v23 finishInitializing];
  v6 = objc_msgSend_db(self, v4, v5);
  v9 = objc_msgSend_databaseManagerTimer(v6, v7, v8);
  timer = self->_timer;
  self->_timer = v9;

  if (self->_timer)
  {
    if (v3)
    {
      goto LABEL_9;
    }
  }

  else
  {
    v13 = [CKSQLiteDatabaseManagerTimer alloc];
    v15 = objc_msgSend_initWithDatabase_(v13, v14, v6);
    v16 = self->_timer;
    self->_timer = v15;

    objc_msgSend_setDatabaseManagerTimer_(v6, v17, self->_timer);
    if (v3)
    {
      goto LABEL_9;
    }
  }

  if (objc_msgSend_isFirstInstanceInProcess(self, v11, v12))
  {
    v21 = objc_msgSend_earliestActivityDate(self->_activities, v18, v19);
    if (v21)
    {
      objc_msgSend_scheduleActivityDate_(self, v20, v21);
    }
  }

LABEL_9:

  return v3;
}

+ (id)managerInDatabase:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = objc_opt_class();
  v8 = NSStringFromClass(v7);
  v10 = objc_msgSend_groupNameWithDomain_domainIdentifier_groupName_(CKSQLiteDatabaseManager, v9, 0, 0, v8);

  v12 = objc_msgSend_tableGroupInDatabase_withName_error_(a1, v11, v6, v10, a4);

  return v12;
}

- (void)databaseWasRemoved:(id)a3
{
  v12 = a3;
  activities = self->_activities;
  v7 = objc_msgSend_databaseID(v12, v5, v6);
  v9 = objc_msgSend_deleteEntriesForDatabase_(activities, v8, v7);

  v11 = objc_msgSend_deleteObject_(self->_registry, v10, v12);
}

- (id)activityEntryForTarget:(id)a3 error:(id *)a4
{
  v7 = a3;
  objc_msgSend_db(self, v8, v9);

  v12 = objc_msgSend_databaseManagerData(v7, v10, v11);
  if (!v12)
  {
    v12 = objc_alloc_init(CKSQLiteDatabaseActivityEntry);
    registry = self->_registry;
    v16 = objc_msgSend_db(v7, v14, v15);
    v34 = 0;
    v18 = objc_msgSend_databaseIDForDatabase_error_(registry, v17, v16, &v34);
    v19 = v34;

    if (v19)
    {

      if (a4)
      {
        v21 = v19;
        v12 = 0;
        *a4 = v19;
      }

      else
      {
        v12 = 0;
      }

      goto LABEL_11;
    }

    objc_msgSend_setDatabaseID_(v12, v20, v18);
    objc_msgSend__setupActivityEntry_(v7, v22, v12);
    v24 = objc_msgSend_fetchActivityForTarget_(self->_activities, v23, v12);
    if (objc_msgSend_CKIsNoMatchingRowError_(MEMORY[0x1E696ABC0], v25, v24))
    {
      v28 = objc_msgSend_distantPast(MEMORY[0x1E695DF00], v26, v27);
      objc_msgSend_setActivityNotBeforeDate_(v12, v29, v28);
    }

    else
    {
      if (!v24)
      {
        goto LABEL_10;
      }

      v31 = objc_msgSend_currentHandler(MEMORY[0x1E696AAA8], v26, v27);
      v32 = self;
      v28 = v31;
      objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v31, v33, a2, v32, @"CKSQLiteDatabaseManager.m", 548, @"database error: %@", v24);
    }

LABEL_10:
    objc_msgSend_setDatabaseManagerData_(v7, v26, v12);
LABEL_11:
  }

  return v12;
}

- (void)setSchedulingDataInActivity:(id)a3 date:(id)a4 coalescingInterval:(double)a5 minimumSeparation:(double)a6
{
  v23 = a3;
  v9 = a4;
  objc_msgSend_setActivityEarliestDate_(v23, v10, v9);
  v13 = objc_msgSend_numberWithDouble_(MEMORY[0x1E696AD98], v11, v12, a5);
  objc_msgSend_setCoalescingInterval_(v23, v14, v13);

  v17 = objc_msgSend_dateByAddingTimeInterval_(v9, v15, v16, a5);

  objc_msgSend_setActivityLatestDate_(v23, v18, v17);
  if (a6 > 0.0)
  {
    v21 = objc_msgSend_numberWithDouble_(MEMORY[0x1E696AD98], v19, v20, a6);
    objc_msgSend_setSeparationInterval_(v23, v22, v21);
  }
}

- (id)addActivityTriggerWithTarget:(id)a3 date:(id)a4 coalescingInterval:(double)a5 minimumSeparation:(double)a6
{
  v10 = a3;
  v11 = a4;
  v18[1] = 3221225472;
  v12 = 0.001;
  v18[0] = MEMORY[0x1E69E9820];
  v18[2] = sub_188678550;
  v18[3] = &unk_1E70C0C78;
  if (a5 > 0.0)
  {
    v12 = a5;
  }

  v18[4] = self;
  v19 = v10;
  v20 = v11;
  v21 = v12;
  v22 = a6;
  v13 = v11;
  v14 = v10;
  v16 = objc_msgSend_performInTransaction_(self, v15, v18);

  return v16;
}

- (id)target:(id)a3 group:(id)a4 willRunActivity:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v13 = objc_msgSend_db(self, v11, v12);
  v14 = _CKSQLDBSerializerLock(v13 + 8);

  if (v8)
  {
    v19 = objc_msgSend_databaseManagerData(v8, v15, v16);
    if (!v19)
    {
      v20 = objc_msgSend_name(v9, v17, v18);
      objc_msgSend_setGroupName_(v10, v21, v20);

      v19 = v10;
      objc_msgSend_setDatabaseManagerData_(v8, v22, v19);
    }
  }

  else
  {
    v19 = v10;
  }

  v23 = objc_msgSend_date(MEMORY[0x1E695DF00], v17, v18);
  objc_msgSend_setActivityStartDate_(v19, v24, v23);

  objc_msgSend_setActivityEarliestDate_(v19, v25, 0);
  objc_msgSend_setActivityLatestDate_(v19, v26, 0);
  objc_msgSend_setCoalescingInterval_(v19, v27, 0);
  v30 = objc_msgSend_distantPast(MEMORY[0x1E695DF00], v28, v29);
  objc_msgSend_setActivityNotBeforeDate_(v19, v31, v30);

  if (v14)
  {
    v14[1].__sig = 0;
    pthread_mutex_unlock(v14);
  }

  return v19;
}

- (void)target:(id)a3 group:(id)a4 didRunActivity:(id)a5
{
  v69 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v12 = a5;
  if (!v8)
  {
    v53 = objc_msgSend_deleteObject_(self->_activities, v10, v12);
    goto LABEL_18;
  }

  v13 = objc_msgSend_db(self, v10, v11);
  v14 = _CKSQLDBSerializerLock(v13 + 8);

  v17 = objc_msgSend_separationInterval(v12, v15, v16);
  v20 = v17;
  if (v17)
  {
    objc_msgSend_doubleValue(v17, v18, v19);
    v23 = objc_msgSend_dateWithTimeIntervalSinceNow_(MEMORY[0x1E695DF00], v21, v22);
    objc_msgSend_setActivityNotBeforeDate_(v12, v24, v23);
    v27 = objc_msgSend_activityEarliestDate(v12, v25, v26);
    v29 = v27;
    if (v27 && objc_msgSend_compare_(v27, v28, v23) == -1)
    {
      if (ck_log_initialization_predicate != -1)
      {
        dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
      }

      v30 = ck_log_facility_sql;
      if (os_log_type_enabled(v30, OS_LOG_TYPE_DEBUG))
      {
        v62 = objc_msgSend_targetDescription(v12, v31, v32);
        v63 = 138543874;
        v64 = v29;
        v65 = 2114;
        v66 = v23;
        v67 = 2114;
        v68 = v62;
        _os_log_debug_impl(&dword_1883EA000, v30, OS_LOG_TYPE_DEBUG, "CKSQLiteDatabaseManager rescheduled activity: %{public}@ -> %{public}@ for %{public}@", &v63, 0x20u);
      }

      v35 = objc_msgSend_coalescingInterval(v12, v33, v34);
      objc_msgSend_doubleValue(v35, v36, v37);
      v39 = v38;
      v42 = objc_msgSend_separationInterval(v12, v40, v41);
      objc_msgSend_doubleValue(v42, v43, v44);
      objc_msgSend_setSchedulingDataInActivity_date_coalescingInterval_minimumSeparation_(self, v45, v12, v23, v39, v46);
    }
  }

  objc_msgSend_setActivityStartDate_(v12, v18, 0);
  v49 = objc_msgSend_activityEarliestDate(v12, v47, v48);
  if (v49)
  {

LABEL_15:
    v59 = objc_msgSend_insertOrUpdateActivityDate_(self->_activities, v52, v12);
    goto LABEL_16;
  }

  v54 = objc_msgSend_activityNotBeforeDate(v12, v50, v51);
  objc_msgSend_timeIntervalSinceNow(v54, v55, v56);
  v58 = v57 > 0.0;

  if (v58)
  {
    goto LABEL_15;
  }

  v61 = objc_msgSend_deleteObject_(self->_activities, v52, v12);
LABEL_16:

  if (v14)
  {
    v14[1].__sig = 0;
    pthread_mutex_unlock(v14);
  }

LABEL_18:

  v60 = *MEMORY[0x1E69E9840];
}

- (id)earliestActivityDate
{
  v4 = objc_msgSend_db(self, a2, v2);
  v5 = _CKSQLDBSerializerLock(v4 + 8);

  v8 = objc_msgSend_earliestActivityDate(self->_activities, v6, v7);
  if (v5)
  {
    v5[1].__sig = 0;
    pthread_mutex_unlock(v5);
  }

  return v8;
}

- (void)runActivities:(id)a3
{
  v87 = *MEMORY[0x1E69E9840];
  v4 = a3;
  context = objc_autoreleasePoolPush();
  v69 = os_transaction_create();
  v71 = v4;
  objc_msgSend_activitiesStartingBeforeDate_(self, v5, v4);
  v78 = 0u;
  v79 = 0u;
  v76 = 0u;
  obj = v77 = 0u;
  v73 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v6, &v76, v86, 16);
  if (v73)
  {
    v7 = 0;
    v74 = 0;
    v8 = 0;
    v9 = &unk_1EFA852F0;
    v72 = *v77;
    while (1)
    {
      v10 = 0;
      do
      {
        if (*v77 != v72)
        {
          objc_enumerationMutation(obj);
        }

        v11 = *(*(&v76 + 1) + 8 * v10);

        v12 = objc_autoreleasePoolPush();
        v15 = objc_msgSend_databaseID(v11, v13, v14, context);
        isEqualToNumber = objc_msgSend_isEqualToNumber_(v9, v16, v15);

        if (isEqualToNumber)
        {
          v8 = v8;
          if (!v8)
          {
            goto LABEL_12;
          }
        }

        else
        {
          v31 = objc_msgSend_databaseID(v11, v18, v19);

          v33 = objc_msgSend_databaseWithID_(self->_registry, v32, v31);

          v9 = v31;
          v8 = v33;
          if (!v33)
          {
LABEL_12:
            v30 = 0;
            v34 = 0;
            objc_msgSend_target_group_willRunActivity_(self, v20, 0, 0, v11);
            goto LABEL_24;
          }
        }

        if (v74 && (objc_msgSend_groupID(v74, v20, v21), v22 = objc_claimAutoreleasedReturnValue(), objc_msgSend_groupID(v11, v23, v24), v25 = objc_claimAutoreleasedReturnValue(), v27 = objc_msgSend_isEqualToNumber_(v22, v26, v25), v25, v22, v27))
        {
          v30 = v74;
        }

        else
        {
          v35 = objc_msgSend_groupID(v11, v20, v21);
          v75 = 0;
          v37 = objc_msgSend_tableGroupInDatabase_withID_error_(CKSQLiteTableGroup, v36, v8, v35, &v75);
          v38 = v75;

          if (v38)
          {
            if (ck_log_initialization_predicate != -1)
            {
              dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
            }

            v39 = ck_log_facility_sql;
            if (os_log_type_enabled(ck_log_facility_sql, OS_LOG_TYPE_ERROR))
            {
              *buf = 138543362;
              v81 = v38;
              _os_log_error_impl(&dword_1883EA000, v39, OS_LOG_TYPE_ERROR, "Failed to fetch group for activity: %{public}@", buf, 0xCu);
            }
          }

          v30 = v37;

          if (!v30)
          {
            v34 = 0;
            v74 = 0;
            objc_msgSend_target_group_willRunActivity_(self, v28, 0, 0, v11);
            goto LABEL_24;
          }
        }

        v41 = objc_msgSend_tableName(v11, v28, v29);
        if (v41)
        {
          v42 = objc_msgSend_tableWithName_(v30, v40, v41);
        }

        else
        {
          v42 = v30;
        }

        v34 = v42;

        v74 = v30;
        objc_msgSend_target_group_willRunActivity_(self, v43, v34, v30, v11);
        v7 = LABEL_24:;

        if (v34)
        {
          v46 = objc_msgSend_targetDescription(v7, v44, v45);
          v47 = v9;
          if (ck_log_initialization_predicate != -1)
          {
            dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
          }

          v48 = ck_log_facility_sql;
          if (os_log_type_enabled(ck_log_facility_sql, OS_LOG_TYPE_DEBUG))
          {
            *buf = 138543362;
            v81 = v46;
            _os_log_debug_impl(&dword_1883EA000, v48, OS_LOG_TYPE_DEBUG, "Running database activity on %{public}@", buf, 0xCu);
          }

          objc_msgSend_activityTriggered_(v34, v49, v71);
          v9 = v47;
        }

        else
        {
          if (ck_log_initialization_predicate != -1)
          {
            dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
          }

          v51 = ck_log_facility_sql;
          if (os_log_type_enabled(ck_log_facility_sql, OS_LOG_TYPE_DEBUG))
          {
            *buf = 138543874;
            v81 = v7;
            v82 = 2114;
            v83 = v8;
            v84 = 2114;
            v85 = v30;
            _os_log_debug_impl(&dword_1883EA000, v51, OS_LOG_TYPE_DEBUG, "Skipped database activity %{public}@ with no target. (db = %{public}@, group = %{public}@)", buf, 0x20u);
          }
        }

        objc_msgSend_target_group_didRunActivity_(self, v50, v34, v30, v7);

        objc_autoreleasePoolPop(v12);
        ++v10;
      }

      while (v73 != v10);
      v73 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v52, &v76, v86, 16);
      if (!v73)
      {

        goto LABEL_38;
      }
    }
  }

  v74 = 0;
  v8 = 0;
  v9 = &unk_1EFA852F0;
LABEL_38:

  v55 = objc_msgSend_db(self, v53, v54);
  v56 = _CKSQLDBSerializerLock(v55 + 8);

  v59 = objc_msgSend_earliestActivityDate(self, v57, v58);
  v62 = objc_msgSend_dateWithTimeIntervalSinceNow_(MEMORY[0x1E695DF00], v60, v61, 1.0);
  v64 = objc_msgSend_laterDate_(v59, v63, v62);

  objc_msgSend_scheduleActivityDate_(self, v65, v64);
  if (ck_log_initialization_predicate != -1)
  {
    dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
  }

  v66 = ck_log_facility_sql;
  if (os_log_type_enabled(ck_log_facility_sql, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_debug_impl(&dword_1883EA000, v66, OS_LOG_TYPE_DEBUG, "CKSQLiteDatabaseManager finished running activities", buf, 2u);
  }

  if (v56)
  {
    v56[1].__sig = 0;
    pthread_mutex_unlock(v56);
  }

  objc_autoreleasePoolPop(context);
  v67 = *MEMORY[0x1E69E9840];
}

- (id)nextActivityDateForTarget:(id)a3
{
  v7 = a3;
  if ((byte_1EA919CC8 & 1) == 0)
  {
    v15 = objc_msgSend_currentHandler(MEMORY[0x1E696AAA8], v5, v6);
    objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v15, v16, a2, self, @"CKSQLiteDatabaseManager.m", 762, @"Only for unit tests");
  }

  v21 = 0;
  v22 = &v21;
  v23 = 0x3032000000;
  v24 = sub_1883EE1EC;
  v25 = sub_1883EF79C;
  v26 = 0;
  timer = self->_timer;
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = sub_188679724;
  v17[3] = &unk_1E70C03F0;
  v17[4] = self;
  v9 = v7;
  v10 = v9;
  v19 = &v21;
  v20 = a2;
  v18 = v9;
  if (timer)
  {
    dispatch_sync(timer->_activityQueue, v17);
    v11 = v22[5];
    v12 = v18;
  }

  else
  {
    v11 = 0;
    v12 = v9;
  }

  v13 = v11;

  _Block_object_dispose(&v21, 8);

  return v13;
}

- (void)waitForTargetActivityComplete:(id)a3
{
  v27 = *MEMORY[0x1E69E9840];
  v7 = a3;
  if ((byte_1EA919CC8 & 1) == 0)
  {
    v23 = objc_msgSend_currentHandler(MEMORY[0x1E696AAA8], v5, v6);
    objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v23, v24, a2, self, @"CKSQLiteDatabaseManager.m", 776, @"Only for unit tests");
  }

  if (ck_log_initialization_predicate != -1)
  {
    dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
  }

  v8 = ck_log_facility_sql;
  if (os_log_type_enabled(ck_log_facility_sql, OS_LOG_TYPE_DEBUG))
  {
    v17 = v8;
    v18 = objc_opt_class();
    v19 = NSStringFromClass(v18);
    v25 = 138412290;
    v26 = v19;
    _os_log_debug_impl(&dword_1883EA000, v17, OS_LOG_TYPE_DEBUG, "%@ started waiting for complete", &v25, 0xCu);
  }

  v10 = objc_msgSend_nextActivityDateForTarget_(self, v9, v7);
  if (v10)
  {
    v12 = v10;
    do
    {
      objc_msgSend_sleepUntilDate_(MEMORY[0x1E696AF00], v11, v12);
      v14 = objc_msgSend_nextActivityDateForTarget_(self, v13, v7);

      v12 = v14;
    }

    while (v14);
  }

  if (ck_log_initialization_predicate != -1)
  {
    dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
  }

  v15 = ck_log_facility_sql;
  if (os_log_type_enabled(ck_log_facility_sql, OS_LOG_TYPE_DEBUG))
  {
    v20 = v15;
    v21 = objc_opt_class();
    v22 = NSStringFromClass(v21);
    v25 = 138412290;
    v26 = v22;
    _os_log_debug_impl(&dword_1883EA000, v20, OS_LOG_TYPE_DEBUG, "%@ finished waiting for complete", &v25, 0xCu);
  }

  v16 = *MEMORY[0x1E69E9840];
}

- (void)waitForComplete
{
  v33 = *MEMORY[0x1E69E9840];
  if ((byte_1EA919CC8 & 1) == 0)
  {
    v27 = objc_msgSend_currentHandler(MEMORY[0x1E696AAA8], a2, v2);
    objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v27, v28, a2, self, @"CKSQLiteDatabaseManager.m", 789, @"Only for unit tests");
  }

  v4 = objc_msgSend_date(MEMORY[0x1E695DF00], a2, v2);
  if (ck_log_initialization_predicate != -1)
  {
    dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
  }

  v5 = ck_log_facility_sql;
  if (os_log_type_enabled(ck_log_facility_sql, OS_LOG_TYPE_DEBUG))
  {
    v16 = v5;
    v17 = objc_opt_class();
    v18 = NSStringFromClass(v17);
    v29 = 138412290;
    v30 = v18;
    _os_log_debug_impl(&dword_1883EA000, v16, OS_LOG_TYPE_DEBUG, "%@ started waiting for complete", &v29, 0xCu);
  }

  v8 = objc_msgSend_earliestActivityDate(self, v6, v7);
  if (v8)
  {
    v10 = v8;
    do
    {
      objc_msgSend_sleepUntilDate_(MEMORY[0x1E696AF00], v9, v10);
      v13 = objc_msgSend_earliestActivityDate(self, v11, v12);

      v10 = v13;
    }

    while (v13);
  }

  if (ck_log_initialization_predicate != -1)
  {
    dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
  }

  v14 = ck_log_facility_sql;
  if (os_log_type_enabled(ck_log_facility_sql, OS_LOG_TYPE_DEBUG))
  {
    v19 = v14;
    v20 = objc_opt_class();
    v21 = NSStringFromClass(v20);
    objc_msgSend_timeIntervalSinceNow(v4, v22, v23);
    v25 = CKDescriptionForTimeInterval(-v24);
    v29 = 138412546;
    v30 = v21;
    v31 = 2114;
    v32 = v25;
    _os_log_debug_impl(&dword_1883EA000, v19, OS_LOG_TYPE_DEBUG, "%@ finished waiting for complete (%{public}@)", &v29, 0x16u);
  }

  v15 = *MEMORY[0x1E69E9840];
}

- (void)flush
{
  v34 = *MEMORY[0x1E69E9840];
  if ((byte_1EA919CC8 & 1) == 0)
  {
    v26 = objc_msgSend_currentHandler(MEMORY[0x1E696AAA8], a2, v2);
    objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v26, v27, a2, self, @"CKSQLiteDatabaseManager.m", 803, @"Only for unit tests");
  }

  if (ck_log_initialization_predicate != -1)
  {
    dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
  }

  v5 = ck_log_facility_sql;
  if (os_log_type_enabled(ck_log_facility_sql, OS_LOG_TYPE_DEBUG))
  {
    v20 = v5;
    v21 = objc_opt_class();
    v22 = NSStringFromClass(v21);
    *buf = 138412290;
    v33 = v22;
    _os_log_debug_impl(&dword_1883EA000, v20, OS_LOG_TYPE_DEBUG, "%@ started flush", buf, 0xCu);
  }

  v8 = 0;
  do
  {
    v9 = objc_msgSend_earliestActivityDate(self, v6, v7);

    if (v9)
    {
      v12 = MEMORY[0x1E69E9820];
      do
      {
        timer = self->_timer;
        block[0] = v12;
        block[1] = 3221225472;
        block[2] = sub_18867A03C;
        block[3] = &unk_1E70BC388;
        block[4] = self;
        if (timer)
        {
          dispatch_sync(timer->_activityQueue, block);
        }

        v14 = objc_msgSend_earliestActivityDate(self, v10, v11);
      }

      while (v14);
    }

    activities = self->_activities;
    v30 = v8;
    hasPendingActivities = objc_msgSend_hasPendingActivities_(activities, v10, &v30);
    v17 = v30;

    v8 = v17;
  }

  while ((hasPendingActivities & 1) != 0);
  if (v17)
  {
    v28 = objc_msgSend_currentHandler(MEMORY[0x1E696AAA8], v6, v7);
    objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v28, v29, a2, self, @"CKSQLiteDatabaseManager.m", 817, @"Error waiting for complete", v17);
  }

  if (ck_log_initialization_predicate != -1)
  {
    dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
  }

  v18 = ck_log_facility_sql;
  if (os_log_type_enabled(ck_log_facility_sql, OS_LOG_TYPE_DEBUG))
  {
    v23 = v18;
    v24 = objc_opt_class();
    v25 = NSStringFromClass(v24);
    *buf = 138412290;
    v33 = v25;
    _os_log_debug_impl(&dword_1883EA000, v23, OS_LOG_TYPE_DEBUG, "%@ finished flush", buf, 0xCu);
  }

  v19 = *MEMORY[0x1E69E9840];
}

@end