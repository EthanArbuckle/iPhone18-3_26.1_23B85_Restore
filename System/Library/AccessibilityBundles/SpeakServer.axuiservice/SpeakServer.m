uint64_t sub_1278(uint64_t a1)
{
  qword_CB60 = objc_alloc_init(*(a1 + 32));

  return _objc_release_x1();
}

void sub_1644(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1660(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _tryObservingNotifications];
}

void sub_1840(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_185C(uint64_t a1, int a2, void *a3)
{
  v5 = a3;
  v6 = AXLogSpeakTyping();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    sub_4370(a2, v6);
  }

  if (a2 <= 1019)
  {
    if ((a2 - 1000) >= 2)
    {
      if (a2 == 1005)
      {
        WeakRetained = objc_loadWeakRetained((a1 + 40));
        [WeakRetained handleValueChange:v5];

        *(*(a1 + 32) + 16) = 0;
        goto LABEL_17;
      }

      if (a2 != 1018)
      {
        goto LABEL_17;
      }
    }

    goto LABEL_15;
  }

  if (a2 > 1053)
  {
    if (a2 != 5001)
    {
      if (a2 == 1054)
      {
        *(*(a1 + 32) + 16) = 1;
      }

      goto LABEL_17;
    }

LABEL_15:
    v7 = objc_loadWeakRetained((a1 + 40));
    [v7 handleFirstValueChange];
    goto LABEL_16;
  }

  if (a2 == 1020)
  {
    goto LABEL_15;
  }

  if (a2 == 1052)
  {
    v7 = objc_loadWeakRetained((a1 + 40));
    [v7 handleTextReplacementOccurred:v5];
LABEL_16:
  }

LABEL_17:
}

void sub_1B54(uint64_t a1)
{
  v2 = objc_alloc_init(AXIndexMap);
  v3 = *(*(a1 + 32) + 8);
  AXLoadPunctuationTable();
  v5 = *(a1 + 32);
  v4 = v2;
  AXPerformBlockAsynchronouslyOnMainThread();
}

void sub_1CA4(uint64_t a1, void *a2)
{
  v3 = a2;
  if (!UIAccessibilityIsVoiceOverRunning())
  {
    v4 = *(a1 + 32);
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      if (_AXSWordFeedbackEnabled() && [*(a1 + 32) length])
      {
        v5 = [*(a1 + 40) responderElement];
        v6 = [v5 application];
        v7 = [v6 isDictationListening];

        if (v7)
        {
          v8 = AXLogSpeakTyping();
          if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
          {
            *v10 = 0;
            _os_log_impl(&dword_0, v8, OS_LOG_TYPE_DEFAULT, "Will not speak because app-dictation is running", v10, 2u);
          }
        }

        else
        {
          [*(a1 + 40) processWordOutput:*(a1 + 32)];
        }
      }

      *(*(a1 + 40) + 120) = CFAbsoluteTimeGetCurrent();
      v9 = [v3 value];
      [*(a1 + 40) setElementValueText:v9];
    }
  }
}

void sub_1E7C(uint64_t a1)
{
  _AXShouldDispatchNonMainThreadCallbacksOnMainThreadPushReason();
  v2 = +[AXElement primaryApp];
  v3 = [v2 isAXUIServer];
  _AXShouldDispatchNonMainThreadCallbacksOnMainThreadPopReason();
  if (v3)
  {
    v9 = v2;
    v10 = *(a1 + 32);
    v4 = v2;
    AXPerformBlockAsynchronouslyOnMainThread();

    v5 = v10;
  }

  else
  {
    _AXShouldDispatchNonMainThreadCallbacksOnMainThreadPushReason();
    v6 = [v2 firstResponder];
    _AXShouldDispatchNonMainThreadCallbacksOnMainThreadPopReason();
    v7 = v2;
    v8 = *(a1 + 32);
    v5 = v2;
    v4 = v6;
    AXPerformBlockAsynchronouslyOnMainThread();
  }
}

void sub_1FE8(uint64_t a1)
{
  v2 = *(a1 + 40);
  v3 = [*(a1 + 32) firstResponder];
  (*(v2 + 16))(v2, v3, *(a1 + 32));
}

void sub_2108(uint64_t a1, void *a2)
{
  v10 = a2;
  v3 = [*(a1 + 32) responderElement];
  v4 = [v3 isEqual:v10];

  if ((v4 & 1) == 0)
  {
    v5 = [*(a1 + 32) responderElement];
    v6 = [v5 pid];

    [*(a1 + 32) setResponderElement:v10];
    v7 = [v10 value];
    [*(a1 + 32) setElementValueText:v7];

    if ([*(a1 + 32) isLastSpeechActionForResponderElement])
    {
      if (v6 != [v10 pid])
      {
        v8 = [*(a1 + 32) speechManager];
        [v8 stopSpeaking:0];
      }
    }
  }

  v9 = [*(a1 + 32) responderElement];

  if (v9)
  {
    (*(*(a1 + 40) + 16))();
  }
}

void sub_3098(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_30B4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _processTypingFeedback:*(a1 + 32)];
}

void sub_3B28(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v7 = a2;
  v8 = [*(a1 + 32) _prepareSpeechAction];
  v9 = [*(a1 + 40) string];
  v10 = [v9 substringWithRange:{a3, a4}];
  [v8 setString:v10];

  [v8 setShouldQueue:1];
  v11 = [v7 objectForKey:@"AXSpeakTypingPayloadKeyVolume"];

  if (v11)
  {
    v31[0] = 0;
    objc_opt_class();
    v12 = [v7 objectForKey:@"AXSpeakTypingPayloadKeyVolume"];
    v13 = __UIAccessibilityCastAsClass();

    [v13 doubleValue];
    [v8 setVolume:?];
  }

  v14 = [v7 objectForKey:{@"AXSpeakTypingPayloadKeyRate", *v31}];

  if (v14)
  {
    v31[0] = 0;
    objc_opt_class();
    v15 = [v7 objectForKey:@"AXSpeakTypingPayloadKeyRate"];
    v16 = __UIAccessibilityCastAsClass();

    [v16 doubleValue];
    [v8 setSpeakingRate:?];
  }

  v17 = [v7 objectForKey:{@"AXSpeakTypingPayloadKeyLanguage", *v31}];

  if (v17)
  {
    v18 = *(a1 + 32);
    v19 = [v7 objectForKey:@"AXSpeakTypingPayloadKeyLanguage"];
    v20 = [v18 _massageKeyboardLanguage:v19];

    v21 = AXLogSpeakTyping();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      v22 = [v7 objectForKey:@"AXSpeakTypingPayloadKeyLanguage"];
      *v31 = 138412546;
      *&v31[4] = v22;
      v32 = 2112;
      v33 = v20;
      _os_log_impl(&dword_0, v21, OS_LOG_TYPE_DEFAULT, "Desired language: %@, updated %@", v31, 0x16u);
    }

    if (!v20)
    {
      v23 = [v7 objectForKey:@"AXSpeakTypingPayloadKeyLanguage"];
      v20 = AXLanguageConvertToCanonicalForm();

      v24 = AXLogSpeakTyping();
      if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
      {
        *v31 = 138412290;
        *&v31[4] = v20;
        _os_log_impl(&dword_0, v24, OS_LOG_TYPE_DEFAULT, "Went to canonical form: %@", v31, 0xCu);
      }
    }

    [v8 setLanguage:v20];
    v25 = +[AXSettings sharedInstance];
    v26 = [v8 language];
    v27 = [v25 speechVoiceIdentifierForLanguage:v26 sourceKey:AXSpeechSourceKeySpeechFeatures exists:0];

    v28 = AXLogSpeakTyping();
    if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
    {
      v29 = [v8 language];
      *v31 = 138412546;
      *&v31[4] = v27;
      v32 = 2112;
      v33 = v29;
      _os_log_impl(&dword_0, v28, OS_LOG_TYPE_DEFAULT, "Choosing voiceId: %@ from language %@", v31, 0x16u);
    }

    [v8 setVoiceIdentifier:v27];
  }

  [*(a1 + 32) _speakAction:v8 isForResponderElement:0];
  v30 = AXLogSpeakTyping();
  if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
  {
    *v31 = 138412290;
    *&v31[4] = v8;
    _os_log_impl(&dword_0, v30, OS_LOG_TYPE_DEFAULT, "Speaking sub-action to speak: %@", v31, 0xCu);
  }
}

void sub_4370(int a1, NSObject *a2)
{
  v2[0] = 67109120;
  v2[1] = a1;
  _os_log_debug_impl(&dword_0, a2, OS_LOG_TYPE_DEBUG, "Recv notifiction: %d", v2, 8u);
}

void sub_43E8(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_debug_impl(&dword_0, a2, OS_LOG_TYPE_DEBUG, "process message: %@", &v2, 0xCu);
}

void sub_4460(int a1, NSObject *a2)
{
  v2[0] = 67109120;
  v2[1] = a1;
  _os_log_error_impl(&dword_0, a2, OS_LOG_TYPE_ERROR, "Attempted to speak prediction from an app that did not own the first responder. Pid: %i", v2, 8u);
}

void sub_44D8(void *a1, int a2, NSObject *a3)
{
  v5 = [a1 responderElement];
  v6[0] = 67109378;
  v6[1] = a2;
  v7 = 2112;
  v8 = v5;
  _os_log_error_impl(&dword_0, a3, OS_LOG_TYPE_ERROR, "Attempted to speak autocorrections from an app that did not own the first responder. Pid: %i, responder element: %@", v6, 0x12u);
}