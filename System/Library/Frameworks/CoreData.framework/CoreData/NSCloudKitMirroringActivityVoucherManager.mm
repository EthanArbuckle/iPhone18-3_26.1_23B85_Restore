@interface NSCloudKitMirroringActivityVoucherManager
- (NSCloudKitMirroringActivityVoucherManager)init;
- (id)_vouchersForEventType:(uint64_t)a1;
- (id)usableVoucherForEventType:(int64_t)a3;
- (unint64_t)countVouchers;
- (void)addVoucher:(id)a3;
- (void)dealloc;
- (void)expireVoucher:(id)a3;
- (void)expireVouchersForEventType:(int64_t)a3;
@end

@implementation NSCloudKitMirroringActivityVoucherManager

- (NSCloudKitMirroringActivityVoucherManager)init
{
  v4.receiver = self;
  v4.super_class = NSCloudKitMirroringActivityVoucherManager;
  v2 = [(NSCloudKitMirroringActivityVoucherManager *)&v4 init];
  if (v2)
  {
    v2->_vouchersByEventType = objc_alloc_init(MEMORY[0x1E695DF90]);
  }

  return v2;
}

- (void)dealloc
{
  self->_vouchersByEventType = 0;
  v3.receiver = self;
  v3.super_class = NSCloudKitMirroringActivityVoucherManager;
  [(NSCloudKitMirroringActivityVoucherManager *)&v3 dealloc];
}

- (unint64_t)countVouchers
{
  v16 = *MEMORY[0x1E69E9840];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  vouchersByEventType = self->_vouchersByEventType;
  v4 = [(NSMutableDictionary *)vouchersByEventType countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = 0;
    v7 = *v12;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(vouchersByEventType);
        }

        v6 += [-[NSMutableDictionary objectForKey:](self->_vouchersByEventType objectForKey:{*(*(&v11 + 1) + 8 * i)), "count"}];
      }

      v5 = [(NSMutableDictionary *)vouchersByEventType countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v5);
  }

  else
  {
    v6 = 0;
  }

  v9 = *MEMORY[0x1E69E9840];
  return v6;
}

- (void)addVoucher:(id)a3
{
  v4 = -[NSCloudKitMirroringActivityVoucherManager _vouchersForEventType:](self, [a3 eventType]);
  [v4 addObject:a3];
}

- (id)_vouchersForEventType:(uint64_t)a1
{
  if (!a1)
  {
    return 0;
  }

  v4 = [*(a1 + 8) objectForKey:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithInteger:", a2)}];
  if (!v4)
  {
    v4 = objc_alloc_init(MEMORY[0x1E695DF70]);
    [*(a1 + 8) setObject:v4 forKey:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithInteger:", a2)}];
  }

  return v4;
}

- (void)expireVoucher:(id)a3
{
  v4 = -[NSCloudKitMirroringActivityVoucherManager _vouchersForEventType:](self, [a3 eventType]);
  [v4 removeObject:a3];
}

- (void)expireVouchersForEventType:(int64_t)a3
{
  v3 = [(NSCloudKitMirroringActivityVoucherManager *)self _vouchersForEventType:a3];
  [v3 removeAllObjects];
}

- (id)usableVoucherForEventType:(int64_t)a3
{
  v15 = *MEMORY[0x1E69E9840];
  if ((a3 - 1) < 2)
  {
    v5 = -[NSMutableDictionary objectForKey:](self->_vouchersByEventType, "objectForKey:", [MEMORY[0x1E696AD98] numberWithInteger:a3]);
    v6 = *MEMORY[0x1E69E9840];

    return [v5 lastObject];
  }

  if (a3)
  {
    LogStream = _PFLogGetLogStream(17);
    if (os_log_type_enabled(LogStream, OS_LOG_TYPE_ERROR))
    {
      v13 = 138412290;
      v14 = [NSPersistentCloudKitContainerEvent eventTypeString:a3];
      _os_log_error_impl(&dword_18565F000, LogStream, OS_LOG_TYPE_ERROR, "CoreData: fault: Is there a new event type: %@\n", &v13, 0xCu);
    }

    v10 = _PFLogGetLogStream(17);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_FAULT))
    {
      v12 = [NSPersistentCloudKitContainerEvent eventTypeString:a3];
      v13 = 138412290;
      v14 = v12;
      _os_log_fault_impl(&dword_18565F000, v10, OS_LOG_TYPE_FAULT, "CoreData: Is there a new event type: %@", &v13, 0xCu);
    }

    result = 0;
    goto LABEL_16;
  }

  result = [-[NSMutableDictionary objectForKey:](self->_vouchersByEventType objectForKey:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithInteger:", 0)), "lastObject"}];
  if (result || (result = [(NSCloudKitMirroringActivityVoucherManager *)self usableVoucherForEventType:2]) != 0)
  {
LABEL_16:
    v11 = *MEMORY[0x1E69E9840];
    return result;
  }

  v8 = *MEMORY[0x1E69E9840];

  return [(NSCloudKitMirroringActivityVoucherManager *)self usableVoucherForEventType:1];
}

@end