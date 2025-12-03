@interface ADDictationSessionTracker
- (ADDictationSessionTracker)init;
- (id)_startedOrStartingSession;
- (id)startSessionForReason:(id)reason languageCode:(id)code options:(id)options speechRequestOptions:(id)requestOptions;
- (void)_addSession:(id)session;
- (void)_beginAudioFileIOTransactionForReason:(id)reason session:(id)session;
- (void)_beginSpeechRecognitionTransactionForReason:(id)reason session:(id)session;
- (void)_endAudioFileIOTransactionForReason:(id)reason session:(id)session;
- (void)_endSessionTransactionForReason:(id)reason session:(id)session isSpeechTransaction:(BOOL)transaction;
- (void)_endSpeechRecognitionTransactionForReason:(id)reason session:(id)session;
- (void)_removeSession:(id)session;
- (void)_reportSessionAssertion;
- (void)notifyAudioFileIOTransactionStoppedForReason:(id)reason sessionUUID:(id)d;
- (void)notifySpeechRecognitionTransactionStoppedForReason:(id)reason sessionUUID:(id)d;
- (void)stopSessionForReason:(id)reason;
@end

@implementation ADDictationSessionTracker

- (void)_endAudioFileIOTransactionForReason:(id)reason session:(id)session
{
  reasonCopy = reason;
  sessionCopy = session;
  v8 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    v9 = v8;
    uuid = [sessionCopy uuid];
    *buf = 136315394;
    v14 = "[ADDictationSessionTracker _endAudioFileIOTransactionForReason:session:]";
    v15 = 2112;
    v16 = uuid;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "%s sessionUUID = %@", buf, 0x16u);
  }

  speechRequestOptions = [sessionCopy speechRequestOptions];
  audioFileType = [speechRequestOptions audioFileType];

  if (audioFileType)
  {
    if (![sessionCopy audioFileIOTransactionState])
    {
      [NSException raise:NSInternalInconsistencyException format:@"Trying to end a dictation audio file transaction (reason: %@), but the transaction state is stopped", reasonCopy];
    }

    [(ADDictationSessionTracker *)self _endSessionTransactionForReason:reasonCopy session:sessionCopy isSpeechTransaction:0];
  }
}

- (void)_endSpeechRecognitionTransactionForReason:(id)reason session:(id)session
{
  reasonCopy = reason;
  sessionCopy = session;
  v8 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    v9 = v8;
    uuid = [sessionCopy uuid];
    *buf = 136315394;
    v12 = "[ADDictationSessionTracker _endSpeechRecognitionTransactionForReason:session:]";
    v13 = 2112;
    v14 = uuid;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "%s sessionUUID = %@", buf, 0x16u);
  }

  if (![sessionCopy speechRecognitionTransactionState])
  {
    [NSException raise:NSInternalInconsistencyException format:@"Trying to end a dictation transcription transaction (reason: %@), but the transaction state is stopped", reasonCopy];
  }

  [(ADDictationSessionTracker *)self _endSessionTransactionForReason:reasonCopy session:sessionCopy isSpeechTransaction:1];
}

- (void)_endSessionTransactionForReason:(id)reason session:(id)session isSpeechTransaction:(BOOL)transaction
{
  transactionCopy = transaction;
  reasonCopy = reason;
  sessionCopy = session;
  v10 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    v11 = 136315394;
    v12 = "[ADDictationSessionTracker _endSessionTransactionForReason:session:isSpeechTransaction:]";
    v13 = 2112;
    v14 = reasonCopy;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "%s Ending dictation transcription XPC transaction because %@", &v11, 0x16u);
  }

  if (transactionCopy)
  {
    [sessionCopy _setSpeechRecognitionTransactionState:0];
  }

  else
  {
    [sessionCopy _setAudioFileIOTransactionState:0];
  }

  if (![sessionCopy speechRecognitionTransactionState] && !objc_msgSend(sessionCopy, "audioFileIOTransactionState"))
  {
    [(ADDictationSessionTracker *)self _removeSession:sessionCopy];
  }
}

- (void)_beginAudioFileIOTransactionForReason:(id)reason session:(id)session
{
  reasonCopy = reason;
  sessionCopy = session;
  v8 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    v9 = v8;
    uuid = [sessionCopy uuid];
    *buf = 136315394;
    v18 = "[ADDictationSessionTracker _beginAudioFileIOTransactionForReason:session:]";
    v19 = 2112;
    v20 = uuid;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "%s sessionUUID = %@", buf, 0x16u);
  }

  speechRequestOptions = [sessionCopy speechRequestOptions];
  audioFileType = [speechRequestOptions audioFileType];

  if (audioFileType)
  {
    v13 = sub_1002F491C(self->_activeSessions, &stru_10051B0F0);
    v14 = [v13 count];
    if (v14 >= 2)
    {
      [NSException raise:NSInternalInconsistencyException format:@"Trying to begin a dictation audio file transaction (reason: %@), but found %tu active session(s).", reasonCopy, v14];
    }

    audioFileIOTransactionState = [sessionCopy audioFileIOTransactionState];
    if (audioFileIOTransactionState)
    {
      [NSException raise:NSInternalInconsistencyException format:@"Trying to begin a dictation audio file transaction (reason: %@), but the transaction state is %ld.", reasonCopy, audioFileIOTransactionState];
    }

    v16 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
    {
      *buf = 136315394;
      v18 = "[ADDictationSessionTracker _beginAudioFileIOTransactionForReason:session:]";
      v19 = 2112;
      v20 = reasonCopy;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_INFO, "%s Beginning dictation audio file XPC transaction because %@", buf, 0x16u);
    }

    [sessionCopy _setAudioFileIOTransactionState:1];
  }
}

- (void)_beginSpeechRecognitionTransactionForReason:(id)reason session:(id)session
{
  reasonCopy = reason;
  sessionCopy = session;
  v8 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    v9 = v8;
    uuid = [sessionCopy uuid];
    *buf = 136315394;
    v16 = "[ADDictationSessionTracker _beginSpeechRecognitionTransactionForReason:session:]";
    v17 = 2112;
    v18 = uuid;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "%s sessionUUID = %@", buf, 0x16u);
  }

  v11 = sub_1002F491C(self->_activeSessions, &stru_10051B0F0);
  v12 = [v11 count];
  if (v12 >= 2)
  {
    [NSException raise:NSInternalInconsistencyException format:@"Trying to begin a dictation transcription transaction (reason: %@), but found %tu active session(s).", reasonCopy, v12];
  }

  speechRecognitionTransactionState = [sessionCopy speechRecognitionTransactionState];
  if (speechRecognitionTransactionState)
  {
    [NSException raise:NSInternalInconsistencyException format:@"Trying to begin a dictation transcription transaction (reason: %@), but the transaction state is %zd.", reasonCopy, speechRecognitionTransactionState];
  }

  v14 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v16 = "[ADDictationSessionTracker _beginSpeechRecognitionTransactionForReason:session:]";
    v17 = 2112;
    v18 = reasonCopy;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_INFO, "%s Beginning dictation transcription XPC transaction because %@", buf, 0x16u);
  }

  [sessionCopy _setSpeechRecognitionTransactionState:1];
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

  firstObject = [v3 firstObject];

  return firstObject;
}

- (void)_removeSession:(id)session
{
  sessionCopy = session;
  v5 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    v6 = v5;
    uuid = [sessionCopy uuid];
    v10 = 136315394;
    v11 = "[ADDictationSessionTracker _removeSession:]";
    v12 = 2112;
    v13 = uuid;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "%s Deactivating dictation session with sessionUUID = %@", &v10, 0x16u);
  }

  [(NSMutableArray *)self->_activeSessions removeObject:sessionCopy];
  activeSessionsByUUID = self->_activeSessionsByUUID;
  uuid2 = [sessionCopy uuid];
  [(NSMutableDictionary *)activeSessionsByUUID removeObjectForKey:uuid2];
}

- (void)_addSession:(id)session
{
  sessionCopy = session;
  v5 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    v6 = v5;
    uuid = [sessionCopy uuid];
    v10 = 136315394;
    v11 = "[ADDictationSessionTracker _addSession:]";
    v12 = 2112;
    v13 = uuid;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "%s Activating dictation session with sessionUUID = %@", &v10, 0x16u);
  }

  [(NSMutableArray *)self->_activeSessions addObject:sessionCopy];
  activeSessionsByUUID = self->_activeSessionsByUUID;
  uuid2 = [sessionCopy uuid];
  [(NSMutableDictionary *)activeSessionsByUUID setObject:sessionCopy forKey:uuid2];
}

- (void)notifyAudioFileIOTransactionStoppedForReason:(id)reason sessionUUID:(id)d
{
  reasonCopy = reason;
  dCopy = d;
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
  v12 = dCopy;
  selfCopy = self;
  v14 = reasonCopy;
  v15 = v16;
  v9 = reasonCopy;
  v10 = dCopy;
  dispatch_async(queue, v11);

  _Block_object_dispose(v16, 8);
}

- (void)notifySpeechRecognitionTransactionStoppedForReason:(id)reason sessionUUID:(id)d
{
  reasonCopy = reason;
  dCopy = d;
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
  v12 = dCopy;
  selfCopy = self;
  v14 = reasonCopy;
  v15 = v16;
  v9 = reasonCopy;
  v10 = dCopy;
  dispatch_async(queue, v11);

  _Block_object_dispose(v16, 8);
}

- (void)stopSessionForReason:(id)reason
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

- (id)startSessionForReason:(id)reason languageCode:(id)code options:(id)options speechRequestOptions:(id)requestOptions
{
  reasonCopy = reason;
  codeCopy = code;
  optionsCopy = options;
  requestOptionsCopy = requestOptions;
  v14 = mach_absolute_time();
  v15 = +[NSUUID UUID];
  uUIDString = [v15 UUIDString];

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
  v18 = uUIDString;
  v27 = v18;
  v28 = codeCopy;
  v29 = optionsCopy;
  v30 = requestOptionsCopy;
  selfCopy = self;
  v32 = reasonCopy;
  v33 = v35;
  v34 = v14;
  v19 = reasonCopy;
  v20 = requestOptionsCopy;
  v21 = optionsCopy;
  v22 = codeCopy;
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