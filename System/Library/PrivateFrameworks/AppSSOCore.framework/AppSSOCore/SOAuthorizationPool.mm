@interface SOAuthorizationPool
- (SOAuthorizationPool)init;
- (void)addAuthorization:(id)authorization delegate:(id)delegate;
- (void)removeAuthorization:(id)authorization;
@end

@implementation SOAuthorizationPool

- (SOAuthorizationPool)init
{
  v6.receiver = self;
  v6.super_class = SOAuthorizationPool;
  v2 = [(SOAuthorizationPool *)&v6 init];
  if (v2)
  {
    array = [MEMORY[0x1E695DF70] array];
    pool = v2->_pool;
    v2->_pool = array;
  }

  return v2;
}

- (void)addAuthorization:(id)authorization delegate:(id)delegate
{
  authorizationCopy = authorization;
  delegateCopy = delegate;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  [authorizationCopy setDelegate:delegateCopy];
  v8 = [[SOAuthorizationPoolItem alloc] initWithAuthorization:authorizationCopy delegate:delegateCopy];
  [(NSMutableArray *)selfCopy->_pool addObject:v8];

  objc_sync_exit(selfCopy);
}

- (void)removeAuthorization:(id)authorization
{
  v20 = *MEMORY[0x1E69E9840];
  authorizationCopy = authorization;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v6 = selfCopy->_pool;
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
        authorization = [v10 authorization];
        v12 = authorization == authorizationCopy;

        if (v12)
        {
          v13 = v10;

          if (v13)
          {
            [(NSMutableArray *)selfCopy->_pool removeObject:v13];
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

  objc_sync_exit(selfCopy);
  v14 = *MEMORY[0x1E69E9840];
}

@end