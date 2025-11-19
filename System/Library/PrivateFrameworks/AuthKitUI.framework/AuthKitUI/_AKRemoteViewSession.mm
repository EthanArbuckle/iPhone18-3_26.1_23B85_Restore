@interface _AKRemoteViewSession
- (_AKRemoteViewSession)initWithConnection:(id)a3;
- (void)_activate;
- (void)activateWithCompletionHandler:(id)a3;
- (void)invalidate;
@end

@implementation _AKRemoteViewSession

- (_AKRemoteViewSession)initWithConnection:(id)a3
{
  v8 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v3 = v8;
  v8 = 0;
  v6.receiver = v3;
  v6.super_class = _AKRemoteViewSession;
  v8 = [(_AKRemoteViewSession *)&v6 init];
  objc_storeStrong(&v8, v8);
  if (v8)
  {
    objc_storeStrong(&v8->_connection, location[0]);
    v8->_lock._os_unfair_lock_opaque = 0;
  }

  v5 = MEMORY[0x277D82BE0](v8);
  objc_storeStrong(location, 0);
  objc_storeStrong(&v8, 0);
  return v5;
}

- (void)_activate
{
  v17 = self;
  v16[1] = a2;
  os_unfair_lock_lock(&self->_lock);
  v16[0] = MEMORY[0x277D82BE0](v17->_connection);
  os_unfair_lock_unlock(&v17->_lock);
  v15 = v16[0];
  location[1] = MEMORY[0x277D85DD0];
  v10 = -1073741824;
  v11 = 0;
  v12 = __33___AKRemoteViewSession__activate__block_invoke;
  v13 = &__block_descriptor_40_e5_v8__0lu32l8;
  v14 = v16[0];
  [v16[0] setInterruptionHandler:?];
  objc_initWeak(location, v17);
  v2 = v16[0];
  v3 = MEMORY[0x277D85DD0];
  v4 = -1073741824;
  v5 = 0;
  v6 = __33___AKRemoteViewSession__activate__block_invoke_2;
  v7 = &unk_2784A6770;
  objc_copyWeak(&v8, location);
  [v2 setInvalidationHandler:&v3];
  [v16[0] activate];
  objc_destroyWeak(&v8);
  objc_destroyWeak(location);
  objc_storeStrong(v16, 0);
}

- (void)activateWithCompletionHandler:(id)a3
{
  v13 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  [(os_unfair_lock_s *)v13 _activate];
  os_unfair_lock_lock(v13 + 2);
  v11 = MEMORY[0x277D82BE0](*&v13[4]._os_unfair_lock_opaque);
  os_unfair_lock_unlock(v13 + 2);
  v3 = v11;
  v4 = MEMORY[0x277D85DD0];
  v5 = -1073741824;
  v6 = 0;
  v7 = __54___AKRemoteViewSession_activateWithCompletionHandler___block_invoke;
  v8 = &unk_2784A5CB8;
  v9 = MEMORY[0x277D82BE0](location[0]);
  v10 = [v3 remoteObjectProxyWithErrorHandler:?];
  [v10 activateWithCompletionHandler:location[0]];
  objc_storeStrong(&v10, 0);
  objc_storeStrong(&v9, 0);
  objc_storeStrong(&v11, 0);
  objc_storeStrong(location, 0);
}

- (void)invalidate
{
  v5 = self;
  v4[1] = a2;
  os_unfair_lock_lock(&self->_lock);
  v4[0] = MEMORY[0x277D82BE0](v5->_connection);
  location = MEMORY[0x223DB6C90](v5->_invalidationHandler);
  objc_storeStrong(&v5->_connection, 0);
  invalidationHandler = v5->_invalidationHandler;
  v5->_invalidationHandler = 0;
  MEMORY[0x277D82BD8](invalidationHandler);
  os_unfair_lock_unlock(&v5->_lock);
  [v4[0] invalidate];
  if (location)
  {
    (*(location + 2))();
  }

  objc_storeStrong(&location, 0);
  objc_storeStrong(v4, 0);
}

@end