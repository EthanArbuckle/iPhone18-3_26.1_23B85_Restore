@interface AXSpeakServer
+ (id)requiredEntitlementForProcessingMessageWithIdentifier:(unint64_t)a3;
+ (id)sharedInstance;
- (AXSpeakServer)init;
- (BOOL)_isAllowedToSpeakForPid:(int)a3;
- (BOOL)typingFeedbackEnabled;
- (TTSSpeechManager)speechManager;
- (id)_massageKeyboardLanguage:(id)a3;
- (id)_prepareSpeechAction;
- (id)_processCharacterForPunctuation:(id)a3;
- (void)_observeNotifications:(BOOL)a3;
- (void)_observeSpeechAccessibilityPreferenceChanges;
- (void)_processTypingFeedback:(id)a3;
- (void)_tryObservingNotifications;
- (void)_updateSpokenLangugage:(id)a3;
- (void)dealloc;
- (void)handleFirstValueChangeWithCompletion:(id)a3;
- (void)handleTextReplacementOccurred:(id)a3;
- (void)handleValueChange:(id)a3;
- (void)processAutocorrectionOutput:(id)a3;
- (void)processDelayedTypingFeedback:(id)a3;
- (void)processWordOutput:(id)a3;
- (void)withFirstResponderOnMainQueue:(id)a3;
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
  block[4] = a1;
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
    v3 = 1;
  }

  else
  {
    v3 = [v2 quickTypePredictionFeedbackEnabled];
  }

  return v3;
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

- (void)_observeNotifications:(BOOL)a3
{
  if (a3)
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

- (id)_massageKeyboardLanguage:(id)a3
{
  v4 = AXCLanguageConvertToCanonicalForm();
  if (![(NSArray *)self->_availableLanguages containsObject:v4])
  {
    v5 = [(NSDictionary *)self->_keyboardToLanguage objectForKey:v4];

    v4 = v5;
  }

  return v4;
}

- (void)_updateSpokenLangugage:(id)a3
{
  v4 = a3;
  v5 = [(AXSpeakServer *)self _massageKeyboardLanguage:v4];
  v6 = AXLogSpeakTyping();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    currentLanguage = self->_currentLanguage;
    *buf = 138412802;
    v11 = currentLanguage;
    v12 = 2112;
    v13 = v4;
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

- (void)handleTextReplacementOccurred:(id)a3
{
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_1CA4;
  v5[3] = &unk_8400;
  v6 = a3;
  v7 = self;
  v4 = v6;
  [(AXSpeakServer *)self withFirstResponderOnMainQueue:v5];
}

- (void)withFirstResponderOnMainQueue:(id)a3
{
  v4 = a3;
  v5 = [(AXSpeakServer *)self operationQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1E7C;
  block[3] = &unk_8478;
  v8 = v4;
  v6 = v4;
  dispatch_async(v5, block);
}

- (void)handleFirstValueChangeWithCompletion:(id)a3
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_2108;
  v4[3] = &unk_84E0;
  v5 = self;
  v6 = a3;
  v3 = v6;
  [(AXSpeakServer *)v5 withFirstResponderOnMainQueue:v4];
}

- (void)handleValueChange:(id)a3
{
  v4 = a3;
  v5 = AXLogSpeakTyping();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v45 = v4;
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

    v7 = [(AXSpeakServer *)self responderElement];
    if (v7)
    {
      v8 = v7;
      v9 = [(AXSpeakServer *)self responderElement];
      v10 = [v9 isValid];

      if (v10)
      {
        v11 = [(AXSpeakServer *)self responderElement];
        v12 = [v11 traits];
        v13 = kAXSecureTextFieldTrait & ~v12;

        if (!v13)
        {
          goto LABEL_20;
        }

        v14 = [(AXSpeakServer *)self elementValueText];
        if ([v14 isAXAttributedString] && objc_msgSend(v14, "hasAttribute:", UIAccessibilityTokenPlaceholder))
        {

          v14 = 0;
        }

        v15 = [(AXSpeakServer *)self responderElement];
        [v15 updateCache:2006];

        v16 = [(AXSpeakServer *)self responderElement];
        v17 = [v16 value];

        v18 = [(AXSpeakServer *)self responderElement];
        v19 = [v18 selectedTextRange];
        v40 = v20;
        v41 = v19;

        v21 = +[UIKeyboardInputModeController sharedInputModeController];
        v22 = [v21 currentInputModeInPreference];
        v23 = [v22 primaryLanguage];

        [(AXSpeakServer *)self _updateSpokenLangugage:v23];
        v24 = [v14 length];
        v25 = [v17 length];
        v26 = [(AXSpeakServer *)self responderElement];
        v27 = [v26 application];
        v28 = [v27 isDictationListening];

        if (v28)
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
            v33 = [v32 outputValueChangeForNewValue:v17 oldValue:v14 selectedTextRange:v41 shouldEchoDeletion:v40 isSingleInsert:0 feedbackType:v31 == -1 lastKeyboardKeyPress:CFAbsoluteTimeGetCurrent() shouldOutputSingleCharactersOnly:{1, v39}];
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
          v37 = [v36 outputValueChangeForNewValue:v17 oldValue:v14 selectedTextRange:v41 shouldEchoDeletion:v40 isSingleInsert:0 feedbackType:v31 == -1 lastKeyboardKeyPress:{CFAbsoluteTimeGetCurrent(), 2}];
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
        [(AXSpeakServer *)self setElementValueText:v17];

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
    v43 = v4;
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

- (void)processAutocorrectionOutput:(id)a3
{
  v4 = a3;
  v5 = [(AXSpeakServer *)self _prepareSpeechAction];
  [v5 setShouldQueue:1];
  [v5 setCannotInterrupt:1];
  v6 = [(AXSpeakServer *)self speechManager];
  [v6 setSpeechEnabled:1];

  [v5 setString:v4];
  v7 = AXLogSpeakTyping();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 138412290;
    v9 = v5;
    _os_log_impl(&dword_0, v7, OS_LOG_TYPE_DEFAULT, "Process autocorrect: %@", &v8, 0xCu);
  }

  [(AXSpeakServer *)self _speakAction:v5 isForResponderElement:1];
}

- (void)processWordOutput:(id)a3
{
  feedbackDelayTimer = self->_feedbackDelayTimer;
  v5 = a3;
  [(AXDispatchTimer *)feedbackDelayTimer cancel];
  v6 = [(AXSpeakServer *)self _prepareSpeechAction];
  v7 = [(AXSpeakServer *)self speechManager];
  [v7 setSpeechEnabled:1];

  [v6 setString:v5];
  v8 = AXLogSpeakTyping();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 138412290;
    v10 = v6;
    _os_log_impl(&dword_0, v8, OS_LOG_TYPE_DEFAULT, "Process word: %@", &v9, 0xCu);
  }

  [(AXSpeakServer *)self _speakAction:v6 isForResponderElement:1];
}

- (id)_processCharacterForPunctuation:(id)a3
{
  v4 = a3;
  v5 = [v4 length];
  v6 = v4;
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

      v9 = [(AXSpeakServer *)self letterPunctuationTable];
      v10 = [v9 objectForIndex:v8];

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

- (void)_processTypingFeedback:(id)a3
{
  v4 = a3;
  v5 = [(AXSpeakServer *)self _prepareSpeechAction];
  v6 = [v5 voiceIdentifier];
  v7 = [(AXSpeakServer *)self speechManager];
  [v7 setSpeechEnabled:1];

  if ([v4 length])
  {
    v8 = [(AXSpeakServer *)self _feedbackForCharacter:v4 andVoiceIdentifier:v6];
    v9 = +[AXLanguageManager sharedInstance];
    v10 = [v5 language];
    v11 = [v9 dialectForLanguageID:v10];

    if (([v11 canSpeakString:v4] & 1) != 0 || v11 && (objc_msgSend(v11, "speakableCharacters"), v12 = objc_claimAutoreleasedReturnValue(), v12, !v12) || AXLanguageIsSpeakableEmojiString())
    {
      v13 = v4;
    }

    else
    {
      v13 = [(AXSpeakServer *)self _processCharacterForPunctuation:v4];
    }

    v14 = v13;
    if ([v13 isEqualToString:v4])
    {
      if ([v4 length] != &dword_0 + 1)
      {
LABEL_12:
        if (_AXSLetterFeedbackEnabled() && _AXSPhoneticFeedbackEnabled())
        {
          if (v8)
          {
            v17 = [v4 stringByAppendingString:{@", "}];
            v18 = [v17 stringByAppendingString:v8];

            v19 = [v18 IPASpeechPhonemes];
            v20 = [v19 length];

            if (v20)
            {
              v31 = AVSpeechSynthesisIPANotationAttribute;
              v21 = [v18 IPASpeechPhonemes];
              v32 = v21;
              v22 = [NSDictionary dictionaryWithObjects:&v32 forKeys:&v31 count:1];
            }

            else
            {
              v22 = 0;
            }

            v23 = [NSAttributedString alloc];
            v24 = v18;
LABEL_28:
            v25 = [v23 initWithString:v24 attributes:v22];
            [v5 setAttributedString:v25];

            goto LABEL_29;
          }
        }

        else if (!_AXSLetterFeedbackEnabled())
        {
          if (!_AXSPhoneticFeedbackEnabled() || !v8)
          {
            goto LABEL_29;
          }

          v18 = [v8 IPASpeechPhonemes];
          if ([v18 length])
          {
            v29 = AVSpeechSynthesisIPANotationAttribute;
            v30 = v18;
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

        [v5 setString:v4];
LABEL_29:

        goto LABEL_30;
      }

      v15 = [TTSSpeechManager literalStringMarkup:v6 string:v4 speakCap:1];
    }

    else
    {
      v15 = v14;
    }

    v16 = v15;

    v4 = v16;
    goto LABEL_12;
  }

LABEL_30:
  v26 = [v5 string];
  if ([v26 length])
  {

LABEL_33:
    [(AXSpeakServer *)self _speakAction:v5 isForResponderElement:1];
    goto LABEL_34;
  }

  v27 = [v5 attributedString];
  v28 = [v27 length];

  if (v28)
  {
    goto LABEL_33;
  }

LABEL_34:
}

- (void)processDelayedTypingFeedback:(id)a3
{
  v4 = a3;
  if ([v4 length])
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
    v10 = v4;
    [(AXDispatchTimer *)feedbackDelayTimer afterDelay:v9 processBlock:v7];

    objc_destroyWeak(&v11);
    objc_destroyWeak(&location);
  }
}

+ (id)requiredEntitlementForProcessingMessageWithIdentifier:(unint64_t)a3
{
  if (a3 - 3 > 0xC)
  {
    return @"com.apple.accessibility.SpeakTypingServices";
  }

  else
  {
    return qword_8550[a3 - 3];
  }
}

- (BOOL)_isAllowedToSpeakForPid:(int)a3
{
  v5 = [(AXSpeakServer *)self responderElement];
  v6 = [v5 pid];

  if (v6 == a3)
  {
    return 1;
  }

  v8 = [(AXSpeakServer *)self responderElement];

  if (!v8)
  {
    return 0;
  }

  v9 = [(AXSpeakServer *)self responderElement];
  v10 = [v9 remoteParent];

  if (!v10)
  {
    return 0;
  }

  v11 = 9;
  while (1)
  {
    v12 = [v10 pid];
    v7 = v12 == a3;
    if (v12 == a3)
    {
      break;
    }

    v13 = [v10 remoteParent];

    if (v11-- != 0)
    {
      v10 = v13;
      if (v13)
      {
        continue;
      }
    }

    goto LABEL_13;
  }

  v13 = v10;
LABEL_13:

  return v7;
}

@end