@interface CNAccountsAndGroupsViewController
+ (id)log;
- (BOOL)collectionView:(id)view canFocusItemAtIndexPath:(id)path;
- (BOOL)collectionView:(id)view canHandleDropSession:(id)session;
- (BOOL)collectionView:(id)view shouldSelectItemAtIndexPath:(id)path;
- (BOOL)editingCollectionViewRequiresAuthorization;
- (BOOL)isAnyListCellCurrentlyEditing;
- (BOOL)isCollectionViewEditing;
- (BOOL)isNotificationInternalSave:(id)save;
- (BOOL)shouldEnableItem:(id)item;
- (BOOL)shouldSetFirstResponder;
- (BOOL)shouldShowCancelButton;
- (BOOL)viewCanReload;
- (CNAccountsAndGroupsViewController)initWithNibName:(id)name bundle:(id)bundle;
- (CNAccountsAndGroupsViewControllerDelegate)delegate;
- (UIBarButtonItem)addGroupBarButtonItem;
- (UIBarButtonItem)cancelBarButtonItem;
- (UIKeyCommand)addGroupKeyCommand;
- (id)collectionView:(id)view contextMenuConfiguration:(id)configuration dismissalPreviewForItemAtIndexPath:(id)path;
- (id)collectionView:(id)view contextMenuConfiguration:(id)configuration highlightPreviewForItemAtIndexPath:(id)path;
- (id)collectionView:(id)view contextMenuConfigurationForItemsAtIndexPaths:(id)paths point:(CGPoint)point;
- (id)collectionView:(id)view dropSessionDidUpdate:(id)update withDestinationIndexPath:(id)path;
- (id)currentlySelectedItem;
- (id)fakeBackButton;
- (id)groupsStyle;
- (id)layout;
- (id)menuForContainers;
- (id)multitaskingDragExclusionRects;
- (void)_updateUserActivity;
- (void)acceptedIntroductionsDidChange;
- (void)action:(id)action presentViewController:(id)controller;
- (void)addAcceptedIntroductionsNotifier;
- (void)addDefaultGroup:(id)group;
- (void)authorizedAddContacts:(id)contacts toDestinationItem:(id)item;
- (void)authorizedSetCollectionViewEditing:(BOOL)editing;
- (void)authorizedSetViewEditing:(BOOL)editing animated:(BOOL)animated;
- (void)cancel:(id)cancel;
- (void)cellTextViewDidChangeHeight;
- (void)cleanUpItemIfNeeded:(id)needed;
- (void)clearNavigationButtonsIfNeeded;
- (void)collectionView:(id)view didSelectItemAtIndexPath:(id)path;
- (void)collectionView:(id)view performDropWithCoordinator:(id)coordinator;
- (void)collectionView:(id)view willDisplayCell:(id)cell forItemAtIndexPath:(id)path;
- (void)collectionView:(id)view willEndContextMenuInteractionWithConfiguration:(id)configuration animator:(id)animator;
- (void)configureDataSource;
- (void)configureNavigationBar;
- (void)contactStoreDidChange:(id)change;
- (void)dealloc;
- (void)deselectAllItems;
- (void)didTapCollectionView:(id)view;
- (void)dismissKeyboard;
- (void)editAuthorizationController:(id)controller authorizationDidFinishWithResult:(int64_t)result;
- (void)expandSectionForAccountWithIdentifier:(id)identifier;
- (void)goBack:(id)back;
- (void)item:(id)item didEndEditingWithName:(id)name;
- (void)keyboardWillHide:(id)hide;
- (void)keyboardWillShow:(id)show;
- (void)presentController:(id)controller animated:(BOOL)animated;
- (void)presentErrorAlertWithTitle:(id)title message:(id)message animated:(BOOL)animated;
- (void)reloadAddGroupButton;
- (void)reloadCollectionViewAddingPlaceholderItem:(id)item inSectionWithIdentifier:(id)identifier;
- (void)reloadCollectionViewDeletingItem:(id)item;
- (void)reloadCollectionViewForSectionWithIdentifier:(id)identifier settingFilterForEditingItem:(BOOL)item allowsReloadWhenEditing:(BOOL)editing;
- (void)reloadData;
- (void)removePlaceholderCellsIfNeededInSection:(id)section animated:(BOOL)animated;
- (void)resignAllFirstRespondersSavingCurrentlyEditing:(BOOL)editing;
- (void)restoreCurrentlyEditingGroupIfNeeded;
- (void)selectAllContacts;
- (void)setDataSource:(id)source;
- (void)setEditing:(BOOL)editing animated:(BOOL)animated;
- (void)setEditingForGroupItem:(id)item;
- (void)setUpCollectionView;
- (void)showEditAuthorizationPaneWithAuthorizationContext:(id)context animated:(BOOL)animated;
- (void)traitCollectionDidChange:(id)change;
- (void)updateNavigationButtons;
- (void)updateSelectionIfNeeded;
- (void)updateToolbarVisibility;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidDisappear:(BOOL)disappear;
- (void)viewDidLoad;
- (void)viewIsAppearing:(BOOL)appearing;
- (void)viewWillAppear:(BOOL)appear;
- (void)viewWillDisappear:(BOOL)disappear;
@end

@implementation CNAccountsAndGroupsViewController

- (void)addAcceptedIntroductionsNotifier
{
  currentEnvironment = [MEMORY[0x1E69966E8] currentEnvironment];
  featureFlags = [currentEnvironment featureFlags];
  v5 = [featureFlags isFeatureEnabled:19];

  if (v5)
  {
    objc_initWeak(&location, self);
    v6 = MEMORY[0x1E695CE50];
    v9 = MEMORY[0x1E69E9820];
    v10 = 3221225472;
    v11 = __69__CNAccountsAndGroupsViewController_addAcceptedIntroductionsNotifier__block_invoke;
    v12 = &unk_1E74E6C98;
    objc_copyWeak(&v13, &location);
    v7 = [v6 acceptedIntroductionsNotifierWithBlock:&v9];
    acceptedIntroductionsNotifier = self->_acceptedIntroductionsNotifier;
    self->_acceptedIntroductionsNotifier = v7;

    [(CNCoreRecentsChangeNotifier *)self->_acceptedIntroductionsNotifier startObserving:v9];
    objc_destroyWeak(&v13);
    objc_destroyWeak(&location);
  }
}

- (CNAccountsAndGroupsViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)_updateUserActivity
{
  v20 = *MEMORY[0x1E69E9840];
  if (CNUIIsContacts() || CNUIIsMobilePhone())
  {
    v3 = [objc_opt_class() log];
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      mainBundle = [MEMORY[0x1E696AAE8] mainBundle];
      bundleIdentifier = [mainBundle bundleIdentifier];
      v16 = 138412290;
      selfCopy2 = bundleIdentifier;
      _os_log_impl(&dword_199A75000, v3, OS_LOG_TYPE_INFO, "Activity continuity - running in %@", &v16, 0xCu);
    }

    activityManager = [(CNAccountsAndGroupsViewController *)self activityManager];
    makeActivityAdvertisingViewingGroups = [activityManager makeActivityAdvertisingViewingGroups];

    userActivity = [(CNAccountsAndGroupsViewController *)self userActivity];
    v9 = userActivity;
    if (makeActivityAdvertisingViewingGroups)
    {

      if (!v9)
      {
        [(CNAccountsAndGroupsViewController *)self setUserActivity:makeActivityAdvertisingViewingGroups];
        userActivity2 = [(CNAccountsAndGroupsViewController *)self userActivity];
        [userActivity2 becomeCurrent];

        v11 = [objc_opt_class() log];
        if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
        {
          userActivity3 = [(CNAccountsAndGroupsViewController *)self userActivity];
          v16 = 138412546;
          selfCopy2 = self;
          v18 = 2112;
          v19 = userActivity3;
          _os_log_impl(&dword_199A75000, v11, OS_LOG_TYPE_INFO, "Activity continuity -  %@ created %@", &v16, 0x16u);
        }
      }

      userActivity4 = [(CNAccountsAndGroupsViewController *)self userActivity];
      [userActivity4 setNeedsSave:1];
    }

    else
    {
      [userActivity resignCurrent];

      v14 = [objc_opt_class() log];
      if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
      {
        userActivity5 = [(CNAccountsAndGroupsViewController *)self userActivity];
        v16 = 138412546;
        selfCopy2 = self;
        v18 = 2112;
        v19 = userActivity5;
        _os_log_impl(&dword_199A75000, v14, OS_LOG_TYPE_INFO, "Activity continuity -  %@ removed %@", &v16, 0x16u);
      }

      [(CNAccountsAndGroupsViewController *)self setUserActivity:0];
    }
  }
}

- (void)action:(id)action presentViewController:(id)controller
{
  controllerCopy = controller;
  popoverPresentationController = [controllerCopy popoverPresentationController];
  sourceView = [popoverPresentationController sourceView];

  if (!sourceView)
  {
    collectionView = [(CNAccountsAndGroupsViewController *)self collectionView];
    popoverPresentationController2 = [controllerCopy popoverPresentationController];
    [popoverPresentationController2 setSourceView:collectionView];

    collectionView2 = [(CNAccountsAndGroupsViewController *)self collectionView];
    [collectionView2 bounds];
    v11 = v10;
    v13 = v12;
    v15 = v14;
    v17 = v16;
    popoverPresentationController3 = [controllerCopy popoverPresentationController];
    [popoverPresentationController3 setSourceRect:{v11, v13, v15, v17}];
  }

  [(CNAccountsAndGroupsViewController *)self presentController:controllerCopy animated:1];
}

- (void)keyboardWillHide:(id)hide
{
  v3 = *MEMORY[0x1E69DDCE0];
  v4 = *(MEMORY[0x1E69DDCE0] + 8);
  v5 = *(MEMORY[0x1E69DDCE0] + 16);
  v6 = *(MEMORY[0x1E69DDCE0] + 24);
  collectionView = [(CNAccountsAndGroupsViewController *)self collectionView];
  [collectionView setContentInset:{v3, v4, v5, v6}];
}

- (void)keyboardWillShow:(id)show
{
  userInfo = [show userInfo];
  v5 = [userInfo objectForKeyedSubscript:*MEMORY[0x1E69DDFA0]];
  [v5 CGRectValue];
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;

  collectionView = [(CNAccountsAndGroupsViewController *)self collectionView];
  window = [collectionView window];
  [window convertRect:0 fromWindow:{v7, v9, v11, v13}];
  v16 = v15;
  v18 = v17;
  v20 = v19;
  v22 = v21;

  [collectionView convertRect:0 fromView:{v16, v18, v20, v22}];
  v24 = v23;
  collectionView2 = [(CNAccountsAndGroupsViewController *)self collectionView];
  [collectionView2 contentInset];
  v27 = v26;
  v29 = v28;
  v31 = v30;

  collectionView3 = [(CNAccountsAndGroupsViewController *)self collectionView];
  [collectionView3 setContentInset:{v27, v29, v24, v31}];
}

- (void)dismissKeyboard
{
  view = [(CNAccountsAndGroupsViewController *)self view];
  [view endEditing:1];
}

- (void)didTapCollectionView:(id)view
{
  viewCopy = view;
  collectionView = [(CNAccountsAndGroupsViewController *)self collectionView];
  [viewCopy locationInView:collectionView];
  v7 = v6;

  collectionView2 = [(CNAccountsAndGroupsViewController *)self collectionView];
  [collectionView2 bounds];
  v10 = v9;

  collectionView3 = [(CNAccountsAndGroupsViewController *)self collectionView];
  collectionViewLayout = [collectionView3 collectionViewLayout];
  v13 = [collectionViewLayout layoutAttributesForElementsInRect:{0.0, v7, v10, 1.0}];

  if ((*(*MEMORY[0x1E6996530] + 16))())
  {
    [(CNAccountsAndGroupsViewController *)self dismissKeyboard];
  }
}

- (void)showEditAuthorizationPaneWithAuthorizationContext:(id)context animated:(BOOL)animated
{
  animatedCopy = animated;
  [(CNAccountsAndGroupsViewController *)self setCurrentAuthorizationContext:context];
  v6 = objc_alloc_init(CNUIEditAuthorizationController);
  [(CNAccountsAndGroupsViewController *)self setEditAuthorizationController:v6];

  editAuthorizationController = [(CNAccountsAndGroupsViewController *)self editAuthorizationController];
  [editAuthorizationController setDelegate:self];

  editAuthorizationController2 = [(CNAccountsAndGroupsViewController *)self editAuthorizationController];
  [editAuthorizationController2 setSender:self];

  editAuthorizationController3 = [(CNAccountsAndGroupsViewController *)self editAuthorizationController];
  [editAuthorizationController3 setAnimated:animatedCopy];

  editAuthorizationController4 = [(CNAccountsAndGroupsViewController *)self editAuthorizationController];
  [editAuthorizationController4 setGuardedViewController:self];

  editAuthorizationController5 = [(CNAccountsAndGroupsViewController *)self editAuthorizationController];
  [editAuthorizationController5 presentAuthorizationUI];
}

- (void)presentErrorAlertWithTitle:(id)title message:(id)message animated:(BOOL)animated
{
  animatedCopy = animated;
  v11 = [MEMORY[0x1E69DC650] alertControllerWithTitle:title message:message preferredStyle:1];
  v7 = MEMORY[0x1E69DC648];
  v8 = CNContactsUIBundle();
  v9 = [v8 localizedStringForKey:@"OKAY" value:&stru_1F0CE7398 table:@"Localized"];
  v10 = [v7 actionWithTitle:v9 style:0 handler:0];

  [v11 addAction:v10];
  [(CNAccountsAndGroupsViewController *)self presentController:v11 animated:animatedCopy];
}

- (void)presentController:(id)controller animated:(BOOL)animated
{
  animatedCopy = animated;
  controllerCopy = controller;
  [(CNAccountsAndGroupsViewController *)self setPotentiallyPresentedViewController:controllerCopy];
  [(CNAccountsAndGroupsViewController *)self presentViewController:controllerCopy animated:animatedCopy completion:0];
}

- (void)editAuthorizationController:(id)controller authorizationDidFinishWithResult:(int64_t)result
{
  [(CNAccountsAndGroupsViewController *)self setEditAuthorizationController:0];
  currentAuthorizationContext = [(CNAccountsAndGroupsViewController *)self currentAuthorizationContext];

  if (!currentAuthorizationContext)
  {
    return;
  }

  if (result < 2)
  {
    currentAuthorizationContext2 = [(CNAccountsAndGroupsViewController *)self currentAuthorizationContext];
    actionCompletionHandler = [currentAuthorizationContext2 actionCompletionHandler];

    if (!actionCompletionHandler)
    {
      return;
    }

    currentAuthorizationContext3 = [(CNAccountsAndGroupsViewController *)self currentAuthorizationContext];
    actionCompletionHandler2 = [currentAuthorizationContext3 actionCompletionHandler];
    actionCompletionHandler2[2](actionCompletionHandler2, 0);
    goto LABEL_20;
  }

  if (result != 2)
  {
    return;
  }

  currentAuthorizationContext4 = [(CNAccountsAndGroupsViewController *)self currentAuthorizationContext];
  type = [currentAuthorizationContext4 type];

  if (type <= 1)
  {
    if (type)
    {
      if (type != 1)
      {
        return;
      }

      currentAuthorizationContext3 = [(CNAccountsAndGroupsViewController *)self actionsProvider];
      actionCompletionHandler2 = [(CNAccountsAndGroupsViewController *)self currentAuthorizationContext];
      cell = [actionCompletionHandler2 cell];
      [currentAuthorizationContext3 authorizedEditGroupNameForCell:cell];
      goto LABEL_19;
    }

    currentAuthorizationContext3 = [(CNAccountsAndGroupsViewController *)self currentAuthorizationContext];
    contactsToAddToDropDestination = [currentAuthorizationContext3 contactsToAddToDropDestination];
    currentAuthorizationContext5 = [(CNAccountsAndGroupsViewController *)self currentAuthorizationContext];
    item = [currentAuthorizationContext5 item];
    [(CNAccountsAndGroupsViewController *)self authorizedAddContacts:contactsToAddToDropDestination toDestinationItem:item];

LABEL_25:
    goto LABEL_21;
  }

  switch(type)
  {
    case 2:
      currentAuthorizationContext3 = [(CNAccountsAndGroupsViewController *)self actionsProvider];
      contactsToAddToDropDestination = [(CNAccountsAndGroupsViewController *)self currentAuthorizationContext];
      currentAuthorizationContext5 = [contactsToAddToDropDestination item];
      currentAuthorizationContext6 = [(CNAccountsAndGroupsViewController *)self currentAuthorizationContext];
      actionCompletionHandler3 = [currentAuthorizationContext6 actionCompletionHandler];
      [currentAuthorizationContext3 authorizedDeleteGroupForItem:currentAuthorizationContext5 completionHandler:actionCompletionHandler3];

      goto LABEL_25;
    case 3:
      currentAuthorizationContext3 = [(CNAccountsAndGroupsViewController *)self actionsProvider];
      actionCompletionHandler2 = [(CNAccountsAndGroupsViewController *)self currentAuthorizationContext];
      cell = [actionCompletionHandler2 containerItem];
      [currentAuthorizationContext3 authorizedCreateGroupActionForContainerItem:cell];
LABEL_19:

LABEL_20:
LABEL_21:

      return;
    case 4:

      [(CNAccountsAndGroupsViewController *)self authorizedSetViewEditing:1 animated:1];
      break;
  }
}

- (void)authorizedAddContacts:(id)contacts toDestinationItem:(id)item
{
  v19 = *MEMORY[0x1E69E9840];
  contactsCopy = contacts;
  itemCopy = item;
  dataSource = [(CNAccountsAndGroupsViewController *)self dataSource];
  v9 = [dataSource containerIdentifierForItem:itemCopy];

  if ((*(*MEMORY[0x1E6996570] + 16))())
  {
    dataSource2 = [(CNAccountsAndGroupsViewController *)self dataSource];
    v11 = [dataSource2 groupIdentifierForGroupItem:itemCopy];

    groupsAndContainersSaveManager = [(CNAccountsAndGroupsViewController *)self groupsAndContainersSaveManager];
    v13 = [groupsAndContainersSaveManager addContacts:contactsCopy toGroupWithIdentifier:v11 inContainerWithIdentifier:v9 moveWasAuthorized:1];

    dataSource3 = [(CNAccountsAndGroupsViewController *)self dataSource];
    v15 = [dataSource3 sectionIdentifierForItem:itemCopy];

    if (v15)
    {
      [(CNAccountsAndGroupsViewController *)self reloadCollectionViewForSectionWithIdentifier:v15 settingFilterForEditingItem:0 allowsReloadWhenEditing:1];
    }
  }

  else
  {
    v16 = [objc_opt_class() log];
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      v17 = 138412290;
      v18 = itemCopy;
      _os_log_error_impl(&dword_199A75000, v16, OS_LOG_TYPE_ERROR, "Could not add contacts to item: %@, container identifier is nil", &v17, 0xCu);
    }
  }
}

- (void)collectionView:(id)view performDropWithCoordinator:(id)coordinator
{
  v35 = *MEMORY[0x1E69E9840];
  coordinatorCopy = coordinator;
  diffableDataSource = [(CNAccountsAndGroupsViewController *)self diffableDataSource];
  destinationIndexPath = [coordinatorCopy destinationIndexPath];
  v8 = [diffableDataSource itemIdentifierForIndexPath:destinationIndexPath];

  dataSource = [(CNAccountsAndGroupsViewController *)self dataSource];
  v10 = [dataSource containerIdentifierForItem:v8];

  groupsAndContainersSaveManager = [(CNAccountsAndGroupsViewController *)self groupsAndContainersSaveManager];
  v12 = [groupsAndContainersSaveManager containerForContainerIdentifier:v10];

  groupsAndContainersSaveManager2 = [(CNAccountsAndGroupsViewController *)self groupsAndContainersSaveManager];
  v14 = [groupsAndContainersSaveManager2 acAccountForContainer:v12];

  if (v12)
  {
    v15 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v16 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v17 = objc_alloc_init(MEMORY[0x1E695DF70]);
    [coordinatorCopy session];
    v25 = coordinatorCopy;
    v19 = v18 = v10;
    v20 = objc_opt_class();
    v26[0] = MEMORY[0x1E69E9820];
    v26[1] = 3221225472;
    v26[2] = __79__CNAccountsAndGroupsViewController_collectionView_performDropWithCoordinator___block_invoke;
    v26[3] = &unk_1E74E2BA8;
    v26[4] = self;
    v27 = v14;
    v28 = v17;
    v29 = v12;
    v30 = v16;
    v31 = v15;
    v32 = v8;
    v21 = v15;
    v22 = v16;
    v23 = v17;
    v24 = [v19 loadObjectsOfClass:v20 completion:v26];

    v10 = v18;
    coordinatorCopy = v25;
  }

  else
  {
    v23 = [objc_opt_class() log];
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v34 = v8;
      _os_log_error_impl(&dword_199A75000, v23, OS_LOG_TYPE_ERROR, "Could not complete drop, failed to fetch container for destination item:%@", buf, 0xCu);
    }
  }
}

void __79__CNAccountsAndGroupsViewController_collectionView_performDropWithCoordinator___block_invoke(uint64_t a1, void *a2)
{
  v26 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v4 = [v3 countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v22;
    do
    {
      v7 = 0;
      do
      {
        if (*v22 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v21 + 1) + 8 * v7);
        v9 = [*(a1 + 32) groupsAndContainersSaveManager];
        v10 = *(a1 + 40);
        v11 = [*(a1 + 32) managedConfiguration];
        LODWORD(v10) = [v9 isMDMAuthorizedToAddContact:v8 toAccount:v10 withManagedConfiguration:v11];

        v12 = (a1 + 48);
        if (v10)
        {
          v13 = [*(a1 + 32) groupsAndContainersSaveManager];
          v14 = [v13 isAuthorizedToAddContact:v8 toContainer:*(a1 + 56) ignoresParentalRestrictions:0];

          v15 = 64;
          if (v14)
          {
            v15 = 72;
          }

          v12 = (a1 + v15);
        }

        [*v12 addObject:v8];
        ++v7;
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v21 objects:v25 count:16];
    }

    while (v5);
  }

  v16 = *MEMORY[0x1E6996530];
  if (((*(*MEMORY[0x1E6996530] + 16))(*MEMORY[0x1E6996530], *(a1 + 48)) & 1) == 0)
  {
    v17 = *(a1 + 32);
    v18 = CNContactsUIBundle();
    v19 = [v18 localizedStringForKey:@"DROP_FAILURE_MANAGED_ACCOUNT" value:&stru_1F0CE7398 table:@"Localized"];
    [v17 presentErrorAlertWithMessage:v19 animated:1];
  }

  if (((*(v16 + 16))(v16, *(a1 + 72)) & 1) == 0)
  {
    [*(a1 + 32) authorizedAddContacts:*(a1 + 72) toDestinationItem:*(a1 + 80)];
  }

  if (((*(v16 + 16))(v16, *(a1 + 64)) & 1) == 0)
  {
    v20 = objc_alloc_init(CNAccountsAndGroupsAuthorizationContext);
    [(CNAccountsAndGroupsAuthorizationContext *)v20 setType:0];
    [(CNAccountsAndGroupsAuthorizationContext *)v20 setItem:*(a1 + 80)];
    [(CNAccountsAndGroupsAuthorizationContext *)v20 setContactsToAddToDropDestination:*(a1 + 64)];
    [*(a1 + 32) showEditAuthorizationPaneWithAuthorizationContext:v20 animated:1];
  }
}

- (id)collectionView:(id)view dropSessionDidUpdate:(id)update withDestinationIndexPath:(id)path
{
  pathCopy = path;
  objc_opt_class();
  diffableDataSource = [(CNAccountsAndGroupsViewController *)self diffableDataSource];
  v8 = [diffableDataSource itemIdentifierForIndexPath:pathCopy];

  if (objc_opt_isKindOfClass())
  {
    v9 = v8;
  }

  else
  {
    v9 = 0;
  }

  v10 = v9;

  if (v10 && [v10 acceptsVCardDrop])
  {
    dataSource = [(CNAccountsAndGroupsViewController *)self dataSource];
    v12 = [dataSource containerIdentifierForItem:v10];

    if ((*(*MEMORY[0x1E6996570] + 16))())
    {
      if ([v10 type] == 2)
      {
        if ([v10 containerType] == 2)
        {
          v13 = 3;
        }

        else
        {
          v13 = 2;
        }
      }

      else
      {
        v13 = 2;
      }
    }

    else
    {
      v13 = 0;
    }
  }

  else
  {
    v13 = 0;
  }

  v14 = [objc_alloc(MEMORY[0x1E69DC838]) initWithDropOperation:v13 intent:2];

  return v14;
}

- (BOOL)collectionView:(id)view canHandleDropSession:(id)session
{
  sessionCopy = session;
  allowedDropTypes = [objc_opt_class() allowedDropTypes];
  v6 = [sessionCopy hasItemsConformingToTypeIdentifiers:allowedDropTypes];

  return v6;
}

- (id)multitaskingDragExclusionRects
{
  v12[1] = *MEMORY[0x1E69E9840];
  v2 = MEMORY[0x1E696B098];
  view = [(CNAccountsAndGroupsViewController *)self view];
  [view bounds];
  v11[0] = v4;
  v11[1] = v5;
  v11[2] = v6;
  v11[3] = v7;
  v8 = [v2 valueWithBytes:v11 objCType:"{CGRect={CGPoint=dd}{CGSize=dd}}"];
  v12[0] = v8;
  v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v12 count:1];

  return v9;
}

- (void)collectionView:(id)view willEndContextMenuInteractionWithConfiguration:(id)configuration animator:(id)animator
{
  identifier = [configuration identifier];
  collectionView = [(CNAccountsAndGroupsViewController *)self collectionView];
  v7 = [collectionView cellForItemAtIndexPath:identifier];

  objc_opt_class();
  v8 = v7;
  if (objc_opt_isKindOfClass())
  {
    v9 = v8;
  }

  else
  {
    v9 = 0;
  }

  v10 = v9;

  if (v10)
  {
    groupsStyle = [(CNAccountsAndGroupsViewController *)self groupsStyle];
    item = [v10 item];
    v13 = [groupsStyle cellAccessoriesForItem:item];
    [v10 setAccessories:v13];
  }
}

- (id)collectionView:(id)view contextMenuConfiguration:(id)configuration dismissalPreviewForItemAtIndexPath:(id)path
{
  pathCopy = path;
  collectionView = [(CNAccountsAndGroupsViewController *)self collectionView];
  v8 = [collectionView cellForItemAtIndexPath:pathCopy];

  objc_opt_class();
  v9 = v8;
  if (objc_opt_isKindOfClass())
  {
    v10 = v9;
  }

  else
  {
    v10 = 0;
  }

  v11 = v10;

  if (v11 && ([v11 window], v12 = objc_claimAutoreleasedReturnValue(), v12, v12))
  {
    groupsStyle = [(CNAccountsAndGroupsViewController *)self groupsStyle];
    item = [v11 item];
    v15 = [groupsStyle cellAccessoriesForItem:item];
    [v11 setAccessories:v15];

    v16 = objc_alloc_init(MEMORY[0x1E69DCE28]);
    groupsStyle2 = [(CNAccountsAndGroupsViewController *)self groupsStyle];
    backgroundColor = [groupsStyle2 backgroundColor];

    if (backgroundColor)
    {
      groupsStyle3 = [(CNAccountsAndGroupsViewController *)self groupsStyle];
      backgroundColor2 = [groupsStyle3 backgroundColor];
      [v16 setBackgroundColor:backgroundColor2];
    }

    groupsStyle4 = [(CNAccountsAndGroupsViewController *)self groupsStyle];
    isInset = [groupsStyle4 isInset];

    if ((isInset & 1) == 0)
    {
      v23 = MEMORY[0x1E69DC728];
      [v11 bounds];
      v24 = [v23 bezierPathWithRoundedRect:? cornerRadius:?];
      [v16 setVisiblePath:v24];
    }

    v25 = [objc_alloc(MEMORY[0x1E69DD070]) initWithView:v11 parameters:v16];
  }

  else
  {
    v25 = 0;
  }

  return v25;
}

- (id)collectionView:(id)view contextMenuConfiguration:(id)configuration highlightPreviewForItemAtIndexPath:(id)path
{
  pathCopy = path;
  collectionView = [(CNAccountsAndGroupsViewController *)self collectionView];
  v8 = [collectionView cellForItemAtIndexPath:pathCopy];

  objc_opt_class();
  v9 = v8;
  if (objc_opt_isKindOfClass())
  {
    v10 = v9;
  }

  else
  {
    v10 = 0;
  }

  v11 = v10;

  if (v11 && ([v11 window], v12 = objc_claimAutoreleasedReturnValue(), v12, v12))
  {
    groupsStyle = [(CNAccountsAndGroupsViewController *)self groupsStyle];
    item = [v11 item];
    v15 = [groupsStyle cellAccessoriesForContextMenuPreviewForItem:item];
    [v11 setAccessories:v15];

    v16 = objc_alloc_init(MEMORY[0x1E69DCE28]);
    groupsStyle2 = [(CNAccountsAndGroupsViewController *)self groupsStyle];
    backgroundColor = [groupsStyle2 backgroundColor];

    if (backgroundColor)
    {
      groupsStyle3 = [(CNAccountsAndGroupsViewController *)self groupsStyle];
      backgroundColor2 = [groupsStyle3 backgroundColor];
      [v16 setBackgroundColor:backgroundColor2];
    }

    v21 = MEMORY[0x1E69DC728];
    [v11 bounds];
    v22 = [v21 bezierPathWithRoundedRect:? cornerRadius:?];
    [v16 setVisiblePath:v22];

    v23 = [objc_alloc(MEMORY[0x1E69DD070]) initWithView:v11 parameters:v16];
  }

  else
  {
    v23 = 0;
  }

  return v23;
}

- (id)collectionView:(id)view contextMenuConfigurationForItemsAtIndexPaths:(id)paths point:(CGPoint)point
{
  viewCopy = view;
  pathsCopy = paths;
  if ([pathsCopy count] == 1)
  {
    firstObject = [pathsCopy firstObject];
    if (-[CNAccountsAndGroupsViewController allowsEditing](self, "allowsEditing") && (-[CNAccountsAndGroupsViewController collectionView](self, "collectionView"), v10 = objc_claimAutoreleasedReturnValue(), v11 = [v10 isEditing], v10, (v11 & 1) == 0))
    {
      objc_opt_class();
      diffableDataSource = [(CNAccountsAndGroupsViewController *)self diffableDataSource];
      v14 = [diffableDataSource itemIdentifierForIndexPath:firstObject];
      if (objc_opt_isKindOfClass())
      {
        v15 = v14;
      }

      else
      {
        v15 = 0;
      }

      v16 = v15;

      objc_opt_class();
      v17 = [viewCopy cellForItemAtIndexPath:firstObject];
      if (objc_opt_isKindOfClass())
      {
        v18 = v17;
      }

      else
      {
        v18 = 0;
      }

      v19 = v18;

      v12 = 0;
      if (v16 && v19)
      {
        identifier = [v16 identifier];
        dataSource = [(CNAccountsAndGroupsViewController *)self dataSource];
        currentlyEditingGroupIdentifier = [dataSource currentlyEditingGroupIdentifier];
        v23 = [identifier isEqualToString:currentlyEditingGroupIdentifier];

        if ((v23 & 1) != 0 || ![v16 canShowContextMenu])
        {
          v12 = 0;
        }

        else
        {
          actionsProvider = [(CNAccountsAndGroupsViewController *)self actionsProvider];
          v12 = [actionsProvider contextMenuConfigurationForItem:v16 cell:v19 atIndexPath:firstObject];
        }
      }
    }

    else
    {
      v12 = 0;
    }
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (BOOL)collectionView:(id)view canFocusItemAtIndexPath:(id)path
{
  pathCopy = path;
  objc_opt_class();
  diffableDataSource = [(CNAccountsAndGroupsViewController *)self diffableDataSource];
  v7 = [diffableDataSource itemIdentifierForIndexPath:pathCopy];

  if (objc_opt_isKindOfClass())
  {
    v8 = v7;
  }

  else
  {
    v8 = 0;
  }

  v9 = v8;

  if (v9)
  {
    dataSource = [(CNAccountsAndGroupsViewController *)self dataSource];
    currentlyEditingGroupIdentifier = [dataSource currentlyEditingGroupIdentifier];
    identifier = [v9 identifier];
    v13 = [currentlyEditingGroupIdentifier isEqualToString:identifier];

    v14 = v13 ^ 1;
  }

  else
  {
    v14 = 1;
  }

  return v14;
}

- (void)collectionView:(id)view willDisplayCell:(id)cell forItemAtIndexPath:(id)path
{
  cellCopy = cell;
  objc_opt_class();
  v8 = cellCopy;
  if (objc_opt_isKindOfClass())
  {
    v6 = v8;
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;

  if (v7)
  {
    [v7 prepareForDisplay];
  }
}

- (void)collectionView:(id)view didSelectItemAtIndexPath:(id)path
{
  pathCopy = path;
  diffableDataSource = [(CNAccountsAndGroupsViewController *)self diffableDataSource];
  v19 = [diffableDataSource itemIdentifierForIndexPath:pathCopy];

  dataSource = [(CNAccountsAndGroupsViewController *)self dataSource];
  filter = [dataSource filter];

  dataSource2 = [(CNAccountsAndGroupsViewController *)self dataSource];
  [dataSource2 setFilterForItem:v19];

  dataSource3 = [(CNAccountsAndGroupsViewController *)self dataSource];
  filter2 = [dataSource3 filter];
  if ([filter isEqual:filter2])
  {
    dataSource4 = [(CNAccountsAndGroupsViewController *)self dataSource];
    serverFilter = [dataSource4 serverFilter];

    if (!serverFilter)
    {
      goto LABEL_7;
    }
  }

  else
  {
  }

  delegate = [(CNAccountsAndGroupsViewController *)self delegate];
  [delegate accountsAndGroupsViewControllerDidUpdateSelection:self];

  delegate2 = [(CNAccountsAndGroupsViewController *)self delegate];
  v16 = objc_opt_respondsToSelector();

  if (v16)
  {
    delegate3 = [(CNAccountsAndGroupsViewController *)self delegate];
    [delegate3 accountsAndGroupsViewControllerDidChangeList:self];
  }

LABEL_7:
  delegate4 = [(CNAccountsAndGroupsViewController *)self delegate];
  [delegate4 accountsAndGroupsViewControllerDidFinish:self];

  [(CNAccountsAndGroupsViewController *)self resignAllFirstRespondersSavingCurrentlyEditing:0];
  if (([(CNAccountsAndGroupsViewController *)self isFirstResponder]& 1) == 0)
  {
    [(CNAccountsAndGroupsViewController *)self becomeFirstResponder];
  }
}

- (BOOL)collectionView:(id)view shouldSelectItemAtIndexPath:(id)path
{
  pathCopy = path;
  diffableDataSource = [(CNAccountsAndGroupsViewController *)self diffableDataSource];
  v7 = [diffableDataSource itemIdentifierForIndexPath:pathCopy];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    identifier = [v7 identifier];
    v9 = [identifier isEqualToString:@"groupPlaceholderIdentifier"] ^ 1;
  }

  else
  {
    LOBYTE(v9) = 0;
  }

  return v9;
}

- (void)item:(id)item didEndEditingWithName:(id)name
{
  itemCopy = item;
  nameCopy = name;
  dataSource = [(CNAccountsAndGroupsViewController *)self dataSource];
  currentlyEditingGroupIdentifier = [dataSource currentlyEditingGroupIdentifier];
  identifier = [itemCopy identifier];
  v10 = [currentlyEditingGroupIdentifier isEqualToString:identifier];

  if (v10)
  {
    dataSource2 = [(CNAccountsAndGroupsViewController *)self dataSource];
    [dataSource2 setCurrentlyEditingGroupIdentifier:0];
  }

  actionsProvider = [(CNAccountsAndGroupsViewController *)self actionsProvider];
  [actionsProvider updateItem:itemCopy withNewName:nameCopy];
}

- (void)cellTextViewDidChangeHeight
{
  diffableDataSource = [(CNAccountsAndGroupsViewController *)self diffableDataSource];
  diffableDataSource2 = [(CNAccountsAndGroupsViewController *)self diffableDataSource];
  snapshot = [diffableDataSource2 snapshot];
  [diffableDataSource applySnapshot:snapshot animatingDifferences:1];
}

- (BOOL)isCollectionViewEditing
{
  collectionView = [(CNAccountsAndGroupsViewController *)self collectionView];
  isEditing = [collectionView isEditing];

  return isEditing;
}

- (void)selectAllContacts
{
  dataSource = [(CNAccountsAndGroupsViewController *)self dataSource];
  showAllSectionItem = [dataSource showAllSectionItem];

  dataSource2 = [(CNAccountsAndGroupsViewController *)self dataSource];
  sections = [dataSource2 sections];
  if ([sections count] == 1)
  {
    dataSource3 = [(CNAccountsAndGroupsViewController *)self dataSource];
    sections2 = [dataSource3 sections];
    firstObject = [sections2 firstObject];
    items = [firstObject items];
    v10 = [items count];

    if (!v10)
    {
      goto LABEL_5;
    }

    dataSource4 = [(CNAccountsAndGroupsViewController *)self dataSource];
    sections3 = [dataSource4 sections];
    dataSource2 = [sections3 firstObject];

    sections = [dataSource2 items];
    firstObject2 = [sections firstObject];

    showAllSectionItem = firstObject2;
  }

LABEL_5:
  dataSource5 = [(CNAccountsAndGroupsViewController *)self dataSource];
  [dataSource5 setFilterForItem:showAllSectionItem];

  delegate = [(CNAccountsAndGroupsViewController *)self delegate];
  [delegate accountsAndGroupsViewControllerDidUpdateSelection:self];

  [(CNAccountsAndGroupsViewController *)self updateSelectionIfNeeded];
}

- (void)traitCollectionDidChange:(id)change
{
  v8.receiver = self;
  v8.super_class = CNAccountsAndGroupsViewController;
  changeCopy = change;
  [(CNAccountsAndGroupsViewController *)&v8 traitCollectionDidChange:changeCopy];
  _splitViewControllerContext = [changeCopy _splitViewControllerContext];

  traitCollection = [(CNAccountsAndGroupsViewController *)self traitCollection];
  _splitViewControllerContext2 = [traitCollection _splitViewControllerContext];

  if (_splitViewControllerContext != _splitViewControllerContext2)
  {
    [(CNAccountsAndGroupsViewController *)self reloadData];
    [(CNAccountsAndGroupsViewController *)self updateNavigationButtons];
  }

  [(CNAccountsAndGroupsViewController *)self configureNavigationBar];
}

- (BOOL)shouldEnableItem:(id)item
{
  itemCopy = item;
  delegate = [(CNAccountsAndGroupsViewController *)self delegate];
  identifier = [itemCopy identifier];
  v7 = [delegate accountsAndGroupsViewController:self shouldEnableItemWithIdentifier:identifier];

  if ([(CNAccountsAndGroupsViewController *)self isEditing])
  {
    isEditable = [itemCopy isEditable];
  }

  else
  {
    isEditable = 1;
  }

  return v7 & isEditable;
}

- (void)configureDataSource
{
  v22[2] = *MEMORY[0x1E69E9840];
  v3 = objc_alloc(MEMORY[0x1E69DD450]);
  v4 = objc_opt_class();
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __56__CNAccountsAndGroupsViewController_configureDataSource__block_invoke;
  v20[3] = &unk_1E74E2B10;
  v20[4] = self;
  v5 = [v3 initWithIdentifier:@"Header" cellClass:v4 handler:v20];
  v6 = objc_alloc(MEMORY[0x1E69DD450]);
  v7 = objc_opt_class();
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __56__CNAccountsAndGroupsViewController_configureDataSource__block_invoke_2;
  v19[3] = &unk_1E74E2B38;
  v19[4] = self;
  v8 = [v6 initWithIdentifier:@"List" cellClass:v7 handler:v19];
  v9 = objc_alloc(MEMORY[0x1E69DD458]);
  v22[0] = v5;
  v22[1] = v8;
  v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v22 count:2];
  v11 = [v9 initWithItemRenderers:v10];

  v12 = objc_alloc_init(MEMORY[0x1E69DD460]);
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __56__CNAccountsAndGroupsViewController_configureDataSource__block_invoke_3;
  v18[3] = &unk_1E74E2B60;
  v18[4] = self;
  [v12 setWillCollapseItemHandler:v18];
  [v11 setHandlers:v12];
  [(CNAccountsAndGroupsViewController *)self setSectionController:v11];
  v13 = objc_alloc(MEMORY[0x1E69DC820]);
  collectionView = [(CNAccountsAndGroupsViewController *)self collectionView];
  v21 = v11;
  v15 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v21 count:1];
  v16 = [v13 initWithCollectionView:collectionView sectionControllers:v15 rendererIdentifierProvider:&__block_literal_global_173];

  [(CNAccountsAndGroupsViewController *)self setDiffableDataSource:v16];
  collectionView2 = [(CNAccountsAndGroupsViewController *)self collectionView];
  [collectionView2 setDelegate:self];
}

void __56__CNAccountsAndGroupsViewController_configureDataSource__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);
  v6 = a3;
  v7 = a2;
  v8 = [v5 groupsStyle];
  v9 = [v8 parentCellAccessories];
  [v6 setAccessories:v9];

  v12 = [*(a1 + 32) groupsStyle];
  v10 = [v7 title];

  v11 = [v12 parentCellConfigurationUpdateHandlerWithText:v10];
  [v6 setConfigurationUpdateHandler:v11];
}

void __56__CNAccountsAndGroupsViewController_configureDataSource__block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v13 = a2;
  v5 = a3;
  [v5 setItem:v13];
  [v5 setDelegate:*(a1 + 32)];
  v6 = [MEMORY[0x1E69966E8] currentEnvironment];
  v7 = [v6 featureFlags];
  v8 = [v7 isFeatureEnabled:29];

  if (v8)
  {
    [v5 setIndentationLevel:{objc_msgSend(v13, "indentationLevel")}];
  }

  v9 = [*(a1 + 32) groupsStyle];
  v10 = [v9 cellAccessoriesForItem:v13];
  [v5 setAccessories:v10];

  v11 = [*(a1 + 32) groupsStyle];
  v12 = [v11 cellConfigurationUpdateHandler];
  [v5 setConfigurationUpdateHandler:v12];

  [v5 setUserInteractionEnabled:{objc_msgSend(*(a1 + 32), "shouldEnableItem:", v13)}];
}

void __56__CNAccountsAndGroupsViewController_configureDataSource__block_invoke_3(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  [v3 resignAllFirstRespondersSavingCurrentlyEditing:0];
  [*(a1 + 32) removePlaceholderCellsIfNeededInSection:v4 animated:0];
}

__CFString *__56__CNAccountsAndGroupsViewController_configureDataSource__block_invoke_4(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v4 = @"Header";
  }

  else
  {
    v4 = @"List";
  }

  return v4;
}

- (id)layout
{
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __43__CNAccountsAndGroupsViewController_layout__block_invoke;
  aBlock[3] = &unk_1E74E2AC0;
  aBlock[4] = self;
  v3 = _Block_copy(aBlock);
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __43__CNAccountsAndGroupsViewController_layout__block_invoke_2;
  v13[3] = &unk_1E74E2AC0;
  v13[4] = self;
  v4 = _Block_copy(v13);
  v5 = objc_alloc(MEMORY[0x1E69DC808]);
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __43__CNAccountsAndGroupsViewController_layout__block_invoke_3;
  v10[3] = &unk_1E74E2AE8;
  v10[4] = self;
  v11 = v3;
  v12 = v4;
  v6 = v4;
  v7 = v3;
  v8 = [v5 initWithSectionProvider:v10];

  return v8;
}

id __43__CNAccountsAndGroupsViewController_layout__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([*(a1 + 32) allowsEditing])
  {
    objc_opt_class();
    v4 = [*(a1 + 32) diffableDataSource];
    v5 = [v4 itemIdentifierForIndexPath:v3];
    if (objc_opt_isKindOfClass())
    {
      v6 = v5;
    }

    else
    {
      v6 = 0;
    }

    v7 = v6;

    objc_opt_class();
    v8 = [*(a1 + 32) collectionView];
    v9 = [v8 cellForItemAtIndexPath:v3];
    if (objc_opt_isKindOfClass())
    {
      v10 = v9;
    }

    else
    {
      v10 = 0;
    }

    v11 = v10;

    v12 = 0;
    if (v7 && v11)
    {
      v13 = MEMORY[0x1E69DCFC0];
      v14 = [*(a1 + 32) actionsProvider];
      v15 = [v14 leadingActionsForItem:v7 cell:v11];
      v12 = [v13 configurationWithActions:v15];

      [v12 setPerformsFirstActionWithFullSwipe:0];
    }
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

id __43__CNAccountsAndGroupsViewController_layout__block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([*(a1 + 32) allowsEditing])
  {
    objc_opt_class();
    v4 = [*(a1 + 32) diffableDataSource];
    v5 = [v4 itemIdentifierForIndexPath:v3];
    if (objc_opt_isKindOfClass())
    {
      v6 = v5;
    }

    else
    {
      v6 = 0;
    }

    v7 = v6;

    objc_opt_class();
    v8 = [*(a1 + 32) collectionView];
    v9 = [v8 cellForItemAtIndexPath:v3];
    if (objc_opt_isKindOfClass())
    {
      v10 = v9;
    }

    else
    {
      v10 = 0;
    }

    v11 = v10;

    v12 = 0;
    if (v7 && v11)
    {
      v13 = MEMORY[0x1E69DCFC0];
      v14 = [*(a1 + 32) actionsProvider];
      v15 = [*(a1 + 32) collectionView];
      v16 = [v14 trailingActionsForItem:v7 cell:v11 isCollectionViewEditing:{objc_msgSend(v15, "isEditing")}];
      v12 = [v13 configurationWithActions:v16];

      [v12 setPerformsFirstActionWithFullSwipe:0];
    }
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

id __43__CNAccountsAndGroupsViewController_layout__block_invoke_3(uint64_t a1, unint64_t a2, void *a3)
{
  v5 = *(a1 + 32);
  v6 = a3;
  v7 = [v5 dataSource];
  v8 = [v7 sections];
  v9 = [v8 count];

  if (v9 <= a2)
  {
    v13 = 1;
  }

  else
  {
    v10 = [*(a1 + 32) dataSource];
    v11 = [v10 sections];
    v12 = [v11 objectAtIndexedSubscript:a2];
    v13 = [v12 wantsSectionHeader];
  }

  v14 = [*(a1 + 32) groupsStyle];
  v15 = [v14 sectionConfigurationForLayoutEnvironment:v6 withLeadingActionsProvider:*(a1 + 40) withTrailingActionsProvider:*(a1 + 48) hasHeader:v13];

  return v15;
}

- (id)groupsStyle
{
  traitCollection = [(CNAccountsAndGroupsViewController *)self traitCollection];
  v3 = [CNAccountsAndGroupsStyle styleForTraitCollection:traitCollection];

  return v3;
}

- (BOOL)viewCanReload
{
  if ([(CNAccountsAndGroupsViewController *)self isViewLoaded])
  {
    isVisible = [(CNAccountsAndGroupsViewController *)self isVisible];
  }

  else
  {
    isVisible = 0;
  }

  if (([(CNAccountsAndGroupsViewController *)self isEditing]& 1) != 0)
  {
    LOBYTE(v4) = 0;
  }

  else
  {
    v5 = *MEMORY[0x1E6996570];
    dataSource = [(CNAccountsAndGroupsViewController *)self dataSource];
    currentlyEditingGroupIdentifier = [dataSource currentlyEditingGroupIdentifier];
    if ((*(v5 + 16))(v5, currentlyEditingGroupIdentifier))
    {
      LOBYTE(v4) = 0;
    }

    else
    {
      v4 = ![(CNAccountsAndGroupsViewController *)self isAnyListCellCurrentlyEditing];
    }
  }

  return isVisible & v4;
}

- (BOOL)isNotificationInternalSave:(id)save
{
  saveCopy = save;
  userInfo = [saveCopy userInfo];
  v6 = [userInfo objectForKey:*MEMORY[0x1E695CBF0]];

  if (v6 && ([v6 BOOLValue] & 1) != 0)
  {
    v7 = 0;
  }

  else
  {
    userInfo2 = [saveCopy userInfo];
    v9 = [userInfo2 objectForKey:*MEMORY[0x1E695CBF8]];

    v10 = [MEMORY[0x1E695DFD8] setWithArray:v9];
    v11 = MEMORY[0x1E695DFD8];
    actionsProvider = [(CNAccountsAndGroupsViewController *)self actionsProvider];
    issuedSaveRequestIdentifiers = [actionsProvider issuedSaveRequestIdentifiers];
    v14 = [v11 setWithArray:issuedSaveRequestIdentifiers];

    v15 = *MEMORY[0x1E6996560];
    if ((*(*MEMORY[0x1E6996560] + 16))(*MEMORY[0x1E6996560], v14) & 1) != 0 || ((*(v15 + 16))(v15, v10))
    {
      v7 = 0;
    }

    else
    {
      v7 = [v10 isSubsetOfSet:v14];
    }
  }

  return v7;
}

- (void)acceptedIntroductionsDidChange
{
  v3 = +[CNUIContactsEnvironment currentEnvironment];
  defaultSchedulerProvider = [v3 defaultSchedulerProvider];
  mainThreadScheduler = [defaultSchedulerProvider mainThreadScheduler];

  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __67__CNAccountsAndGroupsViewController_acceptedIntroductionsDidChange__block_invoke;
  v6[3] = &unk_1E74E6A88;
  v6[4] = self;
  [mainThreadScheduler performBlock:v6];
}

void __67__CNAccountsAndGroupsViewController_acceptedIntroductionsDidChange__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) viewCanReload];
  v3 = *(a1 + 32);
  if (v2)
  {
    v4 = [v3 dataSource];
    v5 = [v4 hasChanges];

    if (v5)
    {
      v6 = *(a1 + 32);

      [v6 reloadData];
    }
  }

  else
  {

    [v3 setNeedsReload:1];
  }
}

void __69__CNAccountsAndGroupsViewController_addAcceptedIntroductionsNotifier__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained acceptedIntroductionsDidChange];
}

- (void)contactStoreDidChange:(id)change
{
  changeCopy = change;
  v5 = +[CNUIContactsEnvironment currentEnvironment];
  defaultSchedulerProvider = [v5 defaultSchedulerProvider];
  mainThreadScheduler = [defaultSchedulerProvider mainThreadScheduler];

  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __59__CNAccountsAndGroupsViewController_contactStoreDidChange___block_invoke;
  v9[3] = &unk_1E74E77C0;
  v9[4] = self;
  v10 = changeCopy;
  v8 = changeCopy;
  [mainThreadScheduler performBlock:v9];
}

void __59__CNAccountsAndGroupsViewController_contactStoreDidChange___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) viewCanReload];
  v3 = *(a1 + 32);
  if (v2)
  {
    v4 = [v3 dataSource];
    v5 = [v4 hasChanges];

    if (v5 && ([*(a1 + 32) isNotificationInternalSave:*(a1 + 40)] & 1) == 0)
    {
      v6 = *(a1 + 32);

      [v6 reloadData];
    }
  }

  else
  {

    [v3 setNeedsReload:1];
  }
}

- (void)deselectAllItems
{
  v17 = *MEMORY[0x1E69E9840];
  collectionView = [(CNAccountsAndGroupsViewController *)self collectionView];
  indexPathsForSelectedItems = [collectionView indexPathsForSelectedItems];

  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v5 = indexPathsForSelectedItems;
  v6 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v13;
    do
    {
      v9 = 0;
      do
      {
        if (*v13 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v12 + 1) + 8 * v9);
        collectionView2 = [(CNAccountsAndGroupsViewController *)self collectionView];
        [collectionView2 deselectItemAtIndexPath:v10 animated:0];

        ++v9;
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v7);
  }
}

- (BOOL)isAnyListCellCurrentlyEditing
{
  selfCopy = self;
  collectionView = [(CNAccountsAndGroupsViewController *)self collectionView];
  indexPathsForVisibleItems = [collectionView indexPathsForVisibleItems];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __66__CNAccountsAndGroupsViewController_isAnyListCellCurrentlyEditing__block_invoke;
  v6[3] = &unk_1E74E3A80;
  v6[4] = selfCopy;
  LOBYTE(selfCopy) = [indexPathsForVisibleItems _cn_any:v6];

  return selfCopy;
}

uint64_t __66__CNAccountsAndGroupsViewController_isAnyListCellCurrentlyEditing__block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 collectionView];
  v5 = [v4 cellForItemAtIndexPath:v3];

  objc_opt_class();
  v6 = v5;
  if (objc_opt_isKindOfClass())
  {
    v7 = v6;
  }

  else
  {
    v7 = 0;
  }

  v8 = v7;

  if (v8)
  {
    v9 = [v8 isCellEditing];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (void)setEditingForGroupItem:(id)item
{
  if (item)
  {
    itemCopy = item;
    diffableDataSource = [(CNAccountsAndGroupsViewController *)self diffableDataSource];
    v6 = [diffableDataSource indexPathForItemIdentifier:itemCopy];

    dataSource = [(CNAccountsAndGroupsViewController *)self dataSource];
    [dataSource setCurrentlyEditingGroupIdentifier:0];

    if (v6)
    {
      collectionView = [(CNAccountsAndGroupsViewController *)self collectionView];
      [collectionView scrollToItemAtIndexPath:v6 atScrollPosition:2 animated:0];

      v9 = dispatch_time(0, 500000000);
      v10[0] = MEMORY[0x1E69E9820];
      v10[1] = 3221225472;
      v10[2] = __60__CNAccountsAndGroupsViewController_setEditingForGroupItem___block_invoke;
      v10[3] = &unk_1E74E77C0;
      v10[4] = self;
      v11 = v6;
      dispatch_after(v9, MEMORY[0x1E69E96A0], v10);
    }
  }
}

void __60__CNAccountsAndGroupsViewController_setEditingForGroupItem___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) collectionView];
  v3 = [v2 cellForItemAtIndexPath:*(a1 + 40)];

  objc_opt_class();
  v7 = v3;
  if (objc_opt_isKindOfClass())
  {
    v4 = v7;
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;

  if (v5)
  {
    v6 = [*(a1 + 32) actionsProvider];
    [v6 authorizedEditGroupNameForCell:v5];
  }
}

- (void)restoreCurrentlyEditingGroupIfNeeded
{
  dataSource = [(CNAccountsAndGroupsViewController *)self dataSource];
  currentlyEditingGroupItem = [dataSource currentlyEditingGroupItem];
  [(CNAccountsAndGroupsViewController *)self setEditingForGroupItem:currentlyEditingGroupItem];
}

- (id)currentlySelectedItem
{
  diffableDataSource = [(CNAccountsAndGroupsViewController *)self diffableDataSource];
  snapshot = [diffableDataSource snapshot];
  itemIdentifiers = [snapshot itemIdentifiers];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __58__CNAccountsAndGroupsViewController_currentlySelectedItem__block_invoke;
  v8[3] = &unk_1E74E71A8;
  v8[4] = self;
  v6 = [itemIdentifiers _cn_firstObjectPassingTest:v8];

  return v6;
}

uint64_t __58__CNAccountsAndGroupsViewController_currentlySelectedItem__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  objc_opt_class();
  v4 = v3;
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;

  if (v6)
  {
    v7 = [*(a1 + 32) dataSource];
    v8 = [v7 isFilterShowingItem:v6];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (void)updateSelectionIfNeeded
{
  groupsStyle = [(CNAccountsAndGroupsViewController *)self groupsStyle];
  shouldShowCellSelection = [groupsStyle shouldShowCellSelection];

  if (shouldShowCellSelection)
  {
    currentlySelectedItem = [(CNAccountsAndGroupsViewController *)self currentlySelectedItem];
    if (currentlySelectedItem)
    {
      v9 = currentlySelectedItem;
      diffableDataSource = [(CNAccountsAndGroupsViewController *)self diffableDataSource];
      v7 = [diffableDataSource indexPathForItemIdentifier:v9];

      if (v7)
      {
        collectionView = [(CNAccountsAndGroupsViewController *)self collectionView];
        [collectionView selectItemAtIndexPath:v7 animated:0 scrollPosition:0];
      }

      currentlySelectedItem = v9;
    }
  }

  else
  {

    [(CNAccountsAndGroupsViewController *)self deselectAllItems];
  }
}

- (void)resignAllFirstRespondersSavingCurrentlyEditing:(BOOL)editing
{
  editingCopy = editing;
  dataSource = [(CNAccountsAndGroupsViewController *)self dataSource];
  currentlyEditingGroupIdentifier = [dataSource currentlyEditingGroupIdentifier];

  view = [(CNAccountsAndGroupsViewController *)self view];
  [view endEditing:1];

  if (editingCopy)
  {
    v7 = currentlyEditingGroupIdentifier;
  }

  else
  {
    v7 = 0;
  }

  dataSource2 = [(CNAccountsAndGroupsViewController *)self dataSource];
  [dataSource2 setCurrentlyEditingGroupIdentifier:v7];
}

- (void)expandSectionForAccountWithIdentifier:(id)identifier
{
  v11[1] = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  dataSource = [(CNAccountsAndGroupsViewController *)self dataSource];
  v6 = [dataSource sectionForIdentifier:identifierCopy];

  if (v6)
  {
    sectionController = [(CNAccountsAndGroupsViewController *)self sectionController];
    v8 = [sectionController snapshotForSection:v6];

    if (v8 && ([v8 isExpanded:v6] & 1) == 0)
    {
      v11[0] = v6;
      v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v11 count:1];
      [v8 expandItems:v9];

      sectionController2 = [(CNAccountsAndGroupsViewController *)self sectionController];
      [sectionController2 applySnapshot:v8 toSection:v6 animatingDifferences:1 completion:0];
    }
  }
}

- (void)configureNavigationBar
{
  currentEnvironment = [MEMORY[0x1E69966E8] currentEnvironment];
  featureFlags = [currentEnvironment featureFlags];
  v5 = [featureFlags isFeatureEnabled:29];

  if (v5)
  {
    navigationController = [(CNAccountsAndGroupsViewController *)self navigationController];
    navigationBar = [navigationController navigationBar];
    [navigationBar setPrefersLargeTitles:0];

    navigationItem = [(CNAccountsAndGroupsViewController *)self navigationItem];
    [navigationItem setLargeTitleDisplayMode:2];

    traitCollection = [(CNAccountsAndGroupsViewController *)self traitCollection];
    v9 = [traitCollection _splitViewControllerContext] != 0;
    navigationController2 = [(CNAccountsAndGroupsViewController *)self navigationController];
    navigationBar2 = [navigationController2 navigationBar];
    standardAppearance = [navigationBar2 standardAppearance];
    [standardAppearance _setTitleControlHidden:v9];
  }
}

- (void)reloadData
{
  v47 = *MEMORY[0x1E69E9840];
  [(CNAccountsAndGroupsViewController *)self resignAllFirstRespondersSavingCurrentlyEditing:1];
  v42 = 0u;
  v43 = 0u;
  v40 = 0u;
  v41 = 0u;
  dataSource = [(CNAccountsAndGroupsViewController *)self dataSource];
  sections = [dataSource sections];

  v5 = [sections countByEnumeratingWithState:&v40 objects:v46 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v41;
    do
    {
      v8 = 0;
      do
      {
        if (*v41 != v7)
        {
          objc_enumerationMutation(sections);
        }

        v9 = *(*(&v40 + 1) + 8 * v8);
        v10 = objc_alloc_init(MEMORY[0x1E69DC5D0]);
        if ([v9 wantsSectionHeader])
        {
          v45 = v9;
          v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v45 count:1];
          [v10 appendItems:v11];

          items = [v9 items];
          [v10 appendItems:items intoParent:v9];

          v44 = v9;
          items2 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v44 count:1];
          [v10 expandItems:items2];
        }

        else
        {
          items2 = [v9 items];
          [v10 appendItems:items2];
        }

        sectionController = [(CNAccountsAndGroupsViewController *)self sectionController];
        [sectionController applySnapshot:v10 toSection:v9 animatingDifferences:0 completion:0];

        ++v8;
      }

      while (v6 != v8);
      v6 = [sections countByEnumeratingWithState:&v40 objects:v46 count:16];
    }

    while (v6);
  }

  diffableDataSource = [(CNAccountsAndGroupsViewController *)self diffableDataSource];
  snapshot = [diffableDataSource snapshot];

  sectionController2 = [(CNAccountsAndGroupsViewController *)self sectionController];
  associatedSectionIdentifiers = [sectionController2 associatedSectionIdentifiers];
  v39[0] = MEMORY[0x1E69E9820];
  v39[1] = 3221225472;
  v39[2] = __47__CNAccountsAndGroupsViewController_reloadData__block_invoke;
  v39[3] = &unk_1E74E5A40;
  v39[4] = self;
  v19 = [associatedSectionIdentifiers _cn_filter:v39];
  allObjects = [v19 allObjects];

  if (((*(*MEMORY[0x1E6996530] + 16))() & 1) == 0)
  {
    [snapshot deleteSectionsWithIdentifiers:allObjects];
  }

  dataSource2 = [(CNAccountsAndGroupsViewController *)self dataSource];
  sections2 = [dataSource2 sections];
  firstObject = [sections2 firstObject];

  if ([firstObject isAllContactsGlobalSection])
  {
    sectionIdentifiers = [snapshot sectionIdentifiers];
    if ([sectionIdentifiers count] >= 2)
    {
      sectionIdentifiers2 = [snapshot sectionIdentifiers];
      firstObject2 = [sectionIdentifiers2 firstObject];
      if ([firstObject2 isEqual:firstObject])
      {
      }

      else
      {
        sectionIdentifiers3 = [snapshot sectionIdentifiers];
        v28 = [sectionIdentifiers3 containsObject:firstObject];

        if (!v28)
        {
          goto LABEL_21;
        }

        sectionIdentifiers = [snapshot sectionIdentifiers];
        sectionIdentifiers2 = [sectionIdentifiers firstObject];
        [snapshot moveSectionWithIdentifier:firstObject beforeSectionWithIdentifier:sectionIdentifiers2];
      }
    }
  }

LABEL_21:
  itemIdentifiers = [snapshot itemIdentifiers];
  [snapshot reloadItemsWithIdentifiers:itemIdentifiers];

  diffableDataSource2 = [(CNAccountsAndGroupsViewController *)self diffableDataSource];
  [diffableDataSource2 applySnapshot:snapshot animatingDifferences:0];

  groupsStyle = [(CNAccountsAndGroupsViewController *)self groupsStyle];
  backgroundColor = [groupsStyle backgroundColor];

  if (backgroundColor)
  {
    groupsStyle2 = [(CNAccountsAndGroupsViewController *)self groupsStyle];
    backgroundColor2 = [groupsStyle2 backgroundColor];

    view = [(CNAccountsAndGroupsViewController *)self view];
    [view setBackgroundColor:backgroundColor2];

    collectionView = [(CNAccountsAndGroupsViewController *)self collectionView];
    [collectionView setBackgroundColor:backgroundColor2];
  }

  v37 = CNContactsUIBundle();
  v38 = [v37 localizedStringForKey:@"LISTS" value:&stru_1F0CE7398 table:@"Localized"];
  [(CNAccountsAndGroupsViewController *)self setTitle:v38];

  [(CNAccountsAndGroupsViewController *)self reloadAddGroupButton];
  [(CNAccountsAndGroupsViewController *)self updateSelectionIfNeeded];
  [(CNAccountsAndGroupsViewController *)self restoreCurrentlyEditingGroupIfNeeded];
}

uint64_t __47__CNAccountsAndGroupsViewController_reloadData__block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 dataSource];
  v5 = [v4 sections];
  v6 = [v5 containsObject:v3];

  return v6 ^ 1u;
}

- (void)reloadCollectionViewForSectionWithIdentifier:(id)identifier settingFilterForEditingItem:(BOOL)item allowsReloadWhenEditing:(BOOL)editing
{
  identifierCopy = identifier;
  if (identifierCopy)
  {
    if (![(CNAccountsAndGroupsViewController *)self isEditing]|| editing)
    {
      [(CNAccountsAndGroupsViewController *)self resignAllFirstRespondersSavingCurrentlyEditing:1];
      v9 = +[CNUIContactsEnvironment currentEnvironment];
      defaultSchedulerProvider = [v9 defaultSchedulerProvider];
      mainThreadScheduler = [defaultSchedulerProvider mainThreadScheduler];

      v12[0] = MEMORY[0x1E69E9820];
      v12[1] = 3221225472;
      v12[2] = __134__CNAccountsAndGroupsViewController_reloadCollectionViewForSectionWithIdentifier_settingFilterForEditingItem_allowsReloadWhenEditing___block_invoke;
      v12[3] = &unk_1E74E34A0;
      v12[4] = self;
      v13 = identifierCopy;
      itemCopy = item;
      [mainThreadScheduler performBlock:v12];
    }

    else
    {
      [(CNAccountsAndGroupsViewController *)self setNeedsReload:1];
    }
  }
}

void __134__CNAccountsAndGroupsViewController_reloadCollectionViewForSectionWithIdentifier_settingFilterForEditingItem_allowsReloadWhenEditing___block_invoke(uint64_t a1)
{
  v17[1] = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) dataSource];
  [v2 reload];

  v3 = [*(a1 + 32) dataSource];
  v4 = [v3 sectionForIdentifier:*(a1 + 40)];

  if (v4)
  {
    v5 = objc_alloc_init(MEMORY[0x1E69DC5D0]);
    if ([v4 wantsSectionHeader])
    {
      v17[0] = v4;
      v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v17 count:1];
      [v5 appendItems:v6];

      v7 = [v4 items];
      [v5 appendItems:v7 intoParent:v4];

      v16 = v4;
      v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v16 count:1];
      [v5 expandItems:v8];
    }

    else
    {
      v8 = [v4 items];
      [v5 appendItems:v8];
    }

    v9 = [*(a1 + 32) sectionController];
    [v9 applySnapshot:v5 toSection:v4 animatingDifferences:0];

    if (*(a1 + 48) == 1)
    {
      v10 = [*(a1 + 32) dataSource];
      v11 = [v10 currentlyEditingGroupItem];

      if (v11)
      {
        v12 = [*(a1 + 32) dataSource];
        v13 = [*(a1 + 32) dataSource];
        v14 = [v13 currentlyEditingGroupItem];
        [v12 setFilterForItem:v14];

        v15 = [*(a1 + 32) delegate];
        [v15 accountsAndGroupsViewControllerDidUpdateSelection:*(a1 + 32)];
      }
    }

    [*(a1 + 32) updateSelectionIfNeeded];
    [*(a1 + 32) restoreCurrentlyEditingGroupIfNeeded];
  }
}

- (void)reloadCollectionViewAddingPlaceholderItem:(id)item inSectionWithIdentifier:(id)identifier
{
  itemCopy = item;
  identifierCopy = identifier;
  [(CNAccountsAndGroupsViewController *)self resignAllFirstRespondersSavingCurrentlyEditing:0];
  if (itemCopy && identifierCopy)
  {
    dataSource = [(CNAccountsAndGroupsViewController *)self dataSource];
    v9 = [dataSource sectionForIdentifier:identifierCopy];

    if (v9)
    {
      v10 = +[CNUIContactsEnvironment currentEnvironment];
      defaultSchedulerProvider = [v10 defaultSchedulerProvider];
      mainThreadScheduler = [defaultSchedulerProvider mainThreadScheduler];

      v13[0] = MEMORY[0x1E69E9820];
      v13[1] = 3221225472;
      v13[2] = __103__CNAccountsAndGroupsViewController_reloadCollectionViewAddingPlaceholderItem_inSectionWithIdentifier___block_invoke;
      v13[3] = &unk_1E74E6EE8;
      v13[4] = self;
      v14 = v9;
      v15 = itemCopy;
      [mainThreadScheduler performBlock:v13];
    }
  }
}

void __103__CNAccountsAndGroupsViewController_reloadCollectionViewAddingPlaceholderItem_inSectionWithIdentifier___block_invoke(uint64_t a1)
{
  v11[1] = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) sectionController];
  v3 = [v2 snapshotForSection:*(a1 + 40)];

  v4 = [v3 items];
  v5 = [v4 _cn_filter:&__block_literal_global_141_15744];

  [v3 deleteItems:v5];
  v11[0] = *(a1 + 48);
  v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v11 count:1];
  [v3 appendItems:v6 intoParent:*(a1 + 40)];

  v7 = [*(a1 + 32) sectionController];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __103__CNAccountsAndGroupsViewController_reloadCollectionViewAddingPlaceholderItem_inSectionWithIdentifier___block_invoke_3;
  v9[3] = &unk_1E74E77C0;
  v8 = *(a1 + 40);
  v9[4] = *(a1 + 32);
  v10 = *(a1 + 48);
  [v7 applySnapshot:v3 toSection:v8 animatingDifferences:1 completion:v9];
}

uint64_t __103__CNAccountsAndGroupsViewController_reloadCollectionViewAddingPlaceholderItem_inSectionWithIdentifier___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = [a2 identifier];
  v3 = [v2 isEqualToString:@"groupPlaceholderIdentifier"];

  return v3;
}

- (void)removePlaceholderCellsIfNeededInSection:(id)section animated:(BOOL)animated
{
  sectionCopy = section;
  v7 = +[CNUIContactsEnvironment currentEnvironment];
  defaultSchedulerProvider = [v7 defaultSchedulerProvider];
  mainThreadScheduler = [defaultSchedulerProvider mainThreadScheduler];

  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __86__CNAccountsAndGroupsViewController_removePlaceholderCellsIfNeededInSection_animated___block_invoke;
  v11[3] = &unk_1E74E34A0;
  v11[4] = self;
  v12 = sectionCopy;
  animatedCopy = animated;
  v10 = sectionCopy;
  [mainThreadScheduler performBlock:v11];
}

void __86__CNAccountsAndGroupsViewController_removePlaceholderCellsIfNeededInSection_animated___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) sectionController];
  v6 = [v2 snapshotForSection:*(a1 + 40)];

  v3 = [v6 items];
  v4 = [v3 _cn_filter:&__block_literal_global_139_15746];

  if (((*(*MEMORY[0x1E6996530] + 16))() & 1) == 0)
  {
    [v6 deleteItems:v4];
    v5 = [*(a1 + 32) sectionController];
    [v5 applySnapshot:v6 toSection:*(a1 + 40) animatingDifferences:*(a1 + 48) completion:0];
  }
}

uint64_t __86__CNAccountsAndGroupsViewController_removePlaceholderCellsIfNeededInSection_animated___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = [a2 identifier];
  v3 = [v2 isEqualToString:@"groupPlaceholderIdentifier"];

  return v3;
}

- (void)cleanUpItemIfNeeded:(id)needed
{
  if (needed)
  {
    neededCopy = needed;
    diffableDataSource = [(CNAccountsAndGroupsViewController *)self diffableDataSource];
    v12 = [diffableDataSource indexPathForItemIdentifier:neededCopy];

    v6 = v12;
    if (v12)
    {
      collectionView = [(CNAccountsAndGroupsViewController *)self collectionView];
      v8 = [collectionView cellForItemAtIndexPath:v12];

      if (v8)
      {
        objc_opt_class();
        v9 = v8;
        if (objc_opt_isKindOfClass())
        {
          v10 = v9;
        }

        else
        {
          v10 = 0;
        }

        v11 = v10;

        if (v11)
        {
          [v11 endEditingName];
        }
      }

      v6 = v12;
    }
  }
}

- (void)reloadCollectionViewDeletingItem:(id)item
{
  itemCopy = item;
  [(CNAccountsAndGroupsViewController *)self resignAllFirstRespondersSavingCurrentlyEditing:0];
  if (itemCopy)
  {
    dataSource = [(CNAccountsAndGroupsViewController *)self dataSource];
    v6 = [dataSource isFilterShowingItem:itemCopy];

    diffableDataSource = [(CNAccountsAndGroupsViewController *)self diffableDataSource];
    snapshot = [diffableDataSource snapshot];
    itemIdentifiers = [snapshot itemIdentifiers];
    v10 = [itemIdentifiers containsObject:itemCopy];

    if (v10)
    {
      [(CNAccountsAndGroupsViewController *)self cleanUpItemIfNeeded:itemCopy];
      v11 = +[CNUIContactsEnvironment currentEnvironment];
      defaultSchedulerProvider = [v11 defaultSchedulerProvider];
      mainThreadScheduler = [defaultSchedulerProvider mainThreadScheduler];

      v15[0] = MEMORY[0x1E69E9820];
      v15[1] = 3221225472;
      v15[2] = __70__CNAccountsAndGroupsViewController_reloadCollectionViewDeletingItem___block_invoke;
      v15[3] = &unk_1E74E34A0;
      v15[4] = self;
      v16 = itemCopy;
      v17 = v6;
      [mainThreadScheduler performBlock:v15];
    }

    else
    {
      dataSource2 = [(CNAccountsAndGroupsViewController *)self dataSource];
      [dataSource2 reload];

      [(CNAccountsAndGroupsViewController *)self reloadData];
      if (v6)
      {
        [(CNAccountsAndGroupsViewController *)self selectAllContacts];
      }
    }
  }
}

void __70__CNAccountsAndGroupsViewController_reloadCollectionViewDeletingItem___block_invoke(uint64_t a1)
{
  v6[1] = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) diffableDataSource];
  v3 = [v2 snapshot];

  v6[0] = *(a1 + 40);
  v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:v6 count:1];
  [v3 deleteItemsWithIdentifiers:v4];

  v5 = [*(a1 + 32) diffableDataSource];
  [v5 applySnapshot:v3 animatingDifferences:1];

  if (*(a1 + 48) == 1)
  {
    [*(a1 + 32) selectAllContacts];
  }
}

- (void)goBack:(id)back
{
  delegate = [(CNAccountsAndGroupsViewController *)self delegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    delegate2 = [(CNAccountsAndGroupsViewController *)self delegate];
    [delegate2 accountsAndGroupsViewControllerDidGoBack:self];
  }
}

- (void)cancel:(id)cancel
{
  delegate = [(CNAccountsAndGroupsViewController *)self delegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    delegate2 = [(CNAccountsAndGroupsViewController *)self delegate];
    [delegate2 accountsAndGroupsViewControllerDidCancel:self];
  }
}

- (void)updateToolbarVisibility
{
  allowsEditing = [(CNAccountsAndGroupsViewController *)self allowsEditing];
  if (allowsEditing && (-[CNAccountsAndGroupsViewController groupsStyle](self, "groupsStyle"), v2 = objc_claimAutoreleasedReturnValue(), -[CNAccountsAndGroupsViewController traitCollection](self, "traitCollection"), v3 = objc_claimAutoreleasedReturnValue(), [v2 buttonBehaviorWithTraitCollection:v3] == 1))
  {
    v6 = 0;
  }

  else
  {
    currentEnvironment = [MEMORY[0x1E69966E8] currentEnvironment];
    featureFlags = [currentEnvironment featureFlags];
    if ([featureFlags isFeatureEnabled:29])
    {
      v9 = +[CNUIContactsEnvironment currentEnvironment];
      v6 = [v9 runningInContactsAppOniPad] ^ 1;
    }

    else
    {
      v6 = 1;
    }

    if (!allowsEditing)
    {
      goto LABEL_9;
    }
  }

LABEL_9:
  navigationController = [(CNAccountsAndGroupsViewController *)self navigationController];
  [navigationController setToolbarHidden:v6];
}

- (void)updateNavigationButtons
{
  v35[1] = *MEMORY[0x1E69E9840];
  [(CNAccountsAndGroupsViewController *)self updateToolbarVisibility];
  groupsStyle = [(CNAccountsAndGroupsViewController *)self groupsStyle];
  traitCollection = [(CNAccountsAndGroupsViewController *)self traitCollection];
  v5 = [groupsStyle buttonBehaviorWithTraitCollection:traitCollection];

  if (self->_buttonBehavior != v5)
  {
    self->_buttonBehavior = v5;
    if ([(CNAccountsAndGroupsViewController *)self allowsEditing])
    {
      buttonBehavior = self->_buttonBehavior;
      if (buttonBehavior > 1)
      {
        if (buttonBehavior == 3)
        {
          if ([(CNAccountsAndGroupsViewController *)self shouldShowCancelButton])
          {
            [(CNAccountsAndGroupsViewController *)self cancelBarButtonItem];
          }

          else
          {
            [(CNAccountsAndGroupsViewController *)self editButtonItem];
          }
          v27 = ;
          navigationItem = [(CNAccountsAndGroupsViewController *)self navigationItem];
          [navigationItem setLeftBarButtonItem:v27];

          navigationItem2 = [(CNAccountsAndGroupsViewController *)self navigationItem];
          [navigationItem2 setRightBarButtonItem:0];

          addGroupBarButtonItem = [(CNAccountsAndGroupsViewController *)self addGroupBarButtonItem];
          flexibleSpaceItem = [MEMORY[0x1E69DC708] flexibleSpaceItem];
          v34[1] = flexibleSpaceItem;
          v30 = [MEMORY[0x1E695DEC8] arrayWithObjects:v34 count:2];
          [(CNAccountsAndGroupsViewController *)self setToolbarItems:v30];

          goto LABEL_31;
        }

        if (buttonBehavior == 2)
        {
          if ([(CNAccountsAndGroupsViewController *)self shouldShowCancelButton])
          {
            [(CNAccountsAndGroupsViewController *)self cancelBarButtonItem];
          }

          else
          {
            [(CNAccountsAndGroupsViewController *)self editButtonItem];
          }
          v20 = ;
          navigationItem3 = [(CNAccountsAndGroupsViewController *)self navigationItem];
          [navigationItem3 setLeftBarButtonItem:v20];

          addGroupBarButtonItem2 = [(CNAccountsAndGroupsViewController *)self addGroupBarButtonItem];
          navigationItem4 = [(CNAccountsAndGroupsViewController *)self navigationItem];
          [navigationItem4 setRightBarButtonItem:addGroupBarButtonItem2];

          [(CNAccountsAndGroupsViewController *)self setToolbarItems:0];
          addGroupBarButtonItem3 = [(CNAccountsAndGroupsViewController *)self addGroupBarButtonItem];
          v25 = addGroupBarButtonItem3;
          v26 = 0;
          goto LABEL_32;
        }
      }

      else if (buttonBehavior)
      {
        if (buttonBehavior == 1)
        {
          shouldShowCancelButton = [(CNAccountsAndGroupsViewController *)self shouldShowCancelButton];
          if (shouldShowCancelButton)
          {
            cancelBarButtonItem = [(CNAccountsAndGroupsViewController *)self cancelBarButtonItem];
          }

          else
          {
            cancelBarButtonItem = 0;
          }

          navigationItem5 = [(CNAccountsAndGroupsViewController *)self navigationItem];
          [navigationItem5 setLeftBarButtonItem:cancelBarButtonItem];

          if (shouldShowCancelButton)
          {
          }

          editButtonItem = [(CNAccountsAndGroupsViewController *)self editButtonItem];
          navigationItem6 = [(CNAccountsAndGroupsViewController *)self navigationItem];
          [navigationItem6 setRightBarButtonItem:editButtonItem];

          addGroupBarButtonItem = [(CNAccountsAndGroupsViewController *)self addGroupBarButtonItem];
          v35[0] = addGroupBarButtonItem;
          flexibleSpaceItem = [MEMORY[0x1E695DEC8] arrayWithObjects:v35 count:1];
          [(CNAccountsAndGroupsViewController *)self setToolbarItems:flexibleSpaceItem];
LABEL_31:

          addGroupBarButtonItem3 = [(CNAccountsAndGroupsViewController *)self addGroupBarButtonItem];
          v25 = addGroupBarButtonItem3;
          v26 = 1;
LABEL_32:
          [addGroupBarButtonItem3 _setPrefersNoPlatter:v26];
        }
      }

      else
      {
        navigationItem7 = [(CNAccountsAndGroupsViewController *)self navigationItem];
        [navigationItem7 setLeftBarButtonItem:0];

        navigationItem8 = [(CNAccountsAndGroupsViewController *)self navigationItem];
        [navigationItem8 setRightBarButtonItem:0];

        [(CNAccountsAndGroupsViewController *)self setToolbarItems:0];
      }

      systemBlueColor = [MEMORY[0x1E69DC888] systemBlueColor];
      navigationController = [(CNAccountsAndGroupsViewController *)self navigationController];
      navigationBar = [navigationController navigationBar];
      [navigationBar setTintColor:systemBlueColor];

      [(CNAccountsAndGroupsViewController *)self reloadAddGroupButton];
      return;
    }

    navigationItem9 = [(CNAccountsAndGroupsViewController *)self navigationItem];
    [navigationItem9 setRightBarButtonItem:0];

    shouldShowCancelButton2 = [(CNAccountsAndGroupsViewController *)self shouldShowCancelButton];
    if (shouldShowCancelButton2)
    {
      cancelBarButtonItem2 = [(CNAccountsAndGroupsViewController *)self cancelBarButtonItem];
    }

    else
    {
      cancelBarButtonItem2 = 0;
    }

    navigationItem10 = [(CNAccountsAndGroupsViewController *)self navigationItem];
    [navigationItem10 setLeftBarButtonItem:cancelBarButtonItem2];

    if (shouldShowCancelButton2)
    {
    }

    [(CNAccountsAndGroupsViewController *)self setToolbarItems:0];
  }
}

- (void)clearNavigationButtonsIfNeeded
{
  buttonBehavior = self->_buttonBehavior;
  groupsStyle = [(CNAccountsAndGroupsViewController *)self groupsStyle];
  traitCollection = [(CNAccountsAndGroupsViewController *)self traitCollection];
  v6 = [groupsStyle buttonBehaviorWithTraitCollection:traitCollection];

  if (buttonBehavior != v6)
  {
    navigationItem = [(CNAccountsAndGroupsViewController *)self navigationItem];
    [navigationItem setRightBarButtonItem:0];

    navigationItem2 = [(CNAccountsAndGroupsViewController *)self navigationItem];
    [navigationItem2 setLeftBarButtonItem:0];
  }
}

- (UIBarButtonItem)cancelBarButtonItem
{
  cancelBarButtonItem = self->_cancelBarButtonItem;
  if (!cancelBarButtonItem)
  {
    isLimitedAccessOnboarding = self->_isLimitedAccessOnboarding;
    v5 = objc_alloc(MEMORY[0x1E69DC708]);
    v6 = v5;
    if (isLimitedAccessOnboarding)
    {
      fakeBackButton = [(CNAccountsAndGroupsViewController *)self fakeBackButton];
      v8 = [v6 initWithCustomView:fakeBackButton];
      v9 = self->_cancelBarButtonItem;
      self->_cancelBarButtonItem = v8;
    }

    else
    {
      v10 = [v5 initWithBarButtonSystemItem:1 target:self action:sel_cancel_];
      fakeBackButton = self->_cancelBarButtonItem;
      self->_cancelBarButtonItem = v10;
    }

    cancelBarButtonItem = self->_cancelBarButtonItem;
  }

  return cancelBarButtonItem;
}

- (id)fakeBackButton
{
  plainButtonConfiguration = [MEMORY[0x1E69DC740] plainButtonConfiguration];
  v4 = MEMORY[0x1E696AEC0];
  v5 = CNContactsUIBundle();
  v6 = [v5 localizedStringForKey:@"LIMITED_BACK" value:&stru_1F0CE7398 table:@"Localized"];
  v7 = [v4 stringWithFormat:@" %@", v6];
  [plainButtonConfiguration setTitle:v7];

  v8 = [MEMORY[0x1E69DCAD8] configurationWithWeight:7];
  v9 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"chevron.backward" withConfiguration:v8];
  [plainButtonConfiguration setImage:v9];

  v10 = objc_alloc_init(MEMORY[0x1E69DC738]);
  [v10 setConfiguration:plainButtonConfiguration];
  [v10 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v10 addTarget:self action:sel_goBack_ forControlEvents:64];

  return v10;
}

- (BOOL)shouldShowCancelButton
{
  if ([(CNAccountsAndGroupsViewController *)self allowsCanceling])
  {
    return 1;
  }

  return [(CNAccountsAndGroupsViewController *)self allowsDone];
}

- (id)menuForContainers
{
  containerDataSource = [(CNAccountsAndGroupsViewController *)self containerDataSource];
  containerPickerItems = [containerDataSource containerPickerItems];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __54__CNAccountsAndGroupsViewController_menuForContainers__block_invoke;
  v8[3] = &unk_1E74E2A78;
  v8[4] = self;
  v5 = [containerPickerItems _cn_map:v8];

  v6 = [MEMORY[0x1E69DCC60] menuWithTitle:&stru_1F0CE7398 children:v5];

  return v6;
}

id __54__CNAccountsAndGroupsViewController_menuForContainers__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = MEMORY[0x1E69DC628];
  v5 = [v3 name];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __54__CNAccountsAndGroupsViewController_menuForContainers__block_invoke_2;
  v9[3] = &unk_1E74E7808;
  v9[4] = *(a1 + 32);
  v10 = v3;
  v6 = v3;
  v7 = [v4 actionWithTitle:v5 image:0 identifier:0 handler:v9];

  return v7;
}

void __54__CNAccountsAndGroupsViewController_menuForContainers__block_invoke_2(uint64_t a1)
{
  v4 = [*(a1 + 32) actionsProvider];
  v2 = *(a1 + 40);
  v3 = [*(a1 + 32) collectionView];
  [v4 createGroupActionForContainerItem:v2 isCollectionViewEditing:{objc_msgSend(v3, "isEditing")}];
}

- (void)reloadAddGroupButton
{
  if ([(CNAccountsAndGroupsViewController *)self allowsEditing])
  {
    containerDataSource = [(CNAccountsAndGroupsViewController *)self containerDataSource];
    [containerDataSource discoverContainers];

    containerDataSource2 = [(CNAccountsAndGroupsViewController *)self containerDataSource];
    containerPickerItems = [containerDataSource2 containerPickerItems];
    v6 = [containerPickerItems count];

    containerDataSource3 = [(CNAccountsAndGroupsViewController *)self containerDataSource];
    containerPickerItems2 = [containerDataSource3 containerPickerItems];
    v9 = [containerPickerItems2 count];

    if (self->_addGroupBarButtonItem)
    {
      addGroupBarButtonItem = [(CNAccountsAndGroupsViewController *)self addGroupBarButtonItem];
      [addGroupBarButtonItem setHidden:v6 == 0];

      if (v9 < 2)
      {
        menuForContainers = 0;
      }

      else
      {
        menuForContainers = [(CNAccountsAndGroupsViewController *)self menuForContainers];
      }

      addGroupBarButtonItem2 = [(CNAccountsAndGroupsViewController *)self addGroupBarButtonItem];
      [addGroupBarButtonItem2 setMenu:menuForContainers];

      if (v9 < 2)
      {
        objc_initWeak(&location, self);
        v14 = MEMORY[0x1E69DC628];
        v24 = MEMORY[0x1E69E9820];
        v25 = 3221225472;
        v26 = __57__CNAccountsAndGroupsViewController_reloadAddGroupButton__block_invoke;
        v27 = &unk_1E74E4BD0;
        objc_copyWeak(&v28, &location);
        v15 = [v14 actionWithHandler:&v24];
        v16 = [(CNAccountsAndGroupsViewController *)self addGroupBarButtonItem:v24];
        [v16 setPrimaryAction:v15];

        objc_destroyWeak(&v28);
        objc_destroyWeak(&location);
      }

      else
      {

        addGroupBarButtonItem3 = [(CNAccountsAndGroupsViewController *)self addGroupBarButtonItem];
        [addGroupBarButtonItem3 setPrimaryAction:0];
      }

      addGroupBarButtonItem4 = [(CNAccountsAndGroupsViewController *)self addGroupBarButtonItem];
      v18 = CNContactsUIBundle();
      v19 = [v18 localizedStringForKey:@"ADD_LIST" value:&stru_1F0CE7398 table:@"Localized"];
      [addGroupBarButtonItem4 setTitle:v19];
    }

    keyCommands = [(CNAccountsAndGroupsViewController *)self keyCommands];
    addGroupKeyCommand = [(CNAccountsAndGroupsViewController *)self addGroupKeyCommand];
    v22 = [keyCommands containsObject:addGroupKeyCommand];

    if (v6)
    {
      if (v22)
      {
        return;
      }

      addGroupKeyCommand2 = [(CNAccountsAndGroupsViewController *)self addGroupKeyCommand];
      [(CNAccountsAndGroupsViewController *)self addKeyCommand:addGroupKeyCommand2];
    }

    else
    {
      if (!v22)
      {
        return;
      }

      addGroupKeyCommand2 = [(CNAccountsAndGroupsViewController *)self addGroupKeyCommand];
      [(CNAccountsAndGroupsViewController *)self removeKeyCommand:addGroupKeyCommand2];
    }
  }
}

void __57__CNAccountsAndGroupsViewController_reloadAddGroupButton__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v1 = [WeakRetained addGroupBarButtonItem];
  [WeakRetained addDefaultGroup:v1];
}

- (UIBarButtonItem)addGroupBarButtonItem
{
  addGroupBarButtonItem = self->_addGroupBarButtonItem;
  if (!addGroupBarButtonItem)
  {
    v4 = objc_alloc(MEMORY[0x1E69DC708]);
    v5 = CNContactsUIBundle();
    v6 = [v5 localizedStringForKey:@"ADD_LIST" value:&stru_1F0CE7398 table:@"Localized"];
    v7 = [v4 initWithTitle:v6 menu:0];
    v8 = self->_addGroupBarButtonItem;
    self->_addGroupBarButtonItem = v7;

    addGroupBarButtonItem = self->_addGroupBarButtonItem;
  }

  return addGroupBarButtonItem;
}

- (void)addDefaultGroup:(id)group
{
  containerDataSource = [(CNAccountsAndGroupsViewController *)self containerDataSource];
  containerPickerItems = [containerDataSource containerPickerItems];
  firstObject = [containerPickerItems firstObject];

  if (firstObject)
  {
    actionsProvider = [(CNAccountsAndGroupsViewController *)self actionsProvider];
    collectionView = [(CNAccountsAndGroupsViewController *)self collectionView];
    [actionsProvider createGroupActionForContainerItem:firstObject isCollectionViewEditing:{objc_msgSend(collectionView, "isEditing")}];
  }
}

- (UIKeyCommand)addGroupKeyCommand
{
  addGroupKeyCommand = self->_addGroupKeyCommand;
  if (!addGroupKeyCommand)
  {
    v4 = [MEMORY[0x1E69DCBA0] keyCommandWithInput:@"n" modifierFlags:1179648 action:sel_addDefaultGroup_];
    v5 = self->_addGroupKeyCommand;
    self->_addGroupKeyCommand = v4;

    v6 = CNContactsUIBundle();
    v7 = [v6 localizedStringForKey:@"ADD_LIST_KEYBOARD_DISCOVERY" value:&stru_1F0CE7398 table:@"Localized"];
    [(UIKeyCommand *)self->_addGroupKeyCommand setDiscoverabilityTitle:v7];

    addGroupKeyCommand = self->_addGroupKeyCommand;
  }

  return addGroupKeyCommand;
}

- (void)authorizedSetCollectionViewEditing:(BOOL)editing
{
  editingCopy = editing;
  v23 = *MEMORY[0x1E69E9840];
  collectionView = [(CNAccountsAndGroupsViewController *)self collectionView];
  [collectionView setEditing:editingCopy];

  if (!editingCopy)
  {
    [(CNAccountsAndGroupsViewController *)self resignAllFirstRespondersSavingCurrentlyEditing:0];
    if ([(CNAccountsAndGroupsViewController *)self needsReload])
    {
      [(CNAccountsAndGroupsViewController *)self setNeedsReload:0];
      dataSource = [(CNAccountsAndGroupsViewController *)self dataSource];
      [dataSource reload];

      [(CNAccountsAndGroupsViewController *)self reloadData];
    }

    else
    {
      [(CNAccountsAndGroupsViewController *)self updateSelectionIfNeeded];
    }
  }

  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  collectionView2 = [(CNAccountsAndGroupsViewController *)self collectionView];
  preparedCells = [collectionView2 preparedCells];

  v9 = [preparedCells countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v19;
    do
    {
      v12 = 0;
      do
      {
        if (*v19 != v11)
        {
          objc_enumerationMutation(preparedCells);
        }

        v13 = *(*(&v18 + 1) + 8 * v12);
        objc_opt_class();
        v14 = v13;
        if (objc_opt_isKindOfClass())
        {
          v15 = v14;
        }

        else
        {
          v15 = 0;
        }

        v16 = v15;

        [v16 setTextViewEnabled:editingCopy];
        item = [v16 item];
        [v16 setUserInteractionEnabled:{-[CNAccountsAndGroupsViewController shouldEnableItem:](self, "shouldEnableItem:", item)}];

        ++v12;
      }

      while (v10 != v12);
      v10 = [preparedCells countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v10);
  }
}

- (void)authorizedSetViewEditing:(BOOL)editing animated:(BOOL)animated
{
  editingCopy = editing;
  v6.receiver = self;
  v6.super_class = CNAccountsAndGroupsViewController;
  [(CNAccountsAndGroupsViewController *)&v6 setEditing:editing animated:animated];
  [(CNAccountsAndGroupsViewController *)self authorizedSetCollectionViewEditing:editingCopy];
}

- (BOOL)editingCollectionViewRequiresAuthorization
{
  v19 = *MEMORY[0x1E69E9840];
  containerDataSource = [(CNAccountsAndGroupsViewController *)self containerDataSource];
  [containerDataSource discoverContainers];

  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  containerDataSource2 = [(CNAccountsAndGroupsViewController *)self containerDataSource];
  containers = [containerDataSource2 containers];

  v6 = [containers countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v15;
    while (2)
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v15 != v8)
        {
          objc_enumerationMutation(containers);
        }

        v10 = *(*(&v14 + 1) + 8 * i);
        groupsAndContainersSaveManager = [(CNAccountsAndGroupsViewController *)self groupsAndContainersSaveManager];
        LODWORD(v10) = [groupsAndContainersSaveManager isAuthorizedToEditContainer:v10];

        if (!v10)
        {
          v12 = 1;
          goto LABEL_11;
        }
      }

      v7 = [containers countByEnumeratingWithState:&v14 objects:v18 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

  v12 = 0;
LABEL_11:

  return v12;
}

- (void)setEditing:(BOOL)editing animated:(BOOL)animated
{
  animatedCopy = animated;
  editingCopy = editing;
  if (editing && [(CNAccountsAndGroupsViewController *)self editingCollectionViewRequiresAuthorization])
  {
    v7 = objc_alloc_init(CNAccountsAndGroupsAuthorizationContext);
    [(CNAccountsAndGroupsAuthorizationContext *)v7 setType:4];
    [(CNAccountsAndGroupsViewController *)self showEditAuthorizationPaneWithAuthorizationContext:v7 animated:1];
  }

  else
  {

    [(CNAccountsAndGroupsViewController *)self authorizedSetViewEditing:editingCopy animated:animatedCopy];
  }
}

- (void)setUpCollectionView
{
  v36[4] = *MEMORY[0x1E69E9840];
  v3 = objc_alloc(MEMORY[0x1E69DC7F0]);
  layout = [(CNAccountsAndGroupsViewController *)self layout];
  v5 = [v3 initWithFrame:layout collectionViewLayout:{*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)}];
  [(CNAccountsAndGroupsViewController *)self setCollectionView:v5];

  collectionView = [(CNAccountsAndGroupsViewController *)self collectionView];
  [collectionView setDelegate:self];

  collectionView2 = [(CNAccountsAndGroupsViewController *)self collectionView];
  [collectionView2 setDropDelegate:self];

  collectionView3 = [(CNAccountsAndGroupsViewController *)self collectionView];
  [collectionView3 setKeyboardDismissMode:2];

  collectionView4 = [(CNAccountsAndGroupsViewController *)self collectionView];
  [collectionView4 setSelectionFollowsFocus:1];

  [(CNAccountsAndGroupsViewController *)self configureDataSource];
  view = [(CNAccountsAndGroupsViewController *)self view];
  collectionView5 = [(CNAccountsAndGroupsViewController *)self collectionView];
  [view addSubview:collectionView5];

  collectionView6 = [(CNAccountsAndGroupsViewController *)self collectionView];
  [collectionView6 setTranslatesAutoresizingMaskIntoConstraints:0];

  collectionView7 = [(CNAccountsAndGroupsViewController *)self collectionView];
  leadingAnchor = [collectionView7 leadingAnchor];
  view2 = [(CNAccountsAndGroupsViewController *)self view];
  leadingAnchor2 = [view2 leadingAnchor];
  v31 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
  v36[0] = v31;
  collectionView8 = [(CNAccountsAndGroupsViewController *)self collectionView];
  trailingAnchor = [collectionView8 trailingAnchor];
  view3 = [(CNAccountsAndGroupsViewController *)self view];
  trailingAnchor2 = [view3 trailingAnchor];
  v26 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
  v36[1] = v26;
  collectionView9 = [(CNAccountsAndGroupsViewController *)self collectionView];
  topAnchor = [collectionView9 topAnchor];
  view4 = [(CNAccountsAndGroupsViewController *)self view];
  topAnchor2 = [view4 topAnchor];
  v16 = [topAnchor constraintEqualToAnchor:topAnchor2];
  v36[2] = v16;
  collectionView10 = [(CNAccountsAndGroupsViewController *)self collectionView];
  bottomAnchor = [collectionView10 bottomAnchor];
  view5 = [(CNAccountsAndGroupsViewController *)self view];
  bottomAnchor2 = [view5 bottomAnchor];
  v21 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
  v36[3] = v21;
  v24 = [MEMORY[0x1E695DEC8] arrayWithObjects:v36 count:4];

  [MEMORY[0x1E696ACD8] activateConstraints:v24];
  v22 = [objc_alloc(MEMORY[0x1E69DD060]) initWithTarget:self action:sel_didTapCollectionView_];
  [v22 setCancelsTouchesInView:0];
  collectionView11 = [(CNAccountsAndGroupsViewController *)self collectionView];
  [collectionView11 addGestureRecognizer:v22];
}

- (void)dealloc
{
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter removeObserver:self];

  v4.receiver = self;
  v4.super_class = CNAccountsAndGroupsViewController;
  [(CNAccountsAndGroupsViewController *)&v4 dealloc];
}

- (void)viewDidDisappear:(BOOL)disappear
{
  v4.receiver = self;
  v4.super_class = CNAccountsAndGroupsViewController;
  [(CNAccountsAndGroupsViewController *)&v4 viewDidDisappear:disappear];
  [(CNAccountsAndGroupsViewController *)self setIsVisible:0];
}

- (void)viewWillDisappear:(BOOL)disappear
{
  v8.receiver = self;
  v8.super_class = CNAccountsAndGroupsViewController;
  [(CNAccountsAndGroupsViewController *)&v8 viewWillDisappear:disappear];
  collectionView = [(CNAccountsAndGroupsViewController *)self collectionView];
  isEditing = [collectionView isEditing];

  if (isEditing)
  {
    [(CNAccountsAndGroupsViewController *)self setEditing:0];
  }

  potentiallyPresentedViewController = [(CNAccountsAndGroupsViewController *)self potentiallyPresentedViewController];

  if (potentiallyPresentedViewController)
  {
    potentiallyPresentedViewController2 = [(CNAccountsAndGroupsViewController *)self potentiallyPresentedViewController];
    [potentiallyPresentedViewController2 dismissViewControllerAnimated:0 completion:0];

    [(CNAccountsAndGroupsViewController *)self setPotentiallyPresentedViewController:0];
  }
}

- (BOOL)shouldSetFirstResponder
{
  presentedViewController = [(CNAccountsAndGroupsViewController *)self presentedViewController];

  splitViewController = [(CNAccountsAndGroupsViewController *)self splitViewController];
  firstResponder = [splitViewController firstResponder];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    LOBYTE(v6) = 0;
  }

  else
  {
    splitViewController2 = [(CNAccountsAndGroupsViewController *)self splitViewController];
    firstResponder2 = [splitViewController2 firstResponder];
    objc_opt_class();
    v6 = objc_opt_isKindOfClass() ^ 1;
  }

  return (presentedViewController == 0) & v6;
}

- (void)viewDidAppear:(BOOL)appear
{
  v7.receiver = self;
  v7.super_class = CNAccountsAndGroupsViewController;
  [(CNAccountsAndGroupsViewController *)&v7 viewDidAppear:appear];
  if ([(CNAccountsAndGroupsViewController *)self shouldSetFirstResponder])
  {
    [(CNAccountsAndGroupsViewController *)self becomeFirstResponder];
  }

  [(CNAccountsAndGroupsViewController *)self setIsVisible:1];
  transitionCoordinator = [(CNAccountsAndGroupsViewController *)self transitionCoordinator];
  v5 = transitionCoordinator;
  if (transitionCoordinator)
  {
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __51__CNAccountsAndGroupsViewController_viewDidAppear___block_invoke;
    v6[3] = &unk_1E74E3CC8;
    v6[4] = self;
    [transitionCoordinator animateAlongsideTransition:0 completion:v6];
  }

  else
  {
    [(CNAccountsAndGroupsViewController *)self updateToolbarVisibility];
  }

  [(CNAccountsAndGroupsViewController *)self configureNavigationBar];
}

- (void)viewIsAppearing:(BOOL)appearing
{
  v6.receiver = self;
  v6.super_class = CNAccountsAndGroupsViewController;
  [(CNAccountsAndGroupsViewController *)&v6 viewIsAppearing:appearing];
  groupsStyle = [(CNAccountsAndGroupsViewController *)self groupsStyle];
  shouldShowCellSelection = [groupsStyle shouldShowCellSelection];

  if ((shouldShowCellSelection & 1) == 0)
  {
    [(CNAccountsAndGroupsViewController *)self deselectAllItems];
  }

  [(CNAccountsAndGroupsViewController *)self updateNavigationButtons];
}

- (void)viewWillAppear:(BOOL)appear
{
  v10.receiver = self;
  v10.super_class = CNAccountsAndGroupsViewController;
  [(CNAccountsAndGroupsViewController *)&v10 viewWillAppear:appear];
  dataSource = [(CNAccountsAndGroupsViewController *)self dataSource];
  [dataSource setCurrentlyEditingGroupIdentifier:0];

  if (self->_needsReload)
  {
    dataSource2 = [(CNAccountsAndGroupsViewController *)self dataSource];
    [dataSource2 reload];

    [(CNAccountsAndGroupsViewController *)self reloadData];
    [(CNAccountsAndGroupsViewController *)self loadViewIfNeeded];
    self->_needsReload = 0;
  }

  else
  {
    [(CNAccountsAndGroupsViewController *)self reloadData];
  }

  transitionCoordinator = [(CNAccountsAndGroupsViewController *)self transitionCoordinator];
  v7 = transitionCoordinator;
  if (transitionCoordinator)
  {
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __52__CNAccountsAndGroupsViewController_viewWillAppear___block_invoke;
    v9[3] = &unk_1E74E3CC8;
    v9[4] = self;
    [transitionCoordinator animateAlongsideTransition:v9 completion:0];
  }

  else
  {
    [(CNAccountsAndGroupsViewController *)self clearNavigationButtonsIfNeeded];
  }

  if (self->_isLimitedAccessOnboarding)
  {
    navigationItem = [(CNAccountsAndGroupsViewController *)self navigationItem];
    [navigationItem setPrompt:&stru_1F0CE7398];
  }
}

- (void)viewDidLoad
{
  v6.receiver = self;
  v6.super_class = CNAccountsAndGroupsViewController;
  [(CNAccountsAndGroupsViewController *)&v6 viewDidLoad];
  v3 = +[CNUIContactsEnvironment currentEnvironment];
  inProcessActivityManager = [v3 inProcessActivityManager];
  activityManager = self->_activityManager;
  self->_activityManager = inProcessActivityManager;

  [(CNAccountsAndGroupsViewController *)self _updateUserActivity];
  [(CNAccountsAndGroupsViewController *)self setUpCollectionView];
}

- (void)setDataSource:(id)source
{
  sourceCopy = source;
  if (self->_dataSource != sourceCopy)
  {
    v19 = sourceCopy;
    objc_storeStrong(&self->_dataSource, source);
    if (v19)
    {
      v6 = [CNUIGroupsAndContainersSaveManager alloc];
      store = [(CNAccountsAndGroupsDataSource *)self->_dataSource store];
      v8 = [(CNUIGroupsAndContainersSaveManager *)v6 initWithContactStore:store];
      groupsAndContainersSaveManager = self->_groupsAndContainersSaveManager;
      self->_groupsAndContainersSaveManager = v8;

      v10 = [CNContainerDataSource alloc];
      store2 = [(CNAccountsAndGroupsDataSource *)self->_dataSource store];
      v12 = [(CNContainerDataSource *)v10 initWithContactStore:store2];
      containerDataSource = self->_containerDataSource;
      self->_containerDataSource = v12;

      [(CNContainerDataSource *)self->_containerDataSource setIgnoresExchangeContainers:1];
      v14 = [[CNAccountsAndGroupsActionsProvider alloc] initWithDataSource:self->_dataSource saveManager:self->_groupsAndContainersSaveManager];
      actionsProvider = self->_actionsProvider;
      self->_actionsProvider = v14;

      [(CNAccountsAndGroupsActionsProvider *)self->_actionsProvider setDelegate:self];
    }

    else
    {
      v16 = self->_groupsAndContainersSaveManager;
      self->_groupsAndContainersSaveManager = 0;

      v17 = self->_containerDataSource;
      self->_containerDataSource = 0;

      v18 = self->_actionsProvider;
      self->_actionsProvider = 0;
    }

    sourceCopy = v19;
  }
}

- (CNAccountsAndGroupsViewController)initWithNibName:(id)name bundle:(id)bundle
{
  v17.receiver = self;
  v17.super_class = CNAccountsAndGroupsViewController;
  v4 = [(CNAccountsAndGroupsViewController *)&v17 initWithNibName:name bundle:bundle];
  if (v4)
  {
    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter addObserver:v4 selector:sel_contactStoreDidChange_ name:*MEMORY[0x1E695C3D8] object:0];

    defaultCenter2 = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter2 addObserver:v4 selector:sel_contentSizeCategoryDidChange_ name:*MEMORY[0x1E69DDC48] object:0];

    defaultCenter3 = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter3 addObserver:v4 selector:sel_keyboardWillShow_ name:*MEMORY[0x1E69DE080] object:0];

    defaultCenter4 = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter4 addObserver:v4 selector:sel_keyboardWillHide_ name:*MEMORY[0x1E69DE078] object:0];

    [(CNAccountsAndGroupsViewController *)v4 addAcceptedIntroductionsNotifier];
    v4->_needsReload = 1;
    v4->_allowsEditing = 1;
    mainBundle = [MEMORY[0x1E696AAE8] mainBundle];
    bundleIdentifier = [mainBundle bundleIdentifier];

    v11 = objc_alloc(MEMORY[0x1E6996760]);
    mEMORY[0x1E6996768] = [MEMORY[0x1E6996768] sharedConnection];
    v13 = [v11 initWithBundleIdentifier:bundleIdentifier managedProfileConnection:mEMORY[0x1E6996768]];
    managedConfiguration = v4->_managedConfiguration;
    v4->_managedConfiguration = v13;

    v15 = v4;
  }

  return v4;
}

+ (id)log
{
  if (log_cn_once_token_1_15801 != -1)
  {
    dispatch_once(&log_cn_once_token_1_15801, &__block_literal_global_15802);
  }

  v3 = log_cn_once_object_1_15803;

  return v3;
}

uint64_t __40__CNAccountsAndGroupsViewController_log__block_invoke()
{
  v0 = os_log_create("com.apple.contactsui", "CNAccountsAndGroupsViewController");
  v1 = log_cn_once_object_1_15803;
  log_cn_once_object_1_15803 = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

@end