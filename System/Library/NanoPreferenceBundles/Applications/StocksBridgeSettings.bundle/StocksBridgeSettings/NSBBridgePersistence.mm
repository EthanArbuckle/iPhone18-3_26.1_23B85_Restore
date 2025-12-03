@interface NSBBridgePersistence
- (NSBBridgePersistence)init;
- (id)objectForKey:(id)key;
- (id)stringForKey:(id)key;
- (int64_t)integerForKey:(id)key;
- (void)_addObservers;
- (void)_deviceDidBecomeActive:(id)active;
- (void)_removeObservers;
- (void)_setupDefaults;
- (void)dealloc;
- (void)removeObjectForKey:(id)key;
- (void)setInteger:(int64_t)integer forKey:(id)key;
- (void)setObject:(id)object forKey:(id)key;
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

- (void)_deviceDidBecomeActive:(id)active
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

- (int64_t)integerForKey:(id)key
{
  keyCopy = key;
  defaults = [(NSBBridgePersistence *)self defaults];
  v6 = [defaults integerForKey:keyCopy];

  return v6;
}

- (void)setInteger:(int64_t)integer forKey:(id)key
{
  keyCopy = key;
  defaults = [(NSBBridgePersistence *)self defaults];
  [defaults setInteger:integer forKey:keyCopy];

  keysToSynchronize = [(NSBBridgePersistence *)self keysToSynchronize];
  [keysToSynchronize addObject:keyCopy];
}

- (id)stringForKey:(id)key
{
  keyCopy = key;
  defaults = [(NSBBridgePersistence *)self defaults];
  v6 = [defaults stringForKey:keyCopy];

  return v6;
}

- (id)objectForKey:(id)key
{
  keyCopy = key;
  defaults = [(NSBBridgePersistence *)self defaults];
  v6 = [defaults objectForKey:keyCopy];

  return v6;
}

- (void)removeObjectForKey:(id)key
{
  keyCopy = key;
  defaults = [(NSBBridgePersistence *)self defaults];
  [defaults removeObjectForKey:keyCopy];

  keysToSynchronize = [(NSBBridgePersistence *)self keysToSynchronize];
  [keysToSynchronize addObject:keyCopy];
}

- (void)setObject:(id)object forKey:(id)key
{
  keyCopy = key;
  objectCopy = object;
  defaults = [(NSBBridgePersistence *)self defaults];
  [defaults setObject:objectCopy forKey:keyCopy];

  keysToSynchronize = [(NSBBridgePersistence *)self keysToSynchronize];
  [keysToSynchronize addObject:keyCopy];
}

- (void)synchronize
{
  defaults = [(NSBBridgePersistence *)self defaults];
  synchronize = [defaults synchronize];

  keysToSynchronize = [(NSBBridgePersistence *)self keysToSynchronize];
  v6 = [keysToSynchronize count];

  if (v6)
  {
    syncManager = [(NSBBridgePersistence *)self syncManager];
    keysToSynchronize2 = [(NSBBridgePersistence *)self keysToSynchronize];
    [syncManager synchronizeNanoDomain:@"com.apple.stocks.bridge" keys:keysToSynchronize2];

    keysToSynchronize3 = [(NSBBridgePersistence *)self keysToSynchronize];
    [keysToSynchronize3 removeAllObjects];
  }
}

@end