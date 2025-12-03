@interface ASCTaskCoordinator
+ (OS_os_log)log;
- (ASCTaskCoordinator)initWithName:(id)name;
- (BOOL)hasTaskForKey:(id)key;
- (id)taskForKey:(id)key;
- (id)taskForKey:(id)key withCreatorBlock:(id)block;
- (void)removeAllFinishedTasks;
- (void)removeTaskForKey:(id)key;
- (void)taskForKey:(id)key didCompleteWithResult:(id)result;
- (void)taskForKey:(id)key didFailWithError:(id)error;
- (void)withLock:(id)lock;
@end

@implementation ASCTaskCoordinator

+ (OS_os_log)log
{
  if (log_onceToken_4 != -1)
  {
    +[ASCTaskCoordinator log];
  }

  v3 = log_log_4;

  return v3;
}

uint64_t __25__ASCTaskCoordinator_log__block_invoke()
{
  log_log_4 = os_log_create("com.apple.AppStoreComponents", "ASCTaskCoordinator");

  return MEMORY[0x2821F96F8]();
}

- (ASCTaskCoordinator)initWithName:(id)name
{
  nameCopy = name;
  v15.receiver = self;
  v15.super_class = ASCTaskCoordinator;
  v5 = [(ASCTaskCoordinator *)&v15 init];
  if (v5)
  {
    v6 = [nameCopy copy];
    name = v5->_name;
    v5->_name = v6;

    v8 = objc_alloc_init(MEMORY[0x277CCAC60]);
    consistencyLock = v5->_consistencyLock;
    v5->_consistencyLock = v8;

    [(NSRecursiveLock *)v5->_consistencyLock setName:nameCopy];
    v10 = objc_alloc_init(MEMORY[0x277CBEB38]);
    pendingResults = v5->_pendingResults;
    v5->_pendingResults = v10;

    v12 = objc_alloc_init(MEMORY[0x277CBEA78]);
    loadedResults = v5->_loadedResults;
    v5->_loadedResults = v12;

    [(NSCache *)v5->_loadedResults setName:nameCopy];
    [(NSCache *)v5->_loadedResults setCountLimit:50];
  }

  return v5;
}

- (void)withLock:(id)lock
{
  lockCopy = lock;
  consistencyLock = [(ASCTaskCoordinator *)self consistencyLock];
  [consistencyLock lock];

  lockCopy[2]();
  consistencyLock2 = [(ASCTaskCoordinator *)self consistencyLock];
  [consistencyLock2 unlock];
}

- (void)taskForKey:(id)key didCompleteWithResult:(id)result
{
  v20 = *MEMORY[0x277D85DE8];
  keyCopy = key;
  resultCopy = result;
  v8 = +[ASCTaskCoordinator log];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    name = [(ASCTaskCoordinator *)self name];
    *buf = 138543874;
    v15 = name;
    v16 = 2112;
    v17 = keyCopy;
    v18 = 2112;
    v19 = resultCopy;
    _os_log_impl(&dword_21571A000, v8, OS_LOG_TYPE_INFO, "%{public}@: Task for %@ did complete with %@", buf, 0x20u);
  }

  loadedResults = [(ASCTaskCoordinator *)self loadedResults];
  [loadedResults setObject:resultCopy forKey:keyCopy];

  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __55__ASCTaskCoordinator_taskForKey_didCompleteWithResult___block_invoke;
  v12[3] = &unk_2781CC1F8;
  v12[4] = self;
  v13 = keyCopy;
  v11 = keyCopy;
  [(ASCTaskCoordinator *)self withLock:v12];
}

void __55__ASCTaskCoordinator_taskForKey_didCompleteWithResult___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) pendingResults];
  [v2 removeObjectForKey:*(a1 + 40)];
}

- (void)taskForKey:(id)key didFailWithError:(id)error
{
  v22 = *MEMORY[0x277D85DE8];
  keyCopy = key;
  errorCopy = error;
  domain = [errorCopy domain];
  if ([domain isEqualToString:*MEMORY[0x277CCA050]])
  {
    code = [errorCopy code];

    if (code == 3072)
    {
      goto LABEL_8;
    }
  }

  else
  {
  }

  v10 = +[ASCTaskCoordinator log];
  if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
  {
    name = [(ASCTaskCoordinator *)self name];
    v13 = AMSLogableError();
    *buf = 138543874;
    v17 = name;
    v18 = 2112;
    v19 = keyCopy;
    v20 = 2114;
    v21 = v13;
    _os_log_error_impl(&dword_21571A000, v10, OS_LOG_TYPE_ERROR, "%{public}@: Task for %@ did fail with %{public}@", buf, 0x20u);
  }

LABEL_8:
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __50__ASCTaskCoordinator_taskForKey_didFailWithError___block_invoke;
  v14[3] = &unk_2781CC1F8;
  v14[4] = self;
  v15 = keyCopy;
  v11 = keyCopy;
  [(ASCTaskCoordinator *)self withLock:v14];
}

void __50__ASCTaskCoordinator_taskForKey_didFailWithError___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) pendingResults];
  [v2 removeObjectForKey:*(a1 + 40)];
}

- (BOOL)hasTaskForKey:(id)key
{
  v3 = [(ASCTaskCoordinator *)self taskForKey:key];
  v4 = v3 != 0;

  return v4;
}

- (id)taskForKey:(id)key
{
  keyCopy = key;
  loadedResults = [(ASCTaskCoordinator *)self loadedResults];
  v6 = [loadedResults objectForKey:keyCopy];

  if (v6)
  {
    v7 = [MEMORY[0x277CEE630] promiseWithResult:v6];
  }

  else
  {
    v12 = 0;
    v13 = &v12;
    v14 = 0x3032000000;
    v15 = __Block_byref_object_copy_;
    v16 = __Block_byref_object_dispose_;
    v17 = 0;
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __33__ASCTaskCoordinator_taskForKey___block_invoke;
    v9[3] = &unk_2781CC5F8;
    v11 = &v12;
    v9[4] = self;
    v10 = keyCopy;
    [(ASCTaskCoordinator *)self withLock:v9];
    v7 = v13[5];

    _Block_object_dispose(&v12, 8);
  }

  return v7;
}

void __33__ASCTaskCoordinator_taskForKey___block_invoke(uint64_t a1)
{
  v5 = [*(a1 + 32) pendingResults];
  v2 = [v5 objectForKeyedSubscript:*(a1 + 40)];
  v3 = *(*(a1 + 48) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

- (id)taskForKey:(id)key withCreatorBlock:(id)block
{
  v22 = *MEMORY[0x277D85DE8];
  keyCopy = key;
  blockCopy = block;
  loadedResults = [(ASCTaskCoordinator *)self loadedResults];
  v9 = [loadedResults objectForKey:keyCopy];

  if (v9)
  {
    v10 = +[ASCTaskCoordinator log];
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      name = [(ASCTaskCoordinator *)self name];
      *buf = 138543618;
      *&buf[4] = name;
      *&buf[12] = 2112;
      *&buf[14] = keyCopy;
      _os_log_impl(&dword_21571A000, v10, OS_LOG_TYPE_INFO, "%{public}@: Using cached result to satisfy %@", buf, 0x16u);
    }

    v12 = [MEMORY[0x277CEE600] promiseWithResult:v9];
  }

  else
  {
    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x3032000000;
    v19 = __Block_byref_object_copy_;
    v20 = __Block_byref_object_dispose_;
    v21 = 0;
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __50__ASCTaskCoordinator_taskForKey_withCreatorBlock___block_invoke;
    v14[3] = &unk_2781CC750;
    v14[4] = self;
    v15 = keyCopy;
    v17 = buf;
    v16 = blockCopy;
    [(ASCTaskCoordinator *)self withLock:v14];
    v12 = *(*&buf[8] + 40);

    _Block_object_dispose(buf, 8);
  }

  return v12;
}

void __50__ASCTaskCoordinator_taskForKey_withCreatorBlock___block_invoke(uint64_t a1)
{
  v30 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) pendingResults];
  v3 = [v2 objectForKeyedSubscript:*(a1 + 40)];

  v4 = +[ASCTaskCoordinator log];
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_INFO);
  if (v3)
  {
    if (v5)
    {
      v6 = [*(a1 + 32) name];
      v7 = *(a1 + 40);
      *buf = 138543618;
      v27 = v6;
      v28 = 2112;
      v29 = v7;
      _os_log_impl(&dword_21571A000, v4, OS_LOG_TYPE_INFO, "%{public}@: Reusing pending task to satisfy %@", buf, 0x16u);
    }

    v8 = [v3 asc_copy];
    v9 = *(*(a1 + 56) + 8);
    v10 = *(v9 + 40);
    *(v9 + 40) = v8;
  }

  else
  {
    if (v5)
    {
      v11 = [*(a1 + 32) name];
      v12 = *(a1 + 40);
      *buf = 138543618;
      v27 = v11;
      v28 = 2112;
      v29 = v12;
      _os_log_impl(&dword_21571A000, v4, OS_LOG_TYPE_INFO, "%{public}@: Starting new task to satisfy %@", buf, 0x16u);
    }

    v10 = (*(*(a1 + 48) + 16))();
    v13 = [*(a1 + 32) pendingResults];
    [v13 setObject:v10 forKeyedSubscript:*(a1 + 40)];

    objc_initWeak(buf, *(a1 + 32));
    v23[0] = MEMORY[0x277D85DD0];
    v23[1] = 3221225472;
    v23[2] = __50__ASCTaskCoordinator_taskForKey_withCreatorBlock___block_invoke_8;
    v23[3] = &unk_2781CC728;
    objc_copyWeak(&v25, buf);
    v24 = *(a1 + 40);
    [v10 addSuccessBlock:v23];
    v17 = MEMORY[0x277D85DD0];
    v18 = 3221225472;
    v19 = __50__ASCTaskCoordinator_taskForKey_withCreatorBlock___block_invoke_2;
    v20 = &unk_2781CC390;
    objc_copyWeak(&v22, buf);
    v21 = *(a1 + 40);
    [v10 addErrorBlock:&v17];
    v14 = [v10 asc_copy];
    v15 = *(*(a1 + 56) + 8);
    v16 = *(v15 + 40);
    *(v15 + 40) = v14;

    objc_destroyWeak(&v22);
    objc_destroyWeak(&v25);
    objc_destroyWeak(buf);
  }
}

void __50__ASCTaskCoordinator_taskForKey_withCreatorBlock___block_invoke_8(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained taskForKey:*(a1 + 32) didCompleteWithResult:v3];
}

void __50__ASCTaskCoordinator_taskForKey_withCreatorBlock___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained taskForKey:*(a1 + 32) didFailWithError:v3];
}

- (void)removeTaskForKey:(id)key
{
  v19 = *MEMORY[0x277D85DE8];
  keyCopy = key;
  v5 = +[ASCTaskCoordinator log];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    name = [(ASCTaskCoordinator *)self name];
    *buf = 138543618;
    v16 = name;
    v17 = 2112;
    v18 = keyCopy;
    _os_log_impl(&dword_21571A000, v5, OS_LOG_TYPE_INFO, "%{public}@: Removing task for key %@", buf, 0x16u);
  }

  v9 = MEMORY[0x277D85DD0];
  v10 = 3221225472;
  v11 = __39__ASCTaskCoordinator_removeTaskForKey___block_invoke;
  v12 = &unk_2781CC1F8;
  selfCopy = self;
  v14 = keyCopy;
  v7 = keyCopy;
  [(ASCTaskCoordinator *)self withLock:&v9];
  v8 = [(ASCTaskCoordinator *)self loadedResults:v9];
  [v8 removeObjectForKey:v7];
}

void __39__ASCTaskCoordinator_removeTaskForKey___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) pendingResults];
  v5 = [v2 objectForKeyedSubscript:*(a1 + 40)];

  v3 = v5;
  if (v5)
  {
    [v5 cancel];
    v4 = [*(a1 + 32) pendingResults];
    [v4 removeObjectForKey:*(a1 + 40)];

    v3 = v5;
  }
}

- (void)removeAllFinishedTasks
{
  v8 = *MEMORY[0x277D85DE8];
  v3 = +[ASCTaskCoordinator log];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    name = [(ASCTaskCoordinator *)self name];
    v6 = 138543362;
    v7 = name;
    _os_log_impl(&dword_21571A000, v3, OS_LOG_TYPE_INFO, "%{public}@: Removing all finished tasks", &v6, 0xCu);
  }

  loadedResults = [(ASCTaskCoordinator *)self loadedResults];
  [loadedResults removeAllObjects];
}

@end