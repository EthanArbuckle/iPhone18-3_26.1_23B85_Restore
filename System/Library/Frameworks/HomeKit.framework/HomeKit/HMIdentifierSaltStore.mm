@interface HMIdentifierSaltStore
+ (HMIdentifierSaltStore)sharedIdentifierSaltStore;
- (NSData)assistantIdentifierSalt;
- (NSData)identifierSalt;
- (void)setAssistantIdentifierSalt:(id)a3;
- (void)setIdentifierSalt:(id)a3;
@end

@implementation HMIdentifierSaltStore

+ (HMIdentifierSaltStore)sharedIdentifierSaltStore
{
  if (sharedIdentifierSaltStore_onceToken != -1)
  {
    dispatch_once(&sharedIdentifierSaltStore_onceToken, &__block_literal_global_66506);
  }

  v3 = sharedIdentifierSaltStore_identifierSaltStore;

  return v3;
}

- (NSData)identifierSalt
{
  os_unfair_lock_lock_with_options();
  v3 = self->_identifierSalt;
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (void)setAssistantIdentifierSalt:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock_with_options();
  assistantIdentifierSalt = self->_assistantIdentifierSalt;
  self->_assistantIdentifierSalt = v4;

  os_unfair_lock_unlock(&self->_lock);
}

- (NSData)assistantIdentifierSalt
{
  os_unfair_lock_lock_with_options();
  v3 = self->_assistantIdentifierSalt;
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (void)setIdentifierSalt:(id)a3
{
  v15 = *MEMORY[0x1E69E9840];
  v5 = a3;
  os_unfair_lock_lock_with_options();
  if ([(NSData *)self->_identifierSalt isEqualToData:v5])
  {
    os_unfair_lock_unlock(&self->_lock);
  }

  else
  {
    objc_storeStrong(&self->_identifierSalt, a3);
    os_unfair_lock_unlock(&self->_lock);
    v6 = objc_autoreleasePoolPush();
    v7 = self;
    v8 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v9 = HMFGetLogIdentifier();
      v11 = 138543618;
      v12 = v9;
      v13 = 2112;
      v14 = v5;
      _os_log_impl(&dword_19BB39000, v8, OS_LOG_TYPE_INFO, "%{public}@Updated identifier salt to %@", &v11, 0x16u);
    }

    objc_autoreleasePoolPop(v6);
  }

  v10 = *MEMORY[0x1E69E9840];
}

uint64_t __50__HMIdentifierSaltStore_sharedIdentifierSaltStore__block_invoke()
{
  v0 = objc_alloc_init(HMIdentifierSaltStore);
  v1 = sharedIdentifierSaltStore_identifierSaltStore;
  sharedIdentifierSaltStore_identifierSaltStore = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

@end