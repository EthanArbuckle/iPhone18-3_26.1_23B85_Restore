@interface SORequestQueue
+ (id)debugDescription;
+ (id)requestQueueWithIdentifier:(id)a3;
+ (void)removeQueueWithIdentifier:(id)a3;
- (SORequestQueue)initWithIdentifier:(id)a3;
- (id)description;
- (unint64_t)queueCount;
- (void)_itemCompleted;
- (void)_processItem:(id)a3;
- (void)enqueueRequest:(id)a3;
- (void)processNextRequest;
- (void)removeAllRequestsWithBlock:(id)a3;
- (void)removeRequestWithIdentifier:(id)a3 block:(id)a4;
@end

@implementation SORequestQueue

+ (id)requestQueueWithIdentifier:(id)a3
{
  v3 = a3;
  if (requestQueueWithIdentifier__onceToken != -1)
  {
    +[SORequestQueue requestQueueWithIdentifier:];
  }

  v4 = queues;
  objc_sync_enter(v4);
  v5 = [queues objectForKeyedSubscript:v3];
  if (!v5)
  {
    v5 = [[SORequestQueue alloc] initWithIdentifier:v3];
    [queues setObject:v5 forKeyedSubscript:v3];
  }

  objc_sync_exit(v4);

  return v5;
}

uint64_t __45__SORequestQueue_requestQueueWithIdentifier___block_invoke()
{
  queues = [MEMORY[0x1E695DF90] dictionary];

  return MEMORY[0x1EEE66BB8]();
}

+ (id)debugDescription
{
  v2 = queues;
  objc_sync_enter(v2);
  v3 = [queues description];
  objc_sync_exit(v2);

  return v3;
}

- (SORequestQueue)initWithIdentifier:(id)a3
{
  v4 = a3;
  v12.receiver = self;
  v12.super_class = SORequestQueue;
  v5 = [(SORequestQueue *)&v12 init];
  if (v5)
  {
    v6 = [v4 copy];
    identifier = v5->_identifier;
    v5->_identifier = v6;

    v8 = [MEMORY[0x1E695DF70] array];
    queue = v5->_queue;
    v5->_queue = v8;

    processingItem = v5->_processingItem;
    v5->_processingItem = 0;
  }

  return v5;
}

- (void)enqueueRequest:(id)a3
{
  v22 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = self;
  objc_sync_enter(v5);
  [(NSMutableArray *)v5->_queue addObject:v4];
  v6 = SO_LOG_SORequestQueue();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    identifier = v5->_identifier;
    v9 = [v4 requestParameters];
    v10 = [v9 identifier];
    v11 = [(NSMutableArray *)v5->_queue count];
    v12 = 138544386;
    v13 = identifier;
    v14 = 2048;
    v15 = v4;
    v16 = 2114;
    v17 = v4;
    v18 = 2114;
    v19 = v10;
    v20 = 1024;
    v21 = v11;
    _os_log_debug_impl(&dword_1C1317000, v6, OS_LOG_TYPE_DEBUG, "%{public}@: enqueueRequest: %p, %{public}@, %{public}@, queue count: %d", &v12, 0x30u);
  }

  if ([(NSMutableArray *)v5->_queue count]== 1)
  {
    [(SORequestQueue *)v5 _processItem:v4];
  }

  objc_sync_exit(v5);

  v7 = *MEMORY[0x1E69E9840];
}

- (void)processNextRequest
{
  v6[3] = *MEMORY[0x1E69E9840];
  v2 = self;
  objc_sync_enter(v2);
  [(SORequestQueue *)v2 _itemCompleted];
  v3 = SO_LOG_SORequestQueue();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    [(SORequestQueue *)v2->_identifier processNextRequest];
  }

  if ([(NSMutableArray *)v2->_queue count])
  {
    v4 = [(NSMutableArray *)v2->_queue firstObject];
    [(SORequestQueue *)v2 _processItem:v4];
  }

  objc_sync_exit(v2);

  v5 = *MEMORY[0x1E69E9840];
}

- (void)removeAllRequestsWithBlock:(id)a3
{
  v32 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = self;
  objc_sync_enter(v5);
  v6 = SO_LOG_SORequestQueue();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    [(SORequestQueue *)v5->_identifier removeAllRequestsWithBlock:v31];
  }

  if (v4)
  {
    v24 = 0u;
    v25 = 0u;
    v22 = 0u;
    v23 = 0u;
    v7 = [(NSMutableArray *)v5->_queue copy];
    v8 = [v7 countByEnumeratingWithState:&v22 objects:v30 count:16];
    if (v8)
    {
      v9 = *v23;
      v21 = v7;
      do
      {
        v10 = 0;
        do
        {
          if (*v23 != v9)
          {
            objc_enumerationMutation(v7);
          }

          v11 = *(*(&v22 + 1) + 8 * v10);
          v12 = SO_LOG_SORequestQueue();
          if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
          {
            identifier = v5->_identifier;
            v15 = [v11 requestParameters];
            v16 = [v15 identifier];
            *buf = 138543618;
            v27 = identifier;
            v28 = 2114;
            v29 = v16;
            _os_log_debug_impl(&dword_1C1317000, v12, OS_LOG_TYPE_DEBUG, "%{public}@: checking %{public}@", buf, 0x16u);

            v7 = v21;
          }

          if (([v11 isRunning] & 1) == 0)
          {
            v13 = SO_LOG_SORequestQueue();
            if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
            {
              v17 = v5->_identifier;
              v18 = [v11 requestParameters];
              v19 = [v18 identifier];
              *buf = 138543618;
              v27 = v17;
              v28 = 2114;
              v29 = v19;
              _os_log_debug_impl(&dword_1C1317000, v13, OS_LOG_TYPE_DEBUG, "%{public}@: removing %{public}@", buf, 0x16u);

              v7 = v21;
            }

            v4[2](v4, v5, v11);
            [(NSMutableArray *)v5->_queue removeObject:v11];
          }

          ++v10;
        }

        while (v8 != v10);
        v8 = [v7 countByEnumeratingWithState:&v22 objects:v30 count:16];
      }

      while (v8);
    }
  }

  objc_sync_exit(v5);

  v20 = *MEMORY[0x1E69E9840];
}

- (void)removeRequestWithIdentifier:(id)a3 block:(id)a4
{
  v37 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v27 = a4;
  v7 = self;
  objc_sync_enter(v7);
  v8 = SO_LOG_SORequestQueue();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    [(SORequestQueue *)v7 removeRequestWithIdentifier:v6 block:v8];
  }

  if (v27)
  {
    v30 = 0u;
    v31 = 0u;
    v28 = 0u;
    v29 = 0u;
    v9 = [(NSMutableArray *)v7->_queue copy];
    v10 = [v9 countByEnumeratingWithState:&v28 objects:v36 count:16];
    if (v10)
    {
      v11 = *v29;
      v26 = v6;
      do
      {
        v12 = 0;
        do
        {
          if (*v29 != v11)
          {
            objc_enumerationMutation(v9);
          }

          v13 = *(*(&v28 + 1) + 8 * v12);
          v14 = SO_LOG_SORequestQueue();
          if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
          {
            identifier = v7->_identifier;
            v20 = [v13 requestParameters];
            v21 = [v20 identifier];
            *buf = 138543618;
            v33 = identifier;
            v34 = 2114;
            v35 = v21;
            _os_log_debug_impl(&dword_1C1317000, v14, OS_LOG_TYPE_DEBUG, "%{public}@: checking %{public}@", buf, 0x16u);

            v6 = v26;
          }

          if (([v13 isRunning] & 1) == 0)
          {
            v15 = [v13 requestParameters];
            v16 = [v15 identifier];
            v17 = [v16 isEqualToString:v6];

            if (v17)
            {
              v18 = SO_LOG_SORequestQueue();
              if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
              {
                v22 = v7->_identifier;
                v23 = [v13 requestParameters];
                v24 = [v23 identifier];
                *buf = 138543618;
                v33 = v22;
                v34 = 2114;
                v35 = v24;
                _os_log_debug_impl(&dword_1C1317000, v18, OS_LOG_TYPE_DEBUG, "%{public}@: removing %{public}@", buf, 0x16u);

                v6 = v26;
              }

              v27[2](v27, v7, v13);
              [(NSMutableArray *)v7->_queue removeObject:v13];
            }
          }

          ++v12;
        }

        while (v10 != v12);
        v10 = [v9 countByEnumeratingWithState:&v28 objects:v36 count:16];
      }

      while (v10);
    }
  }

  objc_sync_exit(v7);

  v25 = *MEMORY[0x1E69E9840];
}

- (unint64_t)queueCount
{
  v2 = self;
  objc_sync_enter(v2);
  v3 = [(NSMutableArray *)v2->_queue count];
  objc_sync_exit(v2);

  return v3;
}

+ (void)removeQueueWithIdentifier:(id)a3
{
  v4 = a3;
  v3 = queues;
  objc_sync_enter(v3);
  [queues setObject:0 forKeyedSubscript:v4];
  objc_sync_exit(v3);
}

- (void)_processItem:(id)a3
{
  v5 = a3;
  v6 = self;
  objc_sync_enter(v6);
  v7 = SO_LOG_SORequestQueue();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    [SORequestQueue _processItem:v6];
  }

  objc_storeStrong(&v6->_processingItem, a3);
  if (v6->_processItemBlock)
  {
    [v5 setIsRunning:1];
    (*(v6->_processItemBlock + 2))();
  }

  objc_sync_exit(v6);
}

- (void)_itemCompleted
{
  v8 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 8);
  v2 = *(a1 + 24);
  OUTLINED_FUNCTION_1_1();
  v7 = v3;
  _os_log_debug_impl(&dword_1C1317000, v4, OS_LOG_TYPE_DEBUG, "%{public}@: itemCompleted: %p", v6, 0x16u);
  v5 = *MEMORY[0x1E69E9840];
}

- (id)description
{
  v2 = self;
  objc_sync_enter(v2);
  v3 = [(NSMutableArray *)v2->_queue description];
  objc_sync_exit(v2);

  return v3;
}

- (void)removeRequestWithIdentifier:(NSObject *)a3 block:.cold.1(uint64_t a1, uint64_t a2, NSObject *a3)
{
  *v4 = 138543618;
  *&v4[4] = *(a1 + 8);
  *&v4[12] = 2114;
  *&v4[14] = a2;
  OUTLINED_FUNCTION_10(&dword_1C1317000, a2, a3, "%{public}@: removeRequestWithIdentifier: %{public}@", *v4, *&v4[8], *&v4[16], *MEMORY[0x1E69E9840]);
  v3 = *MEMORY[0x1E69E9840];
}

- (void)_processItem:(uint64_t)a1 .cold.1(uint64_t a1)
{
  v5 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 8);
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_10(&dword_1C1317000, v2, v3, "%{public}@: processItem: %p");
  v4 = *MEMORY[0x1E69E9840];
}

@end