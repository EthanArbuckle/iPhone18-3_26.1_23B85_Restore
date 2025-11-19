@interface ADDictationConnection
- (ADDictationConnection)initWithServiceDelegate:(id)a3;
- (BOOL)adWaitingForAudioFile;
- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4;
- (id)_dictationWillStartWithLanguageCode:(id)a3 options:(id)a4 speechOptions:(id)a5 xpcconnection:(id)a6;
- (id)_localSpeechRecognizerSupportingBackground:(BOOL)a3;
- (id)_updateDictationOptionsForOnDeviceDictation:(id)a3 language:(id)a4;
- (void)_addAudioSessionAssertion:(id)a3;
- (void)_continuePendingSpeechRequestFromTimestamp:(double)a3;
- (void)_invokeRequestCompletion;
- (void)_removeAllAudioSessionAssertionsForReason:(id)a3;
- (void)_sendEngagementFeedback:(int64_t)a3 voiceQueryIdentifier:(id)a4;
- (void)_speechRecordingDidFinish;
- (void)_startDictationWithLanguageCode:(id)a3 options:(id)a4 speechOptions:(id)a5 xpcconnection:(id)a6;
- (void)_startDictationWithURL:(id)a3 isNarrowBand:(BOOL)a4 language:(id)a5 options:(id)a6;
- (void)_updateDictationOptions:(id)a3;
- (void)adAudioFileFinishedWriting:(id)a3 error:(id)a4 context:(id)a5;
- (void)adPronunciationRecognized:(id)a3 usingSpeechModel:(id)a4 sessionUUID:(id)a5;
- (void)adSpeechDidBeginLocalRecognitionWithModelInfo:(id)a3 sessionUUID:(id)a4;
- (void)adSpeechDidFindVoiceSearchFinalResult:(id)a3;
- (void)adSpeechDidFindVoiceSearchPartialResult:(id)a3;
- (void)adSpeechDidPauseRecognition;
- (void)adSpeechLanguageDetectorFailedWithError:(id)a3;
- (void)adSpeechLocalRecognitionDidSucceedWithSessionUUID:(id)a3;
- (void)adSpeechMultilingualSpeechRecognized:(id)a3 sessionUUID:(id)a4;
- (void)adSpeechRecognitionDidFail:(id)a3 sessionUUID:(id)a4;
- (void)adSpeechRecognized:(id)a3 usingSpeechModel:(id)a4 sessionUUID:(id)a5;
- (void)adSpeechRecognizedPartialResult:(id)a3;
- (void)adSpeechRecognizedStructuredResult:(id)a3 usingSpeechModel:(id)a4 sessionUUID:(id)a5;
- (void)adSpeechRecordingDidBeginOnAVRecordRoute:(id)a3 audioSessionID:(unsigned int)a4 bluetoothDevice:(id)a5 sessionRequestUUID:(id)a6 dictationOptions:(id)a7 context:(id)a8;
- (void)adSpeechRecordingDidCancelWithContext:(id)a3;
- (void)adSpeechRecordingDidDetectLanguage:(id)a3 confidenceScores:(id)a4 isConfident:(BOOL)a5;
- (void)adSpeechRecordingDidEndWithContext:(id)a3;
- (void)adSpeechRecordingDidFail:(id)a3 context:(id)a4;
- (void)adSpeechRecordingDidRecognizePhrases:(id)a3 rawPhrases:(id)a4 utterances:(id)a5 rawUtterances:(id)a6 nluResult:(id)a7 sessionUUID:(id)a8 refId:(id)a9;
- (void)addRecordedSpeechSampleData:(id)a3;
- (void)cancelSpeech;
- (void)connectionDisconnected;
- (void)continuePendingSpeechRequestFromTimestamp:(double)a3;
- (void)dealloc;
- (void)endSession;
- (void)findAlternativesForString:(id)a3 maxResults:(int)a4 completion:(id)a5;
- (void)getInstalledOfflineLanguagesWithCompletion:(id)a3;
- (void)localSpeechRecognizer:(id)a3 didCompletionRecognitionWithStatistics:(id)a4 error:(id)a5;
- (void)localSpeechRecognizer:(id)a3 didProcessAudioDuration:(double)a4;
- (void)localSpeechRecognizer:(id)a3 didRecognizePackage:(id)a4;
- (void)localSpeechRecognizer:(id)a3 didRecognizeRawEagerRecognitionCandidate:(id)a4;
- (void)localSpeechRecognizer:(id)a3 didRecognizeTokens:(id)a4;
- (void)pauseRecognition;
- (void)preheat;
- (void)preheatEuclidModelWithLanguage:(id)a3 clientID:(id)a4;
- (void)preheatForLanguageCode:(id)a3;
- (void)preheatTestWithLanguage:(id)a3 options:(id)a4;
- (void)preheatWithRecordDeviceIdentifier:(id)a3;
- (void)recordFailureMetricsForError:(id)a3;
- (void)reportIssueForError:(id)a3 eventType:(int64_t)a4 context:(id)a5;
- (void)reportIssueForError:(id)a3 eventType:(int64_t)a4 subtype:(id)a5 context:(id)a6;
- (void)requestOfflineAssistantSupportForLanguage:(id)a3 completion:(id)a4;
- (void)requestOfflineDictationSupportForLanguage:(id)a3 completion:(id)a4;
- (void)resumeRecognitionWithPrefixText:(id)a3 postfixText:(id)a4 selectedText:(id)a5;
- (void)sendSpeechCorrectionInfo:(id)a3 forCorrectionContext:(id)a4;
- (void)sendSpeechCorrectionInfo:(id)a3 interactionIdentifier:(id)a4;
- (void)sendUserSelectedAlternativeDictationLanguageCode:(id)a3;
- (void)sendVisualContextAndCorrectionsInfo:(id)a3 interactionIdentifier:(id)a4;
- (void)startDictationWithLanguageCode:(id)a3 options:(id)a4 speechOptions:(id)a5;
- (void)startRecordedAudioDictationWithOptions:(id)a3 language:(id)a4 narrowband:(BOOL)a5 forceSampling:(BOOL)a6;
- (void)startRecordingForPendingDictationWithLanguageCode:(id)a3 options:(id)a4 speechOptions:(id)a5 reply:(id)a6;
- (void)startRequestActivityWithCompletion:(id)a3;
- (void)stopSpeechWithOptions:(id)a3;
- (void)suppressLowStorageNotificationForLanguage:(id)a3 suppress:(BOOL)a4;
- (void)updateSpeechOptions:(id)a3;
- (void)updateVoiceCommandContextWithPrefixText:(id)a3 postfixText:(id)a4 selectedText:(id)a5 disambiguationActive:(id)a6 cursorInVisibleText:(id)a7 favorCommandSuppression:(id)a8 abortCommandSuppression:(id)a9 undoEvent:(id)a10;
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

- (void)_continuePendingSpeechRequestFromTimestamp:(double)a3
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
      v13 = a3;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "%s timestamp = %f", &v10, 0x16u);
      pendingSpeechRequestContinue = self->_pendingSpeechRequestContinue;
    }

    pendingSpeechRequestContinue[2](pendingSpeechRequestContinue, a3);
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

- (void)continuePendingSpeechRequestFromTimestamp:(double)a3
{
  queue = self->_queue;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_10032B7AC;
  v4[3] = &unk_10051D770;
  v4[4] = self;
  *&v4[5] = a3;
  dispatch_async(queue, v4);
}

- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4
{
  v5 = a4;
  v6 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    v9 = 136315138;
    v10 = "[ADDictationConnection listener:shouldAcceptNewConnection:]";
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "%s ", &v9, 0xCu);
  }

  v7 = AFPendingSpeechRequestServiceInterface();
  [v5 setExportedInterface:v7];

  [v5 setExportedObject:self];
  [v5 resume];

  return 1;
}

- (void)localSpeechRecognizer:(id)a3 didCompletionRecognitionWithStatistics:(id)a4 error:(id)a5
{
  v6 = a5;
  queue = self->_queue;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_10032B948;
  v9[3] = &unk_10051E010;
  v10 = v6;
  v11 = self;
  v8 = v6;
  dispatch_async(queue, v9);
}

- (void)localSpeechRecognizer:(id)a3 didRecognizePackage:(id)a4
{
  v5 = a4;
  queue = self->_queue;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_10032BAE8;
  v8[3] = &unk_10051E010;
  v8[4] = self;
  v9 = v5;
  v7 = v5;
  dispatch_async(queue, v8);
}

- (void)localSpeechRecognizer:(id)a3 didRecognizeRawEagerRecognitionCandidate:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = AFSiriLogContextSpeech;
  if (os_log_type_enabled(AFSiriLogContextSpeech, OS_LOG_TYPE_DEBUG))
  {
    v8 = 136315650;
    v9 = "[ADDictationConnection localSpeechRecognizer:didRecognizeRawEagerRecognitionCandidate:]";
    v10 = 2112;
    v11 = v5;
    v12 = 2112;
    v13 = v6;
    _os_log_debug_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEBUG, "%s %@ raw eager candidate: %@", &v8, 0x20u);
  }
}

- (void)localSpeechRecognizer:(id)a3 didProcessAudioDuration:(double)a4
{
  queue = self->_queue;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_10032BC50;
  v5[3] = &unk_10051D770;
  v5[4] = self;
  *&v5[5] = a4;
  dispatch_async(queue, v5);
}

- (void)localSpeechRecognizer:(id)a3 didRecognizeTokens:(id)a4
{
  v5 = a4;
  queue = self->_queue;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_10032BCFC;
  v8[3] = &unk_10051E010;
  v8[4] = self;
  v9 = v5;
  v7 = v5;
  dispatch_async(queue, v8);
}

- (void)sendVisualContextAndCorrectionsInfo:(id)a3 interactionIdentifier:(id)a4
{
  queue = self->_queue;
  v6 = a4;
  v7 = a3;
  dispatch_assert_queue_V2(queue);
  v8 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    v10 = 136315138;
    v11 = "[ADDictationConnection sendVisualContextAndCorrectionsInfo:interactionIdentifier:]";
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "%s ", &v10, 0xCu);
  }

  v9 = +[ADCommandCenter sharedCommandCenter];
  [v9 sendVisualContextAndCorrectionsInfo:v7 interactionIdentifier:v6];
}

- (id)_localSpeechRecognizerSupportingBackground:(BOOL)a3
{
  v3 = a3;
  if (a3)
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
      v16 = self;
      v17 = 1040;
      v18 = 16;
      v19 = 2096;
      v20 = v5;
      v21 = 1024;
      v22 = v3;
      v23 = 2112;
      v24 = v10;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "%s %@ created speech recognizer (instanceUUID = %{uuid_t}.16P, for background = %{BOOL}d) %@", &v13, 0x36u);
    }
  }

  v11 = self->_localSpeechRecognizer;

  return v11;
}

- (id)_updateDictationOptionsForOnDeviceDictation:(id)a3 language:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = +[AFPreferences sharedPreferences];
  v9 = [v8 isOnDeviceDictationForced];

  if ((v9 & 1) != 0 || (AFIsATVOnly() & 1) == 0 && AFIsDictationRequestEligibleForOnDeviceDictation() && (+[AFPreferences sharedPreferences](AFPreferences, "sharedPreferences"), v27 = objc_claimAutoreleasedReturnValue(), v28 = [v27 preferOnlineRecognitionEnabled], v27, (v28 & 1) == 0))
  {
    v10 = +[ADDictationOfflineStatusObserver sharedDictationOfflineStatusObserver];
    v11 = [v10 offlineDictationStatus];

    v12 = AFIsSearchDictationRequest();
    v44 = self;
    if (v11)
    {
      v13 = [v7 componentsSeparatedByString:@"_"];
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

      v19 = [v11 objectForKeyedSubscript:v18];
      if (v19)
      {
        v20 = v19;
        v43 = v18;
        v21 = [v19 objectForKeyedSubscript:AFOfflineDictationStatusInstalledKey];
        v45 = [v21 BOOLValue];

        v22 = [v20 objectForKeyedSubscript:AFOfflineDictationStatusHighQualityKey];
        v23 = [v22 BOOLValue];

        v24 = [v20 objectForKeyedSubscript:AFOfflineDictationStatusOnDeviceSearchKey];
        v25 = [v24 BOOLValue];

        if (v9 & 1 | ((v12 & 1) == 0))
        {
          v26 = 1;
        }

        else
        {
          v26 = [v6 preferOnDeviceRecognition] | v25;
        }

        if (v45)
        {
          if (v23 & v26)
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
                v31 = v7;
              }

              v32 = v30;
              v33 = [NSNumber numberWithBool:v23];
              *buf = 136315906;
              v47 = "[ADDictationConnection _updateDictationOptionsForOnDeviceDictation:language:]";
              v48 = 2112;
              v49 = v7;
              v50 = 2112;
              *v51 = v31;
              *&v51[8] = 2112;
              v52[0] = v33;
              _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_INFO, "%s Dictation: force offline speech recognition. Language code: %@, asset language code: %@, status: High Quality model: %@", buf, 0x2Au);
            }

            [v6 setForceOfflineRecognition:1];
            [v6 setSecureOfflineOnly:1];
            if ([v6 continuousListening])
            {
              v34 = [v20 objectForKeyedSubscript:AFOfflineDictationStatusContinuousListeningKey];
              if ([v34 BOOLValue])
              {
              }

              else
              {
                v39 = +[AFPreferences sharedPreferences];
                v40 = [v39 utteranceDetectionEnabled];

                if ((v40 & 1) == 0)
                {
                  [v6 setDetectUtterances:0];
                  [v6 setContinuousListening:0];
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

          v42 = [v6 forceOfflineRecognition];

          if (v42)
          {
            goto LABEL_21;
          }
        }

        v18 = v43;
      }

      else
      {
        v45 = 0;
        LODWORD(v23) = 0;
        v25 = 0;
      }
    }

    else
    {
      v45 = 0;
      LODWORD(v23) = 0;
      v25 = 0;
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
        v36 = v7;
      }

      v47 = "[ADDictationConnection _updateDictationOptionsForOnDeviceDictation:language:]";
      v48 = 2112;
      v49 = v7;
      v50 = 2112;
      *v51 = v36;
      *&v51[8] = 1024;
      LODWORD(v52[0]) = v12;
      WORD2(v52[0]) = 1024;
      *(v52 + 6) = v25;
      _os_log_impl(&_mh_execute_header, v35, OS_LOG_TYPE_INFO, "%s Dictation: offline speech recognition not available. Language code: %@, asset language code: %@, searchRequest=%d, searchModel=%d", buf, 0x2Cu);
    }

    if (!v9)
    {
      goto LABEL_44;
    }

    v37 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315906;
      v47 = "[ADDictationConnection _updateDictationOptionsForOnDeviceDictation:language:]";
      v48 = 2114;
      v49 = v7;
      v50 = 1024;
      *v51 = v23;
      *&v51[4] = 1024;
      *&v51[6] = v45;
      _os_log_error_impl(&_mh_execute_header, v37, OS_LOG_TYPE_ERROR, "%s Dictation for %{public}@ is supported=%d, installed=%d on device with forced offline recognition", buf, 0x22u);
      if (!v23)
      {
        goto LABEL_40;
      }
    }

    else if (!v23)
    {
LABEL_40:
      v38 = [AFError errorWithCode:602];
      goto LABEL_45;
    }

    [(ADDictationConnection *)v44 requestOfflineDictationSupportForLanguage:v7 completion:&stru_10051C250];
    goto LABEL_40;
  }

LABEL_44:
  v38 = 0;
LABEL_45:

  return v38;
}

- (void)updateVoiceCommandContextWithPrefixText:(id)a3 postfixText:(id)a4 selectedText:(id)a5 disambiguationActive:(id)a6 cursorInVisibleText:(id)a7 favorCommandSuppression:(id)a8 abortCommandSuppression:(id)a9 undoEvent:(id)a10
{
  v16 = a10;
  v17 = a9;
  v18 = a8;
  v19 = a7;
  v20 = a6;
  v21 = a5;
  v22 = a4;
  v23 = a3;
  v24 = +[ADCommandCenter sharedCommandCenter];
  [v24 updateVoiceCommandContextWithPrefixText:v23 postfixText:v22 selectedText:v21 disambiguationActive:v20 cursorInVisibleText:v19 favorCommandSuppression:v18 abortCommandSuppression:v17 undoEvent:v16];
}

- (void)findAlternativesForString:(id)a3 maxResults:(int)a4 completion:(id)a5
{
  v5 = *&a4;
  v7 = a5;
  v8 = a3;
  v9 = +[ADPhoneticEmbedder sharedEmbedder];
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_10032C6B4;
  v11[3] = &unk_10051C150;
  v12 = v7;
  v10 = v7;
  [v9 findAlternativesForString:v8 maxResults:v5 completion:v11];
}

- (void)preheatEuclidModelWithLanguage:(id)a3 clientID:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = +[ADPhoneticEmbedder sharedEmbedder];
  [v7 preheatEuclidModelWithLanguageCode:v6 clientID:v5];
}

- (void)reportIssueForError:(id)a3 eventType:(int64_t)a4 subtype:(id)a5 context:(id)a6
{
  v9 = a3;
  v10 = a5;
  v11 = a6;
  if (AFIsInternalInstall())
  {
    v12 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
    {
      v13 = v12;
      v14 = [v9 localizedDescription];
      v15 = AFAnalyticsEventTypeGetName();
      *buf = 136315906;
      v22 = "[ADDictationConnection reportIssueForError:eventType:subtype:context:]";
      v23 = 2112;
      v24 = v14;
      v25 = 2112;
      v26 = v15;
      v27 = 2112;
      v28 = v11;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_INFO, "%s Reporting issue for error %@, event %@ with context %@", buf, 0x2Au);
    }

    v16 = +[SiriCoreSymptomsReporter sharedInstance];
    v17 = +[NSXPCConnection currentConnection];
    v18 = [v17 processIdentifier];
    v19 = byte_100590548;
    v20 = sub_100097574();
    [v16 reportIssueForError:v9 type:a4 subtype:v10 context:v11 processIdentifier:v18 walkboutStatus:v19 triggerForIDSIdentifiers:v20];
  }
}

- (void)reportIssueForError:(id)a3 eventType:(int64_t)a4 context:(id)a5
{
  v7 = a3;
  v8 = a5;
  if (AFIsInternalInstall())
  {
    v9 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
    {
      v10 = v9;
      v11 = [v7 localizedDescription];
      v12 = AFAnalyticsEventTypeGetName();
      v18 = 136315906;
      v19 = "[ADDictationConnection reportIssueForError:eventType:context:]";
      v20 = 2112;
      v21 = v11;
      v22 = 2112;
      v23 = v12;
      v24 = 2112;
      v25 = v8;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "%s Reporting issue for error %@, event %@ with context %@", &v18, 0x2Au);
    }

    v13 = +[SiriCoreSymptomsReporter sharedInstance];
    v14 = +[NSXPCConnection currentConnection];
    v15 = [v14 processIdentifier];
    v16 = byte_100590548;
    v17 = sub_100097574();
    [v13 reportIssueForError:v7 type:a4 context:v8 processIdentifier:v15 walkboutStatus:v16 triggerForIDSIdentifiers:v17];
  }
}

- (void)resumeRecognitionWithPrefixText:(id)a3 postfixText:(id)a4 selectedText:(id)a5
{
  v7 = a5;
  v8 = a4;
  v9 = a3;
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
  [v13 resumeRecognitionWithPrefixText:v9 postfixText:v8 selectedText:v7];
}

- (void)suppressLowStorageNotificationForLanguage:(id)a3 suppress:(BOOL)a4
{
  v4 = a4;
  v5 = a3;
  v6 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    v8 = 136315138;
    v9 = "[ADDictationConnection suppressLowStorageNotificationForLanguage:suppress:]";
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "%s ", &v8, 0xCu);
  }

  v7 = +[ADCommandCenter sharedCommandCenter];
  [v7 suppressLowStorageNotificationForLanguage:v5 suppress:v4];
}

- (void)requestOfflineDictationSupportForLanguage:(id)a3 completion:(id)a4
{
  v5 = a4;
  v6 = a3;
  v10 = [[SFEntitledAssetConfig alloc] initWithLanguage:v6 assetType:3];

  v7 = +[SFEntitledAssetManager sharedInstance];
  v8 = +[SFEntitledAssetManager subscriberIdForDictationAssets];
  v9 = [v7 installedAssetWithConfig:v10 regionId:0 shouldSubscribe:1 subscriberId:v8 expiration:0];

  v5[2](v5, v9 != 0, 0);
}

- (void)requestOfflineAssistantSupportForLanguage:(id)a3 completion:(id)a4
{
  v5 = a4;
  v6 = a3;
  v10 = [[SFEntitledAssetConfig alloc] initWithLanguage:v6 assetType:3];

  v7 = +[SFEntitledAssetManager sharedInstance];
  v8 = +[SFEntitledAssetManager subscriberIdForDictationAssets];
  v9 = [v7 installedAssetWithConfig:v10 regionId:0 shouldSubscribe:1 subscriberId:v8 expiration:0];

  v5[2](v5, v9 != 0, 0);
}

- (void)getInstalledOfflineLanguagesWithCompletion:(id)a3
{
  v3 = a3;
  v4 = +[ADCommandCenter sharedCommandCenter];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_10032CF6C;
  v6[3] = &unk_10051CEE0;
  v7 = v3;
  v5 = v3;
  [v4 getOfflineDictationStatusIgnoringCache:1 completion:v6];
}

- (void)_sendEngagementFeedback:(int64_t)a3 voiceQueryIdentifier:(id)a4
{
  queue = self->_queue;
  v6 = a4;
  dispatch_assert_queue_V2(queue);
  v7 = +[ADCommandCenter sharedCommandCenter];
  [v7 sendEngagementFeedback:a3 voiceQueryIdentifier:v6];
}

- (void)_startDictationWithURL:(id)a3 isNarrowBand:(BOOL)a4 language:(id)a5 options:(id)a6
{
  v8 = a4;
  v10 = a3;
  v11 = a5;
  v12 = a6;
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

    [(ADDictationConnection *)self _updateDictationOptions:v12];
    self->_waitingForSpeechRecognition = 1;
    v16 = [(ADDictationSessionTracker *)self->_sessionTracker startSessionForReason:@"file-based dictation is starting" languageCode:v11 options:v12 speechRequestOptions:0];
    v17 = +[ADCommandCenter sharedCommandCenter];
    [v17 startDictationWithURL:v10 isNarrowBand:v8 language:v11 options:v12 sessionUUID:v16 delegate:self];
  }
}

- (void)addRecordedSpeechSampleData:(id)a3
{
  v5 = a3;
  dispatch_assert_queue_V2(self->_queue);
  if (self->_usingLocalSpeechRecognizer)
  {
    [(CoreEmbeddedSpeechRecognizer *)self->_localSpeechRecognizer addAudioPacket:v5];
  }

  else
  {
    v4 = +[ADCommandCenter sharedCommandCenter];
    [v4 addRecordedSpeechSampleData:v5 delegate:self];
  }
}

- (void)startRecordedAudioDictationWithOptions:(id)a3 language:(id)a4 narrowband:(BOOL)a5 forceSampling:(BOOL)a6
{
  v6 = a5;
  v9 = a3;
  v10 = a4;
  dispatch_assert_queue_V2(self->_queue);
  v11 = +[NSXPCConnection currentConnection];
  v12 = v11;
  if (v11)
  {
    if (sub_10032D974(v11, 1))
    {
      if ([v9 forceOfflineRecognition])
      {
        [(ADDictationConnection *)self _updateDictationOptions:v9];
        v13 = 1;
        self->_waitingForSpeechRecognition = 1;
        self->_usingLocalSpeechRecognizer = 1;
        v53 = CoreEmbeddedSpeechRecognizerTaskDictation;
        v14 = [v9 taskHint];
        if (v14 <= 2)
        {
          if (v14 != 1)
          {
            if (v14 == 2)
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
          switch(v14)
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
              v23 = [v9 offlineLanguage];
              v24 = v23;
              if (v23)
              {
                v25 = v23;
              }

              else
              {
                v25 = v10;
              }

              v52 = v25;

              v50 = [v9 modelOverrideURL];
              v26 = [(AFDictationOptions *)self->_dictationOptions fieldLabel];
              v49 = AFIsDictationRequestSpeechApiRequest();

              v27 = [v9 interactionIdentifier];
              v51 = [(AFDictationOptions *)self->_dictationOptions applicationName];
              v28 = [(ADDictationConnection *)self _localSpeechRecognizerSupportingBackground:v15];
              if (v28)
              {
                v48 = [CESRSpeechParameters alloc];
                v47 = [v9 originalAudioFileURL];
                v46 = [v9 detectUtterances];
                v45 = v6;
                v29 = sub_100214D74();
                v30 = [v9 farField];
                [v9 maximumRecognitionDuration];
                v32 = v31;
                v33 = [v9 emojiRecognition];
                BYTE1(v44) = [v9 autoPunctuation];
                LOBYTE(v44) = v33;
                LOWORD(v43) = 0;
                LOBYTE(v42) = v49;
                HIBYTE(v41) = 0;
                *(&v41 + 5) = 0;
                BYTE4(v41) = v13;
                BYTE3(v41) = v30;
                BYTE2(v41) = v29;
                BYTE1(v41) = v46;
                LOBYTE(v41) = v45;
                v34 = v50;
                v35 = v27;
                v36 = v27;
                v37 = v51;
                v38 = [v48 initWithLanguage:v52 requestIdentifier:0 dictationUIInteractionIdentifier:v36 task:v53 loggingContext:0 applicationName:v51 profile:v32 overrides:0.0 modelOverrideURL:0 originalAudioFileURL:0 codec:v50 narrowband:v47 detectUtterances:0 censorSpeech:v41 farField:v42 secureOfflineOnly:0 shouldStoreAudioOnDevice:0 continuousListening:0 shouldHandleCapitalization:v43 isSpeechAPIRequest:0 maximumRecognitionDuration:v44 endpointStart:? inputOrigin:? location:? jitGrammar:? deliverEagerPackage:? disableDeliveringAsrFeatures:? sharedUserIds:? enableEmojiRecognition:? enableAutoPunctuation:?];

                v54[0] = _NSConcreteStackBlock;
                v54[1] = 3221225472;
                v54[2] = sub_10032DB98;
                v54[3] = &unk_10051C1E8;
                v54[4] = self;
                [v28 startSpeechRecognitionWithParameters:v38 didStartHandler:v54];
              }

              else
              {
                v35 = v27;
                v34 = v50;
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
                v37 = v51;
              }

              goto LABEL_34;
            default:
              goto LABEL_24;
          }
        }

        v53 = v22;
        goto LABEL_25;
      }

      v18 = [(ADDictationConnection *)self _updateDictationOptionsForOnDeviceDictation:v9 language:v10];
      if (!v18)
      {
        [(ADDictationConnection *)self _updateDictationOptions:v9];
        self->_waitingForSpeechRecognition = 1;
        v20 = [(ADDictationSessionTracker *)self->_sessionTracker startSessionForReason:@"recorded audio dictation is starting" languageCode:v10 options:v9 speechRequestOptions:0];
        v21 = +[ADCommandCenter sharedCommandCenter];
        [v21 startRecordedDictationWithLanguage:v10 options:v9 sessionUUID:v20 narrowband:v6 delegate:self];

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

- (void)recordFailureMetricsForError:(id)a3
{
  v3 = a3;
  v4 = +[ADCommandCenter sharedCommandCenter];
  [v4 _metrics_recordFailureMetricsForError:v3];
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

- (void)preheatWithRecordDeviceIdentifier:(id)a3
{
  v3 = a3;
  v4 = @"Siri Event";
  v7 = @"Siri Event";
  v8 = @"Dictation preheatWithRecordDeviceIdentifier";
  v5 = [NSDictionary dictionaryWithObjects:&v8 forKeys:&v7 count:1];
  sub_100215208(v5);

  v6 = +[ADCommandCenter sharedCommandCenter];
  [v6 preheatWithRecordDeviceIdentifier:v3];
}

- (void)preheatTestWithLanguage:(id)a3 options:(id)a4
{
  v5 = a4;
  v6 = a3;
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
  [v9 setPreheatLanguage:v6];

  v11 = [v5 modelOverrideURL];

  [v9 setPreheatTestModelPath:v11];
  v12 = +[ADCommandCenter sharedCommandCenter];
  [v12 preheatWithStyle:v10 forOptions:v9 completion:0];
}

- (void)preheat
{
  v4 = +[AFPreferences sharedPreferences];
  v3 = [v4 languageCode];
  [(ADDictationConnection *)self preheatForLanguageCode:v3];
}

- (void)preheatForLanguageCode:(id)a3
{
  v3 = a3;
  v4 = @"Siri Event";
  v13 = @"Siri Event";
  v14 = @"Dictation preheat";
  v5 = [NSDictionary dictionaryWithObjects:&v14 forKeys:&v13 count:1];
  sub_100215208(v5);

  v6 = AFIsNano();
  if (!v3)
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
  [v9 setPreheatLanguage:v3];

  v10 = +[ADCommandCenter sharedCommandCenter];
  [v10 preheatWithStyle:v8 forOptions:v9 completion:0];
}

- (void)sendUserSelectedAlternativeDictationLanguageCode:(id)a3
{
  v4 = a3;
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
  v9 = v4;
  v7 = v4;
  dispatch_async(queue, block);
}

- (void)sendSpeechCorrectionInfo:(id)a3 interactionIdentifier:(id)a4
{
  queue = self->_queue;
  v6 = a4;
  v7 = a3;
  dispatch_assert_queue_V2(queue);
  v8 = +[ADCommandCenter sharedCommandCenter];
  [v8 sendSpeechCorrectionInfo:v7 interactionIdentifier:v6];
}

- (void)sendSpeechCorrectionInfo:(id)a3 forCorrectionContext:(id)a4
{
  v8 = a3;
  v6 = a4;
  dispatch_assert_queue_V2(self->_queue);
  if (!self->_usingLocalSpeechRecognizer)
  {
    v7 = +[ADCommandCenter sharedCommandCenter];
    [v7 sendSpeechCorrectionInfo:v8 forCorrectionContext:v6];
  }
}

- (void)updateSpeechOptions:(id)a3
{
  v10 = a3;
  v4 = +[NSXPCConnection currentConnection];
  v5 = [v10 audioFileHandle];
  if (v5 && (v6 = v5, v7 = sub_10032E474(v4), v6, !v7))
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

    sub_10032E4D4(v10);
    v8 = +[ADCommandCenter sharedCommandCenter];
    [v8 updateSpeechOptions:v10 forDelegate:self];
  }

LABEL_7:
}

- (void)stopSpeechWithOptions:(id)a3
{
  v4 = a3;
  v5 = @"Siri Event";
  v18[0] = @"Siri Event";
  v18[1] = @"stopReason";
  v19[0] = @"Dictation stop";
  v6 = [v4 stopContext];
  v7 = [v6 objectForKeyedSubscript:@"stopDictation"];
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
  v12 = [v4 audioFileHandle];
  if (v12 && (v13 = v12, v14 = sub_10032E474(v11), v13, !v14))
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
      sub_10032E4D4(v4);
      v15 = +[ADCommandCenter sharedCommandCenter];
      [v15 stopSpeechWithOptions:v4 forDelegate:self];

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

- (void)startDictationWithLanguageCode:(id)a3 options:(id)a4 speechOptions:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [v10 audioFileHandle];
  if (v11 && (v12 = v11, +[NSXPCConnection currentConnection], v13 = objc_claimAutoreleasedReturnValue(), v14 = sub_10032E474(v13), v13, v12, !v14))
  {
    serviceDelegate = self->_serviceDelegate;
    v23 = 1700;
  }

  else
  {
    v15 = +[AFPreferences sharedPreferences];
    v16 = [v15 dictationIsEnabled];

    if (v16)
    {
      v17 = +[NSXPCConnection currentConnection];
      if (!AFDictationRequiresRequestValidation() || (sub_10032D974(v17, 0) & 1) != 0 || (AFIsDictationRequestFromAppleClient() & 1) != 0)
      {
        v18 = [(ADDictationConnection *)self _updateDictationOptionsForOnDeviceDictation:v9 language:v8];
        if (!v18)
        {
          v24 = [v9 applicationName];
          if (v8)
          {
            v25 = v8;
          }

          else
          {
            v25 = &stru_10051F508;
          }

          v29 = @"language-code";
          v30 = v25;
          v26 = [NSDictionary dictionaryWithObjects:&v30 forKeys:&v29 count:1];
          [AFDictationDiscoverabilitySignalsStreamManager sendDictationRequestStartedEventWithBundleIdentifier:v24 context:0 userInfo:v26];

          sub_10032E4D4(v10);
          [(ADDictationConnection *)self _startDictationWithLanguageCode:v8 options:v9 speechOptions:v10 xpcconnection:v17];
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

- (void)startRecordingForPendingDictationWithLanguageCode:(id)a3 options:(id)a4 speechOptions:(id)a5 reply:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = [v12 audioFileHandle];
  if (v14)
  {
    v15 = v14;
    v16 = +[NSXPCConnection currentConnection];
    v17 = sub_10032E474(v16);

    if (!v17)
    {
      serviceDelegate = self->_serviceDelegate;
      v24 = 1700;
LABEL_9:
      v25 = [AFError errorWithCode:v24];
      [(AFDictationServiceDelegate *)serviceDelegate speechRecognitionDidFinishWithError:v25];

      v13[2](v13, 0);
      goto LABEL_10;
    }
  }

  v18 = +[AFPreferences sharedPreferences];
  v19 = [v18 dictationIsEnabled];

  if ((v19 & 1) == 0)
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

  v20 = [(ADDictationConnection *)self _dictationWillStartWithLanguageCode:v10 options:v11 speechOptions:v12 xpcconnection:0];
  v21 = +[ADCommandCenter sharedCommandCenter];
  v26[0] = _NSConcreteStackBlock;
  v26[1] = 3221225472;
  v26[2] = sub_10032EF54;
  v26[3] = &unk_10051C1C0;
  v26[4] = self;
  v27 = v13;
  [v21 startRecordingForPendingDictationWithLanguageCode:v10 options:v11 speechOptions:v12 sessionUUID:v20 delegate:self completion:v26];

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
      v9 = self;
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

- (void)startRequestActivityWithCompletion:(id)a3
{
  v4 = a3;
  queue = self->_queue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10032F278;
  v7[3] = &unk_10051E038;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(queue, v7);
}

- (void)_startDictationWithLanguageCode:(id)a3 options:(id)a4 speechOptions:(id)a5 xpcconnection:(id)a6
{
  v10 = a5;
  v11 = a4;
  v12 = a3;
  v14 = [(ADDictationConnection *)self _dictationWillStartWithLanguageCode:v12 options:v11 speechOptions:v10 xpcconnection:a6];
  v13 = +[ADCommandCenter sharedCommandCenter];
  [v13 startDictationWithLanguageCode:v12 options:v11 speechOptions:v10 sessionUUID:v14 delegate:self];
}

- (id)_dictationWillStartWithLanguageCode:(id)a3 options:(id)a4 speechOptions:(id)a5 xpcconnection:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  dispatch_assert_queue_V2(self->_queue);
  v14 = [(ADDictationSessionTracker *)self->_sessionTracker startSessionForReason:@"dictation is starting" languageCode:v10 options:v11 speechRequestOptions:v12];
  v15 = [v11 transcriptionMode];
  v16 = &stru_10051F508;
  if (v15 <= 3)
  {
    v16 = off_10051C270[v15];
  }

  v17 = @"Siri Event";
  v50[0] = @"Siri Event";
  v50[1] = @"mode";
  v51[0] = @"Dictation start";
  v51[1] = v16;
  v50[2] = @"startReason";
  v18 = [v12 startContext];
  v19 = [v18 objectForKeyedSubscript:@"startDictation"];
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
  v22 = [v11 applicationName];
  v23 = v22;
  if (v22)
  {
    v24 = v22;
  }

  else
  {
    v24 = &stru_10051F508;
  }

  v51[3] = v24;
  v50[4] = @"recognition";
  v25 = @"server";
  if ([v11 forceOfflineRecognition] && objc_msgSend(v11, "secureOfflineOnly"))
  {
    v25 = @"on-device";
  }

  v51[4] = v25;
  v26 = [NSDictionary dictionaryWithObjects:v51 forKeys:v50 count:5];
  sub_100215208(v26);

  if ([v11 detectUtterances] && (objc_msgSend(v11, "forceOfflineRecognition") & 1) == 0)
  {
    v27 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
    {
      v46 = 136315138;
      v47 = "[ADDictationConnection _dictationWillStartWithLanguageCode:options:speechOptions:xpcconnection:]";
      _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_INFO, "%s Utterance detection for live recognition not yet supported; disabling. <rdar://problem/23691545>", &v46, 0xCu);
    }

    [v11 setDetectUtterances:0];
  }

  if ([v11 shouldClassifyIntent] && (objc_msgSend(v11, "detectUtterances") & 1) == 0)
  {
    v28 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
    {
      v46 = 136315138;
      v47 = "[ADDictationConnection _dictationWillStartWithLanguageCode:options:speechOptions:xpcconnection:]";
      _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_INFO, "%s Dictation intent classification is only supported with utterance detection enabled; disabling.", &v46, 0xCu);
    }

    [v11 setShouldClassifyIntent:0];
  }

  if (!+[AFFeatureFlags isDictationVoiceCommandsEnabled])
  {
    goto LABEL_27;
  }

  if ([v11 shouldRecognizeCommands] && (objc_msgSend(v11, "detectUtterances") & 1) == 0)
  {
    v29 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
    {
      v46 = 136315138;
      v47 = "[ADDictationConnection _dictationWillStartWithLanguageCode:options:speechOptions:xpcconnection:]";
      _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_INFO, "%s Dictation command recognition is only supported with utterance detection enabled; disabling.", &v46, 0xCu);
    }

LABEL_27:
    [v11 setShouldRecognizeCommands:0];
  }

  if ([v11 shouldRecognizeCommands] && objc_msgSend(v11, "shouldClassifyIntent"))
  {
    v30 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
    {
      v46 = 136315138;
      v47 = "[ADDictationConnection _dictationWillStartWithLanguageCode:options:speechOptions:xpcconnection:]";
      _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_INFO, "%s We can only support either Dictation intent classification or Dictation command recognition; disabling intent classification.", &v46, 0xCu);
    }

    [v11 setShouldClassifyIntent:0];
  }

  if ([v11 shouldGenerateVoiceCommandCandidates] && (objc_msgSend(v11, "detectUtterances") & 1) == 0)
  {
    v31 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
    {
      v46 = 136315138;
      v47 = "[ADDictationConnection _dictationWillStartWithLanguageCode:options:speechOptions:xpcconnection:]";
      _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_INFO, "%s Dictation voice command candidates generation is only supported with utterance detection enabled; disabling.", &v46, 0xCu);
    }

    [v11 setShouldGenerateVoiceCommandCandidates:0];
  }

  v32 = +[AFPreferences sharedPreferences];
  v33 = [v32 dictationAutoPunctuationSupportedLocales];

  v34 = [v10 stringByReplacingOccurrencesOfString:@"_" withString:@"-"];
  v35 = [v33 containsObject:v34];

  if ((v35 & 1) == 0)
  {
    v36 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
    {
      v46 = 136315394;
      v47 = "[ADDictationConnection _dictationWillStartWithLanguageCode:options:speechOptions:xpcconnection:]";
      v48 = 2112;
      v49 = v10;
      _os_log_impl(&_mh_execute_header, v36, OS_LOG_TYPE_INFO, "%s Disabling auto punctuation for unsupported language %@.", &v46, 0x16u);
    }

    [v11 setAutoPunctuation:0];
  }

  [(ADDictationConnection *)self _updateDictationOptions:v11];
  v37 = 1;
  self->_waitingForSpeechRecognition = 1;
  if (![v11 transcriptionMode])
  {
    v37 = [v11 voiceSearchTypeOptions] != 0;
  }

  self->_waitingForStructuredResultsOrVoiceSearch = v37;
  self->_waitingForAudioFile = 0;
  if ([v12 audioFileType])
  {
    if (v13)
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

    [v12 setAudioFileType:0];
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
  if (v13)
  {
    if (sub_10032D974(v13, 0))
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

- (void)adSpeechDidBeginLocalRecognitionWithModelInfo:(id)a3 sessionUUID:(id)a4
{
  v5 = a3;
  queue = self->_queue;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_10032FE3C;
  v8[3] = &unk_10051E010;
  v8[4] = self;
  v9 = v5;
  v7 = v5;
  dispatch_async(queue, v8);
}

- (void)adSpeechMultilingualSpeechRecognized:(id)a3 sessionUUID:(id)a4
{
  v5 = a3;
  queue = self->_queue;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_10032FEE0;
  v8[3] = &unk_10051E010;
  v8[4] = self;
  v9 = v5;
  v7 = v5;
  dispatch_async(queue, v8);
}

- (void)adSpeechLanguageDetectorFailedWithError:(id)a3
{
  v4 = a3;
  queue = self->_queue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10032FFC0;
  v7[3] = &unk_10051E010;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(queue, v7);
}

- (void)adSpeechRecordingDidDetectLanguage:(id)a3 confidenceScores:(id)a4 isConfident:(BOOL)a5
{
  v8 = a3;
  v9 = a4;
  queue = self->_queue;
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_100330098;
  v13[3] = &unk_10051C958;
  v13[4] = self;
  v14 = v8;
  v15 = v9;
  v16 = a5;
  v11 = v9;
  v12 = v8;
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

- (void)adAudioFileFinishedWriting:(id)a3 error:(id)a4 context:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  [(AFDictationServiceDelegate *)self->_serviceDelegate speechDidFinishWritingAudioFile:v8 error:v9];
  queue = self->_queue;
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_100330270;
  v15[3] = &unk_10051DB18;
  v15[4] = self;
  v16 = v8;
  v17 = v9;
  v18 = v10;
  v12 = v10;
  v13 = v9;
  v14 = v8;
  dispatch_async(queue, v15);
}

- (void)adPronunciationRecognized:(id)a3 usingSpeechModel:(id)a4 sessionUUID:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  queue = self->_queue;
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_1003303E8;
  v15[3] = &unk_10051DB18;
  v15[4] = self;
  v16 = v8;
  v17 = v9;
  v18 = v10;
  v12 = v10;
  v13 = v9;
  v14 = v8;
  dispatch_async(queue, v15);
}

- (void)adSpeechLocalRecognitionDidSucceedWithSessionUUID:(id)a3
{
  v4 = a3;
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
  v9 = v4;
  v7 = v4;
  dispatch_async(queue, v8);
}

- (void)adSpeechRecognitionDidFail:(id)a3 sessionUUID:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315394;
    v16 = "[ADDictationConnection adSpeechRecognitionDidFail:sessionUUID:]";
    v17 = 2114;
    v18 = v6;
    _os_log_error_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "%s Sending recognition failed %{public}@", buf, 0x16u);
  }

  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100330954;
  block[3] = &unk_10051DB68;
  block[4] = self;
  v13 = v6;
  v14 = v7;
  v10 = v7;
  v11 = v6;
  dispatch_async(queue, block);
}

- (void)adSpeechRecognizedStructuredResult:(id)a3 usingSpeechModel:(id)a4 sessionUUID:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [v8 items];
  v12 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [v11 count]);

  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  v13 = [v8 items];
  v14 = [v13 countByEnumeratingWithState:&v27 objects:v31 count:16];
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
          objc_enumerationMutation(v13);
        }

        v18 = [*(*(&v27 + 1) + 8 * v17) ad_transcriptionResults];
        [v12 addObjectsFromArray:v18];

        v17 = v17 + 1;
      }

      while (v15 != v17);
      v15 = [v13 countByEnumeratingWithState:&v27 objects:v31 count:16];
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
  v25 = v9;
  v26 = v10;
  v20 = v10;
  v21 = v9;
  v22 = v12;
  dispatch_async(queue, v23);
}

- (void)adSpeechRecordingDidRecognizePhrases:(id)a3 rawPhrases:(id)a4 utterances:(id)a5 rawUtterances:(id)a6 nluResult:(id)a7 sessionUUID:(id)a8 refId:(id)a9
{
  v15 = a3;
  v16 = a8;
  [(AFDictationServiceDelegate *)self->_serviceDelegate speechDidRecognizePhrases:v15 rawPhrases:a4 utterances:a5 rawUtterances:a6 nluResult:a7 usingSpeechModel:&stru_10051F508 correctionContext:0 audioAnalytics:0];
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100330DF0;
  block[3] = &unk_10051DB68;
  block[4] = self;
  v21 = v15;
  v22 = v16;
  v18 = v16;
  v19 = v15;
  dispatch_async(queue, block);
}

- (void)adSpeechDidFindVoiceSearchFinalResult:(id)a3
{
  v4 = a3;
  queue = self->_queue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10033116C;
  v7[3] = &unk_10051E010;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(queue, v7);
}

- (void)adSpeechDidFindVoiceSearchPartialResult:(id)a3
{
  v4 = a3;
  queue = self->_queue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1003312B4;
  v7[3] = &unk_10051E010;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(queue, v7);
}

- (void)adSpeechRecognizedPartialResult:(id)a3
{
  v4 = a3;
  queue = self->_queue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1003313D8;
  v7[3] = &unk_10051E010;
  v8 = v4;
  v9 = self;
  v6 = v4;
  dispatch_async(queue, v7);
}

- (void)adSpeechRecognized:(id)a3 usingSpeechModel:(id)a4 sessionUUID:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  queue = self->_queue;
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_100331678;
  v15[3] = &unk_10051DB18;
  v15[4] = self;
  v16 = v8;
  v17 = v9;
  v18 = v10;
  v12 = v10;
  v13 = v9;
  v14 = v8;
  dispatch_async(queue, v15);
}

- (void)adSpeechRecordingDidFail:(id)a3 context:(id)a4
{
  v6 = a3;
  v7 = a4;
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
  v14 = v6;
  v15 = v7;
  v11 = v7;
  v12 = v6;
  dispatch_async(queue, v13);
}

- (void)adSpeechRecordingDidCancelWithContext:(id)a3
{
  v4 = a3;
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
  v10 = v4;
  v8 = v4;
  dispatch_async(queue, block);
}

- (void)adSpeechRecordingDidEndWithContext:(id)a3
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

- (void)adSpeechRecordingDidBeginOnAVRecordRoute:(id)a3 audioSessionID:(unsigned int)a4 bluetoothDevice:(id)a5 sessionRequestUUID:(id)a6 dictationOptions:(id)a7 context:(id)a8
{
  v11 = a8;
  v12 = a7;
  v13 = a6;
  kdebug_trace();
  v14 = @"Siri Event";
  v18 = @"Siri Event";
  v19 = @"Dictation speechRecordingDidBegin";
  v15 = [NSDictionary dictionaryWithObjects:&v19 forKeys:&v18 count:1];
  sub_100215208(v15);

  [(ADDictationConnection *)self preventDeviceFromIdlingIfRequired];
  serviceDelegate = self->_serviceDelegate;
  v17 = [v11 sessionUUID];

  [(AFDictationServiceDelegate *)serviceDelegate speechRecordingDidBeginWithOptions:v12 sessionUUID:v17 sessionRequestUUID:v13];
}

- (void)_removeAllAudioSessionAssertionsForReason:(id)a3
{
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_100332198;
  v17[3] = &unk_10051C198;
  v12 = a3;
  v18 = v12;
  v19 = self;
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
          v23 = self;
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

- (void)_addAudioSessionAssertion:(id)a3
{
  v4 = a3;
  audioSessionAssertions = self->_audioSessionAssertions;
  v8 = v4;
  if (!audioSessionAssertions)
  {
    v6 = objc_alloc_init(NSMutableArray);
    v7 = self->_audioSessionAssertions;
    self->_audioSessionAssertions = v6;

    v4 = v8;
    audioSessionAssertions = self->_audioSessionAssertions;
  }

  [(NSMutableArray *)audioSessionAssertions addObject:v4];
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

- (void)_updateDictationOptions:(id)a3
{
  v4 = [a3 copy];
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
    v8 = self;
    _os_log_debug_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEBUG, "%s %p", buf, 0x16u);
  }

  [(ADDictationConnection *)self _continuePendingSpeechRequestFromTimestamp:0.0];
  v4.receiver = self;
  v4.super_class = ADDictationConnection;
  [(ADDictationConnection *)&v4 dealloc];
}

- (ADDictationConnection)initWithServiceDelegate:(id)a3
{
  v5 = a3;
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

    objc_storeStrong(&v6->_serviceDelegate, a3);
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