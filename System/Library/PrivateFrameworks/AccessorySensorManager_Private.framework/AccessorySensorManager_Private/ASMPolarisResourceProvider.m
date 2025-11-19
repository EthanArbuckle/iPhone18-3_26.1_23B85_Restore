@interface ASMPolarisResourceProvider
- (ASMPolarisResourceProvider)init;
- (void)_activateWithExecutionSession:(id)a3;
- (void)_publishResource:(id)a3 completion:(id)a4;
- (void)_removeResource:(id)a3;
- (void)activateWithExecutionSession:(id)a3;
- (void)invalidate;
- (void)publishResource:(id)a3 completion:(id)a4;
- (void)removeResource:(id)a3;
- (void)resourcesNoLongerWanted:(id)a3;
- (void)resourcesRequested:(id)a3;
@end

@implementation ASMPolarisResourceProvider

- (ASMPolarisResourceProvider)init
{
  v8.receiver = self;
  v8.super_class = ASMPolarisResourceProvider;
  v2 = [(ASMPolarisResourceProvider *)&v8 init];
  if (v2)
  {
    v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v4 = dispatch_queue_create("com.apple.ASMPolarisResourceProvider.daemon.queue", v3);
    dispatchQueue = v2->_dispatchQueue;
    v2->_dispatchQueue = v4;

    v6 = v2;
  }

  return v2;
}

- (void)activateWithExecutionSession:(id)a3
{
  v4 = a3;
  dispatchQueue = self->_dispatchQueue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __59__ASMPolarisResourceProvider_activateWithExecutionSession___block_invoke;
  v7[3] = &unk_278BF7830;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(dispatchQueue, v7);
}

- (void)_activateWithExecutionSession:(id)a3
{
  v4 = a3;
  if (!self->_activateCalled)
  {
    self->_activateCalled = 1;
    v8 = v4;
    v5 = v4;
    if (!v5)
    {
      v5 = [MEMORY[0x277D3E660] uniqueSessionWithName:@"ASMResourceProvider"];
    }

    session = self->_session;
    self->_session = v5;
    v7 = v5;

    [(PSExecutionSession *)v7 setDelegate:self delegateQueue:self->_dispatchQueue];
    v4 = v8;
  }
}

- (void)publishResource:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  dispatchQueue = self->_dispatchQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __57__ASMPolarisResourceProvider_publishResource_completion___block_invoke;
  block[3] = &unk_278BF7858;
  block[4] = self;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_async(dispatchQueue, block);
}

- (void)_publishResource:(id)a3 completion:(id)a4
{
  v7 = a4;
  [a3 type];
  v5 = *MEMORY[0x277CCA590];
  v6 = NSErrorF();
  if (gLogCategory_ASMPolarisResourceProvider <= 90 && (gLogCategory_ASMPolarisResourceProvider != -1 || _LogCategory_Initialize()))
  {
    [ASMPolarisResourceProvider _publishResource:completion:];
  }

  if (v7)
  {
    v7[2](v7, v6);
  }
}

- (void)removeResource:(id)a3
{
  v4 = a3;
  dispatchQueue = self->_dispatchQueue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __45__ASMPolarisResourceProvider_removeResource___block_invoke;
  v7[3] = &unk_278BF7830;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(dispatchQueue, v7);
}

- (void)_removeResource:(id)a3
{
  v5 = [a3 resourceKey];
  v4 = [(NSMutableDictionary *)self->_currentResourcesMap objectForKeyedSubscript:?];

  if (v4)
  {
    [(NSMutableDictionary *)self->_currentResourcesMap removeObjectForKey:v5];
  }
}

- (void)resourcesRequested:(id)a3
{
  v30 = *MEMORY[0x277D85DE8];
  v4 = a3;
  dispatch_assert_queue_V2(self->_dispatchQueue);
  v22 = [MEMORY[0x277CBEB18] array];
  v5 = [MEMORY[0x277CBEB18] array];
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v6 = v4;
  v7 = [v6 countByEnumeratingWithState:&v25 objects:v29 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v26;
    do
    {
      v10 = 0;
      do
      {
        if (*v26 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v25 + 1) + 8 * v10);
        currentResourcesMap = self->_currentResourcesMap;
        v13 = [v11 resourceKey];
        v14 = [(NSMutableDictionary *)currentResourcesMap objectForKeyedSubscript:v13];

        if (v14)
        {
          v15 = [v11 stride];
          v16 = self->_currentResourcesMap;
          v17 = [v11 resourceKey];
          v18 = [(NSMutableDictionary *)v16 objectForKeyedSubscript:v17];

          if (v18)
          {
            if (gLogCategory_ASMPolarisResourceProvider <= 30 && (gLogCategory_ASMPolarisResourceProvider != -1 || _LogCategory_Initialize()))
            {
              [ASMPolarisResourceProvider resourcesRequested:v18];
            }

            [v22 addObject:v11];
            [v5 addObject:v18];
          }
        }

        ++v10;
      }

      while (v8 != v10);
      v19 = [v6 countByEnumeratingWithState:&v25 objects:v29 count:16];
      v8 = v19;
    }

    while (v19);
  }

  if ([v22 count])
  {
    [(PSExecutionSession *)self->_session resourceRequestsAreComplete:v22];
    dispatchQueue = self->_dispatchQueue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __49__ASMPolarisResourceProvider_resourcesRequested___block_invoke;
    block[3] = &unk_278BF7830;
    block[4] = self;
    v24 = v5;
    dispatch_async(dispatchQueue, block);
  }

  v21 = *MEMORY[0x277D85DE8];
}

uint64_t __49__ASMPolarisResourceProvider_resourcesRequested___block_invoke(uint64_t a1)
{
  result = *(*(a1 + 32) + 40);
  if (result)
  {
    return (*(result + 16))(result, *(a1 + 40));
  }

  return result;
}

- (void)resourcesNoLongerWanted:(id)a3
{
  v23 = *MEMORY[0x277D85DE8];
  v4 = a3;
  dispatch_assert_queue_V2(self->_dispatchQueue);
  v5 = [MEMORY[0x277CBEB18] array];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v6 = v4;
  v7 = [v6 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v19;
    do
    {
      v10 = 0;
      do
      {
        if (*v19 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = [(NSMutableDictionary *)self->_currentResourcesMap objectForKeyedSubscript:*(*(&v18 + 1) + 8 * v10)];
        if (v11)
        {
          [v5 addObject:v11];
          if (gLogCategory_ASMPolarisResourceProvider <= 30 && (gLogCategory_ASMPolarisResourceProvider != -1 || _LogCategory_Initialize()))
          {
            [ASMPolarisResourceProvider resourcesNoLongerWanted:v11];
          }
        }

        ++v10;
      }

      while (v8 != v10);
      v12 = [v6 countByEnumeratingWithState:&v18 objects:v22 count:16];
      v8 = v12;
    }

    while (v12);
  }

  dispatchQueue = self->_dispatchQueue;
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __54__ASMPolarisResourceProvider_resourcesNoLongerWanted___block_invoke;
  v16[3] = &unk_278BF7830;
  v16[4] = self;
  v17 = v5;
  v14 = v5;
  dispatch_async(dispatchQueue, v16);

  v15 = *MEMORY[0x277D85DE8];
}

uint64_t __54__ASMPolarisResourceProvider_resourcesNoLongerWanted___block_invoke(uint64_t a1)
{
  result = *(*(a1 + 32) + 48);
  if (result)
  {
    return (*(result + 16))(result, *(a1 + 40));
  }

  return result;
}

- (void)invalidate
{
  [(NSMutableDictionary *)self->_currentResourcesMap removeAllObjects];
  currentResourcesMap = self->_currentResourcesMap;
  self->_currentResourcesMap = 0;
}

- (void)resourcesRequested:(void *)a1 .cold.1(void *a1)
{
  v1 = [a1 resourceKey];
  LogPrintF();
}

- (void)resourcesNoLongerWanted:(void *)a1 .cold.1(void *a1)
{
  v1 = [a1 resourceKey];
  LogPrintF();
}

@end