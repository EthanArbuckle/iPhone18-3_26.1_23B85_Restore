@interface AFUITargetDetectionController
- (AFUITargetDetectionController)init;
- (BOOL)_detectionDisabledForResponder:(id)a3;
- (BOOL)_detectionEnabledForResponder:(id)a3;
- (BOOL)containsUsernamePasswordPairsInAutoFillGroup:(id)a3;
- (BOOL)shouldLoadASPForResponder:(id)a3;
- (BOOL)shouldPreferFallbackAutoFillGroup;
- (BOOL)signupHintForUsername:(id)a3 password:(id)a4 responder:(id)a5;
- (id)accessibilityLoginKeywordList;
- (id)accessibilitySignupKeywordList;
- (id)addressKeywordSet;
- (id)autoFillContextForResponder:(id)a3;
- (id)contactAutoFillKeywordsForKey:(id)a3 value:(id)a4 localizedKeywords:(id)a5;
- (id)emailKeywordSet;
- (id)loginKeywordList;
- (id)phoneKeywordSet;
- (id)placeholderTextForResponder:(id)a3;
- (id)searchKeywordSet;
- (id)signupKeywordList;
- (id)textContentTypeForResponder:(id)a3;
- (id)textContentTypeForResponder:(id)a3 traits:(id)a4 contentTypesFound:(id)a5;
- (int64_t)doTraits:(id)a3 matchTextContentType:(id)a4;
- (unint64_t)_needAutoFillCandidate:(id)a3 delegateAsResponder:(id)a4;
- (unint64_t)autoFillModeForResponder:(id)a3;
- (unint64_t)cellularAutoFillModeWithCurrentResponder:(id)a3 currentTraits:(id)a4 allResponders:(id)a5 indexOfCurrent:(int64_t)a6;
- (unint64_t)contactAutoFillModeWithCurrentResponder:(id)a3 currentTraits:(id)a4 allResponders:(id)a5 indexOfCurrent:(int64_t)a6;
- (unint64_t)containsIndicationInText:(id)a3 withAccessibilityHints:(BOOL)a4;
- (unint64_t)creditCardAutoFillModeWithCurrentResponder:(id)a3 currentTraits:(id)a4 allResponders:(id)a5 indexOfCurrent:(int64_t)a6;
- (unint64_t)signUpSignalFromButton:(id)a3;
- (unint64_t)signUpSignalFromViewControllerHierarchy:(id)a3;
- (void)_clearASPInTextField:(id)a3;
- (void)addTemporaryTextColorToTextField:(id)a3;
- (void)clearASPInPasswordFields;
- (void)clearASPVisualEffectsInTextField:(id)a3;
- (void)clearAutoFillGroup;
- (void)enumeratePasswordFieldsUsingBlock:(id)a3;
- (void)optOutASPInPasswordFields;
- (void)removeTemporaryTextColorFromTextField:(id)a3;
- (void)showASPInTextField:(id)a3 isRightToLeft:(BOOL)a4;
- (void)updateAutofillContextForResponder:(id)a3;
@end

@implementation AFUITargetDetectionController

- (AFUITargetDetectionController)init
{
  v8.receiver = self;
  v8.super_class = AFUITargetDetectionController;
  v2 = [(AFUITargetDetectionController *)&v8 init];
  if (v2)
  {
    v3 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:1];
    autoFillGroup = v2->_autoFillGroup;
    v2->_autoFillGroup = v3;

    v5 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:1];
    autoFillContext = v2->_autoFillContext;
    v2->_autoFillContext = v5;
  }

  return v2;
}

- (void)clearAutoFillGroup
{
  v3 = [(AFUITargetDetectionController *)self autoFillGroup];
  [v3 removeAllObjects];

  v4 = [(AFUITargetDetectionController *)self autoFillContext];
  [v4 removeAllObjects];

  self->_didOptOutOfAutoFillSignup = 0;
}

- (id)textContentTypeForResponder:(id)a3
{
  v4 = a3;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy__0;
  v16 = __Block_byref_object_dispose__0;
  v17 = 0;
  v5 = [(AFUITargetDetectionController *)self autoFillGroup];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __61__AFUITargetDetectionController_textContentTypeForResponder___block_invoke;
  v9[3] = &unk_1E8424788;
  v6 = v4;
  v10 = v6;
  v11 = &v12;
  [v5 enumerateKeysAndObjectsUsingBlock:v9];

  v7 = v13[5];
  _Block_object_dispose(&v12, 8);

  return v7;
}

void __61__AFUITargetDetectionController_textContentTypeForResponder___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v8 = a2;
  if (*(a1 + 32) == a3)
  {
    v9 = v8;
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
    v8 = v9;
    *a4 = 1;
  }
}

- (id)autoFillContextForResponder:(id)a3
{
  v4 = a3;
  v5 = [(NSMutableDictionary *)self->_autoFillContext mutableCopy];
  [v5 setObject:&unk_1F4EA2368 forKey:@"_WKAutofillContextVersion"];
  if (objc_opt_respondsToSelector())
  {
    v6 = [v4 _autofillContext];
    if (v6)
    {
      [v5 addEntriesFromDictionary:v6];
    }
  }

  if ([v5 count])
  {
    v7 = v5;
  }

  else
  {
    v7 = 0;
  }

  v8 = v7;

  return v7;
}

- (int64_t)doTraits:(id)a3 matchTextContentType:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = v6;
  if (!v5)
  {
    goto LABEL_29;
  }

  if ([v6 isEqualToString:*MEMORY[0x1E698E1A8]])
  {
    v8 = [v5 textContentType];
    v9 = [v8 isEqualToString:v7];

    if ((v9 & 1) == 0)
    {
      if ([v5 keyboardType] && objc_msgSend(v5, "keyboardType") != 7 && objc_msgSend(v5, "keyboardType") != 1)
      {
        goto LABEL_29;
      }

      v10 = [v5 textContentType];
      if (v10 != *MEMORY[0x1E698E148] && [v5 autocorrectionType] == 1)
      {
        v11 = [v5 isSecureTextEntry];

        if ((v11 & 1) == 0)
        {
          goto LABEL_36;
        }

        goto LABEL_29;
      }

      goto LABEL_28;
    }

    goto LABEL_19;
  }

  if (![v7 isEqualToString:*MEMORY[0x1E698E148]])
  {
    if ([v7 isEqualToString:*MEMORY[0x1E698E138]])
    {
      v16 = [v5 textContentType];
      v17 = [v16 isEqualToString:v7];

      if ((v17 & 1) == 0)
      {
        if (![v5 keyboardType])
        {
          goto LABEL_36;
        }

        if ([v5 isSecureTextEntry])
        {
          goto LABEL_36;
        }

        v22 = [v5 keyboardType] - 4;
        if (v22 < 0xA && ((0x293u >> v22) & 1) != 0)
        {
          goto LABEL_36;
        }

        if ([v5 keyboardType] == 1)
        {
          goto LABEL_36;
        }

        goto LABEL_29;
      }

      goto LABEL_19;
    }

    if (![v7 isEqualToString:*MEMORY[0x1E698E120]])
    {
      if (AFTextContentTypeIsInContactSet(v7))
      {
        v18 = [v5 textContentType];
        v19 = [v18 isEqualToString:v7];

        if ((v19 & 1) == 0)
        {
          if ([v5 isSecureTextEntry])
          {
LABEL_29:
            v15 = 0;
            goto LABEL_30;
          }

          v10 = [v5 textContentType];
          if (!v10 && [v5 autocorrectionType] == 1)
          {
            v20 = [v5 keyboardType];
            if (v20 > 0xD || ((1 << v20) & 0x2930) == 0)
            {
              if ((AFUIIsAppleApp() & 1) == 0)
              {
                goto LABEL_36;
              }

              goto LABEL_29;
            }
          }

LABEL_28:

          goto LABEL_29;
        }
      }

      else
      {
        if (!AFTextContentTypeIsInCreditCardSet(v7) && !AFTextContentTypeIsInCellularSet(v7))
        {
          goto LABEL_29;
        }

        v23 = [v5 textContentType];
        v24 = [v23 isEqualToString:v7];

        if ((v24 & 1) == 0)
        {
          goto LABEL_29;
        }
      }

      goto LABEL_19;
    }
  }

  v12 = [v5 textContentType];
  v13 = [v12 isEqualToString:v7];

  if (v13)
  {
LABEL_19:
    v15 = 2;
    goto LABEL_30;
  }

  if (![v5 isSecureTextEntry] || (objc_msgSend(v5, "displaySecureTextUsingPlainText") & 1) != 0)
  {
    goto LABEL_29;
  }

  v14 = [v5 keyboardType] - 4;
  if (v14 >= 0xA)
  {
LABEL_36:
    v15 = 1;
    goto LABEL_30;
  }

  v15 = qword_1D2F33060[v14];
LABEL_30:

  return v15;
}

- (id)contactAutoFillKeywordsForKey:(id)a3 value:(id)a4 localizedKeywords:(id)a5
{
  v7 = a4;
  v8 = a3;
  v9 = [a5 componentsSeparatedByString:@"|"];
  v10 = [MEMORY[0x1E696AAE8] bundleForClass:_AFUIApplicationClass()];
  v11 = [v10 _preferredEnglishLocalizationBundle];

  v12 = [v11 localizedStringForKey:v8 value:v7 table:@"Localizable"];

  v13 = [v12 componentsSeparatedByString:@"|"];

  v14 = [objc_alloc(MEMORY[0x1E695DFA8]) initWithArray:v9];
  [v14 addObjectsFromArray:v13];
  v15 = [v14 copy];

  return v15;
}

- (id)searchKeywordSet
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __49__AFUITargetDetectionController_searchKeywordSet__block_invoke;
  block[3] = &unk_1E84247B0;
  block[4] = self;
  if (searchKeywordSet_onceToken != -1)
  {
    dispatch_once(&searchKeywordSet_onceToken, block);
  }

  return searchKeywordSet__searchKeywordSet;
}

void __49__AFUITargetDetectionController_searchKeywordSet__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v4 = _AFUIUIAppLocalizedStringWithDefaultValue(@"SEARCH_FIELD_SEARCH_TERMS", @"search|query");
  v2 = [v1 contactAutoFillKeywordsForKey:@"SEARCH_FIELD_SEARCH_TERMS" value:@"search|query" localizedKeywords:v4];
  v3 = searchKeywordSet__searchKeywordSet;
  searchKeywordSet__searchKeywordSet = v2;
}

- (id)addressKeywordSet
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __50__AFUITargetDetectionController_addressKeywordSet__block_invoke;
  block[3] = &unk_1E84247B0;
  block[4] = self;
  if (addressKeywordSet_onceToken != -1)
  {
    dispatch_once(&addressKeywordSet_onceToken, block);
  }

  return addressKeywordSet__addressKeywordSet;
}

void __50__AFUITargetDetectionController_addressKeywordSet__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v4 = _AFUIUIAppLocalizedStringWithDefaultValue(@"Address_FIELD_SEARCH_TERMS", @"address|where|destination|location");
  v2 = [v1 contactAutoFillKeywordsForKey:@"Address_FIELD_SEARCH_TERMS" value:@"address|where|destination|location" localizedKeywords:v4];
  v3 = addressKeywordSet__addressKeywordSet;
  addressKeywordSet__addressKeywordSet = v2;
}

- (id)phoneKeywordSet
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __48__AFUITargetDetectionController_phoneKeywordSet__block_invoke;
  block[3] = &unk_1E84247B0;
  block[4] = self;
  if (phoneKeywordSet_onceToken != -1)
  {
    dispatch_once(&phoneKeywordSet_onceToken, block);
  }

  return phoneKeywordSet__phoneKeywordSet;
}

void __48__AFUITargetDetectionController_phoneKeywordSet__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v4 = _AFUIUIAppLocalizedStringWithDefaultValue(@"PHONE_FIELD_SEARCH_TERMS", @"phone|mobile|telephone");
  v2 = [v1 contactAutoFillKeywordsForKey:@"PHONE_FIELD_SEARCH_TERMS" value:@"phone|mobile|telephone" localizedKeywords:v4];
  v3 = phoneKeywordSet__phoneKeywordSet;
  phoneKeywordSet__phoneKeywordSet = v2;
}

- (id)emailKeywordSet
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __48__AFUITargetDetectionController_emailKeywordSet__block_invoke;
  block[3] = &unk_1E84247B0;
  block[4] = self;
  if (emailKeywordSet_onceToken != -1)
  {
    dispatch_once(&emailKeywordSet_onceToken, block);
  }

  return emailKeywordSet__emailKeywordSet;
}

void __48__AFUITargetDetectionController_emailKeywordSet__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v4 = _AFUIUIAppLocalizedStringWithDefaultValue(@"EMAIL_FIELD_SEARCH_TERMS", @"email|e-mail");
  v2 = [v1 contactAutoFillKeywordsForKey:@"EMAIL_FIELD_SEARCH_TERMS" value:@"email|e-mail" localizedKeywords:v4];
  v3 = emailKeywordSet__emailKeywordSet;
  emailKeywordSet__emailKeywordSet = v2;
}

- (id)signupKeywordList
{
  if (signupKeywordList_onceToken != -1)
  {
    [AFUITargetDetectionController signupKeywordList];
  }

  v3 = signupKeywordList_wordList;

  return v3;
}

void __50__AFUITargetDetectionController_signupKeywordList__block_invoke()
{
  v0 = signupKeywordList_wordList;
  signupKeywordList_wordList = &unk_1F4EA22F0;
}

- (id)loginKeywordList
{
  if (loginKeywordList_onceToken != -1)
  {
    [AFUITargetDetectionController loginKeywordList];
  }

  v3 = loginKeywordList_wordList;

  return v3;
}

void __49__AFUITargetDetectionController_loginKeywordList__block_invoke()
{
  v0 = loginKeywordList_wordList;
  loginKeywordList_wordList = &unk_1F4EA2308;
}

- (id)accessibilitySignupKeywordList
{
  if (accessibilitySignupKeywordList_onceToken != -1)
  {
    [AFUITargetDetectionController accessibilitySignupKeywordList];
  }

  v3 = accessibilitySignupKeywordList_wordList;

  return v3;
}

void __63__AFUITargetDetectionController_accessibilitySignupKeywordList__block_invoke()
{
  v0 = accessibilitySignupKeywordList_wordList;
  accessibilitySignupKeywordList_wordList = &unk_1F4EA2320;
}

- (id)accessibilityLoginKeywordList
{
  if (accessibilityLoginKeywordList_onceToken != -1)
  {
    [AFUITargetDetectionController accessibilityLoginKeywordList];
  }

  v3 = accessibilityLoginKeywordList_wordList;

  return v3;
}

void __62__AFUITargetDetectionController_accessibilityLoginKeywordList__block_invoke()
{
  v0 = accessibilityLoginKeywordList_wordList;
  accessibilityLoginKeywordList_wordList = &unk_1F4EA2338;
}

- (BOOL)containsUsernamePasswordPairsInAutoFillGroup:(id)a3
{
  v3 = a3;
  v4 = v3;
  if (v3)
  {
    v5 = [v3 objectForKey:*MEMORY[0x1E698E1A8]];
    if (v5)
    {
      v6 = [v4 objectForKey:*MEMORY[0x1E698E148]];
      if (v6)
      {
        v7 = 1;
      }

      else
      {
        v8 = [v4 objectForKey:*MEMORY[0x1E698E120]];
        v7 = v8 != 0;
      }
    }

    else
    {
      v7 = 0;
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (BOOL)shouldPreferFallbackAutoFillGroup
{
  v3 = [(AFUITargetDetectionController *)self fallbackAutoFillGroup];
  if (v3)
  {
    v4 = v3;
    v5 = [(AFUITargetDetectionController *)self fallbackAutoFillGroup];
    v6 = [v5 count];

    if (v6)
    {
      v7 = [(AFUITargetDetectionController *)self autoFillGroup];
      v8 = ![(AFUITargetDetectionController *)self containsUsernamePasswordPairsInAutoFillGroup:v7];

      v9 = [(AFUITargetDetectionController *)self fallbackAutoFillGroup];
      v10 = [(AFUITargetDetectionController *)self containsUsernamePasswordPairsInAutoFillGroup:v9];

      LOBYTE(v3) = v8 & v10;
    }

    else
    {
      LOBYTE(v3) = 0;
    }
  }

  return v3;
}

- (void)showASPInTextField:(id)a3 isRightToLeft:(BOOL)a4
{
  v31[1] = *MEMORY[0x1E69E9840];
  v6 = a3;
  [(objc_class *)+[AFUIAdapter runtimeClass](AFUIAdapter areaForASPFromTextField:"areaForASPFromTextField:", v6];
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v15 = a4 || [(objc_class *)+[AFUIAdapter runtimeClass](AFUIAdapter alignmentFromTextField:"alignmentFromTextField:", v6]== 2;
  v30 = *MEMORY[0x1E69DB648];
  v16 = [v6 font];
  v31[0] = v16;
  v17 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v31 forKeys:&v30 count:1];

  v18 = [(objc_class *)+[AFUIAdapter runtimeClass](AFUIAdapter textFromResponder:"textFromResponder:", v6];
  [v18 sizeWithAttributes:v17];
  v20 = v19;

  v21 = [AFUIASPCoverView coverForeground:1 withFrame:v15 isRightToLeft:v8 withTextWidth:v10, v12, v14, v20];
  [v6 frame];
  v22 = [AFUIASPCoverView coverForeground:"coverForeground:withFrame:isRightToLeft:withTextWidth:" withFrame:0 isRightToLeft:v15 withTextWidth:?];
  v23 = [(AFUITargetDetectionController *)self autoFillGroup];
  v24 = [v23 objectForKey:@"AFUIAutoFillASPOptInKey"];
  v25 = [v24 BOOLValue];

  if ((v25 & 1) == 0)
  {
    v26 = [v6 backgroundColor];
    textFieldOriginalColor = self->_textFieldOriginalColor;
    self->_textFieldOriginalColor = v26;

    v28 = [(AFUITargetDetectionController *)self autoFillGroup];
    [v28 setObject:MEMORY[0x1E695E118] forKey:@"AFUIAutoFillASPOptInKey"];
  }

  [(objc_class *)+[AFUIAdapter runtimeClass](AFUIAdapter configureField:"configureField:withASPForegroundView:withASPBackgroundView:" withASPForegroundView:v6 withASPBackgroundView:v21, v22];

  v29 = *MEMORY[0x1E69E9840];
}

- (void)clearASPVisualEffectsInTextField:(id)a3
{
  v3 = a3;
  [(objc_class *)+[AFUIAdapter runtimeClass](AFUIAdapter configureField:"configureField:withASPForegroundView:withASPBackgroundView:" withASPForegroundView:v3 withASPBackgroundView:0, 0];
}

- (void)_clearASPInTextField:(id)a3
{
  v5 = a3;
  v4 = [(AFUITargetDetectionController *)self autoFillGroup];
  [v4 removeObjectForKey:@"AFUIAutoFillASPOptInKey"];

  [(AFUITargetDetectionController *)self removeTemporaryTextColorFromTextField:v5];
  [(AFUITargetDetectionController *)self clearASPVisualEffectsInTextField:v5];
  [(objc_class *)+[AFUIAdapter runtimeClass](AFUIAdapter setText:"setText:forResponder:" forResponder:&stru_1F4E9A028, v5];
}

- (void)clearASPInPasswordFields
{
  v3 = [(AFUITargetDetectionController *)self autoFillGroup];
  v6 = [v3 objectForKey:*MEMORY[0x1E698E148]];

  _AFUITextFieldClass();
  if (objc_opt_isKindOfClass())
  {
    [(AFUITargetDetectionController *)self _clearASPInTextField:v6];
  }

  v4 = [(AFUITargetDetectionController *)self autoFillGroup];
  v5 = [v4 objectForKey:*MEMORY[0x1E698E120]];

  _AFUITextFieldClass();
  if (objc_opt_isKindOfClass())
  {
    [(AFUITargetDetectionController *)self _clearASPInTextField:v5];
  }
}

- (void)optOutASPInPasswordFields
{
  [(AFUITargetDetectionController *)self clearASPInPasswordFields];
  v3 = [(AFUITargetDetectionController *)self autoFillGroup];
  [v3 setObject:MEMORY[0x1E695E110] forKey:@"AFUIAutoFillASPOptInKey"];
}

- (id)textContentTypeForResponder:(id)a3 traits:(id)a4 contentTypesFound:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [v9 textContentType];
  if (!v11)
  {
    v12 = [(objc_class *)+[AFUIAdapter runtimeClass](AFUIAdapter textSignalsForResponder:"textSignalsForResponder:", v8];
    v13 = *MEMORY[0x1E698E0D0];
    if (([v10 containsObject:*MEMORY[0x1E698E0D0]] & 1) == 0 && ((v16 = objc_msgSend(v9, "keyboardType"), v16 == 7) || __86__AFUITargetDetectionController_textContentTypeForResponder_traits_contentTypesFound___block_invoke_2(v16, v12)) || (v13 = *MEMORY[0x1E698E198], (objc_msgSend(v10, "containsObject:", *MEMORY[0x1E698E198]) & 1) == 0) && (v14 = objc_msgSend(v9, "keyboardType"), v14 != 3) && __86__AFUITargetDetectionController_textContentTypeForResponder_traits_contentTypesFound___block_invoke(v14, v12))
    {
      v17 = v13;
    }

    else
    {
      if (AFUISupportsCarPlayMaps_onceToken != -1)
      {
        [AFUITargetDetectionController textContentTypeForResponder:traits:contentTypesFound:];
      }

      if (AFUISupportsCarPlayMaps__hasCarPlayMapsEntitlement != 1)
      {
        v18 = +[AFUIAutoCompleteMappingController sharedInstance];
        v19 = [v12 allObjects];
        v11 = [v18 heuristicTextContentTypeForHints:v19 textContentTypesToSkip:v10];

LABEL_18:
        goto LABEL_19;
      }

      v15 = [(AFUITargetDetectionController *)self searchKeywordSet];
      if (AFUITextSignalsFoundInKeywordsList(v12, v15))
      {
      }

      else
      {
        v20 = [v9 returnKeyType];

        if (v20 != 6)
        {
          v11 = 0;
          goto LABEL_18;
        }
      }

      v17 = *MEMORY[0x1E698E0E0];
    }

    v11 = v17;
    goto LABEL_18;
  }

LABEL_19:

  return v11;
}

uint64_t __86__AFUITargetDetectionController_textContentTypeForResponder_traits_contentTypesFound___block_invoke(uint64_t a1, void *a2)
{
  v9[1] = *MEMORY[0x1E69E9840];
  v2 = a2;
  if ([v2 count])
  {
    v3 = +[AFUIAutoCompleteMappingController sharedInstance];
    v9[0] = *MEMORY[0x1E698E198];
    v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:v9 count:1];
    v5 = [v3 heuristicStringsForTextContentTypes:v4];
    v6 = AFUITextSignalsFoundInKeywordsList(v2, v5);
  }

  else
  {
    v6 = 0;
  }

  v7 = *MEMORY[0x1E69E9840];
  return v6;
}

uint64_t __86__AFUITargetDetectionController_textContentTypeForResponder_traits_contentTypesFound___block_invoke_2(uint64_t a1, void *a2)
{
  v23[1] = *MEMORY[0x1E69E9840];
  v2 = a2;
  if (![v2 count])
  {
    goto LABEL_3;
  }

  v3 = +[AFUIAutoCompleteMappingController sharedInstance];
  v23[0] = *MEMORY[0x1E698E0D0];
  v4 = 1;
  v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v23 count:1];
  v6 = [v3 heuristicStringsForTextContentTypes:v5];
  v7 = AFUITextSignalsFoundInKeywordsList(v2, v6);

  if ((v7 & 1) == 0)
  {
LABEL_3:
    v20 = 0u;
    v21 = 0u;
    v18 = 0u;
    v19 = 0u;
    v8 = v2;
    v9 = [v8 countByEnumeratingWithState:&v18 objects:v22 count:16];
    if (v9)
    {
      v10 = v9;
      v4 = 0;
      v11 = *v19;
      do
      {
        v12 = 0;
        do
        {
          if (*v19 != v11)
          {
            objc_enumerationMutation(v8);
          }

          v13 = *(*(&v18 + 1) + 8 * v12);
          if (AFUIRegularExpressionForEmail_onceToken != -1)
          {
            __86__AFUITargetDetectionController_textContentTypeForResponder_traits_contentTypesFound___block_invoke_2_cold_1();
          }

          v14 = AFUIRegularExpressionForEmail_regEx;
          v15 = [v14 numberOfMatchesInString:v13 options:0 range:{0, objc_msgSend(v13, "length", v18)}];

          v4 |= v15 != 0;
          ++v12;
        }

        while (v10 != v12);
        v10 = [v8 countByEnumeratingWithState:&v18 objects:v22 count:16];
      }

      while (v10);
    }

    else
    {
      v4 = 0;
    }
  }

  v16 = *MEMORY[0x1E69E9840];
  return v4 & 1;
}

- (id)placeholderTextForResponder:(id)a3
{
  v3 = a3;
  v4 = [(objc_class *)+[AFUIAdapter runtimeClass](AFUIAdapter placeholderTextForResponder:"placeholderTextForResponder:", v3];

  if (v4)
  {
    v5 = v4;
  }

  else
  {
    v5 = &stru_1F4E9A028;
  }

  v6 = v5;

  return v5;
}

- (unint64_t)contactAutoFillModeWithCurrentResponder:(id)a3 currentTraits:(id)a4 allResponders:(id)a5 indexOfCurrent:(int64_t)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = [(AFUITargetDetectionController *)self textContentTypeForResponder:v10 traits:v11 contentTypesFound:0];
  v14 = 0;
  if (AFTextContentTypeIsInContactSet(v13))
  {
    v42 = v11;
    v15 = [(AFUITargetDetectionController *)self autoFillGroup];
    [v15 setObject:v10 forKey:v13];

    v16 = [(AFUITargetDetectionController *)self autoFillContext];
    v43 = v10;
    v17 = [(AFUITargetDetectionController *)self placeholderTextForResponder:v10];
    [v16 setObject:v17 forKey:v13];

    v41 = v13;
    v18 = [MEMORY[0x1E695DFA8] setWithObject:v13];
    v19 = [v12 count];
    v40 = a6;
    v20 = a6 + 1;
    v44 = v12;
    if (v20 < v19)
    {
      while (1)
      {
        v21 = [v12 objectAtIndex:v20];
        v22 = [AFUIInputTraits traitsByAdoptingTraits:v21];
        v23 = [(AFUITargetDetectionController *)self textContentTypeForResponder:v21 traits:v22 contentTypesFound:v18];
        if ((AFTextContentTypeIsInContactSet(v23) & 1) == 0)
        {
          break;
        }

        v24 = [(AFUITargetDetectionController *)self autoFillGroup];
        [v24 setObject:v21 forKey:v23];

        v25 = [(AFUITargetDetectionController *)self autoFillContext];
        v26 = [(AFUITargetDetectionController *)self placeholderTextForResponder:v21];
        [v25 setObject:v26 forKey:v23];

        v12 = v44;
        [v18 addObject:v23];

        if (++v20 >= v19)
        {
          goto LABEL_7;
        }
      }
    }

LABEL_7:
    if (v40 >= 1 && v40 - 1 < v19)
    {
      v27 = v40 - 2;
      while (1)
      {
        v28 = [v12 objectAtIndex:v27 + 1];
        v29 = [AFUIInputTraits traitsByAdoptingTraits:v28];
        v30 = [(AFUITargetDetectionController *)self textContentTypeForResponder:v28 traits:v29 contentTypesFound:v18];
        if ((AFTextContentTypeIsInContactSet(v30) & 1) == 0)
        {
          break;
        }

        v31 = [(AFUITargetDetectionController *)self autoFillGroup];
        [v31 setObject:v28 forKey:v30];

        v32 = [(AFUITargetDetectionController *)self autoFillContext];
        v33 = [(AFUITargetDetectionController *)self placeholderTextForResponder:v28];
        [v32 setObject:v33 forKey:v30];

        [v18 addObject:v30];
        v12 = v44;
        if ((v27 + 1) >= 1 && v27-- < v19)
        {
          continue;
        }

        goto LABEL_16;
      }

      v12 = v44;
    }

LABEL_16:
    v13 = v41;
    v11 = v42;
    if (-[AFUITargetDetectionController doTraits:matchTextContentType:](self, "doTraits:matchTextContentType:", v42, v41) == 2 || [v18 count] != 1)
    {
      v10 = v43;
      if ([v41 isEqualToString:*MEMORY[0x1E698E0D0]])
      {
        v14 = 5;
      }

      else if ([v41 isEqualToString:*MEMORY[0x1E698E198]])
      {
        v14 = 6;
      }

      else if (AFTextContentTypeIsInContactSet(v41))
      {
        v14 = 7;
      }

      else
      {
        v14 = 0;
      }
    }

    else
    {
      v35 = [(AFUITargetDetectionController *)self autoFillGroup];
      v36 = [v18 anyObject];
      [v35 removeObjectForKey:v36];

      v37 = [(AFUITargetDetectionController *)self autoFillContext];
      v38 = [v18 anyObject];
      [v37 removeObjectForKey:v38];

      v14 = 0;
      v10 = v43;
    }
  }

  return v14;
}

- (unint64_t)creditCardAutoFillModeWithCurrentResponder:(id)a3 currentTraits:(id)a4 allResponders:(id)a5 indexOfCurrent:(int64_t)a6
{
  v10 = a3;
  v11 = a4;
  v43 = a5;
  if ([(AFUITargetDetectionController *)self _detectionEnabledForResponder:v10])
  {
    v12 = [(AFUITargetDetectionController *)self textContentTypeForResponder:v10 traits:v11 contentTypesFound:0];
    v13 = 0;
    if (AFTextContentTypeIsInCreditCardSet(v12))
    {
      v41 = v11;
      v14 = [(AFUITargetDetectionController *)self autoFillGroup];
      [v14 setObject:v10 forKey:v12];

      v15 = [(AFUITargetDetectionController *)self autoFillContext];
      v42 = v10;
      v16 = [(AFUITargetDetectionController *)self placeholderTextForResponder:v10];
      [v15 setObject:v16 forKey:v12];

      v40 = v12;
      v17 = [MEMORY[0x1E695DFA8] setWithObject:v12];
      v18 = [v43 count];
      v39 = a6;
      v19 = a6 + 1;
      if (a6 + 1 < v18)
      {
        while (1)
        {
          v20 = [v43 objectAtIndex:v19];
          v21 = [AFUIInputTraits traitsByAdoptingTraits:v20];
          v22 = [(AFUITargetDetectionController *)self textContentTypeForResponder:v20 traits:v21 contentTypesFound:v17];
          if ((AFTextContentTypeIsInCreditCardSet(v22) & 1) == 0)
          {
            break;
          }

          v23 = [(AFUITargetDetectionController *)self autoFillGroup];
          [v23 setObject:v20 forKey:v22];

          v24 = [(AFUITargetDetectionController *)self autoFillContext];
          v25 = [(AFUITargetDetectionController *)self placeholderTextForResponder:v20];
          [v24 setObject:v25 forKey:v22];

          [v17 addObject:v22];
          if (++v19 >= v18)
          {
            goto LABEL_9;
          }
        }
      }

LABEL_9:
      if (v39 >= 1 && v39 - 1 < v18)
      {
        v26 = v39 - 2;
        while (1)
        {
          v27 = [v43 objectAtIndex:v26 + 1];
          v28 = [AFUIInputTraits traitsByAdoptingTraits:v27];
          v29 = [(AFUITargetDetectionController *)self textContentTypeForResponder:v27 traits:v28 contentTypesFound:v17];
          if ((AFTextContentTypeIsInCreditCardSet(v29) & 1) == 0)
          {
            break;
          }

          v30 = [(AFUITargetDetectionController *)self autoFillGroup];
          [v30 setObject:v27 forKey:v29];

          v31 = [(AFUITargetDetectionController *)self autoFillContext];
          v32 = [(AFUITargetDetectionController *)self placeholderTextForResponder:v27];
          [v31 setObject:v32 forKey:v29];

          [v17 addObject:v29];
          if ((v26 + 1) >= 1 && v26-- < v18)
          {
            continue;
          }

          goto LABEL_18;
        }
      }

LABEL_18:
      v12 = v40;
      v11 = v41;
      if (-[AFUITargetDetectionController doTraits:matchTextContentType:](self, "doTraits:matchTextContentType:", v41, v40) == 2 || [v17 count] != 1)
      {
        v13 = 9;
      }

      else
      {
        v34 = [(AFUITargetDetectionController *)self autoFillGroup];
        v35 = [v17 anyObject];
        [v34 removeObjectForKey:v35];

        v36 = [(AFUITargetDetectionController *)self autoFillContext];
        v37 = [v17 anyObject];
        [v36 removeObjectForKey:v37];

        v13 = 0;
      }

      v10 = v42;
    }
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

- (unint64_t)cellularAutoFillModeWithCurrentResponder:(id)a3 currentTraits:(id)a4 allResponders:(id)a5 indexOfCurrent:(int64_t)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = [(AFUITargetDetectionController *)self textContentTypeForResponder:v10 traits:v11 contentTypesFound:0];
  v14 = 0;
  if (AFTextContentTypeIsInCellularSet(v13))
  {
    v42 = v11;
    v15 = [(AFUITargetDetectionController *)self autoFillGroup];
    [v15 setObject:v10 forKey:v13];

    v16 = [(AFUITargetDetectionController *)self autoFillContext];
    v43 = v10;
    v17 = [(AFUITargetDetectionController *)self placeholderTextForResponder:v10];
    [v16 setObject:v17 forKey:v13];

    v41 = v13;
    v18 = [MEMORY[0x1E695DFA8] setWithObject:v13];
    v19 = [v12 count];
    v40 = a6;
    v20 = a6 + 1;
    v44 = v12;
    if (v20 < v19)
    {
      while (1)
      {
        v21 = [v12 objectAtIndex:v20];
        v22 = [AFUIInputTraits traitsByAdoptingTraits:v21];
        v23 = [(AFUITargetDetectionController *)self textContentTypeForResponder:v21 traits:v22 contentTypesFound:v18];
        if ((AFTextContentTypeIsInCellularSet(v23) & 1) == 0)
        {
          break;
        }

        v24 = [(AFUITargetDetectionController *)self autoFillGroup];
        [v24 setObject:v21 forKey:v23];

        v25 = [(AFUITargetDetectionController *)self autoFillContext];
        v26 = [(AFUITargetDetectionController *)self placeholderTextForResponder:v21];
        [v25 setObject:v26 forKey:v23];

        v12 = v44;
        [v18 addObject:v23];

        if (++v20 >= v19)
        {
          goto LABEL_7;
        }
      }
    }

LABEL_7:
    if (v40 >= 1 && v40 - 1 < v19)
    {
      v27 = v40 - 2;
      while (1)
      {
        v28 = [v12 objectAtIndex:v27 + 1];
        v29 = [AFUIInputTraits traitsByAdoptingTraits:v28];
        v30 = [(AFUITargetDetectionController *)self textContentTypeForResponder:v28 traits:v29 contentTypesFound:v18];
        if ((AFTextContentTypeIsInCellularSet(v30) & 1) == 0)
        {
          break;
        }

        v31 = [(AFUITargetDetectionController *)self autoFillGroup];
        [v31 setObject:v28 forKey:v30];

        v32 = [(AFUITargetDetectionController *)self autoFillContext];
        v33 = [(AFUITargetDetectionController *)self placeholderTextForResponder:v28];
        [v32 setObject:v33 forKey:v30];

        [v18 addObject:v30];
        v12 = v44;
        if ((v27 + 1) >= 1 && v27-- < v19)
        {
          continue;
        }

        goto LABEL_16;
      }

      v12 = v44;
    }

LABEL_16:
    v13 = v41;
    v11 = v42;
    if (-[AFUITargetDetectionController doTraits:matchTextContentType:](self, "doTraits:matchTextContentType:", v42, v41) == 2 || [v18 count] != 1)
    {
      v14 = 10;
    }

    else
    {
      v35 = [(AFUITargetDetectionController *)self autoFillGroup];
      v36 = [v18 anyObject];
      [v35 removeObjectForKey:v36];

      v37 = [(AFUITargetDetectionController *)self autoFillContext];
      v38 = [v18 anyObject];
      [v37 removeObjectForKey:v38];

      v14 = 0;
    }

    v10 = v43;
  }

  return v14;
}

- (unint64_t)containsIndicationInText:(id)a3 withAccessibilityHints:(BOOL)a4
{
  v31 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = v6;
  if (v6 && [v6 length])
  {
    if (a4)
    {
      [(AFUITargetDetectionController *)self accessibilityLoginKeywordList];
    }

    else
    {
      [(AFUITargetDetectionController *)self loginKeywordList];
    }

    v27 = 0u;
    v28 = 0u;
    v25 = 0u;
    v9 = v26 = 0u;
    v10 = [v9 countByEnumeratingWithState:&v25 objects:v30 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v26;
      v8 = 1;
      while (2)
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v26 != v12)
          {
            objc_enumerationMutation(v9);
          }

          if ([v7 localizedCaseInsensitiveContainsString:*(*(&v25 + 1) + 8 * i)])
          {
            v14 = v9;
            goto LABEL_29;
          }
        }

        v11 = [v9 countByEnumeratingWithState:&v25 objects:v30 count:16];
        if (v11)
        {
          continue;
        }

        break;
      }
    }

    if (a4)
    {
      [(AFUITargetDetectionController *)self accessibilitySignupKeywordList];
    }

    else
    {
      [(AFUITargetDetectionController *)self signupKeywordList];
    }

    v23 = 0u;
    v24 = 0u;
    v21 = 0u;
    v14 = v22 = 0u;
    v15 = [v14 countByEnumeratingWithState:&v21 objects:v29 count:16];
    if (v15)
    {
      v16 = v15;
      v17 = *v22;
      v8 = 2;
LABEL_21:
      v18 = 0;
      while (1)
      {
        if (*v22 != v17)
        {
          objc_enumerationMutation(v14);
        }

        if ([v7 localizedCaseInsensitiveContainsString:{*(*(&v21 + 1) + 8 * v18), v21}])
        {
          break;
        }

        if (v16 == ++v18)
        {
          v16 = [v14 countByEnumeratingWithState:&v21 objects:v29 count:16];
          if (v16)
          {
            goto LABEL_21;
          }

          goto LABEL_27;
        }
      }
    }

    else
    {
LABEL_27:
      v8 = 0;
    }

LABEL_29:
  }

  else
  {
    v8 = 0;
  }

  v19 = *MEMORY[0x1E69E9840];
  return v8;
}

- (unint64_t)signUpSignalFromButton:(id)a3
{
  v4 = a3;
  v9 = 0;
  v10 = &v9;
  v11 = 0x2020000000;
  v12 = 0;
  v5 = +[AFUIAdapter runtimeClass];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __56__AFUITargetDetectionController_signUpSignalFromButton___block_invoke;
  v8[3] = &unk_1E84247D8;
  v8[4] = self;
  v8[5] = &v9;
  [(objc_class *)v5 enumerateSignUpSignalsFromButton:v4 block:v8];
  v6 = v10[3];
  _Block_object_dispose(&v9, 8);

  return v6;
}

uint64_t __56__AFUITargetDetectionController_signUpSignalFromButton___block_invoke(uint64_t a1, uint64_t a2, BOOL *a3)
{
  result = [*(a1 + 32) containsIndicationInText:a2 withAccessibilityHints:0];
  *(*(*(a1 + 40) + 8) + 24) = result;
  *a3 = *(*(*(a1 + 40) + 8) + 24) != 0;
  return result;
}

- (unint64_t)signUpSignalFromViewControllerHierarchy:(id)a3
{
  v4 = a3;
  v9 = 0;
  v10 = &v9;
  v11 = 0x2020000000;
  v12 = 0;
  v5 = +[AFUIAdapter runtimeClass];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __73__AFUITargetDetectionController_signUpSignalFromViewControllerHierarchy___block_invoke;
  v8[3] = &unk_1E84247D8;
  v8[4] = self;
  v8[5] = &v9;
  [(objc_class *)v5 enumerateSignUpSignalsFromViewController:v4 block:v8];
  v6 = v10[3];
  _Block_object_dispose(&v9, 8);

  return v6;
}

uint64_t __73__AFUITargetDetectionController_signUpSignalFromViewControllerHierarchy___block_invoke(uint64_t a1, uint64_t a2, BOOL *a3)
{
  result = [*(a1 + 32) containsIndicationInText:a2 withAccessibilityHints:0];
  *(*(*(a1 + 40) + 8) + 24) = result;
  *a3 = *(*(*(a1 + 40) + 8) + 24) != 0;
  return result;
}

- (BOOL)signupHintForUsername:(id)a3 password:(id)a4 responder:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v61 = 0;
  v62 = &v61;
  v63 = 0x2020000000;
  v64 = 0;
  v11 = +[AFUIAdapter runtimeClass];
  v60[0] = MEMORY[0x1E69E9820];
  v60[1] = 3221225472;
  v60[2] = __74__AFUITargetDetectionController_signupHintForUsername_password_responder___block_invoke;
  v60[3] = &unk_1E84247D8;
  v60[4] = self;
  v60[5] = &v61;
  [(objc_class *)v11 enumerateSignupSignalsFromAccessibility:v8 block:v60];
  v12 = v62;
  if (!v62[3])
  {
    v13 = +[AFUIAdapter runtimeClass];
    v59[0] = MEMORY[0x1E69E9820];
    v59[1] = 3221225472;
    v59[2] = __74__AFUITargetDetectionController_signupHintForUsername_password_responder___block_invoke_2;
    v59[3] = &unk_1E84247D8;
    v59[4] = self;
    v59[5] = &v61;
    [(objc_class *)v13 enumerateSignupSignalsFromAccessibility:v9 block:v59];
    v12 = v62;
  }

  v55 = 0;
  v56 = &v55;
  v57 = 0x2020000000;
  v58 = 0;
  v51 = 0;
  v52 = &v51;
  v53 = 0x2020000000;
  v54 = 0;
  if (!v12[3])
  {
    v14 = +[AFUIAdapter runtimeClass];
    v49 = 0;
    v50[0] = MEMORY[0x1E69E9820];
    v50[1] = 3221225472;
    v50[2] = __74__AFUITargetDetectionController_signupHintForUsername_password_responder___block_invoke_3;
    v50[3] = &unk_1E84247D8;
    v50[4] = self;
    v50[5] = &v55;
    [(objc_class *)v14 enumerateSignUpSignalsFromViewControllerForResponder:v8 block:v50 viewControllerOut:&v49];
    v15 = v49;
    if (!v56[3])
    {
      v16 = +[AFUIAdapter runtimeClass];
      v47 = v15;
      v48[0] = MEMORY[0x1E69E9820];
      v48[1] = 3221225472;
      v48[2] = __74__AFUITargetDetectionController_signupHintForUsername_password_responder___block_invoke_4;
      v48[3] = &unk_1E84247D8;
      v48[4] = self;
      v48[5] = &v55;
      [(objc_class *)v16 enumerateSignUpSignalsFromViewControllerForResponder:v9 block:v48 viewControllerOut:&v47];
      v17 = v47;

      v15 = v17;
    }

    v18 = +[AFUIAdapter runtimeClass];
    v46[0] = MEMORY[0x1E69E9820];
    v46[1] = 3221225472;
    v46[2] = __74__AFUITargetDetectionController_signupHintForUsername_password_responder___block_invoke_5;
    v46[3] = &unk_1E84247D8;
    v46[4] = self;
    v46[5] = &v51;
    [(objc_class *)v18 enumerateSignUpSignalsFromNavBarItem:v15 block:v46];
    _AFUINavigationControllerClass();
    if (objc_opt_isKindOfClass())
    {
      v19 = 1;
      if (v56[3])
      {
        goto LABEL_17;
      }
    }

    else
    {
      v20 = v52[3];
      v21 = v56[3];
      if (v20)
      {
        v22 = v20 == v21;
      }

      else
      {
        v22 = 0;
      }

      v19 = v22;
      if (v21)
      {
LABEL_17:

        v12 = v62;
        if (v19)
        {
          v62[3] = v56[3];
        }

        goto LABEL_19;
      }
    }

    v23 = [(objc_class *)+[AFUIAdapter runtimeClass](AFUIAdapter presentedRootViewControllerForResponder:"presentedRootViewControllerForResponder:", v15];
    v24 = +[AFUIAdapter runtimeClass];
    v45[0] = MEMORY[0x1E69E9820];
    v45[1] = 3221225472;
    v45[2] = __74__AFUITargetDetectionController_signupHintForUsername_password_responder___block_invoke_6;
    v45[3] = &unk_1E84247D8;
    v45[4] = self;
    v45[5] = &v55;
    [(objc_class *)v24 enumerateSignUpSignalsFromViewController:v23 block:v45];

    goto LABEL_17;
  }

LABEL_19:
  v41 = 0;
  v42 = &v41;
  v43 = 0x2020000000;
  v44 = 0;
  v25 = v12[3];
  if (!v25)
  {
    v26 = [(AFUITargetDetectionController *)self autoFillGroup];
    v27 = [v26 allValues];

    v28 = [MEMORY[0x1E695DF70] arrayWithCapacity:3];
    v38[0] = MEMORY[0x1E69E9820];
    v38[1] = 3221225472;
    v38[2] = __74__AFUITargetDetectionController_signupHintForUsername_password_responder___block_invoke_7;
    v38[3] = &unk_1E8424800;
    v29 = v27;
    v39 = v29;
    v30 = v28;
    v40 = v30;
    [v10 enumerateObjectsWithOptions:2 usingBlock:v38];
    v31 = [v30 count];
    v37[0] = MEMORY[0x1E69E9820];
    v37[1] = 3221225472;
    v37[2] = __74__AFUITargetDetectionController_signupHintForUsername_password_responder___block_invoke_8;
    v37[3] = &unk_1E8424828;
    v37[4] = self;
    v37[5] = &v41;
    [v30 enumerateObjectsUsingBlock:v37];

    v25 = v62[3];
    if (!v25)
    {
      v32 = v56[3];
      v25 = v42[3];
      if (v32)
      {
        if (v31 >= 3)
        {
          v33 = v56[3];
        }

        else
        {
          v33 = v42[3];
        }

        if (v32 == v25 || v25 == 0)
        {
          v25 = v56[3];
        }

        else
        {
          v25 = v33;
        }
      }

      v62[3] = v25;
    }
  }

  v35 = v25 == 2;
  _Block_object_dispose(&v41, 8);
  _Block_object_dispose(&v51, 8);
  _Block_object_dispose(&v55, 8);
  _Block_object_dispose(&v61, 8);

  return v35;
}

uint64_t __74__AFUITargetDetectionController_signupHintForUsername_password_responder___block_invoke(uint64_t a1, uint64_t a2, BOOL *a3)
{
  result = [*(a1 + 32) containsIndicationInText:a2 withAccessibilityHints:1];
  *(*(*(a1 + 40) + 8) + 24) = result;
  *a3 = *(*(*(a1 + 40) + 8) + 24) != 0;
  return result;
}

uint64_t __74__AFUITargetDetectionController_signupHintForUsername_password_responder___block_invoke_2(uint64_t a1, uint64_t a2, BOOL *a3)
{
  result = [*(a1 + 32) containsIndicationInText:a2 withAccessibilityHints:1];
  *(*(*(a1 + 40) + 8) + 24) = result;
  *a3 = *(*(*(a1 + 40) + 8) + 24) != 0;
  return result;
}

uint64_t __74__AFUITargetDetectionController_signupHintForUsername_password_responder___block_invoke_3(uint64_t a1, uint64_t a2, BOOL *a3)
{
  result = [*(a1 + 32) containsIndicationInText:a2 withAccessibilityHints:0];
  *(*(*(a1 + 40) + 8) + 24) = result;
  *a3 = *(*(*(a1 + 40) + 8) + 24) != 0;
  return result;
}

uint64_t __74__AFUITargetDetectionController_signupHintForUsername_password_responder___block_invoke_4(uint64_t a1, uint64_t a2, BOOL *a3)
{
  result = [*(a1 + 32) containsIndicationInText:a2 withAccessibilityHints:0];
  *(*(*(a1 + 40) + 8) + 24) = result;
  *a3 = *(*(*(a1 + 40) + 8) + 24) != 0;
  return result;
}

uint64_t __74__AFUITargetDetectionController_signupHintForUsername_password_responder___block_invoke_5(uint64_t a1, uint64_t a2, BOOL *a3)
{
  result = [*(a1 + 32) containsIndicationInText:a2 withAccessibilityHints:0];
  *(*(*(a1 + 40) + 8) + 24) = result;
  *a3 = *(*(*(a1 + 40) + 8) + 24) != 0;
  return result;
}

uint64_t __74__AFUITargetDetectionController_signupHintForUsername_password_responder___block_invoke_6(uint64_t a1, uint64_t a2, BOOL *a3)
{
  result = [*(a1 + 32) containsIndicationInText:a2 withAccessibilityHints:0];
  *(*(*(a1 + 40) + 8) + 24) = result;
  *a3 = *(*(*(a1 + 40) + 8) + 24) != 0;
  return result;
}

void __74__AFUITargetDetectionController_signupHintForUsername_password_responder___block_invoke_7(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v6 = a2;
  if ([*(a1 + 32) containsObject:?])
  {
    *a4 = 1;
  }

  _AFUIButtonClass();
  if (objc_opt_isKindOfClass())
  {
    [*(a1 + 40) insertObject:v6 atIndex:0];
  }
}

uint64_t __74__AFUITargetDetectionController_signupHintForUsername_password_responder___block_invoke_8(uint64_t result, uint64_t a2, unint64_t a3, _BYTE *a4)
{
  if (a3 > 2 || (v4 = result, *(*(*(result + 40) + 8) + 24)))
  {
    *a4 = 1;
  }

  else
  {
    result = [*(result + 32) signUpSignalFromButton:a2];
    *(*(*(v4 + 40) + 8) + 24) = result;
  }

  return result;
}

- (void)updateAutofillContextForResponder:(id)a3
{
  v8 = a3;
  v4 = [(AFUITargetDetectionController *)self autoFillContextForResponder:?];
  v5 = [(AFUITargetDetectionController *)self autoFillGroup];
  v6 = v5;
  if (v4)
  {
    [v5 setObject:v4 forKey:@"AFUIAutoFillContextKey"];

    v7 = [(AFUITargetDetectionController *)self autoFillGroup];
    [v7 setObject:v8 forKey:@"AFUIAutoFillContextDelegateKey"];
  }

  else
  {
    [v5 removeObjectForKey:@"AFUIAutoFillContextDelegateKey"];

    v7 = [(AFUITargetDetectionController *)self autoFillGroup];
    [v7 removeObjectForKey:@"AFUIAutoFillContextKey"];
  }
}

- (unint64_t)_needAutoFillCandidate:(id)a3 delegateAsResponder:(id)a4
{
  v6 = a3;
  v216 = a4;
  _AFUIResponderClass();
  if ((objc_opt_isKindOfClass() & 1) == 0 || (_AFUITraitsProtocol(), v7 = objc_claimAutoreleasedReturnValue(), v8 = [v6 conformsToProtocol:v7], v7, !v8))
  {
    _AFUITextViewClass();
    if ((objc_opt_isKindOfClass() & 1) != 0 || ![(objc_class *)+[AFUIAdapter responderAcceptsText:"responderAcceptsText:"]
    {
      goto LABEL_178;
    }

    v15 = [(AFUITargetDetectionController *)self autoFillGroup];
    [v15 setObject:v216 forKey:*MEMORY[0x1E698E138]];

    v16 = 8;
    goto LABEL_179;
  }

  v9 = v6;
  v10 = [(AFUITargetDetectionController *)self autoFillGroup];
  v11 = [v10 objectForKey:@"AFUIAutoFillASPOptInKey"];
  v196 = v6;
  if (([v11 BOOLValue] & 1) == 0)
  {

    goto LABEL_10;
  }

  v12 = [(AFUITargetDetectionController *)self autoFillGroup];
  v13 = [v12 objectForKey:@"AFUIAutoFillPossibleRespondersKey"];
  v14 = [v13 containsObject:v9];

  if ((v14 & 1) == 0)
  {
LABEL_10:
    [(AFUITargetDetectionController *)self clearAutoFillGroup];
    v197 = 0;
    goto LABEL_11;
  }

  v197 = 1;
LABEL_11:
  v217 = -1;
  v210 = [(objc_class *)+[AFUIAdapter runtimeClass](AFUIAdapter gatherRespondersFromResponder:"gatherRespondersFromResponder:", v9];
  v17 = [(objc_class *)+[AFUIAdapter runtimeClass](AFUIAdapter textInputRespondersFromResponders:"textInputRespondersFromResponders:currentResponder:indexOfCurrent:" currentResponder:v210 indexOfCurrent:v9, &v217];
  v18 = [(AFUITargetDetectionController *)self autoFillGroup];
  [v18 setObject:v17 forKey:@"AFUIAutoFillPossibleRespondersKey"];

  if (v217 == 0x7FFFFFFFFFFFFFFFLL || ![v17 count])
  {
    v21 = 0;
    v22 = 0;
    v23 = 0;
    v20 = 0;
  }

  else
  {
    v19 = [v17 count];
    if (v217 < 1)
    {
      v20 = 0;
    }

    else
    {
      v20 = [v17 objectAtIndex:v217 - 1];
    }

    v36 = 0;
    if (v217 > 1 && v19 >= 3)
    {
      v36 = [v17 objectAtIndex:v217 - 2];
    }

    v22 = 0;
    if (v19 >= 1 && v217 < v19 - 1)
    {
      v22 = [v17 objectAtIndex:v217 + 1];
    }

    v21 = 0;
    v37 = v19 - 2;
    if (v19 < 2)
    {
      v23 = v36;
    }

    else
    {
      v23 = v36;
      if (v217 < v37)
      {
        v21 = [v17 objectAtIndex:v217 + 2];
      }
    }
  }

  v215 = [AFUIInputTraits traitsByAdoptingTraits:v9];
  if (v20)
  {
    v202 = [AFUIInputTraits traitsByAdoptingTraits:v20];

    if (v23)
    {
      goto LABEL_18;
    }

LABEL_21:
    v201 = 0;
    if (v22)
    {
      goto LABEL_19;
    }

    goto LABEL_22;
  }

  v202 = 0;
  if (!v23)
  {
    goto LABEL_21;
  }

LABEL_18:
  v201 = [AFUIInputTraits traitsByAdoptingTraits:v23];

  if (v22)
  {
LABEL_19:
    v205 = [AFUIInputTraits traitsByAdoptingTraits:v22];

    goto LABEL_23;
  }

LABEL_22:
  v205 = 0;
LABEL_23:
  v200 = v23;
  v209 = v22;
  v204 = v17;
  if (v21)
  {
    v199 = [AFUIInputTraits traitsByAdoptingTraits:v21];
  }

  else
  {
    v199 = 0;
  }

  v212 = *MEMORY[0x1E698E1A8];
  v24 = [(AFUITargetDetectionController *)self doTraits:v215 matchTextContentType:?];
  v25 = *MEMORY[0x1E698E148];
  v26 = [(AFUITargetDetectionController *)self doTraits:v215 matchTextContentType:*MEMORY[0x1E698E148]];
  v207 = *MEMORY[0x1E698E120];
  v213 = [(AFUITargetDetectionController *)self doTraits:v215 matchTextContentType:?];
  v211 = *MEMORY[0x1E698E138];
  v27 = [(AFUITargetDetectionController *)self doTraits:v215 matchTextContentType:?];
  v203 = v20;
  v198 = v21;
  v195 = v25;
  v206 = v9;
  if (v197)
  {
    if (v24 == 1)
    {
      v28 = [(AFUITargetDetectionController *)self autoFillGroup];
      v29 = [v28 objectForKey:v212];
      if (v29)
      {
        v30 = v29;
        [(AFUITargetDetectionController *)self autoFillGroup];
        v32 = v31 = v9;
        v33 = [v32 objectForKey:v212];
        v34 = [v204 containsObject:v33];

        v20 = v203;
        v9 = v31;

        if (v34)
        {
          v24 = 3;
        }

        else
        {
          v24 = 1;
        }
      }

      else
      {

        v24 = 1;
      }
    }

    if (v26 == 1)
    {
      v38 = [(AFUITargetDetectionController *)self autoFillGroup];
      v39 = [v38 objectForKey:v25];
      if (v39)
      {
        v40 = v39;
        [(AFUITargetDetectionController *)self autoFillGroup];
        v42 = v41 = v24;
        v43 = [v42 objectForKey:v195];
        v44 = v9;
        v45 = [v204 containsObject:v43];

        v20 = v203;
        v24 = v41;
        v25 = v195;

        v187 = (v45 & 1) == 0;
        v9 = v44;
        if (v187)
        {
          v26 = 1;
        }

        else
        {
          v26 = 3;
        }
      }

      else
      {

        v26 = 1;
      }
    }

    if (v213 == 1)
    {
      v46 = v9;
      v47 = v26;
      v48 = [(AFUITargetDetectionController *)self autoFillGroup];
      v49 = [v48 objectForKey:v207];
      if (v49)
      {
        v50 = v49;
        [(AFUITargetDetectionController *)self autoFillGroup];
        v52 = v51 = v24;
        v53 = [v52 objectForKey:v207];
        v54 = [v204 containsObject:v53];

        v20 = v203;
        v24 = v51;

        v55 = 3;
        if ((v54 & 1) == 0)
        {
          v55 = 1;
        }

        v213 = v55;
        v26 = v47;
        v9 = v46;
        v25 = v195;
      }

      else
      {

        v213 = 1;
        v26 = v47;
        v9 = v46;
        v25 = v195;
      }
    }

    v35 = v211;
    if (v27 == 1)
    {
      v56 = [(AFUITargetDetectionController *)self autoFillGroup];
      v57 = [v56 objectForKey:v211];
      if (v57)
      {
        v58 = v57;
        [(AFUITargetDetectionController *)self autoFillGroup];
        v60 = v59 = v24;
        v61 = [v60 objectForKey:v211];
        v62 = [v204 containsObject:v61];

        v20 = v203;
        v24 = v59;
        v25 = v195;
        v9 = v206;

        if (v62)
        {
          v27 = 3;
        }

        else
        {
          v27 = 1;
        }
      }

      else
      {

        v27 = 1;
      }

      v35 = v211;
    }
  }

  else
  {
    v35 = v211;
  }

  v192 = v26;
  v193 = v24;
  if (v27 && v27 > v24 && v27 > v26 && (_AFUITextViewClass(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v86 = [(AFUITargetDetectionController *)self autoFillGroup];
    [v86 setObject:v9 forKey:v35];

    v87 = dyld_program_sdk_at_least();
    if (v27 == 2)
    {
      v214 = 0;
      v194 = 0;
      v191 = 0;
LABEL_80:
      v64 = v212;
      goto LABEL_142;
    }

    v63 = v87;
    v64 = v212;
    v24 = v193;
  }

  else
  {
    v63 = dyld_program_sdk_at_least();
    v64 = v212;
  }

  v65 = v209;
  if ((v24 - 1) <= 1)
  {
    v66 = v20;
    v67 = [(AFUITargetDetectionController *)self autoFillGroup];
    [v67 setObject:v9 forKey:v64];

    v68 = [(AFUITargetDetectionController *)self autoFillContext];
    v69 = [(AFUITargetDetectionController *)self placeholderTextForResponder:v9];
    [v68 setObject:v69 forKey:v64];

    v214 = v215;
    v70 = v207;
    if ([(AFUITargetDetectionController *)self doTraits:v205 matchTextContentType:v207]== 2)
    {
      v71 = [(AFUITargetDetectionController *)self autoFillGroup];
      v72 = v71;
LABEL_88:
      [v71 setObject:v65 forKey:v70];

      v97 = [(AFUITargetDetectionController *)self autoFillContext];
      v98 = [(AFUITargetDetectionController *)self placeholderTextForResponder:v65];
      [v97 setObject:v98 forKey:v70];

      v194 = 0;
      v191 = 1;
LABEL_109:
      v35 = v211;
      goto LABEL_143;
    }

    if (![(AFUITargetDetectionController *)self doTraits:v205 matchTextContentType:v25])
    {
      if (![(AFUITargetDetectionController *)self doTraits:v202 matchTextContentType:v25]|| v201)
      {
        v194 = 0;
        v191 = v202 != 0;
      }

      else
      {
        v99 = [(AFUITargetDetectionController *)self autoFillGroup];
        [v99 setObject:v66 forKey:v25];

        v100 = [(AFUITargetDetectionController *)self autoFillContext];
        v101 = [(AFUITargetDetectionController *)self placeholderTextForResponder:v66];
        [v100 setObject:v101 forKey:v25];

        v194 = 0;
        v191 = 0;
      }

      v70 = v207;
      goto LABEL_109;
    }

    v94 = [(AFUITargetDetectionController *)self autoFillGroup];
    [v94 setObject:v209 forKey:v25];

    v95 = [(AFUITargetDetectionController *)self autoFillContext];
    v96 = [(AFUITargetDetectionController *)self placeholderTextForResponder:v209];
    [v95 setObject:v96 forKey:v25];

    v70 = v207;
    if ([(AFUITargetDetectionController *)self doTraits:v199 matchTextContentType:v207])
    {
      v71 = [(AFUITargetDetectionController *)self autoFillGroup];
      v72 = v71;
      v65 = v198;
      goto LABEL_88;
    }

    if (v193 == 2)
    {
      v102 = v63;
    }

    else
    {
      v102 = 0;
    }

    v35 = v211;
    if (v102 == 1)
    {
      v191 = 0;
      v194 = [(AFUITargetDetectionController *)self doTraits:v205 matchTextContentType:v25]== 2;
      goto LABEL_143;
    }

    goto LABEL_116;
  }

  if (v20 && v213 == 2)
  {
    if ([(AFUITargetDetectionController *)self doTraits:v202 matchTextContentType:v207]|| [(AFUITargetDetectionController *)self doTraits:v202 matchTextContentType:v25])
    {
      v73 = v64;
      if ([(AFUITargetDetectionController *)self doTraits:v201 matchTextContentType:v64])
      {
        v74 = [(AFUITargetDetectionController *)self autoFillGroup];
        [v74 setObject:v200 forKey:v64];

        v75 = [(AFUITargetDetectionController *)self autoFillContext];
        v76 = [(AFUITargetDetectionController *)self placeholderTextForResponder:v200];
        [v75 setObject:v76 forKey:v64];

        v214 = v201;
        v77 = [(AFUITargetDetectionController *)self autoFillGroup];
        [v77 setObject:v20 forKey:v25];

        v78 = [(AFUITargetDetectionController *)self autoFillGroup];
        v79 = v20;
        v70 = v207;
        [v78 setObject:v9 forKey:v207];

        v80 = [(AFUITargetDetectionController *)self autoFillContext];
        v81 = [(AFUITargetDetectionController *)self placeholderTextForResponder:v79];
        [v80 setObject:v81 forKey:v25];

        v82 = [(AFUITargetDetectionController *)self autoFillContext];
        v83 = self;
        v84 = v9;
LABEL_77:
        v85 = [(AFUITargetDetectionController *)v83 placeholderTextForResponder:v84];
        [v82 setObject:v85 forKey:v70];

        v194 = 0;
        v191 = 1;
        v64 = v73;
        goto LABEL_143;
      }

LABEL_114:
      v214 = 0;
      v194 = 0;
      v191 = 0;
LABEL_131:
      v64 = v73;
      goto LABEL_142;
    }

    if ([(AFUITargetDetectionController *)self doTraits:v205 matchTextContentType:v207]|| [(AFUITargetDetectionController *)self doTraits:v205 matchTextContentType:v25])
    {
      v73 = v64;
      if ([(AFUITargetDetectionController *)self doTraits:v202 matchTextContentType:v64])
      {
        v114 = [(AFUITargetDetectionController *)self autoFillGroup];
        [v114 setObject:v20 forKey:v64];

        v115 = [(AFUITargetDetectionController *)self autoFillContext];
        v116 = [(AFUITargetDetectionController *)self placeholderTextForResponder:v20];
        [v115 setObject:v116 forKey:v64];

        v214 = v202;
        v117 = [(AFUITargetDetectionController *)self autoFillGroup];
        [v117 setObject:v9 forKey:v25];

        v118 = [(AFUITargetDetectionController *)self autoFillGroup];
        v70 = v207;
        [v118 setObject:v209 forKey:v207];

        v119 = [(AFUITargetDetectionController *)self autoFillContext];
        v120 = [(AFUITargetDetectionController *)self placeholderTextForResponder:v9];
        [v119 setObject:v120 forKey:v25];

        v82 = [(AFUITargetDetectionController *)self autoFillContext];
        v83 = self;
        v84 = v209;
        goto LABEL_77;
      }

      goto LABEL_114;
    }

    v141 = [(AFUITargetDetectionController *)self autoFillGroup];
    [v141 setObject:v20 forKey:v64];

    v142 = [(AFUITargetDetectionController *)self autoFillContext];
    v143 = [(AFUITargetDetectionController *)self placeholderTextForResponder:v20];
    [v142 setObject:v143 forKey:v64];

    v214 = v202;
    v144 = [(AFUITargetDetectionController *)self autoFillGroup];
    v70 = v207;
    [v144 setObject:v9 forKey:v207];

    v111 = [(AFUITargetDetectionController *)self autoFillContext];
    v112 = self;
    v113 = v9;
LABEL_139:
    v145 = [(AFUITargetDetectionController *)v112 placeholderTextForResponder:v113];
    [v111 setObject:v145 forKey:v70];

    v194 = 0;
    v191 = 1;
    goto LABEL_143;
  }

  if ((v26 - 1) <= 1)
  {
    if (v209)
    {
      if (![(AFUITargetDetectionController *)self doTraits:v205 matchTextContentType:v207])
      {
        if (v20 && [(AFUITargetDetectionController *)self doTraits:v202 matchTextContentType:v25])
        {
          v121 = [(AFUITargetDetectionController *)self autoFillGroup];
          [v121 setObject:v9 forKey:v207];

          v122 = [(AFUITargetDetectionController *)self autoFillGroup];
          [v122 setObject:v20 forKey:v25];

          v123 = [(AFUITargetDetectionController *)self autoFillContext];
          v124 = [(AFUITargetDetectionController *)self placeholderTextForResponder:v9];
          [v123 setObject:v124 forKey:v207];

          v125 = [(AFUITargetDetectionController *)self autoFillContext];
          v126 = [(AFUITargetDetectionController *)self placeholderTextForResponder:v20];
          [v125 setObject:v126 forKey:v25];

          if (v200 && [(AFUITargetDetectionController *)self doTraits:v201 matchTextContentType:v64])
          {
            v127 = [(AFUITargetDetectionController *)self autoFillGroup];
            [v127 setObject:v200 forKey:v64];

            v128 = [(AFUITargetDetectionController *)self autoFillContext];
            v129 = [(AFUITargetDetectionController *)self placeholderTextForResponder:v200];
            [v128 setObject:v129 forKey:v64];

            v214 = v201;
          }

          else
          {
            v214 = 0;
          }

          v194 = 0;
          v191 = 1;
          goto LABEL_142;
        }

        v191 = 0;
        goto LABEL_123;
      }

      v88 = [(AFUITargetDetectionController *)self autoFillGroup];
      [v88 setObject:v9 forKey:v25];

      v89 = [(AFUITargetDetectionController *)self autoFillContext];
      v90 = [(AFUITargetDetectionController *)self placeholderTextForResponder:v9];
      [v89 setObject:v90 forKey:v25];

      v91 = [(AFUITargetDetectionController *)self autoFillGroup];
      [v91 setObject:v209 forKey:v207];

      v92 = [(AFUITargetDetectionController *)self autoFillContext];
      v93 = [(AFUITargetDetectionController *)self placeholderTextForResponder:v209];
      [v92 setObject:v93 forKey:v207];
      v191 = 1;
    }

    else
    {
      v103 = [(AFUITargetDetectionController *)self autoFillGroup];
      [v103 setObject:v9 forKey:v25];

      v92 = [(AFUITargetDetectionController *)self autoFillContext];
      v93 = [(AFUITargetDetectionController *)self placeholderTextForResponder:v9];
      [v92 setObject:v93 forKey:v25];
      v191 = 0;
    }

    v65 = v209;
    v64 = v212;
LABEL_123:
    v130 = [(AFUITargetDetectionController *)self autoFillGroup];
    [v130 setObject:v9 forKey:v25];

    v131 = [(AFUITargetDetectionController *)self autoFillContext];
    v132 = [(AFUITargetDetectionController *)self placeholderTextForResponder:v9];
    [v131 setObject:v132 forKey:v25];

    if ([(AFUITargetDetectionController *)self doTraits:v202 matchTextContentType:v64])
    {
      v133 = [(AFUITargetDetectionController *)self autoFillGroup];
      [v133 setObject:v20 forKey:v64];

      v134 = [(AFUITargetDetectionController *)self autoFillContext];
      v135 = [(AFUITargetDetectionController *)self placeholderTextForResponder:v20];
      [v134 setObject:v135 forKey:v64];

      v136 = v202;
      if (v192 == 2)
      {
        v137 = v63;
      }

      else
      {
        v137 = 0;
      }

      v214 = v136;
      if (v137 == 1)
      {
        v194 = [(AFUITargetDetectionController *)self doTraits:v136 matchTextContentType:v64]== 2;
        goto LABEL_142;
      }

LABEL_141:
      v194 = 0;
      goto LABEL_142;
    }

    v73 = v64;
    if ([(AFUITargetDetectionController *)self doTraits:v205 matchTextContentType:v64])
    {
      v138 = [(AFUITargetDetectionController *)self autoFillGroup];
      [v138 setObject:v65 forKey:v64];

      v139 = [(AFUITargetDetectionController *)self autoFillContext];
      v140 = [(AFUITargetDetectionController *)self placeholderTextForResponder:v65];
      [v139 setObject:v140 forKey:v64];

      v214 = v205;
      v194 = 0;
      goto LABEL_131;
    }

    if (v20)
    {
      v64 = v212;
      if ([(AFUITargetDetectionController *)self doTraits:v202 matchTextContentType:v25])
      {
        v214 = 0;
      }

      else
      {
        v146 = [(AFUITargetDetectionController *)self autoFillGroup];
        [v146 setObject:v20 forKey:v212];

        v147 = [(AFUITargetDetectionController *)self autoFillContext];
        v148 = [(AFUITargetDetectionController *)self placeholderTextForResponder:v20];
        [v147 setObject:v148 forKey:v212];

        v214 = v202;
      }

      goto LABEL_141;
    }

    v214 = 0;
    v194 = 0;
    goto LABEL_80;
  }

  if (!v24)
  {
    v70 = v207;
    if (([v215 isSecureTextEntry] & 1) != 0 || !-[AFUITargetDetectionController doTraits:matchTextContentType:](self, "doTraits:matchTextContentType:", v205, v25))
    {
      v214 = 0;
    }

    else
    {
      v104 = [(AFUITargetDetectionController *)self autoFillGroup];
      [v104 setObject:v9 forKey:v64];

      v105 = [(AFUITargetDetectionController *)self autoFillContext];
      v106 = [(AFUITargetDetectionController *)self placeholderTextForResponder:v9];
      [v105 setObject:v106 forKey:v64];

      v214 = v215;
      v107 = [(AFUITargetDetectionController *)self autoFillGroup];
      [v107 setObject:v209 forKey:v25];

      v108 = [(AFUITargetDetectionController *)self autoFillContext];
      v109 = [(AFUITargetDetectionController *)self placeholderTextForResponder:v209];
      [v108 setObject:v109 forKey:v25];

      if ([(AFUITargetDetectionController *)self doTraits:v199 matchTextContentType:v207])
      {
        v110 = [(AFUITargetDetectionController *)self autoFillGroup];
        [v110 setObject:v198 forKey:v207];

        v111 = [(AFUITargetDetectionController *)self autoFillContext];
        v112 = self;
        v113 = v198;
        goto LABEL_139;
      }
    }

LABEL_116:
    v194 = 0;
    v191 = 0;
    goto LABEL_143;
  }

  v214 = 0;
  v194 = 0;
  v191 = 0;
LABEL_142:
  v70 = v207;
LABEL_143:
  v16 = [(AFUITargetDetectionController *)self contactAutoFillModeWithCurrentResponder:v9 currentTraits:v215 allResponders:v210 indexOfCurrent:v217];
  v208 = [(AFUITargetDetectionController *)self creditCardAutoFillModeWithCurrentResponder:v9 currentTraits:v215 allResponders:v210 indexOfCurrent:v217];
  v190 = [(AFUITargetDetectionController *)self cellularAutoFillModeWithCurrentResponder:v9 currentTraits:v215 allResponders:v210 indexOfCurrent:v217];
  v149 = [(AFUITargetDetectionController *)self autoFillGroup];
  v189 = [v149 objectForKey:v35];

  v150 = [(AFUITargetDetectionController *)self autoFillGroup];
  v151 = [v150 objectForKey:v64];

  v152 = [(AFUITargetDetectionController *)self autoFillGroup];
  v153 = [v152 objectForKey:v25];

  v154 = [(AFUITargetDetectionController *)self autoFillGroup];
  v155 = [v154 objectForKey:v70];

  if (v151)
  {
    v156 = [(objc_class *)+[AFUIAdapter runtimeClass](AFUIAdapter textFromResponder:"textFromResponder:", v151];
    v157 = [v156 length] != 0;
  }

  else
  {
    v157 = 0;
  }

  if (v153)
  {
    v158 = [(objc_class *)+[AFUIAdapter runtimeClass](AFUIAdapter textFromResponder:"textFromResponder:", v153];
    v159 = [v158 length] != 0;

    if (v155)
    {
      goto LABEL_148;
    }
  }

  else
  {
    v159 = 0;
    if (v155)
    {
LABEL_148:
      v160 = [(objc_class *)+[AFUIAdapter runtimeClass](AFUIAdapter textFromResponder:"textFromResponder:", v155];
      v161 = [v160 length] != 0;

      if (!v214)
      {
        goto LABEL_156;
      }

      goto LABEL_152;
    }
  }

  v161 = 0;
  if (!v214)
  {
    goto LABEL_156;
  }

LABEL_152:
  v162 = [v214 keyboardType];
  if (v162 > 0xD || ((1 << v162) & 0x2930) == 0)
  {
LABEL_156:
    v163 = v151 != 0;
    if (v151)
    {
      v164 = v151;
    }

    else
    {
      v164 = 0;
    }

    if (v151)
    {
      v165 = (v153 | v155) != 0;
    }

    else
    {
      v165 = 0;
    }

    goto LABEL_162;
  }

  if (v151 != v206)
  {
    v194 = 1;
    goto LABEL_156;
  }

  v182 = [(AFUITargetDetectionController *)self autoFillGroup];
  [v182 removeObjectForKey:v212];

  v183 = [(AFUITargetDetectionController *)self autoFillGroup];
  [v183 removeObjectForKey:v195];

  v184 = [(AFUITargetDetectionController *)self autoFillContext];
  [v184 removeObjectForKey:v212];

  v185 = [(AFUITargetDetectionController *)self autoFillContext];
  [v185 removeObjectForKey:v195];

  v163 = 0;
  v153 = 0;
  v164 = 0;
  v165 = 0;
  v194 = 1;
  if (v157 && (v159 || v161))
  {
    goto LABEL_171;
  }

LABEL_162:
  v166 = v153 != 0;
  v167 = v192 == 1 && v153 != 0;
  if (v192 != 2)
  {
    v166 = 0;
  }

  if (v165 || v163 && v193 == 2 || v166 || v167)
  {
    v168 = v155;
    v181 = !v194 && [(AFUITargetDetectionController *)self signupHintForUsername:v164 password:v153 responder:v210];
    v6 = v196;
    v174 = v200;
    v186 = v165 && (v191 || v181 || v168 != 0);
    v179 = v214;
    if (v186 == 1)
    {
      if (self->_didOptOutOfAutoFillSignup)
      {
        v173 = 0;
        v16 = 4;
      }

      else
      {
        v173 = 0;
        v187 = v164 == v216 || v164 == v206;
        if (v187)
        {
          v16 = 3;
        }

        else
        {
          v16 = 2;
        }
      }
    }

    else
    {
      v173 = 0;
      v16 = 1;
    }
  }

  else
  {
LABEL_171:
    if (v16)
    {
      v168 = v155;
      v169 = [(AFUITargetDetectionController *)self autoFillGroup];
      [v169 removeObjectForKey:v212];

      v170 = [(AFUITargetDetectionController *)self autoFillGroup];
      [v170 removeObjectForKey:v211];

      v171 = [(AFUITargetDetectionController *)self autoFillContext];
      [v171 removeObjectForKey:v212];

      v172 = [(AFUITargetDetectionController *)self autoFillContext];
      [v172 removeObjectForKey:v211];

      v173 = 0;
      v6 = v196;
      v174 = v200;
LABEL_176:
      v179 = v214;
      goto LABEL_177;
    }

    v174 = v200;
    v16 = v208;
    if (v208 || (v16 = v190) != 0)
    {
      v168 = v155;
      v175 = [(AFUITargetDetectionController *)self autoFillGroup];
      [v175 removeObjectForKey:v212];

      v176 = [(AFUITargetDetectionController *)self autoFillGroup];
      [v176 removeObjectForKey:v211];

      v177 = [(AFUITargetDetectionController *)self autoFillContext];
      [v177 removeObjectForKey:v212];

      v178 = [(AFUITargetDetectionController *)self autoFillContext];
      [v178 removeObjectForKey:v211];

      v173 = 0;
      v6 = v196;
      goto LABEL_176;
    }

    v168 = v155;
    v173 = v189 == 0;
    if (v189)
    {
      v188 = 1;
    }

    else
    {
      v188 = v197;
    }

    v179 = v214;
    if (v188)
    {
      v16 = 8;
    }

    else
    {
      [(AFUITargetDetectionController *)self clearAutoFillGroup];
      v173 = 1;
    }

    v6 = v196;
  }

LABEL_177:

  if (v173)
  {
LABEL_178:
    v16 = 0;
  }

LABEL_179:

  return v16;
}

- (BOOL)_detectionDisabledForResponder:(id)a3
{
  v3 = a3;
  if (_detectionDisabledForResponder__onceToken != -1)
  {
    [AFUITargetDetectionController _detectionDisabledForResponder:];
  }

  v4 = _detectionDisabledForResponder___disabledBundleIdentifiers;
  v5 = [MEMORY[0x1E696AAE8] mainBundle];
  v6 = [v5 bundleIdentifier];
  LOBYTE(v4) = [v4 containsObject:v6];

  if (v4)
  {
    goto LABEL_6;
  }

  if (!objc_opt_class())
  {
    goto LABEL_7;
  }

  v7 = _detectionDisabledForResponder___disabledBundleIdentifiers;
  v8 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
  v9 = [v8 bundleIdentifier];
  LOBYTE(v7) = [v7 containsObject:v9];

  if (v7)
  {
LABEL_6:
    v10 = 1;
  }

  else
  {
LABEL_7:
    v10 = 0;
  }

  return v10;
}

uint64_t __64__AFUITargetDetectionController__detectionDisabledForResponder___block_invoke()
{
  _detectionDisabledForResponder___disabledBundleIdentifiers = [MEMORY[0x1E695DFD8] setWithArray:&unk_1F4EA2350];

  return MEMORY[0x1EEE66BB8]();
}

- (BOOL)_detectionEnabledForResponder:(id)a3
{
  v3 = a3;
  if (_detectionEnabledForResponder__onceToken != -1)
  {
    [AFUITargetDetectionController _detectionEnabledForResponder:];
  }

  if (_detectionEnabledForResponder___enabled)
  {
    v4 = 1;
  }

  else if (_os_feature_enabled_impl())
  {
    v4 = _os_feature_enabled_impl();
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

void __63__AFUITargetDetectionController__detectionEnabledForResponder___block_invoke()
{
  v1 = [MEMORY[0x1E696AAE8] mainBundle];
  v0 = [v1 bundleIdentifier];
  _detectionEnabledForResponder___enabled = [v0 hasPrefix:@"com.apple.quicklook"];
}

- (unint64_t)autoFillModeForResponder:(id)a3
{
  v4 = a3;
  if ([(AFUITargetDetectionController *)self _detectionDisabledForResponder:v4])
  {
    v5 = 0;
  }

  else
  {
    v6 = [(objc_class *)+[AFUIAdapter runtimeClass](AFUIAdapter firstResponderForInput];
    v5 = [(AFUITargetDetectionController *)self _needAutoFillCandidate:v4 delegateAsResponder:v6];
  }

  return v5;
}

- (void)enumeratePasswordFieldsUsingBlock:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v9 = v4;
    v5 = [(AFUITargetDetectionController *)self autoFillGroup];
    v6 = [v5 objectForKey:*MEMORY[0x1E698E148]];

    _AFUITextFieldClass();
    if (objc_opt_isKindOfClass())
    {
      v9[2](v9, v6);
    }

    v7 = [(AFUITargetDetectionController *)self autoFillGroup];
    v8 = [v7 objectForKey:*MEMORY[0x1E698E120]];

    _AFUITextFieldClass();
    if (objc_opt_isKindOfClass())
    {
      v9[2](v9, v8);
    }

    v4 = v9;
  }
}

- (void)addTemporaryTextColorToTextField:(id)a3
{
  v3 = a3;
  [(objc_class *)+[AFUIAdapter runtimeClass](AFUIAdapter addTemporaryTextColorToTextField:"addTemporaryTextColorToTextField:", v3];
}

- (void)removeTemporaryTextColorFromTextField:(id)a3
{
  v3 = a3;
  [(objc_class *)+[AFUIAdapter runtimeClass](AFUIAdapter removeTemporaryTextColorFromTextField:"removeTemporaryTextColorFromTextField:", v3];
}

uint64_t __94__AFUITargetDetectionController_saveAutoFillCredentialIfNeeded_passwordIsAutoGenerated_block___block_invoke(uint64_t result, int a2)
{
  if (a2)
  {
    return (*(*(result + 40) + 16))(*(result + 40), *(result + 32));
  }

  return result;
}

uint64_t __123__AFUITargetDetectionController_saveWebviewCredentialsForResponder_WebsiteURL_user_password_passwordIsAutoGenerated_block___block_invoke(uint64_t result, int a2)
{
  if (a2)
  {
    return (*(*(result + 40) + 16))(*(result + 40), *(result + 32));
  }

  return result;
}

- (BOOL)shouldLoadASPForResponder:(id)a3
{
  v4 = a3;
  v5 = [(AFUITargetDetectionController *)self autoFillGroup];
  v6 = [v5 objectForKey:*MEMORY[0x1E698E1A8]];

  v7 = [(AFUITargetDetectionController *)self autoFillGroup];
  v8 = [v7 objectForKey:*MEMORY[0x1E698E148]];
  if (v8 == v4)
  {
    v11 = 1;
  }

  else
  {
    v9 = [(AFUITargetDetectionController *)self autoFillGroup];
    v10 = [v9 objectForKey:*MEMORY[0x1E698E120]];
    v11 = v10 == v4;
  }

  return v6 != 0 && v11;
}

@end