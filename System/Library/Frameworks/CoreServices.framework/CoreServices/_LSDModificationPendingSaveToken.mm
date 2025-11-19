@interface _LSDModificationPendingSaveToken
- (_LSDModificationPendingSaveToken)initWithUUID:(id)a3;
- (id).cxx_construct;
- (void)saveDidHappen:(BOOL)a3 error:(id)a4;
- (void)waitForResult:(id)a3;
@end

@implementation _LSDModificationPendingSaveToken

- (_LSDModificationPendingSaveToken)initWithUUID:(id)a3
{
  v5 = a3;
  v10.receiver = self;
  v10.super_class = _LSDModificationPendingSaveToken;
  v6 = [(_LSDModificationPendingSaveToken *)&v10 init];
  if (v6)
  {
    v7 = objc_alloc_init(MEMORY[0x1E695DF70]);
    waiters = v6->_waiters;
    v6->_waiters = v7;

    objc_storeStrong(&v6->_uuid, a3);
  }

  return v6;
}

- (void)waitForResult:(id)a3
{
  v15 = *MEMORY[0x1E69E9840];
  v4 = a3;
  os_unfair_lock_lock(&self->_mutex);
  if (self->_saveError.__engaged_)
  {
    v5 = _LSInstallLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      uuid = self->_uuid;
      v13 = 138412290;
      v14 = uuid;
      _os_log_impl(&dword_18162D000, v5, OS_LOG_TYPE_DEFAULT, "save for operation %@ is already complete", &v13, 0xCu);
    }

    v4[2](v4, self->_saveError.var0.__val_ == 0);
  }

  else
  {
    v7 = _LSInstallLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v8 = self->_uuid;
      v13 = 138412290;
      v14 = v8;
      _os_log_impl(&dword_18162D000, v7, OS_LOG_TYPE_INFO, "waiting for save for operation %@", &v13, 0xCu);
    }

    waiters = self->_waiters;
    v10 = [v4 copy];
    v11 = MEMORY[0x1865D71B0]();
    [(NSMutableArray *)waiters addObject:v11];
  }

  os_unfair_lock_unlock(&self->_mutex);

  v12 = *MEMORY[0x1E69E9840];
}

- (void)saveDidHappen:(BOOL)a3 error:(id)a4
{
  v4 = a3;
  v32 = *MEMORY[0x1E69E9840];
  v22 = a4;
  os_unfair_lock_lock(&self->_mutex);
  if (self->_saveError.__engaged_)
  {
    v6 = _LSInstallLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
    {
      [_LSDModificationPendingSaveToken saveDidHappen:v6 error:?];
    }
  }

  else
  {
    std::optional<NSError * {__strong}>::operator=[abi:nn200100]<NSError * {__strong}&,void>(&self->_saveError, &v22);
    v7 = _LSInstallLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = v22;
      uuid = self->_uuid;
      v10 = [(NSMutableArray *)self->_waiters count];
      *buf = 67109890;
      v25 = v4;
      v26 = 2112;
      v27 = v8;
      v28 = 2112;
      v29 = uuid;
      v30 = 2048;
      v31 = v10;
      _os_log_impl(&dword_18162D000, v7, OS_LOG_TYPE_DEFAULT, "Save happened (%d %@) for operation %@, save token calling %zu handler(s)", buf, 0x26u);
    }

    v11 = objc_autoreleasePoolPush();
    v20 = 0u;
    v21 = 0u;
    v18 = 0u;
    v19 = 0u;
    v12 = self->_waiters;
    v13 = [(NSMutableArray *)v12 countByEnumeratingWithState:&v18 objects:v23 count:16];
    if (v13)
    {
      v14 = *v19;
      do
      {
        v15 = 0;
        do
        {
          if (*v19 != v14)
          {
            objc_enumerationMutation(v12);
          }

          (*(*(*(&v18 + 1) + 8 * v15) + 16))(*(*(&v18 + 1) + 8 * v15), v22 == 0);
          ++v15;
        }

        while (v13 != v15);
        v13 = [(NSMutableArray *)v12 countByEnumeratingWithState:&v18 objects:v23 count:16];
      }

      while (v13);
    }

    waiters = self->_waiters;
    self->_waiters = 0;

    objc_autoreleasePoolPop(v11);
  }

  os_unfair_lock_unlock(&self->_mutex);

  v17 = *MEMORY[0x1E69E9840];
}

- (id).cxx_construct
{
  *(self + 24) = 0;
  *(self + 32) = 0;
  *(self + 10) = 0;
  return self;
}

- (void)saveDidHappen:(uint64_t)a1 error:(NSObject *)a2 .cold.1(uint64_t a1, NSObject *a2)
{
  v6 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 16);
  v4 = 138412290;
  v5 = v2;
  _os_log_fault_impl(&dword_18162D000, a2, OS_LOG_TYPE_FAULT, "Got multiple save callbacks for pending save token (op %@)! That's a bug!", &v4, 0xCu);
  v3 = *MEMORY[0x1E69E9840];
}

@end