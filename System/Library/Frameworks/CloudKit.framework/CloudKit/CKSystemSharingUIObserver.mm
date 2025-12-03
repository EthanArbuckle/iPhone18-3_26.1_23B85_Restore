@interface CKSystemSharingUIObserver
+ (void)initialize;
- (CKSystemSharingUIObserver)initWithContainer:(CKContainer *)container;
- (void)_locked_handleSharingUIUpdatedShare:(id)share recordID:(id)d isDeleted:(BOOL)deleted error:(id)error;
- (void)handleSharingUIUpdatedShare:(id)share recordID:(id)d isDeleted:(BOOL)deleted error:(id)error;
- (void)setSystemSharingUIDidSaveShareBlock:(void *)systemSharingUIDidSaveShareBlock;
- (void)setSystemSharingUIDidStopSharingBlock:(void *)systemSharingUIDidStopSharingBlock;
- (void)systemSharingUIDidSaveShareBlock;
- (void)systemSharingUIDidStopSharingBlock;
@end

@implementation CKSystemSharingUIObserver

+ (void)initialize
{
  v2 = objc_opt_class();
  v3 = objc_opt_self();

  sub_1886CEE50(v3, v2, 0, 0, 0);
}

- (CKSystemSharingUIObserver)initWithContainer:(CKContainer *)container
{
  v5 = container;
  v22.receiver = self;
  v22.super_class = CKSystemSharingUIObserver;
  v6 = [(CKSystemSharingUIObserver *)&v22 init];
  if (v6)
  {
    v7 = objc_alloc(MEMORY[0x1E696AEC0]);
    v8 = objc_opt_class();
    v9 = NSStringFromClass(v8);
    v11 = objc_msgSend_initWithFormat_(v7, v10, @"com.apple.cloudkit.%@.%p", v9, v6);

    v12 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v13 = dispatch_queue_attr_make_initially_inactive(v12);

    v14 = dispatch_queue_attr_make_with_qos_class(v13, QOS_CLASS_UNSPECIFIED, 0);

    v17 = objc_msgSend_UTF8String(v11, v15, v16);
    v18 = dispatch_queue_create(v17, v14);
    v19 = *(v6 + 3);
    *(v6 + 3) = v18;

    dispatch_queue_set_specific(*(v6 + 3), "com.apple.cloudkit.systemSharingUIObserver.callbackQueue", 1, 0);
    dispatch_activate(*(v6 + 3));
    objc_storeStrong(v6 + 4, container);
    objc_msgSend_registerSystemSharingUIObserver_(*(v6 + 4), v20, v6);
  }

  return v6;
}

- (void)setSystemSharingUIDidSaveShareBlock:(void *)systemSharingUIDidSaveShareBlock
{
  v4 = systemSharingUIDidSaveShareBlock;
  if (!dispatch_get_specific("com.apple.cloudkit.systemSharingUIObserver.callbackQueue"))
  {
    v9 = objc_msgSend_callbackQueue(self, v5, v6);
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = sub_18859E5AC;
    v10[3] = &unk_1E70BC940;
    v10[4] = self;
    v11 = v4;
    dispatch_sync(v9, v10);

    v8 = v11;
    goto LABEL_5;
  }

  if (self->_systemSharingUIDidSaveShareBlock != v4)
  {
    v7 = objc_msgSend_copy(v4, v5, v6);
    v8 = self->_systemSharingUIDidSaveShareBlock;
    self->_systemSharingUIDidSaveShareBlock = v7;
LABEL_5:
  }
}

- (void)systemSharingUIDidSaveShareBlock
{
  if (dispatch_get_specific("com.apple.cloudkit.systemSharingUIObserver.callbackQueue"))
  {
    v5 = _Block_copy(self->_systemSharingUIDidSaveShareBlock);
  }

  else
  {
    v9 = 0;
    v10 = &v9;
    v11 = 0x3032000000;
    v12 = sub_1883ED8E0;
    v13 = sub_1883EF5C4;
    v14 = 0;
    v6 = objc_msgSend_callbackQueue(self, v3, v4);
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = sub_18859E748;
    v8[3] = &unk_1E70BE500;
    v8[4] = self;
    v8[5] = &v9;
    dispatch_sync(v6, v8);

    v5 = _Block_copy(v10[5]);
    _Block_object_dispose(&v9, 8);
  }

  return v5;
}

- (void)setSystemSharingUIDidStopSharingBlock:(void *)systemSharingUIDidStopSharingBlock
{
  v4 = systemSharingUIDidStopSharingBlock;
  if (!dispatch_get_specific("com.apple.cloudkit.systemSharingUIObserver.callbackQueue"))
  {
    v9 = objc_msgSend_callbackQueue(self, v5, v6);
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = sub_18859E878;
    v10[3] = &unk_1E70BC940;
    v10[4] = self;
    v11 = v4;
    dispatch_sync(v9, v10);

    v8 = v11;
    goto LABEL_5;
  }

  if (self->_systemSharingUIDidStopSharingBlock != v4)
  {
    v7 = objc_msgSend_copy(v4, v5, v6);
    v8 = self->_systemSharingUIDidStopSharingBlock;
    self->_systemSharingUIDidStopSharingBlock = v7;
LABEL_5:
  }
}

- (void)systemSharingUIDidStopSharingBlock
{
  if (dispatch_get_specific("com.apple.cloudkit.systemSharingUIObserver.callbackQueue"))
  {
    v5 = _Block_copy(self->_systemSharingUIDidStopSharingBlock);
  }

  else
  {
    v9 = 0;
    v10 = &v9;
    v11 = 0x3032000000;
    v12 = sub_1883ED8E0;
    v13 = sub_1883EF5C4;
    v14 = 0;
    v6 = objc_msgSend_callbackQueue(self, v3, v4);
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = sub_18859EA14;
    v8[3] = &unk_1E70BE500;
    v8[4] = self;
    v8[5] = &v9;
    dispatch_sync(v6, v8);

    v5 = _Block_copy(v10[5]);
    _Block_object_dispose(&v9, 8);
  }

  return v5;
}

- (void)handleSharingUIUpdatedShare:(id)share recordID:(id)d isDeleted:(BOOL)deleted error:(id)error
{
  shareCopy = share;
  dCopy = d;
  errorCopy = error;
  v15 = objc_msgSend_callbackQueue(self, v13, v14);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_18859EB68;
  block[3] = &unk_1E70BE528;
  block[4] = self;
  v20 = shareCopy;
  deletedCopy = deleted;
  v21 = dCopy;
  v22 = errorCopy;
  v16 = errorCopy;
  v17 = dCopy;
  v18 = shareCopy;
  dispatch_sync(v15, block);
}

- (void)_locked_handleSharingUIUpdatedShare:(id)share recordID:(id)d isDeleted:(BOOL)deleted error:(id)error
{
  deletedCopy = deleted;
  v48 = *MEMORY[0x1E69E9840];
  shareCopy = share;
  dCopy = d;
  errorCopy = error;
  if (dCopy)
  {
    v15 = dCopy;
  }

  else
  {
    v15 = objc_msgSend_recordID(shareCopy, v12, v13);
  }

  v16 = v15;
  if (ck_log_initialization_predicate != -1)
  {
    dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
  }

  v17 = ck_log_facility_ck;
  if (os_log_type_enabled(ck_log_facility_ck, OS_LOG_TYPE_DEBUG))
  {
    v35 = @"NO";
    v40 = 138412802;
    v41 = v16;
    if (deletedCopy)
    {
      v35 = @"YES";
    }

    v42 = 2114;
    v43 = v35;
    v44 = 2112;
    v45 = errorCopy;
    _os_log_debug_impl(&dword_1883EA000, v17, OS_LOG_TYPE_DEBUG, "Handle sharing UI updated called with share: %@, deleted: %{public}@, error: %@", &v40, 0x20u);
  }

  if (!deletedCopy)
  {
    v25 = objc_msgSend_systemSharingUIDidSaveShareBlock(self, v18, v19);
    if (v25)
    {
      v23 = v25;
      v24 = objc_msgSend_CKClientSuitableError(errorCopy, v26, v27);
      (v23)[2](v23, v16, shareCopy, v24);
      goto LABEL_12;
    }

    if (ck_log_initialization_predicate != -1)
    {
      dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
    }

    v28 = ck_log_facility_ck;
    if (!os_log_type_enabled(ck_log_facility_ck, OS_LOG_TYPE_DEBUG))
    {
LABEL_30:
      v23 = 0;
      goto LABEL_31;
    }

    v36 = @" RecordID: ";
    if (!v16)
    {
      v36 = &stru_1EFA32970;
    }

    v40 = 138544130;
    v41 = v36;
    v37 = @" Error: ";
    if (v16)
    {
      v38 = v16;
    }

    else
    {
      v38 = &stru_1EFA32970;
    }

    v42 = 2112;
    v43 = v38;
    if (!errorCopy)
    {
      v37 = &stru_1EFA32970;
    }

    v44 = 2114;
    v45 = v37;
    if (errorCopy)
    {
      v39 = errorCopy;
    }

    else
    {
      v39 = &stru_1EFA32970;
    }

    v46 = 2112;
    v47 = v39;
    v33 = "Sharing UI observer received update but no systemSharingUIDidSaveShareBlock set.%{public}@%@%{public}@%@";
LABEL_46:
    _os_log_debug_impl(&dword_1883EA000, v28, OS_LOG_TYPE_DEBUG, v33, &v40, 0x2Au);
    goto LABEL_30;
  }

  v20 = objc_msgSend_systemSharingUIDidStopSharingBlock(self, v18, v19);
  if (!v20)
  {
    if (ck_log_initialization_predicate != -1)
    {
      dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
    }

    v28 = ck_log_facility_ck;
    if (!os_log_type_enabled(ck_log_facility_ck, OS_LOG_TYPE_DEBUG))
    {
      goto LABEL_30;
    }

    v29 = @" RecordID: ";
    if (!v16)
    {
      v29 = &stru_1EFA32970;
    }

    v40 = 138544130;
    v41 = v29;
    v30 = @" Error: ";
    if (v16)
    {
      v31 = v16;
    }

    else
    {
      v31 = &stru_1EFA32970;
    }

    v42 = 2112;
    v43 = v31;
    if (!errorCopy)
    {
      v30 = &stru_1EFA32970;
    }

    v44 = 2114;
    v45 = v30;
    if (errorCopy)
    {
      v32 = errorCopy;
    }

    else
    {
      v32 = &stru_1EFA32970;
    }

    v46 = 2112;
    v47 = v32;
    v33 = "Sharing UI observer received delete but no systemSharingUIDidStopSharingBlock set.%{public}@%@%{public}@%@";
    goto LABEL_46;
  }

  v23 = v20;
  v24 = objc_msgSend_CKClientSuitableError(errorCopy, v21, v22);
  (v23[2])(v23, v16, v24);
LABEL_12:

LABEL_31:
  v34 = *MEMORY[0x1E69E9840];
}

@end