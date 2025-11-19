@interface ADRequestDispatcherService
- (ADRequestDispatcherService)init;
- (ADRequestDispatcherService)initWithBridgeConnectionListeners:(id)a3;
- (ADRequestDispatcherService)initWithRequestDispatcher:(id)a3;
- (id)_getDefaultAssistantIdForAssistantId:(id)a3;
- (id)sanitizeVoiceTriggerEventInfo:(id)a3;
- (void)_logPowerContextForRequest:(id)a3;
- (void)announceNotificationHandlingStateUpdatedWithAssistantId:(id)a3 toState:(int64_t)a4;
- (void)cancelOperationsForRequestID:(id)a3 forAssistantID:(id)a4 fromRemote:(BOOL)a5 reason:(int64_t)a6;
- (void)emitAIREventForSiriAvailabiltyWithLocale:(id)a3 countryCode:(id)a4 isAvailable:(BOOL)a5 orchestrationMode:(unint64_t)a6 unavailabilityReasons:(unint64_t)a7;
- (void)emitAIREventsForSiriRequestWithRequestId:(id)a3 missingAssets:(unint64_t)a4;
- (void)endDictationSessionWithAssistantId:(id)a3;
- (void)handleCommand:(id)a3 forDomain:(id)a4 executionContext:(id)a5 reply:(id)a6;
- (void)pauseDictationRecognitionWithAssistantId:(id)a3 requestId:(id)a4;
- (void)requestCompletedWithAssistantId:(id)a3 requestId:(id)a4;
- (void)requestFailedWithAssistantId:(id)a3 requestId:(id)a4;
- (void)resumeDictationRecognitionWithAssistantId:(id)a3 requestId:(id)a4 prefixText:(id)a5 postfixText:(id)a6 selectedText:(id)a7;
- (void)startCorrectionSpeechRequestWithConfiguration:(id)a3 requestId:(id)a4 inputOrigin:(id)a5 utterance:(id)a6 previousUtterance:(id)a7 requestContextData:(id)a8;
- (void)startDictationRequestWithAssistantId:(id)a3 requestId:(id)a4 inputOrigin:(id)a5 dictationOptions:(id)a6;
- (void)startDictationSessionWithAssistantId:(id)a3 languageCode:(id)a4 recognitionOnDevice:(BOOL)a5 shouldClassifyIntent:(BOOL)a6 understandingOnDevice:(BOOL)a7;
- (void)startDirectActionRequestWithConfiguration:(id)a3 requestId:(id)a4 inputOrigin:(id)a5 utterance:(id)a6 directAction:(id)a7 requestExecutionParameters:(id)a8 requestContextData:(id)a9;
- (void)startLocalRequestWithConfiguration:(id)a3 requestId:(id)a4 inputOrigin:(id)a5 requestContextData:(id)a6;
- (void)startSessionIfNeededWithConfiguration:(id)a3;
- (void)startSpeechRequestWithConfiguration:(id)a3 requestId:(id)a4 inputOrigin:(id)a5 location:(id)a6 asrOnServer:(BOOL)a7 requestContextData:(id)a8;
- (void)startTextRequestWithConfiguration:(id)a3 requestId:(id)a4 inputOrigin:(id)a5 utterance:(id)a6 requestContextData:(id)a7;
- (void)startUnderstandingOnServerRequestWithConfiguration:(id)a3 requestId:(id)a4 inputOrigin:(id)a5;
- (void)startUnderstandingOnServerTextRequestWithConfiguration:(id)a3 requestId:(id)a4 inputOrigin:(id)a5 utterance:(id)a6 requestContextData:(id)a7;
- (void)updateConversationContextForRemoteResponseWithAssistantId:(id)a3 requestId:(id)a4 fullSpeak:(id)a5 redactedFullSpeak:(id)a6 fullPrint:(id)a7 redactedFullPrint:(id)a8 listenAfterSpeaking:(BOOL)a9;
- (void)updateVoiceCommandContextWithAssistantId:(id)a3 requestId:(id)a4 prefixText:(id)a5 postfixText:(id)a6 selectedText:(id)a7 disambiguationActive:(id)a8 cursorInVisibleText:(id)a9 favorCommandSuppression:(id)a10 abortCommandSuppression:(id)a11 undoEvent:(id)a12;
@end

@implementation ADRequestDispatcherService

- (void)emitAIREventForSiriAvailabiltyWithLocale:(id)a3 countryCode:(id)a4 isAvailable:(BOOL)a5 orchestrationMode:(unint64_t)a6 unavailabilityReasons:(unint64_t)a7
{
  v9 = a5;
  v13 = a3;
  v12 = a4;
  if (objc_opt_respondsToSelector())
  {
    [(AFRequestDispatcher *)self->_requestDispatcher emitAIREventForSiriAvailabiltyWithLocale:v13 countryCode:v12 isAvailable:v9 orchestrationMode:a6 unavailabilityReasons:a7];
  }
}

- (void)emitAIREventsForSiriRequestWithRequestId:(id)a3 missingAssets:(unint64_t)a4
{
  v6 = a3;
  if (objc_opt_respondsToSelector())
  {
    [(AFRequestDispatcher *)self->_requestDispatcher emitAIREventsForSiriRequestWithRequestId:v6 missingAssets:a4];
  }
}

- (id)sanitizeVoiceTriggerEventInfo:(id)a3
{
  v3 = a3;
  if (v3)
  {
    v4 = v3;
    +[NSMutableDictionary dictionary];
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_100233A50;
    v9 = v8[3] = &unk_100517450;
    v5 = v9;
    [v4 enumerateKeysAndObjectsUsingBlock:v8];
    v6 = [v5 copy];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)_getDefaultAssistantIdForAssistantId:(id)a3
{
  v4 = a3;
  v5 = v4;
  defaultDictationAssistantId = self->_defaultDictationAssistantId;
  if (defaultDictationAssistantId)
  {
    v7 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_DEBUG))
    {
      v12 = 136315394;
      v13 = "[ADRequestDispatcherService _getDefaultAssistantIdForAssistantId:]";
      v14 = 2112;
      v15 = defaultDictationAssistantId;
      _os_log_debug_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEBUG, "%s Using defaultDictationAssistantId since assistantId it is not nil %@", &v12, 0x16u);
      defaultDictationAssistantId = self->_defaultDictationAssistantId;
    }

    v8 = defaultDictationAssistantId;
    goto LABEL_7;
  }

  if (v4)
  {
    v8 = v4;
LABEL_7:
    v9 = v8;
    goto LABEL_8;
  }

  v11 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR))
  {
    v12 = 136315138;
    v13 = "[ADRequestDispatcherService _getDefaultAssistantIdForAssistantId:]";
    _os_log_error_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, "%s Processing dictation request without an assistantId and defaultDictationAssistantId is also nil. This is unexpected (did Assistant + Siri was disabled during request?), request will likely timeout", &v12, 0xCu);
  }

  v9 = 0;
LABEL_8:

  return v9;
}

- (void)announceNotificationHandlingStateUpdatedWithAssistantId:(id)a3 toState:(int64_t)a4
{
  v6 = [(ADRequestDispatcherService *)self _getDefaultAssistantIdForAssistantId:a3];
  if (objc_opt_respondsToSelector())
  {
    [(AFRequestDispatcher *)self->_requestDispatcher announceNotificationHandlingStateUpdatedWithAssistantId:v6 toState:a4];
  }

  else
  {
    v7 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR))
    {
      v8 = 136315138;
      v9 = "[ADRequestDispatcherService announceNotificationHandlingStateUpdatedWithAssistantId:toState:]";
      _os_log_error_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "%s SRD has not implemented announceNotificationHandlingStateUpdatedWithAssistantId:toState: yet. Ignoring", &v8, 0xCu);
    }
  }
}

- (void)updateConversationContextForRemoteResponseWithAssistantId:(id)a3 requestId:(id)a4 fullSpeak:(id)a5 redactedFullSpeak:(id)a6 fullPrint:(id)a7 redactedFullPrint:(id)a8 listenAfterSpeaking:(BOOL)a9
{
  v15 = a3;
  v16 = a4;
  v17 = a5;
  v18 = a6;
  v19 = a7;
  v20 = a8;
  if (objc_opt_respondsToSelector())
  {
    LOBYTE(v22) = a9;
    [(AFRequestDispatcher *)self->_requestDispatcher updateConversationContextForRemoteResponseWithAssistantId:v15 requestId:v16 fullSpeak:v17 redactedFullSpeak:v18 fullPrint:v19 redactedFullPrint:v20 listenAfterSpeaking:v22];
  }

  else
  {
    v21 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315138;
      v24 = "[ADRequestDispatcherService updateConversationContextForRemoteResponseWithAssistantId:requestId:fullSpeak:redactedFullSpeak:fullPrint:redactedFullPrint:listenAfterSpeaking:]";
      _os_log_error_impl(&_mh_execute_header, v21, OS_LOG_TYPE_ERROR, "%s SRD has not implemented updateConversationContextForRemoteResponseWithAssistantId:requestId:fullSpeak:redactedFullSpeak:fullPrint:redactedFullPrint: yet. Ignoring", buf, 0xCu);
    }
  }
}

- (void)updateVoiceCommandContextWithAssistantId:(id)a3 requestId:(id)a4 prefixText:(id)a5 postfixText:(id)a6 selectedText:(id)a7 disambiguationActive:(id)a8 cursorInVisibleText:(id)a9 favorCommandSuppression:(id)a10 abortCommandSuppression:(id)a11 undoEvent:(id)a12
{
  v27 = a4;
  v17 = a5;
  v18 = a6;
  v19 = a7;
  v20 = a8;
  v21 = a9;
  v22 = a10;
  v23 = a11;
  v24 = a12;
  v26 = [(ADRequestDispatcherService *)self _getDefaultAssistantIdForAssistantId:a3];
  if (objc_opt_respondsToSelector())
  {
    [(AFRequestDispatcher *)self->_requestDispatcher updateVoiceCommandContextWithAssistantId:v26 requestId:v27 prefixText:v17 postfixText:v18 selectedText:v19 disambiguationActive:v20 cursorInVisibleText:v21 favorCommandSuppression:v22 abortCommandSuppression:v23 undoEvent:v24];
  }
}

- (void)resumeDictationRecognitionWithAssistantId:(id)a3 requestId:(id)a4 prefixText:(id)a5 postfixText:(id)a6 selectedText:(id)a7
{
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v15 = a7;
  v16 = [(ADRequestDispatcherService *)self _getDefaultAssistantIdForAssistantId:a3];
  if (objc_opt_respondsToSelector())
  {
    [(AFRequestDispatcher *)self->_requestDispatcher resumeDictationRecognitionWithAssistantId:v16 requestId:v12 prefixText:v13 postfixText:v14 selectedText:v15];
  }

  else
  {
    v17 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR))
    {
      v18 = 136315138;
      v19 = "[ADRequestDispatcherService resumeDictationRecognitionWithAssistantId:requestId:prefixText:postfixText:selectedText:]";
      _os_log_error_impl(&_mh_execute_header, v17, OS_LOG_TYPE_ERROR, "%s SRD has not implemented resumeDictationRecognitionWithAssistantId:requestId:prefixText:postfixText:selected yet. Ignoring", &v18, 0xCu);
    }
  }
}

- (void)pauseDictationRecognitionWithAssistantId:(id)a3 requestId:(id)a4
{
  v6 = a4;
  v7 = [(ADRequestDispatcherService *)self _getDefaultAssistantIdForAssistantId:a3];
  if (objc_opt_respondsToSelector())
  {
    [(AFRequestDispatcher *)self->_requestDispatcher pauseDictationRecognitionWithAssistantId:v7 requestId:v6];
  }

  else
  {
    v8 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR))
    {
      v9 = 136315138;
      v10 = "[ADRequestDispatcherService pauseDictationRecognitionWithAssistantId:requestId:]";
      _os_log_error_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "%s SRD has not implemented pauseDictationRecognitionWithAssistantId:requestId: yet. Ignoring", &v9, 0xCu);
    }
  }
}

- (void)endDictationSessionWithAssistantId:(id)a3
{
  v4 = [(ADRequestDispatcherService *)self _getDefaultAssistantIdForAssistantId:a3];
  v5 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_DEBUG))
  {
    v8 = 136315138;
    v9 = "[ADRequestDispatcherService endDictationSessionWithAssistantId:]";
    _os_log_debug_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEBUG, "%s Clearing defaultDictationAssistantId at the end of dictation session", &v8, 0xCu);
  }

  defaultDictationAssistantId = self->_defaultDictationAssistantId;
  self->_defaultDictationAssistantId = 0;

  if (objc_opt_respondsToSelector())
  {
    [(AFRequestDispatcher *)self->_requestDispatcher endDictationSessionWithAssistantId:v4];
  }

  else
  {
    v7 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
    {
      v8 = 136315138;
      v9 = "[ADRequestDispatcherService endDictationSessionWithAssistantId:]";
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "%s SRD has not implemented endDictationSessionWithAssistantId yet.", &v8, 0xCu);
    }
  }
}

- (void)startDictationRequestWithAssistantId:(id)a3 requestId:(id)a4 inputOrigin:(id)a5 dictationOptions:(id)a6
{
  v10 = a4;
  v11 = a5;
  v12 = a6;
  v13 = [(ADRequestDispatcherService *)self _getDefaultAssistantIdForAssistantId:a3];
  if (![v12 shouldClassifyIntent])
  {
    if (objc_opt_respondsToSelector())
    {
      [(AFRequestDispatcher *)self->_requestDispatcher startSpeechDictationRequestWithAssistantId:v13 requestId:v10 inputOrigin:v11 dictationOptions:v12];
      goto LABEL_9;
    }

    v14 = AFSiriLogContextDaemon;
    if (!os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_9;
    }

    v16 = 136315138;
    v17 = "[ADRequestDispatcherService startDictationRequestWithAssistantId:requestId:inputOrigin:dictationOptions:]";
    v15 = "%s SRD has not implemented startSpeechDictationRequestWithAssistantId:requestId:inputOrigin:dictationOptions: yet. Request will have undefined behavior (will likely timeout)";
LABEL_11:
    _os_log_error_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, v15, &v16, 0xCu);
    goto LABEL_9;
  }

  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    v14 = AFSiriLogContextDaemon;
    if (!os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_9;
    }

    v16 = 136315138;
    v17 = "[ADRequestDispatcherService startDictationRequestWithAssistantId:requestId:inputOrigin:dictationOptions:]";
    v15 = "%s SRD has not implemented startUnderstandingDictationRequestWithAssistantId:requestId:inputOrigin:dictationOptions: yet. Request will have undefined behavior (will likely timeout)";
    goto LABEL_11;
  }

  [(AFRequestDispatcher *)self->_requestDispatcher startUnderstandingDictationRequestWithAssistantId:v13 requestId:v10 inputOrigin:v11 dictationOptions:v12];
LABEL_9:
}

- (void)startDictationSessionWithAssistantId:(id)a3 languageCode:(id)a4 recognitionOnDevice:(BOOL)a5 shouldClassifyIntent:(BOOL)a6 understandingOnDevice:(BOOL)a7
{
  v7 = a7;
  v8 = a6;
  v9 = a5;
  v12 = a3;
  v13 = a4;
  defaultDictationAssistantId = self->_defaultDictationAssistantId;
  if (v12)
  {
    if (defaultDictationAssistantId)
    {
      v15 = AFSiriLogContextDaemon;
      if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_DEBUG))
      {
        v25 = 136315138;
        v26 = "[ADRequestDispatcherService startDictationSessionWithAssistantId:languageCode:recognitionOnDevice:shouldClassifyIntent:understandingOnDevice:]";
        _os_log_debug_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEBUG, "%s Starting a dictation session but defaultDictationAssistantId is not nil, was endSession for last session called? Resetting defaultDictationAssistantId to nil, SRD will end previous session automatically", &v25, 0xCu);
        defaultDictationAssistantId = self->_defaultDictationAssistantId;
      }

      self->_defaultDictationAssistantId = 0;
    }
  }

  else
  {
    if (defaultDictationAssistantId)
    {
      v16 = AFSiriLogContextDaemon;
      if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR))
      {
        v25 = 136315394;
        v26 = "[ADRequestDispatcherService startDictationSessionWithAssistantId:languageCode:recognitionOnDevice:shouldClassifyIntent:understandingOnDevice:]";
        v27 = 2112;
        v28 = defaultDictationAssistantId;
        _os_log_error_impl(&_mh_execute_header, v16, OS_LOG_TYPE_ERROR, "%s Starting dictation session without an assistantId but defaultDictationAssistantId is not nil %@. This is unexpected, but still creating a new defaultDictationAssistantId", &v25, 0x16u);
      }
    }

    v17 = +[NSUUID UUID];
    v18 = [v17 UUIDString];
    v19 = [v18 stringByAppendingString:@"-defaultDictationAssistantId"];
    v20 = self->_defaultDictationAssistantId;
    self->_defaultDictationAssistantId = v19;

    v12 = self->_defaultDictationAssistantId;
    v21 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_DEBUG))
    {
      v24 = self->_defaultDictationAssistantId;
      v25 = 136315394;
      v26 = "[ADRequestDispatcherService startDictationSessionWithAssistantId:languageCode:recognitionOnDevice:shouldClassifyIntent:understandingOnDevice:]";
      v27 = 2112;
      v28 = v24;
      _os_log_debug_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEBUG, "%s Created a new default assistantId for dictation %@", &v25, 0x16u);
    }
  }

  if (!v8)
  {
    if (objc_opt_respondsToSelector())
    {
      [(AFRequestDispatcher *)self->_requestDispatcher startSpeechDictationSessionWithAssistantId:v12 languageCode:v13 recognitionOnDevice:v9];
      goto LABEL_19;
    }

    v22 = AFSiriLogContextDaemon;
    if (!os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_19;
    }

    v25 = 136315138;
    v26 = "[ADRequestDispatcherService startDictationSessionWithAssistantId:languageCode:recognitionOnDevice:shouldClassifyIntent:understandingOnDevice:]";
    v23 = "%s SRD has not implemented startSpeechDictationSessionWithAssistantId:languageCode:recognitionOnDevice: yet. Request will have undefined behavior (will likely timeout)";
LABEL_21:
    _os_log_error_impl(&_mh_execute_header, v22, OS_LOG_TYPE_ERROR, v23, &v25, 0xCu);
    goto LABEL_19;
  }

  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    v22 = AFSiriLogContextDaemon;
    if (!os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_19;
    }

    v25 = 136315138;
    v26 = "[ADRequestDispatcherService startDictationSessionWithAssistantId:languageCode:recognitionOnDevice:shouldClassifyIntent:understandingOnDevice:]";
    v23 = "%s SRD has not implemented startUnderstandingDictationSessionWithAssistantId:languageCode:understandingOnDevice: yet. Request will have undefined behavior (will likely timeout)";
    goto LABEL_21;
  }

  [(AFRequestDispatcher *)self->_requestDispatcher startUnderstandingDictationSessionWithAssistantId:v12 languageCode:v13 understandingOnDevice:v7];
LABEL_19:
}

- (void)startSessionIfNeededWithConfiguration:(id)a3
{
  v4 = a3;
  requestDispatcher = self->_requestDispatcher;
  v6 = [v4 assistantId];
  v7 = [(AFRequestDispatcher *)requestDispatcher sessionExistsForAssistantId:v6];

  v8 = AFSiriLogContextDaemon;
  v9 = os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_DEBUG);
  if (v7)
  {
    if (v9)
    {
      v10 = v8;
      v11 = [v4 assistantId];
      v14 = 136315394;
      v15 = "[ADRequestDispatcherService startSessionIfNeededWithConfiguration:]";
      v16 = 2112;
      v17 = v11;
      _os_log_debug_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEBUG, "%s session for assistantId: %@ exists not creating one", &v14, 0x16u);
    }
  }

  else
  {
    if (v9)
    {
      v12 = v8;
      v13 = [v4 assistantId];
      v14 = 136315394;
      v15 = "[ADRequestDispatcherService startSessionIfNeededWithConfiguration:]";
      v16 = 2112;
      v17 = v13;
      _os_log_debug_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEBUG, "%s session for assistantId: %@ not exists creating one", &v14, 0x16u);
    }

    [(ADRequestDispatcherService *)self startSessionWithConfiguration:v4];
  }
}

- (void)startUnderstandingOnServerTextRequestWithConfiguration:(id)a3 requestId:(id)a4 inputOrigin:(id)a5 utterance:(id)a6 requestContextData:(id)a7
{
  v12 = a7;
  v13 = a6;
  v14 = a5;
  v15 = a4;
  v16 = a3;
  [(ADRequestDispatcherService *)self startSessionIfNeededWithConfiguration:v16];
  requestDispatcher = self->_requestDispatcher;
  v18 = [v16 assistantId];

  [(AFRequestDispatcher *)requestDispatcher startUnderstandingOnServerTextRequestWithAssistantId:v18 requestId:v15 inputOrigin:v14 utterance:v13 requestContextData:v12];
}

- (void)startTextRequestWithConfiguration:(id)a3 requestId:(id)a4 inputOrigin:(id)a5 utterance:(id)a6 requestContextData:(id)a7
{
  v12 = a7;
  v13 = a6;
  v14 = a5;
  v15 = a4;
  v16 = a3;
  [(ADRequestDispatcherService *)self startSessionIfNeededWithConfiguration:v16];
  requestDispatcher = self->_requestDispatcher;
  v18 = [v16 assistantId];

  [(AFRequestDispatcher *)requestDispatcher startTextRequestWithAssistantId:v18 requestId:v15 inputOrigin:v14 utterance:v13 requestContextData:v12];
}

- (void)startDirectActionRequestWithConfiguration:(id)a3 requestId:(id)a4 inputOrigin:(id)a5 utterance:(id)a6 directAction:(id)a7 requestExecutionParameters:(id)a8 requestContextData:(id)a9
{
  v16 = a9;
  v17 = a8;
  v18 = a7;
  v19 = a6;
  v20 = a5;
  v21 = a4;
  v22 = a3;
  [(ADRequestDispatcherService *)self startSessionIfNeededWithConfiguration:v22];
  requestDispatcher = self->_requestDispatcher;
  v24 = [v22 assistantId];

  [(AFRequestDispatcher *)requestDispatcher startDirectActionRequestWithAssistantId:v24 requestId:v21 inputOrigin:v20 utterance:v19 directAction:v18 requestExecutionParameters:v17 requestContextData:v16];
}

- (void)startUnderstandingOnServerRequestWithConfiguration:(id)a3 requestId:(id)a4 inputOrigin:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  [(ADRequestDispatcherService *)self startSessionIfNeededWithConfiguration:v10];
  requestDispatcher = self->_requestDispatcher;
  v12 = [v10 assistantId];

  [(AFRequestDispatcher *)requestDispatcher startUnderstandingOnServerRequestWithAssistantId:v12 requestId:v9 inputOrigin:v8];
}

- (void)startCorrectionSpeechRequestWithConfiguration:(id)a3 requestId:(id)a4 inputOrigin:(id)a5 utterance:(id)a6 previousUtterance:(id)a7 requestContextData:(id)a8
{
  requestDispatcher = self->_requestDispatcher;
  v14 = a8;
  v15 = a7;
  v16 = a6;
  v17 = a5;
  v18 = a4;
  v19 = [a3 assistantId];
  [(AFRequestDispatcher *)requestDispatcher startCorrectionSpeechRequestWithAssistantId:v19 requestId:v18 inputOrigin:v17 utterance:v16 previousUtterance:v15 requestContextData:v14];
}

- (void)startLocalRequestWithConfiguration:(id)a3 requestId:(id)a4 inputOrigin:(id)a5 requestContextData:(id)a6
{
  requestDispatcher = self->_requestDispatcher;
  v10 = a6;
  v11 = a5;
  v12 = a4;
  v13 = [a3 assistantId];
  [(AFRequestDispatcher *)requestDispatcher startLocalRequestWithAssistantId:v13 requestId:v12 inputOrigin:v11 requestContextData:v10];
}

- (void)startSpeechRequestWithConfiguration:(id)a3 requestId:(id)a4 inputOrigin:(id)a5 location:(id)a6 asrOnServer:(BOOL)a7 requestContextData:(id)a8
{
  v8 = a7;
  v14 = a8;
  v15 = a6;
  v16 = a5;
  v17 = a4;
  v18 = a3;
  [(ADRequestDispatcherService *)self startSessionIfNeededWithConfiguration:v18];
  requestDispatcher = self->_requestDispatcher;
  v20 = [v18 assistantId];

  [(AFRequestDispatcher *)requestDispatcher startSpeechRequestWithAssistantId:v20 requestId:v17 inputOrigin:v16 location:v15 asrOnServer:v8 requestContextData:v14];
}

- (void)_logPowerContextForRequest:(id)a3
{
  v3 = [(AFPowerContextClient *)self->_powerContext currentPowerPolicyWithError:0];
  v4 = AFSiriLogContextDaemon;
  v5 = os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_DEBUG);
  if (v3)
  {
    if (v5)
    {
      v16 = v4;
      v17 = [v3 description];
      v18 = 136315394;
      v19 = "[ADRequestDispatcherService _logPowerContextForRequest:]";
      v20 = 2112;
      v21 = v17;
      _os_log_debug_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEBUG, "%s Power context policy exists: %@", &v18, 0x16u);
    }

    if (AFIsInternalInstall())
    {
      v6 = AFSiriLogContextPower;
      v7 = os_signpost_id_generate(AFSiriLogContextPower);
      if (v7 - 1 > 0xFFFFFFFFFFFFFFFDLL)
      {
        goto LABEL_15;
      }

      v8 = v7;
      if (!os_signpost_enabled(v6))
      {
        goto LABEL_15;
      }

      v9 = [v3 thermalMitigationLevel];
      v18 = 67109120;
      LODWORD(v19) = v9;
      v10 = "%d";
      v11 = v6;
      v12 = v8;
      v13 = 8;
LABEL_14:
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v11, OS_SIGNPOST_EVENT, v12, "ThermalMitigationLevel", v10, &v18, v13);
LABEL_15:
    }
  }

  else
  {
    if (v5)
    {
      v18 = 136315138;
      v19 = "[ADRequestDispatcherService _logPowerContextForRequest:]";
      _os_log_debug_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEBUG, "%s Power context policy is nil", &v18, 0xCu);
    }

    if (AFIsInternalInstall())
    {
      v6 = AFSiriLogContextPower;
      v14 = os_signpost_id_generate(AFSiriLogContextPower);
      if (v14 - 1 > 0xFFFFFFFFFFFFFFFDLL)
      {
        goto LABEL_15;
      }

      v15 = v14;
      if (!os_signpost_enabled(v6))
      {
        goto LABEL_15;
      }

      LOWORD(v18) = 0;
      v10 = "UNKNOWN";
      v11 = v6;
      v12 = v15;
      v13 = 2;
      goto LABEL_14;
    }
  }
}

- (void)requestFailedWithAssistantId:(id)a3 requestId:(id)a4
{
  v7 = a3;
  v6 = a4;
  if (objc_opt_respondsToSelector())
  {
    [(AFRequestDispatcher *)self->_requestDispatcher requestFailedWithAssistantId:v7 requestId:v6];
  }

  [(ADRequestDispatcherService *)self _logPowerContextForRequest:v6];
}

- (void)requestCompletedWithAssistantId:(id)a3 requestId:(id)a4
{
  requestDispatcher = self->_requestDispatcher;
  v7 = a4;
  [(AFRequestDispatcher *)requestDispatcher requestCompletedWithAssistantId:a3 requestId:v7];
  [(ADRequestDispatcherService *)self _logPowerContextForRequest:v7];
}

- (void)handleCommand:(id)a3 forDomain:(id)a4 executionContext:(id)a5 reply:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = v13;
  requestDispatcher = self->_requestDispatcher;
  if (requestDispatcher)
  {
    v16 = [v12 info];
    v18[0] = _NSConcreteStackBlock;
    v18[1] = 3221225472;
    v18[2] = sub_1002355A0;
    v18[3] = &unk_10051CD88;
    v19 = v14;
    [(AFRequestDispatcher *)requestDispatcher handleCommand:v10 executionContextInfo:v16 reply:v18];
  }

  else if (v13)
  {
    v17 = [AFError errorWithCode:44];
    (v14)[2](v14, 0, v17);
  }
}

- (void)cancelOperationsForRequestID:(id)a3 forAssistantID:(id)a4 fromRemote:(BOOL)a5 reason:(int64_t)a6
{
  v7 = a5;
  v10 = a3;
  v11 = a4;
  v12 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_DEBUG))
  {
    v13 = 136315650;
    v14 = "[ADRequestDispatcherService cancelOperationsForRequestID:forAssistantID:fromRemote:reason:]";
    v15 = 2112;
    v16 = v10;
    v17 = 1024;
    v18 = v7;
    _os_log_debug_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEBUG, "%s request Id: %@, from remote: %d", &v13, 0x1Cu);
  }

  if (objc_opt_respondsToSelector())
  {
    [(AFRequestDispatcher *)self->_requestDispatcher cancelRequestWithAssistantId:v11 requestId:v10 reason:a6];
  }

  [(ADRequestDispatcherService *)self _logPowerContextForRequest:v10];
}

- (ADRequestDispatcherService)initWithRequestDispatcher:(id)a3
{
  v5 = a3;
  v11.receiver = self;
  v11.super_class = ADRequestDispatcherService;
  v6 = [(ADRequestDispatcherService *)&v11 init];
  v7 = v6;
  if (v6)
  {
    [(ADService *)v6 setIdentifier:@"RequestDispatcherService"];
    objc_storeStrong(&v7->_requestDispatcher, a3);
    v8 = objc_opt_new();
    powerContext = v7->_powerContext;
    v7->_powerContext = v8;
  }

  return v7;
}

- (ADRequestDispatcherService)initWithBridgeConnectionListeners:(id)a3
{
  v4 = a3;
  v5 = [SRDRequestDispatcher alloc];
  v6 = objc_opt_respondsToSelector();
  v7 = v5;
  v8 = objc_alloc_init(ADRequestDispatcherServiceHelper);
  if (v6)
  {
    v9 = [v7 initWithRequestDispatcherServiceHelper:v8 bridgeConnectionListeners:v4];
  }

  else
  {
    v9 = [v7 initWithRequestDispatcherServiceHelper:v8];
  }

  v10 = v9;

  v11 = [(ADRequestDispatcherService *)self initWithRequestDispatcher:v10];
  return v11;
}

- (ADRequestDispatcherService)init
{
  v3 = objc_alloc_init(NSArray);
  v4 = [(ADRequestDispatcherService *)self initWithBridgeConnectionListeners:v3];

  return v4;
}

@end