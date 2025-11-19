@interface APSCourierConnectionProtocolConnection
- (APSCourierConnectionManager)connectionManager;
- (APSCourierConnectionProtocolConnection)init;
- (BOOL)didPushCauseWake;
- (BOOL)generationMatches:(unint64_t)a3;
- (BOOL)isConnected;
- (BOOL)isPowerEfficientToUse;
- (BOOL)isPreferredInterface;
- (BOOL)isSuspended;
- (NSNumber)maxLargeMessageSize;
- (NSNumber)maxMessageSize;
- (NSString)description;
- (NSString)identifier;
- (NSString)serverHostname;
- (NSString)serverIPAddress;
- (id)aps_prettyDescription;
- (id)interfaceMonitor;
- (int)linkQuality;
- (int64_t)connectionType;
- (int64_t)interfaceConstraint;
- (void)addDataListener:(id)a3;
- (void)addStateListener:(id)a3;
- (void)connectionSetupComplete;
- (void)enumerateDataRecipient:(id)a3;
- (void)enumerateStateListeners:(id)a3;
- (void)noteConnected;
- (void)noteInvalidPresence;
- (void)removeDataListener:(id)a3;
- (void)removeStateListener:(id)a3;
- (void)sendConnectMessageWithToken:(id)a3 presenceFlags:(int)a4 certificates:(id)a5 nonce:(id)a6 signature:(id)a7 hostCertificateInfo:(id)a8 connectionErrors:(id)a9 withCompletion:(id)a10;
- (void)sendConnectMessageWithToken:(id)a3 state:(int)a4 presenceFlags:(int)a5 certificates:(id)a6 nonce:(id)a7 signature:(id)a8 hostCertificateInfo:(id)a9 withCompletion:(id)a10;
- (void)sendFilterMessageWithEnabledTopicsByHash:(id)a3 ignoredTopicsByHash:(id)a4 opportunisticTopicsByHash:(id)a5 nonWakingTopicsByHash:(id)a6 pausedTopicsByHash:(id)a7 saltsByTopic:(id)a8 token:(id)a9 version:(unint64_t)a10 expectsResponse:(BOOL)a11 withCompletion:(id)a12;
- (void)sendMessageTransportAcknowledgeMessage;
@end

@implementation APSCourierConnectionProtocolConnection

- (BOOL)isConnected
{
  v2 = self;
  v3 = [(APSCourierConnectionProtocolConnection *)self connectionManager];
  LOBYTE(v2) = [v3 isConnectedOnInterface:{-[APSCourierConnectionProtocolConnection interface](v2, "interface")}];

  return v2;
}

- (APSCourierConnectionManager)connectionManager
{
  WeakRetained = objc_loadWeakRetained(&self->_connectionManager);

  return WeakRetained;
}

- (int64_t)interfaceConstraint
{
  v3 = [(APSCourierConnectionProtocolConnection *)self connectionManager];
  v4 = [v3 interfaceConstraintForInterface:{-[APSCourierConnectionProtocolConnection interface](self, "interface")}];

  return v4;
}

- (NSString)identifier
{
  v2 = [(APSCourierConnectionProtocolConnection *)self interface];

  return sub_1000067F8(v2);
}

- (NSString)description
{
  v3 = objc_opt_class();
  v4 = sub_1000067F8([(APSCourierConnectionProtocolConnection *)self interface]);
  v5 = [NSString stringWithFormat:@"<%@: %p %@>", v3, self, v4];;

  return v5;
}

- (id)aps_prettyDescription
{
  v3 = [(APSCourierConnectionProtocolConnection *)self connectionManager];
  v4 = [v3 connectionTimeForInterface:self->_interface];

  v5 = sub_1000067F8(self->_interface);
  if (v4)
  {
    +[NSDate timeIntervalSinceReferenceDate];
    v7 = v6;
    [v4 doubleValue];
    v9 = v7 - v8;
  }

  else
  {
    v9 = 0.0;
  }

  if ([(APSCourierConnectionProtocolConnection *)self isConnected])
  {
    v10 = @"YES";
  }

  else
  {
    v10 = @"NO";
  }

  v11 = [(APSCourierConnectionProtocolConnection *)self serverIPAddress];
  v12 = [(APSCourierConnectionProtocolConnection *)self serverHostname];
  v13 = [NSString stringWithFormat:@"<%@ connectedFor: %.1fs; isConnected: %@; serverIPAddress: %@; serverHostname: %@; linkQuality: %d>", v5, *&v9, v10, v11, v12, [(APSCourierConnectionProtocolConnection *)self linkQuality]];;

  return v13;
}

- (NSString)serverIPAddress
{
  v3 = [(APSCourierConnectionProtocolConnection *)self connectionManager];
  v4 = [v3 serverIPAddressForInterface:{-[APSCourierConnectionProtocolConnection interface](self, "interface")}];

  return v4;
}

- (NSString)serverHostname
{
  v3 = [(APSCourierConnectionProtocolConnection *)self connectionManager];
  v4 = [v3 serverHostnameForInterface:{-[APSCourierConnectionProtocolConnection interface](self, "interface")}];

  return v4;
}

- (int)linkQuality
{
  v2 = [(APSCourierConnectionProtocolConnection *)self interfaceMonitor];
  v3 = [v2 linkQuality];

  return v3;
}

- (id)interfaceMonitor
{
  v3 = [(APSCourierConnectionProtocolConnection *)self connectionManager];
  v4 = [v3 pcInterfaceMonitorOnInterface:{-[APSCourierConnectionProtocolConnection interface](self, "interface")}];

  return v4;
}

- (int64_t)connectionType
{
  result = self->_interface;
  if (result >= 2)
  {
    v4 = +[APSLog courier];
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      sub_10010CABC(self, v4);
    }

    return 0;
  }

  return result;
}

- (void)sendMessageTransportAcknowledgeMessage
{
  v3 = [(APSCourierConnectionProtocolConnection *)self connectionManager];
  [v3 sendMessageTransportAcknowledgeMessageOnInterface:{-[APSCourierConnectionProtocolConnection interface](self, "interface")}];
}

- (BOOL)isPreferredInterface
{
  v2 = self;
  v3 = [(APSCourierConnectionProtocolConnection *)self connectionManager];
  v4 = [v3 preferredInterface];
  LOBYTE(v2) = v4 == [(APSCourierConnectionProtocolConnection *)v2 interface];

  return v2;
}

- (APSCourierConnectionProtocolConnection)init
{
  v8.receiver = self;
  v8.super_class = APSCourierConnectionProtocolConnection;
  v2 = [(APSCourierConnectionProtocolConnection *)&v8 init];
  if (v2)
  {
    v3 = [NSHashTable hashTableWithOptions:517];
    stateListeners = v2->_stateListeners;
    v2->_stateListeners = v3;

    v5 = [NSHashTable hashTableWithOptions:517];
    dataListeners = v2->_dataListeners;
    v2->_dataListeners = v5;
  }

  return v2;
}

- (void)enumerateStateListeners:(id)a3
{
  v4 = a3;
  v14 = 0;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v5 = self->_stateListeners;
  v6 = [(NSHashTable *)v5 countByEnumeratingWithState:&v10 objects:v15 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v11;
LABEL_3:
    v9 = 0;
    while (1)
    {
      if (*v11 != v8)
      {
        objc_enumerationMutation(v5);
      }

      v4[2](v4, *(*(&v10 + 1) + 8 * v9), &v14);
      if (v14)
      {
        break;
      }

      if (v7 == ++v9)
      {
        v7 = [(NSHashTable *)v5 countByEnumeratingWithState:&v10 objects:v15 count:16];
        if (v7)
        {
          goto LABEL_3;
        }

        break;
      }
    }
  }
}

- (void)enumerateDataRecipient:(id)a3
{
  v4 = a3;
  v14 = 0;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v5 = self->_dataListeners;
  v6 = [(NSHashTable *)v5 countByEnumeratingWithState:&v10 objects:v15 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v11;
LABEL_3:
    v9 = 0;
    while (1)
    {
      if (*v11 != v8)
      {
        objc_enumerationMutation(v5);
      }

      v4[2](v4, *(*(&v10 + 1) + 8 * v9), &v14);
      if (v14)
      {
        break;
      }

      if (v7 == ++v9)
      {
        v7 = [(NSHashTable *)v5 countByEnumeratingWithState:&v10 objects:v15 count:16];
        if (v7)
        {
          goto LABEL_3;
        }

        break;
      }
    }
  }
}

- (void)addStateListener:(id)a3
{
  v4 = a3;
  v5 = [(APSCourierConnectionProtocolConnection *)self stateListeners];
  [v5 addObject:v4];
}

- (void)removeStateListener:(id)a3
{
  v4 = a3;
  v5 = [(APSCourierConnectionProtocolConnection *)self stateListeners];
  [v5 removeObject:v4];
}

- (void)addDataListener:(id)a3
{
  v4 = a3;
  v5 = [(APSCourierConnectionProtocolConnection *)self dataListeners];
  [v5 addObject:v4];
}

- (void)removeDataListener:(id)a3
{
  v4 = a3;
  v5 = [(APSCourierConnectionProtocolConnection *)self dataListeners];
  [v5 removeObject:v4];
}

- (BOOL)isSuspended
{
  v2 = self;
  v3 = [(APSCourierConnectionProtocolConnection *)self connectionManager];
  LOBYTE(v2) = [v3 isSuspendedOnInterface:{-[APSCourierConnectionProtocolConnection interface](v2, "interface")}];

  return v2;
}

- (BOOL)isPowerEfficientToUse
{
  v2 = [(APSCourierConnectionProtocolConnection *)self interfaceMonitor];
  v3 = [v2 isRadioHot];

  return v3;
}

- (BOOL)didPushCauseWake
{
  v2 = self;
  v3 = [(APSCourierConnectionProtocolConnection *)self connectionManager];
  v4 = [v3 courierConnection];
  LOBYTE(v2) = [v4 didPushCauseWakeOnInterface:{-[APSCourierConnectionProtocolConnection interface](v2, "interface")}];

  return v2;
}

- (NSNumber)maxMessageSize
{
  v3 = [(APSCourierConnectionProtocolConnection *)self connectionManager];
  v4 = [v3 maxMessageSizeForInterface:{-[APSCourierConnectionProtocolConnection interface](self, "interface")}];

  return v4;
}

- (NSNumber)maxLargeMessageSize
{
  v3 = [(APSCourierConnectionProtocolConnection *)self connectionManager];
  v4 = [v3 maxLargeMessageSizeForInterface:{-[APSCourierConnectionProtocolConnection interface](self, "interface")}];

  return v4;
}

- (void)noteConnected
{
  v3 = [(APSCourierConnectionProtocolConnection *)self connectionManager];
  [v3 markInitiallyConnectedOnInterface:{-[APSCourierConnectionProtocolConnection interface](self, "interface")}];
}

- (void)connectionSetupComplete
{
  v3 = [(APSCourierConnectionProtocolConnection *)self connectionManager];
  v4 = [(APSCourierConnectionProtocolConnection *)self interface];
  v5 = [(APSCourierConnectionProtocolConnection *)self connectionManager];
  v6 = [v5 environment];
  LODWORD(v4) = [v3 _shouldOffloadToAOP:v4 environment:v6];

  if (v4)
  {
    v7 = +[APSLog courier];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v12 = self;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "%@: We're currently offloading to AOP, forwarding keep alive.", buf, 0xCu);
    }

    v8 = [(APSCourierConnectionProtocolConnection *)self connectionManager];
    v9 = [v8 connectionOffloader];
    [v9 offloadKeepAlive:{-[APSCourierConnectionProtocolConnection interface](self, "interface")}];
  }

  else
  {
    v10 = [(APSCourierConnectionProtocolConnection *)self connectionManager];
    [v10 _delayedPerformKeepAliveOnInterface:{-[APSCourierConnectionProtocolConnection interface](self, "interface")}];
  }
}

- (void)noteInvalidPresence
{
  v3 = [(APSCourierConnectionProtocolConnection *)self connectionManager];
  v2 = [v3 connectionRetryManager];
  [v2 notePresenceFailure];
}

- (BOOL)generationMatches:(unint64_t)a3
{
  v5 = [(APSCourierConnectionProtocolConnection *)self connectionManager];
  LOBYTE(a3) = [v5 generationMatches:a3 forInterface:{-[APSCourierConnectionProtocolConnection interface](self, "interface")}];

  return a3;
}

- (void)sendFilterMessageWithEnabledTopicsByHash:(id)a3 ignoredTopicsByHash:(id)a4 opportunisticTopicsByHash:(id)a5 nonWakingTopicsByHash:(id)a6 pausedTopicsByHash:(id)a7 saltsByTopic:(id)a8 token:(id)a9 version:(unint64_t)a10 expectsResponse:(BOOL)a11 withCompletion:(id)a12
{
  v30 = a12;
  v18 = a9;
  v19 = a7;
  v20 = a6;
  v21 = a5;
  v22 = a4;
  v23 = a3;
  v31 = [(APSCourierConnectionProtocolConnection *)self connectionManager];
  v24 = [v23 allKeys];

  v25 = [v22 allKeys];

  v26 = [v21 allKeys];

  v27 = [v20 allKeys];

  v28 = [v19 allKeys];

  LOBYTE(v29) = a11;
  [v31 sendFilterMessageWithEnabledHashes:v24 ignoredHashes:v25 opportunisticHashes:v26 nonWakingHashes:v27 pausedHashes:v28 token:v18 version:a10 expectsResponse:v29 onInterface:-[APSCourierConnectionProtocolConnection interface](self withCompletion:{"interface"), v30}];
}

- (void)sendConnectMessageWithToken:(id)a3 presenceFlags:(int)a4 certificates:(id)a5 nonce:(id)a6 signature:(id)a7 hostCertificateInfo:(id)a8 connectionErrors:(id)a9 withCompletion:(id)a10
{
  v44 = a9;
  v43 = a10;
  v42 = a8;
  v41 = a7;
  v40 = a6;
  v39 = a5;
  v38 = a3;
  v16 = [(APSCourierConnectionProtocolConnection *)self connectionManager];
  [v16 currentKeepAliveIntervalOnInterface:{-[APSCourierConnectionProtocolConnection interface](self, "interface")}];
  v18 = llround(v17 / 60.0);

  v19 = [(APSCourierConnectionProtocolConnection *)self connectionManager];
  v20 = [v19 currentKeepAliveStateOnInterface:{-[APSCourierConnectionProtocolConnection interface](self, "interface")}];

  v21 = [[APSKeepAliveMetadata alloc] initWithUsingWWAN:[(APSCourierConnectionProtocolConnection *)self interface]== 0 keepAliveInterval:v18 keepAliveState:v20];
  [(APSCourierConnectionProtocolConnection *)self interface];
  if (v44)
  {
    v22 = [(APSCourierConnectionProtocolConnection *)self connectionManager];
    [v22 addConnectionFailureReasons:v44 onInterface:{-[APSCourierConnectionProtocolConnection interface](self, "interface")}];
  }

  v32 = [(APSCourierConnectionProtocolConnection *)self connectionManager];
  [(APSCourierConnectionProtocolConnection *)self interface];
  v37 = [(APSCourierConnectionProtocolConnection *)self connectionManager];
  v23 = [v37 redirectCount];
  v36 = [(APSCourierConnectionProtocolConnection *)self connectionManager];
  v35 = [v36 tcpHandshakeTimeMillisecondsOnInterface:{-[APSCourierConnectionProtocolConnection interface](self, "interface")}];
  v24 = [v35 integerValue];
  v34 = [(APSCourierConnectionProtocolConnection *)self connectionManager];
  v33 = [v34 dnsResolutionTimeMillisecondsOnInterface:{-[APSCourierConnectionProtocolConnection interface](self, "interface")}];
  v25 = [v33 integerValue];
  v26 = [(APSCourierConnectionProtocolConnection *)self connectionManager];
  v27 = [v26 tlsHandshakeTimeMillisecondsOnInterface:{-[APSCourierConnectionProtocolConnection interface](self, "interface")}];
  v28 = [v27 integerValue];
  v29 = [(APSCourierConnectionProtocolConnection *)self connectionManager];
  v30 = [v29 consecutiveConnectionFailureReasonOnInterface:{-[APSCourierConnectionProtocolConnection interface](self, "interface")}];
  LOBYTE(v31) = v23;
  [v32 sendConnectMessageWithToken:v24 interface:v25 activeInterval:v28 presenceFlags:v40 metadata:v41 certificates:v42 nonce:v31 signature:v30 hostCertificateInfo:v43 redirectCount:-[APSCourierConnectionProtocolConnection interface](self tcpHandshakeTimeMilliseconds:"interface") dnsResolveTimeMilliseconds:? tlsHandshakeTimeMilliseconds:? consecutiveConnectionFailureReason:? withCompletion:? onInterface:?];
}

- (void)sendConnectMessageWithToken:(id)a3 state:(int)a4 presenceFlags:(int)a5 certificates:(id)a6 nonce:(id)a7 signature:(id)a8 hostCertificateInfo:(id)a9 withCompletion:(id)a10
{
  v28 = a10;
  v15 = a9;
  v16 = a8;
  v17 = a7;
  v18 = a6;
  v19 = a3;
  v20 = [(APSCourierConnectionProtocolConnection *)self connectionManager];
  [v20 currentKeepAliveIntervalOnInterface:{-[APSCourierConnectionProtocolConnection interface](self, "interface")}];
  v22 = llround(v21 / 60.0);

  v23 = [(APSCourierConnectionProtocolConnection *)self connectionManager];
  v31 = [v23 currentKeepAliveStateOnInterface:{-[APSCourierConnectionProtocolConnection interface](self, "interface")}];

  v24 = [[APSKeepAliveMetadata alloc] initWithUsingWWAN:[(APSCourierConnectionProtocolConnection *)self interface]== 0 keepAliveInterval:v22 keepAliveState:v31];
  v25 = [(APSCourierConnectionProtocolConnection *)self connectionManager];
  v26 = [(APSCourierConnectionProtocolConnection *)self connectionManager];
  LOBYTE(v27) = [v26 redirectCount];
  [v25 sendConnectMessageWithToken:v19 state:a4 presenceFlags:a5 metadata:v24 certificates:v18 nonce:v17 signature:v16 hostCertificateInfo:v15 redirectCount:v27 withCompletion:v28 onInterface:{-[APSCourierConnectionProtocolConnection interface](self, "interface")}];
}

@end