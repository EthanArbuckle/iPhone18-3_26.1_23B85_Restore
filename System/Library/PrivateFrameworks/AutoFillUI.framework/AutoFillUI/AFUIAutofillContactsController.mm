@interface AFUIAutofillContactsController
- (AFUIAutofillContactsController)initWithDocumentTraits:(id)traits presentingViewController:(id)controller textOperationsHandler:(id)handler;
- (AFUIModalUIDelegate)modalUIDelegate;
- (UIViewController)presentingViewController;
- (double)_maximumSuggestionsForReturnedSuggestions:(double)suggestions;
- (id)_chooseOtherMenu;
- (id)_meAction;
- (void)_addCustomInfoActions:(id)actions;
- (void)_generateSuggestions:(id)suggestions;
- (void)_performCustomInfoTextOperations:(id)operations;
- (void)_presentContactPicker;
- (void)_presentCustomizeUI;
- (void)contactPickerDidCancel;
- (void)userSelectedContactProperties:(id)properties;
@end

@implementation AFUIAutofillContactsController

- (AFUIAutofillContactsController)initWithDocumentTraits:(id)traits presentingViewController:(id)controller textOperationsHandler:(id)handler
{
  traitsCopy = traits;
  controllerCopy = controller;
  handlerCopy = handler;
  v19.receiver = self;
  v19.super_class = AFUIAutofillContactsController;
  v12 = [(AFUIAutofillContactsController *)&v19 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_documentTraits, traits);
    v14 = MEMORY[0x1D38AFC90](handlerCopy);
    performTextOperations = v13->_performTextOperations;
    v13->_performTextOperations = v14;

    v16 = objc_alloc_init(AFUIContactsController);
    contactsController = v13->_contactsController;
    v13->_contactsController = v16;

    [(AFUIContactsController *)v13->_contactsController setContactPropertyPickerDelegate:v13];
    objc_storeWeak(&v13->_presentingViewController, controllerCopy);
  }

  return v13;
}

- (void)userSelectedContactProperties:(id)properties
{
  propertiesCopy = properties;
  textInputTraits = [(RTIDocumentTraits *)self->_documentTraits textInputTraits];
  textContentType = [textInputTraits textContentType];
  v6 = [propertiesCopy objectForKey:textContentType];

  if (!v6)
  {
    v6 = [propertiesCopy objectForKey:*MEMORY[0x1E698E130]];
  }

  v7 = objc_alloc_init(MEMORY[0x1E69C6FA8]);
  [v7 _assertOrInsertText:v6 documentTraits:self->_documentTraits];
  v8 = [propertiesCopy mutableCopy];
  keyboardOutput = [v7 keyboardOutput];
  [keyboardOutput setCustomInfo:v8];

  performTextOperations = [(AFUIAutofillContactsController *)self performTextOperations];
  (performTextOperations)[2](performTextOperations, v7);

  modalUIDelegate = [(AFUIAutofillContactsController *)self modalUIDelegate];
  [modalUIDelegate contactsUIDidEndForSessionUUID:0 completion:0];
}

- (void)contactPickerDidCancel
{
  modalUIDelegate = [(AFUIAutofillContactsController *)self modalUIDelegate];
  [modalUIDelegate contactsUIDidEndForSessionUUID:0 completion:0];
}

- (double)_maximumSuggestionsForReturnedSuggestions:(double)suggestions
{
  presentingViewController = [(AFUIAutofillContactsController *)self presentingViewController];
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
  v4 = MEMORY[0x1E695DF70];
  suggestionsCopy = suggestions;
  array = [v4 array];
  [(AFUIAutofillContactsController *)self _addCustomInfoActions:?];
  if (_os_feature_enabled_impl())
  {
    _meAction = [(AFUIAutofillContactsController *)self _meAction];
    [array addObject:_meAction];
  }

  -[AFUIAutofillContactsController setHasSuggestions:](self, "setHasSuggestions:", [array count] != 0);
  _chooseOtherMenu = [(AFUIAutofillContactsController *)self _chooseOtherMenu];
  [array addObject:_chooseOtherMenu];

  v8 = [MEMORY[0x1E69DCC60] menuWithChildren:array];
  suggestionsCopy[2](suggestionsCopy, v8);
}

- (void)_addCustomInfoActions:(id)actions
{
  actionsCopy = actions;
  contactsController = [(AFUIAutofillContactsController *)self contactsController];
  documentTraits = [(AFUIAutofillContactsController *)self documentTraits];
  textInputTraits = [documentTraits textInputTraits];
  textContentType = [textInputTraits textContentType];
  v8 = [contactsController meContactInfosForTextContentType:textContentType];

  v41 = v8;
  -[AFUIAutofillContactsController _maximumSuggestionsForReturnedSuggestions:](self, "_maximumSuggestionsForReturnedSuggestions:", [v8 count]);
  if (v9 > 0.0)
  {
    v10 = v9;
    v11 = 0;
    v39 = v47;
    while (1)
    {
      v12 = [v41 objectAtIndex:{v11, v39}];
      documentTraits2 = [(AFUIAutofillContactsController *)self documentTraits];
      textInputTraits2 = [documentTraits2 textInputTraits];
      textContentType2 = [textInputTraits2 textContentType];
      v16 = [v12 propertyForTextContentType:textContentType2];

      if ([v16 length])
      {
        objc_initWeak(&location, self);
        v17 = MEMORY[0x1E69DC628];
        v46[0] = MEMORY[0x1E69E9820];
        v46[1] = 3221225472;
        v47[0] = __56__AFUIAutofillContactsController__addCustomInfoActions___block_invoke;
        v47[1] = &unk_1E84244B8;
        objc_copyWeak(&v49, &location);
        v18 = v12;
        v48 = v18;
        v19 = [v17 actionWithHandler:v46];
        titleText = [v18 titleText];
        [v19 setTitle:titleText];

        documentTraits3 = [(AFUIAutofillContactsController *)self documentTraits];
        autofillContext = [documentTraits3 autofillContext];
        v23 = [v18 subtitleTextForAutoFillContext:autofillContext];
        [v19 setSubtitle:v23];

        v24 = MEMORY[0x1E69DCAB8];
        label = [v18 label];
        v26 = [AFUIContactInfo symbolNameForLabel:label];
        v27 = [v24 systemImageNamed:v26];
        [v19 setImage:v27];

        [actionsCopy addObject:v19];
        objc_destroyWeak(&v49);
        objc_destroyWeak(&location);
      }

      documentTraits4 = [(AFUIAutofillContactsController *)self documentTraits];
      textInputTraits3 = [documentTraits4 textInputTraits];
      textContentType3 = [textInputTraits3 textContentType];
      if (AFTextContentTypeIsInNameSet(textContentType3))
      {
        break;
      }

      v45 = v16;
      documentTraits5 = [(AFUIAutofillContactsController *)self documentTraits];
      textInputTraits4 = [documentTraits5 textInputTraits];
      textContentType4 = [textInputTraits4 textContentType];
      if (AFTextContentTypeIsInBirthdaySet(textContentType4))
      {

        v16 = v45;
        break;
      }

      [(AFUIAutofillContactsController *)self documentTraits];
      v34 = v11;
      v36 = v35 = self;
      [v36 textInputTraits];
      v37 = v44 = v12;
      [v37 textContentType];
      v38 = v42 = documentTraits4;
      v43 = AFTextContentTypeIsInJobSet(v38);

      self = v35;
      if ((v43 & 1) == 0)
      {
        v11 = v34 + 1;
        if (v10 > (v34 + 1))
        {
          continue;
        }
      }

      goto LABEL_12;
    }
  }

LABEL_12:
}

void __56__AFUIAutofillContactsController__addCustomInfoActions___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v2 = [*(a1 + 32) customInfoFromContactInfo];
  [WeakRetained _performCustomInfoTextOperations:v2];
}

- (id)_meAction
{
  objc_initWeak(&location, self);
  v3 = MEMORY[0x1E69DC628];
  v13 = MEMORY[0x1E69E9820];
  v14 = 3221225472;
  v15 = __43__AFUIAutofillContactsController__meAction__block_invoke;
  v16 = &unk_1E84244E0;
  objc_copyWeak(&v17, &location);
  v4 = [v3 actionWithHandler:&v13];
  v5 = [(AFUIAutofillContactsController *)self contactsController:v13];
  documentTraits = [(AFUIAutofillContactsController *)self documentTraits];
  textInputTraits = [documentTraits textInputTraits];
  textContentType = [textInputTraits textContentType];
  v9 = [v5 meContactInfosForTextContentType:textContentType];
  firstObject = [v9 firstObject];
  nameString = [firstObject nameString];
  [v4 setTitle:nameString];

  objc_destroyWeak(&v17);
  objc_destroyWeak(&location);

  return v4;
}

void __43__AFUIAutofillContactsController__meAction__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _presentCustomizeUI];
}

- (id)_chooseOtherMenu
{
  v17[1] = *MEMORY[0x1E69E9840];
  objc_initWeak(&location, self);
  v2 = MEMORY[0x1E69DC628];
  v11 = MEMORY[0x1E69E9820];
  v12 = 3221225472;
  v13 = __50__AFUIAutofillContactsController__chooseOtherMenu__block_invoke;
  v14 = &unk_1E84244E0;
  objc_copyWeak(&v15, &location);
  v3 = [v2 actionWithHandler:&v11];
  v4 = [MEMORY[0x1E696AAE8] bundleForClass:{objc_opt_class(), v11, v12, v13, v14}];
  v5 = [v4 localizedStringForKey:@"Choose Other…" value:&stru_1F4E9A028 table:@"Localizable"];
  [v3 setTitle:v5];

  v6 = MEMORY[0x1E69DCC60];
  v17[0] = v3;
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v17 count:1];
  v8 = [v6 menuWithTitle:&stru_1F4E9A028 image:0 identifier:0 options:1 children:v7];

  objc_destroyWeak(&v15);
  objc_destroyWeak(&location);
  v9 = *MEMORY[0x1E69E9840];

  return v8;
}

void __50__AFUIAutofillContactsController__chooseOtherMenu__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _presentContactPicker];
}

- (void)_performCustomInfoTextOperations:(id)operations
{
  v4 = MEMORY[0x1E69C6FA8];
  operationsCopy = operations;
  v12 = objc_alloc_init(v4);
  documentTraits = [(AFUIAutofillContactsController *)self documentTraits];
  textInputTraits = [documentTraits textInputTraits];
  textContentType = [textInputTraits textContentType];
  v9 = [operationsCopy objectForKey:textContentType];

  [v12 _assertOrInsertText:v9 documentTraits:self->_documentTraits];
  keyboardOutput = [v12 keyboardOutput];
  [keyboardOutput setCustomInfo:operationsCopy];

  performTextOperations = [(AFUIAutofillContactsController *)self performTextOperations];
  (performTextOperations)[2](performTextOperations, v12);
}

- (void)_presentContactPicker
{
  v13 = 0;
  v14 = &v13;
  v15 = 0x3032000000;
  v16 = __Block_byref_object_copy_;
  v17 = __Block_byref_object_dispose_;
  documentTraits = [(AFUIAutofillContactsController *)self documentTraits];
  textInputTraits = [documentTraits textInputTraits];
  textContentType = [textInputTraits textContentType];

  if (AFTextContentTypeIsInNameSet(v14[5]))
  {
    documentTraits2 = [(AFUIAutofillContactsController *)self documentTraits];
    autofillContext = [documentTraits2 autofillContext];
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __55__AFUIAutofillContactsController__presentContactPicker__block_invoke;
    v12[3] = &unk_1E8424690;
    v12[4] = &v13;
    [autofillContext enumerateKeysAndObjectsUsingBlock:v12];
  }

  modalUIDelegate = [(AFUIAutofillContactsController *)self modalUIDelegate];

  if (modalUIDelegate)
  {
    modalUIDelegate2 = [(AFUIAutofillContactsController *)self modalUIDelegate];
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __55__AFUIAutofillContactsController__presentContactPicker__block_invoke_2;
    v11[3] = &unk_1E84246D8;
    v11[4] = self;
    v11[5] = &v13;
    [modalUIDelegate2 contactsUIWillBeginForSessionUUID:0 completion:v11];
  }

  else
  {
    modalUIDelegate2 = [(AFUIAutofillContactsController *)self presentingViewController];
    contactsController = [(AFUIAutofillContactsController *)self contactsController];
    v10 = [contactsController allContactsViewControllerForTextContentType:v14[5]];
    [modalUIDelegate2 presentViewController:v10 animated:1 completion:&__block_literal_global_22];
  }

  _Block_object_dispose(&v13, 8);
}

void __55__AFUIAutofillContactsController__presentContactPicker__block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v7 = a2;
  if ((AFTextContentTypeIsInNameSet(v7) & 1) == 0)
  {
    if (AFTextContentTypeIsInContactSet(v7))
    {
      v6 = MEMORY[0x1E698E0E0];
    }

    else
    {
      if (!AFTextContentTypeIsInPhoneSet(v7))
      {
        goto LABEL_7;
      }

      v6 = MEMORY[0x1E698E198];
    }

    objc_storeStrong((*(*(a1 + 32) + 8) + 40), *v6);
    *a4 = 1;
  }

LABEL_7:
}

void __55__AFUIAutofillContactsController__presentContactPicker__block_invoke_2(uint64_t a1)
{
  v1[0] = MEMORY[0x1E69E9820];
  v1[1] = 3221225472;
  v1[2] = __55__AFUIAutofillContactsController__presentContactPicker__block_invoke_3;
  v1[3] = &unk_1E84246D8;
  v2 = *(a1 + 32);
  dispatch_async(MEMORY[0x1E69E96A0], v1);
}

void __55__AFUIAutofillContactsController__presentContactPicker__block_invoke_3(uint64_t a1)
{
  v4 = [*(a1 + 32) presentingViewController];
  v2 = [*(a1 + 32) contactsController];
  v3 = [v2 allContactsViewControllerForTextContentType:*(*(*(a1 + 40) + 8) + 40)];
  [v4 presentViewController:v3 animated:1 completion:&__block_literal_global_2];
}

- (void)_presentCustomizeUI
{
  presentingViewController = [(AFUIAutofillContactsController *)self presentingViewController];
  contactsController = [(AFUIAutofillContactsController *)self contactsController];
  documentTraits = [(AFUIAutofillContactsController *)self documentTraits];
  textInputTraits = [documentTraits textInputTraits];
  textContentType = [textInputTraits textContentType];
  v7 = [contactsController meCardViewControllerForTextContentType:textContentType];
  [presentingViewController presentViewController:v7 animated:1 completion:&__block_literal_global_24];
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