@interface MFAddressBookManager
+ (BOOL)isAuthorizedToUseAddressBook;
+ (id)sharedManager;
- (MFAddressBookManager)init;
- (id)_clientsArray;
- (void)_handleAddressBookChangeNotification;
- (void)_handleAddressBookPrefsChangeNotification;
- (void)addClient:(id)a3;
- (void)addressBook;
- (void)dealloc;
- (void)removeClient:(id)a3;
@end

@implementation MFAddressBookManager

void __37__MFAddressBookManager_sharedManager__block_invoke()
{
  v0 = objc_alloc_init(MFAddressBookManager);
  v1 = sharedManager_sharedManager;
  sharedManager_sharedManager = v0;
}

+ (id)sharedManager
{
  if (sharedManager_onceToken != -1)
  {
    +[MFAddressBookManager sharedManager];
  }

  v3 = sharedManager_sharedManager;

  return v3;
}

- (MFAddressBookManager)init
{
  v7.receiver = self;
  v7.super_class = MFAddressBookManager;
  v2 = [(MFAddressBookManager *)&v7 init];
  v3 = v2;
  if (v2)
  {
    v2->_lock._os_unfair_lock_opaque = 0;
    v4 = [MEMORY[0x1E696AC70] weakObjectsHashTable];
    clients = v3->_clients;
    v3->_clients = v4;
  }

  return v3;
}

- (void)addressBook
{
  dispatch_assert_queue_V2(MEMORY[0x1E69E96A0]);
  result = self->_addressBook;
  if (!result)
  {
    error = 0;
    v4 = ABAddressBookCreateWithOptions(0, &error);
    self->_addressBook = v4;
    if (v4)
    {
      ABAddressBookRegisterChangeCallback();
      ABAddressBookRegisterExternalChangeCallback(self->_addressBook, _AddressBookEventHandler, self);
      DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
      CFNotificationCenterAddObserver(DarwinNotifyCenter, self, _addressBookPreferencesChanged, @"com.apple.AddressBook.PreferenceChanged", 0, CFNotificationSuspensionBehaviorDeliverImmediately);
    }

    if (error)
    {
      CFRelease(error);
    }

    return self->_addressBook;
  }

  return result;
}

+ (BOOL)isAuthorizedToUseAddressBook
{
  if (isAuthorizedToUseAddressBook_onceToken != -1)
  {
    +[MFAddressBookManager isAuthorizedToUseAddressBook];
  }

  return isAuthorizedToUseAddressBook_sIsAuthorizedToUseAddressBook;
}

ABAuthorizationStatus __52__MFAddressBookManager_isAuthorizedToUseAddressBook__block_invoke()
{
  result = ABAddressBookGetAuthorizationStatus();
  isAuthorizedToUseAddressBook_sIsAuthorizedToUseAddressBook = (result - 3) < 0xFFFFFFFFFFFFFFFELL;
  return result;
}

- (void)dealloc
{
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterRemoveEveryObserver(DarwinNotifyCenter, self);
  v4 = [MEMORY[0x1E696AD88] defaultCenter];
  [v4 removeObserver:self];

  if (self->_addressBook)
  {
    ABAddressBookUnregisterChangeCallback();
    ABAddressBookUnregisterExternalChangeCallback(self->_addressBook, _AddressBookEventHandler, self);
    CFRelease(self->_addressBook);
  }

  v5.receiver = self;
  v5.super_class = MFAddressBookManager;
  [(MFAddressBookManager *)&v5 dealloc];
}

- (id)_clientsArray
{
  os_unfair_lock_lock(&self->_lock);
  v3 = [(NSHashTable *)self->_clients allObjects];
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (void)_handleAddressBookChangeNotification
{
  v13 = *MEMORY[0x1E69E9840];
  addressBook = self->_addressBook;
  if (addressBook)
  {
    ABAddressBookRevert(addressBook);
  }

  v10 = 0u;
  v11 = 0u;
  v8 = 0u;
  v9 = 0u;
  v4 = [(MFAddressBookManager *)self _clientsArray];
  v5 = [v4 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v5)
  {
    v6 = *v9;
    do
    {
      v7 = 0;
      do
      {
        if (*v9 != v6)
        {
          objc_enumerationMutation(v4);
        }

        [*(*(&v8 + 1) + 8 * v7++) addressBookManager:self addressBookDidChange:self->_addressBook];
      }

      while (v5 != v7);
      v5 = [v4 countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v5);
  }
}

- (void)_handleAddressBookPrefsChangeNotification
{
  v12 = *MEMORY[0x1E69E9840];
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v3 = [(MFAddressBookManager *)self _clientsArray];
  v4 = [v3 countByEnumeratingWithState:&v7 objects:v11 count:16];
  if (v4)
  {
    v5 = *v8;
    do
    {
      v6 = 0;
      do
      {
        if (*v8 != v5)
        {
          objc_enumerationMutation(v3);
        }

        [*(*(&v7 + 1) + 8 * v6++) addressBookPreferencesChangedForAddressBookManager:self];
      }

      while (v4 != v6);
      v4 = [v3 countByEnumeratingWithState:&v7 objects:v11 count:16];
    }

    while (v4);
  }
}

- (void)addClient:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock(&self->_lock);
  [(NSHashTable *)self->_clients addObject:v4];

  os_unfair_lock_unlock(&self->_lock);
}

- (void)removeClient:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock(&self->_lock);
  [(NSHashTable *)self->_clients removeObject:v4];

  os_unfair_lock_unlock(&self->_lock);
}

@end