@interface NSObject_QSExtras
- (BOOL)_accessibilityIsTextInput;
- (BOOL)_accessibilityQScanPerformAction:(SEL)a3 withSender:(id)a4;
- (BOOL)_accessibilityQuickSpeakContentIsSpeakable;
- (BOOL)_accessibilityShouldUpdateQuickSpeakContent;
- (BOOL)_accessibilitySystemShouldShowPauseBubble;
- (BOOL)_accessibilitySystemShouldShowSpeakBubble;
- (BOOL)_accessibilitySystemShouldShowSpeakBubbleCommon;
- (BOOL)_accessibilitySystemShouldShowSpeakLanguageBubble;
- (BOOL)_accessibilitySystemShouldShowSpeakSentence;
- (BOOL)_accessibilitySystemShouldShowSpeakSpellOut;
- (void)_accessibilityCacheContentIfNecessary;
- (void)_accessibilityPauseSpeaking:(id)a3;
- (void)_accessibilitySpeak:(id)a3;
- (void)_accessibilitySpeakLanguageSelection:(id)a3;
- (void)_accessibilitySpeakSentence:(id)a3;
- (void)_accessibilitySpeakSpellOut:(id)a3;
@end

@implementation NSObject_QSExtras

- (BOOL)_accessibilityIsTextInput
{
  if (objc_opt_respondsToSelector())
  {
    v2 = objc_opt_respondsToSelector();
  }

  else
  {
    v2 = 0;
  }

  return v2 & 1;
}

- (BOOL)_accessibilityShouldUpdateQuickSpeakContent
{
  v3 = +[AXQuickSpeak sharedInstance];
  v4 = [v3 content];
  v5 = objc_getAssociatedObject(self, &CachedSelectedTextRange);
  if ([(NSObject_QSExtras *)self _accessibilityIsTextInput])
  {
    v6 = self;
  }

  else
  {
    v6 = 0;
  }

  if ([(NSObject_QSExtras *)self _accessibilityIsTextInteraction])
  {
    v7 = [(NSObject_QSExtras *)self safeValueForKey:@"_textInput"];

    v6 = v7;
  }

  if (v6 && (objc_opt_respondsToSelector() & 1) != 0)
  {
    v8 = [(NSObject_QSExtras *)v6 selectedTextRange];
    v9 = v8;
    v11 = 1;
    if (v5)
    {
      if (v8)
      {
        v10 = objc_opt_class();
        if ([v10 isEqual:objc_opt_class()])
        {
          if ([v5 isEqual:v9] && (!objc_msgSend(v4, "length") || !objc_msgSend(v9, "isEmpty")))
          {
            v11 = 0;
          }
        }
      }
    }

    objc_setAssociatedObject(self, &CachedSelectedTextRange, v9, 1);
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (void)_accessibilitySpeak:(id)a3
{
  v8 = a3;
  [(NSObject_QSExtras *)self _accessibilityCacheContentIfNecessary];
  v4 = +[AXQuickSpeak sharedInstance];
  if (objc_opt_respondsToSelector())
  {
    v5 = [v8 safeValueForKey:@"dialect"];
  }

  else
  {
    v5 = 0;
  }

  v6 = +[AXQSMenuHelper sharedInstance];
  [v6 restoreMenu];

  v7 = [v5 specificLanguageID];
  [v4 speakAction:self withPreferredLanguage:v7];
}

- (void)_accessibilitySpeakSpellOut:(id)a3
{
  v10 = a3;
  [(NSObject_QSExtras *)self _accessibilityCacheContentIfNecessary];
  v4 = +[AXQuickSpeak sharedInstance];
  if (objc_opt_respondsToSelector())
  {
    v5 = [v10 safeValueForKey:@"dialect"];
  }

  else
  {
    v5 = 0;
  }

  v6 = [v5 specificLanguageID];
  if (!v6)
  {
    v7 = [MEMORY[0x29EDC7B18] sharedInputModeController];
    v8 = [v7 currentInputModeInPreference];
    v6 = [v8 primaryLanguage];
  }

  v9 = +[AXQSMenuHelper sharedInstance];
  [v9 restoreMenu];

  [v4 setSpellOutContent:1];
  [v4 speakAction:self withPreferredLanguage:v6];
}

- (void)_accessibilitySpeakSentence:(id)a3
{
  v4 = +[AXQuickSpeak sharedInstance];
  v7 = 0;
  v5 = [(NSObject_QSExtras *)self _accessibilityQuickSpeakEnclosingSentence:&v7];
  v6 = v7;
  [v4 setContent:v5];

  [v4 setSpeakingSentenceRange:v6];
  [v4 speakAction:self withPreferredLanguage:0];
}

- (void)_accessibilityPauseSpeaking:(id)a3
{
  v3 = a3;
  v4 = +[AXQuickSpeak sharedInstance];
  v5 = [v4 isSpeaking];

  v6 = +[AXQuickSpeak sharedInstance];
  v7 = v6;
  if (v5)
  {
    [v6 pauseAction:v3];
  }

  else
  {
    [v6 resumeAction:v3];
  }
}

- (void)_accessibilitySpeakLanguageSelection:(id)a3
{
  v85 = *MEMORY[0x29EDCA608];
  v63 = +[AXQuickSpeak sharedInstance];
  v53 = [v63 selectedContent];
  v54 = [v53 unpredictedAmbiguousLangMaps];
  v3 = [v53 predictedSecondaryLangMaps];
  v4 = [v53 unambiguousLangMaps];
  v52 = v4;
  if ([v4 count] >= 2)
  {
    v5 = [MEMORY[0x29EDB9F48] bundleForClass:objc_opt_class()];
    v6 = [v5 localizedStringForKey:@"quickspeak.many.languages" value:0 table:@"QuickSpeak"];

    v65 = [MEMORY[0x29EDBA0F8] localizedStringWithFormat:v6, objc_msgSend(v4, "count")];
    goto LABEL_5;
  }

  if ([v4 count] == 1)
  {
    v7 = MEMORY[0x29EDBA0F8];
    v6 = [v4 firstObject];
    v8 = [v6 defaultDialect];
    [v8 languageNameInNativeLocale];
    v10 = v9 = v3;
    v65 = [v7 stringWithFormat:@"& %@", v10];

    v3 = v9;
LABEL_5:

    v4 = v52;
    if (!v3)
    {
      goto LABEL_12;
    }

    goto LABEL_8;
  }

  v65 = 0;
  if (!v3)
  {
    goto LABEL_12;
  }

LABEL_8:
  if ([v4 intersectsOrderedSet:v3])
  {
    v11 = AXLogSpeakSelection();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      *buf = 138412546;
      v82 = v3;
      v83 = 2112;
      v84 = v4;
      _os_log_impl(&dword_29C1E5000, v11, OS_LOG_TYPE_INFO, "Secondary maps contained langs in non ambiguous maps. Secondary Maps: %@ Non-ambiguous Maps: %@", buf, 0x16u);
    }
  }

LABEL_12:
  v62 = [MEMORY[0x29EDB8DE8] array];
  v12 = [MEMORY[0x29EDB8E10] orderedSet];
  [v12 unionOrderedSet:v54];
  v51 = v3;
  if (!v3)
  {
    goto LABEL_19;
  }

  v13 = [v53 primaryUnambiguousDialect];

  if (v13)
  {
    v14 = [v53 primaryUnambiguousDialect];
LABEL_17:
    v16 = v14;
    v17 = [v14 langMap];
    [v12 addObject:v17];

    goto LABEL_18;
  }

  v15 = [v53 primaryAmbiguousDialect];

  if (v15)
  {
    v14 = [v53 primaryAmbiguousDialect];
    goto LABEL_17;
  }

LABEL_18:
  [v12 unionOrderedSet:v3];
LABEL_19:
  v76 = 0u;
  v77 = 0u;
  v75 = 0u;
  v74 = 0u;
  obj = v12;
  v18 = [obj countByEnumeratingWithState:&v74 objects:v80 count:16];
  if (v18)
  {
    v19 = v18;
    v20 = *v75;
    v21 = 0x29EDBD000uLL;
    v55 = *v75;
    do
    {
      v22 = 0;
      v56 = v19;
      do
      {
        if (*v75 != v20)
        {
          objc_enumerationMutation(obj);
        }

        v23 = *(*(&v74 + 1) + 8 * v22);
        v24 = [v23 associatedAmbiguousLanguages];
        v25 = [*(v21 + 3968) sharedInstance];
        v26 = [v25 systemLanguageID];
        v27 = [v24 containsObject:v26];

        if ((v27 & 1) == 0)
        {
          v58 = v22;
          v28 = [v23 defaultDialect];
          v79 = v28;
          v29 = [MEMORY[0x29EDB8D80] arrayWithObjects:&v79 count:1];

          v72 = 0u;
          v73 = 0u;
          v70 = 0u;
          v71 = 0u;
          v60 = v29;
          v30 = [v60 countByEnumeratingWithState:&v70 objects:v78 count:16];
          v31 = 0x29EDBD000uLL;
          if (!v30)
          {
            goto LABEL_40;
          }

          v32 = v30;
          v33 = *v71;
          while (1)
          {
            v34 = 0;
            v59 = v32;
            do
            {
              if (*v71 != v33)
              {
                objc_enumerationMutation(v60);
              }

              v35 = *(*(&v70 + 1) + 8 * v34);
              v36 = [*(v31 + 3968) sharedInstance];
              v37 = [v36 dialectForCurrentLocale];
              v38 = [v37 langMap];
              if ([v23 isEqual:v38])
              {
                [*(v31 + 3968) sharedInstance];
                v39 = v33;
                v41 = v40 = v23;
                v42 = [v41 dialectForCurrentLocale];
                v64 = [v35 isEqual:v42];

                v31 = 0x29EDBD000;
                v23 = v40;
                v33 = v39;
                v32 = v59;

                if (!v64)
                {
                  goto LABEL_38;
                }
              }

              else
              {
              }

              v43 = [v35 languageNameInNativeLocale];
              v44 = v43;
              if (v65)
              {
                v45 = [MEMORY[0x29EDBA0F8] stringWithFormat:@"%@ %@", v43, v65];
              }

              else
              {
                v45 = v43;
              }

              v46 = v45;
              v47 = MEMORY[0x29EDC7908];
              v66[0] = MEMORY[0x29EDCA5F8];
              v66[1] = 3221225472;
              v66[2] = __58__NSObject_QSExtras__accessibilitySpeakLanguageSelection___block_invoke;
              v66[3] = &unk_29F2F0248;
              v67 = v63;
              v68 = self;
              v69 = v35;
              v48 = [v47 actionWithTitle:v46 image:0 identifier:0 handler:v66];
              [v62 addObject:v48];

LABEL_38:
              ++v34;
            }

            while (v32 != v34);
            v32 = [v60 countByEnumeratingWithState:&v70 objects:v78 count:16];
            if (!v32)
            {
LABEL_40:

              v20 = v55;
              v19 = v56;
              v22 = v58;
              break;
            }
          }
        }

        ++v22;
        v21 = 0x29EDBD000;
      }

      while (v22 != v19);
      v19 = [obj countByEnumeratingWithState:&v74 objects:v80 count:16];
    }

    while (v19);
  }

  v49 = +[AXQSMenuHelper sharedInstance];
  [v49 setShowingLanguageChoices:1];

  v50 = *MEMORY[0x29EDCA608];
}

- (BOOL)_accessibilitySystemShouldShowSpeakBubbleCommon
{
  v3 = _AXSQuickSpeakEnabled();
  if (v3)
  {
    v4 = +[AXQSMenuHelper sharedInstance];
    v5 = [v4 isShowingLanguageChoices];

    if (v5 & 1) != 0 || (+[AXQuickSpeak sharedInstance](AXQuickSpeak, "sharedInstance"), v6 = objc_claimAutoreleasedReturnValue(), v7 = [v6 isSpeaking], v6, (v7))
    {
      LOBYTE(v3) = 0;
    }

    else
    {
      LOBYTE(v3) = ![AXQuickSpeak quickSpeakClassIsDenied:self];
    }
  }

  return v3;
}

- (void)_accessibilityCacheContentIfNecessary
{
  v11 = +[AXQuickSpeak sharedInstance];
  v3 = [v11 content];
  if (!v3 || (v4 = v3, v5 = [(NSObject_QSExtras *)self _accessibilityShouldUpdateQuickSpeakContent], v4, v5))
  {
    v6 = self;
    v7 = [(NSObject_QSExtras *)v6 _accessibilityUITextInput];
    v8 = v7;
    v9 = v6;
    if (v7)
    {
      v9 = v7;
    }

    v10 = [(NSObject_QSExtras *)v9 _accessibilityQuickSpeakContent];
    [v11 setContent:v10];
    [v11 setContentOwner:v6];
  }
}

- (BOOL)_accessibilitySystemShouldShowSpeakSpellOut
{
  v19[1] = *MEMORY[0x29EDCA608];
  if ([(NSObject_QSExtras *)self _accessibilitySystemShouldShowSpeakBubbleCommon])
  {
    [(NSObject_QSExtras *)self _accessibilityCacheContentIfNecessary];
    v3 = +[AXQuickSpeak sharedInstance];
    v4 = [v3 content];

    v5 = objc_alloc(MEMORY[0x29EDBA010]);
    v19[0] = *MEMORY[0x29EDB9EC8];
    v6 = v19[0];
    v7 = [MEMORY[0x29EDB8D80] arrayWithObjects:v19 count:1];
    v8 = [v5 initWithTagSchemes:v7 options:0];

    [v8 setString:v4];
    v15 = 0;
    v16 = &v15;
    v17 = 0x2020000000;
    v18 = 0;
    v9 = [v4 length];
    v14[0] = MEMORY[0x29EDCA5F8];
    v14[1] = 3221225472;
    v14[2] = __64__NSObject_QSExtras__accessibilitySystemShouldShowSpeakSpellOut__block_invoke;
    v14[3] = &unk_29F2F0270;
    v14[4] = &v15;
    [v8 enumerateTagsInRange:0 scheme:v9 options:v6 usingBlock:{0, v14}];
    v11 = v16[3] == 1 && ([v4 rangeOfComposedCharacterSequenceAtIndex:0], v10 != objc_msgSend(v4, "length")) && v16[3] == 1;
    _Block_object_dispose(&v15, 8);
  }

  else
  {
    v11 = 0;
  }

  v12 = *MEMORY[0x29EDCA608];
  return v11;
}

- (BOOL)_accessibilitySystemShouldShowSpeakSentence
{
  if (![(NSObject_QSExtras *)self _accessibilitySystemShouldShowSpeakBubbleCommon])
  {
    return 0;
  }

  [(NSObject_QSExtras *)self _accessibilityCacheContentIfNecessary];
  v3 = +[AXQuickSpeak sharedInstance];
  v4 = [v3 content];

  v5 = 0;
  if (![v4 length])
  {
    v6 = [(NSObject_QSExtras *)self _accessibilityQuickSpeakEnclosingSentence:0];
    v7 = [v6 length];

    if (v7)
    {
      v5 = 1;
    }
  }

  return v5;
}

- (BOOL)_accessibilitySystemShouldShowSpeakBubble
{
  if ([(NSObject_QSExtras *)self _accessibilitySystemShouldShowSpeakBubbleCommon])
  {
    v3 = +[AXQuickSpeak sharedInstance];
    if ([v3 isPaused])
    {
      LOBYTE(v4) = 1;
    }

    else
    {
      [(NSObject_QSExtras *)self _accessibilityCacheContentIfNecessary];
      if ([v3 selectedContentIsSpeakable])
      {
        v4 = [v3 selectedContentRequiresUserChoice] ^ 1;
      }

      else
      {
        LOBYTE(v4) = 0;
      }
    }
  }

  else
  {
    LOBYTE(v4) = 0;
  }

  return v4;
}

- (BOOL)_accessibilitySystemShouldShowSpeakLanguageBubble
{
  if (![(NSObject_QSExtras *)self _accessibilitySystemShouldShowSpeakBubbleCommon])
  {
    return 0;
  }

  [(NSObject_QSExtras *)self _accessibilityCacheContentIfNecessary];
  v3 = +[AXQuickSpeak sharedInstance];
  if ([v3 isPaused])
  {
    v4 = 0;
  }

  else
  {
    v4 = [v3 selectedContentRequiresUserChoice];
  }

  return v4;
}

- (BOOL)_accessibilitySystemShouldShowPauseBubble
{
  v2 = +[AXQSMenuHelper sharedInstance];
  if ([v2 isShowingLanguageChoices])
  {
    v3 = 0;
  }

  else
  {
    v4 = +[AXQuickSpeak sharedInstance];
    v3 = [v4 isSpeaking];
  }

  return v3;
}

- (BOOL)_accessibilityQScanPerformAction:(SEL)a3 withSender:(id)a4
{
  v6 = a4;
  if (sel__accessibilitySpeak_ == a3)
  {
    if ([(NSObject_QSExtras *)self _accessibilitySystemShouldShowSpeakBubble])
    {
      v7 = [(NSObject_QSExtras *)self _accessibilityShouldShowSpeakBubble];
      goto LABEL_13;
    }

LABEL_17:
    v8 = 0;
    goto LABEL_18;
  }

  if (sel__accessibilitySpeakSentence_ == a3)
  {
    v7 = [(NSObject_QSExtras *)self _accessibilitySystemShouldShowSpeakSentence];
    goto LABEL_13;
  }

  if (sel__accessibilitySpeakSpellOut_ == a3)
  {
    v7 = [(NSObject_QSExtras *)self _accessibilityShouldShowSpeakSpellOut];
    goto LABEL_13;
  }

  if (sel__accessibilitySpeakWithLanguage_ == a3)
  {
    v9 = +[AXQSMenuHelper sharedInstance];
    v8 = [v9 isShowingLanguageChoices];

    goto LABEL_18;
  }

  if (sel__accessibilitySpeakLanguageSelection_ == a3)
  {
    if ([(NSObject_QSExtras *)self _accessibilityShouldShowSpeakLanguageBubble])
    {
      v7 = [(NSObject_QSExtras *)self _accessibilitySystemShouldShowSpeakLanguageBubble];
      goto LABEL_13;
    }

    goto LABEL_17;
  }

  if (sel__accessibilityPauseSpeaking_ != a3 || ![(NSObject_QSExtras *)self _accessibilitySystemShouldShowPauseBubble])
  {
    goto LABEL_17;
  }

  v7 = [(NSObject_QSExtras *)self _accessibilityShouldShowPauseBubble];
LABEL_13:
  v8 = v7;
LABEL_18:

  return v8;
}

- (BOOL)_accessibilityQuickSpeakContentIsSpeakable
{
  v16 = *MEMORY[0x29EDCA608];
  v2 = [MEMORY[0x29EDBD6C8] sharedInstance];
  v3 = [v2 ignoreLogging];

  if ((v3 & 1) == 0)
  {
    v4 = [MEMORY[0x29EDBD6C8] identifier];
    v5 = AXLoggerForFacility();

    v6 = AXOSLogLevelFromAXLogLevel();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = AXColorizeFormatLog();
      v13 = [MEMORY[0x29EDBA108] callStackSymbols];
      v8 = _AXStringForArgs();

      if (os_log_type_enabled(v5, v6))
      {
        *buf = 138543362;
        v15 = v8;
        _os_log_impl(&dword_29C1E5000, v5, v6, "%{public}@", buf, 0xCu);
      }
    }
  }

  v9 = +[AXQuickSpeak sharedInstance];
  v10 = [v9 selectedContentIsSpeakable];

  v11 = *MEMORY[0x29EDCA608];
  return v10;
}

@end