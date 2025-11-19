@interface ADSession
+ (Class)sessionClassForType:(int)a3;
+ (int)_adSessionTypeFromString:(id)a3;
- (ADSessionDelegate)delegate;
- (BOOL)_commandRequiresServerConnection:(id)a3;
- (BOOL)_commandRequiresSync:(id)a3;
- (BOOL)_waitingForAssistantData;
- (id)_adSessionTypeString;
- (id)_pendingCommands;
- (id)_saSNConnectionType;
- (id)dequeueResultObjects;
- (id)initOnQueue:(id)a3 withAccount:(id)a4;
- (id)initOnQueue:(id)a3 withAccount:(id)a4 languageCode:(id)a5 connectionMode:(id)a6 sharedUserIdentifier:(id)a7 loggingSharedUserIdentifier:(id)a8 instanceContext:(id)a9;
- (void)_addLimboId:(id)a3;
- (void)_addPendingCommand:(id)a3;
- (void)_cancelSynchronously:(BOOL)a3;
- (void)_clearLimbo;
- (void)_informDelegateCannotHandleRequest:(id)a3 error:(id)a4;
- (void)_informDelegateOfError:(id)a3;
- (void)_informDelegateWillRetryOnError:(id)a3;
- (void)_passObjectToDelegate:(id)a3;
- (void)_pendDormantCommand:(id)a3;
- (void)_removeRequestForAssistantData;
- (void)_requestForAssistantData;
- (void)_resetSessionRequiresServerConnection;
- (void)_resetSessionRequiresSync;
- (void)_saGetAssistantData:(id)a3;
- (void)_sendAssistantDataAndPendingCommandsIfNeeded:(id)a3;
- (void)_sendAssistantDataChangedSinceAnchor:(id)a3 refId:(id)a4;
- (void)_sendCommandFailedWithRefId:(id)a3;
- (void)_sendDestroyAssistant;
- (void)_sendLimboCommand:(id)a3;
- (void)_sendPendingCommands;
- (void)_sendPendingDormantCommands;
- (void)_sendServerCommand:(id)a3;
- (void)_sendServerCommands:(id)a3;
- (void)_setAssistantDataAnchorIfNeeded:(id)a3;
- (void)_setDormantWithStyle:(int64_t)a3;
- (void)_setSNCurrentConnectionType:(id)a3;
- (void)_setSessionOpened;
- (void)assistantDataManager:(id)a3 didUpdateAssistantData:(id)a4;
- (void)beginUpdatingAssistantData;
- (void)cancelSessionRequest:(id)a3;
- (void)dealloc;
- (void)eagerlyFetchAssistantData;
- (void)getSNConnectionMetrics:(id)a3;
- (void)handleCommand:(id)a3;
- (void)preheatAndMakeQuiet:(BOOL)a3;
- (void)prepareForRetry;
- (void)queueResultObjects:(id)a3;
- (void)refreshValidationData;
- (void)resetConnection;
- (void)sendCommand:(id)a3 opportunistically:(BOOL)a4;
- (void)sendCommands:(id)a3 opportunistically:(BOOL)a4;
- (void)setDormant:(BOOL)a3;
- (void)setOrUpdateUsefulnessScore:(id)a3;
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
          v4 = 0;
        }

        else
        {
          v4 = [(ADAccount *)self->_account lastAssistantDataAnchor];
        }

        v5 = v4;
        [(ADSession *)self _sendAssistantDataChangedSinceAnchor:v4 refId:0];
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
  v4 = [currentSNConnectionType technology];
  if (v4 <= 2008)
  {
    if (v4 > 2001)
    {
      if ((v4 - 2004) >= 5)
      {
        if (v4 == 2002)
        {
          v5 = &SAConnectionTypeCDMA1xValue;
        }

        else
        {
          if (v4 != 2003)
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
      if (v4 == 1000)
      {
        v5 = &SAConnectionTypeWifiValue;
        goto LABEL_33;
      }

      if (v4 != 2000)
      {
        if (v4 != 2001)
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

  if (v4 <= 2013)
  {
    if ((v4 - 2009) >= 3)
    {
      if (v4 == 2012)
      {
        v5 = &SAConnectionTypeeHRPDValue;
      }

      else
      {
        if (v4 != 2013)
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

  if (v4 > 3002)
  {
    if (v4 == 3003)
    {
      v5 = &SAConnectionTypePOPValue;
      goto LABEL_33;
    }

    if (v4 == 3005)
    {
      v5 = &SAConnectionTypeLocalValue;
      goto LABEL_33;
    }

    if (v4 != 3006)
    {
      goto LABEL_34;
    }
  }

  else
  {
    if (v4 == 2014)
    {
      v5 = &SAConnectionTypeNRValue;
      goto LABEL_33;
    }

    if (v4 != 3000)
    {
      if (v4 != 3001)
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

        v10 = [*(*(&v11 + 1) + 8 * v9) aceId];
        [(ADSession *)self _addLimboId:v10];

        v9 = v9 + 1;
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v7);
  }
}

- (void)setOrUpdateUsefulnessScore:(id)a3
{
  v4 = [a3 integerValue];
  if (v4 >= self->_resultUsefulnessScore)
  {
    self->_resultUsefulnessScore = v4;
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

- (void)queueResultObjects:(id)a3
{
  v4 = a3;
  v5 = v4;
  v8 = v4;
  if (!self->_resultObjectsQueue)
  {
    v6 = objc_alloc_init(NSMutableArray);
    resultObjectsQueue = self->_resultObjectsQueue;
    self->_resultObjectsQueue = v6;

    v5 = v8;
  }

  if (v5)
  {
    v4 = [(NSMutableArray *)self->_resultObjectsQueue addObject:v8];
    v5 = v8;
  }

  _objc_release_x1(v4, v5);
}

- (void)_setSNCurrentConnectionType:(id)a3
{
  v4 = a3;
  v6 = v4;
  if (v4)
  {
    v4 = [[SNConnectionType alloc] initWithTechnology:{objc_msgSend(v4, "technology")}];
  }

  currentSNConnectionType = self->_currentSNConnectionType;
  self->_currentSNConnectionType = v4;
}

- (void)_cancelSynchronously:(BOOL)a3
{
  v3 = a3;
  [(ADSession *)self _clearSendBuffer];
  [(ADSession *)self _clearLimbo];
  [(ADSession *)self _removeRequestForAssistantData];
  currentSNConnectionType = self->_currentSNConnectionType;
  self->_currentSNConnectionType = 0;

  [(ADSession *)self _resetServerConnectionSynchronously:v3 completion:0];
}

- (void)setDormant:(BOOL)a3
{
  if (a3)
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

- (void)cancelSessionRequest:(id)a3
{
  v4 = a3;
  v5 = AFSiriLogContextSession;
  if (os_log_type_enabled(AFSiriLogContextSession, OS_LOG_TYPE_INFO))
  {
    v8 = 136315138;
    v9 = "[ADSession cancelSessionRequest:]";
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "%s ", &v8, 0xCu);
  }

  v6 = objc_alloc_init(SACancelRequest);
  [v6 setRefId:v4];
  [(ADSession *)self _sendServerCommand:v6];
  v7 = objc_alloc_init(SARollbackRequest);
  [v7 setRefId:v4];
  [v7 setRequestId:v4];
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

- (void)getSNConnectionMetrics:(id)a3
{
  if (a3)
  {
    (*(a3 + 2))(a3, 0);
  }
}

- (void)handleCommand:(id)a3
{
  v4 = a3;
  queue = self->_queue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100247990;
  v7[3] = &unk_10051E010;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(queue, v7);
}

- (void)sendCommands:(id)a3 opportunistically:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v7 = AFSiriLogContextSession;
  if (os_log_type_enabled(AFSiriLogContextSession, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315394;
    v19 = "[ADSession sendCommands:opportunistically:]";
    v20 = 2112;
    v21 = v6;
    _os_log_debug_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEBUG, "%s Sending commands: %@", buf, 0x16u);
  }

  if (self->_state == 11 && ![(ADSession *)self _waitingForAssistantData])
  {
    [(ADSession *)self _sendServerCommands:v6];
  }

  else
  {
    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    v14 = 0u;
    v8 = v6;
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

          [(ADSession *)self sendCommand:*(*(&v13 + 1) + 8 * v12) opportunistically:v4, v13];
          v12 = v12 + 1;
        }

        while (v10 != v12);
        v10 = [v8 countByEnumeratingWithState:&v13 objects:v17 count:16];
      }

      while (v10);
    }
  }
}

- (void)sendCommand:(id)a3 opportunistically:(BOOL)a4
{
  v6 = a3;
  v7 = AFSiriLogContextSession;
  if (os_log_type_enabled(AFSiriLogContextSession, OS_LOG_TYPE_INFO))
  {
    v23 = 136315394;
    v24 = "[ADSession sendCommand:opportunistically:]";
    v25 = 2112;
    v26 = v6;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "%s %@", &v23, 0x16u);
  }

  if (v6)
  {
    if (self->_dormant)
    {
      v8 = AFSiriLogContextSession;
      if (os_log_type_enabled(AFSiriLogContextSession, OS_LOG_TYPE_INFO))
      {
        v9 = v8;
        v10 = [(ADSession *)self sessionType];
        v23 = 136315394;
        v24 = "[ADSession sendCommand:opportunistically:]";
        v25 = 1024;
        LODWORD(v26) = v10;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "%s Pending command because session is dormant for %d", &v23, 0x12u);
      }

      [(ADSession *)self _pendDormantCommand:v6];
      if (!a4)
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

    if ([(ADSession *)self _commandRequiresServerConnection:v6])
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

    v13 = [(ADSession *)self _commandRequiresSync:v6];
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

    if (self->_state < 11 || [v6 siriCore_bufferingAllowedDuringActiveSession])
    {
      sendBuffer = self->_sendBuffer;
      if (!sendBuffer)
      {
        v16 = objc_alloc_init(NSMutableArray);
        v17 = self->_sendBuffer;
        self->_sendBuffer = v16;

        sendBuffer = self->_sendBuffer;
      }

      [(NSMutableArray *)sendBuffer addObject:v6];
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
        [(ADSession *)self _sendServerCommand:v6];
        goto LABEL_44;
      }

LABEL_43:
      [(ADSession *)self _addPendingCommand:v6];
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
          [(ADSession *)self _addPendingCommand:v6];
          [(ADSession *)self _startSession];
          goto LABEL_44;
        }
      }

      [(ADSession *)self _addPendingCommand:v6];
      if (!a4)
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

      [(ADSession *)self _sendLimboCommand:v6];
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

- (void)preheatAndMakeQuiet:(BOOL)a3
{
  v3 = a3;
  v5 = AFSiriLogContextSession;
  if (os_log_type_enabled(AFSiriLogContextSession, OS_LOG_TYPE_INFO))
  {
    v6 = v5;
    v7 = [NSNumber numberWithBool:v3];
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
    if (!v3)
    {
      return;
    }

    v9 = self;
    v10 = 1;
    goto LABEL_9;
  }

  if (self->_dormant && !v3)
  {
    v9 = self;
    v10 = 0;
LABEL_9:
    [(ADSession *)v9 _setDormantWithStyle:v10];
    return;
  }

  if (state >= 11 && !v3)
  {
    [(ADSession *)self _probeSessionIfIdle];
  }
}

- (void)_setDormantWithStyle:(int64_t)a3
{
  v3 = a3 != 0;
  if (self->_dormant != v3)
  {
    v6 = AFSiriLogContextSession;
    if (os_log_type_enabled(AFSiriLogContextSession, OS_LOG_TYPE_INFO))
    {
      v7 = v6;
      v8 = [(ADSession *)self sessionType];
      v9 = @"active";
      *&v10[4] = "[ADSession _setDormantWithStyle:]";
      *v10 = 136315650;
      if (a3)
      {
        v9 = @"dormant";
      }

      *&v10[12] = 1024;
      *&v10[14] = v8;
      v11 = 2112;
      v12 = v9;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "%s Setting dormant state for session %d to %@", v10, 0x1Cu);
    }

    self->_dormant = v3;
    if (a3)
    {
      if (a3 == 2)
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
    v10 = [(ADSession *)self sessionType];
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "%s Sending pending dormant commands now that the session is no longer dormant for session %d", &v7, 0x12u);
  }

  dormantQueue = self->_dormantQueue;
  self->_dormantQueue = 0;
  v6 = dormantQueue;

  [(ADSession *)self sendCommands:v6 opportunistically:0];
}

- (void)_pendDormantCommand:(id)a3
{
  v4 = a3;
  dormantQueue = self->_dormantQueue;
  v8 = v4;
  if (!dormantQueue)
  {
    v6 = objc_alloc_init(NSMutableArray);
    v7 = self->_dormantQueue;
    self->_dormantQueue = v6;

    v4 = v8;
    dormantQueue = self->_dormantQueue;
  }

  [(NSMutableArray *)dormantQueue addObject:v4];
}

- (void)_saGetAssistantData:(id)a3
{
  v4 = [a3 aceId];
  obj = [v4 copy];

  if (self->_cachedAssistantData)
  {
    [(ADSession *)self _sendAssistantDataChangedSinceAnchor:0 refId:obj];
  }

  else
  {
    objc_storeStrong(&self->_assistantDataRefId, obj);
  }
}

- (void)_setAssistantDataAnchorIfNeeded:(id)a3
{
  v4 = a3;
  v5 = [(ADSession *)self _waitingForAssistantData];
  v6 = AFSiriLogContextSession;
  v7 = os_log_type_enabled(AFSiriLogContextSession, OS_LOG_TYPE_INFO);
  if (v5)
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

  v8 = [v4 dataAnchor];
  v9 = [(ADSession *)self _account];
  v10 = v9;
  if (self->_pendingAssistantDataAnchor)
  {
    [v9 setLastAssistantDataAnchor:?];
    [v10 save];
    pendingAssistantDataAnchor = self->_pendingAssistantDataAnchor;
    self->_pendingAssistantDataAnchor = 0;
  }

  else
  {
    v12 = [v9 lastAssistantDataAnchor];
    if ([v8 isEqualToString:v12])
    {
    }

    else
    {
      v13 = [(ADSession *)self _shouldSendAssistantData];

      if (v13 && self->_cachedAssistantData)
      {
        [(ADSession *)self _sendAssistantDataChangedSinceAnchor:v8 refId:0];
      }
    }

    [v10 setLastAssistantDataAnchor:v8];
  }

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v15 = [v4 requestSync];
  [WeakRetained assistantSession:self didLoadAssistantSyncRequested:{objc_msgSend(v15, "BOOLValue")}];
}

- (void)assistantDataManager:(id)a3 didUpdateAssistantData:(id)a4
{
  v5 = [a4 copy];
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

- (void)_sendAssistantDataChangedSinceAnchor:(id)a3 refId:(id)a4
{
  v6 = a3;
  v7 = a4;
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

  v10 = [(ADSession *)self _cachedAssistantData];
  v11 = [v10 anchor];
  v12 = AFSiriLogContextSession;
  if (os_log_type_enabled(AFSiriLogContextSession, OS_LOG_TYPE_INFO))
  {
    v18 = 136315650;
    v19 = "[ADSession _sendAssistantDataChangedSinceAnchor:refId:]";
    v20 = 2112;
    v21 = v11;
    v22 = 2112;
    v23 = v6;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_INFO, "%s generated setAssistantData anchor %@ (previous anchor %@)", &v18, 0x20u);
  }

  v13 = [v6 isEqualToString:v11];
  if (v7 || (v13 & 1) == 0)
  {
    [v10 setRefId:v7];
    [(ADSession *)self _sendServerCommand:v10];
    if (self->_state == 11)
    {
      v15 = self->_account;
      [(ADAccount *)v15 setLastAssistantDataAnchor:v11];
      [(ADAccount *)v15 save];
    }

    else
    {
      v16 = [(NSString *)v11 copy];
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
      v21 = v10;
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

- (void)_sendCommandFailedWithRefId:(id)a3
{
  v4 = a3;
  v5 = objc_alloc_init(SACommandFailed);
  [v5 setRefId:v4];

  [(ADSession *)self _sendServerCommand:v5];
}

- (void)_sendServerCommands:(id)a3
{
  v3 = AFSiriLogContextSession;
  if (os_log_type_enabled(AFSiriLogContextSession, OS_LOG_TYPE_ERROR))
  {
    v4 = 136315138;
    v5 = "[ADSession _sendServerCommands:]";
    _os_log_error_impl(&_mh_execute_header, v3, OS_LOG_TYPE_ERROR, "%s Shouldn't reach this method", &v4, 0xCu);
  }
}

- (void)_sendServerCommand:(id)a3
{
  v3 = AFSiriLogContextSession;
  if (os_log_type_enabled(AFSiriLogContextSession, OS_LOG_TYPE_ERROR))
  {
    v4 = 136315138;
    v5 = "[ADSession _sendServerCommand:]";
    _os_log_error_impl(&_mh_execute_header, v3, OS_LOG_TYPE_ERROR, "%s Shouldn't reach this method", &v4, 0xCu);
  }
}

- (void)_informDelegateCannotHandleRequest:(id)a3 error:(id)a4
{
  v6 = a4;
  v7 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained assistantSession:self cannotHandleRequest:v7 error:v6];
}

- (void)_informDelegateWillRetryOnError:(id)a3
{
  v4 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained assistantSession:self willRetryOnError:v4];
}

- (void)_informDelegateOfError:(id)a3
{
  v4 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained assistantSession:self receivedError:v4 isRetryableError:0];
}

- (void)_passObjectToDelegate:(id)a3
{
  v4 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained assistantSession:self receivedCommand:v4];
}

- (BOOL)_commandRequiresSync:(id)a3
{
  v3 = a3;
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
      v10 = v3;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "%s %@", &v7, 0x16u);
    }
  }

  return isKindOfClass & 1;
}

- (BOOL)_commandRequiresServerConnection:(id)a3
{
  v3 = a3;
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
      v10 = v3;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "%s %@", &v7, 0x16u);
    }
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)_sendLimboCommand:(id)a3
{
  v4 = a3;
  v5 = AFSiriLogContextSession;
  if (os_log_type_enabled(AFSiriLogContextSession, OS_LOG_TYPE_INFO))
  {
    v7 = 136315138;
    v8 = "[ADSession _sendLimboCommand:]";
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "%s ", &v7, 0xCu);
  }

  [(ADSession *)self _sendServerCommand:v4];
  v6 = [v4 aceId];
  [(ADSession *)self _addLimboId:v6];

  [(ADSession *)self _addPendingCommand:v4];
}

- (void)_sendAssistantDataAndPendingCommandsIfNeeded:(id)a3
{
  v5 = a3;
  v4 = [(ADSession *)self _shouldSendAssistantData];
  if (v5 && v4 && self->_cachedAssistantData)
  {
    [(ADSession *)self _sendAssistantDataChangedSinceAnchor:v5 refId:0];
  }

  if (![(ADSession *)self _waitingForAssistantData])
  {
    [(ADSession *)self _sendPendingCommands];
  }
}

- (void)_addPendingCommand:(id)a3
{
  v4 = a3;
  v5 = AFSiriLogContextSession;
  if (os_log_type_enabled(AFSiriLogContextSession, OS_LOG_TYPE_DEBUG))
  {
    v7 = 136315138;
    v8 = "[ADSession _addPendingCommand:]";
    _os_log_debug_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEBUG, "%s ", &v7, 0xCu);
  }

  if (([v4 siriCore_isProvisional] & 1) == 0)
  {
    v6 = [(ADSession *)self _pendingCommands];
    [v6 addObject:v4];
  }
}

- (void)_addLimboId:(id)a3
{
  v4 = a3;
  limboIds = self->_limboIds;
  v8 = v4;
  if (!limboIds)
  {
    v6 = objc_alloc_init(NSMutableSet);
    v7 = self->_limboIds;
    self->_limboIds = v6;

    v4 = v8;
    limboIds = self->_limboIds;
  }

  [(NSMutableSet *)limboIds addObject:v4];
}

- (id)initOnQueue:(id)a3 withAccount:(id)a4 languageCode:(id)a5 connectionMode:(id)a6 sharedUserIdentifier:(id)a7 loggingSharedUserIdentifier:(id)a8 instanceContext:(id)a9
{
  v10.receiver = self;
  v10.super_class = ADSession;
  return [(ADSession *)&v10 init:a3];
}

- (id)initOnQueue:(id)a3 withAccount:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = ADSession;
  v9 = [(ADSession *)&v12 init];
  p_isa = &v9->super.isa;
  if (v9)
  {
    objc_storeStrong(&v9->_queue, a3);
    objc_storeStrong(p_isa + 2, a4);
    [p_isa _resetSessionRequiresServerConnection];
    [p_isa _resetSessionRequiresSync];
  }

  return p_isa;
}

+ (int)_adSessionTypeFromString:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"remoteLimited"])
  {
    v4 = 1;
  }

  else if ([v3 isEqualToString:@"local"])
  {
    v4 = 2;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

+ (Class)sessionClassForType:(int)a3
{
  if (a3 > 2)
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