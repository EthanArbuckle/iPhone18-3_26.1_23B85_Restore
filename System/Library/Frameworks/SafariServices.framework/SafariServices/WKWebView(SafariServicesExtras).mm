@interface WKWebView(SafariServicesExtras)
- (id)_sf_effectiveViewToLayOut;
- (id)_sf_securityInfo;
- (id)_sf_suggestedFilename;
- (id)_simulatedBEKeyEntryForReturnKeyWithType:()SafariServicesExtras;
- (id)_simulatedWebEventForReturnKeyWithType:()SafariServicesExtras;
- (id)webui_lastGeneratedPasswordForCurrentBackForwardItem;
- (id)webui_presentingViewController;
- (id)webui_preventNavigationDuringAutoFillPrompt;
- (uint64_t)_sf_endEditingAndSimulateCarriageReturnKeyEvents:()SafariServicesExtras;
- (uint64_t)webui_privateBrowsingEnabled;
- (void)_sf_applicationDidEnterBackgroundOrWillTerminate:()SafariServicesExtras;
- (void)_sf_saveUnsubmittedGeneratedPasswordAndRemoveFormMetadata;
- (void)_sf_setSecurityInfo:()SafariServicesExtras;
- (void)webui_formMetadataForLastPasswordGenerationOrSubmitEventInFrame:()SafariServicesExtras;
- (void)webui_removeFormMetadataForLastPasswordGenerationOrSubmitEventInFrame:()SafariServicesExtras;
- (void)webui_setFormMetadata:()SafariServicesExtras forLastPasswordGenerationOrSubmitEventInFrame:;
- (void)webui_setLastGeneratedPasswordForCurrentBackForwardItem:()SafariServicesExtras;
@end

@implementation WKWebView(SafariServicesExtras)

- (id)_sf_effectiveViewToLayOut
{
  if ([self _isInFullscreen])
  {
    selfCopy = [self _fullScreenPlaceholderView];
  }

  else
  {
    selfCopy = self;
  }

  return selfCopy;
}

- (id)_sf_securityInfo
{
  backForwardList = [self backForwardList];
  currentItem = [backForwardList currentItem];
  _sf_securityInfo = [currentItem _sf_securityInfo];

  return _sf_securityInfo;
}

- (void)_sf_setSecurityInfo:()SafariServicesExtras
{
  v4 = a3;
  backForwardList = [self backForwardList];
  currentItem = [backForwardList currentItem];
  [currentItem _sf_setSecurityInfo:v4];
}

- (id)webui_preventNavigationDuringAutoFillPrompt
{
  _retainActiveFocusedState = [self _retainActiveFocusedState];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __78__WKWebView_SafariServicesExtras__webui_preventNavigationDuringAutoFillPrompt__block_invoke;
  v6[3] = &unk_1E8490818;
  v6[4] = self;
  v7 = _retainActiveFocusedState;
  v3 = _retainActiveFocusedState;
  v4 = _Block_copy(v6);

  return v4;
}

- (uint64_t)webui_privateBrowsingEnabled
{
  configuration = [self configuration];
  websiteDataStore = [configuration websiteDataStore];
  isPersistent = [websiteDataStore isPersistent];

  return isPersistent ^ 1u;
}

- (id)webui_presentingViewController
{
  uIDelegate = [self UIDelegate];
  if (objc_opt_respondsToSelector())
  {
    rootViewController = [uIDelegate _presentingViewControllerForWebView:self];
  }

  else
  {
    window = [self window];
    rootViewController = [window rootViewController];
  }

  return rootViewController;
}

- (void)webui_formMetadataForLastPasswordGenerationOrSubmitEventInFrame:()SafariServicesExtras
{
  v4 = lastPasswordGenerationOrSubmitEventFrameKey;
  v5 = a3;
  v6 = objc_getAssociatedObject(self, v4);
  v7 = objc_getAssociatedObject(self, lastPasswordGenerationOrSubmitEventFormKey);
  v8 = [v5 isEqual:v6];

  if (v8)
  {
    v9 = v7;
  }

  else
  {
    v9 = 0;
  }

  v10 = v9;

  return v9;
}

- (void)webui_setFormMetadata:()SafariServicesExtras forLastPasswordGenerationOrSubmitEventInFrame:
{
  v6 = lastPasswordGenerationOrSubmitEventFrameKey;
  value = a3;
  objc_setAssociatedObject(self, v6, a4, 1);
  objc_setAssociatedObject(self, lastPasswordGenerationOrSubmitEventFormKey, value, 1);
}

- (void)webui_removeFormMetadataForLastPasswordGenerationOrSubmitEventInFrame:()SafariServicesExtras
{
  objc_setAssociatedObject(self, lastPasswordGenerationOrSubmitEventFrameKey, 0, 1);
  v2 = lastPasswordGenerationOrSubmitEventFormKey;

  objc_setAssociatedObject(self, v2, 0, 1);
}

- (id)webui_lastGeneratedPasswordForCurrentBackForwardItem
{
  backForwardList = [self backForwardList];
  currentItem = [backForwardList currentItem];
  v3 = objc_getAssociatedObject(currentItem, lastGeneratedPasswordKey);

  return v3;
}

- (void)webui_setLastGeneratedPasswordForCurrentBackForwardItem:()SafariServicesExtras
{
  v4 = a3;
  backForwardList = [self backForwardList];
  currentItem = [backForwardList currentItem];
  objc_setAssociatedObject(currentItem, lastGeneratedPasswordKey, v4, 3);
}

- (void)_sf_applicationDidEnterBackgroundOrWillTerminate:()SafariServicesExtras
{
  v2 = objc_getAssociatedObject(self, lastPasswordGenerationOrSubmitEventFormKey);
  if (v2)
  {
    v5 = v2;
    v3 = objc_getAssociatedObject(self, lastPasswordGenerationOrSubmitEventFrameKey);
    v4 = +[_SFFormDataController sharedController];
    [v4 saveUnsubmittedGeneratedPasswordInFrame:v3 form:v5 context:0 closingWebView:0];

    v2 = v5;
  }
}

- (void)_sf_saveUnsubmittedGeneratedPasswordAndRemoveFormMetadata
{
  v4 = objc_getAssociatedObject(self, lastPasswordGenerationOrSubmitEventFrameKey);
  if (v4)
  {
    v2 = objc_getAssociatedObject(self, lastPasswordGenerationOrSubmitEventFormKey);
    v3 = +[_SFFormDataController sharedController];
    [v3 saveUnsubmittedGeneratedPasswordInFrame:v4 form:v2 context:0 closingWebView:1];
  }

  [self webui_removeFormMetadataForLastPasswordGenerationOrSubmitEventInFrame:0];
}

- (id)_sf_suggestedFilename
{
  backForwardList = [self backForwardList];
  currentItem = [backForwardList currentItem];
  _sf_explicitSuggestedFilename = [currentItem _sf_explicitSuggestedFilename];

  if (_sf_explicitSuggestedFilename)
  {
    safari_filenameByFixingIllegalCharacters = _sf_explicitSuggestedFilename;
  }

  else if (![self _isDisplayingPDF] || (objc_msgSend(self, "_suggestedFilenameForDisplayedPDF"), (safari_filenameByFixingIllegalCharacters = objc_claimAutoreleasedReturnValue()) == 0))
  {
    v6 = objc_alloc(MEMORY[0x1E695AC08]);
    _committedURL = [self _committedURL];
    _MIMEType = [self _MIMEType];
    v9 = [v6 initWithURL:_committedURL MIMEType:_MIMEType expectedContentLength:0 textEncodingName:0];
    suggestedFilename = [v9 suggestedFilename];
    safari_filenameByFixingIllegalCharacters = [suggestedFilename safari_filenameByFixingIllegalCharacters];
  }

  return safari_filenameByFixingIllegalCharacters;
}

- (id)_simulatedWebEventForReturnKeyWithType:()SafariServicesExtras
{
  BYTE2(v5) = 0;
  LOWORD(v5) = 0;
  v3 = [objc_alloc(MEMORY[0x1E69E2F40]) initWithKeyEventType:a3 timeStamp:@"\n" characters:@"\n" charactersIgnoringModifiers:0 modifiers:0 isRepeating:0 withFlags:GSCurrentEventTimestamp() withInputManagerHint:0 keyCode:v5 isTabKey:?];

  return v3;
}

- (id)_simulatedBEKeyEntryForReturnKeyWithType:()SafariServicesExtras
{
  v5 = objc_alloc(MEMORY[0x1E69DCBA8]);
  v6 = [self _simulatedWebEventForReturnKeyWithType:a3];
  v7 = [v5 initWithWebEvent:v6];

  v13 = 0;
  v14 = &v13;
  v15 = 0x2050000000;
  v8 = getBEKeyEntryClass_softClass;
  v16 = getBEKeyEntryClass_softClass;
  if (!getBEKeyEntryClass_softClass)
  {
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __getBEKeyEntryClass_block_invoke;
    v12[3] = &unk_1E848F710;
    v12[4] = &v13;
    __getBEKeyEntryClass_block_invoke(v12);
    v8 = v14[3];
  }

  v9 = v8;
  _Block_object_dispose(&v13, 8);
  v10 = [[v8 alloc] _initWithUIKitKeyEvent:v7];

  return v10;
}

- (uint64_t)_sf_endEditingAndSimulateCarriageReturnKeyEvents:()SafariServicesExtras
{
  [self becomeFirstResponder];
  firstResponder = [self firstResponder];
  if ([firstResponder conformsToProtocol:&unk_1F50FEC50] && objc_msgSend(firstResponder, "conformsToProtocol:", &unk_1F50FF390))
  {
    if (!a3)
    {
      [firstResponder clearSelection];
      goto LABEL_12;
    }

    v6 = [self _simulatedWebEventForReturnKeyWithType:4];
    [firstResponder handleKeyWebEvent:v6];

    v7 = [self _simulatedWebEventForReturnKeyWithType:5];
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __84__WKWebView_SafariServicesExtras___sf_endEditingAndSimulateCarriageReturnKeyEvents___block_invoke;
    v15[3] = &unk_1E84958F8;
    v16 = firstResponder;
    [v16 handleKeyWebEvent:v7 withCompletionHandler:v15];

    v8 = v16;
    goto LABEL_8;
  }

  if ([firstResponder conformsToProtocol:&unk_1F50FFB58])
  {
    if (!a3)
    {
      [firstResponder setSelectedTextRange:0];
      goto LABEL_12;
    }

    v9 = [self _simulatedBEKeyEntryForReturnKeyWithType:4];
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __84__WKWebView_SafariServicesExtras___sf_endEditingAndSimulateCarriageReturnKeyEvents___block_invoke_2;
    v12[3] = &unk_1E8495948;
    v13 = firstResponder;
    selfCopy = self;
    [v13 handleKeyEntry:v9 withCompletionHandler:v12];

    v8 = v13;
LABEL_8:

LABEL_12:
    v10 = 1;
    goto LABEL_13;
  }

  v10 = 0;
LABEL_13:

  return v10;
}

@end