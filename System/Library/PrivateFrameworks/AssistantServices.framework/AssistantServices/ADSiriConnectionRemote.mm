@interface ADSiriConnectionRemote
- (ADSiriConnectionRemote)init;
- (BOOL)_hasOrIsEstablishingNetworkConnection;
- (id)_networkConnectionProvider;
- (id)_prependHeader:(__CFHTTPMessage *)header toOutputBuffer:(id)buffer;
- (id)_tryToReadHTTPHeaderIntoMessage:(__CFHTTPMessage *)message fromData:(id)data isComplete:(BOOL *)complete;
- (id)_tryToReadPeerStreamHeaderFromData:(id)data needsReconnect:(BOOL *)reconnect;
- (void)_cancelStaleNetworkTimer;
- (void)_closeNetworkConnection;
- (void)_closePeerConnection;
- (void)_connectionMetricsWithCompletion:(id)completion;
- (void)_didEstablishNetworkConnectionForProvider:(id)provider initialPayload:(id)payload ofLength:(unint64_t)length error:(id)error;
- (void)_doMetricsBookkeepingForNetworkStreamStart;
- (void)_doMetricsBookkeepingForPeerStreamsStart;
- (void)_establishNetworkConnectionToURL:(id)l connectionId:(id)id withPOP:(BOOL)p countAgainstFallbacksAllowed:(BOOL)allowed;
- (void)_establishPeerConnection;
- (void)_fallbackWithSafetyNet;
- (void)_insertCompanionSpecificDataIntoHeader:(__CFHTTPMessage *)header;
- (void)_networkConnectionDidEnd;
- (void)_networkConnectionDidOpen;
- (void)_networkConnectionErrorOccurred:(id)occurred;
- (void)_networkConnectionFailure;
- (void)_networkConnectionReceivedData:(id)data;
- (void)_peerConnectionDidEnd;
- (void)_peerConnectionFailure;
- (void)_peerConnectionReceivedData:(id)data;
- (void)_peerReadStreamErrorOccurred:(id)occurred;
- (void)_powerChangedMessageType:(unsigned int)type notificationID:(int64_t)d;
- (void)_preheat;
- (void)_prepareForSleep;
- (void)_registerForSleepNotification;
- (void)_restartConnectionProviders;
- (void)_setupStaleNetworkTimerForProvider:(id)provider;
- (void)_tryToWriteToNetworkConnection;
- (void)_unregisterForSleepNotification;
- (void)_waitForNetworkData;
- (void)_waitForPeerData;
- (void)_writeDataToNetwork:(id)network;
- (void)_writeDataToPeer:(id)peer;
- (void)connectionProvider:(id)provider receivedError:(id)error;
- (void)dealloc;
- (void)peerStreamConnection:(id)connection failedWithError:(id)error;
- (void)peerStreamConnection:(id)connection requestMetrics:(id)metrics;
- (void)peerStreamConnectionHasIncomingPeer:(id)peer;
@end

@implementation ADSiriConnectionRemote

- (void)_doMetricsBookkeepingForNetworkStreamStart
{
  v3 = +[NSProcessInfo processInfo];
  [v3 systemUptime];
  self->_currentStartTime = v4;

  if (self->_firstStartTime <= 0.0)
  {
    self->_firstStartTime = self->_currentStartTime;
  }

  *&self->_currentOpenTime = 0u;
  ++self->_startCount;
}

- (void)_doMetricsBookkeepingForPeerStreamsStart
{
  self->_startCount = 0;
  self->_metricsCount = 0;
  self->_firstStartTime = -1.0;
}

- (void)_connectionMetricsWithCompletion:(id)completion
{
  completionCopy = completion;
  if (completionCopy)
  {
    v5 = objc_alloc_init(SiriCoreConnectionMetrics);
    ++self->_metricsCount;
    currentOpenTime = self->_currentOpenTime;
    firstStartTime = self->_firstStartTime;
    if (currentOpenTime > firstStartTime)
    {
      firstStartTime = [NSNumber numberWithDouble:currentOpenTime - firstStartTime];
      [v5 setTimeUntilOpen:firstStartTime];

      firstStartTime = self->_firstStartTime;
    }

    firstByteReadTime = self->_firstByteReadTime;
    if (firstByteReadTime > firstStartTime)
    {
      firstStartTime2 = [NSNumber numberWithDouble:firstByteReadTime - firstStartTime];
      [v5 setTimeUntilFirstByteRead:firstStartTime2];
    }

    v11 = [NSNumber numberWithUnsignedInteger:self->_startCount];
    [v5 setAttemptCount:v11];

    v12 = [NSNumber numberWithUnsignedInteger:self->_metricsCount];
    [v5 setMetricsCount:v12];

    networkConnectionProvider = self->_networkConnectionProvider;
    if (networkConnectionProvider)
    {
      v14[0] = _NSConcreteStackBlock;
      v14[1] = 3221225472;
      v14[2] = sub_100309EB4;
      v14[3] = &unk_10051E038;
      v16 = completionCopy;
      v15 = v5;
      [(SiriCoreConnectionProvider *)networkConnectionProvider updateConnectionMetrics:v15 completion:v14];
    }

    else
    {
      (*(completionCopy + 2))(completionCopy, v5);
    }
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
        v7 = "[ADSiriConnectionRemote _unregisterForSleepNotification]";
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

- (void)_registerForSleepNotification
{
  if (!self->_ioConnect)
  {
    v3 = IORegisterForSystemPower(self, &self->_ioNotificationPortRef, sub_10030A040, &self->_ioNotifier);
    self->_ioConnect = v3;
    if (v3 + 1 >= 2)
    {
      ioNotificationPortRef = self->_ioNotificationPortRef;
      queue = self->_queue;

      IONotificationPortSetDispatchQueue(ioNotificationPortRef, queue);
    }

    else
    {
      self->_ioConnect = 0;
    }
  }
}

- (void)_powerChangedMessageType:(unsigned int)type notificationID:(int64_t)d
{
  HIDWORD(v7) = type + 536870288;
  LODWORD(v7) = type + 536870288;
  v6 = v7 >> 4;
  if (v6 != 1)
  {
    if (v6)
    {
      return;
    }

    [(ADSiriConnectionRemote *)self _prepareForSleep];
  }

  ioConnect = self->_ioConnect;

  IOAllowPowerChange(ioConnect, d);
}

- (void)_prepareForSleep
{
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10030A128;
  block[3] = &unk_10051DFE8;
  block[4] = self;
  dispatch_async(queue, block);
}

- (void)_writeDataToNetwork:(id)network
{
  networkCopy = network;
  v5 = networkCopy;
  if (networkCopy)
  {
    size = dispatch_data_get_size(networkCopy);
    networkConnectionProvider = self->_networkConnectionProvider;
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_10030A1F0;
    v8[3] = &unk_10051B9B8;
    v8[4] = size;
    [(SiriCoreConnectionProvider *)networkConnectionProvider writeData:v5 completion:v8];
    if (!self->_dataHasBeenWrittenToNetwork)
    {
      self->_dataHasBeenWrittenToNetwork = 1;
      [(ADSiriConnectionRemote *)self _cancelStaleNetworkTimer];
    }
  }
}

- (void)_tryToWriteToNetworkConnection
{
  if (!self->_outgoingHTTPHeader)
  {
    networkOutputBuffer = self->_networkOutputBuffer;
    if (networkOutputBuffer)
    {
      data2 = networkOutputBuffer;
      v4 = self->_networkOutputBuffer;
      self->_networkOutputBuffer = 0;

      [(ADSiriConnectionRemote *)self _writeDataToNetwork:data2];
      safetyNetBuffer = self->_safetyNetBuffer;
      if (safetyNetBuffer)
      {
        concat = dispatch_data_create_concat(safetyNetBuffer, data2);
        v7 = self->_safetyNetBuffer;
        self->_safetyNetBuffer = concat;
      }
    }
  }
}

- (void)_networkConnectionErrorOccurred:(id)occurred
{
  occurredCopy = occurred;
  v5 = AFSiriLogContextProxy;
  if (os_log_type_enabled(AFSiriLogContextProxy, OS_LOG_TYPE_ERROR))
  {
    v6 = 136315394;
    v7 = "[ADSiriConnectionRemote _networkConnectionErrorOccurred:]";
    v8 = 2114;
    v9 = occurredCopy;
    _os_log_error_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, "%s %{public}@", &v6, 0x16u);
  }

  [(ADSiriConnectionRemote *)self _networkConnectionFailure];
}

- (void)_networkConnectionDidOpen
{
  v3 = AFSiriLogContextProxy;
  if (os_log_type_enabled(AFSiriLogContextProxy, OS_LOG_TYPE_INFO))
  {
    v6 = 136315138;
    v7 = "[ADSiriConnectionRemote _networkConnectionDidOpen]";
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "%s ", &v6, 0xCu);
  }

  v4 = +[NSProcessInfo processInfo];
  [v4 systemUptime];
  self->_currentOpenTime = v5;

  [(ADSiriConnectionRemote *)self _tryToWriteToNetworkConnection];
}

- (void)_networkConnectionReceivedData:(id)data
{
  dataCopy = data;
  size = dispatch_data_get_size(dataCopy);
  if (dataCopy && (v6 = size) != 0)
  {
    [(ADSiriConnectionRemote *)self _writeDataToPeer:dataCopy];
    safetyNetBuffer = self->_safetyNetBuffer;
    self->_safetyNetBuffer = 0;

    if (self->_firstByteReadTime == 0.0)
    {
      v8 = +[NSProcessInfo processInfo];
      [v8 systemUptime];
      self->_firstByteReadTime = v9;
    }

    v10 = AFSiriLogContextProxy;
    if (os_log_type_enabled(AFSiriLogContextProxy, OS_LOG_TYPE_INFO))
    {
      v15 = 136315394;
      v16 = "[ADSiriConnectionRemote _networkConnectionReceivedData:]";
      v17 = 2048;
      v18 = v6;
      v11 = "%s read: %lu";
      v12 = v10;
      v13 = 22;
LABEL_9:
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_INFO, v11, &v15, v13);
    }
  }

  else
  {
    v14 = AFSiriLogContextProxy;
    if (os_log_type_enabled(AFSiriLogContextProxy, OS_LOG_TYPE_INFO))
    {
      v15 = 136315138;
      v16 = "[ADSiriConnectionRemote _networkConnectionReceivedData:]";
      v11 = "%s zero length data";
      v12 = v14;
      v13 = 12;
      goto LABEL_9;
    }
  }
}

- (void)_waitForNetworkData
{
  v3 = self->_networkConnectionProvider;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_10030A770;
  v5[3] = &unk_10051B998;
  v6 = v3;
  selfCopy = self;
  v4 = v3;
  [(SiriCoreConnectionProvider *)v4 readData:v5];
}

- (void)_writeDataToPeer:(id)peer
{
  if (peer)
  {
    size = dispatch_data_get_size(peer);
    peerProvider = self->_peerProvider;
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_10030A910;
    v7[3] = &unk_10051B9B8;
    v7[4] = size;
    [(ADPeerConnectionProvider *)peerProvider writeData:peer completion:v7];
  }
}

- (void)_peerReadStreamErrorOccurred:(id)occurred
{
  occurredCopy = occurred;
  v5 = AFSiriLogContextProxy;
  if (os_log_type_enabled(AFSiriLogContextProxy, OS_LOG_TYPE_ERROR))
  {
    v6 = 136315394;
    v7 = "[ADSiriConnectionRemote _peerReadStreamErrorOccurred:]";
    v8 = 2114;
    v9 = occurredCopy;
    _os_log_error_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, "%s %{public}@", &v6, 0x16u);
  }

  [(ADSiriConnectionRemote *)self _peerConnectionFailure];
}

- (void)_peerConnectionReceivedData:(id)data
{
  dataCopy = data;
  networkOutputBuffer = self->_networkOutputBuffer;
  if (networkOutputBuffer)
  {
    concat = dispatch_data_create_concat(networkOutputBuffer, dataCopy);
  }

  else
  {
    concat = dataCopy;
  }

  v7 = self->_networkOutputBuffer;
  self->_networkOutputBuffer = concat;

  v8 = 0;
  v30 = 0;
  if (self->_networkURLFromPeer)
  {
    goto LABEL_8;
  }

  v9 = [(ADSiriConnectionRemote *)self _tryToReadPeerStreamHeaderFromData:self->_networkOutputBuffer needsReconnect:&v30];
  v10 = self->_networkOutputBuffer;
  self->_networkOutputBuffer = v9;

  v11 = AFSiriLogContextProxy;
  if (os_log_type_enabled(AFSiriLogContextProxy, OS_LOG_TYPE_INFO))
  {
    networkURLFromPeer = self->_networkURLFromPeer;
    connectByPOP = self->_connectByPOP;
    *buf = 136315906;
    v32 = "[ADSiriConnectionRemote _peerConnectionReceivedData:]";
    v33 = 2112;
    v34 = networkURLFromPeer;
    v35 = 1024;
    v36 = connectByPOP;
    v37 = 1024;
    v38 = v30;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "%s read peer header %@ pop %d reconnect %d", buf, 0x22u);
  }

  v14 = self->_networkURLFromPeer;
  v8 = v14 != 0;
  if (v14)
  {
LABEL_8:
    outgoingHTTPHeader = self->_outgoingHTTPHeader;
    if (outgoingHTTPHeader)
    {
      v29 = 0;
      v16 = [(ADSiriConnectionRemote *)self _tryToReadHTTPHeaderIntoMessage:outgoingHTTPHeader fromData:self->_networkOutputBuffer isComplete:&v29];
      v17 = self->_networkOutputBuffer;
      self->_networkOutputBuffer = v16;

      v18 = v29;
      v19 = AFSiriLogContextProxy;
      v20 = os_log_type_enabled(AFSiriLogContextProxy, OS_LOG_TYPE_INFO);
      if (v18 == 1)
      {
        if (v20)
        {
          *buf = 136315138;
          v32 = "[ADSiriConnectionRemote _peerConnectionReceivedData:]";
          _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_INFO, "%s HTTP Header is complete", buf, 0xCu);
        }

        [(ADSiriConnectionRemote *)self _insertCompanionSpecificDataIntoHeader:self->_outgoingHTTPHeader];
        v21 = [(ADSiriConnectionRemote *)self _prependHeader:self->_outgoingHTTPHeader toOutputBuffer:self->_networkOutputBuffer];
        v22 = self->_networkOutputBuffer;
        self->_networkOutputBuffer = v21;

        CFRelease(self->_outgoingHTTPHeader);
        self->_outgoingHTTPHeader = 0;
      }

      else if (v20)
      {
        *buf = 136315138;
        v32 = "[ADSiriConnectionRemote _peerConnectionReceivedData:]";
        _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_INFO, "%s HTTP Header is not complete", buf, 0xCu);
      }
    }
  }

  if (![(ADSiriConnectionRemote *)self _hasOrIsEstablishingNetworkConnection])
  {
    if (!v8)
    {
      goto LABEL_20;
    }

    goto LABEL_19;
  }

  if (v8 & v30)
  {
LABEL_19:
    [(ADSiriConnectionRemote *)self _closeNetworkConnection];
    [(ADSiriConnectionRemote *)self _establishNetworkConnectionToURL:self->_networkURLFromPeer connectionId:self->_connectionId withPOP:self->_connectByPOP countAgainstFallbacksAllowed:0];
  }

LABEL_20:
  if ([(SiriCoreConnectionProvider *)self->_networkConnectionProvider isReady])
  {
    [(ADSiriConnectionRemote *)self _tryToWriteToNetworkConnection];
  }

  else
  {
    isEstablishing = [(SiriCoreConnectionProvider *)self->_networkConnectionProvider isEstablishing];
    v24 = AFSiriLogContextProxy;
    v25 = os_log_type_enabled(AFSiriLogContextProxy, OS_LOG_TYPE_INFO);
    if (isEstablishing)
    {
      if (v25)
      {
        *buf = 136315138;
        v32 = "[ADSiriConnectionRemote _peerConnectionReceivedData:]";
        _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_INFO, "%s Waiting for network connection", buf, 0xCu);
      }
    }

    else
    {
      if (v25)
      {
        *buf = 136315138;
        v32 = "[ADSiriConnectionRemote _peerConnectionReceivedData:]";
        _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_INFO, "%s Establishing network connection", buf, 0xCu);
      }

      networkURL = self->_networkURLFromPeer;
      if (networkURL)
      {
        connectionId = self->_connectionId;
        v28 = self->_connectByPOP;
      }

      else
      {
        connectionId = 0;
        v28 = 0;
        networkURL = self->_networkURL;
      }

      [(ADSiriConnectionRemote *)self _establishNetworkConnectionToURL:networkURL connectionId:connectionId withPOP:v28];
    }
  }
}

- (void)_waitForPeerData
{
  v3 = self->_peerProvider;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_10030AF38;
  v5[3] = &unk_10051B998;
  v5[4] = self;
  v6 = v3;
  v4 = v3;
  [(ADPeerConnectionProvider *)v4 readData:v5];
}

- (void)connectionProvider:(id)provider receivedError:(id)error
{
  providerCopy = provider;
  errorCopy = error;
  v8 = AFSiriLogContextProxy;
  if (os_log_type_enabled(AFSiriLogContextProxy, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315394;
    v14 = "[ADSiriConnectionRemote connectionProvider:receivedError:]";
    v15 = 2114;
    v16 = errorCopy;
    _os_log_error_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "%s %{public}@", buf, 0x16u);
  }

  queue = self->_queue;
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_10030B1FC;
  v11[3] = &unk_10051E010;
  v11[4] = self;
  v12 = providerCopy;
  v10 = providerCopy;
  dispatch_async(queue, v11);
}

- (void)_cancelStaleNetworkTimer
{
  staleNetworkTimerSource = self->_staleNetworkTimerSource;
  if (staleNetworkTimerSource)
  {
    dispatch_source_cancel(staleNetworkTimerSource);
    v4 = self->_staleNetworkTimerSource;
    self->_staleNetworkTimerSource = 0;
  }
}

- (void)_setupStaleNetworkTimerForProvider:(id)provider
{
  providerCopy = provider;
  v5 = dispatch_source_create(&_dispatch_source_type_timer, 0, 0, self->_queue);
  v6 = dispatch_time(0, 180000000000);
  dispatch_source_set_timer(v5, v6, 0xFFFFFFFFFFFFFFFFLL, 0);
  handler[0] = _NSConcreteStackBlock;
  handler[1] = 3221225472;
  handler[2] = sub_10030B500;
  handler[3] = &unk_10051DB68;
  v7 = v5;
  v12 = v7;
  selfCopy = self;
  v14 = providerCopy;
  v8 = providerCopy;
  dispatch_source_set_event_handler(v7, handler);
  dispatch_resume(v7);
  staleNetworkTimerSource = self->_staleNetworkTimerSource;
  self->_staleNetworkTimerSource = v7;
  v10 = v7;
}

- (void)_networkConnectionDidEnd
{
  v3 = AFSiriLogContextProxy;
  if (os_log_type_enabled(AFSiriLogContextProxy, OS_LOG_TYPE_INFO))
  {
    v4 = 136315138;
    v5 = "[ADSiriConnectionRemote _networkConnectionDidEnd]";
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "%s ", &v4, 0xCu);
  }

  [(ADSiriConnectionRemote *)self _networkConnectionFailure];
}

- (void)_networkConnectionFailure
{
  v3 = AFSiriLogContextProxy;
  if (os_log_type_enabled(AFSiriLogContextProxy, OS_LOG_TYPE_INFO))
  {
    v5 = 136315138;
    v6 = "[ADSiriConnectionRemote _networkConnectionFailure]";
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "%s ", &v5, 0xCu);
  }

  if (self->_safetyNetBuffer)
  {
    [(ADSiriConnectionRemote *)self _fallbackWithSafetyNet];
  }

  else if (self->_networkURLFromPeer)
  {
    [(ADSiriConnectionRemote *)self _restartConnectionProviders];
  }

  else
  {
    v4 = AFSiriLogContextProxy;
    if (os_log_type_enabled(AFSiriLogContextProxy, OS_LOG_TYPE_INFO))
    {
      v5 = 136315138;
      v6 = "[ADSiriConnectionRemote _networkConnectionFailure]";
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "%s Waiting for peer header before restarting peer streams", &v5, 0xCu);
    }

    [(ADSiriConnectionRemote *)self _closeNetworkConnection];
  }
}

- (void)_closeNetworkConnection
{
  networkConnectionProvider = self->_networkConnectionProvider;
  if (networkConnectionProvider)
  {
    v4 = AFSiriLogContextProxy;
    if (os_log_type_enabled(AFSiriLogContextProxy, OS_LOG_TYPE_INFO))
    {
      v6 = 136315138;
      v7 = "[ADSiriConnectionRemote _closeNetworkConnection]";
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "%s ", &v6, 0xCu);
      networkConnectionProvider = self->_networkConnectionProvider;
    }

    [(SiriCoreConnectionProvider *)networkConnectionProvider close];
    v5 = self->_networkConnectionProvider;
    self->_networkConnectionProvider = 0;

    self->_dataHasBeenWrittenToNetwork = 0;
    [(ADSiriConnectionRemote *)self _cancelStaleNetworkTimer];
  }
}

- (void)_didEstablishNetworkConnectionForProvider:(id)provider initialPayload:(id)payload ofLength:(unint64_t)length error:(id)error
{
  providerCopy = provider;
  payloadCopy = payload;
  errorCopy = error;
  v13 = AFSiriLogContextProxy;
  if (os_log_type_enabled(AFSiriLogContextProxy, OS_LOG_TYPE_INFO))
  {
    v29 = 136315138;
    v30 = "[ADSiriConnectionRemote _didEstablishNetworkConnectionForProvider:initialPayload:ofLength:error:]";
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_INFO, "%s ", &v29, 0xCu);
  }

  if (self->_networkConnectionProvider == providerCopy)
  {
    if (!errorCopy)
    {
      if (payloadCopy)
      {
        networkOutputBuffer = self->_networkOutputBuffer;
        if (networkOutputBuffer)
        {
          size = dispatch_data_get_size(networkOutputBuffer);
        }

        else
        {
          size = 0;
        }

        v19 = AFSiriLogContextProxy;
        if (os_log_type_enabled(AFSiriLogContextProxy, OS_LOG_TYPE_DEBUG))
        {
          v29 = 136315650;
          v30 = "[ADSiriConnectionRemote _didEstablishNetworkConnectionForProvider:initialPayload:ofLength:error:]";
          v31 = 2048;
          lengthCopy = length;
          v33 = 2048;
          v34 = size;
          _os_log_debug_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEBUG, "%s Stream opened with initial payload length %lu, networkOutputBuffer length %lu", &v29, 0x20u);
        }

        v20 = size >= length;
        v21 = size - length;
        if (!v20 || self->_networkOutputBuffer != payloadCopy)
        {
          v22 = AFSiriLogContextProxy;
          if (os_log_type_enabled(AFSiriLogContextProxy, OS_LOG_TYPE_INFO))
          {
            v29 = 136315138;
            v30 = "[ADSiriConnectionRemote _didEstablishNetworkConnectionForProvider:initialPayload:ofLength:error:]";
            _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_INFO, "%s NetworkOutputBuffer has been reset; initial payload set on this pair of streams is no longer valid", &v29, 0xCu);
          }

          [(ADSiriConnectionRemote *)self _closeNetworkConnection];
          networkURLFromPeer = self->_networkURLFromPeer;
          if (networkURLFromPeer)
          {
            [(ADSiriConnectionRemote *)self _establishNetworkConnectionToURL:networkURLFromPeer connectionId:self->_connectionId withPOP:self->_connectByPOP];
            goto LABEL_32;
          }

          v14 = AFSiriLogContextProxy;
          if (!os_log_type_enabled(AFSiriLogContextProxy, OS_LOG_TYPE_INFO))
          {
            goto LABEL_32;
          }

          v29 = 136315138;
          v30 = "[ADSiriConnectionRemote _didEstablishNetworkConnectionForProvider:initialPayload:ofLength:error:]";
          v15 = "%s Waiting for peer header before restarting peer streams";
          goto LABEL_6;
        }

        safetyNetBuffer = self->_safetyNetBuffer;
        if (safetyNetBuffer)
        {
          safetyNetBuffer = dispatch_data_create_concat(safetyNetBuffer, payloadCopy);
          v25 = self->_safetyNetBuffer;
        }

        else
        {
          v25 = 0;
        }

        self->_safetyNetBuffer = safetyNetBuffer;

        v26 = self->_networkOutputBuffer;
        if (v26)
        {
          subrange = dispatch_data_create_subrange(v26, length, v21);
          v28 = self->_networkOutputBuffer;
          self->_networkOutputBuffer = subrange;
        }
      }

      self->_dataHasBeenWrittenToNetwork = 0;
      [(ADSiriConnectionRemote *)self _setupStaleNetworkTimerForProvider:providerCopy];
      [(ADSiriConnectionRemote *)self _networkConnectionDidOpen];
      [(ADSiriConnectionRemote *)self _waitForNetworkData];
      [(ADSiriConnectionRemote *)self _tryToWriteToNetworkConnection];
      goto LABEL_32;
    }

    v16 = AFSiriLogContextProxy;
    if (os_log_type_enabled(AFSiriLogContextProxy, OS_LOG_TYPE_ERROR))
    {
      v29 = 136315394;
      v30 = "[ADSiriConnectionRemote _didEstablishNetworkConnectionForProvider:initialPayload:ofLength:error:]";
      v31 = 2114;
      lengthCopy = errorCopy;
      _os_log_error_impl(&_mh_execute_header, v16, OS_LOG_TYPE_ERROR, "%s %{public}@", &v29, 0x16u);
    }

    [(ADSiriConnectionRemote *)self _networkConnectionFailure];
  }

  else
  {
    v14 = AFSiriLogContextProxy;
    if (os_log_type_enabled(AFSiriLogContextProxy, OS_LOG_TYPE_INFO))
    {
      v29 = 136315138;
      v30 = "[ADSiriConnectionRemote _didEstablishNetworkConnectionForProvider:initialPayload:ofLength:error:]";
      v15 = "%s We no longer care about the streams we opened here";
LABEL_6:
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_INFO, v15, &v29, 0xCu);
    }
  }

LABEL_32:
}

- (void)_establishNetworkConnectionToURL:(id)l connectionId:(id)id withPOP:(BOOL)p countAgainstFallbacksAllowed:(BOOL)allowed
{
  allowedCopy = allowed;
  pCopy = p;
  lCopy = l;
  idCopy = id;
  v13 = AFSiriLogContextProxy;
  if (os_log_type_enabled(AFSiriLogContextProxy, OS_LOG_TYPE_INFO))
  {
    *buf = 136316162;
    v41 = "[ADSiriConnectionRemote _establishNetworkConnectionToURL:connectionId:withPOP:countAgainstFallbacksAllowed:]";
    v42 = 2112;
    v43 = lCopy;
    v44 = 2112;
    v45 = idCopy;
    v46 = 1024;
    v47 = pCopy;
    v48 = 1024;
    v49 = allowedCopy;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_INFO, "%s %@ %@ %d %d", buf, 0x2Cu);
  }

  objc_storeStrong(&self->_networkURL, l);
  safetyNetBuffer = self->_safetyNetBuffer;
  if (!safetyNetBuffer)
  {
    goto LABEL_12;
  }

  if (self->_networkOutputBuffer)
  {
    concat = dispatch_data_create_concat(self->_safetyNetBuffer, self->_networkOutputBuffer);
    v16 = self->_safetyNetBuffer;
    self->_safetyNetBuffer = concat;

    safetyNetBuffer = self->_safetyNetBuffer;
  }

  objc_storeStrong(&self->_networkOutputBuffer, safetyNetBuffer);
  v17 = AFSiriLogContextProxy;
  v18 = os_log_type_enabled(AFSiriLogContextProxy, OS_LOG_TYPE_INFO);
  if (!allowedCopy)
  {
    if (v18)
    {
      *buf = 136315138;
      v41 = "[ADSiriConnectionRemote _establishNetworkConnectionToURL:connectionId:withPOP:countAgainstFallbacksAllowed:]";
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_INFO, "%s Using fallback path, but creating new safety net", buf, 0xCu);
    }

LABEL_12:
    v19 = &_dispatch_data_empty;
    v20 = &_dispatch_data_empty;
    goto LABEL_13;
  }

  if (v18)
  {
    *buf = 136315138;
    v41 = "[ADSiriConnectionRemote _establishNetworkConnectionToURL:connectionId:withPOP:countAgainstFallbacksAllowed:]";
    _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_INFO, "%s Falling back", buf, 0xCu);
  }

  v19 = 0;
LABEL_13:
  v21 = self->_safetyNetBuffer;
  self->_safetyNetBuffer = v19;

  _networkConnectionProvider = [(ADSiriConnectionRemote *)self _networkConnectionProvider];
  [_networkConnectionProvider setConnectByPOPMethod:pCopy];
  [_networkConnectionProvider setRetransmitConnectionDropTime:8.0];
  [_networkConnectionProvider setStaleInterval:100.0];
  v23 = +[ADAccount activeAccount];
  if (![v23 connectionPolicyStatus])
  {
    saConnectionPolicy = [v23 saConnectionPolicy];
    [_networkConnectionProvider setProviderConnectionPolicy:saConnectionPolicy];
  }

  [(ADSiriConnectionRemote *)self _doMetricsBookkeepingForNetworkStreamStart];
  v25 = self->_networkConnectionSequenceNumber + 1;
  self->_networkConnectionSequenceNumber = v25;
  if (pCopy)
  {
    v26 = self->_networkOutputBuffer;
    v27 = v26;
    if (v26)
    {
      size = dispatch_data_get_size(v26);
    }

    else
    {
      size = 0;
    }

    v29 = AFSiriLogContextProxy;
    if (os_log_type_enabled(AFSiriLogContextProxy, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136315394;
      v41 = "[ADSiriConnectionRemote _establishNetworkConnectionToURL:connectionId:withPOP:countAgainstFallbacksAllowed:]";
      v42 = 2048;
      v43 = size;
      _os_log_debug_impl(&_mh_execute_header, v29, OS_LOG_TYPE_DEBUG, "%s Will open stream with initial payload length %lu", buf, 0x16u);
    }
  }

  else
  {
    size = 0;
    v27 = 0;
  }

  if ([_networkConnectionProvider supportsInitialPayload])
  {
    if (lCopy)
    {
LABEL_24:
      v30 = lCopy;
      goto LABEL_27;
    }
  }

  else
  {
    v31 = +[NSAssertionHandler currentHandler];
    [v31 handleFailureInMethod:v34 object:self file:@"ADSiriConnectionRemote.m" lineNumber:416 description:@"Programming error: network stream provider should support initial payload."];

    if (lCopy)
    {
      goto LABEL_24;
    }
  }

  v30 = self->_networkURL;
  if (!v30)
  {
    v30 = [NSError errorWithDomain:@"ADSiriConnectionRemoteErrorDomain" code:2 userInfo:0];
    [(ADSiriConnectionRemote *)self _didEstablishNetworkConnectionForProvider:_networkConnectionProvider initialPayload:0 ofLength:0 error:v30];
    goto LABEL_30;
  }

LABEL_27:
  v32 = AFSiriLogContextProxy;
  if (os_log_type_enabled(AFSiriLogContextProxy, OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v41 = "[ADSiriConnectionRemote _establishNetworkConnectionToURL:connectionId:withPOP:countAgainstFallbacksAllowed:]";
    v42 = 2048;
    v43 = v25;
    _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_INFO, "%s opening %lu", buf, 0x16u);
  }

  v35[0] = _NSConcreteStackBlock;
  v35[1] = 3221225472;
  v35[2] = sub_10030C180;
  v35[3] = &unk_10051B970;
  v38 = v25;
  v35[4] = self;
  v36 = _networkConnectionProvider;
  v37 = v27;
  v39 = size;
  [v36 openConnectionForURL:v30 withConnectionId:idCopy initialPayload:v37 completion:v35];

LABEL_30:
}

- (BOOL)_hasOrIsEstablishingNetworkConnection
{
  if (([(SiriCoreConnectionProvider *)self->_networkConnectionProvider isReady]& 1) != 0)
  {
    return 1;
  }

  networkConnectionProvider = self->_networkConnectionProvider;

  return [(SiriCoreConnectionProvider *)networkConnectionProvider isEstablishing];
}

- (id)_networkConnectionProvider
{
  networkConnectionProvider = self->_networkConnectionProvider;
  if (!networkConnectionProvider)
  {
    v4 = [[SiriCoreNWConnection alloc] initWithQueue:self->_queue];
    v5 = self->_networkConnectionProvider;
    self->_networkConnectionProvider = v4;

    [(SiriCoreConnectionProvider *)self->_networkConnectionProvider setDelegate:self];
    networkConnectionProvider = self->_networkConnectionProvider;
  }

  return networkConnectionProvider;
}

- (void)peerStreamConnection:(id)connection requestMetrics:(id)metrics
{
  metricsCopy = metrics;
  queue = self->_queue;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_10030C5D0;
  v8[3] = &unk_10051E038;
  v8[4] = self;
  v9 = metricsCopy;
  v7 = metricsCopy;
  dispatch_async(queue, v8);
}

- (void)peerStreamConnectionHasIncomingPeer:(id)peer
{
  v4 = AFSiriLogContextProxy;
  if (os_log_type_enabled(AFSiriLogContextProxy, OS_LOG_TYPE_INFO))
  {
    *buf = 136315138;
    v8 = "[ADSiriConnectionRemote peerStreamConnectionHasIncomingPeer:]";
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "%s ", buf, 0xCu);
  }

  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10030C7F8;
  block[3] = &unk_10051DFE8;
  block[4] = self;
  dispatch_async(queue, block);
}

- (void)peerStreamConnection:(id)connection failedWithError:(id)error
{
  errorCopy = error;
  v6 = AFSiriLogContextProxy;
  if (os_log_type_enabled(AFSiriLogContextProxy, OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v12 = "[ADSiriConnectionRemote peerStreamConnection:failedWithError:]";
    v13 = 2112;
    v14 = errorCopy;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "%s %@", buf, 0x16u);
  }

  queue = self->_queue;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_10030CAE4;
  v9[3] = &unk_10051E010;
  v9[4] = self;
  v10 = errorCopy;
  v8 = errorCopy;
  dispatch_async(queue, v9);
}

- (void)_peerConnectionDidEnd
{
  v3 = AFSiriLogContextProxy;
  if (os_log_type_enabled(AFSiriLogContextProxy, OS_LOG_TYPE_INFO))
  {
    v4 = 136315138;
    v5 = "[ADSiriConnectionRemote _peerConnectionDidEnd]";
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "%s ", &v4, 0xCu);
  }

  [(ADSiriConnectionRemote *)self _restartConnectionProviders];
}

- (void)_peerConnectionFailure
{
  v3 = AFSiriLogContextProxy;
  if (os_log_type_enabled(AFSiriLogContextProxy, OS_LOG_TYPE_INFO))
  {
    v4 = 136315138;
    v5 = "[ADSiriConnectionRemote _peerConnectionFailure]";
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "%s ", &v4, 0xCu);
  }

  [(ADSiriConnectionRemote *)self _restartConnectionProviders];
}

- (void)_restartConnectionProviders
{
  v3 = AFSiriLogContextProxy;
  if (os_log_type_enabled(AFSiriLogContextProxy, OS_LOG_TYPE_INFO))
  {
    v4 = 136315138;
    v5 = "[ADSiriConnectionRemote _restartConnectionProviders]";
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "%s ", &v4, 0xCu);
  }

  [(ADSiriConnectionRemote *)self _closeNetworkConnection];
  [(ADSiriConnectionRemote *)self _closePeerConnection];
  [(ADSiriConnectionRemote *)self _establishPeerConnection];
}

- (void)_fallbackWithSafetyNet
{
  v3 = AFSiriLogContextProxy;
  if (os_log_type_enabled(AFSiriLogContextProxy, OS_LOG_TYPE_INFO))
  {
    v7 = 136315138;
    v8 = "[ADSiriConnectionRemote _fallbackWithSafetyNet]";
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "%s ", &v7, 0xCu);
  }

  [(ADSiriConnectionRemote *)self _closeNetworkConnection];
  networkURLFromPeer = self->_networkURLFromPeer;
  if (networkURLFromPeer)
  {
    connectionId = self->_connectionId;
    connectByPOP = self->_connectByPOP;
  }

  else
  {
    connectionId = 0;
    connectByPOP = 0;
    networkURLFromPeer = self->_networkURL;
  }

  [(ADSiriConnectionRemote *)self _establishNetworkConnectionToURL:networkURLFromPeer connectionId:connectionId withPOP:connectByPOP];
}

- (id)_prependHeader:(__CFHTTPMessage *)header toOutputBuffer:(id)buffer
{
  bufferCopy = buffer;
  v6 = CFHTTPMessageCopySerializedMessage(header);
  if (v6)
  {
    v7 = v6;
    CFRetain(v6);
    BytePtr = CFDataGetBytePtr(v7);
    Length = CFDataGetLength(v7);
    destructor[0] = _NSConcreteStackBlock;
    destructor[1] = 3221225472;
    destructor[2] = sub_10030CEF8;
    destructor[3] = &unk_10051E200;
    destructor[4] = v7;
    v10 = dispatch_data_create(BytePtr, Length, 0, destructor);
    CFRelease(v7);
  }

  else
  {
    v10 = 0;
  }

  concat = dispatch_data_create_concat(v10, bufferCopy);

  return concat;
}

- (void)_insertCompanionSpecificDataIntoHeader:(__CFHTTPMessage *)header
{
  v4 = AFProductType();
  CFHTTPMessageSetHeaderFieldValue(header, @"X-Companion-Type", v4);
  v5 = AFBuildVersion();

  CFHTTPMessageSetHeaderFieldValue(header, @"X-Companion-Build", v5);
}

- (id)_tryToReadHTTPHeaderIntoMessage:(__CFHTTPMessage *)message fromData:(id)data isComplete:(BOOL *)complete
{
  dataCopy = data;
  v8 = dataCopy;
  if (dataCopy && dispatch_data_get_size(dataCopy))
  {
    v16 = 0;
    v17 = &v16;
    v18 = 0x2020000000;
    v19 = 0;
    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_10030D0C8;
    v15[3] = &unk_10051B8F8;
    v15[4] = &v16;
    v15[5] = message;
    dispatch_data_apply(v8, v15);
    v9 = v17[3];
    if (v9)
    {
      size = dispatch_data_get_size(v8);
      if (size <= v9)
      {
        subrange = &_dispatch_data_empty;
        v13 = &_dispatch_data_empty;
      }

      else
      {
        subrange = dispatch_data_create_subrange(v8, v9, size - v9);
      }

      v8 = subrange;
    }

    if (complete)
    {
      *complete = CFHTTPMessageIsHeaderComplete(message) != 0;
    }

    v12 = v8;
    _Block_object_dispose(&v16, 8);
  }

  else
  {
    if (complete)
    {
      *complete = 0;
    }

    v12 = v8;
  }

  return v12;
}

- (id)_tryToReadPeerStreamHeaderFromData:(id)data needsReconnect:(BOOL *)reconnect
{
  dataCopy = data;
  size = dispatch_data_get_size(dataCopy);
  subrange = dataCopy;
  bytes = [subrange bytes];
  if (!subrange)
  {
    goto LABEL_11;
  }

  v9 = bytes;
  v10 = dispatch_data_get_size(subrange);
  if (v10 < 2)
  {
    goto LABEL_11;
  }

  if (v10 >= 6 && *v9 == 17233)
  {
    v11 = bswap32(*(v9 + 2)) >> 16;
    if (v10 - 6 >= v11)
    {
      v12 = v9[2] & 1;
      v13 = [[NSString alloc] initWithBytes:v9 + 6 length:v11 encoding:4];
      if (v13)
      {
        v14 = [[NSURL alloc] initWithString:v13];
        v15 = v11 + 6;
      }

      else
      {
        v14 = 0;
        v15 = -1;
      }

      goto LABEL_37;
    }

    goto LABEL_11;
  }

  v16 = 0;
  v12 = 0;
  v17 = 0;
  v15 = 0;
  v18 = 0;
  v19 = 0;
  if (v10 < 8 || *v9 != 16977)
  {
    goto LABEL_12;
  }

  v20 = bswap32(*(v9 + 1)) >> 16;
  if (v10 - 8 < v20)
  {
LABEL_11:
    v16 = 0;
    v17 = 0;
    v12 = 0;
    v15 = 0;
    v18 = 0;
    v19 = 0;
    goto LABEL_12;
  }

  v28 = v9 + 8;
  v29 = [[NSString alloc] initWithBytes:v9 + 8 length:v20 encoding:4];
  if (v29)
  {
    v14 = [[NSURL alloc] initWithString:v29];
    v15 = v20 + 8;
  }

  else
  {
    v14 = 0;
    v15 = -1;
  }

  if (!*(v9 + 2))
  {
    v12 = 0;
LABEL_37:
    v19 = 0;
LABEL_38:
    v17 = v14;
    v16 = 0;
    v18 = v17;
    goto LABEL_12;
  }

  v30 = __rev16(*(v9 + 2));
  v19 = [[NSString alloc] initWithBytes:&v28[v20] length:v30 encoding:4];
  if (!v19)
  {
    v12 = 0;
    v15 = -1;
    goto LABEL_38;
  }

  v15 += v30;
  v31 = v14;
  v16 = v31;
  v12 = 0;
  if (v15)
  {
    v18 = v31;
    goto LABEL_13;
  }

  v17 = 0;
  v18 = v31;
LABEL_12:

  v16 = v17;
LABEL_13:

  v21 = AFSiriLogContextProxy;
  if ((v15 & 0x8000000000000000) != 0 || v15 > size)
  {
    if (os_log_type_enabled(AFSiriLogContextProxy, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315138;
      v34 = "[ADSiriConnectionRemote _tryToReadPeerStreamHeaderFromData:needsReconnect:]";
      _os_log_error_impl(&_mh_execute_header, v21, OS_LOG_TYPE_ERROR, "%s Bad Peer Header", buf, 0xCu);
    }

    [(ADSiriConnectionRemote *)self _peerConnectionFailure];
  }

  else
  {
    if (os_log_type_enabled(AFSiriLogContextProxy, OS_LOG_TYPE_INFO))
    {
      *buf = 136315650;
      v34 = "[ADSiriConnectionRemote _tryToReadPeerStreamHeaderFromData:needsReconnect:]";
      v35 = 2112;
      v36 = v16;
      v37 = 1024;
      v38 = v12;
      _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_INFO, "%s Read Peer Header %@ %d", buf, 0x1Cu);
    }

    v22 = subrange;
    v23 = v22;
    if (subrange)
    {
      v24 = dispatch_data_get_size(v22);
      if (v24 <= v15)
      {
        subrange = &_dispatch_data_empty;
        v25 = &_dispatch_data_empty;
      }

      else
      {
        subrange = dispatch_data_create_subrange(v23, v15, v24 - v15);
      }
    }
  }

  objc_storeStrong(&self->_networkURLFromPeer, v16);
  if (v16)
  {
    v26 = [v16 isEqual:self->_networkURL] ^ 1;
  }

  else
  {
    v26 = 0;
  }

  if (reconnect)
  {
    *reconnect = (v26 | v12) & 1;
  }

  return subrange;
}

- (void)_closePeerConnection
{
  peerProvider = self->_peerProvider;
  if (peerProvider)
  {
    [(ADPeerConnectionProvider *)peerProvider close];
    v4 = self->_peerProvider;
    self->_peerProvider = 0;

    [(ADPeerStreamConnection *)self->_peerConnection close];
    networkOutputBuffer = self->_networkOutputBuffer;
    self->_networkOutputBuffer = 0;

    networkURLFromPeer = self->_networkURLFromPeer;
    self->_networkURLFromPeer = 0;

    outgoingHTTPHeader = self->_outgoingHTTPHeader;
    if (outgoingHTTPHeader)
    {
      CFRelease(outgoingHTTPHeader);
      self->_outgoingHTTPHeader = 0;
    }
  }
}

- (void)_establishPeerConnection
{
  v3 = AFSiriLogContextProxy;
  if (os_log_type_enabled(AFSiriLogContextProxy, OS_LOG_TYPE_INFO))
  {
    *buf = 136315138;
    v11 = "[ADSiriConnectionRemote _establishPeerConnection]";
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "%s ", buf, 0xCu);
  }

  if ([(ADPeerConnectionProvider *)self->_peerProvider isEstablishing])
  {
    v4 = AFSiriLogContextProxy;
    if (os_log_type_enabled(AFSiriLogContextProxy, OS_LOG_TYPE_INFO))
    {
      *buf = 136315138;
      v11 = "[ADSiriConnectionRemote _establishPeerConnection]";
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "%s Already establishing peer streams!", buf, 0xCu);
    }
  }

  else
  {
    [(ADSiriConnectionRemote *)self _doMetricsBookkeepingForPeerStreamsStart];
    v5 = [[ADPeerConnectionProvider alloc] initWithQueue:self->_queue];
    [(ADPeerConnectionProvider *)self->_peerProvider close];
    objc_storeStrong(&self->_peerProvider, v5);
    _peerConnection = [(ADSiriConnectionRemote *)self _peerConnection];
    [(ADPeerConnectionProvider *)v5 setPeerStreamConnection:_peerConnection];

    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_10030D754;
    v8[3] = &unk_10051C9D0;
    v8[4] = self;
    v9 = v5;
    v7 = v5;
    [(ADPeerConnectionProvider *)v7 openConnectionForURL:0 withConnectionId:0 initialPayload:0 completion:v8];
  }
}

- (void)_preheat
{
  if ([(ADPeerStreamConnection *)self->_peerConnection hasNearbyPeer])
  {
    [(ADSiriConnectionRemote *)self _establishPeerConnection];
    networkURLFromPeer = self->_networkURLFromPeer;
    if (!networkURLFromPeer)
    {
      networkURLFromPeer = self->_networkURL;
    }

    connectionId = self->_connectionId;
    connectByPOP = self->_connectByPOP;

    [(ADSiriConnectionRemote *)self _establishNetworkConnectionToURL:networkURLFromPeer connectionId:connectionId withPOP:connectByPOP];
  }
}

- (void)dealloc
{
  [(ADSiriConnectionRemote *)self _unregisterForSleepNotification];
  [(ADSiriConnectionRemote *)self _closePeerConnection];
  [(ADSiriConnectionRemote *)self _closeNetworkConnection];
  v3.receiver = self;
  v3.super_class = ADSiriConnectionRemote;
  [(ADSiriConnectionRemote *)&v3 dealloc];
}

- (ADSiriConnectionRemote)init
{
  v32.receiver = self;
  v32.super_class = ADSiriConnectionRemote;
  v2 = [(ADSiriConnectionRemote *)&v32 init];
  if (v2)
  {
    v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v4 = dispatch_queue_attr_make_with_qos_class(v3, QOS_CLASS_USER_INTERACTIVE, 0);

    v5 = dispatch_queue_create("ADSiriConnectionRemote", v4);
    queue = v2->_queue;
    v2->_queue = v5;

    v7 = +[ADAccount activeAccount];
    saConnectionPolicy = [v7 saConnectionPolicy];
    routes = [saConnectionPolicy routes];
    firstObject = [routes firstObject];

    hostname = [v7 hostname];
    v12 = [hostname stringByAppendingString:@"/ace"];
    if (v12)
    {
      v13 = [[NSURL alloc] initWithString:v12];
    }

    else
    {
      v13 = 0;
    }

    objc_storeStrong(&v2->_networkURL, v13);
    if (v12)
    {
    }

    if (v2->_networkURL || (v14 = AFSiriLogContextProxy, os_log_type_enabled(AFSiriLogContextProxy, OS_LOG_TYPE_INFO)) && (*buf = 136315138, v34 = "[ADSiriConnectionRemote init]", _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_INFO, "%s _networkURL is set to nil", buf, 0xCu), v2->_networkURL))
    {
      if (firstObject && ![v7 connectionPolicyStatus])
      {
        cname = [firstObject cname];
        v16 = cname;
        if (cname)
        {
          host = cname;
        }

        else
        {
          host = [firstObject host];
        }

        v18 = host;

        v19 = [NSURLComponents componentsWithURL:v2->_networkURL resolvingAgainstBaseURL:0];
        [v19 setHost:v18];
        v20 = [v19 URL];
        networkURL = v2->_networkURL;
        v2->_networkURL = v20;

        hostname = v18;
      }
    }

    type = [firstObject type];
    v2->_connectByPOP = [type isEqualToString:SAConnectionPolicyTypePOPValue];

    connectionId = [firstObject connectionId];
    v24 = [connectionId copy];
    connectionId = v2->_connectionId;
    v2->_connectionId = v24;

    v26 = [[ADPeerStreamConnection alloc] initWithServiceIdentifier:@"com.apple.private.alloy.siri.proxy" delegate:v2 listener:1];
    peerConnection = v2->_peerConnection;
    v2->_peerConnection = v26;

    v28 = v2->_queue;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10030DD7C;
    block[3] = &unk_10051DFE8;
    v31 = v2;
    dispatch_async(v28, block);
  }

  return v2;
}

@end