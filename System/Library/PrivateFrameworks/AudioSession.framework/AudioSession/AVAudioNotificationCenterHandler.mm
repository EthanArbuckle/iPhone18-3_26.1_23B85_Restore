@interface AVAudioNotificationCenterHandler
- (id)interruptionHandler;
- (id)propertyNotificationHandler;
- (int)handleInterruptionNotifications:(id)a3;
- (void)handlePropertyNotifications:(id)a3;
- (void)setInterruptionHandler:(id)a3;
- (void)setPropertyNotificationHandler:(id)a3;
@end

@implementation AVAudioNotificationCenterHandler

- (id)propertyNotificationHandler
{
  os_unfair_lock_lock(&self->_mutex.m_lock);
  v3 = MEMORY[0x1B26ED920](self->_propertyNotificationHandler);
  os_unfair_lock_unlock(&self->_mutex.m_lock);

  return v3;
}

- (void)setPropertyNotificationHandler:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock(&self->_mutex.m_lock);
  v5 = MEMORY[0x1B26ED920](v4);

  propertyNotificationHandler = self->_propertyNotificationHandler;
  self->_propertyNotificationHandler = v5;

  os_unfair_lock_unlock(&self->_mutex.m_lock);
}

- (id)interruptionHandler
{
  os_unfair_lock_lock(&self->_mutex.m_lock);
  v3 = MEMORY[0x1B26ED920](self->_interruptionHandler);
  os_unfair_lock_unlock(&self->_mutex.m_lock);

  return v3;
}

- (void)setInterruptionHandler:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock(&self->_mutex.m_lock);
  v5 = MEMORY[0x1B26ED920](v4);

  interruptionHandler = self->_interruptionHandler;
  self->_interruptionHandler = v5;

  os_unfair_lock_unlock(&self->_mutex.m_lock);
}

- (int)handleInterruptionNotifications:(id)a3
{
  v22 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(AVAudioNotificationCenterHandler *)self interruptionHandler];
  if (v5)
  {
    v6 = objc_opt_new();
    v19 = 0u;
    v20 = 0u;
    v17 = 0u;
    v18 = 0u;
    v7 = v4;
    v8 = [v7 countByEnumeratingWithState:&v17 objects:v21 count:16];
    if (v8)
    {
      v9 = *v18;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v18 != v9)
          {
            objc_enumerationMutation(v7);
          }

          v11 = *(*(&v17 + 1) + 8 * i);
          v12 = [AVAudioInterruptionNotification alloc];
          v13 = [(AVAudioInterruptionNotification *)v12 initWithInternal:v11, v17];
          [v6 addObject:v13];
        }

        v8 = [v7 countByEnumeratingWithState:&v17 objects:v21 count:16];
      }

      while (v8);
    }

    v14 = (v5)[2](v5, v6);
  }

  else
  {
    v14 = 0;
  }

  v15 = *MEMORY[0x1E69E9840];
  return v14;
}

- (void)handlePropertyNotifications:(id)a3
{
  v20 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(AVAudioNotificationCenterHandler *)self propertyNotificationHandler];
  if (v5)
  {
    v6 = objc_opt_new();
    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    v7 = v4;
    v8 = [v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
    if (v8)
    {
      v9 = *v16;
      do
      {
        v10 = 0;
        do
        {
          if (*v16 != v9)
          {
            objc_enumerationMutation(v7);
          }

          v11 = *(*(&v15 + 1) + 8 * v10);
          v12 = [AVAudioPropertyNotification alloc];
          v13 = [(AVAudioPropertyNotification *)v12 initWithInternal:v11, v15];
          [v6 addObject:v13];

          ++v10;
        }

        while (v8 != v10);
        v8 = [v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
      }

      while (v8);
    }

    (v5)[2](v5, v6);
  }

  v14 = *MEMORY[0x1E69E9840];
}

@end