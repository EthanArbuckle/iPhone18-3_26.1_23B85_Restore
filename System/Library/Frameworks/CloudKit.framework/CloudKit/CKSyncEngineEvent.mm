@interface CKSyncEngineEvent
+ (void)initialize;
- (CKSyncEngineAccountChangeEvent)accountChangeEvent;
- (CKSyncEngineDidFetchAssetEvent)didFetchAssetEvent;
- (CKSyncEngineDidFetchChangesEvent)didFetchChangesEvent;
- (CKSyncEngineDidFetchRecordZoneChangesEvent)didFetchRecordZoneChangesEvent;
- (CKSyncEngineDidSendChangesEvent)didSendChangesEvent;
- (CKSyncEngineEventType)type;
- (CKSyncEngineFetchedAssetEvent)fetchedAssetEvent;
- (CKSyncEngineFetchedDatabaseChangesEvent)fetchedDatabaseChangesEvent;
- (CKSyncEngineFetchedRecordZoneChangesEvent)fetchedRecordZoneChangesEvent;
- (CKSyncEngineSentDatabaseChangesEvent)sentDatabaseChangesEvent;
- (CKSyncEngineSentRecordZoneChangesEvent)sentRecordZoneChangesEvent;
- (CKSyncEngineStateUpdateEvent)stateUpdateEvent;
- (CKSyncEngineWillFetchAssetEvent)willFetchAssetEvent;
- (CKSyncEngineWillFetchChangesEvent)willFetchChangesEvent;
- (CKSyncEngineWillFetchRecordZoneChangesEvent)willFetchRecordZoneChangesEvent;
- (CKSyncEngineWillSendChangesEvent)willSendChangesEvent;
- (id)CKDescriptionClassName;
- (id)initInternal;
@end

@implementation CKSyncEngineEvent

- (id)initInternal
{
  v3.receiver = self;
  v3.super_class = CKSyncEngineEvent;
  return [(CKSyncEngineEvent *)&v3 init];
}

- (id)CKDescriptionClassName
{
  v2 = objc_opt_class();
  v3 = NSStringFromClass(v2);
  v5 = objc_msgSend_stringByReplacingOccurrencesOfString_withString_(v3, v4, @"CKSyncEngine", &stru_1EFA32970);

  return v5;
}

+ (void)initialize
{
  v7[15] = *MEMORY[0x1E69E9840];
  v3 = objc_opt_class();
  v7[0] = objc_opt_class();
  v7[1] = objc_opt_class();
  v7[2] = objc_opt_class();
  v7[3] = objc_opt_class();
  v7[4] = objc_opt_class();
  v7[5] = objc_opt_class();
  v7[6] = objc_opt_class();
  v7[7] = objc_opt_class();
  v7[8] = objc_opt_class();
  v7[9] = objc_opt_class();
  v7[10] = objc_opt_class();
  v7[11] = objc_opt_class();
  v7[12] = objc_opt_class();
  v7[13] = objc_opt_class();
  v7[14] = objc_opt_class();
  v5 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x1E695DEC8], v4, v7, 15);
  sub_1886CEE50(a1, v3, v5, 0, 1);

  v6 = *MEMORY[0x1E69E9840];
}

- (CKSyncEngineEventType)type
{
  v2 = [CKException alloc];
  v3 = *MEMORY[0x1E695D920];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v7 = objc_msgSend_initWithName_format_(v2, v6, v3, @"Event type subclass doesn't implement -type: %@", v5);
  v8 = v7;

  objc_exception_throw(v7);
}

- (CKSyncEngineStateUpdateEvent)stateUpdateEvent
{
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v4 = [CKException alloc];
    v5 = *MEMORY[0x1E695D920];
    v6 = objc_opt_class();
    v7 = NSStringFromClass(v6);
    v8 = objc_opt_class();
    v9 = NSStringFromClass(v8);
    v11 = objc_msgSend_initWithName_format_(v4, v10, v5, @"Cannot cast %@ to %@", v7, v9);
    v12 = v11;

    objc_exception_throw(v11);
  }

  return self;
}

- (CKSyncEngineAccountChangeEvent)accountChangeEvent
{
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v4 = [CKException alloc];
    v5 = *MEMORY[0x1E695D920];
    v6 = objc_opt_class();
    v7 = NSStringFromClass(v6);
    v8 = objc_opt_class();
    v9 = NSStringFromClass(v8);
    v11 = objc_msgSend_initWithName_format_(v4, v10, v5, @"Cannot cast %@ to %@", v7, v9);
    v12 = v11;

    objc_exception_throw(v11);
  }

  return self;
}

- (CKSyncEngineFetchedDatabaseChangesEvent)fetchedDatabaseChangesEvent
{
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v4 = [CKException alloc];
    v5 = *MEMORY[0x1E695D920];
    v6 = objc_opt_class();
    v7 = NSStringFromClass(v6);
    v8 = objc_opt_class();
    v9 = NSStringFromClass(v8);
    v11 = objc_msgSend_initWithName_format_(v4, v10, v5, @"Cannot cast %@ to %@", v7, v9);
    v12 = v11;

    objc_exception_throw(v11);
  }

  return self;
}

- (CKSyncEngineFetchedRecordZoneChangesEvent)fetchedRecordZoneChangesEvent
{
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v4 = [CKException alloc];
    v5 = *MEMORY[0x1E695D920];
    v6 = objc_opt_class();
    v7 = NSStringFromClass(v6);
    v8 = objc_opt_class();
    v9 = NSStringFromClass(v8);
    v11 = objc_msgSend_initWithName_format_(v4, v10, v5, @"Cannot cast %@ to %@", v7, v9);
    v12 = v11;

    objc_exception_throw(v11);
  }

  return self;
}

- (CKSyncEngineSentDatabaseChangesEvent)sentDatabaseChangesEvent
{
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v4 = [CKException alloc];
    v5 = *MEMORY[0x1E695D920];
    v6 = objc_opt_class();
    v7 = NSStringFromClass(v6);
    v8 = objc_opt_class();
    v9 = NSStringFromClass(v8);
    v11 = objc_msgSend_initWithName_format_(v4, v10, v5, @"Cannot cast %@ to %@", v7, v9);
    v12 = v11;

    objc_exception_throw(v11);
  }

  return self;
}

- (CKSyncEngineSentRecordZoneChangesEvent)sentRecordZoneChangesEvent
{
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v4 = [CKException alloc];
    v5 = *MEMORY[0x1E695D920];
    v6 = objc_opt_class();
    v7 = NSStringFromClass(v6);
    v8 = objc_opt_class();
    v9 = NSStringFromClass(v8);
    v11 = objc_msgSend_initWithName_format_(v4, v10, v5, @"Cannot cast %@ to %@", v7, v9);
    v12 = v11;

    objc_exception_throw(v11);
  }

  return self;
}

- (CKSyncEngineWillFetchChangesEvent)willFetchChangesEvent
{
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v4 = [CKException alloc];
    v5 = *MEMORY[0x1E695D920];
    v6 = objc_opt_class();
    v7 = NSStringFromClass(v6);
    v8 = objc_opt_class();
    v9 = NSStringFromClass(v8);
    v11 = objc_msgSend_initWithName_format_(v4, v10, v5, @"Cannot cast %@ to %@", v7, v9);
    v12 = v11;

    objc_exception_throw(v11);
  }

  return self;
}

- (CKSyncEngineWillFetchRecordZoneChangesEvent)willFetchRecordZoneChangesEvent
{
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v4 = [CKException alloc];
    v5 = *MEMORY[0x1E695D920];
    v6 = objc_opt_class();
    v7 = NSStringFromClass(v6);
    v8 = objc_opt_class();
    v9 = NSStringFromClass(v8);
    v11 = objc_msgSend_initWithName_format_(v4, v10, v5, @"Cannot cast %@ to %@", v7, v9);
    v12 = v11;

    objc_exception_throw(v11);
  }

  return self;
}

- (CKSyncEngineDidFetchRecordZoneChangesEvent)didFetchRecordZoneChangesEvent
{
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v4 = [CKException alloc];
    v5 = *MEMORY[0x1E695D920];
    v6 = objc_opt_class();
    v7 = NSStringFromClass(v6);
    v8 = objc_opt_class();
    v9 = NSStringFromClass(v8);
    v11 = objc_msgSend_initWithName_format_(v4, v10, v5, @"Cannot cast %@ to %@", v7, v9);
    v12 = v11;

    objc_exception_throw(v11);
  }

  return self;
}

- (CKSyncEngineDidFetchChangesEvent)didFetchChangesEvent
{
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v4 = [CKException alloc];
    v5 = *MEMORY[0x1E695D920];
    v6 = objc_opt_class();
    v7 = NSStringFromClass(v6);
    v8 = objc_opt_class();
    v9 = NSStringFromClass(v8);
    v11 = objc_msgSend_initWithName_format_(v4, v10, v5, @"Cannot cast %@ to %@", v7, v9);
    v12 = v11;

    objc_exception_throw(v11);
  }

  return self;
}

- (CKSyncEngineWillSendChangesEvent)willSendChangesEvent
{
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v4 = [CKException alloc];
    v5 = *MEMORY[0x1E695D920];
    v6 = objc_opt_class();
    v7 = NSStringFromClass(v6);
    v8 = objc_opt_class();
    v9 = NSStringFromClass(v8);
    v11 = objc_msgSend_initWithName_format_(v4, v10, v5, @"Cannot cast %@ to %@", v7, v9);
    v12 = v11;

    objc_exception_throw(v11);
  }

  return self;
}

- (CKSyncEngineDidSendChangesEvent)didSendChangesEvent
{
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v4 = [CKException alloc];
    v5 = *MEMORY[0x1E695D920];
    v6 = objc_opt_class();
    v7 = NSStringFromClass(v6);
    v8 = objc_opt_class();
    v9 = NSStringFromClass(v8);
    v11 = objc_msgSend_initWithName_format_(v4, v10, v5, @"Cannot cast %@ to %@", v7, v9);
    v12 = v11;

    objc_exception_throw(v11);
  }

  return self;
}

- (CKSyncEngineWillFetchAssetEvent)willFetchAssetEvent
{
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v4 = [CKException alloc];
    v5 = *MEMORY[0x1E695D920];
    v6 = objc_opt_class();
    v7 = NSStringFromClass(v6);
    v8 = objc_opt_class();
    v9 = NSStringFromClass(v8);
    v11 = objc_msgSend_initWithName_format_(v4, v10, v5, @"Cannot cast %@ to %@", v7, v9);
    v12 = v11;

    objc_exception_throw(v11);
  }

  return self;
}

- (CKSyncEngineFetchedAssetEvent)fetchedAssetEvent
{
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v4 = [CKException alloc];
    v5 = *MEMORY[0x1E695D920];
    v6 = objc_opt_class();
    v7 = NSStringFromClass(v6);
    v8 = objc_opt_class();
    v9 = NSStringFromClass(v8);
    v11 = objc_msgSend_initWithName_format_(v4, v10, v5, @"Cannot cast %@ to %@", v7, v9);
    v12 = v11;

    objc_exception_throw(v11);
  }

  return self;
}

- (CKSyncEngineDidFetchAssetEvent)didFetchAssetEvent
{
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v4 = [CKException alloc];
    v5 = *MEMORY[0x1E695D920];
    v6 = objc_opt_class();
    v7 = NSStringFromClass(v6);
    v8 = objc_opt_class();
    v9 = NSStringFromClass(v8);
    v11 = objc_msgSend_initWithName_format_(v4, v10, v5, @"Cannot cast %@ to %@", v7, v9);
    v12 = v11;

    objc_exception_throw(v11);
  }

  return self;
}

@end