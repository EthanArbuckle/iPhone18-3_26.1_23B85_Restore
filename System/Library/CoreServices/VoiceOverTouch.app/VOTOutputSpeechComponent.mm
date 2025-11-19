@interface VOTOutputSpeechComponent
- (BOOL)_currentLocaleUsesSpaceAsSeparator;
- (BOOL)_formatDetectedFinnishDates:(id)a3;
- (BOOL)_makeSubstitution:(id)a3 withString:(id)a4 punctuationGroup:(id)a5;
- (BOOL)_processActionForLiteralEmojis:(id)a3;
- (BOOL)_replaceRepeatedPuntuationAndEmoji:(id)a3 newString:(id)a4 charReplacementString:(id)a5 charSequence:(id)a6 charIndex:(int64_t *)a7 speakPunctuationCounts:(BOOL)a8 languageCode:(id)a9;
- (BOOL)_stringMatchesSpecialCases:(id)a3 forSymbol:(id)a4 ranges:(id *)a5 langaugeCode:(id)a6;
- (BOOL)_usingAllChannels;
- (BOOL)replacesCharacterAsPunctuation:(unsigned __int16)a3;
- (BOOL)stringIsInSupportedCharacters:(id)a3;
- (VOTOutputSpeechComponent)init;
- (double)performSelector:(SEL)a3 withThreadKey:(id)a4 waitTime:(double)a5 cancelMask:(unsigned int)a6 count:(unsigned int)a7 objects:(id)a8;
- (float)_determineVolume:(id)a3;
- (float)_pauseDelayForType:(int)a3 speechRate:(float)a4 voiceType:(int64_t)a5;
- (float)mapSettingsPitchToSpeechPitch:(float)a3;
- (float)volume;
- (id)_determinePunctuationGroupForAction:(id)a3 isDefault:(BOOL *)a4;
- (id)_determineSpeechSourceForAction:(id)a3;
- (id)_determineVoiceIdentifier:(id)a3 languageCode:(id)a4;
- (id)_determineVoiceSelection:(id)a3 languageCode:(id)a4;
- (id)_internalVoiceOverSubstitutions;
- (id)_literalStringMarkupForString:(id)a3 languageCode:(id)a4 action:(id)a5;
- (id)_localeSpecificURLRegexForLanguageCode:(id)a3;
- (id)_localeSpecificURLsForLanguageCode:(id)a3;
- (id)_parseNumberInString:(id)a3 beforeCharacterAtIndex:(int64_t)a4 numberRange:(_NSRange *)a5;
- (id)_preferenceLanguageForLanguage:(id)a3 selectedLanguage:(id)a4;
- (id)_processCaptionTextForMarkup:(id)a3 regex:(id)a4 range:(_NSRange *)a5;
- (id)_replacePunctuation:(id)a3 punctuationGroup:(id)a4 hasMathContext:(BOOL)a5 hasPhoneContext:(BOOL)a6 isText:(BOOL)a7 replaceCommas:(BOOL)a8 languageCode:(id)a9 speakPunctuationCounts:(BOOL)a10;
- (id)_secureTextDescription:(id)a3;
- (id)_spokenTextForRequest:(id)a3 range:(_NSRange *)a4;
- (id)_stringForLiteralText:(id)a3 action:(id)a4 allowChangingLanguageForPunctuation:(BOOL)a5;
- (id)_stringForNormalText:(id)a3 action:(id)a4 allowPausingAtBoundaries:(BOOL)a5 ignoreLeadingCommas:(BOOL)a6;
- (id)_urlRangesInString:(id)a3 languageCode:(id)a4;
- (id)baseTableForPunctuationGroup:(id)a3;
- (id)currentAllPunctuationTable;
- (id)currentNonePunctuationTable;
- (id)currentSomePunctuationTable;
- (id)expectedVoiceIdentifier:(id)a3;
- (id)fileSystemPunctuationGroup;
- (id)pauseStringForType:(int)a3 voiceIdentifier:(id)a4 rate:(float)a5;
- (id)punctuationReplacement:(id)a3 withGroup:(id)a4 baseTable:(id)a5 languageCode:(id)a6 selectedLanguage:(id)a7 spokenLanguage:(id)a8;
- (id)ssmlRegex;
- (id)stringReplacingBrailleDotRanges:(id)a3;
- (int64_t)_ttsVoiceTypeForPauseCalculationWithVoiceIdentifier:(id)a3;
- (void)_appendLiteralCharacterString:(id)a3 toString:(id)a4 hasPhoneContext:(BOOL)a5 hasMathContext:(BOOL)a6 action:(id)a7 punctuationTableLanguageUsed:(BOOL *)a8;
- (void)_applyCamelCaseSeparation:(id)a3;
- (void)_applyTelephoneFormatting:(id)a3 withRanges:(id)a4 languageCode:(id)a5 voiceIdentifier:(id)a6 rate:(float)a7;
- (void)_applyTransliteration:(id)a3 languageCode:(id)a4;
- (void)_audioSessionWasInterrupted:(id)a3;
- (void)_callStatusChanged;
- (void)_capVolumeForLanguage:(id)a3 volume:(float)a4;
- (void)_configureSynthesizerWithPhonemeSubstitutionsFromAction:(id)a3;
- (void)_createTelephonySynthesizer;
- (void)_determineEmojiPreferenceForAction:(id)a3;
- (void)_didFinishSpeaking:(id)a3;
- (void)_didStartSpeakingAction:(id)a3;
- (void)_formatATVStyleMediaDurations:(id)a3;
- (void)_formatDetectedDates:(id)a3 voiceIdentifier:(id)a4 languageCode:(id)a5 rate:(float)a6;
- (void)_formatEthernetMacAddress:(id)a3 voiceIdentifier:(id)a4 rate:(float)a5;
- (void)_formatExplicitTimeDuration:(id)a3 isMMSS:(BOOL)a4 languageCode:(id)a5;
- (void)_formatIPAddress:(id)a3 voiceIdentifier:(id)a4 rate:(float)a5;
- (void)_formatJapaneseYen:(id)a3;
- (void)_formatNumbers:(id)a3 action:(id)a4;
- (void)_formatTelephoneNumber:(id)a3 languageCode:(id)a4 voiceIdentifier:(id)a5 rate:(float)a6;
- (void)_formatTimeDuration:(id)a3 didMatch:(BOOL *)a4 voiceIdentifier:(id)a5 rate:(float)a6;
- (void)_formatUSHeight:(id)a3 voiceIdentifier:(id)a4;
- (void)_handleContinueSpeaking:(id)a3;
- (void)_handlePauseSpeaking:(id)a3;
- (void)_handlePerformAction:(id)a3;
- (void)_handleStopSpeaking:(id)a3;
- (void)_initializePunctuationData;
- (void)_initializeSynthesizer;
- (void)_initializeThread;
- (void)_insertLongerPausesForSymbol:(id)a3 withText:(id)a4 allowPausingAtBoundaries:(BOOL)a5 onlyApplyWhenFollowedBySpace:(BOOL)a6 languageCode:(id)a7 voiceIdentifier:(id)a8 rate:(float)a9;
- (void)_loadNoneTableOverrides;
- (void)_loadPunctuationTable:(id)a3 withLevel:(int64_t)a4 language:(id)a5;
- (void)_loadSpecialPunctuation;
- (void)_notifyDidFinishSpeakingWithFakeRequestForEvent:(id)a3;
- (void)_preprocessActionLanguageAndVoice:(id)a3;
- (void)_processEmoji:(id)a3 action:(id)a4 rate:(float)a5;
- (void)_removeRunsOfNewLines:(id)a3;
- (void)_replaceEmbeddedTTSCommands:(id)a3;
- (void)_replaceEmoticonsWithText:(id)a3;
- (void)_replacePunctuation:(id)a3 withAction:(id)a4 languageCode:(id)a5;
- (void)_replaceRepeatedEmoji:(id)a3;
- (void)_replaceUserSubstitutions:(id)a3 action:(id)a4;
- (void)_resetLanguageDataOnSpeechThread:(id)a3 language:(id)a4;
- (void)_saveSpeechStats;
- (void)_selectedLanguageChanged:(id)a3;
- (void)_setDuckingLevelAlways:(double)a3;
- (void)_setDuckingLevelOnlySpeaking:(double)a3;
- (void)_setDuckingProperties;
- (void)_setRate:(id)a3;
- (void)_setUnDuckingProperties;
- (void)_setVoice:(id)a3;
- (void)_speakAllDigits:(id)a3;
- (void)_speakAsLiteralText:(id)a3;
- (void)_speakAsMixOfLiteralAndNormalText:(id)a3 withLiteralRanges:(id)a4;
- (void)_speakAsNormalText:(id)a3;
- (void)_speakAsPhoneticText:(id)a3;
- (void)_stopSpeakingAfterLongPause:(id)a3;
- (void)_tearDownTelephonySynthesizer;
- (void)_uncapVolume:(float)a3;
- (void)_updateActionWithCanonicalMappings:(id)a3;
- (void)_updateAudioSessionProperties;
- (void)_updateChannelLayout;
- (void)_updateDuckingBasedOnActivity:(id)a3;
- (void)_updatePitch:(id)a3 settingsPitch:(float)a4;
- (void)_updateUserSubstitutions:(id)a3;
- (void)continueSpeaking;
- (void)dealloc;
- (void)handleEvent:(id)a3;
- (void)pauseSpeakingAtBoundary:(int)a3;
- (void)preprocessAction:(id)a3;
- (void)setRate:(float)a3;
- (void)speechSynthesizer:(id)a3 didFinishSpeakingRequest:(id)a4 successfully:(BOOL)a5 withError:(id)a6;
- (void)speechSynthesizer:(id)a3 didStartSpeakingRequest:(id)a4;
- (void)speechSynthesizer:(id)a3 willSpeakRangeOfSpeechString:(_NSRange)a4 forRequest:(id)a5;
- (void)stopSpeakingAtBoundary:(int)a3 allRequests:(BOOL)a4 sessionDeactivationDelay:(id)a5;
@end

@implementation VOTOutputSpeechComponent

- (double)performSelector:(SEL)a3 withThreadKey:(id)a4 waitTime:(double)a5 cancelMask:(unsigned int)a6 count:(unsigned int)a7 objects:(id)a8
{
  if (a6 == -1)
  {
    *&a6 = 4289724415;
  }

  else
  {
    *&a6 = a6;
  }

  [(SCRCThread *)self->_speechThread performSelector:a3 onTarget:self cancelMask:*&a6 count:*&a7 objects:a8, a5];
  return result;
}

- (void)_initializeThread
{
  AXSetThreadPriority();
  v4 = +[NSThread currentThread];
  v2 = objc_opt_class();
  v3 = NSStringFromClass(v2);
  [v4 setName:v3];
}

- (id)_internalVoiceOverSubstitutions
{
  v2 = [[TTSSubstitution alloc] init];
  v3 = sub_1000511CC(off_1001FDDD0, @"explict.symbol", 0);
  [v2 setOriginalString:v3];

  v4 = sub_1000511CC(off_1001FDDD0, @"explict.symbol.translation", 0);
  [v2 setReplacementString:v4];

  v7 = v2;
  v5 = [NSArray arrayWithObjects:&v7 count:1];

  return v5;
}

- (void)_updateUserSubstitutions:(id)a3
{
  v4 = a3;
  v5 = +[AXSettings sharedInstance];
  v6 = [v5 customPronunciationSubstitutions];

  v9 = [(VOTOutputSpeechComponent *)self _internalVoiceOverSubstitutions];
  v7 = [NSArray axArrayWithPossiblyNilArrays:2, v6, v9];

  [v4 setUserSubstitutions:v7];
  userSubstitutions = self->_userSubstitutions;
  self->_userSubstitutions = v7;
}

- (void)_tearDownTelephonySynthesizer
{
  v3 = AXLogCommon();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "Tearing down telephony synthesizer", v5, 2u);
  }

  v4 = [(VOTOutputSpeechComponent *)self synthesizerForTelephonyMixin];
  [v4 stopSpeakingAtNextBoundary:0 error:0];

  [(VOTOutputSpeechComponent *)self setSynthesizerForTelephonyMixin:0];
}

- (void)_createTelephonySynthesizer
{
  v3 = AXLogCommon();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    *v8 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "Creating a telephony synthesizer", v8, 2u);
  }

  v4 = [(VOTOutputSpeechComponent *)self synthesizerForTelephonyMixin];

  if (!v4)
  {
    v5 = [[TTSSpeechSynthesizer alloc] init];
    [(VOTOutputSpeechComponent *)self setSynthesizerForTelephonyMixin:v5];

    v6 = [(VOTOutputSpeechComponent *)self synthesizerForTelephonyMixin];
    [(VOTOutputSpeechComponent *)self _updateUserSubstitutions:v6];

    v7 = [(VOTOutputSpeechComponent *)self synthesizerForTelephonyMixin];
    [v7 setAudioQueueFlags:320];
  }
}

- (void)_initializeSynthesizer
{
  v3 = [objc_allocWithZone(TTSSpeechSynthesizer) init];
  synthesizer = self->_synthesizer;
  self->_synthesizer = v3;

  objc_initWeak(&location, self);
  [(VOTOutputSpeechComponent *)self _updateUserSubstitutions:self->_synthesizer];
  [(TTSSpeechSynthesizer *)self->_synthesizer setDelegate:self];
  v5 = +[AXSettings sharedInstance];
  -[VOTOutputSpeechComponent setShouldOutputToHearingAid:](self, "setShouldOutputToHearingAid:", [v5 voiceOverShouldOutputToHearingAid]);

  v6 = +[NSNotificationCenter defaultCenter];
  [v6 addObserver:self selector:"updateAudioSessionProperties:" name:AVAudioSessionMediaServicesWereLostNotification object:0];

  v7 = +[NSNotificationCenter defaultCenter];
  [v7 addObserver:self selector:"updateAudioSessionProperties:" name:AVAudioSessionMediaServicesWereResetNotification object:0];

  v8 = +[NSNotificationCenter defaultCenter];
  v9 = +[AVAudioSession sharedInstance];
  [v8 addObserver:self selector:"updateAudioSessionProperties:" name:AVAudioSessionRouteChangeNotification object:v9];

  v10 = +[NSNotificationCenter defaultCenter];
  [v10 addObserver:self selector:"audioSessionWasInterrupted:" name:AVAudioSessionInterruptionNotification object:0];

  [(VOTOutputSpeechComponent *)self _updateAudioSessionProperties];
  v11 = +[AXSettings sharedInstance];
  v30[0] = _NSConcreteStackBlock;
  v30[1] = 3221225472;
  v30[2] = sub_10002B288;
  v30[3] = &unk_1001C7E08;
  objc_copyWeak(&v31, &location);
  v30[4] = self;
  [v11 registerUpdateBlock:v30 forRetrieveSelector:"customPronunciationSubstitutions" withListener:self];

  objc_destroyWeak(&v31);
  v12 = +[AXSettings sharedInstance];
  v28[0] = _NSConcreteStackBlock;
  v28[1] = 3221225472;
  v28[2] = sub_10002B2E4;
  v28[3] = &unk_1001C78D8;
  objc_copyWeak(&v29, &location);
  [v12 registerUpdateBlock:v28 forRetrieveSelector:"voiceOverShouldOutputToHearingAid" withListener:self];

  objc_destroyWeak(&v29);
  v13 = +[AXSettings sharedInstance];
  v26[0] = _NSConcreteStackBlock;
  v26[1] = 3221225472;
  v26[2] = sub_10002B350;
  v26[3] = &unk_1001C78D8;
  objc_copyWeak(&v27, &location);
  [v13 registerUpdateBlock:v26 forRetrieveSelector:"voiceOverAudioDuckingEnabled" withListener:self];

  objc_destroyWeak(&v27);
  v14 = +[AXSettings sharedInstance];
  v24[0] = _NSConcreteStackBlock;
  v24[1] = 3221225472;
  v24[2] = sub_10002B394;
  v24[3] = &unk_1001C78D8;
  objc_copyWeak(&v25, &location);
  [v14 registerUpdateBlock:v24 forRetrieveSelector:"_audioHardwareChannelLayout" withListener:self];

  objc_destroyWeak(&v25);
  v15 = +[AXSettings sharedInstance];
  v22[0] = _NSConcreteStackBlock;
  v22[1] = 3221225472;
  v22[2] = sub_10002B3D8;
  v22[3] = &unk_1001C78D8;
  objc_copyWeak(&v23, &location);
  [v15 registerUpdateBlock:v22 forRetrieveSelector:"voiceOverSpeaksOverTelephoneCalls" withListener:self];

  objc_destroyWeak(&v23);
  v16 = +[AXSettings sharedInstance];
  v20[0] = _NSConcreteStackBlock;
  v20[1] = 3221225472;
  v20[2] = sub_10002B418;
  v20[3] = &unk_1001C78D8;
  objc_copyWeak(&v21, &location);
  [v16 registerUpdateBlock:v20 forRetrieveSelector:"voiceOverMediaDuckingAmount" withListener:self];

  objc_destroyWeak(&v21);
  v17 = +[AXSettings sharedInstance];
  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = sub_10002B45C;
  v18[3] = &unk_1001C78D8;
  objc_copyWeak(&v19, &location);
  [v17 registerUpdateBlock:v18 forRetrieveSelector:"voiceOverMediaDuckingMode" withListener:self];

  objc_destroyWeak(&v19);
  [(VOTOutputSpeechComponent *)self _callStatusChanged];
  objc_destroyWeak(&location);
}

- (void)_callStatusChanged
{
  v3 = +[AXSettings sharedInstance];
  v4 = [v3 voiceOverSpeaksOverTelephoneCalls];

  if (v4)
  {
    v5 = [VOTSharedWorkspace telephonyIsActive];
    v6 = VOTLogCommon();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v7[0] = 67109120;
      v7[1] = v5;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "Call status change to %d for telephony synthesizer", v7, 8u);
    }

    if (v5)
    {
      [(VOTOutputSpeechComponent *)self _createTelephonySynthesizer];
    }

    else
    {
      [(VOTOutputSpeechComponent *)self _tearDownTelephonySynthesizer];
    }
  }

  else
  {

    [(VOTOutputSpeechComponent *)self _tearDownTelephonySynthesizer];
  }
}

- (BOOL)_usingAllChannels
{
  v2 = +[AXAudioHardwareManager sharedManager];
  v3 = +[AVAudioSession sharedInstance];
  v4 = [v3 currentRoute];
  v5 = [v2 savedChannelsForOutput:v4 forSource:1];

  v6 = +[AXAudioHardwareManager defaultPortChannels];
  if (v5)
  {
    if (![v5 isEqualToArray:v6])
    {
      v17 = 0;
      goto LABEL_16;
    }

    v7 = +[AXSubsystemAudioRouting sharedInstance];
    v8 = [v7 ignoreLogging];

    if ((v8 & 1) == 0)
    {
      v9 = +[AXSubsystemAudioRouting identifier];
      v10 = AXLoggerForFacility();

      v11 = AXOSLogLevelFromAXLogLevel();
      if (os_log_type_enabled(v10, v11))
      {
        v12 = AXColorizeFormatLog();
        v13 = _AXStringForArgs();
        if (os_log_type_enabled(v10, v11))
        {
          v19 = 138543362;
          v20 = v13;
LABEL_11:
          _os_log_impl(&_mh_execute_header, v10, v11, "%{public}@", &v19, 0xCu);
          goto LABEL_12;
        }

        goto LABEL_12;
      }

      goto LABEL_13;
    }
  }

  else
  {
    v14 = +[AXSubsystemAudioRouting sharedInstance];
    v15 = [v14 ignoreLogging];

    if ((v15 & 1) == 0)
    {
      v16 = +[AXSubsystemAudioRouting identifier];
      v10 = AXLoggerForFacility();

      v11 = AXOSLogLevelFromAXLogLevel();
      if (os_log_type_enabled(v10, v11))
      {
        v12 = AXColorizeFormatLog();
        v13 = _AXStringForArgs();
        if (os_log_type_enabled(v10, v11))
        {
          v19 = 138543362;
          v20 = v13;
          goto LABEL_11;
        }

LABEL_12:
      }

LABEL_13:
    }
  }

  v17 = 1;
LABEL_16:

  return v17;
}

- (void)_audioSessionWasInterrupted:(id)a3
{
  v4 = a3;
  if ([(VOTOutputSpeechComponent *)self isSpeaking]|| self->_currentRequest)
  {
    v5 = VOTLogAudio();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = [v4 userInfo];
      v7 = [v6 objectForKey:@"AVAudioSessionInterruptorNameKey"];
      v8 = 138412290;
      v9 = v7;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "speech interrupted by %@ Dropping current speech request.", &v8, 0xCu);
    }

    self->_userStopped = 0;
    self->_isPaused = 0;
    [(SCRCTargetSelectorTimer *)self->_stopSpeakingAfterLongPauseTimer cancel];
    self->_lastTimeSpeechStarted = -3061152000.0;
    [(TTSSpeechSynthesizer *)self->_synthesizer stopSpeakingAtNextBoundary:0 error:0];
  }
}

- (void)_updateAudioSessionProperties
{
  if (([(SCRCThread *)self->_speechThread _debug_currentlyRunningOnThisThread]& 1) == 0)
  {
    _AXAssert();
  }

  v3 = VOTLogAudio();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = +[AXSettings sharedInstance];
    v5 = [v4 voiceOverAudioDuckingEnabled];
    v6 = [VOTSharedWorkspace audioDestinationRequestExternal];
    v7 = +[AXSettings sharedInstance];
    *buf = 67109632;
    *v26 = v5;
    *&v26[4] = 1024;
    *&v26[6] = v6;
    v27 = 1024;
    v28 = [v7 voiceOverAudioFollowsHDMIAudio];
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Update audio session properties: ducking:%d, destination external %d. Force VO->HDMI: %d", buf, 0x14u);
  }

  v8 = +[AXSettings sharedInstance];
  v9 = [v8 voiceOverAudioDuckingEnabled];

  v10 = +[AXSettings sharedInstance];
  v11 = [v10 voiceOverMediaDuckingMode];

  v12 = [(VOTOutputSpeechComponent *)self activityBasedAudioDucking];

  if (v12)
  {
    v13 = [(VOTOutputSpeechComponent *)self activityBasedAudioDucking];
    v11 = [v13 integerValue];

    v14 = VOTLogAudio();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
    {
      v15 = [NSNumber numberWithLong:v11];
      *buf = 138412290;
      *v26 = v15;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_INFO, "Ducking status change because the activity determined ducking: %@", buf, 0xCu);
    }
  }

  if (AXRuntimeCheck_SupportsVoiceoverIndepedentVolume())
  {
    v16 = v11 != 0;
  }

  else
  {
    v16 = v9;
  }

  if ([VOTSharedWorkspace speechMuted] && v11 != 2)
  {
    v17 = VOTLogAudio();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_INFO, "Not ducking because speech is muted", buf, 2u);
    }

    v16 = 0;
  }

  if ([VOTSharedWorkspace duckingTemporarilyDisabled])
  {
    v18 = VOTLogAudio();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_INFO, "Not ducking because the app told us to duck temporarily", buf, 2u);
    }

    if ([(VOTOutputSpeechComponent *)self _usingAllChannels])
    {
LABEL_32:
      v20 = 1;
      if (AXRuntimeCheck_SupportsVoiceoverIndepedentVolume())
      {
LABEL_33:
        [(VOTOutputSpeechComponent *)self setUnDuckingProperties:0];
        goto LABEL_39;
      }

      goto LABEL_39;
    }

LABEL_29:
    v21 = VOTLogAudio();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_INFO, "Not ducking because we're not using all channels", buf, 2u);
    }

    goto LABEL_32;
  }

  if (![(VOTOutputSpeechComponent *)self _usingAllChannels])
  {
    goto LABEL_29;
  }

  if (v16)
  {
    if (AXRuntimeCheck_SupportsVoiceoverIndepedentVolume())
    {
      v19 = +[AXSettings sharedInstance];
      if ([v19 voiceOverMediaDuckingMode] == 2)
      {
        v20 = 1;
      }

      else
      {
        v20 = 2;
      }
    }

    else
    {
      v20 = 2;
    }
  }

  else
  {
    v20 = 1;
  }

  if (AXRuntimeCheck_SupportsVoiceoverIndepedentVolume())
  {
    if (v16)
    {
      [(VOTOutputSpeechComponent *)self setDuckingProperties:0];
      goto LABEL_39;
    }

    goto LABEL_33;
  }

LABEL_39:
  v22 = +[VOTOutputManager outputManager];
  v23 = [v22 audioSessionQueue];
  v24[0] = _NSConcreteStackBlock;
  v24[1] = 3221225472;
  v24[2] = sub_10002BED0;
  v24[3] = &unk_1001C7900;
  v24[4] = self;
  v24[5] = v20;
  [v23 performSynchronousWritingBlock:v24];

  [(VOTOutputSpeechComponent *)self _updateChannelLayout];
}

- (void)_setDuckingProperties
{
  v3 = +[AXSettings sharedInstance];
  [v3 voiceOverMediaDuckingAmount];
  v5 = v4;

  v6 = [(VOTOutputSpeechComponent *)self activityBasedAudioDuckingAmount];

  if (v6)
  {
    v7 = [(VOTOutputSpeechComponent *)self activityBasedAudioDuckingAmount];
    [v7 doubleValue];
    v5 = v8;

    v9 = VOTLogAudio();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = [NSNumber numberWithDouble:v5];
      v17 = 138412290;
      v18 = v10;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Using activity based ducking amount: %@", &v17, 0xCu);
    }
  }

  v11 = +[AXSettings sharedInstance];
  v12 = [v11 voiceOverMediaDuckingMode];

  v13 = VOTLogAudio();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    v14 = +[AXSettings sharedInstance];
    v15 = +[NSNumber numberWithLong:](NSNumber, "numberWithLong:", [v14 voiceOverMediaDuckingMode]);
    v16 = [NSNumber numberWithDouble:v5];
    v17 = 138412546;
    v18 = v15;
    v19 = 2112;
    v20 = v16;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Updating audio ducking properties: audio ducking mode %@ audio ducking volume %@", &v17, 0x16u);
  }

  if (v12 == 2)
  {
    [(VOTOutputSpeechComponent *)self _setDuckingLevelAlways:1.0 - v5];
  }

  else
  {
    [(VOTOutputSpeechComponent *)self _setDuckingLevelAlways:1.0];
    [(VOTOutputSpeechComponent *)self _setDuckingLevelOnlySpeaking:1.0 - v5];
  }
}

- (void)_setDuckingLevelAlways:(double)a3
{
  v4 = +[AVSystemController sharedAVSystemController];
  *&v5 = a3;
  v6 = [v4 setDuckScalarForVoiceOver:v5];
  v7 = VOTLogAudio();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = [NSNumber numberWithDouble:a3];
    v10 = 138412290;
    v11 = v8;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "Setting duck scalar amount vo: %@", &v10, 0xCu);
  }

  if (v6)
  {
    v9 = VOTLogAudio();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      sub_100129134();
    }
  }
}

- (void)_setDuckingLevelOnlySpeaking:(double)a3
{
  v4 = +[AVAudioSession sharedInstance];
  v5 = [NSNumber numberWithDouble:a3];
  v10 = 0;
  [v4 setDuckToLevelScalar:v5 unduckToLevelScalar:0 error:&v10];
  v6 = v10;

  v7 = VOTLogAudio();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = [NSNumber numberWithDouble:a3];
    *buf = 138412290;
    v12 = v8;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "Setting duck to level scalar amount vo: %@", buf, 0xCu);
  }

  if (v6)
  {
    v9 = VOTLogAudio();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      sub_1001291E4();
    }
  }
}

- (void)_setUnDuckingProperties
{
  [(VOTOutputSpeechComponent *)self _setDuckingLevelAlways:1.0];

  [(VOTOutputSpeechComponent *)self _setDuckingLevelOnlySpeaking:1.0];
}

- (void)_updateChannelLayout
{
  v3 = +[AVAudioSession sharedInstance];
  v4 = +[AXAudioHardwareManager sharedManager];
  v5 = +[AXAudioHardwareManager defaultRouteDescription];
  v6 = [v4 savedChannelsForOutput:v5 forSource:1];

  v7 = VOTLogAudio();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = [v3 currentRoute];
    v9 = [v3 currentRoute];
    v10 = [v9 outputs];
    v19 = 138412802;
    v20 = v8;
    v21 = 2114;
    v22 = v10;
    v23 = 2114;
    v24 = v6;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Route %@: Channel layout %{public}@ and channels %{public}@", &v19, 0x20u);
  }

  if (!v6)
  {
    v11 = +[AXAudioHardwareManager defaultPortChannels];
    v12 = VOTLogAudio();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v19 = 138412290;
      v20 = v11;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Default port channels: %@", &v19, 0xCu);
    }

    if ([v11 count] < 3)
    {
      v6 = 0;
    }

    else
    {
      [v11 count];
      v6 = [v11 subarrayWithRange:{0, 2}];
      v13 = VOTLogAudio();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        v19 = 138543362;
        v20 = v6;
        _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "No selected channels, but we have more than 2 channels so using first 2 [%{public}@]", &v19, 0xCu);
      }
    }
  }

  if ([AXAudioHardwareManager channelsAreWiredHeadphones:v6])
  {
    v14 = VOTLogAudio();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      v19 = 138543362;
      v20 = v6;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Our selected channels are the default wired headset channels, so no need to set them explicitly [%{public}@]", &v19, 0xCu);
    }

    v6 = 0;
  }

  v15 = [v3 currentRoute];
  v16 = [AXAudioHardwareManager channelsAreAirplay:v6 route:v15];

  if (v16)
  {
    v17 = VOTLogAudio();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      v19 = 138543362;
      v20 = v6;
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "Our selected channels are AirPlay so no need to set selected channels [%{public}@]", &v19, 0xCu);
    }

    v6 = 0;
  }

  v18 = VOTLogAudio();
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
  {
    v19 = 138543362;
    v20 = v6;
    _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "Set selected channels on synth: %{public}@", &v19, 0xCu);
  }

  [(TTSSpeechSynthesizer *)self->_synthesizer setOutputChannels:v6];
}

- (void)_loadSpecialPunctuation
{
  specialPunctionTable = self->_specialPunctionTable;
  if (!specialPunctionTable)
  {
    v4 = [objc_allocWithZone(AXIndexMap) init];
    v5 = self->_specialPunctionTable;
    self->_specialPunctionTable = v4;

    specialPunctionTable = self->_specialPunctionTable;
  }

  [(AXIndexMap *)specialPunctionTable setObject:@"ff" forIndex:64256];
  [(AXIndexMap *)self->_specialPunctionTable setObject:@"fi" forIndex:64257];
  [(AXIndexMap *)self->_specialPunctionTable setObject:@"fl" forIndex:64258];
  [(AXIndexMap *)self->_specialPunctionTable setObject:@"ffi" forIndex:64259];
  [(AXIndexMap *)self->_specialPunctionTable setObject:@"ffl" forIndex:64260];
  [(AXIndexMap *)self->_specialPunctionTable setObject:@"st" forIndex:64261];
  [(AXIndexMap *)self->_specialPunctionTable setObject:@"st" forIndex:64262];
  [(AXIndexMap *)self->_specialPunctionTable setObject:@"'" forIndex:700];
  [(AXIndexMap *)self->_specialPunctionTable setObject:@"'" forIndex:8242];
  v6 = self->_specialPunctionTable;

  [(AXIndexMap *)v6 setObject:@"" forIndex:8243];
}

- (void)_loadNoneTableOverrides
{
  noneTableOverrides = self->_noneTableOverrides;
  if (!noneTableOverrides)
  {
    v4 = [objc_allocWithZone(AXIndexMap) init];
    v5 = self->_noneTableOverrides;
    self->_noneTableOverrides = v4;

    noneTableOverrides = self->_noneTableOverrides;
  }

  [(AXIndexMap *)noneTableOverrides setObject:@"'" forIndex:8217];
  [(AXIndexMap *)self->_noneTableOverrides setObject:@"'" forIndex:39];
  v6 = self->_noneTableOverrides;

  [(AXIndexMap *)v6 setObject:@"'" forIndex:65287];
}

- (VOTOutputSpeechComponent)init
{
  v20.receiver = self;
  v20.super_class = VOTOutputSpeechComponent;
  v2 = [(VOTOutputComponent *)&v20 init];
  if (v2)
  {
    v3 = [objc_allocWithZone(SCRCThread) init];
    speechThread = v2->_speechThread;
    v2->_speechThread = v3;

    v5 = v2->_speechThread;
    v6 = objc_opt_class();
    v7 = NSStringFromClass(v6);
    [(SCRCThread *)v5 setName:v7];

    [(SCRCThread *)v2->_speechThread performSelector:"_initializeThread" onTarget:v2 count:0 objects:0];
    [(SCRCThread *)v2->_speechThread performSelector:"_initializeSynthesizer" onTarget:v2 count:0 objects:0];
    [(VOTOutputSpeechComponent *)v2 _initializePunctuationData];
    v8 = +[NSBundle mainBundle];
    v9 = [v8 pathForResource:@"VOTLanguageExceptions" ofType:@"plist"];
    v10 = [NSDictionary dictionaryWithContentsOfFile:v9];
    languageExceptions = v2->_languageExceptions;
    v2->_languageExceptions = v10;

    v12 = [v8 pathForResource:@"VOTEmoticons" ofType:@"plist"];
    v13 = [NSDictionary dictionaryWithContentsOfFile:v12];
    emoticonReplacements = v2->_emoticonReplacements;
    v2->_emoticonReplacements = v13;

    if (!v2->_emoticonReplacements)
    {
      _AXAssert();
    }

    v2->_lastTimeSpeechStarted = -3061152000.0;
    v15 = +[NSNotificationCenter defaultCenter];
    [v15 addObserver:v2 selector:"_selectedLanguageChanged:" name:off_1001FDB18 object:0];

    [(VOTOutputSpeechComponent *)v2 _selectedLanguageChanged:0];
    v16 = [objc_allocWithZone(SCRCTargetSelectorTimer) initWithTarget:v2 selector:"_stopSpeakingAfterLongPause:" threadKey:v2->super._threadKey];
    stopSpeakingAfterLongPauseTimer = v2->_stopSpeakingAfterLongPauseTimer;
    v2->_stopSpeakingAfterLongPauseTimer = v16;

    v18 = v2;
  }

  return v2;
}

- (void)_initializePunctuationData
{
  v3 = [objc_allocWithZone(AXIndexMap) init];
  allPunctuationTable = self->_allPunctuationTable;
  self->_allPunctuationTable = v3;

  v5 = objc_alloc_init(AXIndexMap);
  selectedLanguageAllPunctuationTable = self->_selectedLanguageAllPunctuationTable;
  self->_selectedLanguageAllPunctuationTable = v5;

  v7 = objc_alloc_init(AXIndexMap);
  selectedLanguageSomePunctuationTable = self->_selectedLanguageSomePunctuationTable;
  self->_selectedLanguageSomePunctuationTable = v7;

  v9 = [objc_allocWithZone(AXIndexMap) init];
  somePunctuationTable = self->_somePunctuationTable;
  self->_somePunctuationTable = v9;

  v11 = objc_alloc_init(AXIndexMap);
  selectedLanguageNoPunctuationTable = self->_selectedLanguageNoPunctuationTable;
  self->_selectedLanguageNoPunctuationTable = v11;

  v13 = [objc_allocWithZone(AXIndexMap) init];
  noPunctuationTable = self->_noPunctuationTable;
  self->_noPunctuationTable = v13;

  [(VOTOutputSpeechComponent *)self _loadSpecialPunctuation];
  [(VOTOutputSpeechComponent *)self _loadNoneTableOverrides];
  [(VOTOutputSpeechComponent *)self _loadPunctuationTable:self->_allPunctuationTable withLevel:1 language:0];
  [(VOTOutputSpeechComponent *)self _loadPunctuationTable:self->_somePunctuationTable withLevel:2 language:0];
  v15 = self->_noPunctuationTable;

  [(VOTOutputSpeechComponent *)self _loadPunctuationTable:v15 withLevel:3 language:0];
}

- (void)_selectedLanguageChanged:(id)a3
{
  v4 = a3;
  if (qword_1001FEAB0 != -1)
  {
    sub_100129284();
  }

  v5 = [VOTSharedWorkspace selectedLanguage];
  v6 = [v5 copy];

  v7 = VOTLogCommon();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v13 = v6;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "Selected language changed: %@", buf, 0xCu);
  }

  if (v6)
  {
    v8 = qword_1001FEAA0;
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_10002D8B4;
    v10[3] = &unk_1001C7778;
    v10[4] = self;
    v11 = v6;
    [v8 afterDelay:v10 processBlock:0.0];
  }

  else
  {
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10002DA08;
    block[3] = &unk_1001C76E8;
    block[4] = self;
    dispatch_async(qword_1001FEAA8, block);
  }
}

- (void)_resetLanguageDataOnSpeechThread:(id)a3 language:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = +[NSThread currentThread];
  v9 = [v8 name];
  v10 = objc_opt_class();
  v11 = NSStringFromClass(v10);
  if (([v9 isEqualToString:v11] & 1) == 0)
  {
    sub_100129298();
  }

  v12 = [v6 count];
  v13 = VOTLogCommon();
  v14 = v13;
  if (v12 != 3)
  {
    if (os_log_type_enabled(v13, OS_LOG_TYPE_FAULT))
    {
      sub_1001292C4();
    }

    goto LABEL_10;
  }

  if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v26 = v7;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_INFO, "Reset lang data for %@", buf, 0xCu);
  }

  v15 = [v6 objectAtIndexedSubscript:0];
  selectedLanguageAllPunctuationTable = self->_selectedLanguageAllPunctuationTable;
  self->_selectedLanguageAllPunctuationTable = v15;

  v17 = [v6 objectAtIndexedSubscript:1];
  selectedLanguageSomePunctuationTable = self->_selectedLanguageSomePunctuationTable;
  self->_selectedLanguageSomePunctuationTable = v17;

  v19 = [v6 objectAtIndexedSubscript:2];
  selectedLanguageNoPunctuationTable = self->_selectedLanguageNoPunctuationTable;
  self->_selectedLanguageNoPunctuationTable = v19;

  v21 = [VOTSharedWorkspace inUnitTestMode];
  if (v7 && v21)
  {
    v14 = +[NSNotificationCenter defaultCenter];
    v23[0] = @"language";
    v23[1] = @"sender";
    v24[0] = v7;
    v24[1] = self;
    v22 = [NSDictionary dictionaryWithObjects:v24 forKeys:v23 count:2];
    [v14 postNotificationName:@"VOTLanguageReloaded" object:0 userInfo:v22];

LABEL_10:
  }
}

- (id)currentSomePunctuationTable
{
  v3 = [VOTSharedWorkspace selectedLanguage];

  v4 = &OBJC_IVAR___VOTOutputSpeechComponent__selectedLanguageSomePunctuationTable;
  if (!v3)
  {
    v4 = &OBJC_IVAR___VOTOutputSpeechComponent__somePunctuationTable;
  }

  v5 = *(&self->super.super.isa + *v4);

  return v5;
}

- (id)currentNonePunctuationTable
{
  v3 = [VOTSharedWorkspace selectedLanguage];

  v4 = &OBJC_IVAR___VOTOutputSpeechComponent__selectedLanguageNoPunctuationTable;
  if (!v3)
  {
    v4 = &OBJC_IVAR___VOTOutputSpeechComponent__noPunctuationTable;
  }

  v5 = *(&self->super.super.isa + *v4);

  return v5;
}

- (id)currentAllPunctuationTable
{
  v3 = [VOTSharedWorkspace selectedLanguage];

  v4 = &OBJC_IVAR___VOTOutputSpeechComponent__selectedLanguageAllPunctuationTable;
  if (!v3)
  {
    v4 = &OBJC_IVAR___VOTOutputSpeechComponent__allPunctuationTable;
  }

  v5 = *(&self->super.super.isa + *v4);

  return v5;
}

- (void)_saveSpeechStats
{
  v3 = +[VOTConfiguration rootConfiguration];
  [v3 setPreference:self->_speechStatistics forKey:@"SpeechStats"];

  [(VOTOutputSpeechComponent *)self performSelector:"_saveSpeechStats" withObject:0 afterDelay:10.0];
}

- (void)_loadPunctuationTable:(id)a3 withLevel:(int64_t)a4 language:(id)a5
{
  v7 = a3;
  AXLoadPunctuationTable();
  [v7 addObjectsFromIndexMap:self->_specialPunctionTable];
  if (a4 == 3)
  {
    [v7 addObjectsFromIndexMap:self->_noneTableOverrides];
  }
}

- (float)volume
{
  v2 = +[AXSettings sharedInstance];
  [v2 voiceOverEffectiveSpeakingVolume];
  v4 = v3;

  return v4;
}

- (void)_setRate:(id)a3
{
  v4 = a3;
  v5 = VOTLogSpeech();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v11 = 138412290;
    v12 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "VoiceOver set rate %@", &v11, 0xCu);
  }

  synthesizer = self->_synthesizer;
  [v4 floatValue];
  [(TTSSpeechSynthesizer *)synthesizer setRate:?];
  [v4 floatValue];
  v8 = v7;
  v9 = [(VOTOutputSpeechComponent *)self synthesizerForTelephonyMixin];
  LODWORD(v10) = v8;
  [v9 setRate:v10];
}

- (void)setRate:(float)a3
{
  speechThread = self->_speechThread;
  v5 = [NSNumber numberWithFloat:?];
  [(SCRCThread *)speechThread performSelector:"_setRate:" onTarget:self cancelMask:0x400000 count:1 objects:v5];
}

- (void)_setVoice:(id)a3
{
  v4 = a3;
  [(TTSSpeechSynthesizer *)self->_synthesizer setVoiceIdentifier:v4];
  v5 = [(VOTOutputSpeechComponent *)self synthesizerForTelephonyMixin];
  [v5 setVoiceIdentifier:v4];

  v6 = VOTLogSpeech();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = 138543362;
    v8 = v4;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "Set voice to %{public}@", &v7, 0xCu);
  }
}

- (void)pauseSpeakingAtBoundary:(int)a3
{
  v3 = *&a3;
  v7 = [objc_allocWithZone(AXIndexMap) init];
  v5 = [NSNumber numberWithUnsignedInt:v3];
  [v7 setObject:v5 forIndex:11];

  v6 = [NSNumber numberWithUnsignedInt:8];
  [v7 setObject:v6 forIndex:1];

  [(SCRCThread *)self->_speechThread performSelector:"handleEvent:" onTarget:self cancelMask:0x200000 count:1 objects:v7];
}

- (void)continueSpeaking
{
  v4 = [objc_allocWithZone(AXIndexMap) init];
  v3 = [NSNumber numberWithUnsignedInt:9];
  [v4 setObject:v3 forIndex:1];

  [(SCRCThread *)self->_speechThread performSelector:"handleEvent:" onTarget:self cancelMask:0x200000 count:1 objects:v4];
}

- (void)stopSpeakingAtBoundary:(int)a3 allRequests:(BOOL)a4 sessionDeactivationDelay:(id)a5
{
  v5 = a4;
  v6 = *&a3;
  v12 = a5;
  if ([(VOTOutputSpeechComponent *)self isSpeaking]|| self->_currentRequest)
  {
    v8 = [objc_allocWithZone(NSNumber) initWithUnsignedInt:v6];
    v9 = [objc_allocWithZone(NSNumber) initWithUnsignedInt:7];
    v10 = [objc_allocWithZone(AXIndexMap) init];
    [v10 setObject:v8 forIndex:11];
    [v10 setObject:v9 forIndex:1];
    v11 = [NSNumber numberWithBool:v5];
    [v10 setObject:v11 forIndex:24];

    [v10 setObject:v12 forIndex:84];
    [(SCRCThread *)self->_speechThread performSelector:"handleEvent:" onTarget:self cancelMask:0x200000 count:1 objects:v10];

LABEL_4:
    goto LABEL_5;
  }

  if (v12)
  {
    v8 = +[VOTOutputManager outputManager];
    [v12 doubleValue];
    [v8 disableAudioSession:@"SPEECH" userDelay:?];
    goto LABEL_4;
  }

LABEL_5:
}

- (void)_stopSpeakingAfterLongPause:(id)a3
{
  v4 = VOTLogSpeech();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Waited max time for pause to continue, interrupting pause state", v6, 2u);
  }

  v5 = +[NSNotificationCenter defaultCenter];
  [v5 postNotificationName:off_1001FDB20 object:0];

  [(VOTOutputSpeechComponent *)self stopSpeakingAtBoundary:0];
}

- (void)_handlePauseSpeaking:(id)a3
{
  v9 = a3;
  if ([(VOTOutputSpeechComponent *)self isSpeaking])
  {
    self->_isPaused = 1;
    v4 = [v9 objectForIndex:11];
    v5 = [v4 unsignedIntValue];

    v6 = v5 == 1;
    [(TTSSpeechSynthesizer *)self->_synthesizer pauseSpeakingAtNextBoundary:v6 error:0];
    v7 = [(VOTOutputSpeechComponent *)self synthesizerForTelephonyMixin];
    [v7 pauseSpeakingAtNextBoundary:v6 error:0];

    v8 = +[VOTOutputManager outputManager];
    [v8 disableAudioSession:@"SPEECH"];

    [(SCRCTargetSelectorTimer *)self->_stopSpeakingAfterLongPauseTimer dispatchAfterDelay:90.0];
  }
}

- (void)_handleContinueSpeaking:(id)a3
{
  if (self->_isPaused)
  {
    v4 = +[VOTOutputManager outputManager];
    [v4 enableAudioSession:@"SPEECH"];
  }

  [(TTSSpeechSynthesizer *)self->_synthesizer continueSpeakingWithError:0];
  v5 = [(VOTOutputSpeechComponent *)self synthesizerForTelephonyMixin];
  [v5 continueSpeakingWithError:0];

  self->_isPaused = 0;
  stopSpeakingAfterLongPauseTimer = self->_stopSpeakingAfterLongPauseTimer;

  [(SCRCTargetSelectorTimer *)stopSpeakingAfterLongPauseTimer cancel];
}

- (void)_handleStopSpeaking:(id)a3
{
  v4 = a3;
  v5 = objc_getAssociatedObject(self->_currentRequest, &unk_1001FEAB8);
  v6 = [v5 objectForIndex:14];
  if (![(VOTOutputSpeechComponent *)self isSpeaking]&& !self->_currentRequest)
  {
LABEL_5:
    v10 = VOTLogSpeech();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      v17 = 138543362;
      v18 = v6;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "told to stop, but not stopping because last action was not stoppable: %{public}@", &v17, 0xCu);
    }

    goto LABEL_12;
  }

  v7 = [v6 objectForVariant:23];
  if ([v7 BOOLValue])
  {
    v8 = [v4 objectForIndex:24];
    v9 = [v8 BOOLValue];

    if (!v9)
    {
      goto LABEL_5;
    }
  }

  else
  {
  }

  self->_userStopped = 1;
  self->_isPaused = 0;
  [(SCRCTargetSelectorTimer *)self->_stopSpeakingAfterLongPauseTimer cancel];
  self->_lastTimeSpeechStarted = -3061152000.0;
  v11 = [v4 objectForIndex:11];
  v12 = [v11 unsignedIntValue];

  v13 = VOTLogSpeech();
  if (os_signpost_enabled(v13))
  {
    LOWORD(v17) = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v13, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "EndSpeaking", "", &v17, 2u);
  }

  v14 = v12 == 1;
  [(TTSSpeechSynthesizer *)self->_synthesizer stopSpeakingAtNextBoundary:v14 error:0];
  v15 = [(VOTOutputSpeechComponent *)self synthesizerForTelephonyMixin];
  [v15 stopSpeakingAtNextBoundary:v14 error:0];

  v10 = [v4 objectForIndex:84];
  if (v10)
  {
    v16 = +[VOTOutputManager outputManager];
    [v10 doubleValue];
    [v16 disableAudioSession:@"SPEECH" userDelay:?];
  }

LABEL_12:
}

- (void)dealloc
{
  [(SCRCTargetSelectorTimer *)self->_stopSpeakingAfterLongPauseTimer invalidate];
  [(BSInvalidatable *)self->_disableIdleTimerAssertion invalidate];
  [(SCRCThread *)self->_speechThread setIsInvalid:1];
  v3.receiver = self;
  v3.super_class = VOTOutputSpeechComponent;
  [(VOTOutputSpeechComponent *)&v3 dealloc];
}

- (void)handleEvent:(id)a3
{
  v7 = a3;
  v4 = [v7 objectForIndex:1];
  v5 = [v4 unsignedIntValue];

  if (v5 > 7)
  {
    if (v5 == 8)
    {
      [(VOTOutputSpeechComponent *)self _handlePauseSpeaking:v7];
    }

    else
    {
      v6 = v7;
      if (v5 != 9)
      {
        goto LABEL_11;
      }

      [(VOTOutputSpeechComponent *)self _handleContinueSpeaking:v7];
    }
  }

  else if (v5 == 6)
  {
    [(VOTOutputSpeechComponent *)self _handlePerformAction:v7];
  }

  else
  {
    v6 = v7;
    if (v5 != 7)
    {
      goto LABEL_11;
    }

    [(VOTOutputSpeechComponent *)self _handleStopSpeaking:v7];
  }

  v6 = v7;
LABEL_11:
}

- (void)_speakAllDigits:(id)a3
{
  v9 = a3;
  v3 = +[NSCharacterSet decimalDigitCharacterSet];
  if ([v9 length])
  {
    v4 = 0;
    do
    {
      v5 = [v9 characterAtIndex:v4];
      if ([v3 characterIsMember:v5])
      {
        if (v4 >= 1 && [v9 characterAtIndex:v4 - 1] == 32)
        {
          v6 = @"%C ";
          v7 = 1;
        }

        else
        {
          v6 = @" %C ";
          v7 = 2;
        }

        v8 = [NSString stringWithFormat:v6, v5];
        [v9 replaceCharactersInRange:v4 withString:{1, v8}];
        v4 += v7;
      }

      ++v4;
    }

    while (v4 < [v9 length]);
  }
}

- (void)_replaceEmbeddedTTSCommands:(id)a3
{
  v3 = a3;
  [v3 replaceOccurrencesOfString:@"[[" withString:@"[ [" options:0 range:{0, objc_msgSend(v3, "length")}];
  [v3 replaceOccurrencesOfString:@"]]" withString:@"] ]" options:0 range:{0, objc_msgSend(v3, "length")}];
}

- (id)_secureTextDescription:(id)a3
{
  v3 = [a3 length];
  v4 = sub_1000511CC(off_1001FDDD0, @"secure.character.count", &stru_1001CBF90);
  v5 = [NSString localizedStringWithFormat:v4, v3];

  return v5;
}

- (id)_localeSpecificURLsForLanguageCode:(id)a3
{
  if ([a3 hasPrefix:@"fi"])
  {
    return &off_1001DB6C0;
  }

  else
  {
    return 0;
  }
}

- (id)_localeSpecificURLRegexForLanguageCode:(id)a3
{
  v4 = a3;
  if (v4)
  {
    if (([0 isEqualToString:v4] & 1) == 0)
    {
      v5 = qword_1001FEAC0;
      qword_1001FEAC0 = 0;
    }

    v6 = qword_1001FEAC0;
    if (!qword_1001FEAC0)
    {
      v7 = [(VOTOutputSpeechComponent *)self _localeSpecificURLsForLanguageCode:v4];
      v8 = [v7 count];
      v9 = v8 - 1;
      if (v8 >= 1)
      {
        v10 = v8;
        v11 = +[NSMutableString stringWithString:](NSMutableString, "stringWithString:", @"(");
        v12 = 0;
        do
        {
          if (v10 == 1)
          {
            v13 = [v7 objectAtIndexedSubscript:v9];
            [v11 appendString:v13];
          }

          else
          {
            v13 = [v7 objectAtIndexedSubscript:v12];
            [v11 appendFormat:@"%@|", v13];
          }

          ++v12;
          --v10;
        }

        while (v10);
        [v11 appendString:@""]);
        v14 = [@"(http:\\/\\/|www\\.)?(\\S*)\\.(com|net|org|edu|gov|mil|uk|fi)(\\/\\S*)?\\b" stringByReplacingOccurrencesOfString:@"(com|net|org|edu|gov|mil|uk)" withString:v11];
        v15 = [NSRegularExpression regularExpressionWithPattern:v14 options:0 error:0];
        v16 = qword_1001FEAC0;
        qword_1001FEAC0 = v15;
      }

      v6 = qword_1001FEAC0;
    }

    v17 = v6;
  }

  else
  {
    v17 = 0;
  }

  return v17;
}

- (BOOL)_stringMatchesSpecialCases:(id)a3 forSymbol:(id)a4 ranges:(id *)a5 langaugeCode:(id)a6
{
  v9 = a3;
  v10 = a4;
  v11 = a6;
  if (!v11)
  {
    v11 = [VOTSharedWorkspace systemSpokenLanguage];
  }

  if ([v10 isEqualToString:@"."])
  {
    v36 = v11;
    v37 = a5;
    v38 = v10;
    v12 = +[NSMutableArray array];
    v13 = VOTLogSpeech();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
    {
      sub_100129338();
    }

    v14 = qword_1001FEAC8;
    if (!qword_1001FEAC8)
    {
      v15 = [NSRegularExpression regularExpressionWithPattern:@"\\b([a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\\.[a-zA-Z]{2 options:5})\\b" error:0, 0];
      v16 = qword_1001FEAC8;
      qword_1001FEAC8 = v15;

      v14 = qword_1001FEAC8;
    }

    v39 = v9;
    [v14 matchesInString:v9 options:0 range:{0, objc_msgSend(v9, "length")}];
    v43 = 0u;
    v44 = 0u;
    v45 = 0u;
    obj = v46 = 0u;
    v42 = [obj countByEnumeratingWithState:&v43 objects:v47 count:16];
    if (v42)
    {
      v41 = *v44;
      do
      {
        for (i = 0; i != v42; i = i + 1)
        {
          if (*v44 != v41)
          {
            objc_enumerationMutation(obj);
          }

          v18 = *(*(&v43 + 1) + 8 * i);
          v19 = [v18 range];
          v21 = v20;
          v22 = [v12 count];
          if (v22 < 1)
          {
LABEL_17:
            v29 = [v18 range];
            v25 = [NSValue valueWithRange:v29, v30];
            [v12 addObject:v25];
          }

          else
          {
            v23 = v22;
            v24 = 0;
            while (1)
            {
              v25 = [v12 objectAtIndex:v24];
              v26 = [v25 rangeValue];
              v28 = v27;
              v48.location = v19;
              v48.length = v21;
              v50.location = v26;
              v50.length = v28;
              if (NSIntersectionRange(v48, v50).length)
              {
                break;
              }

              if (v23 == ++v24)
              {
                goto LABEL_17;
              }
            }

            v49.location = v19;
            v49.length = v21;
            v51.location = v26;
            v51.length = v28;
            v31 = NSUnionRange(v49, v51);
            v32 = [NSValue valueWithRange:v31.location, v31.length];
            [v12 replaceObjectAtIndex:v24 withObject:v32];
          }
        }

        v42 = [obj countByEnumeratingWithState:&v43 objects:v47 count:16];
      }

      while (v42);
    }

    [v12 sortUsingSelector:"compare:"];
    v33 = v12;
    *v37 = v12;
    v34 = [v33 count] != 0;

    v10 = v38;
    v9 = v39;
    v11 = v36;
  }

  else
  {
    v34 = 0;
  }

  return v34;
}

- (id)expectedVoiceIdentifier:(id)a3
{
  v3 = a3;
  v4 = +[AXSubsystemVoiceOver sharedInstance];
  v5 = [v4 ignoreLogging];

  if ((v5 & 1) == 0)
  {
    v6 = +[AXSubsystemVoiceOver identifier];
    v7 = AXLoggerForFacility();

    v8 = AXOSLogLevelFromAXLogLevel();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = AXColorizeFormatLog();
      v18 = v3;
      v10 = _AXStringForArgs();
      if (os_log_type_enabled(v7, v8))
      {
        LODWORD(buf) = 138543362;
        *(&buf + 4) = v10;
        _os_log_impl(&_mh_execute_header, v7, v8, "%{public}@", &buf, 0xCu);
      }
    }
  }

  v11 = dispatch_semaphore_create(0);
  *&buf = 0;
  *(&buf + 1) = &buf;
  v23 = 0x3032000000;
  v24 = sub_10002C4F4;
  v25 = sub_10002C504;
  v26 = 0;
  v12 = v3;
  v13 = v12;
  if (!v12)
  {
    v13 = [VOTSharedWorkspace selectedLanguage];
    if (!v13)
    {
      v13 = [VOTSharedWorkspace systemSpokenLanguage];
    }
  }

  v14 = [VOTSharedWorkspace votSettings];
  v19[0] = _NSConcreteStackBlock;
  v19[1] = 3221225472;
  v19[2] = sub_10002F514;
  v19[3] = &unk_1001C7E98;
  p_buf = &buf;
  v15 = v11;
  v20 = v15;
  [v14 voiceSelectionWithLanguageCode:v13 withActivity:0 completionHandler:v19];

  dispatch_semaphore_wait(v15, 0xFFFFFFFFFFFFFFFFLL);
  v16 = [*(*(&buf + 1) + 40) voiceId];

  _Block_object_dispose(&buf, 8);

  return v16;
}

- (float)_pauseDelayForType:(int)a3 speechRate:(float)a4 voiceType:(int64_t)a5
{
  v6 = 0.0;
  if ((a3 - 1) <= 6)
  {
    LODWORD(v6) = *&aPp[4 * (a3 - 1) + 4];
  }

  sub_10005057C(v6, a4);
  return result;
}

- (int64_t)_ttsVoiceTypeForPauseCalculationWithVoiceIdentifier:(id)a3
{
  v3 = a3;
  if (([TTSAlternativeVoices isNeuralSiriVoiceIdentifier:v3]& 1) != 0)
  {
    v4 = 5;
  }

  else if (([TTSAlternativeVoices isSiriVoiceIdentifier:v3]& 1) != 0)
  {
    v4 = 4;
  }

  else if ([TTSAlternativeVoices isOldSiriVoiceIdentifier:v3])
  {
    v4 = 2;
  }

  else
  {
    v4 = 1;
  }

  return v4;
}

- (id)pauseStringForType:(int)a3 voiceIdentifier:(id)a4 rate:(float)a5
{
  v6 = *&a3;
  v8 = a4;
  v9 = [(VOTOutputSpeechComponent *)self _ttsVoiceTypeForPauseCalculationWithVoiceIdentifier:v8];
  *&v10 = a5;
  [(VOTOutputSpeechComponent *)self _pauseDelayForType:v6 speechRate:v9 voiceType:v10];
  v12 = v11;
  if ([v8 hasPrefix:kTTSMacinTalkVoiceIdentifierPrefix])
  {
    v13 = 0;
  }

  else
  {
    v13 = [v8 isEqualToString:AVSpeechSynthesisVoiceIdentifierAlex] ^ 1;
  }

  if (v6 == 2 && !v13 || (v6 & 0xFFFFFFFE) == 2 && ([v8 containsString:@"com.apple.ttsbundle.Carmit"] & 1) != 0)
  {
    v14 = &stru_1001CBF90;
    goto LABEL_15;
  }

  v15 = [TTSSpeechSynthesizer speechMarkupStringForType:0 forIdentifier:v8 string:0];
  v22 = v15;
  if (v6 == 8)
  {
    v23 = v15;
  }

  else
  {
    if (!v15)
    {
      v14 = &stru_1001CBF90;
      goto LABEL_14;
    }

    v23 = sub_10002A7C4(v15, @"%d", v16, v17, v18, v19, v20, v21, v12);
  }

  v14 = v23;
LABEL_14:

LABEL_15:

  return v14;
}

- (void)_insertLongerPausesForSymbol:(id)a3 withText:(id)a4 allowPausingAtBoundaries:(BOOL)a5 onlyApplyWhenFollowedBySpace:(BOOL)a6 languageCode:(id)a7 voiceIdentifier:(id)a8 rate:(float)a9
{
  v107 = a6;
  v14 = a3;
  v15 = a4;
  v16 = a7;
  v93 = a8;
  v17 = [v15 length];
  if (v17)
  {
    v18 = v17;
    v19 = [(VOTOutputSpeechComponent *)self ssmlRegex];
    v20 = [v19 matchesInString:v15 options:0 range:{0, objc_msgSend(v15, "length")}];
    v21 = [v20 ax_mappedArrayUsingBlock:&stru_1001C7ED8];

    v22 = [v14 characterAtIndex:0];
    if (v18 < 1)
    {
      goto LABEL_108;
    }

    v23 = v22;
    v24 = 0;
    while ([v15 characterAtIndex:v24] == v23)
    {
      if (v18 == ++v24)
      {
        goto LABEL_108;
      }
    }

    if (v18 != v24)
    {
      if (v24 >= 2)
      {
        [v15 replaceCharactersInRange:0 withString:{v24, &stru_1001CBF90}];
        v18 = [v15 length];
      }

      if (v18 >= 2)
      {
        v119 = 0;
        v25 = [(VOTOutputSpeechComponent *)self _stringMatchesSpecialCases:v15 forSymbol:v14 ranges:&v119 langaugeCode:v16];
        v26 = v119;
        v27 = v26;
        if (!v25 || v26)
        {
          v106 = v15;
          v109 = v21;
          v105 = self;
          if ([v26 count])
          {
            v91 = v16;
            v95 = +[NSMutableArray array];
            v115 = 0u;
            v116 = 0u;
            v117 = 0u;
            v118 = 0u;
            v28 = v27;
            v29 = [v28 countByEnumeratingWithState:&v115 objects:v129 count:16];
            if (v29)
            {
              v30 = v29;
              v31 = 0;
              v32 = *v116;
              do
              {
                for (i = 0; i != v30; i = i + 1)
                {
                  if (*v116 != v32)
                  {
                    objc_enumerationMutation(v28);
                  }

                  v34 = [*(*(&v115 + 1) + 8 * i) rangeValue];
                  v36 = v35;
                  if (v34 - v31 >= 1)
                  {
                    v37 = [NSValue valueWithRange:v31];
                    [v95 addObject:v37];
                  }

                  v31 = &v34[v36];
                }

                v30 = [v28 countByEnumeratingWithState:&v115 objects:v129 count:16];
              }

              while (v30);
            }

            else
            {
              v31 = 0;
            }

            if (v18 <= v31)
            {
              self = v105;
              v16 = v91;
              v21 = v109;
              goto LABEL_30;
            }

            v27 = [NSValue valueWithRange:v31, v18 - v31];
            [v95 addObject:v27];
            v16 = v91;
            v21 = v109;
            self = v105;
          }

          else
          {
            v28 = [NSValue valueWithRange:0, v18];
            v95 = [NSArray arrayWithObject:v28];
          }

LABEL_30:
          if (!qword_1001FEAD0)
          {
            v38 = [objc_allocWithZone(NSMutableCharacterSet) init];
            v39 = qword_1001FEAD0;
            qword_1001FEAD0 = v38;

            v40 = qword_1001FEAD0;
            v41 = +[NSCharacterSet symbolCharacterSet];
            [v40 formUnionWithCharacterSet:v41];

            v42 = qword_1001FEAD0;
            v43 = +[NSCharacterSet decimalDigitCharacterSet];
            [v42 formUnionWithCharacterSet:v43];
          }

          v44 = +[NSCharacterSet uppercaseLetterCharacterSet];
          v97 = +[NSCharacterSet whitespaceCharacterSet];
          v45 = +[NSMutableString string];
          if (![v95 count])
          {
            v47 = v15;
            v48 = v97;
            goto LABEL_107;
          }

          v99 = v45;
          v96 = v44;
          if (sub_100051384(v14))
          {
            v46 = 2;
          }

          else if (([v14 isEqualToString:@"."] & 1) != 0 || objc_msgSend(v14, "isEqualToString:", @"?"))
          {
            v46 = 3;
          }

          else
          {
            v46 = 6;
          }

          v49 = [(AXIndexMap *)self->_currentActionVariants objectForIndex:63];
          v50 = [v49 BOOLValue];

          if (v50)
          {
            if ([v14 isEqualToString:@"."])
            {
              v46 = v46;
            }

            else
            {
              v46 = 3;
            }
          }

          if (v16 || ([VOTSharedWorkspace systemSpokenLanguage], (v16 = objc_claimAutoreleasedReturnValue()) != 0))
          {
            v52 = +[AXLanguageManager sharedInstance];
            v53 = [v52 dialectForLanguageID:v16];
            v54 = [v53 langMap];
            v104 = [v54 isRTL] ^ 1;

            v15 = v106;
          }

          else
          {
            v104 = 1;
          }

          v92 = v16;
          *&v51 = a9;
          v45 = [(VOTOutputSpeechComponent *)self pauseStringForType:v46 voiceIdentifier:v93 rate:v51];
          v111 = 0u;
          v112 = 0u;
          v113 = 0u;
          v114 = 0u;
          obj = v95;
          v100 = [obj countByEnumeratingWithState:&v111 objects:v128 count:16];
          v55 = 0;
          if (!v100)
          {
            v48 = v97;
            v47 = v99;
            goto LABEL_104;
          }

          v98 = *v112;
          v48 = v97;
          v47 = v99;
          v108 = v45;
          while (1)
          {
            v56 = 0;
            do
            {
              if (*v112 != v98)
              {
                objc_enumerationMutation(obj);
              }

              v103 = v56;
              v57 = [*(*(&v111 + 1) + 8 * v56) rangeValue];
              v59 = v58;
              if (v57 != v55)
              {
                [v47 appendFormat:@"%@ ", v45];
                v60 = [v15 substringWithRange:{v55, &v57[-v55]}];
                [v47 appendString:v60];

                [v47 appendFormat:@" %@", v45];
              }

              v102 = v57;
              v61 = [v15 substringWithRange:{v57, v59}];
              v62 = [v61 mutableCopyWithZone:0];

              v101 = v59;
              if (v59 <= [v62 length])
              {
                v63 = 0;
                while (1)
                {
                  v64 = v45;
                  v65 = [v62 rangeOfString:v14 options:2 range:{v63, v59}];
                  v67 = v66;
                  v68 = VOTLogSpeech();
                  if (os_log_type_enabled(v68, OS_LOG_TYPE_DEBUG))
                  {
                    *buf = 138740739;
                    v121 = v14;
                    v122 = 2117;
                    v123 = v62;
                    v124 = 2048;
                    v125 = v65;
                    v126 = 2048;
                    v127 = v67;
                    _os_log_debug_impl(&_mh_execute_header, v68, OS_LOG_TYPE_DEBUG, "range of %{sensitive}@ in %{sensitive}@ is %lu %lu", buf, 0x2Au);
                  }

                  if (v65 == 0x7FFFFFFFFFFFFFFFLL)
                  {

                    goto LABEL_100;
                  }

                  if (!a5 && !v65)
                  {
                    break;
                  }

                  if (!a5 && v65 == [v15 length] - 1)
                  {
                    goto LABEL_66;
                  }

                  if (v65)
                  {
                    v72 = [v62 characterAtIndex:v65 - 1];
                    v73 = [qword_1001FEAD0 characterIsMember:v72];
                    v74 = v73;
                    v70 = v73 ^ 1;
                    if (v65 + 1 >= [v62 length])
                    {
                      v15 = v106;
                    }

                    else
                    {
                      v75 = [v62 characterAtIndex:v65 + 1];
                      if ([v96 characterIsMember:v72])
                      {
                        v76 = [v96 characterIsMember:v75];
                        v15 = v106;
                        v48 = v97;
                        if (v76)
                        {
                          *&v77 = a9;
                          v71 = [(VOTOutputSpeechComponent *)v105 pauseStringForType:7 voiceIdentifier:v93 rate:v77];

                          if ((v74 & 1) == 0)
                          {
                            goto LABEL_73;
                          }

                          v70 = 0;
                          goto LABEL_84;
                        }
                      }

                      else
                      {
                        v15 = v106;
                        v48 = v97;
                      }
                    }
                  }

                  else
                  {
                    v70 = 1;
                  }

LABEL_67:
                  if (v107 && v65 + 1 < [v62 length])
                  {
                    if ([v48 characterIsMember:{objc_msgSend(v62, "characterAtIndex:", v65 + 1)}] & v70)
                    {
                      goto LABEL_72;
                    }

                    v70 = 0;
                  }

                  else if (v70)
                  {
LABEL_72:
                    v71 = v64;
LABEL_73:
                    if (v104)
                    {
                      [NSString stringWithFormat:@"%@%@", v14, v71, v90];
                    }

                    else
                    {
                      [NSString stringWithFormat:@"%C%@%@", 8207, v14, v71];
                    }
                    v78 = ;

                    [v62 replaceOccurrencesOfString:v14 withString:v78 overallRange:v65 avoidingRanges:{v67, v109}];
                    v79 = [(VOTOutputSpeechComponent *)v105 ssmlRegex];
                    v80 = [v79 matchesInString:v62 options:0 range:{0, objc_msgSend(v62, "length")}];
                    v81 = [v80 ax_mappedArrayUsingBlock:&stru_1001C7EF8];

                    v70 = 1;
                    v71 = v78;
                    v109 = v81;
                    v15 = v106;
                    goto LABEL_84;
                  }

                  v71 = v64;
LABEL_84:
                  v82 = VOTLogSpeech();
                  v45 = v108;
                  if (os_log_type_enabled(v82, OS_LOG_TYPE_DEBUG))
                  {
                    v86 = [v62 length];
                    *buf = 134218240;
                    v121 = &v65[v67];
                    v15 = v106;
                    v122 = 2048;
                    v123 = v86;
                    _os_log_debug_impl(&_mh_execute_header, v82, OS_LOG_TYPE_DEBUG, "old info %lu -- %lu", buf, 0x16u);
                  }

                  if (v70)
                  {
                    v83 = [v71 length];
                  }

                  else
                  {
                    v83 = 0;
                  }

                  v84 = &v65[v67];
                  v63 = &v65[v67 + v83];
                  if (v63 >= [v62 length])
                  {
                    v59 = 0;
                    v63 = 0x7FFFFFFFFFFFFFFFLL;
                  }

                  else
                  {
                    v59 = ([v62 length] - v84);
                  }

                  v85 = VOTLogSpeech();
                  if (os_log_type_enabled(v85, OS_LOG_TYPE_DEBUG))
                  {
                    *buf = 134218240;
                    v121 = v63;
                    v122 = 2048;
                    v123 = v59;
                    _os_log_debug_impl(&_mh_execute_header, v85, OS_LOG_TYPE_DEBUG, "new text range: %lu, %lu", buf, 0x16u);
                  }

                  if (&v59[v63] > [v62 length])
                  {
                    goto LABEL_100;
                  }
                }

                if ([v15 length] < 2 || (v69 = objc_msgSend(v62, "characterAtIndex:", 1), (objc_msgSend(qword_1001FEAD0, "characterIsMember:", v69) & 1) == 0))
                {
                  [v62 deleteCharactersInRange:{0, 1}];
                }

LABEL_66:
                v70 = 0;
                goto LABEL_67;
              }

LABEL_100:
              v55 = &v101[v102];
              v47 = v99;
              [v99 appendString:v62];

              v56 = v103 + 1;
            }

            while ((v103 + 1) != v100);
            v100 = [obj countByEnumeratingWithState:&v111 objects:v128 count:16];
            if (!v100)
            {
LABEL_104:

              if (v55 < [v15 length])
              {
                *&v87 = a9;
                v88 = [(VOTOutputSpeechComponent *)v105 pauseStringForType:6 voiceIdentifier:v93 rate:v87];
                v89 = [v15 substringFromIndex:v55];
                [v47 appendFormat:@"%@ %@", v88, v89];
              }

              v16 = v92;
              v21 = v109;
              v44 = v96;
LABEL_107:

              [v15 setString:v47];
              break;
            }
          }
        }
      }
    }

LABEL_108:
  }
}

- (BOOL)_currentLocaleUsesSpaceAsSeparator
{
  if (qword_1001FF138)
  {
    v2 = objc_alloc_init(NSNumberFormatter);
    [v2 setLocale:qword_1001FF138];
    [v2 setNumberStyle:1];
    v3 = [v2 stringFromNumber:&off_1001D99B0];
  }

  else
  {
    v3 = [NSNumberFormatter localizedStringFromNumber:&off_1001D99B0 numberStyle:1];
  }

  v4 = [v3 rangeOfString:@" "] != 0x7FFFFFFFFFFFFFFFLL;

  return v4;
}

- (void)_applyCamelCaseSeparation:(id)a3
{
  v3 = a3;
  if (qword_1001FEAE0 != -1)
  {
    sub_1001293AC();
  }

  v26 = 0;
  v27 = &v26;
  v28 = 0x3032000000;
  v29 = sub_10002C4F4;
  v30 = sub_10002C504;
  v31 = 0;
  v22 = 0;
  v23 = &v22;
  v24 = 0x2020000000;
  v25 = 0;
  v20[0] = 0;
  v20[1] = v20;
  v20[2] = 0x2020000000;
  v21 = 0;
  v4 = qword_1001FEAD8;
  v5 = [v3 length];
  v12 = _NSConcreteStackBlock;
  v13 = 3221225472;
  v14 = sub_100030740;
  v15 = &unk_1001C7F40;
  v17 = &v26;
  v6 = v3;
  v16 = v6;
  v18 = &v22;
  v19 = v20;
  [v4 enumerateMatchesInString:v6 options:0 range:0 usingBlock:{v5, &v12}];
  if (v27[5])
  {
    v7 = v23[3];
    if (v7 < [v6 length])
    {
      v8 = v27[5];
      v9 = v23[3];
      v10 = [v6 length];
      v11 = [v6 substringWithRange:{v9, &v10[-v23[3]]}];
      [v8 appendString:v11];
    }

    [v6 setString:v27[5]];
  }

  _Block_object_dispose(v20, 8);
  _Block_object_dispose(&v22, 8);
  _Block_object_dispose(&v26, 8);
}

- (void)_applyTelephoneFormatting:(id)a3 withRanges:(id)a4 languageCode:(id)a5 voiceIdentifier:(id)a6 rate:(float)a7
{
  v12 = a3;
  v13 = a4;
  v41 = a5;
  v14 = a6;
  if (!qword_1001FEAE8)
  {
    v15 = [NSRegularExpression regularExpressionWithPattern:@"[0-9]{1 options:3}([  ][0-9]{3})+\\s*$" error:0, 0];
    v16 = qword_1001FEAE8;
    qword_1001FEAE8 = v15;
  }

  v40 = [v12 length];
  v44 = +[NSMutableString string];
  v42 = +[NSCharacterSet decimalDigitCharacterSet];
  *&v17 = a7;
  v49 = [(VOTOutputSpeechComponent *)self pauseStringForType:6 voiceIdentifier:v14 rate:v17];
  v50 = 0u;
  v51 = 0u;
  v52 = 0u;
  v53 = 0u;
  obj = v13;
  v48 = [obj countByEnumeratingWithState:&v50 objects:v54 count:16];
  if (v48)
  {
    v47 = 0;
    v18 = *v51;
    v43 = *v51;
    do
    {
      for (i = 0; i != v48; i = i + 1)
      {
        if (*v51 != v18)
        {
          objc_enumerationMutation(obj);
        }

        v20 = [*(*(&v50 + 1) + 8 * i) rangeValue];
        v22 = v21;
        v23 = [v12 substringWithRange:{v20, v21}];
        v24 = [v23 rangeOfString:@"\n"];

        if (v24 == 0x7FFFFFFFFFFFFFFFLL)
        {
          v25 = [v12 substringWithRange:{v20, v22}];
          if (!-[VOTOutputSpeechComponent _currentLocaleUsesSpaceAsSeparator](self, "_currentLocaleUsesSpaceAsSeparator") || ([qword_1001FEAE8 matchesInString:v25 options:0 range:{0, objc_msgSend(v25, "length")}], v27 = objc_claimAutoreleasedReturnValue(), v28 = objc_msgSend(v27, "count"), v27, !v28))
          {
            v46 = v25;
            if (v20 != v47)
            {
              v29 = [v12 substringWithRange:{v47, v20 - v47}];
              [v44 appendString:v29];
            }

            v30 = v14;
            *&v26 = a7;
            v31 = [(VOTOutputSpeechComponent *)self pauseStringForType:6 voiceIdentifier:v14 rate:v26];
            v32 = [NSMutableString stringWithString:v31];

            v47 = &v20[v22];
            if (v20 < &v20[v22])
            {
              do
              {
                v33 = [v12 characterAtIndex:v20];
                if ([v42 characterIsMember:v33])
                {
                  *&v34 = a7;
                  v35 = [(VOTOutputSpeechComponent *)self pauseStringForType:4 voiceIdentifier:v30 rate:v34];
                  [v32 appendFormat:@"%C%@ ", v33, v35];
                }

                else if ((v33 & 0xFFFE) != 0x28)
                {
                  if (v33 == 32 || v33 == 45)
                  {
                    [v32 appendString:v49];
                  }

                  else
                  {
                    v36 = [(VOTOutputSpeechComponent *)self currentAllPunctuationTable];
                    v37 = [v36 objectForIndex:v33];

                    if (v37)
                    {
                      [v32 appendFormat:@"%@ %@ ", v37, v49];
                    }

                    else
                    {
                      v38 = [v12 substringWithRange:{v20, 1}];
                      [v32 appendFormat:@"%@", v38];
                    }
                  }
                }

                ++v20;
                --v22;
              }

              while (v22);
            }

            [v32 appendString:v49];
            [v44 appendString:v32];

            v14 = v30;
            v25 = v46;
          }

          v18 = v43;
        }
      }

      v48 = [obj countByEnumeratingWithState:&v50 objects:v54 count:16];
    }

    while (v48);
  }

  else
  {
    v47 = 0;
  }

  if (v47 < v40)
  {
    v39 = [v12 substringFromIndex:?];
    [v44 appendString:v39];
  }

  [v12 setString:v44];
}

- (void)_formatTelephoneNumber:(id)a3 languageCode:(id)a4 voiceIdentifier:(id)a5 rate:(float)a6
{
  v18 = a3;
  v10 = a4;
  v11 = a5;
  v12 = qword_1001FEAF0;
  if (!qword_1001FEAF0)
  {
    v13 = [NSRegularExpression regularExpressionWithPattern:@"([+0-9]{6 options:15}|(((\\s?|\\b)([0-9]{2 error:3}\\s)?(\\(?[0-9]{3}\\)?)?(\\s|-))|\\s)?([0-9]{2, 7})(-|\\s)([0-9]{3, 7}))(\\s|\\b)", 0, 0];
    v14 = qword_1001FEAF0;
    qword_1001FEAF0 = v13;

    v12 = qword_1001FEAF0;
  }

  v15 = [v12 matchesInString:v18 options:0 range:{0, objc_msgSend(v18, "length")}];
  if ([v15 count])
  {
    v16 = [v15 axMapObjectsUsingBlock:&stru_1001C7F80];
    *&v17 = a6;
    [(VOTOutputSpeechComponent *)self _applyTelephoneFormatting:v18 withRanges:v16 languageCode:v10 voiceIdentifier:v11 rate:v17];
  }
}

- (BOOL)_formatDetectedFinnishDates:(id)a3
{
  v3 = a3;
  v4 = qword_1001FEAF8;
  if (!qword_1001FEAF8)
  {
    v5 = [NSRegularExpression regularExpressionWithPattern:@"(?<!\\.)\\b([0-9]{1 options:2})[\\.]([0-9]{1 error:2})[\\.](?:([0-9]{4})\\b)(?!\\.?[0-9])", 0, 0];
    v6 = qword_1001FEAF8;
    qword_1001FEAF8 = v5;

    v4 = qword_1001FEAF8;
  }

  v7 = [v4 matchesInString:v3 options:0 range:{0, objc_msgSend(v3, "length")}];
  if ([v7 count])
  {
    v39 = v3;
    v8 = [v3 copy];
    v42 = 0u;
    v43 = 0u;
    v44 = 0u;
    v45 = 0u;
    v35 = v7;
    v9 = v7;
    v10 = [v9 countByEnumeratingWithState:&v42 objects:v46 count:16];
    if (v10)
    {
      v11 = v10;
      v41 = 0;
      v12 = *v43;
      v37 = v9;
      v38 = v8;
      v36 = *v43;
      do
      {
        v13 = 0;
        v40 = v11;
        do
        {
          if (*v43 != v12)
          {
            objc_enumerationMutation(v9);
          }

          v14 = *(*(&v42 + 1) + 8 * v13);
          if ([v14 numberOfRanges] == 4)
          {
            v15 = [v14 rangeAtIndex:1];
            v17 = [v8 substringWithRange:{v15, v16}];
            v18 = [v14 rangeAtIndex:2];
            v20 = [v8 substringWithRange:{v18, v19}];
            if ([v20 integerValue] <= 12 && objc_msgSend(v17, "integerValue") <= 31)
            {
              [v14 rangeAtIndex:3];
              if (v21)
              {
                v22 = [v14 rangeAtIndex:3];
                v24 = [v8 substringWithRange:{v22, v23}];
              }

              else
              {
                v24 = 0;
              }

              v25 = objc_alloc_init(NSDateComponents);
              [v25 setMonth:{objc_msgSend(v20, "intValue")}];
              [v25 setDay:{objc_msgSend(v17, "intValue")}];
              if ([v24 length])
              {
                [v25 setYear:{objc_msgSend(v24, "intValue")}];
              }

              v26 = +[NSCalendar currentCalendar];
              v27 = [v26 dateFromComponents:v25];

              [v24 length];
              v28 = AXDateStringForFormat();
              v29 = [v14 range];
              [v14 range];
              [v39 replaceCharactersInRange:&v41[v29] withString:{v30, v28}];
              v31 = [v28 length];
              [v14 range];
              v41 = &v41[v31 - v32];

              v9 = v37;
              v8 = v38;
              v12 = v36;
              v11 = v40;
            }
          }

          v13 = v13 + 1;
        }

        while (v11 != v13);
        v11 = [v9 countByEnumeratingWithState:&v42 objects:v46 count:16];
      }

      while (v11);
    }

    v33 = [v9 count] != 0;
    v3 = v39;
    v7 = v35;
  }

  else
  {
    v33 = 0;
  }

  return v33;
}

- (void)_formatDetectedDates:(id)a3 voiceIdentifier:(id)a4 languageCode:(id)a5 rate:(float)a6
{
  v9 = a3;
  v53 = a4;
  v10 = a5;
  if (!qword_1001FEB00)
  {
    v11 = [NSRegularExpression regularExpressionWithPattern:@"\\b([0-9]{1 options:4}(/|-|\\.)[0-9]{1 error:2}((/|-|\\.)[0-9]{2, 4})?)\\b", 0, 0];
    v12 = qword_1001FEB00;
    qword_1001FEB00 = v11;

    if (!qword_1001FEB00)
    {
      v13 = VOTLogSpeech();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        sub_100129428(v13);
      }
    }
  }

  if (![v10 hasPrefix:@"fi"] || !-[VOTOutputSpeechComponent _formatDetectedFinnishDates:](self, "_formatDetectedFinnishDates:", v9))
  {
    v14 = [qword_1001FEB00 matchesInString:v9 options:0 range:{0, objc_msgSend(v9, "length")}];
    if ([v14 count])
    {
      v50 = v10;
      v15 = +[NSMutableString string];
      v48 = [v9 length];
      v49 = v14;
      v56 = 0u;
      v57 = 0u;
      v58 = 0u;
      v59 = 0u;
      obj = v14;
      v16 = [obj countByEnumeratingWithState:&v56 objects:v60 count:16];
      if (v16)
      {
        v17 = v16;
        v18 = 0;
        v19 = *v57;
        v51 = v9;
        do
        {
          v20 = 0;
          v54 = v17;
          do
          {
            if (*v57 != v19)
            {
              objc_enumerationMutation(obj);
            }

            v21 = [*(*(&v56 + 1) + 8 * v20) range];
            v23 = v22;
            v24 = &v21[-v18];
            if (v21 != v18)
            {
              v25 = [v9 substringWithRange:{v18, v24}];
              [v15 appendString:v25];
            }

            v26 = 0;
            if (v21)
            {
              for (i = 0; i != v21; ++i)
              {
                v28 = [v9 characterAtIndex:{i, v24}];
                v29 = v28 - 162;
                if (v28 == 36)
                {
                  v30 = 1;
                }

                else
                {
                  v30 = v26;
                }

                if (v29 > 3 || v29 == 2)
                {
                  v26 = v30;
                }

                else
                {
                  v26 = 1;
                }

                if (v29 <= 3 && v28 != 164)
                {
                  break;
                }

                if (v28 == 36)
                {
                  break;
                }
              }
            }

            v18 = &v21[v23];
            v32 = [v9 substringWithRange:{v21, v23}];
            v33 = [v32 length] < 4;
            v35 = v18 < [v9 length] && objc_msgSend(v9, "characterAtIndex:", v18) == 37;
            if (((v33 | v26 | v35) & 1) == 0)
            {
              *&v34 = a6;
              v36 = [(VOTOutputSpeechComponent *)self pauseStringForType:6 voiceIdentifier:v53 rate:v34];
              v37 = [NSString stringWithFormat:@" %@ ", v36];

              v38 = [v32 stringByReplacingOccurrencesOfString:@"/" withString:v37];

              [v38 stringByReplacingOccurrencesOfString:@"-" withString:v37];
              v39 = v15;
              v41 = v40 = v19;

              v42 = [VOTSharedWorkspace selectedLanguage];
              v43 = sub_100051B24(46, @"UnicodeHex.Alternate1.", @"VOTOutputPunctuation", v42);

              if (v43)
              {
                v44 = v43;
              }

              else
              {
                v44 = @".";
              }

              v45 = [NSString stringWithFormat:@" %@ ", v44];
              v32 = [v41 stringByReplacingOccurrencesOfString:@"." withString:v45];

              v19 = v40;
              v15 = v39;
              v9 = v51;
              v17 = v54;
            }

            [v15 appendString:v32];

            v20 = v20 + 1;
          }

          while (v20 != v17);
          v17 = [obj countByEnumeratingWithState:&v56 objects:v60 count:16];
        }

        while (v17);
      }

      else
      {
        v18 = 0;
      }

      if (v18 < v48)
      {
        v46 = [v9 substringFromIndex:v18];
        [v15 appendString:v46];
      }

      v47 = VOTLogSpeech();
      v14 = v49;
      if (os_log_type_enabled(v47, OS_LOG_TYPE_DEBUG))
      {
        sub_10012946C();
      }

      [v9 setString:v15];
      v10 = v50;
    }
  }
}

- (void)_formatJapaneseYen:(id)a3
{
  v3 = a3;
  if (qword_1001FEB10 != -1)
  {
    sub_1001294E0();
  }

  v4 = [qword_1001FEB08 matchesInString:v3 options:0 range:{0, objc_msgSend(v3, "length")}];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v5 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v12;
    do
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = [*(*(&v11 + 1) + 8 * i) range];
        [v3 replaceOccurrencesOfString:@"JP" withString:&stru_1001CBF90 options:0 range:{v9, v10}];
      }

      v6 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v6);
  }
}

- (void)_applyTransliteration:(id)a3 languageCode:(id)a4
{
  v11 = a3;
  v5 = a4;
  v6 = +[AXLanguageManager sharedInstance];
  v7 = v6;
  if (v5)
  {
    v8 = [v6 dialectForLanguageID:v5];
  }

  else
  {
    v9 = [VOTSharedWorkspace systemSpokenLanguage];
    v8 = [v7 dialectForLanguageID:v9];
  }

  if ([v8 speakingRequiresTransliteration])
  {
    v10 = [v8 transliteratedStringForString:v11];
    [v11 replaceCharactersInRange:0 withString:{objc_msgSend(v11, "length"), v10}];
  }
}

- (void)_formatEthernetMacAddress:(id)a3 voiceIdentifier:(id)a4 rate:(float)a5
{
  v8 = a3;
  v9 = a4;
  v36 = 0;
  v10 = [NSRegularExpression regularExpressionWithPattern:@"\\b(\\S\\S)\\s?:\\s?(\\S\\S)\\s?:\\s?(\\S\\S)\\s?:\\s?(\\S\\S)\\s?:\\s?(\\S\\S)\\s?:\\s?(\\S\\S)\\b" options:1 error:&v36];
  v11 = v36;
  if (v10)
  {
    v12 = +[NSMutableString string];
    v13 = [v10 matchesInString:v8 options:0 range:{0, objc_msgSend(v8, "length")}];
    if ([v13 count])
    {
      v31 = v10;
      v35 = v8;
      v29 = v13;
      v34 = [v13 firstObject];
      v14 = [v34 numberOfRanges];
      *&v15 = a5;
      [(VOTOutputSpeechComponent *)self pauseStringForType:6 voiceIdentifier:v9 rate:v15];
      v33 = v32 = v9;
      *&v16 = a5;
      v17 = [(VOTOutputSpeechComponent *)self pauseStringForType:4 voiceIdentifier:v9 rate:v16];
      v18 = v14 != 6;
      v30 = v11;
      if (v14 <= v18)
      {
        location = 0;
        length = 0;
      }

      else
      {
        v19 = 0;
        v20 = 0;
        do
        {
          v21 = [v34 rangeAtIndex:v18];
          v23 = v22;
          location = v21;
          length = v22;
          if (v20)
          {
            v37.location = v19;
            v37.length = v20;
            v38.location = v21;
            v38.length = v23;
            v26 = NSUnionRange(v37, v38);
            location = v26.location;
            length = v26.length;
          }

          v27 = [v35 substringWithRange:{v21, v23}];
          v28 = [v27 uppercaseString];

          [v12 appendFormat:@"%C%@%C%@", objc_msgSend(v28, "characterAtIndex:", 0), v17, objc_msgSend(v28, "characterAtIndex:", 1), v33];
          ++v18;
          v19 = location;
          v20 = length;
        }

        while (v14 != v18);
      }

      v8 = v35;
      v10 = v31;
      if ([v12 length])
      {
        [v35 replaceCharactersInRange:location withString:{length, v12}];
      }

      v9 = v32;
      v13 = v29;
      v11 = v30;
    }
  }

  else
  {
    _AXLogWithFacility();
  }
}

- (void)_formatNumbers:(id)a3 action:(id)a4
{
  v6 = a3;
  v7 = [(VOTOutputComponent *)self determineActivityForAction:a4];
  v8 = [VOTSharedWorkspace numberFeedback];
  v9 = [v7 numberFeedback];

  if (v9)
  {
    v10 = [v7 numberFeedback];
    v8 = [v10 integerValue];
  }

  if (v8 == 2)
  {
    v37 = v7;
    if (qword_1001FEB20 != -1)
    {
      sub_1001294F4();
    }

    [qword_1001FEB18 matchesInString:v6 options:0 range:{0, objc_msgSend(v6, "length")}];
    v42 = 0u;
    v43 = 0u;
    v44 = 0u;
    obj = v45 = 0u;
    v11 = [obj countByEnumeratingWithState:&v42 objects:v46 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = 0;
      v14 = *v43;
      do
      {
        for (i = 0; i != v12; i = i + 1)
        {
          if (*v43 != v14)
          {
            objc_enumerationMutation(obj);
          }

          v16 = [*(*(&v42 + 1) + 8 * i) range];
          v18 = v17;
          v19 = objc_opt_new();
          v40[0] = _NSConcreteStackBlock;
          v40[1] = 3221225472;
          v40[2] = sub_10003225C;
          v40[3] = &unk_1001C7FE8;
          v41 = v19;
          v20 = v19;
          [v6 enumerateSubstringsInRange:&v16[v13] options:v18 usingBlock:{2, v40}];
          [v6 replaceCharactersInRange:&v16[v13] withString:{v18, v20}];
          v13 += [v20 length] - v18;
        }

        v12 = [obj countByEnumeratingWithState:&v42 objects:v46 count:16];
      }

      while (v12);
    }

    v21 = [NSCharacterSet characterSetWithCharactersInString:@"$¢£¥€₹₽¤"];
    v22 = +[NSMutableArray array];
    if ([v6 length])
    {
      v23 = 0;
      do
      {
        v24 = [v6 characterAtIndex:v23];
        v39 = v24;
        if ([v21 characterIsMember:v24])
        {
          v25 = [NSValue valueWithRange:v23, 1];
          [v22 addObject:v25];

          v26 = v39;
          v27 = [VOTSharedWorkspace selectedLanguage];
          v28 = sub_100051B24(v26, @"UnicodeHex.", @"VOTOutputPunctuation", v27);

          if (!v28)
          {
            v28 = [NSString stringWithCharacters:&v39 length:1];
          }

          v29 = [NSString stringWithFormat:@" %@ ", v28];
          [v6 replaceCharactersInRange:v23 withString:{1, v29}];

          v30 = [v28 length];
          if ([v22 count])
          {
            v31 = 0;
            v32 = v30 + 1;
            do
            {
              v33 = [v22 objectAtIndexedSubscript:v31];
              v34 = [v33 rangeValue];
              if (v34 > v23)
              {
                v36 = [NSValue valueWithRange:&v32[v34], v35];
                [v22 setObject:v36 atIndexedSubscript:v31];
              }

              ++v31;
            }

            while (v31 < [v22 count]);
          }
        }

        ++v23;
      }

      while (v23 < [v6 length]);
    }

    v7 = v37;
  }
}

- (void)_formatUSHeight:(id)a3 voiceIdentifier:(id)a4
{
  v37 = a3;
  v5 = [AVSpeechSynthesisVoice _voiceFromInternalVoiceListWithIdentifier:a4];
  v6 = [v5 language];
  v7 = [v6 isEqualToString:@"en-US"];

  if (v7)
  {
    v8 = v37;
    if (qword_1001FEB30 != -1)
    {
      sub_100129508();
      v8 = v37;
    }

    v9 = [qword_1001FEB28 matchesInString:v37 options:0 range:{0, objc_msgSend(v8, "length")}];
    v10 = [v9 firstObject];
    if ([v10 numberOfRanges] == 5)
    {
      v11 = [v10 rangeAtIndex:1];
      v13 = [v37 substringWithRange:{v11, v12}];
      v14 = [v13 intValue];

      v15 = [v10 rangeAtIndex:3];
      v17 = [v37 substringWithRange:{v15, v16}];
      v18 = [v17 intValue];

      v19 = objc_alloc_init(NSMeasurementFormatter);
      [v19 setUnitStyle:3];
      [v19 setUnitOptions:1];
      v20 = +[AXLanguageManager sharedInstance];
      v21 = [VOTSharedWorkspace selectedLanguage];
      v22 = [v20 dialectForLanguageID:v21];
      v23 = [v22 locale];
      [v19 setLocale:v23];

      v24 = [NSMeasurement alloc];
      v25 = v14;
      v26 = +[NSUnitLength feet];
      v27 = [v24 initWithDoubleValue:v26 unit:v25];
      v28 = [v19 stringFromMeasurement:v27];
      v29 = [NSMeasurement alloc];
      v30 = +[NSUnitLength inches];
      v31 = [v29 initWithDoubleValue:v30 unit:v18];
      v36 = [v19 stringFromMeasurement:v31];
      v32 = __AXStringForVariables();

      if ([v32 length])
      {
        v33 = [v10 rangeAtIndex:0];
        v35 = [v37 substringWithRange:{v33, v34}];
        [v37 replaceOccurrencesOfString:v35 withString:v32 options:0 range:{0, objc_msgSend(v37, "length")}];
      }
    }
  }
}

- (void)_formatATVStyleMediaDurations:(id)a3
{
  v3 = a3;
  v22 = v3;
  if (qword_1001FEB40 != -1)
  {
    sub_10012951C();
    v3 = v22;
  }

  v4 = [qword_1001FEB38 matchesInString:v22 options:0 range:{0, objc_msgSend(v3, "length")}];
  v5 = [v4 firstObject];
  if ([v5 numberOfRanges] == 5)
  {
    v6 = 0.0;
    if ([v5 rangeAtIndex:2] != 0x7FFFFFFFFFFFFFFFLL)
    {
      v7 = [v5 rangeAtIndex:2];
      v9 = [v22 substringWithRange:{v7, v8}];
      [v9 floatValue];
      v11 = v10;

      v6 = v11 * 60.0;
    }

    v12 = [v5 rangeAtIndex:3];
    v14 = [v22 substringWithRange:{v12, v13}];
    [v14 floatValue];
    v16 = v15;

    v17 = [VOTSharedWorkspace selectedLanguage];
    v18 = sub_1000513DC(0, v17, v16 * 60.0 + v6 * 60.0);

    if ([v18 length])
    {
      v19 = [v5 rangeAtIndex:0];
      v21 = [v22 substringWithRange:{v19, v20}];
      [v22 replaceOccurrencesOfString:v21 withString:v18 options:0 range:{0, objc_msgSend(v22, "length")}];
    }
  }
}

- (void)_formatIPAddress:(id)a3 voiceIdentifier:(id)a4 rate:(float)a5
{
  v7 = a3;
  v43 = a4;
  v8 = qword_1001FEB48;
  if (!qword_1001FEB48)
  {
    v9 = [NSRegularExpression regularExpressionWithPattern:@"\\b([0-9]{1 options:3}\\.[0-9]{1 error:3}\\.[0-9]{1, 3}\\.[0-9]{1, 3})\\b", 0, 0];
    v10 = qword_1001FEB48;
    qword_1001FEB48 = v9;

    v11 = +[NSRegularExpression regularExpressionWithPattern:options:error:](NSRegularExpression, "regularExpressionWithPattern:options:error:", @"\\b((?:[0-9a-fA-F]{0,4}:){5,7}[0-9A-Fa-f]{0,4})\\b", 0, 0);
    v12 = qword_1001FEB50;
    qword_1001FEB50 = v11;

    v8 = qword_1001FEB48;
  }

  v13 = [v8 matchesInString:v7 options:0 range:{0, objc_msgSend(v7, "length")}];
  v14 = [qword_1001FEB50 matchesInString:v7 options:0 range:{0, objc_msgSend(v7, "length")}];
  v15 = [v13 arrayByAddingObjectsFromArray:v14];
  if ([v15 count])
  {
    v38 = v14;
    v39 = v13;
    v16 = +[NSMutableString string];
    v42 = v7;
    v36 = [v7 length];
    v37 = v15;
    v44 = 0u;
    v45 = 0u;
    v46 = 0u;
    v47 = 0u;
    obj = v15;
    v17 = [obj countByEnumeratingWithState:&v44 objects:v48 count:16];
    if (v17)
    {
      v18 = v17;
      v19 = 0;
      v20 = *v45;
      do
      {
        for (i = 0; i != v18; i = i + 1)
        {
          if (*v45 != v20)
          {
            objc_enumerationMutation(obj);
          }

          v22 = [*(*(&v44 + 1) + 8 * i) range];
          v24 = v23;
          if (v22 > v19)
          {
            v25 = [v42 substringWithRange:{v19, v22 - v19}];
            [v16 appendString:v25];
          }

          v19 = &v22[v24];
          v26 = [v42 substringWithRange:{v22, v24}];
          v27 = [v26 mutableCopyWithZone:0];

          v28 = [VOTSharedWorkspace selectedLanguage];
          v29 = sub_100051B24(46, @"UnicodeHex.Alternate1.", @"VOTOutputPunctuation", v28);

          if (v29)
          {
            v31 = v29;
          }

          else
          {
            v31 = @".";
          }

          *&v30 = a5;
          v32 = [(VOTOutputSpeechComponent *)self pauseStringForType:6 voiceIdentifier:v43 rate:v30];
          v33 = [NSString stringWithFormat:@"%@ %@ %@", v32, v31, v32];
          [v27 replaceOccurrencesOfString:@"." withString:v33 options:1 range:{0, objc_msgSend(v27, "length")}];

          [v27 replaceOccurrencesOfString:@":" withString:@" : " options:1 range:{0, objc_msgSend(v27, "length")}];
          [v16 appendString:v27];
        }

        v18 = [obj countByEnumeratingWithState:&v44 objects:v48 count:16];
      }

      while (v18);
    }

    else
    {
      v19 = 0;
    }

    v7 = v42;
    if (v19 < v36)
    {
      v34 = [v42 substringFromIndex:v19];
      [v16 appendString:v34];
    }

    v35 = VOTLogSpeech();
    v14 = v38;
    v13 = v39;
    if (os_log_type_enabled(v35, OS_LOG_TYPE_DEBUG))
    {
      sub_100129530();
    }

    [v42 setString:v16];
    v15 = v37;
  }
}

- (void)_formatExplicitTimeDuration:(id)a3 isMMSS:(BOOL)a4 languageCode:(id)a5
{
  v6 = a4;
  v7 = a3;
  v8 = a5;
  v9 = [NSCharacterSet characterSetWithCharactersInString:@", "];
  v10 = [v7 stringByTrimmingCharactersInSet:v9];

  [v7 setString:v10];
  v11 = [v7 componentsSeparatedByString:@":"];
  v12 = [v11 count];
  v13 = v12 == 3 || v6;
  if (v13 == 1)
  {
    if (v12 == 3)
    {
      v14 = [v11 objectAtIndex:0];
      v15 = 3600 * [v14 integerValue];
      v16 = [v11 objectAtIndex:1];
      v17 = (v15 + 60 * [v16 integerValue]);
      v18 = [v11 objectAtIndex:2];
      [v18 floatValue];
      v20 = (v19 + v17);
    }

    else
    {
      if (v12 == 1)
      {
        v14 = [v11 objectAtIndex:0];
        [v14 floatValue];
        v20 = v24;
        goto LABEL_16;
      }

      v20 = -1.0;
      if (v12 != 2)
      {
        goto LABEL_17;
      }

      v14 = [v11 objectAtIndex:0];
      v22 = (60 * [v14 integerValue]);
      v16 = [v11 objectAtIndex:1];
      [v16 floatValue];
      v20 = (v23 + v22);
    }
  }

  else
  {
    if (v12 == 1)
    {
      v14 = [v11 objectAtIndex:0];
      v20 = (60 * [v14 integerValue]);
      goto LABEL_16;
    }

    v20 = -1.0;
    if (v12 != 2)
    {
      goto LABEL_17;
    }

    v14 = [v11 objectAtIndex:0];
    v21 = 3600 * [v14 integerValue];
    v16 = [v11 objectAtIndex:1];
    v20 = (v21 + 60 * [v16 integerValue]);
  }

LABEL_16:
LABEL_17:
  v25 = VOTLogSpeech();
  if (os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
  {
    sub_10012959C(v7, v25, v20);
  }

  if (v20 != -1.0)
  {
    v26 = sub_1000513DC(v13 ^ 1, v8, v20);
    [v7 setString:v26];
  }

  v27 = VOTLogSpeech();
  if (os_log_type_enabled(v27, OS_LOG_TYPE_DEBUG))
  {
    sub_100129620();
  }
}

- (void)_formatTimeDuration:(id)a3 didMatch:(BOOL *)a4 voiceIdentifier:(id)a5 rate:(float)a6
{
  v9 = a3;
  v63 = a5;
  *a4 = 0;
  v10 = qword_1001FEB58;
  if (!qword_1001FEB58)
  {
    v11 = [NSRegularExpression regularExpressionWithPattern:@"\\b((?<!:)[0-9]{1 options:2}:[0-9]{2}(?!:))\\s?(am|pm|AM|PM|[:cntrl:])?" error:0, 0];
    v12 = qword_1001FEB58;
    qword_1001FEB58 = v11;

    v10 = qword_1001FEB58;
  }

  v13 = [v10 matchesInString:v9 options:0 range:{0, objc_msgSend(v9, "length")}];
  v14 = qword_1001FEB60;
  if (!qword_1001FEB60)
  {
    v15 = [NSRegularExpression regularExpressionWithPattern:@"\\b([0-9]{1 options:2}:[0-9]{2})\\s?(-|–)\\s?([0-9]{1 error:2}:[0-9]{2})", 0, 0];
    v16 = qword_1001FEB60;
    qword_1001FEB60 = v15;

    v14 = qword_1001FEB60;
  }

  v69 = [v14 matchesInString:v9 options:0 range:{0, objc_msgSend(v9, "length")}];
  v67 = v9;
  if ([v69 count])
  {
    v70 = a4;
    v65 = [v13 mutableCopy];
    v82 = 0u;
    v83 = 0u;
    v84 = 0u;
    v85 = 0u;
    obj = v13;
    v17 = [obj countByEnumeratingWithState:&v82 objects:v88 count:16];
    if (v17)
    {
      v18 = v17;
      v19 = *v83;
      do
      {
        for (i = 0; i != v18; i = i + 1)
        {
          if (*v83 != v19)
          {
            objc_enumerationMutation(obj);
          }

          v21 = *(*(&v82 + 1) + 8 * i);
          v22 = [v21 range];
          v24 = v23;
          v78 = 0u;
          v79 = 0u;
          v80 = 0u;
          v81 = 0u;
          v25 = v69;
          v26 = [v25 countByEnumeratingWithState:&v78 objects:v87 count:16];
          if (v26)
          {
            v27 = v26;
            v28 = *v79;
            while (2)
            {
              for (j = 0; j != v27; j = j + 1)
              {
                if (*v79 != v28)
                {
                  objc_enumerationMutation(v25);
                }

                v89.location = [*(*(&v78 + 1) + 8 * j) range];
                v90.location = v22;
                v90.length = v24;
                if (NSIntersectionRange(v89, v90).length)
                {
                  [v65 removeObject:v21];
                  goto LABEL_21;
                }
              }

              v27 = [v25 countByEnumeratingWithState:&v78 objects:v87 count:16];
              if (v27)
              {
                continue;
              }

              break;
            }
          }

LABEL_21:
        }

        v18 = [obj countByEnumeratingWithState:&v82 objects:v88 count:16];
      }

      while (v18);
    }

    v30 = v65;
    v9 = v67;
    a4 = v70;
  }

  else
  {
    v30 = v13;
  }

  if (![v30 count])
  {
    goto LABEL_56;
  }

  *a4 = 1;
  obja = +[NSMutableString string];
  v61 = [v9 length];
  v74 = 0u;
  v75 = 0u;
  v76 = 0u;
  v77 = 0u;
  v66 = v30;
  v64 = v30;
  v71 = [v64 countByEnumeratingWithState:&v74 objects:v86 count:16];
  v31 = 0;
  if (!v71)
  {
    goto LABEL_51;
  }

  v32 = &kVOTEventCommandBrailleStatusRouter_ptr;
  v68 = *v75;
  do
  {
    for (k = 0; k != v71; k = k + 1)
    {
      if (*v75 != v68)
      {
        objc_enumerationMutation(v64);
      }

      v34 = [*(*(&v74 + 1) + 8 * k) range];
      v36 = v35;
      if (v34 != v31)
      {
        v37 = [v9 substringWithRange:{v31, v34 - v31}];
        [obja appendString:v37];
      }

      v38 = [v9 substringWithRange:{v34, v36}];
      v39 = [v32[290] currentCalendar];
      v40 = [v39 AMSymbol];
      if ([v38 rangeOfString:v40 options:1] != 0x7FFFFFFFFFFFFFFFLL)
      {

LABEL_40:
        [obja appendString:v38];
        goto LABEL_49;
      }

      v41 = [v32[290] currentCalendar];
      v42 = [v41 PMSymbol];
      v43 = [v38 rangeOfString:v42 options:1];

      v32 = &kVOTEventCommandBrailleStatusRouter_ptr;
      v9 = v67;

      if (v43 != 0x7FFFFFFFFFFFFFFFLL)
      {
        goto LABEL_40;
      }

      v44 = [v38 rangeOfString:@":"];
      v45 = [v38 substringToIndex:v44];
      v46 = [v38 substringFromIndex:v44 + 1];
      v47 = +[NSCharacterSet decimalDigitCharacterSet];
      v48 = [v45 rangeOfCharacterFromSet:v47];

      if (v48 != 0x7FFFFFFFFFFFFFFFLL)
      {
        v49 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%d", [v45 intValue]);

        v45 = v49;
      }

      v50 = +[NSCharacterSet decimalDigitCharacterSet];
      v51 = [v46 rangeOfCharacterFromSet:v50];

      if (v51 == 0x7FFFFFFFFFFFFFFFLL)
      {
        v32 = &kVOTEventCommandBrailleStatusRouter_ptr;
      }

      else
      {
        v53 = [v46 integerValue];
        v32 = &kVOTEventCommandBrailleStatusRouter_ptr;
        if (v53)
        {
          v54 = v53;
          v55 = [v46 intValue];
          if (v54 >= 10)
          {
            v56 = @"%d";
          }

          else
          {
            v56 = @"0%d";
          }

          v57 = [NSString stringWithFormat:v56, v55];
        }

        else
        {
          v57 = &stru_1001CBF90;
        }

        v46 = v57;
        v9 = v67;
      }

      *&v52 = a6;
      v58 = [(VOTOutputSpeechComponent *)self pauseStringForType:6 voiceIdentifier:v63 rate:v52];
      [obja appendFormat:@" %@ %@ %@ ", v45, v58, v46];

LABEL_49:
      v31 = &v34[v36];
    }

    v71 = [v64 countByEnumeratingWithState:&v74 objects:v86 count:16];
  }

  while (v71);
LABEL_51:

  if (v31 < v61)
  {
    v59 = [v9 substringFromIndex:v31];
    [obja appendString:v59];
  }

  v60 = VOTLogSpeech();
  v30 = v66;
  if (os_log_type_enabled(v60, OS_LOG_TYPE_DEBUG))
  {
    sub_100129688();
  }

  [v9 setString:obja];
LABEL_56:
}

- (void)_appendLiteralCharacterString:(id)a3 toString:(id)a4 hasPhoneContext:(BOOL)a5 hasMathContext:(BOOL)a6 action:(id)a7 punctuationTableLanguageUsed:(BOOL *)a8
{
  v10 = a6;
  v11 = a5;
  v14 = a3;
  v15 = a4;
  v16 = a7;
  v17 = [v16 objectForVariant:58];
  v18 = [v17 BOOLValue];

  v19 = [v16 objectForVariant:57];
  v20 = [v19 BOOLValue];

  v21 = [v16 objectForVariant:17];
  if ([v14 length] > 2)
  {
    v26 = 0;
    goto LABEL_24;
  }

  v22 = AXUnicodeCodePointForCharacterString();
  v81 = v22;
  if (v11)
  {
    v23 = sub_100051B24(v22, @"UnicodeHex.PhoneContext.", @"VOTOutputPunctuation", v21);
    v24 = v23;
    if (v23)
    {
      v25 = v23;
    }

    if (!v24)
    {
      goto LABEL_44;
    }

LABEL_16:
    v26 = 0;
    if (v21)
    {
      goto LABEL_18;
    }

    goto LABEL_17;
  }

  if (v10)
  {
    v27 = @"UnicodeHex.Math.";
    goto LABEL_12;
  }

  if (v20)
  {
    v27 = @"UnicodeHex.TypingContext.";
LABEL_12:
    v28 = sub_100051B24(v22, v27, @"VOTOutputPunctuation", v21);
    if ([v28 length])
    {
      v24 = v28;
    }

    else
    {
      v24 = 0;
    }

    if (!v24)
    {
      goto LABEL_44;
    }

    goto LABEL_16;
  }

  v44 = [v16 objectForVariant:42];

  if (v44)
  {
    v82[1] = 0;
    objc_opt_class();
    v45 = [v16 objectForVariant:42];
    v46 = __UIAccessibilityCastAsClass();

    if (v46)
    {
      v47 = [NSString stringWithFormat:@"UnicodeHex.%@.", v46];
      v48 = sub_100051B24(v81, v47, @"VOTOutputPunctuation", v21);
      v24 = v48;
      if (v48)
      {
        v49 = v48;
      }
    }

    else
    {
      v24 = 0;
    }

    if (v24)
    {
      goto LABEL_16;
    }
  }

LABEL_44:
  v82[0] = 0;
  v50 = [(VOTOutputSpeechComponent *)self _determinePunctuationGroupForAction:v16 isDefault:v82];
  v51 = v50;
  if ((v82[0] | v18))
  {
    v24 = 0;
  }

  else
  {
    [v50 entries];
    v52 = v78 = v51;
    v53 = [v52 ax_filteredArrayUsingBlock:&stru_1001C8068];
    v54 = [v53 count] != 0;

    v51 = v78;
    LOBYTE(v75) = 0;
    v24 = [(VOTOutputSpeechComponent *)self _replacePunctuation:v14 punctuationGroup:v78 hasMathContext:0 hasPhoneContext:0 isText:0 replaceCommas:v54 languageCode:v21 speakPunctuationCounts:v75];
    if ([v24 length] && (objc_msgSend(v24, "isEqualToString:", v14) & 1) == 0)
    {
      if (!sub_1000F2430([v24 characterAtIndex:0], objc_msgSend(v14, "characterAtIndex:", 0)))
      {
        v26 = 1;
        v51 = v78;
        goto LABEL_83;
      }

      v51 = v78;
    }
  }

  if (v81 < 0x10000)
  {
    if ([v14 length] != 1 && (objc_msgSend(v16, "objectForVariant:", 28), v79 = a8, v55 = self, v56 = v51, v57 = objc_claimAutoreleasedReturnValue(), v58 = objc_msgSend(v57, "BOOLValue"), v57, v51 = v56, self = v55, a8 = v79, !v58) || (v21 ? (v59 = v18) : (v59 = 0), (v59 & 1) != 0))
    {
      v26 = 0;
      goto LABEL_83;
    }

    v80 = v51;
    v61 = [VOTSharedWorkspace selectedLanguage];
    v62 = [VOTSharedWorkspace systemSpokenLanguage];
    v63 = [(VOTOutputSpeechComponent *)self currentAllPunctuationTable];
    v76 = v62;
    v77 = v61;
    v60 = [(VOTOutputSpeechComponent *)self punctuationReplacement:v14 withGroup:0 baseTable:v63 languageCode:v21 selectedLanguage:v61 spokenLanguage:v62];

    if (-[__CFString length](v60, "length") == 1 && (+[NSCharacterSet whitespaceCharacterSet](NSCharacterSet, "whitespaceCharacterSet"), v64 = objc_claimAutoreleasedReturnValue(), v65 = [v64 characterIsMember:{-[__CFString characterAtIndex:](v60, "characterAtIndex:", 0)}], v64, v65))
    {
      v66 = v77;
      if (!v66 && v21)
      {
        v67 = AXCLanguageCanonicalFormToGeneralLanguage();
        v68 = AXCLanguageCanonicalFormToGeneralLanguage();
        v69 = [v67 isEqualToString:v68];

        if (v69)
        {
          v66 = 0;
        }

        else
        {
          v66 = v21;
        }
      }

      v73 = sub_100051B24(v81, @"UnicodeHex.", @"VOTOutputPunctuation", v66);

      if (v73)
      {
        v60 = v73;
      }

      else
      {
        v60 = @" ";
      }

      v26 = 1;
    }

    else
    {
      if (v60)
      {
        v26 = 1;
        v51 = v80;
LABEL_81:

        v24 = v77;
        goto LABEL_82;
      }

      v70 = +[AXLanguageManager sharedInstance];
      v71 = v70;
      if (v21)
      {
        v66 = [v70 dialectForLanguageID:v21];
      }

      else
      {
        v72 = [VOTSharedWorkspace systemSpokenLanguage];
        v66 = [v71 dialectForLanguageID:v72];
      }

      if (v66 && [v66 hasSpeakableCharacters] && (objc_msgSend(v66, "canSpeakCharacter:", v81) & 1) == 0)
      {
        v74 = AXVOLocalizedStringForCharacter();
        if (!v74)
        {
          v74 = AXCopyUnicodeDescriptionStringForCharacter();
        }

        v60 = v74;
        v26 = 0;
      }

      else
      {
        v26 = 0;
        v60 = 0;
      }
    }

    v51 = v80;

    goto LABEL_81;
  }

  v60 = sub_100051B24(v81, @"UnicodeHex.", @"VOTOutputPunctuation", v21);
  v26 = 0;
LABEL_82:

  v24 = v60;
LABEL_83:

  if (!v21)
  {
LABEL_17:
    v21 = [VOTSharedWorkspace systemSpokenLanguage];
  }

LABEL_18:
  if ([v14 length] == 1)
  {
    v29 = sub_100033E58([v14 characterAtIndex:0]);
    v30 = v29;
    if (v29)
    {
      v31 = v29;

      v24 = v31;
    }
  }

  if (v24)
  {
    [v16 removeObjectForVariant:15];
    [v15 appendString:@" "];
    [v15 appendString:v24];
    [v15 appendString:@" "];

    v32 = v14;
    goto LABEL_34;
  }

LABEL_24:
  v33 = sub_10005088C(v14);
  v32 = [(VOTOutputSpeechComponent *)self _literalStringMarkupForString:v14 languageCode:v21 action:v16];

  [v15 appendString:v32];
  if (!v33)
  {
    goto LABEL_34;
  }

  v34 = +[AXSettings sharedInstance];
  v35 = [v34 voiceOverCapitalLetterFeedback];

  if (v35 == 2)
  {
    v36 = @"Sounds/Capitals.aiff";
    v37 = v16;
    v38 = 75;
  }

  else
  {
    v39 = +[AXSettings sharedInstance];
    v40 = [v39 voiceOverCapitalLetterFeedback];

    if (v40 != 1)
    {
      goto LABEL_34;
    }

    if ([VOTSharedWorkspace typingPitchChangeEnabled] && (objc_msgSend(v16, "objectForVariant:", 32), v41 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v41, "floatValue"), v43 = fabs(v42 + -1.5), v41, v43 < 0.001))
    {
      v36 = &off_1001D9920;
    }

    else
    {
      v36 = &off_1001D9930;
    }

    v37 = v16;
    v38 = 32;
  }

  [v37 setObject:v36 forVariant:v38];
LABEL_34:
  if (a8)
  {
    *a8 = v26;
  }
}

- (id)_literalStringMarkupForString:(id)a3 languageCode:(id)a4 action:(id)a5
{
  synthesizer = self->_synthesizer;
  v9 = a5;
  v10 = a4;
  v11 = a3;
  v12 = [(TTSSpeechSynthesizer *)synthesizer voiceIdentifier];
  [(TTSSpeechSynthesizer *)self->_synthesizer setVoiceIdentifier:0];
  v13 = [(VOTOutputSpeechComponent *)self _determineVoiceIdentifier:v9 languageCode:v10];

  v14 = sub_100050908(v11, v13);

  [(TTSSpeechSynthesizer *)self->_synthesizer setVoiceIdentifier:v12];

  return v14;
}

- (id)_stringForLiteralText:(id)a3 action:(id)a4 allowChangingLanguageForPunctuation:(BOOL)a5
{
  v5 = a5;
  v7 = a3;
  v8 = a4;
  v9 = [v7 length];
  v10 = [v8 objectForVariant:55];
  v11 = [v10 BOOLValue];

  v12 = [v8 objectForVariant:56];
  v13 = [v12 BOOLValue];

  v14 = [v8 objectForVariant:66];
  v15 = [v14 BOOLValue];

  if ([v7 length] >= 2 && v9 == 1)
  {
    v16 = [(VOTOutputSpeechComponent *)self _stringForNormalText:v7 action:v8 allowPausingAtBoundaries:0 ignoreLeadingCommas:v15];
  }

  else
  {
    v35 = v8;
    if (v5 && [v7 length] && (objc_msgSend(v7, "rangeOfComposedCharacterSequenceAtIndex:", 0), v17 == objc_msgSend(v7, "length")))
    {
      v37 = 0;
      v16 = +[NSMutableString string];
      [(VOTOutputSpeechComponent *)self _appendLiteralCharacterString:v7 toString:v16 hasPhoneContext:v11 hasMathContext:v13 action:v8 punctuationTableLanguageUsed:&v37];
      if (v37 == 1)
      {
        v18 = [VOTSharedWorkspace selectedLanguage];

        if (!v18)
        {
          v19 = [v8 objectForVariant:17];
          if (!v19)
          {
            v20 = [VOTSharedWorkspace systemSpokenLanguage];
            v19 = AXLanguageCanonicalFormToGeneralLanguage();
          }

          v21 = [(VOTOutputSpeechComponent *)self _determineVoiceIdentifier:v8 languageCode:v19];
          v22 = [TTSSpeechSynthesizer voiceForIdentifier:v21];
          v23 = [v22 language];

          v24 = VOTLogSpeech();
          if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
          {
            *buf = 138412546;
            v39 = v23;
            v40 = 2112;
            v41 = v21;
            _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_INFO, "Language rotor was set to default, and punctuation table language was used. Replacing with language %@ and voice %@.", buf, 0x16u);
          }

          [v35 setObject:v23 forVariant:17];
          [v35 setObject:v21 forVariant:74];

          v8 = v35;
        }
      }
    }

    else
    {
      v16 = +[NSMutableString string];
      v25 = [v7 length];
      if (v25 >= 1)
      {
        v26 = v25;
        v27 = 0;
        do
        {
          v28 = [v7 rangeOfComposedCharacterSequenceAtIndex:v27];
          v30 = v29;
          v31 = [v7 substringWithRange:{v28, v29}];
          if ([v16 length])
          {
            v32 = +[NSCharacterSet whitespaceAndNewlineCharacterSet];
            v33 = [v32 characterIsMember:{objc_msgSend(v16, "characterAtIndex:", objc_msgSend(v16, "length") - 1)}];

            v8 = v35;
            if ((v33 & 1) == 0)
            {
              [v16 appendString:@" "];
            }
          }

          [(VOTOutputSpeechComponent *)self _appendLiteralCharacterString:v31 toString:v16 hasPhoneContext:v11 hasMathContext:v13 action:v8 punctuationTableLanguageUsed:0];
          v27 = &v28[v30];
        }

        while (v27 < v26);
      }
    }
  }

  return v16;
}

- (void)_speakAsLiteralText:(id)a3
{
  v4 = a3;
  v5 = [v4 string];
  v6 = VOTLogSpeech();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    sub_1001296F4();
  }

  v7 = [(VOTOutputSpeechComponent *)self _stringForLiteralText:v5 action:v4 allowChangingLanguageForPunctuation:1];
  v8 = VOTLogSpeech();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    sub_10012975C();
  }

  [v4 setString:v7];
}

- (void)_speakAsPhoneticText:(id)a3
{
  v3 = a3;
  v4 = VOTLogSpeech();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    sub_1001297C4(v3);
  }
}

- (id)fileSystemPunctuationGroup
{
  fileSystemPunctuationGroup = self->_fileSystemPunctuationGroup;
  if (!fileSystemPunctuationGroup)
  {
    v4 = objc_opt_new();
    v5 = self->_fileSystemPunctuationGroup;
    self->_fileSystemPunctuationGroup = v4;

    [(AXSSPunctuationGroup *)self->_fileSystemPunctuationGroup setBasePunctuationUUID:AXSSVoiceOverPunctuationGroupAll];
    v6 = objc_opt_new();
    [v6 setRule:1];
    [v6 setPunctuation:@"."];
    [v6 setDynamicReplacement:&stru_1001C80A8];
    v9 = v6;
    v7 = [NSArray arrayWithObjects:&v9 count:1];
    [(AXSSPunctuationGroup *)self->_fileSystemPunctuationGroup setEntries:v7];

    fileSystemPunctuationGroup = self->_fileSystemPunctuationGroup;
  }

  return fileSystemPunctuationGroup;
}

- (id)punctuationReplacement:(id)a3 withGroup:(id)a4 baseTable:(id)a5 languageCode:(id)a6 selectedLanguage:(id)a7 spokenLanguage:(id)a8
{
  v12 = a3;
  v13 = a5;
  v14 = a6;
  v40 = a8;
  v41 = 0u;
  v42 = 0u;
  v43 = 0u;
  v44 = 0u;
  v15 = [a4 entries];
  v16 = [v15 countByEnumeratingWithState:&v41 objects:v45 count:16];
  if (v16)
  {
    v17 = v16;
    v18 = *v42;
    while (2)
    {
      for (i = 0; i != v17; i = i + 1)
      {
        if (*v42 != v18)
        {
          objc_enumerationMutation(v15);
        }

        v20 = *(*(&v41 + 1) + 8 * i);
        v21 = [v20 punctuation];
        v22 = [v21 isEqualToString:v12];

        if (v22)
        {
          v23 = [v20 rule];
          if (v23 == 2)
          {
            v26 = &stru_1001CBF90;
            goto LABEL_31;
          }

          if (v23 == 1)
          {
            v28 = [v20 replacement];
            if (v28)
            {
              v26 = v28;
            }

            else
            {
              v26 = &stru_1001CBF90;
            }

            goto LABEL_31;
          }

          if (!v23)
          {
            v27 = v12;
            goto LABEL_30;
          }
        }
      }

      v17 = [v15 countByEnumeratingWithState:&v41 objects:v45 count:16];
      if (v17)
      {
        continue;
      }

      break;
    }
  }

  v24 = [v12 characterAtIndex:0];
  v15 = [v13 objectForIndex:v24];
  if ([v15 isEqualToString:v12])
  {
    v25 = 0;
  }

  else if ([v15 length] == 1)
  {
    v25 = sub_1000F2430(v24, [v15 characterAtIndex:0]) ^ 1;
  }

  else
  {
    v25 = 1;
  }

  if ([v15 length] && (!a7 ? (v29 = v25) : (v29 = 0), v14 && v29 && (AXCLanguageCanonicalFormToGeneralLanguage(), v30 = objc_claimAutoreleasedReturnValue(), AXCLanguageCanonicalFormToGeneralLanguage(), v31 = objc_claimAutoreleasedReturnValue(), v32 = objc_msgSend(v30, "isEqualToString:", v31), v31, v30, (v32 & 1) == 0)))
  {
    punctuationFallbacks = self->_punctuationFallbacks;
    if (!punctuationFallbacks)
    {
      v35 = +[NSMutableDictionary dictionary];
      v36 = self->_punctuationFallbacks;
      self->_punctuationFallbacks = v35;

      punctuationFallbacks = self->_punctuationFallbacks;
    }

    v37 = [(NSMutableDictionary *)punctuationFallbacks objectForKeyedSubscript:v14];
    if (!v37)
    {
      v37 = +[NSMutableDictionary dictionary];
      [(NSMutableDictionary *)self->_punctuationFallbacks setObject:v37 forKeyedSubscript:v14];
    }

    v26 = [v37 objectForKeyedSubscript:v12];
    if (!v26)
    {
      v26 = AXVOLocalizedStringForCharacter();
      if (!v26)
      {
        v26 = AXCopyUnicodeDescriptionStringForCharacter();
      }

      [v37 setObject:v26 forKeyedSubscript:v12];
    }
  }

  else
  {
    v27 = v15;
    v15 = v27;
LABEL_30:
    v26 = v27;
  }

LABEL_31:

  return v26;
}

- (id)baseTableForPunctuationGroup:(id)a3
{
  v4 = a3;
  v5 = +[AXSSPunctuationManager sharedDatabase];
  v6 = [v5 mostBasePunctuationGroupForGroup:v4];

  if ([v6 isEqual:AXSSVoiceOverPunctuationGroupAll])
  {
    v7 = [(VOTOutputSpeechComponent *)self currentAllPunctuationTable];
LABEL_7:
    v8 = v7;
    goto LABEL_8;
  }

  if ([v6 isEqual:AXSSVoiceOverPunctuationGroupSome])
  {
    v7 = [(VOTOutputSpeechComponent *)self currentSomePunctuationTable];
    goto LABEL_7;
  }

  if ([v6 isEqual:AXSSVoiceOverPunctuationGroupNone])
  {
    v7 = [(VOTOutputSpeechComponent *)self currentNonePunctuationTable];
    goto LABEL_7;
  }

  v8 = 0;
LABEL_8:

  return v8;
}

- (id)_replacePunctuation:(id)a3 punctuationGroup:(id)a4 hasMathContext:(BOOL)a5 hasPhoneContext:(BOOL)a6 isText:(BOOL)a7 replaceCommas:(BOOL)a8 languageCode:(id)a9 speakPunctuationCounts:(BOOL)a10
{
  v125 = a6;
  v10 = a7;
  v123 = a5;
  v13 = a3;
  v14 = a4;
  v15 = a9;
  v16 = [v13 length];
  v17 = [objc_allocWithZone(NSMutableString) init];
  if (qword_1001FEB78 != -1)
  {
    sub_100129850();
  }

  v133 = v14;
  v132 = [(VOTOutputSpeechComponent *)self baseTableForPunctuationGroup:v14];
  v18 = +[AXSSPunctuationManager sharedDatabase];
  v19 = [v18 allPunctuationGroup];
  v131 = [(VOTOutputSpeechComponent *)self baseTableForPunctuationGroup:v19];

  v134 = +[NSCharacterSet whitespaceAndNewlineCharacterSet];
  v136 = v17;
  v137 = [v13 isAXAttributedString];
  if (v137)
  {
    v20 = +[NSMutableArray array];
  }

  else
  {
    v20 = 0;
  }

  v135 = self;
  v140 = v20;
  v21 = v15;
  v139 = v21;
  if (!v21)
  {
    v21 = [VOTSharedWorkspace systemSpokenLanguage];
  }

  v126 = v21;
  v130 = [VOTSharedWorkspace selectedLanguage];
  v129 = [VOTSharedWorkspace systemSpokenLanguage];
  v147 = 0;
  if (v16 >= 1)
  {
    v22 = 0;
    while (1)
    {
      if (v137)
      {
        while (1)
        {
          v145 = 0;
          v146 = 0;
          v23 = [v13 attributesAtIndex:v22 effectiveRange:&v145];
          if (![v23 count])
          {
            break;
          }

          v24 = [v17 length];
          v25 = [NSValue valueWithRange:v24, v146];
          v26 = [v23 mutableCopy];
          [v26 setObject:v25 forKey:@"_VORangeValue"];
          [v140 addObject:v26];
          v27 = [v13 substringWithRange:{v145, v146}];
          [v17 appendString:v27];

          v147 = v146 + v145;
          v22 = v147;
          if (v147 >= v16)
          {
            goto LABEL_157;
          }
        }

        v22 = v147;
      }

      v28 = [v13 rangeOfComposedCharacterSequenceAtIndex:v22];
      v30 = v29;
      v31 = [v13 substringWithRange:{v28, v29}];
      v32 = v31;
      if (v30 < 2)
      {
        break;
      }

      [v17 appendString:v31];
      v147 += v30;
LABEL_142:

      v22 = v147;
      if (v147 >= v16)
      {
        goto LABEL_157;
      }
    }

    if ([v31 length] == 1)
    {
      v33 = [v32 characterAtIndex:0];
    }

    else
    {
      v33 = 0;
    }

    v34 = v139;
    v118 = v28;
    LOWORD(v145) = v33;
    if (v125)
    {
      v35 = @"UnicodeHex.PhoneContext.";
    }

    else
    {
      if (!v123)
      {
        goto LABEL_28;
      }

      v35 = @"UnicodeHex.Math.";
    }

    v36 = sub_100051B24(v33, v35, @"VOTOutputPunctuation", v139);
    v34 = v139;
    if (v36)
    {
      v37 = v36;
      v38 = &stru_1001CBF90;
      if (v147 > 0)
      {
        v38 = @" ";
      }

      [v17 appendFormat:@"%@%@ ", v38, v36];
      v147 += v30;
      goto LABEL_141;
    }

LABEL_28:
    v121 = v10;
    if (v34)
    {
      v39 = +[AXLanguageManager sharedInstance];
      [v39 dialectForLanguageID:v34];
    }

    else
    {
      v39 = +[VOTOutputManager outputManager];
      [v39 currentLanguageMap];
    }
    v40 = ;

    v122 = v40;
    v41 = sub_1000511D4(v40, v34, v32);
    v42 = v41;
    v120 = v30;
    if (v41 && ([qword_1001FEB70 characterIsMember:v145] & 1) != 0)
    {
      v43 = 0;
      v44 = 0;
      v10 = v121;
    }

    else
    {
      v45 = [(VOTOutputSpeechComponent *)v135 punctuationReplacement:v32 withGroup:v133 baseTable:v132 languageCode:v139 selectedLanguage:v130 spokenLanguage:v129];
      v43 = [(VOTOutputSpeechComponent *)v135 punctuationReplacement:v32 withGroup:0 baseTable:v131 languageCode:v139 selectedLanguage:v130 spokenLanguage:v129];
      if (v42)
      {
        v10 = v121;
        v44 = v45;
      }

      else
      {
        if (-[__CFString isEqualToString:](v45, "isEqualToString:", v32) && [v43 length])
        {
          v46 = [(VOTOutputSpeechComponent *)v135 currentAllPunctuationTable];
          v127 = [v46 objectForIndex:v145];

          v44 = v127;
        }

        else
        {
          v44 = v45;
        }

        v10 = v121;
      }
    }

    v128 = v44;
    if (!a8 && v145 == 44)
    {
      v47 = [v13 substringWithRange:{v147, 1}];
      [v17 appendString:v47];

      v147 += v30;
      v37 = v122;
LABEL_140:

LABEL_141:
      goto LABEL_142;
    }

    v48 = [(__CFString *)v44 length];
    v49 = v145;
    if (v48 && v145 != 45)
    {
LABEL_85:
      if (v49 != 35)
      {
        v37 = v122;
LABEL_99:
        if (v49 == 186)
        {
          v78 = [v13 length];
          if (v78 > v147 + 1)
          {
            v79 = [v13 characterAtIndex:?] - 67;
            if (v79 <= 8)
            {
              v80 = v128;
              if (((1 << v79) & 0x109) != 0)
              {

                v80 = @"°";
                goto LABEL_106;
              }

LABEL_105:
              if (!v80)
              {
                v128 = 0;
                goto LABEL_109;
              }

LABEL_106:
              v128 = v80;
              if (![(__CFString *)v80 isEqualToString:v32])
              {
                v116 = 1;
                goto LABEL_114;
              }

LABEL_109:
              v81 = sub_100033E58(v145);
              if (v81 && ([v13 rangeOfComposedCharacterSequenceAtIndex:v147], v82 == 1))
              {
                v83 = v81;

                v116 = 0;
                v128 = v83;
              }

              else
              {
                v116 = 1;
              }

              v37 = v122;
LABEL_114:
              if (!v10 && v145 == 10)
              {
                v84 = v128;
                v128 = 0;
LABEL_122:

                v37 = v122;
                goto LABEL_125;
              }

              if (v128)
              {
                v114 = v43;
                v85 = [(NSDictionary *)v135->_languageExceptions objectForKey:v126];
                v86 = [v85 count];

                if (v86)
                {
                  v87 = [(NSDictionary *)v135->_languageExceptions objectForKey:v126];
                  v88 = [NSString stringWithCharacters:&v145 length:1];
                  v84 = [v87 objectForKey:v88];

                  if (v84)
                  {
                    v84 = v84;

                    v116 = 0;
                    v128 = v84;
                  }

                  v17 = v136;
                  v43 = v114;
                  goto LABEL_122;
                }

                v17 = v136;
                v37 = v122;
                v43 = v114;
              }

              else
              {
                v128 = 0;
              }

LABEL_125:
              if ([(VOTOutputSpeechComponent *)v135 _replaceRepeatedPuntuationAndEmoji:qword_1001FEB68 newString:v13 charReplacementString:v17 charSequence:v32 charIndex:&v147 speakPunctuationCounts:a10 languageCode:v139])
              {
                goto LABEL_140;
              }

              v89 = [(AXIndexMap *)v135->_noneTableOverrides objectForIndex:v145];
              v90 = [(AXIndexMap *)v135->_specialPunctionTable objectForIndex:v145];
              if (v90)
              {

                v91 = v120;
                goto LABEL_128;
              }

              v91 = v120;
              if (v89 && ([v89 isEqual:v128] & 1) != 0)
              {
LABEL_128:
                v92 = v128;
                if (v128)
                {
LABEL_129:
                  v93 = v17;
                  v94 = v92;
LABEL_130:
                  [v93 appendString:v94];
LABEL_139:
                  v147 += v91;

                  goto LABEL_140;
                }

LABEL_138:
                v95 = [v13 substringWithRange:{v118, v91}];
                [v17 appendString:v95];

                v37 = v122;
                goto LABEL_139;
              }

              v92 = v128;
              if (!v128)
              {
                goto LABEL_138;
              }

              if (!v116)
              {
                goto LABEL_129;
              }

              if (![(__CFString *)v128 length])
              {
                v93 = v17;
                v94 = @" ";
                goto LABEL_130;
              }

              v119 = +[NSCharacterSet whitespaceCharacterSet];
              v117 = [(__CFString *)v128 isEqualToString:v32];
              if ([(__CFString *)v128 length]== 1)
              {
                v112 = [v119 characterIsMember:{-[__CFString characterAtIndex:](v128, "characterAtIndex:", 0)}];
              }

              else
              {
                v112 = 0;
              }

              if (!(([v17 length] == 0) | v117 & 1))
              {
                v96 = [v17 substringFromIndex:{objc_msgSend(v17, "length") - 1}];
                if ([v96 length] == 1 && (objc_msgSend(v119, "characterIsMember:", objc_msgSend(v96, "characterAtIndex:", 0)) & 1) == 0)
                {
                  [v17 appendString:@" "];
                }

                v37 = v122;
              }

              if (v112)
              {
                if (!v117)
                {
                  goto LABEL_156;
                }
              }

              else
              {
                [v17 appendString:v128];
                if (v117)
                {
LABEL_156:

                  goto LABEL_139;
                }
              }

              [v17 appendString:@" "];
              goto LABEL_156;
            }
          }
        }

LABEL_104:
        v80 = v128;
        goto LABEL_105;
      }

      v65 = v147 + 1;
      if (v65 < [v13 length])
      {
        v66 = +[NSCharacterSet letterCharacterSet];
        v67 = [v13 rangeOfComposedCharacterSequenceAtIndex:v147 + 1];
        if (v67 != 0x7FFFFFFFFFFFFFFFLL)
        {
          v74 = v67;
          v75 = v68;
          if (-[__CFString characterIsMember:](v66, "characterIsMember:", [v13 characterAtIndex:v67]) & 1) != 0 || (objc_msgSend(v13, "substringWithRange:", v74, v75), v76 = objc_claimAutoreleasedReturnValue(), v77 = TTSisSpeakableEmojiString(), v76, (v77))
          {
            v72 = sub_100051B24(v145, @"UnicodeHex.Alternate1.", @"VOTOutputPunctuation", v139);

            v73 = v66;
            v17 = v136;
            goto LABEL_97;
          }
        }
      }

      v69 = v147 + 1;
      if (v69 >= [v13 length])
      {
        v17 = v136;
      }

      else
      {
        v70 = +[NSCharacterSet decimalDigitCharacterSet];
        v71 = [v70 characterIsMember:{objc_msgSend(v13, "characterAtIndex:", v147 + 1)}];

        v17 = v136;
        if (v71)
        {
          v72 = sub_100051B24(v145, @"UnicodeHex.Alternate2.", @"VOTOutputPunctuation", v139);
          v73 = v128;
LABEL_97:

          v128 = v72;
        }
      }

      v37 = v122;
      v49 = v145;
      goto LABEL_99;
    }

    if ([qword_1001FEB68 characterIsMember:v145])
    {
      if (!v133)
      {
        if (v145 == 38 || v145 == 44)
        {
          v37 = v122;
          goto LABEL_104;
        }

        goto LABEL_55;
      }

      v50 = [v133 basePunctuationUUID];
      if (![v50 isEqual:AXSSVoiceOverPunctuationGroupSome])
      {
        goto LABEL_83;
      }

      v51 = v145;
      if (v145 == 44)
      {
        v17 = v136;
        goto LABEL_83;
      }

      v52 = v51 == 38;
      v17 = v136;
      if (!v52)
      {
LABEL_55:
        v53 = v13;
        v113 = v43;
        v115 = [v13 length];
        v54 = v147;
        v55 = v147 - 1;
        if (v147 < 1)
        {
          v60 = 0;
        }

        else
        {
          if (v55 >= 2)
          {
            v56 = 2;
          }

          else
          {
            v56 = v147 - 1;
          }

          do
          {
            v57 = [v134 characterIsMember:{objc_msgSend(v53, "characterAtIndex:", v55)}];
            v59 = v56-- != 0;
            if (!v57)
            {
              break;
            }

            --v55;
          }

          while (v59);
          v60 = v57 ^ 1;
          v54 = v147;
        }

        if (v54 + 1 < v115)
        {
          v61 = 0;
          while (([v134 characterIsMember:{objc_msgSend(v53, "characterAtIndex:", v54 + 1)}] & 1) != 0 || v54 == v147 && objc_msgSend(v53, "characterAtIndex:", v54 + 1) == 44)
          {
            if (v61 <= 1)
            {
              ++v61;
              v62 = v54 + 2;
              ++v54;
              if (v62 < v115)
              {
                continue;
              }
            }

            goto LABEL_74;
          }

          goto LABEL_81;
        }

LABEL_74:
        if (v145 != 46 || v115 <= 2)
        {
          v64 = v60;
        }

        else
        {
          v64 = 1;
        }

        if (v64)
        {
LABEL_81:
          v13 = v53;
          v17 = v136;
          v10 = v121;
          v43 = v113;
          goto LABEL_84;
        }

        v43 = v113;
        v50 = v128;
        v128 = v113;
        v13 = v53;
        v17 = v136;
        v10 = v121;
LABEL_83:
      }
    }

LABEL_84:
    v49 = v145;
    goto LABEL_85;
  }

LABEL_157:
  [(VOTOutputSpeechComponent *)v135 _replaceRepeatedEmoji:v17];
  v97 = v140;
  if (v140)
  {
    v138 = v13;
    v98 = [AXAttributedString axAttributedStringWithString:v17];
    v141 = 0u;
    v142 = 0u;
    v143 = 0u;
    v144 = 0u;
    v99 = v140;
    v100 = [v99 countByEnumeratingWithState:&v141 objects:v148 count:16];
    if (v100)
    {
      v101 = v100;
      v102 = *v142;
      do
      {
        for (i = 0; i != v101; i = i + 1)
        {
          if (*v142 != v102)
          {
            objc_enumerationMutation(v99);
          }

          v104 = *(*(&v141 + 1) + 8 * i);
          v105 = [v104 objectForKey:@"_VORangeValue"];
          v106 = [v105 rangeValue];
          v108 = v107;

          [v98 setAttributes:v104 withRange:{v106, v108}];
        }

        v101 = [v99 countByEnumeratingWithState:&v141 objects:v148 count:16];
      }

      while (v101);
    }

    v109 = v98;
    v17 = v136;
    v13 = v138;
    v110 = v133;
    v97 = v140;
  }

  else
  {
    v109 = v17;
    v110 = v133;
  }

  return v109;
}

- (void)_replaceRepeatedEmoji:(id)a3
{
  v3 = a3;
  [v3 length];
  v17 = 0;
  v18 = &v17;
  v19 = 0x2020000000;
  v20 = 0;
  v16[0] = 0;
  v16[1] = v16;
  v16[2] = 0x3010000000;
  v16[4] = 0;
  v16[5] = 0;
  v16[3] = &unk_10017883E;
  v15[0] = 0;
  v15[1] = v15;
  v15[2] = 0x2020000000;
  v15[3] = 0;
  v14[0] = 0;
  v14[1] = v14;
  v14[2] = 0x2020000000;
  v14[3] = 0;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_100035C08;
  v9[3] = &unk_1001C80F0;
  v11 = v15;
  v12 = v14;
  v13 = v16;
  v4 = v3;
  v10 = v4;
  v5 = objc_retainBlock(v9);
  v6 = [v4 copy];
  v7 = v5;
  CEMEnumerateEmojiTokensInStringWithBlock();
  (v7[2])(v7, v18[3]);
  v8 = v18[3];
  if (v8)
  {
    CFRelease(v8);
    v18[3] = 0;
  }

  _Block_object_dispose(v14, 8);
  _Block_object_dispose(v15, 8);
  _Block_object_dispose(v16, 8);
  _Block_object_dispose(&v17, 8);
}

- (BOOL)_replaceRepeatedPuntuationAndEmoji:(id)a3 newString:(id)a4 charReplacementString:(id)a5 charSequence:(id)a6 charIndex:(int64_t *)a7 speakPunctuationCounts:(BOOL)a8 languageCode:(id)a9
{
  v9 = a8;
  v15 = a3;
  v16 = a4;
  v17 = a5;
  v18 = a6;
  v19 = a9;
  v36 = self;
  if ([v18 length] == 1)
  {
    v20 = [v18 characterAtIndex:0];
  }

  else
  {
    v20 = 0;
  }

  v21 = [v16 length];
  if (![v15 characterIsMember:v20])
  {
    goto LABEL_13;
  }

  v37 = v19;
  v22 = *a7 + 1;
  if (v22 >= v21)
  {
    v23 = 1;
  }

  else
  {
    v34 = v21 - *a7;
    v23 = 1;
    while ([v16 characterAtIndex:v22] == v20)
    {
      ++v23;
      if (v21 == ++v22)
      {
        v23 = v34;
        break;
      }
    }
  }

  v19 = v37;
  if (v23 > 2 || v9)
  {
    if (v23 == 3 && v20 == 46 && ((sub_100051B24(8230, @"UnicodeHex.", @"VOTOutputPunctuation", v37), (v25 = objc_claimAutoreleasedReturnValue()) != 0) || ([NSString stringWithUnichar:8230], (v25 = objc_claimAutoreleasedReturnValue()) != 0)) || (sub_100051C28(v20, @"UnicodeHex.", @"VOTOutputPunctuation", v37, v23), (v25 = objc_claimAutoreleasedReturnValue()) != 0))
    {
      v26 = v25;
    }

    else
    {
      v27 = [(VOTOutputSpeechComponent *)v36 currentAllPunctuationTable];
      v28 = [v27 objectForIndex:v20];

      if (!v28)
      {
        v29 = [v16 substringWithRange:{*a7, 1}];
        v28 = [NSString stringWithFormat:@"%@", v29];
      }

      v35 = sub_1000511CC(off_1001FDDD0, @"repeat.filter", 0);
      v30 = [NSNumber numberWithInteger:v23];
      AXFormatNumber();
      v32 = v31 = v28;
      v26 = [NSString stringWithFormat:v35, v32, v31];
    }

    [v17 appendString:{@", "}];
    [v17 appendString:v26];
    [v17 appendString:{@", "}];
    *a7 += v23;

    v24 = 1;
    v19 = v37;
  }

  else
  {
LABEL_13:
    v24 = 0;
  }

  return v24;
}

- (id)_parseNumberInString:(id)a3 beforeCharacterAtIndex:(int64_t)a4 numberRange:(_NSRange *)a5
{
  v7 = a3;
  v8 = [v7 length];
  v9 = +[NSMutableCharacterSet decimalDigitCharacterSet];
  v10 = +[NSCharacterSet whitespaceCharacterSet];
  v20 = v9;
  [v9 addCharactersInString:@"-.."];
  v11 = +[NSMutableString string];
  v12 = a4;
  do
  {
    v13 = v12;
    v14 = v12-- < 1;
  }

  while (!v14 && v8 >= a4 && ([v10 characterIsMember:{objc_msgSend(v7, "characterAtIndex:", v12)}] & 1) != 0);
  if (v13 >= 1 && v13 <= v8)
  {
    v15 = v13 - 1;
    do
    {
      if (![v20 characterIsMember:{objc_msgSend(v7, "characterAtIndex:", v15)}])
      {
        break;
      }

      v16 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%C", [v7 characterAtIndex:v15]);
      [v11 insertString:v16 atIndex:0];

      v14 = v15-- < 1;
      if (v14)
      {
        break;
      }
    }

    while (v13 - 1 <= v8);
    v13 = v15 + 1;
  }

  a5->location = v13;
  a5->length = a4 - v13;
  if ([v11 length])
  {
    [v11 replaceOccurrencesOfString:@"." withString:@"." options:0 range:{0, objc_msgSend(v11, "length")}];
    v17 = objc_alloc_init(NSNumberFormatter);
    v18 = [v17 numberFromString:v11];
  }

  else
  {
    v18 = 0;
  }

  return v18;
}

- (id)_determineVoiceSelection:(id)a3 languageCode:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = dispatch_semaphore_create(0);
  v23 = 0;
  v24 = &v23;
  v25 = 0x3032000000;
  v26 = sub_10002C4F4;
  v27 = sub_10002C504;
  v28 = 0;
  v8 = [VOTSharedWorkspace votSettings];
  v17 = _NSConcreteStackBlock;
  v18 = 3221225472;
  v19 = sub_100036640;
  v20 = &unk_1001C7E98;
  v22 = &v23;
  v9 = v7;
  v21 = v9;
  [v8 voiceSelectionForAction:v5 languageCode:v6 completionHandler:&v17];

  dispatch_semaphore_wait(v9, 0xFFFFFFFFFFFFFFFFLL);
  v10 = [v24[5] voiceId];
  v11 = [TTSSpeechSynthesizer voiceForIdentifier:v10];
  v12 = [v11 language];

  [v5 setObject:v24[5] forVariant:89];
  [v5 setObject:v12 forVariant:17];
  [v5 setObject:v10 forVariant:74];
  if ([VOTSharedWorkspace inUnitTestMode])
  {
    v13 = [VOTSharedWorkspace unitTestSpeechRate];

    if (v13)
    {
      v14 = [VOTSharedWorkspace unitTestSpeechRate];
      [v5 setObject:v14 forVariant:39];
    }
  }

  v15 = v24[5];

  _Block_object_dispose(&v23, 8);

  return v15;
}

- (id)_determineVoiceIdentifier:(id)a3 languageCode:(id)a4
{
  v4 = [(VOTOutputSpeechComponent *)self _determineVoiceSelection:a3 languageCode:a4];
  v5 = [v4 voiceId];

  return v5;
}

- (id)_determineSpeechSourceForAction:(id)a3
{
  v3 = [(VOTOutputComponent *)self determineActivityForAction:a3];
  v4 = v3;
  if (v3)
  {
    v5 = [v3 uuid];
    v6 = [NSString stringWithFormat:@"VOActivity_%@", v5];
  }

  else
  {
    v6 = AXSpeechSourceKeyVoiceOver;
  }

  return v6;
}

- (id)_determinePunctuationGroupForAction:(id)a3 isDefault:(BOOL *)a4
{
  v6 = a3;
  v7 = VOTSharedWorkspace;
  v8 = +[AXSettings sharedInstance];
  v9 = [v8 voiceOverPunctuationGroup];
  v10 = [v7 punctuationGroupForUUID:v9];

  v11 = [(VOTOutputComponent *)self determineActivityForAction:v6];
  v12 = v11;
  if (v11)
  {
    v13 = [v11 punctuationGroup];

    if (v13)
    {
      v14 = VOTSharedWorkspace;
      v15 = [v12 punctuationGroup];
      v16 = [v14 punctuationGroupForUUID:v15];

      v10 = v16;
    }
  }

  if (!v10)
  {
    v10 = [v6 objectForVariant:30];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      if (v10)
      {
        goto LABEL_5;
      }
    }

    else
    {
    }

    v18 = [v6 objectForVariant:79];
    if ([v18 isEqualToString:AXSSVoiceOverTextualContextFileSystem])
    {
      v10 = [(VOTOutputSpeechComponent *)self fileSystemPunctuationGroup];

      if (v10)
      {
        goto LABEL_5;
      }
    }

    else
    {
    }

    v10 = [VOTSharedWorkspace defaultPunctuationGroup];
    if (a4)
    {
      *a4 = 1;
    }
  }

LABEL_5:

  return v10;
}

- (id)_urlRangesInString:(id)a3 languageCode:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = +[NSMutableArray array];
  v9 = qword_1001FEB80;
  if (!qword_1001FEB80)
  {
    v10 = [NSRegularExpression regularExpressionWithPattern:@"(http:\\/\\/|www\\.)?(\\S*)\\.(com|net|org|edu|gov|mil|uk|fi)(\\/\\S*)?\\b" options:1 error:0];
    v11 = qword_1001FEB80;
    qword_1001FEB80 = v10;

    v9 = qword_1001FEB80;
  }

  v12 = [v9 matchesInString:v6 options:0 range:{0, objc_msgSend(v6, "length")}];
  if ([v12 count])
  {
    v38 = 0u;
    v39 = 0u;
    v36 = 0u;
    v37 = 0u;
    v13 = v12;
    v14 = [v13 countByEnumeratingWithState:&v36 objects:v41 count:16];
    if (v14)
    {
      v15 = v14;
      v16 = v7;
      v17 = *v37;
      do
      {
        for (i = 0; i != v15; i = i + 1)
        {
          if (*v37 != v17)
          {
            objc_enumerationMutation(v13);
          }

          v19 = [*(*(&v36 + 1) + 8 * i) range];
          v21 = [NSValue valueWithRange:v19, v20];
          [v8 addObject:v21];
        }

        v15 = [v13 countByEnumeratingWithState:&v36 objects:v41 count:16];
      }

      while (v15);
      v7 = v16;
    }
  }

  else
  {
    v13 = [(VOTOutputSpeechComponent *)self _localeSpecificURLRegexForLanguageCode:v7];
    if (v13)
    {
      v31 = v7;
      v22 = [v13 matchesInString:v6 options:0 range:{0, objc_msgSend(v6, "length")}];
      v32 = 0u;
      v33 = 0u;
      v34 = 0u;
      v35 = 0u;
      v23 = [v22 countByEnumeratingWithState:&v32 objects:v40 count:16];
      if (v23)
      {
        v24 = v23;
        v25 = *v33;
        do
        {
          for (j = 0; j != v24; j = j + 1)
          {
            if (*v33 != v25)
            {
              objc_enumerationMutation(v22);
            }

            v27 = [*(*(&v32 + 1) + 8 * j) range];
            v29 = [NSValue valueWithRange:v27, v28];
            [v8 addObject:v29];
          }

          v24 = [v22 countByEnumeratingWithState:&v32 objects:v40 count:16];
        }

        while (v24);
      }

      v7 = v31;
    }
  }

  return v8;
}

- (void)_replacePunctuation:(id)a3 withAction:(id)a4 languageCode:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [v9 objectForVariant:55];
  v35 = [v11 BOOLValue];

  v12 = [v9 objectForVariant:56];
  v34 = [v12 BOOLValue];

  v13 = [v9 objectForVariant:50];
  v33 = [v13 BOOLValue];

  v14 = [v9 objectForVariant:65];
  v32 = [v14 BOOLValue];

  v29 = v9;
  v28 = [(VOTOutputSpeechComponent *)self _determinePunctuationGroupForAction:v9 isDefault:0];
  v36 = v10;
  v37 = v8;
  [(VOTOutputSpeechComponent *)self _urlRangesInString:v8 languageCode:v10];
  v38 = 0u;
  v39 = 0u;
  v40 = 0u;
  obj = v41 = 0u;
  v15 = [obj countByEnumeratingWithState:&v38 objects:v42 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = 0;
    v31 = *v39;
    do
    {
      v18 = 0;
      do
      {
        if (*v39 != v31)
        {
          objc_enumerationMutation(obj);
        }

        v19 = [*(*(&v38 + 1) + 8 * v18) rangeValue];
        v21 = v20;
        v22 = [v37 substringWithRange:{&v19[v17], v20}];
        v23 = [(VOTOutputSpeechComponent *)self fileSystemPunctuationGroup];
        LOBYTE(v27) = v32;
        v24 = [(VOTOutputSpeechComponent *)self _replacePunctuation:v22 punctuationGroup:v23 hasMathContext:v34 hasPhoneContext:v35 isText:v33 replaceCommas:1 languageCode:v36 speakPunctuationCounts:v27];

        [v37 replaceCharactersInRange:&v19[v17] withString:{v21, v24}];
        v25 = [v24 length];
        v17 = v25 - [v22 length];

        v18 = v18 + 1;
      }

      while (v16 != v18);
      v16 = [obj countByEnumeratingWithState:&v38 objects:v42 count:16];
    }

    while (v16);
  }

  LOBYTE(v27) = v32;
  v26 = -[VOTOutputSpeechComponent _replacePunctuation:punctuationGroup:hasMathContext:hasPhoneContext:isText:replaceCommas:languageCode:speakPunctuationCounts:](self, "_replacePunctuation:punctuationGroup:hasMathContext:hasPhoneContext:isText:replaceCommas:languageCode:speakPunctuationCounts:", v37, v28, v34, v35, v33, [v28 isAllPunctuationGroup], v36, v27);
  [v37 setString:v26];
}

- (void)_removeRunsOfNewLines:(id)a3
{
  v12 = a3;
  if ([v12 rangeOfString:@"\n\n\n"] != 0x7FFFFFFFFFFFFFFFLL)
  {
    v3 = [v12 length];
    v4 = objc_alloc_init(NSMutableString);
    v5 = v12;
    if (v3 >= 1)
    {
      for (i = 0; i < v3; ++i)
      {
        if ([v5 characterAtIndex:i] == 10)
        {
          v7 = 1;
          do
          {
            v8 = i++;
            if (i >= v3)
            {
              if (v7 <= 1)
              {
                v11 = @"\n";
              }

              else
              {
                v11 = @"\n\n";
              }

              [v4 appendString:v11];
              goto LABEL_18;
            }

            ++v7;
          }

          while ([v12 characterAtIndex:i] == 10);
          if (v7 - 1 <= 1)
          {
            v9 = @"\n";
          }

          else
          {
            v9 = @"\n\n";
          }

          [v4 appendString:v9];
          if (i >= v3)
          {
            i = v8 + 1;
            goto LABEL_18;
          }
        }

        v10 = [v12 substringWithRange:{i, 1}];
        [v4 appendFormat:@"%@", v10];

LABEL_18:
        v5 = v12;
      }
    }

    [v5 setString:v4];
  }
}

- (void)_replaceEmoticonsWithText:(id)a3
{
  v4 = a3;
  v5 = +[NSCharacterSet whitespaceAndNewlineCharacterSet];
  emoticonReplacements = self->_emoticonReplacements;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_100037140;
  v9[3] = &unk_1001C8140;
  v10 = v4;
  v11 = v5;
  v7 = v5;
  v8 = v4;
  [(NSDictionary *)emoticonReplacements enumerateKeysAndObjectsUsingBlock:v9];
}

- (void)_processEmoji:(id)a3 action:(id)a4 rate:(float)a5
{
  v8 = a3;
  v9 = a4;
  v21 = v8;
  v10 = [v9 objectForVariant:17];
  v11 = [v9 objectForVariant:74];
  v12 = [v9 objectForVariant:58];
  v13 = [v12 BOOLValue];

  if (v13)
  {
    v14 = 0;
  }

  else
  {
    v15 = +[AXSettings sharedInstance];
    v14 = [v15 voiceOverVerbosityEmojiSuffixEnabled];
  }

  v16 = [v9 objectForVariant:80];
  v17 = [v16 BOOLValue] | v13;

  if (v17)
  {
    *&v18 = a5;
    v19 = [(VOTOutputSpeechComponent *)self pauseStringForType:6 voiceIdentifier:v11 rate:v18];
    v20 = [TTSEmojiUtilities stringByReplacingEmojiCharactersWithEmojiDescriptions:v21 stringForPauses:v19 language:v10 rangeReplacements:0 appendEmojiSuffix:v14];
  }

  else
  {
    v20 = [TTSEmojiUtilities stringByRemovingEmojiCharacters:v21];
  }

  if (([v21 isEqualToString:v20] & 1) == 0)
  {
    [v9 removeObjectForVariant:28];
    [v21 setString:v20];
  }
}

- (BOOL)_makeSubstitution:(id)a3 withString:(id)a4 punctuationGroup:(id)a5
{
  v7 = a3;
  v8 = a4;
  v32 = a5;
  v9 = [v7 isReplacementTextAllPunctuation];
  v10 = [v7 phonemes];
  if ([v10 length])
  {
  }

  else
  {
    v11 = [v7 replacementString];
    v12 = [v11 length];

    if (!v12)
    {
      goto LABEL_11;
    }
  }

  v30 = [(VOTOutputSpeechComponent *)self baseTableForPunctuationGroup:v32];
  v29 = [VOTSharedWorkspace selectedLanguage];
  v28 = [VOTSharedWorkspace systemSpokenLanguage];
  v13 = [v8 length];
  v14 = 0;
  v15 = v13;
  do
  {
    v16 = [v7 originalString];
    v17 = [v8 rangeOfString:v16 options:objc_msgSend(v7 range:{"ignoreCase"), v14, v15}];
    v19 = v18;

    if (!v19)
    {
      break;
    }

    if (v9)
    {
      v20 = [v7 replacementString];
      v21 = [v20 length];

      if (v21 == 1)
      {
        v33 = 0;
        v22 = [v7 replacementString];
        [v22 getCharacters:&v33];

        v23 = [v7 replacementString];
        v24 = [v7 languages];
        v25 = [v24 anyObject];
        v26 = [(VOTOutputSpeechComponent *)self punctuationReplacement:v23 withGroup:v32 baseTable:v30 languageCode:v25 selectedLanguage:v29 spokenLanguage:v28];
      }
    }

    v14 = &v17[v19];
    v15 = (v13 - v14);
  }

  while (v17 != 0x7FFFFFFFFFFFFFFFLL);

LABEL_11:
  return 0;
}

- (void)_replaceUserSubstitutions:(id)a3 action:(id)a4
{
  v21 = a3;
  v20 = a4;
  v6 = [v20 objectForVariant:70];
  v7 = [v6 BOOLValue];

  if ((v7 & 1) == 0)
  {
    v8 = [v20 objectForVariant:30];
    v9 = [v20 objectForVariant:43];
    if (!v8)
    {
      v10 = VOTSharedWorkspace;
      v11 = +[AXSettings sharedInstance];
      v12 = [v11 voiceOverPunctuationGroup];
      v8 = [v10 punctuationGroupForUUID:v12];
    }

    v24 = 0u;
    v25 = 0u;
    v22 = 0u;
    v23 = 0u;
    v13 = self->_userSubstitutions;
    v14 = [(NSArray *)v13 countByEnumeratingWithState:&v22 objects:v26 count:16];
    if (v14)
    {
      v15 = *v23;
      do
      {
        for (i = 0; i != v14; i = i + 1)
        {
          if (*v23 != v15)
          {
            objc_enumerationMutation(v13);
          }

          v17 = *(*(&v22 + 1) + 8 * i);
          if ([v17 appliesToAllApps])
          {
            v18 = [v17 bundleIdentifiers];
            v19 = [v18 containsObject:v9];

            if (v19)
            {
              [(VOTOutputSpeechComponent *)self _makeSubstitution:v17 withString:v21 punctuationGroup:v8];
            }
          }
        }

        v14 = [(NSArray *)v13 countByEnumeratingWithState:&v22 objects:v26 count:16];
      }

      while (v14);
    }
  }
}

- (float)_determineVolume:(id)a3
{
  v3 = [(VOTOutputComponent *)self determineActivityForAction:a3];
  v4 = [v3 volume];

  if (v4)
  {
    v5 = [v3 volume];
    [v5 floatValue];
    v7 = v6;
  }

  else
  {
    v7 = 3.4028e38;
  }

  return v7;
}

- (id)_stringForNormalText:(id)a3 action:(id)a4 allowPausingAtBoundaries:(BOOL)a5 ignoreLeadingCommas:(BOOL)a6
{
  v6 = a6;
  v100 = a5;
  v9 = a3;
  v10 = a4;
  v11 = [v10 objectForVariant:74];
  v12 = [v10 objectForVariant:89];
  v13 = [v12 rate];
  v14 = v13;
  if (v13)
  {
    v15 = v13;
  }

  else
  {
    v16 = [v10 objectForVariant:39];
    v17 = v16;
    v18 = &off_1001D9990;
    if (v16)
    {
      v18 = v16;
    }

    v15 = v18;
  }

  v98 = v15;
  [v15 floatValue];
  v20 = v19;
  if ([v9 length])
  {
    v21 = VOTLogSpeech();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
    {
      sub_10012988C();
    }

    v22 = [v9 mutableCopy];
    v101 = v9;
    v23 = [v10 objectForVariant:45];
    v99 = [v23 BOOLValue];

    v24 = [v10 objectForVariant:49];
    v94 = [v24 BOOLValue];

    v25 = [v10 objectForVariant:46];
    v91 = [v25 BOOLValue];

    v26 = [v10 objectForVariant:48];
    v97 = [v26 BOOLValue];

    v27 = [v10 objectForVariant:47];
    v93 = [v27 BOOLValue];

    v28 = [v10 objectForVariant:60];
    v92 = [v28 BOOLValue];

    v29 = [v10 objectForVariant:44];
    v30 = [v29 BOOLValue];

    v31 = [v10 objectForVariant:50];
    v96 = [v31 BOOLValue];

    v32 = [v10 objectForVariant:59];
    if ([v32 BOOLValue])
    {
      v95 = 1;
    }

    else
    {
      v50 = [v10 objectForVariant:27];
      v95 = [v50 BOOLValue];
    }

    v51 = [v10 objectForVariant:31];
    v52 = [v51 BOOLValue];

    v53 = [v10 objectForVariant:76];
    v54 = [v53 BOOLValue];

    v56 = [v10 objectForVariant:17];
    if ((v6 | v30))
    {
      v55 = [(__CFString *)v22 rangeOfString:@", "];
      if (!v55)
      {
        [(__CFString *)v22 replaceCharactersInRange:0 withString:v57, &stru_1001CBF90];
      }
    }

    v58 = [v10 outputVariants];
    currentActionVariants = self->_currentActionVariants;
    self->_currentActionVariants = v58;

    v60 = [v10 objectForVariant:51];
    v61 = [v60 BOOLValue];

    if (v61)
    {
      v62 = [(VOTOutputSpeechComponent *)self _secureTextDescription:v101];

      v101 = v62;
      [(__CFString *)v22 replaceCharactersInRange:0 withString:[(__CFString *)v22 length], v62];
    }

    if (v52)
    {
      [(VOTOutputSpeechComponent *)self _speakAllDigits:v22];
    }

    [(VOTOutputSpeechComponent *)self _replaceUserSubstitutions:v22 action:v10];
    [(VOTOutputSpeechComponent *)self _replaceEmoticonsWithText:v22];
    if ((v54 & 1) == 0)
    {
      [(VOTOutputSpeechComponent *)self _replacePunctuation:v22 withAction:v10 languageCode:v56];
    }

    [(VOTOutputSpeechComponent *)self _formatNumbers:v22 action:v10];
    [(VOTOutputSpeechComponent *)self _formatUSHeight:v22 voiceIdentifier:v11];
    *&v63 = v20;
    [(VOTOutputSpeechComponent *)self _formatIPAddress:v22 voiceIdentifier:v11 rate:v63];
    *&v64 = v20;
    [(VOTOutputSpeechComponent *)self _formatEthernetMacAddress:v22 voiceIdentifier:v11 rate:v64];
    if (((v99 | v30 | v97 | v92 | v93) & 1) == 0)
    {
      v65 = [v101 mutableCopy];
      *&v66 = v20;
      [(VOTOutputSpeechComponent *)self _formatDetectedDates:v65 voiceIdentifier:v11 languageCode:v56 rate:v66];
      if (([v65 isEqualToString:v101] & 1) == 0)
      {
        *&v67 = v20;
        [(VOTOutputSpeechComponent *)self _formatDetectedDates:v22 voiceIdentifier:v11 languageCode:v56 rate:v67];
      }
    }

    if (([v56 hasPrefix:@"zh"] & 1) == 0)
    {
      [(VOTOutputSpeechComponent *)self _formatJapaneseYen:v22];
    }

    [(VOTOutputSpeechComponent *)self _applyTransliteration:v22 languageCode:v56];
    *&v68 = v20;
    [(VOTOutputSpeechComponent *)self _processEmoji:v22 action:v10 rate:v68];
    [(VOTOutputSpeechComponent *)self _applyCamelCaseSeparation:v22];
    v103 = 0;
    if (v30)
    {
      v70 = +[NSCharacterSet whitespaceCharacterSet];
      v71 = [(__CFString *)v22 stringByTrimmingCharactersInSet:v70];

      [(__CFString *)v22 setString:v71];
      v72 = objc_allocWithZone(NSArray);
      v73 = [NSValue valueWithRange:0, [(__CFString *)v22 length]];
      v74 = [v72 initWithObjects:{v73, 0}];

      *&v75 = v20;
      [(VOTOutputSpeechComponent *)self _applyTelephoneFormatting:v22 withRanges:v74 languageCode:v56 voiceIdentifier:v11 rate:v75];
    }

    else
    {
      if (((v97 | v93 | v92) & 1) == 0)
      {
        if (((v99 | v94) & 1) == 0)
        {
          *&v69 = v20;
          [(VOTOutputSpeechComponent *)self _formatTimeDuration:v22 didMatch:&v103 voiceIdentifier:v11 rate:v69];
        }

        goto LABEL_42;
      }

      v71 = [v101 mutableCopy];
      [(VOTOutputSpeechComponent *)self _formatExplicitTimeDuration:v71 isMMSS:v97 languageCode:v56];
      v74 = [(__CFString *)v22 mutableCopy];
      [(VOTOutputSpeechComponent *)self _formatExplicitTimeDuration:v74 isMMSS:v97 languageCode:v56];
      if (v71 && [v74 containsString:v71])
      {
        v76 = v74;

        v22 = v76;
      }

      v103 = 1;
    }

LABEL_42:
    if (v99 && [(__CFString *)v22 rangeOfString:@"."]!= 0x7FFFFFFFFFFFFFFFLL)
    {
      [(__CFString *)v22 replaceOccurrencesOfString:@"." withString:@":" options:0 range:0, [(__CFString *)v22 length]];
    }

    if ((v94 & 1) == 0 && ((v103 | v99 | v91 | v30) & 1) == 0)
    {
      *&v69 = v20;
      [(VOTOutputSpeechComponent *)self _formatTelephoneNumber:v22 languageCode:v56 voiceIdentifier:v11 rate:v69];
    }

    [(VOTOutputSpeechComponent *)self _applyTextualWorkarounds:v22];
    if ((v96 & 1) == 0)
    {
      if (([v56 isEqual:@"he-IL"] & 1) == 0)
      {
        *&v78 = v20;
        [(VOTOutputSpeechComponent *)self _insertLongerPausesForSymbol:@"/" withText:v22 allowPausingAtBoundaries:v100 onlyApplyWhenFollowedBySpace:0 languageCode:v56 voiceIdentifier:v11 rate:v78];
      }

      *&v78 = v20;
      [(VOTOutputSpeechComponent *)self _insertLongerPausesForSymbol:@" withText:" allowPausingAtBoundaries:v22 onlyApplyWhenFollowedBySpace:v100 languageCode:0 voiceIdentifier:v56 rate:v11, v78];
      *&v79 = v20;
      [(VOTOutputSpeechComponent *)self _insertLongerPausesForSymbol:@"·" withText:v22 allowPausingAtBoundaries:v100 onlyApplyWhenFollowedBySpace:0 languageCode:v56 voiceIdentifier:v11 rate:v79];
      if ((v94 & 1) == 0)
      {
        *&v77 = v20;
        [(VOTOutputSpeechComponent *)self _insertLongerPausesForSymbol:@"." withText:v22 allowPausingAtBoundaries:v100 onlyApplyWhenFollowedBySpace:1 languageCode:v56 voiceIdentifier:v11 rate:v77];
      }
    }

    if (v95)
    {
      [(VOTOutputSpeechComponent *)self _removeRunsOfNewLines:v22];
    }

    if ((v96 & 1) == 0)
    {
      *&v77 = v20;
      [(VOTOutputSpeechComponent *)self _insertLongerPausesForSymbol:@"\n\n" withText:v22 allowPausingAtBoundaries:v100 onlyApplyWhenFollowedBySpace:0 languageCode:v56 voiceIdentifier:v11 rate:v77];
      v80 = v56;
      v82 = v80;
      if (!v80)
      {
        v82 = [VOTSharedWorkspace systemSpokenLanguage];
      }

      *&v81 = v20;
      [(VOTOutputSpeechComponent *)self _insertLongerPausesForSymbol:@"?" withText:v22 allowPausingAtBoundaries:v100 onlyApplyWhenFollowedBySpace:0 languageCode:v80 voiceIdentifier:v11 rate:v81];
      *&v83 = v20;
      [(VOTOutputSpeechComponent *)self _insertLongerPausesForSymbol:@"\n" withText:v22 allowPausingAtBoundaries:v100 onlyApplyWhenFollowedBySpace:0 languageCode:v80 voiceIdentifier:v11 rate:v83];
      *&v84 = v20;
      [(VOTOutputSpeechComponent *)self _insertLongerPausesForSymbol:@"\r" withText:v22 allowPausingAtBoundaries:v100 onlyApplyWhenFollowedBySpace:0 languageCode:v80 voiceIdentifier:v11 rate:v84];
    }

    if (v95)
    {
      v102 = 8212;
      v85 = [NSString stringWithCharacters:&v102 length:1];
      *&v86 = v20;
      [(VOTOutputSpeechComponent *)self _insertLongerPausesForSymbol:v85 withText:v22 allowPausingAtBoundaries:v100 onlyApplyWhenFollowedBySpace:0 languageCode:v56 voiceIdentifier:v11 rate:v86];

      *&v87 = v20;
      [(VOTOutputSpeechComponent *)self _insertLongerPausesForSymbol:@"!" withText:v22 allowPausingAtBoundaries:v100 onlyApplyWhenFollowedBySpace:0 languageCode:v56 voiceIdentifier:v11 rate:v87];
      *&v88 = v20;
      [(VOTOutputSpeechComponent *)self _insertLongerPausesForSymbol:@"\t" withText:v22 allowPausingAtBoundaries:v100 onlyApplyWhenFollowedBySpace:0 languageCode:v56 voiceIdentifier:v11 rate:v88];
    }

    v9 = v101;
    goto LABEL_63;
  }

  v33 = [v10 objectForVariant:38];
  [v33 floatValue];
  v35 = v34;

  if (v35 <= 0.0)
  {
    v22 = 0;
LABEL_63:
    v48 = v98;
    goto LABEL_64;
  }

  [(VOTOutputSpeechComponent *)self _ttsVoiceTypeForPauseCalculationWithVoiceIdentifier:v11];
  *&v36 = v35;
  sub_10005057C(v36, v20);
  v38 = v37;
  *&v39 = v20;
  v40 = [(VOTOutputSpeechComponent *)self pauseStringForType:8 voiceIdentifier:v11 rate:v39];
  v47 = v40;
  v48 = v15;
  if (!v40 || (sub_10002A7C4(v40, @"%d", v41, v42, v43, v44, v45, v46, (v38 * 1000.0)), (v22 = objc_claimAutoreleasedReturnValue()) == 0))
  {
    v49 = VOTLogCommon();
    if (os_log_type_enabled(v49, OS_LOG_TYPE_ERROR))
    {
      sub_100129970();
    }

    v22 = &stru_1001CBF90;
  }

LABEL_64:
  v89 = VOTLogSpeech();
  if (os_log_type_enabled(v89, OS_LOG_TYPE_DEBUG))
  {
    sub_1001299D8();
  }

  return v22;
}

- (void)_speakAsNormalText:(id)a3
{
  v4 = a3;
  v8 = [v4 string];
  v5 = [v4 objectForVariant:66];
  v6 = [v5 BOOLValue];

  v7 = [(VOTOutputSpeechComponent *)self _stringForNormalText:v8 action:v4 allowPausingAtBoundaries:0 ignoreLeadingCommas:v6];
  [v4 setString:v7];
}

- (void)_speakAsMixOfLiteralAndNormalText:(id)a3 withLiteralRanges:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v6 string];
  v9 = +[NSMutableString string];
  v33 = 0;
  v34 = &v33;
  v35 = 0x3010000000;
  v37 = 0;
  v38 = 0;
  v36 = &unk_10017883E;
  v10 = [v6 objectForVariant:66];
  v11 = [v10 BOOLValue];

  v23 = _NSConcreteStackBlock;
  v24 = 3221225472;
  v25 = sub_10003892C;
  v26 = &unk_1001C81A8;
  v31 = &v33;
  v12 = v8;
  v27 = v12;
  v28 = self;
  v13 = v6;
  v29 = v13;
  v32 = v11;
  v14 = v9;
  v30 = v14;
  [v7 enumerateRangesUsingBlock:&v23];
  v15 = v34[4];
  v16 = v34[5];
  v17 = [v12 length];
  v18 = (v16 + v15);
  v19 = (v17 - v18);
  if (v17 != v18)
  {
    v20 = [v12 substringWithRange:{v18, v19}];
    if (v18)
    {
      v21 = 0;
    }

    else
    {
      v21 = v11;
    }

    v22 = [(VOTOutputSpeechComponent *)self _stringForNormalText:v20 action:v13 allowPausingAtBoundaries:1 ignoreLeadingCommas:v21];
    [v14 appendString:v22];
  }

  [v13 setString:{v14, v19}];

  _Block_object_dispose(&v33, 8);
}

- (void)_configureSynthesizerWithPhonemeSubstitutionsFromAction:(id)a3
{
  v4 = a3;
  v5 = [v4 string];
  v6 = +[NSMutableArray array];
  v7 = [v4 string];
  v8 = [v7 isAXAttributedString];

  if (v8)
  {
    v34[0] = _NSConcreteStackBlock;
    v34[1] = 3221225472;
    v34[2] = sub_100038DC8;
    v34[3] = &unk_1001C81D0;
    v35 = v6;
    [v5 enumerateAttributesUsingBlock:v34];
  }

  v9 = [v4 objectForVariant:78];
  if (v9)
  {
    v10 = v9;
    v11 = [v4 string];

    if (v11)
    {
      v12 = [v4 objectForVariant:78];
      [v6 addObject:v12];
    }
  }

  if ([v6 count])
  {
    v26 = v5;
    v27 = v4;
    v13 = objc_alloc_init(NSMutableArray);
    v30 = 0u;
    v31 = 0u;
    v32 = 0u;
    v33 = 0u;
    v14 = v6;
    v15 = [v14 countByEnumeratingWithState:&v30 objects:v36 count:16];
    if (v15)
    {
      v16 = v15;
      v17 = *v31;
      do
      {
        for (i = 0; i != v16; i = i + 1)
        {
          if (*v31 != v17)
          {
            objc_enumerationMutation(v14);
          }

          v19 = *(*(&v30 + 1) + 8 * i);
          v28[0] = _NSConcreteStackBlock;
          v28[1] = 3221225472;
          v28[2] = sub_100038E34;
          v28[3] = &unk_1001C81F8;
          v29 = v13;
          [v19 enumerateKeysAndObjectsUsingBlock:v28];
        }

        v16 = [v14 countByEnumeratingWithState:&v30 objects:v36 count:16];
      }

      while (v16);
    }

    transientSubstitutions = self->_transientSubstitutions;
    self->_transientSubstitutions = v13;
    v21 = v13;

    v22 = [(NSArray *)self->_userSubstitutions arrayByAddingObjectsFromArray:self->_transientSubstitutions];
    [(TTSSpeechSynthesizer *)self->_synthesizer setUserSubstitutions:v22];

    v23 = [(NSArray *)self->_userSubstitutions arrayByAddingObjectsFromArray:self->_transientSubstitutions];

    v24 = [(VOTOutputSpeechComponent *)self synthesizerForTelephonyMixin];
    [v24 setUserSubstitutions:v23];

    v5 = v26;
    v4 = v27;
  }

  else
  {
    v25 = self->_transientSubstitutions;
    if (v25)
    {
      self->_transientSubstitutions = 0;

      [(TTSSpeechSynthesizer *)self->_synthesizer setUserSubstitutions:self->_userSubstitutions];
    }
  }
}

- (void)_preprocessActionLanguageAndVoice:(id)a3
{
  v4 = a3;
  v5 = [v4 objectForIndex:14];
  v6 = [(VOTOutputComponent *)self determineLanguageForEvent:v4];

  if (![v6 length])
  {
    v7 = [v5 string];
    v8 = [(VOTOutputSpeechComponent *)self stringIsInSupportedCharacters:v7];

    if ((v8 & 1) == 0)
    {
      v9 = [v5 objectForVariant:28];
      v10 = [v9 BOOLValue];

      v11 = [v5 objectForVariant:83];
      v12 = [v11 BOOLValue];

      if ((v12 & 1) == 0)
      {
        v13 = [v5 string];
        v14 = sub_100051170(v13);

        if (v10 & 1 | !v14)
        {
          v15 = sub_1000511CC(off_1001FDDD0, @"unpronounceable", &stru_1001CBF90);
          v16 = [v5 string];
          v17 = [NSString stringWithFormat:@"%@, %@", v15, v16];

          v18 = VOTLogSpeech();
          if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
          {
            v19 = [v5 string];
            v20 = [v5 string];
            *buf = 138412546;
            v27 = v19;
            v28 = 1024;
            v29 = [v20 characterAtIndex:0];
            _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_INFO, "Unpronounceable string: %@ %d", buf, 0x12u);
          }

          [v5 setString:v17];
          [v5 removeObjectForVariant:28];
        }
      }
    }
  }

  if (![v6 length])
  {
    v21 = [VOTSharedWorkspace systemSpokenLanguage];

    if ([v21 hasPrefix:@"en"] && (+[NSLocale currentLocale](NSLocale, "currentLocale"), v22 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v22, "languageCode"), v23 = objc_claimAutoreleasedReturnValue(), v24 = objc_msgSend(v23, "hasPrefix:", @"en"), v23, v22, (v24 & 1) == 0))
    {

      v6 = 0;
    }

    else
    {
      v6 = v21;
    }
  }

  v25 = [(VOTOutputSpeechComponent *)self _determineVoiceSelection:v5 languageCode:v6];
}

- (void)_determineEmojiPreferenceForAction:(id)a3
{
  v4 = a3;
  v7 = [(VOTOutputComponent *)self determineActivityForAction:v4];
  v5 = [v7 speakEmojis];

  if (v5)
  {
    [v7 speakEmojis];
  }

  else
  {
    +[NSNumber numberWithInt:](NSNumber, "numberWithInt:", ([VOTSharedWorkspace emojiFeedback] >> 1) & 1);
  }
  v6 = ;
  [v4 setObject:v6 forVariant:80];
}

- (void)preprocessAction:(id)a3
{
  v48 = a3;
  v4 = [v48 objectForVariant:48];
  v5 = [v4 BOOLValue];

  v6 = [v48 objectForVariant:47];
  v7 = [v6 BOOLValue];

  v8 = [v48 objectForVariant:51];
  v9 = [v8 BOOLValue];

  v10 = [v48 objectForVariant:56];
  v11 = [v10 BOOLValue];

  v12 = [v48 objectForVariant:59];
  if ([v12 BOOLValue])
  {
    v13 = 1;
  }

  else
  {
    v14 = [v48 objectForVariant:27];
    v13 = [v14 BOOLValue];
  }

  [(VOTOutputSpeechComponent *)self _configureSynthesizerWithPhonemeSubstitutionsFromAction:v48];
  [(VOTOutputSpeechComponent *)self _determineEmojiPreferenceForAction:v48];
  v15 = [v48 objectForVariant:67];

  if (v15)
  {
    v16 = [v48 objectForVariant:67];
    v17 = CFGetTypeID(v16);
    if (v17 == AXUIElementGetTypeID())
    {
      v18 = [v48 objectForVariant:67];
      v19 = [AXUIElement uiElementWithAXElement:v18 cache:0];
    }

    else
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v19 = v16;
      }

      else
      {
        v19 = 0;
      }
    }

    v20 = [v19 stringWithAXAttribute:2006];
    if ([(__CFString *)v20 length])
    {
      v21 = v48;
      v22 = v20;
    }

    else
    {
      v22 = &stru_1001CBF90;
      v21 = v48;
    }

    [v21 setString:v22];
  }

  v23 = [objc_allocWithZone(AXIndexMap) init];
  [v23 setObject:v48 forIndex:14];
  [(VOTOutputSpeechComponent *)self _determineVolume:v48];
  if (fabs(v24 + -3.40282347e38) >= 2.22044605e-16)
  {
    v25 = [NSNumber numberWithFloat:?];
    [v48 setObject:v25 forVariant:40];
  }

  [(VOTOutputSpeechComponent *)self _preprocessActionLanguageAndVoice:v23];
  v26 = [v48 objectForVariant:28];
  v27 = [v26 BOOLValue];

  v28 = [v48 objectForVariant:80];
  v29 = [v28 BOOLValue];

  if (v27)
  {
    if (!v29)
    {
      v30 = 1;
LABEL_22:
      v41 = v48;
      goto LABEL_23;
    }
  }

  else
  {
    v31 = [v48 string];
    v47 = v23;
    v32 = self;
    v33 = v13;
    v34 = v11;
    v35 = v9;
    v36 = v7;
    v37 = v5;
    v38 = [v31 length] == 1;

    v39 = v38 & v29;
    v5 = v37;
    v7 = v36;
    v9 = v35;
    v11 = v34;
    v13 = v33;
    self = v32;
    v23 = v47;
    if ((v39 & 1) == 0)
    {
      v30 = 0;
      v29 = 0;
      goto LABEL_22;
    }
  }

  v40 = [(VOTOutputSpeechComponent *)self _processActionForLiteralEmojis:v48, v47];
  v41 = v48;
  v29 = v40;
  v30 = (v40 ^ 1) & v27;
LABEL_23:
  v42 = [v41 string];
  if (!((v29 | v11 | v13) & 1 | ([v42 length] != 1) | (v5 | v7 | v9) & 1) || v30)
  {
  }

  else
  {
    v43 = [v48 objectForVariant:42];

    if (!v43)
    {
      v44 = [v48 objectForVariant:64];
      v45 = [v44 BOOLValue];

      if (v45)
      {
        [(VOTOutputSpeechComponent *)self _speakAsPhoneticText:v48];
      }

      else
      {
        v46 = [v48 objectForVariant:29];
        if (v46)
        {
          [(VOTOutputSpeechComponent *)self _speakAsMixOfLiteralAndNormalText:v48 withLiteralRanges:v46];
        }

        else
        {
          [(VOTOutputSpeechComponent *)self _speakAsNormalText:v48];
        }
      }

      goto LABEL_30;
    }
  }

  [(VOTOutputSpeechComponent *)self _speakAsLiteralText:v48];
LABEL_30:
}

- (BOOL)_processActionForLiteralEmojis:(id)a3
{
  v3 = a3;
  v4 = +[NSMutableIndexSet indexSet];
  v5 = [v3 string];
  v6 = [v5 length];

  if (v6)
  {
    v7 = [v3 string];
    v8 = [TTSEmojiUtilities emojiRangeFromString:v7 withSearchRange:0, v6];
    v10 = v9;

    v11 = 0;
    v12 = v8 != 0x7FFFFFFFFFFFFFFFLL;
    if (v8 != 0x7FFFFFFFFFFFFFFFLL)
    {
      v11 = 0;
      do
      {
        if (v8 != v11)
        {
          [v4 addIndexesInRange:{v11, v8 - v11}];
        }

        v11 = &v8[v10];
        v13 = v6 >= &v8[v10];
        v14 = v6 - &v8[v10];
        if (v14 == 0 || !v13)
        {
          break;
        }

        v15 = [v3 string];
        v8 = [TTSEmojiUtilities emojiRangeFromString:v15 withSearchRange:v11, v14];
        v10 = v16;
      }

      while (v8 != 0x7FFFFFFFFFFFFFFFLL);
    }

    if (v6 != v11 && v6 - v11 < v6)
    {
      [v4 addIndexesInRange:v11];
    }
  }

  else
  {
    v12 = 0;
  }

  if ([v4 count])
  {
    [v3 setObject:v4 forVariant:29];
  }

  return v12;
}

- (BOOL)stringIsInSupportedCharacters:(id)a3
{
  v3 = a3;
  v4 = +[VOTOutputManager outputManager];
  v5 = [v4 currentLanguageMap];
  v6 = [VOTSharedWorkspace selectedLanguage];
  if (v6)
  {
    v7 = sub_100051014(v5, v6, v3);
  }

  else
  {
    v8 = [VOTSharedWorkspace systemSpokenLanguage];
    v7 = sub_100051014(v5, v8, v3);
  }

  return v7;
}

- (id)stringReplacingBrailleDotRanges:(id)a3
{
  v3 = a3;
  if (qword_1001FEBB0 != -1)
  {
    sub_100129A40();
  }

  v4 = +[NSMutableString string];
  if (![v3 length])
  {
    goto LABEL_19;
  }

  v5 = 0;
  v6 = 0;
LABEL_5:
  v19 = v5;
  do
  {
    v7 = [v3 characterAtIndex:v6];
    if ([qword_1001FEBA8 characterIsMember:v7])
    {
      if (v5)
      {
        [v4 appendString:{@", "}];
      }

      else
      {
        v10 = sub_1000511CC(off_1001FDDD0, @"braille.dot.pattern.leader", &stru_1001CBF90);
        [v4 appendString:v10];
        [v4 appendString:@" "];
      }

      v11 = +[NSMutableArray array];
      v12 = 0;
      do
      {
        v13 = v12 + 1;
        if ((v7 >> v12))
        {
          v14 = [NSString stringWithFormat:@"%d", v13];
          [v11 addObject:v14];
        }

        v12 = v13;
      }

      while (v13 != 8);
      v15 = [v11 componentsJoinedByString:@" "];
      [v4 appendString:v15];

      ++v6;
      v5 = 1;
      if (v6 >= [v3 length])
      {
        v16 = v4;
        goto LABEL_20;
      }

      goto LABEL_5;
    }

    v8 = +[NSCharacterSet whitespaceAndNewlineCharacterSet];
    v9 = [v8 characterIsMember:v7];

    v5 &= v9;
    [v4 appendFormat:@"%C", v7];
    ++v6;
  }

  while (v6 < [v3 length]);
  v16 = v4;
  if ((v19 & 1) == 0)
  {
LABEL_19:
    v16 = v3;
  }

LABEL_20:
  v17 = v16;

  return v16;
}

- (void)_notifyDidFinishSpeakingWithFakeRequestForEvent:(id)a3
{
  v4 = a3;
  v5 = objc_alloc_init(TTSSpeechRequest);
  currentRequest = self->_currentRequest;
  self->_currentRequest = v5;
  object = v5;

  objc_setAssociatedObject(object, &unk_1001FEAB8, v4, 1);
  [(VOTOutputSpeechComponent *)self speechSynthesizer:self->_synthesizer didFinishSpeakingRequest:object successfully:1 withError:0];
}

- (id)_preferenceLanguageForLanguage:(id)a3 selectedLanguage:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = v5;
  v8 = v7;
  if (v7 && !v6)
  {
    v9 = AXLanguageCanonicalFormToGeneralLanguage();
    v10 = [VOTSharedWorkspace systemSpokenLanguage];
    v11 = [v10 hasPrefix:v9];

    if (v11)
    {
      v9 = v9;

      v12 = v9;
    }

    else
    {
      v12 = v8;
    }

    goto LABEL_9;
  }

  if (!v7 || ([VOTSharedWorkspace selectedLanguage], v13 = objc_claimAutoreleasedReturnValue(), v14 = objc_msgSend(v13, "isEqualToString:", v8), v13, v12 = v8, (v14 & 1) == 0))
  {
    v12 = AXLanguageCanonicalFormToGeneralLanguage();
    v9 = v8;
LABEL_9:
  }

  return v12;
}

- (void)_updateActionWithCanonicalMappings:(id)a3
{
  v3 = a3;
  v4 = [v3 string];
  v5 = [v4 precomposedStringWithCanonicalMapping];

  [v3 setString:v5];
}

- (float)mapSettingsPitchToSpeechPitch:(float)a3
{
  if (a3 < 0.5)
  {
    return (a3 + a3) * 0.5 + 0.5;
  }

  v3 = 1.0;
  if (a3 > 0.5)
  {
    return ((a3 + -0.5) + (a3 + -0.5)) + 1.0;
  }

  return v3;
}

- (void)_updatePitch:(id)a3 settingsPitch:(float)a4
{
  if (a3)
  {
    [a3 floatValue];
    v7 = *&v6 + ((2.0 - *&v6) * ((a4 + -0.5) + (a4 + -0.5)));
  }

  else
  {
    [(VOTOutputSpeechComponent *)self mapSettingsPitchToSpeechPitch:*&a4];
    v7 = *&v6;
  }

  *&v6 = v7;
  [(TTSSpeechSynthesizer *)self->_synthesizer setPitch:v6];
  v9 = [(VOTOutputSpeechComponent *)self synthesizerForTelephonyMixin];
  *&v8 = v7;
  [v9 setPitch:v8];
}

- (void)_updateDuckingBasedOnActivity:(id)a3
{
  v12 = [(VOTOutputComponent *)self determineActivityForAction:a3];
  v4 = [(VOTOutputSpeechComponent *)self activityBasedAudioDucking];
  v5 = [v4 copy];

  v6 = [v12 audioDucking];

  if (v6)
  {
    v7 = [v12 audioDucking];
    [(VOTOutputSpeechComponent *)self setActivityBasedAudioDucking:v7];
  }

  else
  {
    [(VOTOutputSpeechComponent *)self setActivityBasedAudioDucking:0];
  }

  v8 = [v12 audioDuckingAmount];

  if (v8)
  {
    v9 = [v12 audioDuckingAmount];
    [(VOTOutputSpeechComponent *)self setActivityBasedAudioDuckingAmount:v9];
  }

  v10 = [(VOTOutputSpeechComponent *)self activityBasedAudioDucking];
  v11 = [(VOTOutputSpeechComponent *)self activityBasedAudioDuckingAmount];
  if (v11)
  {

LABEL_8:
    [(VOTOutputSpeechComponent *)self _updateAudioSessionProperties];
    goto LABEL_11;
  }

  if (v5 | v10 && ([v5 isEqual:v10] & 1) == 0)
  {
    goto LABEL_8;
  }

LABEL_11:
}

- (void)_handlePerformAction:(id)a3
{
  v4 = a3;
  v5 = VOTLogSpeech();
  if (os_signpost_enabled(v5))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v5, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "VOT-BeginSpeaking", "", buf, 2u);
  }

  if (!self->_lastSetOptions)
  {
    v6 = VOTLogAudio();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Trying to speak without having set audio session properties, reseting now.", buf, 2u);
    }

    [(VOTOutputSpeechComponent *)self _updateAudioSessionProperties];
  }

  v7 = [v4 objectForIndex:14];
  v8 = [VOTSharedWorkspace speechMuted];
  v9 = [VOTSharedWorkspace voiceOverIsIdle];
  v10 = [(VOTOutputComponent *)self determineOutputMutedForActivity:v7];
  [(VOTOutputSpeechComponent *)self _updateDuckingBasedOnActivity:v7];
  v11 = [v7 objectForVariant:25];
  v12 = [v11 BOOLValue];

  v13 = +[VOTElement systemAppApplication];
  v14 = [v13 isSiriTalkingOrListening];

  if (!v14 && (((v8 | v9 | v10) ^ 1 | v12) & 1) != 0)
  {
    v15 = [v7 objectForVariant:32];
    self->_userStopped = 0;
    self->_isSpeaking = 1;
    v16 = [v7 objectForVariant:74];
    v17 = [v7 objectForVariant:87];
    v18 = [v7 string];
    v19 = [(VOTOutputSpeechComponent *)self stringReplacingBrailleDotRanges:v18];

    v20 = [v7 string];

    if (v19 != v20)
    {
      [v7 setString:v19];
    }

    v126 = v19;
    [(TTSSpeechSynthesizer *)self->_synthesizer setSpeechSource:v17];
    [(TTSSpeechSynthesizer *)self->_synthesizer setVoiceIdentifier:v16];
    v21 = [(VOTOutputSpeechComponent *)self synthesizerForTelephonyMixin];
    [v21 setSpeechSource:v17];

    v22 = [(VOTOutputSpeechComponent *)self synthesizerForTelephonyMixin];
    [v22 setVoiceIdentifier:v16];

    [(VOTOutputSpeechComponent *)self _updateActionWithCanonicalMappings:v7];
    v23 = [v7 outputRequest];
    [v23 setStartedRequest:1];

    v24 = [v7 string];
    if ([v24 length])
    {
      v125 = v17;
      v25 = [v7 outputRequest];
      if (![v25 disableOutput])
      {
        v28 = [v7 outputRequest];
        v29 = [v28 suppressSpeech];

        v17 = v125;
        if ((v29 & 1) == 0)
        {
          v121 = v16;
          v30 = [v7 objectForVariant:89];
          v31 = [v30 rate];
          v32 = v31;
          if (v31)
          {
            v33 = v31;
          }

          else
          {
            v34 = [v7 objectForVariant:39];
            v35 = v34;
            if (v34)
            {
              v36 = v34;
            }

            else
            {
              v36 = &off_1001D9990;
            }

            v33 = v36;
          }

          v37 = [v30 pitch];
          v38 = v37;
          if (v37)
          {
            v39 = v37;
          }

          else
          {
            v39 = &off_1001D9990;
          }

          v40 = v39;

          v41 = [v30 volume];
          v42 = v41;
          v119 = v40;
          v120 = v30;
          if (v41)
          {
            v124 = v41;
          }

          else
          {
            v43 = [v7 objectForVariant:40];
            v44 = v43;
            if (v43)
            {
              v124 = v43;
            }

            else
            {
              v45 = +[AXSettings sharedInstance];
              [v45 voiceOverEffectiveSpeakingVolume];
              v124 = [NSNumber numberWithFloat:?];

              v30 = v120;
            }
          }

          v46 = VOTLogAudio();
          if (os_log_type_enabled(v46, OS_LOG_TYPE_INFO))
          {
            *buf = 138412802;
            *v136 = v124;
            *&v136[8] = 2112;
            v137 = v40;
            *v138 = 2112;
            *&v138[2] = v33;
            _os_log_impl(&_mh_execute_header, v46, OS_LOG_TYPE_INFO, "Resolved volume: %@, pitch %@, rate: %@", buf, 0x20u);
          }

          v47 = [v30 voiceSettings];
          [(TTSSpeechSynthesizer *)self->_synthesizer setPerVoiceSettings:v47];

          v48 = [v30 effects];
          [(TTSSpeechSynthesizer *)self->_synthesizer setAudioEffects:v48];

          v49 = [v30 voiceSettings];
          v50 = [(VOTOutputSpeechComponent *)self synthesizerForTelephonyMixin];
          [v50 setPerVoiceSettings:v49];

          [v40 floatValue];
          [(VOTOutputSpeechComponent *)self _updatePitch:v15 settingsPitch:?];
          synthesizer = self->_synthesizer;
          [v124 floatValue];
          [(TTSSpeechSynthesizer *)synthesizer setVolume:?];
          [v124 floatValue];
          v53 = v52;
          v54 = [(VOTOutputSpeechComponent *)self synthesizerForTelephonyMixin];
          LODWORD(v55) = v53;
          [v54 setVolume:v55];

          [v33 floatValue];
          v57 = -1.0;
          if (v56 >= 0.0)
          {
            v58 = v56;
            v59 = v56;
            if (fabs(v56 + -3.40282347e38) >= 2.22044605e-16)
            {
              [(TTSSpeechSynthesizer *)self->_synthesizer normalizedRate];
              v57 = v60;
              *&v61 = v58;
              [(TTSSpeechSynthesizer *)self->_synthesizer setNormalizedRate:v61];
              v62 = [(VOTOutputSpeechComponent *)self synthesizerForTelephonyMixin];
              *&v63 = v58;
              [v62 setNormalizedRate:v63];

              v64 = VOTLogSpeech();
              if (os_log_type_enabled(v64, OS_LOG_TYPE_INFO))
              {
                *buf = 134217984;
                *v136 = v59;
                _os_log_impl(&_mh_execute_header, v64, OS_LOG_TYPE_INFO, "Set Rate: %f;", buf, 0xCu);
              }
            }
          }

          v118 = v33;
          v65 = +[VOTOutputManager outputManager];
          [v65 enableAudioSession:@"SPEECH"];

          v66 = VOTLogSpeech();
          if (os_signpost_enabled(v66))
          {
            *buf = 0;
            _os_signpost_emit_with_name_impl(&_mh_execute_header, v66, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "BeginSpeaking", "", buf, 2u);
          }

          v67 = [v7 objectForVariant:70];
          -[TTSSpeechSynthesizer setIgnoreSubstitutions:](self->_synthesizer, "setIgnoreSubstitutions:", [v67 BOOLValue]);

          v68 = [v7 objectForVariant:43];
          [(TTSSpeechSynthesizer *)self->_synthesizer setBundleIdentifier:v68];

          v69 = [v7 objectForVariant:70];
          v70 = [v69 BOOLValue];
          v71 = [(VOTOutputSpeechComponent *)self synthesizerForTelephonyMixin];
          [v71 setIgnoreSubstitutions:v70];

          v72 = [v7 objectForVariant:43];
          v73 = [(VOTOutputSpeechComponent *)self synthesizerForTelephonyMixin];
          [v73 setBundleIdentifier:v72];

          v74 = [v7 outputRequest];
          -[TTSSpeechSynthesizer setSynthesizeSilently:](self->_synthesizer, "setSynthesizeSilently:", [v74 synthesizeSilently]);

          v75 = [TTSSpeechSynthesizer voiceForIdentifier:v121];
          v76 = [v30 boundLanguage];
          v115 = v75;
          v116 = v15;
          if (v76 || ([v75 language], (v76 = objc_claimAutoreleasedReturnValue()) != 0))
          {
            v77 = v76;
            [v7 setObject:? forVariant:?];
            v78 = self->_synthesizer;
            v79 = [v7 string];
            v133 = 0;
            v134 = 0;
            [(TTSSpeechSynthesizer *)v78 startSpeakingString:v79 withLanguageCode:v77 request:&v134 error:&v133];
            v80 = v134;
            v81 = v133;

            v82 = [(VOTOutputSpeechComponent *)self synthesizerForTelephonyMixin];
            v83 = [v7 string];
            v131 = v81;
            v132 = v80;
            v84 = &v132;
            v117 = v77;
            v85 = &v131;
            [v82 startSpeakingString:v83 withLanguageCode:v77 request:&v132 error:&v131];
          }

          else
          {
            v109 = self->_synthesizer;
            v110 = [v7 string];
            v129 = 0;
            v130 = 0;
            [(TTSSpeechSynthesizer *)v109 startSpeakingString:v110 withLanguageCode:0 request:&v130 error:&v129];
            v80 = v130;
            v81 = v129;

            v82 = [(VOTOutputSpeechComponent *)self synthesizerForTelephonyMixin];
            v83 = [v7 string];
            v127 = v81;
            v128 = v80;
            v84 = &v128;
            v85 = &v127;
            [v82 startSpeakingString:v83 withLanguageCode:0 request:&v128 error:&v127];
            v117 = 0;
          }

          obj = *v84;
          object = *v84;

          v122 = *v85;
          v86 = [v7 objectForVariant:75];
          v15 = v116;
          v87 = v120;
          v16 = v121;
          if (v86)
          {
            v88 = +[VOTOutputManager outputManager];
            [v88 playSoundFast:v86];

            v89 = VOTLogAudio();
            if (os_log_type_enabled(v89, OS_LOG_TYPE_DEBUG))
            {
              sub_100129A54();
            }
          }

          v90 = VOTLogSpeech();
          if (os_log_type_enabled(v90, OS_LOG_TYPE_DEBUG))
          {
            v111 = [(TTSSpeechSynthesizer *)self->_synthesizer resolvedVoiceIdentifier];
            v112 = [v7 string];
            *buf = 138478339;
            *v136 = v117;
            *&v136[8] = 2113;
            v137 = v111;
            *v138 = 2117;
            *&v138[2] = v112;
            _os_log_debug_impl(&_mh_execute_header, v90, OS_LOG_TYPE_DEBUG, "Spoke: [%{private}@:%{private}@]: '%{sensitive}@'", buf, 0x20u);

            v87 = v120;
          }

          v91 = VOTLogSpeech();
          if (os_log_type_enabled(v91, OS_LOG_TYPE_DEBUG))
          {
            sub_100129ABC(&self->_synthesizer);
          }

          objc_storeStrong(&self->_currentRequest, obj);
          if (object)
          {
            objc_setAssociatedObject(object, &unk_1001FEAB8, v4, 1);
          }

          v92 = [v7 objectForVariant:41];
          v93 = [v92 BOOLValue];

          v94 = +[AXSpringBoardServer server];
          if (![v94 isScreenLockedWithPasscode:0] || v93)
          {

            v100 = v118;
          }

          else
          {
            Current = CFAbsoluteTimeGetCurrent();
            v96 = +[VOTUserEventManager sharedInstance];
            [v96 lastEventOccurred];
            v98 = Current - v97;

            v99 = 2.0;
            v100 = v118;
            if (v98 < 2.0)
            {
              v101 = [(VOTOutputSpeechComponent *)self disableIdleTimerAssertion];

              if (!v101)
              {
                obja = +[AXUserEventTimer sharedInstance];
                v102 = objc_opt_class();
                v103 = NSStringFromClass(v102);
                [obja acquireAssertionToDisableIdleTimerWithReason:v103];
                v105 = v104 = v87;
                [(VOTOutputSpeechComponent *)self setDisableIdleTimerAssertion:v105];

                v87 = v104;
                v100 = v118;
              }

              objc_setAssociatedObject(object, &unk_1001FEBB8, &__kCFBooleanTrue, 1);
            }
          }

          if (v122)
          {
            v106 = VOTLogSpeech();
            if (os_log_type_enabled(v106, OS_LOG_TYPE_ERROR))
            {
              sub_100129B6C(v122);
            }
          }

          if (v57 >= 0.0)
          {
            *&v99 = v57;
            [(TTSSpeechSynthesizer *)self->_synthesizer setNormalizedRate:v99];
            v107 = [(VOTOutputSpeechComponent *)self synthesizerForTelephonyMixin];
            *&v108 = v57;
            [v107 setNormalizedRate:v108];
          }

          self->_lastTimeSpeechStarted = CFAbsoluteTimeGetCurrent();

          v17 = v125;
          goto LABEL_16;
        }

LABEL_15:
        [(VOTOutputSpeechComponent *)self _didStartSpeakingAction:v4];
        [(VOTOutputSpeechComponent *)self _notifyDidFinishSpeakingWithFakeRequestForEvent:v4];
LABEL_16:

        goto LABEL_22;
      }

      v17 = v125;
    }

    goto LABEL_15;
  }

  v26 = [v7 outputRequest];
  [v26 setStartedRequest:1];

  v27 = VOTLogAudio();
  if (os_log_type_enabled(v27, OS_LOG_TYPE_INFO))
  {
    *buf = 67109888;
    *v136 = v8;
    *&v136[4] = 1024;
    *&v136[6] = v9 & 1;
    LOWORD(v137) = 1024;
    *(&v137 + 2) = v10 & 1;
    HIWORD(v137) = 1024;
    *v138 = v14;
    _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_INFO, "VO muted for reason: speech muted: %d, vo is idle: %d, activity says so: %d, siri talking: %d", buf, 0x1Au);
  }

  if (([(TTSSpeechSynthesizer *)self->_synthesizer isSpeaking]& 1) == 0)
  {
    [(VOTOutputSpeechComponent *)self _notifyDidFinishSpeakingWithFakeRequestForEvent:v4];
  }

  [v7 setObject:&__kCFBooleanTrue forVariant:82];
LABEL_22:
}

- (id)ssmlRegex
{
  if (qword_1001FEBC8 != -1)
  {
    sub_100129BF8();
  }

  v3 = qword_1001FEBC0;

  return v3;
}

- (id)_spokenTextForRequest:(id)a3 range:(_NSRange *)a4
{
  v20 = a4;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v21 = a3;
  v5 = [v21 outputActions];
  v6 = [v5 countByEnumeratingWithState:&v22 objects:v26 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v23;
    v9 = &stru_1001CBF90;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v23 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v11 = *(*(&v22 + 1) + 8 * i);
        if (![v11 component])
        {
          v12 = [v11 string];
          v13 = [v12 length];

          if (v13)
          {
            if ([(__CFString *)v9 length])
            {
              v14 = [(__CFString *)v9 stringByAppendingString:@", "];

              v9 = v14;
            }

            v15 = [v11 string];
            v16 = [(__CFString *)v9 stringByAppendingString:v15];

            v9 = v16;
          }
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v22 objects:v26 count:16];
    }

    while (v7);
  }

  else
  {
    v9 = &stru_1001CBF90;
  }

  v17 = [(VOTOutputSpeechComponent *)self ssmlRegex];
  v18 = [(VOTOutputSpeechComponent *)self _processCaptionTextForMarkup:v9 regex:v17 range:v20];

  return v18;
}

- (id)_processCaptionTextForMarkup:(id)a3 regex:(id)a4 range:(_NSRange *)a5
{
  v7 = a3;
  v23 = a4;
  v8 = [v23 matchesInString:v7 options:0 range:{0, objc_msgSend(v7, "length")}];
  location = a5->location;
  length = a5->length;
  v24 = v7;
  v10 = [v7 mutableCopy];
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  obj = v8;
  v11 = [obj countByEnumeratingWithState:&v26 objects:v30 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = 0;
    v14 = *v27;
    do
    {
      for (i = 0; i != v12; i = i + 1)
      {
        if (*v27 != v14)
        {
          objc_enumerationMutation(obj);
        }

        v16 = *(*(&v26 + 1) + 8 * i);
        if ([v16 range] < a5->location)
        {
          [v16 range];
          location -= v17;
        }

        v18 = [v16 range];
        [v16 range];
        [v10 replaceCharactersInRange:&v18[v13] withString:{v19, &stru_1001CBF90}];
        [v16 range];
        v13 -= v20;
      }

      v12 = [obj countByEnumeratingWithState:&v26 objects:v30 count:16];
    }

    while (v12);
  }

  a5->location = location;
  a5->length = length;

  return v10;
}

- (void)_capVolumeForLanguage:(id)a3 volume:(float)a4
{
  v6 = a3;
  if (!self->_isVolumeCapped)
  {
    v9 = v6;
    v7 = [v6 isEqualToString:@"zh-CN"];
    v8 = a4 <= 0.94 || v7 == 0;
    v6 = v9;
    if (!v8)
    {
      [(TTSSpeechSynthesizer *)self->_synthesizer setVolume:?];
      v6 = v9;
      self->_isVolumeCapped = 1;
    }
  }
}

- (void)_uncapVolume:(float)a3
{
  if (self->_isVolumeCapped)
  {
    [(TTSSpeechSynthesizer *)self->_synthesizer setVolume:?];
    self->_isVolumeCapped = 0;
  }
}

- (void)_didStartSpeakingAction:(id)a3
{
  v4 = a3;
  v5 = VOTLogSpeech();
  if (os_signpost_enabled(v5))
  {
    LOWORD(v19) = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v5, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "VOT-BeginSpeaking", "", &v19, 2u);
  }

  v6 = objc_autoreleasePoolPush();
  v7 = [v4 objectForIndex:14];
  if ([VOTSharedWorkspace inPerformanceTestMode])
  {
    v8 = +[AXPerformanceTestReportingServer server];
    v9 = [v7 string];
    [v8 voiceOverDidSpeak:v9];
  }

  v10 = [v7 outputRequest];
  v11 = [v10 outputActions];
  v12 = [v11 firstObject];

  if (v12 == v7)
  {
    if ([VOTSharedWorkspace inUnitTestMode])
    {
      v13 = [v7 outputRequest];
      v14 = [v13 startBlock];

      if (v14)
      {
        v15 = [v7 outputRequest];
        (v14)[2](v14, v15);
      }
    }

    v20 = 0;
    v16 = [v7 outputRequest];
    v17 = [(VOTOutputSpeechComponent *)self _spokenTextForRequest:v16 range:&v19];

    v18 = +[VOTDisplayManager displayManager];
    [v18 setVoiceOverCaptionText:v17 withRange:v19 language:v20 voice:{0, 0}];
  }

  objc_autoreleasePoolPop(v6);
}

- (void)speechSynthesizer:(id)a3 didStartSpeakingRequest:(id)a4
{
  v5 = objc_getAssociatedObject(a4, &unk_1001FEAB8);
  [(VOTOutputSpeechComponent *)self _didStartSpeakingAction:v5];
}

- (void)speechSynthesizer:(id)a3 willSpeakRangeOfSpeechString:(_NSRange)a4 forRequest:(id)a5
{
  length = a4.length;
  location = a4.location;
  v41 = a4;
  v40 = a3;
  v9 = a5;
  context = objc_autoreleasePoolPush();
  v10 = objc_getAssociatedObject(v9, &unk_1001FEAB8);
  v11 = [v10 objectForIndex:14];
  v37 = v10;
  v12 = [v10 objectForIndex:13];
  v13 = [v11 objectForVariant:18];
  v14 = v13;
  if (v13)
  {
    [v13 speechSynthesizer:0 willSpeakRangeOfSpeechString:location forRequest:{length, v9}];
  }

  v33 = v14;
  v39 = v9;
  v15 = [v11 objectForVariant:41];
  v16 = [v15 BOOLValue];

  if ((v16 & 1) == 0 && self->_lastTimeSpeechStarted != -3061152000.0 && CFAbsoluteTimeGetCurrent() - self->_lastTimeSpeechStarted > 7.0)
  {
    self->_lastTimeSpeechStarted = CFAbsoluteTimeGetCurrent();
    v17 = +[VOTUserEventManager sharedInstance];
    [v17 userEventOccurred];
  }

  v18 = [objc_allocWithZone(AXIndexMap) init];
  [v18 setObject:v11 forIndex:11];
  [v18 setObject:v12 forIndex:13];
  v19 = [v11 outputRequest];
  v32 = v18;
  [(VOTOutputComponent *)self notifyRangeWillOutput:location container:length, v18];
  v20 = [v19 outputActions];
  v21 = [v20 indexOfObject:v11];

  v35 = v12;
  v36 = v11;
  v34 = self;
  if (v21 && v21 != 0x7FFFFFFFFFFFFFFFLL)
  {
    for (i = 0; i < v21; ++i)
    {
      v23 = [v19 outputActions];
      v24 = [v23 objectAtIndexedSubscript:i];

      v25 = [v24 string];
      v26 = [v25 length];

      if (v26)
      {
        v27 = [v24 string];
        v28 = [v27 length];
        v29 = [@" "];

        location += v28 + v29;
      }
    }
  }

  v41.location = location;
  v30 = [(VOTOutputSpeechComponent *)v34 _spokenTextForRequest:v19 range:&v41];
  v31 = +[VOTDisplayManager displayManager];
  [v31 setVoiceOverCaptionText:v30 withRange:v41.location language:v41.length voice:{0, 0}];

  objc_autoreleasePoolPop(context);
}

- (void)speechSynthesizer:(id)a3 didFinishSpeakingRequest:(id)a4 successfully:(BOOL)a5 withError:(id)a6
{
  v8 = a6;
  if (v8)
  {
    v9 = a4;
    v10 = [v9 languageCode];
    v11 = [TTSSpeechSynthesizer _speechVoiceForIdentifier:0 language:v10 footprint:1];

    v12 = VOTLogSpeech();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      sub_100129C0C(v8, v11);
    }

    v13 = objc_getAssociatedObject(v9, &unk_1001FEAB8);

    v14 = [v13 deepCopyWithZone:0];
    v15 = [v14 objectForIndex:14];
    v16 = [v11 identifier];
    [v15 setObject:v16 forVariant:74];

    [(VOTOutputSpeechComponent *)self handleEvent:v14];
  }

  else
  {
    speechThread = self->_speechThread;
    v11 = a4;
    [(SCRCThread *)speechThread performSelector:"_didFinishSpeaking:" onTarget:self cancelMask:0 count:1 objects:v11];
  }
}

- (void)_didFinishSpeaking:(id)a3
{
  v4 = a3;
  v5 = objc_getAssociatedObject(v4, &unk_1001FEAB8);
  v6 = [v5 objectForIndex:14];
  v7 = [v5 objectForIndex:13];
  self->_isPaused = 0;
  [(SCRCTargetSelectorTimer *)self->_stopSpeakingAfterLongPauseTimer cancel];
  v8 = VOTLogSpeech();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    sub_100129CA8(v6);
  }

  v9 = +[AXSettings sharedInstance];
  [v9 voiceOverEffectiveSpeakingVolume];
  [(VOTOutputSpeechComponent *)self _uncapVolume:?];

  if (([v6 synchronization] & 2) != 0)
  {
    v10 = [objc_allocWithZone(AXIndexMap) init];
    [v10 setObject:v6 forIndex:11];
    [v10 setObject:v7 forIndex:13];
    v11 = [NSNumber numberWithBool:!self->_userStopped];
    [v10 setObject:v11 forIndex:20];

    [(VOTOutputComponent *)self notifyActionComplete:v10];
  }

  objc_setAssociatedObject(v4, &unk_1001FEAB8, 0, 1);
  if (self->_currentRequest == v4)
  {
    self->_isSpeaking = 0;
    v12 = +[VOTOutputManager outputManager];
    [v12 disableAudioSession:@"SPEECH"];
  }

  v13 = objc_getAssociatedObject(v4, &unk_1001FEBB8);
  v14 = [v13 BOOLValue];

  if (v14 && ![(VOTOutputSpeechComponent *)self isSpeaking])
  {
    v15 = [(VOTOutputSpeechComponent *)self disableIdleTimerAssertion];
    [v15 invalidate];

    [(VOTOutputSpeechComponent *)self setDisableIdleTimerAssertion:0];
  }
}

- (BOOL)replacesCharacterAsPunctuation:(unsigned __int16)a3
{
  v3 = a3;
  v4 = [(VOTOutputSpeechComponent *)self currentAllPunctuationTable];
  v5 = [v4 objectForIndex:v3];
  LOBYTE(v3) = v5 != 0;

  return v3;
}

@end