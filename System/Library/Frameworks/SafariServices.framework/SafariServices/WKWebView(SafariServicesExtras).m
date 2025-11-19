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
  if ([a1 _isInFullscreen])
  {
    v2 = [a1 _fullScreenPlaceholderView];
  }

  else
  {
    v2 = a1;
  }

  return v2;
}

- (id)_sf_securityInfo
{
  v1 = [a1 backForwardList];
  v2 = [v1 currentItem];
  v3 = [v2 _sf_securityInfo];

  return v3;
}

- (void)_sf_setSecurityInfo:()SafariServicesExtras
{
  v4 = a3;
  v6 = [a1 backForwardList];
  v5 = [v6 currentItem];
  [v5 _sf_setSecurityInfo:v4];
}

- (id)webui_preventNavigationDuringAutoFillPrompt
{
  v2 = [a1 _retainActiveFocusedState];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __78__WKWebView_SafariServicesExtras__webui_preventNavigationDuringAutoFillPrompt__block_invoke;
  v6[3] = &unk_1E8490818;
  v6[4] = a1;
  v7 = v2;
  v3 = v2;
  v4 = _Block_copy(v6);

  return v4;
}

- (uint64_t)webui_privateBrowsingEnabled
{
  v1 = [a1 configuration];
  v2 = [v1 websiteDataStore];
  v3 = [v2 isPersistent];

  return v3 ^ 1u;
}

- (id)webui_presentingViewController
{
  v2 = [a1 UIDelegate];
  if (objc_opt_respondsToSelector())
  {
    v3 = [v2 _presentingViewControllerForWebView:a1];
  }

  else
  {
    v4 = [a1 window];
    v3 = [v4 rootViewController];
  }

  return v3;
}

- (void)webui_formMetadataForLastPasswordGenerationOrSubmitEventInFrame:()SafariServicesExtras
{
  v4 = lastPasswordGenerationOrSubmitEventFrameKey;
  v5 = a3;
  v6 = objc_getAssociatedObject(a1, v4);
  v7 = objc_getAssociatedObject(a1, lastPasswordGenerationOrSubmitEventFormKey);
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
  objc_setAssociatedObject(a1, v6, a4, 1);
  objc_setAssociatedObject(a1, lastPasswordGenerationOrSubmitEventFormKey, value, 1);
}

- (void)webui_removeFormMetadataForLastPasswordGenerationOrSubmitEventInFrame:()SafariServicesExtras
{
  objc_setAssociatedObject(a1, lastPasswordGenerationOrSubmitEventFrameKey, 0, 1);
  v2 = lastPasswordGenerationOrSubmitEventFormKey;

  objc_setAssociatedObject(a1, v2, 0, 1);
}

- (id)webui_lastGeneratedPasswordForCurrentBackForwardItem
{
  v1 = [a1 backForwardList];
  v2 = [v1 currentItem];
  v3 = objc_getAssociatedObject(v2, lastGeneratedPasswordKey);

  return v3;
}

- (void)webui_setLastGeneratedPasswordForCurrentBackForwardItem:()SafariServicesExtras
{
  v4 = a3;
  v6 = [a1 backForwardList];
  v5 = [v6 currentItem];
  objc_setAssociatedObject(v5, lastGeneratedPasswordKey, v4, 3);
}

- (void)_sf_applicationDidEnterBackgroundOrWillTerminate:()SafariServicesExtras
{
  v2 = objc_getAssociatedObject(a1, lastPasswordGenerationOrSubmitEventFormKey);
  if (v2)
  {
    v5 = v2;
    v3 = objc_getAssociatedObject(a1, lastPasswordGenerationOrSubmitEventFrameKey);
    v4 = +[_SFFormDataController sharedController];
    [v4 saveUnsubmittedGeneratedPasswordInFrame:v3 form:v5 context:0 closingWebView:0];

    v2 = v5;
  }
}

- (void)_sf_saveUnsubmittedGeneratedPasswordAndRemoveFormMetadata
{
  v4 = objc_getAssociatedObject(a1, lastPasswordGenerationOrSubmitEventFrameKey);
  if (v4)
  {
    v2 = objc_getAssociatedObject(a1, lastPasswordGenerationOrSubmitEventFormKey);
    v3 = +[_SFFormDataController sharedController];
    [v3 saveUnsubmittedGeneratedPasswordInFrame:v4 form:v2 context:0 closingWebView:1];
  }

  [a1 webui_removeFormMetadataForLastPasswordGenerationOrSubmitEventInFrame:0];
}

- (id)_sf_suggestedFilename
{
  v2 = [a1 backForwardList];
  v3 = [v2 currentItem];
  v4 = [v3 _sf_explicitSuggestedFilename];

  if (v4)
  {
    v5 = v4;
  }

  else if (![a1 _isDisplayingPDF] || (objc_msgSend(a1, "_suggestedFilenameForDisplayedPDF"), (v5 = objc_claimAutoreleasedReturnValue()) == 0))
  {
    v6 = objc_alloc(MEMORY[0x1E695AC08]);
    v7 = [a1 _committedURL];
    v8 = [a1 _MIMEType];
    v9 = [v6 initWithURL:v7 MIMEType:v8 expectedContentLength:0 textEncodingName:0];
    v10 = [v9 suggestedFilename];
    v5 = [v10 safari_filenameByFixingIllegalCharacters];
  }

  return v5;
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
  v6 = [a1 _simulatedWebEventForReturnKeyWithType:a3];
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
  [a1 becomeFirstResponder];
  v5 = [a1 firstResponder];
  if ([v5 conformsToProtocol:&unk_1F50FEC50] && objc_msgSend(v5, "conformsToProtocol:", &unk_1F50FF390))
  {
    if (!a3)
    {
      [v5 clearSelection];
      goto LABEL_12;
    }

    v6 = [a1 _simulatedWebEventForReturnKeyWithType:4];
    [v5 handleKeyWebEvent:v6];

    v7 = [a1 _simulatedWebEventForReturnKeyWithType:5];
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __84__WKWebView_SafariServicesExtras___sf_endEditingAndSimulateCarriageReturnKeyEvents___block_invoke;
    v15[3] = &unk_1E84958F8;
    v16 = v5;
    [v16 handleKeyWebEvent:v7 withCompletionHandler:v15];

    v8 = v16;
    goto LABEL_8;
  }

  if ([v5 conformsToProtocol:&unk_1F50FFB58])
  {
    if (!a3)
    {
      [v5 setSelectedTextRange:0];
      goto LABEL_12;
    }

    v9 = [a1 _simulatedBEKeyEntryForReturnKeyWithType:4];
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __84__WKWebView_SafariServicesExtras___sf_endEditingAndSimulateCarriageReturnKeyEvents___block_invoke_2;
    v12[3] = &unk_1E8495948;
    v13 = v5;
    v14 = a1;
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