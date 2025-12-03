@interface CLMiLoConnectionInternal
+ (BOOL)_isKnownNonActionableMessage:(void *)message;
- (CLMiLoConnectionInternal)initWithInfo:(id)info delegate:(id)delegate delegateQueue:(id)queue;
- (void)_connectServiceWithIdentifier:(id)identifier;
- (void)_createCustomLocationOfInterestAtCurrentLocationWithRequestIdentifier:(id)identifier;
- (void)_createServiceWithServiceType:(unint64_t)type locationTypes:(id)types;
- (void)_deleteServiceWithIdentifier:(id)identifier;
- (void)_disconnectServiceWithIdentifier:(id)identifier;
- (void)_handleDaemonEvent:(id)event;
- (void)_handleDebugResponseEvent:(id)event;
- (void)_handleGenericEvent:(id)event;
- (void)_handleMiLoConnectionStatusEvent:(id)event;
- (void)_handlePredictionUpdateEvent:(id)event;
- (void)_invalidateLocationClient;
- (void)_labelEventWithRequestIdentifier:(id)identifier placeIdentifier:(id)placeIdentifier observationIdentifier:(id)observationIdentifier;
- (void)_labelEventsWithStartDate:(id)date endDate:(id)endDate placeIdentifier:(id)identifier requestIdentifier:(id)requestIdentifier;
- (void)_notifyClientConnectServiceDidFailWithServiceIdentifier:(id)identifier withError:(id)error;
- (void)_notifyClientCreateServiceDidFailWithError:(id)error;
- (void)_notifyClientDeleteServiceDidFailWithServiceIdentifier:(id)identifier withError:(id)error;
- (void)_notifyClientDidCompleteClientRequest:(id)request withError:(id)error;
- (void)_notifyClientDidCreateServiceWithServiceIdentifier:(id)identifier;
- (void)_notifyClientDidDeleteServiceWithServiceIdentifier:(id)identifier;
- (void)_notifyClientDidExportDatabaseWithResponse:(id)response;
- (void)_notifyClientDidFindMyServicesWithServiceDescriptors:(id)descriptors;
- (void)_notifyClientDidUpdateMiLoConnectionStatus:(id)status;
- (void)_notifyClientDidUpdatePrediction:(id)prediction;
- (void)_notifyClientDidUpdateServiceStatus:(id)status;
- (void)_notifyClientDisconnectServiceDidFailWithError:(id)error serviceIdentifier:(id)identifier;
- (void)_notifyClientOfGenericEventResponse:(id)response;
- (void)_notifyClientQueryMiLoConnectionStatusDidFailWithError:(id)error;
- (void)_notifyClientQueryServiceDidFailWithError:(id)error;
- (void)_notifyClientRecordingMetaInfo:(id)info;
- (void)_purgeAllMiLoDataWithRequestIdentifier:(id)identifier;
- (void)_queryMiLoConnectionStatus;
- (void)_queryMyServices;
- (void)_registerForMiLoConnectionStatusEvents;
- (void)_registerForMiLoDebugResponseEvents;
- (void)_registerForMiLoGenericEvents;
- (void)_registerForMiLoServiceEvents;
- (void)_removeCustomLocationOfInterestFromMonitoringWithIdentifier:(id)identifier withRequestIdentifier:(id)requestIdentifier;
- (void)_removeLabels:(id)labels withRequestIdentifier:(id)identifier;
- (void)_requestExportDatabaseWithRequestIdentifier:(id)identifier;
- (void)_requestMiLoPredictionWithRequestIdentifier:(id)identifier;
- (void)_requestModelLearningWithRequestIdentifier:(id)identifier;
- (void)_requestObservationWithRequestIdentifier:(id)identifier placeIdentifier:(id)placeIdentifier;
- (void)_setHandlerForMiLoPredictionEvents;
- (void)_startUpdatingMicroLocationWithConfiguration:(id)configuration withRequestIdentifier:(id)identifier;
- (void)_stopUpdatingMicroLocationWithRequestIdentifier:(id)identifier;
- (void)_teardown;
- (void)_unregisterForMiLoConnectionStatusEvents;
- (void)_unregisterForMiLoDebugResponseEvents;
- (void)_unregisterForMiLoGenericEvents;
- (void)_unregisterForMiloServiceEvents;
- (void)_unsetHandlerForMiLoPredictionEvents;
- (void)dealloc;
@end

@implementation CLMiLoConnectionInternal

- (CLMiLoConnectionInternal)initWithInfo:(id)info delegate:(id)delegate delegateQueue:(id)queue
{
  v12.receiver = self;
  v12.super_class = CLMiLoConnectionInternal;
  v8 = [(CLMiLoConnectionInternal *)&v12 init];
  v9 = v8;
  if (v8)
  {
    v8->_delegate = delegate;
    if (queue)
    {
      v8->_delegateQueue = queue;
      dispatch_retain(queue);
    }

    else
    {
      v8->_delegateQueue = dispatch_queue_create("com.apple.MiLoConnection.privateQueue", 0);
    }

    v10 = dispatch_queue_create("com.apple.MiLoConnection.internalQueue", 0);
    v9->_sender = info;
    v9->_connectedServiceIdentifier = 0;
    v9->_locationdConnection = 0;
    v9->_internalQueue = v10;
  }

  return v9;
}

+ (BOOL)_isKnownNonActionableMessage:(void *)message
{
  result = 0;
  if (message)
  {
    v4 = CLConnectionMessage::name(message);
    if (!std::string::compare(v4, "LocationManager/kCLConnectionMessageRegistration"))
    {
      return 1;
    }

    v5 = CLConnectionMessage::name(message);
    if (!std::string::compare(v5, "kCLConnectionMessageAuthorizationStatus"))
    {
      return 1;
    }
  }

  return result;
}

- (void)_invalidateLocationClient
{
  v10 = *MEMORY[0x1E69E9840];
  if (self->_locationdConnection)
  {
    if (qword_1EAFE4728 != -1)
    {
      dispatch_once(&qword_1EAFE4728, &unk_1F0E6EAB0);
    }

    v3 = qword_1EAFE4730;
    if (os_log_type_enabled(qword_1EAFE4730, OS_LOG_TYPE_INFO))
    {
      v7[0] = 68289026;
      v7[1] = 0;
      v8 = 2082;
      v9 = "";
      _os_log_impl(&dword_19B873000, v3, OS_LOG_TYPE_INFO, "{msg%{public}.0s:invalidating location client...}", v7, 0x12u);
    }

    locationdConnection = self->_locationdConnection;
    CLConnectionClient::setInterruptionHandler();
    if (self->_locationdConnection)
    {
      v5 = MEMORY[0x19EAE95D0]();
      MEMORY[0x19EAE98C0](v5, 0xB0C40BC2CC919);
    }

    self->_locationdConnection = 0;
  }

  v6 = *MEMORY[0x1E69E9840];
}

- (void)dealloc
{
  dispatch_release(self->_delegateQueue);
  dispatch_release(self->_internalQueue);
  v3.receiver = self;
  v3.super_class = CLMiLoConnectionInternal;
  [(CLMiLoConnectionInternal *)&v3 dealloc];
}

- (void)_teardown
{
  v12 = *MEMORY[0x1E69E9840];
  if (qword_1EAFE4728 != -1)
  {
    dispatch_once(&qword_1EAFE4728, &unk_1F0E6EAB0);
  }

  v3 = qword_1EAFE4730;
  if (os_log_type_enabled(qword_1EAFE4730, OS_LOG_TYPE_INFO))
  {
    v4 = objc_opt_class();
    v7[0] = 68289282;
    v7[1] = 0;
    v8 = 2082;
    v9 = "";
    v10 = 2082;
    uTF8String = [NSStringFromClass(v4) UTF8String];
    _os_log_impl(&dword_19B873000, v3, OS_LOG_TYPE_INFO, "{msg%{public}.0s:tearing down:, class:%{public, location:escape_only}s}", v7, 0x1Cu);
  }

  if (self->_connectedServiceIdentifier)
  {
    [(CLMiLoConnectionInternal *)self _disconnectServiceWithIdentifier:?];

    self->_connectedServiceIdentifier = 0;
    [(CLMiLoConnectionInternal *)self _unsetHandlerForMiLoPredictionEvents];
  }

  [(CLMiLoConnectionInternal *)self _unregisterForMiloServiceEvents];
  [(CLMiLoConnectionInternal *)self _unregisterForMiLoDebugResponseEvents];
  [(CLMiLoConnectionInternal *)self _unregisterForMiLoConnectionStatusEvents];
  [(CLMiLoConnectionInternal *)self _unregisterForMiLoGenericEvents];
  if (self->_locationdConnection)
  {
    v5 = MEMORY[0x19EAE95D0]();
    MEMORY[0x19EAE98C0](v5, 0xB0C40BC2CC919);
  }

  self->_locationdConnection = 0;
  v6 = *MEMORY[0x1E69E9840];
}

- (void)_registerForMiLoServiceEvents
{
  v10 = *MEMORY[0x1E69E9840];
  if (qword_1EAFE4728 != -1)
  {
    dispatch_once(&qword_1EAFE4728, &unk_1F0E6EAB0);
  }

  v3 = qword_1EAFE4730;
  if (os_log_type_enabled(qword_1EAFE4730, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 68289026;
    v8[0] = 2082;
    *&v8[1] = "";
    _os_log_impl(&dword_19B873000, v3, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:registering for kCLConnectionMessageMiLoServiceEvent}", buf, 0x12u);
  }

  if (self->_locationdConnection)
  {
    sub_19B8759E8(buf, "kCLConnectionMessageMiLoServiceEvent");
    CLConnectionClient::setHandlerForMessage();
    if (v9 < 0)
    {
      operator delete(*buf);
    }

    v5 = @"kCLConnectionMessageSubscribeKey";
    v6 = MEMORY[0x1E695E118];
    [MEMORY[0x1E695DF20] dictionaryWithObjects:&v6 forKeys:&v5 count:1];
    sub_19BA0B5B4();
  }

  v4 = *MEMORY[0x1E69E9840];
}

- (void)_unregisterForMiloServiceEvents
{
  v11 = *MEMORY[0x1E69E9840];
  if (qword_1EAFE4728 != -1)
  {
    dispatch_once(&qword_1EAFE4728, &unk_1F0E6EAB0);
  }

  v3 = qword_1EAFE4730;
  if (os_log_type_enabled(qword_1EAFE4730, OS_LOG_TYPE_DEFAULT))
  {
    v4 = self->_locationdConnection != 0;
    *buf = 68289282;
    *&buf[4] = 0;
    v9[0] = 2082;
    *&v9[1] = "";
    v9[5] = 1026;
    v10 = v4;
    _os_log_impl(&dword_19B873000, v3, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:unregistering for kCLConnectionMessageMiLoServiceEvent, Locationd Connection valid:%{public}hhd}", buf, 0x18u);
  }

  if (self->_locationdConnection)
  {
    sub_19B8759E8(buf, "kCLConnectionMessageMiLoServiceEvent");
    CLConnectionClient::setHandlerForMessage();
    if (SHIBYTE(v10) < 0)
    {
      operator delete(*buf);
    }

    v6 = @"kCLConnectionMessageSubscribeKey";
    v7 = MEMORY[0x1E695E110];
    [MEMORY[0x1E695DF20] dictionaryWithObjects:&v7 forKeys:&v6 count:1];
    sub_19BA0B5B4();
  }

  v5 = *MEMORY[0x1E69E9840];
}

- (void)_setHandlerForMiLoPredictionEvents
{
  v9 = *MEMORY[0x1E69E9840];
  if (qword_1EAFE4728 != -1)
  {
    dispatch_once(&qword_1EAFE4728, &unk_1F0E6EAB0);
  }

  v3 = qword_1EAFE4730;
  if (os_log_type_enabled(qword_1EAFE4730, OS_LOG_TYPE_DEBUG))
  {
    *buf = 68289026;
    *&buf[4] = 0;
    v6 = 2082;
    v7 = "";
    _os_log_impl(&dword_19B873000, v3, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:set handler for kCLConnectionMessageMiLoPredictionEventUpdate}", buf, 0x12u);
  }

  if (self->_locationdConnection)
  {
    sub_19B8759E8(buf, "kCLConnectionMessageMiLoPredictionEventUpdate");
    CLConnectionClient::setHandlerForMessage();
    if (v8 < 0)
    {
      operator delete(*buf);
    }
  }

  v4 = *MEMORY[0x1E69E9840];
}

- (void)_unsetHandlerForMiLoPredictionEvents
{
  v9 = *MEMORY[0x1E69E9840];
  if (qword_1EAFE4728 != -1)
  {
    dispatch_once(&qword_1EAFE4728, &unk_1F0E6EAB0);
  }

  v3 = qword_1EAFE4730;
  if (os_log_type_enabled(qword_1EAFE4730, OS_LOG_TYPE_DEBUG))
  {
    __p = 68289026;
    v6 = 2082;
    v7 = "";
    _os_log_impl(&dword_19B873000, v3, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:unset handler for kCLConnectionMessageRegisterMiLoPredictionEvent}", &__p, 0x12u);
  }

  if (self->_locationdConnection)
  {
    sub_19B8759E8(&__p, "kCLConnectionMessageMiLoPredictionEventUpdate");
    CLConnectionClient::setHandlerForMessage();
    if (v8 < 0)
    {
      operator delete(__p);
    }
  }

  v4 = *MEMORY[0x1E69E9840];
}

- (void)_registerForMiLoDebugResponseEvents
{
  v9 = *MEMORY[0x1E69E9840];
  if (qword_1EAFE4728 != -1)
  {
    dispatch_once(&qword_1EAFE4728, &unk_1F0E6EAB0);
  }

  v3 = qword_1EAFE4730;
  if (os_log_type_enabled(qword_1EAFE4730, OS_LOG_TYPE_DEBUG))
  {
    *buf = 68289026;
    *&buf[4] = 0;
    v6 = 2082;
    v7 = "";
    _os_log_impl(&dword_19B873000, v3, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:set handler for kCLConnectionMessageMiLoServiceDebugResponse}", buf, 0x12u);
  }

  if (self->_locationdConnection)
  {
    sub_19B8759E8(buf, "kCLConnectionMessageMiLoServiceDebugResponse");
    CLConnectionClient::setHandlerForMessage();
    if (v8 < 0)
    {
      operator delete(*buf);
    }
  }

  v4 = *MEMORY[0x1E69E9840];
}

- (void)_unregisterForMiLoDebugResponseEvents
{
  v9 = *MEMORY[0x1E69E9840];
  if (qword_1EAFE4728 != -1)
  {
    dispatch_once(&qword_1EAFE4728, &unk_1F0E6EAB0);
  }

  v3 = qword_1EAFE4730;
  if (os_log_type_enabled(qword_1EAFE4730, OS_LOG_TYPE_DEBUG))
  {
    __p = 68289026;
    v6 = 2082;
    v7 = "";
    _os_log_impl(&dword_19B873000, v3, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:unset handler for kCLConnectionMessageMiLoServiceDebugResponse}", &__p, 0x12u);
  }

  if (self->_locationdConnection)
  {
    sub_19B8759E8(&__p, "kCLConnectionMessageMiLoServiceDebugResponse");
    CLConnectionClient::setHandlerForMessage();
    if (v8 < 0)
    {
      operator delete(__p);
    }
  }

  v4 = *MEMORY[0x1E69E9840];
}

- (void)_registerForMiLoGenericEvents
{
  v9 = *MEMORY[0x1E69E9840];
  if (qword_1EAFE4728 != -1)
  {
    dispatch_once(&qword_1EAFE4728, &unk_1F0E6EAB0);
  }

  v3 = qword_1EAFE4730;
  if (os_log_type_enabled(qword_1EAFE4730, OS_LOG_TYPE_DEBUG))
  {
    *buf = 68289026;
    *&buf[4] = 0;
    v6 = 2082;
    v7 = "";
    _os_log_impl(&dword_19B873000, v3, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:set handler for kCLConnectionMessageMiLoGenericEventResponse}", buf, 0x12u);
  }

  if (self->_locationdConnection)
  {
    sub_19B8759E8(buf, "kCLConnectionMessageMiLoGenericEventResponse");
    CLConnectionClient::setHandlerForMessage();
    if (v8 < 0)
    {
      operator delete(*buf);
    }
  }

  v4 = *MEMORY[0x1E69E9840];
}

- (void)_unregisterForMiLoGenericEvents
{
  v9 = *MEMORY[0x1E69E9840];
  if (qword_1EAFE4728 != -1)
  {
    dispatch_once(&qword_1EAFE4728, &unk_1F0E6EAB0);
  }

  v3 = qword_1EAFE4730;
  if (os_log_type_enabled(qword_1EAFE4730, OS_LOG_TYPE_DEBUG))
  {
    __p = 68289026;
    v6 = 2082;
    v7 = "";
    _os_log_impl(&dword_19B873000, v3, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:unset handler for kCLConnectionMessageMiLoGenericEventResponse}", &__p, 0x12u);
  }

  if (self->_locationdConnection)
  {
    sub_19B8759E8(&__p, "kCLConnectionMessageMiLoGenericEventResponse");
    CLConnectionClient::setHandlerForMessage();
    if (v8 < 0)
    {
      operator delete(__p);
    }
  }

  v4 = *MEMORY[0x1E69E9840];
}

- (void)_registerForMiLoConnectionStatusEvents
{
  v9 = *MEMORY[0x1E69E9840];
  if (qword_1EAFE4728 != -1)
  {
    dispatch_once(&qword_1EAFE4728, &unk_1F0E6EAB0);
  }

  v3 = qword_1EAFE4730;
  if (os_log_type_enabled(qword_1EAFE4730, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_19B873000, v3, OS_LOG_TYPE_DEFAULT, "set handler for kCLConnectionMessageMiLoConnectionStatusEvent", buf, 2u);
  }

  v4 = sub_19B87DD40();
  if (*(v4 + 160) > 1 || *(v4 + 164) > 1 || *(v4 + 168) > 1 || *(v4 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1EAFE4728 != -1)
    {
      dispatch_once(&qword_1EAFE4728, &unk_1F0E6EAB0);
    }

    v5 = _os_log_send_and_compose_impl();
    sub_19B885924("Generic", 1, 0, 2, "[CLMiLoConnectionInternal _registerForMiLoConnectionStatusEvents]", "CoreLocation: %s\n", v5);
    if (v5 != buf)
    {
      free(v5);
    }
  }

  if (self->_locationdConnection)
  {
    sub_19B8759E8(buf, "kCLConnectionMessageMiLoConnectionStatusEvent");
    CLConnectionClient::setHandlerForMessage();
    if (v8 < 0)
    {
      operator delete(*buf);
    }

    [(CLMiLoConnectionInternal *)self _queryMiLoConnectionStatus];
  }

  v6 = *MEMORY[0x1E69E9840];
}

- (void)_unregisterForMiLoConnectionStatusEvents
{
  v9 = *MEMORY[0x1E69E9840];
  if (qword_1EAFE4728 != -1)
  {
    dispatch_once(&qword_1EAFE4728, &unk_1F0E6EAB0);
  }

  v3 = qword_1EAFE4730;
  if (os_log_type_enabled(qword_1EAFE4730, OS_LOG_TYPE_DEBUG))
  {
    __p = 68289026;
    v6 = 2082;
    v7 = "";
    _os_log_impl(&dword_19B873000, v3, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:unset handler for kCLConnectionMessageMiLoConnectionStatusEvent}", &__p, 0x12u);
  }

  if (self->_locationdConnection)
  {
    sub_19B8759E8(&__p, "kCLConnectionMessageMiLoConnectionStatusEvent");
    CLConnectionClient::setHandlerForMessage();
    if (v8 < 0)
    {
      operator delete(__p);
    }
  }

  v4 = *MEMORY[0x1E69E9840];
}

- (void)_notifyClientDidUpdateMiLoConnectionStatus:(id)status
{
  delegate = self->_delegate;
  if (objc_opt_respondsToSelector())
  {
    delegateQueue = self->_delegateQueue;
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = sub_19B9FD6E8;
    v7[3] = &unk_1E753CF38;
    v7[4] = self;
    v7[5] = status;
    dispatch_async(delegateQueue, v7);
  }
}

- (void)_notifyClientDidUpdateServiceStatus:(id)status
{
  delegate = self->_delegate;
  if (objc_opt_respondsToSelector())
  {
    delegateQueue = self->_delegateQueue;
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = sub_19B9FD788;
    v7[3] = &unk_1E753CF38;
    v7[4] = self;
    v7[5] = status;
    dispatch_async(delegateQueue, v7);
  }
}

- (void)_notifyClientDidCreateServiceWithServiceIdentifier:(id)identifier
{
  delegate = self->_delegate;
  if (objc_opt_respondsToSelector())
  {
    delegateQueue = self->_delegateQueue;
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = sub_19B9FD828;
    v7[3] = &unk_1E753CF38;
    v7[4] = self;
    v7[5] = identifier;
    dispatch_async(delegateQueue, v7);
  }
}

- (void)_notifyClientCreateServiceDidFailWithError:(id)error
{
  delegate = self->_delegate;
  if (objc_opt_respondsToSelector())
  {
    delegateQueue = self->_delegateQueue;
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = sub_19B9FD8C8;
    v7[3] = &unk_1E753CF38;
    v7[4] = self;
    v7[5] = error;
    dispatch_async(delegateQueue, v7);
  }
}

- (void)_notifyClientDeleteServiceDidFailWithServiceIdentifier:(id)identifier withError:(id)error
{
  delegate = self->_delegate;
  if (objc_opt_respondsToSelector())
  {
    delegateQueue = self->_delegateQueue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = sub_19B9FD978;
    block[3] = &unk_1E753D098;
    block[4] = self;
    block[5] = identifier;
    block[6] = error;
    dispatch_async(delegateQueue, block);
  }
}

- (void)_notifyClientDidDeleteServiceWithServiceIdentifier:(id)identifier
{
  delegate = self->_delegate;
  if (objc_opt_respondsToSelector())
  {
    delegateQueue = self->_delegateQueue;
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = sub_19B9FDA20;
    v7[3] = &unk_1E753CF38;
    v7[4] = self;
    v7[5] = identifier;
    dispatch_async(delegateQueue, v7);
  }
}

- (void)_notifyClientDidFindMyServicesWithServiceDescriptors:(id)descriptors
{
  delegate = self->_delegate;
  if (objc_opt_respondsToSelector())
  {
    delegateQueue = self->_delegateQueue;
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = sub_19B9FDAC0;
    v7[3] = &unk_1E753CF38;
    v7[4] = self;
    v7[5] = descriptors;
    dispatch_async(delegateQueue, v7);
  }
}

- (void)_notifyClientConnectServiceDidFailWithServiceIdentifier:(id)identifier withError:(id)error
{
  delegate = self->_delegate;
  if (objc_opt_respondsToSelector())
  {
    delegateQueue = self->_delegateQueue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = sub_19B9FDB70;
    block[3] = &unk_1E753D098;
    block[4] = self;
    block[5] = identifier;
    block[6] = error;
    dispatch_async(delegateQueue, block);
  }
}

- (void)_notifyClientDidUpdatePrediction:(id)prediction
{
  delegate = self->_delegate;
  if (objc_opt_respondsToSelector())
  {
    delegateQueue = self->_delegateQueue;
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = sub_19B9FDC18;
    v7[3] = &unk_1E753CF38;
    v7[4] = self;
    v7[5] = prediction;
    dispatch_async(delegateQueue, v7);
  }
}

- (void)_notifyClientQueryServiceDidFailWithError:(id)error
{
  delegate = self->_delegate;
  if (objc_opt_respondsToSelector())
  {
    delegateQueue = self->_delegateQueue;
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = sub_19B9FDCB8;
    v7[3] = &unk_1E753CF38;
    v7[4] = self;
    v7[5] = error;
    dispatch_async(delegateQueue, v7);
  }
}

- (void)_notifyClientDisconnectServiceDidFailWithError:(id)error serviceIdentifier:(id)identifier
{
  delegate = self->_delegate;
  if (objc_opt_respondsToSelector())
  {
    delegateQueue = self->_delegateQueue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = sub_19B9FDD68;
    block[3] = &unk_1E753D098;
    block[4] = self;
    block[5] = identifier;
    block[6] = error;
    dispatch_async(delegateQueue, block);
  }
}

- (void)_notifyClientDidCompleteClientRequest:(id)request withError:(id)error
{
  delegate = self->_delegate;
  if (objc_opt_respondsToSelector())
  {
    delegateQueue = self->_delegateQueue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = sub_19B9FDE20;
    block[3] = &unk_1E753D098;
    block[4] = self;
    block[5] = request;
    block[6] = error;
    dispatch_async(delegateQueue, block);
  }
}

- (void)_notifyClientDidExportDatabaseWithResponse:(id)response
{
  delegate = self->_delegate;
  if (objc_opt_respondsToSelector())
  {
    delegateQueue = self->_delegateQueue;
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = sub_19B9FDEC8;
    v7[3] = &unk_1E753CF38;
    v7[4] = self;
    v7[5] = response;
    dispatch_async(delegateQueue, v7);
  }
}

- (void)_notifyClientOfGenericEventResponse:(id)response
{
  delegate = self->_delegate;
  if (objc_opt_respondsToSelector())
  {
    delegateQueue = self->_delegateQueue;
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = sub_19B9FDFE0;
    v7[3] = &unk_1E753CF38;
    v7[4] = self;
    v7[5] = response;
    dispatch_async(delegateQueue, v7);
  }
}

- (void)_notifyClientQueryMiLoConnectionStatusDidFailWithError:(id)error
{
  delegate = self->_delegate;
  if (objc_opt_respondsToSelector())
  {
    delegateQueue = self->_delegateQueue;
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = sub_19B9FE0EC;
    v7[3] = &unk_1E753CF38;
    v7[4] = self;
    v7[5] = error;
    dispatch_async(delegateQueue, v7);
  }
}

- (void)_notifyClientRecordingMetaInfo:(id)info
{
  delegate = self->_delegate;
  if (objc_opt_respondsToSelector())
  {
    delegateQueue = self->_delegateQueue;
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = sub_19B9FE18C;
    v7[3] = &unk_1E753CF38;
    v7[4] = self;
    v7[5] = info;
    dispatch_async(delegateQueue, v7);
  }
}

- (void)_handleDaemonEvent:(id)event
{
  v173 = *MEMORY[0x1E69E9840];
  if (qword_1EAFE4728 != -1)
  {
    dispatch_once(&qword_1EAFE4728, &unk_1F0E6EAB0);
  }

  v5 = qword_1EAFE4730;
  if (os_log_type_enabled(qword_1EAFE4730, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_19B873000, v5, OS_LOG_TYPE_DEFAULT, "kCLConnectionMessageMiLoServiceEvent, _handleDaemonEvent", buf, 2u);
  }

  v6 = sub_19B87DD40();
  if (*(v6 + 160) > 1 || *(v6 + 164) > 1 || *(v6 + 168) > 1 || *(v6 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1EAFE4728 != -1)
    {
      dispatch_once(&qword_1EAFE4728, &unk_1F0E6EAB0);
    }

    v7 = _os_log_send_and_compose_impl();
    sub_19B885924("Generic", 1, 0, 2, "[CLMiLoConnectionInternal _handleDaemonEvent:]", "CoreLocation: %s\n", v7);
    if (v7 != buf)
    {
      free(v7);
    }
  }

  if (!self->_delegate)
  {
    goto LABEL_48;
  }

  if (!event)
  {
    if (qword_1EAFE4728 != -1)
    {
      dispatch_once(&qword_1EAFE4728, &unk_1F0E6EAB0);
    }

    v14 = qword_1EAFE4730;
    if (os_log_type_enabled(qword_1EAFE4730, OS_LOG_TYPE_FAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_19B873000, v14, OS_LOG_TYPE_FAULT, "nil service event dictionary received", buf, 2u);
    }

    v15 = sub_19B87DD40();
    if ((*(v15 + 160) & 0x80000000) == 0 || (*(v15 + 164) & 0x80000000) == 0 || (*(v15 + 168) & 0x80000000) == 0 || *(v15 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE4728 != -1)
      {
        dispatch_once(&qword_1EAFE4728, &unk_1F0E6EAB0);
      }

      v16 = _os_log_send_and_compose_impl();
      sub_19B885924("Generic", 1, 0, 0, "[CLMiLoConnectionInternal _handleDaemonEvent:]", "CoreLocation: %s\n", v16);
      if (v16 != buf)
      {
        free(v16);
      }
    }

    v17 = MEMORY[0x1E696ABC0];
    v161 = *MEMORY[0x1E696A578];
    v162 = @"Empty daemon response dictionary";
    v18 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v162 forKeys:&v161 count:1];
    v19 = v17;
    v20 = @"kCLErrorDomainPrivate";
    v21 = 4;
    goto LABEL_46;
  }

  if (![event objectForKeyedSubscript:0x1F0E73DA0])
  {
    if (qword_1EAFE4728 != -1)
    {
      dispatch_once(&qword_1EAFE4728, &unk_1F0E6EAB0);
    }

    v22 = qword_1EAFE4730;
    if (os_log_type_enabled(qword_1EAFE4730, OS_LOG_TYPE_FAULT))
    {
      v23 = [objc_msgSend(objc_msgSend(event "allKeys")];
      *buf = 68289282;
      v164 = 0;
      v165 = 2082;
      v166 = "";
      v167 = 2082;
      v168 = v23;
      _os_log_impl(&dword_19B873000, v22, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:unrecognized service event dictionary received, DictionaryKeys:%{public, location:escape_only}s}", buf, 0x1Cu);
      if (qword_1EAFE4728 != -1)
      {
        dispatch_once(&qword_1EAFE4728, &unk_1F0E6EAB0);
      }
    }

    v24 = qword_1EAFE4730;
    if (os_signpost_enabled(qword_1EAFE4730))
    {
      v25 = [objc_msgSend(objc_msgSend(event "allKeys")];
      *buf = 68289282;
      v164 = 0;
      v165 = 2082;
      v166 = "";
      v167 = 2082;
      v168 = v25;
      _os_signpost_emit_with_name_impl(&dword_19B873000, v24, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "unrecognized service event dictionary received", "{msg%{public}.0s:unrecognized service event dictionary received, DictionaryKeys:%{public, location:escape_only}s}", buf, 0x1Cu);
    }

    v26 = MEMORY[0x1E696ABC0];
    v145 = *MEMORY[0x1E696A578];
    v146 = @"Internal error";
    v18 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v146 forKeys:&v145 count:1];
    v19 = v26;
    v20 = @"kCLErrorDomainPrivate";
    v21 = 0;
LABEL_46:
    v27 = -[CLMiLoServiceStatus initWithServiceState:suspendReasons:serviceDescriptor:currentLocationOfInterestUuid:currentLocationOfInterestType:error:serviceQualityInfo:places:metaInfo:]([CLMiLoServiceStatus alloc], "initWithServiceState:suspendReasons:serviceDescriptor:currentLocationOfInterestUuid:currentLocationOfInterestType:error:serviceQualityInfo:places:metaInfo:", 2, 0, 0, 0, 0, [v19 errorWithDomain:v20 code:v21 userInfo:v18], 0, 0, 0);
    selfCopy2 = self;
LABEL_47:
    [(CLMiLoConnectionInternal *)selfCopy2 _notifyClientDidUpdateServiceStatus:v27];
    goto LABEL_48;
  }

  v8 = [objc_msgSend(event objectForKeyedSubscript:{0x1F0E73DA0), "integerValue"}];
  v9 = [event objectForKeyedSubscript:0x1F0E73DC0];
  v10 = v9;
  if (v8 <= 6)
  {
    if (v8 > 3)
    {
      if (v8 == 4)
      {
        if (v9)
        {
          v65 = MEMORY[0x1E696ABC0];
          integerValue = [v9 integerValue];
          v157 = *MEMORY[0x1E696A578];
          v158 = sub_19BA007C0([v10 integerValue]);
          v67 = [v65 errorWithDomain:@"kCLErrorDomainPrivate" code:integerValue userInfo:{objc_msgSend(MEMORY[0x1E695DF20], "dictionaryWithObjects:forKeys:count:", &v158, &v157, 1)}];
          v68 = [event objectForKeyedSubscript:0x1F0E73DE0];
          if (qword_1EAFE4728 != -1)
          {
            dispatch_once(&qword_1EAFE4728, &unk_1F0E6EAB0);
          }

          v69 = qword_1EAFE4730;
          if (os_log_type_enabled(qword_1EAFE4730, OS_LOG_TYPE_ERROR))
          {
            integerValue2 = [v10 integerValue];
            v71 = [objc_msgSend(v67 "localizedDescription")];
            v72 = [objc_msgSend(v68 "UUIDString")];
            *buf = 68289794;
            v164 = 0;
            v165 = 2082;
            v166 = "";
            v167 = 2050;
            v168 = integerValue2;
            v169 = 2082;
            v170 = v71;
            v171 = 2082;
            v172 = v72;
            _os_log_impl(&dword_19B873000, v69, OS_LOG_TYPE_ERROR, "{msg%{public}.0s:delete service failed, error code:%{public}ld, error message:%{public, location:escape_only}s, service id:%{public, location:escape_only}s}", buf, 0x30u);
            if (qword_1EAFE4728 != -1)
            {
              dispatch_once(&qword_1EAFE4728, &unk_1F0E6EAB0);
            }
          }

          v73 = qword_1EAFE4730;
          if (os_signpost_enabled(qword_1EAFE4730))
          {
            integerValue3 = [v10 integerValue];
            v75 = [objc_msgSend(v67 "localizedDescription")];
            v76 = [objc_msgSend(v68 "UUIDString")];
            *buf = 68289794;
            v164 = 0;
            v165 = 2082;
            v166 = "";
            v167 = 2050;
            v168 = integerValue3;
            v169 = 2082;
            v170 = v75;
            v171 = 2082;
            v172 = v76;
            _os_signpost_emit_with_name_impl(&dword_19B873000, v73, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "delete service failed", "{msg%{public}.0s:delete service failed, error code:%{public}ld, error message:%{public, location:escape_only}s, service id:%{public, location:escape_only}s}", buf, 0x30u);
          }

          [(CLMiLoConnectionInternal *)self _notifyClientDeleteServiceDidFailWithServiceIdentifier:v68 withError:v67];
        }

        else
        {
          if (qword_1EAFE4728 != -1)
          {
            dispatch_once(&qword_1EAFE4728, &unk_1F0E6EAB0);
          }

          v132 = qword_1EAFE4730;
          if (os_log_type_enabled(qword_1EAFE4730, OS_LOG_TYPE_FAULT))
          {
            *buf = 0;
            _os_log_impl(&dword_19B873000, v132, OS_LOG_TYPE_FAULT, "delete service failed but no error code returned", buf, 2u);
          }

          v133 = sub_19B87DD40();
          if ((*(v133 + 160) & 0x80000000) == 0 || (*(v133 + 164) & 0x80000000) == 0 || (*(v133 + 168) & 0x80000000) == 0 || *(v133 + 152))
          {
            bzero(buf, 0x65CuLL);
            if (qword_1EAFE4728 == -1)
            {
              goto LABEL_269;
            }

            goto LABEL_290;
          }
        }
      }

      else if (v8 == 5)
      {
        if (qword_1EAFE4728 != -1)
        {
          dispatch_once(&qword_1EAFE4728, &unk_1F0E6EAB0);
        }

        v111 = qword_1EAFE4730;
        if (os_log_type_enabled(qword_1EAFE4730, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_19B873000, v111, OS_LOG_TYPE_DEFAULT, "kCLConnectionMessageMiLoServiceEvent, handleQueryMyServices", buf, 2u);
        }

        v112 = sub_19B87DD40();
        if (*(v112 + 160) > 1 || *(v112 + 164) > 1 || *(v112 + 168) > 1 || *(v112 + 152))
        {
          bzero(buf, 0x65CuLL);
          if (qword_1EAFE4728 != -1)
          {
            dispatch_once(&qword_1EAFE4728, &unk_1F0E6EAB0);
          }

          v113 = _os_log_send_and_compose_impl();
          sub_19B885924("Generic", 1, 0, 2, "[CLMiLoConnectionInternal _handleDaemonEvent:]", "CoreLocation: %s\n", v113);
          if (v113 != buf)
          {
            free(v113);
          }
        }

        v114 = [event objectForKeyedSubscript:0x1F0E73E00];
        v115 = [objc_msgSend(v114 valueForKey:{@"serviceIdentifier", "componentsJoinedByString:", @", "}];
        if (qword_1EAFE4728 != -1)
        {
          dispatch_once(&qword_1EAFE4728, &unk_1F0E6EAB0);
        }

        v116 = qword_1EAFE4730;
        if (os_log_type_enabled(qword_1EAFE4730, OS_LOG_TYPE_DEFAULT))
        {
          v117 = [v114 count];
          uTF8String = [v115 UTF8String];
          *buf = 68289538;
          v164 = 0;
          v165 = 2082;
          v166 = "";
          v167 = 2050;
          v168 = v117;
          v169 = 2082;
          v170 = uTF8String;
          _os_log_impl(&dword_19B873000, v116, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:query services success, size:%{public}ld, service descriptors:%{public, location:escape_only}s}", buf, 0x26u);
        }

        [(CLMiLoConnectionInternal *)self _notifyClientDidFindMyServicesWithServiceDescriptors:v114];
      }

      else if (v9)
      {
        v44 = MEMORY[0x1E696ABC0];
        integerValue4 = [v9 integerValue];
        v155 = *MEMORY[0x1E696A578];
        v156 = sub_19BA007C0([v10 integerValue]);
        v46 = [v44 errorWithDomain:@"kCLErrorDomainPrivate" code:integerValue4 userInfo:{objc_msgSend(MEMORY[0x1E695DF20], "dictionaryWithObjects:forKeys:count:", &v156, &v155, 1)}];
        if (qword_1EAFE4728 != -1)
        {
          dispatch_once(&qword_1EAFE4728, &unk_1F0E6EAB0);
        }

        v47 = qword_1EAFE4730;
        if (os_log_type_enabled(qword_1EAFE4730, OS_LOG_TYPE_ERROR))
        {
          integerValue5 = [v10 integerValue];
          v49 = [objc_msgSend(v46 "localizedDescription")];
          *buf = 68289538;
          v164 = 0;
          v165 = 2082;
          v166 = "";
          v167 = 2050;
          v168 = integerValue5;
          v169 = 2082;
          v170 = v49;
          _os_log_impl(&dword_19B873000, v47, OS_LOG_TYPE_ERROR, "{msg%{public}.0s:query services failed, error code:%{public}ld, error message:%{public, location:escape_only}s}", buf, 0x26u);
          if (qword_1EAFE4728 != -1)
          {
            dispatch_once(&qword_1EAFE4728, &unk_1F0E6EAB0);
          }
        }

        v50 = qword_1EAFE4730;
        if (os_signpost_enabled(qword_1EAFE4730))
        {
          integerValue6 = [v10 integerValue];
          v52 = [objc_msgSend(v46 "localizedDescription")];
          *buf = 68289538;
          v164 = 0;
          v165 = 2082;
          v166 = "";
          v167 = 2050;
          v168 = integerValue6;
          v169 = 2082;
          v170 = v52;
          _os_signpost_emit_with_name_impl(&dword_19B873000, v50, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "query services failed", "{msg%{public}.0s:query services failed, error code:%{public}ld, error message:%{public, location:escape_only}s}", buf, 0x26u);
        }

        [(CLMiLoConnectionInternal *)self _notifyClientQueryServiceDidFailWithError:v46];
      }

      else
      {
        if (qword_1EAFE4728 != -1)
        {
          dispatch_once(&qword_1EAFE4728, &unk_1F0E6EAB0);
        }

        v130 = qword_1EAFE4730;
        if (os_log_type_enabled(qword_1EAFE4730, OS_LOG_TYPE_FAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_19B873000, v130, OS_LOG_TYPE_FAULT, "query services failed but no error code returned", buf, 2u);
        }

        v131 = sub_19B87DD40();
        if ((*(v131 + 160) & 0x80000000) == 0 || (*(v131 + 164) & 0x80000000) == 0 || (*(v131 + 168) & 0x80000000) == 0 || *(v131 + 152))
        {
          bzero(buf, 0x65CuLL);
          if (qword_1EAFE4728 == -1)
          {
            goto LABEL_269;
          }

          goto LABEL_290;
        }
      }
    }

    else if (v8 == 1)
    {
      v56 = [event objectForKeyedSubscript:0x1F0E73DE0];
      if (qword_1EAFE4728 != -1)
      {
        dispatch_once(&qword_1EAFE4728, &unk_1F0E6EAB0);
      }

      v57 = qword_1EAFE4730;
      if (os_log_type_enabled(qword_1EAFE4730, OS_LOG_TYPE_DEFAULT))
      {
        v58 = [objc_msgSend(v56 "UUIDString")];
        *buf = 68289282;
        v164 = 0;
        v165 = 2082;
        v166 = "";
        v167 = 2082;
        v168 = v58;
        _os_log_impl(&dword_19B873000, v57, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:create service success, service identifier:%{public, location:escape_only}s}", buf, 0x1Cu);
      }

      [(CLMiLoConnectionInternal *)self _notifyClientDidCreateServiceWithServiceIdentifier:v56];
    }

    else
    {
      if (v8 != 2)
      {
        if (v8 == 3)
        {
          v11 = [event objectForKeyedSubscript:0x1F0E73DE0];
          if (qword_1EAFE4728 != -1)
          {
            dispatch_once(&qword_1EAFE4728, &unk_1F0E6EAB0);
          }

          v12 = qword_1EAFE4730;
          if (os_log_type_enabled(qword_1EAFE4730, OS_LOG_TYPE_DEFAULT))
          {
            v13 = [objc_msgSend(v11 "UUIDString")];
            *buf = 68289282;
            v164 = 0;
            v165 = 2082;
            v166 = "";
            v167 = 2082;
            v168 = v13;
            _os_log_impl(&dword_19B873000, v12, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:delete service success, service identifier:%{public, location:escape_only}s}", buf, 0x1Cu);
          }

          [(CLMiLoConnectionInternal *)self _notifyClientDidDeleteServiceWithServiceIdentifier:v11];
        }

        goto LABEL_48;
      }

      if (v9)
      {
        v88 = MEMORY[0x1E696ABC0];
        integerValue7 = [v9 integerValue];
        v159 = *MEMORY[0x1E696A578];
        v160 = sub_19BA007C0([v10 integerValue]);
        v90 = [v88 errorWithDomain:@"kCLErrorDomainPrivate" code:integerValue7 userInfo:{objc_msgSend(MEMORY[0x1E695DF20], "dictionaryWithObjects:forKeys:count:", &v160, &v159, 1)}];
        if (qword_1EAFE4728 != -1)
        {
          dispatch_once(&qword_1EAFE4728, &unk_1F0E6EAB0);
        }

        v91 = qword_1EAFE4730;
        if (os_log_type_enabled(qword_1EAFE4730, OS_LOG_TYPE_ERROR))
        {
          integerValue8 = [v10 integerValue];
          v93 = [objc_msgSend(v90 "localizedDescription")];
          *buf = 68289538;
          v164 = 0;
          v165 = 2082;
          v166 = "";
          v167 = 2050;
          v168 = integerValue8;
          v169 = 2082;
          v170 = v93;
          _os_log_impl(&dword_19B873000, v91, OS_LOG_TYPE_ERROR, "{msg%{public}.0s:create service fail, error code:%{public}ld, error message:%{public, location:escape_only}s}", buf, 0x26u);
          if (qword_1EAFE4728 != -1)
          {
            dispatch_once(&qword_1EAFE4728, &unk_1F0E6EAB0);
          }
        }

        v94 = qword_1EAFE4730;
        if (os_signpost_enabled(qword_1EAFE4730))
        {
          integerValue9 = [v10 integerValue];
          v96 = [objc_msgSend(v90 "localizedDescription")];
          *buf = 68289538;
          v164 = 0;
          v165 = 2082;
          v166 = "";
          v167 = 2050;
          v168 = integerValue9;
          v169 = 2082;
          v170 = v96;
          _os_signpost_emit_with_name_impl(&dword_19B873000, v94, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "create service fail", "{msg%{public}.0s:create service fail, error code:%{public}ld, error message:%{public, location:escape_only}s}", buf, 0x26u);
        }

        [(CLMiLoConnectionInternal *)self _notifyClientCreateServiceDidFailWithError:v90];
        goto LABEL_48;
      }

      if (qword_1EAFE4728 != -1)
      {
        dispatch_once(&qword_1EAFE4728, &unk_1F0E6EAB0);
      }

      v138 = qword_1EAFE4730;
      if (os_log_type_enabled(qword_1EAFE4730, OS_LOG_TYPE_FAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_19B873000, v138, OS_LOG_TYPE_FAULT, "create service failed but no error code returned", buf, 2u);
      }

      v139 = sub_19B87DD40();
      if ((*(v139 + 160) & 0x80000000) == 0 || (*(v139 + 164) & 0x80000000) == 0 || (*(v139 + 168) & 0x80000000) == 0 || *(v139 + 152))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1EAFE4728 == -1)
        {
          goto LABEL_269;
        }

        goto LABEL_290;
      }
    }

    goto LABEL_48;
  }

  if (v8 > 9)
  {
    switch(v8)
    {
      case 10:
        if (qword_1EAFE4728 != -1)
        {
          dispatch_once(&qword_1EAFE4728, &unk_1F0E6EAB0);
        }

        v77 = qword_1EAFE4730;
        if (os_log_type_enabled(qword_1EAFE4730, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_19B873000, v77, OS_LOG_TYPE_DEFAULT, "kCLConnectionMessageMiLoServiceEvent, handleDidCompleteClientRequest", buf, 2u);
        }

        v78 = sub_19B87DD40();
        if (*(v78 + 160) > 1 || *(v78 + 164) > 1 || *(v78 + 168) > 1 || *(v78 + 152))
        {
          bzero(buf, 0x65CuLL);
          if (qword_1EAFE4728 != -1)
          {
            dispatch_once(&qword_1EAFE4728, &unk_1F0E6EAB0);
          }

          v79 = _os_log_send_and_compose_impl();
          sub_19B885924("Generic", 1, 0, 2, "[CLMiLoConnectionInternal _handleDaemonEvent:]", "CoreLocation: %s\n", v79);
          if (v79 != buf)
          {
            free(v79);
          }
        }

        v80 = [event objectForKeyedSubscript:0x1F0E73E60];
        if (v10)
        {
          v81 = MEMORY[0x1E696ABC0];
          integerValue10 = [v10 integerValue];
          v149 = *MEMORY[0x1E696A578];
          v150 = sub_19BA007C0([v10 integerValue]);
          v83 = [v81 errorWithDomain:@"kCLErrorDomainPrivate" code:integerValue10 userInfo:{objc_msgSend(MEMORY[0x1E695DF20], "dictionaryWithObjects:forKeys:count:", &v150, &v149, 1)}];
          if (qword_1EAFE4728 != -1)
          {
            dispatch_once(&qword_1EAFE4728, &unk_1F0E6EAB0);
          }

          v84 = qword_1EAFE4730;
          if (os_log_type_enabled(qword_1EAFE4730, OS_LOG_TYPE_DEFAULT))
          {
            v85 = [objc_msgSend(v80 "UUIDString")];
            integerValue11 = [v10 integerValue];
            v87 = [objc_msgSend(v83 "localizedDescription")];
            *buf = 68289794;
            v164 = 0;
            v165 = 2082;
            v166 = "";
            v167 = 2082;
            v168 = v85;
            v169 = 2050;
            v170 = integerValue11;
            v171 = 2082;
            v172 = v87;
            _os_log_impl(&dword_19B873000, v84, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:client request complete with status code, request id:%{public, location:escape_only}s, status code:%{public}ld, status message:%{public, location:escape_only}s}", buf, 0x30u);
          }
        }

        else
        {
          if (qword_1EAFE4728 != -1)
          {
            dispatch_once(&qword_1EAFE4728, &unk_1F0E6EAB0);
          }

          v134 = qword_1EAFE4730;
          if (os_log_type_enabled(qword_1EAFE4730, OS_LOG_TYPE_ERROR))
          {
            v135 = [objc_msgSend(v80 "UUIDString")];
            *buf = 68289282;
            v164 = 0;
            v165 = 2082;
            v166 = "";
            v167 = 2082;
            v168 = v135;
            _os_log_impl(&dword_19B873000, v134, OS_LOG_TYPE_ERROR, "{msg%{public}.0s:client request complete without status code, request id:%{public, location:escape_only}s}", buf, 0x1Cu);
            if (qword_1EAFE4728 != -1)
            {
              dispatch_once(&qword_1EAFE4728, &unk_1F0E6EAB0);
            }
          }

          v136 = qword_1EAFE4730;
          if (os_signpost_enabled(qword_1EAFE4730))
          {
            v137 = [objc_msgSend(v80 "UUIDString")];
            *buf = 68289282;
            v164 = 0;
            v165 = 2082;
            v166 = "";
            v167 = 2082;
            v168 = v137;
            _os_signpost_emit_with_name_impl(&dword_19B873000, v136, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "client request complete without status code", "{msg%{public}.0s:client request complete without status code, request id:%{public, location:escape_only}s}", buf, 0x1Cu);
          }

          v83 = 0;
        }

        [(CLMiLoConnectionInternal *)self _notifyClientDidCompleteClientRequest:v80 withError:v83];
        break;
      case 12:
        if (v9)
        {
          v119 = MEMORY[0x1E696ABC0];
          integerValue12 = [v9 integerValue];
          v147 = *MEMORY[0x1E696A578];
          v148 = sub_19BA007C0([v10 integerValue]);
          v121 = [v119 errorWithDomain:@"kCLErrorDomainPrivate" code:integerValue12 userInfo:{objc_msgSend(MEMORY[0x1E695DF20], "dictionaryWithObjects:forKeys:count:", &v148, &v147, 1)}];
          if (qword_1EAFE4728 != -1)
          {
            dispatch_once(&qword_1EAFE4728, &unk_1F0E6EAB0);
          }

          v122 = qword_1EAFE4730;
          if (os_log_type_enabled(qword_1EAFE4730, OS_LOG_TYPE_ERROR))
          {
            integerValue13 = [v10 integerValue];
            v124 = [objc_msgSend(v121 "localizedDescription")];
            *buf = 68289538;
            v164 = 0;
            v165 = 2082;
            v166 = "";
            v167 = 2050;
            v168 = integerValue13;
            v169 = 2082;
            v170 = v124;
            _os_log_impl(&dword_19B873000, v122, OS_LOG_TYPE_ERROR, "{msg%{public}.0s:query MiLo connection status failed, error code:%{public}ld, error message:%{public, location:escape_only}s}", buf, 0x26u);
            if (qword_1EAFE4728 != -1)
            {
              dispatch_once(&qword_1EAFE4728, &unk_1F0E6EAB0);
            }
          }

          v125 = qword_1EAFE4730;
          if (os_signpost_enabled(qword_1EAFE4730))
          {
            integerValue14 = [v10 integerValue];
            v127 = [objc_msgSend(v121 "localizedDescription")];
            *buf = 68289538;
            v164 = 0;
            v165 = 2082;
            v166 = "";
            v167 = 2050;
            v168 = integerValue14;
            v169 = 2082;
            v170 = v127;
            _os_signpost_emit_with_name_impl(&dword_19B873000, v125, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "query MiLo connection status failed", "{msg%{public}.0s:query MiLo connection status failed, error code:%{public}ld, error message:%{public, location:escape_only}s}", buf, 0x26u);
          }

          [(CLMiLoConnectionInternal *)self _notifyClientQueryMiLoConnectionStatusDidFailWithError:v121];
        }

        else
        {
          if (qword_1EAFE4728 != -1)
          {
            dispatch_once(&qword_1EAFE4728, &unk_1F0E6EAB0);
          }

          v142 = qword_1EAFE4730;
          if (os_log_type_enabled(qword_1EAFE4730, OS_LOG_TYPE_FAULT))
          {
            *buf = 0;
            _os_log_impl(&dword_19B873000, v142, OS_LOG_TYPE_FAULT, "query MiLo connection status failed but no error code returned", buf, 2u);
          }

          v143 = sub_19B87DD40();
          if ((*(v143 + 160) & 0x80000000) == 0 || (*(v143 + 164) & 0x80000000) == 0 || (*(v143 + 168) & 0x80000000) == 0 || *(v143 + 152))
          {
            bzero(buf, 0x65CuLL);
            if (qword_1EAFE4728 == -1)
            {
              goto LABEL_269;
            }

            goto LABEL_290;
          }
        }

        break;
      case 13:
        if (qword_1EAFE4728 != -1)
        {
          dispatch_once(&qword_1EAFE4728, &unk_1F0E6EAB0);
        }

        v53 = qword_1EAFE4730;
        if (os_log_type_enabled(qword_1EAFE4730, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_19B873000, v53, OS_LOG_TYPE_DEFAULT, "kCLConnectionMessageMiLoServiceEvent, handleRecordingMetaInfo", buf, 2u);
        }

        v54 = sub_19B87DD40();
        if (*(v54 + 160) > 1 || *(v54 + 164) > 1 || *(v54 + 168) > 1 || *(v54 + 152))
        {
          bzero(buf, 0x65CuLL);
          if (qword_1EAFE4728 != -1)
          {
            dispatch_once(&qword_1EAFE4728, &unk_1F0E6EAB0);
          }

          v55 = _os_log_send_and_compose_impl();
          sub_19B885924("Generic", 1, 0, 2, "[CLMiLoConnectionInternal _handleDaemonEvent:]", "CoreLocation: %s\n", v55);
          if (v55 != buf)
          {
            free(v55);
          }
        }

        -[CLMiLoConnectionInternal _notifyClientRecordingMetaInfo:](self, "_notifyClientRecordingMetaInfo:", [event objectForKeyedSubscript:0x1F0E73F80]);
        break;
    }

    goto LABEL_48;
  }

  if (v8 == 7)
  {
    if (qword_1EAFE4728 != -1)
    {
      dispatch_once(&qword_1EAFE4728, &unk_1F0E6EAB0);
    }

    v59 = qword_1EAFE4730;
    if (os_log_type_enabled(qword_1EAFE4730, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_19B873000, v59, OS_LOG_TYPE_DEFAULT, "kCLConnectionMessageMiLoServiceEvent, handleServiceStatusChanged", buf, 2u);
    }

    v60 = sub_19B87DD40();
    if (*(v60 + 160) > 1 || *(v60 + 164) > 1 || *(v60 + 168) > 1 || *(v60 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE4728 != -1)
      {
        dispatch_once(&qword_1EAFE4728, &unk_1F0E6EAB0);
      }

      v61 = _os_log_send_and_compose_impl();
      sub_19B885924("Generic", 1, 0, 2, "[CLMiLoConnectionInternal _handleDaemonEvent:]", "CoreLocation: %s\n", v61);
      if (v61 != buf)
      {
        free(v61);
      }
    }

    v62 = [event objectForKeyedSubscript:0x1F0E73E20];
    if ([(CLMiLoServiceStatus *)v62 serviceState])
    {
      if ([(CLMiLoServiceStatus *)v62 serviceState]== 2)
      {
        if (qword_1EAFE4728 != -1)
        {
          dispatch_once(&qword_1EAFE4728, &unk_1F0E6EAB0);
        }

        v63 = qword_1EAFE4730;
        if (!os_log_type_enabled(qword_1EAFE4730, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_277;
        }

        *buf = 68289026;
        v164 = 0;
        v165 = 2082;
        v166 = "";
        v64 = "{msg%{public}.0s:service state: invalidated}";
      }

      else
      {
        if ([(CLMiLoServiceStatus *)v62 serviceState]!= 1)
        {
          goto LABEL_277;
        }

        if (qword_1EAFE4728 != -1)
        {
          dispatch_once(&qword_1EAFE4728, &unk_1F0E6EAB0);
        }

        v63 = qword_1EAFE4730;
        if (!os_log_type_enabled(qword_1EAFE4730, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_277;
        }

        *buf = 68289026;
        v164 = 0;
        v165 = 2082;
        v166 = "";
        v64 = "{msg%{public}.0s:service state: suspended}";
      }
    }

    else
    {
      if (qword_1EAFE4728 != -1)
      {
        dispatch_once(&qword_1EAFE4728, &unk_1F0E6EAB0);
      }

      v63 = qword_1EAFE4730;
      if (!os_log_type_enabled(qword_1EAFE4730, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_277;
      }

      *buf = 68289026;
      v164 = 0;
      v165 = 2082;
      v166 = "";
      v64 = "{msg%{public}.0s:service state: running}";
    }

    _os_log_impl(&dword_19B873000, v63, OS_LOG_TYPE_DEFAULT, v64, buf, 0x12u);
LABEL_277:
    selfCopy2 = self;
    v27 = v62;
    goto LABEL_47;
  }

  if (v8 == 8)
  {
    if (v9)
    {
      v97 = MEMORY[0x1E696ABC0];
      integerValue15 = [v9 integerValue];
      v153 = *MEMORY[0x1E696A578];
      v154 = sub_19BA007C0([v10 integerValue]);
      v99 = [v97 errorWithDomain:@"kCLErrorDomainPrivate" code:integerValue15 userInfo:{objc_msgSend(MEMORY[0x1E695DF20], "dictionaryWithObjects:forKeys:count:", &v154, &v153, 1)}];
      v100 = [event objectForKeyedSubscript:0x1F0E73DE0];
      if (qword_1EAFE4728 != -1)
      {
        dispatch_once(&qword_1EAFE4728, &unk_1F0E6EAB0);
      }

      v101 = qword_1EAFE4730;
      if (os_log_type_enabled(qword_1EAFE4730, OS_LOG_TYPE_ERROR))
      {
        integerValue16 = [v10 integerValue];
        v103 = [objc_msgSend(v99 "localizedDescription")];
        v104 = [objc_msgSend(v100 "UUIDString")];
        *buf = 68289794;
        v164 = 0;
        v165 = 2082;
        v166 = "";
        v167 = 2050;
        v168 = integerValue16;
        v169 = 2082;
        v170 = v103;
        v171 = 2082;
        v172 = v104;
        _os_log_impl(&dword_19B873000, v101, OS_LOG_TYPE_ERROR, "{msg%{public}.0s:connect to service failed, error code:%{public}ld, error message:%{public, location:escape_only}s, service id:%{public, location:escape_only}s}", buf, 0x30u);
        if (qword_1EAFE4728 != -1)
        {
          dispatch_once(&qword_1EAFE4728, &unk_1F0E6EAB0);
        }
      }

      v105 = qword_1EAFE4730;
      if (os_signpost_enabled(qword_1EAFE4730))
      {
        integerValue17 = [v10 integerValue];
        v107 = [objc_msgSend(v99 "localizedDescription")];
        v108 = [objc_msgSend(v100 "UUIDString")];
        *buf = 68289794;
        v164 = 0;
        v165 = 2082;
        v166 = "";
        v167 = 2050;
        v168 = integerValue17;
        v169 = 2082;
        v170 = v107;
        v171 = 2082;
        v172 = v108;
        _os_signpost_emit_with_name_impl(&dword_19B873000, v105, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "connect to service failed", "{msg%{public}.0s:connect to service failed, error code:%{public}ld, error message:%{public, location:escape_only}s, service id:%{public, location:escape_only}s}", buf, 0x30u);
      }

      if ([v100 isEqual:self->_connectedServiceIdentifier])
      {
        if (qword_1EAFE4728 != -1)
        {
          dispatch_once(&qword_1EAFE4728, &unk_1F0E6EAB0);
        }

        v109 = qword_1EAFE4730;
        if (os_log_type_enabled(qword_1EAFE4730, OS_LOG_TYPE_DEBUG))
        {
          *buf = 68289026;
          v164 = 0;
          v165 = 2082;
          v166 = "";
          _os_log_impl(&dword_19B873000, v109, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:connect to service failed, clear connectedServiceIdentifier}", buf, 0x12u);
        }

        self->_connectedServiceIdentifier = 0;
        if (qword_1EAFE4728 != -1)
        {
          dispatch_once(&qword_1EAFE4728, &unk_1F0E6EAB0);
        }

        v110 = qword_1EAFE4730;
        if (os_log_type_enabled(qword_1EAFE4730, OS_LOG_TYPE_DEBUG))
        {
          *buf = 68289026;
          v164 = 0;
          v165 = 2082;
          v166 = "";
          _os_log_impl(&dword_19B873000, v110, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:connect to service failed, unset handler for prediction events}", buf, 0x12u);
        }

        [(CLMiLoConnectionInternal *)self _unsetHandlerForMiLoPredictionEvents];
      }

      [(CLMiLoConnectionInternal *)self _notifyClientConnectServiceDidFailWithServiceIdentifier:v100 withError:v99];
    }

    else
    {
      if (qword_1EAFE4728 != -1)
      {
        dispatch_once(&qword_1EAFE4728, &unk_1F0E6EAB0);
      }

      v140 = qword_1EAFE4730;
      if (os_log_type_enabled(qword_1EAFE4730, OS_LOG_TYPE_FAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_19B873000, v140, OS_LOG_TYPE_FAULT, "connect service failed but no error code returned", buf, 2u);
      }

      v141 = sub_19B87DD40();
      if ((*(v141 + 160) & 0x80000000) == 0 || (*(v141 + 164) & 0x80000000) == 0 || (*(v141 + 168) & 0x80000000) == 0 || *(v141 + 152))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1EAFE4728 == -1)
        {
LABEL_269:
          v144 = _os_log_send_and_compose_impl();
          sub_19B885924("Generic", 1, 0, 0, "[CLMiLoConnectionInternal _handleDaemonEvent:]", "CoreLocation: %s\n", v144);
          if (v144 != buf)
          {
            free(v144);
          }

          goto LABEL_48;
        }

LABEL_290:
        dispatch_once(&qword_1EAFE4728, &unk_1F0E6EAB0);
        goto LABEL_269;
      }
    }
  }

  else if (v9)
  {
    v30 = MEMORY[0x1E696ABC0];
    integerValue18 = [v9 integerValue];
    v151 = *MEMORY[0x1E696A578];
    v152 = sub_19BA007C0([v10 integerValue]);
    v32 = [v30 errorWithDomain:@"kCLErrorDomainPrivate" code:integerValue18 userInfo:{objc_msgSend(MEMORY[0x1E695DF20], "dictionaryWithObjects:forKeys:count:", &v152, &v151, 1)}];
    v33 = [event objectForKeyedSubscript:0x1F0E73DE0];
    if (qword_1EAFE4728 != -1)
    {
      dispatch_once(&qword_1EAFE4728, &unk_1F0E6EAB0);
    }

    v34 = qword_1EAFE4730;
    if (os_log_type_enabled(qword_1EAFE4730, OS_LOG_TYPE_ERROR))
    {
      integerValue19 = [v10 integerValue];
      v36 = [objc_msgSend(v32 "localizedDescription")];
      v37 = [objc_msgSend(v33 "UUIDString")];
      *buf = 68289794;
      v164 = 0;
      v165 = 2082;
      v166 = "";
      v167 = 2050;
      v168 = integerValue19;
      v169 = 2082;
      v170 = v36;
      v171 = 2082;
      v172 = v37;
      _os_log_impl(&dword_19B873000, v34, OS_LOG_TYPE_ERROR, "{msg%{public}.0s:disconnect to service failed, error code:%{public}ld, error message:%{public, location:escape_only}s, service id:%{public, location:escape_only}s}", buf, 0x30u);
      if (qword_1EAFE4728 != -1)
      {
        dispatch_once(&qword_1EAFE4728, &unk_1F0E6EAB0);
      }
    }

    v38 = qword_1EAFE4730;
    if (os_signpost_enabled(qword_1EAFE4730))
    {
      integerValue20 = [v10 integerValue];
      v40 = [objc_msgSend(v32 "localizedDescription")];
      v41 = [objc_msgSend(v33 "UUIDString")];
      *buf = 68289794;
      v164 = 0;
      v165 = 2082;
      v166 = "";
      v167 = 2050;
      v168 = integerValue20;
      v169 = 2082;
      v170 = v40;
      v171 = 2082;
      v172 = v41;
      _os_signpost_emit_with_name_impl(&dword_19B873000, v38, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "disconnect to service failed", "{msg%{public}.0s:disconnect to service failed, error code:%{public}ld, error message:%{public, location:escape_only}s, service id:%{public, location:escape_only}s}", buf, 0x30u);
    }

    if (!self->_connectedServiceIdentifier)
    {
      if (qword_1EAFE4728 != -1)
      {
        dispatch_once(&qword_1EAFE4728, &unk_1F0E6EAB0);
      }

      v42 = qword_1EAFE4730;
      if (os_log_type_enabled(qword_1EAFE4730, OS_LOG_TYPE_DEBUG))
      {
        *buf = 68289026;
        v164 = 0;
        v165 = 2082;
        v166 = "";
        _os_log_impl(&dword_19B873000, v42, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:disconnect to service failed, reset connectedServiceIdentifier}", buf, 0x12u);
      }

      self->_connectedServiceIdentifier = [v33 copy];
      if (qword_1EAFE4728 != -1)
      {
        dispatch_once(&qword_1EAFE4728, &unk_1F0E6EAB0);
      }

      v43 = qword_1EAFE4730;
      if (os_log_type_enabled(qword_1EAFE4730, OS_LOG_TYPE_DEBUG))
      {
        *buf = 68289026;
        v164 = 0;
        v165 = 2082;
        v166 = "";
        _os_log_impl(&dword_19B873000, v43, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:disconnect to service failed, set handler for prediction events}", buf, 0x12u);
      }

      [(CLMiLoConnectionInternal *)self _setHandlerForMiLoPredictionEvents];
    }

    [(CLMiLoConnectionInternal *)self _notifyClientDisconnectServiceDidFailWithError:v32 serviceIdentifier:v33];
  }

  else
  {
    if (qword_1EAFE4728 != -1)
    {
      dispatch_once(&qword_1EAFE4728, &unk_1F0E6EAB0);
    }

    v128 = qword_1EAFE4730;
    if (os_log_type_enabled(qword_1EAFE4730, OS_LOG_TYPE_FAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_19B873000, v128, OS_LOG_TYPE_FAULT, "connect to service failed but no error code returned", buf, 2u);
    }

    v129 = sub_19B87DD40();
    if ((*(v129 + 160) & 0x80000000) == 0 || (*(v129 + 164) & 0x80000000) == 0 || (*(v129 + 168) & 0x80000000) == 0 || *(v129 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE4728 == -1)
      {
        goto LABEL_269;
      }

      goto LABEL_290;
    }
  }

LABEL_48:
  v29 = *MEMORY[0x1E69E9840];
}

- (void)_handlePredictionUpdateEvent:(id)event
{
  v21 = *MEMORY[0x1E69E9840];
  if (qword_1EAFE4728 != -1)
  {
    dispatch_once(&qword_1EAFE4728, &unk_1F0E6EAB0);
  }

  v5 = qword_1EAFE4730;
  if (os_log_type_enabled(qword_1EAFE4730, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_19B873000, v5, OS_LOG_TYPE_DEFAULT, "kCLConnectionMessageMiLoPredictionEvent, _handlePredictionEvent", buf, 2u);
  }

  v6 = sub_19B87DD40();
  if (*(v6 + 160) > 1 || *(v6 + 164) > 1 || *(v6 + 168) > 1 || *(v6 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1EAFE4728 != -1)
    {
      dispatch_once(&qword_1EAFE4728, &unk_1F0E6EAB0);
    }

    v7 = _os_log_send_and_compose_impl();
    sub_19B885924("Generic", 1, 0, 2, "[CLMiLoConnectionInternal _handlePredictionUpdateEvent:]", "CoreLocation: %s\n", v7);
    if (v7 != buf)
    {
      free(v7);
    }
  }

  if (event)
  {
    v8 = [event objectForKeyedSubscript:0x1F0E73E40];
    if (qword_1EAFE4728 != -1)
    {
      dispatch_once(&qword_1EAFE4728, &unk_1F0E6EAB0);
    }

    v9 = qword_1EAFE4730;
    if (os_log_type_enabled(qword_1EAFE4730, OS_LOG_TYPE_DEFAULT))
    {
      v10 = [objc_msgSend(objc_msgSend(v8 "requestIdentifier")];
      *buf = 136315138;
      v20 = v10;
      _os_log_impl(&dword_19B873000, v9, OS_LOG_TYPE_DEFAULT, "_handlePredictionEvent, requestIdentifier %s", buf, 0xCu);
    }

    v11 = sub_19B87DD40();
    if (*(v11 + 160) > 1 || *(v11 + 164) > 1 || *(v11 + 168) > 1 || *(v11 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE4728 != -1)
      {
        dispatch_once(&qword_1EAFE4728, &unk_1F0E6EAB0);
      }

      [objc_msgSend(objc_msgSend(v8 "requestIdentifier")];
      v12 = _os_log_send_and_compose_impl();
      sub_19B885924("Generic", 1, 0, 2, "[CLMiLoConnectionInternal _handlePredictionUpdateEvent:]", "CoreLocation: %s\n", v12);
      if (v12 != buf)
      {
        free(v12);
      }
    }

    [(CLMiLoConnectionInternal *)self _notifyClientDidUpdatePrediction:v8];
  }

  else
  {
    if (qword_1EAFE4728 != -1)
    {
      dispatch_once(&qword_1EAFE4728, &unk_1F0E6EAB0);
    }

    v13 = qword_1EAFE4730;
    if (os_log_type_enabled(qword_1EAFE4730, OS_LOG_TYPE_FAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_19B873000, v13, OS_LOG_TYPE_FAULT, "nil prediction event dictionary received", buf, 2u);
    }

    v14 = sub_19B87DD40();
    if ((*(v14 + 160) & 0x80000000) == 0 || (*(v14 + 164) & 0x80000000) == 0 || (*(v14 + 168) & 0x80000000) == 0 || *(v14 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE4728 != -1)
      {
        dispatch_once(&qword_1EAFE4728, &unk_1F0E6EAB0);
      }

      v15 = _os_log_send_and_compose_impl();
      sub_19B885924("Generic", 1, 0, 0, "[CLMiLoConnectionInternal _handlePredictionUpdateEvent:]", "CoreLocation: %s\n", v15);
      if (v15 != buf)
      {
        free(v15);
      }
    }

    v17 = *MEMORY[0x1E696A578];
    v18 = @"Empty daemon response dictionary";
    -[CLMiLoConnectionInternal _notifyClientDidUpdateServiceStatus:](self, "_notifyClientDidUpdateServiceStatus:", -[CLMiLoServiceStatus initWithServiceState:suspendReasons:serviceDescriptor:currentLocationOfInterestUuid:currentLocationOfInterestType:error:serviceQualityInfo:places:metaInfo:]([CLMiLoServiceStatus alloc], "initWithServiceState:suspendReasons:serviceDescriptor:currentLocationOfInterestUuid:currentLocationOfInterestType:error:serviceQualityInfo:places:metaInfo:", 2, 0, 0, 0, 0, [MEMORY[0x1E696ABC0] errorWithDomain:@"kCLErrorDomainPrivate" code:4 userInfo:{objc_msgSend(MEMORY[0x1E695DF20], "dictionaryWithObjects:forKeys:count:", &v18, &v17, 1)}], 0, 0, 0));
  }

  v16 = *MEMORY[0x1E69E9840];
}

- (void)_handleDebugResponseEvent:(id)event
{
  v14 = *MEMORY[0x1E69E9840];
  if (qword_1EAFE4728 != -1)
  {
    dispatch_once(&qword_1EAFE4728, &unk_1F0E6EAB0);
  }

  v5 = qword_1EAFE4730;
  if (os_log_type_enabled(qword_1EAFE4730, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_19B873000, v5, OS_LOG_TYPE_DEFAULT, "kCLConnectionMessageMiLoServiceDebugResponse, _handleDebugResponseEvent", buf, 2u);
  }

  v6 = sub_19B87DD40();
  if (*(v6 + 160) > 1 || *(v6 + 164) > 1 || *(v6 + 168) > 1 || *(v6 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1EAFE4728 != -1)
    {
      dispatch_once(&qword_1EAFE4728, &unk_1F0E6EAB0);
    }

    v7 = _os_log_send_and_compose_impl();
    sub_19B885924("Generic", 1, 0, 2, "[CLMiLoConnectionInternal _handleDebugResponseEvent:]", "CoreLocation: %s\n", v7);
    if (v7 != buf)
    {
      free(v7);
    }
  }

  if (event)
  {
    v8 = [event objectForKeyedSubscript:0x1F0E73F40];
    if ([v8 exportDatabaseTablesResult])
    {
      [(CLMiLoConnectionInternal *)self _notifyClientDidExportDatabaseWithResponse:v8];
    }
  }

  else
  {
    if (qword_1EAFE4728 != -1)
    {
      dispatch_once(&qword_1EAFE4728, &unk_1F0E6EAB0);
    }

    v9 = qword_1EAFE4730;
    if (os_log_type_enabled(qword_1EAFE4730, OS_LOG_TYPE_FAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_19B873000, v9, OS_LOG_TYPE_FAULT, "nil debug respoinse event dictionary received", buf, 2u);
    }

    v10 = sub_19B87DD40();
    if ((*(v10 + 160) & 0x80000000) == 0 || (*(v10 + 164) & 0x80000000) == 0 || (*(v10 + 168) & 0x80000000) == 0 || *(v10 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE4728 != -1)
      {
        dispatch_once(&qword_1EAFE4728, &unk_1F0E6EAB0);
      }

      v11 = _os_log_send_and_compose_impl();
      sub_19B885924("Generic", 1, 0, 0, "[CLMiLoConnectionInternal _handleDebugResponseEvent:]", "CoreLocation: %s\n", v11);
      if (v11 != buf)
      {
        free(v11);
      }
    }
  }

  v12 = *MEMORY[0x1E69E9840];
}

- (void)_handleMiLoConnectionStatusEvent:(id)event
{
  v19 = *MEMORY[0x1E69E9840];
  if (qword_1EAFE4728 != -1)
  {
    dispatch_once(&qword_1EAFE4728, &unk_1F0E6EAB0);
  }

  v5 = qword_1EAFE4730;
  if (os_log_type_enabled(qword_1EAFE4730, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_19B873000, v5, OS_LOG_TYPE_DEFAULT, "kCLConnectionMessageMiLoConnectionStatusEvent, _handleMiLoConnectionStatusEvent", buf, 2u);
  }

  v6 = sub_19B87DD40();
  if (*(v6 + 160) > 1 || *(v6 + 164) > 1 || *(v6 + 168) > 1 || *(v6 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1EAFE4728 != -1)
    {
      dispatch_once(&qword_1EAFE4728, &unk_1F0E6EAB0);
    }

    v7 = _os_log_send_and_compose_impl();
    sub_19B885924("Generic", 1, 0, 2, "[CLMiLoConnectionInternal _handleMiLoConnectionStatusEvent:]", "CoreLocation: %s\n", v7);
    if (v7 != buf)
    {
      free(v7);
    }
  }

  if (event)
  {
    v8 = [event objectForKeyedSubscript:0x1F0E73F60];
    if (qword_1EAFE4728 != -1)
    {
      dispatch_once(&qword_1EAFE4728, &unk_1F0E6EAB0);
    }

    v9 = qword_1EAFE4730;
    if (os_log_type_enabled(qword_1EAFE4730, OS_LOG_TYPE_DEFAULT))
    {
      connectionState = [v8 connectionState];
      *buf = 134217984;
      v18 = connectionState;
      _os_log_impl(&dword_19B873000, v9, OS_LOG_TYPE_DEFAULT, "_handleMiLoConnectionStatusEvent, connectionState %lu", buf, 0xCu);
    }

    v11 = sub_19B87DD40();
    if (*(v11 + 160) > 1 || *(v11 + 164) > 1 || *(v11 + 168) > 1 || *(v11 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE4728 != -1)
      {
        dispatch_once(&qword_1EAFE4728, &unk_1F0E6EAB0);
      }

      [v8 connectionState];
      v12 = _os_log_send_and_compose_impl();
      sub_19B885924("Generic", 1, 0, 2, "[CLMiLoConnectionInternal _handleMiLoConnectionStatusEvent:]", "CoreLocation: %s\n", v12);
      if (v12 != buf)
      {
        free(v12);
      }
    }

    [(CLMiLoConnectionInternal *)self _notifyClientDidUpdateMiLoConnectionStatus:v8];
  }

  else
  {
    if (qword_1EAFE4728 != -1)
    {
      dispatch_once(&qword_1EAFE4728, &unk_1F0E6EAB0);
    }

    v13 = qword_1EAFE4730;
    if (os_log_type_enabled(qword_1EAFE4730, OS_LOG_TYPE_FAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_19B873000, v13, OS_LOG_TYPE_FAULT, "nil connection status event dictionary received", buf, 2u);
    }

    v14 = sub_19B87DD40();
    if ((*(v14 + 160) & 0x80000000) == 0 || (*(v14 + 164) & 0x80000000) == 0 || (*(v14 + 168) & 0x80000000) == 0 || *(v14 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE4728 != -1)
      {
        dispatch_once(&qword_1EAFE4728, &unk_1F0E6EAB0);
      }

      v15 = _os_log_send_and_compose_impl();
      sub_19B885924("Generic", 1, 0, 0, "[CLMiLoConnectionInternal _handleMiLoConnectionStatusEvent:]", "CoreLocation: %s\n", v15);
      if (v15 != buf)
      {
        free(v15);
      }
    }
  }

  v16 = *MEMORY[0x1E69E9840];
}

- (void)_handleGenericEvent:(id)event
{
  v22 = *MEMORY[0x1E69E9840];
  if (qword_1EAFE4728 != -1)
  {
    dispatch_once(&qword_1EAFE4728, &unk_1F0E6EAB0);
  }

  v5 = qword_1EAFE4730;
  if (os_log_type_enabled(qword_1EAFE4730, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_19B873000, v5, OS_LOG_TYPE_DEFAULT, "kCLConnectionMessageMiLoGenericEventResponse, _handleGenericEvent", buf, 2u);
  }

  v6 = sub_19B87DD40();
  if (*(v6 + 160) > 1 || *(v6 + 164) > 1 || *(v6 + 168) > 1 || *(v6 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1EAFE4728 != -1)
    {
      dispatch_once(&qword_1EAFE4728, &unk_1F0E6EAB0);
    }

    v7 = _os_log_send_and_compose_impl();
    sub_19B885924("Generic", 1, 0, 2, "[CLMiLoConnectionInternal _handleGenericEvent:]", "CoreLocation: %s\n", v7);
    if (v7 != buf)
    {
      free(v7);
    }
  }

  if (event)
  {
    v8 = [event objectForKeyedSubscript:0x1F0E73FA0];
    if (qword_1EAFE4728 != -1)
    {
      dispatch_once(&qword_1EAFE4728, &unk_1F0E6EAB0);
    }

    v9 = qword_1EAFE4730;
    if (os_log_type_enabled(qword_1EAFE4730, OS_LOG_TYPE_DEFAULT))
    {
      eventType = [v8 eventType];
      v11 = [objc_msgSend(v8 "genericEventDescription")];
      *buf = 67109378;
      v19 = eventType;
      v20 = 2080;
      v21 = v11;
      _os_log_impl(&dword_19B873000, v9, OS_LOG_TYPE_DEFAULT, "_handleGenericEvent, eventType %u, description %s", buf, 0x12u);
    }

    v12 = sub_19B87DD40();
    if (*(v12 + 160) > 1 || *(v12 + 164) > 1 || *(v12 + 168) > 1 || *(v12 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE4728 != -1)
      {
        dispatch_once(&qword_1EAFE4728, &unk_1F0E6EAB0);
      }

      [v8 eventType];
      [objc_msgSend(v8 "genericEventDescription")];
      v13 = _os_log_send_and_compose_impl();
      sub_19B885924("Generic", 1, 0, 2, "[CLMiLoConnectionInternal _handleGenericEvent:]", "CoreLocation: %s\n", v13);
      if (v13 != buf)
      {
        free(v13);
      }
    }

    [(CLMiLoConnectionInternal *)self _notifyClientOfGenericEventResponse:v8];
  }

  else
  {
    if (qword_1EAFE4728 != -1)
    {
      dispatch_once(&qword_1EAFE4728, &unk_1F0E6EAB0);
    }

    v14 = qword_1EAFE4730;
    if (os_log_type_enabled(qword_1EAFE4730, OS_LOG_TYPE_FAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_19B873000, v14, OS_LOG_TYPE_FAULT, "nil generic event response event dictionary received", buf, 2u);
    }

    v15 = sub_19B87DD40();
    if ((*(v15 + 160) & 0x80000000) == 0 || (*(v15 + 164) & 0x80000000) == 0 || (*(v15 + 168) & 0x80000000) == 0 || *(v15 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE4728 != -1)
      {
        dispatch_once(&qword_1EAFE4728, &unk_1F0E6EAB0);
      }

      v16 = _os_log_send_and_compose_impl();
      sub_19B885924("Generic", 1, 0, 0, "[CLMiLoConnectionInternal _handleGenericEvent:]", "CoreLocation: %s\n", v16);
      if (v16 != buf)
      {
        free(v16);
      }
    }
  }

  v17 = *MEMORY[0x1E69E9840];
}

- (void)_createServiceWithServiceType:(unint64_t)type locationTypes:(id)types
{
  v21 = *MEMORY[0x1E69E9840];
  if (qword_1EAFE4728 != -1)
  {
    dispatch_once(&qword_1EAFE4728, &unk_1F0E6EAB0);
  }

  v7 = qword_1EAFE4730;
  if (os_log_type_enabled(qword_1EAFE4730, OS_LOG_TYPE_DEBUG))
  {
    *buf = 68289026;
    v20[0] = 2082;
    *&v20[1] = "";
    _os_log_impl(&dword_19B873000, v7, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:SPI request, creating a service}", buf, 0x12u);
  }

  if (self->_locationdConnection)
  {
    v8 = [MEMORY[0x1E696ACC8] archivedDataWithRootObject:types requiringSecureCoding:1 error:0];
    v9 = v8;
    if (!v8 || ![v8 length])
    {
      v17 = *MEMORY[0x1E696A578];
      v18 = @"Invalid parameter";
      -[CLMiLoConnectionInternal _notifyClientCreateServiceDidFailWithError:](self, "_notifyClientCreateServiceDidFailWithError:", [MEMORY[0x1E696ABC0] errorWithDomain:@"kCLErrorDomainPrivate" code:3 userInfo:{objc_msgSend(MEMORY[0x1E695DF20], "dictionaryWithObjects:forKeys:count:", &v18, &v17, 1)}]);
    }

    v15[0] = 0x1F0E73D60;
    v15[1] = 0x1F0E73D80;
    v16[0] = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:type];
    v16[1] = v9;
    [MEMORY[0x1E695DF20] dictionaryWithObjects:v16 forKeys:v15 count:2];
    sub_19BA0B68C();
  }

  if (qword_1EAFE4728 != -1)
  {
    dispatch_once(&qword_1EAFE4728, &unk_1F0E6EAB0);
  }

  v10 = qword_1EAFE4730;
  if (os_log_type_enabled(qword_1EAFE4730, OS_LOG_TYPE_ERROR))
  {
    *buf = 68289026;
    v20[0] = 2082;
    *&v20[1] = "";
    _os_log_impl(&dword_19B873000, v10, OS_LOG_TYPE_ERROR, "{msg%{public}.0s:SPI request, failed to create a service with internal error}", buf, 0x12u);
    if (qword_1EAFE4728 != -1)
    {
      dispatch_once(&qword_1EAFE4728, &unk_1F0E6EAB0);
    }
  }

  v11 = qword_1EAFE4730;
  if (os_signpost_enabled(qword_1EAFE4730))
  {
    *buf = 68289026;
    v20[0] = 2082;
    *&v20[1] = "";
    _os_signpost_emit_with_name_impl(&dword_19B873000, v11, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "SPI request, failed to create a service with internal error", "{msg%{public}.0s:SPI request, failed to create a service with internal error}", buf, 0x12u);
  }

  v13 = *MEMORY[0x1E696A578];
  v14 = @"Internal error";
  -[CLMiLoConnectionInternal _notifyClientCreateServiceDidFailWithError:](self, "_notifyClientCreateServiceDidFailWithError:", [MEMORY[0x1E696ABC0] errorWithDomain:@"kCLErrorDomainPrivate" code:0 userInfo:{objc_msgSend(MEMORY[0x1E695DF20], "dictionaryWithObjects:forKeys:count:", &v14, &v13, 1)}]);
  v12 = *MEMORY[0x1E69E9840];
}

- (void)_deleteServiceWithIdentifier:(id)identifier
{
  v15 = *MEMORY[0x1E69E9840];
  if (qword_1EAFE4728 != -1)
  {
    dispatch_once(&qword_1EAFE4728, &unk_1F0E6EAB0);
  }

  v5 = qword_1EAFE4730;
  if (os_log_type_enabled(qword_1EAFE4730, OS_LOG_TYPE_DEBUG))
  {
    *buf = 68289026;
    v14[0] = 2082;
    *&v14[1] = "";
    _os_log_impl(&dword_19B873000, v5, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:SPI request, deleting a service}", buf, 0x12u);
  }

  if (self->_locationdConnection)
  {
    v11 = 0x1F0E73DE0;
    identifierCopy = identifier;
    [MEMORY[0x1E695DF20] dictionaryWithObjects:&identifierCopy forKeys:&v11 count:1];
    sub_19BA0B68C();
  }

  if (qword_1EAFE4728 != -1)
  {
    dispatch_once(&qword_1EAFE4728, &unk_1F0E6EAB0);
  }

  v6 = qword_1EAFE4730;
  if (os_log_type_enabled(qword_1EAFE4730, OS_LOG_TYPE_ERROR))
  {
    *buf = 68289026;
    v14[0] = 2082;
    *&v14[1] = "";
    _os_log_impl(&dword_19B873000, v6, OS_LOG_TYPE_ERROR, "{msg%{public}.0s:SPI request, failed to delete a service with internal error}", buf, 0x12u);
    if (qword_1EAFE4728 != -1)
    {
      dispatch_once(&qword_1EAFE4728, &unk_1F0E6EAB0);
    }
  }

  v7 = qword_1EAFE4730;
  if (os_signpost_enabled(qword_1EAFE4730))
  {
    *buf = 68289026;
    v14[0] = 2082;
    *&v14[1] = "";
    _os_signpost_emit_with_name_impl(&dword_19B873000, v7, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "SPI request, failed to delete a service with internal error", "{msg%{public}.0s:SPI request, failed to delete a service with internal error}", buf, 0x12u);
  }

  v9 = *MEMORY[0x1E696A578];
  v10 = @"Internal error";
  -[CLMiLoConnectionInternal _notifyClientDeleteServiceDidFailWithServiceIdentifier:withError:](self, "_notifyClientDeleteServiceDidFailWithServiceIdentifier:withError:", identifier, [MEMORY[0x1E696ABC0] errorWithDomain:@"kCLErrorDomainPrivate" code:0 userInfo:{objc_msgSend(MEMORY[0x1E695DF20], "dictionaryWithObjects:forKeys:count:", &v10, &v9, 1)}]);
  v8 = *MEMORY[0x1E69E9840];
}

- (void)_queryMyServices
{
  v12 = *MEMORY[0x1E69E9840];
  if (qword_1EAFE4728 != -1)
  {
    dispatch_once(&qword_1EAFE4728, &unk_1F0E6EAB0);
  }

  v3 = qword_1EAFE4730;
  if (os_log_type_enabled(qword_1EAFE4730, OS_LOG_TYPE_DEBUG))
  {
    *buf = 68289026;
    *&buf[4] = 0;
    v10 = 2082;
    v11 = "";
    _os_log_impl(&dword_19B873000, v3, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:SPI request, query my services, kCLConnectionMessageMiLoQueryMyServices}", buf, 0x12u);
  }

  if (self->_locationdConnection)
  {
    operator new();
  }

  if (qword_1EAFE4728 != -1)
  {
    dispatch_once(&qword_1EAFE4728, &unk_1F0E6EAB0);
  }

  v4 = qword_1EAFE4730;
  if (os_log_type_enabled(qword_1EAFE4730, OS_LOG_TYPE_ERROR))
  {
    *buf = 68289026;
    *&buf[4] = 0;
    v10 = 2082;
    v11 = "";
    _os_log_impl(&dword_19B873000, v4, OS_LOG_TYPE_ERROR, "{msg%{public}.0s:SPI request, failed to query my services with internal error}", buf, 0x12u);
    if (qword_1EAFE4728 != -1)
    {
      dispatch_once(&qword_1EAFE4728, &unk_1F0E6EAB0);
    }
  }

  v5 = qword_1EAFE4730;
  if (os_signpost_enabled(qword_1EAFE4730))
  {
    *buf = 68289026;
    *&buf[4] = 0;
    v10 = 2082;
    v11 = "";
    _os_signpost_emit_with_name_impl(&dword_19B873000, v5, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "SPI request, failed to query my services with internal error", "{msg%{public}.0s:SPI request, failed to query my services with internal error}", buf, 0x12u);
  }

  v7 = *MEMORY[0x1E696A578];
  v8 = @"Internal error";
  -[CLMiLoConnectionInternal _notifyClientQueryServiceDidFailWithError:](self, "_notifyClientQueryServiceDidFailWithError:", [MEMORY[0x1E696ABC0] errorWithDomain:@"kCLErrorDomainPrivate" code:0 userInfo:{objc_msgSend(MEMORY[0x1E695DF20], "dictionaryWithObjects:forKeys:count:", &v8, &v7, 1)}]);
  v6 = *MEMORY[0x1E69E9840];
}

- (void)_queryMiLoConnectionStatus
{
  v13 = *MEMORY[0x1E69E9840];
  if (qword_1EAFE4728 != -1)
  {
    dispatch_once(&qword_1EAFE4728, &unk_1F0E6EAB0);
  }

  v3 = qword_1EAFE4730;
  if (os_log_type_enabled(qword_1EAFE4730, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_19B873000, v3, OS_LOG_TYPE_DEFAULT, "SPI request, query MiLo connection status, kCLConnectionMessageMiLoQueryConnectionStatus", buf, 2u);
  }

  v4 = sub_19B87DD40();
  if (*(v4 + 160) > 1 || *(v4 + 164) > 1 || *(v4 + 168) > 1 || *(v4 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1EAFE4728 != -1)
    {
      dispatch_once(&qword_1EAFE4728, &unk_1F0E6EAB0);
    }

    v5 = _os_log_send_and_compose_impl();
    sub_19B885924("Generic", 1, 0, 2, "[CLMiLoConnectionInternal _queryMiLoConnectionStatus]", "CoreLocation: %s\n", v5);
    if (v5 != buf)
    {
      free(v5);
    }
  }

  if (self->_locationdConnection)
  {
    sub_19BA0B764();
  }

  if (qword_1EAFE4728 != -1)
  {
    dispatch_once(&qword_1EAFE4728, &unk_1F0E6EAB0);
  }

  v6 = qword_1EAFE4730;
  if (os_log_type_enabled(qword_1EAFE4730, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_impl(&dword_19B873000, v6, OS_LOG_TYPE_ERROR, "SPI request, failed to query MiLo connection status with internal error", buf, 2u);
  }

  v7 = sub_19B87DD40();
  if ((*(v7 + 160) & 0x80000000) == 0 || (*(v7 + 164) & 0x80000000) == 0 || (*(v7 + 168) & 0x80000000) == 0 || *(v7 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1EAFE4728 != -1)
    {
      dispatch_once(&qword_1EAFE4728, &unk_1F0E6EAB0);
    }

    v8 = _os_log_send_and_compose_impl();
    sub_19B885924("Generic", 1, 0, 0, "[CLMiLoConnectionInternal _queryMiLoConnectionStatus]", "CoreLocation: %s\n", v8);
    if (v8 != buf)
    {
      free(v8);
    }
  }

  v10 = *MEMORY[0x1E696A578];
  v11 = @"Internal error";
  -[CLMiLoConnectionInternal _notifyClientQueryMiLoConnectionStatusDidFailWithError:](self, "_notifyClientQueryMiLoConnectionStatusDidFailWithError:", [MEMORY[0x1E696ABC0] errorWithDomain:@"kCLErrorDomainPrivate" code:0 userInfo:{objc_msgSend(MEMORY[0x1E695DF20], "dictionaryWithObjects:forKeys:count:", &v11, &v10, 1)}]);
  v9 = *MEMORY[0x1E69E9840];
}

- (void)_connectServiceWithIdentifier:(id)identifier
{
  v20 = *MEMORY[0x1E69E9840];
  if (qword_1EAFE4728 != -1)
  {
    dispatch_once(&qword_1EAFE4728, &unk_1F0E6EAB0);
  }

  v5 = qword_1EAFE4730;
  if (os_log_type_enabled(qword_1EAFE4730, OS_LOG_TYPE_INFO))
  {
    *buf = 68289026;
    v19[0] = 2082;
    *&v19[1] = "";
    _os_log_impl(&dword_19B873000, v5, OS_LOG_TYPE_INFO, "{msg%{public}.0s:SPI request, connect to a service, kCLConnectionMessageMiLoConnectToService}", buf, 0x12u);
  }

  if (self->_connectedServiceIdentifier)
  {
    if (qword_1EAFE4728 != -1)
    {
      dispatch_once(&qword_1EAFE4728, &unk_1F0E6EAB0);
    }

    v6 = qword_1EAFE4730;
    if (os_log_type_enabled(qword_1EAFE4730, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 68289026;
      v19[0] = 2082;
      *&v19[1] = "";
      _os_log_impl(&dword_19B873000, v6, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:SPI request, failed to connect to service because this connection object is already connected to a service}", buf, 0x12u);
    }

    v16 = *MEMORY[0x1E696A578];
    v17 = @"Already connected to another service";
    -[CLMiLoConnectionInternal _notifyClientConnectServiceDidFailWithServiceIdentifier:withError:](self, "_notifyClientConnectServiceDidFailWithServiceIdentifier:withError:", identifier, [MEMORY[0x1E696ABC0] errorWithDomain:@"kCLErrorDomainPrivate" code:9 userInfo:{objc_msgSend(MEMORY[0x1E695DF20], "dictionaryWithObjects:forKeys:count:", &v17, &v16, 1)}]);
  }

  else
  {
    if (self->_locationdConnection)
    {
      if (qword_1EAFE4728 != -1)
      {
        dispatch_once(&qword_1EAFE4728, &unk_1F0E6EAB0);
      }

      v8 = qword_1EAFE4730;
      if (os_log_type_enabled(qword_1EAFE4730, OS_LOG_TYPE_DEBUG))
      {
        *buf = 68289026;
        v19[0] = 2082;
        *&v19[1] = "";
        _os_log_impl(&dword_19B873000, v8, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:connect to service, set connectedServiceIdentifier}", buf, 0x12u);
      }

      self->_connectedServiceIdentifier = [identifier copy];
      if (qword_1EAFE4728 != -1)
      {
        dispatch_once(&qword_1EAFE4728, &unk_1F0E6EAB0);
      }

      v9 = qword_1EAFE4730;
      if (os_log_type_enabled(qword_1EAFE4730, OS_LOG_TYPE_DEBUG))
      {
        *buf = 68289026;
        v19[0] = 2082;
        *&v19[1] = "";
        _os_log_impl(&dword_19B873000, v9, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:connect to service, set handler for prediction updates}", buf, 0x12u);
      }

      [(CLMiLoConnectionInternal *)self _setHandlerForMiLoPredictionEvents];
      v14 = 0x1F0E73DE0;
      identifierCopy = identifier;
      [MEMORY[0x1E695DF20] dictionaryWithObjects:&identifierCopy forKeys:&v14 count:1];
      sub_19B960254();
    }

    if (qword_1EAFE4728 != -1)
    {
      dispatch_once(&qword_1EAFE4728, &unk_1F0E6EAB0);
    }

    v10 = qword_1EAFE4730;
    if (os_log_type_enabled(qword_1EAFE4730, OS_LOG_TYPE_ERROR))
    {
      *buf = 68289026;
      v19[0] = 2082;
      *&v19[1] = "";
      _os_log_impl(&dword_19B873000, v10, OS_LOG_TYPE_ERROR, "{msg%{public}.0s:SPI request, failed to connect to services with internal error}", buf, 0x12u);
      if (qword_1EAFE4728 != -1)
      {
        dispatch_once(&qword_1EAFE4728, &unk_1F0E6EAB0);
      }
    }

    v11 = qword_1EAFE4730;
    if (os_signpost_enabled(qword_1EAFE4730))
    {
      *buf = 68289026;
      v19[0] = 2082;
      *&v19[1] = "";
      _os_signpost_emit_with_name_impl(&dword_19B873000, v11, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "SPI request, failed to connect to services with internal error", "{msg%{public}.0s:SPI request, failed to connect to services with internal error}", buf, 0x12u);
    }

    v12 = *MEMORY[0x1E696A578];
    v13 = @"Internal error";
    -[CLMiLoConnectionInternal _notifyClientConnectServiceDidFailWithServiceIdentifier:withError:](self, "_notifyClientConnectServiceDidFailWithServiceIdentifier:withError:", identifier, [MEMORY[0x1E696ABC0] errorWithDomain:@"kCLErrorDomainPrivate" code:0 userInfo:{objc_msgSend(MEMORY[0x1E695DF20], "dictionaryWithObjects:forKeys:count:", &v13, &v12, 1)}]);
  }

  v7 = *MEMORY[0x1E69E9840];
}

- (void)_disconnectServiceWithIdentifier:(id)identifier
{
  v24 = *MEMORY[0x1E69E9840];
  if (qword_1EAFE4728 != -1)
  {
    dispatch_once(&qword_1EAFE4728, &unk_1F0E6EAB0);
  }

  v5 = qword_1EAFE4730;
  if (os_log_type_enabled(qword_1EAFE4730, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 68289026;
    v22 = 2082;
    v23 = "";
    _os_log_impl(&dword_19B873000, v5, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:SPI request, disconnect to a service, kCLConnectionMessageMiLoDisconnectToService}", buf, 0x12u);
  }

  if (self->_connectedServiceIdentifier)
  {
    if ([identifier isEqual:?])
    {
      if (self->_locationdConnection)
      {
        if (qword_1EAFE4728 != -1)
        {
          dispatch_once(&qword_1EAFE4728, &unk_1F0E6EAB0);
        }

        v6 = qword_1EAFE4730;
        if (os_log_type_enabled(qword_1EAFE4730, OS_LOG_TYPE_INFO))
        {
          *buf = 68289026;
          v22 = 2082;
          v23 = "";
          _os_log_impl(&dword_19B873000, v6, OS_LOG_TYPE_INFO, "{msg%{public}.0s:disconnect to service, clear connectedServiceIdentifier}", buf, 0x12u);
          if (qword_1EAFE4728 != -1)
          {
            dispatch_once(&qword_1EAFE4728, &unk_1F0E6EAB0);
          }
        }

        v7 = qword_1EAFE4730;
        if (os_log_type_enabled(qword_1EAFE4730, OS_LOG_TYPE_DEBUG))
        {
          *buf = 68289026;
          v22 = 2082;
          v23 = "";
          _os_log_impl(&dword_19B873000, v7, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:disconnect to service, unset handler for prediction updates}", buf, 0x12u);
        }

        [(CLMiLoConnectionInternal *)self _unsetHandlerForMiLoPredictionEvents];
        v15 = 0x1F0E73DE0;
        identifierCopy = identifier;
        [MEMORY[0x1E695DF20] dictionaryWithObjects:&identifierCopy forKeys:&v15 count:1];
        operator new();
      }

      if (qword_1EAFE4728 != -1)
      {
        dispatch_once(&qword_1EAFE4728, &unk_1F0E6EAB0);
      }

      v10 = qword_1EAFE4730;
      if (os_log_type_enabled(qword_1EAFE4730, OS_LOG_TYPE_ERROR))
      {
        *buf = 68289026;
        v22 = 2082;
        v23 = "";
        _os_log_impl(&dword_19B873000, v10, OS_LOG_TYPE_ERROR, "{msg%{public}.0s:SPI request, failed to disconnect service with internal error}", buf, 0x12u);
        if (qword_1EAFE4728 != -1)
        {
          dispatch_once(&qword_1EAFE4728, &unk_1F0E6EAB0);
        }
      }

      v11 = qword_1EAFE4730;
      if (os_signpost_enabled(qword_1EAFE4730))
      {
        *buf = 68289026;
        v22 = 2082;
        v23 = "";
        _os_signpost_emit_with_name_impl(&dword_19B873000, v11, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "SPI request, failed to disconnect service with internal error", "{msg%{public}.0s:SPI request, failed to disconnect service with internal error}", buf, 0x12u);
      }

      v13 = *MEMORY[0x1E696A578];
      v14 = @"Internal error";
      -[CLMiLoConnectionInternal _notifyClientDisconnectServiceDidFailWithError:serviceIdentifier:](self, "_notifyClientDisconnectServiceDidFailWithError:serviceIdentifier:", [MEMORY[0x1E696ABC0] errorWithDomain:@"kCLErrorDomainPrivate" code:0 userInfo:{objc_msgSend(MEMORY[0x1E695DF20], "dictionaryWithObjects:forKeys:count:", &v14, &v13, 1)}], identifier);
    }

    else
    {
      if (qword_1EAFE4728 != -1)
      {
        dispatch_once(&qword_1EAFE4728, &unk_1F0E6EAB0);
      }

      v9 = qword_1EAFE4730;
      if (os_log_type_enabled(qword_1EAFE4730, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 68289026;
        v22 = 2082;
        v23 = "";
        _os_log_impl(&dword_19B873000, v9, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:SPI request, failed to disconnect to a service because connected to a different service}", buf, 0x12u);
      }

      v17 = *MEMORY[0x1E696A578];
      v18 = @"Invalid parameter";
      -[CLMiLoConnectionInternal _notifyClientDisconnectServiceDidFailWithError:serviceIdentifier:](self, "_notifyClientDisconnectServiceDidFailWithError:serviceIdentifier:", [MEMORY[0x1E696ABC0] errorWithDomain:@"kCLErrorDomainPrivate" code:3 userInfo:{objc_msgSend(MEMORY[0x1E695DF20], "dictionaryWithObjects:forKeys:count:", &v18, &v17, 1)}], identifier);
    }
  }

  else
  {
    if (qword_1EAFE4728 != -1)
    {
      dispatch_once(&qword_1EAFE4728, &unk_1F0E6EAB0);
    }

    v8 = qword_1EAFE4730;
    if (os_log_type_enabled(qword_1EAFE4730, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 68289026;
      v22 = 2082;
      v23 = "";
      _os_log_impl(&dword_19B873000, v8, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:SPI request, failed to disconnect to a service because this connection object hasn't connected to a service}", buf, 0x12u);
    }

    v19 = *MEMORY[0x1E696A578];
    v20 = @"Not connected to any service";
    -[CLMiLoConnectionInternal _notifyClientDisconnectServiceDidFailWithError:serviceIdentifier:](self, "_notifyClientDisconnectServiceDidFailWithError:serviceIdentifier:", [MEMORY[0x1E696ABC0] errorWithDomain:@"kCLErrorDomainPrivate" code:10 userInfo:{objc_msgSend(MEMORY[0x1E695DF20], "dictionaryWithObjects:forKeys:count:", &v20, &v19, 1)}], identifier);
  }

  v12 = *MEMORY[0x1E69E9840];
}

- (void)_requestMiLoPredictionWithRequestIdentifier:(id)identifier
{
  v21 = *MEMORY[0x1E69E9840];
  if (qword_1EAFE4728 != -1)
  {
    dispatch_once(&qword_1EAFE4728, &unk_1F0E6EAB0);
  }

  v5 = qword_1EAFE4730;
  if (os_log_type_enabled(qword_1EAFE4730, OS_LOG_TYPE_DEBUG))
  {
    *buf = 68289026;
    v19 = 2082;
    v20 = "";
    _os_log_impl(&dword_19B873000, v5, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:SPI request, single shot MiLo prediction, kCLConnectionMessageMiLoSingleShotPrediction}", buf, 0x12u);
  }

  connectedServiceIdentifier = self->_connectedServiceIdentifier;
  if (connectedServiceIdentifier)
  {
    if (self->_locationdConnection)
    {
      v14[0] = 0x1F0E73DE0;
      v14[1] = 0x1F0E73E60;
      v15[0] = connectedServiceIdentifier;
      v15[1] = identifier;
      [MEMORY[0x1E695DF20] dictionaryWithObjects:v15 forKeys:v14 count:2];
      operator new();
    }

    if (qword_1EAFE4728 != -1)
    {
      dispatch_once(&qword_1EAFE4728, &unk_1F0E6EAB0);
    }

    v9 = qword_1EAFE4730;
    if (os_log_type_enabled(qword_1EAFE4730, OS_LOG_TYPE_ERROR))
    {
      *buf = 68289026;
      v19 = 2082;
      v20 = "";
      _os_log_impl(&dword_19B873000, v9, OS_LOG_TYPE_ERROR, "{msg%{public}.0s:SPI request, failed to request a single shot prediction with internal error}", buf, 0x12u);
      if (qword_1EAFE4728 != -1)
      {
        dispatch_once(&qword_1EAFE4728, &unk_1F0E6EAB0);
      }
    }

    v10 = qword_1EAFE4730;
    if (os_signpost_enabled(qword_1EAFE4730))
    {
      *buf = 68289026;
      v19 = 2082;
      v20 = "";
      _os_signpost_emit_with_name_impl(&dword_19B873000, v10, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "SPI request, failed to request a single shot prediction with internal error", "{msg%{public}.0s:SPI request, failed to request a single shot prediction with internal error}", buf, 0x12u);
    }

    v12 = *MEMORY[0x1E696A578];
    v13 = @"Internal error";
    -[CLMiLoConnectionInternal _notifyClientDidCompleteClientRequest:withError:](self, "_notifyClientDidCompleteClientRequest:withError:", identifier, [MEMORY[0x1E696ABC0] errorWithDomain:@"kCLErrorDomainPrivate" code:0 userInfo:{objc_msgSend(MEMORY[0x1E695DF20], "dictionaryWithObjects:forKeys:count:", &v13, &v12, 1)}]);
  }

  else
  {
    if (qword_1EAFE4728 != -1)
    {
      dispatch_once(&qword_1EAFE4728, &unk_1F0E6EAB0);
    }

    v7 = qword_1EAFE4730;
    if (os_log_type_enabled(qword_1EAFE4730, OS_LOG_TYPE_ERROR))
    {
      *buf = 68289026;
      v19 = 2082;
      v20 = "";
      _os_log_impl(&dword_19B873000, v7, OS_LOG_TYPE_ERROR, "{msg%{public}.0s:SPI request, failed to request a single shot prediction, not connected to service yet}", buf, 0x12u);
      if (qword_1EAFE4728 != -1)
      {
        dispatch_once(&qword_1EAFE4728, &unk_1F0E6EAB0);
      }
    }

    v8 = qword_1EAFE4730;
    if (os_signpost_enabled(qword_1EAFE4730))
    {
      *buf = 68289026;
      v19 = 2082;
      v20 = "";
      _os_signpost_emit_with_name_impl(&dword_19B873000, v8, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "SPI request, failed to request a single shot prediction, not connected to service yet", "{msg%{public}.0s:SPI request, failed to request a single shot prediction, not connected to service yet}", buf, 0x12u);
    }

    v16 = *MEMORY[0x1E696A578];
    v17 = @"Not connected to any service";
    -[CLMiLoConnectionInternal _notifyClientDidCompleteClientRequest:withError:](self, "_notifyClientDidCompleteClientRequest:withError:", identifier, [MEMORY[0x1E696ABC0] errorWithDomain:@"kCLErrorDomainPrivate" code:10 userInfo:{objc_msgSend(MEMORY[0x1E695DF20], "dictionaryWithObjects:forKeys:count:", &v17, &v16, 1)}]);
  }

  v11 = *MEMORY[0x1E69E9840];
}

- (void)_requestObservationWithRequestIdentifier:(id)identifier placeIdentifier:(id)placeIdentifier
{
  v24 = *MEMORY[0x1E69E9840];
  if (qword_1EAFE4728 != -1)
  {
    dispatch_once(&qword_1EAFE4728, &unk_1F0E6EAB0);
  }

  v7 = qword_1EAFE4730;
  if (os_log_type_enabled(qword_1EAFE4730, OS_LOG_TYPE_DEBUG))
  {
    *buf = 68289026;
    v22 = 2082;
    v23 = "";
    _os_log_impl(&dword_19B873000, v7, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:SPI request, request observation, kCLConnectionMessageRequestObservation}", buf, 0x12u);
  }

  connectedServiceIdentifier = self->_connectedServiceIdentifier;
  if (connectedServiceIdentifier)
  {
    if (self->_locationdConnection)
    {
      v17[0] = 0x1F0E73DE0;
      v17[1] = 0x1F0E73E60;
      v18[0] = connectedServiceIdentifier;
      v18[1] = identifier;
      v9 = [MEMORY[0x1E695DF90] dictionaryWithDictionary:{objc_msgSend(MEMORY[0x1E695DF20], "dictionaryWithObjects:forKeys:count:", v18, v17, 2)}];
      if (placeIdentifier)
      {
        [v9 setObject:placeIdentifier forKey:0x1F0E73E80];
      }

      operator new();
    }

    if (qword_1EAFE4728 != -1)
    {
      dispatch_once(&qword_1EAFE4728, &unk_1F0E6EAB0);
    }

    v12 = qword_1EAFE4730;
    if (os_log_type_enabled(qword_1EAFE4730, OS_LOG_TYPE_ERROR))
    {
      *buf = 68289026;
      v22 = 2082;
      v23 = "";
      _os_log_impl(&dword_19B873000, v12, OS_LOG_TYPE_ERROR, "{msg%{public}.0s:SPI request, failed to request observation with internal error}", buf, 0x12u);
      if (qword_1EAFE4728 != -1)
      {
        dispatch_once(&qword_1EAFE4728, &unk_1F0E6EAB0);
      }
    }

    v13 = qword_1EAFE4730;
    if (os_signpost_enabled(qword_1EAFE4730))
    {
      *buf = 68289026;
      v22 = 2082;
      v23 = "";
      _os_signpost_emit_with_name_impl(&dword_19B873000, v13, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "SPI request, failed to request observation with internal error", "{msg%{public}.0s:SPI request, failed to request observation with internal error}", buf, 0x12u);
    }

    v15 = *MEMORY[0x1E696A578];
    v16 = @"Internal error";
    -[CLMiLoConnectionInternal _notifyClientDidCompleteClientRequest:withError:](self, "_notifyClientDidCompleteClientRequest:withError:", identifier, [MEMORY[0x1E696ABC0] errorWithDomain:@"kCLErrorDomainPrivate" code:0 userInfo:{objc_msgSend(MEMORY[0x1E695DF20], "dictionaryWithObjects:forKeys:count:", &v16, &v15, 1)}]);
  }

  else
  {
    if (qword_1EAFE4728 != -1)
    {
      dispatch_once(&qword_1EAFE4728, &unk_1F0E6EAB0);
    }

    v10 = qword_1EAFE4730;
    if (os_log_type_enabled(qword_1EAFE4730, OS_LOG_TYPE_ERROR))
    {
      *buf = 68289026;
      v22 = 2082;
      v23 = "";
      _os_log_impl(&dword_19B873000, v10, OS_LOG_TYPE_ERROR, "{msg%{public}.0s:SPI request, failed to request observation, not connected to service yet}", buf, 0x12u);
      if (qword_1EAFE4728 != -1)
      {
        dispatch_once(&qword_1EAFE4728, &unk_1F0E6EAB0);
      }
    }

    v11 = qword_1EAFE4730;
    if (os_signpost_enabled(qword_1EAFE4730))
    {
      *buf = 68289026;
      v22 = 2082;
      v23 = "";
      _os_signpost_emit_with_name_impl(&dword_19B873000, v11, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "SPI request, failed to request observation, not connected to service yet", "{msg%{public}.0s:SPI request, failed to request observation, not connected to service yet}", buf, 0x12u);
    }

    v19 = *MEMORY[0x1E696A578];
    v20 = @"Not connected to any service";
    -[CLMiLoConnectionInternal _notifyClientDidCompleteClientRequest:withError:](self, "_notifyClientDidCompleteClientRequest:withError:", identifier, [MEMORY[0x1E696ABC0] errorWithDomain:@"kCLErrorDomainPrivate" code:10 userInfo:{objc_msgSend(MEMORY[0x1E695DF20], "dictionaryWithObjects:forKeys:count:", &v20, &v19, 1)}]);
  }

  v14 = *MEMORY[0x1E69E9840];
}

- (void)_labelEventWithRequestIdentifier:(id)identifier placeIdentifier:(id)placeIdentifier observationIdentifier:(id)observationIdentifier
{
  v25 = *MEMORY[0x1E69E9840];
  if (qword_1EAFE4728 != -1)
  {
    dispatch_once(&qword_1EAFE4728, &unk_1F0E6EAB0);
  }

  v9 = qword_1EAFE4730;
  if (os_log_type_enabled(qword_1EAFE4730, OS_LOG_TYPE_DEBUG))
  {
    *buf = 68289026;
    v23 = 2082;
    v24 = "";
    _os_log_impl(&dword_19B873000, v9, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:SPI request, label an observation, kCLConnectionMessageLabelSignleObservation}", buf, 0x12u);
  }

  connectedServiceIdentifier = self->_connectedServiceIdentifier;
  if (connectedServiceIdentifier)
  {
    if (self->_locationdConnection)
    {
      v18[0] = 0x1F0E73DE0;
      v18[1] = 0x1F0E73E60;
      v19[0] = connectedServiceIdentifier;
      v19[1] = identifier;
      v18[2] = 0x1F0E73E80;
      v18[3] = 0x1F0E73EA0;
      v19[2] = placeIdentifier;
      v19[3] = observationIdentifier;
      [MEMORY[0x1E695DF20] dictionaryWithObjects:v19 forKeys:v18 count:4];
      operator new();
    }

    if (qword_1EAFE4728 != -1)
    {
      dispatch_once(&qword_1EAFE4728, &unk_1F0E6EAB0);
    }

    v13 = qword_1EAFE4730;
    if (os_log_type_enabled(qword_1EAFE4730, OS_LOG_TYPE_ERROR))
    {
      *buf = 68289026;
      v23 = 2082;
      v24 = "";
      _os_log_impl(&dword_19B873000, v13, OS_LOG_TYPE_ERROR, "{msg%{public}.0s:SPI request, failed to label an observation with internal error}", buf, 0x12u);
      if (qword_1EAFE4728 != -1)
      {
        dispatch_once(&qword_1EAFE4728, &unk_1F0E6EAB0);
      }
    }

    v14 = qword_1EAFE4730;
    if (os_signpost_enabled(qword_1EAFE4730))
    {
      *buf = 68289026;
      v23 = 2082;
      v24 = "";
      _os_signpost_emit_with_name_impl(&dword_19B873000, v14, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "SPI request, failed to label an observation with internal error", "{msg%{public}.0s:SPI request, failed to label an observation with internal error}", buf, 0x12u);
    }

    v16 = *MEMORY[0x1E696A578];
    v17 = @"Internal error";
    -[CLMiLoConnectionInternal _notifyClientDidCompleteClientRequest:withError:](self, "_notifyClientDidCompleteClientRequest:withError:", identifier, [MEMORY[0x1E696ABC0] errorWithDomain:@"kCLErrorDomainPrivate" code:0 userInfo:{objc_msgSend(MEMORY[0x1E695DF20], "dictionaryWithObjects:forKeys:count:", &v17, &v16, 1)}]);
  }

  else
  {
    if (qword_1EAFE4728 != -1)
    {
      dispatch_once(&qword_1EAFE4728, &unk_1F0E6EAB0);
    }

    v11 = qword_1EAFE4730;
    if (os_log_type_enabled(qword_1EAFE4730, OS_LOG_TYPE_ERROR))
    {
      *buf = 68289026;
      v23 = 2082;
      v24 = "";
      _os_log_impl(&dword_19B873000, v11, OS_LOG_TYPE_ERROR, "{msg%{public}.0s:SPI request, failed to request observation, not connected to service yet}", buf, 0x12u);
      if (qword_1EAFE4728 != -1)
      {
        dispatch_once(&qword_1EAFE4728, &unk_1F0E6EAB0);
      }
    }

    v12 = qword_1EAFE4730;
    if (os_signpost_enabled(qword_1EAFE4730))
    {
      *buf = 68289026;
      v23 = 2082;
      v24 = "";
      _os_signpost_emit_with_name_impl(&dword_19B873000, v12, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "SPI request, failed to request observation, not connected to service yet", "{msg%{public}.0s:SPI request, failed to request observation, not connected to service yet}", buf, 0x12u);
    }

    v20 = *MEMORY[0x1E696A578];
    v21 = @"Not connected to any service";
    -[CLMiLoConnectionInternal _notifyClientDidCompleteClientRequest:withError:](self, "_notifyClientDidCompleteClientRequest:withError:", identifier, [MEMORY[0x1E696ABC0] errorWithDomain:@"kCLErrorDomainPrivate" code:10 userInfo:{objc_msgSend(MEMORY[0x1E695DF20], "dictionaryWithObjects:forKeys:count:", &v21, &v20, 1)}]);
  }

  v15 = *MEMORY[0x1E69E9840];
}

- (void)_labelEventsWithStartDate:(id)date endDate:(id)endDate placeIdentifier:(id)identifier requestIdentifier:(id)requestIdentifier
{
  v27 = *MEMORY[0x1E69E9840];
  if (qword_1EAFE4728 != -1)
  {
    dispatch_once(&qword_1EAFE4728, &unk_1F0E6EAB0);
  }

  v11 = qword_1EAFE4730;
  if (os_log_type_enabled(qword_1EAFE4730, OS_LOG_TYPE_DEBUG))
  {
    *buf = 68289026;
    v25 = 2082;
    v26 = "";
    _os_log_impl(&dword_19B873000, v11, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:SPI request, label observations between dates, kCLConnectionMessageLabelObservationsBetweenDates}", buf, 0x12u);
  }

  connectedServiceIdentifier = self->_connectedServiceIdentifier;
  if (connectedServiceIdentifier)
  {
    if (self->_locationdConnection)
    {
      v20[0] = 0x1F0E73DE0;
      v20[1] = 0x1F0E73E60;
      v21[0] = connectedServiceIdentifier;
      v21[1] = requestIdentifier;
      v20[2] = 0x1F0E73E80;
      v20[3] = 0x1F0E73EC0;
      v21[2] = identifier;
      v21[3] = date;
      v20[4] = 0x1F0E73EE0;
      v21[4] = endDate;
      [MEMORY[0x1E695DF20] dictionaryWithObjects:v21 forKeys:v20 count:5];
      operator new();
    }

    if (qword_1EAFE4728 != -1)
    {
      dispatch_once(&qword_1EAFE4728, &unk_1F0E6EAB0);
    }

    v15 = qword_1EAFE4730;
    if (os_log_type_enabled(qword_1EAFE4730, OS_LOG_TYPE_ERROR))
    {
      *buf = 68289026;
      v25 = 2082;
      v26 = "";
      _os_log_impl(&dword_19B873000, v15, OS_LOG_TYPE_ERROR, "{msg%{public}.0s:SPI request, failed to label observations between dates with internal error}", buf, 0x12u);
      if (qword_1EAFE4728 != -1)
      {
        dispatch_once(&qword_1EAFE4728, &unk_1F0E6EAB0);
      }
    }

    v16 = qword_1EAFE4730;
    if (os_signpost_enabled(qword_1EAFE4730))
    {
      *buf = 68289026;
      v25 = 2082;
      v26 = "";
      _os_signpost_emit_with_name_impl(&dword_19B873000, v16, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "SPI request, failed to label observations between dates with internal error", "{msg%{public}.0s:SPI request, failed to label observations between dates with internal error}", buf, 0x12u);
    }

    v18 = *MEMORY[0x1E696A578];
    v19 = @"Internal error";
    -[CLMiLoConnectionInternal _notifyClientDidCompleteClientRequest:withError:](self, "_notifyClientDidCompleteClientRequest:withError:", requestIdentifier, [MEMORY[0x1E696ABC0] errorWithDomain:@"kCLErrorDomainPrivate" code:0 userInfo:{objc_msgSend(MEMORY[0x1E695DF20], "dictionaryWithObjects:forKeys:count:", &v19, &v18, 1)}]);
  }

  else
  {
    if (qword_1EAFE4728 != -1)
    {
      dispatch_once(&qword_1EAFE4728, &unk_1F0E6EAB0);
    }

    v13 = qword_1EAFE4730;
    if (os_log_type_enabled(qword_1EAFE4730, OS_LOG_TYPE_ERROR))
    {
      *buf = 68289026;
      v25 = 2082;
      v26 = "";
      _os_log_impl(&dword_19B873000, v13, OS_LOG_TYPE_ERROR, "{msg%{public}.0s:SPI request, failed to label observations between dates, not connected to service yet}", buf, 0x12u);
      if (qword_1EAFE4728 != -1)
      {
        dispatch_once(&qword_1EAFE4728, &unk_1F0E6EAB0);
      }
    }

    v14 = qword_1EAFE4730;
    if (os_signpost_enabled(qword_1EAFE4730))
    {
      *buf = 68289026;
      v25 = 2082;
      v26 = "";
      _os_signpost_emit_with_name_impl(&dword_19B873000, v14, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "SPI request, failed to label observations between dates, not connected to service yet", "{msg%{public}.0s:SPI request, failed to label observations between dates, not connected to service yet}", buf, 0x12u);
    }

    v22 = *MEMORY[0x1E696A578];
    v23 = @"Not connected to any service";
    -[CLMiLoConnectionInternal _notifyClientDidCompleteClientRequest:withError:](self, "_notifyClientDidCompleteClientRequest:withError:", requestIdentifier, [MEMORY[0x1E696ABC0] errorWithDomain:@"kCLErrorDomainPrivate" code:10 userInfo:{objc_msgSend(MEMORY[0x1E695DF20], "dictionaryWithObjects:forKeys:count:", &v23, &v22, 1)}]);
  }

  v17 = *MEMORY[0x1E69E9840];
}

- (void)_removeLabels:(id)labels withRequestIdentifier:(id)identifier
{
  v23 = *MEMORY[0x1E69E9840];
  if (qword_1EAFE4728 != -1)
  {
    dispatch_once(&qword_1EAFE4728, &unk_1F0E6EAB0);
  }

  v7 = qword_1EAFE4730;
  if (os_log_type_enabled(qword_1EAFE4730, OS_LOG_TYPE_DEBUG))
  {
    *buf = 68289026;
    v21 = 2082;
    v22 = "";
    _os_log_impl(&dword_19B873000, v7, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:SPI request, remove labels, kCLConnectionMessageRemoveLabels}", buf, 0x12u);
  }

  connectedServiceIdentifier = self->_connectedServiceIdentifier;
  if (connectedServiceIdentifier)
  {
    if (self->_locationdConnection)
    {
      v16[0] = 0x1F0E73DE0;
      v16[1] = 0x1F0E73E60;
      v17[0] = connectedServiceIdentifier;
      v17[1] = identifier;
      v16[2] = 0x1F0E73F00;
      v17[2] = labels;
      [MEMORY[0x1E695DF20] dictionaryWithObjects:v17 forKeys:v16 count:3];
      operator new();
    }

    if (qword_1EAFE4728 != -1)
    {
      dispatch_once(&qword_1EAFE4728, &unk_1F0E6EAB0);
    }

    v11 = qword_1EAFE4730;
    if (os_log_type_enabled(qword_1EAFE4730, OS_LOG_TYPE_ERROR))
    {
      *buf = 68289026;
      v21 = 2082;
      v22 = "";
      _os_log_impl(&dword_19B873000, v11, OS_LOG_TYPE_ERROR, "{msg%{public}.0s:SPI request, failed to remove labels with internal error}", buf, 0x12u);
      if (qword_1EAFE4728 != -1)
      {
        dispatch_once(&qword_1EAFE4728, &unk_1F0E6EAB0);
      }
    }

    v12 = qword_1EAFE4730;
    if (os_signpost_enabled(qword_1EAFE4730))
    {
      *buf = 68289026;
      v21 = 2082;
      v22 = "";
      _os_signpost_emit_with_name_impl(&dword_19B873000, v12, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "SPI request, failed to remove labels with internal error", "{msg%{public}.0s:SPI request, failed to remove labels with internal error}", buf, 0x12u);
    }

    v14 = *MEMORY[0x1E696A578];
    v15 = @"Internal error";
    -[CLMiLoConnectionInternal _notifyClientDidCompleteClientRequest:withError:](self, "_notifyClientDidCompleteClientRequest:withError:", identifier, [MEMORY[0x1E696ABC0] errorWithDomain:@"kCLErrorDomainPrivate" code:0 userInfo:{objc_msgSend(MEMORY[0x1E695DF20], "dictionaryWithObjects:forKeys:count:", &v15, &v14, 1)}]);
  }

  else
  {
    if (qword_1EAFE4728 != -1)
    {
      dispatch_once(&qword_1EAFE4728, &unk_1F0E6EAB0);
    }

    v9 = qword_1EAFE4730;
    if (os_log_type_enabled(qword_1EAFE4730, OS_LOG_TYPE_ERROR))
    {
      *buf = 68289026;
      v21 = 2082;
      v22 = "";
      _os_log_impl(&dword_19B873000, v9, OS_LOG_TYPE_ERROR, "{msg%{public}.0s:SPI request, failed to remove labels, not connected to service yet}", buf, 0x12u);
      if (qword_1EAFE4728 != -1)
      {
        dispatch_once(&qword_1EAFE4728, &unk_1F0E6EAB0);
      }
    }

    v10 = qword_1EAFE4730;
    if (os_signpost_enabled(qword_1EAFE4730))
    {
      *buf = 68289026;
      v21 = 2082;
      v22 = "";
      _os_signpost_emit_with_name_impl(&dword_19B873000, v10, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "SPI request, failed to remove labels, not connected to service yet", "{msg%{public}.0s:SPI request, failed to remove labels, not connected to service yet}", buf, 0x12u);
    }

    v18 = *MEMORY[0x1E696A578];
    v19 = @"Not connected to any service";
    -[CLMiLoConnectionInternal _notifyClientDidCompleteClientRequest:withError:](self, "_notifyClientDidCompleteClientRequest:withError:", identifier, [MEMORY[0x1E696ABC0] errorWithDomain:@"kCLErrorDomainPrivate" code:10 userInfo:{objc_msgSend(MEMORY[0x1E695DF20], "dictionaryWithObjects:forKeys:count:", &v19, &v18, 1)}]);
  }

  v13 = *MEMORY[0x1E69E9840];
}

- (void)_removeCustomLocationOfInterestFromMonitoringWithIdentifier:(id)identifier withRequestIdentifier:(id)requestIdentifier
{
  v22 = *MEMORY[0x1E69E9840];
  if (qword_1EAFE4728 != -1)
  {
    dispatch_once(&qword_1EAFE4728, &unk_1F0E6EAB0);
  }

  v7 = qword_1EAFE4730;
  if (os_log_type_enabled(qword_1EAFE4730, OS_LOG_TYPE_DEBUG))
  {
    *buf = 68289026;
    v21[0] = 2082;
    *&v21[1] = "";
    _os_log_impl(&dword_19B873000, v7, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:SPI request, remove a custom LOI, kCLConnectionMessageRemoveCustomLOI}", buf, 0x12u);
  }

  connectedServiceIdentifier = self->_connectedServiceIdentifier;
  if (connectedServiceIdentifier)
  {
    if (self->_locationdConnection)
    {
      v16[0] = 0x1F0E73DE0;
      v16[1] = 0x1F0E73E60;
      v17[0] = connectedServiceIdentifier;
      v17[1] = requestIdentifier;
      v16[2] = 0x1F0E73FC0;
      v17[2] = identifier;
      [MEMORY[0x1E695DF20] dictionaryWithObjects:v17 forKeys:v16 count:3];
      sub_19B943D9C();
    }

    if (qword_1EAFE4728 != -1)
    {
      dispatch_once(&qword_1EAFE4728, &unk_1F0E6EAB0);
    }

    v11 = qword_1EAFE4730;
    if (os_log_type_enabled(qword_1EAFE4730, OS_LOG_TYPE_ERROR))
    {
      *buf = 68289026;
      v21[0] = 2082;
      *&v21[1] = "";
      _os_log_impl(&dword_19B873000, v11, OS_LOG_TYPE_ERROR, "{msg%{public}.0s:SPI request, failed to remove labels with internal error}", buf, 0x12u);
      if (qword_1EAFE4728 != -1)
      {
        dispatch_once(&qword_1EAFE4728, &unk_1F0E6EAB0);
      }
    }

    v12 = qword_1EAFE4730;
    if (os_signpost_enabled(qword_1EAFE4730))
    {
      *buf = 68289026;
      v21[0] = 2082;
      *&v21[1] = "";
      _os_signpost_emit_with_name_impl(&dword_19B873000, v12, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "SPI request, failed to remove labels with internal error", "{msg%{public}.0s:SPI request, failed to remove labels with internal error}", buf, 0x12u);
    }

    v14 = *MEMORY[0x1E696A578];
    v15 = @"Internal error";
    -[CLMiLoConnectionInternal _notifyClientDidCompleteClientRequest:withError:](self, "_notifyClientDidCompleteClientRequest:withError:", requestIdentifier, [MEMORY[0x1E696ABC0] errorWithDomain:@"kCLErrorDomainPrivate" code:0 userInfo:{objc_msgSend(MEMORY[0x1E695DF20], "dictionaryWithObjects:forKeys:count:", &v15, &v14, 1)}]);
  }

  else
  {
    if (qword_1EAFE4728 != -1)
    {
      dispatch_once(&qword_1EAFE4728, &unk_1F0E6EAB0);
    }

    v9 = qword_1EAFE4730;
    if (os_log_type_enabled(qword_1EAFE4730, OS_LOG_TYPE_ERROR))
    {
      *buf = 68289026;
      v21[0] = 2082;
      *&v21[1] = "";
      _os_log_impl(&dword_19B873000, v9, OS_LOG_TYPE_ERROR, "{msg%{public}.0s:SPI request, failed to remove a custom LOI, not connected to service yet}", buf, 0x12u);
      if (qword_1EAFE4728 != -1)
      {
        dispatch_once(&qword_1EAFE4728, &unk_1F0E6EAB0);
      }
    }

    v10 = qword_1EAFE4730;
    if (os_signpost_enabled(qword_1EAFE4730))
    {
      *buf = 68289026;
      v21[0] = 2082;
      *&v21[1] = "";
      _os_signpost_emit_with_name_impl(&dword_19B873000, v10, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "SPI request, failed to remove a custom LOI, not connected to service yet", "{msg%{public}.0s:SPI request, failed to remove a custom LOI, not connected to service yet}", buf, 0x12u);
    }

    v18 = *MEMORY[0x1E696A578];
    v19 = @"Not connected to any service";
    -[CLMiLoConnectionInternal _notifyClientDidCompleteClientRequest:withError:](self, "_notifyClientDidCompleteClientRequest:withError:", requestIdentifier, [MEMORY[0x1E696ABC0] errorWithDomain:@"kCLErrorDomainPrivate" code:10 userInfo:{objc_msgSend(MEMORY[0x1E695DF20], "dictionaryWithObjects:forKeys:count:", &v19, &v18, 1)}]);
  }

  v13 = *MEMORY[0x1E69E9840];
}

- (void)_startUpdatingMicroLocationWithConfiguration:(id)configuration withRequestIdentifier:(id)identifier
{
  v22 = *MEMORY[0x1E69E9840];
  if (qword_1EAFE4728 != -1)
  {
    dispatch_once(&qword_1EAFE4728, &unk_1F0E6EAB0);
  }

  v7 = qword_1EAFE4730;
  if (os_log_type_enabled(qword_1EAFE4730, OS_LOG_TYPE_DEBUG))
  {
    *buf = 68289026;
    v21[0] = 2082;
    *&v21[1] = "";
    _os_log_impl(&dword_19B873000, v7, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:SPI request, start updating MicroLocation, kCLConnectionMessageStartUpdatingMicroLocation}", buf, 0x12u);
  }

  connectedServiceIdentifier = self->_connectedServiceIdentifier;
  if (connectedServiceIdentifier)
  {
    if (self->_locationdConnection)
    {
      v16[0] = 0x1F0E73DE0;
      v16[1] = 0x1F0E73E60;
      v17[0] = connectedServiceIdentifier;
      v17[1] = identifier;
      v16[2] = 0x1F0E73F20;
      v17[2] = configuration;
      [MEMORY[0x1E695DF20] dictionaryWithObjects:v17 forKeys:v16 count:3];
      sub_19B952ED0();
    }

    if (qword_1EAFE4728 != -1)
    {
      dispatch_once(&qword_1EAFE4728, &unk_1F0E6EAB0);
    }

    v11 = qword_1EAFE4730;
    if (os_log_type_enabled(qword_1EAFE4730, OS_LOG_TYPE_ERROR))
    {
      *buf = 68289026;
      v21[0] = 2082;
      *&v21[1] = "";
      _os_log_impl(&dword_19B873000, v11, OS_LOG_TYPE_ERROR, "{msg%{public}.0s:SPI request, failed to tart updating MicroLocation with internal error}", buf, 0x12u);
      if (qword_1EAFE4728 != -1)
      {
        dispatch_once(&qword_1EAFE4728, &unk_1F0E6EAB0);
      }
    }

    v12 = qword_1EAFE4730;
    if (os_signpost_enabled(qword_1EAFE4730))
    {
      *buf = 68289026;
      v21[0] = 2082;
      *&v21[1] = "";
      _os_signpost_emit_with_name_impl(&dword_19B873000, v12, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "SPI request, failed to tart updating MicroLocation with internal error", "{msg%{public}.0s:SPI request, failed to tart updating MicroLocation with internal error}", buf, 0x12u);
    }

    v14 = *MEMORY[0x1E696A578];
    v15 = @"Internal error";
    -[CLMiLoConnectionInternal _notifyClientDidCompleteClientRequest:withError:](self, "_notifyClientDidCompleteClientRequest:withError:", identifier, [MEMORY[0x1E696ABC0] errorWithDomain:@"kCLErrorDomainPrivate" code:0 userInfo:{objc_msgSend(MEMORY[0x1E695DF20], "dictionaryWithObjects:forKeys:count:", &v15, &v14, 1)}]);
  }

  else
  {
    if (qword_1EAFE4728 != -1)
    {
      dispatch_once(&qword_1EAFE4728, &unk_1F0E6EAB0);
    }

    v9 = qword_1EAFE4730;
    if (os_log_type_enabled(qword_1EAFE4730, OS_LOG_TYPE_ERROR))
    {
      *buf = 68289026;
      v21[0] = 2082;
      *&v21[1] = "";
      _os_log_impl(&dword_19B873000, v9, OS_LOG_TYPE_ERROR, "{msg%{public}.0s:SPI request, failed to start updating MicroLocation, not connected to service yet}", buf, 0x12u);
      if (qword_1EAFE4728 != -1)
      {
        dispatch_once(&qword_1EAFE4728, &unk_1F0E6EAB0);
      }
    }

    v10 = qword_1EAFE4730;
    if (os_signpost_enabled(qword_1EAFE4730))
    {
      *buf = 68289026;
      v21[0] = 2082;
      *&v21[1] = "";
      _os_signpost_emit_with_name_impl(&dword_19B873000, v10, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "SPI request, failed to start updating MicroLocation, not connected to service yet", "{msg%{public}.0s:SPI request, failed to start updating MicroLocation, not connected to service yet}", buf, 0x12u);
    }

    v18 = *MEMORY[0x1E696A578];
    v19 = @"Not connected to any service";
    -[CLMiLoConnectionInternal _notifyClientDidCompleteClientRequest:withError:](self, "_notifyClientDidCompleteClientRequest:withError:", identifier, [MEMORY[0x1E696ABC0] errorWithDomain:@"kCLErrorDomainPrivate" code:10 userInfo:{objc_msgSend(MEMORY[0x1E695DF20], "dictionaryWithObjects:forKeys:count:", &v19, &v18, 1)}]);
  }

  v13 = *MEMORY[0x1E69E9840];
}

- (void)_stopUpdatingMicroLocationWithRequestIdentifier:(id)identifier
{
  v20 = *MEMORY[0x1E69E9840];
  if (qword_1EAFE4728 != -1)
  {
    dispatch_once(&qword_1EAFE4728, &unk_1F0E6EAB0);
  }

  v5 = qword_1EAFE4730;
  if (os_log_type_enabled(qword_1EAFE4730, OS_LOG_TYPE_DEBUG))
  {
    *buf = 68289026;
    v19[0] = 2082;
    *&v19[1] = "";
    _os_log_impl(&dword_19B873000, v5, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:SPI request, stop updating MicroLocation, kCLConnectionMessageStopUpdatingMicroLocation}", buf, 0x12u);
  }

  connectedServiceIdentifier = self->_connectedServiceIdentifier;
  if (connectedServiceIdentifier)
  {
    if (self->_locationdConnection)
    {
      v14[0] = 0x1F0E73DE0;
      v14[1] = 0x1F0E73E60;
      v15[0] = connectedServiceIdentifier;
      v15[1] = identifier;
      [MEMORY[0x1E695DF20] dictionaryWithObjects:v15 forKeys:v14 count:2];
      sub_19BA0B764();
    }

    if (qword_1EAFE4728 != -1)
    {
      dispatch_once(&qword_1EAFE4728, &unk_1F0E6EAB0);
    }

    v9 = qword_1EAFE4730;
    if (os_log_type_enabled(qword_1EAFE4730, OS_LOG_TYPE_ERROR))
    {
      *buf = 68289026;
      v19[0] = 2082;
      *&v19[1] = "";
      _os_log_impl(&dword_19B873000, v9, OS_LOG_TYPE_ERROR, "{msg%{public}.0s:SPI request, failed to stop updating MicroLocation with internal error}", buf, 0x12u);
      if (qword_1EAFE4728 != -1)
      {
        dispatch_once(&qword_1EAFE4728, &unk_1F0E6EAB0);
      }
    }

    v10 = qword_1EAFE4730;
    if (os_signpost_enabled(qword_1EAFE4730))
    {
      *buf = 68289026;
      v19[0] = 2082;
      *&v19[1] = "";
      _os_signpost_emit_with_name_impl(&dword_19B873000, v10, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "SPI request, failed to stop updating MicroLocation with internal error", "{msg%{public}.0s:SPI request, failed to stop updating MicroLocation with internal error}", buf, 0x12u);
    }

    v12 = *MEMORY[0x1E696A578];
    v13 = @"Internal error";
    -[CLMiLoConnectionInternal _notifyClientDidCompleteClientRequest:withError:](self, "_notifyClientDidCompleteClientRequest:withError:", identifier, [MEMORY[0x1E696ABC0] errorWithDomain:@"kCLErrorDomainPrivate" code:0 userInfo:{objc_msgSend(MEMORY[0x1E695DF20], "dictionaryWithObjects:forKeys:count:", &v13, &v12, 1)}]);
  }

  else
  {
    if (qword_1EAFE4728 != -1)
    {
      dispatch_once(&qword_1EAFE4728, &unk_1F0E6EAB0);
    }

    v7 = qword_1EAFE4730;
    if (os_log_type_enabled(qword_1EAFE4730, OS_LOG_TYPE_ERROR))
    {
      *buf = 68289026;
      v19[0] = 2082;
      *&v19[1] = "";
      _os_log_impl(&dword_19B873000, v7, OS_LOG_TYPE_ERROR, "{msg%{public}.0s:SPI request, failed to stop updating MicroLocation, not connected to service yet}", buf, 0x12u);
      if (qword_1EAFE4728 != -1)
      {
        dispatch_once(&qword_1EAFE4728, &unk_1F0E6EAB0);
      }
    }

    v8 = qword_1EAFE4730;
    if (os_signpost_enabled(qword_1EAFE4730))
    {
      *buf = 68289026;
      v19[0] = 2082;
      *&v19[1] = "";
      _os_signpost_emit_with_name_impl(&dword_19B873000, v8, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "SPI request, failed to stop updating MicroLocation, not connected to service yet", "{msg%{public}.0s:SPI request, failed to stop updating MicroLocation, not connected to service yet}", buf, 0x12u);
    }

    v16 = *MEMORY[0x1E696A578];
    v17 = @"Not connected to any service";
    -[CLMiLoConnectionInternal _notifyClientDidCompleteClientRequest:withError:](self, "_notifyClientDidCompleteClientRequest:withError:", identifier, [MEMORY[0x1E696ABC0] errorWithDomain:@"kCLErrorDomainPrivate" code:10 userInfo:{objc_msgSend(MEMORY[0x1E695DF20], "dictionaryWithObjects:forKeys:count:", &v17, &v16, 1)}]);
  }

  v11 = *MEMORY[0x1E69E9840];
}

- (void)_requestModelLearningWithRequestIdentifier:(id)identifier
{
  v20 = *MEMORY[0x1E69E9840];
  if (qword_1EAFE4728 != -1)
  {
    dispatch_once(&qword_1EAFE4728, &unk_1F0E6EAB0);
  }

  v5 = qword_1EAFE4730;
  if (os_log_type_enabled(qword_1EAFE4730, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 68289026;
    v19[0] = 2082;
    *&v19[1] = "";
    _os_log_impl(&dword_19B873000, v5, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:Request MiLo Learning}", buf, 0x12u);
  }

  connectedServiceIdentifier = self->_connectedServiceIdentifier;
  if (connectedServiceIdentifier)
  {
    if (self->_locationdConnection)
    {
      v14[0] = 0x1F0E73DE0;
      v14[1] = 0x1F0E73E60;
      v15[0] = connectedServiceIdentifier;
      v15[1] = identifier;
      [MEMORY[0x1E695DF20] dictionaryWithObjects:v15 forKeys:v14 count:2];
      sub_19B960254();
    }

    if (qword_1EAFE4728 != -1)
    {
      dispatch_once(&qword_1EAFE4728, &unk_1F0E6EAB0);
    }

    v9 = qword_1EAFE4730;
    if (os_log_type_enabled(qword_1EAFE4730, OS_LOG_TYPE_ERROR))
    {
      *buf = 68289026;
      v19[0] = 2082;
      *&v19[1] = "";
      _os_log_impl(&dword_19B873000, v9, OS_LOG_TYPE_ERROR, "{msg%{public}.0s:SPI request, failed to request MicroLocation learning with internal error}", buf, 0x12u);
      if (qword_1EAFE4728 != -1)
      {
        dispatch_once(&qword_1EAFE4728, &unk_1F0E6EAB0);
      }
    }

    v10 = qword_1EAFE4730;
    if (os_signpost_enabled(qword_1EAFE4730))
    {
      *buf = 68289026;
      v19[0] = 2082;
      *&v19[1] = "";
      _os_signpost_emit_with_name_impl(&dword_19B873000, v10, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "SPI request, failed to request MicroLocation learning with internal error", "{msg%{public}.0s:SPI request, failed to request MicroLocation learning with internal error}", buf, 0x12u);
    }

    v12 = *MEMORY[0x1E696A578];
    v13 = @"Internal error";
    -[CLMiLoConnectionInternal _notifyClientDidCompleteClientRequest:withError:](self, "_notifyClientDidCompleteClientRequest:withError:", identifier, [MEMORY[0x1E696ABC0] errorWithDomain:@"kCLErrorDomainPrivate" code:0 userInfo:{objc_msgSend(MEMORY[0x1E695DF20], "dictionaryWithObjects:forKeys:count:", &v13, &v12, 1)}]);
  }

  else
  {
    if (qword_1EAFE4728 != -1)
    {
      dispatch_once(&qword_1EAFE4728, &unk_1F0E6EAB0);
    }

    v7 = qword_1EAFE4730;
    if (os_log_type_enabled(qword_1EAFE4730, OS_LOG_TYPE_ERROR))
    {
      *buf = 68289026;
      v19[0] = 2082;
      *&v19[1] = "";
      _os_log_impl(&dword_19B873000, v7, OS_LOG_TYPE_ERROR, "{msg%{public}.0s:SPI request, failed to request MiLo learning, not connected to service yet}", buf, 0x12u);
      if (qword_1EAFE4728 != -1)
      {
        dispatch_once(&qword_1EAFE4728, &unk_1F0E6EAB0);
      }
    }

    v8 = qword_1EAFE4730;
    if (os_signpost_enabled(qword_1EAFE4730))
    {
      *buf = 68289026;
      v19[0] = 2082;
      *&v19[1] = "";
      _os_signpost_emit_with_name_impl(&dword_19B873000, v8, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "SPI request, failed to request MiLo learning, not connected to service yet", "{msg%{public}.0s:SPI request, failed to request MiLo learning, not connected to service yet}", buf, 0x12u);
    }

    v16 = *MEMORY[0x1E696A578];
    v17 = @"Not connected to any service";
    -[CLMiLoConnectionInternal _notifyClientDidCompleteClientRequest:withError:](self, "_notifyClientDidCompleteClientRequest:withError:", identifier, [MEMORY[0x1E696ABC0] errorWithDomain:@"kCLErrorDomainPrivate" code:10 userInfo:{objc_msgSend(MEMORY[0x1E695DF20], "dictionaryWithObjects:forKeys:count:", &v17, &v16, 1)}]);
  }

  v11 = *MEMORY[0x1E69E9840];
}

- (void)_purgeAllMiLoDataWithRequestIdentifier:(id)identifier
{
  v15 = *MEMORY[0x1E69E9840];
  if (qword_1EAFE4728 != -1)
  {
    dispatch_once(&qword_1EAFE4728, &unk_1F0E6EAB0);
  }

  v5 = qword_1EAFE4730;
  if (os_log_type_enabled(qword_1EAFE4730, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 68289026;
    v14[0] = 2082;
    *&v14[1] = "";
    _os_log_impl(&dword_19B873000, v5, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:Request Purge MiLo Data}", buf, 0x12u);
  }

  if (self->_locationdConnection)
  {
    v11 = 0x1F0E73E60;
    identifierCopy = identifier;
    [MEMORY[0x1E695DF20] dictionaryWithObjects:&identifierCopy forKeys:&v11 count:1];
    sub_19B960254();
  }

  if (qword_1EAFE4728 != -1)
  {
    dispatch_once(&qword_1EAFE4728, &unk_1F0E6EAB0);
  }

  v6 = qword_1EAFE4730;
  if (os_log_type_enabled(qword_1EAFE4730, OS_LOG_TYPE_ERROR))
  {
    *buf = 68289026;
    v14[0] = 2082;
    *&v14[1] = "";
    _os_log_impl(&dword_19B873000, v6, OS_LOG_TYPE_ERROR, "{msg%{public}.0s:SPI request, failed to request Purge MiLo Data with internal error}", buf, 0x12u);
    if (qword_1EAFE4728 != -1)
    {
      dispatch_once(&qword_1EAFE4728, &unk_1F0E6EAB0);
    }
  }

  v7 = qword_1EAFE4730;
  if (os_signpost_enabled(qword_1EAFE4730))
  {
    *buf = 68289026;
    v14[0] = 2082;
    *&v14[1] = "";
    _os_signpost_emit_with_name_impl(&dword_19B873000, v7, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "SPI request, failed to request Purge MiLo Data with internal error", "{msg%{public}.0s:SPI request, failed to request Purge MiLo Data with internal error}", buf, 0x12u);
  }

  v9 = *MEMORY[0x1E696A578];
  v10 = @"Internal error";
  -[CLMiLoConnectionInternal _notifyClientDidCompleteClientRequest:withError:](self, "_notifyClientDidCompleteClientRequest:withError:", identifier, [MEMORY[0x1E696ABC0] errorWithDomain:@"kCLErrorDomainPrivate" code:0 userInfo:{objc_msgSend(MEMORY[0x1E695DF20], "dictionaryWithObjects:forKeys:count:", &v10, &v9, 1)}]);
  v8 = *MEMORY[0x1E69E9840];
}

- (void)_requestExportDatabaseWithRequestIdentifier:(id)identifier
{
  v20 = *MEMORY[0x1E69E9840];
  if (qword_1EAFE4728 != -1)
  {
    dispatch_once(&qword_1EAFE4728, &unk_1F0E6EAB0);
  }

  v5 = qword_1EAFE4730;
  if (os_log_type_enabled(qword_1EAFE4730, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 68289026;
    v19[0] = 2082;
    *&v19[1] = "";
    _os_log_impl(&dword_19B873000, v5, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:Request Export MiLo Database}", buf, 0x12u);
  }

  connectedServiceIdentifier = self->_connectedServiceIdentifier;
  if (connectedServiceIdentifier)
  {
    if (self->_locationdConnection)
    {
      v14[0] = 0x1F0E73DE0;
      v14[1] = 0x1F0E73E60;
      v15[0] = connectedServiceIdentifier;
      v15[1] = identifier;
      [MEMORY[0x1E695DF20] dictionaryWithObjects:v15 forKeys:v14 count:2];
      sub_19BA0B83C();
    }

    if (qword_1EAFE4728 != -1)
    {
      dispatch_once(&qword_1EAFE4728, &unk_1F0E6EAB0);
    }

    v9 = qword_1EAFE4730;
    if (os_log_type_enabled(qword_1EAFE4730, OS_LOG_TYPE_ERROR))
    {
      *buf = 68289026;
      v19[0] = 2082;
      *&v19[1] = "";
      _os_log_impl(&dword_19B873000, v9, OS_LOG_TYPE_ERROR, "{msg%{public}.0s:SPI request, failed to request Export MiLo Database with internal error}", buf, 0x12u);
      if (qword_1EAFE4728 != -1)
      {
        dispatch_once(&qword_1EAFE4728, &unk_1F0E6EAB0);
      }
    }

    v10 = qword_1EAFE4730;
    if (os_signpost_enabled(qword_1EAFE4730))
    {
      *buf = 68289026;
      v19[0] = 2082;
      *&v19[1] = "";
      _os_signpost_emit_with_name_impl(&dword_19B873000, v10, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "SPI request, failed to request Export MiLo Database with internal error", "{msg%{public}.0s:SPI request, failed to request Export MiLo Database with internal error}", buf, 0x12u);
    }

    v12 = *MEMORY[0x1E696A578];
    v13 = @"Internal error";
    -[CLMiLoConnectionInternal _notifyClientDidCompleteClientRequest:withError:](self, "_notifyClientDidCompleteClientRequest:withError:", identifier, [MEMORY[0x1E696ABC0] errorWithDomain:@"kCLErrorDomainPrivate" code:0 userInfo:{objc_msgSend(MEMORY[0x1E695DF20], "dictionaryWithObjects:forKeys:count:", &v13, &v12, 1)}]);
  }

  else
  {
    if (qword_1EAFE4728 != -1)
    {
      dispatch_once(&qword_1EAFE4728, &unk_1F0E6EAB0);
    }

    v7 = qword_1EAFE4730;
    if (os_log_type_enabled(qword_1EAFE4730, OS_LOG_TYPE_ERROR))
    {
      *buf = 68289026;
      v19[0] = 2082;
      *&v19[1] = "";
      _os_log_impl(&dword_19B873000, v7, OS_LOG_TYPE_ERROR, "{msg%{public}.0s:SPI request, failed to Export MiLo Database, not connected to service yet}", buf, 0x12u);
      if (qword_1EAFE4728 != -1)
      {
        dispatch_once(&qword_1EAFE4728, &unk_1F0E6EAB0);
      }
    }

    v8 = qword_1EAFE4730;
    if (os_signpost_enabled(qword_1EAFE4730))
    {
      *buf = 68289026;
      v19[0] = 2082;
      *&v19[1] = "";
      _os_signpost_emit_with_name_impl(&dword_19B873000, v8, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "SPI request, failed to Export MiLo Database, not connected to service yet", "{msg%{public}.0s:SPI request, failed to Export MiLo Database, not connected to service yet}", buf, 0x12u);
    }

    v16 = *MEMORY[0x1E696A578];
    v17 = @"Not connected to any service";
    -[CLMiLoConnectionInternal _notifyClientDidCompleteClientRequest:withError:](self, "_notifyClientDidCompleteClientRequest:withError:", identifier, [MEMORY[0x1E696ABC0] errorWithDomain:@"kCLErrorDomainPrivate" code:10 userInfo:{objc_msgSend(MEMORY[0x1E695DF20], "dictionaryWithObjects:forKeys:count:", &v17, &v16, 1)}]);
  }

  v11 = *MEMORY[0x1E69E9840];
}

- (void)_createCustomLocationOfInterestAtCurrentLocationWithRequestIdentifier:(id)identifier
{
  v20 = *MEMORY[0x1E69E9840];
  if (qword_1EAFE4728 != -1)
  {
    dispatch_once(&qword_1EAFE4728, &unk_1F0E6EAB0);
  }

  v5 = qword_1EAFE4730;
  if (os_log_type_enabled(qword_1EAFE4730, OS_LOG_TYPE_DEBUG))
  {
    *buf = 68289026;
    v19[0] = 2082;
    *&v19[1] = "";
    _os_log_impl(&dword_19B873000, v5, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:SPI request, enable MiLo at current location, kCLConnectionMessageMiLoEnableMiLoAtCurrentLocation}", buf, 0x12u);
  }

  connectedServiceIdentifier = self->_connectedServiceIdentifier;
  if (connectedServiceIdentifier)
  {
    if (self->_locationdConnection)
    {
      v14[0] = 0x1F0E73DE0;
      v14[1] = 0x1F0E73E60;
      v15[0] = connectedServiceIdentifier;
      v15[1] = identifier;
      [MEMORY[0x1E695DF20] dictionaryWithObjects:v15 forKeys:v14 count:2];
      sub_19BA0B83C();
    }

    if (qword_1EAFE4728 != -1)
    {
      dispatch_once(&qword_1EAFE4728, &unk_1F0E6EAB0);
    }

    v9 = qword_1EAFE4730;
    if (os_log_type_enabled(qword_1EAFE4730, OS_LOG_TYPE_ERROR))
    {
      *buf = 68289026;
      v19[0] = 2082;
      *&v19[1] = "";
      _os_log_impl(&dword_19B873000, v9, OS_LOG_TYPE_ERROR, "{msg%{public}.0s:SPI request, failed to enable MiLo at current location with internal error}", buf, 0x12u);
      if (qword_1EAFE4728 != -1)
      {
        dispatch_once(&qword_1EAFE4728, &unk_1F0E6EAB0);
      }
    }

    v10 = qword_1EAFE4730;
    if (os_signpost_enabled(qword_1EAFE4730))
    {
      *buf = 68289026;
      v19[0] = 2082;
      *&v19[1] = "";
      _os_signpost_emit_with_name_impl(&dword_19B873000, v10, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "SPI request, failed to enable MiLo at current location with internal error", "{msg%{public}.0s:SPI request, failed to enable MiLo at current location with internal error}", buf, 0x12u);
    }

    v12 = *MEMORY[0x1E696A578];
    v13 = @"Internal error";
    -[CLMiLoConnectionInternal _notifyClientDidCompleteClientRequest:withError:](self, "_notifyClientDidCompleteClientRequest:withError:", identifier, [MEMORY[0x1E696ABC0] errorWithDomain:@"kCLErrorDomainPrivate" code:0 userInfo:{objc_msgSend(MEMORY[0x1E695DF20], "dictionaryWithObjects:forKeys:count:", &v13, &v12, 1)}]);
  }

  else
  {
    if (qword_1EAFE4728 != -1)
    {
      dispatch_once(&qword_1EAFE4728, &unk_1F0E6EAB0);
    }

    v7 = qword_1EAFE4730;
    if (os_log_type_enabled(qword_1EAFE4730, OS_LOG_TYPE_ERROR))
    {
      *buf = 68289026;
      v19[0] = 2082;
      *&v19[1] = "";
      _os_log_impl(&dword_19B873000, v7, OS_LOG_TYPE_ERROR, "{msg%{public}.0s:SPI request, failed to request enablingMiLo at current location, not connected to service yet}", buf, 0x12u);
      if (qword_1EAFE4728 != -1)
      {
        dispatch_once(&qword_1EAFE4728, &unk_1F0E6EAB0);
      }
    }

    v8 = qword_1EAFE4730;
    if (os_signpost_enabled(qword_1EAFE4730))
    {
      *buf = 68289026;
      v19[0] = 2082;
      *&v19[1] = "";
      _os_signpost_emit_with_name_impl(&dword_19B873000, v8, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "SPI request, failed to request enablingMiLo at current location, not connected to service yet", "{msg%{public}.0s:SPI request, failed to request enablingMiLo at current location, not connected to service yet}", buf, 0x12u);
    }

    v16 = *MEMORY[0x1E696A578];
    v17 = @"Not connected to any service";
    -[CLMiLoConnectionInternal _notifyClientDidCompleteClientRequest:withError:](self, "_notifyClientDidCompleteClientRequest:withError:", identifier, [MEMORY[0x1E696ABC0] errorWithDomain:@"kCLErrorDomainPrivate" code:10 userInfo:{objc_msgSend(MEMORY[0x1E695DF20], "dictionaryWithObjects:forKeys:count:", &v17, &v16, 1)}]);
  }

  v11 = *MEMORY[0x1E69E9840];
}

@end