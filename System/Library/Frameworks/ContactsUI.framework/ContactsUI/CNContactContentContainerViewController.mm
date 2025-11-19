@interface CNContactContentContainerViewController
+ (id)descriptorForRequiredKeys;
+ (id)descriptorForRequiredKeysForContact:(id)a3;
+ (id)descriptorForRequiredKeysWithDescription:(id)a3;
+ (id)viewControllerWithRestorationIdentifierPath:(id)a3 coder:(id)a4;
- (BOOL)allowsActions;
- (BOOL)allowsActionsModel;
- (BOOL)allowsAddToFavorites;
- (BOOL)allowsAddingToAddressBook;
- (BOOL)allowsCardActions;
- (BOOL)allowsConferencing;
- (BOOL)allowsContactBlocking;
- (BOOL)allowsContactBlockingAndReporting;
- (BOOL)allowsDeletion;
- (BOOL)allowsDisplayModePickerActions;
- (BOOL)allowsEditPhoto;
- (BOOL)allowsEditing;
- (BOOL)allowsPropertyActions;
- (BOOL)allowsSendMessage;
- (BOOL)allowsSettingLinkedContactsAsPreferred;
- (BOOL)allowsSharing;
- (BOOL)alwaysEditing;
- (BOOL)contactViewController:(id)a3 shouldPerformDefaultActionForContact:(id)a4 propertyKey:(id)a5 propertyIdentifier:(id)a6;
- (BOOL)editingChangeRequiresAuthorization;
- (BOOL)editingProposedInformation;
- (BOOL)hideCardActions;
- (BOOL)ignoresParentalRestrictions;
- (BOOL)isMailVIP;
- (BOOL)isPresentingModalViewController;
- (BOOL)isSuggestedContact;
- (BOOL)reloadDataIfNeeded;
- (BOOL)saveChanges;
- (BOOL)saveWasAuthorized;
- (BOOL)shouldShowLinkedContacts;
- (BOOL)showContactBlockingFirst;
- (CGRect)centeredSourceRect:(CGRect)a3 inContactView:(id)a4;
- (CNContactContentContainerViewController)initWithContact:(id)a3;
- (CNContactContentContainerViewController)initWithEnvironment:(id)a3;
- (CNContactContentContainerViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (CNContactViewControllerPPTDelegate)pptDelegate;
- (CNContactViewHostProtocol)delegate;
- (id)_removeUnauthorizedKeysFromContact:(id)a3;
- (id)_updateContact:(id)a3 withMissingKeysFromRequiredKeys:(id)a4;
- (id)alternateName;
- (id)cardBottomGroup;
- (id)cardFooterGroup;
- (id)cardTopGroup;
- (id)contactDelegate;
- (id)contactHeaderView;
- (id)contactView;
- (id)contentScrollViewForEdge:(unint64_t)a3;
- (id)displayHeaderView;
- (id)displayedProperties;
- (id)importantMessage;
- (id)message;
- (id)navigationItemController;
- (id)originalContacts;
- (id)personHeaderView;
- (id)personHeaderViewController;
- (id)presentingDelegate;
- (id)primaryProperty;
- (id)verifiedInfoMessage;
- (id)warningMessage;
- (int64_t)adaptivePresentationStyleForPresentationController:(id)a3;
- (void)_didCompleteWithContact:(id)a3;
- (void)_refetchContact;
- (void)addActionWithTitle:(id)a3 target:(id)a4 selector:(SEL)a5 inGroup:(id)a6 destructive:(BOOL)a7;
- (void)addActionWithTitle:(id)a3 target:(id)a4 selector:(SEL)a5 menuProvider:(id)a6 inGroup:(id)a7 destructive:(BOOL)a8;
- (void)applicationLeftForeground:(id)a3;
- (void)applyChangesToNavigationItemFromItem:(id)a3;
- (void)contactDisplayViewControllerWillDismissFullscreen:(id)a3;
- (void)contactDisplayViewControllerWillPresentFullscreen:(id)a3;
- (void)contactEditViewController:(id)a3 didCompleteWithContact:(id)a4;
- (void)contactEditViewControllerWillDismissFullscreen:(id)a3;
- (void)contactEditViewControllerWillPresentFullscreen:(id)a3;
- (void)contactNavigationItemProvider:(id)a3 didUpdateNavigationItem:(id)a4 doneButtonItem:(id)a5;
- (void)createDisplayViewControllerIfNeeded;
- (void)createEditingViewControllerIfNeeded;
- (void)createdNewContact:(id)a3;
- (void)dealloc;
- (void)didChangeToEditMode:(BOOL)a3;
- (void)didUpdateContactViewConfiguration;
- (void)editCancel:(id)a3;
- (void)encodeRestorableStateWithCoder:(id)a3;
- (void)favoritesDidChangeWithNotification:(id)a3;
- (void)finishEditing:(id)a3;
- (void)performAuthorizedSetEditing:(BOOL)a3 animated:(BOOL)a4;
- (void)performConfirmedCancel;
- (void)prepareContactDidAppearForPPT;
- (void)presentConfirmCancelAlertController;
- (void)reloadCardGroup:(id)a3 forTableView:(id)a4;
- (void)reloadDataPreservingChanges:(BOOL)a3;
- (void)reloadUnifiedContact;
- (void)removeActionWithTarget:(id)a3 selector:(SEL)a4 inGroup:(id)a5;
- (void)sender:(id)a3 dismissViewController:(id)a4 completionHandler:(id)a5;
- (void)sender:(id)a3 presentViewController:(id)a4;
- (void)setAllowsActions:(BOOL)a3;
- (void)setAllowsActionsModel:(BOOL)a3;
- (void)setAllowsAddToFavorites:(BOOL)a3;
- (void)setAllowsAddingToAddressBook:(BOOL)a3;
- (void)setAllowsCardActions:(BOOL)a3;
- (void)setAllowsConferencing:(BOOL)a3;
- (void)setAllowsContactBlocking:(BOOL)a3;
- (void)setAllowsContactBlockingAndReporting:(BOOL)a3;
- (void)setAllowsDeletion:(BOOL)a3;
- (void)setAllowsDisplayModePickerActions:(BOOL)a3;
- (void)setAllowsEditPhoto:(BOOL)a3;
- (void)setAllowsEditing:(BOOL)a3;
- (void)setAllowsPropertyActions:(BOOL)a3;
- (void)setAllowsSendMessage:(BOOL)a3;
- (void)setAllowsSettingLinkedContactsAsPreferred:(BOOL)a3;
- (void)setAllowsSharing:(BOOL)a3;
- (void)setAlternateName:(id)a3;
- (void)setAlwaysEditing:(BOOL)a3;
- (void)setBackgroundColorIfNeededForPresentedViewController:(id)a3;
- (void)setCancelKeyboardShortcutEnabled:(BOOL)a3;
- (void)setContact:(id)a3;
- (void)setContactStore:(id)a3;
- (void)setDisplayedProperties:(id)a3;
- (void)setEditKeyboardShortcutEnabled:(BOOL)a3;
- (void)setEditing:(BOOL)a3 animated:(BOOL)a4;
- (void)setEditingProposedInformation:(BOOL)a3;
- (void)setHideCardActions:(BOOL)a3;
- (void)setIgnoresParentalRestrictions:(BOOL)a3;
- (void)setImportantMessage:(id)a3;
- (void)setIsMailVIP:(BOOL)a3;
- (void)setMessage:(id)a3;
- (void)setMode:(int64_t)a3;
- (void)setNeedsReload;
- (void)setPersonHeaderView:(id)a3;
- (void)setPersonHeaderViewController:(id)a3;
- (void)setPrimaryProperty:(id)a3;
- (void)setSaveKeyboardShortcutEnabled:(BOOL)a3;
- (void)setShouldShowLinkedContacts:(BOOL)a3;
- (void)setShowContactBlockingFirst:(BOOL)a3;
- (void)setTitle:(id)a3;
- (void)setVerifiedInfoMessage:(id)a3;
- (void)setWarningMessage:(id)a3;
- (void)setupConstraints;
- (void)setupWithOptions:(id)a3 readyBlock:(id)a4;
- (void)toggleEditing:(id)a3;
- (void)updateViewConstraints;
- (void)updateWindowTitleForAppearing:(BOOL)a3;
- (void)updatedExistingContact:(id)a3;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)a3;
- (void)viewWillDisappear:(BOOL)a3;
@end

@implementation CNContactContentContainerViewController

- (id)contactDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_contactDelegate);

  return WeakRetained;
}

- (id)presentingDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_presentingDelegate);

  return WeakRetained;
}

- (CNContactViewControllerPPTDelegate)pptDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_pptDelegate);

  return WeakRetained;
}

- (CNContactViewHostProtocol)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)applicationLeftForeground:(id)a3
{
  v4 = +[CNUIContactsEnvironment currentEnvironment];
  v6 = [v4 authorizationContext];

  if ([v6 isFullAccessGranted] && -[CNContactContentContainerViewController isEditing](self, "isEditing") && -[CNContactContentContainerViewController hasPendingChanges](self, "hasPendingChanges") && -[CNContactContentContainerViewController mode](self, "mode") == 3)
  {
    v5 = [(CNContactContentContainerViewController *)self editContactViewController];
    [v5 saveNewContactDraft];
  }
}

- (void)setEditKeyboardShortcutEnabled:(BOOL)a3
{
  v3 = a3;
  v5 = [(CNContactContentContainerViewController *)self editCommand];

  if (v3)
  {
    if (!v5)
    {
      v6 = [MEMORY[0x1E69DCBA0] keyCommandWithInput:@"l" modifierFlags:0x100000 action:sel_toggleEditing_];
      [(CNContactContentContainerViewController *)self setEditCommand:v6];

      v7 = CNContactsUIBundle();
      v8 = [v7 localizedStringForKey:@"EDIT_CONTACT_KEYBOARD_DISCOVERY" value:&stru_1F0CE7398 table:@"Localized"];
      v9 = [(CNContactContentContainerViewController *)self editCommand];
      [v9 setDiscoverabilityTitle:v8];

      v11 = [(CNContactContentContainerViewController *)self editCommand];
      [(CNContactContentContainerViewController *)self addKeyCommand:v11];
    }
  }

  else if (v5)
  {
    v10 = [(CNContactContentContainerViewController *)self editCommand];
    [(CNContactContentContainerViewController *)self removeKeyCommand:v10];

    [(CNContactContentContainerViewController *)self setEditCommand:0];
  }
}

- (void)setCancelKeyboardShortcutEnabled:(BOOL)a3
{
  v3 = a3;
  v5 = [(CNContactContentContainerViewController *)self cancelCommand];

  if (v3)
  {
    if (!v5)
    {
      v6 = [MEMORY[0x1E69DCBA0] keyCommandWithInput:*MEMORY[0x1E69DDEA0] modifierFlags:0 action:sel_editCancel_];
      [(CNContactContentContainerViewController *)self setCancelCommand:v6];

      v8 = [(CNContactContentContainerViewController *)self cancelCommand];
      [(CNContactContentContainerViewController *)self addKeyCommand:v8];
    }
  }

  else if (v5)
  {
    v7 = [(CNContactContentContainerViewController *)self cancelCommand];
    [(CNContactContentContainerViewController *)self removeKeyCommand:v7];

    [(CNContactContentContainerViewController *)self setCancelCommand:0];
  }
}

- (void)setSaveKeyboardShortcutEnabled:(BOOL)a3
{
  v3 = a3;
  v5 = [(CNContactContentContainerViewController *)self saveCommand];

  if (v3)
  {
    if (!v5)
    {
      v6 = [MEMORY[0x1E69DCBA0] keyCommandWithInput:@"s" modifierFlags:0x100000 action:sel_toggleEditing_];
      [(CNContactContentContainerViewController *)self setSaveCommand:v6];

      v7 = CNContactsUIBundle();
      v8 = [v7 localizedStringForKey:@"SAVE_CONTACT_KEYBOARD_DISCOVERY" value:&stru_1F0CE7398 table:@"Localized"];
      v9 = [(CNContactContentContainerViewController *)self saveCommand];
      [v9 setDiscoverabilityTitle:v8];

      v11 = [(CNContactContentContainerViewController *)self saveCommand];
      [(CNContactContentContainerViewController *)self addKeyCommand:v11];
    }
  }

  else if (v5)
  {
    v10 = [(CNContactContentContainerViewController *)self saveCommand];
    [(CNContactContentContainerViewController *)self removeKeyCommand:v10];

    [(CNContactContentContainerViewController *)self setSaveCommand:0];
  }
}

- (void)encodeRestorableStateWithCoder:(id)a3
{
  v20 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v18.receiver = self;
  v18.super_class = CNContactContentContainerViewController;
  [(CNContactContentContainerViewController *)&v18 encodeRestorableStateWithCoder:v4];
  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v5 = +[CNContactContentContainerViewController BOOLStateRestorationProperties];
  v6 = [v5 countByEnumeratingWithState:&v14 objects:v19 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v15;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v15 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v14 + 1) + 8 * i);
        v11 = [(CNContactContentContainerViewController *)self valueForKey:v10];
        if (v11)
        {
          [v4 encodeObject:v11 forKey:v10];
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v14 objects:v19 count:16];
    }

    while (v7);
  }

  v12 = [(CNContactContentContainerViewController *)self contact];
  v13 = [v12 identifier];

  if (v13)
  {
    [v4 encodeObject:v13 forKey:@"Identifier"];
  }
}

- (void)setMode:(int64_t)a3
{
  if (self->_mode != a3)
  {
    self->_mode = a3;
    v5 = [(CNContactContentContainerViewController *)self displayContactViewController];
    [v5 setMode:a3];

    editContactViewController = self->_editContactViewController;
    if (editContactViewController)
    {

      [(CNContactContentEditViewController *)editContactViewController setMode:a3];
    }
  }
}

- (void)reloadUnifiedContact
{
  v3 = [(CNContactContentContainerViewController *)self contact];
  v4 = objc_opt_class();

  v5 = [(CNContactContentContainerViewController *)self contact];
  v8 = [v5 linkedContacts];

  v6 = v8;
  if (v8)
  {
    v7 = [v4 unifyContacts:v8];
    [(CNContactContentContainerViewController *)self setContact:v7];

    v6 = v8;
  }
}

- (void)updatedExistingContact:(id)a3
{
  v4 = a3;
  v7 = v4;
  if (v4)
  {
    v5 = v4;
  }

  else
  {
    v5 = [(CNContactContentContainerViewController *)self contact];
  }

  v6 = v5;
  [(CNContactContentContainerViewController *)self setContact:v5];
  [(CNContactContentContainerViewController *)self _didCompleteWithContact:v6];
}

- (void)createdNewContact:(id)a3
{
  v6 = a3;
  if (v6)
  {
    [(CNContactContentContainerViewController *)self setPrimaryProperty:0];
    [(CNContactContentContainerViewController *)self setContact:v6];
    [(CNContactContentContainerViewController *)self setMode:1];
    v4 = [(CNContactContentContainerViewController *)self displayContactViewController];
    [v4 setMode:1];

    v5 = [(CNContactContentContainerViewController *)self displayContactViewController];
    [v5 setNeedsReload];

    [(CNContactContentContainerViewController *)self setIsSupressingViewConfigurationUpdates:1];
    [(CNContactContentContainerViewController *)self setAllowsEditing:1];
    [(CNContactContentContainerViewController *)self setAllowsAddingToAddressBook:0];
    [(CNContactContentContainerViewController *)self setAllowsAddToFavorites:1];
    [(CNContactContentContainerViewController *)self setIsSupressingViewConfigurationUpdates:0];
    [(CNContactContentContainerViewController *)self didUpdateContactViewConfiguration];
  }

  [(CNContactContentContainerViewController *)self _didCompleteWithContact:v6];
}

- (void)_didCompleteWithContact:(id)a3
{
  v10 = a3;
  v4 = [(CNContactContentContainerViewController *)self contactDelegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    v6 = [(CNContactContentContainerViewController *)self contactDelegate];
    [v6 contactViewController:self didCompleteWithContact:v10];
  }

  v7 = [(CNContactContentContainerViewController *)self delegate];
  v8 = objc_opt_respondsToSelector();

  if (v8)
  {
    v9 = [(CNContactContentContainerViewController *)self delegate];
    [v9 didCompleteWithContact:v10];
  }
}

- (id)_removeUnauthorizedKeysFromContact:(id)a3
{
  v4 = a3;
  v5 = [(CNContactContentContainerViewController *)self missingRequiredKeys];
  v6 = [v5 count];

  if (v6)
  {
    v7 = [v4 mutableCopy];
    v8 = [(CNContactContentContainerViewController *)self missingRequiredKeys];
    [v7 removeKeys:v8];

    [v7 setFrozenSelfAsSnapshot];
    v4 = v7;
  }

  return v4;
}

- (id)_updateContact:(id)a3 withMissingKeysFromRequiredKeys:(id)a4
{
  v30[1] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = [v6 areKeysAvailable:v7 useIgnorableKeys:0 findMissingKeys:1];
  v9 = [v8 first];
  v10 = [v9 BOOLValue];

  if (v10)
  {
    v11 = v6;
  }

  else
  {
    v12 = [v8 second];
    [(CNContactContentContainerViewController *)self setMissingRequiredKeys:v12];

    v24 = 0;
    v25 = &v24;
    v26 = 0x3032000000;
    v27 = __Block_byref_object_copy__2409;
    v28 = __Block_byref_object_dispose__2410;
    v29 = 0;
    v13 = objc_alloc(MEMORY[0x1E695CD78]);
    v14 = [(CNContactContentContainerViewController *)self missingRequiredKeys];
    v15 = [v13 initWithKeysToFetch:v14];

    v16 = MEMORY[0x1E695CD58];
    v17 = [v6 identifier];
    v30[0] = v17;
    v18 = [MEMORY[0x1E695DEC8] arrayWithObjects:v30 count:1];
    v19 = [v16 predicateForContactsWithIdentifiers:v18];
    [v15 setPredicate:v19];

    [v15 setUnifyResults:{objc_msgSend(v6, "isUnified")}];
    v20 = [(CNContactContentContainerViewController *)self contactStore];
    v23[0] = MEMORY[0x1E69E9820];
    v23[1] = 3221225472;
    v23[2] = __90__CNContactContentContainerViewController__updateContact_withMissingKeysFromRequiredKeys___block_invoke;
    v23[3] = &unk_1E74E6F60;
    v23[4] = &v24;
    [v20 enumerateContactsWithFetchRequest:v15 error:0 usingBlock:v23];

    v21 = [v6 mutableCopy];
    [v21 overwriteStateFromContact:v25[5]];
    v11 = [v21 freeze];

    _Block_object_dispose(&v24, 8);
  }

  return v11;
}

- (BOOL)reloadDataIfNeeded
{
  if (!self->_needsReload || self->_animating)
  {
    return 0;
  }

  [(CNContactContentContainerViewController *)self reloadDataPreservingChanges:0, v2, v3];
  return 1;
}

- (void)setNeedsReload
{
  self->_needsReload = 1;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __57__CNContactContentContainerViewController_setNeedsReload__block_invoke;
  block[3] = &unk_1E74E6A88;
  block[4] = self;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

- (BOOL)isSuggestedContact
{
  v2 = [(CNContactContentContainerViewController *)self contact];
  v3 = [v2 isSuggested];

  return v3;
}

- (void)contactEditViewController:(id)a3 didCompleteWithContact:(id)a4
{
  v6 = a4;
  if (v6)
  {
    v5 = [(CNContactContentContainerViewController *)self displayContactViewController];
    [v5 setContact:v6];
  }

  [(CNContactContentContainerViewController *)self setEditing:0];
  [(CNContactContentContainerViewController *)self _didCompleteWithContact:v6];
}

- (void)contactEditViewControllerWillDismissFullscreen:(id)a3
{
  if ([(CNContactContentContainerViewController *)self isEditing])
  {
    v4 = [(CNContactContentContainerViewController *)self delegate];
    v5 = objc_opt_respondsToSelector();

    if (v5)
    {
      v6 = [(CNContactContentContainerViewController *)self delegate];
      [v6 isPresentingFullscreen:0];
    }
  }
}

- (void)contactEditViewControllerWillPresentFullscreen:(id)a3
{
  if ([(CNContactContentContainerViewController *)self isEditing])
  {
    v4 = [(CNContactContentContainerViewController *)self delegate];
    v5 = objc_opt_respondsToSelector();

    if (v5)
    {
      v6 = [(CNContactContentContainerViewController *)self delegate];
      [v6 isPresentingFullscreen:1];
    }
  }
}

- (BOOL)contactViewController:(id)a3 shouldPerformDefaultActionForContact:(id)a4 propertyKey:(id)a5 propertyIdentifier:(id)a6
{
  v9 = a4;
  v10 = a5;
  v11 = a6;
  v12 = [(CNContactContentContainerViewController *)self contactDelegate];
  v13 = objc_opt_respondsToSelector();

  if (v13)
  {
    v14 = [(CNContactContentContainerViewController *)self contactDelegate];
    v15 = [v14 contactViewController:self shouldPerformDefaultActionForContact:v9 propertyKey:v10 propertyIdentifier:v11];
  }

  else
  {
    v15 = 1;
  }

  v16 = [(CNContactContentContainerViewController *)self delegate];
  v17 = objc_opt_respondsToSelector();

  if (v17)
  {
    v18 = [(CNContactContentContainerViewController *)self _removeUnauthorizedKeysFromContact:v9];

    v19 = [(CNContactContentContainerViewController *)self delegate];
    v15 = [v19 shouldPerformDefaultActionForContact:v18 propertyKey:v10 propertyIdentifier:v11];

    v9 = v18;
  }

  return v15;
}

- (void)contactDisplayViewControllerWillDismissFullscreen:(id)a3
{
  if (([(CNContactContentContainerViewController *)self isEditing]& 1) == 0)
  {
    v4 = [(CNContactContentContainerViewController *)self delegate];
    v5 = objc_opt_respondsToSelector();

    if (v5)
    {
      v6 = [(CNContactContentContainerViewController *)self delegate];
      [v6 isPresentingFullscreen:0];
    }
  }
}

- (void)contactDisplayViewControllerWillPresentFullscreen:(id)a3
{
  if (([(CNContactContentContainerViewController *)self isEditing]& 1) == 0)
  {
    v4 = [(CNContactContentContainerViewController *)self delegate];
    v5 = objc_opt_respondsToSelector();

    if (v5)
    {
      v6 = [(CNContactContentContainerViewController *)self delegate];
      [v6 isPresentingFullscreen:1];
    }
  }
}

- (BOOL)isPresentingModalViewController
{
  v2 = [(CNContactContentContainerViewController *)self presentedViewController];
  v3 = v2 != 0;

  return v3;
}

- (void)sender:(id)a3 dismissViewController:(id)a4 completionHandler:(id)a5
{
  v7 = a5;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __90__CNContactContentContainerViewController_sender_dismissViewController_completionHandler___block_invoke;
  v9[3] = &unk_1E74E6DD0;
  v9[4] = self;
  v10 = v7;
  v8 = v7;
  [a4 dismissViewControllerAnimated:1 completion:v9];
}

uint64_t __90__CNContactContentContainerViewController_sender_dismissViewController_completionHandler___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2[1354] == 1)
  {
    [v2 _endDisablingInterfaceAutorotation];
    *(*(a1 + 32) + 1354) = 0;
  }

  result = *(a1 + 40);
  if (result)
  {
    v4 = *(result + 16);

    return v4();
  }

  return result;
}

- (void)setBackgroundColorIfNeededForPresentedViewController:(id)a3
{
  v20 = a3;
  v4 = +[CNContactStyle currentStyle];
  v5 = [v4 backgroundColor];
  if (v5)
  {
    v6 = +[CNContactStyle currentStyle];
    v7 = [v6 backgroundColor];
    v8 = [MEMORY[0x1E69DC888] clearColor];
    v9 = [v7 isEqual:v8];

    v10 = v9 ^ 1;
  }

  else
  {
    v10 = 1;
  }

  v11 = [(CNContactContentContainerViewController *)self view];
  v12 = [v11 superview];
  v13 = [v12 backgroundColor];
  v14 = [MEMORY[0x1E69DC888] clearColor];
  v15 = [v13 isEqual:v14];

  if ((v10 & 1) == 0 && (v15 & 1) == 0)
  {
    v16 = [(CNContactContentContainerViewController *)self view];
    v17 = [v16 superview];
    v18 = [v17 backgroundColor];
    v19 = [v20 view];
    [v19 setBackgroundColor:v18];
  }
}

- (void)performConfirmedCancel
{
  v2 = [(CNContactContentContainerViewController *)self editContactViewController];
  [v2 performConfirmedCancel];
}

- (int64_t)adaptivePresentationStyleForPresentationController:(id)a3
{
  v3 = [MEMORY[0x1E69DC938] currentDevice];
  v4 = [v3 userInterfaceIdiom];

  if ((v4 & 0xFFFFFFFFFFFFFFFBLL) == 1 && CNUIIsDDActionsService())
  {
    return -1;
  }

  else
  {
    return -2;
  }
}

- (CGRect)centeredSourceRect:(CGRect)a3 inContactView:(id)a4
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v9 = a4;
  if (([(CNContactContentContainerViewController *)self isEditing]& 1) == 0)
  {
    [v9 layoutMargins];
    v11 = v10;
    [v9 layoutMargins];
    width = width - (v11 + v12);
    [v9 layoutMargins];
    v14 = v13;
    v15 = +[CNContactStyle currentStyle];
    [v15 sectionContentInset];
    x = x + v14 - v16;
  }

  v17 = x;
  v18 = y;
  v19 = width;
  v20 = height;
  result.size.height = v20;
  result.size.width = v19;
  result.origin.y = v18;
  result.origin.x = v17;
  return result;
}

- (void)sender:(id)a3 presentViewController:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = +[CNContactStyle currentStyle];
  [v7 setModalTransitionStyle:{objc_msgSend(v8, "modalTransitionStyle")}];

  objc_opt_class();
  v29 = v6;
  if (objc_opt_isKindOfClass())
  {
    v9 = v29;
  }

  else
  {
    v9 = 0;
  }

  v10 = v9;

  if (([(CNContactContentContainerViewController *)self isEditing]& 1) != 0)
  {
    [(CNContactContentContainerViewController *)self displayContactViewController];
  }

  else
  {
    [(CNContactContentContainerViewController *)self editContactViewController];
  }
  v11 = ;
  v12 = [v11 contactView];

  v13 = [v7 popoverPresentationController];
  [v13 setSourceView:v10];

  [v10 bounds];
  [(CNContactContentContainerViewController *)self centeredSourceRect:v12 inContactView:?];
  v15 = v14;
  v17 = v16;
  v19 = v18;
  v21 = v20;
  v22 = [v7 popoverPresentationController];
  [v22 setSourceRect:{v15, v17, v19, v21}];

  v23 = [v7 popoverPresentationController];
  [v23 setPermittedArrowDirections:15];

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v24 = [v7 presentationController];
    [v24 setDelegate:self];
  }

  if (!self->_disablingRotation)
  {
    v25 = [MEMORY[0x1E69DC938] currentDevice];
    if ([v25 userInterfaceIdiom])
    {
LABEL_14:

      goto LABEL_15;
    }

    v26 = [MEMORY[0x1E69DCEB0] mainScreen];
    [v26 _referenceBounds];
    if (CGRectGetHeight(v31) <= 667.0 || [v7 modalPresentationStyle])
    {

      goto LABEL_14;
    }

    v27 = [v7 supportedInterfaceOrientations];
    v28 = [(CNContactContentContainerViewController *)self supportedInterfaceOrientations];

    if (v27 != v28)
    {
      [(CNContactContentContainerViewController *)self _beginDisablingInterfaceAutorotation];
      self->_disablingRotation = 1;
    }
  }

LABEL_15:
  [(CNContactContentContainerViewController *)self setBackgroundColorIfNeededForPresentedViewController:v7];
  [(CNContactContentContainerViewController *)self presentViewController:v7 animated:1 completion:0];
}

- (void)didChangeToEditMode:(BOOL)a3
{
  v3 = a3;
  if ([(CNContactContentContainerViewController *)self isEditing]!= a3)
  {

    [(CNContactContentContainerViewController *)self setEditing:v3 animated:0];
  }
}

- (void)didUpdateContactViewConfiguration
{
  if (![(CNContactContentContainerViewController *)self isSupressingViewConfigurationUpdates])
  {
    v3 = [(CNContactContentContainerViewController *)self displayContactViewController];
    [v3 contactViewConfigurationDidUpdate];

    if (self->_editContactViewController)
    {
      v4 = [(CNContactContentContainerViewController *)self editContactViewController];
      [v4 contactViewConfigurationDidUpdate];
    }
  }
}

- (void)setupWithOptions:(id)a3 readyBlock:(id)a4
{
  v101 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = CNUILogContactCard();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    LODWORD(buf) = 138412290;
    *(&buf + 4) = v6;
    _os_log_debug_impl(&dword_199A75000, v8, OS_LOG_TYPE_DEBUG, "setupWithOptions: %@", &buf, 0xCu);
  }

  v9 = [v6 objectForKeyedSubscript:@"Properties"];
  [(CNContactContentContainerViewController *)self setIsSupressingViewConfigurationUpdates:1];
  if ([(CNContactContentContainerViewController *)self isOutOfProcess])
  {
    [(CNContactContentContainerViewController *)self setOutOfProcessSetupComplete:0];
    if ([MEMORY[0x1E695CD58] suggestionsEnabled])
    {
      v10 = 3;
    }

    else
    {
      v10 = 1;
    }

    v11 = [(CNContactContentContainerViewController *)self managedConfiguration];

    if (v11)
    {
      v12 = objc_alloc(MEMORY[0x1E695CE18]);
      v13 = [(CNContactContentContainerViewController *)self environment];
      v14 = [v13 cnEnvironment];
      v15 = [(CNContactContentContainerViewController *)self managedConfiguration];
      v16 = [v12 initWithEnvironment:v14 options:v10 managedConfiguration:v15];
      [(CNContactContentContainerViewController *)self setContactStore:v16];
    }

    else
    {
      v13 = [MEMORY[0x1E695CE18] storeWithOptions:v10];
      [(CNContactContentContainerViewController *)self setContactStore:v13];
    }
  }

  v17 = [v9 objectForKeyedSubscript:{@"runningPPT", v7}];
  -[CNContactContentContainerViewController setRunningPPT:](self, "setRunningPPT:", [v17 BOOLValue]);

  v18 = [v9 objectForKeyedSubscript:@"showingMeContact"];
  -[CNContactContentContainerViewController setShowingMeContact:](self, "setShowingMeContact:", [v18 BOOLValue]);

  v19 = [v6 objectForKeyedSubscript:@"ignoresParentalRestrictions"];
  v20 = [v19 BOOLValue];
  v21 = [(CNContactContentContainerViewController *)self contactViewConfiguration];
  [v21 setIgnoresParentalRestrictions:v20];

  v55 = v6;
  v22 = [v6 objectForKeyedSubscript:@"prohibitedPropertyKeys"];
  v23 = [(CNContactContentContainerViewController *)self contactViewConfiguration];
  [v23 setProhibitedPropertyKeys:v22];

  v24 = [v9 objectForKeyedSubscript:@"warningMessage"];
  v25 = [(CNContactContentContainerViewController *)self contactViewConfiguration];
  [v25 setWarningMessage:v24];

  v26 = &unk_1F0D4BAA8;
  v60 = 0u;
  v61 = 0u;
  v62 = 0u;
  v63 = 0u;
  *&buf = @"allowsDeletion";
  *(&buf + 1) = @"allowsCardActions";
  v67 = @"alwaysEditing";
  v68 = @"personHeaderView";
  v69 = @"allowsActions";
  v70 = @"verifiedInfoMessage";
  v71 = @"allowsEditInApp";
  v72 = @"shouldShowLinkedContacts";
  v73 = @"parentContainer";
  v74 = @"allowsDisplayModePickerActions";
  v75 = @"allowsAddToFavorites";
  v76 = @"ignoresParentalRestrictions";
  v77 = @"primaryProperty";
  v78 = @"allowsAddingToAddressBook";
  v79 = @"alternateName";
  v80 = @"allowsEditPhoto";
  v81 = @"allowsNamePicking";
  v82 = @"showsInlineActions";
  v83 = @"showsSharedProfile";
  v84 = @"showsGroupMembership";
  v85 = @"displayedProperties";
  v86 = @"editingProposedInformation";
  v87 = @"allowsContactBlocking";
  v88 = @"allowsContactBlockingAndReporting";
  v89 = @"allowsSharing";
  v90 = @"highlightedProperties";
  v91 = @"highlightedPropertyImportant";
  v92 = @"allowsConferencing";
  v93 = @"importantMessage";
  v94 = @"allowsEditing";
  v95 = @"personHeaderViewController";
  v96 = @"personHeaderViewDelegate";
  v97 = @"shouldDrawNavigationBar";
  v98 = @"message";
  v99 = @"layoutPositionallyAfterNavBar";
  v100 = @"allowsSwipeToPop";
  v27 = [MEMORY[0x1E695DEC8] arrayWithObjects:&buf count:36];
  v28 = [v27 countByEnumeratingWithState:&v60 objects:v65 count:16];
  if (v28)
  {
    v29 = v28;
    v30 = *v61;
    do
    {
      for (i = 0; i != v29; ++i)
      {
        if (*v61 != v30)
        {
          objc_enumerationMutation(v27);
        }

        v32 = *(*(&v60 + 1) + 8 * i);
        v33 = [v9 objectForKeyedSubscript:v32];
        if (v33 && ([&unk_1F0D4BAA8 containsObject:v32] & 1) == 0)
        {
          v34 = [(CNContactContentContainerViewController *)self contactViewConfiguration];
          [v34 setValue:v33 forKey:v32];
        }
      }

      v29 = [v27 countByEnumeratingWithState:&v60 objects:v65 count:16];
    }

    while (v29);
  }

  v58 = 0u;
  v59 = 0u;
  v56 = 0u;
  v57 = 0u;
  *&buf = @"mode";
  *(&buf + 1) = @"parentGroup";
  v67 = @"originalContacts";
  v68 = @"recentsData";
  v69 = @"showingMeContact";
  v70 = @"runningPPT";
  v71 = @"contact";
  v35 = [MEMORY[0x1E695DEC8] arrayWithObjects:&buf count:7];
  v36 = [v35 countByEnumeratingWithState:&v56 objects:v64 count:16];
  if (v36)
  {
    v37 = v36;
    v38 = *v57;
    do
    {
      for (j = 0; j != v37; ++j)
      {
        if (*v57 != v38)
        {
          objc_enumerationMutation(v35);
        }

        v40 = *(*(&v56 + 1) + 8 * j);
        v41 = [v9 objectForKeyedSubscript:v40];
        if (v41)
        {
          [(CNContactContentContainerViewController *)self setValue:v41 forKey:v40];
        }
      }

      v37 = [v35 countByEnumeratingWithState:&v56 objects:v64 count:16];
    }

    while (v37);
  }

  v42 = [(CNContactContentContainerViewController *)self contactViewConfiguration];
  if ([v42 alwaysEditing])
  {

    v43 = v54;
  }

  else
  {
    v44 = [v9 objectForKeyedSubscript:@"isEditing"];
    v45 = [v44 BOOLValue];

    v43 = v54;
    if (!v45)
    {
      goto LABEL_34;
    }
  }

  [(CNContactContentContainerViewController *)self createEditingViewControllerIfNeeded];
  [(CNContactContentContainerViewController *)self setEditing:1 animated:0];
LABEL_34:
  v46 = [CNContactEditAuthorizationManager alloc];
  v47 = [(CNContactContentContainerViewController *)self contact];
  v48 = [(CNContactContentContainerViewController *)self contactStore];
  v49 = [(CNContactEditAuthorizationManager *)v46 initWithContact:v47 contactStore:v48];
  [(CNContactContentContainerViewController *)self setEditAuthorizationManager:v49];

  v50 = [(CNContactContentContainerViewController *)self editAuthorizationManager];
  v51 = [(CNContactContentContainerViewController *)self displayContactViewController];
  [v51 setEditAuthorizationManager:v50];

  [(CNContactContentContainerViewController *)self setIsSupressingViewConfigurationUpdates:0];
  v52 = [(CNContactContentContainerViewController *)self displayContactViewController];
  [v52 contactViewConfigurationDidUpdate];

  if (self->_editContactViewController)
  {
    v53 = [(CNContactContentContainerViewController *)self editContactViewController];
    [v53 contactViewConfigurationDidUpdate];
  }

  if ([(CNContactContentContainerViewController *)self isOutOfProcess])
  {
    [(CNContactContentContainerViewController *)self setOutOfProcessSetupComplete:1];
  }

  if (v43)
  {
    v43[2](v43, 0);
  }
}

- (void)viewWillDisappear:(BOOL)a3
{
  v4.receiver = self;
  v4.super_class = CNContactContentContainerViewController;
  [(CNContactContentContainerViewController *)&v4 viewWillDisappear:a3];
  [(CNContactContentContainerViewController *)self updateWindowTitleForAppearing:0];
}

- (void)prepareContactDidAppearForPPT
{
  if ([(CNContactContentContainerViewController *)self runningPPT])
  {
    objc_initWeak(&location, self);
    v3 = *MEMORY[0x1E69DDA98];
    v4[0] = MEMORY[0x1E69E9820];
    v4[1] = 3221225472;
    v4[2] = __72__CNContactContentContainerViewController_prepareContactDidAppearForPPT__block_invoke;
    v4[3] = &unk_1E74E6C98;
    objc_copyWeak(&v5, &location);
    [v3 installCACommitCompletionBlock:v4];
    objc_destroyWeak(&v5);
    objc_destroyWeak(&location);
  }
}

void __72__CNContactContentContainerViewController_prepareContactDidAppearForPPT__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v1 = [WeakRetained pptDelegate];
  [v1 viewDidAppearForContactViewController:WeakRetained];
}

- (void)viewDidAppear:(BOOL)a3
{
  v4.receiver = self;
  v4.super_class = CNContactContentContainerViewController;
  [(CNContactContentContainerViewController *)&v4 viewDidAppear:a3];
  if (self->_needsRefetch)
  {
    [(CNContactContentContainerViewController *)self _refetchContact];
    self->_needsRefetch = 0;
  }

  if (![(CNContactContentContainerViewController *)self alwaysEditing])
  {
    [(CNContactContentContainerViewController *)self becomeFirstResponder];
  }

  [(CNContactContentContainerViewController *)self updateWindowTitleForAppearing:1];
}

- (void)viewWillAppear:(BOOL)a3
{
  v3.receiver = self;
  v3.super_class = CNContactContentContainerViewController;
  [(CNContactContentContainerViewController *)&v3 viewWillAppear:a3];
}

- (void)updateViewConstraints
{
  v3.receiver = self;
  v3.super_class = CNContactContentContainerViewController;
  [(CNContactContentContainerViewController *)&v3 updateViewConstraints];
  [(CNContactContentContainerViewController *)self setupConstraints];
}

- (void)setupConstraints
{
  v3 = MEMORY[0x1E696ACD8];
  v4 = [(CNContactContentContainerViewController *)self activatedConstraints];
  [v3 deactivateConstraints:v4];

  v61 = [MEMORY[0x1E695DF70] array];
  v5 = [(CNContactContentContainerViewController *)self displayContactViewController];
  v6 = [v5 view];
  v7 = [v6 superview];
  v8 = [(CNContactContentContainerViewController *)self view];

  if (v7 == v8)
  {
    v9 = [(CNContactContentContainerViewController *)self view];
    v10 = [v9 leadingAnchor];
    v11 = [(CNContactContentContainerViewController *)self displayContactViewController];
    v12 = [v11 view];
    v13 = [v12 leadingAnchor];
    v14 = [v10 constraintEqualToAnchor:v13];
    [v61 addObject:v14];

    v15 = [(CNContactContentContainerViewController *)self view];
    v16 = [v15 trailingAnchor];
    v17 = [(CNContactContentContainerViewController *)self displayContactViewController];
    v18 = [v17 view];
    v19 = [v18 trailingAnchor];
    v20 = [v16 constraintEqualToAnchor:v19];
    [v61 addObject:v20];

    v21 = [(CNContactContentContainerViewController *)self view];
    v22 = [v21 topAnchor];
    v23 = [(CNContactContentContainerViewController *)self displayContactViewController];
    v24 = [v23 view];
    v25 = [v24 topAnchor];
    v26 = [v22 constraintEqualToAnchor:v25];
    [v61 addObject:v26];

    v27 = [(CNContactContentContainerViewController *)self view];
    v28 = [v27 bottomAnchor];
    v29 = [(CNContactContentContainerViewController *)self displayContactViewController];
    v30 = [v29 view];
    v31 = [v30 bottomAnchor];
    v32 = [v28 constraintEqualToAnchor:v31];
    [v61 addObject:v32];
  }

  if (self->_editContactViewController)
  {
    v33 = [(CNContactContentContainerViewController *)self editContactViewController];
    v34 = [v33 view];
    v35 = [v34 superview];
    v36 = [(CNContactContentContainerViewController *)self view];

    if (v35 == v36)
    {
      v37 = [(CNContactContentContainerViewController *)self view];
      v38 = [v37 leadingAnchor];
      v39 = [(CNContactContentContainerViewController *)self editContactViewController];
      v40 = [v39 view];
      v41 = [v40 leadingAnchor];
      v42 = [v38 constraintEqualToAnchor:v41];
      [v61 addObject:v42];

      v43 = [(CNContactContentContainerViewController *)self view];
      v44 = [v43 trailingAnchor];
      v45 = [(CNContactContentContainerViewController *)self editContactViewController];
      v46 = [v45 view];
      v47 = [v46 trailingAnchor];
      v48 = [v44 constraintEqualToAnchor:v47];
      [v61 addObject:v48];

      v49 = [(CNContactContentContainerViewController *)self view];
      v50 = [v49 topAnchor];
      v51 = [(CNContactContentContainerViewController *)self editContactViewController];
      v52 = [v51 view];
      v53 = [v52 topAnchor];
      v54 = [v50 constraintEqualToAnchor:v53];
      [v61 addObject:v54];

      v55 = [(CNContactContentContainerViewController *)self view];
      v56 = [v55 bottomAnchor];
      v57 = [(CNContactContentContainerViewController *)self editContactViewController];
      v58 = [v57 view];
      v59 = [v58 bottomAnchor];
      v60 = [v56 constraintEqualToAnchor:v59];
      [v61 addObject:v60];
    }
  }

  [(CNContactContentContainerViewController *)self setActivatedConstraints:v61];
  [MEMORY[0x1E696ACD8] activateConstraints:v61];
}

- (void)viewDidLoad
{
  v16.receiver = self;
  v16.super_class = CNContactContentContainerViewController;
  [(CNContactContentContainerViewController *)&v16 viewDidLoad];
  v3 = *MEMORY[0x1E6996568];
  v4 = [(CNContactContentContainerViewController *)self initialPrompt];
  LOBYTE(v3) = (*(v3 + 16))(v3, v4);

  if ((v3 & 1) == 0)
  {
    v5 = [(CNContactContentContainerViewController *)self initialPrompt];
    v6 = [(CNContactContentContainerViewController *)self navigationItem];
    [v6 setPrompt:v5];
  }

  if ([(CNContactContentContainerViewController *)self shouldDrawNavigationBar])
  {
    v7 = [(CNContactContentContainerViewController *)self navigationItem];
    [v7 _setBackgroundHidden:0];
  }

  [(CNContactContentContainerViewController *)self reloadDataIfNeeded];
  [(CNContactContentContainerViewController *)self createDisplayViewControllerIfNeeded];
  v8 = [(CNContactContentContainerViewController *)self displayContactViewController];
  [(CNContactContentContainerViewController *)self addChildViewController:v8];

  v9 = [(CNContactContentContainerViewController *)self view];
  v10 = [(CNContactContentContainerViewController *)self displayContactViewController];
  v11 = [v10 view];
  [v9 addSubview:v11];

  v12 = [(CNContactContentContainerViewController *)self displayContactViewController];
  v13 = [v12 view];
  [v13 setTranslatesAutoresizingMaskIntoConstraints:0];

  v14 = [(CNContactContentContainerViewController *)self displayContactViewController];
  [v14 didMoveToParentViewController:self];

  v15 = [(CNContactContentContainerViewController *)self view];
  [v15 setNeedsUpdateConstraints];
}

- (BOOL)saveChanges
{
  if ([(CNContactContentContainerViewController *)self isEditing])
  {
    [(CNContactContentContainerViewController *)self editContactViewController];
  }

  else
  {
    [(CNContactContentContainerViewController *)self displayContactViewController];
  }
  v3 = ;
  v4 = [v3 saveChanges];

  return v4;
}

- (void)performAuthorizedSetEditing:(BOOL)a3 animated:(BOOL)a4
{
  v4 = a4;
  v5 = a3;
  v7 = CNUILogContactCard();
  v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);
  if (v5)
  {
    if (v8)
    {
      *buf = 0;
      _os_log_impl(&dword_199A75000, v7, OS_LOG_TYPE_DEFAULT, "[CNContactContentViewController] Entering Edit Mode", buf, 2u);
    }

    [(CNContactContentContainerViewController *)self createEditingViewControllerIfNeeded];
    if ([(CNContactContentContainerViewController *)self didSetNewContact])
    {
      [(CNContactContentContainerViewController *)self setDidSetNewContact:0];
      v9 = [(CNContactContentContainerViewController *)self editContactViewController];
      v10 = [(CNContactContentContainerViewController *)self contact];
      [v9 setContact:v10];

      v11 = [(CNContactContentContainerViewController *)self editContactViewController];
      [v11 contactViewConfigurationDidUpdate];
    }

    v12 = [(CNContactContentContainerViewController *)self displayContactViewController];
    v13 = [v12 view];

    v14 = [(CNContactContentContainerViewController *)self editContactViewController];
    v15 = [v14 view];

    v16 = [(CNContactContentContainerViewController *)self editContactViewController];
  }

  else
  {
    if (v8)
    {
      *buf = 0;
      _os_log_impl(&dword_199A75000, v7, OS_LOG_TYPE_DEFAULT, "[CNContactContentViewController] Leaving Edit Mode", buf, 2u);
    }

    v17 = [(CNContactContentContainerViewController *)self editContactViewController];
    v13 = [v17 view];

    v18 = [(CNContactContentContainerViewController *)self displayContactViewController];
    v15 = [v18 view];

    v16 = [(CNContactContentContainerViewController *)self displayContactViewController];
  }

  v19 = v16;
  v20 = [v15 superview];
  v21 = [(CNContactContentContainerViewController *)self view];

  if (v20 != v21)
  {
    v22 = [(CNContactContentContainerViewController *)self editContactViewController];
    v23 = [v22 view];

    if (v15 == v23)
    {
      v25 = [(CNContactContentContainerViewController *)self editContactViewController];
      [(CNContactContentContainerViewController *)self addChildViewController:v25];

      v26 = [(CNContactContentContainerViewController *)self view];
      v27 = [(CNContactContentContainerViewController *)self editContactViewController];
      v28 = [v27 view];
      [v26 addSubview:v28];

      v29 = [(CNContactContentContainerViewController *)self editContactViewController];
      v30 = [v29 view];
      [v30 setTranslatesAutoresizingMaskIntoConstraints:0];

      v24 = [(CNContactContentContainerViewController *)self editContactViewController];
      [v24 didMoveToParentViewController:self];
    }

    else
    {
      v24 = [(CNContactContentContainerViewController *)self view];
      [v24 addSubview:v15];
    }

    v31 = [(CNContactContentContainerViewController *)self view];
    [v31 setNeedsUpdateConstraints];
  }

  v32 = [v19 effectiveNavigationItem];
  v33 = [v19 doneButtonItem];
  [(CNContactContentContainerViewController *)self contactNavigationItemProvider:v19 didUpdateNavigationItem:v32 doneButtonItem:v33];

  v34 = MEMORY[0x1E69DD250];
  v35 = [(CNContactContentContainerViewController *)self view];
  if (v4)
  {
    v36 = 0.25;
  }

  else
  {
    v36 = 0.0;
  }

  v42[0] = MEMORY[0x1E69E9820];
  v42[1] = 3221225472;
  v42[2] = __80__CNContactContentContainerViewController_performAuthorizedSetEditing_animated___block_invoke;
  v42[3] = &unk_1E74E6EE8;
  v37 = v13;
  v43 = v37;
  v38 = v15;
  v44 = v38;
  v45 = self;
  [v34 transitionWithView:v35 duration:5242880 options:v42 animations:0 completion:v36];

  v39 = [(CNContactContentContainerViewController *)self contactDelegate];
  v40 = objc_opt_respondsToSelector();

  if (v40)
  {
    v41 = [(CNContactContentContainerViewController *)self contactDelegate];
    [v41 contactViewController:self didChangeToEditMode:v5];
  }
}

uint64_t __80__CNContactContentContainerViewController_performAuthorizedSetEditing_animated___block_invoke(uint64_t a1)
{
  [*(a1 + 32) setAlpha:0.0];
  [*(a1 + 40) setAlpha:1.0];
  v2 = *(a1 + 48);

  return [v2 setupConstraints];
}

- (BOOL)editingChangeRequiresAuthorization
{
  if (([(CNContactContentContainerViewController *)self isEditing]& 1) != 0)
  {
    return 0;
  }

  v4 = [(CNContactContentContainerViewController *)self editAuthorizationManager];
  v5 = [v4 shouldPromptForPasscodeAuthorization];

  return v5;
}

- (void)setEditing:(BOOL)a3 animated:(BOOL)a4
{
  v4 = a4;
  v5 = a3;
  if ([(CNContactContentContainerViewController *)self isEditing]!= a3)
  {
    if ([(CNContactContentContainerViewController *)self editingChangeRequiresAuthorization])
    {
      objc_initWeak(&location, self);
      v7 = [(CNContactContentContainerViewController *)self editAuthorizationManager];
      v8 = [(CNContactContentContainerViewController *)self navigationItem];
      v9 = [v8 rightBarButtonItem];
      v11[0] = MEMORY[0x1E69E9820];
      v11[1] = 3221225472;
      v11[2] = __63__CNContactContentContainerViewController_setEditing_animated___block_invoke;
      v11[3] = &unk_1E74E1C88;
      objc_copyWeak(&v12, &location);
      v13 = v5;
      v14 = v4;
      [v7 authorizeForViewController:self sender:v9 animated:v4 completionBlock:v11];

      objc_destroyWeak(&v12);
      objc_destroyWeak(&location);
    }

    else
    {
      v10.receiver = self;
      v10.super_class = CNContactContentContainerViewController;
      [(CNContactContentContainerViewController *)&v10 setEditing:v5 animated:v4];
      [(CNContactContentContainerViewController *)self performAuthorizedSetEditing:v5 animated:v4];
    }
  }
}

void __63__CNContactContentContainerViewController_setEditing_animated___block_invoke(uint64_t a1, uint64_t a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (a2 == 2)
  {
    v5 = WeakRetained;
    [WeakRetained performAuthorizedSetEditing:*(a1 + 40) animated:*(a1 + 41)];
    WeakRetained = v5;
  }
}

- (void)finishEditing:(id)a3
{
  if ([(CNContactContentContainerViewController *)self isEditing])
  {
    v4 = [(CNContactContentContainerViewController *)self editContactViewController];
    [v4 finishEditing];
  }
}

- (void)toggleEditing:(id)a3
{
  v4 = a3;
  if ([(CNContactContentContainerViewController *)self isEditing])
  {
    [(CNContactContentContainerViewController *)self finishEditing:v4];
  }

  else
  {
    [(CNContactContentContainerViewController *)self setEditing:[(CNContactContentContainerViewController *)self isEditing]^ 1];
  }
}

- (void)editCancel:(id)a3
{
  if ([(CNContactContentContainerViewController *)self isEditing])
  {
    v4 = [(CNContactContentContainerViewController *)self editContactViewController];
    [v4 editCancel];
  }
}

- (BOOL)saveWasAuthorized
{
  v2 = [(CNContactContentContainerViewController *)self editAuthorizationManager];
  v3 = [v2 saveWasAuthorized];

  return v3;
}

- (void)presentConfirmCancelAlertController
{
  v2 = [(CNContactContentContainerViewController *)self delegate];
  [v2 presentCancelConfirmationAlert];
}

- (void)updateWindowTitleForAppearing:(BOOL)a3
{
  if (a3)
  {
    v4 = [(CNContactContentContainerViewController *)self title];
    if (v4)
    {
      v11 = v4;
    }

    else
    {
      v7 = [(CNContactContentContainerViewController *)self navigationController];
      v11 = [v7 title];

      if (!v11)
      {
        v8 = [(CNContactContentContainerViewController *)self contactFormatter];
        v9 = [(CNContactContentContainerViewController *)self contact];
        v11 = [v8 stringFromContact:v9];
      }
    }

    v5 = [(CNContactContentContainerViewController *)self view];
    v6 = [v5 window];
    v10 = [v6 windowScene];
    [v10 setTitle:v11];
  }

  else
  {
    v11 = [(CNContactContentContainerViewController *)self view];
    v5 = [v11 window];
    v6 = [v5 windowScene];
    [v6 setTitle:0];
  }
}

- (id)navigationItemController
{
  v2 = self;
  v3 = v2;
  if (v2)
  {
    v4 = v2;
    while (1)
    {
      v5 = [(CNContactContentContainerViewController *)v4 parentViewController];
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();

      if (isKindOfClass)
      {
        break;
      }

      v7 = [(CNContactContentContainerViewController *)v4 parentViewController];

      v4 = v7;
      if (!v7)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:
    v4 = v3;
  }

  return v4;
}

- (id)contentScrollViewForEdge:(unint64_t)a3
{
  if (a3 == 4)
  {
    if (([(CNContactContentContainerViewController *)self isEditing]& 1) != 0)
    {
      v4 = [(CNContactContentContainerViewController *)self displayContactViewController];
      v5 = [v4 contactView];
    }

    else
    {
      v5 = [(CNContactContentEditViewController *)self->_editContactViewController contactView];
    }
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)reloadCardGroup:(id)a3 forTableView:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(CNContactContentContainerViewController *)self displayContactViewController];
  [v8 reloadCardGroup:v7 forTableView:v6];
}

- (void)removeActionWithTarget:(id)a3 selector:(SEL)a4 inGroup:(id)a5
{
  v8 = a5;
  v9 = a3;
  v10 = [(CNContactContentContainerViewController *)self displayContactViewController];
  [v10 removeActionWithTarget:v9 selector:a4 inGroup:v8];
}

- (void)addActionWithTitle:(id)a3 target:(id)a4 selector:(SEL)a5 inGroup:(id)a6 destructive:(BOOL)a7
{
  v7 = a7;
  v12 = a6;
  v13 = a4;
  v14 = a3;
  v15 = [(CNContactContentContainerViewController *)self displayContactViewController];
  [v15 addActionWithTitle:v14 target:v13 selector:a5 inGroup:v12 destructive:v7];
}

- (void)addActionWithTitle:(id)a3 target:(id)a4 selector:(SEL)a5 menuProvider:(id)a6 inGroup:(id)a7 destructive:(BOOL)a8
{
  v8 = a8;
  v12 = a7;
  v13 = a6;
  v14 = a3;
  v15 = [(CNContactContentContainerViewController *)self displayContactViewController];
  [v15 addActionWithTitle:v14 menuProvider:v13 inGroup:v12 destructive:v8];
}

- (void)reloadDataPreservingChanges:(BOOL)a3
{
  v3 = a3;
  if ([(CNContactContentContainerViewController *)self isViewLoaded]&& (![(CNContactContentContainerViewController *)self isOutOfProcess]|| [(CNContactContentContainerViewController *)self outOfProcessSetupComplete]))
  {
    self->_needsReload = 0;
    v5 = [(CNContactContentContainerViewController *)self displayContactViewController];
    [v5 reloadDataPreservingChanges:v3];

    if (self->_editContactViewController)
    {
      v6 = [(CNContactContentContainerViewController *)self editContactViewController];
      [v6 reloadDataPreservingChanges:v3];
    }
  }
}

- (id)originalContacts
{
  v5[1] = *MEMORY[0x1E69E9840];
  originalContacts = self->_originalContacts;
  if (originalContacts)
  {
    v3 = originalContacts;
  }

  else if (self->_contact)
  {
    v5[0] = self->_contact;
    v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:v5 count:1];
  }

  else
  {
    v3 = MEMORY[0x1E695E0F0];
  }

  return v3;
}

- (void)_refetchContact
{
  v36[1] = *MEMORY[0x1E69E9840];
  v3 = [(CNContactContentContainerViewController *)self contact];
  v4 = [(CNContactContentViewController *)self parentContainer];
  if (v3)
  {
    v5 = [MEMORY[0x1E6996BA8] unifiedMeContactMonitor];
    v6 = [(CNContactContentContainerViewController *)self contact];
    v7 = [v5 isMeContact:v6];

    v8 = CNUILogContactCard();
    v9 = os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);
    if (v7)
    {
      if (v9)
      {
        v10 = [v3 identifier];
        *buf = 138543362;
        v28 = v10;
        _os_log_impl(&dword_199A75000, v8, OS_LOG_TYPE_DEFAULT, "Refetching contact, is it the me card, identifier %{public}@", buf, 0xCu);
      }

      v11 = [(CNContactContentContainerViewController *)self contactStore];
      v12 = [objc_opt_class() descriptorForRequiredKeysForContact:v3];
      v36[0] = v12;
      v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v36 count:1];
      v26 = 0;
      v14 = [v11 _crossPlatformUnifiedMeContactWithKeysToFetch:v13 error:&v26];
      v15 = v26;
    }

    else
    {
      if (v9)
      {
        v16 = [v3 identifier];
        *buf = 138543362;
        v28 = v16;
        _os_log_impl(&dword_199A75000, v8, OS_LOG_TYPE_DEFAULT, "Refetching contact, is it not the me card, identifier %{public}@", buf, 0xCu);
      }

      v11 = [(CNContactContentContainerViewController *)self contactStore];
      v12 = [v3 identifier];
      v13 = [objc_opt_class() descriptorForRequiredKeysForContact:v3];
      v35 = v13;
      v17 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v35 count:1];
      v25 = 0;
      v14 = [v11 unifiedContactWithIdentifier:v12 keysToFetch:v17 error:&v25];
      v15 = v25;
    }

    v18 = [(CNContactContentContainerViewController *)self contactViewCache];
    v19 = [v18 containerForContact:v14];

    if (v15 || !v14)
    {
      v22 = CNUILogContactCard();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
      {
        v23 = [v3 identifier];
        v24 = [(CNContactContentContainerViewController *)self contactStore];
        *buf = 138413058;
        v28 = v23;
        v29 = 2112;
        v30 = v15;
        v31 = 2112;
        v32 = v24;
        v33 = 2112;
        v34 = v3;
        _os_log_error_impl(&dword_199A75000, v22, OS_LOG_TYPE_ERROR, "Error refetching contact with identifier %@, %@, store %@, full contact %@", buf, 0x2Au);
      }
    }

    else
    {
      v20 = [v14 isEqual:v3];
      v21 = [v19 isEqual:v4];
      if (!v20 || (v21 & 1) == 0)
      {
        [(CNContactContentContainerViewController *)self setContact:v14];
      }
    }
  }
}

- (void)favoritesDidChangeWithNotification:(id)a3
{
  if (([(CNContactContentContainerViewController *)self isEditing]& 1) == 0)
  {

    [(CNContactContentContainerViewController *)self reloadDataPreservingChanges:0];
  }
}

- (void)setContact:(id)a3
{
  v35[1] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = v4;
  self->_needsRefetch = 0;
  if (self->_contact == v4)
  {
    goto LABEL_15;
  }

  v6 = [(CNContact *)v4 identifier];
  v7 = [(CNContact *)self->_contact identifier];
  v8 = [v6 isEqualToString:v7];

  if ((v8 & 1) == 0)
  {
    [(CNContactContentContainerViewController *)self setDidSetNewContact:1];
  }

  v9 = [(CNContactContentContainerViewController *)self environment];
  v10 = [v9 defaultSchedulerProvider];

  [v10 suspendBackgroundScheduler];
  v11 = [v10 afterCACommitScheduler];
  v30[0] = MEMORY[0x1E69E9820];
  v30[1] = 3221225472;
  v30[2] = __54__CNContactContentContainerViewController_setContact___block_invoke;
  v30[3] = &unk_1E74E6A88;
  v12 = v10;
  v31 = v12;
  [v11 performBlock:v30];

  v13 = [(CNContactContentContainerViewController *)self contactViewCache];
  [v13 resetCache];

  LODWORD(v11) = [(CNContactContentContainerViewController *)self isOutOfProcess];
  v14 = [objc_opt_class() descriptorForRequiredKeys];
  v15 = v14;
  if (v11)
  {
    v35[0] = v14;
    v16 = [MEMORY[0x1E695DEC8] arrayWithObjects:v35 count:1];
    v17 = [(CNContactContentContainerViewController *)self _updateContact:v5 withMissingKeysFromRequiredKeys:v16];

    v5 = v17;
  }

  else
  {
    v34 = v14;
    v16 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v34 count:1];
    [v5 assertKeysAreAvailable:v16];
  }

  v18 = [(CNContactContentContainerViewController *)self displayContactViewController];
  [v18 setContact:v5];

  [(CNContactContentEditViewController *)self->_editContactViewController setContact:v5];
  v19 = [(CNContactContentContainerViewController *)self editAuthorizationManager];
  [v19 updateWithContact:v5];

  v20 = [(CNContactContentViewController *)self parentContainer];
  if (!v20)
  {
    goto LABEL_10;
  }

  v21 = v20;
  v22 = [(CNContactContentViewController *)self parentContainer];
  if (!v22)
  {
LABEL_11:

    goto LABEL_12;
  }

  v23 = v22;
  v24 = [v5 hasBeenPersisted];

  if (v24)
  {
LABEL_10:
    v21 = [(CNContactContentContainerViewController *)self contactViewCache];
    v25 = [v21 containerForContact:v5];
    [(CNContactContentViewController *)self setParentContainer:v25];

    goto LABEL_11;
  }

LABEL_12:
  objc_storeStrong(&self->_contact, v5);
  v26 = CNUILogContactCard();
  if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
  {
    v27 = [v5 identifier];
    *buf = 138543362;
    v33 = v27;
    _os_log_impl(&dword_199A75000, v26, OS_LOG_TYPE_DEFAULT, "[CNContactContentViewController] setting contact with identifier %{public}@", buf, 0xCu);
  }

  v28 = +[CNUIDataCollector sharedCollector];
  v29 = [(CNContactContentContainerViewController *)self contact];
  [v28 logContactShown:v29];

  [(CNContactContentContainerViewController *)self prepareContactDidAppearForPPT];
LABEL_15:
}

- (id)cardFooterGroup
{
  v2 = [(CNContactContentContainerViewController *)self displayContactViewController];
  v3 = [v2 cardFooterGroup];

  return v3;
}

- (id)cardBottomGroup
{
  v2 = [(CNContactContentContainerViewController *)self displayContactViewController];
  v3 = [v2 cardBottomGroup];

  return v3;
}

- (id)cardTopGroup
{
  v2 = [(CNContactContentContainerViewController *)self displayContactViewController];
  v3 = [v2 cardTopGroup];

  return v3;
}

- (id)personHeaderViewController
{
  v2 = [(CNContactContentContainerViewController *)self displayContactViewController];
  v3 = [v2 personHeaderViewController];

  return v3;
}

- (void)setPersonHeaderViewController:(id)a3
{
  v4 = a3;
  v5 = [(CNContactContentContainerViewController *)self displayContactViewController];
  [v5 setPersonHeaderViewController:v4];
}

- (id)personHeaderView
{
  v2 = [(CNContactContentContainerViewController *)self personHeaderViewController];
  v3 = [v2 view];
  v4 = [v3 subviews];
  v5 = [v4 firstObject];

  return v5;
}

- (void)setPersonHeaderView:(id)a3
{
  firstValue = a3;
  if (firstValue)
  {
    v4 = objc_alloc_init(MEMORY[0x1E69DD258]);
    v5 = [v4 view];
    [v5 addSubview:firstValue];

    v6 = [MEMORY[0x1E695DF70] array];
    v7 = _NSDictionaryOfVariableBindings(&cfstr_Personheadervi.isa, firstValue, 0);
    [firstValue setTranslatesAutoresizingMaskIntoConstraints:0];
    v8 = [MEMORY[0x1E696ACD8] constraintsWithVisualFormat:@"H:|[personHeaderView]|" options:0 metrics:0 views:v7];
    [v6 addObjectsFromArray:v8];

    v9 = [MEMORY[0x1E696ACD8] constraintsWithVisualFormat:@"V:|[personHeaderView]|" options:0 metrics:0 views:v7];
    [v6 addObjectsFromArray:v9];

    [MEMORY[0x1E696ACD8] activateConstraints:v6];
    [(CNContactContentContainerViewController *)self setPersonHeaderViewController:v4];
  }

  else
  {
    [(CNContactContentContainerViewController *)self setPersonHeaderViewController:0];
  }
}

- (id)primaryProperty
{
  v2 = [(CNContactContentContainerViewController *)self contactViewConfiguration];
  v3 = [v2 primaryProperty];

  return v3;
}

- (void)setPrimaryProperty:(id)a3
{
  v4 = a3;
  v5 = [(CNContactContentContainerViewController *)self contactViewConfiguration];
  [v5 setPrimaryProperty:v4];

  [(CNContactContentContainerViewController *)self didUpdateContactViewConfiguration];
}

- (id)verifiedInfoMessage
{
  v2 = [(CNContactContentContainerViewController *)self contactViewConfiguration];
  v3 = [v2 verifiedInfoMessage];

  return v3;
}

- (void)setVerifiedInfoMessage:(id)a3
{
  v4 = a3;
  v5 = [(CNContactContentContainerViewController *)self contactViewConfiguration];
  [v5 setVerifiedInfoMessage:v4];

  [(CNContactContentContainerViewController *)self didUpdateContactViewConfiguration];
}

- (id)importantMessage
{
  v2 = [(CNContactContentContainerViewController *)self contactViewConfiguration];
  v3 = [v2 importantMessage];

  return v3;
}

- (void)setImportantMessage:(id)a3
{
  v4 = a3;
  v5 = [(CNContactContentContainerViewController *)self contactViewConfiguration];
  [v5 setImportantMessage:v4];

  [(CNContactContentContainerViewController *)self didUpdateContactViewConfiguration];
}

- (id)warningMessage
{
  v2 = [(CNContactContentContainerViewController *)self contactViewConfiguration];
  v3 = [v2 warningMessage];

  return v3;
}

- (void)setWarningMessage:(id)a3
{
  v4 = a3;
  v5 = [(CNContactContentContainerViewController *)self contactViewConfiguration];
  [v5 setWarningMessage:v4];

  [(CNContactContentContainerViewController *)self didUpdateContactViewConfiguration];
}

- (id)message
{
  v2 = [(CNContactContentContainerViewController *)self contactViewConfiguration];
  v3 = [v2 message];

  return v3;
}

- (void)setMessage:(id)a3
{
  v4 = a3;
  v5 = [(CNContactContentContainerViewController *)self contactViewConfiguration];
  [v5 setMessage:v4];

  [(CNContactContentContainerViewController *)self didUpdateContactViewConfiguration];
}

- (id)alternateName
{
  v2 = [(CNContactContentContainerViewController *)self contactViewConfiguration];
  v3 = [v2 alternateName];

  return v3;
}

- (void)setAlternateName:(id)a3
{
  v4 = a3;
  v5 = [(CNContactContentContainerViewController *)self contactViewConfiguration];
  [v5 setAlternateName:v4];

  [(CNContactContentContainerViewController *)self didUpdateContactViewConfiguration];
}

- (BOOL)showContactBlockingFirst
{
  v2 = [(CNContactContentContainerViewController *)self contactViewConfiguration];
  v3 = [v2 showContactBlockingFirst];

  return v3;
}

- (void)setShowContactBlockingFirst:(BOOL)a3
{
  v3 = a3;
  v5 = [(CNContactContentContainerViewController *)self contactViewConfiguration];
  [v5 setShowContactBlockingFirst:v3];

  [(CNContactContentContainerViewController *)self didUpdateContactViewConfiguration];
}

- (BOOL)isMailVIP
{
  v2 = [(CNContactContentContainerViewController *)self contactViewConfiguration];
  v3 = [v2 isMailVIP];

  return v3;
}

- (void)setIsMailVIP:(BOOL)a3
{
  v3 = a3;
  v5 = [(CNContactContentContainerViewController *)self contactViewConfiguration];
  [v5 setIsMailVIP:v3];

  [(CNContactContentContainerViewController *)self didUpdateContactViewConfiguration];
}

- (BOOL)hideCardActions
{
  v2 = [(CNContactContentContainerViewController *)self contactViewConfiguration];
  v3 = [v2 hideCardActions];

  return v3;
}

- (void)setHideCardActions:(BOOL)a3
{
  v3 = a3;
  v5 = [(CNContactContentContainerViewController *)self contactViewConfiguration];
  [v5 setHideCardActions:v3];

  [(CNContactContentContainerViewController *)self didUpdateContactViewConfiguration];
}

- (BOOL)editingProposedInformation
{
  v2 = [(CNContactContentContainerViewController *)self contactViewConfiguration];
  v3 = [v2 editingProposedInformation];

  return v3;
}

- (void)setEditingProposedInformation:(BOOL)a3
{
  v3 = a3;
  v5 = [(CNContactContentContainerViewController *)self contactViewConfiguration];
  [v5 setEditingProposedInformation:v3];

  [(CNContactContentContainerViewController *)self didUpdateContactViewConfiguration];
}

- (BOOL)ignoresParentalRestrictions
{
  v2 = [(CNContactContentContainerViewController *)self contactViewConfiguration];
  v3 = [v2 ignoresParentalRestrictions];

  return v3;
}

- (void)setIgnoresParentalRestrictions:(BOOL)a3
{
  v3 = a3;
  v5 = [(CNContactContentContainerViewController *)self contactViewConfiguration];
  [v5 setIgnoresParentalRestrictions:v3];

  [(CNContactContentContainerViewController *)self didUpdateContactViewConfiguration];
}

- (BOOL)allowsEditPhoto
{
  v2 = [(CNContactContentContainerViewController *)self contactViewConfiguration];
  v3 = [v2 allowsEditPhoto];

  return v3;
}

- (void)setAllowsEditPhoto:(BOOL)a3
{
  v3 = a3;
  v5 = [(CNContactContentContainerViewController *)self contactViewConfiguration];
  [v5 setAllowsEditPhoto:v3];

  [(CNContactContentContainerViewController *)self didUpdateContactViewConfiguration];
}

- (BOOL)allowsDisplayModePickerActions
{
  v2 = [(CNContactContentContainerViewController *)self contactViewConfiguration];
  v3 = [v2 allowsDisplayModePickerActions];

  return v3;
}

- (void)setAllowsDisplayModePickerActions:(BOOL)a3
{
  v3 = a3;
  v5 = [(CNContactContentContainerViewController *)self contactViewConfiguration];
  [v5 setAllowsDisplayModePickerActions:v3];

  [(CNContactContentContainerViewController *)self didUpdateContactViewConfiguration];
}

- (BOOL)allowsActionsModel
{
  v2 = [(CNContactContentContainerViewController *)self contactViewConfiguration];
  v3 = [v2 allowsActionsModel];

  return v3;
}

- (void)setAllowsActionsModel:(BOOL)a3
{
  v3 = a3;
  v5 = [(CNContactContentContainerViewController *)self contactViewConfiguration];
  [v5 setAllowsActionsModel:v3];

  [(CNContactContentContainerViewController *)self didUpdateContactViewConfiguration];
}

- (BOOL)allowsDeletion
{
  v2 = [(CNContactContentContainerViewController *)self contactViewConfiguration];
  v3 = [v2 allowsDeletion];

  return v3;
}

- (void)setAllowsDeletion:(BOOL)a3
{
  v3 = a3;
  v5 = [(CNContactContentContainerViewController *)self contactViewConfiguration];
  [v5 setAllowsDeletion:v3];

  [(CNContactContentContainerViewController *)self didUpdateContactViewConfiguration];
}

- (BOOL)allowsSettingLinkedContactsAsPreferred
{
  v2 = [(CNContactContentContainerViewController *)self contactViewConfiguration];
  v3 = [v2 allowsSettingLinkedContactsAsPreferred];

  return v3;
}

- (void)setAllowsSettingLinkedContactsAsPreferred:(BOOL)a3
{
  v3 = a3;
  v5 = [(CNContactContentContainerViewController *)self contactViewConfiguration];
  [v5 setAllowsSettingLinkedContactsAsPreferred:v3];

  [(CNContactContentContainerViewController *)self didUpdateContactViewConfiguration];
}

- (BOOL)shouldShowLinkedContacts
{
  v2 = [(CNContactContentContainerViewController *)self contactViewConfiguration];
  v3 = [v2 shouldShowLinkedContacts];

  return v3;
}

- (void)setShouldShowLinkedContacts:(BOOL)a3
{
  v3 = a3;
  v5 = [(CNContactContentContainerViewController *)self contactViewConfiguration];
  [v5 setShouldShowLinkedContacts:v3];

  [(CNContactContentContainerViewController *)self didUpdateContactViewConfiguration];
}

- (BOOL)allowsAddingToAddressBook
{
  v2 = [(CNContactContentContainerViewController *)self contactViewConfiguration];
  v3 = [v2 allowsAddingToAddressBook];

  return v3;
}

- (void)setAllowsAddingToAddressBook:(BOOL)a3
{
  v3 = a3;
  v5 = [(CNContactContentContainerViewController *)self contactViewConfiguration];
  [v5 setAllowsAddingToAddressBook:v3];

  [(CNContactContentContainerViewController *)self didUpdateContactViewConfiguration];
}

- (BOOL)allowsContactBlockingAndReporting
{
  v2 = [(CNContactContentContainerViewController *)self contactViewConfiguration];
  v3 = [v2 allowsContactBlockingAndReporting];

  return v3;
}

- (void)setAllowsContactBlockingAndReporting:(BOOL)a3
{
  v3 = a3;
  v5 = [(CNContactContentContainerViewController *)self contactViewConfiguration];
  [v5 setAllowsContactBlockingAndReporting:v3];

  [(CNContactContentContainerViewController *)self didUpdateContactViewConfiguration];
}

- (BOOL)allowsContactBlocking
{
  v2 = [(CNContactContentContainerViewController *)self contactViewConfiguration];
  v3 = [v2 allowsContactBlocking];

  return v3;
}

- (void)setAllowsContactBlocking:(BOOL)a3
{
  v3 = a3;
  v5 = [(CNContactContentContainerViewController *)self contactViewConfiguration];
  [v5 setAllowsContactBlocking:v3];

  [(CNContactContentContainerViewController *)self didUpdateContactViewConfiguration];
}

- (BOOL)allowsSendMessage
{
  v2 = [(CNContactContentContainerViewController *)self contactViewConfiguration];
  v3 = [v2 allowsSendMessage];

  return v3;
}

- (void)setAllowsSendMessage:(BOOL)a3
{
  v3 = a3;
  v5 = [(CNContactContentContainerViewController *)self contactViewConfiguration];
  [v5 setAllowsSendMessage:v3];

  [(CNContactContentContainerViewController *)self didUpdateContactViewConfiguration];
}

- (BOOL)allowsAddToFavorites
{
  v2 = [(CNContactContentContainerViewController *)self contactViewConfiguration];
  v3 = [v2 allowsAddToFavorites];

  return v3;
}

- (void)setAllowsAddToFavorites:(BOOL)a3
{
  v3 = a3;
  v5 = [(CNContactContentContainerViewController *)self contactViewConfiguration];
  [v5 setAllowsAddToFavorites:v3];

  [(CNContactContentContainerViewController *)self didUpdateContactViewConfiguration];
}

- (BOOL)allowsSharing
{
  v2 = [(CNContactContentContainerViewController *)self contactViewConfiguration];
  v3 = [v2 allowsSharing];

  return v3;
}

- (void)setAllowsSharing:(BOOL)a3
{
  v3 = a3;
  v5 = [(CNContactContentContainerViewController *)self contactViewConfiguration];
  [v5 setAllowsSharing:v3];

  [(CNContactContentContainerViewController *)self didUpdateContactViewConfiguration];
}

- (BOOL)allowsConferencing
{
  v2 = [(CNContactContentContainerViewController *)self contactViewConfiguration];
  v3 = [v2 allowsConferencing];

  return v3;
}

- (void)setAllowsConferencing:(BOOL)a3
{
  v3 = a3;
  v5 = [(CNContactContentContainerViewController *)self contactViewConfiguration];
  [v5 setAllowsConferencing:v3];

  [(CNContactContentContainerViewController *)self didUpdateContactViewConfiguration];
}

- (BOOL)allowsCardActions
{
  v2 = [(CNContactContentContainerViewController *)self contactViewConfiguration];
  v3 = [v2 allowsCardActions];

  return v3;
}

- (void)setAllowsCardActions:(BOOL)a3
{
  v3 = a3;
  v5 = [(CNContactContentContainerViewController *)self contactViewConfiguration];
  [v5 setAllowsCardActions:v3];

  [(CNContactContentContainerViewController *)self didUpdateContactViewConfiguration];
}

- (BOOL)allowsPropertyActions
{
  v2 = [(CNContactContentContainerViewController *)self contactViewConfiguration];
  v3 = [v2 allowsPropertyActions];

  return v3;
}

- (void)setAllowsPropertyActions:(BOOL)a3
{
  v3 = a3;
  v5 = [(CNContactContentContainerViewController *)self contactViewConfiguration];
  [v5 setAllowsPropertyActions:v3];

  [(CNContactContentContainerViewController *)self didUpdateContactViewConfiguration];
}

- (BOOL)allowsActions
{
  v2 = [(CNContactContentContainerViewController *)self contactViewConfiguration];
  v3 = [v2 allowsActions];

  return v3;
}

- (void)setAllowsActions:(BOOL)a3
{
  v3 = a3;
  v5 = [(CNContactContentContainerViewController *)self contactViewConfiguration];
  [v5 setAllowsActions:v3];

  [(CNContactContentContainerViewController *)self didUpdateContactViewConfiguration];
}

- (BOOL)alwaysEditing
{
  v2 = [(CNContactContentContainerViewController *)self contactViewConfiguration];
  v3 = [v2 alwaysEditing];

  return v3;
}

- (void)setAlwaysEditing:(BOOL)a3
{
  v3 = a3;
  v5 = [(CNContactContentContainerViewController *)self contactViewConfiguration];
  [v5 setAlwaysEditing:v3];

  [(CNContactContentContainerViewController *)self didUpdateContactViewConfiguration];
}

- (BOOL)allowsEditing
{
  v2 = [(CNContactContentContainerViewController *)self contactViewConfiguration];
  v3 = [v2 allowsEditing];

  return v3;
}

- (void)setAllowsEditing:(BOOL)a3
{
  v3 = a3;
  v5 = [(CNContactContentContainerViewController *)self contactViewConfiguration];
  [v5 setAllowsEditing:v3];

  [(CNContactContentContainerViewController *)self didUpdateContactViewConfiguration];
}

- (id)displayedProperties
{
  v2 = [(CNContactContentContainerViewController *)self contactViewConfiguration];
  v3 = [v2 displayedProperties];

  return v3;
}

- (void)setDisplayedProperties:(id)a3
{
  v14 = a3;
  v5 = [(CNContactContentContainerViewController *)self contactViewConfiguration];
  v6 = [v5 displayedProperties];

  v7 = v14;
  if (v6 != v14)
  {
    if ([v14 count])
    {
      v8 = [v14 objectAtIndexedSubscript:0];
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();

      if ((isKindOfClass & 1) == 0)
      {
        v10 = [MEMORY[0x1E696AAA8] currentHandler];
        [v10 handleFailureInMethod:a2 object:self file:@"CNContactContentContainerViewController.m" lineNumber:352 description:{@"Properties should be strings, are you still using old AB properties?"}];
      }
    }

    if (v14)
    {
      v11 = [v14 copy];
    }

    else
    {
      v11 = +[CNContactView allCardProperties];
    }

    v12 = v11;
    v13 = [(CNContactContentContainerViewController *)self contactViewConfiguration];
    [v13 setDisplayedProperties:v12];

    [(CNContactContentContainerViewController *)self didUpdateContactViewConfiguration];
    v7 = v14;
  }
}

- (void)applyChangesToNavigationItemFromItem:(id)a3
{
  v4 = a3;
  v5 = [(CNContactContentContainerViewController *)self navigationItemController];
  v8 = [v5 navigationItem];

  v6 = [v4 leftBarButtonItems];
  [v8 setLeftBarButtonItems:v6];

  v7 = [v4 rightBarButtonItems];

  [v8 setRightBarButtonItems:v7];
}

- (void)contactNavigationItemProvider:(id)a3 didUpdateNavigationItem:(id)a4 doneButtonItem:(id)a5
{
  v20 = a3;
  v8 = a4;
  v9 = a5;
  if (([(CNContactContentContainerViewController *)self isEditing]& 1) != 0)
  {
    v10 = 0;
  }

  else
  {
    v11 = [(CNContactContentContainerViewController *)self displayContactViewController];
    v10 = v11 == v20;
  }

  if ([(CNContactContentContainerViewController *)self isEditing])
  {
    v12 = [(CNContactContentContainerViewController *)self editContactViewController];
    v13 = v12 == v20;
  }

  else
  {
    v13 = 0;
  }

  if (v10 || v13)
  {
    [(CNContactContentContainerViewController *)self applyChangesToNavigationItemFromItem:v8];
    v14 = [(CNContactContentContainerViewController *)self delegate];
    v15 = objc_opt_respondsToSelector();

    if (v15)
    {
      v16 = [(CNContactContentContainerViewController *)self delegate];
      v17 = [(CNContactContentContainerViewController *)self isEditing];
      v18 = [v9 isEnabled];
      v19 = [v9 title];
      [v16 updateEditing:v17 doneButtonEnabled:v18 doneButtonText:v19];
    }
  }
}

- (id)displayHeaderView
{
  v2 = [(CNContactContentContainerViewController *)self displayContactViewController];
  v3 = [v2 contactHeaderView];

  return v3;
}

- (id)contactHeaderView
{
  if (([(CNContactContentContainerViewController *)self isEditing]& 1) != 0)
  {
    [(CNContactContentContainerViewController *)self displayContactViewController];
  }

  else
  {
    [(CNContactContentContainerViewController *)self editContactViewController];
  }
  v3 = ;
  v4 = [v3 contactHeaderView];

  return v4;
}

- (id)contactView
{
  if (([(CNContactContentContainerViewController *)self isEditing]& 1) != 0)
  {
    [(CNContactContentContainerViewController *)self displayContactViewController];
  }

  else
  {
    [(CNContactContentContainerViewController *)self editContactViewController];
  }
  v3 = ;
  v4 = [v3 contactView];

  return v4;
}

- (void)dealloc
{
  displayContactViewController = self->_displayContactViewController;
  self->_displayContactViewController = 0;

  editContactViewController = self->_editContactViewController;
  self->_editContactViewController = 0;

  v5.receiver = self;
  v5.super_class = CNContactContentContainerViewController;
  [(CNContactContentContainerViewController *)&v5 dealloc];
}

- (void)setTitle:(id)a3
{
  v5 = a3;
  if (v5 || ([(CNContactContentContainerViewController *)self title], (v3 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v6 = [(CNContactContentContainerViewController *)self title];
    v7 = [v5 isEqual:v6];

    if (!v5)
    {

      if (v7)
      {
        goto LABEL_6;
      }

      goto LABEL_5;
    }

    if ((v7 & 1) == 0)
    {
LABEL_5:
      v8.receiver = self;
      v8.super_class = CNContactContentContainerViewController;
      [(CNContactContentContainerViewController *)&v8 setTitle:v5];
      [(CNContactContentContainerViewController *)self didChangeToShowTitle:v5 != 0];
    }
  }

LABEL_6:
}

- (void)setContactStore:(id)a3
{
  objc_storeStrong(&self->_contactStore, a3);
  v5 = a3;
  v6 = [(CNContactContentContainerViewController *)self contactViewConfiguration];
  [v6 setContactStore:v5];

  [(CNContactContentContainerViewController *)self didUpdateContactViewConfiguration];
}

- (void)createEditingViewControllerIfNeeded
{
  if (!self->_editContactViewController)
  {
    v3 = [CNContactContentEditViewController alloc];
    v4 = [(CNContactContentContainerViewController *)self contact];
    v5 = [(CNContactContentContainerViewController *)self contactViewConfiguration];
    v6 = [(CNContactContentEditViewController *)v3 initWithContact:v4 contactViewConfiguration:v5];
    editContactViewController = self->_editContactViewController;
    self->_editContactViewController = v6;

    [(CNContactContentEditViewController *)self->_editContactViewController setDelegate:self];
    v8 = self->_editContactViewController;

    [(CNContactContentEditViewController *)v8 setNavigationItemDelegate:self];
  }
}

- (void)createDisplayViewControllerIfNeeded
{
  if (!self->_displayContactViewController)
  {
    v3 = [CNContactContentDisplayViewController alloc];
    v4 = [(CNContactContentContainerViewController *)self contact];
    v5 = [(CNContactContentContainerViewController *)self contactViewConfiguration];
    v6 = [(CNContactContentDisplayViewController *)v3 initWithContact:v4 contactViewConfiguration:v5];
    displayContactViewController = self->_displayContactViewController;
    self->_displayContactViewController = v6;

    [(CNContactContentDisplayViewController *)self->_displayContactViewController setDelegate:self];
    v8 = self->_displayContactViewController;

    [(CNContactContentDisplayViewController *)v8 setNavigationItemDelegate:self];
  }
}

- (CNContactContentContainerViewController)initWithContact:(id)a3
{
  v4 = a3;
  v5 = [(CNContactContentContainerViewController *)self initWithNibName:0 bundle:0];
  v6 = v5;
  if (v5)
  {
    [(CNContactContentContainerViewController *)v5 setContact:v4];
    v7 = v6;
  }

  return v6;
}

- (CNContactContentContainerViewController)initWithEnvironment:(id)a3
{
  v5 = a3;
  v20.receiver = self;
  v20.super_class = CNContactContentContainerViewController;
  v6 = [(CNContactContentViewController *)&v20 initWithEnvironment:v5];
  objc_storeStrong(&v6->_environment, a3);
  objc_storeWeak(&v6->_presentingDelegate, v6);
  v7 = +[CNContactView allCardProperties];
  displayedProperties = v6->_displayedProperties;
  v6->_displayedProperties = v7;

  v9 = [[CNContactContentViewControllerConfiguration alloc] initForOutOfProcess:[(CNContactContentContainerViewController *)v6 isOutOfProcess]];
  contactViewConfiguration = v6->_contactViewConfiguration;
  v6->_contactViewConfiguration = v9;

  v11 = [MEMORY[0x1E695CD80] sharedFullNameFormatter];
  contactFormatter = v6->_contactFormatter;
  v6->_contactFormatter = v11;

  [(CNContactContentContainerViewController *)v6 setNeedsReloadLazy];
  [(CNContactContentContainerViewController *)v6 setRestorationIdentifier:@"ContactCard"];
  [(CNContactContentContainerViewController *)v6 setRestorationClass:objc_opt_class()];
  v13 = [(CNContactContentContainerViewController *)v6 navigationItem];
  [v13 _setBackgroundHidden:1];

  v14 = [(CNContactContentContainerViewController *)v6 navigationItem];
  [v14 setLargeTitleDisplayMode:2];

  v15 = [MEMORY[0x1E69966E8] currentEnvironment];
  v16 = [v15 featureFlags];
  v6->_supportsDrafts = [v16 isFeatureEnabled:31];

  if ([(CNContactContentContainerViewController *)v6 supportsDrafts])
  {
    v17 = [MEMORY[0x1E696AD88] defaultCenter];
    [v17 addObserver:v6 selector:sel_applicationLeftForeground_ name:*MEMORY[0x1E69DDBC8] object:0];

    v18 = [MEMORY[0x1E696AD88] defaultCenter];
    [v18 addObserver:v6 selector:sel_applicationLeftForeground_ name:*MEMORY[0x1E69DDBD0] object:0];
  }

  return v6;
}

- (CNContactContentContainerViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  v5 = [CNUIContactsEnvironment currentEnvironment:a3];
  v6 = [(CNContactContentContainerViewController *)self initWithEnvironment:v5];

  return v6;
}

+ (id)viewControllerWithRestorationIdentifierPath:(id)a3 coder:(id)a4
{
  v26[1] = *MEMORY[0x1E69E9840];
  v5 = a4;
  v6 = objc_alloc_init(MEMORY[0x1E695CE18]);
  v7 = MEMORY[0x1E695CD58];
  v8 = +[CNContactContentViewController descriptorForRequiredKeys];
  v26[0] = v8;
  v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v26 count:1];
  v10 = [v7 contactWithStateRestorationCoder:v5 store:v6 keys:v9];

  if (v10)
  {
    v20 = v6;
    v11 = [[CNContactContentViewController alloc] initWithContact:v10];
    v21 = 0u;
    v22 = 0u;
    v23 = 0u;
    v24 = 0u;
    v12 = [a1 BOOLStateRestorationProperties];
    v13 = [v12 countByEnumeratingWithState:&v21 objects:v25 count:16];
    if (v13)
    {
      v14 = v13;
      v15 = *v22;
      do
      {
        for (i = 0; i != v14; ++i)
        {
          if (*v22 != v15)
          {
            objc_enumerationMutation(v12);
          }

          v17 = *(*(&v21 + 1) + 8 * i);
          v18 = [v5 decodeObjectOfClass:objc_opt_class() forKey:v17];
          if (v18)
          {
            [(CNContactContentViewController *)v11 setValue:v18 forKey:v17];
          }
        }

        v14 = [v12 countByEnumeratingWithState:&v21 objects:v25 count:16];
      }

      while (v14);
    }

    v6 = v20;
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

+ (id)descriptorForRequiredKeysWithDescription:(id)a3
{
  v3 = a3;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __84__CNContactContentContainerViewController_descriptorForRequiredKeysWithDescription___block_invoke;
  block[3] = &unk_1E74E6A88;
  v10 = v3;
  v4 = descriptorForRequiredKeysWithDescription__cn_once_token_6;
  v5 = v3;
  if (v4 != -1)
  {
    dispatch_once(&descriptorForRequiredKeysWithDescription__cn_once_token_6, block);
  }

  v6 = descriptorForRequiredKeysWithDescription__cn_once_object_6;
  v7 = descriptorForRequiredKeysWithDescription__cn_once_object_6;

  return v6;
}

void __84__CNContactContentContainerViewController_descriptorForRequiredKeysWithDescription___block_invoke(uint64_t a1)
{
  v7[2] = *MEMORY[0x1E69E9840];
  v2 = +[CNContactContentDisplayViewController descriptorForRequiredKeys];
  v7[0] = v2;
  v3 = +[CNContactContentEditViewController descriptorForRequiredKeys];
  v7[1] = v3;
  v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:v7 count:2];

  v5 = [MEMORY[0x1E695CD58] descriptorWithKeyDescriptors:v4 description:*(a1 + 32)];

  v6 = descriptorForRequiredKeysWithDescription__cn_once_object_6;
  descriptorForRequiredKeysWithDescription__cn_once_object_6 = v5;
}

+ (id)descriptorForRequiredKeys
{
  v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"+[CNContactContentContainerViewController descriptorForRequiredKeys]"];
  v4 = [a1 descriptorForRequiredKeysWithDescription:v3];

  return v4;
}

+ (id)descriptorForRequiredKeysForContact:(id)a3
{
  v12[2] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [a1 descriptorForRequiredKeys];
  v6 = [v4 availableKeyDescriptor];

  v12[0] = v5;
  v12[1] = v6;
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v12 count:2];
  v8 = MEMORY[0x1E695CD58];
  v9 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"+[CNContactContentContainerViewController descriptorForRequiredKeysForContact:]"];
  v10 = [v8 descriptorWithKeyDescriptors:v7 description:v9];

  return v10;
}

@end