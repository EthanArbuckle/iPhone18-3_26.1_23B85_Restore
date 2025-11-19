@interface APSUserCourier
- (APSProtocolConnection)preferredProtocolConnection;
- (APSUserCourier)initWithEnvironment:(id)a3 courierUser:(id)a4 userPreferences:(id)a5 clientIdentityProvider:(id)a6 userAppIDManager:(id)a7 systemTokenStorage:(id)a8 delegate:(id)a9 withConnectionEstablisher:(id)a10;
- (APSUserCourier)initWithEnvironment:(id)a3 courierUser:(id)a4 userPreferences:(id)a5 clientIdentityProvider:(id)a6 userAppIDManager:(id)a7 systemTokenStorage:(id)a8 filterVersionStateMachine:(id)a9 debugOverrides:(id)a10 delegate:(id)a11 withConnectionEstablisher:(id)a12 tokenStore:(id)a13 tokenRequestQueue:(id)a14;
- (APSUserCourierDelegate)delegate;
- (BOOL)_hasListeningTopics;
- (BOOL)_isIdentityAvailable;
- (BOOL)_isResponseForProxyDevice:(id)a3;
- (BOOL)_processPendingProxyPresences;
- (BOOL)_processPotentialIdentityChanged;
- (BOOL)_useShortKeepAliveInterval;
- (BOOL)_wakeCausedByTopic:(id)a3 interface:(id)a4 priorityVal:(unint64_t)a5 inAllowlist:(BOOL)a6;
- (BOOL)expectsResponseForFilterMessageOnProtocolConnection:(id)a3;
- (BOOL)expectsResponseForFilterMessageOnProtocolConnection:(id)a3 forClient:(id)a4;
- (BOOL)hasConnectedInterface;
- (BOOL)hasConnectedInterfaceForIdentifier:(id)a3;
- (BOOL)hasConnectedInterfaceOfType:(int64_t)a3;
- (BOOL)hasOutOfDateFilterOnProtocolConnection:(id)a3;
- (BOOL)hasProtocolConnectionInterfaceOfType:(int64_t)a3;
- (BOOL)hasReasonToConnect;
- (BOOL)isConnectableRightNow;
- (BOOL)isConnectedOnUltraConstrainedInterface;
- (BOOL)isInteractivePushDuringSleepEnabled;
- (BOOL)isKeepAliveProxyConfigured;
- (BOOL)protocolConnectionHasSentActivityTrackingSalt:(id)a3;
- (BOOL)shouldDropPubSubMessageWithData:(id)a3 forTopic:(id)a4;
- (BOOL)shouldForceShortTimeouts;
- (BOOL)shouldHandleIncomingPush:(id)a3 forProtocolConnection:(id)a4;
- (BOOL)shouldOnlySendFilterOnPreferredInterface;
- (BOOL)shouldRun;
- (BOOL)shouldUseInternet;
- (BOOL)wantsCriticalReliability;
- (BOOL)willBeAbleToConnect;
- (NSData)publicToken;
- (NSString)debugDescription;
- (NSString)description;
- (id)JSONDebugState;
- (id)_copyParsedPayload:(id)a3;
- (id)_findActiveClientWithToken:(id)a3;
- (id)_findClientWithToken:(id)a3;
- (id)_findConnectedClientWithToken:(id)a3 onProtocolConnection:(id)a4;
- (id)_getCurrentTokens;
- (id)_getNextMessageID;
- (id)_proxyManager;
- (id)_topicsByHashFromTopicStateDictionary:(id)a3;
- (id)_ultraConstrainedTopicsFromTopicDictionary:(id)a3;
- (id)allRegisteredChannelsForTopic:(id)a3;
- (id)aps_prettyDescription;
- (id)connectedInterfaceForIdentifier:(id)a3;
- (id)connection:(id)a3 createURLTokenForToken:(id)a4;
- (id)copyOperatorName;
- (id)getConnectionTypeFromProtocolConnection:(id)a3;
- (id)stateForProtocolConnection:(id)a3;
- (id)updateChannelForIncomingMessageWithData:(id)a3 forTopic:(id)a4;
- (id)urlPrefix;
- (id)verboseDescription;
- (int)_protoSubscriptionFailureToReadableFailure:(int)a3;
- (int)_protoUpdateFailureToReadableFailure:(int)a3;
- (int64_t)countOfConnectedInterface;
- (unint64_t)_countActiveClients;
- (unint64_t)_countConnectedClients;
- (unint64_t)largeMessageSize;
- (unint64_t)overallCourierStatus;
- (void)__dumpLogsForInconsistencyIfNecessary;
- (void)__performIdleCheck;
- (void)__processStoredIncomingMessagesForConnection:(id)a3;
- (void)_adjustIsConnectedToService;
- (void)_cancelRequest:(id)a3;
- (void)_clearCachedSigNonceCert;
- (void)_clearPendingProxyPresence;
- (void)_clearTopicsForGuestUser;
- (void)_deleteClientIdentityRequestingReplacement;
- (void)_didFinishAssertingAllPresences:(id)a3;
- (void)_dumpLogsForInconsistencyIfNecessary;
- (void)_enqueueMessage:(id)a3 forOriginator:(id)a4;
- (void)_finishDisconnectForInterface:(id)a3;
- (void)_generateSalt;
- (void)_handleAppTokenGenerateResponse:(id)a3 onProtocolConnection:(id)a4;
- (void)_handleChannelUpdateCommand:(id)a3;
- (void)_handleConnectedMessage:(id)a3 onProtocolConnection:(id)a4;
- (void)_handleLostPushTokens;
- (void)_handleMessageMessage:(id)a3 onProtocolConnection:(id)a4 withGeneration:(unint64_t)a5 isWakingMessage:(BOOL)a6 fromAgent:(BOOL)a7;
- (void)_handleOutgoingMessageAcknowledgment:(id)a3 onProtocolConnection:(id)a4;
- (void)_handlePresenceOffline:(id)a3;
- (void)_handlePresenceTrackingResponse:(id)a3 onProtocolConnection:(id)a4;
- (void)_handlePubSubChannelListRequestonProtocolConnection:(id)a3;
- (void)_handlePubSubRequest:(id)a3 unsubscriptionChannels:(id)a4 token:(id)a5;
- (void)_handlePubSubSubscriptionResponse:(id)a3 fromAgent:(BOOL)a4 onProtocolConnection:(id)a5;
- (void)_handlePubSubUpdateMessage:(id)a3 onProtocolConnection:(id)a4;
- (void)_handleSubscriptionUpdateCommand:(id)a3 token:(id)a4 protocolConnection:(id)a5;
- (void)_notifyForIncomingMessage:(id)a3 forConnection:(id)a4;
- (void)_performIdleCheck;
- (void)_processShouldRunChangeIfNecessary;
- (void)_processShouldUseInternetChangeIfNecessary;
- (void)_processStoredIncomingMessages;
- (void)_processStoredIncomingMessagesForConnection:(id)a3;
- (void)_reconnectAllConnectionsWithReason:(unsigned int)a3;
- (void)_reconnectIgnoringDelayReconnectTimer:(unsigned int)a3;
- (void)_recreateCacheDictionaries;
- (void)_registerAppTokenCleanup;
- (void)_removePendingRequestsForProtocolConnection:(id)a3;
- (void)_reportAPSConnectivity;
- (void)_requestClientPubSubChannelList:(id)a3 onProtocolConnection:(id)a4;
- (void)_requestToSendFilterOnTopicManager:(id)a3 change:(id)a4;
- (void)_resetCheckpointForIgnoredTopics:(id)a3;
- (void)_retryRequestAfterDelay:(id)a3;
- (void)_retryRequestAfterDelay:(id)a3 withDelay:(double)a4;
- (void)_sendActiveStateMessageWithSendAllBlueListMessages:(BOOL)a3;
- (void)_sendClientFilter:(id)a3 onProtocolConnection:(id)a4;
- (void)_sendFilterMessageOnProtocolConnection:(id)a3 withChange:(id)a4;
- (void)_sendFilterMessageOnProtocolConnection:(id)a3 withReason:(unint64_t)a4;
- (void)_sendOutgoingMessage:(id)a3 onProtocolConnection:(id)a4;
- (void)_sendPresenceMessageOnProtocolConnection:(id)a3 serverTime:(id)a4;
- (void)_sendProxyChannelList:(id)a3 onConnectionType:(int64_t)a4;
- (void)_sendPubsubConnectMessageOnProtocolConnection:(id)a3 token:(id)a4;
- (void)_sendQueuedOutgoingMessages;
- (void)_triggerAutoBugCaptureForInvalidPresence:(id)a3;
- (void)_triggerAutoBugCaptureIfMessageIsRetried:(id)a3;
- (void)_triggerTTRFromServer:(id)a3;
- (void)_tryConnectingOrDisconnectingTokens;
- (void)_useInteractivePowerAssertionIfNeededForConnectionServer:(id)a3 withReason:(id)a4;
- (void)_writePubSubMessagetoConnection:(id)a3 messageID:(unsigned int)a4 token:(id)a5 connectionType:(int64_t)a6;
- (void)addConnection:(id)a3;
- (void)appendPrettyStatusToStatusPrinter:(id)a3;
- (void)attemptToRollSalt;
- (void)beginTrackingProtocolConnection:(id)a3;
- (void)canUseProxyChanged;
- (void)clearCachedIdentityAndTokens;
- (void)client:(id)a3 requestPushAckResponse:(id)a4 messageId:(id)a5 token:(id)a6 connectionType:(id)a7 generation:(id)a8;
- (void)client:(id)a3 requestSendOutgoingMessage:(id)a4;
- (void)client:(id)a3 requestTokenGenerateWithTopicHash:(id)a4 baseToken:(id)a5 appId:(id)a6 expirationTTL:(id)a7 vapidPublicKeyHash:(id)a8 type:(id)a9;
- (void)client:(id)a3 sendPubSubChannelList:(id)a4 token:(id)a5;
- (void)clientBecameInactive:(id)a3;
- (void)clientIdentityDidBecomeAvailable;
- (void)clientIdentityDidBecomeUnavailable;
- (void)connection:(id)a3 didInvalidateTokenForInfo:(id)a4;
- (void)connection:(id)a3 didReceiveCancellationForOutgoingMessageWithID:(unint64_t)a4;
- (void)connection:(id)a3 didReceiveFakeMessageToSend:(id)a4;
- (void)connection:(id)a3 didReceiveIncomingMessageReceiptWithTopic:(id)a4 tracingUUID:(id)a5;
- (void)connection:(id)a3 didReceiveOutgoingMessageToSend:(id)a4;
- (void)connection:(id)a3 didReceiveSubscribeToChannels:(id)a4 forTopic:(id)a5;
- (void)connection:(id)a3 didReceiveUnsubscribeToChannels:(id)a4 forTopic:(id)a5;
- (void)connection:(id)a3 didRequestCurrentTokenForInfo:(id)a4;
- (void)connection:(id)a3 didRequestTokenForInfo:(id)a4;
- (void)connection:(id)a3 handleAckIncomingMessageWithGuid:(id)a4 topic:(id)a5 tracingUUID:(id)a6;
- (void)connection:(id)a3 setKeepAliveConfiguration:(unint64_t)a4;
- (void)connectionChangedCriticalReliability:(id)a3;
- (void)connectionChangedTrackActivityPresence:(id)a3;
- (void)connectionDidClientDisconnect:(id)a3;
- (void)connectionTopicsChanged:(id)a3;
- (void)connectionWasClosed:(id)a3;
- (void)connectionWasOpened:(id)a3;
- (void)dealloc;
- (void)didRecoverFromSuspensionOnProtocolConnection:(id)a3;
- (void)didSuspendProtocolConnection:(id)a3;
- (void)enumerateAllProtocolConnections:(id)a3;
- (void)enumerateConnectedProtocolConnections:(id)a3;
- (void)enumerateConnectedProtocolConnectionsOfType:(int64_t)a3 block:(id)a4;
- (void)flush;
- (void)handleDisconnectForInterface:(id)a3 connectionState:(int64_t)a4 withReason:(unsigned int)a5;
- (void)handleIgnoredTopics:(id)a3;
- (void)incomingPresenceWithGuid:(id)a3 token:(id)a4 hwVersion:(id)a5 swVersion:(id)a6 swBuild:(id)a7 certificates:(id)a8 nonce:(id)a9 signature:(id)a10 additionalFlags:(int)a11;
- (void)invalidateDeviceIdentity;
- (void)logStateWithReason:(id)a3;
- (void)logout;
- (void)markProtocolConnectionDisconnectedForActivityTracking:(id)a3;
- (void)outgoingDataAboutToSendForProtocolConnection:(id)a3;
- (void)outgoingMessageQueue:(id)a3 lateAcknowledgmentForCriticalOutgoingMessage:(id)a4;
- (void)outgoingMessageQueue:(id)a3 requestToSendLowPriorityMessages:(id)a4;
- (void)outgoingMessageQueueShortMessageTimeoutExceeded:(id)a3;
- (void)performAppTokenCleanup;
- (void)periodicSignalFired;
- (void)prepareForDarkWake;
- (void)prepareForFullWake;
- (void)prepareForSleep;
- (void)processIsPowerEfficientToSendChange;
- (void)protocolConnection:(id)a3 receivedFilterUpdateWithParameters:(id)a4;
- (void)pushTokenBecameInvalidForClient:(id)a3;
- (void)recalculateTrackActivityPresence;
- (void)receivedConnectedResponseWithParameters:(id)a3 onProtocolConnection:(id)a4;
- (void)receivedFilterResponseWithParameters:(id)a3 onProtocolConnection:(id)a4;
- (void)removeConnectionForConnectionPortName:(id)a3;
- (void)requestFilterForClient:(id)a3;
- (void)rollTokenAndReconnectImmediately:(BOOL)a3;
- (void)rollTokensForAllBAAEnvironments;
- (void)saveToken:(id)a3 forInfo:(id)a4 connection:(id)a5;
- (void)sendFailuresToClient:(id)a3 pushTopic:(id)a4;
- (void)sendPresenceTrackingRequestOnProtocolConnection:(id)a3;
- (void)setEnabled:(BOOL)a3;
- (void)setIsConnectedToService:(BOOL)a3;
- (void)setLargeMessageSize:(unint64_t)a3;
- (void)setMessageSize:(unint64_t)a3;
- (void)setPublicToken:(id)a3 fromServer:(BOOL)a4;
- (void)shouldConnectToCourier:(id)a3;
- (void)subscribeToPreviouslyIgnoredTopics:(id)a3;
- (void)systemDidLock;
- (void)systemDidUnlock;
- (void)topicManagerRequestToSendFilter:(id)a3 change:(id)a4;
- (void)ttlCollection:(id)a3 itemsDidExpire:(id)a4 withStates:(id)a5;
- (void)unsubscribeFromChannels:(id)a3 forTopic:(id)a4 token:(id)a5;
- (void)unsubscribeFromChannels:(id)a3 token:(id)a4;
- (void)updateForReceivedConfig:(id)a3 finishedProcessingConfigBlock:(id)a4;
@end

@implementation APSUserCourier

- (BOOL)isConnectedOnUltraConstrainedInterface
{
  v7 = 0;
  v8[0] = &v7;
  v8[1] = 0x2020000000;
  v9 = 0;
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100004AD0;
  v6[3] = &unk_100186FD8;
  v6[4] = &v7;
  [(APSUserCourier *)self enumerateConnectedProtocolConnections:v6];
  v3 = +[APSLog courier];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    sub_100108F08(self, v8);
  }

  v4 = *(v8[0] + 24);
  _Block_object_dispose(&v7, 8);
  return v4;
}

- (NSData)publicToken
{
  cachedPublicToken = self->_cachedPublicToken;
  if (!cachedPublicToken)
  {
    v4 = [(APSUserCourier *)self systemTokenStorage];
    v5 = [(APSUserCourier *)self environment];
    v6 = [v4 tokenInfoForEnvironment:v5];

    v7 = [v6 systemToken];
    v8 = self->_cachedPublicToken;
    self->_cachedPublicToken = v7;

    [(APSUserCourier *)self setPublicToken:self->_cachedPublicToken fromServer:0];
    cachedPublicToken = self->_cachedPublicToken;
  }

  return cachedPublicToken;
}

- (BOOL)shouldOnlySendFilterOnPreferredInterface
{
  v3 = [(APSUserCourier *)self stateByConnectionIdentifier];
  if ([v3 count] >= 2)
  {
    v4 = [(APSUserCourier *)self hasConnectedInterfaceOfType:2];

    if ((v4 & 1) == 0 && ![(APSUserCourier *)self locallyDisabledFilterOptimization]&& ![(APSUserCourier *)self serverDisabledFilterOptimization])
    {
      v8 = 0;
      v9 = &v8;
      v10 = 0x2020000000;
      v11 = 1;
      v7[0] = _NSConcreteStackBlock;
      v7[1] = 3221225472;
      v7[2] = sub_100045B94;
      v7[3] = &unk_100187268;
      v7[4] = self;
      v7[5] = &v8;
      [(APSUserCourier *)self enumerateConnectedProtocolConnections:v7];
      v5 = *(v9 + 24);
      _Block_object_dispose(&v8, 8);
      return v5 & 1;
    }
  }

  else
  {
  }

  v5 = 0;
  return v5 & 1;
}

- (void)_recreateCacheDictionaries
{
  [(NSMutableDictionary *)self->_connectionPortNamesToConnections removeAllObjects];
  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  v3 = [(APSUserCourier *)self connectionServers];
  v4 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v11;
    do
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v11 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v10 + 1) + 8 * i);
        v9 = [v8 connectionPortName];
        if (v9)
        {
          [(NSMutableDictionary *)self->_connectionPortNamesToConnections setObject:v8 forKey:v9];
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v5);
  }

  [(APSUserCourier *)self _processShouldRunChangeIfNecessary];
}

- (void)_processShouldRunChangeIfNecessary
{
  shouldRun = self->_shouldRun;
  v4 = [(APSUserCourier *)self shouldRun];
  if (shouldRun != v4)
  {
    v5 = v4;
    v6 = +[APSLog shouldReduceLogging];
    v7 = +[APSLog courier];
    v8 = v7;
    if (v6)
    {
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
      {
        v9 = @"YES";
        if (shouldRun)
        {
          v9 = @"NO";
        }

        v14 = 138412546;
        v15 = self;
        v16 = 2112;
        v17 = v9;
        v10 = v8;
        v11 = OS_LOG_TYPE_DEBUG;
LABEL_11:
        _os_log_impl(&_mh_execute_header, v10, v11, "%@ shouldRun did change to %@", &v14, 0x16u);
      }
    }

    else if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v12 = @"YES";
      if (shouldRun)
      {
        v12 = @"NO";
      }

      v14 = 138412546;
      v15 = self;
      v16 = 2112;
      v17 = v12;
      v10 = v8;
      v11 = OS_LOG_TYPE_DEFAULT;
      goto LABEL_11;
    }

    [(APSUserCourier *)self _processShouldUseInternetChangeIfNecessary];
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    [WeakRetained userCourier:self hasReasonToConnectChangedTo:v5];
  }
}

- (BOOL)shouldRun
{
  self->_shouldRun = self->_enabled;
  v3 = [(APSUserCourier *)self _countActiveClients];
  if (self->_shouldRun)
  {
    v4 = v3;
    result = [(APSUserCourier *)self _hasListeningTopics];
    if (v4)
    {
      result = 1;
    }
  }

  else
  {
    result = 0;
  }

  self->_shouldRun = result;
  return result;
}

- (unint64_t)_countActiveClients
{
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v3 = self->_proxyClients;
  v4 = [(NSMutableDictionary *)v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = 0;
    v7 = *v12;
    do
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(v3);
        }

        v9 = [(NSMutableDictionary *)self->_proxyClients objectForKey:*(*(&v11 + 1) + 8 * i), v11];
        v6 += [v9 isActive];
      }

      v5 = [(NSMutableDictionary *)v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v5);
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (BOOL)_hasListeningTopics
{
  v3 = +[APSLog shouldReduceLogging];
  v4 = +[APSLog courier];
  v5 = v4;
  if (v3)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      v6 = [(APSTopicManager *)self->_topicManager hasListeningTopics];
      v7 = @"NO";
      if (v6)
      {
        v7 = @"YES";
      }

      v13 = 138412546;
      v14 = self;
      v15 = 2112;
      v16 = v7;
      v8 = v5;
      v9 = OS_LOG_TYPE_DEBUG;
LABEL_10:
      _os_log_impl(&_mh_execute_header, v8, v9, "%@ _hasListeningTopics %@", &v13, 0x16u);
    }
  }

  else if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v10 = [(APSTopicManager *)self->_topicManager hasListeningTopics];
    v11 = @"NO";
    if (v10)
    {
      v11 = @"YES";
    }

    v13 = 138412546;
    v14 = self;
    v15 = 2112;
    v16 = v11;
    v8 = v5;
    v9 = OS_LOG_TYPE_DEFAULT;
    goto LABEL_10;
  }

  return [(APSTopicManager *)self->_topicManager hasListeningTopics];
}

- (unint64_t)largeMessageSize
{
  v3 = [(APSEnvironment *)self->_environment largeMessageSize];
  result = [(APSUserCourier *)self messageSize];
  if (v3 > result)
  {
    return v3;
  }

  return result;
}

- (id)verboseDescription
{
  v21 = objc_alloc_init(NSMutableDictionary);
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  obj = [(APSUserCourier *)self protocolConnectionByIdentifier];
  v3 = [obj countByEnumeratingWithState:&v22 objects:v27 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v23;
    do
    {
      for (i = 0; i != v4; i = i + 1)
      {
        if (*v23 != v5)
        {
          objc_enumerationMutation(obj);
        }

        v7 = *(*(&v22 + 1) + 8 * i);
        v8 = [(APSUserCourier *)self protocolConnectionByIdentifier];
        v9 = [v8 objectForKeyedSubscript:v7];
        v26[0] = v9;
        v10 = [(APSUserCourier *)self stateByConnectionIdentifier];
        v11 = [v10 objectForKeyedSubscript:v7];
        v26[1] = v11;
        v12 = [NSArray arrayWithObjects:v26 count:2];
        [v21 setObject:v12 forKeyedSubscript:v7];
      }

      v4 = [obj countByEnumeratingWithState:&v22 objects:v27 count:16];
    }

    while (v4);
  }

  v13 = APSPrettyPrintCollection();
  filterVersionStateMachine = self->_filterVersionStateMachine;
  v15 = APSPrettyPrintObject();
  v16 = [(NSMutableDictionary *)self->_proxyClients allValues];
  v17 = APSPrettyPrintCollection();
  v18 = [NSString stringWithFormat:@"%@ protocol connections: %@ filter version state: %@ proxy clients: %@", self, v13, v15, v17];

  return v18;
}

- (NSString)description
{
  v3 = objc_opt_class();
  v4 = [(APSUserCourier *)self environment];
  v5 = [v4 name];
  v6 = [(APSUserCourier *)self courierUser];
  v7 = [v6 name];
  v8 = [NSString stringWithFormat:@"<%@ %p %@ %@>", v3, self, v5, v7];

  return v8;
}

- (void)systemDidUnlock
{
  v2[0] = _NSConcreteStackBlock;
  v2[1] = 3221225472;
  v2[2] = sub_100013D90;
  v2[3] = &unk_100187000;
  v2[4] = self;
  [(APSUserCourier *)self enumerateConnectedProtocolConnectionsOfType:1 block:v2];
}

- (id)_getCurrentTokens
{
  v3 = objc_alloc_init(NSMutableArray);
  v4 = [(APSUserCourier *)self publicToken];
  if (v4)
  {
    [v3 addObject:v4];
  }

  return v3;
}

- (BOOL)isConnectableRightNow
{
  v3 = [(APSUserCourier *)self _isIdentityAvailable];
  if (v3)
  {

    LOBYTE(v3) = [(APSUserCourier *)self shouldUseInternet];
  }

  return v3;
}

- (BOOL)_isIdentityAvailable
{
  v2 = [(APSUserCourier *)self clientIdentityProvider];
  v3 = [v2 isReadyToFetchIdentity];

  return v3;
}

- (BOOL)shouldUseInternet
{
  v3 = [(APSUserCourier *)self shouldRun];
  if (v3)
  {
    LOBYTE(v3) = ![(APSUserCourier *)self hasProtocolConnectionInterfaceOfType:2];
  }

  self->_shouldUseInternet = v3;
  return v3;
}

- (BOOL)willBeAbleToConnect
{
  if ([(APSUserCourier *)self _isIdentityAvailable])
  {
    LOBYTE(v2) = 1;
  }

  else
  {
    v2 = +[APSSimulatorSupport isSimulator];
    if (v2)
    {

      LOBYTE(v2) = +[APSSimulatorSupport isHardwareSupported];
    }
  }

  return v2;
}

- (unint64_t)overallCourierStatus
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v8 = 3;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_10001735C;
  v4[3] = &unk_100186F90;
  v4[4] = self;
  v4[5] = &v5;
  [(APSUserCourier *)self enumerateConnectedProtocolConnections:v4];
  v2 = v6[3];
  _Block_object_dispose(&v5, 8);
  return v2;
}

- (void)_sendQueuedOutgoingMessages
{
  v3 = [(APSOutgoingMessageQueue *)self->_outgoingMessageQueue outgoingMessagesToSend];
  if ([v3 count])
  {
    v4 = +[APSLog shouldReduceLogging];
    v5 = +[APSLog courier];
    v6 = v5;
    if (v4)
    {
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
      {
        v7 = [(APSUser *)self->_courierUser name];
        *buf = 138412546;
        v31 = self;
        v32 = 2112;
        v33 = v7;
        v8 = v6;
        v9 = OS_LOG_TYPE_DEBUG;
LABEL_7:
        _os_log_impl(&_mh_execute_header, v8, v9, "%@: Sending queued messages for user %@", buf, 0x16u);
      }
    }

    else if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v7 = [(APSUser *)self->_courierUser name];
      *buf = 138412546;
      v31 = self;
      v32 = 2112;
      v33 = v7;
      v8 = v6;
      v9 = OS_LOG_TYPE_DEFAULT;
      goto LABEL_7;
    }

    v28 = 0u;
    v29 = 0u;
    v26 = 0u;
    v27 = 0u;
    v10 = v3;
    v11 = [v10 countByEnumeratingWithState:&v26 objects:v36 count:16];
    if (!v11)
    {
      goto LABEL_24;
    }

    v12 = v11;
    v13 = *v27;
    while (1)
    {
      for (i = 0; i != v12; i = i + 1)
      {
        if (*v27 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v15 = *(*(&v26 + 1) + 8 * i);
        v16 = [v15 originator];
        v17 = [v16 isConnected];

        if (v17)
        {
          [(APSUserCourier *)self _sendOutgoingMessage:v15 onProtocolConnection:0];
          continue;
        }

        v18 = +[APSLog shouldReduceLogging];
        v19 = +[APSLog courier];
        v20 = v19;
        if (v18)
        {
          if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
          {
            v21 = [v15 messageID];
            v22 = [v15 originator];
            *buf = 138412802;
            v31 = self;
            v32 = 2048;
            v33 = v21;
            v34 = 2112;
            v35 = v22;
            v23 = v20;
            v24 = OS_LOG_TYPE_DEBUG;
LABEL_20:
            _os_log_impl(&_mh_execute_header, v23, v24, "%@: Tried to send outgoing message %lu but it's not connected yet, {Originator:%@}", buf, 0x20u);
          }
        }

        else if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
        {
          v25 = [v15 messageID];
          v22 = [v15 originator];
          *buf = 138412802;
          v31 = self;
          v32 = 2048;
          v33 = v25;
          v34 = 2112;
          v35 = v22;
          v23 = v20;
          v24 = OS_LOG_TYPE_DEFAULT;
          goto LABEL_20;
        }
      }

      v12 = [v10 countByEnumeratingWithState:&v26 objects:v36 count:16];
      if (!v12)
      {
LABEL_24:

        break;
      }
    }
  }
}

- (APSProtocolConnection)preferredProtocolConnection
{
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v3 = [(APSUserCourier *)self protocolConnectionByIdentifier];
  v4 = [v3 allValues];

  v5 = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v14;
    while (2)
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v14 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v13 + 1) + 8 * i);
        if ([v9 isPreferredInterface])
        {
          v11 = v9;
          goto LABEL_11;
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

  v4 = [(APSUserCourier *)self protocolConnectionByIdentifier];
  v10 = [v4 allValues];
  v11 = [v10 firstObject];

LABEL_11:

  return v11;
}

- (BOOL)shouldForceShortTimeouts
{
  v2 = [(APSUserCourier *)self protocolConnectionEstablisher];
  v3 = [v2 countConnectedInterfaces] > 1;

  return v3;
}

- (APSUserCourier)initWithEnvironment:(id)a3 courierUser:(id)a4 userPreferences:(id)a5 clientIdentityProvider:(id)a6 userAppIDManager:(id)a7 systemTokenStorage:(id)a8 delegate:(id)a9 withConnectionEstablisher:(id)a10
{
  v16 = a3;
  v38 = a10;
  v37 = a9;
  v36 = a8;
  v35 = a7;
  v17 = a6;
  v18 = a5;
  v19 = a4;
  v39 = [[APSTokenStore alloc] initWithEnvironment:v16 allowInMemoryCache:0];
  v20 = objc_alloc_init(APSOutgoingQueue);
  if (sub_10000712C())
  {
    v21 = objc_alloc_init(APSDefaultsDebugOverrides);
  }

  else
  {
    v21 = 0;
  }

  v34 = v21;
  v22 = [(APSDefaultsDebugOverrides *)v21 overrideFilterVersion];
  v33 = v22;
  if (v22)
  {
    v23 = v22;
    v24 = +[APSLog shouldReduceLogging];
    v25 = +[APSLog courier];
    v26 = v25;
    if (v24)
    {
      if (os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412546;
        v41 = self;
        v42 = 2112;
        v43 = v23;
        v27 = v26;
        v28 = OS_LOG_TYPE_DEBUG;
LABEL_11:
        _os_log_impl(&_mh_execute_header, v27, v28, "%@: Overriding filter version {filterVersionOverride: %@}", buf, 0x16u);
      }
    }

    else if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v41 = self;
      v42 = 2112;
      v43 = v23;
      v27 = v26;
      v28 = OS_LOG_TYPE_DEFAULT;
      goto LABEL_11;
    }

    v29 = -[APSFilterVersionStateMachine initWithInitialVersion:]([APSFilterVersionStateMachine alloc], "initWithInitialVersion:", [v23 unsignedLongLongValue]);
    goto LABEL_13;
  }

  v29 = objc_alloc_init(APSFilterVersionStateMachine);
LABEL_13:
  v30 = v29;
  v32 = [(APSUserCourier *)self initWithEnvironment:v16 courierUser:v19 userPreferences:v18 clientIdentityProvider:v17 userAppIDManager:v35 systemTokenStorage:v36 filterVersionStateMachine:v29 debugOverrides:v34 delegate:v37 withConnectionEstablisher:v38 tokenStore:v39 tokenRequestQueue:v20];

  return v32;
}

- (APSUserCourier)initWithEnvironment:(id)a3 courierUser:(id)a4 userPreferences:(id)a5 clientIdentityProvider:(id)a6 userAppIDManager:(id)a7 systemTokenStorage:(id)a8 filterVersionStateMachine:(id)a9 debugOverrides:(id)a10 delegate:(id)a11 withConnectionEstablisher:(id)a12 tokenStore:(id)a13 tokenRequestQueue:(id)a14
{
  v134 = a3;
  v133 = a4;
  v19 = a5;
  v20 = a8;
  v130 = v19;
  v21 = a7;
  v121 = a6;
  v122 = a7;
  v131 = a8;
  v123 = a9;
  v129 = a10;
  v132 = a11;
  v124 = a12;
  v125 = a13;
  v126 = a14;
  v138.receiver = self;
  v138.super_class = APSUserCourier;
  v22 = [(APSUserCourier *)&v138 init];
  v23 = v22;
  if (v22)
  {
    objc_storeStrong(&v22->_environment, a3);
    objc_storeStrong(&v23->_courierUser, a4);
    objc_storeStrong(&v23->_filterVersionStateMachine, a9);
    if (_os_feature_enabled_impl())
    {
      v24 = [v129 disableFilterOptimization];
    }

    else
    {
      v24 = 1;
    }

    v23->_locallyDisabledFilterOptimization = v24;
    v25 = +[APSLog shouldReduceLogging];
    v26 = +[APSLog courier];
    v27 = v26;
    if (v25)
    {
      if (os_log_type_enabled(v26, OS_LOG_TYPE_DEBUG))
      {
        v28 = [v134 domain];
        v29 = v28;
        v30 = @"NO";
        locallyDisabledFilterOptimization = v23->_locallyDisabledFilterOptimization;
        *buf = 138413058;
        if (locallyDisabledFilterOptimization)
        {
          v30 = @"YES";
        }

        v140 = v23;
        v141 = 2112;
        v142 = v28;
        v143 = 2112;
        v144 = v133;
        v145 = 2112;
        v146 = v30;
        _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEBUG, "%@: Initializing a courier with environment %@ user %@ {_locallyDisabledFilterOptimization: %@}", buf, 0x2Au);
      }
    }

    else if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
    {
      v32 = [v134 domain];
      v33 = v32;
      v34 = @"NO";
      v35 = v23->_locallyDisabledFilterOptimization;
      *buf = 138413058;
      if (v35)
      {
        v34 = @"YES";
      }

      v140 = v23;
      v141 = 2112;
      v142 = v32;
      v143 = 2112;
      v144 = v133;
      v145 = 2112;
      v146 = v34;
      _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, "%@: Initializing a courier with environment %@ user %@ {_locallyDisabledFilterOptimization: %@}", buf, 0x2Au);
    }

    objc_storeWeak(&v23->_delegate, v132);
    objc_storeStrong(&v23->_userAppIDManager, v21);
    v36 = [APSKeychainTopicSaltStore alloc];
    v37 = +[APSMultiUserMode sharedInstance];
    v128 = [(APSKeychainTopicSaltStore *)v36 initWithEnvironment:v134 multiUserMode:v37];

    v38 = [[APSTopicHasher alloc] initWithTopicSaltStore:v128];
    topicHasher = v23->_topicHasher;
    v23->_topicHasher = v38;

    objc_storeStrong(&v23->_tokenStore, a13);
    if (!qword_1001BF700)
    {
      objc_storeStrong(&qword_1001BF700, v23);
    }

    objc_storeStrong(&v23->_debugOverrides, a10);
    v40 = objc_alloc_init(NSMutableArray);
    connectionServers = v23->_connectionServers;
    v23->_connectionServers = v40;

    v42 = objc_alloc_init(NSMutableDictionary);
    connectionPortNamesToConnections = v23->_connectionPortNamesToConnections;
    v23->_connectionPortNamesToConnections = v42;

    v44 = [[APSOutgoingMessageQueue alloc] initWithDelegate:v23 environment:v23->_environment];
    outgoingMessageQueue = v23->_outgoingMessageQueue;
    v23->_outgoingMessageQueue = v44;

    objc_storeStrong(&v23->_tokenRequestQueue, a14);
    v23->_slowReceiveThreshold = 60.0;
    v46 = [[APSPushHistory alloc] initWithEnvironment:v23->_environment];
    pushHistory = v23->_pushHistory;
    v23->_pushHistory = v46;

    v48 = objc_alloc_init(NSMutableDictionary);
    protocolConnectionByIdentifier = v23->_protocolConnectionByIdentifier;
    v23->_protocolConnectionByIdentifier = v48;

    v50 = objc_alloc_init(NSMutableDictionary);
    stateByConnectionIdentifier = v23->_stateByConnectionIdentifier;
    v23->_stateByConnectionIdentifier = v50;

    objc_storeStrong(&v23->_protocolConnectionEstablisher, a12);
    objc_storeStrong(&v23->_systemTokenStorage, v20);
    v52 = [v131 tokenInfoForEnvironment:v134];
    v53 = +[APSLog shouldReduceLogging];
    v54 = +[APSLog courier];
    v55 = v54;
    if (v53)
    {
      if (os_log_type_enabled(v54, OS_LOG_TYPE_DEBUG))
      {
        v56 = [v52 systemToken];
        v57 = [v52 tokenType];
        *buf = 138412802;
        v140 = v23;
        v141 = 2112;
        v142 = v56;
        v143 = 2048;
        v144 = v57;
        _os_log_impl(&_mh_execute_header, v55, OS_LOG_TYPE_DEBUG, "%@: Cached token: %@, type: %ld", buf, 0x20u);
      }
    }

    else if (os_log_type_enabled(v54, OS_LOG_TYPE_DEFAULT))
    {
      v58 = [v52 systemToken];
      v59 = [v52 tokenType];
      *buf = 138412802;
      v140 = v23;
      v141 = 2112;
      v142 = v58;
      v143 = 2048;
      v144 = v59;
      _os_log_impl(&_mh_execute_header, v55, OS_LOG_TYPE_DEFAULT, "%@: Cached token: %@, type: %ld", buf, 0x20u);
    }

    v60 = +[APSLog shouldReduceLogging];
    v61 = +[APSLog courier];
    v62 = v61;
    if (v52)
    {
      if (v60)
      {
        if (os_log_type_enabled(v61, OS_LOG_TYPE_DEBUG))
        {
          v63 = [v134 name];
          v64 = [v52 systemToken];
          v65 = [v52 tokenType];
          v66 = "Albert";
          *buf = 138412802;
          v140 = v63;
          if (v65 == 1)
          {
            v66 = "BAA";
          }

          v141 = 2112;
          v142 = v64;
          v143 = 2080;
          v144 = v66;
          _os_log_impl(&_mh_execute_header, v62, OS_LOG_TYPE_DEBUG, "Found an existing token in keychain to init clientIdentityManager for environment %@, token: %@, type: %s", buf, 0x20u);
        }
      }

      else if (os_log_type_enabled(v61, OS_LOG_TYPE_DEFAULT))
      {
        v68 = [v134 name];
        v69 = [v52 systemToken];
        v70 = [v52 tokenType];
        v71 = "Albert";
        *buf = 138412802;
        v140 = v68;
        if (v70 == 1)
        {
          v71 = "BAA";
        }

        v141 = 2112;
        v142 = v69;
        v143 = 2080;
        v144 = v71;
        _os_log_impl(&_mh_execute_header, v62, OS_LOG_TYPE_DEFAULT, "Found an existing token in keychain to init clientIdentityManager for environment %@, token: %@, type: %s", buf, 0x20u);
      }

      v72 = [v52 systemToken];
    }

    else
    {
      if (v60)
      {
        if (os_log_type_enabled(v61, OS_LOG_TYPE_DEBUG))
        {
          v67 = [v134 name];
          *buf = 138412290;
          v140 = v67;
          _os_log_impl(&_mh_execute_header, v62, OS_LOG_TYPE_DEBUG, "No token found in keychain for environment %@, setting clientIdentityManager status to unknown", buf, 0xCu);
        }
      }

      else if (os_log_type_enabled(v61, OS_LOG_TYPE_DEFAULT))
      {
        v73 = [v134 name];
        *buf = 138412290;
        v140 = v73;
        _os_log_impl(&_mh_execute_header, v62, OS_LOG_TYPE_DEFAULT, "No token found in keychain for environment %@, setting clientIdentityManager status to unknown", buf, 0xCu);
      }

      v72 = 0;
    }

    cachedPublicToken = v23->_cachedPublicToken;
    v23->_cachedPublicToken = v72;

    objc_storeStrong(&v23->_clientIdentityProvider, a6);
    v23->_swappingIdentity = 0;
    v75 = +[APSSystemMonitor sharedInstance];
    [v75 setActive:1];

    v76 = +[APSSystemMonitor sharedInstance];
    [v76 setWatchesSystemLockState:1];

    v77 = +[APSSystemMonitor sharedInstance];
    [v77 addListener:v23];

    v78 = [CUTWeakReference weakRefWithObject:v23];
    weakSelf = v23->_weakSelf;
    v23->_weakSelf = v78;

    if (sub_10000712C())
    {
      v80 = [[APSTTLCollection alloc] initWithQueue:&_dispatch_main_q ttlInSeconds:60.0];
      tracingEnabledAcksCollection = v23->_tracingEnabledAcksCollection;
      v23->_tracingEnabledAcksCollection = v80;

      [(APSTTLCollection *)v23->_tracingEnabledAcksCollection setDelegate:v23];
    }

    v82 = [[APSTopicManager alloc] initWithEnvironment:v134 topicHasher:v23->_topicHasher user:v133 userPreferences:v130 ultraConstrainedProvider:v23 delegate:v23];
    topicManager = v23->_topicManager;
    v23->_topicManager = v82;

    v84 = objc_alloc_init(APSWakeMetricTracker);
    wakeMetricTracker = v23->_wakeMetricTracker;
    v23->_wakeMetricTracker = v84;

    v86 = objc_alloc_init(NSCountedSet);
    topicsToCauseWake = v23->_topicsToCauseWake;
    v23->_topicsToCauseWake = v86;

    v88 = objc_alloc_init(NSCountedSet);
    offendingTopics = v23->_offendingTopics;
    v23->_offendingTopics = v88;

    v90 = objc_alloc_init(NSCountedSet);
    inhibitedTopics = v23->_inhibitedTopics;
    v23->_inhibitedTopics = v90;

    v92 = [[APSOutgoingMessageQueue alloc] initWithDelegate:v23 environment:v134];
    v93 = v23->_outgoingMessageQueue;
    v23->_outgoingMessageQueue = v92;

    v23->_disconnectReason = 0;
    if (NSClassFromString(@"PKPublicChannel"))
    {
      v94 = [APSPubSubSubscriptionStore alloc];
      v95 = +[APSMessageStore sharedInstance];
      v96 = [(APSPubSubSubscriptionStore *)v94 initWithMessageStore:v95];
      subscriptionStore = v23->_subscriptionStore;
      v23->_subscriptionStore = v96;
    }

    v98 = [(APSEnvironment *)v23->_environment domain];
    v99 = [NSString stringWithFormat:@"%@-waitingformessages-%@", APSBundleIdentifier, v98];

    v100 = [[APSNoOpPowerAssertion alloc] initWithName:v99 category:200 holdDuration:20.0];
    waitForStoredMessagesToArrivePowerAssertion = v23->_waitForStoredMessagesToArrivePowerAssertion;
    v23->_waitForStoredMessagesToArrivePowerAssertion = v100;

    objc_initWeak(&location, v23);
    v135[0] = _NSConcreteStackBlock;
    v135[1] = 3221225472;
    v135[2] = sub_100036240;
    v135[3] = &unk_100186F68;
    objc_copyWeak(&v136, &location);
    v102 = objc_retainBlock(v135);
    [(APSClientIdentityProvider *)v23->_clientIdentityProvider setIdentityAvailabilityDidChangeBlock:v102];
    v103 = +[APSDaemon identityUtilities];
    if ([v103 useMultiIdentityProvider])
    {
      clientIdentityProvider = v23->_clientIdentityProvider;
      objc_opt_class();
      LOBYTE(clientIdentityProvider) = objc_opt_isKindOfClass();

      if (clientIdentityProvider)
      {
        [(APSClientIdentityProvider *)v23->_clientIdentityProvider setDelegate:v23];
      }
    }

    else
    {
    }

    v105 = [(APSUserCourier *)v23 clientIdentityProvider];
    [v105 preloadIdentity:0];

    v106 = +[APSMultiUserMode sharedInstance];
    v107 = [v106 isMultiUser];

    v108 = +[APSMultiUserMode sharedInstance];
    v109 = [v108 isLoggedInUser];

    v110 = +[APSMultiUserFS sharedInstance];
    v111 = [v110 systemPath];

    if (+[APSLog shouldReduceLogging])
    {
      v112 = +[APSLog courier];
      if (os_log_type_enabled(v112, OS_LOG_TYPE_DEBUG))
      {
        v113 = @"NO";
        if (v107)
        {
          v114 = @"YES";
        }

        else
        {
          v114 = @"NO";
        }

        *buf = 138412802;
        v140 = v114;
        v141 = 2112;
        if (v109)
        {
          v113 = @"YES";
        }

        v142 = v113;
        v143 = 2112;
        v144 = v111;
        v115 = v112;
        v116 = OS_LOG_TYPE_DEBUG;
LABEL_61:
        _os_log_impl(&_mh_execute_header, v115, v116, "APSD is under multi user mode: %@, with a logged in user: %@, systemPath: %@", buf, 0x20u);
      }
    }

    else
    {
      v112 = +[APSLog courier];
      if (os_log_type_enabled(v112, OS_LOG_TYPE_DEFAULT))
      {
        v117 = @"NO";
        if (v107)
        {
          v118 = @"YES";
        }

        else
        {
          v118 = @"NO";
        }

        *buf = 138412802;
        v140 = v118;
        v141 = 2112;
        if (v109)
        {
          v117 = @"YES";
        }

        v142 = v117;
        v143 = 2112;
        v144 = v111;
        v115 = v112;
        v116 = OS_LOG_TYPE_DEFAULT;
        goto LABEL_61;
      }
    }

    [(APSUserCourier *)v23 _registerAppTokenCleanup];
    objc_destroyWeak(&v136);
    objc_destroyWeak(&location);
  }

  return v23;
}

- (void)dealloc
{
  weakSelf = self->_weakSelf;
  self->_weakSelf = 0;

  [(APSTopicManager *)self->_topicManager setDelegate:0];
  v4 = +[APSSystemMonitor sharedInstance];
  [v4 removeListener:self];

  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  v5 = [(APSUserCourier *)self connectionServers];
  v6 = [v5 countByEnumeratingWithState:&v22 objects:v27 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v23;
    do
    {
      v9 = 0;
      do
      {
        if (*v23 != v8)
        {
          objc_enumerationMutation(v5);
        }

        [*(*(&v22 + 1) + 8 * v9) setDelegate:0];
        v9 = v9 + 1;
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v22 objects:v27 count:16];
    }

    while (v7);
  }

  [(PCPersistentTimer *)self->_pendingMessageReconnectTimer invalidate];
  [(PCPersistentTimer *)self->_delayedReconnectTimer invalidate];
  v10 = qword_1001BF700;
  if (qword_1001BF700 == self)
  {
    qword_1001BF700 = 0;
  }

  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v11 = self->_proxyClients;
  v12 = [(NSMutableDictionary *)v11 countByEnumeratingWithState:&v18 objects:v26 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v19;
    do
    {
      v15 = 0;
      do
      {
        if (*v19 != v14)
        {
          objc_enumerationMutation(v11);
        }

        v16 = [(NSMutableDictionary *)self->_proxyClients objectForKey:*(*(&v18 + 1) + 8 * v15)];
        [v16 setDelegate:0];

        v15 = v15 + 1;
      }

      while (v13 != v15);
      v13 = [(NSMutableDictionary *)v11 countByEnumeratingWithState:&v18 objects:v26 count:16];
    }

    while (v13);
  }

  v17.receiver = self;
  v17.super_class = APSUserCourier;
  [(APSUserCourier *)&v17 dealloc];
}

- (id)_proxyManager
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v3 = [WeakRetained proxyManager];

  return v3;
}

- (id)copyOperatorName
{
  v2 = +[PCCarrierBundleHelper helper];
  v3 = [v2 copyValueForKey:APSCarrierNameKey error:0];

  return v3;
}

- (void)_adjustIsConnectedToService
{
  if ([(APSUserCourier *)self hasConnectedInterface])
  {
    v3 = 1;
  }

  else
  {
    v4 = [(APSUserCourier *)self protocolConnectionEstablisher];
    v3 = [v4 countConnectedInterfaces] != 0;
  }

  [(APSUserCourier *)self setIsConnectedToService:v3];
}

- (void)setIsConnectedToService:(BOOL)a3
{
  if (self->_isConnectedToService == a3)
  {
    goto LABEL_20;
  }

  v4 = a3;
  v5 = +[APSLog shouldReduceLogging];
  v6 = +[APSLog courier];
  v7 = v6;
  if (v5)
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      v8 = @"NO";
      if (v4)
      {
        v8 = @"YES";
      }

      *buf = 138412546;
      v24 = self;
      v25 = 2112;
      v26 = v8;
      v9 = v7;
      v10 = OS_LOG_TYPE_DEBUG;
LABEL_11:
      _os_log_impl(&_mh_execute_header, v9, v10, "%@ setting isConnectedToService %@", buf, 0x16u);
    }
  }

  else if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v11 = @"NO";
    if (v4)
    {
      v11 = @"YES";
    }

    *buf = 138412546;
    v24 = self;
    v25 = 2112;
    v26 = v11;
    v9 = v7;
    v10 = OS_LOG_TYPE_DEFAULT;
    goto LABEL_11;
  }

  self->_isConnectedToService = v4;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v12 = [(APSUserCourier *)self connectionServers];
  v13 = [v12 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v19;
    do
    {
      for (i = 0; i != v14; i = i + 1)
      {
        if (*v19 != v15)
        {
          objc_enumerationMutation(v12);
        }

        [*(*(&v18 + 1) + 8 * i) handleConnectionStatusChanged:self->_isConnectedToService];
      }

      v14 = [v12 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v14);
  }

LABEL_20:
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained courierConnectionStatusDidChange:self];

  [(APSUserCourier *)self attemptToRollSalt];
}

- (void)setPublicToken:(id)a3 fromServer:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v7 = self->_cachedPublicToken;
  v8 = v7;
  if (v7 == v6 || v7 && [(NSData *)v6 isEqualToData:v7])
  {
    goto LABEL_45;
  }

  if (self->_cachedPublicToken)
  {
    v9 = v6 == 0;
  }

  else
  {
    v9 = 0;
  }

  if (v8)
  {
    v10 = 0;
  }

  else
  {
    v10 = v6 != 0;
  }

  v11 = v4 || v9;
  if (v4 || v9)
  {
    v12 = +[APSLog shouldReduceLogging];
    v13 = +[APSLog courier];
    v14 = v13;
    if (v12)
    {
      if (!os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
      {
        goto LABEL_27;
      }

      v15 = @"NO";
      if (v4)
      {
        v16 = @"YES";
      }

      else
      {
        v16 = @"NO";
      }

      *buf = 138412802;
      v48 = self;
      v50 = v16;
      v49 = 2112;
      if (v9)
      {
        v15 = @"YES";
      }

      v51 = 2112;
      v52 = v15;
      v17 = v14;
      v18 = OS_LOG_TYPE_DEBUG;
    }

    else
    {
      if (!os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_27;
      }

      v19 = @"NO";
      if (v4)
      {
        v20 = @"YES";
      }

      else
      {
        v20 = @"NO";
      }

      *buf = 138412802;
      v48 = self;
      v50 = v20;
      v49 = 2112;
      if (v9)
      {
        v19 = @"YES";
      }

      v51 = 2112;
      v52 = v19;
      v17 = v14;
      v18 = OS_LOG_TYPE_DEFAULT;
    }

    _os_log_impl(&_mh_execute_header, v17, v18, "%@ Nuking app-specific tokens. FromServer %@  lostToken %@", buf, 0x20u);
LABEL_27:

    tokenStore = self->_tokenStore;
    v22 = [(APSUserCourier *)self courierUser];
    [(APSTokenStore *)tokenStore deleteAppTokensForUser:v22];

    LODWORD(v22) = +[APSLog shouldReduceLogging];
    v23 = +[APSLog courier];
    v24 = v23;
    if (v22)
    {
      if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
      {
        v25 = [(NSData *)v6 length];
        v26 = [(NSData *)v6 debugDescription];
        *buf = 138412802;
        v48 = self;
        v49 = 2048;
        v50 = v25;
        v51 = 2112;
        v52 = v26;
        v27 = v24;
        v28 = OS_LOG_TYPE_DEBUG;
LABEL_32:
        _os_log_impl(&_mh_execute_header, v27, v28, "%@ Updating device push token in the keychain to [length = %lu, token = %@]", buf, 0x20u);
      }
    }

    else if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
    {
      v29 = [(NSData *)v6 length];
      v26 = [(NSData *)v6 debugDescription];
      *buf = 138412802;
      v48 = self;
      v49 = 2048;
      v50 = v29;
      v51 = 2112;
      v52 = v26;
      v27 = v24;
      v28 = OS_LOG_TYPE_DEFAULT;
      goto LABEL_32;
    }

    v30 = [(APSUserCourier *)self clientIdentityProvider];
    v31 = [v30 currentTokenType];

    v32 = [[APSSystemTokenInfo alloc] initWithSystemToken:v6 type:v31];
    v33 = [(APSUserCourier *)self systemTokenStorage];
    v34 = [(APSUserCourier *)self environment];
    [v33 setTokenInfo:v32 forEnvironment:v34];
  }

  v35 = [(NSData *)v6 copy];
  cachedPublicToken = self->_cachedPublicToken;
  self->_cachedPublicToken = v35;

  if (v10)
  {
    [(APSUserCourier *)self _requestToSendFilterOnTopicManager:self->_topicManager change:0];
  }

  v44 = 0u;
  v45 = 0u;
  v42 = 0u;
  v43 = 0u;
  v37 = [(APSUserCourier *)self connectionServers];
  v38 = [v37 countByEnumeratingWithState:&v42 objects:v46 count:16];
  if (v38)
  {
    v39 = v38;
    v40 = *v43;
    do
    {
      for (i = 0; i != v39; i = i + 1)
      {
        if (*v43 != v40)
        {
          objc_enumerationMutation(v37);
        }

        [*(*(&v42 + 1) + 8 * i) setPublicToken:v6 needsAck:v11];
      }

      v39 = [v37 countByEnumeratingWithState:&v42 objects:v46 count:16];
    }

    while (v39);
  }

  if (v9)
  {
    [(APSUserCourier *)self _handleLostPushTokens];
  }

LABEL_45:
}

- (void)setMessageSize:(unint64_t)a3
{
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v5 = self->_proxyClients;
  v6 = [(NSMutableDictionary *)v5 countByEnumeratingWithState:&v20 objects:v25 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v21;
    do
    {
      v9 = 0;
      do
      {
        if (*v21 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = [(NSMutableDictionary *)self->_proxyClients objectForKey:*(*(&v20 + 1) + 8 * v9)];
        [v10 setMessageSize:a3];

        v9 = v9 + 1;
      }

      while (v7 != v9);
      v7 = [(NSMutableDictionary *)v5 countByEnumeratingWithState:&v20 objects:v25 count:16];
    }

    while (v7);
  }

  if ([(APSEnvironment *)self->_environment messageSize]!= a3)
  {
    [(APSEnvironment *)self->_environment setMessageSize:a3];
    v18 = 0u;
    v19 = 0u;
    v16 = 0u;
    v17 = 0u;
    v11 = [(APSUserCourier *)self connectionServers];
    v12 = [v11 countByEnumeratingWithState:&v16 objects:v24 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v17;
      do
      {
        v15 = 0;
        do
        {
          if (*v17 != v14)
          {
            objc_enumerationMutation(v11);
          }

          [*(*(&v16 + 1) + 8 * v15) setMessageSize:a3];
          v15 = v15 + 1;
        }

        while (v13 != v15);
        v13 = [v11 countByEnumeratingWithState:&v16 objects:v24 count:16];
      }

      while (v13);
    }
  }
}

- (void)setLargeMessageSize:(unint64_t)a3
{
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v5 = self->_proxyClients;
  v6 = [(NSMutableDictionary *)v5 countByEnumeratingWithState:&v20 objects:v25 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v21;
    do
    {
      v9 = 0;
      do
      {
        if (*v21 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = [(NSMutableDictionary *)self->_proxyClients objectForKey:*(*(&v20 + 1) + 8 * v9)];
        [v10 setLargeMessageSize:a3];

        v9 = v9 + 1;
      }

      while (v7 != v9);
      v7 = [(NSMutableDictionary *)v5 countByEnumeratingWithState:&v20 objects:v25 count:16];
    }

    while (v7);
  }

  if ([(APSEnvironment *)self->_environment largeMessageSize]!= a3)
  {
    [(APSEnvironment *)self->_environment setLargeMessageSize:a3];
    v18 = 0u;
    v19 = 0u;
    v16 = 0u;
    v17 = 0u;
    v11 = [(APSUserCourier *)self connectionServers];
    v12 = [v11 countByEnumeratingWithState:&v16 objects:v24 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v17;
      do
      {
        v15 = 0;
        do
        {
          if (*v17 != v14)
          {
            objc_enumerationMutation(v11);
          }

          [*(*(&v16 + 1) + 8 * v15) setLargeMessageSize:a3];
          v15 = v15 + 1;
        }

        while (v13 != v15);
        v13 = [v11 countByEnumeratingWithState:&v16 objects:v24 count:16];
      }

      while (v13);
    }
  }
}

- (void)setEnabled:(BOOL)a3
{
  if (self->_enabled != a3)
  {
    v3 = a3;
    self->_enabled = a3;
    v5 = +[APSLog shouldReduceLogging];
    v6 = +[APSLog courier];
    v7 = v6;
    if (v5)
    {
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
      {
        if (v3)
        {
          v8 = @"YES";
        }

        else
        {
          v8 = @"NO";
        }

        v9 = [(APSTopicManager *)self->_topicManager logString];
        v13 = 138412802;
        v14 = self;
        v15 = 2112;
        v16 = v8;
        v17 = 2112;
        v18 = v9;
        v10 = v7;
        v11 = OS_LOG_TYPE_DEBUG;
LABEL_13:
        _os_log_impl(&_mh_execute_header, v10, v11, "%@ setEnabled %@   %@", &v13, 0x20u);
      }
    }

    else if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      if (v3)
      {
        v12 = @"YES";
      }

      else
      {
        v12 = @"NO";
      }

      v9 = [(APSTopicManager *)self->_topicManager logString];
      v13 = 138412802;
      v14 = self;
      v15 = 2112;
      v16 = v12;
      v17 = 2112;
      v18 = v9;
      v10 = v7;
      v11 = OS_LOG_TYPE_DEFAULT;
      goto LABEL_13;
    }

    [(APSUserCourier *)self _processStoredIncomingMessages];
    [(APSUserCourier *)self _processStoredOutgoingMessages];
    [(APSUserCourier *)self _processShouldRunChangeIfNecessary];
  }
}

- (BOOL)_useShortKeepAliveInterval
{
  if (qword_1001BF710 != -1)
  {
    sub_100108D24();
  }

  return byte_1001BF708;
}

- (BOOL)wantsCriticalReliability
{
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v2 = [(APSUserCourier *)self connectionServers];
  v3 = [v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
  if (v3)
  {
    v4 = *v8;
    while (2)
    {
      for (i = 0; i != v3; i = i + 1)
      {
        if (*v8 != v4)
        {
          objc_enumerationMutation(v2);
        }

        if ([*(*(&v7 + 1) + 8 * i) enableCriticalReliability])
        {
          LOBYTE(v3) = 1;
          goto LABEL_11;
        }
      }

      v3 = [v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
      if (v3)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v3;
}

- (BOOL)isInteractivePushDuringSleepEnabled
{
  if (![(APSUserCourier *)self _requestKeepAliveProxy]|| ![(APSUserCourier *)self isConnectableRightNow])
  {
    return 0;
  }

  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  v3 = [(APSUserCourier *)self connectionServers];
  v4 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v11;
    while (2)
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v11 != v6)
        {
          objc_enumerationMutation(v3);
        }

        if ([(APSUserCourier *)self _isInteractivePushDuringSleepEnabledForConnectionServer:*(*(&v10 + 1) + 8 * i)])
        {
          v8 = 1;
          goto LABEL_14;
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
      if (v5)
      {
        continue;
      }

      break;
    }
  }

  v8 = 0;
LABEL_14:

  return v8;
}

- (BOOL)isKeepAliveProxyConfigured
{
  v3 = [(APSUserCourier *)self protocolConnectionEstablisher];
  if ([v3 isKeepAliveProxyConfiguredOnAnyConnection])
  {
    v4 = [(APSUserCourier *)self hasConnectedInterface];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (BOOL)hasReasonToConnect
{
  v3 = [(APSUserCourier *)self _isIdentityAvailable];
  if (v3)
  {

    LOBYTE(v3) = [(APSUserCourier *)self shouldRun];
  }

  return v3;
}

- (void)logStateWithReason:(id)a3
{
  v4 = a3;
  v5 = v4;
  v6 = @"STATEDUMP";
  if (v4)
  {
    v6 = v4;
  }

  v7 = v6;
  v8 = +[APSLog courierOversized];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = [(APSUserCourier *)self verboseDescription];
    v10 = 138412546;
    v11 = v7;
    v12 = 2112;
    v13 = v9;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "[%@] %@", &v10, 0x16u);
  }
}

- (NSString)debugDescription
{
  v14 = objc_opt_class();
  courierUser = self->_courierUser;
  v4 = [(APSUserCourier *)self _countActiveClients];
  if ([(APSUserCourier *)self shouldUseInternet])
  {
    v5 = @"YES";
  }

  else
  {
    v5 = @"NO";
  }

  v6 = [(APSUserCourier *)self publicToken];
  v7 = [v6 debugDescription];
  if ([(APSUserCourier *)self _isIdentityAvailable])
  {
    v8 = @"YES";
  }

  else
  {
    v8 = @"NO";
  }

  v9 = [(APSUserCourier *)self connectionServers];
  v10 = APSPrettyPrintCollection();
  v11 = [(APSTopicManager *)self->_topicManager logString];
  v12 = [NSString stringWithFormat:@"<%@ %p: user=%@, activeClients=%lu, shouldUseInternet=%@, publicToken=%@, isIdentityAvailable=%@, connectionServers=%@, deviceTopicManager=%@>", v14, self, courierUser, v4, v5, v7, v8, v10, v11];

  return v12;
}

- (id)aps_prettyDescription
{
  v3 = objc_alloc_init(NSMutableArray);
  v4 = [(APSUserCourier *)self subscriptionStore];
  v5 = [(APSUserCourier *)self environment];
  v6 = [v5 name];
  v7 = [(APSUserCourier *)self courierUser];
  v8 = [v7 pubSubName];
  v9 = [v4 inMemorySubscriptionsForEnvironment:v6 userName:v8];

  v10 = [(APSUserCourier *)self subscriptionStore];
  v11 = [(APSUserCourier *)self environment];
  v12 = [v11 name];
  v50 = self;
  v13 = [(APSUserCourier *)self courierUser];
  v14 = [v13 pubSubName];
  v48 = [v10 databaseSubscriptionsForEnvironment:v12 userName:v14];

  v59 = 0u;
  v60 = 0u;
  v57 = 0u;
  v58 = 0u;
  obj = v9;
  v15 = [obj countByEnumeratingWithState:&v57 objects:v62 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = *v58;
    do
    {
      for (i = 0; i != v16; i = i + 1)
      {
        if (*v58 != v17)
        {
          objc_enumerationMutation(obj);
        }

        v19 = *(*(&v57 + 1) + 8 * i);
        v20 = [v19 channelID];
        v21 = [v19 channelTopic];
        v22 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"<%@, topic=%@, checkpoint=%llu inMemoryOnly=%@>", v20, v21, [v19 checkpoint], @"YES");
        [v3 addObject:v22];
      }

      v16 = [obj countByEnumeratingWithState:&v57 objects:v62 count:16];
    }

    while (v16);
  }

  v55 = 0u;
  v56 = 0u;
  v53 = 0u;
  v54 = 0u;
  v23 = v48;
  v24 = [v23 countByEnumeratingWithState:&v53 objects:v61 count:16];
  if (v24)
  {
    v25 = v24;
    v26 = *v54;
    do
    {
      for (j = 0; j != v25; j = j + 1)
      {
        if (*v54 != v26)
        {
          objc_enumerationMutation(v23);
        }

        v28 = *(*(&v53 + 1) + 8 * j);
        v29 = [v28 channelID];
        v30 = [v28 channelTopic];
        v31 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"<%@, topic=%@, checkpoint=%llu inMemoryOnly=%@>", v29, v30, [v28 checkpoint], @"NO");
        [v3 addObject:v31];
      }

      v25 = [v23 countByEnumeratingWithState:&v53 objects:v61 count:16];
    }

    while (v25);
  }

  v49 = v23;

  courierUser = v50->_courierUser;
  v45 = APSPrettyPrintObject();
  v47 = [(NSMutableDictionary *)v50->_proxyClients allValues];
  v44 = APSPrettyPrintCollection();
  v33 = @"YES";
  if ([(APSUserCourier *)v50 shouldUseInternet])
  {
    v34 = @"YES";
  }

  else
  {
    v34 = @"NO";
  }

  v46 = [(APSUserCourier *)v50 publicToken];
  v35 = [v46 debugDescription];
  if (![(APSUserCourier *)v50 _isIdentityAvailable])
  {
    v33 = @"NO";
  }

  v36 = [(APSUserCourier *)v50 clientIdentityProvider];
  v37 = objc_opt_class();
  v38 = NSStringFromClass(v37);
  v39 = [(APSUserCourier *)v50 connectionServers];
  v40 = APSPrettyPrintCollection();
  v41 = [(APSTopicManager *)v50->_topicManager logString];
  v42 = APSPrettyPrintCollection();
  v51 = [NSString stringWithFormat:@"<user=%@, activeClients=%@, shouldUseInternet=%@, publicToken=%@, isIdentityAvailable=%@, identityStatus=%@, connectionServers=%@, deviceTopicManager=%@, channels=%@>", v45, v44, v34, v35, v33, v38, v40, v41, v42];

  return v51;
}

- (id)JSONDebugState
{
  v54[0] = @"enabled";
  v3 = [NSNumber numberWithBool:self->_enabled];
  v54[1] = @"connectedToService";
  v55[0] = v3;
  v4 = [NSNumber numberWithBool:self->_isConnectedToService];
  v55[1] = v4;
  v5 = [NSDictionary dictionaryWithObjects:v55 forKeys:v54 count:2];
  v6 = [v5 mutableCopy];

  lastReceivedTopic = self->_lastReceivedTopic;
  if (lastReceivedTopic)
  {
    [v6 setObject:lastReceivedTopic forKeyedSubscript:@"lastReceivedTopic"];
    v8 = [NSNumber numberWithDouble:self->_lastReceivedTopicTime];
    [v6 setObject:v8 forKeyedSubscript:@"lastReceivedTopicTime"];
  }

  if (self->_lastClientRequestedKeepaliveTime != 0.0)
  {
    v9 = [NSNumber numberWithDouble:?];
    [v6 setObject:v9 forKeyedSubscript:@"lastKeepaliveRequestTime"];

    [(NSDate *)self->_timeSinceLastKeepAlive timeIntervalSinceReferenceDate];
    v10 = [NSNumber numberWithDouble:?];
    [v6 setObject:v10 forKeyedSubscript:@"lastKeepaliveResponseTime"];
  }

  v40 = v6;
  v11 = +[APSMessageStore sharedInstance];
  v12 = [(APSEnvironment *)self->_environment name];
  v39 = self;
  v13 = [(APSUserCourier *)self courierUser];
  v14 = [v13 pubSubName];
  v15 = [v11 allRegisteredChannelsForEnvironment:v12 userName:v14];

  v16 = objc_alloc_init(NSMutableDictionary);
  v46 = 0u;
  v47 = 0u;
  v48 = 0u;
  v49 = 0u;
  obj = v15;
  v17 = [obj countByEnumeratingWithState:&v46 objects:v53 count:16];
  if (v17)
  {
    v18 = v17;
    v19 = *v47;
    do
    {
      for (i = 0; i != v18; i = i + 1)
      {
        if (*v47 != v19)
        {
          objc_enumerationMutation(obj);
        }

        v21 = *(*(&v46 + 1) + 8 * i);
        v22 = [v21 channelTopic];
        v23 = [v16 objectForKeyedSubscript:v22];

        if (!v23)
        {
          v24 = +[NSMutableArray array];
          v25 = [v21 channelTopic];
          [v16 setObject:v24 forKeyedSubscript:v25];
        }

        v26 = [v21 channelTopic];
        v27 = [v16 objectForKeyedSubscript:v26];
        v51[0] = @"channel";
        v28 = [v21 channelID];
        v51[1] = @"checkpoint";
        v52[0] = v28;
        v29 = +[NSNumber numberWithUnsignedLongLong:](NSNumber, "numberWithUnsignedLongLong:", [v21 checkpoint]);
        v52[1] = v29;
        v30 = [NSDictionary dictionaryWithObjects:v52 forKeys:v51 count:2];
        [v27 addObject:v30];
      }

      v18 = [obj countByEnumeratingWithState:&v46 objects:v53 count:16];
    }

    while (v18);
  }

  [v40 setObject:v16 forKeyedSubscript:@"channels"];
  v31 = objc_alloc_init(NSMutableArray);
  v42 = 0u;
  v43 = 0u;
  v44 = 0u;
  v45 = 0u;
  v32 = [(APSUserCourier *)v39 connectionServers];
  v33 = [v32 countByEnumeratingWithState:&v42 objects:v50 count:16];
  if (v33)
  {
    v34 = v33;
    v35 = *v43;
    do
    {
      for (j = 0; j != v34; j = j + 1)
      {
        if (*v43 != v35)
        {
          objc_enumerationMutation(v32);
        }

        v37 = [*(*(&v42 + 1) + 8 * j) JSONDebugState];
        [v31 addObject:v37];
      }

      v34 = [v32 countByEnumeratingWithState:&v42 objects:v50 count:16];
    }

    while (v34);
  }

  [v40 setObject:v31 forKeyedSubscript:@"connectionServers"];

  return v40;
}

- (void)appendPrettyStatusToStatusPrinter:(id)a3
{
  v4 = a3;
  if (self->_isConnectedToService)
  {
    v5 = @"Connected";
  }

  else if (self->_enabled)
  {
    if (self->_disconnectingStream)
    {
      v5 = @"Disconnecting";
    }

    else if ([(APSUserCourier *)self _hasListeningTopics])
    {
      if ([(APSUserCourier *)self _isIdentityAvailable])
      {
        v5 = @"Unknown";
      }

      else
      {
        v5 = @"Not connected because the device identity is not available";
      }
    }

    else
    {
      v5 = @"Not connected because there are no eligible topics";
    }
  }

  else
  {
    v5 = @"Disabled";
  }

  [v4 appendDescription:@"courier status" stringValue:v5];
  [v4 pushIndent];
  [v4 appendDescription:@"enabled" BOOLValue:self->_enabled];
  v6 = [(APSUserCourier *)self protocolConnectionEstablisher];
  [v4 appendDescription:@"stream connected" BOOLValue:{objc_msgSend(v6, "countOpenConnections") != 0}];

  [v4 appendDescription:@"stream connected" BOOLValue:{-[APSUserCourier hasConnectedInterface](self, "hasConnectedInterface")}];
  [v4 appendDescription:@"connected to service" BOOLValue:self->_isConnectedToService];
  [v4 pushIndent];
  if (self->_successfulConnectionCount >= 1)
  {
    [v4 appendDescription:@"successful connections" unsignedIntegerValue:?];
  }

  [v4 popIndent];
  if (self->_lastReceivedTopic)
  {
    [v4 appendDescription:@"last received topic" stringValue:?];
    [v4 appendDescription:@"last received topic time" timeIntervalValue:self->_lastReceivedTopicTime];
  }

  if (self->_lastClientRequestedKeepaliveTime != 0.0)
  {
    [v4 appendDescription:@"last keepalive request time" timeIntervalValue:?];
    [v4 appendDescription:@"last keepalive response time" dateValue:self->_timeSinceLastKeepAlive];
  }

  if (+[APSNWTCPStream isKeepAliveProxyFeatureEnabled]&& [(APSUserCourier *)self _requestKeepAliveProxy])
  {
    if (self->_lastReceivedTopicToCauseWake)
    {
      v88 = 0u;
      v89 = 0u;
      v86 = 0u;
      v87 = 0u;
      v7 = self->_topicsToCauseWake;
      v8 = [(NSCountedSet *)v7 countByEnumeratingWithState:&v86 objects:v96 count:16];
      if (v8)
      {
        v9 = v8;
        v10 = 0;
        v11 = *v87;
        do
        {
          for (i = 0; i != v9; i = i + 1)
          {
            if (*v87 != v11)
            {
              objc_enumerationMutation(v7);
            }

            v10 += [(NSCountedSet *)self->_topicsToCauseWake countForObject:*(*(&v86 + 1) + 8 * i)];
          }

          v9 = [(NSCountedSet *)v7 countByEnumeratingWithState:&v86 objects:v96 count:16];
        }

        while (v9);
      }

      else
      {
        v10 = 0;
      }

      [v4 appendDescription:@"total push wakes" unsignedIntegerValue:v10];
      [v4 pushIndent];
      [v4 appendDescription:@"last push wake topic" stringValue:self->_lastReceivedTopicToCauseWake];
      [v4 appendDescription:@"last push wake time" timeIntervalValue:self->_lastReceivedTopicToCauseWakeTime];
      [v4 appendDescription:@"push wake topics" unsignedIntegerValue:{-[NSCountedSet count](self->_topicsToCauseWake, "count")}];
      [v4 pushIndent];
      v84 = 0u;
      v85 = 0u;
      v82 = 0u;
      v83 = 0u;
      v13 = self->_topicsToCauseWake;
      v14 = [(NSCountedSet *)v13 countByEnumeratingWithState:&v82 objects:v95 count:16];
      if (v14)
      {
        v15 = v14;
        v16 = *v83;
        do
        {
          for (j = 0; j != v15; j = j + 1)
          {
            if (*v83 != v16)
            {
              objc_enumerationMutation(v13);
            }

            v18 = *(*(&v82 + 1) + 8 * j);
            [v4 appendDescription:@"push wake topic" stringValue:v18];
            [v4 pushIndent];
            [v4 appendDescription:@"push wakes" unsignedIntegerValue:{-[NSCountedSet countForObject:](self->_topicsToCauseWake, "countForObject:", v18)}];
            if ([(NSCountedSet *)self->_offendingTopics containsObject:v18])
            {
              [v4 appendDescription:@"offending messages" unsignedIntegerValue:{-[NSCountedSet countForObject:](self->_offendingTopics, "countForObject:", v18)}];
            }

            [v4 popIndent];
          }

          v15 = [(NSCountedSet *)v13 countByEnumeratingWithState:&v82 objects:v95 count:16];
        }

        while (v15);
      }

      [v4 popIndent];
      [v4 popIndent];
    }

    [v4 pushIndent];
    if (self->_findKeepAliveProxyInterfaceFailureCount)
    {
      [v4 appendDescription:@"interface available failures" unsignedIntegerValue:?];
    }

    if (self->_forceKeepAliveProxyInterfaceFailureCount)
    {
      [v4 appendDescription:@"interface switch failures" unsignedIntegerValue:?];
    }

    if (self->_obtainKeepAliveProxyFailureCount)
    {
      [v4 appendDescription:@"proxy request failures" unsignedIntegerValue:?];
    }

    [v4 popIndent];
  }

  if ([(APSUserCourier *)self isInteractivePushDuringSleepEnabled])
  {
    [v4 appendDescription:@"interactive push" BOOLValue:{-[APSUserCourier isInteractivePushDuringSleepEnabled](self, "isInteractivePushDuringSleepEnabled")}];
  }

  if ([(NSCountedSet *)self->_inhibitedTopics count])
  {
    [v4 appendDescription:@"inhibited topics" unsignedIntegerValue:{-[NSCountedSet count](self->_inhibitedTopics, "count")}];
    [v4 pushIndent];
    v80 = 0u;
    v81 = 0u;
    v78 = 0u;
    v79 = 0u;
    v19 = self->_inhibitedTopics;
    v20 = [(NSCountedSet *)v19 countByEnumeratingWithState:&v78 objects:v94 count:16];
    if (v20)
    {
      v21 = v20;
      v22 = *v79;
      do
      {
        for (k = 0; k != v21; k = k + 1)
        {
          if (*v79 != v22)
          {
            objc_enumerationMutation(v19);
          }

          v24 = *(*(&v78 + 1) + 8 * k);
          [v4 appendDescription:@"inhibited topic" stringValue:v24];
          [v4 pushIndent];
          [v4 appendDescription:@"inhibited messages" unsignedIntegerValue:{-[NSCountedSet countForObject:](self->_inhibitedTopics, "countForObject:", v24)}];
          [v4 popIndent];
        }

        v21 = [(NSCountedSet *)v19 countByEnumeratingWithState:&v78 objects:v94 count:16];
      }

      while (v21);
    }

    [v4 popIndent];
  }

  [(APSOutgoingMessageQueue *)self->_outgoingMessageQueue appendPrettyStatusToStatusPrinter:v4];
  v25 = +[APSMessageStore sharedInstance];
  v26 = [(APSEnvironment *)self->_environment name];
  v27 = [(APSUserCourier *)self courierUser];
  v28 = [v27 pubSubName];
  v29 = [v25 allRegisteredChannelsForEnvironment:v26 userName:v28];

  [v4 appendDescription:@"subscribed channels" unsignedLongLongValue:{objc_msgSend(v29, "count")}];
  [v4 pushIndent];
  v30 = objc_alloc_init(NSMutableDictionary);
  v74 = 0u;
  v75 = 0u;
  v76 = 0u;
  v77 = 0u;
  obj = v29;
  v31 = [obj countByEnumeratingWithState:&v74 objects:v93 count:16];
  if (v31)
  {
    v32 = v31;
    v33 = *v75;
    do
    {
      for (m = 0; m != v32; m = m + 1)
      {
        if (*v75 != v33)
        {
          objc_enumerationMutation(obj);
        }

        v35 = *(*(&v74 + 1) + 8 * m);
        v36 = [v35 channelTopic];
        v37 = [v30 objectForKeyedSubscript:v36];

        if (!v37)
        {
          v38 = +[NSMutableArray array];
          v39 = [v35 channelTopic];
          [v30 setObject:v38 forKeyedSubscript:v39];
        }

        v40 = [v35 channelTopic];
        v41 = [v30 objectForKeyedSubscript:v40];
        [v41 addObject:v35];
      }

      v32 = [obj countByEnumeratingWithState:&v74 objects:v93 count:16];
    }

    while (v32);
  }

  v57 = self;

  v72 = 0u;
  v73 = 0u;
  v70 = 0u;
  v71 = 0u;
  v61 = v30;
  v60 = [v61 countByEnumeratingWithState:&v70 objects:v92 count:16];
  if (v60)
  {
    v59 = *v71;
    do
    {
      for (n = 0; n != v60; n = n + 1)
      {
        if (*v71 != v59)
        {
          objc_enumerationMutation(v61);
        }

        v43 = *(*(&v70 + 1) + 8 * n);
        [v4 pushIndent];
        v44 = [v61 objectForKeyedSubscript:v43];
        [v4 appendDescription:v43 unsignedLongLongValue:{objc_msgSend(v44, "count")}];
        v68 = 0u;
        v69 = 0u;
        v66 = 0u;
        v67 = 0u;
        v45 = v44;
        v46 = [v45 countByEnumeratingWithState:&v66 objects:v91 count:16];
        if (v46)
        {
          v47 = v46;
          v48 = *v67;
          do
          {
            for (ii = 0; ii != v47; ii = ii + 1)
            {
              if (*v67 != v48)
              {
                objc_enumerationMutation(v45);
              }

              v50 = *(*(&v66 + 1) + 8 * ii);
              [v4 pushIndent];
              v51 = [v50 channelID];
              [v4 appendDescription:@"channel" stringValue:v51];

              [v4 pushIndent];
              [v4 appendDescription:@"checkpoint" unsignedLongLongValue:{objc_msgSend(v50, "checkpoint")}];
              [v4 popIndent];
              [v4 popIndent];
            }

            v47 = [v45 countByEnumeratingWithState:&v66 objects:v91 count:16];
          }

          while (v47);
        }

        [v4 popIndent];
      }

      v60 = [v61 countByEnumeratingWithState:&v70 objects:v92 count:16];
    }

    while (v60);
  }

  [v4 popIndent];
  v64 = 0u;
  v65 = 0u;
  v62 = 0u;
  v63 = 0u;
  v52 = [(APSUserCourier *)v57 connectionServers];
  v53 = [v52 countByEnumeratingWithState:&v62 objects:v90 count:16];
  if (v53)
  {
    v54 = v53;
    v55 = *v63;
    do
    {
      for (jj = 0; jj != v54; jj = jj + 1)
      {
        if (*v63 != v55)
        {
          objc_enumerationMutation(v52);
        }

        [*(*(&v62 + 1) + 8 * jj) appendPrettyStatusToStatusPrinter:v4];
      }

      v54 = [v52 countByEnumeratingWithState:&v62 objects:v90 count:16];
    }

    while (v54);
  }

  [v4 popIndent];
}

- (void)_triggerAutoBugCaptureIfMessageIsRetried:(id)a3
{
  v4 = a3;
  if (sub_10000712C())
  {
    v5 = [v4 topic];
    v6 = [v5 isEqualToString:@"com.apple.madrid"];

    if (v6)
    {
      v7 = [v4 userInfo];
      v8 = [v7 objectForKey:@"rc"];
      v9 = [v8 intValue];

      if (v9 < 1)
      {
LABEL_13:

        goto LABEL_14;
      }

      v10 = +[APSLog shouldReduceLogging];
      v11 = +[APSLog courier];
      v12 = v11;
      if (v10)
      {
        if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
        {
          v13 = [v7 objectForKey:@"U"];
          v14 = [v7 objectForKey:@"rc"];
          *buf = 138412546;
          v22 = v13;
          v23 = 1024;
          v24 = [v14 intValue];
          v15 = v12;
          v16 = OS_LOG_TYPE_DEBUG;
LABEL_9:
          _os_log_impl(&_mh_execute_header, v15, v16, "triggering ABC for message with guid %@ retry count %d", buf, 0x12u);
        }
      }

      else if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        v13 = [v7 objectForKey:@"U"];
        v14 = [v7 objectForKey:@"rc"];
        *buf = 138412546;
        v22 = v13;
        v23 = 1024;
        v24 = [v14 intValue];
        v15 = v12;
        v16 = OS_LOG_TYPE_DEFAULT;
        goto LABEL_9;
      }

      if (!self->_symptomReporter)
      {
        v17 = objc_alloc_init(APSSymptomReporter);
        symptomReporter = self->_symptomReporter;
        self->_symptomReporter = v17;
      }

      v19 = [v7 objectForKey:@"rc"];
      v20 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"RetryCount%d", [v19 intValue]);

      [(APSSymptomReporter *)self->_symptomReporter reportSymptomToAutoBugCapture:@"RetriedMessage" subType:v20];
      goto LABEL_13;
    }
  }

LABEL_14:
}

- (void)_dumpLogsForInconsistencyIfNecessary
{
  if (qword_1001BF700 == self)
  {
    [NSObject cancelPreviousPerformRequestsWithTarget:self selector:"__dumpLogsForInconsistencyIfNecessary" object:0];

    [(APSUserCourier *)self performSelector:"__dumpLogsForInconsistencyIfNecessary" withObject:0 afterDelay:1.0];
  }
}

- (void)__dumpLogsForInconsistencyIfNecessary
{
  Current = CFAbsoluteTimeGetCurrent();
  if (Current - *&qword_1001BF720 > 7200.0)
  {
    v4 = qword_1001BF718;
    qword_1001BF718 = 0;
  }

  v5 = +[APSLog courier];
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_INFO);

  if (v6)
  {
    v7 = qword_1001BF728;
    qword_1001BF728 = 0;
    v21 = 0;
    v22 = &v21;
    v23 = 0x2020000000;
    v24 = 0;
    v20[0] = _NSConcreteStackBlock;
    v20[1] = 3221225472;
    v20[2] = sub_100039200;
    v20[3] = &unk_100186FD8;
    v20[4] = &v21;
    [(APSUserCourier *)self enumerateConnectedProtocolConnectionsOfType:1 block:v20];
    if (*(v22 + 24) == 1)
    {
      qword_1001BF728 = *&Current;
      v8 = @"APSD - WiFi LQ is OFF but wifi reachability is YES";
    }

    else
    {
      *buf = 0;
      *&buf[8] = buf;
      *&buf[16] = 0x2020000000;
      LOBYTE(v26) = 0;
      v19[0] = _NSConcreteStackBlock;
      v19[1] = 3221225472;
      v19[2] = sub_100039274;
      v19[3] = &unk_100186FD8;
      v19[4] = buf;
      [(APSUserCourier *)self enumerateConnectedProtocolConnectionsOfType:0 block:v19];
      if (*(*&buf[8] + 24) == 1)
      {
        qword_1001BF728 = *&Current;
        v8 = @"APSD - WWAN LQ is OFF but WWAN reachability is YES";
      }

      else
      {
        v8 = 0;
      }

      _Block_object_dispose(buf, 8);
    }

    if (+[APSLog shouldReduceLogging])
    {
      v9 = +[APSLog courier];
      if (!os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
      {
        goto LABEL_16;
      }

      *buf = 134218498;
      *&buf[4] = v7;
      *&buf[12] = 2048;
      *&buf[14] = qword_1001BF728;
      *&buf[22] = 2112;
      v26 = v8;
      v10 = v9;
      v11 = OS_LOG_TYPE_DEBUG;
    }

    else
    {
      v9 = +[APSLog courier];
      if (!os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_16;
      }

      *buf = 134218498;
      *&buf[4] = v7;
      *&buf[12] = 2048;
      *&buf[14] = qword_1001BF728;
      *&buf[22] = 2112;
      v26 = v8;
      v10 = v9;
      v11 = OS_LOG_TYPE_DEFAULT;
    }

    _os_log_impl(&_mh_execute_header, v10, v11, "__dumpLogsForInconsistencyIfNecessary - lastBecameInconsistentTime %f  sBecameInconsistentTime %f  logDumpReason %@", buf, 0x20u);
LABEL_16:

    v12 = 1.0;
    if (*&v7 > 1.0)
    {
      v12 = *&qword_1001BF728 - *&v7;
      if (*&qword_1001BF728 - *&v7 > 60.0)
      {
        v13 = v8 != 0;
LABEL_22:
        v14 = +[PCSimpleTimer lastSystemWakeDate];
        [v14 timeIntervalSinceReferenceDate];
        v16 = v15 <= *&v7;

        if (v8)
        {
          v17 = v13;
        }

        else
        {
          v17 = 0;
        }

        if (v17 && v16 && ([qword_1001BF718 isEqualToString:v8] & 1) == 0)
        {
          v18 = qword_1001BF718;
          qword_1001BF718 = v8;

          qword_1001BF720 = *&Current;
        }

        _Block_object_dispose(&v21, 8);
        return;
      }

      if (v8)
      {
        v13 = 0;
        qword_1001BF728 = v7;
        goto LABEL_22;
      }
    }

    v13 = 0;
    goto LABEL_22;
  }
}

- (void)addConnection:(id)a3
{
  v4 = a3;
  [(APSUserCourier *)self _useInteractivePowerAssertionIfNeededForConnectionServer:v4 withReason:@"adding interactive"];
  if (v4)
  {
    [(NSMutableArray *)self->_connectionServers addObject:v4];
  }

  v5 = [(APSUserCourier *)self publicToken];
  [(APSUserCourier *)self _recreateCacheDictionaries];
  v6 = +[APSLog shouldReduceLogging];
  v7 = +[APSLog courier];
  v8 = v7;
  if (v6)
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      v11 = 138412802;
      v12 = self;
      v13 = 2112;
      v14 = v4;
      v15 = 2112;
      v16 = v5;
      v9 = v8;
      v10 = OS_LOG_TYPE_DEBUG;
LABEL_8:
      _os_log_impl(&_mh_execute_header, v9, v10, "%@ adding connectionserver %@, setting publicToken:%@", &v11, 0x20u);
    }
  }

  else if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v11 = 138412802;
    v12 = self;
    v13 = 2112;
    v14 = v4;
    v15 = 2112;
    v16 = v5;
    v9 = v8;
    v10 = OS_LOG_TYPE_DEFAULT;
    goto LABEL_8;
  }

  [v4 setPublicToken:v5 needsAck:0];
  [v4 setMessageSize:{-[APSUserCourier messageSize](self, "messageSize")}];
  [v4 setLargeMessageSize:{-[APSUserCourier largeMessageSize](self, "largeMessageSize")}];
}

- (void)removeConnectionForConnectionPortName:(id)a3
{
  v4 = [(NSMutableDictionary *)self->_connectionPortNamesToConnections objectForKey:a3];
  if (v4)
  {
    v5 = v4;
    [v4 close];
    [(APSUserCourier *)self connectionWasClosed:v5];
    v4 = v5;
  }
}

- (void)connectionTopicsChanged:(id)a3
{
  v5 = a3;
  v4 = [v5 ignoredTopics];
  [(APSUserCourier *)self handleIgnoredTopics:v4];

  [(APSUserCourier *)self _recreateCacheDictionaries];
  [(APSUserCourier *)self _processStoredIncomingMessagesForConnection:v5];
}

- (void)_processStoredIncomingMessagesForConnection:(id)a3
{
  if (self->_enabled)
  {
    v5 = a3;
    [NSObject cancelPreviousPerformRequestsWithTarget:self selector:"__processStoredIncomingMessagesForConnection:" object:v5];
    [(APSUserCourier *)self performSelector:"__processStoredIncomingMessagesForConnection:" withObject:v5 afterDelay:10.0];
  }
}

- (void)__processStoredIncomingMessagesForConnection:(id)a3
{
  v4 = a3;
  v5 = [(APSUserCourier *)self _getCurrentTokens];
  v6 = +[APSMessageStore sharedInstance];
  v7 = [v6 incomingMessagesForTopic:0 priority:10 environment:self->_environment pushTokens:v5];

  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v8 = v7;
  v9 = [v8 countByEnumeratingWithState:&v18 objects:v26 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v19;
    do
    {
      for (i = 0; i != v10; i = i + 1)
      {
        if (*v19 != v11)
        {
          objc_enumerationMutation(v8);
        }

        [(APSUserCourier *)self _notifyForIncomingMessage:*(*(&v18 + 1) + 8 * i) forConnection:v4, v18];
      }

      v10 = [v8 countByEnumeratingWithState:&v18 objects:v26 count:16];
    }

    while (v10);
  }

  v13 = +[APSLog shouldReduceLogging];
  v14 = +[APSLog courier];
  v15 = v14;
  if (v13)
  {
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412546;
      v23 = self;
      v24 = 2112;
      v25 = v4;
      v16 = v15;
      v17 = OS_LOG_TYPE_DEBUG;
LABEL_13:
      _os_log_impl(&_mh_execute_header, v16, v17, "%@: __processStoredIncomingMessageForConnection: %@", buf, 0x16u);
    }
  }

  else if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v23 = self;
    v24 = 2112;
    v25 = v4;
    v16 = v15;
    v17 = OS_LOG_TYPE_DEFAULT;
    goto LABEL_13;
  }
}

- (void)connectionWasClosed:(id)a3
{
  v4 = a3;
  v5 = +[APSLog shouldReduceLogging];
  v6 = +[APSLog courier];
  v7 = v6;
  if (v5)
  {
    if (!os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      goto LABEL_7;
    }

    *v32 = 138412546;
    *&v32[4] = self;
    *&v32[12] = 2112;
    *&v32[14] = v4;
    v8 = v7;
    v9 = OS_LOG_TYPE_DEBUG;
  }

  else
  {
    if (!os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_7;
    }

    *v32 = 138412546;
    *&v32[4] = self;
    *&v32[12] = 2112;
    *&v32[14] = v4;
    v8 = v7;
    v9 = OS_LOG_TYPE_DEFAULT;
  }

  _os_log_impl(&_mh_execute_header, v8, v9, "%@: Removing connection server %@", v32, 0x16u);
LABEL_7:

  [v4 setDelegate:0];
  if (v4)
  {
    [(NSMutableArray *)self->_connectionServers removeObject:v4];
  }

  v10 = [(APSUserCourier *)self connectionServers:*v32];
  v11 = [v10 count];

  if (!v11)
  {
    v12 = +[APSLog shouldReduceLogging];
    v13 = +[APSLog courier];
    v14 = v13;
    if (v12)
    {
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
      {
        *v32 = 138412546;
        *&v32[4] = self;
        *&v32[12] = 2112;
        *&v32[14] = v4;
        v15 = v14;
        v16 = OS_LOG_TYPE_DEBUG;
LABEL_15:
        _os_log_impl(&_mh_execute_header, v15, v16, "%@: Removed final connection server for user %@", v32, 0x16u);
      }
    }

    else if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *v32 = 138412546;
      *&v32[4] = self;
      *&v32[12] = 2112;
      *&v32[14] = v4;
      v15 = v14;
      v16 = OS_LOG_TYPE_DEFAULT;
      goto LABEL_15;
    }
  }

  v17 = [(APSUserCourier *)self protocolConnectionEstablisher:*v32];
  [v17 recalculateCriticalReliability];

  v18 = +[APSLog shouldReduceLogging];
  v19 = +[APSLog courier];
  v20 = v19;
  if (v18)
  {
    if (!os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
    {
      goto LABEL_23;
    }

    *v32 = 138412546;
    *&v32[4] = self;
    *&v32[12] = 2112;
    *&v32[14] = v4;
    v21 = v20;
    v22 = OS_LOG_TYPE_DEBUG;
  }

  else
  {
    if (!os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_23;
    }

    *v32 = 138412546;
    *&v32[4] = self;
    *&v32[12] = 2112;
    *&v32[14] = v4;
    v21 = v20;
    v22 = OS_LOG_TYPE_DEFAULT;
  }

  _os_log_impl(&_mh_execute_header, v21, v22, "%@: Recalculating activity tracking following connection close: %@", v32, 0x16u);
LABEL_23:

  [(APSUserCourier *)self recalculateTrackActivityPresence];
  v23 = +[APSLog shouldReduceLogging];
  v24 = +[APSLog courier];
  v25 = v24;
  if (v23)
  {
    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG))
    {
      v26 = [v4 inMemorySubscriptions];
      *v32 = 138412546;
      *&v32[4] = self;
      *&v32[12] = 2112;
      *&v32[14] = v26;
      v27 = v25;
      v28 = OS_LOG_TYPE_DEBUG;
LABEL_28:
      _os_log_impl(&_mh_execute_header, v27, v28, "%@: Unsubscribing from inMemory subscriptions %@", v32, 0x16u);
    }
  }

  else if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
  {
    v26 = [v4 inMemorySubscriptions];
    *v32 = 138412546;
    *&v32[4] = self;
    *&v32[12] = 2112;
    *&v32[14] = v26;
    v27 = v25;
    v28 = OS_LOG_TYPE_DEFAULT;
    goto LABEL_28;
  }

  v29 = [v4 inMemorySubscriptions];
  v30 = [v29 allObjects];
  v31 = [(APSUserCourier *)self publicToken];
  [(APSUserCourier *)self unsubscribeFromChannels:v30 token:v31];

  [(APSTopicManager *)self->_topicManager removeTopicsForConnectionServer:v4];
  [(APSUserCourier *)self _recreateCacheDictionaries];
  [(APSUserCourier *)self _performIdleCheck];
}

- (void)connectionWasOpened:(id)a3
{
  v4 = a3;
  v5 = +[APSLog shouldReduceLogging];
  v6 = +[APSLog courier];
  v7 = v6;
  if (v5)
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      v8 = [v4 connection];
      v11 = 138412802;
      v12 = self;
      v13 = 2112;
      v14 = v4;
      v15 = 2112;
      v16 = v8;
      v9 = v7;
      v10 = OS_LOG_TYPE_DEBUG;
LABEL_6:
      _os_log_impl(&_mh_execute_header, v9, v10, "%@ %@ has established new xpc connection %@", &v11, 0x20u);
    }
  }

  else if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v8 = [v4 connection];
    v11 = 138412802;
    v12 = self;
    v13 = 2112;
    v14 = v4;
    v15 = 2112;
    v16 = v8;
    v9 = v7;
    v10 = OS_LOG_TYPE_DEFAULT;
    goto LABEL_6;
  }

  [(APSUserCourier *)self _processStoredIncomingMessagesForConnection:v4];
}

- (void)_performIdleCheck
{
  v3 = dispatch_time(0, 2000000000);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100039E48;
  block[3] = &unk_100186D90;
  block[4] = self;
  dispatch_after(v3, &_dispatch_main_q, block);
}

- (void)__performIdleCheck
{
  v3 = [(APSUserCourier *)self _countActiveClients];
  v4 = +[APSLog shouldReduceLogging];
  v5 = +[APSLog courier];
  v6 = v5;
  if (v4)
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      v7 = [(NSMutableArray *)self->_connectionServers count];
      *v12 = 138412802;
      *&v12[4] = self;
      *&v12[12] = 2048;
      *&v12[14] = v3;
      *&v12[22] = 2048;
      v13 = v7;
      v8 = v6;
      v9 = OS_LOG_TYPE_DEBUG;
LABEL_6:
      _os_log_impl(&_mh_execute_header, v8, v9, "%@ _performIdleCheck activeClients %lu  connections %lu", v12, 0x20u);
    }
  }

  else if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v10 = [(NSMutableArray *)self->_connectionServers count];
    *v12 = 138412802;
    *&v12[4] = self;
    *&v12[12] = 2048;
    *&v12[14] = v3;
    *&v12[22] = 2048;
    v13 = v10;
    v8 = v6;
    v9 = OS_LOG_TYPE_DEFAULT;
    goto LABEL_6;
  }

  if (!v3 && ![(NSMutableArray *)self->_connectionServers count])
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    [WeakRetained courierHasNoConnections:self];
  }

  [(APSUserCourier *)self _processShouldRunChangeIfNecessary:*v12];
}

- (void)connectionChangedCriticalReliability:(id)a3
{
  v4 = a3;
  v5 = [(APSUserCourier *)self protocolConnectionEstablisher];
  [v5 recalculateCriticalReliability];

  LODWORD(v5) = [v4 enableCriticalReliability];
  if (v5)
  {
    v6 = [(APSUserCourier *)self protocolConnectionEstablisher];
    [v6 refreshCriticalReliability];

    if (qword_1001BF6F8 != -1)
    {
      sub_100108D10();
    }

    if (byte_1001BF6F0 == 1)
    {
      v7 = [(APSUserCourier *)self protocolConnectionEstablisher];
      [v7 triggerCriticalReliability];
    }
  }
}

- (void)connectionChangedTrackActivityPresence:(id)a3
{
  v4 = a3;
  v5 = +[APSLog shouldReduceLogging];
  v6 = +[APSLog courier];
  v7 = v6;
  if (v5)
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      v10 = 138412546;
      v11 = self;
      v12 = 2112;
      v13 = v4;
      v8 = v7;
      v9 = OS_LOG_TYPE_DEBUG;
LABEL_6:
      _os_log_impl(&_mh_execute_header, v8, v9, "%@: Recalculating activity tracking following connection change: %@", &v10, 0x16u);
    }
  }

  else if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 138412546;
    v11 = self;
    v12 = 2112;
    v13 = v4;
    v8 = v7;
    v9 = OS_LOG_TYPE_DEFAULT;
    goto LABEL_6;
  }

  [(APSUserCourier *)self recalculateTrackActivityPresence];
}

- (void)_enqueueMessage:(id)a3 forOriginator:(id)a4
{
  v6 = a3;
  [(APSOutgoingMessageQueue *)self->_outgoingMessageQueue enqueueOutgoingMessage:v6 forOriginator:a4];
  v7 = +[APSLog shouldReduceLogging];
  v8 = +[APSLog courier];
  v9 = v8;
  if (v7)
  {
    if (!os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      goto LABEL_7;
    }

    v10 = [v6 messageID];
    v11 = [v6 topic];
    *buf = 138412802;
    v31 = self;
    v32 = 2048;
    v33 = v10;
    v34 = 2112;
    v35 = v11;
    v12 = v9;
    v13 = OS_LOG_TYPE_DEBUG;
  }

  else
  {
    if (!os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_7;
    }

    v14 = [v6 messageID];
    v11 = [v6 topic];
    *buf = 138412802;
    v31 = self;
    v32 = 2048;
    v33 = v14;
    v34 = 2112;
    v35 = v11;
    v12 = v9;
    v13 = OS_LOG_TYPE_DEFAULT;
  }

  _os_log_impl(&_mh_execute_header, v12, v13, "%@: Deciding when to send outgoing message %lu with topic '%@'", buf, 0x20u);

LABEL_7:
  if (![(APSUserCourier *)self isConnectedToService])
  {
    v20 = +[APSLog shouldReduceLogging];
    v21 = +[APSLog courier];
    v22 = v21;
    if (v20)
    {
      if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        v31 = self;
        v23 = v22;
        v24 = OS_LOG_TYPE_DEBUG;
LABEL_17:
        _os_log_impl(&_mh_execute_header, v23, v24, "%@: Possibly connecting because there is a queued outgoing message", buf, 0xCu);
      }
    }

    else if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v31 = self;
      v23 = v22;
      v24 = OS_LOG_TYPE_DEFAULT;
      goto LABEL_17;
    }

    v25 = [(APSUserCourier *)self delegate];
    v26 = [v25 proxyManager];
    v27 = [v26 canUseProxy];

    if (v27)
    {
      v28 = [(APSUserCourier *)self delegate];
      [v28 kickstartProxyConnection];
    }

    else
    {
      v28 = [(APSUserCourier *)self protocolConnectionEstablisher];
      [v28 adjustConnectionsIfNeeded];
    }

    goto LABEL_27;
  }

  if ([(APSUserCourier *)self overallCourierStatus])
  {
    v15 = +[APSLog shouldReduceLogging];
    v16 = +[APSLog courier];
    v17 = v16;
    if (v15)
    {
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        v31 = self;
        v18 = v17;
        v19 = OS_LOG_TYPE_DEBUG;
LABEL_25:
        _os_log_impl(&_mh_execute_header, v18, v19, "%@: Possibly connecting user because there is a queued outgoing message", buf, 0xCu);
      }
    }

    else if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v31 = self;
      v18 = v17;
      v19 = OS_LOG_TYPE_DEFAULT;
      goto LABEL_25;
    }

    v29[0] = _NSConcreteStackBlock;
    v29[1] = 3221225472;
    v29[2] = sub_10003A5BC;
    v29[3] = &unk_100187000;
    v29[4] = self;
    [(APSUserCourier *)self enumerateConnectedProtocolConnectionsOfType:1 block:v29];
    goto LABEL_27;
  }

  [(APSUserCourier *)self _sendQueuedOutgoingMessages];
LABEL_27:
}

- (void)connection:(id)a3 didReceiveOutgoingMessageToSend:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = +[APSLog courierOversized];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v33 = [v7 messageID];
    v9 = [v7 topic];
    v10 = [v7 timeout];
    if ([v7 isCritical])
    {
      v11 = @"yes";
    }

    else
    {
      v11 = @"no";
    }

    v12 = [v7 identifier];
    v13 = [v7 userInfo];
    [v7 topic];
    v34 = v6;
    v15 = v14 = self;
    v16 = sub_100015D6C(v13, v15);
    *buf = 138413826;
    v36 = v14;
    v37 = 2048;
    v38 = v33;
    v39 = 2112;
    v40 = v9;
    v41 = 2048;
    v42 = v10;
    v43 = 2112;
    v44 = v11;
    v45 = 2048;
    v46 = v12;
    v47 = 2112;
    v48 = v16;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "%@: Received outgoing message %lu to send with topic '%@', timeout %lu, critical %@, identifier %lu, and userInfo '%@'", buf, 0x48u);

    self = v14;
    v6 = v34;
  }

  [v7 setOriginator:v6];
  v17 = [v6 enabledTopics];
  v18 = [v7 topic];
  if ([v17 containsObject:v18])
  {
    goto LABEL_9;
  }

  v19 = [v6 opportunisticTopics];
  v20 = [v7 topic];
  if (([v19 containsObject:v20] & 1) == 0)
  {
    v21 = [v6 nonWakingTopics];
    v22 = [v7 topic];
    v23 = [v21 containsObject:v22];

    if (v23)
    {
      goto LABEL_10;
    }

    v24 = +[APSLog shouldReduceLogging];
    v25 = +[APSLog courier];
    v26 = v25;
    if (v24)
    {
      if (os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
      {
        v27 = [v7 messageID];
        v28 = [v7 topic];
        *buf = 138412802;
        v36 = self;
        v37 = 2048;
        v38 = v27;
        v39 = 2112;
        v40 = v28;
        v29 = v26;
        v30 = OS_LOG_TYPE_DEBUG;
LABEL_18:
        _os_log_impl(&_mh_execute_header, v29, v30, "%@: Dropping outgoing message %lu because topic is not enabled '%@'", buf, 0x20u);
      }
    }

    else if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
    {
      v31 = [v7 messageID];
      v28 = [v7 topic];
      *buf = 138412802;
      v36 = self;
      v37 = 2048;
      v38 = v31;
      v39 = 2112;
      v40 = v28;
      v29 = v26;
      v30 = OS_LOG_TYPE_DEFAULT;
      goto LABEL_18;
    }

    v32 = APSError();
    [v6 handleResult:v32 forSendingOutgoingMessageWithID:{objc_msgSend(v7, "messageID")}];

    goto LABEL_11;
  }

LABEL_9:
LABEL_10:
  [(APSUserCourier *)self _enqueueMessage:v7 forOriginator:v6];
LABEL_11:
}

- (void)connection:(id)a3 didReceiveSubscribeToChannels:(id)a4 forTopic:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = [a3 connectionPortName];
  v11 = v10 == 0;

  v12 = [(APSUserCourier *)self publicToken];
  [(APSUserCourier *)self subscribeToChannels:v9 forTopic:v8 token:v12 inMemoryOnly:v11];
}

- (void)connection:(id)a3 didReceiveUnsubscribeToChannels:(id)a4 forTopic:(id)a5
{
  v7 = a5;
  v8 = a4;
  v9 = [(APSUserCourier *)self publicToken];
  [(APSUserCourier *)self unsubscribeFromChannels:v8 forTopic:v7 token:v9];
}

- (void)connection:(id)a3 didReceiveCancellationForOutgoingMessageWithID:(unint64_t)a4
{
  v6 = +[APSLog shouldReduceLogging];
  v7 = +[APSLog courier];
  v8 = v7;
  if (v6)
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      v11 = 138412546;
      v12 = self;
      v13 = 2048;
      v14 = a4;
      v9 = v8;
      v10 = OS_LOG_TYPE_DEBUG;
LABEL_6:
      _os_log_impl(&_mh_execute_header, v9, v10, "%@: Received cancellation for outgoing message %lu", &v11, 0x16u);
    }
  }

  else if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v11 = 138412546;
    v12 = self;
    v13 = 2048;
    v14 = a4;
    v9 = v8;
    v10 = OS_LOG_TYPE_DEFAULT;
    goto LABEL_6;
  }

  [(APSOutgoingMessageQueue *)self->_outgoingMessageQueue cancelOutgoingMessageWithID:a4];
}

- (void)connection:(id)a3 didReceiveFakeMessageToSend:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v7 topic];
  v9 = +[APSLog shouldReduceLogging];
  v10 = +[APSLog courier];
  v11 = v10;
  if (!v8)
  {
    if (v9)
    {
      if (!os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
      {
        goto LABEL_20;
      }

      *v23 = 138412546;
      *&v23[4] = self;
      *&v23[12] = 2112;
      *&v23[14] = 0;
      v14 = v11;
      v15 = OS_LOG_TYPE_DEBUG;
    }

    else
    {
      if (!os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_20;
      }

      *v23 = 138412546;
      *&v23[4] = self;
      *&v23[12] = 2112;
      *&v23[14] = 0;
      v14 = v11;
      v15 = OS_LOG_TYPE_DEFAULT;
    }

    _os_log_impl(&_mh_execute_header, v14, v15, "%@: Received fake message with missing topic %@", v23, 0x16u);
    goto LABEL_20;
  }

  if (v9)
  {
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      *v23 = 138412802;
      *&v23[4] = self;
      *&v23[12] = 2112;
      *&v23[14] = v8;
      *&v23[22] = 2048;
      v24 = [v7 priority];
      v12 = v11;
      v13 = OS_LOG_TYPE_DEBUG;
LABEL_10:
      _os_log_impl(&_mh_execute_header, v12, v13, "%@: Delivering fake message for topic '%@' priority '%lld'", v23, 0x20u);
    }
  }

  else if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *v23 = 138412802;
    *&v23[4] = self;
    *&v23[12] = 2112;
    *&v23[14] = v8;
    *&v23[22] = 2048;
    v24 = [v7 priority];
    v12 = v11;
    v13 = OS_LOG_TYPE_DEFAULT;
    goto LABEL_10;
  }

  v16 = [APSIncomingMessage alloc];
  v17 = [v7 userInfo];
  v11 = [(APSIncomingMessage *)v16 initWithTopic:v8 userInfo:v17];

  v18 = [v7 correlationIdentifier];
  [v11 setCorrelationIdentifier:v18];

  v19 = [v7 timestamp];

  if (v19)
  {
    [v7 timestamp];
  }

  else
  {
    +[NSDate date];
  }
  v20 = ;
  [v11 setTimestamp:v20, *v23, *&v23[16], v24];

  -[NSObject setPushType:](v11, "setPushType:", [v7 pushType]);
  -[NSObject setPushFlags:](v11, "setPushFlags:", [v7 pushFlags]);
  v21 = [v7 channelID];
  [v11 setChannelID:v21];

  v22 = [v6 publicToken];
  [v11 setToken:v22];

  if ([v7 priority] == 1)
  {
    [v11 setPriority:1];
  }

  [(APSUserCourier *)self _notifyForIncomingMessage:v11];
LABEL_20:
}

- (void)connection:(id)a3 handleAckIncomingMessageWithGuid:(id)a4 topic:(id)a5 tracingUUID:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = +[APSLog shouldReduceLogging];
  v15 = +[APSLog courier];
  v16 = v15;
  if (v14)
  {
    if (!os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
    {
      goto LABEL_7;
    }

    v24 = 138413058;
    v25 = self;
    v26 = 2112;
    v27 = v10;
    v28 = 2112;
    v29 = v11;
    v30 = 2112;
    v31 = v13;
    v17 = v16;
    v18 = OS_LOG_TYPE_DEBUG;
  }

  else
  {
    if (!os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_7;
    }

    v24 = 138413058;
    v25 = self;
    v26 = 2112;
    v27 = v10;
    v28 = 2112;
    v29 = v11;
    v30 = 2112;
    v31 = v13;
    v17 = v16;
    v18 = OS_LOG_TYPE_DEFAULT;
  }

  _os_log_impl(&_mh_execute_header, v17, v18, "%@ informed that %@ acknowledges incoming message with guid %@ tracingUUID %@", &v24, 0x2Au);
LABEL_7:

  [(APSTTLCollection *)self->_tracingEnabledAcksCollection removeItem:v13 withFlag:1];
  v19 = +[APSMessageStore sharedInstance];
  [v19 deleteIncomingMessageWithGUID:v11];

  if (v13)
  {
    v20 = [(APSUserCourier *)self preferredProtocolConnection];
    if (v20)
    {
      topicHasher = self->_topicHasher;
      v22 = [v10 user];
      v23 = [(APSTopicHasher *)topicHasher topicHashForTopic:v12 user:v22];

      [v20 sendMessageTracingAckWithTopicHash:v23 topic:v12 tracingUUID:v13 status:1 token:0];
    }

    else
    {
      v23 = +[APSLog courier];
      if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
      {
        v24 = 138412802;
        v25 = self;
        v26 = 2112;
        v27 = v12;
        v28 = 2112;
        v29 = v13;
        _os_log_error_impl(&_mh_execute_header, v23, OS_LOG_TYPE_ERROR, "%@ trying to send message tracing framework ack but we currently don't have connected interface. {topic: %@; tracingUUID: %@}", &v24, 0x20u);
      }
    }
  }
}

- (void)connection:(id)a3 didReceiveIncomingMessageReceiptWithTopic:(id)a4 tracingUUID:(id)a5
{
  v7 = a4;
  v8 = a5;
  v9 = +[APSLog shouldReduceLogging];
  v10 = +[APSLog courier];
  v11 = v10;
  if (v9)
  {
    if (!os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      goto LABEL_7;
    }

    v18 = 138412802;
    v19 = self;
    v20 = 2112;
    v21 = v7;
    v22 = 2112;
    v23 = v8;
    v12 = v11;
    v13 = OS_LOG_TYPE_DEBUG;
  }

  else
  {
    if (!os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_7;
    }

    v18 = 138412802;
    v19 = self;
    v20 = 2112;
    v21 = v7;
    v22 = 2112;
    v23 = v8;
    v12 = v11;
    v13 = OS_LOG_TYPE_DEFAULT;
  }

  _os_log_impl(&_mh_execute_header, v12, v13, "%@ handling incoming message receipt. {topic:%@, tracingUUID:%@}", &v18, 0x20u);
LABEL_7:

  [(APSTTLCollection *)self->_tracingEnabledAcksCollection removeItem:v8 withFlag:2];
  v14 = [(APSUserCourier *)self preferredProtocolConnection];
  if (v14)
  {
    topicHasher = self->_topicHasher;
    v16 = [(APSUserCourier *)self courierUser];
    v17 = [(APSTopicHasher *)topicHasher topicHashForTopic:v7 user:v16];

    [v14 sendMessageTracingAckWithTopicHash:v17 topic:v7 tracingUUID:v8 status:2 token:0];
  }

  else
  {
    v17 = +[APSLog courier];
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      v18 = 138412802;
      v19 = self;
      v20 = 2112;
      v21 = v7;
      v22 = 2112;
      v23 = v8;
      _os_log_error_impl(&_mh_execute_header, v17, OS_LOG_TYPE_ERROR, "%@ trying to send message tracing application ack but we currently don't have connected interface. {topic: %@; tracingUUID: %@}", &v18, 0x20u);
    }
  }
}

- (void)connection:(id)a3 setKeepAliveConfiguration:(unint64_t)a4
{
  v5 = [(APSUserCourier *)self protocolConnectionEstablisher];
  [v5 setKeepAliveConfiguration:a4];
}

- (void)connectionDidClientDisconnect:(id)a3
{
  v4 = a3;
  if ([(APSUserCourier *)self isIdle])
  {
    v5 = +[APSLog shouldReduceLogging];
    v6 = +[APSLog courier];
    v7 = v6;
    if (v5)
    {
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
      {
        v11 = 138412546;
        v12 = self;
        v13 = 2112;
        v14 = v4;
        v8 = v7;
        v9 = OS_LOG_TYPE_DEBUG;
LABEL_7:
        _os_log_impl(&_mh_execute_header, v8, v9, "%@: Client disconnected from %@ and courier is idle", &v11, 0x16u);
      }
    }

    else if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v11 = 138412546;
      v12 = self;
      v13 = 2112;
      v14 = v4;
      v8 = v7;
      v9 = OS_LOG_TYPE_DEFAULT;
      goto LABEL_7;
    }

    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    [WeakRetained courierIsIdle:self];
  }
}

- (void)ttlCollection:(id)a3 itemsDidExpire:(id)a4 withStates:(id)a5
{
  v12 = a5;
  if ([a4 count])
  {
    v6 = [NSURL URLWithString:@"tap-to-radar://new?Title=Missing%20CloudKit%20Push&Description=Missing%20both%20acks&ComponentID=297783&ComponentName=Apple%20Push%20Service&ComponentVersion=New%20Bugs&AutoDiagnostics=phone, watch&Classification=Other%20Bug&Reproducibility=Not%20Applicable"];
    v7 = [v12 firstObject];
    v8 = [v7 unsignedIntValue];

    if ((v8 & 2) != 0)
    {
      if (v8)
      {
LABEL_7:
        v11 = +[APSDiagnostic sharedInstance];
        [v11 promptTapToRadarWithURL:v6];

        goto LABEL_8;
      }

      v9 = @"tap-to-radar://new?Title=Missing%20CloudKit%20Push&Description=Missing%20app%20ack&ComponentID=297783&ComponentName=Apple%20Push%20Service&ComponentVersion=New%20Bugs&AutoDiagnostics=phone,watch&Classification=Other%20Bug&Reproducibility=Not%20Applicable";
    }

    else
    {
      v9 = @"tap-to-radar://new?Title=Missing%20CloudKit%20Push&Description=Missing%20framework%20ack&ComponentID=297783&ComponentName=Apple%20Push%20Service&ComponentVersion=New%20Bugs&AutoDiagnostics=phone,watch&Classification=Other%20Bug&Reproducibility=Not%20Applicable";
    }

    v10 = [NSURL URLWithString:v9];

    v6 = v10;
    goto LABEL_7;
  }

LABEL_8:
}

- (void)invalidateDeviceIdentity
{
  v3 = +[APSLog shouldReduceLogging];
  v4 = +[APSLog courier];
  v5 = v4;
  if (v3)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      v8 = 138412290;
      v9 = self;
      v6 = v5;
      v7 = OS_LOG_TYPE_DEBUG;
LABEL_6:
      _os_log_impl(&_mh_execute_header, v6, v7, "%@ invalidateDeviceIdentity", &v8, 0xCu);
    }
  }

  else if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 138412290;
    v9 = self;
    v6 = v5;
    v7 = OS_LOG_TYPE_DEFAULT;
    goto LABEL_6;
  }

  [(APSUserCourier *)self _processInvalidIdentityAndConnectImmediately:1];
}

- (void)periodicSignalFired
{
  v3 = +[APSLog shouldReduceLogging];
  v4 = +[APSLog courier];
  v5 = v4;
  if (v3)
  {
    if (!os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      goto LABEL_7;
    }

    *buf = 138412290;
    v50 = self;
    v6 = v5;
    v7 = OS_LOG_TYPE_DEBUG;
  }

  else
  {
    if (!os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_7;
    }

    *buf = 138412290;
    v50 = self;
    v6 = v5;
    v7 = OS_LOG_TYPE_DEFAULT;
  }

  _os_log_impl(&_mh_execute_header, v6, v7, "%@ periodicSignalFired", buf, 0xCu);
LABEL_7:

  v8 = +[APSMessageStore sharedInstance];
  [v8 deleteStaleIncomingLowPriorityMessagesForEnvironment:self->_environment];

  v9 = [(APSUserCourier *)self _getCurrentTokens];
  v10 = +[APSMessageStore sharedInstance];
  v11 = [v10 incomingMessagesForTopic:0 priority:1 environment:self->_environment pushTokens:v9];

  v12 = +[APSLog shouldReduceLogging];
  v13 = +[APSLog courier];
  v14 = v13;
  v40 = v9;
  if (v12)
  {
    if (!os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
    {
      goto LABEL_13;
    }

    v15 = [v11 count];
    *buf = 138412546;
    v50 = self;
    v51 = 2048;
    v52 = v15;
    v16 = v14;
    v17 = OS_LOG_TYPE_DEBUG;
  }

  else
  {
    if (!os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_13;
    }

    v18 = [v11 count];
    *buf = 138412546;
    v50 = self;
    v51 = 2048;
    v52 = v18;
    v16 = v14;
    v17 = OS_LOG_TYPE_DEFAULT;
  }

  _os_log_impl(&_mh_execute_header, v16, v17, "%@ examining %lu low priority incoming messages", buf, 0x16u);
LABEL_13:

  v45 = 0u;
  v46 = 0u;
  v43 = 0u;
  v44 = 0u;
  obj = v11;
  v19 = [obj countByEnumeratingWithState:&v43 objects:v48 count:16];
  if (v19)
  {
    v20 = v19;
    v21 = *v44;
    do
    {
      v22 = 0;
      v41 = v20;
      do
      {
        if (*v44 != v21)
        {
          objc_enumerationMutation(obj);
        }

        v23 = *(*(&v43 + 1) + 8 * v22);
        v24 = [v23 topic];
        v25 = [v23 token];
        topicHasher = self->_topicHasher;
        v27 = [(APSUserCourier *)self courierUser];
        v28 = [(APSTopicHasher *)topicHasher topicHashForTopic:v24 user:v27];

        v29 = self->_topicManager;
        v30 = [(APSTopicManager *)v29 hasTopicHash:v28];

        if (!v30)
        {
          v31 = v21;
          v32 = +[APSLog shouldReduceLogging];
          v33 = +[APSLog courier];
          v34 = v33;
          if (v32)
          {
            if (os_log_type_enabled(v33, OS_LOG_TYPE_DEBUG))
            {
              *buf = 138412546;
              v50 = self;
              v51 = 2112;
              v52 = v24;
              v35 = v34;
              v36 = OS_LOG_TYPE_DEBUG;
              goto LABEL_24;
            }
          }

          else if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412546;
            v50 = self;
            v51 = 2112;
            v52 = v24;
            v35 = v34;
            v36 = OS_LOG_TYPE_DEFAULT;
LABEL_24:
            _os_log_impl(&_mh_execute_header, v35, v36, "%@ our filter lacks %@, deleting all low priority messages for this topic.", buf, 0x16u);
          }

          v37 = +[APSMessageStore sharedInstance];
          environment = self->_environment;
          v47 = v25;
          v39 = [NSArray arrayWithObjects:&v47 count:1];
          [v37 deleteLowPriorityIncomingMessagesForTopic:v24 environment:environment pushTokens:v39];

          v21 = v31;
          v20 = v41;
        }

        v22 = v22 + 1;
      }

      while (v20 != v22);
      v20 = [obj countByEnumeratingWithState:&v43 objects:v48 count:16];
    }

    while (v20);
  }
}

- (void)clearCachedIdentityAndTokens
{
  v3 = +[APSLog shouldReduceLogging];
  v4 = +[APSLog courier];
  v5 = v4;
  if (v3)
  {
    if (!os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      goto LABEL_7;
    }

    v8 = 138412290;
    v9 = self;
    v6 = v5;
    v7 = OS_LOG_TYPE_DEBUG;
  }

  else
  {
    if (!os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_7;
    }

    v8 = 138412290;
    v9 = self;
    v6 = v5;
    v7 = OS_LOG_TYPE_DEFAULT;
  }

  _os_log_impl(&_mh_execute_header, v6, v7, "%@: Client identity manager is noting a swap in identity provider, clearing public token and terminating connection.", &v8, 0xCu);
LABEL_7:

  if (!self->_swappingIdentity)
  {
    self->_swappingIdentity = 1;
    [(APSUserCourier *)self setPublicToken:0 fromServer:1];
    [(APSUserCourier *)self _clearCachedSigNonceCert];
    [(APSUserCourier *)self _reconnectIgnoringDelayReconnectTimer:8];
    self->_swappingIdentity = 0;
  }
}

- (void)rollTokensForAllBAAEnvironments
{
  v3 = +[APSLog shouldReduceLogging];
  v4 = +[APSLog courier];
  v5 = v4;
  if (v3)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      v9 = 138412290;
      v10 = self;
      v6 = v5;
      v7 = OS_LOG_TYPE_DEBUG;
LABEL_6:
      _os_log_impl(&_mh_execute_header, v6, v7, "%@: Client identity manager is noting a refresh in BAA certs, rolling push token for all environments in BAA", &v9, 0xCu);
    }
  }

  else if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 138412290;
    v10 = self;
    v6 = v5;
    v7 = OS_LOG_TYPE_DEFAULT;
    goto LABEL_6;
  }

  v8 = [(APSUserCourier *)self delegate];
  [v8 courierShouldRollBAAEnvironmentTokens:self];
}

- (id)_findActiveClientWithToken:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v18 = 0u;
    v19 = 0u;
    v16 = 0u;
    v17 = 0u;
    v5 = self->_proxyClients;
    v6 = [(NSMutableDictionary *)v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v17;
      do
      {
        for (i = 0; i != v7; i = i + 1)
        {
          if (*v17 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v10 = [(NSMutableDictionary *)self->_proxyClients objectForKey:*(*(&v16 + 1) + 8 * i), v16];
          v11 = [v10 publicToken];
          if (v11)
          {
            v12 = v11;
            v13 = [v10 publicToken];
            if ([v13 isEqualToData:v4])
            {
              v14 = [v10 isActive];

              if (v14)
              {
                goto LABEL_15;
              }
            }

            else
            {
            }
          }
        }

        v7 = [(NSMutableDictionary *)v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
      }

      while (v7);
    }

    v10 = 0;
LABEL_15:
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (id)_findConnectedClientWithToken:(id)a3 onProtocolConnection:(id)a4
{
  v6 = a3;
  v18 = a4;
  if (v6)
  {
    v22 = 0u;
    v23 = 0u;
    v20 = 0u;
    v21 = 0u;
    obj = self->_proxyClients;
    v7 = [(NSMutableDictionary *)obj countByEnumeratingWithState:&v20 objects:v24 count:16];
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
            objc_enumerationMutation(obj);
          }

          v11 = [(NSMutableDictionary *)self->_proxyClients objectForKey:*(*(&v20 + 1) + 8 * i), v18];
          v12 = [v11 publicToken];
          if (v12)
          {
            v13 = v12;
            v14 = [v11 publicToken];
            if ([v14 isEqualToData:v6])
            {
              v15 = [v18 identifier];
              v16 = [v11 isConnectedOnInterface:v15];

              if (v16)
              {
                goto LABEL_15;
              }
            }

            else
            {
            }
          }
        }

        v8 = [(NSMutableDictionary *)obj countByEnumeratingWithState:&v20 objects:v24 count:16];
      }

      while (v8);
    }

    v11 = 0;
LABEL_15:
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (id)_findClientWithToken:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v18 = 0u;
    v19 = 0u;
    v16 = 0u;
    v17 = 0u;
    v5 = self->_proxyClients;
    v6 = [(NSMutableDictionary *)v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v17;
LABEL_4:
      v9 = 0;
      while (1)
      {
        if (*v17 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = [(NSMutableDictionary *)self->_proxyClients objectForKey:*(*(&v16 + 1) + 8 * v9), v16];
        v11 = [v10 publicToken];
        if (v11)
        {
          v12 = v11;
          v13 = [v10 publicToken];
          v14 = [v13 isEqualToData:v4];

          if (v14)
          {
            break;
          }
        }

        if (v7 == ++v9)
        {
          v7 = [(NSMutableDictionary *)v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
          if (v7)
          {
            goto LABEL_4;
          }

          goto LABEL_11;
        }
      }
    }

    else
    {
LABEL_11:
      v10 = 0;
    }
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (unint64_t)_countConnectedClients
{
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v3 = self->_proxyClients;
  v4 = [(NSMutableDictionary *)v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = 0;
    v7 = *v12;
    do
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(v3);
        }

        v9 = [(NSMutableDictionary *)self->_proxyClients objectForKey:*(*(&v11 + 1) + 8 * i), v11];
        v6 += [v9 isConnected];
      }

      v5 = [(NSMutableDictionary *)v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v5);
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)canUseProxyChanged
{
  v3 = +[APSLog shouldReduceLogging];
  v4 = +[APSLog courier];
  v5 = v4;
  if (v3)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      v8 = 138412290;
      v9 = self;
      v6 = v5;
      v7 = OS_LOG_TYPE_DEBUG;
LABEL_6:
      _os_log_impl(&_mh_execute_header, v6, v7, "%@ canUseProxyChanged!", &v8, 0xCu);
    }
  }

  else if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 138412290;
    v9 = self;
    v6 = v5;
    v7 = OS_LOG_TYPE_DEFAULT;
    goto LABEL_6;
  }

  [(APSUserCourier *)self _processShouldUseInternetChangeIfNecessary];
}

- (void)incomingPresenceWithGuid:(id)a3 token:(id)a4 hwVersion:(id)a5 swVersion:(id)a6 swBuild:(id)a7 certificates:(id)a8 nonce:(id)a9 signature:(id)a10 additionalFlags:(int)a11
{
  v17 = a3;
  v18 = a4;
  v19 = a5;
  v20 = a6;
  v47 = a7;
  v46 = a8;
  v21 = a9;
  v22 = a10;
  LODWORD(a8) = +[APSLog shouldReduceLogging];
  v23 = +[APSLog courier];
  v24 = v23;
  if (a8)
  {
    if (!os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
    {
      goto LABEL_7;
    }

    *buf = 138412546;
    v49 = self;
    v50 = 2112;
    v51 = v17;
    v25 = v24;
    v26 = OS_LOG_TYPE_DEBUG;
  }

  else
  {
    if (!os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_7;
    }

    *buf = 138412546;
    v49 = self;
    v50 = 2112;
    v51 = v17;
    v25 = v24;
    v26 = OS_LOG_TYPE_DEFAULT;
  }

  _os_log_impl(&_mh_execute_header, v25, v26, "%@ incoming device presence %@", buf, 0x16u);
LABEL_7:

  if (!v17)
  {
    goto LABEL_28;
  }

  v45 = v20;
  proxyClients = self->_proxyClients;
  if (!proxyClients)
  {
    v28 = objc_alloc_init(NSMutableDictionary);
    v29 = self->_proxyClients;
    self->_proxyClients = v28;

    proxyClients = self->_proxyClients;
  }

  v30 = [(NSMutableDictionary *)proxyClients objectForKey:v17];
  v31 = +[APSLog shouldReduceLogging];
  v32 = +[APSLog courier];
  v33 = v32;
  if (v31)
  {
    v20 = v45;
    if (!os_log_type_enabled(v32, OS_LOG_TYPE_DEBUG))
    {
      goto LABEL_16;
    }

    *buf = 138412546;
    v49 = self;
    v50 = 2112;
    v51 = v30;
    v34 = v33;
    v35 = OS_LOG_TYPE_DEBUG;
  }

  else
  {
    v20 = v45;
    if (!os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_16;
    }

    *buf = 138412546;
    v49 = self;
    v50 = 2112;
    v51 = v30;
    v34 = v33;
    v35 = OS_LOG_TYPE_DEFAULT;
  }

  _os_log_impl(&_mh_execute_header, v34, v35, "%@ received presence for client %@", buf, 0x16u);
LABEL_16:

  if (v30)
  {
    goto LABEL_24;
  }

  v44 = [(APSUserCourier *)self _findClientWithToken:v18];
  [v44 invalidate];
  v30 = [[APSProxyClient alloc] initWithEnvironment:self->_environment guid:v17];
  [(NSMutableDictionary *)self->_proxyClients setObject:v30 forKey:v17];
  [(APSProxyClient *)v30 setMessageSize:[(APSEnvironment *)self->_environment messageSize]];
  [(APSProxyClient *)v30 setLargeMessageSize:[(APSEnvironment *)self->_environment largeMessageSize]];
  v36 = [(APSUserCourier *)self _proxyManager];
  [(APSProxyClient *)v30 setProxyManager:v36];

  [(APSProxyClient *)v30 setDelegate:self];
  v37 = +[APSLog shouldReduceLogging];
  v38 = +[APSLog courier];
  v39 = v38;
  if (v37)
  {
    if (os_log_type_enabled(v38, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412802;
      v49 = self;
      v50 = 2112;
      v51 = v30;
      v52 = 2112;
      v53 = v17;
      v40 = v39;
      v41 = OS_LOG_TYPE_DEBUG;
LABEL_22:
      _os_log_impl(&_mh_execute_header, v40, v41, "%@ made new client %@ for %@", buf, 0x20u);
    }
  }

  else if (os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412802;
    v49 = self;
    v50 = 2112;
    v51 = v30;
    v52 = 2112;
    v53 = v17;
    v40 = v39;
    v41 = OS_LOG_TYPE_DEFAULT;
    goto LABEL_22;
  }

  v20 = v45;
LABEL_24:
  LODWORD(v43) = a11;
  [(APSProxyClient *)v30 incomingPresenceWithCertificates:v46 nonce:v21 signature:v22 token:v18 hwVersion:v19 swVersion:v20 swBuild:v47 additionalFlags:v43];
  v42 = [(APSUserCourier *)self _processPendingProxyPresences];
  [(APSUserCourier *)self _processShouldRunChangeIfNecessary];
  if ((v42 & 1) == 0 && ![(APSProxyClient *)v30 isInvalid])
  {
    [(APSProxyClient *)v30 noteIsConnected];
  }

LABEL_28:
}

- (void)_clearPendingProxyPresence
{
  proxyClientWithOutstandingPresence = self->_proxyClientWithOutstandingPresence;
  self->_proxyClientWithOutstandingPresence = 0;

  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v4 = self->_proxyClients;
  v5 = [(NSMutableDictionary *)v4 countByEnumeratingWithState:&v17 objects:v25 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = 0;
    v8 = *v18;
    do
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v18 != v8)
        {
          objc_enumerationMutation(v4);
        }

        v10 = *(*(&v17 + 1) + 8 * i);
        v11 = [(NSMutableDictionary *)self->_proxyClients objectForKey:v10, v17];
        if ([v11 isInvalid] && (objc_msgSend(v11, "needsToDisconnect") & 1) == 0)
        {
          if (!v7)
          {
            v7 = objc_alloc_init(NSMutableArray);
          }

          [v7 addObject:v10];
        }
      }

      v6 = [(NSMutableDictionary *)v4 countByEnumeratingWithState:&v17 objects:v25 count:16];
    }

    while (v6);

    if (v7)
    {
      v12 = +[APSLog shouldReduceLogging];
      v13 = +[APSLog courier];
      v14 = v13;
      if (v12)
      {
        if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
        {
          *buf = 138412546;
          v22 = self;
          v23 = 2112;
          v24 = v7;
          v15 = v14;
          v16 = OS_LOG_TYPE_DEBUG;
LABEL_20:
          _os_log_impl(&_mh_execute_header, v15, v16, "%@ Removing clients %@", buf, 0x16u);
        }
      }

      else if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412546;
        v22 = self;
        v23 = 2112;
        v24 = v7;
        v15 = v14;
        v16 = OS_LOG_TYPE_DEFAULT;
        goto LABEL_20;
      }

      [(NSMutableDictionary *)self->_proxyClients removeObjectsForKeys:v7];
    }
  }

  else
  {

    v7 = 0;
  }

  [(APSUserCourier *)self _processPendingProxyPresences];
}

- (BOOL)_processPendingProxyPresences
{
  if ([(APSUserCourier *)self hasConnectedInterface])
  {
    v3 = self->_proxyClientWithOutstandingPresence == 0;
  }

  else
  {
    v3 = 0;
  }

  v4 = +[APSLog shouldReduceLogging];
  v5 = +[APSLog courier];
  v6 = v5;
  if (v4)
  {
    if (!os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      goto LABEL_22;
    }

    if (v3)
    {
      v7 = @"YES";
    }

    else
    {
      v7 = @"NO";
    }

    v8 = [(APSUserCourier *)self hasConnectedInterface];
    proxyClientWithOutstandingPresence = self->_proxyClientWithOutstandingPresence;
    if (v8)
    {
      v10 = @"YES";
    }

    else
    {
      v10 = @"NO";
    }

    *buf = 138413058;
    *&buf[4] = self;
    *&buf[12] = 2112;
    *&buf[14] = v7;
    *&buf[22] = 2112;
    v94 = v10;
    LOWORD(v95) = 2112;
    *(&v95 + 2) = proxyClientWithOutstandingPresence;
    v11 = v6;
    v12 = OS_LOG_TYPE_DEBUG;
  }

  else
  {
    if (!os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_22;
    }

    if (v3)
    {
      v13 = @"YES";
    }

    else
    {
      v13 = @"NO";
    }

    v14 = [(APSUserCourier *)self hasConnectedInterface];
    v15 = self->_proxyClientWithOutstandingPresence;
    if (v14)
    {
      v16 = @"YES";
    }

    else
    {
      v16 = @"NO";
    }

    *buf = 138413058;
    *&buf[4] = self;
    *&buf[12] = 2112;
    *&buf[14] = v13;
    *&buf[22] = 2112;
    v94 = v16;
    LOWORD(v95) = 2112;
    *(&v95 + 2) = v15;
    v11 = v6;
    v12 = OS_LOG_TYPE_DEFAULT;
  }

  _os_log_impl(&_mh_execute_header, v11, v12, "%@ _processPendingProxyPresences - canSendPresence? %@ hasConnectedConnection %@  outstandingClient %@", buf, 0x2Au);
LABEL_22:

  if (v3)
  {
    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x3032000000;
    v94 = sub_100014024;
    *&v95 = sub_1000146A4;
    *(&v95 + 1) = 0;
    v81 = 0;
    v82 = &v81;
    v83 = 0x3032000000;
    v84 = sub_100014024;
    v85 = sub_1000146A4;
    v86 = 0;
    v75 = 0;
    v76 = &v75;
    v77 = 0x3032000000;
    v78 = sub_100014024;
    v79 = sub_1000146A4;
    v80 = 0;
    v74[0] = _NSConcreteStackBlock;
    v74[1] = 3221225472;
    v74[2] = sub_10003D838;
    v74[3] = &unk_100187028;
    v74[4] = self;
    v74[5] = &v81;
    v74[6] = &v75;
    v74[7] = buf;
    [(APSUserCourier *)self enumerateConnectedProtocolConnections:v74];
    if (*(*&buf[8] + 40))
    {
      if (+[APSLog shouldReduceLogging])
      {
        v17 = +[APSLog courier];
        if (!os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
        {
          goto LABEL_35;
        }

        v18 = *(*&buf[8] + 40);
        *v87 = 138412546;
        v88 = self;
        v89 = 2112;
        v90 = v18;
        v19 = v17;
        v20 = OS_LOG_TYPE_DEBUG;
      }

      else
      {
        v17 = +[APSLog courier];
        if (!os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_35;
        }

        v25 = *(*&buf[8] + 40);
        *v87 = 138412546;
        v88 = self;
        v89 = 2112;
        v90 = v25;
        v19 = v17;
        v20 = OS_LOG_TYPE_DEFAULT;
      }

      _os_log_impl(&_mh_execute_header, v19, v20, "%@ client %@ needs to disconnect", v87, 0x16u);
LABEL_35:

      v26 = *(v76 + 5);
      v27 = [*(*&buf[8] + 40) publicToken];
      v28 = [*(*&buf[8] + 40) hwVersion];
      v29 = [*(*&buf[8] + 40) swVersion];
      v30 = [*(*&buf[8] + 40) swBuild];
      v73[0] = _NSConcreteStackBlock;
      v73[1] = 3221225472;
      v73[2] = sub_10003DC8C;
      v73[3] = &unk_100187050;
      v73[4] = self;
      v73[5] = &v75;
      [v26 sendConnectMessageWithToken:v27 state:2 presenceFlags:0 hwVersion:v28 swVersion:v29 swBuild:v30 certificates:0 nonce:0 signature:0 withCompletion:v73];

      v31 = *(*&buf[8] + 40);
      v32 = [*(v76 + 5) identifier];
      [v31 setState:3 onInterface:v32];

      objc_storeStrong(&self->_proxyClientWithOutstandingPresence, *(*&buf[8] + 40));
      if (+[APSLog shouldReduceLogging])
      {
        v33 = +[APSLog courier];
        if (os_log_type_enabled(v33, OS_LOG_TYPE_DEBUG))
        {
          v34 = self->_proxyClientWithOutstandingPresence;
          v35 = v76[5];
          *v87 = 138412802;
          v88 = self;
          v89 = 2112;
          v90 = v34;
          v91 = 2114;
          v92 = v35;
          v36 = v33;
          v37 = OS_LOG_TYPE_DEBUG;
LABEL_40:
          _os_log_impl(&_mh_execute_header, v36, v37, "%@ sending presence offline for client %@ on interface %{public}@", v87, 0x20u);
        }
      }

      else
      {
        v33 = +[APSLog courier];
        if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
        {
          v38 = self->_proxyClientWithOutstandingPresence;
          v39 = v76[5];
          *v87 = 138412802;
          v88 = self;
          v89 = 2112;
          v90 = v38;
          v91 = 2114;
          v92 = v39;
          v36 = v33;
          v37 = OS_LOG_TYPE_DEFAULT;
          goto LABEL_40;
        }
      }

LABEL_65:
      v21 = 1;
      goto LABEL_66;
    }

    if (!v82[5])
    {
      v21 = 0;
LABEL_66:
      _Block_object_dispose(&v75, 8);

      _Block_object_dispose(&v81, 8);
      _Block_object_dispose(buf, 8);

      return v21;
    }

    if (+[APSLog shouldReduceLogging])
    {
      v22 = +[APSLog courier];
      if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
      {
        v23 = v82[5];
        [(APSProxyClient *)v23 lastPresence];
        v24 = COERCE_DOUBLE(objc_claimAutoreleasedReturnValue());
        *v87 = 138412802;
        v88 = self;
        v89 = 2112;
        v90 = v23;
        v91 = 2112;
        v92 = v24;
        _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEBUG, "%@ client %@ needs to connect. LastPresence %@", v87, 0x20u);
      }
    }

    else
    {
      v22 = +[APSLog courier];
      if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
      {
        v40 = v82[5];
        [(APSProxyClient *)v40 lastPresence];
        v41 = COERCE_DOUBLE(objc_claimAutoreleasedReturnValue());
        *v87 = 138412802;
        v88 = self;
        v89 = 2112;
        v90 = v40;
        v91 = 2112;
        v92 = v41;
        _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "%@ client %@ needs to connect. LastPresence %@", v87, 0x20u);
      }
    }

    v42 = [v82[5] lastPresence];
    [v42 timeIntervalSinceNow];
    v44 = v43;

    v71 = +[NSMutableArray array];
    v45 = [v82[5] certificates];

    if (v45)
    {
      v46 = [v82[5] certificates];
      [v71 addObjectsFromArray:v46];
    }

    if ([(APSUserCourier *)self locallyDisabledFilterOptimization])
    {
      v47 = 0;
    }

    else
    {
      v47 = _os_feature_enabled_impl();
    }

    v70 = [v82[5] additionalFlags];
    if (v47)
    {
      v48 = 0x2000;
    }

    else
    {
      v48 = 0;
    }

    v49 = *(v76 + 5);
    v50 = [v82[5] publicToken];
    v51 = [v82[5] hwVersion];
    v52 = [v82[5] swVersion];
    v53 = [v82[5] swBuild];
    v54 = [v82[5] nonce];
    v55 = [v82[5] signature];
    v72[0] = _NSConcreteStackBlock;
    v72[1] = 3221225472;
    v72[2] = sub_10003DCA4;
    v72[3] = &unk_100187050;
    v72[4] = self;
    v72[5] = &v75;
    [v49 sendConnectMessageWithToken:v50 state:1 presenceFlags:v70 | v48 hwVersion:v51 swVersion:v52 swBuild:v53 certificates:v71 nonce:v54 signature:v55 withCompletion:v72];

    v56 = fabs(v44);
    if (+[APSLog shouldReduceLogging])
    {
      v57 = +[APSLog courier];
      if (os_log_type_enabled(v57, OS_LOG_TYPE_DEBUG))
      {
        v58 = [v82[5] publicToken];
        *v87 = 138412802;
        v88 = self;
        v89 = 2112;
        v90 = v58;
        v91 = 2048;
        v92 = v56;
        _os_log_impl(&_mh_execute_header, v57, OS_LOG_TYPE_DEBUG, "%@: Sending client connect message with token '%@' presence age %f", v87, 0x20u);
      }
    }

    else
    {
      v57 = +[APSLog courier];
      if (os_log_type_enabled(v57, OS_LOG_TYPE_DEFAULT))
      {
        v59 = [v82[5] publicToken];
        *v87 = 138412802;
        v88 = self;
        v89 = 2112;
        v90 = v59;
        v91 = 2048;
        v92 = v56;
        _os_log_impl(&_mh_execute_header, v57, OS_LOG_TYPE_DEFAULT, "%@: Sending client connect message with token '%@' presence age %f", v87, 0x20u);
      }
    }

    v60 = v82[5];
    v61 = [*(v76 + 5) identifier];
    [v60 setState:1 onInterface:v61];

    objc_storeStrong(&self->_proxyClientWithOutstandingPresence, v82[5]);
    if (+[APSLog shouldReduceLogging])
    {
      v62 = +[APSLog courier];
      if (os_log_type_enabled(v62, OS_LOG_TYPE_DEBUG))
      {
        v63 = self->_proxyClientWithOutstandingPresence;
        v64 = v76[5];
        *v87 = 138412802;
        v88 = self;
        v89 = 2112;
        v90 = v63;
        v91 = 2114;
        v92 = v64;
        v65 = v62;
        v66 = OS_LOG_TYPE_DEBUG;
LABEL_63:
        _os_log_impl(&_mh_execute_header, v65, v66, "%@ sending presence online for client %@ on interface %{public}@", v87, 0x20u);
      }
    }

    else
    {
      v62 = +[APSLog courier];
      if (os_log_type_enabled(v62, OS_LOG_TYPE_DEFAULT))
      {
        v67 = self->_proxyClientWithOutstandingPresence;
        v68 = v76[5];
        *v87 = 138412802;
        v88 = self;
        v89 = 2112;
        v90 = v67;
        v91 = 2114;
        v92 = v68;
        v65 = v62;
        v66 = OS_LOG_TYPE_DEFAULT;
        goto LABEL_63;
      }
    }

    goto LABEL_65;
  }

  return 0;
}

- (void)_sendClientFilter:(id)a3 onProtocolConnection:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v6 topics];
  if (v8)
  {
    v9 = [v6 publicToken];

    if (v9)
    {
      v10 = [v8 hashesToEnabledTopics];
      v11 = [(APSUserCourier *)self _topicsByHashFromTopicStateDictionary:v10];

      v12 = [v8 hashesToIgnoredTopics];
      v51 = [(APSUserCourier *)self _topicsByHashFromTopicStateDictionary:v12];

      v13 = [v8 hashesToOpportunisticTopics];
      v14 = [(APSUserCourier *)self _topicsByHashFromTopicStateDictionary:v13];

      v15 = [v8 hashesToNonWakingTopics];
      v49 = [(APSUserCourier *)self _topicsByHashFromTopicStateDictionary:v15];

      v16 = [v8 hashesToPausedTopics];
      v50 = [(APSUserCourier *)self _topicsByHashFromTopicStateDictionary:v16];

      v17 = [v6 filterVersionStateMachine];
      v18 = [v7 identifier];
      v54 = 0;
      v47 = [v17 versionToSendFor:v18 error:&v54];
      v48 = v54;

      v19 = +[APSLog courierOversized];
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
      {
        v20 = APSPrettyPrintCollection();
        APSPrettyPrintCollection();
        v45 = v14;
        v21 = v46 = v7;
        v22 = APSPrettyPrintCollection();
        v23 = APSPrettyPrintCollection();
        v24 = APSPrettyPrintCollection();
        *buf = 138414338;
        v56 = self;
        v57 = 2112;
        v58 = v6;
        v59 = 2048;
        v60 = v47;
        v61 = 2112;
        v62 = v20;
        v63 = 2112;
        v64 = v21;
        v65 = 2112;
        v66 = v22;
        v67 = 2112;
        v68 = v23;
        v69 = 2112;
        v70 = v24;
        v71 = 2114;
        v72 = v46;
        _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "%@: sending filter for client %@ with version %llu with enabled topics = %@, opportunistic topics = %@, non-waking topics = %@, paused topics = %@, ignored topics = %@ on interface %{public}@", buf, 0x5Cu);

        v7 = v46;
        v14 = v45;
      }

      v25 = v48;
      if (!v48)
      {
        v36 = [(APSUserCourier *)self expectsResponseForFilterMessageOnProtocolConnection:v7 forClient:v6];
        v37 = [v6 publicToken];
        v52[0] = _NSConcreteStackBlock;
        v52[1] = 3221225472;
        v52[2] = sub_10003E2F4;
        v52[3] = &unk_100187078;
        v52[4] = self;
        v38 = v7;
        v53 = v38;
        LOBYTE(v44) = v36;
        v39 = v14;
        [v38 sendFilterMessageWithEnabledTopicsByHash:v11 ignoredTopicsByHash:v51 opportunisticTopicsByHash:v14 nonWakingTopicsByHash:v49 pausedTopicsByHash:v50 saltsByTopic:0 token:v37 version:v47 expectsResponse:v44 withCompletion:v52];

        v40 = [v6 filterVersionStateMachine];
        v41 = [v38 identifier];
        [v40 noteSentWithVersion:v47 on:v41];

        if ((v36 & 1) == 0)
        {
          v42 = [v6 filterVersionStateMachine];
          v43 = [v38 identifier];
          [v42 noteAckedWithVersion:v47 on:v43];
        }

        v14 = v39;
        v25 = 0;
        goto LABEL_22;
      }

      v26 = +[APSLog shouldReduceLogging];
      v27 = +[APSLog courier];
      v28 = v27;
      if (v26)
      {
        if (os_log_type_enabled(v27, OS_LOG_TYPE_DEBUG))
        {
          *buf = 138412290;
          v56 = v48;
          v29 = v28;
          v30 = OS_LOG_TYPE_DEBUG;
LABEL_20:
          _os_log_impl(&_mh_execute_header, v29, v30, "Error fetching filter version for proxy client; disconnecting {versionError: %@}", buf, 0xCu);
        }
      }

      else if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v56 = v48;
        v29 = v28;
        v30 = OS_LOG_TYPE_DEFAULT;
        goto LABEL_20;
      }

      [v7 disconnectWithReason:6];
LABEL_22:

      goto LABEL_23;
    }
  }

  v31 = +[APSLog shouldReduceLogging];
  v32 = +[APSLog courier];
  v11 = v32;
  if (v31)
  {
    if (os_log_type_enabled(v32, OS_LOG_TYPE_DEBUG))
    {
      v33 = [v6 publicToken];
      *buf = 138412802;
      v56 = self;
      v57 = 2112;
      v58 = v6;
      v59 = 2112;
      v60 = v33;
      v34 = v11;
      v35 = OS_LOG_TYPE_DEBUG;
LABEL_14:
      _os_log_impl(&_mh_execute_header, v34, v35, "%@ we don't yet have a filter for %@ (token %@).", buf, 0x20u);
    }
  }

  else if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
  {
    v33 = [v6 publicToken];
    *buf = 138412802;
    v56 = self;
    v57 = 2112;
    v58 = v6;
    v59 = 2112;
    v60 = v33;
    v34 = v11;
    v35 = OS_LOG_TYPE_DEFAULT;
    goto LABEL_14;
  }

LABEL_23:
}

- (void)pushTokenBecameInvalidForClient:(id)a3
{
  v4 = a3;
  v5 = +[APSLog shouldReduceLogging];
  v6 = +[APSLog courier];
  v7 = v6;
  if (v5)
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      v10 = 138412546;
      v11 = self;
      v12 = 2112;
      v13 = v4;
      v8 = v7;
      v9 = OS_LOG_TYPE_DEBUG;
LABEL_6:
      _os_log_impl(&_mh_execute_header, v8, v9, "%@ pushTokenBecameInvalidForClient %@", &v10, 0x16u);
    }
  }

  else if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 138412546;
    v11 = self;
    v12 = 2112;
    v13 = v4;
    v8 = v7;
    v9 = OS_LOG_TYPE_DEFAULT;
    goto LABEL_6;
  }

  [(APSUserCourier *)self _reconnectIgnoringDelayReconnectTimer:1];
}

- (void)requestFilterForClient:(id)a3
{
  v4 = a3;
  v5 = +[APSLog shouldReduceLogging];
  v6 = +[APSLog courier];
  v7 = v6;
  if (v5)
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412546;
      v23 = self;
      v24 = 2112;
      v25 = v4;
      v8 = v7;
      v9 = OS_LOG_TYPE_DEBUG;
LABEL_6:
      _os_log_impl(&_mh_execute_header, v8, v9, "%@ requestFilterForClient %@", buf, 0x16u);
    }
  }

  else if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v23 = self;
    v24 = 2112;
    v25 = v4;
    v8 = v7;
    v9 = OS_LOG_TYPE_DEFAULT;
    goto LABEL_6;
  }

  [(APSUserCourier *)self setHasFilterChanged:1];
  if (-[APSUserCourier shouldOnlySendFilterOnPreferredInterface](self, "shouldOnlySendFilterOnPreferredInterface") && [v4 shouldOnlySendFilterOnPreferredInterface])
  {
    v10 = [(APSUserCourier *)self preferredProtocolConnection];
    v11 = [v10 identifier];
    v12 = [v4 stateOnInterface:v11];

    if (v12 == 2)
    {
      v13 = [(APSUserCourier *)self preferredProtocolConnection];
      [(APSUserCourier *)self _sendClientFilter:v4 onProtocolConnection:v13];
    }

    v20[0] = _NSConcreteStackBlock;
    v20[1] = 3221225472;
    v20[2] = sub_10003E6A4;
    v20[3] = &unk_1001870A0;
    v20[4] = self;
    v21 = v4;
    v14 = v4;
    [(APSUserCourier *)self enumerateConnectedProtocolConnections:v20];
    v15 = v21;
  }

  else
  {
    v17[0] = _NSConcreteStackBlock;
    v17[1] = 3221225472;
    v17[2] = sub_10003E7A4;
    v17[3] = &unk_1001870A0;
    v18 = v4;
    v19 = self;
    v16 = v4;
    [(APSUserCourier *)self enumerateConnectedProtocolConnections:v17];
    v15 = v18;
  }
}

- (void)clientBecameInactive:(id)a3
{
  v4 = a3;
  v5 = +[APSLog shouldReduceLogging];
  v6 = +[APSLog courier];
  v7 = v6;
  if (v5)
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      v10 = 138412546;
      v11 = self;
      v12 = 2112;
      v13 = v4;
      v8 = v7;
      v9 = OS_LOG_TYPE_DEBUG;
LABEL_6:
      _os_log_impl(&_mh_execute_header, v8, v9, "%@ client %@ became inactive. Sending offline status if needed.", &v10, 0x16u);
    }
  }

  else if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 138412546;
    v11 = self;
    v12 = 2112;
    v13 = v4;
    v8 = v7;
    v9 = OS_LOG_TYPE_DEFAULT;
    goto LABEL_6;
  }

  [(APSUserCourier *)self _processPendingProxyPresences];
  [(APSUserCourier *)self _performIdleCheck];
}

- (void)client:(id)a3 requestPushAckResponse:(id)a4 messageId:(id)a5 token:(id)a6 connectionType:(id)a7 generation:(id)a8
{
  v14 = a3;
  v15 = a4;
  v16 = a5;
  v17 = a6;
  v18 = a8;
  v19 = [a7 integerValue];
  v20 = [v18 unsignedIntegerValue];

  if (![(APSUserCourier *)self hasConnectedInterfaceOfType:v19])
  {
    v21 = +[APSLog shouldReduceLogging];
    v22 = +[APSLog courier];
    v23 = v22;
    if (v21)
    {
      if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412546;
        v33 = self;
        v34 = 2112;
        v35 = v14;
        v24 = v23;
        v25 = OS_LOG_TYPE_DEBUG;
LABEL_8:
        _os_log_impl(&_mh_execute_header, v24, v25, "%@: ignoring a proxied push ack response that is no longer relevant. %@", buf, 0x16u);
      }
    }

    else if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v33 = self;
      v34 = 2112;
      v35 = v14;
      v24 = v23;
      v25 = OS_LOG_TYPE_DEFAULT;
      goto LABEL_8;
    }

    goto LABEL_10;
  }

  v26[0] = _NSConcreteStackBlock;
  v26[1] = 3221225472;
  v26[2] = sub_10003EB9C;
  v26[3] = &unk_1001870C8;
  v31 = v20;
  v26[4] = self;
  v27 = v14;
  v28 = v15;
  v29 = v16;
  v30 = v17;
  [(APSUserCourier *)self enumerateConnectedProtocolConnectionsOfType:v19 block:v26];

LABEL_10:
}

- (void)client:(id)a3 requestSendOutgoingMessage:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = +[APSLog courierOversized];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = [v7 messageID];
    v10 = [v7 topic];
    v11 = [v7 timeout];
    if ([v7 isCritical])
    {
      v12 = @"yes";
    }

    else
    {
      v12 = @"no";
    }

    v13 = [v7 identifier];
    v14 = [v7 userInfo];
    *buf = 138414082;
    v37 = self;
    v38 = 2112;
    v39 = v6;
    v40 = 2048;
    v41 = v9;
    v42 = 2112;
    v43 = v10;
    v44 = 2048;
    v45 = v11;
    v46 = 2112;
    v47 = v12;
    v48 = 2048;
    v49 = v13;
    v50 = 2112;
    v51 = v14;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "%@: Received proxy %@ outgoing message %lu to send with topic '%@', timeout %lu, critical %@, identifier %lu, and userInfo '%@'", buf, 0x52u);
  }

  [v7 setOriginator:v6];
  v15 = [v6 topics];
  v16 = [v15 enabledTopics];
  v17 = [v7 topic];
  if ([v16 containsObject:v17])
  {
    goto LABEL_9;
  }

  v18 = [v6 topics];
  v19 = [v18 opportunisticTopics];
  v20 = [v7 topic];
  if (([v19 containsObject:v20] & 1) == 0)
  {
    [v6 topics];
    v21 = v35 = v6;
    [v21 nonWakingTopics];
    v22 = v34 = self;
    v23 = [v7 topic];
    v33 = [v22 containsObject:v23];

    self = v34;
    v6 = v35;

    if (v33)
    {
      goto LABEL_10;
    }

    v24 = +[APSLog shouldReduceLogging];
    v25 = +[APSLog courier];
    v26 = v25;
    if (v24)
    {
      if (os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
      {
        v27 = [v7 messageID];
        v28 = [v7 topic];
        *buf = 138412802;
        v37 = v34;
        v38 = 2048;
        v39 = v27;
        v40 = 2112;
        v41 = v28;
        v29 = v26;
        v30 = OS_LOG_TYPE_DEBUG;
LABEL_18:
        _os_log_impl(&_mh_execute_header, v29, v30, "%@: Dropping outgoing message %lu because topic is not enabled '%@'", buf, 0x20u);
      }
    }

    else if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
    {
      v31 = [v7 messageID];
      v28 = [v7 topic];
      *buf = 138412802;
      v37 = v34;
      v38 = 2048;
      v39 = v31;
      v40 = 2112;
      v41 = v28;
      v29 = v26;
      v30 = OS_LOG_TYPE_DEFAULT;
      goto LABEL_18;
    }

    v32 = APSError();
    [v35 handleResult:v32 forSendingOutgoingMessage:v7];

    goto LABEL_11;
  }

LABEL_9:
LABEL_10:
  [(APSUserCourier *)self _enqueueMessage:v7 forOriginator:v6];
LABEL_11:
}

- (void)client:(id)a3 requestTokenGenerateWithTopicHash:(id)a4 baseToken:(id)a5 appId:(id)a6 expirationTTL:(id)a7 vapidPublicKeyHash:(id)a8 type:(id)a9
{
  v15 = a3;
  v16 = a4;
  v17 = a5;
  v18 = a6;
  v19 = a7;
  v20 = a8;
  v21 = a9;
  v22 = +[APSLog shouldReduceLogging];
  v23 = +[APSLog courier];
  v24 = v23;
  if (v22)
  {
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138414082;
      v47 = self;
      v48 = 2112;
      v49 = v15;
      v50 = 2112;
      v51 = v16;
      v52 = 2112;
      v53 = v17;
      v54 = 2112;
      v55 = v18;
      v56 = 2112;
      v57 = v19;
      v58 = 2112;
      v59 = v20;
      v60 = 2112;
      v61 = v21;
      v25 = v24;
      v26 = OS_LOG_TYPE_DEBUG;
LABEL_6:
      _os_log_impl(&_mh_execute_header, v25, v26, "%@: Received proxy %@ token generate request with topicHash %@ baseToken %@ appId %@ expiration %@ vapidHash %@ type %@", buf, 0x52u);
    }
  }

  else if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138414082;
    v47 = self;
    v48 = 2112;
    v49 = v15;
    v50 = 2112;
    v51 = v16;
    v52 = 2112;
    v53 = v17;
    v54 = 2112;
    v55 = v18;
    v56 = 2112;
    v57 = v19;
    v58 = 2112;
    v59 = v20;
    v60 = 2112;
    v61 = v21;
    v25 = v24;
    v26 = OS_LOG_TYPE_DEFAULT;
    goto LABEL_6;
  }

  tokenRequestQueue = self->_tokenRequestQueue;
  v39[0] = _NSConcreteStackBlock;
  v39[1] = 3221225472;
  v39[2] = sub_10003F534;
  v39[3] = &unk_1001870F0;
  v39[4] = self;
  v40 = v16;
  v41 = v17;
  v42 = v18;
  v43 = v19;
  v44 = v20;
  v45 = v21;
  v35[0] = _NSConcreteStackBlock;
  v35[1] = 3221225472;
  v35[2] = sub_10003F66C;
  v35[3] = &unk_100187118;
  v35[4] = self;
  v36 = v15;
  v37 = v40;
  v38 = v42;
  v28 = v42;
  v29 = v40;
  v30 = v15;
  v31 = v21;
  v32 = v20;
  v33 = v19;
  v34 = v17;
  [(APSOutgoingQueue *)tokenRequestQueue enqueueSendBlock:v39 completionBlock:v35];
}

- (void)client:(id)a3 sendPubSubChannelList:(id)a4 token:(id)a5
{
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_10003FB70;
  v9[3] = &unk_100187140;
  v10 = a3;
  v11 = self;
  v12 = a4;
  v7 = v12;
  v8 = v10;
  [(APSUserCourier *)self enumerateConnectedProtocolConnections:v9];
}

- (void)_clearCachedSigNonceCert
{
  v3 = +[APSLog shouldReduceLogging];
  v4 = +[APSLog courier];
  v5 = v4;
  if (v3)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      v8 = 138412290;
      v9 = self;
      v6 = v5;
      v7 = OS_LOG_TYPE_DEBUG;
LABEL_6:
      _os_log_impl(&_mh_execute_header, v6, v7, "%@ client identity may have changed, clear cached sig/nonce/cert", &v8, 0xCu);
    }
  }

  else if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 138412290;
    v9 = self;
    v6 = v5;
    v7 = OS_LOG_TYPE_DEFAULT;
    goto LABEL_6;
  }

  [(APSUserCourier *)self setNonce:0];
  [(APSUserCourier *)self setSignature:0];
  [(APSUserCourier *)self setCertificates:0];
  [(APSUserCourier *)self setLastPresence:0];
  [(APSUserCourier *)self setLastNonceRefresh:0];
}

- (void)_deleteClientIdentityRequestingReplacement
{
  v3 = +[APSLog shouldReduceLogging];
  v4 = +[APSLog courier];
  v5 = v4;
  if (v3)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      v9 = 138412290;
      v10 = self;
      v6 = v5;
      v7 = OS_LOG_TYPE_DEBUG;
LABEL_6:
      _os_log_impl(&_mh_execute_header, v6, v7, "%@: deleting identity", &v9, 0xCu);
    }
  }

  else if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 138412290;
    v10 = self;
    v6 = v5;
    v7 = OS_LOG_TYPE_DEFAULT;
    goto LABEL_6;
  }

  [(APSUserCourier *)self _clearCachedSigNonceCert];
  v8 = [(APSUserCourier *)self clientIdentityProvider];
  [v8 forceIdentityRefresh:0];
}

- (void)systemDidLock
{
  v2[0] = _NSConcreteStackBlock;
  v2[1] = 3221225472;
  v2[2] = sub_1000406EC;
  v2[3] = &unk_100187000;
  v2[4] = self;
  [(APSUserCourier *)self enumerateConnectedProtocolConnectionsOfType:1 block:v2];
}

- (void)processIsPowerEfficientToSendChange
{
  v10 = 0;
  v11 = &v10;
  v12 = 0x2020000000;
  v13 = ![(APSUserCourier *)self hasConnectedInterfaceOfType:0];
  if ((v11[3] & 1) == 0)
  {
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_100040A24;
    v9[3] = &unk_100186FD8;
    v9[4] = &v10;
    [(APSUserCourier *)self enumerateConnectedProtocolConnectionsOfType:0 block:v9];
  }

  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v8 = 0;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100040A68;
  v4[3] = &unk_100186FD8;
  v4[4] = &v5;
  [(APSUserCourier *)self enumerateConnectedProtocolConnectionsOfType:1 block:v4];
  if (*(v11 + 24) == 1)
  {
    v3 = *(v6 + 24);
  }

  else
  {
    v3 = 0;
  }

  [(APSTopicManager *)self->_topicManager setIsPowerEfficientToSendFilter:v3 & 1];
  _Block_object_dispose(&v5, 8);
  _Block_object_dispose(&v10, 8);
}

- (void)_handleLostPushTokens
{
  if (!self->_swappingIdentity)
  {
    v3 = [(APSUserCourier *)self clientIdentityProvider];
    [v3 notePushTokenLost];
  }

  if (![(APSUserCourier *)self _processPotentialIdentityChanged])
  {
    v4 = [(APSUserCourier *)self courierUser];
    v5 = [v4 isDefaultUser];

    if (v5)
    {
      v6 = +[APSLog shouldReduceLogging];
      v7 = +[APSLog courier];
      v8 = v7;
      if (v6)
      {
        if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
        {
          v11 = 138412290;
          v12 = self;
          v9 = v8;
          v10 = OS_LOG_TYPE_DEBUG;
LABEL_10:
          _os_log_impl(&_mh_execute_header, v9, v10, "%@ Client identity is still valid. Reconnect to fetch new push tokens with existing client identity.", &v11, 0xCu);
        }
      }

      else if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        v11 = 138412290;
        v12 = self;
        v9 = v8;
        v10 = OS_LOG_TYPE_DEFAULT;
        goto LABEL_10;
      }

      [(APSUserCourier *)self _reconnectIgnoringDelayReconnectTimer:1];
    }
  }
}

- (void)_processStoredIncomingMessages
{
  v3 = +[APSLog shouldReduceLogging];
  v4 = +[APSLog courier];
  v5 = v4;
  if (v3)
  {
    if (!os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      goto LABEL_11;
    }

    v6 = @"NO";
    if (self->_enabled)
    {
      v6 = @"YES";
    }

    *buf = 138412546;
    v37 = self;
    v38 = 2112;
    v39 = v6;
    v7 = v5;
    v8 = OS_LOG_TYPE_DEBUG;
  }

  else
  {
    if (!os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_11;
    }

    v9 = @"NO";
    if (self->_enabled)
    {
      v9 = @"YES";
    }

    *buf = 138412546;
    v37 = self;
    v38 = 2112;
    v39 = v9;
    v7 = v5;
    v8 = OS_LOG_TYPE_DEFAULT;
  }

  _os_log_impl(&_mh_execute_header, v7, v8, "%@ _processStoredIncomingMessages: enabled = %@", buf, 0x16u);
LABEL_11:

  if (!self->_enabled)
  {
    goto LABEL_26;
  }

  v10 = [(APSUserCourier *)self _getCurrentTokens];
  v11 = +[APSMessageStore sharedInstance];
  v12 = [v11 incomingHighPriorityMessagesForEnvironment:self->_environment pushTokens:v10];

  v13 = +[APSLog shouldReduceLogging];
  v14 = +[APSLog courier];
  v15 = v14;
  if (v13)
  {
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
    {
      v16 = [v12 count];
      *buf = 138412546;
      v37 = self;
      v38 = 2048;
      v39 = v16;
      v17 = v15;
      v18 = OS_LOG_TYPE_DEBUG;
LABEL_17:
      _os_log_impl(&_mh_execute_header, v17, v18, "%@ processing %lu stored incoming messages", buf, 0x16u);
    }
  }

  else if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    v19 = [v12 count];
    *buf = 138412546;
    v37 = self;
    v38 = 2048;
    v39 = v19;
    v17 = v15;
    v18 = OS_LOG_TYPE_DEFAULT;
    goto LABEL_17;
  }

  v33 = 0u;
  v34 = 0u;
  v31 = 0u;
  v32 = 0u;
  v20 = v12;
  v21 = [v20 countByEnumeratingWithState:&v31 objects:v35 count:16];
  if (v21)
  {
    v22 = v21;
    v23 = *v32;
    do
    {
      for (i = 0; i != v22; i = i + 1)
      {
        if (*v32 != v23)
        {
          objc_enumerationMutation(v20);
        }

        [(APSUserCourier *)self _notifyForIncomingMessage:*(*(&v31 + 1) + 8 * i), v31];
      }

      v22 = [v20 countByEnumeratingWithState:&v31 objects:v35 count:16];
    }

    while (v22);
  }

  v25 = +[APSMessageStore sharedInstance];
  [v25 deleteStaleIncomingLowPriorityMessagesForEnvironment:self->_environment];

LABEL_26:
  v26 = +[APSLog shouldReduceLogging];
  v27 = +[APSLog courier];
  v28 = v27;
  if (v26)
  {
    if (os_log_type_enabled(v27, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412290;
      v37 = self;
      v29 = v28;
      v30 = OS_LOG_TYPE_DEBUG;
LABEL_31:
      _os_log_impl(&_mh_execute_header, v29, v30, "%@ done with _processStoredIncomingMessages", buf, 0xCu);
    }
  }

  else if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v37 = self;
    v29 = v28;
    v30 = OS_LOG_TYPE_DEFAULT;
    goto LABEL_31;
  }
}

- (void)_processShouldUseInternetChangeIfNecessary
{
  shouldUseInternet = self->_shouldUseInternet;
  v4 = [(APSUserCourier *)self protocolConnectionEstablisher];
  [v4 adjustConnectionsIfNeeded];

  if ([(APSUserCourier *)self shouldUseInternet]|| ![(APSUserCourier *)self shouldRun])
  {
    v11 = [(APSUserCourier *)self shouldRun];
    v12 = +[APSLog shouldReduceLogging];
    v13 = +[APSLog courier];
    v14 = v13;
    if (v11)
    {
      if (v12)
      {
        if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
        {
          *buf = 138412290;
          v38 = self;
          v15 = v14;
          v16 = OS_LOG_TYPE_DEBUG;
LABEL_16:
          _os_log_impl(&_mh_execute_header, v15, v16, "%@ is no longer in proxy mode.", buf, 0xCu);
        }
      }

      else if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v38 = self;
        v15 = v14;
        v16 = OS_LOG_TYPE_DEFAULT;
        goto LABEL_16;
      }

      v31 = _NSConcreteStackBlock;
      v32 = 3221225472;
      v33 = sub_100041598;
      v34 = &unk_100187000;
      v35 = self;
      v19 = &v31;
LABEL_22:
      [(APSUserCourier *)self enumerateConnectedProtocolConnectionsOfType:2 block:v19, v31, v32, v33, v34, v35];
      goto LABEL_23;
    }

    if (v12)
    {
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        v38 = self;
        v17 = v14;
        v18 = OS_LOG_TYPE_DEBUG;
LABEL_20:
        _os_log_impl(&_mh_execute_header, v17, v18, "%@ no longer need to run, closing proxy if connected", buf, 0xCu);
      }
    }

    else if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v38 = self;
      v17 = v14;
      v18 = OS_LOG_TYPE_DEFAULT;
      goto LABEL_20;
    }

    v19 = &stru_1001871F8;
    goto LABEL_22;
  }

  v5 = [(APSUserCourier *)self hasConnectedInterfaceOfType:2];
  v6 = +[APSLog shouldReduceLogging];
  v7 = +[APSLog courier];
  v8 = v7;
  if (v5)
  {
    if (v6)
    {
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        v38 = self;
        v9 = v8;
        v10 = OS_LOG_TYPE_DEBUG;
LABEL_41:
        _os_log_impl(&_mh_execute_header, v9, v10, "%@ should not connect to the internet switching to proxy mode", buf, 0xCu);
      }
    }

    else if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v38 = self;
      v9 = v8;
      v10 = OS_LOG_TYPE_DEFAULT;
      goto LABEL_41;
    }

    [(APSOutgoingQueue *)self->_tokenRequestQueue handleConnectionOpened];
    outgoingMessageQueue = self->_outgoingMessageQueue;
    v36[0] = _NSConcreteStackBlock;
    v36[1] = 3221225472;
    v36[2] = sub_1000414B8;
    v36[3] = &unk_1001871B8;
    v36[4] = self;
    [(APSOutgoingMessageQueue *)outgoingMessageQueue transferOwnershipOfPendingMessagesToHandler:v36];
    goto LABEL_23;
  }

  if (v6)
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412290;
      v38 = self;
      v28 = v8;
      v29 = OS_LOG_TYPE_DEBUG;
LABEL_45:
      _os_log_impl(&_mh_execute_header, v28, v29, "%@ should not connect to the internet but no proxy available", buf, 0xCu);
    }
  }

  else if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v38 = self;
    v28 = v8;
    v29 = OS_LOG_TYPE_DEFAULT;
    goto LABEL_45;
  }

LABEL_23:
  if (shouldUseInternet == [(APSUserCourier *)self shouldUseInternet])
  {
    return;
  }

  v20 = +[APSLog shouldReduceLogging];
  v21 = +[APSLog courier];
  v22 = v21;
  if (v20)
  {
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
    {
      v23 = @"YES";
      if (shouldUseInternet)
      {
        v23 = @"NO";
      }

      *buf = 138412546;
      v38 = self;
      v39 = 2112;
      v40 = v23;
      v24 = v22;
      v25 = OS_LOG_TYPE_DEBUG;
LABEL_33:
      _os_log_impl(&_mh_execute_header, v24, v25, "%@ shouldUseInternet did change to %@", buf, 0x16u);
    }
  }

  else if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
  {
    v26 = @"YES";
    if (shouldUseInternet)
    {
      v26 = @"NO";
    }

    *buf = 138412546;
    v38 = self;
    v39 = 2112;
    v40 = v26;
    v24 = v22;
    v25 = OS_LOG_TYPE_DEFAULT;
    goto LABEL_33;
  }

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained shouldUseInternetDidChange:self];
}

- (BOOL)_processPotentialIdentityChanged
{
  v3 = [(APSUserCourier *)self clientIdentityProvider];
  if (![v3 identityStatus])
  {

    goto LABEL_5;
  }

  v4 = [(APSUserCourier *)self clientIdentityProvider];
  v5 = [v4 hasUnderlyingIdentityChanged];

  if (v5)
  {
LABEL_5:
    v6 = 1;
    [(APSUserCourier *)self _processInvalidIdentityAndConnectImmediately:1];
    v7 = [(APSUserCourier *)self clientIdentityProvider];
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_1000416E0;
    v9[3] = &unk_100187220;
    v9[4] = self;
    [v7 preloadIdentity:v9];

    return v6;
  }

  return 0;
}

- (void)rollTokenAndReconnectImmediately:(BOOL)a3
{
  v3 = a3;
  v5 = +[APSLog shouldReduceLogging];
  v6 = +[APSLog courier];
  v7 = v6;
  if (v5)
  {
    if (!os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      goto LABEL_7;
    }

    v10 = 138412290;
    v11 = self;
    v8 = v7;
    v9 = OS_LOG_TYPE_DEBUG;
  }

  else
  {
    if (!os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_7;
    }

    v10 = 138412290;
    v11 = self;
    v8 = v7;
    v9 = OS_LOG_TYPE_DEFAULT;
  }

  _os_log_impl(&_mh_execute_header, v8, v9, "%@: Clearing public token and terminating connection", &v10, 0xCu);
LABEL_7:

  [(APSUserCourier *)self setPublicToken:0 fromServer:1];
  if (v3)
  {
    [(APSUserCourier *)self _reconnectIgnoringDelayReconnectTimer:14];
  }

  else
  {
    [(APSUserCourier *)self _reconnectAllConnectionsWithReason:14];
  }
}

- (void)topicManagerRequestToSendFilter:(id)a3 change:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = +[APSLog shouldReduceLogging];
  v9 = +[APSLog courier];
  v10 = v9;
  if (v8)
  {
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      v11 = [(APSUserCourier *)self protocolConnectionEstablisher];
      v14 = 138412802;
      v15 = self;
      v16 = 2112;
      v17 = v6;
      v18 = 2048;
      v19 = [v11 countConnectedInterfaces];
      v12 = v10;
      v13 = OS_LOG_TYPE_DEBUG;
LABEL_6:
      _os_log_impl(&_mh_execute_header, v12, v13, "%@ topicManager %@ requested to send filter. Connected on %lu interfaces.", &v14, 0x20u);
    }
  }

  else if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v11 = [(APSUserCourier *)self protocolConnectionEstablisher];
    v14 = 138412802;
    v15 = self;
    v16 = 2112;
    v17 = v6;
    v18 = 2048;
    v19 = [v11 countConnectedInterfaces];
    v12 = v10;
    v13 = OS_LOG_TYPE_DEFAULT;
    goto LABEL_6;
  }

  [(APSUserCourier *)self setHasFilterChanged:1];
  [(APSUserCourier *)self _requestToSendFilterOnTopicManager:self->_topicManager change:v7];
}

- (id)getConnectionTypeFromProtocolConnection:(id)a3
{
  v3 = a3;
  v4 = v3;
  v5 = @"wifi";
  if (v3)
  {
    v6 = [v3 connectionType];
    v7 = @"proxy";
    if (v6 != 2)
    {
      v7 = @"wifi";
    }

    if (v6)
    {
      v5 = v7;
    }

    else
    {
      v5 = @"wwan";
    }
  }

  return v5;
}

- (void)outgoingMessageQueue:(id)a3 lateAcknowledgmentForCriticalOutgoingMessage:(id)a4
{
  v5 = a4;
  +[NSDate timeIntervalSinceReferenceDate];
  v7 = v6;
  v8 = v6 - self->_lastLateCriticalOutgoingMessageAcknowledgmentReconnectTime;
  if (v8 < 0.0 || v8 >= 60.0)
  {
    v10 = [v5 sendInterfaceIdentifier];
    v11 = [(APSUserCourier *)self protocolConnectionEstablisher];
    if ([v11 isAttemptingToReconnect])
    {

      goto LABEL_11;
    }

    v12 = [(APSUserCourier *)self hasConnectedInterfaceForIdentifier:v10];

    if (!v12)
    {
LABEL_11:
      v18 = +[APSLog shouldReduceLogging];
      v19 = +[APSLog courier];
      v20 = v19;
      if (v18)
      {
        if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
        {
          v24 = 138412546;
          v25 = self;
          v26 = 2048;
          v27 = [v5 messageID];
          v21 = v20;
          v22 = OS_LOG_TYPE_DEBUG;
LABEL_16:
          _os_log_impl(&_mh_execute_header, v21, v22, "%@: An acknowledgement for critical outgoing message %lu is late and we are in the middle of a connection attempt - leaving it open.", &v24, 0x16u);
        }
      }

      else if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
      {
        v24 = 138412546;
        v25 = self;
        v26 = 2048;
        v27 = [v5 messageID];
        v21 = v20;
        v22 = OS_LOG_TYPE_DEFAULT;
        goto LABEL_16;
      }

LABEL_22:
      goto LABEL_23;
    }

    v13 = +[APSLog shouldReduceLogging];
    v14 = +[APSLog courier];
    v15 = v14;
    if (v13)
    {
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
      {
        v24 = 138412802;
        v25 = self;
        v26 = 2048;
        v27 = [v5 messageID];
        v28 = 2112;
        v29 = v10;
        v16 = v15;
        v17 = OS_LOG_TYPE_DEBUG;
LABEL_20:
        _os_log_impl(&_mh_execute_header, v16, v17, "%@: Reconnecting because ack for critical outgoing message %lu is late. It was sent over %@.", &v24, 0x20u);
      }
    }

    else if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      v24 = 138412802;
      v25 = self;
      v26 = 2048;
      v27 = [v5 messageID];
      v28 = 2112;
      v29 = v10;
      v16 = v15;
      v17 = OS_LOG_TYPE_DEFAULT;
      goto LABEL_20;
    }

    v23 = [(APSUserCourier *)self connectedInterfaceForIdentifier:v10];
    [v23 noteConnectionFailureWithReason:105];

    self->_lastLateCriticalOutgoingMessageAcknowledgmentReconnectTime = v7;
    goto LABEL_22;
  }

LABEL_23:
}

- (void)outgoingMessageQueueShortMessageTimeoutExceeded:(id)a3
{
  if ([(APSUserCourier *)self countOfConnectedInterface]>= 2)
  {
    v4 = +[APSLog shouldReduceLogging];
    v5 = +[APSLog courier];
    v6 = v5;
    if (v4)
    {
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
      {
        v9 = 138412290;
        v10 = self;
        v7 = v6;
        v8 = OS_LOG_TYPE_DEBUG;
LABEL_7:
        _os_log_impl(&_mh_execute_header, v7, v8, "%@: outgoingMessageQueueShortMessageTimeoutExceeded, disconnecting nonCellular", &v9, 0xCu);
      }
    }

    else if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v9 = 138412290;
      v10 = self;
      v7 = v6;
      v8 = OS_LOG_TYPE_DEFAULT;
      goto LABEL_7;
    }

    [(APSUserCourier *)self enumerateConnectedProtocolConnectionsOfType:1 block:&stru_100187240];
  }
}

- (void)outgoingMessageQueue:(id)a3 requestToSendLowPriorityMessages:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = +[APSLog shouldReduceLogging];
  v9 = +[APSLog courier];
  v10 = v9;
  if (v8)
  {
    if (!os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      goto LABEL_7;
    }

    *buf = 138412802;
    v29 = self;
    v30 = 2112;
    v31 = v6;
    v32 = 2112;
    v33 = v7;
    v11 = v10;
    v12 = OS_LOG_TYPE_DEBUG;
  }

  else
  {
    if (!os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_7;
    }

    *buf = 138412802;
    v29 = self;
    v30 = 2112;
    v31 = v6;
    v32 = 2112;
    v33 = v7;
    v11 = v10;
    v12 = OS_LOG_TYPE_DEFAULT;
  }

  _os_log_impl(&_mh_execute_header, v11, v12, "%@ outgoingMessageQueue %@ requestToSendLowPriorityMessages %@", buf, 0x20u);
LABEL_7:

  if (self->_isConnectedToService)
  {
    v25 = 0u;
    v26 = 0u;
    v23 = 0u;
    v24 = 0u;
    v13 = v7;
    v14 = [v13 countByEnumeratingWithState:&v23 objects:v27 count:16];
    if (v14)
    {
      v15 = v14;
      v16 = *v24;
      do
      {
        for (i = 0; i != v15; i = i + 1)
        {
          if (*v24 != v16)
          {
            objc_enumerationMutation(v13);
          }

          [(APSUserCourier *)self _sendOutgoingMessage:*(*(&v23 + 1) + 8 * i) onProtocolConnection:0, v23];
        }

        v15 = [v13 countByEnumeratingWithState:&v23 objects:v27 count:16];
      }

      while (v15);
    }
  }

  v18 = +[APSLog shouldReduceLogging];
  v19 = +[APSLog courier];
  v20 = v19;
  if (v18)
  {
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412290;
      v29 = self;
      v21 = v20;
      v22 = OS_LOG_TYPE_DEBUG;
LABEL_21:
      _os_log_impl(&_mh_execute_header, v21, v22, "%@ Done sending requested low priority messages.", buf, 0xCu);
    }
  }

  else if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v29 = self;
    v21 = v20;
    v22 = OS_LOG_TYPE_DEFAULT;
    goto LABEL_21;
  }
}

- (void)clientIdentityDidBecomeAvailable
{
  v3 = +[APSLog shouldReduceLogging];
  v4 = +[APSLog courier];
  v5 = v4;
  if (v3)
  {
    if (!os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      goto LABEL_7;
    }

    v10 = 138412290;
    v11 = self;
    v6 = v5;
    v7 = OS_LOG_TYPE_DEBUG;
  }

  else
  {
    if (!os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_7;
    }

    v10 = 138412290;
    v11 = self;
    v6 = v5;
    v7 = OS_LOG_TYPE_DEFAULT;
  }

  _os_log_impl(&_mh_execute_header, v6, v7, "%@: Client identity is available", &v10, 0xCu);
LABEL_7:

  if ([(APSUserCourier *)self _isIdentityAvailable])
  {
    [(APSUserCourier *)self _clearCachedSigNonceCert];
    v8 = [(APSUserCourier *)self protocolConnectionEstablisher];
    [v8 adjustConnectionsIfNeeded];

    v9 = [(APSUserCourier *)self delegate];
    [v9 courierIdentityBecameAvailable:self];
  }
}

- (void)clientIdentityDidBecomeUnavailable
{
  v3 = +[APSLog shouldReduceLogging];
  v4 = +[APSLog courier];
  v5 = v4;
  if (v3)
  {
    if (!os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      goto LABEL_7;
    }

    *v9 = 138412290;
    *&v9[4] = self;
    v6 = v5;
    v7 = OS_LOG_TYPE_DEBUG;
  }

  else
  {
    if (!os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_7;
    }

    *v9 = 138412290;
    *&v9[4] = self;
    v6 = v5;
    v7 = OS_LOG_TYPE_DEFAULT;
  }

  _os_log_impl(&_mh_execute_header, v6, v7, "%@: Client identity is not available", v9, 0xCu);
LABEL_7:

  if (![(APSUserCourier *)self _isIdentityAvailable])
  {
    [(APSUserCourier *)self _clearCachedSigNonceCert];
    v8 = [(APSUserCourier *)self protocolConnectionEstablisher];
    [v8 adjustConnectionsIfNeeded];
  }

  [(APSUserCourier *)self setPublicToken:0 fromServer:1, *v9];
}

- (void)prepareForSleep
{
  v3 = +[APSLog shouldReduceLogging];
  v4 = +[APSLog courier];
  v5 = v4;
  if (v3)
  {
    if (!os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      goto LABEL_7;
    }

    v8 = 138412290;
    v9 = self;
    v6 = v5;
    v7 = OS_LOG_TYPE_DEBUG;
  }

  else
  {
    if (!os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_7;
    }

    v8 = 138412290;
    v9 = self;
    v6 = v5;
    v7 = OS_LOG_TYPE_DEFAULT;
  }

  _os_log_impl(&_mh_execute_header, v6, v7, "%@: prepareForSleep", &v8, 0xCu);
LABEL_7:

  self->_preparingForSleep = 1;
  [(APSWakeMetricTracker *)self->_wakeMetricTracker noteSystemWillSleep];
  self->_firstPushSinceWake = 1;
  if (self->_isConnectedToService)
  {
    [(APSUserCourier *)self _sendActiveStateMessageWithSendAllBlueListMessages:0];
  }
}

- (void)prepareForDarkWake
{
  v3 = +[APSLog shouldReduceLogging];
  v4 = +[APSLog courier];
  v5 = v4;
  if (v3)
  {
    if (!os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      goto LABEL_7;
    }

    v9 = 138412290;
    v10 = self;
    v6 = v5;
    v7 = OS_LOG_TYPE_DEBUG;
  }

  else
  {
    if (!os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_7;
    }

    v9 = 138412290;
    v10 = self;
    v6 = v5;
    v7 = OS_LOG_TYPE_DEFAULT;
  }

  _os_log_impl(&_mh_execute_header, v6, v7, "%@: prepareForDarkWake", &v9, 0xCu);
LABEL_7:

  self->_preparingForSleep = 0;
  +[NSDate timeIntervalSinceReferenceDate];
  self->_startedDarkWake = v8;
  if (self->_isConnectedToService)
  {
    [(APSUserCourier *)self _sendActiveStateMessageWithSendAllBlueListMessages:1];
  }
}

- (void)prepareForFullWake
{
  v3 = +[APSLog shouldReduceLogging];
  v4 = +[APSLog courier];
  v5 = v4;
  if (v3)
  {
    if (!os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      goto LABEL_7;
    }

    v8 = 138412290;
    v9 = self;
    v6 = v5;
    v7 = OS_LOG_TYPE_DEBUG;
  }

  else
  {
    if (!os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_7;
    }

    v8 = 138412290;
    v9 = self;
    v6 = v5;
    v7 = OS_LOG_TYPE_DEFAULT;
  }

  _os_log_impl(&_mh_execute_header, v6, v7, "%@: prepareForFullWake", &v8, 0xCu);
LABEL_7:

  [(APSWakeMetricTracker *)self->_wakeMetricTracker noteSystemDidFullWakeWhileConnected:self->_isConnectedToService];
  self->_preparingForSleep = 0;
  if (self->_isConnectedToService)
  {
    [(APSUserCourier *)self _sendActiveStateMessageWithSendAllBlueListMessages:1];
  }
}

- (void)logout
{
  v3 = [(APSUser *)self->_courierUser name];
  v4 = [APSSystemUser systemUserWithUserID:v3];

  v5 = +[APSLog shouldReduceLogging];
  v6 = +[APSLog courier];
  v7 = v6;
  if (v5)
  {
    if (!os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      goto LABEL_7;
    }

    v8 = [(APSUser *)self->_courierUser name];
    v9 = [(APSEnvironment *)self->_environment name];
    *buf = 138412802;
    v43 = self;
    v44 = 2112;
    v45 = v8;
    v46 = 2112;
    v47 = v9;
    v10 = v7;
    v11 = OS_LOG_TYPE_DEBUG;
  }

  else
  {
    if (!os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_7;
    }

    v8 = [(APSUser *)self->_courierUser name];
    v9 = [(APSEnvironment *)self->_environment name];
    *buf = 138412802;
    v43 = self;
    v44 = 2112;
    v45 = v8;
    v46 = 2112;
    v47 = v9;
    v10 = v7;
    v11 = OS_LOG_TYPE_DEFAULT;
  }

  _os_log_impl(&_mh_execute_header, v10, v11, "%@: Logging out user %@ from %@ environment", buf, 0x20u);

LABEL_7:
  v34 = v4;
  if ([v4 isGuestUser])
  {
    [(APSUserCourier *)self _clearTopicsForGuestUser];
  }

  v12 = [(APSUserCourier *)self connectionServers];
  v13 = [v12 copy];

  v39 = 0u;
  v40 = 0u;
  v37 = 0u;
  v38 = 0u;
  obj = v13;
  v14 = [obj countByEnumeratingWithState:&v37 objects:v41 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v38;
    do
    {
      for (i = 0; i != v15; i = i + 1)
      {
        if (*v38 != v16)
        {
          objc_enumerationMutation(obj);
        }

        v18 = *(*(&v37 + 1) + 8 * i);
        v19 = +[APSLog shouldReduceLogging];
        v20 = +[APSLog courier];
        v21 = v20;
        if (v19)
        {
          if (!os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
          {
            goto LABEL_20;
          }

          v22 = [v18 name];
          *buf = 138412546;
          v43 = self;
          v44 = 2112;
          v45 = v22;
          v23 = v21;
          v24 = OS_LOG_TYPE_DEBUG;
        }

        else
        {
          if (!os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
          {
            goto LABEL_20;
          }

          v22 = [v18 name];
          *buf = 138412546;
          v43 = self;
          v44 = 2112;
          v45 = v22;
          v23 = v21;
          v24 = OS_LOG_TYPE_DEFAULT;
        }

        _os_log_impl(&_mh_execute_header, v23, v24, "%@: Removing connection %@", buf, 0x16u);

LABEL_20:
        [v18 handleConnectionStatusChanged:0];
        [v18 close];
        [(APSUserCourier *)self connectionWasClosed:v18];
      }

      v15 = [obj countByEnumeratingWithState:&v37 objects:v41 count:16];
    }

    while (v15);
  }

  if ([(APSUserCourier *)self overallCourierStatus]== 3)
  {
    v25 = 0;
    v26 = v34;
  }

  else
  {
    v26 = v4;
    if ([(APSUserCourier *)self overallCourierStatus]== 4)
    {
      v25 = 0;
    }

    else
    {
      v36[0] = _NSConcreteStackBlock;
      v36[1] = 3221225472;
      v36[2] = sub_100042EC8;
      v36[3] = &unk_100187000;
      v36[4] = self;
      [(APSUserCourier *)self enumerateConnectedProtocolConnections:v36];
      v25 = 1;
    }
  }

  if ([v26 isGuestUser] && -[APSUserCourier overallCourierStatus](self, "overallCourierStatus") != 3)
  {
    v27 = +[APSLog shouldReduceLogging];
    v28 = +[APSLog courier];
    v29 = v28;
    if (v27)
    {
      if (os_log_type_enabled(v28, OS_LOG_TYPE_DEBUG))
      {
        v30 = [(APSUser *)self->_courierUser name];
        *buf = 138412546;
        v43 = self;
        v44 = 2112;
        v45 = v30;
        v31 = v29;
        v32 = OS_LOG_TYPE_DEBUG;
LABEL_34:
        _os_log_impl(&_mh_execute_header, v31, v32, "%@: Removing obsolete token for logging out guest user %@", buf, 0x16u);
      }
    }

    else if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
    {
      v30 = [(APSUser *)self->_courierUser name];
      *buf = 138412546;
      v43 = self;
      v44 = 2112;
      v45 = v30;
      v31 = v29;
      v32 = OS_LOG_TYPE_DEFAULT;
      goto LABEL_34;
    }

    [(APSUserCourier *)self setPublicToken:0 fromServer:1];
  }

  if (v25)
  {
    v33 = [(APSUserCourier *)self protocolConnectionEstablisher];
    [v33 adjustConnectionsIfNeeded];
  }
}

- (void)flush
{
  [(APSUserCourier *)self setPublicToken:0 fromServer:1];
  v3 = &fputc_ptr;
  v4 = +[APSLog shouldReduceLogging];
  v5 = +[APSLog courier];
  v6 = v5;
  if (v4)
  {
    if (!os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      goto LABEL_7;
    }

    v7 = [(APSUser *)self->_courierUser name];
    *buf = 138412546;
    v29 = self;
    v30 = 2112;
    v31 = v7;
    v8 = v6;
    v9 = OS_LOG_TYPE_DEBUG;
  }

  else
  {
    if (!os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_7;
    }

    v7 = [(APSUser *)self->_courierUser name];
    *buf = 138412546;
    v29 = self;
    v30 = 2112;
    v31 = v7;
    v8 = v6;
    v9 = OS_LOG_TYPE_DEFAULT;
  }

  _os_log_impl(&_mh_execute_header, v8, v9, "%@: Flushing user %@", buf, 0x16u);

LABEL_7:
  v10 = [(APSUserCourier *)self connectionServers];
  v11 = [v10 copy];

  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  v12 = v11;
  v13 = [v12 countByEnumeratingWithState:&v24 objects:v36 count:16];
  if (v13)
  {
    v15 = v13;
    v16 = *v25;
    *&v14 = 138413058;
    v23 = v14;
    do
    {
      v17 = 0;
      do
      {
        if (*v25 != v16)
        {
          objc_enumerationMutation(v12);
        }

        v18 = *(*(&v24 + 1) + 8 * v17);
        v19 = [v3[414] courier];
        if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
        {
          v20 = [v18 connectionPortName];
          v21 = [v18 processName];
          v22 = [(APSUser *)self->_courierUser name];
          *buf = v23;
          v29 = self;
          v30 = 2112;
          v31 = v20;
          v32 = 2112;
          v33 = v21;
          v34 = 2112;
          v35 = v22;
          _os_log_error_impl(&_mh_execute_header, v19, OS_LOG_TYPE_ERROR, "%@: Encountered unexpected connection %@/%@ for user %@", buf, 0x2Au);

          v3 = &fputc_ptr;
        }

        [v18 handleConnectionStatusChanged:0];
        [v18 close];
        [(APSUserCourier *)self connectionWasClosed:v18];
        v17 = v17 + 1;
      }

      while (v15 != v17);
      v15 = [v12 countByEnumeratingWithState:&v24 objects:v36 count:16];
    }

    while (v15);
  }
}

- (void)_clearTopicsForGuestUser
{
  v3 = +[NSSet set];
  v4 = +[APSLog shouldReduceLogging];
  v5 = +[APSLog courier];
  v6 = v5;
  if (v4)
  {
    if (!os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      goto LABEL_7;
    }

    v7 = [(APSUser *)self->_courierUser name];
    *buf = 138412546;
    v21 = self;
    v22 = 2112;
    v23 = v7;
    v8 = v6;
    v9 = OS_LOG_TYPE_DEBUG;
  }

  else
  {
    if (!os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_7;
    }

    v7 = [(APSUser *)self->_courierUser name];
    *buf = 138412546;
    v21 = self;
    v22 = 2112;
    v23 = v7;
    v8 = v6;
    v9 = OS_LOG_TYPE_DEFAULT;
  }

  _os_log_impl(&_mh_execute_header, v8, v9, "%@: Removing obsolete topics for guest user %@", buf, 0x16u);

LABEL_7:
  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v10 = [(APSUserCourier *)self connectionServers];
  v11 = [v10 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v16;
    do
    {
      for (i = 0; i != v12; i = i + 1)
      {
        if (*v16 != v13)
        {
          objc_enumerationMutation(v10);
        }

        [*(*(&v15 + 1) + 8 * i) setEnabledTopics:v3 ignoredTopics:v3 opportunisticTopics:v3 nonWakingTopics:v3];
      }

      v12 = [v10 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v12);
  }

  [(APSTopicManager *)self->_topicManager removeAllTopics];
  [(APSUserCourier *)self _requestToSendFilterOnTopicManager:self->_topicManager change:0];
}

- (void)_useInteractivePowerAssertionIfNeededForConnectionServer:(id)a3 withReason:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (![(APSUserCourier *)self isIdle]&& [(APSUserCourier *)self _isInteractivePushDuringSleepEnabledForConnectionServer:v6])
  {
    v8 = +[APSLog shouldReduceLogging];
    v9 = +[APSLog courier];
    v10 = v9;
    if (v8)
    {
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
      {
        v13 = 138412802;
        v14 = self;
        v15 = 2112;
        v16 = v7;
        v17 = 2112;
        v18 = v6;
        v11 = v10;
        v12 = OS_LOG_TYPE_DEBUG;
LABEL_8:
        _os_log_impl(&_mh_execute_header, v11, v12, "%@: Enabling interactive power assertions due to %@ connection %@", &v13, 0x20u);
      }
    }

    else if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v13 = 138412802;
      v14 = self;
      v15 = 2112;
      v16 = v7;
      v17 = 2112;
      v18 = v6;
      v11 = v10;
      v12 = OS_LOG_TYPE_DEFAULT;
      goto LABEL_8;
    }

    [APSNoOpPowerAssertion setUseInteractivePowerAssertion:1];
  }
}

- (void)_tryConnectingOrDisconnectingTokens
{
  if ([(APSUserCourier *)self isConnectableRightNow])
  {
    v3[0] = _NSConcreteStackBlock;
    v3[1] = 3221225472;
    v3[2] = sub_1000435D8;
    v3[3] = &unk_100187000;
    v3[4] = self;
    [(APSUserCourier *)self enumerateConnectedProtocolConnections:v3];
  }
}

- (int64_t)countOfConnectedInterface
{
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v2 = [(APSUserCourier *)self protocolConnectionByIdentifier];
  v3 = [v2 allValues];

  v4 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = 0;
    v7 = *v11;
    do
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v11 != v7)
        {
          objc_enumerationMutation(v3);
        }

        v6 += [*(*(&v10 + 1) + 8 * i) isConnected];
      }

      v5 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v5);
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (BOOL)hasConnectedInterface
{
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v2 = [(APSUserCourier *)self protocolConnectionByIdentifier];
  v3 = [v2 allValues];

  v4 = [v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v4)
  {
    v5 = *v9;
    while (2)
    {
      for (i = 0; i != v4; i = i + 1)
      {
        if (*v9 != v5)
        {
          objc_enumerationMutation(v3);
        }

        if ([*(*(&v8 + 1) + 8 * i) isConnected])
        {
          LOBYTE(v4) = 1;
          goto LABEL_11;
        }
      }

      v4 = [v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
      if (v4)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v4;
}

- (BOOL)hasProtocolConnectionInterfaceOfType:(int64_t)a3
{
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v4 = [(APSUserCourier *)self protocolConnectionByIdentifier];
  v5 = [v4 allValues];

  v6 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v13;
    while (2)
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v13 != v8)
        {
          objc_enumerationMutation(v5);
        }

        if ([*(*(&v12 + 1) + 8 * i) connectionType] == a3)
        {
          v10 = 1;
          goto LABEL_11;
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

  v10 = 0;
LABEL_11:

  return v10;
}

- (BOOL)hasConnectedInterfaceOfType:(int64_t)a3
{
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v4 = [(APSUserCourier *)self protocolConnectionByIdentifier];
  v5 = [v4 allValues];

  v6 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v14;
    while (2)
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v14 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v13 + 1) + 8 * i);
        if ([v10 isConnected] && objc_msgSend(v10, "connectionType") == a3)
        {
          v11 = 1;
          goto LABEL_12;
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

  v11 = 0;
LABEL_12:

  return v11;
}

- (BOOL)hasConnectedInterfaceForIdentifier:(id)a3
{
  v4 = a3;
  v5 = [(APSUserCourier *)self protocolConnectionByIdentifier];
  v6 = [v5 objectForKeyedSubscript:v4];

  return v6 != 0;
}

- (id)connectedInterfaceForIdentifier:(id)a3
{
  v4 = a3;
  v5 = [(APSUserCourier *)self protocolConnectionByIdentifier];
  v6 = [v5 objectForKeyedSubscript:v4];

  return v6;
}

- (void)enumerateAllProtocolConnections:(id)a3
{
  v4 = a3;
  v15 = 0;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v5 = [(APSUserCourier *)self protocolConnectionByIdentifier];
  v6 = [v5 allValues];

  v7 = [v6 countByEnumeratingWithState:&v11 objects:v16 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v12;
LABEL_3:
    v10 = 0;
    while (1)
    {
      if (*v12 != v9)
      {
        objc_enumerationMutation(v6);
      }

      v4[2](v4, *(*(&v11 + 1) + 8 * v10), &v15);
      if (v15)
      {
        break;
      }

      if (v8 == ++v10)
      {
        v8 = [v6 countByEnumeratingWithState:&v11 objects:v16 count:16];
        if (v8)
        {
          goto LABEL_3;
        }

        break;
      }
    }
  }
}

- (void)enumerateConnectedProtocolConnections:(id)a3
{
  v4 = a3;
  v16 = 0;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v5 = [(APSUserCourier *)self protocolConnectionByIdentifier];
  v6 = [v5 allValues];

  v7 = [v6 countByEnumeratingWithState:&v12 objects:v17 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v13;
LABEL_3:
    v10 = 0;
    while (1)
    {
      if (*v13 != v9)
      {
        objc_enumerationMutation(v6);
      }

      v11 = *(*(&v12 + 1) + 8 * v10);
      if ([v11 isConnected])
      {
        v4[2](v4, v11, &v16);
        if (v16)
        {
          break;
        }
      }

      if (v8 == ++v10)
      {
        v8 = [v6 countByEnumeratingWithState:&v12 objects:v17 count:16];
        if (v8)
        {
          goto LABEL_3;
        }

        break;
      }
    }
  }
}

- (void)enumerateConnectedProtocolConnectionsOfType:(int64_t)a3 block:(id)a4
{
  v6 = a4;
  v18 = 0;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v7 = [(APSUserCourier *)self protocolConnectionByIdentifier];
  v8 = [v7 allValues];

  v9 = [v8 countByEnumeratingWithState:&v14 objects:v19 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v15;
LABEL_3:
    v12 = 0;
    while (1)
    {
      if (*v15 != v11)
      {
        objc_enumerationMutation(v8);
      }

      v13 = *(*(&v14 + 1) + 8 * v12);
      if ([v13 isConnected])
      {
        if ([v13 connectionType] == a3)
        {
          v6[2](v6, v13, &v18);
          if (v18)
          {
            break;
          }
        }
      }

      if (v10 == ++v12)
      {
        v10 = [v8 countByEnumeratingWithState:&v14 objects:v19 count:16];
        if (v10)
        {
          goto LABEL_3;
        }

        break;
      }
    }
  }
}

- (void)beginTrackingProtocolConnection:(id)a3
{
  v4 = a3;
  v5 = [(APSUserCourier *)self protocolConnectionByIdentifier];
  v6 = [v4 identifier];
  v7 = [v5 objectForKeyedSubscript:v6];

  if (v7)
  {
    [(APSUserCourier *)self _disconnectTokenWithReason:1000 onProtocolConnection:v4];
    v8 = +[APSLog shouldReduceLogging];
    v9 = +[APSLog courier];
    v10 = v9;
    if (v8)
    {
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
      {
        v21 = 138412546;
        v22 = self;
        v23 = 2112;
        v24 = v4;
        v11 = "%@ begin tracking protocol connection, clearing previous state %@";
LABEL_8:
        v14 = v10;
        v15 = OS_LOG_TYPE_DEBUG;
LABEL_14:
        _os_log_impl(&_mh_execute_header, v14, v15, v11, &v21, 0x16u);
        goto LABEL_15;
      }

      goto LABEL_15;
    }

    if (!os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_15;
    }

    v21 = 138412546;
    v22 = self;
    v23 = 2112;
    v24 = v4;
    v11 = "%@ begin tracking protocol connection, clearing previous state %@";
LABEL_13:
    v14 = v10;
    v15 = OS_LOG_TYPE_DEFAULT;
    goto LABEL_14;
  }

  v12 = +[APSLog shouldReduceLogging];
  v13 = +[APSLog courier];
  v10 = v13;
  if (!v12)
  {
    if (!os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_15;
    }

    v21 = 138412546;
    v22 = self;
    v23 = 2112;
    v24 = v4;
    v11 = "%@ begin tracking protocol connection %@";
    goto LABEL_13;
  }

  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
  {
    v21 = 138412546;
    v22 = self;
    v23 = 2112;
    v24 = v4;
    v11 = "%@ begin tracking protocol connection %@";
    goto LABEL_8;
  }

LABEL_15:

  v16 = [(APSUserCourier *)self protocolConnectionByIdentifier];
  v17 = [v4 identifier];
  [v16 setObject:v4 forKeyedSubscript:v17];

  v18 = objc_alloc_init(APSUserCourierInterfaceState);
  v19 = [(APSUserCourier *)self stateByConnectionIdentifier];
  v20 = [v4 identifier];
  [v19 setObject:v18 forKeyedSubscript:v20];

  [(APSUserCourier *)self logStateWithReason:0];
  [v4 addDataListener:self];
  [v4 addStateListener:self];
  [(APSUserCourier *)self _sendPresenceMessageOnProtocolConnection:v4 serverTime:0];
  [(APSUserCourier *)self _processShouldUseInternetChangeIfNecessary];
}

- (id)stateForProtocolConnection:(id)a3
{
  v4 = a3;
  v5 = [(APSUserCourier *)self stateByConnectionIdentifier];
  v6 = [v4 identifier];

  v7 = [v5 objectForKeyedSubscript:v6];

  return v7;
}

- (void)didRecoverFromSuspensionOnProtocolConnection:(id)a3
{
  v4 = a3;
  [(APSUserCourier *)self _sendQueuedOutgoingMessages];
  [(APSUserCourier *)self _adjustIsConnectedToService];
  [(APSUserCourier *)self _sendFilterMessageOnProtocolConnection:v4 withReason:5];
}

- (void)didSuspendProtocolConnection:(id)a3
{
  v8 = a3;
  if (![v8 connectionType] && (objc_msgSend(v8, "isSuspended") & 1) == 0)
  {
    outgoingMessageQueue = self->_outgoingMessageQueue;
    v5 = [v8 identifier];
    [(APSOutgoingMessageQueue *)outgoingMessageQueue handleConnectionClosedOnInterface:v5];

    tokenRequestQueue = self->_tokenRequestQueue;
    v7 = [v8 identifier];
    [(APSOutgoingQueue *)tokenRequestQueue handleConnectionClosedOnInterface:v7];
  }
}

- (void)outgoingDataAboutToSendForProtocolConnection:(id)a3
{
  v4 = a3;
  v5 = +[APSLog courier];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    sub_100108FA8();
  }

  v6 = [(APSUserCourier *)self locallyDisabledFilterOptimization];
  if (v4 && (v6 & 1) == 0)
  {
    v7 = [(APSUserCourier *)self hasOutOfDateFilterOnProtocolConnection:v4];
    v8 = [(APSUserCourier *)self filterVersionStateMachine];
    v9 = [v4 identifier];
    if (([v8 everSentFilterOn:v9] & 1) == 0)
    {

LABEL_18:
      v41 = 0u;
      v42 = 0u;
      v39 = 0u;
      v40 = 0u;
      v37 = self;
      obj = [(NSMutableDictionary *)self->_proxyClients allValues];
      v18 = [obj countByEnumeratingWithState:&v39 objects:v49 count:16];
      if (!v18)
      {
        goto LABEL_35;
      }

      v20 = v18;
      v21 = *v40;
      *&v19 = 138412802;
      v36 = v19;
      while (1)
      {
        for (i = 0; i != v20; i = i + 1)
        {
          if (*v40 != v21)
          {
            objc_enumerationMutation(obj);
          }

          v23 = *(*(&v39 + 1) + 8 * i);
          v24 = [v23 filterVersionStateMachine];
          v25 = [v4 identifier];
          v26 = [v24 isOutOfDateOn:v25];

          v27 = [v23 filterVersionStateMachine];
          v28 = [v4 identifier];
          if (([v27 everSentFilterOn:v28] & 1) == 0)
          {

            continue;
          }

          v29 = [v4 identifier];
          v30 = [v23 isConnectedOnInterface:v29];

          if ((v26 & v30) != 1)
          {
            continue;
          }

          v31 = +[APSLog shouldReduceLogging];
          v32 = +[APSLog courier];
          v33 = v32;
          if (v31)
          {
            if (os_log_type_enabled(v32, OS_LOG_TYPE_DEBUG))
            {
              *buf = v36;
              v44 = v37;
              v45 = 2112;
              v46 = v23;
              v47 = 2114;
              v48 = v4;
              v34 = v33;
              v35 = OS_LOG_TYPE_DEBUG;
LABEL_31:
              _os_log_impl(&_mh_execute_header, v34, v35, "%@: Client %@ has out of date filter, send now on %{public}@", buf, 0x20u);
            }
          }

          else if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
          {
            *buf = v36;
            v44 = v37;
            v45 = 2112;
            v46 = v23;
            v47 = 2114;
            v48 = v4;
            v34 = v33;
            v35 = OS_LOG_TYPE_DEFAULT;
            goto LABEL_31;
          }

          [(APSUserCourier *)v37 _sendClientFilter:v23 onProtocolConnection:v4];
        }

        v20 = [obj countByEnumeratingWithState:&v39 objects:v49 count:16];
        if (!v20)
        {
LABEL_35:

          goto LABEL_36;
        }
      }
    }

    v10 = [(APSUserCourier *)self stateForProtocolConnection:v4];
    v11 = [v10 userState];

    if (v11)
    {
      v12 = 0;
    }

    else
    {
      v12 = v7;
    }

    if (v12 != 1)
    {
      goto LABEL_18;
    }

    v13 = +[APSLog shouldReduceLogging];
    v14 = +[APSLog courier];
    v15 = v14;
    if (v13)
    {
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412546;
        v44 = self;
        v45 = 2114;
        v46 = v4;
        v16 = v15;
        v17 = OS_LOG_TYPE_DEBUG;
LABEL_16:
        _os_log_impl(&_mh_execute_header, v16, v17, "%@: Out of date filter, send now on %{public}@", buf, 0x16u);
      }
    }

    else if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v44 = self;
      v45 = 2114;
      v46 = v4;
      v16 = v15;
      v17 = OS_LOG_TYPE_DEFAULT;
      goto LABEL_16;
    }

    [(APSUserCourier *)self _sendFilterMessageOnProtocolConnection:v4 withReason:4];
    goto LABEL_18;
  }

LABEL_36:
}

- (BOOL)shouldHandleIncomingPush:(id)a3 forProtocolConnection:(id)a4
{
  v6 = a3;
  v7 = a4;
  v41[0] = @"APSProtocolToken";
  v41[1] = @"APSProtocolPubSubToken";
  v41[2] = @"APSProtocolPubSubUpdateToken";
  [NSArray arrayWithObjects:v41 count:3];
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  v8 = v39 = 0u;
  v9 = [v8 countByEnumeratingWithState:&v36 objects:v40 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v37;
    while (2)
    {
      for (i = 0; i != v10; i = i + 1)
      {
        if (*v37 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = [v6 objectForKey:*(*(&v36 + 1) + 8 * i)];
        if (v13)
        {
          v14 = v13;
          goto LABEL_11;
        }
      }

      v10 = [v8 countByEnumeratingWithState:&v36 objects:v40 count:16];
      if (v10)
      {
        continue;
      }

      break;
    }
  }

  v14 = 0;
LABEL_11:

  v15 = [v6 objectForKey:@"APSProtocolBaseToken"];
  v16 = v15;
  if (v15)
  {
    v17 = v15;
  }

  else
  {
    v17 = v14;
  }

  v18 = v17;
  v19 = [(APSUserCourier *)self _getCurrentTokens];
  v20 = v19;
  v34 = v7;
  if (v16 && ![v19 containsObject:{v16, v7}])
  {
    goto LABEL_19;
  }

  if (!v14)
  {
    v25 = 0;
    v26 = 0;
    v27 = 0;
    goto LABEL_30;
  }

  if ([v20 containsObject:v14])
  {
    v21 = 0;
  }

  else
  {
LABEL_19:
    v22 = [(APSUserCourier *)self _findConnectedClientWithToken:v18 onProtocolConnection:v7, v34];
    v23 = v22;
    if (v22)
    {
      v24 = v22;
    }

    else
    {
      v24 = [(APSUserCourier *)self _findClientWithToken:v18];
    }

    v21 = v24;

    if (!v14)
    {
      v27 = 0;
      v26 = 0;
      v25 = 0;
      if (v21)
      {
        goto LABEL_28;
      }

      goto LABEL_30;
    }
  }

  if ([v20 containsObject:{v14, v34}])
  {
    v26 = 0;
    v25 = 0;
    v27 = 1;
    if (!v21)
    {
      goto LABEL_30;
    }

LABEL_28:
    v30 = 1;
    goto LABEL_35;
  }

  tokenStore = self->_tokenStore;
  v29 = [(APSUserCourier *)self courierUser];
  v35 = 0;
  v25 = [(APSTokenStore *)tokenStore isMatchingTokenInKeychain:v14 user:v29 error:&v35];
  v26 = v35;

  v27 = 0;
  if (v21)
  {
    goto LABEL_28;
  }

LABEL_30:
  v21 = 0;
  v30 = 1;
  if ((v27 & 1) == 0 && (v25 & 1) == 0)
  {
    v31 = [v6 objectForKey:@"APSProtocolTopicHash"];
    v32 = +[APSLog courier];
    if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
    {
      sub_10010901C();
    }

    v21 = 0;
    v30 = 0;
  }

LABEL_35:

  return v30;
}

- (void)protocolConnection:(id)a3 receivedFilterUpdateWithParameters:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([(APSUserCourier *)self locallyDisabledFilterOptimization])
  {
    v8 = +[APSLog courier];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      sub_1001090CC();
    }

    goto LABEL_50;
  }

  if ([(APSUserCourier *)self expectsResponseForFilterMessageOnProtocolConnection:v6])
  {
    v8 = [v7 objectForKeyedSubscript:@"APSProtocolFilterUpdateTokenKey"];
    v9 = [(APSUserCourier *)self _getCurrentTokens];
    v10 = v9;
    v44 = v9;
    if (v8 && ([v9 containsObject:v8] & 1) != 0)
    {
      v11 = 0;
    }

    else
    {
      v12 = [(APSUserCourier *)self _findConnectedClientWithToken:v8 onProtocolConnection:v6];
      if (!v12)
      {
        v12 = [(APSUserCourier *)self _findClientWithToken:v8];
        if (!v12)
        {
          v34 = +[APSLog shouldReduceLogging];
          v35 = +[APSLog courier];
          v11 = v35;
          if (v34)
          {
            if (!os_log_type_enabled(v35, OS_LOG_TYPE_DEBUG))
            {
              goto LABEL_49;
            }

            proxyClients = self->_proxyClients;
            *buf = 138413058;
            v46 = self;
            v47 = 2112;
            v48 = v8;
            v49 = 2112;
            v50 = v10;
            v51 = 2112;
            v52 = proxyClients;
            p_super = &v11->super;
            v38 = OS_LOG_TYPE_DEBUG;
          }

          else
          {
            if (!os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
            {
              goto LABEL_49;
            }

            v43 = self->_proxyClients;
            *buf = 138413058;
            v46 = self;
            v47 = 2112;
            v48 = v8;
            v49 = 2112;
            v50 = v10;
            v51 = 2112;
            v52 = v43;
            p_super = &v11->super;
            v38 = OS_LOG_TYPE_DEFAULT;
          }

          _os_log_impl(&_mh_execute_header, p_super, v38, "%@ Filter update not for this user -- ignoring {pushToken: %@, pushTokens: %@, clients: %@}", buf, 0x2Au);
          goto LABEL_49;
        }
      }

      v11 = v12;
    }

    v13 = [v7 objectForKey:@"APSProtocolFilterUpdateVersionKey"];
    v14 = [v13 integerValue];

    v15 = [v7 objectForKey:@"APSProtocolFilterUpdateStatusKey"];
    v16 = [v15 integerValue];

    v17 = +[APSLog shouldReduceLogging];
    v18 = +[APSLog courier];
    v19 = v18;
    if (v17)
    {
      if (!os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
      {
        goto LABEL_19;
      }

      *buf = 138413058;
      v46 = v6;
      v47 = 2112;
      v48 = v8;
      v49 = 2048;
      v50 = v14;
      v51 = 2048;
      v52 = v16;
      v20 = v19;
      v21 = OS_LOG_TYPE_DEBUG;
    }

    else
    {
      if (!os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_19;
      }

      *buf = 138413058;
      v46 = v6;
      v47 = 2112;
      v48 = v8;
      v49 = 2048;
      v50 = v14;
      v51 = 2048;
      v52 = v16;
      v20 = v19;
      v21 = OS_LOG_TYPE_DEFAULT;
    }

    _os_log_impl(&_mh_execute_header, v20, v21, "Received server filter update message on protocolConnection: %@  { token: %@ server version: %ld status: %ld }", buf, 0x2Au);
LABEL_19:

    v22 = +[APSLog shouldReduceLogging];
    v23 = +[APSLog courier];
    v24 = v23;
    if (v16 != 2)
    {
      if (v16 == 1)
      {
        if (v22)
        {
          v10 = v44;
          if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
          {
            *buf = 0;
            v25 = v24;
            v26 = OS_LOG_TYPE_DEBUG;
LABEL_32:
            _os_log_impl(&_mh_execute_header, v25, v26, "Received filter update status disabled from server - disabling filter optimization on device.", buf, 2u);
          }
        }

        else
        {
          v10 = v44;
          if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            v25 = v24;
            v26 = OS_LOG_TYPE_DEFAULT;
            goto LABEL_32;
          }
        }

        if (!v11)
        {
          v11 = [(APSUserCourier *)self stateForProtocolConnection:v6];
          [(APSUserCourier *)v11 setFilterMode:2];
          goto LABEL_49;
        }

        v31 = [(APSUserCourier *)v6 identifier];
        [(APSUserCourier *)v11 setFilterMode:2 onInterface:v31];
LABEL_35:

LABEL_49:
        goto LABEL_50;
      }

      if (v22)
      {
        if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
        {
          *buf = 134217984;
          v46 = v16;
          v29 = v24;
          v30 = OS_LOG_TYPE_DEBUG;
LABEL_44:
          _os_log_impl(&_mh_execute_header, v29, v30, "Received unknown status from server (%ld).", buf, 0xCu);
        }
      }

      else if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134217984;
        v46 = v16;
        v29 = v24;
        v30 = OS_LOG_TYPE_DEFAULT;
        goto LABEL_44;
      }

      goto LABEL_48;
    }

    if (v22)
    {
      if (!os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
      {
        goto LABEL_39;
      }

      *buf = 0;
      v27 = v24;
      v28 = OS_LOG_TYPE_DEBUG;
    }

    else
    {
      if (!os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_39;
      }

      *buf = 0;
      v27 = v24;
      v28 = OS_LOG_TYPE_DEFAULT;
    }

    _os_log_impl(&_mh_execute_header, v27, v28, "Received filter update resend filter request from server - resending filters.", buf, 2u);
LABEL_39:

    if (v11)
    {
      v32 = [(APSUserCourier *)v6 identifier];
      v33 = [(APSUserCourier *)v11 stateOnInterface:v32];

      if (v33 != 2)
      {
        v39 = +[APSLog shouldReduceLogging];
        v40 = +[APSLog courier];
        v31 = v40;
        if (v39)
        {
          v10 = v44;
          if (!os_log_type_enabled(v40, OS_LOG_TYPE_DEBUG))
          {
            goto LABEL_35;
          }

          *buf = 138412290;
          v46 = v11;
          v41 = v31;
          v42 = OS_LOG_TYPE_DEBUG;
        }

        else
        {
          v10 = v44;
          if (!os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
          {
            goto LABEL_35;
          }

          *buf = 138412290;
          v46 = v11;
          v41 = v31;
          v42 = OS_LOG_TYPE_DEFAULT;
        }

        _os_log_impl(&_mh_execute_header, v41, v42, "Received filter update resend filter request from server for disconnected client - ignoring {destinationClient: %@}", buf, 0xCu);
        goto LABEL_35;
      }

      [(APSUserCourier *)self _sendClientFilter:v11 onProtocolConnection:v6];
    }

    else
    {
      v11 = [(APSUserCourier *)self preferredProtocolConnection];
      [(APSUserCourier *)self _sendFilterMessageOnProtocolConnection:v11 withReason:6];
    }

LABEL_48:
    v10 = v44;
    goto LABEL_49;
  }

  v8 = +[APSLog courier];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
  {
    sub_10010908C();
  }

LABEL_50:
}

- (void)receivedFilterResponseWithParameters:(id)a3 onProtocolConnection:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [v7 objectForKeyedSubscript:@"APSProtocolFilterResponseTokenKey"];
  v9 = [v7 objectForKey:@"APSProtocolFilterResponseVersionKey"];
  v71 = [v9 integerValue];

  v10 = [v7 objectForKey:@"APSProtocolFilterResponseStatusKey"];

  v11 = [v10 integerValue];
  v12 = [(APSUserCourier *)self debugOverrides];
  v13 = [v12 overrideFilterDisableResponseForConnectionType:{objc_msgSend(v6, "connectionType")}];

  v14 = +[APSLog shouldReduceLogging];
  v15 = +[APSLog courier];
  v16 = v15;
  if (!v13)
  {
    if (v14)
    {
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138413314;
        v73 = self;
        v74 = 2112;
        v75 = v6;
        v76 = 2112;
        v77 = v8;
        v78 = 2048;
        v79 = v71;
        v80 = 2048;
        v81 = v11;
        v19 = v16;
        v20 = OS_LOG_TYPE_DEBUG;
LABEL_14:
        _os_log_impl(&_mh_execute_header, v19, v20, "%@ Received filter response message on protocolConnection: %@  { token: %@, version: %ld, status: %ld }", buf, 0x34u);
      }
    }

    else if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138413314;
      v73 = self;
      v74 = 2112;
      v75 = v6;
      v76 = 2112;
      v77 = v8;
      v78 = 2048;
      v79 = v71;
      v80 = 2048;
      v81 = v11;
      v19 = v16;
      v20 = OS_LOG_TYPE_DEFAULT;
      goto LABEL_14;
    }

    goto LABEL_16;
  }

  if (v14)
  {
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138413570;
      v73 = self;
      v74 = 2112;
      v75 = v6;
      v76 = 2112;
      v77 = v8;
      v78 = 2048;
      v79 = v71;
      v80 = 2048;
      v81 = v11;
      v82 = 2048;
      v83 = [v13 integerValue];
      v17 = v16;
      v18 = OS_LOG_TYPE_DEBUG;
LABEL_10:
      _os_log_impl(&_mh_execute_header, v17, v18, "%@ Received filter response message on protocolConnection: %@ -- overriding  { token: %@, version: %ld, status: %ld, overrideStatus: %ld}", buf, 0x3Eu);
    }
  }

  else if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138413570;
    v73 = self;
    v74 = 2112;
    v75 = v6;
    v76 = 2112;
    v77 = v8;
    v78 = 2048;
    v79 = v71;
    v80 = 2048;
    v81 = v11;
    v82 = 2048;
    v83 = [v13 integerValue];
    v17 = v16;
    v18 = OS_LOG_TYPE_DEFAULT;
    goto LABEL_10;
  }

  v11 = [v13 integerValue];
LABEL_16:
  v21 = [(APSUserCourier *)self _getCurrentTokens];
  v22 = v21;
  if (v8 && ([v21 containsObject:v8] & 1) != 0)
  {
    v23 = v22;
    v24 = v8;
    v25 = v13;
    v26 = [(APSUserCourier *)self filterVersionStateMachine];
    v27 = 0;
    v70 = 1;
    goto LABEL_22;
  }

  v28 = [(APSUserCourier *)self _findConnectedClientWithToken:v8 onProtocolConnection:v6];
  if (v28 || ([(APSUserCourier *)self _findClientWithToken:v8], (v28 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v23 = v22;
    v24 = v8;
    v25 = v13;
    v27 = v28;
    v26 = [v28 filterVersionStateMachine];
    v70 = 0;
LABEL_22:
    v29 = v6;
    v30 = [v6 identifier];
    [v26 noteAckedWithVersion:v71 on:v30];

    if (v11 <= 2)
    {
      v13 = v25;
      if (v11 != 1)
      {
        v8 = v24;
        v6 = v29;
        if (v11 == 2)
        {
          v31 = +[APSLog shouldReduceLogging];
          v32 = +[APSLog courier];
          v33 = v32;
          v22 = v23;
          v34 = v27;
          if (v31)
          {
            if (os_log_type_enabled(v32, OS_LOG_TYPE_DEBUG))
            {
              *buf = 0;
              v35 = "Received filter response status failure from server - this shouldn't happen.";
              p_super = &v33->super;
              v37 = OS_LOG_TYPE_DEBUG;
LABEL_51:
              v61 = 2;
              goto LABEL_52;
            }
          }

          else if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            v35 = "Received filter response status failure from server - this shouldn't happen.";
            p_super = &v33->super;
            v37 = OS_LOG_TYPE_DEFAULT;
            goto LABEL_51;
          }

LABEL_82:

          goto LABEL_83;
        }

LABEL_34:
        v44 = +[APSLog shouldReduceLogging];
        v45 = +[APSLog courier];
        v33 = v45;
        v22 = v23;
        v34 = v27;
        if (v44)
        {
          if (!os_log_type_enabled(v45, OS_LOG_TYPE_DEBUG))
          {
            goto LABEL_82;
          }

          *buf = 134217984;
          v73 = v11;
          v35 = "Received unknown status from server (%ld).";
          p_super = &v33->super;
          v37 = OS_LOG_TYPE_DEBUG;
        }

        else
        {
          if (!os_log_type_enabled(v45, OS_LOG_TYPE_DEFAULT))
          {
            goto LABEL_82;
          }

          *buf = 134217984;
          v73 = v11;
          v35 = "Received unknown status from server (%ld).";
          p_super = &v33->super;
          v37 = OS_LOG_TYPE_DEFAULT;
        }

        v61 = 12;
LABEL_52:
        _os_log_impl(&_mh_execute_header, p_super, v37, v35, buf, v61);
        goto LABEL_82;
      }

      v46 = +[APSLog shouldReduceLogging];
      v47 = +[APSLog courier];
      v48 = v47;
      v8 = v24;
      v6 = v29;
      if (v46)
      {
        v22 = v23;
        v34 = v27;
        if (os_log_type_enabled(v47, OS_LOG_TYPE_DEBUG))
        {
          *buf = 0;
          v49 = v48;
          v50 = OS_LOG_TYPE_DEBUG;
LABEL_55:
          _os_log_impl(&_mh_execute_header, v49, v50, "Received filter response status success from server.", buf, 2u);
        }
      }

      else
      {
        v22 = v23;
        v34 = v27;
        if (os_log_type_enabled(v47, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          v49 = v48;
          v50 = OS_LOG_TYPE_DEFAULT;
          goto LABEL_55;
        }
      }

      if (v70)
      {
        v62 = [(APSUserCourier *)self stateForProtocolConnection:v29];
        v63 = v62;
        v64 = 1;
LABEL_63:
        [v62 setFilterMode:v64];
LABEL_67:

        goto LABEL_83;
      }

      v63 = [v29 identifier];
      v65 = v34;
      v66 = 1;
      goto LABEL_66;
    }

    v13 = v25;
    if (v11 != 3)
    {
      v8 = v24;
      v6 = v29;
      if (v11 != 4)
      {
        goto LABEL_34;
      }

      v38 = [(APSUserCourier *)self filterVersionStateMachine];
      v33 = [v38 noteInvalidWithVersion:v71];

      v39 = +[APSLog shouldReduceLogging];
      v40 = +[APSLog courier];
      v41 = v40;
      v22 = v23;
      v34 = v27;
      if (v33)
      {
        if (v39)
        {
          if (os_log_type_enabled(v40, OS_LOG_TYPE_DEBUG))
          {
            *buf = 138412290;
            v73 = v33;
            v42 = v41;
            v43 = OS_LOG_TYPE_DEBUG;
LABEL_73:
            _os_log_impl(&_mh_execute_header, v42, v43, "Received filter response status invalid version from server - failed incrementing, disconnecting. {invalidError: %@}", buf, 0xCu);
          }
        }

        else if (os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v73 = v33;
          v42 = v41;
          v43 = OS_LOG_TYPE_DEFAULT;
          goto LABEL_73;
        }

        [v6 disconnectWithReason:23];
        goto LABEL_82;
      }

      if (v39)
      {
        if (os_log_type_enabled(v40, OS_LOG_TYPE_DEBUG))
        {
          *buf = 0;
          v67 = v41;
          v68 = OS_LOG_TYPE_DEBUG;
LABEL_80:
          _os_log_impl(&_mh_execute_header, v67, v68, "Received filter response status invalid version from server - incrementing version.", buf, 2u);
        }
      }

      else if (os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        v67 = v41;
        v68 = OS_LOG_TYPE_DEFAULT;
        goto LABEL_80;
      }

      goto LABEL_82;
    }

    v51 = +[APSLog shouldReduceLogging];
    v52 = +[APSLog courier];
    v53 = v52;
    v8 = v24;
    v6 = v29;
    if (v51)
    {
      v22 = v23;
      v34 = v27;
      if (os_log_type_enabled(v52, OS_LOG_TYPE_DEBUG))
      {
        *buf = 0;
        v54 = v53;
        v55 = OS_LOG_TYPE_DEBUG;
LABEL_60:
        _os_log_impl(&_mh_execute_header, v54, v55, "Received filter response status disabled from server - disabling filter optimization on device.", buf, 2u);
      }
    }

    else
    {
      v22 = v23;
      v34 = v27;
      if (os_log_type_enabled(v52, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        v54 = v53;
        v55 = OS_LOG_TYPE_DEFAULT;
        goto LABEL_60;
      }
    }

    if (v70)
    {
      v62 = [(APSUserCourier *)self stateForProtocolConnection:v29];
      v63 = v62;
      v64 = 2;
      goto LABEL_63;
    }

    v63 = [v29 identifier];
    v65 = v34;
    v66 = 2;
LABEL_66:
    [v65 setFilterMode:v66 onInterface:v63];
    goto LABEL_67;
  }

  v56 = +[APSLog shouldReduceLogging];
  v57 = +[APSLog courier];
  v34 = v57;
  if (!v56)
  {
    if (!os_log_type_enabled(v57, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_83;
    }

    proxyClients = self->_proxyClients;
    *buf = 138413058;
    v73 = self;
    v74 = 2112;
    v75 = v8;
    v76 = 2112;
    v77 = v22;
    v78 = 2112;
    v79 = proxyClients;
    v59 = v34;
    v60 = OS_LOG_TYPE_DEFAULT;
LABEL_77:
    _os_log_impl(&_mh_execute_header, v59, v60, "%@ Filter response not for this user -- ignoring {pushToken: %@, pushTokens: %@, clients: %@}", buf, 0x2Au);
    goto LABEL_83;
  }

  if (os_log_type_enabled(v57, OS_LOG_TYPE_DEBUG))
  {
    v58 = self->_proxyClients;
    *buf = 138413058;
    v73 = self;
    v74 = 2112;
    v75 = v8;
    v76 = 2112;
    v77 = v22;
    v78 = 2112;
    v79 = v58;
    v59 = v34;
    v60 = OS_LOG_TYPE_DEBUG;
    goto LABEL_77;
  }

LABEL_83:
}

- (BOOL)hasOutOfDateFilterOnProtocolConnection:(id)a3
{
  v4 = a3;
  v5 = [(APSUserCourier *)self locallyDisabledFilterOptimization];
  v6 = 0;
  if (v4 && (v5 & 1) == 0)
  {
    v7 = [(APSUserCourier *)self filterVersionStateMachine];
    v8 = [v4 identifier];
    v6 = [v7 isOutOfDateOn:v8];
  }

  return v6;
}

- (BOOL)expectsResponseForFilterMessageOnProtocolConnection:(id)a3
{
  v4 = a3;
  if ([(APSUserCourier *)self locallyDisabledFilterOptimization])
  {
    v5 = 0;
  }

  else
  {
    v6 = [(APSUserCourier *)self stateForProtocolConnection:v4];
    v7 = [v6 filterMode];

    v13 = 0;
    v14 = &v13;
    v15 = 0x2020000000;
    v16 = 0;
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_100045E14;
    v9[3] = &unk_100187290;
    v11 = self;
    v12 = &v13;
    v10 = v4;
    [(APSUserCourier *)self enumerateConnectedProtocolConnections:v9];
    if (v7 == 2)
    {
      v5 = 0;
    }

    else
    {
      v5 = *(v14 + 24) ^ 1;
    }

    _Block_object_dispose(&v13, 8);
  }

  return v5 & 1;
}

- (BOOL)expectsResponseForFilterMessageOnProtocolConnection:(id)a3 forClient:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([(APSUserCourier *)self expectsResponseForFilterMessageOnProtocolConnection:v6])
  {
    v8 = [v6 identifier];
    v9 = [v7 filterModeOnInterface:v8];

    v16 = 0;
    v17 = &v16;
    v18 = 0x2020000000;
    v19 = 0;
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_100046050;
    v12[3] = &unk_100187290;
    v13 = v6;
    v15 = &v16;
    v14 = v7;
    [(APSUserCourier *)self enumerateConnectedProtocolConnections:v12];
    if (v9 == 2)
    {
      v10 = 0;
    }

    else
    {
      v10 = *(v17 + 24) ^ 1;
    }

    _Block_object_dispose(&v16, 8);
  }

  else
  {
    v10 = 0;
  }

  return v10 & 1;
}

- (void)updateForReceivedConfig:(id)a3 finishedProcessingConfigBlock:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = +[APSLog shouldReduceLogging];
  v9 = +[APSLog courier];
  v10 = v9;
  if (v8)
  {
    if (!os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      goto LABEL_7;
    }

    *buf = 138412290;
    v43 = self;
    v11 = v10;
    v12 = OS_LOG_TYPE_DEBUG;
  }

  else
  {
    if (!os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_7;
    }

    *buf = 138412290;
    v43 = self;
    v11 = v10;
    v12 = OS_LOG_TYPE_DEFAULT;
  }

  _os_log_impl(&_mh_execute_header, v11, v12, "%@ user courier processing updated APSConfig", buf, 0xCu);
LABEL_7:

  v13 = [v6 powerOptimizationsForExpensiveNetworkingDisabled];
  v14 = v13;
  if (!v13)
  {
    goto LABEL_19;
  }

  v15 = [v13 BOOLValue];
  [(APSOutgoingMessageQueue *)self->_outgoingMessageQueue setPowerOptimizationsForExpensiveNetworkingDisabled:v15];
  v16 = +[APSLog shouldReduceLogging];
  v17 = +[APSLog courier];
  v18 = v17;
  if (v16)
  {
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
    {
      v19 = @"NO";
      if (v15)
      {
        v19 = @"YES";
      }

      *buf = 138412546;
      v43 = self;
      v44 = 2112;
      v45 = v19;
      v20 = v18;
      v21 = OS_LOG_TYPE_DEBUG;
LABEL_17:
      _os_log_impl(&_mh_execute_header, v20, v21, "%@:  powerOptimizationsForExpensiveNetworkingDisabled = %@", buf, 0x16u);
    }
  }

  else if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    v22 = @"NO";
    if (v15)
    {
      v22 = @"YES";
    }

    *buf = 138412546;
    v43 = self;
    v44 = 2112;
    v45 = v22;
    v20 = v18;
    v21 = OS_LOG_TYPE_DEFAULT;
    goto LABEL_17;
  }

LABEL_19:
  v23 = [v6 filterOptimizationEnabled];
  v24 = v23;
  v25 = "0 && impossible pad state" + 6;
  if (!v23)
  {
    goto LABEL_33;
  }

  v26 = [v23 BOOLValue];
  v27 = [(APSUserCourier *)self shouldOnlySendFilterOnPreferredInterface];
  self->_serverDisabledFilterOptimization = v26 ^ 1;
  v28 = [(APSUserCourier *)self shouldOnlySendFilterOnPreferredInterface];
  v29 = +[APSLog shouldReduceLogging];
  v30 = +[APSLog courier];
  v31 = v30;
  if (v29)
  {
    if (os_log_type_enabled(v30, OS_LOG_TYPE_DEBUG))
    {
      v32 = @"NO";
      if (v26)
      {
        v32 = @"YES";
      }

      *buf = 138412546;
      v43 = self;
      v44 = 2112;
      v45 = v32;
      v33 = v31;
      v34 = OS_LOG_TYPE_DEBUG;
LABEL_29:
      _os_log_impl(&_mh_execute_header, v33, v34, "%@:  filterOptimizationsEnabled = %@", buf, 0x16u);
    }
  }

  else if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
  {
    v35 = @"NO";
    if (v26)
    {
      v35 = @"YES";
    }

    *buf = 138412546;
    v43 = self;
    v44 = 2112;
    v45 = v35;
    v33 = v31;
    v34 = OS_LOG_TYPE_DEFAULT;
    goto LABEL_29;
  }

  v36 = v28 | ~v27;
  v25 = "impossible pad state";
  if ((v36 & 1) == 0 && [(APSUserCourier *)self countOfConnectedInterface]>= 2)
  {
    v41[0] = _NSConcreteStackBlock;
    v41[1] = 3221225472;
    v41[2] = sub_100046594;
    v41[3] = &unk_100187000;
    v41[4] = self;
    [(APSUserCourier *)self enumerateConnectedProtocolConnections:v41];
  }

LABEL_33:
  v37 = [(APSUserCourier *)self clientIdentityProvider];
  v39[0] = _NSConcreteStackBlock;
  v39[1] = *(v25 + 290);
  v39[2] = sub_10004662C;
  v39[3] = &unk_1001872B8;
  v39[4] = self;
  v40 = v7;
  v38 = v7;
  [v37 noteServerBagUpdate:v6 finishedProcessingServerBagUpdateBlock:v39];
}

- (void)shouldConnectToCourier:(id)a3
{
  v4 = a3;
  v5 = +[APSLog shouldReduceLogging];
  v6 = +[APSLog courier];
  v7 = v6;
  if (v5)
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412290;
      v16 = self;
      v8 = v7;
      v9 = OS_LOG_TYPE_DEBUG;
LABEL_6:
      _os_log_impl(&_mh_execute_header, v8, v9, "%@ checking if identity provider has identity to connect", buf, 0xCu);
    }
  }

  else if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v16 = self;
    v8 = v7;
    v9 = OS_LOG_TYPE_DEFAULT;
    goto LABEL_6;
  }

  v10 = [(APSUserCourier *)self clientIdentityProvider];
  v14 = v4;
  v11 = v4;
  v12 = [(APSUserCourier *)self publicToken:_NSConcreteStackBlock];
  [v10 checkIdentityIsAvailable:&v13 hasExistingToken:v12 != 0];
}

- (void)_handlePresenceOffline:(id)a3
{
  v4 = a3;
  v5 = [v4 objectForKey:@"APSProtocolPresenceStatus"];
  if ([v5 intValue] == 2)
  {
    v6 = [v4 objectForKey:@"APSProtocolToken"];
    v7 = [(APSUserCourier *)self _findClientWithToken:v6];
    v8 = +[APSLog shouldReduceLogging];
    v9 = +[APSLog courier];
    v10 = v9;
    if (v8)
    {
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
      {
        v13 = 138412546;
        v14 = self;
        v15 = 2112;
        v16 = v7;
        v11 = v10;
        v12 = OS_LOG_TYPE_DEBUG;
LABEL_7:
        _os_log_impl(&_mh_execute_header, v11, v12, "%@: Got presence offline for client %@.  Invalidating and removing any pending proxy presences.", &v13, 0x16u);
      }
    }

    else if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v13 = 138412546;
      v14 = self;
      v15 = 2112;
      v16 = v7;
      v11 = v10;
      v12 = OS_LOG_TYPE_DEFAULT;
      goto LABEL_7;
    }

    [v7 invalidate];
    [(APSUserCourier *)self _clearPendingProxyPresence];
  }
}

- (void)receivedConnectedResponseWithParameters:(id)a3 onProtocolConnection:(id)a4
{
  v6 = a3;
  v7 = a4;
  stateByConnectionIdentifier = self->_stateByConnectionIdentifier;
  v9 = [v7 identifier];
  v10 = [(NSMutableDictionary *)stateByConnectionIdentifier objectForKeyedSubscript:v9];
  if ([v10 userState] == 1)
  {

    goto LABEL_4;
  }

  proxyClientWithOutstandingPresence = self->_proxyClientWithOutstandingPresence;

  if (!proxyClientWithOutstandingPresence)
  {
    v22 = +[APSLog shouldReduceLogging];
    v23 = +[APSLog courier];
    v24 = v23;
    if (v22)
    {
      if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
      {
        v25 = self->_stateByConnectionIdentifier;
        v26 = [v7 identifier];
        v27 = [(NSMutableDictionary *)v25 objectForKeyedSubscript:v26];
        *v31 = 138412546;
        *&v31[4] = self;
        *&v31[12] = 2048;
        *&v31[14] = [v27 userState];
        v28 = v24;
        v29 = OS_LOG_TYPE_DEBUG;
LABEL_12:
        _os_log_impl(&_mh_execute_header, v28, v29, "%@: Received connect message but not in a state to handle it {status: %lld}", v31, 0x16u);
      }
    }

    else if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
    {
      v30 = self->_stateByConnectionIdentifier;
      v26 = [v7 identifier];
      v27 = [(NSMutableDictionary *)v30 objectForKeyedSubscript:v26];
      *v31 = 138412546;
      *&v31[4] = self;
      *&v31[12] = 2048;
      *&v31[14] = [v27 userState];
      v28 = v24;
      v29 = OS_LOG_TYPE_DEFAULT;
      goto LABEL_12;
    }

    goto LABEL_14;
  }

LABEL_4:
  v12 = self->_stateByConnectionIdentifier;
  v13 = [v7 identifier];
  v14 = [(NSMutableDictionary *)v12 objectForKeyedSubscript:v13];
  [v14 setUserState:0];

  v15 = self->_proxyClientWithOutstandingPresence;
  v16 = [v7 identifier];
  v17 = [(APSProxyClient *)v15 stateOnInterface:v16];

  if (v17 == 3)
  {
    v18 = self->_proxyClientWithOutstandingPresence;
    v19 = [v7 identifier];
    [(APSProxyClient *)v18 setState:0 onInterface:v19];

    v20 = self->_proxyClientWithOutstandingPresence;
    v21 = [v7 identifier];
    [(APSProxyClient *)v20 setFilterMode:0 onInterface:v21];

    [(APSUserCourier *)self _clearPendingProxyPresence];
  }

  else
  {
    [(APSUserCourier *)self _handleConnectedMessage:v6 onProtocolConnection:v7];
  }

LABEL_14:
  [(APSUserCourier *)self logStateWithReason:0, *v31, *&v31[16]];
}

- (void)_handleConnectedMessage:(id)a3 onProtocolConnection:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = v7;
  proxyClientWithOutstandingPresence = self->_proxyClientWithOutstandingPresence;
  if (proxyClientWithOutstandingPresence)
  {
    v10 = [(__CFString *)v7 identifier];
    v189 = [(APSProxyClient *)proxyClientWithOutstandingPresence stateOnInterface:v10]!= 1;
  }

  else
  {
    v189 = 1;
  }

  v11 = +[APSLog shouldReduceLogging];
  v12 = +[APSLog courier];
  v13 = v12;
  if (v11)
  {
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
    {
      v14 = [(APSEnvironment *)self->_environment name];
      *buf = 138412290;
      v198 = v14;
      v15 = v13;
      v16 = OS_LOG_TYPE_DEBUG;
LABEL_9:
      _os_log_impl(&_mh_execute_header, v15, v16, "Received connect message [%@]", buf, 0xCu);
    }
  }

  else if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v14 = [(APSEnvironment *)self->_environment name];
    *buf = 138412290;
    v198 = v14;
    v15 = v13;
    v16 = OS_LOG_TYPE_DEFAULT;
    goto LABEL_9;
  }

  v17 = [v6 objectForKey:@"APSProtocolConnectedResponse"];
  v18 = [v17 intValue];

  if (sub_10000712C())
  {
    v19 = [(APSUserCourier *)self debugOverrides];
    v20 = [v19 forcedInvalidPresences];
    v21 = [v20 integerValue];

    if (v21 >= 1)
    {
      v22 = +[APSLog courier];
      if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
      {
        sub_10010910C();
      }

      v18 = 2;
    }
  }

  v23 = [v6 objectForKey:@"APSProtocolServerRequestedTTR"];
  v24 = [v23 BOOLValue];

  if (v24)
  {
    v25 = [v6 objectForKey:@"APSProtocolInvalidPresenceReason"];
    [(APSUserCourier *)self _triggerTTRFromServer:v25];
  }

  v26 = "impossible pad state";
  if (v18 == 2)
  {
    v35 = [v6 objectForKey:@"APSProtocolServerTimeForBadNonce"];
    if (!sub_10000712C())
    {
      goto LABEL_151;
    }

    v36 = [(APSUserCourier *)self debugOverrides];
    v37 = [v36 forcedInvalidPresences];
    v38 = [v37 integerValue];

    if (v38 != 1)
    {
      v111 = [(APSUserCourier *)self debugOverrides];
      v112 = [v111 forcedInvalidPresences];
      v113 = [v112 integerValue];

      if (v113 != 2)
      {
        goto LABEL_151;
      }

      v114 = +[NSDate date];
      [v114 timeIntervalSince1970];
      v116 = [NSNumber numberWithDouble:v115 * 1000.0];

      v117 = +[APSLog shouldReduceLogging];
      v118 = +[APSLog courier];
      v35 = v118;
      if (v117)
      {
        if (!os_log_type_enabled(v118, OS_LOG_TYPE_DEBUG))
        {
LABEL_150:

          v35 = v116;
LABEL_151:
          v150 = [v6 objectForKey:@"APSProtocolInvalidPresenceReason"];
          if (!v150)
          {
            goto LABEL_159;
          }

          v151 = +[APSLog shouldReduceLogging];
          v152 = +[APSLog courier];
          v153 = v152;
          if (v151)
          {
            if (os_log_type_enabled(v152, OS_LOG_TYPE_DEBUG))
            {
              *buf = 138412546;
              v198 = self;
              v199 = 2112;
              v200 = v150;
              v154 = v153;
              v155 = OS_LOG_TYPE_DEBUG;
LABEL_157:
              _os_log_impl(&_mh_execute_header, v154, v155, "%@: Received an invalid presence response with reason %@", buf, 0x16u);
            }
          }

          else if (os_log_type_enabled(v152, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412546;
            v198 = self;
            v199 = 2112;
            v200 = v150;
            v154 = v153;
            v155 = OS_LOG_TYPE_DEFAULT;
            goto LABEL_157;
          }

LABEL_159:
          [(APSUserCourier *)self _triggerAutoBugCaptureForInvalidPresence:v6];
          if (v189)
          {
            v156 = [(APSUserCourier *)self stateForProtocolConnection:v8];
            [v156 setUserState:3];

            if (v35)
            {
              v157 = self;
              v158 = v8;
              v159 = v35;
LABEL_185:
              [(APSUserCourier *)v157 _sendPresenceMessageOnProtocolConnection:v158 serverTime:v159];
              goto LABEL_186;
            }

            v177 = +[APSLog courier];
            if (os_log_type_enabled(v177, OS_LOG_TYPE_FAULT))
            {
              sub_10010920C();
            }

            [(__CFString *)v8 noteInvalidPresence];
            v178 = [(APSUserCourier *)self clientIdentityProvider];
            [v178 noteInvalidServerPresence];

            v179 = [(APSUserCourier *)self courierUser];
            v180 = [v179 isDefaultUser];

            if (!v180)
            {
              [(APSUserCourier *)self setPublicToken:0 fromServer:1];
              v157 = self;
              v158 = v8;
              v159 = 0;
              goto LABEL_185;
            }

            [(APSUserCourier *)self _processInvalidIdentityAndConnectImmediately:0];
LABEL_186:

            goto LABEL_187;
          }

          v160 = +[APSLog shouldReduceLogging];
          v161 = +[APSLog courier];
          v162 = v161;
          if (v160)
          {
            if (!os_log_type_enabled(v161, OS_LOG_TYPE_DEBUG))
            {
              goto LABEL_168;
            }

            v163 = self->_proxyClientWithOutstandingPresence;
            *buf = 138412546;
            v198 = self;
            v199 = 2112;
            v200 = v163;
            v164 = v162;
            v165 = OS_LOG_TYPE_DEBUG;
          }

          else
          {
            if (!os_log_type_enabled(v161, OS_LOG_TYPE_DEFAULT))
            {
              goto LABEL_168;
            }

            v166 = self->_proxyClientWithOutstandingPresence;
            *buf = 138412546;
            v198 = self;
            v199 = 2112;
            v200 = v166;
            v164 = v162;
            v165 = OS_LOG_TYPE_DEFAULT;
          }

          _os_log_impl(&_mh_execute_header, v164, v165, "%@ Deactivating client after invalid presence attempt %@", buf, 0x16u);
LABEL_168:

          [(APSProxyClient *)self->_proxyClientWithOutstandingPresence invalidate];
          v167 = self->_proxyClientWithOutstandingPresence;
          v168 = [(__CFString *)v8 identifier];
          [(APSProxyClient *)v167 setState:0 onInterface:v168];

          v169 = self->_proxyClientWithOutstandingPresence;
          v170 = [(__CFString *)v8 identifier];
          [(APSProxyClient *)v169 setFilterMode:0 onInterface:v170];

          if (!v35)
          {
            v181 = +[APSLog courier];
            if (os_log_type_enabled(v181, OS_LOG_TYPE_FAULT))
            {
              sub_100109188(self, &self->_proxyClientWithOutstandingPresence);
            }

            v182 = self->_proxyClientWithOutstandingPresence;
            v183 = 0;
            v184 = 1;
            goto LABEL_183;
          }

          v171 = +[APSLog shouldReduceLogging];
          v172 = +[APSLog courier];
          v173 = v172;
          if (v171)
          {
            if (os_log_type_enabled(v172, OS_LOG_TYPE_DEBUG))
            {
              v174 = self->_proxyClientWithOutstandingPresence;
              *buf = 138412546;
              v198 = self;
              v199 = 2112;
              v200 = v174;
              v175 = v173;
              v176 = OS_LOG_TYPE_DEBUG;
LABEL_181:
              _os_log_impl(&_mh_execute_header, v175, v176, "%@ invalid presence seems to be due to an expired nonce. Telling client %@.", buf, 0x16u);
            }
          }

          else if (os_log_type_enabled(v172, OS_LOG_TYPE_DEFAULT))
          {
            v185 = self->_proxyClientWithOutstandingPresence;
            *buf = 138412546;
            v198 = self;
            v199 = 2112;
            v200 = v185;
            v175 = v173;
            v176 = OS_LOG_TYPE_DEFAULT;
            goto LABEL_181;
          }

          v182 = self->_proxyClientWithOutstandingPresence;
          v183 = v35;
          v184 = 0;
LABEL_183:
          [(APSProxyClient *)v182 handleExpiredNonceWithServerTime:v183 shouldRollToken:v184];
          [(APSUserCourier *)self _clearPendingProxyPresence];
          [(APSUserCourier *)self _performIdleCheck];
          goto LABEL_186;
        }

        *buf = 138412546;
        v198 = self;
        v199 = 2112;
        v200 = v116;
        v119 = v35;
        v120 = OS_LOG_TYPE_DEBUG;
      }

      else
      {
        if (!os_log_type_enabled(v118, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_150;
        }

        *buf = 138412546;
        v198 = self;
        v199 = 2112;
        v200 = v116;
        v119 = v35;
        v120 = OS_LOG_TYPE_DEFAULT;
      }

      _os_log_impl(&_mh_execute_header, v119, v120, "%@: Debug override to treat presence as invalid with server time, using current time %@", buf, 0x16u);
      goto LABEL_150;
    }

    v39 = +[APSLog shouldReduceLogging];
    v40 = +[APSLog courier];
    v41 = v40;
    if (v39)
    {
      if (os_log_type_enabled(v40, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        v198 = self;
        v42 = v41;
        v43 = OS_LOG_TYPE_DEBUG;
LABEL_148:
        _os_log_impl(&_mh_execute_header, v42, v43, "%@: Debug override to treat presence as invalid with no server time", buf, 0xCu);
      }
    }

    else if (os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v198 = self;
      v42 = v41;
      v43 = OS_LOG_TYPE_DEFAULT;
      goto LABEL_148;
    }

    v116 = 0;
    goto LABEL_150;
  }

  if (v18)
  {
    v44 = +[APSLog shouldReduceLogging];
    v45 = +[APSLog courier];
    v46 = v45;
    if (v44)
    {
      if (!os_log_type_enabled(v45, OS_LOG_TYPE_DEBUG))
      {
        goto LABEL_53;
      }

      *buf = 138412546;
      v198 = self;
      v199 = 1024;
      LODWORD(v200) = v18;
      v47 = v46;
      v48 = OS_LOG_TYPE_DEBUG;
    }

    else
    {
      if (!os_log_type_enabled(v45, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_53;
      }

      *buf = 138412546;
      v198 = self;
      v199 = 1024;
      LODWORD(v200) = v18;
      v47 = v46;
      v48 = OS_LOG_TYPE_DEFAULT;
    }

    _os_log_impl(&_mh_execute_header, v47, v48, "%@: Received unsucessful connected response: %i. Terminating connection.", buf, 0x12u);
LABEL_53:

    if (v189)
    {
      [(__CFString *)v8 noteConnectionFailureWithReason:20];
      goto LABEL_187;
    }

    v64 = +[APSLog shouldReduceLogging];
    v65 = +[APSLog courier];
    v66 = v65;
    if (v64)
    {
      if (os_log_type_enabled(v65, OS_LOG_TYPE_DEBUG))
      {
        v67 = self->_proxyClientWithOutstandingPresence;
        *buf = 138412546;
        v198 = self;
        v199 = 2112;
        v200 = v67;
        v68 = v66;
        v69 = OS_LOG_TYPE_DEBUG;
LABEL_108:
        _os_log_impl(&_mh_execute_header, v68, v69, "%@ Deactivating client after unsuccessful presence attempt %@", buf, 0x16u);
      }
    }

    else if (os_log_type_enabled(v65, OS_LOG_TYPE_DEFAULT))
    {
      v121 = self->_proxyClientWithOutstandingPresence;
      *buf = 138412546;
      v198 = self;
      v199 = 2112;
      v200 = v121;
      v68 = v66;
      v69 = OS_LOG_TYPE_DEFAULT;
      goto LABEL_108;
    }

    [(APSProxyClient *)self->_proxyClientWithOutstandingPresence setActive:0];
    v122 = self->_proxyClientWithOutstandingPresence;
    v123 = [(__CFString *)v8 identifier];
    [(APSProxyClient *)v122 setState:0 onInterface:v123];

    v124 = self->_proxyClientWithOutstandingPresence;
    v125 = [(__CFString *)v8 identifier];
    [(APSProxyClient *)v124 setFilterMode:0 onInterface:v125];

    [(APSUserCourier *)self _clearPendingProxyPresence];
    [(APSUserCourier *)self _performIdleCheck];
    goto LABEL_187;
  }

  v27 = +[APSLog shouldReduceLogging];
  v28 = +[APSLog courier];
  v29 = v28;
  if (v27)
  {
    if (!os_log_type_enabled(v28, OS_LOG_TYPE_DEBUG))
    {
      goto LABEL_39;
    }

    if (v189)
    {
      v30 = @"YES";
    }

    else
    {
      v30 = @"NO";
    }

    v31 = [(APSUserCourier *)self protocolConnectionEstablisher];
    v32 = [v31 countConnectedInterfaces];
    *buf = 138413058;
    v198 = self;
    v199 = 2112;
    v200 = v30;
    v201 = 2112;
    v202 = v8;
    v203 = 2048;
    v204 = v32;
    v33 = v29;
    v34 = OS_LOG_TYPE_DEBUG;
  }

  else
  {
    if (!os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_39;
    }

    if (v189)
    {
      v49 = @"YES";
    }

    else
    {
      v49 = @"NO";
    }

    v31 = [(APSUserCourier *)self protocolConnectionEstablisher];
    v50 = [v31 countConnectedInterfaces];
    *buf = 138413058;
    v198 = self;
    v199 = 2112;
    v200 = v49;
    v201 = 2112;
    v202 = v8;
    v203 = 2048;
    v204 = v50;
    v33 = v29;
    v34 = OS_LOG_TYPE_DEFAULT;
  }

  _os_log_impl(&_mh_execute_header, v33, v34, "%@: Connected response ok for user courier token? %@ on interface: %@ - connected on %lu interfaces", buf, 0x2Au);

LABEL_39:
  v51 = [v6 objectForKey:@"APSProtocolFilterOptimizationSupport"];
  v52 = [v51 BOOLValue];

  v53 = [(APSUserCourier *)self serverDisabledFilterOptimization];
  v54 = +[APSLog shouldReduceLogging];
  v55 = +[APSLog courier];
  v56 = v55;
  if (v53)
  {
    if (v54)
    {
      v57 = &fputc_ptr;
      if (os_log_type_enabled(v55, OS_LOG_TYPE_DEBUG))
      {
        v58 = @"NO";
        *buf = 138413058;
        v198 = self;
        v199 = 2112;
        if (v52)
        {
          v58 = @"YES";
        }

        v200 = v58;
        v201 = 2112;
        v202 = @"YES";
        v203 = 2112;
        v204 = v8;
        v59 = v56;
        v60 = OS_LOG_TYPE_DEBUG;
LABEL_62:
        _os_log_impl(&_mh_execute_header, v59, v60, "%@: Ignoring response for filterOptimizationSupport: %@:, using config state: %@ on %@", buf, 0x2Au);
      }
    }

    else
    {
      v57 = &fputc_ptr;
      if (os_log_type_enabled(v55, OS_LOG_TYPE_DEFAULT))
      {
        v70 = @"NO";
        *buf = 138413058;
        v198 = self;
        v199 = 2112;
        if (v52)
        {
          v70 = @"YES";
        }

        v200 = v70;
        v201 = 2112;
        v202 = @"YES";
        v203 = 2112;
        v204 = v8;
        v59 = v56;
        v60 = OS_LOG_TYPE_DEFAULT;
        goto LABEL_62;
      }
    }

LABEL_70:
    v72 = 1;
    goto LABEL_72;
  }

  if (v54)
  {
    v57 = &fputc_ptr;
    if (!os_log_type_enabled(v55, OS_LOG_TYPE_DEBUG))
    {
      goto LABEL_69;
    }

    v61 = @"NO";
    *buf = 138412802;
    v198 = self;
    v199 = 2112;
    if (v52)
    {
      v61 = @"YES";
    }

    v200 = v61;
    v201 = 2112;
    v202 = v8;
    v62 = v56;
    v63 = OS_LOG_TYPE_DEBUG;
  }

  else
  {
    v57 = &fputc_ptr;
    if (!os_log_type_enabled(v55, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_69;
    }

    v71 = @"NO";
    *buf = 138412802;
    v198 = self;
    v199 = 2112;
    if (v52)
    {
      v71 = @"YES";
    }

    v200 = v71;
    v201 = 2112;
    v202 = v8;
    v62 = v56;
    v63 = OS_LOG_TYPE_DEFAULT;
  }

  _os_log_impl(&_mh_execute_header, v62, v63, "%@: Setting filterOptimizationSupport: %@ on %@", buf, 0x20u);
LABEL_69:

  if (v52)
  {
    goto LABEL_70;
  }

  v72 = 2;
LABEL_72:
  v188 = v72;
  if (!v189)
  {
    goto LABEL_90;
  }

  v73 = [(APSUserCourier *)self protocolConnectionEstablisher];
  if (([v73 allowedToHaveMultipleOpenInterfaces] & 1) == 0)
  {
    v74 = [(APSUserCourier *)self countOfConnectedInterface];

    if (v74 < 1)
    {
      goto LABEL_77;
    }

    v192[0] = _NSConcreteStackBlock;
    v192[1] = 3221225472;
    v192[2] = sub_100048694;
    v192[3] = &unk_1001870A0;
    v193 = v8;
    v194 = self;
    [(APSUserCourier *)self enumerateConnectedProtocolConnections:v192];
    v73 = v193;
  }

LABEL_77:
  v75 = [(APSUserCourier *)self stateForProtocolConnection:v8];
  [v75 setFilterMode:v188];

  v76 = [v6 objectForKey:@"APSProtocolReportLastReversePushRTT"];
  v77 = [v76 BOOLValue];

  v78 = [v57[414] shouldReduceLogging];
  v79 = v57;
  v80 = v78;
  v81 = [v79[414] courier];
  v82 = v81;
  v187 = v6;
  if (v80)
  {
    if (os_log_type_enabled(v81, OS_LOG_TYPE_DEBUG))
    {
      v83 = @"NO";
      *buf = 138412802;
      v198 = self;
      v199 = 2112;
      if (v77)
      {
        v83 = @"YES";
      }

      v200 = v83;
      v201 = 2112;
      v202 = v8;
      v84 = v82;
      v85 = OS_LOG_TYPE_DEBUG;
LABEL_86:
      _os_log_impl(&_mh_execute_header, v84, v85, "%@: Setting reportLastReversePushRTT: %@ on %@", buf, 0x20u);
    }
  }

  else if (os_log_type_enabled(v81, OS_LOG_TYPE_DEFAULT))
  {
    v86 = @"NO";
    *buf = 138412802;
    v198 = self;
    v199 = 2112;
    if (v77)
    {
      v86 = @"YES";
    }

    v200 = v86;
    v201 = 2112;
    v202 = v8;
    v84 = v82;
    v85 = OS_LOG_TYPE_DEFAULT;
    goto LABEL_86;
  }

  outgoingMessageQueue = self->_outgoingMessageQueue;
  v88 = [(__CFString *)v8 identifier];
  [(APSOutgoingMessageQueue *)outgoingMessageQueue setShouldReportLastReversePushRTT:v77 onInterface:v88];

  v195[0] = @"ConnectionType";
  v89 = [(APSUserCourier *)self getConnectionTypeFromProtocolConnection:v8];
  v196[0] = v89;
  v195[1] = @"ServerHostname";
  v90 = [(__CFString *)v8 serverHostname];
  v91 = [NSString stringWithFormat:@"%@", v90];
  v196[1] = v91;
  v195[2] = @"ServerIP";
  v92 = [(__CFString *)v8 serverIPAddress];
  v93 = [NSString stringWithFormat:@"%@", v92];
  v196[2] = v93;
  v195[3] = @"LinkQuality";
  v94 = [NSNumber numberWithInt:[(__CFString *)v8 linkQuality]];
  v196[3] = v94;
  v95 = [NSDictionary dictionaryWithObjects:v196 forKeys:v195 count:4];
  v96 = [v95 mutableCopy];

  v6 = v187;
  v97 = [v187 objectForKey:@"APSProtocolExperimentIDKey"];
  if (v97)
  {
    [v96 setObject:v97 forKeyedSubscript:@"ExperimentID"];
  }

  APSPowerLog();

  v57 = &fputc_ptr;
LABEL_90:
  v98 = [(APSUserCourier *)self clientIdentityProvider];
  [v98 noteValidServerPresence];

  v99 = [v6 objectForKey:@"APSProtocolToken"];
  if (!v99)
  {
    goto LABEL_114;
  }

  v100 = [v57[414] shouldReduceLogging];
  v101 = [v57[414] courier];
  v102 = v101;
  if (v100)
  {
    if (!os_log_type_enabled(v101, OS_LOG_TYPE_DEBUG))
    {
      goto LABEL_97;
    }

    *buf = 138412546;
    v198 = self;
    v199 = 2112;
    v200 = v99;
    v103 = v102;
    v104 = OS_LOG_TYPE_DEBUG;
  }

  else
  {
    if (!os_log_type_enabled(v101, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_97;
    }

    *buf = 138412546;
    v198 = self;
    v199 = 2112;
    v200 = v99;
    v103 = v102;
    v104 = OS_LOG_TYPE_DEFAULT;
  }

  _os_log_impl(&_mh_execute_header, v103, v104, "%@: Received public token '%@'", buf, 0x16u);
LABEL_97:

  if (v189)
  {
    [(APSUserCourier *)self setPublicToken:v99 fromServer:1];
    goto LABEL_114;
  }

  v105 = [v57[414] shouldReduceLogging];
  v106 = [v57[414] courier];
  v107 = v106;
  if (v105)
  {
    if (os_log_type_enabled(v106, OS_LOG_TYPE_DEBUG))
    {
      v108 = self->_proxyClientWithOutstandingPresence;
      *buf = 138412546;
      v198 = self;
      v199 = 2112;
      v200 = v108;
      v109 = v107;
      v110 = OS_LOG_TYPE_DEBUG;
LABEL_112:
      _os_log_impl(&_mh_execute_header, v109, v110, "%@: setting new token on client %@", buf, 0x16u);
    }
  }

  else if (os_log_type_enabled(v106, OS_LOG_TYPE_DEFAULT))
  {
    v126 = self->_proxyClientWithOutstandingPresence;
    *buf = 138412546;
    v198 = self;
    v199 = 2112;
    v200 = v126;
    v109 = v107;
    v110 = OS_LOG_TYPE_DEFAULT;
    goto LABEL_112;
  }

  [(APSProxyClient *)self->_proxyClientWithOutstandingPresence setPublicToken:v99];
LABEL_114:
  v127 = [v6 objectForKey:@"APSProtocolServerMetadata"];
  if (!v127)
  {
    goto LABEL_122;
  }

  v128 = +[APSLog shouldReduceLogging];
  v129 = +[APSLog courier];
  v130 = v129;
  if (v128)
  {
    if (os_log_type_enabled(v129, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412546;
      v198 = self;
      v199 = 2112;
      v200 = v127;
      v131 = v130;
      v132 = OS_LOG_TYPE_DEBUG;
LABEL_120:
      _os_log_impl(&_mh_execute_header, v131, v132, "%@: Received metadata '%@'", buf, 0x16u);
    }
  }

  else if (os_log_type_enabled(v129, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v198 = self;
    v199 = 2112;
    v200 = v127;
    v131 = v130;
    v132 = OS_LOG_TYPE_DEFAULT;
    goto LABEL_120;
  }

LABEL_122:
  v133 = [(__CFString *)v8 maxMessageSize];
  if (!v133)
  {
    goto LABEL_130;
  }

  v134 = +[APSLog shouldReduceLogging];
  v135 = +[APSLog courier];
  v136 = v135;
  if (v134)
  {
    if (os_log_type_enabled(v135, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412546;
      v198 = self;
      v199 = 2112;
      v200 = v133;
      v137 = v136;
      v138 = OS_LOG_TYPE_DEBUG;
LABEL_128:
      _os_log_impl(&_mh_execute_header, v137, v138, "%@: Received message size %@", buf, 0x16u);
    }
  }

  else if (os_log_type_enabled(v135, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v198 = self;
    v199 = 2112;
    v200 = v133;
    v137 = v136;
    v138 = OS_LOG_TYPE_DEFAULT;
    goto LABEL_128;
  }

  -[APSUserCourier setMessageSize:](self, "setMessageSize:", [v133 unsignedIntegerValue]);
LABEL_130:
  v139 = [(__CFString *)v8 maxLargeMessageSize];
  if (v139)
  {
    v140 = +[APSLog shouldReduceLogging];
    v141 = +[APSLog courier];
    v142 = v141;
    if (v140)
    {
      if (os_log_type_enabled(v141, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412546;
        v198 = self;
        v199 = 2112;
        v200 = v139;
        v143 = v142;
        v144 = OS_LOG_TYPE_DEBUG;
LABEL_136:
        _os_log_impl(&_mh_execute_header, v143, v144, "%@: Received large message size %@", buf, 0x16u);
      }
    }

    else if (os_log_type_enabled(v141, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v198 = self;
      v199 = 2112;
      v200 = v139;
      v143 = v142;
      v144 = OS_LOG_TYPE_DEFAULT;
      goto LABEL_136;
    }

    -[APSUserCourier setLargeMessageSize:](self, "setLargeMessageSize:", [v139 unsignedIntegerValue]);
  }

  if (v189)
  {
    [(APSUserCourier *)self _didFinishAssertingAllPresences:v8];
  }

  else
  {
    v145 = self->_proxyClientWithOutstandingPresence;
    if (v145)
    {
      v146 = [(__CFString *)v8 identifier];
      [(APSProxyClient *)v145 setState:2 onInterface:v146];

      v147 = self->_proxyClientWithOutstandingPresence;
      v148 = [(__CFString *)v8 identifier];
      [(APSProxyClient *)v147 setFilterMode:v188 onInterface:v148];

      [(APSUserCourier *)self _sendClientFilter:self->_proxyClientWithOutstandingPresence onProtocolConnection:v8];
      [(APSUserCourier *)self _requestClientPubSubChannelList:self->_proxyClientWithOutstandingPresence onProtocolConnection:v8];
      [(APSUserCourier *)self _sendQueuedOutgoingMessages];
      [(APSUserCourier *)self _clearPendingProxyPresence];
    }

    else
    {
      v149 = +[APSLog courier];
      if (os_log_type_enabled(v149, OS_LOG_TYPE_ERROR))
      {
        sub_100109280();
      }
    }
  }

  v26 = "0 && impossible pad state" + 6;
LABEL_187:
  [(APSUserCourier *)self _processPendingProxyPresences];
  [(APSUserCourier *)self processIsPowerEfficientToSendChange];
  block[0] = _NSConcreteStackBlock;
  block[1] = *(v26 + 290);
  block[2] = sub_10004882C;
  block[3] = &unk_1001864D8;
  block[4] = self;
  v191 = v8;
  v186 = v8;
  dispatch_async(&_dispatch_main_q, block);
}

- (void)_triggerAutoBugCaptureForInvalidPresence:(id)a3
{
  v4 = a3;
  if (!sub_10000712C())
  {
    goto LABEL_18;
  }

  v5 = [(APSDebugOverrides *)self->_debugOverrides forcedInvalidPresences];
  v6 = [v5 integerValue];

  if (v6 > 0)
  {
    goto LABEL_18;
  }

  v7 = +[APSLog shouldReduceLogging];
  v8 = +[APSLog courier];
  v9 = v8;
  if (v7)
  {
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      v21 = 0;
      v10 = &v21;
      v11 = v9;
      v12 = OS_LOG_TYPE_DEBUG;
LABEL_8:
      _os_log_impl(&_mh_execute_header, v11, v12, "triggering ABC for invalid presence", v10, 2u);
    }
  }

  else if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    v10 = buf;
    v11 = v9;
    v12 = OS_LOG_TYPE_DEFAULT;
    goto LABEL_8;
  }

  if (!self->_symptomReporter)
  {
    v13 = objc_alloc_init(APSSymptomReporter);
    symptomReporter = self->_symptomReporter;
    self->_symptomReporter = v13;
  }

  v15 = [(APSUserCourier *)self clientIdentityProvider];
  if ([v15 identityStatus])
  {
    v16 = @"NO";
  }

  else
  {
    v16 = @"YES";
  }

  v17 = [v4 objectForKey:@"APSProtocolServerTimeForBadNonce"];
  if (v17)
  {
    v18 = @"YES";
  }

  else
  {
    v18 = @"NO";
  }

  v19 = [NSString stringWithFormat:@"Using BAA? %@, Contains server time? %@", v16, v18, *buf];

  [(APSSymptomReporter *)self->_symptomReporter reportSymptomToAutoBugCapture:@"InvalidPresence" subType:v19];
LABEL_18:
}

- (void)_triggerTTRFromServer:(id)a3
{
  v3 = a3;
  v18 = CUTWeakLinkClass();
  v16 = CUTWeakLinkClass();
  v17 = CUTWeakLinkClass();
  v19 = *CUTWeakLinkSymbol();
  v4 = *CUTWeakLinkSymbol();
  v5 = *CUTWeakLinkSymbol();
  v6 = *CUTWeakLinkSymbol();
  v7 = *CUTWeakLinkSymbol();
  v8 = *CUTWeakLinkSymbol();
  v9 = *CUTWeakLinkSymbol();
  v10 = objc_alloc_init(NSMutableDictionary);
  v11 = [NSString stringWithFormat:@"[APNS] Tap-to-Radar: Internal push error detected"];
  [v10 setObject:v11 forKeyedSubscript:v19];

  v12 = @"No server reason given";
  if (v3)
  {
    v12 = v3;
  }

  v13 = [NSString stringWithFormat:@"Server requested TTR, presence error reason: %@", v12];

  [v10 setObject:v13 forKeyedSubscript:v4];
  [v10 setObject:@"Apple Push Service" forKeyedSubscript:v5];
  [v10 setObject:@"all" forKeyedSubscript:v6];
  [v10 setObject:@"644392" forKeyedSubscript:v7];
  [v10 setObject:@"Serious Bug" forKeyedSubscript:v8];
  [v10 setObject:@"I Didn't Try" forKeyedSubscript:v9];

  v14 = [[v16 alloc] initWithDictionary:v10];
  v15 = [[v17 alloc] initWithTitle:@"Internal Push Error Detected" message:{@"An internal APNS error has been detected, please file a radar!"}];
  [v18 launchWithRequest:v15 context:v14];
}

- (void)_reconnectIgnoringDelayReconnectTimer:(unsigned int)a3
{
  v5 = +[APSLog shouldReduceLogging];
  v6 = +[APSLog courier];
  v7 = v6;
  if (v5)
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412290;
      v14 = self;
      v8 = v7;
      v9 = OS_LOG_TYPE_DEBUG;
LABEL_6:
      _os_log_impl(&_mh_execute_header, v8, v9, "%@ Forcing reconnections on all interfaces, ignoring delay reconnect timer.", buf, 0xCu);
    }
  }

  else if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v14 = self;
    v8 = v7;
    v9 = OS_LOG_TYPE_DEFAULT;
    goto LABEL_6;
  }

  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_100048E64;
  v11[3] = &unk_1001872D8;
  v12 = a3;
  [(APSUserCourier *)self enumerateAllProtocolConnections:v11];
  v10 = [(APSUserCourier *)self protocolConnectionEstablisher];
  [v10 forceAdjustConnections];
}

- (void)_reconnectAllConnectionsWithReason:(unsigned int)a3
{
  v5 = +[APSLog shouldReduceLogging];
  v6 = +[APSLog courier];
  v7 = v6;
  if (v5)
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412546;
      v14 = self;
      v15 = 1024;
      v16 = a3;
      v8 = v7;
      v9 = OS_LOG_TYPE_DEBUG;
LABEL_6:
      _os_log_impl(&_mh_execute_header, v8, v9, "%@ Reconnecting on all interfaces with reason %d.", buf, 0x12u);
    }
  }

  else if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v14 = self;
    v15 = 1024;
    v16 = a3;
    v8 = v7;
    v9 = OS_LOG_TYPE_DEFAULT;
    goto LABEL_6;
  }

  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_100048FF8;
  v11[3] = &unk_1001872D8;
  v12 = a3;
  [(APSUserCourier *)self enumerateAllProtocolConnections:v11];
  v10 = [(APSUserCourier *)self protocolConnectionEstablisher];
  [v10 adjustConnectionsIfNeeded];
}

- (void)_notifyForIncomingMessage:(id)a3 forConnection:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = +[APSLog courier];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    sub_1001092F0(self, v6, v8);
  }

  if (v7)
  {
    v50 = v7;
    v9 = [NSArray arrayWithObjects:&v50 count:1];
  }

  else
  {
    v9 = [(APSUserCourier *)self connectionServers];
  }

  v32 = self;
  v33 = v7;
  v41 = 0u;
  v42 = 0u;
  v39 = 0u;
  v40 = 0u;
  obj = v9;
  v38 = [obj countByEnumeratingWithState:&v39 objects:v49 count:16];
  if (v38)
  {
    v35 = 0;
    v37 = *v40;
    v34 = v6;
    do
    {
      v10 = 0;
      do
      {
        if (*v40 != v37)
        {
          objc_enumerationMutation(obj);
        }

        v11 = *(*(&v39 + 1) + 8 * v10);
        v12 = [v11 enabledTopics];
        v13 = [v11 opportunisticTopics];
        v14 = [v11 nonWakingTopics];
        v15 = [v11 publicToken];
        v16 = [v6 token];
        v17 = [v15 isEqual:v16];

        v18 = [v6 topic];
        if ([v12 containsObject:v18])
        {
          v19 = 0;
        }

        else
        {
          [v6 topic];
          v21 = v20 = v6;
          if ([v14 containsObject:v21])
          {
            v19 = 0;
          }

          else
          {
            v22 = [v20 topic];
            if ([v13 containsObject:v22] & 1) != 0 || (objc_msgSend(v12, "containsObject:", @"*") & 1) != 0 || (objc_msgSend(v13, "containsObject:", @"*"))
            {
              v19 = 0;
            }

            else
            {
              v19 = [v14 containsObject:@"*"] ^ 1;
            }
          }

          v6 = v34;
        }

        if (v17 && (v19 & 1) == 0)
        {
          [v11 handleReceivedMessage:v6];
          v35 = 1;
        }

        v10 = v10 + 1;
      }

      while (v38 != v10);
      v23 = [obj countByEnumeratingWithState:&v39 objects:v49 count:16];
      v38 = v23;
    }

    while (v23);
  }

  else
  {
    v35 = 0;
  }

  if (!v33 && (v35 & 1) == 0)
  {
    v24 = +[APSLog shouldReduceLogging];
    v25 = +[APSLog courier];
    v26 = v25;
    if (v24)
    {
      v27 = v32;
      if (os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
      {
        v28 = [v6 topic];
        *buf = 138412802;
        v44 = v32;
        v45 = 2112;
        v46 = v6;
        v47 = 2112;
        v48 = v28;
        v29 = v26;
        v30 = OS_LOG_TYPE_DEBUG;
LABEL_37:
        _os_log_impl(&_mh_execute_header, v29, v30, "%@ found no listeners for message %@ with topic %@. Cleaning up message.", buf, 0x20u);
      }
    }

    else
    {
      v27 = v32;
      if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
      {
        v28 = [v6 topic];
        *buf = 138412802;
        v44 = v32;
        v45 = 2112;
        v46 = v6;
        v47 = 2112;
        v48 = v28;
        v29 = v26;
        v30 = OS_LOG_TYPE_DEFAULT;
        goto LABEL_37;
      }
    }

    v31 = [v6 guid];
    [(APSUserCourier *)v27 connection:0 handleAckIncomingMessageWithGuid:v31 topic:0 tracingUUID:0];
  }
}

- (BOOL)_wakeCausedByTopic:(id)a3 interface:(id)a4 priorityVal:(unint64_t)a5 inAllowlist:(BOOL)a6
{
  v8 = [PCPersistentTimer lastSystemWakeDate:a3];
  v9 = v8;
  v10 = a5 == 5 && a6;
  if (a5 == 10)
  {
    v10 = 1;
  }

  if (a5)
  {
    v11 = v10;
  }

  else
  {
    v11 = 1;
  }

  if (v8)
  {
    v12 = +[NSDate now];
    [v12 timeIntervalSinceDate:v9];
    v14 = v13;

    v15 = v14 >= 0.0;
    if (v14 >= 2.0)
    {
      v15 = 0;
    }

    v16 = v11 & v15;
  }

  else
  {
    v16 = 0;
  }

  return v16;
}

- (void)_handleMessageMessage:(id)a3 onProtocolConnection:(id)a4 withGeneration:(unint64_t)a5 isWakingMessage:(BOOL)a6 fromAgent:(BOOL)a7
{
  v175 = a7;
  v7 = a6;
  v10 = a3;
  v11 = a4;
  v12 = [v10 objectForKey:@"APSProtocolToken"];
  v13 = [v10 objectForKey:@"APSProtocolBaseToken"];
  v14 = v13;
  if (v13)
  {
    v15 = v13;
  }

  else
  {
    v15 = v12;
  }

  v16 = v15;
  v17 = [(APSUserCourier *)self _getCurrentTokens];
  v18 = v17;
  v191 = self;
  v184 = v14;
  if (!v14 || [v17 containsObject:v14]) && (!v12 || (objc_msgSend(v18, "containsObject:", v12)))
  {
    v189 = 0;
LABEL_29:
    v37 = [v10 objectForKey:@"APSProtocolTopicHash"];
    v186 = [v10 objectForKey:@"APSProtocolPayload"];
    v38 = [v10 objectForKey:@"APSProtocolMessageID"];
    v169 = [v10 objectForKey:@"APSProtocolMessageCorrelationIdentifier"];
    v161 = v38;
    if (v38)
    {
      v181 = *[v38 bytes];
    }

    else
    {
      v181 = 0;
    }

    v39 = [v10 objectForKey:@"APSProtocolMessageTimestamp"];
    v168 = [v10 objectForKey:@"APSProtocolMessageExpiry"];
    v40 = [v10 objectForKey:@"APSProtocolMessageStorageFlags"];
    v185 = [v10 objectForKey:@"APSProtocolMessagePriority"];
    v183 = [v10 objectForKey:@"APSProtocolMessageAPNFlags"];
    v174 = [v10 objectForKey:@"APSProtocolMessageTracingUUID"];
    v182 = [v10 objectForKey:@"APSProtocolMessagePushType"];
    v187 = [v10 objectForKey:@"APSProtocolMessagePubSubInfo"];
    v163 = v40;
    v41 = [v40 unsignedIntValue];
    wakeMetricTracker = self->_wakeMetricTracker;
    v172 = v41;
    v157 = v7;
    if (v41)
    {
      [(APSWakeMetricTracker *)wakeMetricTracker noteReceivedStoredMessage];
    }

    else
    {
      [(APSWakeMetricTracker *)wakeMetricTracker noteReceivedLiveMessage];
    }

    v43 = self->_topicManager;
    v44 = [(APSTopicManager *)v43 hasEnabledTopicHash:v37];
    v45 = v44;
    v178 = v39;
    v179 = v11;
    v164 = v37;
    v165 = v18;
    v166 = v12;
    v167 = v10;
    v170 = v16;
    v162 = v43;
    if (v44)
    {
      v156 = 1;
      v46 = v44;
    }

    else
    {
      v47 = [(APSTopicManager *)v43 hasOpportunisticTopicHash:v37];
      if (v47)
      {
        v48 = v47;
        v49 = 2;
      }

      else
      {
        v54 = [(APSTopicManager *)v43 hasNonWakingTopicHash:v37];
        if (v54)
        {
          v48 = v54;
          v49 = 4;
        }

        else
        {
          v61 = [(APSTopicManager *)v43 hasPausedTopicHash:v37];
          if (!v61)
          {
            v114 = [(APSTopicManager *)v43 hasIgnoredTopicHash:v37];
            if (v114)
            {
              v173 = v114;
              v171 = +[APSLog courier];
              v115 = v187;
              v50 = v11;
              v116 = v161;
              if (os_log_type_enabled(v171, OS_LOG_TYPE_ERROR))
              {
                sub_1001093B0();
              }

              v176 = 0;
              v188 = 0;
              v117 = 0;
              v160 = 0;
              v159 = 6;
              v118 = a5;
              v119 = v181;
              v51 = v189;
            }

            else
            {
              v176 = [(APSTopicManager *)v43 hasRecentlyRemovedTopicHash:v37];
              v171 = +[APSLog courier];
              v152 = os_log_type_enabled(v171, OS_LOG_TYPE_ERROR);
              v115 = v187;
              v50 = v11;
              v116 = v161;
              if (v176)
              {
                v51 = v189;
                if (v152)
                {
                  sub_100109420();
                }
              }

              else
              {
                v51 = v189;
                if (v152)
                {
                  sub_100109490();
                }

                v176 = 0;
              }

              v188 = 0;
              v173 = 0;
              v117 = 0;
              v160 = 0;
              v159 = 7;
              v118 = a5;
              v119 = v181;
            }

LABEL_164:

            v196[0] = _NSConcreteStackBlock;
            v196[1] = 3221225472;
            v196[2] = sub_10004AF34;
            v196[3] = &unk_100187300;
            v196[4] = self;
            v202 = v159;
            v135 = v116;
            v197 = v135;
            v200 = v119;
            v198 = v50;
            v201 = v118;
            v136 = v117;
            v199 = v136;
            v137 = objc_retainBlock(v196);
            v138 = v137;
            if (!v136)
            {
              (v137[2])(v137);
              v12 = v166;
              v145 = v185;
LABEL_176:

              v10 = v167;
              v60 = v184;
              v16 = v170;
              v34 = v165;
              goto LABEL_177;
            }

            v190 = v51;
            v139 = [(APSUserCourier *)self updateChannelForIncomingMessageWithData:v115 forTopic:v188];
            [(APSIncomingMessage *)v136 setChannelID:v139];
            v192[0] = _NSConcreteStackBlock;
            v192[1] = 3221225472;
            v192[2] = sub_10004B304;
            v192[3] = &unk_100187328;
            v195 = v138;
            v140 = self;
            v141 = v136;
            v193 = v141;
            v194 = v140;
            v142 = objc_retainBlock(v192);
            v143 = sub_1000143BC();

            if (v143)
            {
              v144 = +[APSMessageStore sharedInstance];
              [v144 storeIncomingMessage:v141 environment:v140->_environment completionBlock:v142];
LABEL_175:
              v12 = v166;

              v51 = v190;
              v145 = v185;
              v115 = v187;
              goto LABEL_176;
            }

            v146 = +[NSUUID UUID];
            v144 = [v146 UUIDString];

            v147 = +[APSLog shouldReduceLogging];
            v148 = +[APSLog courier];
            v149 = v148;
            if (v147)
            {
              if (os_log_type_enabled(v148, OS_LOG_TYPE_DEBUG))
              {
                *buf = 138412546;
                v205 = v191;
                v206 = 2112;
                *v207 = v144;
                v150 = v149;
                v151 = OS_LOG_TYPE_DEBUG;
LABEL_173:
                _os_log_impl(&_mh_execute_header, v150, v151, "%@: Calling completion block for incoming message %@", buf, 0x16u);
              }
            }

            else if (os_log_type_enabled(v148, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138412546;
              v205 = v191;
              v206 = 2112;
              *v207 = v144;
              v150 = v149;
              v151 = OS_LOG_TYPE_DEFAULT;
              goto LABEL_173;
            }

            (v142[2])(v142, v144);
            v50 = v179;
            goto LABEL_175;
          }

          v48 = v61;
          v49 = 5;
        }
      }

      v156 = v49;
      v46 = v48;
    }

    v62 = -[APSUserCourier _wakeCausedByTopic:interface:priorityVal:inAllowlist:](self, "_wakeCausedByTopic:interface:priorityVal:inAllowlist:", v46, v11, [v185 unsignedIntegerValue], v45 != 0);
    if (v12)
    {
      v63 = [v18 containsObject:v12];
    }

    else
    {
      v63 = 0;
    }

    [v39 doubleValue];
    v171 = [NSDate dateWithTimeIntervalSince1970:v64 / 1000000000.0];
    pushHistory = self->_pushHistory;
    v158 = v62;
    if (v63)
    {
      v66 = [(APSPushHistory *)pushHistory timestampForTopic:v46 token:v12];
      if (!v66 || [v39 compare:v66])
      {
        v67 = 0;
        v68 = 0;
LABEL_69:
        v69 = 0;
        goto LABEL_96;
      }

      v76 = +[APSLog courier];
      if (os_log_type_enabled(v76, OS_LOG_TYPE_ERROR))
      {
        *buf = 138413058;
        v205 = v191;
        v206 = 2112;
        *v207 = v12;
        *&v207[8] = 2112;
        v208 = v46;
        v209 = 2112;
        v210 = v39;
        _os_log_error_impl(&_mh_execute_header, v76, OS_LOG_TYPE_ERROR, "%@ Received duplicate push for token %@ and topic %@ - message timestamp %@", buf, 0x2Au);
      }

      v67 = 0;
      v68 = 0;
      v69 = 1;
LABEL_96:

      v83 = [v183 unsignedLongValue];
      if (v68 & 1) == 0 && (v83)
      {
        v84 = +[APSLog courier];
        if (os_log_type_enabled(v84, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412802;
          v205 = v191;
          v206 = 2112;
          *v207 = v12;
          *&v207[8] = 2112;
          v208 = v46;
          _os_log_error_impl(&_mh_execute_header, v84, OS_LOG_TYPE_ERROR, "%@: Received push for token %@ topic %@ which was removed but the token is valid unexpectedly! Delivering message to the client anyways.", buf, 0x20u);
        }

        symptomReporter = v191->_symptomReporter;
        if (!symptomReporter)
        {
          v86 = objc_alloc_init(APSSymptomReporter);
          v87 = v191->_symptomReporter;
          v191->_symptomReporter = v86;

          symptomReporter = v191->_symptomReporter;
        }

        [(APSSymptomReporter *)symptomReporter reportSymptomToAutoBugCapture:@"PerAppToken" subType:@"RemovedTokenIsUnexpectedlyValid"];
      }

      v188 = v46;
      v88 = [(APSUserCourier *)v191 shouldDropPubSubMessageWithData:v187 forTopic:v46];
      v89 = v67 == 0;
      if (v67)
      {
        v90 = 1;
      }

      else
      {
        v90 = v68;
      }

      if (v67)
      {
        v91 = 11;
      }

      else
      {
        v91 = 2;
      }

      if (v90)
      {
        v159 = v91;
        v92 = 0;
        v160 = 0;
LABEL_111:
        v93 = v181;
LABEL_160:
        v155 = v92;
        v123 = objc_alloc_init(NSMutableDictionary);
        v124 = [NSNumber numberWithUnsignedInteger:v93];
        v125 = [NSNumber numberWithInteger:[(APSIncomingMessage *)v92 priority]];
        v126 = [v179 serverHostname];
        v154 = [NSString stringWithFormat:@"%@", v126];

        v127 = [v179 serverIPAddress];
        v153 = [NSString stringWithFormat:@"%@", v127];

        v177 = [(APSUserCourier *)v191 getConnectionTypeFromProtocolConnection:v179];
        v128 = [NSNumber numberWithBool:v89];
        v129 = +[NSNumber numberWithInt:](NSNumber, "numberWithInt:", [v179 linkQuality]);
        [v123 setObject:v177 forKeyedSubscript:@"ConnectionType"];
        [v123 setObject:v128 forKeyedSubscript:@"IsDropped"];
        [v123 setObject:v129 forKeyedSubscript:@"LinkQuality"];
        v130 = [NSNumber numberWithInteger:v156];
        [v123 setObject:v130 forKeyedSubscript:@"FilterList"];

        v131 = [NSNumber numberWithInt:(v172 & 3) != 0];
        [v123 setObject:v131 forKeyedSubscript:@"StorageFlag"];

        [v123 setObject:v124 forKeyedSubscript:@"MessageIdentifier"];
        [v123 setObject:v125 forKeyedSubscript:@"Priority"];
        [v123 setObject:v154 forKeyedSubscript:@"ServerHostname"];
        [v123 setObject:v153 forKeyedSubscript:@"ServerIP"];
        [v123 setObject:v188 forKeyedSubscript:@"Topic"];
        v132 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v186 length]);
        [v123 setObject:v132 forKeyedSubscript:@"Size"];

        v133 = [NSNumber numberWithBool:v157];
        [v123 setObject:v133 forKeyedSubscript:@"IsWakingMessage"];

        if (v182)
        {
          v134 = v182;
        }

        else
        {
          v134 = &off_100197818;
        }

        [v123 setObject:v134 forKeyedSubscript:@"PushType"];
        APSPowerLog();

        v119 = v181;
        v50 = v179;

        self = v191;
        v117 = v155;

        v176 = 0;
        v173 = 0;
        v51 = v189;
        v118 = a5;
        v115 = v187;
        v116 = v161;
        goto LABEL_164;
      }

      if (v69)
      {
        v94 = +[APSLog courier];
        if (os_log_type_enabled(v94, OS_LOG_TYPE_ERROR))
        {
          sub_100109574();
        }

        v93 = v181;
        if (!v187)
        {
          goto LABEL_137;
        }

        v95 = [(APSUserCourier *)v191 updateChannelForIncomingMessageWithData:v187 forTopic:v188];
        v96 = +[APSLog shouldReduceLogging];
        v97 = +[APSLog courier];
        v98 = v97;
        if (v96)
        {
          if (os_log_type_enabled(v97, OS_LOG_TYPE_DEBUG))
          {
            *buf = 138412546;
            v205 = v191;
            v206 = 2112;
            *v207 = v95;
            v99 = v98;
            v100 = OS_LOG_TYPE_DEBUG;
LABEL_135:
            _os_log_impl(&_mh_execute_header, v99, v100, "%@: Updated checkpoint on channel %@ for ignored message.", buf, 0x16u);
          }
        }

        else if (os_log_type_enabled(v97, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412546;
          v205 = v191;
          v206 = 2112;
          *v207 = v95;
          v99 = v98;
          v100 = OS_LOG_TYPE_DEFAULT;
          goto LABEL_135;
        }

LABEL_137:
        v92 = 0;
        v160 = 0;
        v159 = 7;
        v89 = 1;
        goto LABEL_160;
      }

      if (v88)
      {
        v92 = 0;
        v160 = 0;
        v159 = 7;
        v89 = 1;
        goto LABEL_111;
      }

      [(APSPushHistory *)v191->_pushHistory receivedPushWithTopic:v188 token:v12 payload:v186 timestamp:v178];
      v101 = [(APSUserCourier *)v191 _copyParsedPayload:v186];
      v102 = +[APSLog courierOversized];
      if (os_log_type_enabled(v102, OS_LOG_TYPE_DEFAULT))
      {
        v103 = sub_100015D6C(v101, v188);
        v104 = v103;
        *buf = 138413826;
        v105 = @"NO";
        v205 = v191;
        if (v63)
        {
          v106 = @"YES";
        }

        else
        {
          v106 = @"NO";
        }

        v206 = 2112;
        *v207 = v188;
        if (v175)
        {
          v105 = @"YES";
        }

        *&v207[8] = 2112;
        v208 = v11;
        v209 = 2112;
        v210 = v103;
        v211 = 2112;
        v212 = v185;
        v213 = 2112;
        v214 = v106;
        v215 = 2112;
        v216 = v105;
        _os_log_impl(&_mh_execute_header, v102, OS_LOG_TYPE_DEFAULT, "%@: Received message for enabled topic '%@' onInterface: %@ with payload '%@' with priority %@ for device token: %@ isProxyMessage: %@", buf, 0x48u);
      }

      if (!v101)
      {
        v113 = +[APSLog courier];
        v93 = v181;
        if (os_log_type_enabled(v113, OS_LOG_TYPE_FAULT))
        {
          sub_100109500();
        }

        v89 = 0;
        v92 = 0;
        v160 = 0;
        v159 = 3;
        goto LABEL_160;
      }

      v160 = v101;
      v92 = [[APSIncomingMessage alloc] initWithTopic:v188 userInfo:v101];
      v93 = v181;
      [(APSIncomingMessage *)v92 setIdentifier:v181];
      [(APSIncomingMessage *)v92 setFromStorage:v172 & 1];
      [(APSIncomingMessage *)v92 setLastMessageFromStorage:(v172 >> 1) & 1];
      [(APSIncomingMessage *)v92 setCorrelationIdentifier:v169];
      -[APSIncomingMessage setTracingEnabled:](v92, "setTracingEnabled:", ([v183 unsignedLongValue] >> 1) & 1);
      [(APSIncomingMessage *)v92 setTracingUUID:v174];
      [(APSIncomingMessage *)v92 setExpirationDate:v168];
      -[APSIncomingMessage setIncomingInterface:](v92, "setIncomingInterface:", sub_10001B334([v11 connectionType]));
      if ((v172 & 2) == 0)
      {
LABEL_150:
        [(APSIncomingMessage *)v92 setTimestamp:v171];
        [(APSIncomingMessage *)v92 setToken:v170];
        [(APSIncomingMessage *)v92 setPerAppToken:v12];
        if (v182)
        {
          v121 = [v182 unsignedShortValue];
        }

        else
        {
          v121 = 0;
        }

        [(APSIncomingMessage *)v92 setPushType:v121];
        if (v185)
        {
          -[APSIncomingMessage setPriority:](v92, "setPriority:", [v185 unsignedIntegerValue]);
        }

        [(APSIncomingMessage *)v92 setPushFlags:0];
        if (v158)
        {
          [(APSIncomingMessage *)v92 setPushFlags:[(APSIncomingMessage *)v92 pushFlags]| 1];
        }

        v122 = +[APSLog PUSHTRACE];
        if (os_log_type_enabled(v122, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412546;
          v205 = v191;
          v206 = 2112;
          *v207 = v174;
          _os_log_impl(&_mh_execute_header, v122, OS_LOG_TYPE_DEFAULT, "%@: Push has been read from stream and parsed. UUID: %@", buf, 0x16u);
        }

        [(APSUserCourier *)v191 _triggerAutoBugCaptureIfMessageIsRetried:v92];
        v89 = 0;
        v159 = 0;
        goto LABEL_160;
      }

      --v191->_usersPotentiallyWithMessages;
      v107 = +[APSLog shouldReduceLogging];
      v108 = +[APSLog courier];
      v109 = v108;
      if (v107)
      {
        if (!os_log_type_enabled(v108, OS_LOG_TYPE_DEBUG))
        {
          goto LABEL_148;
        }

        usersPotentiallyWithMessages = v191->_usersPotentiallyWithMessages;
        *buf = 138412802;
        v205 = v191;
        v206 = 1024;
        *v207 = usersPotentiallyWithMessages;
        *&v207[4] = 1024;
        *&v207[6] = v172;
        v111 = v109;
        v112 = OS_LOG_TYPE_DEBUG;
      }

      else
      {
        if (!os_log_type_enabled(v108, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_148;
        }

        v120 = v191->_usersPotentiallyWithMessages;
        *buf = 138412802;
        v205 = v191;
        v206 = 1024;
        *v207 = v120;
        *&v207[4] = 1024;
        *&v207[6] = v172;
        v111 = v109;
        v112 = OS_LOG_TYPE_DEFAULT;
      }

      _os_log_impl(&_mh_execute_header, v111, v112, "%@: Received LastFromStorage flag in message, users potentially with messages = %d, flags = 0x%02x", buf, 0x18u);
LABEL_148:

      if (!v191->_usersPotentiallyWithMessages)
      {
        [(APSNoOpPowerAssertion *)v191->_waitForStoredMessagesToArrivePowerAssertion clear];
      }

      goto LABEL_150;
    }

    if ([(APSPushHistory *)pushHistory hasPayload:v186 forTopic:v46 tokens:v18])
    {
      v70 = +[APSLog shouldReduceLogging];
      v71 = +[APSLog courier];
      v66 = v71;
      if (v70)
      {
        if (os_log_type_enabled(v71, OS_LOG_TYPE_DEBUG))
        {
          *buf = 138412802;
          v205 = v191;
          v206 = 2112;
          *v207 = v12;
          *&v207[8] = 2112;
          v208 = v46;
          v72 = v66;
          v73 = OS_LOG_TYPE_DEBUG;
LABEL_79:
          _os_log_impl(&_mh_execute_header, v72, v73, "%@ Received duplicate push for per-app token %@ and topic %@. We already received a message with this payload hash for the device token.", buf, 0x20u);
        }
      }

      else if (os_log_type_enabled(v71, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412802;
        v205 = v191;
        v206 = 2112;
        *v207 = v12;
        *&v207[8] = 2112;
        v208 = v46;
        v72 = v66;
        v73 = OS_LOG_TYPE_DEFAULT;
        goto LABEL_79;
      }

      v67 = 0;
      v68 = 0;
      v69 = 1;
      goto LABEL_96;
    }

    if (v12)
    {
      tokenStore = self->_tokenStore;
      v75 = [(APSUserCourier *)self courierUser];
      v203 = 0;
      LOBYTE(tokenStore) = [(APSTokenStore *)tokenStore isMatchingTokenInKeychain:v12 user:v75 error:&v203];
      v67 = v203;

      if (tokenStore)
      {
        v68 = 0;
LABEL_88:
        v78 = [(APSPushHistory *)self->_pushHistory timestampForTopic:v46 token:v12];
        v79 = self;
        v66 = v78;
        if (!v12)
        {
          goto LABEL_69;
        }

        v80 = v79->_pushHistory;
        v217 = v12;
        v81 = [NSArray arrayWithObjects:&v217 count:1];
        LODWORD(v80) = [(APSPushHistory *)v80 hasPayload:v186 forTopic:v46 tokens:v81];

        v69 = 0;
        if (v80 && v66)
        {
          if ([v178 compare:v66])
          {
            v69 = 0;
          }

          else
          {
            v82 = +[APSLog courier];
            if (os_log_type_enabled(v82, OS_LOG_TYPE_ERROR))
            {
              *buf = 138413058;
              v205 = v191;
              v206 = 2112;
              *v207 = v12;
              *&v207[8] = 2112;
              v208 = v46;
              v209 = 2112;
              v210 = v178;
              _os_log_error_impl(&_mh_execute_header, v82, OS_LOG_TYPE_ERROR, "%@ Received duplicate push for token %@ and topic %@ - message timestamp %@", buf, 0x2Au);
            }

            v69 = 1;
          }
        }

        goto LABEL_96;
      }
    }

    else
    {
      v67 = 0;
    }

    v77 = +[APSLog courier];
    if (os_log_type_enabled(v77, OS_LOG_TYPE_ERROR))
    {
      sub_10010901C();
    }

    v68 = 1;
    goto LABEL_88;
  }

  v189 = [(APSUserCourier *)self _findConnectedClientWithToken:v16 onProtocolConnection:v11];
  if (!v189)
  {
    v189 = [(APSUserCourier *)self _findClientWithToken:v16];
    v25 = +[APSLog shouldReduceLogging];
    v26 = +[APSLog courier];
    v21 = v26;
    if (v25)
    {
      if (!os_log_type_enabled(v26, OS_LOG_TYPE_DEBUG))
      {
        goto LABEL_23;
      }

      *buf = 138413058;
      v205 = self;
      v206 = 2112;
      *v207 = v184;
      *&v207[8] = 2112;
      v208 = v12;
      v209 = 2112;
      v210 = v18;
      v22 = "%@ incoming message is for proxy client that is *not* connected. baseToken %@  destToken %@  publicTokens %@";
      v23 = v21;
      v24 = OS_LOG_TYPE_DEBUG;
    }

    else
    {
      if (!os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_23;
      }

      *buf = 138413058;
      v205 = self;
      v206 = 2112;
      *v207 = v184;
      *&v207[8] = 2112;
      v208 = v12;
      v209 = 2112;
      v210 = v18;
      v22 = "%@ incoming message is for proxy client that is *not* connected. baseToken %@  destToken %@  publicTokens %@";
      v23 = v21;
      v24 = OS_LOG_TYPE_DEFAULT;
    }

    v27 = 42;
    goto LABEL_22;
  }

  v19 = +[APSLog shouldReduceLogging];
  v20 = +[APSLog courier];
  v21 = v20;
  if (v19)
  {
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138413314;
      v205 = self;
      v206 = 2112;
      *v207 = v189;
      *&v207[8] = 2112;
      v208 = v184;
      v209 = 2112;
      v210 = v12;
      v211 = 2112;
      v212 = v18;
      v22 = "%@ incoming message is for a proxy client %@ baseToken %@  destToken %@  publicTokens %@";
      v23 = v21;
      v24 = OS_LOG_TYPE_DEBUG;
LABEL_18:
      v27 = 52;
LABEL_22:
      _os_log_impl(&_mh_execute_header, v23, v24, v22, buf, v27);
    }
  }

  else if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138413314;
    v205 = self;
    v206 = 2112;
    *v207 = v189;
    *&v207[8] = 2112;
    v208 = v184;
    v209 = 2112;
    v210 = v12;
    v211 = 2112;
    v212 = v18;
    v22 = "%@ incoming message is for a proxy client %@ baseToken %@  destToken %@  publicTokens %@";
    v23 = v21;
    v24 = OS_LOG_TYPE_DEFAULT;
    goto LABEL_18;
  }

LABEL_23:

  if (v175 || !v189)
  {
    goto LABEL_29;
  }

  v28 = v18;
  v29 = [v11 identifier];
  v30 = [v189 isConnectedOnInterface:v29];

  v31 = +[APSLog shouldReduceLogging];
  v32 = +[APSLog courier];
  v33 = v32;
  if (v30)
  {
    if (v31)
    {
      v34 = v28;
      if (!os_log_type_enabled(v32, OS_LOG_TYPE_DEBUG))
      {
        goto LABEL_47;
      }

      *buf = 138412546;
      v205 = self;
      v206 = 2112;
      *v207 = v189;
      v35 = v33;
      v36 = OS_LOG_TYPE_DEBUG;
    }

    else
    {
      v34 = v28;
      if (!os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_47;
      }

      *buf = 138412546;
      v205 = self;
      v206 = 2112;
      *v207 = v189;
      v35 = v33;
      v36 = OS_LOG_TYPE_DEFAULT;
    }

    _os_log_impl(&_mh_execute_header, v35, v36, "%@ passing this message off to the client device %@ to handle.", buf, 0x16u);
LABEL_47:

    v50 = v11;
    [v189 receivedPush:v10 onConnectionType:objc_msgSend(v11 withGeneration:{"connectionType"), a5}];
    v55 = +[APSLog shouldReduceLogging];
    v56 = +[APSLog courier];
    v57 = v56;
    v51 = v189;
    if (v55)
    {
      if (os_log_type_enabled(v56, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        v205 = self;
        v58 = v57;
        v59 = OS_LOG_TYPE_DEBUG;
LABEL_56:
        _os_log_impl(&_mh_execute_header, v58, v59, "%@: Sending transport acknowledgement message.", buf, 0xCu);
      }
    }

    else if (os_log_type_enabled(v56, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v205 = self;
      v58 = v57;
      v59 = OS_LOG_TYPE_DEFAULT;
      goto LABEL_56;
    }

    [v50 sendMessageTransportAcknowledgeMessage];
    goto LABEL_58;
  }

  v34 = v28;
  if (v31)
  {
    v50 = v11;
    v51 = v189;
    if (os_log_type_enabled(v32, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412546;
      v205 = self;
      v206 = 2112;
      *v207 = v189;
      v52 = v33;
      v53 = OS_LOG_TYPE_DEBUG;
LABEL_52:
      _os_log_impl(&_mh_execute_header, v52, v53, "%@ ignoring message to a disconnected client %@.", buf, 0x16u);
    }
  }

  else
  {
    v50 = v11;
    v51 = v189;
    if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v205 = self;
      v206 = 2112;
      *v207 = v189;
      v52 = v33;
      v53 = OS_LOG_TYPE_DEFAULT;
      goto LABEL_52;
    }
  }

LABEL_58:
  v60 = v184;
LABEL_177:
}

- (id)_copyParsedPayload:(id)a3
{
  v3 = a3;
  v4 = objc_autoreleasePoolPush();
  v16 = 0;
  v5 = [NSPropertyListSerialization propertyListWithData:v3 options:0 format:&v16 error:0];
  if (v5)
  {
    v6 = 0;
    v7 = v5;
  }

  else
  {
    v15 = 0;
    v8 = [NSJSONSerialization JSONObjectWithData:v3 options:0 error:&v15];
    v6 = v15;
    if (!v8)
    {
      v7 = 0;
      goto LABEL_8;
    }

    v7 = v8;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
LABEL_8:
    if (!v6)
    {
      goto LABEL_16;
    }

    for (i = objc_alloc_init(NSMutableString); ; [(__CFString *)i appendString:@"; "])
    {
      v10 = [v6 localizedDescription];
      [(__CFString *)i appendString:v10];

      v11 = [v6 userInfo];
      v12 = [v11 objectForKey:NSUnderlyingErrorKey];

      if (!v12)
      {
        break;
      }

      v6 = v12;
    }

    v6 = 0;
    v7 = 0;
    if (!i)
    {
      goto LABEL_16;
    }

    goto LABEL_13;
  }

  i = @"Top level object was not a dictionary";
LABEL_13:
  v13 = +[APSLog courier];
  if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
  {
    sub_100109654();
  }

  v7 = 0;
LABEL_16:
  objc_autoreleasePoolPop(v4);

  return v7;
}

- (void)_handleOutgoingMessageAcknowledgment:(id)a3 onProtocolConnection:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [v7 objectForKey:@"APSProtocolAckTimestampKey"];
  v9 = [v8 unsignedIntegerValue];

  v10 = [v7 objectForKey:@"APSProtocolDeliveryStatus"];

  v11 = [v10 integerValue];
  v12 = APSError();
  v13 = +[APSLog shouldReduceLogging];
  v14 = +[APSLog courier];
  v15 = v14;
  if (v13)
  {
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412546;
      v23 = self;
      v24 = 2048;
      v25 = v11;
      v16 = v15;
      v17 = OS_LOG_TYPE_DEBUG;
LABEL_6:
      _os_log_impl(&_mh_execute_header, v16, v17, "%@: Received ack for outgoing message with delivery status %ld", buf, 0x16u);
    }
  }

  else if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v23 = self;
    v24 = 2048;
    v25 = v11;
    v16 = v15;
    v17 = OS_LOG_TYPE_DEFAULT;
    goto LABEL_6;
  }

  outgoingMessageQueue = self->_outgoingMessageQueue;
  v19 = [v6 linkQuality];
  v20 = [v6 connectionType];
  v21 = [v6 identifier];

  [(APSOutgoingMessageQueue *)outgoingMessageQueue handleAcknowledgmentForOutgoingMessageWithResult:v12 ackTimestamp:v9 linkQuality:v19 connectionType:v20 onInterface:v21];
}

- (void)handleDisconnectForInterface:(id)a3 connectionState:(int64_t)a4 withReason:(unsigned int)a5
{
  v7 = a3;
  [(APSUserCourier *)self _removePendingRequestsForProtocolConnection:v7];
  [(APSUserCourier *)self markProtocolConnectionDisconnectedForActivityTracking:v7];
  [(APSUserCourier *)self _reportAPSConnectivity];
  if (self->_proxyClientWithOutstandingPresence)
  {
    v8 = +[APSLog shouldReduceLogging];
    v9 = +[APSLog courier];
    v10 = v9;
    if (v8)
    {
      if (!os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
      {
        goto LABEL_8;
      }

      proxyClientWithOutstandingPresence = self->_proxyClientWithOutstandingPresence;
      *buf = 138412546;
      v70 = self;
      v71 = 2112;
      v72 = proxyClientWithOutstandingPresence;
      v12 = v10;
      v13 = OS_LOG_TYPE_DEBUG;
    }

    else
    {
      if (!os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_8;
      }

      v14 = self->_proxyClientWithOutstandingPresence;
      *buf = 138412546;
      v70 = self;
      v71 = 2112;
      v72 = v14;
      v12 = v10;
      v13 = OS_LOG_TYPE_DEFAULT;
    }

    _os_log_impl(&_mh_execute_header, v12, v13, "%@ clearing pending proxy presence for client %@ if necessary.", buf, 0x16u);
LABEL_8:

    v15 = self->_proxyClientWithOutstandingPresence;
    v16 = [(APSProxyClient *)v7 identifier];
    v17 = [(APSProxyClient *)v15 stateOnInterface:v16];

    if ((v17 & 0xFFFFFFFFFFFFFFFDLL) != 1)
    {
      goto LABEL_16;
    }

    v18 = +[APSLog shouldReduceLogging];
    v19 = +[APSLog courier];
    v20 = v19;
    if (v18)
    {
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
      {
        v21 = self->_proxyClientWithOutstandingPresence;
        *buf = 138413058;
        v70 = self;
        v71 = 2112;
        v72 = v21;
        v73 = 2048;
        v74 = v17;
        v75 = 2112;
        v76 = v7;
        v22 = v20;
        v23 = OS_LOG_TYPE_DEBUG;
LABEL_14:
        _os_log_impl(&_mh_execute_header, v22, v23, "%@ client %@ has state %lu onInterface %@", buf, 0x2Au);
      }
    }

    else if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      v24 = self->_proxyClientWithOutstandingPresence;
      *buf = 138413058;
      v70 = self;
      v71 = 2112;
      v72 = v24;
      v73 = 2048;
      v74 = v17;
      v75 = 2112;
      v76 = v7;
      v22 = v20;
      v23 = OS_LOG_TYPE_DEFAULT;
      goto LABEL_14;
    }

    [(APSUserCourier *)self _clearPendingProxyPresence];
  }

LABEL_16:
  v66 = 0u;
  v67 = 0u;
  v64 = 0u;
  v65 = 0u;
  v25 = self->_proxyClients;
  v26 = [(NSMutableDictionary *)v25 countByEnumeratingWithState:&v64 objects:v68 count:16];
  if (v26)
  {
    v27 = v26;
    v28 = *v65;
    do
    {
      for (i = 0; i != v27; i = i + 1)
      {
        if (*v65 != v28)
        {
          objc_enumerationMutation(v25);
        }

        v30 = [(NSMutableDictionary *)self->_proxyClients objectForKey:*(*(&v64 + 1) + 8 * i)];
        v31 = [(APSProxyClient *)v7 identifier];
        [v30 setState:0 onInterface:v31];

        v32 = self->_proxyClientWithOutstandingPresence;
        v33 = [(APSProxyClient *)v7 identifier];
        [(APSProxyClient *)v32 setFilterMode:0 onInterface:v33];
      }

      v27 = [(NSMutableDictionary *)v25 countByEnumeratingWithState:&v64 objects:v68 count:16];
    }

    while (v27);
  }

  [(APSUserCourier *)self _adjustIsConnectedToService];
  if ((a4 - 1) <= 1)
  {
    [(APSUserCourier *)self _disconnectTokenWithReason:a5 onProtocolConnection:v7];
  }

  v34 = [(APSUserCourier *)self filterVersionStateMachine];
  v35 = [(APSProxyClient *)v7 identifier];
  v36 = [v34 hasUnAckedVersionOn:v35];

  if (v36)
  {
    v61[0] = _NSConcreteStackBlock;
    v61[1] = 3221225472;
    v61[2] = sub_10004BFB4;
    v61[3] = &unk_1001870A0;
    v62 = v7;
    v63 = self;
    [(APSUserCourier *)self enumerateConnectedProtocolConnections:v61];
  }

  v37 = +[APSLog shouldReduceLogging];
  v38 = +[APSLog courier];
  v39 = v38;
  if (v37)
  {
    if (!os_log_type_enabled(v38, OS_LOG_TYPE_DEBUG))
    {
      goto LABEL_33;
    }

    *buf = 138412546;
    v70 = self;
    v71 = 2112;
    v72 = v7;
    v40 = v39;
    v41 = OS_LOG_TYPE_DEBUG;
  }

  else
  {
    if (!os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_33;
    }

    *buf = 138412546;
    v70 = self;
    v71 = 2112;
    v72 = v7;
    v40 = v39;
    v41 = OS_LOG_TYPE_DEFAULT;
  }

  _os_log_impl(&_mh_execute_header, v40, v41, "%@ clearing tracking of protocol connection %@", buf, 0x16u);
LABEL_33:

  v42 = [(APSUserCourier *)self protocolConnectionByIdentifier];
  v43 = [(APSProxyClient *)v7 identifier];
  [v42 setObject:0 forKeyedSubscript:v43];

  v44 = [(APSUserCourier *)self stateByConnectionIdentifier];
  v45 = [(APSProxyClient *)v7 identifier];
  [v44 setObject:0 forKeyedSubscript:v45];

  if (a4 == 2)
  {
    if ([(APSProxyClient *)v7 connectionType]!= 2)
    {
      outgoingMessageQueue = self->_outgoingMessageQueue;
      v52 = [(APSProxyClient *)v7 identifier];
      [(APSOutgoingMessageQueue *)outgoingMessageQueue handleConnectionClosedOnInterface:v52];

      goto LABEL_43;
    }

    v46 = +[APSLog shouldReduceLogging];
    v47 = +[APSLog courier];
    v48 = v47;
    if (v46)
    {
      if (os_log_type_enabled(v47, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        v70 = self;
        v49 = v48;
        v50 = OS_LOG_TYPE_DEBUG;
LABEL_41:
        _os_log_impl(&_mh_execute_header, v49, v50, "%@ Removing all pending messages due to a proxy disconnect.", buf, 0xCu);
      }
    }

    else if (os_log_type_enabled(v47, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v70 = self;
      v49 = v48;
      v50 = OS_LOG_TYPE_DEFAULT;
      goto LABEL_41;
    }

    [(APSOutgoingMessageQueue *)self->_outgoingMessageQueue transferOwnershipOfPendingMessagesToHandler:&stru_100187368];
LABEL_43:
    if (![(APSUserCourier *)self hasConnectedInterface])
    {
LABEL_51:
      tokenRequestQueue = self->_tokenRequestQueue;
      v59 = [(APSProxyClient *)v7 identifier];
      [(APSOutgoingQueue *)tokenRequestQueue handleConnectionClosedOnInterface:v59];

      goto LABEL_52;
    }

    v53 = +[APSLog shouldReduceLogging];
    v54 = +[APSLog courier];
    v55 = v54;
    if (v53)
    {
      if (os_log_type_enabled(v54, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412546;
        v70 = self;
        v71 = 2112;
        v72 = v7;
        v56 = v55;
        v57 = OS_LOG_TYPE_DEBUG;
LABEL_49:
        _os_log_impl(&_mh_execute_header, v56, v57, "%@ Resending any pending messages that had been sent over our now dead interface %@", buf, 0x16u);
      }
    }

    else if (os_log_type_enabled(v54, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v70 = self;
      v71 = 2112;
      v72 = v7;
      v56 = v55;
      v57 = OS_LOG_TYPE_DEFAULT;
      goto LABEL_49;
    }

    [(APSUserCourier *)self _sendQueuedOutgoingMessages];
    goto LABEL_51;
  }

LABEL_52:
  [(APSUserCourier *)self logStateWithReason:0];
  [(APSUserCourier *)self _processShouldUseInternetChangeIfNecessary];
}

- (void)_didFinishAssertingAllPresences:(id)a3
{
  v4 = a3;
  [v4 noteConnected];
  [(APSUserCourier *)self _reportAPSConnectivity];
  outgoingMessageQueue = self->_outgoingMessageQueue;
  v6 = [v4 identifier];
  [(APSOutgoingMessageQueue *)outgoingMessageQueue handleConnectionOpenedOnInterface:v6];

  [(APSOutgoingQueue *)self->_tokenRequestQueue handleConnectionOpened];
  v7 = self->_topicManager;
  LODWORD(v6) = [(APSTopicManager *)v7 pendingServerUpdate];
  [(APSUserCourier *)self _sendFilterMessageOnProtocolConnection:v4 withReason:0];
  if (v6)
  {
    v8 = +[APSLog shouldReduceLogging];
    v9 = +[APSLog courier];
    v10 = v9;
    if (v8)
    {
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        v33 = self;
        v11 = v10;
        v12 = OS_LOG_TYPE_DEBUG;
LABEL_7:
        _os_log_impl(&_mh_execute_header, v11, v12, "%@: There was a pending update, should send filter on all interfaces", buf, 0xCu);
      }
    }

    else if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v33 = self;
      v11 = v10;
      v12 = OS_LOG_TYPE_DEFAULT;
      goto LABEL_7;
    }

    v26 = _NSConcreteStackBlock;
    v27 = 3221225472;
    v28 = sub_10004C4A0;
    v29 = &unk_1001870A0;
    v30 = v4;
    v31 = self;
    [(APSUserCourier *)self enumerateConnectedProtocolConnections:&v26];
  }

  v13 = [(APSUserCourier *)self publicToken:v26];
  [(APSUserCourier *)self _sendPubsubConnectMessageOnProtocolConnection:v4 token:v13];

  v14 = +[APSLog shouldReduceLogging];
  v15 = +[APSLog courier];
  v16 = v15;
  if (v14)
  {
    if (!os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
    {
      goto LABEL_15;
    }

    *buf = 138412290;
    v33 = self;
    v17 = v16;
    v18 = OS_LOG_TYPE_DEBUG;
  }

  else
  {
    if (!os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_15;
    }

    *buf = 138412290;
    v33 = self;
    v17 = v16;
    v18 = OS_LOG_TYPE_DEFAULT;
  }

  _os_log_impl(&_mh_execute_header, v17, v18, "%@: Sending presence tracking message following connect.", buf, 0xCu);
LABEL_15:

  [(APSUserCourier *)self sendPresenceTrackingRequestOnProtocolConnection:v4];
  [(APSUserCourier *)self _adjustIsConnectedToService];
  [(APSUserCourier *)self _sendQueuedOutgoingMessages];
  [v4 connectionSetupComplete];
  v19 = +[APSLog shouldReduceLogging];
  v20 = +[APSLog courier];
  v21 = v20;
  if (v19)
  {
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
    {
      cachedPublicToken = self->_cachedPublicToken;
      *buf = 138412290;
      v33 = cachedPublicToken;
      v23 = v21;
      v24 = OS_LOG_TYPE_DEBUG;
LABEL_20:
      _os_log_impl(&_mh_execute_header, v23, v24, "Done asserting all presences. systemToken is: %@", buf, 0xCu);
    }
  }

  else if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
  {
    v25 = self->_cachedPublicToken;
    *buf = 138412290;
    v33 = v25;
    v23 = v21;
    v24 = OS_LOG_TYPE_DEFAULT;
    goto LABEL_20;
  }
}

- (void)_sendPresenceMessageOnProtocolConnection:(id)a3 serverTime:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(APSUserCourier *)self publicToken];
  v9 = [(APSUserCourier *)self courierUser];
  v10 = [v9 isDefaultUser];

  v11 = +[APSLog shouldReduceLogging];
  v12 = +[APSLog courier];
  v13 = v12;
  if (v11)
  {
    if (!os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
    {
      goto LABEL_7;
    }

    v14 = [(APSUserCourier *)self courierUser];
    v15 = [v14 name];
    v16 = [v8 length];
    v17 = [v8 debugDescription];
    courierUser = self->_courierUser;
    *buf = 138413570;
    v37 = self;
    v38 = 2112;
    v39 = v15;
    v40 = 2048;
    v41 = v16;
    v42 = 2112;
    v43 = v17;
    v44 = 2114;
    v45 = v6;
    v46 = 2112;
    v47 = courierUser;
    v19 = v13;
    v20 = OS_LOG_TYPE_DEBUG;
  }

  else
  {
    if (!os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_7;
    }

    v14 = [(APSUserCourier *)self courierUser];
    v15 = [v14 name];
    v21 = [v8 length];
    v17 = [v8 debugDescription];
    v22 = self->_courierUser;
    *buf = 138413570;
    v37 = self;
    v38 = 2112;
    v39 = v15;
    v40 = 2048;
    v41 = v21;
    v42 = 2112;
    v43 = v17;
    v44 = 2114;
    v45 = v6;
    v46 = 2112;
    v47 = v22;
    v19 = v13;
    v20 = OS_LOG_TYPE_DEFAULT;
  }

  _os_log_impl(&_mh_execute_header, v19, v20, "%@ Sending presence message for %@ with token [length = %lu, token = %@] on interface: %{public}@ user: %@", buf, 0x3Eu);

LABEL_7:
  v28 = _NSConcreteStackBlock;
  v29 = 3221225472;
  v30 = sub_10004C830;
  v31 = &unk_100187390;
  v32 = self;
  v23 = v6;
  v33 = v23;
  v34 = v8;
  LOBYTE(v35) = v10;
  v24 = v8;
  v25 = objc_retainBlock(&v28);
  v26 = v25;
  if (v10)
  {
    v27 = [(APSUserCourier *)self stateForProtocolConnection:v23, v28, v29, v30, v31, v32, v33, v34, v35];
    [v27 setUserState:2];

    [(APSUserCourier *)self refreshCertNonceAndSignatureWithServerTime:v7 hasExistingToken:v24 != 0 withCompletion:v26];
  }

  else
  {
    (v25[2])(v25, 1);
  }
}

- (void)_requestToSendFilterOnTopicManager:(id)a3 change:(id)a4
{
  v5 = a4;
  if ([(APSUserCourier *)self shouldOnlySendFilterOnPreferredInterface])
  {
    [v5 setReason:3];
    v6 = [(APSUserCourier *)self preferredProtocolConnection];
    [(APSUserCourier *)self _sendFilterMessageOnProtocolConnection:v6 withChange:v5];
  }

  else
  {
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_10004CD98;
    v7[3] = &unk_1001870A0;
    v8 = v5;
    v9 = self;
    [(APSUserCourier *)self enumerateConnectedProtocolConnections:v7];
  }
}

- (id)_topicsByHashFromTopicStateDictionary:(id)a3
{
  v3 = a3;
  v4 = objc_alloc_init(NSMutableDictionary);
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v5 = v3;
  v6 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v16;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v16 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v15 + 1) + 8 * i);
        v11 = [v5 objectForKeyedSubscript:{v10, v15}];
        v12 = [v11 topicName];
        [v4 setObject:v12 forKeyedSubscript:v10];
      }

      v7 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v7);
  }

  v13 = [v4 copy];

  return v13;
}

- (id)_ultraConstrainedTopicsFromTopicDictionary:(id)a3
{
  v4 = a3;
  v5 = objc_alloc_init(NSMutableDictionary);
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v6 = v4;
  v7 = [v6 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v19;
    do
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v19 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v18 + 1) + 8 * i);
        v12 = [(APSUserCourier *)self topicManager];
        v13 = [v6 objectForKeyedSubscript:v11];
        v14 = [v12 hasUltraConstrainedPermissionForTopic:v13];

        if (v14)
        {
          v15 = [v6 objectForKeyedSubscript:v11];
          [v5 setObject:v15 forKeyedSubscript:v11];
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v8);
  }

  v16 = [v5 copy];

  return v16;
}

- (void)_sendFilterMessageOnProtocolConnection:(id)a3 withReason:(unint64_t)a4
{
  v6 = a3;
  v7 = objc_alloc_init(APSFilterChange);
  [(APSFilterChange *)v7 setReason:a4];
  [(APSUserCourier *)self _sendFilterMessageOnProtocolConnection:v6 withChange:v7];
}

- (void)_sendFilterMessageOnProtocolConnection:(id)a3 withChange:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(APSUserCourier *)self topicManager];

  if (!v8)
  {
    v13 = +[APSLog shouldReduceLogging];
    v14 = +[APSLog courier];
    v9 = v14;
    if (v13)
    {
      if (!os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
      {
        goto LABEL_25;
      }

      *buf = 136315138;
      v32 = "[APSUserCourier _sendFilterMessageOnProtocolConnection:withChange:]";
      v15 = v9;
      v16 = OS_LOG_TYPE_DEBUG;
    }

    else
    {
      if (!os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_25;
      }

      *buf = 136315138;
      v32 = "[APSUserCourier _sendFilterMessageOnProtocolConnection:withChange:]";
      v15 = v9;
      v16 = OS_LOG_TYPE_DEFAULT;
    }

    _os_log_impl(&_mh_execute_header, v15, v16, "%s called with a null topic manager", buf, 0xCu);
    goto LABEL_25;
  }

  v9 = [(APSUserCourier *)self publicToken];
  if (!v9)
  {
    v17 = +[APSLog shouldReduceLogging];
    v18 = +[APSLog courier];
    v19 = v18;
    if (v17)
    {
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412546;
        v32 = self;
        v33 = 2080;
        v34 = "[APSUserCourier _sendFilterMessageOnProtocolConnection:withChange:]";
        v20 = v19;
        v21 = OS_LOG_TYPE_DEBUG;
LABEL_19:
        _os_log_impl(&_mh_execute_header, v20, v21, "%@ %s called with an empty token", buf, 0x16u);
      }
    }

    else if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v32 = self;
      v33 = 2080;
      v34 = "[APSUserCourier _sendFilterMessageOnProtocolConnection:withChange:]";
      v20 = v19;
      v21 = OS_LOG_TYPE_DEFAULT;
      goto LABEL_19;
    }

    goto LABEL_25;
  }

  v10 = [(APSUserCourier *)self topicManager];
  v11 = [v10 hasListeningTopics];

  if (!v11)
  {
    v22 = +[APSLog shouldReduceLogging];
    v23 = +[APSLog courier];
    v24 = v23;
    if (v22)
    {
      if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        v32 = self;
        v25 = v24;
        v26 = OS_LOG_TYPE_DEBUG;
LABEL_23:
        _os_log_impl(&_mh_execute_header, v25, v26, "%@ asked to send filter but we have no listening topics!", buf, 0xCu);
      }
    }

    else if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v32 = self;
      v25 = v24;
      v26 = OS_LOG_TYPE_DEFAULT;
      goto LABEL_23;
    }

    [(APSUserCourier *)self _processShouldRunChangeIfNecessary];
    goto LABEL_25;
  }

  v12 = [(APSUserCourier *)self topicManager];
  v27[0] = _NSConcreteStackBlock;
  v27[1] = 3221225472;
  v27[2] = sub_10004D524;
  v27[3] = &unk_1001873B8;
  v27[4] = self;
  v28 = v6;
  v29 = v7;
  v9 = v9;
  v30 = v9;
  [v12 performFilterBlock:v27];

LABEL_25:
}

- (void)_finishDisconnectForInterface:(id)a3
{
  v4 = a3;
  v5 = [(APSUserCourier *)self stateForProtocolConnection:v4];
  [v5 setUserState:3];
  v6 = [(APSUserCourier *)self filterVersionStateMachine];
  v7 = [v4 identifier];
  [v6 clearInfoFor:v7];

  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v8 = [(APSUserCourier *)self connectionServers];
  v9 = [v8 countByEnumeratingWithState:&v21 objects:v29 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v22;
    do
    {
      for (i = 0; i != v10; i = i + 1)
      {
        if (*v22 != v11)
        {
          objc_enumerationMutation(v8);
        }

        [*(*(&v21 + 1) + 8 * i) handleConnectionStatusChanged:0];
      }

      v10 = [v8 countByEnumeratingWithState:&v21 objects:v29 count:16];
    }

    while (v10);
  }

  v13 = [(APSUser *)self->_courierUser name];
  v14 = [APSSystemUser systemUserWithUserID:v13];

  if ([v14 isGuestUser] && objc_msgSend(v14, "isLoggedOut"))
  {
    v15 = +[APSLog shouldReduceLogging];
    v16 = +[APSLog courier];
    v17 = v16;
    if (v15)
    {
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
      {
        v18 = [(APSUser *)self->_courierUser name];
        *buf = 138412546;
        v26 = self;
        v27 = 2112;
        v28 = v18;
        v19 = v17;
        v20 = OS_LOG_TYPE_DEBUG;
LABEL_15:
        _os_log_impl(&_mh_execute_header, v19, v20, "%@: Removing obsolete token for logged out guest user %@", buf, 0x16u);
      }
    }

    else if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      v18 = [(APSUser *)self->_courierUser name];
      *buf = 138412546;
      v26 = self;
      v27 = 2112;
      v28 = v18;
      v19 = v17;
      v20 = OS_LOG_TYPE_DEFAULT;
      goto LABEL_15;
    }

    [(APSUserCourier *)self setPublicToken:0 fromServer:1];
  }
}

- (void)_sendActiveStateMessageWithSendAllBlueListMessages:(BOOL)a3
{
  v3 = a3;
  v5 = +[APSLog shouldReduceLogging];
  v6 = +[APSLog courier];
  v7 = v6;
  if (v5)
  {
    if (!os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      goto LABEL_11;
    }

    v8 = @"NO";
    if (v3)
    {
      v8 = @"YES";
    }

    *buf = 138412546;
    v16 = self;
    v17 = 2112;
    v18 = v8;
    v9 = v7;
    v10 = OS_LOG_TYPE_DEBUG;
  }

  else
  {
    if (!os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_11;
    }

    v11 = @"NO";
    if (v3)
    {
      v11 = @"YES";
    }

    *buf = 138412546;
    v16 = self;
    v17 = 2112;
    v18 = v11;
    v9 = v7;
    v10 = OS_LOG_TYPE_DEFAULT;
  }

  _os_log_impl(&_mh_execute_header, v9, v10, "%@: Sending active interval message with send all messages '%@'", buf, 0x16u);
LABEL_11:

  if (v3)
  {
    v12 = 0x7FFFFFFF;
  }

  else
  {
    v12 = 10;
  }

  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_10004E42C;
  v13[3] = &unk_1001872D8;
  v14 = v12;
  [(APSUserCourier *)self enumerateConnectedProtocolConnections:v13];
}

- (void)_sendOutgoingMessage:(id)a3 onProtocolConnection:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = v7;
  if (v7)
  {
    v9 = v7;
  }

  else
  {
    v9 = [(APSUserCourier *)self preferredProtocolConnection];
  }

  v10 = v9;
  topicHasher = self->_topicHasher;
  v12 = [v6 topic];
  v13 = [(APSUserCourier *)self courierUser];
  v14 = [(APSTopicHasher *)topicHasher topicHashForTopic:v12 user:v13];

  v15 = [(APSUserCourier *)self courierUser];
  if ([v15 isDefaultUser])
  {
    v16 = [v6 originator];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if ((isKindOfClass & 1) == 0)
    {
      v18 = 0;
      goto LABEL_12;
    }
  }

  else
  {
  }

  v19 = [v6 originator];
  v20 = [v19 publicToken];
  v21 = v20;
  if (v20)
  {
    v22 = v20;
  }

  else
  {
    v22 = [(APSUserCourier *)self publicToken];
  }

  v18 = v22;

LABEL_12:
  if ([(APSUserCourier *)self protocolConnectionHasSentActivityTrackingSalt:v10])
  {
    goto LABEL_20;
  }

  v23 = +[APSLog shouldReduceLogging];
  v24 = +[APSLog courier];
  v25 = v24;
  if (v23)
  {
    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412546;
      v59 = self;
      v60 = 2112;
      v61 = v10;
      v26 = v25;
      v27 = OS_LOG_TYPE_DEBUG;
LABEL_18:
      _os_log_impl(&_mh_execute_header, v26, v27, "%@ Sending activity tracking salt on %@ because we havne't sent it yet", buf, 0x16u);
    }
  }

  else if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v59 = self;
    v60 = 2112;
    v61 = v10;
    v26 = v25;
    v27 = OS_LOG_TYPE_DEFAULT;
    goto LABEL_18;
  }

  [(APSUserCourier *)self sendPresenceTrackingRequestOnProtocolConnection:v10];
LABEL_20:
  if (_os_feature_enabled_impl())
  {
    topicManager = self->_topicManager;
    v29 = [v6 topic];
    v30 = [(APSTopicManager *)topicManager hasUltraConstrainedPermissionForTopic:v29];
  }

  else
  {
    v30 = 0;
  }

  outgoingMessageQueue = self->_outgoingMessageQueue;
  v32 = [v10 identifier];
  v33 = [(APSOutgoingMessageQueue *)outgoingMessageQueue lastReversePushRTTMillisecondsOnInterface:v32];
  v53[0] = _NSConcreteStackBlock;
  v53[1] = 3221225472;
  v53[2] = sub_10004EA24;
  v53[3] = &unk_1001873E0;
  v53[4] = self;
  v34 = v6;
  v54 = v34;
  v35 = v10;
  v55 = v35;
  v36 = [v35 sendMessage:v34 topicHash:v14 lastRTT:v33 token:v18 ultraConstrainedAllowed:v30 withCompletion:v53];

  if (v36)
  {
    if ([v36 code] == 2)
    {
      [(APSOutgoingMessageQueue *)self->_outgoingMessageQueue handleErrorSendingOutgoingMessage:v34 error:v36];
    }
  }

  else
  {
    v37 = self->_outgoingMessageQueue;
    v38 = [v35 identifier];
    [(APSOutgoingMessageQueue *)v37 handleSentOutgoingMessage:v34 onInterface:v38];

    v51 = [(APSUserCourier *)self getConnectionTypeFromProtocolConnection:v35];
    v57[0] = v51;
    v56[0] = @"ConnectionType";
    v56[1] = @"ServerHostname";
    v50 = [v35 serverHostname];
    v49 = [NSString stringWithFormat:@"%@", v50];
    v57[1] = v49;
    v56[2] = @"ServerIP";
    v48 = [v35 serverIPAddress];
    v47 = [NSString stringWithFormat:@"%@", v48];
    v57[2] = v47;
    v56[3] = @"LinkQuality";
    v52 = v14;
    v46 = +[NSNumber numberWithInt:](NSNumber, "numberWithInt:", [v35 linkQuality]);
    v57[3] = v46;
    v56[4] = @"MessageIdentifier";
    v39 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v34 identifier]);
    v57[4] = v39;
    v56[5] = @"Topic";
    v40 = [v34 topic];
    v57[5] = v40;
    v56[6] = @"Priority";
    v41 = v8;
    v42 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [v34 priority]);
    v57[6] = v42;
    v56[7] = @"Size";
    v43 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v34 payloadLength]);
    v57[7] = v43;
    [NSDictionary dictionaryWithObjects:v57 forKeys:v56 count:8];
    v45 = v44 = v18;

    v14 = v52;
    v8 = v41;

    APSPowerLog();
    v18 = v44;
  }
}

- (void)_reportAPSConnectivity
{
  v10 = 0;
  v11 = &v10;
  v12 = 0x2020000000;
  v13 = 0;
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_10004EBF4;
  v5[3] = &unk_100187408;
  v5[4] = &v10;
  v5[5] = &v6;
  [(APSUserCourier *)self enumerateConnectedProtocolConnections:v5];
  v15 = 0;
  v16 = &v15;
  v17 = 0x2050000000;
  v2 = qword_1001BF730;
  v18 = qword_1001BF730;
  if (!qword_1001BF730)
  {
    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = sub_10004F100;
    v14[3] = &unk_100187430;
    v14[4] = &v15;
    sub_10004F100(v14);
    v2 = v16[3];
  }

  v3 = v2;
  _Block_object_dispose(&v15, 8);
  v4 = [v2 sharedInterface];
  [v4 onAPSDConnectionChangeIsOverWiFi:*(v7 + 24) isOverCell:*(v11 + 24)];

  _Block_object_dispose(&v6, 8);
  _Block_object_dispose(&v10, 8);
}

- (APSUserCourierDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)recalculateTrackActivityPresence
{
  v3 = +[APSLog activityTracking];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v23 = self;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%@: Recalculating activity presence", buf, 0xCu);
  }

  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v4 = [(APSUserCourier *)self connectionServers];
  v5 = [v4 countByEnumeratingWithState:&v18 objects:v28 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v19;
    while (2)
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v19 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v18 + 1) + 8 * i);
        if ([v9 trackActivityPresence])
        {
          v11 = +[APSLog activityTracking];
          if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412546;
            v23 = self;
            v24 = 2112;
            v25 = v9;
            _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "%@: Connection %@ requesting activity presence tracking", buf, 0x16u);
          }

          v10 = 1;
          goto LABEL_15;
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v18 objects:v28 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

  v10 = 0;
LABEL_15:

  if (self->_trackActivityPresence != v10)
  {
    self->_trackActivityPresence = v10;
    v12 = +[APSLog activityTracking];
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      if (v10)
      {
        v13 = "enabled";
      }

      else
      {
        v13 = "disabled";
      }

      v14 = [(APSEnvironment *)self->_environment domain];
      *buf = 138412802;
      v23 = self;
      v24 = 2080;
      v25 = v13;
      v26 = 2112;
      v27 = v14;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "%@: Tracking activity presence is now %s for '%@'", buf, 0x20u);
    }

    v17[0] = _NSConcreteStackBlock;
    v17[1] = 3221225472;
    v17[2] = sub_10004F618;
    v17[3] = &unk_100187000;
    v17[4] = self;
    [(APSUserCourier *)self enumerateConnectedProtocolConnections:v17];
    if (v10)
    {
      v15 = [(APSUserCourier *)self preferredProtocolConnection];
      [(APSUserCourier *)self sendPresenceTrackingRequestOnProtocolConnection:v15];
    }

    else
    {
      v16[0] = _NSConcreteStackBlock;
      v16[1] = 3221225472;
      v16[2] = sub_10004F664;
      v16[3] = &unk_100187000;
      v16[4] = self;
      [(APSUserCourier *)self enumerateConnectedProtocolConnections:v16];
    }
  }
}

- (void)sendPresenceTrackingRequestOnProtocolConnection:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v5 = [(APSUserCourier *)self publicToken];
    activityPresenceSalt = self->_activityPresenceSalt;
    if (!activityPresenceSalt)
    {
      [(APSUserCourier *)self _generateSalt];
      activityPresenceSalt = self->_activityPresenceSalt;
    }

    trackActivityPresence = self->_trackActivityPresence;
    v8 = [(APSUserCourier *)self protocolConnectionEstablisher];
    v9 = [v8 serverTimeInNanoSeconds] / 0xF4240;

    v10 = arc4random_uniform(0xFFFFFFFE) + 1;
    v11 = +[APSLog activityTracking];
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v13 = 134218498;
      v14 = v10;
      v15 = 2048;
      v16 = trackActivityPresence;
      v17 = 2114;
      v18 = v4;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Sending presence tracking request with ID:%lu and flag:%lu on interface %{public}@", &v13, 0x20u);
    }

    v12 = [(APSUserCourier *)self stateForProtocolConnection:v4];
    [v12 setTrackingState:1];

    [v4 sendActivityTrackingRequestWithMessageID:v10 pushToken:v5 salt:activityPresenceSalt trackingFlag:trackActivityPresence timestamp:v9];
  }

  else
  {
    v5 = +[APSLog activityTracking];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      sub_1001097C0(v5);
    }
  }
}

- (void)markProtocolConnectionDisconnectedForActivityTracking:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v5 = [(APSUserCourier *)self stateByConnectionIdentifier];
    v6 = [v4 identifier];
    v7 = [v5 objectForKeyedSubscript:v6];
    [v7 setTrackingState:0];
  }

  else
  {
    v5 = +[APSLog activityTracking];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      sub_100109804(v5);
    }
  }
}

- (BOOL)protocolConnectionHasSentActivityTrackingSalt:(id)a3
{
  if (!a3)
  {
    return 0;
  }

  v4 = a3;
  v5 = [(APSUserCourier *)self stateByConnectionIdentifier];
  v6 = [v4 identifier];

  v7 = [v5 objectForKeyedSubscript:v6];
  v8 = [v7 trackingState] == 1;

  return v8;
}

- (void)attemptToRollSalt
{
  v3 = +[APSLog activityTracking];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v20 = 138412290;
    v21 = self;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Attempting to roll activity presence salt. Self:%@", &v20, 0xCu);
  }

  if (![(APSUserCourier *)self hasConnectedInterface])
  {
    v5 = [(APSUserCourier *)self environment];
    v6 = [(APSUserCourier *)self preferredProtocolConnection];
    v4 = +[APSConfiguration configurationForEnvironment:connectionType:](APSConfiguration, "configurationForEnvironment:connectionType:", v5, [v6 connectionType]);

    v7 = [v4 minPresenceSaltRotationInterval];
    v8 = [v7 unsignedIntegerValue];

    v9 = self->_lastActivityPresenceSaltRoll;
    if (v9)
    {
      v10 = 60 * v8;
      if (!v8)
      {
        v10 = 86400;
      }

      v11 = v10;
      v12 = +[NSDate now];
      [v12 timeIntervalSinceDate:v9];
      v14 = v13;

      v15 = +[APSLog activityTracking];
      v16 = os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT);
      if (v14 < v11)
      {
        if (v16)
        {
          v20 = 134218240;
          v21 = v14;
          v22 = 2048;
          v23 = v11;
          _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "It has not been long enough since the last roll. Time:%lu -- Min Interval:%lu", &v20, 0x16u);
        }

        goto LABEL_19;
      }

      if (v16)
      {
        v20 = 134218240;
        v21 = v14;
        v22 = 2048;
        v23 = v11;
        v17 = "It has been long enough since our last roll. Time:%lu -- Min Interval:%lu";
        v18 = v15;
        v19 = 22;
LABEL_14:
        _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, v17, &v20, v19);
      }
    }

    else
    {
      v15 = +[APSLog activityTracking];
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v20) = 0;
        v17 = "We don't have a last salt roll time--rolling";
        v18 = v15;
        v19 = 2;
        goto LABEL_14;
      }
    }

    [(APSUserCourier *)self _generateSalt];
LABEL_19:

    goto LABEL_20;
  }

  v4 = +[APSLog activityTracking];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v20) = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Can not roll salt while courier is connected", &v20, 2u);
  }

LABEL_20:
}

- (void)_generateSalt
{
  v3 = +[APSLog activityTracking];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Generating new presence salt", buf, 2u);
  }

  __buf = 0;
  arc4random_buf(&__buf, 8uLL);
  self->_activityPresenceSalt = __buf;
  v4 = +[NSDate now];
  lastActivityPresenceSaltRoll = self->_lastActivityPresenceSaltRoll;
  self->_lastActivityPresenceSaltRoll = v4;
}

- (void)_handlePresenceTrackingResponse:(id)a3 onProtocolConnection:(id)a4
{
  v4 = a3;
  v5 = [v4 objectForKeyedSubscript:@"APSProtocolPresenceActivityMessageIDKey"];
  v6 = [v4 objectForKeyedSubscript:@"APSProtocolPresenceActivityPushTokenKey"];
  v7 = [v4 objectForKeyedSubscript:@"APSProtocolPresenceActivityStatusKey"];

  v8 = +[APSLog activityTracking];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 138412802;
    v10 = v6;
    v11 = 2112;
    v12 = v7;
    v13 = 2112;
    v14 = v5;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Received presence tracking response message for token %@.  Status: %@. MessageID: %@", &v9, 0x20u);
  }
}

- (void)_registerAppTokenCleanup
{
  v3 = +[APSLog courier];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(buf[0]) = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Registering for App Token Cleanup", buf, 2u);
  }

  objc_initWeak(buf, self);
  handler[0] = _NSConcreteStackBlock;
  handler[1] = 3221225472;
  handler[2] = sub_10004FF88;
  handler[3] = &unk_1001874B8;
  objc_copyWeak(&v5, buf);
  xpc_activity_register("com.apple.aps.activity.apptokencleanup", XPC_ACTIVITY_CHECK_IN, handler);
  objc_destroyWeak(&v5);
  objc_destroyWeak(buf);
}

- (void)performAppTokenCleanup
{
  v3 = +[APSLog courier];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = +[NSDate now];
    *buf = 138412546;
    v59 = self;
    v60 = 2112;
    v61 = v4;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%@:Performing app token cleanup at %@", buf, 0x16u);
  }

  v53 = 0u;
  v54 = 0u;
  v51 = 0u;
  v52 = 0u;
  obj = [(APSUserCourier *)self connectionServers];
  v36 = [obj countByEnumeratingWithState:&v51 objects:v57 count:16];
  if (v36)
  {
    v35 = *v52;
    do
    {
      v5 = 0;
      do
      {
        if (*v52 != v35)
        {
          objc_enumerationMutation(obj);
        }

        v37 = v5;
        v6 = *(*(&v51 + 1) + 8 * v5);
        v7 = [v6 enabledTopics];
        v8 = [v7 mutableCopy];

        v9 = [v6 ignoredTopics];
        v10 = [v9 mutableCopy];
        [v8 addObjectsFromArray:v10];

        v11 = [v6 opportunisticTopics];
        v12 = [v11 mutableCopy];
        [v8 addObjectsFromArray:v12];

        v42 = v6;
        v13 = [v6 nonWakingTopics];
        v14 = [v13 mutableCopy];
        [v8 addObjectsFromArray:v14];

        v49 = 0u;
        v50 = 0u;
        v47 = 0u;
        v48 = 0u;
        v38 = v8;
        v40 = [v38 countByEnumeratingWithState:&v47 objects:v56 count:16];
        if (v40)
        {
          v39 = *v48;
          do
          {
            v15 = 0;
            do
            {
              if (*v48 != v39)
              {
                objc_enumerationMutation(v38);
              }

              v41 = v15;
              v16 = *(*(&v47 + 1) + 8 * v15);
              tokenStore = self->_tokenStore;
              v18 = [(APSUserCourier *)self courierUser];
              v19 = [(APSTokenStore *)tokenStore tokenInfoArrayForTopic:v16 user:v18];

              v45 = 0u;
              v46 = 0u;
              v43 = 0u;
              v44 = 0u;
              v20 = v19;
              v21 = [v20 countByEnumeratingWithState:&v43 objects:v55 count:16];
              if (v21)
              {
                v22 = v21;
                v23 = *v44;
                do
                {
                  for (i = 0; i != v22; i = i + 1)
                  {
                    if (*v44 != v23)
                    {
                      objc_enumerationMutation(v20);
                    }

                    v25 = *(*(&v43 + 1) + 8 * i);
                    v26 = [v25 expirationDate];
                    if (v26)
                    {
                      v27 = v26;
                      v28 = [v25 expirationDate];
                      v29 = +[NSDate date];
                      v30 = [v28 compare:v29];

                      if (v30 == -1)
                      {
                        v31 = +[APSLog courier];
                        if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
                        {
                          *buf = 138412546;
                          v59 = self;
                          v60 = 2112;
                          v61 = v25;
                          _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_DEFAULT, "%@: Purging token for info %@", buf, 0x16u);
                        }

                        v32 = self->_tokenStore;
                        v33 = [(APSUserCourier *)self courierUser];
                        [(APSTokenStore *)v32 setToken:0 forInfo:v25 user:v33];

                        [(APSUserCourier *)self connection:v42 didInvalidateTokenForInfo:v25];
                      }
                    }
                  }

                  v22 = [v20 countByEnumeratingWithState:&v43 objects:v55 count:16];
                }

                while (v22);
              }

              v15 = v41 + 1;
            }

            while ((v41 + 1) != v40);
            v40 = [v38 countByEnumeratingWithState:&v47 objects:v56 count:16];
          }

          while (v40);
        }

        v5 = v37 + 1;
      }

      while ((v37 + 1) != v36);
      v36 = [obj countByEnumeratingWithState:&v51 objects:v57 count:16];
    }

    while (v36);
  }
}

- (void)saveToken:(id)a3 forInfo:(id)a4 connection:(id)a5
{
  v7 = a3;
  v8 = a4;
  v9 = +[APSLog courier];
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = [(APSEnvironment *)self->_environment domain];
    v13 = 138413058;
    v14 = self;
    v15 = 2112;
    v16 = v7;
    v17 = 2112;
    v18 = v10;
    v19 = 2112;
    v20 = v8;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "%@ Adding token %@ into keychain for %@, %@", &v13, 0x2Au);
  }

  tokenStore = self->_tokenStore;
  v12 = [(APSUserCourier *)self courierUser];
  [(APSTokenStore *)tokenStore setToken:v7 forInfo:v8 user:v12];
}

- (void)connection:(id)a3 didRequestTokenForInfo:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = +[APSLog courier];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412802;
    v48 = self;
    v49 = 2112;
    v50 = v6;
    v51 = 2112;
    v52 = v7;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "%@: Received request from %@ to generate token for info %@", buf, 0x20u);
  }

  v9 = [v7 topic];
  v10 = [v9 length];

  if (v10)
  {
    tokenStore = self->_tokenStore;
    v12 = [(APSUserCourier *)self courierUser];
    v46 = 0;
    v13 = [(APSTokenStore *)tokenStore tokenForInfo:v7 user:v12 persistedInfo:&v46];
    v14 = v46;

    v15 = [(APSUserCourier *)self publicToken];
    [v7 setBaseToken:v15];

    v16 = +[APSLog courier];
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      v17 = [v7 topic];
      *buf = 138413314;
      v48 = self;
      v49 = 2112;
      v50 = v17;
      v51 = 2112;
      v52 = v13;
      v53 = 2112;
      v54 = v7;
      v55 = 2112;
      v56 = v14;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "%@ found cached token for topic: %@, token: %@ for info %@ persisted info %@", buf, 0x34u);
    }

    if (v13)
    {
      v18 = [v7 baseToken];
      if (v18)
      {
        v19 = v18;
        v20 = [v14 isEqual:v7];

        if (v20)
        {
          v21 = +[APSLog courier];
          if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412802;
            v48 = self;
            v49 = 2112;
            v50 = v13;
            v51 = 2112;
            v52 = v7;
            _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "%@ handleReceivedToken: %@ forInfo %@", buf, 0x20u);
          }

          [v6 handleReceivedToken:v13 forInfo:v7];
          v22 = [v14 baseToken];

          if (!v22)
          {
            [(APSUserCourier *)self saveToken:v13 forInfo:v7 connection:v6];
          }

          goto LABEL_24;
        }
      }

      if (v14)
      {
        v23 = [v14 baseToken];
        if (v23)
        {
          v24 = v23;
          v25 = [v14 baseToken];
          v26 = [v25 isEqualToData:self->_cachedPublicToken];

          if ((v26 & 1) == 0)
          {
            v27 = +[APSLog courier];
            if (os_log_type_enabled(v27, OS_LOG_TYPE_FAULT))
            {
              *buf = 138412802;
              v48 = self;
              v49 = 2112;
              v50 = v7;
              v51 = 2112;
              v52 = v14;
              _os_log_fault_impl(&_mh_execute_header, v27, OS_LOG_TYPE_FAULT, "%@ Found persisted token info, but the system token didn't match! TokenInfo %@ persisted TokenInfo %@", buf, 0x20u);
            }

            v28 = +[APSLog courier];
            if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138412546;
              v48 = self;
              v49 = 2112;
              v50 = v7;
              _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEFAULT, "%@ Requesting a new token for info %@", buf, 0x16u);
            }
          }
        }
      }

      if ([v7 type])
      {
        [(APSUserCourier *)self connection:v6 didInvalidateTokenForInfo:v7];
      }
    }

    v42[0] = _NSConcreteStackBlock;
    v42[1] = 3221225472;
    v42[2] = sub_100050D84;
    v42[3] = &unk_1001874E0;
    v29 = v7;
    v43 = v29;
    v44 = self;
    v30 = v6;
    v45 = v30;
    v31 = objc_retainBlock(v42);
    tokenRequestQueue = self->_tokenRequestQueue;
    v38[0] = _NSConcreteStackBlock;
    v38[1] = 3221225472;
    v38[2] = sub_100050EA0;
    v38[3] = &unk_100187508;
    v39 = v29;
    v40 = self;
    v41 = v30;
    v34[0] = _NSConcreteStackBlock;
    v34[1] = 3221225472;
    v34[2] = sub_100051424;
    v34[3] = &unk_100187530;
    v34[4] = self;
    v35 = v39;
    v37 = v31;
    v36 = v41;
    v33 = v31;
    [(APSOutgoingQueue *)tokenRequestQueue enqueueSendBlock:v38 completionBlock:v34];

LABEL_24:
  }
}

- (void)connection:(id)a3 didRequestCurrentTokenForInfo:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = +[APSLog courier];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412802;
    v20 = self;
    v21 = 2112;
    v22 = v6;
    v23 = 2112;
    v24 = v7;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "%@: Received request from %@ to fetch current token for info %@", buf, 0x20u);
  }

  v9 = [v7 topic];
  v10 = [v9 length];

  if (v10)
  {
    tokenStore = self->_tokenStore;
    v12 = [(APSUserCourier *)self courierUser];
    v18 = 0;
    v13 = [(APSTokenStore *)tokenStore tokenForInfo:v7 user:v12 persistedInfo:&v18];
    v14 = v18;

    v15 = +[APSLog courier];
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      v16 = [v7 topic];
      *buf = 138413058;
      v20 = self;
      v21 = 2112;
      v22 = v16;
      v23 = 2112;
      v24 = v13;
      v25 = 2112;
      v26 = v7;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "%@ found cached token for topic: %@, token: %@ for info %@", buf, 0x2Au);
    }

    if (v13)
    {
      v17 = +[APSLog courier];
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412802;
        v20 = self;
        v21 = 2112;
        v22 = v13;
        v23 = 2112;
        v24 = v14;
        _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "%@ handleReceivedToken: %@ forInfo %@", buf, 0x20u);
      }

      [v6 handleReceivedToken:v13 forInfo:v14];
    }
  }
}

- (void)connection:(id)a3 didInvalidateTokenForInfo:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = +[APSLog courier];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v25 = 138412802;
    v26 = self;
    v27 = 2112;
    v28 = v6;
    v29 = 2112;
    v30 = v7;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "%@ asked by %@ to invalidate extended app token for info %@", &v25, 0x20u);
  }

  if (![v7 type])
  {
    v9 = [(APSUserCourier *)self userAppIDManager];
    v10 = [(APSEnvironment *)self->_environment name];
    v11 = [v7 topic];
    v12 = [v7 identifier];
    [v9 removeAppIdForEnvironmentName:v10 topic:v11 identifier:v12];
  }

  tokenStore = self->_tokenStore;
  v14 = [(APSUserCourier *)self courierUser];
  [(APSTokenStore *)tokenStore setToken:0 forInfo:v7 user:v14];

  v15 = self->_tokenStore;
  v16 = [v7 topic];
  v17 = [(APSUserCourier *)self courierUser];
  v18 = [(APSTokenStore *)v15 tokensForTopic:v16 user:v17 error:0];
  v19 = [v18 count];

  v20 = +[APSLog courier];
  v21 = os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT);
  if (!v19)
  {
    if (v21)
    {
      v23 = [v7 topic];
      v25 = 138412290;
      v26 = v23;
      _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "No tokens use salt anymore. Clearing salt for topic %@", &v25, 0xCu);
    }

    topicHasher = self->_topicHasher;
    v20 = [v7 topic];
    v22 = [(APSUserCourier *)self courierUser];
    [(APSTopicHasher *)topicHasher clearSaltForTopic:v20 user:v22];
    goto LABEL_11;
  }

  if (v21)
  {
    v22 = [v7 topic];
    v25 = 138412290;
    v26 = v22;
    _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "Still existing tokens for topic %@. Not clearing salt.", &v25, 0xCu);
LABEL_11:
  }
}

- (id)connection:(id)a3 createURLTokenForToken:(id)a4
{
  v5 = a4;
  v6 = sub_1000882F8(v5);
  v7 = [(APSUserCourier *)self urlPrefix];
  v8 = [v7 stringByAppendingString:v6];
  v9 = [[APSURLToken alloc] initWithTokenURL:v8 token:v5];

  return v9;
}

- (id)urlPrefix
{
  v3 = [(APSUserCourier *)self environment];
  v4 = [(APSUserCourier *)self preferredProtocolConnection];
  v5 = +[APSConfiguration configurationForEnvironment:connectionType:](APSConfiguration, "configurationForEnvironment:connectionType:", v3, [v4 connectionType]);
  v6 = [v5 urlTokenPrefix];

  if (!v6)
  {
    v7 = [(APSUserCourier *)self environment];
    v8 = [v7 name];
    v9 = [v8 isEqualToString:APSEnvironmentProduction];

    if (v9)
    {
      v6 = @"https://web.push.apple.com/";
    }

    else
    {
      v6 = @"https://web.sandbox.push.apple.com/";
    }
  }

  return v6;
}

- (void)_handleAppTokenGenerateResponse:(id)a3 onProtocolConnection:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = +[APSLog courier];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v11 = 138412546;
    v12 = self;
    v13 = 2112;
    v14 = v6;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "%@: Received app token generate response %@", &v11, 0x16u);
  }

  tokenRequestQueue = self->_tokenRequestQueue;
  v10 = [v7 identifier];

  [(APSOutgoingQueue *)tokenRequestQueue handleResponseForPendingItem:v6 error:0 onInterface:v10];
}

- (void)unsubscribeFromChannels:(id)a3 forTopic:(id)a4 token:(id)a5
{
  v8 = a3;
  v9 = a4;
  v23 = a5;
  v24 = +[NSMutableArray array];
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v10 = v8;
  v11 = [v10 countByEnumeratingWithState:&v25 objects:v31 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v26;
    do
    {
      for (i = 0; i != v12; i = i + 1)
      {
        if (*v26 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v15 = [objc_alloc(CUTWeakLinkClass()) initWithDictionary:*(*(&v25 + 1) + 8 * i)];
        [v15 setChannelTopic:v9];
        v16 = [(APSUserCourier *)self environment];
        v17 = [v16 name];
        [v15 setEnvironment:v17];

        v18 = [(APSUserCourier *)self courierUser];
        v19 = [v18 pubSubName];
        [v15 setTokenName:v19];

        v20 = +[APSLog pubSub];
        if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v30 = v15;
          _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "Incoming pubsub unsubscribe request for %@", buf, 0xCu);
        }

        v21 = [(APSUserCourier *)self subscriptionStore];
        v22 = [v21 deleteSubscription:v15];

        if (v22)
        {
          [v24 addObject:v15];
        }
      }

      v12 = [v10 countByEnumeratingWithState:&v25 objects:v31 count:16];
    }

    while (v12);
  }

  [(APSUserCourier *)self _handlePubSubRequest:0 unsubscriptionChannels:v24 token:v23];
}

- (void)unsubscribeFromChannels:(id)a3 token:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = +[APSLog pubSub];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v24 = v6;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Incoming pubsub unsubscribe request for %@", buf, 0xCu);
  }

  v9 = +[NSMutableArray array];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v10 = v6;
  v11 = [v10 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v19;
    do
    {
      v14 = 0;
      do
      {
        if (*v19 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v15 = *(*(&v18 + 1) + 8 * v14);
        v16 = [(APSUserCourier *)self subscriptionStore];
        v17 = [v16 deleteSubscription:v15];

        if (v17)
        {
          [v9 addObject:v15];
        }

        v14 = v14 + 1;
      }

      while (v12 != v14);
      v12 = [v10 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v12);
  }

  [(APSUserCourier *)self _handlePubSubRequest:0 unsubscriptionChannels:v9 token:v7];
}

- (void)_handlePubSubRequest:(id)a3 unsubscriptionChannels:(id)a4 token:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if ([v8 count] || objc_msgSend(v9, "count"))
  {
    v24 = v10;
    v11 = [v8 mutableCopy];
    v30 = 0u;
    v31 = 0u;
    v32 = 0u;
    v33 = 0u;
    obj = v8;
    v12 = [obj countByEnumeratingWithState:&v30 objects:v34 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v31;
      do
      {
        for (i = 0; i != v13; i = i + 1)
        {
          if (*v31 != v14)
          {
            objc_enumerationMutation(obj);
          }

          v16 = *(*(&v30 + 1) + 8 * i);
          topicHasher = self->_topicHasher;
          v18 = [v16 channelTopic];
          v19 = [(APSUserCourier *)self courierUser];
          v20 = [(APSTopicHasher *)topicHasher topicHashForTopic:v18 user:v19];

          v21 = [(APSUserCourier *)self topicManager];
          v22 = [v21 hasIgnoredTopicHash:v20];

          if (v22)
          {
            [v11 removeObject:v16];
          }
        }

        v13 = [obj countByEnumeratingWithState:&v30 objects:v34 count:16];
      }

      while (v13);
    }

    v23 = v11;
    v26[0] = _NSConcreteStackBlock;
    v26[1] = 3221225472;
    v26[2] = sub_1000AF41C;
    v26[3] = &unk_100188C30;
    v26[4] = self;
    v27 = v23;
    v28 = v9;
    v10 = v24;
    v29 = v24;
    v8 = v23;
    [(APSUserCourier *)self enumerateConnectedProtocolConnections:v26];
  }
}

- (void)_retryRequestAfterDelay:(id)a3
{
  v4 = a3;
  v5 = [(APSUserCourier *)self environment];
  v6 = [(APSUserCourier *)self preferredProtocolConnection];
  v10 = +[APSConfiguration configurationForEnvironment:connectionType:](APSConfiguration, "configurationForEnvironment:connectionType:", v5, [v6 connectionType]);

  v7 = [v10 pubSubDefaultTimeout];
  v8 = [v7 unsignedIntegerValue];
  if (v8)
  {
    v9 = v8;
  }

  else
  {
    v9 = 30.0;
  }

  [(APSUserCourier *)self _retryRequestAfterDelay:v4 withDelay:v9];
}

- (void)_retryRequestAfterDelay:(id)a3 withDelay:(double)a4
{
  v6 = a3;
  if (v6)
  {
    if ([(APSUserCourier *)self hasConnectedInterfaceOfType:2])
    {
      v7 = +[APSLog pubSub];
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Device is in proxy mode, do not retry pubsub request", buf, 2u);
      }
    }

    else if ([v6 retryCount])
    {
      [v6 setRetryCount:{objc_msgSend(v6, "retryCount") - 1}];
      v8 = dispatch_source_create(&_dispatch_source_type_timer, 0, 0, &_dispatch_main_q);
      [v6 setTimeoutSource:v8];

      v9 = [v6 timeoutSource];
      v10 = dispatch_time(0, (a4 * 1000000000.0));
      dispatch_source_set_timer(v9, v10, 0xFFFFFFFFFFFFFFFFLL, 0);

      objc_initWeak(buf, v6);
      objc_initWeak(&location, self);
      v11 = [v6 timeoutSource];
      handler[0] = _NSConcreteStackBlock;
      handler[1] = 3221225472;
      handler[2] = sub_1000AFA2C;
      handler[3] = &unk_100188C58;
      objc_copyWeak(&v18, buf);
      objc_copyWeak(&v19, &location);
      handler[4] = self;
      v12 = v6;
      v17 = v12;
      dispatch_source_set_event_handler(v11, handler);

      v13 = [v12 timeoutSource];
      dispatch_resume(v13);

      objc_destroyWeak(&v19);
      objc_destroyWeak(&v18);
      objc_destroyWeak(&location);
      objc_destroyWeak(buf);
    }

    else
    {
      v14 = +[APSLog pubSub];
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v22 = v6;
        _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "PubSub request %@ has exceeded its retry limit.  Abandoning.", buf, 0xCu);
      }

      v15 = [(APSUserCourier *)self subscriptionRequests];
      [v15 removeObject:v6];
    }
  }
}

- (id)allRegisteredChannelsForTopic:(id)a3
{
  v4 = a3;
  v5 = [(APSUserCourier *)self subscriptionStore];
  v6 = [(APSUserCourier *)self environment];
  v7 = [v6 name];
  v8 = [(APSUserCourier *)self courierUser];
  v9 = [v8 pubSubName];
  v10 = [v5 allSubscriptionsForTopic:v4 environment:v7 userName:v9];

  if (v10)
  {
    v11 = v10;
  }

  else
  {
    v11 = &__NSArray0__struct;
  }

  v12 = v11;

  return v11;
}

- (void)_sendPubsubConnectMessageOnProtocolConnection:(id)a3 token:(id)a4
{
  v23 = a3;
  v6 = a4;
  v7 = [(APSUserCourier *)self courierUser];
  v8 = [v7 pubSubName];

  v9 = [(APSUserCourier *)self subscriptionStore];
  v10 = [(APSUserCourier *)self environment];
  v11 = [v10 name];
  v12 = [v9 allSubscriptionsForEnvironment:v11 userName:v8];

  if (v12 && [v12 count])
  {
    v13 = [APSPubSubRequest alloc];
    v14 = [(APSUserCourier *)self _getNextMessageID];
    v15 = [v12 firstObject];
    v16 = [v15 tokenName];
    v17 = -[APSPubSubRequest initWithSubscriptionChannels:unsubscriptionChannels:messageID:userName:token:subscriptionType:connectionType:retryCount:](v13, "initWithSubscriptionChannels:unsubscriptionChannels:messageID:userName:token:subscriptionType:connectionType:retryCount:", v12, 0, v14, v16, v6, 1, [v23 connectionType], 3);

    v18 = [(APSPubSubRequest *)v17 messageID];
    v19 = [v18 unsignedIntValue];

    v20 = [(APSUserCourier *)self subscriptionRequests];

    if (!v20)
    {
      v21 = +[NSMutableArray array];
      [(APSUserCourier *)self setSubscriptionRequests:v21];
    }

    v22 = [(APSUserCourier *)self subscriptionRequests];
    [v22 addObject:v17];

    [(APSUserCourier *)self _writePubSubMessagetoConnection:v17 messageID:v19 token:v6 connectionType:[(APSPubSubRequest *)v17 connectionType]];
    [(APSUserCourier *)self _retryRequestAfterDelay:v17];
  }
}

- (void)_writePubSubMessagetoConnection:(id)a3 messageID:(unsigned int)a4 token:(id)a5 connectionType:(int64_t)a6
{
  v10 = a3;
  v11 = a5;
  v12 = [v10 metadata];
  if (v12)
  {
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_1000AFF94;
    v13[3] = &unk_100188C80;
    v14 = v10;
    v15 = self;
    v18 = a6;
    v16 = v12;
    v17 = v11;
    v19 = a4;
    [(APSUserCourier *)self enumerateConnectedProtocolConnectionsOfType:a6 block:v13];
  }
}

- (void)_removePendingRequestsForProtocolConnection:(id)a3
{
  v4 = a3;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v5 = [(APSUserCourier *)self subscriptionRequests];
  v6 = [v5 mutableCopy];

  v7 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v15;
    do
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v15 != v9)
        {
          objc_enumerationMutation(v6);
        }

        if (v4)
        {
          v11 = *(*(&v14 + 1) + 8 * i);
          v12 = [v11 connectionType];
          if (v12 == [v4 connectionType])
          {
            [(APSUserCourier *)self _cancelRequest:v11];
            v13 = [(APSUserCourier *)self subscriptionRequests];
            [v13 removeObject:v11];
          }
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v8);
  }
}

- (void)_handlePubSubSubscriptionResponse:(id)a3 fromAgent:(BOOL)a4 onProtocolConnection:(id)a5
{
  v8 = a3;
  v68 = a5;
  v9 = [v8 objectForKeyedSubscript:@"APSProtocolPubSubToken"];
  v67 = [v8 objectForKeyedSubscript:@"APSProtocolPubSubTimeout"];
  v10 = [v8 objectForKeyedSubscript:@"APSProtocolPubSubStatus"];
  v11 = [v8 objectForKeyedSubscript:@"APSProtocolPubSubMessageID"];
  v69 = v8;
  v66 = [v8 objectForKeyedSubscript:@"APSProtocolPubSubPayload"];
  v73 = v11;
  v70 = v10;
  v71 = v9;
  if (v11)
  {
    v12 = v9 == 0;
  }

  else
  {
    v12 = 1;
  }

  if (!v12 && v10 != 0)
  {
    v92 = 0u;
    v93 = 0u;
    v90 = 0u;
    v91 = 0u;
    v16 = [(APSUserCourier *)self subscriptionRequests];
    v17 = [v16 countByEnumeratingWithState:&v90 objects:v106 count:16];
    v18 = v17;
    if (v17)
    {
      v19 = self;
      v20 = *v91;
      while (2)
      {
        v21 = 0;
        do
        {
          if (*v91 != v20)
          {
            objc_enumerationMutation(v16);
          }

          v22 = *(*(&v90 + 1) + 8 * v21);
          v23 = [v22 messageID];
          v24 = [v23 isEqualToNumber:v73];

          if (v24)
          {
            v18 = v22;
            goto LABEL_22;
          }

          v21 = (v21 + 1);
        }

        while (v18 != v21);
        v18 = [v16 countByEnumeratingWithState:&v90 objects:v106 count:16];
        if (v18)
        {
          continue;
        }

        break;
      }

LABEL_22:
      self = v19;
    }

    v65 = v18;
    if (!v18 && !a4)
    {
      v81 = +[APSLog pubSub];
      if (os_log_type_enabled(v81, OS_LOG_TYPE_FAULT))
      {
        sub_10010CBB0();
      }

      goto LABEL_53;
    }

    if (a4)
    {
      v25 = [(APSUserCourier *)self courierUser];
      v81 = [v25 pubSubName];
    }

    else
    {
      [(APSUserCourier *)self _cancelRequest:v18];
      v26 = [(APSUserCourier *)self subscriptionRequests];
      [v26 removeObject:v18];

      v81 = [v18 userName];
    }

    v27 = [(APSUserCourier *)self _isResponseForProxyDevice:v71];
    v28 = [v70 intValue];
    v29 = v28;
    if (v27)
    {
      if (v28 == 3)
      {
        v30 = +[APSLog pubSub];
        if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
        {
          v31 = [v18 retryCount];
          *buf = 138412802;
          v95 = self;
          v96 = 2112;
          v97 = v18;
          v98 = 2048;
          v99 = v31;
          _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_DEFAULT, "%@ The PubSub request %@ was told to retry.  Retry attempts left %lu", buf, 0x20u);
        }

        v15 = v67;
        if (v67)
        {
          goto LABEL_49;
        }

        v32 = +[APSLog pubSub];
        if (!os_log_type_enabled(v32, OS_LOG_TYPE_FAULT))
        {
LABEL_48:

          [(APSUserCourier *)self _retryRequestAfterDelay:v18];
          v15 = 0;
LABEL_49:
          [v15 doubleValue];
          v14 = v18;
          [(APSUserCourier *)self _retryRequestAfterDelay:v18 withDelay:?];
LABEL_54:

          goto LABEL_55;
        }

LABEL_47:
        sub_10010CC8C();
        goto LABEL_48;
      }

      v34 = [(APSUserCourier *)self _findConnectedClientWithToken:v71 onProtocolConnection:v68];
      [v34 sendPubSubChannelListResponse:v69];
      goto LABEL_52;
    }

    v33 = +[APSLog pubSub];
    v34 = v33;
    switch(v29)
    {
      case 4u:
        if (os_log_type_enabled(v33, OS_LOG_TYPE_FAULT))
        {
          sub_10010CCF4();
        }

        goto LABEL_52;
      case 3u:
        if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
        {
          v35 = [v18 retryCount];
          *buf = 138412802;
          v95 = self;
          v96 = 2112;
          v97 = v18;
          v98 = 2048;
          v99 = v35;
          _os_log_impl(&_mh_execute_header, v34, OS_LOG_TYPE_DEFAULT, "%@ The PubSub request %@ was told to retry.  Retry attempts left %lu", buf, 0x20u);
        }

        v15 = v67;
        if (v67)
        {
          goto LABEL_49;
        }

        v32 = +[APSLog pubSub];
        if (!os_log_type_enabled(v32, OS_LOG_TYPE_FAULT))
        {
          goto LABEL_48;
        }

        goto LABEL_47;
      case 1u:
        if (os_log_type_enabled(v33, OS_LOG_TYPE_FAULT))
        {
          sub_10010CC24();
        }

LABEL_52:

LABEL_53:
        v15 = v67;
        v14 = v65;
        goto LABEL_54;
    }

    if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v95 = self;
      _os_log_impl(&_mh_execute_header, v34, OS_LOG_TYPE_DEFAULT, "%@ Received a response message for PubSub request", buf, 0xCu);
    }

    v64 = [[PSChannelSubscriptionsResponsePayload alloc] initWithData:v66];
    [(PSChannelSubscriptionsResponsePayload *)v64 appChannelSubscriptionResponses];
    v86 = 0u;
    v87 = 0u;
    v88 = 0u;
    obj = v89 = 0u;
    v75 = [obj countByEnumeratingWithState:&v86 objects:v105 count:16];
    if (!v75)
    {
LABEL_81:

      goto LABEL_53;
    }

    v74 = *v87;
LABEL_60:
    v36 = 0;
    while (1)
    {
      if (*v87 != v74)
      {
        objc_enumerationMutation(obj);
      }

      v76 = v36;
      v37 = *(*(&v86 + 1) + 8 * v36);
      v38 = [v37 appId];
      v39 = [v37 subscriptionChannelResponses];
      v40 = [v37 unsubscriptionChannelResponses];
      [v39 addObjectsFromArray:v40];

      v77 = +[NSMutableArray array];
      v82 = 0u;
      v83 = 0u;
      v84 = 0u;
      v85 = 0u;
      v79 = v39;
      v41 = [v79 countByEnumeratingWithState:&v82 objects:v104 count:16];
      if (v41)
      {
        break;
      }

LABEL_77:

      if ([v77 count])
      {
        [(APSUserCourier *)self sendFailuresToClient:v77 pushTopic:v38];
      }

      v36 = v76 + 1;
      if ((v76 + 1) == v75)
      {
        v75 = [obj countByEnumeratingWithState:&v86 objects:v105 count:16];
        if (!v75)
        {
          goto LABEL_81;
        }

        goto LABEL_60;
      }
    }

    v42 = v41;
    v43 = *v83;
LABEL_65:
    v44 = 0;
    v78 = v42;
    while (1)
    {
      if (*v83 != v43)
      {
        objc_enumerationMutation(v79);
      }

      v45 = *(*(&v82 + 1) + 8 * v44);
      v46 = [v45 channelStatus];
      if (v46 == 1)
      {
        break;
      }

      if (!v46)
      {
        v47 = -[APSUserCourier _protoSubscriptionFailureToReadableFailure:](self, "_protoSubscriptionFailureToReadableFailure:", [v45 channelStatus]);
        v48 = [v45 channelId];
        v49 = [v48 base64EncodedStringWithOptions:0];

        v102[0] = @"channelID";
        v102[1] = @"reason";
        v103[0] = v49;
        v50 = [NSNumber numberWithInt:v47];
        v103[1] = v50;
        v51 = [NSDictionary dictionaryWithObjects:v103 forKeys:v102 count:2];

        v52 = v51;
        [v77 addObject:v51];
        v53 = +[APSLog pubSub];
        if (os_log_type_enabled(v53, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138413058;
          v95 = self;
          v96 = 2112;
          v97 = v49;
          v98 = 2112;
          v99 = v38;
          v100 = 1024;
          v101 = v47;
          _os_log_impl(&_mh_execute_header, v53, OS_LOG_TYPE_DEFAULT, "%@ The channel %@ on topic %@ failed to subscribe with reason %u Removing subscription...", buf, 0x26u);
        }

        v54 = objc_alloc(CUTWeakLinkClass());
        v55 = [(APSUserCourier *)self environment];
        v56 = [v55 name];
        v57 = [v54 initWithChannelID:v49 channelTopic:v38 environment:v56 tokenName:v81 checkpoint:0];

        v58 = [(APSUserCourier *)self subscriptionStore];
        [v58 deleteSubscription:v57];

        goto LABEL_74;
      }

LABEL_75:
      if (v42 == ++v44)
      {
        v42 = [v79 countByEnumeratingWithState:&v82 objects:v104 count:16];
        if (!v42)
        {
          goto LABEL_77;
        }

        goto LABEL_65;
      }
    }

    v59 = [v45 channelId];
    v80 = [v59 base64EncodedStringWithOptions:0];

    v60 = [(APSUserCourier *)self subscriptionStore];
    v61 = [(APSUserCourier *)self environment];
    [v61 name];
    v63 = v62 = v43;
    v49 = v80;
    v52 = [v60 lookupSubscriptionForChannelID:v80 pushTopic:v38 environment:v63 userName:v81];

    v43 = v62;
    v42 = v78;

    [v52 setCheckpoint:{objc_msgSend(v45, "channelSubscriptionCheckpoint")}];
    v57 = [(APSUserCourier *)self subscriptionStore];
    [v57 updateChannel:v52];
LABEL_74:

    goto LABEL_75;
  }

  v14 = +[APSLog pubSub];
  if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
  {
    sub_10010CB48();
  }

  v15 = v67;
LABEL_55:
}

- (BOOL)_isResponseForProxyDevice:(id)a3
{
  v10 = 0;
  v11 = &v10;
  v12 = 0x2020000000;
  v13 = 0;
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_1000B0DFC;
  v6[3] = &unk_100188CA8;
  v7 = self;
  v3 = a3;
  v8 = v3;
  v9 = &v10;
  [(APSUserCourier *)v7 enumerateConnectedProtocolConnections:v6];
  v4 = *(v11 + 24);

  _Block_object_dispose(&v10, 8);
  return v4;
}

- (int)_protoSubscriptionFailureToReadableFailure:(int)a3
{
  if (a3)
  {
    return -1;
  }

  else
  {
    return 0;
  }
}

- (void)sendFailuresToClient:(id)a3 pushTopic:(id)a4
{
  v6 = a3;
  v7 = a4;
  [(APSUserCourier *)self connectionServers];
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  obj = v22 = 0u;
  v8 = [obj countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (!v8)
  {
    goto LABEL_16;
  }

  v9 = v8;
  v10 = 0;
  v11 = *v20;
  do
  {
    for (i = 0; i != v9; i = i + 1)
    {
      if (*v20 != v11)
      {
        objc_enumerationMutation(obj);
      }

      v13 = *(*(&v19 + 1) + 8 * i);
      v14 = [v13 enabledTopics];
      v15 = [v13 opportunisticTopics];
      v16 = [v13 nonWakingTopics];
      if (([v14 containsObject:v7] & 1) != 0 || (objc_msgSend(v16, "containsObject:", v7) & 1) != 0 || (objc_msgSend(v15, "containsObject:", v7) & 1) != 0 || (objc_msgSend(v14, "containsObject:", @"*") & 1) != 0 || (objc_msgSend(v15, "containsObject:", @"*") & 1) != 0 || objc_msgSend(v16, "containsObject:", @"*"))
      {
        [v13 handleChannelSubscriptionFailures:v6 forTopic:v7];
        v10 = 1;
      }
    }

    v9 = [obj countByEnumeratingWithState:&v19 objects:v23 count:16];
  }

  while (v9);
  if ((v10 & 1) == 0)
  {
LABEL_16:
    v17 = +[APSLog pubSub];
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      sub_10010CD5C();
    }
  }
}

- (void)handleIgnoredTopics:(id)a3
{
  v4 = a3;
  [(APSUserCourier *)self _resetCheckpointForIgnoredTopics:v4];
  v5 = +[NSMutableArray array];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v6 = [v4 allObjects];
  v7 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v14;
    do
    {
      v10 = 0;
      do
      {
        if (*v14 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = [(APSUserCourier *)self allRegisteredChannelsForTopic:*(*(&v13 + 1) + 8 * v10)];
        [v5 addObjectsFromArray:v11];

        v10 = v10 + 1;
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v8);
  }

  if ([v5 count])
  {
    v12 = [(APSUserCourier *)self publicToken];
    [(APSUserCourier *)self _handlePubSubRequest:0 unsubscriptionChannels:v5 token:v12];
  }
}

- (void)_resetCheckpointForIgnoredTopics:(id)a3
{
  [a3 allObjects];
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  obj = v30 = 0u;
  v4 = [obj countByEnumeratingWithState:&v27 objects:v32 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v28;
    do
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v28 != v6)
        {
          objc_enumerationMutation(obj);
        }

        v8 = *(*(&v27 + 1) + 8 * i);
        v9 = [(APSUserCourier *)self subscriptionStore];
        v10 = [(APSUserCourier *)self environment];
        v11 = [v10 name];
        v12 = [(APSUserCourier *)self courierUser];
        v13 = [v12 pubSubName];
        v14 = [v9 allSubscriptionsForTopic:v8 environment:v11 userName:v13];

        v25 = 0u;
        v26 = 0u;
        v23 = 0u;
        v24 = 0u;
        v15 = v14;
        v16 = [v15 countByEnumeratingWithState:&v23 objects:v31 count:16];
        if (v16)
        {
          v17 = v16;
          v18 = *v24;
          do
          {
            for (j = 0; j != v17; j = j + 1)
            {
              if (*v24 != v18)
              {
                objc_enumerationMutation(v15);
              }

              v20 = *(*(&v23 + 1) + 8 * j);
              [v20 resetCheckpoint];
              v21 = [(APSUserCourier *)self subscriptionStore];
              [v21 updateChannel:v20];
            }

            v17 = [v15 countByEnumeratingWithState:&v23 objects:v31 count:16];
          }

          while (v17);
        }
      }

      v5 = [obj countByEnumeratingWithState:&v27 objects:v32 count:16];
    }

    while (v5);
  }
}

- (void)subscribeToPreviouslyIgnoredTopics:(id)a3
{
  v4 = a3;
  v5 = +[NSMutableArray array];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v6 = [v4 allObjects];
  v7 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v14;
    do
    {
      v10 = 0;
      do
      {
        if (*v14 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = [(APSUserCourier *)self allRegisteredChannelsForTopic:*(*(&v13 + 1) + 8 * v10)];
        [v5 addObjectsFromArray:v11];

        v10 = v10 + 1;
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v8);
  }

  if ([v5 count])
  {
    v12 = [(APSUserCourier *)self publicToken];
    [(APSUserCourier *)self _handlePubSubRequest:v5 unsubscriptionChannels:0 token:v12];
  }
}

- (id)_getNextMessageID
{
  v3 = [(APSUserCourier *)self currentMessageID];

  if (!v3)
  {
    [(APSUserCourier *)self setCurrentMessageID:&off_100197AD0];
  }

  v4 = [(APSUserCourier *)self currentMessageID];
  v5 = [v4 unsignedIntValue];

  v6 = [NSNumber numberWithInteger:v5 + 1];
  [(APSUserCourier *)self setCurrentMessageID:v6];

  return [(APSUserCourier *)self currentMessageID];
}

- (void)_handlePubSubUpdateMessage:(id)a3 onProtocolConnection:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v6 objectForKeyedSubscript:@"APSProtocolPubSubUpdatePayload"];
  v9 = [v6 objectForKeyedSubscript:@"APSProtocolPubSubUpdateToken"];
  v10 = +[APSLog pubSub];
  v11 = v10;
  if (v8)
  {
    v12 = v9 == 0;
  }

  else
  {
    v12 = 1;
  }

  if (v12)
  {
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      sub_10010CDC4();
    }
  }

  else
  {
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v17 = 138412290;
      v18 = v9;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Received pubsub update message for token %@", &v17, 0xCu);
    }

    if ([(APSUserCourier *)self _isResponseForProxyDevice:v9])
    {
      v11 = [(APSUserCourier *)self _findConnectedClientWithToken:v9 onProtocolConnection:v7];
      -[NSObject sendPubSubUpdateMessage:forConnectionType:](v11, "sendPubSubUpdateMessage:forConnectionType:", v6, [v7 connectionType]);
    }

    else
    {
      v11 = [[PSChannelSubscriptionsUpdatePayload alloc] initWithData:v8];
      v14 = [v11 subscriptionUpdates];
      v15 = [v14 count];

      if (v15)
      {
        [(APSUserCourier *)self _handleSubscriptionUpdateCommand:v11 token:v9 protocolConnection:v7];
      }

      else
      {
        v16 = [v11 appChannelUpdates];

        if (v16)
        {
          [(APSUserCourier *)self _handleChannelUpdateCommand:v11];
        }
      }
    }
  }
}

- (void)_handleSubscriptionUpdateCommand:(id)a3 token:(id)a4 protocolConnection:(id)a5
{
  v21 = a4;
  v8 = a5;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v9 = [a3 subscriptionUpdates];
  v10 = [v9 countByEnumeratingWithState:&v22 objects:v30 count:16];
  if (v10)
  {
    v12 = v10;
    v13 = *v23;
    *&v11 = 138412290;
    v20 = v11;
    do
    {
      for (i = 0; i != v12; i = i + 1)
      {
        if (*v23 != v13)
        {
          objc_enumerationMutation(v9);
        }

        if (![*(*(&v22 + 1) + 8 * i) subscriptionsStatus])
        {
          v28[0] = @"Environment";
          v15 = [(APSUserCourier *)self environment];
          v16 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v15 environmentType]);
          v29[0] = v16;
          v29[1] = &off_100197AE8;
          v28[1] = @"MessageType";
          v28[2] = @"ConnectionType";
          v17 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [v8 connectionType]);
          v29[2] = v17;
          v18 = [NSDictionary dictionaryWithObjects:v29 forKeys:v28 count:3];

          APSPubSubPowerLog();
          v19 = +[APSLog pubSub];
          if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
          {
            *buf = v20;
            v27 = self;
            _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "%@ Resending full subscription list in response to an incoming command 30.", buf, 0xCu);
          }

          [(APSUserCourier *)self _sendPubsubConnectMessageOnProtocolConnection:v8 token:v21];
        }
      }

      v12 = [v9 countByEnumeratingWithState:&v22 objects:v30 count:16];
    }

    while (v12);
  }
}

- (void)_handleChannelUpdateCommand:(id)a3
{
  v43 = 0u;
  v44 = 0u;
  v45 = 0u;
  v46 = 0u;
  obj = [a3 appChannelUpdates];
  v33 = [obj countByEnumeratingWithState:&v43 objects:v58 count:16];
  if (v33)
  {
    v32 = *v44;
    do
    {
      v4 = 0;
      do
      {
        if (*v44 != v32)
        {
          objc_enumerationMutation(obj);
        }

        v34 = v4;
        v5 = *(*(&v43 + 1) + 8 * v4);
        v38 = [v5 appId];
        v35 = +[NSMutableArray array];
        v39 = 0u;
        v40 = 0u;
        v41 = 0u;
        v42 = 0u;
        v36 = [v5 channelUpdates];
        v6 = [v36 countByEnumeratingWithState:&v39 objects:v57 count:16];
        if (v6)
        {
          v7 = v6;
          v37 = *v40;
          do
          {
            for (i = 0; i != v7; i = i + 1)
            {
              if (*v40 != v37)
              {
                objc_enumerationMutation(v36);
              }

              v9 = *(*(&v39 + 1) + 8 * i);
              v10 = [v9 channelId];
              v11 = [v10 base64EncodedStringWithOptions:0];

              v12 = [v9 channelStatus];
              if (v12 == 1)
              {
                v24 = +[APSLog pubSub];
                if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
                {
                  v25 = [v9 checkpoint];
                  *buf = 138413058;
                  v48 = self;
                  v49 = 2112;
                  v50 = v11;
                  v51 = 2048;
                  v52 = v25;
                  v53 = 2112;
                  v54 = v38;
                  _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "%@ Channel %@ was told to fastforward the checkpoint to %llu for topic %@", buf, 0x2Au);
                }

                v26 = objc_alloc(CUTWeakLinkClass());
                v27 = [(APSUserCourier *)self environment];
                v28 = [v27 name];
                v29 = [(APSUserCourier *)self courierUser];
                v30 = [v29 pubSubName];
                v15 = [v26 initWithChannelID:v11 channelTopic:v38 environment:v28 tokenName:v30 checkpoint:{objc_msgSend(v9, "checkpoint")}];

                v22 = [(APSUserCourier *)self subscriptionStore];
                [v22 updateChannel:v15];
              }

              else
              {
                if (v12)
                {
                  goto LABEL_20;
                }

                v13 = -[APSUserCourier _protoUpdateFailureToReadableFailure:](self, "_protoUpdateFailureToReadableFailure:", [v9 channelStatus]);
                v55[0] = @"channelID";
                v55[1] = @"reason";
                v56[0] = v11;
                v14 = [NSNumber numberWithInt:v13];
                v56[1] = v14;
                v15 = [NSDictionary dictionaryWithObjects:v56 forKeys:v55 count:2];

                [v35 addObject:v15];
                v16 = +[APSLog pubSub];
                if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 138413058;
                  v48 = self;
                  v49 = 2112;
                  v50 = v11;
                  v51 = 2112;
                  v52 = v38;
                  v53 = 1024;
                  LODWORD(v54) = v13;
                  _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "%@ The channel %@ on topic %@ does not exist %u Removing subscription...", buf, 0x26u);
                }

                v17 = objc_alloc(CUTWeakLinkClass());
                v18 = [(APSUserCourier *)self environment];
                v19 = [v18 name];
                v20 = [(APSUserCourier *)self courierUser];
                v21 = [v20 pubSubName];
                v22 = [v17 initWithChannelID:v11 channelTopic:v38 environment:v19 tokenName:v21 checkpoint:0];

                v23 = [(APSUserCourier *)self subscriptionStore];
                [v23 deleteSubscription:v22];
              }

LABEL_20:
            }

            v7 = [v36 countByEnumeratingWithState:&v39 objects:v57 count:16];
          }

          while (v7);
        }

        if ([v35 count])
        {
          [(APSUserCourier *)self sendFailuresToClient:v35 pushTopic:v38];
        }

        v4 = v34 + 1;
      }

      while ((v34 + 1) != v33);
      v33 = [obj countByEnumeratingWithState:&v43 objects:v58 count:16];
    }

    while (v33);
  }
}

- (int)_protoUpdateFailureToReadableFailure:(int)a3
{
  if (a3)
  {
    return -1;
  }

  else
  {
    return 0;
  }
}

- (BOOL)shouldDropPubSubMessageWithData:(id)a3 forTopic:(id)a4
{
  if (a3)
  {
    v6 = a4;
    v7 = a3;
    v8 = [[PSChannelSubscriptionsPushMetadata alloc] initWithData:v7];

    v9 = [(PSChannelSubscriptionsPushMetadata *)v8 channelId];
    v10 = [v9 base64EncodedStringWithOptions:0];

    v11 = [(APSUserCourier *)self subscriptionStore];
    v12 = [(APSUserCourier *)self environment];
    v13 = [v12 name];
    v14 = [(APSUserCourier *)self courierUser];
    v15 = [v14 pubSubName];
    v16 = [v11 lookupSubscriptionForChannelID:v10 pushTopic:v6 environment:v13 userName:v15];

    if (v16)
    {
      v17 = [(PSChannelSubscriptionsPushMetadata *)v8 checkpoint];
      if ([v16 checkpoint] <= v17)
      {
        v19 = 0;
        goto LABEL_11;
      }

      v18 = +[APSLog pubSub];
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        sub_10010CE2C();
      }
    }

    else
    {
      v18 = +[APSLog pubSub];
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        sub_10010CE94();
      }
    }

    v19 = 1;
LABEL_11:

    return v19;
  }

  return 0;
}

- (id)updateChannelForIncomingMessageWithData:(id)a3 forTopic:(id)a4
{
  v6 = a4;
  if (a3)
  {
    v7 = a3;
    v8 = [[PSChannelSubscriptionsPushMetadata alloc] initWithData:v7];

    v9 = [(PSChannelSubscriptionsPushMetadata *)v8 channelId];
    v10 = [v9 base64EncodedStringWithOptions:0];

    v21 = [(PSChannelSubscriptionsPushMetadata *)v8 checkpoint];
    v11 = [(APSUserCourier *)self subscriptionStore];
    v12 = [(APSUserCourier *)self environment];
    v13 = [v12 name];
    v14 = [(APSUserCourier *)self courierUser];
    v15 = [v14 pubSubName];
    v16 = [v11 lookupSubscriptionForChannelID:v10 pushTopic:v6 environment:v13 userName:v15];

    if (v16)
    {
      [v16 setCheckpoint:v21];
      v17 = [(APSUserCourier *)self subscriptionStore];
      [v17 updateChannel:v16];

      v18 = v10;
    }

    else
    {
      v19 = +[APSLog pubSub];
      if (os_log_type_enabled(v19, OS_LOG_TYPE_FAULT))
      {
        *buf = 138412802;
        v23 = self;
        v24 = 2112;
        v25 = v6;
        v26 = 2112;
        v27 = v10;
        _os_log_fault_impl(&_mh_execute_header, v19, OS_LOG_TYPE_FAULT, "%@ We received a pubsub update for a topic we dont have a subscription for!  topic: %@ channelID: %@", buf, 0x20u);
      }

      v18 = 0;
    }
  }

  else
  {
    v18 = 0;
  }

  return v18;
}

- (void)_sendProxyChannelList:(id)a3 onConnectionType:(int64_t)a4
{
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_1000B2558;
  v6[3] = &unk_1001870A0;
  v7 = self;
  v8 = a3;
  v5 = v8;
  [(APSUserCourier *)v7 enumerateConnectedProtocolConnectionsOfType:a4 block:v6];
}

- (void)_requestClientPubSubChannelList:(id)a3 onProtocolConnection:(id)a4
{
  v5 = a3;
  [v5 sendPubSubChannelListRequestForConnectionType:{objc_msgSend(a4, "connectionType")}];
}

- (void)_handlePubSubChannelListRequestonProtocolConnection:(id)a3
{
  v4 = a3;
  v5 = [(APSUserCourier *)self publicToken];
  [(APSUserCourier *)self _sendPubsubConnectMessageOnProtocolConnection:v4 token:v5];
}

- (void)_cancelRequest:(id)a3
{
  v5 = a3;
  v3 = [v5 timeoutSource];

  if (v3)
  {
    v4 = [v5 timeoutSource];
    dispatch_source_cancel(v4);
  }
}

@end