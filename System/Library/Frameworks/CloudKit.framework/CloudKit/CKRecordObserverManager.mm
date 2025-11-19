@interface CKRecordObserverManager
+ (CKRecordObserverManager)sharedManager;
- (CKRecordObserverManager)init;
- (void)addRecordObserver:(id)a3 block:(id)a4;
- (void)handleRecordChange:(id)a3 container:(id)a4 completionHandler:(id)a5;
- (void)removeRecordObserver:(id)a3;
@end

@implementation CKRecordObserverManager

+ (CKRecordObserverManager)sharedManager
{
  if (qword_1ED4B62B0 != -1)
  {
    dispatch_once(&qword_1ED4B62B0, &unk_1EFA2FB88);
  }

  v3 = qword_1ED4B62A8;

  return v3;
}

- (CKRecordObserverManager)init
{
  v10.receiver = self;
  v10.super_class = CKRecordObserverManager;
  v2 = [(CKRecordObserverManager *)&v10 init];
  if (v2)
  {
    v3 = dispatch_queue_create("com.apple.cloudkit.recordObserver", 0);
    queue = v2->_queue;
    v2->_queue = v3;

    v7 = objc_msgSend_weakToStrongObjectsMapTable(MEMORY[0x1E696AD18], v5, v6);
    recordObservers = v2->_recordObservers;
    v2->_recordObservers = v7;
  }

  return v2;
}

- (void)addRecordObserver:(id)a3 block:(id)a4
{
  v17 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  if (ck_log_initialization_predicate != -1)
  {
    dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
  }

  v8 = ck_log_facility_ck;
  if (os_log_type_enabled(ck_log_facility_ck, OS_LOG_TYPE_DEFAULT))
  {
    v15 = 138412290;
    v16 = v6;
    _os_log_impl(&dword_1883EA000, v8, OS_LOG_TYPE_DEFAULT, "Adding record observer: %@", &v15, 0xCu);
  }

  v9 = self;
  objc_sync_enter(v9);
  if (v9)
  {
    recordObservers = v9->_recordObservers;
  }

  else
  {
    recordObservers = 0;
  }

  v11 = recordObservers;
  v12 = _Block_copy(v7);
  objc_msgSend_setObject_forKey_(v11, v13, v12, v6);

  objc_sync_exit(v9);
  v14 = *MEMORY[0x1E69E9840];
}

- (void)removeRecordObserver:(id)a3
{
  v13 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (ck_log_initialization_predicate != -1)
  {
    dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
  }

  v5 = ck_log_facility_ck;
  if (os_log_type_enabled(ck_log_facility_ck, OS_LOG_TYPE_DEFAULT))
  {
    v11 = 138412290;
    v12 = v4;
    _os_log_impl(&dword_1883EA000, v5, OS_LOG_TYPE_DEFAULT, "Removing record observer: %@", &v11, 0xCu);
  }

  v6 = self;
  objc_sync_enter(v6);
  if (v6)
  {
    recordObservers = v6->_recordObservers;
  }

  else
  {
    recordObservers = 0;
  }

  v8 = recordObservers;
  objc_msgSend_removeObjectForKey_(v8, v9, v4);

  objc_sync_exit(v6);
  v10 = *MEMORY[0x1E69E9840];
}

- (void)handleRecordChange:(id)a3 container:(id)a4 completionHandler:(id)a5
{
  v45 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v27 = a4;
  v28 = a5;
  if (v8)
  {
    v9 = self;
    objc_sync_enter(v9);
    if (v9)
    {
      recordObservers = v9->_recordObservers;
    }

    else
    {
      recordObservers = 0;
    }

    v11 = recordObservers;
    v40[0] = MEMORY[0x1E69E9820];
    v40[1] = 3221225472;
    v40[2] = sub_188644268;
    v40[3] = &unk_1E70BFCD8;
    v41 = v27;
    v12 = v8;
    v42 = v12;
    v14 = objc_msgSend_CKFlatMap_(v11, v13, v40);

    objc_sync_exit(v9);
    v15 = dispatch_group_create();
    v36 = 0u;
    v37 = 0u;
    v38 = 0u;
    v39 = 0u;
    obj = v14;
    v17 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v16, &v36, v44, 16);
    if (v17)
    {
      v18 = *v37;
      do
      {
        v19 = 0;
        do
        {
          if (*v37 != v18)
          {
            objc_enumerationMutation(obj);
          }

          v20 = *(*(&v36 + 1) + 8 * v19);
          dispatch_group_enter(v15);
          if (v9)
          {
            queue = v9->_queue;
          }

          else
          {
            queue = 0;
          }

          block[0] = MEMORY[0x1E69E9820];
          block[1] = 3221225472;
          block[2] = sub_1886444CC;
          block[3] = &unk_1E70BC338;
          v33 = v12;
          v35 = v20;
          v34 = v15;
          dispatch_async(queue, block);

          ++v19;
        }

        while (v17 != v19);
        v23 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v22, &v36, v44, 16);
        v17 = v23;
      }

      while (v23);
    }

    if (v28)
    {
      if (v9)
      {
        v9 = v9->_queue;
      }

      v30[0] = MEMORY[0x1E69E9820];
      v30[1] = 3221225472;
      v30[2] = sub_1886445C0;
      v30[3] = &unk_1E70BC2C0;
      v31 = v28;
      dispatch_group_notify(v15, &v9->super, v30);
    }
  }

  else
  {
    if (ck_log_initialization_predicate != -1)
    {
      dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
    }

    v24 = ck_log_facility_ck;
    if (os_log_type_enabled(ck_log_facility_ck, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_1883EA000, v24, OS_LOG_TYPE_INFO, "Received a nil recordChange", buf, 2u);
    }

    if (v28)
    {
      (*(v28 + 2))(v28, v25);
    }
  }

  v26 = *MEMORY[0x1E69E9840];
}

@end