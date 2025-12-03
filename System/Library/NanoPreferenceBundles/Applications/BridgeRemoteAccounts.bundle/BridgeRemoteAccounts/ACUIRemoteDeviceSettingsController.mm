@interface ACUIRemoteDeviceSettingsController
- (ACUIRemoteDeviceSettingsController)initWithRemoteDevice:(id)device;
- (id)_keyToSync;
- (void)_synchronizeDomain:(id)domain forKey:(id)key;
- (void)_synchronizeDomain:(id)domain forKeys:(id)keys;
- (void)setDefaultPollIntervalIfNeeded;
@end

@implementation ACUIRemoteDeviceSettingsController

- (id)_keyToSync
{
  selfCopy = self;
  v3 = a2;
  return [NSSet setWithObjects:off_225C8[0], off_225C0[0], off_225D0, 0];
}

- (ACUIRemoteDeviceSettingsController)initWithRemoteDevice:(id)device
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, device);
  v3 = selfCopy;
  selfCopy = 0;
  v11.receiver = v3;
  v11.super_class = ACUIRemoteDeviceSettingsController;
  selfCopy = [(ACUIRemoteDeviceSettingsController *)&v11 init];
  objc_storeStrong(&selfCopy, selfCopy);
  if (selfCopy)
  {
    v4 = objc_opt_new();
    manager = selfCopy->_manager;
    selfCopy->_manager = v4;

    v6 = [NPSDomainAccessor alloc];
    v7 = [v6 initWithDomain:off_225B8[0] pairedDevice:location[0]];
    domainAccessor = selfCopy->_domainAccessor;
    selfCopy->_domainAccessor = v7;
  }

  v10 = selfCopy;
  objc_storeStrong(location, 0);
  objc_storeStrong(&selfCopy, 0);
  return v10;
}

- (void)setDefaultPollIntervalIfNeeded
{
  selfCopy = self;
  v4 = a2;
  v3 = 0;
  [(ACUIRemoteDeviceSettingsController *)self _pollIntervalReturningExists:&v3];
  if ((v3 & 1) == 0)
  {
    oslog = _ACUILogSystem();
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
    {
      sub_226C(v6, "[ACUIRemoteDeviceSettingsController setDefaultPollIntervalIfNeeded]", 70, dword_225D8);
      _os_log_impl(&dword_0, oslog, OS_LOG_TYPE_DEFAULT, "%s (%d) No fetch setting for device yet, syncing default value: %d", v6, 0x18u);
    }

    objc_storeStrong(&oslog, 0);
    [(ACUIRemoteDeviceSettingsController *)selfCopy setPollInterval:dword_225D8];
  }
}

- (void)_synchronizeDomain:(id)domain forKey:(id)key
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, domain);
  v8 = 0;
  objc_storeStrong(&v8, key);
  v6 = selfCopy;
  v5 = location[0];
  v7 = [NSSet setWithObject:v8];
  [(ACUIRemoteDeviceSettingsController *)v6 _synchronizeDomain:v5 forKeys:?];

  objc_storeStrong(&v8, 0);
  objc_storeStrong(location, 0);
}

- (void)_synchronizeDomain:(id)domain forKeys:(id)keys
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, domain);
  v12 = 0;
  objc_storeStrong(&v12, keys);
  synchronize = [(NPSDomainAccessor *)selfCopy->_domainAccessor synchronize];
  if (synchronize)
  {
    oslog = _ACUILogSystem();
    type = OS_LOG_TYPE_ERROR;
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_ERROR))
    {
      domain = [(NPSDomainAccessor *)selfCopy->_domainAccessor domain];
      sub_266C(v17, "[ACUIRemoteDeviceSettingsController _synchronizeDomain:forKeys:]", 82, domain, off_225C8[0]);
      _os_log_error_impl(&dword_0, oslog, type, "%s (%d) @Failed to synchronize domain: %{public}@ key: %{public}@", v17, 0x26u);
    }

    objc_storeStrong(&oslog, 0);
  }

  else
  {
    v8 = _ACUILogSystem();
    v7 = OS_LOG_TYPE_DEBUG;
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      sub_266C(v16, "[ACUIRemoteDeviceSettingsController _synchronizeDomain:forKeys:]", 84, location[0], v12);
      _os_log_debug_impl(&dword_0, v8, v7, "%s (%d) @Successfully synched domain %{public}@ for keys: %{public}@", v16, 0x26u);
    }

    objc_storeStrong(&v8, 0);
    v6 = _ACUILogSystem();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      sub_26EC(v15, "[ACUIRemoteDeviceSettingsController _synchronizeDomain:forKeys:]", 85);
      _os_log_debug_impl(&dword_0, v6, OS_LOG_TYPE_DEBUG, "%s (%d) @Synchronizing NanoDomain to device...", v15, 0x12u);
    }

    objc_storeStrong(&v6, 0);
    [(NPSManager *)selfCopy->_manager synchronizeNanoDomain:location[0] keys:v12];
  }

  objc_storeStrong(&synchronize, 0);
  objc_storeStrong(&v12, 0);
  objc_storeStrong(location, 0);
}

@end