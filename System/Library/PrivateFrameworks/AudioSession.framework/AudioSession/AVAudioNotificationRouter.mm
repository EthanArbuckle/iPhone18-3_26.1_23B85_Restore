@interface AVAudioNotificationRouter
- (AVAudioNotificationRouter)initWithNotificationCenter:(opaqueCMNotificationCenter *)center sessionCollectionProvider:(ISessionCollectionProvider *)provider sessionNotificationHandler:(void *)handler;
- (BOOL)updateDelegate:(unint64_t)delegate notificationFilter:(id)filter error:(id *)error;
- (id).cxx_construct;
- (int)internal_publishInterruptions:(id)interruptions;
- (unint64_t)addNotificationDelegate:(id)delegate error:(id *)error;
- (void)handleCMNotification:(id)notification object:(const void *)object payload:(void *)payload;
- (void)internal_UpdateNotificationCenterSubscriptions:(void *)subscriptions;
- (void)internal_findSessionsMatchingAudioSessionID:(unsigned int)d outMatches:(void *)matches;
- (void)internal_findSessionsMatchingMXSessionID:(unint64_t)d outMatches:(void *)matches;
- (void)internal_findSessionsMatchingObject:(const void *)object outMatches:(void *)matches;
- (void)internal_publishPropertyNotifications:(id)notifications;
- (void)removeNotificationDelegate:(unint64_t)delegate;
@end

@implementation AVAudioNotificationRouter

- (AVAudioNotificationRouter)initWithNotificationCenter:(opaqueCMNotificationCenter *)center sessionCollectionProvider:(ISessionCollectionProvider *)provider sessionNotificationHandler:(void *)handler
{
  v11.receiver = self;
  v11.super_class = AVAudioNotificationRouter;
  v8 = [(AVAudioNotificationRouter *)&v11 init];
  if (v8)
  {
    if (center)
    {
      CFRetain(center);
    }

    mCFObject = v8->_notificationCenter.mCFObject;
    v8->_notificationCenter.mCFObject = center;
    if (mCFObject)
    {
      CFRelease(mCFObject);
    }

    v8->_sessionCollectionProvider = provider;
    v8->_sessionNotificationHandler = handler;
  }

  return v8;
}

- (void)internal_UpdateNotificationCenterSubscriptions:(void *)subscriptions
{
  v32 = *MEMORY[0x1E69E9840];
  v4 = avas::NotificationDelegateCollection::GetCombinedPropertyNotificationsOfInterest(*(subscriptions + 1));
  if ([(NSSet *)self->_propertyNotificationsOfInterest count])
  {
    v5 = [MEMORY[0x1E695DFA8] setWithSet:self->_propertyNotificationsOfInterest];
    [v5 minusSet:v4];
    v28 = 0u;
    v29 = 0u;
    v26 = 0u;
    v27 = 0u;
    v6 = v5;
    v7 = [v6 countByEnumeratingWithState:&v26 objects:v31 count:16];
    if (v7)
    {
      v8 = *v27;
      do
      {
        v9 = 0;
        do
        {
          if (*v27 != v8)
          {
            objc_enumerationMutation(v6);
          }

          v10 = *(*(&v26 + 1) + 8 * v9);
          mCFObject = self->_notificationCenter.mCFObject;
          CMNotificationCenterRemoveListener();
          ++v9;
        }

        while (v7 != v9);
        v7 = [v6 countByEnumeratingWithState:&v26 objects:v31 count:16];
      }

      while (v7);
    }
  }

  if ([(NSSet *)v4 count])
  {
    v12 = [MEMORY[0x1E695DFA8] setWithSet:v4];
    v13 = v12;
    if (self->_propertyNotificationsOfInterest)
    {
      [v12 minusSet:?];
    }

    v24 = 0u;
    v25 = 0u;
    v22 = 0u;
    v23 = 0u;
    v14 = v13;
    v15 = [v14 countByEnumeratingWithState:&v22 objects:v30 count:16];
    if (v15)
    {
      v16 = *v23;
      do
      {
        v17 = 0;
        do
        {
          if (*v23 != v16)
          {
            objc_enumerationMutation(v14);
          }

          v18 = *(*(&v22 + 1) + 8 * v17);
          v19 = self->_notificationCenter.mCFObject;
          CMNotificationCenterAddListener();
          ++v17;
        }

        while (v15 != v17);
        v15 = [v14 countByEnumeratingWithState:&v22 objects:v30 count:16];
      }

      while (v15);
    }
  }

  propertyNotificationsOfInterest = self->_propertyNotificationsOfInterest;
  self->_propertyNotificationsOfInterest = v4;

  v21 = *MEMORY[0x1E69E9840];
}

- (void)internal_findSessionsMatchingMXSessionID:(unint64_t)d outMatches:(void *)matches
{
  (*(self->_sessionCollectionProvider->var0 + 2))(&v21);
  avas::server::SessionCollection::SessionPresentingIterator::SessionPresentingIterator(v15, *v22, (v22 + 1), v22[3], (v22 + 4));
  while (1)
  {
    avas::server::SessionCollection::SessionPresentingIterator::SessionPresentingIterator(v11, (v22 + 1), (v22 + 1), (v22 + 4), (v22 + 4));
    v7 = v15[0] == v11[0] && v15[2] == v11[2];
    if (v14)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v14);
    }

    if (v13)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v13);
    }

    if (v12)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v12);
    }

    if (v7)
    {
      break;
    }

    v8 = v16;
    v10 = v17;
    v9 = v18;
    if (v18)
    {
      atomic_fetch_add_explicit(&v18->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    if ((*(*v10 + 56))(v10, d))
    {
      if ((*(*v10 + 104))(v10))
      {
        HIDWORD(v11[0]) = v8;
        v8 = (*(*v10 + 24))(v10);
      }

      else
      {
        HIDWORD(v11[0]) = 0;
      }

      LODWORD(v11[0]) = v8;
      std::__hash_table<avas::MatchedSession,avas::MatchedSessionHash,avas::MatchedSessionEqual,std::allocator<avas::MatchedSession>>::__emplace_unique_key_args<avas::MatchedSession,avas::MatchedSession>(matches, v11);
    }

    if (v9)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v9);
    }

    avas::server::SessionCollection::SessionPresentingIterator::operator++(v15);
  }

  if (v20)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v20);
  }

  if (v19)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v19);
  }

  if (v18)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v18);
  }

  if (v21)
  {
    os_unfair_lock_unlock(v21);
  }
}

- (void)internal_findSessionsMatchingAudioSessionID:(unsigned int)d outMatches:(void *)matches
{
  (*(self->_sessionCollectionProvider->var0 + 2))(&v25);
  avas::server::SessionCollection::SessionPresentingIterator::SessionPresentingIterator(v19, *v26, (v26 + 1), v26[3], (v26 + 4));
  while (1)
  {
    avas::server::SessionCollection::SessionPresentingIterator::SessionPresentingIterator(&v13, (v26 + 1), (v26 + 1), (v26 + 4), (v26 + 4));
    v7 = v19[0] == v13 && v19[2] == v15;
    if (v18)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v18);
    }

    if (v17)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v17);
    }

    if (v16)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v16);
    }

    if (v7)
    {
      break;
    }

    v8 = v20;
    v10 = v21;
    v9 = v22;
    if (v22)
    {
      atomic_fetch_add_explicit(&v22->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    avas::server::SessionCollection::SessionPresentingIterator::GetAudioSessionInfo(v19, &v13);
    if (v8 == d || v13 && (*(*v13 + 16))(v13) == d)
    {
      if (v10 && (*(*v10 + 104))(v10))
      {
        v12 = v8;
        v8 = (*(*v10 + 24))(v10);
      }

      else
      {
        v12 = 0;
      }

      v11 = v8;
      std::__hash_table<avas::MatchedSession,avas::MatchedSessionHash,avas::MatchedSessionEqual,std::allocator<avas::MatchedSession>>::__emplace_unique_key_args<avas::MatchedSession,avas::MatchedSession>(matches, &v11);
    }

    if (v14)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v14);
    }

    if (v9)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v9);
    }

    avas::server::SessionCollection::SessionPresentingIterator::operator++(v19);
  }

  if (v24)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v24);
  }

  if (v23)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v23);
  }

  if (v22)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v22);
  }

  if (v25)
  {
    os_unfair_lock_unlock(v25);
  }
}

- (void)internal_findSessionsMatchingObject:(const void *)object outMatches:(void *)matches
{
  v31 = *MEMORY[0x1E69E9840];
  (*(self->_sessionCollectionProvider->var0 + 2))(&lock);
  avas::server::SessionCollection::SessionPresentingIterator::SessionPresentingIterator(v17, *v24, (v24 + 1), v24[3], (v24 + 4));
  while (1)
  {
    avas::server::SessionCollection::SessionPresentingIterator::SessionPresentingIterator(buf, (v24 + 1), (v24 + 1), (v24 + 4), (v24 + 4));
    v7 = v17[0] == *buf && v17[2] == *&v27[2];
    if (v30)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v30);
    }

    if (v29)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v29);
    }

    if (v28)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v28);
    }

    if (v7)
    {
      break;
    }

    v8 = v18;
    v10 = v19;
    v9 = v20;
    if (v20)
    {
      atomic_fetch_add_explicit(&v20->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    if ((*(*v10 + 48))(v10, object))
    {
      if ((*(*v10 + 104))(v10))
      {
        v16 = v8;
        v8 = (*(*v10 + 24))(v10);
      }

      else
      {
        v16 = 0;
      }

      v15 = v8;
      std::__hash_table<avas::MatchedSession,avas::MatchedSessionHash,avas::MatchedSessionEqual,std::allocator<avas::MatchedSession>>::__emplace_unique_key_args<avas::MatchedSession,avas::MatchedSession>(matches, &v15);
      if (v16)
      {
        avas::server::SessionCollection::SessionPresentingIterator::GetAudioSessionInfo(v17, &v13);
        if (v13)
        {
          *buf = (*(*v13 + 16))(v13);
          *&buf[4] = 0;
          std::__hash_table<avas::MatchedSession,avas::MatchedSessionHash,avas::MatchedSessionEqual,std::allocator<avas::MatchedSession>>::__emplace_unique_key_args<avas::MatchedSession,avas::MatchedSession>(matches, buf);
        }

        else
        {
          v11 = *avas::gSessionUtilityLog(0);
          if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
          {
            *buf = 136315650;
            *&buf[4] = "AVAudioNotificationRouter.mm";
            v26 = 1024;
            *v27 = 279;
            *&v27[4] = 1024;
            *&v27[6] = v16;
            _os_log_impl(&dword_1DE897000, v11, OS_LOG_TYPE_ERROR, "%25s:%-5d Error - cannot get session info for node %x", buf, 0x18u);
          }
        }

        if (v14)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v14);
        }
      }
    }

    if (v9)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v9);
    }

    avas::server::SessionCollection::SessionPresentingIterator::operator++(v17);
  }

  if (v22)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v22);
  }

  if (v21)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v21);
  }

  if (v20)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v20);
  }

  if (lock)
  {
    os_unfair_lock_unlock(lock);
  }

  v12 = *MEMORY[0x1E69E9840];
}

- (void)internal_publishPropertyNotifications:(id)notifications
{
  notificationsCopy = notifications;
  os_unfair_lock_lock(&self->_delegates.mMutex.m_lock);
  avas::NotificationDelegateCollection::GetDelegatesForNotifications(&self->_delegates.mObject, notificationsCopy, v9);
  os_unfair_lock_unlock(&self->_delegates.mMutex.m_lock);
  v5 = v9[0];
  v6 = v9[1];
  while (v5 != v6)
  {
    v7 = *v5;
    v8 = v5[1];
    [v7 handlePropertyNotifications:v8];

    v5 += 2;
  }

  v10 = v9;
  std::vector<std::pair<objc_object  {objcproto39AVAudioNotificationCenterServerDelegate}* {__strong},NSArray * {__strong}>>::__destroy_vector::operator()[abi:ne200100](&v10);
}

- (int)internal_publishInterruptions:(id)interruptions
{
  v23 = *MEMORY[0x1E69E9840];
  interruptionsCopy = interruptions;
  os_unfair_lock_lock(&self->_delegates.mMutex.m_lock);
  avas::NotificationDelegateCollection::GetDelegatesForInterruptions(&self->_delegates.mObject, &v14);
  os_unfair_lock_unlock(&self->_delegates.mMutex.m_lock);
  v5 = v14;
  v6 = v15;
  if (v14 == v15)
  {
    v7 = 0;
  }

  else
  {
    v7 = 0;
    do
    {
      v8 = *v5;
      v9 = [v8 handleInterruptionNotifications:interruptionsCopy];
      v10 = v9;
      if (v9)
      {
        v11 = *avas::gSessionUtilityLog(v9);
        if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315906;
          *&buf[4] = "AVAudioNotificationRouter.mm";
          v17 = 1024;
          v18 = 309;
          v19 = 2048;
          v20 = v8;
          v21 = 1024;
          v22 = v10;
          _os_log_impl(&dword_1DE897000, v11, OS_LOG_TYPE_ERROR, "%25s:%-5d interruption delegate %p failed with error: %d", buf, 0x22u);
        }

        v7 = v10;
      }

      ++v5;
    }

    while (v5 != v6);
  }

  *buf = &v14;
  std::vector<objc_object  {objcproto39AVAudioNotificationCenterServerDelegate}* {__strong}>::__destroy_vector::operator()[abi:ne200100](buf);

  v12 = *MEMORY[0x1E69E9840];
  return v7;
}

- (void)handleCMNotification:(id)notification object:(const void *)object payload:(void *)payload
{
  notificationCopy = notification;
  v17 = 0u;
  v18 = 0u;
  v19 = 1065353216;
  [(AVAudioNotificationRouter *)self internal_findSessionsMatchingObject:object outMatches:&v17];
  if (*(&v18 + 1))
  {
    v10 = objc_opt_new();
    for (i = v18; i; i = *i)
    {
      v12 = [AVAudioPropertyNotificationInternal alloc];
      v13 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:*(i + 4)];
      v14 = *(i + 5);
      if (v14)
      {
        v5 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:*(i + 5)];
        v15 = v5;
      }

      else
      {
        v15 = 0;
      }

      v16 = [(AVAudioPropertyNotificationInternal *)v12 initWithPropertyName:notificationCopy sourceSessionID:v13 nodeSessionID:v15 propertyData:payload];
      [v10 addObject:v16];

      if (v14)
      {
      }
    }

    [(AVAudioNotificationRouter *)self internal_publishPropertyNotifications:v10];
  }

  std::__hash_table<avas::MatchedSession,avas::MatchedSessionHash,avas::MatchedSessionEqual,std::allocator<avas::MatchedSession>>::~__hash_table(&v17);
}

- (unint64_t)addNotificationDelegate:(id)delegate error:(id *)error
{
  delegateCopy = delegate;
  if (error)
  {
    *error = 0;
  }

  os_unfair_lock_lock(&self->_delegates.mMutex.m_lock);
  v7 = avas::NotificationDelegateCollection::AddDelegate(&self->_delegates.mObject._delegates.__table_.__bucket_list_.__ptr_, delegateCopy);
  os_unfair_lock_unlock(&self->_delegates.mMutex.m_lock);

  return v7;
}

- (void)removeNotificationDelegate:(unint64_t)delegate
{
  os_unfair_lock_lock(&self->_delegates.mMutex.m_lock);
  delegateCopy = delegate;
  std::__hash_table<std::__hash_value_type<unsigned long long,avas::NotificationDelegateCollection::NotificationDelegates>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,avas::NotificationDelegateCollection::NotificationDelegates>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,avas::NotificationDelegateCollection::NotificationDelegates>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,avas::NotificationDelegateCollection::NotificationDelegates>>>::__erase_unique<unsigned long long>(&self->_delegates.mObject._delegates.__table_.__bucket_list_.__ptr_, &delegateCopy);
  os_unfair_lock_unlock(&self->_delegates.mMutex.m_lock);
}

- (BOOL)updateDelegate:(unint64_t)delegate notificationFilter:(id)filter error:(id *)error
{
  v17[1] = *MEMORY[0x1E69E9840];
  filterCopy = filter;
  os_unfair_lock_lock(&self->_delegates.mMutex.m_lock);
  lock[0] = &self->_delegates.mMutex.m_lock;
  lock[1] = &self->_delegates.mObject;
  updated = avas::NotificationDelegateCollection::UpdateDelegateFilter(&self->_delegates.mObject, delegate, filterCopy);
  if (updated)
  {
    [(AVAudioNotificationRouter *)self internal_UpdateNotificationCenterSubscriptions:lock];
    if (error)
    {
      *error = 0;
    }
  }

  else if (error)
  {
    v10 = MEMORY[0x1E696ABC0];
    v16 = *MEMORY[0x1E696A578];
    delegate = [MEMORY[0x1E696AEC0] stringWithFormat:@"invalid notification delegate: 0x%llx", delegate];
    v17[0] = delegate;
    v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v17 forKeys:&v16 count:1];
    *error = [v10 errorWithDomain:@"AVAudioSession Error" code:-50 userInfo:v12];
  }

  if (lock[0])
  {
    os_unfair_lock_unlock(lock[0]);
  }

  v13 = *MEMORY[0x1E69E9840];
  return updated;
}

- (id).cxx_construct
{
  *(self + 1) = 0;
  *(self + 6) = 0;
  *(self + 2) = 0u;
  *(self + 3) = 0u;
  *(self + 8) = 0;
  *(self + 9) = 0;
  *(self + 16) = 1065353216;
  return self;
}

@end