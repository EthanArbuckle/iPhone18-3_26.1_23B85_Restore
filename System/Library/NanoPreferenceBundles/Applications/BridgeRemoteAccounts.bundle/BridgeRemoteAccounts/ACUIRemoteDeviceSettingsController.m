@interface ACUIRemoteDeviceSettingsController
- (ACUIRemoteDeviceSettingsController)initWithRemoteDevice:(id)a3;
- (id)_keyToSync;
- (void)_synchronizeDomain:(id)a3 forKey:(id)a4;
- (void)_synchronizeDomain:(id)a3 forKeys:(id)a4;
- (void)setDefaultPollIntervalIfNeeded;
@end

@implementation ACUIRemoteDeviceSettingsController

- (id)_keyToSync
{
  v4 = self;
  v3 = a2;
  return [NSSet setWithObjects:off_225C8[0], off_225C0[0], off_225D0, 0];
}

- (ACUIRemoteDeviceSettingsController)initWithRemoteDevice:(id)a3
{
  v13 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v3 = v13;
  v13 = 0;
  v11.receiver = v3;
  v11.super_class = ACUIRemoteDeviceSettingsController;
  v13 = [(ACUIRemoteDeviceSettingsController *)&v11 init];
  objc_storeStrong(&v13, v13);
  if (v13)
  {
    v4 = objc_opt_new();
    manager = v13->_manager;
    v13->_manager = v4;

    v6 = [NPSDomainAccessor alloc];
    v7 = [v6 initWithDomain:off_225B8[0] pairedDevice:location[0]];
    domainAccessor = v13->_domainAccessor;
    v13->_domainAccessor = v7;
  }

  v10 = v13;
  objc_storeStrong(location, 0);
  objc_storeStrong(&v13, 0);
  return v10;
}

- (void)setDefaultPollIntervalIfNeeded
{
  v5 = self;
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
    [(ACUIRemoteDeviceSettingsController *)v5 setPollInterval:dword_225D8];
  }
}

- (void)_synchronizeDomain:(id)a3 forKey:(id)a4
{
  v10 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v8 = 0;
  objc_storeStrong(&v8, a4);
  v6 = v10;
  v5 = location[0];
  v7 = [NSSet setWithObject:v8];
  [(ACUIRemoteDeviceSettingsController *)v6 _synchronizeDomain:v5 forKeys:?];

  objc_storeStrong(&v8, 0);
  objc_storeStrong(location, 0);
}

- (void)_synchronizeDomain:(id)a3 forKeys:(id)a4
{
  v14 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v12 = 0;
  objc_storeStrong(&v12, a4);
  v11 = [(NPSDomainAccessor *)v14->_domainAccessor synchronize];
  if (v11)
  {
    oslog = _ACUILogSystem();
    type = OS_LOG_TYPE_ERROR;
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_ERROR))
    {
      v4 = [(NPSDomainAccessor *)v14->_domainAccessor domain];
      sub_266C(v17, "[ACUIRemoteDeviceSettingsController _synchronizeDomain:forKeys:]", 82, v4, off_225C8[0]);
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
    [(NPSManager *)v14->_manager synchronizeNanoDomain:location[0] keys:v12];
  }

  objc_storeStrong(&v11, 0);
  objc_storeStrong(&v12, 0);
  objc_storeStrong(location, 0);
}

@end