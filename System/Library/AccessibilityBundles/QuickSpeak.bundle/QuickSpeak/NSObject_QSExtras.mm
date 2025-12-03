@interface NSObject_QSExtras
- (BOOL)_accessibilityIsTextInput;
- (BOOL)_accessibilityQScanPerformAction:(SEL)action withSender:(id)sender;
- (BOOL)_accessibilityQuickSpeakContentIsSpeakable;
- (BOOL)_accessibilityShouldUpdateQuickSpeakContent;
- (BOOL)_accessibilitySystemShouldShowPauseBubble;
- (BOOL)_accessibilitySystemShouldShowSpeakBubble;
- (BOOL)_accessibilitySystemShouldShowSpeakBubbleCommon;
- (BOOL)_accessibilitySystemShouldShowSpeakLanguageBubble;
- (BOOL)_accessibilitySystemShouldShowSpeakSentence;
- (BOOL)_accessibilitySystemShouldShowSpeakSpellOut;
- (void)_accessibilityCacheContentIfNecessary;
- (void)_accessibilityPauseSpeaking:(id)speaking;
- (void)_accessibilitySpeak:(id)speak;
- (void)_accessibilitySpeakLanguageSelection:(id)selection;
- (void)_accessibilitySpeakSentence:(id)sentence;
- (void)_accessibilitySpeakSpellOut:(id)out;
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
  content = [v3 content];
  v5 = objc_getAssociatedObject(self, &CachedSelectedTextRange);
  if ([(NSObject_QSExtras *)self _accessibilityIsTextInput])
  {
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  if ([(NSObject_QSExtras *)self _accessibilityIsTextInteraction])
  {
    v7 = [(NSObject_QSExtras *)self safeValueForKey:@"_textInput"];

    selfCopy = v7;
  }

  if (selfCopy && (objc_opt_respondsToSelector() & 1) != 0)
  {
    selectedTextRange = [(NSObject_QSExtras *)selfCopy selectedTextRange];
    v9 = selectedTextRange;
    v11 = 1;
    if (v5)
    {
      if (selectedTextRange)
      {
        v10 = objc_opt_class();
        if ([v10 isEqual:objc_opt_class()])
        {
          if ([v5 isEqual:v9] && (!objc_msgSend(content, "length") || !objc_msgSend(v9, "isEmpty")))
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

- (void)_accessibilitySpeak:(id)speak
{
  speakCopy = speak;
  [(NSObject_QSExtras *)self _accessibilityCacheContentIfNecessary];
  v4 = +[AXQuickSpeak sharedInstance];
  if (objc_opt_respondsToSelector())
  {
    v5 = [speakCopy safeValueForKey:@"dialect"];
  }

  else
  {
    v5 = 0;
  }

  v6 = +[AXQSMenuHelper sharedInstance];
  [v6 restoreMenu];

  specificLanguageID = [v5 specificLanguageID];
  [v4 speakAction:self withPreferredLanguage:specificLanguageID];
}

- (void)_accessibilitySpeakSpellOut:(id)out
{
  outCopy = out;
  [(NSObject_QSExtras *)self _accessibilityCacheContentIfNecessary];
  v4 = +[AXQuickSpeak sharedInstance];
  if (objc_opt_respondsToSelector())
  {
    v5 = [outCopy safeValueForKey:@"dialect"];
  }

  else
  {
    v5 = 0;
  }

  specificLanguageID = [v5 specificLanguageID];
  if (!specificLanguageID)
  {
    mEMORY[0x29EDC7B18] = [MEMORY[0x29EDC7B18] sharedInputModeController];
    currentInputModeInPreference = [mEMORY[0x29EDC7B18] currentInputModeInPreference];
    specificLanguageID = [currentInputModeInPreference primaryLanguage];
  }

  v9 = +[AXQSMenuHelper sharedInstance];
  [v9 restoreMenu];

  [v4 setSpellOutContent:1];
  [v4 speakAction:self withPreferredLanguage:specificLanguageID];
}

- (void)_accessibilitySpeakSentence:(id)sentence
{
  v4 = +[AXQuickSpeak sharedInstance];
  v7 = 0;
  v5 = [(NSObject_QSExtras *)self _accessibilityQuickSpeakEnclosingSentence:&v7];
  v6 = v7;
  [v4 setContent:v5];

  [v4 setSpeakingSentenceRange:v6];
  [v4 speakAction:self withPreferredLanguage:0];
}

- (void)_accessibilityPauseSpeaking:(id)speaking
{
  speakingCopy = speaking;
  v4 = +[AXQuickSpeak sharedInstance];
  isSpeaking = [v4 isSpeaking];

  v6 = +[AXQuickSpeak sharedInstance];
  v7 = v6;
  if (isSpeaking)
  {
    [v6 pauseAction:speakingCopy];
  }

  else
  {
    [v6 resumeAction:speakingCopy];
  }
}

- (void)_accessibilitySpeakLanguageSelection:(id)selection
{
  v85 = *MEMORY[0x29EDCA608];
  v63 = +[AXQuickSpeak sharedInstance];
  selectedContent = [v63 selectedContent];
  unpredictedAmbiguousLangMaps = [selectedContent unpredictedAmbiguousLangMaps];
  predictedSecondaryLangMaps = [selectedContent predictedSecondaryLangMaps];
  unambiguousLangMaps = [selectedContent unambiguousLangMaps];
  v52 = unambiguousLangMaps;
  if ([unambiguousLangMaps count] >= 2)
  {
    v5 = [MEMORY[0x29EDB9F48] bundleForClass:objc_opt_class()];
    firstObject = [v5 localizedStringForKey:@"quickspeak.many.languages" value:0 table:@"QuickSpeak"];

    v65 = [MEMORY[0x29EDBA0F8] localizedStringWithFormat:firstObject, objc_msgSend(unambiguousLangMaps, "count")];
    goto LABEL_5;
  }

  if ([unambiguousLangMaps count] == 1)
  {
    v7 = MEMORY[0x29EDBA0F8];
    firstObject = [unambiguousLangMaps firstObject];
    defaultDialect = [firstObject defaultDialect];
    [defaultDialect languageNameInNativeLocale];
    v10 = v9 = predictedSecondaryLangMaps;
    v65 = [v7 stringWithFormat:@"& %@", v10];

    predictedSecondaryLangMaps = v9;
LABEL_5:

    unambiguousLangMaps = v52;
    if (!predictedSecondaryLangMaps)
    {
      goto LABEL_12;
    }

    goto LABEL_8;
  }

  v65 = 0;
  if (!predictedSecondaryLangMaps)
  {
    goto LABEL_12;
  }

LABEL_8:
  if ([unambiguousLangMaps intersectsOrderedSet:predictedSecondaryLangMaps])
  {
    v11 = AXLogSpeakSelection();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      *buf = 138412546;
      v82 = predictedSecondaryLangMaps;
      v83 = 2112;
      v84 = unambiguousLangMaps;
      _os_log_impl(&dword_29C1E5000, v11, OS_LOG_TYPE_INFO, "Secondary maps contained langs in non ambiguous maps. Secondary Maps: %@ Non-ambiguous Maps: %@", buf, 0x16u);
    }
  }

LABEL_12:
  array = [MEMORY[0x29EDB8DE8] array];
  orderedSet = [MEMORY[0x29EDB8E10] orderedSet];
  [orderedSet unionOrderedSet:unpredictedAmbiguousLangMaps];
  v51 = predictedSecondaryLangMaps;
  if (!predictedSecondaryLangMaps)
  {
    goto LABEL_19;
  }

  primaryUnambiguousDialect = [selectedContent primaryUnambiguousDialect];

  if (primaryUnambiguousDialect)
  {
    primaryUnambiguousDialect2 = [selectedContent primaryUnambiguousDialect];
LABEL_17:
    v16 = primaryUnambiguousDialect2;
    langMap = [primaryUnambiguousDialect2 langMap];
    [orderedSet addObject:langMap];

    goto LABEL_18;
  }

  primaryAmbiguousDialect = [selectedContent primaryAmbiguousDialect];

  if (primaryAmbiguousDialect)
  {
    primaryUnambiguousDialect2 = [selectedContent primaryAmbiguousDialect];
    goto LABEL_17;
  }

LABEL_18:
  [orderedSet unionOrderedSet:predictedSecondaryLangMaps];
LABEL_19:
  v76 = 0u;
  v77 = 0u;
  v75 = 0u;
  v74 = 0u;
  obj = orderedSet;
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
        associatedAmbiguousLanguages = [v23 associatedAmbiguousLanguages];
        sharedInstance = [*(v21 + 3968) sharedInstance];
        systemLanguageID = [sharedInstance systemLanguageID];
        v27 = [associatedAmbiguousLanguages containsObject:systemLanguageID];

        if ((v27 & 1) == 0)
        {
          v58 = v22;
          defaultDialect2 = [v23 defaultDialect];
          v79 = defaultDialect2;
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
              sharedInstance2 = [*(v31 + 3968) sharedInstance];
              dialectForCurrentLocale = [sharedInstance2 dialectForCurrentLocale];
              langMap2 = [dialectForCurrentLocale langMap];
              if ([v23 isEqual:langMap2])
              {
                [*(v31 + 3968) sharedInstance];
                v39 = v33;
                v41 = v40 = v23;
                dialectForCurrentLocale2 = [v41 dialectForCurrentLocale];
                v64 = [v35 isEqual:dialectForCurrentLocale2];

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

              languageNameInNativeLocale = [v35 languageNameInNativeLocale];
              v44 = languageNameInNativeLocale;
              if (v65)
              {
                v45 = [MEMORY[0x29EDBA0F8] stringWithFormat:@"%@ %@", languageNameInNativeLocale, v65];
              }

              else
              {
                v45 = languageNameInNativeLocale;
              }

              v46 = v45;
              v47 = MEMORY[0x29EDC7908];
              v66[0] = MEMORY[0x29EDCA5F8];
              v66[1] = 3221225472;
              v66[2] = __58__NSObject_QSExtras__accessibilitySpeakLanguageSelection___block_invoke;
              v66[3] = &unk_29F2F0248;
              v67 = v63;
              selfCopy = self;
              v69 = v35;
              v48 = [v47 actionWithTitle:v46 image:0 identifier:0 handler:v66];
              [array addObject:v48];

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
    isShowingLanguageChoices = [v4 isShowingLanguageChoices];

    if (isShowingLanguageChoices & 1) != 0 || (+[AXQuickSpeak sharedInstance](AXQuickSpeak, "sharedInstance"), v6 = objc_claimAutoreleasedReturnValue(), v7 = [v6 isSpeaking], v6, (v7))
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
  content = [v11 content];
  if (!content || (v4 = content, v5 = [(NSObject_QSExtras *)self _accessibilityShouldUpdateQuickSpeakContent], v4, v5))
  {
    selfCopy = self;
    _accessibilityUITextInput = [(NSObject_QSExtras *)selfCopy _accessibilityUITextInput];
    v8 = _accessibilityUITextInput;
    v9 = selfCopy;
    if (_accessibilityUITextInput)
    {
      v9 = _accessibilityUITextInput;
    }

    _accessibilityQuickSpeakContent = [(NSObject_QSExtras *)v9 _accessibilityQuickSpeakContent];
    [v11 setContent:_accessibilityQuickSpeakContent];
    [v11 setContentOwner:selfCopy];
  }
}

- (BOOL)_accessibilitySystemShouldShowSpeakSpellOut
{
  v19[1] = *MEMORY[0x29EDCA608];
  if ([(NSObject_QSExtras *)self _accessibilitySystemShouldShowSpeakBubbleCommon])
  {
    [(NSObject_QSExtras *)self _accessibilityCacheContentIfNecessary];
    v3 = +[AXQuickSpeak sharedInstance];
    content = [v3 content];

    v5 = objc_alloc(MEMORY[0x29EDBA010]);
    v19[0] = *MEMORY[0x29EDB9EC8];
    v6 = v19[0];
    v7 = [MEMORY[0x29EDB8D80] arrayWithObjects:v19 count:1];
    v8 = [v5 initWithTagSchemes:v7 options:0];

    [v8 setString:content];
    v15 = 0;
    v16 = &v15;
    v17 = 0x2020000000;
    v18 = 0;
    v9 = [content length];
    v14[0] = MEMORY[0x29EDCA5F8];
    v14[1] = 3221225472;
    v14[2] = __64__NSObject_QSExtras__accessibilitySystemShouldShowSpeakSpellOut__block_invoke;
    v14[3] = &unk_29F2F0270;
    v14[4] = &v15;
    [v8 enumerateTagsInRange:0 scheme:v9 options:v6 usingBlock:{0, v14}];
    v11 = v16[3] == 1 && ([content rangeOfComposedCharacterSequenceAtIndex:0], v10 != objc_msgSend(content, "length")) && v16[3] == 1;
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
  content = [v3 content];

  v5 = 0;
  if (![content length])
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
    selectedContentRequiresUserChoice = 0;
  }

  else
  {
    selectedContentRequiresUserChoice = [v3 selectedContentRequiresUserChoice];
  }

  return selectedContentRequiresUserChoice;
}

- (BOOL)_accessibilitySystemShouldShowPauseBubble
{
  v2 = +[AXQSMenuHelper sharedInstance];
  if ([v2 isShowingLanguageChoices])
  {
    isSpeaking = 0;
  }

  else
  {
    v4 = +[AXQuickSpeak sharedInstance];
    isSpeaking = [v4 isSpeaking];
  }

  return isSpeaking;
}

- (BOOL)_accessibilityQScanPerformAction:(SEL)action withSender:(id)sender
{
  senderCopy = sender;
  if (sel__accessibilitySpeak_ == action)
  {
    if ([(NSObject_QSExtras *)self _accessibilitySystemShouldShowSpeakBubble])
    {
      _accessibilityShouldShowSpeakBubble = [(NSObject_QSExtras *)self _accessibilityShouldShowSpeakBubble];
      goto LABEL_13;
    }

LABEL_17:
    isShowingLanguageChoices = 0;
    goto LABEL_18;
  }

  if (sel__accessibilitySpeakSentence_ == action)
  {
    _accessibilityShouldShowSpeakBubble = [(NSObject_QSExtras *)self _accessibilitySystemShouldShowSpeakSentence];
    goto LABEL_13;
  }

  if (sel__accessibilitySpeakSpellOut_ == action)
  {
    _accessibilityShouldShowSpeakBubble = [(NSObject_QSExtras *)self _accessibilityShouldShowSpeakSpellOut];
    goto LABEL_13;
  }

  if (sel__accessibilitySpeakWithLanguage_ == action)
  {
    v9 = +[AXQSMenuHelper sharedInstance];
    isShowingLanguageChoices = [v9 isShowingLanguageChoices];

    goto LABEL_18;
  }

  if (sel__accessibilitySpeakLanguageSelection_ == action)
  {
    if ([(NSObject_QSExtras *)self _accessibilityShouldShowSpeakLanguageBubble])
    {
      _accessibilityShouldShowSpeakBubble = [(NSObject_QSExtras *)self _accessibilitySystemShouldShowSpeakLanguageBubble];
      goto LABEL_13;
    }

    goto LABEL_17;
  }

  if (sel__accessibilityPauseSpeaking_ != action || ![(NSObject_QSExtras *)self _accessibilitySystemShouldShowPauseBubble])
  {
    goto LABEL_17;
  }

  _accessibilityShouldShowSpeakBubble = [(NSObject_QSExtras *)self _accessibilityShouldShowPauseBubble];
LABEL_13:
  isShowingLanguageChoices = _accessibilityShouldShowSpeakBubble;
LABEL_18:

  return isShowingLanguageChoices;
}

- (BOOL)_accessibilityQuickSpeakContentIsSpeakable
{
  v16 = *MEMORY[0x29EDCA608];
  mEMORY[0x29EDBD6C8] = [MEMORY[0x29EDBD6C8] sharedInstance];
  ignoreLogging = [mEMORY[0x29EDBD6C8] ignoreLogging];

  if ((ignoreLogging & 1) == 0)
  {
    identifier = [MEMORY[0x29EDBD6C8] identifier];
    v5 = AXLoggerForFacility();

    v6 = AXOSLogLevelFromAXLogLevel();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = AXColorizeFormatLog();
      callStackSymbols = [MEMORY[0x29EDBA108] callStackSymbols];
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
  selectedContentIsSpeakable = [v9 selectedContentIsSpeakable];

  v11 = *MEMORY[0x29EDCA608];
  return selectedContentIsSpeakable;
}

@end