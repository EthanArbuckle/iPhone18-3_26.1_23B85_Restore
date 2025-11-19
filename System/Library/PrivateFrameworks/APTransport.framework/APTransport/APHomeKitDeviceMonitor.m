@interface APHomeKitDeviceMonitor
- (APHomeKitDeviceMonitor)init;
- (BOOL)refreshWithAccessory:(id)a3 isAddOrUpdate:(BOOL)a4 notifyOnAccessoryChange:(BOOL)a5;
- (NSSet)homeKitDeviceIDs;
- (void)accessoryDidUpdateName:(id)a3;
- (void)activateWithCompletion:(id)a3;
- (void)activateWithCompletionInternal:(id)a3;
- (void)dealloc;
- (void)fullRefresh;
- (void)handleHomeKitAccessoriesDidChange;
- (void)home:(id)a3 didAddAccessory:(id)a4;
- (void)home:(id)a3 didRemoveAccessory:(id)a4;
- (void)homeManager:(id)a3 didAddHome:(id)a4;
- (void)homeManager:(id)a3 didRemoveHome:(id)a4;
- (void)homeManagerDidUpdateCurrentHome:(id)a3;
- (void)homeManagerDidUpdateHomes:(id)a3;
- (void)invalidate;
- (void)invalidateInternal;
@end

@implementation APHomeKitDeviceMonitor

- (APHomeKitDeviceMonitor)init
{
  v10 = *MEMORY[0x277D85DE8];
  v8.receiver = self;
  v8.super_class = APHomeKitDeviceMonitor;
  v2 = [(APHomeKitDeviceMonitor *)&v8 init];
  v3 = v2;
  if (!v2)
  {
    goto LABEL_7;
  }

  v7 = v2;
  SNPrintF();
  [(APHomeKitDeviceMonitor *)v3 setInternalQueue:dispatch_queue_create(label, 0), v7];
  if (![(APHomeKitDeviceMonitor *)v3 internalQueue])
  {
    v6 = 58;
LABEL_11:
    [(APHomeKitDeviceMonitor *)v6 init];
    v3 = 0;
    goto LABEL_7;
  }

  -[APHomeKitDeviceMonitor setDeviceIdentifiers:](v3, "setDeviceIdentifiers:", [MEMORY[0x277CBEB58] set]);
  if (![(APHomeKitDeviceMonitor *)v3 deviceIdentifiers])
  {
    v6 = 61;
    goto LABEL_11;
  }

  if (gLogCategory_APHomeKitDeviceMonitor <= 50 && (gLogCategory_APHomeKitDeviceMonitor != -1 || _LogCategory_Initialize()))
  {
    [APHomeKitDeviceMonitor init];
  }

LABEL_7:
  v4 = *MEMORY[0x277D85DE8];
  return v3;
}

- (void)dealloc
{
  self->_homeManager = 0;

  self->_deviceIdentifiers = 0;
  dispatchQueue = self->_dispatchQueue;
  if (dispatchQueue)
  {
    dispatch_release(dispatchQueue);
    self->_dispatchQueue = 0;
  }

  internalQueue = self->_internalQueue;
  if (internalQueue)
  {
    dispatch_release(internalQueue);
    self->_internalQueue = 0;
  }

  if (gLogCategory_APHomeKitDeviceMonitor <= 50 && (gLogCategory_APHomeKitDeviceMonitor != -1 || _LogCategory_Initialize()))
  {
    [APHomeKitDeviceMonitor dealloc];
  }

  v5.receiver = self;
  v5.super_class = APHomeKitDeviceMonitor;
  [(APHomeKitDeviceMonitor *)&v5 dealloc];
}

- (void)activateWithCompletion:(id)a3
{
  v5 = [(APHomeKitDeviceMonitor *)self internalQueue];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __49__APHomeKitDeviceMonitor_activateWithCompletion___block_invoke;
  v6[3] = &unk_278BC71A8;
  v6[4] = self;
  v6[5] = a3;
  dispatch_async(v5, v6);
}

- (void)invalidate
{
  v3 = [(APHomeKitDeviceMonitor *)self internalQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __36__APHomeKitDeviceMonitor_invalidate__block_invoke;
  block[3] = &unk_278BC6E38;
  block[4] = self;
  dispatch_sync(v3, block);
}

- (NSSet)homeKitDeviceIDs
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3052000000;
  v10 = __Block_byref_object_copy__1;
  v11 = __Block_byref_object_dispose__1;
  v12 = [MEMORY[0x277CBEB58] set];
  v3 = [(APHomeKitDeviceMonitor *)self internalQueue];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __42__APHomeKitDeviceMonitor_homeKitDeviceIDs__block_invoke;
  v6[3] = &unk_278BC8408;
  v6[4] = self;
  v6[5] = &v7;
  dispatch_sync(v3, v6);
  v4 = v8[5];
  _Block_object_dispose(&v7, 8);
  return v4;
}

uint64_t __42__APHomeKitDeviceMonitor_homeKitDeviceIDs__block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x277D85DE8];
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v2 = [*(a1 + 32) deviceIdentifiers];
  result = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
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
          objc_enumerationMutation(v2);
        }

        [*(*(*(a1 + 40) + 8) + 40) addObject:*(*(&v8 + 1) + 8 * v6++)];
      }

      while (v4 != v6);
      result = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
      v4 = result;
    }

    while (result);
  }

  v7 = *MEMORY[0x277D85DE8];
  return result;
}

- (void)activateWithCompletionInternal:(id)a3
{
  if ([(APHomeKitDeviceMonitor *)self invalidated])
  {
    [APHomeKitDeviceMonitor activateWithCompletionInternal:];
    v6 = 0;
    goto LABEL_16;
  }

  v16 = 0;
  v17 = &v16;
  v18 = 0x3052000000;
  v19 = __Block_byref_object_copy__1;
  v5 = getHMMutableHomeManagerConfigurationClass_softClass;
  v20 = __Block_byref_object_dispose__1;
  v21 = getHMMutableHomeManagerConfigurationClass_softClass;
  if (!getHMMutableHomeManagerConfigurationClass_softClass)
  {
    v11 = MEMORY[0x277D85DD0];
    v12 = 3221225472;
    v13 = __getHMMutableHomeManagerConfigurationClass_block_invoke;
    v14 = &unk_278BC7CE0;
    v15 = &v16;
    __getHMMutableHomeManagerConfigurationClass_block_invoke(&v11);
    v5 = v17[5];
  }

  _Block_object_dispose(&v16, 8);
  v6 = [[v5 alloc] initWithOptions:64 cachePolicy:1];
  [v6 setInactiveUpdatingLevel:1];
  if (!v6)
  {
    [APHomeKitDeviceMonitor activateWithCompletionInternal:];
    goto LABEL_16;
  }

  v16 = 0;
  v17 = &v16;
  v18 = 0x3052000000;
  v19 = __Block_byref_object_copy__1;
  v7 = getHMHomeManagerClass_softClass;
  v20 = __Block_byref_object_dispose__1;
  v21 = getHMHomeManagerClass_softClass;
  if (!getHMHomeManagerClass_softClass)
  {
    v11 = MEMORY[0x277D85DD0];
    v12 = 3221225472;
    v13 = __getHMHomeManagerClass_block_invoke;
    v14 = &unk_278BC7CE0;
    v15 = &v16;
    __getHMHomeManagerClass_block_invoke(&v11);
    v7 = v17[5];
  }

  _Block_object_dispose(&v16, 8);
  -[APHomeKitDeviceMonitor setHomeManager:](self, "setHomeManager:", [[v7 alloc] initWithConfiguration:v6]);
  if (![(APHomeKitDeviceMonitor *)self homeManager])
  {
    [APHomeKitDeviceMonitor activateWithCompletionInternal:];
    goto LABEL_16;
  }

  [(HMHomeManager *)[(APHomeKitDeviceMonitor *)self homeManager] setDelegate:self];
  if (gLogCategory_APHomeKitDeviceMonitor <= 50 && (gLogCategory_APHomeKitDeviceMonitor != -1 || _LogCategory_Initialize()))
  {
    [APHomeKitDeviceMonitor activateWithCompletionInternal:];
    if (!a3)
    {
      goto LABEL_16;
    }
  }

  else if (!a3)
  {
    goto LABEL_16;
  }

  if ([(APHomeKitDeviceMonitor *)self dispatchQueue])
  {
    v8 = [(APHomeKitDeviceMonitor *)self dispatchQueue];
  }

  else
  {
    v8 = MEMORY[0x277D85CD0];
  }

  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __57__APHomeKitDeviceMonitor_activateWithCompletionInternal___block_invoke;
  block[3] = &unk_278BC7098;
  block[4] = a3;
  v10 = 0;
  dispatch_async(v8, block);
LABEL_16:
}

uint64_t __57__APHomeKitDeviceMonitor_activateWithCompletionInternal___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);
  if (v2)
  {
    v3 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA590] code:v2 userInfo:0];
  }

  else
  {
    v3 = 0;
  }

  v4 = *(v1 + 16);

  return v4(v1, v3);
}

uint64_t __59__APHomeKitDeviceMonitor_handleHomeKitAccessoriesDidChange__block_invoke(uint64_t a1)
{
  v1 = *([*(a1 + 32) homeConfigurationDidChangeHandler] + 16);

  return v1();
}

- (void)homeManagerDidUpdateHomes:(id)a3
{
  if (gLogCategory_APHomeKitDeviceMonitor <= 30 && (gLogCategory_APHomeKitDeviceMonitor != -1 || _LogCategory_Initialize()))
  {
    v6 = self;
    v7 = a3;
    LogPrintF();
  }

  v5 = [(APHomeKitDeviceMonitor *)self internalQueue:v6];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __52__APHomeKitDeviceMonitor_homeManagerDidUpdateHomes___block_invoke;
  block[3] = &unk_278BC6E38;
  block[4] = self;
  dispatch_sync(v5, block);
}

- (void)homeManagerDidUpdateCurrentHome:(id)a3
{
  if (gLogCategory_APHomeKitDeviceMonitor <= 30 && (gLogCategory_APHomeKitDeviceMonitor != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }
}

- (void)homeManager:(id)a3 didAddHome:(id)a4
{
  if (gLogCategory_APHomeKitDeviceMonitor <= 30 && (gLogCategory_APHomeKitDeviceMonitor != -1 || _LogCategory_Initialize()))
  {
    v9 = a3;
    v10 = a4;
    v8 = self;
    LogPrintF();
  }

  v7 = [(APHomeKitDeviceMonitor *)self internalQueue:v8];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __49__APHomeKitDeviceMonitor_homeManager_didAddHome___block_invoke;
  block[3] = &unk_278BC71F8;
  block[4] = self;
  block[5] = a4;
  dispatch_sync(v7, block);
}

- (void)homeManager:(id)a3 didRemoveHome:(id)a4
{
  if (gLogCategory_APHomeKitDeviceMonitor <= 30 && (gLogCategory_APHomeKitDeviceMonitor != -1 || _LogCategory_Initialize()))
  {
    v9 = a3;
    v10 = a4;
    v8 = self;
    LogPrintF();
  }

  v7 = [(APHomeKitDeviceMonitor *)self internalQueue:v8];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __52__APHomeKitDeviceMonitor_homeManager_didRemoveHome___block_invoke;
  block[3] = &unk_278BC71F8;
  block[4] = self;
  block[5] = a4;
  dispatch_sync(v7, block);
}

- (void)home:(id)a3 didAddAccessory:(id)a4
{
  if (gLogCategory_APHomeKitDeviceMonitor <= 30 && (gLogCategory_APHomeKitDeviceMonitor != -1 || _LogCategory_Initialize()))
  {
    v9 = a3;
    v10 = a4;
    v8 = self;
    LogPrintF();
  }

  v7 = [(APHomeKitDeviceMonitor *)self internalQueue:v8];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __47__APHomeKitDeviceMonitor_home_didAddAccessory___block_invoke;
  block[3] = &unk_278BC71F8;
  block[4] = self;
  block[5] = a4;
  dispatch_sync(v7, block);
}

- (void)home:(id)a3 didRemoveAccessory:(id)a4
{
  if (gLogCategory_APHomeKitDeviceMonitor <= 30 && (gLogCategory_APHomeKitDeviceMonitor != -1 || _LogCategory_Initialize()))
  {
    v9 = a3;
    v10 = a4;
    v8 = self;
    LogPrintF();
  }

  v7 = [(APHomeKitDeviceMonitor *)self internalQueue:v8];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __50__APHomeKitDeviceMonitor_home_didRemoveAccessory___block_invoke;
  block[3] = &unk_278BC71F8;
  block[4] = self;
  block[5] = a4;
  dispatch_sync(v7, block);
}

- (void)accessoryDidUpdateName:(id)a3
{
  if (gLogCategory_APHomeKitDeviceMonitor <= 30 && (gLogCategory_APHomeKitDeviceMonitor != -1 || _LogCategory_Initialize()))
  {
    v6 = self;
    v7 = a3;
    LogPrintF();
  }

  v5 = [(APHomeKitDeviceMonitor *)self internalQueue:v6];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __49__APHomeKitDeviceMonitor_accessoryDidUpdateName___block_invoke;
  block[3] = &unk_278BC71F8;
  block[4] = self;
  block[5] = a3;
  dispatch_sync(v5, block);
}

- (void)invalidateInternal
{
  if (![(APHomeKitDeviceMonitor *)self invalidated])
  {
    [(APHomeKitDeviceMonitor *)self setHomeConfigurationDidChangeHandler:0];
    if (gLogCategory_APHomeKitDeviceMonitor <= 50 && (gLogCategory_APHomeKitDeviceMonitor != -1 || OUTLINED_FUNCTION_8()))
    {
      OUTLINED_FUNCTION_9();
    }
  }

  [(APHomeKitDeviceMonitor *)self setInvalidated:1];
}

- (void)handleHomeKitAccessoriesDidChange
{
  if (![(APHomeKitDeviceMonitor *)self invalidated])
  {
    if (gLogCategory_APHomeKitDeviceMonitor <= 50 && (gLogCategory_APHomeKitDeviceMonitor != -1 || OUTLINED_FUNCTION_8()))
    {
      v4 = self;
      OUTLINED_FUNCTION_9();
    }

    if ([(APHomeKitDeviceMonitor *)self homeConfigurationDidChangeHandler])
    {
      if ([(APHomeKitDeviceMonitor *)self dispatchQueue])
      {
        v3 = [(APHomeKitDeviceMonitor *)self dispatchQueue];
      }

      else
      {
        v3 = MEMORY[0x277D85CD0];
      }

      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __59__APHomeKitDeviceMonitor_handleHomeKitAccessoriesDidChange__block_invoke;
      block[3] = &unk_278BC6E38;
      block[4] = self;
      dispatch_async(v3, block);
    }
  }
}

- (void)fullRefresh
{
  v16 = *MEMORY[0x277D85DE8];
  if (![(APHomeKitDeviceMonitor *)self invalidated])
  {
    if (gLogCategory_APHomeKitDeviceMonitor <= 30 && (gLogCategory_APHomeKitDeviceMonitor != -1 || _LogCategory_Initialize()))
    {
      v10 = self;
      LogPrintF();
    }

    v3 = [MEMORY[0x277CBEB98] setWithSet:{-[APHomeKitDeviceMonitor deviceIdentifiers](self, "deviceIdentifiers", v10)}];
    [(NSMutableSet *)[(APHomeKitDeviceMonitor *)self deviceIdentifiers] removeAllObjects];
    v13 = 0u;
    v14 = 0u;
    v11 = 0u;
    v12 = 0u;
    v4 = [(HMHomeManager *)[(APHomeKitDeviceMonitor *)self homeManager] homes];
    v5 = [(NSArray *)v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v12;
      do
      {
        for (i = 0; i != v6; ++i)
        {
          if (*v12 != v7)
          {
            objc_enumerationMutation(v4);
          }

          [(APHomeKitDeviceMonitor *)self refreshWithHome:*(*(&v11 + 1) + 8 * i) isAddOrUpdate:1 notifyOnAccessoriesChanged:0];
        }

        v6 = [(NSArray *)v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
      }

      while (v6);
    }

    if (([v3 isEqualToSet:{-[APHomeKitDeviceMonitor deviceIdentifiers](self, "deviceIdentifiers")}] & 1) == 0)
    {
      [(APHomeKitDeviceMonitor *)self handleHomeKitAccessoriesDidChange];
    }
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (BOOL)refreshWithAccessory:(id)a3 isAddOrUpdate:(BOOL)a4 notifyOnAccessoryChange:(BOOL)a5
{
  v5 = a5;
  v6 = a4;
  v9 = [a3 deviceIdentifier];
  if ([(APHomeKitDeviceMonitor *)self invalidated])
  {
    goto LABEL_19;
  }

  if (gLogCategory_APHomeKitDeviceMonitor <= 50 && (gLogCategory_APHomeKitDeviceMonitor != -1 || OUTLINED_FUNCTION_8()))
  {
    v10 = [a3 home];
    if (v6)
    {
      v11 = "Monitoring";
    }

    else
    {
      v11 = "Stop monitoring";
    }

    v18 = [a3 deviceIdentifier];
    v19 = [a3 name];
    v16 = v11;
    v17 = a3;
    v14 = self;
    v15 = v10;
    OUTLINED_FUNCTION_9();
  }

  if (v6)
  {
    [a3 setDelegate:self];
    if (v9 && ([(NSMutableSet *)[(APHomeKitDeviceMonitor *)self deviceIdentifiers] containsObject:v9]& 1) == 0)
    {
      [(NSMutableSet *)[(APHomeKitDeviceMonitor *)self deviceIdentifiers] addObject:v9];
      if (!v5)
      {
        goto LABEL_18;
      }

      goto LABEL_17;
    }

LABEL_19:
    LOBYTE(v12) = 0;
    return v12;
  }

  [a3 setDelegate:0];
  if (!v9)
  {
    goto LABEL_19;
  }

  v12 = [(NSMutableSet *)[(APHomeKitDeviceMonitor *)self deviceIdentifiers] containsObject:v9];
  if (v12)
  {
    [(NSMutableSet *)[(APHomeKitDeviceMonitor *)self deviceIdentifiers] removeObject:v9];
    if (!v5)
    {
LABEL_18:
      LOBYTE(v12) = 1;
      return v12;
    }

LABEL_17:
    [(APHomeKitDeviceMonitor *)self handleHomeKitAccessoriesDidChange:v14];
    goto LABEL_18;
  }

  return v12;
}

@end