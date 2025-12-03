@interface ADSession
+ (Class)sessionClassForType:(int)type;
+ (int)_adSessionTypeFromString:(id)string;
- (ADSessionDelegate)delegate;
- (BOOL)_commandRequiresServerConnection:(id)connection;
- (BOOL)_commandRequiresSync:(id)sync;
- (BOOL)_waitingForAssistantData;
- (id)_adSessionTypeString;
- (id)_pendingCommands;
- (id)_saSNConnectionType;
- (id)dequeueResultObjects;
- (id)initOnQueue:(id)queue withAccount:(id)account;
- (id)initOnQueue:(id)queue withAccount:(id)account languageCode:(id)code connectionMode:(id)mode sharedUserIdentifier:(id)identifier loggingSharedUserIdentifier:(id)userIdentifier instanceContext:(id)context;
- (void)_addLimboId:(id)id;
- (void)_addPendingCommand:(id)command;
- (void)_cancelSynchronously:(BOOL)synchronously;
- (void)_clearLimbo;
- (void)_informDelegateCannotHandleRequest:(id)request error:(id)error;
- (void)_informDelegateOfError:(id)error;
- (void)_informDelegateWillRetryOnError:(id)error;
- (void)_passObjectToDelegate:(id)delegate;
- (void)_pendDormantCommand:(id)command;
- (void)_removeRequestForAssistantData;
- (void)_requestForAssistantData;
- (void)_resetSessionRequiresServerConnection;
- (void)_resetSessionRequiresSync;
- (void)_saGetAssistantData:(id)data;
- (void)_sendAssistantDataAndPendingCommandsIfNeeded:(id)needed;
- (void)_sendAssistantDataChangedSinceAnchor:(id)anchor refId:(id)id;
- (void)_sendCommandFailedWithRefId:(id)id;
- (void)_sendDestroyAssistant;
- (void)_sendLimboCommand:(id)command;
- (void)_sendPendingCommands;
- (void)_sendPendingDormantCommands;
- (void)_sendServerCommand:(id)command;
- (void)_sendServerCommands:(id)commands;
- (void)_setAssistantDataAnchorIfNeeded:(id)needed;
- (void)_setDormantWithStyle:(int64_t)style;
- (void)_setSNCurrentConnectionType:(id)type;
- (void)_setSessionOpened;
- (void)assistantDataManager:(id)manager didUpdateAssistantData:(id)data;
- (void)beginUpdatingAssistantData;
- (void)cancelSessionRequest:(id)request;
- (void)dealloc;
- (void)eagerlyFetchAssistantData;
- (void)getSNConnectionMetrics:(id)metrics;
- (void)handleCommand:(id)command;
- (void)preheatAndMakeQuiet:(BOOL)quiet;
- (void)prepareForRetry;
- (void)queueResultObjects:(id)objects;
- (void)refreshValidationData;
- (void)resetConnection;
- (void)sendCommand:(id)command opportunistically:(BOOL)opportunistically;
- (void)sendCommands:(id)commands opportunistically:(BOOL)opportunistically;
- (void)setDormant:(BOOL)dormant;
- (void)setOrUpdateUsefulnessScore:(id)score;
@end

@implementation ADSession

- (id)_pendingCommands
{
  pendingCommands = self->_pendingCommands;
  if (!pendingCommands)
  {
    v4 = objc_alloc_init(NSMutableArray);
    v5 = self->_pendingCommands;
    self->_pendingCommands = v4;

    pendingCommands = self->_pendingCommands;
  }

  return pendingCommands;
}

- (id)_adSessionTypeString
{
  if ([(ADSession *)self sessionType]== 1)
  {
    return @"remoteLimited";
  }

  if ([(ADSession *)self sessionType]== 2)
  {
    return @"local";
  }

  return @"remoteFull";
}

- (void)_resetSessionRequiresServerConnection
{
  v3 = AFDeviceSupportsFullSiriUOD();
  self->_sessionRequiresServerConnection = v3 ^ 1;
  v4 = AFSiriLogContextSession;
  if (os_log_type_enabled(AFSiriLogContextSession, OS_LOG_TYPE_INFO))
  {
    v5 = @"YES";
    if (v3)
    {
      v5 = @"NO";
    }

    v6 = 136315394;
    v7 = "[ADSession _resetSessionRequiresServerConnection]";
    v8 = 2112;
    v9 = v5;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "%s _sessionRequiresServerConnection reset to %@", &v6, 0x16u);
  }
}

- (void)_resetSessionRequiresSync
{
  self->_sessionRequiresSync = 0;
  v2 = AFSiriLogContextSession;
  if (os_log_type_enabled(AFSiriLogContextSession, OS_LOG_TYPE_INFO))
  {
    v3 = 136315138;
    v4 = "[ADSession _resetSessionRequiresSync]";
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "%s _sessionRequiresSync reset to NO", &v3, 0xCu);
  }
}

- (BOOL)_waitingForAssistantData
{
  if (self->_cachedAssistantData)
  {
    return 0;
  }

  else
  {
    return [(ADSession *)self _shouldSendAssistantData];
  }
}

- (void)_clearLimbo
{
  limboIds = self->_limboIds;
  self->_limboIds = 0;

  pendingCommands = self->_pendingCommands;
  self->_pendingCommands = 0;
}

- (void)_removeRequestForAssistantData
{
  if (self->_assistantDataRequested)
  {
    v4 = +[ADAssistantDataManager sharedDataManager];
    [v4 removeObserver:self];
    self->_assistantDataRequested = 0;
  }
}

- (void)beginUpdatingAssistantData
{
  if (!self->_shouldSendAssistantData)
  {
    self->_shouldSendAssistantData = 1;
    state = self->_state;
    if (state >= 8)
    {
      if (self->_cachedAssistantData)
      {
        if (state == 8)
        {
          lastAssistantDataAnchor = 0;
        }

        else
        {
          lastAssistantDataAnchor = [(ADAccount *)self->_account lastAssistantDataAnchor];
        }

        v5 = lastAssistantDataAnchor;
        [(ADSession *)self _sendAssistantDataChangedSinceAnchor:lastAssistantDataAnchor refId:0];
      }
    }
  }
}

- (ADSessionDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)dealloc
{
  v2.receiver = self;
  v2.super_class = ADSession;
  [(ADSession *)&v2 dealloc];
}

- (void)_requestForAssistantData
{
  if (!self->_assistantDataRequested)
  {
    v4 = +[ADAssistantDataManager sharedDataManager];
    [v4 addObserver:self];
    [v4 requestAssistantDataUpdateHighPriority:1];
    self->_assistantDataRequested = 1;
  }
}

- (void)_setSessionOpened
{
  v2 = 4;
  if (self->_dormant)
  {
    v2 = 5;
  }

  self->_state = v2;
}

- (id)_saSNConnectionType
{
  currentSNConnectionType = self->_currentSNConnectionType;
  v3 = SAConnectionTypeUnknownValue;
  technology = [currentSNConnectionType technology];
  if (technology <= 2008)
  {
    if (technology > 2001)
    {
      if ((technology - 2004) >= 5)
      {
        if (technology == 2002)
        {
          v5 = &SAConnectionTypeCDMA1xValue;
        }

        else
        {
          if (technology != 2003)
          {
            goto LABEL_34;
          }

          v5 = &SAConnectionTypeLTEValue;
        }

        goto LABEL_33;
      }
    }

    else
    {
      if (technology == 1000)
      {
        v5 = &SAConnectionTypeWifiValue;
        goto LABEL_33;
      }

      if (technology != 2000)
      {
        if (technology != 2001)
        {
          goto LABEL_34;
        }

        v5 = &SAConnectionTypeUTRANValue;
        goto LABEL_33;
      }
    }

    v5 = &SAConnectionTypeCellValue;
    goto LABEL_33;
  }

  if (technology <= 2013)
  {
    if ((technology - 2009) >= 3)
    {
      if (technology == 2012)
      {
        v5 = &SAConnectionTypeeHRPDValue;
      }

      else
      {
        if (technology != 2013)
        {
          goto LABEL_34;
        }

        v5 = &SAConnectionTypeNRNSAValue;
      }
    }

    else
    {
      v5 = &SAConnectionTypeCDMAEVDOValue;
    }

    goto LABEL_33;
  }

  if (technology > 3002)
  {
    if (technology == 3003)
    {
      v5 = &SAConnectionTypePOPValue;
      goto LABEL_33;
    }

    if (technology == 3005)
    {
      v5 = &SAConnectionTypeLocalValue;
      goto LABEL_33;
    }

    if (technology != 3006)
    {
      goto LABEL_34;
    }
  }

  else
  {
    if (technology == 2014)
    {
      v5 = &SAConnectionTypeNRValue;
      goto LABEL_33;
    }

    if (technology != 3000)
    {
      if (technology != 3001)
      {
        goto LABEL_34;
      }

      v5 = &SAConnectionTypeLedBellyValue;
      goto LABEL_33;
    }
  }

  v5 = &SAConnectionTypeMultiPathTCPValue;
LABEL_33:
  v6 = *v5;

  v3 = v6;
LABEL_34:

  return v3;
}

- (void)_sendPendingCommands
{
  v3 = AFSiriLogContextSession;
  if (os_log_type_enabled(AFSiriLogContextSession, OS_LOG_TYPE_INFO))
  {
    *buf = 136315138;
    v17 = "[ADSession _sendPendingCommands]";
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "%s ", buf, 0xCu);
  }

  v4 = [(NSMutableArray *)self->_pendingCommands copy];
  [(ADSession *)self _sendServerCommands:v4];
  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v5 = v4;
  v6 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v12;
    do
    {
      v9 = 0;
      do
      {
        if (*v12 != v8)
        {
          objc_enumerationMutation(v5);
        }

        aceId = [*(*(&v11 + 1) + 8 * v9) aceId];
        [(ADSession *)self _addLimboId:aceId];

        v9 = v9 + 1;
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v7);
  }
}

- (void)setOrUpdateUsefulnessScore:(id)score
{
  integerValue = [score integerValue];
  if (integerValue >= self->_resultUsefulnessScore)
  {
    self->_resultUsefulnessScore = integerValue;
    self->_hasUsefulnessScore = 1;
  }
}

- (id)dequeueResultObjects
{
  if ([(NSMutableArray *)self->_resultObjectsQueue count])
  {
    v3 = self->_resultObjectsQueue;
    resultObjectsQueue = self->_resultObjectsQueue;
    self->_resultObjectsQueue = 0;
  }

  else
  {
    v3 = 0;
  }

  self->_resultUsefulnessScore = 0;
  self->_hasUsefulnessScore = 0;

  return v3;
}

- (void)queueResultObjects:(id)objects
{
  objectsCopy = objects;
  v5 = objectsCopy;
  v8 = objectsCopy;
  if (!self->_resultObjectsQueue)
  {
    v6 = objc_alloc_init(NSMutableArray);
    resultObjectsQueue = self->_resultObjectsQueue;
    self->_resultObjectsQueue = v6;

    v5 = v8;
  }

  if (v5)
  {
    objectsCopy = [(NSMutableArray *)self->_resultObjectsQueue addObject:v8];
    v5 = v8;
  }

  _objc_release_x1(objectsCopy, v5);
}

- (void)_setSNCurrentConnectionType:(id)type
{
  typeCopy = type;
  v6 = typeCopy;
  if (typeCopy)
  {
    typeCopy = [[SNConnectionType alloc] initWithTechnology:{objc_msgSend(typeCopy, "technology")}];
  }

  currentSNConnectionType = self->_currentSNConnectionType;
  self->_currentSNConnectionType = typeCopy;
}

- (void)_cancelSynchronously:(BOOL)synchronously
{
  synchronouslyCopy = synchronously;
  [(ADSession *)self _clearSendBuffer];
  [(ADSession *)self _clearLimbo];
  [(ADSession *)self _removeRequestForAssistantData];
  currentSNConnectionType = self->_currentSNConnectionType;
  self->_currentSNConnectionType = 0;

  [(ADSession *)self _resetServerConnectionSynchronously:synchronouslyCopy completion:0];
}

- (void)setDormant:(BOOL)dormant
{
  if (dormant)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  [(ADSession *)self _setDormantWithStyle:v3];
}

- (void)resetConnection
{
  [(ADSession *)self _resetServerConnectionSynchronously:0 completion:0];

  [(ADSession *)self _startConnection];
}

- (void)cancelSessionRequest:(id)request
{
  requestCopy = request;
  v5 = AFSiriLogContextSession;
  if (os_log_type_enabled(AFSiriLogContextSession, OS_LOG_TYPE_INFO))
  {
    v8 = 136315138;
    v9 = "[ADSession cancelSessionRequest:]";
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "%s ", &v8, 0xCu);
  }

  v6 = objc_alloc_init(SACancelRequest);
  [v6 setRefId:requestCopy];
  [(ADSession *)self _sendServerCommand:v6];
  v7 = objc_alloc_init(SARollbackRequest);
  [v7 setRefId:requestCopy];
  [v7 setRequestId:requestCopy];
  [v7 setReason:SARollbackReasonSIRIMINI_ARBITRATIONValue];
  [(ADSession *)self _sendServerCommand:v7];
}

- (void)prepareForRetry
{
  v3 = AFSiriLogContextSession;
  if (os_log_type_enabled(AFSiriLogContextSession, OS_LOG_TYPE_INFO))
  {
    v4 = 136315138;
    v5 = "[ADSession prepareForRetry]";
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "%s ", &v4, 0xCu);
  }

  if (self->_state > 10)
  {
    [(ADSession *)self _cancelSynchronously:0];
  }

  else
  {
    [(ADSession *)self _clearLimbo];
  }
}

- (void)getSNConnectionMetrics:(id)metrics
{
  if (metrics)
  {
    (*(metrics + 2))(metrics, 0);
  }
}

- (void)handleCommand:(id)command
{
  commandCopy = command;
  queue = self->_queue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100247990;
  v7[3] = &unk_10051E010;
  v7[4] = self;
  v8 = commandCopy;
  v6 = commandCopy;
  dispatch_async(queue, v7);
}

- (void)sendCommands:(id)commands opportunistically:(BOOL)opportunistically
{
  opportunisticallyCopy = opportunistically;
  commandsCopy = commands;
  v7 = AFSiriLogContextSession;
  if (os_log_type_enabled(AFSiriLogContextSession, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315394;
    v19 = "[ADSession sendCommands:opportunistically:]";
    v20 = 2112;
    v21 = commandsCopy;
    _os_log_debug_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEBUG, "%s Sending commands: %@", buf, 0x16u);
  }

  if (self->_state == 11 && ![(ADSession *)self _waitingForAssistantData])
  {
    [(ADSession *)self _sendServerCommands:commandsCopy];
  }

  else
  {
    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    v14 = 0u;
    v8 = commandsCopy;
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

          [(ADSession *)self sendCommand:*(*(&v13 + 1) + 8 * v12) opportunistically:opportunisticallyCopy, v13];
          v12 = v12 + 1;
        }

        while (v10 != v12);
        v10 = [v8 countByEnumeratingWithState:&v13 objects:v17 count:16];
      }

      while (v10);
    }
  }
}

- (void)sendCommand:(id)command opportunistically:(BOOL)opportunistically
{
  commandCopy = command;
  v7 = AFSiriLogContextSession;
  if (os_log_type_enabled(AFSiriLogContextSession, OS_LOG_TYPE_INFO))
  {
    v23 = 136315394;
    v24 = "[ADSession sendCommand:opportunistically:]";
    v25 = 2112;
    v26 = commandCopy;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "%s %@", &v23, 0x16u);
  }

  if (commandCopy)
  {
    if (self->_dormant)
    {
      v8 = AFSiriLogContextSession;
      if (os_log_type_enabled(AFSiriLogContextSession, OS_LOG_TYPE_INFO))
      {
        v9 = v8;
        sessionType = [(ADSession *)self sessionType];
        v23 = 136315394;
        v24 = "[ADSession sendCommand:opportunistically:]";
        v25 = 1024;
        LODWORD(v26) = sessionType;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "%s Pending command because session is dormant for %d", &v23, 0x12u);
      }

      [(ADSession *)self _pendDormantCommand:commandCopy];
      if (!opportunistically)
      {
        v11 = AFSiriLogContextSession;
        if (os_log_type_enabled(AFSiriLogContextSession, OS_LOG_TYPE_INFO))
        {
          v23 = 136315138;
          v24 = "[ADSession sendCommand:opportunistically:]";
          _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "%s Waking up dormant session because inopportunistic command needs to be sent.", &v23, 0xCu);
        }

        [(ADSession *)self _setDormantWithStyle:0];
      }

      goto LABEL_44;
    }

    if ([(ADSession *)self _commandRequiresServerConnection:commandCopy])
    {
      v12 = AFSiriLogContextSession;
      if (os_log_type_enabled(AFSiriLogContextSession, OS_LOG_TYPE_INFO))
      {
        v23 = 136315138;
        v24 = "[ADSession sendCommand:opportunistically:]";
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_INFO, "%s _sessionRequiresServerConnection set to YES", &v23, 0xCu);
      }

      self->_sessionRequiresServerConnection = 1;
    }

    v13 = [(ADSession *)self _commandRequiresSync:commandCopy];
    v14 = AFSiriLogContextSession;
    if (v13)
    {
      if (os_log_type_enabled(AFSiriLogContextSession, OS_LOG_TYPE_INFO))
      {
        v23 = 136315138;
        v24 = "[ADSession sendCommand:opportunistically:]";
        _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_INFO, "%s _commandRequiresSync set to YES", &v23, 0xCu);
        v14 = AFSiriLogContextSession;
      }

      self->_sessionRequiresSync = 1;
    }

    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
    {
      sessionRequiresServerConnection = self->_sessionRequiresServerConnection;
      v23 = 136315394;
      v24 = "[ADSession sendCommand:opportunistically:]";
      v25 = 1024;
      LODWORD(v26) = sessionRequiresServerConnection;
      _os_log_debug_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEBUG, "%s _sessionRequiresServerConnection: %d", &v23, 0x12u);
    }

    if (self->_state < 11 || [commandCopy siriCore_bufferingAllowedDuringActiveSession])
    {
      sendBuffer = self->_sendBuffer;
      if (!sendBuffer)
      {
        v16 = objc_alloc_init(NSMutableArray);
        v17 = self->_sendBuffer;
        self->_sendBuffer = v16;

        sendBuffer = self->_sendBuffer;
      }

      [(NSMutableArray *)sendBuffer addObject:commandCopy];
    }

    v18 = AFSiriLogContextSession;
    if (os_log_type_enabled(AFSiriLogContextSession, OS_LOG_TYPE_DEBUG))
    {
      state = self->_state;
      v23 = 136315394;
      v24 = "[ADSession sendCommand:opportunistically:]";
      v25 = 2048;
      v26 = state;
      _os_log_debug_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEBUG, "%s _state: %ld", &v23, 0x16u);
    }

    v19 = self->_state;
    if (v19 == 11)
    {
      if (![(ADSession *)self _waitingForAssistantData])
      {
        [(ADSession *)self _sendServerCommand:commandCopy];
        goto LABEL_44;
      }

LABEL_43:
      [(ADSession *)self _addPendingCommand:commandCopy];
      goto LABEL_44;
    }

    if ((v19 - 8) > 2)
    {
      if (v19 <= 3)
      {
        if ((v19 - 2) < 2 || v19 == 1)
        {
          goto LABEL_43;
        }
      }

      else
      {
        if ((v19 - 4) < 2)
        {
          goto LABEL_40;
        }

        if (v19 == 6)
        {
          goto LABEL_43;
        }

        if (v19 == 7)
        {
LABEL_40:
          [(ADSession *)self _addPendingCommand:commandCopy];
          [(ADSession *)self _startSession];
          goto LABEL_44;
        }
      }

      [(ADSession *)self _addPendingCommand:commandCopy];
      if (!opportunistically)
      {
        [(ADSession *)self _startConnection];
      }
    }

    else
    {
      if ([(ADSession *)self _waitingForAssistantData])
      {
        goto LABEL_43;
      }

      v20 = AFSiriLogContextSession;
      if (os_log_type_enabled(AFSiriLogContextSession, OS_LOG_TYPE_INFO))
      {
        v23 = 136315138;
        v24 = "[ADSession sendCommand:opportunistically:]";
        _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_INFO, "%s NOT _waitingForAssistantData, sending limbo command", &v23, 0xCu);
      }

      [(ADSession *)self _sendLimboCommand:commandCopy];
    }
  }

LABEL_44:
}

- (void)refreshValidationData
{
  v3 = AFSiriLogContextSession;
  if (os_log_type_enabled(AFSiriLogContextSession, OS_LOG_TYPE_INFO))
  {
    v4 = 136315138;
    v5 = "[ADSession refreshValidationData]";
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "%s ", &v4, 0xCu);
  }

  [(ADSession *)self _setDormantWithStyle:0];
}

- (void)eagerlyFetchAssistantData
{
  v2 = AFSiriLogContextSession;
  if (os_log_type_enabled(AFSiriLogContextSession, OS_LOG_TYPE_INFO))
  {
    v4 = 136315138;
    v5 = "[ADSession eagerlyFetchAssistantData]";
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "%s ", &v4, 0xCu);
  }

  v3 = +[ADAssistantDataManager sharedDataManager];
  [v3 requestAssistantDataUpdateHighPriority:0];
}

- (void)preheatAndMakeQuiet:(BOOL)quiet
{
  quietCopy = quiet;
  v5 = AFSiriLogContextSession;
  if (os_log_type_enabled(AFSiriLogContextSession, OS_LOG_TYPE_INFO))
  {
    v6 = v5;
    v7 = [NSNumber numberWithBool:quietCopy];
    v11 = 136315394;
    v12 = "[ADSession preheatAndMakeQuiet:]";
    v13 = 2112;
    v14 = v7;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "%s %@", &v11, 0x16u);
  }

  state = self->_state;
  if (!state)
  {
    [(ADSession *)self _startConnection];
    if (!quietCopy)
    {
      return;
    }

    selfCopy2 = self;
    v10 = 1;
    goto LABEL_9;
  }

  if (self->_dormant && !quietCopy)
  {
    selfCopy2 = self;
    v10 = 0;
LABEL_9:
    [(ADSession *)selfCopy2 _setDormantWithStyle:v10];
    return;
  }

  if (state >= 11 && !quietCopy)
  {
    [(ADSession *)self _probeSessionIfIdle];
  }
}

- (void)_setDormantWithStyle:(int64_t)style
{
  v3 = style != 0;
  if (self->_dormant != v3)
  {
    v6 = AFSiriLogContextSession;
    if (os_log_type_enabled(AFSiriLogContextSession, OS_LOG_TYPE_INFO))
    {
      v7 = v6;
      sessionType = [(ADSession *)self sessionType];
      v9 = @"active";
      *&v10[4] = "[ADSession _setDormantWithStyle:]";
      *v10 = 136315650;
      if (style)
      {
        v9 = @"dormant";
      }

      *&v10[12] = 1024;
      *&v10[14] = sessionType;
      v11 = 2112;
      v12 = v9;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "%s Setting dormant state for session %d to %@", v10, 0x1Cu);
    }

    self->_dormant = v3;
    if (style)
    {
      if (style == 2)
      {
        [(ADSession *)self _forceFastDormancy];
      }

      [(ADSession *)self _releaseDormancySuspension];
    }

    else
    {
      [(ADSession *)self _sendPendingDormantCommands];
    }
  }
}

- (void)_sendPendingDormantCommands
{
  v3 = AFSiriLogContextSession;
  if (os_log_type_enabled(AFSiriLogContextSession, OS_LOG_TYPE_INFO))
  {
    v4 = v3;
    v7 = 136315394;
    v8 = "[ADSession _sendPendingDormantCommands]";
    v9 = 1024;
    sessionType = [(ADSession *)self sessionType];
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "%s Sending pending dormant commands now that the session is no longer dormant for session %d", &v7, 0x12u);
  }

  dormantQueue = self->_dormantQueue;
  self->_dormantQueue = 0;
  v6 = dormantQueue;

  [(ADSession *)self sendCommands:v6 opportunistically:0];
}

- (void)_pendDormantCommand:(id)command
{
  commandCopy = command;
  dormantQueue = self->_dormantQueue;
  v8 = commandCopy;
  if (!dormantQueue)
  {
    v6 = objc_alloc_init(NSMutableArray);
    v7 = self->_dormantQueue;
    self->_dormantQueue = v6;

    commandCopy = v8;
    dormantQueue = self->_dormantQueue;
  }

  [(NSMutableArray *)dormantQueue addObject:commandCopy];
}

- (void)_saGetAssistantData:(id)data
{
  aceId = [data aceId];
  obj = [aceId copy];

  if (self->_cachedAssistantData)
  {
    [(ADSession *)self _sendAssistantDataChangedSinceAnchor:0 refId:obj];
  }

  else
  {
    objc_storeStrong(&self->_assistantDataRefId, obj);
  }
}

- (void)_setAssistantDataAnchorIfNeeded:(id)needed
{
  neededCopy = needed;
  _waitingForAssistantData = [(ADSession *)self _waitingForAssistantData];
  v6 = AFSiriLogContextSession;
  v7 = os_log_type_enabled(AFSiriLogContextSession, OS_LOG_TYPE_INFO);
  if (_waitingForAssistantData)
  {
    if (v7)
    {
      v16 = 136315138;
      v17 = "[ADSession _setAssistantDataAnchorIfNeeded:]";
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "%s Still waiting on SAD, postponing clearing limbo.", &v16, 0xCu);
    }
  }

  else
  {
    if (v7)
    {
      v16 = 136315138;
      v17 = "[ADSession _setAssistantDataAnchorIfNeeded:]";
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "%s Not waiting on SAD, clearing limbo now.", &v16, 0xCu);
    }

    [(ADSession *)self _clearLimbo];
  }

  dataAnchor = [neededCopy dataAnchor];
  _account = [(ADSession *)self _account];
  v10 = _account;
  if (self->_pendingAssistantDataAnchor)
  {
    [_account setLastAssistantDataAnchor:?];
    [v10 save];
    pendingAssistantDataAnchor = self->_pendingAssistantDataAnchor;
    self->_pendingAssistantDataAnchor = 0;
  }

  else
  {
    lastAssistantDataAnchor = [_account lastAssistantDataAnchor];
    if ([dataAnchor isEqualToString:lastAssistantDataAnchor])
    {
    }

    else
    {
      _shouldSendAssistantData = [(ADSession *)self _shouldSendAssistantData];

      if (_shouldSendAssistantData && self->_cachedAssistantData)
      {
        [(ADSession *)self _sendAssistantDataChangedSinceAnchor:dataAnchor refId:0];
      }
    }

    [v10 setLastAssistantDataAnchor:dataAnchor];
  }

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  requestSync = [neededCopy requestSync];
  [WeakRetained assistantSession:self didLoadAssistantSyncRequested:{objc_msgSend(requestSync, "BOOLValue")}];
}

- (void)assistantDataManager:(id)manager didUpdateAssistantData:(id)data
{
  v5 = [data copy];
  queue = self->_queue;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_1002488AC;
  v8[3] = &unk_10051E010;
  v8[4] = self;
  v9 = v5;
  v7 = v5;
  dispatch_async(queue, v8);
}

- (void)_sendAssistantDataChangedSinceAnchor:(id)anchor refId:(id)id
{
  anchorCopy = anchor;
  idCopy = id;
  v8 = self->_languageCode;
  if ((AFPreferencesLanguageIsSupported() & 1) == 0)
  {
    v9 = AFSiriLogContextSession;
    if (os_log_type_enabled(AFSiriLogContextSession, OS_LOG_TYPE_INFO))
    {
      v18 = 136315394;
      v19 = "[ADSession _sendAssistantDataChangedSinceAnchor:refId:]";
      v20 = 2112;
      v21 = v8;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "%s Unsupported language code %@, but sending SAD anyway", &v18, 0x16u);
    }
  }

  _cachedAssistantData = [(ADSession *)self _cachedAssistantData];
  anchor = [_cachedAssistantData anchor];
  v12 = AFSiriLogContextSession;
  if (os_log_type_enabled(AFSiriLogContextSession, OS_LOG_TYPE_INFO))
  {
    v18 = 136315650;
    v19 = "[ADSession _sendAssistantDataChangedSinceAnchor:refId:]";
    v20 = 2112;
    v21 = anchor;
    v22 = 2112;
    v23 = anchorCopy;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_INFO, "%s generated setAssistantData anchor %@ (previous anchor %@)", &v18, 0x20u);
  }

  v13 = [anchorCopy isEqualToString:anchor];
  if (idCopy || (v13 & 1) == 0)
  {
    [_cachedAssistantData setRefId:idCopy];
    [(ADSession *)self _sendServerCommand:_cachedAssistantData];
    if (self->_state == 11)
    {
      v15 = self->_account;
      [(ADAccount *)v15 setLastAssistantDataAnchor:anchor];
      [(ADAccount *)v15 save];
    }

    else
    {
      v16 = [(NSString *)anchor copy];
      pendingAssistantDataAnchor = self->_pendingAssistantDataAnchor;
      self->_pendingAssistantDataAnchor = v16;
    }
  }

  else
  {
    v14 = AFSiriLogContextSession;
    if (os_log_type_enabled(AFSiriLogContextSession, OS_LOG_TYPE_INFO))
    {
      v18 = 136315394;
      v19 = "[ADSession _sendAssistantDataChangedSinceAnchor:refId:]";
      v20 = 2112;
      v21 = _cachedAssistantData;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_INFO, "%s Assistant Data matches, not sending %@", &v18, 0x16u);
    }
  }
}

- (void)_sendDestroyAssistant
{
  v4 = objc_alloc_init(SADestroyAssistant);
  [(ADSession *)self _sendServerCommand:v4];
  v3 = +[AFPreferences sharedPreferences];
  [v3 setTLSSessionTicketsFlushPending:1];

  self->_state = 10;
}

- (void)_sendCommandFailedWithRefId:(id)id
{
  idCopy = id;
  v5 = objc_alloc_init(SACommandFailed);
  [v5 setRefId:idCopy];

  [(ADSession *)self _sendServerCommand:v5];
}

- (void)_sendServerCommands:(id)commands
{
  v3 = AFSiriLogContextSession;
  if (os_log_type_enabled(AFSiriLogContextSession, OS_LOG_TYPE_ERROR))
  {
    v4 = 136315138;
    v5 = "[ADSession _sendServerCommands:]";
    _os_log_error_impl(&_mh_execute_header, v3, OS_LOG_TYPE_ERROR, "%s Shouldn't reach this method", &v4, 0xCu);
  }
}

- (void)_sendServerCommand:(id)command
{
  v3 = AFSiriLogContextSession;
  if (os_log_type_enabled(AFSiriLogContextSession, OS_LOG_TYPE_ERROR))
  {
    v4 = 136315138;
    v5 = "[ADSession _sendServerCommand:]";
    _os_log_error_impl(&_mh_execute_header, v3, OS_LOG_TYPE_ERROR, "%s Shouldn't reach this method", &v4, 0xCu);
  }
}

- (void)_informDelegateCannotHandleRequest:(id)request error:(id)error
{
  errorCopy = error;
  requestCopy = request;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained assistantSession:self cannotHandleRequest:requestCopy error:errorCopy];
}

- (void)_informDelegateWillRetryOnError:(id)error
{
  errorCopy = error;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained assistantSession:self willRetryOnError:errorCopy];
}

- (void)_informDelegateOfError:(id)error
{
  errorCopy = error;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained assistantSession:self receivedError:errorCopy isRetryableError:0];
}

- (void)_passObjectToDelegate:(id)delegate
{
  delegateCopy = delegate;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained assistantSession:self receivedCommand:delegateCopy];
}

- (BOOL)_commandRequiresSync:(id)sync
{
  syncCopy = sync;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  if (isKindOfClass)
  {
    v5 = AFSiriLogContextSession;
    if (os_log_type_enabled(AFSiriLogContextSession, OS_LOG_TYPE_INFO))
    {
      v7 = 136315394;
      v8 = "[ADSession _commandRequiresSync:]";
      v9 = 2112;
      v10 = syncCopy;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "%s %@", &v7, 0x16u);
    }
  }

  return isKindOfClass & 1;
}

- (BOOL)_commandRequiresServerConnection:(id)connection
{
  connectionCopy = connection;
  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()))
  {
    v4 = AFSiriLogContextSession;
    v5 = 1;
    if (os_log_type_enabled(AFSiriLogContextSession, OS_LOG_TYPE_INFO))
    {
      v7 = 136315394;
      v8 = "[ADSession _commandRequiresServerConnection:]";
      v9 = 2112;
      v10 = connectionCopy;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "%s %@", &v7, 0x16u);
    }
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)_sendLimboCommand:(id)command
{
  commandCopy = command;
  v5 = AFSiriLogContextSession;
  if (os_log_type_enabled(AFSiriLogContextSession, OS_LOG_TYPE_INFO))
  {
    v7 = 136315138;
    v8 = "[ADSession _sendLimboCommand:]";
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "%s ", &v7, 0xCu);
  }

  [(ADSession *)self _sendServerCommand:commandCopy];
  aceId = [commandCopy aceId];
  [(ADSession *)self _addLimboId:aceId];

  [(ADSession *)self _addPendingCommand:commandCopy];
}

- (void)_sendAssistantDataAndPendingCommandsIfNeeded:(id)needed
{
  neededCopy = needed;
  _shouldSendAssistantData = [(ADSession *)self _shouldSendAssistantData];
  if (neededCopy && _shouldSendAssistantData && self->_cachedAssistantData)
  {
    [(ADSession *)self _sendAssistantDataChangedSinceAnchor:neededCopy refId:0];
  }

  if (![(ADSession *)self _waitingForAssistantData])
  {
    [(ADSession *)self _sendPendingCommands];
  }
}

- (void)_addPendingCommand:(id)command
{
  commandCopy = command;
  v5 = AFSiriLogContextSession;
  if (os_log_type_enabled(AFSiriLogContextSession, OS_LOG_TYPE_DEBUG))
  {
    v7 = 136315138;
    v8 = "[ADSession _addPendingCommand:]";
    _os_log_debug_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEBUG, "%s ", &v7, 0xCu);
  }

  if (([commandCopy siriCore_isProvisional] & 1) == 0)
  {
    _pendingCommands = [(ADSession *)self _pendingCommands];
    [_pendingCommands addObject:commandCopy];
  }
}

- (void)_addLimboId:(id)id
{
  idCopy = id;
  limboIds = self->_limboIds;
  v8 = idCopy;
  if (!limboIds)
  {
    v6 = objc_alloc_init(NSMutableSet);
    v7 = self->_limboIds;
    self->_limboIds = v6;

    idCopy = v8;
    limboIds = self->_limboIds;
  }

  [(NSMutableSet *)limboIds addObject:idCopy];
}

- (id)initOnQueue:(id)queue withAccount:(id)account languageCode:(id)code connectionMode:(id)mode sharedUserIdentifier:(id)identifier loggingSharedUserIdentifier:(id)userIdentifier instanceContext:(id)context
{
  v10.receiver = self;
  v10.super_class = ADSession;
  return [(ADSession *)&v10 init:queue];
}

- (id)initOnQueue:(id)queue withAccount:(id)account
{
  queueCopy = queue;
  accountCopy = account;
  v12.receiver = self;
  v12.super_class = ADSession;
  v9 = [(ADSession *)&v12 init];
  p_isa = &v9->super.isa;
  if (v9)
  {
    objc_storeStrong(&v9->_queue, queue);
    objc_storeStrong(p_isa + 2, account);
    [p_isa _resetSessionRequiresServerConnection];
    [p_isa _resetSessionRequiresSync];
  }

  return p_isa;
}

+ (int)_adSessionTypeFromString:(id)string
{
  stringCopy = string;
  if ([stringCopy isEqualToString:@"remoteLimited"])
  {
    v4 = 1;
  }

  else if ([stringCopy isEqualToString:@"local"])
  {
    v4 = 2;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

+ (Class)sessionClassForType:(int)type
{
  if (type > 2)
  {
    v4 = 0;
  }

  else
  {
    v4 = objc_opt_class();
  }

  return v4;
}

@end