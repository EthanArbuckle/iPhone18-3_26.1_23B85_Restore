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
  v4 = a4;
  v5 = _AAUILogSystem();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 138412290;
    v10 = v4;
    _os_log_impl(&dword_0, v5, OS_LOG_TYPE_DEFAULT, "Composing contact for address: %@", &v9, 0xCu);
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

  v7 = [[CNComposeRecipient alloc] initWithContact:0 address:v4 kind:v6];

  return v7;
}

- (id)searchController:(id)a3 tintColorForRecipient:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([v7 kind] > 1)
  {
    v12 = +[UIColor grayColor];
  }

  else
  {
    contactsManager = self->_contactsManager;
    if (objc_opt_respondsToSelector())
    {
      objc_initWeak(&location, self);
      idsStatusAccessQueue = self->_idsStatusAccessQueue;
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_A05C;
      block[3] = &unk_594F0;
      objc_copyWeak(&v27, &location);
      v10 = v7;
      v26 = v10;
      dispatch_async(idsStatusAccessQueue, block);
      v21 = 0;
      v22 = &v21;
      v23 = 0x2020000000;
      v24 = 0;
      v11 = self->_idsStatusAccessQueue;
      v14 = _NSConcreteStackBlock;
      v15 = 3221225472;
      v16 = sub_A0AC;
      v17 = &unk_59608;
      objc_copyWeak(&v20, &location);
      v19 = &v21;
      v18 = v10;
      dispatch_sync(v11, &v14);
      v12 = 0;
      if (*(v22 + 24) == 1)
      {
        v12 = [UIColor tintColor:v14];
      }

      objc_destroyWeak(&v20);
      _Block_object_dispose(&v21, 8);

      objc_destroyWeak(&v27);
      objc_destroyWeak(&location);
    }

    else
    {
      v12 = 0;
    }
  }

  return v12;
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
  v6 = a3;
  v7 = a4;
  v8 = [v6 recipients];
  v9 = [v8 count];

  if (v9 >= 2)
  {
    v11 = v7;
    v10 = [NSArray arrayWithObjects:&v11 count:1];
    [v6 setRecipients:v10];
  }

  [(AAUIChooseContactController *)self _prepareNextButton];
}

- (void)contactPicker:(id)a3 didSelectContact:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [AAUITrustedContactPickerViewController addressKindAndHandleForSingleAddressContact:v7];
  v9 = [CNComposeRecipient alloc];
  v10 = [v8 handle];
  v11 = [v9 initWithContact:v7 address:v10 kind:{objc_msgSend(v8, "kind")}];

  v13 = v11;
  v12 = [NSArray arrayWithObjects:&v13 count:1];
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

  v11 = [CNComposeRecipient alloc];
  v12 = [v7 contact];

  v13 = [v11 initWithContact:v12 address:v9 kind:v10];
  v15 = v13;
  v14 = [NSArray arrayWithObjects:&v15 count:1];
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
  v3 = objc_alloc_init(NSMutableDictionary);
  idsReachabilityForRecipientHandle = self->_idsReachabilityForRecipientHandle;
  self->_idsReachabilityForRecipientHandle = v3;

  v5 = objc_alloc_init(NSMutableDictionary);
  idsReachabilityForUnifiedOrGroupRecipientHandle = self->_idsReachabilityForUnifiedOrGroupRecipientHandle;
  self->_idsReachabilityForUnifiedOrGroupRecipientHandle = v5;

  v7 = objc_alloc_init(NSMutableDictionary);
  handleToRecipient = self->_handleToRecipient;
  self->_handleToRecipient = v7;

  v9 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v10 = dispatch_queue_create("com.apple.appleaccountui.idsReachabilityAccessQueue", v9);
  idsStatusAccessQueue = self->_idsStatusAccessQueue;
  self->_idsStatusAccessQueue = v10;

  v12 = objc_alloc_init(AAContactsManager);
  contactsManager = self->_contactsManager;
  self->_contactsManager = v12;

  v22 = objc_opt_new();
  v14 = [[CNAutocompleteSearchController alloc] initWithSearchType:1];
  autocompleteSearchController = self->_autocompleteSearchController;
  self->_autocompleteSearchController = v14;

  [(CNAutocompleteSearchController *)self->_autocompleteSearchController setDelegate:self];
  v16 = [v22 title];
  [(CNAutocompleteSearchController *)self->_autocompleteSearchController setTitle:v16];

  v17 = objc_opt_new();
  v18 = [v22 selectButtonText];
  [v17 setTitle:v18];

  [v17 setTarget:self];
  [v17 setAction:"_selectionCompleted"];
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
  v4 = [v3 count] == &dword_0 + 1;

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
      sub_3351C(v10);
    }
  }

  else
  {
    v5 = [AALocalContactInfo alloc];
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
    sub_33560(v4, v8, v9);
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
  v4 = a3;
  contactsManager = self->_contactsManager;
  if (objc_opt_respondsToSelector())
  {
    v6 = [(AAUIChooseContactController *)self _idsReachabilityDictionaryForRecipient:v4];
    v7 = [v4 address];
    v8 = [v6 objectForKeyedSubscript:v7];

    if (!v8)
    {
      v9 = [v4 address];
      v10 = [v6 objectForKeyedSubscript:v9];

      if (v10)
      {
        if ([v10 integerValue] == -1)
        {
          goto LABEL_27;
        }
      }

      else
      {
        v11 = [v4 address];
        [v6 setObject:&off_5C520 forKeyedSubscript:v11];
      }

      v12 = [v4 children];
      v13 = [v12 count];

      if (v13)
      {
        v32 = 0u;
        v33 = 0u;
        v30 = 0u;
        v31 = 0u;
        v14 = [v4 children];
        v15 = [v14 countByEnumeratingWithState:&v30 objects:v34 count:16];
        if (v15)
        {
          v16 = *v31;
          do
          {
            v17 = 0;
            do
            {
              if (*v31 != v16)
              {
                objc_enumerationMutation(v14);
              }

              [(AAUIChooseContactController *)self fetchIDSStatusForRecipient:*(*(&v30 + 1) + 8 * v17)];
              v17 = v17 + 1;
            }

            while (v15 != v17);
            v15 = [v14 countByEnumeratingWithState:&v30 objects:v34 count:16];
          }

          while (v15);
        }
      }

      handleToRecipient = self->_handleToRecipient;
      v19 = [v4 address];
      v20 = [(NSMutableDictionary *)handleToRecipient objectForKeyedSubscript:v19];

      if (!v20 || v20 == v4)
      {
        if (v20 && v20 == v4)
        {
          goto LABEL_26;
        }
      }

      else
      {
        v21 = _AAUILogSystem();
        if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
        {
          sub_336B0(v4, v20, v21);
        }
      }

      v22 = self->_handleToRecipient;
      v23 = [v4 address];
      [(NSMutableDictionary *)v22 setObject:v4 forKeyedSubscript:v23];

      objc_initWeak(&location, self);
      v24 = self->_contactsManager;
      v25 = [v4 address];
      v26[0] = _NSConcreteStackBlock;
      v26[1] = 3221225472;
      v26[2] = sub_AD84;
      v26[3] = &unk_59658;
      v26[4] = self;
      objc_copyWeak(&v28, &location);
      v27 = v4;
      [(AAContactsManager *)v24 idsStatusForHandle:v25 completion:v26];

      objc_destroyWeak(&v28);
      objc_destroyWeak(&location);
LABEL_26:

LABEL_27:
    }
  }

  else
  {
    v6 = _AAUILogSystem();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      sub_33614(v4, v6);
    }
  }
}

- (AAUIChooseContactControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end