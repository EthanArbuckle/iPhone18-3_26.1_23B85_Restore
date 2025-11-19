@interface ACDKeychainLock
- (ACDKeychainLock)init;
- (void)lockPerformForService:(id)a3 username:(id)a4 block:(id)a5;
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

- (void)lockPerformForService:(id)a3 username:(id)a4 block:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v17 = __56__ACDKeychainLock_lockPerformForService_username_block___block_invoke;
  v18 = &unk_27848C1C8;
  v11 = v8;
  v19 = v11;
  v12 = v9;
  v20 = v12;
  v21 = self;
  v13 = v16;
  os_unfair_lock_lock(&self->_containerLock);
  v14 = v17(v13);
  os_unfair_lock_unlock(&self->_containerLock);

  v15 = v10;
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