@interface APSIDSProxyManager
+ (id)_idsSendQueue;
- (APSIDSProxyManager)init;
- (APSIDSProxyManagerDelegate)delegate;
- (BOOL)canUseProxy;
- (id)_recipientDevice;
- (void)__assertWiFiIfPossible;
- (void)_assertWiFiIfPossible;
- (void)_checkNearbyDevices:(id)devices;
- (void)_deviceNotFoundTimerFired;
- (void)_flushDeviceNotFoundMessageQueue;
- (void)_onQueue_checkNearbyDevices:(id)devices;
- (void)_reportProxyMessages;
- (void)_retrieveAllDevicesAndDo:(id)do;
- (void)_scheduleDeviceNotFoundTimer;
- (void)_sendDaemonAliveMessage;
- (void)_startPowerLoggingMessages;
- (void)_stopPowerLoggingMessages;
- (void)_updateTimerIfNecessaryWithDevices:(id)devices;
- (void)dealloc;
- (void)removeAllPendingAPSMessages;
- (void)removeListener:(id)listener environment:(id)environment;
- (void)sendAppTokenGenerateResponse:(id)response error:(id)error guid:(id)guid environmentName:(id)name;
- (void)sendExpiredNonceWithServerTime:(id)time shouldRollToken:(BOOL)token guid:(id)guid environmentName:(id)name;
- (void)sendFilterWithEnvironmentName:(id)name guid:(id)guid enabledTopics:(id)topics ignoredTopics:(id)ignoredTopics opportunisticTopics:(id)opportunisticTopics nonWakingTopics:(id)wakingTopics topicSalts:(id)salts;
- (void)sendInactiveWithEnvironmentName:(id)name guid:(id)guid;
- (void)sendLargeMessageSize:(unint64_t)size guid:(id)guid environmentName:(id)name;
- (void)sendMessage:(id)message guid:(id)guid environmentName:(id)name;
- (void)sendMessageSize:(unint64_t)size guid:(id)guid environmentName:(id)name;
- (void)sendPresenceWithEnvironmentName:(id)name guid:(id)guid token:(id)token hwVersion:(id)version swVersion:(id)swVersion swBuild:(id)build certificates:(id)certificates nonce:(id)self0 signature:(id)self1 additionalFlags:(int)self2 hostCertificateInfo:(id)self3;
- (void)sendProxyMessage:(id)message forAPSMessage:(id)sMessage;
- (void)sendPubSubChannelListRequest:(int64_t)request environmentName:(id)name guid:(id)guid;
- (void)sendPubSubChannelListResponse:(id)response environmentName:(id)name guid:(id)guid;
- (void)sendPubSubUpdateMessage:(id)message connectionType:(int64_t)type environmentName:(id)name guid:(id)guid;
- (void)sendPushToken:(id)token guid:(id)guid environmentName:(id)name;
- (void)sendReceivedPush:(id)push forConnectionType:(int64_t)type generation:(unint64_t)generation guid:(id)guid environmentName:(id)name;
- (void)sendReversePushResponse:(int64_t)response messageGUID:(id)d messageId:(unint64_t)id guid:(id)guid environmentName:(id)name;
- (void)service:(id)service account:(id)account identifier:(id)identifier didSendWithSuccess:(BOOL)success error:(id)error;
- (void)service:(id)service account:(id)account incomingData:(id)data fromID:(id)d context:(id)context;
- (void)service:(id)service devicesChanged:(id)changed;
- (void)service:(id)service didSwitchActivePairedDevice:(id)device acknowledgementBlock:(id)block;
- (void)service:(id)service linkedDevicesChanged:(id)changed;
- (void)service:(id)service nearbyDevicesChanged:(id)changed;
- (void)setListener:(id)listener environment:(id)environment;
@end

@implementation APSIDSProxyManager

+ (id)_idsSendQueue
{
  if (qword_1001BF800 != -1)
  {
    sub_10010C154();
  }

  v3 = qword_1001BF7F8;

  return v3;
}

- (id)_recipientDevice
{
  [(APSIDSService *)self->_idsService linkedDevicesWithRelationship:3];
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v2 = v11 = 0u;
  v3 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v3)
  {
    v4 = *v9;
    while (2)
    {
      for (i = 0; i != v3; i = i + 1)
      {
        if (*v9 != v4)
        {
          objc_enumerationMutation(v2);
        }

        v6 = *(*(&v8 + 1) + 8 * i);
        if ([v6 isActive])
        {
          v3 = v6;
          goto LABEL_11;
        }
      }

      v3 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
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

- (APSIDSProxyManager)init
{
  v11.receiver = self;
  v11.super_class = APSIDSProxyManager;
  v2 = [(APSIDSProxyManager *)&v11 init];
  if (v2)
  {
    v3 = CUTWeakLinkClass();
    [(APSIDSProxyManager *)v2 _assertWiFiIfPossible];
    v4 = +[NSMutableArray array];
    deviceNotFoundMessageQueue = v2->_deviceNotFoundMessageQueue;
    v2->_deviceNotFoundMessageQueue = v4;

    v6 = dispatch_get_global_queue(0, 0);
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_10008962C;
    v8[3] = &unk_100188608;
    v10 = v3;
    v9 = v2;
    dispatch_async(v6, v8);
  }

  return v2;
}

- (void)dealloc
{
  [(APSIDSService *)self->_idsService removeDelegate:self];
  v3.receiver = self;
  v3.super_class = APSIDSProxyManager;
  [(APSIDSProxyManager *)&v3 dealloc];
}

- (BOOL)canUseProxy
{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    nearby = self->_nearby;
    v6 = 138412802;
    if (nearby)
    {
      v4 = @"YES";
    }

    else
    {
      v4 = @"NO";
    }

    selfCopy = self;
    v8 = 2112;
    v9 = @"NO";
    v10 = 2112;
    v11 = v4;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "%@ canUseProxy: %@ isNearby: %@", &v6, 0x20u);
  }

  return 0;
}

- (void)setListener:(id)listener environment:(id)environment
{
  listenerCopy = listener;
  environmentCopy = environment;
  environmentToListener = self->_environmentToListener;
  if (!environmentToListener)
  {
    v8 = +[NSMapTable strongToWeakObjectsMapTable];
    v9 = self->_environmentToListener;
    self->_environmentToListener = v8;

    environmentToListener = self->_environmentToListener;
  }

  name = [environmentCopy name];
  [(NSMapTable *)environmentToListener setObject:listenerCopy forKey:name];
}

- (void)removeListener:(id)listener environment:(id)environment
{
  environmentCopy = environment;
  environmentToListener = self->_environmentToListener;
  listenerCopy = listener;
  name = [environmentCopy name];
  v9 = [(NSMapTable *)environmentToListener objectForKey:name];

  if (v9 == listenerCopy)
  {
    v10 = self->_environmentToListener;
    name2 = [environmentCopy name];
    [(NSMapTable *)v10 removeObjectForKey:name2];

    if (![(NSMapTable *)self->_environmentToListener count])
    {
      v12 = self->_environmentToListener;
      self->_environmentToListener = 0;
    }
  }
}

- (void)sendProxyMessage:(id)message forAPSMessage:(id)sMessage
{
  messageCopy = message;
  sMessageCopy = sMessage;
  v8 = APSEncodeDictionary();
  if (v8)
  {
    v9 = [messageCopy objectForKey:@"c"];
    v10 = v9;
    v11 = &off_100197830;
    if (v9)
    {
      v11 = v9;
    }

    v12 = v11;

    mainQueue_outgoingPowerLogDictionary = [(APSIDSProxyManager *)self mainQueue_outgoingPowerLogDictionary];
    v14 = [mainQueue_outgoingPowerLogDictionary objectForKeyedSubscript:v12];

    mainQueue_outgoingPowerLogDictionary2 = [(APSIDSProxyManager *)self mainQueue_outgoingPowerLogDictionary];
    v16 = mainQueue_outgoingPowerLogDictionary2;
    if (v14)
    {
      v17 = [mainQueue_outgoingPowerLogDictionary2 objectForKeyedSubscript:v12];
      integerValue = [v17 integerValue];

      v16 = [NSNumber numberWithInteger:integerValue + 1];
      mainQueue_outgoingPowerLogDictionary3 = [(APSIDSProxyManager *)self mainQueue_outgoingPowerLogDictionary];
      [mainQueue_outgoingPowerLogDictionary3 setObject:v16 forKeyedSubscript:v12];
    }

    else
    {
      [mainQueue_outgoingPowerLogDictionary2 setObject:&off_100197848 forKeyedSubscript:v12];
    }

    _idsSendQueue = [objc_opt_class() _idsSendQueue];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100089C78;
    block[3] = &unk_1001886B0;
    block[4] = self;
    v23 = messageCopy;
    v24 = v8;
    v25 = v12;
    v26 = sMessageCopy;
    v21 = v12;
    dispatch_async(_idsSendQueue, block);
  }

  else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    selfCopy = self;
    v29 = 2112;
    v30 = messageCopy;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "%@ got nil data when encoding message %@", buf, 0x16u);
  }
}

- (void)_scheduleDeviceNotFoundTimer
{
  deviceNotFoundTimer = [(APSIDSProxyManager *)self deviceNotFoundTimer];

  if (!deviceNotFoundTimer)
  {
    v4 = [[PCPersistentTimer alloc] initWithTimeInterval:@"APSIDSProxyManager" serviceIdentifier:self target:"_deviceNotFoundTimerFired" selector:0 userInfo:120.0];
    [(APSIDSProxyManager *)self setDeviceNotFoundTimer:v4];

    deviceNotFoundTimer2 = [(APSIDSProxyManager *)self deviceNotFoundTimer];
    v6 = +[NSRunLoop mainRunLoop];
    [deviceNotFoundTimer2 scheduleInRunLoop:v6];

    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      v7 = 138412290;
      selfCopy = self;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "%@ scheduling timer to clean device not found queue.", &v7, 0xCu);
    }
  }
}

- (void)_deviceNotFoundTimerFired
{
  deviceNotFoundTimer = [(APSIDSProxyManager *)self deviceNotFoundTimer];
  [deviceNotFoundTimer invalidate];

  [(APSIDSProxyManager *)self setDeviceNotFoundTimer:0];
  deviceNotFoundMessageQueue = [(APSIDSProxyManager *)self deviceNotFoundMessageQueue];
  v5 = [deviceNotFoundMessageQueue count];

  if (v5)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_FAULT))
    {
      sub_10010C1B8(self);
    }

    deviceNotFoundMessageQueue2 = [(APSIDSProxyManager *)self deviceNotFoundMessageQueue];
    [deviceNotFoundMessageQueue2 removeAllObjects];
  }
}

- (void)_flushDeviceNotFoundMessageQueue
{
  obj = [(APSIDSProxyManager *)self deviceNotFoundMessageQueue];
  objc_sync_enter(obj);
  v3 = &_os_log_default;
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    deviceNotFoundMessageQueue = [(APSIDSProxyManager *)self deviceNotFoundMessageQueue];
    *buf = 134217984;
    v20 = [deviceNotFoundMessageQueue count];
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "%lu messages to redeliver.", buf, 0xCu);
  }

  deviceNotFoundMessageQueue2 = [(APSIDSProxyManager *)self deviceNotFoundMessageQueue];
  v6 = [deviceNotFoundMessageQueue2 copy];

  deviceNotFoundMessageQueue3 = [(APSIDSProxyManager *)self deviceNotFoundMessageQueue];
  [deviceNotFoundMessageQueue3 removeAllObjects];

  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v8 = v6;
  v9 = [v8 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v9)
  {
    v10 = *v15;
    do
    {
      for (i = 0; i != v9; i = i + 1)
      {
        if (*v15 != v10)
        {
          objc_enumerationMutation(v8);
        }

        v12 = *(*(&v14 + 1) + 8 * i);
        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v20 = v12;
          _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Resending pending proxy message %@", buf, 0xCu);
        }

        [(APSIDSProxyManager *)self sendProxyMessage:v12];
      }

      v9 = [v8 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v9);
  }

  objc_sync_exit(obj);
}

- (void)_sendDaemonAliveMessage
{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    selfCopy = self;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "%@ sending daemonAliveMessage - we need fresh presences", buf, 0xCu);
  }

  v3 = [NSDictionary dictionaryWithObjectsAndKeys:&off_100197860, @"c", 0];
  [(APSIDSProxyManager *)self sendProxyMessage:v3];
}

- (void)sendPushToken:(id)token guid:(id)guid environmentName:(id)name
{
  tokenCopy = token;
  guidCopy = guid;
  nameCopy = name;
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138413058;
    selfCopy = self;
    v14 = 2112;
    v15 = tokenCopy;
    v16 = 2112;
    v17 = nameCopy;
    v18 = 2112;
    v19 = guidCopy;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "%@ asked to send push token %@ with environment %@ and guid %@", buf, 0x2Au);
  }

  v11 = [NSDictionary dictionaryWithObjectsAndKeys:&off_100197878, @"c", guidCopy, @"pG", nameCopy, @"e", tokenCopy, @"t", 0];
  [(APSIDSProxyManager *)self sendProxyMessage:v11];
}

- (void)sendMessageSize:(unint64_t)size guid:(id)guid environmentName:(id)name
{
  guidCopy = guid;
  nameCopy = name;
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138413058;
    selfCopy = self;
    v14 = 2048;
    sizeCopy = size;
    v16 = 2112;
    v17 = nameCopy;
    v18 = 2112;
    v19 = guidCopy;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "%@ asked to send message size %lu with environment %@ and guid %@", buf, 0x2Au);
  }

  v10 = [NSNumber numberWithUnsignedInteger:size];
  v11 = [NSDictionary dictionaryWithObjectsAndKeys:&off_100197890, @"c", guidCopy, @"pG", nameCopy, @"e", v10, @"mS", 0];

  [(APSIDSProxyManager *)self sendProxyMessage:v11];
}

- (void)sendLargeMessageSize:(unint64_t)size guid:(id)guid environmentName:(id)name
{
  guidCopy = guid;
  nameCopy = name;
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138413058;
    selfCopy = self;
    v14 = 2048;
    sizeCopy = size;
    v16 = 2112;
    v17 = nameCopy;
    v18 = 2112;
    v19 = guidCopy;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "%@ asked to send large message size %lu with environment %@ and guid %@", buf, 0x2Au);
  }

  v10 = [NSNumber numberWithUnsignedInteger:size];
  v11 = [NSDictionary dictionaryWithObjectsAndKeys:&off_100197890, @"c", guidCopy, @"pG", nameCopy, @"e", v10, @"lS", 0];

  [(APSIDSProxyManager *)self sendProxyMessage:v11];
}

- (void)sendReceivedPush:(id)push forConnectionType:(int64_t)type generation:(unint64_t)generation guid:(id)guid environmentName:(id)name
{
  pushCopy = push;
  guidCopy = guid;
  nameCopy = name;
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138413058;
    selfCopy = self;
    v20 = 2112;
    v21 = pushCopy;
    v22 = 2112;
    v23 = nameCopy;
    v24 = 2112;
    v25 = guidCopy;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "%@ asked to send received push %@ with environment %@ and guid %@", buf, 0x2Au);
  }

  v15 = [NSNumber numberWithInteger:type];
  v16 = [NSNumber numberWithUnsignedInteger:generation];
  v17 = [NSDictionary dictionaryWithObjectsAndKeys:&off_1001978A8, @"c", guidCopy, @"pG", nameCopy, @"e", pushCopy, @"p", v15, @"i", v16, @"g", 0];

  [(APSIDSProxyManager *)self sendProxyMessage:v17];
}

- (void)sendPresenceWithEnvironmentName:(id)name guid:(id)guid token:(id)token hwVersion:(id)version swVersion:(id)swVersion swBuild:(id)build certificates:(id)certificates nonce:(id)self0 signature:(id)self1 additionalFlags:(int)self2 hostCertificateInfo:(id)self3
{
  nameCopy = name;
  guidCopy = guid;
  tokenCopy = token;
  versionCopy = version;
  swVersionCopy = swVersion;
  buildCopy = build;
  certificatesCopy = certificates;
  nonceCopy = nonce;
  signatureCopy = signature;
  infoCopy = info;
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138413314;
    selfCopy = self;
    v41 = 2112;
    v42 = nameCopy;
    v43 = 2112;
    v44 = guidCopy;
    v45 = 2112;
    v46 = versionCopy;
    v47 = 2112;
    v48 = tokenCopy;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "%@ asked to send presence with environment %@ guid %@ hwVersion %@ token %@", buf, 0x34u);
  }

  v25 = [NSNumber numberWithUnsignedInt:flags];
  v26 = guidCopy;
  v27 = v25;
  v28 = nameCopy;
  v29 = nonceCopy;
  v34 = nonceCopy;
  v30 = certificatesCopy;
  v33 = certificatesCopy;
  v31 = v26;
  v32 = [NSMutableDictionary dictionaryWithObjectsAndKeys:&off_1001978C0, @"c", v26, @"pG", v33, @"cc", v34, @"no", signatureCopy, @"si", nameCopy, @"e", v25, @"aF", 0];

  if (versionCopy)
  {
    [v32 setObject:versionCopy forKey:@"hw"];
  }

  if (swVersionCopy && buildCopy)
  {
    [v32 setObject:swVersionCopy forKey:@"sv"];
    [v32 setObject:buildCopy forKey:@"sb"];
  }

  if (tokenCopy)
  {
    [v32 setObject:tokenCopy forKey:@"t"];
  }

  [(APSIDSProxyManager *)self sendProxyMessage:v32];
}

- (void)sendFilterWithEnvironmentName:(id)name guid:(id)guid enabledTopics:(id)topics ignoredTopics:(id)ignoredTopics opportunisticTopics:(id)opportunisticTopics nonWakingTopics:(id)wakingTopics topicSalts:(id)salts
{
  nameCopy = name;
  guidCopy = guid;
  topicsCopy = topics;
  ignoredTopicsCopy = ignoredTopics;
  opportunisticTopicsCopy = opportunisticTopics;
  wakingTopicsCopy = wakingTopics;
  saltsCopy = salts;
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412802;
    selfCopy = self;
    v25 = 2112;
    v26 = nameCopy;
    v27 = 2112;
    v28 = guidCopy;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "%@ asked to send filter with environment %@ guid %@", buf, 0x20u);
    if (topicsCopy)
    {
LABEL_3:
      if (ignoredTopicsCopy)
      {
        goto LABEL_4;
      }

      goto LABEL_11;
    }
  }

  else if (topicsCopy)
  {
    goto LABEL_3;
  }

  topicsCopy = +[NSArray array];
  if (ignoredTopicsCopy)
  {
LABEL_4:
    if (opportunisticTopicsCopy)
    {
      goto LABEL_5;
    }

LABEL_12:
    opportunisticTopicsCopy = +[NSArray array];
    if (wakingTopicsCopy)
    {
      goto LABEL_6;
    }

    goto LABEL_13;
  }

LABEL_11:
  ignoredTopicsCopy = +[NSArray array];
  if (!opportunisticTopicsCopy)
  {
    goto LABEL_12;
  }

LABEL_5:
  if (wakingTopicsCopy)
  {
    goto LABEL_6;
  }

LABEL_13:
  wakingTopicsCopy = +[NSArray array];
LABEL_6:
  if (!saltsCopy)
  {
    saltsCopy = +[NSDictionary dictionary];
  }

  v22 = [NSDictionary dictionaryWithObjectsAndKeys:&off_1001978D8, @"c", guidCopy, @"pG", nameCopy, @"e", topicsCopy, @"eT", ignoredTopicsCopy, @"iT", opportunisticTopicsCopy, @"oT", wakingTopicsCopy, @"nT", saltsCopy, @"tSal", 0];
  [(APSIDSProxyManager *)self sendProxyMessage:v22];
}

- (void)sendPubSubChannelListResponse:(id)response environmentName:(id)name guid:(id)guid
{
  responseCopy = response;
  nameCopy = name;
  guidCopy = guid;
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    selfCopy = self;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "%@ asked to send pubsub channel list resposne", buf, 0xCu);
  }

  v11 = [NSDictionary dictionaryWithObjectsAndKeys:&off_100197908, @"c", responseCopy, @"p", nameCopy, @"e", guidCopy, @"pG", 0];
  [(APSIDSProxyManager *)self sendProxyMessage:v11];
}

- (void)sendPubSubUpdateMessage:(id)message connectionType:(int64_t)type environmentName:(id)name guid:(id)guid
{
  messageCopy = message;
  nameCopy = name;
  guidCopy = guid;
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    selfCopy = self;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "%@ asked to send pubsub update message", buf, 0xCu);
  }

  v13 = [NSNumber numberWithInteger:type];
  v14 = [NSDictionary dictionaryWithObjectsAndKeys:&off_100197920, @"c", messageCopy, @"p", v13, @"i", nameCopy, @"e", guidCopy, @"pG", 0];

  [(APSIDSProxyManager *)self sendProxyMessage:v14];
}

- (void)sendPubSubChannelListRequest:(int64_t)request environmentName:(id)name guid:(id)guid
{
  nameCopy = name;
  guidCopy = guid;
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    selfCopy = self;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "%@ asked to send pubsub channel request message", buf, 0xCu);
  }

  v10 = [NSNumber numberWithInteger:request];
  v11 = [NSDictionary dictionaryWithObjectsAndKeys:&off_100197938, @"c", v10, @"i", nameCopy, @"e", guidCopy, @"pG", 0];

  [(APSIDSProxyManager *)self sendProxyMessage:v11];
}

- (void)sendInactiveWithEnvironmentName:(id)name guid:(id)guid
{
  v5 = [NSDictionary dictionaryWithObjectsAndKeys:&off_100197950, @"c", guid, @"pG", name, @"e", 0];
  [(APSIDSProxyManager *)self sendProxyMessage:v5];
}

- (void)sendMessage:(id)message guid:(id)guid environmentName:(id)name
{
  nameCopy = name;
  guidCopy = guid;
  messageCopy = message;
  dictionaryRepresentation = [messageCopy dictionaryRepresentation];
  v12 = [NSDictionary dictionaryWithObjectsAndKeys:&off_1001979B0, @"c", guidCopy, @"pG", nameCopy, @"e", dictionaryRepresentation, @"rP", 0];

  [(APSIDSProxyManager *)self sendProxyMessage:v12 forAPSMessage:messageCopy];
}

- (void)sendReversePushResponse:(int64_t)response messageGUID:(id)d messageId:(unint64_t)id guid:(id)guid environmentName:(id)name
{
  nameCopy = name;
  guidCopy = guid;
  dCopy = d;
  v15 = [NSNumber numberWithInteger:response];
  v16 = [NSNumber numberWithUnsignedInteger:id];
  v17 = [NSDictionary dictionaryWithObjectsAndKeys:&off_1001979C8, @"c", guidCopy, @"pG", nameCopy, @"e", v15, @"r", v16, @"mI", dCopy, @"mG", 0];

  [(APSIDSProxyManager *)self sendProxyMessage:v17];
}

- (void)sendExpiredNonceWithServerTime:(id)time shouldRollToken:(BOOL)token guid:(id)guid environmentName:(id)name
{
  tokenCopy = token;
  timeCopy = time;
  nameCopy = name;
  guidCopy = guid;
  v12 = objc_opt_new();
  [v12 setObject:&off_1001979E0 forKey:@"c"];
  [v12 setObject:guidCopy forKey:@"pG"];

  [v12 setObject:nameCopy forKey:@"e"];
  if (timeCopy)
  {
    [v12 setObject:timeCopy forKey:@"st"];
  }

  if (tokenCopy)
  {
    v13 = [NSNumber numberWithBool:1];
    [v12 setObject:v13 forKey:@"rT"];
  }

  [(APSIDSProxyManager *)self sendProxyMessage:v12];
}

- (void)sendAppTokenGenerateResponse:(id)response error:(id)error guid:(id)guid environmentName:(id)name
{
  responseCopy = response;
  errorCopy = error;
  nameCopy = name;
  guidCopy = guid;
  v13 = objc_opt_new();
  [v13 setObject:&off_1001979F8 forKey:@"c"];
  [v13 setObject:guidCopy forKey:@"pG"];

  [v13 setObject:nameCopy forKey:@"e"];
  if (errorCopy)
  {
    v14 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [errorCopy code]);
    [v13 setObject:v14 forKey:@"er"];
  }

  if (responseCopy)
  {
    [v13 setObject:responseCopy forKey:@"r"];
  }

  [(APSIDSProxyManager *)self sendProxyMessage:v13];
}

- (void)removeAllPendingAPSMessages
{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    apsOutgoingMessageMap = self->_apsOutgoingMessageMap;
    v5 = 138412546;
    selfCopy = self;
    v7 = 2112;
    v8 = apsOutgoingMessageMap;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "%@ removed all pending messages in APSOutgoingMessageMap %@", &v5, 0x16u);
  }

  v4 = self->_apsOutgoingMessageMap;
  self->_apsOutgoingMessageMap = 0;
}

- (void)_startPowerLoggingMessages
{
  v3 = +[NSMutableDictionary dictionary];
  [(APSIDSProxyManager *)self setMainQueue_incomingPowerLogDictionary:v3];

  v4 = +[NSMutableDictionary dictionary];
  [(APSIDSProxyManager *)self setMainQueue_outgoingPowerLogDictionary:v4];

  powerLogTimer = [(APSIDSProxyManager *)self powerLogTimer];

  if (powerLogTimer)
  {
    powerLogTimer2 = [(APSIDSProxyManager *)self powerLogTimer];
    dispatch_source_cancel(powerLogTimer2);
  }

  v7 = dispatch_source_create(&_dispatch_source_type_timer, 0, 0, &_dispatch_main_q);
  [(APSIDSProxyManager *)self setPowerLogTimer:v7];

  powerLogTimer3 = [(APSIDSProxyManager *)self powerLogTimer];
  v9 = dispatch_time(0, 60000000000);
  dispatch_source_set_timer(powerLogTimer3, v9, 0xDF8475800uLL, 0);

  objc_initWeak(&location, self);
  powerLogTimer4 = [(APSIDSProxyManager *)self powerLogTimer];
  v12 = _NSConcreteStackBlock;
  v13 = 3221225472;
  v14 = sub_10008C65C;
  v15 = &unk_1001886D8;
  objc_copyWeak(&v16, &location);
  dispatch_source_set_event_handler(powerLogTimer4, &v12);

  v11 = [(APSIDSProxyManager *)self powerLogTimer:v12];
  dispatch_resume(v11);

  objc_destroyWeak(&v16);
  objc_destroyWeak(&location);
}

- (void)_reportProxyMessages
{
  mainQueue_incomingPowerLogDictionary = [(APSIDSProxyManager *)self mainQueue_incomingPowerLogDictionary];
  v4 = [mainQueue_incomingPowerLogDictionary count];

  if (v4)
  {
    mainQueue_incomingPowerLogDictionary2 = [(APSIDSProxyManager *)self mainQueue_incomingPowerLogDictionary];
    v6 = [mainQueue_incomingPowerLogDictionary2 copy];
    APSPowerLog();

    mainQueue_incomingPowerLogDictionary3 = [(APSIDSProxyManager *)self mainQueue_incomingPowerLogDictionary];
    [mainQueue_incomingPowerLogDictionary3 removeAllObjects];
  }

  mainQueue_outgoingPowerLogDictionary = [(APSIDSProxyManager *)self mainQueue_outgoingPowerLogDictionary];
  v9 = [mainQueue_outgoingPowerLogDictionary count];

  if (v9)
  {
    mainQueue_outgoingPowerLogDictionary2 = [(APSIDSProxyManager *)self mainQueue_outgoingPowerLogDictionary];
    v11 = [mainQueue_outgoingPowerLogDictionary2 copy];
    APSPowerLog();

    mainQueue_outgoingPowerLogDictionary3 = [(APSIDSProxyManager *)self mainQueue_outgoingPowerLogDictionary];
    [mainQueue_outgoingPowerLogDictionary3 removeAllObjects];
  }
}

- (void)_stopPowerLoggingMessages
{
  powerLogTimer = [(APSIDSProxyManager *)self powerLogTimer];
  dispatch_source_cancel(powerLogTimer);

  [(APSIDSProxyManager *)self setMainQueue_incomingPowerLogDictionary:0];

  [(APSIDSProxyManager *)self setMainQueue_outgoingPowerLogDictionary:0];
}

- (void)service:(id)service account:(id)account identifier:(id)identifier didSendWithSuccess:(BOOL)success error:(id)error
{
  successCopy = success;
  serviceCopy = service;
  accountCopy = account;
  identifierCopy = identifier;
  errorCopy = error;
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    v16 = @"NO";
    *buf = 138413058;
    selfCopy2 = self;
    if (successCopy)
    {
      v16 = @"YES";
    }

    v23 = 2112;
    v24 = identifierCopy;
    v25 = 2112;
    v26 = v16;
    v27 = 2112;
    v28 = errorCopy;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "%@ identifier %@ didSendWithSuccess %@ error %@", buf, 0x2Au);
  }

  if (!successCopy && self->_nearby && [(NSString *)self->_recentDaemonAliveGuid isEqualToString:identifierCopy])
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      selfCopy2 = self;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "%@ previous daemonAlive failed, resending one now", buf, 0xCu);
    }

    [(APSIDSProxyManager *)self _sendDaemonAliveMessage];
  }

  v17 = [(NSMutableDictionary *)self->_apsOutgoingMessageMap objectForKey:identifierCopy];
  v18 = v17;
  if (v17)
  {
    if (!successCopy)
    {
      originator = [v17 originator];
      v20 = APSError();
      [originator handleResult:v20 forSendingOutgoingMessageWithID:{objc_msgSend(v18, "messageID", errorCopy)}];
    }

    [(NSMutableDictionary *)self->_apsOutgoingMessageMap removeObjectForKey:identifierCopy];
  }
}

- (void)service:(id)service account:(id)account incomingData:(id)data fromID:(id)d context:(id)context
{
  serviceCopy = service;
  accountCopy = account;
  dataCopy = data;
  dCopy = d;
  contextCopy = context;
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412802;
    selfCopy4 = self;
    v119 = 2112;
    v120 = dataCopy;
    v121 = 2112;
    v122 = dCopy;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "%@ incomingData %@ fromID %@", buf, 0x20u);
  }

  v106 = dataCopy;
  v13 = APSDecodeDictionary();
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_10010C238(self);
    }

    v13 = 0;
  }

  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    selfCopy4 = self;
    v119 = 2112;
    v120 = v13;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "%@ received dictionary %@", buf, 0x16u);
  }

  v14 = [v13 objectForKey:@"c"];
  v15 = v14;
  v16 = &off_100197830;
  if (v14)
  {
    v16 = v14;
  }

  v17 = v16;

  v108 = [v13 objectForKey:@"pG"];
  v110 = [v13 objectForKey:@"e"];
  mainQueue_incomingPowerLogDictionary = [(APSIDSProxyManager *)self mainQueue_incomingPowerLogDictionary];
  v19 = [mainQueue_incomingPowerLogDictionary objectForKeyedSubscript:v17];
  v20 = v19 == 0;

  mainQueue_incomingPowerLogDictionary2 = [(APSIDSProxyManager *)self mainQueue_incomingPowerLogDictionary];
  v22 = mainQueue_incomingPowerLogDictionary2;
  if (v20)
  {
    [mainQueue_incomingPowerLogDictionary2 setObject:&off_100197848 forKeyedSubscript:v17];
  }

  else
  {
    v23 = [mainQueue_incomingPowerLogDictionary2 objectForKeyedSubscript:v17];
    integerValue = [v23 integerValue];

    v22 = [NSNumber numberWithInteger:integerValue + 1];
    mainQueue_incomingPowerLogDictionary3 = [(APSIDSProxyManager *)self mainQueue_incomingPowerLogDictionary];
    [mainQueue_incomingPowerLogDictionary3 setObject:v22 forKeyedSubscript:v17];
  }

  switch([v17 integerValue])
  {
    case 1uLL:
      v26 = [v13 objectForKey:@"cc"];
      v27 = [v13 objectForKey:@"ce"];
      v28 = v27;
      if (!v26 && v27)
      {
        v116 = v27;
        v26 = [NSArray arrayWithObjects:&v116 count:1];
      }

      v103 = [v13 objectForKey:@"no"];
      v102 = [v13 objectForKey:@"si"];
      v101 = [v13 objectForKey:@"t"];
      v100 = [v13 objectForKey:@"hw"];
      v99 = [v13 objectForKey:@"sv"];
      v29 = [v13 objectForKey:@"sb"];
      v30 = [v13 objectForKey:@"aF"];
      unsignedIntValue = [v30 unsignedIntValue];
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
      {
        WeakRetained = objc_loadWeakRetained(&self->_delegate);
        *buf = 138412546;
        selfCopy4 = self;
        v119 = 2112;
        v120 = WeakRetained;
        _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "%@ sending presence request to delegate %@", buf, 0x16u);
      }

      v33 = objc_loadWeakRetained(&self->_delegate);
      LODWORD(v98) = unsignedIntValue;
      [v33 proxyManager:self incomingPresenceWithGuid:v108 token:v101 hwVersion:v100 swVersion:v99 swBuild:v29 certificates:v26 nonce:v103 signature:v102 additionalFlags:v98 environmentName:v110];

      goto LABEL_157;
    case 2uLL:
      v34 = [v13 objectForKey:@"t"];
      if (v110)
      {
        v35 = [(NSMapTable *)self->_environmentToListener objectForKey:?];
      }

      else
      {
        v35 = 0;
      }

      if (objc_opt_respondsToSelector())
      {
        [v35 proxyManager:self incomingPushToken:v34 guid:v108 environmentName:v110];
      }

      goto LABEL_146;
    case 3uLL:
      v113 = 0u;
      v114 = 0u;
      v111 = 0u;
      v112 = 0u;
      v59 = self->_environmentToListener;
      v60 = [(NSMapTable *)v59 countByEnumeratingWithState:&v111 objects:v115 count:16];
      if (v60)
      {
        v61 = *v112;
        do
        {
          for (i = 0; i != v60; i = i + 1)
          {
            if (*v112 != v61)
            {
              objc_enumerationMutation(v59);
            }

            v63 = [(NSMapTable *)self->_environmentToListener objectForKey:*(*(&v111 + 1) + 8 * i)];
            if (objc_opt_respondsToSelector())
            {
              [v63 proxyManagerReceivedDaemonAliveNotification:self];
            }
          }

          v60 = [(NSMapTable *)v59 countByEnumeratingWithState:&v111 objects:v115 count:16];
        }

        while (v60);
      }

      goto LABEL_157;
    case 4uLL:
      v70 = [v13 objectForKey:@"eT"];
      v71 = [v13 objectForKey:@"iT"];
      v72 = [v13 objectForKey:@"oT"];
      v73 = [v13 objectForKey:@"nT"];
      v74 = [v13 objectForKey:@"tSal"];
      if (v110)
      {
        v75 = [(NSMapTable *)self->_environmentToListener objectForKey:?];
      }

      else
      {
        v75 = 0;
      }

      if (objc_opt_respondsToSelector())
      {
        [v75 proxyManager:self incomingFilterForGuid:v108 environmentName:v110 enabledTopics:v70 ignoredTopics:v71 opportunisticTopics:v72 nonWakingTopics:v73 topicSalts:v74];
      }

      goto LABEL_157;
    case 5uLL:
      if (v110)
      {
        v52 = [(NSMapTable *)self->_environmentToListener objectForKey:?];
      }

      else
      {
        v52 = 0;
      }

      if (objc_opt_respondsToSelector())
      {
        [v52 proxyManager:self inactiveReceivedForGuid:v108 environmentName:v110];
      }

      goto LABEL_87;
    case 6uLL:
      v34 = [v13 objectForKey:@"p"];
      v35 = [v13 objectForKey:@"i"];
      if (sub_1000146D4([v35 integerValue]))
      {
        v77 = [v13 objectForKey:@"g"];
        if (v110)
        {
          v78 = [(NSMapTable *)self->_environmentToListener objectForKey:?];
        }

        else
        {
          v78 = 0;
        }

        if (objc_opt_respondsToSelector())
        {
          [v78 proxyManager:self receivedPush:v34 connectionType:v35 generation:v77 guid:v108 environmentName:v110];
        }

        goto LABEL_146;
      }

      if (!os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_146;
      }

      goto LABEL_79;
    case 7uLL:
      v82 = [v13 objectForKey:@"r"];
      v83 = [v13 objectForKey:@"i"];
      if (sub_1000146D4([v83 integerValue]))
      {
        v84 = [v13 objectForKey:@"g"];
        v85 = [v13 objectForKey:@"t"];
        v86 = [v13 objectForKey:@"mI"];
        if (v110)
        {
          v87 = [(NSMapTable *)self->_environmentToListener objectForKey:?];
        }

        else
        {
          v87 = 0;
        }

        if (objc_opt_respondsToSelector())
        {
          [v87 proxyManager:self receivedPushAckResponse:v82 messageId:v86 token:v85 connectionType:v83 generation:v84 guid:v108 environmentName:v110];
        }
      }

      else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
      {
        integerValue2 = [v83 integerValue];
        *buf = 134217984;
        selfCopy4 = integerValue2;
        _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Invalid value for interface: %ld, failed to deliver", buf, 0xCu);
      }

      goto LABEL_157;
    case 8uLL:
      v53 = [v13 objectForKey:@"rP"];
      v54 = [[APSOutgoingMessage alloc] initWithDictionary:v53];
      if (v110)
      {
        v55 = [(NSMapTable *)self->_environmentToListener objectForKey:?];
      }

      else
      {
        v55 = 0;
      }

      if (objc_opt_respondsToSelector())
      {
        [v55 proxyManager:self sendReversePush:v54 guid:v108 environmentName:v110];
      }

      goto LABEL_111;
    case 9uLL:
      v89 = [v13 objectForKey:@"r"];
      v90 = [v13 objectForKey:@"mG"];
      v91 = [v13 objectForKey:@"mI"];
      if (v110)
      {
        v92 = [(NSMapTable *)self->_environmentToListener objectForKey:?];
      }

      else
      {
        v92 = 0;
      }

      if (objc_opt_respondsToSelector())
      {
        [v92 proxyManager:self reversePushResponse:v89 messageGUID:v90 messageId:v91 guid:v108 environmentName:v110];
      }

      goto LABEL_157;
    case 0xAuLL:
      v56 = [v13 objectForKey:@"st"];
      v57 = [v13 objectForKey:@"rT"];

      if (v110)
      {
        v58 = [(NSMapTable *)self->_environmentToListener objectForKey:?];
      }

      else
      {
        v58 = 0;
      }

      if (objc_opt_respondsToSelector())
      {
        [v58 proxyManager:self expiredNonceWithServerTime:v56 shouldRollToken:v57 != 0 guid:v108 environmentName:v110];
      }

      goto LABEL_157;
    case 0xBuLL:
      v53 = [v13 objectForKey:@"mS"];
      v54 = [v13 objectForKey:@"lS"];
      if (v110)
      {
        v55 = [(NSMapTable *)self->_environmentToListener objectForKey:?];
      }

      else
      {
        v55 = 0;
      }

      if (objc_opt_respondsToSelector())
      {
        [v55 proxyManager:self incomingMessageSize:v53 largeMessageSize:v54 guid:v108 environmentName:v110];
      }

      goto LABEL_111;
    case 0xCuLL:
      v42 = [v13 objectForKey:@"tH"];
      v43 = [v13 objectForKey:@"t"];
      v44 = [v13 objectForKey:@"a"];
      v45 = [v13 objectForKey:@"eTTL"];
      v46 = [v13 objectForKey:@"vPK"];
      v47 = [v13 objectForKey:@"tT"];
      v48 = v47;
      v49 = &off_100197A28;
      if (v47)
      {
        v49 = v47;
      }

      v50 = v49;

      if (v110)
      {
        v51 = [(NSMapTable *)self->_environmentToListener objectForKey:?];
      }

      else
      {
        v51 = 0;
      }

      if (objc_opt_respondsToSelector())
      {
        [v51 proxyManager:self tokenGenerateWithTopicHash:v42 baseToken:v43 appId:v44 expirationTTL:v45 vapidPublicKeyHash:v46 type:v50 guid:v108 environmentName:v110];
      }

      goto LABEL_157;
    case 0xDuLL:
      v53 = [v13 objectForKey:@"r"];
      v54 = [v13 objectForKey:@"er"];
      if (v110)
      {
        v55 = [(NSMapTable *)self->_environmentToListener objectForKey:?];
      }

      else
      {
        v55 = 0;
      }

      if (objc_opt_respondsToSelector())
      {
        [v55 proxyManager:self appTokenGenerateResponse:v53 error:v54 guid:v108 environmentName:v110];
      }

LABEL_111:

      goto LABEL_157;
    case 0xEuLL:
      v79 = [v13 objectForKey:@"cS"];
      bOOLValue = [v79 BOOLValue];

      if (v110)
      {
        v81 = [(NSMapTable *)self->_environmentToListener objectForKey:?];
      }

      else
      {
        v81 = 0;
      }

      if (objc_opt_respondsToSelector())
      {
        [v81 proxyManager:self isConnected:bOOLValue guid:v108 environmentName:v110];
      }

      goto LABEL_157;
    case 0xFuLL:
      v36 = [v13 objectForKey:@"r"];
      intValue = [v36 intValue];

      v38 = [v13 objectForKey:@"tS"];
      v39 = [v13 objectForKey:@"u"];
      v40 = [v13 objectForKey:@"t"];
      if (v110)
      {
        v41 = [(NSMapTable *)self->_environmentToListener objectForKey:?];
      }

      else
      {
        v41 = 0;
      }

      if (objc_opt_respondsToSelector())
      {
        [v41 proxyManager:self messageTracingWithStatus:intValue topic:v38 tracingUUID:v39 token:v40 guid:v108 environmentName:v110];
      }

      goto LABEL_157;
    case 0x10uLL:
      v64 = [v13 objectForKey:@"cl"];
      v65 = [v13 objectForKey:@"mI"];
      unsignedIntValue2 = [v65 unsignedIntValue];

      v67 = [v13 objectForKey:@"t"];
      v68 = [v13 objectForKey:@"i"];
      if (sub_1000146D4([v68 integerValue]))
      {
        if (v110)
        {
          v69 = [(NSMapTable *)self->_environmentToListener objectForKey:?];
        }

        else
        {
          v69 = 0;
        }

        if (objc_opt_respondsToSelector())
        {
          [v69 proxyManager:self sendPubSubChannelList:v64 messageID:unsignedIntValue2 token:v67 connectionType:objc_msgSend(v68 environmentName:"integerValue") guid:{v110, v108}];
        }
      }

      else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
      {
        integerValue3 = [v68 integerValue];
        *buf = 134217984;
        selfCopy4 = integerValue3;
        _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Invalid value for channel list interface: %ld, failed to deliver", buf, 0xCu);
      }

      goto LABEL_157;
    case 0x11uLL:
      v34 = [v13 objectForKey:@"p"];
      if (v110)
      {
        v35 = [(NSMapTable *)self->_environmentToListener objectForKey:?];
      }

      else
      {
        v35 = 0;
      }

      if (objc_opt_respondsToSelector())
      {
        [v35 proxyManager:self handlePubSubChannelListResponse:v34 environmentName:v110 guid:v108];
      }

      goto LABEL_146;
    case 0x12uLL:
      v34 = [v13 objectForKey:@"p"];
      v35 = [v13 objectForKey:@"i"];
      if (sub_1000146D4([v35 integerValue]))
      {
        if (v110)
        {
          v76 = [(NSMapTable *)self->_environmentToListener objectForKey:?];
        }

        else
        {
          v76 = 0;
        }

        if (objc_opt_respondsToSelector())
        {
          [v76 proxyManager:self handlePubSubUpdateMessage:v34 connectionType:objc_msgSend(v35 environmentName:"integerValue") guid:{v110, v108}];
        }
      }

      else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
      {
LABEL_79:
        integerValue4 = [v35 integerValue];
        *buf = 134218242;
        selfCopy4 = integerValue4;
        v119 = 2112;
        v120 = v34;
        _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Invalid value for interface: %ld message parameters %@, failed to deliver", buf, 0x16u);
      }

LABEL_146:

LABEL_157:
      return;
    case 0x13uLL:
      v52 = [v13 objectForKey:@"i"];
      if (sub_1000146D4([v52 integerValue]))
      {
        if (v110)
        {
          v88 = [(NSMapTable *)self->_environmentToListener objectForKey:?];
        }

        else
        {
          v88 = 0;
        }

        if (objc_opt_respondsToSelector())
        {
          [v88 proxyManager:self handlePubSubChannelListRequest:objc_msgSend(v52 envName:"integerValue") guid:{v110, v108}];
        }
      }

      else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
      {
        integerValue5 = [v52 integerValue];
        *buf = 134217984;
        selfCopy4 = integerValue5;
        _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Invalid value for interface: %ld, failed to deliver", buf, 0xCu);
      }

LABEL_87:

      goto LABEL_157;
    default:
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
      {
        integerValue6 = [v17 integerValue];
        *buf = 138412802;
        selfCopy4 = self;
        v119 = 2112;
        v120 = v13;
        v121 = 2048;
        v122 = integerValue6;
        _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "%@ received message %@ with unknown command %ld", buf, 0x20u);
      }

      goto LABEL_157;
  }
}

- (void)__assertWiFiIfPossible
{
  nearby = self->_nearby;
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    if (self->_nearby)
    {
      v4 = @"YES";
    }

    else
    {
      v4 = @"NO";
    }

    *v9 = 136315906;
    *&v9[4] = "[APSIDSProxyManager __assertWiFiIfPossible]";
    if (+[APSIDSProxyManager shouldAssertWiFi])
    {
      v5 = @"YES";
    }

    else
    {
      v5 = @"NO";
    }

    if (nearby)
    {
      v6 = @"NO";
    }

    else
    {
      v6 = @"YES";
    }

    *&v9[12] = 2112;
    *&v9[14] = v4;
    v10 = 2112;
    v11 = v5;
    v12 = 2112;
    v13 = v6;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "%s: isNearby: %@ shouldAssertWiFi: %@ assertWiFi: %@", v9, 0x2Au);
  }

  v7 = +[PCPersistentInterfaceManager sharedInstance];
  [v7 enableWiFiAutoAssociation:!nearby forDelegate:self];

  v8 = +[PCPersistentInterfaceManager sharedInstance];
  [v8 enableWakeOnWiFi:!nearby forDelegate:self];
}

- (void)_assertWiFiIfPossible
{
  if (+[APSIDSProxyManager shouldAssertWiFi])
  {
    [NSObject cancelPreviousPerformRequestsWithTarget:self selector:"__assertWiFiIfPossible" object:0];
    if (self->_nearby)
    {

      [(APSIDSProxyManager *)self __assertWiFiIfPossible];
    }

    else
    {

      [(APSIDSProxyManager *)self performSelector:"__assertWiFiIfPossible" withObject:0 afterDelay:10.0];
    }
  }
}

- (void)_checkNearbyDevices:(id)devices
{
  devicesCopy = devices;
  _idsSendQueue = [objc_opt_class() _idsSendQueue];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10008E0A8;
  v7[3] = &unk_1001864D8;
  v7[4] = self;
  v8 = devicesCopy;
  v6 = devicesCopy;
  dispatch_async(_idsSendQueue, v7);
}

- (void)_onQueue_checkNearbyDevices:(id)devices
{
  devicesCopy = devices;
  dispatch_assert_queue_not_V2(&_dispatch_main_q);
  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v5 = devicesCopy;
  v6 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v6)
  {
    v7 = *v13;
    while (2)
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(v5);
        }

        v9 = *(*(&v12 + 1) + 8 * i);
        if ([v9 isNearby] && (objc_msgSend(v9, "isActive") & 1) != 0)
        {
          LOBYTE(v6) = 1;
          goto LABEL_12;
        }
      }

      v6 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

LABEL_12:

  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_10008E240;
  v10[3] = &unk_100188700;
  v10[4] = self;
  v11 = v6;
  dispatch_async(&_dispatch_main_q, v10);
}

- (void)_retrieveAllDevicesAndDo:(id)do
{
  doCopy = do;
  v5 = dispatch_get_global_queue(0, 0);
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10008E5A4;
  v7[3] = &unk_1001872B8;
  v7[4] = self;
  v8 = doCopy;
  v6 = doCopy;
  dispatch_async(v5, v7);
}

- (void)_updateTimerIfNecessaryWithDevices:(id)devices
{
  devicesCopy = devices;
  _idsSendQueue = [objc_opt_class() _idsSendQueue];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10008E72C;
  v7[3] = &unk_1001864D8;
  v7[4] = self;
  v8 = devicesCopy;
  v6 = devicesCopy;
  dispatch_async(_idsSendQueue, v7);
}

- (void)service:(id)service devicesChanged:(id)changed
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_10008E7A8;
  v4[3] = &unk_100188750;
  v4[4] = self;
  [(APSIDSProxyManager *)self _retrieveAllDevicesAndDo:v4, changed];
}

- (void)service:(id)service nearbyDevicesChanged:(id)changed
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_10008E878;
  v4[3] = &unk_100188750;
  v4[4] = self;
  [(APSIDSProxyManager *)self _retrieveAllDevicesAndDo:v4, changed];
}

- (void)service:(id)service linkedDevicesChanged:(id)changed
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_10008E8F0;
  v4[3] = &unk_100188750;
  v4[4] = self;
  [(APSIDSProxyManager *)self _retrieveAllDevicesAndDo:v4, changed];
}

- (void)service:(id)service didSwitchActivePairedDevice:(id)device acknowledgementBlock:(id)block
{
  blockCopy = block;
  _idsSendQueue = [objc_opt_class() _idsSendQueue];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_10008EA08;
  v9[3] = &unk_100188728;
  v9[4] = self;
  v10 = blockCopy;
  v8 = blockCopy;
  dispatch_async(_idsSendQueue, v9);
}

- (APSIDSProxyManagerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end