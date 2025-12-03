@interface SFAccountDetailViewController
- (BOOL)_canUserDeleteSavedAccount;
- (BOOL)_shouldShowAccountOptionsHeader;
- (BOOL)_shouldShowMenuForItemIdentifier:(int64_t)identifier;
- (BOOL)_shouldShowSecurityRecommendationSection;
- (BOOL)_shouldUseZeroHeightHeaderForSectionType:(int64_t)type;
- (BOOL)dataSource:(id)source canEditRowAtIndexPath:(id)path;
- (BOOL)shouldSuppressAccountManagerLockedView;
- (BOOL)tableView:(id)view shouldHighlightRowAtIndexPath:(id)path;
- (BOOL)tableView:(id)view shouldIndentWhileEditingRowAtIndexPath:(id)path;
- (BOOL)textFieldShouldReturn:(id)return;
- (CGRect)editMenuInteraction:(id)interaction targetRectForConfiguration:(id)configuration;
- (SFAccountDetailViewController)initWithSavedAccount:(id)account passwordWarning:(id)warning options:(unint64_t)options;
- (SFAccountDetailViewControllerDelegate)delegate;
- (double)tableView:(id)view heightForHeaderInSection:(int64_t)section;
- (id)_accountHeaderSectionFooterView;
- (id)_airDropMenu;
- (id)_allSharedCredentialGroupsMenu;
- (id)_cellForIdentifier:(id)identifier indexPath:(id)path;
- (id)_cellsThatChangeAppearanceOnEdit;
- (id)_createShareBarButtonItem;
- (id)_deleteCellForTableView:(id)view;
- (id)_deletePasskeyCellForTableView:(id)view;
- (id)_deletePasswordCellForTableView:(id)view shouldRemoveTOTPGenerator:(BOOL)generator;
- (id)_footerTextForLastOneTimeShareDate:(id)date;
- (id)_groupPickerTableViewCell;
- (id)_groupSectionValueStyleTableViewCellWithText:(id)text secondaryText:(id)secondaryText;
- (id)_indexPathForEditMenuInteraction:(id)interaction withConfiguration:(id)configuration;
- (id)_lastModifiedDateString;
- (id)_moveRecentlyDeletedAccountToMyPasswordsCell;
- (id)_newSecretEntryAlertController;
- (id)_originalContributorCell;
- (id)_passkeyCreationDateString;
- (id)_passkeyFooterView;
- (id)_passkeySectionFooterView;
- (id)_passwordAuditor;
- (id)_passwordEvaluator;
- (id)_passwordGenerator;
- (id)_passwordWarningManager;
- (id)_recoverRecentlyDeletedAccountCell;
- (id)_savedAccountWebsiteCellForTableView:(id)view atIndexPath:(id)path;
- (id)_securePasswordPlaceholderText:(id)text;
- (id)_securityRecommendationSubtitleString;
- (id)_subtitleStringForSignInWithAppleUpgrade;
- (id)_subtitleStringForStrongPasswordUpgrade;
- (id)dataSource:(id)source footerTextForSection:(int64_t)section;
- (id)dataSource:(id)source headerTextForSection:(int64_t)section;
- (id)editMenuInteraction:(id)interaction menuForConfiguration:(id)configuration suggestedActions:(id)actions;
- (id)presentationAnchorForAccountAuthenticationModificationController:(id)controller;
- (id)tableView:(id)view viewForFooterInSection:(int64_t)section;
- (id)tableView:(id)view viewForHeaderInSection:(int64_t)section;
- (int64_t)_itemTypeForIdentifier:(id)identifier;
- (int64_t)_listContentTextAlignmentOfCellsInDeleteAccountSection;
- (int64_t)_sectionTypeForSection:(int64_t)section;
- (int64_t)_textAlignmentOfCellsInDeleteAccountSection;
- (int64_t)tableView:(id)view editingStyleForRowAtIndexPath:(id)path;
- (void)QRCodeScannerViewController:(id)controller didScanQRCodeWithURLValue:(id)value;
- (void)_accountStoreDidUpdate;
- (void)_addAccountUpgradeItemsForSectionType:(int64_t)type toSnapshot:(id)snapshot;
- (void)_addGroupCellsToSnapshot:(id)snapshot;
- (void)_addNotesSectionToSnapshot:(id)snapshot;
- (void)_addTOTPGenerator:(id)generator;
- (void)_addTOTPGeneratorsToSnapshot:(id)snapshot;
- (void)_cancelBarButtonItemTapped:(id)tapped;
- (void)_cancelChangesAndFinishEditing;
- (void)_completedSignInWithAppleUpgrade;
- (void)_completedStrongPasswordUpgrade;
- (void)_configureCell:(id)cell withText:(id)text detailText:(id)detailText detailPlaceholderText:(id)placeholderText secureEntry:(BOOL)entry;
- (void)_configureDeleteSectionInSnapshot:(id)snapshot;
- (void)_configureHeaderViewCell:(id)cell;
- (void)_configurePasswordCell:(id)cell;
- (void)_configureSecurityRecommendationInfoCell;
- (void)_configureUserCell:(id)cell;
- (void)_deleteTOTPGenerator:(id)generator;
- (void)_deleteTOTPGeneratorWithConfirmation:(id)confirmation;
- (void)_fillPassword;
- (void)_fillUsername;
- (void)_fillVerificationCode;
- (void)_handleLongPressGesture:(id)gesture;
- (void)_hideSecurityRecommendation;
- (void)_initiateChangeToStrongPassword;
- (void)_initiateUpgradeToSignInWithApple;
- (void)_moveSavedAccountToMyPasswords;
- (void)_openChangePasswordURLInWebBrowser;
- (void)_openURLInSafariViewController:(id)controller shouldSupressPasswordUpdatePrompts:(BOOL)prompts;
- (void)_permanentlyDeleteAllCredentials;
- (void)_permanentlyDeletePasskey;
- (void)_permanentlyDeletePassword;
- (void)_popViewController;
- (void)_presentConfirmationAlertToShareSavedAccountToGroup:(id)group;
- (void)_presentDialogToConfirmCancelEditing;
- (void)_presentErrorAlertForFailingToMoveAccountToGroup:(id)group;
- (void)_presentErrorAlertForFailingToRecoverRecentlyDeletedSavedAccount;
- (void)_presentHideSecurityRecommendationConfirmationAlert;
- (void)_presentMoveRecentlyDeletedSavedAccountToMyPasswordsConfirmationAlert;
- (void)_presentSoftDeleteErrorAlertForCredentialTypes:(int64_t)types;
- (void)_processAccountStoreUpdateWithSavedAccounts:(id)accounts;
- (void)_recoverSavedAccount;
- (void)_reloadDiffableDataSourceAnimated:(BOOL)animated;
- (void)_reloadDiffableDataSourceOnInternalQueueAnimated:(BOOL)animated;
- (void)_reloadPasskeySectionFooters;
- (void)_replaceAddPasswordButtonWithPasswordCell;
- (void)_revealPasswordIfNecessary;
- (void)_saveAccountAndFinishEditing;
- (void)_setEditing:(BOOL)editing animated:(BOOL)animated;
- (void)_setHighLyLegibleFontForDetailTextInCell:(id)cell;
- (void)_shareBarButtonItemTapped:(id)tapped;
- (void)_sharePasswordWithAuthenticationContext:(id)context popoverPresentationControllerConfiguration:(id)configuration;
- (void)_sharePasswordWithPopoverPresentationControllerConfiguration:(id)configuration;
- (void)_showChangePasswordSafariViewController;
- (void)_showConfirmationToDeleteCredentialTypes:(int64_t)types;
- (void)_showConfirmationToDeletePasswordAndTOTPGenerator;
- (void)_showConfirmationToPermanentlyDeleteCredentialTypes:(int64_t)types;
- (void)_showConfirmationToPermanentlyDeletePasswordAndTOTPGenerator;
- (void)_showConfirmationToSoftDeleteCredentialTypes:(int64_t)types;
- (void)_showConfirmationToSoftDeletePasswordAndTOTPGenerator;
- (void)_softDeletePasskeyWithCompletionHandler:(id)handler;
- (void)_softDeletePasswordWithCompletionHandler:(id)handler;
- (void)_textFieldChanged:(id)changed;
- (void)_updateAccountModificationOptions;
- (void)_updateAddButtonsInAccountOptionsSectionForSnapshot:(id)snapshot;
- (void)_updateAddPasswordButton:(BOOL)button forSnapshot:(id)snapshot;
- (void)_updateCachedTOTPGenerators;
- (void)_updateHeaderViewCell;
- (void)_updateIconForCell:(id)cell;
- (void)_updatePasswordFieldTextSuggestions:(id)suggestions;
- (void)_updateSavedAccountChangeRequest;
- (void)_updateWarningForSavedAccount;
- (void)accountAuthenticationModificationController:(id)controller didFailRequest:(id)request withError:(id)error;
- (void)accountAuthenticationModificationController:(id)controller didSuccessfullyCompleteRequest:(id)request withUserInfo:(id)info;
- (void)accountDetailHeaderViewCell:(id)cell titleTextFieldDidChange:(id)change;
- (void)accountModificationExtensionManagerExtensionListDidChange:(id)change;
- (void)dataSource:(id)source commitEditingStyle:(int64_t)style forItemIdentifier:(id)identifier;
- (void)dealloc;
- (void)editMenuInteraction:(id)interaction willDismissMenuForConfiguration:(id)configuration animator:(id)animator;
- (void)editMenuInteraction:(id)interaction willPresentMenuForConfiguration:(id)configuration animator:(id)animator;
- (void)linkableFooterViewDidInteractWithLink:(id)link;
- (void)noteTableViewCellTextViewTapped:(id)tapped;
- (void)passwordManagerWillLock;
- (void)returnKeyActivatedInAccountDetailHeaderViewCell:(id)cell;
- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path;
- (void)textFieldDidEndEditing:(id)editing;
- (void)totpMigrationController:(id)controller presentDetailsForSavedAccount:(id)account;
- (void)totpMigrationController:(id)controller presentPickerForGenerator:(id)generator;
- (void)totpMigrationControllerFinishedImport:(id)import;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidDisappear:(BOOL)disappear;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
- (void)viewWillDisappear:(BOOL)disappear;
@end

@implementation SFAccountDetailViewController

- (SFAccountDetailViewController)initWithSavedAccount:(id)account passwordWarning:(id)warning options:(unint64_t)options
{
  v36 = *MEMORY[0x1E69E9840];
  accountCopy = account;
  warningCopy = warning;
  v11 = [(SFAccountDetailViewController *)self initWithStyle:+[_SFAccountManagerAppearanceValues preferencesTableViewStyle]];
  v12 = v11;
  if (v11)
  {
    navigationItem = [(SFAccountDetailViewController *)v11 navigationItem];
    v12->_options = options;
    if ([(SFAccountDetailViewController *)v12 _allowEditing])
    {
      v14 = [objc_alloc(MEMORY[0x1E69DC708]) initWithBarButtonSystemItem:2 target:v12 action:sel__editBarButtonItemTapped_];
      editBarButtonItem = v12->_editBarButtonItem;
      v12->_editBarButtonItem = v14;

      [(UIBarButtonItem *)v12->_editBarButtonItem setAccessibilityIdentifier:@"PasswordDetailViewNavigationBarEditButton"];
      _createShareBarButtonItem = [(SFAccountDetailViewController *)v12 _createShareBarButtonItem];
      shareBarButtonItem = v12->_shareBarButtonItem;
      v12->_shareBarButtonItem = _createShareBarButtonItem;

      [(UIBarButtonItem *)v12->_shareBarButtonItem setAccessibilityIdentifier:@"PasswordDetailViewNavigationBarShareButton"];
      v18 = [objc_alloc(MEMORY[0x1E69DC708]) initWithBarButtonSystemItem:1 target:v12 action:sel__cancelBarButtonItemTapped_];
      cancelBarButtonItem = v12->_cancelBarButtonItem;
      v12->_cancelBarButtonItem = v18;

      [(UIBarButtonItem *)v12->_cancelBarButtonItem setAccessibilityIdentifier:@"PasswordDetailViewNavigationBarCancelButton"];
      v20 = [objc_alloc(MEMORY[0x1E69DC708]) initWithBarButtonSystemItem:0 target:v12 action:sel__doneBarButtonItemTapped_];
      doneBarButtonItem = v12->_doneBarButtonItem;
      v12->_doneBarButtonItem = v20;

      [(UIBarButtonItem *)v12->_doneBarButtonItem setAccessibilityIdentifier:@"PasswordDetailViewNavigationBarDoneButton"];
      mEMORY[0x1E69B1B18] = [MEMORY[0x1E69B1B18] sharedFeatureManager];
      if ([mEMORY[0x1E69B1B18] isAirDropPasswordsAvailable])
      {
        v34 = v12->_editBarButtonItem;
        v35 = v12->_shareBarButtonItem;
        v23 = MEMORY[0x1E695DEC8];
        v24 = &v34;
        v25 = 2;
      }

      else
      {
        v33 = v12->_editBarButtonItem;
        v23 = MEMORY[0x1E695DEC8];
        v24 = &v33;
        v25 = 1;
      }

      v26 = [v23 arrayWithObjects:v24 count:{v25, v33, v34, v35, v36}];
      [navigationItem setRightBarButtonItems:v26];
    }

    -[UIBarButtonItem setEnabled:](v12->_shareBarButtonItem, "setEnabled:", [accountCopy isOneTimeSharable]);
    if ([(SFAccountDetailViewController *)v12 _allowAuditing])
    {
      defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
      [defaultCenter addObserver:v12 selector:sel__accountStoreDidUpdate name:*MEMORY[0x1E69C8D50] object:0];
    }

    objc_storeStrong(&v12->_savedAccount, account);
    backBarButtonItem = [navigationItem backBarButtonItem];
    [backBarButtonItem setAccessibilityIdentifier:@"PasswordDetailViewNavigationBarBackButton"];

    objc_storeStrong(&v12->_passwordWarning, warning);
    v29 = objc_alloc_init(MEMORY[0x1E695A908]);
    accountAuthenticationModificationController = v12->_accountAuthenticationModificationController;
    v12->_accountAuthenticationModificationController = v29;

    [(ASAccountAuthenticationModificationController *)v12->_accountAuthenticationModificationController setDelegate:v12];
    [(ASAccountAuthenticationModificationController *)v12->_accountAuthenticationModificationController setPresentationContextProvider:v12];
    [(SFAccountDetailViewController *)v12 _updateCachedTOTPGenerators];
    v12->_showPasswordAsBulletsWhenNotEditing = 1;
    v31 = v12;
  }

  return v12;
}

- (id)_passwordWarningManager
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (objc_opt_respondsToSelector())
  {
    v4 = [WeakRetained passwordWarningManagerForAccountDetailViewController:self];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)_passwordAuditor
{
  _passwordWarningManager = [(SFAccountDetailViewController *)self _passwordWarningManager];
  passwordAuditor = [_passwordWarningManager passwordAuditor];

  return passwordAuditor;
}

- (id)_passwordEvaluator
{
  _passwordWarningManager = [(SFAccountDetailViewController *)self _passwordWarningManager];
  passwordEvaluator = [_passwordWarningManager passwordEvaluator];

  return passwordEvaluator;
}

- (id)_passwordGenerator
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (objc_opt_respondsToSelector())
  {
    v4 = [WeakRetained passwordGeneratorForAccountDetailViewController:self];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)viewDidLoad
{
  objc_initWeak(&location, self);
  v16.receiver = self;
  v16.super_class = SFAccountDetailViewController;
  [(SFAccountDetailViewController *)&v16 viewDidLoad];
  v3 = objc_alloc(MEMORY[0x1E69B1BC8]);
  tableView = [(SFAccountDetailViewController *)self tableView];
  v11 = MEMORY[0x1E69E9820];
  v12 = 3221225472;
  v13 = __44__SFAccountDetailViewController_viewDidLoad__block_invoke;
  v14 = &unk_1E848FBA8;
  objc_copyWeak(&v15, &location);
  v5 = [v3 initWithTableView:tableView cellProvider:&v11];
  tableViewDiffableDataSource = self->_tableViewDiffableDataSource;
  self->_tableViewDiffableDataSource = v5;

  [(SFTableViewDiffableDataSource *)self->_tableViewDiffableDataSource setDelegate:self, v11, v12, v13, v14];
  [(SFTableViewDiffableDataSource *)self->_tableViewDiffableDataSource setDefaultRowAnimation:0];
  tableView2 = [(SFAccountDetailViewController *)self tableView];
  if (_SFDeviceIsPad())
  {
    [tableView2 setCellLayoutMarginsFollowReadableWidth:1];
  }

  [tableView2 setAllowsSelectionDuringEditing:1];
  [tableView2 _setTopPadding:20.0];
  [tableView2 setRowHeight:*MEMORY[0x1E69DE3D0]];
  [tableView2 setAccessibilityIdentifier:@"PasswordDetailView"];
  [tableView2 registerClass:objc_opt_class() forCellReuseIdentifier:@"NotesCell"];
  if ([(SFAccountDetailViewController *)self _allowAuditing]&& !self->_passwordWarning)
  {
    [(SFAccountDetailViewController *)self _updateWarningForSavedAccount];
  }

  v8 = [objc_alloc(MEMORY[0x1E69DC9E0]) initWithDelegate:self];
  editMenuInteraction = self->_editMenuInteraction;
  self->_editMenuInteraction = v8;

  [tableView2 addInteraction:self->_editMenuInteraction];
  if (self->_isForFillingIndividualAccountFields)
  {
    v10 = [objc_alloc(MEMORY[0x1E69DCC48]) initWithTarget:self action:sel__handleLongPressGesture_];
    [tableView2 addGestureRecognizer:v10];
  }

  objc_destroyWeak(&v15);
  objc_destroyWeak(&location);
}

id __44__SFAccountDetailViewController_viewDidLoad__block_invoke(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v6 = a4;
  v7 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v9 = [WeakRetained _cellForIdentifier:v6 indexPath:v7];

  return v9;
}

- (void)viewWillAppear:(BOOL)appear
{
  v10.receiver = self;
  v10.super_class = SFAccountDetailViewController;
  [(SFAccountDetailViewController *)&v10 viewWillAppear:appear];
  [(SFAccountDetailViewController *)self _reloadDiffableDataSourceOnInternalQueueAnimated:0];
  objc_initWeak(&location, self);
  mEMORY[0x1E695A960] = [MEMORY[0x1E695A960] sharedManager];
  [mEMORY[0x1E695A960] addChangeObserver:self];

  mEMORY[0x1E695A960]2 = [MEMORY[0x1E695A960] sharedManager];
  highLevelDomain = [(WBSSavedAccount *)self->_savedAccount highLevelDomain];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __48__SFAccountDetailViewController_viewWillAppear___block_invoke;
  v7[3] = &unk_1E848FBD0;
  objc_copyWeak(&v8, &location);
  [mEMORY[0x1E695A960]2 extensionForDomain:highLevelDomain completionHandler:v7];

  objc_destroyWeak(&v8);
  objc_destroyWeak(&location);
}

void __48__SFAccountDetailViewController_viewWillAppear___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = WeakRetained;
  if (v3 && WeakRetained)
  {
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __48__SFAccountDetailViewController_viewWillAppear___block_invoke_2;
    v6[3] = &unk_1E848F548;
    v6[4] = WeakRetained;
    v7 = v3;
    dispatch_async(MEMORY[0x1E69E96A0], v6);
  }
}

uint64_t __48__SFAccountDetailViewController_viewWillAppear___block_invoke_2(uint64_t a1)
{
  objc_storeStrong((*(a1 + 32) + 1296), *(a1 + 40));
  [*(a1 + 32) _updateAccountModificationOptions];
  v2 = *(a1 + 32);

  return [v2 _reloadDiffableDataSourceAnimated:0];
}

- (void)viewDidAppear:(BOOL)appear
{
  appearCopy = appear;
  if (self->_showsChangePasswordControllerOnAppearance)
  {
    self->_showsChangePasswordControllerOnAppearance = 0;
    [(SFAccountDetailViewController *)self _showChangePasswordSafariViewController];
  }

  v5.receiver = self;
  v5.super_class = SFAccountDetailViewController;
  [(SFAccountDetailViewController *)&v5 viewDidAppear:appearCopy];
}

- (void)viewDidDisappear:(BOOL)disappear
{
  v5.receiver = self;
  v5.super_class = SFAccountDetailViewController;
  [(SFAccountDetailViewController *)&v5 viewDidDisappear:disappear];
  mEMORY[0x1E695A960] = [MEMORY[0x1E695A960] sharedManager];
  [mEMORY[0x1E695A960] removeChangeObserver:self];
}

- (void)viewWillDisappear:(BOOL)disappear
{
  v4.receiver = self;
  v4.super_class = SFAccountDetailViewController;
  [(SFAccountDetailViewController *)&v4 viewWillDisappear:disappear];
  [(SFAccountDetailViewController *)self safari_dismissPresentedAlert];
}

- (void)_accountStoreDidUpdate
{
  if (!self->_shouldIgnoreAccountStoreUpdates)
  {
    v3 = dispatch_get_global_queue(25, 0);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __55__SFAccountDetailViewController__accountStoreDidUpdate__block_invoke;
    block[3] = &unk_1E848F810;
    block[4] = self;
    dispatch_async(v3, block);
  }
}

void __55__SFAccountDetailViewController__accountStoreDidUpdate__block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x1E69C8A38] sharedStore];
  v3 = [v2 savedAccounts];

  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __55__SFAccountDetailViewController__accountStoreDidUpdate__block_invoke_2;
  v5[3] = &unk_1E848F548;
  v5[4] = *(a1 + 32);
  v6 = v3;
  v4 = v3;
  dispatch_async(MEMORY[0x1E69E96A0], v5);
}

- (void)_processAccountStoreUpdateWithSavedAccounts:(id)accounts
{
  v30 = *MEMORY[0x1E69E9840];
  accountsCopy = accounts;
  WeakRetained = objc_loadWeakRetained(&self->_changePasswordSafariViewController);
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v5 = accountsCopy;
  v6 = [v5 countByEnumeratingWithState:&v25 objects:v29 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = 0;
    v9 = *v26;
    obj = v5;
    while (2)
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v26 != v9)
        {
          objc_enumerationMutation(obj);
        }

        v11 = *(*(&v25 + 1) + 8 * i);
        uniqueIdentifierForPasswordManagerLegacy = [(WBSSavedAccount *)self->_savedAccount uniqueIdentifierForPasswordManagerLegacy];
        uniqueIdentifierForPasswordManagerLegacy2 = [v11 uniqueIdentifierForPasswordManagerLegacy];
        v14 = [uniqueIdentifierForPasswordManagerLegacy isEqualToString:uniqueIdentifierForPasswordManagerLegacy2];

        if (v14)
        {
          objc_storeStrong(&self->_savedAccount, v11);
          if ([v11 isEqual:self->_savedAccount])
          {
            goto LABEL_21;
          }

          password = [(WBSSavedAccount *)self->_savedAccount password];
          password2 = [v11 password];
          v17 = [password isEqualToString:password2];

          v8 = 1;
          if ((v17 & 1) == 0)
          {
            if (WeakRetained)
            {
              [WeakRetained setDismissButtonStyle:0];
              _passwordEvaluator = [(SFAccountDetailViewController *)self _passwordEvaluator];
              password3 = [v11 password];
              v20 = [_passwordEvaluator evaluatePassword:password3];
              strength = [v20 strength];

              if (strength == 2)
              {
                self->_completedUpgradeToStrongPassword = 1;
                v22 = objc_loadWeakRetained(&self->_delegate);
                if (objc_opt_respondsToSelector())
                {
                  [v22 setSavedAccountToRemoveAfterCompletedUpgradeInDetailView:v11];
                }
              }

LABEL_21:
              v5 = obj;

              goto LABEL_22;
            }
          }
        }
      }

      v5 = obj;
      v7 = [obj countByEnumeratingWithState:&v25 objects:v29 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }

    if (v8)
    {
      goto LABEL_22;
    }
  }

  else
  {
  }

  if (self->_completedUpgradeToSignInWithApple)
  {
LABEL_22:
    [(SFAccountDetailViewController *)self _updateSavedAccountChangeRequest];
    [(SFAccountDetailViewController *)self _updateCachedTOTPGenerators];
    [(SFAccountDetailViewController *)self _updateWarningForSavedAccount];
    [(SFAccountDetailViewController *)self _reloadDiffableDataSourceOnInternalQueueAnimated:0];
    goto LABEL_23;
  }

  [(SFAccountDetailViewController *)self _popViewController];
LABEL_23:
}

- (void)_popViewController
{
  navigationController = [(SFAccountDetailViewController *)self navigationController];
  topViewController = [navigationController topViewController];

  if (topViewController == self)
  {
    navigationController2 = [(SFAccountDetailViewController *)self navigationController];
    v5 = [navigationController2 popViewControllerAnimated:1];
  }
}

- (void)_showChangePasswordSafariViewController
{
  _changePasswordURL = [(SFAccountDetailViewController *)self _changePasswordURL];
  if (_changePasswordURL)
  {
    v7 = _changePasswordURL;
    v4 = [(UIViewController *)self safari_checkForAbilityToOpenWebContentAndNotifyIfNecessary:_changePasswordURL];
    _changePasswordURL = v7;
    if (v4)
    {
      v5 = objc_alloc_init(SFSafariViewControllerConfiguration);
      [(SFSafariViewControllerConfiguration *)v5 _setPerformingAccountSecurityUpgrade:1];
      v6 = [[SFSafariViewController alloc] initWithURL:v7 configuration:v5];
      [(SFSafariViewController *)v6 setDismissButtonStyle:2];
      [(SFSafariViewController *)v6 setModalPresentationStyle:1];
      [(SFSafariViewController *)v6 setModalInPresentation:1];
      [(SFAccountDetailViewController *)self presentViewController:v6 animated:1 completion:0];
      objc_storeWeak(&self->_changePasswordSafariViewController, v6);

      _changePasswordURL = v7;
    }
  }
}

- (void)_openChangePasswordURLInWebBrowser
{
  v7[1] = *MEMORY[0x1E69E9840];
  defaultWorkspace = [MEMORY[0x1E6963608] defaultWorkspace];
  _changePasswordURL = [(SFAccountDetailViewController *)self _changePasswordURL];
  v6 = *MEMORY[0x1E6963560];
  v7[0] = MEMORY[0x1E695E118];
  v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v7 forKeys:&v6 count:1];
  [defaultWorkspace _sf_openURL:_changePasswordURL withOptions:v5 completionHandler:0];
}

- (void)_cancelChangesAndFinishEditing
{
  [(SFAccountDetailViewController *)self _setEditing:0 animated:1];
  user = [(WBSSavedAccount *)self->_savedAccount user];
  editableTextField = [(SFEditableTableViewCell *)self->_userCell editableTextField];
  [editableTextField setText:user];

  password = [(WBSSavedAccount *)self->_savedAccount password];
  editableTextField2 = [(SFEditableTableViewCell *)self->_passwordCell editableTextField];
  [editableTextField2 setText:password];

  notesEntry = [(WBSSavedAccount *)self->_savedAccount notesEntry];
  textView = [(SFAccountNoteTableViewCell *)self->_notesCell textView];
  [textView setText:notesEntry];

  textDidChange = [(SFAccountNoteTableViewCell *)self->_notesCell textDidChange];

  if (textDidChange)
  {
    textDidChange2 = [(SFAccountNoteTableViewCell *)self->_notesCell textDidChange];
    textDidChange2[2]();
  }

  customTitle = [(WBSSavedAccount *)self->_savedAccount customTitle];
  titleTextField = [(SFAccountHeaderViewCell *)self->_headerCell titleTextField];
  [titleTextField setText:customTitle];

  headerCell = self->_headerCell;

  [(SFAccountDetailViewController *)self _configureHeaderViewCell:headerCell];
}

- (void)_cancelBarButtonItemTapped:(id)tapped
{
  [(SFAccountDetailViewController *)self _updateSavedAccountChangeRequest];
  if ([(WBSSavedAccountChangeRequest *)self->_savedAccountChangeRequest hasChanges])
  {

    [(SFAccountDetailViewController *)self _presentDialogToConfirmCancelEditing];
  }

  else
  {

    [(SFAccountDetailViewController *)self _cancelChangesAndFinishEditing];
  }
}

- (void)_presentDialogToConfirmCancelEditing
{
  v3 = MEMORY[0x1E69DC650];
  v4 = _WBSLocalizedString();
  v5 = _WBSLocalizedString();
  v6 = [v3 alertControllerWithTitle:v4 message:v5 imageNamed:@"alert-passwords" preferredStyle:_SFDeviceAlertStyle()];

  v7 = MEMORY[0x1E69DC648];
  v8 = _WBSLocalizedString();
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __69__SFAccountDetailViewController__presentDialogToConfirmCancelEditing__block_invoke;
  v19[3] = &unk_1E848FBF8;
  v19[4] = self;
  v9 = [v7 actionWithTitle:v8 style:2 handler:v19];
  [v6 addAction:v9];

  v10 = MEMORY[0x1E69DC648];
  v11 = _WBSLocalizedString();
  v14 = MEMORY[0x1E69E9820];
  v15 = 3221225472;
  v16 = __69__SFAccountDetailViewController__presentDialogToConfirmCancelEditing__block_invoke_2;
  v17 = &unk_1E848FBF8;
  v18 = v6;
  v12 = v6;
  v13 = [v10 actionWithTitle:v11 style:1 handler:&v14];
  [v12 addAction:{v13, v14, v15, v16, v17}];

  [(SFAccountDetailViewController *)self presentViewController:v12 animated:1 completion:0];
}

- (void)_shareBarButtonItemTapped:(id)tapped
{
  tappedCopy = tapped;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __59__SFAccountDetailViewController__shareBarButtonItemTapped___block_invoke;
  v6[3] = &unk_1E848FC20;
  v7 = tappedCopy;
  v5 = tappedCopy;
  [(SFAccountDetailViewController *)self _sharePasswordWithPopoverPresentationControllerConfiguration:v6];
}

- (id)_allSharedCredentialGroupsMenu
{
  v41 = *MEMORY[0x1E69E9840];
  array = [MEMORY[0x1E695DF70] array];
  objc_initWeak(&location, self);
  isSavedInPersonalKeychain = [(WBSSavedAccount *)self->_savedAccount isSavedInPersonalKeychain];
  v24 = _WBSLocalizedString();
  v3 = MEMORY[0x1E69DC628];
  v4 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"person"];
  v36[0] = MEMORY[0x1E69E9820];
  v36[1] = 3221225472;
  v36[2] = __63__SFAccountDetailViewController__allSharedCredentialGroupsMenu__block_invoke;
  v36[3] = &unk_1E848FC48;
  objc_copyWeak(&v37, &location);
  v38 = isSavedInPersonalKeychain;
  v25 = [v3 actionWithTitle:v24 image:v4 identifier:0 handler:v36];

  [v25 setState:isSavedInPersonalKeychain];
  if ((isSavedInPersonalKeychain & 1) != 0 || ([MEMORY[0x1E69C8A38] sharedStore], v5 = objc_claimAutoreleasedReturnValue(), v6 = objc_msgSend(v5, "_canMoveSavedAccount:toGroupWithID:", self->_savedAccount, 0), v5, (v6 & 1) == 0))
  {
    [v25 setAttributes:1];
  }

  [array addObject:v25];
  mEMORY[0x1E69C88E8] = [MEMORY[0x1E69C88E8] sharedProvider];
  cachedGroups = [mEMORY[0x1E69C88E8] cachedGroups];

  v34 = 0u;
  v35 = 0u;
  v32 = 0u;
  v33 = 0u;
  obj = cachedGroups;
  v9 = [obj countByEnumeratingWithState:&v32 objects:v40 count:16];
  if (v9)
  {
    v10 = *v33;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v33 != v10)
        {
          objc_enumerationMutation(obj);
        }

        v12 = *(*(&v32 + 1) + 8 * i);
        sharedGroupID = [(WBSSavedAccount *)self->_savedAccount sharedGroupID];
        groupID = [v12 groupID];
        v15 = [sharedGroupID isEqualToString:groupID];

        v16 = MEMORY[0x1E69DC628];
        displayName = [v12 displayName];
        v18 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"person.2"];
        v29[0] = MEMORY[0x1E69E9820];
        v29[1] = 3221225472;
        v29[2] = __63__SFAccountDetailViewController__allSharedCredentialGroupsMenu__block_invoke_2;
        v29[3] = &unk_1E848F430;
        objc_copyWeak(&v30, &location);
        v31 = v15;
        v29[4] = v12;
        v19 = [v16 actionWithTitle:displayName image:v18 identifier:0 handler:v29];

        [v19 setState:v15];
        if ((v15 & 1) != 0 || ([MEMORY[0x1E69C8A38] sharedStore], v20 = objc_claimAutoreleasedReturnValue(), savedAccount = self->_savedAccount, objc_msgSend(v12, "groupID"), v22 = objc_claimAutoreleasedReturnValue(), LOBYTE(savedAccount) = objc_msgSend(v20, "_canMoveSavedAccount:toGroupWithID:", savedAccount, v22), v22, v20, (savedAccount & 1) == 0))
        {
          [v19 setAttributes:1];
        }

        [array addObject:v19];

        objc_destroyWeak(&v30);
      }

      v9 = [obj countByEnumeratingWithState:&v32 objects:v40 count:16];
    }

    while (v9);
  }

  objc_destroyWeak(&v37);
  objc_destroyWeak(&location);

  return array;
}

void __63__SFAccountDetailViewController__allSharedCredentialGroupsMenu__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained && (*(a1 + 40) & 1) == 0)
  {
    v3 = WeakRetained;
    [WeakRetained _presentConfirmationAlertToShareSavedAccountToGroup:0];
    WeakRetained = v3;
  }
}

void __63__SFAccountDetailViewController__allSharedCredentialGroupsMenu__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained && (*(a1 + 48) & 1) == 0)
  {
    v3 = WeakRetained;
    [WeakRetained _presentConfirmationAlertToShareSavedAccountToGroup:*(a1 + 32)];
    WeakRetained = v3;
  }
}

- (id)_airDropMenu
{
  v16[1] = *MEMORY[0x1E69E9840];
  if ([(WBSSavedAccount *)self->_savedAccount isOneTimeSharable])
  {
    objc_initWeak(&location, self);
    v3 = MEMORY[0x1E69DCC60];
    v4 = MEMORY[0x1E69DC628];
    v5 = _WBSLocalizedString();
    v6 = [MEMORY[0x1E69DCAB8] _systemImageNamed:@"airdrop"];
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __45__SFAccountDetailViewController__airDropMenu__block_invoke;
    v12[3] = &unk_1E848FC70;
    objc_copyWeak(&v13, &location);
    v7 = [v4 actionWithTitle:v5 image:v6 identifier:0 handler:v12];
    v16[0] = v7;
    v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v16 count:1];
    v9 = [v3 menuWithTitle:&stru_1F4FE9E38 image:0 identifier:0 options:1 children:v8];

    v15 = v9;
    v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v15 count:1];

    objc_destroyWeak(&v13);
    objc_destroyWeak(&location);
  }

  else
  {
    v10 = MEMORY[0x1E695E0F0];
  }

  return v10;
}

void __45__SFAccountDetailViewController__airDropMenu__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (WeakRetained)
  {
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 3221225472;
    v3[2] = __45__SFAccountDetailViewController__airDropMenu__block_invoke_2;
    v3[3] = &unk_1E848FC20;
    v3[4] = WeakRetained;
    [WeakRetained _sharePasswordWithPopoverPresentationControllerConfiguration:v3];
  }
}

- (void)_presentConfirmationAlertToShareSavedAccountToGroup:(id)group
{
  groupCopy = group;
  issueTypes = [(WBSPasswordWarning *)self->_passwordWarning issueTypes];
  isSavedInPersonalKeychain = [(WBSSavedAccount *)self->_savedAccount isSavedInPersonalKeychain];
  _passwordWarningManager = [(SFAccountDetailViewController *)self _passwordWarningManager];
  mEMORY[0x1E69C8A38] = [MEMORY[0x1E69C8A38] sharedStore];
  v37 = groupCopy;
  groupID = [groupCopy groupID];
  v10 = [mEMORY[0x1E69C8A38] savedAccountsForGroupID:groupID];
  v11 = [_passwordWarningManager savedAccountsFromGroup:v10 containsPasswordFromSavedAccount:self->_savedAccount];

  localizedAlertWarningForSharingReusedPassword = 0;
  if ((issueTypes & 1) != 0 && isSavedInPersonalKeychain && (v11 & 1) == 0)
  {
    localizedAlertWarningForSharingReusedPassword = [(WBSPasswordWarning *)self->_passwordWarning localizedAlertWarningForSharingReusedPassword];
  }

  mEMORY[0x1E69C88E8] = [MEMORY[0x1E69C88E8] sharedProvider];
  sharedGroupID = [(WBSSavedAccount *)self->_savedAccount sharedGroupID];
  v15 = [mEMORY[0x1E69C88E8] cachedGroupWithID:sharedGroupID];

  displayName = [v15 displayName];
  displayName2 = [v37 displayName];
  v18 = displayName2;
  if (displayName2 && displayName)
  {
    v19 = [MEMORY[0x1E69BC7B0] confirmationAlertSubtitleForMovingSavedAccount:self->_savedAccount fromGroupWithName:displayName];
  }

  else if (displayName)
  {
    v19 = [MEMORY[0x1E69BC7B0] confirmationAlertSubtitleForMovingSavedAccount:self->_savedAccount toMyPasswordsFromGroup:v15];
  }

  else if (displayName2)
  {
    v19 = [MEMORY[0x1E69BC7B0] confirmationAlertSubtitleForMovingSavedAccount:self->_savedAccount fromMyPasswordsToGroupWithName:displayName2];
  }

  else
  {
    v19 = 0;
  }

  v35 = v19;
  if (localizedAlertWarningForSharingReusedPassword)
  {
    v20 = localizedAlertWarningForSharingReusedPassword;
  }

  else
  {
    v20 = v19;
  }

  v21 = v20;
  v22 = [MEMORY[0x1E69BC7B0] alertTitleForMovingSavedAccount:self->_savedAccount toGroupWithName:v18];
  v34 = v21;
  v23 = [MEMORY[0x1E69DC650] alertControllerWithTitle:v22 message:v21 imageNamed:@"alert-passwords" preferredStyle:_SFDeviceAlertStyle()];
  if ([localizedAlertWarningForSharingReusedPassword length])
  {
    v24 = MEMORY[0x1E69DC648];
    v25 = _WBSLocalizedString();
    v42[0] = MEMORY[0x1E69E9820];
    v42[1] = 3221225472;
    v42[2] = __85__SFAccountDetailViewController__presentConfirmationAlertToShareSavedAccountToGroup___block_invoke;
    v42[3] = &unk_1E848FBF8;
    v42[4] = self;
    v26 = [v24 actionWithTitle:v25 style:0 handler:v42];
    [v23 addAction:v26];
  }

  v36 = v15;
  v27 = _WBSLocalizedString();
  objc_initWeak(&location, self);
  v28 = MEMORY[0x1E69DC648];
  v38[0] = MEMORY[0x1E69E9820];
  v38[1] = 3221225472;
  v38[2] = __85__SFAccountDetailViewController__presentConfirmationAlertToShareSavedAccountToGroup___block_invoke_2;
  v38[3] = &unk_1E848FCE8;
  objc_copyWeak(&v40, &location);
  v29 = v37;
  v39 = v29;
  v30 = [v28 actionWithTitle:v27 style:0 handler:v38];
  [v23 addAction:v30];

  v31 = MEMORY[0x1E69DC648];
  v32 = _WBSLocalizedString();
  v33 = [v31 actionWithTitle:v32 style:1 handler:0];
  [v23 addAction:v33];

  [(SFAccountDetailViewController *)self presentViewController:v23 animated:1 completion:0];
  objc_destroyWeak(&v40);
  objc_destroyWeak(&location);
}

uint64_t __85__SFAccountDetailViewController__presentConfirmationAlertToShareSavedAccountToGroup___block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x1E696AAE8] safari_isSafariViewServiceBundle];
  v3 = *(a1 + 32);
  if (v2)
  {

    return [v3 _openChangePasswordURLInWebBrowser];
  }

  else
  {

    return [v3 _showChangePasswordSafariViewController];
  }
}

void __85__SFAccountDetailViewController__presentConfirmationAlertToShareSavedAccountToGroup___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v3 = [MEMORY[0x1E69C8A38] sharedStore];
    v4 = WeakRetained[130];
    v5 = [*(a1 + 32) groupID];
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __85__SFAccountDetailViewController__presentConfirmationAlertToShareSavedAccountToGroup___block_invoke_3;
    v6[3] = &unk_1E848FCC0;
    v6[4] = WeakRetained;
    v7 = *(a1 + 32);
    [v3 _moveSavedAccount:v4 toGroupWithID:v5 completionHandler:v6];
  }
}

void __85__SFAccountDetailViewController__presentConfirmationAlertToShareSavedAccountToGroup___block_invoke_3(uint64_t a1, char a2)
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __85__SFAccountDetailViewController__presentConfirmationAlertToShareSavedAccountToGroup___block_invoke_4;
  block[3] = &unk_1E848FC98;
  v5 = a2;
  v2 = *(a1 + 40);
  block[4] = *(a1 + 32);
  v4 = v2;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

uint64_t __85__SFAccountDetailViewController__presentConfirmationAlertToShareSavedAccountToGroup___block_invoke_4(uint64_t a1)
{
  if ((*(a1 + 48) & 1) == 0)
  {
    [*(a1 + 32) _presentErrorAlertForFailingToMoveAccountToGroup:*(a1 + 40)];
  }

  v2 = *(a1 + 32);

  return [v2 _reloadDiffableDataSourceOnInternalQueueAnimated:0];
}

- (void)_presentErrorAlertForFailingToMoveAccountToGroup:(id)group
{
  v18[1] = *MEMORY[0x1E69E9840];
  v4 = MEMORY[0x1E69BC7B0];
  groupCopy = group;
  alertTitleForFailingToMoveToGroup = [v4 alertTitleForFailingToMoveToGroup];
  v7 = MEMORY[0x1E69BC7B0];
  v18[0] = self->_savedAccount;
  v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v18 count:1];
  displayName = [groupCopy displayName];

  v10 = [v7 alertSubtitleForFailingToMoveSavedAccounts:v8 toGroupWithName:displayName];

  v11 = [MEMORY[0x1E69DC650] alertControllerWithTitle:alertTitleForFailingToMoveToGroup message:v10 imageNamed:@"alert-passwords" preferredStyle:1];
  v12 = MEMORY[0x1E69DC648];
  v13 = _WBSLocalizedString();
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __82__SFAccountDetailViewController__presentErrorAlertForFailingToMoveAccountToGroup___block_invoke;
  v16[3] = &unk_1E848FBF8;
  v17 = v11;
  v14 = v11;
  v15 = [v12 actionWithTitle:v13 style:0 handler:v16];
  [v14 addAction:v15];

  [(SFAccountDetailViewController *)self presentViewController:v14 animated:1 completion:0];
}

- (void)_setEditing:(BOOL)editing animated:(BOOL)animated
{
  animatedCopy = animated;
  editingCopy = editing;
  v35[1] = *MEMORY[0x1E69E9840];
  if ([(SFAccountDetailViewController *)self _allowEditing])
  {
    v32.receiver = self;
    v32.super_class = SFAccountDetailViewController;
    [(SFAccountDetailViewController *)&v32 setEditing:editingCopy animated:animatedCopy];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __54__SFAccountDetailViewController__setEditing_animated___block_invoke;
    block[3] = &unk_1E848FD38;
    block[4] = self;
    v31 = editingCopy;
    dispatch_async(MEMORY[0x1E69E96A0], block);
    if (editingCopy)
    {
      [(SFAccountDetailViewController *)self _revealPasswordIfNecessary];
      navigationItem = [(SFAccountDetailViewController *)self navigationItem];
      [navigationItem setLeftBarButtonItem:self->_cancelBarButtonItem animated:animatedCopy];
      v35[0] = self->_doneBarButtonItem;
      v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v35 count:1];
      [navigationItem setRightBarButtonItems:v8 animated:animatedCopy];

      editableTextField = [(SFEditableTableViewCell *)self->_userCell editableTextField];
      text = [editableTextField text];
      userForEditing = self->_userForEditing;
      self->_userForEditing = text;

      editableTextField2 = [(SFEditableTableViewCell *)self->_passwordCell editableTextField];
      text2 = [editableTextField2 text];
      passwordForEditing = self->_passwordForEditing;
      self->_passwordForEditing = text2;

      textView = [(SFAccountNoteTableViewCell *)self->_notesCell textView];
      text3 = [textView text];
      notesForEditing = self->_notesForEditing;
      self->_notesForEditing = text3;

      titleTextField = [(SFAccountHeaderViewCell *)self->_headerCell titleTextField];
      text4 = [titleTextField text];
      titleForEditing = self->_titleForEditing;
      self->_titleForEditing = text4;
    }

    else
    {
      navigationItem = [(SFAccountDetailViewController *)self navigationItem];
      [navigationItem setLeftBarButtonItem:0 animated:animatedCopy];
      mEMORY[0x1E69B1B18] = [MEMORY[0x1E69B1B18] sharedFeatureManager];
      if ([mEMORY[0x1E69B1B18] isAirDropPasswordsAvailable])
      {
        shareBarButtonItem = self->_shareBarButtonItem;
        v34[0] = self->_editBarButtonItem;
        v34[1] = shareBarButtonItem;
        v23 = MEMORY[0x1E695DEC8];
        p_editBarButtonItem = v34;
        v25 = 2;
      }

      else
      {
        editBarButtonItem = self->_editBarButtonItem;
        v23 = MEMORY[0x1E695DEC8];
        p_editBarButtonItem = &editBarButtonItem;
        v25 = 1;
      }

      v26 = [v23 arrayWithObjects:p_editBarButtonItem count:v25];
      [navigationItem setRightBarButtonItems:v26 animated:animatedCopy];

      v27 = self->_userForEditing;
      self->_userForEditing = 0;

      v28 = self->_passwordForEditing;
      self->_passwordForEditing = 0;

      v29 = self->_notesForEditing;
      self->_notesForEditing = 0;

      titleTextField = self->_titleForEditing;
      self->_titleForEditing = 0;
    }
  }
}

void __54__SFAccountDetailViewController__setEditing_animated___block_invoke(uint64_t a1)
{
  *(*(a1 + 32) + 1192) = *(a1 + 40);
  v2 = [*(*(a1 + 32) + 1208) snapshot];
  v3 = [*(a1 + 32) _cellsThatChangeAppearanceOnEdit];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __54__SFAccountDetailViewController__setEditing_animated___block_invoke_2;
  v12[3] = &unk_1E848FD10;
  v4 = v2;
  v13 = v4;
  v5 = [v3 safari_filterObjectsUsingBlock:v12];

  [v4 reconfigureItemsWithIdentifiers:v5];
  if ([*(*(a1 + 32) + 1264) count])
  {
    if (*(a1 + 40) != 1)
    {
      [v4 deleteItemsWithIdentifiers:&unk_1F5023770];
      goto LABEL_9;
    }

    v6 = [v4 sectionIdentifiers];
    v7 = [v6 containsObject:&unk_1F5022C30];

    if (v7)
    {
      v8 = &unk_1F5023740;
      v9 = &unk_1F5022C30;
    }

    else
    {
      v10 = [v4 sectionIdentifiers];
      v11 = [v10 containsObject:&unk_1F5022C60];

      if (!v11)
      {
        goto LABEL_9;
      }

      v8 = &unk_1F5023758;
      v9 = &unk_1F5022C60;
    }

    [v4 appendItemsWithIdentifiers:v8 intoSectionWithIdentifier:v9];
  }

LABEL_9:
  if ([*(*(a1 + 32) + 1040) credentialTypes] == 2)
  {
    [*(a1 + 32) _updateAddPasswordButton:*(a1 + 40) forSnapshot:v4];
  }

  [*(*(a1 + 32) + 1208) applySnapshot:v4 animatingDifferences:1];
}

uint64_t __54__SFAccountDetailViewController__setEditing_animated___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 itemIdentifiers];
  v5 = [v4 containsObject:v3];

  return v5;
}

- (void)_updateAddPasswordButton:(BOOL)button forSnapshot:(id)snapshot
{
  buttonCopy = button;
  snapshotCopy = snapshot;
  v8 = snapshotCopy;
  if (buttonCopy)
  {
    [snapshotCopy insertSectionsWithIdentifiers:&unk_1F5023788 beforeSectionWithIdentifier:&unk_1F5022C48];
    [v8 appendItemsWithIdentifiers:&unk_1F50237A0 intoSectionWithIdentifier:&unk_1F5022C60];
  }

  else
  {
    sectionIdentifiers = [snapshotCopy sectionIdentifiers];
    v7 = [sectionIdentifiers containsObject:&unk_1F5022C60];

    if (v7)
    {
      [v8 deleteSectionsWithIdentifiers:&unk_1F50237B8];
    }
  }
}

- (id)_createShareBarButtonItem
{
  v3 = objc_alloc(MEMORY[0x1E69DC708]);
  v4 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"square.and.arrow.up"];
  v5 = [v3 initWithImage:v4 style:0 target:self action:sel__shareBarButtonItemTapped_];

  return v5;
}

- (void)dealloc
{
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter removeObserver:self];

  v4.receiver = self;
  v4.super_class = SFAccountDetailViewController;
  [(SFAccountDetailViewController *)&v4 dealloc];
}

- (void)_handleLongPressGesture:(id)gesture
{
  gestureCopy = gesture;
  if ([gestureCopy state] == 1)
  {
    tableView = [(SFAccountDetailViewController *)self tableView];
    [gestureCopy locationInView:tableView];
    v6 = v5;
    v8 = v7;

    tableView2 = [(SFAccountDetailViewController *)self tableView];
    v10 = [tableView2 indexPathForRowAtPoint:{v6, v8}];

    if (v10)
    {
      [(UIEditMenuInteraction *)self->_editMenuInteraction dismissMenu];
      v11 = MEMORY[0x1E69DC9D8];
      tableView3 = [(SFAccountDetailViewController *)self tableView];
      [tableView3 rectForRowAtIndexPath:v10];
      UIRectGetCenter();
      v13 = [v11 configurationWithIdentifier:v10 sourcePoint:?];

      [(UIEditMenuInteraction *)self->_editMenuInteraction presentEditMenuWithConfiguration:v13];
    }
  }
}

- (id)_cellForIdentifier:(id)identifier indexPath:(id)path
{
  v154[1] = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  pathCopy = path;
  objc_initWeak(&location, self);
  v8 = [(SFAccountDetailViewController *)self _itemTypeForIdentifier:identifierCopy];
  if ([(SFAccountDetailViewController *)self isEditing])
  {
    v9 = 2;
  }

  else
  {
    v9 = 0;
  }

  if (UIAccessibilityButtonShapesEnabled())
  {
    v153 = *MEMORY[0x1E69DB758];
    v154[0] = &unk_1F5022C90;
    v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v154 forKeys:&v153 count:1];
  }

  else
  {
    v10 = MEMORY[0x1E695E0F8];
  }

  switch(v8)
  {
    case 0:
      tableView = [(SFAccountDetailViewController *)self tableView];
      v12 = [tableView dequeueReusableCellWithIdentifier:@"AccountHeaderCell"];
      v13 = v12;
      if (!v12)
      {
        v13 = [[SFAccountHeaderViewCell alloc] initWithStyle:0 reuseIdentifier:@"AccountHeaderCell"];
      }

      v14 = 1104;
      objc_storeStrong(&self->_headerCell, v13);
      if (!v12)
      {
      }

      [(SFAccountDetailViewController *)self _configureHeaderViewCell:self->_headerCell];
      goto LABEL_19;
    case 1:
      tableView2 = [(SFAccountDetailViewController *)self tableView];
      v57 = [tableView2 dequeueReusableCellWithIdentifier:@"editableTableViewCell"];

      if (!v57)
      {
        if ([(SFAccountDetailViewController *)self _allowEditing])
        {
          isEditing = [(SFAccountDetailViewController *)self isEditing];
        }

        else
        {
          isEditing = 0;
        }

        v57 = [[SFEditableTableViewCell alloc] initWithEnabledState:isEditing];
      }

      [(SFAccountDetailViewController *)self _configureUserCell:v57];
      v133 = [(SFAccountDetailViewController *)self _editableCellWithCell:v57];
      userCell = self->_userCell;
      self->_userCell = v133;

      editableTextField = [(SFEditableTableViewCell *)self->_userCell editableTextField];
      [editableTextField setDelegate:self];

      [(SFEditableTableViewCell *)self->_userCell setEnabled:[(SFAccountDetailViewController *)self isEditing]];
      break;
    case 2:
      valueCellConfiguration = [MEMORY[0x1E69DCC28] valueCellConfiguration];
      v50 = _WBSLocalizedString();
      [valueCellConfiguration setText:v50];

      _passkeyCreationDateString = [(SFAccountDetailViewController *)self _passkeyCreationDateString];
      [valueCellConfiguration setSecondaryText:_passkeyCreationDateString];

      tableView3 = [(SFAccountDetailViewController *)self tableView];
      v53 = [tableView3 dequeueReusableCellWithIdentifier:@"PasskeyCell"];
      v54 = v53;
      if (v53)
      {
        v55 = v53;
      }

      else
      {
        v55 = [objc_alloc(MEMORY[0x1E69DD028]) initWithStyle:1 reuseIdentifier:@"PasskeyCell"];
      }

      v57 = v55;

      [(SFEditableTableViewCell *)v57 setContentConfiguration:valueCellConfiguration];
      break;
    case 3:
      tableView4 = [(SFAccountDetailViewController *)self tableView];
      v57 = [tableView4 dequeueReusableCellWithIdentifier:@"editableTableViewCell"];

      if (!v57)
      {
        if ([(SFAccountDetailViewController *)self _allowEditing])
        {
          isEditing2 = [(SFAccountDetailViewController *)self isEditing];
        }

        else
        {
          isEditing2 = 0;
        }

        v57 = [[SFEditableTableViewCell alloc] initWithEnabledState:isEditing2];
      }

      [(SFAccountDetailViewController *)self _configurePasswordCell:v57];
      v125 = [(SFAccountDetailViewController *)self _editableCellWithCell:v57];
      passwordCell = self->_passwordCell;
      self->_passwordCell = v125;

      editableTextField2 = [(SFEditableTableViewCell *)self->_passwordCell editableTextField];
      [editableTextField2 setDelegate:self];

      v128 = MEMORY[0x1E69DB878];
      editableTextField3 = [(SFEditableTableViewCell *)self->_passwordCell editableTextField];
      font = [editableTextField3 font];
      [font pointSize];
      v131 = [v128 monospacedSystemFontOfSize:? weight:?];
      editableTextField4 = [(SFEditableTableViewCell *)self->_passwordCell editableTextField];
      [editableTextField4 setFont:v131];

      [(SFEditableTableViewCell *)self->_passwordCell setEnabled:[(SFAccountDetailViewController *)self isEditing]];
      break;
    case 4:
      _groupPickerTableViewCell = [(SFAccountDetailViewController *)self _groupPickerTableViewCell];
      goto LABEL_64;
    case 5:
      _groupPickerTableViewCell = [(SFAccountDetailViewController *)self _originalContributorCell];
      goto LABEL_64;
    case 6:
      tableView5 = [(SFAccountDetailViewController *)self tableView];
      v75 = [tableView5 dequeueReusableCellWithIdentifier:@"TOTPCell"];
      v76 = v75;
      if (v75)
      {
        v77 = v75;
      }

      else
      {
        v77 = [[SFAccountDetailTOTPTableViewCell alloc] initWithStyle:0 reuseIdentifier:@"TOTPCell"];
      }

      v57 = v77;

      [(SFEditableTableViewCell *)v57 configureWithGenerator:identifierCopy];
      isForFillingIndividualAccountFields = self->_isForFillingIndividualAccountFields;
      if (isForFillingIndividualAccountFields)
      {
        v118 = +[_SFAccountManagerAppearanceValues buttonCellTextColor];
      }

      else
      {
        v118 = 0;
      }

      [(SFEditableTableViewCell *)v57 setOverrideVerificationCodeLabelTextColor:v118];
      if (isForFillingIndividualAccountFields)
      {
      }

      objc_storeStrong(&self->_TOTPCodeCell, v57);
      break;
    case 7:
      setupTOTPCodeCell = self->_setupTOTPCodeCell;
      if (setupTOTPCodeCell)
      {
        v65 = 0;
      }

      else
      {
        tableView6 = [(SFAccountDetailViewController *)self tableView];
        v108 = [tableView6 dequeueReusableCellWithIdentifier:@"TOTPSetupCell"];
        v109 = v108;
        if (v108)
        {
          v110 = v108;
        }

        else
        {
          v110 = [objc_alloc(MEMORY[0x1E69DD028]) initWithStyle:0 reuseIdentifier:@"TOTPSetupCell"];
        }

        v65 = v110;

        v136 = _WBSLocalizedString();
        textLabel = [v65 textLabel];
        [textLabel setText:v136];

        detailTextLabel = [v65 detailTextLabel];
        [detailTextLabel setText:0];

        detailTextLabel2 = [v65 detailTextLabel];
        [detailTextLabel2 setAttributedText:0];

        editableTextField5 = [v65 editableTextField];
        [editableTextField5 setText:0];

        textLabel2 = [v65 textLabel];
        [textLabel2 setNumberOfLines:0];

        v142 = +[_SFAccountManagerAppearanceValues buttonCellTextColor];
        textLabel3 = [v65 textLabel];
        [textLabel3 setTintColor:v142];

        textLabel4 = [v65 textLabel];
        [textLabel4 _setTextColorFollowsTintColor:1];

        objc_storeStrong(&self->_setupTOTPCodeCell, v65);
        setupTOTPCodeCell = self->_setupTOTPCodeCell;
      }

      textLabel5 = [(UITableViewCell *)setupTOTPCodeCell textLabel];
      [textLabel5 setTintAdjustmentMode:v9];

      v57 = self->_setupTOTPCodeCell;
      break;
    case 8:
      tableView7 = [(SFAccountDetailViewController *)self tableView];
      v96 = [tableView7 dequeueReusableCellWithIdentifier:@"TOTPDeleteCell"];
      v97 = v96;
      if (v96)
      {
        v98 = v96;
      }

      else
      {
        v98 = [objc_alloc(MEMORY[0x1E69DD028]) initWithStyle:0 reuseIdentifier:@"TOTPDeleteCell"];
      }

      v57 = v98;

      v119 = _WBSLocalizedString();
      textLabel6 = [(SFEditableTableViewCell *)v57 textLabel];
      [textLabel6 setText:v119];

      systemRedColor = [MEMORY[0x1E69DC888] systemRedColor];
      textLabel7 = [(SFEditableTableViewCell *)v57 textLabel];
      [textLabel7 setTextColor:systemRedColor];

      textLabel8 = [(SFEditableTableViewCell *)v57 textLabel];
      [textLabel8 setNumberOfLines:0];

      break;
    case 9:
      tableView8 = [(SFAccountDetailViewController *)self tableView];
      v46 = [tableView8 dequeueReusableCellWithIdentifier:@"AddPasswordCell"];
      v47 = v46;
      if (v46)
      {
        v48 = v46;
      }

      else
      {
        v48 = [objc_alloc(MEMORY[0x1E69DD028]) initWithStyle:0 reuseIdentifier:@"AddPasswordCell"];
      }

      v57 = v48;

      v111 = _WBSLocalizedString();
      textLabel9 = [(SFEditableTableViewCell *)v57 textLabel];
      [textLabel9 setText:v111];

      textLabel10 = [(SFEditableTableViewCell *)v57 textLabel];
      [textLabel10 _setTextColorFollowsTintColor:1];

      textLabel11 = [(SFEditableTableViewCell *)v57 textLabel];
      [textLabel11 setNumberOfLines:0];

      v115 = +[_SFAccountManagerAppearanceValues buttonCellTextColor];
      textLabel12 = [(SFEditableTableViewCell *)v57 textLabel];
      [textLabel12 setTintColor:v115];

      break;
    case 10:
      v32 = 1216;
      if (!self->_securityRecommendationInfoCell)
      {
        v79 = [[SFSecurityRecommendationInfoCell alloc] initWithConfiguration:0 reuseIdentifier:0];
        securityRecommendationInfoCell = self->_securityRecommendationInfoCell;
        self->_securityRecommendationInfoCell = v79;

        [(SFSecurityRecommendationInfoCell *)self->_securityRecommendationInfoCell setDelegate:self];
        issueTypes = [(WBSPasswordWarning *)self->_passwordWarning issueTypes];
        v151[0] = @"priority";
        severity = [(WBSPasswordWarning *)self->_passwordWarning severity];
        v83 = @"standard";
        if (severity == 1)
        {
          v83 = @"high";
        }

        v152[0] = v83;
        v151[1] = @"domain";
        highLevelDomain = [(WBSSavedAccount *)self->_savedAccount highLevelDomain];
        v152[1] = highLevelDomain;
        v151[2] = @"user";
        user = [(WBSSavedAccount *)self->_savedAccount user];
        v86 = user;
        v87 = @"true";
        if (issueTypes)
        {
          v88 = @"true";
        }

        else
        {
          v88 = @"false";
        }

        v152[2] = user;
        v152[3] = v88;
        v151[3] = @"reused";
        v151[4] = @"weak";
        v151[5] = @"compromised";
        if ((issueTypes & 2) != 0)
        {
          v89 = @"true";
        }

        else
        {
          v89 = @"false";
        }

        if ((issueTypes & 0xC) == 0)
        {
          v87 = @"false";
        }

        v152[4] = v89;
        v152[5] = v87;
        v90 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v152 forKeys:v151 count:6];
        v91 = WBSMakeAccessibilityIdentifier();
        [(SFSecurityRecommendationInfoCell *)self->_securityRecommendationInfoCell setAccessibilityIdentifier:v91];

        titleLabel = [(SFSecurityRecommendationInfoCell *)self->_securityRecommendationInfoCell titleLabel];
        [titleLabel setAccessibilityIdentifier:@"PasswordDetailViewSecurityRecommendationsCellTitle"];

        subtitleLabel = [(SFSecurityRecommendationInfoCell *)self->_securityRecommendationInfoCell subtitleLabel];
        [subtitleLabel setAccessibilityIdentifier:@"PasswordDetailViewSecurityRecommendationsCellSubtitle"];
      }

      [(SFAccountDetailViewController *)self _configureSecurityRecommendationInfoCell];
      goto LABEL_62;
    case 11:
      v14 = 1272;
      upgradeToSignInWithAppleCell = self->_upgradeToSignInWithAppleCell;
      if (!upgradeToSignInWithAppleCell)
      {
        v22 = [objc_alloc(MEMORY[0x1E69DD028]) initWithStyle:0 reuseIdentifier:@"upgradeToSignInWithApple"];
        v23 = self->_upgradeToSignInWithAppleCell;
        self->_upgradeToSignInWithAppleCell = v22;

        textLabel13 = [(UITableViewCell *)self->_upgradeToSignInWithAppleCell textLabel];
        [textLabel13 _setTextColorFollowsTintColor:1];

        v25 = _WBSLocalizedString();
        textLabel14 = [(UITableViewCell *)self->_upgradeToSignInWithAppleCell textLabel];
        [textLabel14 setText:v25];

        textLabel15 = [(UITableViewCell *)self->_upgradeToSignInWithAppleCell textLabel];
        [textLabel15 setNumberOfLines:0];

        [(UITableViewCell *)self->_upgradeToSignInWithAppleCell setAccessibilityIdentifier:@"PasswordDetailViewSignInWithAppleUpgradeCell"];
        v28 = +[_SFAccountManagerAppearanceValues buttonCellTextColor];
        textLabel16 = [(UITableViewCell *)self->_upgradeToSignInWithAppleCell textLabel];
        [textLabel16 setTintColor:v28];

        upgradeToSignInWithAppleCell = self->_upgradeToSignInWithAppleCell;
      }

      textLabel17 = [(UITableViewCell *)upgradeToSignInWithAppleCell textLabel];
      [textLabel17 setTintAdjustmentMode:v9];

LABEL_19:
      v31 = *(&self->super.super.super.super.isa + v14);
      goto LABEL_63;
    case 12:
      v32 = 1280;
      changeToStrongPasswordCell = self->_changeToStrongPasswordCell;
      if (!changeToStrongPasswordCell)
      {
        v34 = [objc_alloc(MEMORY[0x1E69DD028]) initWithStyle:0 reuseIdentifier:@"changeToStrongPassword"];
        v35 = self->_changeToStrongPasswordCell;
        self->_changeToStrongPasswordCell = v34;

        textLabel18 = [(UITableViewCell *)self->_changeToStrongPasswordCell textLabel];
        [textLabel18 _setTextColorFollowsTintColor:1];

        v37 = objc_alloc(MEMORY[0x1E696AAB0]);
        v38 = _WBSLocalizedString();
        v39 = [v37 initWithString:v38 attributes:v10];
        textLabel19 = [(UITableViewCell *)self->_changeToStrongPasswordCell textLabel];
        [textLabel19 setAttributedText:v39];

        textLabel20 = [(UITableViewCell *)self->_changeToStrongPasswordCell textLabel];
        [textLabel20 setNumberOfLines:0];

        [(UITableViewCell *)self->_changeToStrongPasswordCell setAccessibilityIdentifier:@"PasswordDetailViewChangeToStrongPasswordUpgradeCell"];
        v42 = +[_SFAccountManagerAppearanceValues buttonCellTextColor];
        textLabel21 = [(UITableViewCell *)self->_changeToStrongPasswordCell textLabel];
        [textLabel21 setTintColor:v42];

        changeToStrongPasswordCell = self->_changeToStrongPasswordCell;
      }

      textLabel22 = [(UITableViewCell *)changeToStrongPasswordCell textLabel];
      [textLabel22 setTintAdjustmentMode:v9];

LABEL_62:
      v31 = *(&self->super.super.super.super.isa + v32);
LABEL_63:
      _groupPickerTableViewCell = v31;
      goto LABEL_64;
    case 13:
      tableView9 = [(SFAccountDetailViewController *)self tableView];
      v71 = [tableView9 dequeueReusableCellWithIdentifier:@"changePassword"];
      v72 = v71;
      if (!v71)
      {
        v72 = [objc_alloc(MEMORY[0x1E69DD028]) initWithStyle:0 reuseIdentifier:@"changePassword"];
      }

      objc_storeStrong(&self->_changePasswordOnWebsiteCell, v72);
      if (!v71)
      {
      }

      [(UITableViewCell *)self->_changePasswordOnWebsiteCell setAccessibilityIdentifier:@"ChangePasswordOnWebsiteCell"];
      textLabel23 = [(UITableViewCell *)self->_changePasswordOnWebsiteCell textLabel];
      [textLabel23 setTintAdjustmentMode:v9];

      [(WBSPasswordWarning *)self->_passwordWarning issueTypes];
      v100 = _WBSLocalizedString();
      v101 = [objc_alloc(MEMORY[0x1E696AAB0]) initWithString:v100 attributes:v10];
      textLabel24 = [(UITableViewCell *)self->_changePasswordOnWebsiteCell textLabel];
      [textLabel24 setAttributedText:v101];

      textLabel25 = [(UITableViewCell *)self->_changePasswordOnWebsiteCell textLabel];
      [textLabel25 setNumberOfLines:0];

      textLabel26 = [(UITableViewCell *)self->_changePasswordOnWebsiteCell textLabel];
      [textLabel26 _setTextColorFollowsTintColor:1];

      v105 = +[_SFAccountManagerAppearanceValues buttonCellTextColor];
      textLabel27 = [(UITableViewCell *)self->_changePasswordOnWebsiteCell textLabel];
      [textLabel27 setTintColor:v105];

      v57 = self->_changePasswordOnWebsiteCell;
      break;
    case 14:
      tableView10 = [(SFAccountDetailViewController *)self tableView];
      v17 = [tableView10 dequeueReusableCellWithIdentifier:@"NotesCell"];
      notesCell = self->_notesCell;
      self->_notesCell = v17;

      [(SFAccountNoteTableViewCell *)self->_notesCell setDelegate:self];
      notesForEditing = self->_notesForEditing;
      if (notesForEditing)
      {
        notesEntry = self->_notesForEditing;
      }

      else
      {
        notesEntry = [(WBSSavedAccount *)self->_savedAccount notesEntry];
      }

      textView = [(SFAccountNoteTableViewCell *)self->_notesCell textView];
      [textView setText:notesEntry];

      if (!notesForEditing)
      {
      }

      v146[0] = MEMORY[0x1E69E9820];
      v146[1] = 3221225472;
      v146[2] = __62__SFAccountDetailViewController__cellForIdentifier_indexPath___block_invoke;
      v146[3] = &unk_1E848F8F0;
      objc_copyWeak(&v147, &location);
      [(SFAccountNoteTableViewCell *)self->_notesCell setTextDidChange:v146];
      v57 = self->_notesCell;
      objc_destroyWeak(&v147);
      break;
    case 15:
      tableView11 = [(SFAccountDetailViewController *)self tableView];
      v57 = [(SFAccountDetailViewController *)self _savedAccountWebsiteCellForTableView:tableView11 atIndexPath:pathCopy];

      v149 = @"domain";
      textLabel28 = [(SFEditableTableViewCell *)v57 textLabel];
      text = [textLabel28 text];
      v150 = text;
      v60 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v150 forKeys:&v149 count:1];
      v61 = WBSMakeAccessibilityIdentifier();
      [(SFEditableTableViewCell *)v57 setAccessibilityIdentifier:v61];

      break;
    case 16:
      _groupPickerTableViewCell = [(SFAccountDetailViewController *)self _recoverRecentlyDeletedAccountCell];
      goto LABEL_64;
    case 17:
      _groupPickerTableViewCell = [(SFAccountDetailViewController *)self _moveRecentlyDeletedAccountToMyPasswordsCell];
LABEL_64:
      v57 = _groupPickerTableViewCell;
      break;
    case 18:
      tableView12 = [(SFAccountDetailViewController *)self tableView];
      v57 = [(SFAccountDetailViewController *)self _deletePasskeyCellForTableView:tableView12];

      [(SFEditableTableViewCell *)v57 setAccessibilityIdentifier:@"AccountDetailViewDeletePasskeyCell"];
      break;
    case 19:
      tableView13 = [(SFAccountDetailViewController *)self tableView];
      v57 = [(SFAccountDetailViewController *)self _deletePasswordCellForTableView:tableView13 shouldRemoveTOTPGenerator:0];

      [(SFEditableTableViewCell *)v57 setAccessibilityIdentifier:@"AccountDetailViewDeletePasswordCell"];
      break;
    case 20:
      tableView14 = [(SFAccountDetailViewController *)self tableView];
      v57 = [(SFAccountDetailViewController *)self _deletePasswordCellForTableView:tableView14 shouldRemoveTOTPGenerator:1];

      [(SFEditableTableViewCell *)v57 setAccessibilityIdentifier:@"AccountDetailViewDeletePasswordAndVerificationCodeCell"];
      break;
    case 21:
      tableView15 = [(SFAccountDetailViewController *)self tableView];
      v57 = [(SFAccountDetailViewController *)self _deleteCellForTableView:tableView15];

      [(SFEditableTableViewCell *)v57 setAccessibilityIdentifier:@"AccountDetailViewDeleteCell"];
      break;
    default:
      v57 = 0;
      break;
  }

  objc_destroyWeak(&location);

  return v57;
}

void __62__SFAccountDetailViewController__cellForIdentifier_indexPath___block_invoke(uint64_t a1)
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __62__SFAccountDetailViewController__cellForIdentifier_indexPath___block_invoke_2;
  block[3] = &unk_1E848F8F0;
  objc_copyWeak(&v2, (a1 + 32));
  dispatch_async(MEMORY[0x1E69E96A0], block);
  objc_destroyWeak(&v2);
}

void __62__SFAccountDetailViewController__cellForIdentifier_indexPath___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v6 = WeakRetained;
    v2 = [WeakRetained tableView];
    [v2 beginUpdates];
    [v2 endUpdates];
    v3 = [v6[148] textView];
    v4 = [v3 text];
    v5 = v6[150];
    v6[150] = v4;

    WeakRetained = v6;
  }
}

- (void)_reloadDiffableDataSourceOnInternalQueueAnimated:(BOOL)animated
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __82__SFAccountDetailViewController__reloadDiffableDataSourceOnInternalQueueAnimated___block_invoke;
  v3[3] = &unk_1E848FD38;
  v3[4] = self;
  animatedCopy = animated;
  dispatch_async(MEMORY[0x1E69E96A0], v3);
}

- (void)_reloadDiffableDataSourceAnimated:(BOOL)animated
{
  animatedCopy = animated;
  v44 = *MEMORY[0x1E69E9840];
  v5 = objc_alloc_init(MEMORY[0x1E69955A0]);
  [v5 appendSectionsWithIdentifiers:&unk_1F50237D0];
  [v5 appendItemsWithIdentifiers:&unk_1F50237E8];
  [v5 reconfigureItemsWithIdentifiers:&unk_1F5023800];
  credentialTypes = [(WBSSavedAccount *)self->_savedAccount credentialTypes];
  if (credentialTypes > 3)
  {
    if ((credentialTypes - 8) >= 2)
    {
      if (credentialTypes == 4)
      {
        goto LABEL_56;
      }

      goto LABEL_18;
    }

    goto LABEL_12;
  }

  switch(credentialTypes)
  {
    case 1:
LABEL_12:
      v8 = &unk_1F5023818;
LABEL_16:
      v9 = &unk_1F5022CA8;
LABEL_17:
      [v5 appendItemsWithIdentifiers:v8 intoSectionWithIdentifier:v9];
      break;
    case 2:
      v8 = &unk_1F5023830;
      goto LABEL_16;
    case 3:
      if (self->_isForFillingIndividualAccountFields)
      {
        v7 = &unk_1F5023848;
      }

      else
      {
        v7 = &unk_1F5023860;
      }

      [v5 appendSectionsWithIdentifiers:v7];
      [v5 appendItemsWithIdentifiers:&unk_1F5023878 intoSectionWithIdentifier:&unk_1F5022C90];
      if ([(SFAccountDetailViewController *)self _shouldAddDeletePasskeyItem])
      {
        [v5 appendItemsWithIdentifiers:&unk_1F5023890 intoSectionWithIdentifier:&unk_1F5022C90];
      }

      v8 = &unk_1F50238A8;
      v9 = &unk_1F5022C60;
      goto LABEL_17;
  }

LABEL_18:
  password = [(WBSSavedAccount *)self->_savedAccount password];

  if (password)
  {
    [v5 reconfigureItemsWithIdentifiers:&unk_1F50238C0];
  }

  if ([(SFAccountDetailViewController *)self _completedUpgrade])
  {
    [v5 appendSectionsWithIdentifiers:&unk_1F50238D8];
    [v5 appendItemsWithIdentifiers:&unk_1F50238F0 intoSectionWithIdentifier:&unk_1F5022CF0];
    [v5 reconfigureItemsWithIdentifiers:&unk_1F5023908];
    if (self->_completedUpgradeToStrongPassword)
    {
      [(SFAccountDetailViewController *)self _addGroupCellsToSnapshot:v5];
      [v5 appendSectionsWithIdentifiers:&unk_1F5023920];
      v37 = 0u;
      v38 = 0u;
      v35 = 0u;
      v36 = 0u;
      userVisibleSites = [(WBSSavedAccount *)self->_savedAccount userVisibleSites];
      v12 = [userVisibleSites countByEnumeratingWithState:&v35 objects:v43 count:16];
      if (v12)
      {
        v13 = v12;
        v14 = *v36;
        do
        {
          for (i = 0; i != v13; ++i)
          {
            if (*v36 != v14)
            {
              objc_enumerationMutation(userVisibleSites);
            }

            v42 = *(*(&v35 + 1) + 8 * i);
            v16 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v42 count:1];
            [v5 appendItemsWithIdentifiers:v16 intoSectionWithIdentifier:&unk_1F5022C48];
          }

          v13 = [userVisibleSites countByEnumeratingWithState:&v35 objects:v43 count:16];
        }

        while (v13);
      }

      [v5 appendSectionsWithIdentifiers:&unk_1F5023938];
      [v5 appendItemsWithIdentifiers:&unk_1F5023950 intoSectionWithIdentifier:&unk_1F5022C78];
      animatedCopy = animatedCopy;
    }

    [(SFTableViewDiffableDataSource *)self->_tableViewDiffableDataSource applySnapshot:v5 animatingDifferences:animatedCopy];
  }

  else
  {
    [(SFAccountDetailViewController *)self _addGroupCellsToSnapshot:v5];
    if ([(SFAccountDetailViewController *)self _shouldShowSecurityRecommendationSection])
    {
      [(SFAccountDetailViewController *)self _addAccountUpgradeItemsForSectionType:5 toSnapshot:v5];
      self->_accountUpgradeOriginType = 1;
    }

    if ([(NSArray *)self->_TOTPGenerators count])
    {
      [(SFAccountDetailViewController *)self _addTOTPGeneratorsToSnapshot:v5];
    }

    if (-[SFAccountDetailViewController _allowEditing](self, "_allowEditing") || (-[WBSSavedAccount notesEntry](self->_savedAccount, "notesEntry"), v17 = objc_claimAutoreleasedReturnValue(), v18 = [v17 length], v17, v18))
    {
      [(SFAccountDetailViewController *)self _addNotesSectionToSnapshot:v5];
    }

    [(SFAccountDetailViewController *)self _updateAddButtonsInAccountOptionsSectionForSnapshot:v5];
    if (![(SFAccountDetailViewController *)self _shouldShowSecurityRecommendationSection]&& ([(WBSSavedAccount *)self->_savedAccount credentialTypes]& 1) != 0)
    {
      v19 = [(WBSSavedAccount *)self->_savedAccount credentialTypes]- 1;
      if (v19 <= 8 && ((0x185u >> v19) & 1) != 0)
      {
        [(SFAccountDetailViewController *)self _addAccountUpgradeItemsForSectionType:qword_1D47DCFF8[v19] toSnapshot:v5];
      }

      self->_accountUpgradeOriginType = 2;
    }

    if ([(WBSSavedAccount *)self->_savedAccount hasValidWebsite])
    {
      v29 = animatedCopy;
      [v5 appendSectionsWithIdentifiers:&unk_1F5023968];
      v33 = 0u;
      v34 = 0u;
      v31 = 0u;
      v32 = 0u;
      userVisibleSites2 = [(WBSSavedAccount *)self->_savedAccount userVisibleSites];
      v21 = [userVisibleSites2 countByEnumeratingWithState:&v31 objects:v41 count:16];
      if (v21)
      {
        v22 = v21;
        v23 = *v32;
        do
        {
          for (j = 0; j != v22; ++j)
          {
            if (*v32 != v23)
            {
              objc_enumerationMutation(userVisibleSites2);
            }

            v40 = *(*(&v31 + 1) + 8 * j);
            v25 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v40 count:1];
            [v5 appendItemsWithIdentifiers:v25 intoSectionWithIdentifier:&unk_1F5022C48];
          }

          v22 = [userVisibleSites2 countByEnumeratingWithState:&v31 objects:v41 count:16];
        }

        while (v22);
      }

      animatedCopy = v29;
    }

    if ([(WBSSavedAccount *)self->_savedAccount credentialTypes]== 2)
    {
      passkeyRelyingPartyID = [(WBSSavedAccount *)self->_savedAccount passkeyRelyingPartyID];
      v39 = passkeyRelyingPartyID;
      v27 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v39 count:1];
      [v5 appendItemsWithIdentifiers:v27 intoSectionWithIdentifier:&unk_1F5022C48];
    }

    [(SFAccountDetailViewController *)self _configureDeleteSectionInSnapshot:v5];
    tableViewDiffableDataSource = self->_tableViewDiffableDataSource;
    v30[0] = MEMORY[0x1E69E9820];
    v30[1] = 3221225472;
    v30[2] = __67__SFAccountDetailViewController__reloadDiffableDataSourceAnimated___block_invoke;
    v30[3] = &unk_1E848F810;
    v30[4] = self;
    [(SFTableViewDiffableDataSource *)tableViewDiffableDataSource applySnapshot:v5 animatingDifferences:animatedCopy completion:v30];
  }

LABEL_56:
}

- (void)_addGroupCellsToSnapshot:(id)snapshot
{
  snapshotCopy = snapshot;
  mEMORY[0x1E69C88E8] = [MEMORY[0x1E69C88E8] sharedProvider];
  cachedGroups = [mEMORY[0x1E69C88E8] cachedGroups];
  v6 = [cachedGroups count];

  if (v6)
  {
    [snapshotCopy appendItemsWithIdentifiers:&unk_1F5023980 intoSectionWithIdentifier:&unk_1F5022CA8];
    [snapshotCopy reconfigureItemsWithIdentifiers:&unk_1F5023998];
  }

  if ([(WBSSavedAccount *)self->_savedAccount isSavedInSharedGroup])
  {
    [snapshotCopy appendItemsWithIdentifiers:&unk_1F50239B0 intoSectionWithIdentifier:&unk_1F5022CA8];
  }
}

- (void)_configureDeleteSectionInSnapshot:(id)snapshot
{
  v12[1] = *MEMORY[0x1E69E9840];
  snapshotCopy = snapshot;
  if ([(WBSSavedAccount *)self->_savedAccount canUserEditSavedAccount]&& !self->_isForFillingIndividualAccountFields)
  {
    isRecentlyDeleted = [(WBSSavedAccount *)self->_savedAccount isRecentlyDeleted];
    savedAccount = self->_savedAccount;
    if (isRecentlyDeleted)
    {
      if ([(WBSSavedAccount *)savedAccount canUserEditSavedAccount])
      {
        [snapshotCopy appendSectionsWithIdentifiers:&unk_1F50239C8];
        [snapshotCopy appendItemsWithIdentifiers:&unk_1F50239E0 intoSectionWithIdentifier:&unk_1F5022C78];
        if ([(WBSSavedAccount *)self->_savedAccount isSavedInSharedGroup]&& [(WBSSavedAccount *)self->_savedAccount isCurrentUserOriginalContributor])
        {
          [snapshotCopy appendItemsWithIdentifiers:&unk_1F50239F8 intoSectionWithIdentifier:&unk_1F5022C78];
        }

        v7 = &unk_1F5023A10;
        goto LABEL_12;
      }
    }

    else
    {
      credentialTypes = [(WBSSavedAccount *)savedAccount credentialTypes];
      if (credentialTypes <= 9)
      {
        if (((1 << credentialTypes) & 0x306) != 0)
        {
          [snapshotCopy appendSectionsWithIdentifiers:&unk_1F5023A28];
          v7 = &unk_1F5023A40;
LABEL_12:
          [snapshotCopy appendItemsWithIdentifiers:v7 intoSectionWithIdentifier:&unk_1F5022C78];
          goto LABEL_17;
        }

        if (((1 << credentialTypes) & 0x18) != 0)
        {
          v9 = [(NSArray *)self->_TOTPGenerators count];
          v10 = &unk_1F5022D68;
          if (!v9)
          {
            v10 = &unk_1F5022D80;
          }

          v12[0] = v10;
          v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v12 count:1];
          [snapshotCopy appendItemsWithIdentifiers:v11 intoSectionWithIdentifier:&unk_1F5022C60];
        }
      }
    }
  }

LABEL_17:
}

- (id)_groupSectionValueStyleTableViewCellWithText:(id)text secondaryText:(id)secondaryText
{
  v6 = MEMORY[0x1E69DCC28];
  secondaryTextCopy = secondaryText;
  textCopy = text;
  valueCellConfiguration = [v6 valueCellConfiguration];
  [valueCellConfiguration setText:textCopy];

  [valueCellConfiguration setSecondaryText:secondaryTextCopy];
  tableView = [(SFAccountDetailViewController *)self tableView];
  v11 = [tableView dequeueReusableCellWithIdentifier:@"sharedGroupValueCell"];
  v12 = v11;
  if (v11)
  {
    v13 = v11;
  }

  else
  {
    v13 = [objc_alloc(MEMORY[0x1E69DD028]) initWithStyle:1 reuseIdentifier:@"sharedGroupValueCell"];
  }

  v14 = v13;

  [v14 setContentConfiguration:valueCellConfiguration];

  return v14;
}

- (BOOL)_shouldShowSecurityRecommendationSection
{
  passwordWarning = self->_passwordWarning;
  if (passwordWarning)
  {
    LOBYTE(passwordWarning) = ([(WBSPasswordWarning *)passwordWarning hasBeenHidden]& 1) == 0 && [(WBSPasswordWarning *)self->_passwordWarning severity]!= 0;
  }

  return passwordWarning;
}

- (void)_addAccountUpgradeItemsForSectionType:(int64_t)type toSnapshot:(id)snapshot
{
  v12[1] = *MEMORY[0x1E69E9840];
  snapshotCopy = snapshot;
  if ([(SFAccountDetailViewController *)self _allowAuditing]&& ([(WBSSavedAccount *)self->_savedAccount isRecentlyDeleted]& 1) == 0)
  {
    v7 = [MEMORY[0x1E696AD98] numberWithInteger:type];
    sectionIdentifiers = [snapshotCopy sectionIdentifiers];
    v9 = [sectionIdentifiers indexOfObject:v7];

    if (v9 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v12[0] = v7;
      v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v12 count:1];
      [snapshotCopy appendSectionsWithIdentifiers:v10];
    }

    if (type == 5)
    {
      [snapshotCopy appendItemsWithIdentifiers:&unk_1F5023A58 intoSectionWithIdentifier:v7];
      [snapshotCopy reconfigureItemsWithIdentifiers:&unk_1F5023A70];
    }

    if (self->_eligibleToUpgradeToSignInWithApple)
    {
      [snapshotCopy appendItemsWithIdentifiers:&unk_1F5023A88 intoSectionWithIdentifier:v7];
    }

    if (self->_eligibleToChangeToStrongPassword)
    {
      v11 = &unk_1F5023AA0;
    }

    else
    {
      v11 = &unk_1F5023AB8;
    }

    [snapshotCopy appendItemsWithIdentifiers:v11 intoSectionWithIdentifier:v7];
  }
}

- (void)_updateAddButtonsInAccountOptionsSectionForSnapshot:(id)snapshot
{
  v18[1] = *MEMORY[0x1E69E9840];
  snapshotCopy = snapshot;
  v5 = [(SFAccountDetailViewController *)self _allowEditing]&& ![(NSArray *)self->_TOTPGenerators count]&& [(WBSSavedAccount *)self->_savedAccount credentialTypes]!= 2;
  v6 = [snapshotCopy indexOfItemIdentifier:&unk_1F5022DE0];
  v7 = v6 == 0x7FFFFFFFFFFFFFFFLL || v5;
  if (((v5 ^ (v6 == 0x7FFFFFFFFFFFFFFFLL)) & 1) == 0)
  {
    v8 = !v5;
    if (v6 != 0x7FFFFFFFFFFFFFFFLL)
    {
      v8 = 1;
    }

    if (v8)
    {
      if ((v7 & 1) == 0)
      {
        [snapshotCopy deleteItemsWithIdentifiers:&unk_1F5023B18];
      }

      goto LABEL_30;
    }

    if ([snapshotCopy indexOfSectionIdentifier:&unk_1F5022DF8] != 0x7FFFFFFFFFFFFFFFLL)
    {
LABEL_22:
      credentialTypes = [(WBSSavedAccount *)self->_savedAccount credentialTypes];
      if ((credentialTypes - 8) >= 2)
      {
        if (credentialTypes == 3)
        {
          [snapshotCopy insertItemsWithIdentifiers:&unk_1F5023B00 afterItemWithIdentifier:&unk_1F5022CC0];
        }

        else if (credentialTypes == 1)
        {
          goto LABEL_25;
        }

LABEL_30:
        if ([snapshotCopy indexOfSectionIdentifier:&unk_1F5022DF8] != 0x7FFFFFFFFFFFFFFFLL && !objc_msgSend(snapshotCopy, "numberOfItemsInSection:", &unk_1F5022DF8))
        {
          v15 = &unk_1F5022DF8;
          v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v15 count:1];
          [snapshotCopy deleteSectionsWithIdentifiers:v14];
        }

        goto LABEL_33;
      }

LABEL_25:
      v12 = [snapshotCopy itemIdentifiersInSectionWithIdentifier:&unk_1F5022DF8];
      if ([v12 count])
      {
        firstObject = [v12 firstObject];
        [snapshotCopy insertItemsWithIdentifiers:&unk_1F5023AD0 beforeItemWithIdentifier:firstObject];
      }

      else
      {
        [snapshotCopy appendItemsWithIdentifiers:&unk_1F5023AE8 intoSectionWithIdentifier:&unk_1F5022DF8];
      }

      goto LABEL_30;
    }

    if ([snapshotCopy indexOfSectionIdentifier:&unk_1F5022C48] == 0x7FFFFFFFFFFFFFFFLL)
    {
      if ([snapshotCopy indexOfSectionIdentifier:&unk_1F5022C78] == 0x7FFFFFFFFFFFFFFFLL)
      {
        v16 = &unk_1F5022DF8;
        v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v16 count:1];
        [snapshotCopy appendSectionsWithIdentifiers:v9];
LABEL_21:

        goto LABEL_22;
      }

      v17 = &unk_1F5022DF8;
      v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v17 count:1];
      v10 = &unk_1F5022C78;
    }

    else
    {
      v18[0] = &unk_1F5022DF8;
      v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v18 count:1];
      v10 = &unk_1F5022C48;
    }

    [snapshotCopy insertSectionsWithIdentifiers:v9 beforeSectionWithIdentifier:v10];
    goto LABEL_21;
  }

LABEL_33:
}

- (void)_addTOTPGeneratorsToSnapshot:(id)snapshot
{
  snapshotCopy = snapshot;
  credentialTypes = [(WBSSavedAccount *)self->_savedAccount credentialTypes];
  if (credentialTypes == 3)
  {
    [snapshotCopy insertItemsWithIdentifiers:self->_TOTPGenerators afterItemWithIdentifier:&unk_1F5022CC0];
    goto LABEL_9;
  }

  if (credentialTypes == 2)
  {
    [snapshotCopy insertSectionsWithIdentifiers:&unk_1F5023B48 beforeSectionWithIdentifier:&unk_1F5022CA8];
    goto LABEL_7;
  }

  v5 = credentialTypes == 1;
  v6 = snapshotCopy;
  if (v5)
  {
    [snapshotCopy insertSectionsWithIdentifiers:&unk_1F5023B30 afterSectionWithIdentifier:&unk_1F5022CA8];
LABEL_7:
    [snapshotCopy appendItemsWithIdentifiers:self->_TOTPGenerators intoSectionWithIdentifier:&unk_1F5022C30];
LABEL_9:
    v6 = snapshotCopy;
  }
}

- (void)_configureSecurityRecommendationInfoCell
{
  if (self->_completedUpgradeToSignInWithApple)
  {
    [(SFSecurityRecommendationInfoCell *)self->_securityRecommendationInfoCell showCheckmarkForDetailView];
    v3 = _WBSLocalizedString();
    [(SFSecurityRecommendationInfoCell *)self->_securityRecommendationInfoCell setTitle:v3];

    _subtitleStringForSignInWithAppleUpgrade = [(SFAccountDetailViewController *)self _subtitleStringForSignInWithAppleUpgrade];
LABEL_5:
    v6 = _subtitleStringForSignInWithAppleUpgrade;
    [(SFSecurityRecommendationInfoCell *)self->_securityRecommendationInfoCell setSubtitle:_subtitleStringForSignInWithAppleUpgrade];

    subtitleLabel = [(SFSecurityRecommendationInfoCell *)self->_securityRecommendationInfoCell subtitleLabel];
    layer = [subtitleLabel layer];
    [layer setDisableUpdateMask:0];

    securityRecommendationInfoCell = self->_securityRecommendationInfoCell;

    [(SFSecurityRecommendationInfoCell *)securityRecommendationInfoCell setShowsHideButton:0];
    return;
  }

  if (self->_completedUpgradeToStrongPassword)
  {
    [(SFSecurityRecommendationInfoCell *)self->_securityRecommendationInfoCell showCheckmarkForDetailView];
    v5 = _WBSLocalizedString();
    [(SFSecurityRecommendationInfoCell *)self->_securityRecommendationInfoCell setTitle:v5];

    _subtitleStringForSignInWithAppleUpgrade = [(SFAccountDetailViewController *)self _subtitleStringForStrongPasswordUpgrade];
    goto LABEL_5;
  }

  if ([(WBSPasswordWarning *)self->_passwordWarning issueTypes]== 1)
  {
    v10 = @"secondaryWarningImageColor";
  }

  else
  {
    v10 = @"warningImageColor";
  }

  v18 = [MEMORY[0x1E69DC888] sf_colorNamed:v10];
  v11 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"exclamationmark.triangle.fill"];
  v12 = [v11 imageWithTintColor:v18 renderingMode:1];
  [(SFSecurityRecommendationInfoCell *)self->_securityRecommendationInfoCell setIcon:v12];

  localizedShortDescriptivePhrase = [(WBSPasswordWarning *)self->_passwordWarning localizedShortDescriptivePhrase];
  [(SFSecurityRecommendationInfoCell *)self->_securityRecommendationInfoCell setTitle:localizedShortDescriptivePhrase];

  _securityRecommendationSubtitleString = [(SFAccountDetailViewController *)self _securityRecommendationSubtitleString];
  [(SFSecurityRecommendationInfoCell *)self->_securityRecommendationInfoCell setSubtitle:_securityRecommendationSubtitleString];

  [(SFSecurityRecommendationInfoCell *)self->_securityRecommendationInfoCell setShowsHideButton:[(WBSPasswordWarning *)self->_passwordWarning hasBeenHidden]^ 1];
  pm_defaults = [MEMORY[0x1E695E000] pm_defaults];
  LOBYTE(v12) = [pm_defaults pm_passwordManagerIsInDemoMode];

  if ((v12 & 1) == 0)
  {
    subtitleLabel2 = [(SFSecurityRecommendationInfoCell *)self->_securityRecommendationInfoCell subtitleLabel];
    layer2 = [subtitleLabel2 layer];
    [layer2 setDisableUpdateMask:18];
  }
}

- (id)_securityRecommendationSubtitleString
{
  if (([(WBSPasswordWarning *)self->_passwordWarning issueTypes]& 8) != 0)
  {
    v4 = _WBSLocalizedString();
    v5 = [(WBSPasswordWarning *)self->_passwordWarning localizedLongDescriptionForClient:1];
    v6 = [MEMORY[0x1E696AEC0] stringWithFormat:@" %@", v4];
    v3 = [v5 stringByAppendingString:v6];
  }

  else
  {
    v3 = [(WBSPasswordWarning *)self->_passwordWarning localizedLongDescriptionForClient:1];
  }

  return v3;
}

- (id)_subtitleStringForSignInWithAppleUpgrade
{
  accountUpgradeOriginType = self->_accountUpgradeOriginType;
  if (accountUpgradeOriginType == 2 || accountUpgradeOriginType == 1)
  {
    [MEMORY[0x1E69C8880] isAppleAccountBrandingEnabled];
    v3 = _WBSLocalizedString();
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (id)_subtitleStringForStrongPasswordUpgrade
{
  accountUpgradeOriginType = self->_accountUpgradeOriginType;
  if (accountUpgradeOriginType == 2 || accountUpgradeOriginType == 1)
  {
    v4 = _WBSLocalizedString();
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)_configureUserCell:(id)cell
{
  cellCopy = cell;
  v4 = _WBSLocalizedString();
  userForEditing = self->_userForEditing;
  user = userForEditing;
  if (!userForEditing)
  {
    user = [(WBSSavedAccount *)self->_savedAccount user];
  }

  v7 = _WBSLocalizedString();
  [(SFAccountDetailViewController *)self _configureCell:cellCopy withText:v4 detailText:user detailPlaceholderText:v7 secureEntry:0];

  if (!userForEditing)
  {
  }

  [cellCopy setAccessibilityIdentifier:@"PasswordDetailViewUsernameCell"];
  textLabel = [cellCopy textLabel];
  [textLabel setAccessibilityIdentifier:@"PasswordDetailViewUsernameLabel"];

  if (self->_isForFillingIndividualAccountFields)
  {
    v9 = +[_SFAccountManagerAppearanceValues buttonCellTextColor];
    [cellCopy setOverrideEditableTextFieldTextColor:v9];
  }

  else
  {
    [cellCopy setOverrideEditableTextFieldTextColor:0];
  }
}

- (id)_securePasswordPlaceholderText:(id)text
{
  safari_numberOfComposedCharacters = [text safari_numberOfComposedCharacters];

  return [&stru_1F4FE9E38 stringByPaddingToLength:safari_numberOfComposedCharacters withString:@"•" startingAtIndex:0];
}

- (void)_configurePasswordCell:(id)cell
{
  cellCopy = cell;
  passwordForEditing = self->_passwordForEditing;
  if (passwordForEditing)
  {
    password = passwordForEditing;
  }

  else
  {
    password = [(WBSSavedAccount *)self->_savedAccount password];
  }

  v6 = password;
  if (self->_showPasswordAsBulletsWhenNotEditing && ![(SFAccountDetailViewController *)self isEditing])
  {
    v7 = [(SFAccountDetailViewController *)self _securePasswordPlaceholderText:v6];
  }

  else
  {
    v7 = v6;
  }

  v8 = v7;
  if (self->_completedUpgradeToSignInWithApple)
  {

    v8 = @"—";
  }

  v9 = _WBSLocalizedString();
  v10 = _WBSLocalizedString();
  pm_defaults = [MEMORY[0x1E695E000] pm_defaults];
  -[SFAccountDetailViewController _configureCell:withText:detailText:detailPlaceholderText:secureEntry:](self, "_configureCell:withText:detailText:detailPlaceholderText:secureEntry:", cellCopy, v9, v8, v10, [pm_defaults pm_passwordManagerIsInDemoMode] ^ 1);

  [cellCopy setAccessibilityIdentifier:@"PasswordDetailViewPasswordCell"];
  textLabel = [cellCopy textLabel];
  [textLabel setAccessibilityIdentifier:@"PasswordDetailViewUsernameLabel"];

  if (self->_completedUpgradeToSignInWithApple)
  {
    isEditing = 0;
  }

  else
  {
    isEditing = [(SFAccountDetailViewController *)self isEditing];
  }

  [cellCopy setEnabled:isEditing];
  [(SFAccountDetailViewController *)self _setHighLyLegibleFontForDetailTextInCell:cellCopy];
  if (self->_isForFillingIndividualAccountFields)
  {
    v14 = +[_SFAccountManagerAppearanceValues buttonCellTextColor];
    [cellCopy setOverrideEditableTextFieldTextColor:v14];
  }

  else
  {
    [cellCopy setOverrideEditableTextFieldTextColor:0];
  }
}

- (void)_setHighLyLegibleFontForDetailTextInCell:(id)cell
{
  cellCopy = cell;
  if ([(SFAccountDetailViewController *)self _allowEditing])
  {
    detailTextLabel = [(SFAccountDetailViewController *)self _editableCellWithCell:cellCopy];

    editableTextField = [detailTextLabel editableTextField];
    v6 = MEMORY[0x1E69DB878];
    font = [editableTextField font];
    v8 = [v6 _sf_highLegibilityAlternateFont:font];

    if (v8)
    {
      [editableTextField setFont:v8];
    }
  }

  else
  {
    detailTextLabel = [cellCopy detailTextLabel];

    v9 = MEMORY[0x1E69DB878];
    font2 = [detailTextLabel font];
    editableTextField = [v9 _sf_highLegibilityAlternateFont:font2];

    if (editableTextField)
    {
      [detailTextLabel setFont:editableTextField];
    }
  }
}

- (void)_configureCell:(id)cell withText:(id)text detailText:(id)detailText detailPlaceholderText:(id)placeholderText secureEntry:(BOOL)entry
{
  entryCopy = entry;
  placeholderTextCopy = placeholderText;
  detailTextCopy = detailText;
  textCopy = text;
  cellCopy = cell;
  textLabel = [cellCopy textLabel];
  [textLabel setText:textCopy];

  editableTextField = [cellCopy editableTextField];

  [editableTextField setText:detailTextCopy];
  [editableTextField setSecureTextEntry:entryCopy];
  [editableTextField setDisplaySecureTextUsingPlainText:entryCopy];
  if ([(SFAccountDetailViewController *)self _allowEditing])
  {
    [editableTextField addTarget:self action:sel__textFieldChanged_ forControlEvents:0x20000];
    [editableTextField setPlaceholder:placeholderTextCopy];
  }
}

- (id)_savedAccountWebsiteCellForTableView:(id)view atIndexPath:(id)path
{
  viewCopy = view;
  pathCopy = path;
  credentialTypes = [(WBSSavedAccount *)self->_savedAccount credentialTypes];
  savedAccount = self->_savedAccount;
  if (credentialTypes == 2)
  {
    passkeyRelyingPartyID = [(WBSSavedAccount *)savedAccount passkeyRelyingPartyID];
  }

  else
  {
    userVisibleSites = [(WBSSavedAccount *)savedAccount userVisibleSites];
    passkeyRelyingPartyID = [userVisibleSites objectAtIndexedSubscript:{objc_msgSend(pathCopy, "row")}];
  }

  v12 = [viewCopy dequeueReusableCellWithIdentifier:@"site"];
  if (!v12)
  {
    v12 = [objc_alloc(MEMORY[0x1E69DD028]) initWithStyle:0 reuseIdentifier:@"site"];
  }

  textLabel = [v12 textLabel];
  [textLabel setText:passkeyRelyingPartyID];

  if (([(SFAccountDetailViewController *)self _allowEditing]|| [(SFAccountDetailViewController *)self _allowAuditing]) && passkeyRelyingPartyID)
  {
    v14 = MEMORY[0x1E695DFF8];
    v15 = [@"https://" stringByAppendingString:passkeyRelyingPartyID];
    v16 = [v14 URLWithString:v15];

    if (v16)
    {
      v17 = objc_alloc_init(_SFWebsiteButton);
      objc_initWeak(&location, self);
      v19[0] = MEMORY[0x1E69E9820];
      v19[1] = 3221225472;
      v19[2] = __82__SFAccountDetailViewController__savedAccountWebsiteCellForTableView_atIndexPath___block_invoke;
      v19[3] = &unk_1E848FD60;
      objc_copyWeak(&v21, &location);
      v20 = v16;
      [(_SFWebsiteButton *)v17 setActivationHandler:v19];
      [v12 setAccessoryView:v17];

      objc_destroyWeak(&v21);
      objc_destroyWeak(&location);
    }
  }

  return v12;
}

void __82__SFAccountDetailViewController__savedAccountWebsiteCellForTableView_atIndexPath___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    v7 = WeakRetained;
    v4 = [WeakRetained safari_checkForAbilityToOpenWebContentAndNotifyIfNecessary:*(a1 + 32)];
    v3 = v7;
    if (v4)
    {
      v5 = objc_alloc_init(SFSafariViewControllerConfiguration);
      [(SFSafariViewControllerConfiguration *)v5 _setPerformingAccountSecurityUpgrade:1];
      v6 = [[SFSafariViewController alloc] initWithURL:*(a1 + 32) configuration:v5];
      [(SFSafariViewController *)v6 setModalPresentationStyle:1];
      [(SFSafariViewController *)v6 setModalInPresentation:1];
      [v7 presentViewController:v6 animated:1 completion:0];

      v3 = v7;
    }
  }
}

- (id)_deleteCellForTableView:(id)view
{
  v4 = [view dequeueReusableCellWithIdentifier:@"deleteAccount"];
  if (!v4)
  {
    v4 = [objc_alloc(MEMORY[0x1E69DD028]) initWithStyle:0 reuseIdentifier:@"deleteAccount"];
  }

  credentialTypes = [(WBSSavedAccount *)self->_savedAccount credentialTypes];
  if (credentialTypes > 7)
  {
    if ((credentialTypes - 8) > 1)
    {
      goto LABEL_10;
    }
  }

  else if (credentialTypes != 1 && credentialTypes != 2 && credentialTypes != 3)
  {
    goto LABEL_10;
  }

  v6 = _WBSLocalizedString();
  textLabel = [v4 textLabel];
  [textLabel setText:v6];

LABEL_10:
  _canUserDeleteSavedAccount = [(SFAccountDetailViewController *)self _canUserDeleteSavedAccount];
  if (_canUserDeleteSavedAccount)
  {
    v9 = 0;
  }

  else
  {
    v9 = 2;
  }

  textLabel2 = [v4 textLabel];
  [textLabel2 setTintAdjustmentMode:v9];

  textLabel3 = [v4 textLabel];
  [textLabel3 setEnabled:_canUserDeleteSavedAccount];

  systemRedColor = [MEMORY[0x1E69DC888] systemRedColor];
  textLabel4 = [v4 textLabel];
  [textLabel4 setTextColor:systemRedColor];

  _textAlignmentOfCellsInDeleteAccountSection = [(SFAccountDetailViewController *)self _textAlignmentOfCellsInDeleteAccountSection];
  textLabel5 = [v4 textLabel];
  [textLabel5 setTextAlignment:_textAlignmentOfCellsInDeleteAccountSection];

  textLabel6 = [v4 textLabel];
  [textLabel6 setNumberOfLines:0];

  return v4;
}

- (BOOL)_canUserDeleteSavedAccount
{
  canUserEditSavedAccount = [(WBSSavedAccount *)self->_savedAccount canUserEditSavedAccount];
  if (canUserEditSavedAccount)
  {
    if ([(WBSSavedAccount *)self->_savedAccount isRecentlyDeleted])
    {
      savedAccount = self->_savedAccount;

      LOBYTE(canUserEditSavedAccount) = [(WBSSavedAccount *)savedAccount isCurrentUserOriginalContributor];
    }

    else
    {
      LOBYTE(canUserEditSavedAccount) = 1;
    }
  }

  return canUserEditSavedAccount;
}

- (void)_configureHeaderViewCell:(id)cell
{
  cellCopy = cell;
  [cellCopy setDelegate:self];
  userVisibleDomain = [(WBSSavedAccount *)self->_savedAccount userVisibleDomain];
  customTitle = [(WBSSavedAccount *)self->_savedAccount customTitle];
  [cellCopy setHeaderTitleForHighLevelDomain:userVisibleDomain customTitle:customTitle];

  titleForEditing = self->_titleForEditing;
  if (titleForEditing)
  {
    titleTextField = [cellCopy titleTextField];
    [titleTextField setText:titleForEditing];
  }

  [(SFAccountDetailViewController *)self _updateIconForCell:cellCopy];
  _lastModifiedDateString = [(SFAccountDetailViewController *)self _lastModifiedDateString];
  [cellCopy setLastModifiedDateString:_lastModifiedDateString];

  customTitle2 = [(WBSSavedAccount *)self->_savedAccount customTitle];
  v10 = [customTitle2 copy];
  v11 = self->_titleForEditing;
  self->_titleForEditing = v10;

  [(SFAccountDetailViewController *)self _updateHeaderViewCell];
  [cellCopy setSavedAccount:self->_savedAccount];
}

- (void)_updateIconForCell:(id)cell
{
  cellCopy = cell;
  highLevelDomain = [(WBSSavedAccount *)self->_savedAccount highLevelDomain];
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (objc_opt_respondsToSelector())
  {
    v7 = [WeakRetained iconControllerForAccountDetailViewController:self];
    v8 = [v7 backgroundColorForDomain:highLevelDomain];
    [cellCopy setMonogramBackgroundColor:v8];

    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __52__SFAccountDetailViewController__updateIconForCell___block_invoke;
    v10[3] = &unk_1E848F598;
    v11 = cellCopy;
    v12 = v7;
    v13 = highLevelDomain;
    v9 = v7;
    [v9 iconForDomain:v13 responseHandler:v10];
  }

  else
  {
    v9 = +[_SFAccountManagerAppearanceValues defaultMonogramBackgroundColor];
    [cellCopy setMonogramBackgroundColor:v9];
  }
}

void __52__SFAccountDetailViewController__updateIconForCell___block_invoke(id *a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (v3)
  {
    [v3 size];
    if (v6 != 56.0 || v5 != 56.0)
    {
      v8 = [MEMORY[0x1E69C97E0] resizedImage:v4 withSize:?];

      v4 = v8;
    }
  }

  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __52__SFAccountDetailViewController__updateIconForCell___block_invoke_2;
  v10[3] = &unk_1E848F570;
  v11 = v4;
  v12 = a1[4];
  v13 = a1[5];
  v14 = a1[6];
  v9 = v4;
  dispatch_async(MEMORY[0x1E69E96A0], v10);
}

void __52__SFAccountDetailViewController__updateIconForCell___block_invoke_2(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (*(a1 + 32))
  {
    v2 = *(a1 + 40);

    [v2 setIcon:?];
  }

  else
  {
    v3 = [*(a1 + 48) backgroundColorForDomain:*(a1 + 56)];
    [v1 setMonogramBackgroundColor:v3];
  }
}

- (id)_deletePasswordCellForTableView:(id)view shouldRemoveTOTPGenerator:(BOOL)generator
{
  generatorCopy = generator;
  v5 = [view dequeueReusableCellWithIdentifier:@"removePassword"];
  if (v5)
  {
    if (generatorCopy)
    {
LABEL_3:
      v6 = _WBSLocalizedString();
      textLabel = [v5 textLabel];
      [textLabel setText:v6];
      goto LABEL_6;
    }
  }

  else
  {
    v5 = [objc_alloc(MEMORY[0x1E69DD028]) initWithStyle:0 reuseIdentifier:@"removePassword"];
    if (generatorCopy)
    {
      goto LABEL_3;
    }
  }

  v6 = _WBSLocalizedString();
  textLabel = [v5 textLabel];
  [textLabel setText:v6];
  textLabel2 = [v5 textLabel];
  [textLabel2 setText:v6];

LABEL_6:
  systemRedColor = [MEMORY[0x1E69DC888] systemRedColor];
  textLabel3 = [v5 textLabel];
  [textLabel3 setTextColor:systemRedColor];

  textLabel4 = [v5 textLabel];
  [textLabel4 setNumberOfLines:0];

  return v5;
}

- (id)_deletePasskeyCellForTableView:(id)view
{
  v3 = [view dequeueReusableCellWithIdentifier:@"removePasskey"];
  if (!v3)
  {
    v3 = [objc_alloc(MEMORY[0x1E69DD028]) initWithStyle:0 reuseIdentifier:@"removePasskey"];
  }

  v4 = _WBSLocalizedString();
  textLabel = [v3 textLabel];
  [textLabel setText:v4];
  textLabel2 = [v3 textLabel];
  [textLabel2 setText:v4];

  systemRedColor = [MEMORY[0x1E69DC888] systemRedColor];
  textLabel3 = [v3 textLabel];
  [textLabel3 setTextColor:systemRedColor];

  textLabel4 = [v3 textLabel];
  [textLabel4 setNumberOfLines:0];

  return v3;
}

- (id)_groupPickerTableViewCell
{
  [(WBSSavedAccount *)self->_savedAccount isRecentlyDeleted];
  v3 = _WBSLocalizedString();
  if ([(WBSSavedAccount *)self->_savedAccount isSavedInSharedGroup])
  {
    mEMORY[0x1E69C88E8] = [MEMORY[0x1E69C88E8] sharedProvider];
    sharedGroupID = [(WBSSavedAccount *)self->_savedAccount sharedGroupID];
    v6 = [mEMORY[0x1E69C88E8] cachedGroupWithID:sharedGroupID];
    displayName = [v6 displayName];
  }

  else
  {
    displayName = _WBSLocalizedString();
  }

  v8 = [(SFAccountDetailViewController *)self _groupSectionValueStyleTableViewCellWithText:v3 secondaryText:displayName];

  return v8;
}

- (id)_originalContributorCell
{
  valueCellConfiguration = [MEMORY[0x1E69DCC28] valueCellConfiguration];
  v4 = _WBSLocalizedString();
  [valueCellConfiguration setText:v4];

  mEMORY[0x1E695A968] = [MEMORY[0x1E695A968] sharedManager];
  originalContributorParticipantID = [(WBSSavedAccount *)self->_savedAccount originalContributorParticipantID];
  sharedGroupID = [(WBSSavedAccount *)self->_savedAccount sharedGroupID];
  v8 = [mEMORY[0x1E695A968] displayNameForOriginalContributorParticipantID:originalContributorParticipantID inGroupID:sharedGroupID];
  [valueCellConfiguration setSecondaryText:v8];

  tableView = [(SFAccountDetailViewController *)self tableView];
  v10 = [tableView dequeueReusableCellWithIdentifier:@"originalContributor"];
  v11 = v10;
  if (v10)
  {
    v12 = v10;
  }

  else
  {
    v12 = [objc_alloc(MEMORY[0x1E69DD028]) initWithStyle:0 reuseIdentifier:@"originalContributor"];
  }

  v13 = v12;

  [v13 setContentConfiguration:valueCellConfiguration];

  return v13;
}

- (id)_recoverRecentlyDeletedAccountCell
{
  tableView = [(SFAccountDetailViewController *)self tableView];
  v4 = [tableView dequeueReusableCellWithIdentifier:@"RecoverRecentlyDeletedAccount"];
  v5 = v4;
  if (v4)
  {
    v6 = v4;
  }

  else
  {
    v6 = [objc_alloc(MEMORY[0x1E69DD028]) initWithStyle:0 reuseIdentifier:@"RecoverRecentlyDeletedAccount"];
  }

  v7 = v6;

  cellConfiguration = [MEMORY[0x1E69DCC28] cellConfiguration];
  if ([(WBSSavedAccount *)self->_savedAccount isSavedInSharedGroup])
  {
    [(WBSSavedAccount *)self->_savedAccount isCurrentUserOriginalContributor];
  }

  v9 = _WBSLocalizedString();
  [cellConfiguration setText:v9];
  v10 = +[_SFAccountManagerAppearanceValues buttonCellTextColor];
  textProperties = [cellConfiguration textProperties];
  [textProperties setColor:v10];

  _listContentTextAlignmentOfCellsInDeleteAccountSection = [(SFAccountDetailViewController *)self _listContentTextAlignmentOfCellsInDeleteAccountSection];
  textProperties2 = [cellConfiguration textProperties];
  [textProperties2 setAlignment:_listContentTextAlignmentOfCellsInDeleteAccountSection];

  [v7 setContentConfiguration:cellConfiguration];

  return v7;
}

- (id)_moveRecentlyDeletedAccountToMyPasswordsCell
{
  tableView = [(SFAccountDetailViewController *)self tableView];
  v4 = [tableView dequeueReusableCellWithIdentifier:@"MoveRecentlyDeletedAccountToMyPasswords"];
  v5 = v4;
  if (v4)
  {
    v6 = v4;
  }

  else
  {
    v6 = [objc_alloc(MEMORY[0x1E69DD028]) initWithStyle:0 reuseIdentifier:@"MoveRecentlyDeletedAccountToMyPasswords"];
  }

  v7 = v6;

  cellConfiguration = [MEMORY[0x1E69DCC28] cellConfiguration];
  v9 = _WBSLocalizedString();
  [cellConfiguration setText:v9];

  tintColor = [MEMORY[0x1E69DC888] tintColor];
  textProperties = [cellConfiguration textProperties];
  [textProperties setColor:tintColor];

  _listContentTextAlignmentOfCellsInDeleteAccountSection = [(SFAccountDetailViewController *)self _listContentTextAlignmentOfCellsInDeleteAccountSection];
  textProperties2 = [cellConfiguration textProperties];
  [textProperties2 setAlignment:_listContentTextAlignmentOfCellsInDeleteAccountSection];

  [v7 setContentConfiguration:cellConfiguration];

  return v7;
}

- (int64_t)_listContentTextAlignmentOfCellsInDeleteAccountSection
{
  snapshot = [(SFTableViewDiffableDataSource *)self->_tableViewDiffableDataSource snapshot];
  v3 = [snapshot numberOfItemsInSection:&unk_1F5022C78] < 2;

  return v3;
}

- (int64_t)_textAlignmentOfCellsInDeleteAccountSection
{
  snapshot = [(SFTableViewDiffableDataSource *)self->_tableViewDiffableDataSource snapshot];
  if ([snapshot numberOfItemsInSection:&unk_1F5022C78] <= 1)
  {
    v3 = 1;
  }

  else
  {
    v3 = 4;
  }

  return v3;
}

- (id)_cellsThatChangeAppearanceOnEdit
{
  array = [MEMORY[0x1E695DF70] array];
  [array addObjectsFromArray:&unk_1F5023B60];
  [array addObjectsFromArray:&unk_1F5023B78];
  [array addObjectsFromArray:&unk_1F5023B90];

  return array;
}

- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path
{
  viewCopy = view;
  pathCopy = path;
  v8 = [(SFTableViewDiffableDataSource *)self->_tableViewDiffableDataSource itemIdentifierForIndexPath:pathCopy];
  v9 = [(SFAccountDetailViewController *)self _itemTypeForIdentifier:v8];

  if (v9 > 19)
  {
    if (v9 == 20)
    {
      [viewCopy deselectRowAtIndexPath:pathCopy animated:1];
      [(SFAccountDetailViewController *)self _showConfirmationToDeletePasswordAndTOTPGenerator];
      goto LABEL_33;
    }

    if (v9 != 21)
    {
      goto LABEL_12;
    }

    [viewCopy deselectRowAtIndexPath:pathCopy animated:1];
    credentialTypes = [(WBSSavedAccount *)self->_savedAccount credentialTypes];
    if (credentialTypes == 3)
    {
      selfCopy3 = self;
      v11 = 3;
      goto LABEL_18;
    }

    if (credentialTypes != 2)
    {
      if (credentialTypes != 1)
      {
        goto LABEL_33;
      }

      goto LABEL_5;
    }

LABEL_17:
    selfCopy3 = self;
    v11 = 2;
    goto LABEL_18;
  }

  if (v9 == 18)
  {
    [viewCopy deselectRowAtIndexPath:pathCopy animated:1];
    goto LABEL_17;
  }

  if (v9 == 19)
  {
    [viewCopy deselectRowAtIndexPath:pathCopy animated:1];
LABEL_5:
    selfCopy3 = self;
    v11 = 1;
LABEL_18:
    [(SFAccountDetailViewController *)selfCopy3 _showConfirmationToDeleteCredentialTypes:v11];
    goto LABEL_33;
  }

LABEL_12:
  if ([(SFAccountDetailViewController *)self isEditing])
  {
    if (v9 == 9)
    {
      [(SFAccountDetailViewController *)self _replaceAddPasswordButtonWithPasswordCell];
    }

    else if (v9 == 8)
    {
      totpGenerators = [(WBSSavedAccount *)self->_savedAccount totpGenerators];
      firstObject = [totpGenerators firstObject];
      [(SFAccountDetailViewController *)self _deleteTOTPGeneratorWithConfirmation:firstObject];
    }

    goto LABEL_32;
  }

  if (v9 > 12)
  {
    if (v9 > 15)
    {
      if (v9 == 16)
      {
        [viewCopy deselectRowAtIndexPath:pathCopy animated:1];
        [(SFAccountDetailViewController *)self _recoverSavedAccount];
        goto LABEL_33;
      }

      if (v9 == 17)
      {
        [viewCopy deselectRowAtIndexPath:pathCopy animated:1];
        [(SFAccountDetailViewController *)self _presentMoveRecentlyDeletedSavedAccountToMyPasswordsConfirmationAlert];
        goto LABEL_33;
      }

      goto LABEL_43;
    }

    if (v9 == 13)
    {
      [viewCopy deselectRowAtIndexPath:pathCopy animated:1];
      if ([MEMORY[0x1E696AAE8] safari_isSafariViewServiceBundle])
      {
        [(SFAccountDetailViewController *)self _openChangePasswordURLInWebBrowser];
      }

      else
      {
        [(SFAccountDetailViewController *)self _showChangePasswordSafariViewController];
      }
    }

    else
    {
      if (v9 != 14)
      {
        goto LABEL_43;
      }

      [viewCopy deselectRowAtIndexPath:pathCopy animated:1];
      notesEntry = [(WBSSavedAccount *)self->_savedAccount notesEntry];
      v31 = [notesEntry length];

      if (!v31)
      {
        [(SFAccountDetailViewController *)self _setEditing:1 animated:1];
        textView = [(SFAccountNoteTableViewCell *)self->_notesCell textView];
        [textView becomeFirstResponder];
      }
    }
  }

  else
  {
    if (v9 <= 10)
    {
      if (v9 == 4)
      {
LABEL_32:
        [viewCopy deselectRowAtIndexPath:pathCopy animated:1];
        goto LABEL_33;
      }

      if (v9 == 7)
      {
        [viewCopy deselectRowAtIndexPath:pathCopy animated:1];
        self->_didAcceptTOTPQRCode = 0;
        v37 = _WBSLocalizedString();
        v15 = MEMORY[0x1E696AEC0];
        v16 = _WBSLocalizedString();
        highLevelDomain = [(WBSSavedAccount *)self->_savedAccount highLevelDomain];
        v36 = [v15 stringWithFormat:v16, highLevelDomain];

        v18 = [MEMORY[0x1E69DC650] alertControllerWithTitle:v37 message:v36 imageNamed:@"alert-passwords" preferredStyle:0];
        v19 = MEMORY[0x1E69DC648];
        v20 = _WBSLocalizedString();
        v41[0] = MEMORY[0x1E69E9820];
        v41[1] = 3221225472;
        v41[2] = __67__SFAccountDetailViewController_tableView_didSelectRowAtIndexPath___block_invoke;
        v41[3] = &unk_1E848F780;
        v41[4] = self;
        v21 = v18;
        v42 = v21;
        v22 = [v19 actionWithTitle:v20 style:0 handler:v41];
        [v21 addAction:v22];

        v23 = MEMORY[0x1E69DC648];
        v24 = _WBSLocalizedString();
        v40[0] = MEMORY[0x1E69E9820];
        v40[1] = 3221225472;
        v40[2] = __67__SFAccountDetailViewController_tableView_didSelectRowAtIndexPath___block_invoke_2;
        v40[3] = &unk_1E848FBF8;
        v40[4] = self;
        v25 = [v23 actionWithTitle:v24 style:0 handler:v40];
        [v21 addAction:v25];

        v26 = MEMORY[0x1E69DC648];
        v27 = _WBSLocalizedString();
        v38[0] = MEMORY[0x1E69E9820];
        v38[1] = 3221225472;
        v38[2] = __67__SFAccountDetailViewController_tableView_didSelectRowAtIndexPath___block_invoke_3;
        v38[3] = &unk_1E848FBF8;
        v39 = v21;
        v28 = v21;
        v29 = [v26 actionWithTitle:v27 style:1 handler:v38];
        [v28 addAction:v29];

        [viewCopy deselectRowAtIndexPath:pathCopy animated:1];
        [(SFAccountDetailViewController *)self presentViewController:v28 animated:1 completion:0];

        goto LABEL_33;
      }

LABEL_43:
      if (self->_isForFillingIndividualAccountFields)
      {
        switch(v9)
        {
          case 6:
            [(SFAccountDetailViewController *)self _fillVerificationCode];
            goto LABEL_33;
          case 3:
            [(SFAccountDetailViewController *)self _fillPassword];
            goto LABEL_33;
          case 1:
            [(SFAccountDetailViewController *)self _fillUsername];
            goto LABEL_33;
        }
      }

      if ([(SFAccountDetailViewController *)self _shouldShowMenuForItemIdentifier:v9])
      {
        textView2 = [(SFAccountNoteTableViewCell *)self->_notesCell textView];
        [textView2 setSelectedRange:{0, 0}];

        [(UIEditMenuInteraction *)self->_editMenuInteraction dismissMenu];
        v34 = MEMORY[0x1E69DC9D8];
        [viewCopy rectForRowAtIndexPath:pathCopy];
        UIRectGetCenter();
        v35 = [v34 configurationWithIdentifier:pathCopy sourcePoint:?];
        [(UIEditMenuInteraction *)self->_editMenuInteraction presentEditMenuWithConfiguration:v35];

        goto LABEL_33;
      }

      goto LABEL_32;
    }

    [viewCopy deselectRowAtIndexPath:pathCopy animated:1];
    if (v9 == 11)
    {
      [(SFAccountDetailViewController *)self _initiateUpgradeToSignInWithApple];
    }

    else
    {
      [(SFAccountDetailViewController *)self _initiateChangeToStrongPassword];
    }
  }

LABEL_33:
}

void __67__SFAccountDetailViewController_tableView_didSelectRowAtIndexPath___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _newSecretEntryAlertController];
  objc_storeWeak((*(a1 + 32) + 1256), v2);
  [*(a1 + 40) dismissViewControllerAnimated:1 completion:0];
  [*(a1 + 32) presentViewController:v2 animated:1 completion:0];
}

void __67__SFAccountDetailViewController_tableView_didSelectRowAtIndexPath___block_invoke_2(uint64_t a1)
{
  v3 = objc_alloc_init(MEMORY[0x1E69BC7B8]);
  [v3 setDelegate:*(a1 + 32)];
  v2 = [objc_alloc(MEMORY[0x1E69DCCD8]) initWithRootViewController:v3];
  [*(a1 + 32) presentViewController:v2 animated:1 completion:0];
}

- (void)_replaceAddPasswordButtonWithPasswordCell
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __74__SFAccountDetailViewController__replaceAddPasswordButtonWithPasswordCell__block_invoke;
  block[3] = &unk_1E848F810;
  block[4] = self;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

void __74__SFAccountDetailViewController__replaceAddPasswordButtonWithPasswordCell__block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 1208) snapshot];
  [v2 deleteItemsWithIdentifiers:&unk_1F5023BA8];
  [v2 appendItemsWithIdentifiers:&unk_1F5023BC0 intoSectionWithIdentifier:&unk_1F5022C60];
  v3 = *(a1 + 32);
  v4 = *(v3 + 1208);
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __74__SFAccountDetailViewController__replaceAddPasswordButtonWithPasswordCell__block_invoke_2;
  v5[3] = &unk_1E848F810;
  v5[4] = v3;
  [v4 applySnapshot:v2 animatingDifferences:1 completion:v5];
}

void __74__SFAccountDetailViewController__replaceAddPasswordButtonWithPasswordCell__block_invoke_2(uint64_t a1)
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __74__SFAccountDetailViewController__replaceAddPasswordButtonWithPasswordCell__block_invoke_3;
  block[3] = &unk_1E848F810;
  block[4] = *(a1 + 32);
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

void __74__SFAccountDetailViewController__replaceAddPasswordButtonWithPasswordCell__block_invoke_3(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 1120) editableTextField];
  [v2 becomeFirstResponder];

  v3 = *(a1 + 32);
  v4 = [v3[140] editableTextField];
  [v3 _updatePasswordFieldTextSuggestions:v4];
}

- (BOOL)_shouldShowMenuForItemIdentifier:(int64_t)identifier
{
  v3 = 1;
  if (identifier > 5)
  {
    if (identifier != 6 && identifier != 15)
    {
      return 0;
    }
  }

  else
  {
    if (identifier == 1)
    {
      user = [(WBSSavedAccount *)self->_savedAccount user];
      v3 = [user length] != 0;

      return v3;
    }

    if (identifier != 3)
    {
      return 0;
    }
  }

  return v3;
}

- (void)_revealPasswordIfNecessary
{
  if (self->_showPasswordAsBulletsWhenNotEditing)
  {
    self->_showPasswordAsBulletsWhenNotEditing = 0;
    passwordForEditing = self->_passwordForEditing;
    password = passwordForEditing;
    if (!passwordForEditing)
    {
      password = [(WBSSavedAccount *)self->_savedAccount password];
    }

    editableTextField = [(SFEditableTableViewCell *)self->_passwordCell editableTextField];
    [editableTextField setText:password];

    if (!passwordForEditing)
    {
    }
  }
}

- (int64_t)tableView:(id)view editingStyleForRowAtIndexPath:(id)path
{
  pathCopy = path;
  if (-[SFAccountDetailViewController _sectionTypeForSection:](self, "_sectionTypeForSection:", [pathCopy section]) == 8)
  {
    isEditing = [(WBSSavedAccount *)self->_savedAccount credentialTypes]!= 2;
  }

  else
  {
    v7 = [(SFTableViewDiffableDataSource *)self->_tableViewDiffableDataSource itemIdentifierForIndexPath:pathCopy];
    v8 = [(SFAccountDetailViewController *)self _itemTypeForIdentifier:v7];

    if (v8 == 6)
    {
      isEditing = [(SFAccountDetailViewController *)self isEditing];
    }

    else
    {
      isEditing = 0;
    }
  }

  v9 = isEditing;

  return v9;
}

- (BOOL)tableView:(id)view shouldIndentWhileEditingRowAtIndexPath:(id)path
{
  v5 = [(SFTableViewDiffableDataSource *)self->_tableViewDiffableDataSource itemIdentifierForIndexPath:path];
  v6 = [(SFAccountDetailViewController *)self _itemTypeForIdentifier:v5];

  return v6 == 15 || v6 == 6;
}

- (BOOL)tableView:(id)view shouldHighlightRowAtIndexPath:(id)path
{
  viewCopy = view;
  v8 = [(SFTableViewDiffableDataSource *)self->_tableViewDiffableDataSource itemIdentifierForIndexPath:path];
  v7 = [(SFAccountDetailViewController *)self _itemTypeForIdentifier:v8];

  LOBYTE(v8) = 0;
  if (v7 <= 5)
  {
    if (v7 != 1 && v7 != 3)
    {
      if (v7 != 4)
      {
        goto LABEL_15;
      }

      if (!-[SFAccountDetailViewController _allowEditing](self, "_allowEditing") || ([viewCopy isEditing] & 1) != 0)
      {
        LOBYTE(v8) = 0;
        goto LABEL_15;
      }

      isCurrentUserOriginalContributor = [(WBSSavedAccount *)self->_savedAccount isCurrentUserOriginalContributor];
      goto LABEL_8;
    }

LABEL_14:
    LODWORD(v8) = [viewCopy isEditing] ^ 1;
    goto LABEL_15;
  }

  if (v7 <= 0x15)
  {
    if (((1 << v7) & 0x1F4300) != 0)
    {
      LOBYTE(v8) = 1;
      goto LABEL_15;
    }

    if (((1 << v7) & 0xB8C0) == 0)
    {
      if (v7 != 21)
      {
        goto LABEL_15;
      }

      isCurrentUserOriginalContributor = [(SFAccountDetailViewController *)self _canUserDeleteSavedAccount];
LABEL_8:
      LOBYTE(v8) = isCurrentUserOriginalContributor;
      goto LABEL_15;
    }

    goto LABEL_14;
  }

LABEL_15:

  return v8;
}

- (id)tableView:(id)view viewForFooterInSection:(int64_t)section
{
  v5 = [(SFAccountDetailViewController *)self _sectionTypeForSection:section];
  if (v5 != 1)
  {
    if (!v5 && !self->_isForFillingIndividualAccountFields)
    {
      _accountHeaderSectionFooterView = [(SFAccountDetailViewController *)self _accountHeaderSectionFooterView];
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  if (self->_isForFillingIndividualAccountFields)
  {
LABEL_6:
    _accountHeaderSectionFooterView = 0;
    goto LABEL_7;
  }

  _accountHeaderSectionFooterView = [(SFAccountDetailViewController *)self _passkeySectionFooterView];
LABEL_7:

  return _accountHeaderSectionFooterView;
}

- (id)editMenuInteraction:(id)interaction menuForConfiguration:(id)configuration suggestedActions:(id)actions
{
  interactionCopy = interaction;
  configurationCopy = configuration;
  actionsCopy = actions;
  tableView = [(SFAccountDetailViewController *)self tableView];
  isEditing = [tableView isEditing];

  if (isEditing)
  {
    v13 = [MEMORY[0x1E69DCC60] menuWithChildren:MEMORY[0x1E695E0F0]];
    goto LABEL_18;
  }

  v14 = [(SFAccountDetailViewController *)self _indexPathForEditMenuInteraction:interactionCopy withConfiguration:configurationCopy];
  if (v14)
  {
    objc_initWeak(location, self);
    v15 = [(SFTableViewDiffableDataSource *)self->_tableViewDiffableDataSource itemIdentifierForIndexPath:v14];
    v16 = [(SFAccountDetailViewController *)self _itemTypeForIdentifier:v15];
    array = [MEMORY[0x1E695DF70] array];
    v18 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"doc.on.doc"];
    if (v16 > 5)
    {
      if (v16 == 6)
      {
        v28 = MEMORY[0x1E69DC628];
        v29 = _WBSLocalizedString();
        v32 = MEMORY[0x1E69E9820];
        v33 = 3221225472;
        v34 = __91__SFAccountDetailViewController_editMenuInteraction_menuForConfiguration_suggestedActions___block_invoke_4;
        v35 = &unk_1E848FD88;
        v36 = v15;
        objc_copyWeak(&v37, location);
        v30 = [v28 actionWithTitle:v29 image:v18 identifier:0 handler:&v32];
        [array addObject:{v30, v32, v33, v34, v35}];

        objc_destroyWeak(&v37);
        goto LABEL_16;
      }

      if (v16 == 15)
      {
        v23 = MEMORY[0x1E69DC628];
        v24 = _WBSLocalizedString();
        v38[0] = MEMORY[0x1E69E9820];
        v38[1] = 3221225472;
        v38[2] = __91__SFAccountDetailViewController_editMenuInteraction_menuForConfiguration_suggestedActions___block_invoke_3;
        v38[3] = &unk_1E848F4D0;
        objc_copyWeak(&v40, location);
        v39 = v14;
        v25 = [v23 actionWithTitle:v24 image:v18 identifier:0 handler:v38];
        [array addObject:v25];

        v26 = &v40;
LABEL_14:
        objc_destroyWeak(v26);
      }
    }

    else
    {
      if (v16 == 1)
      {
        v27 = MEMORY[0x1E69DC628];
        v20 = _WBSLocalizedString();
        v21 = v43;
        v43[0] = MEMORY[0x1E69E9820];
        v43[1] = 3221225472;
        v43[2] = __91__SFAccountDetailViewController_editMenuInteraction_menuForConfiguration_suggestedActions___block_invoke;
        v43[3] = &unk_1E848FC70;
        objc_copyWeak(&v44, location);
        v22 = [v27 actionWithTitle:v20 image:v18 identifier:0 handler:v43];
        [array addObject:v22];
        goto LABEL_13;
      }

      if (v16 == 3)
      {
        v19 = MEMORY[0x1E69DC628];
        v20 = _WBSLocalizedString();
        v21 = v41;
        v41[0] = MEMORY[0x1E69E9820];
        v41[1] = 3221225472;
        v41[2] = __91__SFAccountDetailViewController_editMenuInteraction_menuForConfiguration_suggestedActions___block_invoke_2;
        v41[3] = &unk_1E848FC70;
        objc_copyWeak(&v42, location);
        v22 = [v19 actionWithTitle:v20 image:v18 identifier:0 handler:v41];
        [array addObject:v22];
LABEL_13:

        v26 = (v21 + 4);
        goto LABEL_14;
      }
    }

LABEL_16:
    v13 = [MEMORY[0x1E69DCC60] menuWithChildren:array];

    objc_destroyWeak(location);
    goto LABEL_17;
  }

  v13 = [MEMORY[0x1E69DCC60] menuWithChildren:MEMORY[0x1E695E0F0]];
LABEL_17:

LABEL_18:

  return v13;
}

void __91__SFAccountDetailViewController_editMenuInteraction_menuForConfiguration_suggestedActions___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v4 = WeakRetained;
    v2 = [MEMORY[0x1E69DCD50] generalPasteboard];
    v3 = [v4[130] user];
    [v2 safari_setSensitiveString:v3];

    WeakRetained = v4;
  }
}

void __91__SFAccountDetailViewController_editMenuInteraction_menuForConfiguration_suggestedActions___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v4 = WeakRetained;
    v2 = [MEMORY[0x1E69DCD50] generalPasteboard];
    v3 = [v4[130] password];
    [v2 safari_setSensitiveString:v3];

    WeakRetained = v4;
  }
}

void __91__SFAccountDetailViewController_editMenuInteraction_menuForConfiguration_suggestedActions___block_invoke_3(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v8 = WeakRetained;
    v3 = [WeakRetained[130] credentialTypes];
    v4 = v8[130];
    if (v3 == 2)
    {
      v5 = [v4 passkeyRelyingPartyID];
    }

    else
    {
      v6 = [v4 userVisibleSites];
      v5 = [v6 objectAtIndexedSubscript:{objc_msgSend(*(a1 + 32), "row")}];
    }

    v7 = [MEMORY[0x1E69DCD50] generalPasteboard];
    [v7 setString:v5];

    WeakRetained = v8;
  }
}

void __91__SFAccountDetailViewController_editMenuInteraction_menuForConfiguration_suggestedActions___block_invoke_4(uint64_t a1)
{
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    WeakRetained = objc_loadWeakRetained((a1 + 40));
    if (WeakRetained)
    {
      v3 = *(a1 + 32);
      v7 = WeakRetained;
      v4 = [MEMORY[0x1E695DF00] date];
      v5 = [v3 codeForDate:v4];

      v6 = [MEMORY[0x1E69DCD50] generalPasteboard];
      [v6 safari_setSensitiveString:v5];

      WeakRetained = v7;
    }
  }
}

- (CGRect)editMenuInteraction:(id)interaction targetRectForConfiguration:(id)configuration
{
  v5 = [(SFAccountDetailViewController *)self _indexPathForEditMenuInteraction:interaction withConfiguration:configuration];
  if (v5)
  {
    tableView = [(SFAccountDetailViewController *)self tableView];
    [tableView rectForRowAtIndexPath:v5];
    v8 = v7;
    v10 = v9;
    v12 = v11;
    v14 = v13;
  }

  else
  {
    v8 = *MEMORY[0x1E695F050];
    v10 = *(MEMORY[0x1E695F050] + 8);
    v12 = *(MEMORY[0x1E695F050] + 16);
    v14 = *(MEMORY[0x1E695F050] + 24);
  }

  v15 = v8;
  v16 = v10;
  v17 = v12;
  v18 = v14;
  result.size.height = v18;
  result.size.width = v17;
  result.origin.y = v16;
  result.origin.x = v15;
  return result;
}

- (void)editMenuInteraction:(id)interaction willPresentMenuForConfiguration:(id)configuration animator:(id)animator
{
  animator = [(SFAccountDetailViewController *)self _indexPathForEditMenuInteraction:interaction withConfiguration:configuration, animator];
  if (animator)
  {
    v9 = animator;
    v7 = [(SFTableViewDiffableDataSource *)self->_tableViewDiffableDataSource itemIdentifierForIndexPath:animator];
    v8 = [(SFAccountDetailViewController *)self _itemTypeForIdentifier:v7];

    animator = v9;
    if (v8 == 3)
    {
      [(SFAccountDetailViewController *)self _revealPasswordIfNecessary];
      animator = v9;
    }
  }
}

- (void)editMenuInteraction:(id)interaction willDismissMenuForConfiguration:(id)configuration animator:(id)animator
{
  animator = [(SFAccountDetailViewController *)self _indexPathForEditMenuInteraction:interaction withConfiguration:configuration, animator];
  if (animator)
  {
    v8 = animator;
    tableView = [(SFAccountDetailViewController *)self tableView];
    [tableView deselectRowAtIndexPath:v8 animated:1];

    animator = v8;
  }
}

- (id)_indexPathForEditMenuInteraction:(id)interaction withConfiguration:(id)configuration
{
  interactionCopy = interaction;
  identifier = [configuration identifier];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = identifier;
  }

  else
  {
    tableView = [(SFAccountDetailViewController *)self tableView];
    tableView2 = [(SFAccountDetailViewController *)self tableView];
    [interactionCopy locationInView:tableView2];
    v8 = [tableView indexPathForRowAtPoint:?];
  }

  return v8;
}

- (void)_updateHeaderViewCell
{
  headerCell = self->_headerCell;
  userVisibleDomain = [(WBSSavedAccount *)self->_savedAccount userVisibleDomain];
  [(SFAccountHeaderViewCell *)headerCell setHeaderTitleForHighLevelDomain:userVisibleDomain customTitle:self->_titleForEditing];
}

- (BOOL)_shouldUseZeroHeightHeaderForSectionType:(int64_t)type
{
  if ((type - 1) < 2)
  {
    return self->_isForFillingIndividualAccountFields;
  }

  result = 1;
  if (type && type != 4)
  {
    return 0;
  }

  return result;
}

- (id)tableView:(id)view viewForHeaderInSection:(int64_t)section
{
  if ([(SFAccountDetailViewController *)self _shouldUseZeroHeightHeaderForSectionType:[(SFAccountDetailViewController *)self _sectionTypeForSection:section]])
  {
    v4 = objc_alloc_init(MEMORY[0x1E69DD250]);
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (double)tableView:(id)view heightForHeaderInSection:(int64_t)section
{
  v4 = [(SFAccountDetailViewController *)self _shouldUseZeroHeightHeaderForSectionType:[(SFAccountDetailViewController *)self _sectionTypeForSection:section]];
  result = *MEMORY[0x1E69DE3D0];
  if (v4)
  {
    return 0.0;
  }

  return result;
}

- (void)textFieldDidEndEditing:(id)editing
{
  editingCopy = editing;
  editableTextField = [(SFEditableTableViewCell *)self->_userCell editableTextField];

  if (editableTextField == editingCopy)
  {
    WeakRetained = [(SFEditableTableViewCell *)self->_userCell editableTextField];
    text = [WeakRetained text];
    v9 = 1136;
  }

  else
  {
    editableTextField2 = [(SFEditableTableViewCell *)self->_passwordCell editableTextField];

    if (editableTextField2 != editingCopy)
    {
      WeakRetained = objc_loadWeakRetained(&self->_secretEntryAlertController);
      textFields = [WeakRetained textFields];
      [textFields firstObject];

      goto LABEL_7;
    }

    WeakRetained = [(SFEditableTableViewCell *)self->_passwordCell editableTextField];
    text = [WeakRetained text];
    v9 = 1144;
  }

  textFields = *(&self->super.super.super.super.isa + v9);
  *(&self->super.super.super.super.isa + v9) = text;
LABEL_7:
}

- (BOOL)textFieldShouldReturn:(id)return
{
  returnCopy = return;
  editableTextField = [(SFEditableTableViewCell *)self->_userCell editableTextField];

  passwordCell = self->_passwordCell;
  if (editableTextField == returnCopy)
  {
    if (passwordCell)
    {
      editableTextField2 = [(SFEditableTableViewCell *)passwordCell editableTextField];
      [editableTextField2 becomeFirstResponder];

      goto LABEL_9;
    }

    goto LABEL_7;
  }

  editableTextField3 = [(SFEditableTableViewCell *)passwordCell editableTextField];
  v8 = editableTextField3;
  if (editableTextField3 != returnCopy)
  {

    goto LABEL_8;
  }

  isEnabled = [(UIBarButtonItem *)self->_doneBarButtonItem isEnabled];

  if (isEnabled)
  {
LABEL_7:
    [(SFAccountDetailViewController *)self _saveAccountAndFinishEditing];
    goto LABEL_9;
  }

LABEL_8:
  WeakRetained = objc_loadWeakRetained(&self->_secretEntryAlertController);
  textFields = [WeakRetained textFields];
  firstObject = [textFields firstObject];

  if (firstObject == returnCopy)
  {
    v16 = objc_alloc(MEMORY[0x1E69C8A60]);
    text = [returnCopy text];
    v18 = [v16 initWithUserProvidedString:text];
    [(SFAccountDetailViewController *)self _addTOTPGenerator:v18];

    v14 = 1;
    [(SFAccountDetailViewController *)self dismissViewControllerAnimated:1 completion:0];
    goto LABEL_10;
  }

LABEL_9:
  v14 = 0;
LABEL_10:

  return v14;
}

- (void)_updatePasswordFieldTextSuggestions:(id)suggestions
{
  v19[1] = *MEMORY[0x1E69E9840];
  suggestionsCopy = suggestions;
  text = [suggestionsCopy text];
  v6 = [text length];

  if (v6)
  {
    v7 = MEMORY[0x1E695E0F0];
  }

  else
  {
    highLevelDomain = [(WBSSavedAccount *)self->_savedAccount highLevelDomain];
    safari_bestURLForUserTypedString = [highLevelDomain safari_bestURLForUserTypedString];

    v10 = +[_SFFormDataController sharedController];
    v11 = [v10 autoGeneratedPasswordForURL:safari_bestURLForUserTypedString respectingPasswordRequirements:0 maxLength:-1];

    if (v11)
    {
      v12 = [MEMORY[0x1E69DD158] textSuggestionWithInputText:v11];
      v13 = _WBSLocalizedString();
      [v12 setHeaderText:v13];

      [v12 setDisplayText:v11];
      v19[0] = v12;
      v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v19 count:1];
    }

    else
    {
      v7 = MEMORY[0x1E695E0F0];
    }
  }

  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __69__SFAccountDetailViewController__updatePasswordFieldTextSuggestions___block_invoke;
  v16[3] = &unk_1E848F548;
  v17 = suggestionsCopy;
  v18 = v7;
  v14 = v7;
  v15 = suggestionsCopy;
  dispatch_async(MEMORY[0x1E69E96A0], v16);
}

void __69__SFAccountDetailViewController__updatePasswordFieldTextSuggestions___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) textInputSuggestionDelegate];
  [v2 setSuggestions:*(a1 + 40)];
}

- (void)_textFieldChanged:(id)changed
{
  changedCopy = changed;
  editableTextField = [(SFEditableTableViewCell *)self->_passwordCell editableTextField];

  if (editableTextField == changedCopy)
  {
    [(SFAccountDetailViewController *)self _updatePasswordFieldTextSuggestions:changedCopy];
  }

  editableTextField2 = [(SFEditableTableViewCell *)self->_userCell editableTextField];
  if (editableTextField2 == changedCopy)
  {

    goto LABEL_10;
  }

  editableTextField3 = [(SFEditableTableViewCell *)self->_passwordCell editableTextField];

  if (editableTextField3 == changedCopy)
  {
LABEL_10:
    [(SFAccountDetailViewController *)self _updateSavedAccountChangeRequest];
    WeakRetained = [MEMORY[0x1E69C8A38] sharedStore];
    -[UIBarButtonItem setEnabled:](self->_doneBarButtonItem, "setEnabled:", [WeakRetained canChangeSavedAccountWithRequest:self->_savedAccountChangeRequest]);
    goto LABEL_11;
  }

  editableTextField4 = [(SFAccountHeaderViewCell *)self->_headerCell editableTextField];

  if (editableTextField4 == changedCopy)
  {
    [(SFAccountDetailViewController *)self _updateHeaderViewCell];
  }

  WeakRetained = objc_loadWeakRetained(&self->_secretEntryAlertController);
  textFields = [WeakRetained textFields];
  firstObject = [textFields firstObject];

  if (firstObject == changedCopy)
  {
    v11 = objc_alloc(MEMORY[0x1E69C8A60]);
    text = [changedCopy text];
    v13 = [v11 initWithUserProvidedString:text];
    actions = [WeakRetained actions];
    lastObject = [actions lastObject];
    [lastObject setEnabled:v13 != 0];
  }

LABEL_11:
}

- (id)_lastModifiedDateString
{
  if (self->_completedUpgradeToSignInWithApple)
  {
    v2 = _WBSLocalizedString();
  }

  else
  {
    dateFormatterWithDynamicContext = [MEMORY[0x1E69C87F8] dateFormatterWithDynamicContext];
    lastModifiedDate = [(WBSSavedAccount *)self->_savedAccount lastModifiedDate];
    v6 = [dateFormatterWithDynamicContext stringFromDate:lastModifiedDate];

    if (v6)
    {
      v7 = MEMORY[0x1E696AEC0];
      v8 = _WBSLocalizedString();
      v2 = [v7 stringWithFormat:v8, v6];
    }

    else
    {
      v2 = 0;
    }
  }

  return v2;
}

- (id)_passkeyCreationDateString
{
  dateFormatterWithStandaloneContext = [MEMORY[0x1E69C87F8] dateFormatterWithStandaloneContext];
  creationDateForPasskey = [(WBSSavedAccount *)self->_savedAccount creationDateForPasskey];
  v5 = [dateFormatterWithStandaloneContext stringFromDate:creationDateForPasskey];

  v6 = MEMORY[0x1E696AEC0];
  v7 = _WBSLocalizedString();
  v8 = [v6 stringWithFormat:v7, v5];

  return v8;
}

- (int64_t)_sectionTypeForSection:(int64_t)section
{
  snapshot = [(SFTableViewDiffableDataSource *)self->_tableViewDiffableDataSource snapshot];
  sectionIdentifiers = [snapshot sectionIdentifiers];
  v6 = [sectionIdentifiers objectAtIndexedSubscript:section];
  integerValue = [v6 integerValue];

  return integerValue;
}

- (int64_t)_itemTypeForIdentifier:(id)identifier
{
  identifierCopy = identifier;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    integerValue = 15;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      integerValue = 6;
    }

    else
    {
      integerValue = [identifierCopy integerValue];
    }
  }

  return integerValue;
}

- (void)_updateSavedAccountChangeRequest
{
  savedAccountChangeRequest = self->_savedAccountChangeRequest;
  if (!savedAccountChangeRequest)
  {
    v4 = objc_alloc_init(MEMORY[0x1E69C8A18]);
    v5 = self->_savedAccountChangeRequest;
    self->_savedAccountChangeRequest = v4;

    savedAccountChangeRequest = self->_savedAccountChangeRequest;
  }

  [(WBSSavedAccountChangeRequest *)savedAccountChangeRequest setSavedAccount:self->_savedAccount];
  editableTextField = [(SFEditableTableViewCell *)self->_userCell editableTextField];
  text = [editableTextField text];
  [(WBSSavedAccountChangeRequest *)self->_savedAccountChangeRequest setUser:text];

  editableTextField2 = [(SFEditableTableViewCell *)self->_passwordCell editableTextField];
  text2 = [editableTextField2 text];
  [(WBSSavedAccountChangeRequest *)self->_savedAccountChangeRequest setPassword:text2];

  textView = [(SFAccountNoteTableViewCell *)self->_notesCell textView];
  text3 = [textView text];
  [(WBSSavedAccountChangeRequest *)self->_savedAccountChangeRequest setNotesEntry:text3];

  totpGenerators = [(WBSSavedAccount *)self->_savedAccount totpGenerators];
  firstObject = [totpGenerators firstObject];
  [(WBSSavedAccountChangeRequest *)self->_savedAccountChangeRequest setTotpGenerator:firstObject];

  titleTextField = [(SFAccountHeaderViewCell *)self->_headerCell titleTextField];
  text4 = [titleTextField text];
  [(WBSSavedAccountChangeRequest *)self->_savedAccountChangeRequest setCustomTitle:text4];
}

- (void)_saveAccountAndFinishEditing
{
  self->_showPasswordAsBulletsWhenNotEditing = 0;
  [(SFAccountHeaderViewCell *)self->_headerCell commitCustomTitle];
  [(SFAccountDetailViewController *)self _updateSavedAccountChangeRequest];
  mEMORY[0x1E69C8A38] = [MEMORY[0x1E69C8A38] sharedStore];
  [mEMORY[0x1E69C8A38] changeSavedAccountWithRequest:self->_savedAccountChangeRequest];

  [(SFAccountDetailViewController *)self _setEditing:0 animated:1];
  if ([(WBSSavedAccount *)self->_savedAccount credentialTypes]== 2)
  {
    passwordCell = self->_passwordCell;
    self->_passwordCell = 0;
  }

  [(SFAccountDetailViewController *)self _reloadDiffableDataSourceOnInternalQueueAnimated:0];
}

- (void)_updateWarningForSavedAccount
{
  objc_initWeak(&location, self);
  _passwordWarningManager = [(SFAccountDetailViewController *)self _passwordWarningManager];
  savedAccount = self->_savedAccount;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __62__SFAccountDetailViewController__updateWarningForSavedAccount__block_invoke;
  v5[3] = &unk_1E848FDB0;
  objc_copyWeak(&v6, &location);
  [_passwordWarningManager getWarningForSavedAccount:savedAccount completionHandler:v5];

  objc_destroyWeak(&v6);
  objc_destroyWeak(&location);
}

void __62__SFAccountDetailViewController__updateWarningForSavedAccount__block_invoke(uint64_t a1, void *a2)
{
  v5 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained && (WBSIsEqual() & 1) == 0)
  {
    objc_storeStrong(WeakRetained + 153, a2);
    [WeakRetained _reloadDiffableDataSourceOnInternalQueueAnimated:0];
  }
}

- (void)_addTOTPGenerator:(id)generator
{
  if (generator)
  {
    v4 = MEMORY[0x1E69C8A38];
    generatorCopy = generator;
    sharedStore = [v4 sharedStore];
    savedAccount = self->_savedAccount;
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __51__SFAccountDetailViewController__addTOTPGenerator___block_invoke;
    v8[3] = &unk_1E848F810;
    v8[4] = self;
    [sharedStore saveTOTPGenerator:generatorCopy forSavedAccount:savedAccount completionHandler:v8];
  }
}

void __51__SFAccountDetailViewController__addTOTPGenerator___block_invoke(uint64_t a1)
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __51__SFAccountDetailViewController__addTOTPGenerator___block_invoke_2;
  block[3] = &unk_1E848F810;
  block[4] = *(a1 + 32);
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

void __51__SFAccountDetailViewController__addTOTPGenerator___block_invoke_2(uint64_t a1)
{
  [*(a1 + 32) _updateCachedTOTPGenerators];
  v4 = [*(*(a1 + 32) + 1208) snapshot];
  v2 = [v4 sectionIdentifiers];
  v3 = [v2 containsObject:&unk_1F5022C30];

  if (v3)
  {
    [v4 deleteSectionsWithIdentifiers:&unk_1F5023BD8];
  }

  [*(a1 + 32) _addTOTPGeneratorsToSnapshot:v4];
  [*(a1 + 32) _updateAddButtonsInAccountOptionsSectionForSnapshot:v4];
  if ([*(*(a1 + 32) + 1040) credentialTypes] == 3)
  {
    [v4 deleteItemsWithIdentifiers:&unk_1F5023BF0];
    [v4 appendItemsWithIdentifiers:&unk_1F5023C08 intoSectionWithIdentifier:&unk_1F5022C60];
  }

  [*(*(a1 + 32) + 1208) applySnapshot:v4 animatingDifferences:1];
}

- (void)_deleteTOTPGenerator:(id)generator
{
  generatorCopy = generator;
  mEMORY[0x1E69C8A38] = [MEMORY[0x1E69C8A38] sharedStore];
  [mEMORY[0x1E69C8A38] removeTOTPGeneratorForSavedAccount:self->_savedAccount];

  [(SFAccountDetailViewController *)self _updateCachedTOTPGenerators];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __54__SFAccountDetailViewController__deleteTOTPGenerator___block_invoke;
  v7[3] = &unk_1E848F548;
  v7[4] = self;
  v8 = generatorCopy;
  v6 = generatorCopy;
  dispatch_async(MEMORY[0x1E69E96A0], v7);
}

void __54__SFAccountDetailViewController__deleteTOTPGenerator___block_invoke(uint64_t a1)
{
  v13[1] = *MEMORY[0x1E69E9840];
  v2 = [*(*(a1 + 32) + 1208) snapshot];
  v13[0] = *(a1 + 40);
  v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:v13 count:1];
  [v2 deleteItemsWithIdentifiers:v3];

  if ([v2 indexOfSectionIdentifier:&unk_1F5022C30] != 0x7FFFFFFFFFFFFFFFLL)
  {
    v4 = [v2 itemIdentifiersInSectionWithIdentifier:&unk_1F5022C30];
    v5 = [v4 count];

    if (!v5)
    {
      [v2 deleteSectionsWithIdentifiers:&unk_1F5023C20];
    }
  }

  v6 = [v2 itemIdentifiers];
  v7 = [v6 containsObject:&unk_1F5022D68];

  if (v7)
  {
    [v2 insertItemsWithIdentifiers:&unk_1F5023C38 beforeItemWithIdentifier:&unk_1F5022D68];
    [v2 deleteItemsWithIdentifiers:&unk_1F5023C50];
  }

  v8 = [v2 itemIdentifiers];
  v9 = [v8 containsObject:&unk_1F5022C48];

  if (v9)
  {
    [v2 deleteItemsWithIdentifiers:&unk_1F5023C68];
  }

  [*(a1 + 32) _updateAddButtonsInAccountOptionsSectionForSnapshot:v2];
  v10 = *(a1 + 32);
  v11 = *(v10 + 1208);
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __54__SFAccountDetailViewController__deleteTOTPGenerator___block_invoke_2;
  v12[3] = &unk_1E848F810;
  v12[4] = v10;
  [v11 applySnapshot:v2 animatingDifferences:1 completion:v12];
}

- (void)_updateCachedTOTPGenerators
{
  v3 = MEMORY[0x1E695DFD8];
  totpGenerators = [(WBSSavedAccount *)self->_savedAccount totpGenerators];
  v4 = [v3 setWithArray:totpGenerators];
  allObjects = [v4 allObjects];
  TOTPGenerators = self->_TOTPGenerators;
  self->_TOTPGenerators = allObjects;
}

- (id)_newSecretEntryAlertController
{
  v3 = MEMORY[0x1E69DC650];
  v4 = _WBSLocalizedString();
  highLevelDomain = [(WBSSavedAccount *)self->_savedAccount highLevelDomain];
  v6 = MEMORY[0x1E696AEC0];
  v7 = _WBSLocalizedString();
  v8 = [v6 stringWithFormat:v7, highLevelDomain];

  v9 = [v3 alertControllerWithTitle:v4 message:v8 imageNamed:@"alert-passwords" preferredStyle:1];

  v25[0] = MEMORY[0x1E69E9820];
  v25[1] = 3221225472;
  v25[2] = __63__SFAccountDetailViewController__newSecretEntryAlertController__block_invoke;
  v25[3] = &unk_1E848FDD8;
  v25[4] = self;
  [v9 addTextFieldWithConfigurationHandler:v25];
  v10 = MEMORY[0x1E69DC648];
  v11 = _WBSLocalizedString();
  v23[0] = MEMORY[0x1E69E9820];
  v23[1] = 3221225472;
  v23[2] = __63__SFAccountDetailViewController__newSecretEntryAlertController__block_invoke_2;
  v23[3] = &unk_1E848FBF8;
  v12 = v9;
  v24 = v12;
  v13 = [v10 actionWithTitle:v11 style:1 handler:v23];
  [v12 addAction:v13];

  v14 = MEMORY[0x1E69DC648];
  v15 = _WBSLocalizedString();
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __63__SFAccountDetailViewController__newSecretEntryAlertController__block_invoke_3;
  v20[3] = &unk_1E848F780;
  v16 = v12;
  v21 = v16;
  selfCopy = self;
  v17 = [v14 actionWithTitle:v15 style:0 handler:v20];

  [v17 setEnabled:0];
  [v16 addAction:v17];
  v18 = v16;

  return v18;
}

void __63__SFAccountDetailViewController__newSecretEntryAlertController__block_invoke(uint64_t a1, void *a2)
{
  v7 = a2;
  v3 = _WBSLocalizedString();
  [v7 setPlaceholder:v3];

  v4 = MEMORY[0x1E69DB878];
  v5 = [v7 font];
  v6 = [v4 _sf_highLegibilityAlternateFont:v5];
  [v7 setFont:v6];

  [v7 setDelegate:*(a1 + 32)];
  [v7 addTarget:*(a1 + 32) action:sel__textFieldChanged_ forEvents:0x20000];
}

void __63__SFAccountDetailViewController__newSecretEntryAlertController__block_invoke_3(uint64_t a1)
{
  v2 = [*(a1 + 32) textFields];
  v3 = [v2 firstObject];
  v6 = [v3 text];

  v4 = *(a1 + 40);
  v5 = [objc_alloc(MEMORY[0x1E69C8A60]) initWithUserProvidedString:v6];
  [v4 _addTOTPGenerator:v5];

  [*(a1 + 32) dismissViewControllerAnimated:1 completion:0];
}

- (void)_deleteTOTPGeneratorWithConfirmation:(id)confirmation
{
  confirmationCopy = confirmation;
  v5 = [MEMORY[0x1E695A9A0] configurationForDeleting:1 fromSavedAccount:self->_savedAccount];
  v6 = MEMORY[0x1E69DC650];
  title = [v5 title];
  subtitle = [v5 subtitle];
  v9 = [v6 alertControllerWithTitle:title message:subtitle imageNamed:@"alert-passwords" preferredStyle:_SFDeviceAlertStyle()];

  v10 = MEMORY[0x1E69DC648];
  buttonTitle = [v5 buttonTitle];
  v31[0] = MEMORY[0x1E69E9820];
  v31[1] = 3221225472;
  v31[2] = __70__SFAccountDetailViewController__deleteTOTPGeneratorWithConfirmation___block_invoke;
  v31[3] = &unk_1E848FE00;
  v31[4] = self;
  v12 = confirmationCopy;
  v32 = v12;
  v13 = v9;
  v33 = v13;
  v14 = [v10 actionWithTitle:buttonTitle style:2 handler:v31];
  [v13 addAction:v14];

  if ([(WBSSavedAccount *)self->_savedAccount hasValidWebsite])
  {
    v15 = MEMORY[0x1E69DC648];
    v16 = _WBSLocalizedString();
    v28[0] = MEMORY[0x1E69E9820];
    v28[1] = 3221225472;
    v28[2] = __70__SFAccountDetailViewController__deleteTOTPGeneratorWithConfirmation___block_invoke_2;
    v28[3] = &unk_1E848F780;
    v17 = v13;
    v29 = v17;
    selfCopy = self;
    v18 = [v15 actionWithTitle:v16 style:0 handler:v28];
    [v17 addAction:v18];
  }

  v19 = MEMORY[0x1E69DC648];
  v20 = _WBSLocalizedString();
  v23 = MEMORY[0x1E69E9820];
  v24 = 3221225472;
  v25 = __70__SFAccountDetailViewController__deleteTOTPGeneratorWithConfirmation___block_invoke_4;
  v26 = &unk_1E848FBF8;
  v27 = v13;
  v21 = v13;
  v22 = [v19 actionWithTitle:v20 style:1 handler:&v23];
  [v21 addAction:{v22, v23, v24, v25, v26}];

  [(SFAccountDetailViewController *)self presentViewController:v21 animated:1 completion:0];
}

uint64_t __70__SFAccountDetailViewController__deleteTOTPGeneratorWithConfirmation___block_invoke(uint64_t a1)
{
  [*(a1 + 32) _deleteTOTPGenerator:*(a1 + 40)];
  v2 = *(a1 + 48);

  return [v2 dismissViewControllerAnimated:1 completion:0];
}

uint64_t __70__SFAccountDetailViewController__deleteTOTPGeneratorWithConfirmation___block_invoke_2(uint64_t a1)
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __70__SFAccountDetailViewController__deleteTOTPGeneratorWithConfirmation___block_invoke_3;
  v3[3] = &unk_1E848F810;
  v1 = *(a1 + 32);
  v3[4] = *(a1 + 40);
  return [v1 dismissViewControllerAnimated:1 completion:v3];
}

void __70__SFAccountDetailViewController__deleteTOTPGeneratorWithConfirmation___block_invoke_3(uint64_t a1)
{
  v1 = *(a1 + 32);
  v4 = [v1[130] userVisibleSites];
  v2 = [v4 firstObject];
  v3 = [v2 safari_bestURLForUserTypedString];
  [v1 _openURLInSafariViewController:v3 shouldSupressPasswordUpdatePrompts:1];
}

- (void)_addNotesSectionToSnapshot:(id)snapshot
{
  snapshotCopy = snapshot;
  sectionIdentifiers = [snapshotCopy sectionIdentifiers];
  v5 = [sectionIdentifiers containsObject:&unk_1F5022DE0];

  if ((v5 & 1) == 0)
  {
    if (!self->_isForFillingIndividualAccountFields || ([snapshotCopy sectionIdentifiers], v6 = objc_claimAutoreleasedReturnValue(), v7 = &unk_1F5022C90, v8 = objc_msgSend(v6, "containsObject:", &unk_1F5022C90), v6, (v8 & 1) == 0) && (objc_msgSend(snapshotCopy, "sectionIdentifiers"), v9 = objc_claimAutoreleasedReturnValue(), v7 = &unk_1F5022C60, v10 = objc_msgSend(v9, "containsObject:", &unk_1F5022C60), v9, (v10 & 1) == 0))
    {
      sectionIdentifiers2 = [snapshotCopy sectionIdentifiers];
      v12 = [sectionIdentifiers2 containsObject:&unk_1F5022C30];
      v13 = &unk_1F5022CA8;
      if (v12)
      {
        v13 = &unk_1F5022C30;
      }

      v7 = v13;
    }

    [snapshotCopy insertSectionsWithIdentifiers:&unk_1F5023C80 afterSectionWithIdentifier:v7];
    [snapshotCopy appendItemsWithIdentifiers:&unk_1F5023C98 intoSectionWithIdentifier:&unk_1F5022DE0];
    [snapshotCopy reconfigureItemsWithIdentifiers:&unk_1F5023CB0];
  }
}

- (void)_openURLInSafariViewController:(id)controller shouldSupressPasswordUpdatePrompts:(BOOL)prompts
{
  promptsCopy = prompts;
  controllerCopy = controller;
  if ([(UIViewController *)self safari_checkForAbilityToOpenWebContentAndNotifyIfNecessary:?])
  {
    v6 = objc_alloc_init(SFSafariViewControllerConfiguration);
    [(SFSafariViewControllerConfiguration *)v6 _setPerformingAccountSecurityUpgrade:promptsCopy];
    v7 = [[SFSafariViewController alloc] initWithURL:controllerCopy configuration:v6];
    [(SFSafariViewController *)v7 setModalPresentationStyle:1];
    [(SFSafariViewController *)v7 setModalInPresentation:1];
    [(SFAccountDetailViewController *)self presentViewController:v7 animated:1 completion:0];
  }
}

- (id)_footerTextForLastOneTimeShareDate:(id)date
{
  if (date)
  {
    v3 = MEMORY[0x1E696AEC0];
    dateCopy = date;
    v5 = _WBSLocalizedString();
    dateFormatterWithDynamicContext = [MEMORY[0x1E69C87F8] dateFormatterWithDynamicContext];
    v7 = [dateFormatterWithDynamicContext stringFromDate:dateCopy];

    v8 = [v3 localizedStringWithFormat:v5, v7];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (void)_reloadPasskeySectionFooters
{
  v3 = [(SFTableViewDiffableDataSource *)self->_tableViewDiffableDataSource indexForSectionIdentifier:&unk_1F5022CA8];
  v6 = [MEMORY[0x1E696AD50] indexSetWithIndex:v3];
  v4 = [(SFTableViewDiffableDataSource *)self->_tableViewDiffableDataSource indexForSectionIdentifier:&unk_1F5022C90];
  if (v4 != 0x7FFFFFFFFFFFFFFFLL)
  {
    [v6 addIndex:v4];
  }

  tableView = [(SFAccountDetailViewController *)self tableView];
  [tableView _reloadSectionHeaderFooters:v6 withRowAnimation:5];
}

- (id)_accountHeaderSectionFooterView
{
  if ([(WBSSavedAccount *)self->_savedAccount credentialTypes]== 2)
  {
    _passkeyFooterView = [(SFAccountDetailViewController *)self _passkeyFooterView];
  }

  else
  {
    _passkeyFooterView = 0;
  }

  return _passkeyFooterView;
}

- (id)_passkeySectionFooterView
{
  if ([(WBSSavedAccount *)self->_savedAccount credentialTypes]== 3)
  {
    _passkeyFooterView = [(SFAccountDetailViewController *)self _passkeyFooterView];
  }

  else
  {
    _passkeyFooterView = 0;
  }

  return _passkeyFooterView;
}

- (id)_passkeyFooterView
{
  if ([(WBSSavedAccount *)self->_savedAccount credentialTypes]== 1)
  {
    v3 = 0;
  }

  else
  {
    if (!self->_passkeyFooterView)
    {
      v4 = objc_alloc_init(_SFTableLinkableFooterView);
      passkeyFooterView = self->_passkeyFooterView;
      self->_passkeyFooterView = v4;

      [(_SFTableLinkableFooterView *)self->_passkeyFooterView setDelegate:self];
    }

    lastOneTimeShareDateForPasskey = [(WBSSavedAccount *)self->_savedAccount lastOneTimeShareDateForPasskey];

    if (lastOneTimeShareDateForPasskey)
    {
      lastOneTimeShareDateForPasskey2 = [(WBSSavedAccount *)self->_savedAccount lastOneTimeShareDateForPasskey];
      v8 = [(SFAccountDetailViewController *)self _footerTextForLastOneTimeShareDate:lastOneTimeShareDateForPasskey2];

      if (v8)
      {
        v9 = MEMORY[0x1E696AEC0];
        footerString = [MEMORY[0x1E695A990] footerString];
        footerString2 = [v9 stringWithFormat:@"%@\n\n%@", v8, footerString];
      }

      else
      {
        footerString2 = [MEMORY[0x1E695A990] footerString];
      }
    }

    else
    {
      footerString2 = [MEMORY[0x1E695A990] footerString];
    }

    textLabel = [(_SFTableLinkableFooterView *)self->_passkeyFooterView textLabel];
    text = [textLabel text];
    v14 = [text isEqualToString:footerString2];

    if ((v14 & 1) == 0)
    {
      [(_SFTableLinkableFooterView *)self->_passkeyFooterView invalidateIntrinsicContentSize];
    }

    v15 = self->_passkeyFooterView;
    footerLearnMoreLinkBindingString = [MEMORY[0x1E695A990] footerLearnMoreLinkBindingString];
    footerLearnMoreLinkString = [MEMORY[0x1E695A990] footerLearnMoreLinkString];
    [(_SFTableLinkableFooterView *)v15 setText:footerString2 linkPlaceholderString:footerLearnMoreLinkBindingString linkReplacementString:footerLearnMoreLinkString];

    v3 = self->_passkeyFooterView;
  }

  return v3;
}

- (void)_fillUsername
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (objc_opt_respondsToSelector())
  {
    [WeakRetained accountDetailViewController:self fillUsernameForSavedAccount:self->_savedAccount];
  }
}

- (void)_fillPassword
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (objc_opt_respondsToSelector())
  {
    [WeakRetained accountDetailViewController:self fillPasswordForSavedAccount:self->_savedAccount];
  }
}

- (void)_fillVerificationCode
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (objc_opt_respondsToSelector())
  {
    [WeakRetained accountDetailViewController:self fillVerificationCodeForSavedAccount:self->_savedAccount];
  }
}

- (void)linkableFooterViewDidInteractWithLink:(id)link
{
  linkCopy = link;
  v5 = objc_alloc_init(MEMORY[0x1E695A998]);
  objc_initWeak(&location, v5);
  v6 = objc_alloc(MEMORY[0x1E69DC708]);
  v7 = MEMORY[0x1E69DC628];
  v12 = MEMORY[0x1E69E9820];
  v13 = 3221225472;
  v14 = __71__SFAccountDetailViewController_linkableFooterViewDidInteractWithLink___block_invoke;
  v15 = &unk_1E848FC70;
  objc_copyWeak(&v16, &location);
  v8 = [v7 actionWithHandler:&v12];
  v9 = [v6 initWithBarButtonSystemItem:0 primaryAction:{v8, v12, v13, v14, v15}];
  navigationItem = [v5 navigationItem];
  [navigationItem setRightBarButtonItem:v9];

  v11 = [objc_alloc(MEMORY[0x1E69DCCD8]) initWithRootViewController:v5];
  [(SFAccountDetailViewController *)self presentViewController:v11 animated:1 completion:0];

  objc_destroyWeak(&v16);
  objc_destroyWeak(&location);
}

void __71__SFAccountDetailViewController_linkableFooterViewDidInteractWithLink___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained dismissViewControllerAnimated:1 completion:0];
}

- (void)_sharePasswordWithPopoverPresentationControllerConfiguration:(id)configuration
{
  configurationCopy = configuration;
  v5 = [[_SFAirDropAccountSharingAuthenticationContext alloc] initWithSavedAccount:self->_savedAccount];
  self->_isOneTimeSharingAccount = 1;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __94__SFAccountDetailViewController__sharePasswordWithPopoverPresentationControllerConfiguration___block_invoke;
  v8[3] = &unk_1E848FE28;
  v8[4] = self;
  v9 = v5;
  v10 = configurationCopy;
  v6 = configurationCopy;
  v7 = v5;
  [_SFSettingsAuthentication authenticateForSettings:v7 allowAuthenticationReuse:0 completionHandler:v8];
}

void __94__SFAccountDetailViewController__sharePasswordWithPopoverPresentationControllerConfiguration___block_invoke(uint64_t a1, char a2, uint64_t a3, void *a4)
{
  v6 = a4;
  if (a2)
  {
    [*(a1 + 32) _sharePasswordWithAuthenticationContext:*(a1 + 40) popoverPresentationControllerConfiguration:*(a1 + 48)];
  }

  else
  {
    v7 = WBS_LOG_CHANNEL_PREFIXPasswords();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      __94__SFAccountDetailViewController__sharePasswordWithPopoverPresentationControllerConfiguration___block_invoke_cold_1(v7);
    }

    *(*(a1 + 32) + 1360) = 0;
    v8 = [MEMORY[0x1E696AD88] defaultCenter];
    [v8 postNotificationName:@"_SFShowAccountManagerLockedViewIfNeededNotification" object:0];
  }
}

- (void)_sharePasswordWithAuthenticationContext:(id)context popoverPresentationControllerConfiguration:(id)configuration
{
  v16[1] = *MEMORY[0x1E69E9840];
  configurationCopy = configuration;
  if ([context hasBeenAuthenticated])
  {
    v7 = [objc_alloc(MEMORY[0x1E69C8E20]) initWithSavedPassword:self->_savedAccount];
    v8 = objc_alloc(MEMORY[0x1E69CD9F8]);
    urlRepresentationForAirDrop = [v7 urlRepresentationForAirDrop];
    v16[0] = urlRepresentationForAirDrop;
    v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v16 count:1];
    v11 = [v8 initWithActivityItems:v10 applicationActivities:0];

    v15 = *MEMORY[0x1E69CDA78];
    v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v15 count:1];
    [v11 setIncludedActivityTypes:v12];

    [v11 setExcludedActivityCategories:3];
    [v11 setModalPresentationStyle:7];
    popoverPresentationController = [v11 popoverPresentationController];
    [popoverPresentationController setPermittedArrowDirections:1];
    if (configurationCopy)
    {
      configurationCopy[2](configurationCopy, popoverPresentationController);
    }

    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __116__SFAccountDetailViewController__sharePasswordWithAuthenticationContext_popoverPresentationControllerConfiguration___block_invoke;
    v14[3] = &unk_1E848FE50;
    v14[4] = self;
    [v11 setCompletionWithItemsHandler:v14];
    [(SFAccountDetailViewController *)self presentViewController:v11 animated:1 completion:0];
  }
}

void __116__SFAccountDetailViewController__sharePasswordWithAuthenticationContext_popoverPresentationControllerConfiguration___block_invoke(uint64_t a1, uint64_t a2, int a3)
{
  if (a3)
  {
    v4 = [MEMORY[0x1E69C8A38] sharedStore];
    [v4 _updateLastOneTimeShareDateforSavedAccountIfNeeded:*(*(a1 + 32) + 1040)];

    [*(a1 + 32) _reloadPasskeySectionFooters];
  }

  *(*(a1 + 32) + 1360) = 0;
  v5 = [MEMORY[0x1E696AD88] defaultCenter];
  [v5 postNotificationName:@"_SFShowAccountManagerLockedViewIfNeededNotification" object:0];
}

- (id)dataSource:(id)source headerTextForSection:(int64_t)section
{
  v5 = [(SFAccountDetailViewController *)self _sectionTypeForSection:section];
  v6 = 0;
  if (v5 <= 5)
  {
    switch(v5)
    {
      case 1:
        if (self->_isForFillingIndividualAccountFields)
        {
          goto LABEL_16;
        }

        break;
      case 2:
        if (self->_isForFillingIndividualAccountFields)
        {
          goto LABEL_16;
        }

        break;
      case 5:
        if (![(SFAccountDetailViewController *)self _completedUpgrade])
        {
          break;
        }

LABEL_16:
        v6 = 0;
        goto LABEL_18;
      default:
        goto LABEL_18;
    }

LABEL_17:
    v6 = _WBSLocalizedString();
    goto LABEL_18;
  }

  switch(v5)
  {
    case 6:
      if (![(SFAccountDetailViewController *)self _shouldShowAccountOptionsHeader])
      {
        goto LABEL_16;
      }

      goto LABEL_17;
    case 7:
      goto LABEL_17;
    case 8:
      sites = [(WBSSavedAccount *)self->_savedAccount sites];
      [sites count];
      v6 = _WBSLocalizedString();

      break;
  }

LABEL_18:

  return v6;
}

- (id)dataSource:(id)source footerTextForSection:(int64_t)section
{
  if ([(SFAccountDetailViewController *)self _sectionTypeForSection:section]== 9 && [(WBSSavedAccount *)self->_savedAccount isRecentlyDeleted])
  {
    pm_recentlyDeletedDetailViewDeleteSectionFooter = [(WBSSavedAccount *)self->_savedAccount pm_recentlyDeletedDetailViewDeleteSectionFooter];
  }

  else
  {
    pm_recentlyDeletedDetailViewDeleteSectionFooter = 0;
  }

  return pm_recentlyDeletedDetailViewDeleteSectionFooter;
}

- (void)dataSource:(id)source commitEditingStyle:(int64_t)style forItemIdentifier:(id)identifier
{
  sourceCopy = source;
  identifierCopy = identifier;
  v9 = [(SFAccountDetailViewController *)self _itemTypeForIdentifier:identifierCopy];
  v10 = [(SFTableViewDiffableDataSource *)self->_tableViewDiffableDataSource indexPathForItemIdentifier:identifierCopy];
  if (v9 == 15)
  {
    objc_initWeak(&location, self);
    mEMORY[0x1E69C8A38] = [MEMORY[0x1E69C8A38] sharedStore];
    sites = [(WBSSavedAccount *)self->_savedAccount sites];
    v13 = [sites objectAtIndexedSubscript:{objc_msgSend(v10, "row")}];
    savedAccount = self->_savedAccount;
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __81__SFAccountDetailViewController_dataSource_commitEditingStyle_forItemIdentifier___block_invoke;
    v15[3] = &unk_1E848FB68;
    objc_copyWeak(&v18, &location);
    v16 = identifierCopy;
    v17 = v10;
    [mEMORY[0x1E69C8A38] removeSite:v13 fromSavedAccountWithPassword:savedAccount withCompletion:v15];

    objc_destroyWeak(&v18);
    objc_destroyWeak(&location);
  }
}

void __81__SFAccountDetailViewController_dataSource_commitEditingStyle_forItemIdentifier___block_invoke(id *a1)
{
  WeakRetained = objc_loadWeakRetained(a1 + 6);
  v3 = WeakRetained;
  if (WeakRetained)
  {
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __81__SFAccountDetailViewController_dataSource_commitEditingStyle_forItemIdentifier___block_invoke_2;
    block[3] = &unk_1E848F6B0;
    block[4] = WeakRetained;
    v5 = a1[4];
    v6 = a1[5];
    dispatch_async(MEMORY[0x1E69E96A0], block);
  }
}

void __81__SFAccountDetailViewController_dataSource_commitEditingStyle_forItemIdentifier___block_invoke_2(uint64_t a1)
{
  v12[1] = *MEMORY[0x1E69E9840];
  v2 = [*(*(a1 + 32) + 1208) snapshot];
  v12[0] = *(a1 + 40);
  v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:v12 count:1];
  [v2 deleteItemsWithIdentifiers:v3];

  [*(*(a1 + 32) + 1208) applySnapshot:v2 animatingDifferences:1];
  v4 = *(a1 + 32);
  v5 = v4[151];
  v6 = [v4 tableView];
  v7 = [v5 tableView:v6 numberOfRowsInSection:{objc_msgSend(*(a1 + 48), "section")}];

  if (!v7)
  {
    v8 = objc_alloc_init(MEMORY[0x1E69E2100]);
    [v8 schedulePasswordIconsCleanup];
    [*(a1 + 32) _popViewController];
  }

  v9 = [*(*(a1 + 32) + 1208) indexForSectionIdentifier:&unk_1F5022C48];
  v10 = [MEMORY[0x1E696AD50] indexSetWithIndex:v9];
  v11 = [*(a1 + 32) tableView];
  [v11 _reloadSectionHeaderFooters:v10 withRowAnimation:5];
}

- (BOOL)dataSource:(id)source canEditRowAtIndexPath:(id)path
{
  tableViewDiffableDataSource = self->_tableViewDiffableDataSource;
  pathCopy = path;
  snapshot = [(SFTableViewDiffableDataSource *)tableViewDiffableDataSource snapshot];
  sectionIdentifiers = [snapshot sectionIdentifiers];
  section = [pathCopy section];

  v10 = [sectionIdentifiers objectAtIndexedSubscript:section];
  integerValue = [v10 integerValue];

  if (integerValue == 8)
  {
    if ([(WBSSavedAccount *)self->_savedAccount credentialTypes]!= 2)
    {
      sites = [(WBSSavedAccount *)self->_savedAccount sites];
      v13 = [sites count] > 1;

      return v13;
    }

    return 0;
  }

  if (integerValue == 7)
  {
    return 1;
  }

  if (integerValue)
  {
    return 0;
  }

  return [(SFAccountDetailViewController *)self _allowEditing];
}

- (void)_updateAccountModificationOptions
{
  attributes = [(NSExtension *)self->_accountModificationExtension attributes];
  if ([attributes safari_BOOLForKey:*MEMORY[0x1E69C8E38]])
  {
    mEMORY[0x1E69C88B8] = [MEMORY[0x1E69C88B8] sharedMonitor];
    self->_eligibleToChangeToStrongPassword = [mEMORY[0x1E69C88B8] isKeychainSyncEnabled];
  }

  else
  {
    self->_eligibleToChangeToStrongPassword = 0;
  }

  v5 = [attributes safari_stringForKey:*MEMORY[0x1E69C8E48]];
  rulesForStrongPasswordChange = self->_rulesForStrongPasswordChange;
  self->_rulesForStrongPasswordChange = v5;

  if (([(WBSSavedAccount *)self->_savedAccount credentialTypes]& 2) != 0)
  {
    self->_eligibleToUpgradeToSignInWithApple = 0;
    goto LABEL_8;
  }

  pm_defaults = [MEMORY[0x1E695E000] pm_defaults];
  pm_passwordManagerIsInDemoMode = [pm_defaults pm_passwordManagerIsInDemoMode];

  if (pm_passwordManagerIsInDemoMode)
  {
    self->_eligibleToUpgradeToSignInWithApple = [attributes safari_BOOLForKey:*MEMORY[0x1E69C8E40]];
LABEL_8:
    [(SFAccountDetailViewController *)self _reloadDiffableDataSourceOnInternalQueueAnimated:0];
    goto LABEL_9;
  }

  [(SFAccountDetailViewController *)self _reloadDiffableDataSourceOnInternalQueueAnimated:0];
  if ([attributes safari_BOOLForKey:*MEMORY[0x1E69C8E40]])
  {
    v9 = objc_alloc_init(MEMORY[0x1E698DCE0]);
    v10 = MEMORY[0x1E696AAE8];
    _plugIn = [(NSExtension *)self->_accountModificationExtension _plugIn];
    containingUrl = [_plugIn containingUrl];
    v13 = [v10 bundleWithURL:containingUrl];
    bundleIdentifier = [v13 bundleIdentifier];

    objc_initWeak(&location, self);
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __66__SFAccountDetailViewController__updateAccountModificationOptions__block_invoke;
    v15[3] = &unk_1E848FE78;
    objc_copyWeak(&v16, &location);
    [v9 getCredentialStateForClientID:bundleIdentifier completion:v15];
    objc_destroyWeak(&v16);
    objc_destroyWeak(&location);
  }

LABEL_9:
}

void __66__SFAccountDetailViewController__updateAccountModificationOptions__block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    if (a3)
    {
      v6 = WBS_LOG_CHANNEL_PREFIXAccountAuthenticationModificationExtension();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        __66__SFAccountDetailViewController__updateAccountModificationOptions__block_invoke_cold_1(WeakRetained, v6);
      }
    }

    WeakRetained[1305] = a2 == 2;
    [WeakRetained _reloadDiffableDataSourceOnInternalQueueAnimated:0];
  }
}

- (void)_initiateUpgradeToSignInWithApple
{
  v3 = objc_alloc(MEMORY[0x1E695A910]);
  user = [(WBSSavedAccount *)self->_savedAccount user];
  password = [(WBSSavedAccount *)self->_savedAccount password];
  accountModificationExtension = self->_accountModificationExtension;
  v7 = objc_alloc(MEMORY[0x1E695A920]);
  highLevelDomain = [(WBSSavedAccount *)self->_savedAccount highLevelDomain];
  v9 = [v7 initWithIdentifier:highLevelDomain type:0];
  v10 = [v3 initWithUser:user password:password extension:accountModificationExtension serviceIdentifier:v9 userInfo:0];

  [(ASAccountAuthenticationModificationController *)self->_accountAuthenticationModificationController performRequest:v10];
}

- (void)_initiateChangeToStrongPassword
{
  v3 = objc_alloc(MEMORY[0x1E695A918]);
  user = [(WBSSavedAccount *)self->_savedAccount user];
  password = [(WBSSavedAccount *)self->_savedAccount password];
  accountModificationExtension = self->_accountModificationExtension;
  v7 = objc_alloc(MEMORY[0x1E695A920]);
  highLevelDomain = [(WBSSavedAccount *)self->_savedAccount highLevelDomain];
  v9 = [v7 initWithIdentifier:highLevelDomain type:0];
  v10 = [v3 initWithUser:user password:password extension:accountModificationExtension serviceIdentifier:v9 userInfo:0];

  [(ASAccountAuthenticationModificationController *)self->_accountAuthenticationModificationController performRequest:v10];
}

- (void)accountAuthenticationModificationController:(id)controller didSuccessfullyCompleteRequest:(id)request withUserInfo:(id)info
{
  requestCopy = request;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [(SFAccountDetailViewController *)self _completedSignInWithAppleUpgrade];
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [(SFAccountDetailViewController *)self _completedStrongPasswordUpgrade];
    }
  }
}

- (void)_completedSignInWithAppleUpgrade
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (objc_opt_respondsToSelector())
  {
    [WeakRetained setSavedAccountToRemoveAfterCompletedUpgradeInDetailView:self->_savedAccount];
  }

  mEMORY[0x1E69C8A38] = [MEMORY[0x1E69C8A38] sharedStore];
  savedAccount = self->_savedAccount;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __65__SFAccountDetailViewController__completedSignInWithAppleUpgrade__block_invoke;
  v6[3] = &unk_1E848F810;
  v6[4] = self;
  [mEMORY[0x1E69C8A38] removeCredentialTypes:1 forSavedAccount:savedAccount completionHandler:v6];
}

void __65__SFAccountDetailViewController__completedSignInWithAppleUpgrade__block_invoke(uint64_t a1)
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __65__SFAccountDetailViewController__completedSignInWithAppleUpgrade__block_invoke_2;
  block[3] = &unk_1E848F810;
  block[4] = *(a1 + 32);
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

void __65__SFAccountDetailViewController__completedSignInWithAppleUpgrade__block_invoke_2(uint64_t a1)
{
  *(*(a1 + 32) + 1307) = 1;
  [*(*(a1 + 32) + 1064) setEnabled:0];
  [*(*(a1 + 32) + 1072) setEnabled:0];
  [*(a1 + 32) _reloadDiffableDataSourceOnInternalQueueAnimated:0];
  v3 = [*(a1 + 32) tableView];
  v2 = [MEMORY[0x1E696AC90] indexSetWithIndex:0];
  [v3 _reloadSectionHeaderFooters:v2 withRowAnimation:5];
}

- (void)_completedStrongPasswordUpgrade
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (objc_opt_respondsToSelector())
  {
    [WeakRetained setSavedAccountToRemoveAfterCompletedUpgradeInDetailView:self->_savedAccount];
  }

  self->_completedUpgradeToStrongPassword = 1;
  [(SFAccountDetailViewController *)self _reloadDiffableDataSourceOnInternalQueueAnimated:0];
}

- (void)accountAuthenticationModificationController:(id)controller didFailRequest:(id)request withError:(id)error
{
  controllerCopy = controller;
  requestCopy = request;
  errorCopy = error;
  if (errorCopy)
  {
    v11 = WBS_LOG_CHANNEL_PREFIXAccountAuthenticationModificationExtension();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      [SFAccountDetailViewController accountAuthenticationModificationController:v11 didFailRequest:? withError:?];
    }
  }

  if ([errorCopy code] != 1)
  {
    userInfo = [errorCopy userInfo];
    v13 = [userInfo objectForKey:*MEMORY[0x1E695A8F8]];

    if ([errorCopy code] || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      v22 = MEMORY[0x1E69DC650];
      v23 = MEMORY[0x1E696AEC0];
      v24 = _WBSLocalizedString();
      _plugIn = [(NSExtension *)self->_accountModificationExtension _plugIn];
      localizedContainingName = [_plugIn localizedContainingName];
      v27 = [v23 stringWithFormat:v24, localizedContainingName];
      v20 = [v22 alertControllerWithTitle:0 message:v27 imageNamed:@"alert-passwords" preferredStyle:1];

      v21 = MEMORY[0x1E69DC648];
    }

    else
    {
      v14 = MEMORY[0x1E69DC650];
      v15 = MEMORY[0x1E696AEC0];
      v16 = _WBSLocalizedString();
      _plugIn2 = [(NSExtension *)self->_accountModificationExtension _plugIn];
      localizedContainingName2 = [_plugIn2 localizedContainingName];
      v19 = [v15 stringWithFormat:v16, localizedContainingName2];
      v20 = [v14 alertControllerWithTitle:v19 message:v13 imageNamed:@"alert-passwords" preferredStyle:1];

      v21 = MEMORY[0x1E69DC648];
    }

    v28 = _WBSLocalizedString();
    v29 = [v21 actionWithTitle:v28 style:0 handler:0];
    [v20 addAction:v29];

    [(SFAccountDetailViewController *)self presentViewController:v20 animated:1 completion:0];
  }
}

- (id)presentationAnchorForAccountAuthenticationModificationController:(id)controller
{
  view = [(SFAccountDetailViewController *)self view];
  window = [view window];

  return window;
}

- (void)accountModificationExtensionManagerExtensionListDidChange:(id)change
{
  changeCopy = change;
  objc_initWeak(&location, self);
  mEMORY[0x1E695A960] = [MEMORY[0x1E695A960] sharedManager];
  highLevelDomain = [(WBSSavedAccount *)self->_savedAccount highLevelDomain];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __91__SFAccountDetailViewController_accountModificationExtensionManagerExtensionListDidChange___block_invoke;
  v7[3] = &unk_1E848FBD0;
  objc_copyWeak(&v8, &location);
  [mEMORY[0x1E695A960] extensionForDomain:highLevelDomain completionHandler:v7];

  objc_destroyWeak(&v8);
  objc_destroyWeak(&location);
}

void __91__SFAccountDetailViewController_accountModificationExtensionManagerExtensionListDidChange___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = WeakRetained;
  if (v3 && WeakRetained)
  {
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __91__SFAccountDetailViewController_accountModificationExtensionManagerExtensionListDidChange___block_invoke_2;
    v6[3] = &unk_1E848F548;
    v6[4] = WeakRetained;
    v7 = v3;
    dispatch_async(MEMORY[0x1E69E96A0], v6);
  }
}

uint64_t __91__SFAccountDetailViewController_accountModificationExtensionManagerExtensionListDidChange___block_invoke_2(uint64_t a1)
{
  objc_storeStrong((*(a1 + 32) + 1296), *(a1 + 40));
  [*(a1 + 32) _updateAccountModificationOptions];
  v2 = *(a1 + 32);

  return [v2 _reloadDiffableDataSourceAnimated:0];
}

- (void)_showConfirmationToDeletePasswordAndTOTPGenerator
{
  if (([(WBSSavedAccount *)self->_savedAccount isRecentlyDeleted]& 1) != 0)
  {

    [(SFAccountDetailViewController *)self _showConfirmationToPermanentlyDeletePasswordAndTOTPGenerator];
  }

  else
  {

    [(SFAccountDetailViewController *)self _showConfirmationToSoftDeletePasswordAndTOTPGenerator];
  }
}

- (void)_showConfirmationToPermanentlyDeletePasswordAndTOTPGenerator
{
  v3 = [MEMORY[0x1E695A9A0] configurationForDeleting:0 fromSavedAccount:self->_savedAccount];
  v4 = MEMORY[0x1E69DC650];
  title = [v3 title];
  subtitle = [v3 subtitle];
  v7 = [v4 alertControllerWithTitle:title message:subtitle imageNamed:@"alert-passwords" preferredStyle:_SFDeviceAlertStyle()];

  view = [v7 view];
  [view setAccessibilityIdentifier:@"DeletePasswordAndTOTPGeneratorConfirmation"];

  v9 = MEMORY[0x1E69DC648];
  buttonTitle = [v3 buttonTitle];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __93__SFAccountDetailViewController__showConfirmationToPermanentlyDeletePasswordAndTOTPGenerator__block_invoke;
  v15[3] = &unk_1E848FBF8;
  v15[4] = self;
  v11 = [v9 actionWithTitle:buttonTitle style:2 handler:v15];
  [v7 addAction:v11];

  v12 = MEMORY[0x1E69DC648];
  v13 = _WBSLocalizedString();
  v14 = [v12 actionWithTitle:v13 style:1 handler:0];
  [v7 addAction:v14];

  [(SFAccountDetailViewController *)self presentViewController:v7 animated:1 completion:0];
}

- (void)_showConfirmationToSoftDeletePasswordAndTOTPGenerator
{
  v3 = [MEMORY[0x1E695A9A0] configurationForDeleting:0 fromSavedAccount:self->_savedAccount];
  v4 = MEMORY[0x1E69DC650];
  title = [v3 title];
  subtitle = [v3 subtitle];
  v7 = [v4 alertControllerWithTitle:title message:subtitle imageNamed:@"alert-passwords" preferredStyle:_SFDeviceAlertStyle()];

  view = [v7 view];
  [view setAccessibilityIdentifier:@"SoftDeletePasswordAndTOTPGeneratorConfirmation"];

  v9 = MEMORY[0x1E69DC648];
  buttonTitle = [v3 buttonTitle];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __86__SFAccountDetailViewController__showConfirmationToSoftDeletePasswordAndTOTPGenerator__block_invoke;
  v15[3] = &unk_1E848FBF8;
  v15[4] = self;
  v11 = [v9 actionWithTitle:buttonTitle style:2 handler:v15];
  [v7 addAction:v11];

  v12 = MEMORY[0x1E69DC648];
  v13 = _WBSLocalizedString();
  v14 = [v12 actionWithTitle:v13 style:1 handler:0];
  [v7 addAction:v14];

  [(SFAccountDetailViewController *)self presentViewController:v7 animated:1 completion:0];
}

- (void)_showConfirmationToDeleteCredentialTypes:(int64_t)types
{
  if (([(WBSSavedAccount *)self->_savedAccount isRecentlyDeleted]& 1) != 0)
  {

    [(SFAccountDetailViewController *)self _showConfirmationToPermanentlyDeleteCredentialTypes:types];
  }

  else
  {

    [(SFAccountDetailViewController *)self _showConfirmationToSoftDeleteCredentialTypes:types];
  }
}

- (void)_showConfirmationToPermanentlyDeleteCredentialTypes:(int64_t)types
{
  v23[1] = *MEMORY[0x1E69E9840];
  if (types == 3)
  {
    v9 = MEMORY[0x1E695A9A0];
    v23[0] = self->_savedAccount;
    v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v23 count:1];
    v8 = [v9 configurationForDeletingSavedAccounts:v10];
  }

  else
  {
    if (types == 2)
    {
      v5 = MEMORY[0x1E695A9A0];
      savedAccount = self->_savedAccount;
      v7 = 2;
    }

    else
    {
      if (types != 1)
      {
        v8 = 0;
        goto LABEL_9;
      }

      v5 = MEMORY[0x1E695A9A0];
      savedAccount = self->_savedAccount;
      v7 = 0;
    }

    v8 = [v5 configurationForDeleting:v7 fromSavedAccount:savedAccount];
  }

LABEL_9:
  v11 = MEMORY[0x1E69DC650];
  title = [v8 title];
  subtitle = [v8 subtitle];
  v14 = [v11 alertControllerWithTitle:title message:subtitle imageNamed:@"alert-passwords" preferredStyle:_SFDeviceAlertStyle()];

  view = [v14 view];
  [view setAccessibilityIdentifier:@"DeleteCredentialConfirmation"];

  v16 = MEMORY[0x1E69DC648];
  buttonTitle = [v8 buttonTitle];
  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 3221225472;
  v22[2] = __85__SFAccountDetailViewController__showConfirmationToPermanentlyDeleteCredentialTypes___block_invoke;
  v22[3] = &unk_1E848FEC0;
  v22[4] = self;
  v22[5] = types;
  v18 = [v16 actionWithTitle:buttonTitle style:2 handler:v22];
  [v14 addAction:v18];

  v19 = MEMORY[0x1E69DC648];
  v20 = _WBSLocalizedString();
  v21 = [v19 actionWithTitle:v20 style:1 handler:0];
  [v14 addAction:v21];

  [(SFAccountDetailViewController *)self presentViewController:v14 animated:1 completion:0];
}

void __85__SFAccountDetailViewController__showConfirmationToPermanentlyDeleteCredentialTypes___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 1408));
  if (objc_opt_respondsToSelector())
  {
    [WeakRetained accountDetailViewController:*(a1 + 32) didDeleteAccountWithWarning:*(*(a1 + 32) + 1224)];
  }

  v2 = [*(*(a1 + 32) + 1040) credentialTypes];
  v3 = *(a1 + 40);
  switch(v3)
  {
    case 3:
      [*(a1 + 32) _permanentlyDeleteAllCredentials];
      break;
    case 2:
      [*(a1 + 32) _permanentlyDeletePasskey];
      break;
    case 1:
      [*(a1 + 32) _permanentlyDeletePassword];
      break;
  }

  if (v2 == *(a1 + 40))
  {
    [*(a1 + 32) _popViewController];
  }
}

- (void)_permanentlyDeletePassword
{
  _passwordWarningManager = [(SFAccountDetailViewController *)self _passwordWarningManager];
  [_passwordWarningManager removeWarningForSavedAccount:self->_savedAccount];

  passwordWarning = self->_passwordWarning;
  self->_passwordWarning = 0;

  passwordCell = self->_passwordCell;
  self->_passwordCell = 0;

  mEMORY[0x1E69C8A38] = [MEMORY[0x1E69C8A38] sharedStore];
  [mEMORY[0x1E69C8A38] removeCredentialTypes:1 forSavedAccount:self->_savedAccount completionHandler:&__block_literal_global_811];
}

- (void)_permanentlyDeletePasskey
{
  mEMORY[0x1E69C8A38] = [MEMORY[0x1E69C8A38] sharedStore];
  [mEMORY[0x1E69C8A38] removeCredentialTypes:2 forSavedAccount:self->_savedAccount completionHandler:&__block_literal_global_813];
}

- (void)_permanentlyDeleteAllCredentials
{
  mEMORY[0x1E69C8A38] = [MEMORY[0x1E69C8A38] sharedStore];
  [mEMORY[0x1E69C8A38] removeCredentialTypes:3 forSavedAccount:self->_savedAccount completionHandler:&__block_literal_global_815];
}

- (void)_showConfirmationToSoftDeleteCredentialTypes:(int64_t)types
{
  if (types == 1)
  {
    v6 = 0;
    goto LABEL_5;
  }

  v5 = 0;
  if (types == 2)
  {
    v6 = 2;
LABEL_5:
    v5 = [MEMORY[0x1E695A9A0] configurationForDeleting:v6 fromSavedAccount:self->_savedAccount];
  }

  v7 = MEMORY[0x1E69DC650];
  title = [v5 title];
  subtitle = [v5 subtitle];
  v10 = [v7 alertControllerWithTitle:title message:subtitle imageNamed:@"alert-passwords" preferredStyle:_SFDeviceAlertStyle()];

  view = [v10 view];
  [view setAccessibilityIdentifier:@"DeleteCredentialConfirmation"];

  v12 = MEMORY[0x1E69DC648];
  buttonTitle = [v5 buttonTitle];
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __78__SFAccountDetailViewController__showConfirmationToSoftDeleteCredentialTypes___block_invoke;
  v18[3] = &unk_1E848FEC0;
  v18[4] = self;
  v18[5] = types;
  v14 = [v12 actionWithTitle:buttonTitle style:2 handler:v18];
  [v10 addAction:v14];

  v15 = MEMORY[0x1E69DC648];
  v16 = _WBSLocalizedString();
  v17 = [v15 actionWithTitle:v16 style:1 handler:0];
  [v10 addAction:v17];

  [(SFAccountDetailViewController *)self presentViewController:v10 animated:1 completion:0];
}

void __78__SFAccountDetailViewController__showConfirmationToSoftDeleteCredentialTypes___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(*(a1 + 32) + 1040) credentialTypes];
  v17[0] = 0;
  v17[1] = v17;
  v17[2] = 0x2020000000;
  v18 = 0;
  v5 = dispatch_group_create();
  v6 = v5;
  v7 = *(a1 + 40);
  if (v7 == 2)
  {
    dispatch_group_enter(v5);
    v10 = *(a1 + 32);
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __78__SFAccountDetailViewController__showConfirmationToSoftDeleteCredentialTypes___block_invoke_3;
    v13[3] = &unk_1E848FF08;
    v14[1] = v17;
    v14[0] = v6;
    [v10 _softDeletePasskeyWithCompletionHandler:v13];
    v9 = v14;
    goto LABEL_5;
  }

  if (v7 == 1)
  {
    dispatch_group_enter(v5);
    v8 = *(a1 + 32);
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __78__SFAccountDetailViewController__showConfirmationToSoftDeleteCredentialTypes___block_invoke_2;
    v15[3] = &unk_1E848FF08;
    v16[1] = v17;
    v16[0] = v6;
    [v8 _softDeletePasswordWithCompletionHandler:v15];
    v9 = v16;
LABEL_5:
  }

  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __78__SFAccountDetailViewController__showConfirmationToSoftDeleteCredentialTypes___block_invoke_4;
  v12[3] = &unk_1E848FF30;
  v11 = *(a1 + 40);
  v12[4] = *(a1 + 32);
  v12[5] = v17;
  v12[6] = v11;
  v12[7] = v4;
  dispatch_group_notify(v6, MEMORY[0x1E69E96A0], v12);

  _Block_object_dispose(v17, 8);
}

void __78__SFAccountDetailViewController__showConfirmationToSoftDeleteCredentialTypes___block_invoke_4(uint64_t a1)
{
  v2 = *(a1 + 48);
  if (*(*(*(a1 + 40) + 8) + 24))
  {
    if (*(a1 + 56) == v2)
    {
      WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 1408));
      if (objc_opt_respondsToSelector())
      {
        [WeakRetained accountDetailViewController:*(a1 + 32) didMoveSavedAccountToRecentlyDeleted:*(*(a1 + 32) + 1040)];
      }

      [*(a1 + 32) _popViewController];
    }
  }

  else
  {
    v3 = *(a1 + 32);

    [v3 _presentSoftDeleteErrorAlertForCredentialTypes:v2];
  }
}

- (void)_softDeletePasswordWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  mEMORY[0x1E69C8A38] = [MEMORY[0x1E69C8A38] sharedStore];
  savedAccount = self->_savedAccount;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __74__SFAccountDetailViewController__softDeletePasswordWithCompletionHandler___block_invoke;
  v8[3] = &unk_1E848FF80;
  v8[4] = self;
  v9 = handlerCopy;
  v7 = handlerCopy;
  [mEMORY[0x1E69C8A38] _moveCredentialTypesToRecentlyDeleted:1 fromSavedAccount:savedAccount completionHandler:v8];
}

void __74__SFAccountDetailViewController__softDeletePasswordWithCompletionHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __74__SFAccountDetailViewController__softDeletePasswordWithCompletionHandler___block_invoke_2;
  block[3] = &unk_1E848FF58;
  v7 = v3;
  v4 = *(a1 + 40);
  v8 = *(a1 + 32);
  v9 = v4;
  v5 = v3;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

uint64_t __74__SFAccountDetailViewController__softDeletePasswordWithCompletionHandler___block_invoke_2(uint64_t a1)
{
  if (*(a1 + 32))
  {
    v2 = [*(a1 + 40) _passwordWarningManager];
    [v2 removeWarningForSavedAccount:*(*(a1 + 40) + 1040)];

    v3 = *(a1 + 40);
    v4 = *(v3 + 1224);
    *(v3 + 1224) = 0;

    v5 = *(a1 + 40);
    v6 = *(v5 + 1120);
    *(v5 + 1120) = 0;

    v7 = *(*(a1 + 48) + 16);

    return v7();
  }

  else
  {
    v9 = WBS_LOG_CHANNEL_PREFIXPasswords();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      __74__SFAccountDetailViewController__softDeletePasswordWithCompletionHandler___block_invoke_2_cold_1(v9, v10, v11, v12, v13, v14, v15, v16);
    }

    return (*(*(a1 + 48) + 16))();
  }
}

- (void)_softDeletePasskeyWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  mEMORY[0x1E69C8A38] = [MEMORY[0x1E69C8A38] sharedStore];
  savedAccount = self->_savedAccount;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __73__SFAccountDetailViewController__softDeletePasskeyWithCompletionHandler___block_invoke;
  v8[3] = &unk_1E848FFA8;
  v9 = handlerCopy;
  v7 = handlerCopy;
  [mEMORY[0x1E69C8A38] _moveCredentialTypesToRecentlyDeleted:1 fromSavedAccount:savedAccount completionHandler:v8];
}

- (void)_presentSoftDeleteErrorAlertForCredentialTypes:(int64_t)types
{
  v4 = _WBSLocalizedString();
  v5 = [MEMORY[0x1E69DC650] alertControllerWithTitle:v4 message:0 imageNamed:@"alert-passwords" preferredStyle:1];
  v6 = MEMORY[0x1E69DC648];
  v7 = _WBSLocalizedString();
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __80__SFAccountDetailViewController__presentSoftDeleteErrorAlertForCredentialTypes___block_invoke;
  v10[3] = &unk_1E848FBF8;
  v11 = v5;
  v8 = v5;
  v9 = [v6 actionWithTitle:v7 style:0 handler:v10];
  [v8 addAction:v9];

  [(SFAccountDetailViewController *)self presentViewController:v8 animated:1 completion:0];
}

- (void)_recoverSavedAccount
{
  mEMORY[0x1E69C8A38] = [MEMORY[0x1E69C8A38] sharedStore];
  savedAccount = self->_savedAccount;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __53__SFAccountDetailViewController__recoverSavedAccount__block_invoke;
  v5[3] = &unk_1E848FA00;
  v5[4] = self;
  [mEMORY[0x1E69C8A38] _recoverRecentlyDeletedSavedAccount:savedAccount completionHandler:v5];
}

void __53__SFAccountDetailViewController__recoverSavedAccount__block_invoke(uint64_t a1, char a2)
{
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3221225472;
  v2[2] = __53__SFAccountDetailViewController__recoverSavedAccount__block_invoke_2;
  v2[3] = &unk_1E848FD38;
  v3 = a2;
  v2[4] = *(a1 + 32);
  dispatch_async(MEMORY[0x1E69E96A0], v2);
}

uint64_t __53__SFAccountDetailViewController__recoverSavedAccount__block_invoke_2(uint64_t a1)
{
  if (*(a1 + 40))
  {
    v2 = *(a1 + 32);

    return [v2 _popViewController];
  }

  else
  {
    v4 = WBS_LOG_CHANNEL_PREFIXPasswords();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __53__SFAccountDetailViewController__recoverSavedAccount__block_invoke_2_cold_1(v4, v5, v6, v7, v8, v9, v10, v11);
    }

    return [*(a1 + 32) _presentErrorAlertForFailingToRecoverRecentlyDeletedSavedAccount];
  }
}

- (void)_presentMoveRecentlyDeletedSavedAccountToMyPasswordsConfirmationAlert
{
  v3 = [MEMORY[0x1E69BC7C8] alertTitleAndMessageForRecoveringSavedAccountToMyPasswords:self->_savedAccount];
  v4 = MEMORY[0x1E69DC650];
  first = [v3 first];
  second = [v3 second];
  v7 = [v4 alertControllerWithTitle:first message:second imageNamed:@"alert-passwords" preferredStyle:1];

  objc_initWeak(&location, self);
  v8 = MEMORY[0x1E69DC648];
  v9 = _WBSLocalizedString();
  v14 = MEMORY[0x1E69E9820];
  v15 = 3221225472;
  v16 = __102__SFAccountDetailViewController__presentMoveRecentlyDeletedSavedAccountToMyPasswordsConfirmationAlert__block_invoke;
  v17 = &unk_1E848FFD0;
  objc_copyWeak(&v18, &location);
  v10 = [v8 actionWithTitle:v9 style:0 handler:&v14];
  [v7 addAction:{v10, v14, v15, v16, v17}];

  v11 = MEMORY[0x1E69DC648];
  v12 = _WBSLocalizedString();
  v13 = [v11 actionWithTitle:v12 style:1 handler:0];
  [v7 addAction:v13];

  [(SFAccountDetailViewController *)self presentViewController:v7 animated:1 completion:0];
  objc_destroyWeak(&v18);
  objc_destroyWeak(&location);
}

void __102__SFAccountDetailViewController__presentMoveRecentlyDeletedSavedAccountToMyPasswordsConfirmationAlert__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WeakRetained;
    [WeakRetained _moveSavedAccountToMyPasswords];
    WeakRetained = v2;
  }
}

- (void)_moveSavedAccountToMyPasswords
{
  mEMORY[0x1E69C8A38] = [MEMORY[0x1E69C8A38] sharedStore];
  savedAccount = self->_savedAccount;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __63__SFAccountDetailViewController__moveSavedAccountToMyPasswords__block_invoke;
  v5[3] = &unk_1E848FA00;
  v5[4] = self;
  [mEMORY[0x1E69C8A38] _moveSavedAccount:savedAccount toGroupWithID:0 completionHandler:v5];
}

void __63__SFAccountDetailViewController__moveSavedAccountToMyPasswords__block_invoke(uint64_t a1, char a2)
{
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3221225472;
  v2[2] = __63__SFAccountDetailViewController__moveSavedAccountToMyPasswords__block_invoke_2;
  v2[3] = &unk_1E848FD38;
  v3 = a2;
  v2[4] = *(a1 + 32);
  dispatch_async(MEMORY[0x1E69E96A0], v2);
}

uint64_t __63__SFAccountDetailViewController__moveSavedAccountToMyPasswords__block_invoke_2(uint64_t a1)
{
  if (*(a1 + 40))
  {
    v2 = *(a1 + 32);

    return [v2 _recoverSavedAccount];
  }

  else
  {
    v4 = WBS_LOG_CHANNEL_PREFIXPasswords();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __63__SFAccountDetailViewController__moveSavedAccountToMyPasswords__block_invoke_2_cold_1(v4, v5, v6, v7, v8, v9, v10, v11);
    }

    return [*(a1 + 32) _presentErrorAlertForFailingToRecoverRecentlyDeletedSavedAccount];
  }
}

- (void)_presentErrorAlertForFailingToRecoverRecentlyDeletedSavedAccount
{
  v3 = MEMORY[0x1E69DC650];
  v4 = _WBSLocalizedString();
  v8 = [v3 alertControllerWithTitle:v4 message:0 imageNamed:@"alert-passwords" preferredStyle:1];

  v5 = MEMORY[0x1E69DC648];
  v6 = _WBSLocalizedString();
  v7 = [v5 actionWithTitle:v6 style:0 handler:0];
  [v8 addAction:v7];

  [(SFAccountDetailViewController *)self presentViewController:v8 animated:1 completion:0];
}

- (BOOL)_shouldShowAccountOptionsHeader
{
  snapshot = [(SFTableViewDiffableDataSource *)self->_tableViewDiffableDataSource snapshot];
  v4 = [snapshot itemIdentifiersInSectionWithIdentifier:&unk_1F5022DF8];
  v5 = [v4 count];

  if (v5 <= 1)
  {
    return self->_didShowAccountOptionsHeaderText;
  }

  else
  {
    v6 = 1;
    self->_didShowAccountOptionsHeaderText = 1;
  }

  return v6;
}

- (void)QRCodeScannerViewController:(id)controller didScanQRCodeWithURLValue:(id)value
{
  controllerCopy = controller;
  valueCopy = value;
  v8 = valueCopy;
  if (!self->_didAcceptTOTPQRCode)
  {
    if ([valueCopy safari_isOTPAuthMigrationURL])
    {
      if (self->_totpMigrationNavigationController)
      {
        goto LABEL_14;
      }

      v9 = [objc_alloc(MEMORY[0x1E69BC7F0]) initWithMigrationURL:v8];
      totpMigrationController = self->_totpMigrationController;
      self->_totpMigrationController = v9;

      if (self->_totpMigrationController)
      {
        self->_didAcceptTOTPQRCode = 1;
        numberOfCodes = [(PMTOTPMigrationController *)self->_totpMigrationController numberOfCodes];
        v12 = self->_totpMigrationController;
        if (numberOfCodes != 1)
        {
          [(PMTOTPMigrationController *)v12 setDelegate:self];
          v24 = objc_alloc(MEMORY[0x1E69DCCD8]);
          viewController = [(PMTOTPMigrationController *)self->_totpMigrationController viewController];
          v26 = [v24 initWithRootViewController:viewController];
          totpMigrationNavigationController = self->_totpMigrationNavigationController;
          self->_totpMigrationNavigationController = v26;

          [(UINavigationController *)self->_totpMigrationNavigationController setModalPresentationStyle:2];
          v33[0] = MEMORY[0x1E69E9820];
          v33[1] = 3221225472;
          v33[2] = __87__SFAccountDetailViewController_QRCodeScannerViewController_didScanQRCodeWithURLValue___block_invoke;
          v33[3] = &unk_1E848F810;
          v33[4] = self;
          [(SFAccountDetailViewController *)self dismissViewControllerAnimated:1 completion:v33];
          goto LABEL_14;
        }

        totpGenerators = [(PMTOTPMigrationController *)v12 totpGenerators];
        firstObject = [totpGenerators firstObject];

        if (firstObject)
        {
          goto LABEL_9;
        }
      }
    }

    v15 = [objc_alloc(MEMORY[0x1E69C8A60]) initWithOTPAuthURL:v8];
    if (v15)
    {
      firstObject = v15;
LABEL_9:
      [(SFAccountDetailViewController *)self _addTOTPGenerator:firstObject];
      self->_didAcceptTOTPQRCode = 1;
      [(SFAccountDetailViewController *)self dismissViewControllerAnimated:1 completion:0];

      goto LABEL_14;
    }

    v16 = WBS_LOG_CHANNEL_PREFIXPasswords();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
    {
      [SFAccountDetailViewController QRCodeScannerViewController:v16 didScanQRCodeWithURLValue:?];
    }

    v17 = MEMORY[0x1E69DC650];
    v18 = _WBSLocalizedString();
    v19 = [v17 alertControllerWithTitle:v18 message:0 preferredStyle:1];

    v20 = MEMORY[0x1E69DC648];
    v21 = _WBSLocalizedString();
    v28 = MEMORY[0x1E69E9820];
    v29 = 3221225472;
    v30 = __87__SFAccountDetailViewController_QRCodeScannerViewController_didScanQRCodeWithURLValue___block_invoke_833;
    v31 = &unk_1E848FBF8;
    v32 = v19;
    v22 = v19;
    v23 = [v20 actionWithTitle:v21 style:0 handler:&v28];
    [v22 addAction:{v23, v28, v29, v30, v31}];

    [controllerCopy presentViewController:v22 animated:1 completion:0];
  }

LABEL_14:
}

void __87__SFAccountDetailViewController_QRCodeScannerViewController_didScanQRCodeWithURLValue___block_invoke_833(uint64_t a1)
{
  v1 = [*(a1 + 32) presentingViewController];
  [v1 dismissViewControllerAnimated:1 completion:0];
}

- (void)_presentHideSecurityRecommendationConfirmationAlert
{
  v3 = MEMORY[0x1E69DC650];
  v4 = _WBSLocalizedString();
  v5 = _WBSLocalizedString();
  v6 = [v3 alertControllerWithTitle:v4 message:v5 imageNamed:@"alert-passwords" preferredStyle:_SFDeviceAlertStyle()];

  objc_initWeak(&location, self);
  v7 = MEMORY[0x1E69DC648];
  v8 = _WBSLocalizedString();
  v13 = MEMORY[0x1E69E9820];
  v14 = 3221225472;
  v15 = __84__SFAccountDetailViewController__presentHideSecurityRecommendationConfirmationAlert__block_invoke;
  v16 = &unk_1E848FFD0;
  objc_copyWeak(&v17, &location);
  v9 = [v7 actionWithTitle:v8 style:0 handler:&v13];
  [v6 addAction:{v9, v13, v14, v15, v16}];

  v10 = MEMORY[0x1E69DC648];
  v11 = _WBSLocalizedString();
  v12 = [v10 actionWithTitle:v11 style:1 handler:0];
  [v6 addAction:v12];

  [(SFAccountDetailViewController *)self presentViewController:v6 animated:1 completion:0];
  objc_destroyWeak(&v17);
  objc_destroyWeak(&location);
}

void __84__SFAccountDetailViewController__presentHideSecurityRecommendationConfirmationAlert__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    [WeakRetained _hideSecurityRecommendation];
    v1 = objc_loadWeakRetained(WeakRetained + 176);
    if (objc_opt_respondsToSelector())
    {
      [v1 accountDetailViewController:WeakRetained didHideWarning:WeakRetained[153]];
    }

    [WeakRetained _popViewController];
  }
}

- (void)_hideSecurityRecommendation
{
  v3 = [objc_alloc(MEMORY[0x1E69C89A0]) initWithIssueTypes:{-[WBSPasswordWarning issueTypes](self->_passwordWarning, "issueTypes")}];
  mEMORY[0x1E69C8A38] = [MEMORY[0x1E69C8A38] sharedStore];
  savedAccount = self->_savedAccount;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __60__SFAccountDetailViewController__hideSecurityRecommendation__block_invoke;
  v6[3] = &unk_1E848F810;
  v6[4] = self;
  [mEMORY[0x1E69C8A38] saveHideMarker:v3 forSavedAccount:savedAccount completionHandler:v6];
}

void __60__SFAccountDetailViewController__hideSecurityRecommendation__block_invoke(uint64_t a1)
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __60__SFAccountDetailViewController__hideSecurityRecommendation__block_invoke_2;
  block[3] = &unk_1E848F810;
  block[4] = *(a1 + 32);
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

- (BOOL)shouldSuppressAccountManagerLockedView
{
  WeakRetained = objc_loadWeakRetained(&self->_changePasswordSafariViewController);

  return WeakRetained || self->_isOneTimeSharingAccount;
}

- (void)passwordManagerWillLock
{
  tableView = [(SFAccountDetailViewController *)self tableView];
  contextMenuInteraction = [tableView contextMenuInteraction];
  [contextMenuInteraction dismissMenu];

  editMenuInteraction = self->_editMenuInteraction;

  [(UIEditMenuInteraction *)editMenuInteraction dismissMenu];
}

- (void)noteTableViewCellTextViewTapped:(id)tapped
{
  if (([(SFAccountDetailViewController *)self isEditing]& 1) == 0)
  {
    notesEntry = [(WBSSavedAccount *)self->_savedAccount notesEntry];
    v5 = [notesEntry length];

    if (!v5)
    {
      [(SFAccountDetailViewController *)self _setEditing:1 animated:1];
      textView = [(SFAccountNoteTableViewCell *)self->_notesCell textView];
      [textView becomeFirstResponder];
    }
  }
}

- (void)accountDetailHeaderViewCell:(id)cell titleTextFieldDidChange:(id)change
{
  text = [change text];
  titleForEditing = self->_titleForEditing;
  self->_titleForEditing = text;

  [(SFAccountDetailViewController *)self _updateHeaderViewCell];
}

- (void)returnKeyActivatedInAccountDetailHeaderViewCell:(id)cell
{
  editableTextField = [(SFEditableTableViewCell *)self->_userCell editableTextField];
  [editableTextField becomeFirstResponder];
}

- (void)totpMigrationControllerFinishedImport:(id)import
{
  importCopy = import;
  presentedViewController = [(SFAccountDetailViewController *)self presentedViewController];
  if (presentedViewController != self->_totpMigrationNavigationController)
  {
    goto LABEL_2;
  }

  totpMigrationController = self->_totpMigrationController;

  v5 = importCopy;
  if (totpMigrationController == importCopy)
  {
    [(SFAccountDetailViewController *)self dismissViewControllerAnimated:1 completion:0];
    totpMigrationNavigationController = self->_totpMigrationNavigationController;
    self->_totpMigrationNavigationController = 0;

    presentedViewController = self->_totpMigrationController;
    self->_totpMigrationController = 0;
LABEL_2:

    v5 = importCopy;
  }
}

- (void)totpMigrationController:(id)controller presentDetailsForSavedAccount:(id)account
{
  controllerCopy = controller;
  accountCopy = account;
  presentedViewController = [(SFAccountDetailViewController *)self presentedViewController];
  v8 = presentedViewController;
  if (presentedViewController != self->_totpMigrationNavigationController)
  {
    goto LABEL_2;
  }

  totpMigrationController = self->_totpMigrationController;

  if (totpMigrationController == controllerCopy)
  {
    v8 = [[SFAccountDetailViewController alloc] initWithSavedAccount:accountCopy passwordWarning:0 options:0];
    [(UINavigationController *)self->_totpMigrationNavigationController pushViewController:v8 animated:1];
LABEL_2:
  }
}

- (void)totpMigrationController:(id)controller presentPickerForGenerator:(id)generator
{
  controllerCopy = controller;
  generatorCopy = generator;
  presentedViewController = [(SFAccountDetailViewController *)self presentedViewController];
  if (presentedViewController == self->_totpMigrationNavigationController)
  {
    totpMigrationController = self->_totpMigrationController;

    if (totpMigrationController == controllerCopy)
    {
      v10 = objc_alloc_init(SFAccountPickerConfiguration);
      v11 = _WBSLocalizedString();
      [(SFAccountPickerConfiguration *)v10 setPrompt:v11];

      v12 = _WBSLocalizedString();
      [(SFAccountPickerConfiguration *)v10 setTitle:v12];

      [(SFAccountPickerConfiguration *)v10 setMinimumNumberOfCredentialsToShowLikelyMatchesSection:1];
      [(SFAccountPickerConfiguration *)v10 setShouldEnableAddingNewPasswordsIfPossible:1];
      [(SFAccountPickerConfiguration *)v10 setShouldHideCreatePasswordsInSettingsHint:1];
      heuristicallyDeterminedServiceNameHints = [generatorCopy heuristicallyDeterminedServiceNameHints];
      v14 = [heuristicallyDeterminedServiceNameHints count];

      if (v14)
      {
        heuristicallyDeterminedServiceNameHints2 = [generatorCopy heuristicallyDeterminedServiceNameHints];
        [(SFAccountPickerConfiguration *)v10 setServiceNameHintStrings:heuristicallyDeterminedServiceNameHints2];
      }

      v16 = [SFAccountPickerViewController alloc];
      v20 = MEMORY[0x1E69E9820];
      v21 = 3221225472;
      v22 = __83__SFAccountDetailViewController_totpMigrationController_presentPickerForGenerator___block_invoke;
      v23 = &unk_1E848FFF8;
      v17 = controllerCopy;
      v24 = v17;
      v25 = generatorCopy;
      v18 = [(SFAccountPickerViewController *)v16 initWithConfiguration:v10 completionHandler:&v20];
      v19 = [(PMTOTPMigrationController *)v17 viewController:v20];
      [v19 presentViewController:v18 animated:1 completion:0];
    }
  }

  else
  {
  }
}

void __83__SFAccountDetailViewController_totpMigrationController_presentPickerForGenerator___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 firstObject];
  if (v3)
  {
    v4 = v3;
    [*(a1 + 32) addGenerator:*(a1 + 40) toSavedAccount:v3 completionHandler:&__block_literal_global_859];
    v3 = v4;
  }
}

- (SFAccountDetailViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

void __94__SFAccountDetailViewController__sharePasswordWithPopoverPresentationControllerConfiguration___block_invoke_cold_1(void *a1)
{
  v2 = a1;
  v3 = [OUTLINED_FUNCTION_2() safari_privacyPreservingDescription];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_0_0(&dword_1D4644000, v4, v5, "Failed to authenticate for one time account sharing: %@", v6, v7, v8, v9, v10);
}

void __66__SFAccountDetailViewController__updateAccountModificationOptions__block_invoke_cold_1(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [OUTLINED_FUNCTION_2() _plugIn];
  v5 = [v4 localizedContainingName];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_0_0(&dword_1D4644000, v6, v7, "Failed to get Sign in with Apple authorization credential state for %@", v8, v9, v10, v11, v12);
}

- (void)accountAuthenticationModificationController:(void *)a1 didFailRequest:withError:.cold.1(void *a1)
{
  v2 = a1;
  v3 = [OUTLINED_FUNCTION_2() safari_privacyPreservingDescription];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_0_0(&dword_1D4644000, v4, v5, "Account Modification Extension request canceled with error: %{public}@", v6, v7, v8, v9, v10);
}

- (void)QRCodeScannerViewController:(void *)a1 didScanQRCodeWithURLValue:.cold.1(void *a1)
{
  v5 = *MEMORY[0x1E69E9840];
  v2 = a1;
  v3 = [OUTLINED_FUNCTION_2() absoluteString];
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(&dword_1D4644000, v1, OS_LOG_TYPE_DEBUG, "Ignoring invalid QR-encoded URL. %@", v4, 0xCu);
}

@end