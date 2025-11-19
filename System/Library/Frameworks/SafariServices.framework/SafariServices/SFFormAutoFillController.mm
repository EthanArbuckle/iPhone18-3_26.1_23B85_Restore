@interface SFFormAutoFillController
@end

@implementation SFFormAutoFillController

id __54___SFFormAutoFillController_initWithWebView_delegate___block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x1E695DFD8] setWithObject:objc_opt_class()];
  v3 = metadataClasses();
  v4 = [v3 setByAddingObjectsFromSet:v2];

  v5 = [MEMORY[0x1E69853F8] remoteObjectInterfaceWithProtocol:&unk_1F5072D20];
  v6 = *(a1 + 32);
  v7 = *(v6 + 24);
  *(v6 + 24) = v5;

  v8 = *(*(a1 + 32) + 24);
  v9 = MEMORY[0x1E695DFD8];
  v10 = objc_opt_class();
  v11 = [v9 setWithObjects:{v10, objc_opt_class(), 0}];
  [v8 setClasses:v11 forSelector:sel_didCollectURLsForPreFilling_atURL_inFrame_ argumentIndex:0 ofReply:0];

  [*(*(a1 + 32) + 24) setClasses:v4 forSelector:sel_didCollectFormMetadataForPreFilling_atURL_ argumentIndex:0 ofReply:0];
  [*(*(a1 + 32) + 24) setClasses:v4 forSelector:sel_didCollectFormMetadataForPageLevelAutoFill_atURL_ argumentIndex:0 ofReply:0];
  v12 = *(*(a1 + 32) + 24);
  v13 = metadataClasses();
  [v12 setClasses:v13 forSelector:sel_textDidChangeInTextField_inForm_inFrame_ argumentIndex:0 ofReply:0];

  v14 = *(*(a1 + 32) + 24);
  v15 = [MEMORY[0x1E695DFD8] setWithObject:objc_opt_class()];
  [v14 setClasses:v15 forSelector:sel_textDidChangeInTextField_inForm_inFrame_ argumentIndex:1 ofReply:0];

  [*(*(a1 + 32) + 24) setClasses:v2 forSelector:sel_textDidChangeInTextField_inForm_inFrame_ argumentIndex:2 ofReply:0];
  v16 = *(*(a1 + 32) + 24);
  v17 = metadataClasses();
  [v16 setClasses:v17 forSelector:sel_didFillGeneratedPasswordInForm_inFrame_ argumentIndex:0 ofReply:0];

  [*(*(a1 + 32) + 24) setClasses:v2 forSelector:sel_didFillGeneratedPasswordInForm_inFrame_ argumentIndex:1 ofReply:0];
  [*(*(a1 + 32) + 24) setClasses:v2 forSelector:sel_willNavigateFrame_withUnsubmittedForm_ argumentIndex:0 ofReply:0];
  v18 = *(*(a1 + 32) + 24);
  v19 = metadataClasses();
  [v18 setClasses:v19 forSelector:sel_willNavigateFrame_withUnsubmittedForm_ argumentIndex:1 ofReply:0];

  v20 = *(*(a1 + 32) + 24);
  v21 = metadataClasses();
  [v20 setClasses:v21 forSelector:sel_didUpdateUnsubmittedForm_inFrame_ argumentIndex:0 ofReply:0];

  [*(*(a1 + 32) + 24) setClasses:v2 forSelector:sel_didUpdateUnsubmittedForm_inFrame_ argumentIndex:1 ofReply:0];
  v22 = *(*(a1 + 32) + 24);
  v23 = metadataClasses();
  [v22 setClasses:v23 forSelector:sel_didRemoveAutomaticStrongPasswordInForm_inputSessionUserObject_inFrame_ argumentIndex:0 ofReply:0];

  v24 = *(*(a1 + 32) + 24);
  v25 = metadataClasses();
  v26 = [v25 setByAddingObjectsFromSet:v2];
  [v24 setClasses:v26 forSelector:sel_didRemoveAutomaticStrongPasswordInForm_inputSessionUserObject_inFrame_ argumentIndex:1 ofReply:0];

  [*(*(a1 + 32) + 24) setClasses:v2 forSelector:sel_didRemoveAutomaticStrongPasswordInForm_inputSessionUserObject_inFrame_ argumentIndex:2 ofReply:0];
  v27 = [*(a1 + 40) _remoteObjectRegistry];
  [v27 registerExportedObject:*(a1 + 32) interface:*(*(a1 + 32) + 24)];
  v28 = [MEMORY[0x1E69853F8] remoteObjectInterfaceWithProtocol:&unk_1F50755C0];
  v29 = [MEMORY[0x1E695DFD8] setWithObject:objc_opt_class()];
  [v28 setClasses:v29 forSelector:sel_getMetadataForTextField_inFrame_atURL_completionHandler_ argumentIndex:0 ofReply:1];

  v30 = metadataClasses();
  [v28 setClasses:v30 forSelector:sel_getMetadataForTextField_inFrame_atURL_completionHandler_ argumentIndex:1 ofReply:1];

  [v28 setClasses:v4 forSelector:sel_collectAllFormsMetadataWithRequestType_completionHandler_ argumentIndex:0 ofReply:1];
  v31 = [v27 remoteObjectProxyWithInterface:v28];

  return v31;
}

void __137___SFFormAutoFillController_autoFillFormInFrame_withValues_setAutoFilled_focusFieldAfterFilling_fieldToFocus_fieldsToObscure_submitForm___block_invoke(uint64_t a1, void *a2, char a3)
{
  v5 = a2;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __137___SFFormAutoFillController_autoFillFormInFrame_withValues_setAutoFilled_focusFieldAfterFilling_fieldToFocus_fieldsToObscure_submitForm___block_invoke_2;
  v8[3] = &unk_1E8491110;
  v6 = *(a1 + 40);
  v8[4] = *(a1 + 32);
  v9 = v5;
  v10 = v6;
  v11 = a3;
  v7 = v5;
  dispatch_async(MEMORY[0x1E69E96A0], v8);
}

void __72___SFFormAutoFillController_autoFillForm_inFrame_withGeneratedPassword___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = objc_alloc_init(MEMORY[0x1E69C8A40]);
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __72___SFFormAutoFillController_autoFillForm_inFrame_withGeneratedPassword___block_invoke_2;
  v6[3] = &unk_1E8490658;
  v7 = *(a1 + 32);
  [v4 setHandler:v6];
  if (v3)
  {
    v5 = +[_SFFormDataController sharedController];
    [v5 setGeneratedPassword:v3];
  }
}

void __72___SFFormAutoFillController_autoFillForm_inFrame_withGeneratedPassword___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = objc_alloc_init(MEMORY[0x1E69C8A40]);
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __72___SFFormAutoFillController_autoFillForm_inFrame_withGeneratedPassword___block_invoke_4;
  v6[3] = &unk_1E8490658;
  v7 = *(a1 + 32);
  [v4 setHandler:v6];
  if (v3)
  {
    v5 = +[_SFFormDataController sharedController];
    [v5 setGeneratedPassword:v3];
  }
}

void __85___SFFormAutoFillController_autoFillOneTimeCodeFieldsInFrame_withValue_shouldSubmit___block_invoke(uint64_t a1, void *a2, char a3, char a4)
{
  v7 = a2;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __85___SFFormAutoFillController_autoFillOneTimeCodeFieldsInFrame_withValue_shouldSubmit___block_invoke_2;
  block[3] = &unk_1E8491188;
  block[4] = *(a1 + 32);
  v10 = v7;
  v11 = a3;
  v12 = a4;
  v8 = v7;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

void __60___SFFormAutoFillController_fieldWillFocusWithInputSession___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v21[1] = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if ([v6 isSecureTextField])
  {
    v7 = +[_SFFormDataController sharedController];
    v8 = [v7 isPasswordFieldForUserCredentialsWithMetadata:v6 formMetadata:v5];
  }

  else
  {
    v8 = 0;
  }

  v9 = [v6 classification];
  if (WBSIsEqual() & 1) != 0 || (WBSIsEqual() & 1) != 0 || (WBSIsEqual())
  {
    v10 = 0;
    v11 = 1;
  }

  else
  {
    v10 = [MEMORY[0x1E69E30A8] isUsernameFieldInLoginFormWithTextFieldMetadata:v6 formMetadata:v5];
    v11 = 0;
  }

  v12 = *(a1 + 32);
  if (*(v12 + 288) == 1)
  {
    [v12 makePasswordFields:*(v12 + 144) viewable:0];
  }

  if (v8)
  {
    objc_storeStrong((*(a1 + 32) + 184), a3);
  }

  v13 = [v5 uniqueIDsOfPasswordControlAndRelatedControls];
  v14 = [v6 uniqueID];
  v15 = [v13 containsObject:v14];

  if (v15)
  {
    objc_storeStrong((*(a1 + 32) + 144), v13);
  }

  else
  {
    v16 = [v6 uniqueID];
    v21[0] = v16;
    v17 = [MEMORY[0x1E695DEC8] arrayWithObjects:v21 count:1];
    v18 = *(a1 + 32);
    v19 = *(v18 + 144);
    *(v18 + 144) = v17;
  }

  v20 = v10 | v8;
  if ((v11 | v20))
  {
    [*(a1 + 32) _didFocusSensitiveFormField:v6];
  }

  if ((v20 & 1) != 0 || (*(a1 + 64) & 1) == 0)
  {
    [*(a1 + 32) textFieldFocused:v6 inForm:v5 inFrame:*(a1 + 40) inputSession:*(a1 + 48)];
    if ((v20 & 1) != 0 && (*(a1 + 64) & 1) == 0)
    {
      [*(a1 + 32) _passwordOrUsernameFieldWillFocusForStreamlinedAutoFillWithInputSession:*(a1 + 48) frameHandle:*(a1 + 40) formMetadata:v5 externalCredentialIdentitiesByURL:*(a1 + 56)];
    }
  }
}

void __160___SFFormAutoFillController__passwordOrUsernameFieldWillFocusForStreamlinedAutoFillWithInputSession_frameHandle_formMetadata_externalCredentialIdentitiesByURL___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    v2 = objc_loadWeakRetained(WeakRetained + 1);
    [v2 _setSuppressSoftwareKeyboard:0];

    WeakRetained = v3;
  }
}

void __160___SFFormAutoFillController__passwordOrUsernameFieldWillFocusForStreamlinedAutoFillWithInputSession_frameHandle_formMetadata_externalCredentialIdentitiesByURL___block_invoke_2(uint64_t a1, void *a2)
{
  v19 = a2;
  if (v19)
  {
    v3 = [*(a1 + 32) webui_URL];
    v4 = [v3 host];
    v5 = [v4 safari_highLevelDomainFromHost];

    if (!v5)
    {
      v6 = [*(a1 + 32) webui_URL];
      v7 = [v6 host];
      v5 = [v7 safari_simplifiedSiteNameForCredentialLookup];
    }

    v8 = [*(a1 + 40) passwordElementUniqueID];

    if (*(a1 + 48))
    {
      v9 = [objc_alloc(MEMORY[0x1E69BC7E0]) initWithCredentialIdentity:*(a1 + 48) host:v5 hasPasswordFieldToFill:v8 != 0];
    }

    else
    {
      v10 = objc_alloc(MEMORY[0x1E69BC7E0]);
      v11 = [v19 savedAccountMatch];
      v9 = [v10 initWithSavedAccountMatch:v11 host:v5 hasPasswordFieldToFill:v8 != 0];
    }

    v12 = [[_SFAutoFillInputView alloc] initWithStreamlinedAutoFillViewController:v9 suggestion:v19];
    v13 = *(a1 + 56);
    v14 = *(v13 + 200);
    *(v13 + 200) = v12;

    [*(*(a1 + 56) + 200) setDelegate:?];
    v15 = *(*(a1 + 56) + 200);
    v16 = [*(a1 + 64) formInputSession];
    [v16 setCustomInputView:v15];

    v17 = [*(a1 + 64) formInputSession];
    [v17 setAccessoryViewShouldNotShow:1];

    [*(a1 + 56) _hideInputAssistantItemsIfNecessary];
  }

  WeakRetained = objc_loadWeakRetained((*(a1 + 56) + 8));
  [WeakRetained _setSuppressSoftwareKeyboard:0];
}

void __108___SFFormAutoFillController__getExternalLoginCredentialSuggestionsForDomains_webFrameIdentifier_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = objc_alloc_init(MEMORY[0x1E69C8DD8]);
  v5 = *(a1 + 32);
  if (v3)
  {
    v6 = [v3 relyingPartyIdentifier];
    v7 = [v5 arrayByAddingObject:v6];
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __108___SFFormAutoFillController__getExternalLoginCredentialSuggestionsForDomains_webFrameIdentifier_completion___block_invoke_2;
    v13[3] = &unk_1E8491250;
    v15 = *(a1 + 40);
    v14 = v4;
    [v14 fetchAllCredentialIdentitiesMatchingDomains:v7 completion:v13];
    v8 = &v15;
    v9 = &v14;
  }

  else
  {
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __108___SFFormAutoFillController__getExternalLoginCredentialSuggestionsForDomains_webFrameIdentifier_completion___block_invoke_3;
    v10[3] = &unk_1E8491250;
    v12 = *(a1 + 40);
    v11 = v4;
    [v11 fetchPasswordCredentialIdentitiesMatchingDomains:v5 completion:v10];
    v8 = &v12;
    v9 = &v11;
  }
}

void __108___SFFormAutoFillController__getExternalLoginCredentialSuggestionsForDomains_webFrameIdentifier_completion___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  (*(*(a1 + 40) + 16))();
  [*(a1 + 32) invalidate];
}

void __108___SFFormAutoFillController__getExternalLoginCredentialSuggestionsForDomains_webFrameIdentifier_completion___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  (*(*(a1 + 40) + 16))();
  [*(a1 + 32) invalidate];
}

void __116___SFFormAutoFillController__getExternalLoginCredentialSuggestionsForDomains_pageURL_webFrameIdentifier_completion___block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 40);
  v3 = [*(a1 + 48) _filterAndSortCredentialIdentities:a2 pageURL:*(a1 + 32) exactMatchesOnly:0];
  (*(v2 + 16))(v2);
}

id __71___SFFormAutoFillController_didCollectURLsForPreFilling_atURL_inFrame___block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 host];

  return v2;
}

void __71___SFFormAutoFillController_didCollectURLsForPreFilling_atURL_inFrame___block_invoke_2(uint64_t a1, void *a2)
{
  v31 = *MEMORY[0x1E69E9840];
  v18 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  if (WeakRetained)
  {
    v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v20 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v28 = 0u;
    v29 = 0u;
    v26 = 0u;
    v27 = 0u;
    v4 = *(a1 + 32);
    v5 = [v4 countByEnumeratingWithState:&v26 objects:v30 count:16];
    if (v5)
    {
      v19 = 0;
      v6 = *v27;
      do
      {
        for (i = 0; i != v5; ++i)
        {
          if (*v27 != v6)
          {
            objc_enumerationMutation(v4);
          }

          v8 = *(*(&v26 + 1) + 8 * i);
          v9 = [v8 host];
          if (v9)
          {
            v10 = [WeakRetained _preFillDisabledHosts];
            v11 = [v10 containsObject:v9];

            if ((v11 & 1) == 0)
            {
              v12 = [v3 objectForKeyedSubscript:v9];
              if (!v12)
              {
                v12 = [objc_opt_class() _filterAndSortCredentialIdentities:v18 pageURL:v8 exactMatchesOnly:1];
                [v3 setObject:v12 forKeyedSubscript:v9];
              }

              if ([v12 count])
              {
                v13 = [v12 objectAtIndexedSubscript:0];
                [v20 setObject:v13 forKeyedSubscript:v8];

                v19 = 1;
              }
            }
          }
        }

        v5 = [v4 countByEnumeratingWithState:&v26 objects:v30 count:16];
      }

      while (v5);
    }

    else
    {
      v19 = 0;
    }

    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __71___SFFormAutoFillController_didCollectURLsForPreFilling_atURL_inFrame___block_invoke_3;
    block[3] = &unk_1E8491308;
    v25 = v19 & 1;
    block[4] = WeakRetained;
    v14 = *(a1 + 40);
    v15 = *(a1 + 48);
    v22 = v14;
    v23 = v20;
    v24 = v15;
    v16 = v20;
    dispatch_async(MEMORY[0x1E69E96A0], block);
  }
}

void __71___SFFormAutoFillController_didCollectURLsForPreFilling_atURL_inFrame___block_invoke_3(uint64_t a1)
{
  if (*(a1 + 64) != 1)
  {
    return;
  }

  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 16));
  v4 = [WeakRetained formAutoFillControllerURLForFormAutoFill:*(a1 + 32)];

  if (([*(a1 + 40) isEqual:v4] & 1) == 0)
  {
    v3 = a1 + 56;
    goto LABEL_7;
  }

  objc_storeStrong((*(a1 + 32) + 232), *(a1 + 48));
  v3 = a1 + 56;
  if ((*(*(*(a1 + 56) + 8) + 24) & 1) == 0)
  {
    [*(*(a1 + 32) + 32) collectFormMetadataForPrefillingAtURL:v4];
LABEL_7:
    *(*(*v3 + 8) + 24) = 1;
  }
}

void __71___SFFormAutoFillController_didCollectURLsForPreFilling_atURL_inFrame___block_invoke_210(uint64_t a1)
{
  v2 = 0;
  do
  {
    v3 = [*(*(*(a1 + 56) + 8) + 40) nextObject];

    if (!v3)
    {
      goto LABEL_5;
    }

    objc_opt_class();
    v2 = v3;
  }

  while ((objc_opt_isKindOfClass() & 1) == 0);
  if (*(*(*(a1 + 64) + 8) + 24) == 1)
  {
LABEL_5:
    v4 = *(*(a1 + 72) + 8);
    v5 = *(v4 + 40);
    *(v4 + 40) = 0;

    goto LABEL_7;
  }

  v17[0] = 0;
  v17[1] = v17;
  v17[2] = 0x3032000000;
  v17[3] = __Block_byref_object_copy__208;
  v17[4] = __Block_byref_object_dispose__209;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __71___SFFormAutoFillController_didCollectURLsForPreFilling_atURL_inFrame___block_invoke_2_211;
  aBlock[3] = &unk_1E8491358;
  v6 = *(a1 + 40);
  aBlock[4] = *(a1 + 32);
  v15 = v6;
  v16 = *(a1 + 64);
  v18 = _Block_copy(aBlock);
  v7 = objc_alloc(MEMORY[0x1E69C8A30]);
  v8 = [MEMORY[0x1E69C8A58] queryThatMatchesEverything];
  v9 = [*(a1 + 48) webFrameIdentifier];
  v10 = [v7 initWithURL:v3 options:8 userNameQuery:v8 associatedDomainsManager:0 webFrameIdentifier:v9];

  v11 = [*(a1 + 32) savedAccountContext];
  [v10 setContext:v11];

  v12 = +[_SFFormDataController sharedController];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __71___SFFormAutoFillController_didCollectURLsForPreFilling_atURL_inFrame___block_invoke_3_215;
  v13[3] = &unk_1E84913A8;
  v13[4] = v17;
  [v12 getSavedAccountMatchesWithCriteria:v10 synchronously:0 completionHandler:v13];

  _Block_object_dispose(v17, 8);
LABEL_7:
}

void __71___SFFormAutoFillController_didCollectURLsForPreFilling_atURL_inFrame___block_invoke_2_211(uint64_t a1, void *a2)
{
  v10 = a2;
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 16));
  v4 = [WeakRetained formAutoFillControllerURLForFormAutoFill:*(a1 + 32)];

  if (([*(a1 + 40) isEqual:v4] & 1) == 0)
  {
    *(*(*(a1 + 48) + 8) + 24) = 1;
  }

  v5 = [v10 exactMatches];
  v6 = [v5 count];

  if (v6)
  {
    if ((*(*(*(a1 + 48) + 8) + 24) & 1) == 0)
    {
      v7 = [*(a1 + 32) _preFillDisabledHosts];
      v8 = [v4 host];
      v9 = [v7 containsObject:v8];

      if ((v9 & 1) == 0)
      {
        [*(*(a1 + 32) + 32) collectFormMetadataForPrefillingAtURL:v4];
        *(*(*(a1 + 48) + 8) + 24) = 1;
      }
    }
  }

  (*(*(*(*(a1 + 56) + 8) + 40) + 16))();
}

void __71___SFFormAutoFillController_didCollectURLsForPreFilling_atURL_inFrame___block_invoke_3_215(uint64_t a1, void *a2)
{
  v3 = a2;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __71___SFFormAutoFillController_didCollectURLsForPreFilling_atURL_inFrame___block_invoke_4;
  v6[3] = &unk_1E8491380;
  v4 = *(a1 + 32);
  v7 = v3;
  v8 = v4;
  v5 = v3;
  dispatch_async(MEMORY[0x1E69E96A0], v6);
}

void __71___SFFormAutoFillController_didCollectURLsForPreFilling_atURL_inFrame___block_invoke_4(uint64_t a1)
{
  (*(*(*(*(a1 + 40) + 8) + 40) + 16))();
  v2 = *(*(a1 + 40) + 8);
  v3 = *(v2 + 40);
  *(v2 + 40) = 0;
}

void __87___SFFormAutoFillController__authenticateForAutoFillForHighLevelDomain_withCompletion___block_invoke(uint64_t a1, uint64_t a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v5 = *(a1 + 32);
  v8 = WeakRetained;
  if (WeakRetained)
  {
    v6 = [WeakRetained authenticationContext];
    v7 = [v6 authenticatedContext];
    (*(v5 + 16))(v5, a2, v7);
  }

  else
  {
    (*(v5 + 16))(v5, 0, 0);
  }
}

void __71___SFFormAutoFillController_didCollectFormMetadataForPreFilling_atURL___block_invoke_2(uint64_t a1, void *a2)
{
  v22 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = *(a1 + 32);
  v17 = 0;
  v5 = [v4 metadataOfBestFormForStreamlinedLogin:v3 autoFillFrameHandle:&v17];
  v6 = v17;
  if (v5 && ([*(a1 + 32) mayPreFillInFrame:v6] & 1) != 0)
  {
    v7 = [v5 bestControlForStreamlinedLoginFocus];
    if (v7)
    {
      if ([MEMORY[0x1E69C8880] isAutoFillDrivenByUIProcess])
      {
        v8 = [[_SFFormAutoFillInputSession alloc] initForStreamlinedLoginWithControlMetadata:v7 formMetadata:v5 frameHandle:v6];
        v9 = *(a1 + 40);
        v10 = *(v9 + 168);
        *(v9 + 168) = v8;
      }

      v11 = WBS_LOG_CHANNEL_PREFIXAutoFill();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        v12 = *(*(a1 + 40) + 168);
        v13 = [v7 uniqueID];
        *buf = 134218242;
        v19 = v12;
        v20 = 2112;
        v21 = v13;
        _os_log_impl(&dword_1D4644000, v11, OS_LOG_TYPE_DEFAULT, "%p Beginning new input session for Streamlined Login in control %@", buf, 0x16u);
      }

      v14 = *(*(a1 + 40) + 32);
      v15 = [v7 uniqueID];
      [v14 focusControlForStreamlinedLogin:v15 inFrame:v6];
    }

    else
    {
      v16 = WBS_LOG_CHANNEL_PREFIXAutoFill();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
      {
        __71___SFFormAutoFillController_didCollectFormMetadataForPreFilling_atURL___block_invoke_2_cold_1(v16);
      }
    }
  }
}

void __78___SFFormAutoFillController_didCollectFormMetadataForPageLevelAutoFill_atURL___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v11 = 0;
  v4 = +[_SFFormDataController sharedController];
  v5 = [v4 metadataOfActiveFormOrBestFormForPageLevelAutoFill:v3 frame:&v11];

  if (v5)
  {
    v6 = *(*(a1 + 32) + 64);
    if (v6)
    {
      [v6 updateCachedFormMetadataAfterFilling:v5];
    }

    else
    {
      v7 = v11;
      [*(*(a1 + 32) + 64) invalidate];
      v8 = [[SFFormAutocompleteState alloc] initWithFrame:v7 form:v5 textField:0 inputSession:0 autoFillController:*(a1 + 32)];
      v9 = *(a1 + 32);
      v10 = *(v9 + 64);
      *(v9 + 64) = v8;
    }

    [*(*(a1 + 32) + 64) performPageLevelAutoFill];
  }
}

void __59___SFFormAutoFillController_sendEventsForAutoFillTelemetry__block_invoke(uint64_t a1)
{
  [*(*(a1 + 32) + 112) sendTelemetryEventsOnFormSubmission];
  v2 = *(a1 + 32);
  v3 = *(v2 + 112);
  *(v2 + 112) = 0;
}

uint64_t __90___SFFormAutoFillController_reportAutoFillOfferedType_forTextFieldWithID_forFormMetadata___block_invoke(uint64_t a1)
{
  [*(a1 + 32) _createFormTelemetryDataMonitorIfNeeded];
  v2 = *(a1 + 40);
  v3 = *(*(a1 + 32) + 112);
  v5 = *(a1 + 48);
  v4 = *(a1 + 56);

  return [v3 updateAutoFillOfferedType:v4 forTextFieldWithID:v2 forFormMetadata:v5];
}

void __64___SFFormAutoFillController_replaceCurrentPasswordWithPassword___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __64___SFFormAutoFillController_replaceCurrentPasswordWithPassword___block_invoke_2;
  v5[3] = &unk_1E848F9B0;
  v5[4] = *(a1 + 32);
  v6 = v3;
  v4 = v3;
  dispatch_async(MEMORY[0x1E69E96A0], v5);
}

void __64___SFFormAutoFillController_replaceCurrentPasswordWithPassword___block_invoke_2(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 168) frameHandle];
  v3 = *(a1 + 32);
  v4 = *(v3 + 160);
  *(v3 + 160) = v2;

  v5 = *(a1 + 40);
  v6 = (*(a1 + 32) + 144);

  objc_storeStrong(v6, v5);
}

void __64___SFFormAutoFillController_replaceCurrentPasswordWithPassword___block_invoke_3(uint64_t a1, void *a2)
{
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  v4 = a2;
  dispatch_group_leave(*(a1 + 32));
}

void __162___SFFormAutoFillController__beginAutomaticPasswordInteractionWithPasswordFieldMetadata_formMetadata_frame_inputSession_generatedPassword_ignorePreviousDecision___block_invoke(uint64_t a1, void *a2, void *a3, void *a4, void *a5, void *a6)
{
  v11 = a2;
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = *(a1 + 32);
  v17 = *(v16 + 160);
  *(v16 + 160) = v11;
  v29 = v11;

  v18 = *(a1 + 32);
  v19 = *(v18 + 176);
  *(v18 + 176) = v12;
  v20 = v12;

  v21 = *(a1 + 32);
  v22 = *(v21 + 184);
  *(v21 + 184) = v13;
  v23 = v13;

  v24 = *(a1 + 32);
  v25 = *(v24 + 136);
  *(v24 + 136) = v14;
  v26 = v14;

  v27 = *(a1 + 32);
  v28 = *(v27 + 128);
  *(v27 + 128) = v15;
}

void __121___SFFormAutoFillController_fillCurrentAutomaticStrongPasswordInCurrentFrameBlurringAfterSubstitution_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = objc_alloc_init(MEMORY[0x1E69C8A40]);
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __121___SFFormAutoFillController_fillCurrentAutomaticStrongPasswordInCurrentFrameBlurringAfterSubstitution_completionHandler___block_invoke_2;
  v5[3] = &unk_1E8490658;
  v6 = *(a1 + 32);
  [v4 setHandler:v5];
  if (v3)
  {
    [*(a1 + 40) setGeneratedPassword:v3];
  }
}

void __121___SFFormAutoFillController_fillCurrentAutomaticStrongPasswordInCurrentFrameBlurringAfterSubstitution_completionHandler___block_invoke_3(uint64_t a1, void *a2)
{
  v7 = a2;
  objc_storeStrong((*(*(a1 + 48) + 8) + 40), a2);
  v4 = [v7 copy];
  v5 = *(a1 + 32);
  v6 = *(v5 + 152);
  *(v5 + 152) = v4;

  dispatch_group_leave(*(a1 + 40));
}

void __121___SFFormAutoFillController_fillCurrentAutomaticStrongPasswordInCurrentFrameBlurringAfterSubstitution_completionHandler___block_invoke_4(uint64_t a1)
{
  v16 = *MEMORY[0x1E69E9840];
  v2 = [MEMORY[0x1E69C8880] isPasswordsAppInstalled];
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);
  if (v2)
  {
    v5 = [*(v3 + 56) frame];

    if (v4 != v5)
    {
      return;
    }

    v3 = *(a1 + 40);
  }

  else if (v4 != *(v3 + 160))
  {
    return;
  }

  *(v3 + 290) = 1;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v6 = *(*(*(a1 + 64) + 8) + 40);
  v7 = [v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v7)
  {
    v8 = *v12;
    do
    {
      v9 = 0;
      do
      {
        if (*v12 != v8)
        {
          objc_enumerationMutation(v6);
        }

        [*(a1 + 40) reportAutoFillOfferedType:1 forTextFieldWithID:*(*(&v11 + 1) + 8 * v9++) forFormMetadata:{*(a1 + 48), v11}];
      }

      while (v7 != v9);
      v7 = [v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v7);
  }

  v10 = *(a1 + 56);
  if (v10)
  {
    (*(v10 + 16))();
  }
}

void __74___SFFormAutoFillController_collectAllFormsMetadataWithCompletionHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __74___SFFormAutoFillController_collectAllFormsMetadataWithCompletionHandler___block_invoke_2;
    v5[3] = &unk_1E84915D8;
    v6 = *(a1 + 32);
    [WeakRetained _metadataProviderForFramesHandlesToFormsDictionary:v3 completionHandler:v5];
  }
}

void __87___SFFormAutoFillController_fillCreditCardData_inFrame_textFieldMetadata_formMetadata___block_invoke(id *a1, void *a2)
{
  v3 = a2;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __87___SFFormAutoFillController_fillCreditCardData_inFrame_textFieldMetadata_formMetadata___block_invoke_2;
  v5[3] = &unk_1E84916C8;
  objc_copyWeak(&v11, a1 + 8);
  v6 = a1[4];
  v7 = v3;
  v8 = a1[5];
  v9 = a1[6];
  v10 = a1[7];
  v4 = v3;
  dispatch_async(MEMORY[0x1E69E96A0], v5);

  objc_destroyWeak(&v11);
}

void __87___SFFormAutoFillController_fillCreditCardData_inFrame_textFieldMetadata_formMetadata___block_invoke_2(uint64_t a1)
{
  v58 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 72));
  v3 = WeakRetained;
  if (WeakRetained && *(WeakRetained + 291) == 1)
  {
    *(WeakRetained + 291) = 0;
    v4 = [MEMORY[0x1E695DF00] now];
    [v4 timeIntervalSinceDate:*(a1 + 32)];
    v6 = v5;

    v7 = *MEMORY[0x1E69C93B0];
    if (v6 <= *MEMORY[0x1E69C93B0])
    {
      v8 = [v3[7] textFieldMetadata];
      v9 = [v3[7] frame];
      [v3 stopShowingSpinnerInFormSoon:v8 textFieldMetadata:v9 frame:v7 - v6];
    }

    else
    {
      v8 = [v3[7] textFieldMetadata];
      v9 = [v3[7] frame];
      [v3 setAutoFillSpinnerVisibility:0 textFieldMetadata:v8 frame:v9];
    }

    v10 = [*(a1 + 40) cardNumber];
    v11 = [v10 length];

    if (v11)
    {
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 3221225472;
      aBlock[2] = __87___SFFormAutoFillController_fillCreditCardData_inFrame_textFieldMetadata_formMetadata___block_invoke_3;
      aBlock[3] = &unk_1E8491628;
      v54 = *(a1 + 48);
      v55 = *(a1 + 40);
      v56 = v3;
      v12 = _Block_copy(aBlock);
      if ([MEMORY[0x1E69C8880] isCrossFrameAutoFillEnabled])
      {
        v49[0] = MEMORY[0x1E69E9820];
        v49[1] = 3221225472;
        v49[2] = __87___SFFormAutoFillController_fillCreditCardData_inFrame_textFieldMetadata_formMetadata___block_invoke_4;
        v49[3] = &unk_1E8491678;
        v49[4] = v3;
        v13 = *(a1 + 56);
        v14 = *(a1 + 64);
        v15 = *(a1 + 40);
        v16 = *(a1 + 48);
        *&v17 = v15;
        *(&v17 + 1) = v16;
        *&v18 = v13;
        *(&v18 + 1) = v14;
        v50 = v18;
        v51 = v17;
        v52 = v12;
        [v3 collectAllFormsMetadataWithCompletionHandler:v49];
      }

      else
      {
        v47 = 0;
        v48 = 0;
        v46 = 0;
        [_SFFormDataController getFormFieldValues:&v48 andFieldToFocus:&v47 andCreditCardDataTypesThatWillBeFilled:&v46 forCreditCardForm:*(a1 + 64) fromCreditCardData:*(a1 + 40)];
        v19 = v48;
        v20 = v47;
        v21 = v46;
        v22 = [*(a1 + 48) fieldsToObscureWhenFillingCreditCard:*(a1 + 40) formMetadata:*(a1 + 64)];
        v44 = 0u;
        v45 = 0u;
        v42 = 0u;
        v43 = 0u;
        v31 = v20;
        v23 = [v19 allKeys];
        v24 = [v23 countByEnumeratingWithState:&v42 objects:v57 count:16];
        if (v24)
        {
          v25 = *v43;
          do
          {
            v26 = 0;
            do
            {
              if (*v43 != v25)
              {
                objc_enumerationMutation(v23);
              }

              [v3 reportAutoFillOfferedType:3 forTextFieldWithID:*(*(&v42 + 1) + 8 * v26++) forFormMetadata:*(a1 + 64)];
            }

            while (v24 != v26);
            v24 = [v23 countByEnumeratingWithState:&v42 objects:v57 count:16];
          }

          while (v24);
        }

        LOBYTE(v30) = 0;
        [v3 autoFillFormInFrame:*(a1 + 56) withValues:v19 setAutoFilled:1 focusFieldAfterFilling:1 fieldToFocus:v31 fieldsToObscure:v22 submitForm:v30];
        v27 = [*(a1 + 56) frameHandle];
        v28 = [*(a1 + 64) uniqueID];
        v36 = 0;
        v37 = &v36;
        v38 = 0x3032000000;
        v39 = __Block_byref_object_copy__0;
        v40 = __Block_byref_object_dispose__0;
        v41 = [MEMORY[0x1E695DF90] dictionary];
        v32[0] = MEMORY[0x1E69E9820];
        v32[1] = 3221225472;
        v32[2] = __87___SFFormAutoFillController_fillCreditCardData_inFrame_textFieldMetadata_formMetadata___block_invoke_6;
        v32[3] = &unk_1E84916A0;
        v29 = v27;
        v34 = &v36;
        v35 = v28;
        v33 = v29;
        [v21 enumerateKeysAndObjectsUsingBlock:v32];
        objc_storeStrong(v3 + 42, v37[5]);
        v12[2](v12);

        _Block_object_dispose(&v36, 8);
      }
    }

    else
    {
      [v3[7] presentUnavailableVirtualCardAlert];
    }
  }
}

uint64_t __87___SFFormAutoFillController_fillCreditCardData_inFrame_textFieldMetadata_formMetadata___block_invoke_3(uint64_t a1)
{
  [*(a1 + 32) markCreditCardDataAsMostRecentlyUsed:*(a1 + 40)];
  objc_storeStrong((*(a1 + 48) + 320), *(a1 + 40));
  if ([*(a1 + 40) isVirtualCard])
  {
    v2 = *(*(a1 + 48) + 328);
    if (!v2)
    {
      v3 = [MEMORY[0x1E695DFA8] set];
      v4 = *(a1 + 48);
      v5 = *(v4 + 328);
      *(v4 + 328) = v3;

      v2 = *(*(a1 + 48) + 328);
    }

    v6 = [*(a1 + 40) cardNumber];
    [v2 addObject:v6];
  }

  [*(*(a1 + 48) + 56) setAction:4];
  v7 = *(*(a1 + 48) + 56);

  return [v7 updateAutoFillButton];
}

void __87___SFFormAutoFillController_fillCreditCardData_inFrame_textFieldMetadata_formMetadata___block_invoke_4(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = MEMORY[0x1E69C8F30];
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 8));
  v6 = [*(a1 + 40) frameHandle];
  v7 = *(a1 + 48);
  v8 = *(a1 + 56);
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __87___SFFormAutoFillController_fillCreditCardData_inFrame_textFieldMetadata_formMetadata___block_invoke_5;
  v9[3] = &unk_1E8491650;
  v9[4] = *(a1 + 32);
  v10 = *(a1 + 64);
  v11 = *(a1 + 56);
  v12 = *(a1 + 72);
  [v4 getCreditCardControlValuesForFillingInWebView:WeakRetained originatingInFrame:v6 forForm:v7 withMetadataProvider:v3 andCreditCardData:v8 completionHandler:v9];
}

void __87___SFFormAutoFillController_fillCreditCardData_inFrame_textFieldMetadata_formMetadata___block_invoke_5(uint64_t a1, void *a2, void *a3, void *a4)
{
  v44 = *MEMORY[0x1E69E9840];
  v7 = a2;
  v28 = a3;
  v29 = a3;
  v33 = a4;
  v38 = 0u;
  v39 = 0u;
  v40 = 0u;
  v41 = 0u;
  obj = v7;
  v8 = [obj countByEnumeratingWithState:&v38 objects:v43 count:16];
  if (v8)
  {
    v31 = *v39;
    do
    {
      v32 = v8;
      for (i = 0; i != v32; ++i)
      {
        if (*v39 != v31)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v38 + 1) + 8 * i);
        v11 = [v10 frameAssociatedFormMetadata];
        v12 = [v11 formMetadata];

        v36 = 0u;
        v37 = 0u;
        v34 = 0u;
        v35 = 0u;
        v13 = [v10 controlIDsToValues];
        v14 = [v13 allKeys];

        v15 = [v14 countByEnumeratingWithState:&v34 objects:v42 count:16];
        if (v15)
        {
          v16 = *v35;
          do
          {
            for (j = 0; j != v15; ++j)
            {
              if (*v35 != v16)
              {
                objc_enumerationMutation(v14);
              }

              [*(a1 + 32) reportAutoFillOfferedType:3 forTextFieldWithID:*(*(&v34 + 1) + 8 * j) forFormMetadata:v12];
            }

            v15 = [v14 countByEnumeratingWithState:&v34 objects:v42 count:16];
          }

          while (v15);
        }

        v18 = [*(a1 + 40) fieldsToObscureWhenFillingCreditCard:*(a1 + 48) formMetadata:v12];
        v19 = [v33 formID];
        if (v19 == [v12 uniqueID])
        {
          v20 = [v33 controlID];
        }

        else
        {
          v20 = 0;
        }

        v21 = *(a1 + 32);
        v22 = [SFFormAutoFillFrameHandle alloc];
        v23 = [v10 frameAssociatedFormMetadata];
        v24 = [v23 frameInfo];
        v25 = [(SFFormAutoFillFrameHandle *)v22 initWithFrameInfo:v24];
        v26 = [v10 controlIDsToValues];
        LOBYTE(v27) = 0;
        [v21 autoFillFormInFrame:v25 withValues:v26 setAutoFilled:1 focusFieldAfterFilling:1 fieldToFocus:v20 fieldsToObscure:v18 submitForm:v27];
      }

      v8 = [obj countByEnumeratingWithState:&v38 objects:v43 count:16];
    }

    while (v8);
  }

  objc_storeStrong((*(a1 + 32) + 336), v28);
  (*(*(a1 + 56) + 16))();
}

void __87___SFFormAutoFillController_fillCreditCardData_inFrame_textFieldMetadata_formMetadata___block_invoke_6(void *a1, void *a2, void *a3)
{
  v7 = a2;
  v5 = a3;
  v6 = [objc_alloc(MEMORY[0x1E69C9760]) initWithFrameHandle:a1[4] formID:a1[6] controlID:v7];
  [*(*(a1[5] + 8) + 40) setObject:v5 forKeyedSubscript:v6];
}

void __57___SFFormAutoFillController_showSpinnerInFormSoon_frame___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (WeakRetained)
  {
    [WeakRetained[30] invalidate];
    v2 = WeakRetained[30];
    WeakRetained[30] = 0;

    if (*(WeakRetained + 291))
    {
      [WeakRetained setAutoFillSpinnerVisibility:1 textFieldMetadata:*(a1 + 32) frame:*(a1 + 40)];
    }
  }
}

void __82___SFFormAutoFillController_stopShowingSpinnerInFormSoon_textFieldMetadata_frame___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (WeakRetained)
  {
    [WeakRetained[31] invalidate];
    v2 = WeakRetained[31];
    WeakRetained[31] = 0;

    [WeakRetained setAutoFillSpinnerVisibility:0 textFieldMetadata:*(a1 + 32) frame:*(a1 + 40)];
  }
}

void __82___SFFormAutoFillController_clearAutoFilledCreditCardFieldsWithCompletionHandler___block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v11 = WeakRetained;
  if (WeakRetained)
  {
    v12 = objc_loadWeakRetained(WeakRetained + 1);
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __82___SFFormAutoFillController_clearAutoFilledCreditCardFieldsWithCompletionHandler___block_invoke_2;
    v13[3] = &unk_1E8491740;
    objc_copyWeak(&v16, (a1 + 32));
    v14 = v8;
    v15 = v9;
    [v12 safari_getFrameInfoForFrameWithHandle:v7 completionHandler:v13];

    objc_destroyWeak(&v16);
  }
}

void __82___SFFormAutoFillController_clearAutoFilledCreditCardFieldsWithCompletionHandler___block_invoke_2(uint64_t a1, void *a2)
{
  v6 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (WeakRetained)
  {
    v4 = *(a1 + 32);
    v5 = [[SFFormAutoFillFrameHandle alloc] initWithFrameInfo:v6];
    [WeakRetained _clearFieldsAndSetFormControlsToNotAutoFilled:v4 inFrame:v5 completionHandler:*(a1 + 40)];
  }
}

void __99___SFFormAutoFillController__collectDiagnosticsForAutoFillIncludingPageContents_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v7 = a2;
  v3 = [v7 allValues];
  v4 = [v3 safari_flattenedArray];
  v5 = [MEMORY[0x1E69C8F38] visualOrderComparator];
  v6 = [v4 sortedArrayUsingComparator:v5];
  [*(a1 + 32) setFormMetadata:v6];

  (*(*(a1 + 40) + 16))();
}

void __89___SFFormAutoFillController__presentAutoFillInternalFeedbackActivityNotificationIfNeeded__block_invoke(uint64_t a1, void *a2)
{
  v4 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    [*(a1 + 32) presentAutoFillInternalFeedbackToastForFormAutoFillController:WeakRetained diagnosticsDataWithoutPageContents:v4];
  }
}

id __64___SFFormAutoFillController__addValuesAutoFilledForCurrentPage___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = 0;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v4 = [v2 stringValue];
      v3 = v2;
      v2 = v4;
    }

    else
    {
      v3 = v2;
      v2 = 0;
    }
  }

  return v2;
}

void __66___SFFormAutoFillController_fetchIconForURLWithCompletionHandler___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 touchIcon];
  (*(v2 + 16))(v2);
}

void __83___SFFormAutoFillController_handleDidSaveAccountWithGeneratedPasswordNotification___block_invoke(uint64_t a1, uint64_t a2)
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __83___SFFormAutoFillController_handleDidSaveAccountWithGeneratedPasswordNotification___block_invoke_2;
  block[3] = &unk_1E8491828;
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v6 = a2;
  block[4] = v2;
  v5 = v3;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

void __83___SFFormAutoFillController_handleDidSaveAccountWithGeneratedPasswordNotification___block_invoke_2(uint64_t a1)
{
  if (*(a1 + 48) == 2)
  {
    v2 = WBS_LOG_CHANNEL_PREFIXAutoFill();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      *v9 = 0;
      _os_log_impl(&dword_1D4644000, v2, OS_LOG_TYPE_DEFAULT, "Scheduling account saved notification", v9, 2u);
    }

    v3 = [MEMORY[0x1E69C89C0] sharedNotificationManager];
    [v3 schedulePasswordSavedNotificationForSavedAccount:*(a1 + 40) completionHandler:&__block_literal_global_292];

    [*(a1 + 32) _dismissKeyboardAndSimulateCarriageReturnKeyEvents:0];
    *(*(a1 + 32) + 289) = 1;
  }

  else
  {
    v4 = [*(a1 + 32) _customInputViewFromAutoFillInputSession];
    if (v4)
    {
      v5 = WBS_LOG_CHANNEL_PREFIXAutoFill();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_1D4644000, v5, OS_LOG_TYPE_DEFAULT, "Transitioning AutoFill view to Strong Password Saved view", buf, 2u);
      }

      v6 = [objc_alloc(MEMORY[0x1E69BC7D8]) initWithMode:2];
      v7 = *(a1 + 32);
      v8 = *(v7 + 272);
      *(v7 + 272) = v6;

      [*(*(a1 + 32) + 272) setDelegate:?];
      [v4 replaceContentsOfViewWithStrongPasswordIntroductionViewController:*(*(a1 + 32) + 272)];
    }
  }
}

@end