@interface CKSyncEngineRecordZoneChangeBatch
- (CKSyncEngineRecordZoneChangeBatch)init;
- (CKSyncEngineRecordZoneChangeBatch)initWithRecordsToSave:(NSArray *)recordsToSave recordIDsToDelete:(NSArray *)recordIDsToDelete atomicByZone:(BOOL)atomicByZone;
- (CKSyncEngineRecordZoneChangeBatch)initWith__pendingChanges:(id)a3 recordProvider:(id)a4;
- (void)CKDescribePropertiesUsing:(id)a3;
@end

@implementation CKSyncEngineRecordZoneChangeBatch

- (CKSyncEngineRecordZoneChangeBatch)initWith__pendingChanges:(id)a3 recordProvider:(id)a4
{
  v5 = _Block_copy(a4);
  sub_1883F4C5C(0, &qword_1EA90C7C0, off_1E70BA890);
  v6 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  sub_18842E524(v6, self, v5);
  return result;
}

- (CKSyncEngineRecordZoneChangeBatch)initWithRecordsToSave:(NSArray *)recordsToSave recordIDsToDelete:(NSArray *)recordIDsToDelete atomicByZone:(BOOL)atomicByZone
{
  v8 = recordsToSave;
  v9 = recordIDsToDelete;
  v23.receiver = self;
  v23.super_class = CKSyncEngineRecordZoneChangeBatch;
  v12 = [(CKSyncEngineRecordZoneChangeBatch *)&v23 init];
  if (v12)
  {
    v13 = objc_msgSend_copy(v8, v10, v11);
    v14 = v13;
    v15 = MEMORY[0x1E695E0F0];
    if (v13)
    {
      v16 = v13;
    }

    else
    {
      v16 = MEMORY[0x1E695E0F0];
    }

    objc_storeStrong(&v12->_recordsToSave, v16);

    v19 = objc_msgSend_copy(v9, v17, v18);
    v20 = v19;
    if (v19)
    {
      v21 = v19;
    }

    else
    {
      v21 = v15;
    }

    objc_storeStrong(&v12->_recordIDsToDelete, v21);

    v12->_atomicByZone = atomicByZone;
  }

  return v12;
}

- (CKSyncEngineRecordZoneChangeBatch)init
{
  v2 = [CKException alloc];
  v3 = *MEMORY[0x1E695D940];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v7 = objc_msgSend_initWithName_format_(v2, v6, v3, @"[%@ init] is unavailable", v5);
  v8 = v7;

  objc_exception_throw(v7);
}

- (void)CKDescribePropertiesUsing:(id)a3
{
  v29 = a3;
  v6 = objc_msgSend_recordsToSave(self, v4, v5);
  v9 = objc_msgSend_count(v6, v7, v8);

  if (v9)
  {
    v12 = objc_msgSend_recordsToSave(self, v10, v11);
    v14 = objc_msgSend_CKMap_(v12, v13, &unk_1EFA2FD28);

    objc_msgSend_addProperty_value_shouldRedact_(v29, v15, @"recordIDsToSave", v14, 0);
  }

  v16 = objc_msgSend_recordIDsToDelete(self, v10, v11);
  v19 = objc_msgSend_count(v16, v17, v18);

  if (v19)
  {
    v22 = objc_msgSend_recordIDsToDelete(self, v20, v21);
    objc_msgSend_addProperty_value_shouldRedact_(v29, v23, @"recordIDsToDelete", v22, 0);
  }

  v24 = MEMORY[0x1E696AD98];
  v25 = objc_msgSend_atomicByZone(self, v20, v21);
  v27 = objc_msgSend_numberWithBool_(v24, v26, v25);
  objc_msgSend_addProperty_value_shouldRedact_(v29, v28, @"atomicByZone", v27, 0);
}

@end