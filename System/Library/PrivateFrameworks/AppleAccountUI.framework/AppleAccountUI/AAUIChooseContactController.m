@interface AAUIChooseContactController
- (AAUIChooseContactController)init;
- (AAUIChooseContactController)initWithAccountManager:(id)a3;
- (AAUIChooseContactControllerDelegate)delegate;
- (BOOL)_isHandleReachable:(id)a3;
- (id)_idsReachabilityDictionaryForRecipient:(id)a3;
- (id)searchController:(id)a3 composeRecipientForAddress:(id)a4;
- (id)searchController:(id)a3 tintColorForRecipient:(id)a4;
- (void)_prepareNextButton;
- (void)_selectionCompleted;
- (void)_setupViewController;
- (void)contactPicker:(id)a3 didSelectContact:(id)a4;
- (void)contactPicker:(id)a3 didSelectContactProperty:(id)a4;
- (void)didTapTextViewAccessoryButtonForSearchController:(id)a3;
- (void)fetchIDSStatusForRecipient:(id)a3;
- (void)searchController:(id)a3 didAddRecipient:(id)a4;
@end

@implementation AAUIChooseContactController

- (AAUIChooseContactController)init
{
  v5.receiver = self;
  v5.super_class = AAUIChooseContactController;
  v2 = [(AAUIChooseContactController *)&v5 init];
  v3 = v2;
  if (v2)
  {
    [(AAUIChooseContactController *)v2 _setupViewController];
  }

  return v3;
}

- (AAUIChooseContactController)initWithAccountManager:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = AAUIChooseContactController;
  v6 = [(AAUIChooseContactController *)&v9 init];
  v7 = v6;
  if (v6)
  {
    [(AAUIChooseContactController *)v6 _setupViewController];
    objc_storeStrong(&v7->_accountManager, a3);
  }

  return v7;
}

- (id)searchController:(id)a3 composeRecipientForAddress:(id)a4
{
  v11 = *MEMORY[0x1E69E9840];
  v4 = a4;
  v5 = _AAUILogSystem();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 138412290;
    v10 = v4;
    _os_log_impl(&dword_1C5355000, v5, OS_LOG_TYPE_DEFAULT, "Composing contact for address: %@", &v9, 0xCu);
  }

  if ([v4 aa_appearsToBeEmail])
  {
    v6 = 0;
  }

  else if ([v4 aa_appearsToBePhoneNumber])
  {
    v6 = 1;
  }

  else
  {
    v6 = 5;
  }

  v7 = [objc_alloc(MEMORY[0x1E6996408]) initWithContact:0 address:v4 kind:v6];

  return v7;
}

- (id)searchController:(id)a3 tintColorForRecipient:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([v7 kind] > 1)
  {
    v11 = [MEMORY[0x1E69DC888] grayColor];
  }

  else if (objc_opt_respondsToSelector())
  {
    objc_initWeak(&location, self);
    idsStatusAccessQueue = self->_idsStatusAccessQueue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __70__AAUIChooseContactController_searchController_tintColorForRecipient___block_invoke;
    block[3] = &unk_1E820BE68;
    objc_copyWeak(&v26, &location);
    v9 = v7;
    v25 = v9;
    dispatch_async(idsStatusAccessQueue, block);
    v20 = 0;
    v21 = &v20;
    v22 = 0x2020000000;
    v23 = 0;
    v10 = self->_idsStatusAccessQueue;
    v13 = MEMORY[0x1E69E9820];
    v14 = 3221225472;
    v15 = __70__AAUIChooseContactController_searchController_tintColorForRecipient___block_invoke_2;
    v16 = &unk_1E820BE90;
    objc_copyWeak(&v19, &location);
    v18 = &v20;
    v17 = v9;
    dispatch_sync(v10, &v13);
    v11 = 0;
    if (*(v21 + 24) == 1)
    {
      v11 = [MEMORY[0x1E69DC888] tintColor];
    }

    objc_destroyWeak(&v19);
    _Block_object_dispose(&v20, 8);

    objc_destroyWeak(&v26);
    objc_destroyWeak(&location);
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

void __70__AAUIChooseContactController_searchController_tintColorForRecipient___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained fetchIDSStatusForRecipient:*(a1 + 32)];
}

void __70__AAUIChooseContactController_searchController_tintColorForRecipient___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  *(*(*(a1 + 40) + 8) + 24) = [WeakRetained _isHandleReachable:*(a1 + 32)];
}

- (void)didTapTextViewAccessoryButtonForSearchController:(id)a3
{
  v6 = objc_opt_new();
  [v6 setDelegate:self];
  v4 = [(AAUIChooseContactController *)self chooseContactViewController];
  v5 = [v4 navigationController];
  [v5 presentViewController:v6 animated:1 completion:0];
}

- (void)searchController:(id)a3 didAddRecipient:(id)a4
{
  v11[1] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = [v6 recipients];
  v9 = [v8 count];

  if (v9 >= 2)
  {
    v11[0] = v7;
    v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v11 count:1];
    [v6 setRecipients:v10];
  }

  [(AAUIChooseContactController *)self _prepareNextButton];
}

- (void)contactPicker:(id)a3 didSelectContact:(id)a4
{
  v13[1] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = [AAUITrustedContactPickerViewController addressKindAndHandleForSingleAddressContact:v7];
  v9 = objc_alloc(MEMORY[0x1E6996408]);
  v10 = [v8 handle];
  v11 = [v9 initWithContact:v7 address:v10 kind:{objc_msgSend(v8, "kind")}];

  v13[0] = v11;
  v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:v13 count:1];
  [(CNAutocompleteSearchController *)self->_autocompleteSearchController setRecipients:v12];

  if (self->_directPickerViewController == v6)
  {
    [(AAUIChooseContactController *)self _selectionCompleted];
  }

  else
  {
    [(CNContactPickerViewController *)v6 dismissViewControllerAnimated:1 completion:0];
  }
}

- (void)contactPicker:(id)a3 didSelectContactProperty:(id)a4
{
  v15[1] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = [v7 value];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v9 = [v8 stringValue];
    v10 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = v8;
      v10 = 0;
    }

    else
    {
      v9 = 0;
      v10 = 5;
    }
  }

  v11 = objc_alloc(MEMORY[0x1E6996408]);
  v12 = [v7 contact];

  v13 = [v11 initWithContact:v12 address:v9 kind:v10];
  v15[0] = v13;
  v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:v15 count:1];
  [(CNAutocompleteSearchController *)self->_autocompleteSearchController setRecipients:v14];

  if (self->_directPickerViewController == v6)
  {
    [(AAUIChooseContactController *)self _selectionCompleted];
  }

  else
  {
    [(CNContactPickerViewController *)v6 dismissViewControllerAnimated:1 completion:0];
  }
}

- (void)_setupViewController
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
  idsReachabilityForRecipientHandle = self->_idsReachabilityForRecipientHandle;
  self->_idsReachabilityForRecipientHandle = v3;

  v5 = objc_alloc_init(MEMORY[0x1E695DF90]);
  idsReachabilityForUnifiedOrGroupRecipientHandle = self->_idsReachabilityForUnifiedOrGroupRecipientHandle;
  self->_idsReachabilityForUnifiedOrGroupRecipientHandle = v5;

  v7 = objc_alloc_init(MEMORY[0x1E695DF90]);
  handleToRecipient = self->_handleToRecipient;
  self->_handleToRecipient = v7;

  v9 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v10 = dispatch_queue_create("com.apple.appleaccountui.idsReachabilityAccessQueue", v9);
  idsStatusAccessQueue = self->_idsStatusAccessQueue;
  self->_idsStatusAccessQueue = v10;

  v12 = objc_alloc_init(MEMORY[0x1E698B838]);
  contactsManager = self->_contactsManager;
  self->_contactsManager = v12;

  v22 = objc_opt_new();
  v14 = [objc_alloc(MEMORY[0x1E69963C0]) initWithSearchType:1];
  autocompleteSearchController = self->_autocompleteSearchController;
  self->_autocompleteSearchController = v14;

  [(CNAutocompleteSearchController *)self->_autocompleteSearchController setDelegate:self];
  v16 = [v22 title];
  [(CNAutocompleteSearchController *)self->_autocompleteSearchController setTitle:v16];

  v17 = objc_opt_new();
  v18 = [v22 selectButtonText];
  [v17 setTitle:v18];

  [v17 setTarget:self];
  [v17 setAction:sel__selectionCompleted];
  v19 = [(CNAutocompleteSearchController *)self->_autocompleteSearchController navigationItem];
  [v19 setRightBarButtonItem:v17];

  [(AAUIChooseContactController *)self _prepareNextButton];
  v20 = objc_opt_new();
  directPickerViewController = self->_directPickerViewController;
  self->_directPickerViewController = v20;

  [(CNContactPickerViewController *)self->_directPickerViewController setDelegate:self];
}

- (void)_prepareNextButton
{
  v3 = [(CNAutocompleteSearchController *)self->_autocompleteSearchController recipients];
  v4 = [v3 count] == 1;

  v6 = [(CNAutocompleteSearchController *)self->_autocompleteSearchController navigationItem];
  v5 = [v6 rightBarButtonItem];
  [v5 setEnabled:v4];
}

- (void)_selectionCompleted
{
  v3 = [(CNAutocompleteSearchController *)self->_autocompleteSearchController recipients];
  v4 = [v3 firstObject];

  if ([v4 kind] > 1)
  {
    v10 = _AAUILogSystem();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      [(AAUIChooseContactController *)v10 _selectionCompleted];
    }
  }

  else
  {
    v5 = objc_alloc(MEMORY[0x1E698B8F0]);
    v6 = [v4 address];
    v7 = [v4 contact];
    v8 = [v5 initWithHandle:v6 contact:v7];

    v9 = [(AAUIChooseContactController *)self delegate];
    [v9 chooseContactController:self didSelectContact:v8];
  }
}

- (BOOL)_isHandleReachable:(id)a3
{
  v4 = a3;
  v5 = [(AAUIChooseContactController *)self _idsReachabilityDictionaryForRecipient:v4];
  v6 = [v4 address];
  v7 = [v5 objectForKeyedSubscript:v6];

  if (!v7 || [v7 integerValue] == -1)
  {
    v8 = 0;
  }

  else
  {
    v8 = [v7 BOOLValue];
  }

  v9 = _AAUILogSystem();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    [(AAUIChooseContactController *)v4 _isHandleReachable:v8, v9];
  }

  return v8;
}

- (id)_idsReachabilityDictionaryForRecipient:(id)a3
{
  v4 = [a3 children];
  v5 = [v4 count];
  v6 = 24;
  if (!v5)
  {
    v6 = 16;
  }

  v7 = *(&self->super.isa + v6);
  v8 = v7;

  return v7;
}

- (void)fetchIDSStatusForRecipient:(id)a3
{
  v34 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (objc_opt_respondsToSelector())
  {
    v5 = [(AAUIChooseContactController *)self _idsReachabilityDictionaryForRecipient:v4];
    v6 = [v4 address];
    v7 = [v5 objectForKeyedSubscript:v6];

    if (!v7)
    {
      v8 = [v4 address];
      v9 = [v5 objectForKeyedSubscript:v8];

      if (v9)
      {
        if ([v9 integerValue] == -1)
        {
          goto LABEL_27;
        }
      }

      else
      {
        v10 = [v4 address];
        [v5 setObject:&unk_1F44C05B8 forKeyedSubscript:v10];
      }

      v11 = [v4 children];
      v12 = [v11 count];

      if (v12)
      {
        v31 = 0u;
        v32 = 0u;
        v29 = 0u;
        v30 = 0u;
        v13 = [v4 children];
        v14 = [v13 countByEnumeratingWithState:&v29 objects:v33 count:16];
        if (v14)
        {
          v15 = *v30;
          do
          {
            v16 = 0;
            do
            {
              if (*v30 != v15)
              {
                objc_enumerationMutation(v13);
              }

              [(AAUIChooseContactController *)self fetchIDSStatusForRecipient:*(*(&v29 + 1) + 8 * v16++)];
            }

            while (v14 != v16);
            v14 = [v13 countByEnumeratingWithState:&v29 objects:v33 count:16];
          }

          while (v14);
        }
      }

      handleToRecipient = self->_handleToRecipient;
      v18 = [v4 address];
      v19 = [(NSMutableDictionary *)handleToRecipient objectForKeyedSubscript:v18];

      if (!v19 || v19 == v4)
      {
        if (v19 && v19 == v4)
        {
          goto LABEL_26;
        }
      }

      else
      {
        v20 = _AAUILogSystem();
        if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
        {
          [(AAUIChooseContactController *)v4 fetchIDSStatusForRecipient:v19, v20];
        }
      }

      v21 = self->_handleToRecipient;
      v22 = [v4 address];
      [(NSMutableDictionary *)v21 setObject:v4 forKeyedSubscript:v22];

      objc_initWeak(&location, self);
      contactsManager = self->_contactsManager;
      v24 = [v4 address];
      v25[0] = MEMORY[0x1E69E9820];
      v25[1] = 3221225472;
      v25[2] = __58__AAUIChooseContactController_fetchIDSStatusForRecipient___block_invoke;
      v25[3] = &unk_1E820BF08;
      v25[4] = self;
      objc_copyWeak(&v27, &location);
      v26 = v4;
      [(AAContactsManager *)contactsManager idsStatusForHandle:v24 completion:v25];

      objc_destroyWeak(&v27);
      objc_destroyWeak(&location);
LABEL_26:

LABEL_27:
    }
  }

  else
  {
    v5 = _AAUILogSystem();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      [(AAUIChooseContactController *)v4 fetchIDSStatusForRecipient:v5];
    }
  }
}

void __58__AAUIChooseContactController_fetchIDSStatusForRecipient___block_invoke(uint64_t a1, char a2)
{
  v4 = *(*(a1 + 32) + 40);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __58__AAUIChooseContactController_fetchIDSStatusForRecipient___block_invoke_2;
  block[3] = &unk_1E820BEE0;
  objc_copyWeak(&v7, (a1 + 48));
  v6 = *(a1 + 40);
  v8 = a2;
  dispatch_async(v4, block);

  objc_destroyWeak(&v7);
}

void __58__AAUIChooseContactController_fetchIDSStatusForRecipient___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = [MEMORY[0x1E696AD98] numberWithBool:*(a1 + 48)];
  v4 = [WeakRetained _idsReachabilityDictionaryForRecipient:*(a1 + 32)];
  v5 = [*(a1 + 32) address];
  [v4 setObject:v3 forKeyedSubscript:v5];

  if (*(a1 + 48) == 1 && *(a1 + 32))
  {
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __58__AAUIChooseContactController_fetchIDSStatusForRecipient___block_invoke_3;
    v6[3] = &unk_1E820BEB8;
    v7 = WeakRetained;
    v8 = *(a1 + 32);
    dispatch_async(MEMORY[0x1E69E96A0], v6);
  }
}

void __58__AAUIChooseContactController_fetchIDSStatusForRecipient___block_invoke_3(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 8);
  v3 = [MEMORY[0x1E69DC888] tintColor];
  [v2 setTintColor:v3 forRecipient:*(a1 + 40)];
}

- (AAUIChooseContactControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)_isHandleReachable:(NSObject *)a3 .cold.1(void *a1, char a2, NSObject *a3)
{
  v10 = *MEMORY[0x1E69E9840];
  v5 = [a1 address];
  v6 = 138478083;
  v7 = v5;
  v8 = 1024;
  v9 = a2 & 1;
  _os_log_debug_impl(&dword_1C5355000, a3, OS_LOG_TYPE_DEBUG, "%{private}@ _isHandleReachable %d", &v6, 0x12u);
}

- (void)fetchIDSStatusForRecipient:(void *)a1 .cold.1(void *a1, NSObject *a2)
{
  v6 = *MEMORY[0x1E69E9840];
  v3 = [a1 address];
  v4 = 138477827;
  v5 = v3;
  _os_log_debug_impl(&dword_1C5355000, a2, OS_LOG_TYPE_DEBUG, "%{private}@ Missing AA SPI, skipping reachability check", &v4, 0xCu);
}

- (void)fetchIDSStatusForRecipient:(NSObject *)a3 .cold.2(void *a1, uint64_t a2, NSObject *a3)
{
  v13 = *MEMORY[0x1E69E9840];
  v6 = [a1 address];
  v7 = 138478339;
  v8 = v6;
  v9 = 2112;
  v10 = a1;
  v11 = 2112;
  v12 = a2;
  _os_log_error_impl(&dword_1C5355000, a3, OS_LOG_TYPE_ERROR, "%{private}@ mismatch in tintColorForRecipient incoming %@ existing %@", &v7, 0x20u);
}

@end