@interface CKSyncEngineBatch
+ (void)initialize;
- (CKSyncEngineBatch)initWithRecordsToSave:(id)save recordIDsToDelete:(id)delete;
- (id)CKDescriptionPropertiesWithPublic:(BOOL)public private:(BOOL)private shouldExpand:(BOOL)expand;
@end

@implementation CKSyncEngineBatch

+ (void)initialize
{
  v2 = objc_opt_class();
  v3 = objc_opt_self();

  sub_1886CEE50(v3, v2, 0, 0, 0);
}

- (CKSyncEngineBatch)initWithRecordsToSave:(id)save recordIDsToDelete:(id)delete
{
  saveCopy = save;
  deleteCopy = delete;
  v21.receiver = self;
  v21.super_class = CKSyncEngineBatch;
  v8 = [(CKSyncEngineBatch *)&v21 init];
  v11 = v8;
  if (v8)
  {
    v8->_atomic = 1;
    v12 = objc_msgSend_copy(saveCopy, v9, v10);
    recordsToSave = v11->_recordsToSave;
    v11->_recordsToSave = v12;

    v16 = objc_msgSend_copy(deleteCopy, v14, v15);
    recordIDsToDelete = v11->_recordIDsToDelete;
    v11->_recordIDsToDelete = v16;

    savedRecords = v11->_savedRecords;
    v11->_savedRecords = 0;

    deletedRecordIDs = v11->_deletedRecordIDs;
    v11->_deletedRecordIDs = 0;

    v11->_customBatch = 0;
  }

  return v11;
}

- (id)CKDescriptionPropertiesWithPublic:(BOOL)public private:(BOOL)private shouldExpand:(BOOL)expand
{
  v6 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v9 = objc_msgSend_recordsToSave(self, v7, v8);
  v12 = objc_msgSend_count(v9, v10, v11);

  if (v12)
  {
    v15 = objc_msgSend_recordsToSave(self, v13, v14);
    v17 = objc_msgSend_CKMap_(v15, v16, &unk_1EFA2FCA8);
    objc_msgSend_setObject_forKeyedSubscript_(v6, v18, v17, @"recordIDsToSave");
  }

  v19 = objc_msgSend_recordIDsToDelete(self, v13, v14);
  v22 = objc_msgSend_count(v19, v20, v21);

  if (v22)
  {
    v25 = objc_msgSend_recordIDsToDelete(self, v23, v24);
    objc_msgSend_setObject_forKeyedSubscript_(v6, v26, v25, @"recordIDsToDelete");
  }

  v27 = objc_msgSend_savedRecords(self, v23, v24);
  v30 = objc_msgSend_count(v27, v28, v29);

  if (v30)
  {
    v33 = objc_msgSend_savedRecords(self, v31, v32);
    v35 = objc_msgSend_CKMap_(v33, v34, &unk_1EFA2FCC8);
    objc_msgSend_setObject_forKeyedSubscript_(v6, v36, v35, @"savedRecordIDs");
  }

  v37 = objc_msgSend_deletedRecordIDs(self, v31, v32);
  v40 = objc_msgSend_count(v37, v38, v39);

  if (v40)
  {
    v43 = objc_msgSend_deletedRecordIDs(self, v41, v42);
    objc_msgSend_setObject_forKeyedSubscript_(v6, v44, v43, @"deletedRecordIDs");
  }

  v45 = MEMORY[0x1E696AD98];
  isAtomic = objc_msgSend_isAtomic(self, v41, v42);
  v48 = objc_msgSend_numberWithBool_(v45, v47, isAtomic);
  objc_msgSend_setObject_forKeyedSubscript_(v6, v49, v48, @"atomicByZone");

  return v6;
}

@end