@interface AKAuthorizationInputPaneViewController
- (AKAuthorizationInputPaneViewController)init;
- (AKAuthorizationInputPaneViewController)initWithPresentationContext:(id)a3 scopeChoices:(id)a4;
- (AKAuthorizationViewController)authorizationViewController;
- (BOOL)_emailScopeAllowsAuthorization;
- (BOOL)_getValidEditingGivenName:(id *)a3 familyName:(id *)a4;
- (BOOL)_hasEmailScope;
- (BOOL)_hasNameScope;
- (BOOL)_hasOneLoginChoice;
- (BOOL)_hasSharedAccountLoginChoices;
- (BOOL)_isUnderageUser;
- (BOOL)_nameScopeAllowsAuthorization;
- (BOOL)_shouldAllowAuthorization;
- (BOOL)_shouldOverrideIntrinsicContentHeight;
- (BOOL)_shouldPresentCreateFlow;
- (BOOL)_shouldPresentUpgradeFlow;
- (BOOL)tableView:(id)a3 shouldHighlightRowAtIndexPath:(id)a4;
- (BOOL)textField:(id)a3 shouldChangeCharactersInRange:(_NSRange)a4 replacementString:(id)a5;
- (BOOL)textFieldShouldReturn:(id)a3;
- (BOOL)validateReadyForAuthorization;
- (double)_computeNameEditHeightChange;
- (double)_mainSectionScreenMaxY;
- (double)_padNameEditHeightChange;
- (double)_phoneNameEditHeightChange;
- (double)contentScrollOffset;
- (double)intrinsicContentHeight;
- (id)_cellForScope:(id)a3 localRow:(int64_t)a4;
- (id)_clearButton;
- (id)_defaultSharedEmail;
- (id)_doneBarButtonItem;
- (id)_editingNameCellForRow:(unint64_t)a3;
- (id)_emailCellForLocalRow:(int64_t)a3;
- (id)_firstLoginChoice;
- (id)_hideMyEmailCell;
- (id)_localizedAuthorizationPrefix:(BOOL)a3;
- (id)_localizedAuthorizationString;
- (id)_localizedChoiceString;
- (id)_localizedEmailKey;
- (id)_localizedFirstPartyAuthorizationStringWithAppName:(id)a3 accountName:(id)a4;
- (id)_localizedInfoString;
- (id)_localizedNameKey;
- (id)_localizedPrivacyMessageStringForManagedAppleID;
- (id)_localizedSharedAccountsChoiceString;
- (id)_localizedSubscriptionString;
- (id)_localizedUpgradeString;
- (id)_loginChoiceCellForRow:(unint64_t)a3;
- (id)_loginChoiceTableViewCellForRow:(unint64_t)a3;
- (id)_nameCell;
- (id)_nameCellDetailLabelTextForManagedAppleID;
- (id)_paneTitleString;
- (id)_selectedLoginChoice;
- (id)_shareMyEmailCell;
- (id)_singleEmailCellForIndex:(int64_t)a3;
- (id)_textFieldForRow:(unint64_t)a3;
- (id)_textFromTextField:(id)a3;
- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4;
- (int64_t)_numberOfRowsInValidatedScopes;
- (int64_t)numberOfSectionsInTableView:(id)a3;
- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4;
- (unint64_t)_numberOfRowsInScope:(id)a3;
- (void)_addAdditionalCTAToContext:(id)a3;
- (void)_addAuthorizationButtonToPaneContext:(id)a3;
- (void)_addShimToStackView:(id)a3;
- (void)_addUseOtherIDButtonToContext:(id)a3;
- (void)_beginEditingRow:(unint64_t)a3;
- (void)_createAppIconViewWithIcon:(id)a3;
- (void)_didSelectEditScope:(id)a3 options:(id)a4;
- (void)_doneButtonSelected:(id)a3;
- (void)_enableOrDisableConfirmButton;
- (void)_escapeKeyPressed;
- (void)_handleAuthorizationError:(id)a3;
- (void)_loadAppIconViewImage;
- (void)_nameEditDone;
- (void)_paneDelegate_authorizationPaneViewControllerDismissWithAuthorization:(id)a3 error:(id)a4;
- (void)_paneDelegate_didRequestAuthorizationWithUserProvidedInformation:(id)a3 completion:(id)a4;
- (void)_performAdditionalCTA:(id)a3;
- (void)_performAuthorizationWithRawPassword:(id)a3;
- (void)_performAuthorizationWithRawPassword:(id)a3 completionHandler:(id)a4;
- (void)_performPasswordAuthentication;
- (void)_prepareScopeChoices:(id)a3 withLoginChoice:(id)a4;
- (void)_reloadDataAnimated:(BOOL)a3 heightChange:(id)a4;
- (void)_reloadDataAnimated:(BOOL)a3 heightChange:(id)a4 animation:(id)a5;
- (void)_reloadDataAnimated:(BOOL)a3 heightChange:(id)a4 animation:(id)a5 completion:(id)a6;
- (void)_selectEmailLocalRow:(int64_t)a3;
- (void)_selectHideMyEmail;
- (void)_selectLoginChoiceCell;
- (void)_selectLoginChoiceCell:(id)a3;
- (void)_selectRow:(int64_t)a3;
- (void)_selectScope:(id)a3 localRow:(int64_t)a4;
- (void)_selectShareMyEmail;
- (void)_selectSingleEmailAtIndex:(int64_t)a3;
- (void)_setCancelButtonEnabled:(BOOL)a3;
- (void)_setEditableScopeChoicesForManagedAppleID;
- (void)_setFamilyNameFromTextField:(id)a3;
- (void)_setGivenNameFromTextField:(id)a3;
- (void)_setupAlternateButton;
- (void)_setupAnalyticsReport;
- (void)_setupAppIconView;
- (void)_setupEditableScopeChoices;
- (void)_setupEscapeKeyListener;
- (void)_setupFamilyNameCell:(id)a3;
- (void)_setupGivenNameCell:(id)a3;
- (void)_setupInfoLabel;
- (void)_setupLoginChoiceView;
- (void)_setupPrivacyLink;
- (void)_setupTableView;
- (void)_setupUpgradeFromPasswordBulletPointViews;
- (void)_setupValidatedScopes;
- (void)_transitionFromEditingNameAnimated:(BOOL)a3;
- (void)_transitionToEditingNameAnimated:(BOOL)a3;
- (void)_updateAnalyticsReport;
- (void)_updateDataSourceWithValidEditingName;
- (void)_updateEditableScopeChoicesWithPrivateEmail:(BOOL)a3;
- (void)_updateInfoLabelStringWithAppName:(id)a3;
- (void)_updateLayoutForHeightChange:(double)a3;
- (void)_updatePaneTitleForEditing:(BOOL)a3;
- (void)_useOtherIDButtonSelected:(id)a3;
- (void)_userCanceledPanel;
- (void)dealloc;
- (void)passwordAuthenticationCompletedWithResults:(id)a3 error:(id)a4;
- (void)performPasswordAuthentication;
- (void)setEditingName:(BOOL)a3 shouldClear:(BOOL)a4 animated:(BOOL)a5;
- (void)setEmailExpanded:(BOOL)a3 animated:(BOOL)a4;
- (void)subPaneConfirmButtonDidEnterProcessingState:(id)a3;
- (void)subPaneConfirmButtonPerformAccountCreation:(id)a3;
- (void)subPaneConfirmButtonPerformExternalAuthentication:(id)a3;
- (void)subpaneConfirmButtonDidFailBiometry:(id)a3;
- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidDisappear:(BOOL)a3;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)a3;
- (void)viewWillDisappear:(BOOL)a3;
@end

@implementation AKAuthorizationInputPaneViewController

- (AKAuthorizationInputPaneViewController)init
{
  v3 = self;
  [(AKAuthorizationInputPaneViewController *)self doesNotRecognizeSelector:a2];
  objc_storeStrong(&v3, 0);
  return 0;
}

- (AKAuthorizationInputPaneViewController)initWithPresentationContext:(id)a3 scopeChoices:(id)a4
{
  v11 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v9 = 0;
  objc_storeStrong(&v9, a4);
  v4 = v11;
  v11 = 0;
  v8.receiver = v4;
  v8.super_class = AKAuthorizationInputPaneViewController;
  v11 = [(AKAuthorizationPaneViewController *)&v8 init];
  objc_storeStrong(&v11, v11);
  if (v11)
  {
    objc_storeStrong(&v11->_presentationContext, location[0]);
    objc_storeStrong(&v11->_editableScopeChoices, v9);
    [(AKAuthorizationInputPaneViewController *)v11 _setupAnalyticsReport];
    [(AKAuthorizationInputPaneViewController *)v11 _setupValidatedScopes];
    [(AKAuthorizationInputPaneViewController *)v11 _setupEditableScopeChoices];
  }

  v6 = MEMORY[0x277D82BE0](v11);
  objc_storeStrong(&v9, 0);
  objc_storeStrong(location, 0);
  objc_storeStrong(&v11, 0);
  return v6;
}

- (void)dealloc
{
  v4 = self;
  v3 = a2;
  [(AKCAReporter *)self->_analyticsReport sendReport];
  v2.receiver = v4;
  v2.super_class = AKAuthorizationInputPaneViewController;
  [(AKAuthorizationInputPaneViewController *)&v2 dealloc];
}

- (void)_setupEditableScopeChoices
{
  v21 = self;
  v20 = a2;
  v11 = [(AKAuthorizationInputPaneViewController *)self presentationContext];
  v10 = [(AKAuthorizationPresentationContext *)v11 userInformation];
  v12 = [v10 isManagedAppleID];
  MEMORY[0x277D82BD8](v10);
  v19 = v12;
  v13 = [(AKAuthorizationScopeChoices *)v21->_editableScopeChoices userInformation];
  v18 = [(AKUserInformation *)v13 reachableEmails];
  v14 = [(AKAuthorizationScopeChoices *)v21->_editableScopeChoices userInformation];
  location = [(AKUserInformation *)v14 previouslySelectedEmail];
  *&v2 = MEMORY[0x277D82BD8](v14).n128_u64[0];
  if (v12)
  {
    [(AKAuthorizationInputPaneViewController *)v21 _setEditableScopeChoicesForManagedAppleID];
  }

  else
  {
    v15 = 0;
    v9 = 0;
    if ([(AKAuthorizationInputPaneViewController *)v21 _isUnderageUser])
    {
      v16 = [MEMORY[0x277CF0228] sharedManager];
      v15 = 1;
      v9 = [v16 isTiburonU13Enabled];
    }

    if (v15)
    {
      MEMORY[0x277D82BD8](v16);
    }

    if (v9)
    {
      [(AKAuthorizationInputPaneViewController *)v21 _setEditableScopeChoicesForUnderageUser];
    }

    else
    {
      -[AKAuthorizationScopeChoices setIndexOfChosenEmail:](v21->_editableScopeChoices, "setIndexOfChosenEmail:", [v18 indexOfObject:location]);
      editableScopeChoices = v21->_editableScopeChoices;
      v8 = [(AKAuthorizationScopeChoices *)editableScopeChoices userInformation];
      v7 = [(AKUserInformation *)v8 previouslyWantedPrivateEmail];
      -[AKAuthorizationScopeChoices setWantsPrivateEmail:](editableScopeChoices, "setWantsPrivateEmail:", [v7 BOOLValue]);
      MEMORY[0x277D82BD8](v7);
      MEMORY[0x277D82BD8](v8);
    }
  }

  v4 = [(AKAuthorizationPresentationContext *)v21->_presentationContext loginChoices];
  v5 = [v4 count];
  *&v3 = MEMORY[0x277D82BD8](v4).n128_u64[0];
  if (v5)
  {
    [(AKAuthorizationScopeChoices *)v21->_editableScopeChoices setIndexOfChosenLogin:0, v3];
  }

  objc_storeStrong(&location, 0);
  objc_storeStrong(&v18, 0);
}

- (void)viewDidLoad
{
  v55 = self;
  v54 = a2;
  v53.receiver = self;
  v53.super_class = AKAuthorizationInputPaneViewController;
  [(AKAuthorizationPaneViewController *)&v53 viewDidLoad];
  v46 = +[AKAuthorizationAppearance paneBackgroundColor];
  v45 = [(AKAuthorizationInputPaneViewController *)v55 view];
  [v45 setBackgroundColor:v46];
  MEMORY[0x277D82BD8](v45);
  v47 = [MEMORY[0x277CF0228] sharedManager];
  v48 = [v47 isAuthKitSolariumFeatureEnabled];
  v2 = MEMORY[0x277D82BD8](v47).n128_u64[0];
  if (v48)
  {
    v40 = [(AKAuthorizationPaneViewController *)v55 headerPaneContext];
    v39 = [(AKAuthorizationPaneContext *)v40 stackView];
    [(UIStackView *)v39 setAxis:0];
    MEMORY[0x277D82BD8](v39);
    MEMORY[0x277D82BD8](v40);
    NSDirectionalEdgeInsetsMake_0();
    v49 = v3;
    v50 = v4;
    v51 = v5;
    v52 = v6;
    v42 = [(AKAuthorizationPaneViewController *)v55 headerPaneContext];
    v41 = [(AKAuthorizationPaneContext *)v42 stackView];
    [(UIStackView *)v41 setDirectionalLayoutMargins:v49, v50, v51, v52];
    MEMORY[0x277D82BD8](v41);
    *&v7 = MEMORY[0x277D82BD8](v42).n128_u64[0];
    v44 = [(AKAuthorizationPaneViewController *)v55 headerPaneContext];
    v43 = [(AKAuthorizationPaneContext *)v44 stackView];
    [(UIStackView *)v43 setLayoutMarginsRelativeArrangement:1];
    MEMORY[0x277D82BD8](v43);
    v2 = MEMORY[0x277D82BD8](v44).n128_u64[0];
  }

  [(AKAuthorizationInputPaneViewController *)v55 _setupTableView];
  v37 = [MEMORY[0x277CF0228] sharedManager];
  v38 = [v37 isAuthKitSolariumFeatureEnabled];
  v8 = MEMORY[0x277D82BD8](v37).n128_u64[0];
  if (!v38)
  {
    v35 = v55;
    v36 = [(AKAuthorizationPaneViewController *)v55 paneHeaderStackView];
    [(AKAuthorizationInputPaneViewController *)v35 _addShimToStackView:?];
    v8 = MEMORY[0x277D82BD8](v36).n128_u64[0];
  }

  [(AKAuthorizationInputPaneViewController *)v55 _setupAppIconView];
  [(AKAuthorizationInputPaneViewController *)v55 _setupInfoLabel];
  [(AKAuthorizationInputPaneViewController *)v55 _setupLoginChoiceView];
  v33 = [MEMORY[0x277CF0228] sharedManager];
  v34 = [v33 isAuthKitSolariumFeatureEnabled];
  v9 = MEMORY[0x277D82BD8](v33).n128_u64[0];
  if (!v34)
  {
    v31 = v55;
    v32 = [(AKAuthorizationPaneViewController *)v55 paneHeaderStackView];
    [(AKAuthorizationInputPaneViewController *)v31 _addShimToStackView:?];
    v9 = MEMORY[0x277D82BD8](v32).n128_u64[0];
  }

  [(AKAuthorizationInputPaneViewController *)v55 _setupNameAndEmailScopeViews];
  [(AKAuthorizationInputPaneViewController *)v55 _setupPrivacyLink];
  v29 = [MEMORY[0x277CF0228] sharedManager];
  v30 = [v29 isAuthKitSolariumFeatureEnabled];
  v10 = MEMORY[0x277D82BD8](v29).n128_u64[0];
  if (!v30)
  {
    v27 = v55;
    v28 = [(AKAuthorizationPaneViewController *)v55 paneFooterStackView];
    [(AKAuthorizationInputPaneViewController *)v27 _addShimToStackView:?];
    v10 = MEMORY[0x277D82BD8](v28).n128_u64[0];
  }

  v17 = v55;
  v18 = [(AKAuthorizationPaneViewController *)v55 footerPaneContext];
  [(AKAuthorizationInputPaneViewController *)v17 _addAuthorizationButtonToPaneContext:?];
  *&v11 = MEMORY[0x277D82BD8](v18).n128_u64[0];
  v19 = v55;
  v20 = [(AKAuthorizationPaneViewController *)v55 footerPaneContext];
  [(AKAuthorizationInputPaneViewController *)v19 _addAdditionalCTAToContext:?];
  *&v12 = MEMORY[0x277D82BD8](v20).n128_u64[0];
  [(AKAuthorizationInputPaneViewController *)v55 _setupAlternateButton];
  v21 = v55;
  v22 = [(AKAuthorizationPaneViewController *)v55 paneFooterStackView];
  [(AKAuthorizationInputPaneViewController *)v21 _addShimToStackView:?];
  *&v13 = MEMORY[0x277D82BD8](v22).n128_u64[0];
  [(AKAuthorizationInputPaneViewController *)v55 _updatePaneTitleForEditing:0, v13];
  [(AKAuthorizationInputPaneViewController *)v55 _setupEscapeKeyListener];
  v23 = MEMORY[0x277CCAAD0];
  v24 = [(AKAuthorizationPaneViewController *)v55 mutableConstraints];
  [v23 activateConstraints:?];
  v25 = [MEMORY[0x277CF0228] sharedManager];
  v26 = [v25 isAuthKitSolariumFeatureEnabled];
  *&v14 = MEMORY[0x277D82BD8](v25).n128_u64[0];
  if (v26)
  {
    v16 = [(AKAuthorizationPaneViewController *)v55 paneFooterStackView];
    v15 = [(AKAuthorizationPaneViewController *)v55 tableView];
    [(UIStackView *)v16 ak_addMagicPocketToScrollView:?];
    MEMORY[0x277D82BD8](v15);
    MEMORY[0x277D82BD8](v16);
  }
}

- (void)viewWillAppear:(BOOL)a3
{
  v8 = self;
  v7 = a2;
  v6 = a3;
  v5.receiver = self;
  v5.super_class = AKAuthorizationInputPaneViewController;
  [(AKAuthorizationPaneViewController *)&v5 viewWillAppear:a3];
  if ([(AKAuthorizationInputPaneViewController *)v8 editableScopeChoicesChanged])
  {
    [(AKAuthorizationInputPaneViewController *)v8 setEditableScopeChoicesChanged:0];
    v3 = [(AKAuthorizationPaneViewController *)v8 tableView];
    [(UITableView *)v3 reloadData];
    MEMORY[0x277D82BD8](v3);
  }

  [(AKAuthorizationInputPaneViewController *)v8 _enableOrDisableConfirmButton];
  if (([(AKAuthorizationInputPaneViewController *)v8 isViewLoaded]& 1) != 0 && ![(AKAuthorizationInputPaneViewController *)v8 isBeingDismissed])
  {
    v4 = *MEMORY[0x277CBF3A8];
    [(AKAuthorizationInputPaneViewController *)v8 setPreferredContentSize:*MEMORY[0x277CBF3A8], *(MEMORY[0x277CBF3A8] + 8)];
    [(AKAuthorizationPaneViewController *)v8 sizeToFitPaneContent];
  }
}

- (void)viewDidAppear:(BOOL)a3
{
  v6 = self;
  v5 = a2;
  v4 = a3;
  v3.receiver = self;
  v3.super_class = AKAuthorizationInputPaneViewController;
  [(AKAuthorizationPaneViewController *)&v3 viewDidAppear:a3];
  if ([(AKAuthorizationInputPaneViewController *)v6 isEditingName])
  {
    [(AKAuthorizationInputPaneViewController *)v6 _beginEditing];
  }
}

- (void)viewWillDisappear:(BOOL)a3
{
  v6 = self;
  v5 = a2;
  v4 = a3;
  v3.receiver = self;
  v3.super_class = AKAuthorizationInputPaneViewController;
  [(AKAuthorizationInputPaneViewController *)&v3 viewWillDisappear:a3];
  [(AKAuthorizationInputPaneViewController *)v6 _updateDataSourceWithValidEditingName];
}

- (void)viewDidDisappear:(BOOL)a3
{
  v10 = self;
  v9 = a2;
  v8 = a3;
  v7.receiver = self;
  v7.super_class = AKAuthorizationInputPaneViewController;
  [(AKAuthorizationInputPaneViewController *)&v7 viewDidDisappear:a3];
  v5 = [MEMORY[0x277CF0218] currentDevice];
  v6 = [v5 isFaceIDCapable];
  *&v3 = MEMORY[0x277D82BD8](v5).n128_u64[0];
  if (v6)
  {
    v4 = [(AKAuthorizationInputPaneViewController *)v10 confirmButton];
    [(AKAuthorizationSubPaneConfirmButton *)v4 enableAuthorizationCapability:0];
    MEMORY[0x277D82BD8](v4);
  }
}

- (void)_setupAnalyticsReport
{
  v28 = self;
  location[1] = a2;
  v9 = [(AKAuthorizationInputPaneViewController *)self presentationContext];
  v8 = [(AKAuthorizationPresentationContext *)v9 credentialRequestContext];
  v7 = [v8 requestIdentifier];
  location[0] = [v7 UUIDString];
  MEMORY[0x277D82BD8](v7);
  MEMORY[0x277D82BD8](v8);
  MEMORY[0x277D82BD8](v9);
  v2 = [[AKCATiburonInputUIReporter alloc] initWithRequestID:location[0]];
  analyticsReport = v28->_analyticsReport;
  v28->_analyticsReport = v2;
  v22 = 0;
  v23 = &v22;
  v24 = 0x20000000;
  v25 = 32;
  v26 = 0;
  v17 = 0;
  v18 = &v17;
  v19 = 0x20000000;
  v20 = 32;
  v21 = 0;
  v6 = [(AKAuthorizationInputPaneViewController *)v28 presentationContext];
  v5 = [(AKAuthorizationPresentationContext *)v6 loginChoices];
  v10 = MEMORY[0x277D85DD0];
  v11 = -1073741824;
  v12 = 0;
  v13 = __63__AKAuthorizationInputPaneViewController__setupAnalyticsReport__block_invoke;
  v14 = &unk_2784A6F88;
  v15 = &v22;
  v16 = &v17;
  [v5 enumerateObjectsUsingBlock:?];
  MEMORY[0x277D82BD8](v5);
  *&v4 = MEMORY[0x277D82BD8](v6).n128_u64[0];
  [(AKCATiburonInputUIReporter *)v28->_analyticsReport didShowAppleID:v23[3] & 1, v4];
  [(AKCATiburonInputUIReporter *)v28->_analyticsReport setPasswordCredentialCount:v18[3]];
  _Block_object_dispose(&v17, 8);
  _Block_object_dispose(&v22, 8);
  objc_storeStrong(location, 0);
}

void __63__AKAuthorizationInputPaneViewController__setupAnalyticsReport__block_invoke(void *a1, void *a2)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  if ([location[0] isAppleIDAuthorization])
  {
    *(*(a1[4] + 8) + 24) = 1;
  }

  else
  {
    ++*(*(a1[5] + 8) + 24);
  }

  objc_storeStrong(location, 0);
}

- (void)_setupValidatedScopes
{
  v5 = self;
  v4[1] = a2;
  v4[0] = [MEMORY[0x277CBEB18] array];
  if ([(AKAuthorizationInputPaneViewController *)v5 _hasNameScope])
  {
    [v4[0] addObject:*MEMORY[0x277CEFFE8]];
  }

  if ([(AKAuthorizationInputPaneViewController *)v5 _hasEmailScope])
  {
    [v4[0] addObject:*MEMORY[0x277CEFFE0]];
  }

  v2 = [v4[0] copy];
  validatedScopes = v5->_validatedScopes;
  v5->_validatedScopes = v2;
  MEMORY[0x277D82BD8](validatedScopes);
  objc_storeStrong(v4, 0);
}

- (void)_setupTableView
{
  v14 = [(AKAuthorizationPaneViewController *)self tableView];
  [(UITableView *)v14 registerClass:objc_opt_class() forCellReuseIdentifier:@"AKAuthorizationScopeDetailTableViewCell-Name"];
  v15 = [(AKAuthorizationPaneViewController *)self tableView];
  [(UITableView *)v15 registerClass:objc_opt_class() forCellReuseIdentifier:@"AKAuthorizationScopeEditTableViewCell-Name"];
  v16 = [(AKAuthorizationPaneViewController *)self tableView];
  [(UITableView *)v16 registerClass:objc_opt_class() forCellReuseIdentifier:@"AKAuthorizationScopeDetailTableViewCell-Email-Summary"];
  v17 = [(AKAuthorizationPaneViewController *)self tableView];
  [(UITableView *)v17 registerClass:objc_opt_class() forCellReuseIdentifier:@"AKAuthorizationScopeDetailTableViewCell-Email-Single"];
  v18 = [MEMORY[0x277CF0228] sharedManager];
  v19 = [v18 isSiwaCredentialSharingEnabled];
  *&v2 = MEMORY[0x277D82BD8](v18).n128_u64[0];
  if (v19)
  {
    v13 = [(AKAuthorizationPaneViewController *)self tableView];
    [(UITableView *)v13 registerClass:objc_opt_class() forCellReuseIdentifier:@"AKAuthorizationLoginChoiceCell"];
    v3 = MEMORY[0x277D82BD8](v13).n128_u64[0];
  }

  else
  {
    v12 = [(AKAuthorizationPaneViewController *)self tableView];
    [(UITableView *)v12 registerClass:objc_opt_class() forCellReuseIdentifier:@"AKAuthorizationLoginChoiceCell"];
    v3 = MEMORY[0x277D82BD8](v12).n128_u64[0];
  }

  v9 = [(AKAuthorizationInputPaneViewController *)self authorizationViewController];
  v10 = ![(AKAuthorizationViewController *)v9 _isManagedAppleID];
  v4 = MEMORY[0x277D82BD8](v9).n128_u64[0];
  v20 = 0;
  v11 = 0;
  if (v10)
  {
    v8 = 0;
    if ([(AKAuthorizationInputPaneViewController *)self _isUnderageUser])
    {
      v21 = [MEMORY[0x277CF0228] sharedManager];
      v20 = 1;
      v8 = [v21 isTiburonU13Enabled];
    }

    v11 = (v8 & 1) == 0;
  }

  if (v20)
  {
    v4 = MEMORY[0x277D82BD8](v21).n128_u64[0];
  }

  v5 = [(AKAuthorizationPaneViewController *)self tableView];
  [(UITableView *)v5 setAllowsSelection:v11];
  v6 = [(AKAuthorizationPaneViewController *)self tableView];
  [(UITableView *)v6 setDataSource:self];
  v7 = [(AKAuthorizationPaneViewController *)self tableView];
  [(UITableView *)v7 setDelegate:self];
  MEMORY[0x277D82BD8](v7);
}

- (void)_setupAppIconView
{
  v10 = self;
  v9[1] = a2;
  v8 = [(AKAuthorizationInputPaneViewController *)self presentationContext];
  v9[0] = [AKIcon iconWithPresentationContext:?];
  if ([v9[0] iconType] == 1)
  {
    +[AKAuthorizationPaneMetrics iconSize];
    v5 = [AKIcon iconWithName:@"AppleLogo" size:v3, v4];
    v6 = v9[0];
    v9[0] = v5;
    *&v2 = MEMORY[0x277D82BD8](v6).n128_u64[0];
  }

  [(AKAuthorizationInputPaneViewController *)v10 _createAppIconViewWithIcon:v9[0], v2, v9];
  [(AKAuthorizationInputPaneViewController *)v10 _loadAppIconViewImage];
  objc_storeStrong(location, 0);
}

- (void)_setupInfoLabel
{
  v5 = [AKAuthorizationSubPaneInfoLabel alloc];
  v6 = [(AKAuthorizationInputPaneViewController *)self _localizedInfoString];
  v2 = [(AKAuthorizationSubPaneInfoLabel *)v5 initWithString:?];
  infoLabel = self->_infoLabel;
  self->_infoLabel = v2;
  MEMORY[0x277D82BD8](infoLabel);
  *&v4 = MEMORY[0x277D82BD8](v6).n128_u64[0];
  v7 = self->_infoLabel;
  +[AKAuthorizationPaneMetrics infoLabelBottomSpacing];
  [(AKAuthorizationSubPane *)v7 setCustomSpacingAfter:?];
  v8 = [(AKAuthorizationPaneViewController *)self headerPaneContext];
  [(AKAuthorizationPaneContext *)v8 addSubPane:self->_infoLabel];
  MEMORY[0x277D82BD8](v8);
}

- (void)_setupLoginChoiceView
{
  if ([(AKAuthorizationInputPaneViewController *)self _shouldPresentUpgradeFlow])
  {
    [(AKAuthorizationInputPaneViewController *)self _setupUpgradeFromPasswordBulletPointViews];
  }
}

- (void)_setupUpgradeFromPasswordBulletPointViews
{
  v40 = self;
  v39 = a2;
  v32 = [MEMORY[0x277CF0218] currentDevice];
  v33 = [v32 isBiometricAuthCapable];
  *&v2 = MEMORY[0x277D82BD8](v32).n128_u64[0];
  v38 = v33;
  v37 = 0;
  if (v33)
  {
    v30 = [MEMORY[0x277CF0218] currentDevice];
    v31 = [v30 isFaceIDCapable];
    MEMORY[0x277D82BD8](v30);
    v36 = v31;
    if (v31)
    {
      v29 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v3 = [v29 localizedStringForKey:@"AUTHORIZE_UPGRADE_MESSAGE_1_FACEID" value:&stru_28358EF68 table:@"Localizable"];
      v4 = v37;
      v37 = v3;
      MEMORY[0x277D82BD8](v4);
      v5 = MEMORY[0x277D82BD8](v29).n128_u64[0];
    }

    else
    {
      v28 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v6 = [v28 localizedStringForKey:@"AUTHORIZE_UPGRADE_MESSAGE_1_TOUCHID" value:&stru_28358EF68 table:@"Localizable"];
      v7 = v37;
      v37 = v6;
      MEMORY[0x277D82BD8](v7);
      v5 = MEMORY[0x277D82BD8](v28).n128_u64[0];
    }
  }

  else
  {
    v27 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v8 = [v27 localizedStringForKey:@"AUTHORIZE_UPGRADE_MESSAGE_1_NOBIO_REBRAND" value:&stru_28358EF68 table:@"Localizable"];
    v9 = v37;
    v37 = v8;
    MEMORY[0x277D82BD8](v9);
    v5 = MEMORY[0x277D82BD8](v27).n128_u64[0];
  }

  v13 = [(AKAuthorizationPaneViewController *)v40 headerPaneContext];
  +[AKAuthorizationPaneMetrics upgradeAccountTopSpacing];
  [(AKAuthorizationPaneContext *)v13 addEmptyViewWithSpacing:?];
  MEMORY[0x277D82BD8](v13);
  v14 = [AKAuthorizationBulletPointSubPane alloc];
  v17 = +[AKAuthorizationBiometricImage biometricImage];
  v16 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v15 = [v16 localizedStringForKey:@"AUTHORIZE_UPGRADE_TITLE_1" value:? table:?];
  v35 = [AKAuthorizationBulletPointSubPane initWithImage:v14 title:"initWithImage:title:message:" message:v17];
  MEMORY[0x277D82BD8](v15);
  MEMORY[0x277D82BD8](v16);
  MEMORY[0x277D82BD8](v17);
  v18 = [AKAuthorizationBulletPointSubPane alloc];
  v23 = [MEMORY[0x277D755B8] ak_imageNamed:@"lock.fill"];
  v22 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v21 = [v22 localizedStringForKey:@"AUTHORIZE_UPGRADE_TITLE_2" value:&stru_28358EF68 table:@"Localizable"];
  v20 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v19 = [v20 localizedStringForKey:@"AUTHORIZE_UPGRADE_MESSAGE_2" value:&stru_28358EF68 table:@"Localizable"];
  v34 = [(AKAuthorizationBulletPointSubPane *)v18 initWithImage:v23 title:v21 message:?];
  MEMORY[0x277D82BD8](v19);
  MEMORY[0x277D82BD8](v20);
  MEMORY[0x277D82BD8](v21);
  MEMORY[0x277D82BD8](v22);
  *&v10 = MEMORY[0x277D82BD8](v23).n128_u64[0];
  v24 = [(AKAuthorizationPaneViewController *)v40 headerPaneContext];
  [(AKAuthorizationPaneContext *)v24 addSubPane:v35];
  *&v11 = MEMORY[0x277D82BD8](v24).n128_u64[0];
  v25 = [(AKAuthorizationPaneViewController *)v40 headerPaneContext];
  [(AKAuthorizationPaneContext *)v25 addSubPane:v34];
  *&v12 = MEMORY[0x277D82BD8](v25).n128_u64[0];
  v26 = v35;
  +[AKAuthorizationPaneMetrics upgradeAccountInterItemSpacing];
  [(AKAuthorizationSubPane *)v26 setCustomSpacingAfter:?];
  objc_storeStrong(&v34, 0);
  objc_storeStrong(&v35, 0);
  objc_storeStrong(&v37, 0);
}

- (void)_setupAlternateButton
{
  v3 = [(AKAuthorizationPaneViewController *)self footerPaneContext];
  [(AKAuthorizationInputPaneViewController *)self _addUseOtherIDButtonToContext:?];
  MEMORY[0x277D82BD8](v3);
}

- (void)_createAppIconViewWithIcon:(id)a3
{
  v41[2] = *MEMORY[0x277D85DE8];
  v40 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v30 = [MEMORY[0x277CF0228] sharedManager];
  v31 = [v30 isAuthKitSolariumFeatureEnabled];
  *&v3 = MEMORY[0x277D82BD8](v30).n128_u64[0];
  if (!v31)
  {
    v38 = objc_alloc_init(MEMORY[0x277D75D18]);
    v27 = [(AKAuthorizationPaneViewController *)v40 headerPaneContext];
    v26 = [(AKAuthorizationPaneContext *)v27 stackView];
    [(UIStackView *)v26 addArrangedSubview:v38];
    MEMORY[0x277D82BD8](v26);
    *&v4 = MEMORY[0x277D82BD8](v27).n128_u64[0];
    v29 = [(AKAuthorizationPaneViewController *)v40 headerPaneContext];
    v28 = [(AKAuthorizationPaneContext *)v29 stackView];
    +[AKAuthorizationPaneMetrics iconTopSpacing];
    [(UIStackView *)v28 setCustomSpacing:v38 afterView:?];
    MEMORY[0x277D82BD8](v28);
    MEMORY[0x277D82BD8](v29);
    objc_storeStrong(&v38, 0);
  }

  v37 = [location[0] automaskedImage];
  MEMORY[0x277D82BD8](0);
  v36 = [[AKAuthorizationSubPaneImage alloc] initWithImage:v37];
  v25 = [(AKAuthorizationSubPaneImage *)v36 image];
  [(UIImage *)v25 size];
  v34 = 0;
  v32 = 0;
  if (v5 == 0.0)
  {
    v24 = 1.0;
  }

  else
  {
    v35 = [(AKAuthorizationSubPaneImage *)v36 image];
    v34 = 1;
    [(UIImage *)v35 size];
    v23 = v6;
    v33 = [(AKAuthorizationSubPaneImage *)v36 image];
    v32 = 1;
    [(UIImage *)v33 size];
    v24 = v23 / v7;
  }

  if (v32)
  {
    MEMORY[0x277D82BD8](v33);
  }

  if (v34)
  {
    MEMORY[0x277D82BD8](v35);
  }

  MEMORY[0x277D82BD8](v25);
  v11 = v36;
  v20 = [(AKAuthorizationSubPaneImage *)v36 imageView];
  v19 = [(UIImageView *)v20 heightAnchor];
  +[AKAuthorizationPaneMetrics iconSize];
  v18 = [v19 constraintEqualToConstant:v8];
  v41[0] = v18;
  v17 = [(AKAuthorizationSubPaneImage *)v36 imageView];
  v16 = [(UIImageView *)v17 widthAnchor];
  v15 = [(AKAuthorizationSubPaneImage *)v36 imageView];
  v14 = [(UIImageView *)v15 heightAnchor];
  v13 = [v16 constraintEqualToAnchor:v24 multiplier:?];
  v41[1] = v13;
  v12 = [MEMORY[0x277CBEA60] arrayWithObjects:v41 count:2];
  [(AKAuthorizationSubPaneImage *)v11 setImageViewConstraints:?];
  MEMORY[0x277D82BD8](v12);
  MEMORY[0x277D82BD8](v13);
  MEMORY[0x277D82BD8](v14);
  MEMORY[0x277D82BD8](v15);
  MEMORY[0x277D82BD8](v16);
  MEMORY[0x277D82BD8](v17);
  MEMORY[0x277D82BD8](v18);
  MEMORY[0x277D82BD8](v19);
  *&v9 = MEMORY[0x277D82BD8](v20).n128_u64[0];
  v21 = [(AKAuthorizationPaneViewController *)v40 headerPaneContext];
  [(AKAuthorizationPaneContext *)v21 addSubPane:v36];
  *&v10 = MEMORY[0x277D82BD8](v21).n128_u64[0];
  v22 = v36;
  +[AKAuthorizationPaneMetrics iconBottomSpacing];
  [(AKAuthorizationSubPane *)v22 setCustomSpacingAfter:?];
  objc_storeStrong(&v40->_imageSubPane, v36);
  objc_storeStrong(&v36, 0);
  objc_storeStrong(&v37, 0);
  objc_storeStrong(location, 0);
  *MEMORY[0x277D85DE8];
}

- (void)_loadAppIconViewImage
{
  v18 = self;
  location[1] = a2;
  objc_initWeak(location, self);
  v9 = MEMORY[0x277D85DD0];
  v10 = -1073741824;
  v11 = 0;
  v12 = __63__AKAuthorizationInputPaneViewController__loadAppIconViewImage__block_invoke;
  v13 = &unk_2784A6FD8;
  objc_copyWeak(&v15, location);
  v14 = MEMORY[0x277D82BE0](v18);
  v16 = MEMORY[0x223DB6C90](&v9);
  v2 = v16;
  v3 = MEMORY[0x277D85DD0];
  v4 = -1073741824;
  v5 = 0;
  v6 = __63__AKAuthorizationInputPaneViewController__loadAppIconViewImage__block_invoke_3;
  v7 = &unk_2784A7028;
  objc_copyWeak(&v8, location);
  v2[2](v2, &v3);
  objc_destroyWeak(&v8);
  objc_storeStrong(&v16, 0);
  objc_storeStrong(&v14, 0);
  objc_destroyWeak(&v15);
  objc_destroyWeak(location);
}

void __63__AKAuthorizationInputPaneViewController__loadAppIconViewImage__block_invoke(id *a1, void *a2)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v27[1] = a1;
  v27[0] = objc_loadWeakRetained(a1 + 5);
  v24[0] = MEMORY[0x277D85DD0];
  v24[1] = 3221225472;
  v24[2] = __63__AKAuthorizationInputPaneViewController__loadAppIconViewImage__block_invoke_2;
  v24[3] = &unk_2784A6FB0;
  v25 = MEMORY[0x277D82BE0](location[0]);
  v26 = MEMORY[0x223DB6C90](v24);
  v13 = [a1[4] presentationContext];
  v23 = [AKIcon iconWithPresentationContext:?];
  *&v2 = MEMORY[0x277D82BD8](v13).n128_u64[0];
  v15 = [v27[0] presentationContext];
  v14 = [v15 credentialRequestContext];
  v16 = [v14 _isSubscriptionLogin];
  MEMORY[0x277D82BD8](v14);
  *&v3 = MEMORY[0x277D82BD8](v15).n128_u64[0];
  if (v16)
  {
    v10 = [v23 automaskedImageData];
    v11 = 0;
    if (v10)
    {
      v11 = [v23 iconType] == 2;
    }

    *&v4 = MEMORY[0x277D82BD8](v10).n128_u64[0];
    if (v11)
    {
      v8 = location[0];
      v9 = [v23 automaskedImage];
      v8[2]();
      MEMORY[0x277D82BD8](v9);
    }

    else
    {
      v22 = [v27[0] paneDelegate];
      [v22 authorizationPaneViewController:v27[0] didRequestIconWithCompletion:v26];
      objc_storeStrong(&v22, 0);
    }
  }

  else
  {
    v20 = 0;
    v18 = 0;
    v7 = 1;
    if ([v23 iconType] != 2)
    {
      v21 = [a1[4] presentationContext];
      v20 = 1;
      v19 = [v21 credentialRequestContext];
      v18 = 1;
      v7 = [v19 _isWebLogin] == 0;
    }

    if (v18)
    {
      MEMORY[0x277D82BD8](v19);
    }

    if (v20)
    {
      MEMORY[0x277D82BD8](v21);
    }

    if (v7)
    {
      v5 = location[0];
      v6 = [v23 automaskedImage];
      v5[2]();
      MEMORY[0x277D82BD8](v6);
    }

    else if (v27[0])
    {
      v17 = [v27[0] paneDelegate];
      [v17 authorizationPaneViewController:v27[0] didRequestIconWithCompletion:v26];
      objc_storeStrong(&v17, 0);
    }

    else
    {
      (*(location[0] + 2))(location[0], 0, 0);
    }
  }

  objc_storeStrong(&v23, 0);
  objc_storeStrong(&v26, 0);
  objc_storeStrong(&v25, 0);
  objc_storeStrong(v27, 0);
  objc_storeStrong(location, 0);
}

void __63__AKAuthorizationInputPaneViewController__loadAppIconViewImage__block_invoke_2(void *a1, void *a2, void *a3)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v12 = 0;
  objc_storeStrong(&v12, a3);
  v11[1] = a1;
  v9 = 0;
  if (location[0])
  {
    v10 = [AKIcon iconWithIconContext:location[0]];
    v9 = 1;
    v3 = MEMORY[0x277D82BE0](v10);
  }

  else
  {
    v3 = MEMORY[0x277D82BE0](0);
  }

  v11[0] = v3;
  if (v9)
  {
    MEMORY[0x277D82BD8](v10);
  }

  if ([v11[0] iconType] == 2)
  {
    v4 = a1[4];
    v6 = [v11[0] automaskedImage];
    v5 = [location[0] appName];
    (*(v4 + 16))(v4, v6);
    MEMORY[0x277D82BD8](v5);
    MEMORY[0x277D82BD8](v6);
  }

  else
  {
    (*(a1[4] + 16))();
  }

  objc_storeStrong(v11, 0);
  objc_storeStrong(&v12, 0);
  objc_storeStrong(location, 0);
}

void __63__AKAuthorizationInputPaneViewController__loadAppIconViewImage__block_invoke_3(id *a1, void *a2, void *a3, void *a4)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v19 = 0;
  objc_storeStrong(&v19, a3);
  v18 = 0;
  objc_storeStrong(&v18, a4);
  v17[1] = a1;
  v7 = MEMORY[0x277D85CD0];
  v4 = MEMORY[0x277D85CD0];
  queue = v7;
  v10 = MEMORY[0x277D85DD0];
  v11 = -1073741824;
  v12 = 0;
  v13 = __63__AKAuthorizationInputPaneViewController__loadAppIconViewImage__block_invoke_4;
  v14 = &unk_2784A7000;
  objc_copyWeak(v17, a1 + 4);
  v15 = MEMORY[0x277D82BE0](location[0]);
  v16 = MEMORY[0x277D82BE0](v19);
  dispatch_async(queue, &v10);
  MEMORY[0x277D82BD8](queue);
  objc_storeStrong(&v16, 0);
  objc_storeStrong(&v15, 0);
  objc_destroyWeak(v17);
  objc_storeStrong(&v18, 0);
  objc_storeStrong(&v19, 0);
  objc_storeStrong(location, 0);
}

void __63__AKAuthorizationInputPaneViewController__loadAppIconViewImage__block_invoke_4(uint64_t a1)
{
  location[2] = a1;
  location[1] = a1;
  location[0] = objc_loadWeakRetained((a1 + 48));
  if (*(a1 + 32))
  {
    v1 = [location[0] imageSubPane];
    [v1 setImage:*(a1 + 32) animated:1];
    MEMORY[0x277D82BD8](v1);
  }

  if (*(a1 + 40))
  {
    [location[0] _updateInfoLabelStringWithAppName:*(a1 + 40)];
  }

  objc_storeStrong(location, 0);
}

- (void)_updateInfoLabelStringWithAppName:(id)a3
{
  v12 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v9 = [(AKAuthorizationInputPaneViewController *)v12 presentationContext];
  v10 = [(AKAuthorizationPresentationContext *)v9 localizedAppName];
  MEMORY[0x277D82BD8](v10);
  *&v3 = MEMORY[0x277D82BD8](v9).n128_u64[0];
  if (!v10)
  {
    v5 = location[0];
    v6 = [(AKAuthorizationInputPaneViewController *)v12 presentationContext];
    [(AKAuthorizationPresentationContext *)v6 setLocalizedAppName:v5];
    *&v4 = MEMORY[0x277D82BD8](v6).n128_u64[0];
    infoLabel = v12->_infoLabel;
    v8 = [(AKAuthorizationInputPaneViewController *)v12 _localizedInfoString];
    [AKAuthorizationSubPaneInfoLabel setString:"setString:animated:" animated:?];
    MEMORY[0x277D82BD8](v8);
  }

  objc_storeStrong(location, 0);
}

- (void)_setupPrivacyLink
{
  v25 = self;
  v24 = a2;
  v8 = [(AKAuthorizationInputPaneViewController *)self authorizationViewController];
  v9 = [(AKAuthorizationViewController *)v8 _isManagedAppleID];
  v2 = MEMORY[0x277D82BD8](v8).n128_u64[0];
  v23 = v9;
  v20 = 0;
  v18 = 0;
  v16 = 0;
  v10 = 0;
  if (v9)
  {
    v21 = [(AKAuthorizationInputPaneViewController *)v25 presentationContext];
    v20 = 1;
    v19 = [(AKAuthorizationPresentationContext *)v21 credentialRequestContext];
    v18 = 1;
    v17 = [v19 authorizationRequest];
    v16 = 1;
    v10 = [v17 existingStatus] == 2;
  }

  if (v16)
  {
    v2 = MEMORY[0x277D82BD8](v17).n128_u64[0];
  }

  if (v18)
  {
    v2 = MEMORY[0x277D82BD8](v19).n128_u64[0];
  }

  if (v20)
  {
    v2 = MEMORY[0x277D82BD8](v21).n128_u64[0];
  }

  v22 = v10;
  if (v10)
  {
    v15 = [(AKAuthorizationPaneViewController *)v25 footerPaneContext];
    *&v3 = MEMORY[0x277D82BD8](0).n128_u64[0];
    v14 = 0;
    if (v23)
    {
      v14 = 1;
      +[AKAuthorizationPaneMetrics privacyInfoTopSpacing];
      [(AKAuthorizationPaneContext *)v15 addEmptyViewWithSpacing:?];
      v13 = [(AKAuthorizationInputPaneViewController *)v25 _localizedPrivacyMessageStringForManagedAppleID];
      v4 = [AKAuthorizationSubPaneInfoLabel alloc];
      v12 = [(AKAuthorizationSubPaneInfoLabel *)v4 initWithString:v13];
      [(AKAuthorizationSubPaneInfoLabel *)v12 setInfoLabelType:4];
      v7 = v12;
      +[AKAuthorizationPaneMetrics privacyInfoToLinkBottomSpacing];
      [(AKAuthorizationSubPane *)v7 setCustomSpacingAfter:?];
      [(AKAuthorizationPaneContext *)v15 addSubPane:v12];
      objc_storeStrong(&v12, 0);
      objc_storeStrong(&v13, 0);
    }

    v5 = [AKAuthorizationSubPanePrivacyLink alloc];
    v11 = [(AKAuthorizationSubPanePrivacyLink *)v5 initWithPrivacyLinkType:v14];
    [(AKAuthorizationPaneContext *)v15 addSubPane:v11];
    v6 = v15;
    +[AKAuthorizationPaneMetrics privacyLinkBottomSpacing];
    [(AKAuthorizationPaneContext *)v6 addEmptyViewWithSpacing:?];
    objc_storeStrong(&v11, 0);
    objc_storeStrong(&v15, 0);
  }
}

- (void)_useOtherIDButtonSelected:(id)a3
{
  v5 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v3 = [MEMORY[0x277CCA9B8] ak_errorWithCode:-7038];
  [(AKAuthorizationInputPaneViewController *)v5 _paneDelegate_authorizationPaneViewControllerDismissWithAuthorization:0 error:v3];
  objc_storeStrong(&v3, 0);
  objc_storeStrong(location, 0);
}

- (void)_performAdditionalCTA:(id)a3
{
  v10 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v8 = _AKLogSiwa();
  v7 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    log = v8;
    type = v7;
    __os_log_helper_16_0_0(v6);
    _os_log_impl(&dword_222379000, log, type, "Perform Additional CTA.", v6, 2u);
  }

  objc_storeStrong(&v8, 0);
  v5 = [MEMORY[0x277CCA9B8] ak_errorWithCode:-7124];
  [(AKAuthorizationInputPaneViewController *)v10 _paneDelegate_authorizationPaneViewControllerDismissWithAuthorization:0 error:v5];
  objc_storeStrong(&v5, 0);
  objc_storeStrong(location, 0);
}

- (void)_addAuthorizationButtonToPaneContext:(id)a3
{
  v12 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v5 = [AKAuthorizationSubPaneConfirmButton alloc];
  v6 = [(AKAuthorizationInputPaneViewController *)v12 presentationContext];
  v10 = [(AKAuthorizationSubPaneConfirmButton *)v5 initWithPresentationContext:?];
  *&v3 = MEMORY[0x277D82BD8](v6).n128_u64[0];
  [location[0] addSubPane:{v10, v3}];
  [(AKAuthorizationSubPaneConfirmButton *)v10 setDelegate:v12];
  [(AKAuthorizationSubPaneConfirmButton *)v10 setUpButtonToPaneContext:location[0]];
  v7 = v10;
  v9 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v8 = [v9 localizedStringForKey:@"BIO_BUTTON_SELECT_EMAIL" value:&stru_28358EF68 table:@"Localizable"];
  [(AKAuthorizationSubPaneConfirmButton *)v7 setBioTextForInactiveState:?];
  MEMORY[0x277D82BD8](v8);
  *&v4 = MEMORY[0x277D82BD8](v9).n128_u64[0];
  [(AKAuthorizationInputPaneViewController *)v12 setConfirmButton:v10, v4];
  [(AKAuthorizationInputPaneViewController *)v12 _enableOrDisableConfirmButton];
  objc_storeStrong(&v10, 0);
  objc_storeStrong(location, 0);
}

- (void)_addUseOtherIDButtonToContext:(id)a3
{
  v21 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v15 = [(AKAuthorizationInputPaneViewController *)v21 presentationContext];
  v14 = [(AKAuthorizationPresentationContext *)v15 credentialRequestContext];
  v16 = [v14 _isWebLogin];
  MEMORY[0x277D82BD8](v14);
  MEMORY[0x277D82BD8](v15);
  if (v16)
  {
    v6 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v18 = [v6 localizedStringForKey:@"USE_DIFFERENT_APPLE_ID_REBRAND" value:&stru_28358EF68 table:@"Localizable"];
    MEMORY[0x277D82BD8](v6);
    v17 = [AKTextualLinkButton buttonWithText:v18 fontSize:v21 target:sel__useOtherIDButtonSelected_ action:13.0];
    v7 = [location[0] stackView];
    [v7 addArrangedSubview:v17];
    *&v3 = MEMORY[0x277D82BD8](v7).n128_u64[0];
    v12 = [location[0] stackView];
    +[AKAuthorizationPaneMetrics useOtherAppleIDTopSpacing];
    v8 = v4;
    v11 = [location[0] stackView];
    v10 = [v11 arrangedSubviews];
    v9 = [v10 lastObject];
    [v12 setCustomSpacing:v8 afterView:?];
    MEMORY[0x277D82BD8](v9);
    MEMORY[0x277D82BD8](v10);
    MEMORY[0x277D82BD8](v11);
    *&v5 = MEMORY[0x277D82BD8](v12).n128_u64[0];
    v13 = [location[0] stackView];
    +[AKAuthorizationPaneMetrics useOtherAppleIDBottomSpacing];
    [v13 setCustomSpacing:v17 afterView:?];
    MEMORY[0x277D82BD8](v13);
    objc_storeStrong(&v17, 0);
    objc_storeStrong(&v18, 0);
    v19 = 0;
  }

  else
  {
    v19 = 1;
  }

  objc_storeStrong(location, 0);
}

- (void)_addAdditionalCTAToContext:(id)a3
{
  v21 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v15 = [(AKAuthorizationInputPaneViewController *)v21 presentationContext];
  v14 = [(AKAuthorizationPresentationContext *)v15 credentialRequestContext];
  v16 = [v14 _shouldShowAdditionalCTA];
  MEMORY[0x277D82BD8](v14);
  MEMORY[0x277D82BD8](v15);
  if (v16)
  {
    v6 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v18 = [v6 localizedStringForKey:@"ADDITIONAL_CTA" value:&stru_28358EF68 table:@"Localizable"];
    MEMORY[0x277D82BD8](v6);
    v17 = [AKTextualLinkButton buttonWithText:v18 fontSize:v21 target:sel__performAdditionalCTA_ action:16.0];
    v7 = [location[0] stackView];
    [v7 addArrangedSubview:v17];
    *&v3 = MEMORY[0x277D82BD8](v7).n128_u64[0];
    v12 = [location[0] stackView];
    +[AKAuthorizationPaneMetrics useOtherAppleIDTopSpacing];
    v8 = v4;
    v11 = [location[0] stackView];
    v10 = [v11 arrangedSubviews];
    v9 = [v10 lastObject];
    [v12 setCustomSpacing:v8 afterView:?];
    MEMORY[0x277D82BD8](v9);
    MEMORY[0x277D82BD8](v10);
    MEMORY[0x277D82BD8](v11);
    *&v5 = MEMORY[0x277D82BD8](v12).n128_u64[0];
    v13 = [location[0] stackView];
    +[AKAuthorizationPaneMetrics useOtherAppleIDBottomSpacing];
    [v13 setCustomSpacing:v17 afterView:?];
    MEMORY[0x277D82BD8](v13);
    objc_storeStrong(&v17, 0);
    objc_storeStrong(&v18, 0);
    v19 = 0;
  }

  else
  {
    v19 = 1;
  }

  objc_storeStrong(location, 0);
}

- (void)_addShimToStackView:(id)a3
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v3 = location[0];
  v4 = objc_alloc_init(MEMORY[0x277D75D18]);
  [v3 addArrangedSubview:?];
  MEMORY[0x277D82BD8](v4);
  objc_storeStrong(location, 0);
}

- (void)_setupEscapeKeyListener
{
  v6 = self;
  v5[1] = a2;
  v3 = [(AKAuthorizationInputPaneViewController *)self traitCollection];
  v4 = [v3 userInterfaceIdiom];
  *&v2 = MEMORY[0x277D82BD8](v3).n128_u64[0];
  if (v4 == 1)
  {
    v5[0] = [MEMORY[0x277D75650] keyCommandWithInput:*MEMORY[0x277D76AD8] modifierFlags:0 action:{sel__escapeKeyPressed, v2}];
    [(AKAuthorizationInputPaneViewController *)v6 addKeyCommand:v5[0]];
    objc_storeStrong(v5, 0);
  }
}

- (void)_escapeKeyPressed
{
  v7 = self;
  location[1] = a2;
  location[0] = _AKLogSiwa();
  v5 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(location[0], OS_LOG_TYPE_DEFAULT))
  {
    log = location[0];
    type = v5;
    __os_log_helper_16_0_0(v4);
    _os_log_impl(&dword_222379000, log, type, "Escape key pressed", v4, 2u);
  }

  objc_storeStrong(location, 0);
  [(AKAuthorizationInputPaneViewController *)v7 _userCanceledPanel];
}

- (void)_userCanceledPanel
{
  v8 = self;
  location[1] = a2;
  [(AKCATiburonInputUIReporter *)self->_analyticsReport didComplete:0];
  [(AKCAReporter *)v8->_analyticsReport sendReport];
  location[0] = _AKLogSiwa();
  v6 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(location[0], OS_LOG_TYPE_DEFAULT))
  {
    log = location[0];
    type = v6;
    __os_log_helper_16_0_0(v5);
    _os_log_impl(&dword_222379000, log, type, "Cancelling the panel", v5, 2u);
  }

  objc_storeStrong(location, 0);
  v4 = [MEMORY[0x277CCA9B8] ak_errorWithCode:-7003];
  [(AKAuthorizationInputPaneViewController *)v8 _paneDelegate_authorizationPaneViewControllerDismissWithAuthorization:0 error:v4];
  objc_storeStrong(&v4, 0);
}

- (void)_setEditableScopeChoicesForManagedAppleID
{
  v11 = self;
  v10 = a2;
  v9 = 0x7FFFFFFFFFFFFFFFLL;
  v7 = [(AKAuthorizationInputPaneViewController *)self presentationContext];
  v6 = [(AKAuthorizationPresentationContext *)v7 userInformation];
  location = [v6 sharedEmailForManagedAppleID];
  MEMORY[0x277D82BD8](v6);
  v2 = MEMORY[0x277D82BD8](v7).n128_u64[0];
  if (location)
  {
    v5 = [(AKAuthorizationInputPaneViewController *)v11 editableScopeChoices];
    v4 = [(AKAuthorizationScopeChoices *)v5 userInformation];
    v3 = [(AKUserInformation *)v4 reachableEmails];
    v9 = [v3 indexOfObject:location];
    MEMORY[0x277D82BD8](v3);
    MEMORY[0x277D82BD8](v4);
    v2 = MEMORY[0x277D82BD8](v5).n128_u64[0];
  }

  [(AKAuthorizationScopeChoices *)v11->_editableScopeChoices setIndexOfChosenEmail:v9, *&v2];
  [(AKAuthorizationScopeChoices *)v11->_editableScopeChoices setWantsPrivateEmail:0];
  objc_storeStrong(&location, 0);
}

- (id)_localizedPrivacyMessageStringForManagedAppleID
{
  location[2] = self;
  location[1] = a2;
  v10 = [(AKAuthorizationInputPaneViewController *)self presentationContext];
  location[0] = [(AKAuthorizationPresentationContext *)v10 localizedAppName];
  if ([location[0] length])
  {
    v7 = MEMORY[0x277CCACA8];
    v9 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v8 = [v9 localizedStringForKey:@"AUTHORIZATION_MANAGED_ACCOUNT_PRIVACY_MESSAGE_APPNAME_FORMAT" value:&stru_28358EF68 table:@"Localizable"];
    v12 = [v7 stringWithFormat:location[0], location[0]];
    MEMORY[0x277D82BD8](v8);
    MEMORY[0x277D82BD8](v9);
  }

  else
  {
    v4 = MEMORY[0x277CCACA8];
    v6 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v5 = [v6 localizedStringForKey:@"AUTHORIZATION_MANAGED_ACCOUNT_PRIVACY_MESSAGE" value:&stru_28358EF68 table:@"Localizable"];
    v12 = [v4 stringWithFormat:?];
    MEMORY[0x277D82BD8](v5);
    MEMORY[0x277D82BD8](v6);
  }

  objc_storeStrong(location, 0);
  v2 = v12;

  return v2;
}

- (id)_nameCellDetailLabelTextForManagedAppleID
{
  v7 = [(AKAuthorizationInputPaneViewController *)self presentationContext];
  v6 = [(AKAuthorizationPresentationContext *)v7 userInformation];
  v8 = [v6 sharedEmailForManagedAppleID];
  MEMORY[0x277D82BD8](v8);
  MEMORY[0x277D82BD8](v6);
  *&v2 = MEMORY[0x277D82BD8](v7).n128_u64[0];
  if (v8)
  {
    v10 = 0;
  }

  else
  {
    v5 = [(AKAuthorizationInputPaneViewController *)self presentationContext];
    v4 = [(AKAuthorizationPresentationContext *)v5 userInformation];
    v10 = [v4 managedOrganizationName];
    MEMORY[0x277D82BD8](v4);
    MEMORY[0x277D82BD8](v5);
  }

  return v10;
}

- (BOOL)_hasSharedAccountLoginChoices
{
  v3 = [(AKAuthorizationInputPaneViewController *)self presentationContext];
  v4 = [(AKAuthorizationPresentationContext *)v3 hasSharedAccountLoginChoices];
  MEMORY[0x277D82BD8](v3);
  return v4;
}

- (BOOL)_shouldPresentCreateFlow
{
  v17 = [(AKAuthorizationInputPaneViewController *)self presentationContext];
  v16 = [(AKAuthorizationPresentationContext *)v17 userInformation];
  v15 = [v16 isUnderage];
  v18 = [v15 BOOLValue];
  MEMORY[0x277D82BD8](v15);
  MEMORY[0x277D82BD8](v16);
  v19 = [MEMORY[0x277CF0130] sharedInstance];
  v20 = [v19 primaryiCloudAccountHasPendingDOB];
  *&v2 = MEMORY[0x277D82BD8](v19).n128_u64[0];
  if ((v18 & 1) == 0 && (v20 & 1) == 0)
  {
    v13 = [MEMORY[0x277CF0228] sharedManager];
    LOBYTE(v14) = 0;
    if ([v13 isSiwaCredentialSharingEnabled])
    {
      v14 = ![(AKAuthorizationInputPaneViewController *)self _shouldPresentUpgradeFlow];
    }

    *&v3 = MEMORY[0x277D82BD8](v13).n128_u64[0];
    if (v14)
    {
      if ([(AKAuthorizationInputPaneViewController *)self _hasSharedAccountLoginChoices])
      {
        return 0;
      }

      v11 = [(AKAuthorizationPresentationContext *)self->_presentationContext loginChoices];
      v12 = [v11 count];
      v4 = MEMORY[0x277D82BD8](v11).n128_u64[0];
      if (v12)
      {
        return 0;
      }
    }

    else
    {
      v9 = [(AKAuthorizationPresentationContext *)self->_presentationContext loginChoices];
      v10 = [v9 count];
      v4 = MEMORY[0x277D82BD8](v9).n128_u64[0];
      if (v10)
      {
        return 0;
      }
    }

    v8 = [(AKAuthorizationInputPaneViewController *)self presentationContext];
    v7 = [(AKAuthorizationPresentationContext *)v8 credentialRequestContext];
    v5 = [v7 passwordRequest];
    v22 = v5 == 0;
    MEMORY[0x277D82BD8](v5);
    MEMORY[0x277D82BD8](v7);
    MEMORY[0x277D82BD8](v8);
    return v22;
  }

  return 0;
}

- (BOOL)_shouldPresentUpgradeFlow
{
  v4 = [(AKAuthorizationInputPaneViewController *)self presentationContext];
  v3 = [(AKAuthorizationPresentationContext *)v4 credentialRequestContext];
  v5 = [v3 _isEligibleForUpgradeFromPassword];
  MEMORY[0x277D82BD8](v3);
  MEMORY[0x277D82BD8](v4);
  return v5;
}

- (BOOL)_hasOneLoginChoice
{
  v8 = [(AKAuthorizationInputPaneViewController *)self authorizationViewController];
  v9 = [(AKAuthorizationViewController *)v8 _isManagedAppleID];
  *&v2 = MEMORY[0x277D82BD8](v8).n128_u64[0];
  if (v9)
  {
    v7 = [(AKAuthorizationInputPaneViewController *)self presentationContext];
    v6 = [(AKAuthorizationPresentationContext *)v7 userInformation];
    v5 = [v6 sharedEmailForManagedAppleID];
    v11 = [v5 length] != 0;
    MEMORY[0x277D82BD8](v5);
    MEMORY[0x277D82BD8](v6);
    MEMORY[0x277D82BD8](v7);
  }

  else
  {
    v4 = [(AKAuthorizationPresentationContext *)self->_presentationContext loginChoices];
    v11 = [v4 count] == 1;
    MEMORY[0x277D82BD8](v4);
  }

  return v11;
}

- (id)_firstLoginChoice
{
  v4 = [(AKAuthorizationInputPaneViewController *)self presentationContext];
  v3 = [(AKAuthorizationPresentationContext *)v4 loginChoices];
  v5 = [v3 firstObject];
  MEMORY[0x277D82BD8](v3);
  MEMORY[0x277D82BD8](v4);

  return v5;
}

- (BOOL)_hasNameScope
{
  v4 = [(AKAuthorizationInputPaneViewController *)self editableScopeChoices];
  v3 = [(AKAuthorizationScopeChoices *)v4 scopes];
  v5 = [(NSArray *)v3 containsObject:*MEMORY[0x277CEFFE8]];
  MEMORY[0x277D82BD8](v3);
  MEMORY[0x277D82BD8](v4);
  return v5;
}

- (BOOL)_hasEmailScope
{
  v3 = [(AKAuthorizationInputPaneViewController *)self editableScopeChoices];
  v4 = [(AKAuthorizationScopeChoices *)v3 scopes];
  v10 = 0;
  v8 = 0;
  v6 = 0;
  v5 = 0;
  if ([(NSArray *)v4 containsObject:*MEMORY[0x277CEFFE0]])
  {
    v11 = [(AKAuthorizationInputPaneViewController *)self editableScopeChoices];
    v10 = 1;
    v9 = [(AKAuthorizationScopeChoices *)v11 userInformation];
    v8 = 1;
    v7 = [(AKUserInformation *)v9 reachableEmails];
    v6 = 1;
    v5 = [v7 count] != 0;
  }

  if (v6)
  {
    MEMORY[0x277D82BD8](v7);
  }

  if (v8)
  {
    MEMORY[0x277D82BD8](v9);
  }

  if (v10)
  {
    MEMORY[0x277D82BD8](v11);
  }

  MEMORY[0x277D82BD8](v4);
  MEMORY[0x277D82BD8](v3);
  return v5;
}

- (BOOL)_nameScopeAllowsAuthorization
{
  v3 = 1;
  if ([(AKAuthorizationInputPaneViewController *)self _hasNameScope])
  {
    v3 = 1;
    if ([(AKAuthorizationInputPaneViewController *)self isEditingName])
    {
      return [(AKAuthorizationInputPaneViewController *)self _isValidEditingName];
    }
  }

  return v3;
}

- (BOOL)_emailScopeAllowsAuthorization
{
  v3 = [(AKAuthorizationInputPaneViewController *)self editableScopeChoices];
  v9 = [(AKAuthorizationScopeChoices *)v3 wantsPrivateEmail];
  v4 = [(AKAuthorizationInputPaneViewController *)self editableScopeChoices];
  v8 = [(AKAuthorizationScopeChoices *)v4 indexOfChosenEmail]!= 0x7FFFFFFFFFFFFFFFLL;
  v5 = [(AKAuthorizationInputPaneViewController *)self authorizationViewController];
  v7 = [(AKAuthorizationViewController *)v5 _isManagedAppleID];
  v6 = 1;
  if ([(AKAuthorizationInputPaneViewController *)self _hasEmailScope])
  {
    v6 = 1;
    if (!v9)
    {
      v6 = 1;
      if (!v8)
      {
        v6 = v7;
      }
    }
  }

  return v6 & 1;
}

- (BOOL)_shouldAllowAuthorization
{
  if ([(AKAuthorizationInputPaneViewController *)self _shouldPresentCreateFlow])
  {
    v7 = 0;
    if ([(AKAuthorizationInputPaneViewController *)self _nameScopeAllowsAuthorization])
    {
      return [(AKAuthorizationInputPaneViewController *)self _emailScopeAllowsAuthorization];
    }

    return v7;
  }

  else if ([(AKAuthorizationInputPaneViewController *)self _hasOneLoginChoice])
  {
    return 1;
  }

  else
  {
    v5 = [(AKAuthorizationInputPaneViewController *)self authorizationViewController];
    v6 = [(AKAuthorizationViewController *)v5 _isManagedAppleID];
    *&v2 = MEMORY[0x277D82BD8](v5).n128_u64[0];
    if (v6)
    {
      return [(AKAuthorizationInputPaneViewController *)self _emailScopeAllowsAuthorization];
    }

    else
    {
      v4 = [(AKAuthorizationInputPaneViewController *)self editableScopeChoices];
      v9 = [(AKAuthorizationScopeChoices *)v4 indexOfChosenLogin]!= 0x7FFFFFFFFFFFFFFFLL;
      MEMORY[0x277D82BD8](v4);
    }
  }

  return v9;
}

- (BOOL)_isUnderageUser
{
  v5 = [(AKAuthorizationInputPaneViewController *)self presentationContext];
  v4 = [(AKAuthorizationPresentationContext *)v5 userInformation];
  v3 = [v4 isUnderage];
  v6 = [v3 BOOLValue];
  MEMORY[0x277D82BD8](v3);
  MEMORY[0x277D82BD8](v4);
  MEMORY[0x277D82BD8](v5);
  return v6;
}

- (id)_paneTitleString
{
  v6 = [(AKAuthorizationInputPaneViewController *)self presentationContext];
  v5 = [(AKAuthorizationPresentationContext *)v6 credentialRequestContext];
  v7 = [v5 _isFirstPartyLogin];
  MEMORY[0x277D82BD8](v5);
  MEMORY[0x277D82BD8](v6);
  if (v7)
  {
    v4 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v8 = [v4 localizedStringForKey:@"AUTHORIZATION_VIEWCONTROLLER_TITLE_REBRAND" value:&stru_28358EF68 table:@"Localizable"];
    MEMORY[0x277D82BD8](v4);
  }

  else
  {
    v3 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v8 = [v3 localizedStringForKey:@"AUTHORIZATION_VIEWCONTROLLER_TITLE_MODERN" value:&stru_28358EF68 table:@"Localizable"];
    MEMORY[0x277D82BD8](v3);
  }

  return v8;
}

- (id)_localizedInfoString
{
  if ([(AKAuthorizationInputPaneViewController *)self _shouldPresentUpgradeFlow])
  {
    v8 = [(AKAuthorizationInputPaneViewController *)self _localizedUpgradeString];
  }

  else
  {
    v5 = [(AKAuthorizationInputPaneViewController *)self presentationContext];
    v4 = [(AKAuthorizationPresentationContext *)v5 credentialRequestContext];
    v6 = [v4 _isSubscriptionLogin];
    MEMORY[0x277D82BD8](v4);
    *&v2 = MEMORY[0x277D82BD8](v5).n128_u64[0];
    if (v6)
    {
      v8 = [(AKAuthorizationInputPaneViewController *)self _localizedSubscriptionString];
    }

    else if ([(AKAuthorizationInputPaneViewController *)self _shouldPresentCreateFlow])
    {
      v8 = [(AKAuthorizationInputPaneViewController *)self _localizedAuthorizationString];
    }

    else if ([(AKAuthorizationInputPaneViewController *)self _hasSharedAccountLoginChoices])
    {
      v8 = [(AKAuthorizationInputPaneViewController *)self _localizedSharedAccountsChoiceString];
    }

    else
    {
      v8 = [(AKAuthorizationInputPaneViewController *)self _localizedChoiceString];
    }
  }

  return v8;
}

- (id)_localizedAuthorizationString
{
  v70 = *MEMORY[0x277D85DE8];
  v66 = self;
  v65[1] = a2;
  v37 = [(AKAuthorizationInputPaneViewController *)self presentationContext];
  v36 = [(AKAuthorizationPresentationContext *)v37 userInformation];
  v65[0] = [v36 accountName];
  MEMORY[0x277D82BD8](v36);
  v38 = [(AKAuthorizationInputPaneViewController *)v66 presentationContext];
  v64 = [(AKAuthorizationPresentationContext *)v38 localizedAppName];
  v40 = [(AKAuthorizationInputPaneViewController *)v66 presentationContext];
  v39 = [(AKAuthorizationPresentationContext *)v40 credentialRequestContext];
  v63 = [v39 _proxiedDeviceName];
  MEMORY[0x277D82BD8](v39);
  v42 = [(AKAuthorizationInputPaneViewController *)v66 presentationContext];
  v41 = [(AKAuthorizationPresentationContext *)v42 credentialRequestContext];
  v62 = [v41 _proxiedDeviceClass];
  MEMORY[0x277D82BD8](v41);
  v61 = [v65[0] length] != 0;
  v60 = [v64 length] != 0;
  v43 = 0;
  if ([v63 length])
  {
    v43 = [v62 length] != 0;
  }

  v59 = v43;
  v31 = [(AKAuthorizationInputPaneViewController *)v66 presentationContext];
  v30 = [(AKAuthorizationPresentationContext *)v31 userInformation];
  v32 = [v30 isManagedAppleID];
  MEMORY[0x277D82BD8](v30);
  v58 = v32;
  v33 = [(AKAuthorizationInputPaneViewController *)v66 presentationContext];
  v34 = [(AKAuthorizationPresentationContext *)v33 credentialRequestContext];
  v35 = 0;
  if ([v34 _isFirstPartyLogin])
  {
    v35 = 0;
    if (v60)
    {
      v35 = v61;
    }
  }

  MEMORY[0x277D82BD8](v34);
  *&v2 = MEMORY[0x277D82BD8](v33).n128_u64[0];
  if (v35)
  {
    v67 = [(AKAuthorizationInputPaneViewController *)v66 _localizedFirstPartyAuthorizationStringWithAppName:v64 accountName:v65[0], v2];
    v57 = 1;
  }

  else
  {
    v56 = [(AKAuthorizationInputPaneViewController *)v66 _localizedAuthorizationPrefix:v58 & 1, v2];
    if (v58)
    {
      v29 = [(AKAuthorizationInputPaneViewController *)v66 presentationContext];
      v28 = [(AKAuthorizationPresentationContext *)v29 userInformation];
      v55 = [v28 managedOrganizationName];
      MEMORY[0x277D82BD8](v28);
      v54 = [v55 length] != 0;
      if (v60 && v59 && v54)
      {
        v53 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@_PROXIED_FORMAT", v56];
        v25 = MEMORY[0x277CCACA8];
        v27 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
        v26 = [v27 localizedStringForKey:v53 value:&stru_28358EF68 table:@"Localizable"];
        v67 = [v25 stringWithFormat:v64, v62, v63, v54];
        MEMORY[0x277D82BD8](v26);
        MEMORY[0x277D82BD8](v27);
        v57 = 1;
        objc_storeStrong(&v53, 0);
      }

      else if (v60 && v54)
      {
        v52 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@_APPNAME_ORGNAME_FORMAT", v56];
        v22 = MEMORY[0x277CCACA8];
        v24 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
        v23 = [v24 localizedStringForKey:v52 value:&stru_28358EF68 table:@"Localizable"];
        v67 = [v22 stringWithFormat:v64, v55];
        MEMORY[0x277D82BD8](v23);
        MEMORY[0x277D82BD8](v24);
        v57 = 1;
        objc_storeStrong(&v52, 0);
      }

      else if (v60)
      {
        v51 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@_APPNAME_FORMAT", v56];
        v19 = MEMORY[0x277CCACA8];
        v21 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
        v20 = [v21 localizedStringForKey:v51 value:&stru_28358EF68 table:@"Localizable"];
        v67 = [v19 stringWithFormat:v64];
        MEMORY[0x277D82BD8](v20);
        MEMORY[0x277D82BD8](v21);
        v57 = 1;
        objc_storeStrong(&v51, 0);
      }

      else
      {
        v50 = _AKLogSiwa();
        v49 = OS_LOG_TYPE_ERROR;
        if (os_log_type_enabled(v50, OS_LOG_TYPE_ERROR))
        {
          __os_log_helper_16_2_1_8_64(v69, v56);
          _os_log_error_impl(&dword_222379000, v50, v49, "Account/application information is missing, showing default text in %@.", v69, 0xCu);
        }

        objc_storeStrong(&v50, 0);
        v18 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
        v67 = [v18 localizedStringForKey:v56 value:&stru_28358EF68 table:@"Localizable"];
        MEMORY[0x277D82BD8](v18);
        v57 = 1;
      }

      objc_storeStrong(&v55, 0);
    }

    else if (v61 && v60 && v59)
    {
      v48 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@_PROXIED_FORMAT", v56];
      v15 = MEMORY[0x277CCACA8];
      v17 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v16 = [v17 localizedStringForKey:v48 value:&stru_28358EF68 table:@"Localizable"];
      v67 = [v15 stringWithFormat:v64, v62, v63, v65[0]];
      MEMORY[0x277D82BD8](v16);
      MEMORY[0x277D82BD8](v17);
      v57 = 1;
      objc_storeStrong(&v48, 0);
    }

    else if (v61 && v60)
    {
      v47 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@_FORMAT", v56];
      v12 = MEMORY[0x277CCACA8];
      v14 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v13 = [v14 localizedStringForKey:v47 value:&stru_28358EF68 table:@"Localizable"];
      v67 = [v12 stringWithFormat:v64, v65[0]];
      MEMORY[0x277D82BD8](v13);
      MEMORY[0x277D82BD8](v14);
      v57 = 1;
      objc_storeStrong(&v47, 0);
    }

    else if (v60)
    {
      v46 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@_APPNAME_FORMAT", v56];
      v9 = MEMORY[0x277CCACA8];
      v11 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v10 = [v11 localizedStringForKey:v46 value:&stru_28358EF68 table:@"Localizable"];
      v67 = [v9 stringWithFormat:v64];
      MEMORY[0x277D82BD8](v10);
      MEMORY[0x277D82BD8](v11);
      v57 = 1;
      objc_storeStrong(&v46, 0);
    }

    else if (v61)
    {
      v45 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@_APPLEID_FORMAT", v56];
      v6 = MEMORY[0x277CCACA8];
      v8 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v7 = [v8 localizedStringForKey:v45 value:&stru_28358EF68 table:@"Localizable"];
      v67 = [v6 stringWithFormat:v65[0]];
      MEMORY[0x277D82BD8](v7);
      MEMORY[0x277D82BD8](v8);
      v57 = 1;
      objc_storeStrong(&v45, 0);
    }

    else
    {
      v44 = _AKLogSiwa();
      if (os_log_type_enabled(v44, OS_LOG_TYPE_ERROR))
      {
        __os_log_helper_16_2_1_8_64(v68, v56);
        _os_log_error_impl(&dword_222379000, v44, OS_LOG_TYPE_ERROR, "Account/application information is missing, showing default text in %@.", v68, 0xCu);
      }

      objc_storeStrong(&v44, 0);
      v5 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v67 = [v5 localizedStringForKey:v56 value:&stru_28358EF68 table:@"Localizable"];
      MEMORY[0x277D82BD8](v5);
      v57 = 1;
    }

    objc_storeStrong(&v56, 0);
  }

  objc_storeStrong(&v62, 0);
  objc_storeStrong(&v63, 0);
  objc_storeStrong(&v64, 0);
  objc_storeStrong(v65, 0);
  *MEMORY[0x277D85DE8];
  v3 = v67;

  return v3;
}

- (id)_localizedFirstPartyAuthorizationStringWithAppName:(id)a3 accountName:(id)a4
{
  v18 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v16 = 0;
  objc_storeStrong(&v16, a4);
  v15 = MEMORY[0x277D82BE0](@"AUTHORIZE_APPLE_ID_1ST_PARTY_LOGIN_REBRAND");
  v13 = [(AKAuthorizationInputPaneViewController *)v18 presentationContext];
  v14 = [(AKAuthorizationPresentationContext *)v13 signInAllowsPCSKeyAccess];
  *&v4 = MEMORY[0x277D82BD8](v13).n128_u64[0];
  if (v14)
  {
    v5 = [MEMORY[0x277CF0218] deviceSpecificLocalizedStringWithKey:{@"AUTHORIZE_APPLE_ID_1ST_PARTY_LOGIN_KEY_ACCESS_REBRAND", v4}];
    v6 = v15;
    v15 = v5;
    MEMORY[0x277D82BD8](v6);
  }

  v8 = MEMORY[0x277CCACA8];
  v10 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v9 = [v10 localizedStringForKey:v15 value:&stru_28358EF68 table:@"Localizable"];
  v11 = [v8 stringWithFormat:location[0], v16];
  MEMORY[0x277D82BD8](v9);
  MEMORY[0x277D82BD8](v10);
  objc_storeStrong(&v15, 0);
  objc_storeStrong(&v16, 0);
  objc_storeStrong(location, 0);

  return v11;
}

- (id)_localizedAuthorizationPrefix:(BOOL)a3
{
  if ([(AKAuthorizationInputPaneViewController *)self _shouldPresentCreateFlow])
  {
    if (a3)
    {
      v5 = MEMORY[0x277D82BE0](@"AUTHORIZE_MANAGED_APPLE_ACCOUNT_CREATE");
    }

    else
    {
      v5 = MEMORY[0x277D82BE0](@"AUTHORIZE_APPLE_ACCOUNT_CREATE");
    }
  }

  else if (a3)
  {
    v5 = MEMORY[0x277D82BE0](@"AUTHORIZE_MANAGED_APPLE_ACCOUNT_WELCOME_BACK");
  }

  else
  {
    v5 = MEMORY[0x277D82BE0](@"AUTHORIZE_APPLE_ACCOUNT_WELCOME_BACK");
  }

  return v5;
}

- (id)_localizedUpgradeString
{
  v3 = MEMORY[0x277CCACA8];
  v7 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v6 = [v7 localizedStringForKey:@"AUTHORIZE_APPLE_ACCOUNT_UPGRADE_LOGIN" value:&stru_28358EF68 table:@"Localizable"];
  v5 = [(AKAuthorizationInputPaneViewController *)self presentationContext];
  v4 = [(AKAuthorizationPresentationContext *)v5 localizedAppName];
  v8 = [v3 stringWithFormat:v6, v4];
  MEMORY[0x277D82BD8](v4);
  MEMORY[0x277D82BD8](v5);
  MEMORY[0x277D82BD8](v6);
  MEMORY[0x277D82BD8](v7);

  return v8;
}

- (id)_localizedSubscriptionString
{
  v17 = self;
  location[1] = a2;
  location[0] = 0;
  v13 = [(AKAuthorizationInputPaneViewController *)self presentationContext];
  v12 = [(AKAuthorizationPresentationContext *)v13 credentialRequestContext];
  v11 = [v12 authorizationRequest];
  v14 = [v11 existingStatus];
  MEMORY[0x277D82BD8](v11);
  MEMORY[0x277D82BD8](v12);
  MEMORY[0x277D82BD8](v13);
  if (v14 == 1)
  {
    objc_storeStrong(location, @"AUTHORIZE_APPLE_ID_WELCOME_SUBSCRIPTION");
  }

  else
  {
    objc_storeStrong(location, @"AUTHORIZE_APPLEID_CREATE_SUBSCRIPTION");
  }

  v10 = [(AKAuthorizationInputPaneViewController *)v17 presentationContext];
  v15 = [(AKAuthorizationPresentationContext *)v10 localizedAppName];
  if ([v15 length])
  {
    v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@_APPNAME_FORMAT", location[0]];
    v3 = location[0];
    location[0] = v2;
    MEMORY[0x277D82BD8](v3);
    v7 = MEMORY[0x277CCACA8];
    v9 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v8 = [v9 localizedStringForKey:location[0] value:&stru_28358EF68 table:@"Localizable"];
    v18 = [v7 stringWithFormat:v15];
    MEMORY[0x277D82BD8](v8);
    MEMORY[0x277D82BD8](v9);
  }

  else
  {
    v6 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v18 = [v6 localizedStringForKey:location[0] value:&stru_28358EF68 table:@"Localizable"];
    MEMORY[0x277D82BD8](v6);
  }

  objc_storeStrong(&v15, 0);
  objc_storeStrong(location, 0);
  v4 = v18;

  return v4;
}

- (id)_localizedSharedAccountsChoiceString
{
  v14 = self;
  location[1] = a2;
  v10 = [(AKAuthorizationInputPaneViewController *)self presentationContext];
  location[0] = [(AKAuthorizationPresentationContext *)v10 localizedAppName];
  v11 = [(AKAuthorizationInputPaneViewController *)v14 presentationContext];
  v12 = [(AKAuthorizationPresentationContext *)v11 hasCreateAccountLoginChoice];
  MEMORY[0x277D82BD8](v11);
  if (v12)
  {
    v7 = MEMORY[0x277CCACA8];
    v9 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v8 = [v9 localizedStringForKey:@"AUTHORIZE_CREATE_ACCOUNT_OR_SHARED_ACCOUNT_MESSAGE" value:&stru_28358EF68 table:@"Localizable"];
    v15 = [v7 stringWithFormat:location[0]];
    MEMORY[0x277D82BD8](v8);
    MEMORY[0x277D82BD8](v9);
  }

  else
  {
    v4 = MEMORY[0x277CCACA8];
    v6 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v5 = [v6 localizedStringForKey:@"AUTHORIZE_EXISTING_ACCOUNT_OR_SHARED_ACCOUNT_MESSAGE" value:&stru_28358EF68 table:@"Localizable"];
    v15 = [v4 stringWithFormat:location[0]];
    MEMORY[0x277D82BD8](v5);
    MEMORY[0x277D82BD8](v6);
  }

  objc_storeStrong(location, 0);
  v2 = v15;

  return v2;
}

- (id)_localizedChoiceString
{
  v3 = MEMORY[0x277CCACA8];
  v7 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v6 = [v7 localizedStringForKey:@"AUTHORIZE_APPLE_ACCOUNT_WELCOME_BACK_APPNAME_FORMAT" value:&stru_28358EF68 table:@"Localizable"];
  v5 = [(AKAuthorizationInputPaneViewController *)self presentationContext];
  v4 = [(AKAuthorizationPresentationContext *)v5 localizedAppName];
  v8 = [v3 stringWithFormat:v6, v4];
  MEMORY[0x277D82BD8](v4);
  MEMORY[0x277D82BD8](v5);
  MEMORY[0x277D82BD8](v6);
  MEMORY[0x277D82BD8](v7);

  return v8;
}

- (id)_localizedNameKey
{
  v3 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v4 = [v3 localizedStringForKey:@"AUTHORIZE_FULL_NAME" value:&stru_28358EF68 table:@"Localizable"];
  MEMORY[0x277D82BD8](v3);

  return v4;
}

- (id)_localizedEmailKey
{
  v3 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v4 = [v3 localizedStringForKey:@"AUTHORIZE_EMAIL_CONTACT" value:&stru_28358EF68 table:@"Localizable"];
  MEMORY[0x277D82BD8](v3);

  return v4;
}

- (id)_defaultSharedEmail
{
  v10 = [(AKAuthorizationInputPaneViewController *)self authorizationViewController];
  v11 = [(AKAuthorizationViewController *)v10 _isManagedAppleID];
  *&v2 = MEMORY[0x277D82BD8](v10).n128_u64[0];
  if (v11)
  {
    v9 = [(AKAuthorizationInputPaneViewController *)self editableScopeChoices];
    v13 = [(AKAuthorizationScopeChoices *)v9 chosenEmail];
    MEMORY[0x277D82BD8](v9);
  }

  else
  {
    v7 = [(AKAuthorizationInputPaneViewController *)self editableScopeChoices];
    v8 = [(AKAuthorizationScopeChoices *)v7 indexOfChosenEmail];
    *&v3 = MEMORY[0x277D82BD8](v7).n128_u64[0];
    if (v8 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v6 = [(AKAuthorizationInputPaneViewController *)self editableScopeChoices];
      v13 = [(AKAuthorizationScopeChoices *)v6 emailAtIndex:0];
      MEMORY[0x277D82BD8](v6);
    }

    else
    {
      v5 = [(AKAuthorizationInputPaneViewController *)self editableScopeChoices];
      v13 = [(AKAuthorizationScopeChoices *)v5 chosenEmail];
      MEMORY[0x277D82BD8](v5);
    }
  }

  return v13;
}

- (id)_selectedLoginChoice
{
  v7 = 0;
  v6 = 1;
  if (![(AKAuthorizationInputPaneViewController *)self _shouldPresentCreateFlow])
  {
    v8 = [(AKAuthorizationInputPaneViewController *)self editableScopeChoices];
    v7 = 1;
    v6 = [(AKAuthorizationScopeChoices *)v8 indexOfChosenLogin]== 0x7FFFFFFFFFFFFFFFLL;
  }

  if (v7)
  {
    MEMORY[0x277D82BD8](v8);
  }

  if (v6)
  {
    v10 = 0;
  }

  else
  {
    v5 = [(AKAuthorizationInputPaneViewController *)self presentationContext];
    v4 = [(AKAuthorizationPresentationContext *)v5 loginChoices];
    v3 = [(AKAuthorizationInputPaneViewController *)self editableScopeChoices];
    v10 = [v4 objectAtIndex:{-[AKAuthorizationScopeChoices indexOfChosenLogin](v3, "indexOfChosenLogin")}];
    MEMORY[0x277D82BD8](v3);
    MEMORY[0x277D82BD8](v4);
    MEMORY[0x277D82BD8](v5);
  }

  return v10;
}

- (int64_t)numberOfSectionsInTableView:(id)a3
{
  v15 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  if (![(AKAuthorizationInputPaneViewController *)v15 isEditingName])
  {
    v10 = [MEMORY[0x277CF0228] sharedManager];
    v11 = [v10 isSiwaCredentialSharingEnabled];
    *&v3 = MEMORY[0x277D82BD8](v10).n128_u64[0];
    if (v11)
    {
      if ([(AKAuthorizationInputPaneViewController *)v15 _shouldPresentUpgradeFlow])
      {
        v16 = 0;
        goto LABEL_16;
      }

      v8 = [(AKAuthorizationInputPaneViewController *)v15 presentationContext];
      v7 = [(AKAuthorizationPresentationContext *)v8 loginChoices];
      v9 = [v7 count];
      MEMORY[0x277D82BD8](v7);
      v4 = MEMORY[0x277D82BD8](v8).n128_u64[0];
      if (v9)
      {
        v16 = 1;
        goto LABEL_16;
      }
    }

    else
    {
      v12 = 0;
      HIDWORD(v6) = 0;
      if ([(AKAuthorizationInputPaneViewController *)v15 _hasOneLoginChoice])
      {
        v13 = [(AKAuthorizationInputPaneViewController *)v15 _firstLoginChoice];
        v12 = 1;
        HIDWORD(v6) = [v13 isAppleIDAuthorization];
      }

      LODWORD(v6) = HIDWORD(v6);
      if (v12)
      {
        v4 = MEMORY[0x277D82BD8](v13).n128_u64[0];
      }

      if ((v6 & 0x100000000) != 0)
      {
        v16 = 0;
        goto LABEL_16;
      }
    }

    v16 = [(NSArray *)v15->_validatedScopes count:*&v4];
    goto LABEL_16;
  }

  v16 = 1;
LABEL_16:
  objc_storeStrong(location, 0);
  return v16;
}

- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4
{
  v15 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v13 = a4;
  v8 = [(AKAuthorizationInputPaneViewController *)v15 presentationContext];
  v7 = [(AKAuthorizationPresentationContext *)v8 loginChoices];
  v9 = [v7 count];
  MEMORY[0x277D82BD8](v7);
  *&v4 = MEMORY[0x277D82BD8](v8).n128_u64[0];
  v12 = v9;
  if ([(AKAuthorizationInputPaneViewController *)v15 isEditingName])
  {
    v16 = 2;
    v11 = 1;
  }

  else if ([(AKAuthorizationInputPaneViewController *)v15 _shouldPresentCreateFlow])
  {
    v10 = [(NSArray *)v15->_validatedScopes objectAtIndexedSubscript:v13];
    v16 = [(AKAuthorizationInputPaneViewController *)v15 _numberOfRowsInScope:v10];
    v11 = 1;
    objc_storeStrong(&v10, 0);
  }

  else
  {
    if (v12 <= 0)
    {
      v16 = 1;
    }

    else
    {
      v16 = v12;
    }

    v11 = 1;
  }

  objc_storeStrong(location, 0);
  return v16;
}

- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4
{
  v16 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v14 = 0;
  objc_storeStrong(&v14, a4);
  v13 = [v14 section];
  v12 = [v14 row];
  if ([(AKAuthorizationInputPaneViewController *)v16 isEditingName])
  {
    v17 = [(AKAuthorizationInputPaneViewController *)v16 _editingNameCellForRow:v12];
    v11 = 1;
  }

  else if ([(AKAuthorizationInputPaneViewController *)v16 _shouldPresentCreateFlow])
  {
    v10 = [(NSArray *)v16->_validatedScopes objectAtIndexedSubscript:v13];
    v17 = -[AKAuthorizationInputPaneViewController _cellForScope:localRow:](v16, "_cellForScope:localRow:", v10, [v14 row]);
    v11 = 1;
    objc_storeStrong(&v10, 0);
  }

  else
  {
    v7 = [MEMORY[0x277CF0228] sharedManager];
    LOBYTE(v8) = 0;
    if ([v7 isSiwaCredentialSharingEnabled])
    {
      v8 = ![(AKAuthorizationInputPaneViewController *)v16 _shouldPresentUpgradeFlow];
    }

    *&v4 = MEMORY[0x277D82BD8](v7).n128_u64[0];
    if (v8)
    {
      v17 = [(AKAuthorizationInputPaneViewController *)v16 _loginChoiceTableViewCellForRow:v12, v4];
    }

    else
    {
      v17 = [(AKAuthorizationInputPaneViewController *)v16 _loginChoiceCellForRow:v12, v4];
    }

    v11 = 1;
  }

  objc_storeStrong(&v14, 0);
  objc_storeStrong(location, 0);
  v5 = v17;

  return v5;
}

- (BOOL)tableView:(id)a3 shouldHighlightRowAtIndexPath:(id)a4
{
  v9 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v7 = 0;
  objc_storeStrong(&v7, a4);
  v6 = ![(AKAuthorizationInputPaneViewController *)v9 isEditingName];
  objc_storeStrong(&v7, 0);
  objc_storeStrong(location, 0);
  return v6;
}

- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4
{
  v63 = *MEMORY[0x277D85DE8];
  v60 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v58 = 0;
  objc_storeStrong(&v58, a4);
  v57 = [v58 section];
  v56 = [v58 row];
  if ([(AKAuthorizationInputPaneViewController *)v60 _shouldPresentCreateFlow])
  {
    if (![(AKAuthorizationInputPaneViewController *)v60 isEditingName])
    {
      v55 = [(NSArray *)v60->_validatedScopes objectAtIndexedSubscript:v57];
      -[AKAuthorizationInputPaneViewController _selectScope:localRow:](v60, "_selectScope:localRow:", v55, [v58 row]);
      [location[0] deselectRowAtIndexPath:v58 animated:1];
      objc_storeStrong(&v55, 0);
    }
  }

  else
  {
    v39 = [(AKAuthorizationInputPaneViewController *)v60 presentationContext];
    v38 = [(AKAuthorizationPresentationContext *)v39 loginChoices];
    v40 = [v38 count];
    MEMORY[0x277D82BD8](v38);
    *&v4 = MEMORY[0x277D82BD8](v39).n128_u64[0];
    if (v56 < v40)
    {
      v33 = [MEMORY[0x277CF0228] sharedManager];
      v34 = 0;
      if ([v33 isSiwaCredentialSharingEnabled])
      {
        v34 = [(AKAuthorizationInputPaneViewController *)v60 _hasSharedAccountLoginChoices];
      }

      *&v5 = MEMORY[0x277D82BD8](v33).n128_u64[0];
      if (v34)
      {
        v31 = [(AKAuthorizationInputPaneViewController *)v60 editableScopeChoices];
        v32 = [(AKAuthorizationScopeChoices *)v31 indexOfChosenLogin];
        *&v6 = MEMORY[0x277D82BD8](v31).n128_u64[0];
        if (v32 != 0x7FFFFFFFFFFFFFFFLL)
        {
          v29 = MEMORY[0x277CCAA70];
          v30 = [(AKAuthorizationInputPaneViewController *)v60 editableScopeChoices];
          v52 = [v29 indexPathForRow:-[AKAuthorizationScopeChoices indexOfChosenLogin](v30 inSection:{"indexOfChosenLogin"), 0}];
          *&v7 = MEMORY[0x277D82BD8](v30).n128_u64[0];
          v51 = [location[0] cellForRowAtIndexPath:{v52, v7}];
          [v51 setChecked:0];
          objc_storeStrong(&v51, 0);
          objc_storeStrong(&v52, 0);
        }

        v27 = [(AKAuthorizationInputPaneViewController *)v60 presentationContext];
        v26 = [(AKAuthorizationPresentationContext *)v27 loginChoices];
        v28 = [v26 count];
        MEMORY[0x277D82BD8](v26);
        *&v8 = MEMORY[0x277D82BD8](v27).n128_u64[0];
        if (v28 > 1)
        {
          [(AKAuthorizationInputPaneViewController *)v60 _selectLoginChoiceCell:v58, v8];
        }

        v24 = [(AKAuthorizationInputPaneViewController *)v60 presentationContext];
        v49 = 0;
        v47 = 0;
        v45 = 0;
        v25 = 0;
        if (([(AKAuthorizationPresentationContext *)v24 hasCreateAccountLoginChoice]& 1) != 0)
        {
          v50 = [(AKAuthorizationInputPaneViewController *)v60 presentationContext];
          v49 = 1;
          v48 = [(AKAuthorizationPresentationContext *)v50 loginChoices];
          v47 = 1;
          v46 = [v48 objectAtIndex:v56];
          v45 = 1;
          v25 = [v46 shouldCreateAppleID];
        }

        if (v45)
        {
          MEMORY[0x277D82BD8](v46);
        }

        if (v47)
        {
          MEMORY[0x277D82BD8](v48);
        }

        if (v49)
        {
          MEMORY[0x277D82BD8](v50);
        }

        *&v9 = MEMORY[0x277D82BD8](v24).n128_u64[0];
        if (v25)
        {
          v23 = [(AKAuthorizationInputPaneViewController *)v60 confirmButton];
          [(AKAuthorizationSubPaneConfirmButton *)v23 switchToAccountCreation];
          v10 = MEMORY[0x277D82BD8](v23).n128_u64[0];
        }

        else
        {
          v22 = [(AKAuthorizationInputPaneViewController *)v60 confirmButton];
          [(AKAuthorizationSubPaneConfirmButton *)v22 resetToDefault];
          v10 = MEMORY[0x277D82BD8](v22).n128_u64[0];
        }

        [(AKAuthorizationInputPaneViewController *)v60 _enableOrDisableConfirmButton];
      }

      else
      {
        v44 = _AKLogSiwa();
        v43 = OS_LOG_TYPE_DEBUG;
        if (os_log_type_enabled(v44, OS_LOG_TYPE_DEBUG))
        {
          __os_log_helper_16_0_1_8_0(v61, [v58 row]);
          _os_log_debug_impl(&dword_222379000, v44, v43, "Setting login choice to cell at index %lu", v61, 0xCu);
        }

        objc_storeStrong(&v44, 0);
        v20 = [(AKAuthorizationInputPaneViewController *)v60 editableScopeChoices];
        v21 = [(AKAuthorizationScopeChoices *)v20 indexOfChosenLogin];
        *&v11 = MEMORY[0x277D82BD8](v20).n128_u64[0];
        if (v21 != 0x7FFFFFFFFFFFFFFFLL)
        {
          v17 = MEMORY[0x277CCAA70];
          v18 = [(AKAuthorizationInputPaneViewController *)v60 editableScopeChoices];
          v42 = [v17 indexPathForRow:-[AKAuthorizationScopeChoices indexOfChosenLogin](v18 inSection:"indexOfChosenLogin")];
          *&v12 = MEMORY[0x277D82BD8](v18).n128_u64[0];
          v19 = [location[0] cellForRowAtIndexPath:{v42, v12}];
          [v19 setAccessoryType:0];
          MEMORY[0x277D82BD8](v19);
          objc_storeStrong(&v42, 0);
        }

        v15 = [location[0] cellForRowAtIndexPath:v58];
        [v15 setAccessoryType:3];
        *&v13 = MEMORY[0x277D82BD8](v15).n128_u64[0];
        v16 = [(AKAuthorizationInputPaneViewController *)v60 editableScopeChoices];
        [(AKAuthorizationScopeChoices *)v16 setIndexOfChosenLogin:v56];
        *&v14 = MEMORY[0x277D82BD8](v16).n128_u64[0];
        [(AKAuthorizationInputPaneViewController *)v60 _enableOrDisableConfirmButton];
      }
    }

    else
    {
      v54 = _AKLogSiwa();
      v53 = OS_LOG_TYPE_ERROR;
      if (os_log_type_enabled(v54, OS_LOG_TYPE_ERROR))
      {
        v35 = [v58 row];
        v37 = [(AKAuthorizationInputPaneViewController *)v60 presentationContext];
        v36 = [(AKAuthorizationPresentationContext *)v37 loginChoices];
        __os_log_helper_16_0_2_8_0_8_0(v62, v35, [v36 count]);
        _os_log_error_impl(&dword_222379000, v54, v53, "Row %ld selected from %ld available login choices.", v62, 0x16u);
        MEMORY[0x277D82BD8](v36);
        MEMORY[0x277D82BD8](v37);
      }

      objc_storeStrong(&v54, 0);
    }
  }

  objc_storeStrong(&v58, 0);
  objc_storeStrong(location, 0);
  *MEMORY[0x277D85DE8];
}

- (id)_loginChoiceTableViewCellForRow:(unint64_t)a3
{
  v47 = self;
  v46 = a2;
  v45 = a3;
  v28 = [(AKAuthorizationInputPaneViewController *)self presentationContext];
  v27 = [(AKAuthorizationPresentationContext *)v28 loginChoices];
  v44 = [v27 objectAtIndex:v45];
  MEMORY[0x277D82BD8](v27);
  MEMORY[0x277D82BD8](v28);
  v43 = [[AKAuthorizationLoginChoiceTableViewCell alloc] initWithLoginChoice:v44 reuseIdentifier:@"AKAuthorizationLoginChoiceCell"];
  [(AKAuthorizationLoginChoiceTableViewCell *)v43 setAccessibilityIdentifier:0x283591908];
  +[AKAuthorizationPaneMetrics nameCellHeight];
  [(AKAuthorizationScopeDetailTableViewCell *)v43 setMinimumHeight:?];
  if (![v44 isAppleIDAuthorization])
  {
    v26 = [(AKAuthorizationInputPaneViewController *)v47 presentationContext];
    v25 = [AKIcon iconWithPresentationContext:?];
    v24 = [(AKIcon *)v25 automaskedImage];
    [(AKAuthorizationLoginChoiceTableViewCell *)v43 setIconImage:?];
    MEMORY[0x277D82BD8](v24);
    MEMORY[0x277D82BD8](v25);
    MEMORY[0x277D82BD8](v26);
  }

  v22 = [(AKAuthorizationInputPaneViewController *)v47 presentationContext];
  v21 = [(AKAuthorizationPresentationContext *)v22 loginChoices];
  v23 = [v21 count];
  MEMORY[0x277D82BD8](v21);
  *&v3 = MEMORY[0x277D82BD8](v22).n128_u64[0];
  if (v23 == 1)
  {
    [(AKAuthorizationScopeDetailTableViewCell *)v43 setCheckmarkStyle:v3];
    [(AKAuthorizationLoginChoiceTableViewCell *)v43 setSelectionStyle:0];
  }

  else
  {
    [(AKAuthorizationScopeDetailTableViewCell *)v43 setCheckmarkStyle:2, v3];
  }

  v19 = [(AKAuthorizationInputPaneViewController *)v47 editableScopeChoices];
  [(AKAuthorizationScopeDetailTableViewCell *)v43 setChecked:[(AKAuthorizationScopeChoices *)v19 indexOfChosenLogin]== v45];
  +[AKAuthorizationSubPaneMetrics scopeImageViewSize];
  v20 = [AKSignInWithAppleAvatarManager placeholderAvatarImageForPrimaryAccountOwnerWithDiameter:?];
  [(AKAuthorizationScopeDetailTableViewCell *)v43 setScopeImage:?];
  MEMORY[0x277D82BD8](v20);
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v42 = MEMORY[0x277D82BE0](v44);
    v13 = [v42 sharedAccount];
    v12 = [v13 shareInfo];
    v41 = [v12 participantHandle];
    MEMORY[0x277D82BD8](v12);
    *&v4 = MEMORY[0x277D82BD8](v13).n128_u64[0];
    v16 = [(AKAuthorizationLoginChoiceTableViewCell *)v43 sharedIconImageView];
    v15 = [v42 sharedAccount];
    v14 = [v15 shareInfo];
    -[UIImageView setHidden:](v16, "setHidden:", [v14 isCurrentUser]);
    MEMORY[0x277D82BD8](v14);
    MEMORY[0x277D82BD8](v15);
    *&v5 = MEMORY[0x277D82BD8](v16).n128_u64[0];
    v17 = v41;
    +[AKAuthorizationSubPaneMetrics scopeImageViewSize];
    v18 = v6;
    v35 = MEMORY[0x277D85DD0];
    v36 = -1073741824;
    v37 = 0;
    v38 = __74__AKAuthorizationInputPaneViewController__loginChoiceTableViewCellForRow___block_invoke;
    v39 = &unk_2784A7050;
    v40 = MEMORY[0x277D82BE0](v43);
    [AKSignInWithAppleAvatarManager avatarImageForUserHandle:v17 diameter:&v35 completion:v18];
    objc_storeStrong(&v40, 0);
    objc_storeStrong(&v41, 0);
    objc_storeStrong(&v42, 0);
  }

  else
  {
    v10 = [(AKAuthorizationLoginChoiceTableViewCell *)v43 sharedIconImageView];
    [(UIImageView *)v10 setHidden:1];
    +[AKAuthorizationSubPaneMetrics scopeImageViewSize];
    v11 = v7;
    v29 = MEMORY[0x277D85DD0];
    v30 = -1073741824;
    v31 = 0;
    v32 = __74__AKAuthorizationInputPaneViewController__loginChoiceTableViewCellForRow___block_invoke_3;
    v33 = &unk_2784A7050;
    v34 = MEMORY[0x277D82BE0](v43);
    [AKSignInWithAppleAvatarManager avatarImageForPrimaryAccountOwnerWithDiameter:&v29 completion:v11];
    objc_storeStrong(&v34, 0);
  }

  v9 = MEMORY[0x277D82BE0](v43);
  objc_storeStrong(&v43, 0);
  objc_storeStrong(&v44, 0);

  return v9;
}

void __74__AKAuthorizationInputPaneViewController__loginChoiceTableViewCellForRow___block_invoke(void *a1, void *a2)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v12[1] = a1;
  v3 = MEMORY[0x277D85CD0];
  v2 = MEMORY[0x277D85CD0];
  queue = v3;
  v6 = MEMORY[0x277D85DD0];
  v7 = -1073741824;
  v8 = 0;
  v9 = __74__AKAuthorizationInputPaneViewController__loginChoiceTableViewCellForRow___block_invoke_2;
  v10 = &unk_2784A6420;
  v11 = MEMORY[0x277D82BE0](a1[4]);
  v12[0] = MEMORY[0x277D82BE0](location[0]);
  dispatch_async(queue, &v6);
  MEMORY[0x277D82BD8](queue);
  objc_storeStrong(v12, 0);
  objc_storeStrong(&v11, 0);
  objc_storeStrong(location, 0);
}

void __74__AKAuthorizationInputPaneViewController__loginChoiceTableViewCellForRow___block_invoke_3(void *a1, void *a2)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v12[1] = a1;
  v3 = MEMORY[0x277D85CD0];
  v2 = MEMORY[0x277D85CD0];
  queue = v3;
  v6 = MEMORY[0x277D85DD0];
  v7 = -1073741824;
  v8 = 0;
  v9 = __74__AKAuthorizationInputPaneViewController__loginChoiceTableViewCellForRow___block_invoke_4;
  v10 = &unk_2784A6420;
  v11 = MEMORY[0x277D82BE0](a1[4]);
  v12[0] = MEMORY[0x277D82BE0](location[0]);
  dispatch_async(queue, &v6);
  MEMORY[0x277D82BD8](queue);
  objc_storeStrong(v12, 0);
  objc_storeStrong(&v11, 0);
  objc_storeStrong(location, 0);
}

- (void)_selectLoginChoiceCell:(id)a3
{
  v13 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v6 = [(AKAuthorizationPaneViewController *)v13 tableView];
  [(UITableView *)v6 selectRowAtIndexPath:location[0] animated:1 scrollPosition:1];
  *&v3 = MEMORY[0x277D82BD8](v6).n128_u64[0];
  v7 = [(AKAuthorizationPaneViewController *)v13 tableView];
  v11 = [(UITableView *)v7 cellForRowAtIndexPath:location[0]];
  *&v4 = MEMORY[0x277D82BD8](v7).n128_u64[0];
  [(UITableViewCell *)v11 setChecked:1, v4];
  v10 = [location[0] row];
  v8 = [(AKAuthorizationInputPaneViewController *)v13 editableScopeChoices];
  [(AKAuthorizationScopeChoices *)v8 setIndexOfChosenLogin:v10];
  *&v5 = MEMORY[0x277D82BD8](v8).n128_u64[0];
  v9 = [(AKAuthorizationPaneViewController *)v13 tableView];
  [(UITableView *)v9 deselectRowAtIndexPath:location[0] animated:1];
  MEMORY[0x277D82BD8](v9);
  objc_storeStrong(&v11, 0);
  objc_storeStrong(location, 0);
}

- (BOOL)textFieldShouldReturn:(id)a3
{
  v12 = *MEMORY[0x277D85DE8];
  v9 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v7 = [location[0] tag];
  v5 = [location[0] returnKeyType];
  if (v5 == 4)
  {
    [(AKAuthorizationInputPaneViewController *)v9 _beginEditingRow:v7 + 1];
LABEL_9:
    v10 = 1;
    goto LABEL_10;
  }

  if (v5 == 9)
  {
    [(AKAuthorizationInputPaneViewController *)v9 _nameEditDone];
    goto LABEL_9;
  }

  oslog = _AKLogSiwa();
  if (os_log_type_enabled(oslog, OS_LOG_TYPE_ERROR))
  {
    v4 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(location[0], "returnKeyType")}];
    __os_log_helper_16_2_1_8_64(v11, v4);
    _os_log_error_impl(&dword_222379000, oslog, OS_LOG_TYPE_ERROR, "Text field of unexpected return key type %@", v11, 0xCu);
    MEMORY[0x277D82BD8](v4);
  }

  objc_storeStrong(&oslog, 0);
  v10 = 0;
LABEL_10:
  objc_storeStrong(location, 0);
  *MEMORY[0x277D85DE8];
  return v10 & 1;
}

- (BOOL)textField:(id)a3 shouldChangeCharactersInRange:(_NSRange)a4 replacementString:(id)a5
{
  v24 = a4;
  v23 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v21 = 0;
  objc_storeStrong(&v21, a5);
  v14 = [location[0] text];
  v20 = [v14 stringByReplacingCharactersInRange:v24.location withString:{v24.length, v21}];
  *&v5 = MEMORY[0x277D82BD8](v14).n128_u64[0];
  v15 = v24.location;
  v26 = v15 + [v21 length];
  v25 = 0;
  v27 = v26;
  v28 = 0;
  v19[0] = v26;
  v19[1] = 0;
  v16 = [(AKAuthorizationInputPaneViewController *)v23 nameFormatter];
  v6 = MEMORY[0x277D82BD8](v16).n128_u64[0];
  if (!v16)
  {
    v7 = objc_alloc_init(AKAuthorizationNameFormatter);
    nameFormatter = v23->_nameFormatter;
    v23->_nameFormatter = v7;
    v6 = MEMORY[0x277D82BD8](nameFormatter).n128_u64[0];
  }

  v11 = [(AKAuthorizationInputPaneViewController *)v23 nameFormatter];
  v17 = v20;
  v10 = [location[0] text];
  v12 = [AKAuthorizationNameFormatter isPartialStringValid:v11 proposedSelectedRange:"isPartialStringValid:proposedSelectedRange:originalString:originalSelectedRange:errorDescription:" originalString:&v17 originalSelectedRange:v19 errorDescription:?];
  objc_storeStrong(&v20, v17);
  MEMORY[0x277D82BD8](v10);
  MEMORY[0x277D82BD8](v11);
  v18 = v12;
  objc_storeStrong(&v20, 0);
  objc_storeStrong(&v21, 0);
  objc_storeStrong(location, 0);
  return v12;
}

- (id)_cellForScope:(id)a3 localRow:(int64_t)a4
{
  v14 = *MEMORY[0x277D85DE8];
  v11 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v9 = a4;
  if ([location[0] isEqualToString:*MEMORY[0x277CEFFE8]])
  {
    v12 = [(AKAuthorizationInputPaneViewController *)v11 _nameCell];
    v8 = 1;
  }

  else if ([location[0] isEqualToString:*MEMORY[0x277CEFFE0]])
  {
    v12 = [(AKAuthorizationInputPaneViewController *)v11 _emailCellForLocalRow:v9];
    v8 = 1;
  }

  else
  {
    oslog = _AKLogSiwa();
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_ERROR))
    {
      __os_log_helper_16_2_1_8_64(v13, location[0]);
      _os_log_error_impl(&dword_222379000, oslog, OS_LOG_TYPE_ERROR, "Unknown scope: %@", v13, 0xCu);
    }

    objc_storeStrong(&oslog, 0);
    v12 = 0;
    v8 = 1;
  }

  objc_storeStrong(location, 0);
  *MEMORY[0x277D85DE8];
  v4 = v12;

  return v4;
}

- (id)_nameCell
{
  v33 = self;
  v32[1] = a2;
  v29 = [(AKAuthorizationPaneViewController *)self tableView];
  v32[0] = [(UITableView *)v29 dequeueReusableCellWithIdentifier:@"AKAuthorizationScopeDetailTableViewCell-Name"];
  [v32[0] setAccessibilityIdentifier:{0x283591888, MEMORY[0x277D82BD8](v29).n128_f64[0]}];
  +[AKAuthorizationPaneMetrics nameCellHeight];
  [v32[0] setMinimumHeight:?];
  v30 = [MEMORY[0x277CF0228] sharedManager];
  v31 = [v30 isLisbonAvailable];
  *&v2 = MEMORY[0x277D82BD8](v30).n128_u64[0];
  if (v31 == 1)
  {
    v22 = [v32[0] scopeLabel];
    [v22 setText:0];
    v24 = [(AKAuthorizationInputPaneViewController *)v33 _localizedNameKey];
    v23 = [v32[0] mainLabel];
    [v23 setText:v24];
    MEMORY[0x277D82BD8](v23);
    v27 = [(AKAuthorizationInputPaneViewController *)v33 editableScopeChoices];
    v26 = [(AKAuthorizationScopeChoices *)v27 localizedName];
    v25 = [v32[0] mainDetailLabel];
    [v25 setText:v26];
    MEMORY[0x277D82BD8](v25);
    MEMORY[0x277D82BD8](v26);
    v28 = [MEMORY[0x277D755B8] systemImageNamed:{@"person.fill", MEMORY[0x277D82BD8](v27).n128_f64[0]}];
    [v32[0] setScopeImage:?];
    v3 = MEMORY[0x277D82BD8](v28).n128_u64[0];
  }

  else
  {
    v17 = [(AKAuthorizationInputPaneViewController *)v33 _localizedNameKey];
    v16 = [v17 localizedUppercaseString];
    v15 = [v32[0] scopeLabel];
    [v15 setText:v16];
    MEMORY[0x277D82BD8](v15);
    MEMORY[0x277D82BD8](v16);
    v20 = [(AKAuthorizationInputPaneViewController *)v33 editableScopeChoices];
    v19 = [(AKAuthorizationScopeChoices *)v20 localizedName];
    v18 = [v32[0] mainLabel];
    [v18 setText:v19];
    MEMORY[0x277D82BD8](v18);
    MEMORY[0x277D82BD8](v19);
    v21 = [v32[0] mainDetailLabel];
    [v21 setText:0];
    v3 = MEMORY[0x277D82BD8](v21).n128_u64[0];
  }

  v13 = [(AKAuthorizationInputPaneViewController *)v33 authorizationViewController];
  v14 = [(AKAuthorizationViewController *)v13 _isManagedAppleID];
  *&v4 = MEMORY[0x277D82BD8](v13).n128_u64[0];
  if (v14)
  {
    v10 = [(AKAuthorizationInputPaneViewController *)v33 editableScopeChoices];
    v9 = [(AKAuthorizationScopeChoices *)v10 localizedName];
    v8 = [v32[0] mainLabel];
    [v8 setText:v9];
    MEMORY[0x277D82BD8](v8);
    MEMORY[0x277D82BD8](v9);
    v12 = [(AKAuthorizationInputPaneViewController *)v33 _nameCellDetailLabelTextForManagedAppleID];
    v11 = [v32[0] mainDetailLabel];
    [v11 setText:v12];
    MEMORY[0x277D82BD8](v11);
    MEMORY[0x277D82BD8](v12);
  }

  else
  {
    v7 = [(AKAuthorizationInputPaneViewController *)v33 _clearButton];
    [v32[0] setAccessoryView:?];
    MEMORY[0x277D82BD8](v7);
  }

  v6 = MEMORY[0x277D82BE0](v32[0]);
  objc_storeStrong(v32, 0);

  return v6;
}

- (id)_emailCellForLocalRow:(int64_t)a3
{
  v5 = 0;
  v4 = 0;
  if ([(AKAuthorizationInputPaneViewController *)self _isUnderageUser])
  {
    v6 = [MEMORY[0x277CF0228] sharedManager];
    v5 = 1;
    v4 = [v6 isTiburonU13Enabled];
  }

  if (v5)
  {
    MEMORY[0x277D82BD8](v6);
  }

  if (v4)
  {
    goto LABEL_6;
  }

  if (a3)
  {
    if (a3 == [(AKAuthorizationInputPaneViewController *)self _numberOfRowsInScope:*MEMORY[0x277CEFFE0]]- 1)
    {
LABEL_6:
      v9 = [(AKAuthorizationInputPaneViewController *)self _hideMyEmailCell];
      goto LABEL_11;
    }

    v9 = [(AKAuthorizationInputPaneViewController *)self _singleEmailCellForIndex:a3 - 1];
  }

  else
  {
    v9 = [(AKAuthorizationInputPaneViewController *)self _shareMyEmailCell];
  }

LABEL_11:

  return v9;
}

- (id)_shareMyEmailCell
{
  v27 = self;
  v26[1] = a2;
  v21 = [(AKAuthorizationPaneViewController *)self tableView];
  v26[0] = [(UITableView *)v21 dequeueReusableCellWithIdentifier:@"AKAuthorizationScopeDetailTableViewCell-Email-Summary"];
  [v26[0] setAccessibilityIdentifier:{0x2835918A8, MEMORY[0x277D82BD8](v21).n128_f64[0]}];
  v22 = [(AKAuthorizationInputPaneViewController *)v27 authorizationViewController];
  v23 = [(AKAuthorizationViewController *)v22 _isManagedAppleID];
  *&v2 = MEMORY[0x277D82BD8](v22).n128_u64[0];
  if (v23)
  {
    v15 = [(AKAuthorizationInputPaneViewController *)v27 _defaultSharedEmail];
    v14 = [v26[0] mainLabel];
    [v14 setText:v15];
    MEMORY[0x277D82BD8](v14);
    v19 = [(AKAuthorizationInputPaneViewController *)v27 presentationContext];
    v18 = [(AKAuthorizationPresentationContext *)v19 userInformation];
    v17 = [v18 managedOrganizationName];
    v16 = [v26[0] mainDetailLabel];
    [v16 setText:v17];
    MEMORY[0x277D82BD8](v16);
    MEMORY[0x277D82BD8](v17);
    MEMORY[0x277D82BD8](v18);
    [v26[0] setCheckmarkStyle:{0, MEMORY[0x277D82BD8](v19).n128_f64[0]}];
    v20 = [MEMORY[0x277D755B8] systemImageNamed:@"envelope.fill"];
    [v26[0] setScopeImage:?];
    v3 = MEMORY[0x277D82BD8](v20).n128_u64[0];
  }

  else
  {
    v8 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v7 = [v8 localizedStringForKey:@"AUTHORIZE_SHARE_MY_EMAIL" value:&stru_28358EF68 table:@"Localizable"];
    v6 = [v26[0] mainLabel];
    [v6 setText:v7];
    MEMORY[0x277D82BD8](v6);
    MEMORY[0x277D82BD8](v7);
    v10 = [(AKAuthorizationInputPaneViewController *)v27 _defaultSharedEmail];
    v9 = [v26[0] mainDetailLabel];
    [v9 setText:v10];
    MEMORY[0x277D82BD8](v9);
    [v26[0] setCheckmarkStyle:{2, MEMORY[0x277D82BD8](v10).n128_f64[0]}];
    v11 = [MEMORY[0x277D755B8] systemImageNamed:@"envelope.fill"];
    [v26[0] setScopeImage:?];
    v12 = [(AKAuthorizationInputPaneViewController *)v27 editableScopeChoices];
    v24 = 0;
    v13 = 0;
    if (![(AKAuthorizationScopeChoices *)v12 wantsPrivateEmail])
    {
      v25 = [(AKAuthorizationInputPaneViewController *)v27 editableScopeChoices];
      v24 = 1;
      v13 = [(AKAuthorizationScopeChoices *)v25 indexOfChosenEmail]!= 0x7FFFFFFFFFFFFFFFLL;
    }

    [v26[0] setChecked:v13];
    if (v24)
    {
      MEMORY[0x277D82BD8](v25);
    }

    v3 = MEMORY[0x277D82BD8](v12).n128_u64[0];
  }

  +[AKAuthorizationPaneMetrics emailCellHeight];
  [v26[0] setMinimumHeight:?];
  [v26[0] _setSeparatorIndentToMainLabel];
  v5 = MEMORY[0x277D82BE0](v26[0]);
  objc_storeStrong(v26, 0);

  return v5;
}

- (id)_hideMyEmailCell
{
  v22 = self;
  v21[1] = a2;
  v5 = [(AKAuthorizationPaneViewController *)self tableView];
  v21[0] = [(UITableView *)v5 dequeueReusableCellWithIdentifier:@"AKAuthorizationScopeDetailTableViewCell-Email-Summary"];
  [v21[0] setAccessibilityIdentifier:{0x2835918C8, MEMORY[0x277D82BD8](v5).n128_f64[0]}];
  +[AKAuthorizationPaneMetrics emailCellHeight];
  [v21[0] setMinimumHeight:?];
  v6 = [v21[0] scopeLabel];
  [v6 setText:?];
  [v21[0] setScopeImage:{0, MEMORY[0x277D82BD8](v6).n128_f64[0]}];
  v9 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v8 = [v9 localizedStringForKey:@"AUTHORIZE_HIDE_MY_EMAIL" value:&stru_28358EF68 table:?];
  v7 = [v21[0] mainLabel];
  [v7 setText:v8];
  MEMORY[0x277D82BD8](v7);
  MEMORY[0x277D82BD8](v8);
  MEMORY[0x277D82BD8](v9);
  v10 = MEMORY[0x277CCACA8];
  v16 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v15 = [v16 localizedStringForKey:@"AUTHORIZE_FORWARD_TO_FORMAT" value:&stru_28358EF68 table:@"Localizable"];
  v14 = [(AKAuthorizationInputPaneViewController *)v22 editableScopeChoices];
  v13 = [(AKAuthorizationScopeChoices *)v14 forwardingEmail];
  v12 = [v10 stringWithFormat:v15, v13];
  v11 = [v21[0] mainDetailLabel];
  [v11 setText:v12];
  MEMORY[0x277D82BD8](v11);
  MEMORY[0x277D82BD8](v12);
  MEMORY[0x277D82BD8](v13);
  MEMORY[0x277D82BD8](v14);
  MEMORY[0x277D82BD8](v15);
  [v21[0] setCheckmarkStyle:{2, MEMORY[0x277D82BD8](v16).n128_f64[0]}];
  v17 = [(AKAuthorizationInputPaneViewController *)v22 editableScopeChoices];
  [v21[0] setChecked:{-[AKAuthorizationScopeChoices wantsPrivateEmail](v17, "wantsPrivateEmail")}];
  [v21[0] _setSeparatorIndentToMainLabel];
  v19 = 0;
  v18 = 0;
  if ([(AKAuthorizationInputPaneViewController *)v22 _isUnderageUser])
  {
    v20 = [MEMORY[0x277CF0228] sharedManager];
    v19 = 1;
    v18 = [v20 isTiburonU13Enabled];
  }

  if (v19)
  {
    MEMORY[0x277D82BD8](v20);
  }

  if (v18)
  {
    v4 = [MEMORY[0x277D755B8] systemImageNamed:@"envelope.fill"];
    [v21[0] setScopeImage:?];
    MEMORY[0x277D82BD8](v4);
  }

  v3 = MEMORY[0x277D82BE0](v21[0]);
  objc_storeStrong(v21, 0);

  return v3;
}

- (id)_editingNameCellForRow:(unint64_t)a3
{
  v16 = *MEMORY[0x277D85DE8];
  v14 = self;
  v13 = a2;
  v12 = a3;
  v7 = [(AKAuthorizationPaneViewController *)self tableView];
  v11 = [(UITableView *)v7 dequeueReusableCellWithIdentifier:@"AKAuthorizationScopeEditTableViewCell-Name"];
  v8 = [(UITableViewCell *)v11 detailTextField];
  [v8 setDelegate:v14];
  v9 = [(UITableViewCell *)v11 detailTextField];
  [v9 setTag:v12];
  *&v3 = MEMORY[0x277D82BD8](v9).n128_u64[0];
  if (v12 == v14->_editingGivenNameIndex)
  {
    [(AKAuthorizationInputPaneViewController *)v14 _setupGivenNameCell:v11, v3];
  }

  else if (v12 == v14->_editingFamilyNameIndex)
  {
    [(AKAuthorizationInputPaneViewController *)v14 _setupFamilyNameCell:v11, v3];
  }

  else
  {
    location = _AKLogSiwa();
    if (os_log_type_enabled(location, OS_LOG_TYPE_ERROR))
    {
      v6 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v12];
      __os_log_helper_16_2_1_8_64(v15, v6);
      _os_log_error_impl(&dword_222379000, location, OS_LOG_TYPE_ERROR, "_setupCell unknown row %@", v15, 0xCu);
      MEMORY[0x277D82BD8](v6);
    }

    objc_storeStrong(&location, 0);
  }

  v5 = MEMORY[0x277D82BE0](v11);
  objc_storeStrong(&v11, 0);
  *MEMORY[0x277D85DE8];

  return v5;
}

- (void)_setupGivenNameCell:(id)a3
{
  v27 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v25 = +[AKAuthorizationScopeChoices localizedGivenNameLabel];
  v23 = [MEMORY[0x277CF0228] sharedManager];
  v24 = [v23 isLisbonAvailable];
  v3 = MEMORY[0x277D82BD8](v23).n128_u64[0];
  if (!v24)
  {
    v4 = [(NSString *)v25 localizedUppercaseString];
    v5 = v25;
    v25 = v4;
    v3 = MEMORY[0x277D82BD8](v5).n128_u64[0];
  }

  v11 = v25;
  v12 = [location[0] textLabel];
  [v12 setText:v11];
  v14 = +[AKAuthorizationScopeChoices localizedGivenNameLabel];
  v13 = [location[0] detailTextField];
  [v13 setAccessibilityIdentifier:v14];
  MEMORY[0x277D82BD8](v13);
  *&v6 = MEMORY[0x277D82BD8](v14).n128_u64[0];
  v17 = [(AKAuthorizationInputPaneViewController *)v27 editingUserInformation];
  v16 = [(AKUserInformation *)v17 givenName];
  v15 = [location[0] detailTextField];
  [v15 setText:v16];
  MEMORY[0x277D82BD8](v15);
  MEMORY[0x277D82BD8](v16);
  *&v7 = MEMORY[0x277D82BD8](v17).n128_u64[0];
  v18 = *MEMORY[0x277D76FD0];
  v19 = [location[0] detailTextField];
  [v19 setTextContentType:v18];
  *&v8 = MEMORY[0x277D82BD8](v19).n128_u64[0];
  v20 = [location[0] detailTextField];
  [v20 setReturnKeyType:4];
  *&v9 = MEMORY[0x277D82BD8](v20).n128_u64[0];
  v21 = [location[0] detailTextField];
  [v21 removeTarget:v27 action:? forControlEvents:?];
  *&v10 = MEMORY[0x277D82BD8](v21).n128_u64[0];
  v22 = [location[0] detailTextField];
  [v22 addTarget:v27 action:sel__setGivenNameFromTextField_ forControlEvents:0x20000];
  MEMORY[0x277D82BD8](v22);
  objc_storeStrong(&v25, 0);
  objc_storeStrong(location, 0);
}

- (void)_setupFamilyNameCell:(id)a3
{
  v27 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v25 = +[AKAuthorizationScopeChoices localizedFamilyNameLabel];
  v23 = [MEMORY[0x277CF0228] sharedManager];
  v24 = [v23 isLisbonAvailable];
  v3 = MEMORY[0x277D82BD8](v23).n128_u64[0];
  if (!v24)
  {
    v4 = [(NSString *)v25 localizedUppercaseString];
    v5 = v25;
    v25 = v4;
    v3 = MEMORY[0x277D82BD8](v5).n128_u64[0];
  }

  v11 = v25;
  v12 = [location[0] textLabel];
  [v12 setText:v11];
  v14 = +[AKAuthorizationScopeChoices localizedFamilyNameLabel];
  v13 = [location[0] detailTextField];
  [v13 setAccessibilityIdentifier:v14];
  MEMORY[0x277D82BD8](v13);
  *&v6 = MEMORY[0x277D82BD8](v14).n128_u64[0];
  v17 = [(AKAuthorizationInputPaneViewController *)v27 editingUserInformation];
  v16 = [(AKUserInformation *)v17 familyName];
  v15 = [location[0] detailTextField];
  [v15 setText:v16];
  MEMORY[0x277D82BD8](v15);
  MEMORY[0x277D82BD8](v16);
  *&v7 = MEMORY[0x277D82BD8](v17).n128_u64[0];
  v18 = *MEMORY[0x277D76FC0];
  v19 = [location[0] detailTextField];
  [v19 setTextContentType:v18];
  *&v8 = MEMORY[0x277D82BD8](v19).n128_u64[0];
  v20 = [location[0] detailTextField];
  [v20 setReturnKeyType:9];
  *&v9 = MEMORY[0x277D82BD8](v20).n128_u64[0];
  v21 = [location[0] detailTextField];
  [v21 removeTarget:v27 action:? forControlEvents:?];
  *&v10 = MEMORY[0x277D82BD8](v21).n128_u64[0];
  v22 = [location[0] detailTextField];
  [v22 addTarget:v27 action:sel__setFamilyNameFromTextField_ forControlEvents:0x20000];
  MEMORY[0x277D82BD8](v22);
  objc_storeStrong(&v25, 0);
  objc_storeStrong(location, 0);
}

- (id)_loginChoiceCellForRow:(unint64_t)a3
{
  v33 = *MEMORY[0x277D85DE8];
  v30 = self;
  v29 = a2;
  v28 = a3;
  v17 = [(AKAuthorizationInputPaneViewController *)self presentationContext];
  v16 = [(AKAuthorizationPresentationContext *)v17 loginChoices];
  v18 = [v16 count];
  MEMORY[0x277D82BD8](v16);
  *&v3 = MEMORY[0x277D82BD8](v17).n128_u64[0];
  if (a3 >= v18)
  {
    location = _AKLogSiwa();
    v26 = OS_LOG_TYPE_ERROR;
    if (os_log_type_enabled(location, OS_LOG_TYPE_ERROR))
    {
      v15 = [(AKAuthorizationInputPaneViewController *)v30 presentationContext];
      v14 = [(AKAuthorizationPresentationContext *)v15 loginChoices];
      __os_log_helper_16_0_2_8_0_8_0(v32, v28, [v14 count]);
      _os_log_error_impl(&dword_222379000, location, v26, "Cell row %ld >= %ld choices available.", v32, 0x16u);
      MEMORY[0x277D82BD8](v14);
      MEMORY[0x277D82BD8](v15);
    }

    objc_storeStrong(&location, 0);
    v31 = 0;
  }

  else
  {
    v13 = [(AKAuthorizationInputPaneViewController *)v30 presentationContext];
    v12 = [(AKAuthorizationPresentationContext *)v13 loginChoices];
    v25 = [v12 objectAtIndex:v28];
    MEMORY[0x277D82BD8](v12);
    MEMORY[0x277D82BD8](v13);
    v24 = [[AKAuthorizationLoginChoiceCell alloc] initWithLoginChoice:v25 reuseIdentifier:@"AKAuthorizationLoginChoiceCell"];
    if (![v25 isAppleIDAuthorization])
    {
      v11 = [(AKAuthorizationInputPaneViewController *)v30 presentationContext];
      v10 = [AKIcon iconWithPresentationContext:?];
      v9 = [(AKIcon *)v10 automaskedImage];
      [(AKAuthorizationLoginChoiceCell *)v24 setIconImage:?];
      MEMORY[0x277D82BD8](v9);
      MEMORY[0x277D82BD8](v10);
      MEMORY[0x277D82BD8](v11);
    }

    v7 = [(AKAuthorizationInputPaneViewController *)v30 editableScopeChoices];
    v22 = 0;
    v20 = 0;
    v8 = 1;
    if ([(AKAuthorizationScopeChoices *)v7 indexOfChosenLogin]!= v28)
    {
      v23 = [(AKAuthorizationInputPaneViewController *)v30 presentationContext];
      v22 = 1;
      v21 = [(AKAuthorizationPresentationContext *)v23 loginChoices];
      v20 = 1;
      v8 = [v21 count] == 1;
    }

    if (v20)
    {
      MEMORY[0x277D82BD8](v21);
    }

    if (v22)
    {
      MEMORY[0x277D82BD8](v23);
    }

    *&v4 = MEMORY[0x277D82BD8](v7).n128_u64[0];
    if (v8)
    {
      [(AKAuthorizationLoginChoiceCell *)v24 setAccessoryType:3, v4];
    }

    v31 = MEMORY[0x277D82BE0](v24);
    objc_storeStrong(&v24, 0);
    objc_storeStrong(&v25, 0);
  }

  *MEMORY[0x277D85DE8];
  v5 = v31;

  return v5;
}

- (int64_t)_numberOfRowsInValidatedScopes
{
  v17 = self;
  v16 = a2;
  v11 = 0;
  v12 = &v11;
  v13 = 0x20000000;
  v14 = 32;
  v15 = 0;
  validatedScopes = self->_validatedScopes;
  v5 = MEMORY[0x277D85DD0];
  v6 = -1073741824;
  v7 = 0;
  v8 = __72__AKAuthorizationInputPaneViewController__numberOfRowsInValidatedScopes__block_invoke;
  v9 = &unk_2784A7078;
  v10[1] = &v11;
  v10[0] = MEMORY[0x277D82BE0](self);
  [(NSArray *)validatedScopes enumerateObjectsUsingBlock:&v5];
  v3 = v12[3];
  objc_storeStrong(v10, 0);
  _Block_object_dispose(&v11, 8);
  return v3;
}

void __72__AKAuthorizationInputPaneViewController__numberOfRowsInValidatedScopes__block_invoke(uint64_t a1, void *a2)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  *(*(*(a1 + 40) + 8) + 24) += [*(a1 + 32) _numberOfRowsInScope:location[0]];
  objc_storeStrong(location, 0);
}

- (unint64_t)_numberOfRowsInScope:(id)a3
{
  v20 = *MEMORY[0x277D85DE8];
  v17 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  if ([location[0] isEqualToString:*MEMORY[0x277CEFFE8]])
  {
    v18 = 1;
    v15 = 1;
  }

  else if ([location[0] isEqualToString:*MEMORY[0x277CEFFE0]])
  {
    v10 = [(AKAuthorizationInputPaneViewController *)v17 authorizationViewController];
    v11 = [(AKAuthorizationViewController *)v10 _isManagedAppleID];
    *&v3 = MEMORY[0x277D82BD8](v10).n128_u64[0];
    if (v11)
    {
      v9 = [(AKAuthorizationInputPaneViewController *)v17 presentationContext];
      v8 = [(AKAuthorizationPresentationContext *)v9 userInformation];
      v7 = [v8 sharedEmailForManagedAppleID];
      v18 = [v7 length] != 0;
      MEMORY[0x277D82BD8](v7);
      MEMORY[0x277D82BD8](v8);
      MEMORY[0x277D82BD8](v9);
      v15 = 1;
    }

    else
    {
      v13 = 0;
      v6 = 0;
      if ([(AKAuthorizationInputPaneViewController *)v17 _isUnderageUser])
      {
        v14 = [MEMORY[0x277CF0228] sharedManager];
        v13 = 1;
        v6 = [v14 isTiburonU13Enabled];
      }

      if (v13)
      {
        MEMORY[0x277D82BD8](v14);
      }

      if (v6)
      {
        v18 = 1;
        v15 = 1;
      }

      else
      {
        if ([(AKAuthorizationInputPaneViewController *)v17 isEmailExpanded])
        {
          v5 = [(AKAuthorizationInputPaneViewController *)v17 editableScopeChoices];
          v18 = [(AKAuthorizationScopeChoices *)v5 emailCount]+ 2;
          MEMORY[0x277D82BD8](v5);
        }

        else
        {
          v18 = 2;
        }

        v15 = 1;
      }
    }
  }

  else
  {
    v12 = _AKLogSiwa();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      __os_log_helper_16_2_1_8_64(v19, location[0]);
      _os_log_error_impl(&dword_222379000, v12, OS_LOG_TYPE_ERROR, "Unknown scope: %@", v19, 0xCu);
    }

    objc_storeStrong(&v12, 0);
    v18 = 0;
    v15 = 1;
  }

  objc_storeStrong(location, 0);
  *MEMORY[0x277D85DE8];
  return v18;
}

- (id)_singleEmailCellForIndex:(int64_t)a3
{
  v24 = self;
  v23 = a2;
  v22 = a3;
  v9 = [(AKAuthorizationPaneViewController *)self tableView];
  v21 = [(UITableView *)v9 dequeueReusableCellWithIdentifier:@"AKAuthorizationScopeDetailTableViewCell-Email-Single"];
  [(UITableViewCell *)v21 setAccessibilityIdentifier:0x2835918E8, MEMORY[0x277D82BD8](v9).n128_f64[0]];
  +[AKAuthorizationPaneMetrics selectEmailCellHeight];
  [(UITableViewCell *)v21 setMinimumHeight:?];
  v10 = [(UITableViewCell *)v21 scopeLabel];
  [v10 setText:&stru_28358EF68];
  v13 = [(UITableViewCell *)v21 mainLabel];
  v12 = [(AKAuthorizationInputPaneViewController *)v24 editableScopeChoices];
  v11 = [(AKAuthorizationScopeChoices *)v12 emailAtIndex:v22];
  [v13 setText:?];
  MEMORY[0x277D82BD8](v11);
  MEMORY[0x277D82BD8](v12);
  v15 = +[AKAuthorizationAppearance scopeSelectionTitleFont];
  v14 = [(UITableViewCell *)v21 mainLabel];
  [v14 setFont:v15];
  MEMORY[0x277D82BD8](v14);
  v16 = [(UITableViewCell *)v21 mainDetailLabel];
  [v16 setText:0];
  v17 = [(AKAuthorizationInputPaneViewController *)v24 authorizationViewController];
  v18 = [(AKAuthorizationViewController *)v17 _isManagedAppleID];
  *&v3 = MEMORY[0x277D82BD8](v17).n128_u64[0];
  if (v18)
  {
    [(UITableViewCell *)v21 setCheckmarkStyle:0, v3];
  }

  else
  {
    [(UITableViewCell *)v21 setCheckmarkStyle:1, v3];
    v7 = [(AKAuthorizationInputPaneViewController *)v24 editableScopeChoices];
    v19 = 0;
    v8 = 0;
    if (![(AKAuthorizationScopeChoices *)v7 wantsPrivateEmail])
    {
      v20 = [(AKAuthorizationInputPaneViewController *)v24 editableScopeChoices];
      v19 = 1;
      v8 = [(AKAuthorizationScopeChoices *)v20 indexOfChosenEmail]== v22;
    }

    [(UITableViewCell *)v21 setChecked:v8];
    if (v19)
    {
      MEMORY[0x277D82BD8](v20);
    }

    MEMORY[0x277D82BD8](v7);
  }

  [(UITableViewCell *)v21 _setSeparatorIndentToMainLabel];
  v6 = MEMORY[0x277D82BE0](v21);
  objc_storeStrong(location, 0);

  return v6;
}

- (void)_selectRow:(int64_t)a3
{
  v17 = *MEMORY[0x277D85DE8];
  v15 = self;
  v14 = a2;
  v13 = a3;
  memset(__b, 0, sizeof(__b));
  obj = MEMORY[0x277D82BE0](v15->_validatedScopes);
  v9 = [obj countByEnumeratingWithState:__b objects:v16 count:16];
  if (v9)
  {
    v5 = *__b[2];
    v6 = 0;
    v7 = v9;
    while (1)
    {
      v4 = v6;
      if (*__b[2] != v5)
      {
        objc_enumerationMutation(obj);
      }

      v12 = *(__b[1] + 8 * v6);
      v10 = [(AKAuthorizationInputPaneViewController *)v15 _numberOfRowsInScope:v12, v7];
      if (v13 < v10)
      {
        break;
      }

      v13 -= v10;
      ++v6;
      v7 = v3;
      if (v4 + 1 >= v3)
      {
        v6 = 0;
        v7 = [obj countByEnumeratingWithState:__b objects:v16 count:16];
        if (!v7)
        {
          goto LABEL_9;
        }
      }
    }

    [(AKAuthorizationInputPaneViewController *)v15 _selectScope:v12 localRow:v13];
  }

LABEL_9:
  MEMORY[0x277D82BD8](obj);
  *MEMORY[0x277D85DE8];
}

- (void)_selectScope:(id)a3 localRow:(int64_t)a4
{
  v10 = *MEMORY[0x277D85DE8];
  v8 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v6 = a4;
  if ([location[0] isEqualToString:*MEMORY[0x277CEFFE8]])
  {
    [(AKAuthorizationInputPaneViewController *)v8 _didSelectEditScope:*MEMORY[0x277CEFFE8] options:MEMORY[0x277CBEC10]];
  }

  else if ([location[0] isEqualToString:*MEMORY[0x277CEFFE0]])
  {
    [(AKAuthorizationInputPaneViewController *)v8 _selectEmailLocalRow:v6];
  }

  else
  {
    oslog = _AKLogSiwa();
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_ERROR))
    {
      __os_log_helper_16_2_1_8_64(v9, location[0]);
      _os_log_error_impl(&dword_222379000, oslog, OS_LOG_TYPE_ERROR, "Unknown scope selected %@", v9, 0xCu);
    }

    objc_storeStrong(&oslog, 0);
  }

  objc_storeStrong(location, 0);
  *MEMORY[0x277D85DE8];
}

- (void)_selectEmailLocalRow:(int64_t)a3
{
  if (a3)
  {
    if (a3 == [(AKAuthorizationInputPaneViewController *)self _numberOfRowsInScope:*MEMORY[0x277CEFFE0]]- 1)
    {
      [(AKAuthorizationInputPaneViewController *)self _selectHideMyEmail];
    }

    else
    {
      [(AKAuthorizationInputPaneViewController *)self _selectSingleEmailAtIndex:a3 - 1];
    }
  }

  else
  {
    [(AKAuthorizationInputPaneViewController *)self _selectShareMyEmail];
  }
}

- (void)_selectSingleEmailAtIndex:(int64_t)a3
{
  v17 = *MEMORY[0x277D85DE8];
  v15 = self;
  v14 = a2;
  v13 = a3;
  v11 = 0;
  v9 = 1;
  if ((a3 & 0x8000000000000000) == 0)
  {
    v12 = [(AKAuthorizationInputPaneViewController *)v15 editableScopeChoices];
    v11 = 1;
    v9 = v13 >= [(AKAuthorizationScopeChoices *)v12 emailCount];
  }

  if (v11)
  {
    MEMORY[0x277D82BD8](v12);
  }

  if (v9)
  {
    location = _AKLogSiwa();
    if (os_log_type_enabled(location, OS_LOG_TYPE_ERROR))
    {
      v8 = [MEMORY[0x277CCABB0] numberWithInteger:v13];
      v5 = MEMORY[0x277CCABB0];
      v7 = [(AKAuthorizationInputPaneViewController *)v15 editableScopeChoices];
      v6 = [v5 numberWithUnsignedInteger:{-[AKAuthorizationScopeChoices emailCount](v7, "emailCount")}];
      __os_log_helper_16_2_2_8_64_8_64(v16, v8, v6);
      _os_log_error_impl(&dword_222379000, location, OS_LOG_TYPE_ERROR, "Select email at index %@ beyond count %@.", v16, 0x16u);
      MEMORY[0x277D82BD8](v6);
      MEMORY[0x277D82BD8](v7);
      MEMORY[0x277D82BD8](v8);
    }

    objc_storeStrong(&location, 0);
  }

  else
  {
    v3 = [(AKAuthorizationInputPaneViewController *)v15 editableScopeChoices];
    [(AKAuthorizationScopeChoices *)v3 setWantsPrivateEmail:0];
    v4 = [(AKAuthorizationInputPaneViewController *)v15 editableScopeChoices];
    [(AKAuthorizationScopeChoices *)v4 setIndexOfChosenEmail:v13];
    [(AKAuthorizationInputPaneViewController *)v15 setEditableScopeChoicesChanged:1, MEMORY[0x277D82BD8](v4).n128_f64[0]];
    [(AKAuthorizationInputPaneViewController *)v15 _enableOrDisableConfirmButton];
    [(AKAuthorizationInputPaneViewController *)v15 setEmailExpanded:0 animated:1];
  }

  *MEMORY[0x277D85DE8];
}

- (void)_selectLoginChoiceCell
{
  if (![(AKAuthorizationInputPaneViewController *)self _shouldPresentCreateFlow]&& ![(AKAuthorizationInputPaneViewController *)self _hasOneLoginChoice])
  {
    v7 = [(AKAuthorizationInputPaneViewController *)self editableScopeChoices];
    v8 = [(AKAuthorizationScopeChoices *)v7 indexOfChosenLogin];
    *&v2 = MEMORY[0x277D82BD8](v7).n128_u64[0];
    if (v8 != 0x7FFFFFFFFFFFFFFFLL)
    {
      v6 = [(AKAuthorizationPaneViewController *)self tableView];
      v3 = MEMORY[0x277CCAA70];
      v5 = [(AKAuthorizationInputPaneViewController *)self editableScopeChoices];
      v4 = [v3 indexPathForRow:-[AKAuthorizationScopeChoices indexOfChosenLogin](v5 inSection:{"indexOfChosenLogin"), 0}];
      [UITableView selectRowAtIndexPath:v6 animated:"selectRowAtIndexPath:animated:scrollPosition:" scrollPosition:?];
      MEMORY[0x277D82BD8](v4);
      MEMORY[0x277D82BD8](v5);
      MEMORY[0x277D82BD8](v6);
    }
  }
}

- (void)setEmailExpanded:(BOOL)a3 animated:(BOOL)a4
{
  v16 = self;
  v15 = a2;
  v14 = a3;
  v13 = a4;
  if (self->_isEmailExpanded != a3)
  {
    v16->_isEmailExpanded = v14;
    v5 = v16;
    v4 = v13;
    v6 = MEMORY[0x277D85DD0];
    v7 = -1073741824;
    v8 = 0;
    v9 = __68__AKAuthorizationInputPaneViewController_setEmailExpanded_animated___block_invoke;
    v10 = &unk_2784A70A0;
    v11 = MEMORY[0x277D82BE0](v16);
    v12 = v14;
    [(AKAuthorizationInputPaneViewController *)v5 _reloadDataAnimated:v4 heightChange:&v6];
    objc_storeStrong(&v11, 0);
  }
}

double __68__AKAuthorizationInputPaneViewController_setEmailExpanded_animated___block_invoke(uint64_t a1)
{
  v9 = [MEMORY[0x277D75418] currentDevice];
  v11 = 0;
  v10 = 1;
  if ([v9 userInterfaceIdiom])
  {
    v12 = [MEMORY[0x277D75418] currentDevice];
    v11 = 1;
    v10 = [v12 userInterfaceIdiom] == 6;
  }

  if (v11)
  {
    MEMORY[0x277D82BD8](v12);
  }

  *&v1 = MEMORY[0x277D82BD8](v9).n128_u64[0];
  if (!v10)
  {
    return 0.0;
  }

  v5 = [*(a1 + 32) editableScopeChoices];
  v6 = [v5 emailCount];
  +[AKAuthorizationPaneMetrics selectEmailCellHeight];
  v7 = v6 * v2;
  MEMORY[0x277D82BD8](v5);
  if (*(a1 + 40))
  {
    return v7;
  }

  else
  {
    return -v7;
  }
}

- (void)_transitionToEditingNameAnimated:(BOOL)a3
{
  v14 = self;
  v13 = a2;
  v12 = a3;
  v6 = MEMORY[0x277D85DD0];
  v7 = -1073741824;
  v8 = 0;
  v9 = __75__AKAuthorizationInputPaneViewController__transitionToEditingNameAnimated___block_invoke;
  v10 = &unk_2784A70C8;
  v11 = MEMORY[0x277D82BE0](self);
  v5 = MEMORY[0x277D82BE0](v14);
  [(AKAuthorizationInputPaneViewController *)self _reloadDataAnimated:a3 heightChange:&v6 animation:?];
  objc_storeStrong(&v5, 0);
  objc_storeStrong(&v11, 0);
}

double __75__AKAuthorizationInputPaneViewController__transitionToEditingNameAnimated___block_invoke(uint64_t a1)
{
  [*(a1 + 32) _computeNameEditHeightChange];
  *(*(a1 + 32) + 1112) = v1;
  return *(*(a1 + 32) + 1112);
}

uint64_t __75__AKAuthorizationInputPaneViewController__transitionToEditingNameAnimated___block_invoke_2(uint64_t a1)
{
  v3 = [*(a1 + 32) navigationItem];
  v2 = [v3 rightBarButtonItem];
  [*(a1 + 32) setSavedRightBarButtonItem:?];
  MEMORY[0x277D82BD8](v2);
  v5 = [*(a1 + 32) navigationItem];
  v4 = [v5 leftBarButtonItem];
  [*(a1 + 32) setSavedLeftBarButtonItem:?];
  MEMORY[0x277D82BD8](v4);
  v7 = [*(a1 + 32) _doneBarButtonItem];
  v6 = [*(a1 + 32) navigationItem];
  [v6 setRightBarButtonItem:v7];
  MEMORY[0x277D82BD8](v6);
  v8 = [*(a1 + 32) navigationItem];
  [v8 setLeftBarButtonItem:0];
  return [*(a1 + 32) _updatePaneTitleForEditing:{1, MEMORY[0x277D82BD8](v8).n128_f64[0]}];
}

- (void)_transitionFromEditingNameAnimated:(BOOL)a3
{
  v14 = self;
  v13 = a2;
  v12 = a3;
  v6 = MEMORY[0x277D85DD0];
  v7 = -1073741824;
  v8 = 0;
  v9 = __77__AKAuthorizationInputPaneViewController__transitionFromEditingNameAnimated___block_invoke;
  v10 = &unk_2784A70C8;
  v11 = MEMORY[0x277D82BE0](self);
  v5 = MEMORY[0x277D82BE0](v14);
  [(AKAuthorizationInputPaneViewController *)self _reloadDataAnimated:a3 heightChange:&v6 animation:?];
  objc_storeStrong(&v5, 0);
  objc_storeStrong(&v11, 0);
}

double __77__AKAuthorizationInputPaneViewController__transitionFromEditingNameAnimated___block_invoke(uint64_t a1)
{
  v2 = -*(*(a1 + 32) + 1112);
  *(*(a1 + 32) + 1112) = 0;
  return v2;
}

uint64_t __77__AKAuthorizationInputPaneViewController__transitionFromEditingNameAnimated___block_invoke_2(uint64_t a1)
{
  v3 = [*(a1 + 32) savedRightBarButtonItem];
  v2 = [*(a1 + 32) navigationItem];
  [v2 setRightBarButtonItem:v3];
  MEMORY[0x277D82BD8](v2);
  v5 = [*(a1 + 32) savedLeftBarButtonItem];
  v4 = [*(a1 + 32) navigationItem];
  [v4 setLeftBarButtonItem:v5];
  MEMORY[0x277D82BD8](v4);
  [*(a1 + 32) setSavedRightBarButtonItem:MEMORY[0x277D82BD8](v5).n128_f64[0]];
  [*(a1 + 32) setSavedLeftBarButtonItem:0];
  return [*(a1 + 32) _updatePaneTitleForEditing:0];
}

- (void)_beginEditingRow:(unint64_t)a3
{
  v7 = self;
  v6[2] = a2;
  v6[1] = a3;
  v6[0] = [(AKAuthorizationInputPaneViewController *)self _textFieldForRow:a3];
  [v6[0] becomeFirstResponder];
  v4 = [(AKAuthorizationInputPaneViewController *)v7 view];
  [v4 setNeedsLayout];
  *&v3 = MEMORY[0x277D82BD8](v4).n128_u64[0];
  v5 = [(AKAuthorizationInputPaneViewController *)v7 view];
  [v5 layoutIfNeeded];
  MEMORY[0x277D82BD8](v5);
  objc_storeStrong(v6, 0);
}

- (id)_textFieldForRow:(unint64_t)a3
{
  v9 = self;
  v8[2] = a2;
  v8[1] = a3;
  v8[0] = [MEMORY[0x277CCAA70] indexPathForRow:a3 inSection:0];
  v5 = [(AKAuthorizationPaneViewController *)v9 tableView];
  v7 = [(UITableView *)v5 cellForRowAtIndexPath:v8[0]];
  *&v3 = MEMORY[0x277D82BD8](v5).n128_u64[0];
  v6 = [(UITableViewCell *)v7 detailTextField];
  objc_storeStrong(&v7, 0);
  objc_storeStrong(v8, 0);

  return v6;
}

- (void)_nameEditDone
{
  v3 = [(AKAuthorizationInputPaneViewController *)self navigationController];
  v4 = [v3 topViewController];
  MEMORY[0x277D82BD8](v4);
  *&v2 = MEMORY[0x277D82BD8](v3).n128_u64[0];
  if (v4 == self)
  {
    [(AKAuthorizationInputPaneViewController *)self setEditingName:0 animated:1, v2];
  }
}

- (void)_setGivenNameFromTextField:(id)a3
{
  v10 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v8 = [(AKAuthorizationInputPaneViewController *)v10 _textFromTextField:location[0]];
  v6 = [(AKAuthorizationInputPaneViewController *)v10 editingUserInformation];
  v5 = [(AKUserInformation *)v6 givenName];
  v7 = [v5 isEqualToString:v8];
  MEMORY[0x277D82BD8](v5);
  *&v3 = MEMORY[0x277D82BD8](v6).n128_u64[0];
  if (!v7)
  {
    v4 = [(AKAuthorizationInputPaneViewController *)v10 editingUserInformation];
    [(AKUserInformation *)v4 setGivenName:v8];
    MEMORY[0x277D82BD8](v4);
  }

  objc_storeStrong(&v8, 0);
  objc_storeStrong(location, 0);
}

- (void)_setFamilyNameFromTextField:(id)a3
{
  v10 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v8 = [(AKAuthorizationInputPaneViewController *)v10 _textFromTextField:location[0]];
  v6 = [(AKAuthorizationInputPaneViewController *)v10 editingUserInformation];
  v5 = [(AKUserInformation *)v6 familyName];
  v7 = [v5 isEqualToString:v8];
  MEMORY[0x277D82BD8](v5);
  *&v3 = MEMORY[0x277D82BD8](v6).n128_u64[0];
  if (!v7)
  {
    v4 = [(AKAuthorizationInputPaneViewController *)v10 editingUserInformation];
    [(AKUserInformation *)v4 setFamilyName:v8];
    MEMORY[0x277D82BD8](v4);
  }

  objc_storeStrong(&v8, 0);
  objc_storeStrong(location, 0);
}

- (id)_textFromTextField:(id)a3
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v4 = [location[0] text];
  objc_storeStrong(location, 0);

  return v4;
}

- (BOOL)_getValidEditingGivenName:(id *)a3 familyName:(id *)a4
{
  v16 = self;
  v15 = a2;
  v14 = a3;
  v13 = a4;
  v12 = [(AKAuthorizationInputPaneViewController *)self editingUserInformation];
  v11 = [MEMORY[0x277CCA900] whitespaceAndNewlineCharacterSet];
  v7 = [v12 givenName];
  v10 = [v7 stringByTrimmingCharactersInSet:v11];
  v8 = [v12 familyName];
  location = [v8 stringByTrimmingCharactersInSet:v11];
  if ([v10 length] || objc_msgSend(location, "length"))
  {
    if (v14)
    {
      v4 = v10;
      *v14 = v10;
    }

    if (v13)
    {
      v5 = location;
      *v13 = location;
    }

    v17 = 1;
  }

  else
  {
    v17 = 0;
  }

  objc_storeStrong(&location, 0);
  objc_storeStrong(&v10, 0);
  objc_storeStrong(&v11, 0);
  objc_storeStrong(&v12, 0);
  return v17 & 1;
}

- (void)_updateDataSourceWithValidEditingName
{
  v27 = self;
  v26[1] = a2;
  if ([(AKAuthorizationInputPaneViewController *)self isEditingName])
  {
    v26[0] = 0;
    v25 = 0;
    v24 = 0;
    v23 = 0;
    v12 = [(AKAuthorizationInputPaneViewController *)v27 _getValidEditingGivenName:&v24 familyName:&v23];
    objc_storeStrong(v26, v24);
    objc_storeStrong(&v25, v23);
    if (v12)
    {
      v8 = [(AKAuthorizationInputPaneViewController *)v27 editableScopeChoices];
      v9 = [(AKAuthorizationScopeChoices *)v8 userInformation];
      v10 = [(AKUserInformation *)v9 givenName];
      v20 = 0;
      v18 = 0;
      v16 = 0;
      v11 = 1;
      if ([v10 isEqualToString:v26[0]])
      {
        v21 = [(AKAuthorizationInputPaneViewController *)v27 editableScopeChoices];
        v20 = 1;
        v19 = [(AKAuthorizationScopeChoices *)v21 userInformation];
        v18 = 1;
        v17 = [(AKUserInformation *)v19 familyName];
        v16 = 1;
        v11 = [v17 isEqualToString:v25] == 0;
      }

      if (v16)
      {
        MEMORY[0x277D82BD8](v17);
      }

      if (v18)
      {
        MEMORY[0x277D82BD8](v19);
      }

      if (v20)
      {
        MEMORY[0x277D82BD8](v21);
      }

      MEMORY[0x277D82BD8](v10);
      MEMORY[0x277D82BD8](v9);
      *&v2 = MEMORY[0x277D82BD8](v8).n128_u64[0];
      v22 = v11;
      [(AKCATiburonInputUIReporter *)v27->_analyticsReport didModifyName:v11, v2];
      v6 = [(AKAuthorizationInputPaneViewController *)v27 editableScopeChoices];
      [(AKAuthorizationScopeChoices *)v6 setGivenName:v26[0] familyName:v25];
      *&v3 = MEMORY[0x277D82BD8](v6).n128_u64[0];
      v7 = [(AKAuthorizationPaneViewController *)v27 editableDataSources];
      [(AKAuthorizationEditableDataSources *)v7 setEditableScopeChoicesChanged:1];
      MEMORY[0x277D82BD8](v7);
    }

    else
    {
      v15 = _AKLogSiwa();
      v14 = OS_LOG_TYPE_DEFAULT;
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        log = v15;
        type = v14;
        __os_log_helper_16_0_0(v13);
        _os_log_impl(&dword_222379000, log, type, "Name change not accepted.", v13, 2u);
      }

      objc_storeStrong(&v15, 0);
    }

    objc_storeStrong(&v25, 0);
    objc_storeStrong(v26, 0);
  }
}

- (double)_computeNameEditHeightChange
{
  v13 = self;
  location[1] = a2;
  v8 = [MEMORY[0x277D75418] currentDevice];
  v9 = [v8 userInterfaceIdiom];
  *&v2 = MEMORY[0x277D82BD8](v8).n128_u64[0];
  if (v9)
  {
    if (v9 == 1)
    {
      [(AKAuthorizationInputPaneViewController *)v13 _padNameEditHeightChange];
      return v4;
    }

    else
    {
      location[0] = _AKLogSiwa();
      v11 = 16;
      if (os_log_type_enabled(location[0], OS_LOG_TYPE_ERROR))
      {
        log = location[0];
        type = v11;
        __os_log_helper_16_0_0(v10);
        _os_log_error_impl(&dword_222379000, log, type, "Unexpected device idiom.", v10, 2u);
      }

      objc_storeStrong(location, 0);
      return 0.0;
    }
  }

  else
  {
    [(AKAuthorizationInputPaneViewController *)v13 _phoneNameEditHeightChange];
    return v3;
  }
}

- (double)_phoneNameEditHeightChange
{
  v22 = [MEMORY[0x277CF0228] sharedManager];
  v23 = [v22 isLisbonAvailable];
  *&v2 = MEMORY[0x277D82BD8](v22).n128_u64[0];
  if (v23)
  {
    v16 = [MEMORY[0x277D759A0] mainScreen];
    [v16 bounds];
    MaxY = CGRectGetMaxY(v29);
    MEMORY[0x277D82BD8](v16);
    [(AKAuthorizationInputPaneViewController *)self preferredContentSize];
    v19 = v3;
    v20 = [(AKAuthorizationInputPaneViewController *)self navigationController];
    v18 = [v20 navigationBar];
    [v18 frame];
    v21 = v19 + CGRectGetHeight(v30);
    MEMORY[0x277D82BD8](v18);
    MEMORY[0x277D82BD8](v20);
    return MaxY - v21;
  }

  else
  {
    [MEMORY[0x277D75658] sizeForInterfaceOrientation:{-[AKAuthorizationInputPaneViewController interfaceOrientation](self, "interfaceOrientation", v2)}];
    v9 = v4;
    +[AKAuthorizationPaneMetrics keyboardAccessoryViewHeight];
    v26 = v9 + v5;
    v10 = [MEMORY[0x277D759A0] mainScreen];
    [v10 bounds];
    v11 = CGRectGetMaxY(v31);
    MEMORY[0x277D82BD8](v10);
    [(AKAuthorizationInputPaneViewController *)self _mainSectionScreenMaxY];
    v24 = v6;
    v15 = [(AKAuthorizationPaneViewController *)self tableView];
    [(UITableView *)v15 contentOffset];
    v13 = v7;
    v14 = [(AKAuthorizationInputPaneViewController *)self navigationController];
    v12 = [v14 navigationBar];
    [v12 frame];
    v25 = v24 + v13 + CGRectGetHeight(v32);
    MEMORY[0x277D82BD8](v12);
    MEMORY[0x277D82BD8](v14);
    MEMORY[0x277D82BD8](v15);
    return v26 - (v11 - v25);
  }
}

- (double)_padNameEditHeightChange
{
  v20 = self;
  v19 = a2;
  [(AKAuthorizationInputPaneViewController *)self _mainSectionScreenMaxY];
  v18 = v2;
  v9 = [(AKAuthorizationPaneViewController *)v20 paneFooterStackView];
  [(UIStackView *)v9 bounds];
  v16 = v21;
  Height = CGRectGetHeight(v21);
  MEMORY[0x277D82BD8](v9);
  v17 = Height;
  v15 = v18 + Height;
  v11 = [(AKAuthorizationInputPaneViewController *)v20 navigationController];
  v14 = [v11 view];
  *&v3 = MEMORY[0x277D82BD8](v11).n128_u64[0];
  v12 = v14;
  [v14 bounds];
  [v12 convertRect:v4 toView:{v5, v6, v7}];
  v13 = v15 - CGRectGetMaxY(v22);
  objc_storeStrong(&v14, 0);
  return v13;
}

- (double)_mainSectionScreenMaxY
{
  v14 = self;
  v13[1] = a2;
  v8 = [(AKAuthorizationPaneViewController *)self tableView];
  v13[0] = [(UITableView *)v8 tableHeaderView];
  *&v2 = MEMORY[0x277D82BD8](v8).n128_u64[0];
  v9 = v13[0];
  [v13[0] bounds];
  [v9 convertRect:v3 toView:{v4, v5, v6}];
  MaxY = CGRectGetMaxY(v15);
  v10 = [(AKAuthorizationPaneViewController *)v14 tableView];
  [(UITableView *)v10 rectForSection:0];
  Height = CGRectGetHeight(v16);
  MEMORY[0x277D82BD8](v10);
  objc_storeStrong(v13, 0);
  return MaxY + Height;
}

- (void)_reloadDataAnimated:(BOOL)a3 heightChange:(id)a4
{
  v7 = self;
  v6 = a2;
  v5 = a3;
  location = 0;
  objc_storeStrong(&location, a4);
  [(AKAuthorizationInputPaneViewController *)v7 _reloadDataAnimated:v5 heightChange:location animation:0 completion:?];
  objc_storeStrong(&location, 0);
}

- (void)_reloadDataAnimated:(BOOL)a3 heightChange:(id)a4 animation:(id)a5
{
  v10 = self;
  v9 = a2;
  v8 = a3;
  location = 0;
  objc_storeStrong(&location, a4);
  v6 = 0;
  objc_storeStrong(&v6, a5);
  [(AKAuthorizationInputPaneViewController *)v10 _reloadDataAnimated:v8 heightChange:location animation:v6 completion:0];
  objc_storeStrong(&v6, 0);
  objc_storeStrong(&location, 0);
}

- (void)_reloadDataAnimated:(BOOL)a3 heightChange:(id)a4 animation:(id)a5 completion:(id)a6
{
  v47 = self;
  v46 = a2;
  v45 = a3;
  location = 0;
  objc_storeStrong(&location, a4);
  v43 = 0;
  objc_storeStrong(&v43, a5);
  v42 = 0;
  objc_storeStrong(&v42, a6);
  v22 = [MEMORY[0x277CF0228] sharedManager];
  v23 = [v22 isLisbonAvailable];
  *&v6 = MEMORY[0x277D82BD8](v22).n128_u64[0];
  if (v23 == 1)
  {
    v16 = [(AKAuthorizationPaneViewController *)v47 tableView];
    [(UITableView *)v16 reloadData];
    *&v7 = MEMORY[0x277D82BD8](v16).n128_u64[0];
    v17 = [(AKAuthorizationPaneViewController *)v47 tableView];
    v18 = [(UITableView *)v17 numberOfSections];
    *&v8 = MEMORY[0x277D82BD8](v17).n128_u64[0];
    v41[3] = v18;
    v49 = 0;
    v48 = v18;
    v50 = 0;
    v51 = v18;
    v41[1] = 0;
    v41[2] = v18;
    v41[0] = [MEMORY[0x277CCAA78] indexSetWithIndexesInRange:{0, v18, v8}];
    v9 = 100;
    if (!v45)
    {
      v9 = 5;
    }

    v40 = v9;
    v19 = [(AKAuthorizationPaneViewController *)v47 tableView];
    [(UITableView *)v19 reloadSections:v41[0] withRowAnimation:v40];
    MEMORY[0x277D82BD8](v19);
    objc_storeStrong(v41, 0);
  }

  else
  {
    v39 = [MEMORY[0x277CCAA78] indexSetWithIndex:{0, v6}];
    v10 = 100;
    if (!v45)
    {
      v10 = 5;
    }

    v38 = v10;
    v15 = [(AKAuthorizationPaneViewController *)v47 tableView];
    [(UITableView *)v15 reloadSections:v39 withRowAnimation:v38];
    MEMORY[0x277D82BD8](v15);
    objc_storeStrong(&v39, 0);
  }

  if (location)
  {
    v14 = (*(location + 2))();
  }

  else
  {
    v14 = 0.0;
  }

  v37 = v14;
  v11 = 0.3;
  if (!v45)
  {
    v11 = 0.0;
  }

  v36[2] = *&v11;
  v13 = MEMORY[0x277D75D18];
  v12 = v11;
  v30 = MEMORY[0x277D85DD0];
  v31 = -1073741824;
  v32 = 0;
  v33 = __96__AKAuthorizationInputPaneViewController__reloadDataAnimated_heightChange_animation_completion___block_invoke;
  v34 = &unk_2784A70F0;
  v36[0] = MEMORY[0x277D82BE0](v43);
  v35 = MEMORY[0x277D82BE0](v47);
  v36[1] = *&v37;
  v24 = MEMORY[0x277D85DD0];
  v25 = -1073741824;
  v26 = 0;
  v27 = __96__AKAuthorizationInputPaneViewController__reloadDataAnimated_heightChange_animation_completion___block_invoke_2;
  v28 = &unk_2784A7118;
  v29 = MEMORY[0x277D82BE0](v42);
  [v13 animateWithDuration:&v30 animations:&v24 completion:v12];
  objc_storeStrong(&v29, 0);
  objc_storeStrong(&v35, 0);
  objc_storeStrong(v36, 0);
  objc_storeStrong(&v42, 0);
  objc_storeStrong(&v43, 0);
  objc_storeStrong(&location, 0);
}

uint64_t __96__AKAuthorizationInputPaneViewController__reloadDataAnimated_heightChange_animation_completion___block_invoke(uint64_t a1)
{
  if (*(a1 + 40))
  {
    (*(*(a1 + 40) + 16))();
  }

  return [*(a1 + 32) _updateLayoutForHeightChange:*(a1 + 48)];
}

uint64_t __96__AKAuthorizationInputPaneViewController__reloadDataAnimated_heightChange_animation_completion___block_invoke_2(uint64_t result)
{
  if (*(result + 32))
  {
    return (*(*(result + 32) + 16))();
  }

  return result;
}

- (void)_updateLayoutForHeightChange:(double)a3
{
  if (a3 != 0.0)
  {
    [(AKAuthorizationInputPaneViewController *)self preferredContentSize];
    v5 = [(AKAuthorizationInputPaneViewController *)self view];
    [v5 bounds];
    CGRectGetWidth(v8);
    CGSizeMake_6();
    [(AKAuthorizationInputPaneViewController *)self setPreferredContentSize:v3, v4];
    v6 = [(AKAuthorizationInputPaneViewController *)self view];
    [v6 layoutIfNeeded];
    MEMORY[0x277D82BD8](v6);
  }
}

- (BOOL)_shouldOverrideIntrinsicContentHeight
{
  v3 = 1;
  if (!self->_isEditingName)
  {
    return self->_isEmailExpanded;
  }

  return v3;
}

- (double)intrinsicContentHeight
{
  v12 = self;
  v11 = a2;
  if ([(AKAuthorizationInputPaneViewController *)self _shouldOverrideIntrinsicContentHeight])
  {
    [(AKAuthorizationInputPaneViewController *)v12 preferredContentSize];
    v10 = v2;
    return v3;
  }

  else
  {
    v8.receiver = v12;
    v8.super_class = AKAuthorizationInputPaneViewController;
    [(AKAuthorizationPaneViewController *)&v8 intrinsicContentHeight];
    v9 = v4;
    v6 = [MEMORY[0x277CF0228] sharedManager];
    v7 = [v6 isAuthKitSolariumFeatureEnabled];
    MEMORY[0x277D82BD8](v6);
    if (v7)
    {
      return v9 + 20.0;
    }

    return v9;
  }
}

- (double)contentScrollOffset
{
  v36 = self;
  location[1] = a2;
  location[0] = [MEMORY[0x277D75658] activeKeyboard];
  if ([location[0] isActive])
  {
    v13 = [location[0] window];
    [v13 frame];
    v33 = v38;
    Height = CGRectGetHeight(v38);
    [location[0] frame];
    v32 = v39;
    v15 = Height - CGRectGetHeight(v39);
    MEMORY[0x277D82BD8](v13);
    v34 = v15;
    [location[0] frame];
    rect = v40;
    v31 = CGRectOffset(v40, 0.0, v15);
    v18 = [location[0] window];
    v17 = [(AKAuthorizationInputPaneViewController *)v36 view];
    [v17 frame];
    v25 = v2;
    v26 = v3;
    v27 = v4;
    v28 = v5;
    v16 = [(AKAuthorizationInputPaneViewController *)v36 view];
    [v18 convertRect:v25 fromView:{v26, v27, v28}];
    v29.origin.x = v6;
    v29.origin.y = v7;
    v29.size.width = v8;
    v29.size.height = v9;
    MEMORY[0x277D82BD8](v16);
    MEMORY[0x277D82BD8](v17);
    MEMORY[0x277D82BD8](v18);
    MaxY = CGRectGetMaxY(v29);
    v24 = MaxY - CGRectGetMinY(v31);
    v20 = v24;
    v23.receiver = v36;
    v23.super_class = AKAuthorizationInputPaneViewController;
    [(AKAuthorizationPaneViewController *)&v23 contentScrollOffset];
    v37 = CGFloatMax_0(v20, v10);
  }

  else
  {
    v21.receiver = v36;
    v21.super_class = AKAuthorizationInputPaneViewController;
    [(AKAuthorizationPaneViewController *)&v21 contentScrollOffset];
    v37 = v11;
  }

  v22 = 1;
  objc_storeStrong(location, 0);
  return v37;
}

- (void)_selectShareMyEmail
{
  [(AKAuthorizationInputPaneViewController *)self _updateEditableScopeChoicesWithPrivateEmail:0];
  if ([(AKAuthorizationInputPaneViewController *)self isEmailExpanded])
  {
    [(AKAuthorizationInputPaneViewController *)self setEmailExpanded:0 animated:1];
  }

  else
  {
    v4 = [(AKAuthorizationInputPaneViewController *)self editableScopeChoices];
    v5 = [(AKAuthorizationScopeChoices *)v4 emailCount];
    *&v2 = MEMORY[0x277D82BD8](v4).n128_u64[0];
    if (v5 <= 1)
    {
      v3 = [(AKAuthorizationPaneViewController *)self tableView];
      [(UITableView *)v3 reloadData];
      MEMORY[0x277D82BD8](v3);
    }

    else
    {
      [(AKAuthorizationInputPaneViewController *)self setEmailExpanded:1 animated:1, v2];
    }
  }
}

- (void)_selectHideMyEmail
{
  [(AKAuthorizationInputPaneViewController *)self _updateEditableScopeChoicesWithPrivateEmail:1];
  if ([(AKAuthorizationInputPaneViewController *)self isEmailExpanded])
  {
    [(AKAuthorizationInputPaneViewController *)self setEmailExpanded:0 animated:1];
  }

  else
  {
    v2 = [(AKAuthorizationPaneViewController *)self tableView];
    [(UITableView *)v2 reloadData];
    MEMORY[0x277D82BD8](v2);
  }
}

- (void)_updateEditableScopeChoicesWithPrivateEmail:(BOOL)a3
{
  if (!a3)
  {
    v6 = [(AKAuthorizationInputPaneViewController *)self editableScopeChoices];
    v7 = [(AKAuthorizationScopeChoices *)v6 indexOfChosenEmail];
    *&v3 = MEMORY[0x277D82BD8](v6).n128_u64[0];
    if (v7 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v5 = [(AKAuthorizationInputPaneViewController *)self editableScopeChoices];
      [(AKAuthorizationScopeChoices *)v5 setIndexOfChosenEmail:0];
      MEMORY[0x277D82BD8](v5);
    }
  }

  v4 = [(AKAuthorizationInputPaneViewController *)self editableScopeChoices];
  [(AKAuthorizationScopeChoices *)v4 setWantsPrivateEmail:a3];
  [(AKAuthorizationInputPaneViewController *)self setEditableScopeChoicesChanged:1, MEMORY[0x277D82BD8](v4).n128_f64[0]];
  [(AKAuthorizationInputPaneViewController *)self _enableOrDisableConfirmButton];
}

- (id)_clearButton
{
  v15[2] = self;
  v15[1] = a2;
  v7 = MEMORY[0x277D750C8];
  v13[1] = MEMORY[0x277D85DD0];
  v13[2] = 3221225472;
  v13[3] = __54__AKAuthorizationInputPaneViewController__clearButton__block_invoke;
  v13[4] = &unk_2784A6500;
  v14 = MEMORY[0x277D82BE0](self);
  v15[0] = [v7 actionWithHandler:?];
  v8 = MEMORY[0x277D75220];
  v9 = +[AKAuthorizationAppearance clearButtonConfiguration];
  v13[0] = [v8 buttonWithConfiguration:? primaryAction:?];
  +[AKAuthorizationPaneMetrics clearButtonWidth];
  +[AKAuthorizationPaneMetrics clearButtonWidth];
  CGRectMake_4();
  [v13[0] setFrame:{v2, v3, v4, v5}];
  v11 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v10 = [v11 localizedStringForKey:@"AUTHORIZATION_VIEWCONTROLLER_CLEAR" value:&stru_28358EF68 table:@"Localizable"];
  [v13[0] setAccessibilityLabel:?];
  MEMORY[0x277D82BD8](v10);
  MEMORY[0x277D82BD8](v11);
  v12 = MEMORY[0x277D82BE0](v13[0]);
  objc_storeStrong(v13, 0);
  objc_storeStrong(v15, 0);
  objc_storeStrong(&v14, 0);

  return v12;
}

void __54__AKAuthorizationInputPaneViewController__clearButton__block_invoke(void *a1, void *a2)
{
  v8[1] = *MEMORY[0x277D85DE8];
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v4 = a1[4];
  v3 = *MEMORY[0x277CEFFE8];
  v7 = @"shouldClear";
  v8[0] = MEMORY[0x277CBEC38];
  v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v8 forKeys:&v7 count:1];
  [v4 _didSelectEditScope:v3 options:?];
  MEMORY[0x277D82BD8](v5);
  objc_storeStrong(location, 0);
  *MEMORY[0x277D85DE8];
}

- (id)_doneBarButtonItem
{
  v3 = objc_alloc(MEMORY[0x277D751E0]);
  v5 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v4 = [v5 localizedStringForKey:@"AUTHORIZATION_VIEWCONTROLLER_DONE" value:&stru_28358EF68 table:@"Localizable"];
  v6 = [v3 initWithTitle:v4 style:+[AKAuthorizationAppearance editingDoneButtonStyle](AKAuthorizationAppearance target:"editingDoneButtonStyle") action:{self, sel__doneButtonSelected_}];
  MEMORY[0x277D82BD8](v4);
  MEMORY[0x277D82BD8](v5);

  return v6;
}

- (void)_doneButtonSelected:(id)a3
{
  v4 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  [(AKAuthorizationInputPaneViewController *)v4 _nameEditDone];
  objc_storeStrong(location, 0);
}

- (void)_updatePaneTitleForEditing:(BOOL)a3
{
  v5 = [MEMORY[0x277CF0228] sharedManager];
  v6 = [v5 isLisbonAvailable];
  *&v3 = MEMORY[0x277D82BD8](v5).n128_u64[0];
  if (v6)
  {
    v7 = 0;
    if (a3)
    {
      v8 = [(AKAuthorizationInputPaneViewController *)self _paneTitleString];
      v7 = 1;
      v4 = v8;
    }

    else
    {
      v4 = 0;
    }

    [(AKAuthorizationInputPaneViewController *)self setTitle:v4, v4];
    if (v7)
    {
      MEMORY[0x277D82BD8](v8);
    }
  }
}

- (void)_didSelectEditScope:(id)a3 options:(id)a4
{
  v11 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v9 = 0;
  objc_storeStrong(&v9, a4);
  v8 = [(AKAuthorizationPaneViewController *)v11 paneDelegate];
  if (objc_opt_respondsToSelector())
  {
    v4 = v11;
    v5 = location[0];
    v6 = [(AKAuthorizationInputPaneViewController *)v11 presentationContext];
    [v8 authorizationPaneViewController:v4 pushEditScope:v5 presentationContext:? options:?];
    MEMORY[0x277D82BD8](v6);
  }

  objc_storeStrong(&v8, 0);
  objc_storeStrong(&v9, 0);
  objc_storeStrong(location, 0);
}

- (void)_setCancelButtonEnabled:(BOOL)a3
{
  v4 = [(AKAuthorizationInputPaneViewController *)self navigationItem];
  v3 = [v4 rightBarButtonItem];
  [v3 setEnabled:a3];
  MEMORY[0x277D82BD8](v3);
  MEMORY[0x277D82BD8](v4);
}

- (void)_enableOrDisableConfirmButton
{
  v7 = [(AKAuthorizationInputPaneViewController *)self isEditingName];
  v5 = [(AKAuthorizationInputPaneViewController *)self confirmButton];
  v4 = [(AKAuthorizationSubPane *)v5 view];
  [(UIView *)v4 setHidden:v7];
  MEMORY[0x277D82BD8](v4);
  *&v2 = MEMORY[0x277D82BD8](v5).n128_u64[0];
  if (!v7)
  {
    v6 = [(AKAuthorizationInputPaneViewController *)self _shouldAllowAuthorization];
    v3 = [(AKAuthorizationInputPaneViewController *)self confirmButton];
    [(AKAuthorizationSubPaneConfirmButton *)v3 enableAuthorizationCapability:v6];
    MEMORY[0x277D82BD8](v3);
  }
}

- (void)setEditingName:(BOOL)a3 shouldClear:(BOOL)a4 animated:(BOOL)a5
{
  if (self->_isEditingName != a3)
  {
    if (a3)
    {
      v9 = [(AKAuthorizationInputPaneViewController *)self editableScopeChoices];
      v8 = [(AKAuthorizationScopeChoices *)v9 userInformation];
      [(AKAuthorizationInputPaneViewController *)self setEditingUserInformation:?];
      MEMORY[0x277D82BD8](v8);
      v10 = [(AKAuthorizationInputPaneViewController *)self editableScopeChoices];
      v11 = [(AKAuthorizationScopeChoices *)v10 personNameComponentsOrder];
      v5 = MEMORY[0x277D82BD8](v10).n128_u64[0];
      if (v11)
      {
        if (v11 == 1)
        {
          self->_editingFamilyNameIndex = 0;
          self->_editingGivenNameIndex = 1;
        }
      }

      else
      {
        self->_editingGivenNameIndex = 0;
        self->_editingFamilyNameIndex = 1;
      }

      if (a4)
      {
        v6 = [(AKAuthorizationInputPaneViewController *)self editingUserInformation];
        [(AKUserInformation *)v6 setGivenName:?];
        v7 = [(AKAuthorizationInputPaneViewController *)self editingUserInformation];
        [(AKUserInformation *)v7 setFamilyName:&stru_28358EF68];
        v5 = MEMORY[0x277D82BD8](v7).n128_u64[0];
      }

      self->_isEditingName = 1;
      [(AKAuthorizationInputPaneViewController *)self _transitionToEditingNameAnimated:a5, *&v5];
      [(AKAuthorizationInputPaneViewController *)self _beginEditing];
    }

    else
    {
      [(AKAuthorizationInputPaneViewController *)self _updateDataSourceWithValidEditingName];
      self->_isEditingName = 0;
      [(AKAuthorizationInputPaneViewController *)self _endEditing];
      [(AKAuthorizationInputPaneViewController *)self _transitionFromEditingNameAnimated:a5];
      objc_storeStrong(&self->_nameFormatter, 0);
    }

    [(AKAuthorizationInputPaneViewController *)self _enableOrDisableConfirmButton];
  }
}

- (void)_performAuthorizationWithRawPassword:(id)a3
{
  v4 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  [(AKAuthorizationInputPaneViewController *)v4 _performAuthorizationWithRawPassword:location[0] completionHandler:0];
  objc_storeStrong(location, 0);
}

- (void)_performAuthorizationWithRawPassword:(id)a3 completionHandler:(id)a4
{
  v29 = *MEMORY[0x277D85DE8];
  v27 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v25 = 0;
  objc_storeStrong(&v25, a4);
  v10 = v27;
  v12 = [(AKAuthorizationInputPaneViewController *)v27 editableScopeChoices];
  v11 = [(AKAuthorizationInputPaneViewController *)v27 _selectedLoginChoice];
  [(AKAuthorizationInputPaneViewController *)v10 _prepareScopeChoices:v12 withLoginChoice:?];
  MEMORY[0x277D82BD8](v11);
  *&v4 = MEMORY[0x277D82BD8](v12).n128_u64[0];
  v13 = [(AKAuthorizationInputPaneViewController *)v27 editableScopeChoices];
  v24 = [(AKAuthorizationScopeChoices *)v13 userResponse];
  *&v5 = MEMORY[0x277D82BD8](v13).n128_u64[0];
  [v24 setRawAccountPassword:{location[0], v5}];
  [(AKAuthorizationInputPaneViewController *)v27 _updateAnalyticsReport];
  v15 = v27;
  v14 = v24;
  v17 = MEMORY[0x277D85DD0];
  v18 = -1073741824;
  v19 = 0;
  v20 = __97__AKAuthorizationInputPaneViewController__performAuthorizationWithRawPassword_completionHandler___block_invoke;
  v21 = &unk_2784A7140;
  v22 = MEMORY[0x277D82BE0](v27);
  v23 = MEMORY[0x277D82BE0](v25);
  [(AKAuthorizationInputPaneViewController *)v15 _paneDelegate_didRequestAuthorizationWithUserProvidedInformation:v14 completion:&v17];
  oslog = _AKLogSiwa();
  if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [(AKAuthorizationInputPaneViewController *)v27 editableScopeChoices];
    v8 = v6;
    if (location[0])
    {
      v7 = @"YES";
    }

    else
    {
      v7 = @"NO";
    }

    __os_log_helper_16_2_2_8_64_8_64(v28, v6, v7);
    _os_log_impl(&dword_222379000, oslog, OS_LOG_TYPE_DEFAULT, "AKAuthorizationInputPaneViewController: User requested authorization with scope choices: %@ \nContains password: %@", v28, 0x16u);
    MEMORY[0x277D82BD8](v8);
  }

  objc_storeStrong(&oslog, 0);
  objc_storeStrong(&v23, 0);
  objc_storeStrong(&v22, 0);
  objc_storeStrong(&v24, 0);
  objc_storeStrong(&v25, 0);
  objc_storeStrong(location, 0);
  *MEMORY[0x277D85DE8];
}

void __97__AKAuthorizationInputPaneViewController__performAuthorizationWithRawPassword_completionHandler___block_invoke(void *a1, void *a2, void *a3)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v25 = 0;
  objc_storeStrong(&v25, a3);
  v24[1] = a1;
  if (!v25)
  {
    [*(a1[4] + 1128) sendReport];
  }

  if (a1[5])
  {
    (*(a1[5] + 16))();
  }

  else if (location[0])
  {
    v7 = MEMORY[0x277D85CD0];
    v3 = MEMORY[0x277D85CD0];
    queue = v7;
    v18 = MEMORY[0x277D85DD0];
    v19 = -1073741824;
    v20 = 0;
    v21 = __97__AKAuthorizationInputPaneViewController__performAuthorizationWithRawPassword_completionHandler___block_invoke_2;
    v22 = &unk_2784A6420;
    v23 = MEMORY[0x277D82BE0](a1[4]);
    v24[0] = MEMORY[0x277D82BE0](location[0]);
    dispatch_async(queue, &v18);
    MEMORY[0x277D82BD8](queue);
    objc_storeStrong(v24, 0);
    objc_storeStrong(&v23, 0);
  }

  else
  {
    v5 = MEMORY[0x277D85CD0];
    v4 = MEMORY[0x277D85CD0];
    v6 = v5;
    v11 = MEMORY[0x277D85DD0];
    v12 = -1073741824;
    v13 = 0;
    v14 = __97__AKAuthorizationInputPaneViewController__performAuthorizationWithRawPassword_completionHandler___block_invoke_3;
    v15 = &unk_2784A6420;
    v16 = MEMORY[0x277D82BE0](a1[4]);
    v17 = MEMORY[0x277D82BE0](v25);
    dispatch_async(v6, &v11);
    MEMORY[0x277D82BD8](v6);
    objc_storeStrong(&v17, 0);
    objc_storeStrong(&v16, 0);
  }

  objc_storeStrong(&v25, 0);
  objc_storeStrong(location, 0);
}

- (void)_performPasswordAuthentication
{
  v8 = self;
  v7[1] = a2;
  v7[0] = [(AKAuthorizationPaneViewController *)self paneDelegate];
  if (objc_opt_respondsToSelector())
  {
    location = _AKLogSiwa();
    v5 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(location, OS_LOG_TYPE_DEFAULT))
    {
      log = location;
      type = v5;
      __os_log_helper_16_0_0(v4);
      _os_log_impl(&dword_222379000, log, type, "AKAuthorizationConfirmPaneViewController: Performing password authorization", v4, 2u);
    }

    objc_storeStrong(&location, 0);
    [v7[0] performPasswordAuthenticationForPaneViewController:v8];
  }

  objc_storeStrong(v7, 0);
}

- (void)_handleAuthorizationError:(id)a3
{
  v16 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  if ([location[0] ak_isAuthenticationErrorWithCode:-7081])
  {
    if ([(AKAuthorizationInputPaneViewController *)v16 _nameScopeAllowsAuthorization])
    {
      if (![(AKAuthorizationInputPaneViewController *)v16 _emailScopeAllowsAuthorization])
      {
        v11 = [(AKAuthorizationInputPaneViewController *)v16 confirmButton];
        v10 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
        v9 = [v10 localizedStringForKey:@"BIO_BUTTON_SELECT_EMAIL" value:&stru_28358EF68 table:@"Localizable"];
        [(AKAuthorizationSubPaneConfirmButton *)v11 bioAuthFailWithAlertString:?];
        MEMORY[0x277D82BD8](v9);
        MEMORY[0x277D82BD8](v10);
        MEMORY[0x277D82BD8](v11);
      }
    }

    else
    {
      v14 = [(AKAuthorizationInputPaneViewController *)v16 confirmButton];
      v13 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v12 = [v13 localizedStringForKey:@"BIO_BUTTON_ENTER_NAME" value:&stru_28358EF68 table:@"Localizable"];
      [(AKAuthorizationSubPaneConfirmButton *)v14 bioAuthFailWithAlertString:?];
      MEMORY[0x277D82BD8](v12);
      MEMORY[0x277D82BD8](v13);
      MEMORY[0x277D82BD8](v14);
    }
  }

  else if ([location[0] ak_isAuthenticationErrorWithCode:-7082])
  {
    v8 = [(AKAuthorizationInputPaneViewController *)v16 confirmButton];
    v7 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v6 = [v7 localizedStringForKey:@"BIO_BUTTON_SELECT_ACCOUNT" value:&stru_28358EF68 table:@"Localizable"];
    [(AKAuthorizationSubPaneConfirmButton *)v8 bioAuthFailWithAlertString:?];
    MEMORY[0x277D82BD8](v6);
    MEMORY[0x277D82BD8](v7);
    MEMORY[0x277D82BD8](v8);
  }

  else
  {
    v5 = 1;
    if ([location[0] code] != -7006)
    {
      v5 = [location[0] code] == -7075;
    }

    v4 = [(AKAuthorizationInputPaneViewController *)v16 confirmButton];
    [(AKAuthorizationSubPaneConfirmButton *)v4 showAlertAndContinueWithPassword:v5];
    *&v3 = MEMORY[0x277D82BD8](v4).n128_u64[0];
    [(AKAuthorizationInputPaneViewController *)v16 _paneDelegate_authorizationPaneViewControllerDismissWithAuthorization:0 error:location[0], v3];
  }

  objc_storeStrong(location, 0);
}

- (void)_prepareScopeChoices:(id)a3 withLoginChoice:(id)a4
{
  v36 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v34 = 0;
  objc_storeStrong(&v34, a4);
  v21 = [MEMORY[0x277CF0228] sharedManager];
  v22 = [v21 isSiwaCredentialSharingEnabled];
  *&v4 = MEMORY[0x277D82BD8](v21).n128_u64[0];
  if (v22)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v33 = MEMORY[0x277D82BE0](v34);
      v19 = [v33 sharedAccount];
      v18 = [(AKAuthorizationInputPaneViewController *)v36 presentationContext];
      v17 = [(AKAuthorizationPresentationContext *)v18 credentialRequestContext];
      v16 = [v17 authorizationRequest];
      [v16 set_sharedAccount:v19];
      MEMORY[0x277D82BD8](v16);
      MEMORY[0x277D82BD8](v17);
      MEMORY[0x277D82BD8](v18);
      MEMORY[0x277D82BD8](v19);
      objc_storeStrong(&v33, 0);
    }
  }

  v15 = [(AKAuthorizationInputPaneViewController *)v36 presentationContext];
  v14 = [(AKAuthorizationPresentationContext *)v15 credentialRequestContext];
  v32 = [v14 authorizationRequest];
  MEMORY[0x277D82BD8](v14);
  *&v5 = MEMORY[0x277D82BD8](v15).n128_u64[0];
  [location[0] setLoginChoice:{v34, v5}];
  if (v34 && ([v34 isAppleIDAuthorization] & 1) == 0)
  {
    if (v32)
    {
      v11 = [(AKAuthorizationInputPaneViewController *)v36 presentationContext];
      v10 = [(AKAuthorizationPresentationContext *)v11 loginChoices];
      v23 = MEMORY[0x277D85DD0];
      v24 = -1073741824;
      v25 = 0;
      v26 = __79__AKAuthorizationInputPaneViewController__prepareScopeChoices_withLoginChoice___block_invoke;
      v27 = &unk_2784A7168;
      v28 = MEMORY[0x277D82BE0](location[0]);
      [v10 enumerateObjectsUsingBlock:&v23];
      MEMORY[0x277D82BD8](v10);
      MEMORY[0x277D82BD8](v11);
      objc_storeStrong(&v28, 0);
    }

    v6 = location[0];
    v9 = [(AKAuthorizationInputPaneViewController *)v36 presentationContext];
    v8 = [(AKAuthorizationPresentationContext *)v9 credentialRequestContext];
    v7 = [v8 passwordRequest];
    [v6 setSelectedRequest:?];
    MEMORY[0x277D82BD8](v7);
    MEMORY[0x277D82BD8](v8);
    MEMORY[0x277D82BD8](v9);
  }

  else if (v32)
  {
    [location[0] setSelectedRequest:v32];
  }

  else
  {
    v31 = _AKLogSiwa();
    v30 = 16;
    if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
    {
      log = v31;
      type = v30;
      __os_log_helper_16_0_0(v29);
      _os_log_error_impl(&dword_222379000, log, type, "No authorization request present on credential request context.", v29, 2u);
    }

    objc_storeStrong(&v31, 0);
  }

  objc_storeStrong(&v32, 0);
  objc_storeStrong(&v34, 0);
  objc_storeStrong(location, 0);
}

void __79__AKAuthorizationInputPaneViewController__prepareScopeChoices_withLoginChoice___block_invoke(id *a1, void *a2, unint64_t a3, BOOL *a4)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  if ([location[0] isAppleIDAuthorization])
  {
    [a1[4] setIndexOfChosenLogin:{objc_msgSend(a1[4], "indexOfChosenLogin") - 1}];
  }

  *a4 = a3 >= [a1[4] indexOfChosenLogin];
  objc_storeStrong(location, 0);
}

- (void)_updateAnalyticsReport
{
  [(AKCATiburonInputUIReporter *)self->_analyticsReport didSelectAppleID:1];
  analyticsReport = self->_analyticsReport;
  v3 = [(AKAuthorizationInputPaneViewController *)self editableScopeChoices];
  [(AKCATiburonInputUIReporter *)analyticsReport didSelectAnonymousEmail:[(AKAuthorizationScopeChoices *)v3 wantsPrivateEmail]];
  MEMORY[0x277D82BD8](v3);
}

- (void)subPaneConfirmButtonDidEnterProcessingState:(id)a3
{
  v34 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v32 = _AKLogSiwa();
  v31 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
  {
    log = v32;
    type = v31;
    __os_log_helper_16_0_0(v30);
    _os_log_impl(&dword_222379000, log, type, "Finished biometric authentication successfully.", v30, 2u);
  }

  objc_storeStrong(&v32, 0);
  if ([(AKAuthorizationInputPaneViewController *)v34 _shouldAllowAuthorization])
  {
    [(AKAuthorizationInputPaneViewController *)v34 _setCancelButtonEnabled:0];
    [(AKAuthorizationInputPaneViewController *)v34 _updateDataSourceWithValidEditingName];
    objc_initWeak(&v29, v34);
    v12 = v34;
    v22 = MEMORY[0x277D85DD0];
    v23 = -1073741824;
    v24 = 0;
    v25 = __86__AKAuthorizationInputPaneViewController_subPaneConfirmButtonDidEnterProcessingState___block_invoke;
    v26 = &unk_2784A7190;
    objc_copyWeak(&v28, &v29);
    v27 = MEMORY[0x277D82BE0](location[0]);
    [(AKAuthorizationInputPaneViewController *)v12 _performAuthorizationWithRawPassword:0 completionHandler:&v22];
    objc_storeStrong(&v27, 0);
    objc_destroyWeak(&v28);
    objc_destroyWeak(&v29);
  }

  else
  {
    v21 = 0;
    if ([(AKAuthorizationInputPaneViewController *)v34 _shouldPresentCreateFlow])
    {
      oslog = _AKLogSiwa();
      v19 = OS_LOG_TYPE_DEFAULT;
      if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
      {
        v10 = oslog;
        v11 = v19;
        __os_log_helper_16_0_0(v18);
        _os_log_impl(&dword_222379000, v10, v11, "Selection does not satisfy scopes. Providing instructions for user.", v18, 2u);
      }

      objc_storeStrong(&oslog, 0);
      v3 = [MEMORY[0x277CCA9B8] ak_errorWithCode:-7081];
      v4 = v21;
      v21 = v3;
      v5 = MEMORY[0x277D82BD8](v4).n128_u64[0];
    }

    else
    {
      v17 = _AKLogSiwa();
      v16 = OS_LOG_TYPE_DEFAULT;
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        v8 = v17;
        v9 = v16;
        __os_log_helper_16_0_0(v15);
        _os_log_impl(&dword_222379000, v8, v9, "No choice selection from user. Providing instructions for user.", v15, 2u);
      }

      objc_storeStrong(&v17, 0);
      v6 = [MEMORY[0x277CCA9B8] ak_errorWithCode:-7082];
      v7 = v21;
      v21 = v6;
      v5 = MEMORY[0x277D82BD8](v7).n128_u64[0];
    }

    [location[0] invalidateProcessingState];
    [(AKAuthorizationInputPaneViewController *)v34 _handleAuthorizationError:v21];
    objc_storeStrong(&v21, 0);
  }

  objc_storeStrong(location, 0);
}

void __86__AKAuthorizationInputPaneViewController_subPaneConfirmButtonDidEnterProcessingState___block_invoke(uint64_t a1, void *a2, void *a3)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v25 = 0;
  objc_storeStrong(&v25, a3);
  v24[1] = a1;
  v24[0] = objc_loadWeakRetained((a1 + 40));
  if (location[0])
  {
    v6 = *(a1 + 32);
    v17 = MEMORY[0x277D85DD0];
    v18 = -1073741824;
    v19 = 0;
    v20 = __86__AKAuthorizationInputPaneViewController_subPaneConfirmButtonDidEnterProcessingState___block_invoke_2;
    v21 = &unk_2784A6420;
    v22 = MEMORY[0x277D82BE0](v24[0]);
    v23 = MEMORY[0x277D82BE0](location[0]);
    [v6 finishProcessingWithCompletionHandler:&v17];
    objc_storeStrong(&v23, 0);
    objc_storeStrong(&v22, 0);
  }

  else
  {
    v4 = MEMORY[0x277D85CD0];
    v3 = MEMORY[0x277D85CD0];
    queue = v4;
    v9 = MEMORY[0x277D85DD0];
    v10 = -1073741824;
    v11 = 0;
    v12 = __86__AKAuthorizationInputPaneViewController_subPaneConfirmButtonDidEnterProcessingState___block_invoke_3;
    v13 = &unk_2784A6360;
    v14 = MEMORY[0x277D82BE0](*(a1 + 32));
    v15 = MEMORY[0x277D82BE0](v24[0]);
    v16 = MEMORY[0x277D82BE0](v25);
    dispatch_async(queue, &v9);
    MEMORY[0x277D82BD8](queue);
    objc_storeStrong(&v16, 0);
    objc_storeStrong(&v15, 0);
    objc_storeStrong(&v14, 0);
  }

  objc_storeStrong(v24, 0);
  objc_storeStrong(&v25, 0);
  objc_storeStrong(location, 0);
}

uint64_t __86__AKAuthorizationInputPaneViewController_subPaneConfirmButtonDidEnterProcessingState___block_invoke_3(uint64_t a1)
{
  [*(a1 + 32) invalidateProcessingState];
  [*(a1 + 40) _setCancelButtonEnabled:1];
  return [*(a1 + 40) _handleAuthorizationError:*(a1 + 48)];
}

- (void)subpaneConfirmButtonDidFailBiometry:(id)a3
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v7 = _AKLogSiwa();
  v6 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    log = v7;
    type = v6;
    __os_log_helper_16_0_0(v5);
    _os_log_impl(&dword_222379000, log, type, "Finished biometric authentication with failure.", v5, 2u);
  }

  objc_storeStrong(&v7, 0);
  objc_storeStrong(location, 0);
}

- (void)performPasswordAuthentication
{
  v3 = self;
  location[1] = a2;
  location[0] = [(AKAuthorizationInputPaneViewController *)self _selectedLoginChoice];
  if (!location[0] || [location[0] isAppleIDAuthorization])
  {
    [(AKAuthorizationInputPaneViewController *)v3 _performPasswordAuthentication];
  }

  else
  {
    [(AKAuthorizationInputPaneViewController *)v3 _performAuthorizationWithRawPassword:0];
  }

  objc_storeStrong(location, 0);
}

- (void)subPaneConfirmButtonPerformExternalAuthentication:(id)a3
{
  v22 = *MEMORY[0x277D85DE8];
  v20 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v18 = _AKLogSiwa();
  v17 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
  {
    v10 = [(AKAuthorizationInputPaneViewController *)v20 editableScopeChoices];
    __os_log_helper_16_2_1_8_64(v21, v10);
    _os_log_impl(&dword_222379000, v18, v17, "AKAuthorizationInputPaneViewController: Did continue -  User requested authorization with scope choices: %@", v21, 0xCu);
    MEMORY[0x277D82BD8](v10);
  }

  objc_storeStrong(&v18, 0);
  v4 = v20;
  v6 = [(AKAuthorizationInputPaneViewController *)v20 editableScopeChoices];
  v5 = [(AKAuthorizationInputPaneViewController *)v20 _selectedLoginChoice];
  [(AKAuthorizationInputPaneViewController *)v4 _prepareScopeChoices:v6 withLoginChoice:?];
  MEMORY[0x277D82BD8](v5);
  *&v3 = MEMORY[0x277D82BD8](v6).n128_u64[0];
  v7 = v20;
  v9 = [(AKAuthorizationInputPaneViewController *)v20 editableScopeChoices];
  v8 = [(AKAuthorizationScopeChoices *)v9 userResponse];
  v11 = MEMORY[0x277D85DD0];
  v12 = -1073741824;
  v13 = 0;
  v14 = __92__AKAuthorizationInputPaneViewController_subPaneConfirmButtonPerformExternalAuthentication___block_invoke;
  v15 = &unk_2784A6448;
  v16 = MEMORY[0x277D82BE0](v20);
  [(AKAuthorizationInputPaneViewController *)v7 _paneDelegate_didRequestAuthorizationWithUserProvidedInformation:v8 completion:&v11];
  MEMORY[0x277D82BD8](v8);
  MEMORY[0x277D82BD8](v9);
  objc_storeStrong(&v16, 0);
  objc_storeStrong(location, 0);
  *MEMORY[0x277D85DE8];
}

void __92__AKAuthorizationInputPaneViewController_subPaneConfirmButtonPerformExternalAuthentication___block_invoke(void *a1, void *a2, void *a3)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v24 = 0;
  objc_storeStrong(&v24, a3);
  v23[1] = a1;
  if (v24)
  {
    v7 = MEMORY[0x277D85CD0];
    v3 = MEMORY[0x277D85CD0];
    queue = v7;
    v17 = MEMORY[0x277D85DD0];
    v18 = -1073741824;
    v19 = 0;
    v20 = __92__AKAuthorizationInputPaneViewController_subPaneConfirmButtonPerformExternalAuthentication___block_invoke_2;
    v21 = &unk_2784A6420;
    v22 = MEMORY[0x277D82BE0](a1[4]);
    v23[0] = MEMORY[0x277D82BE0](v24);
    dispatch_async(queue, &v17);
    MEMORY[0x277D82BD8](queue);
    objc_storeStrong(v23, 0);
    objc_storeStrong(&v22, 0);
  }

  else
  {
    v5 = MEMORY[0x277D85CD0];
    v4 = MEMORY[0x277D85CD0];
    v6 = v5;
    v11 = MEMORY[0x277D85DD0];
    v12 = -1073741824;
    v13 = 0;
    v14 = __92__AKAuthorizationInputPaneViewController_subPaneConfirmButtonPerformExternalAuthentication___block_invoke_3;
    v15 = &unk_2784A5C90;
    v16 = MEMORY[0x277D82BE0](a1[4]);
    dispatch_async(v6, &v11);
    MEMORY[0x277D82BD8](v6);
    objc_storeStrong(&v16, 0);
  }

  objc_storeStrong(&v24, 0);
  objc_storeStrong(location, 0);
}

- (BOOL)validateReadyForAuthorization
{
  v8 = self;
  location[1] = a2;
  if ([(AKAuthorizationInputPaneViewController *)self _shouldAllowAuthorization])
  {
    [(AKAuthorizationInputPaneViewController *)v8 _updateDataSourceWithValidEditingName];
    return 1;
  }

  else
  {
    location[0] = _AKLogSiwa();
    v6 = 16;
    if (os_log_type_enabled(location[0], OS_LOG_TYPE_ERROR))
    {
      log = location[0];
      type = v6;
      __os_log_helper_16_0_0(v5);
      _os_log_error_impl(&dword_222379000, log, type, "Authorization button should have been disabled but was not", v5, 2u);
    }

    objc_storeStrong(location, 0);
    return 0;
  }
}

- (void)subPaneConfirmButtonPerformAccountCreation:(id)a3
{
  v11 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v9 = [(AKAuthorizationInputPaneViewController *)v11 authorizationViewController];
  v5 = MEMORY[0x277CF01A8];
  v6 = [(AKAuthorizationInputPaneViewController *)v11 presentationContext];
  v8 = [v5 presentationContextForCreateAppleIDFlow:?];
  *&v3 = MEMORY[0x277D82BD8](v6).n128_u64[0];
  v7 = [v8 credentialRequestContext];
  [v7 setPasswordRequest:0];
  *&v4 = MEMORY[0x277D82BD8](v7).n128_u64[0];
  [(AKAuthorizationViewController *)v9 setPresentationContext:v8, v4];
  [(AKAuthorizationViewController *)v9 presentInputPaneViewController];
  objc_storeStrong(&v8, 0);
  objc_storeStrong(&v9, 0);
  objc_storeStrong(location, 0);
}

- (void)passwordAuthenticationCompletedWithResults:(id)a3 error:(id)a4
{
  v14 = *MEMORY[0x277D85DE8];
  v11 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v9 = 0;
  objc_storeStrong(&v9, a4);
  if (v9)
  {
    oslog = _AKLogSiwa();
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_ERROR))
    {
      __os_log_helper_16_2_1_8_64(v12, v9);
      _os_log_error_impl(&dword_222379000, oslog, OS_LOG_TYPE_ERROR, "Error during password authentication %@", v12, 0xCu);
    }

    objc_storeStrong(&oslog, 0);
  }

  else
  {
    v8 = 0;
    v7 = _AKLogSystem();
    v6 = OS_LOG_TYPE_DEBUG;
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      __os_log_helper_16_2_1_8_64(v13, location[0]);
      _os_log_debug_impl(&dword_222379000, v7, v6, "Password authenticate result: %@", v13, 0xCu);
    }

    objc_storeStrong(&v7, 0);
    [(AKAuthorizationInputPaneViewController *)v11 _performAuthorizationWithRawPassword:v8];
    objc_storeStrong(&v8, 0);
  }

  objc_storeStrong(&v9, 0);
  objc_storeStrong(location, 0);
  *MEMORY[0x277D85DE8];
}

- (void)_paneDelegate_authorizationPaneViewControllerDismissWithAuthorization:(id)a3 error:(id)a4
{
  v8 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v6 = 0;
  objc_storeStrong(&v6, a4);
  v5 = [(AKAuthorizationPaneViewController *)v8 paneDelegate];
  if (objc_opt_respondsToSelector())
  {
    [v5 authorizationPaneViewController:v8 dismissWithAuthorization:location[0] error:v6];
  }

  objc_storeStrong(&v5, 0);
  objc_storeStrong(&v6, 0);
  objc_storeStrong(location, 0);
}

- (void)_paneDelegate_didRequestAuthorizationWithUserProvidedInformation:(id)a3 completion:(id)a4
{
  v8 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v6 = 0;
  objc_storeStrong(&v6, a4);
  v5 = [(AKAuthorizationPaneViewController *)v8 paneDelegate];
  if (objc_opt_respondsToSelector())
  {
    [v5 authorizationPaneViewController:v8 didRequestAuthorizationWithUserProvidedInformation:location[0] completion:v6];
  }

  objc_storeStrong(&v5, 0);
  objc_storeStrong(&v6, 0);
  objc_storeStrong(location, 0);
}

- (AKAuthorizationViewController)authorizationViewController
{
  WeakRetained = objc_loadWeakRetained(&self->_authorizationViewController);

  return WeakRetained;
}

@end