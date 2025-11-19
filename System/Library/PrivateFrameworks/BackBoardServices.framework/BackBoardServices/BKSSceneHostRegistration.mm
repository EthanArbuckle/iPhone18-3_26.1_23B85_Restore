@interface BKSSceneHostRegistration
- (void)appendDescriptionToFormatter:(id)a3;
- (void)invalidate;
- (void)updateSettings:(id)a3;
@end

@implementation BKSSceneHostRegistration

- (void)appendDescriptionToFormatter:(id)a3
{
  v4 = a3;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __57__BKSSceneHostRegistration_appendDescriptionToFormatter___block_invoke;
  v6[3] = &unk_1E6F47C78;
  v7 = v4;
  v8 = self;
  v5 = v4;
  [v5 appendProem:self block:v6];
}

- (void)invalidate
{
  service = self->_service;
  v3 = self;
  if (service)
  {
    v12 = v3;
    os_unfair_lock_lock(&service->_registrationLock);
    v4 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:v12->_contextID];
    v5 = [(NSMutableDictionary *)service->_registrationLock_registrationsByContextID objectForKey:v4];
    v6 = v5;
    if (v5)
    {
      [v5 removeObject:v12];
    }

    if (![v6 count])
    {
      [(NSMutableDictionary *)service->_registrationLock_registrationsByContextID removeObjectForKey:v4];
    }

    v7 = [v6 lastObject];
    v8 = v7;
    if (v7)
    {
      v9 = *(v7 + 24);
    }

    else
    {
      v9 = 0;
    }

    v10 = v9;

    os_unfair_lock_unlock(&service->_registrationLock);
    v11 = [(BSServiceInitiatingConnection *)service->_connection remoteTarget];
    [v11 setSceneHostSettings:v10 forContextID:v4];

    v3 = v12;
  }
}

- (void)updateSettings:(id)a3
{
  v5 = a3;
  p_sceneHostSettings = &self->_sceneHostSettings;
  if (self->_sceneHostSettings != v5)
  {
    v7 = v5;
    objc_storeStrong(p_sceneHostSettings, a3);
    [(BKSTouchEventService *)self->_service _updateRegistration:?];
    v5 = v7;
  }

  MEMORY[0x1EEE66BB8](p_sceneHostSettings, v5);
}

@end