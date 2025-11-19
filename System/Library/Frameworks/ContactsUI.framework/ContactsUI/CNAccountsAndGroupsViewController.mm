@interface CNAccountsAndGroupsViewController
+ (id)log;
- (BOOL)collectionView:(id)a3 canFocusItemAtIndexPath:(id)a4;
- (BOOL)collectionView:(id)a3 canHandleDropSession:(id)a4;
- (BOOL)collectionView:(id)a3 shouldSelectItemAtIndexPath:(id)a4;
- (BOOL)editingCollectionViewRequiresAuthorization;
- (BOOL)isAnyListCellCurrentlyEditing;
- (BOOL)isCollectionViewEditing;
- (BOOL)isNotificationInternalSave:(id)a3;
- (BOOL)shouldEnableItem:(id)a3;
- (BOOL)shouldSetFirstResponder;
- (BOOL)shouldShowCancelButton;
- (BOOL)viewCanReload;
- (CNAccountsAndGroupsViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (CNAccountsAndGroupsViewControllerDelegate)delegate;
- (UIBarButtonItem)addGroupBarButtonItem;
- (UIBarButtonItem)cancelBarButtonItem;
- (UIKeyCommand)addGroupKeyCommand;
- (id)collectionView:(id)a3 contextMenuConfiguration:(id)a4 dismissalPreviewForItemAtIndexPath:(id)a5;
- (id)collectionView:(id)a3 contextMenuConfiguration:(id)a4 highlightPreviewForItemAtIndexPath:(id)a5;
- (id)collectionView:(id)a3 contextMenuConfigurationForItemsAtIndexPaths:(id)a4 point:(CGPoint)a5;
- (id)collectionView:(id)a3 dropSessionDidUpdate:(id)a4 withDestinationIndexPath:(id)a5;
- (id)currentlySelectedItem;
- (id)fakeBackButton;
- (id)groupsStyle;
- (id)layout;
- (id)menuForContainers;
- (id)multitaskingDragExclusionRects;
- (void)_updateUserActivity;
- (void)acceptedIntroductionsDidChange;
- (void)action:(id)a3 presentViewController:(id)a4;
- (void)addAcceptedIntroductionsNotifier;
- (void)addDefaultGroup:(id)a3;
- (void)authorizedAddContacts:(id)a3 toDestinationItem:(id)a4;
- (void)authorizedSetCollectionViewEditing:(BOOL)a3;
- (void)authorizedSetViewEditing:(BOOL)a3 animated:(BOOL)a4;
- (void)cancel:(id)a3;
- (void)cellTextViewDidChangeHeight;
- (void)cleanUpItemIfNeeded:(id)a3;
- (void)clearNavigationButtonsIfNeeded;
- (void)collectionView:(id)a3 didSelectItemAtIndexPath:(id)a4;
- (void)collectionView:(id)a3 performDropWithCoordinator:(id)a4;
- (void)collectionView:(id)a3 willDisplayCell:(id)a4 forItemAtIndexPath:(id)a5;
- (void)collectionView:(id)a3 willEndContextMenuInteractionWithConfiguration:(id)a4 animator:(id)a5;
- (void)configureDataSource;
- (void)configureNavigationBar;
- (void)contactStoreDidChange:(id)a3;
- (void)dealloc;
- (void)deselectAllItems;
- (void)didTapCollectionView:(id)a3;
- (void)dismissKeyboard;
- (void)editAuthorizationController:(id)a3 authorizationDidFinishWithResult:(int64_t)a4;
- (void)expandSectionForAccountWithIdentifier:(id)a3;
- (void)goBack:(id)a3;
- (void)item:(id)a3 didEndEditingWithName:(id)a4;
- (void)keyboardWillHide:(id)a3;
- (void)keyboardWillShow:(id)a3;
- (void)presentController:(id)a3 animated:(BOOL)a4;
- (void)presentErrorAlertWithTitle:(id)a3 message:(id)a4 animated:(BOOL)a5;
- (void)reloadAddGroupButton;
- (void)reloadCollectionViewAddingPlaceholderItem:(id)a3 inSectionWithIdentifier:(id)a4;
- (void)reloadCollectionViewDeletingItem:(id)a3;
- (void)reloadCollectionViewForSectionWithIdentifier:(id)a3 settingFilterForEditingItem:(BOOL)a4 allowsReloadWhenEditing:(BOOL)a5;
- (void)reloadData;
- (void)removePlaceholderCellsIfNeededInSection:(id)a3 animated:(BOOL)a4;
- (void)resignAllFirstRespondersSavingCurrentlyEditing:(BOOL)a3;
- (void)restoreCurrentlyEditingGroupIfNeeded;
- (void)selectAllContacts;
- (void)setDataSource:(id)a3;
- (void)setEditing:(BOOL)a3 animated:(BOOL)a4;
- (void)setEditingForGroupItem:(id)a3;
- (void)setUpCollectionView;
- (void)showEditAuthorizationPaneWithAuthorizationContext:(id)a3 animated:(BOOL)a4;
- (void)traitCollectionDidChange:(id)a3;
- (void)updateNavigationButtons;
- (void)updateSelectionIfNeeded;
- (void)updateToolbarVisibility;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidDisappear:(BOOL)a3;
- (void)viewDidLoad;
- (void)viewIsAppearing:(BOOL)a3;
- (void)viewWillAppear:(BOOL)a3;
- (void)viewWillDisappear:(BOOL)a3;
@end

@implementation CNAccountsAndGroupsViewController

- (void)addAcceptedIntroductionsNotifier
{
  v3 = [MEMORY[0x1E69966E8] currentEnvironment];
  v4 = [v3 featureFlags];
  v5 = [v4 isFeatureEnabled:19];

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
      v4 = [MEMORY[0x1E696AAE8] mainBundle];
      v5 = [v4 bundleIdentifier];
      v16 = 138412290;
      v17 = v5;
      _os_log_impl(&dword_199A75000, v3, OS_LOG_TYPE_INFO, "Activity continuity - running in %@", &v16, 0xCu);
    }

    v6 = [(CNAccountsAndGroupsViewController *)self activityManager];
    v7 = [v6 makeActivityAdvertisingViewingGroups];

    v8 = [(CNAccountsAndGroupsViewController *)self userActivity];
    v9 = v8;
    if (v7)
    {

      if (!v9)
      {
        [(CNAccountsAndGroupsViewController *)self setUserActivity:v7];
        v10 = [(CNAccountsAndGroupsViewController *)self userActivity];
        [v10 becomeCurrent];

        v11 = [objc_opt_class() log];
        if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
        {
          v12 = [(CNAccountsAndGroupsViewController *)self userActivity];
          v16 = 138412546;
          v17 = self;
          v18 = 2112;
          v19 = v12;
          _os_log_impl(&dword_199A75000, v11, OS_LOG_TYPE_INFO, "Activity continuity -  %@ created %@", &v16, 0x16u);
        }
      }

      v13 = [(CNAccountsAndGroupsViewController *)self userActivity];
      [v13 setNeedsSave:1];
    }

    else
    {
      [v8 resignCurrent];

      v14 = [objc_opt_class() log];
      if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
      {
        v15 = [(CNAccountsAndGroupsViewController *)self userActivity];
        v16 = 138412546;
        v17 = self;
        v18 = 2112;
        v19 = v15;
        _os_log_impl(&dword_199A75000, v14, OS_LOG_TYPE_INFO, "Activity continuity -  %@ removed %@", &v16, 0x16u);
      }

      [(CNAccountsAndGroupsViewController *)self setUserActivity:0];
    }
  }
}

- (void)action:(id)a3 presentViewController:(id)a4
{
  v19 = a4;
  v5 = [v19 popoverPresentationController];
  v6 = [v5 sourceView];

  if (!v6)
  {
    v7 = [(CNAccountsAndGroupsViewController *)self collectionView];
    v8 = [v19 popoverPresentationController];
    [v8 setSourceView:v7];

    v9 = [(CNAccountsAndGroupsViewController *)self collectionView];
    [v9 bounds];
    v11 = v10;
    v13 = v12;
    v15 = v14;
    v17 = v16;
    v18 = [v19 popoverPresentationController];
    [v18 setSourceRect:{v11, v13, v15, v17}];
  }

  [(CNAccountsAndGroupsViewController *)self presentController:v19 animated:1];
}

- (void)keyboardWillHide:(id)a3
{
  v3 = *MEMORY[0x1E69DDCE0];
  v4 = *(MEMORY[0x1E69DDCE0] + 8);
  v5 = *(MEMORY[0x1E69DDCE0] + 16);
  v6 = *(MEMORY[0x1E69DDCE0] + 24);
  v7 = [(CNAccountsAndGroupsViewController *)self collectionView];
  [v7 setContentInset:{v3, v4, v5, v6}];
}

- (void)keyboardWillShow:(id)a3
{
  v4 = [a3 userInfo];
  v5 = [v4 objectForKeyedSubscript:*MEMORY[0x1E69DDFA0]];
  [v5 CGRectValue];
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;

  v33 = [(CNAccountsAndGroupsViewController *)self collectionView];
  v14 = [v33 window];
  [v14 convertRect:0 fromWindow:{v7, v9, v11, v13}];
  v16 = v15;
  v18 = v17;
  v20 = v19;
  v22 = v21;

  [v33 convertRect:0 fromView:{v16, v18, v20, v22}];
  v24 = v23;
  v25 = [(CNAccountsAndGroupsViewController *)self collectionView];
  [v25 contentInset];
  v27 = v26;
  v29 = v28;
  v31 = v30;

  v32 = [(CNAccountsAndGroupsViewController *)self collectionView];
  [v32 setContentInset:{v27, v29, v24, v31}];
}

- (void)dismissKeyboard
{
  v2 = [(CNAccountsAndGroupsViewController *)self view];
  [v2 endEditing:1];
}

- (void)didTapCollectionView:(id)a3
{
  v4 = a3;
  v5 = [(CNAccountsAndGroupsViewController *)self collectionView];
  [v4 locationInView:v5];
  v7 = v6;

  v8 = [(CNAccountsAndGroupsViewController *)self collectionView];
  [v8 bounds];
  v10 = v9;

  v11 = [(CNAccountsAndGroupsViewController *)self collectionView];
  v12 = [v11 collectionViewLayout];
  v13 = [v12 layoutAttributesForElementsInRect:{0.0, v7, v10, 1.0}];

  if ((*(*MEMORY[0x1E6996530] + 16))())
  {
    [(CNAccountsAndGroupsViewController *)self dismissKeyboard];
  }
}

- (void)showEditAuthorizationPaneWithAuthorizationContext:(id)a3 animated:(BOOL)a4
{
  v4 = a4;
  [(CNAccountsAndGroupsViewController *)self setCurrentAuthorizationContext:a3];
  v6 = objc_alloc_init(CNUIEditAuthorizationController);
  [(CNAccountsAndGroupsViewController *)self setEditAuthorizationController:v6];

  v7 = [(CNAccountsAndGroupsViewController *)self editAuthorizationController];
  [v7 setDelegate:self];

  v8 = [(CNAccountsAndGroupsViewController *)self editAuthorizationController];
  [v8 setSender:self];

  v9 = [(CNAccountsAndGroupsViewController *)self editAuthorizationController];
  [v9 setAnimated:v4];

  v10 = [(CNAccountsAndGroupsViewController *)self editAuthorizationController];
  [v10 setGuardedViewController:self];

  v11 = [(CNAccountsAndGroupsViewController *)self editAuthorizationController];
  [v11 presentAuthorizationUI];
}

- (void)presentErrorAlertWithTitle:(id)a3 message:(id)a4 animated:(BOOL)a5
{
  v5 = a5;
  v11 = [MEMORY[0x1E69DC650] alertControllerWithTitle:a3 message:a4 preferredStyle:1];
  v7 = MEMORY[0x1E69DC648];
  v8 = CNContactsUIBundle();
  v9 = [v8 localizedStringForKey:@"OKAY" value:&stru_1F0CE7398 table:@"Localized"];
  v10 = [v7 actionWithTitle:v9 style:0 handler:0];

  [v11 addAction:v10];
  [(CNAccountsAndGroupsViewController *)self presentController:v11 animated:v5];
}

- (void)presentController:(id)a3 animated:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  [(CNAccountsAndGroupsViewController *)self setPotentiallyPresentedViewController:v6];
  [(CNAccountsAndGroupsViewController *)self presentViewController:v6 animated:v4 completion:0];
}

- (void)editAuthorizationController:(id)a3 authorizationDidFinishWithResult:(int64_t)a4
{
  [(CNAccountsAndGroupsViewController *)self setEditAuthorizationController:0];
  v6 = [(CNAccountsAndGroupsViewController *)self currentAuthorizationContext];

  if (!v6)
  {
    return;
  }

  if (a4 < 2)
  {
    v7 = [(CNAccountsAndGroupsViewController *)self currentAuthorizationContext];
    v8 = [v7 actionCompletionHandler];

    if (!v8)
    {
      return;
    }

    v18 = [(CNAccountsAndGroupsViewController *)self currentAuthorizationContext];
    v9 = [v18 actionCompletionHandler];
    v9[2](v9, 0);
    goto LABEL_20;
  }

  if (a4 != 2)
  {
    return;
  }

  v10 = [(CNAccountsAndGroupsViewController *)self currentAuthorizationContext];
  v11 = [v10 type];

  if (v11 <= 1)
  {
    if (v11)
    {
      if (v11 != 1)
      {
        return;
      }

      v18 = [(CNAccountsAndGroupsViewController *)self actionsProvider];
      v9 = [(CNAccountsAndGroupsViewController *)self currentAuthorizationContext];
      v12 = [v9 cell];
      [v18 authorizedEditGroupNameForCell:v12];
      goto LABEL_19;
    }

    v18 = [(CNAccountsAndGroupsViewController *)self currentAuthorizationContext];
    v13 = [v18 contactsToAddToDropDestination];
    v14 = [(CNAccountsAndGroupsViewController *)self currentAuthorizationContext];
    v17 = [v14 item];
    [(CNAccountsAndGroupsViewController *)self authorizedAddContacts:v13 toDestinationItem:v17];

LABEL_25:
    goto LABEL_21;
  }

  switch(v11)
  {
    case 2:
      v18 = [(CNAccountsAndGroupsViewController *)self actionsProvider];
      v13 = [(CNAccountsAndGroupsViewController *)self currentAuthorizationContext];
      v14 = [v13 item];
      v15 = [(CNAccountsAndGroupsViewController *)self currentAuthorizationContext];
      v16 = [v15 actionCompletionHandler];
      [v18 authorizedDeleteGroupForItem:v14 completionHandler:v16];

      goto LABEL_25;
    case 3:
      v18 = [(CNAccountsAndGroupsViewController *)self actionsProvider];
      v9 = [(CNAccountsAndGroupsViewController *)self currentAuthorizationContext];
      v12 = [v9 containerItem];
      [v18 authorizedCreateGroupActionForContainerItem:v12];
LABEL_19:

LABEL_20:
LABEL_21:

      return;
    case 4:

      [(CNAccountsAndGroupsViewController *)self authorizedSetViewEditing:1 animated:1];
      break;
  }
}

- (void)authorizedAddContacts:(id)a3 toDestinationItem:(id)a4
{
  v19 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = [(CNAccountsAndGroupsViewController *)self dataSource];
  v9 = [v8 containerIdentifierForItem:v7];

  if ((*(*MEMORY[0x1E6996570] + 16))())
  {
    v10 = [(CNAccountsAndGroupsViewController *)self dataSource];
    v11 = [v10 groupIdentifierForGroupItem:v7];

    v12 = [(CNAccountsAndGroupsViewController *)self groupsAndContainersSaveManager];
    v13 = [v12 addContacts:v6 toGroupWithIdentifier:v11 inContainerWithIdentifier:v9 moveWasAuthorized:1];

    v14 = [(CNAccountsAndGroupsViewController *)self dataSource];
    v15 = [v14 sectionIdentifierForItem:v7];

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
      v18 = v7;
      _os_log_error_impl(&dword_199A75000, v16, OS_LOG_TYPE_ERROR, "Could not add contacts to item: %@, container identifier is nil", &v17, 0xCu);
    }
  }
}

- (void)collectionView:(id)a3 performDropWithCoordinator:(id)a4
{
  v35 = *MEMORY[0x1E69E9840];
  v5 = a4;
  v6 = [(CNAccountsAndGroupsViewController *)self diffableDataSource];
  v7 = [v5 destinationIndexPath];
  v8 = [v6 itemIdentifierForIndexPath:v7];

  v9 = [(CNAccountsAndGroupsViewController *)self dataSource];
  v10 = [v9 containerIdentifierForItem:v8];

  v11 = [(CNAccountsAndGroupsViewController *)self groupsAndContainersSaveManager];
  v12 = [v11 containerForContainerIdentifier:v10];

  v13 = [(CNAccountsAndGroupsViewController *)self groupsAndContainersSaveManager];
  v14 = [v13 acAccountForContainer:v12];

  if (v12)
  {
    v15 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v16 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v17 = objc_alloc_init(MEMORY[0x1E695DF70]);
    [v5 session];
    v25 = v5;
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
    v5 = v25;
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

- (id)collectionView:(id)a3 dropSessionDidUpdate:(id)a4 withDestinationIndexPath:(id)a5
{
  v6 = a5;
  objc_opt_class();
  v7 = [(CNAccountsAndGroupsViewController *)self diffableDataSource];
  v8 = [v7 itemIdentifierForIndexPath:v6];

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
    v11 = [(CNAccountsAndGroupsViewController *)self dataSource];
    v12 = [v11 containerIdentifierForItem:v10];

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

- (BOOL)collectionView:(id)a3 canHandleDropSession:(id)a4
{
  v4 = a4;
  v5 = [objc_opt_class() allowedDropTypes];
  v6 = [v4 hasItemsConformingToTypeIdentifiers:v5];

  return v6;
}

- (id)multitaskingDragExclusionRects
{
  v12[1] = *MEMORY[0x1E69E9840];
  v2 = MEMORY[0x1E696B098];
  v3 = [(CNAccountsAndGroupsViewController *)self view];
  [v3 bounds];
  v11[0] = v4;
  v11[1] = v5;
  v11[2] = v6;
  v11[3] = v7;
  v8 = [v2 valueWithBytes:v11 objCType:"{CGRect={CGPoint=dd}{CGSize=dd}}"];
  v12[0] = v8;
  v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v12 count:1];

  return v9;
}

- (void)collectionView:(id)a3 willEndContextMenuInteractionWithConfiguration:(id)a4 animator:(id)a5
{
  v14 = [a4 identifier];
  v6 = [(CNAccountsAndGroupsViewController *)self collectionView];
  v7 = [v6 cellForItemAtIndexPath:v14];

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
    v11 = [(CNAccountsAndGroupsViewController *)self groupsStyle];
    v12 = [v10 item];
    v13 = [v11 cellAccessoriesForItem:v12];
    [v10 setAccessories:v13];
  }
}

- (id)collectionView:(id)a3 contextMenuConfiguration:(id)a4 dismissalPreviewForItemAtIndexPath:(id)a5
{
  v6 = a5;
  v7 = [(CNAccountsAndGroupsViewController *)self collectionView];
  v8 = [v7 cellForItemAtIndexPath:v6];

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
    v13 = [(CNAccountsAndGroupsViewController *)self groupsStyle];
    v14 = [v11 item];
    v15 = [v13 cellAccessoriesForItem:v14];
    [v11 setAccessories:v15];

    v16 = objc_alloc_init(MEMORY[0x1E69DCE28]);
    v17 = [(CNAccountsAndGroupsViewController *)self groupsStyle];
    v18 = [v17 backgroundColor];

    if (v18)
    {
      v19 = [(CNAccountsAndGroupsViewController *)self groupsStyle];
      v20 = [v19 backgroundColor];
      [v16 setBackgroundColor:v20];
    }

    v21 = [(CNAccountsAndGroupsViewController *)self groupsStyle];
    v22 = [v21 isInset];

    if ((v22 & 1) == 0)
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

- (id)collectionView:(id)a3 contextMenuConfiguration:(id)a4 highlightPreviewForItemAtIndexPath:(id)a5
{
  v6 = a5;
  v7 = [(CNAccountsAndGroupsViewController *)self collectionView];
  v8 = [v7 cellForItemAtIndexPath:v6];

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
    v13 = [(CNAccountsAndGroupsViewController *)self groupsStyle];
    v14 = [v11 item];
    v15 = [v13 cellAccessoriesForContextMenuPreviewForItem:v14];
    [v11 setAccessories:v15];

    v16 = objc_alloc_init(MEMORY[0x1E69DCE28]);
    v17 = [(CNAccountsAndGroupsViewController *)self groupsStyle];
    v18 = [v17 backgroundColor];

    if (v18)
    {
      v19 = [(CNAccountsAndGroupsViewController *)self groupsStyle];
      v20 = [v19 backgroundColor];
      [v16 setBackgroundColor:v20];
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

- (id)collectionView:(id)a3 contextMenuConfigurationForItemsAtIndexPaths:(id)a4 point:(CGPoint)a5
{
  v7 = a3;
  v8 = a4;
  if ([v8 count] == 1)
  {
    v9 = [v8 firstObject];
    if (-[CNAccountsAndGroupsViewController allowsEditing](self, "allowsEditing") && (-[CNAccountsAndGroupsViewController collectionView](self, "collectionView"), v10 = objc_claimAutoreleasedReturnValue(), v11 = [v10 isEditing], v10, (v11 & 1) == 0))
    {
      objc_opt_class();
      v13 = [(CNAccountsAndGroupsViewController *)self diffableDataSource];
      v14 = [v13 itemIdentifierForIndexPath:v9];
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
      v17 = [v7 cellForItemAtIndexPath:v9];
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
        v20 = [v16 identifier];
        v21 = [(CNAccountsAndGroupsViewController *)self dataSource];
        v22 = [v21 currentlyEditingGroupIdentifier];
        v23 = [v20 isEqualToString:v22];

        if ((v23 & 1) != 0 || ![v16 canShowContextMenu])
        {
          v12 = 0;
        }

        else
        {
          v24 = [(CNAccountsAndGroupsViewController *)self actionsProvider];
          v12 = [v24 contextMenuConfigurationForItem:v16 cell:v19 atIndexPath:v9];
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

- (BOOL)collectionView:(id)a3 canFocusItemAtIndexPath:(id)a4
{
  v5 = a4;
  objc_opt_class();
  v6 = [(CNAccountsAndGroupsViewController *)self diffableDataSource];
  v7 = [v6 itemIdentifierForIndexPath:v5];

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
    v10 = [(CNAccountsAndGroupsViewController *)self dataSource];
    v11 = [v10 currentlyEditingGroupIdentifier];
    v12 = [v9 identifier];
    v13 = [v11 isEqualToString:v12];

    v14 = v13 ^ 1;
  }

  else
  {
    v14 = 1;
  }

  return v14;
}

- (void)collectionView:(id)a3 willDisplayCell:(id)a4 forItemAtIndexPath:(id)a5
{
  v5 = a4;
  objc_opt_class();
  v8 = v5;
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

- (void)collectionView:(id)a3 didSelectItemAtIndexPath:(id)a4
{
  v5 = a4;
  v6 = [(CNAccountsAndGroupsViewController *)self diffableDataSource];
  v19 = [v6 itemIdentifierForIndexPath:v5];

  v7 = [(CNAccountsAndGroupsViewController *)self dataSource];
  v8 = [v7 filter];

  v9 = [(CNAccountsAndGroupsViewController *)self dataSource];
  [v9 setFilterForItem:v19];

  v10 = [(CNAccountsAndGroupsViewController *)self dataSource];
  v11 = [v10 filter];
  if ([v8 isEqual:v11])
  {
    v12 = [(CNAccountsAndGroupsViewController *)self dataSource];
    v13 = [v12 serverFilter];

    if (!v13)
    {
      goto LABEL_7;
    }
  }

  else
  {
  }

  v14 = [(CNAccountsAndGroupsViewController *)self delegate];
  [v14 accountsAndGroupsViewControllerDidUpdateSelection:self];

  v15 = [(CNAccountsAndGroupsViewController *)self delegate];
  v16 = objc_opt_respondsToSelector();

  if (v16)
  {
    v17 = [(CNAccountsAndGroupsViewController *)self delegate];
    [v17 accountsAndGroupsViewControllerDidChangeList:self];
  }

LABEL_7:
  v18 = [(CNAccountsAndGroupsViewController *)self delegate];
  [v18 accountsAndGroupsViewControllerDidFinish:self];

  [(CNAccountsAndGroupsViewController *)self resignAllFirstRespondersSavingCurrentlyEditing:0];
  if (([(CNAccountsAndGroupsViewController *)self isFirstResponder]& 1) == 0)
  {
    [(CNAccountsAndGroupsViewController *)self becomeFirstResponder];
  }
}

- (BOOL)collectionView:(id)a3 shouldSelectItemAtIndexPath:(id)a4
{
  v5 = a4;
  v6 = [(CNAccountsAndGroupsViewController *)self diffableDataSource];
  v7 = [v6 itemIdentifierForIndexPath:v5];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = [v7 identifier];
    v9 = [v8 isEqualToString:@"groupPlaceholderIdentifier"] ^ 1;
  }

  else
  {
    LOBYTE(v9) = 0;
  }

  return v9;
}

- (void)item:(id)a3 didEndEditingWithName:(id)a4
{
  v13 = a3;
  v6 = a4;
  v7 = [(CNAccountsAndGroupsViewController *)self dataSource];
  v8 = [v7 currentlyEditingGroupIdentifier];
  v9 = [v13 identifier];
  v10 = [v8 isEqualToString:v9];

  if (v10)
  {
    v11 = [(CNAccountsAndGroupsViewController *)self dataSource];
    [v11 setCurrentlyEditingGroupIdentifier:0];
  }

  v12 = [(CNAccountsAndGroupsViewController *)self actionsProvider];
  [v12 updateItem:v13 withNewName:v6];
}

- (void)cellTextViewDidChangeHeight
{
  v5 = [(CNAccountsAndGroupsViewController *)self diffableDataSource];
  v3 = [(CNAccountsAndGroupsViewController *)self diffableDataSource];
  v4 = [v3 snapshot];
  [v5 applySnapshot:v4 animatingDifferences:1];
}

- (BOOL)isCollectionViewEditing
{
  v2 = [(CNAccountsAndGroupsViewController *)self collectionView];
  v3 = [v2 isEditing];

  return v3;
}

- (void)selectAllContacts
{
  v3 = [(CNAccountsAndGroupsViewController *)self dataSource];
  v16 = [v3 showAllSectionItem];

  v4 = [(CNAccountsAndGroupsViewController *)self dataSource];
  v5 = [v4 sections];
  if ([v5 count] == 1)
  {
    v6 = [(CNAccountsAndGroupsViewController *)self dataSource];
    v7 = [v6 sections];
    v8 = [v7 firstObject];
    v9 = [v8 items];
    v10 = [v9 count];

    if (!v10)
    {
      goto LABEL_5;
    }

    v11 = [(CNAccountsAndGroupsViewController *)self dataSource];
    v12 = [v11 sections];
    v4 = [v12 firstObject];

    v5 = [v4 items];
    v13 = [v5 firstObject];

    v16 = v13;
  }

LABEL_5:
  v14 = [(CNAccountsAndGroupsViewController *)self dataSource];
  [v14 setFilterForItem:v16];

  v15 = [(CNAccountsAndGroupsViewController *)self delegate];
  [v15 accountsAndGroupsViewControllerDidUpdateSelection:self];

  [(CNAccountsAndGroupsViewController *)self updateSelectionIfNeeded];
}

- (void)traitCollectionDidChange:(id)a3
{
  v8.receiver = self;
  v8.super_class = CNAccountsAndGroupsViewController;
  v4 = a3;
  [(CNAccountsAndGroupsViewController *)&v8 traitCollectionDidChange:v4];
  v5 = [v4 _splitViewControllerContext];

  v6 = [(CNAccountsAndGroupsViewController *)self traitCollection];
  v7 = [v6 _splitViewControllerContext];

  if (v5 != v7)
  {
    [(CNAccountsAndGroupsViewController *)self reloadData];
    [(CNAccountsAndGroupsViewController *)self updateNavigationButtons];
  }

  [(CNAccountsAndGroupsViewController *)self configureNavigationBar];
}

- (BOOL)shouldEnableItem:(id)a3
{
  v4 = a3;
  v5 = [(CNAccountsAndGroupsViewController *)self delegate];
  v6 = [v4 identifier];
  v7 = [v5 accountsAndGroupsViewController:self shouldEnableItemWithIdentifier:v6];

  if ([(CNAccountsAndGroupsViewController *)self isEditing])
  {
    v8 = [v4 isEditable];
  }

  else
  {
    v8 = 1;
  }

  return v7 & v8;
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
  v14 = [(CNAccountsAndGroupsViewController *)self collectionView];
  v21 = v11;
  v15 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v21 count:1];
  v16 = [v13 initWithCollectionView:v14 sectionControllers:v15 rendererIdentifierProvider:&__block_literal_global_173];

  [(CNAccountsAndGroupsViewController *)self setDiffableDataSource:v16];
  v17 = [(CNAccountsAndGroupsViewController *)self collectionView];
  [v17 setDelegate:self];
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
  v2 = [(CNAccountsAndGroupsViewController *)self traitCollection];
  v3 = [CNAccountsAndGroupsStyle styleForTraitCollection:v2];

  return v3;
}

- (BOOL)viewCanReload
{
  if ([(CNAccountsAndGroupsViewController *)self isViewLoaded])
  {
    v3 = [(CNAccountsAndGroupsViewController *)self isVisible];
  }

  else
  {
    v3 = 0;
  }

  if (([(CNAccountsAndGroupsViewController *)self isEditing]& 1) != 0)
  {
    LOBYTE(v4) = 0;
  }

  else
  {
    v5 = *MEMORY[0x1E6996570];
    v6 = [(CNAccountsAndGroupsViewController *)self dataSource];
    v7 = [v6 currentlyEditingGroupIdentifier];
    if ((*(v5 + 16))(v5, v7))
    {
      LOBYTE(v4) = 0;
    }

    else
    {
      v4 = ![(CNAccountsAndGroupsViewController *)self isAnyListCellCurrentlyEditing];
    }
  }

  return v3 & v4;
}

- (BOOL)isNotificationInternalSave:(id)a3
{
  v4 = a3;
  v5 = [v4 userInfo];
  v6 = [v5 objectForKey:*MEMORY[0x1E695CBF0]];

  if (v6 && ([v6 BOOLValue] & 1) != 0)
  {
    v7 = 0;
  }

  else
  {
    v8 = [v4 userInfo];
    v9 = [v8 objectForKey:*MEMORY[0x1E695CBF8]];

    v10 = [MEMORY[0x1E695DFD8] setWithArray:v9];
    v11 = MEMORY[0x1E695DFD8];
    v12 = [(CNAccountsAndGroupsViewController *)self actionsProvider];
    v13 = [v12 issuedSaveRequestIdentifiers];
    v14 = [v11 setWithArray:v13];

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
  v4 = [v3 defaultSchedulerProvider];
  v5 = [v4 mainThreadScheduler];

  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __67__CNAccountsAndGroupsViewController_acceptedIntroductionsDidChange__block_invoke;
  v6[3] = &unk_1E74E6A88;
  v6[4] = self;
  [v5 performBlock:v6];
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

- (void)contactStoreDidChange:(id)a3
{
  v4 = a3;
  v5 = +[CNUIContactsEnvironment currentEnvironment];
  v6 = [v5 defaultSchedulerProvider];
  v7 = [v6 mainThreadScheduler];

  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __59__CNAccountsAndGroupsViewController_contactStoreDidChange___block_invoke;
  v9[3] = &unk_1E74E77C0;
  v9[4] = self;
  v10 = v4;
  v8 = v4;
  [v7 performBlock:v9];
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
  v3 = [(CNAccountsAndGroupsViewController *)self collectionView];
  v4 = [v3 indexPathsForSelectedItems];

  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v5 = v4;
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
        v11 = [(CNAccountsAndGroupsViewController *)self collectionView];
        [v11 deselectItemAtIndexPath:v10 animated:0];

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
  v2 = self;
  v3 = [(CNAccountsAndGroupsViewController *)self collectionView];
  v4 = [v3 indexPathsForVisibleItems];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __66__CNAccountsAndGroupsViewController_isAnyListCellCurrentlyEditing__block_invoke;
  v6[3] = &unk_1E74E3A80;
  v6[4] = v2;
  LOBYTE(v2) = [v4 _cn_any:v6];

  return v2;
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

- (void)setEditingForGroupItem:(id)a3
{
  if (a3)
  {
    v4 = a3;
    v5 = [(CNAccountsAndGroupsViewController *)self diffableDataSource];
    v6 = [v5 indexPathForItemIdentifier:v4];

    v7 = [(CNAccountsAndGroupsViewController *)self dataSource];
    [v7 setCurrentlyEditingGroupIdentifier:0];

    if (v6)
    {
      v8 = [(CNAccountsAndGroupsViewController *)self collectionView];
      [v8 scrollToItemAtIndexPath:v6 atScrollPosition:2 animated:0];

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
  v4 = [(CNAccountsAndGroupsViewController *)self dataSource];
  v3 = [v4 currentlyEditingGroupItem];
  [(CNAccountsAndGroupsViewController *)self setEditingForGroupItem:v3];
}

- (id)currentlySelectedItem
{
  v3 = [(CNAccountsAndGroupsViewController *)self diffableDataSource];
  v4 = [v3 snapshot];
  v5 = [v4 itemIdentifiers];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __58__CNAccountsAndGroupsViewController_currentlySelectedItem__block_invoke;
  v8[3] = &unk_1E74E71A8;
  v8[4] = self;
  v6 = [v5 _cn_firstObjectPassingTest:v8];

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
  v3 = [(CNAccountsAndGroupsViewController *)self groupsStyle];
  v4 = [v3 shouldShowCellSelection];

  if (v4)
  {
    v5 = [(CNAccountsAndGroupsViewController *)self currentlySelectedItem];
    if (v5)
    {
      v9 = v5;
      v6 = [(CNAccountsAndGroupsViewController *)self diffableDataSource];
      v7 = [v6 indexPathForItemIdentifier:v9];

      if (v7)
      {
        v8 = [(CNAccountsAndGroupsViewController *)self collectionView];
        [v8 selectItemAtIndexPath:v7 animated:0 scrollPosition:0];
      }

      v5 = v9;
    }
  }

  else
  {

    [(CNAccountsAndGroupsViewController *)self deselectAllItems];
  }
}

- (void)resignAllFirstRespondersSavingCurrentlyEditing:(BOOL)a3
{
  v3 = a3;
  v5 = [(CNAccountsAndGroupsViewController *)self dataSource];
  v9 = [v5 currentlyEditingGroupIdentifier];

  v6 = [(CNAccountsAndGroupsViewController *)self view];
  [v6 endEditing:1];

  if (v3)
  {
    v7 = v9;
  }

  else
  {
    v7 = 0;
  }

  v8 = [(CNAccountsAndGroupsViewController *)self dataSource];
  [v8 setCurrentlyEditingGroupIdentifier:v7];
}

- (void)expandSectionForAccountWithIdentifier:(id)a3
{
  v11[1] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(CNAccountsAndGroupsViewController *)self dataSource];
  v6 = [v5 sectionForIdentifier:v4];

  if (v6)
  {
    v7 = [(CNAccountsAndGroupsViewController *)self sectionController];
    v8 = [v7 snapshotForSection:v6];

    if (v8 && ([v8 isExpanded:v6] & 1) == 0)
    {
      v11[0] = v6;
      v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v11 count:1];
      [v8 expandItems:v9];

      v10 = [(CNAccountsAndGroupsViewController *)self sectionController];
      [v10 applySnapshot:v8 toSection:v6 animatingDifferences:1 completion:0];
    }
  }
}

- (void)configureNavigationBar
{
  v3 = [MEMORY[0x1E69966E8] currentEnvironment];
  v4 = [v3 featureFlags];
  v5 = [v4 isFeatureEnabled:29];

  if (v5)
  {
    v6 = [(CNAccountsAndGroupsViewController *)self navigationController];
    v7 = [v6 navigationBar];
    [v7 setPrefersLargeTitles:0];

    v8 = [(CNAccountsAndGroupsViewController *)self navigationItem];
    [v8 setLargeTitleDisplayMode:2];

    v13 = [(CNAccountsAndGroupsViewController *)self traitCollection];
    v9 = [v13 _splitViewControllerContext] != 0;
    v10 = [(CNAccountsAndGroupsViewController *)self navigationController];
    v11 = [v10 navigationBar];
    v12 = [v11 standardAppearance];
    [v12 _setTitleControlHidden:v9];
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
  v3 = [(CNAccountsAndGroupsViewController *)self dataSource];
  v4 = [v3 sections];

  v5 = [v4 countByEnumeratingWithState:&v40 objects:v46 count:16];
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
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v40 + 1) + 8 * v8);
        v10 = objc_alloc_init(MEMORY[0x1E69DC5D0]);
        if ([v9 wantsSectionHeader])
        {
          v45 = v9;
          v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v45 count:1];
          [v10 appendItems:v11];

          v12 = [v9 items];
          [v10 appendItems:v12 intoParent:v9];

          v44 = v9;
          v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v44 count:1];
          [v10 expandItems:v13];
        }

        else
        {
          v13 = [v9 items];
          [v10 appendItems:v13];
        }

        v14 = [(CNAccountsAndGroupsViewController *)self sectionController];
        [v14 applySnapshot:v10 toSection:v9 animatingDifferences:0 completion:0];

        ++v8;
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v40 objects:v46 count:16];
    }

    while (v6);
  }

  v15 = [(CNAccountsAndGroupsViewController *)self diffableDataSource];
  v16 = [v15 snapshot];

  v17 = [(CNAccountsAndGroupsViewController *)self sectionController];
  v18 = [v17 associatedSectionIdentifiers];
  v39[0] = MEMORY[0x1E69E9820];
  v39[1] = 3221225472;
  v39[2] = __47__CNAccountsAndGroupsViewController_reloadData__block_invoke;
  v39[3] = &unk_1E74E5A40;
  v39[4] = self;
  v19 = [v18 _cn_filter:v39];
  v20 = [v19 allObjects];

  if (((*(*MEMORY[0x1E6996530] + 16))() & 1) == 0)
  {
    [v16 deleteSectionsWithIdentifiers:v20];
  }

  v21 = [(CNAccountsAndGroupsViewController *)self dataSource];
  v22 = [v21 sections];
  v23 = [v22 firstObject];

  if ([v23 isAllContactsGlobalSection])
  {
    v24 = [v16 sectionIdentifiers];
    if ([v24 count] >= 2)
    {
      v25 = [v16 sectionIdentifiers];
      v26 = [v25 firstObject];
      if ([v26 isEqual:v23])
      {
      }

      else
      {
        v27 = [v16 sectionIdentifiers];
        v28 = [v27 containsObject:v23];

        if (!v28)
        {
          goto LABEL_21;
        }

        v24 = [v16 sectionIdentifiers];
        v25 = [v24 firstObject];
        [v16 moveSectionWithIdentifier:v23 beforeSectionWithIdentifier:v25];
      }
    }
  }

LABEL_21:
  v29 = [v16 itemIdentifiers];
  [v16 reloadItemsWithIdentifiers:v29];

  v30 = [(CNAccountsAndGroupsViewController *)self diffableDataSource];
  [v30 applySnapshot:v16 animatingDifferences:0];

  v31 = [(CNAccountsAndGroupsViewController *)self groupsStyle];
  v32 = [v31 backgroundColor];

  if (v32)
  {
    v33 = [(CNAccountsAndGroupsViewController *)self groupsStyle];
    v34 = [v33 backgroundColor];

    v35 = [(CNAccountsAndGroupsViewController *)self view];
    [v35 setBackgroundColor:v34];

    v36 = [(CNAccountsAndGroupsViewController *)self collectionView];
    [v36 setBackgroundColor:v34];
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

- (void)reloadCollectionViewForSectionWithIdentifier:(id)a3 settingFilterForEditingItem:(BOOL)a4 allowsReloadWhenEditing:(BOOL)a5
{
  v8 = a3;
  if (v8)
  {
    if (![(CNAccountsAndGroupsViewController *)self isEditing]|| a5)
    {
      [(CNAccountsAndGroupsViewController *)self resignAllFirstRespondersSavingCurrentlyEditing:1];
      v9 = +[CNUIContactsEnvironment currentEnvironment];
      v10 = [v9 defaultSchedulerProvider];
      v11 = [v10 mainThreadScheduler];

      v12[0] = MEMORY[0x1E69E9820];
      v12[1] = 3221225472;
      v12[2] = __134__CNAccountsAndGroupsViewController_reloadCollectionViewForSectionWithIdentifier_settingFilterForEditingItem_allowsReloadWhenEditing___block_invoke;
      v12[3] = &unk_1E74E34A0;
      v12[4] = self;
      v13 = v8;
      v14 = a4;
      [v11 performBlock:v12];
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

- (void)reloadCollectionViewAddingPlaceholderItem:(id)a3 inSectionWithIdentifier:(id)a4
{
  v6 = a3;
  v7 = a4;
  [(CNAccountsAndGroupsViewController *)self resignAllFirstRespondersSavingCurrentlyEditing:0];
  if (v6 && v7)
  {
    v8 = [(CNAccountsAndGroupsViewController *)self dataSource];
    v9 = [v8 sectionForIdentifier:v7];

    if (v9)
    {
      v10 = +[CNUIContactsEnvironment currentEnvironment];
      v11 = [v10 defaultSchedulerProvider];
      v12 = [v11 mainThreadScheduler];

      v13[0] = MEMORY[0x1E69E9820];
      v13[1] = 3221225472;
      v13[2] = __103__CNAccountsAndGroupsViewController_reloadCollectionViewAddingPlaceholderItem_inSectionWithIdentifier___block_invoke;
      v13[3] = &unk_1E74E6EE8;
      v13[4] = self;
      v14 = v9;
      v15 = v6;
      [v12 performBlock:v13];
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

- (void)removePlaceholderCellsIfNeededInSection:(id)a3 animated:(BOOL)a4
{
  v6 = a3;
  v7 = +[CNUIContactsEnvironment currentEnvironment];
  v8 = [v7 defaultSchedulerProvider];
  v9 = [v8 mainThreadScheduler];

  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __86__CNAccountsAndGroupsViewController_removePlaceholderCellsIfNeededInSection_animated___block_invoke;
  v11[3] = &unk_1E74E34A0;
  v11[4] = self;
  v12 = v6;
  v13 = a4;
  v10 = v6;
  [v9 performBlock:v11];
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

- (void)cleanUpItemIfNeeded:(id)a3
{
  if (a3)
  {
    v4 = a3;
    v5 = [(CNAccountsAndGroupsViewController *)self diffableDataSource];
    v12 = [v5 indexPathForItemIdentifier:v4];

    v6 = v12;
    if (v12)
    {
      v7 = [(CNAccountsAndGroupsViewController *)self collectionView];
      v8 = [v7 cellForItemAtIndexPath:v12];

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

- (void)reloadCollectionViewDeletingItem:(id)a3
{
  v4 = a3;
  [(CNAccountsAndGroupsViewController *)self resignAllFirstRespondersSavingCurrentlyEditing:0];
  if (v4)
  {
    v5 = [(CNAccountsAndGroupsViewController *)self dataSource];
    v6 = [v5 isFilterShowingItem:v4];

    v7 = [(CNAccountsAndGroupsViewController *)self diffableDataSource];
    v8 = [v7 snapshot];
    v9 = [v8 itemIdentifiers];
    v10 = [v9 containsObject:v4];

    if (v10)
    {
      [(CNAccountsAndGroupsViewController *)self cleanUpItemIfNeeded:v4];
      v11 = +[CNUIContactsEnvironment currentEnvironment];
      v12 = [v11 defaultSchedulerProvider];
      v13 = [v12 mainThreadScheduler];

      v15[0] = MEMORY[0x1E69E9820];
      v15[1] = 3221225472;
      v15[2] = __70__CNAccountsAndGroupsViewController_reloadCollectionViewDeletingItem___block_invoke;
      v15[3] = &unk_1E74E34A0;
      v15[4] = self;
      v16 = v4;
      v17 = v6;
      [v13 performBlock:v15];
    }

    else
    {
      v14 = [(CNAccountsAndGroupsViewController *)self dataSource];
      [v14 reload];

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

- (void)goBack:(id)a3
{
  v4 = [(CNAccountsAndGroupsViewController *)self delegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    v6 = [(CNAccountsAndGroupsViewController *)self delegate];
    [v6 accountsAndGroupsViewControllerDidGoBack:self];
  }
}

- (void)cancel:(id)a3
{
  v4 = [(CNAccountsAndGroupsViewController *)self delegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    v6 = [(CNAccountsAndGroupsViewController *)self delegate];
    [v6 accountsAndGroupsViewControllerDidCancel:self];
  }
}

- (void)updateToolbarVisibility
{
  v5 = [(CNAccountsAndGroupsViewController *)self allowsEditing];
  if (v5 && (-[CNAccountsAndGroupsViewController groupsStyle](self, "groupsStyle"), v2 = objc_claimAutoreleasedReturnValue(), -[CNAccountsAndGroupsViewController traitCollection](self, "traitCollection"), v3 = objc_claimAutoreleasedReturnValue(), [v2 buttonBehaviorWithTraitCollection:v3] == 1))
  {
    v6 = 0;
  }

  else
  {
    v7 = [MEMORY[0x1E69966E8] currentEnvironment];
    v8 = [v7 featureFlags];
    if ([v8 isFeatureEnabled:29])
    {
      v9 = +[CNUIContactsEnvironment currentEnvironment];
      v6 = [v9 runningInContactsAppOniPad] ^ 1;
    }

    else
    {
      v6 = 1;
    }

    if (!v5)
    {
      goto LABEL_9;
    }
  }

LABEL_9:
  v10 = [(CNAccountsAndGroupsViewController *)self navigationController];
  [v10 setToolbarHidden:v6];
}

- (void)updateNavigationButtons
{
  v35[1] = *MEMORY[0x1E69E9840];
  [(CNAccountsAndGroupsViewController *)self updateToolbarVisibility];
  v3 = [(CNAccountsAndGroupsViewController *)self groupsStyle];
  v4 = [(CNAccountsAndGroupsViewController *)self traitCollection];
  v5 = [v3 buttonBehaviorWithTraitCollection:v4];

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
          v28 = [(CNAccountsAndGroupsViewController *)self navigationItem];
          [v28 setLeftBarButtonItem:v27];

          v29 = [(CNAccountsAndGroupsViewController *)self navigationItem];
          [v29 setRightBarButtonItem:0];

          v18 = [(CNAccountsAndGroupsViewController *)self addGroupBarButtonItem];
          v19 = [MEMORY[0x1E69DC708] flexibleSpaceItem];
          v34[1] = v19;
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
          v21 = [(CNAccountsAndGroupsViewController *)self navigationItem];
          [v21 setLeftBarButtonItem:v20];

          v22 = [(CNAccountsAndGroupsViewController *)self addGroupBarButtonItem];
          v23 = [(CNAccountsAndGroupsViewController *)self navigationItem];
          [v23 setRightBarButtonItem:v22];

          [(CNAccountsAndGroupsViewController *)self setToolbarItems:0];
          v24 = [(CNAccountsAndGroupsViewController *)self addGroupBarButtonItem];
          v25 = v24;
          v26 = 0;
          goto LABEL_32;
        }
      }

      else if (buttonBehavior)
      {
        if (buttonBehavior == 1)
        {
          v7 = [(CNAccountsAndGroupsViewController *)self shouldShowCancelButton];
          if (v7)
          {
            v8 = [(CNAccountsAndGroupsViewController *)self cancelBarButtonItem];
          }

          else
          {
            v8 = 0;
          }

          v15 = [(CNAccountsAndGroupsViewController *)self navigationItem];
          [v15 setLeftBarButtonItem:v8];

          if (v7)
          {
          }

          v16 = [(CNAccountsAndGroupsViewController *)self editButtonItem];
          v17 = [(CNAccountsAndGroupsViewController *)self navigationItem];
          [v17 setRightBarButtonItem:v16];

          v18 = [(CNAccountsAndGroupsViewController *)self addGroupBarButtonItem];
          v35[0] = v18;
          v19 = [MEMORY[0x1E695DEC8] arrayWithObjects:v35 count:1];
          [(CNAccountsAndGroupsViewController *)self setToolbarItems:v19];
LABEL_31:

          v24 = [(CNAccountsAndGroupsViewController *)self addGroupBarButtonItem];
          v25 = v24;
          v26 = 1;
LABEL_32:
          [v24 _setPrefersNoPlatter:v26];
        }
      }

      else
      {
        v13 = [(CNAccountsAndGroupsViewController *)self navigationItem];
        [v13 setLeftBarButtonItem:0];

        v14 = [(CNAccountsAndGroupsViewController *)self navigationItem];
        [v14 setRightBarButtonItem:0];

        [(CNAccountsAndGroupsViewController *)self setToolbarItems:0];
      }

      v31 = [MEMORY[0x1E69DC888] systemBlueColor];
      v32 = [(CNAccountsAndGroupsViewController *)self navigationController];
      v33 = [v32 navigationBar];
      [v33 setTintColor:v31];

      [(CNAccountsAndGroupsViewController *)self reloadAddGroupButton];
      return;
    }

    v9 = [(CNAccountsAndGroupsViewController *)self navigationItem];
    [v9 setRightBarButtonItem:0];

    v10 = [(CNAccountsAndGroupsViewController *)self shouldShowCancelButton];
    if (v10)
    {
      v11 = [(CNAccountsAndGroupsViewController *)self cancelBarButtonItem];
    }

    else
    {
      v11 = 0;
    }

    v12 = [(CNAccountsAndGroupsViewController *)self navigationItem];
    [v12 setLeftBarButtonItem:v11];

    if (v10)
    {
    }

    [(CNAccountsAndGroupsViewController *)self setToolbarItems:0];
  }
}

- (void)clearNavigationButtonsIfNeeded
{
  buttonBehavior = self->_buttonBehavior;
  v4 = [(CNAccountsAndGroupsViewController *)self groupsStyle];
  v5 = [(CNAccountsAndGroupsViewController *)self traitCollection];
  v6 = [v4 buttonBehaviorWithTraitCollection:v5];

  if (buttonBehavior != v6)
  {
    v7 = [(CNAccountsAndGroupsViewController *)self navigationItem];
    [v7 setRightBarButtonItem:0];

    v8 = [(CNAccountsAndGroupsViewController *)self navigationItem];
    [v8 setLeftBarButtonItem:0];
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
      v7 = [(CNAccountsAndGroupsViewController *)self fakeBackButton];
      v8 = [v6 initWithCustomView:v7];
      v9 = self->_cancelBarButtonItem;
      self->_cancelBarButtonItem = v8;
    }

    else
    {
      v10 = [v5 initWithBarButtonSystemItem:1 target:self action:sel_cancel_];
      v7 = self->_cancelBarButtonItem;
      self->_cancelBarButtonItem = v10;
    }

    cancelBarButtonItem = self->_cancelBarButtonItem;
  }

  return cancelBarButtonItem;
}

- (id)fakeBackButton
{
  v3 = [MEMORY[0x1E69DC740] plainButtonConfiguration];
  v4 = MEMORY[0x1E696AEC0];
  v5 = CNContactsUIBundle();
  v6 = [v5 localizedStringForKey:@"LIMITED_BACK" value:&stru_1F0CE7398 table:@"Localized"];
  v7 = [v4 stringWithFormat:@" %@", v6];
  [v3 setTitle:v7];

  v8 = [MEMORY[0x1E69DCAD8] configurationWithWeight:7];
  v9 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"chevron.backward" withConfiguration:v8];
  [v3 setImage:v9];

  v10 = objc_alloc_init(MEMORY[0x1E69DC738]);
  [v10 setConfiguration:v3];
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
  v3 = [(CNAccountsAndGroupsViewController *)self containerDataSource];
  v4 = [v3 containerPickerItems];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __54__CNAccountsAndGroupsViewController_menuForContainers__block_invoke;
  v8[3] = &unk_1E74E2A78;
  v8[4] = self;
  v5 = [v4 _cn_map:v8];

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
    v3 = [(CNAccountsAndGroupsViewController *)self containerDataSource];
    [v3 discoverContainers];

    v4 = [(CNAccountsAndGroupsViewController *)self containerDataSource];
    v5 = [v4 containerPickerItems];
    v6 = [v5 count];

    v7 = [(CNAccountsAndGroupsViewController *)self containerDataSource];
    v8 = [v7 containerPickerItems];
    v9 = [v8 count];

    if (self->_addGroupBarButtonItem)
    {
      v10 = [(CNAccountsAndGroupsViewController *)self addGroupBarButtonItem];
      [v10 setHidden:v6 == 0];

      if (v9 < 2)
      {
        v11 = 0;
      }

      else
      {
        v11 = [(CNAccountsAndGroupsViewController *)self menuForContainers];
      }

      v12 = [(CNAccountsAndGroupsViewController *)self addGroupBarButtonItem];
      [v12 setMenu:v11];

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

        v13 = [(CNAccountsAndGroupsViewController *)self addGroupBarButtonItem];
        [v13 setPrimaryAction:0];
      }

      v17 = [(CNAccountsAndGroupsViewController *)self addGroupBarButtonItem];
      v18 = CNContactsUIBundle();
      v19 = [v18 localizedStringForKey:@"ADD_LIST" value:&stru_1F0CE7398 table:@"Localized"];
      [v17 setTitle:v19];
    }

    v20 = [(CNAccountsAndGroupsViewController *)self keyCommands];
    v21 = [(CNAccountsAndGroupsViewController *)self addGroupKeyCommand];
    v22 = [v20 containsObject:v21];

    if (v6)
    {
      if (v22)
      {
        return;
      }

      v23 = [(CNAccountsAndGroupsViewController *)self addGroupKeyCommand];
      [(CNAccountsAndGroupsViewController *)self addKeyCommand:v23];
    }

    else
    {
      if (!v22)
      {
        return;
      }

      v23 = [(CNAccountsAndGroupsViewController *)self addGroupKeyCommand];
      [(CNAccountsAndGroupsViewController *)self removeKeyCommand:v23];
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

- (void)addDefaultGroup:(id)a3
{
  v4 = [(CNAccountsAndGroupsViewController *)self containerDataSource];
  v5 = [v4 containerPickerItems];
  v8 = [v5 firstObject];

  if (v8)
  {
    v6 = [(CNAccountsAndGroupsViewController *)self actionsProvider];
    v7 = [(CNAccountsAndGroupsViewController *)self collectionView];
    [v6 createGroupActionForContainerItem:v8 isCollectionViewEditing:{objc_msgSend(v7, "isEditing")}];
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

- (void)authorizedSetCollectionViewEditing:(BOOL)a3
{
  v3 = a3;
  v23 = *MEMORY[0x1E69E9840];
  v5 = [(CNAccountsAndGroupsViewController *)self collectionView];
  [v5 setEditing:v3];

  if (!v3)
  {
    [(CNAccountsAndGroupsViewController *)self resignAllFirstRespondersSavingCurrentlyEditing:0];
    if ([(CNAccountsAndGroupsViewController *)self needsReload])
    {
      [(CNAccountsAndGroupsViewController *)self setNeedsReload:0];
      v6 = [(CNAccountsAndGroupsViewController *)self dataSource];
      [v6 reload];

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
  v7 = [(CNAccountsAndGroupsViewController *)self collectionView];
  v8 = [v7 preparedCells];

  v9 = [v8 countByEnumeratingWithState:&v18 objects:v22 count:16];
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
          objc_enumerationMutation(v8);
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

        [v16 setTextViewEnabled:v3];
        v17 = [v16 item];
        [v16 setUserInteractionEnabled:{-[CNAccountsAndGroupsViewController shouldEnableItem:](self, "shouldEnableItem:", v17)}];

        ++v12;
      }

      while (v10 != v12);
      v10 = [v8 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v10);
  }
}

- (void)authorizedSetViewEditing:(BOOL)a3 animated:(BOOL)a4
{
  v4 = a3;
  v6.receiver = self;
  v6.super_class = CNAccountsAndGroupsViewController;
  [(CNAccountsAndGroupsViewController *)&v6 setEditing:a3 animated:a4];
  [(CNAccountsAndGroupsViewController *)self authorizedSetCollectionViewEditing:v4];
}

- (BOOL)editingCollectionViewRequiresAuthorization
{
  v19 = *MEMORY[0x1E69E9840];
  v3 = [(CNAccountsAndGroupsViewController *)self containerDataSource];
  [v3 discoverContainers];

  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v4 = [(CNAccountsAndGroupsViewController *)self containerDataSource];
  v5 = [v4 containers];

  v6 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
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
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v14 + 1) + 8 * i);
        v11 = [(CNAccountsAndGroupsViewController *)self groupsAndContainersSaveManager];
        LODWORD(v10) = [v11 isAuthorizedToEditContainer:v10];

        if (!v10)
        {
          v12 = 1;
          goto LABEL_11;
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
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

- (void)setEditing:(BOOL)a3 animated:(BOOL)a4
{
  v4 = a4;
  v5 = a3;
  if (a3 && [(CNAccountsAndGroupsViewController *)self editingCollectionViewRequiresAuthorization])
  {
    v7 = objc_alloc_init(CNAccountsAndGroupsAuthorizationContext);
    [(CNAccountsAndGroupsAuthorizationContext *)v7 setType:4];
    [(CNAccountsAndGroupsViewController *)self showEditAuthorizationPaneWithAuthorizationContext:v7 animated:1];
  }

  else
  {

    [(CNAccountsAndGroupsViewController *)self authorizedSetViewEditing:v5 animated:v4];
  }
}

- (void)setUpCollectionView
{
  v36[4] = *MEMORY[0x1E69E9840];
  v3 = objc_alloc(MEMORY[0x1E69DC7F0]);
  v4 = [(CNAccountsAndGroupsViewController *)self layout];
  v5 = [v3 initWithFrame:v4 collectionViewLayout:{*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)}];
  [(CNAccountsAndGroupsViewController *)self setCollectionView:v5];

  v6 = [(CNAccountsAndGroupsViewController *)self collectionView];
  [v6 setDelegate:self];

  v7 = [(CNAccountsAndGroupsViewController *)self collectionView];
  [v7 setDropDelegate:self];

  v8 = [(CNAccountsAndGroupsViewController *)self collectionView];
  [v8 setKeyboardDismissMode:2];

  v9 = [(CNAccountsAndGroupsViewController *)self collectionView];
  [v9 setSelectionFollowsFocus:1];

  [(CNAccountsAndGroupsViewController *)self configureDataSource];
  v10 = [(CNAccountsAndGroupsViewController *)self view];
  v11 = [(CNAccountsAndGroupsViewController *)self collectionView];
  [v10 addSubview:v11];

  v12 = [(CNAccountsAndGroupsViewController *)self collectionView];
  [v12 setTranslatesAutoresizingMaskIntoConstraints:0];

  v35 = [(CNAccountsAndGroupsViewController *)self collectionView];
  v33 = [v35 leadingAnchor];
  v34 = [(CNAccountsAndGroupsViewController *)self view];
  v32 = [v34 leadingAnchor];
  v31 = [v33 constraintEqualToAnchor:v32];
  v36[0] = v31;
  v30 = [(CNAccountsAndGroupsViewController *)self collectionView];
  v28 = [v30 trailingAnchor];
  v29 = [(CNAccountsAndGroupsViewController *)self view];
  v27 = [v29 trailingAnchor];
  v26 = [v28 constraintEqualToAnchor:v27];
  v36[1] = v26;
  v25 = [(CNAccountsAndGroupsViewController *)self collectionView];
  v13 = [v25 topAnchor];
  v14 = [(CNAccountsAndGroupsViewController *)self view];
  v15 = [v14 topAnchor];
  v16 = [v13 constraintEqualToAnchor:v15];
  v36[2] = v16;
  v17 = [(CNAccountsAndGroupsViewController *)self collectionView];
  v18 = [v17 bottomAnchor];
  v19 = [(CNAccountsAndGroupsViewController *)self view];
  v20 = [v19 bottomAnchor];
  v21 = [v18 constraintEqualToAnchor:v20];
  v36[3] = v21;
  v24 = [MEMORY[0x1E695DEC8] arrayWithObjects:v36 count:4];

  [MEMORY[0x1E696ACD8] activateConstraints:v24];
  v22 = [objc_alloc(MEMORY[0x1E69DD060]) initWithTarget:self action:sel_didTapCollectionView_];
  [v22 setCancelsTouchesInView:0];
  v23 = [(CNAccountsAndGroupsViewController *)self collectionView];
  [v23 addGestureRecognizer:v22];
}

- (void)dealloc
{
  v3 = [MEMORY[0x1E696AD88] defaultCenter];
  [v3 removeObserver:self];

  v4.receiver = self;
  v4.super_class = CNAccountsAndGroupsViewController;
  [(CNAccountsAndGroupsViewController *)&v4 dealloc];
}

- (void)viewDidDisappear:(BOOL)a3
{
  v4.receiver = self;
  v4.super_class = CNAccountsAndGroupsViewController;
  [(CNAccountsAndGroupsViewController *)&v4 viewDidDisappear:a3];
  [(CNAccountsAndGroupsViewController *)self setIsVisible:0];
}

- (void)viewWillDisappear:(BOOL)a3
{
  v8.receiver = self;
  v8.super_class = CNAccountsAndGroupsViewController;
  [(CNAccountsAndGroupsViewController *)&v8 viewWillDisappear:a3];
  v4 = [(CNAccountsAndGroupsViewController *)self collectionView];
  v5 = [v4 isEditing];

  if (v5)
  {
    [(CNAccountsAndGroupsViewController *)self setEditing:0];
  }

  v6 = [(CNAccountsAndGroupsViewController *)self potentiallyPresentedViewController];

  if (v6)
  {
    v7 = [(CNAccountsAndGroupsViewController *)self potentiallyPresentedViewController];
    [v7 dismissViewControllerAnimated:0 completion:0];

    [(CNAccountsAndGroupsViewController *)self setPotentiallyPresentedViewController:0];
  }
}

- (BOOL)shouldSetFirstResponder
{
  v3 = [(CNAccountsAndGroupsViewController *)self presentedViewController];

  v4 = [(CNAccountsAndGroupsViewController *)self splitViewController];
  v5 = [v4 firstResponder];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    LOBYTE(v6) = 0;
  }

  else
  {
    v7 = [(CNAccountsAndGroupsViewController *)self splitViewController];
    v8 = [v7 firstResponder];
    objc_opt_class();
    v6 = objc_opt_isKindOfClass() ^ 1;
  }

  return (v3 == 0) & v6;
}

- (void)viewDidAppear:(BOOL)a3
{
  v7.receiver = self;
  v7.super_class = CNAccountsAndGroupsViewController;
  [(CNAccountsAndGroupsViewController *)&v7 viewDidAppear:a3];
  if ([(CNAccountsAndGroupsViewController *)self shouldSetFirstResponder])
  {
    [(CNAccountsAndGroupsViewController *)self becomeFirstResponder];
  }

  [(CNAccountsAndGroupsViewController *)self setIsVisible:1];
  v4 = [(CNAccountsAndGroupsViewController *)self transitionCoordinator];
  v5 = v4;
  if (v4)
  {
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __51__CNAccountsAndGroupsViewController_viewDidAppear___block_invoke;
    v6[3] = &unk_1E74E3CC8;
    v6[4] = self;
    [v4 animateAlongsideTransition:0 completion:v6];
  }

  else
  {
    [(CNAccountsAndGroupsViewController *)self updateToolbarVisibility];
  }

  [(CNAccountsAndGroupsViewController *)self configureNavigationBar];
}

- (void)viewIsAppearing:(BOOL)a3
{
  v6.receiver = self;
  v6.super_class = CNAccountsAndGroupsViewController;
  [(CNAccountsAndGroupsViewController *)&v6 viewIsAppearing:a3];
  v4 = [(CNAccountsAndGroupsViewController *)self groupsStyle];
  v5 = [v4 shouldShowCellSelection];

  if ((v5 & 1) == 0)
  {
    [(CNAccountsAndGroupsViewController *)self deselectAllItems];
  }

  [(CNAccountsAndGroupsViewController *)self updateNavigationButtons];
}

- (void)viewWillAppear:(BOOL)a3
{
  v10.receiver = self;
  v10.super_class = CNAccountsAndGroupsViewController;
  [(CNAccountsAndGroupsViewController *)&v10 viewWillAppear:a3];
  v4 = [(CNAccountsAndGroupsViewController *)self dataSource];
  [v4 setCurrentlyEditingGroupIdentifier:0];

  if (self->_needsReload)
  {
    v5 = [(CNAccountsAndGroupsViewController *)self dataSource];
    [v5 reload];

    [(CNAccountsAndGroupsViewController *)self reloadData];
    [(CNAccountsAndGroupsViewController *)self loadViewIfNeeded];
    self->_needsReload = 0;
  }

  else
  {
    [(CNAccountsAndGroupsViewController *)self reloadData];
  }

  v6 = [(CNAccountsAndGroupsViewController *)self transitionCoordinator];
  v7 = v6;
  if (v6)
  {
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __52__CNAccountsAndGroupsViewController_viewWillAppear___block_invoke;
    v9[3] = &unk_1E74E3CC8;
    v9[4] = self;
    [v6 animateAlongsideTransition:v9 completion:0];
  }

  else
  {
    [(CNAccountsAndGroupsViewController *)self clearNavigationButtonsIfNeeded];
  }

  if (self->_isLimitedAccessOnboarding)
  {
    v8 = [(CNAccountsAndGroupsViewController *)self navigationItem];
    [v8 setPrompt:&stru_1F0CE7398];
  }
}

- (void)viewDidLoad
{
  v6.receiver = self;
  v6.super_class = CNAccountsAndGroupsViewController;
  [(CNAccountsAndGroupsViewController *)&v6 viewDidLoad];
  v3 = +[CNUIContactsEnvironment currentEnvironment];
  v4 = [v3 inProcessActivityManager];
  activityManager = self->_activityManager;
  self->_activityManager = v4;

  [(CNAccountsAndGroupsViewController *)self _updateUserActivity];
  [(CNAccountsAndGroupsViewController *)self setUpCollectionView];
}

- (void)setDataSource:(id)a3
{
  v5 = a3;
  if (self->_dataSource != v5)
  {
    v19 = v5;
    objc_storeStrong(&self->_dataSource, a3);
    if (v19)
    {
      v6 = [CNUIGroupsAndContainersSaveManager alloc];
      v7 = [(CNAccountsAndGroupsDataSource *)self->_dataSource store];
      v8 = [(CNUIGroupsAndContainersSaveManager *)v6 initWithContactStore:v7];
      groupsAndContainersSaveManager = self->_groupsAndContainersSaveManager;
      self->_groupsAndContainersSaveManager = v8;

      v10 = [CNContainerDataSource alloc];
      v11 = [(CNAccountsAndGroupsDataSource *)self->_dataSource store];
      v12 = [(CNContainerDataSource *)v10 initWithContactStore:v11];
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

    v5 = v19;
  }
}

- (CNAccountsAndGroupsViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  v17.receiver = self;
  v17.super_class = CNAccountsAndGroupsViewController;
  v4 = [(CNAccountsAndGroupsViewController *)&v17 initWithNibName:a3 bundle:a4];
  if (v4)
  {
    v5 = [MEMORY[0x1E696AD88] defaultCenter];
    [v5 addObserver:v4 selector:sel_contactStoreDidChange_ name:*MEMORY[0x1E695C3D8] object:0];

    v6 = [MEMORY[0x1E696AD88] defaultCenter];
    [v6 addObserver:v4 selector:sel_contentSizeCategoryDidChange_ name:*MEMORY[0x1E69DDC48] object:0];

    v7 = [MEMORY[0x1E696AD88] defaultCenter];
    [v7 addObserver:v4 selector:sel_keyboardWillShow_ name:*MEMORY[0x1E69DE080] object:0];

    v8 = [MEMORY[0x1E696AD88] defaultCenter];
    [v8 addObserver:v4 selector:sel_keyboardWillHide_ name:*MEMORY[0x1E69DE078] object:0];

    [(CNAccountsAndGroupsViewController *)v4 addAcceptedIntroductionsNotifier];
    v4->_needsReload = 1;
    v4->_allowsEditing = 1;
    v9 = [MEMORY[0x1E696AAE8] mainBundle];
    v10 = [v9 bundleIdentifier];

    v11 = objc_alloc(MEMORY[0x1E6996760]);
    v12 = [MEMORY[0x1E6996768] sharedConnection];
    v13 = [v11 initWithBundleIdentifier:v10 managedProfileConnection:v12];
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