@interface AAUICustodianRepairHelper
- (AAUICustodianDataDelegate)dataDelegate;
- (AAUIRepairDelegate)repairDelegate;
- (void)setDataDelegate:(id)delegate;
- (void)setLocalContacts:(id)contacts;
@end

@implementation AAUICustodianRepairHelper

- (void)setLocalContacts:(id)contacts
{
  contactsCopy = contacts;
  objc_storeStrong(&self->_localContacts, contacts);
  v6 = _AAUILogSystem();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    [(AAUICustodianRepairHelper *)contactsCopy setLocalContacts:v6];
  }

  WeakRetained = objc_loadWeakRetained(&self->_dataDelegate);
  [WeakRetained didFinishFetchingCustodians];
}

- (void)setDataDelegate:(id)delegate
{
  objc_storeWeak(&self->_dataDelegate, delegate);
  if ([(NSArray *)self->_localContacts count])
  {
    WeakRetained = objc_loadWeakRetained(&self->_dataDelegate);
    [WeakRetained didFinishFetchingCustodians];
  }
}

- (AAUICustodianDataDelegate)dataDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_dataDelegate);

  return WeakRetained;
}

- (AAUIRepairDelegate)repairDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_repairDelegate);

  return WeakRetained;
}

- (void)setLocalContacts:(void *)a1 .cold.1(void *a1, NSObject *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = 134217984;
  v4 = [a1 count];
  _os_log_debug_impl(&dword_1C5355000, a2, OS_LOG_TYPE_DEBUG, "Setting %lu Local Contacts in Data Fetcher", &v3, 0xCu);
}

@end