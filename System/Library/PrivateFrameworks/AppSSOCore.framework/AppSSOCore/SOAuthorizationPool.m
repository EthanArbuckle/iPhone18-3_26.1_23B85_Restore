@interface SOAuthorizationPool
- (SOAuthorizationPool)init;
- (void)addAuthorization:(id)a3 delegate:(id)a4;
- (void)removeAuthorization:(id)a3;
@end

@implementation SOAuthorizationPool

- (SOAuthorizationPool)init
{
  v6.receiver = self;
  v6.super_class = SOAuthorizationPool;
  v2 = [(SOAuthorizationPool *)&v6 init];
  if (v2)
  {
    v3 = [MEMORY[0x1E695DF70] array];
    pool = v2->_pool;
    v2->_pool = v3;
  }

  return v2;
}

- (void)addAuthorization:(id)a3 delegate:(id)a4
{
  v9 = a3;
  v6 = a4;
  v7 = self;
  objc_sync_enter(v7);
  [v9 setDelegate:v6];
  v8 = [[SOAuthorizationPoolItem alloc] initWithAuthorization:v9 delegate:v6];
  [(NSMutableArray *)v7->_pool addObject:v8];

  objc_sync_exit(v7);
}

- (void)removeAuthorization:(id)a3
{
  v20 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = self;
  objc_sync_enter(v5);
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v6 = v5->_pool;
  v7 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v7)
  {
    v8 = *v16;
    while (2)
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v16 != v8)
        {
          objc_enumerationMutation(v6);
        }

        v10 = *(*(&v15 + 1) + 8 * i);
        v11 = [v10 authorization];
        v12 = v11 == v4;

        if (v12)
        {
          v13 = v10;

          if (v13)
          {
            [(NSMutableArray *)v5->_pool removeObject:v13];
          }

          goto LABEL_12;
        }
      }

      v7 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

  v13 = 0;
LABEL_12:

  objc_sync_exit(v5);
  v14 = *MEMORY[0x1E69E9840];
}

@end