@interface CNContactViewController
+ (CNContactViewController)viewControllerForContact:(CNContact *)contact;
+ (CNContactViewController)viewControllerForNewContact:(CNContact *)contact;
+ (CNContactViewController)viewControllerForUnknownContact:(CNContact *)contact;
+ (id)viewControllerForEditedDraftContact:(id)contact;
+ (id)viewControllerForNewDraftContact:(id)contact;
+ (id)viewControllerForUpdatingContact:(id)contact withPropertiesFromContact:(id)fromContact;
+ (id)viewControllerForUpdatingContact:(id)contact withPublicAccountIdentity:(id)identity;
- (BOOL)_isDelayingPresentation;
- (BOOL)_shouldBeOutOfProcess;
- (BOOL)displayNavigationButtonsShouldUsePlatterStyle;
- (BOOL)isModalInPresentation;
- (BOOL)presentationControllerShouldDismiss:(id)dismiss;
- (BOOL)shouldPerformDefaultActionForContact:(id)contact propertyKey:(id)key propertyIdentifier:(id)identifier;
- (CNContactContentViewController)contentViewController;
- (CNContactViewController)initWithMode:(int64_t)mode;
- (CNContactViewControllerCustomHeaderViewDelegate)contactHeaderViewDelegate;
- (CNContactViewControllerPPTDelegate)pptDelegate;
- (_UIRemoteViewController)_containedRemoteViewController;
- (id)_contactPresentedViewController;
- (id)_primaryPropertyStringForContact:(id)contact;
- (id)confirmCancelAlertControllerAnchoredAtButtonItem:(id)item;
- (id)currentNavigationController;
- (id)delegate;
- (id)navigationItemController;
- (id)platterBackBarButtonItem;
- (void)_endDelayingPresentation;
- (void)_prepareViewController;
- (void)_setViewController:(id)controller;
- (void)_setupViewController;
- (void)configureNavigationItem:(id)item;
- (void)dealloc;
- (void)didCompleteWithContact:(id)contact;
- (void)didDeleteContact:(id)contact;
- (void)didExecuteClearRecentsDataAction;
- (void)didExecuteDeleteFromDowntimeWhitelistAction;
- (void)didMoveToParentViewController:(id)controller;
- (void)didSetAction:(int64_t)action allowed:(BOOL)allowed;
- (void)didTapBlockAndReportForContact:(id)contact;
- (void)editCancel:(id)cancel;
- (void)enableCancelKeyboardShortcut;
- (void)enableEditKeyboardShortcut;
- (void)enableSaveKeyboardShortcut;
- (void)highlightPropertyWithKey:(id)key identifier:(id)identifier important:(BOOL)important;
- (void)isPresentingEditingController:(BOOL)controller;
- (void)isPresentingFullscreen:(BOOL)fullscreen;
- (void)loadView;
- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context;
- (void)popToPrevious:(id)previous;
- (void)presentCancelConfirmationAlert;
- (void)presentConfirmCancelAlertControllerAnchoredAtButtonItem:(id)item;
- (void)presentationControllerDidAttemptToDismiss:(id)dismiss;
- (void)setAllowsActions:(BOOL)allowsActions;
- (void)setAllowsEditing:(BOOL)allowsEditing;
- (void)setContact:(id)contact additionalContact:(id)additionalContact mode:(int64_t)mode;
- (void)setDoneButtonText:(id)text enabled:(BOOL)enabled;
- (void)setEditing:(BOOL)editing animated:(BOOL)animated;
- (void)setForcesTransparentBackground:(BOOL)background;
- (void)setInitialPrompt:(id)prompt;
- (void)setRequiresSetup:(BOOL)setup;
- (void)setShouldDrawNavigationBar:(BOOL)bar;
- (void)setShouldShowSharedProfileBanner:(BOOL)banner;
- (void)setShouldUseModernNavigationBarHiding:(BOOL)hiding;
- (void)setUsesBrandedCallHeaderFormat:(BOOL)format;
- (void)setupNavBarAppearance:(id)appearance asOpaqueWhenScrolled:(BOOL)scrolled;
- (void)toggleEditing;
- (void)touchesBegan:(id)began withEvent:(id)event;
- (void)updateBackButtonIfNeeded;
- (void)updateEditNavigationItemsAnimated:(BOOL)animated doneButtonEnabled:(BOOL)enabled doneButtonText:(id)text;
- (void)updateEditing:(BOOL)editing doneButtonEnabled:(BOOL)enabled doneButtonText:(id)text;
- (void)viewDidAppear;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidDisappear:(BOOL)disappear;
- (void)viewServiceDidTerminate;
- (void)viewWillAppear:(BOOL)appear;
- (void)viewWillLayoutSubviews;
@end

@implementation CNContactViewController

- (CNContactViewControllerCustomHeaderViewDelegate)contactHeaderViewDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_contactHeaderViewDelegate);

  return WeakRetained;
}

- (CNContactViewControllerPPTDelegate)pptDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_pptDelegate);

  return WeakRetained;
}

- (id)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)didSetAction:(int64_t)action allowed:(BOOL)allowed
{
  if (allowed)
  {
    v5 = [(CNContactViewController *)self actions]| action;
  }

  else
  {
    v5 = [(CNContactViewController *)self actions]& ~action;
  }

  [(CNContactViewController *)self setActions:v5];
}

- (void)didTapBlockAndReportForContact:(id)contact
{
  contactCopy = contact;
  privateDelegate = [(CNContactViewController *)self privateDelegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    privateDelegate2 = [(CNContactViewController *)self privateDelegate];
    [privateDelegate2 contactViewController:self didExecuteBlockAndReportContactAction:contactCopy];

    [(CNContactViewController *)self dismissViewControllerAnimated:1 completion:0];
  }
}

- (void)viewServiceDidTerminate
{
  [(CNContactViewController *)self didCompleteWithContact:0];

  [(CNContactViewController *)self dismissViewControllerAnimated:1 completion:0];
}

- (void)didExecuteDeleteFromDowntimeWhitelistAction
{
  privateDelegate = [(CNContactViewController *)self privateDelegate];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    privateDelegate2 = [(CNContactViewController *)self privateDelegate];
    [privateDelegate2 contactViewControllerDidExecuteDeleteFromDowntimeWhitelistAction:self];
  }
}

- (void)didExecuteClearRecentsDataAction
{
  privateDelegate = [(CNContactViewController *)self privateDelegate];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    privateDelegate2 = [(CNContactViewController *)self privateDelegate];
    [privateDelegate2 contactViewControllerDidExecuteClearRecentsDataAction:self];
  }
}

- (void)viewDidAppear
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"CNContactViewController.m" lineNumber:1154 description:{@"This should not be called, we pass the pptDelegate directly to the host view controller"}];
}

- (void)isPresentingEditingController:(BOOL)controller
{
  controllerCopy = controller;
  privateDelegate = [(CNContactViewController *)self privateDelegate];
  if (controllerCopy)
  {
    v6 = objc_opt_respondsToSelector();

    if ((v6 & 1) == 0)
    {
      return;
    }

    privateDelegate2 = [(CNContactViewController *)self privateDelegate];
    [privateDelegate2 contactViewControllerForUnknownContactDidBeginAddingToContacts:self];
  }

  else
  {
    v7 = objc_opt_respondsToSelector();

    if ((v7 & 1) == 0)
    {
      return;
    }

    privateDelegate2 = [(CNContactViewController *)self privateDelegate];
    [privateDelegate2 contactViewControllerForUnknownContactDidEndAddingToContacts:self];
  }
}

- (void)isPresentingFullscreen:(BOOL)fullscreen
{
  fullscreenCopy = fullscreen;
  navigationController = [(CNContactViewController *)self navigationController];
  [navigationController setNavigationBarHidden:fullscreenCopy animated:0];
}

- (void)didDeleteContact:(id)contact
{
  contactCopy = contact;
  privateDelegate = [(CNContactViewController *)self privateDelegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    if ([(CNContactViewController *)self editMode]!= 2)
    {
      [(CNContactViewController *)self setEditing:0];
    }

    privateDelegate2 = [(CNContactViewController *)self privateDelegate];
    [privateDelegate2 contactViewController:self didDeleteContact:contactCopy];
  }
}

- (void)didCompleteWithContact:(id)contact
{
  contactCopy = contact;
  delegate = [(CNContactViewController *)self delegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    delegate2 = [(CNContactViewController *)self delegate];
    [delegate2 contactViewController:self didCompleteWithContact:contactCopy];
  }
}

- (void)updateEditing:(BOOL)editing doneButtonEnabled:(BOOL)enabled doneButtonText:(id)text
{
  enabledCopy = enabled;
  editingCopy = editing;
  textCopy = text;
  if (![(CNContactViewController *)self shouldUseModernNavigationBarHiding]&& !CNUIIsMessages() && [(CNContactViewController *)self isEditing]!= editingCopy)
  {
    navigationItem = [(CNContactViewController *)self navigationItem];
    [(CNContactViewController *)self setupNavBarAppearance:navigationItem asOpaqueWhenScrolled:editingCopy];
  }

  if ([(CNContactViewController *)self _shouldBeOutOfProcess])
  {
    if ([(CNContactViewController *)self isEditing]!= editingCopy)
    {
      [(CNContactViewController *)self setEditing:editingCopy animated:1];
      privateDelegate = [(CNContactViewController *)self privateDelegate];
      v10 = objc_opt_respondsToSelector();

      if (v10)
      {
        privateDelegate2 = [(CNContactViewController *)self privateDelegate];
        [privateDelegate2 contactViewController:self didChangeToEditMode:editingCopy];
      }
    }

    [(CNContactViewController *)self updateEditNavigationItemsAnimated:1 doneButtonEnabled:enabledCopy doneButtonText:textCopy];
  }
}

- (BOOL)shouldPerformDefaultActionForContact:(id)contact propertyKey:(id)key propertyIdentifier:(id)identifier
{
  contactCopy = contact;
  keyCopy = key;
  identifierCopy = identifier;
  delegate = [(CNContactViewController *)self delegate];
  v12 = objc_opt_respondsToSelector();

  if (v12)
  {
    v13 = [MEMORY[0x1E695CE08] contactPropertyWithContact:contactCopy propertyKey:keyCopy identifier:identifierCopy];
    delegate2 = [(CNContactViewController *)self delegate];
    v15 = [delegate2 contactViewController:self shouldPerformDefaultActionForContactProperty:v13];
  }

  else
  {
    v15 = 1;
  }

  return v15;
}

- (void)enableEditKeyboardShortcut
{
  v3 = [MEMORY[0x1E69DCBA0] keyCommandWithInput:@"l" modifierFlags:0x100000 action:sel_toggleEditing_];
  [(CNContactViewController *)self addKeyCommand:v3];
}

- (void)enableCancelKeyboardShortcut
{
  v3 = [MEMORY[0x1E69DCBA0] keyCommandWithInput:*MEMORY[0x1E69DDEA0] modifierFlags:0 action:sel_editCancel_];
  [(CNContactViewController *)self addKeyCommand:v3];
}

- (void)enableSaveKeyboardShortcut
{
  v5 = [MEMORY[0x1E69DCBA0] keyCommandWithInput:@"s" modifierFlags:0x100000 action:sel_toggleEditing_];
  v3 = CNContactsUIBundle();
  v4 = [v3 localizedStringForKey:@"SAVE_CONTACT_KEYBOARD_DISCOVERY" value:&stru_1F0CE7398 table:@"Localized"];
  [v5 setDiscoverabilityTitle:v4];

  [(CNContactViewController *)self addKeyCommand:v5];
}

- (void)touchesBegan:(id)began withEvent:(id)event
{
  v8.receiver = self;
  v8.super_class = CNContactViewController;
  [(CNContactViewController *)&v8 touchesBegan:began withEvent:event];
  splitViewController = [(CNContactViewController *)self splitViewController];

  if (splitViewController)
  {
    splitViewController2 = [(CNContactViewController *)self splitViewController];
    view = [splitViewController2 view];
    [view endEditing:1];
  }
}

- (id)currentNavigationController
{
  navigationItemController = [(CNContactViewController *)self navigationItemController];
  navigationController = [navigationItemController navigationController];

  navigationBar = [navigationController navigationBar];
  backItem = [navigationBar backItem];
  if (backItem)
  {

LABEL_3:
    v3NavigationController2 = navigationController;
    goto LABEL_6;
  }

  v3NavigationController = [navigationController navigationController];
  navigationBar2 = [v3NavigationController navigationBar];
  backItem2 = [navigationBar2 backItem];

  if (!backItem2)
  {
    goto LABEL_3;
  }

  v3NavigationController2 = [navigationController navigationController];
LABEL_6:
  v10 = v3NavigationController2;

  return v10;
}

- (void)popToPrevious:(id)previous
{
  currentNavigationController = [(CNContactViewController *)self currentNavigationController];
  v3 = [currentNavigationController popViewControllerAnimated:1];
}

- (id)platterBackBarButtonItem
{
  traitCollection = [(CNContactViewController *)self traitCollection];
  v4 = [traitCollection layoutDirection] == 1;

  v5 = [[CNPlatterBackBarButtonItem alloc] initWithTarget:self action:sel_popToPrevious_ isRTL:v4];

  return v5;
}

- (BOOL)displayNavigationButtonsShouldUsePlatterStyle
{
  currentEnvironment = [MEMORY[0x1E69966E8] currentEnvironment];
  featureFlags = [currentEnvironment featureFlags];
  v5 = [featureFlags isFeatureEnabled:29];

  if (v5)
  {
    LOBYTE(v6) = 0;
  }

  else
  {
    currentEnvironment2 = [MEMORY[0x1E69966E8] currentEnvironment];
    featureFlags2 = [currentEnvironment2 featureFlags];
    if ([featureFlags2 isFeatureEnabled:27])
    {
      v6 = ![(CNContactViewController *)self shouldDrawNavigationBar];
    }

    else
    {
      LOBYTE(v6) = 0;
    }
  }

  return v6;
}

- (void)configureNavigationItem:(id)item
{
  itemCopy = item;
  [itemCopy setLargeTitleDisplayMode:2];
  [(CNContactViewController *)self setupNavBarAppearance:itemCopy asOpaqueWhenScrolled:0];

  if ([(CNContactViewController *)self displayNavigationButtonsShouldUsePlatterStyle])
  {
    if (([(CNContactViewController *)self isEditing]& 1) != 0)
    {
      [MEMORY[0x1E69DC888] tintColor];
    }

    else
    {
      +[CNUIColorRepository contactCardStaticHeaderDefaultTintColor];
    }
    v8 = ;
    navigationItemController = [(CNContactViewController *)self navigationItemController];
    navigationItem = [navigationItemController navigationItem];
    navigationBar = [navigationItem navigationBar];
    [navigationBar setTintColor:v8];
  }
}

- (void)didMoveToParentViewController:(id)controller
{
  controllerCopy = controller;
  v19.receiver = self;
  v19.super_class = CNContactViewController;
  [(CNContactViewController *)&v19 didMoveToParentViewController:controllerCopy];
  if (controllerCopy)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      observedNavigationItem = [(CNContactViewController *)self observedNavigationItem];
      navigationItemController = [(CNContactViewController *)self navigationItemController];
      navigationItem = [navigationItemController navigationItem];

      if (observedNavigationItem != navigationItem)
      {
        observedNavigationItem2 = [(CNContactViewController *)self observedNavigationItem];
        [observedNavigationItem2 removeObserver:self forKeyPath:@"title"];

        observedNavigationItem3 = [(CNContactViewController *)self observedNavigationItem];
        [observedNavigationItem3 removeObserver:self forKeyPath:@"titleView"];

        navigationItemController2 = [(CNContactViewController *)self navigationItemController];
        navigationItem2 = [navigationItemController2 navigationItem];
        [(CNContactViewController *)self setObservedNavigationItem:navigationItem2];

        observedNavigationItem4 = [(CNContactViewController *)self observedNavigationItem];
        [observedNavigationItem4 addObserver:self forKeyPath:@"title" options:1 context:0];

        observedNavigationItem5 = [(CNContactViewController *)self observedNavigationItem];
        [observedNavigationItem5 addObserver:self forKeyPath:@"titleView" options:1 context:0];
      }

      navigationItem3 = [controllerCopy navigationItem];
      [(CNContactViewController *)self configureNavigationItem:navigationItem3];

      _CNUILog("/Library/Caches/com.apple.xbs/Sources/ContactsUI/Framework/CNContactViewController.m", 993, 4, @"%@ is added to a controller that's not a navigation controller, we'll update the parent navigation item %@ automatically,", v15, v16, v17, v18, self);
    }
  }
}

- (void)updateEditNavigationItemsAnimated:(BOOL)animated doneButtonEnabled:(BOOL)enabled doneButtonText:(id)text
{
  enabledCopy = enabled;
  v27 = [(CNContactViewController *)self navigationItemController:animated];
  displayNavigationButtonsShouldUsePlatterStyle = [(CNContactViewController *)self displayNavigationButtonsShouldUsePlatterStyle];
  currentNavigationController = [(CNContactViewController *)self currentNavigationController];
  navigationBar = [currentNavigationController navigationBar];
  backItem = [navigationBar backItem];

  if ([(CNContactViewController *)self isEditing])
  {
    navItemUpdater = [(CNContactViewController *)self navItemUpdater];
    BYTE1(v25) = animated;
    LOBYTE(v25) = enabledCopy;
    v13 = [navItemUpdater updateEditingNavigationItemForController:v27 actionTarget:self isInSheet:-[UIViewController ab_isInSheet](self isShowingNavBar:"ab_isInSheet") shouldUsePlatterStyle:-[CNContactViewController shouldDrawNavigationBar](self isUpdatingContact:"shouldDrawNavigationBar") hasChanges:displayNavigationButtonsShouldUsePlatterStyle animated:{-[CNContactViewController mode](self, "mode") == 4, v25}];
  }

  else
  {
    HIDWORD(v26) = enabledCopy;
    v14 = backItem != 0;
    navItemUpdater = [(CNContactViewController *)self navItemUpdater];
    mode = [(CNContactViewController *)self mode];
    allowsEditing = [(CNContactViewController *)self allowsEditing];
    ab_isInSheet = [(UIViewController *)self ab_isInSheet];
    shouldDrawNavigationBar = [(CNContactViewController *)self shouldDrawNavigationBar];
    platterBackBarButtonItem = [(CNContactViewController *)self platterBackBarButtonItem];
    LOBYTE(v26) = animated;
    BYTE2(v25) = displayNavigationButtonsShouldUsePlatterStyle;
    BYTE1(v25) = v14;
    LOBYTE(v25) = shouldDrawNavigationBar;
    v20 = [navItemUpdater updateDisplayNavigationItemsForController:v27 mode:mode actionTarget:self allowsEditing:allowsEditing editButtonEnabled:HIDWORD(v26) isInSheet:ab_isInSheet isShowingNavBar:v25 shouldShowBackButton:platterBackBarButtonItem shouldUsePlatterStyle:v26 platterBackBarButtonItem:? animated:?];
  }

  if (displayNavigationButtonsShouldUsePlatterStyle)
  {
    if (([(CNContactViewController *)self isEditing]& 1) != 0)
    {
      [MEMORY[0x1E69DC888] tintColor];
    }

    else
    {
      +[CNUIColorRepository contactCardStaticHeaderDefaultTintColor];
    }
    v21 = ;
    navigationItemController = [(CNContactViewController *)self navigationItemController];
    navigationItem = [navigationItemController navigationItem];
    navigationBar2 = [navigationItem navigationBar];
    [navigationBar2 setTintColor:v21];
  }
}

- (void)updateBackButtonIfNeeded
{
  if (([(CNContactViewController *)self isEditing]& 1) == 0 && ([(CNContactViewController *)self displayNavigationButtonsShouldUsePlatterStyle]|| [(CNContactViewController *)self _shouldBeOutOfProcess]))
  {
    currentNavigationController = [(CNContactViewController *)self currentNavigationController];
    navigationBar = [currentNavigationController navigationBar];
    backItem = [navigationBar backItem];

    if (backItem)
    {
      navItemUpdater = [(CNContactViewController *)self navItemUpdater];
      navigationItemController = [(CNContactViewController *)self navigationItemController];
      mode = [(CNContactViewController *)self mode];
      platterBackBarButtonItem = [(CNContactViewController *)self platterBackBarButtonItem];
      [navItemUpdater updateBackButtonForPlatterStyleForController:navigationItemController mode:mode platterBackBarButtonItem:platterBackBarButtonItem animated:0];
    }
  }
}

- (void)setupNavBarAppearance:(id)appearance asOpaqueWhenScrolled:(BOOL)scrolled
{
  scrolledCopy = scrolled;
  appearanceCopy = appearance;
  currentEnvironment = [MEMORY[0x1E69966E8] currentEnvironment];
  featureFlags = [currentEnvironment featureFlags];
  v7 = [featureFlags isFeatureEnabled:29];

  if ((v7 & 1) == 0)
  {
    v8 = objc_alloc_init(MEMORY[0x1E69DCCC8]);
    [v8 configureWithTransparentBackground];
    [appearanceCopy setScrollEdgeAppearance:v8];
    if (scrolledCopy)
    {
      v9 = objc_alloc_init(MEMORY[0x1E69DCCC8]);
      [v9 configureWithDefaultBackground];
      [appearanceCopy setStandardAppearance:v9];
    }

    else
    {
      [appearanceCopy setStandardAppearance:v8];
    }
  }
}

- (void)setDoneButtonText:(id)text enabled:(BOOL)enabled
{
  enabledCopy = enabled;
  navigationItemController = [(CNContactViewController *)self navigationItemController];
  if (![(CNContactViewController *)self isEditing])
  {
    if (![(CNContactViewController *)self allowsEditing])
    {
      goto LABEL_9;
    }

    editButtonItem = [navigationItemController editButtonItem];
    [editButtonItem setEnabled:1];
    goto LABEL_8;
  }

  editButtonItem2 = [navigationItemController editButtonItem];
  [editButtonItem2 setEnabled:enabledCopy];

  if (enabledCopy)
  {
    [(CNContactViewController *)self enableSaveKeyboardShortcut];
  }

  if ([(CNContactViewController *)self mode]== 4)
  {
    editButtonItem = CNContactsUIBundle();
    v8 = [editButtonItem localizedStringForKey:@"UPDATE" value:&stru_1F0CE7398 table:@"Localized"];
    editButtonItem3 = [navigationItemController editButtonItem];
    [editButtonItem3 setTitle:v8];

LABEL_8:
  }

LABEL_9:
}

- (void)toggleEditing
{
  viewController = [(CNContactViewController *)self viewController];
  [viewController toggleEditing];
}

- (void)editCancel:(id)cancel
{
  viewController = [(CNContactViewController *)self viewController];
  [viewController editCancel];
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
      parentViewController = [(CNContactViewController *)v4 parentViewController];
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();

      if (isKindOfClass)
      {
        break;
      }

      parentViewController2 = [(CNContactViewController *)v4 parentViewController];

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

- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context
{
  pathCopy = path;
  objectCopy = object;
  changeCopy = change;
  if ([(CNContactViewController *)self hasCompletedSetup])
  {
    observedNavigationItem = [(CNContactViewController *)self observedNavigationItem];
    if (observedNavigationItem == objectCopy)
    {
      if ([pathCopy isEqualToString:@"title"])
      {
      }

      else
      {
        v12 = [pathCopy isEqualToString:@"titleView"];

        if (!v12)
        {
          goto LABEL_10;
        }
      }

      observedNavigationItem = [changeCopy objectForKeyedSubscript:*MEMORY[0x1E696A4F0]];
      null = [MEMORY[0x1E695DFB0] null];
      v14 = [observedNavigationItem isEqual:null];

      if (v14)
      {

        observedNavigationItem = 0;
      }

      viewController = [(CNContactViewController *)self viewController];
      [viewController didChangeToShowTitle:observedNavigationItem != 0];
    }
  }

LABEL_10:
}

- (void)_prepareViewController
{
  _contactPresentedViewController = [(CNContactViewController *)self _contactPresentedViewController];
  [_contactPresentedViewController _beginDelayingPresentation:&__block_literal_global_54654 cancellationHandler:10.0];

  viewController = [(CNContactViewController *)self viewController];

  if (viewController)
  {
    [(CNContactViewController *)self setRequiresSetup:1];

    [(CNContactViewController *)self setHasCompletedSetup:0];
  }

  else if ([(CNContactViewController *)self _shouldBeOutOfProcess])
  {
    v8[0] = 0;
    v8[1] = v8;
    v8[2] = 0x3042000000;
    v8[3] = __Block_byref_object_copy__54655;
    v8[4] = __Block_byref_object_dispose__54656;
    objc_initWeak(&v9, self);
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __49__CNContactViewController__prepareViewController__block_invoke_93;
    v7[3] = &unk_1E74E5D20;
    v7[4] = v8;
    [CNContactViewHostViewController getViewController:v7];
    _Block_object_dispose(v8, 8);
    objc_destroyWeak(&v9);
  }

  else
  {
    v6 = objc_alloc_init(CNContactContentViewController);
    sharedNavigationBar = [(CNContactViewController *)self sharedNavigationBar];
    [(CNContactContentViewController *)v6 setSharedNavigationBar:sharedNavigationBar];

    [(CNContactViewController *)self _setViewController:v6];
  }
}

void __49__CNContactViewController__prepareViewController__block_invoke_93(uint64_t a1, void *a2)
{
  v2 = *(*(a1 + 32) + 8);
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((v2 + 40));
  [WeakRetained _setViewController:v3];
}

- (BOOL)_shouldBeOutOfProcess
{
  displayMode = [(CNContactViewController *)self displayMode];
  if (displayMode != 1)
  {
    currentEnvironment = [MEMORY[0x1E69966E8] currentEnvironment];
    entitlementVerifier = [currentEnvironment entitlementVerifier];
    v6 = [entitlementVerifier currentProcessHasBooleanEntitlement:*MEMORY[0x1E69964D8] error:0];

    LOBYTE(displayMode) = ([(CNContactViewController *)self displayMode]!= 2) & (v6 ^ 1);
  }

  return displayMode;
}

- (void)_setupViewController
{
  v136[25] = *MEMORY[0x1E69E9840];
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  dictionary2 = [MEMORY[0x1E695DF90] dictionary];
  contact = [(CNContactViewController *)self contact];
  [(CNContactViewController *)self setContentContact:contact];

  contact2 = [(CNContactViewController *)self contact];
  if (contact2)
  {
    contact3 = [(CNContactViewController *)self contact];
    v135 = contact3;
    v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v135 count:1];
  }

  else
  {
    v7 = MEMORY[0x1E695E0F0];
  }

  contact4 = [(CNContactViewController *)self contact];
  isSuggested = [contact4 isSuggested];

  if (isSuggested && [(CNContactViewController *)self mode]== 3)
  {
    contact5 = [(CNContactViewController *)self contact];
    copyWithCuratingAllSuggestionsAndBirthdaySuggestion = [contact5 copyWithCuratingAllSuggestionsAndBirthdaySuggestion];
    [(CNContactViewController *)self setContentContact:copyWithCuratingAllSuggestionsAndBirthdaySuggestion];
  }

  contact6 = [(CNContactViewController *)self contact];
  isUnknown = [contact6 isUnknown];

  if (isUnknown && [(CNContactViewController *)self mode]== 3)
  {
    v14 = MEMORY[0x1E695CD58];
    contact7 = [(CNContactViewController *)self contact];
    v16 = [v14 makeContactAndMergeValuesFromAvailableKeysInContact:contact7];
    [(CNContactViewController *)self setContentContact:v16];
  }

  array = [MEMORY[0x1E695DF70] array];
  additionalContact = [(CNContactViewController *)self additionalContact];

  if (additionalContact)
  {
    additionalContact2 = [(CNContactViewController *)self additionalContact];
    v20 = [v7 arrayByAddingObject:additionalContact2];

    if ([additionalContact2 isSuggested])
    {
      copyWithCuratingAllSuggestionsAndBirthdaySuggestion2 = [additionalContact2 copyWithCuratingAllSuggestionsAndBirthdaySuggestion];

      isSuggested = 1;
      additionalContact2 = copyWithCuratingAllSuggestionsAndBirthdaySuggestion2;
    }

    contact8 = [(CNContactViewController *)self contact];
    v23 = [contact8 mutableCopy];

    v24 = [v23 addAllPropertiesFromContact:additionalContact2];
    if (v24)
    {
      [array addObjectsFromArray:v24];
    }

    [(CNContactViewController *)self setContentContact:v23];

    v7 = v20;
  }

  contactStore = [(CNContactViewController *)self contactStore];

  if (!contactStore)
  {
    [(CNContactViewController *)self setActions:[(CNContactViewController *)self actions]& 0xFFFFFFFFFFFFFFDFLL];
    v26 = 7;
    if (!isSuggested)
    {
      v26 = 1;
    }

    if (isUnknown)
    {
      v27 = v26 | 0x20;
    }

    else
    {
      v27 = v26;
    }

    v28 = [MEMORY[0x1E695CE18] storeWithOptions:v27];
    [(CNContactViewController *)self setContactStore:v28];
  }

  if (![(CNContactViewController *)self _shouldBeOutOfProcess])
  {
    contactStore2 = [(CNContactViewController *)self contactStore];
    viewController = [(CNContactViewController *)self viewController];
    [viewController setContactStore:contactStore2];
  }

  displayedPropertyKeys = [(CNContactViewController *)self displayedPropertyKeys];

  if (displayedPropertyKeys)
  {
    displayedPropertyKeys2 = [(CNContactViewController *)self displayedPropertyKeys];
    [dictionary2 setObject:displayedPropertyKeys2 forKeyedSubscript:@"displayedProperties"];
  }

  primaryPropertyKey = [(CNContactViewController *)self primaryPropertyKey];
  if (primaryPropertyKey)
  {
    v34 = primaryPropertyKey;
    mode = [(CNContactViewController *)self mode];

    if (mode == 2)
    {
      primaryPropertyKey2 = [(CNContactViewController *)self primaryPropertyKey];
      [dictionary2 setObject:primaryPropertyKey2 forKeyedSubscript:@"primaryProperty"];
    }
  }

  v37 = [MEMORY[0x1E696AD98] numberWithBool:{-[CNContactViewController allowsDisplayModePickerActions](self, "allowsDisplayModePickerActions")}];
  [dictionary2 setObject:v37 forKeyedSubscript:@"allowsDisplayModePickerActions"];

  v38 = [MEMORY[0x1E696AD98] numberWithBool:{-[CNContactViewController allowsEditPhoto](self, "allowsEditPhoto")}];
  [dictionary2 setObject:v38 forKeyedSubscript:@"allowsEditPhoto"];

  v39 = [MEMORY[0x1E696AD98] numberWithBool:{-[CNContactViewController allowsNamePicking](self, "allowsNamePicking")}];
  [dictionary2 setObject:v39 forKeyedSubscript:@"allowsNamePicking"];

  v40 = [MEMORY[0x1E696AD98] numberWithBool:{-[CNContactViewController showsInlineActions](self, "showsInlineActions")}];
  [dictionary2 setObject:v40 forKeyedSubscript:@"showsInlineActions"];

  v41 = [MEMORY[0x1E696AD98] numberWithBool:{-[CNContactViewController showsSharedProfile](self, "showsSharedProfile")}];
  [dictionary2 setObject:v41 forKeyedSubscript:@"showsSharedProfile"];

  v42 = [MEMORY[0x1E696AD98] numberWithBool:{-[CNContactViewController showsGroupMembership](self, "showsGroupMembership")}];
  [dictionary2 setObject:v42 forKeyedSubscript:@"showsGroupMembership"];

  contactHeaderViewController = [(CNContactViewController *)self contactHeaderViewController];

  if (contactHeaderViewController)
  {
    contactHeaderViewController2 = [(CNContactViewController *)self contactHeaderViewController];
    [dictionary2 setObject:contactHeaderViewController2 forKeyedSubscript:@"personHeaderViewController"];
  }

  contactHeaderView = [(CNContactViewController *)self contactHeaderView];

  if (contactHeaderView)
  {
    contactHeaderView2 = [(CNContactViewController *)self contactHeaderView];
    [dictionary2 setObject:contactHeaderView2 forKeyedSubscript:@"personHeaderView"];
  }

  contactHeaderViewDelegate = [(CNContactViewController *)self contactHeaderViewDelegate];

  if (contactHeaderViewDelegate)
  {
    contactHeaderViewDelegate2 = [(CNContactViewController *)self contactHeaderViewDelegate];
    [dictionary2 setObject:contactHeaderViewDelegate2 forKeyedSubscript:@"personHeaderViewDelegate"];
  }

  customViewConfiguration = [(CNContactViewController *)self customViewConfiguration];

  if (customViewConfiguration)
  {
    currentEnvironment = [MEMORY[0x1E69966E8] currentEnvironment];
    featureFlags = [currentEnvironment featureFlags];
    v52 = [featureFlags isFeatureEnabled:11];

    if (v52)
    {
      customViewConfiguration2 = [(CNContactViewController *)self customViewConfiguration];
      v54 = &CNContactViewOptionCustomViewConfiguration;
    }

    else
    {
      v55 = [CNContactCustomViewController alloc];
      customViewConfiguration3 = [(CNContactViewController *)self customViewConfiguration];
      v57 = [(CNContactCustomViewController *)v55 initWithConfiguration:customViewConfiguration3];
      [(CNContactViewController *)self setContactHeaderViewController:v57];

      customViewConfiguration2 = [(CNContactViewController *)self contactHeaderViewController];
      v54 = &CNContactViewOptionPersonHeaderViewController;
    }

    [dictionary2 setObject:customViewConfiguration2 forKeyedSubscript:*v54];
  }

  v58 = [MEMORY[0x1E696AD98] numberWithBool:{(-[CNContactViewController actions](self, "actions") >> 5) & 1}];
  [dictionary2 setObject:v58 forKeyedSubscript:@"allowsAddingToAddressBook"];

  v59 = [MEMORY[0x1E696AD98] numberWithBool:{(-[CNContactViewController actions](self, "actions") >> 6) & 1}];
  [dictionary2 setObject:v59 forKeyedSubscript:@"allowsAddToFavorites"];

  v60 = [MEMORY[0x1E696AD98] numberWithBool:{(-[CNContactViewController actions](self, "actions") >> 7) & 1}];
  [dictionary2 setObject:v60 forKeyedSubscript:@"allowsContactBlocking"];

  v61 = [MEMORY[0x1E696AD98] numberWithBool:{(-[CNContactViewController actions](self, "actions") >> 11) & 1}];
  [dictionary2 setObject:v61 forKeyedSubscript:@"allowsContactBlockingAndReporting"];

  v62 = [MEMORY[0x1E696AD98] numberWithBool:{(-[CNContactViewController actions](self, "actions") >> 1) & 1}];
  [dictionary2 setObject:v62 forKeyedSubscript:@"allowsCardActions"];

  v63 = [MEMORY[0x1E696AD98] numberWithBool:{(-[CNContactViewController actions](self, "actions") >> 4) & 1}];
  [dictionary2 setObject:v63 forKeyedSubscript:@"allowsSharing"];

  v64 = [MEMORY[0x1E696AD98] numberWithBool:{(-[CNContactViewController actions](self, "actions") >> 2) & 1}];
  [dictionary2 setObject:v64 forKeyedSubscript:@"allowsConferencing"];

  v65 = [MEMORY[0x1E696AD98] numberWithBool:{(-[CNContactViewController actions](self, "actions") >> 8) & 1}];
  [dictionary2 setObject:v65 forKeyedSubscript:@"allowsDeletion"];

  v66 = [MEMORY[0x1E696AD98] numberWithBool:{(-[CNContactViewController actions](self, "actions") >> 10) & 1}];
  [dictionary2 setObject:v66 forKeyedSubscript:@"allowsEditInApp"];

  warningMessage = [(CNContactViewController *)self warningMessage];
  [dictionary2 setObject:warningMessage forKeyedSubscript:@"warningMessage"];

  v68 = [MEMORY[0x1E696AD98] numberWithBool:{-[CNContactViewController shouldDrawNavigationBar](self, "shouldDrawNavigationBar")}];
  [dictionary2 setObject:v68 forKeyedSubscript:@"shouldDrawNavigationBar"];

  v69 = [MEMORY[0x1E696AD98] numberWithBool:{-[CNContactViewController editingProposedInformation](self, "editingProposedInformation")}];
  [dictionary2 setObject:v69 forKeyedSubscript:@"editingProposedInformation"];

  v70 = [MEMORY[0x1E696AD98] numberWithBool:{-[CNContactViewController forcesTransparentBackground](self, "forcesTransparentBackground")}];
  [dictionary2 setObject:v70 forKeyedSubscript:@"forcesTransparentBackground"];

  v71 = [MEMORY[0x1E696AD98] numberWithBool:{-[CNContactViewController usesBrandedCallHeaderFormat](self, "usesBrandedCallHeaderFormat")}];
  [dictionary2 setObject:v71 forKeyedSubscript:@"usesBrandedCallHeaderFormat"];

  v72 = [MEMORY[0x1E696AD98] numberWithBool:{-[CNContactViewController shouldShowSharedProfileBanner](self, "shouldShowSharedProfileBanner")}];
  [dictionary2 setObject:v72 forKeyedSubscript:@"shouldShowSharedProfileBanner"];

  staticIdentity = [(CNContactViewController *)self staticIdentity];
  [dictionary2 setObject:staticIdentity forKeyedSubscript:@"staticIdentity"];

  v74 = [MEMORY[0x1E696AD98] numberWithBool:{-[CNContactViewController showContactPhotoPosterCell](self, "showContactPhotoPosterCell")}];
  [dictionary2 setObject:v74 forKeyedSubscript:@"showContactPhotoPosterCell"];

  if ([(CNContactViewController *)self isEditing])
  {
    [dictionary2 setObject:MEMORY[0x1E695E118] forKeyedSubscript:@"isEditing"];
  }

  if ([*MEMORY[0x1E69DDA98] isRunningTest])
  {
    [dictionary2 setObject:MEMORY[0x1E695E118] forKeyedSubscript:@"runningPPT"];
  }

  highlightedPropertyIdentifier = [(CNContactViewController *)self highlightedPropertyIdentifier];

  v126 = array;
  if (highlightedPropertyIdentifier)
  {
    v76 = MEMORY[0x1E695CE08];
    contentContact = [(CNContactViewController *)self contentContact];
    highlightedPropertyKey = [(CNContactViewController *)self highlightedPropertyKey];
    highlightedPropertyIdentifier2 = [(CNContactViewController *)self highlightedPropertyIdentifier];
    v80 = [v76 contactPropertyWithContactNoCopy:contentContact propertyKey:highlightedPropertyKey identifier:highlightedPropertyIdentifier2];

    array = v126;
    [v126 addObject:v80];
  }

  if ([array count])
  {
    [dictionary2 setObject:array forKeyedSubscript:@"highlightedProperties"];
  }

  v81 = [MEMORY[0x1E696AD98] numberWithBool:{-[CNContactViewController highlightedPropertyImportant](self, "highlightedPropertyImportant")}];
  [dictionary2 setObject:v81 forKeyedSubscript:@"highlightedPropertyImportant"];

  contentContact2 = [(CNContactViewController *)self contentContact];
  [dictionary2 setObject:contentContact2 forKeyedSubscript:@"contact"];

  if ([v7 count] > 1 || (objc_msgSend(v7, "firstObject"), v83 = objc_claimAutoreleasedReturnValue(), -[CNContactViewController contentContact](self, "contentContact"), v84 = objc_claimAutoreleasedReturnValue(), v85 = objc_msgSend(v83, "isEqual:", v84), v84, v83, (v85 & 1) == 0))
  {
    [dictionary2 setObject:v7 forKeyedSubscript:@"originalContacts"];
  }

  v124 = v7;
  v86 = *MEMORY[0x1E6996568];
  navigationItemController = [(CNContactViewController *)self navigationItemController];
  navigationItem = [navigationItemController navigationItem];
  title = [navigationItem title];
  LOBYTE(v86) = (*(v86 + 16))(v86, title);

  if ((v86 & 1) == 0)
  {
    [dictionary2 setObject:MEMORY[0x1E695E118] forKeyedSubscript:@"layoutPositionallyAfterNavBar"];
  }

  navigationItem2 = [(CNContactViewController *)self navigationItem];
  [(CNContactViewController *)self setupNavBarAppearance:navigationItem2 asOpaqueWhenScrolled:0];

  v132 = 0u;
  v133 = 0u;
  v130 = 0u;
  v131 = 0u;
  v136[0] = @"importantMessage";
  v136[1] = @"allowsConferencing";
  v136[2] = @"alternateName";
  v136[3] = @"message";
  v136[4] = @"shouldShowLinkedContacts";
  v136[5] = @"parentGroup";
  v136[6] = @"displayedPropertyKeys";
  v136[7] = @"allowsActions";
  v136[8] = @"allowsDeletion";
  v136[9] = @"allowsEditing";
  v136[10] = @"allowsNamePicking";
  v136[11] = @"showsInlineActions";
  v136[12] = @"showsSharedProfile";
  v136[13] = @"showsGroupMembership";
  v136[14] = @"mode";
  v136[15] = @"parentContainer";
  v136[16] = @"verifiedInfoMessage";
  v136[17] = @"allowsAddingToAddressBook";
  v136[18] = @"allowsAddToFavorites";
  v136[19] = @"allowsSharing";
  v136[20] = @"allowsContactBlocking";
  v136[21] = @"allowsContactBlockingAndReporting";
  v136[22] = @"showingMeContact";
  v136[23] = @"showContactPhotoPosterCell";
  v136[24] = @"allowsSwipeToPop";
  v91 = [MEMORY[0x1E695DEC8] arrayWithObjects:v136 count:25];
  v92 = [v91 countByEnumeratingWithState:&v130 objects:v134 count:16];
  if (v92)
  {
    v93 = v92;
    v94 = *v131;
    do
    {
      for (i = 0; i != v93; ++i)
      {
        if (*v131 != v94)
        {
          objc_enumerationMutation(v91);
        }

        v96 = *(*(&v130 + 1) + 8 * i);
        v97 = [dictionary2 objectForKeyedSubscript:v96];

        if (!v97)
        {
          v98 = [(CNContactViewController *)self valueForKey:v96];
          if (v98)
          {
            [dictionary2 setObject:v98 forKeyedSubscript:v96];
          }
        }
      }

      v93 = [v91 countByEnumeratingWithState:&v130 objects:v134 count:16];
    }

    while (v93);
  }

  mainScreen = [MEMORY[0x1E69DCEB0] mainScreen];
  [mainScreen _peripheryInsets];
  v100 = NSStringFromUIEdgeInsets(v137);
  [dictionary2 setObject:v100 forKeyedSubscript:@"mainScreenPeripheryInsets"];

  mode2 = [(CNContactViewController *)self mode];
  if (mode2 <= 2)
  {
    v102 = dictionary;
    v103 = 0x1E6996000;
    if (mode2 == 1)
    {
      editMode = [(CNContactViewController *)self editMode];
      v112 = editMode == 2 || [(CNContactViewController *)self editMode]== 1;
      [dictionary2 setObject:MEMORY[0x1E695E110] forKeyedSubscript:@"allowsAddingToAddressBook"];
      v113 = [MEMORY[0x1E696AD98] numberWithBool:v112];
      [dictionary2 setObject:v113 forKeyedSubscript:@"allowsEditing"];

      v114 = [MEMORY[0x1E696AD98] numberWithBool:editMode == 2];
      [dictionary2 setObject:v114 forKeyedSubscript:@"alwaysEditing"];

      v103 = 0x1E6996000uLL;
    }

    else if (mode2 == 2)
    {
      v106 = MEMORY[0x1E695E110];
      [dictionary2 setObject:MEMORY[0x1E695E110] forKeyedSubscript:@"allowsEditing"];
      [dictionary2 setObject:v106 forKeyedSubscript:@"allowsAddToFavorites"];
      recentsData = [(CNContactViewController *)self recentsData];
      [dictionary2 setObject:recentsData forKeyedSubscript:@"recentsData"];

      primaryPropertyKey3 = [(CNContactViewController *)self primaryPropertyKey];

      if (primaryPropertyKey3)
      {
        contentContact3 = [(CNContactViewController *)self contentContact];
        v110 = [(CNContactViewController *)self _primaryPropertyStringForContact:contentContact3];

        if (v110)
        {
          [dictionary2 setObject:v110 forKeyedSubscript:@"alternateName"];
        }
      }

      else
      {
        alternateName = [(CNContactViewController *)self alternateName];

        if (alternateName)
        {
          alternateName2 = [(CNContactViewController *)self alternateName];
          [dictionary2 setObject:alternateName2 forKeyedSubscript:@"alternateName"];
        }
      }
    }
  }

  else
  {
    v102 = dictionary;
    v103 = 0x1E6996000;
    switch(mode2)
    {
      case 3:
        v104 = MEMORY[0x1E695E118];
        [dictionary2 setObject:MEMORY[0x1E695E118] forKeyedSubscript:@"allowsEditing"];
        [dictionary2 setObject:v104 forKeyedSubscript:@"alwaysEditing"];
        v105 = @"layoutPositionallyAfterNavBar";
        break;
      case 4:
        v104 = MEMORY[0x1E695E118];
        [dictionary2 setObject:MEMORY[0x1E695E118] forKeyedSubscript:@"allowsEditing"];
        v105 = @"alwaysEditing";
        break;
      case 5:
        v104 = MEMORY[0x1E695E110];
        [dictionary2 setObject:MEMORY[0x1E695E110] forKeyedSubscript:@"allowsEditing"];
        [dictionary2 setObject:v104 forKeyedSubscript:@"allowsCardActions"];
        v105 = @"allowsAddingToAddressBook";
        break;
      default:
        goto LABEL_83;
    }

    [dictionary2 setObject:v104 forKeyedSubscript:v105];
  }

LABEL_83:
  [v102 setObject:dictionary2 forKeyedSubscript:@"Properties"];
  currentEnvironment2 = [*(v103 + 1768) currentEnvironment];
  entitlementVerifier = [currentEnvironment2 entitlementVerifier];
  v117 = [entitlementVerifier currentProcessHasBooleanEntitlement:*MEMORY[0x1E69964E8] error:0];

  if (v117)
  {
    v118 = [MEMORY[0x1E696AD98] numberWithBool:{-[CNContactViewController ignoresParentalRestrictions](self, "ignoresParentalRestrictions")}];
    [v102 setObject:v118 forKeyedSubscript:@"ignoresParentalRestrictions"];
  }

  prohibitedPropertyKeys = [(CNContactViewController *)self prohibitedPropertyKeys];
  [v102 setObject:prohibitedPropertyKeys forKeyedSubscript:@"prohibitedPropertyKeys"];

  viewController2 = [(CNContactViewController *)self viewController];
  v127[0] = MEMORY[0x1E69E9820];
  v127[1] = 3221225472;
  v127[2] = __47__CNContactViewController__setupViewController__block_invoke;
  v127[3] = &unk_1E74E5CD8;
  v128 = dictionary2;
  selfCopy = self;
  v121 = dictionary2;
  [viewController2 setupWithOptions:v102 readyBlock:v127];

  [(CNContactViewController *)self setRequiresSetup:0];
}

void __47__CNContactViewController__setupViewController__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __47__CNContactViewController__setupViewController__block_invoke_2;
  block[3] = &unk_1E74E6EE8;
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v8 = v4;
  v9 = v5;
  v10 = v3;
  v6 = v3;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

void __47__CNContactViewController__setupViewController__block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) objectForKeyedSubscript:@"alwaysEditing"];
  v3 = [v2 isEqual:MEMORY[0x1E695E118]];

  if (v3)
  {
    [*(a1 + 40) setEditing:1 animated:0];
  }

  v4 = [*(a1 + 40) _contactPresentedViewController];
  [v4 _endDelayingPresentation];

  v10 = [*(a1 + 40) cnui_appropriatePresentationController];
  v5 = [v10 delegate];

  if (!v5)
  {
    [v10 setDelegate:*(a1 + 40)];
  }

  if (*(a1 + 48))
  {
    _CNUILog("/Library/Caches/com.apple.xbs/Sources/ContactsUI/Framework/CNContactViewController.m", 808, 3, @"Error when showing contact view: %@", v6, v7, v8, v9, *(a1 + 48));
  }

  [*(a1 + 40) setHasCompletedSetup:1];
}

- (void)setContact:(id)contact additionalContact:(id)additionalContact mode:(int64_t)mode
{
  contactCopy = contact;
  additionalContactCopy = additionalContact;
  contact = self->_contact;
  self->_contact = contactCopy;
  v11 = contactCopy;

  additionalContact = self->_additionalContact;
  self->_additionalContact = additionalContactCopy;

  self->_mode = mode;
  [(CNContactViewController *)self setRequiresSetup:1];

  [(CNContactViewController *)self setHasCompletedSetup:0];
}

- (void)_setViewController:(id)controller
{
  controllerCopy = controller;
  [controllerCopy setDelegate:self];
  pptDelegate = [(CNContactViewController *)self pptDelegate];
  [controllerCopy setPptDelegate:pptDelegate];

  [(CNContactViewController *)self setViewController:controllerCopy];
  [(CNContactViewController *)self _setupViewController];
  [(UIViewController *)self cnui_addChildViewController:controllerCopy];

  viewController = [(CNContactViewController *)self viewController];
  [viewController preferredContentSize];
  [(CNContactViewController *)self setPreferredContentSize:?];
}

- (void)_endDelayingPresentation
{
  self->_ignoreViewWillBePresented = 1;
  v3.receiver = self;
  v3.super_class = CNContactViewController;
  [(CNContactViewController *)&v3 _endDelayingPresentation];
  self->_ignoreViewWillBePresented = 0;
}

- (BOOL)_isDelayingPresentation
{
  v5.receiver = self;
  v5.super_class = CNContactViewController;
  if ([(CNContactViewController *)&v5 _isDelayingPresentation])
  {
    return 1;
  }

  if (!self->_ignoreViewWillBePresented && (objc_opt_respondsToSelector() & 1) != 0)
  {
    [(CNContactViewController *)self _viewWillBePresented];
  }

  v4.receiver = self;
  v4.super_class = CNContactViewController;
  return [(CNContactViewController *)&v4 _isDelayingPresentation];
}

- (_UIRemoteViewController)_containedRemoteViewController
{
  objc_opt_class();
  viewController = [(CNContactViewController *)self viewController];
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

- (void)viewDidDisappear:(BOOL)disappear
{
  v5.receiver = self;
  v5.super_class = CNContactViewController;
  [(CNContactViewController *)&v5 viewDidDisappear:disappear];
  navigationItem = [(CNContactViewController *)self navigationItem];
  [(CNContactViewController *)self setupNavBarAppearance:navigationItem asOpaqueWhenScrolled:0];
}

- (void)viewDidAppear:(BOOL)appear
{
  v5.receiver = self;
  v5.super_class = CNContactViewController;
  [(CNContactViewController *)&v5 viewDidAppear:appear];
  if ([*MEMORY[0x1E69DDA98] isPPTAvailable])
  {
    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter postNotificationName:@"PPTDidShowContact" object:self];
  }
}

- (void)viewWillAppear:(BOOL)appear
{
  v12.receiver = self;
  v12.super_class = CNContactViewController;
  [(CNContactViewController *)&v12 viewWillAppear:appear];
  if ([(CNContactViewController *)self _shouldBeOutOfProcess])
  {
    navigationController = [(CNContactViewController *)self navigationController];
    navigationBar = [navigationController navigationBar];
    view = [(CNContactViewController *)self view];
    [view bounds];
    [navigationBar _setRequestedMaxBackButtonWidth:v7 / 3.0];
  }

  navigationController2 = [(CNContactViewController *)self navigationController];
  navigationBar2 = [navigationController2 navigationBar];
  if ([navigationBar2 isTranslucent])
  {
  }

  else
  {
    navigationItem = [(CNContactViewController *)self navigationItem];
    _backgroundHidden = [navigationItem _backgroundHidden];

    if (_backgroundHidden)
    {
      [(CNContactViewController *)self setExtendedLayoutIncludesOpaqueBars:1];
    }
  }
}

- (void)viewWillLayoutSubviews
{
  if ([(CNContactViewController *)self requiresSetup])
  {
    [(CNContactViewController *)self _setupViewController];
  }

  v3.receiver = self;
  v3.super_class = CNContactViewController;
  [(CNContactViewController *)&v3 viewWillLayoutSubviews];
}

- (void)loadView
{
  v11.receiver = self;
  v11.super_class = CNContactViewController;
  [(CNContactViewController *)&v11 loadView];
  if ([(CNContactViewController *)self forcesTransparentBackground])
  {
    systemGroupedBackgroundColor = +[CNUIColorRepository transparentBackgroundColor];
LABEL_3:
    v4 = systemGroupedBackgroundColor;
    view = [(CNContactViewController *)self view];
    [view setBackgroundColor:v4];
LABEL_6:

    goto LABEL_7;
  }

  v6 = +[CNContactStyle currentStyle];
  backgroundColor = [v6 backgroundColor];

  v8 = +[CNContactStyle currentStyle];
  v4 = v8;
  if (backgroundColor)
  {
    view = [v8 backgroundColor];
    view2 = [(CNContactViewController *)self view];
    [view2 setBackgroundColor:view];

    goto LABEL_6;
  }

  usesOpaqueBackground = [v8 usesOpaqueBackground];

  if (usesOpaqueBackground && [(CNContactViewController *)self _shouldBeOutOfProcess])
  {
    systemGroupedBackgroundColor = [MEMORY[0x1E69DC888] systemGroupedBackgroundColor];
    goto LABEL_3;
  }

LABEL_7:
  [(CNContactViewController *)self _viewWillBePresented];
}

- (CNContactContentViewController)contentViewController
{
  viewController = [(CNContactViewController *)self viewController];

  if (!viewController)
  {
    [(CNContactViewController *)self _prepareViewController];
  }

  return [(CNContactViewController *)self viewController];
}

- (id)confirmCancelAlertControllerAnchoredAtButtonItem:(id)item
{
  itemCopy = item;
  contact = [(CNContactViewController *)self contact];
  hasBeenPersisted = [contact hasBeenPersisted];
  v7 = CNContactsUIBundle();
  v8 = v7;
  if (hasBeenPersisted)
  {
    v9 = @"DISCARD_CHANGES_TITLE_EDIT_CONTACT";
  }

  else
  {
    v9 = @"DISCARD_CHANGES_TITLE_NEW_CONTACT";
  }

  v10 = [v7 localizedStringForKey:v9 value:&stru_1F0CE7398 table:@"Localized"];

  v11 = [MEMORY[0x1E69DC650] alertControllerWithTitle:v10 message:0 preferredStyle:0];
  v12 = MEMORY[0x1E69DC648];
  v13 = CNContactsUIBundle();
  v14 = [v13 localizedStringForKey:@"DISCARD_CHANGES_DISCARD_ACTION_TITE" value:&stru_1F0CE7398 table:@"Localized"];
  v29[0] = MEMORY[0x1E69E9820];
  v29[1] = 3221225472;
  v29[2] = __76__CNContactViewController_confirmCancelAlertControllerAnchoredAtButtonItem___block_invoke;
  v29[3] = &unk_1E74E6C28;
  v29[4] = self;
  v15 = [v12 actionWithTitle:v14 style:2 handler:v29];
  [v11 addAction:v15];

  v16 = MEMORY[0x1E69DC648];
  v17 = CNContactsUIBundle();
  v18 = [v17 localizedStringForKey:@"DISCARD_CHANGES_CANCEL_ACTION_TITLE" value:&stru_1F0CE7398 table:@"Localized"];
  v19 = [v16 actionWithTitle:v18 style:1 handler:0];
  [v11 addAction:v19];

  if (itemCopy)
  {
    popoverPresentationController = [v11 popoverPresentationController];
    [popoverPresentationController setBarButtonItem:itemCopy];
  }

  else
  {
    view = [(CNContactViewController *)self view];
    popoverPresentationController2 = [v11 popoverPresentationController];
    [popoverPresentationController2 setSourceView:view];

    v23 = *MEMORY[0x1E695F058];
    v24 = *(MEMORY[0x1E695F058] + 8);
    v25 = *(MEMORY[0x1E695F058] + 16);
    v26 = *(MEMORY[0x1E695F058] + 24);
    popoverPresentationController = [v11 popoverPresentationController];
    [popoverPresentationController setSourceRect:{v23, v24, v25, v26}];
  }

  popoverPresentationController3 = [v11 popoverPresentationController];
  [popoverPresentationController3 setPermittedArrowDirections:1];

  return v11;
}

void __76__CNContactViewController_confirmCancelAlertControllerAnchoredAtButtonItem___block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) viewController];
  [v1 performConfirmedCancel];
}

- (void)presentConfirmCancelAlertControllerAnchoredAtButtonItem:(id)item
{
  v4 = [(CNContactViewController *)self confirmCancelAlertControllerAnchoredAtButtonItem:item];
  [(CNContactViewController *)self presentViewController:v4 animated:1 completion:0];
}

- (void)presentCancelConfirmationAlert
{
  navigationItemController = [(CNContactViewController *)self navigationItemController];
  currentEnvironment = [MEMORY[0x1E69966E8] currentEnvironment];
  featureFlags = [currentEnvironment featureFlags];
  v5 = [featureFlags isFeatureEnabled:29];

  if (v5)
  {
    sharedNavigationBar = [(CNContactViewController *)self sharedNavigationBar];
    [sharedNavigationBar cancelButton];
  }

  else
  {
    sharedNavigationBar = [navigationItemController navigationItem];
    [sharedNavigationBar leftBarButtonItem];
  }
  v7 = ;
  [(CNContactViewController *)self presentConfirmCancelAlertControllerAnchoredAtButtonItem:v7];
}

- (void)presentationControllerDidAttemptToDismiss:(id)dismiss
{
  if (![(CNContactViewController *)self _shouldBeOutOfProcess])
  {
    contentViewController = [(CNContactViewController *)self contentViewController];
    hasPendingChanges = [contentViewController hasPendingChanges];

    contentViewController2 = [(CNContactViewController *)self contentViewController];
    v7 = contentViewController2;
    if (hasPendingChanges)
    {
      [contentViewController2 presentConfirmCancelAlertController];
    }

    else
    {
      [contentViewController2 performConfirmedCancel];
    }
  }
}

- (BOOL)presentationControllerShouldDismiss:(id)dismiss
{
  if ([(CNContactViewController *)self _shouldBeOutOfProcess])
  {
    LOBYTE(v4) = 1;
  }

  else
  {
    contentViewController = [(CNContactViewController *)self contentViewController];
    v4 = [contentViewController hasPendingChanges] ^ 1;
  }

  return v4;
}

- (BOOL)isModalInPresentation
{
  if ([(CNContactViewController *)self _shouldBeOutOfProcess])
  {
    viewController = [(CNContactViewController *)self viewController];
    isModalInPresentation = [viewController isModalInPresentation];
  }

  else
  {
    viewController = [(CNContactViewController *)self contentViewController];
    isModalInPresentation = [viewController hasPendingChanges];
  }

  v5 = isModalInPresentation;

  return v5;
}

- (void)setShouldShowSharedProfileBanner:(BOOL)banner
{
  if (self->_shouldShowSharedProfileBanner != banner)
  {
    bannerCopy = banner;
    self->_shouldShowSharedProfileBanner = banner;
    contentViewController = [(CNContactViewController *)self contentViewController];
    [contentViewController setShouldShowSharedProfileBanner:bannerCopy];
  }
}

- (void)setUsesBrandedCallHeaderFormat:(BOOL)format
{
  if (self->_usesBrandedCallHeaderFormat != format)
  {
    formatCopy = format;
    self->_usesBrandedCallHeaderFormat = format;
    contentViewController = [(CNContactViewController *)self contentViewController];
    [contentViewController setUsesBrandedCallHeaderFormat:formatCopy];
  }
}

- (void)setForcesTransparentBackground:(BOOL)background
{
  if (self->_forcesTransparentBackground != background)
  {
    backgroundCopy = background;
    self->_forcesTransparentBackground = background;
    contentViewController = [(CNContactViewController *)self contentViewController];
    [contentViewController setForcesTransparentBackground:backgroundCopy];
  }
}

- (void)setShouldUseModernNavigationBarHiding:(BOOL)hiding
{
  if (self->_shouldUseModernNavigationBarHiding != hiding)
  {
    self->_shouldUseModernNavigationBarHiding = hiding;
    navigationItem = [(CNContactViewController *)self navigationItem];
    [(CNContactViewController *)self configureNavigationItem:navigationItem];
  }
}

- (void)setShouldDrawNavigationBar:(BOOL)bar
{
  if (self->_shouldDrawNavigationBar != bar)
  {
    self->_shouldDrawNavigationBar = bar;
    navigationItem = [(CNContactViewController *)self navigationItem];
    [navigationItem _setBackgroundHidden:!self->_shouldDrawNavigationBar];
  }
}

- (void)setInitialPrompt:(id)prompt
{
  promptCopy = prompt;
  if (![(NSString *)self->_initialPrompt isEqualToString:?])
  {
    objc_storeStrong(&self->_initialPrompt, prompt);
    initialPrompt = self->_initialPrompt;
    navigationItem = [(CNContactViewController *)self navigationItem];
    [navigationItem setPrompt:initialPrompt];
  }
}

- (void)setRequiresSetup:(BOOL)setup
{
  if (self->_requiresSetup != setup)
  {
    self->_requiresSetup = setup;
    if ([(CNContactViewController *)self isViewLoaded])
    {
      view = [(CNContactViewController *)self view];
      [view setNeedsLayout];
    }
  }
}

- (void)setEditing:(BOOL)editing animated:(BOOL)animated
{
  animatedCopy = animated;
  editingCopy = editing;
  if ([(CNContactViewController *)self isEditing]!= editing)
  {
    v8.receiver = self;
    v8.super_class = CNContactViewController;
    [(CNContactViewController *)&v8 setEditing:editingCopy animated:animatedCopy];
    viewController = [(CNContactViewController *)self viewController];
    [viewController didChangeToEditMode:editingCopy];
  }
}

- (void)highlightPropertyWithKey:(id)key identifier:(id)identifier important:(BOOL)important
{
  importantCopy = important;
  identifierCopy = identifier;
  [(CNContactViewController *)self setHighlightedPropertyKey:key];
  [(CNContactViewController *)self setHighlightedPropertyIdentifier:identifierCopy];

  [(CNContactViewController *)self setHighlightedPropertyImportant:importantCopy];
}

- (void)setAllowsEditing:(BOOL)allowsEditing
{
  v3 = allowsEditing;
  editMode = [(CNContactViewController *)self editMode];
  if (v3)
  {
    if (editMode)
    {
      return;
    }

    v6 = 1;
  }

  else
  {
    if (!editMode)
    {
      return;
    }

    v6 = 0;
  }

  [(CNContactViewController *)self setEditMode:v6];
}

- (void)setAllowsActions:(BOOL)allowsActions
{
  if (allowsActions)
  {
    v4 = 127;
  }

  else
  {
    v4 = [(CNContactViewController *)self actions]& 0x1A0;
  }

  [(CNContactViewController *)self setActions:v4];
  if ([(CNContactViewController *)self hasCompletedSetup])
  {

    [(CNContactViewController *)self setRequiresSetup:1];
  }
}

- (id)_primaryPropertyStringForContact:(id)contact
{
  contactCopy = contact;
  primaryPropertyKey = [(CNContactViewController *)self primaryPropertyKey];
  v6 = [primaryPropertyKey isEqualToString:*MEMORY[0x1E695C330]];

  if (v6)
  {
    phoneNumbers = [contactCopy phoneNumbers];
    firstObject = [phoneNumbers firstObject];

    value = [firstObject value];
    formattedStringValue = [value formattedStringValue];
LABEL_3:
    value2 = formattedStringValue;

LABEL_6:
    goto LABEL_7;
  }

  primaryPropertyKey2 = [(CNContactViewController *)self primaryPropertyKey];
  v13 = [primaryPropertyKey2 isEqualToString:*MEMORY[0x1E695C208]];

  if (v13)
  {
    emailAddresses = [contactCopy emailAddresses];
    firstObject = [emailAddresses firstObject];

    value2 = [firstObject value];
    goto LABEL_6;
  }

  primaryPropertyKey3 = [(CNContactViewController *)self primaryPropertyKey];
  v17 = [primaryPropertyKey3 isEqualToString:*MEMORY[0x1E695C360]];

  if (v17)
  {
    postalAddresses = [contactCopy postalAddresses];
    firstObject = [postalAddresses firstObject];

    value = [firstObject value];
    formattedStringValue = [MEMORY[0x1E695CF68] stringFromPostalAddress:value style:0];
    goto LABEL_3;
  }

  value2 = 0;
LABEL_7:

  return value2;
}

- (id)_contactPresentedViewController
{
  selfCopy = self;
  delegate = [(CNContactViewController *)selfCopy delegate];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    delegate2 = [(CNContactViewController *)selfCopy delegate];
    v6 = [delegate2 contactPresentedViewController:selfCopy];

    selfCopy = v6;
  }

  return selfCopy;
}

- (void)dealloc
{
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter removeObserver:self];

  observedNavigationItem = [(CNContactViewController *)self observedNavigationItem];
  [observedNavigationItem removeObserver:self forKeyPath:@"title"];

  [(CNContactViewController *)self setObservedNavigationItem:0];
  [(CNContactContentViewController *)self->_contentViewController setContactDelegate:0];
  v5.receiver = self;
  v5.super_class = CNContactViewController;
  [(CNContactViewController *)&v5 dealloc];
}

- (CNContactViewController)initWithMode:(int64_t)mode
{
  v10.receiver = self;
  v10.super_class = CNContactViewController;
  v4 = [(CNContactViewController *)&v10 initWithNibName:0 bundle:0];
  v5 = v4;
  if (v4)
  {
    v4->_mode = mode;
    v4->_actions = 127;
    v4->_editMode = 1;
    v4->_allowsDisplayModePickerActions = 1;
    v4->_allowsEditPhoto = 1;
    v4->_forcesTransparentBackground = 0;
    v4->_showsInlineActions = 1;
    v4->_showsSharedProfile = 1;
    v4->_showsGroupMembership = 1;
    v6 = objc_alloc_init(CNContactContentNavigationItemUpdater);
    navItemUpdater = v5->_navItemUpdater;
    v5->_navItemUpdater = v6;

    v5->_showContactPhotoPosterCell = 1;
    v5->_allowsSwipeToPop = 1;
    navigationItem = [(CNContactViewController *)v5 navigationItem];
    [(CNContactViewController *)v5 configureNavigationItem:navigationItem];
  }

  return v5;
}

+ (id)viewControllerForEditedDraftContact:(id)contact
{
  v11[1] = *MEMORY[0x1E69E9840];
  if (contact)
  {
    contactCopy = contact;
    descriptorForRequiredKeys = [self descriptorForRequiredKeys];
    v11[0] = descriptorForRequiredKeys;
    v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v11 count:1];
    [contactCopy assertKeysAreAvailable:v6];

    v7 = [[self alloc] initWithMode:4];
    v8 = CNContactsUIBundle();
    v9 = [v8 localizedStringForKey:@"CREATE_DRAFT_CONTACT_TITLE" value:&stru_1F0CE7398 table:@"Localized"];
    [v7 setTitle:v9];

    [v7 setContact:contactCopy];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

+ (id)viewControllerForNewDraftContact:(id)contact
{
  v13[1] = *MEMORY[0x1E69E9840];
  contactCopy = contact;
  if (contactCopy)
  {
    v5 = contactCopy;
    copyWithDistinctIdentifier = [contactCopy copyWithDistinctIdentifier];

    descriptorForRequiredKeys = [self descriptorForRequiredKeys];
    v13[0] = descriptorForRequiredKeys;
    v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v13 count:1];
    [copyWithDistinctIdentifier assertKeysAreAvailable:v8];

    v9 = [[self alloc] initWithMode:3];
    v10 = CNContactsUIBundle();
    v11 = [v10 localizedStringForKey:@"CREATE_DRAFT_CONTACT_TITLE" value:&stru_1F0CE7398 table:@"Localized"];
    [v9 setTitle:v11];

    [v9 setContact:copyWithDistinctIdentifier];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

+ (id)viewControllerForUpdatingContact:(id)contact withPublicAccountIdentity:(id)identity
{
  v12[1] = *MEMORY[0x1E69E9840];
  if (contact)
  {
    identityCopy = identity;
    contactCopy = contact;
    descriptorForRequiredKeys = [self descriptorForRequiredKeys];
    v12[0] = descriptorForRequiredKeys;
    v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v12 count:1];
    [contactCopy assertKeysAreAvailable:v9];

    v10 = [[self alloc] initWithMode:4];
    [v10 setContact:contactCopy];

    [v10 setStaticIdentity:identityCopy];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

+ (id)viewControllerForUpdatingContact:(id)contact withPropertiesFromContact:(id)fromContact
{
  v14[1] = *MEMORY[0x1E69E9840];
  fromContactCopy = fromContact;
  contactCopy = contact;
  descriptorForRequiredKeys = [self descriptorForRequiredKeys];
  v14[0] = descriptorForRequiredKeys;
  v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v14 count:1];
  [contactCopy assertKeysAreAvailable:v9];

  v10 = [self alloc];
  if ([fromContactCopy isSuggested])
  {
    v11 = 5;
  }

  else
  {
    v11 = 4;
  }

  v12 = [v10 initWithMode:v11];
  [v12 setContact:contactCopy];

  [v12 setAdditionalContact:fromContactCopy];

  return v12;
}

+ (CNContactViewController)viewControllerForNewContact:(CNContact *)contact
{
  v11[1] = *MEMORY[0x1E69E9840];
  v4 = contact;
  descriptorForRequiredKeys = [self descriptorForRequiredKeys];
  v11[0] = descriptorForRequiredKeys;
  v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v11 count:1];
  [(CNContact *)v4 assertKeysAreAvailable:v6];

  v7 = [[self alloc] initWithMode:3];
  v8 = CNContactsUIBundle();
  v9 = [v8 localizedStringForKey:@"CREATE_NEW_CONTACT_TITLE" value:&stru_1F0CE7398 table:@"Localized"];
  [v7 setTitle:v9];

  if (!v4)
  {
    v4 = objc_alloc_init(MEMORY[0x1E695CF18]);
  }

  [v7 setContact:v4];

  return v7;
}

+ (CNContactViewController)viewControllerForUnknownContact:(CNContact *)contact
{
  v13[1] = *MEMORY[0x1E69E9840];
  v4 = contact;
  descriptorForRequiredKeys = [self descriptorForRequiredKeys];
  v13[0] = descriptorForRequiredKeys;
  v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v13 count:1];
  [(CNContact *)v4 assertKeysAreAvailable:v6];

  if (![(CNContact *)v4 isUnknown])
  {
    _CNUILog("/Library/Caches/com.apple.xbs/Sources/ContactsUI/Framework/CNContactViewController.m", 135, 3, @"Behavior of CNContactViewController created with viewControllerForUnknownContact: and passing a known contact is undefined. Please use +viewControllerForContact: instead.", v7, v8, v9, v10, v13[0]);
  }

  v11 = [[self alloc] initWithMode:2];
  [v11 setContact:v4];

  return v11;
}

+ (CNContactViewController)viewControllerForContact:(CNContact *)contact
{
  v14[1] = *MEMORY[0x1E69E9840];
  v4 = contact;
  descriptorForRequiredKeys = [self descriptorForRequiredKeys];
  v14[0] = descriptorForRequiredKeys;
  v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v14 count:1];
  [(CNContact *)v4 assertKeysAreAvailable:v6];

  if ([(CNContact *)v4 isUnknown]&& ([(CNContact *)v4 isCoreRecentsAccepted]& 1) == 0)
  {
    _CNUILog("/Library/Caches/com.apple.xbs/Sources/ContactsUI/Framework/CNContactViewController.m", 117, 3, @"Behavior of CNContactViewController created with viewControllerForContact: and passing an unknown contact is undefined. Please use +viewControllerForUnknownContact: instead.", v7, v8, v9, v10, v14[0]);
  }

  if ([(CNContact *)v4 isCoreRecentsAccepted])
  {
    v11 = 2;
  }

  else
  {
    v11 = 1;
  }

  v12 = [[self alloc] initWithMode:v11];
  [v12 setContact:v4];

  return v12;
}

@end