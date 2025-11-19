@interface ADDictationSession
- (ADDictationSession)initWithUUID:(id)a3 timestamp:(unint64_t)a4 languageCode:(id)a5 options:(id)a6 speechRequestOptions:(id)a7;
- (void)_setAudioFileIOTransactionState:(int64_t)a3;
- (void)_setSpeechRecognitionTransactionState:(int64_t)a3;
- (void)dealloc;
@end

@implementation ADDictationSession

- (void)_setAudioFileIOTransactionState:(int64_t)a3
{
  v5 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    audioFileIOTransactionState = self->_audioFileIOTransactionState;
    v20 = 136315650;
    v21 = "[ADDictationSession _setAudioFileIOTransactionState:]";
    v22 = 2048;
    v23 = audioFileIOTransactionState;
    v24 = 2048;
    v25 = a3;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "%s (oldState = %ld, newState = %ld)", &v20, 0x20u);
  }

  v7 = self->_audioFileIOTransactionState;
  if (v7 != a3)
  {
    if (!v7)
    {
      v8 = AFSiriLogContextDaemon;
      if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
      {
        v20 = 136315138;
        v21 = "[ADDictationSession _setAudioFileIOTransactionState:]";
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "%s will call os_transaction_create()", &v20, 0xCu);
      }

      transactionObjects = self->_transactionObjects;
      if (!transactionObjects)
      {
        v10 = objc_alloc_init(AFQueue);
        v11 = self->_transactionObjects;
        self->_transactionObjects = v10;

        transactionObjects = self->_transactionObjects;
      }

      v12 = os_transaction_create();
      [(AFQueue *)transactionObjects enqueueObject:v12];

      v13 = ++qword_100590130;
      v14 = AFSiriLogContextDaemon;
      if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
      {
        v20 = 136315394;
        v21 = "[ADDictationSession _setAudioFileIOTransactionState:]";
        v22 = 2048;
        v23 = v13;
        _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_INFO, "%s Did call os_transaction_create() with new XPC transaction count %ld", &v20, 0x16u);
      }
    }

    self->_audioFileIOTransactionState = a3;
    if (!a3)
    {
      v15 = AFSiriLogContextDaemon;
      if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
      {
        v20 = 136315138;
        v21 = "[ADDictationSession _setAudioFileIOTransactionState:]";
        _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_INFO, "%s Will destroy os_transaction_t object", &v20, 0xCu);
      }

      v16 = [(AFQueue *)self->_transactionObjects dequeueObject];
      if (!v16)
      {
        v17 = AFSiriLogContextDaemon;
        if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
        {
          v20 = 136315138;
          v21 = "[ADDictationSession _setAudioFileIOTransactionState:]";
          _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_INFO, "%s Transaction object nil", &v20, 0xCu);
        }
      }

      v18 = --qword_100590130;
      v19 = AFSiriLogContextDaemon;
      if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
      {
        v20 = 136315394;
        v21 = "[ADDictationSession _setAudioFileIOTransactionState:]";
        v22 = 2048;
        v23 = v18;
        _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_INFO, "%s Did destroy os_transaction_t object with new XPC transaction count %ld", &v20, 0x16u);
      }
    }
  }
}

- (void)_setSpeechRecognitionTransactionState:(int64_t)a3
{
  v5 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    speechRecognitionTransactionState = self->_speechRecognitionTransactionState;
    v20 = 136315650;
    v21 = "[ADDictationSession _setSpeechRecognitionTransactionState:]";
    v22 = 2048;
    v23 = speechRecognitionTransactionState;
    v24 = 2048;
    v25 = a3;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "%s (oldState = %ld, newState = %ld)", &v20, 0x20u);
  }

  v7 = self->_speechRecognitionTransactionState;
  if (v7 != a3)
  {
    if (!v7)
    {
      v8 = AFSiriLogContextDaemon;
      if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
      {
        v20 = 136315138;
        v21 = "[ADDictationSession _setSpeechRecognitionTransactionState:]";
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "%s Will call os_transaction_create()", &v20, 0xCu);
      }

      transactionObjects = self->_transactionObjects;
      if (!transactionObjects)
      {
        v10 = objc_alloc_init(AFQueue);
        v11 = self->_transactionObjects;
        self->_transactionObjects = v10;

        transactionObjects = self->_transactionObjects;
      }

      v12 = os_transaction_create();
      [(AFQueue *)transactionObjects enqueueObject:v12];

      v13 = ++qword_100590130;
      v14 = AFSiriLogContextDaemon;
      if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
      {
        v20 = 136315394;
        v21 = "[ADDictationSession _setSpeechRecognitionTransactionState:]";
        v22 = 2048;
        v23 = v13;
        _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_INFO, "%s Did call os_transaction_create() with new XPC transaction count %ld", &v20, 0x16u);
      }
    }

    self->_speechRecognitionTransactionState = a3;
    if (!a3)
    {
      v15 = AFSiriLogContextDaemon;
      if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
      {
        v20 = 136315138;
        v21 = "[ADDictationSession _setSpeechRecognitionTransactionState:]";
        _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_INFO, "%s Will destroy os_transaction_t object", &v20, 0xCu);
      }

      v16 = [(AFQueue *)self->_transactionObjects dequeueObject];
      if (!v16)
      {
        v17 = AFSiriLogContextDaemon;
        if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
        {
          v20 = 136315138;
          v21 = "[ADDictationSession _setSpeechRecognitionTransactionState:]";
          _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_INFO, "%s Transaction object nil", &v20, 0xCu);
        }
      }

      v18 = --qword_100590130;
      v19 = AFSiriLogContextDaemon;
      if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
      {
        v20 = 136315394;
        v21 = "[ADDictationSession _setSpeechRecognitionTransactionState:]";
        v22 = 2048;
        v23 = v18;
        _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_INFO, "%s Did destroy os_transaction_t object with new XPC transaction count %ld", &v20, 0x16u);
      }
    }
  }
}

- (void)dealloc
{
  if (self->_speechRecognitionTransactionState)
  {
    v3 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
    {
      *buf = 136315138;
      v15 = "[ADDictationSession dealloc]";
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "%s Will destroy os_transaction_t object", buf, 0xCu);
    }

    v4 = [(AFQueue *)self->_transactionObjects dequeueObject];
    if (!v4)
    {
      v5 = AFSiriLogContextDaemon;
      if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
      {
        *buf = 136315138;
        v15 = "[ADDictationSession dealloc]";
        _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "%s Transaction object nil", buf, 0xCu);
      }
    }

    v6 = --qword_100590130;
    v7 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
    {
      *buf = 136315394;
      v15 = "[ADDictationSession dealloc]";
      v16 = 2048;
      v17 = v6;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "%s Did destroy os_transaction_t object with new XPC transaction count %ld", buf, 0x16u);
    }
  }

  if (self->_audioFileIOTransactionState)
  {
    v8 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
    {
      *buf = 136315138;
      v15 = "[ADDictationSession dealloc]";
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "%s Will destroy os_transaction_t object", buf, 0xCu);
    }

    v9 = [(AFQueue *)self->_transactionObjects dequeueObject];
    if (!v9)
    {
      v10 = AFSiriLogContextDaemon;
      if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
      {
        *buf = 136315138;
        v15 = "[ADDictationSession dealloc]";
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "%s Transaction object nil", buf, 0xCu);
      }
    }

    v11 = --qword_100590130;
    v12 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
    {
      *buf = 136315394;
      v15 = "[ADDictationSession dealloc]";
      v16 = 2048;
      v17 = v11;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_INFO, "%s Did destroy os_transaction_t object with new XPC transaction count %ld", buf, 0x16u);
    }
  }

  v13.receiver = self;
  v13.super_class = ADDictationSession;
  [(ADDictationSession *)&v13 dealloc];
}

- (ADDictationSession)initWithUUID:(id)a3 timestamp:(unint64_t)a4 languageCode:(id)a5 options:(id)a6 speechRequestOptions:(id)a7
{
  v12 = a3;
  v13 = a5;
  v14 = a6;
  v15 = a7;
  v22.receiver = self;
  v22.super_class = ADDictationSession;
  v16 = [(ADDictationSession *)&v22 init];
  if (v16)
  {
    v17 = [v12 copy];
    uuid = v16->_uuid;
    v16->_uuid = v17;

    v16->_timestamp = a4;
    v19 = [v13 copy];
    languageCode = v16->_languageCode;
    v16->_languageCode = v19;

    objc_storeStrong(&v16->_options, a6);
    objc_storeStrong(&v16->_speechRequestOptions, a7);
    v16->_speechRecognitionTransactionState = 0;
    v16->_audioFileIOTransactionState = 0;
  }

  return v16;
}

@end