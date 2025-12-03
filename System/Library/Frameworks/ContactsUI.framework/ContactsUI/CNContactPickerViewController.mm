@interface CNContactPickerViewController
+ (id)descriptorForRequiredKeysForSuggestions;
- (BOOL)_isDelayingPresentation;
- (CNContactPickerViewController)initWithNibName:(id)name bundle:(id)bundle;
- (UIBarButtonItem)addContactBarButtonItem;
- (UINavigationController)navigationController;
- (UIScrollView)scrollView;
- (_UIRemoteViewController)_containedRemoteViewController;
- (id)_pickerPresentedViewController;
- (id)delegate;
- (void)_checkConsistencyFromOptions:(id)options;
- (void)_endDelayingPresentation;
- (void)_prepareViewController;
- (void)_setViewController:(id)controller;
- (void)_setupViewController;
- (void)closePickerIfNeeded;
- (void)contactListViewControllerShouldEditLimitedAccessSelection:(id)selection;
- (void)dealloc;
- (void)didUpdateLimitedAccessSelection:(id)selection contactListViewController:(id)controller;
- (void)invalidateSelectionAnimated:(BOOL)animated;
- (void)loadView;
- (void)notifyDelegateForCancellation;
- (void)pickerDidCancel;
- (void)pickerDidCompleteWithNewContact:(id)contact;
- (void)pickerDidGoBack;
- (void)pickerDidSelectAddNewContact;
- (void)pickerDidSelectContact:(id)contact property:(id)property;
- (void)pickerDidSelectContacts:(id)contacts properties:(id)properties;
- (void)presentationControllerDidDismiss:(id)dismiss;
- (void)scrollToClosestContactMatching:(id)matching;
- (void)setBottomEdgeInsetForContentView:(double)view;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidDisappear:(BOOL)disappear;
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

- (void)contactListViewControllerShouldEditLimitedAccessSelection:(id)selection
{
  selectionCopy = selection;
  delegate = [(CNContactPickerViewController *)self delegate];
  if ([delegate conformsToProtocol:&unk_1F0DC22E8])
  {
    v5 = delegate;
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;

  if (objc_opt_respondsToSelector())
  {
    [v6 contactListViewControllerShouldEditLimitedAccessSelection:selectionCopy];
  }
}

- (void)didUpdateLimitedAccessSelection:(id)selection contactListViewController:(id)controller
{
  selectionCopy = selection;
  controllerCopy = controller;
  delegate = [(CNContactPickerViewController *)self delegate];
  if ([delegate conformsToProtocol:&unk_1F0DC22E8])
  {
    v8 = delegate;
  }

  else
  {
    v8 = 0;
  }

  v9 = v8;

  if (objc_opt_respondsToSelector())
  {
    [v9 contactListViewController:controllerCopy didUpdateLimitedAccessSelection:selectionCopy];
  }
}

- (void)pickerDidGoBack
{
  _CNUILog("/Library/Caches/com.apple.xbs/Sources/ContactsUI/Framework/CNContactPickerViewController.m", 449, 7, @"picker did go back", v2, v3, v4, v5, v9);
  delegate = [(CNContactPickerViewController *)self delegate];
  if ([delegate conformsToProtocol:&unk_1F0DC22E8])
  {
    v8 = delegate;
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

- (void)pickerDidCompleteWithNewContact:(id)contact
{
  v18[1] = *MEMORY[0x1E69E9840];
  contactCopy = contact;
  _CNUILog("/Library/Caches/com.apple.xbs/Sources/ContactsUI/Framework/CNContactPickerViewController.m", 422, 7, @"picker did finish with new contact: %@", v5, v6, v7, v8, contactCopy);
  [(CNContactPickerViewController *)self _emitPickerAnalyticsDidSelectItems:1];
  delegate = [(CNContactPickerViewController *)self delegate];
  if ([delegate conformsToProtocol:&unk_1F0DC22E8])
  {
    v10 = delegate;
  }

  else
  {
    v10 = 0;
  }

  v11 = v10;

  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    delegate2 = [(CNContactPickerViewController *)self delegate];
    v13 = objc_opt_respondsToSelector();

    delegate3 = [(CNContactPickerViewController *)self delegate];
    v15 = delegate3;
    if (v13)
    {
      [delegate3 contactPicker:self didSelectContact:contactCopy];
    }

    else
    {
      v16 = objc_opt_respondsToSelector();

      if ((v16 & 1) == 0)
      {
        goto LABEL_14;
      }

      if (contactCopy)
      {
        v18[0] = contactCopy;
        v15 = [MEMORY[0x1E695DEC8] arrayWithObjects:v18 count:1];
      }

      else
      {
        v15 = MEMORY[0x1E695E0F0];
      }

      delegate4 = [(CNContactPickerViewController *)self delegate];
      [delegate4 contactPicker:self didSelectContacts:v15];
    }

    goto LABEL_14;
  }

  [v11 contactPicker:self didCompleteWithNewContact:contactCopy];
LABEL_14:
  [(CNContactPickerViewController *)self closePickerIfNeeded];
}

- (void)pickerDidSelectContacts:(id)contacts properties:(id)properties
{
  contactsCopy = contacts;
  propertiesCopy = properties;
  _CNUILog("/Library/Caches/com.apple.xbs/Sources/ContactsUI/Framework/CNContactPickerViewController.m", 400, 7, @"picker did select contacts: %@, properties: %@", v7, v8, v9, v10, contactsCopy);
  [(CNContactPickerViewController *)self _emitPickerAnalyticsDidSelectItems:1];
  if (propertiesCopy || ([(CNContactPickerViewController *)self delegate], v11 = objc_claimAutoreleasedReturnValue(), v12 = objc_opt_respondsToSelector(), v11, (v12 & 1) == 0))
  {
    delegate = [(CNContactPickerViewController *)self delegate];
    v16 = objc_opt_respondsToSelector();

    if ((v16 & 1) == 0)
    {
      goto LABEL_7;
    }

    regulatoryLogger = [(CNContactPickerViewController *)self regulatoryLogger];
    [regulatoryLogger receivingContactsDataFromOOPContactPicker];

    delegate2 = [(CNContactPickerViewController *)self delegate];
    [delegate2 contactPicker:self didSelectContactProperties:propertiesCopy];
  }

  else
  {
    regulatoryLogger2 = [(CNContactPickerViewController *)self regulatoryLogger];
    [regulatoryLogger2 receivingContactsDataFromOOPContactPicker];

    delegate2 = [(CNContactPickerViewController *)self delegate];
    [delegate2 contactPicker:self didSelectContacts:contactsCopy];
  }

LABEL_7:
  [(CNContactPickerViewController *)self closePickerIfNeeded];
}

- (void)pickerDidSelectContact:(id)contact property:(id)property
{
  contactCopy = contact;
  propertyCopy = property;
  _CNUILog("/Library/Caches/com.apple.xbs/Sources/ContactsUI/Framework/CNContactPickerViewController.m", 380, 7, @"picker did select contact %@, property %@", v7, v8, v9, v10, contactCopy);
  [(CNContactPickerViewController *)self _emitPickerAnalyticsDidSelectItems:1];
  delegate = [(CNContactPickerViewController *)self delegate];
  if (propertyCopy)
  {
    v12 = objc_opt_respondsToSelector();

    if ((v12 & 1) == 0)
    {
      goto LABEL_7;
    }

    regulatoryLogger = [(CNContactPickerViewController *)self regulatoryLogger];
    [regulatoryLogger receivingContactsDataFromOOPContactPicker];

    delegate2 = [(CNContactPickerViewController *)self delegate];
    [delegate2 contactPicker:self didSelectContactProperty:propertyCopy];
  }

  else
  {
    v15 = objc_opt_respondsToSelector();

    if ((v15 & 1) == 0)
    {
      goto LABEL_7;
    }

    regulatoryLogger2 = [(CNContactPickerViewController *)self regulatoryLogger];
    [regulatoryLogger2 receivingContactsDataFromOOPContactPicker];

    delegate2 = [(CNContactPickerViewController *)self delegate];
    [delegate2 contactPicker:self didSelectContact:contactCopy];
  }

LABEL_7:
  [(CNContactPickerViewController *)self closePickerIfNeeded];
}

- (void)pickerDidSelectAddNewContact
{
  delegate = [(CNContactPickerViewController *)self delegate];
  if ([delegate conformsToProtocol:&unk_1F0DC22E8])
  {
    v4 = delegate;
  }

  else
  {
    v4 = 0;
  }

  v6 = v4;

  if (objc_opt_respondsToSelector())
  {
    regulatoryLogger = [(CNContactPickerViewController *)self regulatoryLogger];
    [regulatoryLogger receivingContactsDataFromOOPContactPicker];

    [v6 pickerDidSelectAddNewContact:self];
  }
}

- (void)presentationControllerDidDismiss:(id)dismiss
{
  _CNUILog("/Library/Caches/com.apple.xbs/Sources/ContactsUI/Framework/CNContactPickerViewController.m", 361, 7, @"picker did cancel by dismiss", v3, v4, v5, v6, v8);
  [(CNContactPickerViewController *)self _emitPickerAnalyticsDidSelectItems:0];

  [(CNContactPickerViewController *)self notifyDelegateForCancellation];
}

- (_UIRemoteViewController)_containedRemoteViewController
{
  objc_opt_class();
  viewController = [(CNContactPickerViewController *)self viewController];
  if (objc_opt_isKindOfClass())
  {
    v4 = viewController;
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
  viewController = [(CNContactPickerViewController *)self viewController];
  addContactBarButtonItem = [viewController addContactBarButtonItem];

  return addContactBarButtonItem;
}

- (UINavigationController)navigationController
{
  viewController = [(CNContactPickerViewController *)self viewController];
  navigationController = [viewController navigationController];

  return navigationController;
}

- (void)notifyDelegateForCancellation
{
  delegate = [(CNContactPickerViewController *)self delegate];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    delegate2 = [(CNContactPickerViewController *)self delegate];
    [delegate2 contactPickerDidCancel:self];
  }
}

- (void)closePickerIfNeeded
{
  if ([(CNContactPickerViewController *)self autocloses])
  {
    _pickerPresentedViewController = [(CNContactPickerViewController *)self _pickerPresentedViewController];
    if (([_pickerPresentedViewController isBeingDismissed] & 1) == 0)
    {
      [_pickerPresentedViewController dismissViewControllerAnimated:1 completion:0];
    }
  }
}

- (void)_prepareViewController
{
  _pickerPresentedViewController = [(CNContactPickerViewController *)self _pickerPresentedViewController];
  [_pickerPresentedViewController _beginDelayingPresentation:&__block_literal_global_57 cancellationHandler:10.0];

  viewController = [(CNContactPickerViewController *)self viewController];

  if (viewController)
  {

    [(CNContactPickerViewController *)self _setupViewController];
  }

  else if ([(CNContactPickerViewController *)self _shouldBeOutOfProcess])
  {
    v5 = [objc_alloc(MEMORY[0x1E6996800]) initWithAuditToken:0 assumedIdentity:0];
    [(CNContactPickerViewController *)self setRegulatoryLogger:v5];

    regulatoryLogger = [(CNContactPickerViewController *)self regulatoryLogger];
    [regulatoryLogger displayingOOPContactPicker];

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
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  v4 = MEMORY[0x1E696AD98];
  delegate = [(CNContactPickerViewController *)self delegate];
  v6 = [v4 numberWithBool:objc_opt_respondsToSelector() & 1];
  [dictionary setObject:v6 forKeyedSubscript:@"ClientWantsSingleContact"];

  v7 = MEMORY[0x1E696AD98];
  delegate2 = [(CNContactPickerViewController *)self delegate];
  v9 = [v7 numberWithBool:objc_opt_respondsToSelector() & 1];
  [dictionary setObject:v9 forKeyedSubscript:@"ClientWantsSingleProperty"];

  v10 = MEMORY[0x1E696AD98];
  delegate3 = [(CNContactPickerViewController *)self delegate];
  v12 = (objc_opt_respondsToSelector() & 1) != 0 && [(CNContactPickerViewController *)self limitedAccessPickerType]!= 5;
  v13 = [v10 numberWithInt:v12];
  [dictionary setObject:v13 forKeyedSubscript:@"ClientWantsMultipleContacts"];

  v14 = MEMORY[0x1E696AD98];
  delegate4 = [(CNContactPickerViewController *)self delegate];
  v16 = [v14 numberWithBool:objc_opt_respondsToSelector() & 1];
  [dictionary setObject:v16 forKeyedSubscript:@"ClientWantsMultipleProperties"];

  v17 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(MEMORY[0x1E695CE18], "authorizationStatusForEntityType:", 0) == 3}];
  [dictionary setObject:v17 forKeyedSubscript:@"ClientHasContactsAccess"];

  familyMember = [(CNContactPickerViewController *)self familyMember];
  [dictionary setObject:familyMember forKeyedSubscript:@"familyMember"];

  parentContainer = [(CNContactPickerViewController *)self parentContainer];
  [dictionary setObject:parentContainer forKeyedSubscript:@"parentContainer"];

  v20 = [MEMORY[0x1E696AD98] numberWithBool:{-[CNContactPickerViewController allowsDeletion](self, "allowsDeletion")}];
  [dictionary setObject:v20 forKeyedSubscript:@"allowsDeletion"];

  v21 = [MEMORY[0x1E696AD98] numberWithBool:{-[CNContactPickerViewController shouldAllowSearchForMultiSelect](self, "shouldAllowSearchForMultiSelect")}];
  [dictionary setObject:v21 forKeyedSubscript:@"allowsSearchForMultiSelect"];

  v22 = [MEMORY[0x1E696AD98] numberWithBool:{-[CNContactPickerViewController allowsNamePicking](self, "allowsNamePicking")}];
  [dictionary setObject:v22 forKeyedSubscript:@"allowsNamePicking"];

  v23 = [MEMORY[0x1E696AD98] numberWithBool:{-[CNContactPickerViewController shouldDisplaySuggestionsController](self, "shouldDisplaySuggestionsController")}];
  [dictionary setObject:v23 forKeyedSubscript:@"shouldDisplaySuggestionsController"];

  suggestionsIgnoredContactIdentifiers = [(CNContactPickerViewController *)self suggestionsIgnoredContactIdentifiers];
  [dictionary setObject:suggestionsIgnoredContactIdentifiers forKeyedSubscript:@"suggestionsIgnoredContactIdentifiers"];

  suggestionsInteractionDomains = [(CNContactPickerViewController *)self suggestionsInteractionDomains];
  [dictionary setObject:suggestionsInteractionDomains forKeyedSubscript:@"suggestionsInteractionDomains"];

  v26 = [MEMORY[0x1E696AD98] numberWithBool:{-[CNContactPickerViewController shouldDisplayAddNewContactRow](self, "shouldDisplayAddNewContactRow")}];
  [dictionary setObject:v26 forKeyedSubscript:@"shouldDisplayAddNewContactRow"];

  targetGroupIdentifier = [(CNContactPickerViewController *)self targetGroupIdentifier];
  [dictionary setObject:targetGroupIdentifier forKeyedSubscript:@"targetGroupIdentifier"];

  [dictionary setObject:MEMORY[0x1E695E118] forKeyedSubscript:@"shouldHideDuplicates"];
  v28 = MEMORY[0x1E696AD98];
  traitCollection = [(CNContactPickerViewController *)self traitCollection];
  v30 = [v28 numberWithInteger:{objc_msgSend(traitCollection, "userInterfaceIdiom")}];
  [dictionary setObject:v30 forKeyedSubscript:@"hostIdiom"];

  limitedAccessContactSelection = [(CNContactPickerViewController *)self limitedAccessContactSelection];
  [dictionary setObject:limitedAccessContactSelection forKeyedSubscript:@"limitedAccessContactSelection"];

  v32 = [MEMORY[0x1E696AD98] numberWithInt:{-[CNContactPickerViewController limitedAccessPickerType](self, "limitedAccessPickerType")}];
  [dictionary setObject:v32 forKeyedSubscript:@"limitedAccessPickerType"];

  limitedAccessAppName = [(CNContactPickerViewController *)self limitedAccessAppName];
  [dictionary setObject:limitedAccessAppName forKeyedSubscript:@"limitedAccessAppName"];

  limitedAccessAppBundleId = [(CNContactPickerViewController *)self limitedAccessAppBundleId];
  if (limitedAccessAppBundleId)
  {
    limitedAccessAppBundleId2 = [(CNContactPickerViewController *)self limitedAccessAppBundleId];
    [dictionary setObject:limitedAccessAppBundleId2 forKeyedSubscript:@"limitedAccessAppBundleId"];
  }

  else
  {
    limitedAccessAppBundleId2 = [(CNContactPickerViewController *)self nibBundle];
    bundleIdentifier = [limitedAccessAppBundleId2 bundleIdentifier];
    [dictionary setObject:bundleIdentifier forKeyedSubscript:@"limitedAccessAppBundleId"];
  }

  v37 = [MEMORY[0x1E696AD98] numberWithBool:{-[CNContactPickerViewController hasPickerPrivacyUI](self, "hasPickerPrivacyUI")}];
  [dictionary setObject:v37 forKeyedSubscript:@"hasPickerPrivacyUI"];

  limitedAccessSearchQuery = [(CNContactPickerViewController *)self limitedAccessSearchQuery];
  [dictionary setObject:limitedAccessSearchQuery forKeyedSubscript:@"limitedAccessSearchQuery"];

  v39 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[CNContactPickerViewController limitedAccessCaption](self, "limitedAccessCaption")}];
  [dictionary setObject:v39 forKeyedSubscript:@"limitedAccessContactCaption"];

  if ([(CNContactPickerViewController *)self shouldDisplaySuggestionsController])
  {
    contactSuggestions = [(CNContactPickerViewController *)self contactSuggestions];

    if (contactSuggestions)
    {
      contactSuggestions2 = [(CNContactPickerViewController *)self contactSuggestions];
      [dictionary setObject:contactSuggestions2 forKeyedSubscript:@"suggestedContacts"];
    }
  }

  currentEnvironment = [MEMORY[0x1E69966E8] currentEnvironment];
  entitlementVerifier = [currentEnvironment entitlementVerifier];
  v44 = [entitlementVerifier currentProcessHasBooleanEntitlement:*MEMORY[0x1E69964E8] error:0];

  if (v44)
  {
    v45 = [MEMORY[0x1E696AD98] numberWithBool:{-[CNContactPickerViewController ignoresParentalRestrictions](self, "ignoresParentalRestrictions")}];
    [dictionary setObject:v45 forKeyedSubscript:@"ignoresParentalRestrictions"];
  }

  prohibitedPropertyKeys = [(CNContactPickerViewController *)self prohibitedPropertyKeys];
  [dictionary setObject:prohibitedPropertyKeys forKeyedSubscript:@"prohibitedPropertyKeys"];

  scrollContact = [(CNContactPickerViewController *)self scrollContact];

  if (scrollContact)
  {
    scrollContact2 = [(CNContactPickerViewController *)self scrollContact];
    [dictionary setObject:scrollContact2 forKeyedSubscript:@"ScrollContact"];
  }

  [(CNContactPickerViewController *)self _checkConsistencyFromOptions:dictionary];
  dictionary2 = [MEMORY[0x1E695DF90] dictionary];
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
          [dictionary2 setObject:v56 forKeyedSubscript:v55];
        }
      }

      v52 = [v50 countByEnumeratingWithState:&v59 objects:v63 count:16];
    }

    while (v52);
  }

  [dictionary setObject:dictionary2 forKeyedSubscript:@"Properties"];
  viewController = [(CNContactPickerViewController *)self viewController];
  v58[0] = MEMORY[0x1E69E9820];
  v58[1] = 3221225472;
  v58[2] = __53__CNContactPickerViewController__setupViewController__block_invoke;
  v58[3] = &unk_1E74E5200;
  v58[4] = self;
  [viewController setupWithOptions:dictionary readyBlock:v58];
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

- (void)_setViewController:(id)controller
{
  controllerCopy = controller;
  [controllerCopy setDelegate:self];
  [(CNContactPickerViewController *)self setViewController:controllerCopy];
  [(UIViewController *)self cnui_addChildViewController:controllerCopy];

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

- (void)setBottomEdgeInsetForContentView:(double)view
{
  if (![(CNContactPickerViewController *)self _shouldBeOutOfProcess])
  {
    viewController = [(CNContactPickerViewController *)self viewController];
    [viewController setBottomEdgesInset:view];
  }
}

- (UIScrollView)scrollView
{
  if ([(CNContactPickerViewController *)self _shouldBeOutOfProcess])
  {
    scrollView = 0;
  }

  else
  {
    viewController = [(CNContactPickerViewController *)self viewController];
    scrollView = [viewController scrollView];
  }

  return scrollView;
}

- (void)viewDidDisappear:(BOOL)disappear
{
  v3.receiver = self;
  v3.super_class = CNContactPickerViewController;
  [(CNContactPickerViewController *)&v3 viewDidDisappear:disappear];
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

- (void)viewDidAppear:(BOOL)appear
{
  v3.receiver = self;
  v3.super_class = CNContactPickerViewController;
  [(CNContactPickerViewController *)&v3 viewDidAppear:appear];
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

- (void)invalidateSelectionAnimated:(BOOL)animated
{
  animatedCopy = animated;
  viewController = [(CNContactPickerViewController *)self viewController];
  [viewController invalidateSelectionAnimated:animatedCopy];
}

- (void)scrollToClosestContactMatching:(id)matching
{
  v4 = MEMORY[0x1E695CF18];
  matchingCopy = matching;
  v8 = objc_alloc_init(v4);
  givenName = [matchingCopy givenName];
  [v8 setGivenName:givenName];

  familyName = [matchingCopy familyName];

  [v8 setFamilyName:familyName];
  [(CNContactPickerViewController *)self setScrollContact:v8];
}

- (void)_checkConsistencyFromOptions:(id)options
{
  optionsCopy = options;
  v4 = [optionsCopy objectForKeyedSubscript:@"ClientWantsSingleContact"];
  bOOLValue = [v4 BOOLValue];

  v6 = [optionsCopy objectForKeyedSubscript:@"ClientWantsSingleProperty"];
  bOOLValue2 = [v6 BOOLValue];

  v8 = [optionsCopy objectForKeyedSubscript:@"ClientWantsMultipleContacts"];
  bOOLValue3 = [v8 BOOLValue];

  v10 = [optionsCopy objectForKeyedSubscript:@"ClientWantsMultipleProperties"];
  bOOLValue4 = [v10 BOOLValue];

  predicateForSelectionOfContact = [(CNContactPickerViewController *)self predicateForSelectionOfContact];

  predicateForSelectionOfProperty = [(CNContactPickerViewController *)self predicateForSelectionOfProperty];

  v14 = NSStringFromSelector(sel_contactPicker_didSelectContact_);
  v19 = NSStringFromSelector(sel_contactPicker_didSelectContactProperty_);
  if ((bOOLValue | bOOLValue2) & 1) != 0 && ((bOOLValue3 | bOOLValue4))
  {
    _CNUILog("/Library/Caches/com.apple.xbs/Sources/ContactsUI/Framework/CNContactPickerViewController.m", 93, 4, @"Both single contact and multiple contacts delegate methods are implemented, the single variants will be ignored", v15, v16, v17, v18, v20);
    [optionsCopy removeObjectForKey:@"ClientWantsSingleContact"];
    [optionsCopy removeObjectForKey:@"ClientWantsSingleProperty"];
  }

  if (((bOOLValue | bOOLValue2 | bOOLValue3 | bOOLValue4) & 1) == 0)
  {
    if (!(predicateForSelectionOfContact | predicateForSelectionOfProperty))
    {
      goto LABEL_14;
    }

    _CNUILog("/Library/Caches/com.apple.xbs/Sources/ContactsUI/Framework/CNContactPickerViewController.m", 101, 3, @"Selection predicates are set but the delegate does not implement %@ and %@. Those predicates will be ignored.", v15, v16, v17, v18, v14);
    [(CNContactPickerViewController *)self setPredicateForSelectionOfContact:0];
    goto LABEL_11;
  }

  if ((bOOLValue | bOOLValue3 | bOOLValue4))
  {
    if (((bOOLValue2 | bOOLValue4) & 1) == 0 && predicateForSelectionOfProperty)
    {
      _CNUILog("/Library/Caches/com.apple.xbs/Sources/ContactsUI/Framework/CNContactPickerViewController.m", 114, 3, @"Property selection predicate is set but the delegate does not implement %@. The predicate will be ignored.", v15, v16, v17, v18, v19);
LABEL_11:
      [(CNContactPickerViewController *)self setPredicateForSelectionOfProperty:0];
    }
  }

  else if (predicateForSelectionOfContact)
  {
    _CNUILog("/Library/Caches/com.apple.xbs/Sources/ContactsUI/Framework/CNContactPickerViewController.m", 108, 3, @"Person selection predicate is set but the delegate does not implement %@. The predicate will be ignored.", v15, v16, v17, v18, v14);
    [(CNContactPickerViewController *)self setPredicateForSelectionOfContact:0];
  }

LABEL_14:
}

- (id)_pickerPresentedViewController
{
  selfCopy = self;
  delegate = [(CNContactPickerViewController *)selfCopy delegate];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    delegate2 = [(CNContactPickerViewController *)selfCopy delegate];
    v6 = [delegate2 contactPickerPresentedViewController:selfCopy];

    selfCopy = v6;
  }

  return selfCopy;
}

- (void)dealloc
{
  viewController = [(CNContactPickerViewController *)self viewController];
  [viewController invalidate];

  v4.receiver = self;
  v4.super_class = CNContactPickerViewController;
  [(CNContactPickerViewController *)&v4 dealloc];
}

- (CNContactPickerViewController)initWithNibName:(id)name bundle:(id)bundle
{
  v6.receiver = self;
  v6.super_class = CNContactPickerViewController;
  v4 = [(CNContactPickerViewController *)&v6 initWithNibName:name bundle:bundle];
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