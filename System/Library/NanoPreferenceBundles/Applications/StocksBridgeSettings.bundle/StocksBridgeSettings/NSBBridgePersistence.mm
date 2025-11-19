@interface NSBBridgePersistence
- (NSBBridgePersistence)init;
- (id)objectForKey:(id)a3;
- (id)stringForKey:(id)a3;
- (int64_t)integerForKey:(id)a3;
- (void)_addObservers;
- (void)_deviceDidBecomeActive:(id)a3;
- (void)_removeObservers;
- (void)_setupDefaults;
- (void)dealloc;
- (void)removeObjectForKey:(id)a3;
- (void)setInteger:(int64_t)a3 forKey:(id)a4;
- (void)setObject:(id)a3 forKey:(id)a4;
- (void)synchronize;
@end

@implementation NSBBridgePersistence

- (NSBBridgePersistence)init
{
  v8.receiver = self;
  v8.super_class = NSBBridgePersistence;
  v2 = [(NSBBridgePersistence *)&v8 init];
  if (v2)
  {
    v3 = objc_opt_new();
    syncManager = v2->_syncManager;
    v2->_syncManager = v3;

    v5 = objc_opt_new();
    keysToSynchronize = v2->_keysToSynchronize;
    v2->_keysToSynchronize = v5;

    [(NSBBridgePersistence *)v2 _setupDefaults];
    [(NSBBridgePersistence *)v2 _addObservers];
  }

  return v2;
}

- (void)dealloc
{
  [(NSBBridgePersistence *)self _removeObservers];
  v3.receiver = self;
  v3.super_class = NSBBridgePersistence;
  [(NSBBridgePersistence *)&v3 dealloc];
}

- (void)_addObservers
{
  v3 = +[NSNotificationCenter defaultCenter];
  [v3 addObserver:self selector:"_deviceDidBecomeActive:" name:NRPairedDeviceRegistryDeviceDidBecomeActive object:0];
}

- (void)_deviceDidBecomeActive:(id)a3
{
  v4 = stocks_bridge_log();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    *v5 = 0;
    _os_log_impl(&dword_0, v4, OS_LOG_TYPE_INFO, "Device became active; reset defaults.", v5, 2u);
  }

  [(NSBBridgePersistence *)self _setupDefaults];
}

- (void)_removeObservers
{
  v3 = +[NSNotificationCenter defaultCenter];
  [v3 removeObserver:self];
}

- (void)_setupDefaults
{
  v3 = [[NPSDomainAccessor alloc] initWithDomain:@"com.apple.stocks.bridge"];
  defaults = self->_defaults;
  self->_defaults = v3;

  _objc_release_x1();
}

- (int64_t)integerForKey:(id)a3
{
  v4 = a3;
  v5 = [(NSBBridgePersistence *)self defaults];
  v6 = [v5 integerForKey:v4];

  return v6;
}

- (void)setInteger:(int64_t)a3 forKey:(id)a4
{
  v6 = a4;
  v7 = [(NSBBridgePersistence *)self defaults];
  [v7 setInteger:a3 forKey:v6];

  v8 = [(NSBBridgePersistence *)self keysToSynchronize];
  [v8 addObject:v6];
}

- (id)stringForKey:(id)a3
{
  v4 = a3;
  v5 = [(NSBBridgePersistence *)self defaults];
  v6 = [v5 stringForKey:v4];

  return v6;
}

- (id)objectForKey:(id)a3
{
  v4 = a3;
  v5 = [(NSBBridgePersistence *)self defaults];
  v6 = [v5 objectForKey:v4];

  return v6;
}

- (void)removeObjectForKey:(id)a3
{
  v4 = a3;
  v5 = [(NSBBridgePersistence *)self defaults];
  [v5 removeObjectForKey:v4];

  v6 = [(NSBBridgePersistence *)self keysToSynchronize];
  [v6 addObject:v4];
}

- (void)setObject:(id)a3 forKey:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(NSBBridgePersistence *)self defaults];
  [v8 setObject:v7 forKey:v6];

  v9 = [(NSBBridgePersistence *)self keysToSynchronize];
  [v9 addObject:v6];
}

- (void)synchronize
{
  v3 = [(NSBBridgePersistence *)self defaults];
  v4 = [v3 synchronize];

  v5 = [(NSBBridgePersistence *)self keysToSynchronize];
  v6 = [v5 count];

  if (v6)
  {
    v7 = [(NSBBridgePersistence *)self syncManager];
    v8 = [(NSBBridgePersistence *)self keysToSynchronize];
    [v7 synchronizeNanoDomain:@"com.apple.stocks.bridge" keys:v8];

    v9 = [(NSBBridgePersistence *)self keysToSynchronize];
    [v9 removeAllObjects];
  }
}

@end