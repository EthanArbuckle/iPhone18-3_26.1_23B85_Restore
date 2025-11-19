@interface ADAudioSessionCoordinator
- (ADAudioSessionCoordinator)initWithInstanceContext:(id)a3 delegate:(id)a4;
- (BOOL)_relinquishRemoteAssertionForSenderID:(id)a3 reason:(id)a4 effectiveDate:(id)a5 error:(id *)a6;
- (BOOL)hasActiveAudioSessionAssertions;
- (id)_acquireRemoteAssertionForSenderID:(id)a3 reason:(id)a4 effectiveDate:(id)a5 expirationDuration:(double)a6 error:(id *)a7;
- (id)_deviceWithID:(id)a3;
- (id)_disqualifiedDevices;
- (id)_qualifiedDeviceIDs;
- (id)_qualifiedDevices;
- (id)_qualifiedInRangeDeviceIDs;
- (id)_qualifiedInRangeDevices;
- (id)_qualifiedOutOfRangeDeviceIDs;
- (id)_qualifiedOutOfRangeDevices;
- (id)acquireAudioSessionAssertionWithContext:(id)a3 relinquishmentHandler:(id)a4;
- (void)_addDeviceIDToKeepAliveList:(id)a3 reason:(id)a4;
- (void)_beginAudioSessionOnInRangeRemoteDevicesForReason:(id)a3 effectiveDate:(id)a4 expirationDuration:(double)a5;
- (void)_endAudioSessionOnAllRemoteDevicesForReason:(id)a3 effectiveDate:(id)a4;
- (void)_endAudioSessionOnOutOfRangeRemoteDevicesForReason:(id)a3 effectiveDate:(id)a4;
- (void)_enumerateKeepAliveListUsingBlock:(id)a3;
- (void)_handleAcquiredLocalAssertion:(id)a3 isFirst:(BOOL)a4;
- (void)_handleAcquiredRemoteAssertion:(id)a3 isFirst:(BOOL)a4;
- (void)_handleAddedLocalAssertion:(id)a3 isFirst:(BOOL)a4;
- (void)_handleBeginAudioSessionRequest:(id)a3 fromDeviceWithID:(id)a4 responseHandler:(id)a5;
- (void)_handleDidSetAudioSessionActive:(BOOL)a3;
- (void)_handleEndAudioSessionRequest:(id)a3 fromDeviceWithID:(id)a4 responseHandler:(id)a5;
- (void)_handleFoundRemoteDevice:(id)a3;
- (void)_handleKeepAudioSessionAliveRequest:(id)a3 fromDeviceWithID:(id)a4 responseHandler:(id)a5;
- (void)_handleLostRemoteDevice:(id)a3;
- (void)_handleMessage:(id)a3 fromDeviceWithID:(id)a4 replyHandler:(id)a5;
- (void)_handleRelinquishedLocalAssertion:(id)a3 isLast:(BOOL)a4;
- (void)_handleRelinquishedRemoteAssertion:(id)a3 isLast:(BOOL)a4;
- (void)_handleRemovedLocalAssertion:(id)a3 isLast:(BOOL)a4;
- (void)_handleUpdatedCurrentOrUpNextDateIntervalForReason:(id)a3;
- (void)_handleUpdatedLocalAssertionsForReason:(id)a3 pendingAssertions:(id)a4 activeAssertions:(id)a5;
- (void)_handleUpdatedLocalDevice:(id)a3;
- (void)_handleUpdatedLocalSystemInfoForReason:(id)a3;
- (void)_handleUpdatedRemoteDevice:(id)a3;
- (void)_handleWillSetAudioSessionActive:(BOOL)a3;
- (void)_heartBeatFired;
- (void)_invalidate;
- (void)_keepAudioSessionAliveOnRemoteDevicesForReason:(id)a3 expirationDuration:(double)a4;
- (void)_registerRequestID:(id)a3 requestHandler:(id)a4;
- (void)_removeDeviceIDFromKeepAliveList:(id)a3 reason:(id)a4;
- (void)_resetKeepAliveListForReason:(id)a3;
- (void)_resetRapportLinkAndReconnectNow:(BOOL)a3;
- (void)_sendBeginAudioSessionRequest:(id)a3 toDeviceWithID:(id)a4 responseHandler:(id)a5;
- (void)_sendEndAudioSessionRequest:(id)a3 toDeviceWithID:(id)a4 responseHandler:(id)a5;
- (void)_sendKeepAudioSessionAliveRequest:(id)a3 toDeviceWithID:(id)a4 responseHandler:(id)a5;
- (void)_sendMessage:(id)a3 toDeviceWithID:(id)a4 replyHandler:(id)a5;
- (void)_sendRequestID:(id)a3 request:(id)a4 recipientID:(id)a5 responseHandler:(id)a6;
- (void)_setUpRapportLink;
- (void)_setUpRequestHandlers;
- (void)_startHeartBeatWithEffectiveDate:(id)a3;
- (void)_stopHeartBeat;
- (void)_tearDownRequestHandlers;
- (void)_updateCurrentOrUpNextDateInterval:(id)a3 reason:(id)a4;
- (void)_updateHomeKitMediaSystemIdentifier:(id)a3 reason:(id)a4;
- (void)_updateHomeKitRoomName:(id)a3 reason:(id)a4;
- (void)_updateMediaRemoteGroupIdentifier:(id)a3 reason:(id)a4;
- (void)_updateMediaRemoteRouteIdentifier:(id)a3 reason:(id)a4;
- (void)assertionCoordinator:(id)a3 didActivateAssertion:(id)a4 isFirstAssertion:(BOOL)a5;
- (void)assertionCoordinator:(id)a3 didAddAssertion:(id)a4 isFirstAssertion:(BOOL)a5;
- (void)assertionCoordinator:(id)a3 didDeactivateAssertion:(id)a4 isLastAssertion:(BOOL)a5;
- (void)assertionCoordinator:(id)a3 didRemoveAssertion:(id)a4 isLastAssertion:(BOOL)a5;
- (void)dealloc;
- (void)fetchAndUpdateMediaRemoteGroupIdentifierForReason:(id)a3;
- (void)fetchAndUpdateMediaRemoteRouteIdentifierForReason:(id)a3;
- (void)getSnapshotWithCompletion:(id)a3;
- (void)handleDidSetAudioSessionActive:(BOOL)a3;
- (void)handleWillSetAudioSessionActive:(BOOL)a3;
- (void)invalidate;
- (void)mediaRemoteDeviceInfoGroupIdentifierDidChange:(id)a3;
- (void)mediaRemoteDeviceInfoRouteIdentifierDidChange:(id)a3;
- (void)rapportLink:(id)a3 didFindDevice:(id)a4;
- (void)rapportLink:(id)a3 didLoseDevice:(id)a4;
- (void)rapportLink:(id)a3 didUpdateDevice:(id)a4 changes:(unsigned int)a5;
- (void)rapportLink:(id)a3 didUpdateLocalDevice:(id)a4;
- (void)rapportLinkDidInterrupt:(id)a3;
- (void)rapportLinkDidInvalidate:(id)a3;
- (void)relinquishLocalAssertions;
@end

@implementation ADAudioSessionCoordinator

- (void)_sendEndAudioSessionRequest:(id)a3 toDeviceWithID:(id)a4 responseHandler:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    *buf = 136315650;
    v19 = "[ADAudioSessionCoordinator(Messaging) _sendEndAudioSessionRequest:toDeviceWithID:responseHandler:]";
    v20 = 2112;
    v21 = v9;
    v22 = 2112;
    v23 = v8;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "%s deviceID = %@, request = %@", buf, 0x20u);
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v16[0] = _NSConcreteStackBlock;
    v16[1] = 3221225472;
    v16[2] = sub_10028A5C0;
    v16[3] = &unk_100518F70;
    v17 = v8;
    v12 = [ADAudioSessionCoordinationMessage newWithBuilder:v16];
    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = sub_10028A62C;
    v14[3] = &unk_100518EF8;
    v15 = v10;
    [(ADAudioSessionCoordinator *)self _sendMessage:v12 toDeviceWithID:v9 replyHandler:v14];

    v13 = v17;
LABEL_7:

    goto LABEL_8;
  }

  if (v10)
  {
    v13 = [AFError errorWithCode:1015 description:@"Unexpected request for message."];
    (*(v10 + 2))(v10, 0, v13);
    goto LABEL_7;
  }

LABEL_8:
}

- (void)_sendKeepAudioSessionAliveRequest:(id)a3 toDeviceWithID:(id)a4 responseHandler:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    *buf = 136315650;
    v19 = "[ADAudioSessionCoordinator(Messaging) _sendKeepAudioSessionAliveRequest:toDeviceWithID:responseHandler:]";
    v20 = 2112;
    v21 = v9;
    v22 = 2112;
    v23 = v8;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "%s deviceID = %@, request = %@", buf, 0x20u);
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v16[0] = _NSConcreteStackBlock;
    v16[1] = 3221225472;
    v16[2] = sub_10028A9C0;
    v16[3] = &unk_100518F70;
    v17 = v8;
    v12 = [ADAudioSessionCoordinationMessage newWithBuilder:v16];
    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = sub_10028AA2C;
    v14[3] = &unk_100518EF8;
    v15 = v10;
    [(ADAudioSessionCoordinator *)self _sendMessage:v12 toDeviceWithID:v9 replyHandler:v14];

    v13 = v17;
LABEL_7:

    goto LABEL_8;
  }

  if (v10)
  {
    v13 = [AFError errorWithCode:1015 description:@"Unexpected request for message."];
    (*(v10 + 2))(v10, 0, v13);
    goto LABEL_7;
  }

LABEL_8:
}

- (void)_sendBeginAudioSessionRequest:(id)a3 toDeviceWithID:(id)a4 responseHandler:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    *buf = 136315650;
    v19 = "[ADAudioSessionCoordinator(Messaging) _sendBeginAudioSessionRequest:toDeviceWithID:responseHandler:]";
    v20 = 2112;
    v21 = v9;
    v22 = 2112;
    v23 = v8;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "%s deviceID = %@, request = %@", buf, 0x20u);
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v16[0] = _NSConcreteStackBlock;
    v16[1] = 3221225472;
    v16[2] = sub_10028ADC0;
    v16[3] = &unk_100518F70;
    v17 = v8;
    v12 = [ADAudioSessionCoordinationMessage newWithBuilder:v16];
    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = sub_10028AE2C;
    v14[3] = &unk_100518EF8;
    v15 = v10;
    [(ADAudioSessionCoordinator *)self _sendMessage:v12 toDeviceWithID:v9 replyHandler:v14];

    v13 = v17;
LABEL_7:

    goto LABEL_8;
  }

  if (v10)
  {
    v13 = [AFError errorWithCode:1015 description:@"Unexpected request for message."];
    (*(v10 + 2))(v10, 0, v13);
    goto LABEL_7;
  }

LABEL_8:
}

- (void)_sendMessage:(id)a3 toDeviceWithID:(id)a4 replyHandler:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315650;
    *&buf[4] = "[ADAudioSessionCoordinator(Messaging) _sendMessage:toDeviceWithID:replyHandler:]";
    *&buf[12] = 2112;
    *&buf[14] = v9;
    *&buf[22] = 2112;
    v33 = v8;
    _os_log_debug_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEBUG, "%s %@ <--- %@", buf, 0x20u);
  }

  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x3032000000;
  v33 = sub_10028B320;
  v34 = sub_10028B330;
  v35 = 0;
  v12 = [AFTwoArgumentSafetyBlock alloc];
  v28[0] = _NSConcreteStackBlock;
  v28[1] = 3221225472;
  v28[2] = sub_10028B338;
  v28[3] = &unk_100519010;
  v31 = buf;
  v13 = v9;
  v29 = v13;
  v14 = v10;
  v30 = v14;
  v15 = [AFError errorWithCode:40];
  v16 = [v12 initWithBlock:v28 defaultValue1:0 defaultValue2:v15];

  v17 = [AFWatchdogTimer alloc];
  v18 = [(ADAudioSessionCoordinator *)self _queue];
  v26[0] = _NSConcreteStackBlock;
  v26[1] = 3221225472;
  v26[2] = sub_10028B4E4;
  v26[3] = &unk_10051DFE8;
  v19 = v16;
  v27 = v19;
  v20 = [v17 initWithTimeoutInterval:v18 onQueue:v26 timeoutHandler:4.0];
  v21 = *(*&buf[8] + 40);
  *(*&buf[8] + 40) = v20;

  v22 = [v8 buildDictionaryRepresentation];
  if (v22)
  {
    v24[0] = _NSConcreteStackBlock;
    v24[1] = 3221225472;
    v24[2] = sub_10028B548;
    v24[3] = &unk_100519038;
    v25 = v19;
    [(ADAudioSessionCoordinator *)self _sendRequestID:@"ASC" request:v22 recipientID:v13 responseHandler:v24];
    v23 = v25;
  }

  else
  {
    v23 = [AFError errorWithCode:30 description:@"Unable to create request dictionary from message."];
    [v19 invokeWithValue:0 andValue:v23];
  }

  _Block_object_dispose(buf, 8);
}

- (void)_handleEndAudioSessionRequest:(id)a3 fromDeviceWithID:(id)a4 responseHandler:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    *buf = 136315650;
    v20 = "[ADAudioSessionCoordinator(Messaging) _handleEndAudioSessionRequest:fromDeviceWithID:responseHandler:]";
    v21 = 2112;
    v22 = v9;
    v23 = 2112;
    v24 = v8;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "%s deviceID = %@, request = %@", buf, 0x20u);
  }

  if (v9)
  {
    v12 = [v8 effectiveDate];
    v18 = 0;
    v13 = [(ADAudioSessionCoordinator *)self _relinquishRemoteAssertionForSenderID:v9 reason:@"End Audio Session" effectiveDate:v12 error:&v18];
    v14 = v18;

    if (!v14)
    {
      v16 = AFSiriLogContextDaemon;
      if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
      {
        *buf = 136315394;
        v20 = "[ADAudioSessionCoordinator(Messaging) _handleEndAudioSessionRequest:fromDeviceWithID:responseHandler:]";
        v21 = 1024;
        LODWORD(v22) = v13;
        _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_INFO, "%s success = %d", buf, 0x12u);
      }

      if (!v10)
      {
        goto LABEL_15;
      }

      goto LABEL_14;
    }

    v15 = AFSiriLogContextSpeech;
    if (os_log_type_enabled(AFSiriLogContextSpeech, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_17;
    }
  }

  else
  {
    v14 = [AFError errorWithCode:1907 description:@"Sender ID is nil."];
    v15 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR))
    {
LABEL_17:
      *buf = 136315394;
      v20 = "[ADAudioSessionCoordinator(Messaging) _handleEndAudioSessionRequest:fromDeviceWithID:responseHandler:]";
      v21 = 2112;
      v22 = v14;
      _os_log_error_impl(&_mh_execute_header, v15, OS_LOG_TYPE_ERROR, "%s error = %@", buf, 0x16u);
      if (!v10)
      {
        goto LABEL_16;
      }

LABEL_9:
      if (v14)
      {
        v10[2](v10, 0, v14);
        goto LABEL_16;
      }

LABEL_14:
      v17 = objc_alloc_init(ADAudioSessionCoordinationMessageEndAudioSessionResponse);
      (v10)[2](v10, v17, 0);

LABEL_15:
      v14 = 0;
      goto LABEL_16;
    }
  }

  if (v10)
  {
    goto LABEL_9;
  }

LABEL_16:
}

- (void)_handleKeepAudioSessionAliveRequest:(id)a3 fromDeviceWithID:(id)a4 responseHandler:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    *buf = 136315650;
    v20 = "[ADAudioSessionCoordinator(Messaging) _handleKeepAudioSessionAliveRequest:fromDeviceWithID:responseHandler:]";
    v21 = 2112;
    v22 = v9;
    v23 = 2112;
    v24 = v8;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "%s deviceID = %@, request = %@", buf, 0x20u);
  }

  if (v9)
  {
    [v8 expirationDuration];
    v18 = 0;
    v12 = [(ADAudioSessionCoordinator *)self _acquireRemoteAssertionForSenderID:v9 reason:@"Keep Audio Session Alive" effectiveDate:0 expirationDuration:&v18 error:?];
    v13 = v18;
    if (v12)
    {
      v14 = AFSiriLogContextDaemon;
      if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
      {
        *buf = 136315394;
        v20 = "[ADAudioSessionCoordinator(Messaging) _handleKeepAudioSessionAliveRequest:fromDeviceWithID:responseHandler:]";
        v21 = 2112;
        v22 = v12;
        _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_INFO, "%s assertionUUID = %@", buf, 0x16u);
      }
    }

    else
    {
      v16 = AFSiriLogContextSpeech;
      if (os_log_type_enabled(AFSiriLogContextSpeech, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        v20 = "[ADAudioSessionCoordinator(Messaging) _handleKeepAudioSessionAliveRequest:fromDeviceWithID:responseHandler:]";
        v21 = 2112;
        v22 = v13;
        _os_log_error_impl(&_mh_execute_header, v16, OS_LOG_TYPE_ERROR, "%s error = %@", buf, 0x16u);
      }
    }
  }

  else
  {
    v13 = [AFError errorWithCode:1906 description:@"Sender ID is nil."];
    v15 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v20 = "[ADAudioSessionCoordinator(Messaging) _handleKeepAudioSessionAliveRequest:fromDeviceWithID:responseHandler:]";
      v21 = 2112;
      v22 = v13;
      _os_log_error_impl(&_mh_execute_header, v15, OS_LOG_TYPE_ERROR, "%s error = %@", buf, 0x16u);
    }
  }

  if (v10)
  {
    if (v13)
    {
      v10[2](v10, 0, v13);
    }

    else
    {
      v17 = objc_alloc_init(ADAudioSessionCoordinationMessageKeepAudioSessionAliveResponse);
      (v10)[2](v10, v17, 0);
    }
  }
}

- (void)_handleBeginAudioSessionRequest:(id)a3 fromDeviceWithID:(id)a4 responseHandler:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    *buf = 136315650;
    v21 = "[ADAudioSessionCoordinator(Messaging) _handleBeginAudioSessionRequest:fromDeviceWithID:responseHandler:]";
    v22 = 2112;
    v23 = v9;
    v24 = 2112;
    v25 = v8;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "%s deviceID = %@, request = %@", buf, 0x20u);
  }

  if (v9)
  {
    v12 = [v8 effectiveDate];
    [v8 expirationDuration];
    v19 = 0;
    v13 = [(ADAudioSessionCoordinator *)self _acquireRemoteAssertionForSenderID:v9 reason:@"Begin Audio Session" effectiveDate:v12 expirationDuration:&v19 error:?];
    v14 = v19;

    if (v13)
    {
      v15 = AFSiriLogContextDaemon;
      if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
      {
        *buf = 136315394;
        v21 = "[ADAudioSessionCoordinator(Messaging) _handleBeginAudioSessionRequest:fromDeviceWithID:responseHandler:]";
        v22 = 2112;
        v23 = v13;
        _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_INFO, "%s assertionUUID = %@", buf, 0x16u);
      }
    }

    else
    {
      v17 = AFSiriLogContextSpeech;
      if (os_log_type_enabled(AFSiriLogContextSpeech, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        v21 = "[ADAudioSessionCoordinator(Messaging) _handleBeginAudioSessionRequest:fromDeviceWithID:responseHandler:]";
        v22 = 2112;
        v23 = v14;
        _os_log_error_impl(&_mh_execute_header, v17, OS_LOG_TYPE_ERROR, "%s error = %@", buf, 0x16u);
      }
    }
  }

  else
  {
    v14 = [AFError errorWithCode:1906 description:@"Sender ID is nil."];
    v16 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v21 = "[ADAudioSessionCoordinator(Messaging) _handleBeginAudioSessionRequest:fromDeviceWithID:responseHandler:]";
      v22 = 2112;
      v23 = v14;
      _os_log_error_impl(&_mh_execute_header, v16, OS_LOG_TYPE_ERROR, "%s error = %@", buf, 0x16u);
    }
  }

  if (v10)
  {
    if (v14)
    {
      v10[2](v10, 0, v14);
    }

    else
    {
      v18 = objc_alloc_init(ADAudioSessionCoordinationMessageBeginAudioSessionResponse);
      (v10)[2](v10, v18, 0);
    }
  }
}

- (void)_handleMessage:(id)a3 fromDeviceWithID:(id)a4 replyHandler:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315650;
    v30 = "[ADAudioSessionCoordinator(Messaging) _handleMessage:fromDeviceWithID:replyHandler:]";
    v31 = 2112;
    v32 = v9;
    v33 = 2112;
    v34 = v8;
    _os_log_debug_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEBUG, "%s %@ ---> %@", buf, 0x20u);
  }

  v12 = [AFTwoArgumentSafetyBlock alloc];
  v26[0] = _NSConcreteStackBlock;
  v26[1] = 3221225472;
  v26[2] = sub_10028C31C;
  v26[3] = &unk_100518F48;
  v13 = v9;
  v27 = v13;
  v14 = v10;
  v28 = v14;
  v15 = [AFError errorWithCode:40];
  v16 = [v12 initWithBlock:v26 defaultValue1:0 defaultValue2:v15];

  v17 = [v8 type];
  if (v17 == 5)
  {
    v18 = [v8 payloadEndAudioSessionRequest];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v20[0] = _NSConcreteStackBlock;
      v20[1] = 3221225472;
      v20[2] = sub_10028C704;
      v20[3] = &unk_100518FE8;
      v21 = v16;
      [(ADAudioSessionCoordinator *)self _handleEndAudioSessionRequest:v18 fromDeviceWithID:v13 responseHandler:v20];
      v19 = v21;
      goto LABEL_14;
    }
  }

  else if (v17 == 3)
  {
    v18 = [v8 payloadKeepAudioSessionAliveRequest];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v22[0] = _NSConcreteStackBlock;
      v22[1] = 3221225472;
      v22[2] = sub_10028C5D4;
      v22[3] = &unk_100518FC0;
      v23 = v16;
      [(ADAudioSessionCoordinator *)self _handleKeepAudioSessionAliveRequest:v18 fromDeviceWithID:v13 responseHandler:v22];
      v19 = v23;
      goto LABEL_14;
    }
  }

  else
  {
    if (v17 != 1)
    {
      v18 = [AFError errorWithCode:1014 description:@"Unexpected message type."];
      [v16 invokeWithValue:0 andValue:v18];
      goto LABEL_16;
    }

    v18 = [v8 payloadBeginAudioSessionRequest];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v24[0] = _NSConcreteStackBlock;
      v24[1] = 3221225472;
      v24[2] = sub_10028C4A4;
      v24[3] = &unk_100518F98;
      v25 = v16;
      [(ADAudioSessionCoordinator *)self _handleBeginAudioSessionRequest:v18 fromDeviceWithID:v13 responseHandler:v24];
      v19 = v25;
LABEL_14:

      goto LABEL_16;
    }
  }

  if (v14)
  {
    v19 = [AFError errorWithCode:1015 description:@"Unexpected request in message."];
    (*(v14 + 2))(v14, 0, v19);
    goto LABEL_14;
  }

LABEL_16:
}

- (void)_tearDownRequestHandlers
{
  v3 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_DEBUG))
  {
    v4 = 136315138;
    v5 = "[ADAudioSessionCoordinator(Messaging) _tearDownRequestHandlers]";
    _os_log_debug_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEBUG, "%s ", &v4, 0xCu);
  }

  [(ADAudioSessionCoordinator *)self _unregisterRequestID:@"ASC"];
}

- (void)_setUpRequestHandlers
{
  v3 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_DEBUG))
  {
    LODWORD(location[0]) = 136315138;
    *(location + 4) = "[ADAudioSessionCoordinator(Messaging) _setUpRequestHandlers]";
    _os_log_debug_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEBUG, "%s ", location, 0xCu);
  }

  objc_initWeak(location, self);
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_10028CB8C;
  v4[3] = &unk_100518F20;
  objc_copyWeak(&v5, location);
  [(ADAudioSessionCoordinator *)self _registerRequestID:@"ASC" requestHandler:v4];
  objc_destroyWeak(&v5);
  objc_destroyWeak(location);
}

- (id)_qualifiedOutOfRangeDeviceIDs
{
  v3 = [NSSet alloc];
  v4 = [(ADAudioSessionCoordinator *)self _qualifiedOutOfRangeDevices];
  v5 = sub_1002DB6FC(v4);
  v6 = [v3 initWithArray:v5];

  return v6;
}

- (id)_qualifiedInRangeDeviceIDs
{
  v3 = [NSSet alloc];
  v4 = [(ADAudioSessionCoordinator *)self _qualifiedInRangeDevices];
  v5 = sub_1002DB6FC(v4);
  v6 = [v3 initWithArray:v5];

  return v6;
}

- (id)_qualifiedDeviceIDs
{
  v3 = [NSSet alloc];
  v4 = [(ADAudioSessionCoordinator *)self _qualifiedDevices];
  v5 = sub_1002DB6FC(v4);
  v6 = [v3 initWithArray:v5];

  return v6;
}

- (id)_disqualifiedDevices
{
  v3 = objc_alloc_init(NSMutableArray);
  v4 = [(ADRapportLink *)self->_rapportLink activeDevices];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_1002DBAB8;
  v9[3] = &unk_10051AD00;
  v5 = v3;
  v10 = v5;
  [v4 enumerateObjectsUsingBlock:v9];

  if (![v5 count])
  {
    v6 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136315138;
      v12 = "[ADAudioSessionCoordinator _disqualifiedDevices]";
      _os_log_debug_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEBUG, "%s No disqualified device can be found.", buf, 0xCu);
    }
  }

  v7 = [v5 copy];

  return v7;
}

- (id)_qualifiedOutOfRangeDevices
{
  v3 = objc_alloc_init(NSMutableArray);
  v4 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_DEBUG))
  {
    localSystemInfo = self->_localSystemInfo;
    v11 = v4;
    v12 = [(AFAudioSessionCoordinationSystemInfo *)localSystemInfo homeKitRoomName];
    *buf = 136315394;
    v20 = "[ADAudioSessionCoordinator _qualifiedOutOfRangeDevices]";
    v21 = 2112;
    v22 = v12;
    _os_log_debug_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEBUG, "%s roomName = %@", buf, 0x16u);
  }

  v5 = [(ADRapportLink *)self->_rapportLink activeDevices];
  v13 = _NSConcreteStackBlock;
  v14 = 3221225472;
  v15 = sub_1002DC08C;
  v16 = &unk_10051AD28;
  v17 = self;
  v6 = v3;
  v18 = v6;
  [v5 enumerateObjectsUsingBlock:&v13];

  if (![v6 count])
  {
    v7 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136315138;
      v20 = "[ADAudioSessionCoordinator _qualifiedOutOfRangeDevices]";
      _os_log_debug_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEBUG, "%s No qualified out-of-range device can be found.", buf, 0xCu);
    }
  }

  v8 = [v6 copy];

  return v8;
}

- (id)_qualifiedInRangeDevices
{
  v3 = objc_alloc_init(NSMutableArray);
  v4 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_DEBUG))
  {
    localSystemInfo = self->_localSystemInfo;
    v11 = v4;
    v12 = [(AFAudioSessionCoordinationSystemInfo *)localSystemInfo homeKitRoomName];
    *buf = 136315394;
    v20 = "[ADAudioSessionCoordinator _qualifiedInRangeDevices]";
    v21 = 2112;
    v22 = v12;
    _os_log_debug_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEBUG, "%s roomName = %@", buf, 0x16u);
  }

  v5 = [(ADRapportLink *)self->_rapportLink activeDevices];
  v13 = _NSConcreteStackBlock;
  v14 = 3221225472;
  v15 = sub_1002DC5B4;
  v16 = &unk_10051AD28;
  v17 = self;
  v6 = v3;
  v18 = v6;
  [v5 enumerateObjectsUsingBlock:&v13];

  if (![v6 count])
  {
    v7 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136315138;
      v20 = "[ADAudioSessionCoordinator _qualifiedInRangeDevices]";
      _os_log_debug_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEBUG, "%s No qualified in-range device can be found.", buf, 0xCu);
    }
  }

  v8 = [v6 copy];

  return v8;
}

- (id)_qualifiedDevices
{
  v3 = objc_alloc_init(NSMutableArray);
  v4 = [(ADRapportLink *)self->_rapportLink activeDevices];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_1002DC90C;
  v9[3] = &unk_10051AD00;
  v5 = v3;
  v10 = v5;
  [v4 enumerateObjectsUsingBlock:v9];

  if (![v5 count])
  {
    v6 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136315138;
      v12 = "[ADAudioSessionCoordinator _qualifiedDevices]";
      _os_log_debug_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEBUG, "%s No qualified device can be found.", buf, 0xCu);
    }
  }

  v7 = [v5 copy];

  return v7;
}

- (id)_deviceWithID:(id)a3
{
  v4 = a3;
  v5 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315394;
    v27 = "[ADAudioSessionCoordinator _deviceWithID:]";
    v28 = 2112;
    v29 = v4;
    _os_log_debug_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEBUG, "%s deviceID = %@", buf, 0x16u);
    if (v4)
    {
      goto LABEL_3;
    }

LABEL_16:
    v14 = 0;
    goto LABEL_17;
  }

  if (!v4)
  {
    goto LABEL_16;
  }

LABEL_3:
  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  v6 = [(ADRapportLink *)self->_rapportLink activeDevices];
  v7 = [v6 countByEnumeratingWithState:&v22 objects:v38 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v23;
LABEL_5:
    v10 = 0;
    while (1)
    {
      if (*v23 != v9)
      {
        objc_enumerationMutation(v6);
      }

      v11 = *(*(&v22 + 1) + 8 * v10);
      v12 = [v11 identifier];
      v13 = [v12 isEqualToString:v4];

      if (v13)
      {
        break;
      }

      if (v8 == ++v10)
      {
        v8 = [v6 countByEnumeratingWithState:&v22 objects:v38 count:16];
        if (v8)
        {
          goto LABEL_5;
        }

        goto LABEL_11;
      }
    }

    v15 = AFSiriLogContextDaemon;
    if (!os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
    {
LABEL_13:

      v14 = v11;
      goto LABEL_14;
    }

    v17 = [v11 model];
    v18 = [v11 name];
    v19 = [v11 roomName];
    v20 = [v11 proximity];
    if (v20 > 19)
    {
      if (v20 == 20)
      {
        v21 = "Near";
        goto LABEL_30;
      }

      if (v20 == 30)
      {
        v21 = "Far";
        goto LABEL_30;
      }
    }

    else
    {
      if (!v20)
      {
        v21 = "Unknown";
        goto LABEL_30;
      }

      if (v20 == 10)
      {
        v21 = "Immed";
LABEL_30:
        *buf = 136316418;
        v27 = "[ADAudioSessionCoordinator _deviceWithID:]";
        v28 = 2112;
        v29 = v4;
        v30 = 2112;
        v31 = v17;
        v32 = 2112;
        v33 = v18;
        v34 = 2112;
        v35 = v19;
        v36 = 2080;
        v37 = v21;
        _os_log_debug_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEBUG, "%s deviceID = %@, model = %@, name = %@, roomName = %@, proximity = %s", buf, 0x3Eu);

        goto LABEL_13;
      }
    }

    v21 = "?";
    goto LABEL_30;
  }

LABEL_11:
  v14 = 0;
LABEL_14:

LABEL_17:

  return v14;
}

- (void)_handleLostRemoteDevice:(id)a3
{
  v4 = a3;
  v5 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    v17 = 136315394;
    v18 = "[ADAudioSessionCoordinator _handleLostRemoteDevice:]";
    v19 = 2112;
    v20 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "%s device = %@", &v17, 0x16u);
  }

  if (([(AFAudioSessionCoordinationSystemInfo *)self->_localSystemInfo isSupportedAndEnabled]& 1) != 0)
  {
    v6 = [v4 identifier];
    v7 = AFSiriLogContextDaemon;
    if (!os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
LABEL_19:

      if (v6)
      {
        [(ADAudioSessionCoordinator *)self _removeDeviceIDFromKeepAliveList:v6 reason:@"Remote Device Lost"];
        [(ADAudioSessionCoordinator *)self _relinquishRemoteAssertionForSenderID:v6 reason:@"Remote Device Lost" effectiveDate:0 error:0];
      }

      else
      {
        v16 = AFSiriLogContextDaemon;
        if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR))
        {
          v17 = 136315138;
          v18 = "[ADAudioSessionCoordinator _handleLostRemoteDevice:]";
          _os_log_error_impl(&_mh_execute_header, v16, OS_LOG_TYPE_ERROR, "%s Device ID is nil.", &v17, 0xCu);
        }
      }

      goto LABEL_24;
    }

    v8 = [v4 model];
    v9 = [v4 name];
    v10 = [v4 roomName];
    v11 = [v4 mediaSystemIdentifier];
    v12 = [v4 proximity];
    if (v12 > 19)
    {
      if (v12 == 20)
      {
        v13 = "Near";
        goto LABEL_18;
      }

      if (v12 == 30)
      {
        v13 = "Far";
        goto LABEL_18;
      }
    }

    else
    {
      if (!v12)
      {
        v13 = "Unknown";
        goto LABEL_18;
      }

      if (v12 == 10)
      {
        v13 = "Immed";
LABEL_18:
        v15 = sub_1002DBCC4(v4);
        v17 = 136316930;
        v18 = "[ADAudioSessionCoordinator _handleLostRemoteDevice:]";
        v19 = 2112;
        v20 = v6;
        v21 = 2112;
        v22 = v8;
        v23 = 2112;
        v24 = v9;
        v25 = 2112;
        v26 = v10;
        v27 = 2112;
        v28 = v11;
        v29 = 2080;
        v30 = v13;
        v31 = 2112;
        v32 = v15;
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "%s deviceID = %@, model = %@, name = %@, roomName = %@, mediaSystemIdentifier = %@, proximity = %s, systemInfo = %@", &v17, 0x52u);

        goto LABEL_19;
      }
    }

    v13 = "?";
    goto LABEL_18;
  }

  if (!self->_hasLoggedAudioSessionCoordinationDisablement)
  {
    self->_hasLoggedAudioSessionCoordinationDisablement = 1;
    v14 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR))
    {
      v17 = 136315138;
      v18 = "[ADAudioSessionCoordinator _handleLostRemoteDevice:]";
      _os_log_error_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, "%s Audio Session Coordination is NOT supported or enabled. This message will be logged only once.", &v17, 0xCu);
    }
  }

LABEL_24:
}

- (void)_handleUpdatedRemoteDevice:(id)a3
{
  v4 = a3;
  v5 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v29 = "[ADAudioSessionCoordinator _handleUpdatedRemoteDevice:]";
    v30 = 2112;
    v31 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "%s device = %@", buf, 0x16u);
  }

  if (([(AFAudioSessionCoordinationSystemInfo *)self->_localSystemInfo isSupportedAndEnabled]& 1) != 0)
  {
    v6 = [v4 identifier];
    v7 = AFSiriLogContextDaemon;
    if (!os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
LABEL_19:

      if (v6)
      {
        v16 = sub_1002DBC8C(v4);
        v17 = AFSiriLogContextDaemon;
        if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
        {
          *buf = 136315394;
          v29 = "[ADAudioSessionCoordinator _handleUpdatedRemoteDevice:]";
          v30 = 1024;
          LODWORD(v31) = v16;
          _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_INFO, "%s deviceIsQualified = %d", buf, 0x12u);
        }

        if (v16)
        {
          v18 = sub_1002DC274(v4, self->_localSystemInfo);
          v19 = AFSiriLogContextDaemon;
          if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
          {
            *buf = 136315394;
            v29 = "[ADAudioSessionCoordinator _handleUpdatedRemoteDevice:]";
            v30 = 1024;
            LODWORD(v31) = v18;
            _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_INFO, "%s deviceIsInRange = %d", buf, 0x12u);
          }

          v20 = +[NSDate date];
          EffectiveDateAndExpirationDurationFromDateInterval = AFAssertionGetEffectiveDateAndExpirationDurationFromDateInterval();
          v22 = 0;

          v23 = AFSiriLogContextDaemon;
          if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
          {
            *buf = 136315394;
            v29 = "[ADAudioSessionCoordinator _handleUpdatedRemoteDevice:]";
            v30 = 1024;
            LODWORD(v31) = EffectiveDateAndExpirationDurationFromDateInterval;
            _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_INFO, "%s dateIntervalIsValid = %d", buf, 0x12u);
          }

          if ((v18 & EffectiveDateAndExpirationDurationFromDateInterval) == 1)
          {
            v24 = AFSiriLogContextDaemon;
            if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
            {
              *buf = 136315650;
              v29 = "[ADAudioSessionCoordinator _handleUpdatedRemoteDevice:]";
              v30 = 2112;
              v31 = v22;
              v32 = 2048;
              v33 = 0;
              _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_INFO, "%s effectiveDate = %@, expirationDuration = %f", buf, 0x20u);
            }

            v25 = [[ADAudioSessionCoordinationMessageBeginAudioSessionRequest alloc] initWithEffectiveDate:v22 expirationDuration:0.0];
            [(ADAudioSessionCoordinator *)self _sendBeginAudioSessionRequest:v25 toDeviceWithID:v6 responseHandler:0];

            [(ADAudioSessionCoordinator *)self _addDeviceIDToKeepAliveList:v6 reason:@"Remote Device Updated"];
          }

          else
          {
            [(ADAudioSessionCoordinator *)self _removeDeviceIDFromKeepAliveList:v6 reason:@"Remote Device Updated"];
            v27 = [[ADAudioSessionCoordinationMessageEndAudioSessionRequest alloc] initWithEffectiveDate:0];
            [(ADAudioSessionCoordinator *)self _sendEndAudioSessionRequest:v27 toDeviceWithID:v6 responseHandler:0];
          }
        }
      }

      else
      {
        v26 = AFSiriLogContextDaemon;
        if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315138;
          v29 = "[ADAudioSessionCoordinator _handleUpdatedRemoteDevice:]";
          _os_log_error_impl(&_mh_execute_header, v26, OS_LOG_TYPE_ERROR, "%s Device ID is nil.", buf, 0xCu);
        }
      }

      goto LABEL_36;
    }

    v8 = [v4 model];
    v9 = [v4 name];
    v10 = [v4 roomName];
    v11 = [v4 mediaSystemIdentifier];
    v12 = [v4 proximity];
    if (v12 > 19)
    {
      if (v12 == 20)
      {
        v13 = "Near";
        goto LABEL_18;
      }

      if (v12 == 30)
      {
        v13 = "Far";
        goto LABEL_18;
      }
    }

    else
    {
      if (!v12)
      {
        v13 = "Unknown";
        goto LABEL_18;
      }

      if (v12 == 10)
      {
        v13 = "Immed";
LABEL_18:
        v15 = sub_1002DBCC4(v4);
        *buf = 136316930;
        v29 = "[ADAudioSessionCoordinator _handleUpdatedRemoteDevice:]";
        v30 = 2112;
        v31 = v6;
        v32 = 2112;
        v33 = v8;
        v34 = 2112;
        v35 = v9;
        v36 = 2112;
        v37 = v10;
        v38 = 2112;
        v39 = v11;
        v40 = 2080;
        v41 = v13;
        v42 = 2112;
        v43 = v15;
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "%s deviceID = %@, model = %@, name = %@, roomName = %@, mediaSystemIdentifier = %@, proximity = %s, systemInfo = %@", buf, 0x52u);

        goto LABEL_19;
      }
    }

    v13 = "?";
    goto LABEL_18;
  }

  if (!self->_hasLoggedAudioSessionCoordinationDisablement)
  {
    self->_hasLoggedAudioSessionCoordinationDisablement = 1;
    v14 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315138;
      v29 = "[ADAudioSessionCoordinator _handleUpdatedRemoteDevice:]";
      _os_log_error_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, "%s Audio Session Coordination is NOT supported or enabled. This message will be logged only once.", buf, 0xCu);
    }
  }

LABEL_36:
}

- (void)_handleFoundRemoteDevice:(id)a3
{
  v4 = a3;
  v5 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v29 = "[ADAudioSessionCoordinator _handleFoundRemoteDevice:]";
    v30 = 2112;
    v31 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "%s device = %@", buf, 0x16u);
  }

  if (([(AFAudioSessionCoordinationSystemInfo *)self->_localSystemInfo isSupportedAndEnabled]& 1) != 0)
  {
    v6 = [v4 identifier];
    v7 = AFSiriLogContextDaemon;
    if (!os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
LABEL_19:

      if (v6)
      {
        v16 = sub_1002DBC8C(v4);
        v17 = AFSiriLogContextDaemon;
        if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
        {
          *buf = 136315394;
          v29 = "[ADAudioSessionCoordinator _handleFoundRemoteDevice:]";
          v30 = 1024;
          LODWORD(v31) = v16;
          _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_INFO, "%s deviceIsQualified = %d", buf, 0x12u);
        }

        if (v16)
        {
          v18 = sub_1002DC274(v4, self->_localSystemInfo);
          v19 = AFSiriLogContextDaemon;
          if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
          {
            *buf = 136315394;
            v29 = "[ADAudioSessionCoordinator _handleFoundRemoteDevice:]";
            v30 = 1024;
            LODWORD(v31) = v18;
            _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_INFO, "%s deviceIsInRange = %d", buf, 0x12u);
          }

          v20 = +[NSDate date];
          EffectiveDateAndExpirationDurationFromDateInterval = AFAssertionGetEffectiveDateAndExpirationDurationFromDateInterval();
          v22 = 0;

          v23 = AFSiriLogContextDaemon;
          if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
          {
            *buf = 136315394;
            v29 = "[ADAudioSessionCoordinator _handleFoundRemoteDevice:]";
            v30 = 1024;
            LODWORD(v31) = EffectiveDateAndExpirationDurationFromDateInterval;
            _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_INFO, "%s dateIntervalIsValid = %d", buf, 0x12u);
          }

          if ((v18 & EffectiveDateAndExpirationDurationFromDateInterval) == 1)
          {
            v24 = AFSiriLogContextDaemon;
            if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
            {
              *buf = 136315650;
              v29 = "[ADAudioSessionCoordinator _handleFoundRemoteDevice:]";
              v30 = 2112;
              v31 = v22;
              v32 = 2048;
              v33 = 0;
              _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_INFO, "%s effectiveDate = %@, expirationDuration = %f", buf, 0x20u);
            }

            v25 = [[ADAudioSessionCoordinationMessageBeginAudioSessionRequest alloc] initWithEffectiveDate:v22 expirationDuration:0.0];
            [(ADAudioSessionCoordinator *)self _sendBeginAudioSessionRequest:v25 toDeviceWithID:v6 responseHandler:0];

            [(ADAudioSessionCoordinator *)self _addDeviceIDToKeepAliveList:v6 reason:@"Remote Device Found"];
          }

          else
          {
            [(ADAudioSessionCoordinator *)self _removeDeviceIDFromKeepAliveList:v6 reason:@"Remote Device Found"];
            v27 = [[ADAudioSessionCoordinationMessageEndAudioSessionRequest alloc] initWithEffectiveDate:0];
            [(ADAudioSessionCoordinator *)self _sendEndAudioSessionRequest:v27 toDeviceWithID:v6 responseHandler:0];
          }
        }
      }

      else
      {
        v26 = AFSiriLogContextDaemon;
        if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315138;
          v29 = "[ADAudioSessionCoordinator _handleFoundRemoteDevice:]";
          _os_log_error_impl(&_mh_execute_header, v26, OS_LOG_TYPE_ERROR, "%s Device ID is nil.", buf, 0xCu);
        }
      }

      goto LABEL_36;
    }

    v8 = [v4 model];
    v9 = [v4 name];
    v10 = [v4 roomName];
    v11 = [v4 mediaSystemIdentifier];
    v12 = [v4 proximity];
    if (v12 > 19)
    {
      if (v12 == 20)
      {
        v13 = "Near";
        goto LABEL_18;
      }

      if (v12 == 30)
      {
        v13 = "Far";
        goto LABEL_18;
      }
    }

    else
    {
      if (!v12)
      {
        v13 = "Unknown";
        goto LABEL_18;
      }

      if (v12 == 10)
      {
        v13 = "Immed";
LABEL_18:
        v15 = sub_1002DBCC4(v4);
        *buf = 136316930;
        v29 = "[ADAudioSessionCoordinator _handleFoundRemoteDevice:]";
        v30 = 2112;
        v31 = v6;
        v32 = 2112;
        v33 = v8;
        v34 = 2112;
        v35 = v9;
        v36 = 2112;
        v37 = v10;
        v38 = 2112;
        v39 = v11;
        v40 = 2080;
        v41 = v13;
        v42 = 2112;
        v43 = v15;
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "%s deviceID = %@, model = %@, name = %@, roomName = %@, mediaSystemIdentifier = %@, proximity = %s, systemInfo = %@", buf, 0x52u);

        goto LABEL_19;
      }
    }

    v13 = "?";
    goto LABEL_18;
  }

  if (!self->_hasLoggedAudioSessionCoordinationDisablement)
  {
    self->_hasLoggedAudioSessionCoordinationDisablement = 1;
    v14 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315138;
      v29 = "[ADAudioSessionCoordinator _handleFoundRemoteDevice:]";
      _os_log_error_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, "%s Audio Session Coordination is NOT supported or enabled. This message will be logged only once.", buf, 0xCu);
    }
  }

LABEL_36:
}

- (void)_handleUpdatedLocalDevice:(id)a3
{
  v4 = a3;
  v5 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    v12 = 136315394;
    v13 = "[ADAudioSessionCoordinator _handleUpdatedLocalDevice:]";
    v14 = 2112;
    v15 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "%s device = %@", &v12, 0x16u);
  }

  v6 = [v4 roomName];
  v7 = [v4 mediaSystemIdentifier];
  v8 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_DEBUG))
  {
    v9 = v8;
    v10 = [v4 identifier];
    v11 = [v4 model];
    v12 = 136316162;
    v13 = "[ADAudioSessionCoordinator _handleUpdatedLocalDevice:]";
    v14 = 2112;
    v15 = v10;
    v16 = 2112;
    v17 = v11;
    v18 = 2112;
    v19 = v6;
    v20 = 2112;
    v21 = v7;
    _os_log_debug_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEBUG, "%s deviceID = %@, model = %@, roomName = %@, mediaSystemIdentifier = %@", &v12, 0x34u);
  }

  [(ADAudioSessionCoordinator *)self _updateHomeKitRoomName:v6 reason:@"Local Device Updated"];
  [(ADAudioSessionCoordinator *)self _updateHomeKitMediaSystemIdentifier:v7 reason:@"Local Device Updated"];
}

- (void)_handleRelinquishedRemoteAssertion:(id)a3 isLast:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v7 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    v19 = 136315650;
    v20 = "[ADAudioSessionCoordinator _handleRelinquishedRemoteAssertion:isLast:]";
    v21 = 2112;
    v22 = v6;
    v23 = 1024;
    LODWORD(v24) = v4;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "%s assertion = %@, isLast = %d", &v19, 0x1Cu);
    v7 = AFSiriLogContextDaemon;
  }

  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    audioSessionState = self->_audioSessionState;
    if (audioSessionState > 3)
    {
      v9 = 0;
    }

    else
    {
      v9 = off_10051AD70[audioSessionState];
    }

    v19 = 136315394;
    v20 = "[ADAudioSessionCoordinator _handleRelinquishedRemoteAssertion:isLast:]";
    v21 = 2112;
    v22 = v9;
    v10 = v7;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "%s audioSessionState = %@", &v19, 0x16u);
  }

  v11 = [(AFAssertionCoordinator *)self->_localAssertionCoordinator numberOfActiveAssertions];
  v12 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    v19 = 136315394;
    v20 = "[ADAudioSessionCoordinator _handleRelinquishedRemoteAssertion:isLast:]";
    v21 = 2048;
    v22 = v11;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_INFO, "%s numberOfActiveAssertions = %llu (local)", &v19, 0x16u);
  }

  v13 = [(AFAssertionCoordinator *)self->_remoteAssertionCoordinator numberOfActiveAssertions];
  v14 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    v19 = 136315394;
    v20 = "[ADAudioSessionCoordinator _handleRelinquishedRemoteAssertion:isLast:]";
    v21 = 2048;
    v22 = v13;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_INFO, "%s numberOfActiveAssertions = %llu (remote)", &v19, 0x16u);
  }

  if (v4 && !v11)
  {
    v15 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
    {
      v16 = v15;
      WeakRetained = objc_loadWeakRetained(&self->_delegate);
      v19 = 136315650;
      v20 = "[ADAudioSessionCoordinator _handleRelinquishedRemoteAssertion:isLast:]";
      v21 = 2112;
      v22 = WeakRetained;
      v23 = 2112;
      v24 = v6;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_INFO, "%s Asking delegate %@ to release audio session because the last remote assertion %@ is relinquished and no local assertion exists.", &v19, 0x20u);
    }

    v18 = objc_loadWeakRetained(&self->_delegate);
    [v18 audioSessionCoordinator:self releaseAudioSessionWithContext:0];
  }
}

- (void)_handleAcquiredRemoteAssertion:(id)a3 isFirst:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v7 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    *buf = 136315650;
    v26 = "[ADAudioSessionCoordinator _handleAcquiredRemoteAssertion:isFirst:]";
    v27 = 2112;
    v28 = v6;
    v29 = 1024;
    LODWORD(v30) = v4;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "%s assertion = %@, isFirst = %d", buf, 0x1Cu);
    v7 = AFSiriLogContextDaemon;
  }

  audioSessionState = self->_audioSessionState;
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    if (audioSessionState > 3)
    {
      v9 = 0;
    }

    else
    {
      v9 = off_10051AD70[audioSessionState];
    }

    *buf = 136315394;
    v26 = "[ADAudioSessionCoordinator _handleAcquiredRemoteAssertion:isFirst:]";
    v27 = 2112;
    v28 = v9;
    v10 = v7;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "%s audioSessionState = %@", buf, 0x16u);
  }

  v11 = [(AFAssertionCoordinator *)self->_localAssertionCoordinator numberOfActiveAssertions];
  v12 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v26 = "[ADAudioSessionCoordinator _handleAcquiredRemoteAssertion:isFirst:]";
    v27 = 2048;
    v28 = v11;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_INFO, "%s numberOfActiveAssertions = %llu (local)", buf, 0x16u);
  }

  v13 = [(AFAssertionCoordinator *)self->_remoteAssertionCoordinator numberOfActiveAssertions];
  v14 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v26 = "[ADAudioSessionCoordinator _handleAcquiredRemoteAssertion:isFirst:]";
    v27 = 2048;
    v28 = v13;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_INFO, "%s numberOfActiveAssertions = %llu (remote)", buf, 0x16u);
  }

  v15 = [(__CFString *)v6 context];
  v16 = [v15 userInfo];
  v17 = [v16 objectForKey:AFAudioSessionAssertionUserInfoKey[3]];
  v18 = [v17 BOOLValue];

  v19 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v26 = "[ADAudioSessionCoordinator _handleAcquiredRemoteAssertion:isFirst:]";
    v27 = 1024;
    LODWORD(v28) = v18;
    _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_INFO, "%s suppressesAudioSessionActivation = %d", buf, 0x12u);
  }

  if ((v18 & 1) == 0)
  {
    v20 = v4;
    if (v11)
    {
      v20 = 0;
    }

    if (v20 || audioSessionState != 3)
    {
      v21 = AFSiriLogContextDaemon;
      if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
      {
        v22 = v21;
        WeakRetained = objc_loadWeakRetained(&self->_delegate);
        *buf = 136315650;
        v26 = "[ADAudioSessionCoordinator _handleAcquiredRemoteAssertion:isFirst:]";
        v27 = 2112;
        v28 = WeakRetained;
        v29 = 2112;
        v30 = v6;
        _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_INFO, "%s Asking delegate %@ to prepare audio session because remote assertion %@ is acquired and audio session is not active.", buf, 0x20u);
      }

      v24 = objc_loadWeakRetained(&self->_delegate);
      [v24 audioSessionCoordinator:self prepareAudioSessionWithContext:0];
    }
  }
}

- (void)_handleUpdatedLocalAssertionsForReason:(id)a3 pendingAssertions:(id)a4 activeAssertions:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [v9 count];
  v12 = [v10 count];
  v13 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    v22 = 136315906;
    v23 = "[ADAudioSessionCoordinator _handleUpdatedLocalAssertionsForReason:pendingAssertions:activeAssertions:]";
    v24 = 2112;
    v25 = v8;
    v26 = 2048;
    v27 = v11;
    v28 = 2048;
    v29 = v12;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_INFO, "%s reason = %@, numberOfPendingAssertions = %tu, numberOfActiveAssertions = %tu", &v22, 0x2Au);
  }

  v14 = &v11[v12];
  if (v14)
  {
    v15 = [[NSMutableArray alloc] initWithCapacity:v14];
    if ([v9 count])
    {
      v16 = AFSiriLogContextDaemon;
      if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_DEBUG))
      {
        v22 = 136315394;
        v23 = "[ADAudioSessionCoordinator _handleUpdatedLocalAssertionsForReason:pendingAssertions:activeAssertions:]";
        v24 = 2112;
        v25 = v9;
        _os_log_debug_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEBUG, "%s pendingAssertions = %@", &v22, 0x16u);
      }

      [v15 addObjectsFromArray:v9];
    }

    if ([v10 count])
    {
      v17 = AFSiriLogContextDaemon;
      if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_DEBUG))
      {
        v22 = 136315394;
        v23 = "[ADAudioSessionCoordinator _handleUpdatedLocalAssertionsForReason:pendingAssertions:activeAssertions:]";
        v24 = 2112;
        v25 = v10;
        _os_log_debug_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEBUG, "%s activeAssertions = %@", &v22, 0x16u);
      }

      [v15 addObjectsFromArray:v10];
    }
  }

  else
  {
    v15 = &__NSArray0__struct;
  }

  v18 = AFAssertionGetContexts();
  v19 = +[NSDate date];
  v20 = AFAssertionGetCurrentOrUpNextDateIntervalFromContexts();

  v21 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    v22 = 136315394;
    v23 = "[ADAudioSessionCoordinator _handleUpdatedLocalAssertionsForReason:pendingAssertions:activeAssertions:]";
    v24 = 2112;
    v25 = v20;
    _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_INFO, "%s currentOrUpNextDateInterval = %@", &v22, 0x16u);
  }

  [(ADAudioSessionCoordinator *)self _updateCurrentOrUpNextDateInterval:v20 reason:v8];
}

- (void)_handleRemovedLocalAssertion:(id)a3 isLast:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v7 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    *buf = 136315650;
    v11 = "[ADAudioSessionCoordinator _handleRemovedLocalAssertion:isLast:]";
    v12 = 2112;
    v13 = v6;
    v14 = 1024;
    v15 = v4;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "%s assertion = %@, isLast = %d", buf, 0x1Cu);
  }

  localAssertionCoordinator = self->_localAssertionCoordinator;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_1002DE908;
  v9[3] = &unk_10051ACD8;
  v9[4] = self;
  [(AFAssertionCoordinator *)localAssertionCoordinator getPendingAndActiveAssertionsWithCompletion:v9];
}

- (void)_handleRelinquishedLocalAssertion:(id)a3 isLast:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v7 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    *buf = 136315650;
    v22 = "[ADAudioSessionCoordinator _handleRelinquishedLocalAssertion:isLast:]";
    v23 = 2112;
    v24 = v6;
    v25 = 1024;
    LODWORD(v26) = v4;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "%s assertion = %@, isLast = %d", buf, 0x1Cu);
    v7 = AFSiriLogContextDaemon;
  }

  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    audioSessionState = self->_audioSessionState;
    if (audioSessionState > 3)
    {
      v9 = 0;
    }

    else
    {
      v9 = off_10051AD70[audioSessionState];
    }

    *buf = 136315394;
    v22 = "[ADAudioSessionCoordinator _handleRelinquishedLocalAssertion:isLast:]";
    v23 = 2112;
    v24 = v9;
    v10 = v7;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "%s audioSessionState = %@", buf, 0x16u);
  }

  v11 = [(AFAssertionCoordinator *)self->_localAssertionCoordinator numberOfActiveAssertions];
  v12 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v22 = "[ADAudioSessionCoordinator _handleRelinquishedLocalAssertion:isLast:]";
    v23 = 2048;
    v24 = v11;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_INFO, "%s numberOfActiveAssertions = %llu (local)", buf, 0x16u);
  }

  v13 = [(AFAssertionCoordinator *)self->_remoteAssertionCoordinator numberOfActiveAssertions];
  v14 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v22 = "[ADAudioSessionCoordinator _handleRelinquishedLocalAssertion:isLast:]";
    v23 = 2048;
    v24 = v13;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_INFO, "%s numberOfActiveAssertions = %llu (remote)", buf, 0x16u);
  }

  localAssertionCoordinator = self->_localAssertionCoordinator;
  v20[0] = _NSConcreteStackBlock;
  v20[1] = 3221225472;
  v20[2] = sub_1002DEC54;
  v20[3] = &unk_10051ACD8;
  v20[4] = self;
  [(AFAssertionCoordinator *)localAssertionCoordinator getPendingAndActiveAssertionsWithCompletion:v20];
  if (v4 && !v13)
  {
    v16 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
    {
      v17 = v16;
      WeakRetained = objc_loadWeakRetained(&self->_delegate);
      *buf = 136315650;
      v22 = "[ADAudioSessionCoordinator _handleRelinquishedLocalAssertion:isLast:]";
      v23 = 2112;
      v24 = WeakRetained;
      v25 = 2112;
      v26 = v6;
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_INFO, "%s Asking delegate %@ to release audio session because the last local assertion %@ is relinquished and no remote assertion exists.", buf, 0x20u);
    }

    v19 = objc_loadWeakRetained(&self->_delegate);
    [v19 audioSessionCoordinator:self releaseAudioSessionWithContext:0];
  }
}

- (void)_handleAcquiredLocalAssertion:(id)a3 isFirst:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v7 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    *buf = 136315650;
    v28 = "[ADAudioSessionCoordinator _handleAcquiredLocalAssertion:isFirst:]";
    v29 = 2112;
    v30 = v6;
    v31 = 1024;
    LODWORD(v32) = v4;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "%s assertion = %@, isFirst = %d", buf, 0x1Cu);
    v7 = AFSiriLogContextDaemon;
  }

  audioSessionState = self->_audioSessionState;
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    if (audioSessionState > 3)
    {
      v9 = 0;
    }

    else
    {
      v9 = off_10051AD70[audioSessionState];
    }

    *buf = 136315394;
    v28 = "[ADAudioSessionCoordinator _handleAcquiredLocalAssertion:isFirst:]";
    v29 = 2112;
    v30 = v9;
    v10 = v7;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "%s audioSessionState = %@", buf, 0x16u);
  }

  v11 = [(AFAssertionCoordinator *)self->_localAssertionCoordinator numberOfActiveAssertions];
  v12 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v28 = "[ADAudioSessionCoordinator _handleAcquiredLocalAssertion:isFirst:]";
    v29 = 2048;
    v30 = v11;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_INFO, "%s numberOfActiveAssertions = %llu (local)", buf, 0x16u);
  }

  v13 = [(AFAssertionCoordinator *)self->_remoteAssertionCoordinator numberOfActiveAssertions];
  v14 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v28 = "[ADAudioSessionCoordinator _handleAcquiredLocalAssertion:isFirst:]";
    v29 = 2048;
    v30 = v13;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_INFO, "%s numberOfActiveAssertions = %llu (remote)", buf, 0x16u);
  }

  v15 = [(__CFString *)v6 context];
  v16 = [v15 userInfo];
  v17 = [v16 objectForKey:AFAudioSessionAssertionUserInfoKey[3]];
  v18 = [v17 BOOLValue];

  v19 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v28 = "[ADAudioSessionCoordinator _handleAcquiredLocalAssertion:isFirst:]";
    v29 = 1024;
    LODWORD(v30) = v18;
    _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_INFO, "%s suppressesAudioSessionActivation = %d", buf, 0x12u);
  }

  localAssertionCoordinator = self->_localAssertionCoordinator;
  v26[0] = _NSConcreteStackBlock;
  v26[1] = 3221225472;
  v26[2] = sub_1002DF060;
  v26[3] = &unk_10051ACD8;
  v26[4] = self;
  [(AFAssertionCoordinator *)localAssertionCoordinator getPendingAndActiveAssertionsWithCompletion:v26];
  if ((v18 & 1) == 0)
  {
    v21 = v4;
    if (v13)
    {
      v21 = 0;
    }

    if (v21 || audioSessionState != 3)
    {
      v22 = AFSiriLogContextDaemon;
      if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
      {
        v23 = v22;
        WeakRetained = objc_loadWeakRetained(&self->_delegate);
        *buf = 136315650;
        v28 = "[ADAudioSessionCoordinator _handleAcquiredLocalAssertion:isFirst:]";
        v29 = 2112;
        v30 = WeakRetained;
        v31 = 2112;
        v32 = v6;
        _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_INFO, "%s Asking delegate %@ to prepare audio session because remote assertion %@ is acquired and audio session is not active.", buf, 0x20u);
      }

      v25 = objc_loadWeakRetained(&self->_delegate);
      [v25 audioSessionCoordinator:self prepareAudioSessionWithContext:0];
    }
  }
}

- (void)_handleAddedLocalAssertion:(id)a3 isFirst:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v7 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    *buf = 136315650;
    v11 = "[ADAudioSessionCoordinator _handleAddedLocalAssertion:isFirst:]";
    v12 = 2112;
    v13 = v6;
    v14 = 1024;
    v15 = v4;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "%s assertion = %@, isFirst = %d", buf, 0x1Cu);
  }

  localAssertionCoordinator = self->_localAssertionCoordinator;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_1002DF1A8;
  v9[3] = &unk_10051ACD8;
  v9[4] = self;
  [(AFAssertionCoordinator *)localAssertionCoordinator getPendingAndActiveAssertionsWithCompletion:v9];
}

- (void)_heartBeatFired
{
  v3 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_DEBUG))
  {
    heartBeat = self->_heartBeat;
    *buf = 136315394;
    v14 = "[ADAudioSessionCoordinator _heartBeatFired]";
    v15 = 2112;
    v16 = heartBeat;
    _os_log_debug_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEBUG, "%s Firing %@...", buf, 0x16u);
  }

  if (([(AFAudioSessionCoordinationSystemInfo *)self->_localSystemInfo isSupportedAndEnabled]& 1) != 0)
  {
    v4 = +[NSDate date];
    EffectiveDateAndExpirationDurationFromDateInterval = AFAssertionGetEffectiveDateAndExpirationDurationFromDateInterval();
    v6 = 0;

    if (EffectiveDateAndExpirationDurationFromDateInterval)
    {
      [v6 timeIntervalSinceNow];
      v8 = v7;
      v9 = AFSiriLogContextDaemon;
      if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
      {
        *buf = 136315906;
        v14 = "[ADAudioSessionCoordinator _heartBeatFired]";
        v15 = 2112;
        v16 = v6;
        v17 = 2048;
        v18 = v8;
        v19 = 2048;
        v20 = 0;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "%s effectiveDate = %@ (%f), expirationDuration = %f", buf, 0x2Au);
        v9 = AFSiriLogContextDaemon;
      }

      v10 = os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG);
      if (v8 <= 0.0)
      {
        if (v10)
        {
          *buf = 136315138;
          v14 = "[ADAudioSessionCoordinator _heartBeatFired]";
          _os_log_debug_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEBUG, "%s Effective date is current or in the past, sending keep-alive request...", buf, 0xCu);
        }

        [(ADAudioSessionCoordinator *)self _keepAudioSessionAliveOnRemoteDevicesForReason:@"Heart Beat" expirationDuration:fmin(0.0, 8.0), 0];
      }

      else if (v10)
      {
        *buf = 136315138;
        v14 = "[ADAudioSessionCoordinator _heartBeatFired]";
        _os_log_debug_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEBUG, "%s Effective date is in the future, no need to send keep-alive request.", buf, 0xCu);
      }
    }
  }

  else if (!self->_hasLoggedAudioSessionCoordinationDisablement)
  {
    self->_hasLoggedAudioSessionCoordinationDisablement = 1;
    v11 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315138;
      v14 = "[ADAudioSessionCoordinator _heartBeatFired]";
      _os_log_error_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, "%s Audio Session Coordination is NOT supported or enabled. This message will be logged only once.", buf, 0xCu);
    }
  }
}

- (void)_stopHeartBeat
{
  heartBeat = self->_heartBeat;
  if (heartBeat)
  {
    v4 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
    {
      v6 = 136315394;
      v7 = "[ADAudioSessionCoordinator _stopHeartBeat]";
      v8 = 2112;
      v9 = heartBeat;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "%s Stopping %@...", &v6, 0x16u);
      heartBeat = self->_heartBeat;
    }

    [(AFHeartBeat *)heartBeat invalidate];
    v5 = self->_heartBeat;
    self->_heartBeat = 0;
  }
}

- (void)_startHeartBeatWithEffectiveDate:(id)a3
{
  v4 = a3;
  if (!self->_heartBeat)
  {
    v5 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
    {
      *buf = 136315138;
      v16 = "[ADAudioSessionCoordinator _startHeartBeatWithEffectiveDate:]";
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "%s ", buf, 0xCu);
    }

    objc_initWeak(&location, self);
    v6 = [AFHeartBeat alloc];
    queue = self->_queue;
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_1002DF788;
    v12[3] = &unk_10051AC70;
    objc_copyWeak(&v13, &location);
    v8 = [v6 initWithIdentifier:@"com.apple.assistant.audio-session-coordination.heart-beat" queue:queue effectiveDate:v4 expirationDuration:v12 heartBeatInterval:&stru_10051ACB0 heartBeatHandler:0.0 invalidationHandler:2.0];
    heartBeat = self->_heartBeat;
    self->_heartBeat = v8;

    v10 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
    {
      v11 = self->_heartBeat;
      *buf = 136315394;
      v16 = "[ADAudioSessionCoordinator _startHeartBeatWithEffectiveDate:]";
      v17 = 2112;
      v18 = v11;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "%s Starting %@...", buf, 0x16u);
    }

    objc_destroyWeak(&v13);
    objc_destroyWeak(&location);
  }
}

- (void)_endAudioSessionOnAllRemoteDevicesForReason:(id)a3 effectiveDate:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    *buf = 136315650;
    v29 = "[ADAudioSessionCoordinator _endAudioSessionOnAllRemoteDevicesForReason:effectiveDate:]";
    v30 = 2112;
    v31 = v7;
    v32 = 2112;
    v33 = v6;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "%s effectiveDate = %@, reason = %@", buf, 0x20u);
  }

  if (([(AFAudioSessionCoordinationSystemInfo *)self->_localSystemInfo isSupportedAndEnabled]& 1) != 0)
  {
    v9 = [(ADAudioSessionCoordinator *)self _qualifiedDeviceIDs];
    v10 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
    {
      *buf = 136315394;
      v29 = "[ADAudioSessionCoordinator _endAudioSessionOnAllRemoteDevicesForReason:effectiveDate:]";
      v30 = 2112;
      v31 = v9;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "%s qualifiedDeviceIDs = %@", buf, 0x16u);
      v10 = AFSiriLogContextDaemon;
    }

    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      keepAliveDeviceIDs = self->_keepAliveDeviceIDs;
      *buf = 136315394;
      v29 = "[ADAudioSessionCoordinator _endAudioSessionOnAllRemoteDevicesForReason:effectiveDate:]";
      v30 = 2112;
      v31 = keepAliveDeviceIDs;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "%s keepAliveDeviceIDs = %@", buf, 0x16u);
    }

    v12 = objc_alloc_init(NSMutableSet);
    if ([(NSMutableSet *)v9 count])
    {
      [(NSMutableSet *)v12 unionSet:v9];
    }

    if ([(NSMutableSet *)self->_keepAliveDeviceIDs count])
    {
      [(NSMutableSet *)v12 unionSet:self->_keepAliveDeviceIDs];
    }

    v22 = v9;
    v13 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
    {
      *buf = 136315394;
      v29 = "[ADAudioSessionCoordinator _endAudioSessionOnAllRemoteDevicesForReason:effectiveDate:]";
      v30 = 2112;
      v31 = v12;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_INFO, "%s mergedDeviceIDs = %@", buf, 0x16u);
    }

    [(ADAudioSessionCoordinator *)self _resetKeepAliveListForReason:v6];
    v25 = 0u;
    v26 = 0u;
    v23 = 0u;
    v24 = 0u;
    v14 = v12;
    v15 = [(NSMutableSet *)v14 countByEnumeratingWithState:&v23 objects:v27 count:16];
    if (v15)
    {
      v16 = v15;
      v17 = *v24;
      do
      {
        v18 = 0;
        do
        {
          if (*v24 != v17)
          {
            objc_enumerationMutation(v14);
          }

          v19 = *(*(&v23 + 1) + 8 * v18);
          v20 = [[ADAudioSessionCoordinationMessageEndAudioSessionRequest alloc] initWithEffectiveDate:v7];
          [(ADAudioSessionCoordinator *)self _sendEndAudioSessionRequest:v20 toDeviceWithID:v19 responseHandler:0];

          v18 = v18 + 1;
        }

        while (v16 != v18);
        v16 = [(NSMutableSet *)v14 countByEnumeratingWithState:&v23 objects:v27 count:16];
      }

      while (v16);
    }
  }

  else if (!self->_hasLoggedAudioSessionCoordinationDisablement)
  {
    self->_hasLoggedAudioSessionCoordinationDisablement = 1;
    v21 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315138;
      v29 = "[ADAudioSessionCoordinator _endAudioSessionOnAllRemoteDevicesForReason:effectiveDate:]";
      _os_log_error_impl(&_mh_execute_header, v21, OS_LOG_TYPE_ERROR, "%s Audio Session Coordination is NOT supported or enabled. This message will be logged only once.", buf, 0xCu);
    }
  }
}

- (void)_endAudioSessionOnOutOfRangeRemoteDevicesForReason:(id)a3 effectiveDate:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    *buf = 136315650;
    v25 = "[ADAudioSessionCoordinator _endAudioSessionOnOutOfRangeRemoteDevicesForReason:effectiveDate:]";
    v26 = 2112;
    v27 = v7;
    v28 = 2112;
    v29 = v6;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "%s effectiveDate = %@, reason = %@", buf, 0x20u);
  }

  if (([(AFAudioSessionCoordinationSystemInfo *)self->_localSystemInfo isSupportedAndEnabled]& 1) != 0)
  {
    v9 = [(ADAudioSessionCoordinator *)self _qualifiedOutOfRangeDeviceIDs];
    v10 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
    {
      *buf = 136315394;
      v25 = "[ADAudioSessionCoordinator _endAudioSessionOnOutOfRangeRemoteDevicesForReason:effectiveDate:]";
      v26 = 2112;
      v27 = v9;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "%s qualifiedOutOfRangeDeviceIDs = %@", buf, 0x16u);
    }

    v21 = 0u;
    v22 = 0u;
    v19 = 0u;
    v20 = 0u;
    v11 = v9;
    v12 = [v11 countByEnumeratingWithState:&v19 objects:v23 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v20;
      do
      {
        for (i = 0; i != v13; i = i + 1)
        {
          if (*v20 != v14)
          {
            objc_enumerationMutation(v11);
          }

          v16 = *(*(&v19 + 1) + 8 * i);
          [(ADAudioSessionCoordinator *)self _removeDeviceIDFromKeepAliveList:v16 reason:v6, v19];
          v17 = [[ADAudioSessionCoordinationMessageEndAudioSessionRequest alloc] initWithEffectiveDate:v7];
          [(ADAudioSessionCoordinator *)self _sendEndAudioSessionRequest:v17 toDeviceWithID:v16 responseHandler:0];
        }

        v13 = [v11 countByEnumeratingWithState:&v19 objects:v23 count:16];
      }

      while (v13);
    }
  }

  else if (!self->_hasLoggedAudioSessionCoordinationDisablement)
  {
    self->_hasLoggedAudioSessionCoordinationDisablement = 1;
    v18 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315138;
      v25 = "[ADAudioSessionCoordinator _endAudioSessionOnOutOfRangeRemoteDevicesForReason:effectiveDate:]";
      _os_log_error_impl(&_mh_execute_header, v18, OS_LOG_TYPE_ERROR, "%s Audio Session Coordination is NOT supported or enabled. This message will be logged only once.", buf, 0xCu);
    }
  }
}

- (void)_keepAudioSessionAliveOnRemoteDevicesForReason:(id)a3 expirationDuration:(double)a4
{
  v6 = a3;
  v7 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    *buf = 136315650;
    v13 = "[ADAudioSessionCoordinator _keepAudioSessionAliveOnRemoteDevicesForReason:expirationDuration:]";
    v14 = 2048;
    v15 = a4;
    v16 = 2112;
    v17 = v6;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "%s expirationDuration = %f, reason = %@", buf, 0x20u);
  }

  if (([(AFAudioSessionCoordinationSystemInfo *)self->_localSystemInfo isSupportedAndEnabled]& 1) != 0)
  {
    v8 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
    {
      keepAliveDeviceIDs = self->_keepAliveDeviceIDs;
      *buf = 136315394;
      v13 = "[ADAudioSessionCoordinator _keepAudioSessionAliveOnRemoteDevicesForReason:expirationDuration:]";
      v14 = 2112;
      v15 = *&keepAliveDeviceIDs;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "%s keepAliveDeviceIDs = %@", buf, 0x16u);
    }

    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_1002E0184;
    v11[3] = &unk_10051AC48;
    v11[4] = self;
    *&v11[5] = a4;
    [(ADAudioSessionCoordinator *)self _enumerateKeepAliveListUsingBlock:v11];
  }

  else if (!self->_hasLoggedAudioSessionCoordinationDisablement)
  {
    self->_hasLoggedAudioSessionCoordinationDisablement = 1;
    v10 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315138;
      v13 = "[ADAudioSessionCoordinator _keepAudioSessionAliveOnRemoteDevicesForReason:expirationDuration:]";
      _os_log_error_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "%s Audio Session Coordination is NOT supported or enabled. This message will be logged only once.", buf, 0xCu);
    }
  }
}

- (void)_beginAudioSessionOnInRangeRemoteDevicesForReason:(id)a3 effectiveDate:(id)a4 expirationDuration:(double)a5
{
  v8 = a3;
  v9 = a4;
  v10 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    *buf = 136315906;
    v28 = "[ADAudioSessionCoordinator _beginAudioSessionOnInRangeRemoteDevicesForReason:effectiveDate:expirationDuration:]";
    v29 = 2112;
    v30 = v9;
    v31 = 2048;
    v32 = a5;
    v33 = 2112;
    v34 = v8;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "%s effectiveDate = %@, expirationDuration = %f, reason = %@", buf, 0x2Au);
  }

  if (([(AFAudioSessionCoordinationSystemInfo *)self->_localSystemInfo isSupportedAndEnabled]& 1) != 0)
  {
    v11 = [(ADAudioSessionCoordinator *)self _qualifiedInRangeDeviceIDs];
    v12 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
    {
      *buf = 136315394;
      v28 = "[ADAudioSessionCoordinator _beginAudioSessionOnInRangeRemoteDevicesForReason:effectiveDate:expirationDuration:]";
      v29 = 2112;
      v30 = v11;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_INFO, "%s qualifiedInRangeDeviceIDs = %@", buf, 0x16u);
    }

    v24 = 0u;
    v25 = 0u;
    v22 = 0u;
    v23 = 0u;
    v13 = v11;
    v14 = [v13 countByEnumeratingWithState:&v22 objects:v26 count:16];
    if (v14)
    {
      v15 = v14;
      v16 = *v23;
      do
      {
        v17 = 0;
        do
        {
          if (*v23 != v16)
          {
            objc_enumerationMutation(v13);
          }

          v18 = *(*(&v22 + 1) + 8 * v17);
          v19 = [ADAudioSessionCoordinationMessageBeginAudioSessionRequest alloc];
          v20 = [(ADAudioSessionCoordinationMessageBeginAudioSessionRequest *)v19 initWithEffectiveDate:v9 expirationDuration:a5, v22];
          [(ADAudioSessionCoordinator *)self _sendBeginAudioSessionRequest:v20 toDeviceWithID:v18 responseHandler:0];

          [(ADAudioSessionCoordinator *)self _addDeviceIDToKeepAliveList:v18 reason:v8];
          v17 = v17 + 1;
        }

        while (v15 != v17);
        v15 = [v13 countByEnumeratingWithState:&v22 objects:v26 count:16];
      }

      while (v15);
    }
  }

  else if (!self->_hasLoggedAudioSessionCoordinationDisablement)
  {
    self->_hasLoggedAudioSessionCoordinationDisablement = 1;
    v21 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315138;
      v28 = "[ADAudioSessionCoordinator _beginAudioSessionOnInRangeRemoteDevicesForReason:effectiveDate:expirationDuration:]";
      _os_log_error_impl(&_mh_execute_header, v21, OS_LOG_TYPE_ERROR, "%s Audio Session Coordination is NOT supported or enabled. This message will be logged only once.", buf, 0xCu);
    }
  }
}

- (void)_handleUpdatedCurrentOrUpNextDateIntervalForReason:(id)a3
{
  v4 = a3;
  v5 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v14 = "[ADAudioSessionCoordinator _handleUpdatedCurrentOrUpNextDateIntervalForReason:]";
    v15 = 2112;
    v16 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "%s reason = %@", buf, 0x16u);
  }

  [(ADAudioSessionCoordinator *)self _stopHeartBeat];
  if (([(AFAudioSessionCoordinationSystemInfo *)self->_localSystemInfo isSupportedAndEnabled]& 1) != 0)
  {
    v6 = +[NSDate date];
    EffectiveDateAndExpirationDurationFromDateInterval = AFAssertionGetEffectiveDateAndExpirationDurationFromDateInterval();
    v8 = 0;

    if (EffectiveDateAndExpirationDurationFromDateInterval)
    {
      v9 = AFSiriLogContextDaemon;
      if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
      {
        v10 = v9;
        [v8 timeIntervalSinceNow];
        *buf = 136315906;
        v14 = "[ADAudioSessionCoordinator _handleUpdatedCurrentOrUpNextDateIntervalForReason:]";
        v15 = 2112;
        v16 = v8;
        v17 = 2048;
        v18 = v11;
        v19 = 2048;
        v20 = 0;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "%s effectiveDate = %@ (%f), expirationDuration = %f", buf, 0x2Au);
      }

      [(ADAudioSessionCoordinator *)self _beginAudioSessionOnInRangeRemoteDevicesForReason:v4 effectiveDate:v8 expirationDuration:0.0, 0];
      [(ADAudioSessionCoordinator *)self _endAudioSessionOnOutOfRangeRemoteDevicesForReason:v4 effectiveDate:0];
      [(ADAudioSessionCoordinator *)self _startHeartBeatWithEffectiveDate:v8];
    }

    else
    {
      [(ADAudioSessionCoordinator *)self _endAudioSessionOnAllRemoteDevicesForReason:v4 effectiveDate:0];
    }
  }

  else if (!self->_hasLoggedAudioSessionCoordinationDisablement)
  {
    self->_hasLoggedAudioSessionCoordinationDisablement = 1;
    v12 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315138;
      v14 = "[ADAudioSessionCoordinator _handleUpdatedCurrentOrUpNextDateIntervalForReason:]";
      _os_log_error_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "%s Audio Session Coordination is NOT supported or enabled. This message will be logged only once.", buf, 0xCu);
    }
  }
}

- (void)_handleUpdatedLocalSystemInfoForReason:(id)a3
{
  v4 = a3;
  v5 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v17 = "[ADAudioSessionCoordinator _handleUpdatedLocalSystemInfoForReason:]";
    v18 = 2112;
    v19 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "%s reason = %@", buf, 0x16u);
  }

  localSystemInfo = self->_localSystemInfo;
  if (localSystemInfo)
  {
    v7 = [(AFAudioSessionCoordinationSystemInfo *)localSystemInfo buildDictionaryRepresentation];
    v8 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
    {
      *buf = 136315394;
      v17 = "[ADAudioSessionCoordinator _handleUpdatedLocalSystemInfoForReason:]";
      v18 = 2112;
      v19 = v7;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "%s Push local system info: %@", buf, 0x16u);
    }

    [ADRapportLink updateSiriInfoWithObject:v7 forKey:@"audio-session-coordination.system-info"];
  }

  [(ADAudioSessionCoordinator *)self _stopHeartBeat];
  if (([(AFAudioSessionCoordinationSystemInfo *)self->_localSystemInfo isSupportedAndEnabled]& 1) != 0)
  {
    v9 = +[NSDate date];
    EffectiveDateAndExpirationDurationFromDateInterval = AFAssertionGetEffectiveDateAndExpirationDurationFromDateInterval();
    v11 = 0;

    if (EffectiveDateAndExpirationDurationFromDateInterval)
    {
      v12 = AFSiriLogContextDaemon;
      if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
      {
        v13 = v12;
        [v11 timeIntervalSinceNow];
        *buf = 136315906;
        v17 = "[ADAudioSessionCoordinator _handleUpdatedLocalSystemInfoForReason:]";
        v18 = 2112;
        v19 = v11;
        v20 = 2048;
        v21 = v14;
        v22 = 2048;
        v23 = 0;
        _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_INFO, "%s effectiveDate = %@ (%f), expirationDuration = %f", buf, 0x2Au);
      }

      [(ADAudioSessionCoordinator *)self _beginAudioSessionOnInRangeRemoteDevicesForReason:v4 effectiveDate:v11 expirationDuration:0.0, 0];
      [(ADAudioSessionCoordinator *)self _endAudioSessionOnOutOfRangeRemoteDevicesForReason:v4 effectiveDate:0];
      [(ADAudioSessionCoordinator *)self _startHeartBeatWithEffectiveDate:v11];
    }

    else
    {
      [(ADAudioSessionCoordinator *)self _endAudioSessionOnAllRemoteDevicesForReason:v4 effectiveDate:0];
    }
  }

  else if (!self->_hasLoggedAudioSessionCoordinationDisablement)
  {
    self->_hasLoggedAudioSessionCoordinationDisablement = 1;
    v15 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315138;
      v17 = "[ADAudioSessionCoordinator _handleUpdatedLocalSystemInfoForReason:]";
      _os_log_error_impl(&_mh_execute_header, v15, OS_LOG_TYPE_ERROR, "%s Audio Session Coordination is NOT supported or enabled. This message will be logged only once.", buf, 0xCu);
    }
  }
}

- (void)_updateCurrentOrUpNextDateInterval:(id)a3 reason:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    v14 = 136315650;
    v15 = "[ADAudioSessionCoordinator _updateCurrentOrUpNextDateInterval:reason:]";
    v16 = 2112;
    v17 = v6;
    v18 = 2112;
    v19 = v7;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "%s currentOrUpNextDateInterval = %@, reason = %@", &v14, 0x20u);
  }

  currentOrUpNextDateInterval = self->_currentOrUpNextDateInterval;
  if (currentOrUpNextDateInterval != v6 && ![(NSDateInterval *)currentOrUpNextDateInterval isEqualToDateInterval:v6])
  {
    v10 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
    {
      v11 = self->_currentOrUpNextDateInterval;
      v14 = 136315650;
      v15 = "[ADAudioSessionCoordinator _updateCurrentOrUpNextDateInterval:reason:]";
      v16 = 2112;
      v17 = v11;
      v18 = 2112;
      v19 = v6;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "%s currentOrUpNextDateInterval: %@ -> %@", &v14, 0x20u);
    }

    v12 = [(NSDateInterval *)v6 copy];
    v13 = self->_currentOrUpNextDateInterval;
    self->_currentOrUpNextDateInterval = v12;

    [(ADAudioSessionCoordinator *)self _handleUpdatedCurrentOrUpNextDateIntervalForReason:v7];
  }
}

- (void)_updateMediaRemoteRouteIdentifier:(id)a3 reason:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    *buf = 136315650;
    v18 = "[ADAudioSessionCoordinator _updateMediaRemoteRouteIdentifier:reason:]";
    v19 = 2112;
    v20 = v6;
    v21 = 2112;
    v22 = v7;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "%s mediaRemoteRouteIdentifier = %@, reason = %@", buf, 0x20u);
  }

  v9 = [(AFAudioSessionCoordinationSystemInfo *)self->_localSystemInfo mediaRemoteRouteIdentifier];
  v10 = v9;
  if (v9 != v6 && ([v9 isEqual:v6] & 1) == 0)
  {
    v11 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
    {
      *buf = 136315650;
      v18 = "[ADAudioSessionCoordinator _updateMediaRemoteRouteIdentifier:reason:]";
      v19 = 2112;
      v20 = v10;
      v21 = 2112;
      v22 = v6;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "%s mediaRemoteRouteIdentifier: %@ -> %@", buf, 0x20u);
    }

    localSystemInfo = self->_localSystemInfo;
    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_1002E0DB0;
    v15[3] = &unk_10051AC20;
    v16 = v6;
    v13 = [(AFAudioSessionCoordinationSystemInfo *)localSystemInfo mutatedCopyWithMutator:v15];
    v14 = self->_localSystemInfo;
    self->_localSystemInfo = v13;

    [(ADAudioSessionCoordinator *)self _handleUpdatedLocalSystemInfoForReason:v7];
  }
}

- (void)_updateMediaRemoteGroupIdentifier:(id)a3 reason:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    *buf = 136315650;
    v18 = "[ADAudioSessionCoordinator _updateMediaRemoteGroupIdentifier:reason:]";
    v19 = 2112;
    v20 = v6;
    v21 = 2112;
    v22 = v7;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "%s mediaRemoteGroupIdentifier = %@, reason = %@", buf, 0x20u);
  }

  v9 = [(AFAudioSessionCoordinationSystemInfo *)self->_localSystemInfo mediaRemoteGroupIdentifier];
  v10 = v9;
  if (v9 != v6 && ([v9 isEqual:v6] & 1) == 0)
  {
    v11 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
    {
      *buf = 136315650;
      v18 = "[ADAudioSessionCoordinator _updateMediaRemoteGroupIdentifier:reason:]";
      v19 = 2112;
      v20 = v10;
      v21 = 2112;
      v22 = v6;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "%s mediaRemoteGroupIdentifier: %@ -> %@", buf, 0x20u);
    }

    localSystemInfo = self->_localSystemInfo;
    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_1002E0FB8;
    v15[3] = &unk_10051AC20;
    v16 = v6;
    v13 = [(AFAudioSessionCoordinationSystemInfo *)localSystemInfo mutatedCopyWithMutator:v15];
    v14 = self->_localSystemInfo;
    self->_localSystemInfo = v13;

    [(ADAudioSessionCoordinator *)self _handleUpdatedLocalSystemInfoForReason:v7];
  }
}

- (void)_updateHomeKitMediaSystemIdentifier:(id)a3 reason:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    *buf = 136315650;
    v18 = "[ADAudioSessionCoordinator _updateHomeKitMediaSystemIdentifier:reason:]";
    v19 = 2112;
    v20 = v6;
    v21 = 2112;
    v22 = v7;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "%s mediaSystemIdentifier = %@, reason = %@", buf, 0x20u);
  }

  v9 = [(AFAudioSessionCoordinationSystemInfo *)self->_localSystemInfo homeKitMediaSystemIdentifier];
  v10 = v9;
  if (v9 != v6 && ([v9 isEqual:v6] & 1) == 0)
  {
    v11 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
    {
      *buf = 136315650;
      v18 = "[ADAudioSessionCoordinator _updateHomeKitMediaSystemIdentifier:reason:]";
      v19 = 2112;
      v20 = v10;
      v21 = 2112;
      v22 = v6;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "%s mediaSystemIdentifier: %@ -> %@", buf, 0x20u);
    }

    localSystemInfo = self->_localSystemInfo;
    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_1002E11C0;
    v15[3] = &unk_10051AC20;
    v16 = v6;
    v13 = [(AFAudioSessionCoordinationSystemInfo *)localSystemInfo mutatedCopyWithMutator:v15];
    v14 = self->_localSystemInfo;
    self->_localSystemInfo = v13;

    [(ADAudioSessionCoordinator *)self _handleUpdatedLocalSystemInfoForReason:v7];
  }
}

- (void)_updateHomeKitRoomName:(id)a3 reason:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    *buf = 136315650;
    v18 = "[ADAudioSessionCoordinator _updateHomeKitRoomName:reason:]";
    v19 = 2112;
    v20 = v6;
    v21 = 2112;
    v22 = v7;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "%s roomName = %@, reason = %@", buf, 0x20u);
  }

  v9 = [(AFAudioSessionCoordinationSystemInfo *)self->_localSystemInfo homeKitRoomName];
  v10 = v9;
  if (v9 != v6 && ([v9 isEqual:v6] & 1) == 0)
  {
    v11 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
    {
      *buf = 136315650;
      v18 = "[ADAudioSessionCoordinator _updateHomeKitRoomName:reason:]";
      v19 = 2112;
      v20 = v10;
      v21 = 2112;
      v22 = v6;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "%s roomName: %@ -> %@", buf, 0x20u);
    }

    localSystemInfo = self->_localSystemInfo;
    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_1002E13C8;
    v15[3] = &unk_10051AC20;
    v16 = v6;
    v13 = [(AFAudioSessionCoordinationSystemInfo *)localSystemInfo mutatedCopyWithMutator:v15];
    v14 = self->_localSystemInfo;
    self->_localSystemInfo = v13;

    [(ADAudioSessionCoordinator *)self _handleUpdatedLocalSystemInfoForReason:v7];
  }
}

- (void)_handleDidSetAudioSessionActive:(BOOL)a3
{
  if (a3)
  {
    v3 = 3;
  }

  else
  {
    v3 = 0;
  }

  self->_audioSessionState = v3;
  v4 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    v5 = off_10051AD70[v3];
    v7 = 136315394;
    v8 = "[ADAudioSessionCoordinator _handleDidSetAudioSessionActive:]";
    v9 = 2112;
    v10 = v5;
    v6 = v4;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "%s audioSessionState = %@", &v7, 0x16u);
  }
}

- (void)_handleWillSetAudioSessionActive:(BOOL)a3
{
  audioSessionState = self->_audioSessionState;
  if (a3)
  {
    if (audioSessionState != 3)
    {
      self->_audioSessionState = 2;
      v4 = AFSiriLogContextDaemon;
      if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
      {
        v7 = 136315394;
        v8 = "[ADAudioSessionCoordinator _handleWillSetAudioSessionActive:]";
        v9 = 2112;
        v10 = @"going active";
        v5 = v4;
LABEL_8:
        _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "%s audioSessionState = %@", &v7, 0x16u);
      }
    }
  }

  else if (audioSessionState)
  {
    self->_audioSessionState = 1;
    v6 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
    {
      v7 = 136315394;
      v8 = "[ADAudioSessionCoordinator _handleWillSetAudioSessionActive:]";
      v9 = 2112;
      v10 = @"going inactive";
      v5 = v6;
      goto LABEL_8;
    }
  }
}

- (void)_enumerateKeepAliveListUsingBlock:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    keepAliveDeviceIDs = self->_keepAliveDeviceIDs;
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_1002E169C;
    v7[3] = &unk_10051ABF8;
    v8 = v4;
    [(NSMutableSet *)keepAliveDeviceIDs enumerateObjectsUsingBlock:v7];
  }
}

- (void)_resetKeepAliveListForReason:(id)a3
{
  v4 = a3;
  v5 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    v8 = 136315394;
    v9 = "[ADAudioSessionCoordinator _resetKeepAliveListForReason:]";
    v10 = 2112;
    v11 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "%s reason = %@", &v8, 0x16u);
  }

  keepAliveDeviceIDs = self->_keepAliveDeviceIDs;
  self->_keepAliveDeviceIDs = 0;

  v7 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    v8 = 136315394;
    v9 = "[ADAudioSessionCoordinator _resetKeepAliveListForReason:]";
    v10 = 2112;
    v11 = 0;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "%s keepAliveDeviceIDs = %@", &v8, 0x16u);
  }
}

- (void)_removeDeviceIDFromKeepAliveList:(id)a3 reason:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    v11 = 136315650;
    v12 = "[ADAudioSessionCoordinator _removeDeviceIDFromKeepAliveList:reason:]";
    v13 = 2112;
    v14 = v6;
    v15 = 2112;
    v16 = v7;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "%s deviceID = %@, reason = %@", &v11, 0x20u);
  }

  if ([(NSMutableSet *)self->_keepAliveDeviceIDs containsObject:v6])
  {
    [(NSMutableSet *)self->_keepAliveDeviceIDs removeObject:v6];
    v9 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
    {
      v11 = 136315394;
      v12 = "[ADAudioSessionCoordinator _removeDeviceIDFromKeepAliveList:reason:]";
      v13 = 2112;
      v14 = v6;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "%s keepAliveDeviceIDs -= %@", &v11, 0x16u);
    }

    if (![(NSMutableSet *)self->_keepAliveDeviceIDs count])
    {
      keepAliveDeviceIDs = self->_keepAliveDeviceIDs;
      self->_keepAliveDeviceIDs = 0;
    }
  }
}

- (void)_addDeviceIDToKeepAliveList:(id)a3 reason:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    v13 = 136315650;
    v14 = "[ADAudioSessionCoordinator _addDeviceIDToKeepAliveList:reason:]";
    v15 = 2112;
    v16 = v6;
    v17 = 2112;
    v18 = v7;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "%s deviceID = %@, reason = %@", &v13, 0x20u);
  }

  if (([(NSMutableSet *)self->_keepAliveDeviceIDs containsObject:v6]& 1) == 0)
  {
    keepAliveDeviceIDs = self->_keepAliveDeviceIDs;
    if (!keepAliveDeviceIDs)
    {
      v10 = objc_alloc_init(NSMutableSet);
      v11 = self->_keepAliveDeviceIDs;
      self->_keepAliveDeviceIDs = v10;

      keepAliveDeviceIDs = self->_keepAliveDeviceIDs;
    }

    [(NSMutableSet *)keepAliveDeviceIDs addObject:v6];
    v12 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
    {
      v13 = 136315394;
      v14 = "[ADAudioSessionCoordinator _addDeviceIDToKeepAliveList:reason:]";
      v15 = 2112;
      v16 = v6;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_INFO, "%s keepAliveDeviceIDs += %@", &v13, 0x16u);
    }
  }
}

- (void)_invalidate
{
  v3 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    v8 = 136315138;
    v9 = "[ADAudioSessionCoordinator _invalidate]";
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "%s ", &v8, 0xCu);
  }

  localSystemInfo = self->_localSystemInfo;
  self->_localSystemInfo = 0;

  [(ADAudioSessionCoordinator *)self _updateCurrentOrUpNextDateInterval:0 reason:@"Invalidation"];
  [(ADAudioSessionCoordinator *)self _endAudioSessionOnAllRemoteDevicesForReason:@"Invalidation" effectiveDate:0];
  [(ADAudioSessionCoordinator *)self _resetKeepAliveListForReason:@"Invalidation"];
  [(ADAudioSessionCoordinator *)self _stopHeartBeat];
  [(ADAudioSessionCoordinator *)self _tearDownRequestHandlers];
  [(ADRapportLink *)self->_rapportLink invalidate];
  rapportLink = self->_rapportLink;
  self->_rapportLink = 0;

  [(AFAssertionCoordinator *)self->_localAssertionCoordinator invalidate];
  localAssertionCoordinator = self->_localAssertionCoordinator;
  self->_localAssertionCoordinator = 0;

  [(AFAssertionCoordinator *)self->_remoteAssertionCoordinator invalidate];
  remoteAssertionCoordinator = self->_remoteAssertionCoordinator;
  self->_remoteAssertionCoordinator = 0;
}

- (void)mediaRemoteDeviceInfoGroupIdentifierDidChange:(id)a3
{
  v4 = a3;
  v5 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v15 = "[ADAudioSessionCoordinator mediaRemoteDeviceInfoGroupIdentifierDidChange:]";
    v16 = 2112;
    v17 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "%s notification = %@", buf, 0x16u);
  }

  queue = self->_queue;
  v8 = _NSConcreteStackBlock;
  v9 = 3221225472;
  v10 = sub_1002E1D58;
  v11 = &unk_10051E010;
  v12 = v4;
  v13 = self;
  v7 = v4;
  dispatch_async(queue, &v8);
  [(ADAudioSessionCoordinator *)self fetchAndUpdateMediaRemoteGroupIdentifierForReason:@"Notification", v8, v9, v10, v11];
}

- (void)mediaRemoteDeviceInfoRouteIdentifierDidChange:(id)a3
{
  v4 = a3;
  v5 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v15 = "[ADAudioSessionCoordinator mediaRemoteDeviceInfoRouteIdentifierDidChange:]";
    v16 = 2112;
    v17 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "%s notification = %@", buf, 0x16u);
  }

  queue = self->_queue;
  v8 = _NSConcreteStackBlock;
  v9 = 3221225472;
  v10 = sub_1002E1F54;
  v11 = &unk_10051E010;
  v12 = v4;
  v13 = self;
  v7 = v4;
  dispatch_async(queue, &v8);
  [(ADAudioSessionCoordinator *)self fetchAndUpdateMediaRemoteRouteIdentifierForReason:@"Notification", v8, v9, v10, v11];
}

- (void)rapportLinkDidInvalidate:(id)a3
{
  v4 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315138;
    v8 = "[ADAudioSessionCoordinator rapportLinkDidInvalidate:]";
    _os_log_error_impl(&_mh_execute_header, v4, OS_LOG_TYPE_ERROR, "%s ", buf, 0xCu);
  }

  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1002E2110;
  block[3] = &unk_10051DFE8;
  block[4] = self;
  dispatch_async(queue, block);
}

- (void)rapportLinkDidInterrupt:(id)a3
{
  v4 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315138;
    v8 = "[ADAudioSessionCoordinator rapportLinkDidInterrupt:]";
    _os_log_error_impl(&_mh_execute_header, v4, OS_LOG_TYPE_ERROR, "%s ", buf, 0xCu);
  }

  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1002E2220;
  block[3] = &unk_10051DFE8;
  block[4] = self;
  dispatch_async(queue, block);
}

- (void)_resetRapportLinkAndReconnectNow:(BOOL)a3
{
  v3 = a3;
  [(ADRapportLink *)self->_rapportLink removeListener:self];
  [(ADAudioSessionCoordinator *)self _tearDownRequestHandlers];
  [(ADRapportLink *)self->_rapportLink invalidate];
  rapportLink = self->_rapportLink;
  self->_rapportLink = 0;

  if (v3)
  {

    [(ADAudioSessionCoordinator *)self _setUpRapportLink];
  }

  else
  {
    v6 = dispatch_time(0, 20000000000);
    queue = self->_queue;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1002E2310;
    block[3] = &unk_10051DFE8;
    block[4] = self;
    dispatch_after(v6, queue, block);
  }
}

- (void)rapportLink:(id)a3 didLoseDevice:(id)a4
{
  v5 = a4;
  v6 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v12 = "[ADAudioSessionCoordinator rapportLink:didLoseDevice:]";
    v13 = 2112;
    v14 = v5;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "%s device = %@", buf, 0x16u);
  }

  queue = self->_queue;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_1002E2458;
  v9[3] = &unk_10051E010;
  v9[4] = self;
  v10 = v5;
  v8 = v5;
  dispatch_async(queue, v9);
}

- (void)rapportLink:(id)a3 didUpdateDevice:(id)a4 changes:(unsigned int)a5
{
  v7 = a4;
  v8 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    *buf = 136315650;
    v14 = "[ADAudioSessionCoordinator rapportLink:didUpdateDevice:changes:]";
    v15 = 2112;
    v16 = v7;
    v17 = 2048;
    v18 = a5;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "%s device = %@, changes = %llu", buf, 0x20u);
  }

  queue = self->_queue;
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_1002E25AC;
  v11[3] = &unk_10051E010;
  v11[4] = self;
  v12 = v7;
  v10 = v7;
  dispatch_async(queue, v11);
}

- (void)rapportLink:(id)a3 didFindDevice:(id)a4
{
  v5 = a4;
  v6 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v12 = "[ADAudioSessionCoordinator rapportLink:didFindDevice:]";
    v13 = 2112;
    v14 = v5;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "%s device = %@", buf, 0x16u);
  }

  queue = self->_queue;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_1002E26EC;
  v9[3] = &unk_10051E010;
  v9[4] = self;
  v10 = v5;
  v8 = v5;
  dispatch_async(queue, v9);
}

- (void)rapportLink:(id)a3 didUpdateLocalDevice:(id)a4
{
  v5 = a4;
  v6 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v12 = "[ADAudioSessionCoordinator rapportLink:didUpdateLocalDevice:]";
    v13 = 2112;
    v14 = v5;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "%s localDevice = %@", buf, 0x16u);
  }

  queue = self->_queue;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_1002E282C;
  v9[3] = &unk_10051E010;
  v9[4] = self;
  v10 = v5;
  v8 = v5;
  dispatch_async(queue, v9);
}

- (void)assertionCoordinator:(id)a3 didRemoveAssertion:(id)a4 isLastAssertion:(BOOL)a5
{
  v5 = a5;
  v8 = a3;
  v9 = a4;
  v10 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    *buf = 136315906;
    v33 = "[ADAudioSessionCoordinator assertionCoordinator:didRemoveAssertion:isLastAssertion:]";
    v34 = 2112;
    v35 = v8;
    v36 = 2112;
    v37 = v9;
    v38 = 1024;
    v39 = v5;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "%s assertionCoordinator = %@, assertion = %@, isLastAssertion = %d", buf, 0x26u);
  }

  localAssertionCoordinator = self->_localAssertionCoordinator;
  if (localAssertionCoordinator == v8)
  {
    v12 = +[AFAnalytics sharedAnalytics];
    if (v5)
    {
      v17 = &__kCFBooleanTrue;
    }

    else
    {
      v17 = &__kCFBooleanFalse;
    }

    v30 = @"isLast";
    v31 = v17;
    v14 = [NSDictionary dictionaryWithObjects:&v31 forKeys:&v30 count:1];
    v15 = v12;
    v16 = 251;
  }

  else
  {
    if (self->_remoteAssertionCoordinator != v8)
    {
      goto LABEL_14;
    }

    v12 = +[AFAnalytics sharedAnalytics];
    if (v5)
    {
      v13 = &__kCFBooleanTrue;
    }

    else
    {
      v13 = &__kCFBooleanFalse;
    }

    v28 = @"isLast";
    v29 = v13;
    v14 = [NSDictionary dictionaryWithObjects:&v29 forKeys:&v28 count:1];
    v15 = v12;
    v16 = 255;
  }

  [v15 logEventWithType:v16 context:v14 contextNoCopy:1];

  localAssertionCoordinator = self->_localAssertionCoordinator;
LABEL_14:
  if (localAssertionCoordinator == v8)
  {
    [(ADAudioSessionCoordinator *)self _handleRemovedLocalAssertion:v9 isLast:v5];
    if (!v5)
    {
      goto LABEL_24;
    }
  }

  else if (!v5)
  {
    goto LABEL_24;
  }

  if (![(AFAssertionCoordinator *)self->_localAssertionCoordinator numberOfPendingAndActiveAssertions]&& ![(AFAssertionCoordinator *)self->_remoteAssertionCoordinator numberOfPendingAndActiveAssertions])
  {
    v18 = AFSupportsAudioSessionCoordination();
    if (v18 != [(AFAudioSessionCoordinationSystemInfo *)self->_localSystemInfo isSupportedAndEnabled])
    {
      localSystemInfo = self->_localSystemInfo;
      v26[0] = _NSConcreteStackBlock;
      v26[1] = 3221225472;
      v26[2] = sub_1002E2B60;
      v26[3] = &unk_10051ABD0;
      v27 = v18;
      v20 = [(AFAudioSessionCoordinationSystemInfo *)localSystemInfo mutatedCopyWithMutator:v26];
      v21 = self->_localSystemInfo;
      self->_localSystemInfo = v20;

      v22 = AFSiriLogContextDaemon;
      if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
      {
        v23 = self->_localSystemInfo;
        v24 = v22;
        v25 = [(AFAudioSessionCoordinationSystemInfo *)v23 isSupportedAndEnabled];
        *buf = 136315394;
        v33 = "[ADAudioSessionCoordinator assertionCoordinator:didRemoveAssertion:isLastAssertion:]";
        v34 = 1024;
        LODWORD(v35) = v25;
        _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_INFO, "%s isSupportedAndEnabled = %d (updated)", buf, 0x12u);
      }
    }

    self->_hasLoggedAudioSessionCoordinationDisablement = 0;
  }

LABEL_24:
}

- (void)assertionCoordinator:(id)a3 didDeactivateAssertion:(id)a4 isLastAssertion:(BOOL)a5
{
  v5 = a5;
  v8 = a3;
  v9 = a4;
  v10 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    *buf = 136315906;
    v25 = "[ADAudioSessionCoordinator assertionCoordinator:didDeactivateAssertion:isLastAssertion:]";
    v26 = 2112;
    v27 = v8;
    v28 = 2112;
    v29 = v9;
    v30 = 1024;
    v31 = v5;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "%s assertionCoordinator = %@, assertion = %@, isLastAssertion = %d", buf, 0x26u);
  }

  localAssertionCoordinator = self->_localAssertionCoordinator;
  if (localAssertionCoordinator == v8)
  {
    v12 = +[AFAnalytics sharedAnalytics];
    if (v5)
    {
      v17 = &__kCFBooleanTrue;
    }

    else
    {
      v17 = &__kCFBooleanFalse;
    }

    v22 = @"isLast";
    v23 = v17;
    v14 = [NSDictionary dictionaryWithObjects:&v23 forKeys:&v22 count:1];
    v15 = v12;
    v16 = 250;
  }

  else
  {
    if (self->_remoteAssertionCoordinator != v8)
    {
      goto LABEL_14;
    }

    v12 = +[AFAnalytics sharedAnalytics];
    if (v5)
    {
      v13 = &__kCFBooleanTrue;
    }

    else
    {
      v13 = &__kCFBooleanFalse;
    }

    v20 = @"isLast";
    v21 = v13;
    v14 = [NSDictionary dictionaryWithObjects:&v21 forKeys:&v20 count:1];
    v15 = v12;
    v16 = 254;
  }

  [v15 logEventWithType:v16 context:v14 contextNoCopy:1];

  localAssertionCoordinator = self->_localAssertionCoordinator;
LABEL_14:
  v18 = [(AFAssertionCoordinator *)localAssertionCoordinator numberOfActiveAssertions];
  if (!([(AFAssertionCoordinator *)self->_remoteAssertionCoordinator numberOfActiveAssertions]+ v18))
  {
    v19 = +[AFAnalytics sharedAnalytics];
    [v19 logEventWithType:257 context:0 contextNoCopy:0];
  }

  if (self->_localAssertionCoordinator == v8)
  {
    [(ADAudioSessionCoordinator *)self _handleRelinquishedLocalAssertion:v9 isLast:v5];
  }

  else if (self->_remoteAssertionCoordinator == v8)
  {
    [(ADAudioSessionCoordinator *)self _handleRelinquishedRemoteAssertion:v9 isLast:v5];
  }
}

- (void)assertionCoordinator:(id)a3 didActivateAssertion:(id)a4 isFirstAssertion:(BOOL)a5
{
  v5 = a5;
  v8 = a3;
  v9 = a4;
  v10 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    *buf = 136315906;
    v25 = "[ADAudioSessionCoordinator assertionCoordinator:didActivateAssertion:isFirstAssertion:]";
    v26 = 2112;
    v27 = v8;
    v28 = 2112;
    v29 = v9;
    v30 = 1024;
    v31 = v5;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "%s assertionCoordinator = %@, assertion = %@, isFirstAssertion = %d", buf, 0x26u);
  }

  localAssertionCoordinator = self->_localAssertionCoordinator;
  if (localAssertionCoordinator == v8)
  {
    v12 = +[AFAnalytics sharedAnalytics];
    if (v5)
    {
      v17 = &__kCFBooleanTrue;
    }

    else
    {
      v17 = &__kCFBooleanFalse;
    }

    v22 = @"isFirst";
    v23 = v17;
    v14 = [NSDictionary dictionaryWithObjects:&v23 forKeys:&v22 count:1];
    v15 = v12;
    v16 = 249;
  }

  else
  {
    if (self->_remoteAssertionCoordinator != v8)
    {
      goto LABEL_14;
    }

    v12 = +[AFAnalytics sharedAnalytics];
    if (v5)
    {
      v13 = &__kCFBooleanTrue;
    }

    else
    {
      v13 = &__kCFBooleanFalse;
    }

    v20 = @"isFirst";
    v21 = v13;
    v14 = [NSDictionary dictionaryWithObjects:&v21 forKeys:&v20 count:1];
    v15 = v12;
    v16 = 253;
  }

  [v15 logEventWithType:v16 context:v14 contextNoCopy:1];

  localAssertionCoordinator = self->_localAssertionCoordinator;
LABEL_14:
  v18 = [(AFAssertionCoordinator *)localAssertionCoordinator numberOfActiveAssertions];
  if (&v18[[(AFAssertionCoordinator *)self->_remoteAssertionCoordinator numberOfActiveAssertions]] == 1)
  {
    v19 = +[AFAnalytics sharedAnalytics];
    [v19 logEventWithType:256 context:0 contextNoCopy:0];
  }

  if (self->_localAssertionCoordinator == v8)
  {
    [(ADAudioSessionCoordinator *)self _handleAcquiredLocalAssertion:v9 isFirst:v5];
  }

  else if (self->_remoteAssertionCoordinator == v8)
  {
    [(ADAudioSessionCoordinator *)self _handleAcquiredRemoteAssertion:v9 isFirst:v5];
  }
}

- (void)assertionCoordinator:(id)a3 didAddAssertion:(id)a4 isFirstAssertion:(BOOL)a5
{
  v5 = a5;
  v8 = a3;
  v9 = a4;
  v10 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    *buf = 136315906;
    v23 = "[ADAudioSessionCoordinator assertionCoordinator:didAddAssertion:isFirstAssertion:]";
    v24 = 2112;
    v25 = v8;
    v26 = 2112;
    v27 = v9;
    v28 = 1024;
    v29 = v5;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "%s assertionCoordinator = %@, assertion = %@, isFirstAssertion = %d", buf, 0x26u);
  }

  localAssertionCoordinator = self->_localAssertionCoordinator;
  if (localAssertionCoordinator == v8)
  {
    v12 = +[AFAnalytics sharedAnalytics];
    if (v5)
    {
      v17 = &__kCFBooleanTrue;
    }

    else
    {
      v17 = &__kCFBooleanFalse;
    }

    v20 = @"isFirst";
    v21 = v17;
    v14 = [NSDictionary dictionaryWithObjects:&v21 forKeys:&v20 count:1];
    v15 = v12;
    v16 = 248;
  }

  else
  {
    if (self->_remoteAssertionCoordinator != v8)
    {
      goto LABEL_14;
    }

    v12 = +[AFAnalytics sharedAnalytics];
    if (v5)
    {
      v13 = &__kCFBooleanTrue;
    }

    else
    {
      v13 = &__kCFBooleanFalse;
    }

    v18 = @"isFirst";
    v19 = v13;
    v14 = [NSDictionary dictionaryWithObjects:&v19 forKeys:&v18 count:1];
    v15 = v12;
    v16 = 252;
  }

  [v15 logEventWithType:v16 context:v14 contextNoCopy:1];

  localAssertionCoordinator = self->_localAssertionCoordinator;
LABEL_14:
  if (localAssertionCoordinator == v8)
  {
    [(ADAudioSessionCoordinator *)self _handleAddedLocalAssertion:v9 isFirst:v5];
  }
}

- (void)invalidate
{
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1002E32C4;
  block[3] = &unk_10051DFE8;
  block[4] = self;
  dispatch_async(queue, block);
}

- (void)fetchAndUpdateMediaRemoteGroupIdentifierForReason:(id)a3
{
  v4 = a3;
  v5 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v13 = "[ADAudioSessionCoordinator fetchAndUpdateMediaRemoteGroupIdentifierForReason:]";
    v14 = 2112;
    v15 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "%s reason = %@", buf, 0x16u);
  }

  v6 = mach_absolute_time();
  v7 = +[AFMediaRemoteDeviceInfo currentDevice];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_1002E3420;
  v9[3] = &unk_10051ABB0;
  v10 = v4;
  v11 = v6;
  v9[4] = self;
  v8 = v4;
  [v7 getGroupIdentifierWithCompletion:v9];
}

- (void)fetchAndUpdateMediaRemoteRouteIdentifierForReason:(id)a3
{
  v4 = a3;
  v5 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v13 = "[ADAudioSessionCoordinator fetchAndUpdateMediaRemoteRouteIdentifierForReason:]";
    v14 = 2112;
    v15 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "%s reason = %@", buf, 0x16u);
  }

  v6 = mach_absolute_time();
  v7 = +[AFMediaRemoteDeviceInfo currentDevice];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_1002E36F4;
  v9[3] = &unk_10051ABB0;
  v10 = v4;
  v11 = v6;
  v9[4] = self;
  v8 = v4;
  [v7 getRouteIdentifierWithCompletion:v9];
}

- (BOOL)_relinquishRemoteAssertionForSenderID:(id)a3 reason:(id)a4 effectiveDate:(id)a5 error:(id *)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    v14 = v13;
    [v12 timeIntervalSinceNow];
    *buf = 136316162;
    *&buf[4] = "[ADAudioSessionCoordinator _relinquishRemoteAssertionForSenderID:reason:effectiveDate:error:]";
    *&buf[12] = 2112;
    *&buf[14] = v10;
    *&buf[22] = 2112;
    v39 = v11;
    *v40 = 2112;
    *&v40[2] = v12;
    *&v40[10] = 2048;
    *&v40[12] = v15;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_INFO, "%s senderID = %@, reason = %@, effectiveDate = %@ (%f seconds)", buf, 0x34u);
  }

  if (([(AFAudioSessionCoordinationSystemInfo *)self->_localSystemInfo isSupportedAndEnabled]& 1) == 0)
  {
    if (!self->_hasLoggedAudioSessionCoordinationDisablement && (self->_hasLoggedAudioSessionCoordinationDisablement = 1, v26 = AFSiriLogContextDaemon, os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR)))
    {
      *buf = 136315138;
      *&buf[4] = "[ADAudioSessionCoordinator _relinquishRemoteAssertionForSenderID:reason:effectiveDate:error:]";
      _os_log_error_impl(&_mh_execute_header, v26, OS_LOG_TYPE_ERROR, "%s Audio Session Coordination is NOT supported or enabled. This message will be logged only once.", buf, 0xCu);
      if (!a6)
      {
        goto LABEL_19;
      }
    }

    else if (!a6)
    {
      goto LABEL_19;
    }

    v27 = [AFError errorWithCode:1901];
LABEL_15:
    v28 = 0;
    *a6 = v27;
    goto LABEL_20;
  }

  if (!v10)
  {
    if (a6)
    {
      v27 = [AFError errorWithCode:1907 description:@"Sender ID is nil."];
      goto LABEL_15;
    }

LABEL_19:
    v28 = 0;
    goto LABEL_20;
  }

  v16 = mach_absolute_time();
  v33[0] = _NSConcreteStackBlock;
  v33[1] = 3221225472;
  v33[2] = sub_1002E3CD8;
  v33[3] = &unk_10051D650;
  v33[4] = self;
  v17 = v10;
  v34 = v17;
  v37 = v16;
  v18 = v12;
  v35 = v18;
  v36 = v11;
  v19 = objc_retainBlock(v33);
  [v18 timeIntervalSinceNow];
  v21 = v20;
  if (v20 <= 0.0)
  {
    (v19[2])(v19);
  }

  else
  {
    v22 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
    {
      *buf = 136315650;
      *&buf[4] = "[ADAudioSessionCoordinator _relinquishRemoteAssertionForSenderID:reason:effectiveDate:error:]";
      *&buf[12] = 2112;
      *&buf[14] = v17;
      *&buf[22] = 2048;
      v39 = *&v21;
      _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_INFO, "%s Remote assertions from %@ will be relinquished in %f seconds.", buf, 0x20u);
    }

    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x3032000000;
    v39 = sub_1002E3E1C;
    *v40 = sub_1002E3E2C;
    *&v40[8] = dispatch_source_create(&_dispatch_source_type_timer, 0, 0, self->_queue);
    v23 = *(*&buf[8] + 40);
    v24 = AFDispatchTimeGetFromDateAndOffset();
    dispatch_source_set_timer(v23, v24, 0xFFFFFFFFFFFFFFFFLL, 0);
    v25 = *(*&buf[8] + 40);
    handler[0] = _NSConcreteStackBlock;
    handler[1] = 3221225472;
    handler[2] = sub_1002E3E34;
    handler[3] = &unk_10051C8E0;
    v31 = v19;
    v32 = buf;
    dispatch_source_set_event_handler(v25, handler);
    dispatch_resume(*(*&buf[8] + 40));

    _Block_object_dispose(buf, 8);
  }

  v28 = 1;
LABEL_20:

  return v28;
}

- (id)_acquireRemoteAssertionForSenderID:(id)a3 reason:(id)a4 effectiveDate:(id)a5 expirationDuration:(double)a6 error:(id *)a7
{
  v12 = a3;
  v53 = a4;
  v13 = a5;
  if (a7)
  {
    *a7 = 0;
  }

  v14 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    v15 = v14;
    [v13 timeIntervalSinceNow];
    *buf = 136316418;
    *&buf[4] = "[ADAudioSessionCoordinator _acquireRemoteAssertionForSenderID:reason:effectiveDate:expirationDuration:error:]";
    *&buf[12] = 2112;
    *&buf[14] = v12;
    *&buf[22] = 2112;
    v81 = v53;
    *v82 = 2112;
    *&v82[2] = v13;
    *&v82[10] = 2048;
    *&v82[12] = v16;
    v83 = 2048;
    v84 = a6;
    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_INFO, "%s senderID = %@, reason = %@, effectiveDate = %@ (%f seconds), expirationDuration = %f", buf, 0x3Eu);
  }

  if (([(AFAudioSessionCoordinationSystemInfo *)self->_localSystemInfo isSupportedAndEnabled]& 1) == 0)
  {
    if (!self->_hasLoggedAudioSessionCoordinationDisablement && (self->_hasLoggedAudioSessionCoordinationDisablement = 1, v27 = AFSiriLogContextDaemon, os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR)))
    {
      *buf = 136315138;
      *&buf[4] = "[ADAudioSessionCoordinator _acquireRemoteAssertionForSenderID:reason:effectiveDate:expirationDuration:error:]";
      _os_log_error_impl(&_mh_execute_header, v27, OS_LOG_TYPE_ERROR, "%s Audio Session Coordination is NOT supported or enabled. This message will be logged only once.", buf, 0xCu);
      if (!a7)
      {
        goto LABEL_43;
      }
    }

    else if (!a7)
    {
      goto LABEL_43;
    }

    v28 = [AFError errorWithCode:1901];
LABEL_24:
    v29 = 0;
    *a7 = v28;
    goto LABEL_44;
  }

  if (!v12)
  {
    if (a7)
    {
      v28 = [AFError errorWithCode:1906 description:@"Sender ID is nil."];
      goto LABEL_24;
    }

LABEL_43:
    v29 = 0;
    goto LABEL_44;
  }

  v52 = mach_absolute_time();
  if (AFIsInternalInstall())
  {
    v73 = 0u;
    v74 = 0u;
    v71 = 0u;
    v72 = 0u;
    v17 = [(ADRapportLink *)self->_rapportLink activeDevices];
    v18 = [v17 countByEnumeratingWithState:&v71 objects:v79 count:16];
    if (v18)
    {
      v19 = *v72;
      while (2)
      {
        for (i = 0; i != v18; i = i + 1)
        {
          if (*v72 != v19)
          {
            objc_enumerationMutation(v17);
          }

          v21 = *(*(&v71 + 1) + 8 * i);
          v22 = [v21 identifier];
          v23 = [v22 isEqual:v12];

          if ((v23 & 1) == 0)
          {
            v24 = [v21 effectiveIdentifier];
            v25 = [v24 isEqual:v12];

            if ((v25 & 1) == 0)
            {
              continue;
            }
          }

          v26 = [v21 name];
          goto LABEL_28;
        }

        v18 = [v17 countByEnumeratingWithState:&v71 objects:v79 count:16];
        v26 = 0;
        if (v18)
        {
          continue;
        }

        break;
      }
    }

    else
    {
      v26 = 0;
    }

LABEL_28:
  }

  else
  {
    v26 = 0;
  }

  if (v13)
  {
    v30 = +[NSDate date];
    [v13 timeIntervalSinceDate:v30];
    v32 = v31;
    if (v31 <= 0.0 || v31 >= 0.02)
    {
      v33 = v13;
    }

    else
    {
      v33 = v30;

      if (a6 > 0.0)
      {
        a6 = v32 + a6;
      }

      v34 = AFSiriLogContextDaemon;
      if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
      {
        v35 = v34;
        [v33 timeIntervalSinceNow];
        *buf = 136315906;
        *&buf[4] = "[ADAudioSessionCoordinator _acquireRemoteAssertionForSenderID:reason:effectiveDate:expirationDuration:error:]";
        *&buf[12] = 2112;
        *&buf[14] = v33;
        *&buf[22] = 2048;
        v81 = v36;
        *v82 = 2048;
        *&v82[2] = a6;
        _os_log_impl(&_mh_execute_header, v35, OS_LOG_TYPE_INFO, "%s effectiveDate = %@ (%f), expirationDuration = %f (Time Drift Mitigation)", buf, 0x2Au);
      }
    }
  }

  else
  {
    v33 = 0;
  }

  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x3032000000;
  v81 = sub_1002E3E1C;
  *v82 = sub_1002E3E2C;
  *&v82[8] = 0;
  remoteAssertionCoordinator = self->_remoteAssertionCoordinator;
  v64[0] = _NSConcreteStackBlock;
  v64[1] = 3221225472;
  v64[2] = sub_1002E4888;
  v64[3] = &unk_10051AAC0;
  v69 = v52;
  v38 = v53;
  v65 = v38;
  v39 = v33;
  v66 = v39;
  v70 = a6;
  v40 = v26;
  v67 = v40;
  v41 = v12;
  v68 = v41;
  v42 = [AFAssertionContext newWithBuilder:v64];
  v63[0] = _NSConcreteStackBlock;
  v63[1] = 3221225472;
  v63[2] = sub_1002E49BC;
  v63[3] = &unk_10051AAE8;
  v63[4] = buf;
  v43 = [(AFAssertionCoordinator *)remoteAssertionCoordinator acquireRelinquishableAssertionWithContext:v42 relinquishmentHandler:v63];
  v44 = *(*&buf[8] + 40);
  *(*&buf[8] + 40) = v43;

  v45 = [*(*&buf[8] + 40) uuid];
  v46 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    v47 = *(*&buf[8] + 40);
    *v75 = 136315394;
    v76 = "[ADAudioSessionCoordinator _acquireRemoteAssertionForSenderID:reason:effectiveDate:expirationDuration:error:]";
    v77 = 2112;
    v78 = v47;
    _os_log_impl(&_mh_execute_header, v46, OS_LOG_TYPE_INFO, "%s Acquired remote assertion %@.", v75, 0x16u);
  }

  _Block_object_dispose(buf, 8);

  v48 = self->_remoteAssertionCoordinator;
  v60[0] = _NSConcreteStackBlock;
  v60[1] = 3221225472;
  v60[2] = sub_1002E4A94;
  v60[3] = &unk_10051AB10;
  v61 = v41;
  v29 = v45;
  v62 = v29;
  v54[0] = _NSConcreteStackBlock;
  v54[1] = 3221225472;
  v54[2] = sub_1002E4C2C;
  v54[3] = &unk_10051AB38;
  v59 = v52;
  v13 = v39;
  v55 = v13;
  v56 = v38;
  v57 = v40;
  v58 = v61;
  v49 = v40;
  v50 = [AFAssertionContext newWithBuilder:v54];
  [(AFAssertionCoordinator *)v48 relinquishAsertionsPassingTest:v60 context:v50];

LABEL_44:

  return v29;
}

- (void)_registerRequestID:(id)a3 requestHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self->_queue;
  rapportLink = self->_rapportLink;
  v18 = RPOptionStatusFlags;
  v19 = &off_100533FC8;
  v10 = [NSDictionary dictionaryWithObjects:&v19 forKeys:&v18 count:1];
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_1002E4EB8;
  v14[3] = &unk_10051AA98;
  v15 = v6;
  v16 = v8;
  v17 = v7;
  v11 = v7;
  v12 = v8;
  v13 = v6;
  [(ADRapportLink *)rapportLink registerRequestID:v13 options:v10 handler:v14];
}

- (void)_sendRequestID:(id)a3 request:(id)a4 recipientID:(id)a5 responseHandler:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315906;
    v32 = "[ADAudioSessionCoordinator _sendRequestID:request:recipientID:responseHandler:]";
    v33 = 2112;
    v34 = v12;
    v35 = 2112;
    v36 = v10;
    v37 = 2112;
    v38 = v11;
    _os_log_debug_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEBUG, "%s --->>> recipientID = %@, requestID = %@, request = %@", buf, 0x2Au);
  }

  v15 = self->_queue;
  v16 = mach_absolute_time();
  rapportLinkReadyGroup = self->_rapportLinkReadyGroup;
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1002E5480;
  block[3] = &unk_10051AA20;
  block[4] = self;
  v25 = v10;
  v26 = v11;
  v27 = v12;
  v29 = v13;
  v30 = v16;
  v28 = v15;
  v19 = v13;
  v20 = v15;
  v21 = v12;
  v22 = v11;
  v23 = v10;
  dispatch_group_notify(rapportLinkReadyGroup, queue, block);
}

- (void)handleDidSetAudioSessionActive:(BOOL)a3
{
  v3 = a3;
  v5 = AFSiriLogContextSpeech;
  if (os_log_type_enabled(AFSiriLogContextSpeech, OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v10 = "[ADAudioSessionCoordinator handleDidSetAudioSessionActive:]";
    v11 = 1024;
    v12 = v3;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "%s isActive = %d", buf, 0x12u);
  }

  queue = self->_queue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1002E58C4;
  v7[3] = &unk_10051CBD8;
  v7[4] = self;
  v8 = v3;
  dispatch_async(queue, v7);
}

- (void)handleWillSetAudioSessionActive:(BOOL)a3
{
  v3 = a3;
  v5 = AFSiriLogContextSpeech;
  if (os_log_type_enabled(AFSiriLogContextSpeech, OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v10 = "[ADAudioSessionCoordinator handleWillSetAudioSessionActive:]";
    v11 = 1024;
    v12 = v3;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "%s isActive = %d", buf, 0x12u);
  }

  queue = self->_queue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1002E59F0;
  v7[3] = &unk_10051CBD8;
  v7[4] = self;
  v8 = v3;
  dispatch_async(queue, v7);
}

- (void)relinquishLocalAssertions
{
  v3 = AFSiriLogContextSpeech;
  if (os_log_type_enabled(AFSiriLogContextSpeech, OS_LOG_TYPE_INFO))
  {
    *buf = 136315138;
    v9 = "[ADAudioSessionCoordinator relinquishLocalAssertions]";
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "%s ", buf, 0xCu);
  }

  v4 = mach_absolute_time();
  localAssertionCoordinator = self->_localAssertionCoordinator;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1002E5B2C;
  v7[3] = &unk_10051A9D0;
  v7[4] = v4;
  v6 = [AFAssertionContext newWithBuilder:v7];
  [(AFAssertionCoordinator *)localAssertionCoordinator relinquishAsertionsPassingTest:&stru_10051A9B0 context:v6];
}

- (void)getSnapshotWithCompletion:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v5 = dispatch_group_create();
    v33[0] = 0;
    v33[1] = v33;
    v33[2] = 0x3032000000;
    v33[3] = sub_1002E3E1C;
    v33[4] = sub_1002E3E2C;
    v34 = 0;
    v31[0] = 0;
    v31[1] = v31;
    v31[2] = 0x3032000000;
    v31[3] = sub_1002E3E1C;
    v31[4] = sub_1002E3E2C;
    v32 = 0;
    v29[0] = 0;
    v29[1] = v29;
    v29[2] = 0x3032000000;
    v29[3] = sub_1002E3E1C;
    v29[4] = sub_1002E3E2C;
    v30 = 0;
    v27[0] = 0;
    v27[1] = v27;
    v27[2] = 0x3032000000;
    v27[3] = sub_1002E3E1C;
    v27[4] = sub_1002E3E2C;
    v28 = 0;
    dispatch_group_enter(v5);
    localAssertionCoordinator = self->_localAssertionCoordinator;
    v22[0] = _NSConcreteStackBlock;
    v22[1] = 3221225472;
    v22[2] = sub_1002E5ED4;
    v22[3] = &unk_10051A920;
    v24 = &stru_10051A8F8;
    v25 = v33;
    v26 = v31;
    v7 = v5;
    v23 = v7;
    [(AFAssertionCoordinator *)localAssertionCoordinator getPendingAndActiveAssertionsWithCompletion:v22];
    dispatch_group_enter(v7);
    remoteAssertionCoordinator = self->_remoteAssertionCoordinator;
    v17[0] = _NSConcreteStackBlock;
    v17[1] = 3221225472;
    v17[2] = sub_1002E5F88;
    v17[3] = &unk_10051A920;
    v19 = &stru_10051A8F8;
    v20 = v29;
    v21 = v27;
    v9 = v7;
    v18 = v9;
    [(AFAssertionCoordinator *)remoteAssertionCoordinator getPendingAndActiveAssertionsWithCompletion:v17];
    queue = self->_queue;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1002E603C;
    block[3] = &unk_10051A970;
    block[4] = self;
    v13 = v33;
    v14 = v31;
    v15 = v29;
    v16 = v27;
    v12 = v4;
    dispatch_group_notify(v9, queue, block);

    _Block_object_dispose(v27, 8);
    _Block_object_dispose(v29, 8);

    _Block_object_dispose(v31, 8);
    _Block_object_dispose(v33, 8);
  }
}

- (BOOL)hasActiveAudioSessionAssertions
{
  v3 = [(AFAssertionCoordinator *)self->_localAssertionCoordinator numberOfActiveAssertions];
  if (v3)
  {
    v4 = v3;
    v5 = AFSiriLogContextDaemon;
    v6 = 1;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
    {
      v11 = 136315394;
      v12 = "[ADAudioSessionCoordinator hasActiveAudioSessionAssertions]";
      v13 = 2048;
      v14 = v4;
      v7 = "%s numberOfActiveAssertions = %llu (local)";
LABEL_7:
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, v7, &v11, 0x16u);
    }
  }

  else
  {
    v8 = [(AFAssertionCoordinator *)self->_remoteAssertionCoordinator numberOfActiveAssertions];
    v5 = AFSiriLogContextDaemon;
    v9 = os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO);
    if (v8)
    {
      if (!v9)
      {
        return 1;
      }

      v11 = 136315394;
      v12 = "[ADAudioSessionCoordinator hasActiveAudioSessionAssertions]";
      v13 = 2048;
      v14 = v8;
      v7 = "%s numberOfActiveAssertions = %llu (remote)";
      v6 = 1;
      goto LABEL_7;
    }

    if (v9)
    {
      v11 = 136315138;
      v12 = "[ADAudioSessionCoordinator hasActiveAudioSessionAssertions]";
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "%s numberOfActiveAssertions = 0 (local + remote)", &v11, 0xCu);
    }

    return 0;
  }

  return v6;
}

- (id)acquireAudioSessionAssertionWithContext:(id)a3 relinquishmentHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    *&buf[4] = "[ADAudioSessionCoordinator acquireAudioSessionAssertionWithContext:relinquishmentHandler:]";
    *&buf[12] = 2112;
    *&buf[14] = v6;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "%s context = %@", buf, 0x16u);
  }

  v9 = [v6 userInfo];
  v10 = [v9 objectForKey:AFAudioSessionAssertionUserInfoKey[4]];
  v11 = [v10 BOOLValue];

  if (!v11)
  {
    goto LABEL_13;
  }

  v12 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    *buf = 136315138;
    *&buf[4] = "[ADAudioSessionCoordinator acquireAudioSessionAssertionWithContext:relinquishmentHandler:]";
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_INFO, "%s Checking Stereo Pair partner to decide whether legacy audio ducking coordination should be handled...", buf, 0xCu);
  }

  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x2020000000;
  v30 = 1;
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1002E6EF0;
  block[3] = &unk_10051D4A0;
  block[4] = self;
  block[5] = buf;
  dispatch_sync(queue, block);
  v14 = *(*&buf[8] + 24);
  v15 = AFSiriLogContextDaemon;
  v16 = os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO);
  if (v14 == 1)
  {
    if (!v16)
    {
      goto LABEL_12;
    }

    *v27 = 136315138;
    v28 = "[ADAudioSessionCoordinator acquireAudioSessionAssertionWithContext:relinquishmentHandler:]";
    v17 = "%s Continue to handle legacy audio ducking coordination.";
  }

  else
  {
    if (!v16)
    {
      goto LABEL_12;
    }

    *v27 = 136315138;
    v28 = "[ADAudioSessionCoordinator acquireAudioSessionAssertionWithContext:relinquishmentHandler:]";
    v17 = "%s Drop legacy audio ducking coordination because Stereo Pair partner supports new audio session coordination.";
  }

  _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_INFO, v17, v27, 0xCu);
LABEL_12:
  _Block_object_dispose(buf, 8);
  if (!v14)
  {
    v21 = 0;
    goto LABEL_21;
  }

LABEL_13:
  localAssertionCoordinator = self->_localAssertionCoordinator;
  v19 = [v6 effectiveDate];
  v20 = v6;
  if (!v19)
  {
    v20 = [v6 mutatedCopyWithMutator:&stru_10051A890];
  }

  v24[0] = _NSConcreteStackBlock;
  v24[1] = 3221225472;
  v24[2] = sub_1002E7148;
  v24[3] = &unk_10051A8B8;
  v25 = v7;
  v21 = [(AFAssertionCoordinator *)localAssertionCoordinator acquireRelinquishableAssertionWithContext:v20 relinquishmentHandler:v24];
  if (!v19)
  {
  }

  v22 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    *&buf[4] = "[ADAudioSessionCoordinator acquireAudioSessionAssertionWithContext:relinquishmentHandler:]";
    *&buf[12] = 2112;
    *&buf[14] = v21;
    _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_INFO, "%s assertion = %@", buf, 0x16u);
  }

LABEL_21:

  return v21;
}

- (void)_setUpRapportLink
{
  v3 = [ADRapportLink alloc];
  rapportLinkQueue = self->_rapportLinkQueue;
  v5 = [ADRapportLinkConfiguration newWithBuilder:&stru_10051A7D0];
  v6 = [(ADRapportLink *)v3 initWithQueue:rapportLinkQueue configuration:v5];
  rapportLink = self->_rapportLink;
  self->_rapportLink = v6;

  [(ADRapportLink *)self->_rapportLink addListener:self];
  [(ADAudioSessionCoordinator *)self _setUpRequestHandlers];
  v8 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    v9 = self->_rapportLink;
    *buf = 136315394;
    v13 = "[ADAudioSessionCoordinator _setUpRapportLink]";
    v14 = 2112;
    v15 = v9;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "%s Activating Report Link %@...", buf, 0x16u);
  }

  dispatch_group_enter(self->_rapportLinkReadyGroup);
  v10 = self->_rapportLink;
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_1002E7488;
  v11[3] = &unk_10051C498;
  v11[4] = self;
  [(ADRapportLink *)v10 activateWithCompletion:v11];
}

- (ADAudioSessionCoordinator)initWithInstanceContext:(id)a3 delegate:(id)a4
{
  v6 = a3;
  v7 = a4;
  v39.receiver = self;
  v39.super_class = ADAudioSessionCoordinator;
  v8 = [(ADAudioSessionCoordinator *)&v39 init];
  if (v8)
  {
    v9 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v10 = dispatch_queue_attr_make_with_qos_class(v9, QOS_CLASS_USER_INTERACTIVE, 0);

    v11 = dispatch_queue_create("com.apple.assistant.audio-session-coordination", v10);
    queue = v8->_queue;
    v8->_queue = v11;

    if (v6)
    {
      v13 = v6;
    }

    else
    {
      v13 = +[AFInstanceContext defaultContext];
    }

    instanceContext = v8->_instanceContext;
    v8->_instanceContext = v13;

    objc_storeWeak(&v8->_delegate, v7);
    v15 = [[AFAssertionCoordinator alloc] initWithIdentifier:@"com.apple.assistant.audio-session-coordination.assertion-coordinator.local" queue:v8->_queue delegate:v8];
    localAssertionCoordinator = v8->_localAssertionCoordinator;
    v8->_localAssertionCoordinator = v15;

    v17 = [[AFAssertionCoordinator alloc] initWithIdentifier:@"com.apple.assistant.audio-session-coordination.assertion-coordinator.remote" queue:v8->_queue delegate:v8];
    remoteAssertionCoordinator = v8->_remoteAssertionCoordinator;
    v8->_remoteAssertionCoordinator = v17;

    v19 = [AFAudioSessionCoordinationSystemInfo newWithBuilder:&stru_10051A790];
    localSystemInfo = v8->_localSystemInfo;
    v8->_localSystemInfo = v19;

    v21 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
    {
      v22 = v8->_localSystemInfo;
      v23 = v21;
      v24 = [(AFAudioSessionCoordinationSystemInfo *)v22 isSupportedAndEnabled];
      *buf = 136315394;
      v41 = "[ADAudioSessionCoordinator initWithInstanceContext:delegate:]";
      v42 = 1024;
      v43 = v24;
      _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_INFO, "%s isSupportedAndEnabled = %d (initial)", buf, 0x12u);
    }

    v25 = +[NSNotificationCenter defaultCenter];
    [v25 addObserver:v8 selector:"mediaRemoteDeviceInfoRouteIdentifierDidChange:" name:AFMediaRemoteDeviceInfoRouteIdentifierDidChangeNotification object:0];

    v26 = +[NSNotificationCenter defaultCenter];
    [v26 addObserver:v8 selector:"mediaRemoteDeviceInfoGroupIdentifierDidChange:" name:AFMediaRemoteDeviceInfoGroupIdentifierDidChangeNotification object:0];

    [(ADAudioSessionCoordinator *)v8 fetchAndUpdateMediaRemoteGroupIdentifierForReason:@"Initialization"];
    [(ADAudioSessionCoordinator *)v8 fetchAndUpdateMediaRemoteRouteIdentifierForReason:@"Initialization"];
    v27 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v28 = dispatch_queue_attr_make_with_qos_class(v27, QOS_CLASS_USER_INITIATED, 0);

    v29 = dispatch_queue_create("com.apple.assistant.audio-session-coordination.rapport-link", v28);
    rapportLinkQueue = v8->_rapportLinkQueue;
    v8->_rapportLinkQueue = v29;

    v31 = dispatch_group_create();
    rapportLinkReadyGroup = v8->_rapportLinkReadyGroup;
    v8->_rapportLinkReadyGroup = v31;

    [(ADAudioSessionCoordinator *)v8 _setUpRapportLink];
    v33 = v8->_queue;
    v34 = +[ADQueueMonitor sharedMonitor];
    v37[0] = _NSConcreteStackBlock;
    v37[1] = 3221225472;
    v37[2] = sub_1002E7B18;
    v37[3] = &unk_10051C2E0;
    v38 = v33;
    v35 = v33;
    [v34 addQueue:v35 heartBeatInterval:v37 timeoutInterval:5.0 timeoutHandler:5.0];
  }

  return v8;
}

- (void)dealloc
{
  [(ADAudioSessionCoordinator *)self _invalidate];
  v3.receiver = self;
  v3.super_class = ADAudioSessionCoordinator;
  [(ADAudioSessionCoordinator *)&v3 dealloc];
}

@end