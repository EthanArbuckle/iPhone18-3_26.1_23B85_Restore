@interface AVAudioNotificationRouterXPC
+ (id)sharedInstance;
- (AVAudioNotificationRouterXPC)init;
- (BOOL)isAudioServiceTerminated;
- (id).cxx_construct;
- (unint64_t)addNotificationDelegate:(id)a3 error:(id *)a4;
- (unint64_t)createRemoteNotificationCenter;
- (void)destroyRemoteNotificationCenter:(unint64_t)a3;
- (void)handleAudiomxdReset;
- (void)handleAudiomxdTermination;
- (void)handleNotification:(id)a3 payload:(id)a4;
- (void)removeNotificationDelegate:(unint64_t)a3;
- (void)setAudioServiceTerminated:(BOOL)a3;
- (void)startObservingNotifications:(id)a3 forDelegate:(unint64_t)a4;
- (void)stopObservingNotifications:(id)a3 forDelegate:(unint64_t)a4;
@end

@implementation AVAudioNotificationRouterXPC

+ (id)sharedInstance
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __46__AVAudioNotificationRouterXPC_sharedInstance__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (+[AVAudioNotificationRouterXPC sharedInstance]::onceToken != -1)
  {
    dispatch_once(&+[AVAudioNotificationRouterXPC sharedInstance]::onceToken, block);
  }

  v2 = gAVAudioNotificationRouterXPC;

  return v2;
}

void __46__AVAudioNotificationRouterXPC_sharedInstance__block_invoke(uint64_t a1)
{
  v3.receiver = *(a1 + 32);
  v3.super_class = &OBJC_METACLASS___AVAudioNotificationRouterXPC;
  v1 = [objc_msgSendSuper2(&v3 allocWithZone_];
  v2 = gAVAudioNotificationRouterXPC;
  gAVAudioNotificationRouterXPC = v1;
}

- (AVAudioNotificationRouterXPC)init
{
  v3.receiver = self;
  v3.super_class = AVAudioNotificationRouterXPC;
  return [(AVAudioNotificationRouterXPC *)&v3 init];
}

- (unint64_t)addNotificationDelegate:(id)a3 error:(id *)a4
{
  v5 = a3;
  v6 = [(AVAudioNotificationRouterXPC *)self createRemoteNotificationCenter];
  if (v6)
  {
    os_unfair_lock_lock(&self->_delegates.mMutex.m_lock);
    NotificationDelegateCollectionXPC::AddDelegate(&self->_delegates.mObject.mDelegates.__table_.__bucket_list_.__ptr_, v5, v6);
    os_unfair_lock_unlock(&self->_delegates.mMutex.m_lock);
  }

  return v6;
}

- (void)removeNotificationDelegate:(unint64_t)a3
{
  [(AVAudioNotificationRouterXPC *)self destroyRemoteNotificationCenter:?];
  os_unfair_lock_lock(&self->_delegates.mMutex.m_lock);
  v5 = a3;
  std::__hash_table<std::__hash_value_type<unsigned long long,NotificationDelegateCollectionXPC::NotificationDelegates>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,NotificationDelegateCollectionXPC::NotificationDelegates>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,NotificationDelegateCollectionXPC::NotificationDelegates>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,NotificationDelegateCollectionXPC::NotificationDelegates>>>::__erase_unique<unsigned long long>(&self->_delegates.mObject.mDelegates.__table_.__bucket_list_.__ptr_, &v5);
  os_unfair_lock_unlock(&self->_delegates.mMutex.m_lock);
}

- (unint64_t)createRemoteNotificationCenter
{
  v12 = *MEMORY[0x1E69E9840];
  v2 = [(AVAudioNotificationRouterXPC *)self isAudioServiceTerminated];
  if (v2)
  {
    v3 = *avas::client::gSessionClientLog(v2);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      v8 = 136315394;
      v9 = "AVAudioNotificationRouterXPC.mm";
      v10 = 1024;
      v11 = 101;
      _os_log_impl(&dword_1AC8A4000, v3, OS_LOG_TYPE_ERROR, "%25s:%-5d Failed to create remote notification center, mediaserver has not been reset", &v8, 0x12u);
    }

    v4 = 0;
  }

  else
  {
    v5 = +[AVAudioSession sharedInstance];
    v4 = [v5 privateCreateRemoteNotificationCenter];
  }

  v6 = *MEMORY[0x1E69E9840];
  return v4;
}

- (void)destroyRemoteNotificationCenter:(unint64_t)a3
{
  if (![(AVAudioNotificationRouterXPC *)self isAudioServiceTerminated])
  {
    v4 = +[AVAudioSession sharedInstance];
    [v4 privateDestroyRemoteNotificationCenter:a3];
  }
}

- (void)startObservingNotifications:(id)a3 forDelegate:(unint64_t)a4
{
  v28 = *MEMORY[0x1E69E9840];
  v18 = a3;
  v6 = [(AVAudioNotificationRouterXPC *)self isAudioServiceTerminated];
  if (v6)
  {
    v7 = *avas::client::gSessionClientLog(v6);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v25 = "AVAudioNotificationRouterXPC.mm";
      v26 = 1024;
      v27 = 120;
      _os_log_impl(&dword_1AC8A4000, v7, OS_LOG_TYPE_ERROR, "%25s:%-5d Failed to add observers to remote notification center, mediaserver has not been reset", buf, 0x12u);
    }
  }

  else
  {
    v8 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v21 = 0u;
    v22 = 0u;
    v19 = 0u;
    v20 = 0u;
    v9 = v18;
    v10 = [v9 countByEnumeratingWithState:&v19 objects:v23 count:16];
    if (v10)
    {
      v11 = *v20;
      do
      {
        v12 = 0;
        do
        {
          if (*v20 != v11)
          {
            objc_enumerationMutation(v9);
          }

          v13 = *(*(&v19 + 1) + 8 * v12);
          v14 = objc_alloc_init(MEMORY[0x1E698D740]);
          v15 = [v13 propertyName];
          [v14 setPropertyName:v15];

          [v14 setType:{objc_msgSend(v13, "type")}];
          [v8 addObject:v14];

          ++v12;
        }

        while (v10 != v12);
        v10 = [v9 countByEnumeratingWithState:&v19 objects:v23 count:16];
      }

      while (v10);
    }

    v16 = +[AVAudioSession sharedInstance];
    [v16 privateStartOrStopObserving:1 remoteNotifications:v8 forDelegate:a4];
  }

  v17 = *MEMORY[0x1E69E9840];
}

- (void)stopObservingNotifications:(id)a3 forDelegate:(unint64_t)a4
{
  v28 = *MEMORY[0x1E69E9840];
  v18 = a3;
  v6 = [(AVAudioNotificationRouterXPC *)self isAudioServiceTerminated];
  if (v6)
  {
    v7 = *avas::client::gSessionClientLog(v6);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v25 = "AVAudioNotificationRouterXPC.mm";
      v26 = 1024;
      v27 = 141;
      _os_log_impl(&dword_1AC8A4000, v7, OS_LOG_TYPE_ERROR, "%25s:%-5d Failed to remove observers for remote notification center, mediaserver has not been reset", buf, 0x12u);
    }
  }

  else
  {
    v8 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v21 = 0u;
    v22 = 0u;
    v19 = 0u;
    v20 = 0u;
    v9 = v18;
    v10 = [v9 countByEnumeratingWithState:&v19 objects:v23 count:16];
    if (v10)
    {
      v11 = *v20;
      do
      {
        v12 = 0;
        do
        {
          if (*v20 != v11)
          {
            objc_enumerationMutation(v9);
          }

          v13 = *(*(&v19 + 1) + 8 * v12);
          v14 = objc_alloc_init(MEMORY[0x1E698D740]);
          v15 = [v13 propertyName];
          [v14 setPropertyName:v15];

          [v14 setType:{objc_msgSend(v13, "type")}];
          [v8 addObject:v14];

          ++v12;
        }

        while (v10 != v12);
        v10 = [v9 countByEnumeratingWithState:&v19 objects:v23 count:16];
      }

      while (v10);
    }

    v16 = +[AVAudioSession sharedInstance];
    [v16 privateStartOrStopObserving:0 remoteNotifications:v8 forDelegate:a4];
  }

  v17 = *MEMORY[0x1E69E9840];
}

- (void)handleNotification:(id)a3 payload:(id)a4
{
  v15[1] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = [v7 objectForKey:v6];

  if (v8 && ([v7 objectForKeyedSubscript:v6], v9 = objc_claimAutoreleasedReturnValue(), (v8 = v9) != 0))
  {
    v10 = [v9 delegatePayload];
    v11 = [v8 subscribedDelegates];
  }

  else
  {
    v10 = 0;
    v11 = 0;
  }

  v12 = [objc_alloc(MEMORY[0x1E698D748]) initWithPropertyName:v6 sourceSessionID:0 nodeSessionID:0 propertyData:v10];
  os_unfair_lock_lock(&self->_delegates.mMutex.m_lock);
  v15[0] = v12;
  v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v15 count:1];
  NotificationDelegateCollectionXPC::HandleNotifications(&self->_delegates.mObject, v13, v11);

  os_unfair_lock_unlock(&self->_delegates.mMutex.m_lock);
  v14 = *MEMORY[0x1E69E9840];
}

- (void)handleAudiomxdTermination
{
  v9 = *MEMORY[0x1E69E9840];
  v3 = *avas::client::gSessionClientLog(self);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 136315394;
    v6 = "AVAudioNotificationRouterXPC.mm";
    v7 = 1024;
    v8 = 178;
    _os_log_impl(&dword_1AC8A4000, v3, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Received mediaserver lost notification", &v5, 0x12u);
  }

  [(AVAudioNotificationRouterXPC *)self setAudioServiceTerminated:1];
  os_unfair_lock_lock(&self->_delegates.mMutex.m_lock);
  std::__hash_table<std::__hash_value_type<unsigned long long,NotificationDelegateCollectionXPC::NotificationDelegates>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,NotificationDelegateCollectionXPC::NotificationDelegates>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,NotificationDelegateCollectionXPC::NotificationDelegates>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,NotificationDelegateCollectionXPC::NotificationDelegates>>>::clear(&self->_delegates.mObject);
  os_unfair_lock_unlock(&self->_delegates.mMutex.m_lock);
  v4 = *MEMORY[0x1E69E9840];
}

- (void)handleAudiomxdReset
{
  v9 = *MEMORY[0x1E69E9840];
  v3 = *avas::client::gSessionClientLog(self);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 136315394;
    v6 = "AVAudioNotificationRouterXPC.mm";
    v7 = 1024;
    v8 = 185;
    _os_log_impl(&dword_1AC8A4000, v3, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Received mediaserver reset notification", &v5, 0x12u);
  }

  [(AVAudioNotificationRouterXPC *)self setAudioServiceTerminated:0];
  v4 = *MEMORY[0x1E69E9840];
}

- (BOOL)isAudioServiceTerminated
{
  os_unfair_lock_lock(&self->_delegates.mMutex.m_lock);
  mIsAudioServiceTerminated = self->_delegates.mObject.mIsAudioServiceTerminated;
  os_unfair_lock_unlock(&self->_delegates.mMutex.m_lock);
  return mIsAudioServiceTerminated;
}

- (void)setAudioServiceTerminated:(BOOL)a3
{
  os_unfair_lock_lock(&self->_delegates.mMutex.m_lock);
  self->_delegates.mObject.mIsAudioServiceTerminated = a3;

  os_unfair_lock_unlock(&self->_delegates.mMutex.m_lock);
}

- (id).cxx_construct
{
  *(self + 2) = 0;
  *(self + 2) = 0u;
  *(self + 3) = 0u;
  *(self + 1) = 0u;
  *(self + 12) = 1065353216;
  return self;
}

@end