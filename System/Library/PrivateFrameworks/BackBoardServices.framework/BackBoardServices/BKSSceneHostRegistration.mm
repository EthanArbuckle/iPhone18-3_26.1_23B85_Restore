@interface BKSSceneHostRegistration
- (void)appendDescriptionToFormatter:(id)formatter;
- (void)invalidate;
- (void)updateSettings:(id)settings;
@end

@implementation BKSSceneHostRegistration

- (void)appendDescriptionToFormatter:(id)formatter
{
  formatterCopy = formatter;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __57__BKSSceneHostRegistration_appendDescriptionToFormatter___block_invoke;
  v6[3] = &unk_1E6F47C78;
  v7 = formatterCopy;
  selfCopy = self;
  v5 = formatterCopy;
  [v5 appendProem:self block:v6];
}

- (void)invalidate
{
  service = self->_service;
  selfCopy = self;
  if (service)
  {
    v12 = selfCopy;
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

    lastObject = [v6 lastObject];
    v8 = lastObject;
    if (lastObject)
    {
      v9 = *(lastObject + 24);
    }

    else
    {
      v9 = 0;
    }

    v10 = v9;

    os_unfair_lock_unlock(&service->_registrationLock);
    remoteTarget = [(BSServiceInitiatingConnection *)service->_connection remoteTarget];
    [remoteTarget setSceneHostSettings:v10 forContextID:v4];

    selfCopy = v12;
  }
}

- (void)updateSettings:(id)settings
{
  settingsCopy = settings;
  p_sceneHostSettings = &self->_sceneHostSettings;
  if (self->_sceneHostSettings != settingsCopy)
  {
    v7 = settingsCopy;
    objc_storeStrong(p_sceneHostSettings, settings);
    [(BKSTouchEventService *)self->_service _updateRegistration:?];
    settingsCopy = v7;
  }

  MEMORY[0x1EEE66BB8](p_sceneHostSettings, settingsCopy);
}

@end