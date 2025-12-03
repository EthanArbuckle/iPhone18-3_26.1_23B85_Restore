@interface AFUIAutoFillCreditCardController
+ (id)dateStringTextContentType:(id)type date:(id)date placeholderHint:(id)hint;
- (AFUIAutoFillCreditCardController)initWithDocumentTraits:(id)traits documentState:(id)state presentingViewController:(id)controller textOperationsHandler:(id)handler;
- (AFUIModalUIDelegate)modalUIDelegate;
- (UIViewController)presentingViewController;
- (double)_maximumSuggestionsForReturnedSuggestions:(double)suggestions;
- (id)_menuUIElementsForSuggestions:(id)suggestions;
- (void)_generateSuggestions:(id)suggestions;
- (void)_openSettings;
- (void)_performTextOperationsWithSuggestion:(id)suggestion;
@end

@implementation AFUIAutoFillCreditCardController

- (AFUIAutoFillCreditCardController)initWithDocumentTraits:(id)traits documentState:(id)state presentingViewController:(id)controller textOperationsHandler:(id)handler
{
  traitsCopy = traits;
  stateCopy = state;
  controllerCopy = controller;
  handlerCopy = handler;
  v20.receiver = self;
  v20.super_class = AFUIAutoFillCreditCardController;
  v15 = [(AFUIAutoFillCreditCardController *)&v20 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_documentState, state);
    objc_storeStrong(&v16->_documentTraits, traits);
    v17 = MEMORY[0x1D38AFC90](handlerCopy);
    performTextOperations = v16->_performTextOperations;
    v16->_performTextOperations = v17;

    objc_storeWeak(&v16->_presentingViewController, controllerCopy);
  }

  return v16;
}

- (double)_maximumSuggestionsForReturnedSuggestions:(double)suggestions
{
  presentingViewController = [(AFUIAutoFillCreditCardController *)self presentingViewController];
  view = [presentingViewController view];
  window = [view window];
  windowScene = [window windowScene];
  if (([windowScene interfaceOrientation] - 3) >= 2)
  {
    v8 = 3.0;
  }

  else
  {
    v8 = 1.0;
  }

  if (AFUICanDisplayAllSuggestions())
  {
    result = 3.0;
  }

  else
  {
    result = v8;
  }

  if (result >= suggestions)
  {
    return suggestions;
  }

  return result;
}

- (void)_generateSuggestions:(id)suggestions
{
  suggestionsCopy = suggestions;
  objc_initWeak(&location, self);
  mEMORY[0x1E698E1C0] = [MEMORY[0x1E698E1C0] sharedInstance];
  documentState = [(AFUIAutoFillCreditCardController *)self documentState];
  v6DocumentState = [documentState documentState];
  contextBeforeInput = [v6DocumentState contextBeforeInput];

  if (objc_opt_respondsToSelector())
  {
    documentTraits = [(AFUIAutoFillCreditCardController *)self documentTraits];
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __57__AFUIAutoFillCreditCardController__generateSuggestions___block_invoke;
    v10[3] = &unk_1E8424AB0;
    v11 = suggestionsCopy;
    objc_copyWeak(&v12, &location);
    [mEMORY[0x1E698E1C0] generateAutoFillSuggestionsWithAutoFillMode:9 textPrefix:contextBeforeInput documentTraits:documentTraits externalizedContext:0 completionHandler:v10];

    objc_destroyWeak(&v12);
  }

  objc_destroyWeak(&location);
}

void __57__AFUIAutoFillCreditCardController__generateSuggestions___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v5 = [WeakRetained _menuUIElementsForSuggestions:v4];

  (*(v3 + 16))(v3, v5);
}

- (id)_menuUIElementsForSuggestions:(id)suggestions
{
  v47[1] = *MEMORY[0x1E69E9840];
  suggestionsCopy = suggestions;
  array = [MEMORY[0x1E695DF70] array];
  objc_initWeak(&location, self);
  [(AFUIAutoFillCreditCardController *)self setHasSuggestions:0];
  v38 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"creditcard"];
  -[AFUIAutoFillCreditCardController _maximumSuggestionsForReturnedSuggestions:](self, "_maximumSuggestionsForReturnedSuggestions:", [suggestionsCopy count]);
  v5 = v4;
  if (v4 > 0.0)
  {
    v6 = 0;
    do
    {
      v7 = [suggestionsCopy objectAtIndex:v6];
      creditCardPayload = [v7 creditCardPayload];
      v9 = [creditCardPayload mutableCopy];

      v10 = [v9 objectForKey:@"cc-exp"];
      if (v10)
      {
        v11 = [AFUIAutoFillCreditCardController dateStringTextContentType:@"cc-exp" date:v10 placeholderHint:0];
        [v9 setObject:v11 forKey:@"cc-exp"];

        v12 = [AFUIAutoFillCreditCardController dateStringTextContentType:@"cc-exp-month" date:v10 placeholderHint:0];
        [v9 setObject:v12 forKey:@"cc-exp-month"];

        v13 = [AFUIAutoFillCreditCardController dateStringTextContentType:@"cc-exp-year" date:v10 placeholderHint:0];
        [v9 setObject:v13 forKey:@"cc-exp-year"];
      }

      v14 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
      v15 = [v14 localizedStringForKey:@"Ending in " value:&stru_1F4E9A028 table:@"Localizable"];

      subTitle = [v7 subTitle];
      if (subTitle)
      {
        subTitle2 = [v7 subTitle];
        v17 = subTitle2;
      }

      else
      {
        v17 = @"••••";
      }

      v18 = [v15 stringByAppendingString:v17];

      if (subTitle)
      {
      }

      v19 = objc_alloc(MEMORY[0x1E698E1B8]);
      title = [v7 title];
      subTitle3 = [v7 subTitle];
      v22 = [v19 initWithTitle:title subTitle:subTitle3 creditCardPayload:v9 customInfoType:{objc_msgSend(v7, "customInfoType")}];

      v23 = MEMORY[0x1E69DC628];
      v43[0] = MEMORY[0x1E69E9820];
      v43[1] = 3221225472;
      v43[2] = __66__AFUIAutoFillCreditCardController__menuUIElementsForSuggestions___block_invoke;
      v43[3] = &unk_1E84244B8;
      objc_copyWeak(&v45, &location);
      v24 = v22;
      v44 = v24;
      v25 = [v23 actionWithHandler:v43];
      title2 = [v7 title];
      [v25 setTitle:title2];

      [v25 setSubtitle:v18];
      [v25 setImage:v38];
      [array addObject:v25];

      objc_destroyWeak(&v45);
      ++v6;
    }

    while (v5 > v6);
  }

  [(AFUIAutoFillCreditCardController *)self setHasSuggestions:v5 > 0.0];
  v27 = MEMORY[0x1E69DC628];
  v41[0] = MEMORY[0x1E69E9820];
  v41[1] = 3221225472;
  v41[2] = __66__AFUIAutoFillCreditCardController__menuUIElementsForSuggestions___block_invoke_2;
  v41[3] = &unk_1E84244E0;
  objc_copyWeak(&v42, &location);
  v28 = [v27 actionWithHandler:v41];
  v29 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
  v30 = [v29 localizedStringForKey:@"Manage Cards…" value:&stru_1F4E9A028 table:@"Localizable"];
  [v28 setTitle:v30];

  v31 = MEMORY[0x1E69DCC60];
  v47[0] = v28;
  v32 = [MEMORY[0x1E695DEC8] arrayWithObjects:v47 count:1];
  v33 = [v31 menuWithTitle:&stru_1F4E9A028 image:0 identifier:0 options:1 children:v32];

  [array addObject:v33];
  v34 = [MEMORY[0x1E69DCC60] menuWithChildren:array];

  objc_destroyWeak(&v42);
  objc_destroyWeak(&location);

  v35 = *MEMORY[0x1E69E9840];

  return v34;
}

void __66__AFUIAutoFillCreditCardController__menuUIElementsForSuggestions___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _performTextOperationsWithSuggestion:*(a1 + 32)];
}

void __66__AFUIAutoFillCreditCardController__menuUIElementsForSuggestions___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _openSettings];
}

+ (id)dateStringTextContentType:(id)type date:(id)date placeholderHint:(id)hint
{
  typeCopy = type;
  v7 = MEMORY[0x1E695DEE8];
  dateCopy = date;
  v9 = [v7 alloc];
  v10 = [v9 initWithCalendarIdentifier:*MEMORY[0x1E695D850]];
  v11 = [v10 components:12 fromDate:dateCopy];

  if ([typeCopy isEqualToString:@"cc-exp"])
  {
    [MEMORY[0x1E696AEC0] stringWithFormat:@"%02ld/%02ld", objc_msgSend(v11, "month"), objc_msgSend(v11, "year")];
    v14 = LABEL_8:;
    goto LABEL_9;
  }

  if ([typeCopy isEqualToString:@"cc-exp-month"])
  {
    v12 = MEMORY[0x1E696AEC0];
    month = [v11 month];
LABEL_7:
    [v12 stringWithFormat:@"%02ld", month, v16];
    goto LABEL_8;
  }

  if ([typeCopy isEqualToString:@"cc-exp-year"])
  {
    v12 = MEMORY[0x1E696AEC0];
    month = [v11 year];
    goto LABEL_7;
  }

  v14 = 0;
LABEL_9:

  return v14;
}

- (void)_performTextOperationsWithSuggestion:(id)suggestion
{
  suggestionCopy = suggestion;
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __73__AFUIAutoFillCreditCardController__performTextOperationsWithSuggestion___block_invoke;
  v16[3] = &unk_1E84245A8;
  v16[4] = self;
  v5 = suggestionCopy;
  v17 = v5;
  v6 = MEMORY[0x1D38AFC90](v16);
  v7 = self->_documentTraits;
  modalUIDelegate = [(AFUIAutoFillCreditCardController *)self modalUIDelegate];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __73__AFUIAutoFillCreditCardController__performTextOperationsWithSuggestion___block_invoke_4;
  v12[3] = &unk_1E84245D0;
  v13 = v5;
  v14 = v7;
  v15 = v6;
  v9 = v6;
  v10 = v7;
  v11 = v5;
  [modalUIDelegate authenticationWillBeginForSessionUUID:0 completion:v12];
}

void __73__AFUIAutoFillCreditCardController__performTextOperationsWithSuggestion___block_invoke(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  v6 = [*(a1 + 32) modalUIDelegate];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __73__AFUIAutoFillCreditCardController__performTextOperationsWithSuggestion___block_invoke_2;
  v9[3] = &unk_1E8424B00;
  v12 = a2;
  v7 = *(a1 + 40);
  v9[4] = *(a1 + 32);
  v10 = v5;
  v11 = v7;
  v8 = v5;
  [v6 authenticationDidEndForSessionUUID:0 completion:v9];
}

void __73__AFUIAutoFillCreditCardController__performTextOperationsWithSuggestion___block_invoke_2(uint64_t a1)
{
  if (*(a1 + 56) == 1)
  {
    v17 = v1;
    v18 = v2;
    v4 = [MEMORY[0x1E698E1C0] sharedInstance];
    v5 = objc_opt_respondsToSelector();

    if (v5)
    {
      v6 = [MEMORY[0x1E698E1C0] sharedInstance];
      v7 = [*(a1 + 32) documentState];
      v8 = [v7 documentState];
      v9 = [v8 contextBeforeInput];
      v10 = [*(a1 + 32) documentTraits];
      v14[0] = MEMORY[0x1E69E9820];
      v14[1] = 3221225472;
      v14[2] = __73__AFUIAutoFillCreditCardController__performTextOperationsWithSuggestion___block_invoke_3;
      v14[3] = &unk_1E8424AD8;
      v11 = *(a1 + 40);
      v12 = *(a1 + 48);
      v13 = *(a1 + 32);
      v15 = v12;
      v16 = v13;
      [v6 generateAutoFillSuggestionsWithAutoFillMode:9 textPrefix:v9 documentTraits:v10 externalizedContext:v11 completionHandler:v14];
    }
  }
}

void __73__AFUIAutoFillCreditCardController__performTextOperationsWithSuggestion___block_invoke_3(uint64_t a1, void *a2)
{
  v31 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v4 = [v3 countByEnumeratingWithState:&v26 objects:v30 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = 0;
    v7 = *v27;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v27 != v7)
        {
          objc_enumerationMutation(v3);
        }

        v9 = *(*(&v26 + 1) + 8 * i);
        v10 = [*(a1 + 32) title];
        v11 = [v9 title];
        v12 = [v10 isEqualToString:v11];

        if (v12)
        {
          v13 = v9;

          v6 = v13;
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v26 objects:v30 count:16];
    }

    while (v5);
  }

  else
  {
    v6 = 0;
  }

  v14 = objc_alloc_init(MEMORY[0x1E69C6FA8]);
  v15 = [*(a1 + 32) creditCardPayload];
  v16 = [*(a1 + 40) documentTraits];
  v17 = [v16 textInputTraits];
  v18 = [v17 textContentType];
  v19 = [v15 objectForKey:v18];

  if (!v19)
  {
    v20 = [v6 creditCardPayload];
    v19 = [v20 objectForKey:*MEMORY[0x1E698E0B8]];
  }

  v21 = [*(a1 + 40) documentTraits];
  [v14 _assertOrInsertText:v19 documentTraits:v21];

  v22 = [v14 keyboardOutput];
  v23 = [v22 customInfo];
  [v23 setObject:v19 forKey:*MEMORY[0x1E698E130]];

  v24 = [*(a1 + 40) performTextOperations];
  (v24)[2](v24, v14);

  v25 = *MEMORY[0x1E69E9840];
}

void __73__AFUIAutoFillCreditCardController__performTextOperationsWithSuggestion___block_invoke_4(void *a1)
{
  v2 = [MEMORY[0x1E698E1C0] sharedInstance];
  v3 = objc_opt_respondsToSelector();

  if (v3)
  {
    v4 = [MEMORY[0x1E698E1C0] sharedInstance];
    [v4 authenticateIfNecessaryForSuggestion:a1[4] documentTraits:a1[5] withCompletionHandler:a1[6]];
  }
}

- (void)_openSettings
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x2050000000;
  v2 = getPKAutoFillCardManagerClass_softClass_0;
  v11 = getPKAutoFillCardManagerClass_softClass_0;
  if (!getPKAutoFillCardManagerClass_softClass_0)
  {
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __getPKAutoFillCardManagerClass_block_invoke_0;
    v7[3] = &unk_1E84248A0;
    v7[4] = &v8;
    __getPKAutoFillCardManagerClass_block_invoke_0(v7);
    v2 = v9[3];
  }

  v3 = v2;
  _Block_object_dispose(&v8, 8);
  v4 = objc_alloc_init(v2);
  defaultWorkspace = [MEMORY[0x1E6963608] defaultWorkspace];
  urlToListOfCards = [v4 urlToListOfCards];
  [defaultWorkspace openSensitiveURL:urlToListOfCards withOptions:0];
}

- (AFUIModalUIDelegate)modalUIDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->modalUIDelegate);

  return WeakRetained;
}

- (UIViewController)presentingViewController
{
  WeakRetained = objc_loadWeakRetained(&self->_presentingViewController);

  return WeakRetained;
}

@end