@interface CNContactContentContainerViewController
+ (id)descriptorForRequiredKeys;
+ (id)descriptorForRequiredKeysForContact:(id)contact;
+ (id)descriptorForRequiredKeysWithDescription:(id)description;
+ (id)viewControllerWithRestorationIdentifierPath:(id)path coder:(id)coder;
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
- (BOOL)contactViewController:(id)controller shouldPerformDefaultActionForContact:(id)contact propertyKey:(id)key propertyIdentifier:(id)identifier;
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
- (CGRect)centeredSourceRect:(CGRect)rect inContactView:(id)view;
- (CNContactContentContainerViewController)initWithContact:(id)contact;
- (CNContactContentContainerViewController)initWithEnvironment:(id)environment;
- (CNContactContentContainerViewController)initWithNibName:(id)name bundle:(id)bundle;
- (CNContactViewControllerPPTDelegate)pptDelegate;
- (CNContactViewHostProtocol)delegate;
- (id)_removeUnauthorizedKeysFromContact:(id)contact;
- (id)_updateContact:(id)contact withMissingKeysFromRequiredKeys:(id)keys;
- (id)alternateName;
- (id)cardBottomGroup;
- (id)cardFooterGroup;
- (id)cardTopGroup;
- (id)contactDelegate;
- (id)contactHeaderView;
- (id)contactView;
- (id)contentScrollViewForEdge:(unint64_t)edge;
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
- (int64_t)adaptivePresentationStyleForPresentationController:(id)controller;
- (void)_didCompleteWithContact:(id)contact;
- (void)_refetchContact;
- (void)addActionWithTitle:(id)title target:(id)target selector:(SEL)selector inGroup:(id)group destructive:(BOOL)destructive;
- (void)addActionWithTitle:(id)title target:(id)target selector:(SEL)selector menuProvider:(id)provider inGroup:(id)group destructive:(BOOL)destructive;
- (void)applicationLeftForeground:(id)foreground;
- (void)applyChangesToNavigationItemFromItem:(id)item;
- (void)contactDisplayViewControllerWillDismissFullscreen:(id)fullscreen;
- (void)contactDisplayViewControllerWillPresentFullscreen:(id)fullscreen;
- (void)contactEditViewController:(id)controller didCompleteWithContact:(id)contact;
- (void)contactEditViewControllerWillDismissFullscreen:(id)fullscreen;
- (void)contactEditViewControllerWillPresentFullscreen:(id)fullscreen;
- (void)contactNavigationItemProvider:(id)provider didUpdateNavigationItem:(id)item doneButtonItem:(id)buttonItem;
- (void)createDisplayViewControllerIfNeeded;
- (void)createEditingViewControllerIfNeeded;
- (void)createdNewContact:(id)contact;
- (void)dealloc;
- (void)didChangeToEditMode:(BOOL)mode;
- (void)didUpdateContactViewConfiguration;
- (void)editCancel:(id)cancel;
- (void)encodeRestorableStateWithCoder:(id)coder;
- (void)favoritesDidChangeWithNotification:(id)notification;
- (void)finishEditing:(id)editing;
- (void)performAuthorizedSetEditing:(BOOL)editing animated:(BOOL)animated;
- (void)performConfirmedCancel;
- (void)prepareContactDidAppearForPPT;
- (void)presentConfirmCancelAlertController;
- (void)reloadCardGroup:(id)group forTableView:(id)view;
- (void)reloadDataPreservingChanges:(BOOL)changes;
- (void)reloadUnifiedContact;
- (void)removeActionWithTarget:(id)target selector:(SEL)selector inGroup:(id)group;
- (void)sender:(id)sender dismissViewController:(id)controller completionHandler:(id)handler;
- (void)sender:(id)sender presentViewController:(id)controller;
- (void)setAllowsActions:(BOOL)actions;
- (void)setAllowsActionsModel:(BOOL)model;
- (void)setAllowsAddToFavorites:(BOOL)favorites;
- (void)setAllowsAddingToAddressBook:(BOOL)book;
- (void)setAllowsCardActions:(BOOL)actions;
- (void)setAllowsConferencing:(BOOL)conferencing;
- (void)setAllowsContactBlocking:(BOOL)blocking;
- (void)setAllowsContactBlockingAndReporting:(BOOL)reporting;
- (void)setAllowsDeletion:(BOOL)deletion;
- (void)setAllowsDisplayModePickerActions:(BOOL)actions;
- (void)setAllowsEditPhoto:(BOOL)photo;
- (void)setAllowsEditing:(BOOL)editing;
- (void)setAllowsPropertyActions:(BOOL)actions;
- (void)setAllowsSendMessage:(BOOL)message;
- (void)setAllowsSettingLinkedContactsAsPreferred:(BOOL)preferred;
- (void)setAllowsSharing:(BOOL)sharing;
- (void)setAlternateName:(id)name;
- (void)setAlwaysEditing:(BOOL)editing;
- (void)setBackgroundColorIfNeededForPresentedViewController:(id)controller;
- (void)setCancelKeyboardShortcutEnabled:(BOOL)enabled;
- (void)setContact:(id)contact;
- (void)setContactStore:(id)store;
- (void)setDisplayedProperties:(id)properties;
- (void)setEditKeyboardShortcutEnabled:(BOOL)enabled;
- (void)setEditing:(BOOL)editing animated:(BOOL)animated;
- (void)setEditingProposedInformation:(BOOL)information;
- (void)setHideCardActions:(BOOL)actions;
- (void)setIgnoresParentalRestrictions:(BOOL)restrictions;
- (void)setImportantMessage:(id)message;
- (void)setIsMailVIP:(BOOL)p;
- (void)setMessage:(id)message;
- (void)setMode:(int64_t)mode;
- (void)setNeedsReload;
- (void)setPersonHeaderView:(id)view;
- (void)setPersonHeaderViewController:(id)controller;
- (void)setPrimaryProperty:(id)property;
- (void)setSaveKeyboardShortcutEnabled:(BOOL)enabled;
- (void)setShouldShowLinkedContacts:(BOOL)contacts;
- (void)setShowContactBlockingFirst:(BOOL)first;
- (void)setTitle:(id)title;
- (void)setVerifiedInfoMessage:(id)message;
- (void)setWarningMessage:(id)message;
- (void)setupConstraints;
- (void)setupWithOptions:(id)options readyBlock:(id)block;
- (void)toggleEditing:(id)editing;
- (void)updateViewConstraints;
- (void)updateWindowTitleForAppearing:(BOOL)appearing;
- (void)updatedExistingContact:(id)contact;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
- (void)viewWillDisappear:(BOOL)disappear;
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

- (void)applicationLeftForeground:(id)foreground
{
  v4 = +[CNUIContactsEnvironment currentEnvironment];
  authorizationContext = [v4 authorizationContext];

  if ([authorizationContext isFullAccessGranted] && -[CNContactContentContainerViewController isEditing](self, "isEditing") && -[CNContactContentContainerViewController hasPendingChanges](self, "hasPendingChanges") && -[CNContactContentContainerViewController mode](self, "mode") == 3)
  {
    editContactViewController = [(CNContactContentContainerViewController *)self editContactViewController];
    [editContactViewController saveNewContactDraft];
  }
}

- (void)setEditKeyboardShortcutEnabled:(BOOL)enabled
{
  enabledCopy = enabled;
  editCommand = [(CNContactContentContainerViewController *)self editCommand];

  if (enabledCopy)
  {
    if (!editCommand)
    {
      v6 = [MEMORY[0x1E69DCBA0] keyCommandWithInput:@"l" modifierFlags:0x100000 action:sel_toggleEditing_];
      [(CNContactContentContainerViewController *)self setEditCommand:v6];

      v7 = CNContactsUIBundle();
      v8 = [v7 localizedStringForKey:@"EDIT_CONTACT_KEYBOARD_DISCOVERY" value:&stru_1F0CE7398 table:@"Localized"];
      editCommand2 = [(CNContactContentContainerViewController *)self editCommand];
      [editCommand2 setDiscoverabilityTitle:v8];

      editCommand3 = [(CNContactContentContainerViewController *)self editCommand];
      [(CNContactContentContainerViewController *)self addKeyCommand:editCommand3];
    }
  }

  else if (editCommand)
  {
    editCommand4 = [(CNContactContentContainerViewController *)self editCommand];
    [(CNContactContentContainerViewController *)self removeKeyCommand:editCommand4];

    [(CNContactContentContainerViewController *)self setEditCommand:0];
  }
}

- (void)setCancelKeyboardShortcutEnabled:(BOOL)enabled
{
  enabledCopy = enabled;
  cancelCommand = [(CNContactContentContainerViewController *)self cancelCommand];

  if (enabledCopy)
  {
    if (!cancelCommand)
    {
      v6 = [MEMORY[0x1E69DCBA0] keyCommandWithInput:*MEMORY[0x1E69DDEA0] modifierFlags:0 action:sel_editCancel_];
      [(CNContactContentContainerViewController *)self setCancelCommand:v6];

      cancelCommand2 = [(CNContactContentContainerViewController *)self cancelCommand];
      [(CNContactContentContainerViewController *)self addKeyCommand:cancelCommand2];
    }
  }

  else if (cancelCommand)
  {
    cancelCommand3 = [(CNContactContentContainerViewController *)self cancelCommand];
    [(CNContactContentContainerViewController *)self removeKeyCommand:cancelCommand3];

    [(CNContactContentContainerViewController *)self setCancelCommand:0];
  }
}

- (void)setSaveKeyboardShortcutEnabled:(BOOL)enabled
{
  enabledCopy = enabled;
  saveCommand = [(CNContactContentContainerViewController *)self saveCommand];

  if (enabledCopy)
  {
    if (!saveCommand)
    {
      v6 = [MEMORY[0x1E69DCBA0] keyCommandWithInput:@"s" modifierFlags:0x100000 action:sel_toggleEditing_];
      [(CNContactContentContainerViewController *)self setSaveCommand:v6];

      v7 = CNContactsUIBundle();
      v8 = [v7 localizedStringForKey:@"SAVE_CONTACT_KEYBOARD_DISCOVERY" value:&stru_1F0CE7398 table:@"Localized"];
      saveCommand2 = [(CNContactContentContainerViewController *)self saveCommand];
      [saveCommand2 setDiscoverabilityTitle:v8];

      saveCommand3 = [(CNContactContentContainerViewController *)self saveCommand];
      [(CNContactContentContainerViewController *)self addKeyCommand:saveCommand3];
    }
  }

  else if (saveCommand)
  {
    saveCommand4 = [(CNContactContentContainerViewController *)self saveCommand];
    [(CNContactContentContainerViewController *)self removeKeyCommand:saveCommand4];

    [(CNContactContentContainerViewController *)self setSaveCommand:0];
  }
}

- (void)encodeRestorableStateWithCoder:(id)coder
{
  v20 = *MEMORY[0x1E69E9840];
  coderCopy = coder;
  v18.receiver = self;
  v18.super_class = CNContactContentContainerViewController;
  [(CNContactContentContainerViewController *)&v18 encodeRestorableStateWithCoder:coderCopy];
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
          [coderCopy encodeObject:v11 forKey:v10];
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v14 objects:v19 count:16];
    }

    while (v7);
  }

  contact = [(CNContactContentContainerViewController *)self contact];
  identifier = [contact identifier];

  if (identifier)
  {
    [coderCopy encodeObject:identifier forKey:@"Identifier"];
  }
}

- (void)setMode:(int64_t)mode
{
  if (self->_mode != mode)
  {
    self->_mode = mode;
    displayContactViewController = [(CNContactContentContainerViewController *)self displayContactViewController];
    [displayContactViewController setMode:mode];

    editContactViewController = self->_editContactViewController;
    if (editContactViewController)
    {

      [(CNContactContentEditViewController *)editContactViewController setMode:mode];
    }
  }
}

- (void)reloadUnifiedContact
{
  contact = [(CNContactContentContainerViewController *)self contact];
  v4 = objc_opt_class();

  contact2 = [(CNContactContentContainerViewController *)self contact];
  linkedContacts = [contact2 linkedContacts];

  v6 = linkedContacts;
  if (linkedContacts)
  {
    v7 = [v4 unifyContacts:linkedContacts];
    [(CNContactContentContainerViewController *)self setContact:v7];

    v6 = linkedContacts;
  }
}

- (void)updatedExistingContact:(id)contact
{
  contactCopy = contact;
  v7 = contactCopy;
  if (contactCopy)
  {
    contact = contactCopy;
  }

  else
  {
    contact = [(CNContactContentContainerViewController *)self contact];
  }

  v6 = contact;
  [(CNContactContentContainerViewController *)self setContact:contact];
  [(CNContactContentContainerViewController *)self _didCompleteWithContact:v6];
}

- (void)createdNewContact:(id)contact
{
  contactCopy = contact;
  if (contactCopy)
  {
    [(CNContactContentContainerViewController *)self setPrimaryProperty:0];
    [(CNContactContentContainerViewController *)self setContact:contactCopy];
    [(CNContactContentContainerViewController *)self setMode:1];
    displayContactViewController = [(CNContactContentContainerViewController *)self displayContactViewController];
    [displayContactViewController setMode:1];

    displayContactViewController2 = [(CNContactContentContainerViewController *)self displayContactViewController];
    [displayContactViewController2 setNeedsReload];

    [(CNContactContentContainerViewController *)self setIsSupressingViewConfigurationUpdates:1];
    [(CNContactContentContainerViewController *)self setAllowsEditing:1];
    [(CNContactContentContainerViewController *)self setAllowsAddingToAddressBook:0];
    [(CNContactContentContainerViewController *)self setAllowsAddToFavorites:1];
    [(CNContactContentContainerViewController *)self setIsSupressingViewConfigurationUpdates:0];
    [(CNContactContentContainerViewController *)self didUpdateContactViewConfiguration];
  }

  [(CNContactContentContainerViewController *)self _didCompleteWithContact:contactCopy];
}

- (void)_didCompleteWithContact:(id)contact
{
  contactCopy = contact;
  contactDelegate = [(CNContactContentContainerViewController *)self contactDelegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    contactDelegate2 = [(CNContactContentContainerViewController *)self contactDelegate];
    [contactDelegate2 contactViewController:self didCompleteWithContact:contactCopy];
  }

  delegate = [(CNContactContentContainerViewController *)self delegate];
  v8 = objc_opt_respondsToSelector();

  if (v8)
  {
    delegate2 = [(CNContactContentContainerViewController *)self delegate];
    [delegate2 didCompleteWithContact:contactCopy];
  }
}

- (id)_removeUnauthorizedKeysFromContact:(id)contact
{
  contactCopy = contact;
  missingRequiredKeys = [(CNContactContentContainerViewController *)self missingRequiredKeys];
  v6 = [missingRequiredKeys count];

  if (v6)
  {
    v7 = [contactCopy mutableCopy];
    missingRequiredKeys2 = [(CNContactContentContainerViewController *)self missingRequiredKeys];
    [v7 removeKeys:missingRequiredKeys2];

    [v7 setFrozenSelfAsSnapshot];
    contactCopy = v7;
  }

  return contactCopy;
}

- (id)_updateContact:(id)contact withMissingKeysFromRequiredKeys:(id)keys
{
  v30[1] = *MEMORY[0x1E69E9840];
  contactCopy = contact;
  keysCopy = keys;
  v8 = [contactCopy areKeysAvailable:keysCopy useIgnorableKeys:0 findMissingKeys:1];
  first = [v8 first];
  bOOLValue = [first BOOLValue];

  if (bOOLValue)
  {
    freeze = contactCopy;
  }

  else
  {
    second = [v8 second];
    [(CNContactContentContainerViewController *)self setMissingRequiredKeys:second];

    v24 = 0;
    v25 = &v24;
    v26 = 0x3032000000;
    v27 = __Block_byref_object_copy__2409;
    v28 = __Block_byref_object_dispose__2410;
    v29 = 0;
    v13 = objc_alloc(MEMORY[0x1E695CD78]);
    missingRequiredKeys = [(CNContactContentContainerViewController *)self missingRequiredKeys];
    v15 = [v13 initWithKeysToFetch:missingRequiredKeys];

    v16 = MEMORY[0x1E695CD58];
    identifier = [contactCopy identifier];
    v30[0] = identifier;
    v18 = [MEMORY[0x1E695DEC8] arrayWithObjects:v30 count:1];
    v19 = [v16 predicateForContactsWithIdentifiers:v18];
    [v15 setPredicate:v19];

    [v15 setUnifyResults:{objc_msgSend(contactCopy, "isUnified")}];
    contactStore = [(CNContactContentContainerViewController *)self contactStore];
    v23[0] = MEMORY[0x1E69E9820];
    v23[1] = 3221225472;
    v23[2] = __90__CNContactContentContainerViewController__updateContact_withMissingKeysFromRequiredKeys___block_invoke;
    v23[3] = &unk_1E74E6F60;
    v23[4] = &v24;
    [contactStore enumerateContactsWithFetchRequest:v15 error:0 usingBlock:v23];

    v21 = [contactCopy mutableCopy];
    [v21 overwriteStateFromContact:v25[5]];
    freeze = [v21 freeze];

    _Block_object_dispose(&v24, 8);
  }

  return freeze;
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
  contact = [(CNContactContentContainerViewController *)self contact];
  isSuggested = [contact isSuggested];

  return isSuggested;
}

- (void)contactEditViewController:(id)controller didCompleteWithContact:(id)contact
{
  contactCopy = contact;
  if (contactCopy)
  {
    displayContactViewController = [(CNContactContentContainerViewController *)self displayContactViewController];
    [displayContactViewController setContact:contactCopy];
  }

  [(CNContactContentContainerViewController *)self setEditing:0];
  [(CNContactContentContainerViewController *)self _didCompleteWithContact:contactCopy];
}

- (void)contactEditViewControllerWillDismissFullscreen:(id)fullscreen
{
  if ([(CNContactContentContainerViewController *)self isEditing])
  {
    delegate = [(CNContactContentContainerViewController *)self delegate];
    v5 = objc_opt_respondsToSelector();

    if (v5)
    {
      delegate2 = [(CNContactContentContainerViewController *)self delegate];
      [delegate2 isPresentingFullscreen:0];
    }
  }
}

- (void)contactEditViewControllerWillPresentFullscreen:(id)fullscreen
{
  if ([(CNContactContentContainerViewController *)self isEditing])
  {
    delegate = [(CNContactContentContainerViewController *)self delegate];
    v5 = objc_opt_respondsToSelector();

    if (v5)
    {
      delegate2 = [(CNContactContentContainerViewController *)self delegate];
      [delegate2 isPresentingFullscreen:1];
    }
  }
}

- (BOOL)contactViewController:(id)controller shouldPerformDefaultActionForContact:(id)contact propertyKey:(id)key propertyIdentifier:(id)identifier
{
  contactCopy = contact;
  keyCopy = key;
  identifierCopy = identifier;
  contactDelegate = [(CNContactContentContainerViewController *)self contactDelegate];
  v13 = objc_opt_respondsToSelector();

  if (v13)
  {
    contactDelegate2 = [(CNContactContentContainerViewController *)self contactDelegate];
    v15 = [contactDelegate2 contactViewController:self shouldPerformDefaultActionForContact:contactCopy propertyKey:keyCopy propertyIdentifier:identifierCopy];
  }

  else
  {
    v15 = 1;
  }

  delegate = [(CNContactContentContainerViewController *)self delegate];
  v17 = objc_opt_respondsToSelector();

  if (v17)
  {
    v18 = [(CNContactContentContainerViewController *)self _removeUnauthorizedKeysFromContact:contactCopy];

    delegate2 = [(CNContactContentContainerViewController *)self delegate];
    v15 = [delegate2 shouldPerformDefaultActionForContact:v18 propertyKey:keyCopy propertyIdentifier:identifierCopy];

    contactCopy = v18;
  }

  return v15;
}

- (void)contactDisplayViewControllerWillDismissFullscreen:(id)fullscreen
{
  if (([(CNContactContentContainerViewController *)self isEditing]& 1) == 0)
  {
    delegate = [(CNContactContentContainerViewController *)self delegate];
    v5 = objc_opt_respondsToSelector();

    if (v5)
    {
      delegate2 = [(CNContactContentContainerViewController *)self delegate];
      [delegate2 isPresentingFullscreen:0];
    }
  }
}

- (void)contactDisplayViewControllerWillPresentFullscreen:(id)fullscreen
{
  if (([(CNContactContentContainerViewController *)self isEditing]& 1) == 0)
  {
    delegate = [(CNContactContentContainerViewController *)self delegate];
    v5 = objc_opt_respondsToSelector();

    if (v5)
    {
      delegate2 = [(CNContactContentContainerViewController *)self delegate];
      [delegate2 isPresentingFullscreen:1];
    }
  }
}

- (BOOL)isPresentingModalViewController
{
  presentedViewController = [(CNContactContentContainerViewController *)self presentedViewController];
  v3 = presentedViewController != 0;

  return v3;
}

- (void)sender:(id)sender dismissViewController:(id)controller completionHandler:(id)handler
{
  handlerCopy = handler;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __90__CNContactContentContainerViewController_sender_dismissViewController_completionHandler___block_invoke;
  v9[3] = &unk_1E74E6DD0;
  v9[4] = self;
  v10 = handlerCopy;
  v8 = handlerCopy;
  [controller dismissViewControllerAnimated:1 completion:v9];
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

- (void)setBackgroundColorIfNeededForPresentedViewController:(id)controller
{
  controllerCopy = controller;
  v4 = +[CNContactStyle currentStyle];
  backgroundColor = [v4 backgroundColor];
  if (backgroundColor)
  {
    v6 = +[CNContactStyle currentStyle];
    backgroundColor2 = [v6 backgroundColor];
    clearColor = [MEMORY[0x1E69DC888] clearColor];
    v9 = [backgroundColor2 isEqual:clearColor];

    v10 = v9 ^ 1;
  }

  else
  {
    v10 = 1;
  }

  view = [(CNContactContentContainerViewController *)self view];
  superview = [view superview];
  backgroundColor3 = [superview backgroundColor];
  clearColor2 = [MEMORY[0x1E69DC888] clearColor];
  v15 = [backgroundColor3 isEqual:clearColor2];

  if ((v10 & 1) == 0 && (v15 & 1) == 0)
  {
    view2 = [(CNContactContentContainerViewController *)self view];
    superview2 = [view2 superview];
    backgroundColor4 = [superview2 backgroundColor];
    view3 = [controllerCopy view];
    [view3 setBackgroundColor:backgroundColor4];
  }
}

- (void)performConfirmedCancel
{
  editContactViewController = [(CNContactContentContainerViewController *)self editContactViewController];
  [editContactViewController performConfirmedCancel];
}

- (int64_t)adaptivePresentationStyleForPresentationController:(id)controller
{
  currentDevice = [MEMORY[0x1E69DC938] currentDevice];
  userInterfaceIdiom = [currentDevice userInterfaceIdiom];

  if ((userInterfaceIdiom & 0xFFFFFFFFFFFFFFFBLL) == 1 && CNUIIsDDActionsService())
  {
    return -1;
  }

  else
  {
    return -2;
  }
}

- (CGRect)centeredSourceRect:(CGRect)rect inContactView:(id)view
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  viewCopy = view;
  if (([(CNContactContentContainerViewController *)self isEditing]& 1) == 0)
  {
    [viewCopy layoutMargins];
    v11 = v10;
    [viewCopy layoutMargins];
    width = width - (v11 + v12);
    [viewCopy layoutMargins];
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

- (void)sender:(id)sender presentViewController:(id)controller
{
  senderCopy = sender;
  controllerCopy = controller;
  v8 = +[CNContactStyle currentStyle];
  [controllerCopy setModalTransitionStyle:{objc_msgSend(v8, "modalTransitionStyle")}];

  objc_opt_class();
  v29 = senderCopy;
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
  contactView = [v11 contactView];

  popoverPresentationController = [controllerCopy popoverPresentationController];
  [popoverPresentationController setSourceView:v10];

  [v10 bounds];
  [(CNContactContentContainerViewController *)self centeredSourceRect:contactView inContactView:?];
  v15 = v14;
  v17 = v16;
  v19 = v18;
  v21 = v20;
  popoverPresentationController2 = [controllerCopy popoverPresentationController];
  [popoverPresentationController2 setSourceRect:{v15, v17, v19, v21}];

  popoverPresentationController3 = [controllerCopy popoverPresentationController];
  [popoverPresentationController3 setPermittedArrowDirections:15];

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    presentationController = [controllerCopy presentationController];
    [presentationController setDelegate:self];
  }

  if (!self->_disablingRotation)
  {
    currentDevice = [MEMORY[0x1E69DC938] currentDevice];
    if ([currentDevice userInterfaceIdiom])
    {
LABEL_14:

      goto LABEL_15;
    }

    mainScreen = [MEMORY[0x1E69DCEB0] mainScreen];
    [mainScreen _referenceBounds];
    if (CGRectGetHeight(v31) <= 667.0 || [controllerCopy modalPresentationStyle])
    {

      goto LABEL_14;
    }

    supportedInterfaceOrientations = [controllerCopy supportedInterfaceOrientations];
    supportedInterfaceOrientations2 = [(CNContactContentContainerViewController *)self supportedInterfaceOrientations];

    if (supportedInterfaceOrientations != supportedInterfaceOrientations2)
    {
      [(CNContactContentContainerViewController *)self _beginDisablingInterfaceAutorotation];
      self->_disablingRotation = 1;
    }
  }

LABEL_15:
  [(CNContactContentContainerViewController *)self setBackgroundColorIfNeededForPresentedViewController:controllerCopy];
  [(CNContactContentContainerViewController *)self presentViewController:controllerCopy animated:1 completion:0];
}

- (void)didChangeToEditMode:(BOOL)mode
{
  modeCopy = mode;
  if ([(CNContactContentContainerViewController *)self isEditing]!= mode)
  {

    [(CNContactContentContainerViewController *)self setEditing:modeCopy animated:0];
  }
}

- (void)didUpdateContactViewConfiguration
{
  if (![(CNContactContentContainerViewController *)self isSupressingViewConfigurationUpdates])
  {
    displayContactViewController = [(CNContactContentContainerViewController *)self displayContactViewController];
    [displayContactViewController contactViewConfigurationDidUpdate];

    if (self->_editContactViewController)
    {
      editContactViewController = [(CNContactContentContainerViewController *)self editContactViewController];
      [editContactViewController contactViewConfigurationDidUpdate];
    }
  }
}

- (void)setupWithOptions:(id)options readyBlock:(id)block
{
  v101 = *MEMORY[0x1E69E9840];
  optionsCopy = options;
  blockCopy = block;
  v8 = CNUILogContactCard();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    LODWORD(buf) = 138412290;
    *(&buf + 4) = optionsCopy;
    _os_log_debug_impl(&dword_199A75000, v8, OS_LOG_TYPE_DEBUG, "setupWithOptions: %@", &buf, 0xCu);
  }

  v9 = [optionsCopy objectForKeyedSubscript:@"Properties"];
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

    managedConfiguration = [(CNContactContentContainerViewController *)self managedConfiguration];

    if (managedConfiguration)
    {
      v12 = objc_alloc(MEMORY[0x1E695CE18]);
      environment = [(CNContactContentContainerViewController *)self environment];
      cnEnvironment = [environment cnEnvironment];
      managedConfiguration2 = [(CNContactContentContainerViewController *)self managedConfiguration];
      v16 = [v12 initWithEnvironment:cnEnvironment options:v10 managedConfiguration:managedConfiguration2];
      [(CNContactContentContainerViewController *)self setContactStore:v16];
    }

    else
    {
      environment = [MEMORY[0x1E695CE18] storeWithOptions:v10];
      [(CNContactContentContainerViewController *)self setContactStore:environment];
    }
  }

  v17 = [v9 objectForKeyedSubscript:{@"runningPPT", blockCopy}];
  -[CNContactContentContainerViewController setRunningPPT:](self, "setRunningPPT:", [v17 BOOLValue]);

  v18 = [v9 objectForKeyedSubscript:@"showingMeContact"];
  -[CNContactContentContainerViewController setShowingMeContact:](self, "setShowingMeContact:", [v18 BOOLValue]);

  v19 = [optionsCopy objectForKeyedSubscript:@"ignoresParentalRestrictions"];
  bOOLValue = [v19 BOOLValue];
  contactViewConfiguration = [(CNContactContentContainerViewController *)self contactViewConfiguration];
  [contactViewConfiguration setIgnoresParentalRestrictions:bOOLValue];

  v55 = optionsCopy;
  v22 = [optionsCopy objectForKeyedSubscript:@"prohibitedPropertyKeys"];
  contactViewConfiguration2 = [(CNContactContentContainerViewController *)self contactViewConfiguration];
  [contactViewConfiguration2 setProhibitedPropertyKeys:v22];

  v24 = [v9 objectForKeyedSubscript:@"warningMessage"];
  contactViewConfiguration3 = [(CNContactContentContainerViewController *)self contactViewConfiguration];
  [contactViewConfiguration3 setWarningMessage:v24];

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
          contactViewConfiguration4 = [(CNContactContentContainerViewController *)self contactViewConfiguration];
          [contactViewConfiguration4 setValue:v33 forKey:v32];
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

  contactViewConfiguration5 = [(CNContactContentContainerViewController *)self contactViewConfiguration];
  if ([contactViewConfiguration5 alwaysEditing])
  {

    v43 = v54;
  }

  else
  {
    v44 = [v9 objectForKeyedSubscript:@"isEditing"];
    bOOLValue2 = [v44 BOOLValue];

    v43 = v54;
    if (!bOOLValue2)
    {
      goto LABEL_34;
    }
  }

  [(CNContactContentContainerViewController *)self createEditingViewControllerIfNeeded];
  [(CNContactContentContainerViewController *)self setEditing:1 animated:0];
LABEL_34:
  v46 = [CNContactEditAuthorizationManager alloc];
  contact = [(CNContactContentContainerViewController *)self contact];
  contactStore = [(CNContactContentContainerViewController *)self contactStore];
  v49 = [(CNContactEditAuthorizationManager *)v46 initWithContact:contact contactStore:contactStore];
  [(CNContactContentContainerViewController *)self setEditAuthorizationManager:v49];

  editAuthorizationManager = [(CNContactContentContainerViewController *)self editAuthorizationManager];
  displayContactViewController = [(CNContactContentContainerViewController *)self displayContactViewController];
  [displayContactViewController setEditAuthorizationManager:editAuthorizationManager];

  [(CNContactContentContainerViewController *)self setIsSupressingViewConfigurationUpdates:0];
  displayContactViewController2 = [(CNContactContentContainerViewController *)self displayContactViewController];
  [displayContactViewController2 contactViewConfigurationDidUpdate];

  if (self->_editContactViewController)
  {
    editContactViewController = [(CNContactContentContainerViewController *)self editContactViewController];
    [editContactViewController contactViewConfigurationDidUpdate];
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

- (void)viewWillDisappear:(BOOL)disappear
{
  v4.receiver = self;
  v4.super_class = CNContactContentContainerViewController;
  [(CNContactContentContainerViewController *)&v4 viewWillDisappear:disappear];
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

- (void)viewDidAppear:(BOOL)appear
{
  v4.receiver = self;
  v4.super_class = CNContactContentContainerViewController;
  [(CNContactContentContainerViewController *)&v4 viewDidAppear:appear];
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

- (void)viewWillAppear:(BOOL)appear
{
  v3.receiver = self;
  v3.super_class = CNContactContentContainerViewController;
  [(CNContactContentContainerViewController *)&v3 viewWillAppear:appear];
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
  activatedConstraints = [(CNContactContentContainerViewController *)self activatedConstraints];
  [v3 deactivateConstraints:activatedConstraints];

  array = [MEMORY[0x1E695DF70] array];
  displayContactViewController = [(CNContactContentContainerViewController *)self displayContactViewController];
  view = [displayContactViewController view];
  superview = [view superview];
  view2 = [(CNContactContentContainerViewController *)self view];

  if (superview == view2)
  {
    view3 = [(CNContactContentContainerViewController *)self view];
    leadingAnchor = [view3 leadingAnchor];
    displayContactViewController2 = [(CNContactContentContainerViewController *)self displayContactViewController];
    view4 = [displayContactViewController2 view];
    leadingAnchor2 = [view4 leadingAnchor];
    v14 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
    [array addObject:v14];

    view5 = [(CNContactContentContainerViewController *)self view];
    trailingAnchor = [view5 trailingAnchor];
    displayContactViewController3 = [(CNContactContentContainerViewController *)self displayContactViewController];
    view6 = [displayContactViewController3 view];
    trailingAnchor2 = [view6 trailingAnchor];
    v20 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
    [array addObject:v20];

    view7 = [(CNContactContentContainerViewController *)self view];
    topAnchor = [view7 topAnchor];
    displayContactViewController4 = [(CNContactContentContainerViewController *)self displayContactViewController];
    view8 = [displayContactViewController4 view];
    topAnchor2 = [view8 topAnchor];
    v26 = [topAnchor constraintEqualToAnchor:topAnchor2];
    [array addObject:v26];

    view9 = [(CNContactContentContainerViewController *)self view];
    bottomAnchor = [view9 bottomAnchor];
    displayContactViewController5 = [(CNContactContentContainerViewController *)self displayContactViewController];
    view10 = [displayContactViewController5 view];
    bottomAnchor2 = [view10 bottomAnchor];
    v32 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
    [array addObject:v32];
  }

  if (self->_editContactViewController)
  {
    editContactViewController = [(CNContactContentContainerViewController *)self editContactViewController];
    view11 = [editContactViewController view];
    superview2 = [view11 superview];
    view12 = [(CNContactContentContainerViewController *)self view];

    if (superview2 == view12)
    {
      view13 = [(CNContactContentContainerViewController *)self view];
      leadingAnchor3 = [view13 leadingAnchor];
      editContactViewController2 = [(CNContactContentContainerViewController *)self editContactViewController];
      view14 = [editContactViewController2 view];
      leadingAnchor4 = [view14 leadingAnchor];
      v42 = [leadingAnchor3 constraintEqualToAnchor:leadingAnchor4];
      [array addObject:v42];

      view15 = [(CNContactContentContainerViewController *)self view];
      trailingAnchor3 = [view15 trailingAnchor];
      editContactViewController3 = [(CNContactContentContainerViewController *)self editContactViewController];
      view16 = [editContactViewController3 view];
      trailingAnchor4 = [view16 trailingAnchor];
      v48 = [trailingAnchor3 constraintEqualToAnchor:trailingAnchor4];
      [array addObject:v48];

      view17 = [(CNContactContentContainerViewController *)self view];
      topAnchor3 = [view17 topAnchor];
      editContactViewController4 = [(CNContactContentContainerViewController *)self editContactViewController];
      view18 = [editContactViewController4 view];
      topAnchor4 = [view18 topAnchor];
      v54 = [topAnchor3 constraintEqualToAnchor:topAnchor4];
      [array addObject:v54];

      view19 = [(CNContactContentContainerViewController *)self view];
      bottomAnchor3 = [view19 bottomAnchor];
      editContactViewController5 = [(CNContactContentContainerViewController *)self editContactViewController];
      view20 = [editContactViewController5 view];
      bottomAnchor4 = [view20 bottomAnchor];
      v60 = [bottomAnchor3 constraintEqualToAnchor:bottomAnchor4];
      [array addObject:v60];
    }
  }

  [(CNContactContentContainerViewController *)self setActivatedConstraints:array];
  [MEMORY[0x1E696ACD8] activateConstraints:array];
}

- (void)viewDidLoad
{
  v16.receiver = self;
  v16.super_class = CNContactContentContainerViewController;
  [(CNContactContentContainerViewController *)&v16 viewDidLoad];
  v3 = *MEMORY[0x1E6996568];
  initialPrompt = [(CNContactContentContainerViewController *)self initialPrompt];
  LOBYTE(v3) = (*(v3 + 16))(v3, initialPrompt);

  if ((v3 & 1) == 0)
  {
    initialPrompt2 = [(CNContactContentContainerViewController *)self initialPrompt];
    navigationItem = [(CNContactContentContainerViewController *)self navigationItem];
    [navigationItem setPrompt:initialPrompt2];
  }

  if ([(CNContactContentContainerViewController *)self shouldDrawNavigationBar])
  {
    navigationItem2 = [(CNContactContentContainerViewController *)self navigationItem];
    [navigationItem2 _setBackgroundHidden:0];
  }

  [(CNContactContentContainerViewController *)self reloadDataIfNeeded];
  [(CNContactContentContainerViewController *)self createDisplayViewControllerIfNeeded];
  displayContactViewController = [(CNContactContentContainerViewController *)self displayContactViewController];
  [(CNContactContentContainerViewController *)self addChildViewController:displayContactViewController];

  view = [(CNContactContentContainerViewController *)self view];
  displayContactViewController2 = [(CNContactContentContainerViewController *)self displayContactViewController];
  view2 = [displayContactViewController2 view];
  [view addSubview:view2];

  displayContactViewController3 = [(CNContactContentContainerViewController *)self displayContactViewController];
  view3 = [displayContactViewController3 view];
  [view3 setTranslatesAutoresizingMaskIntoConstraints:0];

  displayContactViewController4 = [(CNContactContentContainerViewController *)self displayContactViewController];
  [displayContactViewController4 didMoveToParentViewController:self];

  view4 = [(CNContactContentContainerViewController *)self view];
  [view4 setNeedsUpdateConstraints];
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
  saveChanges = [v3 saveChanges];

  return saveChanges;
}

- (void)performAuthorizedSetEditing:(BOOL)editing animated:(BOOL)animated
{
  animatedCopy = animated;
  editingCopy = editing;
  v7 = CNUILogContactCard();
  v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);
  if (editingCopy)
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
      editContactViewController = [(CNContactContentContainerViewController *)self editContactViewController];
      contact = [(CNContactContentContainerViewController *)self contact];
      [editContactViewController setContact:contact];

      editContactViewController2 = [(CNContactContentContainerViewController *)self editContactViewController];
      [editContactViewController2 contactViewConfigurationDidUpdate];
    }

    displayContactViewController = [(CNContactContentContainerViewController *)self displayContactViewController];
    view = [displayContactViewController view];

    editContactViewController3 = [(CNContactContentContainerViewController *)self editContactViewController];
    view2 = [editContactViewController3 view];

    editContactViewController4 = [(CNContactContentContainerViewController *)self editContactViewController];
  }

  else
  {
    if (v8)
    {
      *buf = 0;
      _os_log_impl(&dword_199A75000, v7, OS_LOG_TYPE_DEFAULT, "[CNContactContentViewController] Leaving Edit Mode", buf, 2u);
    }

    editContactViewController5 = [(CNContactContentContainerViewController *)self editContactViewController];
    view = [editContactViewController5 view];

    displayContactViewController2 = [(CNContactContentContainerViewController *)self displayContactViewController];
    view2 = [displayContactViewController2 view];

    editContactViewController4 = [(CNContactContentContainerViewController *)self displayContactViewController];
  }

  v19 = editContactViewController4;
  superview = [view2 superview];
  view3 = [(CNContactContentContainerViewController *)self view];

  if (superview != view3)
  {
    editContactViewController6 = [(CNContactContentContainerViewController *)self editContactViewController];
    view4 = [editContactViewController6 view];

    if (view2 == view4)
    {
      editContactViewController7 = [(CNContactContentContainerViewController *)self editContactViewController];
      [(CNContactContentContainerViewController *)self addChildViewController:editContactViewController7];

      view5 = [(CNContactContentContainerViewController *)self view];
      editContactViewController8 = [(CNContactContentContainerViewController *)self editContactViewController];
      view6 = [editContactViewController8 view];
      [view5 addSubview:view6];

      editContactViewController9 = [(CNContactContentContainerViewController *)self editContactViewController];
      view7 = [editContactViewController9 view];
      [view7 setTranslatesAutoresizingMaskIntoConstraints:0];

      editContactViewController10 = [(CNContactContentContainerViewController *)self editContactViewController];
      [editContactViewController10 didMoveToParentViewController:self];
    }

    else
    {
      editContactViewController10 = [(CNContactContentContainerViewController *)self view];
      [editContactViewController10 addSubview:view2];
    }

    view8 = [(CNContactContentContainerViewController *)self view];
    [view8 setNeedsUpdateConstraints];
  }

  effectiveNavigationItem = [v19 effectiveNavigationItem];
  doneButtonItem = [v19 doneButtonItem];
  [(CNContactContentContainerViewController *)self contactNavigationItemProvider:v19 didUpdateNavigationItem:effectiveNavigationItem doneButtonItem:doneButtonItem];

  v34 = MEMORY[0x1E69DD250];
  view9 = [(CNContactContentContainerViewController *)self view];
  if (animatedCopy)
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
  v37 = view;
  v43 = v37;
  v38 = view2;
  v44 = v38;
  selfCopy = self;
  [v34 transitionWithView:view9 duration:5242880 options:v42 animations:0 completion:v36];

  contactDelegate = [(CNContactContentContainerViewController *)self contactDelegate];
  v40 = objc_opt_respondsToSelector();

  if (v40)
  {
    contactDelegate2 = [(CNContactContentContainerViewController *)self contactDelegate];
    [contactDelegate2 contactViewController:self didChangeToEditMode:editingCopy];
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

  editAuthorizationManager = [(CNContactContentContainerViewController *)self editAuthorizationManager];
  shouldPromptForPasscodeAuthorization = [editAuthorizationManager shouldPromptForPasscodeAuthorization];

  return shouldPromptForPasscodeAuthorization;
}

- (void)setEditing:(BOOL)editing animated:(BOOL)animated
{
  animatedCopy = animated;
  editingCopy = editing;
  if ([(CNContactContentContainerViewController *)self isEditing]!= editing)
  {
    if ([(CNContactContentContainerViewController *)self editingChangeRequiresAuthorization])
    {
      objc_initWeak(&location, self);
      editAuthorizationManager = [(CNContactContentContainerViewController *)self editAuthorizationManager];
      navigationItem = [(CNContactContentContainerViewController *)self navigationItem];
      rightBarButtonItem = [navigationItem rightBarButtonItem];
      v11[0] = MEMORY[0x1E69E9820];
      v11[1] = 3221225472;
      v11[2] = __63__CNContactContentContainerViewController_setEditing_animated___block_invoke;
      v11[3] = &unk_1E74E1C88;
      objc_copyWeak(&v12, &location);
      v13 = editingCopy;
      v14 = animatedCopy;
      [editAuthorizationManager authorizeForViewController:self sender:rightBarButtonItem animated:animatedCopy completionBlock:v11];

      objc_destroyWeak(&v12);
      objc_destroyWeak(&location);
    }

    else
    {
      v10.receiver = self;
      v10.super_class = CNContactContentContainerViewController;
      [(CNContactContentContainerViewController *)&v10 setEditing:editingCopy animated:animatedCopy];
      [(CNContactContentContainerViewController *)self performAuthorizedSetEditing:editingCopy animated:animatedCopy];
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

- (void)finishEditing:(id)editing
{
  if ([(CNContactContentContainerViewController *)self isEditing])
  {
    editContactViewController = [(CNContactContentContainerViewController *)self editContactViewController];
    [editContactViewController finishEditing];
  }
}

- (void)toggleEditing:(id)editing
{
  editingCopy = editing;
  if ([(CNContactContentContainerViewController *)self isEditing])
  {
    [(CNContactContentContainerViewController *)self finishEditing:editingCopy];
  }

  else
  {
    [(CNContactContentContainerViewController *)self setEditing:[(CNContactContentContainerViewController *)self isEditing]^ 1];
  }
}

- (void)editCancel:(id)cancel
{
  if ([(CNContactContentContainerViewController *)self isEditing])
  {
    editContactViewController = [(CNContactContentContainerViewController *)self editContactViewController];
    [editContactViewController editCancel];
  }
}

- (BOOL)saveWasAuthorized
{
  editAuthorizationManager = [(CNContactContentContainerViewController *)self editAuthorizationManager];
  saveWasAuthorized = [editAuthorizationManager saveWasAuthorized];

  return saveWasAuthorized;
}

- (void)presentConfirmCancelAlertController
{
  delegate = [(CNContactContentContainerViewController *)self delegate];
  [delegate presentCancelConfirmationAlert];
}

- (void)updateWindowTitleForAppearing:(BOOL)appearing
{
  if (appearing)
  {
    title = [(CNContactContentContainerViewController *)self title];
    if (title)
    {
      title2 = title;
    }

    else
    {
      navigationController = [(CNContactContentContainerViewController *)self navigationController];
      title2 = [navigationController title];

      if (!title2)
      {
        contactFormatter = [(CNContactContentContainerViewController *)self contactFormatter];
        contact = [(CNContactContentContainerViewController *)self contact];
        title2 = [contactFormatter stringFromContact:contact];
      }
    }

    view = [(CNContactContentContainerViewController *)self view];
    window = [view window];
    windowScene = [window windowScene];
    [windowScene setTitle:title2];
  }

  else
  {
    title2 = [(CNContactContentContainerViewController *)self view];
    view = [title2 window];
    window = [view windowScene];
    [window setTitle:0];
  }
}

- (id)navigationItemController
{
  selfCopy = self;
  v3 = selfCopy;
  if (selfCopy)
  {
    v4 = selfCopy;
    while (1)
    {
      parentViewController = [(CNContactContentContainerViewController *)v4 parentViewController];
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();

      if (isKindOfClass)
      {
        break;
      }

      parentViewController2 = [(CNContactContentContainerViewController *)v4 parentViewController];

      v4 = parentViewController2;
      if (!parentViewController2)
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

- (id)contentScrollViewForEdge:(unint64_t)edge
{
  if (edge == 4)
  {
    if (([(CNContactContentContainerViewController *)self isEditing]& 1) != 0)
    {
      displayContactViewController = [(CNContactContentContainerViewController *)self displayContactViewController];
      contactView = [displayContactViewController contactView];
    }

    else
    {
      contactView = [(CNContactContentEditViewController *)self->_editContactViewController contactView];
    }
  }

  else
  {
    contactView = 0;
  }

  return contactView;
}

- (void)reloadCardGroup:(id)group forTableView:(id)view
{
  viewCopy = view;
  groupCopy = group;
  displayContactViewController = [(CNContactContentContainerViewController *)self displayContactViewController];
  [displayContactViewController reloadCardGroup:groupCopy forTableView:viewCopy];
}

- (void)removeActionWithTarget:(id)target selector:(SEL)selector inGroup:(id)group
{
  groupCopy = group;
  targetCopy = target;
  displayContactViewController = [(CNContactContentContainerViewController *)self displayContactViewController];
  [displayContactViewController removeActionWithTarget:targetCopy selector:selector inGroup:groupCopy];
}

- (void)addActionWithTitle:(id)title target:(id)target selector:(SEL)selector inGroup:(id)group destructive:(BOOL)destructive
{
  destructiveCopy = destructive;
  groupCopy = group;
  targetCopy = target;
  titleCopy = title;
  displayContactViewController = [(CNContactContentContainerViewController *)self displayContactViewController];
  [displayContactViewController addActionWithTitle:titleCopy target:targetCopy selector:selector inGroup:groupCopy destructive:destructiveCopy];
}

- (void)addActionWithTitle:(id)title target:(id)target selector:(SEL)selector menuProvider:(id)provider inGroup:(id)group destructive:(BOOL)destructive
{
  destructiveCopy = destructive;
  groupCopy = group;
  providerCopy = provider;
  titleCopy = title;
  displayContactViewController = [(CNContactContentContainerViewController *)self displayContactViewController];
  [displayContactViewController addActionWithTitle:titleCopy menuProvider:providerCopy inGroup:groupCopy destructive:destructiveCopy];
}

- (void)reloadDataPreservingChanges:(BOOL)changes
{
  changesCopy = changes;
  if ([(CNContactContentContainerViewController *)self isViewLoaded]&& (![(CNContactContentContainerViewController *)self isOutOfProcess]|| [(CNContactContentContainerViewController *)self outOfProcessSetupComplete]))
  {
    self->_needsReload = 0;
    displayContactViewController = [(CNContactContentContainerViewController *)self displayContactViewController];
    [displayContactViewController reloadDataPreservingChanges:changesCopy];

    if (self->_editContactViewController)
    {
      editContactViewController = [(CNContactContentContainerViewController *)self editContactViewController];
      [editContactViewController reloadDataPreservingChanges:changesCopy];
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
  contact = [(CNContactContentContainerViewController *)self contact];
  parentContainer = [(CNContactContentViewController *)self parentContainer];
  if (contact)
  {
    unifiedMeContactMonitor = [MEMORY[0x1E6996BA8] unifiedMeContactMonitor];
    contact2 = [(CNContactContentContainerViewController *)self contact];
    v7 = [unifiedMeContactMonitor isMeContact:contact2];

    v8 = CNUILogContactCard();
    v9 = os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);
    if (v7)
    {
      if (v9)
      {
        identifier = [contact identifier];
        *buf = 138543362;
        v28 = identifier;
        _os_log_impl(&dword_199A75000, v8, OS_LOG_TYPE_DEFAULT, "Refetching contact, is it the me card, identifier %{public}@", buf, 0xCu);
      }

      contactStore = [(CNContactContentContainerViewController *)self contactStore];
      identifier3 = [objc_opt_class() descriptorForRequiredKeysForContact:contact];
      v36[0] = identifier3;
      v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v36 count:1];
      v26 = 0;
      v14 = [contactStore _crossPlatformUnifiedMeContactWithKeysToFetch:v13 error:&v26];
      v15 = v26;
    }

    else
    {
      if (v9)
      {
        identifier2 = [contact identifier];
        *buf = 138543362;
        v28 = identifier2;
        _os_log_impl(&dword_199A75000, v8, OS_LOG_TYPE_DEFAULT, "Refetching contact, is it not the me card, identifier %{public}@", buf, 0xCu);
      }

      contactStore = [(CNContactContentContainerViewController *)self contactStore];
      identifier3 = [contact identifier];
      v13 = [objc_opt_class() descriptorForRequiredKeysForContact:contact];
      v35 = v13;
      v17 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v35 count:1];
      v25 = 0;
      v14 = [contactStore unifiedContactWithIdentifier:identifier3 keysToFetch:v17 error:&v25];
      v15 = v25;
    }

    contactViewCache = [(CNContactContentContainerViewController *)self contactViewCache];
    v19 = [contactViewCache containerForContact:v14];

    if (v15 || !v14)
    {
      v22 = CNUILogContactCard();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
      {
        identifier4 = [contact identifier];
        contactStore2 = [(CNContactContentContainerViewController *)self contactStore];
        *buf = 138413058;
        v28 = identifier4;
        v29 = 2112;
        v30 = v15;
        v31 = 2112;
        v32 = contactStore2;
        v33 = 2112;
        v34 = contact;
        _os_log_error_impl(&dword_199A75000, v22, OS_LOG_TYPE_ERROR, "Error refetching contact with identifier %@, %@, store %@, full contact %@", buf, 0x2Au);
      }
    }

    else
    {
      v20 = [v14 isEqual:contact];
      v21 = [v19 isEqual:parentContainer];
      if (!v20 || (v21 & 1) == 0)
      {
        [(CNContactContentContainerViewController *)self setContact:v14];
      }
    }
  }
}

- (void)favoritesDidChangeWithNotification:(id)notification
{
  if (([(CNContactContentContainerViewController *)self isEditing]& 1) == 0)
  {

    [(CNContactContentContainerViewController *)self reloadDataPreservingChanges:0];
  }
}

- (void)setContact:(id)contact
{
  v35[1] = *MEMORY[0x1E69E9840];
  contactCopy = contact;
  v5 = contactCopy;
  self->_needsRefetch = 0;
  if (self->_contact == contactCopy)
  {
    goto LABEL_15;
  }

  identifier = [(CNContact *)contactCopy identifier];
  identifier2 = [(CNContact *)self->_contact identifier];
  v8 = [identifier isEqualToString:identifier2];

  if ((v8 & 1) == 0)
  {
    [(CNContactContentContainerViewController *)self setDidSetNewContact:1];
  }

  environment = [(CNContactContentContainerViewController *)self environment];
  defaultSchedulerProvider = [environment defaultSchedulerProvider];

  [defaultSchedulerProvider suspendBackgroundScheduler];
  afterCACommitScheduler = [defaultSchedulerProvider afterCACommitScheduler];
  v30[0] = MEMORY[0x1E69E9820];
  v30[1] = 3221225472;
  v30[2] = __54__CNContactContentContainerViewController_setContact___block_invoke;
  v30[3] = &unk_1E74E6A88;
  v12 = defaultSchedulerProvider;
  v31 = v12;
  [afterCACommitScheduler performBlock:v30];

  contactViewCache = [(CNContactContentContainerViewController *)self contactViewCache];
  [contactViewCache resetCache];

  LODWORD(afterCACommitScheduler) = [(CNContactContentContainerViewController *)self isOutOfProcess];
  descriptorForRequiredKeys = [objc_opt_class() descriptorForRequiredKeys];
  v15 = descriptorForRequiredKeys;
  if (afterCACommitScheduler)
  {
    v35[0] = descriptorForRequiredKeys;
    v16 = [MEMORY[0x1E695DEC8] arrayWithObjects:v35 count:1];
    v17 = [(CNContactContentContainerViewController *)self _updateContact:v5 withMissingKeysFromRequiredKeys:v16];

    v5 = v17;
  }

  else
  {
    v34 = descriptorForRequiredKeys;
    v16 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v34 count:1];
    [v5 assertKeysAreAvailable:v16];
  }

  displayContactViewController = [(CNContactContentContainerViewController *)self displayContactViewController];
  [displayContactViewController setContact:v5];

  [(CNContactContentEditViewController *)self->_editContactViewController setContact:v5];
  editAuthorizationManager = [(CNContactContentContainerViewController *)self editAuthorizationManager];
  [editAuthorizationManager updateWithContact:v5];

  parentContainer = [(CNContactContentViewController *)self parentContainer];
  if (!parentContainer)
  {
    goto LABEL_10;
  }

  contactViewCache2 = parentContainer;
  parentContainer2 = [(CNContactContentViewController *)self parentContainer];
  if (!parentContainer2)
  {
LABEL_11:

    goto LABEL_12;
  }

  v23 = parentContainer2;
  hasBeenPersisted = [v5 hasBeenPersisted];

  if (hasBeenPersisted)
  {
LABEL_10:
    contactViewCache2 = [(CNContactContentContainerViewController *)self contactViewCache];
    v25 = [contactViewCache2 containerForContact:v5];
    [(CNContactContentViewController *)self setParentContainer:v25];

    goto LABEL_11;
  }

LABEL_12:
  objc_storeStrong(&self->_contact, v5);
  v26 = CNUILogContactCard();
  if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
  {
    identifier3 = [v5 identifier];
    *buf = 138543362;
    v33 = identifier3;
    _os_log_impl(&dword_199A75000, v26, OS_LOG_TYPE_DEFAULT, "[CNContactContentViewController] setting contact with identifier %{public}@", buf, 0xCu);
  }

  v28 = +[CNUIDataCollector sharedCollector];
  contact = [(CNContactContentContainerViewController *)self contact];
  [v28 logContactShown:contact];

  [(CNContactContentContainerViewController *)self prepareContactDidAppearForPPT];
LABEL_15:
}

- (id)cardFooterGroup
{
  displayContactViewController = [(CNContactContentContainerViewController *)self displayContactViewController];
  cardFooterGroup = [displayContactViewController cardFooterGroup];

  return cardFooterGroup;
}

- (id)cardBottomGroup
{
  displayContactViewController = [(CNContactContentContainerViewController *)self displayContactViewController];
  cardBottomGroup = [displayContactViewController cardBottomGroup];

  return cardBottomGroup;
}

- (id)cardTopGroup
{
  displayContactViewController = [(CNContactContentContainerViewController *)self displayContactViewController];
  cardTopGroup = [displayContactViewController cardTopGroup];

  return cardTopGroup;
}

- (id)personHeaderViewController
{
  displayContactViewController = [(CNContactContentContainerViewController *)self displayContactViewController];
  personHeaderViewController = [displayContactViewController personHeaderViewController];

  return personHeaderViewController;
}

- (void)setPersonHeaderViewController:(id)controller
{
  controllerCopy = controller;
  displayContactViewController = [(CNContactContentContainerViewController *)self displayContactViewController];
  [displayContactViewController setPersonHeaderViewController:controllerCopy];
}

- (id)personHeaderView
{
  personHeaderViewController = [(CNContactContentContainerViewController *)self personHeaderViewController];
  view = [personHeaderViewController view];
  subviews = [view subviews];
  firstObject = [subviews firstObject];

  return firstObject;
}

- (void)setPersonHeaderView:(id)view
{
  firstValue = view;
  if (firstValue)
  {
    v4 = objc_alloc_init(MEMORY[0x1E69DD258]);
    view = [v4 view];
    [view addSubview:firstValue];

    array = [MEMORY[0x1E695DF70] array];
    v7 = _NSDictionaryOfVariableBindings(&cfstr_Personheadervi.isa, firstValue, 0);
    [firstValue setTranslatesAutoresizingMaskIntoConstraints:0];
    v8 = [MEMORY[0x1E696ACD8] constraintsWithVisualFormat:@"H:|[personHeaderView]|" options:0 metrics:0 views:v7];
    [array addObjectsFromArray:v8];

    v9 = [MEMORY[0x1E696ACD8] constraintsWithVisualFormat:@"V:|[personHeaderView]|" options:0 metrics:0 views:v7];
    [array addObjectsFromArray:v9];

    [MEMORY[0x1E696ACD8] activateConstraints:array];
    [(CNContactContentContainerViewController *)self setPersonHeaderViewController:v4];
  }

  else
  {
    [(CNContactContentContainerViewController *)self setPersonHeaderViewController:0];
  }
}

- (id)primaryProperty
{
  contactViewConfiguration = [(CNContactContentContainerViewController *)self contactViewConfiguration];
  primaryProperty = [contactViewConfiguration primaryProperty];

  return primaryProperty;
}

- (void)setPrimaryProperty:(id)property
{
  propertyCopy = property;
  contactViewConfiguration = [(CNContactContentContainerViewController *)self contactViewConfiguration];
  [contactViewConfiguration setPrimaryProperty:propertyCopy];

  [(CNContactContentContainerViewController *)self didUpdateContactViewConfiguration];
}

- (id)verifiedInfoMessage
{
  contactViewConfiguration = [(CNContactContentContainerViewController *)self contactViewConfiguration];
  verifiedInfoMessage = [contactViewConfiguration verifiedInfoMessage];

  return verifiedInfoMessage;
}

- (void)setVerifiedInfoMessage:(id)message
{
  messageCopy = message;
  contactViewConfiguration = [(CNContactContentContainerViewController *)self contactViewConfiguration];
  [contactViewConfiguration setVerifiedInfoMessage:messageCopy];

  [(CNContactContentContainerViewController *)self didUpdateContactViewConfiguration];
}

- (id)importantMessage
{
  contactViewConfiguration = [(CNContactContentContainerViewController *)self contactViewConfiguration];
  importantMessage = [contactViewConfiguration importantMessage];

  return importantMessage;
}

- (void)setImportantMessage:(id)message
{
  messageCopy = message;
  contactViewConfiguration = [(CNContactContentContainerViewController *)self contactViewConfiguration];
  [contactViewConfiguration setImportantMessage:messageCopy];

  [(CNContactContentContainerViewController *)self didUpdateContactViewConfiguration];
}

- (id)warningMessage
{
  contactViewConfiguration = [(CNContactContentContainerViewController *)self contactViewConfiguration];
  warningMessage = [contactViewConfiguration warningMessage];

  return warningMessage;
}

- (void)setWarningMessage:(id)message
{
  messageCopy = message;
  contactViewConfiguration = [(CNContactContentContainerViewController *)self contactViewConfiguration];
  [contactViewConfiguration setWarningMessage:messageCopy];

  [(CNContactContentContainerViewController *)self didUpdateContactViewConfiguration];
}

- (id)message
{
  contactViewConfiguration = [(CNContactContentContainerViewController *)self contactViewConfiguration];
  message = [contactViewConfiguration message];

  return message;
}

- (void)setMessage:(id)message
{
  messageCopy = message;
  contactViewConfiguration = [(CNContactContentContainerViewController *)self contactViewConfiguration];
  [contactViewConfiguration setMessage:messageCopy];

  [(CNContactContentContainerViewController *)self didUpdateContactViewConfiguration];
}

- (id)alternateName
{
  contactViewConfiguration = [(CNContactContentContainerViewController *)self contactViewConfiguration];
  alternateName = [contactViewConfiguration alternateName];

  return alternateName;
}

- (void)setAlternateName:(id)name
{
  nameCopy = name;
  contactViewConfiguration = [(CNContactContentContainerViewController *)self contactViewConfiguration];
  [contactViewConfiguration setAlternateName:nameCopy];

  [(CNContactContentContainerViewController *)self didUpdateContactViewConfiguration];
}

- (BOOL)showContactBlockingFirst
{
  contactViewConfiguration = [(CNContactContentContainerViewController *)self contactViewConfiguration];
  showContactBlockingFirst = [contactViewConfiguration showContactBlockingFirst];

  return showContactBlockingFirst;
}

- (void)setShowContactBlockingFirst:(BOOL)first
{
  firstCopy = first;
  contactViewConfiguration = [(CNContactContentContainerViewController *)self contactViewConfiguration];
  [contactViewConfiguration setShowContactBlockingFirst:firstCopy];

  [(CNContactContentContainerViewController *)self didUpdateContactViewConfiguration];
}

- (BOOL)isMailVIP
{
  contactViewConfiguration = [(CNContactContentContainerViewController *)self contactViewConfiguration];
  isMailVIP = [contactViewConfiguration isMailVIP];

  return isMailVIP;
}

- (void)setIsMailVIP:(BOOL)p
{
  pCopy = p;
  contactViewConfiguration = [(CNContactContentContainerViewController *)self contactViewConfiguration];
  [contactViewConfiguration setIsMailVIP:pCopy];

  [(CNContactContentContainerViewController *)self didUpdateContactViewConfiguration];
}

- (BOOL)hideCardActions
{
  contactViewConfiguration = [(CNContactContentContainerViewController *)self contactViewConfiguration];
  hideCardActions = [contactViewConfiguration hideCardActions];

  return hideCardActions;
}

- (void)setHideCardActions:(BOOL)actions
{
  actionsCopy = actions;
  contactViewConfiguration = [(CNContactContentContainerViewController *)self contactViewConfiguration];
  [contactViewConfiguration setHideCardActions:actionsCopy];

  [(CNContactContentContainerViewController *)self didUpdateContactViewConfiguration];
}

- (BOOL)editingProposedInformation
{
  contactViewConfiguration = [(CNContactContentContainerViewController *)self contactViewConfiguration];
  editingProposedInformation = [contactViewConfiguration editingProposedInformation];

  return editingProposedInformation;
}

- (void)setEditingProposedInformation:(BOOL)information
{
  informationCopy = information;
  contactViewConfiguration = [(CNContactContentContainerViewController *)self contactViewConfiguration];
  [contactViewConfiguration setEditingProposedInformation:informationCopy];

  [(CNContactContentContainerViewController *)self didUpdateContactViewConfiguration];
}

- (BOOL)ignoresParentalRestrictions
{
  contactViewConfiguration = [(CNContactContentContainerViewController *)self contactViewConfiguration];
  ignoresParentalRestrictions = [contactViewConfiguration ignoresParentalRestrictions];

  return ignoresParentalRestrictions;
}

- (void)setIgnoresParentalRestrictions:(BOOL)restrictions
{
  restrictionsCopy = restrictions;
  contactViewConfiguration = [(CNContactContentContainerViewController *)self contactViewConfiguration];
  [contactViewConfiguration setIgnoresParentalRestrictions:restrictionsCopy];

  [(CNContactContentContainerViewController *)self didUpdateContactViewConfiguration];
}

- (BOOL)allowsEditPhoto
{
  contactViewConfiguration = [(CNContactContentContainerViewController *)self contactViewConfiguration];
  allowsEditPhoto = [contactViewConfiguration allowsEditPhoto];

  return allowsEditPhoto;
}

- (void)setAllowsEditPhoto:(BOOL)photo
{
  photoCopy = photo;
  contactViewConfiguration = [(CNContactContentContainerViewController *)self contactViewConfiguration];
  [contactViewConfiguration setAllowsEditPhoto:photoCopy];

  [(CNContactContentContainerViewController *)self didUpdateContactViewConfiguration];
}

- (BOOL)allowsDisplayModePickerActions
{
  contactViewConfiguration = [(CNContactContentContainerViewController *)self contactViewConfiguration];
  allowsDisplayModePickerActions = [contactViewConfiguration allowsDisplayModePickerActions];

  return allowsDisplayModePickerActions;
}

- (void)setAllowsDisplayModePickerActions:(BOOL)actions
{
  actionsCopy = actions;
  contactViewConfiguration = [(CNContactContentContainerViewController *)self contactViewConfiguration];
  [contactViewConfiguration setAllowsDisplayModePickerActions:actionsCopy];

  [(CNContactContentContainerViewController *)self didUpdateContactViewConfiguration];
}

- (BOOL)allowsActionsModel
{
  contactViewConfiguration = [(CNContactContentContainerViewController *)self contactViewConfiguration];
  allowsActionsModel = [contactViewConfiguration allowsActionsModel];

  return allowsActionsModel;
}

- (void)setAllowsActionsModel:(BOOL)model
{
  modelCopy = model;
  contactViewConfiguration = [(CNContactContentContainerViewController *)self contactViewConfiguration];
  [contactViewConfiguration setAllowsActionsModel:modelCopy];

  [(CNContactContentContainerViewController *)self didUpdateContactViewConfiguration];
}

- (BOOL)allowsDeletion
{
  contactViewConfiguration = [(CNContactContentContainerViewController *)self contactViewConfiguration];
  allowsDeletion = [contactViewConfiguration allowsDeletion];

  return allowsDeletion;
}

- (void)setAllowsDeletion:(BOOL)deletion
{
  deletionCopy = deletion;
  contactViewConfiguration = [(CNContactContentContainerViewController *)self contactViewConfiguration];
  [contactViewConfiguration setAllowsDeletion:deletionCopy];

  [(CNContactContentContainerViewController *)self didUpdateContactViewConfiguration];
}

- (BOOL)allowsSettingLinkedContactsAsPreferred
{
  contactViewConfiguration = [(CNContactContentContainerViewController *)self contactViewConfiguration];
  allowsSettingLinkedContactsAsPreferred = [contactViewConfiguration allowsSettingLinkedContactsAsPreferred];

  return allowsSettingLinkedContactsAsPreferred;
}

- (void)setAllowsSettingLinkedContactsAsPreferred:(BOOL)preferred
{
  preferredCopy = preferred;
  contactViewConfiguration = [(CNContactContentContainerViewController *)self contactViewConfiguration];
  [contactViewConfiguration setAllowsSettingLinkedContactsAsPreferred:preferredCopy];

  [(CNContactContentContainerViewController *)self didUpdateContactViewConfiguration];
}

- (BOOL)shouldShowLinkedContacts
{
  contactViewConfiguration = [(CNContactContentContainerViewController *)self contactViewConfiguration];
  shouldShowLinkedContacts = [contactViewConfiguration shouldShowLinkedContacts];

  return shouldShowLinkedContacts;
}

- (void)setShouldShowLinkedContacts:(BOOL)contacts
{
  contactsCopy = contacts;
  contactViewConfiguration = [(CNContactContentContainerViewController *)self contactViewConfiguration];
  [contactViewConfiguration setShouldShowLinkedContacts:contactsCopy];

  [(CNContactContentContainerViewController *)self didUpdateContactViewConfiguration];
}

- (BOOL)allowsAddingToAddressBook
{
  contactViewConfiguration = [(CNContactContentContainerViewController *)self contactViewConfiguration];
  allowsAddingToAddressBook = [contactViewConfiguration allowsAddingToAddressBook];

  return allowsAddingToAddressBook;
}

- (void)setAllowsAddingToAddressBook:(BOOL)book
{
  bookCopy = book;
  contactViewConfiguration = [(CNContactContentContainerViewController *)self contactViewConfiguration];
  [contactViewConfiguration setAllowsAddingToAddressBook:bookCopy];

  [(CNContactContentContainerViewController *)self didUpdateContactViewConfiguration];
}

- (BOOL)allowsContactBlockingAndReporting
{
  contactViewConfiguration = [(CNContactContentContainerViewController *)self contactViewConfiguration];
  allowsContactBlockingAndReporting = [contactViewConfiguration allowsContactBlockingAndReporting];

  return allowsContactBlockingAndReporting;
}

- (void)setAllowsContactBlockingAndReporting:(BOOL)reporting
{
  reportingCopy = reporting;
  contactViewConfiguration = [(CNContactContentContainerViewController *)self contactViewConfiguration];
  [contactViewConfiguration setAllowsContactBlockingAndReporting:reportingCopy];

  [(CNContactContentContainerViewController *)self didUpdateContactViewConfiguration];
}

- (BOOL)allowsContactBlocking
{
  contactViewConfiguration = [(CNContactContentContainerViewController *)self contactViewConfiguration];
  allowsContactBlocking = [contactViewConfiguration allowsContactBlocking];

  return allowsContactBlocking;
}

- (void)setAllowsContactBlocking:(BOOL)blocking
{
  blockingCopy = blocking;
  contactViewConfiguration = [(CNContactContentContainerViewController *)self contactViewConfiguration];
  [contactViewConfiguration setAllowsContactBlocking:blockingCopy];

  [(CNContactContentContainerViewController *)self didUpdateContactViewConfiguration];
}

- (BOOL)allowsSendMessage
{
  contactViewConfiguration = [(CNContactContentContainerViewController *)self contactViewConfiguration];
  allowsSendMessage = [contactViewConfiguration allowsSendMessage];

  return allowsSendMessage;
}

- (void)setAllowsSendMessage:(BOOL)message
{
  messageCopy = message;
  contactViewConfiguration = [(CNContactContentContainerViewController *)self contactViewConfiguration];
  [contactViewConfiguration setAllowsSendMessage:messageCopy];

  [(CNContactContentContainerViewController *)self didUpdateContactViewConfiguration];
}

- (BOOL)allowsAddToFavorites
{
  contactViewConfiguration = [(CNContactContentContainerViewController *)self contactViewConfiguration];
  allowsAddToFavorites = [contactViewConfiguration allowsAddToFavorites];

  return allowsAddToFavorites;
}

- (void)setAllowsAddToFavorites:(BOOL)favorites
{
  favoritesCopy = favorites;
  contactViewConfiguration = [(CNContactContentContainerViewController *)self contactViewConfiguration];
  [contactViewConfiguration setAllowsAddToFavorites:favoritesCopy];

  [(CNContactContentContainerViewController *)self didUpdateContactViewConfiguration];
}

- (BOOL)allowsSharing
{
  contactViewConfiguration = [(CNContactContentContainerViewController *)self contactViewConfiguration];
  allowsSharing = [contactViewConfiguration allowsSharing];

  return allowsSharing;
}

- (void)setAllowsSharing:(BOOL)sharing
{
  sharingCopy = sharing;
  contactViewConfiguration = [(CNContactContentContainerViewController *)self contactViewConfiguration];
  [contactViewConfiguration setAllowsSharing:sharingCopy];

  [(CNContactContentContainerViewController *)self didUpdateContactViewConfiguration];
}

- (BOOL)allowsConferencing
{
  contactViewConfiguration = [(CNContactContentContainerViewController *)self contactViewConfiguration];
  allowsConferencing = [contactViewConfiguration allowsConferencing];

  return allowsConferencing;
}

- (void)setAllowsConferencing:(BOOL)conferencing
{
  conferencingCopy = conferencing;
  contactViewConfiguration = [(CNContactContentContainerViewController *)self contactViewConfiguration];
  [contactViewConfiguration setAllowsConferencing:conferencingCopy];

  [(CNContactContentContainerViewController *)self didUpdateContactViewConfiguration];
}

- (BOOL)allowsCardActions
{
  contactViewConfiguration = [(CNContactContentContainerViewController *)self contactViewConfiguration];
  allowsCardActions = [contactViewConfiguration allowsCardActions];

  return allowsCardActions;
}

- (void)setAllowsCardActions:(BOOL)actions
{
  actionsCopy = actions;
  contactViewConfiguration = [(CNContactContentContainerViewController *)self contactViewConfiguration];
  [contactViewConfiguration setAllowsCardActions:actionsCopy];

  [(CNContactContentContainerViewController *)self didUpdateContactViewConfiguration];
}

- (BOOL)allowsPropertyActions
{
  contactViewConfiguration = [(CNContactContentContainerViewController *)self contactViewConfiguration];
  allowsPropertyActions = [contactViewConfiguration allowsPropertyActions];

  return allowsPropertyActions;
}

- (void)setAllowsPropertyActions:(BOOL)actions
{
  actionsCopy = actions;
  contactViewConfiguration = [(CNContactContentContainerViewController *)self contactViewConfiguration];
  [contactViewConfiguration setAllowsPropertyActions:actionsCopy];

  [(CNContactContentContainerViewController *)self didUpdateContactViewConfiguration];
}

- (BOOL)allowsActions
{
  contactViewConfiguration = [(CNContactContentContainerViewController *)self contactViewConfiguration];
  allowsActions = [contactViewConfiguration allowsActions];

  return allowsActions;
}

- (void)setAllowsActions:(BOOL)actions
{
  actionsCopy = actions;
  contactViewConfiguration = [(CNContactContentContainerViewController *)self contactViewConfiguration];
  [contactViewConfiguration setAllowsActions:actionsCopy];

  [(CNContactContentContainerViewController *)self didUpdateContactViewConfiguration];
}

- (BOOL)alwaysEditing
{
  contactViewConfiguration = [(CNContactContentContainerViewController *)self contactViewConfiguration];
  alwaysEditing = [contactViewConfiguration alwaysEditing];

  return alwaysEditing;
}

- (void)setAlwaysEditing:(BOOL)editing
{
  editingCopy = editing;
  contactViewConfiguration = [(CNContactContentContainerViewController *)self contactViewConfiguration];
  [contactViewConfiguration setAlwaysEditing:editingCopy];

  [(CNContactContentContainerViewController *)self didUpdateContactViewConfiguration];
}

- (BOOL)allowsEditing
{
  contactViewConfiguration = [(CNContactContentContainerViewController *)self contactViewConfiguration];
  allowsEditing = [contactViewConfiguration allowsEditing];

  return allowsEditing;
}

- (void)setAllowsEditing:(BOOL)editing
{
  editingCopy = editing;
  contactViewConfiguration = [(CNContactContentContainerViewController *)self contactViewConfiguration];
  [contactViewConfiguration setAllowsEditing:editingCopy];

  [(CNContactContentContainerViewController *)self didUpdateContactViewConfiguration];
}

- (id)displayedProperties
{
  contactViewConfiguration = [(CNContactContentContainerViewController *)self contactViewConfiguration];
  displayedProperties = [contactViewConfiguration displayedProperties];

  return displayedProperties;
}

- (void)setDisplayedProperties:(id)properties
{
  propertiesCopy = properties;
  contactViewConfiguration = [(CNContactContentContainerViewController *)self contactViewConfiguration];
  displayedProperties = [contactViewConfiguration displayedProperties];

  v7 = propertiesCopy;
  if (displayedProperties != propertiesCopy)
  {
    if ([propertiesCopy count])
    {
      v8 = [propertiesCopy objectAtIndexedSubscript:0];
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();

      if ((isKindOfClass & 1) == 0)
      {
        currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
        [currentHandler handleFailureInMethod:a2 object:self file:@"CNContactContentContainerViewController.m" lineNumber:352 description:{@"Properties should be strings, are you still using old AB properties?"}];
      }
    }

    if (propertiesCopy)
    {
      v11 = [propertiesCopy copy];
    }

    else
    {
      v11 = +[CNContactView allCardProperties];
    }

    v12 = v11;
    contactViewConfiguration2 = [(CNContactContentContainerViewController *)self contactViewConfiguration];
    [contactViewConfiguration2 setDisplayedProperties:v12];

    [(CNContactContentContainerViewController *)self didUpdateContactViewConfiguration];
    v7 = propertiesCopy;
  }
}

- (void)applyChangesToNavigationItemFromItem:(id)item
{
  itemCopy = item;
  navigationItemController = [(CNContactContentContainerViewController *)self navigationItemController];
  navigationItem = [navigationItemController navigationItem];

  leftBarButtonItems = [itemCopy leftBarButtonItems];
  [navigationItem setLeftBarButtonItems:leftBarButtonItems];

  rightBarButtonItems = [itemCopy rightBarButtonItems];

  [navigationItem setRightBarButtonItems:rightBarButtonItems];
}

- (void)contactNavigationItemProvider:(id)provider didUpdateNavigationItem:(id)item doneButtonItem:(id)buttonItem
{
  providerCopy = provider;
  itemCopy = item;
  buttonItemCopy = buttonItem;
  if (([(CNContactContentContainerViewController *)self isEditing]& 1) != 0)
  {
    v10 = 0;
  }

  else
  {
    displayContactViewController = [(CNContactContentContainerViewController *)self displayContactViewController];
    v10 = displayContactViewController == providerCopy;
  }

  if ([(CNContactContentContainerViewController *)self isEditing])
  {
    editContactViewController = [(CNContactContentContainerViewController *)self editContactViewController];
    v13 = editContactViewController == providerCopy;
  }

  else
  {
    v13 = 0;
  }

  if (v10 || v13)
  {
    [(CNContactContentContainerViewController *)self applyChangesToNavigationItemFromItem:itemCopy];
    delegate = [(CNContactContentContainerViewController *)self delegate];
    v15 = objc_opt_respondsToSelector();

    if (v15)
    {
      delegate2 = [(CNContactContentContainerViewController *)self delegate];
      isEditing = [(CNContactContentContainerViewController *)self isEditing];
      isEnabled = [buttonItemCopy isEnabled];
      title = [buttonItemCopy title];
      [delegate2 updateEditing:isEditing doneButtonEnabled:isEnabled doneButtonText:title];
    }
  }
}

- (id)displayHeaderView
{
  displayContactViewController = [(CNContactContentContainerViewController *)self displayContactViewController];
  contactHeaderView = [displayContactViewController contactHeaderView];

  return contactHeaderView;
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
  contactHeaderView = [v3 contactHeaderView];

  return contactHeaderView;
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
  contactView = [v3 contactView];

  return contactView;
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

- (void)setTitle:(id)title
{
  titleCopy = title;
  if (titleCopy || ([(CNContactContentContainerViewController *)self title], (v3 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    title = [(CNContactContentContainerViewController *)self title];
    v7 = [titleCopy isEqual:title];

    if (!titleCopy)
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
      [(CNContactContentContainerViewController *)&v8 setTitle:titleCopy];
      [(CNContactContentContainerViewController *)self didChangeToShowTitle:titleCopy != 0];
    }
  }

LABEL_6:
}

- (void)setContactStore:(id)store
{
  objc_storeStrong(&self->_contactStore, store);
  storeCopy = store;
  contactViewConfiguration = [(CNContactContentContainerViewController *)self contactViewConfiguration];
  [contactViewConfiguration setContactStore:storeCopy];

  [(CNContactContentContainerViewController *)self didUpdateContactViewConfiguration];
}

- (void)createEditingViewControllerIfNeeded
{
  if (!self->_editContactViewController)
  {
    v3 = [CNContactContentEditViewController alloc];
    contact = [(CNContactContentContainerViewController *)self contact];
    contactViewConfiguration = [(CNContactContentContainerViewController *)self contactViewConfiguration];
    v6 = [(CNContactContentEditViewController *)v3 initWithContact:contact contactViewConfiguration:contactViewConfiguration];
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
    contact = [(CNContactContentContainerViewController *)self contact];
    contactViewConfiguration = [(CNContactContentContainerViewController *)self contactViewConfiguration];
    v6 = [(CNContactContentDisplayViewController *)v3 initWithContact:contact contactViewConfiguration:contactViewConfiguration];
    displayContactViewController = self->_displayContactViewController;
    self->_displayContactViewController = v6;

    [(CNContactContentDisplayViewController *)self->_displayContactViewController setDelegate:self];
    v8 = self->_displayContactViewController;

    [(CNContactContentDisplayViewController *)v8 setNavigationItemDelegate:self];
  }
}

- (CNContactContentContainerViewController)initWithContact:(id)contact
{
  contactCopy = contact;
  v5 = [(CNContactContentContainerViewController *)self initWithNibName:0 bundle:0];
  v6 = v5;
  if (v5)
  {
    [(CNContactContentContainerViewController *)v5 setContact:contactCopy];
    v7 = v6;
  }

  return v6;
}

- (CNContactContentContainerViewController)initWithEnvironment:(id)environment
{
  environmentCopy = environment;
  v20.receiver = self;
  v20.super_class = CNContactContentContainerViewController;
  v6 = [(CNContactContentViewController *)&v20 initWithEnvironment:environmentCopy];
  objc_storeStrong(&v6->_environment, environment);
  objc_storeWeak(&v6->_presentingDelegate, v6);
  v7 = +[CNContactView allCardProperties];
  displayedProperties = v6->_displayedProperties;
  v6->_displayedProperties = v7;

  v9 = [[CNContactContentViewControllerConfiguration alloc] initForOutOfProcess:[(CNContactContentContainerViewController *)v6 isOutOfProcess]];
  contactViewConfiguration = v6->_contactViewConfiguration;
  v6->_contactViewConfiguration = v9;

  mEMORY[0x1E695CD80] = [MEMORY[0x1E695CD80] sharedFullNameFormatter];
  contactFormatter = v6->_contactFormatter;
  v6->_contactFormatter = mEMORY[0x1E695CD80];

  [(CNContactContentContainerViewController *)v6 setNeedsReloadLazy];
  [(CNContactContentContainerViewController *)v6 setRestorationIdentifier:@"ContactCard"];
  [(CNContactContentContainerViewController *)v6 setRestorationClass:objc_opt_class()];
  navigationItem = [(CNContactContentContainerViewController *)v6 navigationItem];
  [navigationItem _setBackgroundHidden:1];

  navigationItem2 = [(CNContactContentContainerViewController *)v6 navigationItem];
  [navigationItem2 setLargeTitleDisplayMode:2];

  currentEnvironment = [MEMORY[0x1E69966E8] currentEnvironment];
  featureFlags = [currentEnvironment featureFlags];
  v6->_supportsDrafts = [featureFlags isFeatureEnabled:31];

  if ([(CNContactContentContainerViewController *)v6 supportsDrafts])
  {
    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter addObserver:v6 selector:sel_applicationLeftForeground_ name:*MEMORY[0x1E69DDBC8] object:0];

    defaultCenter2 = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter2 addObserver:v6 selector:sel_applicationLeftForeground_ name:*MEMORY[0x1E69DDBD0] object:0];
  }

  return v6;
}

- (CNContactContentContainerViewController)initWithNibName:(id)name bundle:(id)bundle
{
  v5 = [CNUIContactsEnvironment currentEnvironment:name];
  v6 = [(CNContactContentContainerViewController *)self initWithEnvironment:v5];

  return v6;
}

+ (id)viewControllerWithRestorationIdentifierPath:(id)path coder:(id)coder
{
  v26[1] = *MEMORY[0x1E69E9840];
  coderCopy = coder;
  v6 = objc_alloc_init(MEMORY[0x1E695CE18]);
  v7 = MEMORY[0x1E695CD58];
  v8 = +[CNContactContentViewController descriptorForRequiredKeys];
  v26[0] = v8;
  v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v26 count:1];
  v10 = [v7 contactWithStateRestorationCoder:coderCopy store:v6 keys:v9];

  if (v10)
  {
    v20 = v6;
    v11 = [[CNContactContentViewController alloc] initWithContact:v10];
    v21 = 0u;
    v22 = 0u;
    v23 = 0u;
    v24 = 0u;
    bOOLStateRestorationProperties = [self BOOLStateRestorationProperties];
    v13 = [bOOLStateRestorationProperties countByEnumeratingWithState:&v21 objects:v25 count:16];
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
            objc_enumerationMutation(bOOLStateRestorationProperties);
          }

          v17 = *(*(&v21 + 1) + 8 * i);
          v18 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:v17];
          if (v18)
          {
            [(CNContactContentViewController *)v11 setValue:v18 forKey:v17];
          }
        }

        v14 = [bOOLStateRestorationProperties countByEnumeratingWithState:&v21 objects:v25 count:16];
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

+ (id)descriptorForRequiredKeysWithDescription:(id)description
{
  descriptionCopy = description;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __84__CNContactContentContainerViewController_descriptorForRequiredKeysWithDescription___block_invoke;
  block[3] = &unk_1E74E6A88;
  v10 = descriptionCopy;
  v4 = descriptorForRequiredKeysWithDescription__cn_once_token_6;
  v5 = descriptionCopy;
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
  v4 = [self descriptorForRequiredKeysWithDescription:v3];

  return v4;
}

+ (id)descriptorForRequiredKeysForContact:(id)contact
{
  v12[2] = *MEMORY[0x1E69E9840];
  contactCopy = contact;
  descriptorForRequiredKeys = [self descriptorForRequiredKeys];
  availableKeyDescriptor = [contactCopy availableKeyDescriptor];

  v12[0] = descriptorForRequiredKeys;
  v12[1] = availableKeyDescriptor;
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v12 count:2];
  v8 = MEMORY[0x1E695CD58];
  v9 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"+[CNContactContentContainerViewController descriptorForRequiredKeysForContact:]"];
  v10 = [v8 descriptorWithKeyDescriptors:v7 description:v9];

  return v10;
}

@end