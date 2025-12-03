@interface ADExternalNotificationRequestQueue
- (ADExternalNotificationRequestQueue)init;
- (BOOL)_isAnnounceNotificationRequest:(id)request equalToRequest:(id)toRequest;
- (BOOL)removeAnnouncementRequest:(id)request;
- (id)_identifierForNotificationRequest:(id)request;
- (id)_lastRequestIdentifierInQueue;
- (id)nextAnnouncementRequest;
- (id)notificationRequestForNotificationIdentifierInAnnouncementQueue:(id)queue;
- (int64_t)_lastRequestAnnouncementTypeInQueue;
- (unint64_t)_numberOfNotificationRequests;
- (unint64_t)_numberOfThreads;
- (void)clearRequestQueue;
- (void)completeCurrentRequestWithSuccess:(BOOL)success forReason:(int64_t)reason shouldEmitInstrumentationEvent:(BOOL)event;
- (void)deliverSummary:(id)summary forNotificationWithIdentifier:(id)identifier completion:(id)completion;
- (void)enqueueAnnouncementRequest:(id)request;
- (void)fetchUnreadNotificationsFromThreadAfterNotificationWithID:(id)d completion:(id)completion;
- (void)markNotificationAsReadWithIdentifer:(id)identifer;
@end

@implementation ADExternalNotificationRequestQueue

- (unint64_t)_numberOfNotificationRequests
{
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  objectEnumerator = [(NSMutableDictionary *)self->_queuedRequestMap objectEnumerator];
  v3 = [objectEnumerator countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = 0;
    v6 = *v10;
    do
    {
      for (i = 0; i != v4; i = i + 1)
      {
        if (*v10 != v6)
        {
          objc_enumerationMutation(objectEnumerator);
        }

        v5 += [*(*(&v9 + 1) + 8 * i) count];
      }

      v4 = [objectEnumerator countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v4);
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (unint64_t)_numberOfThreads
{
  allKeys = [(NSMutableDictionary *)self->_queuedRequestMap allKeys];
  v3 = [allKeys count];

  return v3;
}

- (void)markNotificationAsReadWithIdentifer:(id)identifer
{
  identiferCopy = identifer;
  frontObject = [(AFQueue *)self->_queuedNotificationRequestIdentifiers frontObject];
  if (frontObject)
  {
    v22 = 0u;
    v23 = 0u;
    v20 = 0u;
    v21 = 0u;
    v19 = frontObject;
    v6 = [(NSMutableDictionary *)self->_queuedRequestMap objectForKey:frontObject];
    v7 = [v6 countByEnumeratingWithState:&v20 objects:v28 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v21;
      do
      {
        for (i = 0; i != v8; i = i + 1)
        {
          if (*v21 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v11 = *(*(&v20 + 1) + 8 * i);
          notification = [v11 notification];
          request = [notification request];

          identifier = [request identifier];
          v15 = [identifier isEqualToString:identiferCopy];

          if (v15)
          {
            v16 = AFSiriLogContextDaemon;
            if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_DEBUG))
            {
              *buf = 136315394;
              v25 = "[ADExternalNotificationRequestQueue markNotificationAsReadWithIdentifer:]";
              v26 = 2112;
              v27 = identiferCopy;
              _os_log_debug_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEBUG, "%s found request with identifier: %@ in request queue", buf, 0x16u);
            }

            completion = [v11 completion];

            if (completion)
            {
              [v11 completeRequestWithSuccess:1 forReason:1 shouldEmitInstrumentationEvent:1];
            }
          }
        }

        v8 = [v6 countByEnumeratingWithState:&v20 objects:v28 count:16];
      }

      while (v8);
    }

    frontObject = v19;
  }

  else
  {
    v18 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315138;
      v25 = "[ADExternalNotificationRequestQueue markNotificationAsReadWithIdentifer:]";
      _os_log_error_impl(&_mh_execute_header, v18, OS_LOG_TYPE_ERROR, "%s No active announcement request", buf, 0xCu);
    }
  }
}

- (void)fetchUnreadNotificationsFromThreadAfterNotificationWithID:(id)d completion:(id)completion
{
  dCopy = d;
  completionCopy = completion;
  v35 = objc_alloc_init(NSMutableArray);
  frontObject = [(AFQueue *)self->_queuedNotificationRequestIdentifiers frontObject];
  v9 = frontObject;
  if (frontObject)
  {
    v33 = frontObject;
    v34 = completionCopy;
    v39 = 0u;
    v40 = 0u;
    v37 = 0u;
    v38 = 0u;
    v10 = [(NSMutableDictionary *)self->_queuedRequestMap objectForKey:frontObject];
    v11 = [v10 countByEnumeratingWithState:&v37 objects:v45 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = 0;
      v14 = *v38;
      do
      {
        v15 = 0;
        v36 = v12;
        do
        {
          if (*v38 != v14)
          {
            objc_enumerationMutation(v10);
          }

          v16 = *(*(&v37 + 1) + 8 * v15);
          notification = [v16 notification];
          request = [notification request];

          identifier = [request identifier];
          v20 = [identifier isEqualToString:dCopy];

          if (v20)
          {
            v21 = AFSiriLogContextDaemon;
            if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_DEBUG))
            {
              *buf = 136315394;
              v42 = "[ADExternalNotificationRequestQueue fetchUnreadNotificationsFromThreadAfterNotificationWithID:completion:]";
              v43 = 2112;
              v44 = dCopy;
              _os_log_debug_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEBUG, "%s found request with identifier: %@ in request queue", buf, 0x16u);
            }

            v13 = 1;
          }

          else if (v13)
          {
            v13 = 1;
            [v16 completeRequestWithSuccess:1 forReason:1 shouldEmitInstrumentationEvent:1];
            v22 = objc_alloc_init(AFBulletin);
            notification2 = [v16 notification];
            [v16 appID];
            v24 = v14;
            v25 = dCopy;
            v27 = v26 = v10;
            [v22 setNotification:notification2 fromSourceApp:v27];

            [v22 setAnnouncementType:{objc_msgSend(v16, "announcementType")}];
            summary = [v16 summary];
            v28Summary = [summary summary];
            [v22 setSummary:v28Summary];

            notification3 = [v16 notification];
            request2 = [notification3 request];
            [v22 setNotificationRequest:request2];

            v10 = v26;
            dCopy = v25;
            v14 = v24;
            v12 = v36;

            [v35 addObject:v22];
          }

          else
          {
            v13 = 0;
          }

          v15 = v15 + 1;
        }

        while (v12 != v15);
        v12 = [v10 countByEnumeratingWithState:&v37 objects:v45 count:16];
      }

      while (v12);
    }

    v9 = v33;
    completionCopy = v34;
  }

  else
  {
    v32 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136315138;
      v42 = "[ADExternalNotificationRequestQueue fetchUnreadNotificationsFromThreadAfterNotificationWithID:completion:]";
      _os_log_debug_impl(&_mh_execute_header, v32, OS_LOG_TYPE_DEBUG, "%s No notification thread found in queue", buf, 0xCu);
    }
  }

  completionCopy[2](completionCopy, v35);
}

- (BOOL)removeAnnouncementRequest:(id)request
{
  requestCopy = request;
  v5 = requestCopy;
  if (!requestCopy)
  {
LABEL_10:
    v11 = 0;
    goto LABEL_14;
  }

  if (self->_currentRequest == requestCopy)
  {
    v12 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR))
    {
      LODWORD(buf) = 136315138;
      *(&buf + 4) = "[ADExternalNotificationRequestQueue removeAnnouncementRequest:]";
      _os_log_error_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "%s Current request is equal to request we are trying to remove. Ignoring as this is not supported.", &buf, 0xCu);
    }

    goto LABEL_10;
  }

  completion = [(ADAnnouncementRequest *)requestCopy completion];

  if (!completion)
  {
    v13 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_DEBUG))
    {
      LODWORD(buf) = 136315138;
      *(&buf + 4) = "[ADExternalNotificationRequestQueue removeAnnouncementRequest:]";
      _os_log_debug_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEBUG, "%s Request to be removed has no completion, meaning we've already completed this request. Ignoring as this is not supported.", &buf, 0xCu);
    }

    goto LABEL_10;
  }

  v7 = [(ADExternalNotificationRequestQueue *)self _identifierForNotificationRequest:v5];
  v8 = [(NSMutableDictionary *)self->_queuedRequestMap objectForKey:v7];
  *&buf = 0;
  *(&buf + 1) = &buf;
  v24 = 0x2020000000;
  v25 = 0x7FFFFFFFFFFFFFFFLL;
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_100167830;
  v16[3] = &unk_100513A80;
  v16[4] = self;
  v9 = v5;
  v17 = v9;
  p_buf = &buf;
  [v8 enumerateObjectsUsingBlock:v16];
  v10 = *(*(&buf + 1) + 24);
  v11 = v10 != 0x7FFFFFFFFFFFFFFFLL;
  if (v10 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v14 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_DEBUG))
    {
      *v19 = 136315394;
      v20 = "[ADExternalNotificationRequestQueue removeAnnouncementRequest:]";
      v21 = 2112;
      v22 = v9;
      _os_log_debug_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEBUG, "%s Couldn't find request to remove: %@", v19, 0x16u);
    }
  }

  else
  {
    [v8 removeObjectAtIndex:?];
    [(ADAnnouncementRequest *)v9 completeRequestWithSuccess:0 forReason:6 shouldEmitInstrumentationEvent:1];
    [(NSMutableDictionary *)self->_queuedRequestMap setObject:v8 forKey:v7];
  }

  _Block_object_dispose(&buf, 8);
LABEL_14:

  return v11;
}

- (id)notificationRequestForNotificationIdentifierInAnnouncementQueue:(id)queue
{
  queueCopy = queue;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = sub_100167A6C;
  v16 = sub_100167A7C;
  v17 = 0;
  queuedRequestMap = self->_queuedRequestMap;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_100167A84;
  v9[3] = &unk_100513A58;
  v6 = queueCopy;
  v10 = v6;
  v11 = &v12;
  [(NSMutableDictionary *)queuedRequestMap enumerateKeysAndObjectsUsingBlock:v9];
  v7 = v13[5];

  _Block_object_dispose(&v12, 8);

  return v7;
}

- (BOOL)_isAnnounceNotificationRequest:(id)request equalToRequest:(id)toRequest
{
  toRequestCopy = toRequest;
  requestCopy = request;
  notification = [requestCopy notification];
  request = [notification request];
  identifier = [request identifier];
  notification2 = [toRequestCopy notification];
  request2 = [notification2 request];
  identifier2 = [request2 identifier];
  v13 = [identifier isEqualToString:identifier2];

  appID = [requestCopy appID];
  appID2 = [toRequestCopy appID];
  v16 = [appID isEqualToString:appID2];

  platform = [requestCopy platform];
  platform2 = [toRequestCopy platform];

  if (!v13)
  {
    return 0;
  }

  if (platform == platform2)
  {
    return v16;
  }

  return 0;
}

- (void)clearRequestQueue
{
  currentRequest = self->_currentRequest;
  self->_currentRequest = 0;

  v4 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315138;
    v19 = "[ADExternalNotificationRequestQueue clearRequestQueue]";
    _os_log_debug_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEBUG, "%s clearing request queue", buf, 0xCu);
  }

  [(AFWatchdogTimer *)self->_maxTimeEnqueueableTimer cancel];
  [(AFWatchdogTimer *)self->_resettingBurstTimer cancel];
  maxTimeEnqueueableTimer = self->_maxTimeEnqueueableTimer;
  self->_maxTimeEnqueueableTimer = 0;

  resettingBurstTimer = self->_resettingBurstTimer;
  self->_resettingBurstTimer = 0;

  while ([(AFQueue *)self->_queuedNotificationRequestIdentifiers count])
  {
    dequeueObject = [(AFQueue *)self->_queuedNotificationRequestIdentifiers dequeueObject];
    v13 = 0u;
    v14 = 0u;
    v15 = 0u;
    v16 = 0u;
    v8 = [(NSMutableDictionary *)self->_queuedRequestMap objectForKey:dequeueObject, 0];
    v9 = [v8 countByEnumeratingWithState:&v13 objects:v17 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v14;
      do
      {
        v12 = 0;
        do
        {
          if (*v14 != v11)
          {
            objc_enumerationMutation(v8);
          }

          [*(*(&v13 + 1) + 8 * v12) completeRequestWithSuccess:0 forReason:9 shouldEmitInstrumentationEvent:0];
          v12 = v12 + 1;
        }

        while (v10 != v12);
        v10 = [v8 countByEnumeratingWithState:&v13 objects:v17 count:16];
      }

      while (v10);
    }
  }

  [(NSMutableDictionary *)self->_queuedRequestMap removeAllObjects];
}

- (void)completeCurrentRequestWithSuccess:(BOOL)success forReason:(int64_t)reason shouldEmitInstrumentationEvent:(BOOL)event
{
  if (self->_currentRequest)
  {
    eventCopy = event;
    successCopy = success;
    [(AFWatchdogTimer *)self->_maxTimeEnqueueableTimer cancel];
    [(AFWatchdogTimer *)self->_resettingBurstTimer cancel];
    v9 = [(ADExternalNotificationRequestQueue *)self _identifierForNotificationRequest:self->_currentRequest];
    v10 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_DEBUG))
    {
      v17 = v10;
      if (reason > 0x10)
      {
        v18 = @"(unknown)";
      }

      else
      {
        v18 = *(&off_100514790 + reason);
      }

      v19 = v18;
      *buf = 136315906;
      v26 = "[ADExternalNotificationRequestQueue completeCurrentRequestWithSuccess:forReason:shouldEmitInstrumentationEvent:]";
      v27 = 2112;
      v28 = v9;
      v29 = 1024;
      v30 = successCopy;
      v31 = 2112;
      v32 = v19;
      _os_log_debug_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEBUG, "%s completing request with id: %@ with success: %d for reason: %@", buf, 0x26u);
    }

    [(ADAnnouncementRequest *)self->_currentRequest completeRequestWithSuccess:successCopy forReason:reason shouldEmitInstrumentationEvent:eventCopy];
    if (!successCopy)
    {
      v11 = AFSiriLogContextDaemon;
      if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_DEBUG))
      {
        *buf = 136315138;
        v26 = "[ADExternalNotificationRequestQueue completeCurrentRequestWithSuccess:forReason:shouldEmitInstrumentationEvent:]";
        _os_log_debug_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEBUG, "%s request failed, mark all requests in thread with failure", buf, 0xCu);
      }

      v22 = 0u;
      v23 = 0u;
      v20 = 0u;
      v21 = 0u;
      v12 = [(NSMutableDictionary *)self->_queuedRequestMap objectForKey:v9, 0];
      v13 = [v12 countByEnumeratingWithState:&v20 objects:v24 count:16];
      if (v13)
      {
        v14 = v13;
        v15 = *v21;
        do
        {
          v16 = 0;
          do
          {
            if (*v21 != v15)
            {
              objc_enumerationMutation(v12);
            }

            [*(*(&v20 + 1) + 8 * v16) completeRequestWithSuccess:0 forReason:reason shouldEmitInstrumentationEvent:eventCopy];
            v16 = v16 + 1;
          }

          while (v14 != v16);
          v14 = [v12 countByEnumeratingWithState:&v20 objects:v24 count:16];
        }

        while (v14);
      }
    }
  }
}

- (id)nextAnnouncementRequest
{
  if (self->_currentRequest)
  {
    frontObject = [(AFQueue *)self->_queuedNotificationRequestIdentifiers frontObject];
    v4 = objc_alloc_init(NSMutableArray);
    v31 = 0u;
    v32 = 0u;
    v33 = 0u;
    v34 = 0u;
    v5 = [(NSMutableDictionary *)self->_queuedRequestMap objectForKey:frontObject, 0];
    v6 = [v5 countByEnumeratingWithState:&v31 objects:v39 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v32;
      do
      {
        for (i = 0; i != v7; i = i + 1)
        {
          if (*v32 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v10 = *(*(&v31 + 1) + 8 * i);
          completion = [v10 completion];

          if (completion)
          {
            [v4 addObject:v10];
          }
        }

        v7 = [v5 countByEnumeratingWithState:&v31 objects:v39 count:16];
      }

      while (v7);
    }

    if ([v4 count])
    {
      v12 = AFSiriLogContextDaemon;
      if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_DEBUG))
      {
        v29 = v12;
        v30 = [v4 count];
        *buf = 136315394;
        v36 = "[ADExternalNotificationRequestQueue nextAnnouncementRequest]";
        v37 = 2048;
        v38 = v30;
        _os_log_debug_impl(&_mh_execute_header, v29, OS_LOG_TYPE_DEBUG, "%s %lu unread notifications, starting request at first unread notification", buf, 0x16u);
      }

      [(NSMutableDictionary *)self->_queuedRequestMap setObject:v4 forKey:frontObject];
      goto LABEL_23;
    }

    dequeueObject = [(AFQueue *)self->_queuedNotificationRequestIdentifiers dequeueObject];
    if (dequeueObject)
    {
      [(NSMutableDictionary *)self->_queuedRequestMap removeObjectForKey:dequeueObject];
      v16 = AFSiriLogContextDaemon;
      if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_DEBUG))
      {
        *buf = 136315394;
        v36 = "[ADExternalNotificationRequestQueue nextAnnouncementRequest]";
        v37 = 2112;
        v38 = dequeueObject;
        v17 = "%s removing %@ and associated requests from the request queue";
        v18 = v16;
        v19 = 22;
LABEL_35:
        _os_log_debug_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEBUG, v17, buf, v19);
      }
    }

    else
    {
      v20 = AFSiriLogContextDaemon;
      if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_DEBUG))
      {
        *buf = 136315138;
        v36 = "[ADExternalNotificationRequestQueue nextAnnouncementRequest]";
        v17 = "%s old request queue is empty";
        v18 = v20;
        v19 = 12;
        goto LABEL_35;
      }
    }

LABEL_23:
    _nextRequestIdentifier = [(ADExternalNotificationRequestQueue *)self _nextRequestIdentifier];
    if (_nextRequestIdentifier)
    {
      v22 = [(NSMutableDictionary *)self->_queuedRequestMap objectForKey:_nextRequestIdentifier];
      firstObject = [v22 firstObject];
      currentRequest = self->_currentRequest;
      self->_currentRequest = firstObject;
    }

    else
    {
      v25 = AFSiriLogContextDaemon;
      if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_DEBUG))
      {
        *buf = 136315138;
        v36 = "[ADExternalNotificationRequestQueue nextAnnouncementRequest]";
        _os_log_debug_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEBUG, "%s request queue is empty, returning nil", buf, 0xCu);
      }

      v22 = self->_currentRequest;
      self->_currentRequest = 0;
    }

    v26 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_DEBUG))
    {
      v28 = self->_currentRequest;
      *buf = 136315394;
      v36 = "[ADExternalNotificationRequestQueue nextAnnouncementRequest]";
      v37 = 2112;
      v38 = v28;
      _os_log_debug_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEBUG, "%s next request is %@", buf, 0x16u);
    }

    v14 = self->_currentRequest;

    goto LABEL_31;
  }

  v13 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315138;
    v36 = "[ADExternalNotificationRequestQueue nextAnnouncementRequest]";
    _os_log_debug_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEBUG, "%s no current request, returning nil for next request", buf, 0xCu);
  }

  v14 = 0;
LABEL_31:

  return v14;
}

- (void)deliverSummary:(id)summary forNotificationWithIdentifier:(id)identifier completion:(id)completion
{
  summaryCopy = summary;
  identifierCopy = identifier;
  completionCopy = completion;
  if (completionCopy)
  {
    v11 = [(ADExternalNotificationRequestQueue *)self notificationRequestForNotificationIdentifierInAnnouncementQueue:identifierCopy];
    v12 = AFSiriLogContextDaemon;
    if (v11)
    {
      if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_DEBUG))
      {
        *buf = 136315394;
        v29 = "[ADExternalNotificationRequestQueue deliverSummary:forNotificationWithIdentifier:completion:]";
        v30 = 2112;
        v31 = v11;
        _os_log_debug_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEBUG, "%s Found request, setting summary on %@", buf, 0x16u);
      }

      [(ADAnnounceNotificationRequest *)v11 setSummary:summaryCopy];
      if (self->_currentRequest == v11)
      {
        [(ADExternalNotificationRequestQueue *)self _identifierForNotificationRequest:?];
        v23 = 0u;
        v24 = 0u;
        v25 = 0u;
        v22 = v26 = 0u;
        v13 = [(NSMutableDictionary *)self->_queuedRequestMap objectForKey:?];
        v14 = [v13 countByEnumeratingWithState:&v23 objects:v27 count:16];
        if (v14)
        {
          v15 = v14;
          v16 = *v24;
          while (2)
          {
            for (i = 0; i != v15; i = i + 1)
            {
              if (*v24 != v16)
              {
                objc_enumerationMutation(v13);
              }

              v18 = *(*(&v23 + 1) + 8 * i);
              if ([v18 summaryDecision] == 2)
              {
                summary = [v18 summary];

                if (!summary)
                {
                  v21 = AFSiriLogContextDaemon;
                  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_DEBUG))
                  {
                    *buf = 136315138;
                    v29 = "[ADExternalNotificationRequestQueue deliverSummary:forNotificationWithIdentifier:completion:]";
                    _os_log_debug_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEBUG, "%s There is still a notification pending a summary in this thread, don't announce yet.", buf, 0xCu);
                  }

                  completionCopy[2](completionCopy, 1);

                  goto LABEL_10;
                }
              }
            }

            v15 = [v13 countByEnumeratingWithState:&v23 objects:v27 count:16];
            if (v15)
            {
              continue;
            }

            break;
          }
        }

        v20 = AFSiriLogContextDaemon;
        if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_DEBUG))
        {
          *buf = 136315138;
          v29 = "[ADExternalNotificationRequestQueue deliverSummary:forNotificationWithIdentifier:completion:]";
          _os_log_debug_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEBUG, "%s Summary has been set for last notification pending a summary in thread, announcing it", buf, 0xCu);
        }

        [(AFWatchdogTimer *)self->_resettingBurstTimer cancel];
        [(AFWatchdogTimer *)self->_maxTimeEnqueueableTimer cancel];
        [(ADExternalNotificationRequestQueueObserver *)self->_delegate announcementRequestReadyToBeAnnounced:self->_currentRequest];
      }

      completionCopy[2](completionCopy, 1);
    }

    else
    {
      if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        v29 = "[ADExternalNotificationRequestQueue deliverSummary:forNotificationWithIdentifier:completion:]";
        v30 = 2112;
        v31 = identifierCopy;
        _os_log_error_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "%s Unable to find request with notificationIdentifier: %@", buf, 0x16u);
      }

      completionCopy[2](completionCopy, 0);
    }

LABEL_10:
  }
}

- (void)enqueueAnnouncementRequest:(id)request
{
  requestCopy = request;
  v48[0] = _NSConcreteStackBlock;
  v48[1] = 3221225472;
  v48[2] = sub_100169188;
  v48[3] = &unk_100513A30;
  v48[4] = self;
  v6 = objc_retainBlock(v48);
  v7 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315394;
    v50 = "[ADExternalNotificationRequestQueue enqueueAnnouncementRequest:]";
    v51 = 2112;
    v52 = requestCopy;
    _os_log_debug_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEBUG, "%s enqueueing request: %@", buf, 0x16u);
  }

  v8 = [(ADExternalNotificationRequestQueue *)self _identifierForNotificationRequest:requestCopy];
  if (self->_currentRequest)
  {
    announcementType = [(ADAnnounceNotificationRequest *)self->_currentRequest announcementType];
    announcementType2 = [requestCopy announcementType];
    _lastRequestAnnouncementTypeInQueue = [(ADExternalNotificationRequestQueue *)self _lastRequestAnnouncementTypeInQueue];
    v12 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_DEBUG))
    {
      log = v12;
      v39 = AFSiriUserNotificationAnnouncementTypeGetName();
      v38 = AFSiriUserNotificationAnnouncementTypeGetName();
      v36 = AFSiriUserNotificationAnnouncementTypeGetName();
      *buf = 136315906;
      v50 = "[ADExternalNotificationRequestQueue enqueueAnnouncementRequest:]";
      v51 = 2112;
      v52 = v39;
      v53 = 2112;
      v54 = v38;
      v55 = 2112;
      v56 = v36;
      v37 = v36;
      _os_log_debug_impl(&_mh_execute_header, log, OS_LOG_TYPE_DEBUG, "%s current request type: %@, tail request type: %@, incoming announcement Type: %@", buf, 0x2Au);
    }

    if (announcementType2 == 1)
    {
      _lastRequestIdentifierInQueue = [(NSMutableDictionary *)self->_queuedRequestMap objectForKey:v8];
      v14 = AFSiriLogContextDaemon;
      v15 = os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_DEBUG);
      if (_lastRequestIdentifierInQueue)
      {
        if (v15)
        {
          *buf = 136315394;
          v50 = "[ADExternalNotificationRequestQueue enqueueAnnouncementRequest:]";
          v51 = 2112;
          v52 = v8;
          _os_log_debug_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEBUG, "%s found a thread id match for message announcement, adding it to: %@", buf, 0x16u);
        }

        [_lastRequestIdentifierInQueue addObject:requestCopy];
        v16 = [(ADExternalNotificationRequestQueue *)self _identifierForNotificationRequest:requestCopy];
        v17 = [v8 isEqualToString:v16];

        if (v17 && [requestCopy supportsImmediateBurstMode])
        {
          v18 = AFSiriLogContextDaemon;
          if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_DEBUG))
          {
            *buf = 136315138;
            v50 = "[ADExternalNotificationRequestQueue enqueueAnnouncementRequest:]";
            _os_log_debug_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEBUG, "%s resetting burst timer for queue", buf, 0xCu);
          }

          [(AFWatchdogTimer *)self->_resettingBurstTimer reset];
        }
      }

      else
      {
        if (v15)
        {
          *buf = 136315394;
          v50 = "[ADExternalNotificationRequestQueue enqueueAnnouncementRequest:]";
          v51 = 2112;
          v52 = v8;
          _os_log_debug_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEBUG, "%s No thread id match for message announcement, enqueue request: %@", buf, 0x16u);
        }

        (v6[2])(v6, requestCopy, v8);
      }

      goto LABEL_33;
    }

    if (announcementType2 == announcementType)
    {
      _lastRequestIdentifierInQueue = [(ADExternalNotificationRequestQueue *)self _identifierForNotificationRequest:self->_currentRequest];
      v30 = AFSiriLogContextDaemon;
      if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_DEBUG))
      {
        *buf = 136315394;
        v50 = "[ADExternalNotificationRequestQueue enqueueAnnouncementRequest:]";
        v51 = 2112;
        v52 = _lastRequestIdentifierInQueue;
        _os_log_debug_impl(&_mh_execute_header, v30, OS_LOG_TYPE_DEBUG, "%s same type as current request, adding it to the current request's queue %@", buf, 0x16u);
      }

      v31 = [(NSMutableDictionary *)self->_queuedRequestMap objectForKey:_lastRequestIdentifierInQueue];
      [v31 addObject:requestCopy];
      if ([requestCopy supportsImmediateBurstMode])
      {
        v32 = AFSiriLogContextDaemon;
        if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_DEBUG))
        {
          *buf = 136315138;
          v50 = "[ADExternalNotificationRequestQueue enqueueAnnouncementRequest:]";
          _os_log_debug_impl(&_mh_execute_header, v32, OS_LOG_TYPE_DEBUG, "%s resetting burst timer for queue", buf, 0xCu);
        }

        [(AFWatchdogTimer *)self->_resettingBurstTimer reset];
      }

      goto LABEL_33;
    }

    v33 = AFSiriLogContextDaemon;
    v34 = os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_DEBUG);
    if (announcementType2 == _lastRequestAnnouncementTypeInQueue)
    {
      if (v34)
      {
        *buf = 136315138;
        v50 = "[ADExternalNotificationRequestQueue enqueueAnnouncementRequest:]";
        _os_log_debug_impl(&_mh_execute_header, v33, OS_LOG_TYPE_DEBUG, "%s same type as tail request, adding it to the tail request's queue", buf, 0xCu);
      }

      _lastRequestIdentifierInQueue = [(ADExternalNotificationRequestQueue *)self _lastRequestIdentifierInQueue];
      v35 = [(NSMutableDictionary *)self->_queuedRequestMap objectForKey:_lastRequestIdentifierInQueue];
      [v35 addObject:requestCopy];

      goto LABEL_33;
    }

    if (v34)
    {
      *buf = 136315394;
      v50 = "[ADExternalNotificationRequestQueue enqueueAnnouncementRequest:]";
      v51 = 2112;
      v52 = v8;
      _os_log_debug_impl(&_mh_execute_header, v33, OS_LOG_TYPE_DEBUG, "%s No head or tail match of request type, enqueueing request: %@", buf, 0x16u);
    }

    (v6[2])(v6, requestCopy, v8);
  }

  else
  {
    objc_storeStrong(&self->_currentRequest, request);
    (v6[2])(v6, requestCopy, v8);
    if ([requestCopy supportsImmediateBurstMode])
    {
      v47[0] = _NSConcreteStackBlock;
      v47[1] = 3221225472;
      v47[2] = sub_1001692BC;
      v47[3] = &unk_10051BF08;
      v47[4] = self;
      v19 = [[AFSafetyBlock alloc] initWithBlock:v47];
      v20 = [AFWatchdogTimer alloc];
      timersQueue = self->_timersQueue;
      v44[0] = _NSConcreteStackBlock;
      v44[1] = 3221225472;
      v44[2] = sub_1001693B0;
      v44[3] = &unk_10051E010;
      v22 = requestCopy;
      v45 = v22;
      v23 = v19;
      v46 = v23;
      v24 = [v20 initWithTimeoutInterval:timersQueue onQueue:v44 timeoutHandler:10.0];
      maxTimeEnqueueableTimer = self->_maxTimeEnqueueableTimer;
      self->_maxTimeEnqueueableTimer = v24;

      v26 = [AFWatchdogTimer alloc];
      v27 = self->_timersQueue;
      v41[0] = _NSConcreteStackBlock;
      v41[1] = 3221225472;
      v41[2] = sub_100169478;
      v41[3] = &unk_10051E010;
      v42 = v22;
      v43 = v23;
      _lastRequestIdentifierInQueue = v23;
      v28 = [v26 initWithTimeoutInterval:v27 onQueue:v41 timeoutHandler:3.0];
      resettingBurstTimer = self->_resettingBurstTimer;
      self->_resettingBurstTimer = v28;

      [(AFWatchdogTimer *)self->_maxTimeEnqueueableTimer start];
      [(AFWatchdogTimer *)self->_resettingBurstTimer start];

LABEL_33:
      goto LABEL_34;
    }

    [(ADExternalNotificationRequestQueueObserver *)self->_delegate announcementRequestReadyToBeAnnounced:self->_currentRequest];
  }

LABEL_34:
}

- (int64_t)_lastRequestAnnouncementTypeInQueue
{
  _lastRequestIdentifierInQueue = [(ADExternalNotificationRequestQueue *)self _lastRequestIdentifierInQueue];
  if (_lastRequestIdentifierInQueue && (-[NSMutableDictionary objectForKey:](self->_queuedRequestMap, "objectForKey:", _lastRequestIdentifierInQueue), v4 = objc_claimAutoreleasedReturnValue(), [v4 firstObject], v5 = objc_claimAutoreleasedReturnValue(), v4, v5))
  {
    announcementType = [v5 announcementType];
  }

  else
  {
    announcementType = 0;
  }

  return announcementType;
}

- (id)_lastRequestIdentifierInQueue
{
  v3 = [(AFQueue *)self->_queuedNotificationRequestIdentifiers count]- 1;
  queuedNotificationRequestIdentifiers = self->_queuedNotificationRequestIdentifiers;

  return [(AFQueue *)queuedNotificationRequestIdentifiers objectAtIndex:v3];
}

- (ADExternalNotificationRequestQueue)init
{
  v12.receiver = self;
  v12.super_class = ADExternalNotificationRequestQueue;
  v2 = [(ADExternalNotificationRequestQueue *)&v12 init];
  if (v2)
  {
    v3 = objc_alloc_init(AFQueue);
    queuedNotificationRequestIdentifiers = v2->_queuedNotificationRequestIdentifiers;
    v2->_queuedNotificationRequestIdentifiers = v3;

    v5 = objc_alloc_init(NSMutableDictionary);
    queuedRequestMap = v2->_queuedRequestMap;
    v2->_queuedRequestMap = v5;

    delegate = v2->_delegate;
    v2->_delegate = 0;

    v8 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v9 = dispatch_queue_create("ADExternalRequestHandlerQueueTimers", v8);

    timersQueue = v2->_timersQueue;
    v2->_timersQueue = v9;
  }

  return v2;
}

- (id)_identifierForNotificationRequest:(id)request
{
  requestCopy = request;
  notification = [requestCopy notification];
  request = [notification request];

  if ([requestCopy announcementType] == 1)
  {
    content = [request content];
    threadIdentifier = [content threadIdentifier];
LABEL_6:
    identifier = threadIdentifier;

    goto LABEL_7;
  }

  if ([requestCopy announcementType] == 8 || objc_msgSend(requestCopy, "announcementType") == 9)
  {
    content = [requestCopy announcementIdentifier];
    threadIdentifier = [content UUIDString];
    goto LABEL_6;
  }

  identifier = [request identifier];
LABEL_7:

  return identifier;
}

@end