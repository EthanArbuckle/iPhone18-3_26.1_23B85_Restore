@interface AVAudioNotificationCenter
- (AVAudioNotificationCenter)init;
- (AVAudioNotificationCenter)initWithServer:(id)a3 type:(int)a4;
- (id)locked_calculateFilter;
- (unint64_t)delegateID;
- (void)dealloc;
- (void)invalidate;
- (void)privateSetInterruptionNotificationHandler:(id)a3;
- (void)privateSetPropertyNotificationHandler:(id)a3;
- (void)privateStartObservingNotifications:(id)a3;
- (void)privateStopObservingNotifications:(id)a3;
- (void)setInterruptionNotificationHandler:(id)a3;
- (void)setPropertyNotificationHandler:(id)a3;
- (void)startObservingNotifications:(id)a3;
- (void)stopObservingNotifications:(id)a3;
- (void)unlocked_updateServerWithFilter:(id)a3;
@end

@implementation AVAudioNotificationCenter

- (AVAudioNotificationCenter)initWithServer:(id)a3 type:(int)a4
{
  v26 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v19.receiver = self;
  v19.super_class = AVAudioNotificationCenter;
  v7 = [(AVAudioNotificationCenter *)&v19 init];
  if (!v7)
  {
    goto LABEL_4;
  }

  v8 = objc_alloc_init(AVAudioNotificationCenterHandler);
  v18 = 0;
  v9 = [v6 addNotificationDelegate:v8 error:&v18];
  v10 = v18;
  v11 = v10;
  if (v9)
  {
    objc_storeStrong(&v7->_handler, v8);
    v7->_delegateID = v9;
    objc_storeWeak(&v7->_server, v6);
    v12 = objc_opt_new();
    propertiesOfInterest = v7->_propertiesOfInterest;
    v7->_propertiesOfInterest = v12;

    v7->_type = a4;
LABEL_4:
    v14 = v7;
    goto LABEL_8;
  }

  v15 = *avas::client::gSessionClientLog(v10);
  if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315650;
    v21 = "AVAudioNotificationCenter.mm";
    v22 = 1024;
    v23 = 184;
    v24 = 2112;
    v25 = v11;
    _os_log_impl(&dword_1AC8A4000, v15, OS_LOG_TYPE_ERROR, "%25s:%-5d Failed to configure notification center: %@", buf, 0x1Cu);
  }

  v14 = 0;
LABEL_8:

  v16 = *MEMORY[0x1E69E9840];
  return v14;
}

- (void)dealloc
{
  [(AVAudioNotificationCenter *)self invalidate];
  v3.receiver = self;
  v3.super_class = AVAudioNotificationCenter;
  [(AVAudioNotificationCenter *)&v3 dealloc];
}

- (void)invalidate
{
  os_unfair_lock_lock(&self->_mutex.m_lock);
  if (self->_delegateID)
  {
    WeakRetained = objc_loadWeakRetained(&self->_server);
    [WeakRetained removeNotificationDelegate:self->_delegateID];

    self->_delegateID = 0;
    objc_storeWeak(&self->_server, 0);
    handler = self->_handler;
    self->_handler = 0;
  }

  os_unfair_lock_unlock(&self->_mutex.m_lock);
}

- (AVAudioNotificationCenter)init
{
  v3 = avac::CreateInProcessNotificationCenterServer(self);
  if (v3)
  {
    v4 = [(AVAudioNotificationCenter *)self initWithServer:v3 type:0];
  }

  else
  {
    v5 = +[AVAudioNotificationRouterXPC sharedInstance];
    v4 = [(AVAudioNotificationCenter *)self initWithServer:v5 type:1];
  }

  return v4;
}

- (id)locked_calculateFilter
{
  v3 = [(AVAudioNotificationCenterHandler *)self->_handler propertyNotificationHandler];
  if (v3)
  {
    v4 = self->_propertiesOfInterest;
  }

  else
  {
    v4 = [MEMORY[0x1E695DFD8] set];
  }

  v5 = v4;

  v6 = [(AVAudioNotificationCenterHandler *)self->_handler interruptionHandler];

  v7 = [objc_alloc(MEMORY[0x1E698D738]) initWithPropertyNotificationsOfInterest:v5 wantsInterruptions:v6 != 0];

  return v7;
}

- (void)unlocked_updateServerWithFilter:(id)a3
{
  v18 = *MEMORY[0x1E69E9840];
  v4 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_server);
  delegateID = self->_delegateID;
  v11 = 0;
  LOBYTE(self) = [WeakRetained updateDelegate:delegateID notificationFilter:v4 error:&v11];

  v7 = v11;
  if ((self & 1) == 0)
  {
    v9 = *avas::client::gSessionClientLog(v8);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      v13 = "AVAudioNotificationCenter.mm";
      v14 = 1024;
      v15 = 243;
      v16 = 2112;
      v17 = v7;
      _os_log_impl(&dword_1AC8A4000, v9, OS_LOG_TYPE_ERROR, "%25s:%-5d Failed to update notification center filter: %@", buf, 0x1Cu);
    }
  }

  v10 = *MEMORY[0x1E69E9840];
}

- (void)privateStartObservingNotifications:(id)a3
{
  v18 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = objc_opt_new();
  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v6 = v4;
  v7 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v7)
  {
    v8 = *v14;
    do
    {
      v9 = 0;
      do
      {
        if (*v14 != v8)
        {
          objc_enumerationMutation(v6);
        }

        v10 = [*(*(&v13 + 1) + 8 * v9) propertyName];
        [v5 addObject:v10];

        ++v9;
      }

      while (v7 != v9);
      v7 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v7);
  }

  os_unfair_lock_lock(&self->_mutex.m_lock);
  [(NSMutableSet *)self->_propertiesOfInterest unionSet:v5];
  v11 = [(AVAudioNotificationCenter *)self locked_calculateFilter];
  os_unfair_lock_unlock(&self->_mutex.m_lock);
  [(AVAudioNotificationCenter *)self unlocked_updateServerWithFilter:v11];

  v12 = *MEMORY[0x1E69E9840];
}

- (void)privateStopObservingNotifications:(id)a3
{
  v18 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = objc_opt_new();
  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v6 = v4;
  v7 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v7)
  {
    v8 = *v14;
    do
    {
      v9 = 0;
      do
      {
        if (*v14 != v8)
        {
          objc_enumerationMutation(v6);
        }

        v10 = [*(*(&v13 + 1) + 8 * v9) propertyName];
        [v5 addObject:v10];

        ++v9;
      }

      while (v7 != v9);
      v7 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v7);
  }

  os_unfair_lock_lock(&self->_mutex.m_lock);
  [(NSMutableSet *)self->_propertiesOfInterest minusSet:v5];
  v11 = [(AVAudioNotificationCenter *)self locked_calculateFilter];
  os_unfair_lock_unlock(&self->_mutex.m_lock);
  [(AVAudioNotificationCenter *)self unlocked_updateServerWithFilter:v11];

  v12 = *MEMORY[0x1E69E9840];
}

- (void)privateSetPropertyNotificationHandler:(id)a3
{
  os_unfair_lock_lock(&self->_mutex.m_lock);
  v4 = [(AVAudioNotificationCenter *)self locked_calculateFilter];
  os_unfair_lock_unlock(&self->_mutex.m_lock);
  [(AVAudioNotificationCenter *)self unlocked_updateServerWithFilter:v4];
}

- (void)privateSetInterruptionNotificationHandler:(id)a3
{
  os_unfair_lock_lock(&self->_mutex.m_lock);
  v4 = [(AVAudioNotificationCenter *)self locked_calculateFilter];
  os_unfair_lock_unlock(&self->_mutex.m_lock);
  [(AVAudioNotificationCenter *)self unlocked_updateServerWithFilter:v4];
}

- (unint64_t)delegateID
{
  os_unfair_lock_lock(&self->_mutex.m_lock);
  delegateID = self->_delegateID;
  os_unfair_lock_unlock(&self->_mutex.m_lock);
  return delegateID;
}

- (void)startObservingNotifications:(id)a3
{
  v4 = a3;
  v8 = v4;
  if (self->_type == 1 && (v5 = objc_loadWeakRetained(&self->_server), v6 = objc_opt_respondsToSelector(), v5, v4 = v8, (v6 & 1) != 0))
  {
    WeakRetained = objc_loadWeakRetained(&self->_server);
    [WeakRetained startObservingNotifications:v8 forDelegate:self->_delegateID];
  }

  else
  {
    [(AVAudioNotificationCenter *)self privateStartObservingNotifications:v4];
  }
}

- (void)stopObservingNotifications:(id)a3
{
  v4 = a3;
  v8 = v4;
  if (self->_type == 1 && (v5 = objc_loadWeakRetained(&self->_server), v6 = objc_opt_respondsToSelector(), v5, v4 = v8, (v6 & 1) != 0))
  {
    WeakRetained = objc_loadWeakRetained(&self->_server);
    [WeakRetained stopObservingNotifications:v8 forDelegate:self->_delegateID];
  }

  else
  {
    [(AVAudioNotificationCenter *)self privateStopObservingNotifications:v4];
  }
}

- (void)setPropertyNotificationHandler:(id)a3
{
  v4 = a3;
  [(AVAudioNotificationCenterHandler *)self->_handler setPropertyNotificationHandler:?];
  if (self->_type != 1)
  {
    [(AVAudioNotificationCenter *)self privateSetPropertyNotificationHandler:v4];
  }
}

- (void)setInterruptionNotificationHandler:(id)a3
{
  v4 = a3;
  [(AVAudioNotificationCenterHandler *)self->_handler setInterruptionHandler:?];
  if (self->_type != 1)
  {
    [(AVAudioNotificationCenter *)self privateSetInterruptionNotificationHandler:v4];
  }
}

@end