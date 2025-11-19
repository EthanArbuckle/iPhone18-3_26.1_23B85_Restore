@interface ADCallObserver
- (ADCallObserver)init;
- (unint64_t)currentCallState;
- (void)_callStateChanged:(id)a3;
- (void)_handleCallStateDidChangeTo:(unint64_t)a3 isDropInCallDidChange:(BOOL)a4;
- (void)_handleOnSpeakerDidChangeTo:(BOOL)a3;
- (void)_registerForDropInCallbacks;
- (void)notifyObserver:(id)a3 didReceiveNotificationWithToken:(int)a4;
- (void)routesChangedForRouteController:(id)a3;
- (void)startObservingCallStateWithDelegate:(id)a3;
- (void)stopObservingCallStateWithCompletion:(id)a3;
@end

@implementation ADCallObserver

- (void)notifyObserver:(id)a3 didReceiveNotificationWithToken:(int)a4
{
  v5 = a3;
  if (self->_csdConnectionObserver == v5)
  {
    v6 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_DEBUG))
    {
      v7 = 136315138;
      v8 = "[ADCallObserver notifyObserver:didReceiveNotificationWithToken:]";
      _os_log_debug_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEBUG, "%s Received CSD XPC connection notification. Re-registering for drop-in calls", &v7, 0xCu);
    }

    [(ADCallObserver *)self _registerForDropInCallbacks];
  }
}

- (void)routesChangedForRouteController:(id)a3
{
  v4 = [a3 pickedRoute];
  v5 = [v4 isSpeaker];

  if (self->_onSpeaker != v5)
  {
    v6 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
    {
      v7 = 136315394;
      v8 = "[ADCallObserver routesChangedForRouteController:]";
      v9 = 1024;
      v10 = v5;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "%s onSpeaker: %d", &v7, 0x12u);
    }

    [(ADCallObserver *)self _handleOnSpeakerDidChangeTo:v5];
  }
}

- (void)_handleOnSpeakerDidChangeTo:(BOOL)a3
{
  v3 = a3;
  v5 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_DEBUG))
  {
    v9 = 136315394;
    v10 = "[ADCallObserver _handleOnSpeakerDidChangeTo:]";
    v11 = 1024;
    v12 = v3;
    _os_log_debug_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEBUG, "%s %d", &v9, 0x12u);
  }

  if (self->_onSpeaker != v3)
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    v7 = objc_opt_respondsToSelector();

    if (v7)
    {
      v8 = objc_loadWeakRetained(&self->_delegate);
      [v8 callObserver:self onSpeakerDidChange:v3];
    }

    self->_onSpeaker = v3;
  }
}

- (unint64_t)currentCallState
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  serialQueue = self->_serialQueue;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_1001080B8;
  v5[3] = &unk_10051D4A0;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(serialQueue, v5);
  v3 = v7[3];
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (void)_handleCallStateDidChangeTo:(unint64_t)a3 isDropInCallDidChange:(BOOL)a4
{
  v4 = a4;
  v7 = AFCallStateGetNames();
  v8 = [v7 componentsJoinedByString:@"|"];

  v9 = AFCallStateGetNames();
  v10 = [v9 componentsJoinedByString:@"|"];

  v11 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_DEBUG))
  {
    v27 = 136315650;
    v28 = "[ADCallObserver _handleCallStateDidChangeTo:isDropInCallDidChange:]";
    v29 = 2112;
    v30 = v8;
    v31 = 2112;
    v32 = v10;
    _os_log_debug_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEBUG, "%s #callstate _handleCallStateDidChangeTo: %@ from: %@", &v27, 0x20u);
  }

  if (self->_currentCallState != a3)
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    v13 = objc_opt_respondsToSelector();

    if (v13)
    {
      v14 = objc_loadWeakRetained(&self->_delegate);
      [v14 callObserver:self callStateDidChangeFrom:self->_currentCallState to:a3 isDropInCallDidChangeTo:v4];
    }

    self->_isDropInCall = v4;
    v15 = objc_loadWeakRetained(&self->_delegate);
    v16 = objc_opt_respondsToSelector();

    if (v16)
    {
      v17 = objc_loadWeakRetained(&self->_delegate);
      [v17 callObserver:self callStateDidChangeFrom:self->_currentCallState to:a3];
    }

    v18 = objc_loadWeakRetained(&self->_delegate);
    v19 = objc_opt_respondsToSelector();

    if (v19)
    {
      v20 = AFIsHorseman();
      v21 = 7;
      if (v20)
      {
        v21 = 3;
      }

      v22 = (v21 & a3) != 0;
      v23 = objc_loadWeakRetained(&self->_delegate);
      [v23 adCallStateChangedCallInProcess:v22];
    }

    v24 = objc_loadWeakRetained(&self->_delegate);
    v25 = objc_opt_respondsToSelector();

    if (v25)
    {
      v26 = objc_loadWeakRetained(&self->_delegate);
      [v26 adCallStateChangedCallIncoming:(a3 >> 2) & 1];
    }

    self->_currentCallState = a3;
  }
}

- (void)stopObservingCallStateWithCompletion:(id)a3
{
  v4 = a3;
  v5 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    *buf = 136315138;
    v10 = "[ADCallObserver stopObservingCallStateWithCompletion:]";
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "%s ", buf, 0xCu);
  }

  objc_storeWeak(&self->_delegate, 0);
  if (self->_isObserving)
  {
    self->_isObserving = 0;
    serialQueue = self->_serialQueue;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1001084A0;
    block[3] = &unk_10051DFE8;
    block[4] = self;
    dispatch_async(serialQueue, block);
  }

  [(AFNotifyObserver *)self->_csdConnectionObserver invalidate];
  csdConnectionObserver = self->_csdConnectionObserver;
  self->_csdConnectionObserver = 0;

  if (v4)
  {
    v4[2](v4);
  }
}

- (void)_registerForDropInCallbacks
{
  conversationProviderManager = self->_conversationProviderManager;
  if (!conversationProviderManager)
  {
    v4 = objc_alloc_init(TUConversationProviderManager);
    v5 = self->_conversationProviderManager;
    self->_conversationProviderManager = v4;

    conversationProviderManager = self->_conversationProviderManager;
  }

  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_10010865C;
  v6[3] = &unk_10051C498;
  v6[4] = self;
  [(TUConversationProviderManager *)conversationProviderManager registerForCallbacksForProvider:@"com.apple.private.alloy.dropin.communication" completionHandler:v6];
}

- (void)startObservingCallStateWithDelegate:(id)a3
{
  v4 = a3;
  v5 = AFHasCellularTelephony();
  if (AFCanProxyTelephony())
  {
    v6 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
    {
      *buf = 136315138;
      v11 = "[ADCallObserver startObservingCallStateWithDelegate:]";
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "%s Device can receive incoming calls by proxy", buf, 0xCu);
    }

    goto LABEL_5;
  }

  if (v5)
  {
LABEL_5:
    objc_storeWeak(&self->_delegate, v4);
    if (!self->_isObserving)
    {
      self->_isObserving = 1;
      serialQueue = self->_serialQueue;
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_100108938;
      block[3] = &unk_10051DFE8;
      block[4] = self;
      dispatch_async(serialQueue, block);
    }

    goto LABEL_9;
  }

  v8 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    *buf = 136315138;
    v11 = "[ADCallObserver startObservingCallStateWithDelegate:]";
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "%s Not observing call state", buf, 0xCu);
  }

LABEL_9:
}

- (void)_callStateChanged:(id)a3
{
  v5 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    v6 = v5;
    v7 = [a3 name];
    *buf = 136315394;
    v11 = "[ADCallObserver _callStateChanged:]";
    v12 = 2112;
    v13 = v7;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "%s #callstate _callStateChanged notification name=%@", buf, 0x16u);
  }

  serialQueue = self->_serialQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100108CA0;
  block[3] = &unk_10051DFE8;
  block[4] = self;
  dispatch_async(serialQueue, block);
}

- (ADCallObserver)init
{
  v11.receiver = self;
  v11.super_class = ADCallObserver;
  v2 = [(ADCallObserver *)&v11 init];
  if (v2)
  {
    v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v4 = dispatch_queue_create("Call Observer Queue", v3);

    serialQueue = v2->_serialQueue;
    v2->_serialQueue = v4;

    v2->_currentCallState = 0;
    *&v2->_onSpeaker = 0;
    v6 = [AFNotifyObserver alloc];
    v7 = [NSString stringWithUTF8String:"com.apple.telephonyutilities.callservicesdaemon.connectionrequest"];
    v8 = [v6 initWithName:v7 options:0 queue:v2->_serialQueue delegate:v2];
    csdConnectionObserver = v2->_csdConnectionObserver;
    v2->_csdConnectionObserver = v8;
  }

  return v2;
}

@end