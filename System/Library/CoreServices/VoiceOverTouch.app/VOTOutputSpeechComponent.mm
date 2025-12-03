@interface VOTOutputSpeechComponent
- (BOOL)_currentLocaleUsesSpaceAsSeparator;
- (BOOL)_formatDetectedFinnishDates:(id)dates;
- (BOOL)_makeSubstitution:(id)substitution withString:(id)string punctuationGroup:(id)group;
- (BOOL)_processActionForLiteralEmojis:(id)emojis;
- (BOOL)_replaceRepeatedPuntuationAndEmoji:(id)emoji newString:(id)string charReplacementString:(id)replacementString charSequence:(id)sequence charIndex:(int64_t *)index speakPunctuationCounts:(BOOL)counts languageCode:(id)code;
- (BOOL)_stringMatchesSpecialCases:(id)cases forSymbol:(id)symbol ranges:(id *)ranges langaugeCode:(id)code;
- (BOOL)_usingAllChannels;
- (BOOL)replacesCharacterAsPunctuation:(unsigned __int16)punctuation;
- (BOOL)stringIsInSupportedCharacters:(id)characters;
- (VOTOutputSpeechComponent)init;
- (double)performSelector:(SEL)selector withThreadKey:(id)key waitTime:(double)time cancelMask:(unsigned int)mask count:(unsigned int)count objects:(id)objects;
- (float)_determineVolume:(id)volume;
- (float)_pauseDelayForType:(int)type speechRate:(float)rate voiceType:(int64_t)voiceType;
- (float)mapSettingsPitchToSpeechPitch:(float)pitch;
- (float)volume;
- (id)_determinePunctuationGroupForAction:(id)action isDefault:(BOOL *)default;
- (id)_determineSpeechSourceForAction:(id)action;
- (id)_determineVoiceIdentifier:(id)identifier languageCode:(id)code;
- (id)_determineVoiceSelection:(id)selection languageCode:(id)code;
- (id)_internalVoiceOverSubstitutions;
- (id)_literalStringMarkupForString:(id)string languageCode:(id)code action:(id)action;
- (id)_localeSpecificURLRegexForLanguageCode:(id)code;
- (id)_localeSpecificURLsForLanguageCode:(id)code;
- (id)_parseNumberInString:(id)string beforeCharacterAtIndex:(int64_t)index numberRange:(_NSRange *)range;
- (id)_preferenceLanguageForLanguage:(id)language selectedLanguage:(id)selectedLanguage;
- (id)_processCaptionTextForMarkup:(id)markup regex:(id)regex range:(_NSRange *)range;
- (id)_replacePunctuation:(id)punctuation punctuationGroup:(id)group hasMathContext:(BOOL)context hasPhoneContext:(BOOL)phoneContext isText:(BOOL)text replaceCommas:(BOOL)commas languageCode:(id)code speakPunctuationCounts:(BOOL)self0;
- (id)_secureTextDescription:(id)description;
- (id)_spokenTextForRequest:(id)request range:(_NSRange *)range;
- (id)_stringForLiteralText:(id)text action:(id)action allowChangingLanguageForPunctuation:(BOOL)punctuation;
- (id)_stringForNormalText:(id)text action:(id)action allowPausingAtBoundaries:(BOOL)boundaries ignoreLeadingCommas:(BOOL)commas;
- (id)_urlRangesInString:(id)string languageCode:(id)code;
- (id)baseTableForPunctuationGroup:(id)group;
- (id)currentAllPunctuationTable;
- (id)currentNonePunctuationTable;
- (id)currentSomePunctuationTable;
- (id)expectedVoiceIdentifier:(id)identifier;
- (id)fileSystemPunctuationGroup;
- (id)pauseStringForType:(int)type voiceIdentifier:(id)identifier rate:(float)rate;
- (id)punctuationReplacement:(id)replacement withGroup:(id)group baseTable:(id)table languageCode:(id)code selectedLanguage:(id)language spokenLanguage:(id)spokenLanguage;
- (id)ssmlRegex;
- (id)stringReplacingBrailleDotRanges:(id)ranges;
- (int64_t)_ttsVoiceTypeForPauseCalculationWithVoiceIdentifier:(id)identifier;
- (void)_appendLiteralCharacterString:(id)string toString:(id)toString hasPhoneContext:(BOOL)context hasMathContext:(BOOL)mathContext action:(id)action punctuationTableLanguageUsed:(BOOL *)used;
- (void)_applyCamelCaseSeparation:(id)separation;
- (void)_applyTelephoneFormatting:(id)formatting withRanges:(id)ranges languageCode:(id)code voiceIdentifier:(id)identifier rate:(float)rate;
- (void)_applyTransliteration:(id)transliteration languageCode:(id)code;
- (void)_audioSessionWasInterrupted:(id)interrupted;
- (void)_callStatusChanged;
- (void)_capVolumeForLanguage:(id)language volume:(float)volume;
- (void)_configureSynthesizerWithPhonemeSubstitutionsFromAction:(id)action;
- (void)_createTelephonySynthesizer;
- (void)_determineEmojiPreferenceForAction:(id)action;
- (void)_didFinishSpeaking:(id)speaking;
- (void)_didStartSpeakingAction:(id)action;
- (void)_formatATVStyleMediaDurations:(id)durations;
- (void)_formatDetectedDates:(id)dates voiceIdentifier:(id)identifier languageCode:(id)code rate:(float)rate;
- (void)_formatEthernetMacAddress:(id)address voiceIdentifier:(id)identifier rate:(float)rate;
- (void)_formatExplicitTimeDuration:(id)duration isMMSS:(BOOL)s languageCode:(id)code;
- (void)_formatIPAddress:(id)address voiceIdentifier:(id)identifier rate:(float)rate;
- (void)_formatJapaneseYen:(id)yen;
- (void)_formatNumbers:(id)numbers action:(id)action;
- (void)_formatTelephoneNumber:(id)number languageCode:(id)code voiceIdentifier:(id)identifier rate:(float)rate;
- (void)_formatTimeDuration:(id)duration didMatch:(BOOL *)match voiceIdentifier:(id)identifier rate:(float)rate;
- (void)_formatUSHeight:(id)height voiceIdentifier:(id)identifier;
- (void)_handleContinueSpeaking:(id)speaking;
- (void)_handlePauseSpeaking:(id)speaking;
- (void)_handlePerformAction:(id)action;
- (void)_handleStopSpeaking:(id)speaking;
- (void)_initializePunctuationData;
- (void)_initializeSynthesizer;
- (void)_initializeThread;
- (void)_insertLongerPausesForSymbol:(id)symbol withText:(id)text allowPausingAtBoundaries:(BOOL)boundaries onlyApplyWhenFollowedBySpace:(BOOL)space languageCode:(id)code voiceIdentifier:(id)identifier rate:(float)rate;
- (void)_loadNoneTableOverrides;
- (void)_loadPunctuationTable:(id)table withLevel:(int64_t)level language:(id)language;
- (void)_loadSpecialPunctuation;
- (void)_notifyDidFinishSpeakingWithFakeRequestForEvent:(id)event;
- (void)_preprocessActionLanguageAndVoice:(id)voice;
- (void)_processEmoji:(id)emoji action:(id)action rate:(float)rate;
- (void)_removeRunsOfNewLines:(id)lines;
- (void)_replaceEmbeddedTTSCommands:(id)commands;
- (void)_replaceEmoticonsWithText:(id)text;
- (void)_replacePunctuation:(id)punctuation withAction:(id)action languageCode:(id)code;
- (void)_replaceRepeatedEmoji:(id)emoji;
- (void)_replaceUserSubstitutions:(id)substitutions action:(id)action;
- (void)_resetLanguageDataOnSpeechThread:(id)thread language:(id)language;
- (void)_saveSpeechStats;
- (void)_selectedLanguageChanged:(id)changed;
- (void)_setDuckingLevelAlways:(double)always;
- (void)_setDuckingLevelOnlySpeaking:(double)speaking;
- (void)_setDuckingProperties;
- (void)_setRate:(id)rate;
- (void)_setUnDuckingProperties;
- (void)_setVoice:(id)voice;
- (void)_speakAllDigits:(id)digits;
- (void)_speakAsLiteralText:(id)text;
- (void)_speakAsMixOfLiteralAndNormalText:(id)text withLiteralRanges:(id)ranges;
- (void)_speakAsNormalText:(id)text;
- (void)_speakAsPhoneticText:(id)text;
- (void)_stopSpeakingAfterLongPause:(id)pause;
- (void)_tearDownTelephonySynthesizer;
- (void)_uncapVolume:(float)volume;
- (void)_updateActionWithCanonicalMappings:(id)mappings;
- (void)_updateAudioSessionProperties;
- (void)_updateChannelLayout;
- (void)_updateDuckingBasedOnActivity:(id)activity;
- (void)_updatePitch:(id)pitch settingsPitch:(float)settingsPitch;
- (void)_updateUserSubstitutions:(id)substitutions;
- (void)continueSpeaking;
- (void)dealloc;
- (void)handleEvent:(id)event;
- (void)pauseSpeakingAtBoundary:(int)boundary;
- (void)preprocessAction:(id)action;
- (void)setRate:(float)rate;
- (void)speechSynthesizer:(id)synthesizer didFinishSpeakingRequest:(id)request successfully:(BOOL)successfully withError:(id)error;
- (void)speechSynthesizer:(id)synthesizer didStartSpeakingRequest:(id)request;
- (void)speechSynthesizer:(id)synthesizer willSpeakRangeOfSpeechString:(_NSRange)string forRequest:(id)request;
- (void)stopSpeakingAtBoundary:(int)boundary allRequests:(BOOL)requests sessionDeactivationDelay:(id)delay;
@end

@implementation VOTOutputSpeechComponent

- (double)performSelector:(SEL)selector withThreadKey:(id)key waitTime:(double)time cancelMask:(unsigned int)mask count:(unsigned int)count objects:(id)objects
{
  if (mask == -1)
  {
    *&mask = 4289724415;
  }

  else
  {
    *&mask = mask;
  }

  [(SCRCThread *)self->_speechThread performSelector:selector onTarget:self cancelMask:*&mask count:*&count objects:objects, time];
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

- (void)_updateUserSubstitutions:(id)substitutions
{
  substitutionsCopy = substitutions;
  v5 = +[AXSettings sharedInstance];
  customPronunciationSubstitutions = [v5 customPronunciationSubstitutions];

  _internalVoiceOverSubstitutions = [(VOTOutputSpeechComponent *)self _internalVoiceOverSubstitutions];
  v7 = [NSArray axArrayWithPossiblyNilArrays:2, customPronunciationSubstitutions, _internalVoiceOverSubstitutions];

  [substitutionsCopy setUserSubstitutions:v7];
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

  synthesizerForTelephonyMixin = [(VOTOutputSpeechComponent *)self synthesizerForTelephonyMixin];
  [synthesizerForTelephonyMixin stopSpeakingAtNextBoundary:0 error:0];

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

  synthesizerForTelephonyMixin = [(VOTOutputSpeechComponent *)self synthesizerForTelephonyMixin];

  if (!synthesizerForTelephonyMixin)
  {
    v5 = [[TTSSpeechSynthesizer alloc] init];
    [(VOTOutputSpeechComponent *)self setSynthesizerForTelephonyMixin:v5];

    synthesizerForTelephonyMixin2 = [(VOTOutputSpeechComponent *)self synthesizerForTelephonyMixin];
    [(VOTOutputSpeechComponent *)self _updateUserSubstitutions:synthesizerForTelephonyMixin2];

    synthesizerForTelephonyMixin3 = [(VOTOutputSpeechComponent *)self synthesizerForTelephonyMixin];
    [synthesizerForTelephonyMixin3 setAudioQueueFlags:320];
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
  voiceOverSpeaksOverTelephoneCalls = [v3 voiceOverSpeaksOverTelephoneCalls];

  if (voiceOverSpeaksOverTelephoneCalls)
  {
    telephonyIsActive = [VOTSharedWorkspace telephonyIsActive];
    v6 = VOTLogCommon();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v7[0] = 67109120;
      v7[1] = telephonyIsActive;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "Call status change to %d for telephony synthesizer", v7, 8u);
    }

    if (telephonyIsActive)
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
  currentRoute = [v3 currentRoute];
  v5 = [v2 savedChannelsForOutput:currentRoute forSource:1];

  v6 = +[AXAudioHardwareManager defaultPortChannels];
  if (v5)
  {
    if (![v5 isEqualToArray:v6])
    {
      v17 = 0;
      goto LABEL_16;
    }

    v7 = +[AXSubsystemAudioRouting sharedInstance];
    ignoreLogging = [v7 ignoreLogging];

    if ((ignoreLogging & 1) == 0)
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
    ignoreLogging2 = [v14 ignoreLogging];

    if ((ignoreLogging2 & 1) == 0)
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

- (void)_audioSessionWasInterrupted:(id)interrupted
{
  interruptedCopy = interrupted;
  if ([(VOTOutputSpeechComponent *)self isSpeaking]|| self->_currentRequest)
  {
    v5 = VOTLogAudio();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      userInfo = [interruptedCopy userInfo];
      v7 = [userInfo objectForKey:@"AVAudioSessionInterruptorNameKey"];
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
    voiceOverAudioDuckingEnabled = [v4 voiceOverAudioDuckingEnabled];
    audioDestinationRequestExternal = [VOTSharedWorkspace audioDestinationRequestExternal];
    v7 = +[AXSettings sharedInstance];
    *buf = 67109632;
    *v26 = voiceOverAudioDuckingEnabled;
    *&v26[4] = 1024;
    *&v26[6] = audioDestinationRequestExternal;
    v27 = 1024;
    voiceOverAudioFollowsHDMIAudio = [v7 voiceOverAudioFollowsHDMIAudio];
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Update audio session properties: ducking:%d, destination external %d. Force VO->HDMI: %d", buf, 0x14u);
  }

  v8 = +[AXSettings sharedInstance];
  voiceOverAudioDuckingEnabled2 = [v8 voiceOverAudioDuckingEnabled];

  v10 = +[AXSettings sharedInstance];
  voiceOverMediaDuckingMode = [v10 voiceOverMediaDuckingMode];

  activityBasedAudioDucking = [(VOTOutputSpeechComponent *)self activityBasedAudioDucking];

  if (activityBasedAudioDucking)
  {
    activityBasedAudioDucking2 = [(VOTOutputSpeechComponent *)self activityBasedAudioDucking];
    voiceOverMediaDuckingMode = [activityBasedAudioDucking2 integerValue];

    v14 = VOTLogAudio();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
    {
      v15 = [NSNumber numberWithLong:voiceOverMediaDuckingMode];
      *buf = 138412290;
      *v26 = v15;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_INFO, "Ducking status change because the activity determined ducking: %@", buf, 0xCu);
    }
  }

  if (AXRuntimeCheck_SupportsVoiceoverIndepedentVolume())
  {
    v16 = voiceOverMediaDuckingMode != 0;
  }

  else
  {
    v16 = voiceOverAudioDuckingEnabled2;
  }

  if ([VOTSharedWorkspace speechMuted] && voiceOverMediaDuckingMode != 2)
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
  audioSessionQueue = [v22 audioSessionQueue];
  v24[0] = _NSConcreteStackBlock;
  v24[1] = 3221225472;
  v24[2] = sub_10002BED0;
  v24[3] = &unk_1001C7900;
  v24[4] = self;
  v24[5] = v20;
  [audioSessionQueue performSynchronousWritingBlock:v24];

  [(VOTOutputSpeechComponent *)self _updateChannelLayout];
}

- (void)_setDuckingProperties
{
  v3 = +[AXSettings sharedInstance];
  [v3 voiceOverMediaDuckingAmount];
  v5 = v4;

  activityBasedAudioDuckingAmount = [(VOTOutputSpeechComponent *)self activityBasedAudioDuckingAmount];

  if (activityBasedAudioDuckingAmount)
  {
    activityBasedAudioDuckingAmount2 = [(VOTOutputSpeechComponent *)self activityBasedAudioDuckingAmount];
    [activityBasedAudioDuckingAmount2 doubleValue];
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
  voiceOverMediaDuckingMode = [v11 voiceOverMediaDuckingMode];

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

  if (voiceOverMediaDuckingMode == 2)
  {
    [(VOTOutputSpeechComponent *)self _setDuckingLevelAlways:1.0 - v5];
  }

  else
  {
    [(VOTOutputSpeechComponent *)self _setDuckingLevelAlways:1.0];
    [(VOTOutputSpeechComponent *)self _setDuckingLevelOnlySpeaking:1.0 - v5];
  }
}

- (void)_setDuckingLevelAlways:(double)always
{
  v4 = +[AVSystemController sharedAVSystemController];
  *&v5 = always;
  v6 = [v4 setDuckScalarForVoiceOver:v5];
  v7 = VOTLogAudio();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = [NSNumber numberWithDouble:always];
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

- (void)_setDuckingLevelOnlySpeaking:(double)speaking
{
  v4 = +[AVAudioSession sharedInstance];
  v5 = [NSNumber numberWithDouble:speaking];
  v10 = 0;
  [v4 setDuckToLevelScalar:v5 unduckToLevelScalar:0 error:&v10];
  v6 = v10;

  v7 = VOTLogAudio();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = [NSNumber numberWithDouble:speaking];
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
    currentRoute = [v3 currentRoute];
    currentRoute2 = [v3 currentRoute];
    outputs = [currentRoute2 outputs];
    v19 = 138412802;
    v20 = currentRoute;
    v21 = 2114;
    v22 = outputs;
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

  currentRoute3 = [v3 currentRoute];
  v16 = [AXAudioHardwareManager channelsAreAirplay:v6 route:currentRoute3];

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

- (void)_selectedLanguageChanged:(id)changed
{
  changedCopy = changed;
  if (qword_1001FEAB0 != -1)
  {
    sub_100129284();
  }

  selectedLanguage = [VOTSharedWorkspace selectedLanguage];
  v6 = [selectedLanguage copy];

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

- (void)_resetLanguageDataOnSpeechThread:(id)thread language:(id)language
{
  threadCopy = thread;
  languageCopy = language;
  v8 = +[NSThread currentThread];
  name = [v8 name];
  v10 = objc_opt_class();
  v11 = NSStringFromClass(v10);
  if (([name isEqualToString:v11] & 1) == 0)
  {
    sub_100129298();
  }

  v12 = [threadCopy count];
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
    v26 = languageCopy;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_INFO, "Reset lang data for %@", buf, 0xCu);
  }

  v15 = [threadCopy objectAtIndexedSubscript:0];
  selectedLanguageAllPunctuationTable = self->_selectedLanguageAllPunctuationTable;
  self->_selectedLanguageAllPunctuationTable = v15;

  v17 = [threadCopy objectAtIndexedSubscript:1];
  selectedLanguageSomePunctuationTable = self->_selectedLanguageSomePunctuationTable;
  self->_selectedLanguageSomePunctuationTable = v17;

  v19 = [threadCopy objectAtIndexedSubscript:2];
  selectedLanguageNoPunctuationTable = self->_selectedLanguageNoPunctuationTable;
  self->_selectedLanguageNoPunctuationTable = v19;

  inUnitTestMode = [VOTSharedWorkspace inUnitTestMode];
  if (languageCopy && inUnitTestMode)
  {
    v14 = +[NSNotificationCenter defaultCenter];
    v23[0] = @"language";
    v23[1] = @"sender";
    v24[0] = languageCopy;
    v24[1] = self;
    v22 = [NSDictionary dictionaryWithObjects:v24 forKeys:v23 count:2];
    [v14 postNotificationName:@"VOTLanguageReloaded" object:0 userInfo:v22];

LABEL_10:
  }
}

- (id)currentSomePunctuationTable
{
  selectedLanguage = [VOTSharedWorkspace selectedLanguage];

  v4 = &OBJC_IVAR___VOTOutputSpeechComponent__selectedLanguageSomePunctuationTable;
  if (!selectedLanguage)
  {
    v4 = &OBJC_IVAR___VOTOutputSpeechComponent__somePunctuationTable;
  }

  v5 = *(&self->super.super.isa + *v4);

  return v5;
}

- (id)currentNonePunctuationTable
{
  selectedLanguage = [VOTSharedWorkspace selectedLanguage];

  v4 = &OBJC_IVAR___VOTOutputSpeechComponent__selectedLanguageNoPunctuationTable;
  if (!selectedLanguage)
  {
    v4 = &OBJC_IVAR___VOTOutputSpeechComponent__noPunctuationTable;
  }

  v5 = *(&self->super.super.isa + *v4);

  return v5;
}

- (id)currentAllPunctuationTable
{
  selectedLanguage = [VOTSharedWorkspace selectedLanguage];

  v4 = &OBJC_IVAR___VOTOutputSpeechComponent__selectedLanguageAllPunctuationTable;
  if (!selectedLanguage)
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

- (void)_loadPunctuationTable:(id)table withLevel:(int64_t)level language:(id)language
{
  tableCopy = table;
  AXLoadPunctuationTable();
  [tableCopy addObjectsFromIndexMap:self->_specialPunctionTable];
  if (level == 3)
  {
    [tableCopy addObjectsFromIndexMap:self->_noneTableOverrides];
  }
}

- (float)volume
{
  v2 = +[AXSettings sharedInstance];
  [v2 voiceOverEffectiveSpeakingVolume];
  v4 = v3;

  return v4;
}

- (void)_setRate:(id)rate
{
  rateCopy = rate;
  v5 = VOTLogSpeech();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v11 = 138412290;
    v12 = rateCopy;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "VoiceOver set rate %@", &v11, 0xCu);
  }

  synthesizer = self->_synthesizer;
  [rateCopy floatValue];
  [(TTSSpeechSynthesizer *)synthesizer setRate:?];
  [rateCopy floatValue];
  v8 = v7;
  synthesizerForTelephonyMixin = [(VOTOutputSpeechComponent *)self synthesizerForTelephonyMixin];
  LODWORD(v10) = v8;
  [synthesizerForTelephonyMixin setRate:v10];
}

- (void)setRate:(float)rate
{
  speechThread = self->_speechThread;
  v5 = [NSNumber numberWithFloat:?];
  [(SCRCThread *)speechThread performSelector:"_setRate:" onTarget:self cancelMask:0x400000 count:1 objects:v5];
}

- (void)_setVoice:(id)voice
{
  voiceCopy = voice;
  [(TTSSpeechSynthesizer *)self->_synthesizer setVoiceIdentifier:voiceCopy];
  synthesizerForTelephonyMixin = [(VOTOutputSpeechComponent *)self synthesizerForTelephonyMixin];
  [synthesizerForTelephonyMixin setVoiceIdentifier:voiceCopy];

  v6 = VOTLogSpeech();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = 138543362;
    v8 = voiceCopy;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "Set voice to %{public}@", &v7, 0xCu);
  }
}

- (void)pauseSpeakingAtBoundary:(int)boundary
{
  v3 = *&boundary;
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

- (void)stopSpeakingAtBoundary:(int)boundary allRequests:(BOOL)requests sessionDeactivationDelay:(id)delay
{
  requestsCopy = requests;
  v6 = *&boundary;
  delayCopy = delay;
  if ([(VOTOutputSpeechComponent *)self isSpeaking]|| self->_currentRequest)
  {
    v8 = [objc_allocWithZone(NSNumber) initWithUnsignedInt:v6];
    v9 = [objc_allocWithZone(NSNumber) initWithUnsignedInt:7];
    v10 = [objc_allocWithZone(AXIndexMap) init];
    [v10 setObject:v8 forIndex:11];
    [v10 setObject:v9 forIndex:1];
    v11 = [NSNumber numberWithBool:requestsCopy];
    [v10 setObject:v11 forIndex:24];

    [v10 setObject:delayCopy forIndex:84];
    [(SCRCThread *)self->_speechThread performSelector:"handleEvent:" onTarget:self cancelMask:0x200000 count:1 objects:v10];

LABEL_4:
    goto LABEL_5;
  }

  if (delayCopy)
  {
    v8 = +[VOTOutputManager outputManager];
    [delayCopy doubleValue];
    [v8 disableAudioSession:@"SPEECH" userDelay:?];
    goto LABEL_4;
  }

LABEL_5:
}

- (void)_stopSpeakingAfterLongPause:(id)pause
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

- (void)_handlePauseSpeaking:(id)speaking
{
  speakingCopy = speaking;
  if ([(VOTOutputSpeechComponent *)self isSpeaking])
  {
    self->_isPaused = 1;
    v4 = [speakingCopy objectForIndex:11];
    unsignedIntValue = [v4 unsignedIntValue];

    v6 = unsignedIntValue == 1;
    [(TTSSpeechSynthesizer *)self->_synthesizer pauseSpeakingAtNextBoundary:v6 error:0];
    synthesizerForTelephonyMixin = [(VOTOutputSpeechComponent *)self synthesizerForTelephonyMixin];
    [synthesizerForTelephonyMixin pauseSpeakingAtNextBoundary:v6 error:0];

    v8 = +[VOTOutputManager outputManager];
    [v8 disableAudioSession:@"SPEECH"];

    [(SCRCTargetSelectorTimer *)self->_stopSpeakingAfterLongPauseTimer dispatchAfterDelay:90.0];
  }
}

- (void)_handleContinueSpeaking:(id)speaking
{
  if (self->_isPaused)
  {
    v4 = +[VOTOutputManager outputManager];
    [v4 enableAudioSession:@"SPEECH"];
  }

  [(TTSSpeechSynthesizer *)self->_synthesizer continueSpeakingWithError:0];
  synthesizerForTelephonyMixin = [(VOTOutputSpeechComponent *)self synthesizerForTelephonyMixin];
  [synthesizerForTelephonyMixin continueSpeakingWithError:0];

  self->_isPaused = 0;
  stopSpeakingAfterLongPauseTimer = self->_stopSpeakingAfterLongPauseTimer;

  [(SCRCTargetSelectorTimer *)stopSpeakingAfterLongPauseTimer cancel];
}

- (void)_handleStopSpeaking:(id)speaking
{
  speakingCopy = speaking;
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
    v8 = [speakingCopy objectForIndex:24];
    bOOLValue = [v8 BOOLValue];

    if (!bOOLValue)
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
  v11 = [speakingCopy objectForIndex:11];
  unsignedIntValue = [v11 unsignedIntValue];

  v13 = VOTLogSpeech();
  if (os_signpost_enabled(v13))
  {
    LOWORD(v17) = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v13, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "EndSpeaking", "", &v17, 2u);
  }

  v14 = unsignedIntValue == 1;
  [(TTSSpeechSynthesizer *)self->_synthesizer stopSpeakingAtNextBoundary:v14 error:0];
  synthesizerForTelephonyMixin = [(VOTOutputSpeechComponent *)self synthesizerForTelephonyMixin];
  [synthesizerForTelephonyMixin stopSpeakingAtNextBoundary:v14 error:0];

  v10 = [speakingCopy objectForIndex:84];
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

- (void)handleEvent:(id)event
{
  eventCopy = event;
  v4 = [eventCopy objectForIndex:1];
  unsignedIntValue = [v4 unsignedIntValue];

  if (unsignedIntValue > 7)
  {
    if (unsignedIntValue == 8)
    {
      [(VOTOutputSpeechComponent *)self _handlePauseSpeaking:eventCopy];
    }

    else
    {
      v6 = eventCopy;
      if (unsignedIntValue != 9)
      {
        goto LABEL_11;
      }

      [(VOTOutputSpeechComponent *)self _handleContinueSpeaking:eventCopy];
    }
  }

  else if (unsignedIntValue == 6)
  {
    [(VOTOutputSpeechComponent *)self _handlePerformAction:eventCopy];
  }

  else
  {
    v6 = eventCopy;
    if (unsignedIntValue != 7)
    {
      goto LABEL_11;
    }

    [(VOTOutputSpeechComponent *)self _handleStopSpeaking:eventCopy];
  }

  v6 = eventCopy;
LABEL_11:
}

- (void)_speakAllDigits:(id)digits
{
  digitsCopy = digits;
  v3 = +[NSCharacterSet decimalDigitCharacterSet];
  if ([digitsCopy length])
  {
    v4 = 0;
    do
    {
      v5 = [digitsCopy characterAtIndex:v4];
      if ([v3 characterIsMember:v5])
      {
        if (v4 >= 1 && [digitsCopy characterAtIndex:v4 - 1] == 32)
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
        [digitsCopy replaceCharactersInRange:v4 withString:{1, v8}];
        v4 += v7;
      }

      ++v4;
    }

    while (v4 < [digitsCopy length]);
  }
}

- (void)_replaceEmbeddedTTSCommands:(id)commands
{
  commandsCopy = commands;
  [commandsCopy replaceOccurrencesOfString:@"[[" withString:@"[ [" options:0 range:{0, objc_msgSend(commandsCopy, "length")}];
  [commandsCopy replaceOccurrencesOfString:@"]]" withString:@"] ]" options:0 range:{0, objc_msgSend(commandsCopy, "length")}];
}

- (id)_secureTextDescription:(id)description
{
  v3 = [description length];
  v4 = sub_1000511CC(off_1001FDDD0, @"secure.character.count", &stru_1001CBF90);
  v5 = [NSString localizedStringWithFormat:v4, v3];

  return v5;
}

- (id)_localeSpecificURLsForLanguageCode:(id)code
{
  if ([code hasPrefix:@"fi"])
  {
    return &off_1001DB6C0;
  }

  else
  {
    return 0;
  }
}

- (id)_localeSpecificURLRegexForLanguageCode:(id)code
{
  codeCopy = code;
  if (codeCopy)
  {
    if (([0 isEqualToString:codeCopy] & 1) == 0)
    {
      v5 = qword_1001FEAC0;
      qword_1001FEAC0 = 0;
    }

    v6 = qword_1001FEAC0;
    if (!qword_1001FEAC0)
    {
      v7 = [(VOTOutputSpeechComponent *)self _localeSpecificURLsForLanguageCode:codeCopy];
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

- (BOOL)_stringMatchesSpecialCases:(id)cases forSymbol:(id)symbol ranges:(id *)ranges langaugeCode:(id)code
{
  casesCopy = cases;
  symbolCopy = symbol;
  codeCopy = code;
  if (!codeCopy)
  {
    codeCopy = [VOTSharedWorkspace systemSpokenLanguage];
  }

  if ([symbolCopy isEqualToString:@"."])
  {
    v36 = codeCopy;
    rangesCopy = ranges;
    v38 = symbolCopy;
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

    v39 = casesCopy;
    [v14 matchesInString:casesCopy options:0 range:{0, objc_msgSend(casesCopy, "length")}];
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
          range = [v18 range];
          v21 = v20;
          v22 = [v12 count];
          if (v22 < 1)
          {
LABEL_17:
            range2 = [v18 range];
            v25 = [NSValue valueWithRange:range2, v30];
            [v12 addObject:v25];
          }

          else
          {
            v23 = v22;
            v24 = 0;
            while (1)
            {
              v25 = [v12 objectAtIndex:v24];
              rangeValue = [v25 rangeValue];
              v28 = v27;
              v48.location = range;
              v48.length = v21;
              v50.location = rangeValue;
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

            v49.location = range;
            v49.length = v21;
            v51.location = rangeValue;
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
    *rangesCopy = v12;
    v34 = [v33 count] != 0;

    symbolCopy = v38;
    casesCopy = v39;
    codeCopy = v36;
  }

  else
  {
    v34 = 0;
  }

  return v34;
}

- (id)expectedVoiceIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v4 = +[AXSubsystemVoiceOver sharedInstance];
  ignoreLogging = [v4 ignoreLogging];

  if ((ignoreLogging & 1) == 0)
  {
    v6 = +[AXSubsystemVoiceOver identifier];
    v7 = AXLoggerForFacility();

    v8 = AXOSLogLevelFromAXLogLevel();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = AXColorizeFormatLog();
      v18 = identifierCopy;
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
  v12 = identifierCopy;
  selectedLanguage = v12;
  if (!v12)
  {
    selectedLanguage = [VOTSharedWorkspace selectedLanguage];
    if (!selectedLanguage)
    {
      selectedLanguage = [VOTSharedWorkspace systemSpokenLanguage];
    }
  }

  votSettings = [VOTSharedWorkspace votSettings];
  v19[0] = _NSConcreteStackBlock;
  v19[1] = 3221225472;
  v19[2] = sub_10002F514;
  v19[3] = &unk_1001C7E98;
  p_buf = &buf;
  v15 = v11;
  v20 = v15;
  [votSettings voiceSelectionWithLanguageCode:selectedLanguage withActivity:0 completionHandler:v19];

  dispatch_semaphore_wait(v15, 0xFFFFFFFFFFFFFFFFLL);
  voiceId = [*(*(&buf + 1) + 40) voiceId];

  _Block_object_dispose(&buf, 8);

  return voiceId;
}

- (float)_pauseDelayForType:(int)type speechRate:(float)rate voiceType:(int64_t)voiceType
{
  v6 = 0.0;
  if ((type - 1) <= 6)
  {
    LODWORD(v6) = *&aPp[4 * (type - 1) + 4];
  }

  sub_10005057C(v6, rate);
  return result;
}

- (int64_t)_ttsVoiceTypeForPauseCalculationWithVoiceIdentifier:(id)identifier
{
  identifierCopy = identifier;
  if (([TTSAlternativeVoices isNeuralSiriVoiceIdentifier:identifierCopy]& 1) != 0)
  {
    v4 = 5;
  }

  else if (([TTSAlternativeVoices isSiriVoiceIdentifier:identifierCopy]& 1) != 0)
  {
    v4 = 4;
  }

  else if ([TTSAlternativeVoices isOldSiriVoiceIdentifier:identifierCopy])
  {
    v4 = 2;
  }

  else
  {
    v4 = 1;
  }

  return v4;
}

- (id)pauseStringForType:(int)type voiceIdentifier:(id)identifier rate:(float)rate
{
  v6 = *&type;
  identifierCopy = identifier;
  v9 = [(VOTOutputSpeechComponent *)self _ttsVoiceTypeForPauseCalculationWithVoiceIdentifier:identifierCopy];
  *&v10 = rate;
  [(VOTOutputSpeechComponent *)self _pauseDelayForType:v6 speechRate:v9 voiceType:v10];
  v12 = v11;
  if ([identifierCopy hasPrefix:kTTSMacinTalkVoiceIdentifierPrefix])
  {
    v13 = 0;
  }

  else
  {
    v13 = [identifierCopy isEqualToString:AVSpeechSynthesisVoiceIdentifierAlex] ^ 1;
  }

  if (v6 == 2 && !v13 || (v6 & 0xFFFFFFFE) == 2 && ([identifierCopy containsString:@"com.apple.ttsbundle.Carmit"] & 1) != 0)
  {
    v14 = &stru_1001CBF90;
    goto LABEL_15;
  }

  v15 = [TTSSpeechSynthesizer speechMarkupStringForType:0 forIdentifier:identifierCopy string:0];
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

- (void)_insertLongerPausesForSymbol:(id)symbol withText:(id)text allowPausingAtBoundaries:(BOOL)boundaries onlyApplyWhenFollowedBySpace:(BOOL)space languageCode:(id)code voiceIdentifier:(id)identifier rate:(float)rate
{
  spaceCopy = space;
  symbolCopy = symbol;
  textCopy = text;
  codeCopy = code;
  identifierCopy = identifier;
  v17 = [textCopy length];
  if (v17)
  {
    v18 = v17;
    ssmlRegex = [(VOTOutputSpeechComponent *)self ssmlRegex];
    v20 = [ssmlRegex matchesInString:textCopy options:0 range:{0, objc_msgSend(textCopy, "length")}];
    v21 = [v20 ax_mappedArrayUsingBlock:&stru_1001C7ED8];

    v22 = [symbolCopy characterAtIndex:0];
    if (v18 < 1)
    {
      goto LABEL_108;
    }

    v23 = v22;
    v24 = 0;
    while ([textCopy characterAtIndex:v24] == v23)
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
        [textCopy replaceCharactersInRange:0 withString:{v24, &stru_1001CBF90}];
        v18 = [textCopy length];
      }

      if (v18 >= 2)
      {
        v119 = 0;
        v25 = [(VOTOutputSpeechComponent *)self _stringMatchesSpecialCases:textCopy forSymbol:symbolCopy ranges:&v119 langaugeCode:codeCopy];
        v26 = v119;
        v27 = v26;
        if (!v25 || v26)
        {
          v106 = textCopy;
          v109 = v21;
          selfCopy = self;
          if ([v26 count])
          {
            v91 = codeCopy;
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

                  rangeValue = [*(*(&v115 + 1) + 8 * i) rangeValue];
                  v36 = v35;
                  if (rangeValue - v31 >= 1)
                  {
                    v37 = [NSValue valueWithRange:v31];
                    [v95 addObject:v37];
                  }

                  v31 = &rangeValue[v36];
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
              self = selfCopy;
              codeCopy = v91;
              v21 = v109;
              goto LABEL_30;
            }

            v27 = [NSValue valueWithRange:v31, v18 - v31];
            [v95 addObject:v27];
            codeCopy = v91;
            v21 = v109;
            self = selfCopy;
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
            v47 = textCopy;
            v48 = v97;
            goto LABEL_107;
          }

          v99 = v45;
          v96 = v44;
          if (sub_100051384(symbolCopy))
          {
            v46 = 2;
          }

          else if (([symbolCopy isEqualToString:@"."] & 1) != 0 || objc_msgSend(symbolCopy, "isEqualToString:", @"?"))
          {
            v46 = 3;
          }

          else
          {
            v46 = 6;
          }

          v49 = [(AXIndexMap *)self->_currentActionVariants objectForIndex:63];
          bOOLValue = [v49 BOOLValue];

          if (bOOLValue)
          {
            if ([symbolCopy isEqualToString:@"."])
            {
              v46 = v46;
            }

            else
            {
              v46 = 3;
            }
          }

          if (codeCopy || ([VOTSharedWorkspace systemSpokenLanguage], (codeCopy = objc_claimAutoreleasedReturnValue()) != 0))
          {
            v52 = +[AXLanguageManager sharedInstance];
            v53 = [v52 dialectForLanguageID:codeCopy];
            langMap = [v53 langMap];
            v104 = [langMap isRTL] ^ 1;

            textCopy = v106;
          }

          else
          {
            v104 = 1;
          }

          v92 = codeCopy;
          *&v51 = rate;
          v45 = [(VOTOutputSpeechComponent *)self pauseStringForType:v46 voiceIdentifier:identifierCopy rate:v51];
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
              rangeValue2 = [*(*(&v111 + 1) + 8 * v56) rangeValue];
              v59 = v58;
              if (rangeValue2 != v55)
              {
                [v47 appendFormat:@"%@ ", v45];
                v60 = [textCopy substringWithRange:{v55, &rangeValue2[-v55]}];
                [v47 appendString:v60];

                [v47 appendFormat:@" %@", v45];
              }

              v102 = rangeValue2;
              v61 = [textCopy substringWithRange:{rangeValue2, v59}];
              v62 = [v61 mutableCopyWithZone:0];

              v101 = v59;
              if (v59 <= [v62 length])
              {
                v63 = 0;
                while (1)
                {
                  v64 = v45;
                  v65 = [v62 rangeOfString:symbolCopy options:2 range:{v63, v59}];
                  v67 = v66;
                  v68 = VOTLogSpeech();
                  if (os_log_type_enabled(v68, OS_LOG_TYPE_DEBUG))
                  {
                    *buf = 138740739;
                    v121 = symbolCopy;
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

                  if (!boundaries && !v65)
                  {
                    break;
                  }

                  if (!boundaries && v65 == [textCopy length] - 1)
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
                      textCopy = v106;
                    }

                    else
                    {
                      v75 = [v62 characterAtIndex:v65 + 1];
                      if ([v96 characterIsMember:v72])
                      {
                        v76 = [v96 characterIsMember:v75];
                        textCopy = v106;
                        v48 = v97;
                        if (v76)
                        {
                          *&v77 = rate;
                          v71 = [(VOTOutputSpeechComponent *)selfCopy pauseStringForType:7 voiceIdentifier:identifierCopy rate:v77];

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
                        textCopy = v106;
                        v48 = v97;
                      }
                    }
                  }

                  else
                  {
                    v70 = 1;
                  }

LABEL_67:
                  if (spaceCopy && v65 + 1 < [v62 length])
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
                      [NSString stringWithFormat:@"%@%@", symbolCopy, v71, v90];
                    }

                    else
                    {
                      [NSString stringWithFormat:@"%C%@%@", 8207, symbolCopy, v71];
                    }
                    v78 = ;

                    [v62 replaceOccurrencesOfString:symbolCopy withString:v78 overallRange:v65 avoidingRanges:{v67, v109}];
                    ssmlRegex2 = [(VOTOutputSpeechComponent *)selfCopy ssmlRegex];
                    v80 = [ssmlRegex2 matchesInString:v62 options:0 range:{0, objc_msgSend(v62, "length")}];
                    v81 = [v80 ax_mappedArrayUsingBlock:&stru_1001C7EF8];

                    v70 = 1;
                    v71 = v78;
                    v109 = v81;
                    textCopy = v106;
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
                    textCopy = v106;
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

                if ([textCopy length] < 2 || (v69 = objc_msgSend(v62, "characterAtIndex:", 1), (objc_msgSend(qword_1001FEAD0, "characterIsMember:", v69) & 1) == 0))
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

              if (v55 < [textCopy length])
              {
                *&v87 = rate;
                v88 = [(VOTOutputSpeechComponent *)selfCopy pauseStringForType:6 voiceIdentifier:identifierCopy rate:v87];
                v89 = [textCopy substringFromIndex:v55];
                [v47 appendFormat:@"%@ %@", v88, v89];
              }

              codeCopy = v92;
              v21 = v109;
              v44 = v96;
LABEL_107:

              [textCopy setString:v47];
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

- (void)_applyCamelCaseSeparation:(id)separation
{
  separationCopy = separation;
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
  v5 = [separationCopy length];
  v12 = _NSConcreteStackBlock;
  v13 = 3221225472;
  v14 = sub_100030740;
  v15 = &unk_1001C7F40;
  v17 = &v26;
  v6 = separationCopy;
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

- (void)_applyTelephoneFormatting:(id)formatting withRanges:(id)ranges languageCode:(id)code voiceIdentifier:(id)identifier rate:(float)rate
{
  formattingCopy = formatting;
  rangesCopy = ranges;
  codeCopy = code;
  identifierCopy = identifier;
  if (!qword_1001FEAE8)
  {
    v15 = [NSRegularExpression regularExpressionWithPattern:@"[0-9]{1 options:3}([  ][0-9]{3})+\\s*$" error:0, 0];
    v16 = qword_1001FEAE8;
    qword_1001FEAE8 = v15;
  }

  v40 = [formattingCopy length];
  v44 = +[NSMutableString string];
  v42 = +[NSCharacterSet decimalDigitCharacterSet];
  *&v17 = rate;
  v49 = [(VOTOutputSpeechComponent *)self pauseStringForType:6 voiceIdentifier:identifierCopy rate:v17];
  v50 = 0u;
  v51 = 0u;
  v52 = 0u;
  v53 = 0u;
  obj = rangesCopy;
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

        rangeValue = [*(*(&v50 + 1) + 8 * i) rangeValue];
        v22 = v21;
        v23 = [formattingCopy substringWithRange:{rangeValue, v21}];
        v24 = [v23 rangeOfString:@"\n"];

        if (v24 == 0x7FFFFFFFFFFFFFFFLL)
        {
          v25 = [formattingCopy substringWithRange:{rangeValue, v22}];
          if (!-[VOTOutputSpeechComponent _currentLocaleUsesSpaceAsSeparator](self, "_currentLocaleUsesSpaceAsSeparator") || ([qword_1001FEAE8 matchesInString:v25 options:0 range:{0, objc_msgSend(v25, "length")}], v27 = objc_claimAutoreleasedReturnValue(), v28 = objc_msgSend(v27, "count"), v27, !v28))
          {
            v46 = v25;
            if (rangeValue != v47)
            {
              v29 = [formattingCopy substringWithRange:{v47, rangeValue - v47}];
              [v44 appendString:v29];
            }

            v30 = identifierCopy;
            *&v26 = rate;
            v31 = [(VOTOutputSpeechComponent *)self pauseStringForType:6 voiceIdentifier:identifierCopy rate:v26];
            v32 = [NSMutableString stringWithString:v31];

            v47 = &rangeValue[v22];
            if (rangeValue < &rangeValue[v22])
            {
              do
              {
                v33 = [formattingCopy characterAtIndex:rangeValue];
                if ([v42 characterIsMember:v33])
                {
                  *&v34 = rate;
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
                    currentAllPunctuationTable = [(VOTOutputSpeechComponent *)self currentAllPunctuationTable];
                    v37 = [currentAllPunctuationTable objectForIndex:v33];

                    if (v37)
                    {
                      [v32 appendFormat:@"%@ %@ ", v37, v49];
                    }

                    else
                    {
                      v38 = [formattingCopy substringWithRange:{rangeValue, 1}];
                      [v32 appendFormat:@"%@", v38];
                    }
                  }
                }

                ++rangeValue;
                --v22;
              }

              while (v22);
            }

            [v32 appendString:v49];
            [v44 appendString:v32];

            identifierCopy = v30;
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
    v39 = [formattingCopy substringFromIndex:?];
    [v44 appendString:v39];
  }

  [formattingCopy setString:v44];
}

- (void)_formatTelephoneNumber:(id)number languageCode:(id)code voiceIdentifier:(id)identifier rate:(float)rate
{
  numberCopy = number;
  codeCopy = code;
  identifierCopy = identifier;
  v12 = qword_1001FEAF0;
  if (!qword_1001FEAF0)
  {
    v13 = [NSRegularExpression regularExpressionWithPattern:@"([+0-9]{6 options:15}|(((\\s?|\\b)([0-9]{2 error:3}\\s)?(\\(?[0-9]{3}\\)?)?(\\s|-))|\\s)?([0-9]{2, 7})(-|\\s)([0-9]{3, 7}))(\\s|\\b)", 0, 0];
    v14 = qword_1001FEAF0;
    qword_1001FEAF0 = v13;

    v12 = qword_1001FEAF0;
  }

  v15 = [v12 matchesInString:numberCopy options:0 range:{0, objc_msgSend(numberCopy, "length")}];
  if ([v15 count])
  {
    v16 = [v15 axMapObjectsUsingBlock:&stru_1001C7F80];
    *&v17 = rate;
    [(VOTOutputSpeechComponent *)self _applyTelephoneFormatting:numberCopy withRanges:v16 languageCode:codeCopy voiceIdentifier:identifierCopy rate:v17];
  }
}

- (BOOL)_formatDetectedFinnishDates:(id)dates
{
  datesCopy = dates;
  v4 = qword_1001FEAF8;
  if (!qword_1001FEAF8)
  {
    v5 = [NSRegularExpression regularExpressionWithPattern:@"(?<!\\.)\\b([0-9]{1 options:2})[\\.]([0-9]{1 error:2})[\\.](?:([0-9]{4})\\b)(?!\\.?[0-9])", 0, 0];
    v6 = qword_1001FEAF8;
    qword_1001FEAF8 = v5;

    v4 = qword_1001FEAF8;
  }

  v7 = [v4 matchesInString:datesCopy options:0 range:{0, objc_msgSend(datesCopy, "length")}];
  if ([v7 count])
  {
    v39 = datesCopy;
    v8 = [datesCopy copy];
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
              range = [v14 range];
              [v14 range];
              [v39 replaceCharactersInRange:&v41[range] withString:{v30, v28}];
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
    datesCopy = v39;
    v7 = v35;
  }

  else
  {
    v33 = 0;
  }

  return v33;
}

- (void)_formatDetectedDates:(id)dates voiceIdentifier:(id)identifier languageCode:(id)code rate:(float)rate
{
  datesCopy = dates;
  identifierCopy = identifier;
  codeCopy = code;
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

  if (![codeCopy hasPrefix:@"fi"] || !-[VOTOutputSpeechComponent _formatDetectedFinnishDates:](self, "_formatDetectedFinnishDates:", datesCopy))
  {
    v14 = [qword_1001FEB00 matchesInString:datesCopy options:0 range:{0, objc_msgSend(datesCopy, "length")}];
    if ([v14 count])
    {
      v50 = codeCopy;
      v15 = +[NSMutableString string];
      v48 = [datesCopy length];
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
        v51 = datesCopy;
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

            range = [*(*(&v56 + 1) + 8 * v20) range];
            v23 = v22;
            v24 = &range[-v18];
            if (range != v18)
            {
              v25 = [datesCopy substringWithRange:{v18, v24}];
              [v15 appendString:v25];
            }

            v26 = 0;
            if (range)
            {
              for (i = 0; i != range; ++i)
              {
                v28 = [datesCopy characterAtIndex:{i, v24}];
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

            v18 = &range[v23];
            v32 = [datesCopy substringWithRange:{range, v23}];
            v33 = [v32 length] < 4;
            v35 = v18 < [datesCopy length] && objc_msgSend(datesCopy, "characterAtIndex:", v18) == 37;
            if (((v33 | v26 | v35) & 1) == 0)
            {
              *&v34 = rate;
              v36 = [(VOTOutputSpeechComponent *)self pauseStringForType:6 voiceIdentifier:identifierCopy rate:v34];
              v37 = [NSString stringWithFormat:@" %@ ", v36];

              v38 = [v32 stringByReplacingOccurrencesOfString:@"/" withString:v37];

              [v38 stringByReplacingOccurrencesOfString:@"-" withString:v37];
              v39 = v15;
              v41 = v40 = v19;

              selectedLanguage = [VOTSharedWorkspace selectedLanguage];
              v43 = sub_100051B24(46, @"UnicodeHex.Alternate1.", @"VOTOutputPunctuation", selectedLanguage);

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
              datesCopy = v51;
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
        v46 = [datesCopy substringFromIndex:v18];
        [v15 appendString:v46];
      }

      v47 = VOTLogSpeech();
      v14 = v49;
      if (os_log_type_enabled(v47, OS_LOG_TYPE_DEBUG))
      {
        sub_10012946C();
      }

      [datesCopy setString:v15];
      codeCopy = v50;
    }
  }
}

- (void)_formatJapaneseYen:(id)yen
{
  yenCopy = yen;
  if (qword_1001FEB10 != -1)
  {
    sub_1001294E0();
  }

  v4 = [qword_1001FEB08 matchesInString:yenCopy options:0 range:{0, objc_msgSend(yenCopy, "length")}];
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

        range = [*(*(&v11 + 1) + 8 * i) range];
        [yenCopy replaceOccurrencesOfString:@"JP" withString:&stru_1001CBF90 options:0 range:{range, v10}];
      }

      v6 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v6);
  }
}

- (void)_applyTransliteration:(id)transliteration languageCode:(id)code
{
  transliterationCopy = transliteration;
  codeCopy = code;
  v6 = +[AXLanguageManager sharedInstance];
  v7 = v6;
  if (codeCopy)
  {
    v8 = [v6 dialectForLanguageID:codeCopy];
  }

  else
  {
    systemSpokenLanguage = [VOTSharedWorkspace systemSpokenLanguage];
    v8 = [v7 dialectForLanguageID:systemSpokenLanguage];
  }

  if ([v8 speakingRequiresTransliteration])
  {
    v10 = [v8 transliteratedStringForString:transliterationCopy];
    [transliterationCopy replaceCharactersInRange:0 withString:{objc_msgSend(transliterationCopy, "length"), v10}];
  }
}

- (void)_formatEthernetMacAddress:(id)address voiceIdentifier:(id)identifier rate:(float)rate
{
  addressCopy = address;
  identifierCopy = identifier;
  v36 = 0;
  v10 = [NSRegularExpression regularExpressionWithPattern:@"\\b(\\S\\S)\\s?:\\s?(\\S\\S)\\s?:\\s?(\\S\\S)\\s?:\\s?(\\S\\S)\\s?:\\s?(\\S\\S)\\s?:\\s?(\\S\\S)\\b" options:1 error:&v36];
  v11 = v36;
  if (v10)
  {
    v12 = +[NSMutableString string];
    v13 = [v10 matchesInString:addressCopy options:0 range:{0, objc_msgSend(addressCopy, "length")}];
    if ([v13 count])
    {
      v31 = v10;
      v35 = addressCopy;
      v29 = v13;
      firstObject = [v13 firstObject];
      numberOfRanges = [firstObject numberOfRanges];
      *&v15 = rate;
      [(VOTOutputSpeechComponent *)self pauseStringForType:6 voiceIdentifier:identifierCopy rate:v15];
      v33 = v32 = identifierCopy;
      *&v16 = rate;
      v17 = [(VOTOutputSpeechComponent *)self pauseStringForType:4 voiceIdentifier:identifierCopy rate:v16];
      v18 = numberOfRanges != 6;
      v30 = v11;
      if (numberOfRanges <= v18)
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
          v21 = [firstObject rangeAtIndex:v18];
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
          uppercaseString = [v27 uppercaseString];

          [v12 appendFormat:@"%C%@%C%@", objc_msgSend(uppercaseString, "characterAtIndex:", 0), v17, objc_msgSend(uppercaseString, "characterAtIndex:", 1), v33];
          ++v18;
          v19 = location;
          v20 = length;
        }

        while (numberOfRanges != v18);
      }

      addressCopy = v35;
      v10 = v31;
      if ([v12 length])
      {
        [v35 replaceCharactersInRange:location withString:{length, v12}];
      }

      identifierCopy = v32;
      v13 = v29;
      v11 = v30;
    }
  }

  else
  {
    _AXLogWithFacility();
  }
}

- (void)_formatNumbers:(id)numbers action:(id)action
{
  numbersCopy = numbers;
  v7 = [(VOTOutputComponent *)self determineActivityForAction:action];
  numberFeedback = [VOTSharedWorkspace numberFeedback];
  numberFeedback2 = [v7 numberFeedback];

  if (numberFeedback2)
  {
    numberFeedback3 = [v7 numberFeedback];
    numberFeedback = [numberFeedback3 integerValue];
  }

  if (numberFeedback == 2)
  {
    v37 = v7;
    if (qword_1001FEB20 != -1)
    {
      sub_1001294F4();
    }

    [qword_1001FEB18 matchesInString:numbersCopy options:0 range:{0, objc_msgSend(numbersCopy, "length")}];
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

          range = [*(*(&v42 + 1) + 8 * i) range];
          v18 = v17;
          v19 = objc_opt_new();
          v40[0] = _NSConcreteStackBlock;
          v40[1] = 3221225472;
          v40[2] = sub_10003225C;
          v40[3] = &unk_1001C7FE8;
          v41 = v19;
          v20 = v19;
          [numbersCopy enumerateSubstringsInRange:&range[v13] options:v18 usingBlock:{2, v40}];
          [numbersCopy replaceCharactersInRange:&range[v13] withString:{v18, v20}];
          v13 += [v20 length] - v18;
        }

        v12 = [obj countByEnumeratingWithState:&v42 objects:v46 count:16];
      }

      while (v12);
    }

    v21 = [NSCharacterSet characterSetWithCharactersInString:@"$¢£¥€₹₽¤"];
    v22 = +[NSMutableArray array];
    if ([numbersCopy length])
    {
      v23 = 0;
      do
      {
        v24 = [numbersCopy characterAtIndex:v23];
        v39 = v24;
        if ([v21 characterIsMember:v24])
        {
          v25 = [NSValue valueWithRange:v23, 1];
          [v22 addObject:v25];

          v26 = v39;
          selectedLanguage = [VOTSharedWorkspace selectedLanguage];
          v28 = sub_100051B24(v26, @"UnicodeHex.", @"VOTOutputPunctuation", selectedLanguage);

          if (!v28)
          {
            v28 = [NSString stringWithCharacters:&v39 length:1];
          }

          v29 = [NSString stringWithFormat:@" %@ ", v28];
          [numbersCopy replaceCharactersInRange:v23 withString:{1, v29}];

          v30 = [v28 length];
          if ([v22 count])
          {
            v31 = 0;
            v32 = v30 + 1;
            do
            {
              v33 = [v22 objectAtIndexedSubscript:v31];
              rangeValue = [v33 rangeValue];
              if (rangeValue > v23)
              {
                v36 = [NSValue valueWithRange:&v32[rangeValue], v35];
                [v22 setObject:v36 atIndexedSubscript:v31];
              }

              ++v31;
            }

            while (v31 < [v22 count]);
          }
        }

        ++v23;
      }

      while (v23 < [numbersCopy length]);
    }

    v7 = v37;
  }
}

- (void)_formatUSHeight:(id)height voiceIdentifier:(id)identifier
{
  heightCopy = height;
  v5 = [AVSpeechSynthesisVoice _voiceFromInternalVoiceListWithIdentifier:identifier];
  language = [v5 language];
  v7 = [language isEqualToString:@"en-US"];

  if (v7)
  {
    v8 = heightCopy;
    if (qword_1001FEB30 != -1)
    {
      sub_100129508();
      v8 = heightCopy;
    }

    v9 = [qword_1001FEB28 matchesInString:heightCopy options:0 range:{0, objc_msgSend(v8, "length")}];
    firstObject = [v9 firstObject];
    if ([firstObject numberOfRanges] == 5)
    {
      v11 = [firstObject rangeAtIndex:1];
      v13 = [heightCopy substringWithRange:{v11, v12}];
      intValue = [v13 intValue];

      v15 = [firstObject rangeAtIndex:3];
      v17 = [heightCopy substringWithRange:{v15, v16}];
      intValue2 = [v17 intValue];

      v19 = objc_alloc_init(NSMeasurementFormatter);
      [v19 setUnitStyle:3];
      [v19 setUnitOptions:1];
      v20 = +[AXLanguageManager sharedInstance];
      selectedLanguage = [VOTSharedWorkspace selectedLanguage];
      v22 = [v20 dialectForLanguageID:selectedLanguage];
      locale = [v22 locale];
      [v19 setLocale:locale];

      v24 = [NSMeasurement alloc];
      v25 = intValue;
      v26 = +[NSUnitLength feet];
      v27 = [v24 initWithDoubleValue:v26 unit:v25];
      v28 = [v19 stringFromMeasurement:v27];
      v29 = [NSMeasurement alloc];
      v30 = +[NSUnitLength inches];
      v31 = [v29 initWithDoubleValue:v30 unit:intValue2];
      v36 = [v19 stringFromMeasurement:v31];
      v32 = __AXStringForVariables();

      if ([v32 length])
      {
        v33 = [firstObject rangeAtIndex:0];
        v35 = [heightCopy substringWithRange:{v33, v34}];
        [heightCopy replaceOccurrencesOfString:v35 withString:v32 options:0 range:{0, objc_msgSend(heightCopy, "length")}];
      }
    }
  }
}

- (void)_formatATVStyleMediaDurations:(id)durations
{
  durationsCopy = durations;
  v22 = durationsCopy;
  if (qword_1001FEB40 != -1)
  {
    sub_10012951C();
    durationsCopy = v22;
  }

  v4 = [qword_1001FEB38 matchesInString:v22 options:0 range:{0, objc_msgSend(durationsCopy, "length")}];
  firstObject = [v4 firstObject];
  if ([firstObject numberOfRanges] == 5)
  {
    v6 = 0.0;
    if ([firstObject rangeAtIndex:2] != 0x7FFFFFFFFFFFFFFFLL)
    {
      v7 = [firstObject rangeAtIndex:2];
      v9 = [v22 substringWithRange:{v7, v8}];
      [v9 floatValue];
      v11 = v10;

      v6 = v11 * 60.0;
    }

    v12 = [firstObject rangeAtIndex:3];
    v14 = [v22 substringWithRange:{v12, v13}];
    [v14 floatValue];
    v16 = v15;

    selectedLanguage = [VOTSharedWorkspace selectedLanguage];
    v18 = sub_1000513DC(0, selectedLanguage, v16 * 60.0 + v6 * 60.0);

    if ([v18 length])
    {
      v19 = [firstObject rangeAtIndex:0];
      v21 = [v22 substringWithRange:{v19, v20}];
      [v22 replaceOccurrencesOfString:v21 withString:v18 options:0 range:{0, objc_msgSend(v22, "length")}];
    }
  }
}

- (void)_formatIPAddress:(id)address voiceIdentifier:(id)identifier rate:(float)rate
{
  addressCopy = address;
  identifierCopy = identifier;
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

  v13 = [v8 matchesInString:addressCopy options:0 range:{0, objc_msgSend(addressCopy, "length")}];
  v14 = [qword_1001FEB50 matchesInString:addressCopy options:0 range:{0, objc_msgSend(addressCopy, "length")}];
  v15 = [v13 arrayByAddingObjectsFromArray:v14];
  if ([v15 count])
  {
    v38 = v14;
    v39 = v13;
    v16 = +[NSMutableString string];
    v42 = addressCopy;
    v36 = [addressCopy length];
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

          range = [*(*(&v44 + 1) + 8 * i) range];
          v24 = v23;
          if (range > v19)
          {
            v25 = [v42 substringWithRange:{v19, range - v19}];
            [v16 appendString:v25];
          }

          v19 = &range[v24];
          v26 = [v42 substringWithRange:{range, v24}];
          v27 = [v26 mutableCopyWithZone:0];

          selectedLanguage = [VOTSharedWorkspace selectedLanguage];
          v29 = sub_100051B24(46, @"UnicodeHex.Alternate1.", @"VOTOutputPunctuation", selectedLanguage);

          if (v29)
          {
            v31 = v29;
          }

          else
          {
            v31 = @".";
          }

          *&v30 = rate;
          v32 = [(VOTOutputSpeechComponent *)self pauseStringForType:6 voiceIdentifier:identifierCopy rate:v30];
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

    addressCopy = v42;
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

- (void)_formatExplicitTimeDuration:(id)duration isMMSS:(BOOL)s languageCode:(id)code
{
  sCopy = s;
  durationCopy = duration;
  codeCopy = code;
  v9 = [NSCharacterSet characterSetWithCharactersInString:@", "];
  v10 = [durationCopy stringByTrimmingCharactersInSet:v9];

  [durationCopy setString:v10];
  v11 = [durationCopy componentsSeparatedByString:@":"];
  v12 = [v11 count];
  v13 = v12 == 3 || sCopy;
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
    sub_10012959C(durationCopy, v25, v20);
  }

  if (v20 != -1.0)
  {
    v26 = sub_1000513DC(v13 ^ 1, codeCopy, v20);
    [durationCopy setString:v26];
  }

  v27 = VOTLogSpeech();
  if (os_log_type_enabled(v27, OS_LOG_TYPE_DEBUG))
  {
    sub_100129620();
  }
}

- (void)_formatTimeDuration:(id)duration didMatch:(BOOL *)match voiceIdentifier:(id)identifier rate:(float)rate
{
  durationCopy = duration;
  identifierCopy = identifier;
  *match = 0;
  v10 = qword_1001FEB58;
  if (!qword_1001FEB58)
  {
    v11 = [NSRegularExpression regularExpressionWithPattern:@"\\b((?<!:)[0-9]{1 options:2}:[0-9]{2}(?!:))\\s?(am|pm|AM|PM|[:cntrl:])?" error:0, 0];
    v12 = qword_1001FEB58;
    qword_1001FEB58 = v11;

    v10 = qword_1001FEB58;
  }

  v13 = [v10 matchesInString:durationCopy options:0 range:{0, objc_msgSend(durationCopy, "length")}];
  v14 = qword_1001FEB60;
  if (!qword_1001FEB60)
  {
    v15 = [NSRegularExpression regularExpressionWithPattern:@"\\b([0-9]{1 options:2}:[0-9]{2})\\s?(-|–)\\s?([0-9]{1 error:2}:[0-9]{2})", 0, 0];
    v16 = qword_1001FEB60;
    qword_1001FEB60 = v15;

    v14 = qword_1001FEB60;
  }

  v69 = [v14 matchesInString:durationCopy options:0 range:{0, objc_msgSend(durationCopy, "length")}];
  v67 = durationCopy;
  if ([v69 count])
  {
    matchCopy = match;
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
          range = [v21 range];
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
                v90.location = range;
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
    durationCopy = v67;
    match = matchCopy;
  }

  else
  {
    v30 = v13;
  }

  if (![v30 count])
  {
    goto LABEL_56;
  }

  *match = 1;
  obja = +[NSMutableString string];
  v61 = [durationCopy length];
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

      range2 = [*(*(&v74 + 1) + 8 * k) range];
      v36 = v35;
      if (range2 != v31)
      {
        v37 = [durationCopy substringWithRange:{v31, range2 - v31}];
        [obja appendString:v37];
      }

      v38 = [durationCopy substringWithRange:{range2, v36}];
      currentCalendar = [v32[290] currentCalendar];
      aMSymbol = [currentCalendar AMSymbol];
      if ([v38 rangeOfString:aMSymbol options:1] != 0x7FFFFFFFFFFFFFFFLL)
      {

LABEL_40:
        [obja appendString:v38];
        goto LABEL_49;
      }

      currentCalendar2 = [v32[290] currentCalendar];
      pMSymbol = [currentCalendar2 PMSymbol];
      v43 = [v38 rangeOfString:pMSymbol options:1];

      v32 = &kVOTEventCommandBrailleStatusRouter_ptr;
      durationCopy = v67;

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
        integerValue = [v46 integerValue];
        v32 = &kVOTEventCommandBrailleStatusRouter_ptr;
        if (integerValue)
        {
          v54 = integerValue;
          intValue = [v46 intValue];
          if (v54 >= 10)
          {
            v56 = @"%d";
          }

          else
          {
            v56 = @"0%d";
          }

          v57 = [NSString stringWithFormat:v56, intValue];
        }

        else
        {
          v57 = &stru_1001CBF90;
        }

        v46 = v57;
        durationCopy = v67;
      }

      *&v52 = rate;
      v58 = [(VOTOutputSpeechComponent *)self pauseStringForType:6 voiceIdentifier:identifierCopy rate:v52];
      [obja appendFormat:@" %@ %@ %@ ", v45, v58, v46];

LABEL_49:
      v31 = &range2[v36];
    }

    v71 = [v64 countByEnumeratingWithState:&v74 objects:v86 count:16];
  }

  while (v71);
LABEL_51:

  if (v31 < v61)
  {
    v59 = [durationCopy substringFromIndex:v31];
    [obja appendString:v59];
  }

  v60 = VOTLogSpeech();
  v30 = v66;
  if (os_log_type_enabled(v60, OS_LOG_TYPE_DEBUG))
  {
    sub_100129688();
  }

  [durationCopy setString:obja];
LABEL_56:
}

- (void)_appendLiteralCharacterString:(id)string toString:(id)toString hasPhoneContext:(BOOL)context hasMathContext:(BOOL)mathContext action:(id)action punctuationTableLanguageUsed:(BOOL *)used
{
  mathContextCopy = mathContext;
  contextCopy = context;
  stringCopy = string;
  toStringCopy = toString;
  actionCopy = action;
  v17 = [actionCopy objectForVariant:58];
  bOOLValue = [v17 BOOLValue];

  v19 = [actionCopy objectForVariant:57];
  bOOLValue2 = [v19 BOOLValue];

  systemSpokenLanguage3 = [actionCopy objectForVariant:17];
  if ([stringCopy length] > 2)
  {
    v26 = 0;
    goto LABEL_24;
  }

  v22 = AXUnicodeCodePointForCharacterString();
  v81 = v22;
  if (contextCopy)
  {
    v23 = sub_100051B24(v22, @"UnicodeHex.PhoneContext.", @"VOTOutputPunctuation", systemSpokenLanguage3);
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
    if (systemSpokenLanguage3)
    {
      goto LABEL_18;
    }

    goto LABEL_17;
  }

  if (mathContextCopy)
  {
    v27 = @"UnicodeHex.Math.";
    goto LABEL_12;
  }

  if (bOOLValue2)
  {
    v27 = @"UnicodeHex.TypingContext.";
LABEL_12:
    v28 = sub_100051B24(v22, v27, @"VOTOutputPunctuation", systemSpokenLanguage3);
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

  v44 = [actionCopy objectForVariant:42];

  if (v44)
  {
    v82[1] = 0;
    objc_opt_class();
    v45 = [actionCopy objectForVariant:42];
    v46 = __UIAccessibilityCastAsClass();

    if (v46)
    {
      v47 = [NSString stringWithFormat:@"UnicodeHex.%@.", v46];
      v48 = sub_100051B24(v81, v47, @"VOTOutputPunctuation", systemSpokenLanguage3);
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
  v50 = [(VOTOutputSpeechComponent *)self _determinePunctuationGroupForAction:actionCopy isDefault:v82];
  v51 = v50;
  if ((v82[0] | bOOLValue))
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
    v24 = [(VOTOutputSpeechComponent *)self _replacePunctuation:stringCopy punctuationGroup:v78 hasMathContext:0 hasPhoneContext:0 isText:0 replaceCommas:v54 languageCode:systemSpokenLanguage3 speakPunctuationCounts:v75];
    if ([v24 length] && (objc_msgSend(v24, "isEqualToString:", stringCopy) & 1) == 0)
    {
      if (!sub_1000F2430([v24 characterAtIndex:0], objc_msgSend(stringCopy, "characterAtIndex:", 0)))
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
    if ([stringCopy length] != 1 && (objc_msgSend(actionCopy, "objectForVariant:", 28), v79 = used, v55 = self, v56 = v51, v57 = objc_claimAutoreleasedReturnValue(), v58 = objc_msgSend(v57, "BOOLValue"), v57, v51 = v56, self = v55, used = v79, !v58) || (systemSpokenLanguage3 ? (v59 = bOOLValue) : (v59 = 0), (v59 & 1) != 0))
    {
      v26 = 0;
      goto LABEL_83;
    }

    v80 = v51;
    selectedLanguage = [VOTSharedWorkspace selectedLanguage];
    systemSpokenLanguage = [VOTSharedWorkspace systemSpokenLanguage];
    currentAllPunctuationTable = [(VOTOutputSpeechComponent *)self currentAllPunctuationTable];
    v76 = systemSpokenLanguage;
    v77 = selectedLanguage;
    v60 = [(VOTOutputSpeechComponent *)self punctuationReplacement:stringCopy withGroup:0 baseTable:currentAllPunctuationTable languageCode:systemSpokenLanguage3 selectedLanguage:selectedLanguage spokenLanguage:systemSpokenLanguage];

    if (-[__CFString length](v60, "length") == 1 && (+[NSCharacterSet whitespaceCharacterSet](NSCharacterSet, "whitespaceCharacterSet"), v64 = objc_claimAutoreleasedReturnValue(), v65 = [v64 characterIsMember:{-[__CFString characterAtIndex:](v60, "characterAtIndex:", 0)}], v64, v65))
    {
      v66 = v77;
      if (!v66 && systemSpokenLanguage3)
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
          v66 = systemSpokenLanguage3;
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
      if (systemSpokenLanguage3)
      {
        v66 = [v70 dialectForLanguageID:systemSpokenLanguage3];
      }

      else
      {
        systemSpokenLanguage2 = [VOTSharedWorkspace systemSpokenLanguage];
        v66 = [v71 dialectForLanguageID:systemSpokenLanguage2];
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

  v60 = sub_100051B24(v81, @"UnicodeHex.", @"VOTOutputPunctuation", systemSpokenLanguage3);
  v26 = 0;
LABEL_82:

  v24 = v60;
LABEL_83:

  if (!systemSpokenLanguage3)
  {
LABEL_17:
    systemSpokenLanguage3 = [VOTSharedWorkspace systemSpokenLanguage];
  }

LABEL_18:
  if ([stringCopy length] == 1)
  {
    v29 = sub_100033E58([stringCopy characterAtIndex:0]);
    v30 = v29;
    if (v29)
    {
      v31 = v29;

      v24 = v31;
    }
  }

  if (v24)
  {
    [actionCopy removeObjectForVariant:15];
    [toStringCopy appendString:@" "];
    [toStringCopy appendString:v24];
    [toStringCopy appendString:@" "];

    v32 = stringCopy;
    goto LABEL_34;
  }

LABEL_24:
  v33 = sub_10005088C(stringCopy);
  v32 = [(VOTOutputSpeechComponent *)self _literalStringMarkupForString:stringCopy languageCode:systemSpokenLanguage3 action:actionCopy];

  [toStringCopy appendString:v32];
  if (!v33)
  {
    goto LABEL_34;
  }

  v34 = +[AXSettings sharedInstance];
  voiceOverCapitalLetterFeedback = [v34 voiceOverCapitalLetterFeedback];

  if (voiceOverCapitalLetterFeedback == 2)
  {
    v36 = @"Sounds/Capitals.aiff";
    v37 = actionCopy;
    v38 = 75;
  }

  else
  {
    v39 = +[AXSettings sharedInstance];
    voiceOverCapitalLetterFeedback2 = [v39 voiceOverCapitalLetterFeedback];

    if (voiceOverCapitalLetterFeedback2 != 1)
    {
      goto LABEL_34;
    }

    if ([VOTSharedWorkspace typingPitchChangeEnabled] && (objc_msgSend(actionCopy, "objectForVariant:", 32), v41 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v41, "floatValue"), v43 = fabs(v42 + -1.5), v41, v43 < 0.001))
    {
      v36 = &off_1001D9920;
    }

    else
    {
      v36 = &off_1001D9930;
    }

    v37 = actionCopy;
    v38 = 32;
  }

  [v37 setObject:v36 forVariant:v38];
LABEL_34:
  if (used)
  {
    *used = v26;
  }
}

- (id)_literalStringMarkupForString:(id)string languageCode:(id)code action:(id)action
{
  synthesizer = self->_synthesizer;
  actionCopy = action;
  codeCopy = code;
  stringCopy = string;
  voiceIdentifier = [(TTSSpeechSynthesizer *)synthesizer voiceIdentifier];
  [(TTSSpeechSynthesizer *)self->_synthesizer setVoiceIdentifier:0];
  v13 = [(VOTOutputSpeechComponent *)self _determineVoiceIdentifier:actionCopy languageCode:codeCopy];

  v14 = sub_100050908(stringCopy, v13);

  [(TTSSpeechSynthesizer *)self->_synthesizer setVoiceIdentifier:voiceIdentifier];

  return v14;
}

- (id)_stringForLiteralText:(id)text action:(id)action allowChangingLanguageForPunctuation:(BOOL)punctuation
{
  punctuationCopy = punctuation;
  textCopy = text;
  actionCopy = action;
  v9 = [textCopy length];
  v10 = [actionCopy objectForVariant:55];
  bOOLValue = [v10 BOOLValue];

  v12 = [actionCopy objectForVariant:56];
  bOOLValue2 = [v12 BOOLValue];

  v14 = [actionCopy objectForVariant:66];
  bOOLValue3 = [v14 BOOLValue];

  if ([textCopy length] >= 2 && v9 == 1)
  {
    v16 = [(VOTOutputSpeechComponent *)self _stringForNormalText:textCopy action:actionCopy allowPausingAtBoundaries:0 ignoreLeadingCommas:bOOLValue3];
  }

  else
  {
    v35 = actionCopy;
    if (punctuationCopy && [textCopy length] && (objc_msgSend(textCopy, "rangeOfComposedCharacterSequenceAtIndex:", 0), v17 == objc_msgSend(textCopy, "length")))
    {
      v37 = 0;
      v16 = +[NSMutableString string];
      [(VOTOutputSpeechComponent *)self _appendLiteralCharacterString:textCopy toString:v16 hasPhoneContext:bOOLValue hasMathContext:bOOLValue2 action:actionCopy punctuationTableLanguageUsed:&v37];
      if (v37 == 1)
      {
        selectedLanguage = [VOTSharedWorkspace selectedLanguage];

        if (!selectedLanguage)
        {
          v19 = [actionCopy objectForVariant:17];
          if (!v19)
          {
            systemSpokenLanguage = [VOTSharedWorkspace systemSpokenLanguage];
            v19 = AXLanguageCanonicalFormToGeneralLanguage();
          }

          v21 = [(VOTOutputSpeechComponent *)self _determineVoiceIdentifier:actionCopy languageCode:v19];
          v22 = [TTSSpeechSynthesizer voiceForIdentifier:v21];
          language = [v22 language];

          v24 = VOTLogSpeech();
          if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
          {
            *buf = 138412546;
            v39 = language;
            v40 = 2112;
            v41 = v21;
            _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_INFO, "Language rotor was set to default, and punctuation table language was used. Replacing with language %@ and voice %@.", buf, 0x16u);
          }

          [v35 setObject:language forVariant:17];
          [v35 setObject:v21 forVariant:74];

          actionCopy = v35;
        }
      }
    }

    else
    {
      v16 = +[NSMutableString string];
      v25 = [textCopy length];
      if (v25 >= 1)
      {
        v26 = v25;
        v27 = 0;
        do
        {
          v28 = [textCopy rangeOfComposedCharacterSequenceAtIndex:v27];
          v30 = v29;
          v31 = [textCopy substringWithRange:{v28, v29}];
          if ([v16 length])
          {
            v32 = +[NSCharacterSet whitespaceAndNewlineCharacterSet];
            v33 = [v32 characterIsMember:{objc_msgSend(v16, "characterAtIndex:", objc_msgSend(v16, "length") - 1)}];

            actionCopy = v35;
            if ((v33 & 1) == 0)
            {
              [v16 appendString:@" "];
            }
          }

          [(VOTOutputSpeechComponent *)self _appendLiteralCharacterString:v31 toString:v16 hasPhoneContext:bOOLValue hasMathContext:bOOLValue2 action:actionCopy punctuationTableLanguageUsed:0];
          v27 = &v28[v30];
        }

        while (v27 < v26);
      }
    }
  }

  return v16;
}

- (void)_speakAsLiteralText:(id)text
{
  textCopy = text;
  string = [textCopy string];
  v6 = VOTLogSpeech();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    sub_1001296F4();
  }

  v7 = [(VOTOutputSpeechComponent *)self _stringForLiteralText:string action:textCopy allowChangingLanguageForPunctuation:1];
  v8 = VOTLogSpeech();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    sub_10012975C();
  }

  [textCopy setString:v7];
}

- (void)_speakAsPhoneticText:(id)text
{
  textCopy = text;
  v4 = VOTLogSpeech();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    sub_1001297C4(textCopy);
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

- (id)punctuationReplacement:(id)replacement withGroup:(id)group baseTable:(id)table languageCode:(id)code selectedLanguage:(id)language spokenLanguage:(id)spokenLanguage
{
  replacementCopy = replacement;
  tableCopy = table;
  codeCopy = code;
  spokenLanguageCopy = spokenLanguage;
  v41 = 0u;
  v42 = 0u;
  v43 = 0u;
  v44 = 0u;
  entries = [group entries];
  v16 = [entries countByEnumeratingWithState:&v41 objects:v45 count:16];
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
          objc_enumerationMutation(entries);
        }

        v20 = *(*(&v41 + 1) + 8 * i);
        punctuation = [v20 punctuation];
        v22 = [punctuation isEqualToString:replacementCopy];

        if (v22)
        {
          rule = [v20 rule];
          if (rule == 2)
          {
            v26 = &stru_1001CBF90;
            goto LABEL_31;
          }

          if (rule == 1)
          {
            replacement = [v20 replacement];
            if (replacement)
            {
              v26 = replacement;
            }

            else
            {
              v26 = &stru_1001CBF90;
            }

            goto LABEL_31;
          }

          if (!rule)
          {
            v27 = replacementCopy;
            goto LABEL_30;
          }
        }
      }

      v17 = [entries countByEnumeratingWithState:&v41 objects:v45 count:16];
      if (v17)
      {
        continue;
      }

      break;
    }
  }

  v24 = [replacementCopy characterAtIndex:0];
  entries = [tableCopy objectForIndex:v24];
  if ([entries isEqualToString:replacementCopy])
  {
    v25 = 0;
  }

  else if ([entries length] == 1)
  {
    v25 = sub_1000F2430(v24, [entries characterAtIndex:0]) ^ 1;
  }

  else
  {
    v25 = 1;
  }

  if ([entries length] && (!language ? (v29 = v25) : (v29 = 0), codeCopy && v29 && (AXCLanguageCanonicalFormToGeneralLanguage(), v30 = objc_claimAutoreleasedReturnValue(), AXCLanguageCanonicalFormToGeneralLanguage(), v31 = objc_claimAutoreleasedReturnValue(), v32 = objc_msgSend(v30, "isEqualToString:", v31), v31, v30, (v32 & 1) == 0)))
  {
    punctuationFallbacks = self->_punctuationFallbacks;
    if (!punctuationFallbacks)
    {
      v35 = +[NSMutableDictionary dictionary];
      v36 = self->_punctuationFallbacks;
      self->_punctuationFallbacks = v35;

      punctuationFallbacks = self->_punctuationFallbacks;
    }

    v37 = [(NSMutableDictionary *)punctuationFallbacks objectForKeyedSubscript:codeCopy];
    if (!v37)
    {
      v37 = +[NSMutableDictionary dictionary];
      [(NSMutableDictionary *)self->_punctuationFallbacks setObject:v37 forKeyedSubscript:codeCopy];
    }

    v26 = [v37 objectForKeyedSubscript:replacementCopy];
    if (!v26)
    {
      v26 = AXVOLocalizedStringForCharacter();
      if (!v26)
      {
        v26 = AXCopyUnicodeDescriptionStringForCharacter();
      }

      [v37 setObject:v26 forKeyedSubscript:replacementCopy];
    }
  }

  else
  {
    v27 = entries;
    entries = v27;
LABEL_30:
    v26 = v27;
  }

LABEL_31:

  return v26;
}

- (id)baseTableForPunctuationGroup:(id)group
{
  groupCopy = group;
  v5 = +[AXSSPunctuationManager sharedDatabase];
  v6 = [v5 mostBasePunctuationGroupForGroup:groupCopy];

  if ([v6 isEqual:AXSSVoiceOverPunctuationGroupAll])
  {
    currentAllPunctuationTable = [(VOTOutputSpeechComponent *)self currentAllPunctuationTable];
LABEL_7:
    v8 = currentAllPunctuationTable;
    goto LABEL_8;
  }

  if ([v6 isEqual:AXSSVoiceOverPunctuationGroupSome])
  {
    currentAllPunctuationTable = [(VOTOutputSpeechComponent *)self currentSomePunctuationTable];
    goto LABEL_7;
  }

  if ([v6 isEqual:AXSSVoiceOverPunctuationGroupNone])
  {
    currentAllPunctuationTable = [(VOTOutputSpeechComponent *)self currentNonePunctuationTable];
    goto LABEL_7;
  }

  v8 = 0;
LABEL_8:

  return v8;
}

- (id)_replacePunctuation:(id)punctuation punctuationGroup:(id)group hasMathContext:(BOOL)context hasPhoneContext:(BOOL)phoneContext isText:(BOOL)text replaceCommas:(BOOL)commas languageCode:(id)code speakPunctuationCounts:(BOOL)self0
{
  phoneContextCopy = phoneContext;
  textCopy = text;
  contextCopy = context;
  punctuationCopy = punctuation;
  groupCopy = group;
  codeCopy = code;
  v16 = [punctuationCopy length];
  v17 = [objc_allocWithZone(NSMutableString) init];
  if (qword_1001FEB78 != -1)
  {
    sub_100129850();
  }

  v133 = groupCopy;
  v132 = [(VOTOutputSpeechComponent *)self baseTableForPunctuationGroup:groupCopy];
  v18 = +[AXSSPunctuationManager sharedDatabase];
  allPunctuationGroup = [v18 allPunctuationGroup];
  v131 = [(VOTOutputSpeechComponent *)self baseTableForPunctuationGroup:allPunctuationGroup];

  v134 = +[NSCharacterSet whitespaceAndNewlineCharacterSet];
  v136 = v17;
  isAXAttributedString = [punctuationCopy isAXAttributedString];
  if (isAXAttributedString)
  {
    v20 = +[NSMutableArray array];
  }

  else
  {
    v20 = 0;
  }

  selfCopy = self;
  v140 = v20;
  systemSpokenLanguage = codeCopy;
  v139 = systemSpokenLanguage;
  if (!systemSpokenLanguage)
  {
    systemSpokenLanguage = [VOTSharedWorkspace systemSpokenLanguage];
  }

  v126 = systemSpokenLanguage;
  selectedLanguage = [VOTSharedWorkspace selectedLanguage];
  systemSpokenLanguage2 = [VOTSharedWorkspace systemSpokenLanguage];
  v147 = 0;
  if (v16 >= 1)
  {
    v22 = 0;
    while (1)
    {
      if (isAXAttributedString)
      {
        while (1)
        {
          v145 = 0;
          v146 = 0;
          v23 = [punctuationCopy attributesAtIndex:v22 effectiveRange:&v145];
          if (![v23 count])
          {
            break;
          }

          v24 = [v17 length];
          v146 = [NSValue valueWithRange:v24, v146];
          v26 = [v23 mutableCopy];
          [v26 setObject:v146 forKey:@"_VORangeValue"];
          [v140 addObject:v26];
          v27 = [punctuationCopy substringWithRange:{v145, v146}];
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

      v28 = [punctuationCopy rangeOfComposedCharacterSequenceAtIndex:v22];
      v30 = v29;
      v31 = [punctuationCopy substringWithRange:{v28, v29}];
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
    if (phoneContextCopy)
    {
      v35 = @"UnicodeHex.PhoneContext.";
    }

    else
    {
      if (!contextCopy)
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
    v121 = textCopy;
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
      textCopy = v121;
    }

    else
    {
      v45 = [(VOTOutputSpeechComponent *)selfCopy punctuationReplacement:v32 withGroup:v133 baseTable:v132 languageCode:v139 selectedLanguage:selectedLanguage spokenLanguage:systemSpokenLanguage2];
      v43 = [(VOTOutputSpeechComponent *)selfCopy punctuationReplacement:v32 withGroup:0 baseTable:v131 languageCode:v139 selectedLanguage:selectedLanguage spokenLanguage:systemSpokenLanguage2];
      if (v42)
      {
        textCopy = v121;
        v44 = v45;
      }

      else
      {
        if (-[__CFString isEqualToString:](v45, "isEqualToString:", v32) && [v43 length])
        {
          currentAllPunctuationTable = [(VOTOutputSpeechComponent *)selfCopy currentAllPunctuationTable];
          v127 = [currentAllPunctuationTable objectForIndex:v145];

          v44 = v127;
        }

        else
        {
          v44 = v45;
        }

        textCopy = v121;
      }
    }

    v128 = v44;
    if (!commas && v145 == 44)
    {
      v47 = [punctuationCopy substringWithRange:{v147, 1}];
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
          v78 = [punctuationCopy length];
          if (v78 > v147 + 1)
          {
            v79 = [punctuationCopy characterAtIndex:?] - 67;
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
              if (v81 && ([punctuationCopy rangeOfComposedCharacterSequenceAtIndex:v147], v82 == 1))
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
              if (!textCopy && v145 == 10)
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
                v85 = [(NSDictionary *)selfCopy->_languageExceptions objectForKey:v126];
                v86 = [v85 count];

                if (v86)
                {
                  v87 = [(NSDictionary *)selfCopy->_languageExceptions objectForKey:v126];
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
              if ([(VOTOutputSpeechComponent *)selfCopy _replaceRepeatedPuntuationAndEmoji:qword_1001FEB68 newString:punctuationCopy charReplacementString:v17 charSequence:v32 charIndex:&v147 speakPunctuationCounts:counts languageCode:v139])
              {
                goto LABEL_140;
              }

              v89 = [(AXIndexMap *)selfCopy->_noneTableOverrides objectForIndex:v145];
              v90 = [(AXIndexMap *)selfCopy->_specialPunctionTable objectForIndex:v145];
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
                v95 = [punctuationCopy substringWithRange:{v118, v91}];
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
      if (v65 < [punctuationCopy length])
      {
        v66 = +[NSCharacterSet letterCharacterSet];
        v67 = [punctuationCopy rangeOfComposedCharacterSequenceAtIndex:v147 + 1];
        if (v67 != 0x7FFFFFFFFFFFFFFFLL)
        {
          v74 = v67;
          v75 = v68;
          if (-[__CFString characterIsMember:](v66, "characterIsMember:", [punctuationCopy characterAtIndex:v67]) & 1) != 0 || (objc_msgSend(punctuationCopy, "substringWithRange:", v74, v75), v76 = objc_claimAutoreleasedReturnValue(), v77 = TTSisSpeakableEmojiString(), v76, (v77))
          {
            v72 = sub_100051B24(v145, @"UnicodeHex.Alternate1.", @"VOTOutputPunctuation", v139);

            v73 = v66;
            v17 = v136;
            goto LABEL_97;
          }
        }
      }

      v69 = v147 + 1;
      if (v69 >= [punctuationCopy length])
      {
        v17 = v136;
      }

      else
      {
        v70 = +[NSCharacterSet decimalDigitCharacterSet];
        v71 = [v70 characterIsMember:{objc_msgSend(punctuationCopy, "characterAtIndex:", v147 + 1)}];

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

      basePunctuationUUID = [v133 basePunctuationUUID];
      if (![basePunctuationUUID isEqual:AXSSVoiceOverPunctuationGroupSome])
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
        v53 = punctuationCopy;
        v113 = v43;
        v115 = [punctuationCopy length];
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
          punctuationCopy = v53;
          v17 = v136;
          textCopy = v121;
          v43 = v113;
          goto LABEL_84;
        }

        v43 = v113;
        basePunctuationUUID = v128;
        v128 = v113;
        punctuationCopy = v53;
        v17 = v136;
        textCopy = v121;
LABEL_83:
      }
    }

LABEL_84:
    v49 = v145;
    goto LABEL_85;
  }

LABEL_157:
  [(VOTOutputSpeechComponent *)selfCopy _replaceRepeatedEmoji:v17];
  v97 = v140;
  if (v140)
  {
    v138 = punctuationCopy;
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
          rangeValue = [v105 rangeValue];
          v108 = v107;

          [v98 setAttributes:v104 withRange:{rangeValue, v108}];
        }

        v101 = [v99 countByEnumeratingWithState:&v141 objects:v148 count:16];
      }

      while (v101);
    }

    v109 = v98;
    v17 = v136;
    punctuationCopy = v138;
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

- (void)_replaceRepeatedEmoji:(id)emoji
{
  emojiCopy = emoji;
  [emojiCopy length];
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
  v4 = emojiCopy;
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

- (BOOL)_replaceRepeatedPuntuationAndEmoji:(id)emoji newString:(id)string charReplacementString:(id)replacementString charSequence:(id)sequence charIndex:(int64_t *)index speakPunctuationCounts:(BOOL)counts languageCode:(id)code
{
  countsCopy = counts;
  emojiCopy = emoji;
  stringCopy = string;
  replacementStringCopy = replacementString;
  sequenceCopy = sequence;
  codeCopy = code;
  selfCopy = self;
  if ([sequenceCopy length] == 1)
  {
    v20 = [sequenceCopy characterAtIndex:0];
  }

  else
  {
    v20 = 0;
  }

  v21 = [stringCopy length];
  if (![emojiCopy characterIsMember:v20])
  {
    goto LABEL_13;
  }

  v37 = codeCopy;
  v22 = *index + 1;
  if (v22 >= v21)
  {
    v23 = 1;
  }

  else
  {
    v34 = v21 - *index;
    v23 = 1;
    while ([stringCopy characterAtIndex:v22] == v20)
    {
      ++v23;
      if (v21 == ++v22)
      {
        v23 = v34;
        break;
      }
    }
  }

  codeCopy = v37;
  if (v23 > 2 || countsCopy)
  {
    if (v23 == 3 && v20 == 46 && ((sub_100051B24(8230, @"UnicodeHex.", @"VOTOutputPunctuation", v37), (v25 = objc_claimAutoreleasedReturnValue()) != 0) || ([NSString stringWithUnichar:8230], (v25 = objc_claimAutoreleasedReturnValue()) != 0)) || (sub_100051C28(v20, @"UnicodeHex.", @"VOTOutputPunctuation", v37, v23), (v25 = objc_claimAutoreleasedReturnValue()) != 0))
    {
      v26 = v25;
    }

    else
    {
      currentAllPunctuationTable = [(VOTOutputSpeechComponent *)selfCopy currentAllPunctuationTable];
      v28 = [currentAllPunctuationTable objectForIndex:v20];

      if (!v28)
      {
        v29 = [stringCopy substringWithRange:{*index, 1}];
        v28 = [NSString stringWithFormat:@"%@", v29];
      }

      v35 = sub_1000511CC(off_1001FDDD0, @"repeat.filter", 0);
      v30 = [NSNumber numberWithInteger:v23];
      AXFormatNumber();
      v32 = v31 = v28;
      v26 = [NSString stringWithFormat:v35, v32, v31];
    }

    [replacementStringCopy appendString:{@", "}];
    [replacementStringCopy appendString:v26];
    [replacementStringCopy appendString:{@", "}];
    *index += v23;

    v24 = 1;
    codeCopy = v37;
  }

  else
  {
LABEL_13:
    v24 = 0;
  }

  return v24;
}

- (id)_parseNumberInString:(id)string beforeCharacterAtIndex:(int64_t)index numberRange:(_NSRange *)range
{
  stringCopy = string;
  v8 = [stringCopy length];
  v9 = +[NSMutableCharacterSet decimalDigitCharacterSet];
  v10 = +[NSCharacterSet whitespaceCharacterSet];
  v20 = v9;
  [v9 addCharactersInString:@"-.."];
  v11 = +[NSMutableString string];
  indexCopy = index;
  do
  {
    v13 = indexCopy;
    v14 = indexCopy-- < 1;
  }

  while (!v14 && v8 >= index && ([v10 characterIsMember:{objc_msgSend(stringCopy, "characterAtIndex:", indexCopy)}] & 1) != 0);
  if (v13 >= 1 && v13 <= v8)
  {
    v15 = v13 - 1;
    do
    {
      if (![v20 characterIsMember:{objc_msgSend(stringCopy, "characterAtIndex:", v15)}])
      {
        break;
      }

      v16 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%C", [stringCopy characterAtIndex:v15]);
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

  range->location = v13;
  range->length = index - v13;
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

- (id)_determineVoiceSelection:(id)selection languageCode:(id)code
{
  selectionCopy = selection;
  codeCopy = code;
  v7 = dispatch_semaphore_create(0);
  v23 = 0;
  v24 = &v23;
  v25 = 0x3032000000;
  v26 = sub_10002C4F4;
  v27 = sub_10002C504;
  v28 = 0;
  votSettings = [VOTSharedWorkspace votSettings];
  v17 = _NSConcreteStackBlock;
  v18 = 3221225472;
  v19 = sub_100036640;
  v20 = &unk_1001C7E98;
  v22 = &v23;
  v9 = v7;
  v21 = v9;
  [votSettings voiceSelectionForAction:selectionCopy languageCode:codeCopy completionHandler:&v17];

  dispatch_semaphore_wait(v9, 0xFFFFFFFFFFFFFFFFLL);
  voiceId = [v24[5] voiceId];
  v11 = [TTSSpeechSynthesizer voiceForIdentifier:voiceId];
  language = [v11 language];

  [selectionCopy setObject:v24[5] forVariant:89];
  [selectionCopy setObject:language forVariant:17];
  [selectionCopy setObject:voiceId forVariant:74];
  if ([VOTSharedWorkspace inUnitTestMode])
  {
    unitTestSpeechRate = [VOTSharedWorkspace unitTestSpeechRate];

    if (unitTestSpeechRate)
    {
      unitTestSpeechRate2 = [VOTSharedWorkspace unitTestSpeechRate];
      [selectionCopy setObject:unitTestSpeechRate2 forVariant:39];
    }
  }

  v15 = v24[5];

  _Block_object_dispose(&v23, 8);

  return v15;
}

- (id)_determineVoiceIdentifier:(id)identifier languageCode:(id)code
{
  v4 = [(VOTOutputSpeechComponent *)self _determineVoiceSelection:identifier languageCode:code];
  voiceId = [v4 voiceId];

  return voiceId;
}

- (id)_determineSpeechSourceForAction:(id)action
{
  v3 = [(VOTOutputComponent *)self determineActivityForAction:action];
  v4 = v3;
  if (v3)
  {
    uuid = [v3 uuid];
    v6 = [NSString stringWithFormat:@"VOActivity_%@", uuid];
  }

  else
  {
    v6 = AXSpeechSourceKeyVoiceOver;
  }

  return v6;
}

- (id)_determinePunctuationGroupForAction:(id)action isDefault:(BOOL *)default
{
  actionCopy = action;
  v7 = VOTSharedWorkspace;
  v8 = +[AXSettings sharedInstance];
  voiceOverPunctuationGroup = [v8 voiceOverPunctuationGroup];
  fileSystemPunctuationGroup = [v7 punctuationGroupForUUID:voiceOverPunctuationGroup];

  v11 = [(VOTOutputComponent *)self determineActivityForAction:actionCopy];
  v12 = v11;
  if (v11)
  {
    punctuationGroup = [v11 punctuationGroup];

    if (punctuationGroup)
    {
      v14 = VOTSharedWorkspace;
      punctuationGroup2 = [v12 punctuationGroup];
      v16 = [v14 punctuationGroupForUUID:punctuationGroup2];

      fileSystemPunctuationGroup = v16;
    }
  }

  if (!fileSystemPunctuationGroup)
  {
    fileSystemPunctuationGroup = [actionCopy objectForVariant:30];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      if (fileSystemPunctuationGroup)
      {
        goto LABEL_5;
      }
    }

    else
    {
    }

    v18 = [actionCopy objectForVariant:79];
    if ([v18 isEqualToString:AXSSVoiceOverTextualContextFileSystem])
    {
      fileSystemPunctuationGroup = [(VOTOutputSpeechComponent *)self fileSystemPunctuationGroup];

      if (fileSystemPunctuationGroup)
      {
        goto LABEL_5;
      }
    }

    else
    {
    }

    fileSystemPunctuationGroup = [VOTSharedWorkspace defaultPunctuationGroup];
    if (default)
    {
      *default = 1;
    }
  }

LABEL_5:

  return fileSystemPunctuationGroup;
}

- (id)_urlRangesInString:(id)string languageCode:(id)code
{
  stringCopy = string;
  codeCopy = code;
  v8 = +[NSMutableArray array];
  v9 = qword_1001FEB80;
  if (!qword_1001FEB80)
  {
    v10 = [NSRegularExpression regularExpressionWithPattern:@"(http:\\/\\/|www\\.)?(\\S*)\\.(com|net|org|edu|gov|mil|uk|fi)(\\/\\S*)?\\b" options:1 error:0];
    v11 = qword_1001FEB80;
    qword_1001FEB80 = v10;

    v9 = qword_1001FEB80;
  }

  v12 = [v9 matchesInString:stringCopy options:0 range:{0, objc_msgSend(stringCopy, "length")}];
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
      v16 = codeCopy;
      v17 = *v37;
      do
      {
        for (i = 0; i != v15; i = i + 1)
        {
          if (*v37 != v17)
          {
            objc_enumerationMutation(v13);
          }

          range = [*(*(&v36 + 1) + 8 * i) range];
          v21 = [NSValue valueWithRange:range, v20];
          [v8 addObject:v21];
        }

        v15 = [v13 countByEnumeratingWithState:&v36 objects:v41 count:16];
      }

      while (v15);
      codeCopy = v16;
    }
  }

  else
  {
    v13 = [(VOTOutputSpeechComponent *)self _localeSpecificURLRegexForLanguageCode:codeCopy];
    if (v13)
    {
      v31 = codeCopy;
      v22 = [v13 matchesInString:stringCopy options:0 range:{0, objc_msgSend(stringCopy, "length")}];
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

            range2 = [*(*(&v32 + 1) + 8 * j) range];
            v29 = [NSValue valueWithRange:range2, v28];
            [v8 addObject:v29];
          }

          v24 = [v22 countByEnumeratingWithState:&v32 objects:v40 count:16];
        }

        while (v24);
      }

      codeCopy = v31;
    }
  }

  return v8;
}

- (void)_replacePunctuation:(id)punctuation withAction:(id)action languageCode:(id)code
{
  punctuationCopy = punctuation;
  actionCopy = action;
  codeCopy = code;
  v11 = [actionCopy objectForVariant:55];
  bOOLValue = [v11 BOOLValue];

  v12 = [actionCopy objectForVariant:56];
  bOOLValue2 = [v12 BOOLValue];

  v13 = [actionCopy objectForVariant:50];
  bOOLValue3 = [v13 BOOLValue];

  v14 = [actionCopy objectForVariant:65];
  bOOLValue4 = [v14 BOOLValue];

  v29 = actionCopy;
  v28 = [(VOTOutputSpeechComponent *)self _determinePunctuationGroupForAction:actionCopy isDefault:0];
  v36 = codeCopy;
  v37 = punctuationCopy;
  [(VOTOutputSpeechComponent *)self _urlRangesInString:punctuationCopy languageCode:codeCopy];
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

        rangeValue = [*(*(&v38 + 1) + 8 * v18) rangeValue];
        v21 = v20;
        v22 = [v37 substringWithRange:{&rangeValue[v17], v20}];
        fileSystemPunctuationGroup = [(VOTOutputSpeechComponent *)self fileSystemPunctuationGroup];
        LOBYTE(v27) = bOOLValue4;
        v24 = [(VOTOutputSpeechComponent *)self _replacePunctuation:v22 punctuationGroup:fileSystemPunctuationGroup hasMathContext:bOOLValue2 hasPhoneContext:bOOLValue isText:bOOLValue3 replaceCommas:1 languageCode:v36 speakPunctuationCounts:v27];

        [v37 replaceCharactersInRange:&rangeValue[v17] withString:{v21, v24}];
        v25 = [v24 length];
        v17 = v25 - [v22 length];

        v18 = v18 + 1;
      }

      while (v16 != v18);
      v16 = [obj countByEnumeratingWithState:&v38 objects:v42 count:16];
    }

    while (v16);
  }

  LOBYTE(v27) = bOOLValue4;
  v26 = -[VOTOutputSpeechComponent _replacePunctuation:punctuationGroup:hasMathContext:hasPhoneContext:isText:replaceCommas:languageCode:speakPunctuationCounts:](self, "_replacePunctuation:punctuationGroup:hasMathContext:hasPhoneContext:isText:replaceCommas:languageCode:speakPunctuationCounts:", v37, v28, bOOLValue2, bOOLValue, bOOLValue3, [v28 isAllPunctuationGroup], v36, v27);
  [v37 setString:v26];
}

- (void)_removeRunsOfNewLines:(id)lines
{
  linesCopy = lines;
  if ([linesCopy rangeOfString:@"\n\n\n"] != 0x7FFFFFFFFFFFFFFFLL)
  {
    v3 = [linesCopy length];
    v4 = objc_alloc_init(NSMutableString);
    v5 = linesCopy;
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

          while ([linesCopy characterAtIndex:i] == 10);
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

        v10 = [linesCopy substringWithRange:{i, 1}];
        [v4 appendFormat:@"%@", v10];

LABEL_18:
        v5 = linesCopy;
      }
    }

    [v5 setString:v4];
  }
}

- (void)_replaceEmoticonsWithText:(id)text
{
  textCopy = text;
  v5 = +[NSCharacterSet whitespaceAndNewlineCharacterSet];
  emoticonReplacements = self->_emoticonReplacements;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_100037140;
  v9[3] = &unk_1001C8140;
  v10 = textCopy;
  v11 = v5;
  v7 = v5;
  v8 = textCopy;
  [(NSDictionary *)emoticonReplacements enumerateKeysAndObjectsUsingBlock:v9];
}

- (void)_processEmoji:(id)emoji action:(id)action rate:(float)rate
{
  emojiCopy = emoji;
  actionCopy = action;
  v21 = emojiCopy;
  v10 = [actionCopy objectForVariant:17];
  v11 = [actionCopy objectForVariant:74];
  v12 = [actionCopy objectForVariant:58];
  bOOLValue = [v12 BOOLValue];

  if (bOOLValue)
  {
    voiceOverVerbosityEmojiSuffixEnabled = 0;
  }

  else
  {
    v15 = +[AXSettings sharedInstance];
    voiceOverVerbosityEmojiSuffixEnabled = [v15 voiceOverVerbosityEmojiSuffixEnabled];
  }

  v16 = [actionCopy objectForVariant:80];
  v17 = [v16 BOOLValue] | bOOLValue;

  if (v17)
  {
    *&v18 = rate;
    v19 = [(VOTOutputSpeechComponent *)self pauseStringForType:6 voiceIdentifier:v11 rate:v18];
    v20 = [TTSEmojiUtilities stringByReplacingEmojiCharactersWithEmojiDescriptions:v21 stringForPauses:v19 language:v10 rangeReplacements:0 appendEmojiSuffix:voiceOverVerbosityEmojiSuffixEnabled];
  }

  else
  {
    v20 = [TTSEmojiUtilities stringByRemovingEmojiCharacters:v21];
  }

  if (([v21 isEqualToString:v20] & 1) == 0)
  {
    [actionCopy removeObjectForVariant:28];
    [v21 setString:v20];
  }
}

- (BOOL)_makeSubstitution:(id)substitution withString:(id)string punctuationGroup:(id)group
{
  substitutionCopy = substitution;
  stringCopy = string;
  groupCopy = group;
  isReplacementTextAllPunctuation = [substitutionCopy isReplacementTextAllPunctuation];
  phonemes = [substitutionCopy phonemes];
  if ([phonemes length])
  {
  }

  else
  {
    replacementString = [substitutionCopy replacementString];
    v12 = [replacementString length];

    if (!v12)
    {
      goto LABEL_11;
    }
  }

  v30 = [(VOTOutputSpeechComponent *)self baseTableForPunctuationGroup:groupCopy];
  selectedLanguage = [VOTSharedWorkspace selectedLanguage];
  systemSpokenLanguage = [VOTSharedWorkspace systemSpokenLanguage];
  v13 = [stringCopy length];
  v14 = 0;
  v15 = v13;
  do
  {
    originalString = [substitutionCopy originalString];
    v17 = [stringCopy rangeOfString:originalString options:objc_msgSend(substitutionCopy range:{"ignoreCase"), v14, v15}];
    v19 = v18;

    if (!v19)
    {
      break;
    }

    if (isReplacementTextAllPunctuation)
    {
      replacementString2 = [substitutionCopy replacementString];
      v21 = [replacementString2 length];

      if (v21 == 1)
      {
        v33 = 0;
        replacementString3 = [substitutionCopy replacementString];
        [replacementString3 getCharacters:&v33];

        replacementString4 = [substitutionCopy replacementString];
        languages = [substitutionCopy languages];
        anyObject = [languages anyObject];
        v26 = [(VOTOutputSpeechComponent *)self punctuationReplacement:replacementString4 withGroup:groupCopy baseTable:v30 languageCode:anyObject selectedLanguage:selectedLanguage spokenLanguage:systemSpokenLanguage];
      }
    }

    v14 = &v17[v19];
    v15 = (v13 - v14);
  }

  while (v17 != 0x7FFFFFFFFFFFFFFFLL);

LABEL_11:
  return 0;
}

- (void)_replaceUserSubstitutions:(id)substitutions action:(id)action
{
  substitutionsCopy = substitutions;
  actionCopy = action;
  v6 = [actionCopy objectForVariant:70];
  bOOLValue = [v6 BOOLValue];

  if ((bOOLValue & 1) == 0)
  {
    v8 = [actionCopy objectForVariant:30];
    v9 = [actionCopy objectForVariant:43];
    if (!v8)
    {
      v10 = VOTSharedWorkspace;
      v11 = +[AXSettings sharedInstance];
      voiceOverPunctuationGroup = [v11 voiceOverPunctuationGroup];
      v8 = [v10 punctuationGroupForUUID:voiceOverPunctuationGroup];
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
            bundleIdentifiers = [v17 bundleIdentifiers];
            v19 = [bundleIdentifiers containsObject:v9];

            if (v19)
            {
              [(VOTOutputSpeechComponent *)self _makeSubstitution:v17 withString:substitutionsCopy punctuationGroup:v8];
            }
          }
        }

        v14 = [(NSArray *)v13 countByEnumeratingWithState:&v22 objects:v26 count:16];
      }

      while (v14);
    }
  }
}

- (float)_determineVolume:(id)volume
{
  v3 = [(VOTOutputComponent *)self determineActivityForAction:volume];
  volume = [v3 volume];

  if (volume)
  {
    volume2 = [v3 volume];
    [volume2 floatValue];
    v7 = v6;
  }

  else
  {
    v7 = 3.4028e38;
  }

  return v7;
}

- (id)_stringForNormalText:(id)text action:(id)action allowPausingAtBoundaries:(BOOL)boundaries ignoreLeadingCommas:(BOOL)commas
{
  commasCopy = commas;
  boundariesCopy = boundaries;
  textCopy = text;
  actionCopy = action;
  v11 = [actionCopy objectForVariant:74];
  v12 = [actionCopy objectForVariant:89];
  rate = [v12 rate];
  v14 = rate;
  if (rate)
  {
    v15 = rate;
  }

  else
  {
    v16 = [actionCopy objectForVariant:39];
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
  if ([textCopy length])
  {
    v21 = VOTLogSpeech();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
    {
      sub_10012988C();
    }

    v22 = [textCopy mutableCopy];
    v101 = textCopy;
    v23 = [actionCopy objectForVariant:45];
    bOOLValue = [v23 BOOLValue];

    v24 = [actionCopy objectForVariant:49];
    bOOLValue2 = [v24 BOOLValue];

    v25 = [actionCopy objectForVariant:46];
    bOOLValue3 = [v25 BOOLValue];

    v26 = [actionCopy objectForVariant:48];
    bOOLValue4 = [v26 BOOLValue];

    v27 = [actionCopy objectForVariant:47];
    bOOLValue5 = [v27 BOOLValue];

    v28 = [actionCopy objectForVariant:60];
    bOOLValue6 = [v28 BOOLValue];

    v29 = [actionCopy objectForVariant:44];
    bOOLValue7 = [v29 BOOLValue];

    v31 = [actionCopy objectForVariant:50];
    bOOLValue8 = [v31 BOOLValue];

    v32 = [actionCopy objectForVariant:59];
    if ([v32 BOOLValue])
    {
      bOOLValue9 = 1;
    }

    else
    {
      v50 = [actionCopy objectForVariant:27];
      bOOLValue9 = [v50 BOOLValue];
    }

    v51 = [actionCopy objectForVariant:31];
    bOOLValue10 = [v51 BOOLValue];

    v53 = [actionCopy objectForVariant:76];
    bOOLValue11 = [v53 BOOLValue];

    v56 = [actionCopy objectForVariant:17];
    if ((commasCopy | bOOLValue7))
    {
      v55 = [(__CFString *)v22 rangeOfString:@", "];
      if (!v55)
      {
        [(__CFString *)v22 replaceCharactersInRange:0 withString:v57, &stru_1001CBF90];
      }
    }

    outputVariants = [actionCopy outputVariants];
    currentActionVariants = self->_currentActionVariants;
    self->_currentActionVariants = outputVariants;

    v60 = [actionCopy objectForVariant:51];
    bOOLValue12 = [v60 BOOLValue];

    if (bOOLValue12)
    {
      v62 = [(VOTOutputSpeechComponent *)self _secureTextDescription:v101];

      v101 = v62;
      [(__CFString *)v22 replaceCharactersInRange:0 withString:[(__CFString *)v22 length], v62];
    }

    if (bOOLValue10)
    {
      [(VOTOutputSpeechComponent *)self _speakAllDigits:v22];
    }

    [(VOTOutputSpeechComponent *)self _replaceUserSubstitutions:v22 action:actionCopy];
    [(VOTOutputSpeechComponent *)self _replaceEmoticonsWithText:v22];
    if ((bOOLValue11 & 1) == 0)
    {
      [(VOTOutputSpeechComponent *)self _replacePunctuation:v22 withAction:actionCopy languageCode:v56];
    }

    [(VOTOutputSpeechComponent *)self _formatNumbers:v22 action:actionCopy];
    [(VOTOutputSpeechComponent *)self _formatUSHeight:v22 voiceIdentifier:v11];
    *&v63 = v20;
    [(VOTOutputSpeechComponent *)self _formatIPAddress:v22 voiceIdentifier:v11 rate:v63];
    *&v64 = v20;
    [(VOTOutputSpeechComponent *)self _formatEthernetMacAddress:v22 voiceIdentifier:v11 rate:v64];
    if (((bOOLValue | bOOLValue7 | bOOLValue4 | bOOLValue6 | bOOLValue5) & 1) == 0)
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
    [(VOTOutputSpeechComponent *)self _processEmoji:v22 action:actionCopy rate:v68];
    [(VOTOutputSpeechComponent *)self _applyCamelCaseSeparation:v22];
    v103 = 0;
    if (bOOLValue7)
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
      if (((bOOLValue4 | bOOLValue5 | bOOLValue6) & 1) == 0)
      {
        if (((bOOLValue | bOOLValue2) & 1) == 0)
        {
          *&v69 = v20;
          [(VOTOutputSpeechComponent *)self _formatTimeDuration:v22 didMatch:&v103 voiceIdentifier:v11 rate:v69];
        }

        goto LABEL_42;
      }

      v71 = [v101 mutableCopy];
      [(VOTOutputSpeechComponent *)self _formatExplicitTimeDuration:v71 isMMSS:bOOLValue4 languageCode:v56];
      v74 = [(__CFString *)v22 mutableCopy];
      [(VOTOutputSpeechComponent *)self _formatExplicitTimeDuration:v74 isMMSS:bOOLValue4 languageCode:v56];
      if (v71 && [v74 containsString:v71])
      {
        v76 = v74;

        v22 = v76;
      }

      v103 = 1;
    }

LABEL_42:
    if (bOOLValue && [(__CFString *)v22 rangeOfString:@"."]!= 0x7FFFFFFFFFFFFFFFLL)
    {
      [(__CFString *)v22 replaceOccurrencesOfString:@"." withString:@":" options:0 range:0, [(__CFString *)v22 length]];
    }

    if ((bOOLValue2 & 1) == 0 && ((v103 | bOOLValue | bOOLValue3 | bOOLValue7) & 1) == 0)
    {
      *&v69 = v20;
      [(VOTOutputSpeechComponent *)self _formatTelephoneNumber:v22 languageCode:v56 voiceIdentifier:v11 rate:v69];
    }

    [(VOTOutputSpeechComponent *)self _applyTextualWorkarounds:v22];
    if ((bOOLValue8 & 1) == 0)
    {
      if (([v56 isEqual:@"he-IL"] & 1) == 0)
      {
        *&v78 = v20;
        [(VOTOutputSpeechComponent *)self _insertLongerPausesForSymbol:@"/" withText:v22 allowPausingAtBoundaries:boundariesCopy onlyApplyWhenFollowedBySpace:0 languageCode:v56 voiceIdentifier:v11 rate:v78];
      }

      *&v78 = v20;
      [(VOTOutputSpeechComponent *)self _insertLongerPausesForSymbol:@" withText:" allowPausingAtBoundaries:v22 onlyApplyWhenFollowedBySpace:boundariesCopy languageCode:0 voiceIdentifier:v56 rate:v11, v78];
      *&v79 = v20;
      [(VOTOutputSpeechComponent *)self _insertLongerPausesForSymbol:@"·" withText:v22 allowPausingAtBoundaries:boundariesCopy onlyApplyWhenFollowedBySpace:0 languageCode:v56 voiceIdentifier:v11 rate:v79];
      if ((bOOLValue2 & 1) == 0)
      {
        *&v77 = v20;
        [(VOTOutputSpeechComponent *)self _insertLongerPausesForSymbol:@"." withText:v22 allowPausingAtBoundaries:boundariesCopy onlyApplyWhenFollowedBySpace:1 languageCode:v56 voiceIdentifier:v11 rate:v77];
      }
    }

    if (bOOLValue9)
    {
      [(VOTOutputSpeechComponent *)self _removeRunsOfNewLines:v22];
    }

    if ((bOOLValue8 & 1) == 0)
    {
      *&v77 = v20;
      [(VOTOutputSpeechComponent *)self _insertLongerPausesForSymbol:@"\n\n" withText:v22 allowPausingAtBoundaries:boundariesCopy onlyApplyWhenFollowedBySpace:0 languageCode:v56 voiceIdentifier:v11 rate:v77];
      v80 = v56;
      systemSpokenLanguage = v80;
      if (!v80)
      {
        systemSpokenLanguage = [VOTSharedWorkspace systemSpokenLanguage];
      }

      *&v81 = v20;
      [(VOTOutputSpeechComponent *)self _insertLongerPausesForSymbol:@"?" withText:v22 allowPausingAtBoundaries:boundariesCopy onlyApplyWhenFollowedBySpace:0 languageCode:v80 voiceIdentifier:v11 rate:v81];
      *&v83 = v20;
      [(VOTOutputSpeechComponent *)self _insertLongerPausesForSymbol:@"\n" withText:v22 allowPausingAtBoundaries:boundariesCopy onlyApplyWhenFollowedBySpace:0 languageCode:v80 voiceIdentifier:v11 rate:v83];
      *&v84 = v20;
      [(VOTOutputSpeechComponent *)self _insertLongerPausesForSymbol:@"\r" withText:v22 allowPausingAtBoundaries:boundariesCopy onlyApplyWhenFollowedBySpace:0 languageCode:v80 voiceIdentifier:v11 rate:v84];
    }

    if (bOOLValue9)
    {
      v102 = 8212;
      v85 = [NSString stringWithCharacters:&v102 length:1];
      *&v86 = v20;
      [(VOTOutputSpeechComponent *)self _insertLongerPausesForSymbol:v85 withText:v22 allowPausingAtBoundaries:boundariesCopy onlyApplyWhenFollowedBySpace:0 languageCode:v56 voiceIdentifier:v11 rate:v86];

      *&v87 = v20;
      [(VOTOutputSpeechComponent *)self _insertLongerPausesForSymbol:@"!" withText:v22 allowPausingAtBoundaries:boundariesCopy onlyApplyWhenFollowedBySpace:0 languageCode:v56 voiceIdentifier:v11 rate:v87];
      *&v88 = v20;
      [(VOTOutputSpeechComponent *)self _insertLongerPausesForSymbol:@"\t" withText:v22 allowPausingAtBoundaries:boundariesCopy onlyApplyWhenFollowedBySpace:0 languageCode:v56 voiceIdentifier:v11 rate:v88];
    }

    textCopy = v101;
    goto LABEL_63;
  }

  v33 = [actionCopy objectForVariant:38];
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

- (void)_speakAsNormalText:(id)text
{
  textCopy = text;
  string = [textCopy string];
  v5 = [textCopy objectForVariant:66];
  bOOLValue = [v5 BOOLValue];

  v7 = [(VOTOutputSpeechComponent *)self _stringForNormalText:string action:textCopy allowPausingAtBoundaries:0 ignoreLeadingCommas:bOOLValue];
  [textCopy setString:v7];
}

- (void)_speakAsMixOfLiteralAndNormalText:(id)text withLiteralRanges:(id)ranges
{
  textCopy = text;
  rangesCopy = ranges;
  string = [textCopy string];
  v9 = +[NSMutableString string];
  v33 = 0;
  v34 = &v33;
  v35 = 0x3010000000;
  v37 = 0;
  v38 = 0;
  v36 = &unk_10017883E;
  v10 = [textCopy objectForVariant:66];
  bOOLValue = [v10 BOOLValue];

  v23 = _NSConcreteStackBlock;
  v24 = 3221225472;
  v25 = sub_10003892C;
  v26 = &unk_1001C81A8;
  v31 = &v33;
  v12 = string;
  v27 = v12;
  selfCopy = self;
  v13 = textCopy;
  v29 = v13;
  v32 = bOOLValue;
  v14 = v9;
  v30 = v14;
  [rangesCopy enumerateRangesUsingBlock:&v23];
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
      v21 = bOOLValue;
    }

    v22 = [(VOTOutputSpeechComponent *)self _stringForNormalText:v20 action:v13 allowPausingAtBoundaries:1 ignoreLeadingCommas:v21];
    [v14 appendString:v22];
  }

  [v13 setString:{v14, v19}];

  _Block_object_dispose(&v33, 8);
}

- (void)_configureSynthesizerWithPhonemeSubstitutionsFromAction:(id)action
{
  actionCopy = action;
  string = [actionCopy string];
  v6 = +[NSMutableArray array];
  string2 = [actionCopy string];
  isAXAttributedString = [string2 isAXAttributedString];

  if (isAXAttributedString)
  {
    v34[0] = _NSConcreteStackBlock;
    v34[1] = 3221225472;
    v34[2] = sub_100038DC8;
    v34[3] = &unk_1001C81D0;
    v35 = v6;
    [string enumerateAttributesUsingBlock:v34];
  }

  v9 = [actionCopy objectForVariant:78];
  if (v9)
  {
    v10 = v9;
    string3 = [actionCopy string];

    if (string3)
    {
      v12 = [actionCopy objectForVariant:78];
      [v6 addObject:v12];
    }
  }

  if ([v6 count])
  {
    v26 = string;
    v27 = actionCopy;
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

    synthesizerForTelephonyMixin = [(VOTOutputSpeechComponent *)self synthesizerForTelephonyMixin];
    [synthesizerForTelephonyMixin setUserSubstitutions:v23];

    string = v26;
    actionCopy = v27;
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

- (void)_preprocessActionLanguageAndVoice:(id)voice
{
  voiceCopy = voice;
  v5 = [voiceCopy objectForIndex:14];
  v6 = [(VOTOutputComponent *)self determineLanguageForEvent:voiceCopy];

  if (![v6 length])
  {
    string = [v5 string];
    v8 = [(VOTOutputSpeechComponent *)self stringIsInSupportedCharacters:string];

    if ((v8 & 1) == 0)
    {
      v9 = [v5 objectForVariant:28];
      bOOLValue = [v9 BOOLValue];

      v11 = [v5 objectForVariant:83];
      bOOLValue2 = [v11 BOOLValue];

      if ((bOOLValue2 & 1) == 0)
      {
        string2 = [v5 string];
        v14 = sub_100051170(string2);

        if (bOOLValue & 1 | !v14)
        {
          v15 = sub_1000511CC(off_1001FDDD0, @"unpronounceable", &stru_1001CBF90);
          string3 = [v5 string];
          v17 = [NSString stringWithFormat:@"%@, %@", v15, string3];

          v18 = VOTLogSpeech();
          if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
          {
            string4 = [v5 string];
            string5 = [v5 string];
            *buf = 138412546;
            v27 = string4;
            v28 = 1024;
            v29 = [string5 characterAtIndex:0];
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
    systemSpokenLanguage = [VOTSharedWorkspace systemSpokenLanguage];

    if ([systemSpokenLanguage hasPrefix:@"en"] && (+[NSLocale currentLocale](NSLocale, "currentLocale"), v22 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v22, "languageCode"), v23 = objc_claimAutoreleasedReturnValue(), v24 = objc_msgSend(v23, "hasPrefix:", @"en"), v23, v22, (v24 & 1) == 0))
    {

      v6 = 0;
    }

    else
    {
      v6 = systemSpokenLanguage;
    }
  }

  v25 = [(VOTOutputSpeechComponent *)self _determineVoiceSelection:v5 languageCode:v6];
}

- (void)_determineEmojiPreferenceForAction:(id)action
{
  actionCopy = action;
  v7 = [(VOTOutputComponent *)self determineActivityForAction:actionCopy];
  speakEmojis = [v7 speakEmojis];

  if (speakEmojis)
  {
    [v7 speakEmojis];
  }

  else
  {
    +[NSNumber numberWithInt:](NSNumber, "numberWithInt:", ([VOTSharedWorkspace emojiFeedback] >> 1) & 1);
  }
  v6 = ;
  [actionCopy setObject:v6 forVariant:80];
}

- (void)preprocessAction:(id)action
{
  actionCopy = action;
  v4 = [actionCopy objectForVariant:48];
  bOOLValue = [v4 BOOLValue];

  v6 = [actionCopy objectForVariant:47];
  bOOLValue2 = [v6 BOOLValue];

  v8 = [actionCopy objectForVariant:51];
  bOOLValue3 = [v8 BOOLValue];

  v10 = [actionCopy objectForVariant:56];
  bOOLValue4 = [v10 BOOLValue];

  v12 = [actionCopy objectForVariant:59];
  if ([v12 BOOLValue])
  {
    bOOLValue5 = 1;
  }

  else
  {
    v14 = [actionCopy objectForVariant:27];
    bOOLValue5 = [v14 BOOLValue];
  }

  [(VOTOutputSpeechComponent *)self _configureSynthesizerWithPhonemeSubstitutionsFromAction:actionCopy];
  [(VOTOutputSpeechComponent *)self _determineEmojiPreferenceForAction:actionCopy];
  v15 = [actionCopy objectForVariant:67];

  if (v15)
  {
    v16 = [actionCopy objectForVariant:67];
    v17 = CFGetTypeID(v16);
    if (v17 == AXUIElementGetTypeID())
    {
      v18 = [actionCopy objectForVariant:67];
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
      v21 = actionCopy;
      v22 = v20;
    }

    else
    {
      v22 = &stru_1001CBF90;
      v21 = actionCopy;
    }

    [v21 setString:v22];
  }

  v23 = [objc_allocWithZone(AXIndexMap) init];
  [v23 setObject:actionCopy forIndex:14];
  [(VOTOutputSpeechComponent *)self _determineVolume:actionCopy];
  if (fabs(v24 + -3.40282347e38) >= 2.22044605e-16)
  {
    v25 = [NSNumber numberWithFloat:?];
    [actionCopy setObject:v25 forVariant:40];
  }

  [(VOTOutputSpeechComponent *)self _preprocessActionLanguageAndVoice:v23];
  v26 = [actionCopy objectForVariant:28];
  bOOLValue6 = [v26 BOOLValue];

  v28 = [actionCopy objectForVariant:80];
  bOOLValue7 = [v28 BOOLValue];

  if (bOOLValue6)
  {
    if (!bOOLValue7)
    {
      v30 = 1;
LABEL_22:
      v41 = actionCopy;
      goto LABEL_23;
    }
  }

  else
  {
    string = [actionCopy string];
    v47 = v23;
    selfCopy = self;
    v33 = bOOLValue5;
    v34 = bOOLValue4;
    v35 = bOOLValue3;
    v36 = bOOLValue2;
    v37 = bOOLValue;
    v38 = [string length] == 1;

    v39 = v38 & bOOLValue7;
    bOOLValue = v37;
    bOOLValue2 = v36;
    bOOLValue3 = v35;
    bOOLValue4 = v34;
    bOOLValue5 = v33;
    self = selfCopy;
    v23 = v47;
    if ((v39 & 1) == 0)
    {
      v30 = 0;
      bOOLValue7 = 0;
      goto LABEL_22;
    }
  }

  v40 = [(VOTOutputSpeechComponent *)self _processActionForLiteralEmojis:actionCopy, v47];
  v41 = actionCopy;
  bOOLValue7 = v40;
  v30 = (v40 ^ 1) & bOOLValue6;
LABEL_23:
  string2 = [v41 string];
  if (!((bOOLValue7 | bOOLValue4 | bOOLValue5) & 1 | ([string2 length] != 1) | (bOOLValue | bOOLValue2 | bOOLValue3) & 1) || v30)
  {
  }

  else
  {
    v43 = [actionCopy objectForVariant:42];

    if (!v43)
    {
      v44 = [actionCopy objectForVariant:64];
      bOOLValue8 = [v44 BOOLValue];

      if (bOOLValue8)
      {
        [(VOTOutputSpeechComponent *)self _speakAsPhoneticText:actionCopy];
      }

      else
      {
        v46 = [actionCopy objectForVariant:29];
        if (v46)
        {
          [(VOTOutputSpeechComponent *)self _speakAsMixOfLiteralAndNormalText:actionCopy withLiteralRanges:v46];
        }

        else
        {
          [(VOTOutputSpeechComponent *)self _speakAsNormalText:actionCopy];
        }
      }

      goto LABEL_30;
    }
  }

  [(VOTOutputSpeechComponent *)self _speakAsLiteralText:actionCopy];
LABEL_30:
}

- (BOOL)_processActionForLiteralEmojis:(id)emojis
{
  emojisCopy = emojis;
  v4 = +[NSMutableIndexSet indexSet];
  string = [emojisCopy string];
  v6 = [string length];

  if (v6)
  {
    string2 = [emojisCopy string];
    v8 = [TTSEmojiUtilities emojiRangeFromString:string2 withSearchRange:0, v6];
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

        string3 = [emojisCopy string];
        v8 = [TTSEmojiUtilities emojiRangeFromString:string3 withSearchRange:v11, v14];
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
    [emojisCopy setObject:v4 forVariant:29];
  }

  return v12;
}

- (BOOL)stringIsInSupportedCharacters:(id)characters
{
  charactersCopy = characters;
  v4 = +[VOTOutputManager outputManager];
  currentLanguageMap = [v4 currentLanguageMap];
  selectedLanguage = [VOTSharedWorkspace selectedLanguage];
  if (selectedLanguage)
  {
    v7 = sub_100051014(currentLanguageMap, selectedLanguage, charactersCopy);
  }

  else
  {
    systemSpokenLanguage = [VOTSharedWorkspace systemSpokenLanguage];
    v7 = sub_100051014(currentLanguageMap, systemSpokenLanguage, charactersCopy);
  }

  return v7;
}

- (id)stringReplacingBrailleDotRanges:(id)ranges
{
  rangesCopy = ranges;
  if (qword_1001FEBB0 != -1)
  {
    sub_100129A40();
  }

  v4 = +[NSMutableString string];
  if (![rangesCopy length])
  {
    goto LABEL_19;
  }

  v5 = 0;
  v6 = 0;
LABEL_5:
  v19 = v5;
  do
  {
    v7 = [rangesCopy characterAtIndex:v6];
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
      if (v6 >= [rangesCopy length])
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

  while (v6 < [rangesCopy length]);
  v16 = v4;
  if ((v19 & 1) == 0)
  {
LABEL_19:
    v16 = rangesCopy;
  }

LABEL_20:
  v17 = v16;

  return v16;
}

- (void)_notifyDidFinishSpeakingWithFakeRequestForEvent:(id)event
{
  eventCopy = event;
  v5 = objc_alloc_init(TTSSpeechRequest);
  currentRequest = self->_currentRequest;
  self->_currentRequest = v5;
  object = v5;

  objc_setAssociatedObject(object, &unk_1001FEAB8, eventCopy, 1);
  [(VOTOutputSpeechComponent *)self speechSynthesizer:self->_synthesizer didFinishSpeakingRequest:object successfully:1 withError:0];
}

- (id)_preferenceLanguageForLanguage:(id)language selectedLanguage:(id)selectedLanguage
{
  languageCopy = language;
  selectedLanguageCopy = selectedLanguage;
  v7 = languageCopy;
  v8 = v7;
  if (v7 && !selectedLanguageCopy)
  {
    v9 = AXLanguageCanonicalFormToGeneralLanguage();
    systemSpokenLanguage = [VOTSharedWorkspace systemSpokenLanguage];
    v11 = [systemSpokenLanguage hasPrefix:v9];

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

- (void)_updateActionWithCanonicalMappings:(id)mappings
{
  mappingsCopy = mappings;
  string = [mappingsCopy string];
  precomposedStringWithCanonicalMapping = [string precomposedStringWithCanonicalMapping];

  [mappingsCopy setString:precomposedStringWithCanonicalMapping];
}

- (float)mapSettingsPitchToSpeechPitch:(float)pitch
{
  if (pitch < 0.5)
  {
    return (pitch + pitch) * 0.5 + 0.5;
  }

  v3 = 1.0;
  if (pitch > 0.5)
  {
    return ((pitch + -0.5) + (pitch + -0.5)) + 1.0;
  }

  return v3;
}

- (void)_updatePitch:(id)pitch settingsPitch:(float)settingsPitch
{
  if (pitch)
  {
    [pitch floatValue];
    v7 = *&v6 + ((2.0 - *&v6) * ((settingsPitch + -0.5) + (settingsPitch + -0.5)));
  }

  else
  {
    [(VOTOutputSpeechComponent *)self mapSettingsPitchToSpeechPitch:*&settingsPitch];
    v7 = *&v6;
  }

  *&v6 = v7;
  [(TTSSpeechSynthesizer *)self->_synthesizer setPitch:v6];
  synthesizerForTelephonyMixin = [(VOTOutputSpeechComponent *)self synthesizerForTelephonyMixin];
  *&v8 = v7;
  [synthesizerForTelephonyMixin setPitch:v8];
}

- (void)_updateDuckingBasedOnActivity:(id)activity
{
  v12 = [(VOTOutputComponent *)self determineActivityForAction:activity];
  activityBasedAudioDucking = [(VOTOutputSpeechComponent *)self activityBasedAudioDucking];
  v5 = [activityBasedAudioDucking copy];

  audioDucking = [v12 audioDucking];

  if (audioDucking)
  {
    audioDucking2 = [v12 audioDucking];
    [(VOTOutputSpeechComponent *)self setActivityBasedAudioDucking:audioDucking2];
  }

  else
  {
    [(VOTOutputSpeechComponent *)self setActivityBasedAudioDucking:0];
  }

  audioDuckingAmount = [v12 audioDuckingAmount];

  if (audioDuckingAmount)
  {
    audioDuckingAmount2 = [v12 audioDuckingAmount];
    [(VOTOutputSpeechComponent *)self setActivityBasedAudioDuckingAmount:audioDuckingAmount2];
  }

  activityBasedAudioDucking2 = [(VOTOutputSpeechComponent *)self activityBasedAudioDucking];
  activityBasedAudioDuckingAmount = [(VOTOutputSpeechComponent *)self activityBasedAudioDuckingAmount];
  if (activityBasedAudioDuckingAmount)
  {

LABEL_8:
    [(VOTOutputSpeechComponent *)self _updateAudioSessionProperties];
    goto LABEL_11;
  }

  if (v5 | activityBasedAudioDucking2 && ([v5 isEqual:activityBasedAudioDucking2] & 1) == 0)
  {
    goto LABEL_8;
  }

LABEL_11:
}

- (void)_handlePerformAction:(id)action
{
  actionCopy = action;
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

  v7 = [actionCopy objectForIndex:14];
  speechMuted = [VOTSharedWorkspace speechMuted];
  voiceOverIsIdle = [VOTSharedWorkspace voiceOverIsIdle];
  v10 = [(VOTOutputComponent *)self determineOutputMutedForActivity:v7];
  [(VOTOutputSpeechComponent *)self _updateDuckingBasedOnActivity:v7];
  v11 = [v7 objectForVariant:25];
  bOOLValue = [v11 BOOLValue];

  v13 = +[VOTElement systemAppApplication];
  isSiriTalkingOrListening = [v13 isSiriTalkingOrListening];

  if (!isSiriTalkingOrListening && (((speechMuted | voiceOverIsIdle | v10) ^ 1 | bOOLValue) & 1) != 0)
  {
    v15 = [v7 objectForVariant:32];
    self->_userStopped = 0;
    self->_isSpeaking = 1;
    v16 = [v7 objectForVariant:74];
    v17 = [v7 objectForVariant:87];
    string = [v7 string];
    v19 = [(VOTOutputSpeechComponent *)self stringReplacingBrailleDotRanges:string];

    string2 = [v7 string];

    if (v19 != string2)
    {
      [v7 setString:v19];
    }

    v126 = v19;
    [(TTSSpeechSynthesizer *)self->_synthesizer setSpeechSource:v17];
    [(TTSSpeechSynthesizer *)self->_synthesizer setVoiceIdentifier:v16];
    synthesizerForTelephonyMixin = [(VOTOutputSpeechComponent *)self synthesizerForTelephonyMixin];
    [synthesizerForTelephonyMixin setSpeechSource:v17];

    synthesizerForTelephonyMixin2 = [(VOTOutputSpeechComponent *)self synthesizerForTelephonyMixin];
    [synthesizerForTelephonyMixin2 setVoiceIdentifier:v16];

    [(VOTOutputSpeechComponent *)self _updateActionWithCanonicalMappings:v7];
    outputRequest = [v7 outputRequest];
    [outputRequest setStartedRequest:1];

    string3 = [v7 string];
    if ([string3 length])
    {
      v125 = v17;
      outputRequest2 = [v7 outputRequest];
      if (![outputRequest2 disableOutput])
      {
        outputRequest3 = [v7 outputRequest];
        suppressSpeech = [outputRequest3 suppressSpeech];

        v17 = v125;
        if ((suppressSpeech & 1) == 0)
        {
          v121 = v16;
          v30 = [v7 objectForVariant:89];
          rate = [v30 rate];
          v32 = rate;
          if (rate)
          {
            v33 = rate;
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

          pitch = [v30 pitch];
          v38 = pitch;
          if (pitch)
          {
            v39 = pitch;
          }

          else
          {
            v39 = &off_1001D9990;
          }

          v40 = v39;

          volume = [v30 volume];
          v42 = volume;
          v119 = v40;
          v120 = v30;
          if (volume)
          {
            v124 = volume;
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

          voiceSettings = [v30 voiceSettings];
          [(TTSSpeechSynthesizer *)self->_synthesizer setPerVoiceSettings:voiceSettings];

          effects = [v30 effects];
          [(TTSSpeechSynthesizer *)self->_synthesizer setAudioEffects:effects];

          voiceSettings2 = [v30 voiceSettings];
          synthesizerForTelephonyMixin3 = [(VOTOutputSpeechComponent *)self synthesizerForTelephonyMixin];
          [synthesizerForTelephonyMixin3 setPerVoiceSettings:voiceSettings2];

          [v40 floatValue];
          [(VOTOutputSpeechComponent *)self _updatePitch:v15 settingsPitch:?];
          synthesizer = self->_synthesizer;
          [v124 floatValue];
          [(TTSSpeechSynthesizer *)synthesizer setVolume:?];
          [v124 floatValue];
          v53 = v52;
          synthesizerForTelephonyMixin4 = [(VOTOutputSpeechComponent *)self synthesizerForTelephonyMixin];
          LODWORD(v55) = v53;
          [synthesizerForTelephonyMixin4 setVolume:v55];

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
              synthesizerForTelephonyMixin5 = [(VOTOutputSpeechComponent *)self synthesizerForTelephonyMixin];
              *&v63 = v58;
              [synthesizerForTelephonyMixin5 setNormalizedRate:v63];

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
          bOOLValue2 = [v69 BOOLValue];
          synthesizerForTelephonyMixin6 = [(VOTOutputSpeechComponent *)self synthesizerForTelephonyMixin];
          [synthesizerForTelephonyMixin6 setIgnoreSubstitutions:bOOLValue2];

          v72 = [v7 objectForVariant:43];
          synthesizerForTelephonyMixin7 = [(VOTOutputSpeechComponent *)self synthesizerForTelephonyMixin];
          [synthesizerForTelephonyMixin7 setBundleIdentifier:v72];

          outputRequest4 = [v7 outputRequest];
          -[TTSSpeechSynthesizer setSynthesizeSilently:](self->_synthesizer, "setSynthesizeSilently:", [outputRequest4 synthesizeSilently]);

          v75 = [TTSSpeechSynthesizer voiceForIdentifier:v121];
          boundLanguage = [v30 boundLanguage];
          v115 = v75;
          v116 = v15;
          if (boundLanguage || ([v75 language], (boundLanguage = objc_claimAutoreleasedReturnValue()) != 0))
          {
            v77 = boundLanguage;
            [v7 setObject:? forVariant:?];
            v78 = self->_synthesizer;
            string4 = [v7 string];
            v133 = 0;
            v134 = 0;
            [(TTSSpeechSynthesizer *)v78 startSpeakingString:string4 withLanguageCode:v77 request:&v134 error:&v133];
            v80 = v134;
            v81 = v133;

            synthesizerForTelephonyMixin8 = [(VOTOutputSpeechComponent *)self synthesizerForTelephonyMixin];
            string5 = [v7 string];
            v131 = v81;
            v132 = v80;
            v84 = &v132;
            v117 = v77;
            v85 = &v131;
            [synthesizerForTelephonyMixin8 startSpeakingString:string5 withLanguageCode:v77 request:&v132 error:&v131];
          }

          else
          {
            v109 = self->_synthesizer;
            string6 = [v7 string];
            v129 = 0;
            v130 = 0;
            [(TTSSpeechSynthesizer *)v109 startSpeakingString:string6 withLanguageCode:0 request:&v130 error:&v129];
            v80 = v130;
            v81 = v129;

            synthesizerForTelephonyMixin8 = [(VOTOutputSpeechComponent *)self synthesizerForTelephonyMixin];
            string5 = [v7 string];
            v127 = v81;
            v128 = v80;
            v84 = &v128;
            v85 = &v127;
            [synthesizerForTelephonyMixin8 startSpeakingString:string5 withLanguageCode:0 request:&v128 error:&v127];
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
            resolvedVoiceIdentifier = [(TTSSpeechSynthesizer *)self->_synthesizer resolvedVoiceIdentifier];
            string7 = [v7 string];
            *buf = 138478339;
            *v136 = v117;
            *&v136[8] = 2113;
            v137 = resolvedVoiceIdentifier;
            *v138 = 2117;
            *&v138[2] = string7;
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
            objc_setAssociatedObject(object, &unk_1001FEAB8, actionCopy, 1);
          }

          v92 = [v7 objectForVariant:41];
          bOOLValue3 = [v92 BOOLValue];

          v94 = +[AXSpringBoardServer server];
          if (![v94 isScreenLockedWithPasscode:0] || bOOLValue3)
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
              disableIdleTimerAssertion = [(VOTOutputSpeechComponent *)self disableIdleTimerAssertion];

              if (!disableIdleTimerAssertion)
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
            synthesizerForTelephonyMixin9 = [(VOTOutputSpeechComponent *)self synthesizerForTelephonyMixin];
            *&v108 = v57;
            [synthesizerForTelephonyMixin9 setNormalizedRate:v108];
          }

          self->_lastTimeSpeechStarted = CFAbsoluteTimeGetCurrent();

          v17 = v125;
          goto LABEL_16;
        }

LABEL_15:
        [(VOTOutputSpeechComponent *)self _didStartSpeakingAction:actionCopy];
        [(VOTOutputSpeechComponent *)self _notifyDidFinishSpeakingWithFakeRequestForEvent:actionCopy];
LABEL_16:

        goto LABEL_22;
      }

      v17 = v125;
    }

    goto LABEL_15;
  }

  outputRequest5 = [v7 outputRequest];
  [outputRequest5 setStartedRequest:1];

  v27 = VOTLogAudio();
  if (os_log_type_enabled(v27, OS_LOG_TYPE_INFO))
  {
    *buf = 67109888;
    *v136 = speechMuted;
    *&v136[4] = 1024;
    *&v136[6] = voiceOverIsIdle & 1;
    LOWORD(v137) = 1024;
    *(&v137 + 2) = v10 & 1;
    HIWORD(v137) = 1024;
    *v138 = isSiriTalkingOrListening;
    _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_INFO, "VO muted for reason: speech muted: %d, vo is idle: %d, activity says so: %d, siri talking: %d", buf, 0x1Au);
  }

  if (([(TTSSpeechSynthesizer *)self->_synthesizer isSpeaking]& 1) == 0)
  {
    [(VOTOutputSpeechComponent *)self _notifyDidFinishSpeakingWithFakeRequestForEvent:actionCopy];
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

- (id)_spokenTextForRequest:(id)request range:(_NSRange *)range
{
  rangeCopy = range;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  requestCopy = request;
  outputActions = [requestCopy outputActions];
  v6 = [outputActions countByEnumeratingWithState:&v22 objects:v26 count:16];
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
          objc_enumerationMutation(outputActions);
        }

        v11 = *(*(&v22 + 1) + 8 * i);
        if (![v11 component])
        {
          string = [v11 string];
          v13 = [string length];

          if (v13)
          {
            if ([(__CFString *)v9 length])
            {
              v14 = [(__CFString *)v9 stringByAppendingString:@", "];

              v9 = v14;
            }

            string2 = [v11 string];
            v16 = [(__CFString *)v9 stringByAppendingString:string2];

            v9 = v16;
          }
        }
      }

      v7 = [outputActions countByEnumeratingWithState:&v22 objects:v26 count:16];
    }

    while (v7);
  }

  else
  {
    v9 = &stru_1001CBF90;
  }

  ssmlRegex = [(VOTOutputSpeechComponent *)self ssmlRegex];
  v18 = [(VOTOutputSpeechComponent *)self _processCaptionTextForMarkup:v9 regex:ssmlRegex range:rangeCopy];

  return v18;
}

- (id)_processCaptionTextForMarkup:(id)markup regex:(id)regex range:(_NSRange *)range
{
  markupCopy = markup;
  regexCopy = regex;
  v8 = [regexCopy matchesInString:markupCopy options:0 range:{0, objc_msgSend(markupCopy, "length")}];
  location = range->location;
  length = range->length;
  v24 = markupCopy;
  v10 = [markupCopy mutableCopy];
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
        if ([v16 range] < range->location)
        {
          [v16 range];
          location -= v17;
        }

        range = [v16 range];
        [v16 range];
        [v10 replaceCharactersInRange:&range[v13] withString:{v19, &stru_1001CBF90}];
        [v16 range];
        v13 -= v20;
      }

      v12 = [obj countByEnumeratingWithState:&v26 objects:v30 count:16];
    }

    while (v12);
  }

  range->location = location;
  range->length = length;

  return v10;
}

- (void)_capVolumeForLanguage:(id)language volume:(float)volume
{
  languageCopy = language;
  if (!self->_isVolumeCapped)
  {
    v9 = languageCopy;
    v7 = [languageCopy isEqualToString:@"zh-CN"];
    v8 = volume <= 0.94 || v7 == 0;
    languageCopy = v9;
    if (!v8)
    {
      [(TTSSpeechSynthesizer *)self->_synthesizer setVolume:?];
      languageCopy = v9;
      self->_isVolumeCapped = 1;
    }
  }
}

- (void)_uncapVolume:(float)volume
{
  if (self->_isVolumeCapped)
  {
    [(TTSSpeechSynthesizer *)self->_synthesizer setVolume:?];
    self->_isVolumeCapped = 0;
  }
}

- (void)_didStartSpeakingAction:(id)action
{
  actionCopy = action;
  v5 = VOTLogSpeech();
  if (os_signpost_enabled(v5))
  {
    LOWORD(v19) = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v5, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "VOT-BeginSpeaking", "", &v19, 2u);
  }

  v6 = objc_autoreleasePoolPush();
  v7 = [actionCopy objectForIndex:14];
  if ([VOTSharedWorkspace inPerformanceTestMode])
  {
    v8 = +[AXPerformanceTestReportingServer server];
    string = [v7 string];
    [v8 voiceOverDidSpeak:string];
  }

  outputRequest = [v7 outputRequest];
  outputActions = [outputRequest outputActions];
  firstObject = [outputActions firstObject];

  if (firstObject == v7)
  {
    if ([VOTSharedWorkspace inUnitTestMode])
    {
      outputRequest2 = [v7 outputRequest];
      startBlock = [outputRequest2 startBlock];

      if (startBlock)
      {
        outputRequest3 = [v7 outputRequest];
        (startBlock)[2](startBlock, outputRequest3);
      }
    }

    v20 = 0;
    outputRequest4 = [v7 outputRequest];
    v17 = [(VOTOutputSpeechComponent *)self _spokenTextForRequest:outputRequest4 range:&v19];

    v18 = +[VOTDisplayManager displayManager];
    [v18 setVoiceOverCaptionText:v17 withRange:v19 language:v20 voice:{0, 0}];
  }

  objc_autoreleasePoolPop(v6);
}

- (void)speechSynthesizer:(id)synthesizer didStartSpeakingRequest:(id)request
{
  v5 = objc_getAssociatedObject(request, &unk_1001FEAB8);
  [(VOTOutputSpeechComponent *)self _didStartSpeakingAction:v5];
}

- (void)speechSynthesizer:(id)synthesizer willSpeakRangeOfSpeechString:(_NSRange)string forRequest:(id)request
{
  length = string.length;
  location = string.location;
  stringCopy = string;
  synthesizerCopy = synthesizer;
  requestCopy = request;
  context = objc_autoreleasePoolPush();
  v10 = objc_getAssociatedObject(requestCopy, &unk_1001FEAB8);
  v11 = [v10 objectForIndex:14];
  v37 = v10;
  v12 = [v10 objectForIndex:13];
  v13 = [v11 objectForVariant:18];
  v14 = v13;
  if (v13)
  {
    [v13 speechSynthesizer:0 willSpeakRangeOfSpeechString:location forRequest:{length, requestCopy}];
  }

  v33 = v14;
  v39 = requestCopy;
  v15 = [v11 objectForVariant:41];
  bOOLValue = [v15 BOOLValue];

  if ((bOOLValue & 1) == 0 && self->_lastTimeSpeechStarted != -3061152000.0 && CFAbsoluteTimeGetCurrent() - self->_lastTimeSpeechStarted > 7.0)
  {
    self->_lastTimeSpeechStarted = CFAbsoluteTimeGetCurrent();
    v17 = +[VOTUserEventManager sharedInstance];
    [v17 userEventOccurred];
  }

  v18 = [objc_allocWithZone(AXIndexMap) init];
  [v18 setObject:v11 forIndex:11];
  [v18 setObject:v12 forIndex:13];
  outputRequest = [v11 outputRequest];
  v32 = v18;
  [(VOTOutputComponent *)self notifyRangeWillOutput:location container:length, v18];
  outputActions = [outputRequest outputActions];
  v21 = [outputActions indexOfObject:v11];

  v35 = v12;
  v36 = v11;
  selfCopy = self;
  if (v21 && v21 != 0x7FFFFFFFFFFFFFFFLL)
  {
    for (i = 0; i < v21; ++i)
    {
      outputActions2 = [outputRequest outputActions];
      v24 = [outputActions2 objectAtIndexedSubscript:i];

      string = [v24 string];
      v26 = [string length];

      if (v26)
      {
        string2 = [v24 string];
        v28 = [string2 length];
        v29 = [@" "];

        location += v28 + v29;
      }
    }
  }

  stringCopy.location = location;
  v30 = [(VOTOutputSpeechComponent *)selfCopy _spokenTextForRequest:outputRequest range:&stringCopy];
  v31 = +[VOTDisplayManager displayManager];
  [v31 setVoiceOverCaptionText:v30 withRange:stringCopy.location language:stringCopy.length voice:{0, 0}];

  objc_autoreleasePoolPop(context);
}

- (void)speechSynthesizer:(id)synthesizer didFinishSpeakingRequest:(id)request successfully:(BOOL)successfully withError:(id)error
{
  errorCopy = error;
  if (errorCopy)
  {
    requestCopy = request;
    languageCode = [requestCopy languageCode];
    requestCopy2 = [TTSSpeechSynthesizer _speechVoiceForIdentifier:0 language:languageCode footprint:1];

    v12 = VOTLogSpeech();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      sub_100129C0C(errorCopy, requestCopy2);
    }

    v13 = objc_getAssociatedObject(requestCopy, &unk_1001FEAB8);

    v14 = [v13 deepCopyWithZone:0];
    v15 = [v14 objectForIndex:14];
    identifier = [requestCopy2 identifier];
    [v15 setObject:identifier forVariant:74];

    [(VOTOutputSpeechComponent *)self handleEvent:v14];
  }

  else
  {
    speechThread = self->_speechThread;
    requestCopy2 = request;
    [(SCRCThread *)speechThread performSelector:"_didFinishSpeaking:" onTarget:self cancelMask:0 count:1 objects:requestCopy2];
  }
}

- (void)_didFinishSpeaking:(id)speaking
{
  speakingCopy = speaking;
  v5 = objc_getAssociatedObject(speakingCopy, &unk_1001FEAB8);
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

  objc_setAssociatedObject(speakingCopy, &unk_1001FEAB8, 0, 1);
  if (self->_currentRequest == speakingCopy)
  {
    self->_isSpeaking = 0;
    v12 = +[VOTOutputManager outputManager];
    [v12 disableAudioSession:@"SPEECH"];
  }

  v13 = objc_getAssociatedObject(speakingCopy, &unk_1001FEBB8);
  bOOLValue = [v13 BOOLValue];

  if (bOOLValue && ![(VOTOutputSpeechComponent *)self isSpeaking])
  {
    disableIdleTimerAssertion = [(VOTOutputSpeechComponent *)self disableIdleTimerAssertion];
    [disableIdleTimerAssertion invalidate];

    [(VOTOutputSpeechComponent *)self setDisableIdleTimerAssertion:0];
  }
}

- (BOOL)replacesCharacterAsPunctuation:(unsigned __int16)punctuation
{
  punctuationCopy = punctuation;
  currentAllPunctuationTable = [(VOTOutputSpeechComponent *)self currentAllPunctuationTable];
  v5 = [currentAllPunctuationTable objectForIndex:punctuationCopy];
  LOBYTE(punctuationCopy) = v5 != 0;

  return punctuationCopy;
}

@end