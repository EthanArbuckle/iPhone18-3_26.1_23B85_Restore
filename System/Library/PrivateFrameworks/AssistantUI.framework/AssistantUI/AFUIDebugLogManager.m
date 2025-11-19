@interface AFUIDebugLogManager
- (AFUIDebugLogManager)init;
- (void)captureViewHierarchyLogWithDefaultViewHierarchy:(id)a3 completion:(id)a4;
@end

@implementation AFUIDebugLogManager

- (AFUIDebugLogManager)init
{
  v6.receiver = self;
  v6.super_class = AFUIDebugLogManager;
  v2 = [(AFUIDebugLogManager *)&v6 init];
  if (v2)
  {
    v3 = dispatch_queue_create("Siri log manager queue", MEMORY[0x277D85CD8]);
    queue = v2->_queue;
    v2->_queue = v3;
  }

  return v2;
}

- (void)captureViewHierarchyLogWithDefaultViewHierarchy:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = v7;
  if (v7)
  {
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 3221225472;
    aBlock[2] = __82__AFUIDebugLogManager_captureViewHierarchyLogWithDefaultViewHierarchy_completion___block_invoke;
    aBlock[3] = &unk_278CD6C68;
    v14 = v7;
    v9 = _Block_copy(aBlock);
    v10 = v9;
    if (v6)
    {
      (*(v9 + 2))(v9, v6);
    }

    else
    {
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __82__AFUIDebugLogManager_captureViewHierarchyLogWithDefaultViewHierarchy_completion___block_invoke_2;
      block[3] = &unk_278CD5790;
      block[4] = self;
      v12 = v9;
      dispatch_async(MEMORY[0x277D85CD0], block);
    }
  }
}

@end