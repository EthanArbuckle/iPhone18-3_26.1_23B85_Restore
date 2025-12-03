@interface AFUITargetDetectionController
- (AFUITargetDetectionController)init;
- (BOOL)_detectionDisabledForResponder:(id)responder;
- (BOOL)_detectionEnabledForResponder:(id)responder;
- (BOOL)containsUsernamePasswordPairsInAutoFillGroup:(id)group;
- (BOOL)shouldLoadASPForResponder:(id)responder;
- (BOOL)shouldPreferFallbackAutoFillGroup;
- (BOOL)signupHintForUsername:(id)username password:(id)password responder:(id)responder;
- (id)accessibilityLoginKeywordList;
- (id)accessibilitySignupKeywordList;
- (id)addressKeywordSet;
- (id)autoFillContextForResponder:(id)responder;
- (id)contactAutoFillKeywordsForKey:(id)key value:(id)value localizedKeywords:(id)keywords;
- (id)emailKeywordSet;
- (id)loginKeywordList;
- (id)phoneKeywordSet;
- (id)placeholderTextForResponder:(id)responder;
- (id)searchKeywordSet;
- (id)signupKeywordList;
- (id)textContentTypeForResponder:(id)responder;
- (id)textContentTypeForResponder:(id)responder traits:(id)traits contentTypesFound:(id)found;
- (int64_t)doTraits:(id)traits matchTextContentType:(id)type;
- (unint64_t)_needAutoFillCandidate:(id)candidate delegateAsResponder:(id)responder;
- (unint64_t)autoFillModeForResponder:(id)responder;
- (unint64_t)cellularAutoFillModeWithCurrentResponder:(id)responder currentTraits:(id)traits allResponders:(id)responders indexOfCurrent:(int64_t)current;
- (unint64_t)contactAutoFillModeWithCurrentResponder:(id)responder currentTraits:(id)traits allResponders:(id)responders indexOfCurrent:(int64_t)current;
- (unint64_t)containsIndicationInText:(id)text withAccessibilityHints:(BOOL)hints;
- (unint64_t)creditCardAutoFillModeWithCurrentResponder:(id)responder currentTraits:(id)traits allResponders:(id)responders indexOfCurrent:(int64_t)current;
- (unint64_t)signUpSignalFromButton:(id)button;
- (unint64_t)signUpSignalFromViewControllerHierarchy:(id)hierarchy;
- (void)_clearASPInTextField:(id)field;
- (void)addTemporaryTextColorToTextField:(id)field;
- (void)clearASPInPasswordFields;
- (void)clearASPVisualEffectsInTextField:(id)field;
- (void)clearAutoFillGroup;
- (void)enumeratePasswordFieldsUsingBlock:(id)block;
- (void)optOutASPInPasswordFields;
- (void)removeTemporaryTextColorFromTextField:(id)field;
- (void)showASPInTextField:(id)field isRightToLeft:(BOOL)left;
- (void)updateAutofillContextForResponder:(id)responder;
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
  autoFillGroup = [(AFUITargetDetectionController *)self autoFillGroup];
  [autoFillGroup removeAllObjects];

  autoFillContext = [(AFUITargetDetectionController *)self autoFillContext];
  [autoFillContext removeAllObjects];

  self->_didOptOutOfAutoFillSignup = 0;
}

- (id)textContentTypeForResponder:(id)responder
{
  responderCopy = responder;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy__0;
  v16 = __Block_byref_object_dispose__0;
  v17 = 0;
  autoFillGroup = [(AFUITargetDetectionController *)self autoFillGroup];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __61__AFUITargetDetectionController_textContentTypeForResponder___block_invoke;
  v9[3] = &unk_1E8424788;
  v6 = responderCopy;
  v10 = v6;
  v11 = &v12;
  [autoFillGroup enumerateKeysAndObjectsUsingBlock:v9];

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

- (id)autoFillContextForResponder:(id)responder
{
  responderCopy = responder;
  v5 = [(NSMutableDictionary *)self->_autoFillContext mutableCopy];
  [v5 setObject:&unk_1F4EA2368 forKey:@"_WKAutofillContextVersion"];
  if (objc_opt_respondsToSelector())
  {
    _autofillContext = [responderCopy _autofillContext];
    if (_autofillContext)
    {
      [v5 addEntriesFromDictionary:_autofillContext];
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

- (int64_t)doTraits:(id)traits matchTextContentType:(id)type
{
  traitsCopy = traits;
  typeCopy = type;
  v7 = typeCopy;
  if (!traitsCopy)
  {
    goto LABEL_29;
  }

  if ([typeCopy isEqualToString:*MEMORY[0x1E698E1A8]])
  {
    textContentType = [traitsCopy textContentType];
    v9 = [textContentType isEqualToString:v7];

    if ((v9 & 1) == 0)
    {
      if ([traitsCopy keyboardType] && objc_msgSend(traitsCopy, "keyboardType") != 7 && objc_msgSend(traitsCopy, "keyboardType") != 1)
      {
        goto LABEL_29;
      }

      textContentType2 = [traitsCopy textContentType];
      if (textContentType2 != *MEMORY[0x1E698E148] && [traitsCopy autocorrectionType] == 1)
      {
        isSecureTextEntry = [traitsCopy isSecureTextEntry];

        if ((isSecureTextEntry & 1) == 0)
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
      textContentType3 = [traitsCopy textContentType];
      v17 = [textContentType3 isEqualToString:v7];

      if ((v17 & 1) == 0)
      {
        if (![traitsCopy keyboardType])
        {
          goto LABEL_36;
        }

        if ([traitsCopy isSecureTextEntry])
        {
          goto LABEL_36;
        }

        v22 = [traitsCopy keyboardType] - 4;
        if (v22 < 0xA && ((0x293u >> v22) & 1) != 0)
        {
          goto LABEL_36;
        }

        if ([traitsCopy keyboardType] == 1)
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
        textContentType4 = [traitsCopy textContentType];
        v19 = [textContentType4 isEqualToString:v7];

        if ((v19 & 1) == 0)
        {
          if ([traitsCopy isSecureTextEntry])
          {
LABEL_29:
            v15 = 0;
            goto LABEL_30;
          }

          textContentType2 = [traitsCopy textContentType];
          if (!textContentType2 && [traitsCopy autocorrectionType] == 1)
          {
            keyboardType = [traitsCopy keyboardType];
            if (keyboardType > 0xD || ((1 << keyboardType) & 0x2930) == 0)
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

        textContentType5 = [traitsCopy textContentType];
        v24 = [textContentType5 isEqualToString:v7];

        if ((v24 & 1) == 0)
        {
          goto LABEL_29;
        }
      }

      goto LABEL_19;
    }
  }

  textContentType6 = [traitsCopy textContentType];
  v13 = [textContentType6 isEqualToString:v7];

  if (v13)
  {
LABEL_19:
    v15 = 2;
    goto LABEL_30;
  }

  if (![traitsCopy isSecureTextEntry] || (objc_msgSend(traitsCopy, "displaySecureTextUsingPlainText") & 1) != 0)
  {
    goto LABEL_29;
  }

  v14 = [traitsCopy keyboardType] - 4;
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

- (id)contactAutoFillKeywordsForKey:(id)key value:(id)value localizedKeywords:(id)keywords
{
  valueCopy = value;
  keyCopy = key;
  v9 = [keywords componentsSeparatedByString:@"|"];
  v10 = [MEMORY[0x1E696AAE8] bundleForClass:_AFUIApplicationClass()];
  _preferredEnglishLocalizationBundle = [v10 _preferredEnglishLocalizationBundle];

  v12 = [_preferredEnglishLocalizationBundle localizedStringForKey:keyCopy value:valueCopy table:@"Localizable"];

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

- (BOOL)containsUsernamePasswordPairsInAutoFillGroup:(id)group
{
  groupCopy = group;
  v4 = groupCopy;
  if (groupCopy)
  {
    v5 = [groupCopy objectForKey:*MEMORY[0x1E698E1A8]];
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
  fallbackAutoFillGroup = [(AFUITargetDetectionController *)self fallbackAutoFillGroup];
  if (fallbackAutoFillGroup)
  {
    v4 = fallbackAutoFillGroup;
    fallbackAutoFillGroup2 = [(AFUITargetDetectionController *)self fallbackAutoFillGroup];
    v6 = [fallbackAutoFillGroup2 count];

    if (v6)
    {
      autoFillGroup = [(AFUITargetDetectionController *)self autoFillGroup];
      v8 = ![(AFUITargetDetectionController *)self containsUsernamePasswordPairsInAutoFillGroup:autoFillGroup];

      fallbackAutoFillGroup3 = [(AFUITargetDetectionController *)self fallbackAutoFillGroup];
      v10 = [(AFUITargetDetectionController *)self containsUsernamePasswordPairsInAutoFillGroup:fallbackAutoFillGroup3];

      LOBYTE(fallbackAutoFillGroup) = v8 & v10;
    }

    else
    {
      LOBYTE(fallbackAutoFillGroup) = 0;
    }
  }

  return fallbackAutoFillGroup;
}

- (void)showASPInTextField:(id)field isRightToLeft:(BOOL)left
{
  v31[1] = *MEMORY[0x1E69E9840];
  fieldCopy = field;
  [(objc_class *)+[AFUIAdapter runtimeClass](AFUIAdapter areaForASPFromTextField:"areaForASPFromTextField:", fieldCopy];
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v15 = left || [(objc_class *)+[AFUIAdapter runtimeClass](AFUIAdapter alignmentFromTextField:"alignmentFromTextField:", fieldCopy]== 2;
  v30 = *MEMORY[0x1E69DB648];
  font = [fieldCopy font];
  v31[0] = font;
  v17 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v31 forKeys:&v30 count:1];

  fieldCopy = [(objc_class *)+[AFUIAdapter runtimeClass](AFUIAdapter textFromResponder:"textFromResponder:", fieldCopy];
  [fieldCopy sizeWithAttributes:v17];
  v20 = v19;

  v21 = [AFUIASPCoverView coverForeground:1 withFrame:v15 isRightToLeft:v8 withTextWidth:v10, v12, v14, v20];
  [fieldCopy frame];
  v22 = [AFUIASPCoverView coverForeground:"coverForeground:withFrame:isRightToLeft:withTextWidth:" withFrame:0 isRightToLeft:v15 withTextWidth:?];
  autoFillGroup = [(AFUITargetDetectionController *)self autoFillGroup];
  v24 = [autoFillGroup objectForKey:@"AFUIAutoFillASPOptInKey"];
  bOOLValue = [v24 BOOLValue];

  if ((bOOLValue & 1) == 0)
  {
    backgroundColor = [fieldCopy backgroundColor];
    textFieldOriginalColor = self->_textFieldOriginalColor;
    self->_textFieldOriginalColor = backgroundColor;

    autoFillGroup2 = [(AFUITargetDetectionController *)self autoFillGroup];
    [autoFillGroup2 setObject:MEMORY[0x1E695E118] forKey:@"AFUIAutoFillASPOptInKey"];
  }

  [(objc_class *)+[AFUIAdapter runtimeClass](AFUIAdapter configureField:"configureField:withASPForegroundView:withASPBackgroundView:" withASPForegroundView:fieldCopy withASPBackgroundView:v21, v22];

  v29 = *MEMORY[0x1E69E9840];
}

- (void)clearASPVisualEffectsInTextField:(id)field
{
  fieldCopy = field;
  [(objc_class *)+[AFUIAdapter runtimeClass](AFUIAdapter configureField:"configureField:withASPForegroundView:withASPBackgroundView:" withASPForegroundView:fieldCopy withASPBackgroundView:0, 0];
}

- (void)_clearASPInTextField:(id)field
{
  fieldCopy = field;
  autoFillGroup = [(AFUITargetDetectionController *)self autoFillGroup];
  [autoFillGroup removeObjectForKey:@"AFUIAutoFillASPOptInKey"];

  [(AFUITargetDetectionController *)self removeTemporaryTextColorFromTextField:fieldCopy];
  [(AFUITargetDetectionController *)self clearASPVisualEffectsInTextField:fieldCopy];
  [(objc_class *)+[AFUIAdapter runtimeClass](AFUIAdapter setText:"setText:forResponder:" forResponder:&stru_1F4E9A028, fieldCopy];
}

- (void)clearASPInPasswordFields
{
  autoFillGroup = [(AFUITargetDetectionController *)self autoFillGroup];
  v6 = [autoFillGroup objectForKey:*MEMORY[0x1E698E148]];

  _AFUITextFieldClass();
  if (objc_opt_isKindOfClass())
  {
    [(AFUITargetDetectionController *)self _clearASPInTextField:v6];
  }

  autoFillGroup2 = [(AFUITargetDetectionController *)self autoFillGroup];
  v5 = [autoFillGroup2 objectForKey:*MEMORY[0x1E698E120]];

  _AFUITextFieldClass();
  if (objc_opt_isKindOfClass())
  {
    [(AFUITargetDetectionController *)self _clearASPInTextField:v5];
  }
}

- (void)optOutASPInPasswordFields
{
  [(AFUITargetDetectionController *)self clearASPInPasswordFields];
  autoFillGroup = [(AFUITargetDetectionController *)self autoFillGroup];
  [autoFillGroup setObject:MEMORY[0x1E695E110] forKey:@"AFUIAutoFillASPOptInKey"];
}

- (id)textContentTypeForResponder:(id)responder traits:(id)traits contentTypesFound:(id)found
{
  responderCopy = responder;
  traitsCopy = traits;
  foundCopy = found;
  textContentType = [traitsCopy textContentType];
  if (!textContentType)
  {
    responderCopy = [(objc_class *)+[AFUIAdapter runtimeClass](AFUIAdapter textSignalsForResponder:"textSignalsForResponder:", responderCopy];
    v13 = *MEMORY[0x1E698E0D0];
    if (([foundCopy containsObject:*MEMORY[0x1E698E0D0]] & 1) == 0 && ((v16 = objc_msgSend(traitsCopy, "keyboardType"), v16 == 7) || __86__AFUITargetDetectionController_textContentTypeForResponder_traits_contentTypesFound___block_invoke_2(v16, responderCopy)) || (v13 = *MEMORY[0x1E698E198], (objc_msgSend(foundCopy, "containsObject:", *MEMORY[0x1E698E198]) & 1) == 0) && (v14 = objc_msgSend(traitsCopy, "keyboardType"), v14 != 3) && __86__AFUITargetDetectionController_textContentTypeForResponder_traits_contentTypesFound___block_invoke(v14, responderCopy))
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
        allObjects = [responderCopy allObjects];
        textContentType = [v18 heuristicTextContentTypeForHints:allObjects textContentTypesToSkip:foundCopy];

LABEL_18:
        goto LABEL_19;
      }

      searchKeywordSet = [(AFUITargetDetectionController *)self searchKeywordSet];
      if (AFUITextSignalsFoundInKeywordsList(responderCopy, searchKeywordSet))
      {
      }

      else
      {
        returnKeyType = [traitsCopy returnKeyType];

        if (returnKeyType != 6)
        {
          textContentType = 0;
          goto LABEL_18;
        }
      }

      v17 = *MEMORY[0x1E698E0E0];
    }

    textContentType = v17;
    goto LABEL_18;
  }

LABEL_19:

  return textContentType;
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

- (id)placeholderTextForResponder:(id)responder
{
  responderCopy = responder;
  responderCopy = [(objc_class *)+[AFUIAdapter runtimeClass](AFUIAdapter placeholderTextForResponder:"placeholderTextForResponder:", responderCopy];

  if (responderCopy)
  {
    v5 = responderCopy;
  }

  else
  {
    v5 = &stru_1F4E9A028;
  }

  v6 = v5;

  return v5;
}

- (unint64_t)contactAutoFillModeWithCurrentResponder:(id)responder currentTraits:(id)traits allResponders:(id)responders indexOfCurrent:(int64_t)current
{
  responderCopy = responder;
  traitsCopy = traits;
  respondersCopy = responders;
  v13 = [(AFUITargetDetectionController *)self textContentTypeForResponder:responderCopy traits:traitsCopy contentTypesFound:0];
  v14 = 0;
  if (AFTextContentTypeIsInContactSet(v13))
  {
    v42 = traitsCopy;
    autoFillGroup = [(AFUITargetDetectionController *)self autoFillGroup];
    [autoFillGroup setObject:responderCopy forKey:v13];

    autoFillContext = [(AFUITargetDetectionController *)self autoFillContext];
    v43 = responderCopy;
    v17 = [(AFUITargetDetectionController *)self placeholderTextForResponder:responderCopy];
    [autoFillContext setObject:v17 forKey:v13];

    v41 = v13;
    v18 = [MEMORY[0x1E695DFA8] setWithObject:v13];
    v19 = [respondersCopy count];
    currentCopy = current;
    v20 = current + 1;
    v44 = respondersCopy;
    if (v20 < v19)
    {
      while (1)
      {
        v21 = [respondersCopy objectAtIndex:v20];
        v22 = [AFUIInputTraits traitsByAdoptingTraits:v21];
        v23 = [(AFUITargetDetectionController *)self textContentTypeForResponder:v21 traits:v22 contentTypesFound:v18];
        if ((AFTextContentTypeIsInContactSet(v23) & 1) == 0)
        {
          break;
        }

        autoFillGroup2 = [(AFUITargetDetectionController *)self autoFillGroup];
        [autoFillGroup2 setObject:v21 forKey:v23];

        autoFillContext2 = [(AFUITargetDetectionController *)self autoFillContext];
        v26 = [(AFUITargetDetectionController *)self placeholderTextForResponder:v21];
        [autoFillContext2 setObject:v26 forKey:v23];

        respondersCopy = v44;
        [v18 addObject:v23];

        if (++v20 >= v19)
        {
          goto LABEL_7;
        }
      }
    }

LABEL_7:
    if (currentCopy >= 1 && currentCopy - 1 < v19)
    {
      v27 = currentCopy - 2;
      while (1)
      {
        v28 = [respondersCopy objectAtIndex:v27 + 1];
        v29 = [AFUIInputTraits traitsByAdoptingTraits:v28];
        v30 = [(AFUITargetDetectionController *)self textContentTypeForResponder:v28 traits:v29 contentTypesFound:v18];
        if ((AFTextContentTypeIsInContactSet(v30) & 1) == 0)
        {
          break;
        }

        autoFillGroup3 = [(AFUITargetDetectionController *)self autoFillGroup];
        [autoFillGroup3 setObject:v28 forKey:v30];

        autoFillContext3 = [(AFUITargetDetectionController *)self autoFillContext];
        v33 = [(AFUITargetDetectionController *)self placeholderTextForResponder:v28];
        [autoFillContext3 setObject:v33 forKey:v30];

        [v18 addObject:v30];
        respondersCopy = v44;
        if ((v27 + 1) >= 1 && v27-- < v19)
        {
          continue;
        }

        goto LABEL_16;
      }

      respondersCopy = v44;
    }

LABEL_16:
    v13 = v41;
    traitsCopy = v42;
    if (-[AFUITargetDetectionController doTraits:matchTextContentType:](self, "doTraits:matchTextContentType:", v42, v41) == 2 || [v18 count] != 1)
    {
      responderCopy = v43;
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
      autoFillGroup4 = [(AFUITargetDetectionController *)self autoFillGroup];
      anyObject = [v18 anyObject];
      [autoFillGroup4 removeObjectForKey:anyObject];

      autoFillContext4 = [(AFUITargetDetectionController *)self autoFillContext];
      anyObject2 = [v18 anyObject];
      [autoFillContext4 removeObjectForKey:anyObject2];

      v14 = 0;
      responderCopy = v43;
    }
  }

  return v14;
}

- (unint64_t)creditCardAutoFillModeWithCurrentResponder:(id)responder currentTraits:(id)traits allResponders:(id)responders indexOfCurrent:(int64_t)current
{
  responderCopy = responder;
  traitsCopy = traits;
  respondersCopy = responders;
  if ([(AFUITargetDetectionController *)self _detectionEnabledForResponder:responderCopy])
  {
    v12 = [(AFUITargetDetectionController *)self textContentTypeForResponder:responderCopy traits:traitsCopy contentTypesFound:0];
    v13 = 0;
    if (AFTextContentTypeIsInCreditCardSet(v12))
    {
      v41 = traitsCopy;
      autoFillGroup = [(AFUITargetDetectionController *)self autoFillGroup];
      [autoFillGroup setObject:responderCopy forKey:v12];

      autoFillContext = [(AFUITargetDetectionController *)self autoFillContext];
      v42 = responderCopy;
      v16 = [(AFUITargetDetectionController *)self placeholderTextForResponder:responderCopy];
      [autoFillContext setObject:v16 forKey:v12];

      v40 = v12;
      v17 = [MEMORY[0x1E695DFA8] setWithObject:v12];
      v18 = [respondersCopy count];
      currentCopy = current;
      v19 = current + 1;
      if (current + 1 < v18)
      {
        while (1)
        {
          v20 = [respondersCopy objectAtIndex:v19];
          v21 = [AFUIInputTraits traitsByAdoptingTraits:v20];
          v22 = [(AFUITargetDetectionController *)self textContentTypeForResponder:v20 traits:v21 contentTypesFound:v17];
          if ((AFTextContentTypeIsInCreditCardSet(v22) & 1) == 0)
          {
            break;
          }

          autoFillGroup2 = [(AFUITargetDetectionController *)self autoFillGroup];
          [autoFillGroup2 setObject:v20 forKey:v22];

          autoFillContext2 = [(AFUITargetDetectionController *)self autoFillContext];
          v25 = [(AFUITargetDetectionController *)self placeholderTextForResponder:v20];
          [autoFillContext2 setObject:v25 forKey:v22];

          [v17 addObject:v22];
          if (++v19 >= v18)
          {
            goto LABEL_9;
          }
        }
      }

LABEL_9:
      if (currentCopy >= 1 && currentCopy - 1 < v18)
      {
        v26 = currentCopy - 2;
        while (1)
        {
          v27 = [respondersCopy objectAtIndex:v26 + 1];
          v28 = [AFUIInputTraits traitsByAdoptingTraits:v27];
          v29 = [(AFUITargetDetectionController *)self textContentTypeForResponder:v27 traits:v28 contentTypesFound:v17];
          if ((AFTextContentTypeIsInCreditCardSet(v29) & 1) == 0)
          {
            break;
          }

          autoFillGroup3 = [(AFUITargetDetectionController *)self autoFillGroup];
          [autoFillGroup3 setObject:v27 forKey:v29];

          autoFillContext3 = [(AFUITargetDetectionController *)self autoFillContext];
          v32 = [(AFUITargetDetectionController *)self placeholderTextForResponder:v27];
          [autoFillContext3 setObject:v32 forKey:v29];

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
      traitsCopy = v41;
      if (-[AFUITargetDetectionController doTraits:matchTextContentType:](self, "doTraits:matchTextContentType:", v41, v40) == 2 || [v17 count] != 1)
      {
        v13 = 9;
      }

      else
      {
        autoFillGroup4 = [(AFUITargetDetectionController *)self autoFillGroup];
        anyObject = [v17 anyObject];
        [autoFillGroup4 removeObjectForKey:anyObject];

        autoFillContext4 = [(AFUITargetDetectionController *)self autoFillContext];
        anyObject2 = [v17 anyObject];
        [autoFillContext4 removeObjectForKey:anyObject2];

        v13 = 0;
      }

      responderCopy = v42;
    }
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

- (unint64_t)cellularAutoFillModeWithCurrentResponder:(id)responder currentTraits:(id)traits allResponders:(id)responders indexOfCurrent:(int64_t)current
{
  responderCopy = responder;
  traitsCopy = traits;
  respondersCopy = responders;
  v13 = [(AFUITargetDetectionController *)self textContentTypeForResponder:responderCopy traits:traitsCopy contentTypesFound:0];
  v14 = 0;
  if (AFTextContentTypeIsInCellularSet(v13))
  {
    v42 = traitsCopy;
    autoFillGroup = [(AFUITargetDetectionController *)self autoFillGroup];
    [autoFillGroup setObject:responderCopy forKey:v13];

    autoFillContext = [(AFUITargetDetectionController *)self autoFillContext];
    v43 = responderCopy;
    v17 = [(AFUITargetDetectionController *)self placeholderTextForResponder:responderCopy];
    [autoFillContext setObject:v17 forKey:v13];

    v41 = v13;
    v18 = [MEMORY[0x1E695DFA8] setWithObject:v13];
    v19 = [respondersCopy count];
    currentCopy = current;
    v20 = current + 1;
    v44 = respondersCopy;
    if (v20 < v19)
    {
      while (1)
      {
        v21 = [respondersCopy objectAtIndex:v20];
        v22 = [AFUIInputTraits traitsByAdoptingTraits:v21];
        v23 = [(AFUITargetDetectionController *)self textContentTypeForResponder:v21 traits:v22 contentTypesFound:v18];
        if ((AFTextContentTypeIsInCellularSet(v23) & 1) == 0)
        {
          break;
        }

        autoFillGroup2 = [(AFUITargetDetectionController *)self autoFillGroup];
        [autoFillGroup2 setObject:v21 forKey:v23];

        autoFillContext2 = [(AFUITargetDetectionController *)self autoFillContext];
        v26 = [(AFUITargetDetectionController *)self placeholderTextForResponder:v21];
        [autoFillContext2 setObject:v26 forKey:v23];

        respondersCopy = v44;
        [v18 addObject:v23];

        if (++v20 >= v19)
        {
          goto LABEL_7;
        }
      }
    }

LABEL_7:
    if (currentCopy >= 1 && currentCopy - 1 < v19)
    {
      v27 = currentCopy - 2;
      while (1)
      {
        v28 = [respondersCopy objectAtIndex:v27 + 1];
        v29 = [AFUIInputTraits traitsByAdoptingTraits:v28];
        v30 = [(AFUITargetDetectionController *)self textContentTypeForResponder:v28 traits:v29 contentTypesFound:v18];
        if ((AFTextContentTypeIsInCellularSet(v30) & 1) == 0)
        {
          break;
        }

        autoFillGroup3 = [(AFUITargetDetectionController *)self autoFillGroup];
        [autoFillGroup3 setObject:v28 forKey:v30];

        autoFillContext3 = [(AFUITargetDetectionController *)self autoFillContext];
        v33 = [(AFUITargetDetectionController *)self placeholderTextForResponder:v28];
        [autoFillContext3 setObject:v33 forKey:v30];

        [v18 addObject:v30];
        respondersCopy = v44;
        if ((v27 + 1) >= 1 && v27-- < v19)
        {
          continue;
        }

        goto LABEL_16;
      }

      respondersCopy = v44;
    }

LABEL_16:
    v13 = v41;
    traitsCopy = v42;
    if (-[AFUITargetDetectionController doTraits:matchTextContentType:](self, "doTraits:matchTextContentType:", v42, v41) == 2 || [v18 count] != 1)
    {
      v14 = 10;
    }

    else
    {
      autoFillGroup4 = [(AFUITargetDetectionController *)self autoFillGroup];
      anyObject = [v18 anyObject];
      [autoFillGroup4 removeObjectForKey:anyObject];

      autoFillContext4 = [(AFUITargetDetectionController *)self autoFillContext];
      anyObject2 = [v18 anyObject];
      [autoFillContext4 removeObjectForKey:anyObject2];

      v14 = 0;
    }

    responderCopy = v43;
  }

  return v14;
}

- (unint64_t)containsIndicationInText:(id)text withAccessibilityHints:(BOOL)hints
{
  v31 = *MEMORY[0x1E69E9840];
  textCopy = text;
  v7 = textCopy;
  if (textCopy && [textCopy length])
  {
    if (hints)
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

    if (hints)
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

- (unint64_t)signUpSignalFromButton:(id)button
{
  buttonCopy = button;
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
  [(objc_class *)v5 enumerateSignUpSignalsFromButton:buttonCopy block:v8];
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

- (unint64_t)signUpSignalFromViewControllerHierarchy:(id)hierarchy
{
  hierarchyCopy = hierarchy;
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
  [(objc_class *)v5 enumerateSignUpSignalsFromViewController:hierarchyCopy block:v8];
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

- (BOOL)signupHintForUsername:(id)username password:(id)password responder:(id)responder
{
  usernameCopy = username;
  passwordCopy = password;
  responderCopy = responder;
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
  [(objc_class *)v11 enumerateSignupSignalsFromAccessibility:usernameCopy block:v60];
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
    [(objc_class *)v13 enumerateSignupSignalsFromAccessibility:passwordCopy block:v59];
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
    [(objc_class *)v14 enumerateSignUpSignalsFromViewControllerForResponder:usernameCopy block:v50 viewControllerOut:&v49];
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
      [(objc_class *)v16 enumerateSignUpSignalsFromViewControllerForResponder:passwordCopy block:v48 viewControllerOut:&v47];
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
    autoFillGroup = [(AFUITargetDetectionController *)self autoFillGroup];
    allValues = [autoFillGroup allValues];

    v28 = [MEMORY[0x1E695DF70] arrayWithCapacity:3];
    v38[0] = MEMORY[0x1E69E9820];
    v38[1] = 3221225472;
    v38[2] = __74__AFUITargetDetectionController_signupHintForUsername_password_responder___block_invoke_7;
    v38[3] = &unk_1E8424800;
    v29 = allValues;
    v39 = v29;
    v30 = v28;
    v40 = v30;
    [responderCopy enumerateObjectsWithOptions:2 usingBlock:v38];
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

- (void)updateAutofillContextForResponder:(id)responder
{
  responderCopy = responder;
  v4 = [(AFUITargetDetectionController *)self autoFillContextForResponder:?];
  autoFillGroup = [(AFUITargetDetectionController *)self autoFillGroup];
  v6 = autoFillGroup;
  if (v4)
  {
    [autoFillGroup setObject:v4 forKey:@"AFUIAutoFillContextKey"];

    autoFillGroup2 = [(AFUITargetDetectionController *)self autoFillGroup];
    [autoFillGroup2 setObject:responderCopy forKey:@"AFUIAutoFillContextDelegateKey"];
  }

  else
  {
    [autoFillGroup removeObjectForKey:@"AFUIAutoFillContextDelegateKey"];

    autoFillGroup2 = [(AFUITargetDetectionController *)self autoFillGroup];
    [autoFillGroup2 removeObjectForKey:@"AFUIAutoFillContextKey"];
  }
}

- (unint64_t)_needAutoFillCandidate:(id)candidate delegateAsResponder:(id)responder
{
  candidateCopy = candidate;
  responderCopy = responder;
  _AFUIResponderClass();
  if ((objc_opt_isKindOfClass() & 1) == 0 || (_AFUITraitsProtocol(), v7 = objc_claimAutoreleasedReturnValue(), v8 = [candidateCopy conformsToProtocol:v7], v7, !v8))
  {
    _AFUITextViewClass();
    if ((objc_opt_isKindOfClass() & 1) != 0 || ![(objc_class *)+[AFUIAdapter responderAcceptsText:"responderAcceptsText:"]
    {
      goto LABEL_178;
    }

    autoFillGroup = [(AFUITargetDetectionController *)self autoFillGroup];
    [autoFillGroup setObject:responderCopy forKey:*MEMORY[0x1E698E138]];

    v16 = 8;
    goto LABEL_179;
  }

  v9 = candidateCopy;
  autoFillGroup2 = [(AFUITargetDetectionController *)self autoFillGroup];
  v11 = [autoFillGroup2 objectForKey:@"AFUIAutoFillASPOptInKey"];
  v196 = candidateCopy;
  if (([v11 BOOLValue] & 1) == 0)
  {

    goto LABEL_10;
  }

  autoFillGroup3 = [(AFUITargetDetectionController *)self autoFillGroup];
  v13 = [autoFillGroup3 objectForKey:@"AFUIAutoFillPossibleRespondersKey"];
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
  autoFillGroup4 = [(AFUITargetDetectionController *)self autoFillGroup];
  [autoFillGroup4 setObject:v17 forKey:@"AFUIAutoFillPossibleRespondersKey"];

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
      autoFillGroup5 = [(AFUITargetDetectionController *)self autoFillGroup];
      v29 = [autoFillGroup5 objectForKey:v212];
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
      autoFillGroup6 = [(AFUITargetDetectionController *)self autoFillGroup];
      v39 = [autoFillGroup6 objectForKey:v25];
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
      autoFillGroup7 = [(AFUITargetDetectionController *)self autoFillGroup];
      v49 = [autoFillGroup7 objectForKey:v207];
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
      autoFillGroup8 = [(AFUITargetDetectionController *)self autoFillGroup];
      v57 = [autoFillGroup8 objectForKey:v211];
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
    autoFillGroup9 = [(AFUITargetDetectionController *)self autoFillGroup];
    [autoFillGroup9 setObject:v9 forKey:v35];

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
    autoFillGroup10 = [(AFUITargetDetectionController *)self autoFillGroup];
    [autoFillGroup10 setObject:v9 forKey:v64];

    autoFillContext = [(AFUITargetDetectionController *)self autoFillContext];
    v69 = [(AFUITargetDetectionController *)self placeholderTextForResponder:v9];
    [autoFillContext setObject:v69 forKey:v64];

    v214 = v215;
    v70 = v207;
    if ([(AFUITargetDetectionController *)self doTraits:v205 matchTextContentType:v207]== 2)
    {
      autoFillGroup11 = [(AFUITargetDetectionController *)self autoFillGroup];
      v72 = autoFillGroup11;
LABEL_88:
      [autoFillGroup11 setObject:v65 forKey:v70];

      autoFillContext2 = [(AFUITargetDetectionController *)self autoFillContext];
      v98 = [(AFUITargetDetectionController *)self placeholderTextForResponder:v65];
      [autoFillContext2 setObject:v98 forKey:v70];

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
        autoFillGroup12 = [(AFUITargetDetectionController *)self autoFillGroup];
        [autoFillGroup12 setObject:v66 forKey:v25];

        autoFillContext3 = [(AFUITargetDetectionController *)self autoFillContext];
        v101 = [(AFUITargetDetectionController *)self placeholderTextForResponder:v66];
        [autoFillContext3 setObject:v101 forKey:v25];

        v194 = 0;
        v191 = 0;
      }

      v70 = v207;
      goto LABEL_109;
    }

    autoFillGroup13 = [(AFUITargetDetectionController *)self autoFillGroup];
    [autoFillGroup13 setObject:v209 forKey:v25];

    autoFillContext4 = [(AFUITargetDetectionController *)self autoFillContext];
    v96 = [(AFUITargetDetectionController *)self placeholderTextForResponder:v209];
    [autoFillContext4 setObject:v96 forKey:v25];

    v70 = v207;
    if ([(AFUITargetDetectionController *)self doTraits:v199 matchTextContentType:v207])
    {
      autoFillGroup11 = [(AFUITargetDetectionController *)self autoFillGroup];
      v72 = autoFillGroup11;
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
        autoFillGroup14 = [(AFUITargetDetectionController *)self autoFillGroup];
        [autoFillGroup14 setObject:v200 forKey:v64];

        autoFillContext5 = [(AFUITargetDetectionController *)self autoFillContext];
        v76 = [(AFUITargetDetectionController *)self placeholderTextForResponder:v200];
        [autoFillContext5 setObject:v76 forKey:v64];

        v214 = v201;
        autoFillGroup15 = [(AFUITargetDetectionController *)self autoFillGroup];
        [autoFillGroup15 setObject:v20 forKey:v25];

        autoFillGroup16 = [(AFUITargetDetectionController *)self autoFillGroup];
        v79 = v20;
        v70 = v207;
        [autoFillGroup16 setObject:v9 forKey:v207];

        autoFillContext6 = [(AFUITargetDetectionController *)self autoFillContext];
        v81 = [(AFUITargetDetectionController *)self placeholderTextForResponder:v79];
        [autoFillContext6 setObject:v81 forKey:v25];

        autoFillContext7 = [(AFUITargetDetectionController *)self autoFillContext];
        selfCopy2 = self;
        v84 = v9;
LABEL_77:
        v85 = [(AFUITargetDetectionController *)selfCopy2 placeholderTextForResponder:v84];
        [autoFillContext7 setObject:v85 forKey:v70];

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
        autoFillGroup17 = [(AFUITargetDetectionController *)self autoFillGroup];
        [autoFillGroup17 setObject:v20 forKey:v64];

        autoFillContext8 = [(AFUITargetDetectionController *)self autoFillContext];
        v116 = [(AFUITargetDetectionController *)self placeholderTextForResponder:v20];
        [autoFillContext8 setObject:v116 forKey:v64];

        v214 = v202;
        autoFillGroup18 = [(AFUITargetDetectionController *)self autoFillGroup];
        [autoFillGroup18 setObject:v9 forKey:v25];

        autoFillGroup19 = [(AFUITargetDetectionController *)self autoFillGroup];
        v70 = v207;
        [autoFillGroup19 setObject:v209 forKey:v207];

        autoFillContext9 = [(AFUITargetDetectionController *)self autoFillContext];
        v120 = [(AFUITargetDetectionController *)self placeholderTextForResponder:v9];
        [autoFillContext9 setObject:v120 forKey:v25];

        autoFillContext7 = [(AFUITargetDetectionController *)self autoFillContext];
        selfCopy2 = self;
        v84 = v209;
        goto LABEL_77;
      }

      goto LABEL_114;
    }

    autoFillGroup20 = [(AFUITargetDetectionController *)self autoFillGroup];
    [autoFillGroup20 setObject:v20 forKey:v64];

    autoFillContext10 = [(AFUITargetDetectionController *)self autoFillContext];
    v143 = [(AFUITargetDetectionController *)self placeholderTextForResponder:v20];
    [autoFillContext10 setObject:v143 forKey:v64];

    v214 = v202;
    autoFillGroup21 = [(AFUITargetDetectionController *)self autoFillGroup];
    v70 = v207;
    [autoFillGroup21 setObject:v9 forKey:v207];

    autoFillContext11 = [(AFUITargetDetectionController *)self autoFillContext];
    selfCopy4 = self;
    v113 = v9;
LABEL_139:
    v145 = [(AFUITargetDetectionController *)selfCopy4 placeholderTextForResponder:v113];
    [autoFillContext11 setObject:v145 forKey:v70];

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
          autoFillGroup22 = [(AFUITargetDetectionController *)self autoFillGroup];
          [autoFillGroup22 setObject:v9 forKey:v207];

          autoFillGroup23 = [(AFUITargetDetectionController *)self autoFillGroup];
          [autoFillGroup23 setObject:v20 forKey:v25];

          autoFillContext12 = [(AFUITargetDetectionController *)self autoFillContext];
          v124 = [(AFUITargetDetectionController *)self placeholderTextForResponder:v9];
          [autoFillContext12 setObject:v124 forKey:v207];

          autoFillContext13 = [(AFUITargetDetectionController *)self autoFillContext];
          v126 = [(AFUITargetDetectionController *)self placeholderTextForResponder:v20];
          [autoFillContext13 setObject:v126 forKey:v25];

          if (v200 && [(AFUITargetDetectionController *)self doTraits:v201 matchTextContentType:v64])
          {
            autoFillGroup24 = [(AFUITargetDetectionController *)self autoFillGroup];
            [autoFillGroup24 setObject:v200 forKey:v64];

            autoFillContext14 = [(AFUITargetDetectionController *)self autoFillContext];
            v129 = [(AFUITargetDetectionController *)self placeholderTextForResponder:v200];
            [autoFillContext14 setObject:v129 forKey:v64];

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

      autoFillGroup25 = [(AFUITargetDetectionController *)self autoFillGroup];
      [autoFillGroup25 setObject:v9 forKey:v25];

      autoFillContext15 = [(AFUITargetDetectionController *)self autoFillContext];
      v90 = [(AFUITargetDetectionController *)self placeholderTextForResponder:v9];
      [autoFillContext15 setObject:v90 forKey:v25];

      autoFillGroup26 = [(AFUITargetDetectionController *)self autoFillGroup];
      [autoFillGroup26 setObject:v209 forKey:v207];

      autoFillContext16 = [(AFUITargetDetectionController *)self autoFillContext];
      v93 = [(AFUITargetDetectionController *)self placeholderTextForResponder:v209];
      [autoFillContext16 setObject:v93 forKey:v207];
      v191 = 1;
    }

    else
    {
      autoFillGroup27 = [(AFUITargetDetectionController *)self autoFillGroup];
      [autoFillGroup27 setObject:v9 forKey:v25];

      autoFillContext16 = [(AFUITargetDetectionController *)self autoFillContext];
      v93 = [(AFUITargetDetectionController *)self placeholderTextForResponder:v9];
      [autoFillContext16 setObject:v93 forKey:v25];
      v191 = 0;
    }

    v65 = v209;
    v64 = v212;
LABEL_123:
    autoFillGroup28 = [(AFUITargetDetectionController *)self autoFillGroup];
    [autoFillGroup28 setObject:v9 forKey:v25];

    autoFillContext17 = [(AFUITargetDetectionController *)self autoFillContext];
    v132 = [(AFUITargetDetectionController *)self placeholderTextForResponder:v9];
    [autoFillContext17 setObject:v132 forKey:v25];

    if ([(AFUITargetDetectionController *)self doTraits:v202 matchTextContentType:v64])
    {
      autoFillGroup29 = [(AFUITargetDetectionController *)self autoFillGroup];
      [autoFillGroup29 setObject:v20 forKey:v64];

      autoFillContext18 = [(AFUITargetDetectionController *)self autoFillContext];
      v135 = [(AFUITargetDetectionController *)self placeholderTextForResponder:v20];
      [autoFillContext18 setObject:v135 forKey:v64];

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
      autoFillGroup30 = [(AFUITargetDetectionController *)self autoFillGroup];
      [autoFillGroup30 setObject:v65 forKey:v64];

      autoFillContext19 = [(AFUITargetDetectionController *)self autoFillContext];
      v140 = [(AFUITargetDetectionController *)self placeholderTextForResponder:v65];
      [autoFillContext19 setObject:v140 forKey:v64];

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
        autoFillGroup31 = [(AFUITargetDetectionController *)self autoFillGroup];
        [autoFillGroup31 setObject:v20 forKey:v212];

        autoFillContext20 = [(AFUITargetDetectionController *)self autoFillContext];
        v148 = [(AFUITargetDetectionController *)self placeholderTextForResponder:v20];
        [autoFillContext20 setObject:v148 forKey:v212];

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
      autoFillGroup32 = [(AFUITargetDetectionController *)self autoFillGroup];
      [autoFillGroup32 setObject:v9 forKey:v64];

      autoFillContext21 = [(AFUITargetDetectionController *)self autoFillContext];
      v106 = [(AFUITargetDetectionController *)self placeholderTextForResponder:v9];
      [autoFillContext21 setObject:v106 forKey:v64];

      v214 = v215;
      autoFillGroup33 = [(AFUITargetDetectionController *)self autoFillGroup];
      [autoFillGroup33 setObject:v209 forKey:v25];

      autoFillContext22 = [(AFUITargetDetectionController *)self autoFillContext];
      v109 = [(AFUITargetDetectionController *)self placeholderTextForResponder:v209];
      [autoFillContext22 setObject:v109 forKey:v25];

      if ([(AFUITargetDetectionController *)self doTraits:v199 matchTextContentType:v207])
      {
        autoFillGroup34 = [(AFUITargetDetectionController *)self autoFillGroup];
        [autoFillGroup34 setObject:v198 forKey:v207];

        autoFillContext11 = [(AFUITargetDetectionController *)self autoFillContext];
        selfCopy4 = self;
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
  autoFillGroup35 = [(AFUITargetDetectionController *)self autoFillGroup];
  v189 = [autoFillGroup35 objectForKey:v35];

  autoFillGroup36 = [(AFUITargetDetectionController *)self autoFillGroup];
  v151 = [autoFillGroup36 objectForKey:v64];

  autoFillGroup37 = [(AFUITargetDetectionController *)self autoFillGroup];
  v153 = [autoFillGroup37 objectForKey:v25];

  autoFillGroup38 = [(AFUITargetDetectionController *)self autoFillGroup];
  v155 = [autoFillGroup38 objectForKey:v70];

  if (v151)
  {
    v151 = [(objc_class *)+[AFUIAdapter runtimeClass](AFUIAdapter textFromResponder:"textFromResponder:", v151];
    v157 = [v151 length] != 0;
  }

  else
  {
    v157 = 0;
  }

  if (v153)
  {
    v153 = [(objc_class *)+[AFUIAdapter runtimeClass](AFUIAdapter textFromResponder:"textFromResponder:", v153];
    v159 = [v153 length] != 0;

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
      v155 = [(objc_class *)+[AFUIAdapter runtimeClass](AFUIAdapter textFromResponder:"textFromResponder:", v155];
      v161 = [v155 length] != 0;

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
  keyboardType = [v214 keyboardType];
  if (keyboardType > 0xD || ((1 << keyboardType) & 0x2930) == 0)
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

  autoFillGroup39 = [(AFUITargetDetectionController *)self autoFillGroup];
  [autoFillGroup39 removeObjectForKey:v212];

  autoFillGroup40 = [(AFUITargetDetectionController *)self autoFillGroup];
  [autoFillGroup40 removeObjectForKey:v195];

  autoFillContext23 = [(AFUITargetDetectionController *)self autoFillContext];
  [autoFillContext23 removeObjectForKey:v212];

  autoFillContext24 = [(AFUITargetDetectionController *)self autoFillContext];
  [autoFillContext24 removeObjectForKey:v195];

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
    candidateCopy = v196;
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
        v187 = v164 == responderCopy || v164 == v206;
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
      autoFillGroup41 = [(AFUITargetDetectionController *)self autoFillGroup];
      [autoFillGroup41 removeObjectForKey:v212];

      autoFillGroup42 = [(AFUITargetDetectionController *)self autoFillGroup];
      [autoFillGroup42 removeObjectForKey:v211];

      autoFillContext25 = [(AFUITargetDetectionController *)self autoFillContext];
      [autoFillContext25 removeObjectForKey:v212];

      autoFillContext26 = [(AFUITargetDetectionController *)self autoFillContext];
      [autoFillContext26 removeObjectForKey:v211];

      v173 = 0;
      candidateCopy = v196;
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
      autoFillGroup43 = [(AFUITargetDetectionController *)self autoFillGroup];
      [autoFillGroup43 removeObjectForKey:v212];

      autoFillGroup44 = [(AFUITargetDetectionController *)self autoFillGroup];
      [autoFillGroup44 removeObjectForKey:v211];

      autoFillContext27 = [(AFUITargetDetectionController *)self autoFillContext];
      [autoFillContext27 removeObjectForKey:v212];

      autoFillContext28 = [(AFUITargetDetectionController *)self autoFillContext];
      [autoFillContext28 removeObjectForKey:v211];

      v173 = 0;
      candidateCopy = v196;
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

    candidateCopy = v196;
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

- (BOOL)_detectionDisabledForResponder:(id)responder
{
  responderCopy = responder;
  if (_detectionDisabledForResponder__onceToken != -1)
  {
    [AFUITargetDetectionController _detectionDisabledForResponder:];
  }

  v4 = _detectionDisabledForResponder___disabledBundleIdentifiers;
  mainBundle = [MEMORY[0x1E696AAE8] mainBundle];
  bundleIdentifier = [mainBundle bundleIdentifier];
  LOBYTE(v4) = [v4 containsObject:bundleIdentifier];

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
  bundleIdentifier2 = [v8 bundleIdentifier];
  LOBYTE(v7) = [v7 containsObject:bundleIdentifier2];

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

- (BOOL)_detectionEnabledForResponder:(id)responder
{
  responderCopy = responder;
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

- (unint64_t)autoFillModeForResponder:(id)responder
{
  responderCopy = responder;
  if ([(AFUITargetDetectionController *)self _detectionDisabledForResponder:responderCopy])
  {
    v5 = 0;
  }

  else
  {
    firstResponderForInput = [(objc_class *)+[AFUIAdapter runtimeClass](AFUIAdapter firstResponderForInput];
    v5 = [(AFUITargetDetectionController *)self _needAutoFillCandidate:responderCopy delegateAsResponder:firstResponderForInput];
  }

  return v5;
}

- (void)enumeratePasswordFieldsUsingBlock:(id)block
{
  blockCopy = block;
  if (blockCopy)
  {
    v9 = blockCopy;
    autoFillGroup = [(AFUITargetDetectionController *)self autoFillGroup];
    v6 = [autoFillGroup objectForKey:*MEMORY[0x1E698E148]];

    _AFUITextFieldClass();
    if (objc_opt_isKindOfClass())
    {
      v9[2](v9, v6);
    }

    autoFillGroup2 = [(AFUITargetDetectionController *)self autoFillGroup];
    v8 = [autoFillGroup2 objectForKey:*MEMORY[0x1E698E120]];

    _AFUITextFieldClass();
    if (objc_opt_isKindOfClass())
    {
      v9[2](v9, v8);
    }

    blockCopy = v9;
  }
}

- (void)addTemporaryTextColorToTextField:(id)field
{
  fieldCopy = field;
  [(objc_class *)+[AFUIAdapter runtimeClass](AFUIAdapter addTemporaryTextColorToTextField:"addTemporaryTextColorToTextField:", fieldCopy];
}

- (void)removeTemporaryTextColorFromTextField:(id)field
{
  fieldCopy = field;
  [(objc_class *)+[AFUIAdapter runtimeClass](AFUIAdapter removeTemporaryTextColorFromTextField:"removeTemporaryTextColorFromTextField:", fieldCopy];
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

- (BOOL)shouldLoadASPForResponder:(id)responder
{
  responderCopy = responder;
  autoFillGroup = [(AFUITargetDetectionController *)self autoFillGroup];
  v6 = [autoFillGroup objectForKey:*MEMORY[0x1E698E1A8]];

  autoFillGroup2 = [(AFUITargetDetectionController *)self autoFillGroup];
  v8 = [autoFillGroup2 objectForKey:*MEMORY[0x1E698E148]];
  if (v8 == responderCopy)
  {
    v11 = 1;
  }

  else
  {
    autoFillGroup3 = [(AFUITargetDetectionController *)self autoFillGroup];
    v10 = [autoFillGroup3 objectForKey:*MEMORY[0x1E698E120]];
    v11 = v10 == responderCopy;
  }

  return v6 != 0 && v11;
}

@end