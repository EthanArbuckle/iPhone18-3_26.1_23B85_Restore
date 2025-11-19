@interface CKMessagesComplicationDataProvider
- (CKMessagesComplicationDataProvider)init;
- (id)currentSubscribers;
- (id)urlForLastMessage;
- (void)addSubscriber:(id)a3;
- (void)connectToDaemon;
- (void)dealloc;
- (void)disconnectFromDaemon;
- (void)notifySubscribersAboutNewUnreadCount:(id)a3;
- (void)removeSubscriber:(id)a3;
- (void)startUnreadCountObservation;
- (void)stopUnreadCountObservation;
@end

@implementation CKMessagesComplicationDataProvider

- (CKMessagesComplicationDataProvider)init
{
  v13.receiver = self;
  v13.super_class = CKMessagesComplicationDataProvider;
  v3 = [(CKMessagesComplicationDataProvider *)&v13 init];
  if (v3)
  {
    v8 = objc_msgSend_hashTableWithOptions_(MEMORY[0x277CCAA50], v2, v4, v5, v6, v7, 5);
    subscribers = v3->_subscribers;
    v3->_subscribers = v8;

    v10 = os_log_create("com.apple.Messages", "CKMessagesComplicationDataProvider");
    log = v3->_log;
    v3->_log = v10;

    v3->_lock._os_unfair_lock_opaque = 0;
  }

  return v3;
}

- (void)dealloc
{
  v7 = objc_msgSend_subscribers(self, a2, v2, v3, v4, v5);
  objc_msgSend_removeAllObjects(v7, v8, v9, v10, v11, v12);

  objc_msgSend_stopUnreadCountObservation(self, v13, v14, v15, v16, v17);
  objc_msgSend_disconnectFromDaemon(self, v18, v19, v20, v21, v22);
  v23.receiver = self;
  v23.super_class = CKMessagesComplicationDataProvider;
  [(CKMessagesComplicationDataProvider *)&v23 dealloc];
}

- (void)addSubscriber:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock(&self->_lock);
  v10 = objc_msgSend_subscribers(self, v5, v6, v7, v8, v9);
  objc_msgSend_addObject_(v10, v11, v12, v13, v14, v15, v4);

  v21 = objc_msgSend_log(self, v16, v17, v18, v19, v20);
  if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
  {
    sub_23BD20BF0(v4, v21);
  }

  v27 = objc_msgSend_subscribers(self, v22, v23, v24, v25, v26);
  v33 = objc_msgSend_count(v27, v28, v29, v30, v31, v32);

  if (v33 == 1)
  {
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = sub_23BD1D2D0;
    block[3] = &unk_278B93128;
    block[4] = self;
    dispatch_async(MEMORY[0x277D85CD0], block);
  }

  else
  {
    v34[0] = MEMORY[0x277D85DD0];
    v34[1] = 3221225472;
    v34[2] = sub_23BD1D30C;
    v34[3] = &unk_278B93150;
    v34[4] = self;
    v35 = v4;
    dispatch_async(MEMORY[0x277D85CD0], v34);
  }

  os_unfair_lock_unlock(&self->_lock);
}

- (void)removeSubscriber:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock(&self->_lock);
  v10 = objc_msgSend_subscribers(self, v5, v6, v7, v8, v9);
  objc_msgSend_removeObject_(v10, v11, v12, v13, v14, v15, v4);

  v21 = objc_msgSend_log(self, v16, v17, v18, v19, v20);
  if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
  {
    sub_23BD20C68(v4, v21);
  }

  v27 = objc_msgSend_subscribers(self, v22, v23, v24, v25, v26);
  v33 = objc_msgSend_count(v27, v28, v29, v30, v31, v32);

  if (!v33)
  {
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = sub_23BD1D49C;
    block[3] = &unk_278B93128;
    block[4] = self;
    dispatch_async(MEMORY[0x277D85CD0], block);
  }

  os_unfair_lock_unlock(&self->_lock);
}

- (id)currentSubscribers
{
  os_unfair_lock_lock(&self->_lock);
  v8 = objc_msgSend_subscribers(self, v3, v4, v5, v6, v7);
  v14 = objc_msgSend_copy(v8, v9, v10, v11, v12, v13);

  os_unfair_lock_unlock(&self->_lock);

  return v14;
}

- (void)connectToDaemon
{
  os_unfair_lock_lock(&self->_lock);
  v8 = objc_msgSend_daemonConnection(self, v3, v4, v5, v6, v7);

  if (!v8)
  {
    v14 = objc_msgSend_sharedController(MEMORY[0x277D18D68], v9, v10, v11, v12, v13);
    v15 = objc_opt_class();
    v16 = NSStringFromClass(v15);
    v22 = objc_msgSend_multiplexedConnectionWithLabel_capabilities_context_(v14, v17, v18, v19, v20, v21, v16, 0x8000, 0);
    objc_msgSend_setDaemonConnection_(self, v23, v24, v25, v26, v27, v22);

    v33 = objc_msgSend_daemonConnection(self, v28, v29, v30, v31, v32);
    v38[0] = MEMORY[0x277D85DD0];
    v38[1] = 3221225472;
    v38[2] = sub_23BD1D658;
    v38[3] = &unk_278B93128;
    v38[4] = self;
    objc_msgSend_connectWithCompletion_(v33, v34, COERCE_DOUBLE(3221225472), v35, v36, v37, v38);
  }

  os_unfair_lock_unlock(&self->_lock);
}

- (void)disconnectFromDaemon
{
  os_unfair_lock_lock(&self->_lock);
  v8 = objc_msgSend_daemonConnection(self, v3, v4, v5, v6, v7);
  objc_msgSend_invalidate(v8, v9, v10, v11, v12, v13);

  objc_msgSend_setDaemonConnection_(self, v14, v15, v16, v17, v18, 0);
  os_unfair_lock_unlock(&self->_lock);
  v24 = objc_msgSend_log(self, v19, v20, v21, v22, v23);
  if (os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG))
  {
    sub_23BD20D14();
  }
}

- (void)startUnreadCountObservation
{
  v7 = objc_msgSend_observationToken(self, a2, v2, v3, v4, v5);

  if (!v7)
  {
    v13 = objc_msgSend_log(self, v8, v9, v10, v11, v12);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
    {
      sub_23BD20D48();
    }

    objc_initWeak(&location, self);
    v19 = objc_msgSend_defaultCenter(MEMORY[0x277CCAB98], v14, v15, v16, v17, v18);
    v25 = objc_msgSend_mainQueue(MEMORY[0x277CCABD8], v20, v21, v22, v23, v24);
    v26 = *MEMORY[0x277D18CC8];
    v38 = MEMORY[0x277D85DD0];
    v39 = 3221225472;
    v40 = sub_23BD1D960;
    v41 = &unk_278B93178;
    objc_copyWeak(&v42, &location);
    v32 = objc_msgSend_addObserverForName_object_queue_usingBlock_(v19, v27, v28, v29, v30, v31, v26, 0, v25, &v38);
    objc_msgSend_setObservationToken_(self, v33, v34, v35, v36, v37, v32, v38, v39, v40, v41);

    objc_destroyWeak(&v42);
    objc_destroyWeak(&location);
  }
}

- (void)notifySubscribersAboutNewUnreadCount:(id)a3
{
  v49 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v10 = objc_msgSend_sharedRegistry(MEMORY[0x277D18D40], v5, v6, v7, v8, v9);
  v16 = objc_msgSend_unreadCount(v10, v11, v12, v13, v14, v15);

  v42 = 0u;
  v43 = 0u;
  v40 = 0u;
  v41 = 0u;
  v17 = v4;
  v23 = objc_msgSend_countByEnumeratingWithState_objects_count_(v17, v18, v19, v20, v21, v22, &v40, v48, 16);
  if (v23)
  {
    v29 = v23;
    v30 = *v41;
    *&v25 = 138543618;
    v39 = v25;
    do
    {
      for (i = 0; i != v29; ++i)
      {
        if (*v41 != v30)
        {
          objc_enumerationMutation(v17);
        }

        v32 = *(*(&v40 + 1) + 8 * i);
        objc_msgSend_unreadCountDidChange_(v32, v24, *&v25, v26, v27, v28, v16, v39, v40);
        v38 = objc_msgSend_log(self, v33, v34, v35, v36, v37);
        if (os_log_type_enabled(v38, OS_LOG_TYPE_DEBUG))
        {
          *buf = v39;
          v45 = v32;
          v46 = 2050;
          v47 = v16;
          _os_log_debug_impl(&dword_23BD1C000, v38, OS_LOG_TYPE_DEBUG, "notifed subscriber %{public}@ of unread count: %{public}lu", buf, 0x16u);
        }
      }

      v29 = objc_msgSend_countByEnumeratingWithState_objects_count_(v17, v24, *&v25, v26, v27, v28, &v40, v48, 16);
    }

    while (v29);
  }
}

- (void)stopUnreadCountObservation
{
  v7 = objc_msgSend_log(self, a2, v2, v3, v4, v5);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    sub_23BD20D7C();
  }

  v13 = objc_msgSend_defaultCenter(MEMORY[0x277CCAB98], v8, v9, v10, v11, v12);
  v19 = objc_msgSend_observationToken(self, v14, v15, v16, v17, v18);
  objc_msgSend_removeObserver_(v13, v20, v21, v22, v23, v24, v19);

  objc_msgSend_setObservationToken_(self, v25, v26, v27, v28, v29, 0);
}

- (id)urlForLastMessage
{
  v7 = objc_msgSend_URLWithString_(MEMORY[0x277CBEBC0], a2, v2, v3, v4, v5, @"com.apple.MobileSMS");
  v13 = objc_msgSend_sharedRegistry(MEMORY[0x277D18D40], v8, v9, v10, v11, v12);
  v19 = objc_msgSend_numberOfExistingChats(v13, v14, v15, v16, v17, v18);

  if (v19)
  {
    v51 = 0;
    v52 = &v51;
    v53 = 0x3032000000;
    v54 = sub_23BD1DDE4;
    v55 = sub_23BD1DDF4;
    v56 = 0;
    v25 = objc_msgSend_sharedRegistry(MEMORY[0x277D18D40], v20, COERCE_DOUBLE(0x3032000000), v22, v23, v24);
    v50[0] = MEMORY[0x277D85DD0];
    v50[1] = 3221225472;
    v50[2] = sub_23BD1DDFC;
    v50[3] = &unk_278B931A0;
    v50[4] = &v51;
    objc_msgSend__loadChatsFilteredUsingPredicate_lastMessageOlderThan_limit_waitForReply_completionHandler_(v25, v26, COERCE_DOUBLE(3221225472), v27, v28, v29, 0, 0, 1, 1, v50);

    v35 = v52[5];
    if (v35 && objc_msgSend_unreadMessageCount(v35, v30, v31, v32, v33, v34))
    {
      v41 = objc_msgSend_sharedRegistry(MEMORY[0x277D18D40], v36, v37, v38, v39, v40);
      v47 = objc_msgSend_messagesURLWithChat_orHandles_withMessageText_(v41, v42, v43, v44, v45, v46, v52[5], 0, 0);

      v7 = v47;
    }

    _Block_object_dispose(&v51, 8);
  }

  else
  {
    v48 = objc_msgSend_log(self, v20, v21, v22, v23, v24);
    if (os_log_type_enabled(v48, OS_LOG_TYPE_DEBUG))
    {
      sub_23BD20DB0();
    }
  }

  return v7;
}

@end