@interface CNContactViewController
+ (CNContactViewController)viewControllerForContact:(CNContact *)contact;
+ (CNContactViewController)viewControllerForNewContact:(CNContact *)contact;
+ (CNContactViewController)viewControllerForUnknownContact:(CNContact *)contact;
+ (id)viewControllerForEditedDraftContact:(id)a3;
+ (id)viewControllerForNewDraftContact:(id)a3;
+ (id)viewControllerForUpdatingContact:(id)a3 withPropertiesFromContact:(id)a4;
+ (id)viewControllerForUpdatingContact:(id)a3 withPublicAccountIdentity:(id)a4;
- (BOOL)_isDelayingPresentation;
- (BOOL)_shouldBeOutOfProcess;
- (BOOL)displayNavigationButtonsShouldUsePlatterStyle;
- (BOOL)isModalInPresentation;
- (BOOL)presentationControllerShouldDismiss:(id)a3;
- (BOOL)shouldPerformDefaultActionForContact:(id)a3 propertyKey:(id)a4 propertyIdentifier:(id)a5;
- (CNContactContentViewController)contentViewController;
- (CNContactViewController)initWithMode:(int64_t)a3;
- (CNContactViewControllerCustomHeaderViewDelegate)contactHeaderViewDelegate;
- (CNContactViewControllerPPTDelegate)pptDelegate;
- (_UIRemoteViewController)_containedRemoteViewController;
- (id)_contactPresentedViewController;
- (id)_primaryPropertyStringForContact:(id)a3;
- (id)confirmCancelAlertControllerAnchoredAtButtonItem:(id)a3;
- (id)currentNavigationController;
- (id)delegate;
- (id)navigationItemController;
- (id)platterBackBarButtonItem;
- (void)_endDelayingPresentation;
- (void)_prepareViewController;
- (void)_setViewController:(id)a3;
- (void)_setupViewController;
- (void)configureNavigationItem:(id)a3;
- (void)dealloc;
- (void)didCompleteWithContact:(id)a3;
- (void)didDeleteContact:(id)a3;
- (void)didExecuteClearRecentsDataAction;
- (void)didExecuteDeleteFromDowntimeWhitelistAction;
- (void)didMoveToParentViewController:(id)a3;
- (void)didSetAction:(int64_t)a3 allowed:(BOOL)a4;
- (void)didTapBlockAndReportForContact:(id)a3;
- (void)editCancel:(id)a3;
- (void)enableCancelKeyboardShortcut;
- (void)enableEditKeyboardShortcut;
- (void)enableSaveKeyboardShortcut;
- (void)highlightPropertyWithKey:(id)a3 identifier:(id)a4 important:(BOOL)a5;
- (void)isPresentingEditingController:(BOOL)a3;
- (void)isPresentingFullscreen:(BOOL)a3;
- (void)loadView;
- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6;
- (void)popToPrevious:(id)a3;
- (void)presentCancelConfirmationAlert;
- (void)presentConfirmCancelAlertControllerAnchoredAtButtonItem:(id)a3;
- (void)presentationControllerDidAttemptToDismiss:(id)a3;
- (void)setAllowsActions:(BOOL)allowsActions;
- (void)setAllowsEditing:(BOOL)allowsEditing;
- (void)setContact:(id)a3 additionalContact:(id)a4 mode:(int64_t)a5;
- (void)setDoneButtonText:(id)a3 enabled:(BOOL)a4;
- (void)setEditing:(BOOL)a3 animated:(BOOL)a4;
- (void)setForcesTransparentBackground:(BOOL)a3;
- (void)setInitialPrompt:(id)a3;
- (void)setRequiresSetup:(BOOL)a3;
- (void)setShouldDrawNavigationBar:(BOOL)a3;
- (void)setShouldShowSharedProfileBanner:(BOOL)a3;
- (void)setShouldUseModernNavigationBarHiding:(BOOL)a3;
- (void)setUsesBrandedCallHeaderFormat:(BOOL)a3;
- (void)setupNavBarAppearance:(id)a3 asOpaqueWhenScrolled:(BOOL)a4;
- (void)toggleEditing;
- (void)touchesBegan:(id)a3 withEvent:(id)a4;
- (void)updateBackButtonIfNeeded;
- (void)updateEditNavigationItemsAnimated:(BOOL)a3 doneButtonEnabled:(BOOL)a4 doneButtonText:(id)a5;
- (void)updateEditing:(BOOL)a3 doneButtonEnabled:(BOOL)a4 doneButtonText:(id)a5;
- (void)viewDidAppear;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidDisappear:(BOOL)a3;
- (void)viewServiceDidTerminate;
- (void)viewWillAppear:(BOOL)a3;
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

- (void)didSetAction:(int64_t)a3 allowed:(BOOL)a4
{
  if (a4)
  {
    v5 = [(CNContactViewController *)self actions]| a3;
  }

  else
  {
    v5 = [(CNContactViewController *)self actions]& ~a3;
  }

  [(CNContactViewController *)self setActions:v5];
}

- (void)didTapBlockAndReportForContact:(id)a3
{
  v7 = a3;
  v4 = [(CNContactViewController *)self privateDelegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    v6 = [(CNContactViewController *)self privateDelegate];
    [v6 contactViewController:self didExecuteBlockAndReportContactAction:v7];

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
  v3 = [(CNContactViewController *)self privateDelegate];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    v5 = [(CNContactViewController *)self privateDelegate];
    [v5 contactViewControllerDidExecuteDeleteFromDowntimeWhitelistAction:self];
  }
}

- (void)didExecuteClearRecentsDataAction
{
  v3 = [(CNContactViewController *)self privateDelegate];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    v5 = [(CNContactViewController *)self privateDelegate];
    [v5 contactViewControllerDidExecuteClearRecentsDataAction:self];
  }
}

- (void)viewDidAppear
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a2 object:self file:@"CNContactViewController.m" lineNumber:1154 description:{@"This should not be called, we pass the pptDelegate directly to the host view controller"}];
}

- (void)isPresentingEditingController:(BOOL)a3
{
  v3 = a3;
  v5 = [(CNContactViewController *)self privateDelegate];
  if (v3)
  {
    v6 = objc_opt_respondsToSelector();

    if ((v6 & 1) == 0)
    {
      return;
    }

    v8 = [(CNContactViewController *)self privateDelegate];
    [v8 contactViewControllerForUnknownContactDidBeginAddingToContacts:self];
  }

  else
  {
    v7 = objc_opt_respondsToSelector();

    if ((v7 & 1) == 0)
    {
      return;
    }

    v8 = [(CNContactViewController *)self privateDelegate];
    [v8 contactViewControllerForUnknownContactDidEndAddingToContacts:self];
  }
}

- (void)isPresentingFullscreen:(BOOL)a3
{
  v3 = a3;
  v4 = [(CNContactViewController *)self navigationController];
  [v4 setNavigationBarHidden:v3 animated:0];
}

- (void)didDeleteContact:(id)a3
{
  v7 = a3;
  v4 = [(CNContactViewController *)self privateDelegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    if ([(CNContactViewController *)self editMode]!= 2)
    {
      [(CNContactViewController *)self setEditing:0];
    }

    v6 = [(CNContactViewController *)self privateDelegate];
    [v6 contactViewController:self didDeleteContact:v7];
  }
}

- (void)didCompleteWithContact:(id)a3
{
  v7 = a3;
  v4 = [(CNContactViewController *)self delegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    v6 = [(CNContactViewController *)self delegate];
    [v6 contactViewController:self didCompleteWithContact:v7];
  }
}

- (void)updateEditing:(BOOL)a3 doneButtonEnabled:(BOOL)a4 doneButtonText:(id)a5
{
  v5 = a4;
  v6 = a3;
  v12 = a5;
  if (![(CNContactViewController *)self shouldUseModernNavigationBarHiding]&& !CNUIIsMessages() && [(CNContactViewController *)self isEditing]!= v6)
  {
    v8 = [(CNContactViewController *)self navigationItem];
    [(CNContactViewController *)self setupNavBarAppearance:v8 asOpaqueWhenScrolled:v6];
  }

  if ([(CNContactViewController *)self _shouldBeOutOfProcess])
  {
    if ([(CNContactViewController *)self isEditing]!= v6)
    {
      [(CNContactViewController *)self setEditing:v6 animated:1];
      v9 = [(CNContactViewController *)self privateDelegate];
      v10 = objc_opt_respondsToSelector();

      if (v10)
      {
        v11 = [(CNContactViewController *)self privateDelegate];
        [v11 contactViewController:self didChangeToEditMode:v6];
      }
    }

    [(CNContactViewController *)self updateEditNavigationItemsAnimated:1 doneButtonEnabled:v5 doneButtonText:v12];
  }
}

- (BOOL)shouldPerformDefaultActionForContact:(id)a3 propertyKey:(id)a4 propertyIdentifier:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(CNContactViewController *)self delegate];
  v12 = objc_opt_respondsToSelector();

  if (v12)
  {
    v13 = [MEMORY[0x1E695CE08] contactPropertyWithContact:v8 propertyKey:v9 identifier:v10];
    v14 = [(CNContactViewController *)self delegate];
    v15 = [v14 contactViewController:self shouldPerformDefaultActionForContactProperty:v13];
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

- (void)touchesBegan:(id)a3 withEvent:(id)a4
{
  v8.receiver = self;
  v8.super_class = CNContactViewController;
  [(CNContactViewController *)&v8 touchesBegan:a3 withEvent:a4];
  v5 = [(CNContactViewController *)self splitViewController];

  if (v5)
  {
    v6 = [(CNContactViewController *)self splitViewController];
    v7 = [v6 view];
    [v7 endEditing:1];
  }
}

- (id)currentNavigationController
{
  v2 = [(CNContactViewController *)self navigationItemController];
  v3 = [v2 navigationController];

  v4 = [v3 navigationBar];
  v5 = [v4 backItem];
  if (v5)
  {

LABEL_3:
    v6 = v3;
    goto LABEL_6;
  }

  v7 = [v3 navigationController];
  v8 = [v7 navigationBar];
  v9 = [v8 backItem];

  if (!v9)
  {
    goto LABEL_3;
  }

  v6 = [v3 navigationController];
LABEL_6:
  v10 = v6;

  return v10;
}

- (void)popToPrevious:(id)a3
{
  v4 = [(CNContactViewController *)self currentNavigationController];
  v3 = [v4 popViewControllerAnimated:1];
}

- (id)platterBackBarButtonItem
{
  v3 = [(CNContactViewController *)self traitCollection];
  v4 = [v3 layoutDirection] == 1;

  v5 = [[CNPlatterBackBarButtonItem alloc] initWithTarget:self action:sel_popToPrevious_ isRTL:v4];

  return v5;
}

- (BOOL)displayNavigationButtonsShouldUsePlatterStyle
{
  v3 = [MEMORY[0x1E69966E8] currentEnvironment];
  v4 = [v3 featureFlags];
  v5 = [v4 isFeatureEnabled:29];

  if (v5)
  {
    LOBYTE(v6) = 0;
  }

  else
  {
    v7 = [MEMORY[0x1E69966E8] currentEnvironment];
    v8 = [v7 featureFlags];
    if ([v8 isFeatureEnabled:27])
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

- (void)configureNavigationItem:(id)a3
{
  v4 = a3;
  [v4 setLargeTitleDisplayMode:2];
  [(CNContactViewController *)self setupNavBarAppearance:v4 asOpaqueWhenScrolled:0];

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
    v5 = [(CNContactViewController *)self navigationItemController];
    v6 = [v5 navigationItem];
    v7 = [v6 navigationBar];
    [v7 setTintColor:v8];
  }
}

- (void)didMoveToParentViewController:(id)a3
{
  v4 = a3;
  v19.receiver = self;
  v19.super_class = CNContactViewController;
  [(CNContactViewController *)&v19 didMoveToParentViewController:v4];
  if (v4)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v5 = [(CNContactViewController *)self observedNavigationItem];
      v6 = [(CNContactViewController *)self navigationItemController];
      v7 = [v6 navigationItem];

      if (v5 != v7)
      {
        v8 = [(CNContactViewController *)self observedNavigationItem];
        [v8 removeObserver:self forKeyPath:@"title"];

        v9 = [(CNContactViewController *)self observedNavigationItem];
        [v9 removeObserver:self forKeyPath:@"titleView"];

        v10 = [(CNContactViewController *)self navigationItemController];
        v11 = [v10 navigationItem];
        [(CNContactViewController *)self setObservedNavigationItem:v11];

        v12 = [(CNContactViewController *)self observedNavigationItem];
        [v12 addObserver:self forKeyPath:@"title" options:1 context:0];

        v13 = [(CNContactViewController *)self observedNavigationItem];
        [v13 addObserver:self forKeyPath:@"titleView" options:1 context:0];
      }

      v14 = [v4 navigationItem];
      [(CNContactViewController *)self configureNavigationItem:v14];

      _CNUILog("/Library/Caches/com.apple.xbs/Sources/ContactsUI/Framework/CNContactViewController.m", 993, 4, @"%@ is added to a controller that's not a navigation controller, we'll update the parent navigation item %@ automatically,", v15, v16, v17, v18, self);
    }
  }
}

- (void)updateEditNavigationItemsAnimated:(BOOL)a3 doneButtonEnabled:(BOOL)a4 doneButtonText:(id)a5
{
  v5 = a4;
  v27 = [(CNContactViewController *)self navigationItemController:a3];
  v8 = [(CNContactViewController *)self displayNavigationButtonsShouldUsePlatterStyle];
  v9 = [(CNContactViewController *)self currentNavigationController];
  v10 = [v9 navigationBar];
  v11 = [v10 backItem];

  if ([(CNContactViewController *)self isEditing])
  {
    v12 = [(CNContactViewController *)self navItemUpdater];
    BYTE1(v25) = a3;
    LOBYTE(v25) = v5;
    v13 = [v12 updateEditingNavigationItemForController:v27 actionTarget:self isInSheet:-[UIViewController ab_isInSheet](self isShowingNavBar:"ab_isInSheet") shouldUsePlatterStyle:-[CNContactViewController shouldDrawNavigationBar](self isUpdatingContact:"shouldDrawNavigationBar") hasChanges:v8 animated:{-[CNContactViewController mode](self, "mode") == 4, v25}];
  }

  else
  {
    HIDWORD(v26) = v5;
    v14 = v11 != 0;
    v12 = [(CNContactViewController *)self navItemUpdater];
    v15 = [(CNContactViewController *)self mode];
    v16 = [(CNContactViewController *)self allowsEditing];
    v17 = [(UIViewController *)self ab_isInSheet];
    v18 = [(CNContactViewController *)self shouldDrawNavigationBar];
    v19 = [(CNContactViewController *)self platterBackBarButtonItem];
    LOBYTE(v26) = a3;
    BYTE2(v25) = v8;
    BYTE1(v25) = v14;
    LOBYTE(v25) = v18;
    v20 = [v12 updateDisplayNavigationItemsForController:v27 mode:v15 actionTarget:self allowsEditing:v16 editButtonEnabled:HIDWORD(v26) isInSheet:v17 isShowingNavBar:v25 shouldShowBackButton:v19 shouldUsePlatterStyle:v26 platterBackBarButtonItem:? animated:?];
  }

  if (v8)
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
    v22 = [(CNContactViewController *)self navigationItemController];
    v23 = [v22 navigationItem];
    v24 = [v23 navigationBar];
    [v24 setTintColor:v21];
  }
}

- (void)updateBackButtonIfNeeded
{
  if (([(CNContactViewController *)self isEditing]& 1) == 0 && ([(CNContactViewController *)self displayNavigationButtonsShouldUsePlatterStyle]|| [(CNContactViewController *)self _shouldBeOutOfProcess]))
  {
    v3 = [(CNContactViewController *)self currentNavigationController];
    v4 = [v3 navigationBar];
    v5 = [v4 backItem];

    if (v5)
    {
      v9 = [(CNContactViewController *)self navItemUpdater];
      v6 = [(CNContactViewController *)self navigationItemController];
      v7 = [(CNContactViewController *)self mode];
      v8 = [(CNContactViewController *)self platterBackBarButtonItem];
      [v9 updateBackButtonForPlatterStyleForController:v6 mode:v7 platterBackBarButtonItem:v8 animated:0];
    }
  }
}

- (void)setupNavBarAppearance:(id)a3 asOpaqueWhenScrolled:(BOOL)a4
{
  v4 = a4;
  v10 = a3;
  v5 = [MEMORY[0x1E69966E8] currentEnvironment];
  v6 = [v5 featureFlags];
  v7 = [v6 isFeatureEnabled:29];

  if ((v7 & 1) == 0)
  {
    v8 = objc_alloc_init(MEMORY[0x1E69DCCC8]);
    [v8 configureWithTransparentBackground];
    [v10 setScrollEdgeAppearance:v8];
    if (v4)
    {
      v9 = objc_alloc_init(MEMORY[0x1E69DCCC8]);
      [v9 configureWithDefaultBackground];
      [v10 setStandardAppearance:v9];
    }

    else
    {
      [v10 setStandardAppearance:v8];
    }
  }
}

- (void)setDoneButtonText:(id)a3 enabled:(BOOL)a4
{
  v4 = a4;
  v10 = [(CNContactViewController *)self navigationItemController];
  if (![(CNContactViewController *)self isEditing])
  {
    if (![(CNContactViewController *)self allowsEditing])
    {
      goto LABEL_9;
    }

    v7 = [v10 editButtonItem];
    [v7 setEnabled:1];
    goto LABEL_8;
  }

  v6 = [v10 editButtonItem];
  [v6 setEnabled:v4];

  if (v4)
  {
    [(CNContactViewController *)self enableSaveKeyboardShortcut];
  }

  if ([(CNContactViewController *)self mode]== 4)
  {
    v7 = CNContactsUIBundle();
    v8 = [v7 localizedStringForKey:@"UPDATE" value:&stru_1F0CE7398 table:@"Localized"];
    v9 = [v10 editButtonItem];
    [v9 setTitle:v8];

LABEL_8:
  }

LABEL_9:
}

- (void)toggleEditing
{
  v2 = [(CNContactViewController *)self viewController];
  [v2 toggleEditing];
}

- (void)editCancel:(id)a3
{
  v3 = [(CNContactViewController *)self viewController];
  [v3 editCancel];
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
      v5 = [(CNContactViewController *)v4 parentViewController];
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();

      if (isKindOfClass)
      {
        break;
      }

      v7 = [(CNContactViewController *)v4 parentViewController];

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

- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6
{
  v16 = a3;
  v9 = a4;
  v10 = a5;
  if ([(CNContactViewController *)self hasCompletedSetup])
  {
    v11 = [(CNContactViewController *)self observedNavigationItem];
    if (v11 == v9)
    {
      if ([v16 isEqualToString:@"title"])
      {
      }

      else
      {
        v12 = [v16 isEqualToString:@"titleView"];

        if (!v12)
        {
          goto LABEL_10;
        }
      }

      v11 = [v10 objectForKeyedSubscript:*MEMORY[0x1E696A4F0]];
      v13 = [MEMORY[0x1E695DFB0] null];
      v14 = [v11 isEqual:v13];

      if (v14)
      {

        v11 = 0;
      }

      v15 = [(CNContactViewController *)self viewController];
      [v15 didChangeToShowTitle:v11 != 0];
    }
  }

LABEL_10:
}

- (void)_prepareViewController
{
  v3 = [(CNContactViewController *)self _contactPresentedViewController];
  [v3 _beginDelayingPresentation:&__block_literal_global_54654 cancellationHandler:10.0];

  v4 = [(CNContactViewController *)self viewController];

  if (v4)
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
    v5 = [(CNContactViewController *)self sharedNavigationBar];
    [(CNContactContentViewController *)v6 setSharedNavigationBar:v5];

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
  v3 = [(CNContactViewController *)self displayMode];
  if (v3 != 1)
  {
    v4 = [MEMORY[0x1E69966E8] currentEnvironment];
    v5 = [v4 entitlementVerifier];
    v6 = [v5 currentProcessHasBooleanEntitlement:*MEMORY[0x1E69964D8] error:0];

    LOBYTE(v3) = ([(CNContactViewController *)self displayMode]!= 2) & (v6 ^ 1);
  }

  return v3;
}

- (void)_setupViewController
{
  v136[25] = *MEMORY[0x1E69E9840];
  v125 = [MEMORY[0x1E695DF90] dictionary];
  v3 = [MEMORY[0x1E695DF90] dictionary];
  v4 = [(CNContactViewController *)self contact];
  [(CNContactViewController *)self setContentContact:v4];

  v5 = [(CNContactViewController *)self contact];
  if (v5)
  {
    v6 = [(CNContactViewController *)self contact];
    v135 = v6;
    v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v135 count:1];
  }

  else
  {
    v7 = MEMORY[0x1E695E0F0];
  }

  v8 = [(CNContactViewController *)self contact];
  v9 = [v8 isSuggested];

  if (v9 && [(CNContactViewController *)self mode]== 3)
  {
    v10 = [(CNContactViewController *)self contact];
    v11 = [v10 copyWithCuratingAllSuggestionsAndBirthdaySuggestion];
    [(CNContactViewController *)self setContentContact:v11];
  }

  v12 = [(CNContactViewController *)self contact];
  v13 = [v12 isUnknown];

  if (v13 && [(CNContactViewController *)self mode]== 3)
  {
    v14 = MEMORY[0x1E695CD58];
    v15 = [(CNContactViewController *)self contact];
    v16 = [v14 makeContactAndMergeValuesFromAvailableKeysInContact:v15];
    [(CNContactViewController *)self setContentContact:v16];
  }

  v17 = [MEMORY[0x1E695DF70] array];
  v18 = [(CNContactViewController *)self additionalContact];

  if (v18)
  {
    v19 = [(CNContactViewController *)self additionalContact];
    v20 = [v7 arrayByAddingObject:v19];

    if ([v19 isSuggested])
    {
      v21 = [v19 copyWithCuratingAllSuggestionsAndBirthdaySuggestion];

      v9 = 1;
      v19 = v21;
    }

    v22 = [(CNContactViewController *)self contact];
    v23 = [v22 mutableCopy];

    v24 = [v23 addAllPropertiesFromContact:v19];
    if (v24)
    {
      [v17 addObjectsFromArray:v24];
    }

    [(CNContactViewController *)self setContentContact:v23];

    v7 = v20;
  }

  v25 = [(CNContactViewController *)self contactStore];

  if (!v25)
  {
    [(CNContactViewController *)self setActions:[(CNContactViewController *)self actions]& 0xFFFFFFFFFFFFFFDFLL];
    v26 = 7;
    if (!v9)
    {
      v26 = 1;
    }

    if (v13)
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
    v29 = [(CNContactViewController *)self contactStore];
    v30 = [(CNContactViewController *)self viewController];
    [v30 setContactStore:v29];
  }

  v31 = [(CNContactViewController *)self displayedPropertyKeys];

  if (v31)
  {
    v32 = [(CNContactViewController *)self displayedPropertyKeys];
    [v3 setObject:v32 forKeyedSubscript:@"displayedProperties"];
  }

  v33 = [(CNContactViewController *)self primaryPropertyKey];
  if (v33)
  {
    v34 = v33;
    v35 = [(CNContactViewController *)self mode];

    if (v35 == 2)
    {
      v36 = [(CNContactViewController *)self primaryPropertyKey];
      [v3 setObject:v36 forKeyedSubscript:@"primaryProperty"];
    }
  }

  v37 = [MEMORY[0x1E696AD98] numberWithBool:{-[CNContactViewController allowsDisplayModePickerActions](self, "allowsDisplayModePickerActions")}];
  [v3 setObject:v37 forKeyedSubscript:@"allowsDisplayModePickerActions"];

  v38 = [MEMORY[0x1E696AD98] numberWithBool:{-[CNContactViewController allowsEditPhoto](self, "allowsEditPhoto")}];
  [v3 setObject:v38 forKeyedSubscript:@"allowsEditPhoto"];

  v39 = [MEMORY[0x1E696AD98] numberWithBool:{-[CNContactViewController allowsNamePicking](self, "allowsNamePicking")}];
  [v3 setObject:v39 forKeyedSubscript:@"allowsNamePicking"];

  v40 = [MEMORY[0x1E696AD98] numberWithBool:{-[CNContactViewController showsInlineActions](self, "showsInlineActions")}];
  [v3 setObject:v40 forKeyedSubscript:@"showsInlineActions"];

  v41 = [MEMORY[0x1E696AD98] numberWithBool:{-[CNContactViewController showsSharedProfile](self, "showsSharedProfile")}];
  [v3 setObject:v41 forKeyedSubscript:@"showsSharedProfile"];

  v42 = [MEMORY[0x1E696AD98] numberWithBool:{-[CNContactViewController showsGroupMembership](self, "showsGroupMembership")}];
  [v3 setObject:v42 forKeyedSubscript:@"showsGroupMembership"];

  v43 = [(CNContactViewController *)self contactHeaderViewController];

  if (v43)
  {
    v44 = [(CNContactViewController *)self contactHeaderViewController];
    [v3 setObject:v44 forKeyedSubscript:@"personHeaderViewController"];
  }

  v45 = [(CNContactViewController *)self contactHeaderView];

  if (v45)
  {
    v46 = [(CNContactViewController *)self contactHeaderView];
    [v3 setObject:v46 forKeyedSubscript:@"personHeaderView"];
  }

  v47 = [(CNContactViewController *)self contactHeaderViewDelegate];

  if (v47)
  {
    v48 = [(CNContactViewController *)self contactHeaderViewDelegate];
    [v3 setObject:v48 forKeyedSubscript:@"personHeaderViewDelegate"];
  }

  v49 = [(CNContactViewController *)self customViewConfiguration];

  if (v49)
  {
    v50 = [MEMORY[0x1E69966E8] currentEnvironment];
    v51 = [v50 featureFlags];
    v52 = [v51 isFeatureEnabled:11];

    if (v52)
    {
      v53 = [(CNContactViewController *)self customViewConfiguration];
      v54 = &CNContactViewOptionCustomViewConfiguration;
    }

    else
    {
      v55 = [CNContactCustomViewController alloc];
      v56 = [(CNContactViewController *)self customViewConfiguration];
      v57 = [(CNContactCustomViewController *)v55 initWithConfiguration:v56];
      [(CNContactViewController *)self setContactHeaderViewController:v57];

      v53 = [(CNContactViewController *)self contactHeaderViewController];
      v54 = &CNContactViewOptionPersonHeaderViewController;
    }

    [v3 setObject:v53 forKeyedSubscript:*v54];
  }

  v58 = [MEMORY[0x1E696AD98] numberWithBool:{(-[CNContactViewController actions](self, "actions") >> 5) & 1}];
  [v3 setObject:v58 forKeyedSubscript:@"allowsAddingToAddressBook"];

  v59 = [MEMORY[0x1E696AD98] numberWithBool:{(-[CNContactViewController actions](self, "actions") >> 6) & 1}];
  [v3 setObject:v59 forKeyedSubscript:@"allowsAddToFavorites"];

  v60 = [MEMORY[0x1E696AD98] numberWithBool:{(-[CNContactViewController actions](self, "actions") >> 7) & 1}];
  [v3 setObject:v60 forKeyedSubscript:@"allowsContactBlocking"];

  v61 = [MEMORY[0x1E696AD98] numberWithBool:{(-[CNContactViewController actions](self, "actions") >> 11) & 1}];
  [v3 setObject:v61 forKeyedSubscript:@"allowsContactBlockingAndReporting"];

  v62 = [MEMORY[0x1E696AD98] numberWithBool:{(-[CNContactViewController actions](self, "actions") >> 1) & 1}];
  [v3 setObject:v62 forKeyedSubscript:@"allowsCardActions"];

  v63 = [MEMORY[0x1E696AD98] numberWithBool:{(-[CNContactViewController actions](self, "actions") >> 4) & 1}];
  [v3 setObject:v63 forKeyedSubscript:@"allowsSharing"];

  v64 = [MEMORY[0x1E696AD98] numberWithBool:{(-[CNContactViewController actions](self, "actions") >> 2) & 1}];
  [v3 setObject:v64 forKeyedSubscript:@"allowsConferencing"];

  v65 = [MEMORY[0x1E696AD98] numberWithBool:{(-[CNContactViewController actions](self, "actions") >> 8) & 1}];
  [v3 setObject:v65 forKeyedSubscript:@"allowsDeletion"];

  v66 = [MEMORY[0x1E696AD98] numberWithBool:{(-[CNContactViewController actions](self, "actions") >> 10) & 1}];
  [v3 setObject:v66 forKeyedSubscript:@"allowsEditInApp"];

  v67 = [(CNContactViewController *)self warningMessage];
  [v3 setObject:v67 forKeyedSubscript:@"warningMessage"];

  v68 = [MEMORY[0x1E696AD98] numberWithBool:{-[CNContactViewController shouldDrawNavigationBar](self, "shouldDrawNavigationBar")}];
  [v3 setObject:v68 forKeyedSubscript:@"shouldDrawNavigationBar"];

  v69 = [MEMORY[0x1E696AD98] numberWithBool:{-[CNContactViewController editingProposedInformation](self, "editingProposedInformation")}];
  [v3 setObject:v69 forKeyedSubscript:@"editingProposedInformation"];

  v70 = [MEMORY[0x1E696AD98] numberWithBool:{-[CNContactViewController forcesTransparentBackground](self, "forcesTransparentBackground")}];
  [v3 setObject:v70 forKeyedSubscript:@"forcesTransparentBackground"];

  v71 = [MEMORY[0x1E696AD98] numberWithBool:{-[CNContactViewController usesBrandedCallHeaderFormat](self, "usesBrandedCallHeaderFormat")}];
  [v3 setObject:v71 forKeyedSubscript:@"usesBrandedCallHeaderFormat"];

  v72 = [MEMORY[0x1E696AD98] numberWithBool:{-[CNContactViewController shouldShowSharedProfileBanner](self, "shouldShowSharedProfileBanner")}];
  [v3 setObject:v72 forKeyedSubscript:@"shouldShowSharedProfileBanner"];

  v73 = [(CNContactViewController *)self staticIdentity];
  [v3 setObject:v73 forKeyedSubscript:@"staticIdentity"];

  v74 = [MEMORY[0x1E696AD98] numberWithBool:{-[CNContactViewController showContactPhotoPosterCell](self, "showContactPhotoPosterCell")}];
  [v3 setObject:v74 forKeyedSubscript:@"showContactPhotoPosterCell"];

  if ([(CNContactViewController *)self isEditing])
  {
    [v3 setObject:MEMORY[0x1E695E118] forKeyedSubscript:@"isEditing"];
  }

  if ([*MEMORY[0x1E69DDA98] isRunningTest])
  {
    [v3 setObject:MEMORY[0x1E695E118] forKeyedSubscript:@"runningPPT"];
  }

  v75 = [(CNContactViewController *)self highlightedPropertyIdentifier];

  v126 = v17;
  if (v75)
  {
    v76 = MEMORY[0x1E695CE08];
    v77 = [(CNContactViewController *)self contentContact];
    v78 = [(CNContactViewController *)self highlightedPropertyKey];
    v79 = [(CNContactViewController *)self highlightedPropertyIdentifier];
    v80 = [v76 contactPropertyWithContactNoCopy:v77 propertyKey:v78 identifier:v79];

    v17 = v126;
    [v126 addObject:v80];
  }

  if ([v17 count])
  {
    [v3 setObject:v17 forKeyedSubscript:@"highlightedProperties"];
  }

  v81 = [MEMORY[0x1E696AD98] numberWithBool:{-[CNContactViewController highlightedPropertyImportant](self, "highlightedPropertyImportant")}];
  [v3 setObject:v81 forKeyedSubscript:@"highlightedPropertyImportant"];

  v82 = [(CNContactViewController *)self contentContact];
  [v3 setObject:v82 forKeyedSubscript:@"contact"];

  if ([v7 count] > 1 || (objc_msgSend(v7, "firstObject"), v83 = objc_claimAutoreleasedReturnValue(), -[CNContactViewController contentContact](self, "contentContact"), v84 = objc_claimAutoreleasedReturnValue(), v85 = objc_msgSend(v83, "isEqual:", v84), v84, v83, (v85 & 1) == 0))
  {
    [v3 setObject:v7 forKeyedSubscript:@"originalContacts"];
  }

  v124 = v7;
  v86 = *MEMORY[0x1E6996568];
  v87 = [(CNContactViewController *)self navigationItemController];
  v88 = [v87 navigationItem];
  v89 = [v88 title];
  LOBYTE(v86) = (*(v86 + 16))(v86, v89);

  if ((v86 & 1) == 0)
  {
    [v3 setObject:MEMORY[0x1E695E118] forKeyedSubscript:@"layoutPositionallyAfterNavBar"];
  }

  v90 = [(CNContactViewController *)self navigationItem];
  [(CNContactViewController *)self setupNavBarAppearance:v90 asOpaqueWhenScrolled:0];

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
        v97 = [v3 objectForKeyedSubscript:v96];

        if (!v97)
        {
          v98 = [(CNContactViewController *)self valueForKey:v96];
          if (v98)
          {
            [v3 setObject:v98 forKeyedSubscript:v96];
          }
        }
      }

      v93 = [v91 countByEnumeratingWithState:&v130 objects:v134 count:16];
    }

    while (v93);
  }

  v99 = [MEMORY[0x1E69DCEB0] mainScreen];
  [v99 _peripheryInsets];
  v100 = NSStringFromUIEdgeInsets(v137);
  [v3 setObject:v100 forKeyedSubscript:@"mainScreenPeripheryInsets"];

  v101 = [(CNContactViewController *)self mode];
  if (v101 <= 2)
  {
    v102 = v125;
    v103 = 0x1E6996000;
    if (v101 == 1)
    {
      v111 = [(CNContactViewController *)self editMode];
      v112 = v111 == 2 || [(CNContactViewController *)self editMode]== 1;
      [v3 setObject:MEMORY[0x1E695E110] forKeyedSubscript:@"allowsAddingToAddressBook"];
      v113 = [MEMORY[0x1E696AD98] numberWithBool:v112];
      [v3 setObject:v113 forKeyedSubscript:@"allowsEditing"];

      v114 = [MEMORY[0x1E696AD98] numberWithBool:v111 == 2];
      [v3 setObject:v114 forKeyedSubscript:@"alwaysEditing"];

      v103 = 0x1E6996000uLL;
    }

    else if (v101 == 2)
    {
      v106 = MEMORY[0x1E695E110];
      [v3 setObject:MEMORY[0x1E695E110] forKeyedSubscript:@"allowsEditing"];
      [v3 setObject:v106 forKeyedSubscript:@"allowsAddToFavorites"];
      v107 = [(CNContactViewController *)self recentsData];
      [v3 setObject:v107 forKeyedSubscript:@"recentsData"];

      v108 = [(CNContactViewController *)self primaryPropertyKey];

      if (v108)
      {
        v109 = [(CNContactViewController *)self contentContact];
        v110 = [(CNContactViewController *)self _primaryPropertyStringForContact:v109];

        if (v110)
        {
          [v3 setObject:v110 forKeyedSubscript:@"alternateName"];
        }
      }

      else
      {
        v122 = [(CNContactViewController *)self alternateName];

        if (v122)
        {
          v123 = [(CNContactViewController *)self alternateName];
          [v3 setObject:v123 forKeyedSubscript:@"alternateName"];
        }
      }
    }
  }

  else
  {
    v102 = v125;
    v103 = 0x1E6996000;
    switch(v101)
    {
      case 3:
        v104 = MEMORY[0x1E695E118];
        [v3 setObject:MEMORY[0x1E695E118] forKeyedSubscript:@"allowsEditing"];
        [v3 setObject:v104 forKeyedSubscript:@"alwaysEditing"];
        v105 = @"layoutPositionallyAfterNavBar";
        break;
      case 4:
        v104 = MEMORY[0x1E695E118];
        [v3 setObject:MEMORY[0x1E695E118] forKeyedSubscript:@"allowsEditing"];
        v105 = @"alwaysEditing";
        break;
      case 5:
        v104 = MEMORY[0x1E695E110];
        [v3 setObject:MEMORY[0x1E695E110] forKeyedSubscript:@"allowsEditing"];
        [v3 setObject:v104 forKeyedSubscript:@"allowsCardActions"];
        v105 = @"allowsAddingToAddressBook";
        break;
      default:
        goto LABEL_83;
    }

    [v3 setObject:v104 forKeyedSubscript:v105];
  }

LABEL_83:
  [v102 setObject:v3 forKeyedSubscript:@"Properties"];
  v115 = [*(v103 + 1768) currentEnvironment];
  v116 = [v115 entitlementVerifier];
  v117 = [v116 currentProcessHasBooleanEntitlement:*MEMORY[0x1E69964E8] error:0];

  if (v117)
  {
    v118 = [MEMORY[0x1E696AD98] numberWithBool:{-[CNContactViewController ignoresParentalRestrictions](self, "ignoresParentalRestrictions")}];
    [v102 setObject:v118 forKeyedSubscript:@"ignoresParentalRestrictions"];
  }

  v119 = [(CNContactViewController *)self prohibitedPropertyKeys];
  [v102 setObject:v119 forKeyedSubscript:@"prohibitedPropertyKeys"];

  v120 = [(CNContactViewController *)self viewController];
  v127[0] = MEMORY[0x1E69E9820];
  v127[1] = 3221225472;
  v127[2] = __47__CNContactViewController__setupViewController__block_invoke;
  v127[3] = &unk_1E74E5CD8;
  v128 = v3;
  v129 = self;
  v121 = v3;
  [v120 setupWithOptions:v102 readyBlock:v127];

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

- (void)setContact:(id)a3 additionalContact:(id)a4 mode:(int64_t)a5
{
  v8 = a3;
  v9 = a4;
  contact = self->_contact;
  self->_contact = v8;
  v11 = v8;

  additionalContact = self->_additionalContact;
  self->_additionalContact = v9;

  self->_mode = a5;
  [(CNContactViewController *)self setRequiresSetup:1];

  [(CNContactViewController *)self setHasCompletedSetup:0];
}

- (void)_setViewController:(id)a3
{
  v4 = a3;
  [v4 setDelegate:self];
  v5 = [(CNContactViewController *)self pptDelegate];
  [v4 setPptDelegate:v5];

  [(CNContactViewController *)self setViewController:v4];
  [(CNContactViewController *)self _setupViewController];
  [(UIViewController *)self cnui_addChildViewController:v4];

  v6 = [(CNContactViewController *)self viewController];
  [v6 preferredContentSize];
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
  v3 = [(CNContactViewController *)self viewController];
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

- (void)viewDidDisappear:(BOOL)a3
{
  v5.receiver = self;
  v5.super_class = CNContactViewController;
  [(CNContactViewController *)&v5 viewDidDisappear:a3];
  v4 = [(CNContactViewController *)self navigationItem];
  [(CNContactViewController *)self setupNavBarAppearance:v4 asOpaqueWhenScrolled:0];
}

- (void)viewDidAppear:(BOOL)a3
{
  v5.receiver = self;
  v5.super_class = CNContactViewController;
  [(CNContactViewController *)&v5 viewDidAppear:a3];
  if ([*MEMORY[0x1E69DDA98] isPPTAvailable])
  {
    v4 = [MEMORY[0x1E696AD88] defaultCenter];
    [v4 postNotificationName:@"PPTDidShowContact" object:self];
  }
}

- (void)viewWillAppear:(BOOL)a3
{
  v12.receiver = self;
  v12.super_class = CNContactViewController;
  [(CNContactViewController *)&v12 viewWillAppear:a3];
  if ([(CNContactViewController *)self _shouldBeOutOfProcess])
  {
    v4 = [(CNContactViewController *)self navigationController];
    v5 = [v4 navigationBar];
    v6 = [(CNContactViewController *)self view];
    [v6 bounds];
    [v5 _setRequestedMaxBackButtonWidth:v7 / 3.0];
  }

  v8 = [(CNContactViewController *)self navigationController];
  v9 = [v8 navigationBar];
  if ([v9 isTranslucent])
  {
  }

  else
  {
    v10 = [(CNContactViewController *)self navigationItem];
    v11 = [v10 _backgroundHidden];

    if (v11)
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
    v3 = +[CNUIColorRepository transparentBackgroundColor];
LABEL_3:
    v4 = v3;
    v5 = [(CNContactViewController *)self view];
    [v5 setBackgroundColor:v4];
LABEL_6:

    goto LABEL_7;
  }

  v6 = +[CNContactStyle currentStyle];
  v7 = [v6 backgroundColor];

  v8 = +[CNContactStyle currentStyle];
  v4 = v8;
  if (v7)
  {
    v5 = [v8 backgroundColor];
    v9 = [(CNContactViewController *)self view];
    [v9 setBackgroundColor:v5];

    goto LABEL_6;
  }

  v10 = [v8 usesOpaqueBackground];

  if (v10 && [(CNContactViewController *)self _shouldBeOutOfProcess])
  {
    v3 = [MEMORY[0x1E69DC888] systemGroupedBackgroundColor];
    goto LABEL_3;
  }

LABEL_7:
  [(CNContactViewController *)self _viewWillBePresented];
}

- (CNContactContentViewController)contentViewController
{
  v3 = [(CNContactViewController *)self viewController];

  if (!v3)
  {
    [(CNContactViewController *)self _prepareViewController];
  }

  return [(CNContactViewController *)self viewController];
}

- (id)confirmCancelAlertControllerAnchoredAtButtonItem:(id)a3
{
  v4 = a3;
  v5 = [(CNContactViewController *)self contact];
  v6 = [v5 hasBeenPersisted];
  v7 = CNContactsUIBundle();
  v8 = v7;
  if (v6)
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

  if (v4)
  {
    v20 = [v11 popoverPresentationController];
    [v20 setBarButtonItem:v4];
  }

  else
  {
    v21 = [(CNContactViewController *)self view];
    v22 = [v11 popoverPresentationController];
    [v22 setSourceView:v21];

    v23 = *MEMORY[0x1E695F058];
    v24 = *(MEMORY[0x1E695F058] + 8);
    v25 = *(MEMORY[0x1E695F058] + 16);
    v26 = *(MEMORY[0x1E695F058] + 24);
    v20 = [v11 popoverPresentationController];
    [v20 setSourceRect:{v23, v24, v25, v26}];
  }

  v27 = [v11 popoverPresentationController];
  [v27 setPermittedArrowDirections:1];

  return v11;
}

void __76__CNContactViewController_confirmCancelAlertControllerAnchoredAtButtonItem___block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) viewController];
  [v1 performConfirmedCancel];
}

- (void)presentConfirmCancelAlertControllerAnchoredAtButtonItem:(id)a3
{
  v4 = [(CNContactViewController *)self confirmCancelAlertControllerAnchoredAtButtonItem:a3];
  [(CNContactViewController *)self presentViewController:v4 animated:1 completion:0];
}

- (void)presentCancelConfirmationAlert
{
  v8 = [(CNContactViewController *)self navigationItemController];
  v3 = [MEMORY[0x1E69966E8] currentEnvironment];
  v4 = [v3 featureFlags];
  v5 = [v4 isFeatureEnabled:29];

  if (v5)
  {
    v6 = [(CNContactViewController *)self sharedNavigationBar];
    [v6 cancelButton];
  }

  else
  {
    v6 = [v8 navigationItem];
    [v6 leftBarButtonItem];
  }
  v7 = ;
  [(CNContactViewController *)self presentConfirmCancelAlertControllerAnchoredAtButtonItem:v7];
}

- (void)presentationControllerDidAttemptToDismiss:(id)a3
{
  if (![(CNContactViewController *)self _shouldBeOutOfProcess])
  {
    v4 = [(CNContactViewController *)self contentViewController];
    v5 = [v4 hasPendingChanges];

    v6 = [(CNContactViewController *)self contentViewController];
    v7 = v6;
    if (v5)
    {
      [v6 presentConfirmCancelAlertController];
    }

    else
    {
      [v6 performConfirmedCancel];
    }
  }
}

- (BOOL)presentationControllerShouldDismiss:(id)a3
{
  if ([(CNContactViewController *)self _shouldBeOutOfProcess])
  {
    LOBYTE(v4) = 1;
  }

  else
  {
    v5 = [(CNContactViewController *)self contentViewController];
    v4 = [v5 hasPendingChanges] ^ 1;
  }

  return v4;
}

- (BOOL)isModalInPresentation
{
  if ([(CNContactViewController *)self _shouldBeOutOfProcess])
  {
    v3 = [(CNContactViewController *)self viewController];
    v4 = [v3 isModalInPresentation];
  }

  else
  {
    v3 = [(CNContactViewController *)self contentViewController];
    v4 = [v3 hasPendingChanges];
  }

  v5 = v4;

  return v5;
}

- (void)setShouldShowSharedProfileBanner:(BOOL)a3
{
  if (self->_shouldShowSharedProfileBanner != a3)
  {
    v4 = a3;
    self->_shouldShowSharedProfileBanner = a3;
    v5 = [(CNContactViewController *)self contentViewController];
    [v5 setShouldShowSharedProfileBanner:v4];
  }
}

- (void)setUsesBrandedCallHeaderFormat:(BOOL)a3
{
  if (self->_usesBrandedCallHeaderFormat != a3)
  {
    v4 = a3;
    self->_usesBrandedCallHeaderFormat = a3;
    v5 = [(CNContactViewController *)self contentViewController];
    [v5 setUsesBrandedCallHeaderFormat:v4];
  }
}

- (void)setForcesTransparentBackground:(BOOL)a3
{
  if (self->_forcesTransparentBackground != a3)
  {
    v4 = a3;
    self->_forcesTransparentBackground = a3;
    v5 = [(CNContactViewController *)self contentViewController];
    [v5 setForcesTransparentBackground:v4];
  }
}

- (void)setShouldUseModernNavigationBarHiding:(BOOL)a3
{
  if (self->_shouldUseModernNavigationBarHiding != a3)
  {
    self->_shouldUseModernNavigationBarHiding = a3;
    v5 = [(CNContactViewController *)self navigationItem];
    [(CNContactViewController *)self configureNavigationItem:v5];
  }
}

- (void)setShouldDrawNavigationBar:(BOOL)a3
{
  if (self->_shouldDrawNavigationBar != a3)
  {
    self->_shouldDrawNavigationBar = a3;
    v4 = [(CNContactViewController *)self navigationItem];
    [v4 _setBackgroundHidden:!self->_shouldDrawNavigationBar];
  }
}

- (void)setInitialPrompt:(id)a3
{
  v7 = a3;
  if (![(NSString *)self->_initialPrompt isEqualToString:?])
  {
    objc_storeStrong(&self->_initialPrompt, a3);
    initialPrompt = self->_initialPrompt;
    v6 = [(CNContactViewController *)self navigationItem];
    [v6 setPrompt:initialPrompt];
  }
}

- (void)setRequiresSetup:(BOOL)a3
{
  if (self->_requiresSetup != a3)
  {
    self->_requiresSetup = a3;
    if ([(CNContactViewController *)self isViewLoaded])
    {
      v4 = [(CNContactViewController *)self view];
      [v4 setNeedsLayout];
    }
  }
}

- (void)setEditing:(BOOL)a3 animated:(BOOL)a4
{
  v4 = a4;
  v5 = a3;
  if ([(CNContactViewController *)self isEditing]!= a3)
  {
    v8.receiver = self;
    v8.super_class = CNContactViewController;
    [(CNContactViewController *)&v8 setEditing:v5 animated:v4];
    v7 = [(CNContactViewController *)self viewController];
    [v7 didChangeToEditMode:v5];
  }
}

- (void)highlightPropertyWithKey:(id)a3 identifier:(id)a4 important:(BOOL)a5
{
  v5 = a5;
  v8 = a4;
  [(CNContactViewController *)self setHighlightedPropertyKey:a3];
  [(CNContactViewController *)self setHighlightedPropertyIdentifier:v8];

  [(CNContactViewController *)self setHighlightedPropertyImportant:v5];
}

- (void)setAllowsEditing:(BOOL)allowsEditing
{
  v3 = allowsEditing;
  v5 = [(CNContactViewController *)self editMode];
  if (v3)
  {
    if (v5)
    {
      return;
    }

    v6 = 1;
  }

  else
  {
    if (!v5)
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

- (id)_primaryPropertyStringForContact:(id)a3
{
  v4 = a3;
  v5 = [(CNContactViewController *)self primaryPropertyKey];
  v6 = [v5 isEqualToString:*MEMORY[0x1E695C330]];

  if (v6)
  {
    v7 = [v4 phoneNumbers];
    v8 = [v7 firstObject];

    v9 = [v8 value];
    v10 = [v9 formattedStringValue];
LABEL_3:
    v11 = v10;

LABEL_6:
    goto LABEL_7;
  }

  v12 = [(CNContactViewController *)self primaryPropertyKey];
  v13 = [v12 isEqualToString:*MEMORY[0x1E695C208]];

  if (v13)
  {
    v14 = [v4 emailAddresses];
    v8 = [v14 firstObject];

    v11 = [v8 value];
    goto LABEL_6;
  }

  v16 = [(CNContactViewController *)self primaryPropertyKey];
  v17 = [v16 isEqualToString:*MEMORY[0x1E695C360]];

  if (v17)
  {
    v18 = [v4 postalAddresses];
    v8 = [v18 firstObject];

    v9 = [v8 value];
    v10 = [MEMORY[0x1E695CF68] stringFromPostalAddress:v9 style:0];
    goto LABEL_3;
  }

  v11 = 0;
LABEL_7:

  return v11;
}

- (id)_contactPresentedViewController
{
  v2 = self;
  v3 = [(CNContactViewController *)v2 delegate];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    v5 = [(CNContactViewController *)v2 delegate];
    v6 = [v5 contactPresentedViewController:v2];

    v2 = v6;
  }

  return v2;
}

- (void)dealloc
{
  v3 = [MEMORY[0x1E696AD88] defaultCenter];
  [v3 removeObserver:self];

  v4 = [(CNContactViewController *)self observedNavigationItem];
  [v4 removeObserver:self forKeyPath:@"title"];

  [(CNContactViewController *)self setObservedNavigationItem:0];
  [(CNContactContentViewController *)self->_contentViewController setContactDelegate:0];
  v5.receiver = self;
  v5.super_class = CNContactViewController;
  [(CNContactViewController *)&v5 dealloc];
}

- (CNContactViewController)initWithMode:(int64_t)a3
{
  v10.receiver = self;
  v10.super_class = CNContactViewController;
  v4 = [(CNContactViewController *)&v10 initWithNibName:0 bundle:0];
  v5 = v4;
  if (v4)
  {
    v4->_mode = a3;
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
    v8 = [(CNContactViewController *)v5 navigationItem];
    [(CNContactViewController *)v5 configureNavigationItem:v8];
  }

  return v5;
}

+ (id)viewControllerForEditedDraftContact:(id)a3
{
  v11[1] = *MEMORY[0x1E69E9840];
  if (a3)
  {
    v4 = a3;
    v5 = [a1 descriptorForRequiredKeys];
    v11[0] = v5;
    v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v11 count:1];
    [v4 assertKeysAreAvailable:v6];

    v7 = [[a1 alloc] initWithMode:4];
    v8 = CNContactsUIBundle();
    v9 = [v8 localizedStringForKey:@"CREATE_DRAFT_CONTACT_TITLE" value:&stru_1F0CE7398 table:@"Localized"];
    [v7 setTitle:v9];

    [v7 setContact:v4];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

+ (id)viewControllerForNewDraftContact:(id)a3
{
  v13[1] = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (v4)
  {
    v5 = v4;
    v6 = [v4 copyWithDistinctIdentifier];

    v7 = [a1 descriptorForRequiredKeys];
    v13[0] = v7;
    v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v13 count:1];
    [v6 assertKeysAreAvailable:v8];

    v9 = [[a1 alloc] initWithMode:3];
    v10 = CNContactsUIBundle();
    v11 = [v10 localizedStringForKey:@"CREATE_DRAFT_CONTACT_TITLE" value:&stru_1F0CE7398 table:@"Localized"];
    [v9 setTitle:v11];

    [v9 setContact:v6];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

+ (id)viewControllerForUpdatingContact:(id)a3 withPublicAccountIdentity:(id)a4
{
  v12[1] = *MEMORY[0x1E69E9840];
  if (a3)
  {
    v6 = a4;
    v7 = a3;
    v8 = [a1 descriptorForRequiredKeys];
    v12[0] = v8;
    v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v12 count:1];
    [v7 assertKeysAreAvailable:v9];

    v10 = [[a1 alloc] initWithMode:4];
    [v10 setContact:v7];

    [v10 setStaticIdentity:v6];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

+ (id)viewControllerForUpdatingContact:(id)a3 withPropertiesFromContact:(id)a4
{
  v14[1] = *MEMORY[0x1E69E9840];
  v6 = a4;
  v7 = a3;
  v8 = [a1 descriptorForRequiredKeys];
  v14[0] = v8;
  v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v14 count:1];
  [v7 assertKeysAreAvailable:v9];

  v10 = [a1 alloc];
  if ([v6 isSuggested])
  {
    v11 = 5;
  }

  else
  {
    v11 = 4;
  }

  v12 = [v10 initWithMode:v11];
  [v12 setContact:v7];

  [v12 setAdditionalContact:v6];

  return v12;
}

+ (CNContactViewController)viewControllerForNewContact:(CNContact *)contact
{
  v11[1] = *MEMORY[0x1E69E9840];
  v4 = contact;
  v5 = [a1 descriptorForRequiredKeys];
  v11[0] = v5;
  v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v11 count:1];
  [(CNContact *)v4 assertKeysAreAvailable:v6];

  v7 = [[a1 alloc] initWithMode:3];
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
  v5 = [a1 descriptorForRequiredKeys];
  v13[0] = v5;
  v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v13 count:1];
  [(CNContact *)v4 assertKeysAreAvailable:v6];

  if (![(CNContact *)v4 isUnknown])
  {
    _CNUILog("/Library/Caches/com.apple.xbs/Sources/ContactsUI/Framework/CNContactViewController.m", 135, 3, @"Behavior of CNContactViewController created with viewControllerForUnknownContact: and passing a known contact is undefined. Please use +viewControllerForContact: instead.", v7, v8, v9, v10, v13[0]);
  }

  v11 = [[a1 alloc] initWithMode:2];
  [v11 setContact:v4];

  return v11;
}

+ (CNContactViewController)viewControllerForContact:(CNContact *)contact
{
  v14[1] = *MEMORY[0x1E69E9840];
  v4 = contact;
  v5 = [a1 descriptorForRequiredKeys];
  v14[0] = v5;
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

  v12 = [[a1 alloc] initWithMode:v11];
  [v12 setContact:v4];

  return v12;
}

@end