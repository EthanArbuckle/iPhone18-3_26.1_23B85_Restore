@interface ASCPendingPromises
- (ASCPendingPromises)init;
- (BOOL)containsBinaryPromise:(id)a3;
- (BOOL)containsPromise:(id)a3;
- (BOOL)hasPromises;
- (NSMutableArray)binaryPromises;
- (NSMutableArray)promises;
- (void)addBinaryPromise:(id)a3;
- (void)addPromise:(id)a3;
- (void)enumerateBinaryPromises:(id)a3 andPromises:(id)a4;
- (void)finishAllWithError:(id)a3;
- (void)withLock:(id)a3;
@end

@implementation ASCPendingPromises

- (ASCPendingPromises)init
{
  v6.receiver = self;
  v6.super_class = ASCPendingPromises;
  v2 = [(ASCPendingPromises *)&v6 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x277CCAC60]);
    stateLock = v2->_stateLock;
    v2->_stateLock = v3;
  }

  return v2;
}

- (void)withLock:(id)a3
{
  v6 = a3;
  v4 = [(ASCPendingPromises *)self stateLock];
  [v4 lock];

  v6[2]();
  v5 = [(ASCPendingPromises *)self stateLock];
  [v5 unlock];
}

- (NSMutableArray)binaryPromises
{
  v3 = [(ASCPendingPromises *)self binaryPromisesIfLoaded];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v5 = objc_alloc_init(MEMORY[0x277CBEB18]);
    [(ASCPendingPromises *)self setBinaryPromisesIfLoaded:v5];
  }

  return v5;
}

- (NSMutableArray)promises
{
  v3 = [(ASCPendingPromises *)self promisesIfLoaded];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v5 = objc_alloc_init(MEMORY[0x277CBEB18]);
    [(ASCPendingPromises *)self setPromisesIfLoaded:v5];
  }

  return v5;
}

- (BOOL)containsBinaryPromise:(id)a3
{
  v4 = a3;
  v10 = 0;
  v11 = &v10;
  v12 = 0x2020000000;
  v13 = 0;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __44__ASCPendingPromises_containsBinaryPromise___block_invoke;
  v7[3] = &unk_2781CC5F8;
  v9 = &v10;
  v7[4] = self;
  v5 = v4;
  v8 = v5;
  [(ASCPendingPromises *)self withLock:v7];
  LOBYTE(self) = *(v11 + 24);

  _Block_object_dispose(&v10, 8);
  return self;
}

void __44__ASCPendingPromises_containsBinaryPromise___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) binaryPromisesIfLoaded];
  if (v2)
  {
    v4 = v2;
    v3 = [*(a1 + 32) binaryPromisesIfLoaded];
    *(*(*(a1 + 48) + 8) + 24) = [v3 indexOfObjectIdenticalTo:*(a1 + 40)] != 0x7FFFFFFFFFFFFFFFLL;

    v2 = v4;
  }

  else
  {
    *(*(*(a1 + 48) + 8) + 24) = 0;
  }
}

- (void)addBinaryPromise:(id)a3
{
  v4 = a3;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __39__ASCPendingPromises_addBinaryPromise___block_invoke;
  v6[3] = &unk_2781CC1F8;
  v6[4] = self;
  v7 = v4;
  v5 = v4;
  [(ASCPendingPromises *)self withLock:v6];
}

void __39__ASCPendingPromises_addBinaryPromise___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) binaryPromises];
  [v2 addObject:*(a1 + 40)];

  objc_initWeak(&location, *(a1 + 32));
  objc_initWeak(&from, *(a1 + 40));
  v3 = *(a1 + 40);
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __39__ASCPendingPromises_addBinaryPromise___block_invoke_2;
  v4[3] = &unk_2781CC620;
  objc_copyWeak(&v5, &location);
  objc_copyWeak(&v6, &from);
  [v3 addFinishBlock:v4];
  objc_destroyWeak(&v6);
  objc_destroyWeak(&v5);
  objc_destroyWeak(&from);
  objc_destroyWeak(&location);
}

void __39__ASCPendingPromises_addBinaryPromise___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = objc_loadWeakRetained((a1 + 40));
  v4 = v3;
  if (WeakRetained && v3)
  {
    v5[0] = MEMORY[0x277D85DD0];
    v5[1] = 3221225472;
    v5[2] = __39__ASCPendingPromises_addBinaryPromise___block_invoke_3;
    v5[3] = &unk_2781CC1F8;
    v6 = WeakRetained;
    v7 = v4;
    [v6 withLock:v5];
  }
}

void __39__ASCPendingPromises_addBinaryPromise___block_invoke_3(uint64_t a1)
{
  v2 = [*(a1 + 32) binaryPromises];
  [v2 removeObjectIdenticalTo:*(a1 + 40)];
}

- (BOOL)hasPromises
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v8 = 0;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __33__ASCPendingPromises_hasPromises__block_invoke;
  v4[3] = &unk_2781CC648;
  v4[4] = self;
  v4[5] = &v5;
  [(ASCPendingPromises *)self withLock:v4];
  v2 = *(v6 + 24);
  _Block_object_dispose(&v5, 8);
  return v2;
}

void __33__ASCPendingPromises_hasPromises__block_invoke(uint64_t a1)
{
  v5 = [*(a1 + 32) binaryPromisesIfLoaded];
  if (v5 && ([*(a1 + 32) binaryPromisesIfLoaded], v1 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v1, "count")))
  {
    *(*(*(a1 + 40) + 8) + 24) = 1;
  }

  else
  {
    v3 = [*(a1 + 32) promisesIfLoaded];
    if (v3)
    {
      v4 = [*(a1 + 32) promisesIfLoaded];
      *(*(*(a1 + 40) + 8) + 24) = [v4 count] != 0;
    }

    else
    {
      *(*(*(a1 + 40) + 8) + 24) = 0;
    }

    if (!v5)
    {
      goto LABEL_9;
    }
  }

LABEL_9:
}

- (BOOL)containsPromise:(id)a3
{
  v4 = a3;
  v10 = 0;
  v11 = &v10;
  v12 = 0x2020000000;
  v13 = 0;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __38__ASCPendingPromises_containsPromise___block_invoke;
  v7[3] = &unk_2781CC5F8;
  v9 = &v10;
  v7[4] = self;
  v5 = v4;
  v8 = v5;
  [(ASCPendingPromises *)self withLock:v7];
  LOBYTE(self) = *(v11 + 24);

  _Block_object_dispose(&v10, 8);
  return self;
}

void __38__ASCPendingPromises_containsPromise___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) promisesIfLoaded];
  if (v2)
  {
    v4 = v2;
    v3 = [*(a1 + 32) promisesIfLoaded];
    *(*(*(a1 + 48) + 8) + 24) = [v3 indexOfObjectIdenticalTo:*(a1 + 40)] != 0x7FFFFFFFFFFFFFFFLL;

    v2 = v4;
  }

  else
  {
    *(*(*(a1 + 48) + 8) + 24) = 0;
  }
}

- (void)addPromise:(id)a3
{
  v4 = a3;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __33__ASCPendingPromises_addPromise___block_invoke;
  v6[3] = &unk_2781CC1F8;
  v6[4] = self;
  v7 = v4;
  v5 = v4;
  [(ASCPendingPromises *)self withLock:v6];
}

void __33__ASCPendingPromises_addPromise___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) promises];
  [v2 addObject:*(a1 + 40)];

  objc_initWeak(&location, *(a1 + 32));
  objc_initWeak(&from, *(a1 + 40));
  v3 = *(a1 + 40);
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __33__ASCPendingPromises_addPromise___block_invoke_2;
  v4[3] = &unk_2781CC670;
  objc_copyWeak(&v5, &location);
  objc_copyWeak(&v6, &from);
  [v3 addFinishBlock:v4];
  objc_destroyWeak(&v6);
  objc_destroyWeak(&v5);
  objc_destroyWeak(&from);
  objc_destroyWeak(&location);
}

void __33__ASCPendingPromises_addPromise___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = objc_loadWeakRetained((a1 + 40));
  v4 = v3;
  if (WeakRetained && v3)
  {
    v5[0] = MEMORY[0x277D85DD0];
    v5[1] = 3221225472;
    v5[2] = __33__ASCPendingPromises_addPromise___block_invoke_3;
    v5[3] = &unk_2781CC1F8;
    v6 = WeakRetained;
    v7 = v4;
    [v6 withLock:v5];
  }
}

void __33__ASCPendingPromises_addPromise___block_invoke_3(uint64_t a1)
{
  v2 = [*(a1 + 32) promises];
  [v2 removeObjectIdenticalTo:*(a1 + 40)];
}

- (void)enumerateBinaryPromises:(id)a3 andPromises:(id)a4
{
  v34 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [(ASCPendingPromises *)self stateLock];
  [v8 lock];

  v9 = [(ASCPendingPromises *)self binaryPromisesIfLoaded];
  v10 = [v9 copy];

  v11 = [(ASCPendingPromises *)self promisesIfLoaded];
  v12 = [v11 copy];

  v13 = [(ASCPendingPromises *)self stateLock];
  [v13 unlock];

  if (v10)
  {
    v30 = 0u;
    v31 = 0u;
    v28 = 0u;
    v29 = 0u;
    v14 = v10;
    v15 = [v14 countByEnumeratingWithState:&v28 objects:v33 count:16];
    if (v15)
    {
      v16 = v15;
      v17 = *v29;
      do
      {
        v18 = 0;
        do
        {
          if (*v29 != v17)
          {
            objc_enumerationMutation(v14);
          }

          v6[2](v6, *(*(&v28 + 1) + 8 * v18++));
        }

        while (v16 != v18);
        v16 = [v14 countByEnumeratingWithState:&v28 objects:v33 count:16];
      }

      while (v16);
    }
  }

  if (v12)
  {
    v26 = 0u;
    v27 = 0u;
    v24 = 0u;
    v25 = 0u;
    v19 = v12;
    v20 = [v19 countByEnumeratingWithState:&v24 objects:v32 count:16];
    if (v20)
    {
      v21 = v20;
      v22 = *v25;
      do
      {
        v23 = 0;
        do
        {
          if (*v25 != v22)
          {
            objc_enumerationMutation(v19);
          }

          v7[2](v7, *(*(&v24 + 1) + 8 * v23++));
        }

        while (v21 != v23);
        v21 = [v19 countByEnumeratingWithState:&v24 objects:v32 count:16];
      }

      while (v21);
    }
  }
}

- (void)finishAllWithError:(id)a3
{
  v4 = a3;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __41__ASCPendingPromises_finishAllWithError___block_invoke;
  v8[3] = &unk_2781CC6D8;
  v9 = v4;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __41__ASCPendingPromises_finishAllWithError___block_invoke_2;
  v6[3] = &unk_2781CC700;
  v7 = v9;
  v5 = v9;
  [(ASCPendingPromises *)self enumerateBinaryPromises:v8 andPromises:v6];
}

@end