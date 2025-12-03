@interface AXSpeakServer
+ (id)requiredEntitlementForProcessingMessageWithIdentifier:(unint64_t)identifier;
+ (id)sharedInstance;
- (AXSpeakServer)init;
- (BOOL)_isAllowedToSpeakForPid:(int)pid;
- (BOOL)typingFeedbackEnabled;
- (TTSSpeechManager)speechManager;
- (id)_massageKeyboardLanguage:(id)language;
- (id)_prepareSpeechAction;
- (id)_processCharacterForPunctuation:(id)punctuation;
- (void)_observeNotifications:(BOOL)notifications;
- (void)_observeSpeechAccessibilityPreferenceChanges;
- (void)_processTypingFeedback:(id)feedback;
- (void)_tryObservingNotifications;
- (void)_updateSpokenLangugage:(id)langugage;
- (void)dealloc;
- (void)handleFirstValueChangeWithCompletion:(id)completion;
- (void)handleTextReplacementOccurred:(id)occurred;
- (void)handleValueChange:(id)change;
- (void)processAutocorrectionOutput:(id)output;
- (void)processDelayedTypingFeedback:(id)feedback;
- (void)processWordOutput:(id)output;
- (void)withFirstResponderOnMainQueue:(id)queue;
@end

@implementation AXSpeakServer

- (TTSSpeechManager)speechManager
{
  speechManager = self->_speechManager;
  if (!speechManager)
  {
    v4 = objc_alloc_init(TTSSpeechManager);
    v5 = self->_speechManager;
    self->_speechManager = v4;

    [(TTSSpeechManager *)self->_speechManager setUsesAuxiliarySession:1];
    speechManager = self->_speechManager;
  }

  return speechManager;
}

+ (id)sharedInstance
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1278;
  block[3] = &unk_8338;
  block[4] = self;
  if (qword_CB68 != -1)
  {
    dispatch_once(&qword_CB68, block);
  }

  v2 = qword_CB60;

  return v2;
}

- (AXSpeakServer)init
{
  v22.receiver = self;
  v22.super_class = AXSpeakServer;
  v2 = [(AXSpeakServer *)&v22 init];
  if (v2)
  {
    v3 = +[TTSSpeechManager availableLanguageCodes];
    availableLanguages = v2->_availableLanguages;
    v2->_availableLanguages = v3;

    v5 = objc_allocWithZone(NSDictionary);
    v6 = [NSBundle bundleWithIdentifier:@"com.apple.AccessibilitySettingsLoader"];
    v7 = [v6 pathForResource:@"KeyboardToLanguage" ofType:@"plist"];
    v8 = [v5 initWithContentsOfFile:v7];
    keyboardToLanguage = v2->_keyboardToLanguage;
    v2->_keyboardToLanguage = v8;

    v10 = dispatch_queue_create("speak-corrections-punctuation", 0);
    punctuationLoaderQueue = v2->_punctuationLoaderQueue;
    v2->_punctuationLoaderQueue = v10;

    v2->_pasteOperationOccurred = 0;
    v12 = [[AXDispatchTimer alloc] initWithTargetSerialQueue:&_dispatch_main_q];
    feedbackDelayTimer = v2->_feedbackDelayTimer;
    v2->_feedbackDelayTimer = v12;

    [(AXDispatchTimer *)v2->_feedbackDelayTimer setAutomaticallyCancelPendingBlockUponSchedulingNewBlock:1];
    v14 = objc_alloc_init(AXCharacterSoundMap);
    characterSoundMap = v2->_characterSoundMap;
    v2->_characterSoundMap = v14;

    v2->_lastTextReplacementOccurredTime = -3061152000.0;
    v16 = objc_alloc_init(AXIndexMap);
    letterPunctuationTable = v2->_letterPunctuationTable;
    v2->_letterPunctuationTable = v16;

    v18 = dispatch_queue_create("AXSpeakServer.Operation", 0);
    operationQueue = v2->_operationQueue;
    v2->_operationQueue = v18;

    [(AXSpeakServer *)v2 _observeSpeechAccessibilityPreferenceChanges];
    [(AXSpeakServer *)v2 _tryObservingNotifications];
    v20 = v2;
  }

  return v2;
}

- (BOOL)typingFeedbackEnabled
{
  v2 = +[AXSettings sharedInstance];
  if ([v2 phoneticFeedbackEnabled] & 1) != 0 || (objc_msgSend(v2, "wordFeedbackEnabled") & 1) != 0 || (objc_msgSend(v2, "letterFeedbackEnabled") & 1) != 0 || (objc_msgSend(v2, "speakCorrectionsEnabled"))
  {
    quickTypePredictionFeedbackEnabled = 1;
  }

  else
  {
    quickTypePredictionFeedbackEnabled = [v2 quickTypePredictionFeedbackEnabled];
  }

  return quickTypePredictionFeedbackEnabled;
}

- (void)_observeSpeechAccessibilityPreferenceChanges
{
  objc_initWeak(&location, self);
  v9 = _NSConcreteStackBlock;
  v10 = 3221225472;
  v11 = sub_1660;
  v12 = &unk_8360;
  objc_copyWeak(&v13, &location);
  v3 = objc_retainBlock(&v9);
  v4 = [AXSettings sharedInstance:v9];
  [v4 registerUpdateBlock:v3 forRetrieveSelector:"phoneticFeedbackEnabled" withListener:self];

  v5 = +[AXSettings sharedInstance];
  [v5 registerUpdateBlock:v3 forRetrieveSelector:"wordFeedbackEnabled" withListener:self];

  v6 = +[AXSettings sharedInstance];
  [v6 registerUpdateBlock:v3 forRetrieveSelector:"letterFeedbackEnabled" withListener:self];

  v7 = +[AXSettings sharedInstance];
  [v7 registerUpdateBlock:v3 forRetrieveSelector:"speakCorrectionsEnabled" withListener:self];

  v8 = +[AXSettings sharedInstance];
  [v8 registerUpdateBlock:v3 forRetrieveSelector:"quickTypePredictionFeedbackEnabled" withListener:self];

  objc_destroyWeak(&v13);
  objc_destroyWeak(&location);
}

- (void)_tryObservingNotifications
{
  if ([(AXSpeakServer *)self typingFeedbackEnabled])
  {

    [(AXSpeakServer *)self _observeNotifications:1];
  }
}

- (void)dealloc
{
  [(AXSpeakServer *)self _observeNotifications:0];
  currentLanguage = self->_currentLanguage;
  self->_currentLanguage = 0;

  v4.receiver = self;
  v4.super_class = AXSpeakServer;
  [(AXSpeakServer *)&v4 dealloc];
}

- (void)_observeNotifications:(BOOL)notifications
{
  if (notifications)
  {
    objc_initWeak(&location, self);
    v4[0] = _NSConcreteStackBlock;
    v4[1] = 3221225472;
    v4[2] = sub_185C;
    v4[3] = &unk_8388;
    v4[4] = self;
    objc_copyWeak(&v5, &location);
    [AXElement registerNotifications:&off_8910 withIdentifier:@"SpeakTyping" withHandler:v4];
    objc_destroyWeak(&v5);
    objc_destroyWeak(&location);
  }

  else
  {

    [AXElement unregisterNotifications:@"SpeakTyping"];
  }
}

- (id)_massageKeyboardLanguage:(id)language
{
  v4 = AXCLanguageConvertToCanonicalForm();
  if (![(NSArray *)self->_availableLanguages containsObject:v4])
  {
    v5 = [(NSDictionary *)self->_keyboardToLanguage objectForKey:v4];

    v4 = v5;
  }

  return v4;
}

- (void)_updateSpokenLangugage:(id)langugage
{
  langugageCopy = langugage;
  v5 = [(AXSpeakServer *)self _massageKeyboardLanguage:langugageCopy];
  v6 = AXLogSpeakTyping();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    currentLanguage = self->_currentLanguage;
    *buf = 138412802;
    v11 = currentLanguage;
    v12 = 2112;
    v13 = langugageCopy;
    v14 = 2112;
    v15 = v5;
    _os_log_impl(&dword_0, v6, OS_LOG_TYPE_INFO, "Updating language: Current: %@ new: %@ [massaged: %@]", buf, 0x20u);
  }

  if (![(NSString *)self->_currentLanguage isEqualToString:v5]&& self->_currentLanguage | v5)
  {
    objc_storeStrong(&self->_currentLanguage, v5);
    [(AXIndexMap *)self->_letterPunctuationTable removeAllObjects];
    punctuationLoaderQueue = self->_punctuationLoaderQueue;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1B54;
    block[3] = &unk_83D8;
    block[4] = self;
    dispatch_async(punctuationLoaderQueue, block);
  }
}

- (void)handleTextReplacementOccurred:(id)occurred
{
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_1CA4;
  v5[3] = &unk_8400;
  occurredCopy = occurred;
  selfCopy = self;
  v4 = occurredCopy;
  [(AXSpeakServer *)self withFirstResponderOnMainQueue:v5];
}

- (void)withFirstResponderOnMainQueue:(id)queue
{
  queueCopy = queue;
  operationQueue = [(AXSpeakServer *)self operationQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1E7C;
  block[3] = &unk_8478;
  v8 = queueCopy;
  v6 = queueCopy;
  dispatch_async(operationQueue, block);
}

- (void)handleFirstValueChangeWithCompletion:(id)completion
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_2108;
  v4[3] = &unk_84E0;
  selfCopy = self;
  completionCopy = completion;
  v3 = completionCopy;
  [(AXSpeakServer *)selfCopy withFirstResponderOnMainQueue:v4];
}

- (void)handleValueChange:(id)change
{
  changeCopy = change;
  v5 = AXLogSpeakTyping();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v45 = changeCopy;
    _os_log_impl(&dword_0, v5, OS_LOG_TYPE_INFO, "Value change %@", buf, 0xCu);
  }

  if (!UIAccessibilityIsVoiceOverRunning())
  {
    if (CFAbsoluteTimeGetCurrent() - self->_lastTextReplacementOccurredTime < 0.1)
    {
      v6 = AXLogSpeakTyping();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_0, v6, OS_LOG_TYPE_INFO, "Value change but we just had a text replacement occur", buf, 2u);
      }

      goto LABEL_20;
    }

    responderElement = [(AXSpeakServer *)self responderElement];
    if (responderElement)
    {
      v8 = responderElement;
      responderElement2 = [(AXSpeakServer *)self responderElement];
      isValid = [responderElement2 isValid];

      if (isValid)
      {
        responderElement3 = [(AXSpeakServer *)self responderElement];
        traits = [responderElement3 traits];
        v13 = kAXSecureTextFieldTrait & ~traits;

        if (!v13)
        {
          goto LABEL_20;
        }

        elementValueText = [(AXSpeakServer *)self elementValueText];
        if ([elementValueText isAXAttributedString] && objc_msgSend(elementValueText, "hasAttribute:", UIAccessibilityTokenPlaceholder))
        {

          elementValueText = 0;
        }

        responderElement4 = [(AXSpeakServer *)self responderElement];
        [responderElement4 updateCache:2006];

        responderElement5 = [(AXSpeakServer *)self responderElement];
        value = [responderElement5 value];

        responderElement6 = [(AXSpeakServer *)self responderElement];
        selectedTextRange = [responderElement6 selectedTextRange];
        v40 = v20;
        v41 = selectedTextRange;

        v21 = +[UIKeyboardInputModeController sharedInputModeController];
        currentInputModeInPreference = [v21 currentInputModeInPreference];
        primaryLanguage = [currentInputModeInPreference primaryLanguage];

        [(AXSpeakServer *)self _updateSpokenLangugage:primaryLanguage];
        v24 = [elementValueText length];
        v25 = [value length];
        responderElement7 = [(AXSpeakServer *)self responderElement];
        application = [responderElement7 application];
        isDictationListening = [application isDictationListening];

        if (isDictationListening)
        {
          v29 = AXLogSpeakTyping();
          if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&dword_0, v29, OS_LOG_TYPE_DEFAULT, "Will not speak because app-dictation is running", buf, 2u);
          }
        }

        else
        {
          if (self->_pasteOperationOccurred)
          {
            goto LABEL_36;
          }

          v31 = v24 - v25;
          if (_AXSLetterFeedbackEnabled() || _AXSPhoneticFeedbackEnabled())
          {
            v32 = +[AXFirstResponderValueChangeManager sharedInstance];
            LOBYTE(v39) = 1;
            v33 = [v32 outputValueChangeForNewValue:value oldValue:elementValueText selectedTextRange:v41 shouldEchoDeletion:v40 isSingleInsert:0 feedbackType:v31 == -1 lastKeyboardKeyPress:CFAbsoluteTimeGetCurrent() shouldOutputSingleCharactersOnly:{1, v39}];
            v34 = [v33 stringByReplacingOccurrencesOfString:@" " withString:&stru_8658];

            if (v34 && [v34 length])
            {
              v35 = AXLogSpeakTyping();
              if (os_log_type_enabled(v35, OS_LOG_TYPE_INFO))
              {
                *buf = 138477827;
                v45 = v34;
                _os_log_impl(&dword_0, v35, OS_LOG_TYPE_INFO, "New output string to process: %{private}@", buf, 0xCu);
              }

              [(AXSpeakServer *)self processDelayedTypingFeedback:v34];
            }
          }

          if (!_AXSWordFeedbackEnabled())
          {
            goto LABEL_36;
          }

          v36 = +[AXFirstResponderValueChangeManager sharedInstance];
          v37 = [v36 outputValueChangeForNewValue:value oldValue:elementValueText selectedTextRange:v41 shouldEchoDeletion:v40 isSingleInsert:0 feedbackType:v31 == -1 lastKeyboardKeyPress:{CFAbsoluteTimeGetCurrent(), 2}];
          v29 = [v37 stringByReplacingOccurrencesOfString:@" " withString:&stru_8658];

          v38 = AXLogSpeakTyping();
          if (os_log_type_enabled(v38, OS_LOG_TYPE_INFO))
          {
            *buf = 138477827;
            v45 = v29;
            _os_log_impl(&dword_0, v38, OS_LOG_TYPE_INFO, "New output string to process: %{private}@", buf, 0xCu);
          }

          if ([v29 length])
          {
            [(AXSpeakServer *)self processWordOutput:v29];
          }
        }

LABEL_36:
        [(AXSpeakServer *)self setElementValueText:value];

        goto LABEL_20;
      }
    }

    v30 = AXLogSpeakTyping();
    if (os_log_type_enabled(v30, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_0, v30, OS_LOG_TYPE_INFO, "Need a new responder", buf, 2u);
    }

    v42[0] = _NSConcreteStackBlock;
    v42[1] = 3221225472;
    v42[2] = sub_27C8;
    v42[3] = &unk_83B0;
    v42[4] = self;
    v43 = changeCopy;
    [(AXSpeakServer *)self handleFirstValueChangeWithCompletion:v42];
  }

LABEL_20:
}

- (id)_prepareSpeechAction
{
  v3 = objc_alloc_init(TTSSpeechAction);
  [v3 setShouldProcessEmoji:1];
  if (self->_currentLanguage)
  {
    v4 = AXLanguageCanonicalFormToGeneralLanguage();
  }

  else
  {
    v5 = +[AVSpeechSynthesisVoice currentLanguageCode];
    v4 = AXLanguageCanonicalFormToGeneralLanguage();
  }

  v6 = +[AXSettings sharedInstance];
  v7 = [v6 speechVoiceIdentifierForLanguage:v4 sourceKey:AXSpeechSourceKeySpeechFeatures exists:0];

  [v3 setVoiceIdentifier:v7];
  [v3 setLanguage:self->_currentLanguage];
  v8 = +[AXSettings sharedInstance];
  [v8 quickSpeakSpeakingRate];
  [v3 setSpeakingRate:v9];

  return v3;
}

- (void)processAutocorrectionOutput:(id)output
{
  outputCopy = output;
  _prepareSpeechAction = [(AXSpeakServer *)self _prepareSpeechAction];
  [_prepareSpeechAction setShouldQueue:1];
  [_prepareSpeechAction setCannotInterrupt:1];
  speechManager = [(AXSpeakServer *)self speechManager];
  [speechManager setSpeechEnabled:1];

  [_prepareSpeechAction setString:outputCopy];
  v7 = AXLogSpeakTyping();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 138412290;
    v9 = _prepareSpeechAction;
    _os_log_impl(&dword_0, v7, OS_LOG_TYPE_DEFAULT, "Process autocorrect: %@", &v8, 0xCu);
  }

  [(AXSpeakServer *)self _speakAction:_prepareSpeechAction isForResponderElement:1];
}

- (void)processWordOutput:(id)output
{
  feedbackDelayTimer = self->_feedbackDelayTimer;
  outputCopy = output;
  [(AXDispatchTimer *)feedbackDelayTimer cancel];
  _prepareSpeechAction = [(AXSpeakServer *)self _prepareSpeechAction];
  speechManager = [(AXSpeakServer *)self speechManager];
  [speechManager setSpeechEnabled:1];

  [_prepareSpeechAction setString:outputCopy];
  v8 = AXLogSpeakTyping();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 138412290;
    v10 = _prepareSpeechAction;
    _os_log_impl(&dword_0, v8, OS_LOG_TYPE_DEFAULT, "Process word: %@", &v9, 0xCu);
  }

  [(AXSpeakServer *)self _speakAction:_prepareSpeechAction isForResponderElement:1];
}

- (id)_processCharacterForPunctuation:(id)punctuation
{
  punctuationCopy = punctuation;
  v5 = [punctuationCopy length];
  v6 = punctuationCopy;
  v7 = v6;
  if (v5 <= 2)
  {
    v8 = AXUnicodeCodePointForCharacterString();
    if (v8 >= 0x10000)
    {
      currentLanguage = self->_currentLanguage;
      v7 = AXVOLocalizedStringForCharacter();
      v10 = v6;
    }

    else
    {
      v7 = v6;
      if ([v6 length] != &dword_0 + 1)
      {
        goto LABEL_8;
      }

      letterPunctuationTable = [(AXSpeakServer *)self letterPunctuationTable];
      v10 = [letterPunctuationTable objectForIndex:v8];

      if (v10)
      {
        v10 = v10;

        v7 = v10;
      }

      else
      {
        v7 = v6;
      }
    }
  }

LABEL_8:

  return v7;
}

- (void)_processTypingFeedback:(id)feedback
{
  feedbackCopy = feedback;
  _prepareSpeechAction = [(AXSpeakServer *)self _prepareSpeechAction];
  voiceIdentifier = [_prepareSpeechAction voiceIdentifier];
  speechManager = [(AXSpeakServer *)self speechManager];
  [speechManager setSpeechEnabled:1];

  if ([feedbackCopy length])
  {
    v8 = [(AXSpeakServer *)self _feedbackForCharacter:feedbackCopy andVoiceIdentifier:voiceIdentifier];
    v9 = +[AXLanguageManager sharedInstance];
    language = [_prepareSpeechAction language];
    v11 = [v9 dialectForLanguageID:language];

    if (([v11 canSpeakString:feedbackCopy] & 1) != 0 || v11 && (objc_msgSend(v11, "speakableCharacters"), v12 = objc_claimAutoreleasedReturnValue(), v12, !v12) || AXLanguageIsSpeakableEmojiString())
    {
      v13 = feedbackCopy;
    }

    else
    {
      v13 = [(AXSpeakServer *)self _processCharacterForPunctuation:feedbackCopy];
    }

    v14 = v13;
    if ([v13 isEqualToString:feedbackCopy])
    {
      if ([feedbackCopy length] != &dword_0 + 1)
      {
LABEL_12:
        if (_AXSLetterFeedbackEnabled() && _AXSPhoneticFeedbackEnabled())
        {
          if (v8)
          {
            v17 = [feedbackCopy stringByAppendingString:{@", "}];
            iPASpeechPhonemes3 = [v17 stringByAppendingString:v8];

            iPASpeechPhonemes = [iPASpeechPhonemes3 IPASpeechPhonemes];
            v20 = [iPASpeechPhonemes length];

            if (v20)
            {
              v31 = AVSpeechSynthesisIPANotationAttribute;
              iPASpeechPhonemes2 = [iPASpeechPhonemes3 IPASpeechPhonemes];
              v32 = iPASpeechPhonemes2;
              v22 = [NSDictionary dictionaryWithObjects:&v32 forKeys:&v31 count:1];
            }

            else
            {
              v22 = 0;
            }

            v23 = [NSAttributedString alloc];
            v24 = iPASpeechPhonemes3;
LABEL_28:
            v25 = [v23 initWithString:v24 attributes:v22];
            [_prepareSpeechAction setAttributedString:v25];

            goto LABEL_29;
          }
        }

        else if (!_AXSLetterFeedbackEnabled())
        {
          if (!_AXSPhoneticFeedbackEnabled() || !v8)
          {
            goto LABEL_29;
          }

          iPASpeechPhonemes3 = [v8 IPASpeechPhonemes];
          if ([iPASpeechPhonemes3 length])
          {
            v29 = AVSpeechSynthesisIPANotationAttribute;
            v30 = iPASpeechPhonemes3;
            v22 = [NSDictionary dictionaryWithObjects:&v30 forKeys:&v29 count:1];
          }

          else
          {
            v22 = 0;
          }

          v23 = [NSAttributedString alloc];
          v24 = v8;
          goto LABEL_28;
        }

        [_prepareSpeechAction setString:feedbackCopy];
LABEL_29:

        goto LABEL_30;
      }

      v15 = [TTSSpeechManager literalStringMarkup:voiceIdentifier string:feedbackCopy speakCap:1];
    }

    else
    {
      v15 = v14;
    }

    v16 = v15;

    feedbackCopy = v16;
    goto LABEL_12;
  }

LABEL_30:
  string = [_prepareSpeechAction string];
  if ([string length])
  {

LABEL_33:
    [(AXSpeakServer *)self _speakAction:_prepareSpeechAction isForResponderElement:1];
    goto LABEL_34;
  }

  attributedString = [_prepareSpeechAction attributedString];
  v28 = [attributedString length];

  if (v28)
  {
    goto LABEL_33;
  }

LABEL_34:
}

- (void)processDelayedTypingFeedback:(id)feedback
{
  feedbackCopy = feedback;
  if ([feedbackCopy length])
  {
    v5 = +[AXSettings sharedInstance];
    [v5 characterFeedbackDelayDuration];
    v7 = v6;

    [(AXDispatchTimer *)self->_feedbackDelayTimer cancel];
    objc_initWeak(&location, self);
    feedbackDelayTimer = self->_feedbackDelayTimer;
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_30B4;
    v9[3] = &unk_8508;
    objc_copyWeak(&v11, &location);
    v10 = feedbackCopy;
    [(AXDispatchTimer *)feedbackDelayTimer afterDelay:v9 processBlock:v7];

    objc_destroyWeak(&v11);
    objc_destroyWeak(&location);
  }
}

+ (id)requiredEntitlementForProcessingMessageWithIdentifier:(unint64_t)identifier
{
  if (identifier - 3 > 0xC)
  {
    return @"com.apple.accessibility.SpeakTypingServices";
  }

  else
  {
    return qword_8550[identifier - 3];
  }
}

- (BOOL)_isAllowedToSpeakForPid:(int)pid
{
  responderElement = [(AXSpeakServer *)self responderElement];
  v6 = [responderElement pid];

  if (v6 == pid)
  {
    return 1;
  }

  responderElement2 = [(AXSpeakServer *)self responderElement];

  if (!responderElement2)
  {
    return 0;
  }

  responderElement3 = [(AXSpeakServer *)self responderElement];
  remoteParent = [responderElement3 remoteParent];

  if (!remoteParent)
  {
    return 0;
  }

  v11 = 9;
  while (1)
  {
    v12 = [remoteParent pid];
    v7 = v12 == pid;
    if (v12 == pid)
    {
      break;
    }

    v10RemoteParent = [remoteParent remoteParent];

    if (v11-- != 0)
    {
      remoteParent = v10RemoteParent;
      if (v10RemoteParent)
      {
        continue;
      }
    }

    goto LABEL_13;
  }

  v10RemoteParent = remoteParent;
LABEL_13:

  return v7;
}

@end