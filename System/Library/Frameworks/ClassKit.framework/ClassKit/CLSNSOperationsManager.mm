@interface CLSNSOperationsManager
- (CLSNSOperationsManager)init;
- (unint64_t)count;
- (void)addOperation:(id)operation;
- (void)performOperation:(id)operation onOperationQueue:(id)queue withTimeOut:(double)out;
- (void)removeOperation:(id)operation;
@end

@implementation CLSNSOperationsManager

- (CLSNSOperationsManager)init
{
  v6.receiver = self;
  v6.super_class = CLSNSOperationsManager;
  v2 = [(CLSNSOperationsManager *)&v6 init];
  if (v2)
  {
    v3 = objc_opt_new();
    operations = v2->_operations;
    v2->_operations = v3;

    v2->_lock = 0;
  }

  return v2;
}

- (void)addOperation:(id)operation
{
  v20 = *MEMORY[0x277D85DE8];
  operationCopy = operation;
  objc_msgSend_lock(self, v5, v6);
  objc_msgSend_addObject_(self->_operations, v7, operationCopy);
  if (qword_280B2A720 != -1)
  {
    dispatch_once(&qword_280B2A720, &unk_284A07B28);
  }

  v8 = CLSLogDefault;
  if (os_log_type_enabled(CLSLogDefault, OS_LOG_TYPE_DEFAULT))
  {
    operations = self->_operations;
    v12 = v8;
    v16 = 138412546;
    v17 = operationCopy;
    v18 = 2048;
    v19 = objc_msgSend_count(operations, v13, v14);
    _os_log_impl(&dword_236F71000, v12, OS_LOG_TYPE_DEFAULT, "CLSNSOperationsManager: Added operation: %@ [Pending count: %lu].", &v16, 0x16u);
  }

  objc_msgSend_unlock(self, v9, v10);

  v15 = *MEMORY[0x277D85DE8];
}

- (void)removeOperation:(id)operation
{
  v23 = *MEMORY[0x277D85DE8];
  operationCopy = operation;
  objc_msgSend_lock(self, v5, v6);
  if (objc_msgSend_containsObject_(self->_operations, v7, operationCopy))
  {
    objc_msgSend_removeObject_(self->_operations, v8, operationCopy);
    if (qword_280B2A720 != -1)
    {
      dispatch_once(&qword_280B2A720, &unk_284A07B28);
    }

    v9 = CLSLogDefault;
    if (os_log_type_enabled(CLSLogDefault, OS_LOG_TYPE_DEFAULT))
    {
      operations = self->_operations;
      v13 = v9;
      *v22 = 138412546;
      *&v22[4] = operationCopy;
      *&v22[12] = 2048;
      *&v22[14] = objc_msgSend_count(operations, v14, v15);
      v16 = "CLSNSOperationsManager: Removed operation: %@ [Pending count: %lu].";
LABEL_10:
      _os_log_impl(&dword_236F71000, v13, OS_LOG_TYPE_DEFAULT, v16, v22, 0x16u);
    }
  }

  else
  {
    if (qword_280B2A720 != -1)
    {
      dispatch_once(&qword_280B2A720, &unk_284A07B28);
    }

    v17 = CLSLogDefault;
    if (os_log_type_enabled(CLSLogDefault, OS_LOG_TYPE_DEFAULT))
    {
      v18 = self->_operations;
      v13 = v17;
      *v22 = 138412546;
      *&v22[4] = operationCopy;
      *&v22[12] = 2048;
      *&v22[14] = objc_msgSend_count(v18, v19, v20);
      v16 = "CLSNSOperationsManager: Cannot remove unknown operation: %@ [Pending count: %lu].";
      goto LABEL_10;
    }
  }

  objc_msgSend_unlock(self, v10, v11, *v22, *&v22[16], v23);

  v21 = *MEMORY[0x277D85DE8];
}

- (unint64_t)count
{
  objc_msgSend_lock(self, a2, v2);
  v6 = objc_msgSend_count(self->_operations, v4, v5);
  objc_msgSend_unlock(self, v7, v8);
  return v6;
}

- (void)performOperation:(id)operation onOperationQueue:(id)queue withTimeOut:(double)out
{
  operationCopy = operation;
  objc_msgSend_addOperation_(queue, v9, operationCopy);
  objc_msgSend_addOperation_(self, v10, operationCopy);
  v11 = dispatch_time(0, (out * 1000000000.0));
  v12 = qos_class_self();
  v13 = dispatch_get_global_queue(v12, 0);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_236F91820;
  block[3] = &unk_278A181A0;
  outCopy = out;
  block[4] = self;
  v16 = operationCopy;
  v14 = operationCopy;
  dispatch_after(v11, v13, block);
}

@end