@interface MSServiceUpdatedHandler
+ (id)shared;
- (MediaServiceUpdatedClientDelegate)delegate;
- (void)defaultMediaServiceUpdated:(id)updated homeUserID:(id)d;
- (void)mediaServiceChanged:(id)changed homeUserID:(id)d;
- (void)mediaServiceRemoved:(id)removed homeUserID:(id)d;
- (void)setDelegate:(id)delegate;
@end

@implementation MSServiceUpdatedHandler

+ (id)shared
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __33__MSServiceUpdatedHandler_shared__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (shared_onceToken != -1)
  {
    dispatch_once(&shared_onceToken, block);
  }

  v2 = shared_sShared;

  return v2;
}

uint64_t __33__MSServiceUpdatedHandler_shared__block_invoke(uint64_t a1)
{
  shared_sShared = objc_alloc_init(*(a1 + 32));

  return MEMORY[0x2821F96F8]();
}

- (void)setDelegate:(id)delegate
{
  delegateCopy = delegate;
  v5 = _MSLogingFacility();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    [(MSServiceUpdatedHandler *)delegateCopy setDelegate:v5];
  }

  objc_storeWeak(&self->_delegate, delegateCopy);
}

- (void)mediaServiceChanged:(id)changed homeUserID:(id)d
{
  v20 = *MEMORY[0x277D85DE8];
  changedCopy = changed;
  dCopy = d;
  v8 = _MSLogingFacility();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    serviceName = [changedCopy serviceName];
    v14 = 136315650;
    v15 = "[MSServiceUpdatedHandler mediaServiceChanged:homeUserID:]";
    v16 = 2112;
    v17 = dCopy;
    v18 = 2112;
    v19 = serviceName;
    _os_log_impl(&dword_23986C000, v8, OS_LOG_TYPE_DEFAULT, "%s Informing delegate about service change - User: %@ Service %@", &v14, 0x20u);
  }

  delegate = [(MSServiceUpdatedHandler *)self delegate];
  if (![delegate conformsToProtocol:&unk_284C548C8])
  {
    goto LABEL_6;
  }

  delegate2 = [(MSServiceUpdatedHandler *)self delegate];
  v12 = objc_opt_respondsToSelector();

  if (v12)
  {
    delegate = [(MSServiceUpdatedHandler *)self delegate];
    [delegate serviceSettingDidUpdate:changedCopy homeUserID:dCopy];
LABEL_6:
  }

  v13 = *MEMORY[0x277D85DE8];
}

- (void)mediaServiceRemoved:(id)removed homeUserID:(id)d
{
  v20 = *MEMORY[0x277D85DE8];
  removedCopy = removed;
  dCopy = d;
  v8 = _MSLogingFacility();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    serviceName = [removedCopy serviceName];
    v14 = 136315650;
    v15 = "[MSServiceUpdatedHandler mediaServiceRemoved:homeUserID:]";
    v16 = 2112;
    v17 = dCopy;
    v18 = 2112;
    v19 = serviceName;
    _os_log_impl(&dword_23986C000, v8, OS_LOG_TYPE_DEFAULT, "%s Informing delegate about service removal - User: %@ Service %@", &v14, 0x20u);
  }

  delegate = [(MSServiceUpdatedHandler *)self delegate];
  if (![delegate conformsToProtocol:&unk_284C548C8])
  {
    goto LABEL_6;
  }

  delegate2 = [(MSServiceUpdatedHandler *)self delegate];
  v12 = objc_opt_respondsToSelector();

  if (v12)
  {
    delegate = [(MSServiceUpdatedHandler *)self delegate];
    [delegate userDidRemoveService:removedCopy homeUserID:dCopy];
LABEL_6:
  }

  v13 = *MEMORY[0x277D85DE8];
}

- (void)defaultMediaServiceUpdated:(id)updated homeUserID:(id)d
{
  v20 = *MEMORY[0x277D85DE8];
  updatedCopy = updated;
  dCopy = d;
  v8 = _MSLogingFacility();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    serviceName = [updatedCopy serviceName];
    v14 = 136315650;
    v15 = "[MSServiceUpdatedHandler defaultMediaServiceUpdated:homeUserID:]";
    v16 = 2112;
    v17 = dCopy;
    v18 = 2112;
    v19 = serviceName;
    _os_log_impl(&dword_23986C000, v8, OS_LOG_TYPE_DEFAULT, "%s Informing delegate about default service update - User: %@ Service %@", &v14, 0x20u);
  }

  delegate = [(MSServiceUpdatedHandler *)self delegate];
  if (![delegate conformsToProtocol:&unk_284C548C8])
  {
    goto LABEL_6;
  }

  delegate2 = [(MSServiceUpdatedHandler *)self delegate];
  v12 = objc_opt_respondsToSelector();

  if (v12)
  {
    delegate = [(MSServiceUpdatedHandler *)self delegate];
    [delegate userDidUpdateDefaultService:updatedCopy homeUserID:dCopy];
LABEL_6:
  }

  v13 = *MEMORY[0x277D85DE8];
}

- (MediaServiceUpdatedClientDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)setDelegate:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = 136315394;
  v4 = "[MSServiceUpdatedHandler setDelegate:]";
  v5 = 2112;
  v6 = a1;
  _os_log_debug_impl(&dword_23986C000, a2, OS_LOG_TYPE_DEBUG, "%s Setting MediaServiceUpdatedClientDelegate %@", &v3, 0x16u);
  v2 = *MEMORY[0x277D85DE8];
}

@end