@interface NSPersistentCloudKitContainerEventResult
- (NSPersistentCloudKitContainerEventResult)initWithResult:(id)a3 ofType:(int64_t)a4;
- (NSPersistentCloudKitContainerEventResult)initWithSubresults:(id)a3;
- (void)dealloc;
@end

@implementation NSPersistentCloudKitContainerEventResult

- (NSPersistentCloudKitContainerEventResult)initWithResult:(id)a3 ofType:(int64_t)a4
{
  v8.receiver = self;
  v8.super_class = NSPersistentCloudKitContainerEventResult;
  v6 = [(NSPersistentCloudKitContainerEventResult *)&v8 init];
  if (v6)
  {
    v6->_result = a3;
    v6->_resultType = a4;
  }

  return v6;
}

- (NSPersistentCloudKitContainerEventResult)initWithSubresults:(id)a3
{
  v34 = *MEMORY[0x1E69E9840];
  if (!a3 || ![a3 count])
  {
    LogStream = _PFLogGetLogStream(17);
    if (os_log_type_enabled(LogStream, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_18565F000, LogStream, OS_LOG_TYPE_ERROR, "CoreData: fault: NSPersistentCloudKitContainerEventResult initialized without any subresults to aggregate.\n", buf, 2u);
    }

    v6 = _PFLogGetLogStream(17);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
    {
      *buf = 0;
      _os_log_fault_impl(&dword_18565F000, v6, OS_LOG_TYPE_FAULT, "CoreData: NSPersistentCloudKitContainerEventResult initialized without any subresults to aggregate.", buf, 2u);
    }
  }

  v30.receiver = self;
  v30.super_class = NSPersistentCloudKitContainerEventResult;
  v7 = [(NSPersistentCloudKitContainerEventResult *)&v30 init];
  if (v7)
  {
    v8 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v25 = v7;
    v7->_resultType = [objc_msgSend(a3 "lastObject")];
    v28 = 0u;
    v29 = 0u;
    v26 = 0u;
    v27 = 0u;
    v9 = [a3 countByEnumeratingWithState:&v26 objects:v33 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v27;
      do
      {
        v12 = 0;
        do
        {
          if (*v27 != v11)
          {
            objc_enumerationMutation(a3);
          }

          v13 = *(*(&v26 + 1) + 8 * v12);
          v14 = [v13 resultType];
          if (v14 == 1)
          {
            v16 = [objc_msgSend(v13 "result")];
            if (v16)
            {
              v17 = v16;
              v18 = [v8 lastObject];
              v19 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(v18, "integerValue") + objc_msgSend(v17, "integerValue")}];
              if ([v8 count])
              {
                [v8 replaceObjectAtIndex:0 withObject:v19];
              }

              else
              {
                [v8 addObject:v19];
              }
            }
          }

          else if (v14)
          {
            v20 = _PFLogGetLogStream(17);
            if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
            {
              *buf = 138412290;
              v32 = v13;
              _os_log_error_impl(&dword_18565F000, v20, OS_LOG_TYPE_ERROR, "CoreData: fault: Unknown NSPersistentCloudKitContainerEventResultType in subResult: %@\n", buf, 0xCu);
            }

            v21 = _PFLogGetLogStream(17);
            if (os_log_type_enabled(v21, OS_LOG_TYPE_FAULT))
            {
              *buf = 138412290;
              v32 = v13;
              _os_log_fault_impl(&dword_18565F000, v21, OS_LOG_TYPE_FAULT, "CoreData: Unknown NSPersistentCloudKitContainerEventResultType in subResult: %@", buf, 0xCu);
            }
          }

          else
          {
            v15 = [v13 result];
            if ([v15 count])
            {
              [v8 addObjectsFromArray:v15];
            }
          }

          ++v12;
        }

        while (v10 != v12);
        v22 = [a3 countByEnumeratingWithState:&v26 objects:v33 count:16];
        v10 = v22;
      }

      while (v22);
    }

    v7 = v25;
    v25->_result = [v8 copy];
  }

  v23 = *MEMORY[0x1E69E9840];
  return v7;
}

- (void)dealloc
{
  self->_result = 0;
  v3.receiver = self;
  v3.super_class = NSPersistentCloudKitContainerEventResult;
  [(NSPersistentCloudKitContainerEventResult *)&v3 dealloc];
}

@end