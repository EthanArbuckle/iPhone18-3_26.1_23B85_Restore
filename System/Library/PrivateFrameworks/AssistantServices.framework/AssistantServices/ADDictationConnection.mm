@interface ADDictationConnection
- (ADDictationConnection)initWithServiceDelegate:(id)delegate;
- (BOOL)adWaitingForAudioFile;
- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection;
- (id)_dictationWillStartWithLanguageCode:(id)code options:(id)options speechOptions:(id)speechOptions xpcconnection:(id)xpcconnection;
- (id)_localSpeechRecognizerSupportingBackground:(BOOL)background;
- (id)_updateDictationOptionsForOnDeviceDictation:(id)dictation language:(id)language;
- (void)_addAudioSessionAssertion:(id)assertion;
- (void)_continuePendingSpeechRequestFromTimestamp:(double)timestamp;
- (void)_invokeRequestCompletion;
- (void)_removeAllAudioSessionAssertionsForReason:(id)reason;
- (void)_sendEngagementFeedback:(int64_t)feedback voiceQueryIdentifier:(id)identifier;
- (void)_speechRecordingDidFinish;
- (void)_startDictationWithLanguageCode:(id)code options:(id)options speechOptions:(id)speechOptions xpcconnection:(id)xpcconnection;
- (void)_startDictationWithURL:(id)l isNarrowBand:(BOOL)band language:(id)language options:(id)options;
- (void)_updateDictationOptions:(id)options;
- (void)adAudioFileFinishedWriting:(id)writing error:(id)error context:(id)context;
- (void)adPronunciationRecognized:(id)recognized usingSpeechModel:(id)model sessionUUID:(id)d;
- (void)adSpeechDidBeginLocalRecognitionWithModelInfo:(id)info sessionUUID:(id)d;
- (void)adSpeechDidFindVoiceSearchFinalResult:(id)result;
- (void)adSpeechDidFindVoiceSearchPartialResult:(id)result;
- (void)adSpeechDidPauseRecognition;
- (void)adSpeechLanguageDetectorFailedWithError:(id)error;
- (void)adSpeechLocalRecognitionDidSucceedWithSessionUUID:(id)d;
- (void)adSpeechMultilingualSpeechRecognized:(id)recognized sessionUUID:(id)d;
- (void)adSpeechRecognitionDidFail:(id)fail sessionUUID:(id)d;
- (void)adSpeechRecognized:(id)recognized usingSpeechModel:(id)model sessionUUID:(id)d;
- (void)adSpeechRecognizedPartialResult:(id)result;
- (void)adSpeechRecognizedStructuredResult:(id)result usingSpeechModel:(id)model sessionUUID:(id)d;
- (void)adSpeechRecordingDidBeginOnAVRecordRoute:(id)route audioSessionID:(unsigned int)d bluetoothDevice:(id)device sessionRequestUUID:(id)iD dictationOptions:(id)options context:(id)context;
- (void)adSpeechRecordingDidCancelWithContext:(id)context;
- (void)adSpeechRecordingDidDetectLanguage:(id)language confidenceScores:(id)scores isConfident:(BOOL)confident;
- (void)adSpeechRecordingDidEndWithContext:(id)context;
- (void)adSpeechRecordingDidFail:(id)fail context:(id)context;
- (void)adSpeechRecordingDidRecognizePhrases:(id)phrases rawPhrases:(id)rawPhrases utterances:(id)utterances rawUtterances:(id)rawUtterances nluResult:(id)result sessionUUID:(id)d refId:(id)id;
- (void)addRecordedSpeechSampleData:(id)data;
- (void)cancelSpeech;
- (void)connectionDisconnected;
- (void)continuePendingSpeechRequestFromTimestamp:(double)timestamp;
- (void)dealloc;
- (void)endSession;
- (void)findAlternativesForString:(id)string maxResults:(int)results completion:(id)completion;
- (void)getInstalledOfflineLanguagesWithCompletion:(id)completion;
- (void)localSpeechRecognizer:(id)recognizer didCompletionRecognitionWithStatistics:(id)statistics error:(id)error;
- (void)localSpeechRecognizer:(id)recognizer didProcessAudioDuration:(double)duration;
- (void)localSpeechRecognizer:(id)recognizer didRecognizePackage:(id)package;
- (void)localSpeechRecognizer:(id)recognizer didRecognizeRawEagerRecognitionCandidate:(id)candidate;
- (void)localSpeechRecognizer:(id)recognizer didRecognizeTokens:(id)tokens;
- (void)pauseRecognition;
- (void)preheat;
- (void)preheatEuclidModelWithLanguage:(id)language clientID:(id)d;
- (void)preheatForLanguageCode:(id)code;
- (void)preheatTestWithLanguage:(id)language options:(id)options;
- (void)preheatWithRecordDeviceIdentifier:(id)identifier;
- (void)recordFailureMetricsForError:(id)error;
- (void)reportIssueForError:(id)error eventType:(int64_t)type context:(id)context;
- (void)reportIssueForError:(id)error eventType:(int64_t)type subtype:(id)subtype context:(id)context;
- (void)requestOfflineAssistantSupportForLanguage:(id)language completion:(id)completion;
- (void)requestOfflineDictationSupportForLanguage:(id)language completion:(id)completion;
- (void)resumeRecognitionWithPrefixText:(id)text postfixText:(id)postfixText selectedText:(id)selectedText;
- (void)sendSpeechCorrectionInfo:(id)info forCorrectionContext:(id)context;
- (void)sendSpeechCorrectionInfo:(id)info interactionIdentifier:(id)identifier;
- (void)sendUserSelectedAlternativeDictationLanguageCode:(id)code;
- (void)sendVisualContextAndCorrectionsInfo:(id)info interactionIdentifier:(id)identifier;
- (void)startDictationWithLanguageCode:(id)code options:(id)options speechOptions:(id)speechOptions;
- (void)startRecordedAudioDictationWithOptions:(id)options language:(id)language narrowband:(BOOL)narrowband forceSampling:(BOOL)sampling;
- (void)startRecordingForPendingDictationWithLanguageCode:(id)code options:(id)options speechOptions:(id)speechOptions reply:(id)reply;
- (void)startRequestActivityWithCompletion:(id)completion;
- (void)stopSpeechWithOptions:(id)options;
- (void)suppressLowStorageNotificationForLanguage:(id)language suppress:(BOOL)suppress;
- (void)updateSpeechOptions:(id)options;
- (void)updateVoiceCommandContextWithPrefixText:(id)text postfixText:(id)postfixText selectedText:(id)selectedText disambiguationActive:(id)active cursorInVisibleText:(id)visibleText favorCommandSuppression:(id)suppression abortCommandSuppression:(id)commandSuppression undoEvent:(id)self0;
@end

@implementation ADDictationConnection

- (void)pauseRecognition
{
  v2 = @"Siri Event";
  v8 = @"Siri Event";
  v9 = @"Dictation pause";
  v3 = [NSDictionary dictionaryWithObjects:&v9 forKeys:&v8 count:1];
  sub_100215208(v3);

  v4 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    v6 = 136315138;
    v7 = "[ADDictationConnection pauseRecognition]";
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "%s ", &v6, 0xCu);
  }

  v5 = +[ADCommandCenter sharedCommandCenter];
  [v5 pauseRecognition];
}

- (void)_continuePendingSpeechRequestFromTimestamp:(double)timestamp
{
  pendingSpeechRequestContinue = self->_pendingSpeechRequestContinue;
  if (pendingSpeechRequestContinue)
  {
    v6 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
    {
      v10 = 136315394;
      v11 = "[ADDictationConnection _continuePendingSpeechRequestFromTimestamp:]";
      v12 = 2048;
      timestampCopy = timestamp;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "%s timestamp = %f", &v10, 0x16u);
      pendingSpeechRequestContinue = self->_pendingSpeechRequestContinue;
    }

    pendingSpeechRequestContinue[2](pendingSpeechRequestContinue, timestamp);
    v7 = self->_pendingSpeechRequestContinue;
    self->_pendingSpeechRequestContinue = 0;
  }

  [(NSXPCListener *)self->_pendingSpeechRequestListener invalidate];
  pendingSpeechRequestListener = self->_pendingSpeechRequestListener;
  self->_pendingSpeechRequestListener = 0;

  [(NSXPCConnection *)self->_pendingSpeechRequestConnection invalidate];
  pendingSpeechRequestConnection = self->_pendingSpeechRequestConnection;
  self->_pendingSpeechRequestConnection = 0;
}

- (void)continuePendingSpeechRequestFromTimestamp:(double)timestamp
{
  queue = self->_queue;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_10032B7AC;
  v4[3] = &unk_10051D770;
  v4[4] = self;
  *&v4[5] = timestamp;
  dispatch_async(queue, v4);
}

- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection
{
  connectionCopy = connection;
  v6 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    v9 = 136315138;
    v10 = "[ADDictationConnection listener:shouldAcceptNewConnection:]";
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "%s ", &v9, 0xCu);
  }

  v7 = AFPendingSpeechRequestServiceInterface();
  [connectionCopy setExportedInterface:v7];

  [connectionCopy setExportedObject:self];
  [connectionCopy resume];

  return 1;
}

- (void)localSpeechRecognizer:(id)recognizer didCompletionRecognitionWithStatistics:(id)statistics error:(id)error
{
  errorCopy = error;
  queue = self->_queue;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_10032B948;
  v9[3] = &unk_10051E010;
  v10 = errorCopy;
  selfCopy = self;
  v8 = errorCopy;
  dispatch_async(queue, v9);
}

- (void)localSpeechRecognizer:(id)recognizer didRecognizePackage:(id)package
{
  packageCopy = package;
  queue = self->_queue;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_10032BAE8;
  v8[3] = &unk_10051E010;
  v8[4] = self;
  v9 = packageCopy;
  v7 = packageCopy;
  dispatch_async(queue, v8);
}

- (void)localSpeechRecognizer:(id)recognizer didRecognizeRawEagerRecognitionCandidate:(id)candidate
{
  recognizerCopy = recognizer;
  candidateCopy = candidate;
  v7 = AFSiriLogContextSpeech;
  if (os_log_type_enabled(AFSiriLogContextSpeech, OS_LOG_TYPE_DEBUG))
  {
    v8 = 136315650;
    v9 = "[ADDictationConnection localSpeechRecognizer:didRecognizeRawEagerRecognitionCandidate:]";
    v10 = 2112;
    v11 = recognizerCopy;
    v12 = 2112;
    v13 = candidateCopy;
    _os_log_debug_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEBUG, "%s %@ raw eager candidate: %@", &v8, 0x20u);
  }
}

- (void)localSpeechRecognizer:(id)recognizer didProcessAudioDuration:(double)duration
{
  queue = self->_queue;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_10032BC50;
  v5[3] = &unk_10051D770;
  v5[4] = self;
  *&v5[5] = duration;
  dispatch_async(queue, v5);
}

- (void)localSpeechRecognizer:(id)recognizer didRecognizeTokens:(id)tokens
{
  tokensCopy = tokens;
  queue = self->_queue;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_10032BCFC;
  v8[3] = &unk_10051E010;
  v8[4] = self;
  v9 = tokensCopy;
  v7 = tokensCopy;
  dispatch_async(queue, v8);
}

- (void)sendVisualContextAndCorrectionsInfo:(id)info interactionIdentifier:(id)identifier
{
  queue = self->_queue;
  identifierCopy = identifier;
  infoCopy = info;
  dispatch_assert_queue_V2(queue);
  v8 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    v10 = 136315138;
    v11 = "[ADDictationConnection sendVisualContextAndCorrectionsInfo:interactionIdentifier:]";
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "%s ", &v10, 0xCu);
  }

  v9 = +[ADCommandCenter sharedCommandCenter];
  [v9 sendVisualContextAndCorrectionsInfo:infoCopy interactionIdentifier:identifierCopy];
}

- (id)_localSpeechRecognizerSupportingBackground:(BOOL)background
{
  backgroundCopy = background;
  if (background)
  {
    v5 = &CoreEmbeddedSpeechRecognizerInstanceUUIDBackground;
  }

  else
  {
    v5 = &CoreEmbeddedSpeechRecognizerInstanceUUIDInteractive;
  }

  localSpeechRecognizer = self->_localSpeechRecognizer;
  if (!localSpeechRecognizer || (uuid_copy(&v13, [(CoreEmbeddedSpeechRecognizer *)localSpeechRecognizer instanceUUID:0]), uuid_compare(&v13, v5)))
  {
    v7 = [[CoreEmbeddedSpeechRecognizer alloc] initWithDelegate:self instanceUUID:v5];
    v8 = self->_localSpeechRecognizer;
    self->_localSpeechRecognizer = v7;

    v9 = AFSiriLogContextSpeech;
    if (os_log_type_enabled(AFSiriLogContextSpeech, OS_LOG_TYPE_INFO))
    {
      v10 = self->_localSpeechRecognizer;
      v13 = 136316418;
      v14 = "[ADDictationConnection _localSpeechRecognizerSupportingBackground:]";
      v15 = 2112;
      selfCopy = self;
      v17 = 1040;
      v18 = 16;
      v19 = 2096;
      v20 = v5;
      v21 = 1024;
      v22 = backgroundCopy;
      v23 = 2112;
      v24 = v10;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "%s %@ created speech recognizer (instanceUUID = %{uuid_t}.16P, for background = %{BOOL}d) %@", &v13, 0x36u);
    }
  }

  v11 = self->_localSpeechRecognizer;

  return v11;
}

- (id)_updateDictationOptionsForOnDeviceDictation:(id)dictation language:(id)language
{
  dictationCopy = dictation;
  languageCopy = language;
  v8 = +[AFPreferences sharedPreferences];
  isOnDeviceDictationForced = [v8 isOnDeviceDictationForced];

  if ((isOnDeviceDictationForced & 1) != 0 || (AFIsATVOnly() & 1) == 0 && AFIsDictationRequestEligibleForOnDeviceDictation() && (+[AFPreferences sharedPreferences](AFPreferences, "sharedPreferences"), v27 = objc_claimAutoreleasedReturnValue(), v28 = [v27 preferOnlineRecognitionEnabled], v27, (v28 & 1) == 0))
  {
    v10 = +[ADDictationOfflineStatusObserver sharedDictationOfflineStatusObserver];
    offlineDictationStatus = [v10 offlineDictationStatus];

    v12 = AFIsSearchDictationRequest();
    selfCopy = self;
    if (offlineDictationStatus)
    {
      v13 = [languageCopy componentsSeparatedByString:@"_"];
      v14 = [v13 componentsJoinedByString:@"-"];

      v15 = AFPreferencesOnDeviceLocaleForDictationLocale();
      v16 = v15;
      if (v15)
      {
        v17 = v15;
      }

      else
      {
        v17 = v14;
      }

      v18 = v17;

      v19 = [offlineDictationStatus objectForKeyedSubscript:v18];
      if (v19)
      {
        v20 = v19;
        v43 = v18;
        v21 = [v19 objectForKeyedSubscript:AFOfflineDictationStatusInstalledKey];
        bOOLValue = [v21 BOOLValue];

        v22 = [v20 objectForKeyedSubscript:AFOfflineDictationStatusHighQualityKey];
        bOOLValue2 = [v22 BOOLValue];

        v24 = [v20 objectForKeyedSubscript:AFOfflineDictationStatusOnDeviceSearchKey];
        bOOLValue3 = [v24 BOOLValue];

        if (isOnDeviceDictationForced & 1 | ((v12 & 1) == 0))
        {
          v26 = 1;
        }

        else
        {
          v26 = [dictationCopy preferOnDeviceRecognition] | bOOLValue3;
        }

        if (bOOLValue)
        {
          if (bOOLValue2 & v26)
          {
LABEL_21:
            v30 = AFSiriLogContextDaemon;
            if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
            {
              if (v16)
              {
                v31 = v16;
              }

              else
              {
                v31 = languageCopy;
              }

              v32 = v30;
              v33 = [NSNumber numberWithBool:bOOLValue2];
              *buf = 136315906;
              v47 = "[ADDictationConnection _updateDictationOptionsForOnDeviceDictation:language:]";
              v48 = 2112;
              v49 = languageCopy;
              v50 = 2112;
              *v51 = v31;
              *&v51[8] = 2112;
              v52[0] = v33;
              _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_INFO, "%s Dictation: force offline speech recognition. Language code: %@, asset language code: %@, status: High Quality model: %@", buf, 0x2Au);
            }

            [dictationCopy setForceOfflineRecognition:1];
            [dictationCopy setSecureOfflineOnly:1];
            if ([dictationCopy continuousListening])
            {
              v34 = [v20 objectForKeyedSubscript:AFOfflineDictationStatusContinuousListeningKey];
              if ([v34 BOOLValue])
              {
              }

              else
              {
                v39 = +[AFPreferences sharedPreferences];
                utteranceDetectionEnabled = [v39 utteranceDetectionEnabled];

                if ((utteranceDetectionEnabled & 1) == 0)
                {
                  [dictationCopy setDetectUtterances:0];
                  [dictationCopy setContinuousListening:0];
                }
              }
            }

            goto LABEL_44;
          }

          v29 = +[AFPreferences sharedPreferences];
          if ([v29 forceOfflineRecognitionEnabled])
          {

            goto LABEL_21;
          }

          forceOfflineRecognition = [dictationCopy forceOfflineRecognition];

          if (forceOfflineRecognition)
          {
            goto LABEL_21;
          }
        }

        v18 = v43;
      }

      else
      {
        bOOLValue = 0;
        LODWORD(bOOLValue2) = 0;
        bOOLValue3 = 0;
      }
    }

    else
    {
      bOOLValue = 0;
      LODWORD(bOOLValue2) = 0;
      bOOLValue3 = 0;
      v16 = 0;
    }

    v35 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
    {
      *buf = 136316162;
      if (v16)
      {
        v36 = v16;
      }

      else
      {
        v36 = languageCopy;
      }

      v47 = "[ADDictationConnection _updateDictationOptionsForOnDeviceDictation:language:]";
      v48 = 2112;
      v49 = languageCopy;
      v50 = 2112;
      *v51 = v36;
      *&v51[8] = 1024;
      LODWORD(v52[0]) = v12;
      WORD2(v52[0]) = 1024;
      *(v52 + 6) = bOOLValue3;
      _os_log_impl(&_mh_execute_header, v35, OS_LOG_TYPE_INFO, "%s Dictation: offline speech recognition not available. Language code: %@, asset language code: %@, searchRequest=%d, searchModel=%d", buf, 0x2Cu);
    }

    if (!isOnDeviceDictationForced)
    {
      goto LABEL_44;
    }

    v37 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315906;
      v47 = "[ADDictationConnection _updateDictationOptionsForOnDeviceDictation:language:]";
      v48 = 2114;
      v49 = languageCopy;
      v50 = 1024;
      *v51 = bOOLValue2;
      *&v51[4] = 1024;
      *&v51[6] = bOOLValue;
      _os_log_error_impl(&_mh_execute_header, v37, OS_LOG_TYPE_ERROR, "%s Dictation for %{public}@ is supported=%d, installed=%d on device with forced offline recognition", buf, 0x22u);
      if (!bOOLValue2)
      {
        goto LABEL_40;
      }
    }

    else if (!bOOLValue2)
    {
LABEL_40:
      v38 = [AFError errorWithCode:602];
      goto LABEL_45;
    }

    [(ADDictationConnection *)selfCopy requestOfflineDictationSupportForLanguage:languageCopy completion:&stru_10051C250];
    goto LABEL_40;
  }

LABEL_44:
  v38 = 0;
LABEL_45:

  return v38;
}

- (void)updateVoiceCommandContextWithPrefixText:(id)text postfixText:(id)postfixText selectedText:(id)selectedText disambiguationActive:(id)active cursorInVisibleText:(id)visibleText favorCommandSuppression:(id)suppression abortCommandSuppression:(id)commandSuppression undoEvent:(id)self0
{
  eventCopy = event;
  commandSuppressionCopy = commandSuppression;
  suppressionCopy = suppression;
  visibleTextCopy = visibleText;
  activeCopy = active;
  selectedTextCopy = selectedText;
  postfixTextCopy = postfixText;
  textCopy = text;
  v24 = +[ADCommandCenter sharedCommandCenter];
  [v24 updateVoiceCommandContextWithPrefixText:textCopy postfixText:postfixTextCopy selectedText:selectedTextCopy disambiguationActive:activeCopy cursorInVisibleText:visibleTextCopy favorCommandSuppression:suppressionCopy abortCommandSuppression:commandSuppressionCopy undoEvent:eventCopy];
}

- (void)findAlternativesForString:(id)string maxResults:(int)results completion:(id)completion
{
  v5 = *&results;
  completionCopy = completion;
  stringCopy = string;
  v9 = +[ADPhoneticEmbedder sharedEmbedder];
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_10032C6B4;
  v11[3] = &unk_10051C150;
  v12 = completionCopy;
  v10 = completionCopy;
  [v9 findAlternativesForString:stringCopy maxResults:v5 completion:v11];
}

- (void)preheatEuclidModelWithLanguage:(id)language clientID:(id)d
{
  dCopy = d;
  languageCopy = language;
  v7 = +[ADPhoneticEmbedder sharedEmbedder];
  [v7 preheatEuclidModelWithLanguageCode:languageCopy clientID:dCopy];
}

- (void)reportIssueForError:(id)error eventType:(int64_t)type subtype:(id)subtype context:(id)context
{
  errorCopy = error;
  subtypeCopy = subtype;
  contextCopy = context;
  if (AFIsInternalInstall())
  {
    v12 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
    {
      v13 = v12;
      localizedDescription = [errorCopy localizedDescription];
      v15 = AFAnalyticsEventTypeGetName();
      *buf = 136315906;
      v22 = "[ADDictationConnection reportIssueForError:eventType:subtype:context:]";
      v23 = 2112;
      v24 = localizedDescription;
      v25 = 2112;
      v26 = v15;
      v27 = 2112;
      v28 = contextCopy;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_INFO, "%s Reporting issue for error %@, event %@ with context %@", buf, 0x2Au);
    }

    v16 = +[SiriCoreSymptomsReporter sharedInstance];
    v17 = +[NSXPCConnection currentConnection];
    processIdentifier = [v17 processIdentifier];
    v19 = byte_100590548;
    v20 = sub_100097574();
    [v16 reportIssueForError:errorCopy type:type subtype:subtypeCopy context:contextCopy processIdentifier:processIdentifier walkboutStatus:v19 triggerForIDSIdentifiers:v20];
  }
}

- (void)reportIssueForError:(id)error eventType:(int64_t)type context:(id)context
{
  errorCopy = error;
  contextCopy = context;
  if (AFIsInternalInstall())
  {
    v9 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
    {
      v10 = v9;
      localizedDescription = [errorCopy localizedDescription];
      v12 = AFAnalyticsEventTypeGetName();
      v18 = 136315906;
      v19 = "[ADDictationConnection reportIssueForError:eventType:context:]";
      v20 = 2112;
      v21 = localizedDescription;
      v22 = 2112;
      v23 = v12;
      v24 = 2112;
      v25 = contextCopy;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "%s Reporting issue for error %@, event %@ with context %@", &v18, 0x2Au);
    }

    v13 = +[SiriCoreSymptomsReporter sharedInstance];
    v14 = +[NSXPCConnection currentConnection];
    processIdentifier = [v14 processIdentifier];
    v16 = byte_100590548;
    v17 = sub_100097574();
    [v13 reportIssueForError:errorCopy type:type context:contextCopy processIdentifier:processIdentifier walkboutStatus:v16 triggerForIDSIdentifiers:v17];
  }
}

- (void)resumeRecognitionWithPrefixText:(id)text postfixText:(id)postfixText selectedText:(id)selectedText
{
  selectedTextCopy = selectedText;
  postfixTextCopy = postfixText;
  textCopy = text;
  v10 = @"Siri Event";
  v16 = @"Siri Event";
  v17 = @"Dictation resume";
  v11 = [NSDictionary dictionaryWithObjects:&v17 forKeys:&v16 count:1];
  sub_100215208(v11);

  v12 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    v14 = 136315138;
    v15 = "[ADDictationConnection resumeRecognitionWithPrefixText:postfixText:selectedText:]";
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_INFO, "%s ", &v14, 0xCu);
  }

  v13 = +[ADCommandCenter sharedCommandCenter];
  [v13 resumeRecognitionWithPrefixText:textCopy postfixText:postfixTextCopy selectedText:selectedTextCopy];
}

- (void)suppressLowStorageNotificationForLanguage:(id)language suppress:(BOOL)suppress
{
  suppressCopy = suppress;
  languageCopy = language;
  v6 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    v8 = 136315138;
    v9 = "[ADDictationConnection suppressLowStorageNotificationForLanguage:suppress:]";
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "%s ", &v8, 0xCu);
  }

  v7 = +[ADCommandCenter sharedCommandCenter];
  [v7 suppressLowStorageNotificationForLanguage:languageCopy suppress:suppressCopy];
}

- (void)requestOfflineDictationSupportForLanguage:(id)language completion:(id)completion
{
  completionCopy = completion;
  languageCopy = language;
  v10 = [[SFEntitledAssetConfig alloc] initWithLanguage:languageCopy assetType:3];

  v7 = +[SFEntitledAssetManager sharedInstance];
  v8 = +[SFEntitledAssetManager subscriberIdForDictationAssets];
  v9 = [v7 installedAssetWithConfig:v10 regionId:0 shouldSubscribe:1 subscriberId:v8 expiration:0];

  completionCopy[2](completionCopy, v9 != 0, 0);
}

- (void)requestOfflineAssistantSupportForLanguage:(id)language completion:(id)completion
{
  completionCopy = completion;
  languageCopy = language;
  v10 = [[SFEntitledAssetConfig alloc] initWithLanguage:languageCopy assetType:3];

  v7 = +[SFEntitledAssetManager sharedInstance];
  v8 = +[SFEntitledAssetManager subscriberIdForDictationAssets];
  v9 = [v7 installedAssetWithConfig:v10 regionId:0 shouldSubscribe:1 subscriberId:v8 expiration:0];

  completionCopy[2](completionCopy, v9 != 0, 0);
}

- (void)getInstalledOfflineLanguagesWithCompletion:(id)completion
{
  completionCopy = completion;
  v4 = +[ADCommandCenter sharedCommandCenter];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_10032CF6C;
  v6[3] = &unk_10051CEE0;
  v7 = completionCopy;
  v5 = completionCopy;
  [v4 getOfflineDictationStatusIgnoringCache:1 completion:v6];
}

- (void)_sendEngagementFeedback:(int64_t)feedback voiceQueryIdentifier:(id)identifier
{
  queue = self->_queue;
  identifierCopy = identifier;
  dispatch_assert_queue_V2(queue);
  v7 = +[ADCommandCenter sharedCommandCenter];
  [v7 sendEngagementFeedback:feedback voiceQueryIdentifier:identifierCopy];
}

- (void)_startDictationWithURL:(id)l isNarrowBand:(BOOL)band language:(id)language options:(id)options
{
  bandCopy = band;
  lCopy = l;
  languageCopy = language;
  optionsCopy = options;
  dispatch_assert_queue_V2(self->_queue);
  v13 = +[NSXPCConnection currentConnection];
  if (v13 && (AFConnectionHasEntitlement() & 1) == 0)
  {
    v18 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v22 = "[ADDictationConnection _startDictationWithURL:isNarrowBand:language:options:]";
      v23 = 2114;
      v24 = v13;
      _os_log_error_impl(&_mh_execute_header, v18, OS_LOG_TYPE_ERROR, "%s Connection (%{public}@) requires entitlement for pre-recorded dictation", buf, 0x16u);
    }
  }

  else
  {
    v14 = @"Siri Event";
    v19 = @"Siri Event";
    v20 = @"Dictation startWithURL";
    v15 = [NSDictionary dictionaryWithObjects:&v20 forKeys:&v19 count:1];
    sub_100215208(v15);

    [(ADDictationConnection *)self _updateDictationOptions:optionsCopy];
    self->_waitingForSpeechRecognition = 1;
    v16 = [(ADDictationSessionTracker *)self->_sessionTracker startSessionForReason:@"file-based dictation is starting" languageCode:languageCopy options:optionsCopy speechRequestOptions:0];
    v17 = +[ADCommandCenter sharedCommandCenter];
    [v17 startDictationWithURL:lCopy isNarrowBand:bandCopy language:languageCopy options:optionsCopy sessionUUID:v16 delegate:self];
  }
}

- (void)addRecordedSpeechSampleData:(id)data
{
  dataCopy = data;
  dispatch_assert_queue_V2(self->_queue);
  if (self->_usingLocalSpeechRecognizer)
  {
    [(CoreEmbeddedSpeechRecognizer *)self->_localSpeechRecognizer addAudioPacket:dataCopy];
  }

  else
  {
    v4 = +[ADCommandCenter sharedCommandCenter];
    [v4 addRecordedSpeechSampleData:dataCopy delegate:self];
  }
}

- (void)startRecordedAudioDictationWithOptions:(id)options language:(id)language narrowband:(BOOL)narrowband forceSampling:(BOOL)sampling
{
  narrowbandCopy = narrowband;
  optionsCopy = options;
  languageCopy = language;
  dispatch_assert_queue_V2(self->_queue);
  v11 = +[NSXPCConnection currentConnection];
  v12 = v11;
  if (v11)
  {
    if (sub_10032D974(v11, 1))
    {
      if ([optionsCopy forceOfflineRecognition])
      {
        [(ADDictationConnection *)self _updateDictationOptions:optionsCopy];
        v13 = 1;
        self->_waitingForSpeechRecognition = 1;
        self->_usingLocalSpeechRecognizer = 1;
        v53 = CoreEmbeddedSpeechRecognizerTaskDictation;
        taskHint = [optionsCopy taskHint];
        if (taskHint <= 2)
        {
          if (taskHint != 1)
          {
            if (taskHint == 2)
            {
              v15 = 0;
              goto LABEL_25;
            }

LABEL_24:
            v15 = 0;
            v13 = 0;
            goto LABEL_25;
          }

          v22 = CoreEmbeddedSpeechRecognizerTaskVoiceMail;

          v13 = 0;
          v15 = 1;
        }

        else
        {
          switch(taskHint)
          {
            case 3:
              v22 = CoreEmbeddedSpeechRecognizerTaskSearchOrMessaging;

              v15 = 0;
              break;
            case 4:
              v22 = CoreEmbeddedSpeechRecognizerTaskWebSearch;

              v15 = 0;
              v13 = 0;
              break;
            case 5:

              v15 = 0;
              v13 = 0;
              v53 = @"DictationCC";
LABEL_25:
              offlineLanguage = [optionsCopy offlineLanguage];
              v24 = offlineLanguage;
              if (offlineLanguage)
              {
                v25 = offlineLanguage;
              }

              else
              {
                v25 = languageCopy;
              }

              v52 = v25;

              modelOverrideURL = [optionsCopy modelOverrideURL];
              fieldLabel = [(AFDictationOptions *)self->_dictationOptions fieldLabel];
              v49 = AFIsDictationRequestSpeechApiRequest();

              interactionIdentifier = [optionsCopy interactionIdentifier];
              applicationName = [(AFDictationOptions *)self->_dictationOptions applicationName];
              v28 = [(ADDictationConnection *)self _localSpeechRecognizerSupportingBackground:v15];
              if (v28)
              {
                v48 = [CESRSpeechParameters alloc];
                originalAudioFileURL = [optionsCopy originalAudioFileURL];
                detectUtterances = [optionsCopy detectUtterances];
                v45 = narrowbandCopy;
                v29 = sub_100214D74();
                farField = [optionsCopy farField];
                [optionsCopy maximumRecognitionDuration];
                v32 = v31;
                emojiRecognition = [optionsCopy emojiRecognition];
                BYTE1(v44) = [optionsCopy autoPunctuation];
                LOBYTE(v44) = emojiRecognition;
                LOWORD(v43) = 0;
                LOBYTE(v42) = v49;
                HIBYTE(v41) = 0;
                *(&v41 + 5) = 0;
                BYTE4(v41) = v13;
                BYTE3(v41) = farField;
                BYTE2(v41) = v29;
                BYTE1(v41) = detectUtterances;
                LOBYTE(v41) = v45;
                v34 = modelOverrideURL;
                v35 = interactionIdentifier;
                v36 = interactionIdentifier;
                v37 = applicationName;
                v38 = [v48 initWithLanguage:v52 requestIdentifier:0 dictationUIInteractionIdentifier:v36 task:v53 loggingContext:0 applicationName:applicationName profile:v32 overrides:0.0 modelOverrideURL:0 originalAudioFileURL:0 codec:modelOverrideURL narrowband:originalAudioFileURL detectUtterances:0 censorSpeech:v41 farField:v42 secureOfflineOnly:0 shouldStoreAudioOnDevice:0 continuousListening:0 shouldHandleCapitalization:v43 isSpeechAPIRequest:0 maximumRecognitionDuration:v44 endpointStart:? inputOrigin:? location:? jitGrammar:? deliverEagerPackage:? disableDeliveringAsrFeatures:? sharedUserIds:? enableEmojiRecognition:? enableAutoPunctuation:?];

                v54[0] = _NSConcreteStackBlock;
                v54[1] = 3221225472;
                v54[2] = sub_10032DB98;
                v54[3] = &unk_10051C1E8;
                v54[4] = self;
                [v28 startSpeechRecognitionWithParameters:v38 didStartHandler:v54];
              }

              else
              {
                v35 = interactionIdentifier;
                v34 = modelOverrideURL;
                v39 = AFSiriLogContextDaemon;
                if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR))
                {
                  *buf = 136315138;
                  v56 = "[ADDictationConnection startRecordedAudioDictationWithOptions:language:narrowband:forceSampling:]";
                  _os_log_error_impl(&_mh_execute_header, v39, OS_LOG_TYPE_ERROR, "%s Could not make recognizer", buf, 0xCu);
                }

                serviceDelegate = self->_serviceDelegate;
                v38 = [NSError errorWithDomain:kAFAssistantErrorDomain code:601 userInfo:0];
                [(AFDictationServiceDelegate *)serviceDelegate speechRecognitionDidFinishWithError:v38];
                v37 = applicationName;
              }

              goto LABEL_34;
            default:
              goto LABEL_24;
          }
        }

        v53 = v22;
        goto LABEL_25;
      }

      v18 = [(ADDictationConnection *)self _updateDictationOptionsForOnDeviceDictation:optionsCopy language:languageCopy];
      if (!v18)
      {
        [(ADDictationConnection *)self _updateDictationOptions:optionsCopy];
        self->_waitingForSpeechRecognition = 1;
        v20 = [(ADDictationSessionTracker *)self->_sessionTracker startSessionForReason:@"recorded audio dictation is starting" languageCode:languageCopy options:optionsCopy speechRequestOptions:0];
        v21 = +[ADCommandCenter sharedCommandCenter];
        [v21 startRecordedDictationWithLanguage:languageCopy options:optionsCopy sessionUUID:v20 narrowband:narrowbandCopy delegate:self];

        goto LABEL_15;
      }

      v19 = self->_serviceDelegate;
    }

    else
    {
      v17 = self->_serviceDelegate;
      v18 = [NSError errorWithDomain:kAFAssistantErrorDomain code:1700 userInfo:0];
      v19 = v17;
    }

    [(AFDictationServiceDelegate *)v19 speechRecognitionDidFinishWithError:v18];
LABEL_15:

    goto LABEL_34;
  }

  v16 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315138;
    v56 = "[ADDictationConnection startRecordedAudioDictationWithOptions:language:narrowband:forceSampling:]";
    _os_log_error_impl(&_mh_execute_header, v16, OS_LOG_TYPE_ERROR, "%s Called from outside of an XPC connection", buf, 0xCu);
  }

LABEL_34:
}

- (void)recordFailureMetricsForError:(id)error
{
  errorCopy = error;
  v4 = +[ADCommandCenter sharedCommandCenter];
  [v4 _metrics_recordFailureMetricsForError:errorCopy];
}

- (void)endSession
{
  dispatch_assert_queue_V2(self->_queue);
  v3 = @"Siri Event";
  v6 = @"Siri Event";
  v7 = @"Dictation endSession";
  v4 = [NSDictionary dictionaryWithObjects:&v7 forKeys:&v6 count:1];
  sub_100215208(v4);

  [(ADDictationConnection *)self _removeAllAudioSessionAssertionsForReason:@"Dictation Connection Requested End Session"];
  v5 = +[ADCommandCenter sharedCommandCenter];
  [v5 endSessionForDelegate:self];
}

- (void)preheatWithRecordDeviceIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v4 = @"Siri Event";
  v7 = @"Siri Event";
  v8 = @"Dictation preheatWithRecordDeviceIdentifier";
  v5 = [NSDictionary dictionaryWithObjects:&v8 forKeys:&v7 count:1];
  sub_100215208(v5);

  v6 = +[ADCommandCenter sharedCommandCenter];
  [v6 preheatWithRecordDeviceIdentifier:identifierCopy];
}

- (void)preheatTestWithLanguage:(id)language options:(id)options
{
  optionsCopy = options;
  languageCopy = language;
  v7 = @"Siri Event";
  v13 = @"Siri Event";
  v14 = @"Dictation Preheat Test";
  v8 = [NSDictionary dictionaryWithObjects:&v14 forKeys:&v13 count:1];
  sub_100215208(v8);

  v9 = objc_alloc_init(AFSpeechRequestOptions);
  if (AFIsNano())
  {
    v10 = 5;
  }

  else
  {
    v10 = 0;
  }

  [v9 setIsTest:1];
  [v9 setPreheatLanguage:languageCopy];

  modelOverrideURL = [optionsCopy modelOverrideURL];

  [v9 setPreheatTestModelPath:modelOverrideURL];
  v12 = +[ADCommandCenter sharedCommandCenter];
  [v12 preheatWithStyle:v10 forOptions:v9 completion:0];
}

- (void)preheat
{
  v4 = +[AFPreferences sharedPreferences];
  languageCode = [v4 languageCode];
  [(ADDictationConnection *)self preheatForLanguageCode:languageCode];
}

- (void)preheatForLanguageCode:(id)code
{
  codeCopy = code;
  v4 = @"Siri Event";
  v13 = @"Siri Event";
  v14 = @"Dictation preheat";
  v5 = [NSDictionary dictionaryWithObjects:&v14 forKeys:&v13 count:1];
  sub_100215208(v5);

  v6 = AFIsNano();
  if (!codeCopy)
  {
    v7 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR))
    {
      v11 = 136315138;
      v12 = "[ADDictationConnection preheatForLanguageCode:]";
      _os_log_error_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "%s No language provided, no language specific prewarm work will be done", &v11, 0xCu);
    }
  }

  if (v6)
  {
    v8 = 5;
  }

  else
  {
    v8 = 0;
  }

  v9 = objc_alloc_init(AFSpeechRequestOptions);
  [v9 setPreheatLanguage:codeCopy];

  v10 = +[ADCommandCenter sharedCommandCenter];
  [v10 preheatWithStyle:v8 forOptions:v9 completion:0];
}

- (void)sendUserSelectedAlternativeDictationLanguageCode:(id)code
{
  codeCopy = code;
  v5 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    *buf = 136315138;
    v11 = "[ADDictationConnection sendUserSelectedAlternativeDictationLanguageCode:]";
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "%s ", buf, 0xCu);
  }

  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10032E214;
  block[3] = &unk_10051DFE8;
  v9 = codeCopy;
  v7 = codeCopy;
  dispatch_async(queue, block);
}

- (void)sendSpeechCorrectionInfo:(id)info interactionIdentifier:(id)identifier
{
  queue = self->_queue;
  identifierCopy = identifier;
  infoCopy = info;
  dispatch_assert_queue_V2(queue);
  v8 = +[ADCommandCenter sharedCommandCenter];
  [v8 sendSpeechCorrectionInfo:infoCopy interactionIdentifier:identifierCopy];
}

- (void)sendSpeechCorrectionInfo:(id)info forCorrectionContext:(id)context
{
  infoCopy = info;
  contextCopy = context;
  dispatch_assert_queue_V2(self->_queue);
  if (!self->_usingLocalSpeechRecognizer)
  {
    v7 = +[ADCommandCenter sharedCommandCenter];
    [v7 sendSpeechCorrectionInfo:infoCopy forCorrectionContext:contextCopy];
  }
}

- (void)updateSpeechOptions:(id)options
{
  optionsCopy = options;
  v4 = +[NSXPCConnection currentConnection];
  audioFileHandle = [optionsCopy audioFileHandle];
  if (audioFileHandle && (v6 = audioFileHandle, v7 = sub_10032E474(v4), v6, !v7))
  {
    serviceDelegate = self->_serviceDelegate;
    v8 = [AFError errorWithCode:1700];
    [(AFDictationServiceDelegate *)serviceDelegate speechRecognitionDidFinishWithError:v8];
  }

  else
  {
    dispatch_assert_queue_V2(self->_queue);
    if (self->_usingLocalSpeechRecognizer)
    {
      goto LABEL_7;
    }

    sub_10032E4D4(optionsCopy);
    v8 = +[ADCommandCenter sharedCommandCenter];
    [v8 updateSpeechOptions:optionsCopy forDelegate:self];
  }

LABEL_7:
}

- (void)stopSpeechWithOptions:(id)options
{
  optionsCopy = options;
  v5 = @"Siri Event";
  v18[0] = @"Siri Event";
  v18[1] = @"stopReason";
  v19[0] = @"Dictation stop";
  stopContext = [optionsCopy stopContext];
  v7 = [stopContext objectForKeyedSubscript:@"stopDictation"];
  v8 = v7;
  v9 = &stru_10051F508;
  if (v7)
  {
    v9 = v7;
  }

  v19[1] = v9;
  v10 = [NSDictionary dictionaryWithObjects:v19 forKeys:v18 count:2];
  sub_100215208(v10);

  v11 = +[NSXPCConnection currentConnection];
  audioFileHandle = [optionsCopy audioFileHandle];
  if (audioFileHandle && (v13 = audioFileHandle, v14 = sub_10032E474(v11), v13, !v14))
  {
    serviceDelegate = self->_serviceDelegate;
    v17 = [AFError errorWithCode:1700];
    [(AFDictationServiceDelegate *)serviceDelegate speechRecognitionDidFinishWithError:v17];
  }

  else
  {
    kdebug_trace();
    dispatch_assert_queue_V2(self->_queue);
    if (self->_usingLocalSpeechRecognizer)
    {
      [(CoreEmbeddedSpeechRecognizer *)self->_localSpeechRecognizer finishAudio];
    }

    else
    {
      sub_10032E4D4(optionsCopy);
      v15 = +[ADCommandCenter sharedCommandCenter];
      [v15 stopSpeechWithOptions:optionsCopy forDelegate:self];

      [(ADDictationSessionTracker *)self->_sessionTracker stopSessionForReason:@"dictation is stopping"];
      if (!self->_shouldFinalizeRequestOnNextFinalResult && !self->_didFinalizeUtteranceDetectionRequest)
      {
        self->_shouldFinalizeRequestOnNextFinalResult = 1;
      }
    }
  }
}

- (void)cancelSpeech
{
  v3 = @"Siri Event";
  v7 = @"Siri Event";
  v8 = @"Dictation cancel";
  v4 = [NSDictionary dictionaryWithObjects:&v8 forKeys:&v7 count:1];
  sub_100215208(v4);

  dispatch_assert_queue_V2(self->_queue);
  if (self->_usingLocalSpeechRecognizer)
  {
    [(CoreEmbeddedSpeechRecognizer *)self->_localSpeechRecognizer invalidate];
    localSpeechRecognizer = self->_localSpeechRecognizer;
    self->_localSpeechRecognizer = 0;

    self->_waitingForSpeechRecognition = 0;
    self->_usingLocalSpeechRecognizer = 0;
  }

  else
  {
    [(ADDictationConnection *)self _continuePendingSpeechRequestFromTimestamp:0.0];
    v6 = +[ADCommandCenter sharedCommandCenter];
    [v6 cancelSpeechForDelegate:self];

    [(ADDictationSessionTracker *)self->_sessionTracker stopSessionForReason:@"dictation is canceling"];
  }
}

- (void)startDictationWithLanguageCode:(id)code options:(id)options speechOptions:(id)speechOptions
{
  codeCopy = code;
  optionsCopy = options;
  speechOptionsCopy = speechOptions;
  audioFileHandle = [speechOptionsCopy audioFileHandle];
  if (audioFileHandle && (v12 = audioFileHandle, +[NSXPCConnection currentConnection], v13 = objc_claimAutoreleasedReturnValue(), v14 = sub_10032E474(v13), v13, v12, !v14))
  {
    serviceDelegate = self->_serviceDelegate;
    v23 = 1700;
  }

  else
  {
    v15 = +[AFPreferences sharedPreferences];
    dictationIsEnabled = [v15 dictationIsEnabled];

    if (dictationIsEnabled)
    {
      v17 = +[NSXPCConnection currentConnection];
      if (!AFDictationRequiresRequestValidation() || (sub_10032D974(v17, 0) & 1) != 0 || (AFIsDictationRequestFromAppleClient() & 1) != 0)
      {
        v18 = [(ADDictationConnection *)self _updateDictationOptionsForOnDeviceDictation:optionsCopy language:codeCopy];
        if (!v18)
        {
          applicationName = [optionsCopy applicationName];
          if (codeCopy)
          {
            v25 = codeCopy;
          }

          else
          {
            v25 = &stru_10051F508;
          }

          v29 = @"language-code";
          v30 = v25;
          v26 = [NSDictionary dictionaryWithObjects:&v30 forKeys:&v29 count:1];
          [AFDictationDiscoverabilitySignalsStreamManager sendDictationRequestStartedEventWithBundleIdentifier:applicationName context:0 userInfo:v26];

          sub_10032E4D4(speechOptionsCopy);
          [(ADDictationConnection *)self _startDictationWithLanguageCode:codeCopy options:optionsCopy speechOptions:speechOptionsCopy xpcconnection:v17];
          v19 = 0;
          goto LABEL_19;
        }

        v19 = v18;
        v20 = self->_serviceDelegate;
      }

      else
      {
        v27 = AFSiriLogContextDaemon;
        if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315138;
          v32 = "[ADDictationConnection startDictationWithLanguageCode:options:speechOptions:]";
          _os_log_error_impl(&_mh_execute_header, v27, OS_LOG_TYPE_ERROR, "%s Dictation request validation failed", buf, 0xCu);
        }

        v28 = self->_serviceDelegate;
        v19 = [AFError errorWithCode:1700];
        v20 = v28;
      }

      [(AFDictationServiceDelegate *)v20 speechRecognitionDidFinishWithError:v19];
LABEL_19:

      goto LABEL_20;
    }

    v21 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315138;
      v32 = "[ADDictationConnection startDictationWithLanguageCode:options:speechOptions:]";
      _os_log_error_impl(&_mh_execute_header, v21, OS_LOG_TYPE_ERROR, "%s Dictation requested even though it is disabled", buf, 0xCu);
    }

    serviceDelegate = self->_serviceDelegate;
    v23 = 34;
  }

  v17 = [AFError errorWithCode:v23];
  [(AFDictationServiceDelegate *)serviceDelegate speechRecognitionDidFinishWithError:v17];
LABEL_20:
}

- (void)startRecordingForPendingDictationWithLanguageCode:(id)code options:(id)options speechOptions:(id)speechOptions reply:(id)reply
{
  codeCopy = code;
  optionsCopy = options;
  speechOptionsCopy = speechOptions;
  replyCopy = reply;
  audioFileHandle = [speechOptionsCopy audioFileHandle];
  if (audioFileHandle)
  {
    v15 = audioFileHandle;
    v16 = +[NSXPCConnection currentConnection];
    v17 = sub_10032E474(v16);

    if (!v17)
    {
      serviceDelegate = self->_serviceDelegate;
      v24 = 1700;
LABEL_9:
      v25 = [AFError errorWithCode:v24];
      [(AFDictationServiceDelegate *)serviceDelegate speechRecognitionDidFinishWithError:v25];

      replyCopy[2](replyCopy, 0);
      goto LABEL_10;
    }
  }

  v18 = +[AFPreferences sharedPreferences];
  dictationIsEnabled = [v18 dictationIsEnabled];

  if ((dictationIsEnabled & 1) == 0)
  {
    v22 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315138;
      v29 = "[ADDictationConnection startRecordingForPendingDictationWithLanguageCode:options:speechOptions:reply:]";
      _os_log_error_impl(&_mh_execute_header, v22, OS_LOG_TYPE_ERROR, "%s Dictation requested even though it is disabled", buf, 0xCu);
    }

    serviceDelegate = self->_serviceDelegate;
    v24 = 34;
    goto LABEL_9;
  }

  v20 = [(ADDictationConnection *)self _dictationWillStartWithLanguageCode:codeCopy options:optionsCopy speechOptions:speechOptionsCopy xpcconnection:0];
  v21 = +[ADCommandCenter sharedCommandCenter];
  v26[0] = _NSConcreteStackBlock;
  v26[1] = 3221225472;
  v26[2] = sub_10032EF54;
  v26[3] = &unk_10051C1C0;
  v26[4] = self;
  v27 = replyCopy;
  [v21 startRecordingForPendingDictationWithLanguageCode:codeCopy options:optionsCopy speechOptions:speechOptionsCopy sessionUUID:v20 delegate:self completion:v26];

LABEL_10:
}

- (void)_invokeRequestCompletion
{
  requestCompletion = self->_requestCompletion;
  if (requestCompletion)
  {
    v4 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_DEBUG))
    {
      v6 = 136315394;
      v7 = "[ADDictationConnection _invokeRequestCompletion]";
      v8 = 2048;
      selfCopy = self;
      _os_log_debug_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEBUG, "%s %p request completion invoked", &v6, 0x16u);
      requestCompletion = self->_requestCompletion;
    }

    requestCompletion[2](requestCompletion);
    v5 = self->_requestCompletion;
  }

  else
  {
    v5 = 0;
  }

  self->_requestCompletion = 0;
}

- (void)startRequestActivityWithCompletion:(id)completion
{
  completionCopy = completion;
  queue = self->_queue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10032F278;
  v7[3] = &unk_10051E038;
  v7[4] = self;
  v8 = completionCopy;
  v6 = completionCopy;
  dispatch_async(queue, v7);
}

- (void)_startDictationWithLanguageCode:(id)code options:(id)options speechOptions:(id)speechOptions xpcconnection:(id)xpcconnection
{
  speechOptionsCopy = speechOptions;
  optionsCopy = options;
  codeCopy = code;
  v14 = [(ADDictationConnection *)self _dictationWillStartWithLanguageCode:codeCopy options:optionsCopy speechOptions:speechOptionsCopy xpcconnection:xpcconnection];
  v13 = +[ADCommandCenter sharedCommandCenter];
  [v13 startDictationWithLanguageCode:codeCopy options:optionsCopy speechOptions:speechOptionsCopy sessionUUID:v14 delegate:self];
}

- (id)_dictationWillStartWithLanguageCode:(id)code options:(id)options speechOptions:(id)speechOptions xpcconnection:(id)xpcconnection
{
  codeCopy = code;
  optionsCopy = options;
  speechOptionsCopy = speechOptions;
  xpcconnectionCopy = xpcconnection;
  dispatch_assert_queue_V2(self->_queue);
  v14 = [(ADDictationSessionTracker *)self->_sessionTracker startSessionForReason:@"dictation is starting" languageCode:codeCopy options:optionsCopy speechRequestOptions:speechOptionsCopy];
  transcriptionMode = [optionsCopy transcriptionMode];
  v16 = &stru_10051F508;
  if (transcriptionMode <= 3)
  {
    v16 = off_10051C270[transcriptionMode];
  }

  v17 = @"Siri Event";
  v50[0] = @"Siri Event";
  v50[1] = @"mode";
  v51[0] = @"Dictation start";
  v51[1] = v16;
  v50[2] = @"startReason";
  startContext = [speechOptionsCopy startContext];
  v19 = [startContext objectForKeyedSubscript:@"startDictation"];
  v20 = v19;
  if (v19)
  {
    v21 = v19;
  }

  else
  {
    v21 = &stru_10051F508;
  }

  v51[2] = v21;
  v50[3] = @"appBundleID";
  applicationName = [optionsCopy applicationName];
  v23 = applicationName;
  if (applicationName)
  {
    v24 = applicationName;
  }

  else
  {
    v24 = &stru_10051F508;
  }

  v51[3] = v24;
  v50[4] = @"recognition";
  v25 = @"server";
  if ([optionsCopy forceOfflineRecognition] && objc_msgSend(optionsCopy, "secureOfflineOnly"))
  {
    v25 = @"on-device";
  }

  v51[4] = v25;
  v26 = [NSDictionary dictionaryWithObjects:v51 forKeys:v50 count:5];
  sub_100215208(v26);

  if ([optionsCopy detectUtterances] && (objc_msgSend(optionsCopy, "forceOfflineRecognition") & 1) == 0)
  {
    v27 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
    {
      v46 = 136315138;
      v47 = "[ADDictationConnection _dictationWillStartWithLanguageCode:options:speechOptions:xpcconnection:]";
      _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_INFO, "%s Utterance detection for live recognition not yet supported; disabling. <rdar://problem/23691545>", &v46, 0xCu);
    }

    [optionsCopy setDetectUtterances:0];
  }

  if ([optionsCopy shouldClassifyIntent] && (objc_msgSend(optionsCopy, "detectUtterances") & 1) == 0)
  {
    v28 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
    {
      v46 = 136315138;
      v47 = "[ADDictationConnection _dictationWillStartWithLanguageCode:options:speechOptions:xpcconnection:]";
      _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_INFO, "%s Dictation intent classification is only supported with utterance detection enabled; disabling.", &v46, 0xCu);
    }

    [optionsCopy setShouldClassifyIntent:0];
  }

  if (!+[AFFeatureFlags isDictationVoiceCommandsEnabled])
  {
    goto LABEL_27;
  }

  if ([optionsCopy shouldRecognizeCommands] && (objc_msgSend(optionsCopy, "detectUtterances") & 1) == 0)
  {
    v29 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
    {
      v46 = 136315138;
      v47 = "[ADDictationConnection _dictationWillStartWithLanguageCode:options:speechOptions:xpcconnection:]";
      _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_INFO, "%s Dictation command recognition is only supported with utterance detection enabled; disabling.", &v46, 0xCu);
    }

LABEL_27:
    [optionsCopy setShouldRecognizeCommands:0];
  }

  if ([optionsCopy shouldRecognizeCommands] && objc_msgSend(optionsCopy, "shouldClassifyIntent"))
  {
    v30 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
    {
      v46 = 136315138;
      v47 = "[ADDictationConnection _dictationWillStartWithLanguageCode:options:speechOptions:xpcconnection:]";
      _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_INFO, "%s We can only support either Dictation intent classification or Dictation command recognition; disabling intent classification.", &v46, 0xCu);
    }

    [optionsCopy setShouldClassifyIntent:0];
  }

  if ([optionsCopy shouldGenerateVoiceCommandCandidates] && (objc_msgSend(optionsCopy, "detectUtterances") & 1) == 0)
  {
    v31 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
    {
      v46 = 136315138;
      v47 = "[ADDictationConnection _dictationWillStartWithLanguageCode:options:speechOptions:xpcconnection:]";
      _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_INFO, "%s Dictation voice command candidates generation is only supported with utterance detection enabled; disabling.", &v46, 0xCu);
    }

    [optionsCopy setShouldGenerateVoiceCommandCandidates:0];
  }

  v32 = +[AFPreferences sharedPreferences];
  dictationAutoPunctuationSupportedLocales = [v32 dictationAutoPunctuationSupportedLocales];

  v34 = [codeCopy stringByReplacingOccurrencesOfString:@"_" withString:@"-"];
  v35 = [dictationAutoPunctuationSupportedLocales containsObject:v34];

  if ((v35 & 1) == 0)
  {
    v36 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
    {
      v46 = 136315394;
      v47 = "[ADDictationConnection _dictationWillStartWithLanguageCode:options:speechOptions:xpcconnection:]";
      v48 = 2112;
      v49 = codeCopy;
      _os_log_impl(&_mh_execute_header, v36, OS_LOG_TYPE_INFO, "%s Disabling auto punctuation for unsupported language %@.", &v46, 0x16u);
    }

    [optionsCopy setAutoPunctuation:0];
  }

  [(ADDictationConnection *)self _updateDictationOptions:optionsCopy];
  v37 = 1;
  self->_waitingForSpeechRecognition = 1;
  if (![optionsCopy transcriptionMode])
  {
    v37 = [optionsCopy voiceSearchTypeOptions] != 0;
  }

  self->_waitingForStructuredResultsOrVoiceSearch = v37;
  self->_waitingForAudioFile = 0;
  if ([speechOptionsCopy audioFileType])
  {
    if (xpcconnectionCopy)
    {
      v38 = kAssistantDictationPrerecordedEntitlement;
      if (AFConnectionHasEntitlement())
      {
LABEL_47:
        self->_waitingForAudioFile = 1;
        goto LABEL_51;
      }
    }

    else
    {
      v39 = +[NSXPCConnection currentConnection];
      v38 = kAssistantDictationPrerecordedEntitlement;
      HasEntitlement = AFConnectionHasEntitlement();

      if (HasEntitlement)
      {
        goto LABEL_47;
      }
    }

    [speechOptionsCopy setAudioFileType:0];
    v41 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
    {
      v46 = 136315394;
      v47 = "[ADDictationConnection _dictationWillStartWithLanguageCode:options:speechOptions:xpcconnection:]";
      v48 = 2112;
      v49 = v38;
      _os_log_impl(&_mh_execute_header, v41, OS_LOG_TYPE_INFO, "%s Need %@ entitlement to use audioFileType; ignoring.", &v46, 0x16u);
    }
  }

LABEL_51:
  self->_isDetectingUtterances = [(AFDictationOptions *)self->_dictationOptions detectUtterances];
  *&self->_shouldFinalizeRequestOnNextFinalResult = 0;
  self->_waitingForKeyboardVisibleCheck = 0;
  if (xpcconnectionCopy)
  {
    if (sub_10032D974(xpcconnectionCopy, 0))
    {
      goto LABEL_60;
    }
  }

  else
  {
    v42 = +[NSXPCConnection currentConnection];
    v43 = sub_10032D974(v42, 0);

    if (v43)
    {
      goto LABEL_60;
    }
  }

  if ((sub_10032FB64() & 1) == 0 && (sub_10032FC44() & 1) == 0)
  {
    v44 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
    {
      v46 = 136315138;
      v47 = "[ADDictationConnection _dictationWillStartWithLanguageCode:options:speechOptions:xpcconnection:]";
      _os_log_impl(&_mh_execute_header, v44, OS_LOG_TYPE_INFO, "%s Keyboard not yet visible, delaying visibility check to first result", &v46, 0xCu);
    }

    self->_waitingForKeyboardVisibleCheck = 1;
  }

LABEL_60:

  return v14;
}

- (void)adSpeechDidPauseRecognition
{
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10032FD98;
  block[3] = &unk_10051DFE8;
  block[4] = self;
  dispatch_async(queue, block);
}

- (void)adSpeechDidBeginLocalRecognitionWithModelInfo:(id)info sessionUUID:(id)d
{
  infoCopy = info;
  queue = self->_queue;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_10032FE3C;
  v8[3] = &unk_10051E010;
  v8[4] = self;
  v9 = infoCopy;
  v7 = infoCopy;
  dispatch_async(queue, v8);
}

- (void)adSpeechMultilingualSpeechRecognized:(id)recognized sessionUUID:(id)d
{
  recognizedCopy = recognized;
  queue = self->_queue;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_10032FEE0;
  v8[3] = &unk_10051E010;
  v8[4] = self;
  v9 = recognizedCopy;
  v7 = recognizedCopy;
  dispatch_async(queue, v8);
}

- (void)adSpeechLanguageDetectorFailedWithError:(id)error
{
  errorCopy = error;
  queue = self->_queue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10032FFC0;
  v7[3] = &unk_10051E010;
  v7[4] = self;
  v8 = errorCopy;
  v6 = errorCopy;
  dispatch_async(queue, v7);
}

- (void)adSpeechRecordingDidDetectLanguage:(id)language confidenceScores:(id)scores isConfident:(BOOL)confident
{
  languageCopy = language;
  scoresCopy = scores;
  queue = self->_queue;
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_100330098;
  v13[3] = &unk_10051C958;
  v13[4] = self;
  v14 = languageCopy;
  v15 = scoresCopy;
  confidentCopy = confident;
  v11 = scoresCopy;
  v12 = languageCopy;
  dispatch_async(queue, v13);
}

- (BOOL)adWaitingForAudioFile
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  queue = self->_queue;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_10033015C;
  v5[3] = &unk_10051D4A0;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(queue, v5);
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (void)adAudioFileFinishedWriting:(id)writing error:(id)error context:(id)context
{
  writingCopy = writing;
  errorCopy = error;
  contextCopy = context;
  [(AFDictationServiceDelegate *)self->_serviceDelegate speechDidFinishWritingAudioFile:writingCopy error:errorCopy];
  queue = self->_queue;
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_100330270;
  v15[3] = &unk_10051DB18;
  v15[4] = self;
  v16 = writingCopy;
  v17 = errorCopy;
  v18 = contextCopy;
  v12 = contextCopy;
  v13 = errorCopy;
  v14 = writingCopy;
  dispatch_async(queue, v15);
}

- (void)adPronunciationRecognized:(id)recognized usingSpeechModel:(id)model sessionUUID:(id)d
{
  recognizedCopy = recognized;
  modelCopy = model;
  dCopy = d;
  queue = self->_queue;
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_1003303E8;
  v15[3] = &unk_10051DB18;
  v15[4] = self;
  v16 = recognizedCopy;
  v17 = modelCopy;
  v18 = dCopy;
  v12 = dCopy;
  v13 = modelCopy;
  v14 = recognizedCopy;
  dispatch_async(queue, v15);
}

- (void)adSpeechLocalRecognitionDidSucceedWithSessionUUID:(id)d
{
  dCopy = d;
  v5 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    *buf = 136315138;
    v11 = "[ADDictationConnection adSpeechLocalRecognitionDidSucceedWithSessionUUID:]";
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "%s Sending local recognition succeeded", buf, 0xCu);
  }

  queue = self->_queue;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100330690;
  v8[3] = &unk_10051E010;
  v8[4] = self;
  v9 = dCopy;
  v7 = dCopy;
  dispatch_async(queue, v8);
}

- (void)adSpeechRecognitionDidFail:(id)fail sessionUUID:(id)d
{
  failCopy = fail;
  dCopy = d;
  v8 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315394;
    v16 = "[ADDictationConnection adSpeechRecognitionDidFail:sessionUUID:]";
    v17 = 2114;
    v18 = failCopy;
    _os_log_error_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "%s Sending recognition failed %{public}@", buf, 0x16u);
  }

  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100330954;
  block[3] = &unk_10051DB68;
  block[4] = self;
  v13 = failCopy;
  v14 = dCopy;
  v10 = dCopy;
  v11 = failCopy;
  dispatch_async(queue, block);
}

- (void)adSpeechRecognizedStructuredResult:(id)result usingSpeechModel:(id)model sessionUUID:(id)d
{
  resultCopy = result;
  modelCopy = model;
  dCopy = d;
  items = [resultCopy items];
  v12 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [items count]);

  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  items2 = [resultCopy items];
  v14 = [items2 countByEnumeratingWithState:&v27 objects:v31 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v28;
    do
    {
      v17 = 0;
      do
      {
        if (*v28 != v16)
        {
          objc_enumerationMutation(items2);
        }

        ad_transcriptionResults = [*(*(&v27 + 1) + 8 * v17) ad_transcriptionResults];
        [v12 addObjectsFromArray:ad_transcriptionResults];

        v17 = v17 + 1;
      }

      while (v15 != v17);
      v15 = [items2 countByEnumeratingWithState:&v27 objects:v31 count:16];
    }

    while (v15);
  }

  queue = self->_queue;
  v23[0] = _NSConcreteStackBlock;
  v23[1] = 3221225472;
  v23[2] = sub_100330C64;
  v23[3] = &unk_10051DB18;
  v23[4] = self;
  v24 = v12;
  v25 = modelCopy;
  v26 = dCopy;
  v20 = dCopy;
  v21 = modelCopy;
  v22 = v12;
  dispatch_async(queue, v23);
}

- (void)adSpeechRecordingDidRecognizePhrases:(id)phrases rawPhrases:(id)rawPhrases utterances:(id)utterances rawUtterances:(id)rawUtterances nluResult:(id)result sessionUUID:(id)d refId:(id)id
{
  phrasesCopy = phrases;
  dCopy = d;
  [(AFDictationServiceDelegate *)self->_serviceDelegate speechDidRecognizePhrases:phrasesCopy rawPhrases:rawPhrases utterances:utterances rawUtterances:rawUtterances nluResult:result usingSpeechModel:&stru_10051F508 correctionContext:0 audioAnalytics:0];
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100330DF0;
  block[3] = &unk_10051DB68;
  block[4] = self;
  v21 = phrasesCopy;
  v22 = dCopy;
  v18 = dCopy;
  v19 = phrasesCopy;
  dispatch_async(queue, block);
}

- (void)adSpeechDidFindVoiceSearchFinalResult:(id)result
{
  resultCopy = result;
  queue = self->_queue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10033116C;
  v7[3] = &unk_10051E010;
  v7[4] = self;
  v8 = resultCopy;
  v6 = resultCopy;
  dispatch_async(queue, v7);
}

- (void)adSpeechDidFindVoiceSearchPartialResult:(id)result
{
  resultCopy = result;
  queue = self->_queue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1003312B4;
  v7[3] = &unk_10051E010;
  v7[4] = self;
  v8 = resultCopy;
  v6 = resultCopy;
  dispatch_async(queue, v7);
}

- (void)adSpeechRecognizedPartialResult:(id)result
{
  resultCopy = result;
  queue = self->_queue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1003313D8;
  v7[3] = &unk_10051E010;
  v8 = resultCopy;
  selfCopy = self;
  v6 = resultCopy;
  dispatch_async(queue, v7);
}

- (void)adSpeechRecognized:(id)recognized usingSpeechModel:(id)model sessionUUID:(id)d
{
  recognizedCopy = recognized;
  modelCopy = model;
  dCopy = d;
  queue = self->_queue;
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_100331678;
  v15[3] = &unk_10051DB18;
  v15[4] = self;
  v16 = recognizedCopy;
  v17 = modelCopy;
  v18 = dCopy;
  v12 = dCopy;
  v13 = modelCopy;
  v14 = recognizedCopy;
  dispatch_async(queue, v15);
}

- (void)adSpeechRecordingDidFail:(id)fail context:(id)context
{
  failCopy = fail;
  contextCopy = context;
  v8 = @"Siri Event";
  v16 = @"Siri Event";
  v17 = @"Dictation speechRecordingDidFail";
  v9 = [NSDictionary dictionaryWithObjects:&v17 forKeys:&v16 count:1];
  sub_100215208(v9);

  [(ADDictationConnection *)self _speechRecordingDidFinish];
  queue = self->_queue;
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_100331980;
  v13[3] = &unk_10051DB68;
  v13[4] = self;
  v14 = failCopy;
  v15 = contextCopy;
  v11 = contextCopy;
  v12 = failCopy;
  dispatch_async(queue, v13);
}

- (void)adSpeechRecordingDidCancelWithContext:(id)context
{
  contextCopy = context;
  v5 = @"Siri Event";
  v11 = @"Siri Event";
  v12 = @"Dictation speechRecordingDidCancel";
  v6 = [NSDictionary dictionaryWithObjects:&v12 forKeys:&v11 count:1];
  sub_100215208(v6);

  [(ADDictationConnection *)self _speechRecordingDidFinish];
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100331BD0;
  block[3] = &unk_10051E010;
  block[4] = self;
  v10 = contextCopy;
  v8 = contextCopy;
  dispatch_async(queue, block);
}

- (void)adSpeechRecordingDidEndWithContext:(id)context
{
  v4 = @"Siri Event";
  v9 = @"Siri Event";
  v10 = @"Dictation speechRecordingDidEnd";
  v5 = [NSDictionary dictionaryWithObjects:&v10 forKeys:&v9 count:1];
  sub_100215208(v5);

  [(ADDictationConnection *)self _speechRecordingDidFinish];
  v6 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    v7 = 136315138;
    v8 = "[ADDictationConnection adSpeechRecordingDidEndWithContext:]";
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "%s Dictation transaction ended! resuming idle timer", &v7, 0xCu);
  }

  [(ADDictationConnection *)self invalidateDictationAssertion];
  [(AFDictationServiceDelegate *)self->_serviceDelegate speechRecordingDidEnd];
}

- (void)adSpeechRecordingDidBeginOnAVRecordRoute:(id)route audioSessionID:(unsigned int)d bluetoothDevice:(id)device sessionRequestUUID:(id)iD dictationOptions:(id)options context:(id)context
{
  contextCopy = context;
  optionsCopy = options;
  iDCopy = iD;
  kdebug_trace();
  v14 = @"Siri Event";
  v18 = @"Siri Event";
  v19 = @"Dictation speechRecordingDidBegin";
  v15 = [NSDictionary dictionaryWithObjects:&v19 forKeys:&v18 count:1];
  sub_100215208(v15);

  [(ADDictationConnection *)self preventDeviceFromIdlingIfRequired];
  serviceDelegate = self->_serviceDelegate;
  sessionUUID = [contextCopy sessionUUID];

  [(AFDictationServiceDelegate *)serviceDelegate speechRecordingDidBeginWithOptions:optionsCopy sessionUUID:sessionUUID sessionRequestUUID:iDCopy];
}

- (void)_removeAllAudioSessionAssertionsForReason:(id)reason
{
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_100332198;
  v17[3] = &unk_10051C198;
  reasonCopy = reason;
  v18 = reasonCopy;
  selfCopy = self;
  v4 = [AFAssertionContext newWithBuilder:v17];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = self->_audioSessionAssertions;
  v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v13 objects:v26 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v14;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v14 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v13 + 1) + 8 * i);
        v11 = AFSiriLogContextDaemon;
        if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
        {
          *buf = 136315650;
          v21 = "[ADDictationConnection _removeAllAudioSessionAssertionsForReason:]";
          v22 = 2048;
          selfCopy2 = self;
          v24 = 2112;
          v25 = v10;
          _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "%s %p audioSessionAssertion = %@", buf, 0x20u);
        }

        [v10 relinquishWithContext:v4 options:0];
      }

      v7 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v13 objects:v26 count:16];
    }

    while (v7);
  }

  [(NSMutableArray *)self->_audioSessionAssertions removeAllObjects];
}

- (void)_addAudioSessionAssertion:(id)assertion
{
  assertionCopy = assertion;
  audioSessionAssertions = self->_audioSessionAssertions;
  v8 = assertionCopy;
  if (!audioSessionAssertions)
  {
    v6 = objc_alloc_init(NSMutableArray);
    v7 = self->_audioSessionAssertions;
    self->_audioSessionAssertions = v6;

    assertionCopy = v8;
    audioSessionAssertions = self->_audioSessionAssertions;
  }

  [(NSMutableArray *)audioSessionAssertions addObject:assertionCopy];
}

- (void)_speechRecordingDidFinish
{
  v3 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_DEBUG))
  {
    dictationOptions = self->_dictationOptions;
    v6 = v3;
    LODWORD(dictationOptions) = [(AFDictationOptions *)dictationOptions releaseAudioSessionOnRecordingCompletion];
    v7 = AFSetAudioSessionInactiveOptionsGetNames();
    *buf = 136315650;
    v10 = "[ADDictationConnection _speechRecordingDidFinish]";
    v11 = 1024;
    v12 = dictationOptions;
    v13 = 2112;
    v14 = v7;
    _os_log_debug_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEBUG, "%s _speechRecordingDidFinish _dictationOptions releaseAudioSessionOnRecordingCompletion: %d, AFSetAudioSessionInactiveOptions: %@", buf, 0x1Cu);
  }

  queue = self->_queue;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100332474;
  v8[3] = &unk_10051D770;
  v8[4] = self;
  v8[5] = 1;
  dispatch_async(queue, v8);
}

- (void)_updateDictationOptions:(id)options
{
  v4 = [options copy];
  dictationOptions = self->_dictationOptions;
  self->_dictationOptions = v4;

  _objc_release_x1(v4, dictationOptions);
}

- (void)connectionDisconnected
{
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1003325D0;
  block[3] = &unk_10051DFE8;
  block[4] = self;
  dispatch_async(queue, block);
  self->_disconnected = 1;
  localSpeechRecognizer = self->_localSpeechRecognizer;
  if (localSpeechRecognizer)
  {
    [(CoreEmbeddedSpeechRecognizer *)localSpeechRecognizer invalidate];
    v5 = self->_localSpeechRecognizer;
    self->_localSpeechRecognizer = 0;
  }
}

- (void)dealloc
{
  v3 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315394;
    v6 = "[ADDictationConnection dealloc]";
    v7 = 2048;
    selfCopy = self;
    _os_log_debug_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEBUG, "%s %p", buf, 0x16u);
  }

  [(ADDictationConnection *)self _continuePendingSpeechRequestFromTimestamp:0.0];
  v4.receiver = self;
  v4.super_class = ADDictationConnection;
  [(ADDictationConnection *)&v4 dealloc];
}

- (ADDictationConnection)initWithServiceDelegate:(id)delegate
{
  delegateCopy = delegate;
  v15.receiver = self;
  v15.super_class = ADDictationConnection;
  v6 = [(ADDictationConnection *)&v15 init];
  if (v6)
  {
    v7 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136315394;
      v17 = "[ADDictationConnection initWithServiceDelegate:]";
      v18 = 2048;
      v19 = v6;
      _os_log_debug_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEBUG, "%s %p", buf, 0x16u);
    }

    objc_storeStrong(&v6->_serviceDelegate, delegate);
    v8 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v9 = dispatch_queue_attr_make_with_qos_class(v8, QOS_CLASS_USER_INTERACTIVE, 0);

    v10 = dispatch_queue_create("ADDictationConnection", v9);
    queue = v6->_queue;
    v6->_queue = v10;

    v12 = objc_alloc_init(ADDictationSessionTracker);
    sessionTracker = v6->_sessionTracker;
    v6->_sessionTracker = v12;

    if (qword_100590AA0 != -1)
    {
      dispatch_once(&qword_100590AA0, &stru_10051C170);
    }
  }

  return v6;
}

@end