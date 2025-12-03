@interface CNEmergencyContactAction
+ (id)log;
- (CNEmergencyContactAction)initWithContact:(id)contact healthStoreManager:(id)manager propertyItems:(id)items;
- (NSArray)navigationListItems;
- (void)createMedicalIDWithEmergencyContact:(id)contact;
- (void)dismissMedicalID;
- (void)navigationListController:(id)controller didSelectItem:(id)item;
- (void)performActionForItem:(id)item sender:(id)sender;
- (void)performActionWithContactProperty:(id)property relationship:(id)relationship;
- (void)performActionWithSender:(id)sender;
- (void)picker:(id)picker didPickItem:(id)item;
- (void)pickerDidCancel:(id)cancel;
- (void)presentDisambiguationAlertWithSender:(id)sender;
- (void)showConfirmRemoveAlertWithSender:(id)sender completion:(id)completion;
- (void)showMedicalIDViewControllerForMedicalID:(id)d;
- (void)showRelationshipPickerForContactProperty:(id)property sender:(id)sender;
@end

@implementation CNEmergencyContactAction

- (void)dismissMedicalID
{
  delegate = [(CNContactAction *)self delegate];
  [delegate actionDidFinish:self];

  delegate2 = [(CNContactAction *)self delegate];
  medicalIDNavigationController = [(CNEmergencyContactAction *)self medicalIDNavigationController];
  [delegate2 action:self dismissViewController:medicalIDNavigationController sender:self];

  [(CNEmergencyContactAction *)self setMedicalIDNavigationController:0];
}

- (void)pickerDidCancel:(id)cancel
{
  [cancel dismissViewControllerAnimated:1 completion:0];
  delegate = [(CNContactAction *)self delegate];
  [delegate actionWasCanceled:self];
}

- (void)picker:(id)picker didPickItem:(id)item
{
  itemCopy = item;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __47__CNEmergencyContactAction_picker_didPickItem___block_invoke;
  v8[3] = &unk_1E74E77C0;
  v8[4] = self;
  v9 = itemCopy;
  v7 = itemCopy;
  [picker dismissViewControllerAnimated:1 completion:v8];
}

void __47__CNEmergencyContactAction_picker_didPickItem___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [v2 contactProperty];
  [v2 performActionWithContactProperty:v3 relationship:*(a1 + 40)];
}

- (void)navigationListController:(id)controller didSelectItem:(id)item
{
  controllerCopy = controller;
  itemCopy = item;
  objc_initWeak(&location, self);
  alertController = [(CNEmergencyContactAction *)self alertController];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __67__CNEmergencyContactAction_navigationListController_didSelectItem___block_invoke;
  v10[3] = &unk_1E74E6D30;
  objc_copyWeak(&v12, &location);
  v9 = itemCopy;
  v11 = v9;
  [alertController dismissViewControllerAnimated:1 completion:v10];

  objc_destroyWeak(&v12);
  objc_destroyWeak(&location);
}

void __67__CNEmergencyContactAction_navigationListController_didSelectItem___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained setAlertController:0];
  [WeakRetained setListController:0];
  objc_opt_class();
  v2 = [*(a1 + 32) content];
  if (objc_opt_isKindOfClass())
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;

  if (v4)
  {
    [WeakRetained showRelationshipPickerForContactProperty:v4 sender:0];
  }
}

- (NSArray)navigationListItems
{
  propertyItems = [(CNPropertyAction *)self propertyItems];
  v4 = [propertyItems count];

  if (v4 >= 2)
  {
    v6 = MEMORY[0x1E695DEC8];
    propertyItems2 = [(CNPropertyAction *)self propertyItems];
    v8 = [propertyItems2 _cn_map:&__block_literal_global_358];
    v5 = [v6 arrayWithArray:v8];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

id __47__CNEmergencyContactAction_navigationListItems__block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 contactProperty];
  v3 = [CNUINavigationListItem navigationListItemForContactProperty:v2];

  return v3;
}

- (void)showRelationshipPickerForContactProperty:(id)property sender:(id)sender
{
  v6 = *MEMORY[0x1E695C3A8];
  senderCopy = sender;
  propertyCopy = property;
  contact = [propertyCopy contact];
  v20 = [CNCardPropertyGroup groupForProperty:v6 contact:contact store:0 policy:0 linkedPolicies:0];

  v10 = MEMORY[0x1E695CEE0];
  value = [propertyCopy value];
  v12 = [v10 labeledValueWithLabel:0 value:value];

  contact2 = [propertyCopy contact];
  v14 = [CNPropertyGroupItem propertyGroupItemWithLabeledValue:v12 group:v20 contact:contact2];

  v15 = [[CNLabelPickerController alloc] initForPropertyItem:v14];
  [v15 setDelegate:self];
  v16 = [objc_alloc(MEMORY[0x1E69DCCD8]) initWithRootViewController:v15];
  [v16 setDelegate:self];
  v17 = CNContactsUIBundle();
  v18 = [v17 localizedStringForKey:@"CARD_ACTION_EMERGENCY_RELATIONSHIP_TITLE" value:&stru_1F0CE7398 table:@"Localized"];
  [v15 setTitle:v18];

  [(CNEmergencyContactAction *)self setContactProperty:propertyCopy];
  delegate = [(CNContactAction *)self delegate];
  [delegate action:self presentViewController:v16 sender:senderCopy];
}

- (void)showConfirmRemoveAlertWithSender:(id)sender completion:(id)completion
{
  senderCopy = sender;
  completionCopy = completion;
  v8 = MEMORY[0x1E695CD80];
  contactProperty = [(CNEmergencyContactAction *)self contactProperty];
  contact = [contactProperty contact];
  v11 = [v8 stringFromContact:contact style:0];

  if ((*(*MEMORY[0x1E6996568] + 16))())
  {
    contactProperty2 = [(CNEmergencyContactAction *)self contactProperty];
    value = [contactProperty2 value];

    formattedStringValue = [value formattedStringValue];

    v11 = formattedStringValue;
  }

  v15 = MEMORY[0x1E69DC650];
  v16 = MEMORY[0x1E696AEC0];
  v17 = CNContactsUIBundle();
  v18 = [v17 localizedStringForKey:@"CARD_ACTION_EMERGENCY_REMOVE_SHEET_TITLE-%@" value:&stru_1F0CE7398 table:@"Localized"];
  v19 = [v16 stringWithFormat:v18, v11];
  v20 = [v15 alertControllerWithTitle:0 message:v19 preferredStyle:0];

  v21 = MEMORY[0x1E69DC648];
  v22 = CNContactsUIBundle();
  v23 = [v22 localizedStringForKey:@"CARD_ACTION_EMERGENCY_REMOVE" value:&stru_1F0CE7398 table:@"Localized"];
  v34[0] = MEMORY[0x1E69E9820];
  v34[1] = 3221225472;
  v34[2] = __72__CNEmergencyContactAction_showConfirmRemoveAlertWithSender_completion___block_invoke;
  v34[3] = &unk_1E74E5C98;
  v24 = completionCopy;
  v35 = v24;
  v25 = [v21 actionWithTitle:v23 style:2 handler:v34];
  [v20 addAction:v25];

  objc_initWeak(&location, self);
  v26 = MEMORY[0x1E69DC648];
  v27 = CNContactsUIBundle();
  v28 = [v27 localizedStringForKey:@"CANCEL" value:&stru_1F0CE7398 table:@"Localized"];
  v31[0] = MEMORY[0x1E69E9820];
  v31[1] = 3221225472;
  v31[2] = __72__CNEmergencyContactAction_showConfirmRemoveAlertWithSender_completion___block_invoke_2;
  v31[3] = &unk_1E74E4B28;
  objc_copyWeak(&v32, &location);
  v29 = [v26 actionWithTitle:v28 style:1 handler:v31];
  [v20 addAction:v29];

  delegate = [(CNContactAction *)self delegate];
  [delegate action:self presentViewController:v20 sender:senderCopy];

  objc_destroyWeak(&v32);
  objc_destroyWeak(&location);
}

void __72__CNEmergencyContactAction_showConfirmRemoveAlertWithSender_completion___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v1 = [WeakRetained delegate];
  [v1 actionWasCanceled:WeakRetained];
}

- (void)presentDisambiguationAlertWithSender:(id)sender
{
  senderCopy = sender;
  v5 = objc_alloc_init(CNUINavigationListViewController);
  [(CNEmergencyContactAction *)self setListController:v5];

  listController = [(CNEmergencyContactAction *)self listController];
  [listController setDelegate:self];

  listController2 = [(CNEmergencyContactAction *)self listController];
  [listController2 setContentAlignment:1];

  listController3 = [(CNEmergencyContactAction *)self listController];
  [listController3 setShowFirstSectionTopSeparator:1];

  navigationListItems = [(CNEmergencyContactAction *)self navigationListItems];
  listController4 = [(CNEmergencyContactAction *)self listController];
  [listController4 setItems:navigationListItems];

  v11 = MEMORY[0x1E69DC650];
  v12 = CNContactsUIBundle();
  v13 = [v12 localizedStringForKey:@"CARD_ACTION_EMERGENCY_ADD_SHEET_TITLE" value:&stru_1F0CE7398 table:@"Localized"];
  v14 = [v11 alertControllerWithTitle:0 message:v13 preferredStyle:0];
  [(CNEmergencyContactAction *)self setAlertController:v14];

  listController5 = [(CNEmergencyContactAction *)self listController];
  alertController = [(CNEmergencyContactAction *)self alertController];
  [alertController setContentViewController:listController5];

  objc_initWeak(&location, self);
  alertController2 = [(CNEmergencyContactAction *)self alertController];
  v18 = MEMORY[0x1E69DC648];
  v19 = CNContactsUIBundle();
  v20 = [v19 localizedStringForKey:@"CANCEL" value:&stru_1F0CE7398 table:@"Localized"];
  v24 = MEMORY[0x1E69E9820];
  v25 = 3221225472;
  v26 = __65__CNEmergencyContactAction_presentDisambiguationAlertWithSender___block_invoke;
  v27 = &unk_1E74E4B28;
  objc_copyWeak(&v28, &location);
  v21 = [v18 actionWithTitle:v20 style:1 handler:&v24];
  [alertController2 addAction:{v21, v24, v25, v26, v27}];

  delegate = [(CNContactAction *)self delegate];
  alertController3 = [(CNEmergencyContactAction *)self alertController];
  [delegate action:self presentViewController:alertController3 sender:senderCopy];

  objc_destroyWeak(&v28);
  objc_destroyWeak(&location);
}

void __65__CNEmergencyContactAction_presentDisambiguationAlertWithSender___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v1 = [WeakRetained delegate];
  [v1 actionWasCanceled:WeakRetained];

  [WeakRetained setAlertController:0];
}

- (void)createMedicalIDWithEmergencyContact:(id)contact
{
  v15[1] = *MEMORY[0x1E69E9840];
  contactCopy = contact;
  contactStore = [(CNEmergencyContactAction *)self contactStore];
  v6 = +[CNHealthStoreManager descriptorForRequiredKeys];
  v15[0] = v6;
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v15 count:1];
  v13 = 0;
  v8 = [contactStore _crossPlatformUnifiedMeContactWithKeysToFetch:v7 error:&v13];
  v9 = v13;

  healthStoreManager = [(CNEmergencyContactAction *)self healthStoreManager];
  v11 = [healthStoreManager createMedicalIDFromContact:v8];

  v14 = contactCopy;
  v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v14 count:1];

  [v11 setEmergencyContacts:v12];
  [(CNEmergencyContactAction *)self showMedicalIDViewControllerForMedicalID:v11];
}

- (void)showMedicalIDViewControllerForMedicalID:(id)d
{
  v4 = getMIUIDisplayConfigurationClass_41771;
  dCopy = d;
  standardConfiguration = [(objc_class *)v4() standardConfiguration];
  [standardConfiguration setEntryPoint:1];
  v6 = objc_alloc(getMIUIMedicalIDViewControllerClass_41772());
  healthStoreManager = [(CNEmergencyContactAction *)self healthStoreManager];
  healthStore = [healthStoreManager healthStore];
  v9 = [v6 initWithHealthStore:healthStore medicalIDData:dCopy displayConfiguration:standardConfiguration];

  v10 = [objc_alloc(MEMORY[0x1E69DCCD8]) initWithRootViewController:v9];
  [(CNEmergencyContactAction *)self setMedicalIDNavigationController:v10];

  v11 = [objc_alloc(MEMORY[0x1E69DC708]) initWithBarButtonSystemItem:0 target:self action:sel_dismissMedicalID];
  navigationItem = [v9 navigationItem];
  [navigationItem setRightBarButtonItem:v11];

  delegate = [(CNContactAction *)self delegate];
  medicalIDNavigationController = [(CNEmergencyContactAction *)self medicalIDNavigationController];
  [delegate action:self presentViewController:medicalIDNavigationController sender:0];
}

- (void)performActionWithSender:(id)sender
{
  senderCopy = sender;
  if (-[CNEmergencyContactAction addingToEmergency](self, "addingToEmergency") && (-[CNPropertyAction propertyItems](self, "propertyItems"), v4 = objc_claimAutoreleasedReturnValue(), v5 = [v4 count], v4, v5 != 1))
  {
    [(CNEmergencyContactAction *)self presentDisambiguationAlertWithSender:senderCopy];
  }

  else
  {
    propertyItem = [(CNPropertyAction *)self propertyItem];
    [(CNEmergencyContactAction *)self performActionForItem:propertyItem sender:senderCopy];
  }
}

- (void)performActionWithContactProperty:(id)property relationship:(id)relationship
{
  propertyCopy = property;
  relationshipCopy = relationship;
  if ([(CNEmergencyContactAction *)self addingToEmergency])
  {
    v20 = 0;
    v21 = &v20;
    v22 = 0x2050000000;
    v8 = get_HKEmergencyContactClass_softClass;
    v23 = get_HKEmergencyContactClass_softClass;
    if (!get_HKEmergencyContactClass_softClass)
    {
      v19[0] = MEMORY[0x1E69E9820];
      v19[1] = 3221225472;
      v19[2] = __get_HKEmergencyContactClass_block_invoke;
      v19[3] = &unk_1E74E7518;
      v19[4] = &v20;
      __get_HKEmergencyContactClass_block_invoke(v19);
      v8 = v21[3];
    }

    v9 = v8;
    _Block_object_dispose(&v20, 8);
    contact = [propertyCopy contact];
    v11 = [v8 emergencyContactWithContact:contact property:propertyCopy];

    [v11 setRelationship:relationshipCopy];
    workQueue = [(CNEmergencyContactAction *)self workQueue];
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __74__CNEmergencyContactAction_performActionWithContactProperty_relationship___block_invoke;
    v17[3] = &unk_1E74E77C0;
    v17[4] = self;
    v18 = v11;
    v13 = v11;
    [workQueue performBlock:v17];
  }

  else
  {
    healthStoreManager = [(CNEmergencyContactAction *)self healthStoreManager];
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __74__CNEmergencyContactAction_performActionWithContactProperty_relationship___block_invoke_3_324;
    v16[3] = &unk_1E74E4B00;
    v16[4] = self;
    v15 = [healthStoreManager registerMedicalIDDataHandler:v16];
  }
}

void __74__CNEmergencyContactAction_performActionWithContactProperty_relationship___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) healthStoreManager];
  v3 = [v2 medicalIDStore];
  v4 = [v3 medicalIDSetUpStatus];

  if (v4 == 1)
  {
    v5 = [*(a1 + 32) mainThreadScheduler];
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __74__CNEmergencyContactAction_performActionWithContactProperty_relationship___block_invoke_2;
    v13[3] = &unk_1E74E77C0;
    v6 = *(a1 + 40);
    v13[4] = *(a1 + 32);
    v14 = v6;
    [v5 performBlock:v13];
  }

  objc_initWeak(&location, *(a1 + 32));
  v7 = [*(a1 + 32) healthStoreManager];
  v8 = [v7 medicalIDStore];
  v9 = *(a1 + 40);
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __74__CNEmergencyContactAction_performActionWithContactProperty_relationship___block_invoke_3;
  v10[3] = &unk_1E74E4AD8;
  objc_copyWeak(&v11, &location);
  [v8 addEmergencyContact:v9 completion:v10];

  objc_destroyWeak(&v11);
  objc_destroyWeak(&location);
}

void __74__CNEmergencyContactAction_performActionWithContactProperty_relationship___block_invoke_3_324(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [*(a1 + 32) healthStoreManager];
  [v7 unregisterHandlerForToken:v6];

  v8 = [v5 emergencyContacts];
  v9 = [*(a1 + 32) contact];
  v10 = [CNHealthStoreManager emergencyContactMatchingContact:v9];
  v11 = [v8 _cn_firstObjectPassingTest:v10];

  objc_initWeak(&location, *(a1 + 32));
  v12 = [*(a1 + 32) healthStoreManager];
  v13 = [v12 medicalIDStore];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __74__CNEmergencyContactAction_performActionWithContactProperty_relationship___block_invoke_4_326;
  v14[3] = &unk_1E74E4AD8;
  objc_copyWeak(&v15, &location);
  [v13 removeEmergencyContact:v11 completion:v14];

  objc_destroyWeak(&v15);
  objc_destroyWeak(&location);
}

void __74__CNEmergencyContactAction_performActionWithContactProperty_relationship___block_invoke_4_326(uint64_t a1, char a2, void *a3)
{
  v12 = *MEMORY[0x1E69E9840];
  v5 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v7 = WeakRetained;
  if (a2)
  {
    v8 = [WeakRetained mainThreadScheduler];
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __74__CNEmergencyContactAction_performActionWithContactProperty_relationship___block_invoke_327;
    v9[3] = &unk_1E74E6A88;
    v9[4] = v7;
    [v8 performBlock:v9];
  }

  else
  {
    v8 = [objc_opt_class() log];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v11 = v5;
      _os_log_error_impl(&dword_199A75000, v8, OS_LOG_TYPE_ERROR, "Failed to delete Medical ID: %@", buf, 0xCu);
    }
  }
}

void __74__CNEmergencyContactAction_performActionWithContactProperty_relationship___block_invoke_327(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 actionDidFinish:*(a1 + 32)];
}

void __74__CNEmergencyContactAction_performActionWithContactProperty_relationship___block_invoke_3(uint64_t a1, int a2, void *a3)
{
  v29 = *MEMORY[0x1E69E9840];
  v5 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v7 = WeakRetained;
  if (a2)
  {
    v8 = [WeakRetained healthStoreManager];
    v9 = [v8 medicalIDStore];
    v26[0] = MEMORY[0x1E69E9820];
    v26[1] = 3221225472;
    v26[2] = __74__CNEmergencyContactAction_performActionWithContactProperty_relationship___block_invoke_4;
    v26[3] = &unk_1E74E4AB0;
    v26[4] = v7;
    [v9 fetchMedicalIDDataWithCompletion:v26];
  }

  else
  {
    v10 = [v5 hk_isHealthKitErrorWithCode:130];
    v11 = [objc_opt_class() log];
    v12 = os_log_type_enabled(v11, OS_LOG_TYPE_ERROR);
    if (v10)
    {
      if (v12)
      {
        *buf = 138412290;
        v28 = v5;
        _os_log_error_impl(&dword_199A75000, v11, OS_LOG_TYPE_ERROR, "User has reached maximum number of emergency contacts: %@", buf, 0xCu);
      }

      v13 = CNContactsUIBundle();
      v14 = [v13 localizedStringForKey:@"CARD_ACTION_EMERGENCY_MAXIMUM_CONTACTS_REACHED_TITLE" value:&stru_1F0CE7398 table:@"Localized"];

      v15 = CNContactsUIBundle();
      v16 = [v15 localizedStringForKey:@"CARD_ACTION_EMERGENCY_MAXIMUM_CONTACTS_REACHED_BODY" value:&stru_1F0CE7398 table:@"Localized"];

      v17 = [MEMORY[0x1E69DC650] alertControllerWithTitle:v14 message:v16 preferredStyle:1];
      [v7 setAlertController:v17];
    }

    else
    {
      if (v12)
      {
        *buf = 138412290;
        v28 = v5;
        _os_log_error_impl(&dword_199A75000, v11, OS_LOG_TYPE_ERROR, "Received an error that we do not handle: %@", buf, 0xCu);
      }

      v18 = CNContactsUIBundle();
      v14 = [v18 localizedStringForKey:@"CARD_ACTION_EMERGENCY_CONTACT_NOT_ADDED_ERROR_TITLE" value:&stru_1F0CE7398 table:@"Localized"];

      v16 = [MEMORY[0x1E69DC650] alertControllerWithTitle:0 message:v14 preferredStyle:1];
      [v7 setAlertController:v16];
    }

    v19 = [v7 alertController];
    v20 = MEMORY[0x1E69DC648];
    v21 = CNContactsUIBundle();
    v22 = [v21 localizedStringForKey:@"OK" value:&stru_1F0CE7398 table:@"Localized"];
    v25[0] = MEMORY[0x1E69E9820];
    v25[1] = 3221225472;
    v25[2] = __74__CNEmergencyContactAction_performActionWithContactProperty_relationship___block_invoke_320;
    v25[3] = &unk_1E74E6C28;
    v25[4] = v7;
    v23 = [v20 actionWithTitle:v22 style:1 handler:v25];
    [v19 addAction:v23];

    v8 = [v7 mainThreadScheduler];
    v24[0] = MEMORY[0x1E69E9820];
    v24[1] = 3221225472;
    v24[2] = __74__CNEmergencyContactAction_performActionWithContactProperty_relationship___block_invoke_2_322;
    v24[3] = &unk_1E74E6A88;
    v24[4] = v7;
    [v8 performBlock:v24];
  }
}

void __74__CNEmergencyContactAction_performActionWithContactProperty_relationship___block_invoke_4(uint64_t a1, void *a2, void *a3)
{
  v13 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if (v5)
  {
    v7 = [*(a1 + 32) mainThreadScheduler];
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __74__CNEmergencyContactAction_performActionWithContactProperty_relationship___block_invoke_298;
    v9[3] = &unk_1E74E77C0;
    v9[4] = *(a1 + 32);
    v10 = v5;
    [v7 performBlock:v9];
  }

  else
  {
    v8 = [objc_opt_class() log];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v12 = v6;
      _os_log_error_impl(&dword_199A75000, v8, OS_LOG_TYPE_ERROR, "Failed to fetch Medical ID to display edit view: %@", buf, 0xCu);
    }
  }
}

void __74__CNEmergencyContactAction_performActionWithContactProperty_relationship___block_invoke_2_322(uint64_t a1)
{
  v4 = [*(a1 + 32) delegate];
  v2 = *(a1 + 32);
  v3 = [v2 alertController];
  [v4 action:v2 presentViewController:v3 sender:*(a1 + 32)];
}

- (void)performActionForItem:(id)item sender:(id)sender
{
  itemCopy = item;
  senderCopy = sender;
  contactProperty = [itemCopy contactProperty];
  [(CNEmergencyContactAction *)self setContactProperty:contactProperty];

  if ([(CNEmergencyContactAction *)self addingToEmergency])
  {
    contactProperty2 = [itemCopy contactProperty];
    [(CNEmergencyContactAction *)self showRelationshipPickerForContactProperty:contactProperty2 sender:senderCopy];
  }

  else
  {
    objc_initWeak(&location, self);
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __56__CNEmergencyContactAction_performActionForItem_sender___block_invoke;
    v10[3] = &unk_1E74E6D30;
    objc_copyWeak(&v12, &location);
    v11 = itemCopy;
    [(CNEmergencyContactAction *)self showConfirmRemoveAlertWithSender:senderCopy completion:v10];

    objc_destroyWeak(&v12);
    objc_destroyWeak(&location);
  }
}

void __56__CNEmergencyContactAction_performActionForItem_sender___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v2 = [*(a1 + 32) contactProperty];
  [WeakRetained performActionWithContactProperty:v2 relationship:0];
}

- (CNEmergencyContactAction)initWithContact:(id)contact healthStoreManager:(id)manager propertyItems:(id)items
{
  managerCopy = manager;
  v22.receiver = self;
  v22.super_class = CNEmergencyContactAction;
  v10 = [(CNPropertyAction *)&v22 initWithContact:contact propertyItems:items];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_healthStoreManager, manager);
    v12 = +[CNUIContactsEnvironment currentEnvironment];
    defaultSchedulerProvider = [v12 defaultSchedulerProvider];
    mainThreadScheduler = [defaultSchedulerProvider mainThreadScheduler];
    mainThreadScheduler = v11->_mainThreadScheduler;
    v11->_mainThreadScheduler = mainThreadScheduler;

    v16 = +[CNUIContactsEnvironment currentEnvironment];
    defaultSchedulerProvider2 = [v16 defaultSchedulerProvider];
    v18 = [defaultSchedulerProvider2 newSerialSchedulerWithName:@"com.apple.Contacts.CNEmergencyContactAction.workQueue"];
    workQueue = v11->_workQueue;
    v11->_workQueue = v18;

    v20 = v11;
  }

  return v11;
}

+ (id)log
{
  if (log_cn_once_token_2_41826 != -1)
  {
    dispatch_once(&log_cn_once_token_2_41826, &__block_literal_global_41827);
  }

  v3 = log_cn_once_object_2_41828;

  return v3;
}

uint64_t __31__CNEmergencyContactAction_log__block_invoke()
{
  v0 = os_log_create("com.apple.contactsui", "CNEmergencyContactAction");
  v1 = log_cn_once_object_2_41828;
  log_cn_once_object_2_41828 = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

@end