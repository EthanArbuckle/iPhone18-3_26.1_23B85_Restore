@interface NSSQLCoreDispatchManager
- (NSSQLCoreDispatchManager)initWithSQLCore:(id)a3 seedConnection:(id)a4;
- (uint64_t)disconnectAllConnections;
- (uint64_t)enumerateAvailableConnectionsWithBlock:(uint64_t)result;
- (uint64_t)routeStoreRequest:(uint64_t)result;
- (void)dealloc;
- (void)scheduleBarrierBlock:(id)a3;
@end

@implementation NSSQLCoreDispatchManager

- (uint64_t)disconnectAllConnections
{
  v11 = *MEMORY[0x1E69E9840];
  if (result)
  {
    v8 = 0u;
    v9 = 0u;
    v6 = 0u;
    v7 = 0u;
    v1 = *(result + 16);
    result = [v1 countByEnumeratingWithState:&v6 objects:v10 count:16];
    if (result)
    {
      v2 = result;
      v3 = *v7;
      do
      {
        v4 = 0;
        do
        {
          if (*v7 != v3)
          {
            objc_enumerationMutation(v1);
          }

          [*(*(&v6 + 1) + 8 * v4++) disconnectAllConnections];
        }

        while (v2 != v4);
        result = [v1 countByEnumeratingWithState:&v6 objects:v10 count:16];
        v2 = result;
      }

      while (result);
    }
  }

  v5 = *MEMORY[0x1E69E9840];
  return result;
}

- (void)dealloc
{
  self->_sqlCore = 0;

  v3.receiver = self;
  v3.super_class = NSSQLCoreDispatchManager;
  [(NSSQLCoreDispatchManager *)&v3 dealloc];
}

- (NSSQLCoreDispatchManager)initWithSQLCore:(id)a3 seedConnection:(id)a4
{
  v10.receiver = self;
  v10.super_class = NSSQLCoreDispatchManager;
  v6 = [(NSSQLCoreDispatchManager *)&v10 init];
  v7 = v6;
  if (v6)
  {
    v6->_sqlCore = a3;
    v6->_connectionManagers = objc_alloc_init(MEMORY[0x1E695DF70]);
    v8 = [(NSSQLConnectionManager *)[NSSQLDefaultConnectionManager alloc] initWithSQLCore:a3 seedConnection:a4];
    if (v8)
    {
      [(NSMutableArray *)v7->_connectionManagers addObject:v8];
    }

    else
    {

      return 0;
    }
  }

  return v7;
}

- (uint64_t)routeStoreRequest:(uint64_t)result
{
  v14 = *MEMORY[0x1E69E9840];
  if (result)
  {
    v11 = 0u;
    v12 = 0u;
    v9 = 0u;
    v10 = 0u;
    v3 = *(result + 16);
    result = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
    if (result)
    {
      v4 = result;
      v5 = *v10;
      while (2)
      {
        v6 = 0;
        do
        {
          if (*v10 != v5)
          {
            objc_enumerationMutation(v3);
          }

          v7 = *(*(&v9 + 1) + 8 * v6);
          if (v7 && ((*(v7[2] + 16))() & 1) != 0)
          {
            result = [v7 handleStoreRequest:a2];
            goto LABEL_13;
          }

          ++v6;
        }

        while (v4 != v6);
        result = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
        v4 = result;
        if (result)
        {
          continue;
        }

        break;
      }
    }
  }

LABEL_13:
  v8 = *MEMORY[0x1E69E9840];
  return result;
}

- (void)scheduleBarrierBlock:(id)a3
{
  v4 = [(NSMutableArray *)self->_connectionManagers firstObject];

  [v4 scheduleBarrierBlock:a3];
}

- (uint64_t)enumerateAvailableConnectionsWithBlock:(uint64_t)result
{
  v13 = *MEMORY[0x1E69E9840];
  if (result)
  {
    v10 = 0u;
    v11 = 0u;
    v8 = 0u;
    v9 = 0u;
    v3 = *(result + 16);
    result = [v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
    if (result)
    {
      v4 = result;
      v5 = *v9;
      do
      {
        v6 = 0;
        do
        {
          if (*v9 != v5)
          {
            objc_enumerationMutation(v3);
          }

          [*(*(&v8 + 1) + 8 * v6++) enumerateAvailableConnectionsWithBlock:a2];
        }

        while (v4 != v6);
        result = [v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
        v4 = result;
      }

      while (result);
    }
  }

  v7 = *MEMORY[0x1E69E9840];
  return result;
}

@end