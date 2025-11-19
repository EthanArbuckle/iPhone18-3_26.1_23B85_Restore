@interface ADDictationSessionTracker
- (ADDictationSessionTracker)init;
- (id)_startedOrStartingSession;
- (id)startSessionForReason:(id)a3 languageCode:(id)a4 options:(id)a5 speechRequestOptions:(id)a6;
- (void)_addSession:(id)a3;
- (void)_beginAudioFileIOTransactionForReason:(id)a3 session:(id)a4;
- (void)_beginSpeechRecognitionTransactionForReason:(id)a3 session:(id)a4;
- (void)_endAudioFileIOTransactionForReason:(id)a3 session:(id)a4;
- (void)_endSessionTransactionForReason:(id)a3 session:(id)a4 isSpeechTransaction:(BOOL)a5;
- (void)_endSpeechRecognitionTransactionForReason:(id)a3 session:(id)a4;
- (void)_removeSession:(id)a3;
- (void)_reportSessionAssertion;
- (void)notifyAudioFileIOTransactionStoppedForReason:(id)a3 sessionUUID:(id)a4;
- (void)notifySpeechRecognitionTransactionStoppedForReason:(id)a3 sessionUUID:(id)a4;
- (void)stopSessionForReason:(id)a3;
@end

@implementation ADDictationSessionTracker

- (void)_endAudioFileIOTransactionForReason:(id)a3 session:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    v9 = v8;
    v10 = [v7 uuid];
    *buf = 136315394;
    v14 = "[ADDictationSessionTracker _endAudioFileIOTransactionForReason:session:]";
    v15 = 2112;
    v16 = v10;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "%s sessionUUID = %@", buf, 0x16u);
  }

  v11 = [v7 speechRequestOptions];
  v12 = [v11 audioFileType];

  if (v12)
  {
    if (![v7 audioFileIOTransactionState])
    {
      [NSException raise:NSInternalInconsistencyException format:@"Trying to end a dictation audio file transaction (reason: %@), but the transaction state is stopped", v6];
    }

    [(ADDictationSessionTracker *)self _endSessionTransactionForReason:v6 session:v7 isSpeechTransaction:0];
  }
}

- (void)_endSpeechRecognitionTransactionForReason:(id)a3 session:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    v9 = v8;
    v10 = [v7 uuid];
    *buf = 136315394;
    v12 = "[ADDictationSessionTracker _endSpeechRecognitionTransactionForReason:session:]";
    v13 = 2112;
    v14 = v10;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "%s sessionUUID = %@", buf, 0x16u);
  }

  if (![v7 speechRecognitionTransactionState])
  {
    [NSException raise:NSInternalInconsistencyException format:@"Trying to end a dictation transcription transaction (reason: %@), but the transaction state is stopped", v6];
  }

  [(ADDictationSessionTracker *)self _endSessionTransactionForReason:v6 session:v7 isSpeechTransaction:1];
}

- (void)_endSessionTransactionForReason:(id)a3 session:(id)a4 isSpeechTransaction:(BOOL)a5
{
  v5 = a5;
  v8 = a3;
  v9 = a4;
  v10 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    v11 = 136315394;
    v12 = "[ADDictationSessionTracker _endSessionTransactionForReason:session:isSpeechTransaction:]";
    v13 = 2112;
    v14 = v8;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "%s Ending dictation transcription XPC transaction because %@", &v11, 0x16u);
  }

  if (v5)
  {
    [v9 _setSpeechRecognitionTransactionState:0];
  }

  else
  {
    [v9 _setAudioFileIOTransactionState:0];
  }

  if (![v9 speechRecognitionTransactionState] && !objc_msgSend(v9, "audioFileIOTransactionState"))
  {
    [(ADDictationSessionTracker *)self _removeSession:v9];
  }
}

- (void)_beginAudioFileIOTransactionForReason:(id)a3 session:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    v9 = v8;
    v10 = [v7 uuid];
    *buf = 136315394;
    v18 = "[ADDictationSessionTracker _beginAudioFileIOTransactionForReason:session:]";
    v19 = 2112;
    v20 = v10;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "%s sessionUUID = %@", buf, 0x16u);
  }

  v11 = [v7 speechRequestOptions];
  v12 = [v11 audioFileType];

  if (v12)
  {
    v13 = sub_1002F491C(self->_activeSessions, &stru_10051B0F0);
    v14 = [v13 count];
    if (v14 >= 2)
    {
      [NSException raise:NSInternalInconsistencyException format:@"Trying to begin a dictation audio file transaction (reason: %@), but found %tu active session(s).", v6, v14];
    }

    v15 = [v7 audioFileIOTransactionState];
    if (v15)
    {
      [NSException raise:NSInternalInconsistencyException format:@"Trying to begin a dictation audio file transaction (reason: %@), but the transaction state is %ld.", v6, v15];
    }

    v16 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
    {
      *buf = 136315394;
      v18 = "[ADDictationSessionTracker _beginAudioFileIOTransactionForReason:session:]";
      v19 = 2112;
      v20 = v6;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_INFO, "%s Beginning dictation audio file XPC transaction because %@", buf, 0x16u);
    }

    [v7 _setAudioFileIOTransactionState:1];
  }
}

- (void)_beginSpeechRecognitionTransactionForReason:(id)a3 session:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    v9 = v8;
    v10 = [v7 uuid];
    *buf = 136315394;
    v16 = "[ADDictationSessionTracker _beginSpeechRecognitionTransactionForReason:session:]";
    v17 = 2112;
    v18 = v10;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "%s sessionUUID = %@", buf, 0x16u);
  }

  v11 = sub_1002F491C(self->_activeSessions, &stru_10051B0F0);
  v12 = [v11 count];
  if (v12 >= 2)
  {
    [NSException raise:NSInternalInconsistencyException format:@"Trying to begin a dictation transcription transaction (reason: %@), but found %tu active session(s).", v6, v12];
  }

  v13 = [v7 speechRecognitionTransactionState];
  if (v13)
  {
    [NSException raise:NSInternalInconsistencyException format:@"Trying to begin a dictation transcription transaction (reason: %@), but the transaction state is %zd.", v6, v13];
  }

  v14 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v16 = "[ADDictationSessionTracker _beginSpeechRecognitionTransactionForReason:session:]";
    v17 = 2112;
    v18 = v6;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_INFO, "%s Beginning dictation transcription XPC transaction because %@", buf, 0x16u);
  }

  [v7 _setSpeechRecognitionTransactionState:1];
}

- (void)_reportSessionAssertion
{
  if (AFIsInternalInstall())
  {
    v2 = [AFSettingsConnection alloc];
    v3 = +[AFInstanceContext defaultContext];
    v4 = [v2 initWithInstanceContext:v3];

    [v4 triggerABCForType:@"dictation" subType:@"session_assertion" context:0 completionHandler:&stru_100515058];
  }
}

- (id)_startedOrStartingSession
{
  v3 = sub_1002F491C(self->_activeSessions, &stru_10051B0F0);
  v4 = [v3 count];
  if (v4 >= 2)
  {
    v5 = v4;
    [(ADDictationSessionTracker *)self _reportSessionAssertion];
    [NSException raise:NSInternalInconsistencyException format:@"Trying to retrieve the active session, but found %tu active sessions.", v5];
  }

  v6 = [v3 firstObject];

  return v6;
}

- (void)_removeSession:(id)a3
{
  v4 = a3;
  v5 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    v6 = v5;
    v7 = [v4 uuid];
    v10 = 136315394;
    v11 = "[ADDictationSessionTracker _removeSession:]";
    v12 = 2112;
    v13 = v7;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "%s Deactivating dictation session with sessionUUID = %@", &v10, 0x16u);
  }

  [(NSMutableArray *)self->_activeSessions removeObject:v4];
  activeSessionsByUUID = self->_activeSessionsByUUID;
  v9 = [v4 uuid];
  [(NSMutableDictionary *)activeSessionsByUUID removeObjectForKey:v9];
}

- (void)_addSession:(id)a3
{
  v4 = a3;
  v5 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    v6 = v5;
    v7 = [v4 uuid];
    v10 = 136315394;
    v11 = "[ADDictationSessionTracker _addSession:]";
    v12 = 2112;
    v13 = v7;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "%s Activating dictation session with sessionUUID = %@", &v10, 0x16u);
  }

  [(NSMutableArray *)self->_activeSessions addObject:v4];
  activeSessionsByUUID = self->_activeSessionsByUUID;
  v9 = [v4 uuid];
  [(NSMutableDictionary *)activeSessionsByUUID setObject:v4 forKey:v9];
}

- (void)notifyAudioFileIOTransactionStoppedForReason:(id)a3 sessionUUID:(id)a4
{
  v6 = a3;
  v7 = a4;
  v16[0] = 0;
  v16[1] = v16;
  v16[2] = 0x3032000000;
  v16[3] = sub_1001B9C64;
  v16[4] = sub_1001B9C74;
  v17 = os_transaction_create();
  queue = self->_queue;
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_1001B9C7C;
  v11[3] = &unk_100517400;
  v12 = v7;
  v13 = self;
  v14 = v6;
  v15 = v16;
  v9 = v6;
  v10 = v7;
  dispatch_async(queue, v11);

  _Block_object_dispose(v16, 8);
}

- (void)notifySpeechRecognitionTransactionStoppedForReason:(id)a3 sessionUUID:(id)a4
{
  v6 = a3;
  v7 = a4;
  v16[0] = 0;
  v16[1] = v16;
  v16[2] = 0x3032000000;
  v16[3] = sub_1001B9C64;
  v16[4] = sub_1001B9C74;
  v17 = os_transaction_create();
  queue = self->_queue;
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_1001B9F80;
  v11[3] = &unk_100517400;
  v12 = v7;
  v13 = self;
  v14 = v6;
  v15 = v16;
  v9 = v6;
  v10 = v7;
  dispatch_async(queue, v11);

  _Block_object_dispose(v16, 8);
}

- (void)stopSessionForReason:(id)a3
{
  v6[0] = 0;
  v6[1] = v6;
  v6[2] = 0x3032000000;
  v6[3] = sub_1001B9C64;
  v6[4] = sub_1001B9C74;
  v7 = os_transaction_create();
  queue = self->_queue;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_1001BA230;
  v5[3] = &unk_10051D4A0;
  v5[4] = self;
  v5[5] = v6;
  dispatch_async(queue, v5);
  _Block_object_dispose(v6, 8);
}

- (id)startSessionForReason:(id)a3 languageCode:(id)a4 options:(id)a5 speechRequestOptions:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = mach_absolute_time();
  v15 = +[NSUUID UUID];
  v16 = [v15 UUIDString];

  v35[0] = 0;
  v35[1] = v35;
  v35[2] = 0x3032000000;
  v35[3] = sub_1001B9C64;
  v35[4] = sub_1001B9C74;
  v36 = os_transaction_create();
  queue = self->_queue;
  v26[0] = _NSConcreteStackBlock;
  v26[1] = 3221225472;
  v26[2] = sub_1001BA5AC;
  v26[3] = &unk_100515038;
  v18 = v16;
  v27 = v18;
  v28 = v11;
  v29 = v12;
  v30 = v13;
  v31 = self;
  v32 = v10;
  v33 = v35;
  v34 = v14;
  v19 = v10;
  v20 = v13;
  v21 = v12;
  v22 = v11;
  dispatch_async(queue, v26);
  v23 = v32;
  v24 = v18;

  _Block_object_dispose(v35, 8);

  return v24;
}

- (ADDictationSessionTracker)init
{
  v12.receiver = self;
  v12.super_class = ADDictationSessionTracker;
  v2 = [(ADDictationSessionTracker *)&v12 init];
  if (v2)
  {
    v3 = objc_alloc_init(NSMutableArray);
    activeSessions = v2->_activeSessions;
    v2->_activeSessions = v3;

    v5 = objc_alloc_init(NSMutableDictionary);
    activeSessionsByUUID = v2->_activeSessionsByUUID;
    v2->_activeSessionsByUUID = v5;

    v7 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v8 = dispatch_queue_attr_make_with_qos_class(v7, QOS_CLASS_DEFAULT, 0);

    v9 = dispatch_queue_create("com.apple.assistantd.dictation.session-controller", v8);
    queue = v2->_queue;
    v2->_queue = v9;
  }

  return v2;
}

@end