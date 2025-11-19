@interface HomeKitAgent
+ (BOOL)_loadHomeKit;
- (HomeKitAgent)initWithIDSService:(id)a3;
- (void)_replyWithResidentDevicesIDSIdentifiers:(id)a3;
- (void)dealloc;
- (void)fetchResidentDevicesIDSIdentifiersWithReply:(id)a3;
- (void)homeManagerDidUpdateHomes:(id)a3;
@end

@implementation HomeKitAgent

- (HomeKitAgent)initWithIDSService:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = HomeKitAgent;
  v6 = [(HomeKitAgent *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_idsService, a3);
  }

  return v7;
}

- (void)dealloc
{
  gHMHomeManagerClass = 0;
  if (gHomeKitDyLibHandle)
  {
    dlclose(gHomeKitDyLibHandle);
    gHomeKitDyLibHandle = 0;
  }

  v3.receiver = self;
  v3.super_class = HomeKitAgent;
  [(HomeKitAgent *)&v3 dealloc];
}

+ (BOOL)_loadHomeKit
{
  if (_loadHomeKit_symbolLoadOnce != -1)
  {
    +[HomeKitAgent _loadHomeKit];
  }

  return _loadHomeKit_symbolsLoaded;
}

void __28__HomeKitAgent__loadHomeKit__block_invoke()
{
  gHomeKitDyLibHandle = dlopen("/System/Library/Frameworks/HomeKit.framework/HomeKit", 6);
  if (!gHomeKitDyLibHandle)
  {
    v3 = xpcLogHandle();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      v6 = 0;
      v4 = "Failed to load HomeKit.framework";
      v5 = &v6;
      goto LABEL_14;
    }

LABEL_15:

    return;
  }

  gHMHomeManagerClass = objc_getClass("HMHomeManager");
  Class = objc_getClass("HMMutableHomeManagerConfiguration");
  gHMMutableHomeManagerConfigurationClass = Class;
  if (gHMHomeManagerClass)
  {
    v1 = Class == 0;
  }

  else
  {
    v1 = 1;
  }

  v2 = !v1;
  _loadHomeKit_symbolsLoaded = v2;
  if (v1)
  {
    v3 = xpcLogHandle();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      v7 = 0;
      v4 = "Failed to load HMHomeManager and/or HMHomeManagerConfiguration class from HomeKit.framework";
      v5 = &v7;
LABEL_14:
      _os_log_impl(&dword_241804000, v3, OS_LOG_TYPE_ERROR, v4, v5, 2u);
      goto LABEL_15;
    }

    goto LABEL_15;
  }
}

- (void)fetchResidentDevicesIDSIdentifiersWithReply:(id)a3
{
  aBlock = a3;
  v4 = +[HomeKitAgent _loadHomeKit];
  v5 = aBlock;
  if (v4)
  {
    if (self->_homeManager)
    {
      v5 = aBlock;
      if (!self->_didUpdateHomes)
      {
        goto LABEL_9;
      }

      v4 = [(HomeKitAgent *)self _replyWithResidentDevicesIDSIdentifiers:aBlock];
    }

    else
    {
      v6 = [gHMMutableHomeManagerConfigurationClass defaultPrivateConfiguration];
      [v6 setOptions:2056];
      [v6 setCachePolicy:2];
      [v6 setDiscretionary:1];
      v7 = [[gHMHomeManagerClass alloc] initWithHomeMangerConfiguration:v6];
      homeManager = self->_homeManager;
      self->_homeManager = v7;

      completionBlock = self->_completionBlock;
      if (completionBlock)
      {
        _Block_release(completionBlock);
        v10 = self->_completionBlock;
        self->_completionBlock = 0;
      }

      v11 = _Block_copy(aBlock);
      v12 = self->_completionBlock;
      self->_completionBlock = v11;

      [(HMHomeManager *)self->_homeManager setDelegate:self];
    }

    v5 = aBlock;
  }

LABEL_9:

  MEMORY[0x2821F96F8](v4, v5);
}

- (void)_replyWithResidentDevicesIDSIdentifiers:(id)a3
{
  v4 = a3;
  v5 = [(HMHomeManager *)self->_homeManager homes];
  v6 = [MEMORY[0x277CBEB18] array];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __56__HomeKitAgent__replyWithResidentDevicesIDSIdentifiers___block_invoke;
  v8[3] = &unk_278CF0D58;
  v8[4] = self;
  v7 = v6;
  v9 = v7;
  [v5 enumerateObjectsUsingBlock:v8];
  if (v4)
  {
    v4[2](v4, v7);
  }
}

void __56__HomeKitAgent__replyWithResidentDevicesIDSIdentifiers___block_invoke(uint64_t a1, void *a2)
{
  v14 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [v3 currentUser];
  v5 = [v3 homeAccessControlForUser:v4];
  v6 = [v5 isOwner];

  if (v6)
  {
    v7 = [v3 residentDevices];
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __56__HomeKitAgent__replyWithResidentDevicesIDSIdentifiers___block_invoke_2;
    v10[3] = &unk_278CF0D30;
    v8 = *(a1 + 40);
    v10[4] = *(a1 + 32);
    v11 = v8;
    [v7 enumerateObjectsUsingBlock:v10];
  }

  else
  {
    v7 = homekitLogHandle();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v13 = v3;
      _os_log_impl(&dword_241804000, v7, OS_LOG_TYPE_INFO, "User does not own this home : %@", buf, 0xCu);
    }
  }

  v9 = *MEMORY[0x277D85DE8];
}

void __56__HomeKitAgent__replyWithResidentDevicesIDSIdentifiers___block_invoke_2(uint64_t a1, void *a2)
{
  v14 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [v3 device];
  v5 = [v4 IDSDeviceForIDSService:*(*(a1 + 32) + 24)];
  v6 = [v5 uniqueID];

  if (v6)
  {
    [*(a1 + 40) addObject:v6];
  }

  else
  {
    v7 = homekitLogHandle();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v8 = [v3 name];
      v10 = 138412546;
      v11 = v3;
      v12 = 2112;
      v13 = v8;
      _os_log_impl(&dword_241804000, v7, OS_LOG_TYPE_ERROR, "Failed to retrieve account ID from ResidentDevice %@ (%@)", &v10, 0x16u);
    }
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (void)homeManagerDidUpdateHomes:(id)a3
{
  self->_didUpdateHomes = 1;
  if (self->_completionBlock)
  {
    [(HomeKitAgent *)self _replyWithResidentDevicesIDSIdentifiers:?];
    _Block_release(self->_completionBlock);
    completionBlock = self->_completionBlock;
    self->_completionBlock = 0;
  }
}

@end