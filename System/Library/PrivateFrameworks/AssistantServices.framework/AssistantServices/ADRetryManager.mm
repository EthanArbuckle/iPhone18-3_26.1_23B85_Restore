@interface ADRetryManager
- (BOOL)_canRestartRequest;
- (BOOL)_commandRefsOrIsCurrentRequest:(id)request;
- (BOOL)commandRefsRestartCommand:(id)command;
- (NSString)latestMappedRequestId;
- (id)nakedObjectsToRetry;
- (id)objectsToRetry;
- (id)retryRequestId;
- (void)_clearRequestCommands;
- (void)_objectsToRemapFromRefId:(id)id toRefId:(id)refId retryFullRequest:(BOOL)request commandsToRetry:(id)retry;
- (void)appendSessionObjectToRequest:(id)request;
- (void)beginRetryableRequest:(id)request;
- (void)clearNakedObjects;
- (void)endRetryableRequestForCommand:(id)command;
- (void)endRetryableRequestForCommandAceId:(id)id refId:(id)refId;
- (void)setLastReceivedCommand:(id)command;
@end

@implementation ADRetryManager

- (void)clearNakedObjects
{
  self->_needsToRetryNakedObjects = 0;
  self->_nakedObjects = 0;
  _objc_release_x1();
}

- (id)nakedObjectsToRetry
{
  if (self->_needsToRetryNakedObjects)
  {
    return self->_nakedObjects;
  }

  else
  {
    return 0;
  }
}

- (NSString)latestMappedRequestId
{
  latestMappedRequestId = self->_latestMappedRequestId;
  if (latestMappedRequestId)
  {
    originalRequestId = latestMappedRequestId;
  }

  else
  {
    originalRequestId = [(ADRetryManager *)self originalRequestId];
  }

  return originalRequestId;
}

- (id)retryRequestId
{
  if ([(ADRetryManager *)self _canRestartRequest])
  {
    aceId = [(SARestartRequest *)self->_restartRequest aceId];
  }

  else
  {
    aceId = 0;
  }

  return aceId;
}

- (BOOL)commandRefsRestartCommand:(id)command
{
  restartRequest = self->_restartRequest;
  commandCopy = command;
  aceId = [(SARestartRequest *)restartRequest aceId];
  refId = [commandCopy refId];

  LOBYTE(commandCopy) = [aceId isEqualToString:refId];
  return commandCopy;
}

- (id)objectsToRetry
{
  ++self->_retryCount;
  v3 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    restartRequest = self->_restartRequest;
    v5 = v3;
    lastResponseId = [(SARestartRequest *)restartRequest lastResponseId];
    v20 = 136315394;
    v21 = "[ADRetryManager objectsToRetry]";
    v22 = 2112;
    v23 = lastResponseId;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "%s Can restart request if %@", &v20, 0x16u);
  }

  v7 = [[NSMutableArray alloc] initWithCapacity:{-[NSMutableArray count](self->_requestObjects, "count") + 1}];
  v8 = v7;
  if (self->_nakedObjects)
  {
    [v7 addObjectsFromArray:?];
  }

  if ([(ADRetryManager *)self _canRestartRequest])
  {
    [v8 addObject:self->_restartRequest];
    requestId = [(SARestartRequest *)self->_restartRequest requestId];
    aceId = [(SARestartRequest *)self->_restartRequest aceId];
    [(ADRetryManager *)self _objectsToRemapFromRefId:requestId toRefId:aceId retryFullRequest:0 commandsToRetry:v8];
LABEL_14:

    goto LABEL_15;
  }

  v11 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    v20 = 136315138;
    v21 = "[ADRetryManager objectsToRetry]";
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "%s Retrying full request", &v20, 0xCu);
  }

  originalRequest = self->_originalRequest;
  if (originalRequest)
  {
    requestId = [(SAServerBoundCommand *)originalRequest aceId];
    latestMappedRequestId = self->_latestMappedRequestId;
    if (!latestMappedRequestId)
    {
      v14 = AFSiriLogContextDaemon;
      v15 = os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR);
      latestMappedRequestId = requestId;
      if (v15)
      {
        v20 = 136315394;
        v21 = "[ADRetryManager objectsToRetry]";
        v22 = 2112;
        v23 = requestId;
        _os_log_error_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, "%s latestMappedRequestId is not set for %@", &v20, 0x16u);
        latestMappedRequestId = requestId;
      }
    }

    aceId = latestMappedRequestId;
    v16 = [(SAServerBoundCommand *)self->_originalRequest copy];
    [v16 setAceId:aceId];
    [v8 addObject:v16];
    [(ADRetryManager *)self _objectsToRemapFromRefId:requestId toRefId:aceId retryFullRequest:1 commandsToRetry:v8];

    goto LABEL_14;
  }

  if (self->_requestObjects)
  {
    [v8 addObjectsFromArray:?];
  }

LABEL_15:
  if ([v8 count])
  {
    v17 = v8;
  }

  else
  {
    v17 = 0;
  }

  v18 = v17;

  return v17;
}

- (void)_objectsToRemapFromRefId:(id)id toRefId:(id)refId retryFullRequest:(BOOL)request commandsToRetry:(id)retry
{
  requestCopy = request;
  idCopy = id;
  refIdCopy = refId;
  retryCopy = retry;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  obj = self->_requestObjects;
  v11 = [(NSMutableArray *)obj countByEnumeratingWithState:&v29 objects:v39 count:16];
  if (v11)
  {
    v13 = v11;
    v14 = *v30;
    v15 = @"restart request";
    if (requestCopy)
    {
      v15 = @"for full request";
    }

    v25 = v15;
    if (idCopy)
    {
      v16 = refIdCopy == 0;
    }

    else
    {
      v16 = 1;
    }

    v17 = !v16;
    *&v12 = 136315650;
    v24 = v12;
    do
    {
      v18 = 0;
      do
      {
        if (*v30 != v14)
        {
          objc_enumerationMutation(obj);
        }

        v19 = *(*(&v29 + 1) + 8 * v18);
        v20 = AFSiriLogContextDaemon;
        if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_DEBUG))
        {
          *buf = v24;
          v34 = "[ADRetryManager _objectsToRemapFromRefId:toRefId:retryFullRequest:commandsToRetry:]";
          v35 = 2112;
          v36 = v19;
          v37 = 2112;
          v38 = v25;
          _os_log_debug_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEBUG, "%s object is %@ %@", buf, 0x20u);
          if (!requestCopy)
          {
LABEL_16:
            if (![v19 siriCore_isRestartable])
            {
              goto LABEL_22;
            }
          }
        }

        else if (!requestCopy)
        {
          goto LABEL_16;
        }

        if (v17)
        {
          if (([refIdCopy isEqualToString:idCopy] & 1) == 0)
          {
            refId = [v19 refId];
            v22 = [refId isEqualToString:idCopy];

            if (v22)
            {
              [v19 setRefId:refIdCopy];
            }
          }
        }

        [retryCopy addObject:{v19, v24}];
LABEL_22:
        v18 = v18 + 1;
      }

      while (v13 != v18);
      v23 = [(NSMutableArray *)obj countByEnumeratingWithState:&v29 objects:v39 count:16];
      v13 = v23;
    }

    while (v23);
  }
}

- (BOOL)_canRestartRequest
{
  lastResponseId = [(SARestartRequest *)self->_restartRequest lastResponseId];
  v3 = lastResponseId != 0;

  return v3;
}

- (void)setLastReceivedCommand:(id)command
{
  commandCopy = command;
  v5 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    v6 = 136315138;
    v7 = "[ADRetryManager setLastReceivedCommand:]";
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "%s ", &v6, 0xCu);
  }

  [(SARestartRequest *)self->_restartRequest setLastResponseId:commandCopy];
}

- (void)endRetryableRequestForCommandAceId:(id)id refId:(id)refId
{
  idCopy = id;
  refIdCopy = refId;
  requestId = [(SARestartRequest *)self->_restartRequest requestId];
  v9 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    v12 = 136315138;
    v13 = "[ADRetryManager endRetryableRequestForCommandAceId:refId:]";
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "%s ", &v12, 0xCu);
  }

  if (([refIdCopy isEqualToString:requestId] & 1) != 0 || objc_msgSend(idCopy, "isEqualToString:", requestId))
  {
    [(ADRetryManager *)self _clearRequestCommands];
  }

  aceId = [(SARestartRequest *)self->_restartRequest aceId];
  v11 = [aceId isEqualToString:refIdCopy];

  if (v11)
  {
    [(ADRetryManager *)self _clearRequestCommands];
  }
}

- (void)endRetryableRequestForCommand:(id)command
{
  commandCopy = command;
  v5 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    v6 = 136315138;
    v7 = "[ADRetryManager endRetryableRequestForCommand:]";
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "%s ", &v6, 0xCu);
  }

  if (!commandCopy || [(ADRetryManager *)self _commandRefsOrIsCurrentRequest:commandCopy]|| [(ADRetryManager *)self commandRefsRestartCommand:commandCopy])
  {
    [(ADRetryManager *)self _clearRequestCommands];
  }
}

- (void)appendSessionObjectToRequest:(id)request
{
  requestCopy = request;
  if ([requestCopy siriCore_isRetryable])
  {
    requestObjects = self->_requestObjects;
    if (requestObjects)
    {
      v5 = requestCopy;
    }

    else
    {
      requestObjects = self->_nakedObjects;
      v6 = requestCopy;
      if (!requestObjects)
      {
        v7 = objc_alloc_init(NSMutableArray);
        nakedObjects = self->_nakedObjects;
        self->_nakedObjects = v7;

        v6 = requestCopy;
        requestObjects = self->_nakedObjects;
      }

      v5 = v6;
    }

    [(NSMutableArray *)requestObjects addObject:v5];
  }
}

- (void)beginRetryableRequest:(id)request
{
  requestCopy = request;
  if (self->_restartRequest)
  {
    v5 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
    {
      v18 = 136315138;
      v19 = "[ADRetryManager beginRetryableRequest:]";
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "%s Interrupting outstanding request for new request", &v18, 0xCu);
    }

    [(ADRetryManager *)self _clearRequestCommands];
  }

  v6 = objc_alloc_init(SARestartRequest);
  v7 = SiriCoreUUIDStringCreate();
  [v6 setAceId:v7];
  aceId = [requestCopy aceId];
  [v6 setRequestId:aceId];

  v9 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    v10 = v9;
    aceId2 = [v6 aceId];
    requestId = [v6 requestId];
    v18 = 136315650;
    v19 = "[ADRetryManager beginRetryableRequest:]";
    v20 = 2112;
    v21 = aceId2;
    v22 = 2112;
    v23 = requestId;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "%s AceId of RestartRequest is %@ requestId is %@", &v18, 0x20u);
  }

  restartRequest = self->_restartRequest;
  self->_restartRequest = v6;
  v14 = v6;

  v15 = objc_alloc_init(NSMutableArray);
  requestObjects = self->_requestObjects;
  self->_requestObjects = v15;

  originalRequest = self->_originalRequest;
  self->_originalRequest = requestCopy;
}

- (BOOL)_commandRefsOrIsCurrentRequest:(id)request
{
  restartRequest = self->_restartRequest;
  requestCopy = request;
  requestId = [(SARestartRequest *)restartRequest requestId];
  refId = [requestCopy refId];
  aceId = [requestCopy aceId];

  if ([refId isEqualToString:requestId])
  {
    v8 = 1;
  }

  else
  {
    v8 = [aceId isEqualToString:requestId];
  }

  return v8;
}

- (void)_clearRequestCommands
{
  self->_retryCount = 0;
  restartRequest = self->_restartRequest;
  self->_restartRequest = 0;

  requestObjects = self->_requestObjects;
  self->_requestObjects = 0;
}

@end