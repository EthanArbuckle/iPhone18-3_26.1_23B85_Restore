@interface TKRegisteredTokenManager
+ (id)sharedInstance;
- (BOOL)wasPINCredentialInitiallySet;
- (BOOL)wasPINCredentialProvidedByPINUI;
- (TKRegisteredTokenManager)init;
- (id)lastUsedRegisteredTokenID;
- (void)setLastUsedRegisteredTokenID:(id)a3;
- (void)setWasPINCredentialInitiallySet:(BOOL)a3;
- (void)setWasPINCredentialProvidedByPINUI:(BOOL)a3;
@end

@implementation TKRegisteredTokenManager

+ (id)sharedInstance
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __42__TKRegisteredTokenManager_sharedInstance__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (sharedInstance_onceToken != -1)
  {
    dispatch_once(&sharedInstance_onceToken, block);
  }

  v2 = sharedInstance_shared;

  return v2;
}

uint64_t __42__TKRegisteredTokenManager_sharedInstance__block_invoke(uint64_t a1)
{
  sharedInstance_shared = objc_alloc_init(*(a1 + 32));

  return MEMORY[0x1EEE66BB8]();
}

- (TKRegisteredTokenManager)init
{
  v6.receiver = self;
  v6.super_class = TKRegisteredTokenManager;
  v2 = [(TKRegisteredTokenManager *)&v6 init];
  v3 = v2;
  if (v2)
  {
    v2->_lock._os_unfair_lock_opaque = 0;
    lastUsedRegisteredTokenID = v2->_lastUsedRegisteredTokenID;
    v2->_lastUsedRegisteredTokenID = 0;

    *&v3->_wasPINCredentialInitiallySet = 0;
  }

  return v3;
}

- (id)lastUsedRegisteredTokenID
{
  os_unfair_lock_lock(&self->_lock);
  v3 = [(NSString *)self->_lastUsedRegisteredTokenID copy];
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (void)setLastUsedRegisteredTokenID:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock(&self->_lock);
  v5 = [v4 copy];

  lastUsedRegisteredTokenID = self->_lastUsedRegisteredTokenID;
  self->_lastUsedRegisteredTokenID = v5;

  os_unfair_lock_unlock(&self->_lock);
}

- (BOOL)wasPINCredentialInitiallySet
{
  os_unfair_lock_lock(&self->_lock);
  wasPINCredentialInitiallySet = self->_wasPINCredentialInitiallySet;
  os_unfair_lock_unlock(&self->_lock);
  return wasPINCredentialInitiallySet;
}

- (void)setWasPINCredentialInitiallySet:(BOOL)a3
{
  os_unfair_lock_lock(&self->_lock);
  self->_wasPINCredentialInitiallySet = a3;

  os_unfair_lock_unlock(&self->_lock);
}

- (BOOL)wasPINCredentialProvidedByPINUI
{
  os_unfair_lock_lock(&self->_lock);
  wasPINCredentialProvidedByPINUI = self->_wasPINCredentialProvidedByPINUI;
  os_unfair_lock_unlock(&self->_lock);
  return wasPINCredentialProvidedByPINUI;
}

- (void)setWasPINCredentialProvidedByPINUI:(BOOL)a3
{
  os_unfair_lock_lock(&self->_lock);
  self->_wasPINCredentialProvidedByPINUI = a3;

  os_unfair_lock_unlock(&self->_lock);
}

@end