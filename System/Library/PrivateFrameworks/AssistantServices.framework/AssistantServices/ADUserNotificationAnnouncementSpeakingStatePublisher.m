@interface ADUserNotificationAnnouncementSpeakingStatePublisher
+ (BOOL)supportsPublishingArrivalForAceObject:(id)a3;
+ (id)_notificationIdentifiersForObject:(id)a3;
+ (id)sharedPublisher;
- (BOOL)_publishStateChanged:(int64_t)a3 forIdentifiers:(id)a4;
- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4;
- (id)_initWithQueue:(id)a3;
- (void)_invalidateConnection;
- (void)_publishCancelAndRemoveAllObjectsForReason:(id)a3;
- (void)_publishFinishedAndRemoveAllObjectsForReason:(id)a3;
- (void)_publishObjectHasArrived:(id)a3;
- (void)beginObserving;
- (void)connectionInterrupted;
- (void)connectionInvalidated;
- (void)dealloc;
- (void)publishObjectHasArrived:(id)a3;
- (void)requestLifecycleObserver:(id)a3 requestDidEndWithInfo:(id)a4 origin:(int64_t)a5 client:(id)a6;
- (void)requestLifecycleObserver:(id)a3 requestWasCancelledWithInfo:(id)a4 forReason:(int64_t)a5 origin:(int64_t)a6 client:(id)a7 successorInfo:(id)a8;
- (void)requestLifecycleObserver:(id)a3 requestWillBeginWithInfo:(id)a4 origin:(int64_t)a5 client:(id)a6;
@end

@implementation ADUserNotificationAnnouncementSpeakingStatePublisher

- (void)_invalidateConnection
{
  [(NSXPCConnection *)self->_connection setExportedObject:0];
  [(NSXPCConnection *)self->_connection invalidate];
  connection = self->_connection;
  self->_connection = 0;
}

- (void)connectionInvalidated
{
  v3 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    *buf = 136315138;
    v7 = "[ADUserNotificationAnnouncementSpeakingStatePublisher connectionInvalidated]";
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "%s ", buf, 0xCu);
  }

  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10009D408;
  block[3] = &unk_10051DFE8;
  block[4] = self;
  dispatch_async(queue, block);
}

- (void)connectionInterrupted
{
  v3 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    *buf = 136315138;
    v7 = "[ADUserNotificationAnnouncementSpeakingStatePublisher connectionInterrupted]";
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "%s ", buf, 0xCu);
  }

  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10009D510;
  block[3] = &unk_10051DFE8;
  block[4] = self;
  dispatch_async(queue, block);
}

- (void)beginObserving
{
  v2 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    v3 = 136315138;
    v4 = "[ADUserNotificationAnnouncementSpeakingStatePublisher beginObserving]";
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "%s Beginning observations.", &v3, 0xCu);
  }
}

- (void)_publishFinishedAndRemoveAllObjectsForReason:(id)a3
{
  v4 = a3;
  if ([(NSArray *)self->_currentlyAnnouncingNotificationIdentifiers count])
  {
    v5 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
    {
      v7 = 136315394;
      v8 = "[ADUserNotificationAnnouncementSpeakingStatePublisher _publishFinishedAndRemoveAllObjectsForReason:]";
      v9 = 2112;
      v10 = v4;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "%s Request ended for reason %@. Sending finished speaking state.", &v7, 0x16u);
    }

    [(ADUserNotificationAnnouncementSpeakingStatePublisher *)self _publishStateChanged:2 forIdentifiers:self->_currentlyAnnouncingNotificationIdentifiers];
    currentlyAnnouncingNotificationIdentifiers = self->_currentlyAnnouncingNotificationIdentifiers;
    self->_currentlyAnnouncingNotificationIdentifiers = 0;
  }
}

- (void)_publishCancelAndRemoveAllObjectsForReason:(id)a3
{
  v4 = a3;
  if ([(NSArray *)self->_currentlyAnnouncingNotificationIdentifiers count])
  {
    v5 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
    {
      v7 = 136315394;
      v8 = "[ADUserNotificationAnnouncementSpeakingStatePublisher _publishCancelAndRemoveAllObjectsForReason:]";
      v9 = 2112;
      v10 = v4;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "%s Request cancelled for reason %@. Sending cancelled speaking state.", &v7, 0x16u);
    }

    [(ADUserNotificationAnnouncementSpeakingStatePublisher *)self _publishStateChanged:3 forIdentifiers:self->_currentlyAnnouncingNotificationIdentifiers];
    currentlyAnnouncingNotificationIdentifiers = self->_currentlyAnnouncingNotificationIdentifiers;
    self->_currentlyAnnouncingNotificationIdentifiers = 0;
  }
}

- (BOOL)_publishStateChanged:(int64_t)a3 forIdentifiers:(id)a4
{
  v6 = a4;
  if (![v6 count])
  {
    v13 = AFSiriLogContextDaemon;
    if (!os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR))
    {
LABEL_9:
      v12 = 0;
      goto LABEL_10;
    }

    v18 = 136315138;
    v19 = "[ADUserNotificationAnnouncementSpeakingStatePublisher _publishStateChanged:forIdentifiers:]";
    v14 = "%s Cannot publish notification, no identifiers exist.";
    v15 = v13;
    v16 = 12;
LABEL_12:
    _os_log_error_impl(&_mh_execute_header, v15, OS_LOG_TYPE_ERROR, v14, &v18, v16);
    goto LABEL_9;
  }

  IsValidAndSpecified = AFSiriUserNotificationAnnouncementSpeakingStateGetIsValidAndSpecified();
  v8 = AFSiriLogContextDaemon;
  if ((IsValidAndSpecified & 1) == 0)
  {
    if (!os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_9;
    }

    v18 = 136315394;
    v19 = "[ADUserNotificationAnnouncementSpeakingStatePublisher _publishStateChanged:forIdentifiers:]";
    v20 = 2048;
    v21 = a3;
    v14 = "%s Cannot publish notification, invalid state %li";
    v15 = v8;
    v16 = 22;
    goto LABEL_12;
  }

  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    v9 = v8;
    v10 = AFSiriUserNotificationAnnouncementSpeakingStateGetName();
    v18 = 136315650;
    v19 = "[ADUserNotificationAnnouncementSpeakingStatePublisher _publishStateChanged:forIdentifiers:]";
    v20 = 2112;
    v21 = v10;
    v22 = 2112;
    v23 = v6;
  }

  v11 = [(ADUserNotificationAnnouncementSpeakingStatePublisher *)self connectionProxy];
  [v11 speakingStateDidChange:a3 forIdentifiers:v6];

  v12 = 1;
LABEL_10:

  return v12;
}

- (void)_publishObjectHasArrived:(id)a3
{
  v4 = a3;
  v5 = [objc_opt_class() _notificationIdentifiersForObject:v4];
  if ([v5 count])
  {
    if (![(NSArray *)self->_currentlyAnnouncingNotificationIdentifiers isEqualToArray:v5]&& [(NSArray *)self->_currentlyAnnouncingNotificationIdentifiers count])
    {
      [(ADUserNotificationAnnouncementSpeakingStatePublisher *)self _publishFinishedAndRemoveAllObjectsForReason:@"New object arrived and we are currently announcing."];
LABEL_8:
      v7 = [v5 copy];
      currentlyAnnouncingNotificationIdentifiers = self->_currentlyAnnouncingNotificationIdentifiers;
      self->_currentlyAnnouncingNotificationIdentifiers = v7;

      v21 = 0u;
      v22 = 0u;
      v19 = 0u;
      v20 = 0u;
      v9 = v5;
      v10 = [v9 countByEnumeratingWithState:&v19 objects:v23 count:16];
      if (v10)
      {
        v11 = v10;
        v12 = *v20;
        do
        {
          v13 = 0;
          do
          {
            if (*v20 != v12)
            {
              objc_enumerationMutation(v9);
            }

            v14 = *(*(&v19 + 1) + 8 * v13);
            v15 = +[ADExternalNotificationRequestHandler sharedNotificationRequestHandler];
            [v15 markNotificationAsReadWithIdentifer:v14];

            v13 = v13 + 1;
          }

          while (v11 != v13);
          v11 = [v9 countByEnumeratingWithState:&v19 objects:v23 count:16];
        }

        while (v11);
      }

      [(ADUserNotificationAnnouncementSpeakingStatePublisher *)self _publishStateChanged:1 forIdentifiers:v9];
      goto LABEL_18;
    }

    if (![(NSArray *)self->_currentlyAnnouncingNotificationIdentifiers isEqualToArray:v5])
    {
      goto LABEL_8;
    }

    v6 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
    {
      *buf = 136315138;
      v25 = "[ADUserNotificationAnnouncementSpeakingStatePublisher _publishObjectHasArrived:]";
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "%s Received identifiers that we're already announcing. This is most likely a hint. Ignoring publishing.", buf, 0xCu);
    }
  }

  else
  {
    v16 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR))
    {
      v17 = v16;
      v18 = [v4 aceId];
      *buf = 136315394;
      v25 = "[ADUserNotificationAnnouncementSpeakingStatePublisher _publishObjectHasArrived:]";
      v26 = 2112;
      v27 = v18;
      _os_log_error_impl(&_mh_execute_header, v17, OS_LOG_TYPE_ERROR, "%s Not publishing arrival, no identifiers exist for %@. Ignoring.", buf, 0x16u);
    }
  }

LABEL_18:
}

- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4
{
  v5 = a4;
  HasEntitlement = AFConnectionHasEntitlement();
  if (HasEntitlement)
  {
    queue = self->_queue;
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_10009DE64;
    v10[3] = &unk_10051E010;
    v10[4] = self;
    v11 = v5;
    dispatch_async(queue, v10);
  }

  else
  {
    v8 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v13 = "[ADUserNotificationAnnouncementSpeakingStatePublisher listener:shouldAcceptNewConnection:]";
      v14 = 2112;
      v15 = v5;
      _os_log_error_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "%s %@ Announcement Speaking State connection does not have required entitlements.", buf, 0x16u);
    }
  }

  return HasEntitlement;
}

- (void)requestLifecycleObserver:(id)a3 requestWasCancelledWithInfo:(id)a4 forReason:(int64_t)a5 origin:(int64_t)a6 client:(id)a7 successorInfo:(id)a8
{
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10009E1C0;
  block[3] = &unk_10051DFE8;
  block[4] = self;
  dispatch_async(queue, block);
}

- (void)requestLifecycleObserver:(id)a3 requestDidEndWithInfo:(id)a4 origin:(int64_t)a5 client:(id)a6
{
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10009E244;
  block[3] = &unk_10051DFE8;
  block[4] = self;
  dispatch_async(queue, block);
}

- (void)requestLifecycleObserver:(id)a3 requestWillBeginWithInfo:(id)a4 origin:(int64_t)a5 client:(id)a6
{
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10009E2C8;
  block[3] = &unk_10051DFE8;
  block[4] = self;
  dispatch_async(queue, block);
}

- (void)publishObjectHasArrived:(id)a3
{
  v4 = a3;
  queue = self->_queue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10009E370;
  v7[3] = &unk_10051E010;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(queue, v7);
}

- (void)dealloc
{
  [(ADUserNotificationAnnouncementSpeakingStatePublisher *)self _publishCancelAndRemoveAllObjectsForReason:@"Dealloc called."];
  [(ADUserNotificationAnnouncementSpeakingStatePublisher *)self _invalidateConnection];
  v3.receiver = self;
  v3.super_class = ADUserNotificationAnnouncementSpeakingStatePublisher;
  [(ADUserNotificationAnnouncementSpeakingStatePublisher *)&v3 dealloc];
}

- (id)_initWithQueue:(id)a3
{
  v5 = a3;
  v13.receiver = self;
  v13.super_class = ADUserNotificationAnnouncementSpeakingStatePublisher;
  v6 = [(ADUserNotificationAnnouncementSpeakingStatePublisher *)&v13 init];
  p_isa = &v6->super.isa;
  if (v6)
  {
    objc_storeStrong(&v6->_queue, a3);
    v8 = +[ADRequestLifecycleObserver sharedObserver];
    [v8 addListener:p_isa];

    v9 = [NSXPCListener alloc];
    v10 = [v9 initWithMachServiceName:kAssistantAnnouncementSpeakingStateServiceName];
    v11 = p_isa[4];
    p_isa[4] = v10;

    [p_isa[4] setDelegate:p_isa];
    [p_isa[4] resume];
  }

  return p_isa;
}

+ (id)_notificationIdentifiersForObject:(id)a3
{
  v3 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()))
  {
    v4 = [v3 context];
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v13 = [v3 configuration];
      v4 = [v13 context];
    }

    else
    {
      v4 = 0;
    }
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [v4 identifier];
    v6 = [v5 scheme];
    v7 = AFSiriUserNotificationAnnounceScheme;
    v8 = [v6 isEqualToString:AFSiriUserNotificationAnnounceScheme];

    if (v8)
    {
      v9 = [v5 absoluteString];
      v10 = [NSString stringWithFormat:@"%@://", v7];
      v11 = [v9 substringFromIndex:{objc_msgSend(v10, "length")}];
      v12 = [v11 componentsSeparatedByString:@"&"];
    }

    else
    {
      v12 = 0;
    }
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

+ (BOOL)supportsPublishingArrivalForAceObject:(id)a3
{
  v4 = a3;
  v5 = [v4 aceId];
  if ([v5 length])
  {
    v6 = [a1 _notificationIdentifiersForObject:v4];
    v7 = [v6 count] != 0;
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

+ (id)sharedPublisher
{
  if (qword_10058FED8 != -1)
  {
    dispatch_once(&qword_10058FED8, &stru_1005100C0);
  }

  v3 = qword_10058FEE0;

  return v3;
}

@end