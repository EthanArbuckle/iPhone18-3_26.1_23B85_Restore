@interface ASMPolarisResourceProvider
- (ASMPolarisResourceProvider)init;
- (void)_activateWithExecutionSession:(id)session;
- (void)_publishResource:(id)resource completion:(id)completion;
- (void)_removeResource:(id)resource;
- (void)activateWithExecutionSession:(id)session;
- (void)invalidate;
- (void)publishResource:(id)resource completion:(id)completion;
- (void)removeResource:(id)resource;
- (void)resourcesNoLongerWanted:(id)wanted;
- (void)resourcesRequested:(id)requested;
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

- (void)activateWithExecutionSession:(id)session
{
  sessionCopy = session;
  dispatchQueue = self->_dispatchQueue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __59__ASMPolarisResourceProvider_activateWithExecutionSession___block_invoke;
  v7[3] = &unk_278BF7830;
  v7[4] = self;
  v8 = sessionCopy;
  v6 = sessionCopy;
  dispatch_async(dispatchQueue, v7);
}

- (void)_activateWithExecutionSession:(id)session
{
  sessionCopy = session;
  if (!self->_activateCalled)
  {
    self->_activateCalled = 1;
    v8 = sessionCopy;
    v5 = sessionCopy;
    if (!v5)
    {
      v5 = [MEMORY[0x277D3E660] uniqueSessionWithName:@"ASMResourceProvider"];
    }

    session = self->_session;
    self->_session = v5;
    v7 = v5;

    [(PSExecutionSession *)v7 setDelegate:self delegateQueue:self->_dispatchQueue];
    sessionCopy = v8;
  }
}

- (void)publishResource:(id)resource completion:(id)completion
{
  resourceCopy = resource;
  completionCopy = completion;
  dispatchQueue = self->_dispatchQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __57__ASMPolarisResourceProvider_publishResource_completion___block_invoke;
  block[3] = &unk_278BF7858;
  block[4] = self;
  v12 = resourceCopy;
  v13 = completionCopy;
  v9 = completionCopy;
  v10 = resourceCopy;
  dispatch_async(dispatchQueue, block);
}

- (void)_publishResource:(id)resource completion:(id)completion
{
  completionCopy = completion;
  [resource type];
  v5 = *MEMORY[0x277CCA590];
  v6 = NSErrorF();
  if (gLogCategory_ASMPolarisResourceProvider <= 90 && (gLogCategory_ASMPolarisResourceProvider != -1 || _LogCategory_Initialize()))
  {
    [ASMPolarisResourceProvider _publishResource:completion:];
  }

  if (completionCopy)
  {
    completionCopy[2](completionCopy, v6);
  }
}

- (void)removeResource:(id)resource
{
  resourceCopy = resource;
  dispatchQueue = self->_dispatchQueue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __45__ASMPolarisResourceProvider_removeResource___block_invoke;
  v7[3] = &unk_278BF7830;
  v7[4] = self;
  v8 = resourceCopy;
  v6 = resourceCopy;
  dispatch_async(dispatchQueue, v7);
}

- (void)_removeResource:(id)resource
{
  resourceKey = [resource resourceKey];
  v4 = [(NSMutableDictionary *)self->_currentResourcesMap objectForKeyedSubscript:?];

  if (v4)
  {
    [(NSMutableDictionary *)self->_currentResourcesMap removeObjectForKey:resourceKey];
  }
}

- (void)resourcesRequested:(id)requested
{
  v30 = *MEMORY[0x277D85DE8];
  requestedCopy = requested;
  dispatch_assert_queue_V2(self->_dispatchQueue);
  array = [MEMORY[0x277CBEB18] array];
  array2 = [MEMORY[0x277CBEB18] array];
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v6 = requestedCopy;
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
        resourceKey = [v11 resourceKey];
        v14 = [(NSMutableDictionary *)currentResourcesMap objectForKeyedSubscript:resourceKey];

        if (v14)
        {
          stride = [v11 stride];
          v16 = self->_currentResourcesMap;
          resourceKey2 = [v11 resourceKey];
          v18 = [(NSMutableDictionary *)v16 objectForKeyedSubscript:resourceKey2];

          if (v18)
          {
            if (gLogCategory_ASMPolarisResourceProvider <= 30 && (gLogCategory_ASMPolarisResourceProvider != -1 || _LogCategory_Initialize()))
            {
              [ASMPolarisResourceProvider resourcesRequested:v18];
            }

            [array addObject:v11];
            [array2 addObject:v18];
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

  if ([array count])
  {
    [(PSExecutionSession *)self->_session resourceRequestsAreComplete:array];
    dispatchQueue = self->_dispatchQueue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __49__ASMPolarisResourceProvider_resourcesRequested___block_invoke;
    block[3] = &unk_278BF7830;
    block[4] = self;
    v24 = array2;
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

- (void)resourcesNoLongerWanted:(id)wanted
{
  v23 = *MEMORY[0x277D85DE8];
  wantedCopy = wanted;
  dispatch_assert_queue_V2(self->_dispatchQueue);
  array = [MEMORY[0x277CBEB18] array];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v6 = wantedCopy;
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
          [array addObject:v11];
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
  v17 = array;
  v14 = array;
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