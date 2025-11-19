@interface ADSessionManager
- (ADSessionManagerDelegate)delegate;
- (ADSessionManagerIntercepting)interceptor;
- (BOOL)_allowAllowedCommands:(id)a3;
- (BOOL)_evaluateResultObjects;
- (BOOL)_filterUnsupportedCommands:(id)a3 inGroup:(id)a4 onSession:(id)a5;
- (BOOL)_hasAtleastOneActiveSessionBesides:(id)a3;
- (BOOL)_hasSessionTypeChanged;
- (BOOL)_haveUsefulness:(id)a3 usefulnessScore:(id *)a4;
- (BOOL)_isDestructive:(id)a3;
- (BOOL)_reverseMapSessionRequestIdToADRequestId:(id)a3 forSession:(id)a4;
- (BOOL)assistantSessionShouldAttemptRetry:(id)a3;
- (BOOL)assistantSessionShouldLogVisibleRequestFailure:(id)a3 forError:(id)a4;
- (BOOL)assistantSessionShouldPrewarmConnetion:(id)a3;
- (BOOL)hasActiveSessionForSendingMetrics;
- (BOOL)hasSessionRequiringServerConnection;
- (BOOL)isCommandAllowedToBeHandledOnClient:(id)a3;
- (id)_keyForRequestId:(id)a3 forSession:(id)a4;
- (id)_languageCode;
- (id)_mapADRequestIdToSessionRequestId:(id)a3 forSession:(id)a4;
- (id)_saConnectionMode;
- (id)acquireAssertionForReason:(id)a3;
- (id)aggregator;
- (id)assistantSessionCommandsToRestoreStateOnNewConnection:(id)a3;
- (id)initOnQueue:(id)a3 account:(id)a4 instanceContext:(id)a5;
- (id)sessionRequestIdForRefId:(id)a3;
- (unsigned)_resultObjectsHoldTime;
- (void)_addSession:(id)a3;
- (void)_cancelOtherSessionRequests:(id)a3 forRefId:(id)a4;
- (void)_cancelSynchronously:(BOOL)a3;
- (void)_clearSessions;
- (void)_cloudPreferencesDidSync:(id)a3;
- (void)_convertEmbeddedRequestIds:(id)a3 originalCommand:(id)a4 session:(id)a5;
- (void)_enabledBitsChanged:(id)a3;
- (void)_languageCodeDidChange:(id)a3;
- (void)_logCommandToMetrics:(id)a3 forSession:(id)a4 outbound:(BOOL)a5;
- (void)_logContextForWinningSession:(id)a3 forReason:(id)a4 forRemoteSessionScore:(int64_t)a5 forLocalSessionScore:(int64_t)a6;
- (void)_logMetricsForSessionFailure:(id)a3 withError:(id)a4 completion:(id)a5;
- (void)_pickDefaultWinnerWithDroppingSession:(id)a3;
- (void)_powerChangedMessageType:(unsigned int)a3 notificationID:(int64_t)a4;
- (void)_purgeRequestMaps;
- (void)_queueResultObject:(id)a3 forSession:(id)a4;
- (void)_registerForPossibleSessionDestroyingNotifications;
- (void)_registerForSleepNotification;
- (void)_resetResultObjectsTimer;
- (void)_resetSessionOnRequestBoundaryIfNeeded;
- (void)_resetSessionsAndMakeQuiet:(BOOL)a3;
- (void)_resetWinningState;
- (void)_resetWinningStateAndPurgeRequestMaps;
- (void)_resultObjectsTimerFired:(id)a3;
- (void)_sendCommand:(id)a3 opportunistically:(BOOL)a4 logEvent:(BOOL)a5 doSendPreProcessing:(BOOL)a6 doSendPostProcessing:(BOOL)a7;
- (void)_sharedAssistantdIdentifierDidChange:(id)a3;
- (void)_startResultObjectsTimer;
- (void)_startSession:(int)a3 makeQuiet:(BOOL)a4;
- (void)_startSessions:(BOOL)a3;
- (void)_unregisterForPossibleSessionDestroyingNotifications;
- (void)_unregisterForSleepNotification;
- (void)_updateSharedUserIdentifiers;
- (void)adviseSessionArbiterToContinueWithPreviousWinner:(BOOL)a3;
- (void)assistantSession:(id)a3 beginSessionRetryPreferringWWAN:(BOOL)a4;
- (void)assistantSession:(id)a3 cannotHandleRequest:(id)a4 error:(id)a5;
- (void)assistantSession:(id)a3 didChangeRequestIdFrom:(id)a4 toId:(id)a5;
- (void)assistantSession:(id)a3 didLoadAssistantSyncRequested:(BOOL)a4;
- (void)assistantSession:(id)a3 didOpenConnectionWithPolicyId:(id)a4 routeId:(id)a5 connectionDelay:(double)a6;
- (void)assistantSession:(id)a3 receivedCommand:(id)a4;
- (void)assistantSession:(id)a3 receivedError:(id)a4 isRetryableError:(BOOL)a5;
- (void)assistantSession:(id)a3 receivedIntermediateError:(id)a4;
- (void)assistantSession:(id)a3 willRetryOnError:(id)a4;
- (void)assistantSessionConnectionDidClose:(id)a3;
- (void)assistantSessionConnectionDidReset:(id)a3;
- (void)assistantSessionDidCreateAssistant:(id)a3;
- (void)assistantSessionDidDestroyAssistant:(id)a3;
- (void)assistantSessionRetryingRequest:(id)a3;
- (void)assistantSessionWillStartConnection:(id)a3;
- (void)barrier:(id)a3;
- (void)beginUpdatingAssistantData;
- (void)cancel;
- (void)dealloc;
- (void)delegateDidHandleCommand:(id)a3;
- (void)endRetryableRequestForCommand:(id)a3;
- (void)getSNConnectionMetrics:(id)a3;
- (void)handleCommand:(id)a3;
- (void)preheatAndMakeQuiet:(BOOL)a3;
- (void)refreshValidationData;
- (void)relinquishAssertion:(id)a3;
- (void)resetRetryManager;
- (void)resetSessionsAtNextRequestBoundaryWithCompletion:(id)a3;
- (void)resetSessionsIfRequiredBasedOnOrchestrationMode:(BOOL)a3;
- (void)sendCommand:(id)a3 opportunistically:(BOOL)a4 logEvent:(BOOL)a5;
- (void)sendRawCommand:(id)a3 opportunistically:(BOOL)a4 logEvent:(BOOL)a5;
- (void)sendRemoteGizmoDeviceToServer:(id)a3;
- (void)setCurrentRequest:(id)a3;
- (void)setHasActiveRequest:(BOOL)a3;
- (void)setRequestId:(id)a3;
- (void)startRetry;
- (void)updateConnectionDidDropAggdMetrics;
- (void)updateConnectionDidFailAggdMetrics;
- (void)updateConnectionSetConnectionType:(unsigned int)a3;
- (void)updateForCallIsLikelyDueToRequest:(BOOL)a3;
- (void)updateForCallState:(BOOL)a3;
@end

@implementation ADSessionManager

- (void)_registerForPossibleSessionDestroyingNotifications
{
  if (!self->_isRegisteredForSessionDestroyingNotifications)
  {
    self->_isRegisteredForSessionDestroyingNotifications = 1;
    v4 = +[NSNotificationCenter defaultCenter];
    [v4 addObserver:self selector:"_enabledBitsChanged:" name:@"ADPreferencesEnabledBitsDidChangeNotification" object:0];
  }
}

- (void)_resetWinningStateAndPurgeRequestMaps
{
  [(ADSessionManager *)self resetWinningState];

  [(ADSessionManager *)self _purgeRequestMaps];
}

- (void)_purgeRequestMaps
{
  v3 = AFSiriLogContextSession;
  if (os_log_type_enabled(AFSiriLogContextSession, OS_LOG_TYPE_INFO))
  {
    v4 = 136315138;
    v5 = "[ADSessionManager _purgeRequestMaps]";
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "%s ", &v4, 0xCu);
  }

  [(NSMutableDictionary *)self->_proxiedIdMap removeAllObjects];
  [(NSMutableDictionary *)self->_reverseProxiedIdMap removeAllObjects];
  [(NSMutableDictionary *)self->_sessionOriginatedCommandTable removeAllObjects];
}

- (void)_resetResultObjectsTimer
{
  resultObjectsEvaluationTimer = self->_resultObjectsEvaluationTimer;
  if (resultObjectsEvaluationTimer)
  {
    dispatch_source_cancel(resultObjectsEvaluationTimer);
    v4 = self->_resultObjectsEvaluationTimer;
    self->_resultObjectsEvaluationTimer = 0;
  }
}

- (void)_resetWinningState
{
  if (!self->_continueWithPreviousWinner)
  {
    v3 = AFSiriLogContextSession;
    if (os_log_type_enabled(AFSiriLogContextSession, OS_LOG_TYPE_INFO))
    {
      winningSessionId = self->_winningSessionId;
      v8 = 136315394;
      v9 = "[ADSessionManager _resetWinningState]";
      v10 = 2112;
      v11 = winningSessionId;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "%s Reset winning session Id %@", &v8, 0x16u);
    }

    v5 = self->_winningSessionId;
    self->_winningSessionId = 0;
  }

  [(ADSessionManager *)self _resetResultObjectsTimer];
  *&self->_isQueuingResultsForDelayedEvaluation = 0;
  savedSasSpeechRecognized = self->_savedSasSpeechRecognized;
  self->_savedSasSpeechRecognized = 0;

  savedSasSpeechFailure = self->_savedSasSpeechFailure;
  self->_savedSasSpeechFailure = 0;

  self->_savedSasSpeechRecognizedSubmitted = 0;
  self->_serverSpeechRecognitionArrived = 0;
}

- (id)_languageCode
{
  languageCode = self->_languageCode;
  if (!languageCode)
  {
    v4 = +[ADPreferences sharedPreferences];
    v5 = [v4 languageCode];
    v6 = self->_languageCode;
    self->_languageCode = v5;

    languageCode = self->_languageCode;
  }

  return languageCode;
}

- (id)_saConnectionMode
{
  v3 = +[AFPreferences sharedPreferences];
  v4 = [v3 _ad_connectionModeFromEnabledState];
  connectionMode = self->_connectionMode;
  self->_connectionMode = v4;

  v6 = self->_connectionMode;

  return v6;
}

- (void)_updateSharedUserIdentifiers
{
  if (self->_sharedUserIdentifier)
  {
    return;
  }

  if (self->_sharedUserIdentifierState == 1)
  {
    return;
  }

  v3 = +[ADPreferences sharedPreferences];
  v4 = [v3 sharedUserIdentifier];
  sharedUserIdentifier = self->_sharedUserIdentifier;
  self->_sharedUserIdentifier = v4;

  v6 = +[ADPreferences sharedPreferences];
  v7 = [v6 loggingSharedUserIdentifier];
  loggingSharedUserIdentifier = self->_loggingSharedUserIdentifier;
  self->_loggingSharedUserIdentifier = v7;

  self->_sharedUserIdentifierState = 1;
  if (AFSupportsMultiUser())
  {
    return;
  }

  sharedUserIdentifierState = self->_sharedUserIdentifierState;
  if (!self->_sharedUserIdentifier || !self->_loggingSharedUserIdentifier)
  {
    v10 = +[ADCloudKitManager sharedManager];
    v11 = [v10 preferencesHaveBeenSynchronized];

    if (v11)
    {
      v12 = self->_sharedUserIdentifier;
      if (v12)
      {
        v13 = v12;
        v14 = self->_sharedUserIdentifier;
        self->_sharedUserIdentifier = v13;
      }

      else
      {
        v14 = +[NSUUID UUID];
        v17 = [v14 UUIDString];
        v18 = self->_sharedUserIdentifier;
        self->_sharedUserIdentifier = v17;
      }

      v19 = self->_loggingSharedUserIdentifier;
      if (v19)
      {
        v20 = v19;
        v21 = self->_loggingSharedUserIdentifier;
        self->_loggingSharedUserIdentifier = v20;
      }

      else
      {
        v21 = +[NSUUID UUID];
        v22 = [v21 UUIDString];
        v23 = self->_loggingSharedUserIdentifier;
        self->_loggingSharedUserIdentifier = v22;
      }

      v24 = +[ADPreferences sharedPreferences];
      [v24 setSharedUserIdentifier:self->_sharedUserIdentifier loggingSharedUserIdentifier:self->_loggingSharedUserIdentifier];

      goto LABEL_17;
    }
  }

  if (sharedUserIdentifierState)
  {
LABEL_17:
    v25 = AFSiriLogContextSession;
    if (os_log_type_enabled(AFSiriLogContextSession, OS_LOG_TYPE_INFO))
    {
      v26 = self->_sharedUserIdentifier;
      v28 = 136315395;
      v29 = "[ADSessionManager _updateSharedUserIdentifiers]";
      v30 = 2113;
      v31 = v26;
      _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_INFO, "%s Created new sharedUserId %{private}@", &v28, 0x16u);
    }

    v27 = +[NSNotificationCenter defaultCenter];
    [v27 postNotificationName:@"ADSharedDataDidChangeNotification" object:0];

    return;
  }

  v15 = AFSiriLogContextSession;
  if (os_log_type_enabled(AFSiriLogContextSession, OS_LOG_TYPE_INFO))
  {
    v16 = self->_sharedUserIdentifier;
    v28 = 136315395;
    v29 = "[ADSessionManager _updateSharedUserIdentifiers]";
    v30 = 2113;
    v31 = v16;
    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_INFO, "%s Unchanged sharedUserId %{private}@", &v28, 0x16u);
  }
}

- (void)cancel
{
  objc_initWeak(&location, self);
  queue = self->_queue;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100009638;
  v4[3] = &unk_10051B5F0;
  objc_copyWeak(&v5, &location);
  dispatch_async(queue, v4);
  objc_destroyWeak(&v5);
  objc_destroyWeak(&location);
}

- (void)_unregisterForPossibleSessionDestroyingNotifications
{
  if (self->_isRegisteredForSessionDestroyingNotifications)
  {
    self->_isRegisteredForSessionDestroyingNotifications = 0;
    v4 = +[NSNotificationCenter defaultCenter];
    [v4 removeObserver:self name:@"ADPreferencesEnabledBitsDidChangeNotification" object:0];
  }
}

- (void)beginUpdatingAssistantData
{
  if (self->_state <= 1)
  {
    [(ADSessionManager *)self _startSessions:0];
  }

  v10 = 0u;
  v11 = 0u;
  v8 = 0u;
  v9 = 0u;
  v3 = self->_sessions;
  v4 = [(NSMutableArray *)v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v9;
    do
    {
      v7 = 0;
      do
      {
        if (*v9 != v6)
        {
          objc_enumerationMutation(v3);
        }

        [*(*(&v8 + 1) + 8 * v7) beginUpdatingAssistantData];
        v7 = v7 + 1;
      }

      while (v5 != v7);
      v5 = [(NSMutableArray *)v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v5);
  }
}

- (id)aggregator
{
  aggregator = self->_aggregator;
  if (!aggregator)
  {
    v4 = objc_alloc_init(AFAggregator);
    v5 = self->_aggregator;
    self->_aggregator = v4;

    aggregator = self->_aggregator;
  }

  return aggregator;
}

- (void)_resetSessionOnRequestBoundaryIfNeeded
{
  if (self->_hasActiveRequest)
  {
    v3 = AFSiriLogContextSession;
    if (!os_log_type_enabled(AFSiriLogContextSession, OS_LOG_TYPE_INFO))
    {
      return;
    }

    requestId = self->_requestId;
    *buf = 136315394;
    v29 = "[ADSessionManager _resetSessionOnRequestBoundaryIfNeeded]";
    v30 = 2112;
    v31 = requestId;
    v5 = "%s Ignored because of active request (requestId = %@).";
    v6 = v3;
    v7 = 22;
    goto LABEL_4;
  }

  if ([(NSMutableSet *)self->_assertions count])
  {
    v8 = AFSiriLogContextSession;
    if (os_log_type_enabled(AFSiriLogContextSession, OS_LOG_TYPE_INFO))
    {
      assertions = self->_assertions;
      v10 = v8;
      *buf = 136315394;
      v29 = "[ADSessionManager _resetSessionOnRequestBoundaryIfNeeded]";
      v30 = 2048;
      v31 = [(NSMutableSet *)assertions count];
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "%s Ignored because %tu assertions.", buf, 0x16u);
    }

    if (AFIsInternalInstall())
    {
      v25 = 0u;
      v26 = 0u;
      v23 = 0u;
      v24 = 0u;
      v11 = self->_assertions;
      v12 = [(NSMutableSet *)v11 countByEnumeratingWithState:&v23 objects:v27 count:16];
      if (v12)
      {
        v13 = v12;
        v14 = *v24;
        do
        {
          v15 = 0;
          do
          {
            if (*v24 != v14)
            {
              objc_enumerationMutation(v11);
            }

            v16 = AFSiriLogContextSession;
            if (os_log_type_enabled(AFSiriLogContextSession, OS_LOG_TYPE_DEBUG))
            {
              v17 = *(*(&v23 + 1) + 8 * v15);
              *buf = 136315394;
              v29 = "[ADSessionManager _resetSessionOnRequestBoundaryIfNeeded]";
              v30 = 2112;
              v31 = v17;
              _os_log_debug_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEBUG, "%s     %@", buf, 0x16u);
            }

            v15 = v15 + 1;
          }

          while (v13 != v15);
          v13 = [(NSMutableSet *)v11 countByEnumeratingWithState:&v23 objects:v27 count:16];
        }

        while (v13);
      }
    }
  }

  else if (self->_needsResetOnRequestBoundary)
  {
    self->_needsResetOnRequestBoundary = 0;
    v18 = AFSiriLogContextSession;
    if (os_log_type_enabled(AFSiriLogContextSession, OS_LOG_TYPE_INFO))
    {
      *buf = 136315138;
      v29 = "[ADSessionManager _resetSessionOnRequestBoundaryIfNeeded]";
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_INFO, "%s Resetting Sessions at Request Boundary", buf, 0xCu);
    }

    v19 = +[AFAnalytics sharedAnalytics];
    [v19 logEventWithType:925 context:0];

    sessionResetOnRequestBoundaryCompletion = self->_sessionResetOnRequestBoundaryCompletion;
    if (sessionResetOnRequestBoundaryCompletion)
    {
      sessionResetOnRequestBoundaryCompletion[2]();
      v21 = self->_sessionResetOnRequestBoundaryCompletion;
    }

    else
    {
      v21 = 0;
    }

    self->_sessionResetOnRequestBoundaryCompletion = 0;

    [(ADSessionManager *)self _resetSessionsAndMakeQuiet:0];
  }

  else
  {
    v22 = AFSiriLogContextSession;
    if (os_log_type_enabled(AFSiriLogContextSession, OS_LOG_TYPE_INFO))
    {
      *buf = 136315138;
      v29 = "[ADSessionManager _resetSessionOnRequestBoundaryIfNeeded]";
      v5 = "%s Ignored because there's no need.";
      v6 = v22;
      v7 = 12;
LABEL_4:
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, v5, buf, v7);
    }
  }
}

- (BOOL)hasActiveSessionForSendingMetrics
{
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v3 = self->_sessions;
  v4 = [(NSMutableArray *)v3 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v16;
    do
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v16 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v15 + 1) + 8 * i);
        v9 = [v8 canHandleRequest];
        v10 = [v8 sessionId];
        if (v9 && ((winningSessionId = self->_winningSessionId) == 0 || -[NSString isEqualToString:](winningSessionId, "isEqualToString:", v10)) && [v8 sessionIsActive])
        {
          v12 = [v8 sessionIsWaitingForAssistantData];

          if ((v12 & 1) == 0)
          {
            v13 = 1;
            goto LABEL_16;
          }
        }

        else
        {
        }
      }

      v5 = [(NSMutableArray *)v3 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v5);
  }

  v13 = 0;
LABEL_16:

  return v13;
}

- (void)_registerForSleepNotification
{
  if (!self->_ioConnect)
  {
    v3 = AFSiriLogContextSession;
    if (os_log_type_enabled(AFSiriLogContextSession, OS_LOG_TYPE_INFO))
    {
      v5 = 136315138;
      v6 = "[ADSessionManager _registerForSleepNotification]";
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "%s ", &v5, 0xCu);
    }

    v4 = IORegisterForSystemPower(self, &self->_ioNotificationPortRef, j__objc_msgSend__powerChangedMessageType_notificationID_, &self->_ioNotifier);
    self->_ioConnect = v4;
    if (v4 + 1 >= 2)
    {
      IONotificationPortSetDispatchQueue(self->_ioNotificationPortRef, self->_queue);
    }

    else
    {
      self->_ioConnect = 0;
    }
  }
}

- (ADSessionManagerIntercepting)interceptor
{
  WeakRetained = objc_loadWeakRetained(&self->_interceptor);

  return WeakRetained;
}

- (ADSessionManagerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)_logContextForWinningSession:(id)a3 forReason:(id)a4 forRemoteSessionScore:(int64_t)a5 forLocalSessionScore:(int64_t)a6
{
  v9 = a3;
  v10 = a4;
  v11 = v10;
  if (!v9)
  {
    v18 = AFSiriLogContextSession;
    if (!os_log_type_enabled(AFSiriLogContextSession, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_7;
    }

    v20 = 136315138;
    v21 = "[ADSessionManager _logContextForWinningSession:forReason:forRemoteSessionScore:forLocalSessionScore:]";
    v19 = "%s sessionType is not defined";
LABEL_9:
    _os_log_error_impl(&_mh_execute_header, v18, OS_LOG_TYPE_ERROR, v19, &v20, 0xCu);
    goto LABEL_7;
  }

  if (!v10)
  {
    v18 = AFSiriLogContextSession;
    if (!os_log_type_enabled(AFSiriLogContextSession, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_7;
    }

    v20 = 136315138;
    v21 = "[ADSessionManager _logContextForWinningSession:forReason:forRemoteSessionScore:forLocalSessionScore:]";
    v19 = "%s winningReason is not defined";
    goto LABEL_9;
  }

  v12 = +[NSMutableDictionary dictionary];
  [v12 setObject:v9 forKey:@"sessionType"];
  [v12 setObject:v11 forKey:@"reason"];
  v13 = [NSNumber numberWithInteger:a5];
  v14 = [v13 stringValue];
  [v12 setObject:v14 forKey:@"remoteSessionScore"];

  v15 = [NSNumber numberWithInteger:a6];
  v16 = [v15 stringValue];
  [v12 setObject:v16 forKey:@"localSessionScore"];

  v17 = +[AFAnalytics sharedAnalytics];
  [v17 logEventWithType:919 context:v12];

LABEL_7:
}

- (BOOL)_reverseMapSessionRequestIdToADRequestId:(id)a3 forSession:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v6 refId];
  if (!v8)
  {
    v9 = 0;
    goto LABEL_6;
  }

  v9 = [(ADSessionManager *)self _keyForRequestId:v8 forSession:v7];
  if (!v9)
  {
LABEL_6:
    v10 = 0;
    goto LABEL_7;
  }

  v10 = [(NSMutableDictionary *)self->_reverseProxiedIdMap valueForKey:v9];
  if (v10)
  {
    [v6 setRefId:v10];
    v11 = 1;
    goto LABEL_8;
  }

LABEL_7:
  v11 = 0;
LABEL_8:
  v12 = [v6 aceId];

  if (v12)
  {
    if (!self->_sessionOriginatedCommandTable)
    {
      v13 = objc_alloc_init(NSMutableDictionary);
      sessionOriginatedCommandTable = self->_sessionOriginatedCommandTable;
      self->_sessionOriginatedCommandTable = v13;
    }

    v15 = [v6 aceId];
    v16 = self->_sessionOriginatedCommandTable;
    v17 = [v7 sessionId];
    [(NSMutableDictionary *)v16 setObject:v17 forKey:v15];
  }

  return v11;
}

- (id)_mapADRequestIdToSessionRequestId:(id)a3 forSession:(id)a4
{
  v5 = [(ADSessionManager *)self _keyForRequestId:a3 forSession:a4];
  if (v5)
  {
    v6 = [(NSMutableDictionary *)self->_proxiedIdMap valueForKey:v5];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)_keyForRequestId:(id)a3 forSession:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = [NSString alloc];
  v8 = [v5 sessionId];

  v9 = [v7 initWithFormat:@"%@.%@", v6, v8];

  return v9;
}

- (BOOL)_hasAtleastOneActiveSessionBesides:(id)a3
{
  v4 = a3;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v5 = self->_sessions;
  v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v17 objects:v25 count:16];
  if (v6)
  {
    v7 = *v18;
    while (2)
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v18 != v7)
        {
          objc_enumerationMutation(v5);
        }

        v9 = *(*(&v17 + 1) + 8 * i);
        v10 = [v9 sessionId];
        v11 = [v4 sessionId];
        v12 = [v10 isEqualToString:v11];

        if ((v12 & 1) == 0 && (([v9 sessionIsActive] & 1) != 0 || objc_msgSend(v9, "sessionIsAttemptingTryOrRetry")))
        {
          v13 = AFSiriLogContextSession;
          LOBYTE(v6) = 1;
          if (os_log_type_enabled(AFSiriLogContextSession, OS_LOG_TYPE_INFO))
          {
            v14 = v13;
            v15 = [v9 _adSessionTypeString];
            *buf = 136315394;
            v22 = "[ADSessionManager _hasAtleastOneActiveSessionBesides:]";
            v23 = 2112;
            v24 = v15;
            _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_INFO, "%s Session %@ is active or is in active retry", buf, 0x16u);
          }

          goto LABEL_14;
        }
      }

      v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v17 objects:v25 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

LABEL_14:

  return v6;
}

- (void)refreshValidationData
{
  if (self->_state <= 1)
  {
    [(ADSessionManager *)self _startSessions:0];
  }

  v10 = 0u;
  v11 = 0u;
  v8 = 0u;
  v9 = 0u;
  v3 = self->_sessions;
  v4 = [(NSMutableArray *)v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v9;
    do
    {
      v7 = 0;
      do
      {
        if (*v9 != v6)
        {
          objc_enumerationMutation(v3);
        }

        [*(*(&v8 + 1) + 8 * v7) refreshValidationData];
        v7 = v7 + 1;
      }

      while (v5 != v7);
      v5 = [(NSMutableArray *)v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v5);
  }
}

- (void)barrier:(id)a3
{
  v4 = a3;
  v5 = dispatch_group_create();
  v24[0] = 0;
  v24[1] = v24;
  v24[2] = 0x2020000000;
  v25 = 1;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  obj = self->_sessions;
  v6 = [(NSMutableArray *)obj countByEnumeratingWithState:&v20 objects:v26 count:16];
  v12 = v4;
  if (v6)
  {
    v7 = *v21;
    do
    {
      v8 = 0;
      do
      {
        if (*v21 != v7)
        {
          objc_enumerationMutation(obj);
        }

        v9 = *(*(&v20 + 1) + 8 * v8);
        dispatch_group_enter(v5);
        v17[0] = _NSConcreteStackBlock;
        v17[1] = 3221225472;
        v17[2] = sub_1000F0FAC;
        v17[3] = &unk_1005114A0;
        v17[4] = self;
        v19 = v24;
        v18 = v5;
        [v9 barrier:v17];

        v8 = v8 + 1;
      }

      while (v6 != v8);
      v6 = [(NSMutableArray *)obj countByEnumeratingWithState:&v20 objects:v26 count:16];
    }

    while (v6);
  }

  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000F104C;
  block[3] = &unk_10051C8E0;
  v15 = v12;
  v16 = v24;
  v11 = v12;
  dispatch_group_notify(v5, queue, block);

  _Block_object_dispose(v24, 8);
}

- (void)_logMetricsForSessionFailure:(id)a3 withError:(id)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = +[AFAnalytics sharedAnalytics];
  v23[0] = _NSConcreteStackBlock;
  v23[1] = 3221225472;
  v23[2] = sub_1000F12A4;
  v23[3] = &unk_10051A1A0;
  v12 = v8;
  v24 = v12;
  v13 = v9;
  v25 = v13;
  [v11 logEventWithType:921 contextProvider:v23 contextProvidingQueue:0];

  if (([v12 isEqualToString:@"local"] & 1) != 0 || (WeakRetained = objc_loadWeakRetained(&self->_delegate), v15 = objc_msgSend(WeakRetained, "assistantSessionManager:shouldLogVisibleRequestFailureForError:", self, v13), WeakRetained, (v15 & 1) == 0))
  {
    if (v10)
    {
      v10[2](v10);
    }
  }

  else
  {
    v16 = dispatch_group_create();
    dispatch_group_enter(v16);
    v21[0] = _NSConcreteStackBlock;
    v21[1] = 3221225472;
    v21[2] = sub_1000F138C;
    v21[3] = &unk_10051E150;
    v22 = v16;
    v17 = v16;
    [(ADSessionManager *)self getSNConnectionMetrics:v21];
    queue = self->_queue;
    v19[0] = _NSConcreteStackBlock;
    v19[1] = 3221225472;
    v19[2] = sub_1000F1668;
    v19[3] = &unk_10051CF58;
    v20 = v10;
    dispatch_group_notify(v17, queue, v19);
  }
}

- (void)_logCommandToMetrics:(id)a3 forSession:(id)a4 outbound:(BOOL)a5
{
  v5 = a5;
  v8 = a3;
  v9 = a4;
  if ([v8 ad_shouldLogToMetrics])
  {
    v10 = mach_absolute_time();
    if (v5)
    {
      v11 = 1200;
    }

    else
    {
      v11 = 1100;
    }

    v12 = [v8 aceId];
    v13 = [v12 copy];

    v14 = [v8 refId];
    v15 = [v14 copy];

    v16 = [v8 ad_deferredMetricsContext];
    v17 = +[AFAnalytics sharedAnalytics];
    v40[0] = _NSConcreteStackBlock;
    v40[1] = 3221225472;
    v40[2] = sub_1000F1AE4;
    v40[3] = &unk_100511450;
    v45 = v10;
    v18 = v13;
    v41 = v18;
    v39 = v15;
    v42 = v39;
    v43 = v9;
    v19 = v16;
    v44 = v19;
    [v17 logEventWithType:v11 machAbsoluteTime:v10 contextProvider:v40 contextProvidingQueue:0];

    v20 = [v8 encodedClassName];
    LODWORD(v16) = AFShouldEmitAceCommandContextSELFLog();

    if (v16)
    {
      requestId = self->_requestId;
      v22 = [v8 encodedClassName];
      v23 = requestId;
      v24 = v18;
      v25 = sub_1000105F4(v23);
      if (v25)
      {
        v37 = v23;
        if (v5)
        {
          v26 = 4;
        }

        else
        {
          v26 = 3;
        }

        v27 = objc_alloc_init(ORCHSchemaORCHClientEvent);
        v28 = objc_alloc_init(ORCHSchemaORCHClientEventMetadata);
        [v28 setRequestId:v25];
        [v27 setEventMetadata:v28];
        v38 = v24;
        v29 = objc_alloc_init(ORCHSchemaORCHAceCommandContext);
        v36 = v25;
        v30 = v22;
        v31 = objc_alloc_init(ORCHSchemaORCHAceCommandStarted);
        [v31 setAceCommandType:v26];
        [v31 setAceCommandName:v30];
        [v29 setStartedOrChanged:v31];
        v32 = sub_1000105F4(v38);
        [v29 setAceId:v32];

        [v27 setAceCommandContext:v29];
        v33 = +[AssistantSiriAnalytics sharedStream];
        [v33 emitMessage:v27];

        v23 = v37;
        v22 = v30;
        v25 = v36;

        v24 = v38;
      }

      else
      {
        v35 = AFSiriLogContextDaemon;
        if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315394;
          v47 = "_EmitAceCommandStartedEvent";
          v48 = 2112;
          v49 = v23;
          _os_log_error_impl(&_mh_execute_header, v35, OS_LOG_TYPE_ERROR, "%s The requestId=%@ is malformed, unable to log SELF command", buf, 0x16u);
        }
      }
    }
  }

  else
  {
    v34 = AFSiriLogContextSession;
    if (os_log_type_enabled(AFSiriLogContextSession, OS_LOG_TYPE_INFO))
    {
      *buf = 136315138;
      v47 = "[ADSessionManager _logCommandToMetrics:forSession:outbound:]";
      _os_log_impl(&_mh_execute_header, v34, OS_LOG_TYPE_INFO, "%s ! Command ad_shouldLogToMetrics", buf, 0xCu);
    }
  }
}

- (void)getSNConnectionMetrics:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v5 = objc_alloc_init(NSMutableArray);
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    v6 = self->_sessions;
    v7 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v17 objects:v21 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v18;
      while (2)
      {
        for (i = 0; i != v8; i = i + 1)
        {
          if (*v18 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v11 = *(*(&v17 + 1) + 8 * i);
          if (![v11 sessionType] || objc_msgSend(v11, "sessionType") == 1)
          {
            v13[0] = _NSConcreteStackBlock;
            v13[1] = 3221225472;
            v13[2] = sub_1000F1DF0;
            v13[3] = &unk_10051CE90;
            v14 = v5;
            v15 = v11;
            v16 = v4;
            [v11 getSNConnectionMetrics:v13];

            goto LABEL_13;
          }
        }

        v8 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v17 objects:v21 count:16];
        if (v8)
        {
          continue;
        }

        break;
      }
    }

    (*(v4 + 2))(v4, 0);
LABEL_13:
  }

  else
  {
    v12 = AFSiriLogContextSession;
    if (os_log_type_enabled(AFSiriLogContextSession, OS_LOG_TYPE_INFO))
    {
      *buf = 136315138;
      v23 = "[ADSessionManager getSNConnectionMetrics:]";
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_INFO, "%s Missing completion", buf, 0xCu);
    }
  }
}

- (void)updateConnectionSetConnectionType:(unsigned int)a3
{
  v4 = [(ADSessionManager *)self aggregator];
  [v4 setConnectionType:a3];
}

- (void)updateConnectionDidFailAggdMetrics
{
  v2 = [(ADSessionManager *)self aggregator];
  [v2 connectionDidFail];
}

- (void)updateConnectionDidDropAggdMetrics
{
  v2 = [(ADSessionManager *)self aggregator];
  [v2 connectionDidDrop];
}

- (id)sessionRequestIdForRefId:(id)a3
{
  v4 = a3;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v5 = self->_sessions;
  v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v15;
LABEL_3:
    v9 = 0;
    while (1)
    {
      if (*v15 != v8)
      {
        objc_enumerationMutation(v5);
      }

      v10 = [(ADSessionManager *)self _keyForRequestId:v4 forSession:*(*(&v14 + 1) + 8 * v9), v14];
      if (v10)
      {
        v11 = v10;
        v12 = [(NSMutableDictionary *)self->_proxiedIdMap valueForKey:v10];

        if (v12)
        {
          break;
        }
      }

      if (v7 == ++v9)
      {
        v7 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
        if (v7)
        {
          goto LABEL_3;
        }

        goto LABEL_10;
      }
    }
  }

  else
  {
LABEL_10:
    v12 = 0;
  }

  return v12;
}

- (void)setRequestId:(id)a3
{
  v48 = a3;
  v5 = AFSiriLogContextSession;
  if (os_log_type_enabled(AFSiriLogContextSession, OS_LOG_TYPE_INFO))
  {
    requestId = self->_requestId;
    *buf = 136315394;
    v59 = "[ADSessionManager setRequestId:]";
    v60 = 2112;
    v61 = requestId;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "%s Set (requestId = %@).", buf, 0x16u);
  }

  if (self->_requestId != v48)
  {
    v7 = +[SNNetworkAnalytics sharedSNNetworkAnalytics];
    v8 = [v7 isNetIdAvailable];

    if ((v8 & 1) == 0)
    {
      v9 = +[SNNetworkAnalytics sharedSNNetworkAnalytics];
      [v9 resetNetId];

      v10 = +[SNNetworkAnalytics sharedSNNetworkAnalytics];
      [v10 increaseSequenceNumber];
    }

    v11 = +[SNNetworkAnalytics sharedSNNetworkAnalytics];
    [v11 setOrchestratorRequestId:v48];

    v12 = +[SNNetworkAnalytics sharedSNNetworkAnalytics];
    [v12 logRequestLinkBetweenOrchestratorAndNetworkComponent];

    v13 = +[SNNetworkAnalytics sharedSNNetworkAnalytics];
    [v13 setNetIdAvailable:0];

    v47 = objc_alloc_init(NSMutableDictionary);
    objc_storeStrong(&self->_requestId, a3);
    if (!self->_proxiedIdMap)
    {
      v14 = objc_alloc_init(NSMutableDictionary);
      proxiedIdMap = self->_proxiedIdMap;
      self->_proxiedIdMap = v14;
    }

    if (!self->_reverseProxiedIdMap)
    {
      v16 = objc_alloc_init(NSMutableDictionary);
      reverseProxiedIdMap = self->_reverseProxiedIdMap;
      self->_reverseProxiedIdMap = v16;
    }

    sessionOriginatedCommandTable = self->_sessionOriginatedCommandTable;
    if (sessionOriginatedCommandTable)
    {
      [(NSMutableDictionary *)sessionOriginatedCommandTable removeAllObjects];
    }

    if (self->_requestId)
    {
      [v47 setObject:v48 forKey:@"originalRequestId"];
      v55 = 0u;
      v56 = 0u;
      v53 = 0u;
      v54 = 0u;
      obj = self->_sessions;
      v19 = [(NSMutableArray *)obj countByEnumeratingWithState:&v53 objects:v68 count:16];
      if (v19)
      {
        v20 = v19;
        v21 = *v54;
        do
        {
          for (i = 0; i != v20; i = i + 1)
          {
            if (*v54 != v21)
            {
              objc_enumerationMutation(obj);
            }

            v23 = *(*(&v53 + 1) + 8 * i);
            v24 = SiriCoreUUIDStringCreate();
            [v23 _setRequestId:v24];
            v25 = self->_proxiedIdMap;
            v26 = [(ADSessionManager *)self _keyForRequestId:v48 forSession:v23];
            [(NSMutableDictionary *)v25 setObject:v24 forKey:v26];

            v27 = self->_reverseProxiedIdMap;
            v28 = [(ADSessionManager *)self _keyForRequestId:v24 forSession:v23];
            [(NSMutableDictionary *)v27 setObject:v48 forKey:v28];

            v29 = [v23 _adSessionTypeString];
            v30 = [NSString stringWithFormat:@"%@SessionProxyId", v29];

            [v47 setObject:v24 forKey:v30];
            v31 = [v23 dequeueResultObjects];
            [v23 setHasActiveRequest:1];
            v32 = AFSiriLogContextSession;
            if (os_log_type_enabled(AFSiriLogContextSession, OS_LOG_TYPE_DEFAULT))
            {
              v33 = v32;
              v34 = [v23 _adSessionTypeString];
              v35 = [v23 sessionId];
              *buf = 136316162;
              v59 = "[ADSessionManager setRequestId:]";
              v60 = 2112;
              v61 = v48;
              v62 = 2112;
              v63 = v34;
              v64 = 2112;
              v65 = v35;
              v66 = 2112;
              v67 = v24;
              _os_log_impl(&_mh_execute_header, v33, OS_LOG_TYPE_DEFAULT, "%s Request Id %@ for %@ session with Id %@ has proxied request Id %@", buf, 0x34u);
            }
          }

          v20 = [(NSMutableArray *)obj countByEnumeratingWithState:&v53 objects:v68 count:16];
        }

        while (v20);
      }

      v36 = +[AFAnalytics sharedAnalytics];
      [v36 logEventWithType:918 context:v47];
    }

    [(ADSessionManager *)self _resetWinningState];
    winningSessionId = self->_winningSessionId;
    if (winningSessionId)
    {
      v38 = AFSiriLogContextSession;
      if (os_log_type_enabled(AFSiriLogContextSession, OS_LOG_TYPE_INFO))
      {
        *buf = 136315650;
        v59 = "[ADSessionManager setRequestId:]";
        v60 = 2112;
        v61 = winningSessionId;
        v62 = 2112;
        v63 = v48;
        _os_log_impl(&_mh_execute_header, v38, OS_LOG_TYPE_INFO, "%s Previous winner session %@ reused for current request %@", buf, 0x20u);
      }

      v51 = 0u;
      v52 = 0u;
      v49 = 0u;
      v50 = 0u;
      v39 = self->_sessions;
      v40 = [(NSMutableArray *)v39 countByEnumeratingWithState:&v49 objects:v57 count:16];
      if (v40)
      {
        v41 = *v50;
        while (2)
        {
          for (j = 0; j != v40; j = j + 1)
          {
            if (*v50 != v41)
            {
              objc_enumerationMutation(v39);
            }

            v43 = *(*(&v49 + 1) + 8 * j);
            v44 = self->_winningSessionId;
            v45 = [v43 sessionId];
            LODWORD(v44) = [(NSString *)v44 isEqualToString:v45];

            if (v44)
            {
              v40 = [v43 _adSessionTypeString];
              goto LABEL_36;
            }
          }

          v40 = [(NSMutableArray *)v39 countByEnumeratingWithState:&v49 objects:v57 count:16];
          if (v40)
          {
            continue;
          }

          break;
        }
      }

LABEL_36:

      [(ADSessionManager *)self _logContextForWinningSession:v40 forReason:@"arbiterReusedPreviousWinner" forRemoteSessionScore:0 forLocalSessionScore:0];
    }
  }
}

- (void)relinquishAssertion:(id)a3
{
  v4 = a3;
  v5 = AFSiriLogContextSession;
  if (os_log_type_enabled(AFSiriLogContextSession, OS_LOG_TYPE_INFO))
  {
    v6 = 136315394;
    v7 = "[ADSessionManager relinquishAssertion:]";
    v8 = 2112;
    v9 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "%s assertion = %@", &v6, 0x16u);
  }

  [(NSMutableSet *)self->_assertions removeObject:v4];
  [(ADSessionManager *)self _resetSessionOnRequestBoundaryIfNeeded];
}

- (id)acquireAssertionForReason:(id)a3
{
  v4 = a3;
  v5 = AFSiriLogContextSession;
  if (os_log_type_enabled(AFSiriLogContextSession, OS_LOG_TYPE_INFO))
  {
    v8 = 136315394;
    v9 = "[ADSessionManager acquireAssertionForReason:]";
    v10 = 2112;
    v11 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "%s reason = %@", &v8, 0x16u);
  }

  v6 = [[ADSessionAssertion alloc] initWithTimestamp:mach_absolute_time() reason:v4];
  [(NSMutableSet *)self->_assertions addObject:v6];

  return v6;
}

- (void)_clearSessions
{
  sessions = self->_sessions;
  if (sessions)
  {
    [(NSMutableArray *)sessions removeAllObjects];
  }
}

- (void)_addSession:(id)a3
{
  v4 = a3;
  sessions = self->_sessions;
  v8 = v4;
  if (!sessions)
  {
    v6 = objc_alloc_init(NSMutableArray);
    v7 = self->_sessions;
    self->_sessions = v6;

    v4 = v8;
    sessions = self->_sessions;
  }

  [(NSMutableArray *)sessions addObject:v4];
}

- (BOOL)hasSessionRequiringServerConnection
{
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v3 = self->_sessions;
  v4 = [(NSMutableArray *)v3 countByEnumeratingWithState:&v19 objects:v29 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v20;
    while (2)
    {
      v7 = 0;
      do
      {
        if (*v20 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v19 + 1) + 8 * v7);
        if ([v8 sessionRequiresServerConnection])
        {
LABEL_18:
          v14 = AFSiriLogContextSession;
          if (os_log_type_enabled(AFSiriLogContextSession, OS_LOG_TYPE_INFO))
          {
            v15 = v14;
            v16 = [v8 sessionId];
            requestId = self->_requestId;
            *buf = 136315650;
            v24 = "[ADSessionManager hasSessionRequiringServerConnection]";
            v25 = 2112;
            v26 = v16;
            v27 = 2112;
            v28 = requestId;
            _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_INFO, "%s Session with Id %@ needs server connection (requestId = %@).", buf, 0x20u);
          }

          LOBYTE(v12) = 1;
          return v12;
        }

        if ([v8 sessionRequiresSync])
        {
          v9 = [v8 _requestId];
          if (v9 || self->_requestId)
          {
          }

          else if (!self->_isLocalRequest)
          {
            goto LABEL_18;
          }
        }

        v7 = v7 + 1;
      }

      while (v5 != v7);
      v10 = [(NSMutableArray *)v3 countByEnumeratingWithState:&v19 objects:v29 count:16];
      v5 = v10;
      if (v10)
      {
        continue;
      }

      break;
    }
  }

  v11 = AFSiriLogContextSession;
  v12 = os_log_type_enabled(AFSiriLogContextSession, OS_LOG_TYPE_INFO);
  if (v12)
  {
    v13 = self->_requestId;
    *buf = 136315394;
    v24 = "[ADSessionManager hasSessionRequiringServerConnection]";
    v25 = 2112;
    v26 = v13;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "%s No server connection needed (requestId = %@).", buf, 0x16u);
    LOBYTE(v12) = 0;
  }

  return v12;
}

- (void)setHasActiveRequest:(BOOL)a3
{
  v3 = a3;
  v5 = AFSiriLogContextSession;
  if (os_log_type_enabled(AFSiriLogContextSession, OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v31 = "[ADSessionManager setHasActiveRequest:]";
    v32 = 1024;
    v33 = v3;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "%s %d", buf, 0x12u);
  }

  self->_hasActiveRequest = v3;
  v6 = [(ADSessionManager *)self aggregator];
  [v6 setHasActiveRequest:v3];

  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  v7 = self->_sessions;
  v8 = [(NSMutableArray *)v7 countByEnumeratingWithState:&v24 objects:v29 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v25;
    do
    {
      for (i = 0; i != v9; i = i + 1)
      {
        if (*v25 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v24 + 1) + 8 * i);
        [v12 setHasActiveRequest:v3];
        [v12 _resetSessionRequiresServerConnection];
        [v12 _resetSessionRequiresSync];
      }

      v9 = [(NSMutableArray *)v7 countByEnumeratingWithState:&v24 objects:v29 count:16];
    }

    while (v9);
  }

  if (v3)
  {
    [(ADSessionManager *)self _resetSessionOnRequestBoundaryIfNeeded];
    if (self->_state == 3)
    {
LABEL_23:
      WeakRetained = objc_loadWeakRetained(&self->_delegate);
      [(NSMutableArray *)WeakRetained assistantSessionManagerConnectionDidBecomeActive:self];
    }

    else
    {
      v22 = 0u;
      v23 = 0u;
      v20 = 0u;
      v21 = 0u;
      WeakRetained = self->_sessions;
      v14 = [(NSMutableArray *)WeakRetained countByEnumeratingWithState:&v20 objects:v28 count:16];
      if (v14)
      {
        v15 = v14;
        v16 = *v21;
        while (2)
        {
          for (j = 0; j != v15; j = j + 1)
          {
            if (*v21 != v16)
            {
              objc_enumerationMutation(WeakRetained);
            }

            if ([*(*(&v20 + 1) + 8 * j) sessionIsActive])
            {

              goto LABEL_23;
            }
          }

          v15 = [(NSMutableArray *)WeakRetained countByEnumeratingWithState:&v20 objects:v28 count:16];
          if (v15)
          {
            continue;
          }

          break;
        }
      }
    }
  }

  else
  {
    [(ADSessionManager *)self _resetResultObjectsTimer];
    self->_isQueuingResultsForDelayedEvaluation = 0;
    requestId = self->_requestId;
    self->_requestId = 0;

    v19 = +[SNNetworkAnalytics sharedSNNetworkAnalytics];
    [v19 setOrchestratorRequestId:0];

    [(ADSessionManager *)self _resetSessionOnRequestBoundaryIfNeeded];
  }
}

- (void)sendRawCommand:(id)a3 opportunistically:(BOOL)a4 logEvent:(BOOL)a5
{
  v5 = a5;
  v6 = a4;
  v8 = a3;
  v9 = AFSiriLogContextSession;
  if (os_log_type_enabled(AFSiriLogContextSession, OS_LOG_TYPE_DEBUG))
  {
    v10 = 136315394;
    v11 = "[ADSessionManager sendRawCommand:opportunistically:logEvent:]";
    v12 = 2112;
    v13 = v8;
    _os_log_debug_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEBUG, "%s command: %@", &v10, 0x16u);
  }

  [(ADSessionManager *)self _sendCommand:v8 opportunistically:v6 logEvent:v5 doSendPreProcessing:0 doSendPostProcessing:0];
}

- (void)sendCommand:(id)a3 opportunistically:(BOOL)a4 logEvent:(BOOL)a5
{
  v5 = a5;
  v6 = a4;
  v8 = a3;
  v9 = AFSiriLogContextSession;
  if (os_log_type_enabled(AFSiriLogContextSession, OS_LOG_TYPE_DEBUG))
  {
    v10 = 136315394;
    v11 = "[ADSessionManager sendCommand:opportunistically:logEvent:]";
    v12 = 2112;
    v13 = v8;
    _os_log_debug_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEBUG, "%s command: %@", &v10, 0x16u);
  }

  [(ADSessionManager *)self _sendCommand:v8 opportunistically:v6 logEvent:v5 doSendPreProcessing:1 doSendPostProcessing:1];
}

- (void)setCurrentRequest:(id)a3
{
  v4 = a3;
  v5 = AFSiriLogContextSession;
  if (os_log_type_enabled(AFSiriLogContextSession, OS_LOG_TYPE_INFO))
  {
    currentRequest = self->_currentRequest;
    v8 = 136315650;
    v9 = "[ADSessionManager setCurrentRequest:]";
    v10 = 2112;
    v11 = currentRequest;
    v12 = 2112;
    v13 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "%s %@ -> %@", &v8, 0x20u);
  }

  v7 = self->_currentRequest;
  self->_currentRequest = v4;
}

- (void)_sendCommand:(id)a3 opportunistically:(BOOL)a4 logEvent:(BOOL)a5 doSendPreProcessing:(BOOL)a6 doSendPostProcessing:(BOOL)a7
{
  v19[0] = _NSConcreteStackBlock;
  v19[1] = 3221225472;
  v19[2] = sub_1000F345C;
  v19[3] = &unk_10051B618;
  v19[4] = self;
  v21 = a4;
  v11 = a3;
  v20 = v11;
  v22 = a5;
  v23 = a6;
  v24 = a7;
  v12 = objc_retainBlock(v19);
  WeakRetained = objc_loadWeakRetained(&self->_interceptor);
  if (WeakRetained && (v14 = objc_loadWeakRetained(&self->_interceptor), v15 = [v14 isInterceptingCommands], v14, v15))
  {
    v16[0] = _NSConcreteStackBlock;
    v16[1] = 3221225472;
    v16[2] = sub_1000F3B6C;
    v16[3] = &unk_100516408;
    v16[4] = self;
    v18 = v12;
    v17 = v11;
    [WeakRetained interceptCommand:v17 completion:v16];
  }

  else
  {
    (v12[2])(v12);
  }
}

- (void)delegateDidHandleCommand:(id)a3
{
  v4 = a3;
  v5 = [v4 aceId];
  if (v5)
  {
    if (self->_serverSpeechRecognitionArrived)
    {
      v6 = 1;
    }

    else
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v7 = AFSiriLogContextSession;
        v6 = 1;
        if (os_log_type_enabled(AFSiriLogContextSession, OS_LOG_TYPE_INFO))
        {
          *buf = 136315138;
          v23 = "[ADSessionManager delegateDidHandleCommand:]";
          _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "%s Final speech recognition arrived", buf, 0xCu);
        }

        self->_serverSpeechRecognitionArrived = 1;
      }

      else
      {
        v6 = 0;
      }
    }

    v19 = 0u;
    v20 = 0u;
    v17 = 0u;
    v18 = 0u;
    v8 = self->_sessions;
    v9 = [(NSMutableArray *)v8 countByEnumeratingWithState:&v17 objects:v21 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v18;
      do
      {
        for (i = 0; i != v10; i = i + 1)
        {
          if (*v18 != v11)
          {
            objc_enumerationMutation(v8);
          }

          v13 = *(*(&v17 + 1) + 8 * i);
          v14 = [(ADSessionManager *)self _mapADRequestIdToSessionRequestId:v5 forSession:v13, v17];
          v15 = v14;
          if (v14)
          {
            v16 = v14;
          }

          else
          {
            v16 = v5;
          }

          [v13 delegateDidHandleCommand:v16 didRecognizeSpeech:v6];
        }

        v10 = [(NSMutableArray *)v8 countByEnumeratingWithState:&v17 objects:v21 count:16];
      }

      while (v10);
    }
  }
}

- (void)handleCommand:(id)a3
{
  v4 = a3;
  v5 = AFSiriLogContextSession;
  if (os_log_type_enabled(AFSiriLogContextSession, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315394;
    v18 = "[ADSessionManager handleCommand:]";
    v19 = 2112;
    v20 = v4;
    _os_log_debug_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEBUG, "%s Bounce back command is %@", buf, 0x16u);
  }

  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v6 = self->_sessions;
  v7 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v13;
LABEL_5:
    v10 = 0;
    while (1)
    {
      if (*v13 != v9)
      {
        objc_enumerationMutation(v6);
      }

      if ([(ADSessionManager *)self _reverseMapSessionRequestIdToADRequestId:v4 forSession:*(*(&v12 + 1) + 8 * v10), v12])
      {
        break;
      }

      if (v8 == ++v10)
      {
        v8 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
        if (v8)
        {
          goto LABEL_5;
        }

        break;
      }
    }
  }

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained assistantSessionManager:self receivedCommand:v4];
}

- (void)_convertEmbeddedRequestIds:(id)a3 originalCommand:(id)a4 session:(id)a5
{
  v8 = a3;
  v9 = a5;
  v10 = [a4 siriCore_requestId];
  if (v10)
  {
    v11 = [(ADSessionManager *)self _mapADRequestIdToSessionRequestId:v10 forSession:v9];
    if (v11)
    {
      v12 = v11;
      v13 = AFSiriLogContextSession;
      if (os_log_type_enabled(AFSiriLogContextSession, OS_LOG_TYPE_DEBUG))
      {
        v14 = 136315394;
        v15 = "[ADSessionManager _convertEmbeddedRequestIds:originalCommand:session:]";
        v16 = 2112;
        v17 = v12;
        _os_log_debug_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEBUG, "%s Setting RequestId to %@", &v14, 0x16u);
      }

      [v8 siriCore_setSessionRequestId:v12];
    }
  }
}

- (BOOL)_allowAllowedCommands:(id)a3
{
  v3 = qword_100590110;
  v4 = a3;
  if (v3 != -1)
  {
    dispatch_once(&qword_100590110, &stru_100511428);
  }

  v5 = [qword_100590118 containsObject:v4];

  return v5;
}

- (BOOL)_filterUnsupportedCommands:(id)a3 inGroup:(id)a4 onSession:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (!v8)
  {
    goto LABEL_15;
  }

  if ([v9 isEqualToString:SASyncGroupIdentifier])
  {
    v11 = AFSiriLogContextSession;
    if (os_log_type_enabled(AFSiriLogContextSession, OS_LOG_TYPE_DEBUG))
    {
      v20 = 136315138;
      v21 = "[ADSessionManager _filterUnsupportedCommands:inGroup:onSession:]";
      _os_log_debug_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEBUG, "%s SASyncGroupIdentifier", &v20, 0xCu);
    }

    isKindOfClass = [v10 supportsSync];
    goto LABEL_6;
  }

  if ([v10 sessionType] == 1)
  {
    if (([v8 siriCore_supportedByRemoteLimitedSession] & 1) == 0)
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        objc_opt_class();
        isKindOfClass = objc_opt_isKindOfClass();
LABEL_6:
        v13 = isKindOfClass;
        goto LABEL_16;
      }
    }

LABEL_15:
    v13 = 1;
    goto LABEL_16;
  }

  if ([v10 sessionType] != 2)
  {
    goto LABEL_15;
  }

  v14 = [(ADSessionManager *)self isCommandAllowedToBeHandledOnClient:objc_opt_class()];
  v15 = AFSiriLogContextSession;
  if (v14)
  {
    if (os_log_type_enabled(AFSiriLogContextSession, OS_LOG_TYPE_DEBUG))
    {
      v18 = v15;
      v20 = 136315394;
      v21 = "[ADSessionManager _filterUnsupportedCommands:inGroup:onSession:]";
      v22 = 2112;
      v23 = objc_opt_class();
      v19 = v23;
      _os_log_debug_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEBUG, "%s passThrough for isCommandAllowedToBeHandledOnClient %@", &v20, 0x16u);
    }

    goto LABEL_15;
  }

  if (os_log_type_enabled(AFSiriLogContextSession, OS_LOG_TYPE_INFO))
  {
    v17 = v15;
    v20 = 136315650;
    v21 = "[ADSessionManager _filterUnsupportedCommands:inGroup:onSession:]";
    v22 = 2112;
    v23 = v8;
    v24 = 1024;
    v25 = [v10 sessionType];
    _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_INFO, "%s Filtering out command %@ for {session type: %d}", &v20, 0x1Cu);
  }

  v13 = 0;
LABEL_16:

  return v13 & 1;
}

- (BOOL)isCommandAllowedToBeHandledOnClient:(id)a3
{
  v3 = a3;
  v7 = objc_opt_class();
  v4 = [NSArray arrayWithObjects:&v7 count:1];
  v5 = [v4 containsObject:v3];

  return v5;
}

- (void)assistantSessionConnectionDidClose:(id)a3
{
  if (![(ADSessionManager *)self _hasAtleastOneActiveSessionBesides:a3])
  {

    [(ADSessionManager *)self _unregisterForSleepNotification];
  }
}

- (void)assistantSessionRetryingRequest:(id)a3
{
  v4 = a3;
  if ([v4 sessionType] && objc_msgSend(v4, "sessionType") != 1)
  {
    v6 = AFSiriLogContextSession;
    if (os_log_type_enabled(AFSiriLogContextSession, OS_LOG_TYPE_ERROR))
    {
      v7 = v6;
      v8 = 136315394;
      v9 = "[ADSessionManager assistantSessionRetryingRequest:]";
      v10 = 1024;
      v11 = [v4 sessionType];
      _os_log_error_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "%s Unexpected Session retry request called for {session type: %d}", &v8, 0x12u);
    }
  }

  else
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    [WeakRetained assistantSessionManagerRetryingRequestOnRemoteSession:self];
  }
}

- (void)assistantSession:(id)a3 beginSessionRetryPreferringWWAN:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  if ([v6 sessionType] && objc_msgSend(v6, "sessionType") != 1)
  {
    v9 = AFSiriLogContextSession;
    if (os_log_type_enabled(AFSiriLogContextSession, OS_LOG_TYPE_ERROR))
    {
      v10 = v9;
      v11 = 136315394;
      v12 = "[ADSessionManager assistantSession:beginSessionRetryPreferringWWAN:]";
      v13 = 1024;
      v14 = [v6 sessionType];
      _os_log_error_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "%s Unexpected: Session beginSessionRetryPreferringWWAN called for {session type: %d}", &v11, 0x12u);
    }
  }

  else
  {
    v7 = AFSiriLogContextSession;
    if (os_log_type_enabled(AFSiriLogContextSession, OS_LOG_TYPE_INFO))
    {
      v11 = 136315138;
      v12 = "[ADSessionManager assistantSession:beginSessionRetryPreferringWWAN:]";
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "%s Session begin retry preferring WWAN", &v11, 0xCu);
    }

    v8 = [(ADSessionManager *)self aggregator];
    [v8 beginSessionRetryPreferringWWAN:v4];
  }
}

- (void)assistantSession:(id)a3 willRetryOnError:(id)a4
{
  v5 = a4;
  v6 = AFSiriLogContextSession;
  if (os_log_type_enabled(AFSiriLogContextSession, OS_LOG_TYPE_INFO))
  {
    v8 = 136315138;
    v9 = "[ADSessionManager assistantSession:willRetryOnError:]";
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "%s Session will retry on error", &v8, 0xCu);
  }

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained assistantSessionManager:self willRetryOnError:v5];
}

- (void)assistantSession:(id)a3 didLoadAssistantSyncRequested:(BOOL)a4
{
  v4 = a4;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained assistantSessionManager:self didLoadAssistantSyncRequested:v4];
}

- (void)assistantSessionDidDestroyAssistant:(id)a3
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained assistantSessionManagerDidDestroyAssistant:self];
}

- (void)assistantSessionDidCreateAssistant:(id)a3
{
  v4 = AFSiriLogContextSession;
  if (os_log_type_enabled(AFSiriLogContextSession, OS_LOG_TYPE_INFO))
  {
    v6 = 136315138;
    v7 = "[ADSessionManager assistantSessionDidCreateAssistant:]";
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "%s Session did create assistant", &v6, 0xCu);
  }

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained assistantSessionManagerDidCreateAssistant:self];
}

- (void)assistantSession:(id)a3 didChangeRequestIdFrom:(id)a4 toId:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(ADSessionManager *)self _keyForRequestId:v9 forSession:v8];
  v12 = self->_requestId;
  v13 = AFSiriLogContextSession;
  if (os_log_type_enabled(AFSiriLogContextSession, OS_LOG_TYPE_INFO))
  {
    v22 = 136315906;
    v23 = "[ADSessionManager assistantSession:didChangeRequestIdFrom:toId:]";
    v24 = 2112;
    v25 = v12;
    v26 = 2112;
    v27 = v9;
    v28 = 2112;
    v29 = v10;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_INFO, "%s Request Id is %@ and oldSessionRequestId is %@ newSessionRequestId is %@", &v22, 0x2Au);
  }

  if (v12)
  {
    proxiedIdMap = self->_proxiedIdMap;
    v15 = [(ADSessionManager *)self _keyForRequestId:v12 forSession:v8];
    [(NSMutableDictionary *)proxiedIdMap setObject:v10 forKey:v15];

    [(NSMutableDictionary *)self->_reverseProxiedIdMap removeObjectForKey:v11];
    reverseProxiedIdMap = self->_reverseProxiedIdMap;
    v17 = [(ADSessionManager *)self _keyForRequestId:v10 forSession:v8];
    [(NSMutableDictionary *)reverseProxiedIdMap setObject:v12 forKey:v17];

    v18 = [v8 dequeueResultObjects];
    v19 = AFSiriLogContextSession;
    if (os_log_type_enabled(AFSiriLogContextSession, OS_LOG_TYPE_INFO))
    {
      v20 = self->_proxiedIdMap;
      v21 = self->_reverseProxiedIdMap;
      v22 = 136315650;
      v23 = "[ADSessionManager assistantSession:didChangeRequestIdFrom:toId:]";
      v24 = 2112;
      v25 = v20;
      v26 = 2112;
      v27 = v21;
      _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_INFO, "%s Proxied map is %@ reverse Proxied map is %@", &v22, 0x20u);
    }
  }
}

- (id)assistantSessionCommandsToRestoreStateOnNewConnection:(id)a3
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v5 = [WeakRetained assistantSessionManagerCommandsToRestoreStateOnNewConnection:self];

  return v5;
}

- (BOOL)assistantSessionShouldAttemptRetry:(id)a3
{
  v4 = AFSiriLogContextSession;
  if (os_log_type_enabled(AFSiriLogContextSession, OS_LOG_TYPE_INFO))
  {
    v8 = 136315138;
    v9 = "[ADSessionManager assistantSessionShouldAttemptRetry:]";
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "%s Session should attempt retry", &v8, 0xCu);
  }

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v6 = [WeakRetained assistantSessionManagerShouldAttemptRetry:self];

  return v6;
}

- (void)assistantSessionConnectionDidReset:(id)a3
{
  v4 = a3;
  v5 = AFSiriLogContextSession;
  if (os_log_type_enabled(AFSiriLogContextSession, OS_LOG_TYPE_INFO))
  {
    v6 = v5;
    v7 = [v4 _adSessionTypeString];
    v13 = 136315394;
    v14 = "[ADSessionManager assistantSessionConnectionDidReset:]";
    v15 = 2112;
    v16 = v7;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "%s Session %@ connection did reset", &v13, 0x16u);
  }

  if (![v4 sessionType] || objc_msgSend(v4, "sessionType") == 1)
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    [WeakRetained assistantSessionManagerSessionRemoteConnectionDidReset:self];
LABEL_6:

    goto LABEL_8;
  }

  v9 = AFSiriLogContextSession;
  if (os_log_type_enabled(AFSiriLogContextSession, OS_LOG_TYPE_ERROR))
  {
    WeakRetained = v9;
    v11 = [v4 _adSessionTypeString];
    v12 = [v4 sessionType];
    v13 = 136315650;
    v14 = "[ADSessionManager assistantSessionConnectionDidReset:]";
    v15 = 2112;
    v16 = v11;
    v17 = 1024;
    v18 = v12;
    _os_log_error_impl(&_mh_execute_header, WeakRetained, OS_LOG_TYPE_ERROR, "%s Unexpected: Session %@ connection did reset for {session type: %d}", &v13, 0x1Cu);

    goto LABEL_6;
  }

LABEL_8:
  if (![(ADSessionManager *)self _hasAtleastOneActiveSessionBesides:v4])
  {
    v10 = objc_loadWeakRetained(&self->_delegate);
    [v10 assistantSessionManagerSessionConnectionDidReset:self];
  }
}

- (BOOL)assistantSessionShouldLogVisibleRequestFailure:(id)a3 forError:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = AFSiriLogContextSession;
  if (os_log_type_enabled(AFSiriLogContextSession, OS_LOG_TYPE_ERROR))
  {
    v13 = 136315138;
    v14 = "[ADSessionManager assistantSessionShouldLogVisibleRequestFailure:forError:]";
    _os_log_error_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "%s ", &v13, 0xCu);
  }

  if ([(ADSessionManager *)self _hasAtleastOneActiveSessionBesides:v6])
  {
    LOBYTE(v9) = 0;
  }

  else
  {
    v10 = AFSiriLogContextSession;
    if (os_log_type_enabled(AFSiriLogContextSession, OS_LOG_TYPE_INFO))
    {
      v13 = 136315138;
      v14 = "[ADSessionManager assistantSessionShouldLogVisibleRequestFailure:forError:]";
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "%s Session log visible request failure", &v13, 0xCu);
    }

    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    v9 = [WeakRetained assistantSessionManager:self shouldLogVisibleRequestFailureForError:v7] ^ 1;
  }

  return v9;
}

- (void)assistantSession:(id)a3 receivedIntermediateError:(id)a4
{
  v5 = a4;
  v6 = AFSiriLogContextSession;
  if (os_log_type_enabled(AFSiriLogContextSession, OS_LOG_TYPE_ERROR))
  {
    v8 = 136315138;
    v9 = "[ADSessionManager assistantSession:receivedIntermediateError:]";
    _os_log_error_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, "%s ", &v8, 0xCu);
  }

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained assistantSessionManager:self didObserverIntermediateError:v5];
}

- (void)assistantSession:(id)a3 receivedError:(id)a4 isRetryableError:(BOOL)a5
{
  v5 = a5;
  v8 = a3;
  v9 = a4;
  v10 = AFSiriLogContextSession;
  if (os_log_type_enabled(AFSiriLogContextSession, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315138;
    v28 = "[ADSessionManager assistantSession:receivedError:isRetryableError:]";
    _os_log_error_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "%s ", buf, 0xCu);
  }

  v11 = self->_winningSessionId;
  if (!self->_hasActiveRequest && (![v8 sessionType] || objc_msgSend(v8, "sessionType") == 1))
  {
    goto LABEL_9;
  }

  if (v11)
  {
    v12 = [v8 sessionId];
    v13 = [v12 isEqualToString:v11];

    if (v13)
    {
      [(ADSessionManager *)self _resetWinningState];
LABEL_9:
      v14 = 0;
      goto LABEL_11;
    }
  }

  v14 = 1;
LABEL_11:
  v15 = AFSiriLogContextSession;
  if (os_log_type_enabled(AFSiriLogContextSession, OS_LOG_TYPE_INFO))
  {
    preferredSessionType = self->_preferredSessionType;
    *buf = 136315906;
    v28 = "[ADSessionManager assistantSession:receivedError:isRetryableError:]";
    v29 = 1024;
    *v30 = preferredSessionType;
    *&v30[4] = 2112;
    *&v30[6] = v9;
    v31 = 1024;
    v32 = v14;
    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_INFO, "%s Session received error {session type: %d, error: %@, isRecoverable: %d}", buf, 0x22u);
  }

  if (v14 && [(ADSessionManager *)self _hasAtleastOneActiveSessionBesides:v8])
  {
    v17 = AFSiriLogContextSession;
    if (os_log_type_enabled(AFSiriLogContextSession, OS_LOG_TYPE_INFO))
    {
      *buf = 136315650;
      v28 = "[ADSessionManager assistantSession:receivedError:isRetryableError:]";
      v29 = 2112;
      *v30 = v9;
      *&v30[8] = 1024;
      *&v30[10] = v5;
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_INFO, "%s Session received error but other active sessions present. Ignoring error %@ %d", buf, 0x1Cu);
    }

    v18 = [v8 dequeueResultObjects];
    if (v5)
    {
      if (self->_requestId)
      {
        [v8 prepareForRetry];
        [v8 startRetry];
      }
    }

    else
    {
      objc_storeStrong(&self->_lastSessionError, a4);
      v20 = [v8 _adSessionTypeString];
      [(ADSessionManager *)self _logMetricsForSessionFailure:v20 withError:v9 completion:0];
    }

    if ([v8 sessionType] && objc_msgSend(v8, "sessionType") != 1)
    {
      v22 = AFSiriLogContextSession;
      if (os_log_type_enabled(AFSiriLogContextSession, OS_LOG_TYPE_INFO))
      {
        v23 = self->_preferredSessionType;
        *buf = 136315906;
        v28 = "[ADSessionManager assistantSession:receivedError:isRetryableError:]";
        v29 = 1024;
        *v30 = v23;
        *&v30[4] = 2112;
        *&v30[6] = v9;
        v31 = 1024;
        v32 = 1;
        _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_INFO, "%s Not retrying session {session type: %d, error: %@, isRecoverable: %d}", buf, 0x22u);
      }
    }

    else
    {
      self->_state = 1;
    }

    if (self->_hasActiveRequest)
    {
      WeakRetained = objc_loadWeakRetained(&self->_delegate);
      [WeakRetained assistantSessionManager:self didObserverIntermediateError:v9];
    }
  }

  else if (v5 || !self->_hasActiveRequest)
  {
    v19 = objc_loadWeakRetained(&self->_delegate);
    [v19 assistantSessionManager:self receivedError:v9 isRetryableError:v5];
  }

  else
  {
    objc_storeStrong(&self->_lastSessionError, a4);
    v24[0] = _NSConcreteStackBlock;
    v24[1] = 3221225472;
    v24[2] = sub_1000F565C;
    v24[3] = &unk_10051C890;
    v24[4] = self;
    v25 = v9;
    v26 = v5;
    [(ADSessionManager *)self _logMetricsForSessionFailure:@"all" withError:v25 completion:v24];
  }
}

- (void)assistantSession:(id)a3 cannotHandleRequest:(id)a4 error:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = AFSiriLogContextSession;
  if (os_log_type_enabled(AFSiriLogContextSession, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315138;
    v26 = "[ADSessionManager assistantSession:cannotHandleRequest:error:]";
    _os_log_error_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, "%s ", buf, 0xCu);
  }

  v12 = [v9 refId];
  if (v12)
  {
    v13 = [(ADSessionManager *)self _keyForRequestId:v12 forSession:v8];
    if (v13)
    {
      v14 = [(NSMutableDictionary *)self->_reverseProxiedIdMap valueForKey:v13];
    }

    else
    {
      v14 = 0;
    }
  }

  else
  {
    v14 = 0;
    v13 = 0;
  }

  if (![v14 isEqualToString:self->_requestId])
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    [(NSError *)WeakRetained assistantSessionManager:self receivedCommand:v9];
LABEL_13:

    goto LABEL_14;
  }

  [v8 setHasActiveRequest:0];
  v15 = [v8 sessionId];
  v16 = [v15 isEqualToString:self->_winningSessionId];

  if (!v16)
  {
    if ([(ADSessionManager *)self _hasAtleastOneActiveSessionBesides:v8])
    {
      [(ADSessionManager *)self _pickDefaultWinnerWithDroppingSession:v8];
      [v8 setCanHandleRequest:0];
      goto LABEL_14;
    }

    v19 = v10;
    if (!v19)
    {
      lastSessionError = self->_lastSessionError;
      if (lastSessionError)
      {
        v21 = lastSessionError;
      }

      else
      {
        v21 = [AFError errorWithCode:2001];
      }

      v19 = v21;
    }

    v22 = [v8 _adSessionTypeString];
    v23[0] = _NSConcreteStackBlock;
    v23[1] = 3221225472;
    v23[2] = sub_1000F59A8;
    v23[3] = &unk_10051E010;
    v23[4] = self;
    v24 = v19;
    WeakRetained = v19;
    [(ADSessionManager *)self _logMetricsForSessionFailure:v22 withError:WeakRetained completion:v23];

    goto LABEL_13;
  }

  v17 = AFSiriLogContextSession;
  if (os_log_type_enabled(AFSiriLogContextSession, OS_LOG_TYPE_INFO))
  {
    *buf = 136315138;
    v26 = "[ADSessionManager assistantSession:cannotHandleRequest:error:]";
    _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_INFO, "%s Ignoring as the winner has been chosen already.", buf, 0xCu);
  }

LABEL_14:
}

- (void)assistantSession:(id)a3 receivedCommand:(id)a4
{
  v6 = a3;
  v7 = a4;
  [(ADSessionManager *)self _reverseMapSessionRequestIdToADRequestId:v7 forSession:v6];
  if (!self->_requestId)
  {
    goto LABEL_20;
  }

  if ([(ADSessionManager *)self _isDestructive:v7])
  {
    [(ADSessionManager *)self _logCommandToMetrics:v7 forSession:v6 outbound:0];
    p_winningSessionId = &self->_winningSessionId;
    if (!self->_winningSessionId)
    {
      if ([(NSMutableArray *)self->_sessions count]>= 2)
      {
        v24 = 0;
        v9 = [(ADSessionManager *)self _haveUsefulness:v7 usefulnessScore:&v24];
        WeakRetained = v24;
        if (v9)
        {
          [v6 setOrUpdateUsefulnessScore:WeakRetained];
        }

        [(ADSessionManager *)self _queueResultObject:v7 forSession:v6];
        goto LABEL_21;
      }

      v18 = AFSiriLogContextDaemon;
      if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
      {
        v19 = v18;
        v20 = [v6 sessionId];
        v21 = [v7 encodedClassName];
        *buf = 136315650;
        v26 = "[ADSessionManager assistantSession:receivedCommand:]";
        v27 = 2112;
        v28 = v20;
        v29 = 2112;
        v30 = v21;
        _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_INFO, "%s Session %@ wins with command %@", buf, 0x20u);
      }

      v22 = [v6 _adSessionTypeString];
      [(ADSessionManager *)self _logContextForWinningSession:v22 forReason:@"defaultSessionHasResults" forRemoteSessionScore:0 forLocalSessionScore:0];

      v23 = [v7 refId];
      [(ADSessionManager *)self _cancelOtherSessionRequests:v6 forRefId:v23];

LABEL_20:
      WeakRetained = objc_loadWeakRetained(&self->_delegate);
      [WeakRetained assistantSessionManager:self receivedCommand:v7];
LABEL_21:

      goto LABEL_22;
    }
  }

  else
  {
    p_winningSessionId = &self->_winningSessionId;
    if (!self->_winningSessionId)
    {
      goto LABEL_20;
    }
  }

  v11 = [v7 encodedClassName];
  v12 = [(ADSessionManager *)self _allowAllowedCommands:v11];

  if (v12)
  {
    goto LABEL_20;
  }

  v13 = *p_winningSessionId;
  v14 = [v6 sessionId];
  LODWORD(v13) = [(NSString *)v13 isEqualToString:v14];

  if (v13)
  {
    goto LABEL_20;
  }

  v15 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    *buf = 136315138;
    v26 = "[ADSessionManager assistantSession:receivedCommand:]";
    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_INFO, "%s Dropping command not from winning session.", buf, 0xCu);
  }

  if ([v7 ad_requiresResponse])
  {
    v16 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
    {
      *buf = 136315138;
      v26 = "[ADSessionManager assistantSession:receivedCommand:]";
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_INFO, "%s Sending CommandFailed as command required response.", buf, 0xCu);
    }

    WeakRetained = [[SACommandFailed alloc] initWithReason:@"Session Lost"];
    v17 = [v7 aceId];
    [WeakRetained setRefId:v17];

    [(ADSessionManager *)self sendCommand:WeakRetained opportunistically:0 logEvent:0];
    goto LABEL_21;
  }

LABEL_22:
}

- (void)assistantSession:(id)a3 didOpenConnectionWithPolicyId:(id)a4 routeId:(id)a5 connectionDelay:(double)a6
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v12 = AFSiriLogContextSession;
  if (os_log_type_enabled(AFSiriLogContextSession, OS_LOG_TYPE_INFO))
  {
    v13 = v12;
    *buf = 136315394;
    v29 = "[ADSessionManager assistantSession:didOpenConnectionWithPolicyId:routeId:connectionDelay:]";
    v30 = 1024;
    v31 = [v9 sessionType];
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_INFO, "%s Session did open connection with type %d", buf, 0x12u);
  }

  if (self->_state <= 2)
  {
    v25 = 0u;
    v26 = 0u;
    v23 = 0u;
    v24 = 0u;
    v14 = self->_sessions;
    v15 = [(NSMutableArray *)v14 countByEnumeratingWithState:&v23 objects:v27 count:16];
    if (v15)
    {
      v16 = v15;
      v17 = 0;
      v18 = *v24;
      do
      {
        for (i = 0; i != v16; i = i + 1)
        {
          if (*v24 != v18)
          {
            objc_enumerationMutation(v14);
          }

          v17 += [*(*(&v23 + 1) + 8 * i) sessionIsActive];
        }

        v16 = [(NSMutableArray *)v14 countByEnumeratingWithState:&v23 objects:v27 count:16];
      }

      while (v16);

      if (v17 && v17 == [(NSMutableArray *)self->_sessions count])
      {
        v20 = AFSiriLogContextSession;
        if (os_log_type_enabled(AFSiriLogContextSession, OS_LOG_TYPE_INFO))
        {
          *buf = 136315138;
          v29 = "[ADSessionManager assistantSession:didOpenConnectionWithPolicyId:routeId:connectionDelay:]";
          _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_INFO, "%s All sessions active now.", buf, 0xCu);
        }

        self->_state = 3;
      }
    }

    else
    {
    }

    [(ADSessionManager *)self _registerForSleepNotification];
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    [WeakRetained assistantSessionManagerConnectionDidBecomeActive:self];
  }

  lastSessionError = self->_lastSessionError;
  self->_lastSessionError = 0;
}

- (void)assistantSessionWillStartConnection:(id)a3
{
  v4 = AFSiriLogContextSession;
  if (os_log_type_enabled(AFSiriLogContextSession, OS_LOG_TYPE_INFO))
  {
    v6 = 136315138;
    v7 = "[ADSessionManager assistantSessionWillStartConnection:]";
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "%s Session will observing call state", &v6, 0xCu);
  }

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained assistantSessionManagerRequestsObservingCallState:self];
}

- (BOOL)assistantSessionShouldPrewarmConnetion:(id)a3
{
  WeakRetained = objc_loadWeakRetained(&self->_interceptor);
  v4 = [WeakRetained isInterceptingCommands];

  return v4 ^ 1;
}

- (void)sendRemoteGizmoDeviceToServer:(id)a3
{
  v4 = a3;
  if (self->_state <= 1)
  {
    [(ADSessionManager *)self _startSessions:0];
  }

  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  v5 = self->_sessions;
  v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v11;
    do
    {
      v9 = 0;
      do
      {
        if (*v11 != v8)
        {
          objc_enumerationMutation(v5);
        }

        [*(*(&v10 + 1) + 8 * v9) sendRemoteGizmoDeviceToServer:{v4, v10}];
        v9 = v9 + 1;
      }

      while (v7 != v9);
      v7 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v7);
  }
}

- (void)resetSessionsIfRequiredBasedOnOrchestrationMode:(BOOL)a3
{
  v3 = a3;
  v5 = AFSiriLogContextSession;
  if (os_log_type_enabled(AFSiriLogContextSession, OS_LOG_TYPE_INFO))
  {
    v11 = 136315394;
    v12 = "[ADSessionManager resetSessionsIfRequiredBasedOnOrchestrationMode:]";
    v13 = 1024;
    v14 = v3;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "%s Are we running full understanding on device for siri session: %d", &v11, 0x12u);
  }

  v6 = +[ADPreferences sharedPreferences];
  v7 = [v6 shouldEnableRemoteSessions];

  if (v7)
  {
    v8 = v3;
  }

  else
  {
    v8 = 2;
  }

  preferredRemoteSessionType = self->_preferredRemoteSessionType;
  if (preferredRemoteSessionType != v8)
  {
    v10 = AFSiriLogContextSession;
    if (os_log_type_enabled(AFSiriLogContextSession, OS_LOG_TYPE_INFO))
    {
      v11 = 136315650;
      v12 = "[ADSessionManager resetSessionsIfRequiredBasedOnOrchestrationMode:]";
      v13 = 1024;
      v14 = preferredRemoteSessionType;
      v15 = 1024;
      v16 = v8;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "%s Changing from session type=%d to session type=%d", &v11, 0x18u);
    }

    self->_preferredRemoteSessionType = v8;
    [(ADSessionManager *)self cancelSynchronously];
    [(ADSessionManager *)self preheatSessions];
  }
}

- (void)adviseSessionArbiterToContinueWithPreviousWinner:(BOOL)a3
{
  v3 = a3;
  v5 = AFSiriLogContextSession;
  if (os_log_type_enabled(AFSiriLogContextSession, OS_LOG_TYPE_DEBUG))
  {
    v6 = 136315394;
    v7 = "[ADSessionManager adviseSessionArbiterToContinueWithPreviousWinner:]";
    v8 = 1024;
    v9 = v3;
    _os_log_debug_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEBUG, "%s shouldContinue is %d", &v6, 0x12u);
  }

  if (self->_continueWithPreviousWinner != v3)
  {
    self->_continueWithPreviousWinner = v3;
  }
}

- (void)_pickDefaultWinnerWithDroppingSession:(id)a3
{
  v4 = [a3 sessionId];
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  v40 = 0u;
  obj = self->_sessions;
  v5 = [(NSMutableArray *)obj countByEnumeratingWithState:&v37 objects:v46 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v38;
    v26 = *v38;
    v27 = v4;
    do
    {
      v8 = 0;
      v28 = v6;
      do
      {
        if (*v38 != v7)
        {
          objc_enumerationMutation(obj);
        }

        v9 = *(*(&v37 + 1) + 8 * v8);
        v10 = [v9 sessionId];
        if ([v4 isEqualToString:v10])
        {
          v11 = [v9 dequeueResultObjects];
        }

        else
        {
          v32 = v8;
          v12 = AFSiriLogContextDaemon;
          if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
          {
            v13 = v12;
            v14 = [v9 sessionId];
            *buf = 136315394;
            v43 = "[ADSessionManager _pickDefaultWinnerWithDroppingSession:]";
            v44 = 2112;
            v45 = v14;
            _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_INFO, "%s Session %@ wins by default.", buf, 0x16u);
          }

          v31 = v10;
          objc_storeStrong(&self->_winningSessionId, v10);
          v30 = v9;
          v15 = [v9 dequeueResultObjects];
          v33 = 0u;
          v34 = 0u;
          v35 = 0u;
          v36 = 0u;
          v16 = [v15 countByEnumeratingWithState:&v33 objects:v41 count:16];
          if (v16)
          {
            v17 = v16;
            v18 = *v34;
            do
            {
              for (i = 0; i != v17; i = i + 1)
              {
                if (*v34 != v18)
                {
                  objc_enumerationMutation(v15);
                }

                v20 = *(*(&v33 + 1) + 8 * i);
                v21 = AFSiriLogContextDaemon;
                if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
                {
                  v22 = v21;
                  v23 = [v20 encodedClassName];
                  *buf = 136315394;
                  v43 = "[ADSessionManager _pickDefaultWinnerWithDroppingSession:]";
                  v44 = 2112;
                  v45 = v23;
                  _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_INFO, "%s Command %@", buf, 0x16u);
                }

                WeakRetained = objc_loadWeakRetained(&self->_delegate);
                [WeakRetained assistantSessionManager:self receivedCommand:v20];
              }

              v17 = [v15 countByEnumeratingWithState:&v33 objects:v41 count:16];
            }

            while (v17);
          }

          v25 = [v30 _adSessionTypeString];
          [(ADSessionManager *)self _logContextForWinningSession:v25 forReason:@"sessionCannotHandleRequest" forRemoteSessionScore:0 forLocalSessionScore:0];

          v7 = v26;
          v4 = v27;
          v6 = v28;
          v10 = v31;
          v8 = v32;
        }

        v8 = v8 + 1;
      }

      while (v8 != v6);
      v6 = [(NSMutableArray *)obj countByEnumeratingWithState:&v37 objects:v46 count:16];
    }

    while (v6);
  }
}

- (void)_cancelOtherSessionRequests:(id)a3 forRefId:(id)a4
{
  v6 = a3;
  v24 = a4;
  if (v24)
  {
    v23 = v6;
    v7 = [v6 sessionId];
    v25 = 0u;
    v26 = 0u;
    v27 = 0u;
    v28 = 0u;
    v8 = self->_sessions;
    v9 = [(NSMutableArray *)v8 countByEnumeratingWithState:&v25 objects:v35 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v26;
      do
      {
        for (i = 0; i != v10; i = i + 1)
        {
          if (*v26 != v11)
          {
            objc_enumerationMutation(v8);
          }

          v13 = *(*(&v25 + 1) + 8 * i);
          v14 = [v13 sessionId];
          v15 = [v7 isEqualToString:v14];

          if ((v15 & 1) == 0)
          {
            v16 = [(ADSessionManager *)self _keyForRequestId:v24 forSession:v13];
            if (v16)
            {
              v17 = [(NSMutableDictionary *)self->_proxiedIdMap valueForKey:v16];
              v18 = AFSiriLogContextSession;
              if (v17)
              {
                if (os_log_type_enabled(AFSiriLogContextSession, OS_LOG_TYPE_INFO))
                {
                  *buf = 136315650;
                  v30 = "[ADSessionManager _cancelOtherSessionRequests:forRefId:]";
                  v31 = 2112;
                  v32 = v24;
                  v33 = 2112;
                  v34 = v17;
                  _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_INFO, "%s (refId %@) causing us to cancel other session request (refId %@)", buf, 0x20u);
                }

                [v13 cancelSessionRequest:v17];
                v19 = [v13 dequeueResultObjects];
              }

              else if (os_log_type_enabled(AFSiriLogContextSession, OS_LOG_TYPE_ERROR))
              {
                *buf = 136315394;
                v30 = "[ADSessionManager _cancelOtherSessionRequests:forRefId:]";
                v31 = 2112;
                v32 = v24;
                _os_log_error_impl(&_mh_execute_header, v18, OS_LOG_TYPE_ERROR, "%s Out of band destructive commands with %@ refId", buf, 0x16u);
              }
            }

            else
            {
              v20 = AFSiriLogContextSession;
              if (os_log_type_enabled(AFSiriLogContextSession, OS_LOG_TYPE_ERROR))
              {
                *buf = 136315394;
                v30 = "[ADSessionManager _cancelOtherSessionRequests:forRefId:]";
                v31 = 2112;
                v32 = v24;
                _os_log_error_impl(&_mh_execute_header, v20, OS_LOG_TYPE_ERROR, "%s Cannot remap to other sessions with refId %@", buf, 0x16u);
              }
            }
          }
        }

        v10 = [(NSMutableArray *)v8 countByEnumeratingWithState:&v25 objects:v35 count:16];
      }

      while (v10);
    }

    winningSessionId = self->_winningSessionId;
    self->_winningSessionId = v7;

    v6 = v23;
  }

  else
  {
    v22 = AFSiriLogContextSession;
    if (os_log_type_enabled(AFSiriLogContextSession, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315138;
      v30 = "[ADSessionManager _cancelOtherSessionRequests:forRefId:]";
      _os_log_error_impl(&_mh_execute_header, v22, OS_LOG_TYPE_ERROR, "%s Destructive command with no RefId. File bug.", buf, 0xCu);
    }
  }
}

- (BOOL)_haveUsefulness:(id)a3 usefulnessScore:(id *)a4
{
  v5 = a3;
  v6 = objc_opt_respondsToSelector();
  v7 = v6;
  if (a4 && (v6 & 1) != 0)
  {
    *a4 = [v5 usefulnessScore];
  }

  return v7 & 1;
}

- (BOOL)_isDestructive:(id)a3
{
  v3 = a3;
  if (qword_1005900F8 != -1)
  {
    dispatch_once(&qword_1005900F8, &stru_100511408);
  }

  v4 = [v3 refId];

  if (v4)
  {
    if (objc_opt_respondsToSelector())
    {
      LODWORD(v4) = [v3 mutatingCommand];
    }

    else
    {
      LODWORD(v4) = 0;
    }

    v5 = qword_100590100;
    v6 = [v3 encodedClassName];
    LOBYTE(v5) = [v5 containsObject:v6];

    if ((v5 & 1) != 0 || v4)
    {
      v7 = [v3 groupIdentifier];
      v8 = [v7 isEqualToString:SASGroupIdentifier];

      if (v8 & 1) != 0 || (v9 = qword_100590108, [v3 encodedClassName], v10 = objc_claimAutoreleasedReturnValue(), LOBYTE(v9) = objc_msgSend(v9, "containsObject:", v10), v10, (v9))
      {
        LODWORD(v4) = 0;
      }

      else
      {
        v11 = +[SNNetworkActivityTracing sharedInstance];
        LODWORD(v4) = 1;
        [v11 networkActivityStart:5 activate:1 completion:0];
      }
    }

    v12 = AFSiriLogContextSession;
    if (os_log_type_enabled(AFSiriLogContextSession, OS_LOG_TYPE_INFO))
    {
      v13 = v12;
      v14 = [v3 encodedClassName];
      v16 = 136315650;
      v17 = "[ADSessionManager _isDestructive:]";
      v18 = 2112;
      v19 = v14;
      v20 = 1024;
      v21 = v4;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_INFO, "%s Command is %@ and %d", &v16, 0x1Cu);
    }
  }

  return v4;
}

- (void)_queueResultObject:(id)a3 forSession:(id)a4
{
  v6 = a4;
  [v6 queueResultObjects:a3];
  if (v6)
  {
    v7 = +[AFAnalytics sharedAnalytics];
    v14 = @"sessionType";
    v8 = [v6 _adSessionTypeString];
    v15 = v8;
    v9 = [NSDictionary dictionaryWithObjects:&v15 forKeys:&v14 count:1];
    [v7 logEventWithType:923 context:v9];
  }

  if ([v6 sessionType] == self->_preferredSessionType)
  {
    v10 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
    {
      v12 = 136315138;
      v13 = "[ADSessionManager _queueResultObject:forSession:]";
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "%s We have results from preferred session. Evaluate.", &v12, 0xCu);
    }

    [(ADSessionManager *)self _resetResultObjectsTimer];
    self->_isQueuingResultsForDelayedEvaluation = 1;
    if ([(ADSessionManager *)self _evaluateResultObjects])
    {
      [(ADSessionManager *)self _startResultObjectsTimer];
    }
  }

  else if (!self->_isQueuingResultsForDelayedEvaluation)
  {
    self->_isQueuingResultsForDelayedEvaluation = 1;
    [(ADSessionManager *)self _startResultObjectsTimer];
    v11 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
    {
      v12 = 136315138;
      v13 = "[ADSessionManager _queueResultObject:forSession:]";
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "%s Started queueing result objects", &v12, 0xCu);
    }
  }
}

- (void)_resultObjectsTimerFired:(id)a3
{
  resultObjectsEvaluationTimer = self->_resultObjectsEvaluationTimer;
  if (resultObjectsEvaluationTimer == a3)
  {
    self->_resultObjectsEvaluationTimer = 0;

    self->_timerFiredOnce = 1;
    if ([(ADSessionManager *)self _evaluateResultObjects])
    {
      v5 = AFSiriLogContextDaemon;
      if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
      {
        v6 = 136315138;
        v7 = "[ADSessionManager _resultObjectsTimerFired:]";
        _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "%s Restarting timer as there is no winning session yet", &v6, 0xCu);
      }

      [(ADSessionManager *)self _startResultObjectsTimer];
    }
  }
}

- (void)_startResultObjectsTimer
{
  [(ADSessionManager *)self _resetResultObjectsTimer];
  v3 = [(ADSessionManager *)self _resultObjectsHoldTime];
  v4 = dispatch_source_create(&_dispatch_source_type_timer, 0, 0, self->_queue);
  v5 = 1000000 * v3;
  v6 = dispatch_time(0, v5);
  dispatch_source_set_timer(v4, v6, v5, 0);
  objc_initWeak(&location, self);
  handler[0] = _NSConcreteStackBlock;
  handler[1] = 3221225472;
  handler[2] = sub_1000F72D0;
  handler[3] = &unk_10051C650;
  v7 = v4;
  v11 = v7;
  objc_copyWeak(&v12, &location);
  dispatch_source_set_event_handler(v7, handler);
  dispatch_resume(v7);
  resultObjectsEvaluationTimer = self->_resultObjectsEvaluationTimer;
  self->_resultObjectsEvaluationTimer = v7;
  v9 = v7;

  objc_destroyWeak(&v12);
  objc_destroyWeak(&location);
}

- (unsigned)_resultObjectsHoldTime
{
  serverDrivenResultsHoldTime = self->_serverDrivenResultsHoldTime;
  preferredSessionType = self->_preferredSessionType;
  if (serverDrivenResultsHoldTime)
  {
    if (preferredSessionType >= 2)
    {
      serverDrivenResultsHoldTime = 1000;
    }
  }

  else if (preferredSessionType >= 2)
  {
    serverDrivenResultsHoldTime = 1000;
  }

  else
  {
    serverDrivenResultsHoldTime = 500;
  }

  v4 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_DEBUG))
  {
    v6 = 136315650;
    v7 = "[ADSessionManager _resultObjectsHoldTime]";
    v8 = 1024;
    v9 = serverDrivenResultsHoldTime;
    v10 = 1024;
    v11 = preferredSessionType;
    _os_log_debug_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEBUG, "%s holdTime is %d for {session type: %d}", &v6, 0x18u);
  }

  return serverDrivenResultsHoldTime;
}

- (BOOL)_evaluateResultObjects
{
  preferredSessionType = self->_preferredSessionType;
  v53 = [(NSMutableArray *)self->_sessions count];
  v66 = 0u;
  v67 = 0u;
  v68 = 0u;
  v69 = 0u;
  v4 = self->_sessions;
  v5 = [(NSMutableArray *)v4 countByEnumeratingWithState:&v66 objects:v85 count:16];
  if (!v5)
  {

    v28 = self;
    v25 = 0;
    v10 = 0;
    goto LABEL_53;
  }

  v6 = v5;
  v57 = self;
  v58 = 0;
  v55 = 0;
  v54 = 0;
  v7 = 0;
  v8 = 0;
  v9 = 0;
  v10 = 0;
  v11 = *v67;
  v56 = preferredSessionType;
  obj = v4;
  do
  {
    for (i = 0; i != v6; i = i + 1)
    {
      if (*v67 != v11)
      {
        objc_enumerationMutation(obj);
      }

      v13 = *(*(&v66 + 1) + 8 * i);
      if ([v13 hasUsefulnessScore])
      {
        v14 = [v13 usefulnessScore];
        if (v8 <= v14)
        {
          v15 = v9;
          v16 = v10;
          v17 = v13;

          v8 = v14;
          v58 = v17;
          v10 = v16;
          v9 = v15;
          preferredSessionType = v56;
        }

        ++v7;
        if ([v13 sessionType] && objc_msgSend(v13, "sessionType") != 1)
        {
          v18 = v9;
          v19 = v10;
          v20 = AFSiriLogContextSession;
          if (os_log_type_enabled(AFSiriLogContextSession, OS_LOG_TYPE_DEBUG))
          {
            v23 = v20;
            v24 = [v13 sessionType];
            *buf = 136315394;
            v71 = "[ADSessionManager _evaluateResultObjects]";
            v72 = 1024;
            LODWORD(v73) = v24;
            _os_log_debug_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEBUG, "%s Setting local session score for {session type: %d}", buf, 0x12u);
          }

          v54 = v14;
          v10 = v19;
          v9 = v18;
          preferredSessionType = v56;
        }

        else
        {
          v55 = v14;
        }
      }

      if ([v13 sessionType] == preferredSessionType)
      {
        v21 = v13;

        v10 = v21;
      }

      if ([v13 hasResultObjects])
      {
        v22 = v13;

        v9 = v22;
      }
    }

    v6 = [(NSMutableArray *)obj countByEnumeratingWithState:&v66 objects:v85 count:16];
  }

  while (v6);

  if (v55 != v54 || !v10 || ![v10 hasResultObjects])
  {
    v28 = v57;
    v25 = v58;
    if (v58)
    {
      v26 = 0;
      v27 = 0;
      goto LABEL_27;
    }

    if (!v57->_timerFiredOnce)
    {
      v25 = 0;
      goto LABEL_54;
    }

    v25 = v9;
    if (v25)
    {
      v27 = @"timerFiredAndSomeSessionHadResults";
      v26 = 1;
      goto LABEL_27;
    }

LABEL_53:
    v9 = 0;
    goto LABEL_54;
  }

  v25 = v10;

  v26 = 1;
  v54 = v55;
  v27 = @"defaultSessionHasResults";
  v28 = v57;
LABEL_27:
  if (v53 == v7 || [v25 sessionType] == v56 || v28->_timerFiredOnce)
  {
    v51 = v27;
    v52 = v26;
    obja = v10;
    v29 = [v25 dequeueResultObjects];
    v30 = [v29 firstObject];
    v31 = [v30 refId];

    v59 = v25;
    [(ADSessionManager *)v28 _cancelOtherSessionRequests:v25 forRefId:v31];
    v64 = 0u;
    v65 = 0u;
    v62 = 0u;
    v63 = 0u;
    v32 = v29;
    v33 = [v32 countByEnumeratingWithState:&v62 objects:v84 count:16];
    if (v33)
    {
      v34 = v33;
      v35 = *v63;
      do
      {
        for (j = 0; j != v34; j = j + 1)
        {
          if (*v63 != v35)
          {
            objc_enumerationMutation(v32);
          }

          v37 = *(*(&v62 + 1) + 8 * j);
          v38 = AFSiriLogContextDaemon;
          if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
          {
            v39 = v38;
            v40 = [v37 encodedClassName];
            *buf = 136315394;
            v71 = "[ADSessionManager _evaluateResultObjects]";
            v72 = 2112;
            v73 = v40;
            _os_log_impl(&_mh_execute_header, v39, OS_LOG_TYPE_INFO, "%s Command %@", buf, 0x16u);
          }

          v28 = v57;
          WeakRetained = objc_loadWeakRetained(&v57->_delegate);
          [WeakRetained assistantSessionManager:v57 receivedCommand:v37];
        }

        v34 = [v32 countByEnumeratingWithState:&v62 objects:v84 count:16];
      }

      while (v34);
    }

    v28->_isQueuingResultsForDelayedEvaluation = 0;
    if (v53 == v7)
    {
      v42 = 1;
    }

    else
    {
      v42 = v52;
    }

    if (v52)
    {
      v43 = v51;
    }

    else
    {
      v43 = @"sessionHasHigherUsefulnessScore";
    }

    if ((v42 & 1) == 0)
    {
      if (v28->_timerFiredOnce)
      {
        v43 = @"timerFiredAndSomeSessionHadResults";
      }

      else
      {
        v43 = @"onlySessionHasResults";
      }
    }

    v10 = obja;
    v44 = AFSiriLogContextDaemon;
    v25 = v59;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
    {
      v45 = v44;
      v46 = [v59 sessionId];
      v47 = [v59 sessionType];
      *buf = 136316674;
      v71 = "[ADSessionManager _evaluateResultObjects]";
      v72 = 2112;
      v73 = v46;
      v74 = 1024;
      v75 = v47;
      v76 = 2112;
      v77 = v43;
      v78 = 1024;
      v79 = v56;
      v80 = 2048;
      v81 = v55;
      v82 = 2048;
      v83 = v54;
      _os_log_impl(&_mh_execute_header, v45, OS_LOG_TYPE_INFO, "%s Session %@ (type %d) wins with reason %@ preferred %d remoteSessionScore %ld localSessionScore %ld", buf, 0x40u);
    }

    v48 = [v59 _adSessionTypeString];
    [(ADSessionManager *)v28 _logContextForWinningSession:v48 forReason:v43 forRemoteSessionScore:v55 forLocalSessionScore:v54];
  }

LABEL_54:
  isQueuingResultsForDelayedEvaluation = v28->_isQueuingResultsForDelayedEvaluation;

  return isQueuingResultsForDelayedEvaluation;
}

- (void)updateForCallIsLikelyDueToRequest:(BOOL)a3
{
  if (a3)
  {
    v10 = 0u;
    v11 = 0u;
    v8 = 0u;
    v9 = 0u;
    v3 = self->_sessions;
    v4 = [(NSMutableArray *)v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
    if (v4)
    {
      v5 = v4;
      v6 = *v9;
      do
      {
        v7 = 0;
        do
        {
          if (*v9 != v6)
          {
            objc_enumerationMutation(v3);
          }

          [*(*(&v8 + 1) + 8 * v7) setDormant:{1, v8}];
          v7 = v7 + 1;
        }

        while (v5 != v7);
        v5 = [(NSMutableArray *)v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
      }

      while (v5);
    }
  }
}

- (void)updateForCallState:(BOOL)a3
{
  if (self->_callInProcess != a3)
  {
    self->_callInProcess = a3;
  }
}

- (void)_unregisterForSleepNotification
{
  if (self->_ioConnect)
  {
    v3 = IODeregisterForSystemPower(&self->_ioNotifier);
    if (v3)
    {
      v4 = v3;
      v5 = AFSiriLogContextSession;
      if (os_log_type_enabled(AFSiriLogContextSession, OS_LOG_TYPE_ERROR))
      {
        v6 = 136315394;
        v7 = "[ADSessionManager _unregisterForSleepNotification]";
        v8 = 1026;
        v9 = v4;
        _os_log_error_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, "%s Error deregistering for power notifications %{public}d", &v6, 0x12u);
      }
    }

    else
    {
      self->_ioNotifier = 0;
      IONotificationPortDestroy(self->_ioNotificationPortRef);
      self->_ioNotificationPortRef = 0;
      IOServiceClose(self->_ioConnect);
      self->_ioConnect = 0;
    }
  }
}

- (void)_powerChangedMessageType:(unsigned int)a3 notificationID:(int64_t)a4
{
  HIDWORD(v4) = a3 + 536870288;
  LODWORD(v4) = a3 + 536870288;
  if ((v4 >> 4) <= 1)
  {
    v8 = AFSiriLogContextSession;
    if (os_log_type_enabled(AFSiriLogContextSession, OS_LOG_TYPE_INFO))
    {
      v9 = @"can sleep";
      if (a3 == -536870272)
      {
        v9 = @"will sleep";
      }

      v12 = 136315394;
      v13 = "[ADSessionManager _powerChangedMessageType:notificationID:]";
      v14 = 2112;
      v15 = v9;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "%s Canceling connection due to power change notification %@", &v12, 0x16u);
    }

    if (self->_state >= 1)
    {
      WeakRetained = objc_loadWeakRetained(&self->_delegate);
      v11 = [AFError errorWithCode:33];
      [WeakRetained assistantSessionManager:self receivedError:v11 isRetryableError:0];
    }

    IOAllowPowerChange(self->_ioConnect, a4);
  }
}

- (void)_languageCodeDidChange:(id)a3
{
  v4 = AFSiriLogContextSession;
  if (os_log_type_enabled(AFSiriLogContextSession, OS_LOG_TYPE_INFO))
  {
    *buf = 136315138;
    v8 = "[ADSessionManager _languageCodeDidChange:]";
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "%s ", buf, 0xCu);
  }

  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000F7EB0;
  block[3] = &unk_10051DFE8;
  block[4] = self;
  dispatch_async(queue, block);
}

- (void)_enabledBitsChanged:(id)a3
{
  v4 = AFSiriLogContextSession;
  if (os_log_type_enabled(AFSiriLogContextSession, OS_LOG_TYPE_INFO))
  {
    *buf = 136315138;
    v8 = "[ADSessionManager _enabledBitsChanged:]";
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "%s ", buf, 0xCu);
  }

  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000F80A4;
  block[3] = &unk_10051DFE8;
  block[4] = self;
  dispatch_async(queue, block);
}

- (void)_cloudPreferencesDidSync:(id)a3
{
  v4 = AFSiriLogContextSession;
  if (os_log_type_enabled(AFSiriLogContextSession, OS_LOG_TYPE_INFO))
  {
    *buf = 136315138;
    v8 = "[ADSessionManager _cloudPreferencesDidSync:]";
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "%s ", buf, 0xCu);
  }

  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000F8250;
  block[3] = &unk_10051DFE8;
  block[4] = self;
  dispatch_async(queue, block);
}

- (void)_sharedAssistantdIdentifierDidChange:(id)a3
{
  v4 = AFSiriLogContextSession;
  if (os_log_type_enabled(AFSiriLogContextSession, OS_LOG_TYPE_INFO))
  {
    *buf = 136315138;
    v8 = "[ADSessionManager _sharedAssistantdIdentifierDidChange:]";
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "%s ", buf, 0xCu);
  }

  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000F8364;
  block[3] = &unk_10051DFE8;
  block[4] = self;
  dispatch_async(queue, block);
}

- (void)endRetryableRequestForCommand:(id)a3
{
  v4 = a3;
  v5 = [v4 aceId];
  v15 = v4;
  v6 = [v4 refId];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v7 = self->_sessions;
  v8 = [(NSMutableArray *)v7 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v17;
    do
    {
      for (i = 0; i != v9; i = i + 1)
      {
        if (*v17 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v16 + 1) + 8 * i);
        v13 = [(ADSessionManager *)self _mapADRequestIdToSessionRequestId:v5 forSession:v12];
        if (v6)
        {
          v14 = [(ADSessionManager *)self _mapADRequestIdToSessionRequestId:v6 forSession:v12];
        }

        else
        {
          v14 = 0;
        }

        [v12 endRetryableRequestForCommandAceId:v13 refId:v14];
      }

      v9 = [(NSMutableArray *)v7 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v9);
  }
}

- (void)resetRetryManager
{
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v2 = self->_sessions;
  v3 = [(NSMutableArray *)v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v8;
    do
    {
      v6 = 0;
      do
      {
        if (*v8 != v5)
        {
          objc_enumerationMutation(v2);
        }

        [*(*(&v7 + 1) + 8 * v6) resetRetryManager];
        v6 = v6 + 1;
      }

      while (v4 != v6);
      v4 = [(NSMutableArray *)v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
    }

    while (v4);
  }
}

- (void)startRetry
{
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v2 = self->_sessions;
  v3 = [(NSMutableArray *)v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v9;
    do
    {
      for (i = 0; i != v4; i = i + 1)
      {
        if (*v9 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v8 + 1) + 8 * i);
        [v7 prepareForRetry];
        [v7 startRetry];
      }

      v4 = [(NSMutableArray *)v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v4);
  }
}

- (void)resetSessionsAtNextRequestBoundaryWithCompletion:(id)a3
{
  v4 = a3;
  if (self->_hasActiveRequest || [(NSMutableSet *)self->_assertions count])
  {
    v5 = AFSiriLogContextSession;
    if (os_log_type_enabled(AFSiriLogContextSession, OS_LOG_TYPE_INFO))
    {
      v10 = 136315138;
      v11 = "[ADSessionManager resetSessionsAtNextRequestBoundaryWithCompletion:]";
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "%s Pending until request is over", &v10, 0xCu);
    }

    self->_needsResetOnRequestBoundary = 1;
    if (v4)
    {
      if (self->_sessionResetOnRequestBoundaryCompletion)
      {
        v4[2](v4);
      }

      else
      {
        v6 = objc_retainBlock(v4);
        sessionResetOnRequestBoundaryCompletion = self->_sessionResetOnRequestBoundaryCompletion;
        self->_sessionResetOnRequestBoundaryCompletion = v6;
      }
    }
  }

  else
  {
    v8 = AFSiriLogContextSession;
    if (os_log_type_enabled(AFSiriLogContextSession, OS_LOG_TYPE_INFO))
    {
      v10 = 136315138;
      v11 = "[ADSessionManager resetSessionsAtNextRequestBoundaryWithCompletion:]";
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "%s Resetting immediately", &v10, 0xCu);
    }

    self->_needsResetOnRequestBoundary = 0;
    v9 = +[AFAnalytics sharedAnalytics];
    [v9 logEventWithType:925 context:0];

    if (v4)
    {
      v4[2](v4);
    }

    [(ADSessionManager *)self _resetSessionsAndMakeQuiet:self->_sessions == 0];
  }
}

- (void)_resetSessionsAndMakeQuiet:(BOOL)a3
{
  v3 = a3;
  v5 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315394;
    v25 = "[ADSessionManager _resetSessionsAndMakeQuiet:]";
    v26 = 1024;
    v27 = v3;
    _os_log_debug_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEBUG, "%s Starting sessions and make quiet: %d", buf, 0x12u);
  }

  self->_preferredSessionType = self->_preferredRemoteSessionType;
  if (!self->_state)
  {
    [(ADSessionManager *)self _startSessions:v3];
    return;
  }

  if ([(ADSessionManager *)self _hasSessionTypeChanged])
  {
    [(ADSessionManager *)self cancelSynchronously];
    [(ADSessionManager *)self preheatSessions];
    return;
  }

  [(ADSessionManager *)self _resetWinningStateAndPurgeRequestMaps];
  v6 = [(NSMutableArray *)self->_sessions copy];
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v7 = v6;
  v8 = [v7 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v20;
    v11 = 1;
    do
    {
      for (i = 0; i != v9; i = i + 1)
      {
        if (*v20 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v13 = *(*(&v19 + 1) + 8 * i);
        v14 = [v13 sessionType];
        v15 = [(ADSessionManager *)self _languageCode];
        [v13 setLanguageCode:v15];

        v16 = [(ADSessionManager *)self _saConnectionMode];
        [v13 setConnectionMode:v16];

        [v13 resetConnection];
        v11 &= v14 > 2;
      }

      v9 = [v7 countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v9);

    if ((v11 & 1) == 0)
    {
      v17 = AFSiriLogContextDaemon;
      if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_DEBUG))
      {
        preferredRemoteSessionType = self->_preferredRemoteSessionType;
        *buf = 136315394;
        v25 = "[ADSessionManager _resetSessionsAndMakeQuiet:]";
        v26 = 1024;
        v27 = preferredRemoteSessionType;
        _os_log_debug_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEBUG, "%s Not starting session for {session type: %d}", buf, 0x12u);
      }

      goto LABEL_19;
    }
  }

  else
  {
  }

  [(ADSessionManager *)self _startSession:self->_preferredRemoteSessionType makeQuiet:v3, v19];
LABEL_19:
}

- (BOOL)_hasSessionTypeChanged
{
  v3 = AFSiriLogContextSession;
  if (os_log_type_enabled(AFSiriLogContextSession, OS_LOG_TYPE_DEBUG))
  {
    preferredRemoteSessionType = self->_preferredRemoteSessionType;
    v11 = 136315394;
    v12 = "[ADSessionManager _hasSessionTypeChanged]";
    v13 = 1024;
    v14 = preferredRemoteSessionType;
    _os_log_debug_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEBUG, "%s Session type: %d", &v11, 0x12u);
  }

  v4 = +[ADPreferences sharedPreferences];
  v5 = [v4 shouldEnableRemoteSessions];

  if (v5)
  {
    v6 = AFDeviceSupportsFullSiriUOD();
  }

  else
  {
    v6 = 2;
  }

  v7 = self->_preferredRemoteSessionType;
  if (v6 != v7)
  {
    v8 = AFSiriLogContextSession;
    if (os_log_type_enabled(AFSiriLogContextSession, OS_LOG_TYPE_DEBUG))
    {
      v11 = 136315650;
      v12 = "[ADSessionManager _hasSessionTypeChanged]";
      v13 = 1024;
      v14 = v7;
      v15 = 1024;
      v16 = v6;
      _os_log_debug_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEBUG, "%s Session type changed from %d to %d", &v11, 0x18u);
    }

    self->_preferredRemoteSessionType = v6;
  }

  return v6 != v7;
}

- (void)_cancelSynchronously:(BOOL)a3
{
  v3 = a3;
  v5 = [(NSMutableArray *)self->_sessions copy];
  [(NSMutableArray *)self->_sessions removeAllObjects];
  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v6 = v5;
  v7 = [v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v13;
    do
    {
      v10 = 0;
      do
      {
        if (*v13 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v12 + 1) + 8 * v10);
        if (v3)
        {
          [v11 cancelSynchronously];
        }

        else
        {
          [v11 cancel];
        }

        v10 = v10 + 1;
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v8);
  }

  [(ADSessionManager *)self _unregisterForPossibleSessionDestroyingNotifications];
}

- (void)preheatAndMakeQuiet:(BOOL)a3
{
  v3 = a3;
  if (self->_state > 1)
  {
    v11 = 0u;
    v12 = 0u;
    v9 = 0u;
    v10 = 0u;
    v4 = self->_sessions;
    v5 = [(NSMutableArray *)v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v10;
      do
      {
        v8 = 0;
        do
        {
          if (*v10 != v7)
          {
            objc_enumerationMutation(v4);
          }

          [*(*(&v9 + 1) + 8 * v8) preheatAndMakeQuiet:{v3, v9}];
          v8 = v8 + 1;
        }

        while (v6 != v8);
        v6 = [(NSMutableArray *)v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
      }

      while (v6);
    }
  }

  else
  {

    [(ADSessionManager *)self _startSessions:?];
  }
}

- (void)_startSession:(int)a3 makeQuiet:(BOOL)a4
{
  v4 = a4;
  v5 = *&a3;
  v7 = AFSiriLogContextSession;
  if (os_log_type_enabled(AFSiriLogContextSession, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315650;
    *&buf[4] = "[ADSessionManager _startSession:makeQuiet:]";
    *&buf[12] = 1024;
    *&buf[14] = v5;
    *&buf[18] = 1024;
    *&buf[20] = v4;
    _os_log_debug_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEBUG, "%s type: %d, makeQuiet: %d", buf, 0x18u);
  }

  v8 = [ADSession sessionClassForType:v5];
  [(ADSessionManager *)self _updateSharedUserIdentifiers];
  if ([(objc_class *)v8 isEqual:objc_opt_class()])
  {
    *buf = [(ADSessionManager *)self _languageCode];
    *&buf[8] = [(ADSessionManager *)self _saConnectionMode];
    *&buf[16] = *&self->_sharedUserIdentifier;
    instanceContext = self->_instanceContext;
    v9 = [[v8 alloc] initOnQueue:self->_queue withAccount:self->_account config:buf];
  }

  else
  {
    v10 = [v8 alloc];
    queue = self->_queue;
    account = self->_account;
    v13 = [(ADSessionManager *)self _languageCode];
    v14 = [(ADSessionManager *)self _saConnectionMode];
    v9 = [v10 initOnQueue:queue withAccount:account languageCode:v13 connectionMode:v14 sharedUserIdentifier:self->_sharedUserIdentifier loggingSharedUserIdentifier:self->_loggingSharedUserIdentifier instanceContext:self->_instanceContext];
  }

  [v9 setDelegate:self];
  if (!v4)
  {
    [v9 eagerlyFetchAssistantData];
    [v9 preheatAndMakeQuiet:0];
  }

  if ([(objc_class *)v8 isEqual:objc_opt_class()])
  {
    [v9 _startSession];
  }

  [(NSMutableArray *)self->_sessions addObject:v9];
  v15 = AFSiriLogContextSession;
  if (os_log_type_enabled(AFSiriLogContextSession, OS_LOG_TYPE_INFO))
  {
    v16 = v15;
    v17 = [v9 sessionId];
    v18 = [(NSMutableArray *)self->_sessions count];
    *buf = 136315650;
    *&buf[4] = "[ADSessionManager _startSession:makeQuiet:]";
    *&buf[12] = 2112;
    *&buf[14] = v17;
    *&buf[22] = 2048;
    *&buf[24] = v18;
    _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_INFO, "%s Started a session with id %@, count = %tu", buf, 0x20u);
  }
}

- (void)_startSessions:(BOOL)a3
{
  v3 = a3;
  [(ADSessionManager *)self _registerForPossibleSessionDestroyingNotifications];
  state = self->_state;
  if (!state)
  {
    [(ADSessionManager *)self _resetWinningStateAndPurgeRequestMaps];
    self->_state = 2;
    [(ADSessionManager *)self _startSession:self->_preferredRemoteSessionType makeQuiet:v3];
    state = self->_state;
  }

  if (state == 1)
  {
    self->_state = 2;
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    v6 = self->_sessions;
    v7 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v18 objects:v28 count:16];
    if (v7)
    {
      v9 = v7;
      v10 = *v19;
      *&v8 = 136315650;
      v17 = v8;
      do
      {
        for (i = 0; i != v9; i = i + 1)
        {
          if (*v19 != v10)
          {
            objc_enumerationMutation(v6);
          }

          v12 = *(*(&v18 + 1) + 8 * i);
          if (([v12 sessionIsActive] & 1) == 0 && (objc_msgSend(v12, "sessionIsAttemptingTryOrRetry") & 1) == 0)
          {
            v13 = AFSiriLogContextSession;
            if (os_log_type_enabled(AFSiriLogContextSession, OS_LOG_TYPE_INFO))
            {
              v14 = v13;
              v15 = [v12 _adSessionTypeString];
              v16 = [v12 sessionId];
              *buf = v17;
              v23 = "[ADSessionManager _startSessions:]";
              v24 = 2112;
              v25 = v15;
              v26 = 2112;
              v27 = v16;
              _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_INFO, "%s Resetting %@ session with Id %@", buf, 0x20u);
            }

            [v12 resetConnection];
          }
        }

        v9 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v18 objects:v28 count:16];
      }

      while (v9);
    }
  }
}

- (void)dealloc
{
  v3 = +[NSNotificationCenter defaultCenter];
  [v3 removeObserver:self name:@"ADPreferencesLanguageCodeDidChangeNotification" object:0];
  [v3 removeObserver:self name:@"ADPreferencesSharedUserIdentifierDidChangeNotification" object:0];
  [v3 removeObserver:self name:@"ADCloudKitManagerPreferencesDidSyncNotification" object:0];
  [(ADSessionManager *)self _unregisterForPossibleSessionDestroyingNotifications];
  [(ADSessionManager *)self _unregisterForSleepNotification];
  v4 = +[SNNetworkAnalytics sharedSNNetworkAnalytics];
  [v4 setOrchestratorRequestId:0];

  v5 = +[SNNetworkAnalytics sharedSNNetworkAnalytics];
  [v5 setNetId:0];

  v6 = +[SNNetworkAnalytics sharedSNNetworkAnalytics];
  [v6 setNetIdAvailable:0];

  v7.receiver = self;
  v7.super_class = ADSessionManager;
  [(ADSessionManager *)&v7 dealloc];
}

- (id)initOnQueue:(id)a3 account:(id)a4 instanceContext:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v24.receiver = self;
  v24.super_class = ADSessionManager;
  v12 = [(ADSessionManager *)&v24 init];
  v13 = v12;
  if (!v12)
  {
    goto LABEL_11;
  }

  objc_storeStrong(&v12->_account, a4);
  objc_storeStrong(&v13->_queue, a3);
  objc_storeStrong(&v13->_instanceContext, a5);
  v13->_sharedUserIdentifierState = 0;
  v14 = +[NSNotificationCenter defaultCenter];
  [v14 addObserver:v13 selector:"_languageCodeDidChange:" name:@"ADPreferencesLanguageCodeDidChangeNotification" object:0];
  [v14 addObserver:v13 selector:"_sharedAssistantdIdentifierDidChange:" name:@"ADPreferencesSharedUserIdentifierDidChangeNotification" object:0];
  [v14 addObserver:v13 selector:"_cloudPreferencesDidSync:" name:@"ADCloudKitManagerPreferencesDidSyncNotification" object:0];
  v15 = objc_alloc_init(NSMutableArray);
  sessions = v13->_sessions;
  v13->_sessions = v15;

  v13->_state = 0;
  v17 = +[ADPreferences sharedPreferences];
  v18 = [v17 shouldEnableRemoteSessions];

  if (v18)
  {
    if (!AFDeviceSupportsFullSiriUOD())
    {
      v19 = 0;
      v13->_preferredRemoteSessionType = 0;
      goto LABEL_8;
    }

    v19 = 1;
  }

  else
  {
    v19 = 2;
  }

  v13->_preferredRemoteSessionType = v19;
LABEL_8:
  v20 = AFSiriLogContextSession;
  if (os_log_type_enabled(AFSiriLogContextSession, OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v26 = "[ADSessionManager initOnQueue:account:instanceContext:]";
    v27 = 1024;
    v28 = v19;
    _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_INFO, "%s _preferredRemoteSessionType = %u", buf, 0x12u);
  }

  v21 = objc_alloc_init(NSMutableSet);
  assertions = v13->_assertions;
  v13->_assertions = v21;

LABEL_11:
  return v13;
}

@end