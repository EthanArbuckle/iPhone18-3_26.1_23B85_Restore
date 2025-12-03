@interface CKMemoryInfo
+ (CKMemoryInfo)memoryInfo;
+ (id)workloop;
- (CKMemoryInfo)init;
- (int64_t)memoryPressure;
- (void)dealloc;
- (void)handleMemoryPressureEvent:(unint64_t)event;
@end

@implementation CKMemoryInfo

+ (CKMemoryInfo)memoryInfo
{
  if (qword_1ED4B6580 != -1)
  {
    dispatch_once(&qword_1ED4B6580, &unk_1EFA307B0);
  }

  v3 = qword_1ED4B6578;

  return v3;
}

- (int64_t)memoryPressure
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  memoryPressure = selfCopy->_memoryPressure;
  objc_sync_exit(selfCopy);

  return memoryPressure;
}

+ (id)workloop
{
  if (qword_1ED4B6590 != -1)
  {
    dispatch_once(&qword_1ED4B6590, &unk_1EFA307D0);
  }

  v3 = qword_1ED4B6588;

  return v3;
}

- (CKMemoryInfo)init
{
  v13.receiver = self;
  v13.super_class = CKMemoryInfo;
  v2 = [(CKMemoryInfo *)&v13 init];
  if (v2)
  {
    objc_initWeak(&location, v2);
    v5 = objc_msgSend_workloop(CKMemoryInfo, v3, v4);
    v6 = dispatch_source_create(MEMORY[0x1E69E96E8], 0, 0x37uLL, v5);
    v7 = *(v2 + 2);
    *(v2 + 2) = v6;

    v8 = *(v2 + 2);
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = sub_1886B91D0;
    v10[3] = &unk_1E70BC680;
    objc_copyWeak(&v11, &location);
    dispatch_source_set_event_handler(v8, v10);
    dispatch_resume(*(v2 + 2));
    objc_destroyWeak(&v11);
    objc_destroyWeak(&location);
  }

  return v2;
}

- (void)dealloc
{
  dispatch_source_cancel(self->_source);
  v3.receiver = self;
  v3.super_class = CKMemoryInfo;
  [(CKMemoryInfo *)&v3 dealloc];
}

- (void)handleMemoryPressureEvent:(unint64_t)event
{
  v19 = *MEMORY[0x1E69E9840];
  if (ck_log_initialization_predicate != -1)
  {
    dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
  }

  v5 = ck_log_facility_ck;
  if (os_log_type_enabled(ck_log_facility_ck, OS_LOG_TYPE_DEBUG))
  {
    *buf = 134217984;
    eventCopy = event;
    _os_log_debug_impl(&dword_1883EA000, v5, OS_LOG_TYPE_DEBUG, "Handling memory pressure event: %lu", buf, 0xCu);
  }

  selfCopy = self;
  objc_sync_enter(selfCopy);
  v7 = (event >> 4) & 1;
  if ((event & 0x20) != 0)
  {
    v7 = 3;
  }

  v8 = (2 * event) & 4;
  if ((event & 4) != 0)
  {
    v8 = 12;
  }

  v9 = v7 | v8;
  if (!selfCopy)
  {
    v9 = 0;
  }

  if (selfCopy->_memoryPressure == v9)
  {
    objc_sync_exit(selfCopy);
  }

  else
  {
    selfCopy->_memoryPressure = v9;
    objc_sync_exit(selfCopy);

    if (event == 32)
    {
      v12 = QOS_CLASS_USER_INITIATED;
    }

    else
    {
      v12 = QOS_CLASS_UTILITY;
    }

    v13 = objc_msgSend_workloop(CKMemoryInfo, v10, v11);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = sub_1886B9470;
    block[3] = &unk_1E70BC388;
    block[4] = selfCopy;
    v14 = dispatch_block_create_with_qos_class(0, v12, 0, block);
    dispatch_async(v13, v14);
  }

  v15 = *MEMORY[0x1E69E9840];
}

@end