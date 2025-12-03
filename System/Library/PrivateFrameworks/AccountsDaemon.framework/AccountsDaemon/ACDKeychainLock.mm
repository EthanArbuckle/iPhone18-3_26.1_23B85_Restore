@interface ACDKeychainLock
- (ACDKeychainLock)init;
- (void)lockPerformForService:(id)service username:(id)username block:(id)block;
@end

@implementation ACDKeychainLock

- (ACDKeychainLock)init
{
  v7.receiver = self;
  v7.super_class = ACDKeychainLock;
  v2 = [(ACDKeychainLock *)&v7 init];
  v3 = v2;
  if (v2)
  {
    v2->_containerLock._os_unfair_lock_opaque = 0;
    v4 = objc_opt_new();
    locksByServiceUsername = v3->_locksByServiceUsername;
    v3->_locksByServiceUsername = v4;
  }

  return v3;
}

- (void)lockPerformForService:(id)service username:(id)username block:(id)block
{
  serviceCopy = service;
  usernameCopy = username;
  blockCopy = block;
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v17 = __56__ACDKeychainLock_lockPerformForService_username_block___block_invoke;
  v18 = &unk_27848C1C8;
  v11 = serviceCopy;
  v19 = v11;
  v12 = usernameCopy;
  v20 = v12;
  selfCopy = self;
  v13 = v16;
  os_unfair_lock_lock(&self->_containerLock);
  v14 = v17(v13);
  os_unfair_lock_unlock(&self->_containerLock);

  v15 = blockCopy;
  os_unfair_lock_lock(v14 + 2);
  v15[2](v15);
  os_unfair_lock_unlock(v14 + 2);
}

id __56__ACDKeychainLock_lockPerformForService_username_block___block_invoke(void *a1)
{
  v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@.%@", a1[4], a1[5]];
  v3 = [*(a1[6] + 16) objectForKeyedSubscript:v2];
  if (!v3)
  {
    v3 = objc_opt_new();
    [*(a1[6] + 16) setObject:v3 forKeyedSubscript:v2];
  }

  return v3;
}

@end