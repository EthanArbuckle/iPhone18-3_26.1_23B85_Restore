@interface ADRequestDispatcherService
- (ADRequestDispatcherService)init;
- (ADRequestDispatcherService)initWithBridgeConnectionListeners:(id)listeners;
- (ADRequestDispatcherService)initWithRequestDispatcher:(id)dispatcher;
- (id)_getDefaultAssistantIdForAssistantId:(id)id;
- (id)sanitizeVoiceTriggerEventInfo:(id)info;
- (void)_logPowerContextForRequest:(id)request;
- (void)announceNotificationHandlingStateUpdatedWithAssistantId:(id)id toState:(int64_t)state;
- (void)cancelOperationsForRequestID:(id)d forAssistantID:(id)iD fromRemote:(BOOL)remote reason:(int64_t)reason;
- (void)emitAIREventForSiriAvailabiltyWithLocale:(id)locale countryCode:(id)code isAvailable:(BOOL)available orchestrationMode:(unint64_t)mode unavailabilityReasons:(unint64_t)reasons;
- (void)emitAIREventsForSiriRequestWithRequestId:(id)id missingAssets:(unint64_t)assets;
- (void)endDictationSessionWithAssistantId:(id)id;
- (void)handleCommand:(id)command forDomain:(id)domain executionContext:(id)context reply:(id)reply;
- (void)pauseDictationRecognitionWithAssistantId:(id)id requestId:(id)requestId;
- (void)requestCompletedWithAssistantId:(id)id requestId:(id)requestId;
- (void)requestFailedWithAssistantId:(id)id requestId:(id)requestId;
- (void)resumeDictationRecognitionWithAssistantId:(id)id requestId:(id)requestId prefixText:(id)text postfixText:(id)postfixText selectedText:(id)selectedText;
- (void)startCorrectionSpeechRequestWithConfiguration:(id)configuration requestId:(id)id inputOrigin:(id)origin utterance:(id)utterance previousUtterance:(id)previousUtterance requestContextData:(id)data;
- (void)startDictationRequestWithAssistantId:(id)id requestId:(id)requestId inputOrigin:(id)origin dictationOptions:(id)options;
- (void)startDictationSessionWithAssistantId:(id)id languageCode:(id)code recognitionOnDevice:(BOOL)device shouldClassifyIntent:(BOOL)intent understandingOnDevice:(BOOL)onDevice;
- (void)startDirectActionRequestWithConfiguration:(id)configuration requestId:(id)id inputOrigin:(id)origin utterance:(id)utterance directAction:(id)action requestExecutionParameters:(id)parameters requestContextData:(id)data;
- (void)startLocalRequestWithConfiguration:(id)configuration requestId:(id)id inputOrigin:(id)origin requestContextData:(id)data;
- (void)startSessionIfNeededWithConfiguration:(id)configuration;
- (void)startSpeechRequestWithConfiguration:(id)configuration requestId:(id)id inputOrigin:(id)origin location:(id)location asrOnServer:(BOOL)server requestContextData:(id)data;
- (void)startTextRequestWithConfiguration:(id)configuration requestId:(id)id inputOrigin:(id)origin utterance:(id)utterance requestContextData:(id)data;
- (void)startUnderstandingOnServerRequestWithConfiguration:(id)configuration requestId:(id)id inputOrigin:(id)origin;
- (void)startUnderstandingOnServerTextRequestWithConfiguration:(id)configuration requestId:(id)id inputOrigin:(id)origin utterance:(id)utterance requestContextData:(id)data;
- (void)updateConversationContextForRemoteResponseWithAssistantId:(id)id requestId:(id)requestId fullSpeak:(id)speak redactedFullSpeak:(id)fullSpeak fullPrint:(id)print redactedFullPrint:(id)fullPrint listenAfterSpeaking:(BOOL)speaking;
- (void)updateVoiceCommandContextWithAssistantId:(id)id requestId:(id)requestId prefixText:(id)text postfixText:(id)postfixText selectedText:(id)selectedText disambiguationActive:(id)active cursorInVisibleText:(id)visibleText favorCommandSuppression:(id)self0 abortCommandSuppression:(id)self1 undoEvent:(id)self2;
@end

@implementation ADRequestDispatcherService

- (void)emitAIREventForSiriAvailabiltyWithLocale:(id)locale countryCode:(id)code isAvailable:(BOOL)available orchestrationMode:(unint64_t)mode unavailabilityReasons:(unint64_t)reasons
{
  availableCopy = available;
  localeCopy = locale;
  codeCopy = code;
  if (objc_opt_respondsToSelector())
  {
    [(AFRequestDispatcher *)self->_requestDispatcher emitAIREventForSiriAvailabiltyWithLocale:localeCopy countryCode:codeCopy isAvailable:availableCopy orchestrationMode:mode unavailabilityReasons:reasons];
  }
}

- (void)emitAIREventsForSiriRequestWithRequestId:(id)id missingAssets:(unint64_t)assets
{
  idCopy = id;
  if (objc_opt_respondsToSelector())
  {
    [(AFRequestDispatcher *)self->_requestDispatcher emitAIREventsForSiriRequestWithRequestId:idCopy missingAssets:assets];
  }
}

- (id)sanitizeVoiceTriggerEventInfo:(id)info
{
  infoCopy = info;
  if (infoCopy)
  {
    v4 = infoCopy;
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

- (id)_getDefaultAssistantIdForAssistantId:(id)id
{
  idCopy = id;
  v5 = idCopy;
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

  if (idCopy)
  {
    v8 = idCopy;
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

- (void)announceNotificationHandlingStateUpdatedWithAssistantId:(id)id toState:(int64_t)state
{
  v6 = [(ADRequestDispatcherService *)self _getDefaultAssistantIdForAssistantId:id];
  if (objc_opt_respondsToSelector())
  {
    [(AFRequestDispatcher *)self->_requestDispatcher announceNotificationHandlingStateUpdatedWithAssistantId:v6 toState:state];
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

- (void)updateConversationContextForRemoteResponseWithAssistantId:(id)id requestId:(id)requestId fullSpeak:(id)speak redactedFullSpeak:(id)fullSpeak fullPrint:(id)print redactedFullPrint:(id)fullPrint listenAfterSpeaking:(BOOL)speaking
{
  idCopy = id;
  requestIdCopy = requestId;
  speakCopy = speak;
  fullSpeakCopy = fullSpeak;
  printCopy = print;
  fullPrintCopy = fullPrint;
  if (objc_opt_respondsToSelector())
  {
    LOBYTE(v22) = speaking;
    [(AFRequestDispatcher *)self->_requestDispatcher updateConversationContextForRemoteResponseWithAssistantId:idCopy requestId:requestIdCopy fullSpeak:speakCopy redactedFullSpeak:fullSpeakCopy fullPrint:printCopy redactedFullPrint:fullPrintCopy listenAfterSpeaking:v22];
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

- (void)updateVoiceCommandContextWithAssistantId:(id)id requestId:(id)requestId prefixText:(id)text postfixText:(id)postfixText selectedText:(id)selectedText disambiguationActive:(id)active cursorInVisibleText:(id)visibleText favorCommandSuppression:(id)self0 abortCommandSuppression:(id)self1 undoEvent:(id)self2
{
  requestIdCopy = requestId;
  textCopy = text;
  postfixTextCopy = postfixText;
  selectedTextCopy = selectedText;
  activeCopy = active;
  visibleTextCopy = visibleText;
  suppressionCopy = suppression;
  commandSuppressionCopy = commandSuppression;
  eventCopy = event;
  v26 = [(ADRequestDispatcherService *)self _getDefaultAssistantIdForAssistantId:id];
  if (objc_opt_respondsToSelector())
  {
    [(AFRequestDispatcher *)self->_requestDispatcher updateVoiceCommandContextWithAssistantId:v26 requestId:requestIdCopy prefixText:textCopy postfixText:postfixTextCopy selectedText:selectedTextCopy disambiguationActive:activeCopy cursorInVisibleText:visibleTextCopy favorCommandSuppression:suppressionCopy abortCommandSuppression:commandSuppressionCopy undoEvent:eventCopy];
  }
}

- (void)resumeDictationRecognitionWithAssistantId:(id)id requestId:(id)requestId prefixText:(id)text postfixText:(id)postfixText selectedText:(id)selectedText
{
  requestIdCopy = requestId;
  textCopy = text;
  postfixTextCopy = postfixText;
  selectedTextCopy = selectedText;
  v16 = [(ADRequestDispatcherService *)self _getDefaultAssistantIdForAssistantId:id];
  if (objc_opt_respondsToSelector())
  {
    [(AFRequestDispatcher *)self->_requestDispatcher resumeDictationRecognitionWithAssistantId:v16 requestId:requestIdCopy prefixText:textCopy postfixText:postfixTextCopy selectedText:selectedTextCopy];
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

- (void)pauseDictationRecognitionWithAssistantId:(id)id requestId:(id)requestId
{
  requestIdCopy = requestId;
  v7 = [(ADRequestDispatcherService *)self _getDefaultAssistantIdForAssistantId:id];
  if (objc_opt_respondsToSelector())
  {
    [(AFRequestDispatcher *)self->_requestDispatcher pauseDictationRecognitionWithAssistantId:v7 requestId:requestIdCopy];
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

- (void)endDictationSessionWithAssistantId:(id)id
{
  v4 = [(ADRequestDispatcherService *)self _getDefaultAssistantIdForAssistantId:id];
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

- (void)startDictationRequestWithAssistantId:(id)id requestId:(id)requestId inputOrigin:(id)origin dictationOptions:(id)options
{
  requestIdCopy = requestId;
  originCopy = origin;
  optionsCopy = options;
  v13 = [(ADRequestDispatcherService *)self _getDefaultAssistantIdForAssistantId:id];
  if (![optionsCopy shouldClassifyIntent])
  {
    if (objc_opt_respondsToSelector())
    {
      [(AFRequestDispatcher *)self->_requestDispatcher startSpeechDictationRequestWithAssistantId:v13 requestId:requestIdCopy inputOrigin:originCopy dictationOptions:optionsCopy];
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

  [(AFRequestDispatcher *)self->_requestDispatcher startUnderstandingDictationRequestWithAssistantId:v13 requestId:requestIdCopy inputOrigin:originCopy dictationOptions:optionsCopy];
LABEL_9:
}

- (void)startDictationSessionWithAssistantId:(id)id languageCode:(id)code recognitionOnDevice:(BOOL)device shouldClassifyIntent:(BOOL)intent understandingOnDevice:(BOOL)onDevice
{
  onDeviceCopy = onDevice;
  intentCopy = intent;
  deviceCopy = device;
  idCopy = id;
  codeCopy = code;
  defaultDictationAssistantId = self->_defaultDictationAssistantId;
  if (idCopy)
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
    uUIDString = [v17 UUIDString];
    v19 = [uUIDString stringByAppendingString:@"-defaultDictationAssistantId"];
    v20 = self->_defaultDictationAssistantId;
    self->_defaultDictationAssistantId = v19;

    idCopy = self->_defaultDictationAssistantId;
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

  if (!intentCopy)
  {
    if (objc_opt_respondsToSelector())
    {
      [(AFRequestDispatcher *)self->_requestDispatcher startSpeechDictationSessionWithAssistantId:idCopy languageCode:codeCopy recognitionOnDevice:deviceCopy];
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

  [(AFRequestDispatcher *)self->_requestDispatcher startUnderstandingDictationSessionWithAssistantId:idCopy languageCode:codeCopy understandingOnDevice:onDeviceCopy];
LABEL_19:
}

- (void)startSessionIfNeededWithConfiguration:(id)configuration
{
  configurationCopy = configuration;
  requestDispatcher = self->_requestDispatcher;
  assistantId = [configurationCopy assistantId];
  v7 = [(AFRequestDispatcher *)requestDispatcher sessionExistsForAssistantId:assistantId];

  v8 = AFSiriLogContextDaemon;
  v9 = os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_DEBUG);
  if (v7)
  {
    if (v9)
    {
      v10 = v8;
      assistantId2 = [configurationCopy assistantId];
      v14 = 136315394;
      v15 = "[ADRequestDispatcherService startSessionIfNeededWithConfiguration:]";
      v16 = 2112;
      v17 = assistantId2;
      _os_log_debug_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEBUG, "%s session for assistantId: %@ exists not creating one", &v14, 0x16u);
    }
  }

  else
  {
    if (v9)
    {
      v12 = v8;
      assistantId3 = [configurationCopy assistantId];
      v14 = 136315394;
      v15 = "[ADRequestDispatcherService startSessionIfNeededWithConfiguration:]";
      v16 = 2112;
      v17 = assistantId3;
      _os_log_debug_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEBUG, "%s session for assistantId: %@ not exists creating one", &v14, 0x16u);
    }

    [(ADRequestDispatcherService *)self startSessionWithConfiguration:configurationCopy];
  }
}

- (void)startUnderstandingOnServerTextRequestWithConfiguration:(id)configuration requestId:(id)id inputOrigin:(id)origin utterance:(id)utterance requestContextData:(id)data
{
  dataCopy = data;
  utteranceCopy = utterance;
  originCopy = origin;
  idCopy = id;
  configurationCopy = configuration;
  [(ADRequestDispatcherService *)self startSessionIfNeededWithConfiguration:configurationCopy];
  requestDispatcher = self->_requestDispatcher;
  assistantId = [configurationCopy assistantId];

  [(AFRequestDispatcher *)requestDispatcher startUnderstandingOnServerTextRequestWithAssistantId:assistantId requestId:idCopy inputOrigin:originCopy utterance:utteranceCopy requestContextData:dataCopy];
}

- (void)startTextRequestWithConfiguration:(id)configuration requestId:(id)id inputOrigin:(id)origin utterance:(id)utterance requestContextData:(id)data
{
  dataCopy = data;
  utteranceCopy = utterance;
  originCopy = origin;
  idCopy = id;
  configurationCopy = configuration;
  [(ADRequestDispatcherService *)self startSessionIfNeededWithConfiguration:configurationCopy];
  requestDispatcher = self->_requestDispatcher;
  assistantId = [configurationCopy assistantId];

  [(AFRequestDispatcher *)requestDispatcher startTextRequestWithAssistantId:assistantId requestId:idCopy inputOrigin:originCopy utterance:utteranceCopy requestContextData:dataCopy];
}

- (void)startDirectActionRequestWithConfiguration:(id)configuration requestId:(id)id inputOrigin:(id)origin utterance:(id)utterance directAction:(id)action requestExecutionParameters:(id)parameters requestContextData:(id)data
{
  dataCopy = data;
  parametersCopy = parameters;
  actionCopy = action;
  utteranceCopy = utterance;
  originCopy = origin;
  idCopy = id;
  configurationCopy = configuration;
  [(ADRequestDispatcherService *)self startSessionIfNeededWithConfiguration:configurationCopy];
  requestDispatcher = self->_requestDispatcher;
  assistantId = [configurationCopy assistantId];

  [(AFRequestDispatcher *)requestDispatcher startDirectActionRequestWithAssistantId:assistantId requestId:idCopy inputOrigin:originCopy utterance:utteranceCopy directAction:actionCopy requestExecutionParameters:parametersCopy requestContextData:dataCopy];
}

- (void)startUnderstandingOnServerRequestWithConfiguration:(id)configuration requestId:(id)id inputOrigin:(id)origin
{
  originCopy = origin;
  idCopy = id;
  configurationCopy = configuration;
  [(ADRequestDispatcherService *)self startSessionIfNeededWithConfiguration:configurationCopy];
  requestDispatcher = self->_requestDispatcher;
  assistantId = [configurationCopy assistantId];

  [(AFRequestDispatcher *)requestDispatcher startUnderstandingOnServerRequestWithAssistantId:assistantId requestId:idCopy inputOrigin:originCopy];
}

- (void)startCorrectionSpeechRequestWithConfiguration:(id)configuration requestId:(id)id inputOrigin:(id)origin utterance:(id)utterance previousUtterance:(id)previousUtterance requestContextData:(id)data
{
  requestDispatcher = self->_requestDispatcher;
  dataCopy = data;
  previousUtteranceCopy = previousUtterance;
  utteranceCopy = utterance;
  originCopy = origin;
  idCopy = id;
  assistantId = [configuration assistantId];
  [(AFRequestDispatcher *)requestDispatcher startCorrectionSpeechRequestWithAssistantId:assistantId requestId:idCopy inputOrigin:originCopy utterance:utteranceCopy previousUtterance:previousUtteranceCopy requestContextData:dataCopy];
}

- (void)startLocalRequestWithConfiguration:(id)configuration requestId:(id)id inputOrigin:(id)origin requestContextData:(id)data
{
  requestDispatcher = self->_requestDispatcher;
  dataCopy = data;
  originCopy = origin;
  idCopy = id;
  assistantId = [configuration assistantId];
  [(AFRequestDispatcher *)requestDispatcher startLocalRequestWithAssistantId:assistantId requestId:idCopy inputOrigin:originCopy requestContextData:dataCopy];
}

- (void)startSpeechRequestWithConfiguration:(id)configuration requestId:(id)id inputOrigin:(id)origin location:(id)location asrOnServer:(BOOL)server requestContextData:(id)data
{
  serverCopy = server;
  dataCopy = data;
  locationCopy = location;
  originCopy = origin;
  idCopy = id;
  configurationCopy = configuration;
  [(ADRequestDispatcherService *)self startSessionIfNeededWithConfiguration:configurationCopy];
  requestDispatcher = self->_requestDispatcher;
  assistantId = [configurationCopy assistantId];

  [(AFRequestDispatcher *)requestDispatcher startSpeechRequestWithAssistantId:assistantId requestId:idCopy inputOrigin:originCopy location:locationCopy asrOnServer:serverCopy requestContextData:dataCopy];
}

- (void)_logPowerContextForRequest:(id)request
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

      thermalMitigationLevel = [v3 thermalMitigationLevel];
      v18 = 67109120;
      LODWORD(v19) = thermalMitigationLevel;
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

- (void)requestFailedWithAssistantId:(id)id requestId:(id)requestId
{
  idCopy = id;
  requestIdCopy = requestId;
  if (objc_opt_respondsToSelector())
  {
    [(AFRequestDispatcher *)self->_requestDispatcher requestFailedWithAssistantId:idCopy requestId:requestIdCopy];
  }

  [(ADRequestDispatcherService *)self _logPowerContextForRequest:requestIdCopy];
}

- (void)requestCompletedWithAssistantId:(id)id requestId:(id)requestId
{
  requestDispatcher = self->_requestDispatcher;
  requestIdCopy = requestId;
  [(AFRequestDispatcher *)requestDispatcher requestCompletedWithAssistantId:id requestId:requestIdCopy];
  [(ADRequestDispatcherService *)self _logPowerContextForRequest:requestIdCopy];
}

- (void)handleCommand:(id)command forDomain:(id)domain executionContext:(id)context reply:(id)reply
{
  commandCopy = command;
  domainCopy = domain;
  contextCopy = context;
  replyCopy = reply;
  v14 = replyCopy;
  requestDispatcher = self->_requestDispatcher;
  if (requestDispatcher)
  {
    info = [contextCopy info];
    v18[0] = _NSConcreteStackBlock;
    v18[1] = 3221225472;
    v18[2] = sub_1002355A0;
    v18[3] = &unk_10051CD88;
    v19 = v14;
    [(AFRequestDispatcher *)requestDispatcher handleCommand:commandCopy executionContextInfo:info reply:v18];
  }

  else if (replyCopy)
  {
    v17 = [AFError errorWithCode:44];
    (v14)[2](v14, 0, v17);
  }
}

- (void)cancelOperationsForRequestID:(id)d forAssistantID:(id)iD fromRemote:(BOOL)remote reason:(int64_t)reason
{
  remoteCopy = remote;
  dCopy = d;
  iDCopy = iD;
  v12 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_DEBUG))
  {
    v13 = 136315650;
    v14 = "[ADRequestDispatcherService cancelOperationsForRequestID:forAssistantID:fromRemote:reason:]";
    v15 = 2112;
    v16 = dCopy;
    v17 = 1024;
    v18 = remoteCopy;
    _os_log_debug_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEBUG, "%s request Id: %@, from remote: %d", &v13, 0x1Cu);
  }

  if (objc_opt_respondsToSelector())
  {
    [(AFRequestDispatcher *)self->_requestDispatcher cancelRequestWithAssistantId:iDCopy requestId:dCopy reason:reason];
  }

  [(ADRequestDispatcherService *)self _logPowerContextForRequest:dCopy];
}

- (ADRequestDispatcherService)initWithRequestDispatcher:(id)dispatcher
{
  dispatcherCopy = dispatcher;
  v11.receiver = self;
  v11.super_class = ADRequestDispatcherService;
  v6 = [(ADRequestDispatcherService *)&v11 init];
  v7 = v6;
  if (v6)
  {
    [(ADService *)v6 setIdentifier:@"RequestDispatcherService"];
    objc_storeStrong(&v7->_requestDispatcher, dispatcher);
    v8 = objc_opt_new();
    powerContext = v7->_powerContext;
    v7->_powerContext = v8;
  }

  return v7;
}

- (ADRequestDispatcherService)initWithBridgeConnectionListeners:(id)listeners
{
  listenersCopy = listeners;
  v5 = [SRDRequestDispatcher alloc];
  v6 = objc_opt_respondsToSelector();
  v7 = v5;
  v8 = objc_alloc_init(ADRequestDispatcherServiceHelper);
  if (v6)
  {
    v9 = [v7 initWithRequestDispatcherServiceHelper:v8 bridgeConnectionListeners:listenersCopy];
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