@interface CNContactPickerViewController
+ (id)descriptorForRequiredKeysForSuggestions;
- (BOOL)_isDelayingPresentation;
- (CNContactPickerViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (UIBarButtonItem)addContactBarButtonItem;
- (UINavigationController)navigationController;
- (UIScrollView)scrollView;
- (_UIRemoteViewController)_containedRemoteViewController;
- (id)_pickerPresentedViewController;
- (id)delegate;
- (void)_checkConsistencyFromOptions:(id)a3;
- (void)_endDelayingPresentation;
- (void)_prepareViewController;
- (void)_setViewController:(id)a3;
- (void)_setupViewController;
- (void)closePickerIfNeeded;
- (void)contactListViewControllerShouldEditLimitedAccessSelection:(id)a3;
- (void)dealloc;
- (void)didUpdateLimitedAccessSelection:(id)a3 contactListViewController:(id)a4;
- (void)invalidateSelectionAnimated:(BOOL)a3;
- (void)loadView;
- (void)notifyDelegateForCancellation;
- (void)pickerDidCancel;
- (void)pickerDidCompleteWithNewContact:(id)a3;
- (void)pickerDidGoBack;
- (void)pickerDidSelectAddNewContact;
- (void)pickerDidSelectContact:(id)a3 property:(id)a4;
- (void)pickerDidSelectContacts:(id)a3 properties:(id)a4;
- (void)presentationControllerDidDismiss:(id)a3;
- (void)scrollToClosestContactMatching:(id)a3;
- (void)setBottomEdgeInsetForContentView:(double)a3;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidDisappear:(BOOL)a3;
@end

@implementation CNContactPickerViewController

- (id)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

id __68__CNContactPickerViewController__emitPickerAnalyticsDidSelectItems___block_invoke(uint64_t a1)
{
  v12[4] = *MEMORY[0x1E69E9840];
  v11[0] = @"didSelectItems";
  v2 = [MEMORY[0x1E696AD98] numberWithBool:*(a1 + 40)];
  v12[0] = v2;
  v11[1] = @"outOfProcess";
  v3 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(*(a1 + 32), "_shouldBeOutOfProcess")}];
  v12[1] = v3;
  v11[2] = @"callerBundleID";
  v4 = [*(a1 + 32) nibBundle];
  v5 = [v4 bundleIdentifier];
  v6 = v5;
  v7 = @"Unknown";
  if (v5)
  {
    v7 = v5;
  }

  v12[2] = v7;
  v11[3] = @"entityIsAuthorized";
  v8 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(MEMORY[0x1E695CE18], "authorizationStatusForEntityType:", 0) == 3}];
  v12[3] = v8;
  v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v12 forKeys:v11 count:4];

  return v9;
}

- (void)contactListViewControllerShouldEditLimitedAccessSelection:(id)a3
{
  v7 = a3;
  v4 = [(CNContactPickerViewController *)self delegate];
  if ([v4 conformsToProtocol:&unk_1F0DC22E8])
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;

  if (objc_opt_respondsToSelector())
  {
    [v6 contactListViewControllerShouldEditLimitedAccessSelection:v7];
  }
}

- (void)didUpdateLimitedAccessSelection:(id)a3 contactListViewController:(id)a4
{
  v10 = a3;
  v6 = a4;
  v7 = [(CNContactPickerViewController *)self delegate];
  if ([v7 conformsToProtocol:&unk_1F0DC22E8])
  {
    v8 = v7;
  }

  else
  {
    v8 = 0;
  }

  v9 = v8;

  if (objc_opt_respondsToSelector())
  {
    [v9 contactListViewController:v6 didUpdateLimitedAccessSelection:v10];
  }
}

- (void)pickerDidGoBack
{
  _CNUILog("/Library/Caches/com.apple.xbs/Sources/ContactsUI/Framework/CNContactPickerViewController.m", 449, 7, @"picker did go back", v2, v3, v4, v5, v9);
  v7 = [(CNContactPickerViewController *)self delegate];
  if ([v7 conformsToProtocol:&unk_1F0DC22E8])
  {
    v8 = v7;
  }

  else
  {
    v8 = 0;
  }

  v10 = v8;

  if (objc_opt_respondsToSelector())
  {
    [v10 contactPickerDidGoBack:self];
  }

  [(CNContactPickerViewController *)self closePickerIfNeeded];
}

- (void)pickerDidCancel
{
  _CNUILog("/Library/Caches/com.apple.xbs/Sources/ContactsUI/Framework/CNContactPickerViewController.m", 440, 7, @"picker did cancel", v2, v3, v4, v5, v7);
  [(CNContactPickerViewController *)self _emitPickerAnalyticsDidSelectItems:0];
  [(CNContactPickerViewController *)self notifyDelegateForCancellation];

  [(CNContactPickerViewController *)self closePickerIfNeeded];
}

- (void)pickerDidCompleteWithNewContact:(id)a3
{
  v18[1] = *MEMORY[0x1E69E9840];
  v4 = a3;
  _CNUILog("/Library/Caches/com.apple.xbs/Sources/ContactsUI/Framework/CNContactPickerViewController.m", 422, 7, @"picker did finish with new contact: %@", v5, v6, v7, v8, v4);
  [(CNContactPickerViewController *)self _emitPickerAnalyticsDidSelectItems:1];
  v9 = [(CNContactPickerViewController *)self delegate];
  if ([v9 conformsToProtocol:&unk_1F0DC22E8])
  {
    v10 = v9;
  }

  else
  {
    v10 = 0;
  }

  v11 = v10;

  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    v12 = [(CNContactPickerViewController *)self delegate];
    v13 = objc_opt_respondsToSelector();

    v14 = [(CNContactPickerViewController *)self delegate];
    v15 = v14;
    if (v13)
    {
      [v14 contactPicker:self didSelectContact:v4];
    }

    else
    {
      v16 = objc_opt_respondsToSelector();

      if ((v16 & 1) == 0)
      {
        goto LABEL_14;
      }

      if (v4)
      {
        v18[0] = v4;
        v15 = [MEMORY[0x1E695DEC8] arrayWithObjects:v18 count:1];
      }

      else
      {
        v15 = MEMORY[0x1E695E0F0];
      }

      v17 = [(CNContactPickerViewController *)self delegate];
      [v17 contactPicker:self didSelectContacts:v15];
    }

    goto LABEL_14;
  }

  [v11 contactPicker:self didCompleteWithNewContact:v4];
LABEL_14:
  [(CNContactPickerViewController *)self closePickerIfNeeded];
}

- (void)pickerDidSelectContacts:(id)a3 properties:(id)a4
{
  v18 = a3;
  v6 = a4;
  _CNUILog("/Library/Caches/com.apple.xbs/Sources/ContactsUI/Framework/CNContactPickerViewController.m", 400, 7, @"picker did select contacts: %@, properties: %@", v7, v8, v9, v10, v18);
  [(CNContactPickerViewController *)self _emitPickerAnalyticsDidSelectItems:1];
  if (v6 || ([(CNContactPickerViewController *)self delegate], v11 = objc_claimAutoreleasedReturnValue(), v12 = objc_opt_respondsToSelector(), v11, (v12 & 1) == 0))
  {
    v15 = [(CNContactPickerViewController *)self delegate];
    v16 = objc_opt_respondsToSelector();

    if ((v16 & 1) == 0)
    {
      goto LABEL_7;
    }

    v17 = [(CNContactPickerViewController *)self regulatoryLogger];
    [v17 receivingContactsDataFromOOPContactPicker];

    v14 = [(CNContactPickerViewController *)self delegate];
    [v14 contactPicker:self didSelectContactProperties:v6];
  }

  else
  {
    v13 = [(CNContactPickerViewController *)self regulatoryLogger];
    [v13 receivingContactsDataFromOOPContactPicker];

    v14 = [(CNContactPickerViewController *)self delegate];
    [v14 contactPicker:self didSelectContacts:v18];
  }

LABEL_7:
  [(CNContactPickerViewController *)self closePickerIfNeeded];
}

- (void)pickerDidSelectContact:(id)a3 property:(id)a4
{
  v17 = a3;
  v6 = a4;
  _CNUILog("/Library/Caches/com.apple.xbs/Sources/ContactsUI/Framework/CNContactPickerViewController.m", 380, 7, @"picker did select contact %@, property %@", v7, v8, v9, v10, v17);
  [(CNContactPickerViewController *)self _emitPickerAnalyticsDidSelectItems:1];
  v11 = [(CNContactPickerViewController *)self delegate];
  if (v6)
  {
    v12 = objc_opt_respondsToSelector();

    if ((v12 & 1) == 0)
    {
      goto LABEL_7;
    }

    v13 = [(CNContactPickerViewController *)self regulatoryLogger];
    [v13 receivingContactsDataFromOOPContactPicker];

    v14 = [(CNContactPickerViewController *)self delegate];
    [v14 contactPicker:self didSelectContactProperty:v6];
  }

  else
  {
    v15 = objc_opt_respondsToSelector();

    if ((v15 & 1) == 0)
    {
      goto LABEL_7;
    }

    v16 = [(CNContactPickerViewController *)self regulatoryLogger];
    [v16 receivingContactsDataFromOOPContactPicker];

    v14 = [(CNContactPickerViewController *)self delegate];
    [v14 contactPicker:self didSelectContact:v17];
  }

LABEL_7:
  [(CNContactPickerViewController *)self closePickerIfNeeded];
}

- (void)pickerDidSelectAddNewContact
{
  v3 = [(CNContactPickerViewController *)self delegate];
  if ([v3 conformsToProtocol:&unk_1F0DC22E8])
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  v6 = v4;

  if (objc_opt_respondsToSelector())
  {
    v5 = [(CNContactPickerViewController *)self regulatoryLogger];
    [v5 receivingContactsDataFromOOPContactPicker];

    [v6 pickerDidSelectAddNewContact:self];
  }
}

- (void)presentationControllerDidDismiss:(id)a3
{
  _CNUILog("/Library/Caches/com.apple.xbs/Sources/ContactsUI/Framework/CNContactPickerViewController.m", 361, 7, @"picker did cancel by dismiss", v3, v4, v5, v6, v8);
  [(CNContactPickerViewController *)self _emitPickerAnalyticsDidSelectItems:0];

  [(CNContactPickerViewController *)self notifyDelegateForCancellation];
}

- (_UIRemoteViewController)_containedRemoteViewController
{
  objc_opt_class();
  v3 = [(CNContactPickerViewController *)self viewController];
  if (objc_opt_isKindOfClass())
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;

  return v4;
}

- (UIBarButtonItem)addContactBarButtonItem
{
  v2 = [(CNContactPickerViewController *)self viewController];
  v3 = [v2 addContactBarButtonItem];

  return v3;
}

- (UINavigationController)navigationController
{
  v2 = [(CNContactPickerViewController *)self viewController];
  v3 = [v2 navigationController];

  return v3;
}

- (void)notifyDelegateForCancellation
{
  v3 = [(CNContactPickerViewController *)self delegate];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    v5 = [(CNContactPickerViewController *)self delegate];
    [v5 contactPickerDidCancel:self];
  }
}

- (void)closePickerIfNeeded
{
  if ([(CNContactPickerViewController *)self autocloses])
  {
    v3 = [(CNContactPickerViewController *)self _pickerPresentedViewController];
    if (([v3 isBeingDismissed] & 1) == 0)
    {
      [v3 dismissViewControllerAnimated:1 completion:0];
    }
  }
}

- (void)_prepareViewController
{
  v3 = [(CNContactPickerViewController *)self _pickerPresentedViewController];
  [v3 _beginDelayingPresentation:&__block_literal_global_57 cancellationHandler:10.0];

  v4 = [(CNContactPickerViewController *)self viewController];

  if (v4)
  {

    [(CNContactPickerViewController *)self _setupViewController];
  }

  else if ([(CNContactPickerViewController *)self _shouldBeOutOfProcess])
  {
    v5 = [objc_alloc(MEMORY[0x1E6996800]) initWithAuditToken:0 assumedIdentity:0];
    [(CNContactPickerViewController *)self setRegulatoryLogger:v5];

    v6 = [(CNContactPickerViewController *)self regulatoryLogger];
    [v6 displayingOOPContactPicker];

    v9[0] = 0;
    v9[1] = v9;
    v9[2] = 0x3042000000;
    v9[3] = __Block_byref_object_copy__3953;
    v9[4] = __Block_byref_object_dispose__3954;
    objc_initWeak(&v10, self);
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __55__CNContactPickerViewController__prepareViewController__block_invoke_69;
    v8[3] = &unk_1E74E1F18;
    v8[4] = v9;
    [CNContactPickerHostViewController getViewController:v8];
    _Block_object_dispose(v9, 8);
    objc_destroyWeak(&v10);
  }

  else
  {
    v7 = objc_alloc_init(CNContactPickerContentViewController);
    [(CNContactPickerViewController *)self _setViewController:v7];
  }
}

void __55__CNContactPickerViewController__prepareViewController__block_invoke_69(uint64_t a1, void *a2)
{
  v2 = *(*(a1 + 32) + 8);
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((v2 + 40));
  [WeakRetained _setViewController:v3];
}

uint64_t __55__CNContactPickerViewController__prepareViewController__block_invoke(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = @"NO";
  if (a2)
  {
    v8 = @"YES";
  }

  _CNUILog("/Library/Caches/com.apple.xbs/Sources/ContactsUI/Framework/CNContactPickerViewController.m", 293, 3, @"Contact picker delayed appearance timed out - %@", a5, a6, a7, a8, v8);
  return 1;
}

- (void)_setupViewController
{
  v64 = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E695DF90] dictionary];
  v4 = MEMORY[0x1E696AD98];
  v5 = [(CNContactPickerViewController *)self delegate];
  v6 = [v4 numberWithBool:objc_opt_respondsToSelector() & 1];
  [v3 setObject:v6 forKeyedSubscript:@"ClientWantsSingleContact"];

  v7 = MEMORY[0x1E696AD98];
  v8 = [(CNContactPickerViewController *)self delegate];
  v9 = [v7 numberWithBool:objc_opt_respondsToSelector() & 1];
  [v3 setObject:v9 forKeyedSubscript:@"ClientWantsSingleProperty"];

  v10 = MEMORY[0x1E696AD98];
  v11 = [(CNContactPickerViewController *)self delegate];
  v12 = (objc_opt_respondsToSelector() & 1) != 0 && [(CNContactPickerViewController *)self limitedAccessPickerType]!= 5;
  v13 = [v10 numberWithInt:v12];
  [v3 setObject:v13 forKeyedSubscript:@"ClientWantsMultipleContacts"];

  v14 = MEMORY[0x1E696AD98];
  v15 = [(CNContactPickerViewController *)self delegate];
  v16 = [v14 numberWithBool:objc_opt_respondsToSelector() & 1];
  [v3 setObject:v16 forKeyedSubscript:@"ClientWantsMultipleProperties"];

  v17 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(MEMORY[0x1E695CE18], "authorizationStatusForEntityType:", 0) == 3}];
  [v3 setObject:v17 forKeyedSubscript:@"ClientHasContactsAccess"];

  v18 = [(CNContactPickerViewController *)self familyMember];
  [v3 setObject:v18 forKeyedSubscript:@"familyMember"];

  v19 = [(CNContactPickerViewController *)self parentContainer];
  [v3 setObject:v19 forKeyedSubscript:@"parentContainer"];

  v20 = [MEMORY[0x1E696AD98] numberWithBool:{-[CNContactPickerViewController allowsDeletion](self, "allowsDeletion")}];
  [v3 setObject:v20 forKeyedSubscript:@"allowsDeletion"];

  v21 = [MEMORY[0x1E696AD98] numberWithBool:{-[CNContactPickerViewController shouldAllowSearchForMultiSelect](self, "shouldAllowSearchForMultiSelect")}];
  [v3 setObject:v21 forKeyedSubscript:@"allowsSearchForMultiSelect"];

  v22 = [MEMORY[0x1E696AD98] numberWithBool:{-[CNContactPickerViewController allowsNamePicking](self, "allowsNamePicking")}];
  [v3 setObject:v22 forKeyedSubscript:@"allowsNamePicking"];

  v23 = [MEMORY[0x1E696AD98] numberWithBool:{-[CNContactPickerViewController shouldDisplaySuggestionsController](self, "shouldDisplaySuggestionsController")}];
  [v3 setObject:v23 forKeyedSubscript:@"shouldDisplaySuggestionsController"];

  v24 = [(CNContactPickerViewController *)self suggestionsIgnoredContactIdentifiers];
  [v3 setObject:v24 forKeyedSubscript:@"suggestionsIgnoredContactIdentifiers"];

  v25 = [(CNContactPickerViewController *)self suggestionsInteractionDomains];
  [v3 setObject:v25 forKeyedSubscript:@"suggestionsInteractionDomains"];

  v26 = [MEMORY[0x1E696AD98] numberWithBool:{-[CNContactPickerViewController shouldDisplayAddNewContactRow](self, "shouldDisplayAddNewContactRow")}];
  [v3 setObject:v26 forKeyedSubscript:@"shouldDisplayAddNewContactRow"];

  v27 = [(CNContactPickerViewController *)self targetGroupIdentifier];
  [v3 setObject:v27 forKeyedSubscript:@"targetGroupIdentifier"];

  [v3 setObject:MEMORY[0x1E695E118] forKeyedSubscript:@"shouldHideDuplicates"];
  v28 = MEMORY[0x1E696AD98];
  v29 = [(CNContactPickerViewController *)self traitCollection];
  v30 = [v28 numberWithInteger:{objc_msgSend(v29, "userInterfaceIdiom")}];
  [v3 setObject:v30 forKeyedSubscript:@"hostIdiom"];

  v31 = [(CNContactPickerViewController *)self limitedAccessContactSelection];
  [v3 setObject:v31 forKeyedSubscript:@"limitedAccessContactSelection"];

  v32 = [MEMORY[0x1E696AD98] numberWithInt:{-[CNContactPickerViewController limitedAccessPickerType](self, "limitedAccessPickerType")}];
  [v3 setObject:v32 forKeyedSubscript:@"limitedAccessPickerType"];

  v33 = [(CNContactPickerViewController *)self limitedAccessAppName];
  [v3 setObject:v33 forKeyedSubscript:@"limitedAccessAppName"];

  v34 = [(CNContactPickerViewController *)self limitedAccessAppBundleId];
  if (v34)
  {
    v35 = [(CNContactPickerViewController *)self limitedAccessAppBundleId];
    [v3 setObject:v35 forKeyedSubscript:@"limitedAccessAppBundleId"];
  }

  else
  {
    v35 = [(CNContactPickerViewController *)self nibBundle];
    v36 = [v35 bundleIdentifier];
    [v3 setObject:v36 forKeyedSubscript:@"limitedAccessAppBundleId"];
  }

  v37 = [MEMORY[0x1E696AD98] numberWithBool:{-[CNContactPickerViewController hasPickerPrivacyUI](self, "hasPickerPrivacyUI")}];
  [v3 setObject:v37 forKeyedSubscript:@"hasPickerPrivacyUI"];

  v38 = [(CNContactPickerViewController *)self limitedAccessSearchQuery];
  [v3 setObject:v38 forKeyedSubscript:@"limitedAccessSearchQuery"];

  v39 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[CNContactPickerViewController limitedAccessCaption](self, "limitedAccessCaption")}];
  [v3 setObject:v39 forKeyedSubscript:@"limitedAccessContactCaption"];

  if ([(CNContactPickerViewController *)self shouldDisplaySuggestionsController])
  {
    v40 = [(CNContactPickerViewController *)self contactSuggestions];

    if (v40)
    {
      v41 = [(CNContactPickerViewController *)self contactSuggestions];
      [v3 setObject:v41 forKeyedSubscript:@"suggestedContacts"];
    }
  }

  v42 = [MEMORY[0x1E69966E8] currentEnvironment];
  v43 = [v42 entitlementVerifier];
  v44 = [v43 currentProcessHasBooleanEntitlement:*MEMORY[0x1E69964E8] error:0];

  if (v44)
  {
    v45 = [MEMORY[0x1E696AD98] numberWithBool:{-[CNContactPickerViewController ignoresParentalRestrictions](self, "ignoresParentalRestrictions")}];
    [v3 setObject:v45 forKeyedSubscript:@"ignoresParentalRestrictions"];
  }

  v46 = [(CNContactPickerViewController *)self prohibitedPropertyKeys];
  [v3 setObject:v46 forKeyedSubscript:@"prohibitedPropertyKeys"];

  v47 = [(CNContactPickerViewController *)self scrollContact];

  if (v47)
  {
    v48 = [(CNContactPickerViewController *)self scrollContact];
    [v3 setObject:v48 forKeyedSubscript:@"ScrollContact"];
  }

  [(CNContactPickerViewController *)self _checkConsistencyFromOptions:v3];
  v49 = [MEMORY[0x1E695DF90] dictionary];
  v59 = 0u;
  v60 = 0u;
  v61 = 0u;
  v62 = 0u;
  v50 = [MEMORY[0x1E695DFD8] setWithObjects:{@"predicateForEnablingContact", @"predicateForSelectionOfContact", @"predicateForSelectionOfProperty", @"displayedPropertyKeys", @"cardActions", @"hidesSearchableSources", @"onlyRealContacts", @"allowsEditing", @"allowsCancel", @"allowsDone", @"allowsNamePicking", @"prompt", @"hidesPromptInLandscape", @"bannerTitle", @"bannerValue", 0}];
  v51 = [v50 countByEnumeratingWithState:&v59 objects:v63 count:16];
  if (v51)
  {
    v52 = v51;
    v53 = *v60;
    do
    {
      for (i = 0; i != v52; ++i)
      {
        if (*v60 != v53)
        {
          objc_enumerationMutation(v50);
        }

        v55 = *(*(&v59 + 1) + 8 * i);
        v56 = [(CNContactPickerViewController *)self valueForKey:v55];
        if (v56)
        {
          [v49 setObject:v56 forKeyedSubscript:v55];
        }
      }

      v52 = [v50 countByEnumeratingWithState:&v59 objects:v63 count:16];
    }

    while (v52);
  }

  [v3 setObject:v49 forKeyedSubscript:@"Properties"];
  v57 = [(CNContactPickerViewController *)self viewController];
  v58[0] = MEMORY[0x1E69E9820];
  v58[1] = 3221225472;
  v58[2] = __53__CNContactPickerViewController__setupViewController__block_invoke;
  v58[3] = &unk_1E74E5200;
  v58[4] = self;
  [v57 setupWithOptions:v3 readyBlock:v58];
}

void __53__CNContactPickerViewController__setupViewController__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __53__CNContactPickerViewController__setupViewController__block_invoke_2;
  v5[3] = &unk_1E74E77C0;
  v5[4] = *(a1 + 32);
  v6 = v3;
  v4 = v3;
  dispatch_async(MEMORY[0x1E69E96A0], v5);
}

void __53__CNContactPickerViewController__setupViewController__block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) _pickerPresentedViewController];
  [v2 _endDelayingPresentation];

  v8 = [*(a1 + 32) cnui_appropriatePresentationController];
  v3 = [v8 delegate];

  if (!v3)
  {
    [v8 setDelegate:*(a1 + 32)];
  }

  if (*(a1 + 40))
  {
    _CNUILog("/Library/Caches/com.apple.xbs/Sources/ContactsUI/Framework/CNContactPickerViewController.m", 278, 3, @"Error when showing picker: %@", v4, v5, v6, v7, *(a1 + 40));
  }
}

- (void)_setViewController:(id)a3
{
  v4 = a3;
  [v4 setDelegate:self];
  [(CNContactPickerViewController *)self setViewController:v4];
  [(UIViewController *)self cnui_addChildViewController:v4];

  [(CNContactPickerViewController *)self _setupViewController];
}

- (void)_endDelayingPresentation
{
  self->_ignoreViewWillBePresented = 1;
  v3.receiver = self;
  v3.super_class = CNContactPickerViewController;
  [(CNContactPickerViewController *)&v3 _endDelayingPresentation];
  self->_ignoreViewWillBePresented = 0;
}

- (BOOL)_isDelayingPresentation
{
  v5.receiver = self;
  v5.super_class = CNContactPickerViewController;
  if ([(CNContactPickerViewController *)&v5 _isDelayingPresentation])
  {
    return 1;
  }

  if (!self->_ignoreViewWillBePresented && (objc_opt_respondsToSelector() & 1) != 0)
  {
    [(CNContactPickerViewController *)self _viewWillBePresented];
  }

  v4.receiver = self;
  v4.super_class = CNContactPickerViewController;
  return [(CNContactPickerViewController *)&v4 _isDelayingPresentation];
}

- (void)setBottomEdgeInsetForContentView:(double)a3
{
  if (![(CNContactPickerViewController *)self _shouldBeOutOfProcess])
  {
    v5 = [(CNContactPickerViewController *)self viewController];
    [v5 setBottomEdgesInset:a3];
  }
}

- (UIScrollView)scrollView
{
  if ([(CNContactPickerViewController *)self _shouldBeOutOfProcess])
  {
    v3 = 0;
  }

  else
  {
    v4 = [(CNContactPickerViewController *)self viewController];
    v3 = [v4 scrollView];
  }

  return v3;
}

- (void)viewDidDisappear:(BOOL)a3
{
  v3.receiver = self;
  v3.super_class = CNContactPickerViewController;
  [(CNContactPickerViewController *)&v3 viewDidDisappear:a3];
  if ([*MEMORY[0x1E69DDA98] isPPTAvailable])
  {
    dispatch_async(MEMORY[0x1E69E96A0], &__block_literal_global_36);
  }
}

void __50__CNContactPickerViewController_viewDidDisappear___block_invoke()
{
  v0 = [MEMORY[0x1E696ABB0] defaultCenter];
  [v0 postNotificationName:@"PeoplePickerDidHide" object:0 userInfo:0 deliverImmediately:1];
}

- (void)viewDidAppear:(BOOL)a3
{
  v3.receiver = self;
  v3.super_class = CNContactPickerViewController;
  [(CNContactPickerViewController *)&v3 viewDidAppear:a3];
  if ([*MEMORY[0x1E69DDA98] isPPTAvailable])
  {
    dispatch_async(MEMORY[0x1E69E96A0], &__block_literal_global_3971);
  }
}

void __47__CNContactPickerViewController_viewDidAppear___block_invoke()
{
  v0 = [MEMORY[0x1E696ABB0] defaultCenter];
  [v0 postNotificationName:@"PeoplePickerDidShow" object:0 userInfo:0 deliverImmediately:1];
}

- (void)loadView
{
  v3.receiver = self;
  v3.super_class = CNContactPickerViewController;
  [(CNContactPickerViewController *)&v3 loadView];
  [(CNContactPickerViewController *)self _viewWillBePresented];
}

- (void)invalidateSelectionAnimated:(BOOL)a3
{
  v3 = a3;
  v4 = [(CNContactPickerViewController *)self viewController];
  [v4 invalidateSelectionAnimated:v3];
}

- (void)scrollToClosestContactMatching:(id)a3
{
  v4 = MEMORY[0x1E695CF18];
  v5 = a3;
  v8 = objc_alloc_init(v4);
  v6 = [v5 givenName];
  [v8 setGivenName:v6];

  v7 = [v5 familyName];

  [v8 setFamilyName:v7];
  [(CNContactPickerViewController *)self setScrollContact:v8];
}

- (void)_checkConsistencyFromOptions:(id)a3
{
  v21 = a3;
  v4 = [v21 objectForKeyedSubscript:@"ClientWantsSingleContact"];
  v5 = [v4 BOOLValue];

  v6 = [v21 objectForKeyedSubscript:@"ClientWantsSingleProperty"];
  v7 = [v6 BOOLValue];

  v8 = [v21 objectForKeyedSubscript:@"ClientWantsMultipleContacts"];
  v9 = [v8 BOOLValue];

  v10 = [v21 objectForKeyedSubscript:@"ClientWantsMultipleProperties"];
  v11 = [v10 BOOLValue];

  v12 = [(CNContactPickerViewController *)self predicateForSelectionOfContact];

  v13 = [(CNContactPickerViewController *)self predicateForSelectionOfProperty];

  v14 = NSStringFromSelector(sel_contactPicker_didSelectContact_);
  v19 = NSStringFromSelector(sel_contactPicker_didSelectContactProperty_);
  if ((v5 | v7) & 1) != 0 && ((v9 | v11))
  {
    _CNUILog("/Library/Caches/com.apple.xbs/Sources/ContactsUI/Framework/CNContactPickerViewController.m", 93, 4, @"Both single contact and multiple contacts delegate methods are implemented, the single variants will be ignored", v15, v16, v17, v18, v20);
    [v21 removeObjectForKey:@"ClientWantsSingleContact"];
    [v21 removeObjectForKey:@"ClientWantsSingleProperty"];
  }

  if (((v5 | v7 | v9 | v11) & 1) == 0)
  {
    if (!(v12 | v13))
    {
      goto LABEL_14;
    }

    _CNUILog("/Library/Caches/com.apple.xbs/Sources/ContactsUI/Framework/CNContactPickerViewController.m", 101, 3, @"Selection predicates are set but the delegate does not implement %@ and %@. Those predicates will be ignored.", v15, v16, v17, v18, v14);
    [(CNContactPickerViewController *)self setPredicateForSelectionOfContact:0];
    goto LABEL_11;
  }

  if ((v5 | v9 | v11))
  {
    if (((v7 | v11) & 1) == 0 && v13)
    {
      _CNUILog("/Library/Caches/com.apple.xbs/Sources/ContactsUI/Framework/CNContactPickerViewController.m", 114, 3, @"Property selection predicate is set but the delegate does not implement %@. The predicate will be ignored.", v15, v16, v17, v18, v19);
LABEL_11:
      [(CNContactPickerViewController *)self setPredicateForSelectionOfProperty:0];
    }
  }

  else if (v12)
  {
    _CNUILog("/Library/Caches/com.apple.xbs/Sources/ContactsUI/Framework/CNContactPickerViewController.m", 108, 3, @"Person selection predicate is set but the delegate does not implement %@. The predicate will be ignored.", v15, v16, v17, v18, v14);
    [(CNContactPickerViewController *)self setPredicateForSelectionOfContact:0];
  }

LABEL_14:
}

- (id)_pickerPresentedViewController
{
  v2 = self;
  v3 = [(CNContactPickerViewController *)v2 delegate];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    v5 = [(CNContactPickerViewController *)v2 delegate];
    v6 = [v5 contactPickerPresentedViewController:v2];

    v2 = v6;
  }

  return v2;
}

- (void)dealloc
{
  v3 = [(CNContactPickerViewController *)self viewController];
  [v3 invalidate];

  v4.receiver = self;
  v4.super_class = CNContactPickerViewController;
  [(CNContactPickerViewController *)&v4 dealloc];
}

- (CNContactPickerViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  v6.receiver = self;
  v6.super_class = CNContactPickerViewController;
  v4 = [(CNContactPickerViewController *)&v6 initWithNibName:a3 bundle:a4];
  [(CNContactPickerViewController *)v4 setAllowsCancel:1];
  [(CNContactPickerViewController *)v4 setAutocloses:1];
  [(CNContactPickerViewController *)v4 setCardActions:0];
  return v4;
}

+ (id)descriptorForRequiredKeysForSuggestions
{
  v5[1] = *MEMORY[0x1E69E9840];
  v2 = [MEMORY[0x1E695CD80] descriptorForRequiredKeysForStyle:0];
  v5[0] = v2;
  v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:v5 count:1];

  return v3;
}

@end