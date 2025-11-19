@interface WFSelectContactsActionUIKitUserInterface
- (BOOL)respondsToSelector:(SEL)a3;
- (void)cancelPresentationWithCompletionHandler:(id)a3;
- (void)contactPicker:(id)a3 didSelectContact:(id)a4;
- (void)contactPicker:(id)a3 didSelectContactProperty:(id)a4;
- (void)contactPicker:(id)a3 didSelectContacts:(id)a4;
- (void)contactPickerDidCancel:(id)a3;
- (void)finishWithContacts:(id)a3 error:(id)a4;
@end

@implementation WFSelectContactsActionUIKitUserInterface

- (void)contactPicker:(id)a3 didSelectContacts:(id)a4
{
  v5 = [a4 if_map:&__block_literal_global_5645];
  [(WFSelectContactsActionUIKitUserInterface *)self finishWithContacts:v5 error:0];
}

- (void)contactPicker:(id)a3 didSelectContactProperty:(id)a4
{
  v8[1] = *MEMORY[0x277D85DE8];
  v5 = WFContactFromCNContactProperty();
  v8[0] = v5;
  v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v8 count:1];
  [(WFSelectContactsActionUIKitUserInterface *)self finishWithContacts:v6 error:0];

  v7 = *MEMORY[0x277D85DE8];
}

- (void)contactPicker:(id)a3 didSelectContact:(id)a4
{
  v26 = *MEMORY[0x277D85DE8];
  v5 = [MEMORY[0x277CFC278] contactWithCNContact:a4];
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v6 = [(WFSelectContactsActionUIKitUserInterface *)self contactProperties];
  v7 = [v6 countByEnumeratingWithState:&v19 objects:v25 count:16];
  if (v7)
  {
    v8 = v7;
    v18 = self;
    v9 = *v20;
    while (2)
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v20 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v24 = *(*(&v19 + 1) + 8 * i);
        v11 = [MEMORY[0x277CBEA60] arrayWithObjects:&v24 count:1];
        v12 = WFContactPropertyIDsFromActionProperties();
        v13 = [v12 firstObject];
        v14 = [v13 intValue];

        if ([v5 hasValueForPropertyID:v14])
        {
          v15 = [v5 contactWithPropertyID:v14 multivalueIndex:0];

          v5 = v15;
          goto LABEL_11;
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v19 objects:v25 count:16];
      if (v8)
      {
        continue;
      }

      break;
    }

LABEL_11:
    self = v18;
  }

  v23 = v5;
  v16 = [MEMORY[0x277CBEA60] arrayWithObjects:&v23 count:1];
  [(WFSelectContactsActionUIKitUserInterface *)self finishWithContacts:v16 error:0];

  v17 = *MEMORY[0x277D85DE8];
}

- (void)contactPickerDidCancel:(id)a3
{
  v4 = [MEMORY[0x277CCA9B8] userCancelledError];
  [(WFSelectContactsActionUIKitUserInterface *)self finishWithContacts:0 error:v4];
}

- (BOOL)respondsToSelector:(SEL)a3
{
  v5 = sel_contactPicker_didSelectContacts_ == a3 || sel_contactPicker_didSelectContactProperties_ == a3;
  if (!v5 || (v6 = [(WFSelectContactsActionUIKitUserInterface *)self selectMultiple]))
  {
    v8.receiver = self;
    v8.super_class = WFSelectContactsActionUIKitUserInterface;
    LOBYTE(v6) = [(WFSelectContactsActionUIKitUserInterface *)&v8 respondsToSelector:a3];
  }

  return v6;
}

- (void)finishWithContacts:(id)a3 error:(id)a4
{
  v9 = a3;
  v6 = a4;
  v7 = [(WFSelectContactsActionUIKitUserInterface *)self completionHandler];

  if (v7)
  {
    v8 = [(WFSelectContactsActionUIKitUserInterface *)self completionHandler];
    (v8)[2](v8, v9, v6);
  }

  [(WFSelectContactsActionUIKitUserInterface *)self setCompletionHandler:0];
}

- (void)cancelPresentationWithCompletionHandler:(id)a3
{
  v4 = a3;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __84__WFSelectContactsActionUIKitUserInterface_cancelPresentationWithCompletionHandler___block_invoke;
  v7[3] = &unk_278C375C8;
  v7[4] = self;
  v8 = v4;
  v6.receiver = self;
  v6.super_class = WFSelectContactsActionUIKitUserInterface;
  v5 = v4;
  [(WFEmbeddableActionUserInterface *)&v6 cancelPresentationWithCompletionHandler:v7];
}

uint64_t __84__WFSelectContactsActionUIKitUserInterface_cancelPresentationWithCompletionHandler___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [MEMORY[0x277CCA9B8] userCancelledError];
  [v2 finishWithContacts:0 error:v3];

  v4 = *(*(a1 + 40) + 16);

  return v4();
}

void __96__WFSelectContactsActionUIKitUserInterface_showWithProperties_selectMultiple_completionHandler___block_invoke(uint64_t a1)
{
  v14 = 0;
  v15 = &v14;
  v16 = 0x2050000000;
  v2 = getCNContactPickerViewControllerClass_softClass;
  v17 = getCNContactPickerViewControllerClass_softClass;
  if (!getCNContactPickerViewControllerClass_softClass)
  {
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __getCNContactPickerViewControllerClass_block_invoke;
    v13[3] = &unk_278C37610;
    v13[4] = &v14;
    __getCNContactPickerViewControllerClass_block_invoke(v13);
    v2 = v15[3];
  }

  v3 = v2;
  _Block_object_dispose(&v14, 8);
  v4 = objc_alloc_init(v2);
  [v4 setModalPresentationStyle:2];
  [v4 setDelegate:*(a1 + 32)];
  v5 = *(a1 + 40);
  v6 = WFCNPropertyKeysFromActionProperties();
  [v4 setDisplayedPropertyKeys:v6];

  v7 = [v4 displayedPropertyKeys];
  v8 = WFPredicateForEnablingPerson();
  [v4 setPredicateForEnablingContact:v8];

  v9 = [v4 displayedPropertyKeys];
  v10 = WFPredicateForSelectionOfPerson();
  [v4 setPredicateForSelectionOfContact:v10];

  v11 = *(a1 + 32);
  v12 = [v4 presentationController];
  [v12 setDelegate:v11];

  [*(a1 + 32) presentContent:v4];
}

@end